; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24254 () Bool)

(assert start!24254)

(declare-fun b!226757 () Bool)

(declare-fun b_free!8473 () Bool)

(declare-fun b_next!8473 () Bool)

(assert (=> b!226757 (= b_free!8473 (not b_next!8473))))

(declare-fun tp!93369 () Bool)

(declare-fun b_and!16825 () Bool)

(assert (=> b!226757 (= tp!93369 b_and!16825)))

(declare-fun b_free!8475 () Bool)

(declare-fun b_next!8475 () Bool)

(assert (=> b!226757 (= b_free!8475 (not b_next!8475))))

(declare-fun tp!93377 () Bool)

(declare-fun b_and!16827 () Bool)

(assert (=> b!226757 (= tp!93377 b_and!16827)))

(declare-fun b!226769 () Bool)

(declare-fun b_free!8477 () Bool)

(declare-fun b_next!8477 () Bool)

(assert (=> b!226769 (= b_free!8477 (not b_next!8477))))

(declare-fun tp!93368 () Bool)

(declare-fun b_and!16829 () Bool)

(assert (=> b!226769 (= tp!93368 b_and!16829)))

(declare-fun b_free!8479 () Bool)

(declare-fun b_next!8479 () Bool)

(assert (=> b!226769 (= b_free!8479 (not b_next!8479))))

(declare-fun tp!93373 () Bool)

(declare-fun b_and!16831 () Bool)

(assert (=> b!226769 (= tp!93373 b_and!16831)))

(declare-fun b!226762 () Bool)

(declare-fun b_free!8481 () Bool)

(declare-fun b_next!8481 () Bool)

(assert (=> b!226762 (= b_free!8481 (not b_next!8481))))

(declare-fun tp!93374 () Bool)

(declare-fun b_and!16833 () Bool)

(assert (=> b!226762 (= tp!93374 b_and!16833)))

(declare-fun b_free!8483 () Bool)

(declare-fun b_next!8483 () Bool)

(assert (=> b!226762 (= b_free!8483 (not b_next!8483))))

(declare-fun tp!93366 () Bool)

(declare-fun b_and!16835 () Bool)

(assert (=> b!226762 (= tp!93366 b_and!16835)))

(declare-fun bs!24144 () Bool)

(declare-fun b!226744 () Bool)

(declare-fun b!226724 () Bool)

(assert (= bs!24144 (and b!226744 b!226724)))

(declare-fun lambda!7110 () Int)

(declare-fun lambda!7109 () Int)

(assert (=> bs!24144 (not (= lambda!7110 lambda!7109))))

(declare-fun b!226782 () Bool)

(declare-fun e!140067 () Bool)

(assert (=> b!226782 (= e!140067 true)))

(declare-fun b!226781 () Bool)

(declare-fun e!140066 () Bool)

(assert (=> b!226781 (= e!140066 e!140067)))

(declare-fun b!226780 () Bool)

(declare-fun e!140065 () Bool)

(assert (=> b!226780 (= e!140065 e!140066)))

(assert (=> b!226744 e!140065))

(assert (= b!226781 b!226782))

(assert (= b!226780 b!226781))

(declare-datatypes ((List!3439 0))(
  ( (Nil!3429) (Cons!3429 (h!8826 (_ BitVec 16)) (t!33297 List!3439)) )
))
(declare-datatypes ((TokenValue!663 0))(
  ( (FloatLiteralValue!1326 (text!5086 List!3439)) (TokenValueExt!662 (__x!2813 Int)) (Broken!3315 (value!22558 List!3439)) (Object!672) (End!663) (Def!663) (Underscore!663) (Match!663) (Else!663) (Error!663) (Case!663) (If!663) (Extends!663) (Abstract!663) (Class!663) (Val!663) (DelimiterValue!1326 (del!723 List!3439)) (KeywordValue!669 (value!22559 List!3439)) (CommentValue!1326 (value!22560 List!3439)) (WhitespaceValue!1326 (value!22561 List!3439)) (IndentationValue!663 (value!22562 List!3439)) (String!4394) (Int32!663) (Broken!3316 (value!22563 List!3439)) (Boolean!664) (Unit!3887) (OperatorValue!666 (op!723 List!3439)) (IdentifierValue!1326 (value!22564 List!3439)) (IdentifierValue!1327 (value!22565 List!3439)) (WhitespaceValue!1327 (value!22566 List!3439)) (True!1326) (False!1326) (Broken!3317 (value!22567 List!3439)) (Broken!3318 (value!22568 List!3439)) (True!1327) (RightBrace!663) (RightBracket!663) (Colon!663) (Null!663) (Comma!663) (LeftBracket!663) (False!1327) (LeftBrace!663) (ImaginaryLiteralValue!663 (text!5087 List!3439)) (StringLiteralValue!1989 (value!22569 List!3439)) (EOFValue!663 (value!22570 List!3439)) (IdentValue!663 (value!22571 List!3439)) (DelimiterValue!1327 (value!22572 List!3439)) (DedentValue!663 (value!22573 List!3439)) (NewLineValue!663 (value!22574 List!3439)) (IntegerValue!1989 (value!22575 (_ BitVec 32)) (text!5088 List!3439)) (IntegerValue!1990 (value!22576 Int) (text!5089 List!3439)) (Times!663) (Or!663) (Equal!663) (Minus!663) (Broken!3319 (value!22577 List!3439)) (And!663) (Div!663) (LessEqual!663) (Mod!663) (Concat!1528) (Not!663) (Plus!663) (SpaceValue!663 (value!22578 List!3439)) (IntegerValue!1991 (value!22579 Int) (text!5090 List!3439)) (StringLiteralValue!1990 (text!5091 List!3439)) (FloatLiteralValue!1327 (text!5092 List!3439)) (BytesLiteralValue!663 (value!22580 List!3439)) (CommentValue!1327 (value!22581 List!3439)) (StringLiteralValue!1991 (value!22582 List!3439)) (ErrorTokenValue!663 (msg!724 List!3439)) )
))
(declare-datatypes ((C!2652 0))(
  ( (C!2653 (val!1212 Int)) )
))
(declare-datatypes ((List!3440 0))(
  ( (Nil!3430) (Cons!3430 (h!8827 C!2652) (t!33298 List!3440)) )
))
(declare-datatypes ((IArray!2209 0))(
  ( (IArray!2210 (innerList!1162 List!3440)) )
))
(declare-datatypes ((Conc!1104 0))(
  ( (Node!1104 (left!2763 Conc!1104) (right!3093 Conc!1104) (csize!2438 Int) (cheight!1315 Int)) (Leaf!1764 (xs!3699 IArray!2209) (csize!2439 Int)) (Empty!1104) )
))
(declare-datatypes ((BalanceConc!2216 0))(
  ( (BalanceConc!2217 (c!43527 Conc!1104)) )
))
(declare-datatypes ((TokenValueInjection!1098 0))(
  ( (TokenValueInjection!1099 (toValue!1336 Int) (toChars!1195 Int)) )
))
(declare-datatypes ((String!4395 0))(
  ( (String!4396 (value!22583 String)) )
))
(declare-datatypes ((Regex!865 0))(
  ( (ElementMatch!865 (c!43528 C!2652)) (Concat!1529 (regOne!2242 Regex!865) (regTwo!2242 Regex!865)) (EmptyExpr!865) (Star!865 (reg!1194 Regex!865)) (EmptyLang!865) (Union!865 (regOne!2243 Regex!865) (regTwo!2243 Regex!865)) )
))
(declare-datatypes ((Rule!1082 0))(
  ( (Rule!1083 (regex!641 Regex!865) (tag!839 String!4395) (isSeparator!641 Bool) (transformation!641 TokenValueInjection!1098)) )
))
(declare-datatypes ((List!3441 0))(
  ( (Nil!3431) (Cons!3431 (h!8828 Rule!1082) (t!33299 List!3441)) )
))
(declare-fun rules!1920 () List!3441)

