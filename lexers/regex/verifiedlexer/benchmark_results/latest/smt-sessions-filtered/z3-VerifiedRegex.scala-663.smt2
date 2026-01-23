; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24498 () Bool)

(assert start!24498)

(declare-fun b!229244 () Bool)

(declare-fun b_free!8585 () Bool)

(declare-fun b_next!8585 () Bool)

(assert (=> b!229244 (= b_free!8585 (not b_next!8585))))

(declare-fun tp!93800 () Bool)

(declare-fun b_and!16997 () Bool)

(assert (=> b!229244 (= tp!93800 b_and!16997)))

(declare-fun b_free!8587 () Bool)

(declare-fun b_next!8587 () Bool)

(assert (=> b!229244 (= b_free!8587 (not b_next!8587))))

(declare-fun tp!93803 () Bool)

(declare-fun b_and!16999 () Bool)

(assert (=> b!229244 (= tp!93803 b_and!16999)))

(declare-fun b!229263 () Bool)

(declare-fun b_free!8589 () Bool)

(declare-fun b_next!8589 () Bool)

(assert (=> b!229263 (= b_free!8589 (not b_next!8589))))

(declare-fun tp!93806 () Bool)

(declare-fun b_and!17001 () Bool)

(assert (=> b!229263 (= tp!93806 b_and!17001)))

(declare-fun b_free!8591 () Bool)

(declare-fun b_next!8591 () Bool)

(assert (=> b!229263 (= b_free!8591 (not b_next!8591))))

(declare-fun tp!93807 () Bool)

(declare-fun b_and!17003 () Bool)

(assert (=> b!229263 (= tp!93807 b_and!17003)))

(declare-fun b!229255 () Bool)

(declare-fun b_free!8593 () Bool)

(declare-fun b_next!8593 () Bool)

(assert (=> b!229255 (= b_free!8593 (not b_next!8593))))

(declare-fun tp!93805 () Bool)

(declare-fun b_and!17005 () Bool)

(assert (=> b!229255 (= tp!93805 b_and!17005)))

(declare-fun b_free!8595 () Bool)

(declare-fun b_next!8595 () Bool)

(assert (=> b!229255 (= b_free!8595 (not b_next!8595))))

(declare-fun tp!93804 () Bool)

(declare-fun b_and!17007 () Bool)

(assert (=> b!229255 (= tp!93804 b_and!17007)))

(declare-fun bs!24346 () Bool)

(declare-fun b!229239 () Bool)

(declare-fun b!229243 () Bool)

(assert (= bs!24346 (and b!229239 b!229243)))

(declare-fun lambda!7272 () Int)

(declare-fun lambda!7271 () Int)

(assert (=> bs!24346 (not (= lambda!7272 lambda!7271))))

(declare-fun b!229296 () Bool)

(declare-fun e!141801 () Bool)

(assert (=> b!229296 (= e!141801 true)))

(declare-fun b!229295 () Bool)

(declare-fun e!141800 () Bool)

(assert (=> b!229295 (= e!141800 e!141801)))

(declare-fun b!229294 () Bool)

(declare-fun e!141799 () Bool)

(assert (=> b!229294 (= e!141799 e!141800)))

(assert (=> b!229239 e!141799))

(assert (= b!229295 b!229296))

(assert (= b!229294 b!229295))

(declare-datatypes ((List!3473 0))(
  ( (Nil!3463) (Cons!3463 (h!8860 (_ BitVec 16)) (t!33453 List!3473)) )
))
(declare-datatypes ((TokenValue!671 0))(
  ( (FloatLiteralValue!1342 (text!5142 List!3473)) (TokenValueExt!670 (__x!2829 Int)) (Broken!3355 (value!22786 List!3473)) (Object!680) (End!671) (Def!671) (Underscore!671) (Match!671) (Else!671) (Error!671) (Case!671) (If!671) (Extends!671) (Abstract!671) (Class!671) (Val!671) (DelimiterValue!1342 (del!731 List!3473)) (KeywordValue!677 (value!22787 List!3473)) (CommentValue!1342 (value!22788 List!3473)) (WhitespaceValue!1342 (value!22789 List!3473)) (IndentationValue!671 (value!22790 List!3473)) (String!4434) (Int32!671) (Broken!3356 (value!22791 List!3473)) (Boolean!672) (Unit!3975) (OperatorValue!674 (op!731 List!3473)) (IdentifierValue!1342 (value!22792 List!3473)) (IdentifierValue!1343 (value!22793 List!3473)) (WhitespaceValue!1343 (value!22794 List!3473)) (True!1342) (False!1342) (Broken!3357 (value!22795 List!3473)) (Broken!3358 (value!22796 List!3473)) (True!1343) (RightBrace!671) (RightBracket!671) (Colon!671) (Null!671) (Comma!671) (LeftBracket!671) (False!1343) (LeftBrace!671) (ImaginaryLiteralValue!671 (text!5143 List!3473)) (StringLiteralValue!2013 (value!22797 List!3473)) (EOFValue!671 (value!22798 List!3473)) (IdentValue!671 (value!22799 List!3473)) (DelimiterValue!1343 (value!22800 List!3473)) (DedentValue!671 (value!22801 List!3473)) (NewLineValue!671 (value!22802 List!3473)) (IntegerValue!2013 (value!22803 (_ BitVec 32)) (text!5144 List!3473)) (IntegerValue!2014 (value!22804 Int) (text!5145 List!3473)) (Times!671) (Or!671) (Equal!671) (Minus!671) (Broken!3359 (value!22805 List!3473)) (And!671) (Div!671) (LessEqual!671) (Mod!671) (Concat!1544) (Not!671) (Plus!671) (SpaceValue!671 (value!22806 List!3473)) (IntegerValue!2015 (value!22807 Int) (text!5146 List!3473)) (StringLiteralValue!2014 (text!5147 List!3473)) (FloatLiteralValue!1343 (text!5148 List!3473)) (BytesLiteralValue!671 (value!22808 List!3473)) (CommentValue!1343 (value!22809 List!3473)) (StringLiteralValue!2015 (value!22810 List!3473)) (ErrorTokenValue!671 (msg!732 List!3473)) )
))
(declare-datatypes ((C!2668 0))(
  ( (C!2669 (val!1220 Int)) )
))
(declare-datatypes ((List!3474 0))(
  ( (Nil!3464) (Cons!3464 (h!8861 C!2668) (t!33454 List!3474)) )
))
(declare-datatypes ((IArray!2241 0))(
  ( (IArray!2242 (innerList!1178 List!3474)) )
))
(declare-datatypes ((Conc!1120 0))(
  ( (Node!1120 (left!2799 Conc!1120) (right!3129 Conc!1120) (csize!2470 Int) (cheight!1331 Int)) (Leaf!1784 (xs!3715 IArray!2241) (csize!2471 Int)) (Empty!1120) )
))
(declare-datatypes ((BalanceConc!2248 0))(
  ( (BalanceConc!2249 (c!43881 Conc!1120)) )
))
(declare-datatypes ((TokenValueInjection!1114 0))(
  ( (TokenValueInjection!1115 (toValue!1344 Int) (toChars!1203 Int)) )
))
(declare-datatypes ((String!4435 0))(
  ( (String!4436 (value!22811 String)) )
))
(declare-datatypes ((Regex!873 0))(
  ( (ElementMatch!873 (c!43882 C!2668)) (Concat!1545 (regOne!2258 Regex!873) (regTwo!2258 Regex!873)) (EmptyExpr!873) (Star!873 (reg!1202 Regex!873)) (EmptyLang!873) (Union!873 (regOne!2259 Regex!873) (regTwo!2259 Regex!873)) )
))
(declare-datatypes ((Rule!1098 0))(
  ( (Rule!1099 (regex!649 Regex!873) (tag!849 String!4435) (isSeparator!649 Bool) (transformation!649 TokenValueInjection!1114)) )
))
(declare-datatypes ((List!3475 0))(
  ( (Nil!3465) (Cons!3465 (h!8862 Rule!1098) (t!33455 List!3475)) )
))
(declare-fun rules!1920 () List!3475)

