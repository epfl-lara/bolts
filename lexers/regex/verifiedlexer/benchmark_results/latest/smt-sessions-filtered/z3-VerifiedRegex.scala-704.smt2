; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29134 () Bool)

(assert start!29134)

(declare-fun b!271190 () Bool)

(declare-fun b_free!10049 () Bool)

(declare-fun b_next!10049 () Bool)

(assert (=> b!271190 (= b_free!10049 (not b_next!10049))))

(declare-fun tp!102712 () Bool)

(declare-fun b_and!21653 () Bool)

(assert (=> b!271190 (= tp!102712 b_and!21653)))

(declare-fun b_free!10051 () Bool)

(declare-fun b_next!10051 () Bool)

(assert (=> b!271190 (= b_free!10051 (not b_next!10051))))

(declare-fun tp!102714 () Bool)

(declare-fun b_and!21655 () Bool)

(assert (=> b!271190 (= tp!102714 b_and!21655)))

(declare-fun b!271211 () Bool)

(declare-fun b_free!10053 () Bool)

(declare-fun b_next!10053 () Bool)

(assert (=> b!271211 (= b_free!10053 (not b_next!10053))))

(declare-fun tp!102709 () Bool)

(declare-fun b_and!21657 () Bool)

(assert (=> b!271211 (= tp!102709 b_and!21657)))

(declare-fun b_free!10055 () Bool)

(declare-fun b_next!10055 () Bool)

(assert (=> b!271211 (= b_free!10055 (not b_next!10055))))

(declare-fun tp!102720 () Bool)

(declare-fun b_and!21659 () Bool)

(assert (=> b!271211 (= tp!102720 b_and!21659)))

(declare-fun b!271199 () Bool)

(declare-fun b_free!10057 () Bool)

(declare-fun b_next!10057 () Bool)

(assert (=> b!271199 (= b_free!10057 (not b_next!10057))))

(declare-fun tp!102718 () Bool)

(declare-fun b_and!21661 () Bool)

(assert (=> b!271199 (= tp!102718 b_and!21661)))

(declare-fun b_free!10059 () Bool)

(declare-fun b_next!10059 () Bool)

(assert (=> b!271199 (= b_free!10059 (not b_next!10059))))

(declare-fun tp!102710 () Bool)

(declare-fun b_and!21663 () Bool)

(assert (=> b!271199 (= tp!102710 b_and!21663)))

(declare-fun bs!30212 () Bool)

(declare-fun b!271207 () Bool)

(declare-fun b!271212 () Bool)

(assert (= bs!30212 (and b!271207 b!271212)))

(declare-fun lambda!9172 () Int)

(declare-fun lambda!9171 () Int)

(assert (=> bs!30212 (not (= lambda!9172 lambda!9171))))

(declare-fun b!271226 () Bool)

(declare-fun e!168484 () Bool)

(assert (=> b!271226 (= e!168484 true)))

(declare-fun b!271225 () Bool)

(declare-fun e!168483 () Bool)

(assert (=> b!271225 (= e!168483 e!168484)))

(declare-fun b!271224 () Bool)

(declare-fun e!168482 () Bool)

(assert (=> b!271224 (= e!168482 e!168483)))

(assert (=> b!271207 e!168482))

(assert (= b!271225 b!271226))

(assert (= b!271224 b!271225))

(declare-datatypes ((List!3837 0))(
  ( (Nil!3827) (Cons!3827 (h!9224 (_ BitVec 16)) (t!38511 List!3837)) )
))
(declare-datatypes ((TokenValue!753 0))(
  ( (FloatLiteralValue!1506 (text!5716 List!3837)) (TokenValueExt!752 (__x!2993 Int)) (Broken!3765 (value!25123 List!3837)) (Object!762) (End!753) (Def!753) (Underscore!753) (Match!753) (Else!753) (Error!753) (Case!753) (If!753) (Extends!753) (Abstract!753) (Class!753) (Val!753) (DelimiterValue!1506 (del!813 List!3837)) (KeywordValue!759 (value!25124 List!3837)) (CommentValue!1506 (value!25125 List!3837)) (WhitespaceValue!1506 (value!25126 List!3837)) (IndentationValue!753 (value!25127 List!3837)) (String!4844) (Int32!753) (Broken!3766 (value!25128 List!3837)) (Boolean!754) (Unit!4935) (OperatorValue!756 (op!813 List!3837)) (IdentifierValue!1506 (value!25129 List!3837)) (IdentifierValue!1507 (value!25130 List!3837)) (WhitespaceValue!1507 (value!25131 List!3837)) (True!1506) (False!1506) (Broken!3767 (value!25132 List!3837)) (Broken!3768 (value!25133 List!3837)) (True!1507) (RightBrace!753) (RightBracket!753) (Colon!753) (Null!753) (Comma!753) (LeftBracket!753) (False!1507) (LeftBrace!753) (ImaginaryLiteralValue!753 (text!5717 List!3837)) (StringLiteralValue!2259 (value!25134 List!3837)) (EOFValue!753 (value!25135 List!3837)) (IdentValue!753 (value!25136 List!3837)) (DelimiterValue!1507 (value!25137 List!3837)) (DedentValue!753 (value!25138 List!3837)) (NewLineValue!753 (value!25139 List!3837)) (IntegerValue!2259 (value!25140 (_ BitVec 32)) (text!5718 List!3837)) (IntegerValue!2260 (value!25141 Int) (text!5719 List!3837)) (Times!753) (Or!753) (Equal!753) (Minus!753) (Broken!3769 (value!25142 List!3837)) (And!753) (Div!753) (LessEqual!753) (Mod!753) (Concat!1708) (Not!753) (Plus!753) (SpaceValue!753 (value!25143 List!3837)) (IntegerValue!2261 (value!25144 Int) (text!5720 List!3837)) (StringLiteralValue!2260 (text!5721 List!3837)) (FloatLiteralValue!1507 (text!5722 List!3837)) (BytesLiteralValue!753 (value!25145 List!3837)) (CommentValue!1507 (value!25146 List!3837)) (StringLiteralValue!2261 (value!25147 List!3837)) (ErrorTokenValue!753 (msg!814 List!3837)) )
))
(declare-datatypes ((C!2832 0))(
  ( (C!2833 (val!1302 Int)) )
))
(declare-datatypes ((List!3838 0))(
  ( (Nil!3828) (Cons!3828 (h!9225 C!2832) (t!38512 List!3838)) )
))
(declare-datatypes ((IArray!2569 0))(
  ( (IArray!2570 (innerList!1342 List!3838)) )
))
(declare-datatypes ((Conc!1284 0))(
  ( (Node!1284 (left!3152 Conc!1284) (right!3482 Conc!1284) (csize!2798 Int) (cheight!1495 Int)) (Leaf!1989 (xs!3883 IArray!2569) (csize!2799 Int)) (Empty!1284) )
))
(declare-datatypes ((BalanceConc!2576 0))(
  ( (BalanceConc!2577 (c!51394 Conc!1284)) )
))
(declare-datatypes ((TokenValueInjection!1278 0))(
  ( (TokenValueInjection!1279 (toValue!1470 Int) (toChars!1329 Int)) )
))
(declare-datatypes ((String!4845 0))(
  ( (String!4846 (value!25148 String)) )
))
(declare-datatypes ((Regex!955 0))(
  ( (ElementMatch!955 (c!51395 C!2832)) (Concat!1709 (regOne!2422 Regex!955) (regTwo!2422 Regex!955)) (EmptyExpr!955) (Star!955 (reg!1284 Regex!955)) (EmptyLang!955) (Union!955 (regOne!2423 Regex!955) (regTwo!2423 Regex!955)) )
))
(declare-datatypes ((Rule!1262 0))(
  ( (Rule!1263 (regex!731 Regex!955) (tag!941 String!4845) (isSeparator!731 Bool) (transformation!731 TokenValueInjection!1278)) )
))
(declare-datatypes ((List!3839 0))(
  ( (Nil!3829) (Cons!3829 (h!9226 Rule!1262) (t!38513 List!3839)) )
))
(declare-fun rules!1920 () List!3839)

(get-info :version)

(assert (= (and b!271207 ((_ is Cons!3829) rules!1920)) b!271224))

(declare-fun order!2955 () Int)

(declare-fun order!2953 () Int)

(declare-fun dynLambda!1967 (Int Int) Int)

(declare-fun dynLambda!1968 (Int Int) Int)

(assert (=> b!271226 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9172))))

(declare-fun order!2957 () Int)

(declare-fun dynLambda!1969 (Int Int) Int)

(assert (=> b!271226 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9172))))

(assert (=> b!271207 true))

(declare-fun b!271189 () Bool)

(declare-fun res!123860 () Bool)

(declare-fun e!168463 () Bool)

(assert (=> b!271189 (=> (not res!123860) (not e!168463))))

(declare-fun isEmpty!2429 (List!3839) Bool)

(assert (=> b!271189 (= res!123860 (not (isEmpty!2429 rules!1920)))))

(declare-fun b!271191 () Bool)

(declare-fun res!123857 () Bool)

(declare-fun e!168474 () Bool)

(assert (=> b!271191 (=> res!123857 e!168474)))

(declare-fun lt!111765 () List!3838)

(declare-datatypes ((LexerInterface!617 0))(
  ( (LexerInterfaceExt!614 (__x!2994 Int)) (Lexer!615) )
))
(declare-fun thiss!17480 () LexerInterface!617)

(declare-datatypes ((Token!1206 0))(
  ( (Token!1207 (value!25149 TokenValue!753) (rule!1316 Rule!1262) (size!3051 Int) (originalCharacters!774 List!3838)) )
))
(declare-datatypes ((List!3840 0))(
  ( (Nil!3830) (Cons!3830 (h!9227 Token!1206) (t!38514 List!3840)) )
))
(declare-datatypes ((IArray!2571 0))(
  ( (IArray!2572 (innerList!1343 List!3840)) )
))
(declare-datatypes ((Conc!1285 0))(
  ( (Node!1285 (left!3153 Conc!1285) (right!3483 Conc!1285) (csize!2800 Int) (cheight!1496 Int)) (Leaf!1990 (xs!3884 IArray!2571) (csize!2801 Int)) (Empty!1285) )
))
(declare-datatypes ((BalanceConc!2578 0))(
  ( (BalanceConc!2579 (c!51396 Conc!1285)) )
))
(declare-fun isEmpty!2430 (BalanceConc!2578) Bool)

(declare-datatypes ((tuple2!4292 0))(
  ( (tuple2!4293 (_1!2362 BalanceConc!2578) (_2!2362 BalanceConc!2576)) )
))
(declare-fun lex!409 (LexerInterface!617 List!3839 BalanceConc!2576) tuple2!4292)

(declare-fun seqFromList!829 (List!3838) BalanceConc!2576)

(assert (=> b!271191 (= res!123857 (isEmpty!2430 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765)))))))

(declare-fun b!271192 () Bool)

(declare-fun e!168473 () Bool)

(declare-fun e!168475 () Bool)

(declare-fun tp!102715 () Bool)

(assert (=> b!271192 (= e!168473 (and e!168475 tp!102715))))

(declare-fun e!168459 () Bool)

(declare-fun tp!102721 () Bool)

(declare-fun e!168464 () Bool)

(declare-fun tokens!465 () List!3840)

(declare-fun b!271193 () Bool)

(declare-fun inv!4735 (String!4845) Bool)

(declare-fun inv!4738 (TokenValueInjection!1278) Bool)

(assert (=> b!271193 (= e!168464 (and tp!102721 (inv!4735 (tag!941 (rule!1316 (h!9227 tokens!465)))) (inv!4738 (transformation!731 (rule!1316 (h!9227 tokens!465)))) e!168459))))

(declare-fun b!271194 () Bool)

(declare-fun res!123851 () Bool)

(assert (=> b!271194 (=> res!123851 e!168474)))

(declare-fun rulesProduceIndividualToken!366 (LexerInterface!617 List!3839 Token!1206) Bool)

(assert (=> b!271194 (= res!123851 (not (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (h!9227 tokens!465))))))

(declare-fun b!271195 () Bool)

(declare-fun res!123862 () Bool)

(declare-fun e!168470 () Bool)

(assert (=> b!271195 (=> (not res!123862) (not e!168470))))

(assert (=> b!271195 (= res!123862 ((_ is Cons!3830) tokens!465))))

(declare-fun b!271196 () Bool)

(declare-fun res!123850 () Bool)

(declare-fun e!168460 () Bool)

(assert (=> b!271196 (=> (not res!123850) (not e!168460))))

(declare-fun lt!111752 () List!3838)

(declare-fun lt!111760 () List!3838)

(declare-fun list!1567 (BalanceConc!2576) List!3838)

(assert (=> b!271196 (= res!123850 (= (list!1567 (seqFromList!829 lt!111752)) lt!111760))))

(declare-fun b!271197 () Bool)

(declare-fun res!123854 () Bool)

(assert (=> b!271197 (=> (not res!123854) (not e!168470))))

(declare-fun sepAndNonSepRulesDisjointChars!320 (List!3839 List!3839) Bool)

(assert (=> b!271197 (= res!123854 (sepAndNonSepRulesDisjointChars!320 rules!1920 rules!1920))))

(declare-fun e!168458 () Bool)

(declare-fun e!168455 () Bool)

(declare-fun b!271198 () Bool)

(declare-fun tp!102716 () Bool)

(declare-fun inv!4739 (Token!1206) Bool)

(assert (=> b!271198 (= e!168455 (and (inv!4739 (h!9227 tokens!465)) e!168458 tp!102716))))

(declare-fun e!168467 () Bool)

(assert (=> b!271199 (= e!168467 (and tp!102718 tp!102710))))

(declare-fun e!168457 () Bool)

(declare-fun b!271200 () Bool)

(declare-fun tp!102717 () Bool)

(assert (=> b!271200 (= e!168475 (and tp!102717 (inv!4735 (tag!941 (h!9226 rules!1920))) (inv!4738 (transformation!731 (h!9226 rules!1920))) e!168457))))

(declare-fun b!271201 () Bool)

(declare-fun e!168462 () Bool)

(assert (=> b!271201 (= e!168460 (not e!168462))))

(declare-fun res!123848 () Bool)

(assert (=> b!271201 (=> res!123848 e!168462)))

(declare-fun lt!111759 () List!3838)

(declare-fun separatorToken!170 () Token!1206)

(declare-fun printWithSeparatorTokenWhenNeededRec!292 (LexerInterface!617 List!3839 BalanceConc!2578 Token!1206 Int) BalanceConc!2576)

(declare-fun seqFromList!830 (List!3840) BalanceConc!2578)

(assert (=> b!271201 (= res!123848 (not (= lt!111759 (list!1567 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!111764 () List!3838)

(declare-fun lt!111757 () List!3838)

(assert (=> b!271201 (= lt!111764 lt!111757)))

(declare-fun lt!111762 () List!3838)

(declare-fun ++!1002 (List!3838 List!3838) List!3838)

(assert (=> b!271201 (= lt!111757 (++!1002 lt!111765 lt!111762))))

(declare-fun lt!111756 () List!3838)

(assert (=> b!271201 (= lt!111764 (++!1002 (++!1002 lt!111765 lt!111756) lt!111759))))

(declare-datatypes ((Unit!4936 0))(
  ( (Unit!4937) )
))
(declare-fun lt!111766 () Unit!4936)

(declare-fun lemmaConcatAssociativity!430 (List!3838 List!3838 List!3838) Unit!4936)

(assert (=> b!271201 (= lt!111766 (lemmaConcatAssociativity!430 lt!111765 lt!111756 lt!111759))))

(declare-fun charsOf!376 (Token!1206) BalanceConc!2576)

(assert (=> b!271201 (= lt!111765 (list!1567 (charsOf!376 (h!9227 tokens!465))))))

(assert (=> b!271201 (= lt!111762 (++!1002 lt!111756 lt!111759))))

(declare-fun printWithSeparatorTokenWhenNeededList!300 (LexerInterface!617 List!3839 List!3840 Token!1206) List!3838)

(assert (=> b!271201 (= lt!111759 (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (t!38514 tokens!465) separatorToken!170))))

(assert (=> b!271201 (= lt!111756 (list!1567 (charsOf!376 separatorToken!170)))))

(declare-fun b!271202 () Bool)

(assert (=> b!271202 (= e!168470 e!168460)))

(declare-fun res!123847 () Bool)

(assert (=> b!271202 (=> (not res!123847) (not e!168460))))

(assert (=> b!271202 (= res!123847 (= lt!111752 lt!111760))))

(declare-fun lt!111755 () BalanceConc!2578)

(assert (=> b!271202 (= lt!111760 (list!1567 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0)))))

(assert (=> b!271202 (= lt!111752 (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!271190 (= e!168457 (and tp!102712 tp!102714))))

(declare-fun res!123855 () Bool)

(assert (=> start!29134 (=> (not res!123855) (not e!168463))))

(assert (=> start!29134 (= res!123855 ((_ is Lexer!615) thiss!17480))))

(assert (=> start!29134 e!168463))

(assert (=> start!29134 true))

(assert (=> start!29134 e!168473))

(declare-fun e!168468 () Bool)

(assert (=> start!29134 (and (inv!4739 separatorToken!170) e!168468)))

(assert (=> start!29134 e!168455))

(declare-fun b!271203 () Bool)

(assert (=> b!271203 (= e!168462 e!168474)))

(declare-fun res!123849 () Bool)

(assert (=> b!271203 (=> res!123849 e!168474)))

(declare-fun lt!111754 () List!3838)

(declare-fun lt!111763 () List!3838)

(assert (=> b!271203 (= res!123849 (or (not (= lt!111754 lt!111763)) (not (= lt!111763 lt!111765)) (not (= lt!111754 lt!111765))))))

(declare-fun printList!293 (LexerInterface!617 List!3840) List!3838)

(assert (=> b!271203 (= lt!111763 (printList!293 thiss!17480 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))

(declare-fun lt!111758 () BalanceConc!2576)

(assert (=> b!271203 (= lt!111754 (list!1567 lt!111758))))

(declare-fun lt!111761 () BalanceConc!2578)

(declare-fun printTailRec!305 (LexerInterface!617 BalanceConc!2578 Int BalanceConc!2576) BalanceConc!2576)

(assert (=> b!271203 (= lt!111758 (printTailRec!305 thiss!17480 lt!111761 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun print!342 (LexerInterface!617 BalanceConc!2578) BalanceConc!2576)

(assert (=> b!271203 (= lt!111758 (print!342 thiss!17480 lt!111761))))

(declare-fun singletonSeq!277 (Token!1206) BalanceConc!2578)

(assert (=> b!271203 (= lt!111761 (singletonSeq!277 (h!9227 tokens!465)))))

(declare-fun b!271204 () Bool)

(declare-fun tp!102711 () Bool)

(declare-fun e!168472 () Bool)

(assert (=> b!271204 (= e!168472 (and tp!102711 (inv!4735 (tag!941 (rule!1316 separatorToken!170))) (inv!4738 (transformation!731 (rule!1316 separatorToken!170))) e!168467))))

(declare-fun b!271205 () Bool)

(declare-fun tp!102713 () Bool)

(declare-fun inv!21 (TokenValue!753) Bool)

(assert (=> b!271205 (= e!168468 (and (inv!21 (value!25149 separatorToken!170)) e!168472 tp!102713))))

(declare-fun b!271206 () Bool)

(declare-fun e!168461 () Bool)

(assert (=> b!271206 (= e!168461 (not (= lt!111752 (++!1002 lt!111765 lt!111759))))))

(declare-datatypes ((tuple2!4294 0))(
  ( (tuple2!4295 (_1!2363 Token!1206) (_2!2363 BalanceConc!2576)) )
))
(declare-datatypes ((Option!813 0))(
  ( (None!812) (Some!812 (v!14681 tuple2!4294)) )
))
(declare-fun isDefined!656 (Option!813) Bool)

(declare-fun maxPrefixZipperSequence!298 (LexerInterface!617 List!3839 BalanceConc!2576) Option!813)

(assert (=> b!271207 (= e!168474 (isDefined!656 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(declare-fun lt!111753 () Unit!4936)

(declare-fun forallContained!286 (List!3840 Int Token!1206) Unit!4936)

(assert (=> b!271207 (= lt!111753 (forallContained!286 tokens!465 lambda!9172 (h!9227 tokens!465)))))

(assert (=> b!271207 (= lt!111765 (originalCharacters!774 (h!9227 tokens!465)))))

(declare-fun b!271208 () Bool)

(declare-fun tp!102719 () Bool)

(assert (=> b!271208 (= e!168458 (and (inv!21 (value!25149 (h!9227 tokens!465))) e!168464 tp!102719))))

(declare-fun b!271209 () Bool)

(assert (=> b!271209 (= e!168463 e!168470)))

(declare-fun res!123852 () Bool)

(assert (=> b!271209 (=> (not res!123852) (not e!168470))))

(declare-fun rulesProduceEachTokenIndividually!409 (LexerInterface!617 List!3839 BalanceConc!2578) Bool)

(assert (=> b!271209 (= res!123852 (rulesProduceEachTokenIndividually!409 thiss!17480 rules!1920 lt!111755))))

(assert (=> b!271209 (= lt!111755 (seqFromList!830 tokens!465))))

(declare-fun b!271210 () Bool)

(declare-fun res!123853 () Bool)

(assert (=> b!271210 (=> (not res!123853) (not e!168470))))

(assert (=> b!271210 (= res!123853 (isSeparator!731 (rule!1316 separatorToken!170)))))

(assert (=> b!271211 (= e!168459 (and tp!102709 tp!102720))))

(declare-fun res!123859 () Bool)

(assert (=> b!271212 (=> (not res!123859) (not e!168470))))

(declare-fun forall!964 (List!3840 Int) Bool)

(assert (=> b!271212 (= res!123859 (forall!964 tokens!465 lambda!9171))))

(declare-fun b!271213 () Bool)

(declare-fun res!123861 () Bool)

(assert (=> b!271213 (=> (not res!123861) (not e!168470))))

(assert (=> b!271213 (= res!123861 (rulesProduceIndividualToken!366 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!271214 () Bool)

(declare-fun res!123858 () Bool)

(assert (=> b!271214 (=> res!123858 e!168462)))

(assert (=> b!271214 (= res!123858 e!168461)))

(declare-fun res!123856 () Bool)

(assert (=> b!271214 (=> (not res!123856) (not e!168461))))

(assert (=> b!271214 (= res!123856 (not (= lt!111752 lt!111757)))))

(declare-fun b!271215 () Bool)

(declare-fun res!123846 () Bool)

(assert (=> b!271215 (=> (not res!123846) (not e!168463))))

(declare-fun rulesInvariant!583 (LexerInterface!617 List!3839) Bool)

(assert (=> b!271215 (= res!123846 (rulesInvariant!583 thiss!17480 rules!1920))))

(assert (= (and start!29134 res!123855) b!271189))

(assert (= (and b!271189 res!123860) b!271215))

(assert (= (and b!271215 res!123846) b!271209))

(assert (= (and b!271209 res!123852) b!271213))

(assert (= (and b!271213 res!123861) b!271210))

(assert (= (and b!271210 res!123853) b!271212))

(assert (= (and b!271212 res!123859) b!271197))

(assert (= (and b!271197 res!123854) b!271195))

(assert (= (and b!271195 res!123862) b!271202))

(assert (= (and b!271202 res!123847) b!271196))

(assert (= (and b!271196 res!123850) b!271201))

(assert (= (and b!271201 (not res!123848)) b!271214))

(assert (= (and b!271214 res!123856) b!271206))

(assert (= (and b!271214 (not res!123858)) b!271203))

(assert (= (and b!271203 (not res!123849)) b!271194))

(assert (= (and b!271194 (not res!123851)) b!271191))

(assert (= (and b!271191 (not res!123857)) b!271207))

(assert (= b!271200 b!271190))

(assert (= b!271192 b!271200))

(assert (= (and start!29134 ((_ is Cons!3829) rules!1920)) b!271192))

(assert (= b!271204 b!271199))

(assert (= b!271205 b!271204))

(assert (= start!29134 b!271205))

(assert (= b!271193 b!271211))

(assert (= b!271208 b!271193))

(assert (= b!271198 b!271208))

(assert (= (and start!29134 ((_ is Cons!3830) tokens!465)) b!271198))

(declare-fun m!343673 () Bool)

(assert (=> b!271191 m!343673))

(assert (=> b!271191 m!343673))

(declare-fun m!343675 () Bool)

(assert (=> b!271191 m!343675))

(declare-fun m!343677 () Bool)

(assert (=> b!271191 m!343677))

(declare-fun m!343679 () Bool)

(assert (=> b!271203 m!343679))

(declare-fun m!343681 () Bool)

(assert (=> b!271203 m!343681))

(declare-fun m!343683 () Bool)

(assert (=> b!271203 m!343683))

(declare-fun m!343685 () Bool)

(assert (=> b!271203 m!343685))

(declare-fun m!343687 () Bool)

(assert (=> b!271203 m!343687))

(declare-fun m!343689 () Bool)

(assert (=> b!271206 m!343689))

(declare-fun m!343691 () Bool)

(assert (=> b!271205 m!343691))

(declare-fun m!343693 () Bool)

(assert (=> b!271215 m!343693))

(declare-fun m!343695 () Bool)

(assert (=> b!271208 m!343695))

(declare-fun m!343697 () Bool)

(assert (=> b!271196 m!343697))

(assert (=> b!271196 m!343697))

(declare-fun m!343699 () Bool)

(assert (=> b!271196 m!343699))

(declare-fun m!343701 () Bool)

(assert (=> b!271193 m!343701))

(declare-fun m!343703 () Bool)

(assert (=> b!271193 m!343703))

(declare-fun m!343705 () Bool)

(assert (=> b!271194 m!343705))

(declare-fun m!343707 () Bool)

(assert (=> b!271198 m!343707))

(declare-fun m!343709 () Bool)

(assert (=> b!271204 m!343709))

(declare-fun m!343711 () Bool)

(assert (=> b!271204 m!343711))

(declare-fun m!343713 () Bool)

(assert (=> b!271189 m!343713))

(declare-fun m!343715 () Bool)

(assert (=> b!271207 m!343715))

(assert (=> b!271207 m!343715))

(declare-fun m!343717 () Bool)

(assert (=> b!271207 m!343717))

(assert (=> b!271207 m!343717))

(declare-fun m!343719 () Bool)

(assert (=> b!271207 m!343719))

(declare-fun m!343721 () Bool)

(assert (=> b!271207 m!343721))

(declare-fun m!343723 () Bool)

(assert (=> b!271200 m!343723))

(declare-fun m!343725 () Bool)

(assert (=> b!271200 m!343725))

(declare-fun m!343727 () Bool)

(assert (=> b!271209 m!343727))

(declare-fun m!343729 () Bool)

(assert (=> b!271209 m!343729))

(declare-fun m!343731 () Bool)

(assert (=> start!29134 m!343731))

(declare-fun m!343733 () Bool)

(assert (=> b!271197 m!343733))

(declare-fun m!343735 () Bool)

(assert (=> b!271212 m!343735))

(declare-fun m!343737 () Bool)

(assert (=> b!271213 m!343737))

(declare-fun m!343739 () Bool)

(assert (=> b!271202 m!343739))

(assert (=> b!271202 m!343739))

(declare-fun m!343741 () Bool)

(assert (=> b!271202 m!343741))

(declare-fun m!343743 () Bool)

(assert (=> b!271202 m!343743))

(declare-fun m!343745 () Bool)

(assert (=> b!271201 m!343745))

(declare-fun m!343747 () Bool)

(assert (=> b!271201 m!343747))

(declare-fun m!343749 () Bool)

(assert (=> b!271201 m!343749))

(declare-fun m!343751 () Bool)

(assert (=> b!271201 m!343751))

(assert (=> b!271201 m!343747))

(declare-fun m!343753 () Bool)

(assert (=> b!271201 m!343753))

(declare-fun m!343755 () Bool)

(assert (=> b!271201 m!343755))

(declare-fun m!343757 () Bool)

(assert (=> b!271201 m!343757))

(assert (=> b!271201 m!343751))

(declare-fun m!343759 () Bool)

(assert (=> b!271201 m!343759))

(declare-fun m!343761 () Bool)

(assert (=> b!271201 m!343761))

(assert (=> b!271201 m!343753))

(declare-fun m!343763 () Bool)

(assert (=> b!271201 m!343763))

(declare-fun m!343765 () Bool)

(assert (=> b!271201 m!343765))

(assert (=> b!271201 m!343757))

(declare-fun m!343767 () Bool)

(assert (=> b!271201 m!343767))

(assert (=> b!271201 m!343755))

(declare-fun m!343769 () Bool)

(assert (=> b!271201 m!343769))

(check-sat (not b!271201) (not b!271203) (not b!271206) (not b_next!10057) (not b!271196) (not b!271213) (not b_next!10055) (not b!271192) b_and!21657 (not b_next!10049) (not b_next!10053) (not b!271204) (not b!271191) (not b!271209) (not b!271205) (not b!271202) b_and!21661 (not b_next!10051) (not b!271224) b_and!21653 (not b_next!10059) (not b!271208) b_and!21659 (not b!271198) (not b!271200) (not b!271189) (not b!271194) (not b!271193) (not b!271215) b_and!21655 (not b!271207) b_and!21663 (not b!271197) (not start!29134) (not b!271212))
(check-sat b_and!21653 (not b_next!10059) (not b_next!10057) (not b_next!10055) b_and!21659 b_and!21657 (not b_next!10049) b_and!21655 (not b_next!10053) b_and!21663 b_and!21661 (not b_next!10051))
(get-model)

(declare-fun d!79029 () Bool)

(assert (=> d!79029 (= (isEmpty!2429 rules!1920) ((_ is Nil!3829) rules!1920))))

(assert (=> b!271189 d!79029))

(declare-fun d!79031 () Bool)

(declare-fun res!123875 () Bool)

(declare-fun e!168487 () Bool)

(assert (=> d!79031 (=> (not res!123875) (not e!168487))))

(declare-fun isEmpty!2432 (List!3838) Bool)

(assert (=> d!79031 (= res!123875 (not (isEmpty!2432 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (=> d!79031 (= (inv!4739 (h!9227 tokens!465)) e!168487)))

(declare-fun b!271233 () Bool)

(declare-fun res!123876 () Bool)

(assert (=> b!271233 (=> (not res!123876) (not e!168487))))

(declare-fun dynLambda!1971 (Int TokenValue!753) BalanceConc!2576)

(assert (=> b!271233 (= res!123876 (= (originalCharacters!774 (h!9227 tokens!465)) (list!1567 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))))))

(declare-fun b!271234 () Bool)

(declare-fun size!3053 (List!3838) Int)

(assert (=> b!271234 (= e!168487 (= (size!3051 (h!9227 tokens!465)) (size!3053 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (= (and d!79031 res!123875) b!271233))

(assert (= (and b!271233 res!123876) b!271234))

(declare-fun b_lambda!8631 () Bool)

(assert (=> (not b_lambda!8631) (not b!271233)))

(declare-fun t!38516 () Bool)

(declare-fun tb!15393 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) t!38516) tb!15393))

(declare-fun b!271239 () Bool)

(declare-fun e!168490 () Bool)

(declare-fun tp!102724 () Bool)

(declare-fun inv!4740 (Conc!1284) Bool)

(assert (=> b!271239 (= e!168490 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))) tp!102724))))

(declare-fun result!19000 () Bool)

(declare-fun inv!4741 (BalanceConc!2576) Bool)

(assert (=> tb!15393 (= result!19000 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))) e!168490))))

(assert (= tb!15393 b!271239))

(declare-fun m!343773 () Bool)

(assert (=> b!271239 m!343773))

(declare-fun m!343775 () Bool)

(assert (=> tb!15393 m!343775))

(assert (=> b!271233 t!38516))

(declare-fun b_and!21665 () Bool)

(assert (= b_and!21655 (and (=> t!38516 result!19000) b_and!21665)))

(declare-fun t!38518 () Bool)

(declare-fun tb!15395 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) t!38518) tb!15395))

(declare-fun result!19004 () Bool)

(assert (= result!19004 result!19000))

(assert (=> b!271233 t!38518))

(declare-fun b_and!21667 () Bool)

(assert (= b_and!21659 (and (=> t!38518 result!19004) b_and!21667)))

(declare-fun t!38520 () Bool)

(declare-fun tb!15397 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) t!38520) tb!15397))

(declare-fun result!19006 () Bool)

(assert (= result!19006 result!19000))

(assert (=> b!271233 t!38520))

(declare-fun b_and!21669 () Bool)

(assert (= b_and!21663 (and (=> t!38520 result!19006) b_and!21669)))

(declare-fun m!343777 () Bool)

(assert (=> d!79031 m!343777))

(declare-fun m!343779 () Bool)

(assert (=> b!271233 m!343779))

(assert (=> b!271233 m!343779))

(declare-fun m!343781 () Bool)

(assert (=> b!271233 m!343781))

(declare-fun m!343783 () Bool)

(assert (=> b!271234 m!343783))

(assert (=> b!271198 d!79031))

(declare-fun bs!30219 () Bool)

(declare-fun d!79033 () Bool)

(assert (= bs!30219 (and d!79033 b!271212)))

(declare-fun lambda!9183 () Int)

(assert (=> bs!30219 (not (= lambda!9183 lambda!9171))))

(declare-fun bs!30220 () Bool)

(assert (= bs!30220 (and d!79033 b!271207)))

(assert (=> bs!30220 (= lambda!9183 lambda!9172)))

(declare-fun b!271275 () Bool)

(declare-fun e!168517 () Bool)

(assert (=> b!271275 (= e!168517 true)))

(declare-fun b!271274 () Bool)

(declare-fun e!168516 () Bool)

(assert (=> b!271274 (= e!168516 e!168517)))

(declare-fun b!271273 () Bool)

(declare-fun e!168515 () Bool)

(assert (=> b!271273 (= e!168515 e!168516)))

(assert (=> d!79033 e!168515))

(assert (= b!271274 b!271275))

(assert (= b!271273 b!271274))

(assert (= (and d!79033 ((_ is Cons!3829) rules!1920)) b!271273))

(assert (=> b!271275 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9183))))

(assert (=> b!271275 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9183))))

(assert (=> d!79033 true))

(declare-fun e!168514 () Bool)

(assert (=> d!79033 e!168514))

(declare-fun res!123888 () Bool)

(assert (=> d!79033 (=> (not res!123888) (not e!168514))))

(declare-fun lt!111811 () Bool)

(declare-fun list!1570 (BalanceConc!2578) List!3840)

(assert (=> d!79033 (= res!123888 (= lt!111811 (forall!964 (list!1570 lt!111755) lambda!9183)))))

(declare-fun forall!965 (BalanceConc!2578 Int) Bool)

(assert (=> d!79033 (= lt!111811 (forall!965 lt!111755 lambda!9183))))

(assert (=> d!79033 (not (isEmpty!2429 rules!1920))))

(assert (=> d!79033 (= (rulesProduceEachTokenIndividually!409 thiss!17480 rules!1920 lt!111755) lt!111811)))

(declare-fun b!271272 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!228 (LexerInterface!617 List!3839 List!3840) Bool)

(assert (=> b!271272 (= e!168514 (= lt!111811 (rulesProduceEachTokenIndividuallyList!228 thiss!17480 rules!1920 (list!1570 lt!111755))))))

(assert (= (and d!79033 res!123888) b!271272))

(declare-fun m!343845 () Bool)

(assert (=> d!79033 m!343845))

(assert (=> d!79033 m!343845))

(declare-fun m!343847 () Bool)

(assert (=> d!79033 m!343847))

(declare-fun m!343849 () Bool)

(assert (=> d!79033 m!343849))

(assert (=> d!79033 m!343713))

(assert (=> b!271272 m!343845))

(assert (=> b!271272 m!343845))

(declare-fun m!343851 () Bool)

(assert (=> b!271272 m!343851))

(assert (=> b!271209 d!79033))

(declare-fun d!79037 () Bool)

(declare-fun fromListB!319 (List!3840) BalanceConc!2578)

(assert (=> d!79037 (= (seqFromList!830 tokens!465) (fromListB!319 tokens!465))))

(declare-fun bs!30221 () Bool)

(assert (= bs!30221 d!79037))

(declare-fun m!343853 () Bool)

(assert (=> bs!30221 m!343853))

(assert (=> b!271209 d!79037))

(declare-fun b!271286 () Bool)

(declare-fun e!168526 () Bool)

(declare-fun inv!17 (TokenValue!753) Bool)

(assert (=> b!271286 (= e!168526 (inv!17 (value!25149 (h!9227 tokens!465))))))

(declare-fun b!271287 () Bool)

(declare-fun e!168524 () Bool)

(declare-fun inv!15 (TokenValue!753) Bool)

(assert (=> b!271287 (= e!168524 (inv!15 (value!25149 (h!9227 tokens!465))))))

(declare-fun b!271288 () Bool)

(declare-fun e!168525 () Bool)

(declare-fun inv!16 (TokenValue!753) Bool)

(assert (=> b!271288 (= e!168525 (inv!16 (value!25149 (h!9227 tokens!465))))))

(declare-fun b!271289 () Bool)

(assert (=> b!271289 (= e!168525 e!168526)))

(declare-fun c!51410 () Bool)

(assert (=> b!271289 (= c!51410 ((_ is IntegerValue!2260) (value!25149 (h!9227 tokens!465))))))

(declare-fun d!79039 () Bool)

(declare-fun c!51411 () Bool)

(assert (=> d!79039 (= c!51411 ((_ is IntegerValue!2259) (value!25149 (h!9227 tokens!465))))))

(assert (=> d!79039 (= (inv!21 (value!25149 (h!9227 tokens!465))) e!168525)))

(declare-fun b!271290 () Bool)

(declare-fun res!123891 () Bool)

(assert (=> b!271290 (=> res!123891 e!168524)))

(assert (=> b!271290 (= res!123891 (not ((_ is IntegerValue!2261) (value!25149 (h!9227 tokens!465)))))))

(assert (=> b!271290 (= e!168526 e!168524)))

(assert (= (and d!79039 c!51411) b!271288))

(assert (= (and d!79039 (not c!51411)) b!271289))

(assert (= (and b!271289 c!51410) b!271286))

(assert (= (and b!271289 (not c!51410)) b!271290))

(assert (= (and b!271290 (not res!123891)) b!271287))

(declare-fun m!343855 () Bool)

(assert (=> b!271286 m!343855))

(declare-fun m!343857 () Bool)

(assert (=> b!271287 m!343857))

(declare-fun m!343859 () Bool)

(assert (=> b!271288 m!343859))

(assert (=> b!271208 d!79039))

(declare-fun d!79041 () Bool)

(declare-fun list!1571 (Conc!1284) List!3838)

(assert (=> d!79041 (= (list!1567 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0)) (list!1571 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0))))))

(declare-fun bs!30222 () Bool)

(assert (= bs!30222 d!79041))

(declare-fun m!343861 () Bool)

(assert (=> bs!30222 m!343861))

(assert (=> b!271202 d!79041))

(declare-fun bs!30229 () Bool)

(declare-fun d!79043 () Bool)

(assert (= bs!30229 (and d!79043 b!271212)))

(declare-fun lambda!9191 () Int)

(assert (=> bs!30229 (= lambda!9191 lambda!9171)))

(declare-fun bs!30230 () Bool)

(assert (= bs!30230 (and d!79043 b!271207)))

(assert (=> bs!30230 (not (= lambda!9191 lambda!9172))))

(declare-fun bs!30231 () Bool)

(assert (= bs!30231 (and d!79043 d!79033)))

(assert (=> bs!30231 (not (= lambda!9191 lambda!9183))))

(declare-fun bs!30232 () Bool)

(declare-fun b!271373 () Bool)

(assert (= bs!30232 (and b!271373 b!271212)))

(declare-fun lambda!9192 () Int)

(assert (=> bs!30232 (not (= lambda!9192 lambda!9171))))

(declare-fun bs!30233 () Bool)

(assert (= bs!30233 (and b!271373 b!271207)))

(assert (=> bs!30233 (= lambda!9192 lambda!9172)))

(declare-fun bs!30234 () Bool)

(assert (= bs!30234 (and b!271373 d!79033)))

(assert (=> bs!30234 (= lambda!9192 lambda!9183)))

(declare-fun bs!30235 () Bool)

(assert (= bs!30235 (and b!271373 d!79043)))

(assert (=> bs!30235 (not (= lambda!9192 lambda!9191))))

(declare-fun b!271384 () Bool)

(declare-fun e!168590 () Bool)

(assert (=> b!271384 (= e!168590 true)))

(declare-fun b!271383 () Bool)

(declare-fun e!168589 () Bool)

(assert (=> b!271383 (= e!168589 e!168590)))

(declare-fun b!271382 () Bool)

(declare-fun e!168588 () Bool)

(assert (=> b!271382 (= e!168588 e!168589)))

(assert (=> b!271373 e!168588))

(assert (= b!271383 b!271384))

(assert (= b!271382 b!271383))

(assert (= (and b!271373 ((_ is Cons!3829) rules!1920)) b!271382))

(assert (=> b!271384 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9192))))

(assert (=> b!271384 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9192))))

(assert (=> b!271373 true))

(declare-fun bm!14845 () Bool)

(declare-fun c!51438 () Bool)

(declare-fun c!51437 () Bool)

(assert (=> bm!14845 (= c!51438 c!51437)))

(declare-fun call!14851 () BalanceConc!2576)

(declare-fun lt!111891 () BalanceConc!2576)

(declare-fun e!168578 () BalanceConc!2576)

(declare-fun call!14854 () BalanceConc!2576)

(declare-fun ++!1004 (BalanceConc!2576 BalanceConc!2576) BalanceConc!2576)

(assert (=> bm!14845 (= call!14851 (++!1004 e!168578 (ite c!51437 lt!111891 call!14854)))))

(declare-fun b!271367 () Bool)

(declare-fun call!14852 () Token!1206)

(assert (=> b!271367 (= e!168578 (charsOf!376 call!14852))))

(declare-fun lt!111889 () BalanceConc!2576)

(declare-fun dropList!164 (BalanceConc!2578 Int) List!3840)

(assert (=> d!79043 (= (list!1567 lt!111889) (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (dropList!164 lt!111755 0) separatorToken!170))))

(declare-fun e!168583 () BalanceConc!2576)

(assert (=> d!79043 (= lt!111889 e!168583)))

(declare-fun c!51436 () Bool)

(declare-fun size!3055 (BalanceConc!2578) Int)

(assert (=> d!79043 (= c!51436 (>= 0 (size!3055 lt!111755)))))

(declare-fun lt!111893 () Unit!4936)

(declare-fun lemmaContentSubsetPreservesForall!108 (List!3840 List!3840 Int) Unit!4936)

(assert (=> d!79043 (= lt!111893 (lemmaContentSubsetPreservesForall!108 (list!1570 lt!111755) (dropList!164 lt!111755 0) lambda!9191))))

(declare-fun e!168582 () Bool)

(assert (=> d!79043 e!168582))

(declare-fun res!123919 () Bool)

(assert (=> d!79043 (=> (not res!123919) (not e!168582))))

(assert (=> d!79043 (= res!123919 (>= 0 0))))

(assert (=> d!79043 (= (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0) lt!111889)))

(declare-fun b!271368 () Bool)

(assert (=> b!271368 (= e!168583 (BalanceConc!2577 Empty!1284))))

(declare-fun b!271369 () Bool)

(declare-fun e!168580 () BalanceConc!2576)

(assert (=> b!271369 (= e!168580 call!14851)))

(declare-fun b!271370 () Bool)

(declare-fun e!168577 () BalanceConc!2576)

(assert (=> b!271370 (= e!168577 (++!1004 call!14851 lt!111891))))

(declare-fun bm!14846 () Bool)

(declare-fun call!14850 () Token!1206)

(assert (=> bm!14846 (= call!14852 call!14850)))

(declare-fun b!271371 () Bool)

(assert (=> b!271371 (= e!168577 (BalanceConc!2577 Empty!1284))))

(assert (=> b!271371 (= (print!342 thiss!17480 (singletonSeq!277 call!14852)) (printTailRec!305 thiss!17480 (singletonSeq!277 call!14852) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!111888 () Unit!4936)

(declare-fun Unit!4944 () Unit!4936)

(assert (=> b!271371 (= lt!111888 Unit!4944)))

(declare-fun lt!111890 () Unit!4936)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 (LexerInterface!617 List!3839 List!3838 List!3838) Unit!4936)

(assert (=> b!271371 (= lt!111890 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 (list!1567 call!14854) (list!1567 lt!111891)))))

(assert (=> b!271371 false))

(declare-fun lt!111883 () Unit!4936)

(declare-fun Unit!4945 () Unit!4936)

(assert (=> b!271371 (= lt!111883 Unit!4945)))

(declare-fun c!51435 () Bool)

(declare-fun bm!14847 () Bool)

(declare-fun call!14853 () BalanceConc!2576)

(assert (=> bm!14847 (= call!14853 (charsOf!376 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852))))))

(declare-fun b!271372 () Bool)

(declare-fun e!168581 () Bool)

(declare-fun lt!111884 () Option!813)

(assert (=> b!271372 (= e!168581 (not (= (_1!2363 (v!14681 lt!111884)) call!14850)))))

(declare-fun bm!14848 () Bool)

(declare-fun apply!773 (BalanceConc!2578 Int) Token!1206)

(assert (=> bm!14848 (= call!14850 (apply!773 lt!111755 0))))

(declare-fun bm!14849 () Bool)

(assert (=> bm!14849 (= call!14854 call!14853)))

(assert (=> b!271373 (= e!168583 e!168580)))

(declare-fun lt!111887 () List!3840)

(assert (=> b!271373 (= lt!111887 (list!1570 lt!111755))))

(declare-fun lt!111894 () Unit!4936)

(declare-fun lemmaDropApply!204 (List!3840 Int) Unit!4936)

(assert (=> b!271373 (= lt!111894 (lemmaDropApply!204 lt!111887 0))))

(declare-fun head!888 (List!3840) Token!1206)

(declare-fun drop!217 (List!3840 Int) List!3840)

(declare-fun apply!774 (List!3840 Int) Token!1206)

(assert (=> b!271373 (= (head!888 (drop!217 lt!111887 0)) (apply!774 lt!111887 0))))

(declare-fun lt!111886 () Unit!4936)

(assert (=> b!271373 (= lt!111886 lt!111894)))

(declare-fun lt!111885 () List!3840)

(assert (=> b!271373 (= lt!111885 (list!1570 lt!111755))))

(declare-fun lt!111882 () Unit!4936)

(declare-fun lemmaDropTail!196 (List!3840 Int) Unit!4936)

(assert (=> b!271373 (= lt!111882 (lemmaDropTail!196 lt!111885 0))))

(declare-fun tail!478 (List!3840) List!3840)

(assert (=> b!271373 (= (tail!478 (drop!217 lt!111885 0)) (drop!217 lt!111885 (+ 0 1)))))

(declare-fun lt!111895 () Unit!4936)

(assert (=> b!271373 (= lt!111895 lt!111882)))

(declare-fun lt!111892 () Unit!4936)

(assert (=> b!271373 (= lt!111892 (forallContained!286 (list!1570 lt!111755) lambda!9192 (apply!773 lt!111755 0)))))

(assert (=> b!271373 (= lt!111891 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 (+ 0 1)))))

(assert (=> b!271373 (= lt!111884 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))

(declare-fun res!123921 () Bool)

(assert (=> b!271373 (= res!123921 ((_ is Some!812) lt!111884))))

(declare-fun e!168579 () Bool)

(assert (=> b!271373 (=> (not res!123921) (not e!168579))))

(assert (=> b!271373 (= c!51437 e!168579)))

(declare-fun b!271374 () Bool)

(assert (=> b!271374 (= e!168582 (<= 0 (size!3055 lt!111755)))))

(declare-fun b!271375 () Bool)

(assert (=> b!271375 (= e!168578 call!14853)))

(declare-fun b!271376 () Bool)

(assert (=> b!271376 (= e!168579 (= (_1!2363 (v!14681 lt!111884)) (apply!773 lt!111755 0)))))

(declare-fun b!271377 () Bool)

(assert (=> b!271377 (= c!51435 e!168581)))

(declare-fun res!123920 () Bool)

(assert (=> b!271377 (=> (not res!123920) (not e!168581))))

(assert (=> b!271377 (= res!123920 ((_ is Some!812) lt!111884))))

(assert (=> b!271377 (= e!168580 e!168577)))

(assert (= (and d!79043 res!123919) b!271374))

(assert (= (and d!79043 c!51436) b!271368))

(assert (= (and d!79043 (not c!51436)) b!271373))

(assert (= (and b!271373 res!123921) b!271376))

(assert (= (and b!271373 c!51437) b!271369))

(assert (= (and b!271373 (not c!51437)) b!271377))

(assert (= (and b!271377 res!123920) b!271372))

(assert (= (and b!271377 c!51435) b!271370))

(assert (= (and b!271377 (not c!51435)) b!271371))

(assert (= (or b!271370 b!271371) bm!14846))

(assert (= (or b!271370 b!271371) bm!14849))

(assert (= (or b!271369 bm!14846 b!271372) bm!14848))

(assert (= (or b!271369 bm!14849) bm!14847))

(assert (= (or b!271369 b!271370) bm!14845))

(assert (= (and bm!14845 c!51438) b!271375))

(assert (= (and bm!14845 (not c!51438)) b!271367))

(declare-fun m!343927 () Bool)

(assert (=> bm!14848 m!343927))

(declare-fun m!343929 () Bool)

(assert (=> bm!14847 m!343929))

(declare-fun m!343931 () Bool)

(assert (=> b!271374 m!343931))

(declare-fun m!343933 () Bool)

(assert (=> b!271370 m!343933))

(declare-fun m!343935 () Bool)

(assert (=> b!271373 m!343935))

(declare-fun m!343937 () Bool)

(assert (=> b!271373 m!343937))

(assert (=> b!271373 m!343845))

(declare-fun m!343939 () Bool)

(assert (=> b!271373 m!343939))

(assert (=> b!271373 m!343927))

(declare-fun m!343941 () Bool)

(assert (=> b!271373 m!343941))

(declare-fun m!343943 () Bool)

(assert (=> b!271373 m!343943))

(assert (=> b!271373 m!343845))

(assert (=> b!271373 m!343927))

(declare-fun m!343945 () Bool)

(assert (=> b!271373 m!343945))

(declare-fun m!343947 () Bool)

(assert (=> b!271373 m!343947))

(assert (=> b!271373 m!343941))

(declare-fun m!343949 () Bool)

(assert (=> b!271373 m!343949))

(declare-fun m!343951 () Bool)

(assert (=> b!271373 m!343951))

(assert (=> b!271373 m!343949))

(declare-fun m!343953 () Bool)

(assert (=> b!271373 m!343953))

(assert (=> b!271373 m!343951))

(declare-fun m!343955 () Bool)

(assert (=> b!271373 m!343955))

(assert (=> b!271373 m!343927))

(declare-fun m!343957 () Bool)

(assert (=> b!271373 m!343957))

(assert (=> b!271373 m!343947))

(declare-fun m!343959 () Bool)

(assert (=> b!271373 m!343959))

(assert (=> b!271376 m!343927))

(declare-fun m!343961 () Bool)

(assert (=> bm!14845 m!343961))

(declare-fun m!343963 () Bool)

(assert (=> b!271371 m!343963))

(declare-fun m!343965 () Bool)

(assert (=> b!271371 m!343965))

(declare-fun m!343967 () Bool)

(assert (=> b!271371 m!343967))

(declare-fun m!343969 () Bool)

(assert (=> b!271371 m!343969))

(assert (=> b!271371 m!343969))

(declare-fun m!343971 () Bool)

(assert (=> b!271371 m!343971))

(assert (=> b!271371 m!343963))

(assert (=> b!271371 m!343969))

(declare-fun m!343973 () Bool)

(assert (=> b!271371 m!343973))

(assert (=> b!271371 m!343965))

(declare-fun m!343975 () Bool)

(assert (=> b!271367 m!343975))

(assert (=> d!79043 m!343845))

(declare-fun m!343977 () Bool)

(assert (=> d!79043 m!343977))

(declare-fun m!343979 () Bool)

(assert (=> d!79043 m!343979))

(assert (=> d!79043 m!343845))

(assert (=> d!79043 m!343977))

(assert (=> d!79043 m!343977))

(declare-fun m!343981 () Bool)

(assert (=> d!79043 m!343981))

(assert (=> d!79043 m!343931))

(declare-fun m!343983 () Bool)

(assert (=> d!79043 m!343983))

(assert (=> b!271202 d!79043))

(declare-fun bs!30259 () Bool)

(declare-fun b!271466 () Bool)

(assert (= bs!30259 (and b!271466 b!271373)))

(declare-fun lambda!9200 () Int)

(assert (=> bs!30259 (= lambda!9200 lambda!9192)))

(declare-fun bs!30260 () Bool)

(assert (= bs!30260 (and b!271466 b!271207)))

(assert (=> bs!30260 (= lambda!9200 lambda!9172)))

(declare-fun bs!30261 () Bool)

(assert (= bs!30261 (and b!271466 d!79033)))

(assert (=> bs!30261 (= lambda!9200 lambda!9183)))

(declare-fun bs!30262 () Bool)

(assert (= bs!30262 (and b!271466 d!79043)))

(assert (=> bs!30262 (not (= lambda!9200 lambda!9191))))

(declare-fun bs!30263 () Bool)

(assert (= bs!30263 (and b!271466 b!271212)))

(assert (=> bs!30263 (not (= lambda!9200 lambda!9171))))

(declare-fun b!271472 () Bool)

(declare-fun e!168644 () Bool)

(assert (=> b!271472 (= e!168644 true)))

(declare-fun b!271471 () Bool)

(declare-fun e!168643 () Bool)

(assert (=> b!271471 (= e!168643 e!168644)))

(declare-fun b!271470 () Bool)

(declare-fun e!168642 () Bool)

(assert (=> b!271470 (= e!168642 e!168643)))

(assert (=> b!271466 e!168642))

(assert (= b!271471 b!271472))

(assert (= b!271470 b!271471))

(assert (= (and b!271466 ((_ is Cons!3829) rules!1920)) b!271470))

(assert (=> b!271472 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9200))))

(assert (=> b!271472 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9200))))

(assert (=> b!271466 true))

(declare-fun b!271462 () Bool)

(declare-fun e!168639 () List!3838)

(declare-fun call!14879 () List!3838)

(declare-fun lt!111947 () List!3838)

(assert (=> b!271462 (= e!168639 (++!1002 call!14879 lt!111947))))

(declare-fun b!271463 () Bool)

(declare-fun e!168641 () List!3838)

(assert (=> b!271463 (= e!168641 Nil!3828)))

(declare-fun d!79057 () Bool)

(declare-fun c!51463 () Bool)

(assert (=> d!79057 (= c!51463 ((_ is Cons!3830) tokens!465))))

(assert (=> d!79057 (= (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!168641)))

(declare-fun b!271464 () Bool)

(declare-fun e!168638 () List!3838)

(assert (=> b!271464 (= e!168638 call!14879)))

(declare-fun bm!14870 () Bool)

(declare-fun call!14876 () BalanceConc!2576)

(declare-fun call!14877 () BalanceConc!2576)

(assert (=> bm!14870 (= call!14876 call!14877)))

(declare-fun b!271465 () Bool)

(declare-fun c!51460 () Bool)

(declare-datatypes ((tuple2!4298 0))(
  ( (tuple2!4299 (_1!2365 Token!1206) (_2!2365 List!3838)) )
))
(declare-datatypes ((Option!815 0))(
  ( (None!814) (Some!814 (v!14689 tuple2!4298)) )
))
(declare-fun lt!111948 () Option!815)

(assert (=> b!271465 (= c!51460 (and ((_ is Some!814) lt!111948) (not (= (_1!2365 (v!14689 lt!111948)) (h!9227 tokens!465)))))))

(assert (=> b!271465 (= e!168638 e!168639)))

(assert (=> b!271466 (= e!168641 e!168638)))

(declare-fun lt!111946 () Unit!4936)

(assert (=> b!271466 (= lt!111946 (forallContained!286 tokens!465 lambda!9200 (h!9227 tokens!465)))))

(assert (=> b!271466 (= lt!111947 (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (t!38514 tokens!465) separatorToken!170))))

(declare-fun maxPrefix!335 (LexerInterface!617 List!3839 List!3838) Option!815)

(assert (=> b!271466 (= lt!111948 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947)))))

(declare-fun c!51462 () Bool)

(assert (=> b!271466 (= c!51462 (and ((_ is Some!814) lt!111948) (= (_1!2365 (v!14689 lt!111948)) (h!9227 tokens!465))))))

(declare-fun bm!14871 () Bool)

(declare-fun call!14878 () List!3838)

(declare-fun e!168640 () BalanceConc!2576)

(assert (=> bm!14871 (= call!14878 (list!1567 e!168640))))

(declare-fun c!51461 () Bool)

(assert (=> bm!14871 (= c!51461 c!51460)))

(declare-fun b!271467 () Bool)

(assert (=> b!271467 (= e!168640 call!14876)))

(declare-fun bm!14872 () Bool)

(assert (=> bm!14872 (= call!14877 (charsOf!376 (h!9227 tokens!465)))))

(declare-fun b!271468 () Bool)

(assert (=> b!271468 (= e!168639 Nil!3828)))

(assert (=> b!271468 (= (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))) (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!111945 () Unit!4936)

(declare-fun Unit!4948 () Unit!4936)

(assert (=> b!271468 (= lt!111945 Unit!4948)))

(declare-fun lt!111944 () Unit!4936)

(assert (=> b!271468 (= lt!111944 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 call!14878 lt!111947))))

(assert (=> b!271468 false))

(declare-fun lt!111943 () Unit!4936)

(declare-fun Unit!4949 () Unit!4936)

(assert (=> b!271468 (= lt!111943 Unit!4949)))

(declare-fun bm!14873 () Bool)

(declare-fun call!14875 () List!3838)

(assert (=> bm!14873 (= call!14879 (++!1002 call!14875 (ite c!51462 lt!111947 call!14878)))))

(declare-fun bm!14874 () Bool)

(assert (=> bm!14874 (= call!14875 (list!1567 (ite c!51462 call!14877 call!14876)))))

(declare-fun b!271469 () Bool)

(assert (=> b!271469 (= e!168640 (charsOf!376 separatorToken!170))))

(assert (= (and d!79057 c!51463) b!271466))

(assert (= (and d!79057 (not c!51463)) b!271463))

(assert (= (and b!271466 c!51462) b!271464))

(assert (= (and b!271466 (not c!51462)) b!271465))

(assert (= (and b!271465 c!51460) b!271462))

(assert (= (and b!271465 (not c!51460)) b!271468))

(assert (= (or b!271462 b!271468) bm!14870))

(assert (= (or b!271462 b!271468) bm!14871))

(assert (= (and bm!14871 c!51461) b!271469))

(assert (= (and bm!14871 (not c!51461)) b!271467))

(assert (= (or b!271464 bm!14870) bm!14872))

(assert (= (or b!271464 b!271462) bm!14874))

(assert (= (or b!271464 b!271462) bm!14873))

(assert (=> bm!14872 m!343757))

(assert (=> b!271468 m!343683))

(assert (=> b!271468 m!343683))

(declare-fun m!344151 () Bool)

(assert (=> b!271468 m!344151))

(assert (=> b!271468 m!343683))

(declare-fun m!344153 () Bool)

(assert (=> b!271468 m!344153))

(declare-fun m!344155 () Bool)

(assert (=> b!271468 m!344155))

(declare-fun m!344157 () Bool)

(assert (=> b!271462 m!344157))

(declare-fun m!344159 () Bool)

(assert (=> bm!14873 m!344159))

(declare-fun m!344161 () Bool)

(assert (=> bm!14871 m!344161))

(declare-fun m!344163 () Bool)

(assert (=> bm!14874 m!344163))

(assert (=> b!271469 m!343747))

(declare-fun m!344165 () Bool)

(assert (=> b!271466 m!344165))

(assert (=> b!271466 m!343767))

(declare-fun m!344167 () Bool)

(assert (=> b!271466 m!344167))

(assert (=> b!271466 m!343745))

(assert (=> b!271466 m!343757))

(assert (=> b!271466 m!344167))

(declare-fun m!344169 () Bool)

(assert (=> b!271466 m!344169))

(assert (=> b!271466 m!343757))

(assert (=> b!271466 m!343767))

(assert (=> b!271202 d!79057))

(declare-fun d!79089 () Bool)

(declare-fun lt!111961 () Bool)

(declare-fun e!168663 () Bool)

(assert (=> d!79089 (= lt!111961 e!168663)))

(declare-fun res!123968 () Bool)

(assert (=> d!79089 (=> (not res!123968) (not e!168663))))

(assert (=> d!79089 (= res!123968 (= (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170))))) (list!1570 (singletonSeq!277 separatorToken!170))))))

(declare-fun e!168662 () Bool)

(assert (=> d!79089 (= lt!111961 e!168662)))

(declare-fun res!123969 () Bool)

(assert (=> d!79089 (=> (not res!123969) (not e!168662))))

(declare-fun lt!111960 () tuple2!4292)

(assert (=> d!79089 (= res!123969 (= (size!3055 (_1!2362 lt!111960)) 1))))

(assert (=> d!79089 (= lt!111960 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170))))))

(assert (=> d!79089 (not (isEmpty!2429 rules!1920))))

(assert (=> d!79089 (= (rulesProduceIndividualToken!366 thiss!17480 rules!1920 separatorToken!170) lt!111961)))

(declare-fun b!271500 () Bool)

(declare-fun res!123967 () Bool)

(assert (=> b!271500 (=> (not res!123967) (not e!168662))))

(assert (=> b!271500 (= res!123967 (= (apply!773 (_1!2362 lt!111960) 0) separatorToken!170))))

(declare-fun b!271501 () Bool)

(declare-fun isEmpty!2434 (BalanceConc!2576) Bool)

(assert (=> b!271501 (= e!168662 (isEmpty!2434 (_2!2362 lt!111960)))))

(declare-fun b!271502 () Bool)

(assert (=> b!271502 (= e!168663 (isEmpty!2434 (_2!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170))))))))

(assert (= (and d!79089 res!123969) b!271500))

(assert (= (and b!271500 res!123967) b!271501))

(assert (= (and d!79089 res!123968) b!271502))

(declare-fun m!344209 () Bool)

(assert (=> d!79089 m!344209))

(declare-fun m!344211 () Bool)

(assert (=> d!79089 m!344211))

(declare-fun m!344213 () Bool)

(assert (=> d!79089 m!344213))

(assert (=> d!79089 m!344209))

(declare-fun m!344215 () Bool)

(assert (=> d!79089 m!344215))

(declare-fun m!344217 () Bool)

(assert (=> d!79089 m!344217))

(assert (=> d!79089 m!344209))

(assert (=> d!79089 m!344211))

(assert (=> d!79089 m!343713))

(declare-fun m!344219 () Bool)

(assert (=> d!79089 m!344219))

(declare-fun m!344221 () Bool)

(assert (=> b!271500 m!344221))

(declare-fun m!344223 () Bool)

(assert (=> b!271501 m!344223))

(assert (=> b!271502 m!344209))

(assert (=> b!271502 m!344209))

(assert (=> b!271502 m!344211))

(assert (=> b!271502 m!344211))

(assert (=> b!271502 m!344213))

(declare-fun m!344225 () Bool)

(assert (=> b!271502 m!344225))

(assert (=> b!271213 d!79089))

(declare-fun d!79105 () Bool)

(declare-fun res!123980 () Bool)

(declare-fun e!168674 () Bool)

(assert (=> d!79105 (=> res!123980 e!168674)))

(assert (=> d!79105 (= res!123980 ((_ is Nil!3830) tokens!465))))

(assert (=> d!79105 (= (forall!964 tokens!465 lambda!9171) e!168674)))

(declare-fun b!271513 () Bool)

(declare-fun e!168675 () Bool)

(assert (=> b!271513 (= e!168674 e!168675)))

(declare-fun res!123981 () Bool)

(assert (=> b!271513 (=> (not res!123981) (not e!168675))))

(declare-fun dynLambda!1973 (Int Token!1206) Bool)

(assert (=> b!271513 (= res!123981 (dynLambda!1973 lambda!9171 (h!9227 tokens!465)))))

(declare-fun b!271514 () Bool)

(assert (=> b!271514 (= e!168675 (forall!964 (t!38514 tokens!465) lambda!9171))))

(assert (= (and d!79105 (not res!123980)) b!271513))

(assert (= (and b!271513 res!123981) b!271514))

(declare-fun b_lambda!8643 () Bool)

(assert (=> (not b_lambda!8643) (not b!271513)))

(declare-fun m!344231 () Bool)

(assert (=> b!271513 m!344231))

(declare-fun m!344233 () Bool)

(assert (=> b!271514 m!344233))

(assert (=> b!271212 d!79105))

(declare-fun d!79109 () Bool)

(declare-fun lt!111964 () Bool)

(declare-fun isEmpty!2435 (List!3840) Bool)

(assert (=> d!79109 (= lt!111964 (isEmpty!2435 (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))))))

(declare-fun isEmpty!2436 (Conc!1285) Bool)

(assert (=> d!79109 (= lt!111964 (isEmpty!2436 (c!51396 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))))))

(assert (=> d!79109 (= (isEmpty!2430 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765)))) lt!111964)))

(declare-fun bs!30277 () Bool)

(assert (= bs!30277 d!79109))

(declare-fun m!344239 () Bool)

(assert (=> bs!30277 m!344239))

(assert (=> bs!30277 m!344239))

(declare-fun m!344241 () Bool)

(assert (=> bs!30277 m!344241))

(declare-fun m!344243 () Bool)

(assert (=> bs!30277 m!344243))

(assert (=> b!271191 d!79109))

(declare-fun b!271543 () Bool)

(declare-fun res!123996 () Bool)

(declare-fun e!168694 () Bool)

(assert (=> b!271543 (=> (not res!123996) (not e!168694))))

(declare-fun lt!111967 () tuple2!4292)

(declare-datatypes ((tuple2!4300 0))(
  ( (tuple2!4301 (_1!2366 List!3840) (_2!2366 List!3838)) )
))
(declare-fun lexList!208 (LexerInterface!617 List!3839 List!3838) tuple2!4300)

(assert (=> b!271543 (= res!123996 (= (list!1570 (_1!2362 lt!111967)) (_1!2366 (lexList!208 thiss!17480 rules!1920 (list!1567 (seqFromList!829 lt!111765))))))))

(declare-fun b!271544 () Bool)

(declare-fun e!168695 () Bool)

(assert (=> b!271544 (= e!168695 (= (_2!2362 lt!111967) (seqFromList!829 lt!111765)))))

(declare-fun b!271545 () Bool)

(assert (=> b!271545 (= e!168694 (= (list!1567 (_2!2362 lt!111967)) (_2!2366 (lexList!208 thiss!17480 rules!1920 (list!1567 (seqFromList!829 lt!111765))))))))

(declare-fun d!79113 () Bool)

(assert (=> d!79113 e!168694))

(declare-fun res!123994 () Bool)

(assert (=> d!79113 (=> (not res!123994) (not e!168694))))

(assert (=> d!79113 (= res!123994 e!168695)))

(declare-fun c!51475 () Bool)

(assert (=> d!79113 (= c!51475 (> (size!3055 (_1!2362 lt!111967)) 0))))

(declare-fun lexTailRecV2!175 (LexerInterface!617 List!3839 BalanceConc!2576 BalanceConc!2576 BalanceConc!2576 BalanceConc!2578) tuple2!4292)

(assert (=> d!79113 (= lt!111967 (lexTailRecV2!175 thiss!17480 rules!1920 (seqFromList!829 lt!111765) (BalanceConc!2577 Empty!1284) (seqFromList!829 lt!111765) (BalanceConc!2579 Empty!1285)))))

(assert (=> d!79113 (= (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765)) lt!111967)))

(declare-fun b!271546 () Bool)

(declare-fun e!168696 () Bool)

(assert (=> b!271546 (= e!168695 e!168696)))

(declare-fun res!123995 () Bool)

(declare-fun size!3056 (BalanceConc!2576) Int)

(assert (=> b!271546 (= res!123995 (< (size!3056 (_2!2362 lt!111967)) (size!3056 (seqFromList!829 lt!111765))))))

(assert (=> b!271546 (=> (not res!123995) (not e!168696))))

(declare-fun b!271547 () Bool)

(assert (=> b!271547 (= e!168696 (not (isEmpty!2430 (_1!2362 lt!111967))))))

(assert (= (and d!79113 c!51475) b!271546))

(assert (= (and d!79113 (not c!51475)) b!271544))

(assert (= (and b!271546 res!123995) b!271547))

(assert (= (and d!79113 res!123994) b!271543))

(assert (= (and b!271543 res!123996) b!271545))

(declare-fun m!344251 () Bool)

(assert (=> b!271546 m!344251))

(assert (=> b!271546 m!343673))

(declare-fun m!344253 () Bool)

(assert (=> b!271546 m!344253))

(declare-fun m!344255 () Bool)

(assert (=> b!271547 m!344255))

(declare-fun m!344257 () Bool)

(assert (=> b!271543 m!344257))

(assert (=> b!271543 m!343673))

(declare-fun m!344259 () Bool)

(assert (=> b!271543 m!344259))

(assert (=> b!271543 m!344259))

(declare-fun m!344261 () Bool)

(assert (=> b!271543 m!344261))

(declare-fun m!344263 () Bool)

(assert (=> d!79113 m!344263))

(assert (=> d!79113 m!343673))

(assert (=> d!79113 m!343673))

(declare-fun m!344265 () Bool)

(assert (=> d!79113 m!344265))

(declare-fun m!344267 () Bool)

(assert (=> b!271545 m!344267))

(assert (=> b!271545 m!343673))

(assert (=> b!271545 m!344259))

(assert (=> b!271545 m!344259))

(assert (=> b!271545 m!344261))

(assert (=> b!271191 d!79113))

(declare-fun d!79117 () Bool)

(declare-fun fromListB!321 (List!3838) BalanceConc!2576)

(assert (=> d!79117 (= (seqFromList!829 lt!111765) (fromListB!321 lt!111765))))

(declare-fun bs!30278 () Bool)

(assert (= bs!30278 d!79117))

(declare-fun m!344269 () Bool)

(assert (=> bs!30278 m!344269))

(assert (=> b!271191 d!79117))

(declare-fun d!79119 () Bool)

(assert (=> d!79119 (= (list!1567 (charsOf!376 separatorToken!170)) (list!1571 (c!51394 (charsOf!376 separatorToken!170))))))

(declare-fun bs!30279 () Bool)

(assert (= bs!30279 d!79119))

(declare-fun m!344271 () Bool)

(assert (=> bs!30279 m!344271))

(assert (=> b!271201 d!79119))

(declare-fun d!79121 () Bool)

(assert (=> d!79121 (= (list!1567 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0)) (list!1571 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!30280 () Bool)

(assert (= bs!30280 d!79121))

(declare-fun m!344273 () Bool)

(assert (=> bs!30280 m!344273))

(assert (=> b!271201 d!79121))

(declare-fun bs!30281 () Bool)

(declare-fun b!271552 () Bool)

(assert (= bs!30281 (and b!271552 b!271373)))

(declare-fun lambda!9204 () Int)

(assert (=> bs!30281 (= lambda!9204 lambda!9192)))

(declare-fun bs!30282 () Bool)

(assert (= bs!30282 (and b!271552 b!271207)))

(assert (=> bs!30282 (= lambda!9204 lambda!9172)))

(declare-fun bs!30283 () Bool)

(assert (= bs!30283 (and b!271552 b!271466)))

(assert (=> bs!30283 (= lambda!9204 lambda!9200)))

(declare-fun bs!30284 () Bool)

(assert (= bs!30284 (and b!271552 d!79033)))

(assert (=> bs!30284 (= lambda!9204 lambda!9183)))

(declare-fun bs!30285 () Bool)

(assert (= bs!30285 (and b!271552 d!79043)))

(assert (=> bs!30285 (not (= lambda!9204 lambda!9191))))

(declare-fun bs!30286 () Bool)

(assert (= bs!30286 (and b!271552 b!271212)))

(assert (=> bs!30286 (not (= lambda!9204 lambda!9171))))

(declare-fun b!271558 () Bool)

(declare-fun e!168703 () Bool)

(assert (=> b!271558 (= e!168703 true)))

(declare-fun b!271557 () Bool)

(declare-fun e!168702 () Bool)

(assert (=> b!271557 (= e!168702 e!168703)))

(declare-fun b!271556 () Bool)

(declare-fun e!168701 () Bool)

(assert (=> b!271556 (= e!168701 e!168702)))

(assert (=> b!271552 e!168701))

(assert (= b!271557 b!271558))

(assert (= b!271556 b!271557))

(assert (= (and b!271552 ((_ is Cons!3829) rules!1920)) b!271556))

(assert (=> b!271558 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9204))))

(assert (=> b!271558 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9204))))

(assert (=> b!271552 true))

(declare-fun b!271548 () Bool)

(declare-fun e!168698 () List!3838)

(declare-fun call!14884 () List!3838)

(declare-fun lt!111972 () List!3838)

(assert (=> b!271548 (= e!168698 (++!1002 call!14884 lt!111972))))

(declare-fun b!271549 () Bool)

(declare-fun e!168700 () List!3838)

(assert (=> b!271549 (= e!168700 Nil!3828)))

(declare-fun d!79123 () Bool)

(declare-fun c!51479 () Bool)

(assert (=> d!79123 (= c!51479 ((_ is Cons!3830) (t!38514 tokens!465)))))

(assert (=> d!79123 (= (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (t!38514 tokens!465) separatorToken!170) e!168700)))

(declare-fun b!271550 () Bool)

(declare-fun e!168697 () List!3838)

(assert (=> b!271550 (= e!168697 call!14884)))

(declare-fun bm!14875 () Bool)

(declare-fun call!14881 () BalanceConc!2576)

(declare-fun call!14882 () BalanceConc!2576)

(assert (=> bm!14875 (= call!14881 call!14882)))

(declare-fun b!271551 () Bool)

(declare-fun c!51476 () Bool)

(declare-fun lt!111973 () Option!815)

(assert (=> b!271551 (= c!51476 (and ((_ is Some!814) lt!111973) (not (= (_1!2365 (v!14689 lt!111973)) (h!9227 (t!38514 tokens!465))))))))

(assert (=> b!271551 (= e!168697 e!168698)))

(assert (=> b!271552 (= e!168700 e!168697)))

(declare-fun lt!111971 () Unit!4936)

(assert (=> b!271552 (= lt!111971 (forallContained!286 (t!38514 tokens!465) lambda!9204 (h!9227 (t!38514 tokens!465))))))

(assert (=> b!271552 (= lt!111972 (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (t!38514 (t!38514 tokens!465)) separatorToken!170))))

(assert (=> b!271552 (= lt!111973 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972)))))

(declare-fun c!51478 () Bool)

(assert (=> b!271552 (= c!51478 (and ((_ is Some!814) lt!111973) (= (_1!2365 (v!14689 lt!111973)) (h!9227 (t!38514 tokens!465)))))))

(declare-fun bm!14876 () Bool)

(declare-fun call!14883 () List!3838)

(declare-fun e!168699 () BalanceConc!2576)

(assert (=> bm!14876 (= call!14883 (list!1567 e!168699))))

(declare-fun c!51477 () Bool)

(assert (=> bm!14876 (= c!51477 c!51476)))

(declare-fun b!271553 () Bool)

(assert (=> b!271553 (= e!168699 call!14881)))

(declare-fun bm!14877 () Bool)

(assert (=> bm!14877 (= call!14882 (charsOf!376 (h!9227 (t!38514 tokens!465))))))

(declare-fun b!271554 () Bool)

(assert (=> b!271554 (= e!168698 Nil!3828)))

(assert (=> b!271554 (= (print!342 thiss!17480 (singletonSeq!277 (h!9227 (t!38514 tokens!465)))) (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 (t!38514 tokens!465))) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!111970 () Unit!4936)

(declare-fun Unit!4950 () Unit!4936)

(assert (=> b!271554 (= lt!111970 Unit!4950)))

(declare-fun lt!111969 () Unit!4936)

(assert (=> b!271554 (= lt!111969 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 call!14883 lt!111972))))

(assert (=> b!271554 false))

(declare-fun lt!111968 () Unit!4936)

(declare-fun Unit!4951 () Unit!4936)

(assert (=> b!271554 (= lt!111968 Unit!4951)))

(declare-fun call!14880 () List!3838)

(declare-fun bm!14878 () Bool)

(assert (=> bm!14878 (= call!14884 (++!1002 call!14880 (ite c!51478 lt!111972 call!14883)))))

(declare-fun bm!14879 () Bool)

(assert (=> bm!14879 (= call!14880 (list!1567 (ite c!51478 call!14882 call!14881)))))

(declare-fun b!271555 () Bool)

(assert (=> b!271555 (= e!168699 (charsOf!376 separatorToken!170))))

(assert (= (and d!79123 c!51479) b!271552))

(assert (= (and d!79123 (not c!51479)) b!271549))

(assert (= (and b!271552 c!51478) b!271550))

(assert (= (and b!271552 (not c!51478)) b!271551))

(assert (= (and b!271551 c!51476) b!271548))

(assert (= (and b!271551 (not c!51476)) b!271554))

(assert (= (or b!271548 b!271554) bm!14875))

(assert (= (or b!271548 b!271554) bm!14876))

(assert (= (and bm!14876 c!51477) b!271555))

(assert (= (and bm!14876 (not c!51477)) b!271553))

(assert (= (or b!271550 bm!14875) bm!14877))

(assert (= (or b!271550 b!271548) bm!14879))

(assert (= (or b!271550 b!271548) bm!14878))

(declare-fun m!344275 () Bool)

(assert (=> bm!14877 m!344275))

(declare-fun m!344277 () Bool)

(assert (=> b!271554 m!344277))

(assert (=> b!271554 m!344277))

(declare-fun m!344279 () Bool)

(assert (=> b!271554 m!344279))

(assert (=> b!271554 m!344277))

(declare-fun m!344281 () Bool)

(assert (=> b!271554 m!344281))

(declare-fun m!344283 () Bool)

(assert (=> b!271554 m!344283))

(declare-fun m!344285 () Bool)

(assert (=> b!271548 m!344285))

(declare-fun m!344287 () Bool)

(assert (=> bm!14878 m!344287))

(declare-fun m!344289 () Bool)

(assert (=> bm!14876 m!344289))

(declare-fun m!344291 () Bool)

(assert (=> bm!14879 m!344291))

(assert (=> b!271555 m!343747))

(declare-fun m!344293 () Bool)

(assert (=> b!271552 m!344293))

(declare-fun m!344295 () Bool)

(assert (=> b!271552 m!344295))

(declare-fun m!344297 () Bool)

(assert (=> b!271552 m!344297))

(declare-fun m!344299 () Bool)

(assert (=> b!271552 m!344299))

(assert (=> b!271552 m!344275))

(assert (=> b!271552 m!344297))

(declare-fun m!344301 () Bool)

(assert (=> b!271552 m!344301))

(assert (=> b!271552 m!344275))

(assert (=> b!271552 m!344295))

(assert (=> b!271201 d!79123))

(declare-fun d!79125 () Bool)

(declare-fun lt!111982 () BalanceConc!2576)

(assert (=> d!79125 (= (list!1567 lt!111982) (originalCharacters!774 separatorToken!170))))

(assert (=> d!79125 (= lt!111982 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))))

(assert (=> d!79125 (= (charsOf!376 separatorToken!170) lt!111982)))

(declare-fun b_lambda!8645 () Bool)

(assert (=> (not b_lambda!8645) (not d!79125)))

(declare-fun tb!15411 () Bool)

(declare-fun t!38556 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170)))) t!38556) tb!15411))

(declare-fun b!271572 () Bool)

(declare-fun e!168712 () Bool)

(declare-fun tp!102729 () Bool)

(assert (=> b!271572 (= e!168712 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))) tp!102729))))

(declare-fun result!19022 () Bool)

(assert (=> tb!15411 (= result!19022 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))) e!168712))))

(assert (= tb!15411 b!271572))

(declare-fun m!344317 () Bool)

(assert (=> b!271572 m!344317))

(declare-fun m!344319 () Bool)

(assert (=> tb!15411 m!344319))

(assert (=> d!79125 t!38556))

(declare-fun b_and!21689 () Bool)

(assert (= b_and!21665 (and (=> t!38556 result!19022) b_and!21689)))

(declare-fun t!38558 () Bool)

(declare-fun tb!15413 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170)))) t!38558) tb!15413))

(declare-fun result!19024 () Bool)

(assert (= result!19024 result!19022))

(assert (=> d!79125 t!38558))

(declare-fun b_and!21691 () Bool)

(assert (= b_and!21667 (and (=> t!38558 result!19024) b_and!21691)))

(declare-fun t!38560 () Bool)

(declare-fun tb!15415 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170)))) t!38560) tb!15415))

(declare-fun result!19026 () Bool)

(assert (= result!19026 result!19022))

(assert (=> d!79125 t!38560))

(declare-fun b_and!21693 () Bool)

(assert (= b_and!21669 (and (=> t!38560 result!19026) b_and!21693)))

(declare-fun m!344325 () Bool)

(assert (=> d!79125 m!344325))

(declare-fun m!344327 () Bool)

(assert (=> d!79125 m!344327))

(assert (=> b!271201 d!79125))

(declare-fun e!168723 () Bool)

(declare-fun b!271591 () Bool)

(declare-fun lt!111988 () List!3838)

(assert (=> b!271591 (= e!168723 (or (not (= lt!111759 Nil!3828)) (= lt!111988 (++!1002 lt!111765 lt!111756))))))

(declare-fun e!168724 () List!3838)

(declare-fun b!271589 () Bool)

(assert (=> b!271589 (= e!168724 (Cons!3828 (h!9225 (++!1002 lt!111765 lt!111756)) (++!1002 (t!38512 (++!1002 lt!111765 lt!111756)) lt!111759)))))

(declare-fun d!79131 () Bool)

(assert (=> d!79131 e!168723))

(declare-fun res!124020 () Bool)

(assert (=> d!79131 (=> (not res!124020) (not e!168723))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!551 (List!3838) (InoxSet C!2832))

(assert (=> d!79131 (= res!124020 (= (content!551 lt!111988) ((_ map or) (content!551 (++!1002 lt!111765 lt!111756)) (content!551 lt!111759))))))

(assert (=> d!79131 (= lt!111988 e!168724)))

(declare-fun c!51483 () Bool)

(assert (=> d!79131 (= c!51483 ((_ is Nil!3828) (++!1002 lt!111765 lt!111756)))))

(assert (=> d!79131 (= (++!1002 (++!1002 lt!111765 lt!111756) lt!111759) lt!111988)))

(declare-fun b!271590 () Bool)

(declare-fun res!124019 () Bool)

(assert (=> b!271590 (=> (not res!124019) (not e!168723))))

(assert (=> b!271590 (= res!124019 (= (size!3053 lt!111988) (+ (size!3053 (++!1002 lt!111765 lt!111756)) (size!3053 lt!111759))))))

(declare-fun b!271588 () Bool)

(assert (=> b!271588 (= e!168724 lt!111759)))

(assert (= (and d!79131 c!51483) b!271588))

(assert (= (and d!79131 (not c!51483)) b!271589))

(assert (= (and d!79131 res!124020) b!271590))

(assert (= (and b!271590 res!124019) b!271591))

(declare-fun m!344355 () Bool)

(assert (=> b!271589 m!344355))

(declare-fun m!344357 () Bool)

(assert (=> d!79131 m!344357))

(assert (=> d!79131 m!343751))

(declare-fun m!344359 () Bool)

(assert (=> d!79131 m!344359))

(declare-fun m!344361 () Bool)

(assert (=> d!79131 m!344361))

(declare-fun m!344363 () Bool)

(assert (=> b!271590 m!344363))

(assert (=> b!271590 m!343751))

(declare-fun m!344365 () Bool)

(assert (=> b!271590 m!344365))

(declare-fun m!344367 () Bool)

(assert (=> b!271590 m!344367))

(assert (=> b!271201 d!79131))

(declare-fun lt!111989 () List!3838)

(declare-fun e!168725 () Bool)

(declare-fun b!271596 () Bool)

(assert (=> b!271596 (= e!168725 (or (not (= lt!111759 Nil!3828)) (= lt!111989 lt!111756)))))

(declare-fun b!271593 () Bool)

(declare-fun e!168726 () List!3838)

(assert (=> b!271593 (= e!168726 (Cons!3828 (h!9225 lt!111756) (++!1002 (t!38512 lt!111756) lt!111759)))))

(declare-fun d!79141 () Bool)

(assert (=> d!79141 e!168725))

(declare-fun res!124022 () Bool)

(assert (=> d!79141 (=> (not res!124022) (not e!168725))))

(assert (=> d!79141 (= res!124022 (= (content!551 lt!111989) ((_ map or) (content!551 lt!111756) (content!551 lt!111759))))))

(assert (=> d!79141 (= lt!111989 e!168726)))

(declare-fun c!51484 () Bool)

(assert (=> d!79141 (= c!51484 ((_ is Nil!3828) lt!111756))))

(assert (=> d!79141 (= (++!1002 lt!111756 lt!111759) lt!111989)))

(declare-fun b!271594 () Bool)

(declare-fun res!124021 () Bool)

(assert (=> b!271594 (=> (not res!124021) (not e!168725))))

(assert (=> b!271594 (= res!124021 (= (size!3053 lt!111989) (+ (size!3053 lt!111756) (size!3053 lt!111759))))))

(declare-fun b!271592 () Bool)

(assert (=> b!271592 (= e!168726 lt!111759)))

(assert (= (and d!79141 c!51484) b!271592))

(assert (= (and d!79141 (not c!51484)) b!271593))

(assert (= (and d!79141 res!124022) b!271594))

(assert (= (and b!271594 res!124021) b!271596))

(declare-fun m!344371 () Bool)

(assert (=> b!271593 m!344371))

(declare-fun m!344373 () Bool)

(assert (=> d!79141 m!344373))

(declare-fun m!344375 () Bool)

(assert (=> d!79141 m!344375))

(assert (=> d!79141 m!344361))

(declare-fun m!344377 () Bool)

(assert (=> b!271594 m!344377))

(declare-fun m!344379 () Bool)

(assert (=> b!271594 m!344379))

(assert (=> b!271594 m!344367))

(assert (=> b!271201 d!79141))

(declare-fun d!79145 () Bool)

(declare-fun lt!111990 () BalanceConc!2576)

(assert (=> d!79145 (= (list!1567 lt!111990) (originalCharacters!774 (h!9227 tokens!465)))))

(assert (=> d!79145 (= lt!111990 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))))

(assert (=> d!79145 (= (charsOf!376 (h!9227 tokens!465)) lt!111990)))

(declare-fun b_lambda!8649 () Bool)

(assert (=> (not b_lambda!8649) (not d!79145)))

(assert (=> d!79145 t!38516))

(declare-fun b_and!21701 () Bool)

(assert (= b_and!21689 (and (=> t!38516 result!19000) b_and!21701)))

(assert (=> d!79145 t!38518))

(declare-fun b_and!21703 () Bool)

(assert (= b_and!21691 (and (=> t!38518 result!19004) b_and!21703)))

(assert (=> d!79145 t!38520))

(declare-fun b_and!21705 () Bool)

(assert (= b_and!21693 (and (=> t!38520 result!19006) b_and!21705)))

(declare-fun m!344387 () Bool)

(assert (=> d!79145 m!344387))

(assert (=> d!79145 m!343779))

(assert (=> b!271201 d!79145))

(declare-fun d!79149 () Bool)

(assert (=> d!79149 (= (seqFromList!830 (t!38514 tokens!465)) (fromListB!319 (t!38514 tokens!465)))))

(declare-fun bs!30287 () Bool)

(assert (= bs!30287 d!79149))

(declare-fun m!344389 () Bool)

(assert (=> bs!30287 m!344389))

(assert (=> b!271201 d!79149))

(declare-fun lt!111991 () List!3838)

(declare-fun e!168728 () Bool)

(declare-fun b!271601 () Bool)

(assert (=> b!271601 (= e!168728 (or (not (= lt!111756 Nil!3828)) (= lt!111991 lt!111765)))))

(declare-fun b!271599 () Bool)

(declare-fun e!168729 () List!3838)

(assert (=> b!271599 (= e!168729 (Cons!3828 (h!9225 lt!111765) (++!1002 (t!38512 lt!111765) lt!111756)))))

(declare-fun d!79151 () Bool)

(assert (=> d!79151 e!168728))

(declare-fun res!124026 () Bool)

(assert (=> d!79151 (=> (not res!124026) (not e!168728))))

(assert (=> d!79151 (= res!124026 (= (content!551 lt!111991) ((_ map or) (content!551 lt!111765) (content!551 lt!111756))))))

(assert (=> d!79151 (= lt!111991 e!168729)))

(declare-fun c!51485 () Bool)

(assert (=> d!79151 (= c!51485 ((_ is Nil!3828) lt!111765))))

(assert (=> d!79151 (= (++!1002 lt!111765 lt!111756) lt!111991)))

(declare-fun b!271600 () Bool)

(declare-fun res!124025 () Bool)

(assert (=> b!271600 (=> (not res!124025) (not e!168728))))

(assert (=> b!271600 (= res!124025 (= (size!3053 lt!111991) (+ (size!3053 lt!111765) (size!3053 lt!111756))))))

(declare-fun b!271598 () Bool)

(assert (=> b!271598 (= e!168729 lt!111756)))

(assert (= (and d!79151 c!51485) b!271598))

(assert (= (and d!79151 (not c!51485)) b!271599))

(assert (= (and d!79151 res!124026) b!271600))

(assert (= (and b!271600 res!124025) b!271601))

(declare-fun m!344391 () Bool)

(assert (=> b!271599 m!344391))

(declare-fun m!344393 () Bool)

(assert (=> d!79151 m!344393))

(declare-fun m!344395 () Bool)

(assert (=> d!79151 m!344395))

(assert (=> d!79151 m!344375))

(declare-fun m!344397 () Bool)

(assert (=> b!271600 m!344397))

(declare-fun m!344399 () Bool)

(assert (=> b!271600 m!344399))

(assert (=> b!271600 m!344379))

(assert (=> b!271201 d!79151))

(declare-fun b!271605 () Bool)

(declare-fun lt!111992 () List!3838)

(declare-fun e!168730 () Bool)

(assert (=> b!271605 (= e!168730 (or (not (= lt!111762 Nil!3828)) (= lt!111992 lt!111765)))))

(declare-fun b!271603 () Bool)

(declare-fun e!168731 () List!3838)

(assert (=> b!271603 (= e!168731 (Cons!3828 (h!9225 lt!111765) (++!1002 (t!38512 lt!111765) lt!111762)))))

(declare-fun d!79153 () Bool)

(assert (=> d!79153 e!168730))

(declare-fun res!124028 () Bool)

(assert (=> d!79153 (=> (not res!124028) (not e!168730))))

(assert (=> d!79153 (= res!124028 (= (content!551 lt!111992) ((_ map or) (content!551 lt!111765) (content!551 lt!111762))))))

(assert (=> d!79153 (= lt!111992 e!168731)))

(declare-fun c!51486 () Bool)

(assert (=> d!79153 (= c!51486 ((_ is Nil!3828) lt!111765))))

(assert (=> d!79153 (= (++!1002 lt!111765 lt!111762) lt!111992)))

(declare-fun b!271604 () Bool)

(declare-fun res!124027 () Bool)

(assert (=> b!271604 (=> (not res!124027) (not e!168730))))

(assert (=> b!271604 (= res!124027 (= (size!3053 lt!111992) (+ (size!3053 lt!111765) (size!3053 lt!111762))))))

(declare-fun b!271602 () Bool)

(assert (=> b!271602 (= e!168731 lt!111762)))

(assert (= (and d!79153 c!51486) b!271602))

(assert (= (and d!79153 (not c!51486)) b!271603))

(assert (= (and d!79153 res!124028) b!271604))

(assert (= (and b!271604 res!124027) b!271605))

(declare-fun m!344401 () Bool)

(assert (=> b!271603 m!344401))

(declare-fun m!344403 () Bool)

(assert (=> d!79153 m!344403))

(assert (=> d!79153 m!344395))

(declare-fun m!344405 () Bool)

(assert (=> d!79153 m!344405))

(declare-fun m!344407 () Bool)

(assert (=> b!271604 m!344407))

(assert (=> b!271604 m!344399))

(declare-fun m!344409 () Bool)

(assert (=> b!271604 m!344409))

(assert (=> b!271201 d!79153))

(declare-fun bs!30288 () Bool)

(declare-fun d!79155 () Bool)

(assert (= bs!30288 (and d!79155 b!271373)))

(declare-fun lambda!9205 () Int)

(assert (=> bs!30288 (not (= lambda!9205 lambda!9192))))

(declare-fun bs!30289 () Bool)

(assert (= bs!30289 (and d!79155 b!271552)))

(assert (=> bs!30289 (not (= lambda!9205 lambda!9204))))

(declare-fun bs!30290 () Bool)

(assert (= bs!30290 (and d!79155 b!271207)))

(assert (=> bs!30290 (not (= lambda!9205 lambda!9172))))

(declare-fun bs!30291 () Bool)

(assert (= bs!30291 (and d!79155 b!271466)))

(assert (=> bs!30291 (not (= lambda!9205 lambda!9200))))

(declare-fun bs!30292 () Bool)

(assert (= bs!30292 (and d!79155 d!79033)))

(assert (=> bs!30292 (not (= lambda!9205 lambda!9183))))

(declare-fun bs!30293 () Bool)

(assert (= bs!30293 (and d!79155 d!79043)))

(assert (=> bs!30293 (= lambda!9205 lambda!9191)))

(declare-fun bs!30294 () Bool)

(assert (= bs!30294 (and d!79155 b!271212)))

(assert (=> bs!30294 (= lambda!9205 lambda!9171)))

(declare-fun bs!30295 () Bool)

(declare-fun b!271612 () Bool)

(assert (= bs!30295 (and b!271612 b!271373)))

(declare-fun lambda!9206 () Int)

(assert (=> bs!30295 (= lambda!9206 lambda!9192)))

(declare-fun bs!30296 () Bool)

(assert (= bs!30296 (and b!271612 b!271552)))

(assert (=> bs!30296 (= lambda!9206 lambda!9204)))

(declare-fun bs!30297 () Bool)

(assert (= bs!30297 (and b!271612 b!271207)))

(assert (=> bs!30297 (= lambda!9206 lambda!9172)))

(declare-fun bs!30298 () Bool)

(assert (= bs!30298 (and b!271612 b!271466)))

(assert (=> bs!30298 (= lambda!9206 lambda!9200)))

(declare-fun bs!30299 () Bool)

(assert (= bs!30299 (and b!271612 d!79155)))

(assert (=> bs!30299 (not (= lambda!9206 lambda!9205))))

(declare-fun bs!30300 () Bool)

(assert (= bs!30300 (and b!271612 d!79033)))

(assert (=> bs!30300 (= lambda!9206 lambda!9183)))

(declare-fun bs!30301 () Bool)

(assert (= bs!30301 (and b!271612 d!79043)))

(assert (=> bs!30301 (not (= lambda!9206 lambda!9191))))

(declare-fun bs!30302 () Bool)

(assert (= bs!30302 (and b!271612 b!271212)))

(assert (=> bs!30302 (not (= lambda!9206 lambda!9171))))

(declare-fun b!271619 () Bool)

(declare-fun e!168741 () Bool)

(assert (=> b!271619 (= e!168741 true)))

(declare-fun b!271618 () Bool)

(declare-fun e!168740 () Bool)

(assert (=> b!271618 (= e!168740 e!168741)))

(declare-fun b!271617 () Bool)

(declare-fun e!168739 () Bool)

(assert (=> b!271617 (= e!168739 e!168740)))

(assert (=> b!271612 e!168739))

(assert (= b!271618 b!271619))

(assert (= b!271617 b!271618))

(assert (= (and b!271612 ((_ is Cons!3829) rules!1920)) b!271617))

(assert (=> b!271619 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9206))))

(assert (=> b!271619 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9206))))

(assert (=> b!271612 true))

(declare-fun bm!14880 () Bool)

(declare-fun c!51490 () Bool)

(declare-fun c!51489 () Bool)

(assert (=> bm!14880 (= c!51490 c!51489)))

(declare-fun lt!112002 () BalanceConc!2576)

(declare-fun e!168733 () BalanceConc!2576)

(declare-fun call!14889 () BalanceConc!2576)

(declare-fun call!14886 () BalanceConc!2576)

(assert (=> bm!14880 (= call!14886 (++!1004 e!168733 (ite c!51489 lt!112002 call!14889)))))

(declare-fun b!271606 () Bool)

(declare-fun call!14887 () Token!1206)

(assert (=> b!271606 (= e!168733 (charsOf!376 call!14887))))

(declare-fun lt!112000 () BalanceConc!2576)

(assert (=> d!79155 (= (list!1567 lt!112000) (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0) separatorToken!170))))

(declare-fun e!168738 () BalanceConc!2576)

(assert (=> d!79155 (= lt!112000 e!168738)))

(declare-fun c!51488 () Bool)

(assert (=> d!79155 (= c!51488 (>= 0 (size!3055 (seqFromList!830 (t!38514 tokens!465)))))))

(declare-fun lt!112004 () Unit!4936)

(assert (=> d!79155 (= lt!112004 (lemmaContentSubsetPreservesForall!108 (list!1570 (seqFromList!830 (t!38514 tokens!465))) (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0) lambda!9205))))

(declare-fun e!168737 () Bool)

(assert (=> d!79155 e!168737))

(declare-fun res!124029 () Bool)

(assert (=> d!79155 (=> (not res!124029) (not e!168737))))

(assert (=> d!79155 (= res!124029 (>= 0 0))))

(assert (=> d!79155 (= (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0) lt!112000)))

(declare-fun b!271607 () Bool)

(assert (=> b!271607 (= e!168738 (BalanceConc!2577 Empty!1284))))

(declare-fun b!271608 () Bool)

(declare-fun e!168735 () BalanceConc!2576)

(assert (=> b!271608 (= e!168735 call!14886)))

(declare-fun b!271609 () Bool)

(declare-fun e!168732 () BalanceConc!2576)

(assert (=> b!271609 (= e!168732 (++!1004 call!14886 lt!112002))))

(declare-fun bm!14881 () Bool)

(declare-fun call!14885 () Token!1206)

(assert (=> bm!14881 (= call!14887 call!14885)))

(declare-fun b!271610 () Bool)

(assert (=> b!271610 (= e!168732 (BalanceConc!2577 Empty!1284))))

(assert (=> b!271610 (= (print!342 thiss!17480 (singletonSeq!277 call!14887)) (printTailRec!305 thiss!17480 (singletonSeq!277 call!14887) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!111999 () Unit!4936)

(declare-fun Unit!4952 () Unit!4936)

(assert (=> b!271610 (= lt!111999 Unit!4952)))

(declare-fun lt!112001 () Unit!4936)

(assert (=> b!271610 (= lt!112001 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 (list!1567 call!14889) (list!1567 lt!112002)))))

(assert (=> b!271610 false))

(declare-fun lt!111994 () Unit!4936)

(declare-fun Unit!4953 () Unit!4936)

(assert (=> b!271610 (= lt!111994 Unit!4953)))

(declare-fun c!51487 () Bool)

(declare-fun call!14888 () BalanceConc!2576)

(declare-fun bm!14882 () Bool)

(assert (=> bm!14882 (= call!14888 (charsOf!376 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887))))))

(declare-fun b!271611 () Bool)

(declare-fun e!168736 () Bool)

(declare-fun lt!111995 () Option!813)

(assert (=> b!271611 (= e!168736 (not (= (_1!2363 (v!14681 lt!111995)) call!14885)))))

(declare-fun bm!14883 () Bool)

(assert (=> bm!14883 (= call!14885 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))

(declare-fun bm!14884 () Bool)

(assert (=> bm!14884 (= call!14889 call!14888)))

(assert (=> b!271612 (= e!168738 e!168735)))

(declare-fun lt!111998 () List!3840)

(assert (=> b!271612 (= lt!111998 (list!1570 (seqFromList!830 (t!38514 tokens!465))))))

(declare-fun lt!112005 () Unit!4936)

(assert (=> b!271612 (= lt!112005 (lemmaDropApply!204 lt!111998 0))))

(assert (=> b!271612 (= (head!888 (drop!217 lt!111998 0)) (apply!774 lt!111998 0))))

(declare-fun lt!111997 () Unit!4936)

(assert (=> b!271612 (= lt!111997 lt!112005)))

(declare-fun lt!111996 () List!3840)

(assert (=> b!271612 (= lt!111996 (list!1570 (seqFromList!830 (t!38514 tokens!465))))))

(declare-fun lt!111993 () Unit!4936)

(assert (=> b!271612 (= lt!111993 (lemmaDropTail!196 lt!111996 0))))

(assert (=> b!271612 (= (tail!478 (drop!217 lt!111996 0)) (drop!217 lt!111996 (+ 0 1)))))

(declare-fun lt!112006 () Unit!4936)

(assert (=> b!271612 (= lt!112006 lt!111993)))

(declare-fun lt!112003 () Unit!4936)

(assert (=> b!271612 (= lt!112003 (forallContained!286 (list!1570 (seqFromList!830 (t!38514 tokens!465))) lambda!9206 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))))

(assert (=> b!271612 (= lt!112002 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!271612 (= lt!111995 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))

(declare-fun res!124031 () Bool)

(assert (=> b!271612 (= res!124031 ((_ is Some!812) lt!111995))))

(declare-fun e!168734 () Bool)

(assert (=> b!271612 (=> (not res!124031) (not e!168734))))

(assert (=> b!271612 (= c!51489 e!168734)))

(declare-fun b!271613 () Bool)

(assert (=> b!271613 (= e!168737 (<= 0 (size!3055 (seqFromList!830 (t!38514 tokens!465)))))))

(declare-fun b!271614 () Bool)

(assert (=> b!271614 (= e!168733 call!14888)))

(declare-fun b!271615 () Bool)

(assert (=> b!271615 (= e!168734 (= (_1!2363 (v!14681 lt!111995)) (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))))

(declare-fun b!271616 () Bool)

(assert (=> b!271616 (= c!51487 e!168736)))

(declare-fun res!124030 () Bool)

(assert (=> b!271616 (=> (not res!124030) (not e!168736))))

(assert (=> b!271616 (= res!124030 ((_ is Some!812) lt!111995))))

(assert (=> b!271616 (= e!168735 e!168732)))

(assert (= (and d!79155 res!124029) b!271613))

(assert (= (and d!79155 c!51488) b!271607))

(assert (= (and d!79155 (not c!51488)) b!271612))

(assert (= (and b!271612 res!124031) b!271615))

(assert (= (and b!271612 c!51489) b!271608))

(assert (= (and b!271612 (not c!51489)) b!271616))

(assert (= (and b!271616 res!124030) b!271611))

(assert (= (and b!271616 c!51487) b!271609))

(assert (= (and b!271616 (not c!51487)) b!271610))

(assert (= (or b!271609 b!271610) bm!14881))

(assert (= (or b!271609 b!271610) bm!14884))

(assert (= (or b!271608 bm!14881 b!271611) bm!14883))

(assert (= (or b!271608 bm!14884) bm!14882))

(assert (= (or b!271608 b!271609) bm!14880))

(assert (= (and bm!14880 c!51490) b!271614))

(assert (= (and bm!14880 (not c!51490)) b!271606))

(assert (=> bm!14883 m!343753))

(declare-fun m!344411 () Bool)

(assert (=> bm!14883 m!344411))

(declare-fun m!344413 () Bool)

(assert (=> bm!14882 m!344413))

(assert (=> b!271613 m!343753))

(declare-fun m!344415 () Bool)

(assert (=> b!271613 m!344415))

(declare-fun m!344417 () Bool)

(assert (=> b!271609 m!344417))

(declare-fun m!344419 () Bool)

(assert (=> b!271612 m!344419))

(assert (=> b!271612 m!343753))

(declare-fun m!344421 () Bool)

(assert (=> b!271612 m!344421))

(assert (=> b!271612 m!343753))

(declare-fun m!344423 () Bool)

(assert (=> b!271612 m!344423))

(declare-fun m!344425 () Bool)

(assert (=> b!271612 m!344425))

(assert (=> b!271612 m!344411))

(declare-fun m!344427 () Bool)

(assert (=> b!271612 m!344427))

(declare-fun m!344429 () Bool)

(assert (=> b!271612 m!344429))

(assert (=> b!271612 m!344423))

(assert (=> b!271612 m!344411))

(declare-fun m!344431 () Bool)

(assert (=> b!271612 m!344431))

(declare-fun m!344433 () Bool)

(assert (=> b!271612 m!344433))

(assert (=> b!271612 m!344427))

(declare-fun m!344435 () Bool)

(assert (=> b!271612 m!344435))

(declare-fun m!344437 () Bool)

(assert (=> b!271612 m!344437))

(assert (=> b!271612 m!344435))

(declare-fun m!344439 () Bool)

(assert (=> b!271612 m!344439))

(assert (=> b!271612 m!344437))

(declare-fun m!344441 () Bool)

(assert (=> b!271612 m!344441))

(assert (=> b!271612 m!343753))

(assert (=> b!271612 m!344411))

(declare-fun m!344443 () Bool)

(assert (=> b!271612 m!344443))

(assert (=> b!271612 m!344433))

(declare-fun m!344445 () Bool)

(assert (=> b!271612 m!344445))

(assert (=> b!271615 m!343753))

(assert (=> b!271615 m!344411))

(declare-fun m!344447 () Bool)

(assert (=> bm!14880 m!344447))

(declare-fun m!344449 () Bool)

(assert (=> b!271610 m!344449))

(declare-fun m!344451 () Bool)

(assert (=> b!271610 m!344451))

(declare-fun m!344453 () Bool)

(assert (=> b!271610 m!344453))

(declare-fun m!344455 () Bool)

(assert (=> b!271610 m!344455))

(assert (=> b!271610 m!344455))

(declare-fun m!344457 () Bool)

(assert (=> b!271610 m!344457))

(assert (=> b!271610 m!344449))

(assert (=> b!271610 m!344455))

(declare-fun m!344459 () Bool)

(assert (=> b!271610 m!344459))

(assert (=> b!271610 m!344451))

(declare-fun m!344461 () Bool)

(assert (=> b!271606 m!344461))

(assert (=> d!79155 m!344423))

(declare-fun m!344463 () Bool)

(assert (=> d!79155 m!344463))

(declare-fun m!344465 () Bool)

(assert (=> d!79155 m!344465))

(assert (=> d!79155 m!343753))

(assert (=> d!79155 m!344423))

(assert (=> d!79155 m!343753))

(assert (=> d!79155 m!344463))

(assert (=> d!79155 m!344463))

(declare-fun m!344467 () Bool)

(assert (=> d!79155 m!344467))

(assert (=> d!79155 m!343753))

(assert (=> d!79155 m!344415))

(declare-fun m!344469 () Bool)

(assert (=> d!79155 m!344469))

(assert (=> b!271201 d!79155))

(declare-fun d!79157 () Bool)

(assert (=> d!79157 (= (list!1567 (charsOf!376 (h!9227 tokens!465))) (list!1571 (c!51394 (charsOf!376 (h!9227 tokens!465)))))))

(declare-fun bs!30303 () Bool)

(assert (= bs!30303 d!79157))

(declare-fun m!344471 () Bool)

(assert (=> bs!30303 m!344471))

(assert (=> b!271201 d!79157))

(declare-fun d!79159 () Bool)

(assert (=> d!79159 (= (++!1002 (++!1002 lt!111765 lt!111756) lt!111759) (++!1002 lt!111765 (++!1002 lt!111756 lt!111759)))))

(declare-fun lt!112009 () Unit!4936)

(declare-fun choose!2460 (List!3838 List!3838 List!3838) Unit!4936)

(assert (=> d!79159 (= lt!112009 (choose!2460 lt!111765 lt!111756 lt!111759))))

(assert (=> d!79159 (= (lemmaConcatAssociativity!430 lt!111765 lt!111756 lt!111759) lt!112009)))

(declare-fun bs!30304 () Bool)

(assert (= bs!30304 d!79159))

(assert (=> bs!30304 m!343763))

(assert (=> bs!30304 m!343751))

(assert (=> bs!30304 m!343763))

(declare-fun m!344473 () Bool)

(assert (=> bs!30304 m!344473))

(assert (=> bs!30304 m!343751))

(assert (=> bs!30304 m!343759))

(declare-fun m!344475 () Bool)

(assert (=> bs!30304 m!344475))

(assert (=> b!271201 d!79159))

(declare-fun d!79161 () Bool)

(assert (=> d!79161 (= (inv!4735 (tag!941 (h!9226 rules!1920))) (= (mod (str.len (value!25148 (tag!941 (h!9226 rules!1920)))) 2) 0))))

(assert (=> b!271200 d!79161))

(declare-fun d!79163 () Bool)

(declare-fun res!124034 () Bool)

(declare-fun e!168744 () Bool)

(assert (=> d!79163 (=> (not res!124034) (not e!168744))))

(declare-fun semiInverseModEq!259 (Int Int) Bool)

(assert (=> d!79163 (= res!124034 (semiInverseModEq!259 (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toValue!1470 (transformation!731 (h!9226 rules!1920)))))))

(assert (=> d!79163 (= (inv!4738 (transformation!731 (h!9226 rules!1920))) e!168744)))

(declare-fun b!271622 () Bool)

(declare-fun equivClasses!242 (Int Int) Bool)

(assert (=> b!271622 (= e!168744 (equivClasses!242 (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toValue!1470 (transformation!731 (h!9226 rules!1920)))))))

(assert (= (and d!79163 res!124034) b!271622))

(declare-fun m!344477 () Bool)

(assert (=> d!79163 m!344477))

(declare-fun m!344479 () Bool)

(assert (=> b!271622 m!344479))

(assert (=> b!271200 d!79163))

(declare-fun d!79165 () Bool)

(declare-fun lt!112011 () Bool)

(declare-fun e!168746 () Bool)

(assert (=> d!79165 (= lt!112011 e!168746)))

(declare-fun res!124036 () Bool)

(assert (=> d!79165 (=> (not res!124036) (not e!168746))))

(assert (=> d!79165 (= res!124036 (= (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)))))) (list!1570 (singletonSeq!277 (h!9227 tokens!465)))))))

(declare-fun e!168745 () Bool)

(assert (=> d!79165 (= lt!112011 e!168745)))

(declare-fun res!124037 () Bool)

(assert (=> d!79165 (=> (not res!124037) (not e!168745))))

(declare-fun lt!112010 () tuple2!4292)

(assert (=> d!79165 (= res!124037 (= (size!3055 (_1!2362 lt!112010)) 1))))

(assert (=> d!79165 (= lt!112010 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)))))))

(assert (=> d!79165 (not (isEmpty!2429 rules!1920))))

(assert (=> d!79165 (= (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (h!9227 tokens!465)) lt!112011)))

(declare-fun b!271623 () Bool)

(declare-fun res!124035 () Bool)

(assert (=> b!271623 (=> (not res!124035) (not e!168745))))

(assert (=> b!271623 (= res!124035 (= (apply!773 (_1!2362 lt!112010) 0) (h!9227 tokens!465)))))

(declare-fun b!271624 () Bool)

(assert (=> b!271624 (= e!168745 (isEmpty!2434 (_2!2362 lt!112010)))))

(declare-fun b!271625 () Bool)

(assert (=> b!271625 (= e!168746 (isEmpty!2434 (_2!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)))))))))

(assert (= (and d!79165 res!124037) b!271623))

(assert (= (and b!271623 res!124035) b!271624))

(assert (= (and d!79165 res!124036) b!271625))

(assert (=> d!79165 m!343683))

(assert (=> d!79165 m!344151))

(declare-fun m!344481 () Bool)

(assert (=> d!79165 m!344481))

(assert (=> d!79165 m!343683))

(declare-fun m!344483 () Bool)

(assert (=> d!79165 m!344483))

(declare-fun m!344485 () Bool)

(assert (=> d!79165 m!344485))

(assert (=> d!79165 m!343683))

(assert (=> d!79165 m!344151))

(assert (=> d!79165 m!343713))

(declare-fun m!344487 () Bool)

(assert (=> d!79165 m!344487))

(declare-fun m!344489 () Bool)

(assert (=> b!271623 m!344489))

(declare-fun m!344491 () Bool)

(assert (=> b!271624 m!344491))

(assert (=> b!271625 m!343683))

(assert (=> b!271625 m!343683))

(assert (=> b!271625 m!344151))

(assert (=> b!271625 m!344151))

(assert (=> b!271625 m!344481))

(declare-fun m!344493 () Bool)

(assert (=> b!271625 m!344493))

(assert (=> b!271194 d!79165))

(declare-fun b!271626 () Bool)

(declare-fun e!168749 () Bool)

(assert (=> b!271626 (= e!168749 (inv!17 (value!25149 separatorToken!170)))))

(declare-fun b!271627 () Bool)

(declare-fun e!168747 () Bool)

(assert (=> b!271627 (= e!168747 (inv!15 (value!25149 separatorToken!170)))))

(declare-fun b!271628 () Bool)

(declare-fun e!168748 () Bool)

(assert (=> b!271628 (= e!168748 (inv!16 (value!25149 separatorToken!170)))))

(declare-fun b!271629 () Bool)

(assert (=> b!271629 (= e!168748 e!168749)))

(declare-fun c!51491 () Bool)

(assert (=> b!271629 (= c!51491 ((_ is IntegerValue!2260) (value!25149 separatorToken!170)))))

(declare-fun d!79167 () Bool)

(declare-fun c!51492 () Bool)

(assert (=> d!79167 (= c!51492 ((_ is IntegerValue!2259) (value!25149 separatorToken!170)))))

(assert (=> d!79167 (= (inv!21 (value!25149 separatorToken!170)) e!168748)))

(declare-fun b!271630 () Bool)

(declare-fun res!124038 () Bool)

(assert (=> b!271630 (=> res!124038 e!168747)))

(assert (=> b!271630 (= res!124038 (not ((_ is IntegerValue!2261) (value!25149 separatorToken!170))))))

(assert (=> b!271630 (= e!168749 e!168747)))

(assert (= (and d!79167 c!51492) b!271628))

(assert (= (and d!79167 (not c!51492)) b!271629))

(assert (= (and b!271629 c!51491) b!271626))

(assert (= (and b!271629 (not c!51491)) b!271630))

(assert (= (and b!271630 (not res!124038)) b!271627))

(declare-fun m!344495 () Bool)

(assert (=> b!271626 m!344495))

(declare-fun m!344497 () Bool)

(assert (=> b!271627 m!344497))

(declare-fun m!344499 () Bool)

(assert (=> b!271628 m!344499))

(assert (=> b!271205 d!79167))

(declare-fun d!79169 () Bool)

(assert (=> d!79169 (= (inv!4735 (tag!941 (rule!1316 separatorToken!170))) (= (mod (str.len (value!25148 (tag!941 (rule!1316 separatorToken!170)))) 2) 0))))

(assert (=> b!271204 d!79169))

(declare-fun d!79171 () Bool)

(declare-fun res!124041 () Bool)

(declare-fun e!168752 () Bool)

(assert (=> d!79171 (=> (not res!124041) (not e!168752))))

(assert (=> d!79171 (= res!124041 (semiInverseModEq!259 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toValue!1470 (transformation!731 (rule!1316 separatorToken!170)))))))

(assert (=> d!79171 (= (inv!4738 (transformation!731 (rule!1316 separatorToken!170))) e!168752)))

(declare-fun b!271635 () Bool)

(assert (=> b!271635 (= e!168752 (equivClasses!242 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toValue!1470 (transformation!731 (rule!1316 separatorToken!170)))))))

(assert (= (and d!79171 res!124041) b!271635))

(declare-fun m!344501 () Bool)

(assert (=> d!79171 m!344501))

(declare-fun m!344503 () Bool)

(assert (=> b!271635 m!344503))

(assert (=> b!271204 d!79171))

(declare-fun d!79173 () Bool)

(declare-fun res!124044 () Bool)

(declare-fun e!168757 () Bool)

(assert (=> d!79173 (=> (not res!124044) (not e!168757))))

(declare-fun rulesValid!225 (LexerInterface!617 List!3839) Bool)

(assert (=> d!79173 (= res!124044 (rulesValid!225 thiss!17480 rules!1920))))

(assert (=> d!79173 (= (rulesInvariant!583 thiss!17480 rules!1920) e!168757)))

(declare-fun b!271640 () Bool)

(declare-datatypes ((List!3842 0))(
  ( (Nil!3832) (Cons!3832 (h!9229 String!4845) (t!38580 List!3842)) )
))
(declare-fun noDuplicateTag!225 (LexerInterface!617 List!3839 List!3842) Bool)

(assert (=> b!271640 (= e!168757 (noDuplicateTag!225 thiss!17480 rules!1920 Nil!3832))))

(assert (= (and d!79173 res!124044) b!271640))

(declare-fun m!344505 () Bool)

(assert (=> d!79173 m!344505))

(declare-fun m!344507 () Bool)

(assert (=> b!271640 m!344507))

(assert (=> b!271215 d!79173))

(declare-fun d!79175 () Bool)

(assert (=> d!79175 (= (inv!4735 (tag!941 (rule!1316 (h!9227 tokens!465)))) (= (mod (str.len (value!25148 (tag!941 (rule!1316 (h!9227 tokens!465))))) 2) 0))))

(assert (=> b!271193 d!79175))

(declare-fun d!79177 () Bool)

(declare-fun res!124045 () Bool)

(declare-fun e!168758 () Bool)

(assert (=> d!79177 (=> (not res!124045) (not e!168758))))

(assert (=> d!79177 (= res!124045 (semiInverseModEq!259 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465))))))))

(assert (=> d!79177 (= (inv!4738 (transformation!731 (rule!1316 (h!9227 tokens!465)))) e!168758)))

(declare-fun b!271641 () Bool)

(assert (=> b!271641 (= e!168758 (equivClasses!242 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465))))))))

(assert (= (and d!79177 res!124045) b!271641))

(declare-fun m!344509 () Bool)

(assert (=> d!79177 m!344509))

(declare-fun m!344511 () Bool)

(assert (=> b!271641 m!344511))

(assert (=> b!271193 d!79177))

(declare-fun d!79179 () Bool)

(assert (=> d!79179 (= (list!1567 lt!111758) (list!1571 (c!51394 lt!111758)))))

(declare-fun bs!30305 () Bool)

(assert (= bs!30305 d!79179))

(declare-fun m!344513 () Bool)

(assert (=> bs!30305 m!344513))

(assert (=> b!271203 d!79179))

(declare-fun d!79181 () Bool)

(declare-fun lt!112057 () BalanceConc!2576)

(declare-fun printListTailRec!130 (LexerInterface!617 List!3840 List!3838) List!3838)

(assert (=> d!79181 (= (list!1567 lt!112057) (printListTailRec!130 thiss!17480 (dropList!164 lt!111761 0) (list!1567 (BalanceConc!2577 Empty!1284))))))

(declare-fun e!168772 () BalanceConc!2576)

(assert (=> d!79181 (= lt!112057 e!168772)))

(declare-fun c!51501 () Bool)

(assert (=> d!79181 (= c!51501 (>= 0 (size!3055 lt!111761)))))

(declare-fun e!168773 () Bool)

(assert (=> d!79181 e!168773))

(declare-fun res!124053 () Bool)

(assert (=> d!79181 (=> (not res!124053) (not e!168773))))

(assert (=> d!79181 (= res!124053 (>= 0 0))))

(assert (=> d!79181 (= (printTailRec!305 thiss!17480 lt!111761 0 (BalanceConc!2577 Empty!1284)) lt!112057)))

(declare-fun b!271661 () Bool)

(assert (=> b!271661 (= e!168773 (<= 0 (size!3055 lt!111761)))))

(declare-fun b!271662 () Bool)

(assert (=> b!271662 (= e!168772 (BalanceConc!2577 Empty!1284))))

(declare-fun b!271663 () Bool)

(assert (=> b!271663 (= e!168772 (printTailRec!305 thiss!17480 lt!111761 (+ 0 1) (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 lt!111761 0)))))))

(declare-fun lt!112059 () List!3840)

(assert (=> b!271663 (= lt!112059 (list!1570 lt!111761))))

(declare-fun lt!112058 () Unit!4936)

(assert (=> b!271663 (= lt!112058 (lemmaDropApply!204 lt!112059 0))))

(assert (=> b!271663 (= (head!888 (drop!217 lt!112059 0)) (apply!774 lt!112059 0))))

(declare-fun lt!112056 () Unit!4936)

(assert (=> b!271663 (= lt!112056 lt!112058)))

(declare-fun lt!112054 () List!3840)

(assert (=> b!271663 (= lt!112054 (list!1570 lt!111761))))

(declare-fun lt!112055 () Unit!4936)

(assert (=> b!271663 (= lt!112055 (lemmaDropTail!196 lt!112054 0))))

(assert (=> b!271663 (= (tail!478 (drop!217 lt!112054 0)) (drop!217 lt!112054 (+ 0 1)))))

(declare-fun lt!112053 () Unit!4936)

(assert (=> b!271663 (= lt!112053 lt!112055)))

(assert (= (and d!79181 res!124053) b!271661))

(assert (= (and d!79181 c!51501) b!271662))

(assert (= (and d!79181 (not c!51501)) b!271663))

(declare-fun m!344581 () Bool)

(assert (=> d!79181 m!344581))

(declare-fun m!344583 () Bool)

(assert (=> d!79181 m!344583))

(declare-fun m!344585 () Bool)

(assert (=> d!79181 m!344585))

(assert (=> d!79181 m!344585))

(assert (=> d!79181 m!344581))

(declare-fun m!344587 () Bool)

(assert (=> d!79181 m!344587))

(declare-fun m!344589 () Bool)

(assert (=> d!79181 m!344589))

(assert (=> b!271661 m!344583))

(declare-fun m!344591 () Bool)

(assert (=> b!271663 m!344591))

(declare-fun m!344593 () Bool)

(assert (=> b!271663 m!344593))

(declare-fun m!344595 () Bool)

(assert (=> b!271663 m!344595))

(assert (=> b!271663 m!344591))

(declare-fun m!344597 () Bool)

(assert (=> b!271663 m!344597))

(declare-fun m!344599 () Bool)

(assert (=> b!271663 m!344599))

(declare-fun m!344601 () Bool)

(assert (=> b!271663 m!344601))

(assert (=> b!271663 m!344601))

(declare-fun m!344603 () Bool)

(assert (=> b!271663 m!344603))

(declare-fun m!344605 () Bool)

(assert (=> b!271663 m!344605))

(declare-fun m!344607 () Bool)

(assert (=> b!271663 m!344607))

(declare-fun m!344609 () Bool)

(assert (=> b!271663 m!344609))

(declare-fun m!344611 () Bool)

(assert (=> b!271663 m!344611))

(declare-fun m!344613 () Bool)

(assert (=> b!271663 m!344613))

(assert (=> b!271663 m!344597))

(assert (=> b!271663 m!344593))

(assert (=> b!271663 m!344611))

(declare-fun m!344615 () Bool)

(assert (=> b!271663 m!344615))

(assert (=> b!271203 d!79181))

(declare-fun d!79197 () Bool)

(declare-fun lt!112062 () BalanceConc!2576)

(assert (=> d!79197 (= (list!1567 lt!112062) (printList!293 thiss!17480 (list!1570 lt!111761)))))

(assert (=> d!79197 (= lt!112062 (printTailRec!305 thiss!17480 lt!111761 0 (BalanceConc!2577 Empty!1284)))))

(assert (=> d!79197 (= (print!342 thiss!17480 lt!111761) lt!112062)))

(declare-fun bs!30310 () Bool)

(assert (= bs!30310 d!79197))

(declare-fun m!344629 () Bool)

(assert (=> bs!30310 m!344629))

(assert (=> bs!30310 m!344599))

(assert (=> bs!30310 m!344599))

(declare-fun m!344631 () Bool)

(assert (=> bs!30310 m!344631))

(assert (=> bs!30310 m!343681))

(assert (=> b!271203 d!79197))

(declare-fun d!79203 () Bool)

(declare-fun e!168821 () Bool)

(assert (=> d!79203 e!168821))

(declare-fun res!124057 () Bool)

(assert (=> d!79203 (=> (not res!124057) (not e!168821))))

(declare-fun lt!112065 () BalanceConc!2578)

(assert (=> d!79203 (= res!124057 (= (list!1570 lt!112065) (Cons!3830 (h!9227 tokens!465) Nil!3830)))))

(declare-fun singleton!114 (Token!1206) BalanceConc!2578)

(assert (=> d!79203 (= lt!112065 (singleton!114 (h!9227 tokens!465)))))

(assert (=> d!79203 (= (singletonSeq!277 (h!9227 tokens!465)) lt!112065)))

(declare-fun b!271727 () Bool)

(declare-fun isBalanced!353 (Conc!1285) Bool)

(assert (=> b!271727 (= e!168821 (isBalanced!353 (c!51396 lt!112065)))))

(assert (= (and d!79203 res!124057) b!271727))

(declare-fun m!344633 () Bool)

(assert (=> d!79203 m!344633))

(declare-fun m!344635 () Bool)

(assert (=> d!79203 m!344635))

(declare-fun m!344637 () Bool)

(assert (=> b!271727 m!344637))

(assert (=> b!271203 d!79203))

(declare-fun d!79205 () Bool)

(declare-fun c!51506 () Bool)

(assert (=> d!79205 (= c!51506 ((_ is Cons!3830) (Cons!3830 (h!9227 tokens!465) Nil!3830)))))

(declare-fun e!168824 () List!3838)

(assert (=> d!79205 (= (printList!293 thiss!17480 (Cons!3830 (h!9227 tokens!465) Nil!3830)) e!168824)))

(declare-fun b!271732 () Bool)

(assert (=> b!271732 (= e!168824 (++!1002 (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))) (printList!293 thiss!17480 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))))

(declare-fun b!271733 () Bool)

(assert (=> b!271733 (= e!168824 Nil!3828)))

(assert (= (and d!79205 c!51506) b!271732))

(assert (= (and d!79205 (not c!51506)) b!271733))

(declare-fun m!344639 () Bool)

(assert (=> b!271732 m!344639))

(assert (=> b!271732 m!344639))

(declare-fun m!344641 () Bool)

(assert (=> b!271732 m!344641))

(declare-fun m!344643 () Bool)

(assert (=> b!271732 m!344643))

(assert (=> b!271732 m!344641))

(assert (=> b!271732 m!344643))

(declare-fun m!344645 () Bool)

(assert (=> b!271732 m!344645))

(assert (=> b!271203 d!79205))

(declare-fun d!79207 () Bool)

(declare-fun res!124062 () Bool)

(declare-fun e!168829 () Bool)

(assert (=> d!79207 (=> res!124062 e!168829)))

(assert (=> d!79207 (= res!124062 (not ((_ is Cons!3829) rules!1920)))))

(assert (=> d!79207 (= (sepAndNonSepRulesDisjointChars!320 rules!1920 rules!1920) e!168829)))

(declare-fun b!271738 () Bool)

(declare-fun e!168830 () Bool)

(assert (=> b!271738 (= e!168829 e!168830)))

(declare-fun res!124063 () Bool)

(assert (=> b!271738 (=> (not res!124063) (not e!168830))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!118 (Rule!1262 List!3839) Bool)

(assert (=> b!271738 (= res!124063 (ruleDisjointCharsFromAllFromOtherType!118 (h!9226 rules!1920) rules!1920))))

(declare-fun b!271739 () Bool)

(assert (=> b!271739 (= e!168830 (sepAndNonSepRulesDisjointChars!320 rules!1920 (t!38513 rules!1920)))))

(assert (= (and d!79207 (not res!124062)) b!271738))

(assert (= (and b!271738 res!124063) b!271739))

(declare-fun m!344647 () Bool)

(assert (=> b!271738 m!344647))

(declare-fun m!344649 () Bool)

(assert (=> b!271739 m!344649))

(assert (=> b!271197 d!79207))

(declare-fun d!79209 () Bool)

(declare-fun res!124064 () Bool)

(declare-fun e!168831 () Bool)

(assert (=> d!79209 (=> (not res!124064) (not e!168831))))

(assert (=> d!79209 (= res!124064 (not (isEmpty!2432 (originalCharacters!774 separatorToken!170))))))

(assert (=> d!79209 (= (inv!4739 separatorToken!170) e!168831)))

(declare-fun b!271740 () Bool)

(declare-fun res!124065 () Bool)

(assert (=> b!271740 (=> (not res!124065) (not e!168831))))

(assert (=> b!271740 (= res!124065 (= (originalCharacters!774 separatorToken!170) (list!1567 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))))))

(declare-fun b!271741 () Bool)

(assert (=> b!271741 (= e!168831 (= (size!3051 separatorToken!170) (size!3053 (originalCharacters!774 separatorToken!170))))))

(assert (= (and d!79209 res!124064) b!271740))

(assert (= (and b!271740 res!124065) b!271741))

(declare-fun b_lambda!8663 () Bool)

(assert (=> (not b_lambda!8663) (not b!271740)))

(assert (=> b!271740 t!38556))

(declare-fun b_and!21715 () Bool)

(assert (= b_and!21701 (and (=> t!38556 result!19022) b_and!21715)))

(assert (=> b!271740 t!38558))

(declare-fun b_and!21717 () Bool)

(assert (= b_and!21703 (and (=> t!38558 result!19024) b_and!21717)))

(assert (=> b!271740 t!38560))

(declare-fun b_and!21719 () Bool)

(assert (= b_and!21705 (and (=> t!38560 result!19026) b_and!21719)))

(declare-fun m!344651 () Bool)

(assert (=> d!79209 m!344651))

(assert (=> b!271740 m!344327))

(assert (=> b!271740 m!344327))

(declare-fun m!344653 () Bool)

(assert (=> b!271740 m!344653))

(declare-fun m!344655 () Bool)

(assert (=> b!271741 m!344655))

(assert (=> start!29134 d!79209))

(declare-fun d!79211 () Bool)

(assert (=> d!79211 (= (list!1567 (seqFromList!829 lt!111752)) (list!1571 (c!51394 (seqFromList!829 lt!111752))))))

(declare-fun bs!30311 () Bool)

(assert (= bs!30311 d!79211))

(declare-fun m!344657 () Bool)

(assert (=> bs!30311 m!344657))

(assert (=> b!271196 d!79211))

(declare-fun d!79213 () Bool)

(assert (=> d!79213 (= (seqFromList!829 lt!111752) (fromListB!321 lt!111752))))

(declare-fun bs!30312 () Bool)

(assert (= bs!30312 d!79213))

(declare-fun m!344659 () Bool)

(assert (=> bs!30312 m!344659))

(assert (=> b!271196 d!79213))

(declare-fun d!79215 () Bool)

(declare-fun isEmpty!2440 (Option!813) Bool)

(assert (=> d!79215 (= (isDefined!656 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))) (not (isEmpty!2440 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))

(declare-fun bs!30313 () Bool)

(assert (= bs!30313 d!79215))

(assert (=> bs!30313 m!343717))

(declare-fun m!344661 () Bool)

(assert (=> bs!30313 m!344661))

(assert (=> b!271207 d!79215))

(declare-fun d!79217 () Bool)

(declare-fun e!168846 () Bool)

(assert (=> d!79217 e!168846))

(declare-fun res!124082 () Bool)

(assert (=> d!79217 (=> (not res!124082) (not e!168846))))

(declare-fun lt!112086 () Option!813)

(declare-fun isDefined!658 (Option!815) Bool)

(declare-fun maxPrefixZipper!113 (LexerInterface!617 List!3839 List!3838) Option!815)

(assert (=> d!79217 (= res!124082 (= (isDefined!656 lt!112086) (isDefined!658 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))))

(declare-fun e!168848 () Option!813)

(assert (=> d!79217 (= lt!112086 e!168848)))

(declare-fun c!51509 () Bool)

(assert (=> d!79217 (= c!51509 (and ((_ is Cons!3829) rules!1920) ((_ is Nil!3829) (t!38513 rules!1920))))))

(declare-fun lt!112081 () Unit!4936)

(declare-fun lt!112084 () Unit!4936)

(assert (=> d!79217 (= lt!112081 lt!112084)))

(declare-fun lt!112080 () List!3838)

(declare-fun lt!112085 () List!3838)

(declare-fun isPrefix!399 (List!3838 List!3838) Bool)

(assert (=> d!79217 (isPrefix!399 lt!112080 lt!112085)))

(declare-fun lemmaIsPrefixRefl!209 (List!3838 List!3838) Unit!4936)

(assert (=> d!79217 (= lt!112084 (lemmaIsPrefixRefl!209 lt!112080 lt!112085))))

(assert (=> d!79217 (= lt!112085 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (=> d!79217 (= lt!112080 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(declare-fun rulesValidInductive!204 (LexerInterface!617 List!3839) Bool)

(assert (=> d!79217 (rulesValidInductive!204 thiss!17480 rules!1920)))

(assert (=> d!79217 (= (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))) lt!112086)))

(declare-fun b!271758 () Bool)

(declare-fun e!168844 () Bool)

(declare-fun e!168847 () Bool)

(assert (=> b!271758 (= e!168844 e!168847)))

(declare-fun res!124080 () Bool)

(assert (=> b!271758 (=> (not res!124080) (not e!168847))))

(declare-fun get!1270 (Option!813) tuple2!4294)

(declare-fun get!1271 (Option!815) tuple2!4298)

(assert (=> b!271758 (= res!124080 (= (_1!2363 (get!1270 lt!112086)) (_1!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!271759 () Bool)

(declare-fun res!124079 () Bool)

(assert (=> b!271759 (=> (not res!124079) (not e!168846))))

(declare-fun e!168849 () Bool)

(assert (=> b!271759 (= res!124079 e!168849)))

(declare-fun res!124083 () Bool)

(assert (=> b!271759 (=> res!124083 e!168849)))

(assert (=> b!271759 (= res!124083 (not (isDefined!656 lt!112086)))))

(declare-fun b!271760 () Bool)

(declare-fun e!168845 () Bool)

(assert (=> b!271760 (= e!168849 e!168845)))

(declare-fun res!124081 () Bool)

(assert (=> b!271760 (=> (not res!124081) (not e!168845))))

(assert (=> b!271760 (= res!124081 (= (_1!2363 (get!1270 lt!112086)) (_1!2365 (get!1271 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!271761 () Bool)

(declare-fun lt!112083 () Option!813)

(declare-fun lt!112082 () Option!813)

(assert (=> b!271761 (= e!168848 (ite (and ((_ is None!812) lt!112083) ((_ is None!812) lt!112082)) None!812 (ite ((_ is None!812) lt!112082) lt!112083 (ite ((_ is None!812) lt!112083) lt!112082 (ite (>= (size!3051 (_1!2363 (v!14681 lt!112083))) (size!3051 (_1!2363 (v!14681 lt!112082)))) lt!112083 lt!112082)))))))

(declare-fun call!14892 () Option!813)

(assert (=> b!271761 (= lt!112083 call!14892)))

(assert (=> b!271761 (= lt!112082 (maxPrefixZipperSequence!298 thiss!17480 (t!38513 rules!1920) (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(declare-fun b!271762 () Bool)

(assert (=> b!271762 (= e!168846 e!168844)))

(declare-fun res!124078 () Bool)

(assert (=> b!271762 (=> res!124078 e!168844)))

(assert (=> b!271762 (= res!124078 (not (isDefined!656 lt!112086)))))

(declare-fun bm!14887 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!114 (LexerInterface!617 Rule!1262 BalanceConc!2576) Option!813)

(assert (=> bm!14887 (= call!14892 (maxPrefixOneRuleZipperSequence!114 thiss!17480 (h!9226 rules!1920) (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(declare-fun b!271763 () Bool)

(assert (=> b!271763 (= e!168847 (= (list!1567 (_2!2363 (get!1270 lt!112086))) (_2!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!271764 () Bool)

(assert (=> b!271764 (= e!168845 (= (list!1567 (_2!2363 (get!1270 lt!112086))) (_2!2365 (get!1271 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!271765 () Bool)

(assert (=> b!271765 (= e!168848 call!14892)))

(assert (= (and d!79217 c!51509) b!271765))

(assert (= (and d!79217 (not c!51509)) b!271761))

(assert (= (or b!271765 b!271761) bm!14887))

(assert (= (and d!79217 res!124082) b!271759))

(assert (= (and b!271759 (not res!124083)) b!271760))

(assert (= (and b!271760 res!124081) b!271764))

(assert (= (and b!271759 res!124079) b!271762))

(assert (= (and b!271762 (not res!124078)) b!271758))

(assert (= (and b!271758 res!124080) b!271763))

(assert (=> bm!14887 m!343715))

(declare-fun m!344663 () Bool)

(assert (=> bm!14887 m!344663))

(declare-fun m!344665 () Bool)

(assert (=> b!271762 m!344665))

(assert (=> d!79217 m!344665))

(declare-fun m!344667 () Bool)

(assert (=> d!79217 m!344667))

(declare-fun m!344669 () Bool)

(assert (=> d!79217 m!344669))

(declare-fun m!344671 () Bool)

(assert (=> d!79217 m!344671))

(declare-fun m!344673 () Bool)

(assert (=> d!79217 m!344673))

(declare-fun m!344675 () Bool)

(assert (=> d!79217 m!344675))

(declare-fun m!344677 () Bool)

(assert (=> d!79217 m!344677))

(assert (=> d!79217 m!344669))

(assert (=> d!79217 m!343715))

(assert (=> d!79217 m!344677))

(declare-fun m!344679 () Bool)

(assert (=> b!271760 m!344679))

(assert (=> b!271760 m!343715))

(assert (=> b!271760 m!344677))

(assert (=> b!271760 m!344677))

(assert (=> b!271760 m!344669))

(assert (=> b!271760 m!344669))

(declare-fun m!344681 () Bool)

(assert (=> b!271760 m!344681))

(assert (=> b!271764 m!344679))

(assert (=> b!271764 m!344669))

(assert (=> b!271764 m!344681))

(declare-fun m!344683 () Bool)

(assert (=> b!271764 m!344683))

(assert (=> b!271764 m!344677))

(assert (=> b!271764 m!344669))

(assert (=> b!271764 m!343715))

(assert (=> b!271764 m!344677))

(assert (=> b!271763 m!344679))

(assert (=> b!271763 m!343715))

(assert (=> b!271763 m!344677))

(assert (=> b!271763 m!344683))

(declare-fun m!344685 () Bool)

(assert (=> b!271763 m!344685))

(declare-fun m!344687 () Bool)

(assert (=> b!271763 m!344687))

(assert (=> b!271763 m!344677))

(assert (=> b!271763 m!344685))

(assert (=> b!271761 m!343715))

(declare-fun m!344689 () Bool)

(assert (=> b!271761 m!344689))

(assert (=> b!271759 m!344665))

(assert (=> b!271758 m!344679))

(assert (=> b!271758 m!343715))

(assert (=> b!271758 m!344677))

(assert (=> b!271758 m!344677))

(assert (=> b!271758 m!344685))

(assert (=> b!271758 m!344685))

(assert (=> b!271758 m!344687))

(assert (=> b!271207 d!79217))

(declare-fun d!79219 () Bool)

(assert (=> d!79219 (= (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))) (fromListB!321 (originalCharacters!774 (h!9227 tokens!465))))))

(declare-fun bs!30314 () Bool)

(assert (= bs!30314 d!79219))

(declare-fun m!344691 () Bool)

(assert (=> bs!30314 m!344691))

(assert (=> b!271207 d!79219))

(declare-fun d!79221 () Bool)

(assert (=> d!79221 (dynLambda!1973 lambda!9172 (h!9227 tokens!465))))

(declare-fun lt!112089 () Unit!4936)

(declare-fun choose!2461 (List!3840 Int Token!1206) Unit!4936)

(assert (=> d!79221 (= lt!112089 (choose!2461 tokens!465 lambda!9172 (h!9227 tokens!465)))))

(declare-fun e!168852 () Bool)

(assert (=> d!79221 e!168852))

(declare-fun res!124086 () Bool)

(assert (=> d!79221 (=> (not res!124086) (not e!168852))))

(assert (=> d!79221 (= res!124086 (forall!964 tokens!465 lambda!9172))))

(assert (=> d!79221 (= (forallContained!286 tokens!465 lambda!9172 (h!9227 tokens!465)) lt!112089)))

(declare-fun b!271768 () Bool)

(declare-fun contains!723 (List!3840 Token!1206) Bool)

(assert (=> b!271768 (= e!168852 (contains!723 tokens!465 (h!9227 tokens!465)))))

(assert (= (and d!79221 res!124086) b!271768))

(declare-fun b_lambda!8665 () Bool)

(assert (=> (not b_lambda!8665) (not d!79221)))

(declare-fun m!344693 () Bool)

(assert (=> d!79221 m!344693))

(declare-fun m!344695 () Bool)

(assert (=> d!79221 m!344695))

(declare-fun m!344697 () Bool)

(assert (=> d!79221 m!344697))

(declare-fun m!344699 () Bool)

(assert (=> b!271768 m!344699))

(assert (=> b!271207 d!79221))

(declare-fun b!271772 () Bool)

(declare-fun e!168853 () Bool)

(declare-fun lt!112090 () List!3838)

(assert (=> b!271772 (= e!168853 (or (not (= lt!111759 Nil!3828)) (= lt!112090 lt!111765)))))

(declare-fun b!271770 () Bool)

(declare-fun e!168854 () List!3838)

(assert (=> b!271770 (= e!168854 (Cons!3828 (h!9225 lt!111765) (++!1002 (t!38512 lt!111765) lt!111759)))))

(declare-fun d!79223 () Bool)

(assert (=> d!79223 e!168853))

(declare-fun res!124088 () Bool)

(assert (=> d!79223 (=> (not res!124088) (not e!168853))))

(assert (=> d!79223 (= res!124088 (= (content!551 lt!112090) ((_ map or) (content!551 lt!111765) (content!551 lt!111759))))))

(assert (=> d!79223 (= lt!112090 e!168854)))

(declare-fun c!51510 () Bool)

(assert (=> d!79223 (= c!51510 ((_ is Nil!3828) lt!111765))))

(assert (=> d!79223 (= (++!1002 lt!111765 lt!111759) lt!112090)))

(declare-fun b!271771 () Bool)

(declare-fun res!124087 () Bool)

(assert (=> b!271771 (=> (not res!124087) (not e!168853))))

(assert (=> b!271771 (= res!124087 (= (size!3053 lt!112090) (+ (size!3053 lt!111765) (size!3053 lt!111759))))))

(declare-fun b!271769 () Bool)

(assert (=> b!271769 (= e!168854 lt!111759)))

(assert (= (and d!79223 c!51510) b!271769))

(assert (= (and d!79223 (not c!51510)) b!271770))

(assert (= (and d!79223 res!124088) b!271771))

(assert (= (and b!271771 res!124087) b!271772))

(declare-fun m!344701 () Bool)

(assert (=> b!271770 m!344701))

(declare-fun m!344703 () Bool)

(assert (=> d!79223 m!344703))

(assert (=> d!79223 m!344395))

(assert (=> d!79223 m!344361))

(declare-fun m!344705 () Bool)

(assert (=> b!271771 m!344705))

(assert (=> b!271771 m!344399))

(assert (=> b!271771 m!344367))

(assert (=> b!271206 d!79223))

(declare-fun b!271786 () Bool)

(declare-fun b_free!10069 () Bool)

(declare-fun b_next!10069 () Bool)

(assert (=> b!271786 (= b_free!10069 (not b_next!10069))))

(declare-fun tp!102799 () Bool)

(declare-fun b_and!21721 () Bool)

(assert (=> b!271786 (= tp!102799 b_and!21721)))

(declare-fun b_free!10071 () Bool)

(declare-fun b_next!10071 () Bool)

(assert (=> b!271786 (= b_free!10071 (not b_next!10071))))

(declare-fun t!38572 () Bool)

(declare-fun tb!15425 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) t!38572) tb!15425))

(declare-fun result!19046 () Bool)

(assert (= result!19046 result!19000))

(assert (=> b!271233 t!38572))

(declare-fun tb!15427 () Bool)

(declare-fun t!38574 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170)))) t!38574) tb!15427))

(declare-fun result!19048 () Bool)

(assert (= result!19048 result!19022))

(assert (=> d!79125 t!38574))

(assert (=> d!79145 t!38572))

(assert (=> b!271740 t!38574))

(declare-fun b_and!21723 () Bool)

(declare-fun tp!102800 () Bool)

(assert (=> b!271786 (= tp!102800 (and (=> t!38572 result!19046) (=> t!38574 result!19048) b_and!21723))))

(declare-fun b!271783 () Bool)

(declare-fun e!168870 () Bool)

(declare-fun tp!102797 () Bool)

(declare-fun e!168871 () Bool)

(assert (=> b!271783 (= e!168870 (and (inv!4739 (h!9227 (t!38514 tokens!465))) e!168871 tp!102797))))

(declare-fun tp!102796 () Bool)

(declare-fun b!271784 () Bool)

(declare-fun e!168869 () Bool)

(assert (=> b!271784 (= e!168871 (and (inv!21 (value!25149 (h!9227 (t!38514 tokens!465)))) e!168869 tp!102796))))

(declare-fun tp!102798 () Bool)

(declare-fun b!271785 () Bool)

(declare-fun e!168867 () Bool)

(assert (=> b!271785 (= e!168869 (and tp!102798 (inv!4735 (tag!941 (rule!1316 (h!9227 (t!38514 tokens!465))))) (inv!4738 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) e!168867))))

(assert (=> b!271198 (= tp!102716 e!168870)))

(assert (=> b!271786 (= e!168867 (and tp!102799 tp!102800))))

(assert (= b!271785 b!271786))

(assert (= b!271784 b!271785))

(assert (= b!271783 b!271784))

(assert (= (and b!271198 ((_ is Cons!3830) (t!38514 tokens!465))) b!271783))

(declare-fun m!344707 () Bool)

(assert (=> b!271783 m!344707))

(declare-fun m!344709 () Bool)

(assert (=> b!271784 m!344709))

(declare-fun m!344711 () Bool)

(assert (=> b!271785 m!344711))

(declare-fun m!344713 () Bool)

(assert (=> b!271785 m!344713))

(declare-fun b!271791 () Bool)

(declare-fun e!168875 () Bool)

(declare-fun tp_is_empty!1815 () Bool)

(declare-fun tp!102803 () Bool)

(assert (=> b!271791 (= e!168875 (and tp_is_empty!1815 tp!102803))))

(assert (=> b!271208 (= tp!102719 e!168875)))

(assert (= (and b!271208 ((_ is Cons!3828) (originalCharacters!774 (h!9227 tokens!465)))) b!271791))

(declare-fun e!168878 () Bool)

(assert (=> b!271200 (= tp!102717 e!168878)))

(declare-fun b!271805 () Bool)

(declare-fun tp!102817 () Bool)

(declare-fun tp!102818 () Bool)

(assert (=> b!271805 (= e!168878 (and tp!102817 tp!102818))))

(declare-fun b!271804 () Bool)

(declare-fun tp!102816 () Bool)

(assert (=> b!271804 (= e!168878 tp!102816)))

(declare-fun b!271802 () Bool)

(assert (=> b!271802 (= e!168878 tp_is_empty!1815)))

(declare-fun b!271803 () Bool)

(declare-fun tp!102814 () Bool)

(declare-fun tp!102815 () Bool)

(assert (=> b!271803 (= e!168878 (and tp!102814 tp!102815))))

(assert (= (and b!271200 ((_ is ElementMatch!955) (regex!731 (h!9226 rules!1920)))) b!271802))

(assert (= (and b!271200 ((_ is Concat!1709) (regex!731 (h!9226 rules!1920)))) b!271803))

(assert (= (and b!271200 ((_ is Star!955) (regex!731 (h!9226 rules!1920)))) b!271804))

(assert (= (and b!271200 ((_ is Union!955) (regex!731 (h!9226 rules!1920)))) b!271805))

(declare-fun b!271806 () Bool)

(declare-fun e!168879 () Bool)

(declare-fun tp!102819 () Bool)

(assert (=> b!271806 (= e!168879 (and tp_is_empty!1815 tp!102819))))

(assert (=> b!271205 (= tp!102713 e!168879)))

(assert (= (and b!271205 ((_ is Cons!3828) (originalCharacters!774 separatorToken!170))) b!271806))

(declare-fun e!168880 () Bool)

(assert (=> b!271204 (= tp!102711 e!168880)))

(declare-fun b!271810 () Bool)

(declare-fun tp!102823 () Bool)

(declare-fun tp!102824 () Bool)

(assert (=> b!271810 (= e!168880 (and tp!102823 tp!102824))))

(declare-fun b!271809 () Bool)

(declare-fun tp!102822 () Bool)

(assert (=> b!271809 (= e!168880 tp!102822)))

(declare-fun b!271807 () Bool)

(assert (=> b!271807 (= e!168880 tp_is_empty!1815)))

(declare-fun b!271808 () Bool)

(declare-fun tp!102820 () Bool)

(declare-fun tp!102821 () Bool)

(assert (=> b!271808 (= e!168880 (and tp!102820 tp!102821))))

(assert (= (and b!271204 ((_ is ElementMatch!955) (regex!731 (rule!1316 separatorToken!170)))) b!271807))

(assert (= (and b!271204 ((_ is Concat!1709) (regex!731 (rule!1316 separatorToken!170)))) b!271808))

(assert (= (and b!271204 ((_ is Star!955) (regex!731 (rule!1316 separatorToken!170)))) b!271809))

(assert (= (and b!271204 ((_ is Union!955) (regex!731 (rule!1316 separatorToken!170)))) b!271810))

(declare-fun e!168881 () Bool)

(assert (=> b!271193 (= tp!102721 e!168881)))

(declare-fun b!271814 () Bool)

(declare-fun tp!102828 () Bool)

(declare-fun tp!102829 () Bool)

(assert (=> b!271814 (= e!168881 (and tp!102828 tp!102829))))

(declare-fun b!271813 () Bool)

(declare-fun tp!102827 () Bool)

(assert (=> b!271813 (= e!168881 tp!102827)))

(declare-fun b!271811 () Bool)

(assert (=> b!271811 (= e!168881 tp_is_empty!1815)))

(declare-fun b!271812 () Bool)

(declare-fun tp!102825 () Bool)

(declare-fun tp!102826 () Bool)

(assert (=> b!271812 (= e!168881 (and tp!102825 tp!102826))))

(assert (= (and b!271193 ((_ is ElementMatch!955) (regex!731 (rule!1316 (h!9227 tokens!465))))) b!271811))

(assert (= (and b!271193 ((_ is Concat!1709) (regex!731 (rule!1316 (h!9227 tokens!465))))) b!271812))

(assert (= (and b!271193 ((_ is Star!955) (regex!731 (rule!1316 (h!9227 tokens!465))))) b!271813))

(assert (= (and b!271193 ((_ is Union!955) (regex!731 (rule!1316 (h!9227 tokens!465))))) b!271814))

(declare-fun b!271825 () Bool)

(declare-fun b_free!10073 () Bool)

(declare-fun b_next!10073 () Bool)

(assert (=> b!271825 (= b_free!10073 (not b_next!10073))))

(declare-fun tp!102838 () Bool)

(declare-fun b_and!21725 () Bool)

(assert (=> b!271825 (= tp!102838 b_and!21725)))

(declare-fun b_free!10075 () Bool)

(declare-fun b_next!10075 () Bool)

(assert (=> b!271825 (= b_free!10075 (not b_next!10075))))

(declare-fun t!38576 () Bool)

(declare-fun tb!15429 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) t!38576) tb!15429))

(declare-fun result!19056 () Bool)

(assert (= result!19056 result!19000))

(assert (=> b!271233 t!38576))

(declare-fun t!38578 () Bool)

(declare-fun tb!15431 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170)))) t!38578) tb!15431))

(declare-fun result!19058 () Bool)

(assert (= result!19058 result!19022))

(assert (=> d!79125 t!38578))

(assert (=> d!79145 t!38576))

(assert (=> b!271740 t!38578))

(declare-fun b_and!21727 () Bool)

(declare-fun tp!102840 () Bool)

(assert (=> b!271825 (= tp!102840 (and (=> t!38576 result!19056) (=> t!38578 result!19058) b_and!21727))))

(declare-fun e!168892 () Bool)

(assert (=> b!271825 (= e!168892 (and tp!102838 tp!102840))))

(declare-fun tp!102841 () Bool)

(declare-fun e!168891 () Bool)

(declare-fun b!271824 () Bool)

(assert (=> b!271824 (= e!168891 (and tp!102841 (inv!4735 (tag!941 (h!9226 (t!38513 rules!1920)))) (inv!4738 (transformation!731 (h!9226 (t!38513 rules!1920)))) e!168892))))

(declare-fun b!271823 () Bool)

(declare-fun e!168890 () Bool)

(declare-fun tp!102839 () Bool)

(assert (=> b!271823 (= e!168890 (and e!168891 tp!102839))))

(assert (=> b!271192 (= tp!102715 e!168890)))

(assert (= b!271824 b!271825))

(assert (= b!271823 b!271824))

(assert (= (and b!271192 ((_ is Cons!3829) (t!38513 rules!1920))) b!271823))

(declare-fun m!344715 () Bool)

(assert (=> b!271824 m!344715))

(declare-fun m!344717 () Bool)

(assert (=> b!271824 m!344717))

(declare-fun b!271828 () Bool)

(declare-fun e!168896 () Bool)

(assert (=> b!271828 (= e!168896 true)))

(declare-fun b!271827 () Bool)

(declare-fun e!168895 () Bool)

(assert (=> b!271827 (= e!168895 e!168896)))

(declare-fun b!271826 () Bool)

(declare-fun e!168894 () Bool)

(assert (=> b!271826 (= e!168894 e!168895)))

(assert (=> b!271224 e!168894))

(assert (= b!271827 b!271828))

(assert (= b!271826 b!271827))

(assert (= (and b!271224 ((_ is Cons!3829) (t!38513 rules!1920))) b!271826))

(assert (=> b!271828 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9172))))

(assert (=> b!271828 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9172))))

(declare-fun b_lambda!8667 () Bool)

(assert (= b_lambda!8631 (or (and b!271825 b_free!10075 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (and b!271786 b_free!10071 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (and b!271199 b_free!10059 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (and b!271211 b_free!10055) (and b!271190 b_free!10051 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) b_lambda!8667)))

(declare-fun b_lambda!8669 () Bool)

(assert (= b_lambda!8649 (or (and b!271825 b_free!10075 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (and b!271786 b_free!10071 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (and b!271199 b_free!10059 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (and b!271211 b_free!10055) (and b!271190 b_free!10051 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) b_lambda!8669)))

(declare-fun b_lambda!8671 () Bool)

(assert (= b_lambda!8663 (or (and b!271786 b_free!10071 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))))) (and b!271199 b_free!10059) (and b!271211 b_free!10055 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))))) (and b!271190 b_free!10051 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))))) (and b!271825 b_free!10075 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))))) b_lambda!8671)))

(declare-fun b_lambda!8673 () Bool)

(assert (= b_lambda!8665 (or b!271207 b_lambda!8673)))

(declare-fun bs!30315 () Bool)

(declare-fun d!79225 () Bool)

(assert (= bs!30315 (and d!79225 b!271207)))

(assert (=> bs!30315 (= (dynLambda!1973 lambda!9172 (h!9227 tokens!465)) (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (h!9227 tokens!465)))))

(assert (=> bs!30315 m!343705))

(assert (=> d!79221 d!79225))

(declare-fun b_lambda!8675 () Bool)

(assert (= b_lambda!8643 (or b!271212 b_lambda!8675)))

(declare-fun bs!30316 () Bool)

(declare-fun d!79227 () Bool)

(assert (= bs!30316 (and d!79227 b!271212)))

(assert (=> bs!30316 (= (dynLambda!1973 lambda!9171 (h!9227 tokens!465)) (not (isSeparator!731 (rule!1316 (h!9227 tokens!465)))))))

(assert (=> b!271513 d!79227))

(declare-fun b_lambda!8677 () Bool)

(assert (= b_lambda!8645 (or (and b!271786 b_free!10071 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))))) (and b!271199 b_free!10059) (and b!271211 b_free!10055 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))))) (and b!271190 b_free!10051 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))))) (and b!271825 b_free!10075 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))))) b_lambda!8677)))

(check-sat (not tb!15411) (not b!271572) (not b_next!10075) (not bm!14882) b_and!21661 (not b!271500) (not b_next!10051) (not b!271233) (not d!79141) (not d!79151) (not b!271556) (not bs!30315) (not b!271663) (not b!271791) (not b!271627) (not b!271612) b_and!21721 (not bm!14880) (not b!271763) (not b!271615) (not d!79119) (not bm!14887) (not d!79165) (not b!271623) (not b_next!10071) (not d!79219) (not bm!14876) b_and!21653 (not b!271288) (not b!271272) (not b!271784) (not b!271626) (not b!271628) (not bm!14879) (not b!271462) (not b!271514) (not b!271641) (not b!271599) (not b!271762) (not b!271286) (not b!271502) (not b_next!10059) (not d!79131) (not b!271624) (not b!271771) (not b_next!10057) (not d!79121) (not b!271543) (not b!271376) (not b!271547) b_and!21719 (not b!271814) (not b!271740) (not b!271759) b_and!21717 (not b!271555) (not b_lambda!8669) b_and!21727 (not b!271826) (not b_lambda!8675) (not b_next!10073) (not b!271604) (not b!271622) (not bm!14878) (not d!79157) (not b!271625) (not b!271803) (not b_next!10055) (not d!79089) (not b!271589) (not b!271809) (not b!271770) (not b!271635) b_and!21723 (not b!271606) (not d!79215) (not b_next!10069) (not b!271371) (not b_lambda!8671) (not d!79179) (not b!271609) (not d!79043) (not b!271548) (not b!271824) (not b!271234) (not d!79145) b_and!21657 (not b!271761) (not b!271239) (not d!79223) (not b!271812) (not bm!14845) (not b!271805) (not d!79159) (not b!271823) (not b!271760) (not b!271810) (not b!271382) (not b!271374) (not b!271768) (not d!79173) (not b_lambda!8667) (not b!271373) (not d!79155) (not b!271273) (not b!271738) (not d!79163) (not d!79177) b_and!21715 (not bm!14874) (not b!271501) (not b!271468) (not b!271785) (not b!271640) (not b!271546) (not b!271367) (not b!271764) (not d!79113) (not tb!15393) (not b!271466) (not d!79171) (not d!79221) (not b!271804) (not b!271287) (not d!79217) (not d!79125) (not b_next!10049) (not b!271554) (not bm!14873) (not b!271617) (not b_lambda!8677) (not b_lambda!8673) (not d!79213) (not d!79031) (not d!79153) (not b!271758) (not d!79211) (not b_next!10053) (not b!271552) (not b!271600) (not d!79117) (not b!271545) (not b!271603) (not d!79181) (not bm!14872) (not b!271783) (not b!271590) (not d!79209) (not b!271470) (not b!271469) (not d!79149) (not b!271732) (not d!79037) (not b!271806) (not bm!14883) (not b!271593) (not b!271813) (not b!271808) (not d!79203) b_and!21725 (not b!271610) (not bm!14847) (not b!271370) (not bm!14877) (not b!271613) (not b!271741) (not bm!14871) (not d!79197) (not b!271661) (not b!271739) (not b!271727) (not d!79109) tp_is_empty!1815 (not b!271594) (not bm!14848) (not d!79041) (not d!79033))
(check-sat b_and!21721 (not b_next!10059) (not b_next!10057) b_and!21719 b_and!21717 b_and!21727 (not b_next!10073) (not b_next!10055) b_and!21723 (not b_next!10069) b_and!21657 b_and!21715 (not b_next!10049) (not b_next!10053) b_and!21725 (not b_next!10075) b_and!21661 (not b_next!10051) (not b_next!10071) b_and!21653)
(get-model)

(declare-fun d!79279 () Bool)

(declare-fun res!124160 () Bool)

(declare-fun e!168982 () Bool)

(assert (=> d!79279 (=> res!124160 e!168982)))

(assert (=> d!79279 (= res!124160 ((_ is Nil!3829) rules!1920))))

(assert (=> d!79279 (= (noDuplicateTag!225 thiss!17480 rules!1920 Nil!3832) e!168982)))

(declare-fun b!271965 () Bool)

(declare-fun e!168983 () Bool)

(assert (=> b!271965 (= e!168982 e!168983)))

(declare-fun res!124161 () Bool)

(assert (=> b!271965 (=> (not res!124161) (not e!168983))))

(declare-fun contains!724 (List!3842 String!4845) Bool)

(assert (=> b!271965 (= res!124161 (not (contains!724 Nil!3832 (tag!941 (h!9226 rules!1920)))))))

(declare-fun b!271966 () Bool)

(assert (=> b!271966 (= e!168983 (noDuplicateTag!225 thiss!17480 (t!38513 rules!1920) (Cons!3832 (tag!941 (h!9226 rules!1920)) Nil!3832)))))

(assert (= (and d!79279 (not res!124160)) b!271965))

(assert (= (and b!271965 res!124161) b!271966))

(declare-fun m!344913 () Bool)

(assert (=> b!271965 m!344913))

(declare-fun m!344915 () Bool)

(assert (=> b!271966 m!344915))

(assert (=> b!271640 d!79279))

(declare-fun d!79289 () Bool)

(assert (=> d!79289 (= (tail!478 (drop!217 lt!111996 0)) (t!38514 (drop!217 lt!111996 0)))))

(assert (=> b!271612 d!79289))

(declare-fun d!79291 () Bool)

(assert (=> d!79291 (= (head!888 (drop!217 lt!111998 0)) (h!9227 (drop!217 lt!111998 0)))))

(assert (=> b!271612 d!79291))

(declare-fun d!79295 () Bool)

(assert (=> d!79295 (= (head!888 (drop!217 lt!111998 0)) (apply!774 lt!111998 0))))

(declare-fun lt!112166 () Unit!4936)

(declare-fun choose!2464 (List!3840 Int) Unit!4936)

(assert (=> d!79295 (= lt!112166 (choose!2464 lt!111998 0))))

(declare-fun e!168989 () Bool)

(assert (=> d!79295 e!168989))

(declare-fun res!124169 () Bool)

(assert (=> d!79295 (=> (not res!124169) (not e!168989))))

(assert (=> d!79295 (= res!124169 (>= 0 0))))

(assert (=> d!79295 (= (lemmaDropApply!204 lt!111998 0) lt!112166)))

(declare-fun b!271976 () Bool)

(declare-fun size!3060 (List!3840) Int)

(assert (=> b!271976 (= e!168989 (< 0 (size!3060 lt!111998)))))

(assert (= (and d!79295 res!124169) b!271976))

(assert (=> d!79295 m!344433))

(assert (=> d!79295 m!344433))

(assert (=> d!79295 m!344445))

(assert (=> d!79295 m!344425))

(declare-fun m!344973 () Bool)

(assert (=> d!79295 m!344973))

(declare-fun m!344975 () Bool)

(assert (=> b!271976 m!344975))

(assert (=> b!271612 d!79295))

(declare-fun b!271995 () Bool)

(declare-fun e!169003 () List!3840)

(assert (=> b!271995 (= e!169003 Nil!3830)))

(declare-fun b!271996 () Bool)

(declare-fun e!169004 () Bool)

(declare-fun lt!112169 () List!3840)

(declare-fun e!169000 () Int)

(assert (=> b!271996 (= e!169004 (= (size!3060 lt!112169) e!169000))))

(declare-fun c!51558 () Bool)

(assert (=> b!271996 (= c!51558 (<= 0 0))))

(declare-fun b!271997 () Bool)

(declare-fun e!169002 () List!3840)

(assert (=> b!271997 (= e!169002 lt!111996)))

(declare-fun b!271998 () Bool)

(assert (=> b!271998 (= e!169002 (drop!217 (t!38514 lt!111996) (- 0 1)))))

(declare-fun b!271999 () Bool)

(declare-fun e!169001 () Int)

(declare-fun call!14904 () Int)

(assert (=> b!271999 (= e!169001 (- call!14904 0))))

(declare-fun b!272000 () Bool)

(assert (=> b!272000 (= e!169001 0)))

(declare-fun b!272001 () Bool)

(assert (=> b!272001 (= e!169003 e!169002)))

(declare-fun c!51561 () Bool)

(assert (=> b!272001 (= c!51561 (<= 0 0))))

(declare-fun b!272002 () Bool)

(assert (=> b!272002 (= e!169000 e!169001)))

(declare-fun c!51560 () Bool)

(assert (=> b!272002 (= c!51560 (>= 0 call!14904))))

(declare-fun d!79301 () Bool)

(assert (=> d!79301 e!169004))

(declare-fun res!124172 () Bool)

(assert (=> d!79301 (=> (not res!124172) (not e!169004))))

(declare-fun content!553 (List!3840) (InoxSet Token!1206))

(assert (=> d!79301 (= res!124172 (= ((_ map implies) (content!553 lt!112169) (content!553 lt!111996)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79301 (= lt!112169 e!169003)))

(declare-fun c!51559 () Bool)

(assert (=> d!79301 (= c!51559 ((_ is Nil!3830) lt!111996))))

(assert (=> d!79301 (= (drop!217 lt!111996 0) lt!112169)))

(declare-fun bm!14899 () Bool)

(assert (=> bm!14899 (= call!14904 (size!3060 lt!111996))))

(declare-fun b!272003 () Bool)

(assert (=> b!272003 (= e!169000 call!14904)))

(assert (= (and d!79301 c!51559) b!271995))

(assert (= (and d!79301 (not c!51559)) b!272001))

(assert (= (and b!272001 c!51561) b!271997))

(assert (= (and b!272001 (not c!51561)) b!271998))

(assert (= (and d!79301 res!124172) b!271996))

(assert (= (and b!271996 c!51558) b!272003))

(assert (= (and b!271996 (not c!51558)) b!272002))

(assert (= (and b!272002 c!51560) b!272000))

(assert (= (and b!272002 (not c!51560)) b!271999))

(assert (= (or b!272003 b!272002 b!271999) bm!14899))

(declare-fun m!344977 () Bool)

(assert (=> b!271996 m!344977))

(declare-fun m!344979 () Bool)

(assert (=> b!271998 m!344979))

(declare-fun m!344981 () Bool)

(assert (=> d!79301 m!344981))

(declare-fun m!344983 () Bool)

(assert (=> d!79301 m!344983))

(declare-fun m!344985 () Bool)

(assert (=> bm!14899 m!344985))

(assert (=> b!271612 d!79301))

(declare-fun lt!112172 () BalanceConc!2576)

(declare-fun b!272015 () Bool)

(declare-fun e!169007 () Bool)

(assert (=> b!272015 (= e!169007 (= (list!1567 lt!112172) (++!1002 (list!1567 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))) (list!1567 lt!112002))))))

(declare-fun b!272013 () Bool)

(declare-fun res!124183 () Bool)

(assert (=> b!272013 (=> (not res!124183) (not e!169007))))

(declare-fun height!158 (Conc!1284) Int)

(declare-fun ++!1006 (Conc!1284 Conc!1284) Conc!1284)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!272013 (= res!124183 (<= (height!158 (++!1006 (c!51394 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))) (c!51394 lt!112002))) (+ (max!0 (height!158 (c!51394 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))) (height!158 (c!51394 lt!112002))) 1)))))

(declare-fun b!272012 () Bool)

(declare-fun res!124182 () Bool)

(assert (=> b!272012 (=> (not res!124182) (not e!169007))))

(declare-fun isBalanced!355 (Conc!1284) Bool)

(assert (=> b!272012 (= res!124182 (isBalanced!355 (++!1006 (c!51394 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))) (c!51394 lt!112002))))))

(declare-fun d!79303 () Bool)

(assert (=> d!79303 e!169007))

(declare-fun res!124184 () Bool)

(assert (=> d!79303 (=> (not res!124184) (not e!169007))))

(declare-fun appendAssocInst!65 (Conc!1284 Conc!1284) Bool)

(assert (=> d!79303 (= res!124184 (appendAssocInst!65 (c!51394 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))) (c!51394 lt!112002)))))

(assert (=> d!79303 (= lt!112172 (BalanceConc!2577 (++!1006 (c!51394 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))) (c!51394 lt!112002))))))

(assert (=> d!79303 (= (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002) lt!112172)))

(declare-fun b!272014 () Bool)

(declare-fun res!124181 () Bool)

(assert (=> b!272014 (=> (not res!124181) (not e!169007))))

(assert (=> b!272014 (= res!124181 (>= (height!158 (++!1006 (c!51394 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))) (c!51394 lt!112002))) (max!0 (height!158 (c!51394 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))) (height!158 (c!51394 lt!112002)))))))

(assert (= (and d!79303 res!124184) b!272012))

(assert (= (and b!272012 res!124182) b!272013))

(assert (= (and b!272013 res!124183) b!272014))

(assert (= (and b!272014 res!124181) b!272015))

(declare-fun m!344987 () Bool)

(assert (=> b!272012 m!344987))

(assert (=> b!272012 m!344987))

(declare-fun m!344989 () Bool)

(assert (=> b!272012 m!344989))

(declare-fun m!344991 () Bool)

(assert (=> d!79303 m!344991))

(assert (=> d!79303 m!344987))

(assert (=> b!272013 m!344987))

(declare-fun m!344993 () Bool)

(assert (=> b!272013 m!344993))

(assert (=> b!272013 m!344987))

(declare-fun m!344995 () Bool)

(assert (=> b!272013 m!344995))

(declare-fun m!344997 () Bool)

(assert (=> b!272013 m!344997))

(assert (=> b!272013 m!344997))

(assert (=> b!272013 m!344993))

(declare-fun m!344999 () Bool)

(assert (=> b!272013 m!344999))

(assert (=> b!272014 m!344987))

(assert (=> b!272014 m!344993))

(assert (=> b!272014 m!344987))

(assert (=> b!272014 m!344995))

(assert (=> b!272014 m!344997))

(assert (=> b!272014 m!344997))

(assert (=> b!272014 m!344993))

(assert (=> b!272014 m!344999))

(declare-fun m!345001 () Bool)

(assert (=> b!272015 m!345001))

(assert (=> b!272015 m!344427))

(declare-fun m!345003 () Bool)

(assert (=> b!272015 m!345003))

(assert (=> b!272015 m!344451))

(assert (=> b!272015 m!345003))

(assert (=> b!272015 m!344451))

(declare-fun m!345005 () Bool)

(assert (=> b!272015 m!345005))

(assert (=> b!271612 d!79303))

(declare-fun d!79305 () Bool)

(assert (=> d!79305 (dynLambda!1973 lambda!9206 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))

(declare-fun lt!112173 () Unit!4936)

(assert (=> d!79305 (= lt!112173 (choose!2461 (list!1570 (seqFromList!830 (t!38514 tokens!465))) lambda!9206 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))))

(declare-fun e!169008 () Bool)

(assert (=> d!79305 e!169008))

(declare-fun res!124185 () Bool)

(assert (=> d!79305 (=> (not res!124185) (not e!169008))))

(assert (=> d!79305 (= res!124185 (forall!964 (list!1570 (seqFromList!830 (t!38514 tokens!465))) lambda!9206))))

(assert (=> d!79305 (= (forallContained!286 (list!1570 (seqFromList!830 (t!38514 tokens!465))) lambda!9206 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112173)))

(declare-fun b!272016 () Bool)

(assert (=> b!272016 (= e!169008 (contains!723 (list!1570 (seqFromList!830 (t!38514 tokens!465))) (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))))

(assert (= (and d!79305 res!124185) b!272016))

(declare-fun b_lambda!8681 () Bool)

(assert (=> (not b_lambda!8681) (not d!79305)))

(assert (=> d!79305 m!344411))

(declare-fun m!345007 () Bool)

(assert (=> d!79305 m!345007))

(assert (=> d!79305 m!344423))

(assert (=> d!79305 m!344411))

(declare-fun m!345009 () Bool)

(assert (=> d!79305 m!345009))

(assert (=> d!79305 m!344423))

(declare-fun m!345011 () Bool)

(assert (=> d!79305 m!345011))

(assert (=> b!272016 m!344423))

(assert (=> b!272016 m!344411))

(declare-fun m!345013 () Bool)

(assert (=> b!272016 m!345013))

(assert (=> b!271612 d!79305))

(declare-fun d!79307 () Bool)

(declare-fun list!1574 (Conc!1285) List!3840)

(assert (=> d!79307 (= (list!1570 (seqFromList!830 (t!38514 tokens!465))) (list!1574 (c!51396 (seqFromList!830 (t!38514 tokens!465)))))))

(declare-fun bs!30325 () Bool)

(assert (= bs!30325 d!79307))

(declare-fun m!345015 () Bool)

(assert (=> bs!30325 m!345015))

(assert (=> b!271612 d!79307))

(declare-fun bs!30326 () Bool)

(declare-fun d!79309 () Bool)

(assert (= bs!30326 (and d!79309 b!271373)))

(declare-fun lambda!9210 () Int)

(assert (=> bs!30326 (not (= lambda!9210 lambda!9192))))

(declare-fun bs!30327 () Bool)

(assert (= bs!30327 (and d!79309 b!271552)))

(assert (=> bs!30327 (not (= lambda!9210 lambda!9204))))

(declare-fun bs!30328 () Bool)

(assert (= bs!30328 (and d!79309 b!271207)))

(assert (=> bs!30328 (not (= lambda!9210 lambda!9172))))

(declare-fun bs!30329 () Bool)

(assert (= bs!30329 (and d!79309 b!271466)))

(assert (=> bs!30329 (not (= lambda!9210 lambda!9200))))

(declare-fun bs!30330 () Bool)

(assert (= bs!30330 (and d!79309 b!271612)))

(assert (=> bs!30330 (not (= lambda!9210 lambda!9206))))

(declare-fun bs!30331 () Bool)

(assert (= bs!30331 (and d!79309 d!79155)))

(assert (=> bs!30331 (= lambda!9210 lambda!9205)))

(declare-fun bs!30332 () Bool)

(assert (= bs!30332 (and d!79309 d!79033)))

(assert (=> bs!30332 (not (= lambda!9210 lambda!9183))))

(declare-fun bs!30333 () Bool)

(assert (= bs!30333 (and d!79309 d!79043)))

(assert (=> bs!30333 (= lambda!9210 lambda!9191)))

(declare-fun bs!30334 () Bool)

(assert (= bs!30334 (and d!79309 b!271212)))

(assert (=> bs!30334 (= lambda!9210 lambda!9171)))

(declare-fun bs!30335 () Bool)

(declare-fun b!272023 () Bool)

(assert (= bs!30335 (and b!272023 b!271373)))

(declare-fun lambda!9211 () Int)

(assert (=> bs!30335 (= lambda!9211 lambda!9192)))

(declare-fun bs!30336 () Bool)

(assert (= bs!30336 (and b!272023 b!271552)))

(assert (=> bs!30336 (= lambda!9211 lambda!9204)))

(declare-fun bs!30337 () Bool)

(assert (= bs!30337 (and b!272023 b!271207)))

(assert (=> bs!30337 (= lambda!9211 lambda!9172)))

(declare-fun bs!30338 () Bool)

(assert (= bs!30338 (and b!272023 b!271466)))

(assert (=> bs!30338 (= lambda!9211 lambda!9200)))

(declare-fun bs!30339 () Bool)

(assert (= bs!30339 (and b!272023 b!271612)))

(assert (=> bs!30339 (= lambda!9211 lambda!9206)))

(declare-fun bs!30340 () Bool)

(assert (= bs!30340 (and b!272023 d!79155)))

(assert (=> bs!30340 (not (= lambda!9211 lambda!9205))))

(declare-fun bs!30341 () Bool)

(assert (= bs!30341 (and b!272023 d!79033)))

(assert (=> bs!30341 (= lambda!9211 lambda!9183)))

(declare-fun bs!30342 () Bool)

(assert (= bs!30342 (and b!272023 d!79043)))

(assert (=> bs!30342 (not (= lambda!9211 lambda!9191))))

(declare-fun bs!30343 () Bool)

(assert (= bs!30343 (and b!272023 d!79309)))

(assert (=> bs!30343 (not (= lambda!9211 lambda!9210))))

(declare-fun bs!30344 () Bool)

(assert (= bs!30344 (and b!272023 b!271212)))

(assert (=> bs!30344 (not (= lambda!9211 lambda!9171))))

(declare-fun b!272030 () Bool)

(declare-fun e!169018 () Bool)

(assert (=> b!272030 (= e!169018 true)))

(declare-fun b!272029 () Bool)

(declare-fun e!169017 () Bool)

(assert (=> b!272029 (= e!169017 e!169018)))

(declare-fun b!272028 () Bool)

(declare-fun e!169016 () Bool)

(assert (=> b!272028 (= e!169016 e!169017)))

(assert (=> b!272023 e!169016))

(assert (= b!272029 b!272030))

(assert (= b!272028 b!272029))

(assert (= (and b!272023 ((_ is Cons!3829) rules!1920)) b!272028))

(assert (=> b!272030 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9211))))

(assert (=> b!272030 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9211))))

(assert (=> b!272023 true))

(declare-fun bm!14900 () Bool)

(declare-fun c!51568 () Bool)

(declare-fun c!51567 () Bool)

(assert (=> bm!14900 (= c!51568 c!51567)))

(declare-fun e!169010 () BalanceConc!2576)

(declare-fun lt!112183 () BalanceConc!2576)

(declare-fun call!14906 () BalanceConc!2576)

(declare-fun call!14909 () BalanceConc!2576)

(assert (=> bm!14900 (= call!14906 (++!1004 e!169010 (ite c!51567 lt!112183 call!14909)))))

(declare-fun b!272017 () Bool)

(declare-fun call!14907 () Token!1206)

(assert (=> b!272017 (= e!169010 (charsOf!376 call!14907))))

(declare-fun lt!112181 () BalanceConc!2576)

(assert (=> d!79309 (= (list!1567 lt!112181) (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) (+ 0 1)) separatorToken!170))))

(declare-fun e!169015 () BalanceConc!2576)

(assert (=> d!79309 (= lt!112181 e!169015)))

(declare-fun c!51566 () Bool)

(assert (=> d!79309 (= c!51566 (>= (+ 0 1) (size!3055 (seqFromList!830 (t!38514 tokens!465)))))))

(declare-fun lt!112185 () Unit!4936)

(assert (=> d!79309 (= lt!112185 (lemmaContentSubsetPreservesForall!108 (list!1570 (seqFromList!830 (t!38514 tokens!465))) (dropList!164 (seqFromList!830 (t!38514 tokens!465)) (+ 0 1)) lambda!9210))))

(declare-fun e!169014 () Bool)

(assert (=> d!79309 e!169014))

(declare-fun res!124186 () Bool)

(assert (=> d!79309 (=> (not res!124186) (not e!169014))))

(assert (=> d!79309 (= res!124186 (>= (+ 0 1) 0))))

(assert (=> d!79309 (= (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 (+ 0 1)) lt!112181)))

(declare-fun b!272018 () Bool)

(assert (=> b!272018 (= e!169015 (BalanceConc!2577 Empty!1284))))

(declare-fun b!272019 () Bool)

(declare-fun e!169012 () BalanceConc!2576)

(assert (=> b!272019 (= e!169012 call!14906)))

(declare-fun b!272020 () Bool)

(declare-fun e!169009 () BalanceConc!2576)

(assert (=> b!272020 (= e!169009 (++!1004 call!14906 lt!112183))))

(declare-fun bm!14901 () Bool)

(declare-fun call!14905 () Token!1206)

(assert (=> bm!14901 (= call!14907 call!14905)))

(declare-fun b!272021 () Bool)

(assert (=> b!272021 (= e!169009 (BalanceConc!2577 Empty!1284))))

(assert (=> b!272021 (= (print!342 thiss!17480 (singletonSeq!277 call!14907)) (printTailRec!305 thiss!17480 (singletonSeq!277 call!14907) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!112180 () Unit!4936)

(declare-fun Unit!4954 () Unit!4936)

(assert (=> b!272021 (= lt!112180 Unit!4954)))

(declare-fun lt!112182 () Unit!4936)

(assert (=> b!272021 (= lt!112182 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 (list!1567 call!14909) (list!1567 lt!112183)))))

(assert (=> b!272021 false))

(declare-fun lt!112175 () Unit!4936)

(declare-fun Unit!4955 () Unit!4936)

(assert (=> b!272021 (= lt!112175 Unit!4955)))

(declare-fun bm!14902 () Bool)

(declare-fun call!14908 () BalanceConc!2576)

(declare-fun c!51565 () Bool)

(assert (=> bm!14902 (= call!14908 (charsOf!376 (ite c!51567 call!14905 (ite c!51565 separatorToken!170 call!14907))))))

(declare-fun b!272022 () Bool)

(declare-fun e!169013 () Bool)

(declare-fun lt!112176 () Option!813)

(assert (=> b!272022 (= e!169013 (not (= (_1!2363 (v!14681 lt!112176)) call!14905)))))

(declare-fun bm!14903 () Bool)

(assert (=> bm!14903 (= call!14905 (apply!773 (seqFromList!830 (t!38514 tokens!465)) (+ 0 1)))))

(declare-fun bm!14904 () Bool)

(assert (=> bm!14904 (= call!14909 call!14908)))

(assert (=> b!272023 (= e!169015 e!169012)))

(declare-fun lt!112179 () List!3840)

(assert (=> b!272023 (= lt!112179 (list!1570 (seqFromList!830 (t!38514 tokens!465))))))

(declare-fun lt!112186 () Unit!4936)

(assert (=> b!272023 (= lt!112186 (lemmaDropApply!204 lt!112179 (+ 0 1)))))

(assert (=> b!272023 (= (head!888 (drop!217 lt!112179 (+ 0 1))) (apply!774 lt!112179 (+ 0 1)))))

(declare-fun lt!112178 () Unit!4936)

(assert (=> b!272023 (= lt!112178 lt!112186)))

(declare-fun lt!112177 () List!3840)

(assert (=> b!272023 (= lt!112177 (list!1570 (seqFromList!830 (t!38514 tokens!465))))))

(declare-fun lt!112174 () Unit!4936)

(assert (=> b!272023 (= lt!112174 (lemmaDropTail!196 lt!112177 (+ 0 1)))))

(assert (=> b!272023 (= (tail!478 (drop!217 lt!112177 (+ 0 1))) (drop!217 lt!112177 (+ 0 1 1)))))

(declare-fun lt!112187 () Unit!4936)

(assert (=> b!272023 (= lt!112187 lt!112174)))

(declare-fun lt!112184 () Unit!4936)

(assert (=> b!272023 (= lt!112184 (forallContained!286 (list!1570 (seqFromList!830 (t!38514 tokens!465))) lambda!9211 (apply!773 (seqFromList!830 (t!38514 tokens!465)) (+ 0 1))))))

(assert (=> b!272023 (= lt!112183 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!272023 (= lt!112176 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) (+ 0 1))) lt!112183)))))

(declare-fun res!124188 () Bool)

(assert (=> b!272023 (= res!124188 ((_ is Some!812) lt!112176))))

(declare-fun e!169011 () Bool)

(assert (=> b!272023 (=> (not res!124188) (not e!169011))))

(assert (=> b!272023 (= c!51567 e!169011)))

(declare-fun b!272024 () Bool)

(assert (=> b!272024 (= e!169014 (<= (+ 0 1) (size!3055 (seqFromList!830 (t!38514 tokens!465)))))))

(declare-fun b!272025 () Bool)

(assert (=> b!272025 (= e!169010 call!14908)))

(declare-fun b!272026 () Bool)

(assert (=> b!272026 (= e!169011 (= (_1!2363 (v!14681 lt!112176)) (apply!773 (seqFromList!830 (t!38514 tokens!465)) (+ 0 1))))))

(declare-fun b!272027 () Bool)

(assert (=> b!272027 (= c!51565 e!169013)))

(declare-fun res!124187 () Bool)

(assert (=> b!272027 (=> (not res!124187) (not e!169013))))

(assert (=> b!272027 (= res!124187 ((_ is Some!812) lt!112176))))

(assert (=> b!272027 (= e!169012 e!169009)))

(assert (= (and d!79309 res!124186) b!272024))

(assert (= (and d!79309 c!51566) b!272018))

(assert (= (and d!79309 (not c!51566)) b!272023))

(assert (= (and b!272023 res!124188) b!272026))

(assert (= (and b!272023 c!51567) b!272019))

(assert (= (and b!272023 (not c!51567)) b!272027))

(assert (= (and b!272027 res!124187) b!272022))

(assert (= (and b!272027 c!51565) b!272020))

(assert (= (and b!272027 (not c!51565)) b!272021))

(assert (= (or b!272020 b!272021) bm!14901))

(assert (= (or b!272020 b!272021) bm!14904))

(assert (= (or b!272019 bm!14901 b!272022) bm!14903))

(assert (= (or b!272019 bm!14904) bm!14902))

(assert (= (or b!272019 b!272020) bm!14900))

(assert (= (and bm!14900 c!51568) b!272025))

(assert (= (and bm!14900 (not c!51568)) b!272017))

(assert (=> bm!14903 m!343753))

(declare-fun m!345017 () Bool)

(assert (=> bm!14903 m!345017))

(declare-fun m!345019 () Bool)

(assert (=> bm!14902 m!345019))

(assert (=> b!272024 m!343753))

(assert (=> b!272024 m!344415))

(declare-fun m!345021 () Bool)

(assert (=> b!272020 m!345021))

(declare-fun m!345023 () Bool)

(assert (=> b!272023 m!345023))

(assert (=> b!272023 m!343753))

(declare-fun m!345025 () Bool)

(assert (=> b!272023 m!345025))

(assert (=> b!272023 m!343753))

(assert (=> b!272023 m!344423))

(declare-fun m!345027 () Bool)

(assert (=> b!272023 m!345027))

(assert (=> b!272023 m!345017))

(declare-fun m!345029 () Bool)

(assert (=> b!272023 m!345029))

(declare-fun m!345031 () Bool)

(assert (=> b!272023 m!345031))

(assert (=> b!272023 m!344423))

(assert (=> b!272023 m!345017))

(declare-fun m!345033 () Bool)

(assert (=> b!272023 m!345033))

(declare-fun m!345035 () Bool)

(assert (=> b!272023 m!345035))

(assert (=> b!272023 m!345029))

(declare-fun m!345037 () Bool)

(assert (=> b!272023 m!345037))

(declare-fun m!345039 () Bool)

(assert (=> b!272023 m!345039))

(assert (=> b!272023 m!345037))

(declare-fun m!345041 () Bool)

(assert (=> b!272023 m!345041))

(assert (=> b!272023 m!345039))

(declare-fun m!345043 () Bool)

(assert (=> b!272023 m!345043))

(assert (=> b!272023 m!343753))

(assert (=> b!272023 m!345017))

(declare-fun m!345045 () Bool)

(assert (=> b!272023 m!345045))

(assert (=> b!272023 m!345035))

(declare-fun m!345047 () Bool)

(assert (=> b!272023 m!345047))

(assert (=> b!272026 m!343753))

(assert (=> b!272026 m!345017))

(declare-fun m!345049 () Bool)

(assert (=> bm!14900 m!345049))

(declare-fun m!345051 () Bool)

(assert (=> b!272021 m!345051))

(declare-fun m!345053 () Bool)

(assert (=> b!272021 m!345053))

(declare-fun m!345055 () Bool)

(assert (=> b!272021 m!345055))

(declare-fun m!345057 () Bool)

(assert (=> b!272021 m!345057))

(assert (=> b!272021 m!345057))

(declare-fun m!345059 () Bool)

(assert (=> b!272021 m!345059))

(assert (=> b!272021 m!345051))

(assert (=> b!272021 m!345057))

(declare-fun m!345061 () Bool)

(assert (=> b!272021 m!345061))

(assert (=> b!272021 m!345053))

(declare-fun m!345063 () Bool)

(assert (=> b!272017 m!345063))

(assert (=> d!79309 m!344423))

(declare-fun m!345065 () Bool)

(assert (=> d!79309 m!345065))

(declare-fun m!345067 () Bool)

(assert (=> d!79309 m!345067))

(assert (=> d!79309 m!343753))

(assert (=> d!79309 m!344423))

(assert (=> d!79309 m!343753))

(assert (=> d!79309 m!345065))

(assert (=> d!79309 m!345065))

(declare-fun m!345069 () Bool)

(assert (=> d!79309 m!345069))

(assert (=> d!79309 m!343753))

(assert (=> d!79309 m!344415))

(declare-fun m!345071 () Bool)

(assert (=> d!79309 m!345071))

(assert (=> b!271612 d!79309))

(declare-fun b!272031 () Bool)

(declare-fun e!169022 () List!3840)

(assert (=> b!272031 (= e!169022 Nil!3830)))

(declare-fun b!272032 () Bool)

(declare-fun e!169023 () Bool)

(declare-fun lt!112188 () List!3840)

(declare-fun e!169019 () Int)

(assert (=> b!272032 (= e!169023 (= (size!3060 lt!112188) e!169019))))

(declare-fun c!51569 () Bool)

(assert (=> b!272032 (= c!51569 (<= (+ 0 1) 0))))

(declare-fun b!272033 () Bool)

(declare-fun e!169021 () List!3840)

(assert (=> b!272033 (= e!169021 lt!111996)))

(declare-fun b!272034 () Bool)

(assert (=> b!272034 (= e!169021 (drop!217 (t!38514 lt!111996) (- (+ 0 1) 1)))))

(declare-fun b!272035 () Bool)

(declare-fun e!169020 () Int)

(declare-fun call!14910 () Int)

(assert (=> b!272035 (= e!169020 (- call!14910 (+ 0 1)))))

(declare-fun b!272036 () Bool)

(assert (=> b!272036 (= e!169020 0)))

(declare-fun b!272037 () Bool)

(assert (=> b!272037 (= e!169022 e!169021)))

(declare-fun c!51572 () Bool)

(assert (=> b!272037 (= c!51572 (<= (+ 0 1) 0))))

(declare-fun b!272038 () Bool)

(assert (=> b!272038 (= e!169019 e!169020)))

(declare-fun c!51571 () Bool)

(assert (=> b!272038 (= c!51571 (>= (+ 0 1) call!14910))))

(declare-fun d!79311 () Bool)

(assert (=> d!79311 e!169023))

(declare-fun res!124189 () Bool)

(assert (=> d!79311 (=> (not res!124189) (not e!169023))))

(assert (=> d!79311 (= res!124189 (= ((_ map implies) (content!553 lt!112188) (content!553 lt!111996)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79311 (= lt!112188 e!169022)))

(declare-fun c!51570 () Bool)

(assert (=> d!79311 (= c!51570 ((_ is Nil!3830) lt!111996))))

(assert (=> d!79311 (= (drop!217 lt!111996 (+ 0 1)) lt!112188)))

(declare-fun bm!14905 () Bool)

(assert (=> bm!14905 (= call!14910 (size!3060 lt!111996))))

(declare-fun b!272039 () Bool)

(assert (=> b!272039 (= e!169019 call!14910)))

(assert (= (and d!79311 c!51570) b!272031))

(assert (= (and d!79311 (not c!51570)) b!272037))

(assert (= (and b!272037 c!51572) b!272033))

(assert (= (and b!272037 (not c!51572)) b!272034))

(assert (= (and d!79311 res!124189) b!272032))

(assert (= (and b!272032 c!51569) b!272039))

(assert (= (and b!272032 (not c!51569)) b!272038))

(assert (= (and b!272038 c!51571) b!272036))

(assert (= (and b!272038 (not c!51571)) b!272035))

(assert (= (or b!272039 b!272038 b!272035) bm!14905))

(declare-fun m!345073 () Bool)

(assert (=> b!272032 m!345073))

(declare-fun m!345075 () Bool)

(assert (=> b!272034 m!345075))

(declare-fun m!345077 () Bool)

(assert (=> d!79311 m!345077))

(assert (=> d!79311 m!344983))

(assert (=> bm!14905 m!344985))

(assert (=> b!271612 d!79311))

(declare-fun b!272040 () Bool)

(declare-fun e!169027 () List!3840)

(assert (=> b!272040 (= e!169027 Nil!3830)))

(declare-fun b!272041 () Bool)

(declare-fun e!169028 () Bool)

(declare-fun lt!112189 () List!3840)

(declare-fun e!169024 () Int)

(assert (=> b!272041 (= e!169028 (= (size!3060 lt!112189) e!169024))))

(declare-fun c!51573 () Bool)

(assert (=> b!272041 (= c!51573 (<= 0 0))))

(declare-fun b!272042 () Bool)

(declare-fun e!169026 () List!3840)

(assert (=> b!272042 (= e!169026 lt!111998)))

(declare-fun b!272043 () Bool)

(assert (=> b!272043 (= e!169026 (drop!217 (t!38514 lt!111998) (- 0 1)))))

(declare-fun b!272044 () Bool)

(declare-fun e!169025 () Int)

(declare-fun call!14911 () Int)

(assert (=> b!272044 (= e!169025 (- call!14911 0))))

(declare-fun b!272045 () Bool)

(assert (=> b!272045 (= e!169025 0)))

(declare-fun b!272046 () Bool)

(assert (=> b!272046 (= e!169027 e!169026)))

(declare-fun c!51576 () Bool)

(assert (=> b!272046 (= c!51576 (<= 0 0))))

(declare-fun b!272047 () Bool)

(assert (=> b!272047 (= e!169024 e!169025)))

(declare-fun c!51575 () Bool)

(assert (=> b!272047 (= c!51575 (>= 0 call!14911))))

(declare-fun d!79313 () Bool)

(assert (=> d!79313 e!169028))

(declare-fun res!124190 () Bool)

(assert (=> d!79313 (=> (not res!124190) (not e!169028))))

(assert (=> d!79313 (= res!124190 (= ((_ map implies) (content!553 lt!112189) (content!553 lt!111998)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79313 (= lt!112189 e!169027)))

(declare-fun c!51574 () Bool)

(assert (=> d!79313 (= c!51574 ((_ is Nil!3830) lt!111998))))

(assert (=> d!79313 (= (drop!217 lt!111998 0) lt!112189)))

(declare-fun bm!14906 () Bool)

(assert (=> bm!14906 (= call!14911 (size!3060 lt!111998))))

(declare-fun b!272048 () Bool)

(assert (=> b!272048 (= e!169024 call!14911)))

(assert (= (and d!79313 c!51574) b!272040))

(assert (= (and d!79313 (not c!51574)) b!272046))

(assert (= (and b!272046 c!51576) b!272042))

(assert (= (and b!272046 (not c!51576)) b!272043))

(assert (= (and d!79313 res!124190) b!272041))

(assert (= (and b!272041 c!51573) b!272048))

(assert (= (and b!272041 (not c!51573)) b!272047))

(assert (= (and b!272047 c!51575) b!272045))

(assert (= (and b!272047 (not c!51575)) b!272044))

(assert (= (or b!272048 b!272047 b!272044) bm!14906))

(declare-fun m!345079 () Bool)

(assert (=> b!272041 m!345079))

(declare-fun m!345081 () Bool)

(assert (=> b!272043 m!345081))

(declare-fun m!345083 () Bool)

(assert (=> d!79313 m!345083))

(declare-fun m!345085 () Bool)

(assert (=> d!79313 m!345085))

(assert (=> bm!14906 m!344975))

(assert (=> b!271612 d!79313))

(declare-fun d!79315 () Bool)

(assert (=> d!79315 (= (tail!478 (drop!217 lt!111996 0)) (drop!217 lt!111996 (+ 0 1)))))

(declare-fun lt!112192 () Unit!4936)

(declare-fun choose!2466 (List!3840 Int) Unit!4936)

(assert (=> d!79315 (= lt!112192 (choose!2466 lt!111996 0))))

(declare-fun e!169031 () Bool)

(assert (=> d!79315 e!169031))

(declare-fun res!124193 () Bool)

(assert (=> d!79315 (=> (not res!124193) (not e!169031))))

(assert (=> d!79315 (= res!124193 (>= 0 0))))

(assert (=> d!79315 (= (lemmaDropTail!196 lt!111996 0) lt!112192)))

(declare-fun b!272051 () Bool)

(assert (=> b!272051 (= e!169031 (< 0 (size!3060 lt!111996)))))

(assert (= (and d!79315 res!124193) b!272051))

(assert (=> d!79315 m!344437))

(assert (=> d!79315 m!344437))

(assert (=> d!79315 m!344441))

(assert (=> d!79315 m!344443))

(declare-fun m!345087 () Bool)

(assert (=> d!79315 m!345087))

(assert (=> b!272051 m!344985))

(assert (=> b!271612 d!79315))

(declare-fun d!79317 () Bool)

(declare-fun e!169034 () Bool)

(assert (=> d!79317 e!169034))

(declare-fun res!124198 () Bool)

(assert (=> d!79317 (=> (not res!124198) (not e!169034))))

(declare-fun lt!112199 () Option!813)

(assert (=> d!79317 (= res!124198 (= (isDefined!656 lt!112199) (isDefined!658 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002))))))))

(declare-fun e!169036 () Option!813)

(assert (=> d!79317 (= lt!112199 e!169036)))

(declare-fun c!51577 () Bool)

(assert (=> d!79317 (= c!51577 (and ((_ is Cons!3829) rules!1920) ((_ is Nil!3829) (t!38513 rules!1920))))))

(declare-fun lt!112194 () Unit!4936)

(declare-fun lt!112197 () Unit!4936)

(assert (=> d!79317 (= lt!112194 lt!112197)))

(declare-fun lt!112193 () List!3838)

(declare-fun lt!112198 () List!3838)

(assert (=> d!79317 (isPrefix!399 lt!112193 lt!112198)))

(assert (=> d!79317 (= lt!112197 (lemmaIsPrefixRefl!209 lt!112193 lt!112198))))

(assert (=> d!79317 (= lt!112198 (list!1567 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))

(assert (=> d!79317 (= lt!112193 (list!1567 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))

(assert (=> d!79317 (rulesValidInductive!204 thiss!17480 rules!1920)))

(assert (=> d!79317 (= (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)) lt!112199)))

(declare-fun b!272052 () Bool)

(declare-fun e!169032 () Bool)

(declare-fun e!169035 () Bool)

(assert (=> b!272052 (= e!169032 e!169035)))

(declare-fun res!124196 () Bool)

(assert (=> b!272052 (=> (not res!124196) (not e!169035))))

(assert (=> b!272052 (= res!124196 (= (_1!2363 (get!1270 lt!112199)) (_1!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))))))

(declare-fun b!272053 () Bool)

(declare-fun res!124195 () Bool)

(assert (=> b!272053 (=> (not res!124195) (not e!169034))))

(declare-fun e!169037 () Bool)

(assert (=> b!272053 (= res!124195 e!169037)))

(declare-fun res!124199 () Bool)

(assert (=> b!272053 (=> res!124199 e!169037)))

(assert (=> b!272053 (= res!124199 (not (isDefined!656 lt!112199)))))

(declare-fun b!272054 () Bool)

(declare-fun e!169033 () Bool)

(assert (=> b!272054 (= e!169037 e!169033)))

(declare-fun res!124197 () Bool)

(assert (=> b!272054 (=> (not res!124197) (not e!169033))))

(assert (=> b!272054 (= res!124197 (= (_1!2363 (get!1270 lt!112199)) (_1!2365 (get!1271 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))))))

(declare-fun b!272055 () Bool)

(declare-fun lt!112196 () Option!813)

(declare-fun lt!112195 () Option!813)

(assert (=> b!272055 (= e!169036 (ite (and ((_ is None!812) lt!112196) ((_ is None!812) lt!112195)) None!812 (ite ((_ is None!812) lt!112195) lt!112196 (ite ((_ is None!812) lt!112196) lt!112195 (ite (>= (size!3051 (_1!2363 (v!14681 lt!112196))) (size!3051 (_1!2363 (v!14681 lt!112195)))) lt!112196 lt!112195)))))))

(declare-fun call!14912 () Option!813)

(assert (=> b!272055 (= lt!112196 call!14912)))

(assert (=> b!272055 (= lt!112195 (maxPrefixZipperSequence!298 thiss!17480 (t!38513 rules!1920) (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))

(declare-fun b!272056 () Bool)

(assert (=> b!272056 (= e!169034 e!169032)))

(declare-fun res!124194 () Bool)

(assert (=> b!272056 (=> res!124194 e!169032)))

(assert (=> b!272056 (= res!124194 (not (isDefined!656 lt!112199)))))

(declare-fun bm!14907 () Bool)

(assert (=> bm!14907 (= call!14912 (maxPrefixOneRuleZipperSequence!114 thiss!17480 (h!9226 rules!1920) (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))

(declare-fun b!272057 () Bool)

(assert (=> b!272057 (= e!169035 (= (list!1567 (_2!2363 (get!1270 lt!112199))) (_2!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))))))

(declare-fun b!272058 () Bool)

(assert (=> b!272058 (= e!169033 (= (list!1567 (_2!2363 (get!1270 lt!112199))) (_2!2365 (get!1271 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112002)))))))))

(declare-fun b!272059 () Bool)

(assert (=> b!272059 (= e!169036 call!14912)))

(assert (= (and d!79317 c!51577) b!272059))

(assert (= (and d!79317 (not c!51577)) b!272055))

(assert (= (or b!272059 b!272055) bm!14907))

(assert (= (and d!79317 res!124198) b!272053))

(assert (= (and b!272053 (not res!124199)) b!272054))

(assert (= (and b!272054 res!124197) b!272058))

(assert (= (and b!272053 res!124195) b!272056))

(assert (= (and b!272056 (not res!124194)) b!272052))

(assert (= (and b!272052 res!124196) b!272057))

(assert (=> bm!14907 m!344435))

(declare-fun m!345089 () Bool)

(assert (=> bm!14907 m!345089))

(declare-fun m!345091 () Bool)

(assert (=> b!272056 m!345091))

(assert (=> d!79317 m!345091))

(declare-fun m!345093 () Bool)

(assert (=> d!79317 m!345093))

(declare-fun m!345095 () Bool)

(assert (=> d!79317 m!345095))

(declare-fun m!345097 () Bool)

(assert (=> d!79317 m!345097))

(declare-fun m!345099 () Bool)

(assert (=> d!79317 m!345099))

(assert (=> d!79317 m!344675))

(declare-fun m!345101 () Bool)

(assert (=> d!79317 m!345101))

(assert (=> d!79317 m!345095))

(assert (=> d!79317 m!344435))

(assert (=> d!79317 m!345101))

(declare-fun m!345103 () Bool)

(assert (=> b!272054 m!345103))

(assert (=> b!272054 m!344435))

(assert (=> b!272054 m!345101))

(assert (=> b!272054 m!345101))

(assert (=> b!272054 m!345095))

(assert (=> b!272054 m!345095))

(declare-fun m!345105 () Bool)

(assert (=> b!272054 m!345105))

(assert (=> b!272058 m!345103))

(assert (=> b!272058 m!345095))

(assert (=> b!272058 m!345105))

(declare-fun m!345107 () Bool)

(assert (=> b!272058 m!345107))

(assert (=> b!272058 m!345101))

(assert (=> b!272058 m!345095))

(assert (=> b!272058 m!344435))

(assert (=> b!272058 m!345101))

(assert (=> b!272057 m!345103))

(assert (=> b!272057 m!344435))

(assert (=> b!272057 m!345101))

(assert (=> b!272057 m!345107))

(declare-fun m!345109 () Bool)

(assert (=> b!272057 m!345109))

(declare-fun m!345111 () Bool)

(assert (=> b!272057 m!345111))

(assert (=> b!272057 m!345101))

(assert (=> b!272057 m!345109))

(assert (=> b!272055 m!344435))

(declare-fun m!345113 () Bool)

(assert (=> b!272055 m!345113))

(assert (=> b!272053 m!345091))

(assert (=> b!272052 m!345103))

(assert (=> b!272052 m!344435))

(assert (=> b!272052 m!345101))

(assert (=> b!272052 m!345101))

(assert (=> b!272052 m!345109))

(assert (=> b!272052 m!345109))

(assert (=> b!272052 m!345111))

(assert (=> b!271612 d!79317))

(declare-fun d!79319 () Bool)

(declare-fun lt!112202 () Token!1206)

(assert (=> d!79319 (contains!723 lt!111998 lt!112202)))

(declare-fun e!169043 () Token!1206)

(assert (=> d!79319 (= lt!112202 e!169043)))

(declare-fun c!51580 () Bool)

(assert (=> d!79319 (= c!51580 (= 0 0))))

(declare-fun e!169042 () Bool)

(assert (=> d!79319 e!169042))

(declare-fun res!124202 () Bool)

(assert (=> d!79319 (=> (not res!124202) (not e!169042))))

(assert (=> d!79319 (= res!124202 (<= 0 0))))

(assert (=> d!79319 (= (apply!774 lt!111998 0) lt!112202)))

(declare-fun b!272066 () Bool)

(assert (=> b!272066 (= e!169042 (< 0 (size!3060 lt!111998)))))

(declare-fun b!272067 () Bool)

(assert (=> b!272067 (= e!169043 (head!888 lt!111998))))

(declare-fun b!272068 () Bool)

(assert (=> b!272068 (= e!169043 (apply!774 (tail!478 lt!111998) (- 0 1)))))

(assert (= (and d!79319 res!124202) b!272066))

(assert (= (and d!79319 c!51580) b!272067))

(assert (= (and d!79319 (not c!51580)) b!272068))

(declare-fun m!345115 () Bool)

(assert (=> d!79319 m!345115))

(assert (=> b!272066 m!344975))

(declare-fun m!345117 () Bool)

(assert (=> b!272067 m!345117))

(declare-fun m!345119 () Bool)

(assert (=> b!272068 m!345119))

(assert (=> b!272068 m!345119))

(declare-fun m!345121 () Bool)

(assert (=> b!272068 m!345121))

(assert (=> b!271612 d!79319))

(declare-fun d!79321 () Bool)

(declare-fun lt!112205 () Token!1206)

(assert (=> d!79321 (= lt!112205 (apply!774 (list!1570 (seqFromList!830 (t!38514 tokens!465))) 0))))

(declare-fun apply!776 (Conc!1285 Int) Token!1206)

(assert (=> d!79321 (= lt!112205 (apply!776 (c!51396 (seqFromList!830 (t!38514 tokens!465))) 0))))

(declare-fun e!169046 () Bool)

(assert (=> d!79321 e!169046))

(declare-fun res!124205 () Bool)

(assert (=> d!79321 (=> (not res!124205) (not e!169046))))

(assert (=> d!79321 (= res!124205 (<= 0 0))))

(assert (=> d!79321 (= (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0) lt!112205)))

(declare-fun b!272071 () Bool)

(assert (=> b!272071 (= e!169046 (< 0 (size!3055 (seqFromList!830 (t!38514 tokens!465)))))))

(assert (= (and d!79321 res!124205) b!272071))

(assert (=> d!79321 m!343753))

(assert (=> d!79321 m!344423))

(assert (=> d!79321 m!344423))

(declare-fun m!345123 () Bool)

(assert (=> d!79321 m!345123))

(declare-fun m!345125 () Bool)

(assert (=> d!79321 m!345125))

(assert (=> b!272071 m!343753))

(assert (=> b!272071 m!344415))

(assert (=> b!271612 d!79321))

(declare-fun d!79323 () Bool)

(declare-fun lt!112206 () BalanceConc!2576)

(assert (=> d!79323 (= (list!1567 lt!112206) (originalCharacters!774 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))))

(assert (=> d!79323 (= lt!112206 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))) (value!25149 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))))

(assert (=> d!79323 (= (charsOf!376 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) lt!112206)))

(declare-fun b_lambda!8683 () Bool)

(assert (=> (not b_lambda!8683) (not d!79323)))

(declare-fun t!38593 () Bool)

(declare-fun tb!15443 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))) t!38593) tb!15443))

(declare-fun b!272072 () Bool)

(declare-fun e!169047 () Bool)

(declare-fun tp!102843 () Bool)

(assert (=> b!272072 (= e!169047 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))) (value!25149 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))) tp!102843))))

(declare-fun result!19070 () Bool)

(assert (=> tb!15443 (= result!19070 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))) (value!25149 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))) e!169047))))

(assert (= tb!15443 b!272072))

(declare-fun m!345127 () Bool)

(assert (=> b!272072 m!345127))

(declare-fun m!345129 () Bool)

(assert (=> tb!15443 m!345129))

(assert (=> d!79323 t!38593))

(declare-fun b_and!21739 () Bool)

(assert (= b_and!21723 (and (=> t!38593 result!19070) b_and!21739)))

(declare-fun t!38595 () Bool)

(declare-fun tb!15445 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))) t!38595) tb!15445))

(declare-fun result!19072 () Bool)

(assert (= result!19072 result!19070))

(assert (=> d!79323 t!38595))

(declare-fun b_and!21741 () Bool)

(assert (= b_and!21727 (and (=> t!38595 result!19072) b_and!21741)))

(declare-fun tb!15447 () Bool)

(declare-fun t!38597 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))) t!38597) tb!15447))

(declare-fun result!19074 () Bool)

(assert (= result!19074 result!19070))

(assert (=> d!79323 t!38597))

(declare-fun b_and!21743 () Bool)

(assert (= b_and!21715 (and (=> t!38597 result!19074) b_and!21743)))

(declare-fun t!38599 () Bool)

(declare-fun tb!15449 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))) t!38599) tb!15449))

(declare-fun result!19076 () Bool)

(assert (= result!19076 result!19070))

(assert (=> d!79323 t!38599))

(declare-fun b_and!21745 () Bool)

(assert (= b_and!21717 (and (=> t!38599 result!19076) b_and!21745)))

(declare-fun tb!15451 () Bool)

(declare-fun t!38601 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))) t!38601) tb!15451))

(declare-fun result!19078 () Bool)

(assert (= result!19078 result!19070))

(assert (=> d!79323 t!38601))

(declare-fun b_and!21747 () Bool)

(assert (= b_and!21719 (and (=> t!38601 result!19078) b_and!21747)))

(declare-fun m!345131 () Bool)

(assert (=> d!79323 m!345131))

(declare-fun m!345133 () Bool)

(assert (=> d!79323 m!345133))

(assert (=> b!271612 d!79323))

(declare-fun d!79325 () Bool)

(assert (=> d!79325 (= (list!1567 lt!111889) (list!1571 (c!51394 lt!111889)))))

(declare-fun bs!30345 () Bool)

(assert (= bs!30345 d!79325))

(declare-fun m!345135 () Bool)

(assert (=> bs!30345 m!345135))

(assert (=> d!79043 d!79325))

(declare-fun d!79327 () Bool)

(assert (=> d!79327 (forall!964 (dropList!164 lt!111755 0) lambda!9191)))

(declare-fun lt!112209 () Unit!4936)

(declare-fun choose!2467 (List!3840 List!3840 Int) Unit!4936)

(assert (=> d!79327 (= lt!112209 (choose!2467 (list!1570 lt!111755) (dropList!164 lt!111755 0) lambda!9191))))

(assert (=> d!79327 (forall!964 (list!1570 lt!111755) lambda!9191)))

(assert (=> d!79327 (= (lemmaContentSubsetPreservesForall!108 (list!1570 lt!111755) (dropList!164 lt!111755 0) lambda!9191) lt!112209)))

(declare-fun bs!30346 () Bool)

(assert (= bs!30346 d!79327))

(assert (=> bs!30346 m!343977))

(declare-fun m!345137 () Bool)

(assert (=> bs!30346 m!345137))

(assert (=> bs!30346 m!343845))

(assert (=> bs!30346 m!343977))

(declare-fun m!345139 () Bool)

(assert (=> bs!30346 m!345139))

(assert (=> bs!30346 m!343845))

(declare-fun m!345141 () Bool)

(assert (=> bs!30346 m!345141))

(assert (=> d!79043 d!79327))

(declare-fun d!79329 () Bool)

(assert (=> d!79329 (= (dropList!164 lt!111755 0) (drop!217 (list!1574 (c!51396 lt!111755)) 0))))

(declare-fun bs!30347 () Bool)

(assert (= bs!30347 d!79329))

(declare-fun m!345143 () Bool)

(assert (=> bs!30347 m!345143))

(assert (=> bs!30347 m!345143))

(declare-fun m!345145 () Bool)

(assert (=> bs!30347 m!345145))

(assert (=> d!79043 d!79329))

(declare-fun d!79331 () Bool)

(assert (=> d!79331 (= (list!1570 lt!111755) (list!1574 (c!51396 lt!111755)))))

(declare-fun bs!30348 () Bool)

(assert (= bs!30348 d!79331))

(assert (=> bs!30348 m!345143))

(assert (=> d!79043 d!79331))

(declare-fun bs!30349 () Bool)

(declare-fun b!272077 () Bool)

(assert (= bs!30349 (and b!272077 b!271373)))

(declare-fun lambda!9212 () Int)

(assert (=> bs!30349 (= lambda!9212 lambda!9192)))

(declare-fun bs!30350 () Bool)

(assert (= bs!30350 (and b!272077 b!272023)))

(assert (=> bs!30350 (= lambda!9212 lambda!9211)))

(declare-fun bs!30351 () Bool)

(assert (= bs!30351 (and b!272077 b!271552)))

(assert (=> bs!30351 (= lambda!9212 lambda!9204)))

(declare-fun bs!30352 () Bool)

(assert (= bs!30352 (and b!272077 b!271207)))

(assert (=> bs!30352 (= lambda!9212 lambda!9172)))

(declare-fun bs!30353 () Bool)

(assert (= bs!30353 (and b!272077 b!271466)))

(assert (=> bs!30353 (= lambda!9212 lambda!9200)))

(declare-fun bs!30354 () Bool)

(assert (= bs!30354 (and b!272077 b!271612)))

(assert (=> bs!30354 (= lambda!9212 lambda!9206)))

(declare-fun bs!30355 () Bool)

(assert (= bs!30355 (and b!272077 d!79155)))

(assert (=> bs!30355 (not (= lambda!9212 lambda!9205))))

(declare-fun bs!30356 () Bool)

(assert (= bs!30356 (and b!272077 d!79033)))

(assert (=> bs!30356 (= lambda!9212 lambda!9183)))

(declare-fun bs!30357 () Bool)

(assert (= bs!30357 (and b!272077 d!79043)))

(assert (=> bs!30357 (not (= lambda!9212 lambda!9191))))

(declare-fun bs!30358 () Bool)

(assert (= bs!30358 (and b!272077 d!79309)))

(assert (=> bs!30358 (not (= lambda!9212 lambda!9210))))

(declare-fun bs!30359 () Bool)

(assert (= bs!30359 (and b!272077 b!271212)))

(assert (=> bs!30359 (not (= lambda!9212 lambda!9171))))

(declare-fun b!272083 () Bool)

(declare-fun e!169054 () Bool)

(assert (=> b!272083 (= e!169054 true)))

(declare-fun b!272082 () Bool)

(declare-fun e!169053 () Bool)

(assert (=> b!272082 (= e!169053 e!169054)))

(declare-fun b!272081 () Bool)

(declare-fun e!169052 () Bool)

(assert (=> b!272081 (= e!169052 e!169053)))

(assert (=> b!272077 e!169052))

(assert (= b!272082 b!272083))

(assert (= b!272081 b!272082))

(assert (= (and b!272077 ((_ is Cons!3829) rules!1920)) b!272081))

(assert (=> b!272083 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9212))))

(assert (=> b!272083 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9212))))

(assert (=> b!272077 true))

(declare-fun b!272073 () Bool)

(declare-fun e!169049 () List!3838)

(declare-fun call!14917 () List!3838)

(declare-fun lt!112214 () List!3838)

(assert (=> b!272073 (= e!169049 (++!1002 call!14917 lt!112214))))

(declare-fun b!272074 () Bool)

(declare-fun e!169051 () List!3838)

(assert (=> b!272074 (= e!169051 Nil!3828)))

(declare-fun d!79333 () Bool)

(declare-fun c!51584 () Bool)

(assert (=> d!79333 (= c!51584 ((_ is Cons!3830) (dropList!164 lt!111755 0)))))

(assert (=> d!79333 (= (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (dropList!164 lt!111755 0) separatorToken!170) e!169051)))

(declare-fun b!272075 () Bool)

(declare-fun e!169048 () List!3838)

(assert (=> b!272075 (= e!169048 call!14917)))

(declare-fun bm!14908 () Bool)

(declare-fun call!14914 () BalanceConc!2576)

(declare-fun call!14915 () BalanceConc!2576)

(assert (=> bm!14908 (= call!14914 call!14915)))

(declare-fun b!272076 () Bool)

(declare-fun c!51581 () Bool)

(declare-fun lt!112215 () Option!815)

(assert (=> b!272076 (= c!51581 (and ((_ is Some!814) lt!112215) (not (= (_1!2365 (v!14689 lt!112215)) (h!9227 (dropList!164 lt!111755 0))))))))

(assert (=> b!272076 (= e!169048 e!169049)))

(assert (=> b!272077 (= e!169051 e!169048)))

(declare-fun lt!112213 () Unit!4936)

(assert (=> b!272077 (= lt!112213 (forallContained!286 (dropList!164 lt!111755 0) lambda!9212 (h!9227 (dropList!164 lt!111755 0))))))

(assert (=> b!272077 (= lt!112214 (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (t!38514 (dropList!164 lt!111755 0)) separatorToken!170))))

(assert (=> b!272077 (= lt!112215 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 (charsOf!376 (h!9227 (dropList!164 lt!111755 0)))) lt!112214)))))

(declare-fun c!51583 () Bool)

(assert (=> b!272077 (= c!51583 (and ((_ is Some!814) lt!112215) (= (_1!2365 (v!14689 lt!112215)) (h!9227 (dropList!164 lt!111755 0)))))))

(declare-fun bm!14909 () Bool)

(declare-fun call!14916 () List!3838)

(declare-fun e!169050 () BalanceConc!2576)

(assert (=> bm!14909 (= call!14916 (list!1567 e!169050))))

(declare-fun c!51582 () Bool)

(assert (=> bm!14909 (= c!51582 c!51581)))

(declare-fun b!272078 () Bool)

(assert (=> b!272078 (= e!169050 call!14914)))

(declare-fun bm!14910 () Bool)

(assert (=> bm!14910 (= call!14915 (charsOf!376 (h!9227 (dropList!164 lt!111755 0))))))

(declare-fun b!272079 () Bool)

(assert (=> b!272079 (= e!169049 Nil!3828)))

(assert (=> b!272079 (= (print!342 thiss!17480 (singletonSeq!277 (h!9227 (dropList!164 lt!111755 0)))) (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 (dropList!164 lt!111755 0))) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!112212 () Unit!4936)

(declare-fun Unit!4958 () Unit!4936)

(assert (=> b!272079 (= lt!112212 Unit!4958)))

(declare-fun lt!112211 () Unit!4936)

(assert (=> b!272079 (= lt!112211 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 call!14916 lt!112214))))

(assert (=> b!272079 false))

(declare-fun lt!112210 () Unit!4936)

(declare-fun Unit!4959 () Unit!4936)

(assert (=> b!272079 (= lt!112210 Unit!4959)))

(declare-fun bm!14911 () Bool)

(declare-fun call!14913 () List!3838)

(assert (=> bm!14911 (= call!14917 (++!1002 call!14913 (ite c!51583 lt!112214 call!14916)))))

(declare-fun bm!14912 () Bool)

(assert (=> bm!14912 (= call!14913 (list!1567 (ite c!51583 call!14915 call!14914)))))

(declare-fun b!272080 () Bool)

(assert (=> b!272080 (= e!169050 (charsOf!376 separatorToken!170))))

(assert (= (and d!79333 c!51584) b!272077))

(assert (= (and d!79333 (not c!51584)) b!272074))

(assert (= (and b!272077 c!51583) b!272075))

(assert (= (and b!272077 (not c!51583)) b!272076))

(assert (= (and b!272076 c!51581) b!272073))

(assert (= (and b!272076 (not c!51581)) b!272079))

(assert (= (or b!272073 b!272079) bm!14908))

(assert (= (or b!272073 b!272079) bm!14909))

(assert (= (and bm!14909 c!51582) b!272080))

(assert (= (and bm!14909 (not c!51582)) b!272078))

(assert (= (or b!272075 bm!14908) bm!14910))

(assert (= (or b!272075 b!272073) bm!14912))

(assert (= (or b!272075 b!272073) bm!14911))

(declare-fun m!345147 () Bool)

(assert (=> bm!14910 m!345147))

(declare-fun m!345149 () Bool)

(assert (=> b!272079 m!345149))

(assert (=> b!272079 m!345149))

(declare-fun m!345151 () Bool)

(assert (=> b!272079 m!345151))

(assert (=> b!272079 m!345149))

(declare-fun m!345153 () Bool)

(assert (=> b!272079 m!345153))

(declare-fun m!345155 () Bool)

(assert (=> b!272079 m!345155))

(declare-fun m!345157 () Bool)

(assert (=> b!272073 m!345157))

(declare-fun m!345159 () Bool)

(assert (=> bm!14911 m!345159))

(declare-fun m!345161 () Bool)

(assert (=> bm!14909 m!345161))

(declare-fun m!345163 () Bool)

(assert (=> bm!14912 m!345163))

(assert (=> b!272080 m!343747))

(assert (=> b!272077 m!343977))

(declare-fun m!345165 () Bool)

(assert (=> b!272077 m!345165))

(declare-fun m!345167 () Bool)

(assert (=> b!272077 m!345167))

(declare-fun m!345169 () Bool)

(assert (=> b!272077 m!345169))

(declare-fun m!345171 () Bool)

(assert (=> b!272077 m!345171))

(assert (=> b!272077 m!345147))

(assert (=> b!272077 m!345169))

(declare-fun m!345173 () Bool)

(assert (=> b!272077 m!345173))

(assert (=> b!272077 m!345147))

(assert (=> b!272077 m!345167))

(assert (=> d!79043 d!79333))

(declare-fun d!79335 () Bool)

(declare-fun lt!112218 () Int)

(assert (=> d!79335 (= lt!112218 (size!3060 (list!1570 lt!111755)))))

(declare-fun size!3061 (Conc!1285) Int)

(assert (=> d!79335 (= lt!112218 (size!3061 (c!51396 lt!111755)))))

(assert (=> d!79335 (= (size!3055 lt!111755) lt!112218)))

(declare-fun bs!30360 () Bool)

(assert (= bs!30360 d!79335))

(assert (=> bs!30360 m!343845))

(assert (=> bs!30360 m!343845))

(declare-fun m!345175 () Bool)

(assert (=> bs!30360 m!345175))

(declare-fun m!345177 () Bool)

(assert (=> bs!30360 m!345177))

(assert (=> d!79043 d!79335))

(declare-fun b!272087 () Bool)

(declare-fun lt!112219 () List!3838)

(declare-fun e!169055 () Bool)

(assert (=> b!272087 (= e!169055 (or (not (= lt!111762 Nil!3828)) (= lt!112219 (t!38512 lt!111765))))))

(declare-fun b!272085 () Bool)

(declare-fun e!169056 () List!3838)

(assert (=> b!272085 (= e!169056 (Cons!3828 (h!9225 (t!38512 lt!111765)) (++!1002 (t!38512 (t!38512 lt!111765)) lt!111762)))))

(declare-fun d!79337 () Bool)

(assert (=> d!79337 e!169055))

(declare-fun res!124207 () Bool)

(assert (=> d!79337 (=> (not res!124207) (not e!169055))))

(assert (=> d!79337 (= res!124207 (= (content!551 lt!112219) ((_ map or) (content!551 (t!38512 lt!111765)) (content!551 lt!111762))))))

(assert (=> d!79337 (= lt!112219 e!169056)))

(declare-fun c!51585 () Bool)

(assert (=> d!79337 (= c!51585 ((_ is Nil!3828) (t!38512 lt!111765)))))

(assert (=> d!79337 (= (++!1002 (t!38512 lt!111765) lt!111762) lt!112219)))

(declare-fun b!272086 () Bool)

(declare-fun res!124206 () Bool)

(assert (=> b!272086 (=> (not res!124206) (not e!169055))))

(assert (=> b!272086 (= res!124206 (= (size!3053 lt!112219) (+ (size!3053 (t!38512 lt!111765)) (size!3053 lt!111762))))))

(declare-fun b!272084 () Bool)

(assert (=> b!272084 (= e!169056 lt!111762)))

(assert (= (and d!79337 c!51585) b!272084))

(assert (= (and d!79337 (not c!51585)) b!272085))

(assert (= (and d!79337 res!124207) b!272086))

(assert (= (and b!272086 res!124206) b!272087))

(declare-fun m!345179 () Bool)

(assert (=> b!272085 m!345179))

(declare-fun m!345181 () Bool)

(assert (=> d!79337 m!345181))

(declare-fun m!345183 () Bool)

(assert (=> d!79337 m!345183))

(assert (=> d!79337 m!344405))

(declare-fun m!345185 () Bool)

(assert (=> b!272086 m!345185))

(declare-fun m!345187 () Bool)

(assert (=> b!272086 m!345187))

(assert (=> b!272086 m!344409))

(assert (=> b!271603 d!79337))

(declare-fun d!79339 () Bool)

(assert (=> d!79339 (= (list!1567 (ite c!51478 call!14882 call!14881)) (list!1571 (c!51394 (ite c!51478 call!14882 call!14881))))))

(declare-fun bs!30361 () Bool)

(assert (= bs!30361 d!79339))

(declare-fun m!345189 () Bool)

(assert (=> bs!30361 m!345189))

(assert (=> bm!14879 d!79339))

(declare-fun d!79341 () Bool)

(declare-fun lt!112222 () Int)

(assert (=> d!79341 (>= lt!112222 0)))

(declare-fun e!169059 () Int)

(assert (=> d!79341 (= lt!112222 e!169059)))

(declare-fun c!51588 () Bool)

(assert (=> d!79341 (= c!51588 ((_ is Nil!3828) lt!111988))))

(assert (=> d!79341 (= (size!3053 lt!111988) lt!112222)))

(declare-fun b!272092 () Bool)

(assert (=> b!272092 (= e!169059 0)))

(declare-fun b!272093 () Bool)

(assert (=> b!272093 (= e!169059 (+ 1 (size!3053 (t!38512 lt!111988))))))

(assert (= (and d!79341 c!51588) b!272092))

(assert (= (and d!79341 (not c!51588)) b!272093))

(declare-fun m!345191 () Bool)

(assert (=> b!272093 m!345191))

(assert (=> b!271590 d!79341))

(declare-fun d!79343 () Bool)

(declare-fun lt!112223 () Int)

(assert (=> d!79343 (>= lt!112223 0)))

(declare-fun e!169060 () Int)

(assert (=> d!79343 (= lt!112223 e!169060)))

(declare-fun c!51589 () Bool)

(assert (=> d!79343 (= c!51589 ((_ is Nil!3828) (++!1002 lt!111765 lt!111756)))))

(assert (=> d!79343 (= (size!3053 (++!1002 lt!111765 lt!111756)) lt!112223)))

(declare-fun b!272094 () Bool)

(assert (=> b!272094 (= e!169060 0)))

(declare-fun b!272095 () Bool)

(assert (=> b!272095 (= e!169060 (+ 1 (size!3053 (t!38512 (++!1002 lt!111765 lt!111756)))))))

(assert (= (and d!79343 c!51589) b!272094))

(assert (= (and d!79343 (not c!51589)) b!272095))

(declare-fun m!345193 () Bool)

(assert (=> b!272095 m!345193))

(assert (=> b!271590 d!79343))

(declare-fun d!79345 () Bool)

(declare-fun lt!112224 () Int)

(assert (=> d!79345 (>= lt!112224 0)))

(declare-fun e!169061 () Int)

(assert (=> d!79345 (= lt!112224 e!169061)))

(declare-fun c!51590 () Bool)

(assert (=> d!79345 (= c!51590 ((_ is Nil!3828) lt!111759))))

(assert (=> d!79345 (= (size!3053 lt!111759) lt!112224)))

(declare-fun b!272096 () Bool)

(assert (=> b!272096 (= e!169061 0)))

(declare-fun b!272097 () Bool)

(assert (=> b!272097 (= e!169061 (+ 1 (size!3053 (t!38512 lt!111759))))))

(assert (= (and d!79345 c!51590) b!272096))

(assert (= (and d!79345 (not c!51590)) b!272097))

(declare-fun m!345195 () Bool)

(assert (=> b!272097 m!345195))

(assert (=> b!271590 d!79345))

(declare-fun d!79347 () Bool)

(declare-fun lt!112225 () Token!1206)

(assert (=> d!79347 (= lt!112225 (apply!774 (list!1570 (_1!2362 lt!111960)) 0))))

(assert (=> d!79347 (= lt!112225 (apply!776 (c!51396 (_1!2362 lt!111960)) 0))))

(declare-fun e!169062 () Bool)

(assert (=> d!79347 e!169062))

(declare-fun res!124208 () Bool)

(assert (=> d!79347 (=> (not res!124208) (not e!169062))))

(assert (=> d!79347 (= res!124208 (<= 0 0))))

(assert (=> d!79347 (= (apply!773 (_1!2362 lt!111960) 0) lt!112225)))

(declare-fun b!272098 () Bool)

(assert (=> b!272098 (= e!169062 (< 0 (size!3055 (_1!2362 lt!111960))))))

(assert (= (and d!79347 res!124208) b!272098))

(declare-fun m!345197 () Bool)

(assert (=> d!79347 m!345197))

(assert (=> d!79347 m!345197))

(declare-fun m!345199 () Bool)

(assert (=> d!79347 m!345199))

(declare-fun m!345201 () Bool)

(assert (=> d!79347 m!345201))

(assert (=> b!272098 m!344217))

(assert (=> b!271500 d!79347))

(declare-fun d!79349 () Bool)

(declare-fun lt!112226 () BalanceConc!2576)

(assert (=> d!79349 (= (list!1567 lt!112226) (originalCharacters!774 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887))))))

(assert (=> d!79349 (= lt!112226 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887))))) (value!25149 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))))

(assert (=> d!79349 (= (charsOf!376 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887))) lt!112226)))

(declare-fun b_lambda!8685 () Bool)

(assert (=> (not b_lambda!8685) (not d!79349)))

(declare-fun tb!15453 () Bool)

(declare-fun t!38603 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))) t!38603) tb!15453))

(declare-fun b!272099 () Bool)

(declare-fun tp!102844 () Bool)

(declare-fun e!169063 () Bool)

(assert (=> b!272099 (= e!169063 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887))))) (value!25149 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))) tp!102844))))

(declare-fun result!19080 () Bool)

(assert (=> tb!15453 (= result!19080 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887))))) (value!25149 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887))))) e!169063))))

(assert (= tb!15453 b!272099))

(declare-fun m!345203 () Bool)

(assert (=> b!272099 m!345203))

(declare-fun m!345205 () Bool)

(assert (=> tb!15453 m!345205))

(assert (=> d!79349 t!38603))

(declare-fun b_and!21749 () Bool)

(assert (= b_and!21743 (and (=> t!38603 result!19080) b_and!21749)))

(declare-fun tb!15455 () Bool)

(declare-fun t!38605 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))) t!38605) tb!15455))

(declare-fun result!19082 () Bool)

(assert (= result!19082 result!19080))

(assert (=> d!79349 t!38605))

(declare-fun b_and!21751 () Bool)

(assert (= b_and!21745 (and (=> t!38605 result!19082) b_and!21751)))

(declare-fun t!38607 () Bool)

(declare-fun tb!15457 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))) t!38607) tb!15457))

(declare-fun result!19084 () Bool)

(assert (= result!19084 result!19080))

(assert (=> d!79349 t!38607))

(declare-fun b_and!21753 () Bool)

(assert (= b_and!21741 (and (=> t!38607 result!19084) b_and!21753)))

(declare-fun t!38609 () Bool)

(declare-fun tb!15459 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))) t!38609) tb!15459))

(declare-fun result!19086 () Bool)

(assert (= result!19086 result!19080))

(assert (=> d!79349 t!38609))

(declare-fun b_and!21755 () Bool)

(assert (= b_and!21739 (and (=> t!38609 result!19086) b_and!21755)))

(declare-fun t!38611 () Bool)

(declare-fun tb!15461 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))) t!38611) tb!15461))

(declare-fun result!19088 () Bool)

(assert (= result!19088 result!19080))

(assert (=> d!79349 t!38611))

(declare-fun b_and!21757 () Bool)

(assert (= b_and!21747 (and (=> t!38611 result!19088) b_and!21757)))

(declare-fun m!345207 () Bool)

(assert (=> d!79349 m!345207))

(declare-fun m!345209 () Bool)

(assert (=> d!79349 m!345209))

(assert (=> bm!14882 d!79349))

(declare-fun d!79351 () Bool)

(declare-fun c!51593 () Bool)

(assert (=> d!79351 (= c!51593 ((_ is Node!1284) (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))))))

(declare-fun e!169068 () Bool)

(assert (=> d!79351 (= (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))) e!169068)))

(declare-fun b!272106 () Bool)

(declare-fun inv!4744 (Conc!1284) Bool)

(assert (=> b!272106 (= e!169068 (inv!4744 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))))))

(declare-fun b!272107 () Bool)

(declare-fun e!169069 () Bool)

(assert (=> b!272107 (= e!169068 e!169069)))

(declare-fun res!124211 () Bool)

(assert (=> b!272107 (= res!124211 (not ((_ is Leaf!1989) (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))))))))

(assert (=> b!272107 (=> res!124211 e!169069)))

(declare-fun b!272108 () Bool)

(declare-fun inv!4745 (Conc!1284) Bool)

(assert (=> b!272108 (= e!169069 (inv!4745 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))))))

(assert (= (and d!79351 c!51593) b!272106))

(assert (= (and d!79351 (not c!51593)) b!272107))

(assert (= (and b!272107 (not res!124211)) b!272108))

(declare-fun m!345211 () Bool)

(assert (=> b!272106 m!345211))

(declare-fun m!345213 () Bool)

(assert (=> b!272108 m!345213))

(assert (=> b!271572 d!79351))

(declare-fun d!79353 () Bool)

(declare-fun c!51596 () Bool)

(assert (=> d!79353 (= c!51596 ((_ is Nil!3828) lt!111992))))

(declare-fun e!169072 () (InoxSet C!2832))

(assert (=> d!79353 (= (content!551 lt!111992) e!169072)))

(declare-fun b!272113 () Bool)

(assert (=> b!272113 (= e!169072 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!272114 () Bool)

(assert (=> b!272114 (= e!169072 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!111992) true) (content!551 (t!38512 lt!111992))))))

(assert (= (and d!79353 c!51596) b!272113))

(assert (= (and d!79353 (not c!51596)) b!272114))

(declare-fun m!345215 () Bool)

(assert (=> b!272114 m!345215))

(declare-fun m!345217 () Bool)

(assert (=> b!272114 m!345217))

(assert (=> d!79153 d!79353))

(declare-fun d!79355 () Bool)

(declare-fun c!51597 () Bool)

(assert (=> d!79355 (= c!51597 ((_ is Nil!3828) lt!111765))))

(declare-fun e!169073 () (InoxSet C!2832))

(assert (=> d!79355 (= (content!551 lt!111765) e!169073)))

(declare-fun b!272115 () Bool)

(assert (=> b!272115 (= e!169073 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!272116 () Bool)

(assert (=> b!272116 (= e!169073 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!111765) true) (content!551 (t!38512 lt!111765))))))

(assert (= (and d!79355 c!51597) b!272115))

(assert (= (and d!79355 (not c!51597)) b!272116))

(declare-fun m!345219 () Bool)

(assert (=> b!272116 m!345219))

(assert (=> b!272116 m!345183))

(assert (=> d!79153 d!79355))

(declare-fun d!79357 () Bool)

(declare-fun c!51598 () Bool)

(assert (=> d!79357 (= c!51598 ((_ is Nil!3828) lt!111762))))

(declare-fun e!169074 () (InoxSet C!2832))

(assert (=> d!79357 (= (content!551 lt!111762) e!169074)))

(declare-fun b!272117 () Bool)

(assert (=> b!272117 (= e!169074 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!272118 () Bool)

(assert (=> b!272118 (= e!169074 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!111762) true) (content!551 (t!38512 lt!111762))))))

(assert (= (and d!79357 c!51598) b!272117))

(assert (= (and d!79357 (not c!51598)) b!272118))

(declare-fun m!345221 () Bool)

(assert (=> b!272118 m!345221))

(declare-fun m!345223 () Bool)

(assert (=> b!272118 m!345223))

(assert (=> d!79153 d!79357))

(declare-fun d!79359 () Bool)

(assert (=> d!79359 (= (isDefined!656 lt!112086) (not (isEmpty!2440 lt!112086)))))

(declare-fun bs!30362 () Bool)

(assert (= bs!30362 d!79359))

(declare-fun m!345225 () Bool)

(assert (=> bs!30362 m!345225))

(assert (=> b!271762 d!79359))

(declare-fun d!79361 () Bool)

(assert (=> d!79361 (= (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))) (isBalanced!355 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))))))

(declare-fun bs!30363 () Bool)

(assert (= bs!30363 d!79361))

(declare-fun m!345227 () Bool)

(assert (=> bs!30363 m!345227))

(assert (=> tb!15393 d!79361))

(declare-fun d!79363 () Bool)

(assert (=> d!79363 (= (list!1567 (_2!2362 lt!111967)) (list!1571 (c!51394 (_2!2362 lt!111967))))))

(declare-fun bs!30364 () Bool)

(assert (= bs!30364 d!79363))

(declare-fun m!345229 () Bool)

(assert (=> bs!30364 m!345229))

(assert (=> b!271545 d!79363))

(declare-fun b!272129 () Bool)

(declare-fun e!169082 () Bool)

(declare-fun lt!112233 () tuple2!4300)

(assert (=> b!272129 (= e!169082 (= (_2!2366 lt!112233) (list!1567 (seqFromList!829 lt!111765))))))

(declare-fun b!272130 () Bool)

(declare-fun e!169083 () tuple2!4300)

(declare-fun lt!112235 () Option!815)

(declare-fun lt!112234 () tuple2!4300)

(assert (=> b!272130 (= e!169083 (tuple2!4301 (Cons!3830 (_1!2365 (v!14689 lt!112235)) (_1!2366 lt!112234)) (_2!2366 lt!112234)))))

(assert (=> b!272130 (= lt!112234 (lexList!208 thiss!17480 rules!1920 (_2!2365 (v!14689 lt!112235))))))

(declare-fun b!272131 () Bool)

(assert (=> b!272131 (= e!169083 (tuple2!4301 Nil!3830 (list!1567 (seqFromList!829 lt!111765))))))

(declare-fun b!272132 () Bool)

(declare-fun e!169081 () Bool)

(assert (=> b!272132 (= e!169082 e!169081)))

(declare-fun res!124214 () Bool)

(assert (=> b!272132 (= res!124214 (< (size!3053 (_2!2366 lt!112233)) (size!3053 (list!1567 (seqFromList!829 lt!111765)))))))

(assert (=> b!272132 (=> (not res!124214) (not e!169081))))

(declare-fun d!79365 () Bool)

(assert (=> d!79365 e!169082))

(declare-fun c!51604 () Bool)

(assert (=> d!79365 (= c!51604 (> (size!3060 (_1!2366 lt!112233)) 0))))

(assert (=> d!79365 (= lt!112233 e!169083)))

(declare-fun c!51603 () Bool)

(assert (=> d!79365 (= c!51603 ((_ is Some!814) lt!112235))))

(assert (=> d!79365 (= lt!112235 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (seqFromList!829 lt!111765))))))

(assert (=> d!79365 (= (lexList!208 thiss!17480 rules!1920 (list!1567 (seqFromList!829 lt!111765))) lt!112233)))

(declare-fun b!272133 () Bool)

(assert (=> b!272133 (= e!169081 (not (isEmpty!2435 (_1!2366 lt!112233))))))

(assert (= (and d!79365 c!51603) b!272130))

(assert (= (and d!79365 (not c!51603)) b!272131))

(assert (= (and d!79365 c!51604) b!272132))

(assert (= (and d!79365 (not c!51604)) b!272129))

(assert (= (and b!272132 res!124214) b!272133))

(declare-fun m!345231 () Bool)

(assert (=> b!272130 m!345231))

(declare-fun m!345233 () Bool)

(assert (=> b!272132 m!345233))

(assert (=> b!272132 m!344259))

(declare-fun m!345235 () Bool)

(assert (=> b!272132 m!345235))

(declare-fun m!345237 () Bool)

(assert (=> d!79365 m!345237))

(assert (=> d!79365 m!344259))

(declare-fun m!345239 () Bool)

(assert (=> d!79365 m!345239))

(declare-fun m!345241 () Bool)

(assert (=> b!272133 m!345241))

(assert (=> b!271545 d!79365))

(declare-fun d!79367 () Bool)

(assert (=> d!79367 (= (list!1567 (seqFromList!829 lt!111765)) (list!1571 (c!51394 (seqFromList!829 lt!111765))))))

(declare-fun bs!30365 () Bool)

(assert (= bs!30365 d!79367))

(declare-fun m!345243 () Bool)

(assert (=> bs!30365 m!345243))

(assert (=> b!271545 d!79367))

(declare-fun b!272144 () Bool)

(declare-fun e!169089 () List!3838)

(declare-fun list!1575 (IArray!2569) List!3838)

(assert (=> b!272144 (= e!169089 (list!1575 (xs!3883 (c!51394 lt!111758))))))

(declare-fun b!272145 () Bool)

(assert (=> b!272145 (= e!169089 (++!1002 (list!1571 (left!3152 (c!51394 lt!111758))) (list!1571 (right!3482 (c!51394 lt!111758)))))))

(declare-fun b!272142 () Bool)

(declare-fun e!169088 () List!3838)

(assert (=> b!272142 (= e!169088 Nil!3828)))

(declare-fun b!272143 () Bool)

(assert (=> b!272143 (= e!169088 e!169089)))

(declare-fun c!51610 () Bool)

(assert (=> b!272143 (= c!51610 ((_ is Leaf!1989) (c!51394 lt!111758)))))

(declare-fun d!79369 () Bool)

(declare-fun c!51609 () Bool)

(assert (=> d!79369 (= c!51609 ((_ is Empty!1284) (c!51394 lt!111758)))))

(assert (=> d!79369 (= (list!1571 (c!51394 lt!111758)) e!169088)))

(assert (= (and d!79369 c!51609) b!272142))

(assert (= (and d!79369 (not c!51609)) b!272143))

(assert (= (and b!272143 c!51610) b!272144))

(assert (= (and b!272143 (not c!51610)) b!272145))

(declare-fun m!345245 () Bool)

(assert (=> b!272144 m!345245))

(declare-fun m!345247 () Bool)

(assert (=> b!272145 m!345247))

(declare-fun m!345249 () Bool)

(assert (=> b!272145 m!345249))

(assert (=> b!272145 m!345247))

(assert (=> b!272145 m!345249))

(declare-fun m!345251 () Bool)

(assert (=> b!272145 m!345251))

(assert (=> d!79179 d!79369))

(declare-fun d!79371 () Bool)

(assert (=> d!79371 true))

(declare-fun lambda!9215 () Int)

(declare-fun order!2959 () Int)

(declare-fun dynLambda!1975 (Int Int) Int)

(assert (=> d!79371 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1975 order!2959 lambda!9215))))

(declare-fun Forall2!150 (Int) Bool)

(assert (=> d!79371 (= (equivClasses!242 (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (Forall2!150 lambda!9215))))

(declare-fun bs!30366 () Bool)

(assert (= bs!30366 d!79371))

(declare-fun m!345253 () Bool)

(assert (=> bs!30366 m!345253))

(assert (=> b!271622 d!79371))

(declare-fun d!79373 () Bool)

(assert (=> d!79373 (= (list!1567 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))) (list!1571 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))))))

(declare-fun bs!30367 () Bool)

(assert (= bs!30367 d!79373))

(declare-fun m!345255 () Bool)

(assert (=> bs!30367 m!345255))

(assert (=> b!271740 d!79373))

(declare-fun lt!112272 () Bool)

(declare-fun d!79375 () Bool)

(assert (=> d!79375 (= lt!112272 (isEmpty!2432 (list!1567 (_2!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))))))))))

(declare-fun isEmpty!2443 (Conc!1284) Bool)

(assert (=> d!79375 (= lt!112272 (isEmpty!2443 (c!51394 (_2!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))))))))))

(assert (=> d!79375 (= (isEmpty!2434 (_2!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)))))) lt!112272)))

(declare-fun bs!30368 () Bool)

(assert (= bs!30368 d!79375))

(declare-fun m!345257 () Bool)

(assert (=> bs!30368 m!345257))

(assert (=> bs!30368 m!345257))

(declare-fun m!345259 () Bool)

(assert (=> bs!30368 m!345259))

(declare-fun m!345261 () Bool)

(assert (=> bs!30368 m!345261))

(assert (=> b!271625 d!79375))

(declare-fun b!272158 () Bool)

(declare-fun res!124223 () Bool)

(declare-fun e!169096 () Bool)

(assert (=> b!272158 (=> (not res!124223) (not e!169096))))

(declare-fun lt!112273 () tuple2!4292)

(assert (=> b!272158 (= res!124223 (= (list!1570 (_1!2362 lt!112273)) (_1!2366 (lexList!208 thiss!17480 rules!1920 (list!1567 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))))))))))

(declare-fun b!272159 () Bool)

(declare-fun e!169097 () Bool)

(assert (=> b!272159 (= e!169097 (= (_2!2362 lt!112273) (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)))))))

(declare-fun b!272160 () Bool)

(assert (=> b!272160 (= e!169096 (= (list!1567 (_2!2362 lt!112273)) (_2!2366 (lexList!208 thiss!17480 rules!1920 (list!1567 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))))))))))

(declare-fun d!79377 () Bool)

(assert (=> d!79377 e!169096))

(declare-fun res!124221 () Bool)

(assert (=> d!79377 (=> (not res!124221) (not e!169096))))

(assert (=> d!79377 (= res!124221 e!169097)))

(declare-fun c!51613 () Bool)

(assert (=> d!79377 (= c!51613 (> (size!3055 (_1!2362 lt!112273)) 0))))

(assert (=> d!79377 (= lt!112273 (lexTailRecV2!175 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))) (BalanceConc!2577 Empty!1284) (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))) (BalanceConc!2579 Empty!1285)))))

(assert (=> d!79377 (= (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)))) lt!112273)))

(declare-fun b!272161 () Bool)

(declare-fun e!169098 () Bool)

(assert (=> b!272161 (= e!169097 e!169098)))

(declare-fun res!124222 () Bool)

(assert (=> b!272161 (= res!124222 (< (size!3056 (_2!2362 lt!112273)) (size!3056 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))))))))

(assert (=> b!272161 (=> (not res!124222) (not e!169098))))

(declare-fun b!272162 () Bool)

(assert (=> b!272162 (= e!169098 (not (isEmpty!2430 (_1!2362 lt!112273))))))

(assert (= (and d!79377 c!51613) b!272161))

(assert (= (and d!79377 (not c!51613)) b!272159))

(assert (= (and b!272161 res!124222) b!272162))

(assert (= (and d!79377 res!124221) b!272158))

(assert (= (and b!272158 res!124223) b!272160))

(declare-fun m!345263 () Bool)

(assert (=> b!272161 m!345263))

(assert (=> b!272161 m!344151))

(declare-fun m!345265 () Bool)

(assert (=> b!272161 m!345265))

(declare-fun m!345267 () Bool)

(assert (=> b!272162 m!345267))

(declare-fun m!345269 () Bool)

(assert (=> b!272158 m!345269))

(assert (=> b!272158 m!344151))

(declare-fun m!345271 () Bool)

(assert (=> b!272158 m!345271))

(assert (=> b!272158 m!345271))

(declare-fun m!345273 () Bool)

(assert (=> b!272158 m!345273))

(declare-fun m!345275 () Bool)

(assert (=> d!79377 m!345275))

(assert (=> d!79377 m!344151))

(assert (=> d!79377 m!344151))

(declare-fun m!345277 () Bool)

(assert (=> d!79377 m!345277))

(declare-fun m!345279 () Bool)

(assert (=> b!272160 m!345279))

(assert (=> b!272160 m!344151))

(assert (=> b!272160 m!345271))

(assert (=> b!272160 m!345271))

(assert (=> b!272160 m!345273))

(assert (=> b!271625 d!79377))

(declare-fun d!79379 () Bool)

(declare-fun lt!112274 () BalanceConc!2576)

(assert (=> d!79379 (= (list!1567 lt!112274) (printList!293 thiss!17480 (list!1570 (singletonSeq!277 (h!9227 tokens!465)))))))

(assert (=> d!79379 (= lt!112274 (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)) 0 (BalanceConc!2577 Empty!1284)))))

(assert (=> d!79379 (= (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))) lt!112274)))

(declare-fun bs!30369 () Bool)

(assert (= bs!30369 d!79379))

(declare-fun m!345281 () Bool)

(assert (=> bs!30369 m!345281))

(assert (=> bs!30369 m!343683))

(assert (=> bs!30369 m!344483))

(assert (=> bs!30369 m!344483))

(declare-fun m!345283 () Bool)

(assert (=> bs!30369 m!345283))

(assert (=> bs!30369 m!343683))

(assert (=> bs!30369 m!344153))

(assert (=> b!271625 d!79379))

(assert (=> b!271625 d!79203))

(declare-fun d!79381 () Bool)

(declare-fun lt!112275 () Token!1206)

(assert (=> d!79381 (= lt!112275 (apply!774 (list!1570 lt!111755) 0))))

(assert (=> d!79381 (= lt!112275 (apply!776 (c!51396 lt!111755) 0))))

(declare-fun e!169099 () Bool)

(assert (=> d!79381 e!169099))

(declare-fun res!124224 () Bool)

(assert (=> d!79381 (=> (not res!124224) (not e!169099))))

(assert (=> d!79381 (= res!124224 (<= 0 0))))

(assert (=> d!79381 (= (apply!773 lt!111755 0) lt!112275)))

(declare-fun b!272163 () Bool)

(assert (=> b!272163 (= e!169099 (< 0 (size!3055 lt!111755)))))

(assert (= (and d!79381 res!124224) b!272163))

(assert (=> d!79381 m!343845))

(assert (=> d!79381 m!343845))

(declare-fun m!345285 () Bool)

(assert (=> d!79381 m!345285))

(declare-fun m!345287 () Bool)

(assert (=> d!79381 m!345287))

(assert (=> b!272163 m!343931))

(assert (=> b!271376 d!79381))

(declare-fun b!272164 () Bool)

(declare-fun e!169102 () Bool)

(assert (=> b!272164 (= e!169102 (inv!17 (value!25149 (h!9227 (t!38514 tokens!465)))))))

(declare-fun b!272165 () Bool)

(declare-fun e!169100 () Bool)

(assert (=> b!272165 (= e!169100 (inv!15 (value!25149 (h!9227 (t!38514 tokens!465)))))))

(declare-fun b!272166 () Bool)

(declare-fun e!169101 () Bool)

(assert (=> b!272166 (= e!169101 (inv!16 (value!25149 (h!9227 (t!38514 tokens!465)))))))

(declare-fun b!272167 () Bool)

(assert (=> b!272167 (= e!169101 e!169102)))

(declare-fun c!51614 () Bool)

(assert (=> b!272167 (= c!51614 ((_ is IntegerValue!2260) (value!25149 (h!9227 (t!38514 tokens!465)))))))

(declare-fun d!79383 () Bool)

(declare-fun c!51615 () Bool)

(assert (=> d!79383 (= c!51615 ((_ is IntegerValue!2259) (value!25149 (h!9227 (t!38514 tokens!465)))))))

(assert (=> d!79383 (= (inv!21 (value!25149 (h!9227 (t!38514 tokens!465)))) e!169101)))

(declare-fun b!272168 () Bool)

(declare-fun res!124225 () Bool)

(assert (=> b!272168 (=> res!124225 e!169100)))

(assert (=> b!272168 (= res!124225 (not ((_ is IntegerValue!2261) (value!25149 (h!9227 (t!38514 tokens!465))))))))

(assert (=> b!272168 (= e!169102 e!169100)))

(assert (= (and d!79383 c!51615) b!272166))

(assert (= (and d!79383 (not c!51615)) b!272167))

(assert (= (and b!272167 c!51614) b!272164))

(assert (= (and b!272167 (not c!51614)) b!272168))

(assert (= (and b!272168 (not res!124225)) b!272165))

(declare-fun m!345289 () Bool)

(assert (=> b!272164 m!345289))

(declare-fun m!345291 () Bool)

(assert (=> b!272165 m!345291))

(declare-fun m!345293 () Bool)

(assert (=> b!272166 m!345293))

(assert (=> b!271784 d!79383))

(declare-fun d!79385 () Bool)

(assert (=> d!79385 (isDefined!658 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 call!14854) (list!1567 lt!111891))))))

(declare-fun lt!112432 () Unit!4936)

(declare-fun e!169201 () Unit!4936)

(assert (=> d!79385 (= lt!112432 e!169201)))

(declare-fun c!51663 () Bool)

(declare-fun isEmpty!2444 (Option!815) Bool)

(assert (=> d!79385 (= c!51663 (isEmpty!2444 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 call!14854) (list!1567 lt!111891)))))))

(declare-fun lt!112427 () Unit!4936)

(declare-fun lt!112420 () Unit!4936)

(assert (=> d!79385 (= lt!112427 lt!112420)))

(declare-fun e!169200 () Bool)

(assert (=> d!79385 e!169200))

(declare-fun res!124301 () Bool)

(assert (=> d!79385 (=> (not res!124301) (not e!169200))))

(declare-fun lt!112422 () Token!1206)

(declare-datatypes ((Option!817 0))(
  ( (None!816) (Some!816 (v!14693 Rule!1262)) )
))
(declare-fun isDefined!660 (Option!817) Bool)

(declare-fun getRuleFromTag!126 (LexerInterface!617 List!3839 String!4845) Option!817)

(assert (=> d!79385 (= res!124301 (isDefined!660 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112422)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!126 (LexerInterface!617 List!3839 List!3838 Token!1206) Unit!4936)

(assert (=> d!79385 (= lt!112420 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!126 thiss!17480 rules!1920 (list!1567 call!14854) lt!112422))))

(declare-fun lt!112431 () Unit!4936)

(declare-fun lt!112430 () Unit!4936)

(assert (=> d!79385 (= lt!112431 lt!112430)))

(declare-fun lt!112425 () List!3838)

(assert (=> d!79385 (isPrefix!399 lt!112425 (++!1002 (list!1567 call!14854) (list!1567 lt!111891)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!58 (List!3838 List!3838 List!3838) Unit!4936)

(assert (=> d!79385 (= lt!112430 (lemmaPrefixStaysPrefixWhenAddingToSuffix!58 lt!112425 (list!1567 call!14854) (list!1567 lt!111891)))))

(assert (=> d!79385 (= lt!112425 (list!1567 (charsOf!376 lt!112422)))))

(declare-fun lt!112421 () Unit!4936)

(declare-fun lt!112423 () Unit!4936)

(assert (=> d!79385 (= lt!112421 lt!112423)))

(declare-fun lt!112428 () List!3838)

(declare-fun lt!112436 () List!3838)

(assert (=> d!79385 (isPrefix!399 lt!112428 (++!1002 lt!112428 lt!112436))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!294 (List!3838 List!3838) Unit!4936)

(assert (=> d!79385 (= lt!112423 (lemmaConcatTwoListThenFirstIsPrefix!294 lt!112428 lt!112436))))

(assert (=> d!79385 (= lt!112436 (_2!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 call!14854)))))))

(assert (=> d!79385 (= lt!112428 (list!1567 (charsOf!376 lt!112422)))))

(assert (=> d!79385 (= lt!112422 (head!888 (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 (list!1567 call!14854)))))))))

(assert (=> d!79385 (not (isEmpty!2429 rules!1920))))

(assert (=> d!79385 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 (list!1567 call!14854) (list!1567 lt!111891)) lt!112432)))

(declare-fun b!272342 () Bool)

(declare-fun Unit!4962 () Unit!4936)

(assert (=> b!272342 (= e!169201 Unit!4962)))

(declare-fun lt!112433 () List!3838)

(assert (=> b!272342 (= lt!112433 (++!1002 (list!1567 call!14854) (list!1567 lt!111891)))))

(declare-fun lt!112424 () Unit!4936)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!58 (LexerInterface!617 Rule!1262 List!3839 List!3838) Unit!4936)

(assert (=> b!272342 (= lt!112424 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!58 thiss!17480 (rule!1316 lt!112422) rules!1920 lt!112433))))

(declare-fun maxPrefixOneRule!143 (LexerInterface!617 Rule!1262 List!3838) Option!815)

(assert (=> b!272342 (isEmpty!2444 (maxPrefixOneRule!143 thiss!17480 (rule!1316 lt!112422) lt!112433))))

(declare-fun lt!112435 () Unit!4936)

(assert (=> b!272342 (= lt!112435 lt!112424)))

(declare-fun lt!112434 () List!3838)

(assert (=> b!272342 (= lt!112434 (list!1567 (charsOf!376 lt!112422)))))

(declare-fun lt!112429 () Unit!4936)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!58 (LexerInterface!617 Rule!1262 List!3838 List!3838) Unit!4936)

(assert (=> b!272342 (= lt!112429 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!58 thiss!17480 (rule!1316 lt!112422) lt!112434 (++!1002 (list!1567 call!14854) (list!1567 lt!111891))))))

(declare-fun matchR!277 (Regex!955 List!3838) Bool)

(assert (=> b!272342 (not (matchR!277 (regex!731 (rule!1316 lt!112422)) lt!112434))))

(declare-fun lt!112426 () Unit!4936)

(assert (=> b!272342 (= lt!112426 lt!112429)))

(assert (=> b!272342 false))

(declare-fun b!272340 () Bool)

(declare-fun res!124300 () Bool)

(assert (=> b!272340 (=> (not res!124300) (not e!169200))))

(declare-fun get!1273 (Option!817) Rule!1262)

(assert (=> b!272340 (= res!124300 (matchR!277 (regex!731 (get!1273 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112422))))) (list!1567 (charsOf!376 lt!112422))))))

(declare-fun b!272343 () Bool)

(declare-fun Unit!4963 () Unit!4936)

(assert (=> b!272343 (= e!169201 Unit!4963)))

(declare-fun b!272341 () Bool)

(assert (=> b!272341 (= e!169200 (= (rule!1316 lt!112422) (get!1273 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112422))))))))

(assert (= (and d!79385 res!124301) b!272340))

(assert (= (and b!272340 res!124300) b!272341))

(assert (= (and d!79385 c!51663) b!272342))

(assert (= (and d!79385 (not c!51663)) b!272343))

(declare-fun m!345765 () Bool)

(assert (=> d!79385 m!345765))

(declare-fun m!345767 () Bool)

(assert (=> d!79385 m!345767))

(assert (=> d!79385 m!343963))

(declare-fun m!345769 () Bool)

(assert (=> d!79385 m!345769))

(declare-fun m!345775 () Bool)

(assert (=> d!79385 m!345775))

(declare-fun m!345777 () Bool)

(assert (=> d!79385 m!345777))

(declare-fun m!345781 () Bool)

(assert (=> d!79385 m!345781))

(assert (=> d!79385 m!345775))

(declare-fun m!345785 () Bool)

(assert (=> d!79385 m!345785))

(assert (=> d!79385 m!345775))

(declare-fun m!345787 () Bool)

(assert (=> d!79385 m!345787))

(declare-fun m!345793 () Bool)

(assert (=> d!79385 m!345793))

(declare-fun m!345795 () Bool)

(assert (=> d!79385 m!345795))

(declare-fun m!345803 () Bool)

(assert (=> d!79385 m!345803))

(declare-fun m!345807 () Bool)

(assert (=> d!79385 m!345807))

(assert (=> d!79385 m!345781))

(declare-fun m!345813 () Bool)

(assert (=> d!79385 m!345813))

(assert (=> d!79385 m!343713))

(assert (=> d!79385 m!345803))

(assert (=> d!79385 m!343963))

(assert (=> d!79385 m!343965))

(assert (=> d!79385 m!345781))

(declare-fun m!345821 () Bool)

(assert (=> d!79385 m!345821))

(declare-fun m!345825 () Bool)

(assert (=> d!79385 m!345825))

(declare-fun m!345829 () Bool)

(assert (=> d!79385 m!345829))

(assert (=> d!79385 m!345769))

(declare-fun m!345831 () Bool)

(assert (=> d!79385 m!345831))

(assert (=> d!79385 m!345821))

(assert (=> d!79385 m!345765))

(assert (=> d!79385 m!345829))

(declare-fun m!345833 () Bool)

(assert (=> d!79385 m!345833))

(assert (=> d!79385 m!343963))

(declare-fun m!345835 () Bool)

(assert (=> d!79385 m!345835))

(assert (=> d!79385 m!343963))

(assert (=> d!79385 m!345793))

(assert (=> d!79385 m!343963))

(assert (=> d!79385 m!343965))

(declare-fun m!345839 () Bool)

(assert (=> d!79385 m!345839))

(assert (=> b!272342 m!345765))

(assert (=> b!272342 m!345767))

(assert (=> b!272342 m!345781))

(declare-fun m!345843 () Bool)

(assert (=> b!272342 m!345843))

(assert (=> b!272342 m!345765))

(declare-fun m!345845 () Bool)

(assert (=> b!272342 m!345845))

(assert (=> b!272342 m!345845))

(declare-fun m!345849 () Bool)

(assert (=> b!272342 m!345849))

(assert (=> b!272342 m!343963))

(assert (=> b!272342 m!343965))

(assert (=> b!272342 m!345781))

(declare-fun m!345851 () Bool)

(assert (=> b!272342 m!345851))

(declare-fun m!345853 () Bool)

(assert (=> b!272342 m!345853))

(assert (=> b!272340 m!345765))

(assert (=> b!272340 m!345767))

(assert (=> b!272340 m!345821))

(declare-fun m!345855 () Bool)

(assert (=> b!272340 m!345855))

(assert (=> b!272340 m!345767))

(declare-fun m!345857 () Bool)

(assert (=> b!272340 m!345857))

(assert (=> b!272340 m!345821))

(assert (=> b!272340 m!345765))

(assert (=> b!272341 m!345821))

(assert (=> b!272341 m!345821))

(assert (=> b!272341 m!345855))

(assert (=> b!271371 d!79385))

(declare-fun d!79505 () Bool)

(declare-fun lt!112447 () BalanceConc!2576)

(assert (=> d!79505 (= (list!1567 lt!112447) (printList!293 thiss!17480 (list!1570 (singletonSeq!277 call!14852))))))

(assert (=> d!79505 (= lt!112447 (printTailRec!305 thiss!17480 (singletonSeq!277 call!14852) 0 (BalanceConc!2577 Empty!1284)))))

(assert (=> d!79505 (= (print!342 thiss!17480 (singletonSeq!277 call!14852)) lt!112447)))

(declare-fun bs!30409 () Bool)

(assert (= bs!30409 d!79505))

(declare-fun m!345867 () Bool)

(assert (=> bs!30409 m!345867))

(assert (=> bs!30409 m!343969))

(declare-fun m!345869 () Bool)

(assert (=> bs!30409 m!345869))

(assert (=> bs!30409 m!345869))

(declare-fun m!345871 () Bool)

(assert (=> bs!30409 m!345871))

(assert (=> bs!30409 m!343969))

(assert (=> bs!30409 m!343971))

(assert (=> b!271371 d!79505))

(declare-fun d!79509 () Bool)

(assert (=> d!79509 (= (list!1567 call!14854) (list!1571 (c!51394 call!14854)))))

(declare-fun bs!30410 () Bool)

(assert (= bs!30410 d!79509))

(declare-fun m!345873 () Bool)

(assert (=> bs!30410 m!345873))

(assert (=> b!271371 d!79509))

(declare-fun d!79511 () Bool)

(declare-fun lt!112452 () BalanceConc!2576)

(assert (=> d!79511 (= (list!1567 lt!112452) (printListTailRec!130 thiss!17480 (dropList!164 (singletonSeq!277 call!14852) 0) (list!1567 (BalanceConc!2577 Empty!1284))))))

(declare-fun e!169208 () BalanceConc!2576)

(assert (=> d!79511 (= lt!112452 e!169208)))

(declare-fun c!51667 () Bool)

(assert (=> d!79511 (= c!51667 (>= 0 (size!3055 (singletonSeq!277 call!14852))))))

(declare-fun e!169209 () Bool)

(assert (=> d!79511 e!169209))

(declare-fun res!124308 () Bool)

(assert (=> d!79511 (=> (not res!124308) (not e!169209))))

(assert (=> d!79511 (= res!124308 (>= 0 0))))

(assert (=> d!79511 (= (printTailRec!305 thiss!17480 (singletonSeq!277 call!14852) 0 (BalanceConc!2577 Empty!1284)) lt!112452)))

(declare-fun b!272356 () Bool)

(assert (=> b!272356 (= e!169209 (<= 0 (size!3055 (singletonSeq!277 call!14852))))))

(declare-fun b!272357 () Bool)

(assert (=> b!272357 (= e!169208 (BalanceConc!2577 Empty!1284))))

(declare-fun b!272358 () Bool)

(assert (=> b!272358 (= e!169208 (printTailRec!305 thiss!17480 (singletonSeq!277 call!14852) (+ 0 1) (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 (singletonSeq!277 call!14852) 0)))))))

(declare-fun lt!112454 () List!3840)

(assert (=> b!272358 (= lt!112454 (list!1570 (singletonSeq!277 call!14852)))))

(declare-fun lt!112453 () Unit!4936)

(assert (=> b!272358 (= lt!112453 (lemmaDropApply!204 lt!112454 0))))

(assert (=> b!272358 (= (head!888 (drop!217 lt!112454 0)) (apply!774 lt!112454 0))))

(declare-fun lt!112451 () Unit!4936)

(assert (=> b!272358 (= lt!112451 lt!112453)))

(declare-fun lt!112449 () List!3840)

(assert (=> b!272358 (= lt!112449 (list!1570 (singletonSeq!277 call!14852)))))

(declare-fun lt!112450 () Unit!4936)

(assert (=> b!272358 (= lt!112450 (lemmaDropTail!196 lt!112449 0))))

(assert (=> b!272358 (= (tail!478 (drop!217 lt!112449 0)) (drop!217 lt!112449 (+ 0 1)))))

(declare-fun lt!112448 () Unit!4936)

(assert (=> b!272358 (= lt!112448 lt!112450)))

(assert (= (and d!79511 res!124308) b!272356))

(assert (= (and d!79511 c!51667) b!272357))

(assert (= (and d!79511 (not c!51667)) b!272358))

(assert (=> d!79511 m!344581))

(assert (=> d!79511 m!343969))

(declare-fun m!345893 () Bool)

(assert (=> d!79511 m!345893))

(assert (=> d!79511 m!343969))

(declare-fun m!345895 () Bool)

(assert (=> d!79511 m!345895))

(assert (=> d!79511 m!345895))

(assert (=> d!79511 m!344581))

(declare-fun m!345897 () Bool)

(assert (=> d!79511 m!345897))

(declare-fun m!345899 () Bool)

(assert (=> d!79511 m!345899))

(assert (=> b!272356 m!343969))

(assert (=> b!272356 m!345893))

(assert (=> b!272358 m!343969))

(declare-fun m!345901 () Bool)

(assert (=> b!272358 m!345901))

(assert (=> b!272358 m!343969))

(declare-fun m!345903 () Bool)

(assert (=> b!272358 m!345903))

(declare-fun m!345905 () Bool)

(assert (=> b!272358 m!345905))

(assert (=> b!272358 m!345901))

(declare-fun m!345907 () Bool)

(assert (=> b!272358 m!345907))

(assert (=> b!272358 m!343969))

(assert (=> b!272358 m!345869))

(declare-fun m!345909 () Bool)

(assert (=> b!272358 m!345909))

(assert (=> b!272358 m!345909))

(declare-fun m!345911 () Bool)

(assert (=> b!272358 m!345911))

(declare-fun m!345913 () Bool)

(assert (=> b!272358 m!345913))

(declare-fun m!345915 () Bool)

(assert (=> b!272358 m!345915))

(declare-fun m!345917 () Bool)

(assert (=> b!272358 m!345917))

(declare-fun m!345919 () Bool)

(assert (=> b!272358 m!345919))

(declare-fun m!345921 () Bool)

(assert (=> b!272358 m!345921))

(assert (=> b!272358 m!345907))

(assert (=> b!272358 m!345903))

(assert (=> b!272358 m!345919))

(declare-fun m!345923 () Bool)

(assert (=> b!272358 m!345923))

(assert (=> b!271371 d!79511))

(declare-fun d!79515 () Bool)

(declare-fun e!169210 () Bool)

(assert (=> d!79515 e!169210))

(declare-fun res!124309 () Bool)

(assert (=> d!79515 (=> (not res!124309) (not e!169210))))

(declare-fun lt!112455 () BalanceConc!2578)

(assert (=> d!79515 (= res!124309 (= (list!1570 lt!112455) (Cons!3830 call!14852 Nil!3830)))))

(assert (=> d!79515 (= lt!112455 (singleton!114 call!14852))))

(assert (=> d!79515 (= (singletonSeq!277 call!14852) lt!112455)))

(declare-fun b!272359 () Bool)

(assert (=> b!272359 (= e!169210 (isBalanced!353 (c!51396 lt!112455)))))

(assert (= (and d!79515 res!124309) b!272359))

(declare-fun m!345925 () Bool)

(assert (=> d!79515 m!345925))

(declare-fun m!345927 () Bool)

(assert (=> d!79515 m!345927))

(declare-fun m!345929 () Bool)

(assert (=> b!272359 m!345929))

(assert (=> b!271371 d!79515))

(declare-fun d!79517 () Bool)

(assert (=> d!79517 (= (list!1567 lt!111891) (list!1571 (c!51394 lt!111891)))))

(declare-fun bs!30411 () Bool)

(assert (= bs!30411 d!79517))

(declare-fun m!345931 () Bool)

(assert (=> bs!30411 m!345931))

(assert (=> b!271371 d!79517))

(declare-fun d!79519 () Bool)

(declare-fun lt!112456 () Int)

(assert (=> d!79519 (>= lt!112456 0)))

(declare-fun e!169211 () Int)

(assert (=> d!79519 (= lt!112456 e!169211)))

(declare-fun c!51668 () Bool)

(assert (=> d!79519 (= c!51668 ((_ is Nil!3828) lt!111991))))

(assert (=> d!79519 (= (size!3053 lt!111991) lt!112456)))

(declare-fun b!272360 () Bool)

(assert (=> b!272360 (= e!169211 0)))

(declare-fun b!272361 () Bool)

(assert (=> b!272361 (= e!169211 (+ 1 (size!3053 (t!38512 lt!111991))))))

(assert (= (and d!79519 c!51668) b!272360))

(assert (= (and d!79519 (not c!51668)) b!272361))

(declare-fun m!345933 () Bool)

(assert (=> b!272361 m!345933))

(assert (=> b!271600 d!79519))

(declare-fun d!79521 () Bool)

(declare-fun lt!112457 () Int)

(assert (=> d!79521 (>= lt!112457 0)))

(declare-fun e!169212 () Int)

(assert (=> d!79521 (= lt!112457 e!169212)))

(declare-fun c!51669 () Bool)

(assert (=> d!79521 (= c!51669 ((_ is Nil!3828) lt!111765))))

(assert (=> d!79521 (= (size!3053 lt!111765) lt!112457)))

(declare-fun b!272362 () Bool)

(assert (=> b!272362 (= e!169212 0)))

(declare-fun b!272363 () Bool)

(assert (=> b!272363 (= e!169212 (+ 1 (size!3053 (t!38512 lt!111765))))))

(assert (= (and d!79521 c!51669) b!272362))

(assert (= (and d!79521 (not c!51669)) b!272363))

(assert (=> b!272363 m!345187))

(assert (=> b!271600 d!79521))

(declare-fun d!79523 () Bool)

(declare-fun lt!112458 () Int)

(assert (=> d!79523 (>= lt!112458 0)))

(declare-fun e!169213 () Int)

(assert (=> d!79523 (= lt!112458 e!169213)))

(declare-fun c!51670 () Bool)

(assert (=> d!79523 (= c!51670 ((_ is Nil!3828) lt!111756))))

(assert (=> d!79523 (= (size!3053 lt!111756) lt!112458)))

(declare-fun b!272364 () Bool)

(assert (=> b!272364 (= e!169213 0)))

(declare-fun b!272365 () Bool)

(assert (=> b!272365 (= e!169213 (+ 1 (size!3053 (t!38512 lt!111756))))))

(assert (= (and d!79523 c!51670) b!272364))

(assert (= (and d!79523 (not c!51670)) b!272365))

(declare-fun m!345935 () Bool)

(assert (=> b!272365 m!345935))

(assert (=> b!271600 d!79523))

(declare-fun d!79525 () Bool)

(assert (=> d!79525 (= (isEmpty!2432 (originalCharacters!774 separatorToken!170)) ((_ is Nil!3828) (originalCharacters!774 separatorToken!170)))))

(assert (=> d!79209 d!79525))

(declare-fun d!79527 () Bool)

(declare-fun e!169249 () Bool)

(assert (=> d!79527 e!169249))

(declare-fun res!124339 () Bool)

(assert (=> d!79527 (=> res!124339 e!169249)))

(declare-fun lt!112485 () Option!815)

(assert (=> d!79527 (= res!124339 (isEmpty!2444 lt!112485))))

(declare-fun e!169250 () Option!815)

(assert (=> d!79527 (= lt!112485 e!169250)))

(declare-fun c!51689 () Bool)

(assert (=> d!79527 (= c!51689 (and ((_ is Cons!3829) rules!1920) ((_ is Nil!3829) (t!38513 rules!1920))))))

(declare-fun lt!112489 () Unit!4936)

(declare-fun lt!112488 () Unit!4936)

(assert (=> d!79527 (= lt!112489 lt!112488)))

(assert (=> d!79527 (isPrefix!399 (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947) (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947))))

(assert (=> d!79527 (= lt!112488 (lemmaIsPrefixRefl!209 (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947) (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947)))))

(assert (=> d!79527 (rulesValidInductive!204 thiss!17480 rules!1920)))

(assert (=> d!79527 (= (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947)) lt!112485)))

(declare-fun b!272435 () Bool)

(declare-fun res!124338 () Bool)

(declare-fun e!169248 () Bool)

(assert (=> b!272435 (=> (not res!124338) (not e!169248))))

(assert (=> b!272435 (= res!124338 (= (++!1002 (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112485)))) (_2!2365 (get!1271 lt!112485))) (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947)))))

(declare-fun b!272436 () Bool)

(declare-fun call!14932 () Option!815)

(assert (=> b!272436 (= e!169250 call!14932)))

(declare-fun b!272437 () Bool)

(declare-fun contains!725 (List!3839 Rule!1262) Bool)

(assert (=> b!272437 (= e!169248 (contains!725 rules!1920 (rule!1316 (_1!2365 (get!1271 lt!112485)))))))

(declare-fun b!272438 () Bool)

(assert (=> b!272438 (= e!169249 e!169248)))

(declare-fun res!124343 () Bool)

(assert (=> b!272438 (=> (not res!124343) (not e!169248))))

(assert (=> b!272438 (= res!124343 (isDefined!658 lt!112485))))

(declare-fun b!272439 () Bool)

(declare-fun res!124340 () Bool)

(assert (=> b!272439 (=> (not res!124340) (not e!169248))))

(declare-fun apply!777 (TokenValueInjection!1278 BalanceConc!2576) TokenValue!753)

(assert (=> b!272439 (= res!124340 (= (value!25149 (_1!2365 (get!1271 lt!112485))) (apply!777 (transformation!731 (rule!1316 (_1!2365 (get!1271 lt!112485)))) (seqFromList!829 (originalCharacters!774 (_1!2365 (get!1271 lt!112485)))))))))

(declare-fun b!272440 () Bool)

(declare-fun res!124341 () Bool)

(assert (=> b!272440 (=> (not res!124341) (not e!169248))))

(assert (=> b!272440 (= res!124341 (= (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112485)))) (originalCharacters!774 (_1!2365 (get!1271 lt!112485)))))))

(declare-fun b!272441 () Bool)

(declare-fun res!124344 () Bool)

(assert (=> b!272441 (=> (not res!124344) (not e!169248))))

(assert (=> b!272441 (= res!124344 (< (size!3053 (_2!2365 (get!1271 lt!112485))) (size!3053 (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947))))))

(declare-fun b!272442 () Bool)

(declare-fun res!124342 () Bool)

(assert (=> b!272442 (=> (not res!124342) (not e!169248))))

(assert (=> b!272442 (= res!124342 (matchR!277 (regex!731 (rule!1316 (_1!2365 (get!1271 lt!112485)))) (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112485))))))))

(declare-fun b!272443 () Bool)

(declare-fun lt!112487 () Option!815)

(declare-fun lt!112486 () Option!815)

(assert (=> b!272443 (= e!169250 (ite (and ((_ is None!814) lt!112487) ((_ is None!814) lt!112486)) None!814 (ite ((_ is None!814) lt!112486) lt!112487 (ite ((_ is None!814) lt!112487) lt!112486 (ite (>= (size!3051 (_1!2365 (v!14689 lt!112487))) (size!3051 (_1!2365 (v!14689 lt!112486)))) lt!112487 lt!112486)))))))

(assert (=> b!272443 (= lt!112487 call!14932)))

(assert (=> b!272443 (= lt!112486 (maxPrefix!335 thiss!17480 (t!38513 rules!1920) (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947)))))

(declare-fun bm!14927 () Bool)

(assert (=> bm!14927 (= call!14932 (maxPrefixOneRule!143 thiss!17480 (h!9226 rules!1920) (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947)))))

(assert (= (and d!79527 c!51689) b!272436))

(assert (= (and d!79527 (not c!51689)) b!272443))

(assert (= (or b!272436 b!272443) bm!14927))

(assert (= (and d!79527 (not res!124339)) b!272438))

(assert (= (and b!272438 res!124343) b!272440))

(assert (= (and b!272440 res!124341) b!272441))

(assert (= (and b!272441 res!124344) b!272435))

(assert (= (and b!272435 res!124338) b!272439))

(assert (= (and b!272439 res!124340) b!272442))

(assert (= (and b!272442 res!124342) b!272437))

(declare-fun m!346047 () Bool)

(assert (=> b!272435 m!346047))

(declare-fun m!346049 () Bool)

(assert (=> b!272435 m!346049))

(assert (=> b!272435 m!346049))

(declare-fun m!346051 () Bool)

(assert (=> b!272435 m!346051))

(assert (=> b!272435 m!346051))

(declare-fun m!346053 () Bool)

(assert (=> b!272435 m!346053))

(assert (=> b!272443 m!344167))

(declare-fun m!346055 () Bool)

(assert (=> b!272443 m!346055))

(declare-fun m!346057 () Bool)

(assert (=> d!79527 m!346057))

(assert (=> d!79527 m!344167))

(assert (=> d!79527 m!344167))

(declare-fun m!346059 () Bool)

(assert (=> d!79527 m!346059))

(assert (=> d!79527 m!344167))

(assert (=> d!79527 m!344167))

(declare-fun m!346061 () Bool)

(assert (=> d!79527 m!346061))

(assert (=> d!79527 m!344675))

(assert (=> b!272440 m!346047))

(assert (=> b!272440 m!346049))

(assert (=> b!272440 m!346049))

(assert (=> b!272440 m!346051))

(assert (=> b!272441 m!346047))

(declare-fun m!346063 () Bool)

(assert (=> b!272441 m!346063))

(assert (=> b!272441 m!344167))

(declare-fun m!346065 () Bool)

(assert (=> b!272441 m!346065))

(declare-fun m!346067 () Bool)

(assert (=> b!272438 m!346067))

(assert (=> b!272442 m!346047))

(assert (=> b!272442 m!346049))

(assert (=> b!272442 m!346049))

(assert (=> b!272442 m!346051))

(assert (=> b!272442 m!346051))

(declare-fun m!346069 () Bool)

(assert (=> b!272442 m!346069))

(assert (=> b!272437 m!346047))

(declare-fun m!346071 () Bool)

(assert (=> b!272437 m!346071))

(assert (=> bm!14927 m!344167))

(declare-fun m!346073 () Bool)

(assert (=> bm!14927 m!346073))

(assert (=> b!272439 m!346047))

(declare-fun m!346075 () Bool)

(assert (=> b!272439 m!346075))

(assert (=> b!272439 m!346075))

(declare-fun m!346077 () Bool)

(assert (=> b!272439 m!346077))

(assert (=> b!271466 d!79527))

(assert (=> b!271466 d!79123))

(declare-fun d!79581 () Bool)

(assert (=> d!79581 (dynLambda!1973 lambda!9200 (h!9227 tokens!465))))

(declare-fun lt!112490 () Unit!4936)

(assert (=> d!79581 (= lt!112490 (choose!2461 tokens!465 lambda!9200 (h!9227 tokens!465)))))

(declare-fun e!169251 () Bool)

(assert (=> d!79581 e!169251))

(declare-fun res!124345 () Bool)

(assert (=> d!79581 (=> (not res!124345) (not e!169251))))

(assert (=> d!79581 (= res!124345 (forall!964 tokens!465 lambda!9200))))

(assert (=> d!79581 (= (forallContained!286 tokens!465 lambda!9200 (h!9227 tokens!465)) lt!112490)))

(declare-fun b!272444 () Bool)

(assert (=> b!272444 (= e!169251 (contains!723 tokens!465 (h!9227 tokens!465)))))

(assert (= (and d!79581 res!124345) b!272444))

(declare-fun b_lambda!8697 () Bool)

(assert (=> (not b_lambda!8697) (not d!79581)))

(declare-fun m!346079 () Bool)

(assert (=> d!79581 m!346079))

(declare-fun m!346081 () Bool)

(assert (=> d!79581 m!346081))

(declare-fun m!346083 () Bool)

(assert (=> d!79581 m!346083))

(assert (=> b!272444 m!344699))

(assert (=> b!271466 d!79581))

(assert (=> b!271466 d!79157))

(assert (=> b!271466 d!79145))

(declare-fun e!169252 () Bool)

(declare-fun b!272448 () Bool)

(declare-fun lt!112491 () List!3838)

(assert (=> b!272448 (= e!169252 (or (not (= lt!111947 Nil!3828)) (= lt!112491 (list!1567 (charsOf!376 (h!9227 tokens!465))))))))

(declare-fun b!272446 () Bool)

(declare-fun e!169253 () List!3838)

(assert (=> b!272446 (= e!169253 (Cons!3828 (h!9225 (list!1567 (charsOf!376 (h!9227 tokens!465)))) (++!1002 (t!38512 (list!1567 (charsOf!376 (h!9227 tokens!465)))) lt!111947)))))

(declare-fun d!79583 () Bool)

(assert (=> d!79583 e!169252))

(declare-fun res!124347 () Bool)

(assert (=> d!79583 (=> (not res!124347) (not e!169252))))

(assert (=> d!79583 (= res!124347 (= (content!551 lt!112491) ((_ map or) (content!551 (list!1567 (charsOf!376 (h!9227 tokens!465)))) (content!551 lt!111947))))))

(assert (=> d!79583 (= lt!112491 e!169253)))

(declare-fun c!51690 () Bool)

(assert (=> d!79583 (= c!51690 ((_ is Nil!3828) (list!1567 (charsOf!376 (h!9227 tokens!465)))))))

(assert (=> d!79583 (= (++!1002 (list!1567 (charsOf!376 (h!9227 tokens!465))) lt!111947) lt!112491)))

(declare-fun b!272447 () Bool)

(declare-fun res!124346 () Bool)

(assert (=> b!272447 (=> (not res!124346) (not e!169252))))

(assert (=> b!272447 (= res!124346 (= (size!3053 lt!112491) (+ (size!3053 (list!1567 (charsOf!376 (h!9227 tokens!465)))) (size!3053 lt!111947))))))

(declare-fun b!272445 () Bool)

(assert (=> b!272445 (= e!169253 lt!111947)))

(assert (= (and d!79583 c!51690) b!272445))

(assert (= (and d!79583 (not c!51690)) b!272446))

(assert (= (and d!79583 res!124347) b!272447))

(assert (= (and b!272447 res!124346) b!272448))

(declare-fun m!346085 () Bool)

(assert (=> b!272446 m!346085))

(declare-fun m!346087 () Bool)

(assert (=> d!79583 m!346087))

(assert (=> d!79583 m!343767))

(declare-fun m!346089 () Bool)

(assert (=> d!79583 m!346089))

(declare-fun m!346091 () Bool)

(assert (=> d!79583 m!346091))

(declare-fun m!346093 () Bool)

(assert (=> b!272447 m!346093))

(assert (=> b!272447 m!343767))

(declare-fun m!346095 () Bool)

(assert (=> b!272447 m!346095))

(declare-fun m!346097 () Bool)

(assert (=> b!272447 m!346097))

(assert (=> b!271466 d!79583))

(declare-fun d!79585 () Bool)

(assert (=> d!79585 (= (isEmpty!2435 (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))) ((_ is Nil!3830) (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))))))

(assert (=> d!79109 d!79585))

(declare-fun d!79587 () Bool)

(assert (=> d!79587 (= (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765)))) (list!1574 (c!51396 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))))))

(declare-fun bs!30423 () Bool)

(assert (= bs!30423 d!79587))

(declare-fun m!346099 () Bool)

(assert (=> bs!30423 m!346099))

(assert (=> d!79109 d!79587))

(declare-fun lt!112494 () Bool)

(declare-fun d!79589 () Bool)

(assert (=> d!79589 (= lt!112494 (isEmpty!2435 (list!1574 (c!51396 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765)))))))))

(assert (=> d!79589 (= lt!112494 (= (size!3061 (c!51396 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))) 0))))

(assert (=> d!79589 (= (isEmpty!2436 (c!51396 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))) lt!112494)))

(declare-fun bs!30424 () Bool)

(assert (= bs!30424 d!79589))

(assert (=> bs!30424 m!346099))

(assert (=> bs!30424 m!346099))

(declare-fun m!346101 () Bool)

(assert (=> bs!30424 m!346101))

(declare-fun m!346103 () Bool)

(assert (=> bs!30424 m!346103))

(assert (=> d!79109 d!79589))

(declare-fun d!79591 () Bool)

(assert (=> d!79591 true))

(declare-fun order!2965 () Int)

(declare-fun lambda!9227 () Int)

(declare-fun dynLambda!1976 (Int Int) Int)

(assert (=> d!79591 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) (dynLambda!1976 order!2965 lambda!9227))))

(assert (=> d!79591 true))

(assert (=> d!79591 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465))))) (dynLambda!1976 order!2965 lambda!9227))))

(declare-fun Forall!173 (Int) Bool)

(assert (=> d!79591 (= (semiInverseModEq!259 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465))))) (Forall!173 lambda!9227))))

(declare-fun bs!30425 () Bool)

(assert (= bs!30425 d!79591))

(declare-fun m!346105 () Bool)

(assert (=> bs!30425 m!346105))

(assert (=> d!79177 d!79591))

(assert (=> b!271468 d!79379))

(assert (=> b!271468 d!79203))

(declare-fun d!79593 () Bool)

(declare-fun lt!112499 () BalanceConc!2576)

(assert (=> d!79593 (= (list!1567 lt!112499) (printListTailRec!130 thiss!17480 (dropList!164 (singletonSeq!277 (h!9227 tokens!465)) 0) (list!1567 (BalanceConc!2577 Empty!1284))))))

(declare-fun e!169254 () BalanceConc!2576)

(assert (=> d!79593 (= lt!112499 e!169254)))

(declare-fun c!51691 () Bool)

(assert (=> d!79593 (= c!51691 (>= 0 (size!3055 (singletonSeq!277 (h!9227 tokens!465)))))))

(declare-fun e!169255 () Bool)

(assert (=> d!79593 e!169255))

(declare-fun res!124348 () Bool)

(assert (=> d!79593 (=> (not res!124348) (not e!169255))))

(assert (=> d!79593 (= res!124348 (>= 0 0))))

(assert (=> d!79593 (= (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)) 0 (BalanceConc!2577 Empty!1284)) lt!112499)))

(declare-fun b!272453 () Bool)

(assert (=> b!272453 (= e!169255 (<= 0 (size!3055 (singletonSeq!277 (h!9227 tokens!465)))))))

(declare-fun b!272454 () Bool)

(assert (=> b!272454 (= e!169254 (BalanceConc!2577 Empty!1284))))

(declare-fun b!272455 () Bool)

(assert (=> b!272455 (= e!169254 (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)) (+ 0 1) (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 (singletonSeq!277 (h!9227 tokens!465)) 0)))))))

(declare-fun lt!112501 () List!3840)

(assert (=> b!272455 (= lt!112501 (list!1570 (singletonSeq!277 (h!9227 tokens!465))))))

(declare-fun lt!112500 () Unit!4936)

(assert (=> b!272455 (= lt!112500 (lemmaDropApply!204 lt!112501 0))))

(assert (=> b!272455 (= (head!888 (drop!217 lt!112501 0)) (apply!774 lt!112501 0))))

(declare-fun lt!112498 () Unit!4936)

(assert (=> b!272455 (= lt!112498 lt!112500)))

(declare-fun lt!112496 () List!3840)

(assert (=> b!272455 (= lt!112496 (list!1570 (singletonSeq!277 (h!9227 tokens!465))))))

(declare-fun lt!112497 () Unit!4936)

(assert (=> b!272455 (= lt!112497 (lemmaDropTail!196 lt!112496 0))))

(assert (=> b!272455 (= (tail!478 (drop!217 lt!112496 0)) (drop!217 lt!112496 (+ 0 1)))))

(declare-fun lt!112495 () Unit!4936)

(assert (=> b!272455 (= lt!112495 lt!112497)))

(assert (= (and d!79593 res!124348) b!272453))

(assert (= (and d!79593 c!51691) b!272454))

(assert (= (and d!79593 (not c!51691)) b!272455))

(assert (=> d!79593 m!344581))

(assert (=> d!79593 m!343683))

(declare-fun m!346107 () Bool)

(assert (=> d!79593 m!346107))

(assert (=> d!79593 m!343683))

(declare-fun m!346109 () Bool)

(assert (=> d!79593 m!346109))

(assert (=> d!79593 m!346109))

(assert (=> d!79593 m!344581))

(declare-fun m!346111 () Bool)

(assert (=> d!79593 m!346111))

(declare-fun m!346113 () Bool)

(assert (=> d!79593 m!346113))

(assert (=> b!272453 m!343683))

(assert (=> b!272453 m!346107))

(assert (=> b!272455 m!343683))

(declare-fun m!346115 () Bool)

(assert (=> b!272455 m!346115))

(assert (=> b!272455 m!343683))

(declare-fun m!346117 () Bool)

(assert (=> b!272455 m!346117))

(declare-fun m!346119 () Bool)

(assert (=> b!272455 m!346119))

(assert (=> b!272455 m!346115))

(declare-fun m!346121 () Bool)

(assert (=> b!272455 m!346121))

(assert (=> b!272455 m!343683))

(assert (=> b!272455 m!344483))

(declare-fun m!346123 () Bool)

(assert (=> b!272455 m!346123))

(assert (=> b!272455 m!346123))

(declare-fun m!346125 () Bool)

(assert (=> b!272455 m!346125))

(declare-fun m!346127 () Bool)

(assert (=> b!272455 m!346127))

(declare-fun m!346129 () Bool)

(assert (=> b!272455 m!346129))

(declare-fun m!346131 () Bool)

(assert (=> b!272455 m!346131))

(declare-fun m!346133 () Bool)

(assert (=> b!272455 m!346133))

(declare-fun m!346135 () Bool)

(assert (=> b!272455 m!346135))

(assert (=> b!272455 m!346121))

(assert (=> b!272455 m!346117))

(assert (=> b!272455 m!346133))

(declare-fun m!346137 () Bool)

(assert (=> b!272455 m!346137))

(assert (=> b!271468 d!79593))

(declare-fun d!79595 () Bool)

(assert (=> d!79595 (isDefined!658 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 call!14878 lt!111947)))))

(declare-fun lt!112514 () Unit!4936)

(declare-fun e!169257 () Unit!4936)

(assert (=> d!79595 (= lt!112514 e!169257)))

(declare-fun c!51692 () Bool)

(assert (=> d!79595 (= c!51692 (isEmpty!2444 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 call!14878 lt!111947))))))

(declare-fun lt!112509 () Unit!4936)

(declare-fun lt!112502 () Unit!4936)

(assert (=> d!79595 (= lt!112509 lt!112502)))

(declare-fun e!169256 () Bool)

(assert (=> d!79595 e!169256))

(declare-fun res!124350 () Bool)

(assert (=> d!79595 (=> (not res!124350) (not e!169256))))

(declare-fun lt!112504 () Token!1206)

(assert (=> d!79595 (= res!124350 (isDefined!660 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112504)))))))

(assert (=> d!79595 (= lt!112502 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!126 thiss!17480 rules!1920 call!14878 lt!112504))))

(declare-fun lt!112513 () Unit!4936)

(declare-fun lt!112512 () Unit!4936)

(assert (=> d!79595 (= lt!112513 lt!112512)))

(declare-fun lt!112507 () List!3838)

(assert (=> d!79595 (isPrefix!399 lt!112507 (++!1002 call!14878 lt!111947))))

(assert (=> d!79595 (= lt!112512 (lemmaPrefixStaysPrefixWhenAddingToSuffix!58 lt!112507 call!14878 lt!111947))))

(assert (=> d!79595 (= lt!112507 (list!1567 (charsOf!376 lt!112504)))))

(declare-fun lt!112503 () Unit!4936)

(declare-fun lt!112505 () Unit!4936)

(assert (=> d!79595 (= lt!112503 lt!112505)))

(declare-fun lt!112510 () List!3838)

(declare-fun lt!112518 () List!3838)

(assert (=> d!79595 (isPrefix!399 lt!112510 (++!1002 lt!112510 lt!112518))))

(assert (=> d!79595 (= lt!112505 (lemmaConcatTwoListThenFirstIsPrefix!294 lt!112510 lt!112518))))

(assert (=> d!79595 (= lt!112518 (_2!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 call!14878))))))

(assert (=> d!79595 (= lt!112510 (list!1567 (charsOf!376 lt!112504)))))

(assert (=> d!79595 (= lt!112504 (head!888 (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 call!14878))))))))

(assert (=> d!79595 (not (isEmpty!2429 rules!1920))))

(assert (=> d!79595 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 call!14878 lt!111947) lt!112514)))

(declare-fun b!272458 () Bool)

(declare-fun Unit!4964 () Unit!4936)

(assert (=> b!272458 (= e!169257 Unit!4964)))

(declare-fun lt!112515 () List!3838)

(assert (=> b!272458 (= lt!112515 (++!1002 call!14878 lt!111947))))

(declare-fun lt!112506 () Unit!4936)

(assert (=> b!272458 (= lt!112506 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!58 thiss!17480 (rule!1316 lt!112504) rules!1920 lt!112515))))

(assert (=> b!272458 (isEmpty!2444 (maxPrefixOneRule!143 thiss!17480 (rule!1316 lt!112504) lt!112515))))

(declare-fun lt!112517 () Unit!4936)

(assert (=> b!272458 (= lt!112517 lt!112506)))

(declare-fun lt!112516 () List!3838)

(assert (=> b!272458 (= lt!112516 (list!1567 (charsOf!376 lt!112504)))))

(declare-fun lt!112511 () Unit!4936)

(assert (=> b!272458 (= lt!112511 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!58 thiss!17480 (rule!1316 lt!112504) lt!112516 (++!1002 call!14878 lt!111947)))))

(assert (=> b!272458 (not (matchR!277 (regex!731 (rule!1316 lt!112504)) lt!112516))))

(declare-fun lt!112508 () Unit!4936)

(assert (=> b!272458 (= lt!112508 lt!112511)))

(assert (=> b!272458 false))

(declare-fun b!272456 () Bool)

(declare-fun res!124349 () Bool)

(assert (=> b!272456 (=> (not res!124349) (not e!169256))))

(assert (=> b!272456 (= res!124349 (matchR!277 (regex!731 (get!1273 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112504))))) (list!1567 (charsOf!376 lt!112504))))))

(declare-fun b!272459 () Bool)

(declare-fun Unit!4965 () Unit!4936)

(assert (=> b!272459 (= e!169257 Unit!4965)))

(declare-fun b!272457 () Bool)

(assert (=> b!272457 (= e!169256 (= (rule!1316 lt!112504) (get!1273 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112504))))))))

(assert (= (and d!79595 res!124350) b!272456))

(assert (= (and b!272456 res!124349) b!272457))

(assert (= (and d!79595 c!51692) b!272458))

(assert (= (and d!79595 (not c!51692)) b!272459))

(declare-fun m!346139 () Bool)

(assert (=> d!79595 m!346139))

(declare-fun m!346141 () Bool)

(assert (=> d!79595 m!346141))

(declare-fun m!346143 () Bool)

(assert (=> d!79595 m!346143))

(declare-fun m!346145 () Bool)

(assert (=> d!79595 m!346145))

(declare-fun m!346147 () Bool)

(assert (=> d!79595 m!346147))

(declare-fun m!346149 () Bool)

(assert (=> d!79595 m!346149))

(assert (=> d!79595 m!346145))

(declare-fun m!346151 () Bool)

(assert (=> d!79595 m!346151))

(assert (=> d!79595 m!346145))

(declare-fun m!346153 () Bool)

(assert (=> d!79595 m!346153))

(declare-fun m!346155 () Bool)

(assert (=> d!79595 m!346155))

(declare-fun m!346157 () Bool)

(assert (=> d!79595 m!346157))

(declare-fun m!346159 () Bool)

(assert (=> d!79595 m!346159))

(declare-fun m!346161 () Bool)

(assert (=> d!79595 m!346161))

(assert (=> d!79595 m!346149))

(declare-fun m!346163 () Bool)

(assert (=> d!79595 m!346163))

(assert (=> d!79595 m!343713))

(assert (=> d!79595 m!346159))

(assert (=> d!79595 m!346149))

(declare-fun m!346165 () Bool)

(assert (=> d!79595 m!346165))

(declare-fun m!346167 () Bool)

(assert (=> d!79595 m!346167))

(declare-fun m!346169 () Bool)

(assert (=> d!79595 m!346169))

(assert (=> d!79595 m!346143))

(declare-fun m!346171 () Bool)

(assert (=> d!79595 m!346171))

(assert (=> d!79595 m!346165))

(assert (=> d!79595 m!346139))

(assert (=> d!79595 m!346169))

(declare-fun m!346173 () Bool)

(assert (=> d!79595 m!346173))

(declare-fun m!346175 () Bool)

(assert (=> d!79595 m!346175))

(assert (=> d!79595 m!346155))

(declare-fun m!346177 () Bool)

(assert (=> d!79595 m!346177))

(assert (=> b!272458 m!346139))

(assert (=> b!272458 m!346141))

(assert (=> b!272458 m!346149))

(declare-fun m!346179 () Bool)

(assert (=> b!272458 m!346179))

(assert (=> b!272458 m!346139))

(declare-fun m!346181 () Bool)

(assert (=> b!272458 m!346181))

(assert (=> b!272458 m!346181))

(declare-fun m!346183 () Bool)

(assert (=> b!272458 m!346183))

(assert (=> b!272458 m!346149))

(declare-fun m!346185 () Bool)

(assert (=> b!272458 m!346185))

(declare-fun m!346187 () Bool)

(assert (=> b!272458 m!346187))

(assert (=> b!272456 m!346139))

(assert (=> b!272456 m!346141))

(assert (=> b!272456 m!346165))

(declare-fun m!346189 () Bool)

(assert (=> b!272456 m!346189))

(assert (=> b!272456 m!346141))

(declare-fun m!346191 () Bool)

(assert (=> b!272456 m!346191))

(assert (=> b!272456 m!346165))

(assert (=> b!272456 m!346139))

(assert (=> b!272457 m!346165))

(assert (=> b!272457 m!346165))

(assert (=> b!272457 m!346189))

(assert (=> b!271468 d!79595))

(declare-fun d!79597 () Bool)

(assert (=> d!79597 (= (list!1567 lt!112057) (list!1571 (c!51394 lt!112057)))))

(declare-fun bs!30426 () Bool)

(assert (= bs!30426 d!79597))

(declare-fun m!346193 () Bool)

(assert (=> bs!30426 m!346193))

(assert (=> d!79181 d!79597))

(declare-fun d!79599 () Bool)

(declare-fun lt!112532 () List!3838)

(assert (=> d!79599 (= lt!112532 (++!1002 (list!1567 (BalanceConc!2577 Empty!1284)) (printList!293 thiss!17480 (dropList!164 lt!111761 0))))))

(declare-fun e!169260 () List!3838)

(assert (=> d!79599 (= lt!112532 e!169260)))

(declare-fun c!51695 () Bool)

(assert (=> d!79599 (= c!51695 ((_ is Cons!3830) (dropList!164 lt!111761 0)))))

(assert (=> d!79599 (= (printListTailRec!130 thiss!17480 (dropList!164 lt!111761 0) (list!1567 (BalanceConc!2577 Empty!1284))) lt!112532)))

(declare-fun b!272464 () Bool)

(assert (=> b!272464 (= e!169260 (printListTailRec!130 thiss!17480 (t!38514 (dropList!164 lt!111761 0)) (++!1002 (list!1567 (BalanceConc!2577 Empty!1284)) (list!1567 (charsOf!376 (h!9227 (dropList!164 lt!111761 0)))))))))

(declare-fun lt!112531 () List!3838)

(assert (=> b!272464 (= lt!112531 (list!1567 (charsOf!376 (h!9227 (dropList!164 lt!111761 0)))))))

(declare-fun lt!112529 () List!3838)

(assert (=> b!272464 (= lt!112529 (printList!293 thiss!17480 (t!38514 (dropList!164 lt!111761 0))))))

(declare-fun lt!112533 () Unit!4936)

(assert (=> b!272464 (= lt!112533 (lemmaConcatAssociativity!430 (list!1567 (BalanceConc!2577 Empty!1284)) lt!112531 lt!112529))))

(assert (=> b!272464 (= (++!1002 (++!1002 (list!1567 (BalanceConc!2577 Empty!1284)) lt!112531) lt!112529) (++!1002 (list!1567 (BalanceConc!2577 Empty!1284)) (++!1002 lt!112531 lt!112529)))))

(declare-fun lt!112530 () Unit!4936)

(assert (=> b!272464 (= lt!112530 lt!112533)))

(declare-fun b!272465 () Bool)

(assert (=> b!272465 (= e!169260 (list!1567 (BalanceConc!2577 Empty!1284)))))

(assert (= (and d!79599 c!51695) b!272464))

(assert (= (and d!79599 (not c!51695)) b!272465))

(assert (=> d!79599 m!344585))

(declare-fun m!346195 () Bool)

(assert (=> d!79599 m!346195))

(assert (=> d!79599 m!344581))

(assert (=> d!79599 m!346195))

(declare-fun m!346197 () Bool)

(assert (=> d!79599 m!346197))

(declare-fun m!346199 () Bool)

(assert (=> b!272464 m!346199))

(declare-fun m!346201 () Bool)

(assert (=> b!272464 m!346201))

(assert (=> b!272464 m!344581))

(declare-fun m!346203 () Bool)

(assert (=> b!272464 m!346203))

(assert (=> b!272464 m!346203))

(declare-fun m!346205 () Bool)

(assert (=> b!272464 m!346205))

(assert (=> b!272464 m!344581))

(assert (=> b!272464 m!346201))

(declare-fun m!346207 () Bool)

(assert (=> b!272464 m!346207))

(assert (=> b!272464 m!344581))

(declare-fun m!346209 () Bool)

(assert (=> b!272464 m!346209))

(declare-fun m!346211 () Bool)

(assert (=> b!272464 m!346211))

(assert (=> b!272464 m!346207))

(declare-fun m!346213 () Bool)

(assert (=> b!272464 m!346213))

(declare-fun m!346215 () Bool)

(assert (=> b!272464 m!346215))

(assert (=> b!272464 m!346199))

(assert (=> b!272464 m!344581))

(assert (=> b!272464 m!346215))

(declare-fun m!346217 () Bool)

(assert (=> b!272464 m!346217))

(assert (=> d!79181 d!79599))

(declare-fun d!79601 () Bool)

(declare-fun lt!112534 () Int)

(assert (=> d!79601 (= lt!112534 (size!3060 (list!1570 lt!111761)))))

(assert (=> d!79601 (= lt!112534 (size!3061 (c!51396 lt!111761)))))

(assert (=> d!79601 (= (size!3055 lt!111761) lt!112534)))

(declare-fun bs!30427 () Bool)

(assert (= bs!30427 d!79601))

(assert (=> bs!30427 m!344599))

(assert (=> bs!30427 m!344599))

(declare-fun m!346219 () Bool)

(assert (=> bs!30427 m!346219))

(declare-fun m!346221 () Bool)

(assert (=> bs!30427 m!346221))

(assert (=> d!79181 d!79601))

(declare-fun d!79603 () Bool)

(assert (=> d!79603 (= (dropList!164 lt!111761 0) (drop!217 (list!1574 (c!51396 lt!111761)) 0))))

(declare-fun bs!30428 () Bool)

(assert (= bs!30428 d!79603))

(declare-fun m!346223 () Bool)

(assert (=> bs!30428 m!346223))

(assert (=> bs!30428 m!346223))

(declare-fun m!346225 () Bool)

(assert (=> bs!30428 m!346225))

(assert (=> d!79181 d!79603))

(declare-fun d!79605 () Bool)

(assert (=> d!79605 (= (list!1567 (BalanceConc!2577 Empty!1284)) (list!1571 (c!51394 (BalanceConc!2577 Empty!1284))))))

(declare-fun bs!30429 () Bool)

(assert (= bs!30429 d!79605))

(declare-fun m!346227 () Bool)

(assert (=> bs!30429 m!346227))

(assert (=> d!79181 d!79605))

(declare-fun d!79607 () Bool)

(declare-fun charsToBigInt!1 (List!3837) Int)

(assert (=> d!79607 (= (inv!17 (value!25149 (h!9227 tokens!465))) (= (charsToBigInt!1 (text!5719 (value!25149 (h!9227 tokens!465)))) (value!25141 (value!25149 (h!9227 tokens!465)))))))

(declare-fun bs!30430 () Bool)

(assert (= bs!30430 d!79607))

(declare-fun m!346229 () Bool)

(assert (=> bs!30430 m!346229))

(assert (=> b!271286 d!79607))

(declare-fun b!272474 () Bool)

(declare-fun e!169267 () Bool)

(declare-fun e!169268 () Bool)

(assert (=> b!272474 (= e!169267 e!169268)))

(declare-fun res!124355 () Bool)

(assert (=> b!272474 (= res!124355 (not ((_ is Cons!3829) rules!1920)))))

(assert (=> b!272474 (=> res!124355 e!169268)))

(declare-fun bm!14930 () Bool)

(declare-fun call!14935 () Bool)

(assert (=> bm!14930 (= call!14935 (ruleDisjointCharsFromAllFromOtherType!118 (h!9226 rules!1920) (t!38513 rules!1920)))))

(declare-fun d!79609 () Bool)

(declare-fun c!51698 () Bool)

(assert (=> d!79609 (= c!51698 (and ((_ is Cons!3829) rules!1920) (not (= (isSeparator!731 (h!9226 rules!1920)) (isSeparator!731 (h!9226 rules!1920))))))))

(assert (=> d!79609 (= (ruleDisjointCharsFromAllFromOtherType!118 (h!9226 rules!1920) rules!1920) e!169267)))

(declare-fun b!272475 () Bool)

(assert (=> b!272475 (= e!169268 call!14935)))

(declare-fun b!272476 () Bool)

(declare-fun e!169269 () Bool)

(assert (=> b!272476 (= e!169267 e!169269)))

(declare-fun res!124356 () Bool)

(declare-fun rulesUseDisjointChars!63 (Rule!1262 Rule!1262) Bool)

(assert (=> b!272476 (= res!124356 (rulesUseDisjointChars!63 (h!9226 rules!1920) (h!9226 rules!1920)))))

(assert (=> b!272476 (=> (not res!124356) (not e!169269))))

(declare-fun b!272477 () Bool)

(assert (=> b!272477 (= e!169269 call!14935)))

(assert (= (and d!79609 c!51698) b!272476))

(assert (= (and d!79609 (not c!51698)) b!272474))

(assert (= (and b!272476 res!124356) b!272477))

(assert (= (and b!272474 (not res!124355)) b!272475))

(assert (= (or b!272477 b!272475) bm!14930))

(declare-fun m!346231 () Bool)

(assert (=> bm!14930 m!346231))

(declare-fun m!346233 () Bool)

(assert (=> b!272476 m!346233))

(assert (=> b!271738 d!79609))

(declare-fun d!79611 () Bool)

(declare-fun lt!112535 () Int)

(assert (=> d!79611 (= lt!112535 (size!3060 (list!1570 (seqFromList!830 (t!38514 tokens!465)))))))

(assert (=> d!79611 (= lt!112535 (size!3061 (c!51396 (seqFromList!830 (t!38514 tokens!465)))))))

(assert (=> d!79611 (= (size!3055 (seqFromList!830 (t!38514 tokens!465))) lt!112535)))

(declare-fun bs!30431 () Bool)

(assert (= bs!30431 d!79611))

(assert (=> bs!30431 m!343753))

(assert (=> bs!30431 m!344423))

(assert (=> bs!30431 m!344423))

(declare-fun m!346235 () Bool)

(assert (=> bs!30431 m!346235))

(declare-fun m!346237 () Bool)

(assert (=> bs!30431 m!346237))

(assert (=> b!271613 d!79611))

(declare-fun d!79613 () Bool)

(declare-fun lt!112536 () Bool)

(assert (=> d!79613 (= lt!112536 (isEmpty!2432 (list!1567 (_2!2362 lt!111960))))))

(assert (=> d!79613 (= lt!112536 (isEmpty!2443 (c!51394 (_2!2362 lt!111960))))))

(assert (=> d!79613 (= (isEmpty!2434 (_2!2362 lt!111960)) lt!112536)))

(declare-fun bs!30432 () Bool)

(assert (= bs!30432 d!79613))

(declare-fun m!346239 () Bool)

(assert (=> bs!30432 m!346239))

(assert (=> bs!30432 m!346239))

(declare-fun m!346241 () Bool)

(assert (=> bs!30432 m!346241))

(declare-fun m!346243 () Bool)

(assert (=> bs!30432 m!346243))

(assert (=> b!271501 d!79613))

(declare-fun b!272480 () Bool)

(declare-fun e!169271 () List!3838)

(assert (=> b!272480 (= e!169271 (list!1575 (xs!3883 (c!51394 (charsOf!376 (h!9227 tokens!465))))))))

(declare-fun b!272481 () Bool)

(assert (=> b!272481 (= e!169271 (++!1002 (list!1571 (left!3152 (c!51394 (charsOf!376 (h!9227 tokens!465))))) (list!1571 (right!3482 (c!51394 (charsOf!376 (h!9227 tokens!465)))))))))

(declare-fun b!272478 () Bool)

(declare-fun e!169270 () List!3838)

(assert (=> b!272478 (= e!169270 Nil!3828)))

(declare-fun b!272479 () Bool)

(assert (=> b!272479 (= e!169270 e!169271)))

(declare-fun c!51700 () Bool)

(assert (=> b!272479 (= c!51700 ((_ is Leaf!1989) (c!51394 (charsOf!376 (h!9227 tokens!465)))))))

(declare-fun d!79615 () Bool)

(declare-fun c!51699 () Bool)

(assert (=> d!79615 (= c!51699 ((_ is Empty!1284) (c!51394 (charsOf!376 (h!9227 tokens!465)))))))

(assert (=> d!79615 (= (list!1571 (c!51394 (charsOf!376 (h!9227 tokens!465)))) e!169270)))

(assert (= (and d!79615 c!51699) b!272478))

(assert (= (and d!79615 (not c!51699)) b!272479))

(assert (= (and b!272479 c!51700) b!272480))

(assert (= (and b!272479 (not c!51700)) b!272481))

(declare-fun m!346245 () Bool)

(assert (=> b!272480 m!346245))

(declare-fun m!346247 () Bool)

(assert (=> b!272481 m!346247))

(declare-fun m!346249 () Bool)

(assert (=> b!272481 m!346249))

(assert (=> b!272481 m!346247))

(assert (=> b!272481 m!346249))

(declare-fun m!346251 () Bool)

(assert (=> b!272481 m!346251))

(assert (=> d!79157 d!79615))

(declare-fun b!272484 () Bool)

(declare-fun e!169273 () List!3838)

(assert (=> b!272484 (= e!169273 (list!1575 (xs!3883 (c!51394 (charsOf!376 separatorToken!170)))))))

(declare-fun b!272485 () Bool)

(assert (=> b!272485 (= e!169273 (++!1002 (list!1571 (left!3152 (c!51394 (charsOf!376 separatorToken!170)))) (list!1571 (right!3482 (c!51394 (charsOf!376 separatorToken!170))))))))

(declare-fun b!272482 () Bool)

(declare-fun e!169272 () List!3838)

(assert (=> b!272482 (= e!169272 Nil!3828)))

(declare-fun b!272483 () Bool)

(assert (=> b!272483 (= e!169272 e!169273)))

(declare-fun c!51702 () Bool)

(assert (=> b!272483 (= c!51702 ((_ is Leaf!1989) (c!51394 (charsOf!376 separatorToken!170))))))

(declare-fun d!79617 () Bool)

(declare-fun c!51701 () Bool)

(assert (=> d!79617 (= c!51701 ((_ is Empty!1284) (c!51394 (charsOf!376 separatorToken!170))))))

(assert (=> d!79617 (= (list!1571 (c!51394 (charsOf!376 separatorToken!170))) e!169272)))

(assert (= (and d!79617 c!51701) b!272482))

(assert (= (and d!79617 (not c!51701)) b!272483))

(assert (= (and b!272483 c!51702) b!272484))

(assert (= (and b!272483 (not c!51702)) b!272485))

(declare-fun m!346253 () Bool)

(assert (=> b!272484 m!346253))

(declare-fun m!346255 () Bool)

(assert (=> b!272485 m!346255))

(declare-fun m!346257 () Bool)

(assert (=> b!272485 m!346257))

(assert (=> b!272485 m!346255))

(assert (=> b!272485 m!346257))

(declare-fun m!346259 () Bool)

(assert (=> b!272485 m!346259))

(assert (=> d!79119 d!79617))

(declare-fun d!79619 () Bool)

(assert (=> d!79619 (= (inv!4735 (tag!941 (h!9226 (t!38513 rules!1920)))) (= (mod (str.len (value!25148 (tag!941 (h!9226 (t!38513 rules!1920))))) 2) 0))))

(assert (=> b!271824 d!79619))

(declare-fun d!79621 () Bool)

(declare-fun res!124357 () Bool)

(declare-fun e!169274 () Bool)

(assert (=> d!79621 (=> (not res!124357) (not e!169274))))

(assert (=> d!79621 (= res!124357 (semiInverseModEq!259 (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toValue!1470 (transformation!731 (h!9226 (t!38513 rules!1920))))))))

(assert (=> d!79621 (= (inv!4738 (transformation!731 (h!9226 (t!38513 rules!1920)))) e!169274)))

(declare-fun b!272486 () Bool)

(assert (=> b!272486 (= e!169274 (equivClasses!242 (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toValue!1470 (transformation!731 (h!9226 (t!38513 rules!1920))))))))

(assert (= (and d!79621 res!124357) b!272486))

(declare-fun m!346261 () Bool)

(assert (=> d!79621 m!346261))

(declare-fun m!346263 () Bool)

(assert (=> b!272486 m!346263))

(assert (=> b!271824 d!79621))

(declare-fun d!79623 () Bool)

(declare-fun c!51703 () Bool)

(assert (=> d!79623 (= c!51703 ((_ is Nil!3828) lt!112090))))

(declare-fun e!169275 () (InoxSet C!2832))

(assert (=> d!79623 (= (content!551 lt!112090) e!169275)))

(declare-fun b!272487 () Bool)

(assert (=> b!272487 (= e!169275 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!272488 () Bool)

(assert (=> b!272488 (= e!169275 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!112090) true) (content!551 (t!38512 lt!112090))))))

(assert (= (and d!79623 c!51703) b!272487))

(assert (= (and d!79623 (not c!51703)) b!272488))

(declare-fun m!346265 () Bool)

(assert (=> b!272488 m!346265))

(declare-fun m!346267 () Bool)

(assert (=> b!272488 m!346267))

(assert (=> d!79223 d!79623))

(assert (=> d!79223 d!79355))

(declare-fun d!79625 () Bool)

(declare-fun c!51704 () Bool)

(assert (=> d!79625 (= c!51704 ((_ is Nil!3828) lt!111759))))

(declare-fun e!169276 () (InoxSet C!2832))

(assert (=> d!79625 (= (content!551 lt!111759) e!169276)))

(declare-fun b!272489 () Bool)

(assert (=> b!272489 (= e!169276 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!272490 () Bool)

(assert (=> b!272490 (= e!169276 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!111759) true) (content!551 (t!38512 lt!111759))))))

(assert (= (and d!79625 c!51704) b!272489))

(assert (= (and d!79625 (not c!51704)) b!272490))

(declare-fun m!346269 () Bool)

(assert (=> b!272490 m!346269))

(declare-fun m!346271 () Bool)

(assert (=> b!272490 m!346271))

(assert (=> d!79223 d!79625))

(assert (=> b!271555 d!79125))

(declare-fun d!79627 () Bool)

(declare-fun e!169279 () Bool)

(assert (=> d!79627 e!169279))

(declare-fun res!124360 () Bool)

(assert (=> d!79627 (=> (not res!124360) (not e!169279))))

(declare-fun lt!112539 () BalanceConc!2576)

(assert (=> d!79627 (= res!124360 (= (list!1567 lt!112539) lt!111765))))

(declare-fun fromList!180 (List!3838) Conc!1284)

(assert (=> d!79627 (= lt!112539 (BalanceConc!2577 (fromList!180 lt!111765)))))

(assert (=> d!79627 (= (fromListB!321 lt!111765) lt!112539)))

(declare-fun b!272493 () Bool)

(assert (=> b!272493 (= e!169279 (isBalanced!355 (fromList!180 lt!111765)))))

(assert (= (and d!79627 res!124360) b!272493))

(declare-fun m!346273 () Bool)

(assert (=> d!79627 m!346273))

(declare-fun m!346275 () Bool)

(assert (=> d!79627 m!346275))

(assert (=> b!272493 m!346275))

(assert (=> b!272493 m!346275))

(declare-fun m!346277 () Bool)

(assert (=> b!272493 m!346277))

(assert (=> d!79117 d!79627))

(declare-fun d!79629 () Bool)

(declare-fun lt!112542 () Int)

(assert (=> d!79629 (= lt!112542 (size!3053 (list!1567 (_2!2362 lt!111967))))))

(declare-fun size!3062 (Conc!1284) Int)

(assert (=> d!79629 (= lt!112542 (size!3062 (c!51394 (_2!2362 lt!111967))))))

(assert (=> d!79629 (= (size!3056 (_2!2362 lt!111967)) lt!112542)))

(declare-fun bs!30433 () Bool)

(assert (= bs!30433 d!79629))

(assert (=> bs!30433 m!344267))

(assert (=> bs!30433 m!344267))

(declare-fun m!346279 () Bool)

(assert (=> bs!30433 m!346279))

(declare-fun m!346281 () Bool)

(assert (=> bs!30433 m!346281))

(assert (=> b!271546 d!79629))

(declare-fun d!79631 () Bool)

(declare-fun lt!112543 () Int)

(assert (=> d!79631 (= lt!112543 (size!3053 (list!1567 (seqFromList!829 lt!111765))))))

(assert (=> d!79631 (= lt!112543 (size!3062 (c!51394 (seqFromList!829 lt!111765))))))

(assert (=> d!79631 (= (size!3056 (seqFromList!829 lt!111765)) lt!112543)))

(declare-fun bs!30434 () Bool)

(assert (= bs!30434 d!79631))

(assert (=> bs!30434 m!343673))

(assert (=> bs!30434 m!344259))

(assert (=> bs!30434 m!344259))

(assert (=> bs!30434 m!345235))

(declare-fun m!346283 () Bool)

(assert (=> bs!30434 m!346283))

(assert (=> b!271546 d!79631))

(declare-fun d!79633 () Bool)

(declare-fun c!51706 () Bool)

(assert (=> d!79633 (= c!51706 ((_ is Nil!3828) lt!111989))))

(declare-fun e!169280 () (InoxSet C!2832))

(assert (=> d!79633 (= (content!551 lt!111989) e!169280)))

(declare-fun b!272494 () Bool)

(assert (=> b!272494 (= e!169280 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!272495 () Bool)

(assert (=> b!272495 (= e!169280 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!111989) true) (content!551 (t!38512 lt!111989))))))

(assert (= (and d!79633 c!51706) b!272494))

(assert (= (and d!79633 (not c!51706)) b!272495))

(declare-fun m!346285 () Bool)

(assert (=> b!272495 m!346285))

(declare-fun m!346287 () Bool)

(assert (=> b!272495 m!346287))

(assert (=> d!79141 d!79633))

(declare-fun d!79635 () Bool)

(declare-fun c!51707 () Bool)

(assert (=> d!79635 (= c!51707 ((_ is Nil!3828) lt!111756))))

(declare-fun e!169281 () (InoxSet C!2832))

(assert (=> d!79635 (= (content!551 lt!111756) e!169281)))

(declare-fun b!272496 () Bool)

(assert (=> b!272496 (= e!169281 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!272497 () Bool)

(assert (=> b!272497 (= e!169281 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!111756) true) (content!551 (t!38512 lt!111756))))))

(assert (= (and d!79635 c!51707) b!272496))

(assert (= (and d!79635 (not c!51707)) b!272497))

(declare-fun m!346289 () Bool)

(assert (=> b!272497 m!346289))

(declare-fun m!346291 () Bool)

(assert (=> b!272497 m!346291))

(assert (=> d!79141 d!79635))

(assert (=> d!79141 d!79625))

(declare-fun d!79637 () Bool)

(declare-fun lt!112544 () BalanceConc!2576)

(assert (=> d!79637 (= (list!1567 lt!112544) (originalCharacters!774 (h!9227 (t!38514 tokens!465))))))

(assert (=> d!79637 (= lt!112544 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (value!25149 (h!9227 (t!38514 tokens!465)))))))

(assert (=> d!79637 (= (charsOf!376 (h!9227 (t!38514 tokens!465))) lt!112544)))

(declare-fun b_lambda!8699 () Bool)

(assert (=> (not b_lambda!8699) (not d!79637)))

(declare-fun t!38646 () Bool)

(declare-fun tb!15493 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) t!38646) tb!15493))

(declare-fun b!272498 () Bool)

(declare-fun e!169282 () Bool)

(declare-fun tp!102848 () Bool)

(assert (=> b!272498 (= e!169282 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (value!25149 (h!9227 (t!38514 tokens!465)))))) tp!102848))))

(declare-fun result!19120 () Bool)

(assert (=> tb!15493 (= result!19120 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (value!25149 (h!9227 (t!38514 tokens!465))))) e!169282))))

(assert (= tb!15493 b!272498))

(declare-fun m!346293 () Bool)

(assert (=> b!272498 m!346293))

(declare-fun m!346295 () Bool)

(assert (=> tb!15493 m!346295))

(assert (=> d!79637 t!38646))

(declare-fun b_and!21789 () Bool)

(assert (= b_and!21755 (and (=> t!38646 result!19120) b_and!21789)))

(declare-fun t!38648 () Bool)

(declare-fun tb!15495 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) t!38648) tb!15495))

(declare-fun result!19122 () Bool)

(assert (= result!19122 result!19120))

(assert (=> d!79637 t!38648))

(declare-fun b_and!21791 () Bool)

(assert (= b_and!21753 (and (=> t!38648 result!19122) b_and!21791)))

(declare-fun t!38650 () Bool)

(declare-fun tb!15497 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) t!38650) tb!15497))

(declare-fun result!19124 () Bool)

(assert (= result!19124 result!19120))

(assert (=> d!79637 t!38650))

(declare-fun b_and!21793 () Bool)

(assert (= b_and!21749 (and (=> t!38650 result!19124) b_and!21793)))

(declare-fun t!38652 () Bool)

(declare-fun tb!15499 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) t!38652) tb!15499))

(declare-fun result!19126 () Bool)

(assert (= result!19126 result!19120))

(assert (=> d!79637 t!38652))

(declare-fun b_and!21795 () Bool)

(assert (= b_and!21751 (and (=> t!38652 result!19126) b_and!21795)))

(declare-fun tb!15501 () Bool)

(declare-fun t!38654 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) t!38654) tb!15501))

(declare-fun result!19128 () Bool)

(assert (= result!19128 result!19120))

(assert (=> d!79637 t!38654))

(declare-fun b_and!21797 () Bool)

(assert (= b_and!21757 (and (=> t!38654 result!19128) b_and!21797)))

(declare-fun m!346297 () Bool)

(assert (=> d!79637 m!346297))

(declare-fun m!346299 () Bool)

(assert (=> d!79637 m!346299))

(assert (=> bm!14877 d!79637))

(declare-fun bs!30459 () Bool)

(declare-fun b!272593 () Bool)

(assert (= bs!30459 (and b!272593 d!79591)))

(declare-fun lambda!9239 () Int)

(assert (=> bs!30459 (= (and (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) (= (toValue!1470 (transformation!731 (h!9226 rules!1920))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (= lambda!9239 lambda!9227))))

(declare-fun b!272606 () Bool)

(declare-fun e!169352 () Bool)

(assert (=> b!272606 (= e!169352 true)))

(declare-fun b!272605 () Bool)

(declare-fun e!169351 () Bool)

(assert (=> b!272605 (= e!169351 e!169352)))

(assert (=> b!272593 e!169351))

(assert (= b!272605 b!272606))

(assert (= b!272593 b!272605))

(assert (=> b!272606 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1976 order!2965 lambda!9239))))

(assert (=> b!272606 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1976 order!2965 lambda!9239))))

(declare-fun e!169342 () Option!813)

(declare-datatypes ((tuple2!4304 0))(
  ( (tuple2!4305 (_1!2368 BalanceConc!2576) (_2!2368 BalanceConc!2576)) )
))
(declare-fun lt!112617 () tuple2!4304)

(assert (=> b!272593 (= e!169342 (Some!812 (tuple2!4295 (Token!1207 (apply!777 (transformation!731 (h!9226 rules!1920)) (_1!2368 lt!112617)) (h!9226 rules!1920) (size!3056 (_1!2368 lt!112617)) (list!1567 (_1!2368 lt!112617))) (_2!2368 lt!112617))))))

(declare-fun lt!112622 () List!3838)

(assert (=> b!272593 (= lt!112622 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(declare-fun lt!112620 () Unit!4936)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!59 (Regex!955 List!3838) Unit!4936)

(assert (=> b!272593 (= lt!112620 (longestMatchIsAcceptedByMatchOrIsEmpty!59 (regex!731 (h!9226 rules!1920)) lt!112622))))

(declare-fun res!124419 () Bool)

(declare-datatypes ((tuple2!4306 0))(
  ( (tuple2!4307 (_1!2369 List!3838) (_2!2369 List!3838)) )
))
(declare-fun findLongestMatchInner!75 (Regex!955 List!3838 Int List!3838 List!3838 Int) tuple2!4306)

(assert (=> b!272593 (= res!124419 (isEmpty!2432 (_1!2369 (findLongestMatchInner!75 (regex!731 (h!9226 rules!1920)) Nil!3828 (size!3053 Nil!3828) lt!112622 lt!112622 (size!3053 lt!112622)))))))

(declare-fun e!169346 () Bool)

(assert (=> b!272593 (=> res!124419 e!169346)))

(assert (=> b!272593 e!169346))

(declare-fun lt!112619 () Unit!4936)

(assert (=> b!272593 (= lt!112619 lt!112620)))

(declare-fun lt!112618 () Unit!4936)

(declare-fun lemmaInv!37 (TokenValueInjection!1278) Unit!4936)

(assert (=> b!272593 (= lt!112618 (lemmaInv!37 (transformation!731 (h!9226 rules!1920))))))

(declare-fun lt!112621 () Unit!4936)

(declare-fun ForallOf!34 (Int BalanceConc!2576) Unit!4936)

(assert (=> b!272593 (= lt!112621 (ForallOf!34 lambda!9239 (_1!2368 lt!112617)))))

(declare-fun lt!112616 () Unit!4936)

(assert (=> b!272593 (= lt!112616 (ForallOf!34 lambda!9239 (seqFromList!829 (list!1567 (_1!2368 lt!112617)))))))

(declare-fun lt!112613 () Option!813)

(assert (=> b!272593 (= lt!112613 (Some!812 (tuple2!4295 (Token!1207 (apply!777 (transformation!731 (h!9226 rules!1920)) (_1!2368 lt!112617)) (h!9226 rules!1920) (size!3056 (_1!2368 lt!112617)) (list!1567 (_1!2368 lt!112617))) (_2!2368 lt!112617))))))

(declare-fun lt!112615 () Unit!4936)

(declare-fun lemmaEqSameImage!34 (TokenValueInjection!1278 BalanceConc!2576 BalanceConc!2576) Unit!4936)

(assert (=> b!272593 (= lt!112615 (lemmaEqSameImage!34 (transformation!731 (h!9226 rules!1920)) (_1!2368 lt!112617) (seqFromList!829 (list!1567 (_1!2368 lt!112617)))))))

(declare-fun d!79639 () Bool)

(declare-fun e!169345 () Bool)

(assert (=> d!79639 e!169345))

(declare-fun res!124421 () Bool)

(assert (=> d!79639 (=> (not res!124421) (not e!169345))))

(declare-fun lt!112614 () Option!813)

(assert (=> d!79639 (= res!124421 (= (isDefined!656 lt!112614) (isDefined!658 (maxPrefixOneRule!143 thiss!17480 (h!9226 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))))

(assert (=> d!79639 (= lt!112614 e!169342)))

(declare-fun c!51724 () Bool)

(assert (=> d!79639 (= c!51724 (isEmpty!2434 (_1!2368 lt!112617)))))

(declare-fun findLongestMatchWithZipperSequence!34 (Regex!955 BalanceConc!2576) tuple2!4304)

(assert (=> d!79639 (= lt!112617 (findLongestMatchWithZipperSequence!34 (regex!731 (h!9226 rules!1920)) (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(declare-fun ruleValid!90 (LexerInterface!617 Rule!1262) Bool)

(assert (=> d!79639 (ruleValid!90 thiss!17480 (h!9226 rules!1920))))

(assert (=> d!79639 (= (maxPrefixOneRuleZipperSequence!114 thiss!17480 (h!9226 rules!1920) (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))) lt!112614)))

(declare-fun b!272594 () Bool)

(assert (=> b!272594 (= e!169342 None!812)))

(declare-fun b!272595 () Bool)

(declare-fun e!169344 () Bool)

(assert (=> b!272595 (= e!169344 (= (list!1567 (_2!2363 (get!1270 lt!112614))) (_2!2365 (get!1271 (maxPrefixOneRule!143 thiss!17480 (h!9226 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!272596 () Bool)

(declare-fun e!169343 () Bool)

(assert (=> b!272596 (= e!169343 e!169344)))

(declare-fun res!124420 () Bool)

(assert (=> b!272596 (=> (not res!124420) (not e!169344))))

(assert (=> b!272596 (= res!124420 (= (_1!2363 (get!1270 lt!112614)) (_1!2365 (get!1271 (maxPrefixOneRule!143 thiss!17480 (h!9226 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!272597 () Bool)

(assert (=> b!272597 (= e!169346 (matchR!277 (regex!731 (h!9226 rules!1920)) (_1!2369 (findLongestMatchInner!75 (regex!731 (h!9226 rules!1920)) Nil!3828 (size!3053 Nil!3828) lt!112622 lt!112622 (size!3053 lt!112622)))))))

(declare-fun b!272598 () Bool)

(assert (=> b!272598 (= e!169345 e!169343)))

(declare-fun res!124422 () Bool)

(assert (=> b!272598 (=> res!124422 e!169343)))

(assert (=> b!272598 (= res!124422 (not (isDefined!656 lt!112614)))))

(assert (= (and d!79639 c!51724) b!272594))

(assert (= (and d!79639 (not c!51724)) b!272593))

(assert (= (and b!272593 (not res!124419)) b!272597))

(assert (= (and d!79639 res!124421) b!272598))

(assert (= (and b!272598 (not res!124422)) b!272596))

(assert (= (and b!272596 res!124420) b!272595))

(declare-fun m!346551 () Bool)

(assert (=> b!272595 m!346551))

(declare-fun m!346553 () Bool)

(assert (=> b!272595 m!346553))

(declare-fun m!346555 () Bool)

(assert (=> b!272595 m!346555))

(declare-fun m!346557 () Bool)

(assert (=> b!272595 m!346557))

(assert (=> b!272595 m!343715))

(assert (=> b!272595 m!344677))

(assert (=> b!272595 m!344677))

(assert (=> b!272595 m!346551))

(declare-fun m!346559 () Bool)

(assert (=> b!272598 m!346559))

(declare-fun m!346561 () Bool)

(assert (=> b!272597 m!346561))

(declare-fun m!346563 () Bool)

(assert (=> b!272597 m!346563))

(assert (=> b!272597 m!346561))

(assert (=> b!272597 m!346563))

(declare-fun m!346565 () Bool)

(assert (=> b!272597 m!346565))

(declare-fun m!346567 () Bool)

(assert (=> b!272597 m!346567))

(assert (=> b!272596 m!346557))

(assert (=> b!272596 m!343715))

(assert (=> b!272596 m!344677))

(assert (=> b!272596 m!344677))

(assert (=> b!272596 m!346551))

(assert (=> b!272596 m!346551))

(assert (=> b!272596 m!346553))

(declare-fun m!346569 () Bool)

(assert (=> d!79639 m!346569))

(assert (=> d!79639 m!346559))

(assert (=> d!79639 m!344677))

(assert (=> d!79639 m!346551))

(assert (=> d!79639 m!346551))

(declare-fun m!346571 () Bool)

(assert (=> d!79639 m!346571))

(assert (=> d!79639 m!343715))

(declare-fun m!346573 () Bool)

(assert (=> d!79639 m!346573))

(declare-fun m!346575 () Bool)

(assert (=> d!79639 m!346575))

(assert (=> d!79639 m!343715))

(assert (=> d!79639 m!344677))

(assert (=> b!272593 m!346561))

(declare-fun m!346577 () Bool)

(assert (=> b!272593 m!346577))

(assert (=> b!272593 m!346563))

(declare-fun m!346579 () Bool)

(assert (=> b!272593 m!346579))

(declare-fun m!346581 () Bool)

(assert (=> b!272593 m!346581))

(declare-fun m!346583 () Bool)

(assert (=> b!272593 m!346583))

(declare-fun m!346585 () Bool)

(assert (=> b!272593 m!346585))

(assert (=> b!272593 m!346579))

(declare-fun m!346587 () Bool)

(assert (=> b!272593 m!346587))

(declare-fun m!346589 () Bool)

(assert (=> b!272593 m!346589))

(declare-fun m!346591 () Bool)

(assert (=> b!272593 m!346591))

(declare-fun m!346593 () Bool)

(assert (=> b!272593 m!346593))

(assert (=> b!272593 m!346561))

(assert (=> b!272593 m!346563))

(assert (=> b!272593 m!346565))

(declare-fun m!346595 () Bool)

(assert (=> b!272593 m!346595))

(assert (=> b!272593 m!346583))

(assert (=> b!272593 m!346579))

(assert (=> b!272593 m!343715))

(assert (=> b!272593 m!344677))

(assert (=> bm!14887 d!79639))

(declare-fun d!79711 () Bool)

(assert (=> d!79711 (forall!964 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0) lambda!9205)))

(declare-fun lt!112623 () Unit!4936)

(assert (=> d!79711 (= lt!112623 (choose!2467 (list!1570 (seqFromList!830 (t!38514 tokens!465))) (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0) lambda!9205))))

(assert (=> d!79711 (forall!964 (list!1570 (seqFromList!830 (t!38514 tokens!465))) lambda!9205)))

(assert (=> d!79711 (= (lemmaContentSubsetPreservesForall!108 (list!1570 (seqFromList!830 (t!38514 tokens!465))) (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0) lambda!9205) lt!112623)))

(declare-fun bs!30460 () Bool)

(assert (= bs!30460 d!79711))

(assert (=> bs!30460 m!344463))

(declare-fun m!346597 () Bool)

(assert (=> bs!30460 m!346597))

(assert (=> bs!30460 m!344423))

(assert (=> bs!30460 m!344463))

(declare-fun m!346599 () Bool)

(assert (=> bs!30460 m!346599))

(assert (=> bs!30460 m!344423))

(declare-fun m!346601 () Bool)

(assert (=> bs!30460 m!346601))

(assert (=> d!79155 d!79711))

(declare-fun bs!30461 () Bool)

(declare-fun b!272611 () Bool)

(assert (= bs!30461 (and b!272611 b!271373)))

(declare-fun lambda!9240 () Int)

(assert (=> bs!30461 (= lambda!9240 lambda!9192)))

(declare-fun bs!30462 () Bool)

(assert (= bs!30462 (and b!272611 b!272023)))

(assert (=> bs!30462 (= lambda!9240 lambda!9211)))

(declare-fun bs!30463 () Bool)

(assert (= bs!30463 (and b!272611 b!272077)))

(assert (=> bs!30463 (= lambda!9240 lambda!9212)))

(declare-fun bs!30464 () Bool)

(assert (= bs!30464 (and b!272611 b!271552)))

(assert (=> bs!30464 (= lambda!9240 lambda!9204)))

(declare-fun bs!30465 () Bool)

(assert (= bs!30465 (and b!272611 b!271207)))

(assert (=> bs!30465 (= lambda!9240 lambda!9172)))

(declare-fun bs!30466 () Bool)

(assert (= bs!30466 (and b!272611 b!271466)))

(assert (=> bs!30466 (= lambda!9240 lambda!9200)))

(declare-fun bs!30467 () Bool)

(assert (= bs!30467 (and b!272611 b!271612)))

(assert (=> bs!30467 (= lambda!9240 lambda!9206)))

(declare-fun bs!30468 () Bool)

(assert (= bs!30468 (and b!272611 d!79155)))

(assert (=> bs!30468 (not (= lambda!9240 lambda!9205))))

(declare-fun bs!30469 () Bool)

(assert (= bs!30469 (and b!272611 d!79033)))

(assert (=> bs!30469 (= lambda!9240 lambda!9183)))

(declare-fun bs!30470 () Bool)

(assert (= bs!30470 (and b!272611 d!79043)))

(assert (=> bs!30470 (not (= lambda!9240 lambda!9191))))

(declare-fun bs!30471 () Bool)

(assert (= bs!30471 (and b!272611 d!79309)))

(assert (=> bs!30471 (not (= lambda!9240 lambda!9210))))

(declare-fun bs!30472 () Bool)

(assert (= bs!30472 (and b!272611 b!271212)))

(assert (=> bs!30472 (not (= lambda!9240 lambda!9171))))

(declare-fun b!272617 () Bool)

(declare-fun e!169359 () Bool)

(assert (=> b!272617 (= e!169359 true)))

(declare-fun b!272616 () Bool)

(declare-fun e!169358 () Bool)

(assert (=> b!272616 (= e!169358 e!169359)))

(declare-fun b!272615 () Bool)

(declare-fun e!169357 () Bool)

(assert (=> b!272615 (= e!169357 e!169358)))

(assert (=> b!272611 e!169357))

(assert (= b!272616 b!272617))

(assert (= b!272615 b!272616))

(assert (= (and b!272611 ((_ is Cons!3829) rules!1920)) b!272615))

(assert (=> b!272617 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9240))))

(assert (=> b!272617 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9240))))

(assert (=> b!272611 true))

(declare-fun b!272607 () Bool)

(declare-fun e!169354 () List!3838)

(declare-fun call!14940 () List!3838)

(declare-fun lt!112628 () List!3838)

(assert (=> b!272607 (= e!169354 (++!1002 call!14940 lt!112628))))

(declare-fun b!272608 () Bool)

(declare-fun e!169356 () List!3838)

(assert (=> b!272608 (= e!169356 Nil!3828)))

(declare-fun d!79713 () Bool)

(declare-fun c!51728 () Bool)

(assert (=> d!79713 (= c!51728 ((_ is Cons!3830) (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0)))))

(assert (=> d!79713 (= (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0) separatorToken!170) e!169356)))

(declare-fun b!272609 () Bool)

(declare-fun e!169353 () List!3838)

(assert (=> b!272609 (= e!169353 call!14940)))

(declare-fun bm!14931 () Bool)

(declare-fun call!14937 () BalanceConc!2576)

(declare-fun call!14938 () BalanceConc!2576)

(assert (=> bm!14931 (= call!14937 call!14938)))

(declare-fun b!272610 () Bool)

(declare-fun c!51725 () Bool)

(declare-fun lt!112629 () Option!815)

(assert (=> b!272610 (= c!51725 (and ((_ is Some!814) lt!112629) (not (= (_1!2365 (v!14689 lt!112629)) (h!9227 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0))))))))

(assert (=> b!272610 (= e!169353 e!169354)))

(assert (=> b!272611 (= e!169356 e!169353)))

(declare-fun lt!112627 () Unit!4936)

(assert (=> b!272611 (= lt!112627 (forallContained!286 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0) lambda!9240 (h!9227 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0))))))

(assert (=> b!272611 (= lt!112628 (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (t!38514 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!272611 (= lt!112629 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 (charsOf!376 (h!9227 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0)))) lt!112628)))))

(declare-fun c!51727 () Bool)

(assert (=> b!272611 (= c!51727 (and ((_ is Some!814) lt!112629) (= (_1!2365 (v!14689 lt!112629)) (h!9227 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0)))))))

(declare-fun bm!14932 () Bool)

(declare-fun call!14939 () List!3838)

(declare-fun e!169355 () BalanceConc!2576)

(assert (=> bm!14932 (= call!14939 (list!1567 e!169355))))

(declare-fun c!51726 () Bool)

(assert (=> bm!14932 (= c!51726 c!51725)))

(declare-fun b!272612 () Bool)

(assert (=> b!272612 (= e!169355 call!14937)))

(declare-fun bm!14933 () Bool)

(assert (=> bm!14933 (= call!14938 (charsOf!376 (h!9227 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0))))))

(declare-fun b!272613 () Bool)

(assert (=> b!272613 (= e!169354 Nil!3828)))

(assert (=> b!272613 (= (print!342 thiss!17480 (singletonSeq!277 (h!9227 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0)))) (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0))) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!112626 () Unit!4936)

(declare-fun Unit!4968 () Unit!4936)

(assert (=> b!272613 (= lt!112626 Unit!4968)))

(declare-fun lt!112625 () Unit!4936)

(assert (=> b!272613 (= lt!112625 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 call!14939 lt!112628))))

(assert (=> b!272613 false))

(declare-fun lt!112624 () Unit!4936)

(declare-fun Unit!4969 () Unit!4936)

(assert (=> b!272613 (= lt!112624 Unit!4969)))

(declare-fun bm!14934 () Bool)

(declare-fun call!14936 () List!3838)

(assert (=> bm!14934 (= call!14940 (++!1002 call!14936 (ite c!51727 lt!112628 call!14939)))))

(declare-fun bm!14935 () Bool)

(assert (=> bm!14935 (= call!14936 (list!1567 (ite c!51727 call!14938 call!14937)))))

(declare-fun b!272614 () Bool)

(assert (=> b!272614 (= e!169355 (charsOf!376 separatorToken!170))))

(assert (= (and d!79713 c!51728) b!272611))

(assert (= (and d!79713 (not c!51728)) b!272608))

(assert (= (and b!272611 c!51727) b!272609))

(assert (= (and b!272611 (not c!51727)) b!272610))

(assert (= (and b!272610 c!51725) b!272607))

(assert (= (and b!272610 (not c!51725)) b!272613))

(assert (= (or b!272607 b!272613) bm!14931))

(assert (= (or b!272607 b!272613) bm!14932))

(assert (= (and bm!14932 c!51726) b!272614))

(assert (= (and bm!14932 (not c!51726)) b!272612))

(assert (= (or b!272609 bm!14931) bm!14933))

(assert (= (or b!272609 b!272607) bm!14935))

(assert (= (or b!272609 b!272607) bm!14934))

(declare-fun m!346603 () Bool)

(assert (=> bm!14933 m!346603))

(declare-fun m!346605 () Bool)

(assert (=> b!272613 m!346605))

(assert (=> b!272613 m!346605))

(declare-fun m!346607 () Bool)

(assert (=> b!272613 m!346607))

(assert (=> b!272613 m!346605))

(declare-fun m!346609 () Bool)

(assert (=> b!272613 m!346609))

(declare-fun m!346611 () Bool)

(assert (=> b!272613 m!346611))

(declare-fun m!346613 () Bool)

(assert (=> b!272607 m!346613))

(declare-fun m!346615 () Bool)

(assert (=> bm!14934 m!346615))

(declare-fun m!346617 () Bool)

(assert (=> bm!14932 m!346617))

(declare-fun m!346619 () Bool)

(assert (=> bm!14935 m!346619))

(assert (=> b!272614 m!343747))

(assert (=> b!272611 m!344463))

(declare-fun m!346621 () Bool)

(assert (=> b!272611 m!346621))

(declare-fun m!346623 () Bool)

(assert (=> b!272611 m!346623))

(declare-fun m!346625 () Bool)

(assert (=> b!272611 m!346625))

(declare-fun m!346627 () Bool)

(assert (=> b!272611 m!346627))

(assert (=> b!272611 m!346603))

(assert (=> b!272611 m!346625))

(declare-fun m!346629 () Bool)

(assert (=> b!272611 m!346629))

(assert (=> b!272611 m!346603))

(assert (=> b!272611 m!346623))

(assert (=> d!79155 d!79713))

(declare-fun d!79715 () Bool)

(assert (=> d!79715 (= (dropList!164 (seqFromList!830 (t!38514 tokens!465)) 0) (drop!217 (list!1574 (c!51396 (seqFromList!830 (t!38514 tokens!465)))) 0))))

(declare-fun bs!30473 () Bool)

(assert (= bs!30473 d!79715))

(assert (=> bs!30473 m!345015))

(assert (=> bs!30473 m!345015))

(declare-fun m!346631 () Bool)

(assert (=> bs!30473 m!346631))

(assert (=> d!79155 d!79715))

(declare-fun d!79717 () Bool)

(assert (=> d!79717 (= (list!1567 lt!112000) (list!1571 (c!51394 lt!112000)))))

(declare-fun bs!30474 () Bool)

(assert (= bs!30474 d!79717))

(declare-fun m!346633 () Bool)

(assert (=> bs!30474 m!346633))

(assert (=> d!79155 d!79717))

(assert (=> d!79155 d!79611))

(assert (=> d!79155 d!79307))

(declare-fun d!79719 () Bool)

(declare-fun c!51729 () Bool)

(assert (=> d!79719 (= c!51729 ((_ is Node!1284) (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))))))

(declare-fun e!169360 () Bool)

(assert (=> d!79719 (= (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))) e!169360)))

(declare-fun b!272618 () Bool)

(assert (=> b!272618 (= e!169360 (inv!4744 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))))))

(declare-fun b!272619 () Bool)

(declare-fun e!169361 () Bool)

(assert (=> b!272619 (= e!169360 e!169361)))

(declare-fun res!124423 () Bool)

(assert (=> b!272619 (= res!124423 (not ((_ is Leaf!1989) (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))))))))

(assert (=> b!272619 (=> res!124423 e!169361)))

(declare-fun b!272620 () Bool)

(assert (=> b!272620 (= e!169361 (inv!4745 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))))))

(assert (= (and d!79719 c!51729) b!272618))

(assert (= (and d!79719 (not c!51729)) b!272619))

(assert (= (and b!272619 (not res!124423)) b!272620))

(declare-fun m!346635 () Bool)

(assert (=> b!272618 m!346635))

(declare-fun m!346637 () Bool)

(assert (=> b!272620 m!346637))

(assert (=> b!271239 d!79719))

(declare-fun d!79721 () Bool)

(declare-fun e!169364 () Bool)

(assert (=> d!79721 e!169364))

(declare-fun res!124426 () Bool)

(assert (=> d!79721 (=> (not res!124426) (not e!169364))))

(declare-fun lt!112632 () BalanceConc!2578)

(assert (=> d!79721 (= res!124426 (= (list!1570 lt!112632) (t!38514 tokens!465)))))

(declare-fun fromList!181 (List!3840) Conc!1285)

(assert (=> d!79721 (= lt!112632 (BalanceConc!2579 (fromList!181 (t!38514 tokens!465))))))

(assert (=> d!79721 (= (fromListB!319 (t!38514 tokens!465)) lt!112632)))

(declare-fun b!272623 () Bool)

(assert (=> b!272623 (= e!169364 (isBalanced!353 (fromList!181 (t!38514 tokens!465))))))

(assert (= (and d!79721 res!124426) b!272623))

(declare-fun m!346639 () Bool)

(assert (=> d!79721 m!346639))

(declare-fun m!346641 () Bool)

(assert (=> d!79721 m!346641))

(assert (=> b!272623 m!346641))

(assert (=> b!272623 m!346641))

(declare-fun m!346643 () Bool)

(assert (=> b!272623 m!346643))

(assert (=> d!79149 d!79721))

(declare-fun d!79723 () Bool)

(declare-fun lt!112633 () BalanceConc!2576)

(assert (=> d!79723 (= (list!1567 lt!112633) (originalCharacters!774 (apply!773 lt!111755 0)))))

(assert (=> d!79723 (= lt!112633 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0)))) (value!25149 (apply!773 lt!111755 0))))))

(assert (=> d!79723 (= (charsOf!376 (apply!773 lt!111755 0)) lt!112633)))

(declare-fun b_lambda!8709 () Bool)

(assert (=> (not b_lambda!8709) (not d!79723)))

(declare-fun tb!15513 () Bool)

(declare-fun t!38669 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0))))) t!38669) tb!15513))

(declare-fun b!272624 () Bool)

(declare-fun e!169365 () Bool)

(declare-fun tp!102850 () Bool)

(assert (=> b!272624 (= e!169365 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0)))) (value!25149 (apply!773 lt!111755 0))))) tp!102850))))

(declare-fun result!19140 () Bool)

(assert (=> tb!15513 (= result!19140 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0)))) (value!25149 (apply!773 lt!111755 0)))) e!169365))))

(assert (= tb!15513 b!272624))

(declare-fun m!346645 () Bool)

(assert (=> b!272624 m!346645))

(declare-fun m!346647 () Bool)

(assert (=> tb!15513 m!346647))

(assert (=> d!79723 t!38669))

(declare-fun b_and!21809 () Bool)

(assert (= b_and!21797 (and (=> t!38669 result!19140) b_and!21809)))

(declare-fun t!38671 () Bool)

(declare-fun tb!15515 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0))))) t!38671) tb!15515))

(declare-fun result!19142 () Bool)

(assert (= result!19142 result!19140))

(assert (=> d!79723 t!38671))

(declare-fun b_and!21811 () Bool)

(assert (= b_and!21789 (and (=> t!38671 result!19142) b_and!21811)))

(declare-fun t!38673 () Bool)

(declare-fun tb!15517 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0))))) t!38673) tb!15517))

(declare-fun result!19144 () Bool)

(assert (= result!19144 result!19140))

(assert (=> d!79723 t!38673))

(declare-fun b_and!21813 () Bool)

(assert (= b_and!21793 (and (=> t!38673 result!19144) b_and!21813)))

(declare-fun t!38675 () Bool)

(declare-fun tb!15519 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0))))) t!38675) tb!15519))

(declare-fun result!19146 () Bool)

(assert (= result!19146 result!19140))

(assert (=> d!79723 t!38675))

(declare-fun b_and!21815 () Bool)

(assert (= b_and!21791 (and (=> t!38675 result!19146) b_and!21815)))

(declare-fun t!38677 () Bool)

(declare-fun tb!15521 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0))))) t!38677) tb!15521))

(declare-fun result!19148 () Bool)

(assert (= result!19148 result!19140))

(assert (=> d!79723 t!38677))

(declare-fun b_and!21817 () Bool)

(assert (= b_and!21795 (and (=> t!38677 result!19148) b_and!21817)))

(declare-fun m!346649 () Bool)

(assert (=> d!79723 m!346649))

(declare-fun m!346651 () Bool)

(assert (=> d!79723 m!346651))

(assert (=> b!271373 d!79723))

(declare-fun lt!112634 () BalanceConc!2576)

(declare-fun e!169366 () Bool)

(declare-fun b!272628 () Bool)

(assert (=> b!272628 (= e!169366 (= (list!1567 lt!112634) (++!1002 (list!1567 (charsOf!376 (apply!773 lt!111755 0))) (list!1567 lt!111891))))))

(declare-fun b!272626 () Bool)

(declare-fun res!124429 () Bool)

(assert (=> b!272626 (=> (not res!124429) (not e!169366))))

(assert (=> b!272626 (= res!124429 (<= (height!158 (++!1006 (c!51394 (charsOf!376 (apply!773 lt!111755 0))) (c!51394 lt!111891))) (+ (max!0 (height!158 (c!51394 (charsOf!376 (apply!773 lt!111755 0)))) (height!158 (c!51394 lt!111891))) 1)))))

(declare-fun b!272625 () Bool)

(declare-fun res!124428 () Bool)

(assert (=> b!272625 (=> (not res!124428) (not e!169366))))

(assert (=> b!272625 (= res!124428 (isBalanced!355 (++!1006 (c!51394 (charsOf!376 (apply!773 lt!111755 0))) (c!51394 lt!111891))))))

(declare-fun d!79725 () Bool)

(assert (=> d!79725 e!169366))

(declare-fun res!124430 () Bool)

(assert (=> d!79725 (=> (not res!124430) (not e!169366))))

(assert (=> d!79725 (= res!124430 (appendAssocInst!65 (c!51394 (charsOf!376 (apply!773 lt!111755 0))) (c!51394 lt!111891)))))

(assert (=> d!79725 (= lt!112634 (BalanceConc!2577 (++!1006 (c!51394 (charsOf!376 (apply!773 lt!111755 0))) (c!51394 lt!111891))))))

(assert (=> d!79725 (= (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891) lt!112634)))

(declare-fun b!272627 () Bool)

(declare-fun res!124427 () Bool)

(assert (=> b!272627 (=> (not res!124427) (not e!169366))))

(assert (=> b!272627 (= res!124427 (>= (height!158 (++!1006 (c!51394 (charsOf!376 (apply!773 lt!111755 0))) (c!51394 lt!111891))) (max!0 (height!158 (c!51394 (charsOf!376 (apply!773 lt!111755 0)))) (height!158 (c!51394 lt!111891)))))))

(assert (= (and d!79725 res!124430) b!272625))

(assert (= (and b!272625 res!124428) b!272626))

(assert (= (and b!272626 res!124429) b!272627))

(assert (= (and b!272627 res!124427) b!272628))

(declare-fun m!346653 () Bool)

(assert (=> b!272625 m!346653))

(assert (=> b!272625 m!346653))

(declare-fun m!346655 () Bool)

(assert (=> b!272625 m!346655))

(declare-fun m!346657 () Bool)

(assert (=> d!79725 m!346657))

(assert (=> d!79725 m!346653))

(assert (=> b!272626 m!346653))

(declare-fun m!346659 () Bool)

(assert (=> b!272626 m!346659))

(assert (=> b!272626 m!346653))

(declare-fun m!346661 () Bool)

(assert (=> b!272626 m!346661))

(declare-fun m!346663 () Bool)

(assert (=> b!272626 m!346663))

(assert (=> b!272626 m!346663))

(assert (=> b!272626 m!346659))

(declare-fun m!346665 () Bool)

(assert (=> b!272626 m!346665))

(assert (=> b!272627 m!346653))

(assert (=> b!272627 m!346659))

(assert (=> b!272627 m!346653))

(assert (=> b!272627 m!346661))

(assert (=> b!272627 m!346663))

(assert (=> b!272627 m!346663))

(assert (=> b!272627 m!346659))

(assert (=> b!272627 m!346665))

(declare-fun m!346667 () Bool)

(assert (=> b!272628 m!346667))

(assert (=> b!272628 m!343941))

(declare-fun m!346669 () Bool)

(assert (=> b!272628 m!346669))

(assert (=> b!272628 m!343965))

(assert (=> b!272628 m!346669))

(assert (=> b!272628 m!343965))

(declare-fun m!346671 () Bool)

(assert (=> b!272628 m!346671))

(assert (=> b!271373 d!79725))

(declare-fun d!79727 () Bool)

(assert (=> d!79727 (= (tail!478 (drop!217 lt!111885 0)) (drop!217 lt!111885 (+ 0 1)))))

(declare-fun lt!112635 () Unit!4936)

(assert (=> d!79727 (= lt!112635 (choose!2466 lt!111885 0))))

(declare-fun e!169367 () Bool)

(assert (=> d!79727 e!169367))

(declare-fun res!124431 () Bool)

(assert (=> d!79727 (=> (not res!124431) (not e!169367))))

(assert (=> d!79727 (= res!124431 (>= 0 0))))

(assert (=> d!79727 (= (lemmaDropTail!196 lt!111885 0) lt!112635)))

(declare-fun b!272629 () Bool)

(assert (=> b!272629 (= e!169367 (< 0 (size!3060 lt!111885)))))

(assert (= (and d!79727 res!124431) b!272629))

(assert (=> d!79727 m!343951))

(assert (=> d!79727 m!343951))

(assert (=> d!79727 m!343955))

(assert (=> d!79727 m!343957))

(declare-fun m!346673 () Bool)

(assert (=> d!79727 m!346673))

(declare-fun m!346675 () Bool)

(assert (=> b!272629 m!346675))

(assert (=> b!271373 d!79727))

(declare-fun b!272630 () Bool)

(declare-fun e!169371 () List!3840)

(assert (=> b!272630 (= e!169371 Nil!3830)))

(declare-fun b!272631 () Bool)

(declare-fun e!169372 () Bool)

(declare-fun lt!112636 () List!3840)

(declare-fun e!169368 () Int)

(assert (=> b!272631 (= e!169372 (= (size!3060 lt!112636) e!169368))))

(declare-fun c!51731 () Bool)

(assert (=> b!272631 (= c!51731 (<= 0 0))))

(declare-fun b!272632 () Bool)

(declare-fun e!169370 () List!3840)

(assert (=> b!272632 (= e!169370 lt!111887)))

(declare-fun b!272633 () Bool)

(assert (=> b!272633 (= e!169370 (drop!217 (t!38514 lt!111887) (- 0 1)))))

(declare-fun b!272634 () Bool)

(declare-fun e!169369 () Int)

(declare-fun call!14941 () Int)

(assert (=> b!272634 (= e!169369 (- call!14941 0))))

(declare-fun b!272635 () Bool)

(assert (=> b!272635 (= e!169369 0)))

(declare-fun b!272636 () Bool)

(assert (=> b!272636 (= e!169371 e!169370)))

(declare-fun c!51734 () Bool)

(assert (=> b!272636 (= c!51734 (<= 0 0))))

(declare-fun b!272637 () Bool)

(assert (=> b!272637 (= e!169368 e!169369)))

(declare-fun c!51733 () Bool)

(assert (=> b!272637 (= c!51733 (>= 0 call!14941))))

(declare-fun d!79729 () Bool)

(assert (=> d!79729 e!169372))

(declare-fun res!124432 () Bool)

(assert (=> d!79729 (=> (not res!124432) (not e!169372))))

(assert (=> d!79729 (= res!124432 (= ((_ map implies) (content!553 lt!112636) (content!553 lt!111887)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79729 (= lt!112636 e!169371)))

(declare-fun c!51732 () Bool)

(assert (=> d!79729 (= c!51732 ((_ is Nil!3830) lt!111887))))

(assert (=> d!79729 (= (drop!217 lt!111887 0) lt!112636)))

(declare-fun bm!14936 () Bool)

(assert (=> bm!14936 (= call!14941 (size!3060 lt!111887))))

(declare-fun b!272638 () Bool)

(assert (=> b!272638 (= e!169368 call!14941)))

(assert (= (and d!79729 c!51732) b!272630))

(assert (= (and d!79729 (not c!51732)) b!272636))

(assert (= (and b!272636 c!51734) b!272632))

(assert (= (and b!272636 (not c!51734)) b!272633))

(assert (= (and d!79729 res!124432) b!272631))

(assert (= (and b!272631 c!51731) b!272638))

(assert (= (and b!272631 (not c!51731)) b!272637))

(assert (= (and b!272637 c!51733) b!272635))

(assert (= (and b!272637 (not c!51733)) b!272634))

(assert (= (or b!272638 b!272637 b!272634) bm!14936))

(declare-fun m!346677 () Bool)

(assert (=> b!272631 m!346677))

(declare-fun m!346679 () Bool)

(assert (=> b!272633 m!346679))

(declare-fun m!346681 () Bool)

(assert (=> d!79729 m!346681))

(declare-fun m!346683 () Bool)

(assert (=> d!79729 m!346683))

(declare-fun m!346685 () Bool)

(assert (=> bm!14936 m!346685))

(assert (=> b!271373 d!79729))

(declare-fun d!79731 () Bool)

(declare-fun e!169375 () Bool)

(assert (=> d!79731 e!169375))

(declare-fun res!124437 () Bool)

(assert (=> d!79731 (=> (not res!124437) (not e!169375))))

(declare-fun lt!112643 () Option!813)

(assert (=> d!79731 (= res!124437 (= (isDefined!656 lt!112643) (isDefined!658 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891))))))))

(declare-fun e!169377 () Option!813)

(assert (=> d!79731 (= lt!112643 e!169377)))

(declare-fun c!51735 () Bool)

(assert (=> d!79731 (= c!51735 (and ((_ is Cons!3829) rules!1920) ((_ is Nil!3829) (t!38513 rules!1920))))))

(declare-fun lt!112638 () Unit!4936)

(declare-fun lt!112641 () Unit!4936)

(assert (=> d!79731 (= lt!112638 lt!112641)))

(declare-fun lt!112637 () List!3838)

(declare-fun lt!112642 () List!3838)

(assert (=> d!79731 (isPrefix!399 lt!112637 lt!112642)))

(assert (=> d!79731 (= lt!112641 (lemmaIsPrefixRefl!209 lt!112637 lt!112642))))

(assert (=> d!79731 (= lt!112642 (list!1567 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))

(assert (=> d!79731 (= lt!112637 (list!1567 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))

(assert (=> d!79731 (rulesValidInductive!204 thiss!17480 rules!1920)))

(assert (=> d!79731 (= (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)) lt!112643)))

(declare-fun b!272639 () Bool)

(declare-fun e!169373 () Bool)

(declare-fun e!169376 () Bool)

(assert (=> b!272639 (= e!169373 e!169376)))

(declare-fun res!124435 () Bool)

(assert (=> b!272639 (=> (not res!124435) (not e!169376))))

(assert (=> b!272639 (= res!124435 (= (_1!2363 (get!1270 lt!112643)) (_1!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))))))

(declare-fun b!272640 () Bool)

(declare-fun res!124434 () Bool)

(assert (=> b!272640 (=> (not res!124434) (not e!169375))))

(declare-fun e!169378 () Bool)

(assert (=> b!272640 (= res!124434 e!169378)))

(declare-fun res!124438 () Bool)

(assert (=> b!272640 (=> res!124438 e!169378)))

(assert (=> b!272640 (= res!124438 (not (isDefined!656 lt!112643)))))

(declare-fun b!272641 () Bool)

(declare-fun e!169374 () Bool)

(assert (=> b!272641 (= e!169378 e!169374)))

(declare-fun res!124436 () Bool)

(assert (=> b!272641 (=> (not res!124436) (not e!169374))))

(assert (=> b!272641 (= res!124436 (= (_1!2363 (get!1270 lt!112643)) (_1!2365 (get!1271 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))))))

(declare-fun b!272642 () Bool)

(declare-fun lt!112640 () Option!813)

(declare-fun lt!112639 () Option!813)

(assert (=> b!272642 (= e!169377 (ite (and ((_ is None!812) lt!112640) ((_ is None!812) lt!112639)) None!812 (ite ((_ is None!812) lt!112639) lt!112640 (ite ((_ is None!812) lt!112640) lt!112639 (ite (>= (size!3051 (_1!2363 (v!14681 lt!112640))) (size!3051 (_1!2363 (v!14681 lt!112639)))) lt!112640 lt!112639)))))))

(declare-fun call!14942 () Option!813)

(assert (=> b!272642 (= lt!112640 call!14942)))

(assert (=> b!272642 (= lt!112639 (maxPrefixZipperSequence!298 thiss!17480 (t!38513 rules!1920) (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))

(declare-fun b!272643 () Bool)

(assert (=> b!272643 (= e!169375 e!169373)))

(declare-fun res!124433 () Bool)

(assert (=> b!272643 (=> res!124433 e!169373)))

(assert (=> b!272643 (= res!124433 (not (isDefined!656 lt!112643)))))

(declare-fun bm!14937 () Bool)

(assert (=> bm!14937 (= call!14942 (maxPrefixOneRuleZipperSequence!114 thiss!17480 (h!9226 rules!1920) (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))

(declare-fun b!272644 () Bool)

(assert (=> b!272644 (= e!169376 (= (list!1567 (_2!2363 (get!1270 lt!112643))) (_2!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))))))

(declare-fun b!272645 () Bool)

(assert (=> b!272645 (= e!169374 (= (list!1567 (_2!2363 (get!1270 lt!112643))) (_2!2365 (get!1271 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (++!1004 (charsOf!376 (apply!773 lt!111755 0)) lt!111891)))))))))

(declare-fun b!272646 () Bool)

(assert (=> b!272646 (= e!169377 call!14942)))

(assert (= (and d!79731 c!51735) b!272646))

(assert (= (and d!79731 (not c!51735)) b!272642))

(assert (= (or b!272646 b!272642) bm!14937))

(assert (= (and d!79731 res!124437) b!272640))

(assert (= (and b!272640 (not res!124438)) b!272641))

(assert (= (and b!272641 res!124436) b!272645))

(assert (= (and b!272640 res!124434) b!272643))

(assert (= (and b!272643 (not res!124433)) b!272639))

(assert (= (and b!272639 res!124435) b!272644))

(assert (=> bm!14937 m!343949))

(declare-fun m!346687 () Bool)

(assert (=> bm!14937 m!346687))

(declare-fun m!346689 () Bool)

(assert (=> b!272643 m!346689))

(assert (=> d!79731 m!346689))

(declare-fun m!346691 () Bool)

(assert (=> d!79731 m!346691))

(declare-fun m!346693 () Bool)

(assert (=> d!79731 m!346693))

(declare-fun m!346695 () Bool)

(assert (=> d!79731 m!346695))

(declare-fun m!346697 () Bool)

(assert (=> d!79731 m!346697))

(assert (=> d!79731 m!344675))

(declare-fun m!346699 () Bool)

(assert (=> d!79731 m!346699))

(assert (=> d!79731 m!346693))

(assert (=> d!79731 m!343949))

(assert (=> d!79731 m!346699))

(declare-fun m!346701 () Bool)

(assert (=> b!272641 m!346701))

(assert (=> b!272641 m!343949))

(assert (=> b!272641 m!346699))

(assert (=> b!272641 m!346699))

(assert (=> b!272641 m!346693))

(assert (=> b!272641 m!346693))

(declare-fun m!346703 () Bool)

(assert (=> b!272641 m!346703))

(assert (=> b!272645 m!346701))

(assert (=> b!272645 m!346693))

(assert (=> b!272645 m!346703))

(declare-fun m!346705 () Bool)

(assert (=> b!272645 m!346705))

(assert (=> b!272645 m!346699))

(assert (=> b!272645 m!346693))

(assert (=> b!272645 m!343949))

(assert (=> b!272645 m!346699))

(assert (=> b!272644 m!346701))

(assert (=> b!272644 m!343949))

(assert (=> b!272644 m!346699))

(assert (=> b!272644 m!346705))

(declare-fun m!346707 () Bool)

(assert (=> b!272644 m!346707))

(declare-fun m!346709 () Bool)

(assert (=> b!272644 m!346709))

(assert (=> b!272644 m!346699))

(assert (=> b!272644 m!346707))

(assert (=> b!272642 m!343949))

(declare-fun m!346711 () Bool)

(assert (=> b!272642 m!346711))

(assert (=> b!272640 m!346689))

(assert (=> b!272639 m!346701))

(assert (=> b!272639 m!343949))

(assert (=> b!272639 m!346699))

(assert (=> b!272639 m!346699))

(assert (=> b!272639 m!346707))

(assert (=> b!272639 m!346707))

(assert (=> b!272639 m!346709))

(assert (=> b!271373 d!79731))

(declare-fun b!272647 () Bool)

(declare-fun e!169382 () List!3840)

(assert (=> b!272647 (= e!169382 Nil!3830)))

(declare-fun b!272648 () Bool)

(declare-fun e!169383 () Bool)

(declare-fun lt!112644 () List!3840)

(declare-fun e!169379 () Int)

(assert (=> b!272648 (= e!169383 (= (size!3060 lt!112644) e!169379))))

(declare-fun c!51736 () Bool)

(assert (=> b!272648 (= c!51736 (<= 0 0))))

(declare-fun b!272649 () Bool)

(declare-fun e!169381 () List!3840)

(assert (=> b!272649 (= e!169381 lt!111885)))

(declare-fun b!272650 () Bool)

(assert (=> b!272650 (= e!169381 (drop!217 (t!38514 lt!111885) (- 0 1)))))

(declare-fun b!272651 () Bool)

(declare-fun e!169380 () Int)

(declare-fun call!14943 () Int)

(assert (=> b!272651 (= e!169380 (- call!14943 0))))

(declare-fun b!272652 () Bool)

(assert (=> b!272652 (= e!169380 0)))

(declare-fun b!272653 () Bool)

(assert (=> b!272653 (= e!169382 e!169381)))

(declare-fun c!51739 () Bool)

(assert (=> b!272653 (= c!51739 (<= 0 0))))

(declare-fun b!272654 () Bool)

(assert (=> b!272654 (= e!169379 e!169380)))

(declare-fun c!51738 () Bool)

(assert (=> b!272654 (= c!51738 (>= 0 call!14943))))

(declare-fun d!79733 () Bool)

(assert (=> d!79733 e!169383))

(declare-fun res!124439 () Bool)

(assert (=> d!79733 (=> (not res!124439) (not e!169383))))

(assert (=> d!79733 (= res!124439 (= ((_ map implies) (content!553 lt!112644) (content!553 lt!111885)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79733 (= lt!112644 e!169382)))

(declare-fun c!51737 () Bool)

(assert (=> d!79733 (= c!51737 ((_ is Nil!3830) lt!111885))))

(assert (=> d!79733 (= (drop!217 lt!111885 0) lt!112644)))

(declare-fun bm!14938 () Bool)

(assert (=> bm!14938 (= call!14943 (size!3060 lt!111885))))

(declare-fun b!272655 () Bool)

(assert (=> b!272655 (= e!169379 call!14943)))

(assert (= (and d!79733 c!51737) b!272647))

(assert (= (and d!79733 (not c!51737)) b!272653))

(assert (= (and b!272653 c!51739) b!272649))

(assert (= (and b!272653 (not c!51739)) b!272650))

(assert (= (and d!79733 res!124439) b!272648))

(assert (= (and b!272648 c!51736) b!272655))

(assert (= (and b!272648 (not c!51736)) b!272654))

(assert (= (and b!272654 c!51738) b!272652))

(assert (= (and b!272654 (not c!51738)) b!272651))

(assert (= (or b!272655 b!272654 b!272651) bm!14938))

(declare-fun m!346713 () Bool)

(assert (=> b!272648 m!346713))

(declare-fun m!346715 () Bool)

(assert (=> b!272650 m!346715))

(declare-fun m!346717 () Bool)

(assert (=> d!79733 m!346717))

(declare-fun m!346719 () Bool)

(assert (=> d!79733 m!346719))

(assert (=> bm!14938 m!346675))

(assert (=> b!271373 d!79733))

(declare-fun d!79735 () Bool)

(declare-fun lt!112645 () Token!1206)

(assert (=> d!79735 (contains!723 lt!111887 lt!112645)))

(declare-fun e!169385 () Token!1206)

(assert (=> d!79735 (= lt!112645 e!169385)))

(declare-fun c!51740 () Bool)

(assert (=> d!79735 (= c!51740 (= 0 0))))

(declare-fun e!169384 () Bool)

(assert (=> d!79735 e!169384))

(declare-fun res!124440 () Bool)

(assert (=> d!79735 (=> (not res!124440) (not e!169384))))

(assert (=> d!79735 (= res!124440 (<= 0 0))))

(assert (=> d!79735 (= (apply!774 lt!111887 0) lt!112645)))

(declare-fun b!272656 () Bool)

(assert (=> b!272656 (= e!169384 (< 0 (size!3060 lt!111887)))))

(declare-fun b!272657 () Bool)

(assert (=> b!272657 (= e!169385 (head!888 lt!111887))))

(declare-fun b!272658 () Bool)

(assert (=> b!272658 (= e!169385 (apply!774 (tail!478 lt!111887) (- 0 1)))))

(assert (= (and d!79735 res!124440) b!272656))

(assert (= (and d!79735 c!51740) b!272657))

(assert (= (and d!79735 (not c!51740)) b!272658))

(declare-fun m!346721 () Bool)

(assert (=> d!79735 m!346721))

(assert (=> b!272656 m!346685))

(declare-fun m!346723 () Bool)

(assert (=> b!272657 m!346723))

(declare-fun m!346725 () Bool)

(assert (=> b!272658 m!346725))

(assert (=> b!272658 m!346725))

(declare-fun m!346727 () Bool)

(assert (=> b!272658 m!346727))

(assert (=> b!271373 d!79735))

(declare-fun d!79737 () Bool)

(assert (=> d!79737 (= (head!888 (drop!217 lt!111887 0)) (h!9227 (drop!217 lt!111887 0)))))

(assert (=> b!271373 d!79737))

(declare-fun d!79739 () Bool)

(assert (=> d!79739 (= (tail!478 (drop!217 lt!111885 0)) (t!38514 (drop!217 lt!111885 0)))))

(assert (=> b!271373 d!79739))

(declare-fun bs!30475 () Bool)

(declare-fun d!79741 () Bool)

(assert (= bs!30475 (and d!79741 b!272611)))

(declare-fun lambda!9241 () Int)

(assert (=> bs!30475 (not (= lambda!9241 lambda!9240))))

(declare-fun bs!30476 () Bool)

(assert (= bs!30476 (and d!79741 b!271373)))

(assert (=> bs!30476 (not (= lambda!9241 lambda!9192))))

(declare-fun bs!30477 () Bool)

(assert (= bs!30477 (and d!79741 b!272023)))

(assert (=> bs!30477 (not (= lambda!9241 lambda!9211))))

(declare-fun bs!30478 () Bool)

(assert (= bs!30478 (and d!79741 b!272077)))

(assert (=> bs!30478 (not (= lambda!9241 lambda!9212))))

(declare-fun bs!30479 () Bool)

(assert (= bs!30479 (and d!79741 b!271552)))

(assert (=> bs!30479 (not (= lambda!9241 lambda!9204))))

(declare-fun bs!30480 () Bool)

(assert (= bs!30480 (and d!79741 b!271207)))

(assert (=> bs!30480 (not (= lambda!9241 lambda!9172))))

(declare-fun bs!30481 () Bool)

(assert (= bs!30481 (and d!79741 b!271466)))

(assert (=> bs!30481 (not (= lambda!9241 lambda!9200))))

(declare-fun bs!30482 () Bool)

(assert (= bs!30482 (and d!79741 b!271612)))

(assert (=> bs!30482 (not (= lambda!9241 lambda!9206))))

(declare-fun bs!30483 () Bool)

(assert (= bs!30483 (and d!79741 d!79155)))

(assert (=> bs!30483 (= lambda!9241 lambda!9205)))

(declare-fun bs!30484 () Bool)

(assert (= bs!30484 (and d!79741 d!79033)))

(assert (=> bs!30484 (not (= lambda!9241 lambda!9183))))

(declare-fun bs!30485 () Bool)

(assert (= bs!30485 (and d!79741 d!79043)))

(assert (=> bs!30485 (= lambda!9241 lambda!9191)))

(declare-fun bs!30486 () Bool)

(assert (= bs!30486 (and d!79741 d!79309)))

(assert (=> bs!30486 (= lambda!9241 lambda!9210)))

(declare-fun bs!30487 () Bool)

(assert (= bs!30487 (and d!79741 b!271212)))

(assert (=> bs!30487 (= lambda!9241 lambda!9171)))

(declare-fun bs!30488 () Bool)

(declare-fun b!272665 () Bool)

(assert (= bs!30488 (and b!272665 b!272611)))

(declare-fun lambda!9242 () Int)

(assert (=> bs!30488 (= lambda!9242 lambda!9240)))

(declare-fun bs!30489 () Bool)

(assert (= bs!30489 (and b!272665 b!271373)))

(assert (=> bs!30489 (= lambda!9242 lambda!9192)))

(declare-fun bs!30490 () Bool)

(assert (= bs!30490 (and b!272665 b!272023)))

(assert (=> bs!30490 (= lambda!9242 lambda!9211)))

(declare-fun bs!30491 () Bool)

(assert (= bs!30491 (and b!272665 b!272077)))

(assert (=> bs!30491 (= lambda!9242 lambda!9212)))

(declare-fun bs!30492 () Bool)

(assert (= bs!30492 (and b!272665 b!271552)))

(assert (=> bs!30492 (= lambda!9242 lambda!9204)))

(declare-fun bs!30493 () Bool)

(assert (= bs!30493 (and b!272665 b!271207)))

(assert (=> bs!30493 (= lambda!9242 lambda!9172)))

(declare-fun bs!30494 () Bool)

(assert (= bs!30494 (and b!272665 b!271466)))

(assert (=> bs!30494 (= lambda!9242 lambda!9200)))

(declare-fun bs!30495 () Bool)

(assert (= bs!30495 (and b!272665 b!271612)))

(assert (=> bs!30495 (= lambda!9242 lambda!9206)))

(declare-fun bs!30496 () Bool)

(assert (= bs!30496 (and b!272665 d!79155)))

(assert (=> bs!30496 (not (= lambda!9242 lambda!9205))))

(declare-fun bs!30497 () Bool)

(assert (= bs!30497 (and b!272665 d!79033)))

(assert (=> bs!30497 (= lambda!9242 lambda!9183)))

(declare-fun bs!30498 () Bool)

(assert (= bs!30498 (and b!272665 d!79043)))

(assert (=> bs!30498 (not (= lambda!9242 lambda!9191))))

(declare-fun bs!30499 () Bool)

(assert (= bs!30499 (and b!272665 d!79309)))

(assert (=> bs!30499 (not (= lambda!9242 lambda!9210))))

(declare-fun bs!30500 () Bool)

(assert (= bs!30500 (and b!272665 b!271212)))

(assert (=> bs!30500 (not (= lambda!9242 lambda!9171))))

(declare-fun bs!30501 () Bool)

(assert (= bs!30501 (and b!272665 d!79741)))

(assert (=> bs!30501 (not (= lambda!9242 lambda!9241))))

(declare-fun b!272672 () Bool)

(declare-fun e!169395 () Bool)

(assert (=> b!272672 (= e!169395 true)))

(declare-fun b!272671 () Bool)

(declare-fun e!169394 () Bool)

(assert (=> b!272671 (= e!169394 e!169395)))

(declare-fun b!272670 () Bool)

(declare-fun e!169393 () Bool)

(assert (=> b!272670 (= e!169393 e!169394)))

(assert (=> b!272665 e!169393))

(assert (= b!272671 b!272672))

(assert (= b!272670 b!272671))

(assert (= (and b!272665 ((_ is Cons!3829) rules!1920)) b!272670))

(assert (=> b!272672 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9242))))

(assert (=> b!272672 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9242))))

(assert (=> b!272665 true))

(declare-fun bm!14939 () Bool)

(declare-fun c!51744 () Bool)

(declare-fun c!51743 () Bool)

(assert (=> bm!14939 (= c!51744 c!51743)))

(declare-fun lt!112655 () BalanceConc!2576)

(declare-fun e!169387 () BalanceConc!2576)

(declare-fun call!14948 () BalanceConc!2576)

(declare-fun call!14945 () BalanceConc!2576)

(assert (=> bm!14939 (= call!14945 (++!1004 e!169387 (ite c!51743 lt!112655 call!14948)))))

(declare-fun b!272659 () Bool)

(declare-fun call!14946 () Token!1206)

(assert (=> b!272659 (= e!169387 (charsOf!376 call!14946))))

(declare-fun lt!112653 () BalanceConc!2576)

(assert (=> d!79741 (= (list!1567 lt!112653) (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (dropList!164 lt!111755 (+ 0 1)) separatorToken!170))))

(declare-fun e!169392 () BalanceConc!2576)

(assert (=> d!79741 (= lt!112653 e!169392)))

(declare-fun c!51742 () Bool)

(assert (=> d!79741 (= c!51742 (>= (+ 0 1) (size!3055 lt!111755)))))

(declare-fun lt!112657 () Unit!4936)

(assert (=> d!79741 (= lt!112657 (lemmaContentSubsetPreservesForall!108 (list!1570 lt!111755) (dropList!164 lt!111755 (+ 0 1)) lambda!9241))))

(declare-fun e!169391 () Bool)

(assert (=> d!79741 e!169391))

(declare-fun res!124441 () Bool)

(assert (=> d!79741 (=> (not res!124441) (not e!169391))))

(assert (=> d!79741 (= res!124441 (>= (+ 0 1) 0))))

(assert (=> d!79741 (= (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 (+ 0 1)) lt!112653)))

(declare-fun b!272660 () Bool)

(assert (=> b!272660 (= e!169392 (BalanceConc!2577 Empty!1284))))

(declare-fun b!272661 () Bool)

(declare-fun e!169389 () BalanceConc!2576)

(assert (=> b!272661 (= e!169389 call!14945)))

(declare-fun b!272662 () Bool)

(declare-fun e!169386 () BalanceConc!2576)

(assert (=> b!272662 (= e!169386 (++!1004 call!14945 lt!112655))))

(declare-fun bm!14940 () Bool)

(declare-fun call!14944 () Token!1206)

(assert (=> bm!14940 (= call!14946 call!14944)))

(declare-fun b!272663 () Bool)

(assert (=> b!272663 (= e!169386 (BalanceConc!2577 Empty!1284))))

(assert (=> b!272663 (= (print!342 thiss!17480 (singletonSeq!277 call!14946)) (printTailRec!305 thiss!17480 (singletonSeq!277 call!14946) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!112652 () Unit!4936)

(declare-fun Unit!4970 () Unit!4936)

(assert (=> b!272663 (= lt!112652 Unit!4970)))

(declare-fun lt!112654 () Unit!4936)

(assert (=> b!272663 (= lt!112654 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 (list!1567 call!14948) (list!1567 lt!112655)))))

(assert (=> b!272663 false))

(declare-fun lt!112647 () Unit!4936)

(declare-fun Unit!4971 () Unit!4936)

(assert (=> b!272663 (= lt!112647 Unit!4971)))

(declare-fun bm!14941 () Bool)

(declare-fun call!14947 () BalanceConc!2576)

(declare-fun c!51741 () Bool)

(assert (=> bm!14941 (= call!14947 (charsOf!376 (ite c!51743 call!14944 (ite c!51741 separatorToken!170 call!14946))))))

(declare-fun b!272664 () Bool)

(declare-fun e!169390 () Bool)

(declare-fun lt!112648 () Option!813)

(assert (=> b!272664 (= e!169390 (not (= (_1!2363 (v!14681 lt!112648)) call!14944)))))

(declare-fun bm!14942 () Bool)

(assert (=> bm!14942 (= call!14944 (apply!773 lt!111755 (+ 0 1)))))

(declare-fun bm!14943 () Bool)

(assert (=> bm!14943 (= call!14948 call!14947)))

(assert (=> b!272665 (= e!169392 e!169389)))

(declare-fun lt!112651 () List!3840)

(assert (=> b!272665 (= lt!112651 (list!1570 lt!111755))))

(declare-fun lt!112658 () Unit!4936)

(assert (=> b!272665 (= lt!112658 (lemmaDropApply!204 lt!112651 (+ 0 1)))))

(assert (=> b!272665 (= (head!888 (drop!217 lt!112651 (+ 0 1))) (apply!774 lt!112651 (+ 0 1)))))

(declare-fun lt!112650 () Unit!4936)

(assert (=> b!272665 (= lt!112650 lt!112658)))

(declare-fun lt!112649 () List!3840)

(assert (=> b!272665 (= lt!112649 (list!1570 lt!111755))))

(declare-fun lt!112646 () Unit!4936)

(assert (=> b!272665 (= lt!112646 (lemmaDropTail!196 lt!112649 (+ 0 1)))))

(assert (=> b!272665 (= (tail!478 (drop!217 lt!112649 (+ 0 1))) (drop!217 lt!112649 (+ 0 1 1)))))

(declare-fun lt!112659 () Unit!4936)

(assert (=> b!272665 (= lt!112659 lt!112646)))

(declare-fun lt!112656 () Unit!4936)

(assert (=> b!272665 (= lt!112656 (forallContained!286 (list!1570 lt!111755) lambda!9242 (apply!773 lt!111755 (+ 0 1))))))

(assert (=> b!272665 (= lt!112655 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!272665 (= lt!112648 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (++!1004 (charsOf!376 (apply!773 lt!111755 (+ 0 1))) lt!112655)))))

(declare-fun res!124443 () Bool)

(assert (=> b!272665 (= res!124443 ((_ is Some!812) lt!112648))))

(declare-fun e!169388 () Bool)

(assert (=> b!272665 (=> (not res!124443) (not e!169388))))

(assert (=> b!272665 (= c!51743 e!169388)))

(declare-fun b!272666 () Bool)

(assert (=> b!272666 (= e!169391 (<= (+ 0 1) (size!3055 lt!111755)))))

(declare-fun b!272667 () Bool)

(assert (=> b!272667 (= e!169387 call!14947)))

(declare-fun b!272668 () Bool)

(assert (=> b!272668 (= e!169388 (= (_1!2363 (v!14681 lt!112648)) (apply!773 lt!111755 (+ 0 1))))))

(declare-fun b!272669 () Bool)

(assert (=> b!272669 (= c!51741 e!169390)))

(declare-fun res!124442 () Bool)

(assert (=> b!272669 (=> (not res!124442) (not e!169390))))

(assert (=> b!272669 (= res!124442 ((_ is Some!812) lt!112648))))

(assert (=> b!272669 (= e!169389 e!169386)))

(assert (= (and d!79741 res!124441) b!272666))

(assert (= (and d!79741 c!51742) b!272660))

(assert (= (and d!79741 (not c!51742)) b!272665))

(assert (= (and b!272665 res!124443) b!272668))

(assert (= (and b!272665 c!51743) b!272661))

(assert (= (and b!272665 (not c!51743)) b!272669))

(assert (= (and b!272669 res!124442) b!272664))

(assert (= (and b!272669 c!51741) b!272662))

(assert (= (and b!272669 (not c!51741)) b!272663))

(assert (= (or b!272662 b!272663) bm!14940))

(assert (= (or b!272662 b!272663) bm!14943))

(assert (= (or b!272661 bm!14940 b!272664) bm!14942))

(assert (= (or b!272661 bm!14943) bm!14941))

(assert (= (or b!272661 b!272662) bm!14939))

(assert (= (and bm!14939 c!51744) b!272667))

(assert (= (and bm!14939 (not c!51744)) b!272659))

(declare-fun m!346729 () Bool)

(assert (=> bm!14942 m!346729))

(declare-fun m!346731 () Bool)

(assert (=> bm!14941 m!346731))

(assert (=> b!272666 m!343931))

(declare-fun m!346733 () Bool)

(assert (=> b!272662 m!346733))

(declare-fun m!346735 () Bool)

(assert (=> b!272665 m!346735))

(declare-fun m!346737 () Bool)

(assert (=> b!272665 m!346737))

(assert (=> b!272665 m!343845))

(declare-fun m!346739 () Bool)

(assert (=> b!272665 m!346739))

(assert (=> b!272665 m!346729))

(declare-fun m!346741 () Bool)

(assert (=> b!272665 m!346741))

(declare-fun m!346743 () Bool)

(assert (=> b!272665 m!346743))

(assert (=> b!272665 m!343845))

(assert (=> b!272665 m!346729))

(declare-fun m!346745 () Bool)

(assert (=> b!272665 m!346745))

(declare-fun m!346747 () Bool)

(assert (=> b!272665 m!346747))

(assert (=> b!272665 m!346741))

(declare-fun m!346749 () Bool)

(assert (=> b!272665 m!346749))

(declare-fun m!346751 () Bool)

(assert (=> b!272665 m!346751))

(assert (=> b!272665 m!346749))

(declare-fun m!346753 () Bool)

(assert (=> b!272665 m!346753))

(assert (=> b!272665 m!346751))

(declare-fun m!346755 () Bool)

(assert (=> b!272665 m!346755))

(assert (=> b!272665 m!346729))

(declare-fun m!346757 () Bool)

(assert (=> b!272665 m!346757))

(assert (=> b!272665 m!346747))

(declare-fun m!346759 () Bool)

(assert (=> b!272665 m!346759))

(assert (=> b!272668 m!346729))

(declare-fun m!346761 () Bool)

(assert (=> bm!14939 m!346761))

(declare-fun m!346763 () Bool)

(assert (=> b!272663 m!346763))

(declare-fun m!346765 () Bool)

(assert (=> b!272663 m!346765))

(declare-fun m!346767 () Bool)

(assert (=> b!272663 m!346767))

(declare-fun m!346769 () Bool)

(assert (=> b!272663 m!346769))

(assert (=> b!272663 m!346769))

(declare-fun m!346771 () Bool)

(assert (=> b!272663 m!346771))

(assert (=> b!272663 m!346763))

(assert (=> b!272663 m!346769))

(declare-fun m!346773 () Bool)

(assert (=> b!272663 m!346773))

(assert (=> b!272663 m!346765))

(declare-fun m!346775 () Bool)

(assert (=> b!272659 m!346775))

(assert (=> d!79741 m!343845))

(declare-fun m!346777 () Bool)

(assert (=> d!79741 m!346777))

(declare-fun m!346779 () Bool)

(assert (=> d!79741 m!346779))

(assert (=> d!79741 m!343845))

(assert (=> d!79741 m!346777))

(assert (=> d!79741 m!346777))

(declare-fun m!346781 () Bool)

(assert (=> d!79741 m!346781))

(assert (=> d!79741 m!343931))

(declare-fun m!346783 () Bool)

(assert (=> d!79741 m!346783))

(assert (=> b!271373 d!79741))

(declare-fun d!79743 () Bool)

(assert (=> d!79743 (dynLambda!1973 lambda!9192 (apply!773 lt!111755 0))))

(declare-fun lt!112660 () Unit!4936)

(assert (=> d!79743 (= lt!112660 (choose!2461 (list!1570 lt!111755) lambda!9192 (apply!773 lt!111755 0)))))

(declare-fun e!169396 () Bool)

(assert (=> d!79743 e!169396))

(declare-fun res!124444 () Bool)

(assert (=> d!79743 (=> (not res!124444) (not e!169396))))

(assert (=> d!79743 (= res!124444 (forall!964 (list!1570 lt!111755) lambda!9192))))

(assert (=> d!79743 (= (forallContained!286 (list!1570 lt!111755) lambda!9192 (apply!773 lt!111755 0)) lt!112660)))

(declare-fun b!272673 () Bool)

(assert (=> b!272673 (= e!169396 (contains!723 (list!1570 lt!111755) (apply!773 lt!111755 0)))))

(assert (= (and d!79743 res!124444) b!272673))

(declare-fun b_lambda!8711 () Bool)

(assert (=> (not b_lambda!8711) (not d!79743)))

(assert (=> d!79743 m!343927))

(declare-fun m!346785 () Bool)

(assert (=> d!79743 m!346785))

(assert (=> d!79743 m!343845))

(assert (=> d!79743 m!343927))

(declare-fun m!346787 () Bool)

(assert (=> d!79743 m!346787))

(assert (=> d!79743 m!343845))

(declare-fun m!346789 () Bool)

(assert (=> d!79743 m!346789))

(assert (=> b!272673 m!343845))

(assert (=> b!272673 m!343927))

(declare-fun m!346791 () Bool)

(assert (=> b!272673 m!346791))

(assert (=> b!271373 d!79743))

(declare-fun b!272674 () Bool)

(declare-fun e!169400 () List!3840)

(assert (=> b!272674 (= e!169400 Nil!3830)))

(declare-fun b!272675 () Bool)

(declare-fun e!169401 () Bool)

(declare-fun lt!112661 () List!3840)

(declare-fun e!169397 () Int)

(assert (=> b!272675 (= e!169401 (= (size!3060 lt!112661) e!169397))))

(declare-fun c!51745 () Bool)

(assert (=> b!272675 (= c!51745 (<= (+ 0 1) 0))))

(declare-fun b!272676 () Bool)

(declare-fun e!169399 () List!3840)

(assert (=> b!272676 (= e!169399 lt!111885)))

(declare-fun b!272677 () Bool)

(assert (=> b!272677 (= e!169399 (drop!217 (t!38514 lt!111885) (- (+ 0 1) 1)))))

(declare-fun b!272678 () Bool)

(declare-fun e!169398 () Int)

(declare-fun call!14949 () Int)

(assert (=> b!272678 (= e!169398 (- call!14949 (+ 0 1)))))

(declare-fun b!272679 () Bool)

(assert (=> b!272679 (= e!169398 0)))

(declare-fun b!272680 () Bool)

(assert (=> b!272680 (= e!169400 e!169399)))

(declare-fun c!51748 () Bool)

(assert (=> b!272680 (= c!51748 (<= (+ 0 1) 0))))

(declare-fun b!272681 () Bool)

(assert (=> b!272681 (= e!169397 e!169398)))

(declare-fun c!51747 () Bool)

(assert (=> b!272681 (= c!51747 (>= (+ 0 1) call!14949))))

(declare-fun d!79745 () Bool)

(assert (=> d!79745 e!169401))

(declare-fun res!124445 () Bool)

(assert (=> d!79745 (=> (not res!124445) (not e!169401))))

(assert (=> d!79745 (= res!124445 (= ((_ map implies) (content!553 lt!112661) (content!553 lt!111885)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79745 (= lt!112661 e!169400)))

(declare-fun c!51746 () Bool)

(assert (=> d!79745 (= c!51746 ((_ is Nil!3830) lt!111885))))

(assert (=> d!79745 (= (drop!217 lt!111885 (+ 0 1)) lt!112661)))

(declare-fun bm!14944 () Bool)

(assert (=> bm!14944 (= call!14949 (size!3060 lt!111885))))

(declare-fun b!272682 () Bool)

(assert (=> b!272682 (= e!169397 call!14949)))

(assert (= (and d!79745 c!51746) b!272674))

(assert (= (and d!79745 (not c!51746)) b!272680))

(assert (= (and b!272680 c!51748) b!272676))

(assert (= (and b!272680 (not c!51748)) b!272677))

(assert (= (and d!79745 res!124445) b!272675))

(assert (= (and b!272675 c!51745) b!272682))

(assert (= (and b!272675 (not c!51745)) b!272681))

(assert (= (and b!272681 c!51747) b!272679))

(assert (= (and b!272681 (not c!51747)) b!272678))

(assert (= (or b!272682 b!272681 b!272678) bm!14944))

(declare-fun m!346793 () Bool)

(assert (=> b!272675 m!346793))

(declare-fun m!346795 () Bool)

(assert (=> b!272677 m!346795))

(declare-fun m!346797 () Bool)

(assert (=> d!79745 m!346797))

(assert (=> d!79745 m!346719))

(assert (=> bm!14944 m!346675))

(assert (=> b!271373 d!79745))

(assert (=> b!271373 d!79381))

(assert (=> b!271373 d!79331))

(declare-fun d!79747 () Bool)

(assert (=> d!79747 (= (head!888 (drop!217 lt!111887 0)) (apply!774 lt!111887 0))))

(declare-fun lt!112662 () Unit!4936)

(assert (=> d!79747 (= lt!112662 (choose!2464 lt!111887 0))))

(declare-fun e!169402 () Bool)

(assert (=> d!79747 e!169402))

(declare-fun res!124446 () Bool)

(assert (=> d!79747 (=> (not res!124446) (not e!169402))))

(assert (=> d!79747 (= res!124446 (>= 0 0))))

(assert (=> d!79747 (= (lemmaDropApply!204 lt!111887 0) lt!112662)))

(declare-fun b!272683 () Bool)

(assert (=> b!272683 (= e!169402 (< 0 (size!3060 lt!111887)))))

(assert (= (and d!79747 res!124446) b!272683))

(assert (=> d!79747 m!343947))

(assert (=> d!79747 m!343947))

(assert (=> d!79747 m!343959))

(assert (=> d!79747 m!343939))

(declare-fun m!346799 () Bool)

(assert (=> d!79747 m!346799))

(assert (=> b!272683 m!346685))

(assert (=> b!271373 d!79747))

(declare-fun e!169403 () Bool)

(declare-fun lt!112663 () List!3838)

(declare-fun b!272687 () Bool)

(assert (=> b!272687 (= e!169403 (or (not (= (ite c!51462 lt!111947 call!14878) Nil!3828)) (= lt!112663 call!14875)))))

(declare-fun e!169404 () List!3838)

(declare-fun b!272685 () Bool)

(assert (=> b!272685 (= e!169404 (Cons!3828 (h!9225 call!14875) (++!1002 (t!38512 call!14875) (ite c!51462 lt!111947 call!14878))))))

(declare-fun d!79749 () Bool)

(assert (=> d!79749 e!169403))

(declare-fun res!124448 () Bool)

(assert (=> d!79749 (=> (not res!124448) (not e!169403))))

(assert (=> d!79749 (= res!124448 (= (content!551 lt!112663) ((_ map or) (content!551 call!14875) (content!551 (ite c!51462 lt!111947 call!14878)))))))

(assert (=> d!79749 (= lt!112663 e!169404)))

(declare-fun c!51749 () Bool)

(assert (=> d!79749 (= c!51749 ((_ is Nil!3828) call!14875))))

(assert (=> d!79749 (= (++!1002 call!14875 (ite c!51462 lt!111947 call!14878)) lt!112663)))

(declare-fun b!272686 () Bool)

(declare-fun res!124447 () Bool)

(assert (=> b!272686 (=> (not res!124447) (not e!169403))))

(assert (=> b!272686 (= res!124447 (= (size!3053 lt!112663) (+ (size!3053 call!14875) (size!3053 (ite c!51462 lt!111947 call!14878)))))))

(declare-fun b!272684 () Bool)

(assert (=> b!272684 (= e!169404 (ite c!51462 lt!111947 call!14878))))

(assert (= (and d!79749 c!51749) b!272684))

(assert (= (and d!79749 (not c!51749)) b!272685))

(assert (= (and d!79749 res!124448) b!272686))

(assert (= (and b!272686 res!124447) b!272687))

(declare-fun m!346801 () Bool)

(assert (=> b!272685 m!346801))

(declare-fun m!346803 () Bool)

(assert (=> d!79749 m!346803))

(declare-fun m!346805 () Bool)

(assert (=> d!79749 m!346805))

(declare-fun m!346807 () Bool)

(assert (=> d!79749 m!346807))

(declare-fun m!346809 () Bool)

(assert (=> b!272686 m!346809))

(declare-fun m!346811 () Bool)

(assert (=> b!272686 m!346811))

(declare-fun m!346813 () Bool)

(assert (=> b!272686 m!346813))

(assert (=> bm!14873 d!79749))

(declare-fun b!272691 () Bool)

(declare-fun lt!112664 () List!3838)

(declare-fun e!169405 () Bool)

(assert (=> b!272691 (= e!169405 (or (not (= lt!111759 Nil!3828)) (= lt!112664 (t!38512 lt!111765))))))

(declare-fun b!272689 () Bool)

(declare-fun e!169406 () List!3838)

(assert (=> b!272689 (= e!169406 (Cons!3828 (h!9225 (t!38512 lt!111765)) (++!1002 (t!38512 (t!38512 lt!111765)) lt!111759)))))

(declare-fun d!79751 () Bool)

(assert (=> d!79751 e!169405))

(declare-fun res!124450 () Bool)

(assert (=> d!79751 (=> (not res!124450) (not e!169405))))

(assert (=> d!79751 (= res!124450 (= (content!551 lt!112664) ((_ map or) (content!551 (t!38512 lt!111765)) (content!551 lt!111759))))))

(assert (=> d!79751 (= lt!112664 e!169406)))

(declare-fun c!51750 () Bool)

(assert (=> d!79751 (= c!51750 ((_ is Nil!3828) (t!38512 lt!111765)))))

(assert (=> d!79751 (= (++!1002 (t!38512 lt!111765) lt!111759) lt!112664)))

(declare-fun b!272690 () Bool)

(declare-fun res!124449 () Bool)

(assert (=> b!272690 (=> (not res!124449) (not e!169405))))

(assert (=> b!272690 (= res!124449 (= (size!3053 lt!112664) (+ (size!3053 (t!38512 lt!111765)) (size!3053 lt!111759))))))

(declare-fun b!272688 () Bool)

(assert (=> b!272688 (= e!169406 lt!111759)))

(assert (= (and d!79751 c!51750) b!272688))

(assert (= (and d!79751 (not c!51750)) b!272689))

(assert (= (and d!79751 res!124450) b!272690))

(assert (= (and b!272690 res!124449) b!272691))

(declare-fun m!346815 () Bool)

(assert (=> b!272689 m!346815))

(declare-fun m!346817 () Bool)

(assert (=> d!79751 m!346817))

(assert (=> d!79751 m!345183))

(assert (=> d!79751 m!344361))

(declare-fun m!346819 () Bool)

(assert (=> b!272690 m!346819))

(assert (=> b!272690 m!345187))

(assert (=> b!272690 m!344367))

(assert (=> b!271770 d!79751))

(declare-fun d!79753 () Bool)

(declare-fun lt!112665 () Int)

(assert (=> d!79753 (>= lt!112665 0)))

(declare-fun e!169407 () Int)

(assert (=> d!79753 (= lt!112665 e!169407)))

(declare-fun c!51751 () Bool)

(assert (=> d!79753 (= c!51751 ((_ is Nil!3828) (originalCharacters!774 separatorToken!170)))))

(assert (=> d!79753 (= (size!3053 (originalCharacters!774 separatorToken!170)) lt!112665)))

(declare-fun b!272692 () Bool)

(assert (=> b!272692 (= e!169407 0)))

(declare-fun b!272693 () Bool)

(assert (=> b!272693 (= e!169407 (+ 1 (size!3053 (t!38512 (originalCharacters!774 separatorToken!170)))))))

(assert (= (and d!79753 c!51751) b!272692))

(assert (= (and d!79753 (not c!51751)) b!272693))

(declare-fun m!346821 () Bool)

(assert (=> b!272693 m!346821))

(assert (=> b!271741 d!79753))

(assert (=> bs!30315 d!79165))

(declare-fun b!272694 () Bool)

(declare-fun e!169411 () List!3840)

(assert (=> b!272694 (= e!169411 Nil!3830)))

(declare-fun b!272695 () Bool)

(declare-fun e!169412 () Bool)

(declare-fun lt!112666 () List!3840)

(declare-fun e!169408 () Int)

(assert (=> b!272695 (= e!169412 (= (size!3060 lt!112666) e!169408))))

(declare-fun c!51752 () Bool)

(assert (=> b!272695 (= c!51752 (<= (+ 0 1) 0))))

(declare-fun b!272696 () Bool)

(declare-fun e!169410 () List!3840)

(assert (=> b!272696 (= e!169410 lt!112054)))

(declare-fun b!272697 () Bool)

(assert (=> b!272697 (= e!169410 (drop!217 (t!38514 lt!112054) (- (+ 0 1) 1)))))

(declare-fun b!272698 () Bool)

(declare-fun e!169409 () Int)

(declare-fun call!14950 () Int)

(assert (=> b!272698 (= e!169409 (- call!14950 (+ 0 1)))))

(declare-fun b!272699 () Bool)

(assert (=> b!272699 (= e!169409 0)))

(declare-fun b!272700 () Bool)

(assert (=> b!272700 (= e!169411 e!169410)))

(declare-fun c!51755 () Bool)

(assert (=> b!272700 (= c!51755 (<= (+ 0 1) 0))))

(declare-fun b!272701 () Bool)

(assert (=> b!272701 (= e!169408 e!169409)))

(declare-fun c!51754 () Bool)

(assert (=> b!272701 (= c!51754 (>= (+ 0 1) call!14950))))

(declare-fun d!79755 () Bool)

(assert (=> d!79755 e!169412))

(declare-fun res!124451 () Bool)

(assert (=> d!79755 (=> (not res!124451) (not e!169412))))

(assert (=> d!79755 (= res!124451 (= ((_ map implies) (content!553 lt!112666) (content!553 lt!112054)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79755 (= lt!112666 e!169411)))

(declare-fun c!51753 () Bool)

(assert (=> d!79755 (= c!51753 ((_ is Nil!3830) lt!112054))))

(assert (=> d!79755 (= (drop!217 lt!112054 (+ 0 1)) lt!112666)))

(declare-fun bm!14945 () Bool)

(assert (=> bm!14945 (= call!14950 (size!3060 lt!112054))))

(declare-fun b!272702 () Bool)

(assert (=> b!272702 (= e!169408 call!14950)))

(assert (= (and d!79755 c!51753) b!272694))

(assert (= (and d!79755 (not c!51753)) b!272700))

(assert (= (and b!272700 c!51755) b!272696))

(assert (= (and b!272700 (not c!51755)) b!272697))

(assert (= (and d!79755 res!124451) b!272695))

(assert (= (and b!272695 c!51752) b!272702))

(assert (= (and b!272695 (not c!51752)) b!272701))

(assert (= (and b!272701 c!51754) b!272699))

(assert (= (and b!272701 (not c!51754)) b!272698))

(assert (= (or b!272702 b!272701 b!272698) bm!14945))

(declare-fun m!346823 () Bool)

(assert (=> b!272695 m!346823))

(declare-fun m!346825 () Bool)

(assert (=> b!272697 m!346825))

(declare-fun m!346827 () Bool)

(assert (=> d!79755 m!346827))

(declare-fun m!346829 () Bool)

(assert (=> d!79755 m!346829))

(declare-fun m!346831 () Bool)

(assert (=> bm!14945 m!346831))

(assert (=> b!271663 d!79755))

(declare-fun b!272706 () Bool)

(declare-fun e!169413 () Bool)

(declare-fun lt!112667 () BalanceConc!2576)

(assert (=> b!272706 (= e!169413 (= (list!1567 lt!112667) (++!1002 (list!1567 (BalanceConc!2577 Empty!1284)) (list!1567 (charsOf!376 (apply!773 lt!111761 0))))))))

(declare-fun b!272704 () Bool)

(declare-fun res!124454 () Bool)

(assert (=> b!272704 (=> (not res!124454) (not e!169413))))

(assert (=> b!272704 (= res!124454 (<= (height!158 (++!1006 (c!51394 (BalanceConc!2577 Empty!1284)) (c!51394 (charsOf!376 (apply!773 lt!111761 0))))) (+ (max!0 (height!158 (c!51394 (BalanceConc!2577 Empty!1284))) (height!158 (c!51394 (charsOf!376 (apply!773 lt!111761 0))))) 1)))))

(declare-fun b!272703 () Bool)

(declare-fun res!124453 () Bool)

(assert (=> b!272703 (=> (not res!124453) (not e!169413))))

(assert (=> b!272703 (= res!124453 (isBalanced!355 (++!1006 (c!51394 (BalanceConc!2577 Empty!1284)) (c!51394 (charsOf!376 (apply!773 lt!111761 0))))))))

(declare-fun d!79757 () Bool)

(assert (=> d!79757 e!169413))

(declare-fun res!124455 () Bool)

(assert (=> d!79757 (=> (not res!124455) (not e!169413))))

(assert (=> d!79757 (= res!124455 (appendAssocInst!65 (c!51394 (BalanceConc!2577 Empty!1284)) (c!51394 (charsOf!376 (apply!773 lt!111761 0)))))))

(assert (=> d!79757 (= lt!112667 (BalanceConc!2577 (++!1006 (c!51394 (BalanceConc!2577 Empty!1284)) (c!51394 (charsOf!376 (apply!773 lt!111761 0))))))))

(assert (=> d!79757 (= (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 lt!111761 0))) lt!112667)))

(declare-fun b!272705 () Bool)

(declare-fun res!124452 () Bool)

(assert (=> b!272705 (=> (not res!124452) (not e!169413))))

(assert (=> b!272705 (= res!124452 (>= (height!158 (++!1006 (c!51394 (BalanceConc!2577 Empty!1284)) (c!51394 (charsOf!376 (apply!773 lt!111761 0))))) (max!0 (height!158 (c!51394 (BalanceConc!2577 Empty!1284))) (height!158 (c!51394 (charsOf!376 (apply!773 lt!111761 0)))))))))

(assert (= (and d!79757 res!124455) b!272703))

(assert (= (and b!272703 res!124453) b!272704))

(assert (= (and b!272704 res!124454) b!272705))

(assert (= (and b!272705 res!124452) b!272706))

(declare-fun m!346833 () Bool)

(assert (=> b!272703 m!346833))

(assert (=> b!272703 m!346833))

(declare-fun m!346835 () Bool)

(assert (=> b!272703 m!346835))

(declare-fun m!346837 () Bool)

(assert (=> d!79757 m!346837))

(assert (=> d!79757 m!346833))

(assert (=> b!272704 m!346833))

(declare-fun m!346839 () Bool)

(assert (=> b!272704 m!346839))

(assert (=> b!272704 m!346833))

(declare-fun m!346841 () Bool)

(assert (=> b!272704 m!346841))

(declare-fun m!346843 () Bool)

(assert (=> b!272704 m!346843))

(assert (=> b!272704 m!346843))

(assert (=> b!272704 m!346839))

(declare-fun m!346845 () Bool)

(assert (=> b!272704 m!346845))

(assert (=> b!272705 m!346833))

(assert (=> b!272705 m!346839))

(assert (=> b!272705 m!346833))

(assert (=> b!272705 m!346841))

(assert (=> b!272705 m!346843))

(assert (=> b!272705 m!346843))

(assert (=> b!272705 m!346839))

(assert (=> b!272705 m!346845))

(declare-fun m!346847 () Bool)

(assert (=> b!272706 m!346847))

(assert (=> b!272706 m!344581))

(assert (=> b!272706 m!344597))

(declare-fun m!346849 () Bool)

(assert (=> b!272706 m!346849))

(assert (=> b!272706 m!344581))

(assert (=> b!272706 m!346849))

(declare-fun m!346851 () Bool)

(assert (=> b!272706 m!346851))

(assert (=> b!271663 d!79757))

(declare-fun d!79759 () Bool)

(assert (=> d!79759 (= (tail!478 (drop!217 lt!112054 0)) (drop!217 lt!112054 (+ 0 1)))))

(declare-fun lt!112668 () Unit!4936)

(assert (=> d!79759 (= lt!112668 (choose!2466 lt!112054 0))))

(declare-fun e!169414 () Bool)

(assert (=> d!79759 e!169414))

(declare-fun res!124456 () Bool)

(assert (=> d!79759 (=> (not res!124456) (not e!169414))))

(assert (=> d!79759 (= res!124456 (>= 0 0))))

(assert (=> d!79759 (= (lemmaDropTail!196 lt!112054 0) lt!112668)))

(declare-fun b!272707 () Bool)

(assert (=> b!272707 (= e!169414 (< 0 (size!3060 lt!112054)))))

(assert (= (and d!79759 res!124456) b!272707))

(assert (=> d!79759 m!344601))

(assert (=> d!79759 m!344601))

(assert (=> d!79759 m!344603))

(assert (=> d!79759 m!344609))

(declare-fun m!346853 () Bool)

(assert (=> d!79759 m!346853))

(assert (=> b!272707 m!346831))

(assert (=> b!271663 d!79759))

(declare-fun d!79761 () Bool)

(declare-fun lt!112669 () BalanceConc!2576)

(assert (=> d!79761 (= (list!1567 lt!112669) (originalCharacters!774 (apply!773 lt!111761 0)))))

(assert (=> d!79761 (= lt!112669 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0)))) (value!25149 (apply!773 lt!111761 0))))))

(assert (=> d!79761 (= (charsOf!376 (apply!773 lt!111761 0)) lt!112669)))

(declare-fun b_lambda!8713 () Bool)

(assert (=> (not b_lambda!8713) (not d!79761)))

(declare-fun tb!15523 () Bool)

(declare-fun t!38679 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0))))) t!38679) tb!15523))

(declare-fun b!272708 () Bool)

(declare-fun e!169415 () Bool)

(declare-fun tp!102851 () Bool)

(assert (=> b!272708 (= e!169415 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0)))) (value!25149 (apply!773 lt!111761 0))))) tp!102851))))

(declare-fun result!19150 () Bool)

(assert (=> tb!15523 (= result!19150 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0)))) (value!25149 (apply!773 lt!111761 0)))) e!169415))))

(assert (= tb!15523 b!272708))

(declare-fun m!346855 () Bool)

(assert (=> b!272708 m!346855))

(declare-fun m!346857 () Bool)

(assert (=> tb!15523 m!346857))

(assert (=> d!79761 t!38679))

(declare-fun b_and!21819 () Bool)

(assert (= b_and!21813 (and (=> t!38679 result!19150) b_and!21819)))

(declare-fun t!38681 () Bool)

(declare-fun tb!15525 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0))))) t!38681) tb!15525))

(declare-fun result!19152 () Bool)

(assert (= result!19152 result!19150))

(assert (=> d!79761 t!38681))

(declare-fun b_and!21821 () Bool)

(assert (= b_and!21811 (and (=> t!38681 result!19152) b_and!21821)))

(declare-fun tb!15527 () Bool)

(declare-fun t!38683 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0))))) t!38683) tb!15527))

(declare-fun result!19154 () Bool)

(assert (= result!19154 result!19150))

(assert (=> d!79761 t!38683))

(declare-fun b_and!21823 () Bool)

(assert (= b_and!21809 (and (=> t!38683 result!19154) b_and!21823)))

(declare-fun t!38685 () Bool)

(declare-fun tb!15529 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0))))) t!38685) tb!15529))

(declare-fun result!19156 () Bool)

(assert (= result!19156 result!19150))

(assert (=> d!79761 t!38685))

(declare-fun b_and!21825 () Bool)

(assert (= b_and!21815 (and (=> t!38685 result!19156) b_and!21825)))

(declare-fun t!38687 () Bool)

(declare-fun tb!15531 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0))))) t!38687) tb!15531))

(declare-fun result!19158 () Bool)

(assert (= result!19158 result!19150))

(assert (=> d!79761 t!38687))

(declare-fun b_and!21827 () Bool)

(assert (= b_and!21817 (and (=> t!38687 result!19158) b_and!21827)))

(declare-fun m!346859 () Bool)

(assert (=> d!79761 m!346859))

(declare-fun m!346861 () Bool)

(assert (=> d!79761 m!346861))

(assert (=> b!271663 d!79761))

(declare-fun b!272709 () Bool)

(declare-fun e!169419 () List!3840)

(assert (=> b!272709 (= e!169419 Nil!3830)))

(declare-fun b!272710 () Bool)

(declare-fun e!169420 () Bool)

(declare-fun lt!112670 () List!3840)

(declare-fun e!169416 () Int)

(assert (=> b!272710 (= e!169420 (= (size!3060 lt!112670) e!169416))))

(declare-fun c!51756 () Bool)

(assert (=> b!272710 (= c!51756 (<= 0 0))))

(declare-fun b!272711 () Bool)

(declare-fun e!169418 () List!3840)

(assert (=> b!272711 (= e!169418 lt!112054)))

(declare-fun b!272712 () Bool)

(assert (=> b!272712 (= e!169418 (drop!217 (t!38514 lt!112054) (- 0 1)))))

(declare-fun b!272713 () Bool)

(declare-fun e!169417 () Int)

(declare-fun call!14951 () Int)

(assert (=> b!272713 (= e!169417 (- call!14951 0))))

(declare-fun b!272714 () Bool)

(assert (=> b!272714 (= e!169417 0)))

(declare-fun b!272715 () Bool)

(assert (=> b!272715 (= e!169419 e!169418)))

(declare-fun c!51759 () Bool)

(assert (=> b!272715 (= c!51759 (<= 0 0))))

(declare-fun b!272716 () Bool)

(assert (=> b!272716 (= e!169416 e!169417)))

(declare-fun c!51758 () Bool)

(assert (=> b!272716 (= c!51758 (>= 0 call!14951))))

(declare-fun d!79763 () Bool)

(assert (=> d!79763 e!169420))

(declare-fun res!124457 () Bool)

(assert (=> d!79763 (=> (not res!124457) (not e!169420))))

(assert (=> d!79763 (= res!124457 (= ((_ map implies) (content!553 lt!112670) (content!553 lt!112054)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79763 (= lt!112670 e!169419)))

(declare-fun c!51757 () Bool)

(assert (=> d!79763 (= c!51757 ((_ is Nil!3830) lt!112054))))

(assert (=> d!79763 (= (drop!217 lt!112054 0) lt!112670)))

(declare-fun bm!14946 () Bool)

(assert (=> bm!14946 (= call!14951 (size!3060 lt!112054))))

(declare-fun b!272717 () Bool)

(assert (=> b!272717 (= e!169416 call!14951)))

(assert (= (and d!79763 c!51757) b!272709))

(assert (= (and d!79763 (not c!51757)) b!272715))

(assert (= (and b!272715 c!51759) b!272711))

(assert (= (and b!272715 (not c!51759)) b!272712))

(assert (= (and d!79763 res!124457) b!272710))

(assert (= (and b!272710 c!51756) b!272717))

(assert (= (and b!272710 (not c!51756)) b!272716))

(assert (= (and b!272716 c!51758) b!272714))

(assert (= (and b!272716 (not c!51758)) b!272713))

(assert (= (or b!272717 b!272716 b!272713) bm!14946))

(declare-fun m!346863 () Bool)

(assert (=> b!272710 m!346863))

(declare-fun m!346865 () Bool)

(assert (=> b!272712 m!346865))

(declare-fun m!346867 () Bool)

(assert (=> d!79763 m!346867))

(assert (=> d!79763 m!346829))

(assert (=> bm!14946 m!346831))

(assert (=> b!271663 d!79763))

(declare-fun d!79765 () Bool)

(assert (=> d!79765 (= (tail!478 (drop!217 lt!112054 0)) (t!38514 (drop!217 lt!112054 0)))))

(assert (=> b!271663 d!79765))

(declare-fun d!79767 () Bool)

(declare-fun lt!112675 () BalanceConc!2576)

(assert (=> d!79767 (= (list!1567 lt!112675) (printListTailRec!130 thiss!17480 (dropList!164 lt!111761 (+ 0 1)) (list!1567 (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 lt!111761 0))))))))

(declare-fun e!169421 () BalanceConc!2576)

(assert (=> d!79767 (= lt!112675 e!169421)))

(declare-fun c!51760 () Bool)

(assert (=> d!79767 (= c!51760 (>= (+ 0 1) (size!3055 lt!111761)))))

(declare-fun e!169422 () Bool)

(assert (=> d!79767 e!169422))

(declare-fun res!124458 () Bool)

(assert (=> d!79767 (=> (not res!124458) (not e!169422))))

(assert (=> d!79767 (= res!124458 (>= (+ 0 1) 0))))

(assert (=> d!79767 (= (printTailRec!305 thiss!17480 lt!111761 (+ 0 1) (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 lt!111761 0)))) lt!112675)))

(declare-fun b!272718 () Bool)

(assert (=> b!272718 (= e!169422 (<= (+ 0 1) (size!3055 lt!111761)))))

(declare-fun b!272719 () Bool)

(assert (=> b!272719 (= e!169421 (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 lt!111761 0))))))

(declare-fun b!272720 () Bool)

(assert (=> b!272720 (= e!169421 (printTailRec!305 thiss!17480 lt!111761 (+ 0 1 1) (++!1004 (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 lt!111761 0))) (charsOf!376 (apply!773 lt!111761 (+ 0 1))))))))

(declare-fun lt!112677 () List!3840)

(assert (=> b!272720 (= lt!112677 (list!1570 lt!111761))))

(declare-fun lt!112676 () Unit!4936)

(assert (=> b!272720 (= lt!112676 (lemmaDropApply!204 lt!112677 (+ 0 1)))))

(assert (=> b!272720 (= (head!888 (drop!217 lt!112677 (+ 0 1))) (apply!774 lt!112677 (+ 0 1)))))

(declare-fun lt!112674 () Unit!4936)

(assert (=> b!272720 (= lt!112674 lt!112676)))

(declare-fun lt!112672 () List!3840)

(assert (=> b!272720 (= lt!112672 (list!1570 lt!111761))))

(declare-fun lt!112673 () Unit!4936)

(assert (=> b!272720 (= lt!112673 (lemmaDropTail!196 lt!112672 (+ 0 1)))))

(assert (=> b!272720 (= (tail!478 (drop!217 lt!112672 (+ 0 1))) (drop!217 lt!112672 (+ 0 1 1)))))

(declare-fun lt!112671 () Unit!4936)

(assert (=> b!272720 (= lt!112671 lt!112673)))

(assert (= (and d!79767 res!124458) b!272718))

(assert (= (and d!79767 c!51760) b!272719))

(assert (= (and d!79767 (not c!51760)) b!272720))

(assert (=> d!79767 m!344593))

(declare-fun m!346869 () Bool)

(assert (=> d!79767 m!346869))

(assert (=> d!79767 m!344583))

(declare-fun m!346871 () Bool)

(assert (=> d!79767 m!346871))

(assert (=> d!79767 m!346871))

(assert (=> d!79767 m!346869))

(declare-fun m!346873 () Bool)

(assert (=> d!79767 m!346873))

(declare-fun m!346875 () Bool)

(assert (=> d!79767 m!346875))

(assert (=> b!272718 m!344583))

(declare-fun m!346877 () Bool)

(assert (=> b!272720 m!346877))

(declare-fun m!346879 () Bool)

(assert (=> b!272720 m!346879))

(declare-fun m!346881 () Bool)

(assert (=> b!272720 m!346881))

(assert (=> b!272720 m!346877))

(declare-fun m!346883 () Bool)

(assert (=> b!272720 m!346883))

(assert (=> b!272720 m!344599))

(declare-fun m!346885 () Bool)

(assert (=> b!272720 m!346885))

(assert (=> b!272720 m!346885))

(declare-fun m!346887 () Bool)

(assert (=> b!272720 m!346887))

(declare-fun m!346889 () Bool)

(assert (=> b!272720 m!346889))

(declare-fun m!346891 () Bool)

(assert (=> b!272720 m!346891))

(declare-fun m!346893 () Bool)

(assert (=> b!272720 m!346893))

(declare-fun m!346895 () Bool)

(assert (=> b!272720 m!346895))

(declare-fun m!346897 () Bool)

(assert (=> b!272720 m!346897))

(assert (=> b!272720 m!344593))

(assert (=> b!272720 m!346883))

(assert (=> b!272720 m!346879))

(assert (=> b!272720 m!346895))

(declare-fun m!346899 () Bool)

(assert (=> b!272720 m!346899))

(assert (=> b!271663 d!79767))

(declare-fun d!79769 () Bool)

(assert (=> d!79769 (= (head!888 (drop!217 lt!112059 0)) (h!9227 (drop!217 lt!112059 0)))))

(assert (=> b!271663 d!79769))

(declare-fun d!79771 () Bool)

(declare-fun lt!112678 () Token!1206)

(assert (=> d!79771 (contains!723 lt!112059 lt!112678)))

(declare-fun e!169424 () Token!1206)

(assert (=> d!79771 (= lt!112678 e!169424)))

(declare-fun c!51761 () Bool)

(assert (=> d!79771 (= c!51761 (= 0 0))))

(declare-fun e!169423 () Bool)

(assert (=> d!79771 e!169423))

(declare-fun res!124459 () Bool)

(assert (=> d!79771 (=> (not res!124459) (not e!169423))))

(assert (=> d!79771 (= res!124459 (<= 0 0))))

(assert (=> d!79771 (= (apply!774 lt!112059 0) lt!112678)))

(declare-fun b!272721 () Bool)

(assert (=> b!272721 (= e!169423 (< 0 (size!3060 lt!112059)))))

(declare-fun b!272722 () Bool)

(assert (=> b!272722 (= e!169424 (head!888 lt!112059))))

(declare-fun b!272723 () Bool)

(assert (=> b!272723 (= e!169424 (apply!774 (tail!478 lt!112059) (- 0 1)))))

(assert (= (and d!79771 res!124459) b!272721))

(assert (= (and d!79771 c!51761) b!272722))

(assert (= (and d!79771 (not c!51761)) b!272723))

(declare-fun m!346901 () Bool)

(assert (=> d!79771 m!346901))

(declare-fun m!346903 () Bool)

(assert (=> b!272721 m!346903))

(declare-fun m!346905 () Bool)

(assert (=> b!272722 m!346905))

(declare-fun m!346907 () Bool)

(assert (=> b!272723 m!346907))

(assert (=> b!272723 m!346907))

(declare-fun m!346909 () Bool)

(assert (=> b!272723 m!346909))

(assert (=> b!271663 d!79771))

(declare-fun d!79773 () Bool)

(declare-fun lt!112679 () Token!1206)

(assert (=> d!79773 (= lt!112679 (apply!774 (list!1570 lt!111761) 0))))

(assert (=> d!79773 (= lt!112679 (apply!776 (c!51396 lt!111761) 0))))

(declare-fun e!169425 () Bool)

(assert (=> d!79773 e!169425))

(declare-fun res!124460 () Bool)

(assert (=> d!79773 (=> (not res!124460) (not e!169425))))

(assert (=> d!79773 (= res!124460 (<= 0 0))))

(assert (=> d!79773 (= (apply!773 lt!111761 0) lt!112679)))

(declare-fun b!272724 () Bool)

(assert (=> b!272724 (= e!169425 (< 0 (size!3055 lt!111761)))))

(assert (= (and d!79773 res!124460) b!272724))

(assert (=> d!79773 m!344599))

(assert (=> d!79773 m!344599))

(declare-fun m!346911 () Bool)

(assert (=> d!79773 m!346911))

(declare-fun m!346913 () Bool)

(assert (=> d!79773 m!346913))

(assert (=> b!272724 m!344583))

(assert (=> b!271663 d!79773))

(declare-fun b!272725 () Bool)

(declare-fun e!169429 () List!3840)

(assert (=> b!272725 (= e!169429 Nil!3830)))

(declare-fun b!272726 () Bool)

(declare-fun e!169430 () Bool)

(declare-fun lt!112680 () List!3840)

(declare-fun e!169426 () Int)

(assert (=> b!272726 (= e!169430 (= (size!3060 lt!112680) e!169426))))

(declare-fun c!51762 () Bool)

(assert (=> b!272726 (= c!51762 (<= 0 0))))

(declare-fun b!272727 () Bool)

(declare-fun e!169428 () List!3840)

(assert (=> b!272727 (= e!169428 lt!112059)))

(declare-fun b!272728 () Bool)

(assert (=> b!272728 (= e!169428 (drop!217 (t!38514 lt!112059) (- 0 1)))))

(declare-fun b!272729 () Bool)

(declare-fun e!169427 () Int)

(declare-fun call!14952 () Int)

(assert (=> b!272729 (= e!169427 (- call!14952 0))))

(declare-fun b!272730 () Bool)

(assert (=> b!272730 (= e!169427 0)))

(declare-fun b!272731 () Bool)

(assert (=> b!272731 (= e!169429 e!169428)))

(declare-fun c!51765 () Bool)

(assert (=> b!272731 (= c!51765 (<= 0 0))))

(declare-fun b!272732 () Bool)

(assert (=> b!272732 (= e!169426 e!169427)))

(declare-fun c!51764 () Bool)

(assert (=> b!272732 (= c!51764 (>= 0 call!14952))))

(declare-fun d!79775 () Bool)

(assert (=> d!79775 e!169430))

(declare-fun res!124461 () Bool)

(assert (=> d!79775 (=> (not res!124461) (not e!169430))))

(assert (=> d!79775 (= res!124461 (= ((_ map implies) (content!553 lt!112680) (content!553 lt!112059)) ((as const (InoxSet Token!1206)) true)))))

(assert (=> d!79775 (= lt!112680 e!169429)))

(declare-fun c!51763 () Bool)

(assert (=> d!79775 (= c!51763 ((_ is Nil!3830) lt!112059))))

(assert (=> d!79775 (= (drop!217 lt!112059 0) lt!112680)))

(declare-fun bm!14947 () Bool)

(assert (=> bm!14947 (= call!14952 (size!3060 lt!112059))))

(declare-fun b!272733 () Bool)

(assert (=> b!272733 (= e!169426 call!14952)))

(assert (= (and d!79775 c!51763) b!272725))

(assert (= (and d!79775 (not c!51763)) b!272731))

(assert (= (and b!272731 c!51765) b!272727))

(assert (= (and b!272731 (not c!51765)) b!272728))

(assert (= (and d!79775 res!124461) b!272726))

(assert (= (and b!272726 c!51762) b!272733))

(assert (= (and b!272726 (not c!51762)) b!272732))

(assert (= (and b!272732 c!51764) b!272730))

(assert (= (and b!272732 (not c!51764)) b!272729))

(assert (= (or b!272733 b!272732 b!272729) bm!14947))

(declare-fun m!346915 () Bool)

(assert (=> b!272726 m!346915))

(declare-fun m!346917 () Bool)

(assert (=> b!272728 m!346917))

(declare-fun m!346919 () Bool)

(assert (=> d!79775 m!346919))

(declare-fun m!346921 () Bool)

(assert (=> d!79775 m!346921))

(assert (=> bm!14947 m!346903))

(assert (=> b!271663 d!79775))

(declare-fun d!79777 () Bool)

(assert (=> d!79777 (= (list!1570 lt!111761) (list!1574 (c!51396 lt!111761)))))

(declare-fun bs!30502 () Bool)

(assert (= bs!30502 d!79777))

(assert (=> bs!30502 m!346223))

(assert (=> b!271663 d!79777))

(declare-fun d!79779 () Bool)

(assert (=> d!79779 (= (head!888 (drop!217 lt!112059 0)) (apply!774 lt!112059 0))))

(declare-fun lt!112681 () Unit!4936)

(assert (=> d!79779 (= lt!112681 (choose!2464 lt!112059 0))))

(declare-fun e!169431 () Bool)

(assert (=> d!79779 e!169431))

(declare-fun res!124462 () Bool)

(assert (=> d!79779 (=> (not res!124462) (not e!169431))))

(assert (=> d!79779 (= res!124462 (>= 0 0))))

(assert (=> d!79779 (= (lemmaDropApply!204 lt!112059 0) lt!112681)))

(declare-fun b!272734 () Bool)

(assert (=> b!272734 (= e!169431 (< 0 (size!3060 lt!112059)))))

(assert (= (and d!79779 res!124462) b!272734))

(assert (=> d!79779 m!344611))

(assert (=> d!79779 m!344611))

(assert (=> d!79779 m!344613))

(assert (=> d!79779 m!344615))

(declare-fun m!346923 () Bool)

(assert (=> d!79779 m!346923))

(assert (=> b!272734 m!346903))

(assert (=> b!271663 d!79779))

(declare-fun d!79781 () Bool)

(assert (=> d!79781 (= (get!1270 lt!112086) (v!14681 lt!112086))))

(assert (=> b!271758 d!79781))

(declare-fun d!79783 () Bool)

(assert (=> d!79783 (= (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))) (v!14689 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))

(assert (=> b!271758 d!79783))

(declare-fun d!79785 () Bool)

(declare-fun e!169433 () Bool)

(assert (=> d!79785 e!169433))

(declare-fun res!124464 () Bool)

(assert (=> d!79785 (=> res!124464 e!169433)))

(declare-fun lt!112682 () Option!815)

(assert (=> d!79785 (= res!124464 (isEmpty!2444 lt!112682))))

(declare-fun e!169434 () Option!815)

(assert (=> d!79785 (= lt!112682 e!169434)))

(declare-fun c!51766 () Bool)

(assert (=> d!79785 (= c!51766 (and ((_ is Cons!3829) rules!1920) ((_ is Nil!3829) (t!38513 rules!1920))))))

(declare-fun lt!112686 () Unit!4936)

(declare-fun lt!112685 () Unit!4936)

(assert (=> d!79785 (= lt!112686 lt!112685)))

(assert (=> d!79785 (isPrefix!399 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (=> d!79785 (= lt!112685 (lemmaIsPrefixRefl!209 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(assert (=> d!79785 (rulesValidInductive!204 thiss!17480 rules!1920)))

(assert (=> d!79785 (= (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))) lt!112682)))

(declare-fun b!272735 () Bool)

(declare-fun res!124463 () Bool)

(declare-fun e!169432 () Bool)

(assert (=> b!272735 (=> (not res!124463) (not e!169432))))

(assert (=> b!272735 (= res!124463 (= (++!1002 (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112682)))) (_2!2365 (get!1271 lt!112682))) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(declare-fun b!272736 () Bool)

(declare-fun call!14953 () Option!815)

(assert (=> b!272736 (= e!169434 call!14953)))

(declare-fun b!272737 () Bool)

(assert (=> b!272737 (= e!169432 (contains!725 rules!1920 (rule!1316 (_1!2365 (get!1271 lt!112682)))))))

(declare-fun b!272738 () Bool)

(assert (=> b!272738 (= e!169433 e!169432)))

(declare-fun res!124468 () Bool)

(assert (=> b!272738 (=> (not res!124468) (not e!169432))))

(assert (=> b!272738 (= res!124468 (isDefined!658 lt!112682))))

(declare-fun b!272739 () Bool)

(declare-fun res!124465 () Bool)

(assert (=> b!272739 (=> (not res!124465) (not e!169432))))

(assert (=> b!272739 (= res!124465 (= (value!25149 (_1!2365 (get!1271 lt!112682))) (apply!777 (transformation!731 (rule!1316 (_1!2365 (get!1271 lt!112682)))) (seqFromList!829 (originalCharacters!774 (_1!2365 (get!1271 lt!112682)))))))))

(declare-fun b!272740 () Bool)

(declare-fun res!124466 () Bool)

(assert (=> b!272740 (=> (not res!124466) (not e!169432))))

(assert (=> b!272740 (= res!124466 (= (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112682)))) (originalCharacters!774 (_1!2365 (get!1271 lt!112682)))))))

(declare-fun b!272741 () Bool)

(declare-fun res!124469 () Bool)

(assert (=> b!272741 (=> (not res!124469) (not e!169432))))

(assert (=> b!272741 (= res!124469 (< (size!3053 (_2!2365 (get!1271 lt!112682))) (size!3053 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))

(declare-fun b!272742 () Bool)

(declare-fun res!124467 () Bool)

(assert (=> b!272742 (=> (not res!124467) (not e!169432))))

(assert (=> b!272742 (= res!124467 (matchR!277 (regex!731 (rule!1316 (_1!2365 (get!1271 lt!112682)))) (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112682))))))))

(declare-fun b!272743 () Bool)

(declare-fun lt!112684 () Option!815)

(declare-fun lt!112683 () Option!815)

(assert (=> b!272743 (= e!169434 (ite (and ((_ is None!814) lt!112684) ((_ is None!814) lt!112683)) None!814 (ite ((_ is None!814) lt!112683) lt!112684 (ite ((_ is None!814) lt!112684) lt!112683 (ite (>= (size!3051 (_1!2365 (v!14689 lt!112684))) (size!3051 (_1!2365 (v!14689 lt!112683)))) lt!112684 lt!112683)))))))

(assert (=> b!272743 (= lt!112684 call!14953)))

(assert (=> b!272743 (= lt!112683 (maxPrefix!335 thiss!17480 (t!38513 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(declare-fun bm!14948 () Bool)

(assert (=> bm!14948 (= call!14953 (maxPrefixOneRule!143 thiss!17480 (h!9226 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(assert (= (and d!79785 c!51766) b!272736))

(assert (= (and d!79785 (not c!51766)) b!272743))

(assert (= (or b!272736 b!272743) bm!14948))

(assert (= (and d!79785 (not res!124464)) b!272738))

(assert (= (and b!272738 res!124468) b!272740))

(assert (= (and b!272740 res!124466) b!272741))

(assert (= (and b!272741 res!124469) b!272735))

(assert (= (and b!272735 res!124463) b!272739))

(assert (= (and b!272739 res!124465) b!272742))

(assert (= (and b!272742 res!124467) b!272737))

(declare-fun m!346925 () Bool)

(assert (=> b!272735 m!346925))

(declare-fun m!346927 () Bool)

(assert (=> b!272735 m!346927))

(assert (=> b!272735 m!346927))

(declare-fun m!346929 () Bool)

(assert (=> b!272735 m!346929))

(assert (=> b!272735 m!346929))

(declare-fun m!346931 () Bool)

(assert (=> b!272735 m!346931))

(assert (=> b!272743 m!344677))

(declare-fun m!346933 () Bool)

(assert (=> b!272743 m!346933))

(declare-fun m!346935 () Bool)

(assert (=> d!79785 m!346935))

(assert (=> d!79785 m!344677))

(assert (=> d!79785 m!344677))

(declare-fun m!346937 () Bool)

(assert (=> d!79785 m!346937))

(assert (=> d!79785 m!344677))

(assert (=> d!79785 m!344677))

(declare-fun m!346939 () Bool)

(assert (=> d!79785 m!346939))

(assert (=> d!79785 m!344675))

(assert (=> b!272740 m!346925))

(assert (=> b!272740 m!346927))

(assert (=> b!272740 m!346927))

(assert (=> b!272740 m!346929))

(assert (=> b!272741 m!346925))

(declare-fun m!346941 () Bool)

(assert (=> b!272741 m!346941))

(assert (=> b!272741 m!344677))

(declare-fun m!346943 () Bool)

(assert (=> b!272741 m!346943))

(declare-fun m!346945 () Bool)

(assert (=> b!272738 m!346945))

(assert (=> b!272742 m!346925))

(assert (=> b!272742 m!346927))

(assert (=> b!272742 m!346927))

(assert (=> b!272742 m!346929))

(assert (=> b!272742 m!346929))

(declare-fun m!346947 () Bool)

(assert (=> b!272742 m!346947))

(assert (=> b!272737 m!346925))

(declare-fun m!346949 () Bool)

(assert (=> b!272737 m!346949))

(assert (=> bm!14948 m!344677))

(assert (=> bm!14948 m!346551))

(assert (=> b!272739 m!346925))

(declare-fun m!346951 () Bool)

(assert (=> b!272739 m!346951))

(assert (=> b!272739 m!346951))

(declare-fun m!346953 () Bool)

(assert (=> b!272739 m!346953))

(assert (=> b!271758 d!79785))

(declare-fun d!79787 () Bool)

(assert (=> d!79787 (= (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))) (list!1571 (c!51394 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(declare-fun bs!30503 () Bool)

(assert (= bs!30503 d!79787))

(declare-fun m!346955 () Bool)

(assert (=> bs!30503 m!346955))

(assert (=> b!271758 d!79787))

(declare-fun b!272746 () Bool)

(declare-fun e!169436 () List!3838)

(assert (=> b!272746 (= e!169436 (list!1575 (xs!3883 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0)))))))

(declare-fun b!272747 () Bool)

(assert (=> b!272747 (= e!169436 (++!1002 (list!1571 (left!3152 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0)))) (list!1571 (right!3482 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0))))))))

(declare-fun b!272744 () Bool)

(declare-fun e!169435 () List!3838)

(assert (=> b!272744 (= e!169435 Nil!3828)))

(declare-fun b!272745 () Bool)

(assert (=> b!272745 (= e!169435 e!169436)))

(declare-fun c!51768 () Bool)

(assert (=> b!272745 (= c!51768 ((_ is Leaf!1989) (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0))))))

(declare-fun d!79789 () Bool)

(declare-fun c!51767 () Bool)

(assert (=> d!79789 (= c!51767 ((_ is Empty!1284) (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0))))))

(assert (=> d!79789 (= (list!1571 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 lt!111755 separatorToken!170 0))) e!169435)))

(assert (= (and d!79789 c!51767) b!272744))

(assert (= (and d!79789 (not c!51767)) b!272745))

(assert (= (and b!272745 c!51768) b!272746))

(assert (= (and b!272745 (not c!51768)) b!272747))

(declare-fun m!346957 () Bool)

(assert (=> b!272746 m!346957))

(declare-fun m!346959 () Bool)

(assert (=> b!272747 m!346959))

(declare-fun m!346961 () Bool)

(assert (=> b!272747 m!346961))

(assert (=> b!272747 m!346959))

(assert (=> b!272747 m!346961))

(declare-fun m!346963 () Bool)

(assert (=> b!272747 m!346963))

(assert (=> d!79041 d!79789))

(declare-fun bs!30504 () Bool)

(declare-fun d!79791 () Bool)

(assert (= bs!30504 (and d!79791 b!272611)))

(declare-fun lambda!9245 () Int)

(assert (=> bs!30504 (= lambda!9245 lambda!9240)))

(declare-fun bs!30505 () Bool)

(assert (= bs!30505 (and d!79791 b!271373)))

(assert (=> bs!30505 (= lambda!9245 lambda!9192)))

(declare-fun bs!30506 () Bool)

(assert (= bs!30506 (and d!79791 b!272023)))

(assert (=> bs!30506 (= lambda!9245 lambda!9211)))

(declare-fun bs!30507 () Bool)

(assert (= bs!30507 (and d!79791 b!272077)))

(assert (=> bs!30507 (= lambda!9245 lambda!9212)))

(declare-fun bs!30508 () Bool)

(assert (= bs!30508 (and d!79791 b!271552)))

(assert (=> bs!30508 (= lambda!9245 lambda!9204)))

(declare-fun bs!30509 () Bool)

(assert (= bs!30509 (and d!79791 b!271207)))

(assert (=> bs!30509 (= lambda!9245 lambda!9172)))

(declare-fun bs!30510 () Bool)

(assert (= bs!30510 (and d!79791 b!272665)))

(assert (=> bs!30510 (= lambda!9245 lambda!9242)))

(declare-fun bs!30511 () Bool)

(assert (= bs!30511 (and d!79791 b!271466)))

(assert (=> bs!30511 (= lambda!9245 lambda!9200)))

(declare-fun bs!30512 () Bool)

(assert (= bs!30512 (and d!79791 b!271612)))

(assert (=> bs!30512 (= lambda!9245 lambda!9206)))

(declare-fun bs!30513 () Bool)

(assert (= bs!30513 (and d!79791 d!79155)))

(assert (=> bs!30513 (not (= lambda!9245 lambda!9205))))

(declare-fun bs!30514 () Bool)

(assert (= bs!30514 (and d!79791 d!79033)))

(assert (=> bs!30514 (= lambda!9245 lambda!9183)))

(declare-fun bs!30515 () Bool)

(assert (= bs!30515 (and d!79791 d!79043)))

(assert (=> bs!30515 (not (= lambda!9245 lambda!9191))))

(declare-fun bs!30516 () Bool)

(assert (= bs!30516 (and d!79791 d!79309)))

(assert (=> bs!30516 (not (= lambda!9245 lambda!9210))))

(declare-fun bs!30517 () Bool)

(assert (= bs!30517 (and d!79791 b!271212)))

(assert (=> bs!30517 (not (= lambda!9245 lambda!9171))))

(declare-fun bs!30518 () Bool)

(assert (= bs!30518 (and d!79791 d!79741)))

(assert (=> bs!30518 (not (= lambda!9245 lambda!9241))))

(declare-fun b!272778 () Bool)

(declare-fun e!169458 () Bool)

(assert (=> b!272778 (= e!169458 true)))

(declare-fun b!272777 () Bool)

(declare-fun e!169457 () Bool)

(assert (=> b!272777 (= e!169457 e!169458)))

(declare-fun b!272776 () Bool)

(declare-fun e!169456 () Bool)

(assert (=> b!272776 (= e!169456 e!169457)))

(assert (=> d!79791 e!169456))

(assert (= b!272777 b!272778))

(assert (= b!272776 b!272777))

(assert (= (and d!79791 ((_ is Cons!3829) rules!1920)) b!272776))

(assert (=> b!272778 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9245))))

(assert (=> b!272778 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9245))))

(assert (=> d!79791 true))

(declare-fun lt!112792 () Bool)

(assert (=> d!79791 (= lt!112792 (forall!964 (list!1570 lt!111755) lambda!9245))))

(declare-fun e!169454 () Bool)

(assert (=> d!79791 (= lt!112792 e!169454)))

(declare-fun res!124479 () Bool)

(assert (=> d!79791 (=> res!124479 e!169454)))

(assert (=> d!79791 (= res!124479 (not ((_ is Cons!3830) (list!1570 lt!111755))))))

(assert (=> d!79791 (not (isEmpty!2429 rules!1920))))

(assert (=> d!79791 (= (rulesProduceEachTokenIndividuallyList!228 thiss!17480 rules!1920 (list!1570 lt!111755)) lt!112792)))

(declare-fun b!272774 () Bool)

(declare-fun e!169455 () Bool)

(assert (=> b!272774 (= e!169454 e!169455)))

(declare-fun res!124478 () Bool)

(assert (=> b!272774 (=> (not res!124478) (not e!169455))))

(assert (=> b!272774 (= res!124478 (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (h!9227 (list!1570 lt!111755))))))

(declare-fun b!272775 () Bool)

(assert (=> b!272775 (= e!169455 (rulesProduceEachTokenIndividuallyList!228 thiss!17480 rules!1920 (t!38514 (list!1570 lt!111755))))))

(assert (= (and d!79791 (not res!124479)) b!272774))

(assert (= (and b!272774 res!124478) b!272775))

(assert (=> d!79791 m!343845))

(declare-fun m!347057 () Bool)

(assert (=> d!79791 m!347057))

(assert (=> d!79791 m!343713))

(declare-fun m!347059 () Bool)

(assert (=> b!272774 m!347059))

(declare-fun m!347061 () Bool)

(assert (=> b!272775 m!347061))

(assert (=> b!271272 d!79791))

(assert (=> b!271272 d!79331))

(declare-fun lt!112796 () BalanceConc!2576)

(declare-fun d!79797 () Bool)

(assert (=> d!79797 (= (list!1567 lt!112796) (originalCharacters!774 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852))))))

(assert (=> d!79797 (= lt!112796 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852))))) (value!25149 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))))

(assert (=> d!79797 (= (charsOf!376 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852))) lt!112796)))

(declare-fun b_lambda!8715 () Bool)

(assert (=> (not b_lambda!8715) (not d!79797)))

(declare-fun tb!15533 () Bool)

(declare-fun t!38691 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))) t!38691) tb!15533))

(declare-fun tp!102852 () Bool)

(declare-fun b!272779 () Bool)

(declare-fun e!169459 () Bool)

(assert (=> b!272779 (= e!169459 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852))))) (value!25149 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))) tp!102852))))

(declare-fun result!19160 () Bool)

(assert (=> tb!15533 (= result!19160 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852))))) (value!25149 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852))))) e!169459))))

(assert (= tb!15533 b!272779))

(declare-fun m!347071 () Bool)

(assert (=> b!272779 m!347071))

(declare-fun m!347073 () Bool)

(assert (=> tb!15533 m!347073))

(assert (=> d!79797 t!38691))

(declare-fun b_and!21829 () Bool)

(assert (= b_and!21825 (and (=> t!38691 result!19160) b_and!21829)))

(declare-fun t!38693 () Bool)

(declare-fun tb!15535 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))) t!38693) tb!15535))

(declare-fun result!19162 () Bool)

(assert (= result!19162 result!19160))

(assert (=> d!79797 t!38693))

(declare-fun b_and!21831 () Bool)

(assert (= b_and!21823 (and (=> t!38693 result!19162) b_and!21831)))

(declare-fun t!38695 () Bool)

(declare-fun tb!15537 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))) t!38695) tb!15537))

(declare-fun result!19164 () Bool)

(assert (= result!19164 result!19160))

(assert (=> d!79797 t!38695))

(declare-fun b_and!21833 () Bool)

(assert (= b_and!21827 (and (=> t!38695 result!19164) b_and!21833)))

(declare-fun tb!15539 () Bool)

(declare-fun t!38697 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))) t!38697) tb!15539))

(declare-fun result!19166 () Bool)

(assert (= result!19166 result!19160))

(assert (=> d!79797 t!38697))

(declare-fun b_and!21835 () Bool)

(assert (= b_and!21821 (and (=> t!38697 result!19166) b_and!21835)))

(declare-fun tb!15541 () Bool)

(declare-fun t!38699 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))) t!38699) tb!15541))

(declare-fun result!19168 () Bool)

(assert (= result!19168 result!19160))

(assert (=> d!79797 t!38699))

(declare-fun b_and!21837 () Bool)

(assert (= b_and!21819 (and (=> t!38699 result!19168) b_and!21837)))

(declare-fun m!347075 () Bool)

(assert (=> d!79797 m!347075))

(declare-fun m!347077 () Bool)

(assert (=> d!79797 m!347077))

(assert (=> bm!14847 d!79797))

(declare-fun bs!30522 () Bool)

(declare-fun d!79803 () Bool)

(assert (= bs!30522 (and d!79803 d!79371)))

(declare-fun lambda!9246 () Int)

(assert (=> bs!30522 (= (= (toValue!1470 (transformation!731 (rule!1316 separatorToken!170))) (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (= lambda!9246 lambda!9215))))

(assert (=> d!79803 true))

(assert (=> d!79803 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (rule!1316 separatorToken!170)))) (dynLambda!1975 order!2959 lambda!9246))))

(assert (=> d!79803 (= (equivClasses!242 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toValue!1470 (transformation!731 (rule!1316 separatorToken!170)))) (Forall2!150 lambda!9246))))

(declare-fun bs!30523 () Bool)

(assert (= bs!30523 d!79803))

(declare-fun m!347081 () Bool)

(assert (=> bs!30523 m!347081))

(assert (=> b!271635 d!79803))

(declare-fun lt!112803 () List!3838)

(declare-fun e!169464 () Bool)

(declare-fun b!272791 () Bool)

(assert (=> b!272791 (= e!169464 (or (not (= lt!111759 Nil!3828)) (= lt!112803 (t!38512 lt!111756))))))

(declare-fun b!272789 () Bool)

(declare-fun e!169465 () List!3838)

(assert (=> b!272789 (= e!169465 (Cons!3828 (h!9225 (t!38512 lt!111756)) (++!1002 (t!38512 (t!38512 lt!111756)) lt!111759)))))

(declare-fun d!79807 () Bool)

(assert (=> d!79807 e!169464))

(declare-fun res!124481 () Bool)

(assert (=> d!79807 (=> (not res!124481) (not e!169464))))

(assert (=> d!79807 (= res!124481 (= (content!551 lt!112803) ((_ map or) (content!551 (t!38512 lt!111756)) (content!551 lt!111759))))))

(assert (=> d!79807 (= lt!112803 e!169465)))

(declare-fun c!51782 () Bool)

(assert (=> d!79807 (= c!51782 ((_ is Nil!3828) (t!38512 lt!111756)))))

(assert (=> d!79807 (= (++!1002 (t!38512 lt!111756) lt!111759) lt!112803)))

(declare-fun b!272790 () Bool)

(declare-fun res!124480 () Bool)

(assert (=> b!272790 (=> (not res!124480) (not e!169464))))

(assert (=> b!272790 (= res!124480 (= (size!3053 lt!112803) (+ (size!3053 (t!38512 lt!111756)) (size!3053 lt!111759))))))

(declare-fun b!272788 () Bool)

(assert (=> b!272788 (= e!169465 lt!111759)))

(assert (= (and d!79807 c!51782) b!272788))

(assert (= (and d!79807 (not c!51782)) b!272789))

(assert (= (and d!79807 res!124481) b!272790))

(assert (= (and b!272790 res!124480) b!272791))

(declare-fun m!347083 () Bool)

(assert (=> b!272789 m!347083))

(declare-fun m!347085 () Bool)

(assert (=> d!79807 m!347085))

(assert (=> d!79807 m!346291))

(assert (=> d!79807 m!344361))

(declare-fun m!347087 () Bool)

(assert (=> b!272790 m!347087))

(assert (=> b!272790 m!345935))

(assert (=> b!272790 m!344367))

(assert (=> b!271593 d!79807))

(declare-fun d!79809 () Bool)

(assert (=> d!79809 (= (list!1567 e!168640) (list!1571 (c!51394 e!168640)))))

(declare-fun bs!30525 () Bool)

(assert (= bs!30525 d!79809))

(declare-fun m!347089 () Bool)

(assert (=> bs!30525 m!347089))

(assert (=> bm!14871 d!79809))

(declare-fun b!272797 () Bool)

(declare-fun e!169470 () List!3838)

(assert (=> b!272797 (= e!169470 (list!1575 (xs!3883 (c!51394 (seqFromList!829 lt!111752)))))))

(declare-fun b!272798 () Bool)

(assert (=> b!272798 (= e!169470 (++!1002 (list!1571 (left!3152 (c!51394 (seqFromList!829 lt!111752)))) (list!1571 (right!3482 (c!51394 (seqFromList!829 lt!111752))))))))

(declare-fun b!272795 () Bool)

(declare-fun e!169469 () List!3838)

(assert (=> b!272795 (= e!169469 Nil!3828)))

(declare-fun b!272796 () Bool)

(assert (=> b!272796 (= e!169469 e!169470)))

(declare-fun c!51784 () Bool)

(assert (=> b!272796 (= c!51784 ((_ is Leaf!1989) (c!51394 (seqFromList!829 lt!111752))))))

(declare-fun d!79811 () Bool)

(declare-fun c!51783 () Bool)

(assert (=> d!79811 (= c!51783 ((_ is Empty!1284) (c!51394 (seqFromList!829 lt!111752))))))

(assert (=> d!79811 (= (list!1571 (c!51394 (seqFromList!829 lt!111752))) e!169469)))

(assert (= (and d!79811 c!51783) b!272795))

(assert (= (and d!79811 (not c!51783)) b!272796))

(assert (= (and b!272796 c!51784) b!272797))

(assert (= (and b!272796 (not c!51784)) b!272798))

(declare-fun m!347091 () Bool)

(assert (=> b!272797 m!347091))

(declare-fun m!347093 () Bool)

(assert (=> b!272798 m!347093))

(declare-fun m!347095 () Bool)

(assert (=> b!272798 m!347095))

(assert (=> b!272798 m!347093))

(assert (=> b!272798 m!347095))

(declare-fun m!347097 () Bool)

(assert (=> b!272798 m!347097))

(assert (=> d!79211 d!79811))

(declare-fun d!79813 () Bool)

(assert (=> d!79813 (= (inv!4735 (tag!941 (rule!1316 (h!9227 (t!38514 tokens!465))))) (= (mod (str.len (value!25148 (tag!941 (rule!1316 (h!9227 (t!38514 tokens!465)))))) 2) 0))))

(assert (=> b!271785 d!79813))

(declare-fun d!79815 () Bool)

(declare-fun res!124482 () Bool)

(declare-fun e!169471 () Bool)

(assert (=> d!79815 (=> (not res!124482) (not e!169471))))

(assert (=> d!79815 (= res!124482 (semiInverseModEq!259 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))))))

(assert (=> d!79815 (= (inv!4738 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) e!169471)))

(declare-fun b!272799 () Bool)

(assert (=> b!272799 (= e!169471 (equivClasses!242 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))))))

(assert (= (and d!79815 res!124482) b!272799))

(declare-fun m!347099 () Bool)

(assert (=> d!79815 m!347099))

(declare-fun m!347101 () Bool)

(assert (=> b!272799 m!347101))

(assert (=> b!271785 d!79815))

(declare-fun bs!30537 () Bool)

(declare-fun d!79817 () Bool)

(assert (= bs!30537 (and d!79817 d!79591)))

(declare-fun lambda!9248 () Int)

(assert (=> bs!30537 (= (and (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) (= (toValue!1470 (transformation!731 (h!9226 rules!1920))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (= lambda!9248 lambda!9227))))

(declare-fun bs!30538 () Bool)

(assert (= bs!30538 (and d!79817 b!272593)))

(assert (=> bs!30538 (= lambda!9248 lambda!9239)))

(assert (=> d!79817 true))

(assert (=> d!79817 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1976 order!2965 lambda!9248))))

(assert (=> d!79817 true))

(assert (=> d!79817 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1976 order!2965 lambda!9248))))

(assert (=> d!79817 (= (semiInverseModEq!259 (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (Forall!173 lambda!9248))))

(declare-fun bs!30539 () Bool)

(assert (= bs!30539 d!79817))

(declare-fun m!347107 () Bool)

(assert (=> bs!30539 m!347107))

(assert (=> d!79163 d!79817))

(declare-fun d!79819 () Bool)

(declare-fun lt!112804 () Int)

(assert (=> d!79819 (>= lt!112804 0)))

(declare-fun e!169472 () Int)

(assert (=> d!79819 (= lt!112804 e!169472)))

(declare-fun c!51785 () Bool)

(assert (=> d!79819 (= c!51785 ((_ is Nil!3828) lt!111992))))

(assert (=> d!79819 (= (size!3053 lt!111992) lt!112804)))

(declare-fun b!272800 () Bool)

(assert (=> b!272800 (= e!169472 0)))

(declare-fun b!272801 () Bool)

(assert (=> b!272801 (= e!169472 (+ 1 (size!3053 (t!38512 lt!111992))))))

(assert (= (and d!79819 c!51785) b!272800))

(assert (= (and d!79819 (not c!51785)) b!272801))

(declare-fun m!347119 () Bool)

(assert (=> b!272801 m!347119))

(assert (=> b!271604 d!79819))

(assert (=> b!271604 d!79521))

(declare-fun d!79821 () Bool)

(declare-fun lt!112805 () Int)

(assert (=> d!79821 (>= lt!112805 0)))

(declare-fun e!169473 () Int)

(assert (=> d!79821 (= lt!112805 e!169473)))

(declare-fun c!51786 () Bool)

(assert (=> d!79821 (= c!51786 ((_ is Nil!3828) lt!111762))))

(assert (=> d!79821 (= (size!3053 lt!111762) lt!112805)))

(declare-fun b!272802 () Bool)

(assert (=> b!272802 (= e!169473 0)))

(declare-fun b!272803 () Bool)

(assert (=> b!272803 (= e!169473 (+ 1 (size!3053 (t!38512 lt!111762))))))

(assert (= (and d!79821 c!51786) b!272802))

(assert (= (and d!79821 (not c!51786)) b!272803))

(declare-fun m!347131 () Bool)

(assert (=> b!272803 m!347131))

(assert (=> b!271604 d!79821))

(declare-fun b!272833 () Bool)

(declare-fun res!124507 () Bool)

(declare-fun e!169487 () Bool)

(assert (=> b!272833 (=> (not res!124507) (not e!169487))))

(assert (=> b!272833 (= res!124507 (isBalanced!353 (left!3153 (c!51396 lt!112065))))))

(declare-fun b!272834 () Bool)

(declare-fun e!169486 () Bool)

(assert (=> b!272834 (= e!169486 e!169487)))

(declare-fun res!124506 () Bool)

(assert (=> b!272834 (=> (not res!124506) (not e!169487))))

(declare-fun height!160 (Conc!1285) Int)

(assert (=> b!272834 (= res!124506 (<= (- 1) (- (height!160 (left!3153 (c!51396 lt!112065))) (height!160 (right!3483 (c!51396 lt!112065))))))))

(declare-fun b!272835 () Bool)

(declare-fun res!124508 () Bool)

(assert (=> b!272835 (=> (not res!124508) (not e!169487))))

(assert (=> b!272835 (= res!124508 (isBalanced!353 (right!3483 (c!51396 lt!112065))))))

(declare-fun b!272836 () Bool)

(assert (=> b!272836 (= e!169487 (not (isEmpty!2436 (right!3483 (c!51396 lt!112065)))))))

(declare-fun d!79823 () Bool)

(declare-fun res!124510 () Bool)

(assert (=> d!79823 (=> res!124510 e!169486)))

(assert (=> d!79823 (= res!124510 (not ((_ is Node!1285) (c!51396 lt!112065))))))

(assert (=> d!79823 (= (isBalanced!353 (c!51396 lt!112065)) e!169486)))

(declare-fun b!272837 () Bool)

(declare-fun res!124509 () Bool)

(assert (=> b!272837 (=> (not res!124509) (not e!169487))))

(assert (=> b!272837 (= res!124509 (not (isEmpty!2436 (left!3153 (c!51396 lt!112065)))))))

(declare-fun b!272838 () Bool)

(declare-fun res!124511 () Bool)

(assert (=> b!272838 (=> (not res!124511) (not e!169487))))

(assert (=> b!272838 (= res!124511 (<= (- (height!160 (left!3153 (c!51396 lt!112065))) (height!160 (right!3483 (c!51396 lt!112065)))) 1))))

(assert (= (and d!79823 (not res!124510)) b!272834))

(assert (= (and b!272834 res!124506) b!272838))

(assert (= (and b!272838 res!124511) b!272833))

(assert (= (and b!272833 res!124507) b!272835))

(assert (= (and b!272835 res!124508) b!272837))

(assert (= (and b!272837 res!124509) b!272836))

(declare-fun m!347199 () Bool)

(assert (=> b!272833 m!347199))

(declare-fun m!347201 () Bool)

(assert (=> b!272837 m!347201))

(declare-fun m!347203 () Bool)

(assert (=> b!272835 m!347203))

(declare-fun m!347207 () Bool)

(assert (=> b!272834 m!347207))

(declare-fun m!347209 () Bool)

(assert (=> b!272834 m!347209))

(assert (=> b!272838 m!347207))

(assert (=> b!272838 m!347209))

(declare-fun m!347213 () Bool)

(assert (=> b!272836 m!347213))

(assert (=> b!271727 d!79823))

(declare-fun d!79845 () Bool)

(declare-fun res!124513 () Bool)

(declare-fun e!169490 () Bool)

(assert (=> d!79845 (=> res!124513 e!169490)))

(assert (=> d!79845 (= res!124513 (not ((_ is Cons!3829) (t!38513 rules!1920))))))

(assert (=> d!79845 (= (sepAndNonSepRulesDisjointChars!320 rules!1920 (t!38513 rules!1920)) e!169490)))

(declare-fun b!272842 () Bool)

(declare-fun e!169491 () Bool)

(assert (=> b!272842 (= e!169490 e!169491)))

(declare-fun res!124514 () Bool)

(assert (=> b!272842 (=> (not res!124514) (not e!169491))))

(assert (=> b!272842 (= res!124514 (ruleDisjointCharsFromAllFromOtherType!118 (h!9226 (t!38513 rules!1920)) rules!1920))))

(declare-fun b!272843 () Bool)

(assert (=> b!272843 (= e!169491 (sepAndNonSepRulesDisjointChars!320 rules!1920 (t!38513 (t!38513 rules!1920))))))

(assert (= (and d!79845 (not res!124513)) b!272842))

(assert (= (and b!272842 res!124514) b!272843))

(declare-fun m!347221 () Bool)

(assert (=> b!272842 m!347221))

(declare-fun m!347223 () Bool)

(assert (=> b!272843 m!347223))

(assert (=> b!271739 d!79845))

(declare-fun d!79849 () Bool)

(declare-fun lt!112815 () BalanceConc!2576)

(assert (=> d!79849 (= (list!1567 lt!112815) (printList!293 thiss!17480 (list!1570 (singletonSeq!277 (h!9227 (t!38514 tokens!465))))))))

(assert (=> d!79849 (= lt!112815 (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 (t!38514 tokens!465))) 0 (BalanceConc!2577 Empty!1284)))))

(assert (=> d!79849 (= (print!342 thiss!17480 (singletonSeq!277 (h!9227 (t!38514 tokens!465)))) lt!112815)))

(declare-fun bs!30544 () Bool)

(assert (= bs!30544 d!79849))

(declare-fun m!347229 () Bool)

(assert (=> bs!30544 m!347229))

(assert (=> bs!30544 m!344277))

(declare-fun m!347231 () Bool)

(assert (=> bs!30544 m!347231))

(assert (=> bs!30544 m!347231))

(declare-fun m!347233 () Bool)

(assert (=> bs!30544 m!347233))

(assert (=> bs!30544 m!344277))

(assert (=> bs!30544 m!344281))

(assert (=> b!271554 d!79849))

(declare-fun d!79855 () Bool)

(declare-fun e!169494 () Bool)

(assert (=> d!79855 e!169494))

(declare-fun res!124516 () Bool)

(assert (=> d!79855 (=> (not res!124516) (not e!169494))))

(declare-fun lt!112823 () BalanceConc!2578)

(assert (=> d!79855 (= res!124516 (= (list!1570 lt!112823) (Cons!3830 (h!9227 (t!38514 tokens!465)) Nil!3830)))))

(assert (=> d!79855 (= lt!112823 (singleton!114 (h!9227 (t!38514 tokens!465))))))

(assert (=> d!79855 (= (singletonSeq!277 (h!9227 (t!38514 tokens!465))) lt!112823)))

(declare-fun b!272847 () Bool)

(assert (=> b!272847 (= e!169494 (isBalanced!353 (c!51396 lt!112823)))))

(assert (= (and d!79855 res!124516) b!272847))

(declare-fun m!347235 () Bool)

(assert (=> d!79855 m!347235))

(declare-fun m!347237 () Bool)

(assert (=> d!79855 m!347237))

(declare-fun m!347239 () Bool)

(assert (=> b!272847 m!347239))

(assert (=> b!271554 d!79855))

(declare-fun d!79857 () Bool)

(declare-fun lt!112828 () BalanceConc!2576)

(assert (=> d!79857 (= (list!1567 lt!112828) (printListTailRec!130 thiss!17480 (dropList!164 (singletonSeq!277 (h!9227 (t!38514 tokens!465))) 0) (list!1567 (BalanceConc!2577 Empty!1284))))))

(declare-fun e!169495 () BalanceConc!2576)

(assert (=> d!79857 (= lt!112828 e!169495)))

(declare-fun c!51792 () Bool)

(assert (=> d!79857 (= c!51792 (>= 0 (size!3055 (singletonSeq!277 (h!9227 (t!38514 tokens!465))))))))

(declare-fun e!169496 () Bool)

(assert (=> d!79857 e!169496))

(declare-fun res!124517 () Bool)

(assert (=> d!79857 (=> (not res!124517) (not e!169496))))

(assert (=> d!79857 (= res!124517 (>= 0 0))))

(assert (=> d!79857 (= (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 (t!38514 tokens!465))) 0 (BalanceConc!2577 Empty!1284)) lt!112828)))

(declare-fun b!272848 () Bool)

(assert (=> b!272848 (= e!169496 (<= 0 (size!3055 (singletonSeq!277 (h!9227 (t!38514 tokens!465))))))))

(declare-fun b!272849 () Bool)

(assert (=> b!272849 (= e!169495 (BalanceConc!2577 Empty!1284))))

(declare-fun b!272850 () Bool)

(assert (=> b!272850 (= e!169495 (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 (t!38514 tokens!465))) (+ 0 1) (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 (singletonSeq!277 (h!9227 (t!38514 tokens!465))) 0)))))))

(declare-fun lt!112830 () List!3840)

(assert (=> b!272850 (= lt!112830 (list!1570 (singletonSeq!277 (h!9227 (t!38514 tokens!465)))))))

(declare-fun lt!112829 () Unit!4936)

(assert (=> b!272850 (= lt!112829 (lemmaDropApply!204 lt!112830 0))))

(assert (=> b!272850 (= (head!888 (drop!217 lt!112830 0)) (apply!774 lt!112830 0))))

(declare-fun lt!112827 () Unit!4936)

(assert (=> b!272850 (= lt!112827 lt!112829)))

(declare-fun lt!112825 () List!3840)

(assert (=> b!272850 (= lt!112825 (list!1570 (singletonSeq!277 (h!9227 (t!38514 tokens!465)))))))

(declare-fun lt!112826 () Unit!4936)

(assert (=> b!272850 (= lt!112826 (lemmaDropTail!196 lt!112825 0))))

(assert (=> b!272850 (= (tail!478 (drop!217 lt!112825 0)) (drop!217 lt!112825 (+ 0 1)))))

(declare-fun lt!112824 () Unit!4936)

(assert (=> b!272850 (= lt!112824 lt!112826)))

(assert (= (and d!79857 res!124517) b!272848))

(assert (= (and d!79857 c!51792) b!272849))

(assert (= (and d!79857 (not c!51792)) b!272850))

(assert (=> d!79857 m!344581))

(assert (=> d!79857 m!344277))

(declare-fun m!347273 () Bool)

(assert (=> d!79857 m!347273))

(assert (=> d!79857 m!344277))

(declare-fun m!347275 () Bool)

(assert (=> d!79857 m!347275))

(assert (=> d!79857 m!347275))

(assert (=> d!79857 m!344581))

(declare-fun m!347277 () Bool)

(assert (=> d!79857 m!347277))

(declare-fun m!347279 () Bool)

(assert (=> d!79857 m!347279))

(assert (=> b!272848 m!344277))

(assert (=> b!272848 m!347273))

(assert (=> b!272850 m!344277))

(declare-fun m!347281 () Bool)

(assert (=> b!272850 m!347281))

(assert (=> b!272850 m!344277))

(declare-fun m!347289 () Bool)

(assert (=> b!272850 m!347289))

(declare-fun m!347291 () Bool)

(assert (=> b!272850 m!347291))

(assert (=> b!272850 m!347281))

(declare-fun m!347293 () Bool)

(assert (=> b!272850 m!347293))

(assert (=> b!272850 m!344277))

(assert (=> b!272850 m!347231))

(declare-fun m!347295 () Bool)

(assert (=> b!272850 m!347295))

(assert (=> b!272850 m!347295))

(declare-fun m!347297 () Bool)

(assert (=> b!272850 m!347297))

(declare-fun m!347299 () Bool)

(assert (=> b!272850 m!347299))

(declare-fun m!347301 () Bool)

(assert (=> b!272850 m!347301))

(declare-fun m!347303 () Bool)

(assert (=> b!272850 m!347303))

(declare-fun m!347305 () Bool)

(assert (=> b!272850 m!347305))

(declare-fun m!347307 () Bool)

(assert (=> b!272850 m!347307))

(assert (=> b!272850 m!347293))

(assert (=> b!272850 m!347289))

(assert (=> b!272850 m!347305))

(declare-fun m!347309 () Bool)

(assert (=> b!272850 m!347309))

(assert (=> b!271554 d!79857))

(declare-fun d!79863 () Bool)

(assert (=> d!79863 (isDefined!658 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 call!14883 lt!111972)))))

(declare-fun lt!112861 () Unit!4936)

(declare-fun e!169501 () Unit!4936)

(assert (=> d!79863 (= lt!112861 e!169501)))

(declare-fun c!51794 () Bool)

(assert (=> d!79863 (= c!51794 (isEmpty!2444 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 call!14883 lt!111972))))))

(declare-fun lt!112856 () Unit!4936)

(declare-fun lt!112849 () Unit!4936)

(assert (=> d!79863 (= lt!112856 lt!112849)))

(declare-fun e!169500 () Bool)

(assert (=> d!79863 e!169500))

(declare-fun res!124522 () Bool)

(assert (=> d!79863 (=> (not res!124522) (not e!169500))))

(declare-fun lt!112851 () Token!1206)

(assert (=> d!79863 (= res!124522 (isDefined!660 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112851)))))))

(assert (=> d!79863 (= lt!112849 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!126 thiss!17480 rules!1920 call!14883 lt!112851))))

(declare-fun lt!112860 () Unit!4936)

(declare-fun lt!112859 () Unit!4936)

(assert (=> d!79863 (= lt!112860 lt!112859)))

(declare-fun lt!112854 () List!3838)

(assert (=> d!79863 (isPrefix!399 lt!112854 (++!1002 call!14883 lt!111972))))

(assert (=> d!79863 (= lt!112859 (lemmaPrefixStaysPrefixWhenAddingToSuffix!58 lt!112854 call!14883 lt!111972))))

(assert (=> d!79863 (= lt!112854 (list!1567 (charsOf!376 lt!112851)))))

(declare-fun lt!112850 () Unit!4936)

(declare-fun lt!112852 () Unit!4936)

(assert (=> d!79863 (= lt!112850 lt!112852)))

(declare-fun lt!112857 () List!3838)

(declare-fun lt!112865 () List!3838)

(assert (=> d!79863 (isPrefix!399 lt!112857 (++!1002 lt!112857 lt!112865))))

(assert (=> d!79863 (= lt!112852 (lemmaConcatTwoListThenFirstIsPrefix!294 lt!112857 lt!112865))))

(assert (=> d!79863 (= lt!112865 (_2!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 call!14883))))))

(assert (=> d!79863 (= lt!112857 (list!1567 (charsOf!376 lt!112851)))))

(assert (=> d!79863 (= lt!112851 (head!888 (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 call!14883))))))))

(assert (=> d!79863 (not (isEmpty!2429 rules!1920))))

(assert (=> d!79863 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 call!14883 lt!111972) lt!112861)))

(declare-fun b!272858 () Bool)

(declare-fun Unit!4978 () Unit!4936)

(assert (=> b!272858 (= e!169501 Unit!4978)))

(declare-fun lt!112862 () List!3838)

(assert (=> b!272858 (= lt!112862 (++!1002 call!14883 lt!111972))))

(declare-fun lt!112853 () Unit!4936)

(assert (=> b!272858 (= lt!112853 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!58 thiss!17480 (rule!1316 lt!112851) rules!1920 lt!112862))))

(assert (=> b!272858 (isEmpty!2444 (maxPrefixOneRule!143 thiss!17480 (rule!1316 lt!112851) lt!112862))))

(declare-fun lt!112864 () Unit!4936)

(assert (=> b!272858 (= lt!112864 lt!112853)))

(declare-fun lt!112863 () List!3838)

(assert (=> b!272858 (= lt!112863 (list!1567 (charsOf!376 lt!112851)))))

(declare-fun lt!112858 () Unit!4936)

(assert (=> b!272858 (= lt!112858 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!58 thiss!17480 (rule!1316 lt!112851) lt!112863 (++!1002 call!14883 lt!111972)))))

(assert (=> b!272858 (not (matchR!277 (regex!731 (rule!1316 lt!112851)) lt!112863))))

(declare-fun lt!112855 () Unit!4936)

(assert (=> b!272858 (= lt!112855 lt!112858)))

(assert (=> b!272858 false))

(declare-fun b!272856 () Bool)

(declare-fun res!124521 () Bool)

(assert (=> b!272856 (=> (not res!124521) (not e!169500))))

(assert (=> b!272856 (= res!124521 (matchR!277 (regex!731 (get!1273 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112851))))) (list!1567 (charsOf!376 lt!112851))))))

(declare-fun b!272859 () Bool)

(declare-fun Unit!4979 () Unit!4936)

(assert (=> b!272859 (= e!169501 Unit!4979)))

(declare-fun b!272857 () Bool)

(assert (=> b!272857 (= e!169500 (= (rule!1316 lt!112851) (get!1273 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112851))))))))

(assert (= (and d!79863 res!124522) b!272856))

(assert (= (and b!272856 res!124521) b!272857))

(assert (= (and d!79863 c!51794) b!272858))

(assert (= (and d!79863 (not c!51794)) b!272859))

(declare-fun m!347337 () Bool)

(assert (=> d!79863 m!347337))

(declare-fun m!347341 () Bool)

(assert (=> d!79863 m!347341))

(declare-fun m!347343 () Bool)

(assert (=> d!79863 m!347343))

(declare-fun m!347349 () Bool)

(assert (=> d!79863 m!347349))

(declare-fun m!347351 () Bool)

(assert (=> d!79863 m!347351))

(declare-fun m!347355 () Bool)

(assert (=> d!79863 m!347355))

(assert (=> d!79863 m!347349))

(declare-fun m!347359 () Bool)

(assert (=> d!79863 m!347359))

(assert (=> d!79863 m!347349))

(declare-fun m!347361 () Bool)

(assert (=> d!79863 m!347361))

(declare-fun m!347365 () Bool)

(assert (=> d!79863 m!347365))

(declare-fun m!347367 () Bool)

(assert (=> d!79863 m!347367))

(declare-fun m!347373 () Bool)

(assert (=> d!79863 m!347373))

(declare-fun m!347375 () Bool)

(assert (=> d!79863 m!347375))

(assert (=> d!79863 m!347355))

(declare-fun m!347379 () Bool)

(assert (=> d!79863 m!347379))

(assert (=> d!79863 m!343713))

(assert (=> d!79863 m!347373))

(assert (=> d!79863 m!347355))

(declare-fun m!347385 () Bool)

(assert (=> d!79863 m!347385))

(declare-fun m!347387 () Bool)

(assert (=> d!79863 m!347387))

(declare-fun m!347389 () Bool)

(assert (=> d!79863 m!347389))

(assert (=> d!79863 m!347343))

(declare-fun m!347391 () Bool)

(assert (=> d!79863 m!347391))

(assert (=> d!79863 m!347385))

(assert (=> d!79863 m!347337))

(assert (=> d!79863 m!347389))

(declare-fun m!347397 () Bool)

(assert (=> d!79863 m!347397))

(declare-fun m!347399 () Bool)

(assert (=> d!79863 m!347399))

(assert (=> d!79863 m!347365))

(declare-fun m!347401 () Bool)

(assert (=> d!79863 m!347401))

(assert (=> b!272858 m!347337))

(assert (=> b!272858 m!347341))

(assert (=> b!272858 m!347355))

(declare-fun m!347405 () Bool)

(assert (=> b!272858 m!347405))

(assert (=> b!272858 m!347337))

(declare-fun m!347407 () Bool)

(assert (=> b!272858 m!347407))

(assert (=> b!272858 m!347407))

(declare-fun m!347409 () Bool)

(assert (=> b!272858 m!347409))

(assert (=> b!272858 m!347355))

(declare-fun m!347411 () Bool)

(assert (=> b!272858 m!347411))

(declare-fun m!347413 () Bool)

(assert (=> b!272858 m!347413))

(assert (=> b!272856 m!347337))

(assert (=> b!272856 m!347341))

(assert (=> b!272856 m!347385))

(declare-fun m!347415 () Bool)

(assert (=> b!272856 m!347415))

(assert (=> b!272856 m!347341))

(declare-fun m!347417 () Bool)

(assert (=> b!272856 m!347417))

(assert (=> b!272856 m!347385))

(assert (=> b!272856 m!347337))

(assert (=> b!272857 m!347385))

(assert (=> b!272857 m!347385))

(assert (=> b!272857 m!347415))

(assert (=> b!271554 d!79863))

(declare-fun bs!30545 () Bool)

(declare-fun d!79867 () Bool)

(assert (= bs!30545 (and d!79867 d!79591)))

(declare-fun lambda!9249 () Int)

(assert (=> bs!30545 (= (and (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) (= (toValue!1470 (transformation!731 (rule!1316 separatorToken!170))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465)))))) (= lambda!9249 lambda!9227))))

(declare-fun bs!30546 () Bool)

(assert (= bs!30546 (and d!79867 b!272593)))

(assert (=> bs!30546 (= (and (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (= (toValue!1470 (transformation!731 (rule!1316 separatorToken!170))) (toValue!1470 (transformation!731 (h!9226 rules!1920))))) (= lambda!9249 lambda!9239))))

(declare-fun bs!30548 () Bool)

(assert (= bs!30548 (and d!79867 d!79817)))

(assert (=> bs!30548 (= (and (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (= (toValue!1470 (transformation!731 (rule!1316 separatorToken!170))) (toValue!1470 (transformation!731 (h!9226 rules!1920))))) (= lambda!9249 lambda!9248))))

(assert (=> d!79867 true))

(assert (=> d!79867 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170)))) (dynLambda!1976 order!2965 lambda!9249))))

(assert (=> d!79867 true))

(assert (=> d!79867 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (rule!1316 separatorToken!170)))) (dynLambda!1976 order!2965 lambda!9249))))

(assert (=> d!79867 (= (semiInverseModEq!259 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toValue!1470 (transformation!731 (rule!1316 separatorToken!170)))) (Forall!173 lambda!9249))))

(declare-fun bs!30550 () Bool)

(assert (= bs!30550 d!79867))

(declare-fun m!347433 () Bool)

(assert (=> bs!30550 m!347433))

(assert (=> d!79171 d!79867))

(declare-fun lt!112868 () Bool)

(declare-fun d!79875 () Bool)

(assert (=> d!79875 (= lt!112868 (isEmpty!2432 (list!1567 (_2!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)))))))))

(assert (=> d!79875 (= lt!112868 (isEmpty!2443 (c!51394 (_2!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)))))))))

(assert (=> d!79875 (= (isEmpty!2434 (_2!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170))))) lt!112868)))

(declare-fun bs!30552 () Bool)

(assert (= bs!30552 d!79875))

(declare-fun m!347437 () Bool)

(assert (=> bs!30552 m!347437))

(assert (=> bs!30552 m!347437))

(declare-fun m!347439 () Bool)

(assert (=> bs!30552 m!347439))

(declare-fun m!347441 () Bool)

(assert (=> bs!30552 m!347441))

(assert (=> b!271502 d!79875))

(declare-fun b!272861 () Bool)

(declare-fun res!124525 () Bool)

(declare-fun e!169503 () Bool)

(assert (=> b!272861 (=> (not res!124525) (not e!169503))))

(declare-fun lt!112869 () tuple2!4292)

(assert (=> b!272861 (= res!124525 (= (list!1570 (_1!2362 lt!112869)) (_1!2366 (lexList!208 thiss!17480 rules!1920 (list!1567 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)))))))))

(declare-fun b!272862 () Bool)

(declare-fun e!169504 () Bool)

(assert (=> b!272862 (= e!169504 (= (_2!2362 lt!112869) (print!342 thiss!17480 (singletonSeq!277 separatorToken!170))))))

(declare-fun b!272863 () Bool)

(assert (=> b!272863 (= e!169503 (= (list!1567 (_2!2362 lt!112869)) (_2!2366 (lexList!208 thiss!17480 rules!1920 (list!1567 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)))))))))

(declare-fun d!79879 () Bool)

(assert (=> d!79879 e!169503))

(declare-fun res!124523 () Bool)

(assert (=> d!79879 (=> (not res!124523) (not e!169503))))

(assert (=> d!79879 (= res!124523 e!169504)))

(declare-fun c!51795 () Bool)

(assert (=> d!79879 (= c!51795 (> (size!3055 (_1!2362 lt!112869)) 0))))

(assert (=> d!79879 (= lt!112869 (lexTailRecV2!175 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)) (BalanceConc!2577 Empty!1284) (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)) (BalanceConc!2579 Empty!1285)))))

(assert (=> d!79879 (= (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170))) lt!112869)))

(declare-fun b!272864 () Bool)

(declare-fun e!169505 () Bool)

(assert (=> b!272864 (= e!169504 e!169505)))

(declare-fun res!124524 () Bool)

(assert (=> b!272864 (= res!124524 (< (size!3056 (_2!2362 lt!112869)) (size!3056 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)))))))

(assert (=> b!272864 (=> (not res!124524) (not e!169505))))

(declare-fun b!272865 () Bool)

(assert (=> b!272865 (= e!169505 (not (isEmpty!2430 (_1!2362 lt!112869))))))

(assert (= (and d!79879 c!51795) b!272864))

(assert (= (and d!79879 (not c!51795)) b!272862))

(assert (= (and b!272864 res!124524) b!272865))

(assert (= (and d!79879 res!124523) b!272861))

(assert (= (and b!272861 res!124525) b!272863))

(declare-fun m!347443 () Bool)

(assert (=> b!272864 m!347443))

(assert (=> b!272864 m!344211))

(declare-fun m!347445 () Bool)

(assert (=> b!272864 m!347445))

(declare-fun m!347447 () Bool)

(assert (=> b!272865 m!347447))

(declare-fun m!347449 () Bool)

(assert (=> b!272861 m!347449))

(assert (=> b!272861 m!344211))

(declare-fun m!347451 () Bool)

(assert (=> b!272861 m!347451))

(assert (=> b!272861 m!347451))

(declare-fun m!347453 () Bool)

(assert (=> b!272861 m!347453))

(declare-fun m!347455 () Bool)

(assert (=> d!79879 m!347455))

(assert (=> d!79879 m!344211))

(assert (=> d!79879 m!344211))

(declare-fun m!347457 () Bool)

(assert (=> d!79879 m!347457))

(declare-fun m!347459 () Bool)

(assert (=> b!272863 m!347459))

(assert (=> b!272863 m!344211))

(assert (=> b!272863 m!347451))

(assert (=> b!272863 m!347451))

(assert (=> b!272863 m!347453))

(assert (=> b!271502 d!79879))

(declare-fun d!79881 () Bool)

(declare-fun lt!112870 () BalanceConc!2576)

(assert (=> d!79881 (= (list!1567 lt!112870) (printList!293 thiss!17480 (list!1570 (singletonSeq!277 separatorToken!170))))))

(assert (=> d!79881 (= lt!112870 (printTailRec!305 thiss!17480 (singletonSeq!277 separatorToken!170) 0 (BalanceConc!2577 Empty!1284)))))

(assert (=> d!79881 (= (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)) lt!112870)))

(declare-fun bs!30553 () Bool)

(assert (= bs!30553 d!79881))

(declare-fun m!347461 () Bool)

(assert (=> bs!30553 m!347461))

(assert (=> bs!30553 m!344209))

(assert (=> bs!30553 m!344215))

(assert (=> bs!30553 m!344215))

(declare-fun m!347463 () Bool)

(assert (=> bs!30553 m!347463))

(assert (=> bs!30553 m!344209))

(declare-fun m!347465 () Bool)

(assert (=> bs!30553 m!347465))

(assert (=> b!271502 d!79881))

(declare-fun d!79883 () Bool)

(declare-fun e!169506 () Bool)

(assert (=> d!79883 e!169506))

(declare-fun res!124526 () Bool)

(assert (=> d!79883 (=> (not res!124526) (not e!169506))))

(declare-fun lt!112871 () BalanceConc!2578)

(assert (=> d!79883 (= res!124526 (= (list!1570 lt!112871) (Cons!3830 separatorToken!170 Nil!3830)))))

(assert (=> d!79883 (= lt!112871 (singleton!114 separatorToken!170))))

(assert (=> d!79883 (= (singletonSeq!277 separatorToken!170) lt!112871)))

(declare-fun b!272866 () Bool)

(assert (=> b!272866 (= e!169506 (isBalanced!353 (c!51396 lt!112871)))))

(assert (= (and d!79883 res!124526) b!272866))

(declare-fun m!347467 () Bool)

(assert (=> d!79883 m!347467))

(declare-fun m!347469 () Bool)

(assert (=> d!79883 m!347469))

(declare-fun m!347471 () Bool)

(assert (=> b!272866 m!347471))

(assert (=> b!271502 d!79883))

(declare-fun d!79885 () Bool)

(assert (=> d!79885 true))

(declare-fun lt!112874 () Bool)

(assert (=> d!79885 (= lt!112874 (rulesValidInductive!204 thiss!17480 rules!1920))))

(declare-fun lambda!9252 () Int)

(declare-fun forall!969 (List!3839 Int) Bool)

(assert (=> d!79885 (= lt!112874 (forall!969 rules!1920 lambda!9252))))

(assert (=> d!79885 (= (rulesValid!225 thiss!17480 rules!1920) lt!112874)))

(declare-fun bs!30554 () Bool)

(assert (= bs!30554 d!79885))

(assert (=> bs!30554 m!344675))

(declare-fun m!347473 () Bool)

(assert (=> bs!30554 m!347473))

(assert (=> d!79173 d!79885))

(declare-fun d!79887 () Bool)

(declare-fun charsToBigInt!0 (List!3837 Int) Int)

(assert (=> d!79887 (= (inv!15 (value!25149 (h!9227 tokens!465))) (= (charsToBigInt!0 (text!5720 (value!25149 (h!9227 tokens!465))) 0) (value!25144 (value!25149 (h!9227 tokens!465)))))))

(declare-fun bs!30555 () Bool)

(assert (= bs!30555 d!79887))

(declare-fun m!347475 () Bool)

(assert (=> bs!30555 m!347475))

(assert (=> b!271287 d!79887))

(declare-fun d!79889 () Bool)

(assert (=> d!79889 (= (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))) (isBalanced!355 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))))))

(declare-fun bs!30556 () Bool)

(assert (= bs!30556 d!79889))

(declare-fun m!347477 () Bool)

(assert (=> bs!30556 m!347477))

(assert (=> tb!15411 d!79889))

(declare-fun b!272872 () Bool)

(declare-fun e!169507 () Bool)

(declare-fun lt!112875 () BalanceConc!2576)

(assert (=> b!272872 (= e!169507 (= (list!1567 lt!112875) (++!1002 (list!1567 call!14851) (list!1567 lt!111891))))))

(declare-fun b!272870 () Bool)

(declare-fun res!124529 () Bool)

(assert (=> b!272870 (=> (not res!124529) (not e!169507))))

(assert (=> b!272870 (= res!124529 (<= (height!158 (++!1006 (c!51394 call!14851) (c!51394 lt!111891))) (+ (max!0 (height!158 (c!51394 call!14851)) (height!158 (c!51394 lt!111891))) 1)))))

(declare-fun b!272869 () Bool)

(declare-fun res!124528 () Bool)

(assert (=> b!272869 (=> (not res!124528) (not e!169507))))

(assert (=> b!272869 (= res!124528 (isBalanced!355 (++!1006 (c!51394 call!14851) (c!51394 lt!111891))))))

(declare-fun d!79891 () Bool)

(assert (=> d!79891 e!169507))

(declare-fun res!124530 () Bool)

(assert (=> d!79891 (=> (not res!124530) (not e!169507))))

(assert (=> d!79891 (= res!124530 (appendAssocInst!65 (c!51394 call!14851) (c!51394 lt!111891)))))

(assert (=> d!79891 (= lt!112875 (BalanceConc!2577 (++!1006 (c!51394 call!14851) (c!51394 lt!111891))))))

(assert (=> d!79891 (= (++!1004 call!14851 lt!111891) lt!112875)))

(declare-fun b!272871 () Bool)

(declare-fun res!124527 () Bool)

(assert (=> b!272871 (=> (not res!124527) (not e!169507))))

(assert (=> b!272871 (= res!124527 (>= (height!158 (++!1006 (c!51394 call!14851) (c!51394 lt!111891))) (max!0 (height!158 (c!51394 call!14851)) (height!158 (c!51394 lt!111891)))))))

(assert (= (and d!79891 res!124530) b!272869))

(assert (= (and b!272869 res!124528) b!272870))

(assert (= (and b!272870 res!124529) b!272871))

(assert (= (and b!272871 res!124527) b!272872))

(declare-fun m!347479 () Bool)

(assert (=> b!272869 m!347479))

(assert (=> b!272869 m!347479))

(declare-fun m!347481 () Bool)

(assert (=> b!272869 m!347481))

(declare-fun m!347483 () Bool)

(assert (=> d!79891 m!347483))

(assert (=> d!79891 m!347479))

(assert (=> b!272870 m!347479))

(assert (=> b!272870 m!346659))

(assert (=> b!272870 m!347479))

(declare-fun m!347485 () Bool)

(assert (=> b!272870 m!347485))

(declare-fun m!347487 () Bool)

(assert (=> b!272870 m!347487))

(assert (=> b!272870 m!347487))

(assert (=> b!272870 m!346659))

(declare-fun m!347489 () Bool)

(assert (=> b!272870 m!347489))

(assert (=> b!272871 m!347479))

(assert (=> b!272871 m!346659))

(assert (=> b!272871 m!347479))

(assert (=> b!272871 m!347485))

(assert (=> b!272871 m!347487))

(assert (=> b!272871 m!347487))

(assert (=> b!272871 m!346659))

(assert (=> b!272871 m!347489))

(declare-fun m!347491 () Bool)

(assert (=> b!272872 m!347491))

(declare-fun m!347493 () Bool)

(assert (=> b!272872 m!347493))

(assert (=> b!272872 m!343965))

(assert (=> b!272872 m!347493))

(assert (=> b!272872 m!343965))

(declare-fun m!347495 () Bool)

(assert (=> b!272872 m!347495))

(assert (=> b!271370 d!79891))

(declare-fun bs!30557 () Bool)

(declare-fun d!79893 () Bool)

(assert (= bs!30557 (and d!79893 d!79885)))

(declare-fun lambda!9255 () Int)

(assert (=> bs!30557 (= lambda!9255 lambda!9252)))

(assert (=> d!79893 true))

(declare-fun lt!112878 () Bool)

(assert (=> d!79893 (= lt!112878 (forall!969 rules!1920 lambda!9255))))

(declare-fun e!169512 () Bool)

(assert (=> d!79893 (= lt!112878 e!169512)))

(declare-fun res!124536 () Bool)

(assert (=> d!79893 (=> res!124536 e!169512)))

(assert (=> d!79893 (= res!124536 (not ((_ is Cons!3829) rules!1920)))))

(assert (=> d!79893 (= (rulesValidInductive!204 thiss!17480 rules!1920) lt!112878)))

(declare-fun b!272877 () Bool)

(declare-fun e!169513 () Bool)

(assert (=> b!272877 (= e!169512 e!169513)))

(declare-fun res!124535 () Bool)

(assert (=> b!272877 (=> (not res!124535) (not e!169513))))

(assert (=> b!272877 (= res!124535 (ruleValid!90 thiss!17480 (h!9226 rules!1920)))))

(declare-fun b!272878 () Bool)

(assert (=> b!272878 (= e!169513 (rulesValidInductive!204 thiss!17480 (t!38513 rules!1920)))))

(assert (= (and d!79893 (not res!124536)) b!272877))

(assert (= (and b!272877 res!124535) b!272878))

(declare-fun m!347497 () Bool)

(assert (=> d!79893 m!347497))

(assert (=> b!272877 m!346569))

(declare-fun m!347499 () Bool)

(assert (=> b!272878 m!347499))

(assert (=> d!79217 d!79893))

(declare-fun d!79895 () Bool)

(declare-fun lt!112893 () Option!815)

(assert (=> d!79895 (= lt!112893 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(declare-fun e!169516 () Option!815)

(assert (=> d!79895 (= lt!112893 e!169516)))

(declare-fun c!51798 () Bool)

(assert (=> d!79895 (= c!51798 (and ((_ is Cons!3829) rules!1920) ((_ is Nil!3829) (t!38513 rules!1920))))))

(declare-fun lt!112892 () Unit!4936)

(declare-fun lt!112891 () Unit!4936)

(assert (=> d!79895 (= lt!112892 lt!112891)))

(assert (=> d!79895 (isPrefix!399 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (=> d!79895 (= lt!112891 (lemmaIsPrefixRefl!209 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(assert (=> d!79895 (rulesValidInductive!204 thiss!17480 rules!1920)))

(assert (=> d!79895 (= (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))) lt!112893)))

(declare-fun call!14962 () Option!815)

(declare-fun bm!14957 () Bool)

(declare-fun maxPrefixOneRuleZipper!35 (LexerInterface!617 Rule!1262 List!3838) Option!815)

(assert (=> bm!14957 (= call!14962 (maxPrefixOneRuleZipper!35 thiss!17480 (h!9226 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(declare-fun b!272883 () Bool)

(assert (=> b!272883 (= e!169516 call!14962)))

(declare-fun b!272884 () Bool)

(declare-fun lt!112889 () Option!815)

(declare-fun lt!112890 () Option!815)

(assert (=> b!272884 (= e!169516 (ite (and ((_ is None!814) lt!112889) ((_ is None!814) lt!112890)) None!814 (ite ((_ is None!814) lt!112890) lt!112889 (ite ((_ is None!814) lt!112889) lt!112890 (ite (>= (size!3051 (_1!2365 (v!14689 lt!112889))) (size!3051 (_1!2365 (v!14689 lt!112890)))) lt!112889 lt!112890)))))))

(assert (=> b!272884 (= lt!112889 call!14962)))

(assert (=> b!272884 (= lt!112890 (maxPrefixZipper!113 thiss!17480 (t!38513 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))

(assert (= (and d!79895 c!51798) b!272883))

(assert (= (and d!79895 (not c!51798)) b!272884))

(assert (= (or b!272883 b!272884) bm!14957))

(assert (=> d!79895 m!344677))

(assert (=> d!79895 m!344685))

(assert (=> d!79895 m!344677))

(assert (=> d!79895 m!344677))

(assert (=> d!79895 m!346937))

(assert (=> d!79895 m!344677))

(assert (=> d!79895 m!344677))

(assert (=> d!79895 m!346939))

(assert (=> d!79895 m!344675))

(assert (=> bm!14957 m!344677))

(declare-fun m!347501 () Bool)

(assert (=> bm!14957 m!347501))

(assert (=> b!272884 m!344677))

(declare-fun m!347503 () Bool)

(assert (=> b!272884 m!347503))

(assert (=> d!79217 d!79895))

(declare-fun b!272895 () Bool)

(declare-fun e!169524 () Bool)

(declare-fun tail!480 (List!3838) List!3838)

(assert (=> b!272895 (= e!169524 (isPrefix!399 (tail!480 lt!112080) (tail!480 lt!112085)))))

(declare-fun b!272896 () Bool)

(declare-fun e!169525 () Bool)

(assert (=> b!272896 (= e!169525 (>= (size!3053 lt!112085) (size!3053 lt!112080)))))

(declare-fun b!272893 () Bool)

(declare-fun e!169523 () Bool)

(assert (=> b!272893 (= e!169523 e!169524)))

(declare-fun res!124546 () Bool)

(assert (=> b!272893 (=> (not res!124546) (not e!169524))))

(assert (=> b!272893 (= res!124546 (not ((_ is Nil!3828) lt!112085)))))

(declare-fun b!272894 () Bool)

(declare-fun res!124545 () Bool)

(assert (=> b!272894 (=> (not res!124545) (not e!169524))))

(declare-fun head!890 (List!3838) C!2832)

(assert (=> b!272894 (= res!124545 (= (head!890 lt!112080) (head!890 lt!112085)))))

(declare-fun d!79897 () Bool)

(assert (=> d!79897 e!169525))

(declare-fun res!124548 () Bool)

(assert (=> d!79897 (=> res!124548 e!169525)))

(declare-fun lt!112896 () Bool)

(assert (=> d!79897 (= res!124548 (not lt!112896))))

(assert (=> d!79897 (= lt!112896 e!169523)))

(declare-fun res!124547 () Bool)

(assert (=> d!79897 (=> res!124547 e!169523)))

(assert (=> d!79897 (= res!124547 ((_ is Nil!3828) lt!112080))))

(assert (=> d!79897 (= (isPrefix!399 lt!112080 lt!112085) lt!112896)))

(assert (= (and d!79897 (not res!124547)) b!272893))

(assert (= (and b!272893 res!124546) b!272894))

(assert (= (and b!272894 res!124545) b!272895))

(assert (= (and d!79897 (not res!124548)) b!272896))

(declare-fun m!347505 () Bool)

(assert (=> b!272895 m!347505))

(declare-fun m!347507 () Bool)

(assert (=> b!272895 m!347507))

(assert (=> b!272895 m!347505))

(assert (=> b!272895 m!347507))

(declare-fun m!347509 () Bool)

(assert (=> b!272895 m!347509))

(declare-fun m!347511 () Bool)

(assert (=> b!272896 m!347511))

(declare-fun m!347513 () Bool)

(assert (=> b!272896 m!347513))

(declare-fun m!347515 () Bool)

(assert (=> b!272894 m!347515))

(declare-fun m!347517 () Bool)

(assert (=> b!272894 m!347517))

(assert (=> d!79217 d!79897))

(assert (=> d!79217 d!79359))

(declare-fun d!79899 () Bool)

(assert (=> d!79899 (isPrefix!399 lt!112080 lt!112085)))

(declare-fun lt!112913 () Unit!4936)

(declare-fun choose!2470 (List!3838 List!3838) Unit!4936)

(assert (=> d!79899 (= lt!112913 (choose!2470 lt!112080 lt!112085))))

(assert (=> d!79899 (= (lemmaIsPrefixRefl!209 lt!112080 lt!112085) lt!112913)))

(declare-fun bs!30558 () Bool)

(assert (= bs!30558 d!79899))

(assert (=> bs!30558 m!344673))

(declare-fun m!347519 () Bool)

(assert (=> bs!30558 m!347519))

(assert (=> d!79217 d!79899))

(declare-fun d!79901 () Bool)

(assert (=> d!79901 (= (isDefined!658 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))) (not (isEmpty!2444 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))))

(declare-fun bs!30559 () Bool)

(assert (= bs!30559 d!79901))

(assert (=> bs!30559 m!344669))

(declare-fun m!347521 () Bool)

(assert (=> bs!30559 m!347521))

(assert (=> d!79217 d!79901))

(assert (=> d!79217 d!79787))

(assert (=> d!79165 d!79203))

(declare-fun d!79903 () Bool)

(assert (=> d!79903 (= (list!1570 (singletonSeq!277 (h!9227 tokens!465))) (list!1574 (c!51396 (singletonSeq!277 (h!9227 tokens!465)))))))

(declare-fun bs!30560 () Bool)

(assert (= bs!30560 d!79903))

(declare-fun m!347523 () Bool)

(assert (=> bs!30560 m!347523))

(assert (=> d!79165 d!79903))

(assert (=> d!79165 d!79377))

(declare-fun d!79905 () Bool)

(assert (=> d!79905 (= (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465)))))) (list!1574 (c!51396 (_1!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 (h!9227 tokens!465))))))))))

(declare-fun bs!30561 () Bool)

(assert (= bs!30561 d!79905))

(declare-fun m!347525 () Bool)

(assert (=> bs!30561 m!347525))

(assert (=> d!79165 d!79905))

(assert (=> d!79165 d!79029))

(declare-fun d!79907 () Bool)

(declare-fun lt!112914 () Int)

(assert (=> d!79907 (= lt!112914 (size!3060 (list!1570 (_1!2362 lt!112010))))))

(assert (=> d!79907 (= lt!112914 (size!3061 (c!51396 (_1!2362 lt!112010))))))

(assert (=> d!79907 (= (size!3055 (_1!2362 lt!112010)) lt!112914)))

(declare-fun bs!30562 () Bool)

(assert (= bs!30562 d!79907))

(declare-fun m!347527 () Bool)

(assert (=> bs!30562 m!347527))

(assert (=> bs!30562 m!347527))

(declare-fun m!347529 () Bool)

(assert (=> bs!30562 m!347529))

(declare-fun m!347531 () Bool)

(assert (=> bs!30562 m!347531))

(assert (=> d!79165 d!79907))

(assert (=> d!79165 d!79379))

(declare-fun d!79909 () Bool)

(assert (=> d!79909 (= (inv!15 (value!25149 separatorToken!170)) (= (charsToBigInt!0 (text!5720 (value!25149 separatorToken!170)) 0) (value!25144 (value!25149 separatorToken!170))))))

(declare-fun bs!30563 () Bool)

(assert (= bs!30563 d!79909))

(declare-fun m!347533 () Bool)

(assert (=> bs!30563 m!347533))

(assert (=> b!271627 d!79909))

(declare-fun e!169530 () Bool)

(declare-fun lt!112917 () List!3838)

(declare-fun b!272906 () Bool)

(assert (=> b!272906 (= e!169530 (or (not (= lt!111972 Nil!3828)) (= lt!112917 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))))))))

(declare-fun b!272904 () Bool)

(declare-fun e!169531 () List!3838)

(assert (=> b!272904 (= e!169531 (Cons!3828 (h!9225 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465))))) (++!1002 (t!38512 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465))))) lt!111972)))))

(declare-fun d!79911 () Bool)

(assert (=> d!79911 e!169530))

(declare-fun res!124552 () Bool)

(assert (=> d!79911 (=> (not res!124552) (not e!169530))))

(assert (=> d!79911 (= res!124552 (= (content!551 lt!112917) ((_ map or) (content!551 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465))))) (content!551 lt!111972))))))

(assert (=> d!79911 (= lt!112917 e!169531)))

(declare-fun c!51801 () Bool)

(assert (=> d!79911 (= c!51801 ((_ is Nil!3828) (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465))))))))

(assert (=> d!79911 (= (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972) lt!112917)))

(declare-fun b!272905 () Bool)

(declare-fun res!124551 () Bool)

(assert (=> b!272905 (=> (not res!124551) (not e!169530))))

(assert (=> b!272905 (= res!124551 (= (size!3053 lt!112917) (+ (size!3053 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465))))) (size!3053 lt!111972))))))

(declare-fun b!272903 () Bool)

(assert (=> b!272903 (= e!169531 lt!111972)))

(assert (= (and d!79911 c!51801) b!272903))

(assert (= (and d!79911 (not c!51801)) b!272904))

(assert (= (and d!79911 res!124552) b!272905))

(assert (= (and b!272905 res!124551) b!272906))

(declare-fun m!347535 () Bool)

(assert (=> b!272904 m!347535))

(declare-fun m!347537 () Bool)

(assert (=> d!79911 m!347537))

(assert (=> d!79911 m!344295))

(declare-fun m!347539 () Bool)

(assert (=> d!79911 m!347539))

(declare-fun m!347541 () Bool)

(assert (=> d!79911 m!347541))

(declare-fun m!347543 () Bool)

(assert (=> b!272905 m!347543))

(assert (=> b!272905 m!344295))

(declare-fun m!347545 () Bool)

(assert (=> b!272905 m!347545))

(declare-fun m!347547 () Bool)

(assert (=> b!272905 m!347547))

(assert (=> b!271552 d!79911))

(declare-fun bs!30564 () Bool)

(declare-fun b!272911 () Bool)

(assert (= bs!30564 (and b!272911 b!272611)))

(declare-fun lambda!9260 () Int)

(assert (=> bs!30564 (= lambda!9260 lambda!9240)))

(declare-fun bs!30565 () Bool)

(assert (= bs!30565 (and b!272911 b!271373)))

(assert (=> bs!30565 (= lambda!9260 lambda!9192)))

(declare-fun bs!30566 () Bool)

(assert (= bs!30566 (and b!272911 b!272023)))

(assert (=> bs!30566 (= lambda!9260 lambda!9211)))

(declare-fun bs!30567 () Bool)

(assert (= bs!30567 (and b!272911 b!272077)))

(assert (=> bs!30567 (= lambda!9260 lambda!9212)))

(declare-fun bs!30568 () Bool)

(assert (= bs!30568 (and b!272911 b!271552)))

(assert (=> bs!30568 (= lambda!9260 lambda!9204)))

(declare-fun bs!30569 () Bool)

(assert (= bs!30569 (and b!272911 b!272665)))

(assert (=> bs!30569 (= lambda!9260 lambda!9242)))

(declare-fun bs!30570 () Bool)

(assert (= bs!30570 (and b!272911 b!271466)))

(assert (=> bs!30570 (= lambda!9260 lambda!9200)))

(declare-fun bs!30571 () Bool)

(assert (= bs!30571 (and b!272911 b!271612)))

(assert (=> bs!30571 (= lambda!9260 lambda!9206)))

(declare-fun bs!30572 () Bool)

(assert (= bs!30572 (and b!272911 d!79155)))

(assert (=> bs!30572 (not (= lambda!9260 lambda!9205))))

(declare-fun bs!30573 () Bool)

(assert (= bs!30573 (and b!272911 d!79033)))

(assert (=> bs!30573 (= lambda!9260 lambda!9183)))

(declare-fun bs!30574 () Bool)

(assert (= bs!30574 (and b!272911 d!79043)))

(assert (=> bs!30574 (not (= lambda!9260 lambda!9191))))

(declare-fun bs!30575 () Bool)

(assert (= bs!30575 (and b!272911 d!79309)))

(assert (=> bs!30575 (not (= lambda!9260 lambda!9210))))

(declare-fun bs!30576 () Bool)

(assert (= bs!30576 (and b!272911 b!271212)))

(assert (=> bs!30576 (not (= lambda!9260 lambda!9171))))

(declare-fun bs!30577 () Bool)

(assert (= bs!30577 (and b!272911 d!79741)))

(assert (=> bs!30577 (not (= lambda!9260 lambda!9241))))

(declare-fun bs!30578 () Bool)

(assert (= bs!30578 (and b!272911 d!79791)))

(assert (=> bs!30578 (= lambda!9260 lambda!9245)))

(declare-fun bs!30579 () Bool)

(assert (= bs!30579 (and b!272911 b!271207)))

(assert (=> bs!30579 (= lambda!9260 lambda!9172)))

(declare-fun b!272917 () Bool)

(declare-fun e!169538 () Bool)

(assert (=> b!272917 (= e!169538 true)))

(declare-fun b!272916 () Bool)

(declare-fun e!169537 () Bool)

(assert (=> b!272916 (= e!169537 e!169538)))

(declare-fun b!272915 () Bool)

(declare-fun e!169536 () Bool)

(assert (=> b!272915 (= e!169536 e!169537)))

(assert (=> b!272911 e!169536))

(assert (= b!272916 b!272917))

(assert (= b!272915 b!272916))

(assert (= (and b!272911 ((_ is Cons!3829) rules!1920)) b!272915))

(assert (=> b!272917 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9260))))

(assert (=> b!272917 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 rules!1920)))) (dynLambda!1968 order!2955 lambda!9260))))

(assert (=> b!272911 true))

(declare-fun b!272907 () Bool)

(declare-fun e!169533 () List!3838)

(declare-fun call!14967 () List!3838)

(declare-fun lt!112922 () List!3838)

(assert (=> b!272907 (= e!169533 (++!1002 call!14967 lt!112922))))

(declare-fun b!272908 () Bool)

(declare-fun e!169535 () List!3838)

(assert (=> b!272908 (= e!169535 Nil!3828)))

(declare-fun d!79913 () Bool)

(declare-fun c!51805 () Bool)

(assert (=> d!79913 (= c!51805 ((_ is Cons!3830) (t!38514 (t!38514 tokens!465))))))

(assert (=> d!79913 (= (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (t!38514 (t!38514 tokens!465)) separatorToken!170) e!169535)))

(declare-fun b!272909 () Bool)

(declare-fun e!169532 () List!3838)

(assert (=> b!272909 (= e!169532 call!14967)))

(declare-fun bm!14958 () Bool)

(declare-fun call!14964 () BalanceConc!2576)

(declare-fun call!14965 () BalanceConc!2576)

(assert (=> bm!14958 (= call!14964 call!14965)))

(declare-fun b!272910 () Bool)

(declare-fun c!51802 () Bool)

(declare-fun lt!112923 () Option!815)

(assert (=> b!272910 (= c!51802 (and ((_ is Some!814) lt!112923) (not (= (_1!2365 (v!14689 lt!112923)) (h!9227 (t!38514 (t!38514 tokens!465)))))))))

(assert (=> b!272910 (= e!169532 e!169533)))

(assert (=> b!272911 (= e!169535 e!169532)))

(declare-fun lt!112921 () Unit!4936)

(assert (=> b!272911 (= lt!112921 (forallContained!286 (t!38514 (t!38514 tokens!465)) lambda!9260 (h!9227 (t!38514 (t!38514 tokens!465)))))))

(assert (=> b!272911 (= lt!112922 (printWithSeparatorTokenWhenNeededList!300 thiss!17480 rules!1920 (t!38514 (t!38514 (t!38514 tokens!465))) separatorToken!170))))

(assert (=> b!272911 (= lt!112923 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 (t!38514 tokens!465))))) lt!112922)))))

(declare-fun c!51804 () Bool)

(assert (=> b!272911 (= c!51804 (and ((_ is Some!814) lt!112923) (= (_1!2365 (v!14689 lt!112923)) (h!9227 (t!38514 (t!38514 tokens!465))))))))

(declare-fun bm!14959 () Bool)

(declare-fun call!14966 () List!3838)

(declare-fun e!169534 () BalanceConc!2576)

(assert (=> bm!14959 (= call!14966 (list!1567 e!169534))))

(declare-fun c!51803 () Bool)

(assert (=> bm!14959 (= c!51803 c!51802)))

(declare-fun b!272912 () Bool)

(assert (=> b!272912 (= e!169534 call!14964)))

(declare-fun bm!14960 () Bool)

(assert (=> bm!14960 (= call!14965 (charsOf!376 (h!9227 (t!38514 (t!38514 tokens!465)))))))

(declare-fun b!272913 () Bool)

(assert (=> b!272913 (= e!169533 Nil!3828)))

(assert (=> b!272913 (= (print!342 thiss!17480 (singletonSeq!277 (h!9227 (t!38514 (t!38514 tokens!465))))) (printTailRec!305 thiss!17480 (singletonSeq!277 (h!9227 (t!38514 (t!38514 tokens!465)))) 0 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!112920 () Unit!4936)

(declare-fun Unit!4984 () Unit!4936)

(assert (=> b!272913 (= lt!112920 Unit!4984)))

(declare-fun lt!112919 () Unit!4936)

(assert (=> b!272913 (= lt!112919 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 call!14966 lt!112922))))

(assert (=> b!272913 false))

(declare-fun lt!112918 () Unit!4936)

(declare-fun Unit!4985 () Unit!4936)

(assert (=> b!272913 (= lt!112918 Unit!4985)))

(declare-fun call!14963 () List!3838)

(declare-fun bm!14961 () Bool)

(assert (=> bm!14961 (= call!14967 (++!1002 call!14963 (ite c!51804 lt!112922 call!14966)))))

(declare-fun bm!14962 () Bool)

(assert (=> bm!14962 (= call!14963 (list!1567 (ite c!51804 call!14965 call!14964)))))

(declare-fun b!272914 () Bool)

(assert (=> b!272914 (= e!169534 (charsOf!376 separatorToken!170))))

(assert (= (and d!79913 c!51805) b!272911))

(assert (= (and d!79913 (not c!51805)) b!272908))

(assert (= (and b!272911 c!51804) b!272909))

(assert (= (and b!272911 (not c!51804)) b!272910))

(assert (= (and b!272910 c!51802) b!272907))

(assert (= (and b!272910 (not c!51802)) b!272913))

(assert (= (or b!272907 b!272913) bm!14958))

(assert (= (or b!272907 b!272913) bm!14959))

(assert (= (and bm!14959 c!51803) b!272914))

(assert (= (and bm!14959 (not c!51803)) b!272912))

(assert (= (or b!272909 bm!14958) bm!14960))

(assert (= (or b!272909 b!272907) bm!14962))

(assert (= (or b!272909 b!272907) bm!14961))

(declare-fun m!347549 () Bool)

(assert (=> bm!14960 m!347549))

(declare-fun m!347551 () Bool)

(assert (=> b!272913 m!347551))

(assert (=> b!272913 m!347551))

(declare-fun m!347553 () Bool)

(assert (=> b!272913 m!347553))

(assert (=> b!272913 m!347551))

(declare-fun m!347555 () Bool)

(assert (=> b!272913 m!347555))

(declare-fun m!347557 () Bool)

(assert (=> b!272913 m!347557))

(declare-fun m!347559 () Bool)

(assert (=> b!272907 m!347559))

(declare-fun m!347561 () Bool)

(assert (=> bm!14961 m!347561))

(declare-fun m!347563 () Bool)

(assert (=> bm!14959 m!347563))

(declare-fun m!347565 () Bool)

(assert (=> bm!14962 m!347565))

(assert (=> b!272914 m!343747))

(declare-fun m!347567 () Bool)

(assert (=> b!272911 m!347567))

(declare-fun m!347569 () Bool)

(assert (=> b!272911 m!347569))

(declare-fun m!347571 () Bool)

(assert (=> b!272911 m!347571))

(declare-fun m!347573 () Bool)

(assert (=> b!272911 m!347573))

(assert (=> b!272911 m!347549))

(assert (=> b!272911 m!347571))

(declare-fun m!347575 () Bool)

(assert (=> b!272911 m!347575))

(assert (=> b!272911 m!347549))

(assert (=> b!272911 m!347569))

(assert (=> b!271552 d!79913))

(declare-fun d!79915 () Bool)

(declare-fun e!169546 () Bool)

(assert (=> d!79915 e!169546))

(declare-fun res!124560 () Bool)

(assert (=> d!79915 (=> res!124560 e!169546)))

(declare-fun lt!112928 () Option!815)

(assert (=> d!79915 (= res!124560 (isEmpty!2444 lt!112928))))

(declare-fun e!169547 () Option!815)

(assert (=> d!79915 (= lt!112928 e!169547)))

(declare-fun c!51806 () Bool)

(assert (=> d!79915 (= c!51806 (and ((_ is Cons!3829) rules!1920) ((_ is Nil!3829) (t!38513 rules!1920))))))

(declare-fun lt!112932 () Unit!4936)

(declare-fun lt!112931 () Unit!4936)

(assert (=> d!79915 (= lt!112932 lt!112931)))

(assert (=> d!79915 (isPrefix!399 (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972) (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972))))

(assert (=> d!79915 (= lt!112931 (lemmaIsPrefixRefl!209 (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972) (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972)))))

(assert (=> d!79915 (rulesValidInductive!204 thiss!17480 rules!1920)))

(assert (=> d!79915 (= (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972)) lt!112928)))

(declare-fun b!272924 () Bool)

(declare-fun res!124559 () Bool)

(declare-fun e!169545 () Bool)

(assert (=> b!272924 (=> (not res!124559) (not e!169545))))

(assert (=> b!272924 (= res!124559 (= (++!1002 (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112928)))) (_2!2365 (get!1271 lt!112928))) (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972)))))

(declare-fun b!272925 () Bool)

(declare-fun call!14968 () Option!815)

(assert (=> b!272925 (= e!169547 call!14968)))

(declare-fun b!272926 () Bool)

(assert (=> b!272926 (= e!169545 (contains!725 rules!1920 (rule!1316 (_1!2365 (get!1271 lt!112928)))))))

(declare-fun b!272927 () Bool)

(assert (=> b!272927 (= e!169546 e!169545)))

(declare-fun res!124564 () Bool)

(assert (=> b!272927 (=> (not res!124564) (not e!169545))))

(assert (=> b!272927 (= res!124564 (isDefined!658 lt!112928))))

(declare-fun b!272928 () Bool)

(declare-fun res!124561 () Bool)

(assert (=> b!272928 (=> (not res!124561) (not e!169545))))

(assert (=> b!272928 (= res!124561 (= (value!25149 (_1!2365 (get!1271 lt!112928))) (apply!777 (transformation!731 (rule!1316 (_1!2365 (get!1271 lt!112928)))) (seqFromList!829 (originalCharacters!774 (_1!2365 (get!1271 lt!112928)))))))))

(declare-fun b!272929 () Bool)

(declare-fun res!124562 () Bool)

(assert (=> b!272929 (=> (not res!124562) (not e!169545))))

(assert (=> b!272929 (= res!124562 (= (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112928)))) (originalCharacters!774 (_1!2365 (get!1271 lt!112928)))))))

(declare-fun b!272930 () Bool)

(declare-fun res!124565 () Bool)

(assert (=> b!272930 (=> (not res!124565) (not e!169545))))

(assert (=> b!272930 (= res!124565 (< (size!3053 (_2!2365 (get!1271 lt!112928))) (size!3053 (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972))))))

(declare-fun b!272931 () Bool)

(declare-fun res!124563 () Bool)

(assert (=> b!272931 (=> (not res!124563) (not e!169545))))

(assert (=> b!272931 (= res!124563 (matchR!277 (regex!731 (rule!1316 (_1!2365 (get!1271 lt!112928)))) (list!1567 (charsOf!376 (_1!2365 (get!1271 lt!112928))))))))

(declare-fun b!272932 () Bool)

(declare-fun lt!112930 () Option!815)

(declare-fun lt!112929 () Option!815)

(assert (=> b!272932 (= e!169547 (ite (and ((_ is None!814) lt!112930) ((_ is None!814) lt!112929)) None!814 (ite ((_ is None!814) lt!112929) lt!112930 (ite ((_ is None!814) lt!112930) lt!112929 (ite (>= (size!3051 (_1!2365 (v!14689 lt!112930))) (size!3051 (_1!2365 (v!14689 lt!112929)))) lt!112930 lt!112929)))))))

(assert (=> b!272932 (= lt!112930 call!14968)))

(assert (=> b!272932 (= lt!112929 (maxPrefix!335 thiss!17480 (t!38513 rules!1920) (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972)))))

(declare-fun bm!14963 () Bool)

(assert (=> bm!14963 (= call!14968 (maxPrefixOneRule!143 thiss!17480 (h!9226 rules!1920) (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) lt!111972)))))

(assert (= (and d!79915 c!51806) b!272925))

(assert (= (and d!79915 (not c!51806)) b!272932))

(assert (= (or b!272925 b!272932) bm!14963))

(assert (= (and d!79915 (not res!124560)) b!272927))

(assert (= (and b!272927 res!124564) b!272929))

(assert (= (and b!272929 res!124562) b!272930))

(assert (= (and b!272930 res!124565) b!272924))

(assert (= (and b!272924 res!124559) b!272928))

(assert (= (and b!272928 res!124561) b!272931))

(assert (= (and b!272931 res!124563) b!272926))

(declare-fun m!347577 () Bool)

(assert (=> b!272924 m!347577))

(declare-fun m!347579 () Bool)

(assert (=> b!272924 m!347579))

(assert (=> b!272924 m!347579))

(declare-fun m!347581 () Bool)

(assert (=> b!272924 m!347581))

(assert (=> b!272924 m!347581))

(declare-fun m!347583 () Bool)

(assert (=> b!272924 m!347583))

(assert (=> b!272932 m!344297))

(declare-fun m!347585 () Bool)

(assert (=> b!272932 m!347585))

(declare-fun m!347587 () Bool)

(assert (=> d!79915 m!347587))

(assert (=> d!79915 m!344297))

(assert (=> d!79915 m!344297))

(declare-fun m!347589 () Bool)

(assert (=> d!79915 m!347589))

(assert (=> d!79915 m!344297))

(assert (=> d!79915 m!344297))

(declare-fun m!347591 () Bool)

(assert (=> d!79915 m!347591))

(assert (=> d!79915 m!344675))

(assert (=> b!272929 m!347577))

(assert (=> b!272929 m!347579))

(assert (=> b!272929 m!347579))

(assert (=> b!272929 m!347581))

(assert (=> b!272930 m!347577))

(declare-fun m!347593 () Bool)

(assert (=> b!272930 m!347593))

(assert (=> b!272930 m!344297))

(declare-fun m!347595 () Bool)

(assert (=> b!272930 m!347595))

(declare-fun m!347597 () Bool)

(assert (=> b!272927 m!347597))

(assert (=> b!272931 m!347577))

(assert (=> b!272931 m!347579))

(assert (=> b!272931 m!347579))

(assert (=> b!272931 m!347581))

(assert (=> b!272931 m!347581))

(declare-fun m!347599 () Bool)

(assert (=> b!272931 m!347599))

(assert (=> b!272926 m!347577))

(declare-fun m!347601 () Bool)

(assert (=> b!272926 m!347601))

(assert (=> bm!14963 m!344297))

(declare-fun m!347603 () Bool)

(assert (=> bm!14963 m!347603))

(assert (=> b!272928 m!347577))

(declare-fun m!347605 () Bool)

(assert (=> b!272928 m!347605))

(assert (=> b!272928 m!347605))

(declare-fun m!347607 () Bool)

(assert (=> b!272928 m!347607))

(assert (=> b!271552 d!79915))

(declare-fun d!79917 () Bool)

(assert (=> d!79917 (dynLambda!1973 lambda!9204 (h!9227 (t!38514 tokens!465)))))

(declare-fun lt!112933 () Unit!4936)

(assert (=> d!79917 (= lt!112933 (choose!2461 (t!38514 tokens!465) lambda!9204 (h!9227 (t!38514 tokens!465))))))

(declare-fun e!169548 () Bool)

(assert (=> d!79917 e!169548))

(declare-fun res!124566 () Bool)

(assert (=> d!79917 (=> (not res!124566) (not e!169548))))

(assert (=> d!79917 (= res!124566 (forall!964 (t!38514 tokens!465) lambda!9204))))

(assert (=> d!79917 (= (forallContained!286 (t!38514 tokens!465) lambda!9204 (h!9227 (t!38514 tokens!465))) lt!112933)))

(declare-fun b!272933 () Bool)

(assert (=> b!272933 (= e!169548 (contains!723 (t!38514 tokens!465) (h!9227 (t!38514 tokens!465))))))

(assert (= (and d!79917 res!124566) b!272933))

(declare-fun b_lambda!8721 () Bool)

(assert (=> (not b_lambda!8721) (not d!79917)))

(declare-fun m!347609 () Bool)

(assert (=> d!79917 m!347609))

(declare-fun m!347611 () Bool)

(assert (=> d!79917 m!347611))

(declare-fun m!347613 () Bool)

(assert (=> d!79917 m!347613))

(declare-fun m!347615 () Bool)

(assert (=> b!272933 m!347615))

(assert (=> b!271552 d!79917))

(declare-fun d!79919 () Bool)

(assert (=> d!79919 (= (list!1567 (charsOf!376 (h!9227 (t!38514 tokens!465)))) (list!1571 (c!51394 (charsOf!376 (h!9227 (t!38514 tokens!465))))))))

(declare-fun bs!30580 () Bool)

(assert (= bs!30580 d!79919))

(declare-fun m!347617 () Bool)

(assert (=> bs!30580 m!347617))

(assert (=> b!271552 d!79919))

(assert (=> b!271552 d!79637))

(declare-fun d!79921 () Bool)

(declare-fun c!51807 () Bool)

(assert (=> d!79921 (= c!51807 ((_ is Nil!3828) lt!111991))))

(declare-fun e!169549 () (InoxSet C!2832))

(assert (=> d!79921 (= (content!551 lt!111991) e!169549)))

(declare-fun b!272934 () Bool)

(assert (=> b!272934 (= e!169549 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!272935 () Bool)

(assert (=> b!272935 (= e!169549 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!111991) true) (content!551 (t!38512 lt!111991))))))

(assert (= (and d!79921 c!51807) b!272934))

(assert (= (and d!79921 (not c!51807)) b!272935))

(declare-fun m!347619 () Bool)

(assert (=> b!272935 m!347619))

(declare-fun m!347621 () Bool)

(assert (=> b!272935 m!347621))

(assert (=> d!79151 d!79921))

(assert (=> d!79151 d!79355))

(assert (=> d!79151 d!79635))

(declare-fun d!79923 () Bool)

(assert (=> d!79923 (= (isEmpty!2440 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))) (not ((_ is Some!812) (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))

(assert (=> d!79215 d!79923))

(assert (=> b!271763 d!79781))

(assert (=> b!271763 d!79785))

(assert (=> b!271763 d!79783))

(declare-fun d!79925 () Bool)

(assert (=> d!79925 (= (list!1567 (_2!2363 (get!1270 lt!112086))) (list!1571 (c!51394 (_2!2363 (get!1270 lt!112086)))))))

(declare-fun bs!30581 () Bool)

(assert (= bs!30581 d!79925))

(declare-fun m!347623 () Bool)

(assert (=> bs!30581 m!347623))

(assert (=> b!271763 d!79925))

(assert (=> b!271763 d!79787))

(declare-fun lt!112944 () BalanceConc!2576)

(declare-fun e!169555 () Bool)

(declare-fun b!272947 () Bool)

(assert (=> b!272947 (= e!169555 (= (list!1567 lt!112944) (++!1002 (list!1567 e!168578) (list!1567 (ite c!51437 lt!111891 call!14854)))))))

(declare-fun b!272945 () Bool)

(declare-fun res!124573 () Bool)

(assert (=> b!272945 (=> (not res!124573) (not e!169555))))

(assert (=> b!272945 (= res!124573 (<= (height!158 (++!1006 (c!51394 e!168578) (c!51394 (ite c!51437 lt!111891 call!14854)))) (+ (max!0 (height!158 (c!51394 e!168578)) (height!158 (c!51394 (ite c!51437 lt!111891 call!14854)))) 1)))))

(declare-fun b!272944 () Bool)

(declare-fun res!124572 () Bool)

(assert (=> b!272944 (=> (not res!124572) (not e!169555))))

(assert (=> b!272944 (= res!124572 (isBalanced!355 (++!1006 (c!51394 e!168578) (c!51394 (ite c!51437 lt!111891 call!14854)))))))

(declare-fun d!79927 () Bool)

(assert (=> d!79927 e!169555))

(declare-fun res!124574 () Bool)

(assert (=> d!79927 (=> (not res!124574) (not e!169555))))

(assert (=> d!79927 (= res!124574 (appendAssocInst!65 (c!51394 e!168578) (c!51394 (ite c!51437 lt!111891 call!14854))))))

(assert (=> d!79927 (= lt!112944 (BalanceConc!2577 (++!1006 (c!51394 e!168578) (c!51394 (ite c!51437 lt!111891 call!14854)))))))

(assert (=> d!79927 (= (++!1004 e!168578 (ite c!51437 lt!111891 call!14854)) lt!112944)))

(declare-fun b!272946 () Bool)

(declare-fun res!124571 () Bool)

(assert (=> b!272946 (=> (not res!124571) (not e!169555))))

(assert (=> b!272946 (= res!124571 (>= (height!158 (++!1006 (c!51394 e!168578) (c!51394 (ite c!51437 lt!111891 call!14854)))) (max!0 (height!158 (c!51394 e!168578)) (height!158 (c!51394 (ite c!51437 lt!111891 call!14854))))))))

(assert (= (and d!79927 res!124574) b!272944))

(assert (= (and b!272944 res!124572) b!272945))

(assert (= (and b!272945 res!124573) b!272946))

(assert (= (and b!272946 res!124571) b!272947))

(declare-fun m!347625 () Bool)

(assert (=> b!272944 m!347625))

(assert (=> b!272944 m!347625))

(declare-fun m!347627 () Bool)

(assert (=> b!272944 m!347627))

(declare-fun m!347629 () Bool)

(assert (=> d!79927 m!347629))

(assert (=> d!79927 m!347625))

(assert (=> b!272945 m!347625))

(declare-fun m!347631 () Bool)

(assert (=> b!272945 m!347631))

(assert (=> b!272945 m!347625))

(declare-fun m!347633 () Bool)

(assert (=> b!272945 m!347633))

(declare-fun m!347635 () Bool)

(assert (=> b!272945 m!347635))

(assert (=> b!272945 m!347635))

(assert (=> b!272945 m!347631))

(declare-fun m!347637 () Bool)

(assert (=> b!272945 m!347637))

(assert (=> b!272946 m!347625))

(assert (=> b!272946 m!347631))

(assert (=> b!272946 m!347625))

(assert (=> b!272946 m!347633))

(assert (=> b!272946 m!347635))

(assert (=> b!272946 m!347635))

(assert (=> b!272946 m!347631))

(assert (=> b!272946 m!347637))

(declare-fun m!347639 () Bool)

(assert (=> b!272947 m!347639))

(declare-fun m!347641 () Bool)

(assert (=> b!272947 m!347641))

(declare-fun m!347643 () Bool)

(assert (=> b!272947 m!347643))

(assert (=> b!272947 m!347641))

(assert (=> b!272947 m!347643))

(declare-fun m!347645 () Bool)

(assert (=> b!272947 m!347645))

(assert (=> bm!14845 d!79927))

(declare-fun d!79929 () Bool)

(declare-fun lt!112945 () Bool)

(assert (=> d!79929 (= lt!112945 (isEmpty!2435 (list!1570 (_1!2362 lt!111967))))))

(assert (=> d!79929 (= lt!112945 (isEmpty!2436 (c!51396 (_1!2362 lt!111967))))))

(assert (=> d!79929 (= (isEmpty!2430 (_1!2362 lt!111967)) lt!112945)))

(declare-fun bs!30584 () Bool)

(assert (= bs!30584 d!79929))

(assert (=> bs!30584 m!344257))

(assert (=> bs!30584 m!344257))

(declare-fun m!347647 () Bool)

(assert (=> bs!30584 m!347647))

(declare-fun m!347649 () Bool)

(assert (=> bs!30584 m!347649))

(assert (=> b!271547 d!79929))

(assert (=> bm!14883 d!79321))

(declare-fun d!79931 () Bool)

(assert (=> d!79931 (= (list!1567 (ite c!51462 call!14877 call!14876)) (list!1571 (c!51394 (ite c!51462 call!14877 call!14876))))))

(declare-fun bs!30585 () Bool)

(assert (= bs!30585 d!79931))

(declare-fun m!347651 () Bool)

(assert (=> bs!30585 m!347651))

(assert (=> bm!14874 d!79931))

(assert (=> b!271661 d!79601))

(declare-fun lt!112946 () List!3838)

(declare-fun e!169562 () Bool)

(declare-fun b!272957 () Bool)

(assert (=> b!272957 (= e!169562 (or (not (= lt!111972 Nil!3828)) (= lt!112946 call!14884)))))

(declare-fun b!272955 () Bool)

(declare-fun e!169563 () List!3838)

(assert (=> b!272955 (= e!169563 (Cons!3828 (h!9225 call!14884) (++!1002 (t!38512 call!14884) lt!111972)))))

(declare-fun d!79933 () Bool)

(assert (=> d!79933 e!169562))

(declare-fun res!124576 () Bool)

(assert (=> d!79933 (=> (not res!124576) (not e!169562))))

(assert (=> d!79933 (= res!124576 (= (content!551 lt!112946) ((_ map or) (content!551 call!14884) (content!551 lt!111972))))))

(assert (=> d!79933 (= lt!112946 e!169563)))

(declare-fun c!51809 () Bool)

(assert (=> d!79933 (= c!51809 ((_ is Nil!3828) call!14884))))

(assert (=> d!79933 (= (++!1002 call!14884 lt!111972) lt!112946)))

(declare-fun b!272956 () Bool)

(declare-fun res!124575 () Bool)

(assert (=> b!272956 (=> (not res!124575) (not e!169562))))

(assert (=> b!272956 (= res!124575 (= (size!3053 lt!112946) (+ (size!3053 call!14884) (size!3053 lt!111972))))))

(declare-fun b!272954 () Bool)

(assert (=> b!272954 (= e!169563 lt!111972)))

(assert (= (and d!79933 c!51809) b!272954))

(assert (= (and d!79933 (not c!51809)) b!272955))

(assert (= (and d!79933 res!124576) b!272956))

(assert (= (and b!272956 res!124575) b!272957))

(declare-fun m!347653 () Bool)

(assert (=> b!272955 m!347653))

(declare-fun m!347655 () Bool)

(assert (=> d!79933 m!347655))

(declare-fun m!347657 () Bool)

(assert (=> d!79933 m!347657))

(assert (=> d!79933 m!347541))

(declare-fun m!347659 () Bool)

(assert (=> b!272956 m!347659))

(declare-fun m!347661 () Bool)

(assert (=> b!272956 m!347661))

(assert (=> b!272956 m!347547))

(assert (=> b!271548 d!79933))

(declare-fun d!79935 () Bool)

(declare-fun e!169564 () Bool)

(assert (=> d!79935 e!169564))

(declare-fun res!124577 () Bool)

(assert (=> d!79935 (=> (not res!124577) (not e!169564))))

(declare-fun lt!112947 () BalanceConc!2576)

(assert (=> d!79935 (= res!124577 (= (list!1567 lt!112947) lt!111752))))

(assert (=> d!79935 (= lt!112947 (BalanceConc!2577 (fromList!180 lt!111752)))))

(assert (=> d!79935 (= (fromListB!321 lt!111752) lt!112947)))

(declare-fun b!272958 () Bool)

(assert (=> b!272958 (= e!169564 (isBalanced!355 (fromList!180 lt!111752)))))

(assert (= (and d!79935 res!124577) b!272958))

(declare-fun m!347663 () Bool)

(assert (=> d!79935 m!347663))

(declare-fun m!347665 () Bool)

(assert (=> d!79935 m!347665))

(assert (=> b!272958 m!347665))

(assert (=> b!272958 m!347665))

(declare-fun m!347667 () Bool)

(assert (=> b!272958 m!347667))

(assert (=> d!79213 d!79935))

(assert (=> b!271374 d!79335))

(declare-fun d!79937 () Bool)

(declare-fun lt!112948 () Token!1206)

(assert (=> d!79937 (= lt!112948 (apply!774 (list!1570 (_1!2362 lt!112010)) 0))))

(assert (=> d!79937 (= lt!112948 (apply!776 (c!51396 (_1!2362 lt!112010)) 0))))

(declare-fun e!169565 () Bool)

(assert (=> d!79937 e!169565))

(declare-fun res!124578 () Bool)

(assert (=> d!79937 (=> (not res!124578) (not e!169565))))

(assert (=> d!79937 (= res!124578 (<= 0 0))))

(assert (=> d!79937 (= (apply!773 (_1!2362 lt!112010) 0) lt!112948)))

(declare-fun b!272959 () Bool)

(assert (=> b!272959 (= e!169565 (< 0 (size!3055 (_1!2362 lt!112010))))))

(assert (= (and d!79937 res!124578) b!272959))

(assert (=> d!79937 m!347527))

(assert (=> d!79937 m!347527))

(declare-fun m!347669 () Bool)

(assert (=> d!79937 m!347669))

(declare-fun m!347671 () Bool)

(assert (=> d!79937 m!347671))

(assert (=> b!272959 m!344485))

(assert (=> b!271623 d!79937))

(declare-fun d!79939 () Bool)

(assert (=> d!79939 (= (list!1570 lt!112065) (list!1574 (c!51396 lt!112065)))))

(declare-fun bs!30586 () Bool)

(assert (= bs!30586 d!79939))

(declare-fun m!347673 () Bool)

(assert (=> bs!30586 m!347673))

(assert (=> d!79203 d!79939))

(declare-fun d!79941 () Bool)

(declare-fun e!169572 () Bool)

(assert (=> d!79941 e!169572))

(declare-fun res!124581 () Bool)

(assert (=> d!79941 (=> (not res!124581) (not e!169572))))

(declare-fun lt!112958 () BalanceConc!2578)

(assert (=> d!79941 (= res!124581 (= (list!1570 lt!112958) (Cons!3830 (h!9227 tokens!465) Nil!3830)))))

(declare-fun choose!2471 (Token!1206) BalanceConc!2578)

(assert (=> d!79941 (= lt!112958 (choose!2471 (h!9227 tokens!465)))))

(assert (=> d!79941 (= (singleton!114 (h!9227 tokens!465)) lt!112958)))

(declare-fun b!272970 () Bool)

(assert (=> b!272970 (= e!169572 (isBalanced!353 (c!51396 lt!112958)))))

(assert (= (and d!79941 res!124581) b!272970))

(declare-fun m!347723 () Bool)

(assert (=> d!79941 m!347723))

(declare-fun m!347725 () Bool)

(assert (=> d!79941 m!347725))

(declare-fun m!347727 () Bool)

(assert (=> b!272970 m!347727))

(assert (=> d!79203 d!79941))

(declare-fun d!79947 () Bool)

(declare-fun lt!112961 () Bool)

(assert (=> d!79947 (= lt!112961 (select (content!553 tokens!465) (h!9227 tokens!465)))))

(declare-fun e!169580 () Bool)

(assert (=> d!79947 (= lt!112961 e!169580)))

(declare-fun res!124586 () Bool)

(assert (=> d!79947 (=> (not res!124586) (not e!169580))))

(assert (=> d!79947 (= res!124586 ((_ is Cons!3830) tokens!465))))

(assert (=> d!79947 (= (contains!723 tokens!465 (h!9227 tokens!465)) lt!112961)))

(declare-fun b!272978 () Bool)

(declare-fun e!169581 () Bool)

(assert (=> b!272978 (= e!169580 e!169581)))

(declare-fun res!124587 () Bool)

(assert (=> b!272978 (=> res!124587 e!169581)))

(assert (=> b!272978 (= res!124587 (= (h!9227 tokens!465) (h!9227 tokens!465)))))

(declare-fun b!272979 () Bool)

(assert (=> b!272979 (= e!169581 (contains!723 (t!38514 tokens!465) (h!9227 tokens!465)))))

(assert (= (and d!79947 res!124586) b!272978))

(assert (= (and b!272978 (not res!124587)) b!272979))

(declare-fun m!347743 () Bool)

(assert (=> d!79947 m!347743))

(declare-fun m!347747 () Bool)

(assert (=> d!79947 m!347747))

(declare-fun m!347751 () Bool)

(assert (=> b!272979 m!347751))

(assert (=> b!271768 d!79947))

(assert (=> d!79089 d!79883))

(declare-fun d!79949 () Bool)

(assert (=> d!79949 (= (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170))))) (list!1574 (c!51396 (_1!2362 (lex!409 thiss!17480 rules!1920 (print!342 thiss!17480 (singletonSeq!277 separatorToken!170)))))))))

(declare-fun bs!30601 () Bool)

(assert (= bs!30601 d!79949))

(declare-fun m!347763 () Bool)

(assert (=> bs!30601 m!347763))

(assert (=> d!79089 d!79949))

(assert (=> d!79089 d!79879))

(declare-fun d!79953 () Bool)

(assert (=> d!79953 (= (list!1570 (singletonSeq!277 separatorToken!170)) (list!1574 (c!51396 (singletonSeq!277 separatorToken!170))))))

(declare-fun bs!30603 () Bool)

(assert (= bs!30603 d!79953))

(declare-fun m!347767 () Bool)

(assert (=> bs!30603 m!347767))

(assert (=> d!79089 d!79953))

(assert (=> d!79089 d!79881))

(assert (=> d!79089 d!79029))

(declare-fun d!79957 () Bool)

(declare-fun lt!112962 () Int)

(assert (=> d!79957 (= lt!112962 (size!3060 (list!1570 (_1!2362 lt!111960))))))

(assert (=> d!79957 (= lt!112962 (size!3061 (c!51396 (_1!2362 lt!111960))))))

(assert (=> d!79957 (= (size!3055 (_1!2362 lt!111960)) lt!112962)))

(declare-fun bs!30604 () Bool)

(assert (= bs!30604 d!79957))

(assert (=> bs!30604 m!345197))

(assert (=> bs!30604 m!345197))

(declare-fun m!347771 () Bool)

(assert (=> bs!30604 m!347771))

(declare-fun m!347773 () Bool)

(assert (=> bs!30604 m!347773))

(assert (=> d!79089 d!79957))

(declare-fun d!79959 () Bool)

(declare-fun lt!112963 () Int)

(assert (=> d!79959 (>= lt!112963 0)))

(declare-fun e!169582 () Int)

(assert (=> d!79959 (= lt!112963 e!169582)))

(declare-fun c!51814 () Bool)

(assert (=> d!79959 (= c!51814 ((_ is Nil!3828) lt!112090))))

(assert (=> d!79959 (= (size!3053 lt!112090) lt!112963)))

(declare-fun b!272980 () Bool)

(assert (=> b!272980 (= e!169582 0)))

(declare-fun b!272981 () Bool)

(assert (=> b!272981 (= e!169582 (+ 1 (size!3053 (t!38512 lt!112090))))))

(assert (= (and d!79959 c!51814) b!272980))

(assert (= (and d!79959 (not c!51814)) b!272981))

(declare-fun m!347777 () Bool)

(assert (=> b!272981 m!347777))

(assert (=> b!271771 d!79959))

(assert (=> b!271771 d!79521))

(assert (=> b!271771 d!79345))

(declare-fun d!79965 () Bool)

(assert (=> d!79965 (= (inv!17 (value!25149 separatorToken!170)) (= (charsToBigInt!1 (text!5719 (value!25149 separatorToken!170))) (value!25141 (value!25149 separatorToken!170))))))

(declare-fun bs!30607 () Bool)

(assert (= bs!30607 d!79965))

(declare-fun m!347779 () Bool)

(assert (=> bs!30607 m!347779))

(assert (=> b!271626 d!79965))

(declare-fun d!79967 () Bool)

(assert (=> d!79967 (= (isEmpty!2432 (originalCharacters!774 (h!9227 tokens!465))) ((_ is Nil!3828) (originalCharacters!774 (h!9227 tokens!465))))))

(assert (=> d!79031 d!79967))

(declare-fun b!272988 () Bool)

(declare-fun e!169585 () Bool)

(declare-fun lt!112964 () BalanceConc!2576)

(assert (=> b!272988 (= e!169585 (= (list!1567 lt!112964) (++!1002 (list!1567 call!14886) (list!1567 lt!112002))))))

(declare-fun b!272986 () Bool)

(declare-fun res!124591 () Bool)

(assert (=> b!272986 (=> (not res!124591) (not e!169585))))

(assert (=> b!272986 (= res!124591 (<= (height!158 (++!1006 (c!51394 call!14886) (c!51394 lt!112002))) (+ (max!0 (height!158 (c!51394 call!14886)) (height!158 (c!51394 lt!112002))) 1)))))

(declare-fun b!272985 () Bool)

(declare-fun res!124590 () Bool)

(assert (=> b!272985 (=> (not res!124590) (not e!169585))))

(assert (=> b!272985 (= res!124590 (isBalanced!355 (++!1006 (c!51394 call!14886) (c!51394 lt!112002))))))

(declare-fun d!79969 () Bool)

(assert (=> d!79969 e!169585))

(declare-fun res!124592 () Bool)

(assert (=> d!79969 (=> (not res!124592) (not e!169585))))

(assert (=> d!79969 (= res!124592 (appendAssocInst!65 (c!51394 call!14886) (c!51394 lt!112002)))))

(assert (=> d!79969 (= lt!112964 (BalanceConc!2577 (++!1006 (c!51394 call!14886) (c!51394 lt!112002))))))

(assert (=> d!79969 (= (++!1004 call!14886 lt!112002) lt!112964)))

(declare-fun b!272987 () Bool)

(declare-fun res!124589 () Bool)

(assert (=> b!272987 (=> (not res!124589) (not e!169585))))

(assert (=> b!272987 (= res!124589 (>= (height!158 (++!1006 (c!51394 call!14886) (c!51394 lt!112002))) (max!0 (height!158 (c!51394 call!14886)) (height!158 (c!51394 lt!112002)))))))

(assert (= (and d!79969 res!124592) b!272985))

(assert (= (and b!272985 res!124590) b!272986))

(assert (= (and b!272986 res!124591) b!272987))

(assert (= (and b!272987 res!124589) b!272988))

(declare-fun m!347785 () Bool)

(assert (=> b!272985 m!347785))

(assert (=> b!272985 m!347785))

(declare-fun m!347787 () Bool)

(assert (=> b!272985 m!347787))

(declare-fun m!347789 () Bool)

(assert (=> d!79969 m!347789))

(assert (=> d!79969 m!347785))

(assert (=> b!272986 m!347785))

(assert (=> b!272986 m!344993))

(assert (=> b!272986 m!347785))

(declare-fun m!347791 () Bool)

(assert (=> b!272986 m!347791))

(declare-fun m!347793 () Bool)

(assert (=> b!272986 m!347793))

(assert (=> b!272986 m!347793))

(assert (=> b!272986 m!344993))

(declare-fun m!347795 () Bool)

(assert (=> b!272986 m!347795))

(assert (=> b!272987 m!347785))

(assert (=> b!272987 m!344993))

(assert (=> b!272987 m!347785))

(assert (=> b!272987 m!347791))

(assert (=> b!272987 m!347793))

(assert (=> b!272987 m!347793))

(assert (=> b!272987 m!344993))

(assert (=> b!272987 m!347795))

(declare-fun m!347797 () Bool)

(assert (=> b!272988 m!347797))

(declare-fun m!347799 () Bool)

(assert (=> b!272988 m!347799))

(assert (=> b!272988 m!344451))

(assert (=> b!272988 m!347799))

(assert (=> b!272988 m!344451))

(declare-fun m!347803 () Bool)

(assert (=> b!272988 m!347803))

(assert (=> b!271609 d!79969))

(assert (=> b!271759 d!79359))

(declare-fun d!79975 () Bool)

(assert (=> d!79975 (= (list!1567 lt!111982) (list!1571 (c!51394 lt!111982)))))

(declare-fun bs!30612 () Bool)

(assert (= bs!30612 d!79975))

(declare-fun m!347807 () Bool)

(assert (=> bs!30612 m!347807))

(assert (=> d!79125 d!79975))

(declare-fun e!169587 () List!3838)

(declare-fun b!272991 () Bool)

(assert (=> b!272991 (= e!169587 (list!1575 (xs!3883 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!272992 () Bool)

(assert (=> b!272992 (= e!169587 (++!1002 (list!1571 (left!3152 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0)))) (list!1571 (right!3482 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0))))))))

(declare-fun b!272989 () Bool)

(declare-fun e!169586 () List!3838)

(assert (=> b!272989 (= e!169586 Nil!3828)))

(declare-fun b!272990 () Bool)

(assert (=> b!272990 (= e!169586 e!169587)))

(declare-fun c!51817 () Bool)

(assert (=> b!272990 (= c!51817 ((_ is Leaf!1989) (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0))))))

(declare-fun d!79977 () Bool)

(declare-fun c!51816 () Bool)

(assert (=> d!79977 (= c!51816 ((_ is Empty!1284) (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0))))))

(assert (=> d!79977 (= (list!1571 (c!51394 (printWithSeparatorTokenWhenNeededRec!292 thiss!17480 rules!1920 (seqFromList!830 (t!38514 tokens!465)) separatorToken!170 0))) e!169586)))

(assert (= (and d!79977 c!51816) b!272989))

(assert (= (and d!79977 (not c!51816)) b!272990))

(assert (= (and b!272990 c!51817) b!272991))

(assert (= (and b!272990 (not c!51817)) b!272992))

(declare-fun m!347809 () Bool)

(assert (=> b!272991 m!347809))

(declare-fun m!347811 () Bool)

(assert (=> b!272992 m!347811))

(declare-fun m!347813 () Bool)

(assert (=> b!272992 m!347813))

(assert (=> b!272992 m!347811))

(assert (=> b!272992 m!347813))

(declare-fun m!347815 () Bool)

(assert (=> b!272992 m!347815))

(assert (=> d!79121 d!79977))

(assert (=> d!79159 d!79151))

(declare-fun e!169588 () Bool)

(declare-fun lt!112965 () List!3838)

(declare-fun b!272996 () Bool)

(assert (=> b!272996 (= e!169588 (or (not (= (++!1002 lt!111756 lt!111759) Nil!3828)) (= lt!112965 lt!111765)))))

(declare-fun e!169589 () List!3838)

(declare-fun b!272994 () Bool)

(assert (=> b!272994 (= e!169589 (Cons!3828 (h!9225 lt!111765) (++!1002 (t!38512 lt!111765) (++!1002 lt!111756 lt!111759))))))

(declare-fun d!79983 () Bool)

(assert (=> d!79983 e!169588))

(declare-fun res!124594 () Bool)

(assert (=> d!79983 (=> (not res!124594) (not e!169588))))

(assert (=> d!79983 (= res!124594 (= (content!551 lt!112965) ((_ map or) (content!551 lt!111765) (content!551 (++!1002 lt!111756 lt!111759)))))))

(assert (=> d!79983 (= lt!112965 e!169589)))

(declare-fun c!51818 () Bool)

(assert (=> d!79983 (= c!51818 ((_ is Nil!3828) lt!111765))))

(assert (=> d!79983 (= (++!1002 lt!111765 (++!1002 lt!111756 lt!111759)) lt!112965)))

(declare-fun b!272995 () Bool)

(declare-fun res!124593 () Bool)

(assert (=> b!272995 (=> (not res!124593) (not e!169588))))

(assert (=> b!272995 (= res!124593 (= (size!3053 lt!112965) (+ (size!3053 lt!111765) (size!3053 (++!1002 lt!111756 lt!111759)))))))

(declare-fun b!272993 () Bool)

(assert (=> b!272993 (= e!169589 (++!1002 lt!111756 lt!111759))))

(assert (= (and d!79983 c!51818) b!272993))

(assert (= (and d!79983 (not c!51818)) b!272994))

(assert (= (and d!79983 res!124594) b!272995))

(assert (= (and b!272995 res!124593) b!272996))

(assert (=> b!272994 m!343763))

(declare-fun m!347819 () Bool)

(assert (=> b!272994 m!347819))

(declare-fun m!347821 () Bool)

(assert (=> d!79983 m!347821))

(assert (=> d!79983 m!344395))

(assert (=> d!79983 m!343763))

(declare-fun m!347823 () Bool)

(assert (=> d!79983 m!347823))

(declare-fun m!347825 () Bool)

(assert (=> b!272995 m!347825))

(assert (=> b!272995 m!344399))

(assert (=> b!272995 m!343763))

(declare-fun m!347827 () Bool)

(assert (=> b!272995 m!347827))

(assert (=> d!79159 d!79983))

(declare-fun d!79987 () Bool)

(assert (=> d!79987 (= (++!1002 (++!1002 lt!111765 lt!111756) lt!111759) (++!1002 lt!111765 (++!1002 lt!111756 lt!111759)))))

(assert (=> d!79987 true))

(declare-fun _$52!752 () Unit!4936)

(assert (=> d!79987 (= (choose!2460 lt!111765 lt!111756 lt!111759) _$52!752)))

(declare-fun bs!30615 () Bool)

(assert (= bs!30615 d!79987))

(assert (=> bs!30615 m!343751))

(assert (=> bs!30615 m!343751))

(assert (=> bs!30615 m!343759))

(assert (=> bs!30615 m!343763))

(assert (=> bs!30615 m!343763))

(assert (=> bs!30615 m!344473))

(assert (=> d!79159 d!79987))

(assert (=> d!79159 d!79131))

(assert (=> d!79159 d!79141))

(declare-fun d!79991 () Bool)

(assert (=> d!79991 (= (list!1567 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))) (list!1571 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))))))

(declare-fun bs!30616 () Bool)

(assert (= bs!30616 d!79991))

(declare-fun m!347833 () Bool)

(assert (=> bs!30616 m!347833))

(assert (=> b!271233 d!79991))

(declare-fun b!273000 () Bool)

(declare-fun lt!112969 () BalanceConc!2576)

(declare-fun e!169590 () Bool)

(assert (=> b!273000 (= e!169590 (= (list!1567 lt!112969) (++!1002 (list!1567 e!168733) (list!1567 (ite c!51489 lt!112002 call!14889)))))))

(declare-fun b!272998 () Bool)

(declare-fun res!124597 () Bool)

(assert (=> b!272998 (=> (not res!124597) (not e!169590))))

(assert (=> b!272998 (= res!124597 (<= (height!158 (++!1006 (c!51394 e!168733) (c!51394 (ite c!51489 lt!112002 call!14889)))) (+ (max!0 (height!158 (c!51394 e!168733)) (height!158 (c!51394 (ite c!51489 lt!112002 call!14889)))) 1)))))

(declare-fun b!272997 () Bool)

(declare-fun res!124596 () Bool)

(assert (=> b!272997 (=> (not res!124596) (not e!169590))))

(assert (=> b!272997 (= res!124596 (isBalanced!355 (++!1006 (c!51394 e!168733) (c!51394 (ite c!51489 lt!112002 call!14889)))))))

(declare-fun d!79993 () Bool)

(assert (=> d!79993 e!169590))

(declare-fun res!124598 () Bool)

(assert (=> d!79993 (=> (not res!124598) (not e!169590))))

(assert (=> d!79993 (= res!124598 (appendAssocInst!65 (c!51394 e!168733) (c!51394 (ite c!51489 lt!112002 call!14889))))))

(assert (=> d!79993 (= lt!112969 (BalanceConc!2577 (++!1006 (c!51394 e!168733) (c!51394 (ite c!51489 lt!112002 call!14889)))))))

(assert (=> d!79993 (= (++!1004 e!168733 (ite c!51489 lt!112002 call!14889)) lt!112969)))

(declare-fun b!272999 () Bool)

(declare-fun res!124595 () Bool)

(assert (=> b!272999 (=> (not res!124595) (not e!169590))))

(assert (=> b!272999 (= res!124595 (>= (height!158 (++!1006 (c!51394 e!168733) (c!51394 (ite c!51489 lt!112002 call!14889)))) (max!0 (height!158 (c!51394 e!168733)) (height!158 (c!51394 (ite c!51489 lt!112002 call!14889))))))))

(assert (= (and d!79993 res!124598) b!272997))

(assert (= (and b!272997 res!124596) b!272998))

(assert (= (and b!272998 res!124597) b!272999))

(assert (= (and b!272999 res!124595) b!273000))

(declare-fun m!347835 () Bool)

(assert (=> b!272997 m!347835))

(assert (=> b!272997 m!347835))

(declare-fun m!347837 () Bool)

(assert (=> b!272997 m!347837))

(declare-fun m!347839 () Bool)

(assert (=> d!79993 m!347839))

(assert (=> d!79993 m!347835))

(assert (=> b!272998 m!347835))

(declare-fun m!347841 () Bool)

(assert (=> b!272998 m!347841))

(assert (=> b!272998 m!347835))

(declare-fun m!347843 () Bool)

(assert (=> b!272998 m!347843))

(declare-fun m!347845 () Bool)

(assert (=> b!272998 m!347845))

(assert (=> b!272998 m!347845))

(assert (=> b!272998 m!347841))

(declare-fun m!347847 () Bool)

(assert (=> b!272998 m!347847))

(assert (=> b!272999 m!347835))

(assert (=> b!272999 m!347841))

(assert (=> b!272999 m!347835))

(assert (=> b!272999 m!347843))

(assert (=> b!272999 m!347845))

(assert (=> b!272999 m!347845))

(assert (=> b!272999 m!347841))

(assert (=> b!272999 m!347847))

(declare-fun m!347849 () Bool)

(assert (=> b!273000 m!347849))

(declare-fun m!347851 () Bool)

(assert (=> b!273000 m!347851))

(declare-fun m!347853 () Bool)

(assert (=> b!273000 m!347853))

(assert (=> b!273000 m!347851))

(assert (=> b!273000 m!347853))

(declare-fun m!347855 () Bool)

(assert (=> b!273000 m!347855))

(assert (=> bm!14880 d!79993))

(declare-fun d!79995 () Bool)

(declare-fun e!169591 () Bool)

(assert (=> d!79995 e!169591))

(declare-fun res!124599 () Bool)

(assert (=> d!79995 (=> (not res!124599) (not e!169591))))

(declare-fun lt!112970 () BalanceConc!2576)

(assert (=> d!79995 (= res!124599 (= (list!1567 lt!112970) (originalCharacters!774 (h!9227 tokens!465))))))

(assert (=> d!79995 (= lt!112970 (BalanceConc!2577 (fromList!180 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (=> d!79995 (= (fromListB!321 (originalCharacters!774 (h!9227 tokens!465))) lt!112970)))

(declare-fun b!273001 () Bool)

(assert (=> b!273001 (= e!169591 (isBalanced!355 (fromList!180 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (= (and d!79995 res!124599) b!273001))

(declare-fun m!347857 () Bool)

(assert (=> d!79995 m!347857))

(declare-fun m!347859 () Bool)

(assert (=> d!79995 m!347859))

(assert (=> b!273001 m!347859))

(assert (=> b!273001 m!347859))

(declare-fun m!347861 () Bool)

(assert (=> b!273001 m!347861))

(assert (=> d!79219 d!79995))

(declare-fun b!273005 () Bool)

(declare-fun lt!112971 () List!3838)

(declare-fun e!169592 () Bool)

(assert (=> b!273005 (= e!169592 (or (not (= lt!111947 Nil!3828)) (= lt!112971 call!14879)))))

(declare-fun b!273003 () Bool)

(declare-fun e!169593 () List!3838)

(assert (=> b!273003 (= e!169593 (Cons!3828 (h!9225 call!14879) (++!1002 (t!38512 call!14879) lt!111947)))))

(declare-fun d!79997 () Bool)

(assert (=> d!79997 e!169592))

(declare-fun res!124601 () Bool)

(assert (=> d!79997 (=> (not res!124601) (not e!169592))))

(assert (=> d!79997 (= res!124601 (= (content!551 lt!112971) ((_ map or) (content!551 call!14879) (content!551 lt!111947))))))

(assert (=> d!79997 (= lt!112971 e!169593)))

(declare-fun c!51819 () Bool)

(assert (=> d!79997 (= c!51819 ((_ is Nil!3828) call!14879))))

(assert (=> d!79997 (= (++!1002 call!14879 lt!111947) lt!112971)))

(declare-fun b!273004 () Bool)

(declare-fun res!124600 () Bool)

(assert (=> b!273004 (=> (not res!124600) (not e!169592))))

(assert (=> b!273004 (= res!124600 (= (size!3053 lt!112971) (+ (size!3053 call!14879) (size!3053 lt!111947))))))

(declare-fun b!273002 () Bool)

(assert (=> b!273002 (= e!169593 lt!111947)))

(assert (= (and d!79997 c!51819) b!273002))

(assert (= (and d!79997 (not c!51819)) b!273003))

(assert (= (and d!79997 res!124601) b!273004))

(assert (= (and b!273004 res!124600) b!273005))

(declare-fun m!347863 () Bool)

(assert (=> b!273003 m!347863))

(declare-fun m!347865 () Bool)

(assert (=> d!79997 m!347865))

(declare-fun m!347867 () Bool)

(assert (=> d!79997 m!347867))

(assert (=> d!79997 m!346091))

(declare-fun m!347869 () Bool)

(assert (=> b!273004 m!347869))

(declare-fun m!347871 () Bool)

(assert (=> b!273004 m!347871))

(assert (=> b!273004 m!346097))

(assert (=> b!271462 d!79997))

(declare-fun lt!112972 () List!3838)

(declare-fun e!169596 () Bool)

(declare-fun b!273013 () Bool)

(assert (=> b!273013 (= e!169596 (or (not (= (ite c!51478 lt!111972 call!14883) Nil!3828)) (= lt!112972 call!14880)))))

(declare-fun e!169597 () List!3838)

(declare-fun b!273011 () Bool)

(assert (=> b!273011 (= e!169597 (Cons!3828 (h!9225 call!14880) (++!1002 (t!38512 call!14880) (ite c!51478 lt!111972 call!14883))))))

(declare-fun d!79999 () Bool)

(assert (=> d!79999 e!169596))

(declare-fun res!124603 () Bool)

(assert (=> d!79999 (=> (not res!124603) (not e!169596))))

(assert (=> d!79999 (= res!124603 (= (content!551 lt!112972) ((_ map or) (content!551 call!14880) (content!551 (ite c!51478 lt!111972 call!14883)))))))

(assert (=> d!79999 (= lt!112972 e!169597)))

(declare-fun c!51822 () Bool)

(assert (=> d!79999 (= c!51822 ((_ is Nil!3828) call!14880))))

(assert (=> d!79999 (= (++!1002 call!14880 (ite c!51478 lt!111972 call!14883)) lt!112972)))

(declare-fun b!273012 () Bool)

(declare-fun res!124602 () Bool)

(assert (=> b!273012 (=> (not res!124602) (not e!169596))))

(assert (=> b!273012 (= res!124602 (= (size!3053 lt!112972) (+ (size!3053 call!14880) (size!3053 (ite c!51478 lt!111972 call!14883)))))))

(declare-fun b!273010 () Bool)

(assert (=> b!273010 (= e!169597 (ite c!51478 lt!111972 call!14883))))

(assert (= (and d!79999 c!51822) b!273010))

(assert (= (and d!79999 (not c!51822)) b!273011))

(assert (= (and d!79999 res!124603) b!273012))

(assert (= (and b!273012 res!124602) b!273013))

(declare-fun m!347873 () Bool)

(assert (=> b!273011 m!347873))

(declare-fun m!347875 () Bool)

(assert (=> d!79999 m!347875))

(declare-fun m!347877 () Bool)

(assert (=> d!79999 m!347877))

(declare-fun m!347879 () Bool)

(assert (=> d!79999 m!347879))

(declare-fun m!347881 () Bool)

(assert (=> b!273012 m!347881))

(declare-fun m!347883 () Bool)

(assert (=> b!273012 m!347883))

(declare-fun m!347885 () Bool)

(assert (=> b!273012 m!347885))

(assert (=> bm!14878 d!79999))

(declare-fun d!80001 () Bool)

(declare-fun res!124608 () Bool)

(declare-fun e!169602 () Bool)

(assert (=> d!80001 (=> res!124608 e!169602)))

(assert (=> d!80001 (= res!124608 ((_ is Nil!3830) (list!1570 lt!111755)))))

(assert (=> d!80001 (= (forall!964 (list!1570 lt!111755) lambda!9183) e!169602)))

(declare-fun b!273018 () Bool)

(declare-fun e!169603 () Bool)

(assert (=> b!273018 (= e!169602 e!169603)))

(declare-fun res!124609 () Bool)

(assert (=> b!273018 (=> (not res!124609) (not e!169603))))

(assert (=> b!273018 (= res!124609 (dynLambda!1973 lambda!9183 (h!9227 (list!1570 lt!111755))))))

(declare-fun b!273019 () Bool)

(assert (=> b!273019 (= e!169603 (forall!964 (t!38514 (list!1570 lt!111755)) lambda!9183))))

(assert (= (and d!80001 (not res!124608)) b!273018))

(assert (= (and b!273018 res!124609) b!273019))

(declare-fun b_lambda!8723 () Bool)

(assert (=> (not b_lambda!8723) (not b!273018)))

(declare-fun m!347887 () Bool)

(assert (=> b!273018 m!347887))

(declare-fun m!347889 () Bool)

(assert (=> b!273019 m!347889))

(assert (=> d!79033 d!80001))

(assert (=> d!79033 d!79331))

(declare-fun d!80003 () Bool)

(declare-fun lt!112976 () Bool)

(assert (=> d!80003 (= lt!112976 (forall!964 (list!1570 lt!111755) lambda!9183))))

(declare-fun forall!970 (Conc!1285 Int) Bool)

(assert (=> d!80003 (= lt!112976 (forall!970 (c!51396 lt!111755) lambda!9183))))

(assert (=> d!80003 (= (forall!965 lt!111755 lambda!9183) lt!112976)))

(declare-fun bs!30618 () Bool)

(assert (= bs!30618 d!80003))

(assert (=> bs!30618 m!343845))

(assert (=> bs!30618 m!343845))

(assert (=> bs!30618 m!343847))

(declare-fun m!347901 () Bool)

(assert (=> bs!30618 m!347901))

(assert (=> d!79033 d!80003))

(assert (=> d!79033 d!79029))

(declare-fun e!169608 () Bool)

(declare-fun b!273028 () Bool)

(declare-fun lt!112977 () List!3838)

(assert (=> b!273028 (= e!169608 (or (not (= lt!111759 Nil!3828)) (= lt!112977 (t!38512 (++!1002 lt!111765 lt!111756)))))))

(declare-fun b!273026 () Bool)

(declare-fun e!169609 () List!3838)

(assert (=> b!273026 (= e!169609 (Cons!3828 (h!9225 (t!38512 (++!1002 lt!111765 lt!111756))) (++!1002 (t!38512 (t!38512 (++!1002 lt!111765 lt!111756))) lt!111759)))))

(declare-fun d!80009 () Bool)

(assert (=> d!80009 e!169608))

(declare-fun res!124613 () Bool)

(assert (=> d!80009 (=> (not res!124613) (not e!169608))))

(assert (=> d!80009 (= res!124613 (= (content!551 lt!112977) ((_ map or) (content!551 (t!38512 (++!1002 lt!111765 lt!111756))) (content!551 lt!111759))))))

(assert (=> d!80009 (= lt!112977 e!169609)))

(declare-fun c!51824 () Bool)

(assert (=> d!80009 (= c!51824 ((_ is Nil!3828) (t!38512 (++!1002 lt!111765 lt!111756))))))

(assert (=> d!80009 (= (++!1002 (t!38512 (++!1002 lt!111765 lt!111756)) lt!111759) lt!112977)))

(declare-fun b!273027 () Bool)

(declare-fun res!124612 () Bool)

(assert (=> b!273027 (=> (not res!124612) (not e!169608))))

(assert (=> b!273027 (= res!124612 (= (size!3053 lt!112977) (+ (size!3053 (t!38512 (++!1002 lt!111765 lt!111756))) (size!3053 lt!111759))))))

(declare-fun b!273025 () Bool)

(assert (=> b!273025 (= e!169609 lt!111759)))

(assert (= (and d!80009 c!51824) b!273025))

(assert (= (and d!80009 (not c!51824)) b!273026))

(assert (= (and d!80009 res!124613) b!273027))

(assert (= (and b!273027 res!124612) b!273028))

(declare-fun m!347913 () Bool)

(assert (=> b!273026 m!347913))

(declare-fun m!347915 () Bool)

(assert (=> d!80009 m!347915))

(declare-fun m!347917 () Bool)

(assert (=> d!80009 m!347917))

(assert (=> d!80009 m!344361))

(declare-fun m!347919 () Bool)

(assert (=> b!273027 m!347919))

(assert (=> b!273027 m!345193))

(assert (=> b!273027 m!344367))

(assert (=> b!271589 d!80009))

(declare-fun d!80015 () Bool)

(declare-fun lt!112980 () BalanceConc!2576)

(assert (=> d!80015 (= (list!1567 lt!112980) (originalCharacters!774 call!14852))))

(assert (=> d!80015 (= lt!112980 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 call!14852))) (value!25149 call!14852)))))

(assert (=> d!80015 (= (charsOf!376 call!14852) lt!112980)))

(declare-fun b_lambda!8727 () Bool)

(assert (=> (not b_lambda!8727) (not d!80015)))

(declare-fun tb!15563 () Bool)

(declare-fun t!38724 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 call!14852)))) t!38724) tb!15563))

(declare-fun b!273033 () Bool)

(declare-fun e!169612 () Bool)

(declare-fun tp!102855 () Bool)

(assert (=> b!273033 (= e!169612 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 call!14852))) (value!25149 call!14852)))) tp!102855))))

(declare-fun result!19190 () Bool)

(assert (=> tb!15563 (= result!19190 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 call!14852))) (value!25149 call!14852))) e!169612))))

(assert (= tb!15563 b!273033))

(declare-fun m!347935 () Bool)

(assert (=> b!273033 m!347935))

(declare-fun m!347937 () Bool)

(assert (=> tb!15563 m!347937))

(assert (=> d!80015 t!38724))

(declare-fun b_and!21859 () Bool)

(assert (= b_and!21831 (and (=> t!38724 result!19190) b_and!21859)))

(declare-fun t!38726 () Bool)

(declare-fun tb!15565 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 call!14852)))) t!38726) tb!15565))

(declare-fun result!19192 () Bool)

(assert (= result!19192 result!19190))

(assert (=> d!80015 t!38726))

(declare-fun b_and!21861 () Bool)

(assert (= b_and!21829 (and (=> t!38726 result!19192) b_and!21861)))

(declare-fun t!38728 () Bool)

(declare-fun tb!15567 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 call!14852)))) t!38728) tb!15567))

(declare-fun result!19194 () Bool)

(assert (= result!19194 result!19190))

(assert (=> d!80015 t!38728))

(declare-fun b_and!21863 () Bool)

(assert (= b_and!21837 (and (=> t!38728 result!19194) b_and!21863)))

(declare-fun t!38730 () Bool)

(declare-fun tb!15569 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 call!14852)))) t!38730) tb!15569))

(declare-fun result!19196 () Bool)

(assert (= result!19196 result!19190))

(assert (=> d!80015 t!38730))

(declare-fun b_and!21865 () Bool)

(assert (= b_and!21833 (and (=> t!38730 result!19196) b_and!21865)))

(declare-fun t!38732 () Bool)

(declare-fun tb!15571 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 call!14852)))) t!38732) tb!15571))

(declare-fun result!19198 () Bool)

(assert (= result!19198 result!19190))

(assert (=> d!80015 t!38732))

(declare-fun b_and!21867 () Bool)

(assert (= b_and!21835 (and (=> t!38732 result!19198) b_and!21867)))

(declare-fun m!347939 () Bool)

(assert (=> d!80015 m!347939))

(declare-fun m!347941 () Bool)

(assert (=> d!80015 m!347941))

(assert (=> b!271367 d!80015))

(declare-fun d!80019 () Bool)

(declare-fun e!169613 () Bool)

(assert (=> d!80019 e!169613))

(declare-fun res!124616 () Bool)

(assert (=> d!80019 (=> (not res!124616) (not e!169613))))

(declare-fun lt!112981 () BalanceConc!2578)

(assert (=> d!80019 (= res!124616 (= (list!1570 lt!112981) tokens!465))))

(assert (=> d!80019 (= lt!112981 (BalanceConc!2579 (fromList!181 tokens!465)))))

(assert (=> d!80019 (= (fromListB!319 tokens!465) lt!112981)))

(declare-fun b!273034 () Bool)

(assert (=> b!273034 (= e!169613 (isBalanced!353 (fromList!181 tokens!465)))))

(assert (= (and d!80019 res!124616) b!273034))

(declare-fun m!347943 () Bool)

(assert (=> d!80019 m!347943))

(declare-fun m!347945 () Bool)

(assert (=> d!80019 m!347945))

(assert (=> b!273034 m!347945))

(assert (=> b!273034 m!347945))

(declare-fun m!347947 () Bool)

(assert (=> b!273034 m!347947))

(assert (=> d!79037 d!80019))

(declare-fun b!273038 () Bool)

(declare-fun e!169614 () Bool)

(declare-fun lt!112982 () List!3838)

(assert (=> b!273038 (= e!169614 (or (not (= lt!111756 Nil!3828)) (= lt!112982 (t!38512 lt!111765))))))

(declare-fun b!273036 () Bool)

(declare-fun e!169615 () List!3838)

(assert (=> b!273036 (= e!169615 (Cons!3828 (h!9225 (t!38512 lt!111765)) (++!1002 (t!38512 (t!38512 lt!111765)) lt!111756)))))

(declare-fun d!80021 () Bool)

(assert (=> d!80021 e!169614))

(declare-fun res!124618 () Bool)

(assert (=> d!80021 (=> (not res!124618) (not e!169614))))

(assert (=> d!80021 (= res!124618 (= (content!551 lt!112982) ((_ map or) (content!551 (t!38512 lt!111765)) (content!551 lt!111756))))))

(assert (=> d!80021 (= lt!112982 e!169615)))

(declare-fun c!51826 () Bool)

(assert (=> d!80021 (= c!51826 ((_ is Nil!3828) (t!38512 lt!111765)))))

(assert (=> d!80021 (= (++!1002 (t!38512 lt!111765) lt!111756) lt!112982)))

(declare-fun b!273037 () Bool)

(declare-fun res!124617 () Bool)

(assert (=> b!273037 (=> (not res!124617) (not e!169614))))

(assert (=> b!273037 (= res!124617 (= (size!3053 lt!112982) (+ (size!3053 (t!38512 lt!111765)) (size!3053 lt!111756))))))

(declare-fun b!273035 () Bool)

(assert (=> b!273035 (= e!169615 lt!111756)))

(assert (= (and d!80021 c!51826) b!273035))

(assert (= (and d!80021 (not c!51826)) b!273036))

(assert (= (and d!80021 res!124618) b!273037))

(assert (= (and b!273037 res!124617) b!273038))

(declare-fun m!347951 () Bool)

(assert (=> b!273036 m!347951))

(declare-fun m!347953 () Bool)

(assert (=> d!80021 m!347953))

(assert (=> d!80021 m!345183))

(assert (=> d!80021 m!344375))

(declare-fun m!347955 () Bool)

(assert (=> b!273037 m!347955))

(assert (=> b!273037 m!345187))

(assert (=> b!273037 m!344379))

(assert (=> b!271599 d!80021))

(declare-fun d!80025 () Bool)

(declare-fun charsToInt!0 (List!3837) (_ BitVec 32))

(assert (=> d!80025 (= (inv!16 (value!25149 (h!9227 tokens!465))) (= (charsToInt!0 (text!5718 (value!25149 (h!9227 tokens!465)))) (value!25140 (value!25149 (h!9227 tokens!465)))))))

(declare-fun bs!30624 () Bool)

(assert (= bs!30624 d!80025))

(declare-fun m!347963 () Bool)

(assert (=> bs!30624 m!347963))

(assert (=> b!271288 d!80025))

(declare-fun d!80029 () Bool)

(assert (=> d!80029 (= (list!1567 lt!111990) (list!1571 (c!51394 lt!111990)))))

(declare-fun bs!30625 () Bool)

(assert (= bs!30625 d!80029))

(declare-fun m!347965 () Bool)

(assert (=> bs!30625 m!347965))

(assert (=> d!79145 d!80029))

(assert (=> b!271615 d!79321))

(declare-fun d!80031 () Bool)

(declare-fun e!169619 () Bool)

(assert (=> d!80031 e!169619))

(declare-fun res!124625 () Bool)

(assert (=> d!80031 (=> (not res!124625) (not e!169619))))

(declare-fun lt!112989 () Option!813)

(assert (=> d!80031 (= res!124625 (= (isDefined!656 lt!112989) (isDefined!658 (maxPrefixZipper!113 thiss!17480 (t!38513 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465))))))))))

(declare-fun e!169621 () Option!813)

(assert (=> d!80031 (= lt!112989 e!169621)))

(declare-fun c!51827 () Bool)

(assert (=> d!80031 (= c!51827 (and ((_ is Cons!3829) (t!38513 rules!1920)) ((_ is Nil!3829) (t!38513 (t!38513 rules!1920)))))))

(declare-fun lt!112984 () Unit!4936)

(declare-fun lt!112987 () Unit!4936)

(assert (=> d!80031 (= lt!112984 lt!112987)))

(declare-fun lt!112983 () List!3838)

(declare-fun lt!112988 () List!3838)

(assert (=> d!80031 (isPrefix!399 lt!112983 lt!112988)))

(assert (=> d!80031 (= lt!112987 (lemmaIsPrefixRefl!209 lt!112983 lt!112988))))

(assert (=> d!80031 (= lt!112988 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (=> d!80031 (= lt!112983 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(assert (=> d!80031 (rulesValidInductive!204 thiss!17480 (t!38513 rules!1920))))

(assert (=> d!80031 (= (maxPrefixZipperSequence!298 thiss!17480 (t!38513 rules!1920) (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))) lt!112989)))

(declare-fun b!273041 () Bool)

(declare-fun e!169617 () Bool)

(declare-fun e!169620 () Bool)

(assert (=> b!273041 (= e!169617 e!169620)))

(declare-fun res!124623 () Bool)

(assert (=> b!273041 (=> (not res!124623) (not e!169620))))

(assert (=> b!273041 (= res!124623 (= (_1!2363 (get!1270 lt!112989)) (_1!2365 (get!1271 (maxPrefix!335 thiss!17480 (t!38513 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!273042 () Bool)

(declare-fun res!124622 () Bool)

(assert (=> b!273042 (=> (not res!124622) (not e!169619))))

(declare-fun e!169622 () Bool)

(assert (=> b!273042 (= res!124622 e!169622)))

(declare-fun res!124626 () Bool)

(assert (=> b!273042 (=> res!124626 e!169622)))

(assert (=> b!273042 (= res!124626 (not (isDefined!656 lt!112989)))))

(declare-fun b!273043 () Bool)

(declare-fun e!169618 () Bool)

(assert (=> b!273043 (= e!169622 e!169618)))

(declare-fun res!124624 () Bool)

(assert (=> b!273043 (=> (not res!124624) (not e!169618))))

(assert (=> b!273043 (= res!124624 (= (_1!2363 (get!1270 lt!112989)) (_1!2365 (get!1271 (maxPrefixZipper!113 thiss!17480 (t!38513 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!273044 () Bool)

(declare-fun lt!112986 () Option!813)

(declare-fun lt!112985 () Option!813)

(assert (=> b!273044 (= e!169621 (ite (and ((_ is None!812) lt!112986) ((_ is None!812) lt!112985)) None!812 (ite ((_ is None!812) lt!112985) lt!112986 (ite ((_ is None!812) lt!112986) lt!112985 (ite (>= (size!3051 (_1!2363 (v!14681 lt!112986))) (size!3051 (_1!2363 (v!14681 lt!112985)))) lt!112986 lt!112985)))))))

(declare-fun call!14977 () Option!813)

(assert (=> b!273044 (= lt!112986 call!14977)))

(assert (=> b!273044 (= lt!112985 (maxPrefixZipperSequence!298 thiss!17480 (t!38513 (t!38513 rules!1920)) (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(declare-fun b!273045 () Bool)

(assert (=> b!273045 (= e!169619 e!169617)))

(declare-fun res!124621 () Bool)

(assert (=> b!273045 (=> res!124621 e!169617)))

(assert (=> b!273045 (= res!124621 (not (isDefined!656 lt!112989)))))

(declare-fun bm!14972 () Bool)

(assert (=> bm!14972 (= call!14977 (maxPrefixOneRuleZipperSequence!114 thiss!17480 (h!9226 (t!38513 rules!1920)) (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))

(declare-fun b!273046 () Bool)

(assert (=> b!273046 (= e!169620 (= (list!1567 (_2!2363 (get!1270 lt!112989))) (_2!2365 (get!1271 (maxPrefix!335 thiss!17480 (t!38513 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!273047 () Bool)

(assert (=> b!273047 (= e!169618 (= (list!1567 (_2!2363 (get!1270 lt!112989))) (_2!2365 (get!1271 (maxPrefixZipper!113 thiss!17480 (t!38513 rules!1920) (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))))

(declare-fun b!273048 () Bool)

(assert (=> b!273048 (= e!169621 call!14977)))

(assert (= (and d!80031 c!51827) b!273048))

(assert (= (and d!80031 (not c!51827)) b!273044))

(assert (= (or b!273048 b!273044) bm!14972))

(assert (= (and d!80031 res!124625) b!273042))

(assert (= (and b!273042 (not res!124626)) b!273043))

(assert (= (and b!273043 res!124624) b!273047))

(assert (= (and b!273042 res!124622) b!273045))

(assert (= (and b!273045 (not res!124621)) b!273041))

(assert (= (and b!273041 res!124623) b!273046))

(assert (=> bm!14972 m!343715))

(declare-fun m!347973 () Bool)

(assert (=> bm!14972 m!347973))

(declare-fun m!347975 () Bool)

(assert (=> b!273045 m!347975))

(assert (=> d!80031 m!347975))

(declare-fun m!347977 () Bool)

(assert (=> d!80031 m!347977))

(assert (=> d!80031 m!347503))

(declare-fun m!347979 () Bool)

(assert (=> d!80031 m!347979))

(declare-fun m!347981 () Bool)

(assert (=> d!80031 m!347981))

(assert (=> d!80031 m!347499))

(assert (=> d!80031 m!344677))

(assert (=> d!80031 m!347503))

(assert (=> d!80031 m!343715))

(assert (=> d!80031 m!344677))

(declare-fun m!347983 () Bool)

(assert (=> b!273043 m!347983))

(assert (=> b!273043 m!343715))

(assert (=> b!273043 m!344677))

(assert (=> b!273043 m!344677))

(assert (=> b!273043 m!347503))

(assert (=> b!273043 m!347503))

(declare-fun m!347985 () Bool)

(assert (=> b!273043 m!347985))

(assert (=> b!273047 m!347983))

(assert (=> b!273047 m!347503))

(assert (=> b!273047 m!347985))

(declare-fun m!347987 () Bool)

(assert (=> b!273047 m!347987))

(assert (=> b!273047 m!344677))

(assert (=> b!273047 m!347503))

(assert (=> b!273047 m!343715))

(assert (=> b!273047 m!344677))

(assert (=> b!273046 m!347983))

(assert (=> b!273046 m!343715))

(assert (=> b!273046 m!344677))

(assert (=> b!273046 m!347987))

(assert (=> b!273046 m!346933))

(declare-fun m!347989 () Bool)

(assert (=> b!273046 m!347989))

(assert (=> b!273046 m!344677))

(assert (=> b!273046 m!346933))

(assert (=> b!273044 m!343715))

(declare-fun m!347991 () Bool)

(assert (=> b!273044 m!347991))

(assert (=> b!273042 m!347975))

(assert (=> b!273041 m!347983))

(assert (=> b!273041 m!343715))

(assert (=> b!273041 m!344677))

(assert (=> b!273041 m!344677))

(assert (=> b!273041 m!346933))

(assert (=> b!273041 m!346933))

(assert (=> b!273041 m!347989))

(assert (=> b!271761 d!80031))

(declare-fun d!80037 () Bool)

(assert (=> d!80037 (isDefined!658 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 call!14889) (list!1567 lt!112002))))))

(declare-fun lt!113007 () Unit!4936)

(declare-fun e!169625 () Unit!4936)

(assert (=> d!80037 (= lt!113007 e!169625)))

(declare-fun c!51828 () Bool)

(assert (=> d!80037 (= c!51828 (isEmpty!2444 (maxPrefix!335 thiss!17480 rules!1920 (++!1002 (list!1567 call!14889) (list!1567 lt!112002)))))))

(declare-fun lt!113002 () Unit!4936)

(declare-fun lt!112995 () Unit!4936)

(assert (=> d!80037 (= lt!113002 lt!112995)))

(declare-fun e!169624 () Bool)

(assert (=> d!80037 e!169624))

(declare-fun res!124632 () Bool)

(assert (=> d!80037 (=> (not res!124632) (not e!169624))))

(declare-fun lt!112997 () Token!1206)

(assert (=> d!80037 (= res!124632 (isDefined!660 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112997)))))))

(assert (=> d!80037 (= lt!112995 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!126 thiss!17480 rules!1920 (list!1567 call!14889) lt!112997))))

(declare-fun lt!113006 () Unit!4936)

(declare-fun lt!113005 () Unit!4936)

(assert (=> d!80037 (= lt!113006 lt!113005)))

(declare-fun lt!113000 () List!3838)

(assert (=> d!80037 (isPrefix!399 lt!113000 (++!1002 (list!1567 call!14889) (list!1567 lt!112002)))))

(assert (=> d!80037 (= lt!113005 (lemmaPrefixStaysPrefixWhenAddingToSuffix!58 lt!113000 (list!1567 call!14889) (list!1567 lt!112002)))))

(assert (=> d!80037 (= lt!113000 (list!1567 (charsOf!376 lt!112997)))))

(declare-fun lt!112996 () Unit!4936)

(declare-fun lt!112998 () Unit!4936)

(assert (=> d!80037 (= lt!112996 lt!112998)))

(declare-fun lt!113003 () List!3838)

(declare-fun lt!113011 () List!3838)

(assert (=> d!80037 (isPrefix!399 lt!113003 (++!1002 lt!113003 lt!113011))))

(assert (=> d!80037 (= lt!112998 (lemmaConcatTwoListThenFirstIsPrefix!294 lt!113003 lt!113011))))

(assert (=> d!80037 (= lt!113011 (_2!2365 (get!1271 (maxPrefix!335 thiss!17480 rules!1920 (list!1567 call!14889)))))))

(assert (=> d!80037 (= lt!113003 (list!1567 (charsOf!376 lt!112997)))))

(assert (=> d!80037 (= lt!112997 (head!888 (list!1570 (_1!2362 (lex!409 thiss!17480 rules!1920 (seqFromList!829 (list!1567 call!14889)))))))))

(assert (=> d!80037 (not (isEmpty!2429 rules!1920))))

(assert (=> d!80037 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!112 thiss!17480 rules!1920 (list!1567 call!14889) (list!1567 lt!112002)) lt!113007)))

(declare-fun b!273055 () Bool)

(declare-fun Unit!4986 () Unit!4936)

(assert (=> b!273055 (= e!169625 Unit!4986)))

(declare-fun lt!113008 () List!3838)

(assert (=> b!273055 (= lt!113008 (++!1002 (list!1567 call!14889) (list!1567 lt!112002)))))

(declare-fun lt!112999 () Unit!4936)

(assert (=> b!273055 (= lt!112999 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!58 thiss!17480 (rule!1316 lt!112997) rules!1920 lt!113008))))

(assert (=> b!273055 (isEmpty!2444 (maxPrefixOneRule!143 thiss!17480 (rule!1316 lt!112997) lt!113008))))

(declare-fun lt!113010 () Unit!4936)

(assert (=> b!273055 (= lt!113010 lt!112999)))

(declare-fun lt!113009 () List!3838)

(assert (=> b!273055 (= lt!113009 (list!1567 (charsOf!376 lt!112997)))))

(declare-fun lt!113004 () Unit!4936)

(assert (=> b!273055 (= lt!113004 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!58 thiss!17480 (rule!1316 lt!112997) lt!113009 (++!1002 (list!1567 call!14889) (list!1567 lt!112002))))))

(assert (=> b!273055 (not (matchR!277 (regex!731 (rule!1316 lt!112997)) lt!113009))))

(declare-fun lt!113001 () Unit!4936)

(assert (=> b!273055 (= lt!113001 lt!113004)))

(assert (=> b!273055 false))

(declare-fun b!273053 () Bool)

(declare-fun res!124631 () Bool)

(assert (=> b!273053 (=> (not res!124631) (not e!169624))))

(assert (=> b!273053 (= res!124631 (matchR!277 (regex!731 (get!1273 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112997))))) (list!1567 (charsOf!376 lt!112997))))))

(declare-fun b!273056 () Bool)

(declare-fun Unit!4987 () Unit!4936)

(assert (=> b!273056 (= e!169625 Unit!4987)))

(declare-fun b!273054 () Bool)

(assert (=> b!273054 (= e!169624 (= (rule!1316 lt!112997) (get!1273 (getRuleFromTag!126 thiss!17480 rules!1920 (tag!941 (rule!1316 lt!112997))))))))

(assert (= (and d!80037 res!124632) b!273053))

(assert (= (and b!273053 res!124631) b!273054))

(assert (= (and d!80037 c!51828) b!273055))

(assert (= (and d!80037 (not c!51828)) b!273056))

(declare-fun m!348015 () Bool)

(assert (=> d!80037 m!348015))

(declare-fun m!348017 () Bool)

(assert (=> d!80037 m!348017))

(assert (=> d!80037 m!344449))

(declare-fun m!348019 () Bool)

(assert (=> d!80037 m!348019))

(declare-fun m!348021 () Bool)

(assert (=> d!80037 m!348021))

(declare-fun m!348023 () Bool)

(assert (=> d!80037 m!348023))

(declare-fun m!348025 () Bool)

(assert (=> d!80037 m!348025))

(assert (=> d!80037 m!348021))

(declare-fun m!348027 () Bool)

(assert (=> d!80037 m!348027))

(assert (=> d!80037 m!348021))

(declare-fun m!348029 () Bool)

(assert (=> d!80037 m!348029))

(declare-fun m!348031 () Bool)

(assert (=> d!80037 m!348031))

(declare-fun m!348033 () Bool)

(assert (=> d!80037 m!348033))

(declare-fun m!348035 () Bool)

(assert (=> d!80037 m!348035))

(declare-fun m!348037 () Bool)

(assert (=> d!80037 m!348037))

(assert (=> d!80037 m!348025))

(declare-fun m!348039 () Bool)

(assert (=> d!80037 m!348039))

(assert (=> d!80037 m!343713))

(assert (=> d!80037 m!348035))

(assert (=> d!80037 m!344449))

(assert (=> d!80037 m!344451))

(assert (=> d!80037 m!348025))

(declare-fun m!348041 () Bool)

(assert (=> d!80037 m!348041))

(declare-fun m!348043 () Bool)

(assert (=> d!80037 m!348043))

(declare-fun m!348045 () Bool)

(assert (=> d!80037 m!348045))

(assert (=> d!80037 m!348019))

(declare-fun m!348047 () Bool)

(assert (=> d!80037 m!348047))

(assert (=> d!80037 m!348041))

(assert (=> d!80037 m!348015))

(assert (=> d!80037 m!348045))

(declare-fun m!348049 () Bool)

(assert (=> d!80037 m!348049))

(assert (=> d!80037 m!344449))

(declare-fun m!348051 () Bool)

(assert (=> d!80037 m!348051))

(assert (=> d!80037 m!344449))

(assert (=> d!80037 m!348031))

(assert (=> d!80037 m!344449))

(assert (=> d!80037 m!344451))

(declare-fun m!348053 () Bool)

(assert (=> d!80037 m!348053))

(assert (=> b!273055 m!348015))

(assert (=> b!273055 m!348017))

(assert (=> b!273055 m!348025))

(declare-fun m!348055 () Bool)

(assert (=> b!273055 m!348055))

(assert (=> b!273055 m!348015))

(declare-fun m!348057 () Bool)

(assert (=> b!273055 m!348057))

(assert (=> b!273055 m!348057))

(declare-fun m!348059 () Bool)

(assert (=> b!273055 m!348059))

(assert (=> b!273055 m!344449))

(assert (=> b!273055 m!344451))

(assert (=> b!273055 m!348025))

(declare-fun m!348061 () Bool)

(assert (=> b!273055 m!348061))

(declare-fun m!348063 () Bool)

(assert (=> b!273055 m!348063))

(assert (=> b!273053 m!348015))

(assert (=> b!273053 m!348017))

(assert (=> b!273053 m!348041))

(declare-fun m!348065 () Bool)

(assert (=> b!273053 m!348065))

(assert (=> b!273053 m!348017))

(declare-fun m!348067 () Bool)

(assert (=> b!273053 m!348067))

(assert (=> b!273053 m!348041))

(assert (=> b!273053 m!348015))

(assert (=> b!273054 m!348041))

(assert (=> b!273054 m!348041))

(assert (=> b!273054 m!348065))

(assert (=> b!271610 d!80037))

(declare-fun d!80043 () Bool)

(assert (=> d!80043 (= (list!1567 lt!112002) (list!1571 (c!51394 lt!112002)))))

(declare-fun bs!30628 () Bool)

(assert (= bs!30628 d!80043))

(declare-fun m!348069 () Bool)

(assert (=> bs!30628 m!348069))

(assert (=> b!271610 d!80043))

(declare-fun d!80045 () Bool)

(declare-fun e!169632 () Bool)

(assert (=> d!80045 e!169632))

(declare-fun res!124639 () Bool)

(assert (=> d!80045 (=> (not res!124639) (not e!169632))))

(declare-fun lt!113012 () BalanceConc!2578)

(assert (=> d!80045 (= res!124639 (= (list!1570 lt!113012) (Cons!3830 call!14887 Nil!3830)))))

(assert (=> d!80045 (= lt!113012 (singleton!114 call!14887))))

(assert (=> d!80045 (= (singletonSeq!277 call!14887) lt!113012)))

(declare-fun b!273063 () Bool)

(assert (=> b!273063 (= e!169632 (isBalanced!353 (c!51396 lt!113012)))))

(assert (= (and d!80045 res!124639) b!273063))

(declare-fun m!348071 () Bool)

(assert (=> d!80045 m!348071))

(declare-fun m!348073 () Bool)

(assert (=> d!80045 m!348073))

(declare-fun m!348077 () Bool)

(assert (=> b!273063 m!348077))

(assert (=> b!271610 d!80045))

(declare-fun d!80047 () Bool)

(declare-fun lt!113018 () BalanceConc!2576)

(assert (=> d!80047 (= (list!1567 lt!113018) (printListTailRec!130 thiss!17480 (dropList!164 (singletonSeq!277 call!14887) 0) (list!1567 (BalanceConc!2577 Empty!1284))))))

(declare-fun e!169635 () BalanceConc!2576)

(assert (=> d!80047 (= lt!113018 e!169635)))

(declare-fun c!51830 () Bool)

(assert (=> d!80047 (= c!51830 (>= 0 (size!3055 (singletonSeq!277 call!14887))))))

(declare-fun e!169636 () Bool)

(assert (=> d!80047 e!169636))

(declare-fun res!124642 () Bool)

(assert (=> d!80047 (=> (not res!124642) (not e!169636))))

(assert (=> d!80047 (= res!124642 (>= 0 0))))

(assert (=> d!80047 (= (printTailRec!305 thiss!17480 (singletonSeq!277 call!14887) 0 (BalanceConc!2577 Empty!1284)) lt!113018)))

(declare-fun b!273068 () Bool)

(assert (=> b!273068 (= e!169636 (<= 0 (size!3055 (singletonSeq!277 call!14887))))))

(declare-fun b!273069 () Bool)

(assert (=> b!273069 (= e!169635 (BalanceConc!2577 Empty!1284))))

(declare-fun b!273070 () Bool)

(assert (=> b!273070 (= e!169635 (printTailRec!305 thiss!17480 (singletonSeq!277 call!14887) (+ 0 1) (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (apply!773 (singletonSeq!277 call!14887) 0)))))))

(declare-fun lt!113020 () List!3840)

(assert (=> b!273070 (= lt!113020 (list!1570 (singletonSeq!277 call!14887)))))

(declare-fun lt!113019 () Unit!4936)

(assert (=> b!273070 (= lt!113019 (lemmaDropApply!204 lt!113020 0))))

(assert (=> b!273070 (= (head!888 (drop!217 lt!113020 0)) (apply!774 lt!113020 0))))

(declare-fun lt!113017 () Unit!4936)

(assert (=> b!273070 (= lt!113017 lt!113019)))

(declare-fun lt!113015 () List!3840)

(assert (=> b!273070 (= lt!113015 (list!1570 (singletonSeq!277 call!14887)))))

(declare-fun lt!113016 () Unit!4936)

(assert (=> b!273070 (= lt!113016 (lemmaDropTail!196 lt!113015 0))))

(assert (=> b!273070 (= (tail!478 (drop!217 lt!113015 0)) (drop!217 lt!113015 (+ 0 1)))))

(declare-fun lt!113014 () Unit!4936)

(assert (=> b!273070 (= lt!113014 lt!113016)))

(assert (= (and d!80047 res!124642) b!273068))

(assert (= (and d!80047 c!51830) b!273069))

(assert (= (and d!80047 (not c!51830)) b!273070))

(assert (=> d!80047 m!344581))

(assert (=> d!80047 m!344455))

(declare-fun m!348097 () Bool)

(assert (=> d!80047 m!348097))

(assert (=> d!80047 m!344455))

(declare-fun m!348099 () Bool)

(assert (=> d!80047 m!348099))

(assert (=> d!80047 m!348099))

(assert (=> d!80047 m!344581))

(declare-fun m!348101 () Bool)

(assert (=> d!80047 m!348101))

(declare-fun m!348103 () Bool)

(assert (=> d!80047 m!348103))

(assert (=> b!273068 m!344455))

(assert (=> b!273068 m!348097))

(assert (=> b!273070 m!344455))

(declare-fun m!348105 () Bool)

(assert (=> b!273070 m!348105))

(assert (=> b!273070 m!344455))

(declare-fun m!348107 () Bool)

(assert (=> b!273070 m!348107))

(declare-fun m!348111 () Bool)

(assert (=> b!273070 m!348111))

(assert (=> b!273070 m!348105))

(declare-fun m!348115 () Bool)

(assert (=> b!273070 m!348115))

(assert (=> b!273070 m!344455))

(declare-fun m!348117 () Bool)

(assert (=> b!273070 m!348117))

(declare-fun m!348119 () Bool)

(assert (=> b!273070 m!348119))

(assert (=> b!273070 m!348119))

(declare-fun m!348121 () Bool)

(assert (=> b!273070 m!348121))

(declare-fun m!348123 () Bool)

(assert (=> b!273070 m!348123))

(declare-fun m!348125 () Bool)

(assert (=> b!273070 m!348125))

(declare-fun m!348127 () Bool)

(assert (=> b!273070 m!348127))

(declare-fun m!348129 () Bool)

(assert (=> b!273070 m!348129))

(declare-fun m!348133 () Bool)

(assert (=> b!273070 m!348133))

(assert (=> b!273070 m!348115))

(assert (=> b!273070 m!348107))

(assert (=> b!273070 m!348129))

(declare-fun m!348139 () Bool)

(assert (=> b!273070 m!348139))

(assert (=> b!271610 d!80047))

(declare-fun d!80061 () Bool)

(declare-fun lt!113026 () BalanceConc!2576)

(assert (=> d!80061 (= (list!1567 lt!113026) (printList!293 thiss!17480 (list!1570 (singletonSeq!277 call!14887))))))

(assert (=> d!80061 (= lt!113026 (printTailRec!305 thiss!17480 (singletonSeq!277 call!14887) 0 (BalanceConc!2577 Empty!1284)))))

(assert (=> d!80061 (= (print!342 thiss!17480 (singletonSeq!277 call!14887)) lt!113026)))

(declare-fun bs!30631 () Bool)

(assert (= bs!30631 d!80061))

(declare-fun m!348143 () Bool)

(assert (=> bs!30631 m!348143))

(assert (=> bs!30631 m!344455))

(assert (=> bs!30631 m!348117))

(assert (=> bs!30631 m!348117))

(declare-fun m!348149 () Bool)

(assert (=> bs!30631 m!348149))

(assert (=> bs!30631 m!344455))

(assert (=> bs!30631 m!344457))

(assert (=> b!271610 d!80061))

(declare-fun d!80065 () Bool)

(assert (=> d!80065 (= (list!1567 call!14889) (list!1571 (c!51394 call!14889)))))

(declare-fun bs!30632 () Bool)

(assert (= bs!30632 d!80065))

(declare-fun m!348151 () Bool)

(assert (=> bs!30632 m!348151))

(assert (=> b!271610 d!80065))

(declare-fun d!80067 () Bool)

(assert (=> d!80067 (= (inv!16 (value!25149 separatorToken!170)) (= (charsToInt!0 (text!5718 (value!25149 separatorToken!170))) (value!25140 (value!25149 separatorToken!170))))))

(declare-fun bs!30633 () Bool)

(assert (= bs!30633 d!80067))

(declare-fun m!348153 () Bool)

(assert (=> bs!30633 m!348153))

(assert (=> b!271628 d!80067))

(declare-fun d!80069 () Bool)

(assert (=> d!80069 (= (list!1567 e!168699) (list!1571 (c!51394 e!168699)))))

(declare-fun bs!30634 () Bool)

(assert (= bs!30634 d!80069))

(declare-fun m!348155 () Bool)

(assert (=> bs!30634 m!348155))

(assert (=> bm!14876 d!80069))

(assert (=> b!271764 d!79895))

(assert (=> b!271764 d!79781))

(declare-fun d!80071 () Bool)

(assert (=> d!80071 (= (get!1271 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))) (v!14689 (maxPrefixZipper!113 thiss!17480 rules!1920 (list!1567 (seqFromList!829 (originalCharacters!774 (h!9227 tokens!465)))))))))

(assert (=> b!271764 d!80071))

(assert (=> b!271764 d!79925))

(assert (=> b!271764 d!79787))

(declare-fun d!80073 () Bool)

(declare-fun lt!113028 () Int)

(assert (=> d!80073 (= lt!113028 (size!3060 (list!1570 (_1!2362 lt!111967))))))

(assert (=> d!80073 (= lt!113028 (size!3061 (c!51396 (_1!2362 lt!111967))))))

(assert (=> d!80073 (= (size!3055 (_1!2362 lt!111967)) lt!113028)))

(declare-fun bs!30635 () Bool)

(assert (= bs!30635 d!80073))

(assert (=> bs!30635 m!344257))

(assert (=> bs!30635 m!344257))

(declare-fun m!348165 () Bool)

(assert (=> bs!30635 m!348165))

(declare-fun m!348167 () Bool)

(assert (=> bs!30635 m!348167))

(assert (=> d!79113 d!80073))

(declare-fun lt!113180 () tuple2!4292)

(declare-fun lt!113175 () Option!813)

(declare-fun b!273298 () Bool)

(declare-fun lexRec!92 (LexerInterface!617 List!3839 BalanceConc!2576) tuple2!4292)

(assert (=> b!273298 (= lt!113180 (lexRec!92 thiss!17480 rules!1920 (_2!2363 (v!14681 lt!113175))))))

(declare-fun e!169764 () tuple2!4292)

(declare-fun prepend!175 (BalanceConc!2578 Token!1206) BalanceConc!2578)

(assert (=> b!273298 (= e!169764 (tuple2!4293 (prepend!175 (_1!2362 lt!113180) (_1!2363 (v!14681 lt!113175))) (_2!2362 lt!113180)))))

(declare-fun e!169763 () tuple2!4292)

(declare-fun b!273299 () Bool)

(declare-fun lt!113188 () Option!813)

(declare-fun lt!113179 () BalanceConc!2576)

(declare-fun append!97 (BalanceConc!2578 Token!1206) BalanceConc!2578)

(assert (=> b!273299 (= e!169763 (lexTailRecV2!175 thiss!17480 rules!1920 (seqFromList!829 lt!111765) lt!113179 (_2!2363 (v!14681 lt!113188)) (append!97 (BalanceConc!2579 Empty!1285) (_1!2363 (v!14681 lt!113188)))))))

(declare-fun lt!113167 () tuple2!4292)

(assert (=> b!273299 (= lt!113167 (lexRec!92 thiss!17480 rules!1920 (_2!2363 (v!14681 lt!113188))))))

(declare-fun lt!113161 () List!3838)

(assert (=> b!273299 (= lt!113161 (list!1567 (BalanceConc!2577 Empty!1284)))))

(declare-fun lt!113158 () List!3838)

(assert (=> b!273299 (= lt!113158 (list!1567 (charsOf!376 (_1!2363 (v!14681 lt!113188)))))))

(declare-fun lt!113183 () List!3838)

(assert (=> b!273299 (= lt!113183 (list!1567 (_2!2363 (v!14681 lt!113188))))))

(declare-fun lt!113173 () Unit!4936)

(assert (=> b!273299 (= lt!113173 (lemmaConcatAssociativity!430 lt!113161 lt!113158 lt!113183))))

(assert (=> b!273299 (= (++!1002 (++!1002 lt!113161 lt!113158) lt!113183) (++!1002 lt!113161 (++!1002 lt!113158 lt!113183)))))

(declare-fun lt!113184 () Unit!4936)

(assert (=> b!273299 (= lt!113184 lt!113173)))

(declare-fun lt!113164 () Option!813)

(assert (=> b!273299 (= lt!113164 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 (seqFromList!829 lt!111765)))))

(declare-fun c!51871 () Bool)

(assert (=> b!273299 (= c!51871 ((_ is Some!812) lt!113164))))

(declare-fun e!169765 () tuple2!4292)

(assert (=> b!273299 (= (lexRec!92 thiss!17480 rules!1920 (seqFromList!829 lt!111765)) e!169765)))

(declare-fun lt!113155 () Unit!4936)

(declare-fun Unit!4990 () Unit!4936)

(assert (=> b!273299 (= lt!113155 Unit!4990)))

(declare-fun lt!113157 () List!3840)

(assert (=> b!273299 (= lt!113157 (list!1570 (BalanceConc!2579 Empty!1285)))))

(declare-fun lt!113177 () List!3840)

(assert (=> b!273299 (= lt!113177 (Cons!3830 (_1!2363 (v!14681 lt!113188)) Nil!3830))))

(declare-fun lt!113186 () List!3840)

(assert (=> b!273299 (= lt!113186 (list!1570 (_1!2362 lt!113167)))))

(declare-fun lt!113178 () Unit!4936)

(declare-fun lemmaConcatAssociativity!432 (List!3840 List!3840 List!3840) Unit!4936)

(assert (=> b!273299 (= lt!113178 (lemmaConcatAssociativity!432 lt!113157 lt!113177 lt!113186))))

(declare-fun ++!1008 (List!3840 List!3840) List!3840)

(assert (=> b!273299 (= (++!1008 (++!1008 lt!113157 lt!113177) lt!113186) (++!1008 lt!113157 (++!1008 lt!113177 lt!113186)))))

(declare-fun lt!113168 () Unit!4936)

(assert (=> b!273299 (= lt!113168 lt!113178)))

(declare-fun lt!113169 () List!3838)

(assert (=> b!273299 (= lt!113169 (++!1002 (list!1567 (BalanceConc!2577 Empty!1284)) (list!1567 (charsOf!376 (_1!2363 (v!14681 lt!113188))))))))

(declare-fun lt!113162 () List!3838)

(assert (=> b!273299 (= lt!113162 (list!1567 (_2!2363 (v!14681 lt!113188))))))

(declare-fun lt!113165 () List!3840)

(assert (=> b!273299 (= lt!113165 (list!1570 (append!97 (BalanceConc!2579 Empty!1285) (_1!2363 (v!14681 lt!113188)))))))

(declare-fun lt!113185 () Unit!4936)

(declare-fun lemmaLexThenLexPrefix!79 (LexerInterface!617 List!3839 List!3838 List!3838 List!3840 List!3840 List!3838) Unit!4936)

(assert (=> b!273299 (= lt!113185 (lemmaLexThenLexPrefix!79 thiss!17480 rules!1920 lt!113169 lt!113162 lt!113165 (list!1570 (_1!2362 lt!113167)) (list!1567 (_2!2362 lt!113167))))))

(assert (=> b!273299 (= (lexList!208 thiss!17480 rules!1920 lt!113169) (tuple2!4301 lt!113165 Nil!3828))))

(declare-fun lt!113159 () Unit!4936)

(assert (=> b!273299 (= lt!113159 lt!113185)))

(declare-fun lt!113156 () BalanceConc!2576)

(assert (=> b!273299 (= lt!113156 (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (_1!2363 (v!14681 lt!113188)))))))

(assert (=> b!273299 (= lt!113175 (maxPrefixZipperSequence!298 thiss!17480 rules!1920 lt!113156))))

(declare-fun c!51870 () Bool)

(assert (=> b!273299 (= c!51870 ((_ is Some!812) lt!113175))))

(assert (=> b!273299 (= (lexRec!92 thiss!17480 rules!1920 (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (_1!2363 (v!14681 lt!113188))))) e!169764)))

(declare-fun lt!113181 () Unit!4936)

(declare-fun Unit!4991 () Unit!4936)

(assert (=> b!273299 (= lt!113181 Unit!4991)))

(assert (=> b!273299 (= lt!113179 (++!1004 (BalanceConc!2577 Empty!1284) (charsOf!376 (_1!2363 (v!14681 lt!113188)))))))

(declare-fun lt!113174 () List!3838)

(assert (=> b!273299 (= lt!113174 (list!1567 lt!113179))))

(declare-fun lt!113171 () List!3838)

(assert (=> b!273299 (= lt!113171 (list!1567 (_2!2363 (v!14681 lt!113188))))))

(declare-fun lt!113170 () Unit!4936)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!77 (List!3838 List!3838) Unit!4936)

(assert (=> b!273299 (= lt!113170 (lemmaConcatTwoListThenFSndIsSuffix!77 lt!113174 lt!113171))))

(declare-fun isSuffix!77 (List!3838 List!3838) Bool)

(assert (=> b!273299 (isSuffix!77 lt!113171 (++!1002 lt!113174 lt!113171))))

(declare-fun lt!113160 () Unit!4936)

(assert (=> b!273299 (= lt!113160 lt!113170)))

(declare-fun lt!113182 () tuple2!4292)

(declare-fun b!273300 () Bool)

(assert (=> b!273300 (= lt!113182 (lexRec!92 thiss!17480 rules!1920 (_2!2363 (v!14681 lt!113164))))))

(assert (=> b!273300 (= e!169765 (tuple2!4293 (prepend!175 (_1!2362 lt!113182) (_1!2363 (v!14681 lt!113164))) (_2!2362 lt!113182)))))

(declare-fun d!80077 () Bool)

(declare-fun e!169762 () Bool)

(assert (=> d!80077 e!169762))

(declare-fun res!124676 () Bool)

(assert (=> d!80077 (=> (not res!124676) (not e!169762))))

(declare-fun lt!113163 () tuple2!4292)

(assert (=> d!80077 (= res!124676 (= (list!1570 (_1!2362 lt!113163)) (list!1570 (_1!2362 (lexRec!92 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))))))

(assert (=> d!80077 (= lt!113163 e!169763)))

(declare-fun c!51869 () Bool)

(assert (=> d!80077 (= c!51869 ((_ is Some!812) lt!113188))))

(declare-fun maxPrefixZipperSequenceV2!77 (LexerInterface!617 List!3839 BalanceConc!2576 BalanceConc!2576) Option!813)

(assert (=> d!80077 (= lt!113188 (maxPrefixZipperSequenceV2!77 thiss!17480 rules!1920 (seqFromList!829 lt!111765) (seqFromList!829 lt!111765)))))

(declare-fun lt!113166 () Unit!4936)

(declare-fun lt!113176 () Unit!4936)

(assert (=> d!80077 (= lt!113166 lt!113176)))

(declare-fun lt!113187 () List!3838)

(declare-fun lt!113172 () List!3838)

(assert (=> d!80077 (isSuffix!77 lt!113187 (++!1002 lt!113172 lt!113187))))

(assert (=> d!80077 (= lt!113176 (lemmaConcatTwoListThenFSndIsSuffix!77 lt!113172 lt!113187))))

(assert (=> d!80077 (= lt!113187 (list!1567 (seqFromList!829 lt!111765)))))

(assert (=> d!80077 (= lt!113172 (list!1567 (BalanceConc!2577 Empty!1284)))))

(assert (=> d!80077 (= (lexTailRecV2!175 thiss!17480 rules!1920 (seqFromList!829 lt!111765) (BalanceConc!2577 Empty!1284) (seqFromList!829 lt!111765) (BalanceConc!2579 Empty!1285)) lt!113163)))

(declare-fun b!273301 () Bool)

(assert (=> b!273301 (= e!169762 (= (list!1567 (_2!2362 lt!113163)) (list!1567 (_2!2362 (lexRec!92 thiss!17480 rules!1920 (seqFromList!829 lt!111765))))))))

(declare-fun b!273302 () Bool)

(assert (=> b!273302 (= e!169763 (tuple2!4293 (BalanceConc!2579 Empty!1285) (seqFromList!829 lt!111765)))))

(declare-fun b!273303 () Bool)

(assert (=> b!273303 (= e!169765 (tuple2!4293 (BalanceConc!2579 Empty!1285) (seqFromList!829 lt!111765)))))

(declare-fun b!273304 () Bool)

(assert (=> b!273304 (= e!169764 (tuple2!4293 (BalanceConc!2579 Empty!1285) lt!113156))))

(assert (= (and d!80077 c!51869) b!273299))

(assert (= (and d!80077 (not c!51869)) b!273302))

(assert (= (and b!273299 c!51871) b!273300))

(assert (= (and b!273299 (not c!51871)) b!273303))

(assert (= (and b!273299 c!51870) b!273298))

(assert (= (and b!273299 (not c!51870)) b!273304))

(assert (= (and d!80077 res!124676) b!273301))

(declare-fun m!348479 () Bool)

(assert (=> b!273298 m!348479))

(declare-fun m!348481 () Bool)

(assert (=> b!273298 m!348481))

(declare-fun m!348483 () Bool)

(assert (=> b!273299 m!348483))

(declare-fun m!348485 () Bool)

(assert (=> b!273299 m!348485))

(declare-fun m!348487 () Bool)

(assert (=> b!273299 m!348487))

(declare-fun m!348489 () Bool)

(assert (=> b!273299 m!348489))

(declare-fun m!348491 () Bool)

(assert (=> b!273299 m!348491))

(declare-fun m!348493 () Bool)

(assert (=> b!273299 m!348493))

(declare-fun m!348495 () Bool)

(assert (=> b!273299 m!348495))

(assert (=> b!273299 m!348485))

(declare-fun m!348497 () Bool)

(assert (=> b!273299 m!348497))

(assert (=> b!273299 m!343673))

(declare-fun m!348499 () Bool)

(assert (=> b!273299 m!348499))

(assert (=> b!273299 m!343673))

(declare-fun m!348501 () Bool)

(assert (=> b!273299 m!348501))

(declare-fun m!348503 () Bool)

(assert (=> b!273299 m!348503))

(declare-fun m!348505 () Bool)

(assert (=> b!273299 m!348505))

(assert (=> b!273299 m!348495))

(declare-fun m!348507 () Bool)

(assert (=> b!273299 m!348507))

(assert (=> b!273299 m!344581))

(declare-fun m!348509 () Bool)

(assert (=> b!273299 m!348509))

(declare-fun m!348511 () Bool)

(assert (=> b!273299 m!348511))

(declare-fun m!348513 () Bool)

(assert (=> b!273299 m!348513))

(declare-fun m!348515 () Bool)

(assert (=> b!273299 m!348515))

(declare-fun m!348517 () Bool)

(assert (=> b!273299 m!348517))

(assert (=> b!273299 m!348511))

(declare-fun m!348519 () Bool)

(assert (=> b!273299 m!348519))

(assert (=> b!273299 m!348513))

(declare-fun m!348521 () Bool)

(assert (=> b!273299 m!348521))

(assert (=> b!273299 m!348489))

(assert (=> b!273299 m!348493))

(declare-fun m!348523 () Bool)

(assert (=> b!273299 m!348523))

(declare-fun m!348525 () Bool)

(assert (=> b!273299 m!348525))

(declare-fun m!348527 () Bool)

(assert (=> b!273299 m!348527))

(declare-fun m!348529 () Bool)

(assert (=> b!273299 m!348529))

(assert (=> b!273299 m!348501))

(assert (=> b!273299 m!348501))

(declare-fun m!348531 () Bool)

(assert (=> b!273299 m!348531))

(assert (=> b!273299 m!343673))

(declare-fun m!348533 () Bool)

(assert (=> b!273299 m!348533))

(assert (=> b!273299 m!348525))

(declare-fun m!348535 () Bool)

(assert (=> b!273299 m!348535))

(declare-fun m!348537 () Bool)

(assert (=> b!273299 m!348537))

(assert (=> b!273299 m!348517))

(declare-fun m!348539 () Bool)

(assert (=> b!273299 m!348539))

(assert (=> b!273299 m!344581))

(assert (=> b!273299 m!348519))

(declare-fun m!348541 () Bool)

(assert (=> b!273299 m!348541))

(declare-fun m!348543 () Bool)

(assert (=> b!273299 m!348543))

(assert (=> b!273299 m!348537))

(declare-fun m!348545 () Bool)

(assert (=> b!273299 m!348545))

(assert (=> b!273299 m!348511))

(declare-fun m!348547 () Bool)

(assert (=> b!273300 m!348547))

(declare-fun m!348549 () Bool)

(assert (=> b!273300 m!348549))

(declare-fun m!348551 () Bool)

(assert (=> b!273301 m!348551))

(assert (=> b!273301 m!343673))

(assert (=> b!273301 m!348499))

(declare-fun m!348553 () Bool)

(assert (=> b!273301 m!348553))

(assert (=> d!80077 m!343673))

(assert (=> d!80077 m!343673))

(declare-fun m!348555 () Bool)

(assert (=> d!80077 m!348555))

(declare-fun m!348557 () Bool)

(assert (=> d!80077 m!348557))

(declare-fun m!348559 () Bool)

(assert (=> d!80077 m!348559))

(declare-fun m!348561 () Bool)

(assert (=> d!80077 m!348561))

(assert (=> d!80077 m!348559))

(assert (=> d!80077 m!343673))

(assert (=> d!80077 m!344259))

(assert (=> d!80077 m!344581))

(assert (=> d!80077 m!343673))

(assert (=> d!80077 m!348499))

(declare-fun m!348563 () Bool)

(assert (=> d!80077 m!348563))

(declare-fun m!348565 () Bool)

(assert (=> d!80077 m!348565))

(assert (=> d!79113 d!80077))

(declare-fun bs!30691 () Bool)

(declare-fun d!80137 () Bool)

(assert (= bs!30691 (and d!80137 d!79371)))

(declare-fun lambda!9268 () Int)

(assert (=> bs!30691 (= (= (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toValue!1470 (transformation!731 (h!9226 rules!1920)))) (= lambda!9268 lambda!9215))))

(declare-fun bs!30692 () Bool)

(assert (= bs!30692 (and d!80137 d!79803)))

(assert (=> bs!30692 (= (= (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toValue!1470 (transformation!731 (rule!1316 separatorToken!170)))) (= lambda!9268 lambda!9246))))

(assert (=> d!80137 true))

(assert (=> d!80137 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465))))) (dynLambda!1975 order!2959 lambda!9268))))

(assert (=> d!80137 (= (equivClasses!242 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toValue!1470 (transformation!731 (rule!1316 (h!9227 tokens!465))))) (Forall2!150 lambda!9268))))

(declare-fun bs!30693 () Bool)

(assert (= bs!30693 d!80137))

(declare-fun m!348567 () Bool)

(assert (=> bs!30693 m!348567))

(assert (=> b!271641 d!80137))

(declare-fun d!80139 () Bool)

(declare-fun res!124677 () Bool)

(declare-fun e!169766 () Bool)

(assert (=> d!80139 (=> res!124677 e!169766)))

(assert (=> d!80139 (= res!124677 ((_ is Nil!3830) (t!38514 tokens!465)))))

(assert (=> d!80139 (= (forall!964 (t!38514 tokens!465) lambda!9171) e!169766)))

(declare-fun b!273305 () Bool)

(declare-fun e!169767 () Bool)

(assert (=> b!273305 (= e!169766 e!169767)))

(declare-fun res!124678 () Bool)

(assert (=> b!273305 (=> (not res!124678) (not e!169767))))

(assert (=> b!273305 (= res!124678 (dynLambda!1973 lambda!9171 (h!9227 (t!38514 tokens!465))))))

(declare-fun b!273306 () Bool)

(assert (=> b!273306 (= e!169767 (forall!964 (t!38514 (t!38514 tokens!465)) lambda!9171))))

(assert (= (and d!80139 (not res!124677)) b!273305))

(assert (= (and b!273305 res!124678) b!273306))

(declare-fun b_lambda!8759 () Bool)

(assert (=> (not b_lambda!8759) (not b!273305)))

(declare-fun m!348569 () Bool)

(assert (=> b!273305 m!348569))

(declare-fun m!348571 () Bool)

(assert (=> b!273306 m!348571))

(assert (=> b!271514 d!80139))

(declare-fun e!169768 () Bool)

(declare-fun lt!113189 () List!3838)

(declare-fun b!273310 () Bool)

(assert (=> b!273310 (= e!169768 (or (not (= (printList!293 thiss!17480 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830))) Nil!3828)) (= lt!113189 (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))))))

(declare-fun b!273308 () Bool)

(declare-fun e!169769 () List!3838)

(assert (=> b!273308 (= e!169769 (Cons!3828 (h!9225 (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) (++!1002 (t!38512 (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) (printList!293 thiss!17480 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830))))))))

(declare-fun d!80141 () Bool)

(assert (=> d!80141 e!169768))

(declare-fun res!124680 () Bool)

(assert (=> d!80141 (=> (not res!124680) (not e!169768))))

(assert (=> d!80141 (= res!124680 (= (content!551 lt!113189) ((_ map or) (content!551 (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) (content!551 (printList!293 thiss!17480 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))))))

(assert (=> d!80141 (= lt!113189 e!169769)))

(declare-fun c!51872 () Bool)

(assert (=> d!80141 (= c!51872 ((_ is Nil!3828) (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))))))

(assert (=> d!80141 (= (++!1002 (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))) (printList!293 thiss!17480 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830)))) lt!113189)))

(declare-fun b!273309 () Bool)

(declare-fun res!124679 () Bool)

(assert (=> b!273309 (=> (not res!124679) (not e!169768))))

(assert (=> b!273309 (= res!124679 (= (size!3053 lt!113189) (+ (size!3053 (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) (size!3053 (printList!293 thiss!17480 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))))))

(declare-fun b!273307 () Bool)

(assert (=> b!273307 (= e!169769 (printList!293 thiss!17480 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830))))))

(assert (= (and d!80141 c!51872) b!273307))

(assert (= (and d!80141 (not c!51872)) b!273308))

(assert (= (and d!80141 res!124680) b!273309))

(assert (= (and b!273309 res!124679) b!273310))

(assert (=> b!273308 m!344643))

(declare-fun m!348573 () Bool)

(assert (=> b!273308 m!348573))

(declare-fun m!348575 () Bool)

(assert (=> d!80141 m!348575))

(assert (=> d!80141 m!344641))

(declare-fun m!348577 () Bool)

(assert (=> d!80141 m!348577))

(assert (=> d!80141 m!344643))

(declare-fun m!348579 () Bool)

(assert (=> d!80141 m!348579))

(declare-fun m!348581 () Bool)

(assert (=> b!273309 m!348581))

(assert (=> b!273309 m!344641))

(declare-fun m!348583 () Bool)

(assert (=> b!273309 m!348583))

(assert (=> b!273309 m!344643))

(declare-fun m!348585 () Bool)

(assert (=> b!273309 m!348585))

(assert (=> b!271732 d!80141))

(declare-fun d!80143 () Bool)

(assert (=> d!80143 (= (list!1567 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))) (list!1571 (c!51394 (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))))))

(declare-fun bs!30694 () Bool)

(assert (= bs!30694 d!80143))

(declare-fun m!348587 () Bool)

(assert (=> bs!30694 m!348587))

(assert (=> b!271732 d!80143))

(declare-fun d!80145 () Bool)

(declare-fun lt!113190 () BalanceConc!2576)

(assert (=> d!80145 (= (list!1567 lt!113190) (originalCharacters!774 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))))

(assert (=> d!80145 (= lt!113190 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) (value!25149 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))))

(assert (=> d!80145 (= (charsOf!376 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))) lt!113190)))

(declare-fun b_lambda!8761 () Bool)

(assert (=> (not b_lambda!8761) (not d!80145)))

(declare-fun t!38798 () Bool)

(declare-fun tb!15637 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))) t!38798) tb!15637))

(declare-fun b!273311 () Bool)

(declare-fun e!169770 () Bool)

(declare-fun tp!102967 () Bool)

(assert (=> b!273311 (= e!169770 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) (value!25149 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))) tp!102967))))

(declare-fun result!19266 () Bool)

(assert (=> tb!15637 (= result!19266 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) (value!25149 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) e!169770))))

(assert (= tb!15637 b!273311))

(declare-fun m!348589 () Bool)

(assert (=> b!273311 m!348589))

(declare-fun m!348591 () Bool)

(assert (=> tb!15637 m!348591))

(assert (=> d!80145 t!38798))

(declare-fun b_and!21907 () Bool)

(assert (= b_and!21861 (and (=> t!38798 result!19266) b_and!21907)))

(declare-fun tb!15639 () Bool)

(declare-fun t!38800 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))) t!38800) tb!15639))

(declare-fun result!19268 () Bool)

(assert (= result!19268 result!19266))

(assert (=> d!80145 t!38800))

(declare-fun b_and!21909 () Bool)

(assert (= b_and!21863 (and (=> t!38800 result!19268) b_and!21909)))

(declare-fun tb!15641 () Bool)

(declare-fun t!38802 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))) t!38802) tb!15641))

(declare-fun result!19270 () Bool)

(assert (= result!19270 result!19266))

(assert (=> d!80145 t!38802))

(declare-fun b_and!21911 () Bool)

(assert (= b_and!21859 (and (=> t!38802 result!19270) b_and!21911)))

(declare-fun t!38804 () Bool)

(declare-fun tb!15643 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))) t!38804) tb!15643))

(declare-fun result!19272 () Bool)

(assert (= result!19272 result!19266))

(assert (=> d!80145 t!38804))

(declare-fun b_and!21913 () Bool)

(assert (= b_and!21867 (and (=> t!38804 result!19272) b_and!21913)))

(declare-fun t!38806 () Bool)

(declare-fun tb!15645 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))) t!38806) tb!15645))

(declare-fun result!19274 () Bool)

(assert (= result!19274 result!19266))

(assert (=> d!80145 t!38806))

(declare-fun b_and!21915 () Bool)

(assert (= b_and!21865 (and (=> t!38806 result!19274) b_and!21915)))

(declare-fun m!348593 () Bool)

(assert (=> d!80145 m!348593))

(declare-fun m!348595 () Bool)

(assert (=> d!80145 m!348595))

(assert (=> b!271732 d!80145))

(declare-fun d!80147 () Bool)

(declare-fun c!51873 () Bool)

(assert (=> d!80147 (= c!51873 ((_ is Cons!3830) (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830))))))

(declare-fun e!169771 () List!3838)

(assert (=> d!80147 (= (printList!293 thiss!17480 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830))) e!169771)))

(declare-fun b!273312 () Bool)

(assert (=> b!273312 (= e!169771 (++!1002 (list!1567 (charsOf!376 (h!9227 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830))))) (printList!293 thiss!17480 (t!38514 (t!38514 (Cons!3830 (h!9227 tokens!465) Nil!3830))))))))

(declare-fun b!273313 () Bool)

(assert (=> b!273313 (= e!169771 Nil!3828)))

(assert (= (and d!80147 c!51873) b!273312))

(assert (= (and d!80147 (not c!51873)) b!273313))

(declare-fun m!348597 () Bool)

(assert (=> b!273312 m!348597))

(assert (=> b!273312 m!348597))

(declare-fun m!348599 () Bool)

(assert (=> b!273312 m!348599))

(declare-fun m!348601 () Bool)

(assert (=> b!273312 m!348601))

(assert (=> b!273312 m!348599))

(assert (=> b!273312 m!348601))

(declare-fun m!348603 () Bool)

(assert (=> b!273312 m!348603))

(assert (=> b!271732 d!80147))

(declare-fun d!80149 () Bool)

(declare-fun lt!113191 () Bool)

(assert (=> d!80149 (= lt!113191 (isEmpty!2432 (list!1567 (_2!2362 lt!112010))))))

(assert (=> d!80149 (= lt!113191 (isEmpty!2443 (c!51394 (_2!2362 lt!112010))))))

(assert (=> d!80149 (= (isEmpty!2434 (_2!2362 lt!112010)) lt!113191)))

(declare-fun bs!30695 () Bool)

(assert (= bs!30695 d!80149))

(declare-fun m!348605 () Bool)

(assert (=> bs!30695 m!348605))

(assert (=> bs!30695 m!348605))

(declare-fun m!348607 () Bool)

(assert (=> bs!30695 m!348607))

(declare-fun m!348609 () Bool)

(assert (=> bs!30695 m!348609))

(assert (=> b!271624 d!80149))

(declare-fun d!80151 () Bool)

(declare-fun lt!113192 () BalanceConc!2576)

(assert (=> d!80151 (= (list!1567 lt!113192) (originalCharacters!774 call!14887))))

(assert (=> d!80151 (= lt!113192 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 call!14887))) (value!25149 call!14887)))))

(assert (=> d!80151 (= (charsOf!376 call!14887) lt!113192)))

(declare-fun b_lambda!8763 () Bool)

(assert (=> (not b_lambda!8763) (not d!80151)))

(declare-fun tb!15647 () Bool)

(declare-fun t!38808 () Bool)

(assert (=> (and b!271211 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 call!14887)))) t!38808) tb!15647))

(declare-fun b!273314 () Bool)

(declare-fun e!169772 () Bool)

(declare-fun tp!102968 () Bool)

(assert (=> b!273314 (= e!169772 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 call!14887))) (value!25149 call!14887)))) tp!102968))))

(declare-fun result!19276 () Bool)

(assert (=> tb!15647 (= result!19276 (and (inv!4741 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 call!14887))) (value!25149 call!14887))) e!169772))))

(assert (= tb!15647 b!273314))

(declare-fun m!348611 () Bool)

(assert (=> b!273314 m!348611))

(declare-fun m!348613 () Bool)

(assert (=> tb!15647 m!348613))

(assert (=> d!80151 t!38808))

(declare-fun b_and!21917 () Bool)

(assert (= b_and!21915 (and (=> t!38808 result!19276) b_and!21917)))

(declare-fun tb!15649 () Bool)

(declare-fun t!38810 () Bool)

(assert (=> (and b!271190 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 call!14887)))) t!38810) tb!15649))

(declare-fun result!19278 () Bool)

(assert (= result!19278 result!19276))

(assert (=> d!80151 t!38810))

(declare-fun b_and!21919 () Bool)

(assert (= b_and!21909 (and (=> t!38810 result!19278) b_and!21919)))

(declare-fun tb!15651 () Bool)

(declare-fun t!38812 () Bool)

(assert (=> (and b!271786 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (toChars!1329 (transformation!731 (rule!1316 call!14887)))) t!38812) tb!15651))

(declare-fun result!19280 () Bool)

(assert (= result!19280 result!19276))

(assert (=> d!80151 t!38812))

(declare-fun b_and!21921 () Bool)

(assert (= b_and!21913 (and (=> t!38812 result!19280) b_and!21921)))

(declare-fun tb!15653 () Bool)

(declare-fun t!38814 () Bool)

(assert (=> (and b!271199 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 call!14887)))) t!38814) tb!15653))

(declare-fun result!19282 () Bool)

(assert (= result!19282 result!19276))

(assert (=> d!80151 t!38814))

(declare-fun b_and!21923 () Bool)

(assert (= b_and!21911 (and (=> t!38814 result!19282) b_and!21923)))

(declare-fun t!38816 () Bool)

(declare-fun tb!15655 () Bool)

(assert (=> (and b!271825 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 call!14887)))) t!38816) tb!15655))

(declare-fun result!19284 () Bool)

(assert (= result!19284 result!19276))

(assert (=> d!80151 t!38816))

(declare-fun b_and!21925 () Bool)

(assert (= b_and!21907 (and (=> t!38816 result!19284) b_and!21925)))

(declare-fun m!348615 () Bool)

(assert (=> d!80151 m!348615))

(declare-fun m!348617 () Bool)

(assert (=> d!80151 m!348617))

(assert (=> b!271606 d!80151))

(declare-fun d!80153 () Bool)

(declare-fun c!51874 () Bool)

(assert (=> d!80153 (= c!51874 ((_ is Nil!3828) lt!111988))))

(declare-fun e!169773 () (InoxSet C!2832))

(assert (=> d!80153 (= (content!551 lt!111988) e!169773)))

(declare-fun b!273315 () Bool)

(assert (=> b!273315 (= e!169773 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!273316 () Bool)

(assert (=> b!273316 (= e!169773 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 lt!111988) true) (content!551 (t!38512 lt!111988))))))

(assert (= (and d!80153 c!51874) b!273315))

(assert (= (and d!80153 (not c!51874)) b!273316))

(declare-fun m!348619 () Bool)

(assert (=> b!273316 m!348619))

(declare-fun m!348621 () Bool)

(assert (=> b!273316 m!348621))

(assert (=> d!79131 d!80153))

(declare-fun d!80155 () Bool)

(declare-fun c!51875 () Bool)

(assert (=> d!80155 (= c!51875 ((_ is Nil!3828) (++!1002 lt!111765 lt!111756)))))

(declare-fun e!169774 () (InoxSet C!2832))

(assert (=> d!80155 (= (content!551 (++!1002 lt!111765 lt!111756)) e!169774)))

(declare-fun b!273317 () Bool)

(assert (=> b!273317 (= e!169774 ((as const (Array C!2832 Bool)) false))))

(declare-fun b!273318 () Bool)

(assert (=> b!273318 (= e!169774 ((_ map or) (store ((as const (Array C!2832 Bool)) false) (h!9225 (++!1002 lt!111765 lt!111756)) true) (content!551 (t!38512 (++!1002 lt!111765 lt!111756)))))))

(assert (= (and d!80155 c!51875) b!273317))

(assert (= (and d!80155 (not c!51875)) b!273318))

(declare-fun m!348623 () Bool)

(assert (=> b!273318 m!348623))

(assert (=> b!273318 m!347917))

(assert (=> d!79131 d!80155))

(assert (=> d!79131 d!79625))

(declare-fun d!80157 () Bool)

(assert (=> d!80157 (= (list!1570 (_1!2362 lt!111967)) (list!1574 (c!51396 (_1!2362 lt!111967))))))

(declare-fun bs!30696 () Bool)

(assert (= bs!30696 d!80157))

(declare-fun m!348625 () Bool)

(assert (=> bs!30696 m!348625))

(assert (=> b!271543 d!80157))

(assert (=> b!271543 d!79365))

(assert (=> b!271543 d!79367))

(assert (=> b!271469 d!79125))

(assert (=> b!271760 d!79781))

(assert (=> b!271760 d!80071))

(assert (=> b!271760 d!79895))

(assert (=> b!271760 d!79787))

(declare-fun d!80159 () Bool)

(assert (=> d!80159 (dynLambda!1973 lambda!9172 (h!9227 tokens!465))))

(assert (=> d!80159 true))

(declare-fun _$7!350 () Unit!4936)

(assert (=> d!80159 (= (choose!2461 tokens!465 lambda!9172 (h!9227 tokens!465)) _$7!350)))

(declare-fun b_lambda!8765 () Bool)

(assert (=> (not b_lambda!8765) (not d!80159)))

(declare-fun bs!30697 () Bool)

(assert (= bs!30697 d!80159))

(assert (=> bs!30697 m!344693))

(assert (=> d!79221 d!80159))

(declare-fun d!80161 () Bool)

(declare-fun res!124681 () Bool)

(declare-fun e!169775 () Bool)

(assert (=> d!80161 (=> res!124681 e!169775)))

(assert (=> d!80161 (= res!124681 ((_ is Nil!3830) tokens!465))))

(assert (=> d!80161 (= (forall!964 tokens!465 lambda!9172) e!169775)))

(declare-fun b!273319 () Bool)

(declare-fun e!169776 () Bool)

(assert (=> b!273319 (= e!169775 e!169776)))

(declare-fun res!124682 () Bool)

(assert (=> b!273319 (=> (not res!124682) (not e!169776))))

(assert (=> b!273319 (= res!124682 (dynLambda!1973 lambda!9172 (h!9227 tokens!465)))))

(declare-fun b!273320 () Bool)

(assert (=> b!273320 (= e!169776 (forall!964 (t!38514 tokens!465) lambda!9172))))

(assert (= (and d!80161 (not res!124681)) b!273319))

(assert (= (and b!273319 res!124682) b!273320))

(declare-fun b_lambda!8767 () Bool)

(assert (=> (not b_lambda!8767) (not b!273319)))

(assert (=> b!273319 m!344693))

(declare-fun m!348627 () Bool)

(assert (=> b!273320 m!348627))

(assert (=> d!79221 d!80161))

(declare-fun d!80163 () Bool)

(declare-fun res!124683 () Bool)

(declare-fun e!169777 () Bool)

(assert (=> d!80163 (=> (not res!124683) (not e!169777))))

(assert (=> d!80163 (= res!124683 (not (isEmpty!2432 (originalCharacters!774 (h!9227 (t!38514 tokens!465))))))))

(assert (=> d!80163 (= (inv!4739 (h!9227 (t!38514 tokens!465))) e!169777)))

(declare-fun b!273321 () Bool)

(declare-fun res!124684 () Bool)

(assert (=> b!273321 (=> (not res!124684) (not e!169777))))

(assert (=> b!273321 (= res!124684 (= (originalCharacters!774 (h!9227 (t!38514 tokens!465))) (list!1567 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))) (value!25149 (h!9227 (t!38514 tokens!465)))))))))

(declare-fun b!273322 () Bool)

(assert (=> b!273322 (= e!169777 (= (size!3051 (h!9227 (t!38514 tokens!465))) (size!3053 (originalCharacters!774 (h!9227 (t!38514 tokens!465))))))))

(assert (= (and d!80163 res!124683) b!273321))

(assert (= (and b!273321 res!124684) b!273322))

(declare-fun b_lambda!8769 () Bool)

(assert (=> (not b_lambda!8769) (not b!273321)))

(assert (=> b!273321 t!38646))

(declare-fun b_and!21927 () Bool)

(assert (= b_and!21921 (and (=> t!38646 result!19120) b_and!21927)))

(assert (=> b!273321 t!38650))

(declare-fun b_and!21929 () Bool)

(assert (= b_and!21919 (and (=> t!38650 result!19124) b_and!21929)))

(assert (=> b!273321 t!38652))

(declare-fun b_and!21931 () Bool)

(assert (= b_and!21917 (and (=> t!38652 result!19126) b_and!21931)))

(assert (=> b!273321 t!38648))

(declare-fun b_and!21933 () Bool)

(assert (= b_and!21925 (and (=> t!38648 result!19122) b_and!21933)))

(assert (=> b!273321 t!38654))

(declare-fun b_and!21935 () Bool)

(assert (= b_and!21923 (and (=> t!38654 result!19128) b_and!21935)))

(declare-fun m!348629 () Bool)

(assert (=> d!80163 m!348629))

(assert (=> b!273321 m!346299))

(assert (=> b!273321 m!346299))

(declare-fun m!348631 () Bool)

(assert (=> b!273321 m!348631))

(declare-fun m!348633 () Bool)

(assert (=> b!273322 m!348633))

(assert (=> b!271783 d!80163))

(declare-fun d!80165 () Bool)

(assert (=> d!80165 (= (list!1567 lt!112062) (list!1571 (c!51394 lt!112062)))))

(declare-fun bs!30698 () Bool)

(assert (= bs!30698 d!80165))

(declare-fun m!348635 () Bool)

(assert (=> bs!30698 m!348635))

(assert (=> d!79197 d!80165))

(declare-fun d!80167 () Bool)

(declare-fun c!51876 () Bool)

(assert (=> d!80167 (= c!51876 ((_ is Cons!3830) (list!1570 lt!111761)))))

(declare-fun e!169778 () List!3838)

(assert (=> d!80167 (= (printList!293 thiss!17480 (list!1570 lt!111761)) e!169778)))

(declare-fun b!273323 () Bool)

(assert (=> b!273323 (= e!169778 (++!1002 (list!1567 (charsOf!376 (h!9227 (list!1570 lt!111761)))) (printList!293 thiss!17480 (t!38514 (list!1570 lt!111761)))))))

(declare-fun b!273324 () Bool)

(assert (=> b!273324 (= e!169778 Nil!3828)))

(assert (= (and d!80167 c!51876) b!273323))

(assert (= (and d!80167 (not c!51876)) b!273324))

(declare-fun m!348637 () Bool)

(assert (=> b!273323 m!348637))

(assert (=> b!273323 m!348637))

(declare-fun m!348639 () Bool)

(assert (=> b!273323 m!348639))

(declare-fun m!348641 () Bool)

(assert (=> b!273323 m!348641))

(assert (=> b!273323 m!348639))

(assert (=> b!273323 m!348641))

(declare-fun m!348643 () Bool)

(assert (=> b!273323 m!348643))

(assert (=> d!79197 d!80167))

(assert (=> d!79197 d!79777))

(assert (=> d!79197 d!79181))

(declare-fun d!80169 () Bool)

(declare-fun lt!113193 () Int)

(assert (=> d!80169 (>= lt!113193 0)))

(declare-fun e!169779 () Int)

(assert (=> d!80169 (= lt!113193 e!169779)))

(declare-fun c!51877 () Bool)

(assert (=> d!80169 (= c!51877 ((_ is Nil!3828) lt!111989))))

(assert (=> d!80169 (= (size!3053 lt!111989) lt!113193)))

(declare-fun b!273325 () Bool)

(assert (=> b!273325 (= e!169779 0)))

(declare-fun b!273326 () Bool)

(assert (=> b!273326 (= e!169779 (+ 1 (size!3053 (t!38512 lt!111989))))))

(assert (= (and d!80169 c!51877) b!273325))

(assert (= (and d!80169 (not c!51877)) b!273326))

(declare-fun m!348645 () Bool)

(assert (=> b!273326 m!348645))

(assert (=> b!271594 d!80169))

(assert (=> b!271594 d!79523))

(assert (=> b!271594 d!79345))

(assert (=> bm!14872 d!79145))

(declare-fun d!80171 () Bool)

(declare-fun lt!113194 () Int)

(assert (=> d!80171 (>= lt!113194 0)))

(declare-fun e!169780 () Int)

(assert (=> d!80171 (= lt!113194 e!169780)))

(declare-fun c!51878 () Bool)

(assert (=> d!80171 (= c!51878 ((_ is Nil!3828) (originalCharacters!774 (h!9227 tokens!465))))))

(assert (=> d!80171 (= (size!3053 (originalCharacters!774 (h!9227 tokens!465))) lt!113194)))

(declare-fun b!273327 () Bool)

(assert (=> b!273327 (= e!169780 0)))

(declare-fun b!273328 () Bool)

(assert (=> b!273328 (= e!169780 (+ 1 (size!3053 (t!38512 (originalCharacters!774 (h!9227 tokens!465))))))))

(assert (= (and d!80171 c!51878) b!273327))

(assert (= (and d!80171 (not c!51878)) b!273328))

(declare-fun m!348647 () Bool)

(assert (=> b!273328 m!348647))

(assert (=> b!271234 d!80171))

(assert (=> bm!14848 d!79381))

(declare-fun e!169781 () Bool)

(assert (=> b!271824 (= tp!102841 e!169781)))

(declare-fun b!273332 () Bool)

(declare-fun tp!102972 () Bool)

(declare-fun tp!102973 () Bool)

(assert (=> b!273332 (= e!169781 (and tp!102972 tp!102973))))

(declare-fun b!273331 () Bool)

(declare-fun tp!102971 () Bool)

(assert (=> b!273331 (= e!169781 tp!102971)))

(declare-fun b!273329 () Bool)

(assert (=> b!273329 (= e!169781 tp_is_empty!1815)))

(declare-fun b!273330 () Bool)

(declare-fun tp!102969 () Bool)

(declare-fun tp!102970 () Bool)

(assert (=> b!273330 (= e!169781 (and tp!102969 tp!102970))))

(assert (= (and b!271824 ((_ is ElementMatch!955) (regex!731 (h!9226 (t!38513 rules!1920))))) b!273329))

(assert (= (and b!271824 ((_ is Concat!1709) (regex!731 (h!9226 (t!38513 rules!1920))))) b!273330))

(assert (= (and b!271824 ((_ is Star!955) (regex!731 (h!9226 (t!38513 rules!1920))))) b!273331))

(assert (= (and b!271824 ((_ is Union!955) (regex!731 (h!9226 (t!38513 rules!1920))))) b!273332))

(declare-fun b!273335 () Bool)

(declare-fun b_free!10085 () Bool)

(declare-fun b_next!10085 () Bool)

(assert (=> b!273335 (= b_free!10085 (not b_next!10085))))

(declare-fun tp!102974 () Bool)

(declare-fun b_and!21937 () Bool)

(assert (=> b!273335 (= tp!102974 b_and!21937)))

(declare-fun b_free!10087 () Bool)

(declare-fun b_next!10087 () Bool)

(assert (=> b!273335 (= b_free!10087 (not b_next!10087))))

(declare-fun t!38818 () Bool)

(declare-fun tb!15657 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0))))) t!38818) tb!15657))

(declare-fun result!19286 () Bool)

(assert (= result!19286 result!19140))

(assert (=> d!79723 t!38818))

(declare-fun t!38820 () Bool)

(declare-fun tb!15659 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 call!14852)))) t!38820) tb!15659))

(declare-fun result!19288 () Bool)

(assert (= result!19288 result!19190))

(assert (=> d!80015 t!38820))

(declare-fun t!38822 () Bool)

(declare-fun tb!15661 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170)))) t!38822) tb!15661))

(declare-fun result!19290 () Bool)

(assert (= result!19290 result!19022))

(assert (=> d!79125 t!38822))

(declare-fun t!38824 () Bool)

(declare-fun tb!15663 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))) t!38824) tb!15663))

(declare-fun result!19292 () Bool)

(assert (= result!19292 result!19160))

(assert (=> d!79797 t!38824))

(declare-fun tb!15665 () Bool)

(declare-fun t!38826 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) t!38826) tb!15665))

(declare-fun result!19294 () Bool)

(assert (= result!19294 result!19000))

(assert (=> d!79145 t!38826))

(declare-fun t!38828 () Bool)

(declare-fun tb!15667 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))) t!38828) tb!15667))

(declare-fun result!19296 () Bool)

(assert (= result!19296 result!19070))

(assert (=> d!79323 t!38828))

(declare-fun tb!15669 () Bool)

(declare-fun t!38830 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))) t!38830) tb!15669))

(declare-fun result!19298 () Bool)

(assert (= result!19298 result!19080))

(assert (=> d!79349 t!38830))

(declare-fun tb!15671 () Bool)

(declare-fun t!38832 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0))))) t!38832) tb!15671))

(declare-fun result!19300 () Bool)

(assert (= result!19300 result!19150))

(assert (=> d!79761 t!38832))

(assert (=> b!271740 t!38822))

(declare-fun t!38834 () Bool)

(declare-fun tb!15673 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))) t!38834) tb!15673))

(declare-fun result!19302 () Bool)

(assert (= result!19302 result!19266))

(assert (=> d!80145 t!38834))

(declare-fun tb!15675 () Bool)

(declare-fun t!38836 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 call!14887)))) t!38836) tb!15675))

(declare-fun result!19304 () Bool)

(assert (= result!19304 result!19276))

(assert (=> d!80151 t!38836))

(assert (=> b!271233 t!38826))

(declare-fun t!38838 () Bool)

(declare-fun tb!15677 () Bool)

(assert (=> (and b!273335 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) t!38838) tb!15677))

(declare-fun result!19306 () Bool)

(assert (= result!19306 result!19120))

(assert (=> d!79637 t!38838))

(assert (=> b!273321 t!38838))

(declare-fun b_and!21939 () Bool)

(declare-fun tp!102976 () Bool)

(assert (=> b!273335 (= tp!102976 (and (=> t!38832 result!19300) (=> t!38820 result!19288) (=> t!38830 result!19298) (=> t!38824 result!19292) (=> t!38826 result!19294) (=> t!38828 result!19296) (=> t!38818 result!19286) (=> t!38822 result!19290) (=> t!38834 result!19302) (=> t!38836 result!19304) (=> t!38838 result!19306) b_and!21939))))

(declare-fun e!169784 () Bool)

(assert (=> b!273335 (= e!169784 (and tp!102974 tp!102976))))

(declare-fun b!273334 () Bool)

(declare-fun e!169783 () Bool)

(declare-fun tp!102977 () Bool)

(assert (=> b!273334 (= e!169783 (and tp!102977 (inv!4735 (tag!941 (h!9226 (t!38513 (t!38513 rules!1920))))) (inv!4738 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) e!169784))))

(declare-fun b!273333 () Bool)

(declare-fun e!169782 () Bool)

(declare-fun tp!102975 () Bool)

(assert (=> b!273333 (= e!169782 (and e!169783 tp!102975))))

(assert (=> b!271823 (= tp!102839 e!169782)))

(assert (= b!273334 b!273335))

(assert (= b!273333 b!273334))

(assert (= (and b!271823 ((_ is Cons!3829) (t!38513 (t!38513 rules!1920)))) b!273333))

(declare-fun m!348649 () Bool)

(assert (=> b!273334 m!348649))

(declare-fun m!348651 () Bool)

(assert (=> b!273334 m!348651))

(declare-fun b!273338 () Bool)

(declare-fun e!169788 () Bool)

(assert (=> b!273338 (= e!169788 true)))

(declare-fun b!273337 () Bool)

(declare-fun e!169787 () Bool)

(assert (=> b!273337 (= e!169787 e!169788)))

(declare-fun b!273336 () Bool)

(declare-fun e!169786 () Bool)

(assert (=> b!273336 (= e!169786 e!169787)))

(assert (=> b!271826 e!169786))

(assert (= b!273337 b!273338))

(assert (= b!273336 b!273337))

(assert (= (and b!271826 ((_ is Cons!3829) (t!38513 (t!38513 rules!1920)))) b!273336))

(assert (=> b!273338 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920)))))) (dynLambda!1968 order!2955 lambda!9172))))

(assert (=> b!273338 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920)))))) (dynLambda!1968 order!2955 lambda!9172))))

(declare-fun b!273341 () Bool)

(declare-fun e!169791 () Bool)

(assert (=> b!273341 (= e!169791 true)))

(declare-fun b!273340 () Bool)

(declare-fun e!169790 () Bool)

(assert (=> b!273340 (= e!169790 e!169791)))

(declare-fun b!273339 () Bool)

(declare-fun e!169789 () Bool)

(assert (=> b!273339 (= e!169789 e!169790)))

(assert (=> b!271382 e!169789))

(assert (= b!273340 b!273341))

(assert (= b!273339 b!273340))

(assert (= (and b!271382 ((_ is Cons!3829) (t!38513 rules!1920))) b!273339))

(assert (=> b!273341 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9192))))

(assert (=> b!273341 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9192))))

(declare-fun e!169796 () Bool)

(declare-fun tp!102984 () Bool)

(declare-fun b!273350 () Bool)

(declare-fun tp!102986 () Bool)

(assert (=> b!273350 (= e!169796 (and (inv!4740 (left!3152 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))))) tp!102986 (inv!4740 (right!3482 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))))) tp!102984))))

(declare-fun b!273352 () Bool)

(declare-fun e!169797 () Bool)

(declare-fun tp!102985 () Bool)

(assert (=> b!273352 (= e!169797 tp!102985)))

(declare-fun b!273351 () Bool)

(declare-fun inv!4748 (IArray!2569) Bool)

(assert (=> b!273351 (= e!169796 (and (inv!4748 (xs!3883 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))))) e!169797))))

(assert (=> b!271572 (= tp!102729 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170)))) e!169796))))

(assert (= (and b!271572 ((_ is Node!1284) (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))))) b!273350))

(assert (= b!273351 b!273352))

(assert (= (and b!271572 ((_ is Leaf!1989) (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (value!25149 separatorToken!170))))) b!273351))

(declare-fun m!348653 () Bool)

(assert (=> b!273350 m!348653))

(declare-fun m!348655 () Bool)

(assert (=> b!273350 m!348655))

(declare-fun m!348657 () Bool)

(assert (=> b!273351 m!348657))

(assert (=> b!271572 m!344317))

(declare-fun b!273355 () Bool)

(declare-fun e!169800 () Bool)

(assert (=> b!273355 (= e!169800 true)))

(declare-fun b!273354 () Bool)

(declare-fun e!169799 () Bool)

(assert (=> b!273354 (= e!169799 e!169800)))

(declare-fun b!273353 () Bool)

(declare-fun e!169798 () Bool)

(assert (=> b!273353 (= e!169798 e!169799)))

(assert (=> b!271470 e!169798))

(assert (= b!273354 b!273355))

(assert (= b!273353 b!273354))

(assert (= (and b!271470 ((_ is Cons!3829) (t!38513 rules!1920))) b!273353))

(assert (=> b!273355 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9200))))

(assert (=> b!273355 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9200))))

(declare-fun b!273358 () Bool)

(declare-fun e!169803 () Bool)

(assert (=> b!273358 (= e!169803 true)))

(declare-fun b!273357 () Bool)

(declare-fun e!169802 () Bool)

(assert (=> b!273357 (= e!169802 e!169803)))

(declare-fun b!273356 () Bool)

(declare-fun e!169801 () Bool)

(assert (=> b!273356 (= e!169801 e!169802)))

(assert (=> b!271617 e!169801))

(assert (= b!273357 b!273358))

(assert (= b!273356 b!273357))

(assert (= (and b!271617 ((_ is Cons!3829) (t!38513 rules!1920))) b!273356))

(assert (=> b!273358 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9206))))

(assert (=> b!273358 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9206))))

(declare-fun e!169804 () Bool)

(assert (=> b!271808 (= tp!102820 e!169804)))

(declare-fun b!273362 () Bool)

(declare-fun tp!102990 () Bool)

(declare-fun tp!102991 () Bool)

(assert (=> b!273362 (= e!169804 (and tp!102990 tp!102991))))

(declare-fun b!273361 () Bool)

(declare-fun tp!102989 () Bool)

(assert (=> b!273361 (= e!169804 tp!102989)))

(declare-fun b!273359 () Bool)

(assert (=> b!273359 (= e!169804 tp_is_empty!1815)))

(declare-fun b!273360 () Bool)

(declare-fun tp!102987 () Bool)

(declare-fun tp!102988 () Bool)

(assert (=> b!273360 (= e!169804 (and tp!102987 tp!102988))))

(assert (= (and b!271808 ((_ is ElementMatch!955) (regOne!2422 (regex!731 (rule!1316 separatorToken!170))))) b!273359))

(assert (= (and b!271808 ((_ is Concat!1709) (regOne!2422 (regex!731 (rule!1316 separatorToken!170))))) b!273360))

(assert (= (and b!271808 ((_ is Star!955) (regOne!2422 (regex!731 (rule!1316 separatorToken!170))))) b!273361))

(assert (= (and b!271808 ((_ is Union!955) (regOne!2422 (regex!731 (rule!1316 separatorToken!170))))) b!273362))

(declare-fun e!169805 () Bool)

(assert (=> b!271808 (= tp!102821 e!169805)))

(declare-fun b!273366 () Bool)

(declare-fun tp!102995 () Bool)

(declare-fun tp!102996 () Bool)

(assert (=> b!273366 (= e!169805 (and tp!102995 tp!102996))))

(declare-fun b!273365 () Bool)

(declare-fun tp!102994 () Bool)

(assert (=> b!273365 (= e!169805 tp!102994)))

(declare-fun b!273363 () Bool)

(assert (=> b!273363 (= e!169805 tp_is_empty!1815)))

(declare-fun b!273364 () Bool)

(declare-fun tp!102992 () Bool)

(declare-fun tp!102993 () Bool)

(assert (=> b!273364 (= e!169805 (and tp!102992 tp!102993))))

(assert (= (and b!271808 ((_ is ElementMatch!955) (regTwo!2422 (regex!731 (rule!1316 separatorToken!170))))) b!273363))

(assert (= (and b!271808 ((_ is Concat!1709) (regTwo!2422 (regex!731 (rule!1316 separatorToken!170))))) b!273364))

(assert (= (and b!271808 ((_ is Star!955) (regTwo!2422 (regex!731 (rule!1316 separatorToken!170))))) b!273365))

(assert (= (and b!271808 ((_ is Union!955) (regTwo!2422 (regex!731 (rule!1316 separatorToken!170))))) b!273366))

(declare-fun e!169806 () Bool)

(assert (=> b!271810 (= tp!102823 e!169806)))

(declare-fun b!273370 () Bool)

(declare-fun tp!103000 () Bool)

(declare-fun tp!103001 () Bool)

(assert (=> b!273370 (= e!169806 (and tp!103000 tp!103001))))

(declare-fun b!273369 () Bool)

(declare-fun tp!102999 () Bool)

(assert (=> b!273369 (= e!169806 tp!102999)))

(declare-fun b!273367 () Bool)

(assert (=> b!273367 (= e!169806 tp_is_empty!1815)))

(declare-fun b!273368 () Bool)

(declare-fun tp!102997 () Bool)

(declare-fun tp!102998 () Bool)

(assert (=> b!273368 (= e!169806 (and tp!102997 tp!102998))))

(assert (= (and b!271810 ((_ is ElementMatch!955) (regOne!2423 (regex!731 (rule!1316 separatorToken!170))))) b!273367))

(assert (= (and b!271810 ((_ is Concat!1709) (regOne!2423 (regex!731 (rule!1316 separatorToken!170))))) b!273368))

(assert (= (and b!271810 ((_ is Star!955) (regOne!2423 (regex!731 (rule!1316 separatorToken!170))))) b!273369))

(assert (= (and b!271810 ((_ is Union!955) (regOne!2423 (regex!731 (rule!1316 separatorToken!170))))) b!273370))

(declare-fun e!169807 () Bool)

(assert (=> b!271810 (= tp!102824 e!169807)))

(declare-fun b!273374 () Bool)

(declare-fun tp!103005 () Bool)

(declare-fun tp!103006 () Bool)

(assert (=> b!273374 (= e!169807 (and tp!103005 tp!103006))))

(declare-fun b!273373 () Bool)

(declare-fun tp!103004 () Bool)

(assert (=> b!273373 (= e!169807 tp!103004)))

(declare-fun b!273371 () Bool)

(assert (=> b!273371 (= e!169807 tp_is_empty!1815)))

(declare-fun b!273372 () Bool)

(declare-fun tp!103002 () Bool)

(declare-fun tp!103003 () Bool)

(assert (=> b!273372 (= e!169807 (and tp!103002 tp!103003))))

(assert (= (and b!271810 ((_ is ElementMatch!955) (regTwo!2423 (regex!731 (rule!1316 separatorToken!170))))) b!273371))

(assert (= (and b!271810 ((_ is Concat!1709) (regTwo!2423 (regex!731 (rule!1316 separatorToken!170))))) b!273372))

(assert (= (and b!271810 ((_ is Star!955) (regTwo!2423 (regex!731 (rule!1316 separatorToken!170))))) b!273373))

(assert (= (and b!271810 ((_ is Union!955) (regTwo!2423 (regex!731 (rule!1316 separatorToken!170))))) b!273374))

(declare-fun e!169808 () Bool)

(assert (=> b!271809 (= tp!102822 e!169808)))

(declare-fun b!273378 () Bool)

(declare-fun tp!103010 () Bool)

(declare-fun tp!103011 () Bool)

(assert (=> b!273378 (= e!169808 (and tp!103010 tp!103011))))

(declare-fun b!273377 () Bool)

(declare-fun tp!103009 () Bool)

(assert (=> b!273377 (= e!169808 tp!103009)))

(declare-fun b!273375 () Bool)

(assert (=> b!273375 (= e!169808 tp_is_empty!1815)))

(declare-fun b!273376 () Bool)

(declare-fun tp!103007 () Bool)

(declare-fun tp!103008 () Bool)

(assert (=> b!273376 (= e!169808 (and tp!103007 tp!103008))))

(assert (= (and b!271809 ((_ is ElementMatch!955) (reg!1284 (regex!731 (rule!1316 separatorToken!170))))) b!273375))

(assert (= (and b!271809 ((_ is Concat!1709) (reg!1284 (regex!731 (rule!1316 separatorToken!170))))) b!273376))

(assert (= (and b!271809 ((_ is Star!955) (reg!1284 (regex!731 (rule!1316 separatorToken!170))))) b!273377))

(assert (= (and b!271809 ((_ is Union!955) (reg!1284 (regex!731 (rule!1316 separatorToken!170))))) b!273378))

(declare-fun b!273379 () Bool)

(declare-fun tp!103012 () Bool)

(declare-fun e!169809 () Bool)

(declare-fun tp!103014 () Bool)

(assert (=> b!273379 (= e!169809 (and (inv!4740 (left!3152 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))))) tp!103014 (inv!4740 (right!3482 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))))) tp!103012))))

(declare-fun b!273381 () Bool)

(declare-fun e!169810 () Bool)

(declare-fun tp!103013 () Bool)

(assert (=> b!273381 (= e!169810 tp!103013)))

(declare-fun b!273380 () Bool)

(assert (=> b!273380 (= e!169809 (and (inv!4748 (xs!3883 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))))) e!169810))))

(assert (=> b!271239 (= tp!102724 (and (inv!4740 (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465))))) e!169809))))

(assert (= (and b!271239 ((_ is Node!1284) (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))))) b!273379))

(assert (= b!273380 b!273381))

(assert (= (and b!271239 ((_ is Leaf!1989) (c!51394 (dynLambda!1971 (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (value!25149 (h!9227 tokens!465)))))) b!273380))

(declare-fun m!348659 () Bool)

(assert (=> b!273379 m!348659))

(declare-fun m!348661 () Bool)

(assert (=> b!273379 m!348661))

(declare-fun m!348663 () Bool)

(assert (=> b!273380 m!348663))

(assert (=> b!271239 m!343773))

(declare-fun b!273384 () Bool)

(declare-fun e!169813 () Bool)

(assert (=> b!273384 (= e!169813 true)))

(declare-fun b!273383 () Bool)

(declare-fun e!169812 () Bool)

(assert (=> b!273383 (= e!169812 e!169813)))

(declare-fun b!273382 () Bool)

(declare-fun e!169811 () Bool)

(assert (=> b!273382 (= e!169811 e!169812)))

(assert (=> b!271273 e!169811))

(assert (= b!273383 b!273384))

(assert (= b!273382 b!273383))

(assert (= (and b!271273 ((_ is Cons!3829) (t!38513 rules!1920))) b!273382))

(assert (=> b!273384 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9183))))

(assert (=> b!273384 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9183))))

(declare-fun b!273385 () Bool)

(declare-fun e!169814 () Bool)

(declare-fun tp!103015 () Bool)

(assert (=> b!273385 (= e!169814 (and tp_is_empty!1815 tp!103015))))

(assert (=> b!271806 (= tp!102819 e!169814)))

(assert (= (and b!271806 ((_ is Cons!3828) (t!38512 (originalCharacters!774 separatorToken!170)))) b!273385))

(declare-fun b!273386 () Bool)

(declare-fun e!169815 () Bool)

(declare-fun tp!103016 () Bool)

(assert (=> b!273386 (= e!169815 (and tp_is_empty!1815 tp!103016))))

(assert (=> b!271791 (= tp!102803 e!169815)))

(assert (= (and b!271791 ((_ is Cons!3828) (t!38512 (originalCharacters!774 (h!9227 tokens!465))))) b!273386))

(declare-fun b!273387 () Bool)

(declare-fun e!169816 () Bool)

(declare-fun tp!103017 () Bool)

(assert (=> b!273387 (= e!169816 (and tp_is_empty!1815 tp!103017))))

(assert (=> b!271784 (= tp!102796 e!169816)))

(assert (= (and b!271784 ((_ is Cons!3828) (originalCharacters!774 (h!9227 (t!38514 tokens!465))))) b!273387))

(declare-fun e!169817 () Bool)

(assert (=> b!271803 (= tp!102814 e!169817)))

(declare-fun b!273391 () Bool)

(declare-fun tp!103021 () Bool)

(declare-fun tp!103022 () Bool)

(assert (=> b!273391 (= e!169817 (and tp!103021 tp!103022))))

(declare-fun b!273390 () Bool)

(declare-fun tp!103020 () Bool)

(assert (=> b!273390 (= e!169817 tp!103020)))

(declare-fun b!273388 () Bool)

(assert (=> b!273388 (= e!169817 tp_is_empty!1815)))

(declare-fun b!273389 () Bool)

(declare-fun tp!103018 () Bool)

(declare-fun tp!103019 () Bool)

(assert (=> b!273389 (= e!169817 (and tp!103018 tp!103019))))

(assert (= (and b!271803 ((_ is ElementMatch!955) (regOne!2422 (regex!731 (h!9226 rules!1920))))) b!273388))

(assert (= (and b!271803 ((_ is Concat!1709) (regOne!2422 (regex!731 (h!9226 rules!1920))))) b!273389))

(assert (= (and b!271803 ((_ is Star!955) (regOne!2422 (regex!731 (h!9226 rules!1920))))) b!273390))

(assert (= (and b!271803 ((_ is Union!955) (regOne!2422 (regex!731 (h!9226 rules!1920))))) b!273391))

(declare-fun e!169818 () Bool)

(assert (=> b!271803 (= tp!102815 e!169818)))

(declare-fun b!273395 () Bool)

(declare-fun tp!103026 () Bool)

(declare-fun tp!103027 () Bool)

(assert (=> b!273395 (= e!169818 (and tp!103026 tp!103027))))

(declare-fun b!273394 () Bool)

(declare-fun tp!103025 () Bool)

(assert (=> b!273394 (= e!169818 tp!103025)))

(declare-fun b!273392 () Bool)

(assert (=> b!273392 (= e!169818 tp_is_empty!1815)))

(declare-fun b!273393 () Bool)

(declare-fun tp!103023 () Bool)

(declare-fun tp!103024 () Bool)

(assert (=> b!273393 (= e!169818 (and tp!103023 tp!103024))))

(assert (= (and b!271803 ((_ is ElementMatch!955) (regTwo!2422 (regex!731 (h!9226 rules!1920))))) b!273392))

(assert (= (and b!271803 ((_ is Concat!1709) (regTwo!2422 (regex!731 (h!9226 rules!1920))))) b!273393))

(assert (= (and b!271803 ((_ is Star!955) (regTwo!2422 (regex!731 (h!9226 rules!1920))))) b!273394))

(assert (= (and b!271803 ((_ is Union!955) (regTwo!2422 (regex!731 (h!9226 rules!1920))))) b!273395))

(declare-fun b!273399 () Bool)

(declare-fun b_free!10089 () Bool)

(declare-fun b_next!10089 () Bool)

(assert (=> b!273399 (= b_free!10089 (not b_next!10089))))

(declare-fun tp!103031 () Bool)

(declare-fun b_and!21941 () Bool)

(assert (=> b!273399 (= tp!103031 b_and!21941)))

(declare-fun b_free!10091 () Bool)

(declare-fun b_next!10091 () Bool)

(assert (=> b!273399 (= b_free!10091 (not b_next!10091))))

(declare-fun t!38840 () Bool)

(declare-fun tb!15679 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111755 0))))) t!38840) tb!15679))

(declare-fun result!19310 () Bool)

(assert (= result!19310 result!19140))

(assert (=> d!79723 t!38840))

(declare-fun tb!15681 () Bool)

(declare-fun t!38842 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 call!14852)))) t!38842) tb!15681))

(declare-fun result!19312 () Bool)

(assert (= result!19312 result!19190))

(assert (=> d!80015 t!38842))

(declare-fun tb!15683 () Bool)

(declare-fun t!38844 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 separatorToken!170)))) t!38844) tb!15683))

(declare-fun result!19314 () Bool)

(assert (= result!19314 result!19022))

(assert (=> d!79125 t!38844))

(declare-fun tb!15685 () Bool)

(declare-fun t!38846 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51437 call!14850 (ite c!51435 separatorToken!170 call!14852)))))) t!38846) tb!15685))

(declare-fun result!19316 () Bool)

(assert (= result!19316 result!19160))

(assert (=> d!79797 t!38846))

(declare-fun t!38848 () Bool)

(declare-fun tb!15687 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465))))) t!38848) tb!15687))

(declare-fun result!19318 () Bool)

(assert (= result!19318 result!19000))

(assert (=> d!79145 t!38848))

(declare-fun t!38850 () Bool)

(declare-fun tb!15689 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0))))) t!38850) tb!15689))

(declare-fun result!19320 () Bool)

(assert (= result!19320 result!19070))

(assert (=> d!79323 t!38850))

(declare-fun tb!15691 () Bool)

(declare-fun t!38852 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (ite c!51489 call!14885 (ite c!51487 separatorToken!170 call!14887)))))) t!38852) tb!15691))

(declare-fun result!19322 () Bool)

(assert (= result!19322 result!19080))

(assert (=> d!79349 t!38852))

(declare-fun t!38854 () Bool)

(declare-fun tb!15693 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (apply!773 lt!111761 0))))) t!38854) tb!15693))

(declare-fun result!19324 () Bool)

(assert (= result!19324 result!19150))

(assert (=> d!79761 t!38854))

(assert (=> b!271740 t!38844))

(declare-fun t!38856 () Bool)

(declare-fun tb!15695 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (Cons!3830 (h!9227 tokens!465) Nil!3830)))))) t!38856) tb!15695))

(declare-fun result!19326 () Bool)

(assert (= result!19326 result!19266))

(assert (=> d!80145 t!38856))

(declare-fun t!38858 () Bool)

(declare-fun tb!15697 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 call!14887)))) t!38858) tb!15697))

(declare-fun result!19328 () Bool)

(assert (= result!19328 result!19276))

(assert (=> d!80151 t!38858))

(assert (=> b!271233 t!38848))

(declare-fun t!38860 () Bool)

(declare-fun tb!15699 () Bool)

(assert (=> (and b!273399 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) t!38860) tb!15699))

(declare-fun result!19330 () Bool)

(assert (= result!19330 result!19120))

(assert (=> d!79637 t!38860))

(assert (=> b!273321 t!38860))

(declare-fun tp!103032 () Bool)

(declare-fun b_and!21943 () Bool)

(assert (=> b!273399 (= tp!103032 (and (=> t!38856 result!19326) (=> t!38850 result!19320) (=> t!38842 result!19312) (=> t!38848 result!19318) (=> t!38840 result!19310) (=> t!38854 result!19324) (=> t!38844 result!19314) (=> t!38860 result!19330) (=> t!38846 result!19316) (=> t!38858 result!19328) (=> t!38852 result!19322) b_and!21943))))

(declare-fun b!273396 () Bool)

(declare-fun e!169823 () Bool)

(declare-fun tp!103029 () Bool)

(declare-fun e!169822 () Bool)

(assert (=> b!273396 (= e!169822 (and (inv!4739 (h!9227 (t!38514 (t!38514 tokens!465)))) e!169823 tp!103029))))

(declare-fun tp!103028 () Bool)

(declare-fun e!169821 () Bool)

(declare-fun b!273397 () Bool)

(assert (=> b!273397 (= e!169823 (and (inv!21 (value!25149 (h!9227 (t!38514 (t!38514 tokens!465))))) e!169821 tp!103028))))

(declare-fun b!273398 () Bool)

(declare-fun tp!103030 () Bool)

(declare-fun e!169819 () Bool)

(assert (=> b!273398 (= e!169821 (and tp!103030 (inv!4735 (tag!941 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (inv!4738 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) e!169819))))

(assert (=> b!271783 (= tp!102797 e!169822)))

(assert (=> b!273399 (= e!169819 (and tp!103031 tp!103032))))

(assert (= b!273398 b!273399))

(assert (= b!273397 b!273398))

(assert (= b!273396 b!273397))

(assert (= (and b!271783 ((_ is Cons!3830) (t!38514 (t!38514 tokens!465)))) b!273396))

(declare-fun m!348665 () Bool)

(assert (=> b!273396 m!348665))

(declare-fun m!348667 () Bool)

(assert (=> b!273397 m!348667))

(declare-fun m!348669 () Bool)

(assert (=> b!273398 m!348669))

(declare-fun m!348671 () Bool)

(assert (=> b!273398 m!348671))

(declare-fun e!169825 () Bool)

(assert (=> b!271785 (= tp!102798 e!169825)))

(declare-fun b!273403 () Bool)

(declare-fun tp!103036 () Bool)

(declare-fun tp!103037 () Bool)

(assert (=> b!273403 (= e!169825 (and tp!103036 tp!103037))))

(declare-fun b!273402 () Bool)

(declare-fun tp!103035 () Bool)

(assert (=> b!273402 (= e!169825 tp!103035)))

(declare-fun b!273400 () Bool)

(assert (=> b!273400 (= e!169825 tp_is_empty!1815)))

(declare-fun b!273401 () Bool)

(declare-fun tp!103033 () Bool)

(declare-fun tp!103034 () Bool)

(assert (=> b!273401 (= e!169825 (and tp!103033 tp!103034))))

(assert (= (and b!271785 ((_ is ElementMatch!955) (regex!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) b!273400))

(assert (= (and b!271785 ((_ is Concat!1709) (regex!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) b!273401))

(assert (= (and b!271785 ((_ is Star!955) (regex!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) b!273402))

(assert (= (and b!271785 ((_ is Union!955) (regex!731 (rule!1316 (h!9227 (t!38514 tokens!465)))))) b!273403))

(declare-fun e!169826 () Bool)

(assert (=> b!271812 (= tp!102825 e!169826)))

(declare-fun b!273407 () Bool)

(declare-fun tp!103041 () Bool)

(declare-fun tp!103042 () Bool)

(assert (=> b!273407 (= e!169826 (and tp!103041 tp!103042))))

(declare-fun b!273406 () Bool)

(declare-fun tp!103040 () Bool)

(assert (=> b!273406 (= e!169826 tp!103040)))

(declare-fun b!273404 () Bool)

(assert (=> b!273404 (= e!169826 tp_is_empty!1815)))

(declare-fun b!273405 () Bool)

(declare-fun tp!103038 () Bool)

(declare-fun tp!103039 () Bool)

(assert (=> b!273405 (= e!169826 (and tp!103038 tp!103039))))

(assert (= (and b!271812 ((_ is ElementMatch!955) (regOne!2422 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273404))

(assert (= (and b!271812 ((_ is Concat!1709) (regOne!2422 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273405))

(assert (= (and b!271812 ((_ is Star!955) (regOne!2422 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273406))

(assert (= (and b!271812 ((_ is Union!955) (regOne!2422 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273407))

(declare-fun e!169827 () Bool)

(assert (=> b!271812 (= tp!102826 e!169827)))

(declare-fun b!273411 () Bool)

(declare-fun tp!103046 () Bool)

(declare-fun tp!103047 () Bool)

(assert (=> b!273411 (= e!169827 (and tp!103046 tp!103047))))

(declare-fun b!273410 () Bool)

(declare-fun tp!103045 () Bool)

(assert (=> b!273410 (= e!169827 tp!103045)))

(declare-fun b!273408 () Bool)

(assert (=> b!273408 (= e!169827 tp_is_empty!1815)))

(declare-fun b!273409 () Bool)

(declare-fun tp!103043 () Bool)

(declare-fun tp!103044 () Bool)

(assert (=> b!273409 (= e!169827 (and tp!103043 tp!103044))))

(assert (= (and b!271812 ((_ is ElementMatch!955) (regTwo!2422 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273408))

(assert (= (and b!271812 ((_ is Concat!1709) (regTwo!2422 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273409))

(assert (= (and b!271812 ((_ is Star!955) (regTwo!2422 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273410))

(assert (= (and b!271812 ((_ is Union!955) (regTwo!2422 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273411))

(declare-fun e!169828 () Bool)

(assert (=> b!271804 (= tp!102816 e!169828)))

(declare-fun b!273415 () Bool)

(declare-fun tp!103051 () Bool)

(declare-fun tp!103052 () Bool)

(assert (=> b!273415 (= e!169828 (and tp!103051 tp!103052))))

(declare-fun b!273414 () Bool)

(declare-fun tp!103050 () Bool)

(assert (=> b!273414 (= e!169828 tp!103050)))

(declare-fun b!273412 () Bool)

(assert (=> b!273412 (= e!169828 tp_is_empty!1815)))

(declare-fun b!273413 () Bool)

(declare-fun tp!103048 () Bool)

(declare-fun tp!103049 () Bool)

(assert (=> b!273413 (= e!169828 (and tp!103048 tp!103049))))

(assert (= (and b!271804 ((_ is ElementMatch!955) (reg!1284 (regex!731 (h!9226 rules!1920))))) b!273412))

(assert (= (and b!271804 ((_ is Concat!1709) (reg!1284 (regex!731 (h!9226 rules!1920))))) b!273413))

(assert (= (and b!271804 ((_ is Star!955) (reg!1284 (regex!731 (h!9226 rules!1920))))) b!273414))

(assert (= (and b!271804 ((_ is Union!955) (reg!1284 (regex!731 (h!9226 rules!1920))))) b!273415))

(declare-fun e!169829 () Bool)

(assert (=> b!271813 (= tp!102827 e!169829)))

(declare-fun b!273419 () Bool)

(declare-fun tp!103056 () Bool)

(declare-fun tp!103057 () Bool)

(assert (=> b!273419 (= e!169829 (and tp!103056 tp!103057))))

(declare-fun b!273418 () Bool)

(declare-fun tp!103055 () Bool)

(assert (=> b!273418 (= e!169829 tp!103055)))

(declare-fun b!273416 () Bool)

(assert (=> b!273416 (= e!169829 tp_is_empty!1815)))

(declare-fun b!273417 () Bool)

(declare-fun tp!103053 () Bool)

(declare-fun tp!103054 () Bool)

(assert (=> b!273417 (= e!169829 (and tp!103053 tp!103054))))

(assert (= (and b!271813 ((_ is ElementMatch!955) (reg!1284 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273416))

(assert (= (and b!271813 ((_ is Concat!1709) (reg!1284 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273417))

(assert (= (and b!271813 ((_ is Star!955) (reg!1284 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273418))

(assert (= (and b!271813 ((_ is Union!955) (reg!1284 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273419))

(declare-fun e!169830 () Bool)

(assert (=> b!271805 (= tp!102817 e!169830)))

(declare-fun b!273423 () Bool)

(declare-fun tp!103061 () Bool)

(declare-fun tp!103062 () Bool)

(assert (=> b!273423 (= e!169830 (and tp!103061 tp!103062))))

(declare-fun b!273422 () Bool)

(declare-fun tp!103060 () Bool)

(assert (=> b!273422 (= e!169830 tp!103060)))

(declare-fun b!273420 () Bool)

(assert (=> b!273420 (= e!169830 tp_is_empty!1815)))

(declare-fun b!273421 () Bool)

(declare-fun tp!103058 () Bool)

(declare-fun tp!103059 () Bool)

(assert (=> b!273421 (= e!169830 (and tp!103058 tp!103059))))

(assert (= (and b!271805 ((_ is ElementMatch!955) (regOne!2423 (regex!731 (h!9226 rules!1920))))) b!273420))

(assert (= (and b!271805 ((_ is Concat!1709) (regOne!2423 (regex!731 (h!9226 rules!1920))))) b!273421))

(assert (= (and b!271805 ((_ is Star!955) (regOne!2423 (regex!731 (h!9226 rules!1920))))) b!273422))

(assert (= (and b!271805 ((_ is Union!955) (regOne!2423 (regex!731 (h!9226 rules!1920))))) b!273423))

(declare-fun e!169831 () Bool)

(assert (=> b!271805 (= tp!102818 e!169831)))

(declare-fun b!273427 () Bool)

(declare-fun tp!103066 () Bool)

(declare-fun tp!103067 () Bool)

(assert (=> b!273427 (= e!169831 (and tp!103066 tp!103067))))

(declare-fun b!273426 () Bool)

(declare-fun tp!103065 () Bool)

(assert (=> b!273426 (= e!169831 tp!103065)))

(declare-fun b!273424 () Bool)

(assert (=> b!273424 (= e!169831 tp_is_empty!1815)))

(declare-fun b!273425 () Bool)

(declare-fun tp!103063 () Bool)

(declare-fun tp!103064 () Bool)

(assert (=> b!273425 (= e!169831 (and tp!103063 tp!103064))))

(assert (= (and b!271805 ((_ is ElementMatch!955) (regTwo!2423 (regex!731 (h!9226 rules!1920))))) b!273424))

(assert (= (and b!271805 ((_ is Concat!1709) (regTwo!2423 (regex!731 (h!9226 rules!1920))))) b!273425))

(assert (= (and b!271805 ((_ is Star!955) (regTwo!2423 (regex!731 (h!9226 rules!1920))))) b!273426))

(assert (= (and b!271805 ((_ is Union!955) (regTwo!2423 (regex!731 (h!9226 rules!1920))))) b!273427))

(declare-fun b!273430 () Bool)

(declare-fun e!169834 () Bool)

(assert (=> b!273430 (= e!169834 true)))

(declare-fun b!273429 () Bool)

(declare-fun e!169833 () Bool)

(assert (=> b!273429 (= e!169833 e!169834)))

(declare-fun b!273428 () Bool)

(declare-fun e!169832 () Bool)

(assert (=> b!273428 (= e!169832 e!169833)))

(assert (=> b!271556 e!169832))

(assert (= b!273429 b!273430))

(assert (= b!273428 b!273429))

(assert (= (and b!271556 ((_ is Cons!3829) (t!38513 rules!1920))) b!273428))

(assert (=> b!273430 (< (dynLambda!1967 order!2953 (toValue!1470 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9204))))

(assert (=> b!273430 (< (dynLambda!1969 order!2957 (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920))))) (dynLambda!1968 order!2955 lambda!9204))))

(declare-fun e!169835 () Bool)

(assert (=> b!271814 (= tp!102828 e!169835)))

(declare-fun b!273434 () Bool)

(declare-fun tp!103071 () Bool)

(declare-fun tp!103072 () Bool)

(assert (=> b!273434 (= e!169835 (and tp!103071 tp!103072))))

(declare-fun b!273433 () Bool)

(declare-fun tp!103070 () Bool)

(assert (=> b!273433 (= e!169835 tp!103070)))

(declare-fun b!273431 () Bool)

(assert (=> b!273431 (= e!169835 tp_is_empty!1815)))

(declare-fun b!273432 () Bool)

(declare-fun tp!103068 () Bool)

(declare-fun tp!103069 () Bool)

(assert (=> b!273432 (= e!169835 (and tp!103068 tp!103069))))

(assert (= (and b!271814 ((_ is ElementMatch!955) (regOne!2423 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273431))

(assert (= (and b!271814 ((_ is Concat!1709) (regOne!2423 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273432))

(assert (= (and b!271814 ((_ is Star!955) (regOne!2423 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273433))

(assert (= (and b!271814 ((_ is Union!955) (regOne!2423 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273434))

(declare-fun e!169836 () Bool)

(assert (=> b!271814 (= tp!102829 e!169836)))

(declare-fun b!273438 () Bool)

(declare-fun tp!103076 () Bool)

(declare-fun tp!103077 () Bool)

(assert (=> b!273438 (= e!169836 (and tp!103076 tp!103077))))

(declare-fun b!273437 () Bool)

(declare-fun tp!103075 () Bool)

(assert (=> b!273437 (= e!169836 tp!103075)))

(declare-fun b!273435 () Bool)

(assert (=> b!273435 (= e!169836 tp_is_empty!1815)))

(declare-fun b!273436 () Bool)

(declare-fun tp!103073 () Bool)

(declare-fun tp!103074 () Bool)

(assert (=> b!273436 (= e!169836 (and tp!103073 tp!103074))))

(assert (= (and b!271814 ((_ is ElementMatch!955) (regTwo!2423 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273435))

(assert (= (and b!271814 ((_ is Concat!1709) (regTwo!2423 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273436))

(assert (= (and b!271814 ((_ is Star!955) (regTwo!2423 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273437))

(assert (= (and b!271814 ((_ is Union!955) (regTwo!2423 (regex!731 (rule!1316 (h!9227 tokens!465)))))) b!273438))

(declare-fun b_lambda!8771 () Bool)

(assert (= b_lambda!8723 (or d!79033 b_lambda!8771)))

(declare-fun bs!30699 () Bool)

(declare-fun d!80173 () Bool)

(assert (= bs!30699 (and d!80173 d!79033)))

(assert (=> bs!30699 (= (dynLambda!1973 lambda!9183 (h!9227 (list!1570 lt!111755))) (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (h!9227 (list!1570 lt!111755))))))

(assert (=> bs!30699 m!347059))

(assert (=> b!273018 d!80173))

(declare-fun b_lambda!8773 () Bool)

(assert (= b_lambda!8769 (or (and b!271199 b_free!10059 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!273335 b_free!10087 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!273399 b_free!10091 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!271786 b_free!10071) (and b!271190 b_free!10051 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!271825 b_free!10075 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!271211 b_free!10055 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) b_lambda!8773)))

(declare-fun b_lambda!8775 () Bool)

(assert (= b_lambda!8711 (or b!271373 b_lambda!8775)))

(declare-fun bs!30700 () Bool)

(declare-fun d!80175 () Bool)

(assert (= bs!30700 (and d!80175 b!271373)))

(assert (=> bs!30700 (= (dynLambda!1973 lambda!9192 (apply!773 lt!111755 0)) (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (apply!773 lt!111755 0)))))

(assert (=> bs!30700 m!343927))

(declare-fun m!348673 () Bool)

(assert (=> bs!30700 m!348673))

(assert (=> d!79743 d!80175))

(declare-fun b_lambda!8777 () Bool)

(assert (= b_lambda!8767 (or b!271207 b_lambda!8777)))

(assert (=> b!273319 d!79225))

(declare-fun b_lambda!8779 () Bool)

(assert (= b_lambda!8721 (or b!271552 b_lambda!8779)))

(declare-fun bs!30701 () Bool)

(declare-fun d!80177 () Bool)

(assert (= bs!30701 (and d!80177 b!271552)))

(assert (=> bs!30701 (= (dynLambda!1973 lambda!9204 (h!9227 (t!38514 tokens!465))) (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (h!9227 (t!38514 tokens!465))))))

(declare-fun m!348675 () Bool)

(assert (=> bs!30701 m!348675))

(assert (=> d!79917 d!80177))

(declare-fun b_lambda!8781 () Bool)

(assert (= b_lambda!8699 (or (and b!271199 b_free!10059 (= (toChars!1329 (transformation!731 (rule!1316 separatorToken!170))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!273335 b_free!10087 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 (t!38513 rules!1920))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!273399 b_free!10091 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 (t!38514 tokens!465)))))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!271786 b_free!10071) (and b!271190 b_free!10051 (= (toChars!1329 (transformation!731 (h!9226 rules!1920))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!271825 b_free!10075 (= (toChars!1329 (transformation!731 (h!9226 (t!38513 rules!1920)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) (and b!271211 b_free!10055 (= (toChars!1329 (transformation!731 (rule!1316 (h!9227 tokens!465)))) (toChars!1329 (transformation!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))) b_lambda!8781)))

(declare-fun b_lambda!8783 () Bool)

(assert (= b_lambda!8759 (or b!271212 b_lambda!8783)))

(declare-fun bs!30702 () Bool)

(declare-fun d!80179 () Bool)

(assert (= bs!30702 (and d!80179 b!271212)))

(assert (=> bs!30702 (= (dynLambda!1973 lambda!9171 (h!9227 (t!38514 tokens!465))) (not (isSeparator!731 (rule!1316 (h!9227 (t!38514 tokens!465))))))))

(assert (=> b!273305 d!80179))

(declare-fun b_lambda!8785 () Bool)

(assert (= b_lambda!8681 (or b!271612 b_lambda!8785)))

(declare-fun bs!30703 () Bool)

(declare-fun d!80181 () Bool)

(assert (= bs!30703 (and d!80181 b!271612)))

(assert (=> bs!30703 (= (dynLambda!1973 lambda!9206 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)) (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (apply!773 (seqFromList!830 (t!38514 tokens!465)) 0)))))

(assert (=> bs!30703 m!344411))

(declare-fun m!348677 () Bool)

(assert (=> bs!30703 m!348677))

(assert (=> d!79305 d!80181))

(declare-fun b_lambda!8787 () Bool)

(assert (= b_lambda!8765 (or b!271207 b_lambda!8787)))

(assert (=> d!80159 d!79225))

(declare-fun b_lambda!8789 () Bool)

(assert (= b_lambda!8697 (or b!271466 b_lambda!8789)))

(declare-fun bs!30704 () Bool)

(declare-fun d!80183 () Bool)

(assert (= bs!30704 (and d!80183 b!271466)))

(assert (=> bs!30704 (= (dynLambda!1973 lambda!9200 (h!9227 tokens!465)) (rulesProduceIndividualToken!366 thiss!17480 rules!1920 (h!9227 tokens!465)))))

(assert (=> bs!30704 m!343705))

(assert (=> d!79581 d!80183))

(check-sat (not bs!30699) (not d!79581) (not d!79745) (not d!79527) (not d!79747) (not b!272447) (not b_next!10075) (not d!79991) (not d!79317) (not d!79953) (not d!79743) (not b_next!10051) (not d!79901) (not bm!14933) (not d!79895) (not b!272905) (not b!271572) (not b!272435) (not b!273370) (not b!272439) (not d!79893) (not b!272911) (not b!273418) (not d!79631) b_and!21661 (not d!79879) (not d!79767) (not d!79983) (not bs!30700) (not b!272629) (not b!272453) (not b!272907) (not b!272615) (not d!79599) (not d!79375) (not d!79917) (not b!273436) (not b!273328) (not b!273402) (not bm!14936) (not b!272052) (not b_lambda!8785) (not d!79327) (not d!79999) (not d!79637) (not b!272685) (not bs!30703) (not d!79855) (not b!273012) (not d!79947) (not b!272614) (not b!272098) (not b!272985) (not d!79929) (not b!273318) (not b!272116) (not b!273417) (not d!79505) (not d!80003) (not d!79511) (not b!272620) (not b!272054) (not b!272956) (not b!273330) (not b!272857) (not b!272878) (not d!79607) (not b!272668) (not b!272656) (not b_lambda!8775) (not b!272933) (not b!272628) b_and!21721 (not d!79849) (not d!79891) (not b!272703) (not b!272464) b_and!21927 (not d!80149) (not b!273401) (not b!272095) (not b!272789) (not d!80029) (not b!272488) (not b!272093) (not b!272742) (not bm!14911) (not b_lambda!8779) (not d!79729) (not b!272992) (not b!273055) (not b_next!10071) (not b!273053) (not d!80021) b_and!21933 (not b!272915) (not b_lambda!8683) (not b!273366) b_and!21937 (not b!272013) (not b!272776) (not d!79731) (not d!79725) (not b!273434) b_and!21653 (not d!79867) (not b!272707) (not bm!14937) (not tb!15533) (not b!272166) (not b!272145) (not d!79931) (not b!272625) (not b!272746) (not b!273410) (not b!272020) (not d!80143) (not d!80067) (not d!79597) (not d!80145) (not d!79621) (not b!273323) (not b_next!10091) (not b!273426) (not b!272068) (not b!273382) (not b!273405) (not d!79613) (not b!272801) (not b!272659) (not bm!14947) (not d!79915) (not b_next!10087) (not d!79935) (not bm!14957) (not b!272438) (not b!272779) (not d!79307) (not d!79335) (not b!273389) (not b_next!10059) (not b!272958) (not b!272648) (not b!273396) (not b!273406) (not b!273326) (not b!272165) (not d!79301) (not b!272342) (not b!272080) (not b_next!10057) (not bm!14972) (not tb!15637) (not d!79785) (not b!273042) (not d!79715) (not b!272160) (not tb!15513) (not b!273378) (not b!272724) (not b!272842) (not b!272032) (not d!79885) (not b!273413) (not b!272623) (not d!79887) (not b!272593) (not b!272611) (not d!79779) (not b!272836) (not b!273390) (not b!272997) (not b!272774) (not b!272723) (not b!272720) (not d!79359) (not d!79349) (not b!273320) (not b!273045) (not b!272896) (not b!272935) (not b!273385) (not d!79751) (not d!79377) (not d!80019) (not b!273422) (not b!272056) (not b!272596) (not b!272071) (not tb!15523) (not b!273376) (not d!79339) (not b!272613) (not b!272099) (not b!272995) (not d!79949) (not d!79361) (not bm!14932) (not d!79941) (not b!273027) (not b!273360) (not d!80061) (not b_lambda!8669) (not d!79727) (not b_lambda!8715) (not d!79629) (not b!272871) (not b!272970) (not b!273377) (not b!272086) (not d!80137) (not b!272835) (not b!272633) (not b!272686) (not b!272728) (not d!79905) (not b!273386) (not b!272837) (not b!272073) (not b!272356) (not b!273306) (not bm!14906) (not b_lambda!8675) (not b_next!10073) (not b!273369) (not b!272848) (not bm!14899) (not bm!14959) (not b!272072) (not d!79965) (not b!273311) (not d!79303) (not b!272645) (not b!272955) (not b!272055) (not b!272456) (not d!79611) (not d!80009) (not b!273374) (not b!272458) (not b!272979) (not bm!14909) (not b!272991) (not d!79993) (not d!79385) (not d!79975) (not b!272498) (not b!272847) (not b!273356) (not b_lambda!8685) (not b!272657) (not d!79761) (not b!272026) (not b!272161) (not b!273037) (not d!79863) (not b!271996) (not b!272444) (not b!272994) (not b!272079) (not b!272097) (not d!80045) (not b!272597) (not bm!14941) (not b_next!10055) (not b_lambda!8787) (not b!272914) (not d!79881) (not d!79329) (not b!272057) (not b!273409) (not d!79997) (not d!80065) (not b!272133) (not b!273000) (not b!272924) (not b!271965) (not b!272775) (not b!272624) (not d!79757) (not b!272928) (not b!272034) (not b!273063) (not b!272797) (not b!272077) (not b!272067) (not b!272850) (not b_next!10069) (not b!273314) (not b!272735) (not b!273339) (not b!273308) (not bs!30704) (not bm!14910) (not b!272618) (not d!79313) b_and!21941 (not d!79907) (not b!273403) (not b!272904) (not d!79919) (not b!272607) (not b_lambda!8671) (not d!79587) (not bm!14934) (not d!79295) (not b_lambda!8783) (not b!272361) (not bm!14902) b_and!21657 (not b!272493) (not b!272927) (not b!272959) (not b!273368) (not b!273332) (not b!272476) (not b!272926) (not b!273046) (not b!272721) (not b!272644) (not b!273034) (not d!79899) (not b!273003) (not b!272803) (not b!273395) (not b!271239) (not b!272693) (not d!79311) (not b!273026) (not d!80043) (not d!79755) (not d!79583) (not b_next!10085) (not b!271998) (not bm!14942) (not b!273033) (not b!272861) (not b_lambda!8773) (not b!271976) (not b!272066) (not d!79883) (not d!79605) (not d!79721) (not b!272108) (not b!272440) (not b_lambda!8667) (not d!80073) (not b!273372) (not d!79371) (not b!272981) (not d!80037) (not b!272595) (not bm!14930) (not b!273333) (not d!80025) (not tb!15493) (not b!273321) (not b!272359) (not d!80141) (not d!79517) (not b!272041) (not d!80151) (not d!79809) (not b!273350) (not b!272643) (not b!272114) (not b_lambda!8761) (not b!273312) (not b!273362) (not b!273394) (not b!272833) (not bm!14905) (not d!79315) (not b!272884) (not d!79723) (not bm!14900) (not b!272028) (not b!273379) (not b!272697) (not d!79911) (not d!79711) (not b!272641) (not b!273336) (not b!273299) (not b!272708) (not b!273437) (not bm!14944) (not b!273387) (not d!79515) (not b!272743) (not b!272877) (not d!79875) (not b!272484) (not b!272021) (not b!272929) (not d!79777) (not bm!14948) (not bm!14946) (not bm!14927) (not b!272689) (not b!272683) (not b!272722) (not b!272665) (not b!272947) (not d!79381) (not d!80163) (not d!79803) (not d!79775) (not b!272043) (not d!79909) (not b!272865) (not b!272930) (not tb!15453) (not b!272864) (not b!273380) (not d!79591) (not b!272144) (not b!273432) (not d!79771) (not d!80015) (not b!272998) (not b!272437) (not b!273054) (not b!272627) (not b!273047) (not d!79817) (not b!272944) (not b!272838) (not d!80077) (not b!273001) (not b!273428) (not tb!15647) (not b_next!10049) (not b!272706) (not b!272130) (not b!273352) (not d!79365) (not b!272663) (not b!272598) (not b!272058) (not b!272946) (not d!80165) (not b!273381) (not b!272642) (not b_lambda!8709) (not bm!14907) (not b_lambda!8713) (not b!273415) (not b!272085) (not d!79373) (not b!272081) (not b!272872) (not b!272798) (not d!79889) (not b!272118) (not b!272677) (not b!272495) (not d!79939) (not b!272870) (not b_lambda!8677) (not d!79593) (not b!272747) (not d!79601) (not b_lambda!8673) (not b_lambda!8777) (not b!272132) (not b!272740) (not d!79379) (not b_next!10053) (not b!272658) (not b!272455) (not b!272726) (not b!273316) (not b!272365) b_and!21939 (not b!273407) (not b!272051) (not b!272741) (not d!79735) (not bm!14935) (not tb!15443) (not b!272690) (not bs!30701) (not b!272158) (not d!79787) (not b!272999) (not b!272662) (not bm!14903) (not b!272895) (not b!272913) (not d!79309) (not b!273041) (not b!273334) (not d!79741) (not b!272164) (not b!272023) (not b!273421) (not b!272987) (not d!79325) (not bm!14938) (not b!272834) (not b!272712) (not b_lambda!8781) (not b!273036) (not b!272866) (not b!272480) b_and!21935 (not b!272457) (not d!79331) (not d!79797) (not b!272718) (not b!272869) (not bm!14939) (not b!273309) (not tb!15563) (not d!79627) (not d!79807) (not b!273438) (not b!272014) (not b!273351) (not b!272485) (not d!79773) (not b!272163) (not d!79987) (not d!79347) (not d!79995) (not b!273361) (not b!272012) (not b!272162) (not b!272486) (not d!79363) (not b!273364) (not b!272704) (not b!272695) (not b!273353) (not b!272626) (not b!273397) (not b!272673) (not d!79969) (not b!272734) (not b!271966) (not d!79933) (not b!272858) (not d!79763) (not d!79791) (not b!272640) (not d!79319) (not b!272017) (not b_lambda!8771) (not d!80157) (not b!272710) (not b!272675) (not b!273043) (not d!79589) (not b!272631) b_and!21725 (not b!272340) (not b!273425) (not b!273414) (not b!272442) (not b!272650) (not b!273411) (not b!272363) (not b!272341) (not b_lambda!8727) (not d!79749) (not b!273373) (not b!273044) (not d!79733) (not bm!14960) (not b!273300) (not b!272497) (not b!272639) (not b!272441) (not d!79595) (not b_lambda!8789) (not d!79321) (not b!272016) (not b!273322) (not b!272490) (not b!272446) (not b!272015) (not b!272358) (not b!272799) (not bm!14962) (not d!79367) (not b!273011) (not b!272894) b_and!21931 (not d!79957) (not b!273398) (not d!79937) b_and!21929 (not b!272666) (not b!272856) (not d!79323) (not b_next!10089) (not d!79925) (not b!272931) (not b!273391) (not b!272705) (not d!79903) (not d!79759) (not d!79927) (not b!272024) (not bm!14961) (not bm!14912) (not b!273365) (not d!79305) (not bm!14963) (not b!272986) (not b!273298) (not b!272790) (not b!273070) (not d!79717) (not b!272843) (not b!272053) (not d!79509) (not d!79857) (not b!273068) (not b!272670) (not b!273419) (not b!273427) (not b!273393) b_and!21943 (not b!272945) (not b!273301) (not bm!14945) (not d!80069) (not d!80031) (not b!272863) (not b!273331) (not d!79337) (not b!272739) (not d!79603) (not b!272738) (not d!79815) (not b!272443) (not b!272106) tp_is_empty!1815 (not b!273004) (not d!80047) (not b_lambda!8763) (not b!272481) (not b!273423) (not b!272932) (not b!272737) (not b!273019) (not d!79639) (not b!273433) (not b!272988))
(check-sat (not b_next!10057) (not b_next!10073) (not b_next!10055) b_and!21657 (not b_next!10085) (not b_next!10049) b_and!21935 b_and!21725 b_and!21943 (not b_next!10075) b_and!21661 (not b_next!10051) b_and!21721 b_and!21927 b_and!21937 (not b_next!10071) b_and!21933 b_and!21653 (not b_next!10091) (not b_next!10087) (not b_next!10059) (not b_next!10069) b_and!21941 (not b_next!10053) b_and!21939 b_and!21931 b_and!21929 (not b_next!10089))