(get-info :version)

(assert (= (and b!226744 ((_ is Cons!3431) rules!1920)) b!226780))

(declare-fun order!2371 () Int)

(declare-fun order!2369 () Int)

(declare-fun dynLambda!1589 (Int Int) Int)

(declare-fun dynLambda!1590 (Int Int) Int)

(assert (=> b!226782 (< (dynLambda!1589 order!2369 (toValue!1336 (transformation!641 (h!8828 rules!1920)))) (dynLambda!1590 order!2371 lambda!7110))))

(declare-fun order!2373 () Int)

(declare-fun dynLambda!1591 (Int Int) Int)

(assert (=> b!226782 (< (dynLambda!1591 order!2373 (toChars!1195 (transformation!641 (h!8828 rules!1920)))) (dynLambda!1590 order!2371 lambda!7110))))

(assert (=> b!226744 true))

(declare-fun b!226723 () Bool)

(declare-fun res!104297 () Bool)

(declare-fun e!140026 () Bool)

(assert (=> b!226723 (=> (not res!104297) (not e!140026))))

(declare-fun isEmpty!1948 (List!3441) Bool)

(assert (=> b!226723 (= res!104297 (not (isEmpty!1948 rules!1920)))))

(declare-fun b!226725 () Bool)

(declare-datatypes ((Token!1026 0))(
  ( (Token!1027 (value!22584 TokenValue!663) (rule!1196 Rule!1082) (size!2750 Int) (originalCharacters!684 List!3440)) )
))
(declare-datatypes ((List!3442 0))(
  ( (Nil!3432) (Cons!3432 (h!8829 Token!1026) (t!33300 List!3442)) )
))
(declare-fun tokens!465 () List!3442)

(declare-fun e!140046 () Bool)

(declare-fun tp!93376 () Bool)

(declare-fun e!140039 () Bool)

(declare-fun inv!4281 (String!4395) Bool)

(declare-fun inv!4284 (TokenValueInjection!1098) Bool)

(assert (=> b!226725 (= e!140046 (and tp!93376 (inv!4281 (tag!839 (rule!1196 (h!8829 tokens!465)))) (inv!4284 (transformation!641 (rule!1196 (h!8829 tokens!465)))) e!140039))))

(declare-fun e!140025 () Bool)

(declare-fun b!226726 () Bool)

(declare-fun e!140024 () Bool)

(declare-fun tp!93365 () Bool)

(declare-fun inv!4285 (Token!1026) Bool)

(assert (=> b!226726 (= e!140024 (and (inv!4285 (h!8829 tokens!465)) e!140025 tp!93365))))

(declare-fun b!226727 () Bool)

(declare-fun res!104305 () Bool)

(declare-fun e!140037 () Bool)

(assert (=> b!226727 (=> (not res!104305) (not e!140037))))

(assert (=> b!226727 (= res!104305 ((_ is Cons!3432) tokens!465))))

(declare-fun b!226728 () Bool)

(declare-fun e!140058 () Bool)

(declare-fun e!140036 () Bool)

(assert (=> b!226728 (= e!140058 e!140036)))

(declare-fun res!104280 () Bool)

(assert (=> b!226728 (=> res!104280 e!140036)))

(declare-fun lt!87711 () Bool)

(assert (=> b!226728 (= res!104280 (not lt!87711))))

(declare-fun e!140022 () Bool)

(assert (=> b!226728 e!140022))

(declare-fun res!104301 () Bool)

(assert (=> b!226728 (=> (not res!104301) (not e!140022))))

(declare-datatypes ((tuple2!3680 0))(
  ( (tuple2!3681 (_1!2056 Token!1026) (_2!2056 List!3440)) )
))
(declare-fun lt!87712 () tuple2!3680)

(assert (=> b!226728 (= res!104301 (= (_1!2056 lt!87712) (h!8829 tokens!465)))))

(declare-datatypes ((Option!615 0))(
  ( (None!614) (Some!614 (v!14297 tuple2!3680)) )
))
(declare-fun lt!87677 () Option!615)

(declare-fun get!1077 (Option!615) tuple2!3680)

(assert (=> b!226728 (= lt!87712 (get!1077 lt!87677))))

(declare-fun isDefined!466 (Option!615) Bool)

(assert (=> b!226728 (isDefined!466 lt!87677)))

(declare-datatypes ((LexerInterface!527 0))(
  ( (LexerInterfaceExt!524 (__x!2814 Int)) (Lexer!525) )
))
(declare-fun thiss!17480 () LexerInterface!527)

(declare-fun lt!87688 () List!3440)

(declare-fun maxPrefix!257 (LexerInterface!527 List!3441 List!3440) Option!615)

(assert (=> b!226728 (= lt!87677 (maxPrefix!257 thiss!17480 rules!1920 lt!87688))))

(declare-fun b!226729 () Bool)

(declare-fun e!140054 () Bool)

(declare-fun e!140032 () Bool)

(declare-fun separatorToken!170 () Token!1026)

(declare-fun tp!93367 () Bool)

(assert (=> b!226729 (= e!140032 (and tp!93367 (inv!4281 (tag!839 (rule!1196 separatorToken!170))) (inv!4284 (transformation!641 (rule!1196 separatorToken!170))) e!140054))))

(declare-fun b!226730 () Bool)

(declare-fun res!104288 () Bool)

(declare-fun e!140023 () Bool)

(assert (=> b!226730 (=> (not res!104288) (not e!140023))))

(declare-fun lt!87671 () List!3440)

(declare-fun lt!87684 () List!3440)

(declare-fun list!1316 (BalanceConc!2216) List!3440)

(declare-fun seqFromList!659 (List!3440) BalanceConc!2216)

(assert (=> b!226730 (= res!104288 (= (list!1316 (seqFromList!659 lt!87671)) lt!87684))))

(declare-fun b!226731 () Bool)

(declare-fun res!104292 () Bool)

(declare-fun e!140044 () Bool)

(assert (=> b!226731 (=> (not res!104292) (not e!140044))))