(get-info :version)

(assert (= (and b!229239 ((_ is Cons!3465) rules!1920)) b!229294))

(declare-fun order!2417 () Int)

(declare-fun order!2419 () Int)

(declare-fun dynLambda!1617 (Int Int) Int)

(declare-fun dynLambda!1618 (Int Int) Int)

(assert (=> b!229296 (< (dynLambda!1617 order!2417 (toValue!1344 (transformation!649 (h!8862 rules!1920)))) (dynLambda!1618 order!2419 lambda!7272))))

(declare-fun order!2421 () Int)

(declare-fun dynLambda!1619 (Int Int) Int)

(assert (=> b!229296 (< (dynLambda!1619 order!2421 (toChars!1203 (transformation!649 (h!8862 rules!1920)))) (dynLambda!1618 order!2419 lambda!7272))))

(assert (=> b!229239 true))

(declare-fun b!229235 () Bool)

(declare-fun e!141790 () Bool)

(declare-fun e!141781 () Bool)

(assert (=> b!229235 (= e!141790 e!141781)))

(declare-fun res!105665 () Bool)

(assert (=> b!229235 (=> (not res!105665) (not e!141781))))

(declare-fun lt!89496 () Rule!1098)

(declare-fun lt!89501 () List!3474)

(declare-fun matchR!211 (Regex!873 List!3474) Bool)

(assert (=> b!229235 (= res!105665 (matchR!211 (regex!649 lt!89496) lt!89501))))

(declare-datatypes ((Option!639 0))(
  ( (None!638) (Some!638 (v!14329 Rule!1098)) )
))
(declare-fun lt!89502 () Option!639)

(declare-fun get!1099 (Option!639) Rule!1098)

(assert (=> b!229235 (= lt!89496 (get!1099 lt!89502))))

(declare-fun b!229236 () Bool)

(declare-fun e!141769 () Bool)

(declare-datatypes ((Token!1042 0))(
  ( (Token!1043 (value!22812 TokenValue!671) (rule!1206 Rule!1098) (size!2774 Int) (originalCharacters!692 List!3474)) )
))
(declare-datatypes ((List!3476 0))(
  ( (Nil!3466) (Cons!3466 (h!8863 Token!1042) (t!33456 List!3476)) )
))
(declare-fun tokens!465 () List!3476)

(declare-fun lt!89490 () List!3474)

(assert (=> b!229236 (= e!141769 (matchR!211 (regex!649 (rule!1206 (h!8863 tokens!465))) lt!89490))))

(declare-fun b!229237 () Bool)

(declare-datatypes ((Unit!3976 0))(
  ( (Unit!3977) )
))
(declare-fun e!141762 () Unit!3976)

(declare-fun Unit!3978 () Unit!3976)

(assert (=> b!229237 (= e!141762 Unit!3978)))

(declare-fun b!229238 () Bool)

(declare-fun e!141767 () Bool)

(assert (=> b!229238 (= e!141767 true)))

(declare-fun e!141789 () Bool)

(declare-fun e!141761 () Bool)

(assert (=> b!229239 (= e!141789 e!141761)))

(declare-fun res!105692 () Bool)

(assert (=> b!229239 (=> res!105692 e!141761)))

(declare-datatypes ((LexerInterface!535 0))(
  ( (LexerInterfaceExt!532 (__x!2830 Int)) (Lexer!533) )
))
(declare-fun thiss!17480 () LexerInterface!535)

(declare-datatypes ((tuple2!3744 0))(
  ( (tuple2!3745 (_1!2088 Token!1042) (_2!2088 BalanceConc!2248)) )
))
(declare-datatypes ((Option!640 0))(
  ( (None!639) (Some!639 (v!14330 tuple2!3744)) )
))
(declare-fun isDefined!490 (Option!640) Bool)

(declare-fun maxPrefixZipperSequence!228 (LexerInterface!535 List!3475 BalanceConc!2248) Option!640)

(declare-fun seqFromList!675 (List!3474) BalanceConc!2248)

(assert (=> b!229239 (= res!105692 (not (isDefined!490 (maxPrefixZipperSequence!228 thiss!17480 rules!1920 (seqFromList!675 (originalCharacters!692 (h!8863 tokens!465)))))))))

(declare-fun lt!89505 () Unit!3976)

(declare-fun forallContained!216 (List!3476 Int Token!1042) Unit!3976)

(assert (=> b!229239 (= lt!89505 (forallContained!216 tokens!465 lambda!7272 (h!8863 tokens!465)))))

(assert (=> b!229239 (= lt!89490 (originalCharacters!692 (h!8863 tokens!465)))))

(declare-fun b!229240 () Bool)

(declare-fun res!105667 () Bool)

(declare-fun e!141773 () Bool)

(assert (=> b!229240 (=> (not res!105667) (not e!141773))))

(declare-fun rulesInvariant!501 (LexerInterface!535 List!3475) Bool)

(assert (=> b!229240 (= res!105667 (rulesInvariant!501 thiss!17480 rules!1920))))

(declare-fun b!229241 () Bool)

(declare-fun res!105694 () Bool)

(assert (=> b!229241 (=> (not res!105694) (not e!141773))))

(declare-fun isEmpty!1998 (List!3475) Bool)

(assert (=> b!229241 (= res!105694 (not (isEmpty!1998 rules!1920)))))

(declare-fun separatorToken!170 () Token!1042)

(declare-fun tp!93808 () Bool)

(declare-fun e!141771 () Bool)

(declare-fun e!141755 () Bool)

(declare-fun b!229242 () Bool)

(declare-fun inv!4313 (String!4435) Bool)

(declare-fun inv!4316 (TokenValueInjection!1114) Bool)

(assert (=> b!229242 (= e!141755 (and tp!93808 (inv!4313 (tag!849 (rule!1206 separatorToken!170))) (inv!4316 (transformation!649 (rule!1206 separatorToken!170))) e!141771))))

(declare-fun res!105671 () Bool)

(declare-fun e!141782 () Bool)

(assert (=> b!229243 (=> (not res!105671) (not e!141782))))

(declare-fun forall!781 (List!3476 Int) Bool)

(assert (=> b!229243 (= res!105671 (forall!781 tokens!465 lambda!7271))))

(declare-fun e!141766 () Bool)