(declare-datatypes ((IArray!2211 0))(
  ( (IArray!2212 (innerList!1163 List!3442)) )
))
(declare-datatypes ((Conc!1105 0))(
  ( (Node!1105 (left!2764 Conc!1105) (right!3094 Conc!1105) (csize!2440 Int) (cheight!1316 Int)) (Leaf!1765 (xs!3700 IArray!2211) (csize!2441 Int)) (Empty!1105) )
))
(declare-datatypes ((BalanceConc!2218 0))(
  ( (BalanceConc!2219 (c!43529 Conc!1105)) )
))
(declare-datatypes ((tuple2!3682 0))(
  ( (tuple2!3683 (_1!2057 BalanceConc!2218) (_2!2057 BalanceConc!2216)) )
))
(declare-fun lt!87691 () tuple2!3682)

(declare-fun apply!612 (BalanceConc!2218 Int) Token!1026)

(assert (=> b!226731 (= res!104292 (= (apply!612 (_1!2057 lt!87691) 0) separatorToken!170))))

(declare-fun b!226732 () Bool)

(declare-fun e!140056 () Bool)

(declare-fun lt!87669 () tuple2!3682)

(declare-fun isEmpty!1949 (BalanceConc!2216) Bool)

(assert (=> b!226732 (= e!140056 (isEmpty!1949 (_2!2057 lt!87669)))))

(declare-fun b!226733 () Bool)

(declare-fun res!104309 () Bool)

(declare-fun e!140034 () Bool)

(assert (=> b!226733 (=> res!104309 e!140034)))

(declare-fun rulesProduceIndividualToken!276 (LexerInterface!527 List!3441 Token!1026) Bool)

(assert (=> b!226733 (= res!104309 (not (rulesProduceIndividualToken!276 thiss!17480 rules!1920 (h!8829 tokens!465))))))

(declare-fun b!226734 () Bool)

(declare-datatypes ((Unit!3888 0))(
  ( (Unit!3889) )
))
(declare-fun e!140050 () Unit!3888)

(declare-fun Unit!3890 () Unit!3888)

(assert (=> b!226734 (= e!140050 Unit!3890)))

(declare-fun b!226735 () Bool)

(declare-fun res!104283 () Bool)

(assert (=> b!226735 (=> (not res!104283) (not e!140056))))

(declare-fun lt!87686 () Token!1026)

(assert (=> b!226735 (= res!104283 (= (apply!612 (_1!2057 lt!87669) 0) lt!87686))))

(declare-fun b!226736 () Bool)

(declare-fun e!140041 () Bool)

(assert (=> b!226736 (= e!140041 true)))

(declare-fun lt!87667 () List!3440)

(declare-fun lt!87713 () List!3442)

(declare-fun filter!35 (List!3442 Int) List!3442)

(declare-datatypes ((tuple2!3684 0))(
  ( (tuple2!3685 (_1!2058 List!3442) (_2!2058 List!3440)) )
))
(declare-fun lexList!155 (LexerInterface!527 List!3441 List!3440) tuple2!3684)

(assert (=> b!226736 (= lt!87713 (filter!35 (_1!2058 (lexList!155 thiss!17480 rules!1920 lt!87667)) lambda!7109))))

(declare-fun b!226737 () Bool)

(declare-fun e!140045 () Bool)

(declare-fun ++!860 (List!3440 List!3440) List!3440)

(assert (=> b!226737 (= e!140045 (not (= lt!87671 (++!860 lt!87688 lt!87667))))))

(declare-fun b!226738 () Bool)

(assert (=> b!226738 (= e!140026 e!140037)))

(declare-fun res!104299 () Bool)

(assert (=> b!226738 (=> (not res!104299) (not e!140037))))

(declare-fun lt!87679 () BalanceConc!2218)

(declare-fun rulesProduceEachTokenIndividually!319 (LexerInterface!527 List!3441 BalanceConc!2218) Bool)

(assert (=> b!226738 (= res!104299 (rulesProduceEachTokenIndividually!319 thiss!17480 rules!1920 lt!87679))))

(declare-fun seqFromList!660 (List!3442) BalanceConc!2218)

(assert (=> b!226738 (= lt!87679 (seqFromList!660 tokens!465))))

(declare-fun b!226739 () Bool)

(declare-fun e!140042 () Unit!3888)

(declare-fun Unit!3891 () Unit!3888)

(assert (=> b!226739 (= e!140042 Unit!3891)))

(declare-fun tp!93370 () Bool)

(declare-fun e!140051 () Bool)

(declare-fun b!226740 () Bool)

(declare-fun inv!21 (TokenValue!663) Bool)

(assert (=> b!226740 (= e!140051 (and (inv!21 (value!22584 separatorToken!170)) e!140032 tp!93370))))

(declare-fun b!226741 () Bool)

(declare-fun res!104291 () Bool)

(assert (=> b!226741 (=> (not res!104291) (not e!140037))))

(assert (=> b!226741 (= res!104291 (isSeparator!641 (rule!1196 separatorToken!170)))))

(declare-fun b!226742 () Bool)

(declare-fun e!140043 () Bool)

(assert (=> b!226742 (= e!140043 e!140034)))

(declare-fun res!104295 () Bool)

(assert (=> b!226742 (=> res!104295 e!140034)))

(declare-fun lt!87701 () List!3440)

(declare-fun lt!87703 () List!3440)

(assert (=> b!226742 (= res!104295 (or (not (= lt!87703 lt!87701)) (not (= lt!87701 lt!87688)) (not (= lt!87703 lt!87688))))))

(declare-fun printList!211 (LexerInterface!527 List!3442) List!3440)

(assert (=> b!226742 (= lt!87701 (printList!211 thiss!17480 (Cons!3432 (h!8829 tokens!465) Nil!3432)))))

(declare-fun lt!87714 () BalanceConc!2216)

(assert (=> b!226742 (= lt!87703 (list!1316 lt!87714))))

(declare-fun lt!87715 () BalanceConc!2218)

(declare-fun printTailRec!221 (LexerInterface!527 BalanceConc!2218 Int BalanceConc!2216) BalanceConc!2216)

(assert (=> b!226742 (= lt!87714 (printTailRec!221 thiss!17480 lt!87715 0 (BalanceConc!2217 Empty!1104)))))

(declare-fun print!258 (LexerInterface!527 BalanceConc!2218) BalanceConc!2216)

(assert (=> b!226742 (= lt!87714 (print!258 thiss!17480 lt!87715))))

(declare-fun singletonSeq!193 (Token!1026) BalanceConc!2218)

(assert (=> b!226742 (= lt!87715 (singletonSeq!193 (h!8829 tokens!465)))))

(declare-fun b!226743 () Bool)

(declare-fun res!104281 () Bool)

(assert (=> b!226743 (=> (not res!104281) (not e!140037))))

(assert (=> b!226743 (= res!104281 (rulesProduceIndividualToken!276 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!226744 (= e!140034 e!140058)))

(declare-fun res!104310 () Bool)

(assert (=> b!226744 (=> res!104310 e!140058)))

(declare-datatypes ((tuple2!3686 0))(
  ( (tuple2!3687 (_1!2059 Token!1026) (_2!2059 BalanceConc!2216)) )
))
(declare-datatypes ((Option!616 0))(
  ( (None!615) (Some!615 (v!14298 tuple2!3686)) )
))
(declare-fun isDefined!467 (Option!616) Bool)

(declare-fun maxPrefixZipperSequence!220 (LexerInterface!527 List!3441 BalanceConc!2216) Option!616)

(assert (=> b!226744 (= res!104310 (not (isDefined!467 (maxPrefixZipperSequence!220 thiss!17480 rules!1920 (seqFromList!659 (originalCharacters!684 (h!8829 tokens!465)))))))))

(declare-fun lt!87687 () Unit!3888)

(declare-fun forallContained!208 (List!3442 Int Token!1026) Unit!3888)

(assert (=> b!226744 (= lt!87687 (forallContained!208 tokens!465 lambda!7110 (h!8829 tokens!465)))))

(assert (=> b!226744 (= lt!87688 (originalCharacters!684 (h!8829 tokens!465)))))

(declare-fun b!226745 () Bool)

(declare-fun e!140047 () Bool)

(declare-fun lt!87708 () Rule!1082)

(assert (=> b!226745 (= e!140047 (= (rule!1196 separatorToken!170) lt!87708))))

(declare-fun b!226746 () Bool)

(assert (=> b!226746 (= e!140036 e!140041)))

(declare-fun res!104302 () Bool)

(assert (=> b!226746 (=> res!104302 e!140041)))

(declare-fun lt!87716 () List!3442)

(assert (=> b!226746 (= res!104302 (not (= (filter!35 lt!87716 lambda!7109) (t!33300 tokens!465))))))

(assert (=> b!226746 (= (filter!35 lt!87716 lambda!7109) (t!33300 tokens!465))))

(declare-fun lt!87696 () BalanceConc!2216)

(declare-fun list!1317 (BalanceConc!2218) List!3442)

(declare-fun lex!327 (LexerInterface!527 List!3441 BalanceConc!2216) tuple2!3682)

(assert (=> b!226746 (= lt!87716 (list!1317 (_1!2057 (lex!327 thiss!17480 rules!1920 lt!87696))))))

(declare-fun lt!87683 () Unit!3888)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!26 (LexerInterface!527 List!3441 List!3442 Token!1026) Unit!3888)

(assert (=> b!226746 (= lt!87683 (theoremInvertabilityFromTokensSepTokenWhenNeeded!26 thiss!17480 rules!1920 (t!33300 tokens!465) separatorToken!170))))

(declare-fun lt!87694 () Option!615)

(assert (=> b!226746 (= lt!87694 (Some!614 (tuple2!3681 separatorToken!170 lt!87667)))))

(declare-fun lt!87710 () Unit!3888)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!32 (LexerInterface!527 List!3441 Token!1026 Rule!1082 List!3440 Rule!1082) Unit!3888)

(assert (=> b!226746 (= lt!87710 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!32 thiss!17480 rules!1920 separatorToken!170 (rule!1196 separatorToken!170) lt!87667 (rule!1196 lt!87686)))))

(declare-fun lt!87699 () Unit!3888)

(declare-fun e!140057 () Unit!3888)

(assert (=> b!226746 (= lt!87699 e!140057)))

(declare-fun c!43524 () Bool)

(declare-fun lt!87709 () C!2652)

(declare-fun contains!612 (List!3440 C!2652) Bool)

(declare-fun usedCharacters!46 (Regex!865) List!3440)

(assert (=> b!226746 (= c!43524 (contains!612 (usedCharacters!46 (regex!641 (rule!1196 separatorToken!170))) lt!87709))))

(declare-fun head!777 (List!3440) C!2652)

(assert (=> b!226746 (= lt!87709 (head!777 lt!87667))))

(declare-fun lt!87692 () Unit!3888)

(assert (=> b!226746 (= lt!87692 e!140042)))

(declare-fun c!43525 () Bool)

(declare-fun lt!87672 () C!2652)

(assert (=> b!226746 (= c!43525 (not (contains!612 (usedCharacters!46 (regex!641 (rule!1196 lt!87686))) lt!87672)))))

(declare-fun lt!87673 () List!3440)

(assert (=> b!226746 (= lt!87672 (head!777 lt!87673))))

(declare-fun e!140038 () Bool)

(assert (=> b!226746 e!140038))

(declare-fun res!104285 () Bool)

(assert (=> b!226746 (=> (not res!104285) (not e!140038))))

(declare-datatypes ((Option!617 0))(
  ( (None!616) (Some!616 (v!14299 Rule!1082)) )
))
(declare-fun lt!87681 () Option!617)

(declare-fun isDefined!468 (Option!617) Bool)

(assert (=> b!226746 (= res!104285 (isDefined!468 lt!87681))))

(declare-fun getRuleFromTag!82 (LexerInterface!527 List!3441 String!4395) Option!617)

(assert (=> b!226746 (= lt!87681 (getRuleFromTag!82 thiss!17480 rules!1920 (tag!839 (rule!1196 lt!87686))))))

(declare-fun lt!87697 () Unit!3888)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!82 (LexerInterface!527 List!3441 List!3440 Token!1026) Unit!3888)

(assert (=> b!226746 (= lt!87697 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!82 thiss!17480 rules!1920 lt!87673 lt!87686))))

(declare-fun charsOf!296 (Token!1026) BalanceConc!2216)

(assert (=> b!226746 (= lt!87673 (list!1316 (charsOf!296 lt!87686)))))

(declare-fun lt!87668 () Unit!3888)

(assert (=> b!226746 (= lt!87668 (forallContained!208 tokens!465 lambda!7110 lt!87686))))

(assert (=> b!226746 e!140056))

(declare-fun res!104307 () Bool)

(assert (=> b!226746 (=> (not res!104307) (not e!140056))))

(declare-fun size!2751 (BalanceConc!2218) Int)

(assert (=> b!226746 (= res!104307 (= (size!2751 (_1!2057 lt!87669)) 1))))

(declare-fun lt!87675 () BalanceConc!2216)

(assert (=> b!226746 (= lt!87669 (lex!327 thiss!17480 rules!1920 lt!87675))))

(declare-fun lt!87690 () BalanceConc!2218)

(assert (=> b!226746 (= lt!87675 (printTailRec!221 thiss!17480 lt!87690 0 (BalanceConc!2217 Empty!1104)))))

(assert (=> b!226746 (= lt!87675 (print!258 thiss!17480 lt!87690))))

(assert (=> b!226746 (= lt!87690 (singletonSeq!193 lt!87686))))

(declare-fun e!140052 () Bool)

(assert (=> b!226746 e!140052))

(declare-fun res!104298 () Bool)

(assert (=> b!226746 (=> (not res!104298) (not e!140052))))

(declare-fun lt!87706 () Option!617)

(assert (=> b!226746 (= res!104298 (isDefined!468 lt!87706))))

(assert (=> b!226746 (= lt!87706 (getRuleFromTag!82 thiss!17480 rules!1920 (tag!839 (rule!1196 separatorToken!170))))))

(declare-fun lt!87685 () List!3440)

(declare-fun lt!87674 () Unit!3888)