(assert (=> b!229244 (= e!141766 (and tp!93800 tp!93803))))

(declare-fun b!229246 () Bool)

(declare-fun res!105678 () Bool)

(assert (=> b!229246 (=> (not res!105678) (not e!141782))))

(assert (=> b!229246 (= res!105678 ((_ is Cons!3466) tokens!465))))

(declare-fun b!229247 () Bool)

(declare-fun res!105684 () Bool)

(declare-fun e!141784 () Bool)

(assert (=> b!229247 (=> (not res!105684) (not e!141784))))

(declare-datatypes ((IArray!2243 0))(
  ( (IArray!2244 (innerList!1179 List!3476)) )
))
(declare-datatypes ((Conc!1121 0))(
  ( (Node!1121 (left!2800 Conc!1121) (right!3130 Conc!1121) (csize!2472 Int) (cheight!1332 Int)) (Leaf!1785 (xs!3716 IArray!2243) (csize!2473 Int)) (Empty!1121) )
))
(declare-datatypes ((BalanceConc!2250 0))(
  ( (BalanceConc!2251 (c!43883 Conc!1121)) )
))
(declare-datatypes ((tuple2!3746 0))(
  ( (tuple2!3747 (_1!2089 BalanceConc!2250) (_2!2089 BalanceConc!2248)) )
))
(declare-fun lt!89500 () tuple2!3746)

(declare-fun lt!89504 () Token!1042)

(declare-fun apply!626 (BalanceConc!2250 Int) Token!1042)

(assert (=> b!229247 (= res!105684 (= (apply!626 (_1!2089 lt!89500) 0) lt!89504))))

(declare-fun b!229248 () Bool)

(declare-fun e!141765 () Bool)

(declare-fun e!141792 () Bool)

(assert (=> b!229248 (= e!141765 e!141792)))

(declare-fun res!105673 () Bool)

(assert (=> b!229248 (=> (not res!105673) (not e!141792))))

(declare-datatypes ((tuple2!3748 0))(
  ( (tuple2!3749 (_1!2090 Token!1042) (_2!2090 List!3474)) )
))
(declare-datatypes ((Option!641 0))(
  ( (None!640) (Some!640 (v!14331 tuple2!3748)) )
))
(declare-fun lt!89509 () Option!641)

(declare-fun isDefined!491 (Option!641) Bool)

(assert (=> b!229248 (= res!105673 (isDefined!491 lt!89509))))

(declare-fun lt!89532 () List!3474)

(declare-fun maxPrefix!265 (LexerInterface!535 List!3475 List!3474) Option!641)

(assert (=> b!229248 (= lt!89509 (maxPrefix!265 thiss!17480 rules!1920 lt!89532))))

(declare-fun b!229249 () Bool)

(assert (=> b!229249 (= e!141773 e!141782)))

(declare-fun res!105683 () Bool)

(assert (=> b!229249 (=> (not res!105683) (not e!141782))))

(declare-fun lt!89492 () BalanceConc!2250)

(declare-fun rulesProduceEachTokenIndividually!327 (LexerInterface!535 List!3475 BalanceConc!2250) Bool)

(assert (=> b!229249 (= res!105683 (rulesProduceEachTokenIndividually!327 thiss!17480 rules!1920 lt!89492))))

(declare-fun seqFromList!676 (List!3476) BalanceConc!2250)

(assert (=> b!229249 (= lt!89492 (seqFromList!676 tokens!465))))

(declare-fun b!229250 () Bool)

(declare-fun e!141777 () Unit!3976)

(declare-fun Unit!3979 () Unit!3976)

(assert (=> b!229250 (= e!141777 Unit!3979)))

(assert (=> b!229250 false))

(declare-fun b!229251 () Bool)

(declare-fun res!105674 () Bool)

(assert (=> b!229251 (=> res!105674 e!141789)))

(declare-fun isEmpty!1999 (BalanceConc!2250) Bool)

(declare-fun lex!335 (LexerInterface!535 List!3475 BalanceConc!2248) tuple2!3746)

(assert (=> b!229251 (= res!105674 (isEmpty!1999 (_1!2089 (lex!335 thiss!17480 rules!1920 (seqFromList!675 lt!89490)))))))

(declare-fun b!229252 () Bool)

(assert (=> b!229252 (= e!141781 (= (rule!1206 lt!89504) lt!89496))))

(declare-fun b!229253 () Bool)

(declare-fun e!141759 () Bool)

(declare-fun e!141783 () Bool)

(assert (=> b!229253 (= e!141759 e!141783)))

(declare-fun res!105693 () Bool)

(assert (=> b!229253 (=> res!105693 e!141783)))

(declare-fun e!141756 () Bool)

(assert (=> b!229253 (= res!105693 e!141756)))

(declare-fun res!105675 () Bool)

(assert (=> b!229253 (=> (not res!105675) (not e!141756))))

(declare-fun lt!89495 () Bool)

(assert (=> b!229253 (= res!105675 (not lt!89495))))

(declare-fun lt!89515 () List!3474)

(assert (=> b!229253 (= lt!89495 (= lt!89532 lt!89515))))

(declare-fun b!229254 () Bool)

(declare-fun e!141779 () Bool)

(declare-fun e!141787 () Bool)

(declare-fun tp!93799 () Bool)

(declare-fun inv!21 (TokenValue!671) Bool)

(assert (=> b!229254 (= e!141787 (and (inv!21 (value!22812 (h!8863 tokens!465))) e!141779 tp!93799))))

(assert (=> b!229255 (= e!141771 (and tp!93805 tp!93804))))

(declare-fun b!229256 () Bool)

(declare-fun e!141772 () Bool)

(declare-fun e!141770 () Bool)

(assert (=> b!229256 (= e!141772 e!141770)))

(declare-fun res!105687 () Bool)

(assert (=> b!229256 (=> (not res!105687) (not e!141770))))

(declare-fun lt!89512 () Rule!1098)

(declare-fun lt!89528 () List!3474)

(assert (=> b!229256 (= res!105687 (matchR!211 (regex!649 lt!89512) lt!89528))))

(declare-fun lt!89510 () Option!639)

(assert (=> b!229256 (= lt!89512 (get!1099 lt!89510))))

(declare-fun b!229257 () Bool)

(assert (=> b!229257 (= e!141783 e!141789)))

(declare-fun res!105681 () Bool)

(assert (=> b!229257 (=> res!105681 e!141789)))

(declare-fun lt!89522 () List!3474)

(declare-fun lt!89503 () List!3474)

(assert (=> b!229257 (= res!105681 (or (not (= lt!89503 lt!89522)) (not (= lt!89522 lt!89490)) (not (= lt!89503 lt!89490))))))

(declare-fun printList!219 (LexerInterface!535 List!3476) List!3474)

(assert (=> b!229257 (= lt!89522 (printList!219 thiss!17480 (Cons!3466 (h!8863 tokens!465) Nil!3466)))))

(declare-fun lt!89486 () BalanceConc!2248)

(declare-fun list!1336 (BalanceConc!2248) List!3474)

(assert (=> b!229257 (= lt!89503 (list!1336 lt!89486))))

(declare-fun lt!89497 () BalanceConc!2250)