(assert (=> b!226746 (= lt!87674 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!82 thiss!17480 rules!1920 lt!87685 separatorToken!170))))

(assert (=> b!226746 e!140044))

(declare-fun res!104306 () Bool)

(assert (=> b!226746 (=> (not res!104306) (not e!140044))))

(assert (=> b!226746 (= res!104306 (= (size!2751 (_1!2057 lt!87691)) 1))))

(declare-fun lt!87680 () BalanceConc!2216)

(assert (=> b!226746 (= lt!87691 (lex!327 thiss!17480 rules!1920 lt!87680))))

(declare-fun lt!87693 () BalanceConc!2218)

(assert (=> b!226746 (= lt!87680 (printTailRec!221 thiss!17480 lt!87693 0 (BalanceConc!2217 Empty!1104)))))

(assert (=> b!226746 (= lt!87680 (print!258 thiss!17480 lt!87693))))

(assert (=> b!226746 (= lt!87693 (singletonSeq!193 separatorToken!170))))

(assert (=> b!226746 (rulesProduceIndividualToken!276 thiss!17480 rules!1920 lt!87686)))

(declare-fun lt!87665 () Unit!3888)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!94 (LexerInterface!527 List!3441 List!3442 Token!1026) Unit!3888)

(assert (=> b!226746 (= lt!87665 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!94 thiss!17480 rules!1920 tokens!465 lt!87686))))

(declare-fun head!778 (List!3442) Token!1026)

(assert (=> b!226746 (= lt!87686 (head!778 (t!33300 tokens!465)))))

(declare-fun lt!87698 () Unit!3888)

(assert (=> b!226746 (= lt!87698 e!140050)))

(declare-fun c!43526 () Bool)

(declare-fun isEmpty!1950 (List!3442) Bool)

(assert (=> b!226746 (= c!43526 (isEmpty!1950 (t!33300 tokens!465)))))

(declare-fun lt!87695 () List!3440)

(assert (=> b!226746 (= lt!87694 (maxPrefix!257 thiss!17480 rules!1920 lt!87695))))

(declare-fun lt!87682 () tuple2!3680)

(assert (=> b!226746 (= lt!87695 (_2!2056 lt!87682))))

(declare-fun lt!87705 () Unit!3888)

(declare-fun lemmaSamePrefixThenSameSuffix!162 (List!3440 List!3440 List!3440 List!3440 List!3440) Unit!3888)

(assert (=> b!226746 (= lt!87705 (lemmaSamePrefixThenSameSuffix!162 lt!87688 lt!87695 lt!87688 (_2!2056 lt!87682) lt!87671))))

(assert (=> b!226746 (= lt!87682 (get!1077 (maxPrefix!257 thiss!17480 rules!1920 lt!87671)))))

(declare-fun lt!87676 () List!3440)

(declare-fun isPrefix!337 (List!3440 List!3440) Bool)

(assert (=> b!226746 (isPrefix!337 lt!87688 lt!87676)))

(declare-fun lt!87707 () Unit!3888)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!232 (List!3440 List!3440) Unit!3888)

(assert (=> b!226746 (= lt!87707 (lemmaConcatTwoListThenFirstIsPrefix!232 lt!87688 lt!87695))))

(declare-fun e!140028 () Bool)

(assert (=> b!226746 e!140028))

(declare-fun res!104284 () Bool)

(assert (=> b!226746 (=> res!104284 e!140028)))

(assert (=> b!226746 (= res!104284 (isEmpty!1950 tokens!465))))

(declare-fun lt!87702 () Unit!3888)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!102 (LexerInterface!527 List!3441 List!3442 Token!1026) Unit!3888)

(assert (=> b!226746 (= lt!87702 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!102 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!226747 () Bool)

(declare-fun e!140048 () Bool)

(assert (=> b!226747 (= e!140048 e!140043)))

(declare-fun res!104286 () Bool)

(assert (=> b!226747 (=> res!104286 e!140043)))

(assert (=> b!226747 (= res!104286 e!140045)))

(declare-fun res!104282 () Bool)

(assert (=> b!226747 (=> (not res!104282) (not e!140045))))

(assert (=> b!226747 (= res!104282 (not lt!87711))))

(assert (=> b!226747 (= lt!87711 (= lt!87671 lt!87676))))

(declare-fun b!226748 () Bool)

(declare-fun res!104308 () Bool)

(assert (=> b!226748 (=> res!104308 e!140034)))

(declare-fun isEmpty!1951 (BalanceConc!2218) Bool)

(assert (=> b!226748 (= res!104308 (isEmpty!1951 (_1!2057 (lex!327 thiss!17480 rules!1920 (seqFromList!659 lt!87688)))))))

(declare-fun b!226749 () Bool)

(declare-fun e!140027 () Bool)

(assert (=> b!226749 (= e!140027 false)))

(declare-fun res!104304 () Bool)

(assert (=> start!24254 (=> (not res!104304) (not e!140026))))

(assert (=> start!24254 (= res!104304 ((_ is Lexer!525) thiss!17480))))

(assert (=> start!24254 e!140026))

(assert (=> start!24254 true))

(declare-fun e!140029 () Bool)

(assert (=> start!24254 e!140029))

(assert (=> start!24254 (and (inv!4285 separatorToken!170) e!140051)))

(assert (=> start!24254 e!140024))

(declare-fun res!104311 () Bool)

(assert (=> b!226724 (=> (not res!104311) (not e!140037))))

(declare-fun forall!771 (List!3442 Int) Bool)

(assert (=> b!226724 (= res!104311 (forall!771 tokens!465 lambda!7109))))

(declare-fun b!226750 () Bool)

(declare-fun Unit!3892 () Unit!3888)

(assert (=> b!226750 (= e!140042 Unit!3892)))

(declare-fun lt!87704 () Unit!3888)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!40 (Regex!865 List!3440 C!2652) Unit!3888)

(assert (=> b!226750 (= lt!87704 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!40 (regex!641 (rule!1196 lt!87686)) lt!87673 lt!87672))))

(declare-fun res!104294 () Bool)

(declare-fun matchR!203 (Regex!865 List!3440) Bool)

(assert (=> b!226750 (= res!104294 (not (matchR!203 (regex!641 (rule!1196 lt!87686)) lt!87673)))))

(assert (=> b!226750 (=> (not res!104294) (not e!140027))))

(assert (=> b!226750 e!140027))

(declare-fun b!226751 () Bool)

(assert (=> b!226751 (= e!140052 e!140047)))

(declare-fun res!104293 () Bool)

(assert (=> b!226751 (=> (not res!104293) (not e!140047))))

(assert (=> b!226751 (= res!104293 (matchR!203 (regex!641 lt!87708) lt!87685))))

(declare-fun get!1078 (Option!617) Rule!1082)

(assert (=> b!226751 (= lt!87708 (get!1078 lt!87706))))

(declare-fun b!226752 () Bool)

(declare-fun res!104279 () Bool)

(assert (=> b!226752 (=> (not res!104279) (not e!140026))))

(declare-fun rulesInvariant!493 (LexerInterface!527 List!3441) Bool)

(assert (=> b!226752 (= res!104279 (rulesInvariant!493 thiss!17480 rules!1920))))

(declare-fun b!226753 () Bool)

(declare-fun res!104303 () Bool)

(assert (=> b!226753 (=> (not res!104303) (not e!140022))))

(declare-fun isEmpty!1952 (List!3440) Bool)

(assert (=> b!226753 (= res!104303 (isEmpty!1952 (_2!2056 lt!87712)))))

(declare-fun b!226754 () Bool)

(declare-fun Unit!3893 () Unit!3888)

(assert (=> b!226754 (= e!140050 Unit!3893)))

(assert (=> b!226754 false))

(declare-fun b!226755 () Bool)

(declare-fun e!140030 () Bool)

(declare-fun lt!87666 () Option!615)

(assert (=> b!226755 (= e!140030 (= (_1!2056 (get!1077 lt!87666)) (head!778 tokens!465)))))

(declare-fun b!226756 () Bool)

(assert (=> b!226756 (= e!140037 e!140023)))

(declare-fun res!104290 () Bool)

(assert (=> b!226756 (=> (not res!104290) (not e!140023))))

(assert (=> b!226756 (= res!104290 (= lt!87671 lt!87684))))

(declare-fun printWithSeparatorTokenWhenNeededRec!210 (LexerInterface!527 List!3441 BalanceConc!2218 Token!1026 Int) BalanceConc!2216)