(declare-fun printTailRec!229 (LexerInterface!535 BalanceConc!2250 Int BalanceConc!2248) BalanceConc!2248)

(assert (=> b!229257 (= lt!89486 (printTailRec!229 thiss!17480 lt!89497 0 (BalanceConc!2249 Empty!1120)))))

(declare-fun print!266 (LexerInterface!535 BalanceConc!2250) BalanceConc!2248)

(assert (=> b!229257 (= lt!89486 (print!266 thiss!17480 lt!89497))))

(declare-fun singletonSeq!201 (Token!1042) BalanceConc!2250)

(assert (=> b!229257 (= lt!89497 (singletonSeq!201 (h!8863 tokens!465)))))

(declare-fun b!229258 () Bool)

(assert (=> b!229258 (= e!141770 (= (rule!1206 separatorToken!170) lt!89512))))

(declare-fun b!229259 () Bool)

(declare-fun res!105662 () Bool)

(assert (=> b!229259 (=> (not res!105662) (not e!141782))))

(assert (=> b!229259 (= res!105662 (isSeparator!649 (rule!1206 separatorToken!170)))))

(declare-fun b!229260 () Bool)

(declare-fun get!1100 (Option!641) tuple2!3748)

(declare-fun head!793 (List!3476) Token!1042)

(assert (=> b!229260 (= e!141792 (= (_1!2090 (get!1100 lt!89509)) (head!793 tokens!465)))))

(declare-fun b!229261 () Bool)

(declare-fun e!141776 () Unit!3976)

(declare-fun Unit!3980 () Unit!3976)

(assert (=> b!229261 (= e!141776 Unit!3980)))

(declare-fun tp!93811 () Bool)

(declare-fun b!229262 () Bool)

(declare-fun e!141791 () Bool)

(assert (=> b!229262 (= e!141791 (and (inv!21 (value!22812 separatorToken!170)) e!141755 tp!93811))))

(declare-fun e!141757 () Bool)

(assert (=> b!229263 (= e!141757 (and tp!93806 tp!93807))))

(declare-fun b!229264 () Bool)

(declare-fun tp!93802 () Bool)

(assert (=> b!229264 (= e!141779 (and tp!93802 (inv!4313 (tag!849 (rule!1206 (h!8863 tokens!465)))) (inv!4316 (transformation!649 (rule!1206 (h!8863 tokens!465)))) e!141757))))

(declare-fun b!229265 () Bool)

(declare-fun res!105663 () Bool)

(declare-fun e!141768 () Bool)

(assert (=> b!229265 (=> (not res!105663) (not e!141768))))

(declare-fun lt!89531 () tuple2!3746)

(assert (=> b!229265 (= res!105663 (= (apply!626 (_1!2089 lt!89531) 0) separatorToken!170))))

(declare-fun b!229266 () Bool)

(declare-fun e!141763 () Bool)

(assert (=> b!229266 (= e!141782 e!141763)))

(declare-fun res!105676 () Bool)

(assert (=> b!229266 (=> (not res!105676) (not e!141763))))

(declare-fun lt!89526 () List!3474)

(assert (=> b!229266 (= res!105676 (= lt!89532 lt!89526))))

(declare-fun printWithSeparatorTokenWhenNeededRec!218 (LexerInterface!535 List!3475 BalanceConc!2250 Token!1042 Int) BalanceConc!2248)