(assert (=> b!226756 (= lt!87684 (list!1316 (printWithSeparatorTokenWhenNeededRec!210 thiss!17480 rules!1920 lt!87679 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!220 (LexerInterface!527 List!3441 List!3442 Token!1026) List!3440)

(assert (=> b!226756 (= lt!87671 (printWithSeparatorTokenWhenNeededList!220 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!140021 () Bool)

(assert (=> b!226757 (= e!140021 (and tp!93369 tp!93377))))

(declare-fun b!226758 () Bool)

(declare-fun Unit!3894 () Unit!3888)

(assert (=> b!226758 (= e!140057 Unit!3894)))

(declare-fun b!226759 () Bool)

(assert (=> b!226759 (= e!140028 e!140030)))

(declare-fun res!104296 () Bool)

(assert (=> b!226759 (=> (not res!104296) (not e!140030))))

(assert (=> b!226759 (= res!104296 (isDefined!466 lt!87666))))

(assert (=> b!226759 (= lt!87666 (maxPrefix!257 thiss!17480 rules!1920 lt!87671))))

(declare-fun b!226760 () Bool)

(declare-fun e!140031 () Bool)

(declare-fun tp!93371 () Bool)

(assert (=> b!226760 (= e!140029 (and e!140031 tp!93371))))

(declare-fun b!226761 () Bool)

(declare-fun tp!93375 () Bool)

(assert (=> b!226761 (= e!140031 (and tp!93375 (inv!4281 (tag!839 (h!8828 rules!1920))) (inv!4284 (transformation!641 (h!8828 rules!1920))) e!140021))))

(assert (=> b!226762 (= e!140039 (and tp!93374 tp!93366))))

(declare-fun b!226763 () Bool)

(declare-fun e!140040 () Bool)

(assert (=> b!226763 (= e!140038 e!140040)))

(declare-fun res!104300 () Bool)

(assert (=> b!226763 (=> (not res!104300) (not e!140040))))

(declare-fun lt!87700 () Rule!1082)

(assert (=> b!226763 (= res!104300 (matchR!203 (regex!641 lt!87700) lt!87673))))

(assert (=> b!226763 (= lt!87700 (get!1078 lt!87681))))

(declare-fun b!226764 () Bool)

(declare-fun Unit!3895 () Unit!3888)

(assert (=> b!226764 (= e!140057 Unit!3895)))

(declare-fun lt!87678 () Unit!3888)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!34 (LexerInterface!527 List!3441 List!3441 Rule!1082 Rule!1082 C!2652) Unit!3888)

(assert (=> b!226764 (= lt!87678 (lemmaSepRuleNotContainsCharContainedInANonSepRule!34 thiss!17480 rules!1920 rules!1920 (rule!1196 lt!87686) (rule!1196 separatorToken!170) lt!87709))))

(assert (=> b!226764 false))

(declare-fun tp!93372 () Bool)

(declare-fun b!226765 () Bool)

(assert (=> b!226765 (= e!140025 (and (inv!21 (value!22584 (h!8829 tokens!465))) e!140046 tp!93372))))

(declare-fun b!226766 () Bool)

(assert (=> b!226766 (= e!140044 (isEmpty!1949 (_2!2057 lt!87691)))))

(declare-fun b!226767 () Bool)

(assert (=> b!226767 (= e!140022 (matchR!203 (regex!641 (rule!1196 (h!8829 tokens!465))) lt!87688))))

(declare-fun b!226768 () Bool)

(assert (=> b!226768 (= e!140023 (not e!140048))))

(declare-fun res!104287 () Bool)

(assert (=> b!226768 (=> res!104287 e!140048)))

(assert (=> b!226768 (= res!104287 (not (= lt!87667 (list!1316 lt!87696))))))

(assert (=> b!226768 (= lt!87696 (printWithSeparatorTokenWhenNeededRec!210 thiss!17480 rules!1920 (seqFromList!660 (t!33300 tokens!465)) separatorToken!170 0))))

(declare-fun lt!87670 () List!3440)

(assert (=> b!226768 (= lt!87670 lt!87676)))

(assert (=> b!226768 (= lt!87676 (++!860 lt!87688 lt!87695))))

(assert (=> b!226768 (= lt!87670 (++!860 (++!860 lt!87688 lt!87685) lt!87667))))

(declare-fun lt!87689 () Unit!3888)

(declare-fun lemmaConcatAssociativity!342 (List!3440 List!3440 List!3440) Unit!3888)

(assert (=> b!226768 (= lt!87689 (lemmaConcatAssociativity!342 lt!87688 lt!87685 lt!87667))))

(assert (=> b!226768 (= lt!87688 (list!1316 (charsOf!296 (h!8829 tokens!465))))))

(assert (=> b!226768 (= lt!87695 (++!860 lt!87685 lt!87667))))

(assert (=> b!226768 (= lt!87667 (printWithSeparatorTokenWhenNeededList!220 thiss!17480 rules!1920 (t!33300 tokens!465) separatorToken!170))))

(assert (=> b!226768 (= lt!87685 (list!1316 (charsOf!296 separatorToken!170)))))

(assert (=> b!226769 (= e!140054 (and tp!93368 tp!93373))))

(declare-fun b!226770 () Bool)

(assert (=> b!226770 (= e!140040 (= (rule!1196 lt!87686) lt!87700))))

(declare-fun b!226771 () Bool)

(declare-fun res!104289 () Bool)

(assert (=> b!226771 (=> (not res!104289) (not e!140037))))

(declare-fun sepAndNonSepRulesDisjointChars!230 (List!3441 List!3441) Bool)

(assert (=> b!226771 (= res!104289 (sepAndNonSepRulesDisjointChars!230 rules!1920 rules!1920))))

(assert (= (and start!24254 res!104304) b!226723))

(assert (= (and b!226723 res!104297) b!226752))

(assert (= (and b!226752 res!104279) b!226738))

(assert (= (and b!226738 res!104299) b!226743))

(assert (= (and b!226743 res!104281) b!226741))

(assert (= (and b!226741 res!104291) b!226724))

(assert (= (and b!226724 res!104311) b!226771))

(assert (= (and b!226771 res!104289) b!226727))

(assert (= (and b!226727 res!104305) b!226756))

(assert (= (and b!226756 res!104290) b!226730))

(assert (= (and b!226730 res!104288) b!226768))

(assert (= (and b!226768 (not res!104287)) b!226747))

(assert (= (and b!226747 res!104282) b!226737))

(assert (= (and b!226747 (not res!104286)) b!226742))

(assert (= (and b!226742 (not res!104295)) b!226733))

(assert (= (and b!226733 (not res!104309)) b!226748))

(assert (= (and b!226748 (not res!104308)) b!226744))

(assert (= (and b!226744 (not res!104310)) b!226728))

(assert (= (and b!226728 res!104301) b!226753))

(assert (= (and b!226753 res!104303) b!226767))

(assert (= (and b!226728 (not res!104280)) b!226746))

(assert (= (and b!226746 (not res!104284)) b!226759))

(assert (= (and b!226759 res!104296) b!226755))

(assert (= (and b!226746 c!43526) b!226754))

(assert (= (and b!226746 (not c!43526)) b!226734))

(assert (= (and b!226746 res!104306) b!226731))

(assert (= (and b!226731 res!104292) b!226766))

(assert (= (and b!226746 res!104298) b!226751))

(assert (= (and b!226751 res!104293) b!226745))

(assert (= (and b!226746 res!104307) b!226735))

(assert (= (and b!226735 res!104283) b!226732))

(assert (= (and b!226746 res!104285) b!226763))

(assert (= (and b!226763 res!104300) b!226770))

(assert (= (and b!226746 c!43525) b!226750))

(assert (= (and b!226746 (not c!43525)) b!226739))

(assert (= (and b!226750 res!104294) b!226749))

(assert (= (and b!226746 c!43524) b!226764))

(assert (= (and b!226746 (not c!43524)) b!226758))

(assert (= (and b!226746 (not res!104302)) b!226736))

(assert (= b!226761 b!226757))

(assert (= b!226760 b!226761))

(assert (= (and start!24254 ((_ is Cons!3431) rules!1920)) b!226760))

(assert (= b!226729 b!226769))

(assert (= b!226740 b!226729))

(assert (= start!24254 b!226740))

(assert (= b!226725 b!226762))

(assert (= b!226765 b!226725))

(assert (= b!226726 b!226765))

(assert (= (and start!24254 ((_ is Cons!3432) tokens!465)) b!226726))

(declare-fun m!266571 () Bool)

(assert (=> b!226737 m!266571))

(declare-fun m!266573 () Bool)

(assert (=> b!226763 m!266573))

(declare-fun m!266575 () Bool)

(assert (=> b!226763 m!266575))

(declare-fun m!266577 () Bool)

(assert (=> b!226725 m!266577))

(declare-fun m!266579 () Bool)

(assert (=> b!226725 m!266579))

(declare-fun m!266581 () Bool)

(assert (=> b!226731 m!266581))

(declare-fun m!266583 () Bool)

(assert (=> b!226730 m!266583))

(assert (=> b!226730 m!266583))

(declare-fun m!266585 () Bool)

(assert (=> b!226730 m!266585))

(declare-fun m!266587 () Bool)

(assert (=> b!226733 m!266587))

(declare-fun m!266589 () Bool)

(assert (=> b!226752 m!266589))

(declare-fun m!266591 () Bool)

(assert (=> b!226738 m!266591))

(declare-fun m!266593 () Bool)

(assert (=> b!226738 m!266593))

(declare-fun m!266595 () Bool)

(assert (=> b!226756 m!266595))

(assert (=> b!226756 m!266595))

(declare-fun m!266597 () Bool)

(assert (=> b!226756 m!266597))

(declare-fun m!266599 () Bool)

(assert (=> b!226756 m!266599))

(declare-fun m!266601 () Bool)

(assert (=> b!226759 m!266601))

(declare-fun m!266603 () Bool)

(assert (=> b!226759 m!266603))

(declare-fun m!266605 () Bool)

(assert (=> b!226751 m!266605))

(declare-fun m!266607 () Bool)

(assert (=> b!226751 m!266607))

(declare-fun m!266609 () Bool)

(assert (=> b!226724 m!266609))

(declare-fun m!266611 () Bool)

(assert (=> b!226742 m!266611))

(declare-fun m!266613 () Bool)

(assert (=> b!226742 m!266613))

(declare-fun m!266615 () Bool)

(assert (=> b!226742 m!266615))

(declare-fun m!266617 () Bool)

(assert (=> b!226742 m!266617))

(declare-fun m!266619 () Bool)

(assert (=> b!226742 m!266619))

(declare-fun m!266621 () Bool)

(assert (=> b!226728 m!266621))

(declare-fun m!266623 () Bool)

(assert (=> b!226728 m!266623))

(declare-fun m!266625 () Bool)

(assert (=> b!226728 m!266625))

(declare-fun m!266627 () Bool)

(assert (=> b!226768 m!266627))

(declare-fun m!266629 () Bool)

(assert (=> b!226768 m!266629))

(declare-fun m!266631 () Bool)

(assert (=> b!226768 m!266631))

(declare-fun m!266633 () Bool)

(assert (=> b!226768 m!266633))

(declare-fun m!266635 () Bool)

(assert (=> b!226768 m!266635))

(assert (=> b!226768 m!266631))

(declare-fun m!266637 () Bool)

(assert (=> b!226768 m!266637))

(declare-fun m!266639 () Bool)

(assert (=> b!226768 m!266639))

(declare-fun m!266641 () Bool)

(assert (=> b!226768 m!266641))

(declare-fun m!266643 () Bool)

(assert (=> b!226768 m!266643))

(declare-fun m!266645 () Bool)

(assert (=> b!226768 m!266645))

(declare-fun m!266647 () Bool)

(assert (=> b!226768 m!266647))

(assert (=> b!226768 m!266627))

(declare-fun m!266649 () Bool)

(assert (=> b!226768 m!266649))

(assert (=> b!226768 m!266641))

(assert (=> b!226768 m!266637))

(declare-fun m!266651 () Bool)

(assert (=> b!226768 m!266651))

(declare-fun m!266653 () Bool)

(assert (=> b!226732 m!266653))

(declare-fun m!266655 () Bool)

(assert (=> start!24254 m!266655))

(declare-fun m!266657 () Bool)

(assert (=> b!226723 m!266657))

(declare-fun m!266659 () Bool)

(assert (=> b!226750 m!266659))

(declare-fun m!266661 () Bool)

(assert (=> b!226750 m!266661))

(declare-fun m!266663 () Bool)

(assert (=> b!226744 m!266663))

(assert (=> b!226744 m!266663))

(declare-fun m!266665 () Bool)

(assert (=> b!226744 m!266665))

(assert (=> b!226744 m!266665))

(declare-fun m!266667 () Bool)

(assert (=> b!226744 m!266667))

(declare-fun m!266669 () Bool)

(assert (=> b!226744 m!266669))

(declare-fun m!266671 () Bool)

(assert (=> b!226767 m!266671))

(declare-fun m!266673 () Bool)

(assert (=> b!226743 m!266673))

(declare-fun m!266675 () Bool)

(assert (=> b!226729 m!266675))

(declare-fun m!266677 () Bool)

(assert (=> b!226729 m!266677))

(declare-fun m!266679 () Bool)

(assert (=> b!226746 m!266679))

(declare-fun m!266681 () Bool)

(assert (=> b!226746 m!266681))

(declare-fun m!266683 () Bool)

(assert (=> b!226746 m!266683))

(declare-fun m!266685 () Bool)

(assert (=> b!226746 m!266685))

(declare-fun m!266687 () Bool)

(assert (=> b!226746 m!266687))

(declare-fun m!266689 () Bool)

(assert (=> b!226746 m!266689))

(declare-fun m!266691 () Bool)

(assert (=> b!226746 m!266691))

(declare-fun m!266693 () Bool)

(assert (=> b!226746 m!266693))

(declare-fun m!266695 () Bool)

(assert (=> b!226746 m!266695))

(declare-fun m!266697 () Bool)

(assert (=> b!226746 m!266697))

(assert (=> b!226746 m!266681))

(declare-fun m!266699 () Bool)

(assert (=> b!226746 m!266699))

(declare-fun m!266701 () Bool)

(assert (=> b!226746 m!266701))

(declare-fun m!266703 () Bool)

(assert (=> b!226746 m!266703))

(declare-fun m!266705 () Bool)

(assert (=> b!226746 m!266705))

(declare-fun m!266707 () Bool)

(assert (=> b!226746 m!266707))

(declare-fun m!266709 () Bool)

(assert (=> b!226746 m!266709))

(declare-fun m!266711 () Bool)

(assert (=> b!226746 m!266711))

(declare-fun m!266713 () Bool)

(assert (=> b!226746 m!266713))

(declare-fun m!266715 () Bool)

(assert (=> b!226746 m!266715))

(declare-fun m!266717 () Bool)

(assert (=> b!226746 m!266717))

(declare-fun m!266719 () Bool)

(assert (=> b!226746 m!266719))

(declare-fun m!266721 () Bool)

(assert (=> b!226746 m!266721))

(assert (=> b!226746 m!266719))

(declare-fun m!266723 () Bool)

(assert (=> b!226746 m!266723))

(declare-fun m!266725 () Bool)

(assert (=> b!226746 m!266725))

(assert (=> b!226746 m!266603))

(declare-fun m!266727 () Bool)

(assert (=> b!226746 m!266727))

(assert (=> b!226746 m!266603))

(declare-fun m!266729 () Bool)

(assert (=> b!226746 m!266729))

(assert (=> b!226746 m!266717))

(declare-fun m!266731 () Bool)

(assert (=> b!226746 m!266731))

(declare-fun m!266733 () Bool)

(assert (=> b!226746 m!266733))

(declare-fun m!266735 () Bool)

(assert (=> b!226746 m!266735))

(declare-fun m!266737 () Bool)

(assert (=> b!226746 m!266737))

(declare-fun m!266739 () Bool)

(assert (=> b!226746 m!266739))

(declare-fun m!266741 () Bool)

(assert (=> b!226746 m!266741))

(declare-fun m!266743 () Bool)

(assert (=> b!226746 m!266743))

(declare-fun m!266745 () Bool)

(assert (=> b!226746 m!266745))

(declare-fun m!266747 () Bool)

(assert (=> b!226746 m!266747))

(declare-fun m!266749 () Bool)

(assert (=> b!226746 m!266749))

(assert (=> b!226746 m!266733))

(declare-fun m!266751 () Bool)

(assert (=> b!226746 m!266751))

(declare-fun m!266753 () Bool)

(assert (=> b!226746 m!266753))

(declare-fun m!266755 () Bool)

(assert (=> b!226746 m!266755))

(declare-fun m!266757 () Bool)

(assert (=> b!226746 m!266757))

(declare-fun m!266759 () Bool)

(assert (=> b!226746 m!266759))

(declare-fun m!266761 () Bool)

(assert (=> b!226726 m!266761))

(declare-fun m!266763 () Bool)

(assert (=> b!226764 m!266763))

(declare-fun m!266765 () Bool)

(assert (=> b!226766 m!266765))

(declare-fun m!266767 () Bool)

(assert (=> b!226755 m!266767))

(declare-fun m!266769 () Bool)

(assert (=> b!226755 m!266769))

(declare-fun m!266771 () Bool)

(assert (=> b!226771 m!266771))

(declare-fun m!266773 () Bool)

(assert (=> b!226753 m!266773))

(declare-fun m!266775 () Bool)

(assert (=> b!226735 m!266775))

(declare-fun m!266777 () Bool)

(assert (=> b!226748 m!266777))

(assert (=> b!226748 m!266777))

(declare-fun m!266779 () Bool)

(assert (=> b!226748 m!266779))

(declare-fun m!266781 () Bool)

(assert (=> b!226748 m!266781))

(declare-fun m!266783 () Bool)

(assert (=> b!226765 m!266783))

(declare-fun m!266785 () Bool)

(assert (=> b!226736 m!266785))

(declare-fun m!266787 () Bool)

(assert (=> b!226736 m!266787))

(declare-fun m!266789 () Bool)

(assert (=> b!226761 m!266789))

(declare-fun m!266791 () Bool)

(assert (=> b!226761 m!266791))

(declare-fun m!266793 () Bool)

(assert (=> b!226740 m!266793))

(check-sat b_and!16825 b_and!16833 (not b!226766) b_and!16835 (not b!226725) (not b!226761) (not b!226748) (not b!226744) (not b!226764) b_and!16829 (not b!226751) (not b_next!8483) (not b!226750) b_and!16831 (not b_next!8475) b_and!16827 (not b!226771) (not start!24254) (not b!226746) (not b!226726) (not b!226760) (not b!226723) (not b!226740) (not b!226731) (not b!226756) (not b!226724) (not b!226763) (not b!226729) (not b!226735) (not b!226780) (not b!226733) (not b!226742) (not b!226765) (not b_next!8477) (not b!226732) (not b!226738) (not b!226752) (not b!226767) (not b!226768) (not b!226737) (not b!226759) (not b_next!8481) (not b_next!8473) (not b!226728) (not b_next!8479) (not b!226753) (not b!226743) (not b!226755) (not b!226736) (not b!226730))
(check-sat b_and!16825 b_and!16829 (not b_next!8483) b_and!16827 b_and!16833 b_and!16835 (not b_next!8477) (not b_next!8479) b_and!16831 (not b_next!8475) (not b_next!8481) (not b_next!8473))