(assert (=> b!229266 (= lt!89526 (list!1336 (printWithSeparatorTokenWhenNeededRec!218 thiss!17480 rules!1920 lt!89492 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!228 (LexerInterface!535 List!3475 List!3476 Token!1042) List!3474)

(assert (=> b!229266 (= lt!89532 (printWithSeparatorTokenWhenNeededList!228 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!229267 () Bool)

(declare-fun res!105682 () Bool)

(assert (=> b!229267 (=> (not res!105682) (not e!141782))))

(declare-fun rulesProduceIndividualToken!284 (LexerInterface!535 List!3475 Token!1042) Bool)

(assert (=> b!229267 (= res!105682 (rulesProduceIndividualToken!284 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!229268 () Bool)

(declare-fun e!141758 () Bool)

(declare-fun tp!93810 () Bool)

(assert (=> b!229268 (= e!141758 (and tp!93810 (inv!4313 (tag!849 (h!8862 rules!1920))) (inv!4316 (transformation!649 (h!8862 rules!1920))) e!141766))))

(declare-fun b!229269 () Bool)

(declare-fun res!105685 () Bool)

(assert (=> b!229269 (=> res!105685 e!141767)))

(declare-fun rulesProduceEachTokenIndividuallyList!185 (LexerInterface!535 List!3475 List!3476) Bool)

(assert (=> b!229269 (= res!105685 (not (rulesProduceEachTokenIndividuallyList!185 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!229270 () Bool)

(declare-fun res!105691 () Bool)

(assert (=> b!229270 (=> (not res!105691) (not e!141763))))

(assert (=> b!229270 (= res!105691 (= (list!1336 (seqFromList!675 lt!89532)) lt!89526))))

(declare-fun b!229271 () Bool)

(declare-fun res!105689 () Bool)

(assert (=> b!229271 (=> (not res!105689) (not e!141782))))

(declare-fun sepAndNonSepRulesDisjointChars!238 (List!3475 List!3475) Bool)

(assert (=> b!229271 (= res!105689 (sepAndNonSepRulesDisjointChars!238 rules!1920 rules!1920))))

(declare-fun b!229272 () Bool)

(declare-fun Unit!3981 () Unit!3976)

(assert (=> b!229272 (= e!141762 Unit!3981)))

(declare-fun lt!89521 () Unit!3976)

(declare-fun lt!89518 () C!2668)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!42 (LexerInterface!535 List!3475 List!3475 Rule!1098 Rule!1098 C!2668) Unit!3976)

(assert (=> b!229272 (= lt!89521 (lemmaSepRuleNotContainsCharContainedInANonSepRule!42 thiss!17480 rules!1920 rules!1920 (rule!1206 lt!89504) (rule!1206 separatorToken!170) lt!89518))))

(assert (=> b!229272 false))

(declare-fun b!229273 () Bool)

(declare-fun Unit!3982 () Unit!3976)

(assert (=> b!229273 (= e!141776 Unit!3982)))

(declare-fun lt!89523 () C!2668)

(declare-fun lt!89485 () Unit!3976)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!48 (Regex!873 List!3474 C!2668) Unit!3976)

(assert (=> b!229273 (= lt!89485 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!48 (regex!649 (rule!1206 lt!89504)) lt!89501 lt!89523))))

(declare-fun res!105668 () Bool)

(assert (=> b!229273 (= res!105668 (not (matchR!211 (regex!649 (rule!1206 lt!89504)) lt!89501)))))

(declare-fun e!141786 () Bool)

(assert (=> b!229273 (=> (not res!105668) (not e!141786))))

(assert (=> b!229273 e!141786))

(declare-fun b!229274 () Bool)

(assert (=> b!229274 (= e!141763 (not e!141759))))

(declare-fun res!105677 () Bool)

(assert (=> b!229274 (=> res!105677 e!141759)))

(declare-fun lt!89499 () List!3474)

(declare-fun lt!89527 () BalanceConc!2248)

(assert (=> b!229274 (= res!105677 (not (= lt!89499 (list!1336 lt!89527))))))

(assert (=> b!229274 (= lt!89527 (printWithSeparatorTokenWhenNeededRec!218 thiss!17480 rules!1920 (seqFromList!676 (t!33456 tokens!465)) separatorToken!170 0))))

(declare-fun lt!89493 () List!3474)

(assert (=> b!229274 (= lt!89493 lt!89515)))

(declare-fun lt!89489 () List!3474)

(declare-fun ++!870 (List!3474 List!3474) List!3474)

(assert (=> b!229274 (= lt!89515 (++!870 lt!89490 lt!89489))))

(assert (=> b!229274 (= lt!89493 (++!870 (++!870 lt!89490 lt!89528) lt!89499))))

(declare-fun lt!89508 () Unit!3976)

(declare-fun lemmaConcatAssociativity!350 (List!3474 List!3474 List!3474) Unit!3976)

(assert (=> b!229274 (= lt!89508 (lemmaConcatAssociativity!350 lt!89490 lt!89528 lt!89499))))

(declare-fun charsOf!304 (Token!1042) BalanceConc!2248)

(assert (=> b!229274 (= lt!89490 (list!1336 (charsOf!304 (h!8863 tokens!465))))))

(assert (=> b!229274 (= lt!89489 (++!870 lt!89528 lt!89499))))

(assert (=> b!229274 (= lt!89499 (printWithSeparatorTokenWhenNeededList!228 thiss!17480 rules!1920 (t!33456 tokens!465) separatorToken!170))))

(assert (=> b!229274 (= lt!89528 (list!1336 (charsOf!304 separatorToken!170)))))

(declare-fun b!229275 () Bool)

(declare-fun res!105686 () Bool)

(assert (=> b!229275 (=> res!105686 e!141767)))

(declare-fun filter!43 (List!3476 Int) List!3476)

(declare-datatypes ((tuple2!3750 0))(
  ( (tuple2!3751 (_1!2091 List!3476) (_2!2091 List!3474)) )
))
(declare-fun lexList!163 (LexerInterface!535 List!3475 List!3474) tuple2!3750)

(assert (=> b!229275 (= res!105686 (not (= (filter!43 (_1!2091 (lexList!163 thiss!17480 rules!1920 lt!89499)) lambda!7271) (t!33456 tokens!465))))))

(declare-fun b!229276 () Bool)

(declare-fun e!141778 () Bool)

(assert (=> b!229276 (= e!141778 e!141767)))

(declare-fun res!105680 () Bool)

(assert (=> b!229276 (=> res!105680 e!141767)))

(declare-fun lt!89516 () List!3476)

(assert (=> b!229276 (= res!105680 (not (= (filter!43 lt!89516 lambda!7271) (t!33456 tokens!465))))))

(assert (=> b!229276 (= (filter!43 lt!89516 lambda!7271) (t!33456 tokens!465))))

(declare-fun list!1337 (BalanceConc!2250) List!3476)

(assert (=> b!229276 (= lt!89516 (list!1337 (_1!2089 (lex!335 thiss!17480 rules!1920 lt!89527))))))

(declare-fun lt!89524 () Unit!3976)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!34 (LexerInterface!535 List!3475 List!3476 Token!1042) Unit!3976)

(assert (=> b!229276 (= lt!89524 (theoremInvertabilityFromTokensSepTokenWhenNeeded!34 thiss!17480 rules!1920 (t!33456 tokens!465) separatorToken!170))))

(declare-fun lt!89498 () Option!641)

(assert (=> b!229276 (= lt!89498 (Some!640 (tuple2!3749 separatorToken!170 lt!89499)))))

(declare-fun lt!89482 () Unit!3976)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!40 (LexerInterface!535 List!3475 Token!1042 Rule!1098 List!3474 Rule!1098) Unit!3976)

(assert (=> b!229276 (= lt!89482 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!40 thiss!17480 rules!1920 separatorToken!170 (rule!1206 separatorToken!170) lt!89499 (rule!1206 lt!89504)))))

(declare-fun lt!89488 () Unit!3976)

(assert (=> b!229276 (= lt!89488 e!141762)))

(declare-fun c!43880 () Bool)

(declare-fun contains!624 (List!3474 C!2668) Bool)

(declare-fun usedCharacters!54 (Regex!873) List!3474)

(assert (=> b!229276 (= c!43880 (contains!624 (usedCharacters!54 (regex!649 (rule!1206 separatorToken!170))) lt!89518))))

(declare-fun head!794 (List!3474) C!2668)

(assert (=> b!229276 (= lt!89518 (head!794 lt!89499))))

(declare-fun lt!89530 () Unit!3976)

(assert (=> b!229276 (= lt!89530 e!141776)))

(declare-fun c!43878 () Bool)

(assert (=> b!229276 (= c!43878 (not (contains!624 (usedCharacters!54 (regex!649 (rule!1206 lt!89504))) lt!89523)))))

(assert (=> b!229276 (= lt!89523 (head!794 lt!89501))))

(assert (=> b!229276 e!141790))

(declare-fun res!105696 () Bool)

(assert (=> b!229276 (=> (not res!105696) (not e!141790))))

(declare-fun isDefined!492 (Option!639) Bool)

(assert (=> b!229276 (= res!105696 (isDefined!492 lt!89502))))

(declare-fun getRuleFromTag!90 (LexerInterface!535 List!3475 String!4435) Option!639)

(assert (=> b!229276 (= lt!89502 (getRuleFromTag!90 thiss!17480 rules!1920 (tag!849 (rule!1206 lt!89504))))))

(declare-fun lt!89511 () Unit!3976)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!90 (LexerInterface!535 List!3475 List!3474 Token!1042) Unit!3976)

(assert (=> b!229276 (= lt!89511 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!90 thiss!17480 rules!1920 lt!89501 lt!89504))))

(assert (=> b!229276 (= lt!89501 (list!1336 (charsOf!304 lt!89504)))))

(declare-fun lt!89484 () Unit!3976)

(assert (=> b!229276 (= lt!89484 (forallContained!216 tokens!465 lambda!7272 lt!89504))))

(assert (=> b!229276 e!141784))

(declare-fun res!105688 () Bool)

(assert (=> b!229276 (=> (not res!105688) (not e!141784))))

(declare-fun size!2775 (BalanceConc!2250) Int)

(assert (=> b!229276 (= res!105688 (= (size!2775 (_1!2089 lt!89500)) 1))))

(declare-fun lt!89514 () BalanceConc!2248)

(assert (=> b!229276 (= lt!89500 (lex!335 thiss!17480 rules!1920 lt!89514))))

(declare-fun lt!89517 () BalanceConc!2250)

(assert (=> b!229276 (= lt!89514 (printTailRec!229 thiss!17480 lt!89517 0 (BalanceConc!2249 Empty!1120)))))

(assert (=> b!229276 (= lt!89514 (print!266 thiss!17480 lt!89517))))

(assert (=> b!229276 (= lt!89517 (singletonSeq!201 lt!89504))))

(assert (=> b!229276 e!141772))

(declare-fun res!105670 () Bool)

(assert (=> b!229276 (=> (not res!105670) (not e!141772))))

(assert (=> b!229276 (= res!105670 (isDefined!492 lt!89510))))

(assert (=> b!229276 (= lt!89510 (getRuleFromTag!90 thiss!17480 rules!1920 (tag!849 (rule!1206 separatorToken!170))))))

(declare-fun lt!89519 () Unit!3976)

(assert (=> b!229276 (= lt!89519 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!90 thiss!17480 rules!1920 lt!89528 separatorToken!170))))

(assert (=> b!229276 e!141768))

(declare-fun res!105679 () Bool)

(assert (=> b!229276 (=> (not res!105679) (not e!141768))))

(assert (=> b!229276 (= res!105679 (= (size!2775 (_1!2089 lt!89531)) 1))))

(declare-fun lt!89507 () BalanceConc!2248)

(assert (=> b!229276 (= lt!89531 (lex!335 thiss!17480 rules!1920 lt!89507))))

(declare-fun lt!89494 () BalanceConc!2250)

(assert (=> b!229276 (= lt!89507 (printTailRec!229 thiss!17480 lt!89494 0 (BalanceConc!2249 Empty!1120)))))

(assert (=> b!229276 (= lt!89507 (print!266 thiss!17480 lt!89494))))

(assert (=> b!229276 (= lt!89494 (singletonSeq!201 separatorToken!170))))

(assert (=> b!229276 (rulesProduceIndividualToken!284 thiss!17480 rules!1920 lt!89504)))

(declare-fun lt!89487 () Unit!3976)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!102 (LexerInterface!535 List!3475 List!3476 Token!1042) Unit!3976)

(assert (=> b!229276 (= lt!89487 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!102 thiss!17480 rules!1920 tokens!465 lt!89504))))

(assert (=> b!229276 (= lt!89504 (head!793 (t!33456 tokens!465)))))

(declare-fun lt!89513 () Unit!3976)

(assert (=> b!229276 (= lt!89513 e!141777)))

(declare-fun c!43879 () Bool)

(declare-fun isEmpty!2000 (List!3476) Bool)

(assert (=> b!229276 (= c!43879 (isEmpty!2000 (t!33456 tokens!465)))))

(assert (=> b!229276 (= lt!89498 (maxPrefix!265 thiss!17480 rules!1920 lt!89489))))

(declare-fun lt!89529 () tuple2!3748)

(assert (=> b!229276 (= lt!89489 (_2!2090 lt!89529))))

(declare-fun lt!89506 () Unit!3976)

(declare-fun lemmaSamePrefixThenSameSuffix!170 (List!3474 List!3474 List!3474 List!3474 List!3474) Unit!3976)

(assert (=> b!229276 (= lt!89506 (lemmaSamePrefixThenSameSuffix!170 lt!89490 lt!89489 lt!89490 (_2!2090 lt!89529) lt!89532))))

(assert (=> b!229276 (= lt!89529 (get!1100 (maxPrefix!265 thiss!17480 rules!1920 lt!89532)))))

(declare-fun isPrefix!345 (List!3474 List!3474) Bool)

(assert (=> b!229276 (isPrefix!345 lt!89490 lt!89515)))

(declare-fun lt!89483 () Unit!3976)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!240 (List!3474 List!3474) Unit!3976)

(assert (=> b!229276 (= lt!89483 (lemmaConcatTwoListThenFirstIsPrefix!240 lt!89490 lt!89489))))

(assert (=> b!229276 e!141765))

(declare-fun res!105672 () Bool)

(assert (=> b!229276 (=> res!105672 e!141765)))

(assert (=> b!229276 (= res!105672 (isEmpty!2000 tokens!465))))

(declare-fun lt!89520 () Unit!3976)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!110 (LexerInterface!535 List!3475 List!3476 Token!1042) Unit!3976)

(assert (=> b!229276 (= lt!89520 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!110 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!229277 () Bool)

(assert (=> b!229277 (= e!141761 e!141778)))

(declare-fun res!105666 () Bool)

(assert (=> b!229277 (=> res!105666 e!141778)))

(assert (=> b!229277 (= res!105666 (not lt!89495))))

(assert (=> b!229277 e!141769))

(declare-fun res!105664 () Bool)

(assert (=> b!229277 (=> (not res!105664) (not e!141769))))

(declare-fun lt!89525 () tuple2!3748)

(assert (=> b!229277 (= res!105664 (= (_1!2090 lt!89525) (h!8863 tokens!465)))))

(declare-fun lt!89491 () Option!641)

(assert (=> b!229277 (= lt!89525 (get!1100 lt!89491))))

(assert (=> b!229277 (isDefined!491 lt!89491)))

(assert (=> b!229277 (= lt!89491 (maxPrefix!265 thiss!17480 rules!1920 lt!89490))))

(declare-fun b!229278 () Bool)

(declare-fun e!141774 () Bool)

(declare-fun tp!93801 () Bool)

(assert (=> b!229278 (= e!141774 (and e!141758 tp!93801))))

(declare-fun b!229279 () Bool)

(declare-fun isEmpty!2001 (BalanceConc!2248) Bool)

(assert (=> b!229279 (= e!141784 (isEmpty!2001 (_2!2089 lt!89500)))))

(declare-fun b!229280 () Bool)

(assert (=> b!229280 (= e!141756 (not (= lt!89532 (++!870 lt!89490 lt!89499))))))

(declare-fun b!229281 () Bool)

(declare-fun res!105695 () Bool)

(assert (=> b!229281 (=> res!105695 e!141789)))

(assert (=> b!229281 (= res!105695 (not (rulesProduceIndividualToken!284 thiss!17480 rules!1920 (h!8863 tokens!465))))))

(declare-fun b!229282 () Bool)

(declare-fun res!105669 () Bool)

(assert (=> b!229282 (=> (not res!105669) (not e!141769))))

(declare-fun isEmpty!2002 (List!3474) Bool)

(assert (=> b!229282 (= res!105669 (isEmpty!2002 (_2!2090 lt!89525)))))

(declare-fun tp!93809 () Bool)

(declare-fun e!141788 () Bool)

(declare-fun b!229283 () Bool)

(declare-fun inv!4317 (Token!1042) Bool)

(assert (=> b!229283 (= e!141788 (and (inv!4317 (h!8863 tokens!465)) e!141787 tp!93809))))

(declare-fun b!229284 () Bool)

(assert (=> b!229284 (= e!141768 (isEmpty!2001 (_2!2089 lt!89531)))))

(declare-fun b!229285 () Bool)

(declare-fun Unit!3983 () Unit!3976)

(assert (=> b!229285 (= e!141777 Unit!3983)))

(declare-fun res!105690 () Bool)

(assert (=> start!24498 (=> (not res!105690) (not e!141773))))

(assert (=> start!24498 (= res!105690 ((_ is Lexer!533) thiss!17480))))

(assert (=> start!24498 e!141773))

(assert (=> start!24498 true))

(assert (=> start!24498 e!141774))

(assert (=> start!24498 (and (inv!4317 separatorToken!170) e!141791)))

(assert (=> start!24498 e!141788))

(declare-fun b!229245 () Bool)

(assert (=> b!229245 (= e!141786 false)))

(assert (= (and start!24498 res!105690) b!229241))

(assert (= (and b!229241 res!105694) b!229240))

(assert (= (and b!229240 res!105667) b!229249))

(assert (= (and b!229249 res!105683) b!229267))

(assert (= (and b!229267 res!105682) b!229259))

(assert (= (and b!229259 res!105662) b!229243))

(assert (= (and b!229243 res!105671) b!229271))

(assert (= (and b!229271 res!105689) b!229246))

(assert (= (and b!229246 res!105678) b!229266))

(assert (= (and b!229266 res!105676) b!229270))

(assert (= (and b!229270 res!105691) b!229274))

(assert (= (and b!229274 (not res!105677)) b!229253))

(assert (= (and b!229253 res!105675) b!229280))

(assert (= (and b!229253 (not res!105693)) b!229257))

(assert (= (and b!229257 (not res!105681)) b!229281))

(assert (= (and b!229281 (not res!105695)) b!229251))

(assert (= (and b!229251 (not res!105674)) b!229239))

(assert (= (and b!229239 (not res!105692)) b!229277))

(assert (= (and b!229277 res!105664) b!229282))

(assert (= (and b!229282 res!105669) b!229236))

(assert (= (and b!229277 (not res!105666)) b!229276))

(assert (= (and b!229276 (not res!105672)) b!229248))

(assert (= (and b!229248 res!105673) b!229260))

(assert (= (and b!229276 c!43879) b!229250))

(assert (= (and b!229276 (not c!43879)) b!229285))

(assert (= (and b!229276 res!105679) b!229265))

(assert (= (and b!229265 res!105663) b!229284))

(assert (= (and b!229276 res!105670) b!229256))

(assert (= (and b!229256 res!105687) b!229258))

(assert (= (and b!229276 res!105688) b!229247))

(assert (= (and b!229247 res!105684) b!229279))

(assert (= (and b!229276 res!105696) b!229235))

(assert (= (and b!229235 res!105665) b!229252))

(assert (= (and b!229276 c!43878) b!229273))

(assert (= (and b!229276 (not c!43878)) b!229261))

(assert (= (and b!229273 res!105668) b!229245))

(assert (= (and b!229276 c!43880) b!229272))

(assert (= (and b!229276 (not c!43880)) b!229237))

(assert (= (and b!229276 (not res!105680)) b!229275))

(assert (= (and b!229275 (not res!105686)) b!229269))

(assert (= (and b!229269 (not res!105685)) b!229238))

(assert (= b!229268 b!229244))

(assert (= b!229278 b!229268))

(assert (= (and start!24498 ((_ is Cons!3465) rules!1920)) b!229278))

(assert (= b!229242 b!229255))

(assert (= b!229262 b!229242))

(assert (= start!24498 b!229262))

(assert (= b!229264 b!229263))

(assert (= b!229254 b!229264))

(assert (= b!229283 b!229254))

(assert (= (and start!24498 ((_ is Cons!3466) tokens!465)) b!229283))

(declare-fun m!270333 () Bool)

(assert (=> b!229248 m!270333))

(declare-fun m!270335 () Bool)

(assert (=> b!229248 m!270335))

(declare-fun m!270337 () Bool)

(assert (=> b!229281 m!270337))

(declare-fun m!270339 () Bool)

(assert (=> b!229235 m!270339))

(declare-fun m!270341 () Bool)

(assert (=> b!229235 m!270341))

(declare-fun m!270343 () Bool)

(assert (=> b!229254 m!270343))

(declare-fun m!270345 () Bool)

(assert (=> start!24498 m!270345))

(declare-fun m!270347 () Bool)

(assert (=> b!229267 m!270347))

(declare-fun m!270349 () Bool)

(assert (=> b!229280 m!270349))

(declare-fun m!270351 () Bool)

(assert (=> b!229282 m!270351))

(declare-fun m!270353 () Bool)

(assert (=> b!229275 m!270353))

(declare-fun m!270355 () Bool)

(assert (=> b!229275 m!270355))

(declare-fun m!270357 () Bool)

(assert (=> b!229270 m!270357))

(assert (=> b!229270 m!270357))

(declare-fun m!270359 () Bool)

(assert (=> b!229270 m!270359))

(declare-fun m!270361 () Bool)

(assert (=> b!229249 m!270361))

(declare-fun m!270363 () Bool)

(assert (=> b!229249 m!270363))

(declare-fun m!270365 () Bool)

(assert (=> b!229243 m!270365))

(declare-fun m!270367 () Bool)

(assert (=> b!229236 m!270367))

(declare-fun m!270369 () Bool)

(assert (=> b!229272 m!270369))

(declare-fun m!270371 () Bool)

(assert (=> b!229242 m!270371))

(declare-fun m!270373 () Bool)

(assert (=> b!229242 m!270373))

(declare-fun m!270375 () Bool)

(assert (=> b!229241 m!270375))

(declare-fun m!270377 () Bool)

(assert (=> b!229276 m!270377))

(declare-fun m!270379 () Bool)

(assert (=> b!229276 m!270379))

(declare-fun m!270381 () Bool)

(assert (=> b!229276 m!270381))

(declare-fun m!270383 () Bool)

(assert (=> b!229276 m!270383))

(declare-fun m!270385 () Bool)

(assert (=> b!229276 m!270385))

(declare-fun m!270387 () Bool)

(assert (=> b!229276 m!270387))

(declare-fun m!270389 () Bool)

(assert (=> b!229276 m!270389))

(declare-fun m!270391 () Bool)

(assert (=> b!229276 m!270391))

(declare-fun m!270393 () Bool)

(assert (=> b!229276 m!270393))

(declare-fun m!270395 () Bool)

(assert (=> b!229276 m!270395))

(declare-fun m!270397 () Bool)

(assert (=> b!229276 m!270397))

(declare-fun m!270399 () Bool)

(assert (=> b!229276 m!270399))

(declare-fun m!270401 () Bool)

(assert (=> b!229276 m!270401))

(declare-fun m!270403 () Bool)

(assert (=> b!229276 m!270403))

(assert (=> b!229276 m!270335))

(declare-fun m!270405 () Bool)

(assert (=> b!229276 m!270405))

(declare-fun m!270407 () Bool)

(assert (=> b!229276 m!270407))

(declare-fun m!270409 () Bool)

(assert (=> b!229276 m!270409))

(declare-fun m!270411 () Bool)

(assert (=> b!229276 m!270411))

(declare-fun m!270413 () Bool)

(assert (=> b!229276 m!270413))

(declare-fun m!270415 () Bool)

(assert (=> b!229276 m!270415))

(declare-fun m!270417 () Bool)

(assert (=> b!229276 m!270417))

(declare-fun m!270419 () Bool)

(assert (=> b!229276 m!270419))

(declare-fun m!270421 () Bool)

(assert (=> b!229276 m!270421))

(assert (=> b!229276 m!270421))

(declare-fun m!270423 () Bool)

(assert (=> b!229276 m!270423))

(declare-fun m!270425 () Bool)

(assert (=> b!229276 m!270425))

(declare-fun m!270427 () Bool)

(assert (=> b!229276 m!270427))

(assert (=> b!229276 m!270391))

(declare-fun m!270429 () Bool)

(assert (=> b!229276 m!270429))

(declare-fun m!270431 () Bool)

(assert (=> b!229276 m!270431))

(declare-fun m!270433 () Bool)

(assert (=> b!229276 m!270433))

(assert (=> b!229276 m!270395))

(assert (=> b!229276 m!270335))

(declare-fun m!270435 () Bool)

(assert (=> b!229276 m!270435))

(declare-fun m!270437 () Bool)

(assert (=> b!229276 m!270437))

(declare-fun m!270439 () Bool)

(assert (=> b!229276 m!270439))

(declare-fun m!270441 () Bool)

(assert (=> b!229276 m!270441))

(declare-fun m!270443 () Bool)

(assert (=> b!229276 m!270443))

(declare-fun m!270445 () Bool)

(assert (=> b!229276 m!270445))

(declare-fun m!270447 () Bool)

(assert (=> b!229276 m!270447))

(declare-fun m!270449 () Bool)

(assert (=> b!229276 m!270449))

(declare-fun m!270451 () Bool)

(assert (=> b!229276 m!270451))

(declare-fun m!270453 () Bool)

(assert (=> b!229276 m!270453))

(assert (=> b!229276 m!270447))

(declare-fun m!270455 () Bool)

(assert (=> b!229276 m!270455))

(declare-fun m!270457 () Bool)

(assert (=> b!229276 m!270457))

(declare-fun m!270459 () Bool)

(assert (=> b!229251 m!270459))

(assert (=> b!229251 m!270459))

(declare-fun m!270461 () Bool)

(assert (=> b!229251 m!270461))

(declare-fun m!270463 () Bool)

(assert (=> b!229251 m!270463))

(declare-fun m!270465 () Bool)

(assert (=> b!229271 m!270465))

(declare-fun m!270467 () Bool)

(assert (=> b!229257 m!270467))

(declare-fun m!270469 () Bool)

(assert (=> b!229257 m!270469))

(declare-fun m!270471 () Bool)

(assert (=> b!229257 m!270471))

(declare-fun m!270473 () Bool)

(assert (=> b!229257 m!270473))

(declare-fun m!270475 () Bool)

(assert (=> b!229257 m!270475))

(declare-fun m!270477 () Bool)

(assert (=> b!229274 m!270477))

(declare-fun m!270479 () Bool)

(assert (=> b!229274 m!270479))

(declare-fun m!270481 () Bool)

(assert (=> b!229274 m!270481))

(declare-fun m!270483 () Bool)

(assert (=> b!229274 m!270483))

(declare-fun m!270485 () Bool)

(assert (=> b!229274 m!270485))

(assert (=> b!229274 m!270479))

(declare-fun m!270487 () Bool)

(assert (=> b!229274 m!270487))

(assert (=> b!229274 m!270483))

(declare-fun m!270489 () Bool)

(assert (=> b!229274 m!270489))

(declare-fun m!270491 () Bool)

(assert (=> b!229274 m!270491))

(declare-fun m!270493 () Bool)

(assert (=> b!229274 m!270493))

(declare-fun m!270495 () Bool)

(assert (=> b!229274 m!270495))

(declare-fun m!270497 () Bool)

(assert (=> b!229274 m!270497))

(declare-fun m!270499 () Bool)

(assert (=> b!229274 m!270499))

(declare-fun m!270501 () Bool)

(assert (=> b!229274 m!270501))

(assert (=> b!229274 m!270491))

(assert (=> b!229274 m!270497))

(declare-fun m!270503 () Bool)

(assert (=> b!229264 m!270503))

(declare-fun m!270505 () Bool)

(assert (=> b!229264 m!270505))

(declare-fun m!270507 () Bool)

(assert (=> b!229284 m!270507))

(declare-fun m!270509 () Bool)

(assert (=> b!229247 m!270509))

(declare-fun m!270511 () Bool)

(assert (=> b!229239 m!270511))

(assert (=> b!229239 m!270511))

(declare-fun m!270513 () Bool)

(assert (=> b!229239 m!270513))

(assert (=> b!229239 m!270513))

(declare-fun m!270515 () Bool)

(assert (=> b!229239 m!270515))

(declare-fun m!270517 () Bool)

(assert (=> b!229239 m!270517))

(declare-fun m!270519 () Bool)

(assert (=> b!229277 m!270519))

(declare-fun m!270521 () Bool)

(assert (=> b!229277 m!270521))

(declare-fun m!270523 () Bool)

(assert (=> b!229277 m!270523))

(declare-fun m!270525 () Bool)

(assert (=> b!229256 m!270525))

(declare-fun m!270527 () Bool)

(assert (=> b!229256 m!270527))

(declare-fun m!270529 () Bool)

(assert (=> b!229260 m!270529))

(declare-fun m!270531 () Bool)

(assert (=> b!229260 m!270531))

(declare-fun m!270533 () Bool)

(assert (=> b!229273 m!270533))

(declare-fun m!270535 () Bool)

(assert (=> b!229273 m!270535))

(declare-fun m!270537 () Bool)

(assert (=> b!229240 m!270537))

(declare-fun m!270539 () Bool)

(assert (=> b!229279 m!270539))

(declare-fun m!270541 () Bool)

(assert (=> b!229262 m!270541))

(declare-fun m!270543 () Bool)

(assert (=> b!229265 m!270543))

(declare-fun m!270545 () Bool)

(assert (=> b!229268 m!270545))

(declare-fun m!270547 () Bool)

(assert (=> b!229268 m!270547))

(declare-fun m!270549 () Bool)

(assert (=> b!229283 m!270549))

(declare-fun m!270551 () Bool)

(assert (=> b!229266 m!270551))

(assert (=> b!229266 m!270551))

(declare-fun m!270553 () Bool)

(assert (=> b!229266 m!270553))

(declare-fun m!270555 () Bool)

(assert (=> b!229266 m!270555))

(declare-fun m!270557 () Bool)

(assert (=> b!229269 m!270557))

(check-sat (not b!229257) (not b!229274) (not b!229272) (not b_next!8585) (not b!229284) b_and!17005 (not b!229251) (not b!229267) (not b!229278) b_and!16999 (not b!229235) (not b!229280) (not b!229294) (not b_next!8591) (not b!229283) (not b!229269) (not b!229279) (not b!229275) (not b!229262) (not b!229260) (not b!229273) b_and!17003 (not b!229240) b_and!17007 (not b!229277) (not b!229282) (not b!229265) (not b!229249) (not b!229243) (not b_next!8593) (not b!229254) (not b!229264) (not b!229239) b_and!16997 (not b!229248) (not b!229236) (not b!229281) (not b_next!8595) b_and!17001 (not b!229256) (not b!229242) (not b!229247) (not b!229241) (not b_next!8587) (not b!229276) (not b_next!8589) (not b!229270) (not b!229271) (not start!24498) (not b!229266) (not b!229268))
(check-sat b_and!16999 (not b_next!8591) b_and!17003 b_and!17007 (not b_next!8593) (not b_next!8585) b_and!16997 (not b_next!8595) b_and!17005 b_and!17001 (not b_next!8587) (not b_next!8589))
