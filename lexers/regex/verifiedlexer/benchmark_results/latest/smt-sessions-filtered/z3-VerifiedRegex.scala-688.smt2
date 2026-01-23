; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26522 () Bool)

(assert start!26522)

(declare-fun b!249891 () Bool)

(declare-fun b_free!9329 () Bool)

(declare-fun b_next!9329 () Bool)

(assert (=> b!249891 (= b_free!9329 (not b_next!9329))))

(declare-fun tp!97112 () Bool)

(declare-fun b_and!18845 () Bool)

(assert (=> b!249891 (= tp!97112 b_and!18845)))

(declare-fun b_free!9331 () Bool)

(declare-fun b_next!9331 () Bool)

(assert (=> b!249891 (= b_free!9331 (not b_next!9331))))

(declare-fun tp!97109 () Bool)

(declare-fun b_and!18847 () Bool)

(assert (=> b!249891 (= tp!97109 b_and!18847)))

(declare-fun b!249870 () Bool)

(declare-fun b_free!9333 () Bool)

(declare-fun b_next!9333 () Bool)

(assert (=> b!249870 (= b_free!9333 (not b_next!9333))))

(declare-fun tp!97107 () Bool)

(declare-fun b_and!18849 () Bool)

(assert (=> b!249870 (= tp!97107 b_and!18849)))

(declare-fun b_free!9335 () Bool)

(declare-fun b_next!9335 () Bool)

(assert (=> b!249870 (= b_free!9335 (not b_next!9335))))

(declare-fun tp!97110 () Bool)

(declare-fun b_and!18851 () Bool)

(assert (=> b!249870 (= tp!97110 b_and!18851)))

(declare-fun b!249885 () Bool)

(declare-fun b_free!9337 () Bool)

(declare-fun b_next!9337 () Bool)

(assert (=> b!249885 (= b_free!9337 (not b_next!9337))))

(declare-fun tp!97104 () Bool)

(declare-fun b_and!18853 () Bool)

(assert (=> b!249885 (= tp!97104 b_and!18853)))

(declare-fun b_free!9339 () Bool)

(declare-fun b_next!9339 () Bool)

(assert (=> b!249885 (= b_free!9339 (not b_next!9339))))

(declare-fun tp!97103 () Bool)

(declare-fun b_and!18855 () Bool)

(assert (=> b!249885 (= tp!97103 b_and!18855)))

(declare-fun bs!26778 () Bool)

(declare-fun b!249874 () Bool)

(declare-fun b!249873 () Bool)

(assert (= bs!26778 (and b!249874 b!249873)))

(declare-fun lambda!8286 () Int)

(declare-fun lambda!8285 () Int)

(assert (=> bs!26778 (not (= lambda!8286 lambda!8285))))

(declare-fun b!249904 () Bool)

(declare-fun e!155270 () Bool)

(assert (=> b!249904 (= e!155270 true)))

(declare-fun b!249903 () Bool)

(declare-fun e!155269 () Bool)

(assert (=> b!249903 (= e!155269 e!155270)))

(declare-fun b!249902 () Bool)

(declare-fun e!155268 () Bool)

(assert (=> b!249902 (= e!155268 e!155269)))

(assert (=> b!249874 e!155268))

(assert (= b!249903 b!249904))

(assert (= b!249902 b!249903))

(declare-datatypes ((List!3687 0))(
  ( (Nil!3677) (Cons!3677 (h!9074 (_ BitVec 16)) (t!35391 List!3687)) )
))
(declare-datatypes ((TokenValue!721 0))(
  ( (FloatLiteralValue!1442 (text!5492 List!3687)) (TokenValueExt!720 (__x!2929 Int)) (Broken!3605 (value!24211 List!3687)) (Object!730) (End!721) (Def!721) (Underscore!721) (Match!721) (Else!721) (Error!721) (Case!721) (If!721) (Extends!721) (Abstract!721) (Class!721) (Val!721) (DelimiterValue!1442 (del!781 List!3687)) (KeywordValue!727 (value!24212 List!3687)) (CommentValue!1442 (value!24213 List!3687)) (WhitespaceValue!1442 (value!24214 List!3687)) (IndentationValue!721 (value!24215 List!3687)) (String!4684) (Int32!721) (Broken!3606 (value!24216 List!3687)) (Boolean!722) (Unit!4471) (OperatorValue!724 (op!781 List!3687)) (IdentifierValue!1442 (value!24217 List!3687)) (IdentifierValue!1443 (value!24218 List!3687)) (WhitespaceValue!1443 (value!24219 List!3687)) (True!1442) (False!1442) (Broken!3607 (value!24220 List!3687)) (Broken!3608 (value!24221 List!3687)) (True!1443) (RightBrace!721) (RightBracket!721) (Colon!721) (Null!721) (Comma!721) (LeftBracket!721) (False!1443) (LeftBrace!721) (ImaginaryLiteralValue!721 (text!5493 List!3687)) (StringLiteralValue!2163 (value!24222 List!3687)) (EOFValue!721 (value!24223 List!3687)) (IdentValue!721 (value!24224 List!3687)) (DelimiterValue!1443 (value!24225 List!3687)) (DedentValue!721 (value!24226 List!3687)) (NewLineValue!721 (value!24227 List!3687)) (IntegerValue!2163 (value!24228 (_ BitVec 32)) (text!5494 List!3687)) (IntegerValue!2164 (value!24229 Int) (text!5495 List!3687)) (Times!721) (Or!721) (Equal!721) (Minus!721) (Broken!3609 (value!24230 List!3687)) (And!721) (Div!721) (LessEqual!721) (Mod!721) (Concat!1644) (Not!721) (Plus!721) (SpaceValue!721 (value!24231 List!3687)) (IntegerValue!2165 (value!24232 Int) (text!5496 List!3687)) (StringLiteralValue!2164 (text!5497 List!3687)) (FloatLiteralValue!1443 (text!5498 List!3687)) (BytesLiteralValue!721 (value!24233 List!3687)) (CommentValue!1443 (value!24234 List!3687)) (StringLiteralValue!2165 (value!24235 List!3687)) (ErrorTokenValue!721 (msg!782 List!3687)) )
))
(declare-datatypes ((C!2768 0))(
  ( (C!2769 (val!1270 Int)) )
))
(declare-datatypes ((List!3688 0))(
  ( (Nil!3678) (Cons!3678 (h!9075 C!2768) (t!35392 List!3688)) )
))
(declare-datatypes ((IArray!2441 0))(
  ( (IArray!2442 (innerList!1278 List!3688)) )
))
(declare-datatypes ((Conc!1220 0))(
  ( (Node!1220 (left!3024 Conc!1220) (right!3354 Conc!1220) (csize!2670 Int) (cheight!1431 Int)) (Leaf!1909 (xs!3815 IArray!2441) (csize!2671 Int)) (Empty!1220) )
))
(declare-datatypes ((BalanceConc!2448 0))(
  ( (BalanceConc!2449 (c!47452 Conc!1220)) )
))
(declare-datatypes ((TokenValueInjection!1214 0))(
  ( (TokenValueInjection!1215 (toValue!1402 Int) (toChars!1261 Int)) )
))
(declare-datatypes ((Regex!923 0))(
  ( (ElementMatch!923 (c!47453 C!2768)) (Concat!1645 (regOne!2358 Regex!923) (regTwo!2358 Regex!923)) (EmptyExpr!923) (Star!923 (reg!1252 Regex!923)) (EmptyLang!923) (Union!923 (regOne!2359 Regex!923) (regTwo!2359 Regex!923)) )
))
(declare-datatypes ((String!4685 0))(
  ( (String!4686 (value!24236 String)) )
))
(declare-datatypes ((Rule!1198 0))(
  ( (Rule!1199 (regex!699 Regex!923) (tag!907 String!4685) (isSeparator!699 Bool) (transformation!699 TokenValueInjection!1214)) )
))
(declare-datatypes ((List!3689 0))(
  ( (Nil!3679) (Cons!3679 (h!9076 Rule!1198) (t!35393 List!3689)) )
))
(declare-fun rules!1920 () List!3689)

(get-info :version)

(assert (= (and b!249874 ((_ is Cons!3679) rules!1920)) b!249902))

(declare-fun order!2733 () Int)

(declare-fun order!2735 () Int)

(declare-fun dynLambda!1807 (Int Int) Int)

(declare-fun dynLambda!1808 (Int Int) Int)

(assert (=> b!249904 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8286))))

(declare-fun order!2737 () Int)

(declare-fun dynLambda!1809 (Int Int) Int)

(assert (=> b!249904 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8286))))

(assert (=> b!249874 true))

(declare-fun b!249857 () Bool)

(declare-fun res!115868 () Bool)

(declare-fun e!155259 () Bool)

(assert (=> b!249857 (=> (not res!115868) (not e!155259))))

(declare-datatypes ((Token!1142 0))(
  ( (Token!1143 (value!24237 TokenValue!721) (rule!1276 Rule!1198) (size!2910 Int) (originalCharacters!742 List!3688)) )
))
(declare-datatypes ((tuple2!4114 0))(
  ( (tuple2!4115 (_1!2273 Token!1142) (_2!2273 List!3688)) )
))
(declare-fun lt!101833 () tuple2!4114)

(declare-fun isEmpty!2277 (List!3688) Bool)

(assert (=> b!249857 (= res!115868 (isEmpty!2277 (_2!2273 lt!101833)))))

(declare-fun b!249858 () Bool)

(declare-fun e!155240 () Bool)

(declare-fun e!155254 () Bool)

(assert (=> b!249858 (= e!155240 e!155254)))

(declare-fun res!115851 () Bool)

(assert (=> b!249858 (=> (not res!115851) (not e!155254))))

(declare-datatypes ((Option!760 0))(
  ( (None!759) (Some!759 (v!14538 tuple2!4114)) )
))
(declare-fun lt!101846 () Option!760)

(declare-fun isDefined!611 (Option!760) Bool)

(assert (=> b!249858 (= res!115851 (isDefined!611 lt!101846))))

(declare-fun lt!101845 () List!3688)

(declare-datatypes ((LexerInterface!585 0))(
  ( (LexerInterfaceExt!582 (__x!2930 Int)) (Lexer!583) )
))
(declare-fun thiss!17480 () LexerInterface!585)

(declare-fun maxPrefix!315 (LexerInterface!585 List!3689 List!3688) Option!760)

(assert (=> b!249858 (= lt!101846 (maxPrefix!315 thiss!17480 rules!1920 lt!101845))))

(declare-fun b!249859 () Bool)

(declare-fun e!155242 () Bool)

(declare-datatypes ((List!3690 0))(
  ( (Nil!3680) (Cons!3680 (h!9077 Token!1142) (t!35394 List!3690)) )
))
(declare-datatypes ((IArray!2443 0))(
  ( (IArray!2444 (innerList!1279 List!3690)) )
))
(declare-datatypes ((Conc!1221 0))(
  ( (Node!1221 (left!3025 Conc!1221) (right!3355 Conc!1221) (csize!2672 Int) (cheight!1432 Int)) (Leaf!1910 (xs!3816 IArray!2443) (csize!2673 Int)) (Empty!1221) )
))
(declare-datatypes ((BalanceConc!2450 0))(
  ( (BalanceConc!2451 (c!47454 Conc!1221)) )
))
(declare-fun lt!101844 () BalanceConc!2450)

(declare-fun forall!864 (BalanceConc!2450 Int) Bool)

(assert (=> b!249859 (= e!155242 (forall!864 lt!101844 lambda!8285))))

(declare-fun b!249860 () Bool)

(declare-fun res!115871 () Bool)

(declare-fun e!155257 () Bool)

(assert (=> b!249860 (=> res!115871 e!155257)))

(declare-fun tokens!465 () List!3690)

(declare-fun rulesProduceIndividualToken!334 (LexerInterface!585 List!3689 Token!1142) Bool)

(assert (=> b!249860 (= res!115871 (not (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (h!9077 tokens!465))))))

(declare-fun b!249861 () Bool)

(declare-fun e!155243 () Bool)

(declare-fun e!155258 () Bool)

(assert (=> b!249861 (= e!155243 e!155258)))

(declare-fun res!115857 () Bool)

(assert (=> b!249861 (=> res!115857 e!155258)))

(declare-fun lt!101834 () List!3688)

(declare-fun isPrefix!383 (List!3688 List!3688) Bool)

(assert (=> b!249861 (= res!115857 (not (isPrefix!383 lt!101834 lt!101845)))))

(declare-fun lt!101826 () tuple2!4114)

(declare-fun get!1209 (Option!760) tuple2!4114)

(assert (=> b!249861 (= lt!101826 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 lt!101845)))))

(declare-fun lt!101823 () List!3688)

(assert (=> b!249861 (isPrefix!383 lt!101834 lt!101823)))

(declare-fun lt!101842 () List!3688)

(declare-fun ++!942 (List!3688 List!3688) List!3688)

(assert (=> b!249861 (= lt!101823 (++!942 lt!101834 lt!101842))))

(declare-datatypes ((Unit!4472 0))(
  ( (Unit!4473) )
))
(declare-fun lt!101824 () Unit!4472)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!278 (List!3688 List!3688) Unit!4472)

(assert (=> b!249861 (= lt!101824 (lemmaConcatTwoListThenFirstIsPrefix!278 lt!101834 lt!101842))))

(declare-fun lt!101841 () BalanceConc!2448)

(declare-fun filter!81 (List!3690 Int) List!3690)

(declare-fun list!1460 (BalanceConc!2450) List!3690)

(declare-datatypes ((tuple2!4116 0))(
  ( (tuple2!4117 (_1!2274 BalanceConc!2450) (_2!2274 BalanceConc!2448)) )
))
(declare-fun lex!385 (LexerInterface!585 List!3689 BalanceConc!2448) tuple2!4116)

(assert (=> b!249861 (= (filter!81 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))) lambda!8285) (t!35394 tokens!465))))

(declare-fun separatorToken!170 () Token!1142)

(declare-fun lt!101828 () Unit!4472)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!72 (LexerInterface!585 List!3689 List!3690 Token!1142) Unit!4472)

(assert (=> b!249861 (= lt!101828 (theoremInvertabilityFromTokensSepTokenWhenNeeded!72 thiss!17480 rules!1920 (t!35394 tokens!465) separatorToken!170))))

(assert (=> b!249861 e!155240))

(declare-fun res!115859 () Bool)

(assert (=> b!249861 (=> res!115859 e!155240)))

(declare-fun isEmpty!2278 (List!3690) Bool)

(assert (=> b!249861 (= res!115859 (isEmpty!2278 tokens!465))))

(declare-fun lt!101839 () Unit!4472)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!154 (LexerInterface!585 List!3689 List!3690 Token!1142) Unit!4472)

(assert (=> b!249861 (= lt!101839 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!154 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!249862 () Bool)

(declare-fun res!115856 () Bool)

(declare-fun e!155247 () Bool)

(assert (=> b!249862 (=> (not res!115856) (not e!155247))))

(assert (=> b!249862 (= res!115856 (rulesProduceIndividualToken!334 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!249863 () Bool)

(declare-fun e!155255 () Bool)

(declare-fun e!155234 () Bool)

(declare-fun tp!97111 () Bool)

(assert (=> b!249863 (= e!155255 (and e!155234 tp!97111))))

(declare-fun b!249864 () Bool)

(declare-fun res!115855 () Bool)

(declare-fun e!155252 () Bool)

(assert (=> b!249864 (=> (not res!115855) (not e!155252))))

(declare-fun lt!101831 () List!3688)

(declare-fun list!1461 (BalanceConc!2448) List!3688)

(declare-fun seqFromList!775 (List!3688) BalanceConc!2448)

(assert (=> b!249864 (= res!115855 (= (list!1461 (seqFromList!775 lt!101845)) lt!101831))))

(declare-fun e!155260 () Bool)

(declare-fun e!155249 () Bool)

(declare-fun tp!97101 () Bool)

(declare-fun b!249866 () Bool)

(declare-fun inv!4527 (String!4685) Bool)

(declare-fun inv!4530 (TokenValueInjection!1214) Bool)

(assert (=> b!249866 (= e!155249 (and tp!97101 (inv!4527 (tag!907 (rule!1276 separatorToken!170))) (inv!4530 (transformation!699 (rule!1276 separatorToken!170))) e!155260))))

(declare-fun b!249867 () Bool)

(declare-fun res!115865 () Bool)

(assert (=> b!249867 (=> (not res!115865) (not e!155247))))

(assert (=> b!249867 (= res!115865 ((_ is Cons!3680) tokens!465))))

(declare-fun b!249868 () Bool)

(declare-fun e!155246 () Bool)

(assert (=> b!249868 (= e!155246 (not (= lt!101845 (++!942 lt!101834 lt!101842))))))

(declare-fun b!249869 () Bool)

(declare-fun e!155261 () Bool)

(assert (=> b!249869 (= e!155261 e!155243)))

(declare-fun res!115864 () Bool)

(assert (=> b!249869 (=> res!115864 e!155243)))

(declare-fun lt!101835 () Bool)

(assert (=> b!249869 (= res!115864 lt!101835)))

(assert (=> b!249869 e!155259))

(declare-fun res!115852 () Bool)

(assert (=> b!249869 (=> (not res!115852) (not e!155259))))

(assert (=> b!249869 (= res!115852 (= (_1!2273 lt!101833) (h!9077 tokens!465)))))

(declare-fun lt!101836 () Option!760)

(assert (=> b!249869 (= lt!101833 (get!1209 lt!101836))))

(assert (=> b!249869 (isDefined!611 lt!101836)))

(assert (=> b!249869 (= lt!101836 (maxPrefix!315 thiss!17480 rules!1920 lt!101834))))

(declare-fun e!155236 () Bool)

(assert (=> b!249870 (= e!155236 (and tp!97107 tp!97110))))

(declare-fun b!249871 () Bool)

(declare-fun e!155238 () Bool)

(assert (=> b!249871 (= e!155238 e!155247)))

(declare-fun res!115861 () Bool)

(assert (=> b!249871 (=> (not res!115861) (not e!155247))))

(declare-fun rulesProduceEachTokenIndividually!377 (LexerInterface!585 List!3689 BalanceConc!2450) Bool)

(assert (=> b!249871 (= res!115861 (rulesProduceEachTokenIndividually!377 thiss!17480 rules!1920 lt!101844))))

(declare-fun seqFromList!776 (List!3690) BalanceConc!2450)

(assert (=> b!249871 (= lt!101844 (seqFromList!776 tokens!465))))

(declare-fun b!249872 () Bool)

(declare-fun res!115862 () Bool)

(assert (=> b!249872 (=> res!115862 e!155258)))

(assert (=> b!249872 (= res!115862 (not (= (++!942 lt!101834 (_2!2273 lt!101826)) lt!101845)))))

(declare-fun res!115869 () Bool)

(assert (=> b!249873 (=> (not res!115869) (not e!155247))))

(declare-fun forall!865 (List!3690 Int) Bool)

(assert (=> b!249873 (= res!115869 (forall!865 tokens!465 lambda!8285))))

(assert (=> b!249874 (= e!155257 e!155261)))

(declare-fun res!115860 () Bool)

(assert (=> b!249874 (=> res!115860 e!155261)))

(declare-datatypes ((tuple2!4118 0))(
  ( (tuple2!4119 (_1!2275 Token!1142) (_2!2275 BalanceConc!2448)) )
))
(declare-datatypes ((Option!761 0))(
  ( (None!760) (Some!760 (v!14539 tuple2!4118)) )
))
(declare-fun isDefined!612 (Option!761) Bool)

(declare-fun maxPrefixZipperSequence!278 (LexerInterface!585 List!3689 BalanceConc!2448) Option!761)

(assert (=> b!249874 (= res!115860 (not (isDefined!612 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))

(declare-fun lt!101847 () Unit!4472)

(declare-fun forallContained!266 (List!3690 Int Token!1142) Unit!4472)

(assert (=> b!249874 (= lt!101847 (forallContained!266 tokens!465 lambda!8286 (h!9077 tokens!465)))))

(assert (=> b!249874 (= lt!101834 (originalCharacters!742 (h!9077 tokens!465)))))

(declare-fun b!249875 () Bool)

(declare-fun e!155253 () Bool)

(assert (=> b!249875 (= e!155252 (not e!155253))))

(declare-fun res!115872 () Bool)

(assert (=> b!249875 (=> res!115872 e!155253)))

(assert (=> b!249875 (= res!115872 (not (= lt!101842 (list!1461 lt!101841))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!268 (LexerInterface!585 List!3689 BalanceConc!2450 Token!1142 Int) BalanceConc!2448)

(assert (=> b!249875 (= lt!101841 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0))))

(declare-fun lt!101840 () List!3688)

(declare-fun lt!101827 () List!3688)

(assert (=> b!249875 (= lt!101840 lt!101827)))

(declare-fun lt!101832 () List!3688)

(assert (=> b!249875 (= lt!101827 (++!942 lt!101834 lt!101832))))

(declare-fun lt!101837 () List!3688)

(assert (=> b!249875 (= lt!101840 (++!942 (++!942 lt!101834 lt!101837) lt!101842))))

(declare-fun lt!101848 () Unit!4472)

(declare-fun lemmaConcatAssociativity!404 (List!3688 List!3688 List!3688) Unit!4472)

(assert (=> b!249875 (= lt!101848 (lemmaConcatAssociativity!404 lt!101834 lt!101837 lt!101842))))

(declare-fun charsOf!354 (Token!1142) BalanceConc!2448)

(assert (=> b!249875 (= lt!101834 (list!1461 (charsOf!354 (h!9077 tokens!465))))))

(assert (=> b!249875 (= lt!101832 (++!942 lt!101837 lt!101842))))

(declare-fun printWithSeparatorTokenWhenNeededList!278 (LexerInterface!585 List!3689 List!3690 Token!1142) List!3688)

(assert (=> b!249875 (= lt!101842 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (t!35394 tokens!465) separatorToken!170))))

(assert (=> b!249875 (= lt!101837 (list!1461 (charsOf!354 separatorToken!170)))))

(declare-fun b!249876 () Bool)

(declare-fun e!155256 () Bool)

(declare-fun tp!97113 () Bool)

(declare-fun inv!21 (TokenValue!721) Bool)

(assert (=> b!249876 (= e!155256 (and (inv!21 (value!24237 separatorToken!170)) e!155249 tp!97113))))

(declare-fun tp!97108 () Bool)

(declare-fun b!249877 () Bool)

(declare-fun e!155241 () Bool)

(declare-fun e!155235 () Bool)

(assert (=> b!249877 (= e!155241 (and tp!97108 (inv!4527 (tag!907 (rule!1276 (h!9077 tokens!465)))) (inv!4530 (transformation!699 (rule!1276 (h!9077 tokens!465)))) e!155235))))

(declare-fun b!249878 () Bool)

(declare-fun res!115858 () Bool)

(assert (=> b!249878 (=> (not res!115858) (not e!155238))))

(declare-fun isEmpty!2279 (List!3689) Bool)

(assert (=> b!249878 (= res!115858 (not (isEmpty!2279 rules!1920)))))

(declare-fun b!249879 () Bool)

(declare-fun res!115877 () Bool)

(assert (=> b!249879 (=> res!115877 e!155257)))

(declare-fun isEmpty!2280 (BalanceConc!2450) Bool)

(assert (=> b!249879 (= res!115877 (isEmpty!2280 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834)))))))

(declare-fun tp!97102 () Bool)

(declare-fun b!249880 () Bool)

(assert (=> b!249880 (= e!155234 (and tp!97102 (inv!4527 (tag!907 (h!9076 rules!1920))) (inv!4530 (transformation!699 (h!9076 rules!1920))) e!155236))))

(declare-fun b!249881 () Bool)

(assert (=> b!249881 (= e!155258 e!155242)))

(declare-fun res!115870 () Bool)

(assert (=> b!249881 (=> res!115870 e!155242)))

(declare-fun size!2911 (BalanceConc!2450) Int)

(assert (=> b!249881 (= res!115870 (> 0 (size!2911 lt!101844)))))

(assert (=> b!249881 (= lt!101842 (_2!2273 lt!101826))))

(declare-fun lt!101843 () Unit!4472)

(declare-fun lemmaSamePrefixThenSameSuffix!198 (List!3688 List!3688 List!3688 List!3688 List!3688) Unit!4472)

(assert (=> b!249881 (= lt!101843 (lemmaSamePrefixThenSameSuffix!198 lt!101834 lt!101842 lt!101834 (_2!2273 lt!101826) lt!101845))))

(declare-fun b!249882 () Bool)

(declare-fun head!864 (List!3690) Token!1142)

(assert (=> b!249882 (= e!155254 (= (_1!2273 (get!1209 lt!101846)) (head!864 tokens!465)))))

(declare-fun b!249883 () Bool)

(declare-fun res!115853 () Bool)

(assert (=> b!249883 (=> (not res!115853) (not e!155247))))

(declare-fun sepAndNonSepRulesDisjointChars!288 (List!3689 List!3689) Bool)

(assert (=> b!249883 (= res!115853 (sepAndNonSepRulesDisjointChars!288 rules!1920 rules!1920))))

(declare-fun b!249884 () Bool)

(declare-fun matchR!261 (Regex!923 List!3688) Bool)

(assert (=> b!249884 (= e!155259 (matchR!261 (regex!699 (rule!1276 (h!9077 tokens!465))) lt!101834))))

(assert (=> b!249885 (= e!155260 (and tp!97104 tp!97103))))

(declare-fun b!249886 () Bool)

(declare-fun res!115876 () Bool)

(assert (=> b!249886 (=> res!115876 e!155258)))

(assert (=> b!249886 (= res!115876 (not (= lt!101823 lt!101845)))))

(declare-fun b!249887 () Bool)

(declare-fun res!115874 () Bool)

(assert (=> b!249887 (=> (not res!115874) (not e!155238))))

(declare-fun rulesInvariant!551 (LexerInterface!585 List!3689) Bool)

(assert (=> b!249887 (= res!115874 (rulesInvariant!551 thiss!17480 rules!1920))))

(declare-fun b!249888 () Bool)

(declare-fun e!155248 () Bool)

(assert (=> b!249888 (= e!155248 e!155257)))

(declare-fun res!115875 () Bool)

(assert (=> b!249888 (=> res!115875 e!155257)))

(declare-fun lt!101838 () List!3688)

(declare-fun lt!101825 () List!3688)

(assert (=> b!249888 (= res!115875 (or (not (= lt!101825 lt!101838)) (not (= lt!101838 lt!101834)) (not (= lt!101825 lt!101834))))))

(declare-fun printList!269 (LexerInterface!585 List!3690) List!3688)

(assert (=> b!249888 (= lt!101838 (printList!269 thiss!17480 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))

(declare-fun lt!101829 () BalanceConc!2448)

(assert (=> b!249888 (= lt!101825 (list!1461 lt!101829))))

(declare-fun lt!101830 () BalanceConc!2450)

(declare-fun printTailRec!279 (LexerInterface!585 BalanceConc!2450 Int BalanceConc!2448) BalanceConc!2448)

(assert (=> b!249888 (= lt!101829 (printTailRec!279 thiss!17480 lt!101830 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun print!316 (LexerInterface!585 BalanceConc!2450) BalanceConc!2448)

(assert (=> b!249888 (= lt!101829 (print!316 thiss!17480 lt!101830))))

(declare-fun singletonSeq!251 (Token!1142) BalanceConc!2450)

(assert (=> b!249888 (= lt!101830 (singletonSeq!251 (h!9077 tokens!465)))))

(declare-fun e!155239 () Bool)

(declare-fun b!249889 () Bool)

(declare-fun e!155251 () Bool)

(declare-fun tp!97105 () Bool)

(declare-fun inv!4531 (Token!1142) Bool)

(assert (=> b!249889 (= e!155251 (and (inv!4531 (h!9077 tokens!465)) e!155239 tp!97105))))

(declare-fun b!249865 () Bool)

(declare-fun tp!97106 () Bool)

(assert (=> b!249865 (= e!155239 (and (inv!21 (value!24237 (h!9077 tokens!465))) e!155241 tp!97106))))

(declare-fun res!115866 () Bool)

(assert (=> start!26522 (=> (not res!115866) (not e!155238))))

(assert (=> start!26522 (= res!115866 ((_ is Lexer!583) thiss!17480))))

(assert (=> start!26522 e!155238))

(assert (=> start!26522 true))

(assert (=> start!26522 e!155255))

(assert (=> start!26522 (and (inv!4531 separatorToken!170) e!155256)))

(assert (=> start!26522 e!155251))

(declare-fun b!249890 () Bool)

(assert (=> b!249890 (= e!155253 e!155248)))

(declare-fun res!115867 () Bool)

(assert (=> b!249890 (=> res!115867 e!155248)))

(assert (=> b!249890 (= res!115867 e!155246)))

(declare-fun res!115863 () Bool)

(assert (=> b!249890 (=> (not res!115863) (not e!155246))))

(assert (=> b!249890 (= res!115863 (not lt!101835))))

(assert (=> b!249890 (= lt!101835 (= lt!101845 lt!101827))))

(assert (=> b!249891 (= e!155235 (and tp!97112 tp!97109))))

(declare-fun b!249892 () Bool)

(assert (=> b!249892 (= e!155247 e!155252)))

(declare-fun res!115854 () Bool)

(assert (=> b!249892 (=> (not res!115854) (not e!155252))))

(assert (=> b!249892 (= res!115854 (= lt!101845 lt!101831))))

(assert (=> b!249892 (= lt!101831 (list!1461 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0)))))

(assert (=> b!249892 (= lt!101845 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!249893 () Bool)

(declare-fun res!115873 () Bool)

(assert (=> b!249893 (=> (not res!115873) (not e!155247))))

(assert (=> b!249893 (= res!115873 (isSeparator!699 (rule!1276 separatorToken!170)))))

(assert (= (and start!26522 res!115866) b!249878))

(assert (= (and b!249878 res!115858) b!249887))

(assert (= (and b!249887 res!115874) b!249871))

(assert (= (and b!249871 res!115861) b!249862))

(assert (= (and b!249862 res!115856) b!249893))

(assert (= (and b!249893 res!115873) b!249873))

(assert (= (and b!249873 res!115869) b!249883))

(assert (= (and b!249883 res!115853) b!249867))

(assert (= (and b!249867 res!115865) b!249892))

(assert (= (and b!249892 res!115854) b!249864))

(assert (= (and b!249864 res!115855) b!249875))

(assert (= (and b!249875 (not res!115872)) b!249890))

(assert (= (and b!249890 res!115863) b!249868))

(assert (= (and b!249890 (not res!115867)) b!249888))

(assert (= (and b!249888 (not res!115875)) b!249860))

(assert (= (and b!249860 (not res!115871)) b!249879))

(assert (= (and b!249879 (not res!115877)) b!249874))

(assert (= (and b!249874 (not res!115860)) b!249869))

(assert (= (and b!249869 res!115852) b!249857))

(assert (= (and b!249857 res!115868) b!249884))

(assert (= (and b!249869 (not res!115864)) b!249861))

(assert (= (and b!249861 (not res!115859)) b!249858))

(assert (= (and b!249858 res!115851) b!249882))

(assert (= (and b!249861 (not res!115857)) b!249886))

(assert (= (and b!249886 (not res!115876)) b!249872))

(assert (= (and b!249872 (not res!115862)) b!249881))

(assert (= (and b!249881 (not res!115870)) b!249859))

(assert (= b!249880 b!249870))

(assert (= b!249863 b!249880))

(assert (= (and start!26522 ((_ is Cons!3679) rules!1920)) b!249863))

(assert (= b!249866 b!249885))

(assert (= b!249876 b!249866))

(assert (= start!26522 b!249876))

(assert (= b!249877 b!249891))

(assert (= b!249865 b!249877))

(assert (= b!249889 b!249865))

(assert (= (and start!26522 ((_ is Cons!3680) tokens!465)) b!249889))

(declare-fun m!306023 () Bool)

(assert (=> b!249882 m!306023))

(declare-fun m!306025 () Bool)

(assert (=> b!249882 m!306025))

(declare-fun m!306027 () Bool)

(assert (=> b!249858 m!306027))

(declare-fun m!306029 () Bool)

(assert (=> b!249858 m!306029))

(declare-fun m!306031 () Bool)

(assert (=> b!249878 m!306031))

(declare-fun m!306033 () Bool)

(assert (=> b!249879 m!306033))

(assert (=> b!249879 m!306033))

(declare-fun m!306035 () Bool)

(assert (=> b!249879 m!306035))

(declare-fun m!306037 () Bool)

(assert (=> b!249879 m!306037))

(declare-fun m!306039 () Bool)

(assert (=> start!26522 m!306039))

(declare-fun m!306041 () Bool)

(assert (=> b!249868 m!306041))

(declare-fun m!306043 () Bool)

(assert (=> b!249857 m!306043))

(declare-fun m!306045 () Bool)

(assert (=> b!249892 m!306045))

(assert (=> b!249892 m!306045))

(declare-fun m!306047 () Bool)

(assert (=> b!249892 m!306047))

(declare-fun m!306049 () Bool)

(assert (=> b!249892 m!306049))

(declare-fun m!306051 () Bool)

(assert (=> b!249871 m!306051))

(declare-fun m!306053 () Bool)

(assert (=> b!249871 m!306053))

(declare-fun m!306055 () Bool)

(assert (=> b!249864 m!306055))

(assert (=> b!249864 m!306055))

(declare-fun m!306057 () Bool)

(assert (=> b!249864 m!306057))

(declare-fun m!306059 () Bool)

(assert (=> b!249859 m!306059))

(declare-fun m!306061 () Bool)

(assert (=> b!249865 m!306061))

(assert (=> b!249861 m!306029))

(declare-fun m!306063 () Bool)

(assert (=> b!249861 m!306063))

(assert (=> b!249861 m!306041))

(assert (=> b!249861 m!306029))

(declare-fun m!306065 () Bool)

(assert (=> b!249861 m!306065))

(declare-fun m!306067 () Bool)

(assert (=> b!249861 m!306067))

(declare-fun m!306069 () Bool)

(assert (=> b!249861 m!306069))

(declare-fun m!306071 () Bool)

(assert (=> b!249861 m!306071))

(declare-fun m!306073 () Bool)

(assert (=> b!249861 m!306073))

(declare-fun m!306075 () Bool)

(assert (=> b!249861 m!306075))

(declare-fun m!306077 () Bool)

(assert (=> b!249861 m!306077))

(assert (=> b!249861 m!306075))

(declare-fun m!306079 () Bool)

(assert (=> b!249861 m!306079))

(declare-fun m!306081 () Bool)

(assert (=> b!249861 m!306081))

(declare-fun m!306083 () Bool)

(assert (=> b!249884 m!306083))

(declare-fun m!306085 () Bool)

(assert (=> b!249880 m!306085))

(declare-fun m!306087 () Bool)

(assert (=> b!249880 m!306087))

(declare-fun m!306089 () Bool)

(assert (=> b!249872 m!306089))

(declare-fun m!306091 () Bool)

(assert (=> b!249888 m!306091))

(declare-fun m!306093 () Bool)

(assert (=> b!249888 m!306093))

(declare-fun m!306095 () Bool)

(assert (=> b!249888 m!306095))

(declare-fun m!306097 () Bool)

(assert (=> b!249888 m!306097))

(declare-fun m!306099 () Bool)

(assert (=> b!249888 m!306099))

(declare-fun m!306101 () Bool)

(assert (=> b!249860 m!306101))

(declare-fun m!306103 () Bool)

(assert (=> b!249887 m!306103))

(declare-fun m!306105 () Bool)

(assert (=> b!249883 m!306105))

(declare-fun m!306107 () Bool)

(assert (=> b!249877 m!306107))

(declare-fun m!306109 () Bool)

(assert (=> b!249877 m!306109))

(declare-fun m!306111 () Bool)

(assert (=> b!249876 m!306111))

(declare-fun m!306113 () Bool)

(assert (=> b!249862 m!306113))

(declare-fun m!306115 () Bool)

(assert (=> b!249866 m!306115))

(declare-fun m!306117 () Bool)

(assert (=> b!249866 m!306117))

(declare-fun m!306119 () Bool)

(assert (=> b!249889 m!306119))

(declare-fun m!306121 () Bool)

(assert (=> b!249875 m!306121))

(declare-fun m!306123 () Bool)

(assert (=> b!249875 m!306123))

(declare-fun m!306125 () Bool)

(assert (=> b!249875 m!306125))

(declare-fun m!306127 () Bool)

(assert (=> b!249875 m!306127))

(declare-fun m!306129 () Bool)

(assert (=> b!249875 m!306129))

(declare-fun m!306131 () Bool)

(assert (=> b!249875 m!306131))

(declare-fun m!306133 () Bool)

(assert (=> b!249875 m!306133))

(declare-fun m!306135 () Bool)

(assert (=> b!249875 m!306135))

(assert (=> b!249875 m!306127))

(assert (=> b!249875 m!306121))

(declare-fun m!306137 () Bool)

(assert (=> b!249875 m!306137))

(declare-fun m!306139 () Bool)

(assert (=> b!249875 m!306139))

(assert (=> b!249875 m!306139))

(declare-fun m!306141 () Bool)

(assert (=> b!249875 m!306141))

(declare-fun m!306143 () Bool)

(assert (=> b!249875 m!306143))

(declare-fun m!306145 () Bool)

(assert (=> b!249875 m!306145))

(assert (=> b!249875 m!306131))

(declare-fun m!306147 () Bool)

(assert (=> b!249869 m!306147))

(declare-fun m!306149 () Bool)

(assert (=> b!249869 m!306149))

(declare-fun m!306151 () Bool)

(assert (=> b!249869 m!306151))

(declare-fun m!306153 () Bool)

(assert (=> b!249873 m!306153))

(declare-fun m!306155 () Bool)

(assert (=> b!249874 m!306155))

(assert (=> b!249874 m!306155))

(declare-fun m!306157 () Bool)

(assert (=> b!249874 m!306157))

(assert (=> b!249874 m!306157))

(declare-fun m!306159 () Bool)

(assert (=> b!249874 m!306159))

(declare-fun m!306161 () Bool)

(assert (=> b!249874 m!306161))

(declare-fun m!306163 () Bool)

(assert (=> b!249881 m!306163))

(declare-fun m!306165 () Bool)

(assert (=> b!249881 m!306165))

(check-sat (not b!249871) (not b!249869) (not b!249858) (not b!249889) (not b_next!9335) (not b!249874) (not b!249892) (not b!249881) (not b!249888) (not b!249902) (not b_next!9333) (not b!249857) b_and!18851 (not b!249859) (not b!249873) (not b!249865) (not b!249876) (not b!249883) (not b!249887) (not b!249877) b_and!18845 (not b!249884) (not b_next!9337) b_and!18853 (not b!249868) (not start!26522) (not b!249861) (not b!249860) (not b!249864) (not b_next!9331) (not b!249872) (not b!249866) b_and!18855 (not b!249862) b_and!18849 (not b!249880) b_and!18847 (not b!249882) (not b_next!9339) (not b!249863) (not b!249878) (not b!249879) (not b!249875) (not b_next!9329))
(check-sat (not b_next!9333) b_and!18851 b_and!18845 (not b_next!9331) b_and!18855 b_and!18849 (not b_next!9335) b_and!18847 (not b_next!9339) (not b_next!9329) (not b_next!9337) b_and!18853)
(get-model)

(declare-fun b!249921 () Bool)

(declare-fun e!155281 () List!3688)

(assert (=> b!249921 (= e!155281 lt!101842)))

(declare-fun b!249922 () Bool)

(assert (=> b!249922 (= e!155281 (Cons!3678 (h!9075 lt!101834) (++!942 (t!35392 lt!101834) lt!101842)))))

(declare-fun b!249924 () Bool)

(declare-fun e!155282 () Bool)

(declare-fun lt!101851 () List!3688)

(assert (=> b!249924 (= e!155282 (or (not (= lt!101842 Nil!3678)) (= lt!101851 lt!101834)))))

(declare-fun d!70153 () Bool)

(assert (=> d!70153 e!155282))

(declare-fun res!115899 () Bool)

(assert (=> d!70153 (=> (not res!115899) (not e!155282))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!513 (List!3688) (InoxSet C!2768))

(assert (=> d!70153 (= res!115899 (= (content!513 lt!101851) ((_ map or) (content!513 lt!101834) (content!513 lt!101842))))))

(assert (=> d!70153 (= lt!101851 e!155281)))

(declare-fun c!47457 () Bool)

(assert (=> d!70153 (= c!47457 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70153 (= (++!942 lt!101834 lt!101842) lt!101851)))

(declare-fun b!249923 () Bool)

(declare-fun res!115898 () Bool)

(assert (=> b!249923 (=> (not res!115898) (not e!155282))))

(declare-fun size!2913 (List!3688) Int)

(assert (=> b!249923 (= res!115898 (= (size!2913 lt!101851) (+ (size!2913 lt!101834) (size!2913 lt!101842))))))

(assert (= (and d!70153 c!47457) b!249921))

(assert (= (and d!70153 (not c!47457)) b!249922))

(assert (= (and d!70153 res!115899) b!249923))

(assert (= (and b!249923 res!115898) b!249924))

(declare-fun m!306173 () Bool)

(assert (=> b!249922 m!306173))

(declare-fun m!306175 () Bool)

(assert (=> d!70153 m!306175))

(declare-fun m!306177 () Bool)

(assert (=> d!70153 m!306177))

(declare-fun m!306179 () Bool)

(assert (=> d!70153 m!306179))

(declare-fun m!306181 () Bool)

(assert (=> b!249923 m!306181))

(declare-fun m!306183 () Bool)

(assert (=> b!249923 m!306183))

(declare-fun m!306185 () Bool)

(assert (=> b!249923 m!306185))

(assert (=> b!249868 d!70153))

(declare-fun d!70155 () Bool)

(declare-fun res!115912 () Bool)

(declare-fun e!155291 () Bool)

(assert (=> d!70155 (=> (not res!115912) (not e!155291))))

(assert (=> d!70155 (= res!115912 (not (isEmpty!2277 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (=> d!70155 (= (inv!4531 (h!9077 tokens!465)) e!155291)))

(declare-fun b!249941 () Bool)

(declare-fun res!115913 () Bool)

(assert (=> b!249941 (=> (not res!115913) (not e!155291))))

(declare-fun dynLambda!1811 (Int TokenValue!721) BalanceConc!2448)

(assert (=> b!249941 (= res!115913 (= (originalCharacters!742 (h!9077 tokens!465)) (list!1461 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))))))

(declare-fun b!249942 () Bool)

(assert (=> b!249942 (= e!155291 (= (size!2910 (h!9077 tokens!465)) (size!2913 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (= (and d!70155 res!115912) b!249941))

(assert (= (and b!249941 res!115913) b!249942))

(declare-fun b_lambda!7333 () Bool)

(assert (=> (not b_lambda!7333) (not b!249941)))

(declare-fun t!35396 () Bool)

(declare-fun tb!12769 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) t!35396) tb!12769))

(declare-fun b!249953 () Bool)

(declare-fun e!155294 () Bool)

(declare-fun tp!97116 () Bool)

(declare-fun inv!4532 (Conc!1220) Bool)

(assert (=> b!249953 (= e!155294 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))) tp!97116))))

(declare-fun result!16112 () Bool)

(declare-fun inv!4533 (BalanceConc!2448) Bool)

(assert (=> tb!12769 (= result!16112 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))) e!155294))))

(assert (= tb!12769 b!249953))

(declare-fun m!306187 () Bool)

(assert (=> b!249953 m!306187))

(declare-fun m!306189 () Bool)

(assert (=> tb!12769 m!306189))

(assert (=> b!249941 t!35396))

(declare-fun b_and!18857 () Bool)

(assert (= b_and!18847 (and (=> t!35396 result!16112) b_and!18857)))

(declare-fun tb!12771 () Bool)

(declare-fun t!35398 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) t!35398) tb!12771))

(declare-fun result!16116 () Bool)

(assert (= result!16116 result!16112))

(assert (=> b!249941 t!35398))

(declare-fun b_and!18859 () Bool)

(assert (= b_and!18851 (and (=> t!35398 result!16116) b_and!18859)))

(declare-fun t!35400 () Bool)

(declare-fun tb!12773 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) t!35400) tb!12773))

(declare-fun result!16118 () Bool)

(assert (= result!16118 result!16112))

(assert (=> b!249941 t!35400))

(declare-fun b_and!18861 () Bool)

(assert (= b_and!18855 (and (=> t!35400 result!16118) b_and!18861)))

(declare-fun m!306191 () Bool)

(assert (=> d!70155 m!306191))

(declare-fun m!306193 () Bool)

(assert (=> b!249941 m!306193))

(assert (=> b!249941 m!306193))

(declare-fun m!306195 () Bool)

(assert (=> b!249941 m!306195))

(declare-fun m!306197 () Bool)

(assert (=> b!249942 m!306197))

(assert (=> b!249889 d!70155))

(declare-fun d!70157 () Bool)

(declare-fun lt!101878 () BalanceConc!2448)

(assert (=> d!70157 (= (list!1461 lt!101878) (printList!269 thiss!17480 (list!1460 lt!101830)))))

(assert (=> d!70157 (= lt!101878 (printTailRec!279 thiss!17480 lt!101830 0 (BalanceConc!2449 Empty!1220)))))

(assert (=> d!70157 (= (print!316 thiss!17480 lt!101830) lt!101878)))

(declare-fun bs!26785 () Bool)

(assert (= bs!26785 d!70157))

(declare-fun m!306299 () Bool)

(assert (=> bs!26785 m!306299))

(declare-fun m!306301 () Bool)

(assert (=> bs!26785 m!306301))

(assert (=> bs!26785 m!306301))

(declare-fun m!306303 () Bool)

(assert (=> bs!26785 m!306303))

(assert (=> bs!26785 m!306091))

(assert (=> b!249888 d!70157))

(declare-fun d!70179 () Bool)

(declare-fun list!1463 (Conc!1220) List!3688)

(assert (=> d!70179 (= (list!1461 lt!101829) (list!1463 (c!47452 lt!101829)))))

(declare-fun bs!26786 () Bool)

(assert (= bs!26786 d!70179))

(declare-fun m!306305 () Bool)

(assert (=> bs!26786 m!306305))

(assert (=> b!249888 d!70179))

(declare-fun d!70181 () Bool)

(declare-fun lt!101894 () BalanceConc!2448)

(declare-fun printListTailRec!113 (LexerInterface!585 List!3690 List!3688) List!3688)

(declare-fun dropList!145 (BalanceConc!2450 Int) List!3690)

(assert (=> d!70181 (= (list!1461 lt!101894) (printListTailRec!113 thiss!17480 (dropList!145 lt!101830 0) (list!1461 (BalanceConc!2449 Empty!1220))))))

(declare-fun e!155314 () BalanceConc!2448)

(assert (=> d!70181 (= lt!101894 e!155314)))

(declare-fun c!47468 () Bool)

(assert (=> d!70181 (= c!47468 (>= 0 (size!2911 lt!101830)))))

(declare-fun e!155313 () Bool)

(assert (=> d!70181 e!155313))

(declare-fun res!115944 () Bool)

(assert (=> d!70181 (=> (not res!115944) (not e!155313))))

(assert (=> d!70181 (= res!115944 (>= 0 0))))

(assert (=> d!70181 (= (printTailRec!279 thiss!17480 lt!101830 0 (BalanceConc!2449 Empty!1220)) lt!101894)))

(declare-fun b!249994 () Bool)

(assert (=> b!249994 (= e!155313 (<= 0 (size!2911 lt!101830)))))

(declare-fun b!249995 () Bool)

(assert (=> b!249995 (= e!155314 (BalanceConc!2449 Empty!1220))))

(declare-fun b!249996 () Bool)

(declare-fun ++!943 (BalanceConc!2448 BalanceConc!2448) BalanceConc!2448)

(declare-fun apply!694 (BalanceConc!2450 Int) Token!1142)

(assert (=> b!249996 (= e!155314 (printTailRec!279 thiss!17480 lt!101830 (+ 0 1) (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 lt!101830 0)))))))

(declare-fun lt!101895 () List!3690)

(assert (=> b!249996 (= lt!101895 (list!1460 lt!101830))))

(declare-fun lt!101899 () Unit!4472)

(declare-fun lemmaDropApply!185 (List!3690 Int) Unit!4472)

(assert (=> b!249996 (= lt!101899 (lemmaDropApply!185 lt!101895 0))))

(declare-fun drop!198 (List!3690 Int) List!3690)

(declare-fun apply!695 (List!3690 Int) Token!1142)

(assert (=> b!249996 (= (head!864 (drop!198 lt!101895 0)) (apply!695 lt!101895 0))))

(declare-fun lt!101897 () Unit!4472)

(assert (=> b!249996 (= lt!101897 lt!101899)))

(declare-fun lt!101896 () List!3690)

(assert (=> b!249996 (= lt!101896 (list!1460 lt!101830))))

(declare-fun lt!101898 () Unit!4472)

(declare-fun lemmaDropTail!177 (List!3690 Int) Unit!4472)

(assert (=> b!249996 (= lt!101898 (lemmaDropTail!177 lt!101896 0))))

(declare-fun tail!455 (List!3690) List!3690)

(assert (=> b!249996 (= (tail!455 (drop!198 lt!101896 0)) (drop!198 lt!101896 (+ 0 1)))))

(declare-fun lt!101893 () Unit!4472)

(assert (=> b!249996 (= lt!101893 lt!101898)))

(assert (= (and d!70181 res!115944) b!249994))

(assert (= (and d!70181 c!47468) b!249995))

(assert (= (and d!70181 (not c!47468)) b!249996))

(declare-fun m!306307 () Bool)

(assert (=> d!70181 m!306307))

(declare-fun m!306309 () Bool)

(assert (=> d!70181 m!306309))

(assert (=> d!70181 m!306309))

(assert (=> d!70181 m!306307))

(declare-fun m!306311 () Bool)

(assert (=> d!70181 m!306311))

(declare-fun m!306313 () Bool)

(assert (=> d!70181 m!306313))

(declare-fun m!306315 () Bool)

(assert (=> d!70181 m!306315))

(assert (=> b!249994 m!306315))

(declare-fun m!306317 () Bool)

(assert (=> b!249996 m!306317))

(declare-fun m!306319 () Bool)

(assert (=> b!249996 m!306319))

(declare-fun m!306321 () Bool)

(assert (=> b!249996 m!306321))

(declare-fun m!306323 () Bool)

(assert (=> b!249996 m!306323))

(declare-fun m!306325 () Bool)

(assert (=> b!249996 m!306325))

(assert (=> b!249996 m!306301))

(declare-fun m!306327 () Bool)

(assert (=> b!249996 m!306327))

(declare-fun m!306329 () Bool)

(assert (=> b!249996 m!306329))

(declare-fun m!306331 () Bool)

(assert (=> b!249996 m!306331))

(assert (=> b!249996 m!306329))

(declare-fun m!306333 () Bool)

(assert (=> b!249996 m!306333))

(declare-fun m!306335 () Bool)

(assert (=> b!249996 m!306335))

(declare-fun m!306337 () Bool)

(assert (=> b!249996 m!306337))

(assert (=> b!249996 m!306317))

(assert (=> b!249996 m!306321))

(declare-fun m!306339 () Bool)

(assert (=> b!249996 m!306339))

(assert (=> b!249996 m!306339))

(assert (=> b!249996 m!306335))

(assert (=> b!249888 d!70181))

(declare-fun d!70183 () Bool)

(declare-fun e!155317 () Bool)

(assert (=> d!70183 e!155317))

(declare-fun res!115947 () Bool)

(assert (=> d!70183 (=> (not res!115947) (not e!155317))))

(declare-fun lt!101902 () BalanceConc!2450)

(assert (=> d!70183 (= res!115947 (= (list!1460 lt!101902) (Cons!3680 (h!9077 tokens!465) Nil!3680)))))

(declare-fun singleton!94 (Token!1142) BalanceConc!2450)

(assert (=> d!70183 (= lt!101902 (singleton!94 (h!9077 tokens!465)))))

(assert (=> d!70183 (= (singletonSeq!251 (h!9077 tokens!465)) lt!101902)))

(declare-fun b!249999 () Bool)

(declare-fun isBalanced!315 (Conc!1221) Bool)

(assert (=> b!249999 (= e!155317 (isBalanced!315 (c!47454 lt!101902)))))

(assert (= (and d!70183 res!115947) b!249999))

(declare-fun m!306341 () Bool)

(assert (=> d!70183 m!306341))

(declare-fun m!306343 () Bool)

(assert (=> d!70183 m!306343))

(declare-fun m!306345 () Bool)

(assert (=> b!249999 m!306345))

(assert (=> b!249888 d!70183))

(declare-fun d!70185 () Bool)

(declare-fun c!47471 () Bool)

(assert (=> d!70185 (= c!47471 ((_ is Cons!3680) (Cons!3680 (h!9077 tokens!465) Nil!3680)))))

(declare-fun e!155320 () List!3688)

(assert (=> d!70185 (= (printList!269 thiss!17480 (Cons!3680 (h!9077 tokens!465) Nil!3680)) e!155320)))

(declare-fun b!250004 () Bool)

(assert (=> b!250004 (= e!155320 (++!942 (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))) (printList!269 thiss!17480 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))))

(declare-fun b!250005 () Bool)

(assert (=> b!250005 (= e!155320 Nil!3678)))

(assert (= (and d!70185 c!47471) b!250004))

(assert (= (and d!70185 (not c!47471)) b!250005))

(declare-fun m!306347 () Bool)

(assert (=> b!250004 m!306347))

(assert (=> b!250004 m!306347))

(declare-fun m!306349 () Bool)

(assert (=> b!250004 m!306349))

(declare-fun m!306351 () Bool)

(assert (=> b!250004 m!306351))

(assert (=> b!250004 m!306349))

(assert (=> b!250004 m!306351))

(declare-fun m!306353 () Bool)

(assert (=> b!250004 m!306353))

(assert (=> b!249888 d!70185))

(declare-fun d!70187 () Bool)

(assert (=> d!70187 (= (inv!4527 (tag!907 (rule!1276 separatorToken!170))) (= (mod (str.len (value!24236 (tag!907 (rule!1276 separatorToken!170)))) 2) 0))))

(assert (=> b!249866 d!70187))

(declare-fun d!70189 () Bool)

(declare-fun res!115950 () Bool)

(declare-fun e!155323 () Bool)

(assert (=> d!70189 (=> (not res!115950) (not e!155323))))

(declare-fun semiInverseModEq!236 (Int Int) Bool)

(assert (=> d!70189 (= res!115950 (semiInverseModEq!236 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (rule!1276 separatorToken!170)))))))

(assert (=> d!70189 (= (inv!4530 (transformation!699 (rule!1276 separatorToken!170))) e!155323)))

(declare-fun b!250008 () Bool)

(declare-fun equivClasses!219 (Int Int) Bool)

(assert (=> b!250008 (= e!155323 (equivClasses!219 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (rule!1276 separatorToken!170)))))))

(assert (= (and d!70189 res!115950) b!250008))

(declare-fun m!306355 () Bool)

(assert (=> d!70189 m!306355))

(declare-fun m!306357 () Bool)

(assert (=> b!250008 m!306357))

(assert (=> b!249866 d!70189))

(declare-fun d!70191 () Bool)

(assert (=> d!70191 (= (list!1461 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0)) (list!1463 (c!47452 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0))))))

(declare-fun bs!26787 () Bool)

(assert (= bs!26787 d!70191))

(declare-fun m!306359 () Bool)

(assert (=> bs!26787 m!306359))

(assert (=> b!249892 d!70191))

(declare-fun bs!26790 () Bool)

(declare-fun d!70193 () Bool)

(assert (= bs!26790 (and d!70193 b!249873)))

(declare-fun lambda!8294 () Int)

(assert (=> bs!26790 (= lambda!8294 lambda!8285)))

(declare-fun bs!26791 () Bool)

(assert (= bs!26791 (and d!70193 b!249874)))

(assert (=> bs!26791 (not (= lambda!8294 lambda!8286))))

(declare-fun bs!26792 () Bool)

(declare-fun b!250061 () Bool)

(assert (= bs!26792 (and b!250061 b!249873)))

(declare-fun lambda!8295 () Int)

(assert (=> bs!26792 (not (= lambda!8295 lambda!8285))))

(declare-fun bs!26793 () Bool)

(assert (= bs!26793 (and b!250061 b!249874)))

(assert (=> bs!26793 (= lambda!8295 lambda!8286)))

(declare-fun bs!26794 () Bool)

(assert (= bs!26794 (and b!250061 d!70193)))

(assert (=> bs!26794 (not (= lambda!8295 lambda!8294))))

(declare-fun b!250071 () Bool)

(declare-fun e!155362 () Bool)

(assert (=> b!250071 (= e!155362 true)))

(declare-fun b!250070 () Bool)

(declare-fun e!155361 () Bool)

(assert (=> b!250070 (= e!155361 e!155362)))

(declare-fun b!250069 () Bool)

(declare-fun e!155360 () Bool)

(assert (=> b!250069 (= e!155360 e!155361)))

(assert (=> b!250061 e!155360))

(assert (= b!250070 b!250071))

(assert (= b!250069 b!250070))

(assert (= (and b!250061 ((_ is Cons!3679) rules!1920)) b!250069))

(assert (=> b!250071 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8295))))

(assert (=> b!250071 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8295))))

(assert (=> b!250061 true))

(declare-fun b!250058 () Bool)

(declare-fun e!155357 () Bool)

(declare-fun lt!101956 () Option!761)

(assert (=> b!250058 (= e!155357 (= (_1!2275 (v!14539 lt!101956)) (apply!694 lt!101844 0)))))

(declare-fun b!250059 () Bool)

(declare-fun e!155356 () BalanceConc!2448)

(assert (=> b!250059 (= e!155356 (BalanceConc!2449 Empty!1220))))

(declare-fun call!13201 () Token!1142)

(assert (=> b!250059 (= (print!316 thiss!17480 (singletonSeq!251 call!13201)) (printTailRec!279 thiss!17480 (singletonSeq!251 call!13201) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!101952 () Unit!4472)

(declare-fun Unit!4476 () Unit!4472)

(assert (=> b!250059 (= lt!101952 Unit!4476)))

(declare-fun call!13204 () BalanceConc!2448)

(declare-fun lt!101960 () Unit!4472)

(declare-fun lt!101951 () BalanceConc!2448)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 (LexerInterface!585 List!3689 List!3688 List!3688) Unit!4472)

(assert (=> b!250059 (= lt!101960 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 (list!1461 call!13204) (list!1461 lt!101951)))))

(assert (=> b!250059 false))

(declare-fun lt!101958 () Unit!4472)

(declare-fun Unit!4477 () Unit!4472)

(assert (=> b!250059 (= lt!101958 Unit!4477)))

(declare-fun bm!13195 () Bool)

(declare-fun call!13202 () Token!1142)

(assert (=> bm!13195 (= call!13202 (apply!694 lt!101844 0))))

(declare-fun c!47495 () Bool)

(declare-fun call!13203 () BalanceConc!2448)

(declare-fun c!47494 () Bool)

(declare-fun bm!13196 () Bool)

(assert (=> bm!13196 (= call!13203 (charsOf!354 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201))))))

(declare-fun b!250060 () Bool)

(declare-fun e!155354 () BalanceConc!2448)

(assert (=> b!250060 (= e!155354 (charsOf!354 call!13201))))

(declare-fun bm!13197 () Bool)

(assert (=> bm!13197 (= call!13204 call!13203)))

(declare-fun lt!101955 () BalanceConc!2448)

(assert (=> d!70193 (= (list!1461 lt!101955) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (dropList!145 lt!101844 0) separatorToken!170))))

(declare-fun e!155359 () BalanceConc!2448)

(assert (=> d!70193 (= lt!101955 e!155359)))

(declare-fun c!47493 () Bool)

(assert (=> d!70193 (= c!47493 (>= 0 (size!2911 lt!101844)))))

(declare-fun lt!101961 () Unit!4472)

(declare-fun lemmaContentSubsetPreservesForall!89 (List!3690 List!3690 Int) Unit!4472)

(assert (=> d!70193 (= lt!101961 (lemmaContentSubsetPreservesForall!89 (list!1460 lt!101844) (dropList!145 lt!101844 0) lambda!8294))))

(declare-fun e!155355 () Bool)

(assert (=> d!70193 e!155355))

(declare-fun res!115959 () Bool)

(assert (=> d!70193 (=> (not res!115959) (not e!155355))))

(assert (=> d!70193 (= res!115959 (>= 0 0))))

(assert (=> d!70193 (= (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0) lt!101955)))

(declare-fun e!155353 () BalanceConc!2448)

(assert (=> b!250061 (= e!155359 e!155353)))

(declare-fun lt!101949 () List!3690)

(assert (=> b!250061 (= lt!101949 (list!1460 lt!101844))))

(declare-fun lt!101950 () Unit!4472)

(assert (=> b!250061 (= lt!101950 (lemmaDropApply!185 lt!101949 0))))

(assert (=> b!250061 (= (head!864 (drop!198 lt!101949 0)) (apply!695 lt!101949 0))))

(declare-fun lt!101962 () Unit!4472)

(assert (=> b!250061 (= lt!101962 lt!101950)))

(declare-fun lt!101953 () List!3690)

(assert (=> b!250061 (= lt!101953 (list!1460 lt!101844))))

(declare-fun lt!101954 () Unit!4472)

(assert (=> b!250061 (= lt!101954 (lemmaDropTail!177 lt!101953 0))))

(assert (=> b!250061 (= (tail!455 (drop!198 lt!101953 0)) (drop!198 lt!101953 (+ 0 1)))))

(declare-fun lt!101959 () Unit!4472)

(assert (=> b!250061 (= lt!101959 lt!101954)))

(declare-fun lt!101957 () Unit!4472)

(assert (=> b!250061 (= lt!101957 (forallContained!266 (list!1460 lt!101844) lambda!8295 (apply!694 lt!101844 0)))))

(assert (=> b!250061 (= lt!101951 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 (+ 0 1)))))

(assert (=> b!250061 (= lt!101956 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))

(declare-fun res!115958 () Bool)

(assert (=> b!250061 (= res!115958 ((_ is Some!760) lt!101956))))

(assert (=> b!250061 (=> (not res!115958) (not e!155357))))

(assert (=> b!250061 (= c!47495 e!155357)))

(declare-fun b!250062 () Bool)

(declare-fun e!155358 () Bool)

(assert (=> b!250062 (= e!155358 (not (= (_1!2275 (v!14539 lt!101956)) call!13202)))))

(declare-fun b!250063 () Bool)

(assert (=> b!250063 (= e!155354 call!13203)))

(declare-fun b!250064 () Bool)

(assert (=> b!250064 (= c!47494 e!155358)))

(declare-fun res!115957 () Bool)

(assert (=> b!250064 (=> (not res!115957) (not e!155358))))

(assert (=> b!250064 (= res!115957 ((_ is Some!760) lt!101956))))

(assert (=> b!250064 (= e!155353 e!155356)))

(declare-fun bm!13198 () Bool)

(assert (=> bm!13198 (= call!13201 call!13202)))

(declare-fun b!250065 () Bool)

(assert (=> b!250065 (= e!155355 (<= 0 (size!2911 lt!101844)))))

(declare-fun b!250066 () Bool)

(declare-fun call!13200 () BalanceConc!2448)

(assert (=> b!250066 (= e!155356 (++!943 call!13200 lt!101951))))

(declare-fun bm!13199 () Bool)

(declare-fun c!47492 () Bool)

(assert (=> bm!13199 (= c!47492 c!47495)))

(assert (=> bm!13199 (= call!13200 (++!943 e!155354 (ite c!47495 lt!101951 call!13204)))))

(declare-fun b!250067 () Bool)

(assert (=> b!250067 (= e!155353 call!13200)))

(declare-fun b!250068 () Bool)

(assert (=> b!250068 (= e!155359 (BalanceConc!2449 Empty!1220))))

(assert (= (and d!70193 res!115959) b!250065))

(assert (= (and d!70193 c!47493) b!250068))

(assert (= (and d!70193 (not c!47493)) b!250061))

(assert (= (and b!250061 res!115958) b!250058))

(assert (= (and b!250061 c!47495) b!250067))

(assert (= (and b!250061 (not c!47495)) b!250064))

(assert (= (and b!250064 res!115957) b!250062))

(assert (= (and b!250064 c!47494) b!250066))

(assert (= (and b!250064 (not c!47494)) b!250059))

(assert (= (or b!250066 b!250059) bm!13198))

(assert (= (or b!250066 b!250059) bm!13197))

(assert (= (or b!250067 b!250062 bm!13198) bm!13195))

(assert (= (or b!250067 bm!13197) bm!13196))

(assert (= (or b!250067 b!250066) bm!13199))

(assert (= (and bm!13199 c!47492) b!250063))

(assert (= (and bm!13199 (not c!47492)) b!250060))

(declare-fun m!306389 () Bool)

(assert (=> b!250060 m!306389))

(declare-fun m!306391 () Bool)

(assert (=> b!250066 m!306391))

(declare-fun m!306393 () Bool)

(assert (=> b!250061 m!306393))

(declare-fun m!306395 () Bool)

(assert (=> b!250061 m!306395))

(declare-fun m!306397 () Bool)

(assert (=> b!250061 m!306397))

(declare-fun m!306399 () Bool)

(assert (=> b!250061 m!306399))

(declare-fun m!306401 () Bool)

(assert (=> b!250061 m!306401))

(declare-fun m!306403 () Bool)

(assert (=> b!250061 m!306403))

(declare-fun m!306405 () Bool)

(assert (=> b!250061 m!306405))

(assert (=> b!250061 m!306395))

(declare-fun m!306407 () Bool)

(assert (=> b!250061 m!306407))

(assert (=> b!250061 m!306399))

(declare-fun m!306409 () Bool)

(assert (=> b!250061 m!306409))

(declare-fun m!306411 () Bool)

(assert (=> b!250061 m!306411))

(declare-fun m!306413 () Bool)

(assert (=> b!250061 m!306413))

(declare-fun m!306415 () Bool)

(assert (=> b!250061 m!306415))

(assert (=> b!250061 m!306409))

(assert (=> b!250061 m!306393))

(assert (=> b!250061 m!306409))

(assert (=> b!250061 m!306415))

(declare-fun m!306417 () Bool)

(assert (=> b!250061 m!306417))

(assert (=> b!250061 m!306397))

(declare-fun m!306419 () Bool)

(assert (=> b!250061 m!306419))

(declare-fun m!306421 () Bool)

(assert (=> b!250061 m!306421))

(declare-fun m!306423 () Bool)

(assert (=> bm!13196 m!306423))

(declare-fun m!306425 () Bool)

(assert (=> b!250059 m!306425))

(declare-fun m!306427 () Bool)

(assert (=> b!250059 m!306427))

(declare-fun m!306429 () Bool)

(assert (=> b!250059 m!306429))

(assert (=> b!250059 m!306427))

(declare-fun m!306431 () Bool)

(assert (=> b!250059 m!306431))

(assert (=> b!250059 m!306425))

(assert (=> b!250059 m!306431))

(declare-fun m!306433 () Bool)

(assert (=> b!250059 m!306433))

(assert (=> b!250059 m!306431))

(declare-fun m!306435 () Bool)

(assert (=> b!250059 m!306435))

(declare-fun m!306437 () Bool)

(assert (=> bm!13199 m!306437))

(assert (=> d!70193 m!306399))

(declare-fun m!306439 () Bool)

(assert (=> d!70193 m!306439))

(assert (=> d!70193 m!306399))

(assert (=> d!70193 m!306439))

(declare-fun m!306441 () Bool)

(assert (=> d!70193 m!306441))

(assert (=> d!70193 m!306439))

(declare-fun m!306443 () Bool)

(assert (=> d!70193 m!306443))

(declare-fun m!306445 () Bool)

(assert (=> d!70193 m!306445))

(assert (=> d!70193 m!306163))

(assert (=> bm!13195 m!306409))

(assert (=> b!250058 m!306409))

(assert (=> b!250065 m!306163))

(assert (=> b!249892 d!70193))

(declare-fun bs!26806 () Bool)

(declare-fun b!250190 () Bool)

(assert (= bs!26806 (and b!250190 b!249873)))

(declare-fun lambda!8304 () Int)

(assert (=> bs!26806 (not (= lambda!8304 lambda!8285))))

(declare-fun bs!26807 () Bool)

(assert (= bs!26807 (and b!250190 b!249874)))

(assert (=> bs!26807 (= lambda!8304 lambda!8286)))

(declare-fun bs!26808 () Bool)

(assert (= bs!26808 (and b!250190 d!70193)))

(assert (=> bs!26808 (not (= lambda!8304 lambda!8294))))

(declare-fun bs!26809 () Bool)

(assert (= bs!26809 (and b!250190 b!250061)))

(assert (=> bs!26809 (= lambda!8304 lambda!8295)))

(declare-fun b!250194 () Bool)

(declare-fun e!155438 () Bool)

(assert (=> b!250194 (= e!155438 true)))

(declare-fun b!250193 () Bool)

(declare-fun e!155437 () Bool)

(assert (=> b!250193 (= e!155437 e!155438)))

(declare-fun b!250192 () Bool)

(declare-fun e!155436 () Bool)

(assert (=> b!250192 (= e!155436 e!155437)))

(assert (=> b!250190 e!155436))

(assert (= b!250193 b!250194))

(assert (= b!250192 b!250193))

(assert (= (and b!250190 ((_ is Cons!3679) rules!1920)) b!250192))

(assert (=> b!250194 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8304))))

(assert (=> b!250194 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8304))))

(assert (=> b!250190 true))

(declare-fun bm!13227 () Bool)

(declare-fun call!13236 () BalanceConc!2448)

(assert (=> bm!13227 (= call!13236 (charsOf!354 (h!9077 tokens!465)))))

(declare-fun b!250182 () Bool)

(declare-fun e!155433 () List!3688)

(declare-fun call!13234 () List!3688)

(declare-fun lt!102043 () List!3688)

(assert (=> b!250182 (= e!155433 (++!942 call!13234 lt!102043))))

(declare-fun b!250183 () Bool)

(declare-fun e!155432 () BalanceConc!2448)

(assert (=> b!250183 (= e!155432 (charsOf!354 separatorToken!170))))

(declare-fun bm!13228 () Bool)

(declare-fun call!13232 () BalanceConc!2448)

(assert (=> bm!13228 (= call!13232 call!13236)))

(declare-fun b!250184 () Bool)

(declare-fun c!47534 () Bool)

(declare-fun lt!102042 () Option!760)

(assert (=> b!250184 (= c!47534 (and ((_ is Some!759) lt!102042) (not (= (_1!2273 (v!14538 lt!102042)) (h!9077 tokens!465)))))))

(declare-fun e!155434 () List!3688)

(assert (=> b!250184 (= e!155434 e!155433)))

(declare-fun bm!13229 () Bool)

(declare-fun c!47535 () Bool)

(declare-fun c!47531 () Bool)

(assert (=> bm!13229 (= c!47535 c!47531)))

(declare-fun call!13233 () List!3688)

(declare-fun e!155435 () List!3688)

(assert (=> bm!13229 (= call!13234 (++!942 e!155435 (ite c!47531 lt!102043 call!13233)))))

(declare-fun b!250185 () Bool)

(assert (=> b!250185 (= e!155434 call!13234)))

(declare-fun bm!13231 () Bool)

(declare-fun call!13235 () List!3688)

(assert (=> bm!13231 (= call!13235 (list!1461 (ite c!47531 call!13236 e!155432)))))

(declare-fun b!250186 () Bool)

(assert (=> b!250186 (= e!155435 (list!1461 call!13232))))

(declare-fun b!250187 () Bool)

(declare-fun e!155431 () List!3688)

(assert (=> b!250187 (= e!155431 Nil!3678)))

(declare-fun b!250188 () Bool)

(assert (=> b!250188 (= e!155435 call!13235)))

(declare-fun b!250189 () Bool)

(assert (=> b!250189 (= e!155432 call!13232)))

(assert (=> b!250190 (= e!155431 e!155434)))

(declare-fun lt!102045 () Unit!4472)

(assert (=> b!250190 (= lt!102045 (forallContained!266 tokens!465 lambda!8304 (h!9077 tokens!465)))))

(assert (=> b!250190 (= lt!102043 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (t!35394 tokens!465) separatorToken!170))))

(assert (=> b!250190 (= lt!102042 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043)))))

(assert (=> b!250190 (= c!47531 (and ((_ is Some!759) lt!102042) (= (_1!2273 (v!14538 lt!102042)) (h!9077 tokens!465))))))

(declare-fun b!250191 () Bool)

(assert (=> b!250191 (= e!155433 Nil!3678)))

(assert (=> b!250191 (= (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))) (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!102044 () Unit!4472)

(declare-fun Unit!4480 () Unit!4472)

(assert (=> b!250191 (= lt!102044 Unit!4480)))

(declare-fun lt!102046 () Unit!4472)

(assert (=> b!250191 (= lt!102046 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 call!13233 lt!102043))))

(assert (=> b!250191 false))

(declare-fun lt!102041 () Unit!4472)

(declare-fun Unit!4481 () Unit!4472)

(assert (=> b!250191 (= lt!102041 Unit!4481)))

(declare-fun bm!13230 () Bool)

(assert (=> bm!13230 (= call!13233 call!13235)))

(declare-fun c!47533 () Bool)

(assert (=> bm!13230 (= c!47533 c!47534)))

(declare-fun d!70197 () Bool)

(declare-fun c!47532 () Bool)

(assert (=> d!70197 (= c!47532 ((_ is Cons!3680) tokens!465))))

(assert (=> d!70197 (= (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!155431)))

(assert (= (and d!70197 c!47532) b!250190))

(assert (= (and d!70197 (not c!47532)) b!250187))

(assert (= (and b!250190 c!47531) b!250185))

(assert (= (and b!250190 (not c!47531)) b!250184))

(assert (= (and b!250184 c!47534) b!250182))

(assert (= (and b!250184 (not c!47534)) b!250191))

(assert (= (or b!250182 b!250191) bm!13228))

(assert (= (or b!250182 b!250191) bm!13230))

(assert (= (and bm!13230 c!47533) b!250183))

(assert (= (and bm!13230 (not c!47533)) b!250189))

(assert (= (or b!250185 bm!13228) bm!13227))

(assert (= (or b!250185 bm!13230) bm!13231))

(assert (= (or b!250185 b!250182) bm!13229))

(assert (= (and bm!13229 c!47535) b!250188))

(assert (= (and bm!13229 (not c!47535)) b!250186))

(assert (=> bm!13227 m!306139))

(declare-fun m!306569 () Bool)

(assert (=> b!250186 m!306569))

(declare-fun m!306571 () Bool)

(assert (=> b!250182 m!306571))

(declare-fun m!306573 () Bool)

(assert (=> bm!13229 m!306573))

(assert (=> b!250183 m!306127))

(declare-fun m!306575 () Bool)

(assert (=> bm!13231 m!306575))

(assert (=> b!250191 m!306099))

(assert (=> b!250191 m!306099))

(declare-fun m!306577 () Bool)

(assert (=> b!250191 m!306577))

(assert (=> b!250191 m!306099))

(declare-fun m!306579 () Bool)

(assert (=> b!250191 m!306579))

(declare-fun m!306581 () Bool)

(assert (=> b!250191 m!306581))

(assert (=> b!250190 m!306141))

(declare-fun m!306583 () Bool)

(assert (=> b!250190 m!306583))

(declare-fun m!306585 () Bool)

(assert (=> b!250190 m!306585))

(assert (=> b!250190 m!306583))

(declare-fun m!306587 () Bool)

(assert (=> b!250190 m!306587))

(assert (=> b!250190 m!306139))

(assert (=> b!250190 m!306141))

(assert (=> b!250190 m!306139))

(assert (=> b!250190 m!306125))

(assert (=> b!249892 d!70197))

(declare-fun bs!26811 () Bool)

(declare-fun d!70223 () Bool)

(assert (= bs!26811 (and d!70223 b!250061)))

(declare-fun lambda!8309 () Int)

(assert (=> bs!26811 (= lambda!8309 lambda!8295)))

(declare-fun bs!26812 () Bool)

(assert (= bs!26812 (and d!70223 b!249874)))

(assert (=> bs!26812 (= lambda!8309 lambda!8286)))

(declare-fun bs!26813 () Bool)

(assert (= bs!26813 (and d!70223 d!70193)))

(assert (=> bs!26813 (not (= lambda!8309 lambda!8294))))

(declare-fun bs!26814 () Bool)

(assert (= bs!26814 (and d!70223 b!250190)))

(assert (=> bs!26814 (= lambda!8309 lambda!8304)))

(declare-fun bs!26815 () Bool)

(assert (= bs!26815 (and d!70223 b!249873)))

(assert (=> bs!26815 (not (= lambda!8309 lambda!8285))))

(declare-fun b!250211 () Bool)

(declare-fun e!155453 () Bool)

(assert (=> b!250211 (= e!155453 true)))

(declare-fun b!250210 () Bool)

(declare-fun e!155452 () Bool)

(assert (=> b!250210 (= e!155452 e!155453)))

(declare-fun b!250209 () Bool)

(declare-fun e!155451 () Bool)

(assert (=> b!250209 (= e!155451 e!155452)))

(assert (=> d!70223 e!155451))

(assert (= b!250210 b!250211))

(assert (= b!250209 b!250210))

(assert (= (and d!70223 ((_ is Cons!3679) rules!1920)) b!250209))

(assert (=> b!250211 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8309))))

(assert (=> b!250211 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8309))))

(assert (=> d!70223 true))

(declare-fun e!155450 () Bool)

(assert (=> d!70223 e!155450))

(declare-fun res!116002 () Bool)

(assert (=> d!70223 (=> (not res!116002) (not e!155450))))

(declare-fun lt!102059 () Bool)

(assert (=> d!70223 (= res!116002 (= lt!102059 (forall!865 (list!1460 lt!101844) lambda!8309)))))

(assert (=> d!70223 (= lt!102059 (forall!864 lt!101844 lambda!8309))))

(assert (=> d!70223 (not (isEmpty!2279 rules!1920))))

(assert (=> d!70223 (= (rulesProduceEachTokenIndividually!377 thiss!17480 rules!1920 lt!101844) lt!102059)))

(declare-fun b!250208 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!206 (LexerInterface!585 List!3689 List!3690) Bool)

(assert (=> b!250208 (= e!155450 (= lt!102059 (rulesProduceEachTokenIndividuallyList!206 thiss!17480 rules!1920 (list!1460 lt!101844))))))

(assert (= (and d!70223 res!116002) b!250208))

(assert (=> d!70223 m!306399))

(assert (=> d!70223 m!306399))

(declare-fun m!306625 () Bool)

(assert (=> d!70223 m!306625))

(declare-fun m!306627 () Bool)

(assert (=> d!70223 m!306627))

(assert (=> d!70223 m!306031))

(assert (=> b!250208 m!306399))

(assert (=> b!250208 m!306399))

(declare-fun m!306629 () Bool)

(assert (=> b!250208 m!306629))

(assert (=> b!249871 d!70223))

(declare-fun d!70231 () Bool)

(declare-fun fromListB!280 (List!3690) BalanceConc!2450)

(assert (=> d!70231 (= (seqFromList!776 tokens!465) (fromListB!280 tokens!465))))

(declare-fun bs!26816 () Bool)

(assert (= bs!26816 d!70231))

(declare-fun m!306631 () Bool)

(assert (=> bs!26816 m!306631))

(assert (=> b!249871 d!70231))

(declare-fun d!70233 () Bool)

(assert (=> d!70233 (= (get!1209 lt!101836) (v!14538 lt!101836))))

(assert (=> b!249869 d!70233))

(declare-fun d!70235 () Bool)

(declare-fun isEmpty!2282 (Option!760) Bool)

(assert (=> d!70235 (= (isDefined!611 lt!101836) (not (isEmpty!2282 lt!101836)))))

(declare-fun bs!26817 () Bool)

(assert (= bs!26817 d!70235))

(declare-fun m!306633 () Bool)

(assert (=> bs!26817 m!306633))

(assert (=> b!249869 d!70235))

(declare-fun b!250236 () Bool)

(declare-fun res!116026 () Bool)

(declare-fun e!155466 () Bool)

(assert (=> b!250236 (=> (not res!116026) (not e!155466))))

(declare-fun lt!102084 () Option!760)

(declare-fun apply!698 (TokenValueInjection!1214 BalanceConc!2448) TokenValue!721)

(assert (=> b!250236 (= res!116026 (= (value!24237 (_1!2273 (get!1209 lt!102084))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102084)))))))))

(declare-fun b!250237 () Bool)

(declare-fun contains!678 (List!3689 Rule!1198) Bool)

(assert (=> b!250237 (= e!155466 (contains!678 rules!1920 (rule!1276 (_1!2273 (get!1209 lt!102084)))))))

(declare-fun b!250238 () Bool)

(declare-fun e!155468 () Option!760)

(declare-fun lt!102082 () Option!760)

(declare-fun lt!102083 () Option!760)

(assert (=> b!250238 (= e!155468 (ite (and ((_ is None!759) lt!102082) ((_ is None!759) lt!102083)) None!759 (ite ((_ is None!759) lt!102083) lt!102082 (ite ((_ is None!759) lt!102082) lt!102083 (ite (>= (size!2910 (_1!2273 (v!14538 lt!102082))) (size!2910 (_1!2273 (v!14538 lt!102083)))) lt!102082 lt!102083)))))))

(declare-fun call!13240 () Option!760)

(assert (=> b!250238 (= lt!102082 call!13240)))

(assert (=> b!250238 (= lt!102083 (maxPrefix!315 thiss!17480 (t!35393 rules!1920) lt!101834))))

(declare-fun b!250239 () Bool)

(declare-fun res!116024 () Bool)

(assert (=> b!250239 (=> (not res!116024) (not e!155466))))

(assert (=> b!250239 (= res!116024 (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))))))

(declare-fun b!250240 () Bool)

(declare-fun e!155467 () Bool)

(assert (=> b!250240 (= e!155467 e!155466)))

(declare-fun res!116023 () Bool)

(assert (=> b!250240 (=> (not res!116023) (not e!155466))))

(assert (=> b!250240 (= res!116023 (isDefined!611 lt!102084))))

(declare-fun b!250241 () Bool)

(declare-fun res!116021 () Bool)

(assert (=> b!250241 (=> (not res!116021) (not e!155466))))

(assert (=> b!250241 (= res!116021 (< (size!2913 (_2!2273 (get!1209 lt!102084))) (size!2913 lt!101834)))))

(declare-fun b!250242 () Bool)

(assert (=> b!250242 (= e!155468 call!13240)))

(declare-fun bm!13235 () Bool)

(declare-fun maxPrefixOneRule!129 (LexerInterface!585 Rule!1198 List!3688) Option!760)

(assert (=> bm!13235 (= call!13240 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) lt!101834))))

(declare-fun d!70237 () Bool)

(assert (=> d!70237 e!155467))

(declare-fun res!116022 () Bool)

(assert (=> d!70237 (=> res!116022 e!155467)))

(assert (=> d!70237 (= res!116022 (isEmpty!2282 lt!102084))))

(assert (=> d!70237 (= lt!102084 e!155468)))

(declare-fun c!47539 () Bool)

(assert (=> d!70237 (= c!47539 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!102086 () Unit!4472)

(declare-fun lt!102085 () Unit!4472)

(assert (=> d!70237 (= lt!102086 lt!102085)))

(assert (=> d!70237 (isPrefix!383 lt!101834 lt!101834)))

(declare-fun lemmaIsPrefixRefl!195 (List!3688 List!3688) Unit!4472)

(assert (=> d!70237 (= lt!102085 (lemmaIsPrefixRefl!195 lt!101834 lt!101834))))

(declare-fun rulesValidInductive!186 (LexerInterface!585 List!3689) Bool)

(assert (=> d!70237 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!70237 (= (maxPrefix!315 thiss!17480 rules!1920 lt!101834) lt!102084)))

(declare-fun b!250243 () Bool)

(declare-fun res!116020 () Bool)

(assert (=> b!250243 (=> (not res!116020) (not e!155466))))

(assert (=> b!250243 (= res!116020 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084)))) (_2!2273 (get!1209 lt!102084))) lt!101834))))

(declare-fun b!250244 () Bool)

(declare-fun res!116025 () Bool)

(assert (=> b!250244 (=> (not res!116025) (not e!155466))))

(assert (=> b!250244 (= res!116025 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084)))) (originalCharacters!742 (_1!2273 (get!1209 lt!102084)))))))

(assert (= (and d!70237 c!47539) b!250242))

(assert (= (and d!70237 (not c!47539)) b!250238))

(assert (= (or b!250242 b!250238) bm!13235))

(assert (= (and d!70237 (not res!116022)) b!250240))

(assert (= (and b!250240 res!116023) b!250244))

(assert (= (and b!250244 res!116025) b!250241))

(assert (= (and b!250241 res!116021) b!250243))

(assert (= (and b!250243 res!116020) b!250236))

(assert (= (and b!250236 res!116026) b!250239))

(assert (= (and b!250239 res!116024) b!250237))

(declare-fun m!306657 () Bool)

(assert (=> b!250236 m!306657))

(declare-fun m!306659 () Bool)

(assert (=> b!250236 m!306659))

(assert (=> b!250236 m!306659))

(declare-fun m!306661 () Bool)

(assert (=> b!250236 m!306661))

(declare-fun m!306663 () Bool)

(assert (=> b!250240 m!306663))

(declare-fun m!306665 () Bool)

(assert (=> bm!13235 m!306665))

(assert (=> b!250239 m!306657))

(declare-fun m!306667 () Bool)

(assert (=> b!250239 m!306667))

(assert (=> b!250239 m!306667))

(declare-fun m!306669 () Bool)

(assert (=> b!250239 m!306669))

(assert (=> b!250239 m!306669))

(declare-fun m!306671 () Bool)

(assert (=> b!250239 m!306671))

(assert (=> b!250244 m!306657))

(assert (=> b!250244 m!306667))

(assert (=> b!250244 m!306667))

(assert (=> b!250244 m!306669))

(assert (=> b!250243 m!306657))

(assert (=> b!250243 m!306667))

(assert (=> b!250243 m!306667))

(assert (=> b!250243 m!306669))

(assert (=> b!250243 m!306669))

(declare-fun m!306673 () Bool)

(assert (=> b!250243 m!306673))

(assert (=> b!250241 m!306657))

(declare-fun m!306675 () Bool)

(assert (=> b!250241 m!306675))

(assert (=> b!250241 m!306183))

(declare-fun m!306677 () Bool)

(assert (=> d!70237 m!306677))

(declare-fun m!306679 () Bool)

(assert (=> d!70237 m!306679))

(declare-fun m!306681 () Bool)

(assert (=> d!70237 m!306681))

(declare-fun m!306683 () Bool)

(assert (=> d!70237 m!306683))

(declare-fun m!306685 () Bool)

(assert (=> b!250238 m!306685))

(assert (=> b!250237 m!306657))

(declare-fun m!306687 () Bool)

(assert (=> b!250237 m!306687))

(assert (=> b!249869 d!70237))

(declare-fun d!70249 () Bool)

(declare-fun res!116031 () Bool)

(declare-fun e!155473 () Bool)

(assert (=> d!70249 (=> res!116031 e!155473)))

(assert (=> d!70249 (= res!116031 ((_ is Nil!3680) tokens!465))))

(assert (=> d!70249 (= (forall!865 tokens!465 lambda!8285) e!155473)))

(declare-fun b!250249 () Bool)

(declare-fun e!155474 () Bool)

(assert (=> b!250249 (= e!155473 e!155474)))

(declare-fun res!116032 () Bool)

(assert (=> b!250249 (=> (not res!116032) (not e!155474))))

(declare-fun dynLambda!1813 (Int Token!1142) Bool)

(assert (=> b!250249 (= res!116032 (dynLambda!1813 lambda!8285 (h!9077 tokens!465)))))

(declare-fun b!250250 () Bool)

(assert (=> b!250250 (= e!155474 (forall!865 (t!35394 tokens!465) lambda!8285))))

(assert (= (and d!70249 (not res!116031)) b!250249))

(assert (= (and b!250249 res!116032) b!250250))

(declare-fun b_lambda!7341 () Bool)

(assert (=> (not b_lambda!7341) (not b!250249)))

(declare-fun m!306689 () Bool)

(assert (=> b!250249 m!306689))

(declare-fun m!306691 () Bool)

(assert (=> b!250250 m!306691))

(assert (=> b!249873 d!70249))

(declare-fun b!250251 () Bool)

(declare-fun e!155475 () List!3688)

(assert (=> b!250251 (= e!155475 (_2!2273 lt!101826))))

(declare-fun b!250252 () Bool)

(assert (=> b!250252 (= e!155475 (Cons!3678 (h!9075 lt!101834) (++!942 (t!35392 lt!101834) (_2!2273 lt!101826))))))

(declare-fun b!250254 () Bool)

(declare-fun lt!102087 () List!3688)

(declare-fun e!155476 () Bool)

(assert (=> b!250254 (= e!155476 (or (not (= (_2!2273 lt!101826) Nil!3678)) (= lt!102087 lt!101834)))))

(declare-fun d!70251 () Bool)

(assert (=> d!70251 e!155476))

(declare-fun res!116034 () Bool)

(assert (=> d!70251 (=> (not res!116034) (not e!155476))))

(assert (=> d!70251 (= res!116034 (= (content!513 lt!102087) ((_ map or) (content!513 lt!101834) (content!513 (_2!2273 lt!101826)))))))

(assert (=> d!70251 (= lt!102087 e!155475)))

(declare-fun c!47540 () Bool)

(assert (=> d!70251 (= c!47540 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70251 (= (++!942 lt!101834 (_2!2273 lt!101826)) lt!102087)))

(declare-fun b!250253 () Bool)

(declare-fun res!116033 () Bool)

(assert (=> b!250253 (=> (not res!116033) (not e!155476))))

(assert (=> b!250253 (= res!116033 (= (size!2913 lt!102087) (+ (size!2913 lt!101834) (size!2913 (_2!2273 lt!101826)))))))

(assert (= (and d!70251 c!47540) b!250251))

(assert (= (and d!70251 (not c!47540)) b!250252))

(assert (= (and d!70251 res!116034) b!250253))

(assert (= (and b!250253 res!116033) b!250254))

(declare-fun m!306693 () Bool)

(assert (=> b!250252 m!306693))

(declare-fun m!306695 () Bool)

(assert (=> d!70251 m!306695))

(assert (=> d!70251 m!306177))

(declare-fun m!306697 () Bool)

(assert (=> d!70251 m!306697))

(declare-fun m!306699 () Bool)

(assert (=> b!250253 m!306699))

(assert (=> b!250253 m!306183))

(declare-fun m!306701 () Bool)

(assert (=> b!250253 m!306701))

(assert (=> b!249872 d!70251))

(declare-fun d!70253 () Bool)

(declare-fun c!47546 () Bool)

(assert (=> d!70253 (= c!47546 ((_ is IntegerValue!2163) (value!24237 separatorToken!170)))))

(declare-fun e!155485 () Bool)

(assert (=> d!70253 (= (inv!21 (value!24237 separatorToken!170)) e!155485)))

(declare-fun b!250265 () Bool)

(declare-fun e!155484 () Bool)

(declare-fun inv!15 (TokenValue!721) Bool)

(assert (=> b!250265 (= e!155484 (inv!15 (value!24237 separatorToken!170)))))

(declare-fun b!250266 () Bool)

(declare-fun inv!16 (TokenValue!721) Bool)

(assert (=> b!250266 (= e!155485 (inv!16 (value!24237 separatorToken!170)))))

(declare-fun b!250267 () Bool)

(declare-fun e!155483 () Bool)

(declare-fun inv!17 (TokenValue!721) Bool)

(assert (=> b!250267 (= e!155483 (inv!17 (value!24237 separatorToken!170)))))

(declare-fun b!250268 () Bool)

(declare-fun res!116037 () Bool)

(assert (=> b!250268 (=> res!116037 e!155484)))

(assert (=> b!250268 (= res!116037 (not ((_ is IntegerValue!2165) (value!24237 separatorToken!170))))))

(assert (=> b!250268 (= e!155483 e!155484)))

(declare-fun b!250269 () Bool)

(assert (=> b!250269 (= e!155485 e!155483)))

(declare-fun c!47545 () Bool)

(assert (=> b!250269 (= c!47545 ((_ is IntegerValue!2164) (value!24237 separatorToken!170)))))

(assert (= (and d!70253 c!47546) b!250266))

(assert (= (and d!70253 (not c!47546)) b!250269))

(assert (= (and b!250269 c!47545) b!250267))

(assert (= (and b!250269 (not c!47545)) b!250268))

(assert (= (and b!250268 (not res!116037)) b!250265))

(declare-fun m!306703 () Bool)

(assert (=> b!250265 m!306703))

(declare-fun m!306705 () Bool)

(assert (=> b!250266 m!306705))

(declare-fun m!306707 () Bool)

(assert (=> b!250267 m!306707))

(assert (=> b!249876 d!70253))

(declare-fun d!70255 () Bool)

(assert (=> d!70255 (= (list!1461 (charsOf!354 separatorToken!170)) (list!1463 (c!47452 (charsOf!354 separatorToken!170))))))

(declare-fun bs!26827 () Bool)

(assert (= bs!26827 d!70255))

(declare-fun m!306709 () Bool)

(assert (=> bs!26827 m!306709))

(assert (=> b!249875 d!70255))

(declare-fun d!70257 () Bool)

(assert (=> d!70257 (= (++!942 (++!942 lt!101834 lt!101837) lt!101842) (++!942 lt!101834 (++!942 lt!101837 lt!101842)))))

(declare-fun lt!102090 () Unit!4472)

(declare-fun choose!2352 (List!3688 List!3688 List!3688) Unit!4472)

(assert (=> d!70257 (= lt!102090 (choose!2352 lt!101834 lt!101837 lt!101842))))

(assert (=> d!70257 (= (lemmaConcatAssociativity!404 lt!101834 lt!101837 lt!101842) lt!102090)))

(declare-fun bs!26828 () Bool)

(assert (= bs!26828 d!70257))

(assert (=> bs!26828 m!306135))

(declare-fun m!306711 () Bool)

(assert (=> bs!26828 m!306711))

(assert (=> bs!26828 m!306131))

(assert (=> bs!26828 m!306135))

(assert (=> bs!26828 m!306131))

(assert (=> bs!26828 m!306133))

(declare-fun m!306713 () Bool)

(assert (=> bs!26828 m!306713))

(assert (=> b!249875 d!70257))

(declare-fun b!250270 () Bool)

(declare-fun e!155486 () List!3688)

(assert (=> b!250270 (= e!155486 lt!101842)))

(declare-fun b!250271 () Bool)

(assert (=> b!250271 (= e!155486 (Cons!3678 (h!9075 lt!101837) (++!942 (t!35392 lt!101837) lt!101842)))))

(declare-fun lt!102091 () List!3688)

(declare-fun e!155487 () Bool)

(declare-fun b!250273 () Bool)

(assert (=> b!250273 (= e!155487 (or (not (= lt!101842 Nil!3678)) (= lt!102091 lt!101837)))))

(declare-fun d!70259 () Bool)

(assert (=> d!70259 e!155487))

(declare-fun res!116039 () Bool)

(assert (=> d!70259 (=> (not res!116039) (not e!155487))))

(assert (=> d!70259 (= res!116039 (= (content!513 lt!102091) ((_ map or) (content!513 lt!101837) (content!513 lt!101842))))))

(assert (=> d!70259 (= lt!102091 e!155486)))

(declare-fun c!47547 () Bool)

(assert (=> d!70259 (= c!47547 ((_ is Nil!3678) lt!101837))))

(assert (=> d!70259 (= (++!942 lt!101837 lt!101842) lt!102091)))

(declare-fun b!250272 () Bool)

(declare-fun res!116038 () Bool)

(assert (=> b!250272 (=> (not res!116038) (not e!155487))))

(assert (=> b!250272 (= res!116038 (= (size!2913 lt!102091) (+ (size!2913 lt!101837) (size!2913 lt!101842))))))

(assert (= (and d!70259 c!47547) b!250270))

(assert (= (and d!70259 (not c!47547)) b!250271))

(assert (= (and d!70259 res!116039) b!250272))

(assert (= (and b!250272 res!116038) b!250273))

(declare-fun m!306715 () Bool)

(assert (=> b!250271 m!306715))

(declare-fun m!306717 () Bool)

(assert (=> d!70259 m!306717))

(declare-fun m!306719 () Bool)

(assert (=> d!70259 m!306719))

(assert (=> d!70259 m!306179))

(declare-fun m!306721 () Bool)

(assert (=> b!250272 m!306721))

(declare-fun m!306723 () Bool)

(assert (=> b!250272 m!306723))

(assert (=> b!250272 m!306185))

(assert (=> b!249875 d!70259))

(declare-fun bs!26829 () Bool)

(declare-fun b!250282 () Bool)

(assert (= bs!26829 (and b!250282 b!250061)))

(declare-fun lambda!8315 () Int)

(assert (=> bs!26829 (= lambda!8315 lambda!8295)))

(declare-fun bs!26830 () Bool)

(assert (= bs!26830 (and b!250282 b!249874)))

(assert (=> bs!26830 (= lambda!8315 lambda!8286)))

(declare-fun bs!26831 () Bool)

(assert (= bs!26831 (and b!250282 d!70223)))

(assert (=> bs!26831 (= lambda!8315 lambda!8309)))

(declare-fun bs!26832 () Bool)

(assert (= bs!26832 (and b!250282 d!70193)))

(assert (=> bs!26832 (not (= lambda!8315 lambda!8294))))

(declare-fun bs!26833 () Bool)

(assert (= bs!26833 (and b!250282 b!250190)))

(assert (=> bs!26833 (= lambda!8315 lambda!8304)))

(declare-fun bs!26834 () Bool)

(assert (= bs!26834 (and b!250282 b!249873)))

(assert (=> bs!26834 (not (= lambda!8315 lambda!8285))))

(declare-fun b!250286 () Bool)

(declare-fun e!155495 () Bool)

(assert (=> b!250286 (= e!155495 true)))

(declare-fun b!250285 () Bool)

(declare-fun e!155494 () Bool)

(assert (=> b!250285 (= e!155494 e!155495)))

(declare-fun b!250284 () Bool)

(declare-fun e!155493 () Bool)

(assert (=> b!250284 (= e!155493 e!155494)))

(assert (=> b!250282 e!155493))

(assert (= b!250285 b!250286))

(assert (= b!250284 b!250285))

(assert (= (and b!250282 ((_ is Cons!3679) rules!1920)) b!250284))

(assert (=> b!250286 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8315))))

(assert (=> b!250286 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8315))))

(assert (=> b!250282 true))

(declare-fun bm!13236 () Bool)

(declare-fun call!13245 () BalanceConc!2448)

(assert (=> bm!13236 (= call!13245 (charsOf!354 (h!9077 (t!35394 tokens!465))))))

(declare-fun b!250274 () Bool)

(declare-fun e!155490 () List!3688)

(declare-fun call!13243 () List!3688)

(declare-fun lt!102094 () List!3688)

(assert (=> b!250274 (= e!155490 (++!942 call!13243 lt!102094))))

(declare-fun b!250275 () Bool)

(declare-fun e!155489 () BalanceConc!2448)

(assert (=> b!250275 (= e!155489 (charsOf!354 separatorToken!170))))

(declare-fun bm!13237 () Bool)

(declare-fun call!13241 () BalanceConc!2448)

(assert (=> bm!13237 (= call!13241 call!13245)))

(declare-fun b!250276 () Bool)

(declare-fun c!47551 () Bool)

(declare-fun lt!102093 () Option!760)

(assert (=> b!250276 (= c!47551 (and ((_ is Some!759) lt!102093) (not (= (_1!2273 (v!14538 lt!102093)) (h!9077 (t!35394 tokens!465))))))))

(declare-fun e!155491 () List!3688)

(assert (=> b!250276 (= e!155491 e!155490)))

(declare-fun bm!13238 () Bool)

(declare-fun c!47552 () Bool)

(declare-fun c!47548 () Bool)

(assert (=> bm!13238 (= c!47552 c!47548)))

(declare-fun call!13242 () List!3688)

(declare-fun e!155492 () List!3688)

(assert (=> bm!13238 (= call!13243 (++!942 e!155492 (ite c!47548 lt!102094 call!13242)))))

(declare-fun b!250277 () Bool)

(assert (=> b!250277 (= e!155491 call!13243)))

(declare-fun bm!13240 () Bool)

(declare-fun call!13244 () List!3688)

(assert (=> bm!13240 (= call!13244 (list!1461 (ite c!47548 call!13245 e!155489)))))

(declare-fun b!250278 () Bool)

(assert (=> b!250278 (= e!155492 (list!1461 call!13241))))

(declare-fun b!250279 () Bool)

(declare-fun e!155488 () List!3688)

(assert (=> b!250279 (= e!155488 Nil!3678)))

(declare-fun b!250280 () Bool)

(assert (=> b!250280 (= e!155492 call!13244)))

(declare-fun b!250281 () Bool)

(assert (=> b!250281 (= e!155489 call!13241)))

(assert (=> b!250282 (= e!155488 e!155491)))

(declare-fun lt!102096 () Unit!4472)

(assert (=> b!250282 (= lt!102096 (forallContained!266 (t!35394 tokens!465) lambda!8315 (h!9077 (t!35394 tokens!465))))))

(assert (=> b!250282 (= lt!102094 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (t!35394 (t!35394 tokens!465)) separatorToken!170))))

(assert (=> b!250282 (= lt!102093 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094)))))

(assert (=> b!250282 (= c!47548 (and ((_ is Some!759) lt!102093) (= (_1!2273 (v!14538 lt!102093)) (h!9077 (t!35394 tokens!465)))))))

(declare-fun b!250283 () Bool)

(assert (=> b!250283 (= e!155490 Nil!3678)))

(assert (=> b!250283 (= (print!316 thiss!17480 (singletonSeq!251 (h!9077 (t!35394 tokens!465)))) (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 (t!35394 tokens!465))) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!102095 () Unit!4472)

(declare-fun Unit!4482 () Unit!4472)

(assert (=> b!250283 (= lt!102095 Unit!4482)))

(declare-fun lt!102097 () Unit!4472)

(assert (=> b!250283 (= lt!102097 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 call!13242 lt!102094))))

(assert (=> b!250283 false))

(declare-fun lt!102092 () Unit!4472)

(declare-fun Unit!4483 () Unit!4472)

(assert (=> b!250283 (= lt!102092 Unit!4483)))

(declare-fun bm!13239 () Bool)

(assert (=> bm!13239 (= call!13242 call!13244)))

(declare-fun c!47550 () Bool)

(assert (=> bm!13239 (= c!47550 c!47551)))

(declare-fun d!70261 () Bool)

(declare-fun c!47549 () Bool)

(assert (=> d!70261 (= c!47549 ((_ is Cons!3680) (t!35394 tokens!465)))))

(assert (=> d!70261 (= (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (t!35394 tokens!465) separatorToken!170) e!155488)))

(assert (= (and d!70261 c!47549) b!250282))

(assert (= (and d!70261 (not c!47549)) b!250279))

(assert (= (and b!250282 c!47548) b!250277))

(assert (= (and b!250282 (not c!47548)) b!250276))

(assert (= (and b!250276 c!47551) b!250274))

(assert (= (and b!250276 (not c!47551)) b!250283))

(assert (= (or b!250274 b!250283) bm!13237))

(assert (= (or b!250274 b!250283) bm!13239))

(assert (= (and bm!13239 c!47550) b!250275))

(assert (= (and bm!13239 (not c!47550)) b!250281))

(assert (= (or b!250277 bm!13237) bm!13236))

(assert (= (or b!250277 bm!13239) bm!13240))

(assert (= (or b!250277 b!250274) bm!13238))

(assert (= (and bm!13238 c!47552) b!250280))

(assert (= (and bm!13238 (not c!47552)) b!250278))

(declare-fun m!306725 () Bool)

(assert (=> bm!13236 m!306725))

(declare-fun m!306727 () Bool)

(assert (=> b!250278 m!306727))

(declare-fun m!306729 () Bool)

(assert (=> b!250274 m!306729))

(declare-fun m!306731 () Bool)

(assert (=> bm!13238 m!306731))

(assert (=> b!250275 m!306127))

(declare-fun m!306733 () Bool)

(assert (=> bm!13240 m!306733))

(declare-fun m!306735 () Bool)

(assert (=> b!250283 m!306735))

(assert (=> b!250283 m!306735))

(declare-fun m!306737 () Bool)

(assert (=> b!250283 m!306737))

(assert (=> b!250283 m!306735))

(declare-fun m!306739 () Bool)

(assert (=> b!250283 m!306739))

(declare-fun m!306741 () Bool)

(assert (=> b!250283 m!306741))

(declare-fun m!306743 () Bool)

(assert (=> b!250282 m!306743))

(declare-fun m!306745 () Bool)

(assert (=> b!250282 m!306745))

(declare-fun m!306747 () Bool)

(assert (=> b!250282 m!306747))

(assert (=> b!250282 m!306745))

(declare-fun m!306749 () Bool)

(assert (=> b!250282 m!306749))

(assert (=> b!250282 m!306725))

(assert (=> b!250282 m!306743))

(assert (=> b!250282 m!306725))

(declare-fun m!306751 () Bool)

(assert (=> b!250282 m!306751))

(assert (=> b!249875 d!70261))

(declare-fun bs!26835 () Bool)

(declare-fun d!70263 () Bool)

(assert (= bs!26835 (and d!70263 b!250061)))

(declare-fun lambda!8316 () Int)

(assert (=> bs!26835 (not (= lambda!8316 lambda!8295))))

(declare-fun bs!26836 () Bool)

(assert (= bs!26836 (and d!70263 b!250282)))

(assert (=> bs!26836 (not (= lambda!8316 lambda!8315))))

(declare-fun bs!26837 () Bool)

(assert (= bs!26837 (and d!70263 b!249874)))

(assert (=> bs!26837 (not (= lambda!8316 lambda!8286))))

(declare-fun bs!26838 () Bool)

(assert (= bs!26838 (and d!70263 d!70223)))

(assert (=> bs!26838 (not (= lambda!8316 lambda!8309))))

(declare-fun bs!26839 () Bool)

(assert (= bs!26839 (and d!70263 d!70193)))

(assert (=> bs!26839 (= lambda!8316 lambda!8294)))

(declare-fun bs!26840 () Bool)

(assert (= bs!26840 (and d!70263 b!250190)))

(assert (=> bs!26840 (not (= lambda!8316 lambda!8304))))

(declare-fun bs!26841 () Bool)

(assert (= bs!26841 (and d!70263 b!249873)))

(assert (=> bs!26841 (= lambda!8316 lambda!8285)))

(declare-fun bs!26842 () Bool)

(declare-fun b!250290 () Bool)

(assert (= bs!26842 (and b!250290 b!250061)))

(declare-fun lambda!8317 () Int)

(assert (=> bs!26842 (= lambda!8317 lambda!8295)))

(declare-fun bs!26843 () Bool)

(assert (= bs!26843 (and b!250290 d!70263)))

(assert (=> bs!26843 (not (= lambda!8317 lambda!8316))))

(declare-fun bs!26844 () Bool)

(assert (= bs!26844 (and b!250290 b!250282)))

(assert (=> bs!26844 (= lambda!8317 lambda!8315)))

(declare-fun bs!26845 () Bool)

(assert (= bs!26845 (and b!250290 b!249874)))

(assert (=> bs!26845 (= lambda!8317 lambda!8286)))

(declare-fun bs!26846 () Bool)

(assert (= bs!26846 (and b!250290 d!70223)))

(assert (=> bs!26846 (= lambda!8317 lambda!8309)))

(declare-fun bs!26847 () Bool)

(assert (= bs!26847 (and b!250290 d!70193)))

(assert (=> bs!26847 (not (= lambda!8317 lambda!8294))))

(declare-fun bs!26848 () Bool)

(assert (= bs!26848 (and b!250290 b!250190)))

(assert (=> bs!26848 (= lambda!8317 lambda!8304)))

(declare-fun bs!26849 () Bool)

(assert (= bs!26849 (and b!250290 b!249873)))

(assert (=> bs!26849 (not (= lambda!8317 lambda!8285))))

(declare-fun b!250300 () Bool)

(declare-fun e!155505 () Bool)

(assert (=> b!250300 (= e!155505 true)))

(declare-fun b!250299 () Bool)

(declare-fun e!155504 () Bool)

(assert (=> b!250299 (= e!155504 e!155505)))

(declare-fun b!250298 () Bool)

(declare-fun e!155503 () Bool)

(assert (=> b!250298 (= e!155503 e!155504)))

(assert (=> b!250290 e!155503))

(assert (= b!250299 b!250300))

(assert (= b!250298 b!250299))

(assert (= (and b!250290 ((_ is Cons!3679) rules!1920)) b!250298))

(assert (=> b!250300 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8317))))

(assert (=> b!250300 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8317))))

(assert (=> b!250290 true))

(declare-fun b!250287 () Bool)

(declare-fun e!155500 () Bool)

(declare-fun lt!102105 () Option!761)

(assert (=> b!250287 (= e!155500 (= (_1!2275 (v!14539 lt!102105)) (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))))

(declare-fun b!250288 () Bool)

(declare-fun e!155499 () BalanceConc!2448)

(assert (=> b!250288 (= e!155499 (BalanceConc!2449 Empty!1220))))

(declare-fun call!13247 () Token!1142)

(assert (=> b!250288 (= (print!316 thiss!17480 (singletonSeq!251 call!13247)) (printTailRec!279 thiss!17480 (singletonSeq!251 call!13247) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!102101 () Unit!4472)

(declare-fun Unit!4484 () Unit!4472)

(assert (=> b!250288 (= lt!102101 Unit!4484)))

(declare-fun call!13250 () BalanceConc!2448)

(declare-fun lt!102109 () Unit!4472)

(declare-fun lt!102100 () BalanceConc!2448)

(assert (=> b!250288 (= lt!102109 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 (list!1461 call!13250) (list!1461 lt!102100)))))

(assert (=> b!250288 false))

(declare-fun lt!102107 () Unit!4472)

(declare-fun Unit!4485 () Unit!4472)

(assert (=> b!250288 (= lt!102107 Unit!4485)))

(declare-fun bm!13241 () Bool)

(declare-fun call!13248 () Token!1142)

(assert (=> bm!13241 (= call!13248 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))

(declare-fun bm!13242 () Bool)

(declare-fun c!47556 () Bool)

(declare-fun c!47555 () Bool)

(declare-fun call!13249 () BalanceConc!2448)

(assert (=> bm!13242 (= call!13249 (charsOf!354 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247))))))

(declare-fun b!250289 () Bool)

(declare-fun e!155497 () BalanceConc!2448)

(assert (=> b!250289 (= e!155497 (charsOf!354 call!13247))))

(declare-fun bm!13243 () Bool)

(assert (=> bm!13243 (= call!13250 call!13249)))

(declare-fun lt!102104 () BalanceConc!2448)

(assert (=> d!70263 (= (list!1461 lt!102104) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0) separatorToken!170))))

(declare-fun e!155502 () BalanceConc!2448)

(assert (=> d!70263 (= lt!102104 e!155502)))

(declare-fun c!47554 () Bool)

(assert (=> d!70263 (= c!47554 (>= 0 (size!2911 (seqFromList!776 (t!35394 tokens!465)))))))

(declare-fun lt!102110 () Unit!4472)

(assert (=> d!70263 (= lt!102110 (lemmaContentSubsetPreservesForall!89 (list!1460 (seqFromList!776 (t!35394 tokens!465))) (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0) lambda!8316))))

(declare-fun e!155498 () Bool)

(assert (=> d!70263 e!155498))

(declare-fun res!116042 () Bool)

(assert (=> d!70263 (=> (not res!116042) (not e!155498))))

(assert (=> d!70263 (= res!116042 (>= 0 0))))

(assert (=> d!70263 (= (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0) lt!102104)))

(declare-fun e!155496 () BalanceConc!2448)

(assert (=> b!250290 (= e!155502 e!155496)))

(declare-fun lt!102098 () List!3690)

(assert (=> b!250290 (= lt!102098 (list!1460 (seqFromList!776 (t!35394 tokens!465))))))

(declare-fun lt!102099 () Unit!4472)

(assert (=> b!250290 (= lt!102099 (lemmaDropApply!185 lt!102098 0))))

(assert (=> b!250290 (= (head!864 (drop!198 lt!102098 0)) (apply!695 lt!102098 0))))

(declare-fun lt!102111 () Unit!4472)

(assert (=> b!250290 (= lt!102111 lt!102099)))

(declare-fun lt!102102 () List!3690)

(assert (=> b!250290 (= lt!102102 (list!1460 (seqFromList!776 (t!35394 tokens!465))))))

(declare-fun lt!102103 () Unit!4472)

(assert (=> b!250290 (= lt!102103 (lemmaDropTail!177 lt!102102 0))))

(assert (=> b!250290 (= (tail!455 (drop!198 lt!102102 0)) (drop!198 lt!102102 (+ 0 1)))))

(declare-fun lt!102108 () Unit!4472)

(assert (=> b!250290 (= lt!102108 lt!102103)))

(declare-fun lt!102106 () Unit!4472)

(assert (=> b!250290 (= lt!102106 (forallContained!266 (list!1460 (seqFromList!776 (t!35394 tokens!465))) lambda!8317 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))))

(assert (=> b!250290 (= lt!102100 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!250290 (= lt!102105 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))

(declare-fun res!116041 () Bool)

(assert (=> b!250290 (= res!116041 ((_ is Some!760) lt!102105))))

(assert (=> b!250290 (=> (not res!116041) (not e!155500))))

(assert (=> b!250290 (= c!47556 e!155500)))

(declare-fun b!250291 () Bool)

(declare-fun e!155501 () Bool)

(assert (=> b!250291 (= e!155501 (not (= (_1!2275 (v!14539 lt!102105)) call!13248)))))

(declare-fun b!250292 () Bool)

(assert (=> b!250292 (= e!155497 call!13249)))

(declare-fun b!250293 () Bool)

(assert (=> b!250293 (= c!47555 e!155501)))

(declare-fun res!116040 () Bool)

(assert (=> b!250293 (=> (not res!116040) (not e!155501))))

(assert (=> b!250293 (= res!116040 ((_ is Some!760) lt!102105))))

(assert (=> b!250293 (= e!155496 e!155499)))

(declare-fun bm!13244 () Bool)

(assert (=> bm!13244 (= call!13247 call!13248)))

(declare-fun b!250294 () Bool)

(assert (=> b!250294 (= e!155498 (<= 0 (size!2911 (seqFromList!776 (t!35394 tokens!465)))))))

(declare-fun b!250295 () Bool)

(declare-fun call!13246 () BalanceConc!2448)

(assert (=> b!250295 (= e!155499 (++!943 call!13246 lt!102100))))

(declare-fun bm!13245 () Bool)

(declare-fun c!47553 () Bool)

(assert (=> bm!13245 (= c!47553 c!47556)))

(assert (=> bm!13245 (= call!13246 (++!943 e!155497 (ite c!47556 lt!102100 call!13250)))))

(declare-fun b!250296 () Bool)

(assert (=> b!250296 (= e!155496 call!13246)))

(declare-fun b!250297 () Bool)

(assert (=> b!250297 (= e!155502 (BalanceConc!2449 Empty!1220))))

(assert (= (and d!70263 res!116042) b!250294))

(assert (= (and d!70263 c!47554) b!250297))

(assert (= (and d!70263 (not c!47554)) b!250290))

(assert (= (and b!250290 res!116041) b!250287))

(assert (= (and b!250290 c!47556) b!250296))

(assert (= (and b!250290 (not c!47556)) b!250293))

(assert (= (and b!250293 res!116040) b!250291))

(assert (= (and b!250293 c!47555) b!250295))

(assert (= (and b!250293 (not c!47555)) b!250288))

(assert (= (or b!250295 b!250288) bm!13244))

(assert (= (or b!250295 b!250288) bm!13243))

(assert (= (or b!250296 b!250291 bm!13244) bm!13241))

(assert (= (or b!250296 bm!13243) bm!13242))

(assert (= (or b!250296 b!250295) bm!13245))

(assert (= (and bm!13245 c!47553) b!250292))

(assert (= (and bm!13245 (not c!47553)) b!250289))

(declare-fun m!306753 () Bool)

(assert (=> b!250289 m!306753))

(declare-fun m!306755 () Bool)

(assert (=> b!250295 m!306755))

(declare-fun m!306757 () Bool)

(assert (=> b!250290 m!306757))

(declare-fun m!306759 () Bool)

(assert (=> b!250290 m!306759))

(declare-fun m!306761 () Bool)

(assert (=> b!250290 m!306761))

(assert (=> b!250290 m!306121))

(declare-fun m!306763 () Bool)

(assert (=> b!250290 m!306763))

(declare-fun m!306765 () Bool)

(assert (=> b!250290 m!306765))

(declare-fun m!306767 () Bool)

(assert (=> b!250290 m!306767))

(assert (=> b!250290 m!306121))

(declare-fun m!306769 () Bool)

(assert (=> b!250290 m!306769))

(assert (=> b!250290 m!306759))

(declare-fun m!306771 () Bool)

(assert (=> b!250290 m!306771))

(assert (=> b!250290 m!306763))

(declare-fun m!306773 () Bool)

(assert (=> b!250290 m!306773))

(declare-fun m!306775 () Bool)

(assert (=> b!250290 m!306775))

(declare-fun m!306777 () Bool)

(assert (=> b!250290 m!306777))

(declare-fun m!306779 () Bool)

(assert (=> b!250290 m!306779))

(assert (=> b!250290 m!306773))

(assert (=> b!250290 m!306757))

(assert (=> b!250290 m!306121))

(assert (=> b!250290 m!306773))

(assert (=> b!250290 m!306779))

(declare-fun m!306781 () Bool)

(assert (=> b!250290 m!306781))

(assert (=> b!250290 m!306761))

(declare-fun m!306783 () Bool)

(assert (=> b!250290 m!306783))

(declare-fun m!306785 () Bool)

(assert (=> b!250290 m!306785))

(declare-fun m!306787 () Bool)

(assert (=> bm!13242 m!306787))

(declare-fun m!306789 () Bool)

(assert (=> b!250288 m!306789))

(declare-fun m!306791 () Bool)

(assert (=> b!250288 m!306791))

(declare-fun m!306793 () Bool)

(assert (=> b!250288 m!306793))

(assert (=> b!250288 m!306791))

(declare-fun m!306795 () Bool)

(assert (=> b!250288 m!306795))

(assert (=> b!250288 m!306789))

(assert (=> b!250288 m!306795))

(declare-fun m!306797 () Bool)

(assert (=> b!250288 m!306797))

(assert (=> b!250288 m!306795))

(declare-fun m!306799 () Bool)

(assert (=> b!250288 m!306799))

(declare-fun m!306801 () Bool)

(assert (=> bm!13245 m!306801))

(assert (=> d!70263 m!306121))

(assert (=> d!70263 m!306763))

(assert (=> d!70263 m!306121))

(declare-fun m!306803 () Bool)

(assert (=> d!70263 m!306803))

(assert (=> d!70263 m!306763))

(assert (=> d!70263 m!306803))

(declare-fun m!306805 () Bool)

(assert (=> d!70263 m!306805))

(assert (=> d!70263 m!306803))

(declare-fun m!306807 () Bool)

(assert (=> d!70263 m!306807))

(declare-fun m!306809 () Bool)

(assert (=> d!70263 m!306809))

(assert (=> d!70263 m!306121))

(declare-fun m!306811 () Bool)

(assert (=> d!70263 m!306811))

(assert (=> bm!13241 m!306121))

(assert (=> bm!13241 m!306773))

(assert (=> b!250287 m!306121))

(assert (=> b!250287 m!306773))

(assert (=> b!250294 m!306121))

(assert (=> b!250294 m!306811))

(assert (=> b!249875 d!70263))

(declare-fun d!70265 () Bool)

(declare-fun lt!102114 () BalanceConc!2448)

(assert (=> d!70265 (= (list!1461 lt!102114) (originalCharacters!742 separatorToken!170))))

(assert (=> d!70265 (= lt!102114 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))))

(assert (=> d!70265 (= (charsOf!354 separatorToken!170) lt!102114)))

(declare-fun b_lambda!7343 () Bool)

(assert (=> (not b_lambda!7343) (not d!70265)))

(declare-fun t!35435 () Bool)

(declare-fun tb!12787 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170)))) t!35435) tb!12787))

(declare-fun b!250301 () Bool)

(declare-fun e!155506 () Bool)

(declare-fun tp!97121 () Bool)

(assert (=> b!250301 (= e!155506 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))) tp!97121))))

(declare-fun result!16134 () Bool)

(assert (=> tb!12787 (= result!16134 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))) e!155506))))

(assert (= tb!12787 b!250301))

(declare-fun m!306813 () Bool)

(assert (=> b!250301 m!306813))

(declare-fun m!306815 () Bool)

(assert (=> tb!12787 m!306815))

(assert (=> d!70265 t!35435))

(declare-fun b_and!18875 () Bool)

(assert (= b_and!18857 (and (=> t!35435 result!16134) b_and!18875)))

(declare-fun tb!12789 () Bool)

(declare-fun t!35437 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170)))) t!35437) tb!12789))

(declare-fun result!16136 () Bool)

(assert (= result!16136 result!16134))

(assert (=> d!70265 t!35437))

(declare-fun b_and!18877 () Bool)

(assert (= b_and!18859 (and (=> t!35437 result!16136) b_and!18877)))

(declare-fun t!35439 () Bool)

(declare-fun tb!12791 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170)))) t!35439) tb!12791))

(declare-fun result!16138 () Bool)

(assert (= result!16138 result!16134))

(assert (=> d!70265 t!35439))

(declare-fun b_and!18879 () Bool)

(assert (= b_and!18861 (and (=> t!35439 result!16138) b_and!18879)))

(declare-fun m!306817 () Bool)

(assert (=> d!70265 m!306817))

(declare-fun m!306819 () Bool)

(assert (=> d!70265 m!306819))

(assert (=> b!249875 d!70265))

(declare-fun b!250302 () Bool)

(declare-fun e!155507 () List!3688)

(assert (=> b!250302 (= e!155507 lt!101842)))

(declare-fun b!250303 () Bool)

(assert (=> b!250303 (= e!155507 (Cons!3678 (h!9075 (++!942 lt!101834 lt!101837)) (++!942 (t!35392 (++!942 lt!101834 lt!101837)) lt!101842)))))

(declare-fun lt!102115 () List!3688)

(declare-fun e!155508 () Bool)

(declare-fun b!250305 () Bool)

(assert (=> b!250305 (= e!155508 (or (not (= lt!101842 Nil!3678)) (= lt!102115 (++!942 lt!101834 lt!101837))))))

(declare-fun d!70267 () Bool)

(assert (=> d!70267 e!155508))

(declare-fun res!116044 () Bool)

(assert (=> d!70267 (=> (not res!116044) (not e!155508))))

(assert (=> d!70267 (= res!116044 (= (content!513 lt!102115) ((_ map or) (content!513 (++!942 lt!101834 lt!101837)) (content!513 lt!101842))))))

(assert (=> d!70267 (= lt!102115 e!155507)))

(declare-fun c!47557 () Bool)

(assert (=> d!70267 (= c!47557 ((_ is Nil!3678) (++!942 lt!101834 lt!101837)))))

(assert (=> d!70267 (= (++!942 (++!942 lt!101834 lt!101837) lt!101842) lt!102115)))

(declare-fun b!250304 () Bool)

(declare-fun res!116043 () Bool)

(assert (=> b!250304 (=> (not res!116043) (not e!155508))))

(assert (=> b!250304 (= res!116043 (= (size!2913 lt!102115) (+ (size!2913 (++!942 lt!101834 lt!101837)) (size!2913 lt!101842))))))

(assert (= (and d!70267 c!47557) b!250302))

(assert (= (and d!70267 (not c!47557)) b!250303))

(assert (= (and d!70267 res!116044) b!250304))

(assert (= (and b!250304 res!116043) b!250305))

(declare-fun m!306821 () Bool)

(assert (=> b!250303 m!306821))

(declare-fun m!306823 () Bool)

(assert (=> d!70267 m!306823))

(assert (=> d!70267 m!306131))

(declare-fun m!306825 () Bool)

(assert (=> d!70267 m!306825))

(assert (=> d!70267 m!306179))

(declare-fun m!306827 () Bool)

(assert (=> b!250304 m!306827))

(assert (=> b!250304 m!306131))

(declare-fun m!306829 () Bool)

(assert (=> b!250304 m!306829))

(assert (=> b!250304 m!306185))

(assert (=> b!249875 d!70267))

(declare-fun d!70269 () Bool)

(assert (=> d!70269 (= (list!1461 (charsOf!354 (h!9077 tokens!465))) (list!1463 (c!47452 (charsOf!354 (h!9077 tokens!465)))))))

(declare-fun bs!26850 () Bool)

(assert (= bs!26850 d!70269))

(declare-fun m!306831 () Bool)

(assert (=> bs!26850 m!306831))

(assert (=> b!249875 d!70269))

(declare-fun b!250306 () Bool)

(declare-fun e!155509 () List!3688)

(assert (=> b!250306 (= e!155509 lt!101837)))

(declare-fun b!250307 () Bool)

(assert (=> b!250307 (= e!155509 (Cons!3678 (h!9075 lt!101834) (++!942 (t!35392 lt!101834) lt!101837)))))

(declare-fun b!250309 () Bool)

(declare-fun e!155510 () Bool)

(declare-fun lt!102116 () List!3688)

(assert (=> b!250309 (= e!155510 (or (not (= lt!101837 Nil!3678)) (= lt!102116 lt!101834)))))

(declare-fun d!70271 () Bool)

(assert (=> d!70271 e!155510))

(declare-fun res!116046 () Bool)

(assert (=> d!70271 (=> (not res!116046) (not e!155510))))

(assert (=> d!70271 (= res!116046 (= (content!513 lt!102116) ((_ map or) (content!513 lt!101834) (content!513 lt!101837))))))

(assert (=> d!70271 (= lt!102116 e!155509)))

(declare-fun c!47558 () Bool)

(assert (=> d!70271 (= c!47558 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70271 (= (++!942 lt!101834 lt!101837) lt!102116)))

(declare-fun b!250308 () Bool)

(declare-fun res!116045 () Bool)

(assert (=> b!250308 (=> (not res!116045) (not e!155510))))

(assert (=> b!250308 (= res!116045 (= (size!2913 lt!102116) (+ (size!2913 lt!101834) (size!2913 lt!101837))))))

(assert (= (and d!70271 c!47558) b!250306))

(assert (= (and d!70271 (not c!47558)) b!250307))

(assert (= (and d!70271 res!116046) b!250308))

(assert (= (and b!250308 res!116045) b!250309))

(declare-fun m!306833 () Bool)

(assert (=> b!250307 m!306833))

(declare-fun m!306835 () Bool)

(assert (=> d!70271 m!306835))

(assert (=> d!70271 m!306177))

(assert (=> d!70271 m!306719))

(declare-fun m!306837 () Bool)

(assert (=> b!250308 m!306837))

(assert (=> b!250308 m!306183))

(assert (=> b!250308 m!306723))

(assert (=> b!249875 d!70271))

(declare-fun d!70273 () Bool)

(assert (=> d!70273 (= (seqFromList!776 (t!35394 tokens!465)) (fromListB!280 (t!35394 tokens!465)))))

(declare-fun bs!26851 () Bool)

(assert (= bs!26851 d!70273))

(declare-fun m!306839 () Bool)

(assert (=> bs!26851 m!306839))

(assert (=> b!249875 d!70273))

(declare-fun d!70275 () Bool)

(assert (=> d!70275 (= (list!1461 lt!101841) (list!1463 (c!47452 lt!101841)))))

(declare-fun bs!26852 () Bool)

(assert (= bs!26852 d!70275))

(declare-fun m!306841 () Bool)

(assert (=> bs!26852 m!306841))

(assert (=> b!249875 d!70275))

(declare-fun b!250310 () Bool)

(declare-fun e!155511 () List!3688)

(assert (=> b!250310 (= e!155511 lt!101832)))

(declare-fun b!250311 () Bool)

(assert (=> b!250311 (= e!155511 (Cons!3678 (h!9075 lt!101834) (++!942 (t!35392 lt!101834) lt!101832)))))

(declare-fun lt!102117 () List!3688)

(declare-fun e!155512 () Bool)

(declare-fun b!250313 () Bool)

(assert (=> b!250313 (= e!155512 (or (not (= lt!101832 Nil!3678)) (= lt!102117 lt!101834)))))

(declare-fun d!70277 () Bool)

(assert (=> d!70277 e!155512))

(declare-fun res!116048 () Bool)

(assert (=> d!70277 (=> (not res!116048) (not e!155512))))

(assert (=> d!70277 (= res!116048 (= (content!513 lt!102117) ((_ map or) (content!513 lt!101834) (content!513 lt!101832))))))

(assert (=> d!70277 (= lt!102117 e!155511)))

(declare-fun c!47559 () Bool)

(assert (=> d!70277 (= c!47559 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70277 (= (++!942 lt!101834 lt!101832) lt!102117)))

(declare-fun b!250312 () Bool)

(declare-fun res!116047 () Bool)

(assert (=> b!250312 (=> (not res!116047) (not e!155512))))

(assert (=> b!250312 (= res!116047 (= (size!2913 lt!102117) (+ (size!2913 lt!101834) (size!2913 lt!101832))))))

(assert (= (and d!70277 c!47559) b!250310))

(assert (= (and d!70277 (not c!47559)) b!250311))

(assert (= (and d!70277 res!116048) b!250312))

(assert (= (and b!250312 res!116047) b!250313))

(declare-fun m!306843 () Bool)

(assert (=> b!250311 m!306843))

(declare-fun m!306845 () Bool)

(assert (=> d!70277 m!306845))

(assert (=> d!70277 m!306177))

(declare-fun m!306847 () Bool)

(assert (=> d!70277 m!306847))

(declare-fun m!306849 () Bool)

(assert (=> b!250312 m!306849))

(assert (=> b!250312 m!306183))

(declare-fun m!306851 () Bool)

(assert (=> b!250312 m!306851))

(assert (=> b!249875 d!70277))

(declare-fun d!70279 () Bool)

(declare-fun lt!102118 () BalanceConc!2448)

(assert (=> d!70279 (= (list!1461 lt!102118) (originalCharacters!742 (h!9077 tokens!465)))))

(assert (=> d!70279 (= lt!102118 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))))

(assert (=> d!70279 (= (charsOf!354 (h!9077 tokens!465)) lt!102118)))

(declare-fun b_lambda!7345 () Bool)

(assert (=> (not b_lambda!7345) (not d!70279)))

(assert (=> d!70279 t!35396))

(declare-fun b_and!18881 () Bool)

(assert (= b_and!18875 (and (=> t!35396 result!16112) b_and!18881)))

(assert (=> d!70279 t!35398))

(declare-fun b_and!18883 () Bool)

(assert (= b_and!18877 (and (=> t!35398 result!16116) b_and!18883)))

(assert (=> d!70279 t!35400))

(declare-fun b_and!18885 () Bool)

(assert (= b_and!18879 (and (=> t!35400 result!16118) b_and!18885)))

(declare-fun m!306853 () Bool)

(assert (=> d!70279 m!306853))

(assert (=> d!70279 m!306193))

(assert (=> b!249875 d!70279))

(declare-fun d!70281 () Bool)

(declare-fun isEmpty!2285 (Option!761) Bool)

(assert (=> d!70281 (= (isDefined!612 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))) (not (isEmpty!2285 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))

(declare-fun bs!26853 () Bool)

(assert (= bs!26853 d!70281))

(assert (=> bs!26853 m!306157))

(declare-fun m!306855 () Bool)

(assert (=> bs!26853 m!306855))

(assert (=> b!249874 d!70281))

(declare-fun b!250394 () Bool)

(declare-fun e!155562 () Option!761)

(declare-fun call!13256 () Option!761)

(assert (=> b!250394 (= e!155562 call!13256)))

(declare-fun e!155560 () Bool)

(declare-fun lt!102143 () Option!761)

(declare-fun b!250395 () Bool)

(declare-fun get!1211 (Option!761) tuple2!4118)

(assert (=> b!250395 (= e!155560 (= (list!1461 (_2!2275 (get!1211 lt!102143))) (_2!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun b!250396 () Bool)

(declare-fun lt!102141 () Option!761)

(declare-fun lt!102139 () Option!761)

(assert (=> b!250396 (= e!155562 (ite (and ((_ is None!760) lt!102141) ((_ is None!760) lt!102139)) None!760 (ite ((_ is None!760) lt!102139) lt!102141 (ite ((_ is None!760) lt!102141) lt!102139 (ite (>= (size!2910 (_1!2275 (v!14539 lt!102141))) (size!2910 (_1!2275 (v!14539 lt!102139)))) lt!102141 lt!102139)))))))

(assert (=> b!250396 (= lt!102141 call!13256)))

(assert (=> b!250396 (= lt!102139 (maxPrefixZipperSequence!278 thiss!17480 (t!35393 rules!1920) (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(declare-fun bm!13251 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!100 (LexerInterface!585 Rule!1198 BalanceConc!2448) Option!761)

(assert (=> bm!13251 (= call!13256 (maxPrefixOneRuleZipperSequence!100 thiss!17480 (h!9076 rules!1920) (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(declare-fun b!250397 () Bool)

(declare-fun e!155558 () Bool)

(declare-fun e!155559 () Bool)

(assert (=> b!250397 (= e!155558 e!155559)))

(declare-fun res!116101 () Bool)

(assert (=> b!250397 (=> (not res!116101) (not e!155559))))

(declare-fun maxPrefixZipper!99 (LexerInterface!585 List!3689 List!3688) Option!760)

(assert (=> b!250397 (= res!116101 (= (_1!2275 (get!1211 lt!102143)) (_1!2273 (get!1209 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun b!250398 () Bool)

(assert (=> b!250398 (= e!155559 (= (list!1461 (_2!2275 (get!1211 lt!102143))) (_2!2273 (get!1209 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun d!70283 () Bool)

(declare-fun e!155563 () Bool)

(assert (=> d!70283 e!155563))

(declare-fun res!116103 () Bool)

(assert (=> d!70283 (=> (not res!116103) (not e!155563))))

(assert (=> d!70283 (= res!116103 (= (isDefined!612 lt!102143) (isDefined!611 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))))

(assert (=> d!70283 (= lt!102143 e!155562)))

(declare-fun c!47574 () Bool)

(assert (=> d!70283 (= c!47574 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!102140 () Unit!4472)

(declare-fun lt!102142 () Unit!4472)

(assert (=> d!70283 (= lt!102140 lt!102142)))

(declare-fun lt!102145 () List!3688)

(declare-fun lt!102144 () List!3688)

(assert (=> d!70283 (isPrefix!383 lt!102145 lt!102144)))

(assert (=> d!70283 (= lt!102142 (lemmaIsPrefixRefl!195 lt!102145 lt!102144))))

(assert (=> d!70283 (= lt!102144 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (=> d!70283 (= lt!102145 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (=> d!70283 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!70283 (= (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))) lt!102143)))

(declare-fun b!250393 () Bool)

(declare-fun e!155561 () Bool)

(assert (=> b!250393 (= e!155563 e!155561)))

(declare-fun res!116105 () Bool)

(assert (=> b!250393 (=> res!116105 e!155561)))

(assert (=> b!250393 (= res!116105 (not (isDefined!612 lt!102143)))))

(declare-fun b!250399 () Bool)

(assert (=> b!250399 (= e!155561 e!155560)))

(declare-fun res!116104 () Bool)

(assert (=> b!250399 (=> (not res!116104) (not e!155560))))

(assert (=> b!250399 (= res!116104 (= (_1!2275 (get!1211 lt!102143)) (_1!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun b!250400 () Bool)

(declare-fun res!116100 () Bool)

(assert (=> b!250400 (=> (not res!116100) (not e!155563))))

(assert (=> b!250400 (= res!116100 e!155558)))

(declare-fun res!116102 () Bool)

(assert (=> b!250400 (=> res!116102 e!155558)))

(assert (=> b!250400 (= res!116102 (not (isDefined!612 lt!102143)))))

(assert (= (and d!70283 c!47574) b!250394))

(assert (= (and d!70283 (not c!47574)) b!250396))

(assert (= (or b!250394 b!250396) bm!13251))

(assert (= (and d!70283 res!116103) b!250400))

(assert (= (and b!250400 (not res!116102)) b!250397))

(assert (= (and b!250397 res!116101) b!250398))

(assert (= (and b!250400 res!116100) b!250393))

(assert (= (and b!250393 (not res!116105)) b!250399))

(assert (= (and b!250399 res!116104) b!250395))

(declare-fun m!306899 () Bool)

(assert (=> b!250399 m!306899))

(assert (=> b!250399 m!306155))

(declare-fun m!306901 () Bool)

(assert (=> b!250399 m!306901))

(assert (=> b!250399 m!306901))

(declare-fun m!306903 () Bool)

(assert (=> b!250399 m!306903))

(assert (=> b!250399 m!306903))

(declare-fun m!306905 () Bool)

(assert (=> b!250399 m!306905))

(assert (=> bm!13251 m!306155))

(declare-fun m!306907 () Bool)

(assert (=> bm!13251 m!306907))

(declare-fun m!306909 () Bool)

(assert (=> b!250400 m!306909))

(assert (=> b!250395 m!306903))

(assert (=> b!250395 m!306905))

(assert (=> b!250395 m!306899))

(assert (=> b!250395 m!306901))

(assert (=> b!250395 m!306903))

(declare-fun m!306911 () Bool)

(assert (=> b!250395 m!306911))

(assert (=> b!250395 m!306155))

(assert (=> b!250395 m!306901))

(assert (=> b!250393 m!306909))

(assert (=> b!250396 m!306155))

(declare-fun m!306913 () Bool)

(assert (=> b!250396 m!306913))

(assert (=> b!250398 m!306901))

(declare-fun m!306915 () Bool)

(assert (=> b!250398 m!306915))

(assert (=> b!250398 m!306899))

(assert (=> b!250398 m!306915))

(declare-fun m!306917 () Bool)

(assert (=> b!250398 m!306917))

(assert (=> b!250398 m!306911))

(assert (=> b!250398 m!306155))

(assert (=> b!250398 m!306901))

(assert (=> d!70283 m!306901))

(assert (=> d!70283 m!306915))

(assert (=> d!70283 m!306155))

(assert (=> d!70283 m!306901))

(declare-fun m!306919 () Bool)

(assert (=> d!70283 m!306919))

(declare-fun m!306921 () Bool)

(assert (=> d!70283 m!306921))

(assert (=> d!70283 m!306909))

(assert (=> d!70283 m!306915))

(declare-fun m!306923 () Bool)

(assert (=> d!70283 m!306923))

(assert (=> d!70283 m!306683))

(assert (=> b!250397 m!306899))

(assert (=> b!250397 m!306155))

(assert (=> b!250397 m!306901))

(assert (=> b!250397 m!306901))

(assert (=> b!250397 m!306915))

(assert (=> b!250397 m!306915))

(assert (=> b!250397 m!306917))

(assert (=> b!249874 d!70283))

(declare-fun d!70293 () Bool)

(declare-fun fromListB!281 (List!3688) BalanceConc!2448)

(assert (=> d!70293 (= (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))) (fromListB!281 (originalCharacters!742 (h!9077 tokens!465))))))

(declare-fun bs!26855 () Bool)

(assert (= bs!26855 d!70293))

(declare-fun m!306925 () Bool)

(assert (=> bs!26855 m!306925))

(assert (=> b!249874 d!70293))

(declare-fun d!70295 () Bool)

(assert (=> d!70295 (dynLambda!1813 lambda!8286 (h!9077 tokens!465))))

(declare-fun lt!102148 () Unit!4472)

(declare-fun choose!2355 (List!3690 Int Token!1142) Unit!4472)

(assert (=> d!70295 (= lt!102148 (choose!2355 tokens!465 lambda!8286 (h!9077 tokens!465)))))

(declare-fun e!155566 () Bool)

(assert (=> d!70295 e!155566))

(declare-fun res!116108 () Bool)

(assert (=> d!70295 (=> (not res!116108) (not e!155566))))

(assert (=> d!70295 (= res!116108 (forall!865 tokens!465 lambda!8286))))

(assert (=> d!70295 (= (forallContained!266 tokens!465 lambda!8286 (h!9077 tokens!465)) lt!102148)))

(declare-fun b!250403 () Bool)

(declare-fun contains!680 (List!3690 Token!1142) Bool)

(assert (=> b!250403 (= e!155566 (contains!680 tokens!465 (h!9077 tokens!465)))))

(assert (= (and d!70295 res!116108) b!250403))

(declare-fun b_lambda!7349 () Bool)

(assert (=> (not b_lambda!7349) (not d!70295)))

(declare-fun m!306927 () Bool)

(assert (=> d!70295 m!306927))

(declare-fun m!306929 () Bool)

(assert (=> d!70295 m!306929))

(declare-fun m!306931 () Bool)

(assert (=> d!70295 m!306931))

(declare-fun m!306933 () Bool)

(assert (=> b!250403 m!306933))

(assert (=> b!249874 d!70295))

(declare-fun d!70297 () Bool)

(declare-fun lt!102151 () Bool)

(assert (=> d!70297 (= lt!102151 (isEmpty!2278 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))))))

(declare-fun isEmpty!2286 (Conc!1221) Bool)

(assert (=> d!70297 (= lt!102151 (isEmpty!2286 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))))))

(assert (=> d!70297 (= (isEmpty!2280 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834)))) lt!102151)))

(declare-fun bs!26856 () Bool)

(assert (= bs!26856 d!70297))

(declare-fun m!306935 () Bool)

(assert (=> bs!26856 m!306935))

(assert (=> bs!26856 m!306935))

(declare-fun m!306937 () Bool)

(assert (=> bs!26856 m!306937))

(declare-fun m!306939 () Bool)

(assert (=> bs!26856 m!306939))

(assert (=> b!249879 d!70297))

(declare-fun b!250429 () Bool)

(declare-fun res!116132 () Bool)

(declare-fun e!155586 () Bool)

(assert (=> b!250429 (=> (not res!116132) (not e!155586))))

(declare-fun lt!102163 () tuple2!4116)

(declare-datatypes ((tuple2!4122 0))(
  ( (tuple2!4123 (_1!2277 List!3690) (_2!2277 List!3688)) )
))
(declare-fun lexList!191 (LexerInterface!585 List!3689 List!3688) tuple2!4122)

(assert (=> b!250429 (= res!116132 (= (list!1460 (_1!2274 lt!102163)) (_1!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 (seqFromList!775 lt!101834))))))))

(declare-fun d!70299 () Bool)

(assert (=> d!70299 e!155586))

(declare-fun res!116131 () Bool)

(assert (=> d!70299 (=> (not res!116131) (not e!155586))))

(declare-fun e!155584 () Bool)

(assert (=> d!70299 (= res!116131 e!155584)))

(declare-fun c!47577 () Bool)

(assert (=> d!70299 (= c!47577 (> (size!2911 (_1!2274 lt!102163)) 0))))

(declare-fun lexTailRecV2!158 (LexerInterface!585 List!3689 BalanceConc!2448 BalanceConc!2448 BalanceConc!2448 BalanceConc!2450) tuple2!4116)

(assert (=> d!70299 (= lt!102163 (lexTailRecV2!158 thiss!17480 rules!1920 (seqFromList!775 lt!101834) (BalanceConc!2449 Empty!1220) (seqFromList!775 lt!101834) (BalanceConc!2451 Empty!1221)))))

(assert (=> d!70299 (= (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834)) lt!102163)))

(declare-fun b!250430 () Bool)

(declare-fun e!155585 () Bool)

(assert (=> b!250430 (= e!155585 (not (isEmpty!2280 (_1!2274 lt!102163))))))

(declare-fun b!250431 () Bool)

(assert (=> b!250431 (= e!155586 (= (list!1461 (_2!2274 lt!102163)) (_2!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 (seqFromList!775 lt!101834))))))))

(declare-fun b!250432 () Bool)

(assert (=> b!250432 (= e!155584 e!155585)))

(declare-fun res!116130 () Bool)

(declare-fun size!2917 (BalanceConc!2448) Int)

(assert (=> b!250432 (= res!116130 (< (size!2917 (_2!2274 lt!102163)) (size!2917 (seqFromList!775 lt!101834))))))

(assert (=> b!250432 (=> (not res!116130) (not e!155585))))

(declare-fun b!250433 () Bool)

(assert (=> b!250433 (= e!155584 (= (_2!2274 lt!102163) (seqFromList!775 lt!101834)))))

(assert (= (and d!70299 c!47577) b!250432))

(assert (= (and d!70299 (not c!47577)) b!250433))

(assert (= (and b!250432 res!116130) b!250430))

(assert (= (and d!70299 res!116131) b!250429))

(assert (= (and b!250429 res!116132) b!250431))

(declare-fun m!306975 () Bool)

(assert (=> b!250430 m!306975))

(declare-fun m!306977 () Bool)

(assert (=> b!250432 m!306977))

(assert (=> b!250432 m!306033))

(declare-fun m!306979 () Bool)

(assert (=> b!250432 m!306979))

(declare-fun m!306981 () Bool)

(assert (=> b!250429 m!306981))

(assert (=> b!250429 m!306033))

(declare-fun m!306983 () Bool)

(assert (=> b!250429 m!306983))

(assert (=> b!250429 m!306983))

(declare-fun m!306985 () Bool)

(assert (=> b!250429 m!306985))

(declare-fun m!306987 () Bool)

(assert (=> d!70299 m!306987))

(assert (=> d!70299 m!306033))

(assert (=> d!70299 m!306033))

(declare-fun m!306989 () Bool)

(assert (=> d!70299 m!306989))

(declare-fun m!306991 () Bool)

(assert (=> b!250431 m!306991))

(assert (=> b!250431 m!306033))

(assert (=> b!250431 m!306983))

(assert (=> b!250431 m!306983))

(assert (=> b!250431 m!306985))

(assert (=> b!249879 d!70299))

(declare-fun d!70315 () Bool)

(assert (=> d!70315 (= (seqFromList!775 lt!101834) (fromListB!281 lt!101834))))

(declare-fun bs!26858 () Bool)

(assert (= bs!26858 d!70315))

(declare-fun m!306993 () Bool)

(assert (=> bs!26858 m!306993))

(assert (=> b!249879 d!70315))

(declare-fun d!70317 () Bool)

(assert (=> d!70317 (= (isEmpty!2279 rules!1920) ((_ is Nil!3679) rules!1920))))

(assert (=> b!249878 d!70317))

(declare-fun d!70319 () Bool)

(assert (=> d!70319 (= (isEmpty!2277 (_2!2273 lt!101833)) ((_ is Nil!3678) (_2!2273 lt!101833)))))

(assert (=> b!249857 d!70319))

(declare-fun d!70321 () Bool)

(declare-fun res!116133 () Bool)

(declare-fun e!155587 () Bool)

(assert (=> d!70321 (=> (not res!116133) (not e!155587))))

(assert (=> d!70321 (= res!116133 (not (isEmpty!2277 (originalCharacters!742 separatorToken!170))))))

(assert (=> d!70321 (= (inv!4531 separatorToken!170) e!155587)))

(declare-fun b!250434 () Bool)

(declare-fun res!116134 () Bool)

(assert (=> b!250434 (=> (not res!116134) (not e!155587))))

(assert (=> b!250434 (= res!116134 (= (originalCharacters!742 separatorToken!170) (list!1461 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))))))

(declare-fun b!250435 () Bool)

(assert (=> b!250435 (= e!155587 (= (size!2910 separatorToken!170) (size!2913 (originalCharacters!742 separatorToken!170))))))

(assert (= (and d!70321 res!116133) b!250434))

(assert (= (and b!250434 res!116134) b!250435))

(declare-fun b_lambda!7353 () Bool)

(assert (=> (not b_lambda!7353) (not b!250434)))

(assert (=> b!250434 t!35435))

(declare-fun b_and!18899 () Bool)

(assert (= b_and!18881 (and (=> t!35435 result!16134) b_and!18899)))

(assert (=> b!250434 t!35437))

(declare-fun b_and!18901 () Bool)

(assert (= b_and!18883 (and (=> t!35437 result!16136) b_and!18901)))

(assert (=> b!250434 t!35439))

(declare-fun b_and!18903 () Bool)

(assert (= b_and!18885 (and (=> t!35439 result!16138) b_and!18903)))

(declare-fun m!306995 () Bool)

(assert (=> d!70321 m!306995))

(assert (=> b!250434 m!306819))

(assert (=> b!250434 m!306819))

(declare-fun m!306997 () Bool)

(assert (=> b!250434 m!306997))

(declare-fun m!306999 () Bool)

(assert (=> b!250435 m!306999))

(assert (=> start!26522 d!70321))

(declare-fun d!70323 () Bool)

(assert (=> d!70323 (= (inv!4527 (tag!907 (rule!1276 (h!9077 tokens!465)))) (= (mod (str.len (value!24236 (tag!907 (rule!1276 (h!9077 tokens!465))))) 2) 0))))

(assert (=> b!249877 d!70323))

(declare-fun d!70325 () Bool)

(declare-fun res!116135 () Bool)

(declare-fun e!155588 () Bool)

(assert (=> d!70325 (=> (not res!116135) (not e!155588))))

(assert (=> d!70325 (= res!116135 (semiInverseModEq!236 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465))))))))

(assert (=> d!70325 (= (inv!4530 (transformation!699 (rule!1276 (h!9077 tokens!465)))) e!155588)))

(declare-fun b!250436 () Bool)

(assert (=> b!250436 (= e!155588 (equivClasses!219 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465))))))))

(assert (= (and d!70325 res!116135) b!250436))

(declare-fun m!307001 () Bool)

(assert (=> d!70325 m!307001))

(declare-fun m!307003 () Bool)

(assert (=> b!250436 m!307003))

(assert (=> b!249877 d!70325))

(declare-fun d!70327 () Bool)

(declare-fun lt!102168 () Bool)

(declare-fun e!155593 () Bool)

(assert (=> d!70327 (= lt!102168 e!155593)))

(declare-fun res!116143 () Bool)

(assert (=> d!70327 (=> (not res!116143) (not e!155593))))

(assert (=> d!70327 (= res!116143 (= (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)))))) (list!1460 (singletonSeq!251 (h!9077 tokens!465)))))))

(declare-fun e!155594 () Bool)

(assert (=> d!70327 (= lt!102168 e!155594)))

(declare-fun res!116144 () Bool)

(assert (=> d!70327 (=> (not res!116144) (not e!155594))))

(declare-fun lt!102169 () tuple2!4116)

(assert (=> d!70327 (= res!116144 (= (size!2911 (_1!2274 lt!102169)) 1))))

(assert (=> d!70327 (= lt!102169 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)))))))

(assert (=> d!70327 (not (isEmpty!2279 rules!1920))))

(assert (=> d!70327 (= (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (h!9077 tokens!465)) lt!102168)))

(declare-fun b!250443 () Bool)

(declare-fun res!116142 () Bool)

(assert (=> b!250443 (=> (not res!116142) (not e!155594))))

(assert (=> b!250443 (= res!116142 (= (apply!694 (_1!2274 lt!102169) 0) (h!9077 tokens!465)))))

(declare-fun b!250444 () Bool)

(declare-fun isEmpty!2288 (BalanceConc!2448) Bool)

(assert (=> b!250444 (= e!155594 (isEmpty!2288 (_2!2274 lt!102169)))))

(declare-fun b!250445 () Bool)

(assert (=> b!250445 (= e!155593 (isEmpty!2288 (_2!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)))))))))

(assert (= (and d!70327 res!116144) b!250443))

(assert (= (and b!250443 res!116142) b!250444))

(assert (= (and d!70327 res!116143) b!250445))

(assert (=> d!70327 m!306099))

(assert (=> d!70327 m!306577))

(assert (=> d!70327 m!306577))

(declare-fun m!307005 () Bool)

(assert (=> d!70327 m!307005))

(assert (=> d!70327 m!306031))

(declare-fun m!307007 () Bool)

(assert (=> d!70327 m!307007))

(assert (=> d!70327 m!306099))

(declare-fun m!307009 () Bool)

(assert (=> d!70327 m!307009))

(assert (=> d!70327 m!306099))

(declare-fun m!307011 () Bool)

(assert (=> d!70327 m!307011))

(declare-fun m!307013 () Bool)

(assert (=> b!250443 m!307013))

(declare-fun m!307015 () Bool)

(assert (=> b!250444 m!307015))

(assert (=> b!250445 m!306099))

(assert (=> b!250445 m!306099))

(assert (=> b!250445 m!306577))

(assert (=> b!250445 m!306577))

(assert (=> b!250445 m!307005))

(declare-fun m!307017 () Bool)

(assert (=> b!250445 m!307017))

(assert (=> b!249860 d!70327))

(declare-fun d!70329 () Bool)

(declare-fun lt!102172 () Int)

(declare-fun size!2918 (List!3690) Int)

(assert (=> d!70329 (= lt!102172 (size!2918 (list!1460 lt!101844)))))

(declare-fun size!2919 (Conc!1221) Int)

(assert (=> d!70329 (= lt!102172 (size!2919 (c!47454 lt!101844)))))

(assert (=> d!70329 (= (size!2911 lt!101844) lt!102172)))

(declare-fun bs!26859 () Bool)

(assert (= bs!26859 d!70329))

(assert (=> bs!26859 m!306399))

(assert (=> bs!26859 m!306399))

(declare-fun m!307019 () Bool)

(assert (=> bs!26859 m!307019))

(declare-fun m!307021 () Bool)

(assert (=> bs!26859 m!307021))

(assert (=> b!249881 d!70329))

(declare-fun d!70331 () Bool)

(assert (=> d!70331 (= lt!101842 (_2!2273 lt!101826))))

(declare-fun lt!102175 () Unit!4472)

(declare-fun choose!2356 (List!3688 List!3688 List!3688 List!3688 List!3688) Unit!4472)

(assert (=> d!70331 (= lt!102175 (choose!2356 lt!101834 lt!101842 lt!101834 (_2!2273 lt!101826) lt!101845))))

(assert (=> d!70331 (isPrefix!383 lt!101834 lt!101845)))

(assert (=> d!70331 (= (lemmaSamePrefixThenSameSuffix!198 lt!101834 lt!101842 lt!101834 (_2!2273 lt!101826) lt!101845) lt!102175)))

(declare-fun bs!26860 () Bool)

(assert (= bs!26860 d!70331))

(declare-fun m!307023 () Bool)

(assert (=> bs!26860 m!307023))

(assert (=> bs!26860 m!306081))

(assert (=> b!249881 d!70331))

(declare-fun d!70333 () Bool)

(assert (=> d!70333 (= (inv!4527 (tag!907 (h!9076 rules!1920))) (= (mod (str.len (value!24236 (tag!907 (h!9076 rules!1920)))) 2) 0))))

(assert (=> b!249880 d!70333))

(declare-fun d!70335 () Bool)

(declare-fun res!116145 () Bool)

(declare-fun e!155595 () Bool)

(assert (=> d!70335 (=> (not res!116145) (not e!155595))))

(assert (=> d!70335 (= res!116145 (semiInverseModEq!236 (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toValue!1402 (transformation!699 (h!9076 rules!1920)))))))

(assert (=> d!70335 (= (inv!4530 (transformation!699 (h!9076 rules!1920))) e!155595)))

(declare-fun b!250446 () Bool)

(assert (=> b!250446 (= e!155595 (equivClasses!219 (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toValue!1402 (transformation!699 (h!9076 rules!1920)))))))

(assert (= (and d!70335 res!116145) b!250446))

(declare-fun m!307025 () Bool)

(assert (=> d!70335 m!307025))

(declare-fun m!307027 () Bool)

(assert (=> b!250446 m!307027))

(assert (=> b!249880 d!70335))

(declare-fun d!70337 () Bool)

(declare-fun lt!102180 () Bool)

(assert (=> d!70337 (= lt!102180 (forall!865 (list!1460 lt!101844) lambda!8285))))

(declare-fun forall!867 (Conc!1221 Int) Bool)

(assert (=> d!70337 (= lt!102180 (forall!867 (c!47454 lt!101844) lambda!8285))))

(assert (=> d!70337 (= (forall!864 lt!101844 lambda!8285) lt!102180)))

(declare-fun bs!26861 () Bool)

(assert (= bs!26861 d!70337))

(assert (=> bs!26861 m!306399))

(assert (=> bs!26861 m!306399))

(declare-fun m!307029 () Bool)

(assert (=> bs!26861 m!307029))

(declare-fun m!307031 () Bool)

(assert (=> bs!26861 m!307031))

(assert (=> b!249859 d!70337))

(declare-fun d!70339 () Bool)

(assert (=> d!70339 (= (isDefined!611 lt!101846) (not (isEmpty!2282 lt!101846)))))

(declare-fun bs!26862 () Bool)

(assert (= bs!26862 d!70339))

(declare-fun m!307033 () Bool)

(assert (=> bs!26862 m!307033))

(assert (=> b!249858 d!70339))

(declare-fun b!250447 () Bool)

(declare-fun res!116152 () Bool)

(declare-fun e!155596 () Bool)

(assert (=> b!250447 (=> (not res!116152) (not e!155596))))

(declare-fun lt!102184 () Option!760)

(assert (=> b!250447 (= res!116152 (= (value!24237 (_1!2273 (get!1209 lt!102184))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102184)))))))))

(declare-fun b!250448 () Bool)

(assert (=> b!250448 (= e!155596 (contains!678 rules!1920 (rule!1276 (_1!2273 (get!1209 lt!102184)))))))

(declare-fun b!250449 () Bool)

(declare-fun e!155598 () Option!760)

(declare-fun lt!102182 () Option!760)

(declare-fun lt!102183 () Option!760)

(assert (=> b!250449 (= e!155598 (ite (and ((_ is None!759) lt!102182) ((_ is None!759) lt!102183)) None!759 (ite ((_ is None!759) lt!102183) lt!102182 (ite ((_ is None!759) lt!102182) lt!102183 (ite (>= (size!2910 (_1!2273 (v!14538 lt!102182))) (size!2910 (_1!2273 (v!14538 lt!102183)))) lt!102182 lt!102183)))))))

(declare-fun call!13257 () Option!760)

(assert (=> b!250449 (= lt!102182 call!13257)))

(assert (=> b!250449 (= lt!102183 (maxPrefix!315 thiss!17480 (t!35393 rules!1920) lt!101845))))

(declare-fun b!250450 () Bool)

(declare-fun res!116150 () Bool)

(assert (=> b!250450 (=> (not res!116150) (not e!155596))))

(assert (=> b!250450 (= res!116150 (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))))))

(declare-fun b!250451 () Bool)

(declare-fun e!155597 () Bool)

(assert (=> b!250451 (= e!155597 e!155596)))

(declare-fun res!116149 () Bool)

(assert (=> b!250451 (=> (not res!116149) (not e!155596))))

(assert (=> b!250451 (= res!116149 (isDefined!611 lt!102184))))

(declare-fun b!250452 () Bool)

(declare-fun res!116147 () Bool)

(assert (=> b!250452 (=> (not res!116147) (not e!155596))))

(assert (=> b!250452 (= res!116147 (< (size!2913 (_2!2273 (get!1209 lt!102184))) (size!2913 lt!101845)))))

(declare-fun b!250453 () Bool)

(assert (=> b!250453 (= e!155598 call!13257)))

(declare-fun bm!13252 () Bool)

(assert (=> bm!13252 (= call!13257 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) lt!101845))))

(declare-fun d!70341 () Bool)

(assert (=> d!70341 e!155597))

(declare-fun res!116148 () Bool)

(assert (=> d!70341 (=> res!116148 e!155597)))

(assert (=> d!70341 (= res!116148 (isEmpty!2282 lt!102184))))

(assert (=> d!70341 (= lt!102184 e!155598)))

(declare-fun c!47578 () Bool)

(assert (=> d!70341 (= c!47578 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!102186 () Unit!4472)

(declare-fun lt!102185 () Unit!4472)

(assert (=> d!70341 (= lt!102186 lt!102185)))

(assert (=> d!70341 (isPrefix!383 lt!101845 lt!101845)))

(assert (=> d!70341 (= lt!102185 (lemmaIsPrefixRefl!195 lt!101845 lt!101845))))

(assert (=> d!70341 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!70341 (= (maxPrefix!315 thiss!17480 rules!1920 lt!101845) lt!102184)))

(declare-fun b!250454 () Bool)

(declare-fun res!116146 () Bool)

(assert (=> b!250454 (=> (not res!116146) (not e!155596))))

(assert (=> b!250454 (= res!116146 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184)))) (_2!2273 (get!1209 lt!102184))) lt!101845))))

(declare-fun b!250455 () Bool)

(declare-fun res!116151 () Bool)

(assert (=> b!250455 (=> (not res!116151) (not e!155596))))

(assert (=> b!250455 (= res!116151 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184)))) (originalCharacters!742 (_1!2273 (get!1209 lt!102184)))))))

(assert (= (and d!70341 c!47578) b!250453))

(assert (= (and d!70341 (not c!47578)) b!250449))

(assert (= (or b!250453 b!250449) bm!13252))

(assert (= (and d!70341 (not res!116148)) b!250451))

(assert (= (and b!250451 res!116149) b!250455))

(assert (= (and b!250455 res!116151) b!250452))

(assert (= (and b!250452 res!116147) b!250454))

(assert (= (and b!250454 res!116146) b!250447))

(assert (= (and b!250447 res!116152) b!250450))

(assert (= (and b!250450 res!116150) b!250448))

(declare-fun m!307043 () Bool)

(assert (=> b!250447 m!307043))

(declare-fun m!307045 () Bool)

(assert (=> b!250447 m!307045))

(assert (=> b!250447 m!307045))

(declare-fun m!307047 () Bool)

(assert (=> b!250447 m!307047))

(declare-fun m!307049 () Bool)

(assert (=> b!250451 m!307049))

(declare-fun m!307051 () Bool)

(assert (=> bm!13252 m!307051))

(assert (=> b!250450 m!307043))

(declare-fun m!307053 () Bool)

(assert (=> b!250450 m!307053))

(assert (=> b!250450 m!307053))

(declare-fun m!307055 () Bool)

(assert (=> b!250450 m!307055))

(assert (=> b!250450 m!307055))

(declare-fun m!307057 () Bool)

(assert (=> b!250450 m!307057))

(assert (=> b!250455 m!307043))

(assert (=> b!250455 m!307053))

(assert (=> b!250455 m!307053))

(assert (=> b!250455 m!307055))

(assert (=> b!250454 m!307043))

(assert (=> b!250454 m!307053))

(assert (=> b!250454 m!307053))

(assert (=> b!250454 m!307055))

(assert (=> b!250454 m!307055))

(declare-fun m!307059 () Bool)

(assert (=> b!250454 m!307059))

(assert (=> b!250452 m!307043))

(declare-fun m!307063 () Bool)

(assert (=> b!250452 m!307063))

(declare-fun m!307065 () Bool)

(assert (=> b!250452 m!307065))

(declare-fun m!307067 () Bool)

(assert (=> d!70341 m!307067))

(declare-fun m!307069 () Bool)

(assert (=> d!70341 m!307069))

(declare-fun m!307071 () Bool)

(assert (=> d!70341 m!307071))

(assert (=> d!70341 m!306683))

(declare-fun m!307073 () Bool)

(assert (=> b!250449 m!307073))

(assert (=> b!250448 m!307043))

(declare-fun m!307075 () Bool)

(assert (=> b!250448 m!307075))

(assert (=> b!249858 d!70341))

(declare-fun b!250514 () Bool)

(declare-fun res!116189 () Bool)

(declare-fun e!155631 () Bool)

(assert (=> b!250514 (=> res!116189 e!155631)))

(declare-fun e!155632 () Bool)

(assert (=> b!250514 (= res!116189 e!155632)))

(declare-fun res!116187 () Bool)

(assert (=> b!250514 (=> (not res!116187) (not e!155632))))

(declare-fun lt!102195 () Bool)

(assert (=> b!250514 (= res!116187 lt!102195)))

(declare-fun b!250515 () Bool)

(declare-fun e!155637 () Bool)

(declare-fun e!155635 () Bool)

(assert (=> b!250515 (= e!155637 e!155635)))

(declare-fun res!116190 () Bool)

(assert (=> b!250515 (=> res!116190 e!155635)))

(declare-fun call!13263 () Bool)

(assert (=> b!250515 (= res!116190 call!13263)))

(declare-fun bm!13258 () Bool)

(assert (=> bm!13258 (= call!13263 (isEmpty!2277 lt!101834))))

(declare-fun b!250516 () Bool)

(declare-fun e!155636 () Bool)

(declare-fun derivativeStep!130 (Regex!923 C!2768) Regex!923)

(declare-fun head!866 (List!3688) C!2768)

(declare-fun tail!458 (List!3688) List!3688)

(assert (=> b!250516 (= e!155636 (matchR!261 (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834)) (tail!458 lt!101834)))))

(declare-fun b!250517 () Bool)

(declare-fun res!116188 () Bool)

(assert (=> b!250517 (=> res!116188 e!155635)))

(assert (=> b!250517 (= res!116188 (not (isEmpty!2277 (tail!458 lt!101834))))))

(declare-fun d!70347 () Bool)

(declare-fun e!155634 () Bool)

(assert (=> d!70347 e!155634))

(declare-fun c!47593 () Bool)

(assert (=> d!70347 (= c!47593 ((_ is EmptyExpr!923) (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(assert (=> d!70347 (= lt!102195 e!155636)))

(declare-fun c!47591 () Bool)

(assert (=> d!70347 (= c!47591 (isEmpty!2277 lt!101834))))

(declare-fun validRegex!239 (Regex!923) Bool)

(assert (=> d!70347 (validRegex!239 (regex!699 (rule!1276 (h!9077 tokens!465))))))

(assert (=> d!70347 (= (matchR!261 (regex!699 (rule!1276 (h!9077 tokens!465))) lt!101834) lt!102195)))

(declare-fun b!250518 () Bool)

(declare-fun res!116191 () Bool)

(assert (=> b!250518 (=> (not res!116191) (not e!155632))))

(assert (=> b!250518 (= res!116191 (isEmpty!2277 (tail!458 lt!101834)))))

(declare-fun b!250519 () Bool)

(declare-fun e!155633 () Bool)

(assert (=> b!250519 (= e!155634 e!155633)))

(declare-fun c!47592 () Bool)

(assert (=> b!250519 (= c!47592 ((_ is EmptyLang!923) (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(declare-fun b!250520 () Bool)

(declare-fun res!116194 () Bool)

(assert (=> b!250520 (=> res!116194 e!155631)))

(assert (=> b!250520 (= res!116194 (not ((_ is ElementMatch!923) (regex!699 (rule!1276 (h!9077 tokens!465))))))))

(assert (=> b!250520 (= e!155633 e!155631)))

(declare-fun b!250521 () Bool)

(assert (=> b!250521 (= e!155632 (= (head!866 lt!101834) (c!47453 (regex!699 (rule!1276 (h!9077 tokens!465))))))))

(declare-fun b!250522 () Bool)

(assert (=> b!250522 (= e!155634 (= lt!102195 call!13263))))

(declare-fun b!250523 () Bool)

(declare-fun nullable!164 (Regex!923) Bool)

(assert (=> b!250523 (= e!155636 (nullable!164 (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(declare-fun b!250524 () Bool)

(assert (=> b!250524 (= e!155635 (not (= (head!866 lt!101834) (c!47453 (regex!699 (rule!1276 (h!9077 tokens!465)))))))))

(declare-fun b!250525 () Bool)

(assert (=> b!250525 (= e!155631 e!155637)))

(declare-fun res!116192 () Bool)

(assert (=> b!250525 (=> (not res!116192) (not e!155637))))

(assert (=> b!250525 (= res!116192 (not lt!102195))))

(declare-fun b!250526 () Bool)

(assert (=> b!250526 (= e!155633 (not lt!102195))))

(declare-fun b!250527 () Bool)

(declare-fun res!116193 () Bool)

(assert (=> b!250527 (=> (not res!116193) (not e!155632))))

(assert (=> b!250527 (= res!116193 (not call!13263))))

(assert (= (and d!70347 c!47591) b!250523))

(assert (= (and d!70347 (not c!47591)) b!250516))

(assert (= (and d!70347 c!47593) b!250522))

(assert (= (and d!70347 (not c!47593)) b!250519))

(assert (= (and b!250519 c!47592) b!250526))

(assert (= (and b!250519 (not c!47592)) b!250520))

(assert (= (and b!250520 (not res!116194)) b!250514))

(assert (= (and b!250514 res!116187) b!250527))

(assert (= (and b!250527 res!116193) b!250518))

(assert (= (and b!250518 res!116191) b!250521))

(assert (= (and b!250514 (not res!116189)) b!250525))

(assert (= (and b!250525 res!116192) b!250515))

(assert (= (and b!250515 (not res!116190)) b!250517))

(assert (= (and b!250517 (not res!116188)) b!250524))

(assert (= (or b!250522 b!250515 b!250527) bm!13258))

(declare-fun m!307097 () Bool)

(assert (=> b!250521 m!307097))

(declare-fun m!307099 () Bool)

(assert (=> b!250523 m!307099))

(declare-fun m!307101 () Bool)

(assert (=> b!250518 m!307101))

(assert (=> b!250518 m!307101))

(declare-fun m!307103 () Bool)

(assert (=> b!250518 m!307103))

(assert (=> b!250516 m!307097))

(assert (=> b!250516 m!307097))

(declare-fun m!307105 () Bool)

(assert (=> b!250516 m!307105))

(assert (=> b!250516 m!307101))

(assert (=> b!250516 m!307105))

(assert (=> b!250516 m!307101))

(declare-fun m!307107 () Bool)

(assert (=> b!250516 m!307107))

(assert (=> b!250517 m!307101))

(assert (=> b!250517 m!307101))

(assert (=> b!250517 m!307103))

(declare-fun m!307109 () Bool)

(assert (=> d!70347 m!307109))

(declare-fun m!307111 () Bool)

(assert (=> d!70347 m!307111))

(assert (=> bm!13258 m!307109))

(assert (=> b!250524 m!307097))

(assert (=> b!249884 d!70347))

(declare-fun d!70357 () Bool)

(declare-fun lt!102196 () Bool)

(declare-fun e!155638 () Bool)

(assert (=> d!70357 (= lt!102196 e!155638)))

(declare-fun res!116196 () Bool)

(assert (=> d!70357 (=> (not res!116196) (not e!155638))))

(assert (=> d!70357 (= res!116196 (= (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170))))) (list!1460 (singletonSeq!251 separatorToken!170))))))

(declare-fun e!155639 () Bool)

(assert (=> d!70357 (= lt!102196 e!155639)))

(declare-fun res!116197 () Bool)

(assert (=> d!70357 (=> (not res!116197) (not e!155639))))

(declare-fun lt!102197 () tuple2!4116)

(assert (=> d!70357 (= res!116197 (= (size!2911 (_1!2274 lt!102197)) 1))))

(assert (=> d!70357 (= lt!102197 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170))))))

(assert (=> d!70357 (not (isEmpty!2279 rules!1920))))

(assert (=> d!70357 (= (rulesProduceIndividualToken!334 thiss!17480 rules!1920 separatorToken!170) lt!102196)))

(declare-fun b!250528 () Bool)

(declare-fun res!116195 () Bool)

(assert (=> b!250528 (=> (not res!116195) (not e!155639))))

(assert (=> b!250528 (= res!116195 (= (apply!694 (_1!2274 lt!102197) 0) separatorToken!170))))

(declare-fun b!250529 () Bool)

(assert (=> b!250529 (= e!155639 (isEmpty!2288 (_2!2274 lt!102197)))))

(declare-fun b!250530 () Bool)

(assert (=> b!250530 (= e!155638 (isEmpty!2288 (_2!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170))))))))

(assert (= (and d!70357 res!116197) b!250528))

(assert (= (and b!250528 res!116195) b!250529))

(assert (= (and d!70357 res!116196) b!250530))

(declare-fun m!307113 () Bool)

(assert (=> d!70357 m!307113))

(declare-fun m!307115 () Bool)

(assert (=> d!70357 m!307115))

(assert (=> d!70357 m!307115))

(declare-fun m!307117 () Bool)

(assert (=> d!70357 m!307117))

(assert (=> d!70357 m!306031))

(declare-fun m!307119 () Bool)

(assert (=> d!70357 m!307119))

(assert (=> d!70357 m!307113))

(declare-fun m!307121 () Bool)

(assert (=> d!70357 m!307121))

(assert (=> d!70357 m!307113))

(declare-fun m!307123 () Bool)

(assert (=> d!70357 m!307123))

(declare-fun m!307125 () Bool)

(assert (=> b!250528 m!307125))

(declare-fun m!307127 () Bool)

(assert (=> b!250529 m!307127))

(assert (=> b!250530 m!307113))

(assert (=> b!250530 m!307113))

(assert (=> b!250530 m!307115))

(assert (=> b!250530 m!307115))

(assert (=> b!250530 m!307117))

(declare-fun m!307129 () Bool)

(assert (=> b!250530 m!307129))

(assert (=> b!249862 d!70357))

(declare-fun d!70359 () Bool)

(declare-fun res!116202 () Bool)

(declare-fun e!155644 () Bool)

(assert (=> d!70359 (=> res!116202 e!155644)))

(assert (=> d!70359 (= res!116202 (not ((_ is Cons!3679) rules!1920)))))

(assert (=> d!70359 (= (sepAndNonSepRulesDisjointChars!288 rules!1920 rules!1920) e!155644)))

(declare-fun b!250535 () Bool)

(declare-fun e!155645 () Bool)

(assert (=> b!250535 (= e!155644 e!155645)))

(declare-fun res!116203 () Bool)

(assert (=> b!250535 (=> (not res!116203) (not e!155645))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!95 (Rule!1198 List!3689) Bool)

(assert (=> b!250535 (= res!116203 (ruleDisjointCharsFromAllFromOtherType!95 (h!9076 rules!1920) rules!1920))))

(declare-fun b!250536 () Bool)

(assert (=> b!250536 (= e!155645 (sepAndNonSepRulesDisjointChars!288 rules!1920 (t!35393 rules!1920)))))

(assert (= (and d!70359 (not res!116202)) b!250535))

(assert (= (and b!250535 res!116203) b!250536))

(declare-fun m!307131 () Bool)

(assert (=> b!250535 m!307131))

(declare-fun m!307133 () Bool)

(assert (=> b!250536 m!307133))

(assert (=> b!249883 d!70359))

(declare-fun d!70361 () Bool)

(assert (=> d!70361 (= (get!1209 lt!101846) (v!14538 lt!101846))))

(assert (=> b!249882 d!70361))

(declare-fun d!70363 () Bool)

(assert (=> d!70363 (= (head!864 tokens!465) (h!9077 tokens!465))))

(assert (=> b!249882 d!70363))

(declare-fun bs!26871 () Bool)

(declare-fun d!70365 () Bool)

(assert (= bs!26871 (and d!70365 b!250061)))

(declare-fun lambda!8323 () Int)

(assert (=> bs!26871 (not (= lambda!8323 lambda!8295))))

(declare-fun bs!26872 () Bool)

(assert (= bs!26872 (and d!70365 d!70263)))

(assert (=> bs!26872 (= lambda!8323 lambda!8316)))

(declare-fun bs!26873 () Bool)

(assert (= bs!26873 (and d!70365 b!250282)))

(assert (=> bs!26873 (not (= lambda!8323 lambda!8315))))

(declare-fun bs!26874 () Bool)

(assert (= bs!26874 (and d!70365 b!250290)))

(assert (=> bs!26874 (not (= lambda!8323 lambda!8317))))

(declare-fun bs!26875 () Bool)

(assert (= bs!26875 (and d!70365 b!249874)))

(assert (=> bs!26875 (not (= lambda!8323 lambda!8286))))

(declare-fun bs!26876 () Bool)

(assert (= bs!26876 (and d!70365 d!70223)))

(assert (=> bs!26876 (not (= lambda!8323 lambda!8309))))

(declare-fun bs!26877 () Bool)

(assert (= bs!26877 (and d!70365 d!70193)))

(assert (=> bs!26877 (= lambda!8323 lambda!8294)))

(declare-fun bs!26878 () Bool)

(assert (= bs!26878 (and d!70365 b!250190)))

(assert (=> bs!26878 (not (= lambda!8323 lambda!8304))))

(declare-fun bs!26879 () Bool)

(assert (= bs!26879 (and d!70365 b!249873)))

(assert (=> bs!26879 (= lambda!8323 lambda!8285)))

(assert (=> d!70365 (= (filter!81 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))) lambda!8323) (t!35394 tokens!465))))

(declare-fun lt!102203 () Unit!4472)

(declare-fun choose!2360 (LexerInterface!585 List!3689 List!3690 Token!1142) Unit!4472)

(assert (=> d!70365 (= lt!102203 (choose!2360 thiss!17480 rules!1920 (t!35394 tokens!465) separatorToken!170))))

(assert (=> d!70365 (not (isEmpty!2279 rules!1920))))

(assert (=> d!70365 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!72 thiss!17480 rules!1920 (t!35394 tokens!465) separatorToken!170) lt!102203)))

(declare-fun bs!26880 () Bool)

(assert (= bs!26880 d!70365))

(declare-fun m!307143 () Bool)

(assert (=> bs!26880 m!307143))

(assert (=> bs!26880 m!306121))

(assert (=> bs!26880 m!306137))

(declare-fun m!307145 () Bool)

(assert (=> bs!26880 m!307145))

(assert (=> bs!26880 m!306031))

(assert (=> bs!26880 m!306137))

(declare-fun m!307147 () Bool)

(assert (=> bs!26880 m!307147))

(assert (=> bs!26880 m!307145))

(declare-fun m!307149 () Bool)

(assert (=> bs!26880 m!307149))

(assert (=> bs!26880 m!306121))

(assert (=> b!249861 d!70365))

(declare-fun b!250577 () Bool)

(declare-fun res!116233 () Bool)

(declare-fun e!155676 () Bool)

(assert (=> b!250577 (=> (not res!116233) (not e!155676))))

(assert (=> b!250577 (= res!116233 (= (head!866 lt!101834) (head!866 lt!101823)))))

(declare-fun b!250576 () Bool)

(declare-fun e!155674 () Bool)

(assert (=> b!250576 (= e!155674 e!155676)))

(declare-fun res!116234 () Bool)

(assert (=> b!250576 (=> (not res!116234) (not e!155676))))

(assert (=> b!250576 (= res!116234 (not ((_ is Nil!3678) lt!101823)))))

(declare-fun d!70369 () Bool)

(declare-fun e!155675 () Bool)

(assert (=> d!70369 e!155675))

(declare-fun res!116231 () Bool)

(assert (=> d!70369 (=> res!116231 e!155675)))

(declare-fun lt!102226 () Bool)

(assert (=> d!70369 (= res!116231 (not lt!102226))))

(assert (=> d!70369 (= lt!102226 e!155674)))

(declare-fun res!116232 () Bool)

(assert (=> d!70369 (=> res!116232 e!155674)))

(assert (=> d!70369 (= res!116232 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70369 (= (isPrefix!383 lt!101834 lt!101823) lt!102226)))

(declare-fun b!250578 () Bool)

(assert (=> b!250578 (= e!155676 (isPrefix!383 (tail!458 lt!101834) (tail!458 lt!101823)))))

(declare-fun b!250579 () Bool)

(assert (=> b!250579 (= e!155675 (>= (size!2913 lt!101823) (size!2913 lt!101834)))))

(assert (= (and d!70369 (not res!116232)) b!250576))

(assert (= (and b!250576 res!116234) b!250577))

(assert (= (and b!250577 res!116233) b!250578))

(assert (= (and d!70369 (not res!116231)) b!250579))

(assert (=> b!250577 m!307097))

(declare-fun m!307195 () Bool)

(assert (=> b!250577 m!307195))

(assert (=> b!250578 m!307101))

(declare-fun m!307197 () Bool)

(assert (=> b!250578 m!307197))

(assert (=> b!250578 m!307101))

(assert (=> b!250578 m!307197))

(declare-fun m!307199 () Bool)

(assert (=> b!250578 m!307199))

(declare-fun m!307201 () Bool)

(assert (=> b!250579 m!307201))

(assert (=> b!250579 m!306183))

(assert (=> b!249861 d!70369))

(declare-fun b!250580 () Bool)

(declare-fun res!116237 () Bool)

(declare-fun e!155679 () Bool)

(assert (=> b!250580 (=> (not res!116237) (not e!155679))))

(declare-fun lt!102227 () tuple2!4116)

(assert (=> b!250580 (= res!116237 (= (list!1460 (_1!2274 lt!102227)) (_1!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 lt!101841)))))))

(declare-fun d!70389 () Bool)

(assert (=> d!70389 e!155679))

(declare-fun res!116236 () Bool)

(assert (=> d!70389 (=> (not res!116236) (not e!155679))))

(declare-fun e!155677 () Bool)

(assert (=> d!70389 (= res!116236 e!155677)))

(declare-fun c!47600 () Bool)

(assert (=> d!70389 (= c!47600 (> (size!2911 (_1!2274 lt!102227)) 0))))

(assert (=> d!70389 (= lt!102227 (lexTailRecV2!158 thiss!17480 rules!1920 lt!101841 (BalanceConc!2449 Empty!1220) lt!101841 (BalanceConc!2451 Empty!1221)))))

(assert (=> d!70389 (= (lex!385 thiss!17480 rules!1920 lt!101841) lt!102227)))

(declare-fun b!250581 () Bool)

(declare-fun e!155678 () Bool)

(assert (=> b!250581 (= e!155678 (not (isEmpty!2280 (_1!2274 lt!102227))))))

(declare-fun b!250582 () Bool)

(assert (=> b!250582 (= e!155679 (= (list!1461 (_2!2274 lt!102227)) (_2!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 lt!101841)))))))

(declare-fun b!250583 () Bool)

(assert (=> b!250583 (= e!155677 e!155678)))

(declare-fun res!116235 () Bool)

(assert (=> b!250583 (= res!116235 (< (size!2917 (_2!2274 lt!102227)) (size!2917 lt!101841)))))

(assert (=> b!250583 (=> (not res!116235) (not e!155678))))

(declare-fun b!250584 () Bool)

(assert (=> b!250584 (= e!155677 (= (_2!2274 lt!102227) lt!101841))))

(assert (= (and d!70389 c!47600) b!250583))

(assert (= (and d!70389 (not c!47600)) b!250584))

(assert (= (and b!250583 res!116235) b!250581))

(assert (= (and d!70389 res!116236) b!250580))

(assert (= (and b!250580 res!116237) b!250582))

(declare-fun m!307203 () Bool)

(assert (=> b!250581 m!307203))

(declare-fun m!307205 () Bool)

(assert (=> b!250583 m!307205))

(declare-fun m!307207 () Bool)

(assert (=> b!250583 m!307207))

(declare-fun m!307209 () Bool)

(assert (=> b!250580 m!307209))

(assert (=> b!250580 m!306123))

(assert (=> b!250580 m!306123))

(declare-fun m!307211 () Bool)

(assert (=> b!250580 m!307211))

(declare-fun m!307213 () Bool)

(assert (=> d!70389 m!307213))

(declare-fun m!307215 () Bool)

(assert (=> d!70389 m!307215))

(declare-fun m!307217 () Bool)

(assert (=> b!250582 m!307217))

(assert (=> b!250582 m!306123))

(assert (=> b!250582 m!306123))

(assert (=> b!250582 m!307211))

(assert (=> b!249861 d!70389))

(declare-fun e!155697 () List!3690)

(declare-fun b!250611 () Bool)

(declare-fun call!13276 () List!3690)

(assert (=> b!250611 (= e!155697 (Cons!3680 (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))) call!13276))))

(declare-fun b!250612 () Bool)

(assert (=> b!250612 (= e!155697 call!13276)))

(declare-fun b!250613 () Bool)

(declare-fun e!155696 () Bool)

(declare-fun lt!102236 () List!3690)

(assert (=> b!250613 (= e!155696 (forall!865 lt!102236 lambda!8285))))

(declare-fun d!70391 () Bool)

(assert (=> d!70391 e!155696))

(declare-fun res!116243 () Bool)

(assert (=> d!70391 (=> (not res!116243) (not e!155696))))

(assert (=> d!70391 (= res!116243 (<= (size!2918 lt!102236) (size!2918 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))))))

(declare-fun e!155698 () List!3690)

(assert (=> d!70391 (= lt!102236 e!155698)))

(declare-fun c!47610 () Bool)

(assert (=> d!70391 (= c!47610 ((_ is Nil!3680) (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))

(assert (=> d!70391 (= (filter!81 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))) lambda!8285) lt!102236)))

(declare-fun b!250614 () Bool)

(assert (=> b!250614 (= e!155698 Nil!3680)))

(declare-fun bm!13271 () Bool)

(assert (=> bm!13271 (= call!13276 (filter!81 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))) lambda!8285))))

(declare-fun b!250615 () Bool)

(assert (=> b!250615 (= e!155698 e!155697)))

(declare-fun c!47609 () Bool)

(assert (=> b!250615 (= c!47609 (dynLambda!1813 lambda!8285 (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))))))

(declare-fun b!250616 () Bool)

(declare-fun res!116242 () Bool)

(assert (=> b!250616 (=> (not res!116242) (not e!155696))))

(declare-fun content!515 (List!3690) (InoxSet Token!1142))

(assert (=> b!250616 (= res!116242 (= ((_ map implies) (content!515 lt!102236) (content!515 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))) ((as const (InoxSet Token!1142)) true)))))

(assert (= (and d!70391 c!47610) b!250614))

(assert (= (and d!70391 (not c!47610)) b!250615))

(assert (= (and b!250615 c!47609) b!250611))

(assert (= (and b!250615 (not c!47609)) b!250612))

(assert (= (or b!250611 b!250612) bm!13271))

(assert (= (and d!70391 res!116243) b!250616))

(assert (= (and b!250616 res!116242) b!250613))

(declare-fun b_lambda!7357 () Bool)

(assert (=> (not b_lambda!7357) (not b!250615)))

(declare-fun m!307283 () Bool)

(assert (=> d!70391 m!307283))

(assert (=> d!70391 m!306075))

(declare-fun m!307287 () Bool)

(assert (=> d!70391 m!307287))

(declare-fun m!307293 () Bool)

(assert (=> bm!13271 m!307293))

(declare-fun m!307295 () Bool)

(assert (=> b!250616 m!307295))

(assert (=> b!250616 m!306075))

(declare-fun m!307297 () Bool)

(assert (=> b!250616 m!307297))

(declare-fun m!307301 () Bool)

(assert (=> b!250615 m!307301))

(declare-fun m!307305 () Bool)

(assert (=> b!250613 m!307305))

(assert (=> b!249861 d!70391))

(declare-fun d!70395 () Bool)

(assert (=> d!70395 (= (isEmpty!2278 tokens!465) ((_ is Nil!3680) tokens!465))))

(assert (=> b!249861 d!70395))

(declare-fun d!70401 () Bool)

(assert (=> d!70401 (= (get!1209 (maxPrefix!315 thiss!17480 rules!1920 lt!101845)) (v!14538 (maxPrefix!315 thiss!17480 rules!1920 lt!101845)))))

(assert (=> b!249861 d!70401))

(declare-fun d!70403 () Bool)

(declare-fun e!155768 () Bool)

(assert (=> d!70403 e!155768))

(declare-fun res!116267 () Bool)

(assert (=> d!70403 (=> res!116267 e!155768)))

(assert (=> d!70403 (= res!116267 (isEmpty!2278 tokens!465))))

(declare-fun lt!102268 () Unit!4472)

(declare-fun choose!2361 (LexerInterface!585 List!3689 List!3690 Token!1142) Unit!4472)

(assert (=> d!70403 (= lt!102268 (choose!2361 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!70403 (not (isEmpty!2279 rules!1920))))

(assert (=> d!70403 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!154 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!102268)))

(declare-fun b!250707 () Bool)

(declare-fun e!155769 () Bool)

(assert (=> b!250707 (= e!155768 e!155769)))

(declare-fun res!116266 () Bool)

(assert (=> b!250707 (=> (not res!116266) (not e!155769))))

(assert (=> b!250707 (= res!116266 (isDefined!611 (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!250708 () Bool)

(assert (=> b!250708 (= e!155769 (= (_1!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!864 tokens!465)))))

(assert (= (and d!70403 (not res!116267)) b!250707))

(assert (= (and b!250707 res!116266) b!250708))

(assert (=> d!70403 m!306073))

(declare-fun m!307401 () Bool)

(assert (=> d!70403 m!307401))

(assert (=> d!70403 m!306031))

(assert (=> b!250707 m!306049))

(assert (=> b!250707 m!306049))

(declare-fun m!307403 () Bool)

(assert (=> b!250707 m!307403))

(assert (=> b!250707 m!307403))

(declare-fun m!307405 () Bool)

(assert (=> b!250707 m!307405))

(assert (=> b!250708 m!306049))

(assert (=> b!250708 m!306049))

(assert (=> b!250708 m!307403))

(assert (=> b!250708 m!307403))

(declare-fun m!307407 () Bool)

(assert (=> b!250708 m!307407))

(assert (=> b!250708 m!306025))

(assert (=> b!249861 d!70403))

(declare-fun d!70425 () Bool)

(declare-fun list!1465 (Conc!1221) List!3690)

(assert (=> d!70425 (= (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))) (list!1465 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))

(declare-fun bs!26912 () Bool)

(assert (= bs!26912 d!70425))

(declare-fun m!307409 () Bool)

(assert (=> bs!26912 m!307409))

(assert (=> b!249861 d!70425))

(assert (=> b!249861 d!70153))

(declare-fun d!70427 () Bool)

(assert (=> d!70427 (isPrefix!383 lt!101834 (++!942 lt!101834 lt!101842))))

(declare-fun lt!102271 () Unit!4472)

(declare-fun choose!2362 (List!3688 List!3688) Unit!4472)

(assert (=> d!70427 (= lt!102271 (choose!2362 lt!101834 lt!101842))))

(assert (=> d!70427 (= (lemmaConcatTwoListThenFirstIsPrefix!278 lt!101834 lt!101842) lt!102271)))

(declare-fun bs!26913 () Bool)

(assert (= bs!26913 d!70427))

(assert (=> bs!26913 m!306041))

(assert (=> bs!26913 m!306041))

(declare-fun m!307411 () Bool)

(assert (=> bs!26913 m!307411))

(declare-fun m!307413 () Bool)

(assert (=> bs!26913 m!307413))

(assert (=> b!249861 d!70427))

(declare-fun b!250710 () Bool)

(declare-fun res!116270 () Bool)

(declare-fun e!155772 () Bool)

(assert (=> b!250710 (=> (not res!116270) (not e!155772))))

(assert (=> b!250710 (= res!116270 (= (head!866 lt!101834) (head!866 lt!101845)))))

(declare-fun b!250709 () Bool)

(declare-fun e!155770 () Bool)

(assert (=> b!250709 (= e!155770 e!155772)))

(declare-fun res!116271 () Bool)

(assert (=> b!250709 (=> (not res!116271) (not e!155772))))

(assert (=> b!250709 (= res!116271 (not ((_ is Nil!3678) lt!101845)))))

(declare-fun d!70429 () Bool)

(declare-fun e!155771 () Bool)

(assert (=> d!70429 e!155771))

(declare-fun res!116268 () Bool)

(assert (=> d!70429 (=> res!116268 e!155771)))

(declare-fun lt!102272 () Bool)

(assert (=> d!70429 (= res!116268 (not lt!102272))))

(assert (=> d!70429 (= lt!102272 e!155770)))

(declare-fun res!116269 () Bool)

(assert (=> d!70429 (=> res!116269 e!155770)))

(assert (=> d!70429 (= res!116269 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70429 (= (isPrefix!383 lt!101834 lt!101845) lt!102272)))

(declare-fun b!250711 () Bool)

(assert (=> b!250711 (= e!155772 (isPrefix!383 (tail!458 lt!101834) (tail!458 lt!101845)))))

(declare-fun b!250712 () Bool)

(assert (=> b!250712 (= e!155771 (>= (size!2913 lt!101845) (size!2913 lt!101834)))))

(assert (= (and d!70429 (not res!116269)) b!250709))

(assert (= (and b!250709 res!116271) b!250710))

(assert (= (and b!250710 res!116270) b!250711))

(assert (= (and d!70429 (not res!116268)) b!250712))

(assert (=> b!250710 m!307097))

(declare-fun m!307415 () Bool)

(assert (=> b!250710 m!307415))

(assert (=> b!250711 m!307101))

(declare-fun m!307417 () Bool)

(assert (=> b!250711 m!307417))

(assert (=> b!250711 m!307101))

(assert (=> b!250711 m!307417))

(declare-fun m!307419 () Bool)

(assert (=> b!250711 m!307419))

(assert (=> b!250712 m!307065))

(assert (=> b!250712 m!306183))

(assert (=> b!249861 d!70429))

(assert (=> b!249861 d!70341))

(declare-fun d!70431 () Bool)

(declare-fun res!116274 () Bool)

(declare-fun e!155775 () Bool)

(assert (=> d!70431 (=> (not res!116274) (not e!155775))))

(declare-fun rulesValid!202 (LexerInterface!585 List!3689) Bool)

(assert (=> d!70431 (= res!116274 (rulesValid!202 thiss!17480 rules!1920))))

(assert (=> d!70431 (= (rulesInvariant!551 thiss!17480 rules!1920) e!155775)))

(declare-fun b!250715 () Bool)

(declare-datatypes ((List!3691 0))(
  ( (Nil!3681) (Cons!3681 (h!9078 String!4685) (t!35459 List!3691)) )
))
(declare-fun noDuplicateTag!202 (LexerInterface!585 List!3689 List!3691) Bool)

(assert (=> b!250715 (= e!155775 (noDuplicateTag!202 thiss!17480 rules!1920 Nil!3681))))

(assert (= (and d!70431 res!116274) b!250715))

(declare-fun m!307421 () Bool)

(assert (=> d!70431 m!307421))

(declare-fun m!307423 () Bool)

(assert (=> b!250715 m!307423))

(assert (=> b!249887 d!70431))

(declare-fun d!70433 () Bool)

(declare-fun c!47618 () Bool)

(assert (=> d!70433 (= c!47618 ((_ is IntegerValue!2163) (value!24237 (h!9077 tokens!465))))))

(declare-fun e!155778 () Bool)

(assert (=> d!70433 (= (inv!21 (value!24237 (h!9077 tokens!465))) e!155778)))

(declare-fun b!250716 () Bool)

(declare-fun e!155777 () Bool)

(assert (=> b!250716 (= e!155777 (inv!15 (value!24237 (h!9077 tokens!465))))))

(declare-fun b!250717 () Bool)

(assert (=> b!250717 (= e!155778 (inv!16 (value!24237 (h!9077 tokens!465))))))

(declare-fun b!250718 () Bool)

(declare-fun e!155776 () Bool)

(assert (=> b!250718 (= e!155776 (inv!17 (value!24237 (h!9077 tokens!465))))))

(declare-fun b!250719 () Bool)

(declare-fun res!116275 () Bool)

(assert (=> b!250719 (=> res!116275 e!155777)))

(assert (=> b!250719 (= res!116275 (not ((_ is IntegerValue!2165) (value!24237 (h!9077 tokens!465)))))))

(assert (=> b!250719 (= e!155776 e!155777)))

(declare-fun b!250720 () Bool)

(assert (=> b!250720 (= e!155778 e!155776)))

(declare-fun c!47617 () Bool)

(assert (=> b!250720 (= c!47617 ((_ is IntegerValue!2164) (value!24237 (h!9077 tokens!465))))))

(assert (= (and d!70433 c!47618) b!250717))

(assert (= (and d!70433 (not c!47618)) b!250720))

(assert (= (and b!250720 c!47617) b!250718))

(assert (= (and b!250720 (not c!47617)) b!250719))

(assert (= (and b!250719 (not res!116275)) b!250716))

(declare-fun m!307425 () Bool)

(assert (=> b!250716 m!307425))

(declare-fun m!307427 () Bool)

(assert (=> b!250717 m!307427))

(declare-fun m!307429 () Bool)

(assert (=> b!250718 m!307429))

(assert (=> b!249865 d!70433))

(declare-fun d!70435 () Bool)

(assert (=> d!70435 (= (list!1461 (seqFromList!775 lt!101845)) (list!1463 (c!47452 (seqFromList!775 lt!101845))))))

(declare-fun bs!26914 () Bool)

(assert (= bs!26914 d!70435))

(declare-fun m!307431 () Bool)

(assert (=> bs!26914 m!307431))

(assert (=> b!249864 d!70435))

(declare-fun d!70437 () Bool)

(assert (=> d!70437 (= (seqFromList!775 lt!101845) (fromListB!281 lt!101845))))

(declare-fun bs!26915 () Bool)

(assert (= bs!26915 d!70437))

(declare-fun m!307433 () Bool)

(assert (=> bs!26915 m!307433))

(assert (=> b!249864 d!70437))

(declare-fun b!250734 () Bool)

(declare-fun b_free!9349 () Bool)

(declare-fun b_next!9349 () Bool)

(assert (=> b!250734 (= b_free!9349 (not b_next!9349))))

(declare-fun tp!97188 () Bool)

(declare-fun b_and!18913 () Bool)

(assert (=> b!250734 (= tp!97188 b_and!18913)))

(declare-fun b_free!9351 () Bool)

(declare-fun b_next!9351 () Bool)

(assert (=> b!250734 (= b_free!9351 (not b_next!9351))))

(declare-fun t!35452 () Bool)

(declare-fun tb!12801 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) t!35452) tb!12801))

(declare-fun result!16158 () Bool)

(assert (= result!16158 result!16112))

(assert (=> b!249941 t!35452))

(declare-fun t!35454 () Bool)

(declare-fun tb!12803 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170)))) t!35454) tb!12803))

(declare-fun result!16160 () Bool)

(assert (= result!16160 result!16134))

(assert (=> d!70265 t!35454))

(assert (=> d!70279 t!35452))

(assert (=> b!250434 t!35454))

(declare-fun tp!97191 () Bool)

(declare-fun b_and!18915 () Bool)

(assert (=> b!250734 (= tp!97191 (and (=> t!35452 result!16158) (=> t!35454 result!16160) b_and!18915))))

(declare-fun e!155791 () Bool)

(assert (=> b!249889 (= tp!97105 e!155791)))

(declare-fun b!250733 () Bool)

(declare-fun e!155795 () Bool)

(declare-fun tp!97189 () Bool)

(declare-fun e!155792 () Bool)

(assert (=> b!250733 (= e!155792 (and tp!97189 (inv!4527 (tag!907 (rule!1276 (h!9077 (t!35394 tokens!465))))) (inv!4530 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) e!155795))))

(assert (=> b!250734 (= e!155795 (and tp!97188 tp!97191))))

(declare-fun e!155794 () Bool)

(declare-fun b!250731 () Bool)

(declare-fun tp!97190 () Bool)

(assert (=> b!250731 (= e!155791 (and (inv!4531 (h!9077 (t!35394 tokens!465))) e!155794 tp!97190))))

(declare-fun b!250732 () Bool)

(declare-fun tp!97192 () Bool)

(assert (=> b!250732 (= e!155794 (and (inv!21 (value!24237 (h!9077 (t!35394 tokens!465)))) e!155792 tp!97192))))

(assert (= b!250733 b!250734))

(assert (= b!250732 b!250733))

(assert (= b!250731 b!250732))

(assert (= (and b!249889 ((_ is Cons!3680) (t!35394 tokens!465))) b!250731))

(declare-fun m!307435 () Bool)

(assert (=> b!250733 m!307435))

(declare-fun m!307437 () Bool)

(assert (=> b!250733 m!307437))

(declare-fun m!307439 () Bool)

(assert (=> b!250731 m!307439))

(declare-fun m!307441 () Bool)

(assert (=> b!250732 m!307441))

(declare-fun b!250748 () Bool)

(declare-fun e!155799 () Bool)

(declare-fun tp!97206 () Bool)

(declare-fun tp!97203 () Bool)

(assert (=> b!250748 (= e!155799 (and tp!97206 tp!97203))))

(assert (=> b!249866 (= tp!97101 e!155799)))

(declare-fun b!250746 () Bool)

(declare-fun tp!97204 () Bool)

(declare-fun tp!97207 () Bool)

(assert (=> b!250746 (= e!155799 (and tp!97204 tp!97207))))

(declare-fun b!250747 () Bool)

(declare-fun tp!97205 () Bool)

(assert (=> b!250747 (= e!155799 tp!97205)))

(declare-fun b!250745 () Bool)

(declare-fun tp_is_empty!1771 () Bool)

(assert (=> b!250745 (= e!155799 tp_is_empty!1771)))

(assert (= (and b!249866 ((_ is ElementMatch!923) (regex!699 (rule!1276 separatorToken!170)))) b!250745))

(assert (= (and b!249866 ((_ is Concat!1645) (regex!699 (rule!1276 separatorToken!170)))) b!250746))

(assert (= (and b!249866 ((_ is Star!923) (regex!699 (rule!1276 separatorToken!170)))) b!250747))

(assert (= (and b!249866 ((_ is Union!923) (regex!699 (rule!1276 separatorToken!170)))) b!250748))

(declare-fun b!250752 () Bool)

(declare-fun e!155800 () Bool)

(declare-fun tp!97211 () Bool)

(declare-fun tp!97208 () Bool)

(assert (=> b!250752 (= e!155800 (and tp!97211 tp!97208))))

(assert (=> b!249877 (= tp!97108 e!155800)))

(declare-fun b!250750 () Bool)

(declare-fun tp!97209 () Bool)

(declare-fun tp!97212 () Bool)

(assert (=> b!250750 (= e!155800 (and tp!97209 tp!97212))))

(declare-fun b!250751 () Bool)

(declare-fun tp!97210 () Bool)

(assert (=> b!250751 (= e!155800 tp!97210)))

(declare-fun b!250749 () Bool)

(assert (=> b!250749 (= e!155800 tp_is_empty!1771)))

(assert (= (and b!249877 ((_ is ElementMatch!923) (regex!699 (rule!1276 (h!9077 tokens!465))))) b!250749))

(assert (= (and b!249877 ((_ is Concat!1645) (regex!699 (rule!1276 (h!9077 tokens!465))))) b!250750))

(assert (= (and b!249877 ((_ is Star!923) (regex!699 (rule!1276 (h!9077 tokens!465))))) b!250751))

(assert (= (and b!249877 ((_ is Union!923) (regex!699 (rule!1276 (h!9077 tokens!465))))) b!250752))

(declare-fun b!250756 () Bool)

(declare-fun e!155801 () Bool)

(declare-fun tp!97216 () Bool)

(declare-fun tp!97213 () Bool)

(assert (=> b!250756 (= e!155801 (and tp!97216 tp!97213))))

(assert (=> b!249880 (= tp!97102 e!155801)))

(declare-fun b!250754 () Bool)

(declare-fun tp!97214 () Bool)

(declare-fun tp!97217 () Bool)

(assert (=> b!250754 (= e!155801 (and tp!97214 tp!97217))))

(declare-fun b!250755 () Bool)

(declare-fun tp!97215 () Bool)

(assert (=> b!250755 (= e!155801 tp!97215)))

(declare-fun b!250753 () Bool)

(assert (=> b!250753 (= e!155801 tp_is_empty!1771)))

(assert (= (and b!249880 ((_ is ElementMatch!923) (regex!699 (h!9076 rules!1920)))) b!250753))

(assert (= (and b!249880 ((_ is Concat!1645) (regex!699 (h!9076 rules!1920)))) b!250754))

(assert (= (and b!249880 ((_ is Star!923) (regex!699 (h!9076 rules!1920)))) b!250755))

(assert (= (and b!249880 ((_ is Union!923) (regex!699 (h!9076 rules!1920)))) b!250756))

(declare-fun b!250767 () Bool)

(declare-fun b_free!9353 () Bool)

(declare-fun b_next!9353 () Bool)

(assert (=> b!250767 (= b_free!9353 (not b_next!9353))))

(declare-fun tp!97227 () Bool)

(declare-fun b_and!18917 () Bool)

(assert (=> b!250767 (= tp!97227 b_and!18917)))

(declare-fun b_free!9355 () Bool)

(declare-fun b_next!9355 () Bool)

(assert (=> b!250767 (= b_free!9355 (not b_next!9355))))

(declare-fun t!35456 () Bool)

(declare-fun tb!12805 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) t!35456) tb!12805))

(declare-fun result!16166 () Bool)

(assert (= result!16166 result!16112))

(assert (=> b!249941 t!35456))

(declare-fun t!35458 () Bool)

(declare-fun tb!12807 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170)))) t!35458) tb!12807))

(declare-fun result!16168 () Bool)

(assert (= result!16168 result!16134))

(assert (=> d!70265 t!35458))

(assert (=> d!70279 t!35456))

(assert (=> b!250434 t!35458))

(declare-fun b_and!18919 () Bool)

(declare-fun tp!97229 () Bool)

(assert (=> b!250767 (= tp!97229 (and (=> t!35456 result!16166) (=> t!35458 result!16168) b_and!18919))))

(declare-fun e!155810 () Bool)

(assert (=> b!250767 (= e!155810 (and tp!97227 tp!97229))))

(declare-fun b!250766 () Bool)

(declare-fun e!155813 () Bool)

(declare-fun tp!97226 () Bool)

(assert (=> b!250766 (= e!155813 (and tp!97226 (inv!4527 (tag!907 (h!9076 (t!35393 rules!1920)))) (inv!4530 (transformation!699 (h!9076 (t!35393 rules!1920)))) e!155810))))

(declare-fun b!250765 () Bool)

(declare-fun e!155811 () Bool)

(declare-fun tp!97228 () Bool)

(assert (=> b!250765 (= e!155811 (and e!155813 tp!97228))))

(assert (=> b!249863 (= tp!97111 e!155811)))

(assert (= b!250766 b!250767))

(assert (= b!250765 b!250766))

(assert (= (and b!249863 ((_ is Cons!3679) (t!35393 rules!1920))) b!250765))

(declare-fun m!307443 () Bool)

(assert (=> b!250766 m!307443))

(declare-fun m!307445 () Bool)

(assert (=> b!250766 m!307445))

(declare-fun b!250770 () Bool)

(declare-fun e!155816 () Bool)

(assert (=> b!250770 (= e!155816 true)))

(declare-fun b!250769 () Bool)

(declare-fun e!155815 () Bool)

(assert (=> b!250769 (= e!155815 e!155816)))

(declare-fun b!250768 () Bool)

(declare-fun e!155814 () Bool)

(assert (=> b!250768 (= e!155814 e!155815)))

(assert (=> b!249902 e!155814))

(assert (= b!250769 b!250770))

(assert (= b!250768 b!250769))

(assert (= (and b!249902 ((_ is Cons!3679) (t!35393 rules!1920))) b!250768))

(assert (=> b!250770 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8286))))

(assert (=> b!250770 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8286))))

(declare-fun b!250775 () Bool)

(declare-fun e!155819 () Bool)

(declare-fun tp!97232 () Bool)

(assert (=> b!250775 (= e!155819 (and tp_is_empty!1771 tp!97232))))

(assert (=> b!249876 (= tp!97113 e!155819)))

(assert (= (and b!249876 ((_ is Cons!3678) (originalCharacters!742 separatorToken!170))) b!250775))

(declare-fun b!250776 () Bool)

(declare-fun e!155820 () Bool)

(declare-fun tp!97233 () Bool)

(assert (=> b!250776 (= e!155820 (and tp_is_empty!1771 tp!97233))))

(assert (=> b!249865 (= tp!97106 e!155820)))

(assert (= (and b!249865 ((_ is Cons!3678) (originalCharacters!742 (h!9077 tokens!465)))) b!250776))

(declare-fun b_lambda!7373 () Bool)

(assert (= b_lambda!7349 (or b!249874 b_lambda!7373)))

(declare-fun bs!26916 () Bool)

(declare-fun d!70439 () Bool)

(assert (= bs!26916 (and d!70439 b!249874)))

(assert (=> bs!26916 (= (dynLambda!1813 lambda!8286 (h!9077 tokens!465)) (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (h!9077 tokens!465)))))

(assert (=> bs!26916 m!306101))

(assert (=> d!70295 d!70439))

(declare-fun b_lambda!7375 () Bool)

(assert (= b_lambda!7341 (or b!249873 b_lambda!7375)))

(declare-fun bs!26917 () Bool)

(declare-fun d!70441 () Bool)

(assert (= bs!26917 (and d!70441 b!249873)))

(assert (=> bs!26917 (= (dynLambda!1813 lambda!8285 (h!9077 tokens!465)) (not (isSeparator!699 (rule!1276 (h!9077 tokens!465)))))))

(assert (=> b!250249 d!70441))

(declare-fun b_lambda!7377 () Bool)

(assert (= b_lambda!7343 (or (and b!250734 b_free!9351 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))))) (and b!249891 b_free!9331 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))))) (and b!250767 b_free!9355 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))))) (and b!249885 b_free!9339) (and b!249870 b_free!9335 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))))) b_lambda!7377)))

(declare-fun b_lambda!7379 () Bool)

(assert (= b_lambda!7357 (or b!249873 b_lambda!7379)))

(declare-fun bs!26918 () Bool)

(declare-fun d!70443 () Bool)

(assert (= bs!26918 (and d!70443 b!249873)))

(assert (=> bs!26918 (= (dynLambda!1813 lambda!8285 (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))) (not (isSeparator!699 (rule!1276 (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))))))))

(assert (=> b!250615 d!70443))

(declare-fun b_lambda!7381 () Bool)

(assert (= b_lambda!7345 (or (and b!249870 b_free!9335 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) (and b!250767 b_free!9355 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) (and b!249891 b_free!9331) (and b!250734 b_free!9351 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) (and b!249885 b_free!9339 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) b_lambda!7381)))

(declare-fun b_lambda!7383 () Bool)

(assert (= b_lambda!7333 (or (and b!249870 b_free!9335 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) (and b!250767 b_free!9355 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) (and b!249891 b_free!9331) (and b!250734 b_free!9351 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) (and b!249885 b_free!9339 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) b_lambda!7383)))

(declare-fun b_lambda!7385 () Bool)

(assert (= b_lambda!7353 (or (and b!250734 b_free!9351 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))))) (and b!249891 b_free!9331 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))))) (and b!250767 b_free!9355 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))))) (and b!249885 b_free!9339) (and b!249870 b_free!9335 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))))) b_lambda!7385)))

(check-sat (not b!250272) (not b!250768) (not b!250431) (not b_next!9333) (not b!250775) (not d!70329) (not b!250756) (not b!249994) (not b!250521) (not b!250707) (not d!70279) (not b!249941) (not b!250290) (not d!70235) (not b!249999) (not d!70265) (not b!250192) (not bm!13241) (not b!250717) (not b!250244) (not b!250058) b_and!18901 (not b!250517) (not b!249923) (not b!250616) (not d!70295) (not b!250271) (not b!250518) (not d!70259) (not d!70257) (not d!70155) (not b!250294) (not b!250715) (not d!70255) (not b!249942) (not d!70183) (not b!249922) (not b!250528) (not d!70391) (not b_lambda!7373) (not b!250398) (not b!250265) (not bm!13227) (not b!250303) (not b!250578) (not b!250449) (not b_lambda!7383) (not b!250308) (not bm!13196) (not b!250284) (not b!250451) (not b!250274) (not b!250395) (not b!250732) (not bm!13251) (not b_next!9353) (not b!250711) (not b!250236) (not b!250443) b_and!18845 (not b!250733) (not b!250448) (not b!250004) (not d!70389) (not d!70269) (not b!249996) (not b!250430) (not d!70357) (not b!250436) (not d!70297) (not b_lambda!7379) (not b!250429) (not b!250716) (not d!70403) (not b!250731) (not b!250536) (not b!250241) (not b!250061) (not b!250190) (not b!250393) (not b!250582) (not b_next!9337) b_and!18853 (not b!250577) (not b!250746) (not b!250454) (not b!250752) (not b!250399) (not b!250403) (not b!250209) (not d!70281) (not b!250312) (not d!70277) (not d!70191) (not d!70271) (not d!70153) (not d!70427) (not b!250278) (not d!70193) (not b!250579) (not b!250523) (not b!250530) (not b!250243) (not tb!12787) (not b!250750) (not b!250581) (not b!250447) (not b!250452) (not b!250400) (not b!250712) (not b!250238) (not b!250283) (not b!250182) (not b!250298) (not b!250748) (not d!70231) (not b!250239) (not b!250307) (not b!250191) (not b!250747) b_and!18913 (not b_lambda!7377) (not b!250765) (not d!70315) (not b_lambda!7381) (not bm!13240) (not d!70275) (not b!250250) (not b_next!9331) (not b!250186) (not bs!26916) (not bm!13245) (not b!250059) (not b!250267) (not b!250253) (not b!250295) (not bm!13231) (not b_lambda!7375) (not b!250434) (not d!70283) (not b!250613) (not b!250008) (not d!70299) (not b!250766) (not b!250432) (not b!250718) (not b!250252) (not bm!13252) (not b!250751) (not bm!13229) (not b!250060) b_and!18849 (not d!70267) (not d!70347) (not bm!13236) (not bm!13258) (not d!70325) b_and!18917 (not b!250444) (not b!250710) (not b!250529) (not bm!13242) (not d!70431) (not b!250524) (not b!250446) (not d!70337) (not b_next!9349) (not b_next!9335) (not d!70321) (not b!250397) b_and!18899 (not b!250066) (not bm!13195) (not d!70181) (not bm!13271) (not d!70341) tp_is_empty!1771 (not b!250266) (not b!250435) (not b_lambda!7385) (not d!70339) (not b!250208) (not b!250282) (not b!250450) (not b!250183) (not b!250583) (not b!250288) (not b_next!9339) b_and!18903 (not d!70179) (not b!249953) (not b!250237) (not b!250776) (not d!70331) (not b!250445) (not b!250304) (not b!250396) (not b!250275) (not d!70293) (not d!70335) (not b!250708) (not b!250311) (not b!250580) (not b!250535) (not d!70437) (not b!250755) (not b!250065) (not tb!12769) (not d!70425) (not b!250455) (not d!70157) (not b!250301) (not b!250289) (not bm!13199) (not bm!13238) (not b!250754) (not d!70189) (not d!70237) (not b_next!9355) (not d!70251) (not b_next!9351) (not d!70263) (not b_next!9329) b_and!18915 (not d!70435) (not bm!13235) (not b!250287) (not b!250240) (not d!70273) (not d!70365) (not b!250516) (not d!70327) (not d!70223) (not b!250069) b_and!18919)
(check-sat (not b_next!9333) b_and!18901 b_and!18913 (not b_next!9331) b_and!18849 b_and!18917 b_and!18899 (not b_next!9339) b_and!18903 b_and!18919 b_and!18845 (not b_next!9353) (not b_next!9337) b_and!18853 (not b_next!9335) (not b_next!9349) (not b_next!9355) (not b_next!9351) (not b_next!9329) b_and!18915)
(get-model)

(declare-fun b!250797 () Bool)

(declare-fun res!116307 () Bool)

(declare-fun e!155829 () Bool)

(assert (=> b!250797 (=> (not res!116307) (not e!155829))))

(declare-fun lt!102279 () Option!760)

(assert (=> b!250797 (= res!116307 (= (value!24237 (_1!2273 (get!1209 lt!102279))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102279)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102279)))))))))

(declare-fun b!250798 () Bool)

(assert (=> b!250798 (= e!155829 (contains!678 (t!35393 rules!1920) (rule!1276 (_1!2273 (get!1209 lt!102279)))))))

(declare-fun b!250799 () Bool)

(declare-fun e!155831 () Option!760)

(declare-fun lt!102277 () Option!760)

(declare-fun lt!102278 () Option!760)

(assert (=> b!250799 (= e!155831 (ite (and ((_ is None!759) lt!102277) ((_ is None!759) lt!102278)) None!759 (ite ((_ is None!759) lt!102278) lt!102277 (ite ((_ is None!759) lt!102277) lt!102278 (ite (>= (size!2910 (_1!2273 (v!14538 lt!102277))) (size!2910 (_1!2273 (v!14538 lt!102278)))) lt!102277 lt!102278)))))))

(declare-fun call!13277 () Option!760)

(assert (=> b!250799 (= lt!102277 call!13277)))

(assert (=> b!250799 (= lt!102278 (maxPrefix!315 thiss!17480 (t!35393 (t!35393 rules!1920)) lt!101845))))

(declare-fun b!250800 () Bool)

(declare-fun res!116305 () Bool)

(assert (=> b!250800 (=> (not res!116305) (not e!155829))))

(assert (=> b!250800 (= res!116305 (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102279)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102279))))))))

(declare-fun b!250801 () Bool)

(declare-fun e!155830 () Bool)

(assert (=> b!250801 (= e!155830 e!155829)))

(declare-fun res!116304 () Bool)

(assert (=> b!250801 (=> (not res!116304) (not e!155829))))

(assert (=> b!250801 (= res!116304 (isDefined!611 lt!102279))))

(declare-fun b!250802 () Bool)

(declare-fun res!116302 () Bool)

(assert (=> b!250802 (=> (not res!116302) (not e!155829))))

(assert (=> b!250802 (= res!116302 (< (size!2913 (_2!2273 (get!1209 lt!102279))) (size!2913 lt!101845)))))

(declare-fun b!250803 () Bool)

(assert (=> b!250803 (= e!155831 call!13277)))

(declare-fun bm!13272 () Bool)

(assert (=> bm!13272 (= call!13277 (maxPrefixOneRule!129 thiss!17480 (h!9076 (t!35393 rules!1920)) lt!101845))))

(declare-fun d!70451 () Bool)

(assert (=> d!70451 e!155830))

(declare-fun res!116303 () Bool)

(assert (=> d!70451 (=> res!116303 e!155830)))

(assert (=> d!70451 (= res!116303 (isEmpty!2282 lt!102279))))

(assert (=> d!70451 (= lt!102279 e!155831)))

(declare-fun c!47623 () Bool)

(assert (=> d!70451 (= c!47623 (and ((_ is Cons!3679) (t!35393 rules!1920)) ((_ is Nil!3679) (t!35393 (t!35393 rules!1920)))))))

(declare-fun lt!102281 () Unit!4472)

(declare-fun lt!102280 () Unit!4472)

(assert (=> d!70451 (= lt!102281 lt!102280)))

(assert (=> d!70451 (isPrefix!383 lt!101845 lt!101845)))

(assert (=> d!70451 (= lt!102280 (lemmaIsPrefixRefl!195 lt!101845 lt!101845))))

(assert (=> d!70451 (rulesValidInductive!186 thiss!17480 (t!35393 rules!1920))))

(assert (=> d!70451 (= (maxPrefix!315 thiss!17480 (t!35393 rules!1920) lt!101845) lt!102279)))

(declare-fun b!250804 () Bool)

(declare-fun res!116301 () Bool)

(assert (=> b!250804 (=> (not res!116301) (not e!155829))))

(assert (=> b!250804 (= res!116301 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102279)))) (_2!2273 (get!1209 lt!102279))) lt!101845))))

(declare-fun b!250805 () Bool)

(declare-fun res!116306 () Bool)

(assert (=> b!250805 (=> (not res!116306) (not e!155829))))

(assert (=> b!250805 (= res!116306 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102279)))) (originalCharacters!742 (_1!2273 (get!1209 lt!102279)))))))

(assert (= (and d!70451 c!47623) b!250803))

(assert (= (and d!70451 (not c!47623)) b!250799))

(assert (= (or b!250803 b!250799) bm!13272))

(assert (= (and d!70451 (not res!116303)) b!250801))

(assert (= (and b!250801 res!116304) b!250805))

(assert (= (and b!250805 res!116306) b!250802))

(assert (= (and b!250802 res!116302) b!250804))

(assert (= (and b!250804 res!116301) b!250797))

(assert (= (and b!250797 res!116307) b!250800))

(assert (= (and b!250800 res!116305) b!250798))

(declare-fun m!307451 () Bool)

(assert (=> b!250797 m!307451))

(declare-fun m!307453 () Bool)

(assert (=> b!250797 m!307453))

(assert (=> b!250797 m!307453))

(declare-fun m!307455 () Bool)

(assert (=> b!250797 m!307455))

(declare-fun m!307457 () Bool)

(assert (=> b!250801 m!307457))

(declare-fun m!307459 () Bool)

(assert (=> bm!13272 m!307459))

(assert (=> b!250800 m!307451))

(declare-fun m!307461 () Bool)

(assert (=> b!250800 m!307461))

(assert (=> b!250800 m!307461))

(declare-fun m!307463 () Bool)

(assert (=> b!250800 m!307463))

(assert (=> b!250800 m!307463))

(declare-fun m!307465 () Bool)

(assert (=> b!250800 m!307465))

(assert (=> b!250805 m!307451))

(assert (=> b!250805 m!307461))

(assert (=> b!250805 m!307461))

(assert (=> b!250805 m!307463))

(assert (=> b!250804 m!307451))

(assert (=> b!250804 m!307461))

(assert (=> b!250804 m!307461))

(assert (=> b!250804 m!307463))

(assert (=> b!250804 m!307463))

(declare-fun m!307467 () Bool)

(assert (=> b!250804 m!307467))

(assert (=> b!250802 m!307451))

(declare-fun m!307469 () Bool)

(assert (=> b!250802 m!307469))

(assert (=> b!250802 m!307065))

(declare-fun m!307471 () Bool)

(assert (=> d!70451 m!307471))

(assert (=> d!70451 m!307069))

(assert (=> d!70451 m!307071))

(declare-fun m!307473 () Bool)

(assert (=> d!70451 m!307473))

(declare-fun m!307475 () Bool)

(assert (=> b!250799 m!307475))

(assert (=> b!250798 m!307451))

(declare-fun m!307477 () Bool)

(assert (=> b!250798 m!307477))

(assert (=> b!250449 d!70451))

(declare-fun d!70453 () Bool)

(declare-fun lt!102282 () Bool)

(assert (=> d!70453 (= lt!102282 (isEmpty!2278 (list!1460 (_1!2274 lt!102163))))))

(assert (=> d!70453 (= lt!102282 (isEmpty!2286 (c!47454 (_1!2274 lt!102163))))))

(assert (=> d!70453 (= (isEmpty!2280 (_1!2274 lt!102163)) lt!102282)))

(declare-fun bs!26919 () Bool)

(assert (= bs!26919 d!70453))

(assert (=> bs!26919 m!306981))

(assert (=> bs!26919 m!306981))

(declare-fun m!307479 () Bool)

(assert (=> bs!26919 m!307479))

(declare-fun m!307481 () Bool)

(assert (=> bs!26919 m!307481))

(assert (=> b!250430 d!70453))

(declare-fun d!70455 () Bool)

(declare-fun lt!102285 () Int)

(assert (=> d!70455 (>= lt!102285 0)))

(declare-fun e!155836 () Int)

(assert (=> d!70455 (= lt!102285 e!155836)))

(declare-fun c!47626 () Bool)

(assert (=> d!70455 (= c!47626 ((_ is Nil!3678) lt!102116))))

(assert (=> d!70455 (= (size!2913 lt!102116) lt!102285)))

(declare-fun b!250816 () Bool)

(assert (=> b!250816 (= e!155836 0)))

(declare-fun b!250817 () Bool)

(assert (=> b!250817 (= e!155836 (+ 1 (size!2913 (t!35392 lt!102116))))))

(assert (= (and d!70455 c!47626) b!250816))

(assert (= (and d!70455 (not c!47626)) b!250817))

(declare-fun m!307495 () Bool)

(assert (=> b!250817 m!307495))

(assert (=> b!250308 d!70455))

(declare-fun d!70457 () Bool)

(declare-fun lt!102286 () Int)

(assert (=> d!70457 (>= lt!102286 0)))

(declare-fun e!155837 () Int)

(assert (=> d!70457 (= lt!102286 e!155837)))

(declare-fun c!47627 () Bool)

(assert (=> d!70457 (= c!47627 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70457 (= (size!2913 lt!101834) lt!102286)))

(declare-fun b!250818 () Bool)

(assert (=> b!250818 (= e!155837 0)))

(declare-fun b!250819 () Bool)

(assert (=> b!250819 (= e!155837 (+ 1 (size!2913 (t!35392 lt!101834))))))

(assert (= (and d!70457 c!47627) b!250818))

(assert (= (and d!70457 (not c!47627)) b!250819))

(declare-fun m!307497 () Bool)

(assert (=> b!250819 m!307497))

(assert (=> b!250308 d!70457))

(declare-fun d!70461 () Bool)

(declare-fun lt!102287 () Int)

(assert (=> d!70461 (>= lt!102287 0)))

(declare-fun e!155838 () Int)

(assert (=> d!70461 (= lt!102287 e!155838)))

(declare-fun c!47628 () Bool)

(assert (=> d!70461 (= c!47628 ((_ is Nil!3678) lt!101837))))

(assert (=> d!70461 (= (size!2913 lt!101837) lt!102287)))

(declare-fun b!250820 () Bool)

(assert (=> b!250820 (= e!155838 0)))

(declare-fun b!250821 () Bool)

(assert (=> b!250821 (= e!155838 (+ 1 (size!2913 (t!35392 lt!101837))))))

(assert (= (and d!70461 c!47628) b!250820))

(assert (= (and d!70461 (not c!47628)) b!250821))

(declare-fun m!307499 () Bool)

(assert (=> b!250821 m!307499))

(assert (=> b!250308 d!70461))

(declare-fun b!250823 () Bool)

(declare-fun res!116316 () Bool)

(declare-fun e!155841 () Bool)

(assert (=> b!250823 (=> (not res!116316) (not e!155841))))

(assert (=> b!250823 (= res!116316 (= (head!866 (tail!458 lt!101834)) (head!866 (tail!458 lt!101845))))))

(declare-fun b!250822 () Bool)

(declare-fun e!155839 () Bool)

(assert (=> b!250822 (= e!155839 e!155841)))

(declare-fun res!116317 () Bool)

(assert (=> b!250822 (=> (not res!116317) (not e!155841))))

(assert (=> b!250822 (= res!116317 (not ((_ is Nil!3678) (tail!458 lt!101845))))))

(declare-fun d!70465 () Bool)

(declare-fun e!155840 () Bool)

(assert (=> d!70465 e!155840))

(declare-fun res!116314 () Bool)

(assert (=> d!70465 (=> res!116314 e!155840)))

(declare-fun lt!102288 () Bool)

(assert (=> d!70465 (= res!116314 (not lt!102288))))

(assert (=> d!70465 (= lt!102288 e!155839)))

(declare-fun res!116315 () Bool)

(assert (=> d!70465 (=> res!116315 e!155839)))

(assert (=> d!70465 (= res!116315 ((_ is Nil!3678) (tail!458 lt!101834)))))

(assert (=> d!70465 (= (isPrefix!383 (tail!458 lt!101834) (tail!458 lt!101845)) lt!102288)))

(declare-fun b!250824 () Bool)

(assert (=> b!250824 (= e!155841 (isPrefix!383 (tail!458 (tail!458 lt!101834)) (tail!458 (tail!458 lt!101845))))))

(declare-fun b!250825 () Bool)

(assert (=> b!250825 (= e!155840 (>= (size!2913 (tail!458 lt!101845)) (size!2913 (tail!458 lt!101834))))))

(assert (= (and d!70465 (not res!116315)) b!250822))

(assert (= (and b!250822 res!116317) b!250823))

(assert (= (and b!250823 res!116316) b!250824))

(assert (= (and d!70465 (not res!116314)) b!250825))

(assert (=> b!250823 m!307101))

(declare-fun m!307501 () Bool)

(assert (=> b!250823 m!307501))

(assert (=> b!250823 m!307417))

(declare-fun m!307503 () Bool)

(assert (=> b!250823 m!307503))

(assert (=> b!250824 m!307101))

(declare-fun m!307505 () Bool)

(assert (=> b!250824 m!307505))

(assert (=> b!250824 m!307417))

(declare-fun m!307507 () Bool)

(assert (=> b!250824 m!307507))

(assert (=> b!250824 m!307505))

(assert (=> b!250824 m!307507))

(declare-fun m!307509 () Bool)

(assert (=> b!250824 m!307509))

(assert (=> b!250825 m!307417))

(declare-fun m!307511 () Bool)

(assert (=> b!250825 m!307511))

(assert (=> b!250825 m!307101))

(declare-fun m!307513 () Bool)

(assert (=> b!250825 m!307513))

(assert (=> b!250711 d!70465))

(declare-fun d!70467 () Bool)

(assert (=> d!70467 (= (tail!458 lt!101834) (t!35392 lt!101834))))

(assert (=> b!250711 d!70467))

(declare-fun d!70469 () Bool)

(assert (=> d!70469 (= (tail!458 lt!101845) (t!35392 lt!101845))))

(assert (=> b!250711 d!70469))

(declare-fun b!250826 () Bool)

(declare-fun e!155842 () List!3688)

(assert (=> b!250826 (= e!155842 (printList!269 thiss!17480 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680))))))

(declare-fun b!250827 () Bool)

(assert (=> b!250827 (= e!155842 (Cons!3678 (h!9075 (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) (++!942 (t!35392 (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) (printList!269 thiss!17480 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680))))))))

(declare-fun e!155843 () Bool)

(declare-fun b!250829 () Bool)

(declare-fun lt!102289 () List!3688)

(assert (=> b!250829 (= e!155843 (or (not (= (printList!269 thiss!17480 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680))) Nil!3678)) (= lt!102289 (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))))))

(declare-fun d!70471 () Bool)

(assert (=> d!70471 e!155843))

(declare-fun res!116319 () Bool)

(assert (=> d!70471 (=> (not res!116319) (not e!155843))))

(assert (=> d!70471 (= res!116319 (= (content!513 lt!102289) ((_ map or) (content!513 (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) (content!513 (printList!269 thiss!17480 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))))))

(assert (=> d!70471 (= lt!102289 e!155842)))

(declare-fun c!47629 () Bool)

(assert (=> d!70471 (= c!47629 ((_ is Nil!3678) (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))))))

(assert (=> d!70471 (= (++!942 (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))) (printList!269 thiss!17480 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680)))) lt!102289)))

(declare-fun b!250828 () Bool)

(declare-fun res!116318 () Bool)

(assert (=> b!250828 (=> (not res!116318) (not e!155843))))

(assert (=> b!250828 (= res!116318 (= (size!2913 lt!102289) (+ (size!2913 (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) (size!2913 (printList!269 thiss!17480 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))))))

(assert (= (and d!70471 c!47629) b!250826))

(assert (= (and d!70471 (not c!47629)) b!250827))

(assert (= (and d!70471 res!116319) b!250828))

(assert (= (and b!250828 res!116318) b!250829))

(assert (=> b!250827 m!306351))

(declare-fun m!307515 () Bool)

(assert (=> b!250827 m!307515))

(declare-fun m!307517 () Bool)

(assert (=> d!70471 m!307517))

(assert (=> d!70471 m!306349))

(declare-fun m!307519 () Bool)

(assert (=> d!70471 m!307519))

(assert (=> d!70471 m!306351))

(declare-fun m!307521 () Bool)

(assert (=> d!70471 m!307521))

(declare-fun m!307523 () Bool)

(assert (=> b!250828 m!307523))

(assert (=> b!250828 m!306349))

(declare-fun m!307525 () Bool)

(assert (=> b!250828 m!307525))

(assert (=> b!250828 m!306351))

(declare-fun m!307527 () Bool)

(assert (=> b!250828 m!307527))

(assert (=> b!250004 d!70471))

(declare-fun d!70473 () Bool)

(assert (=> d!70473 (= (list!1461 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))) (list!1463 (c!47452 (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))))))

(declare-fun bs!26920 () Bool)

(assert (= bs!26920 d!70473))

(declare-fun m!307529 () Bool)

(assert (=> bs!26920 m!307529))

(assert (=> b!250004 d!70473))

(declare-fun d!70475 () Bool)

(declare-fun lt!102290 () BalanceConc!2448)

(assert (=> d!70475 (= (list!1461 lt!102290) (originalCharacters!742 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))))

(assert (=> d!70475 (= lt!102290 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) (value!24237 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))))

(assert (=> d!70475 (= (charsOf!354 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))) lt!102290)))

(declare-fun b_lambda!7389 () Bool)

(assert (=> (not b_lambda!7389) (not d!70475)))

(declare-fun t!35465 () Bool)

(declare-fun tb!12811 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))) t!35465) tb!12811))

(declare-fun b!250832 () Bool)

(declare-fun e!155846 () Bool)

(declare-fun tp!97234 () Bool)

(assert (=> b!250832 (= e!155846 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) (value!24237 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))) tp!97234))))

(declare-fun result!16176 () Bool)

(assert (=> tb!12811 (= result!16176 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) (value!24237 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) e!155846))))

(assert (= tb!12811 b!250832))

(declare-fun m!307531 () Bool)

(assert (=> b!250832 m!307531))

(declare-fun m!307533 () Bool)

(assert (=> tb!12811 m!307533))

(assert (=> d!70475 t!35465))

(declare-fun b_and!18921 () Bool)

(assert (= b_and!18915 (and (=> t!35465 result!16176) b_and!18921)))

(declare-fun t!35467 () Bool)

(declare-fun tb!12813 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))) t!35467) tb!12813))

(declare-fun result!16178 () Bool)

(assert (= result!16178 result!16176))

(assert (=> d!70475 t!35467))

(declare-fun b_and!18925 () Bool)

(assert (= b_and!18899 (and (=> t!35467 result!16178) b_and!18925)))

(declare-fun tb!12815 () Bool)

(declare-fun t!35469 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))) t!35469) tb!12815))

(declare-fun result!16180 () Bool)

(assert (= result!16180 result!16176))

(assert (=> d!70475 t!35469))

(declare-fun b_and!18927 () Bool)

(assert (= b_and!18903 (and (=> t!35469 result!16180) b_and!18927)))

(declare-fun tb!12819 () Bool)

(declare-fun t!35473 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))) t!35473) tb!12819))

(declare-fun result!16184 () Bool)

(assert (= result!16184 result!16176))

(assert (=> d!70475 t!35473))

(declare-fun b_and!18929 () Bool)

(assert (= b_and!18919 (and (=> t!35473 result!16184) b_and!18929)))

(declare-fun tb!12821 () Bool)

(declare-fun t!35475 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))) t!35475) tb!12821))

(declare-fun result!16186 () Bool)

(assert (= result!16186 result!16176))

(assert (=> d!70475 t!35475))

(declare-fun b_and!18931 () Bool)

(assert (= b_and!18901 (and (=> t!35475 result!16186) b_and!18931)))

(declare-fun m!307537 () Bool)

(assert (=> d!70475 m!307537))

(declare-fun m!307539 () Bool)

(assert (=> d!70475 m!307539))

(assert (=> b!250004 d!70475))

(declare-fun d!70477 () Bool)

(declare-fun c!47630 () Bool)

(assert (=> d!70477 (= c!47630 ((_ is Cons!3680) (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680))))))

(declare-fun e!155848 () List!3688)

(assert (=> d!70477 (= (printList!269 thiss!17480 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680))) e!155848)))

(declare-fun b!250833 () Bool)

(assert (=> b!250833 (= e!155848 (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680))))) (printList!269 thiss!17480 (t!35394 (t!35394 (Cons!3680 (h!9077 tokens!465) Nil!3680))))))))

(declare-fun b!250834 () Bool)

(assert (=> b!250834 (= e!155848 Nil!3678)))

(assert (= (and d!70477 c!47630) b!250833))

(assert (= (and d!70477 (not c!47630)) b!250834))

(declare-fun m!307541 () Bool)

(assert (=> b!250833 m!307541))

(assert (=> b!250833 m!307541))

(declare-fun m!307543 () Bool)

(assert (=> b!250833 m!307543))

(declare-fun m!307545 () Bool)

(assert (=> b!250833 m!307545))

(assert (=> b!250833 m!307543))

(assert (=> b!250833 m!307545))

(declare-fun m!307547 () Bool)

(assert (=> b!250833 m!307547))

(assert (=> b!250004 d!70477))

(declare-fun d!70479 () Bool)

(declare-fun lt!102291 () Int)

(assert (=> d!70479 (>= lt!102291 0)))

(declare-fun e!155849 () Int)

(assert (=> d!70479 (= lt!102291 e!155849)))

(declare-fun c!47631 () Bool)

(assert (=> d!70479 (= c!47631 ((_ is Nil!3678) (_2!2273 (get!1209 lt!102084))))))

(assert (=> d!70479 (= (size!2913 (_2!2273 (get!1209 lt!102084))) lt!102291)))

(declare-fun b!250835 () Bool)

(assert (=> b!250835 (= e!155849 0)))

(declare-fun b!250836 () Bool)

(assert (=> b!250836 (= e!155849 (+ 1 (size!2913 (t!35392 (_2!2273 (get!1209 lt!102084))))))))

(assert (= (and d!70479 c!47631) b!250835))

(assert (= (and d!70479 (not c!47631)) b!250836))

(declare-fun m!307549 () Bool)

(assert (=> b!250836 m!307549))

(assert (=> b!250241 d!70479))

(declare-fun d!70481 () Bool)

(assert (=> d!70481 (= (get!1209 lt!102084) (v!14538 lt!102084))))

(assert (=> b!250241 d!70481))

(assert (=> b!250241 d!70457))

(declare-fun d!70483 () Bool)

(assert (=> d!70483 true))

(declare-fun lambda!8329 () Int)

(declare-fun order!2739 () Int)

(declare-fun dynLambda!1815 (Int Int) Int)

(assert (=> d!70483 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1815 order!2739 lambda!8329))))

(assert (=> d!70483 true))

(assert (=> d!70483 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1815 order!2739 lambda!8329))))

(declare-fun Forall!155 (Int) Bool)

(assert (=> d!70483 (= (semiInverseModEq!236 (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (Forall!155 lambda!8329))))

(declare-fun bs!26922 () Bool)

(assert (= bs!26922 d!70483))

(declare-fun m!307555 () Bool)

(assert (=> bs!26922 m!307555))

(assert (=> d!70335 d!70483))

(declare-fun lt!102297 () BalanceConc!2448)

(declare-fun e!155857 () Bool)

(declare-fun b!250857 () Bool)

(assert (=> b!250857 (= e!155857 (= (list!1461 lt!102297) (++!942 (list!1461 e!155497) (list!1461 (ite c!47556 lt!102100 call!13250)))))))

(declare-fun d!70489 () Bool)

(assert (=> d!70489 e!155857))

(declare-fun res!116333 () Bool)

(assert (=> d!70489 (=> (not res!116333) (not e!155857))))

(declare-fun appendAssocInst!50 (Conc!1220 Conc!1220) Bool)

(assert (=> d!70489 (= res!116333 (appendAssocInst!50 (c!47452 e!155497) (c!47452 (ite c!47556 lt!102100 call!13250))))))

(declare-fun ++!945 (Conc!1220 Conc!1220) Conc!1220)

(assert (=> d!70489 (= lt!102297 (BalanceConc!2449 (++!945 (c!47452 e!155497) (c!47452 (ite c!47556 lt!102100 call!13250)))))))

(assert (=> d!70489 (= (++!943 e!155497 (ite c!47556 lt!102100 call!13250)) lt!102297)))

(declare-fun b!250855 () Bool)

(declare-fun res!116331 () Bool)

(assert (=> b!250855 (=> (not res!116331) (not e!155857))))

(declare-fun height!134 (Conc!1220) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!250855 (= res!116331 (<= (height!134 (++!945 (c!47452 e!155497) (c!47452 (ite c!47556 lt!102100 call!13250)))) (+ (max!0 (height!134 (c!47452 e!155497)) (height!134 (c!47452 (ite c!47556 lt!102100 call!13250)))) 1)))))

(declare-fun b!250854 () Bool)

(declare-fun res!116332 () Bool)

(assert (=> b!250854 (=> (not res!116332) (not e!155857))))

(declare-fun isBalanced!317 (Conc!1220) Bool)

(assert (=> b!250854 (= res!116332 (isBalanced!317 (++!945 (c!47452 e!155497) (c!47452 (ite c!47556 lt!102100 call!13250)))))))

(declare-fun b!250856 () Bool)

(declare-fun res!116334 () Bool)

(assert (=> b!250856 (=> (not res!116334) (not e!155857))))

(assert (=> b!250856 (= res!116334 (>= (height!134 (++!945 (c!47452 e!155497) (c!47452 (ite c!47556 lt!102100 call!13250)))) (max!0 (height!134 (c!47452 e!155497)) (height!134 (c!47452 (ite c!47556 lt!102100 call!13250))))))))

(assert (= (and d!70489 res!116333) b!250854))

(assert (= (and b!250854 res!116332) b!250855))

(assert (= (and b!250855 res!116331) b!250856))

(assert (= (and b!250856 res!116334) b!250857))

(declare-fun m!307581 () Bool)

(assert (=> b!250855 m!307581))

(declare-fun m!307583 () Bool)

(assert (=> b!250855 m!307583))

(declare-fun m!307585 () Bool)

(assert (=> b!250855 m!307585))

(declare-fun m!307587 () Bool)

(assert (=> b!250855 m!307587))

(assert (=> b!250855 m!307581))

(assert (=> b!250855 m!307583))

(declare-fun m!307589 () Bool)

(assert (=> b!250855 m!307589))

(assert (=> b!250855 m!307585))

(declare-fun m!307591 () Bool)

(assert (=> b!250857 m!307591))

(declare-fun m!307593 () Bool)

(assert (=> b!250857 m!307593))

(declare-fun m!307595 () Bool)

(assert (=> b!250857 m!307595))

(assert (=> b!250857 m!307593))

(assert (=> b!250857 m!307595))

(declare-fun m!307597 () Bool)

(assert (=> b!250857 m!307597))

(declare-fun m!307599 () Bool)

(assert (=> d!70489 m!307599))

(assert (=> d!70489 m!307585))

(assert (=> b!250854 m!307585))

(assert (=> b!250854 m!307585))

(declare-fun m!307601 () Bool)

(assert (=> b!250854 m!307601))

(assert (=> b!250856 m!307581))

(assert (=> b!250856 m!307583))

(assert (=> b!250856 m!307585))

(assert (=> b!250856 m!307587))

(assert (=> b!250856 m!307581))

(assert (=> b!250856 m!307583))

(assert (=> b!250856 m!307589))

(assert (=> b!250856 m!307585))

(assert (=> bm!13245 d!70489))

(declare-fun d!70507 () Bool)

(assert (=> d!70507 (= (list!1461 (ite c!47531 call!13236 e!155432)) (list!1463 (c!47452 (ite c!47531 call!13236 e!155432))))))

(declare-fun bs!26926 () Bool)

(assert (= bs!26926 d!70507))

(declare-fun m!307603 () Bool)

(assert (=> bs!26926 m!307603))

(assert (=> bm!13231 d!70507))

(declare-fun d!70509 () Bool)

(declare-fun lt!102299 () BalanceConc!2448)

(assert (=> d!70509 (= (list!1461 lt!102299) (printListTailRec!113 thiss!17480 (dropList!145 (singletonSeq!251 call!13201) 0) (list!1461 (BalanceConc!2449 Empty!1220))))))

(declare-fun e!155859 () BalanceConc!2448)

(assert (=> d!70509 (= lt!102299 e!155859)))

(declare-fun c!47637 () Bool)

(assert (=> d!70509 (= c!47637 (>= 0 (size!2911 (singletonSeq!251 call!13201))))))

(declare-fun e!155858 () Bool)

(assert (=> d!70509 e!155858))

(declare-fun res!116335 () Bool)

(assert (=> d!70509 (=> (not res!116335) (not e!155858))))

(assert (=> d!70509 (= res!116335 (>= 0 0))))

(assert (=> d!70509 (= (printTailRec!279 thiss!17480 (singletonSeq!251 call!13201) 0 (BalanceConc!2449 Empty!1220)) lt!102299)))

(declare-fun b!250858 () Bool)

(assert (=> b!250858 (= e!155858 (<= 0 (size!2911 (singletonSeq!251 call!13201))))))

(declare-fun b!250859 () Bool)

(assert (=> b!250859 (= e!155859 (BalanceConc!2449 Empty!1220))))

(declare-fun b!250860 () Bool)

(assert (=> b!250860 (= e!155859 (printTailRec!279 thiss!17480 (singletonSeq!251 call!13201) (+ 0 1) (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 (singletonSeq!251 call!13201) 0)))))))

(declare-fun lt!102300 () List!3690)

(assert (=> b!250860 (= lt!102300 (list!1460 (singletonSeq!251 call!13201)))))

(declare-fun lt!102304 () Unit!4472)

(assert (=> b!250860 (= lt!102304 (lemmaDropApply!185 lt!102300 0))))

(assert (=> b!250860 (= (head!864 (drop!198 lt!102300 0)) (apply!695 lt!102300 0))))

(declare-fun lt!102302 () Unit!4472)

(assert (=> b!250860 (= lt!102302 lt!102304)))

(declare-fun lt!102301 () List!3690)

(assert (=> b!250860 (= lt!102301 (list!1460 (singletonSeq!251 call!13201)))))

(declare-fun lt!102303 () Unit!4472)

(assert (=> b!250860 (= lt!102303 (lemmaDropTail!177 lt!102301 0))))

(assert (=> b!250860 (= (tail!455 (drop!198 lt!102301 0)) (drop!198 lt!102301 (+ 0 1)))))

(declare-fun lt!102298 () Unit!4472)

(assert (=> b!250860 (= lt!102298 lt!102303)))

(assert (= (and d!70509 res!116335) b!250858))

(assert (= (and d!70509 c!47637) b!250859))

(assert (= (and d!70509 (not c!47637)) b!250860))

(assert (=> d!70509 m!306307))

(assert (=> d!70509 m!306431))

(declare-fun m!307605 () Bool)

(assert (=> d!70509 m!307605))

(assert (=> d!70509 m!307605))

(assert (=> d!70509 m!306307))

(declare-fun m!307607 () Bool)

(assert (=> d!70509 m!307607))

(declare-fun m!307609 () Bool)

(assert (=> d!70509 m!307609))

(assert (=> d!70509 m!306431))

(declare-fun m!307611 () Bool)

(assert (=> d!70509 m!307611))

(assert (=> b!250858 m!306431))

(assert (=> b!250858 m!307611))

(declare-fun m!307613 () Bool)

(assert (=> b!250860 m!307613))

(declare-fun m!307615 () Bool)

(assert (=> b!250860 m!307615))

(assert (=> b!250860 m!306431))

(declare-fun m!307617 () Bool)

(assert (=> b!250860 m!307617))

(declare-fun m!307619 () Bool)

(assert (=> b!250860 m!307619))

(declare-fun m!307621 () Bool)

(assert (=> b!250860 m!307621))

(assert (=> b!250860 m!306431))

(declare-fun m!307623 () Bool)

(assert (=> b!250860 m!307623))

(declare-fun m!307625 () Bool)

(assert (=> b!250860 m!307625))

(declare-fun m!307627 () Bool)

(assert (=> b!250860 m!307627))

(declare-fun m!307629 () Bool)

(assert (=> b!250860 m!307629))

(assert (=> b!250860 m!307627))

(declare-fun m!307631 () Bool)

(assert (=> b!250860 m!307631))

(assert (=> b!250860 m!306431))

(declare-fun m!307633 () Bool)

(assert (=> b!250860 m!307633))

(declare-fun m!307635 () Bool)

(assert (=> b!250860 m!307635))

(assert (=> b!250860 m!307613))

(assert (=> b!250860 m!307617))

(declare-fun m!307637 () Bool)

(assert (=> b!250860 m!307637))

(assert (=> b!250860 m!307637))

(assert (=> b!250860 m!307633))

(assert (=> b!250059 d!70509))

(declare-fun d!70511 () Bool)

(assert (=> d!70511 (= (list!1461 lt!101951) (list!1463 (c!47452 lt!101951)))))

(declare-fun bs!26927 () Bool)

(assert (= bs!26927 d!70511))

(declare-fun m!307639 () Bool)

(assert (=> bs!26927 m!307639))

(assert (=> b!250059 d!70511))

(declare-fun d!70513 () Bool)

(declare-fun lt!102305 () BalanceConc!2448)

(assert (=> d!70513 (= (list!1461 lt!102305) (printList!269 thiss!17480 (list!1460 (singletonSeq!251 call!13201))))))

(assert (=> d!70513 (= lt!102305 (printTailRec!279 thiss!17480 (singletonSeq!251 call!13201) 0 (BalanceConc!2449 Empty!1220)))))

(assert (=> d!70513 (= (print!316 thiss!17480 (singletonSeq!251 call!13201)) lt!102305)))

(declare-fun bs!26928 () Bool)

(assert (= bs!26928 d!70513))

(declare-fun m!307641 () Bool)

(assert (=> bs!26928 m!307641))

(assert (=> bs!26928 m!306431))

(assert (=> bs!26928 m!307623))

(assert (=> bs!26928 m!307623))

(declare-fun m!307643 () Bool)

(assert (=> bs!26928 m!307643))

(assert (=> bs!26928 m!306431))

(assert (=> bs!26928 m!306433))

(assert (=> b!250059 d!70513))

(declare-fun d!70515 () Bool)

(declare-fun e!155860 () Bool)

(assert (=> d!70515 e!155860))

(declare-fun res!116336 () Bool)

(assert (=> d!70515 (=> (not res!116336) (not e!155860))))

(declare-fun lt!102306 () BalanceConc!2450)

(assert (=> d!70515 (= res!116336 (= (list!1460 lt!102306) (Cons!3680 call!13201 Nil!3680)))))

(assert (=> d!70515 (= lt!102306 (singleton!94 call!13201))))

(assert (=> d!70515 (= (singletonSeq!251 call!13201) lt!102306)))

(declare-fun b!250861 () Bool)

(assert (=> b!250861 (= e!155860 (isBalanced!315 (c!47454 lt!102306)))))

(assert (= (and d!70515 res!116336) b!250861))

(declare-fun m!307645 () Bool)

(assert (=> d!70515 m!307645))

(declare-fun m!307647 () Bool)

(assert (=> d!70515 m!307647))

(declare-fun m!307649 () Bool)

(assert (=> b!250861 m!307649))

(assert (=> b!250059 d!70515))

(declare-fun d!70517 () Bool)

(assert (=> d!70517 (= (list!1461 call!13204) (list!1463 (c!47452 call!13204)))))

(declare-fun bs!26929 () Bool)

(assert (= bs!26929 d!70517))

(declare-fun m!307651 () Bool)

(assert (=> bs!26929 m!307651))

(assert (=> b!250059 d!70517))

(declare-fun b!250879 () Bool)

(declare-fun res!116344 () Bool)

(declare-fun e!155872 () Bool)

(assert (=> b!250879 (=> (not res!116344) (not e!155872))))

(declare-fun lt!102356 () Token!1142)

(declare-datatypes ((Option!763 0))(
  ( (None!762) (Some!762 (v!14573 Rule!1198)) )
))
(declare-fun get!1213 (Option!763) Rule!1198)

(declare-fun getRuleFromTag!112 (LexerInterface!585 List!3689 String!4685) Option!763)

(assert (=> b!250879 (= res!116344 (matchR!261 (regex!699 (get!1213 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!102356))))) (list!1461 (charsOf!354 lt!102356))))))

(declare-fun b!250881 () Bool)

(declare-fun e!155871 () Unit!4472)

(declare-fun Unit!4492 () Unit!4472)

(assert (=> b!250881 (= e!155871 Unit!4492)))

(declare-fun lt!102348 () List!3688)

(assert (=> b!250881 (= lt!102348 (++!942 (list!1461 call!13204) (list!1461 lt!101951)))))

(declare-fun lt!102357 () Unit!4472)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!44 (LexerInterface!585 Rule!1198 List!3689 List!3688) Unit!4472)

(assert (=> b!250881 (= lt!102357 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!44 thiss!17480 (rule!1276 lt!102356) rules!1920 lt!102348))))

(assert (=> b!250881 (isEmpty!2282 (maxPrefixOneRule!129 thiss!17480 (rule!1276 lt!102356) lt!102348))))

(declare-fun lt!102353 () Unit!4472)

(assert (=> b!250881 (= lt!102353 lt!102357)))

(declare-fun lt!102360 () List!3688)

(assert (=> b!250881 (= lt!102360 (list!1461 (charsOf!354 lt!102356)))))

(declare-fun lt!102364 () Unit!4472)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!44 (LexerInterface!585 Rule!1198 List!3688 List!3688) Unit!4472)

(assert (=> b!250881 (= lt!102364 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!44 thiss!17480 (rule!1276 lt!102356) lt!102360 (++!942 (list!1461 call!13204) (list!1461 lt!101951))))))

(assert (=> b!250881 (not (matchR!261 (regex!699 (rule!1276 lt!102356)) lt!102360))))

(declare-fun lt!102359 () Unit!4472)

(assert (=> b!250881 (= lt!102359 lt!102364)))

(assert (=> b!250881 false))

(declare-fun b!250882 () Bool)

(declare-fun Unit!4493 () Unit!4472)

(assert (=> b!250882 (= e!155871 Unit!4493)))

(declare-fun b!250880 () Bool)

(assert (=> b!250880 (= e!155872 (= (rule!1276 lt!102356) (get!1213 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!102356))))))))

(declare-fun d!70519 () Bool)

(assert (=> d!70519 (isDefined!611 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 call!13204) (list!1461 lt!101951))))))

(declare-fun lt!102361 () Unit!4472)

(assert (=> d!70519 (= lt!102361 e!155871)))

(declare-fun c!47643 () Bool)

(assert (=> d!70519 (= c!47643 (isEmpty!2282 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 call!13204) (list!1461 lt!101951)))))))

(declare-fun lt!102354 () Unit!4472)

(declare-fun lt!102362 () Unit!4472)

(assert (=> d!70519 (= lt!102354 lt!102362)))

(assert (=> d!70519 e!155872))

(declare-fun res!116345 () Bool)

(assert (=> d!70519 (=> (not res!116345) (not e!155872))))

(declare-fun isDefined!614 (Option!763) Bool)

(assert (=> d!70519 (= res!116345 (isDefined!614 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!102356)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!112 (LexerInterface!585 List!3689 List!3688 Token!1142) Unit!4472)

(assert (=> d!70519 (= lt!102362 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!112 thiss!17480 rules!1920 (list!1461 call!13204) lt!102356))))

(declare-fun lt!102351 () Unit!4472)

(declare-fun lt!102358 () Unit!4472)

(assert (=> d!70519 (= lt!102351 lt!102358)))

(declare-fun lt!102349 () List!3688)

(assert (=> d!70519 (isPrefix!383 lt!102349 (++!942 (list!1461 call!13204) (list!1461 lt!101951)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!44 (List!3688 List!3688 List!3688) Unit!4472)

(assert (=> d!70519 (= lt!102358 (lemmaPrefixStaysPrefixWhenAddingToSuffix!44 lt!102349 (list!1461 call!13204) (list!1461 lt!101951)))))

(assert (=> d!70519 (= lt!102349 (list!1461 (charsOf!354 lt!102356)))))

(declare-fun lt!102363 () Unit!4472)

(declare-fun lt!102350 () Unit!4472)

(assert (=> d!70519 (= lt!102363 lt!102350)))

(declare-fun lt!102355 () List!3688)

(declare-fun lt!102352 () List!3688)

(assert (=> d!70519 (isPrefix!383 lt!102355 (++!942 lt!102355 lt!102352))))

(assert (=> d!70519 (= lt!102350 (lemmaConcatTwoListThenFirstIsPrefix!278 lt!102355 lt!102352))))

(assert (=> d!70519 (= lt!102352 (_2!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 call!13204)))))))

(assert (=> d!70519 (= lt!102355 (list!1461 (charsOf!354 lt!102356)))))

(assert (=> d!70519 (= lt!102356 (head!864 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 (list!1461 call!13204)))))))))

(assert (=> d!70519 (not (isEmpty!2279 rules!1920))))

(assert (=> d!70519 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 (list!1461 call!13204) (list!1461 lt!101951)) lt!102361)))

(assert (= (and d!70519 res!116345) b!250879))

(assert (= (and b!250879 res!116344) b!250880))

(assert (= (and d!70519 c!47643) b!250881))

(assert (= (and d!70519 (not c!47643)) b!250882))

(declare-fun m!307671 () Bool)

(assert (=> b!250879 m!307671))

(declare-fun m!307673 () Bool)

(assert (=> b!250879 m!307673))

(declare-fun m!307675 () Bool)

(assert (=> b!250879 m!307675))

(assert (=> b!250879 m!307671))

(assert (=> b!250879 m!307673))

(declare-fun m!307677 () Bool)

(assert (=> b!250879 m!307677))

(assert (=> b!250879 m!307677))

(declare-fun m!307679 () Bool)

(assert (=> b!250879 m!307679))

(declare-fun m!307681 () Bool)

(assert (=> b!250881 m!307681))

(assert (=> b!250881 m!307671))

(declare-fun m!307683 () Bool)

(assert (=> b!250881 m!307683))

(declare-fun m!307685 () Bool)

(assert (=> b!250881 m!307685))

(declare-fun m!307687 () Bool)

(assert (=> b!250881 m!307687))

(declare-fun m!307689 () Bool)

(assert (=> b!250881 m!307689))

(assert (=> b!250881 m!306425))

(assert (=> b!250881 m!306427))

(assert (=> b!250881 m!307685))

(assert (=> b!250881 m!307683))

(declare-fun m!307691 () Bool)

(assert (=> b!250881 m!307691))

(assert (=> b!250881 m!307671))

(assert (=> b!250881 m!307673))

(assert (=> b!250880 m!307677))

(assert (=> b!250880 m!307677))

(assert (=> b!250880 m!307679))

(assert (=> d!70519 m!306425))

(assert (=> d!70519 m!306427))

(declare-fun m!307693 () Bool)

(assert (=> d!70519 m!307693))

(assert (=> d!70519 m!307685))

(declare-fun m!307695 () Bool)

(assert (=> d!70519 m!307695))

(assert (=> d!70519 m!306031))

(declare-fun m!307697 () Bool)

(assert (=> d!70519 m!307697))

(assert (=> d!70519 m!306425))

(declare-fun m!307699 () Bool)

(assert (=> d!70519 m!307699))

(assert (=> d!70519 m!307677))

(declare-fun m!307701 () Bool)

(assert (=> d!70519 m!307701))

(declare-fun m!307703 () Bool)

(assert (=> d!70519 m!307703))

(assert (=> d!70519 m!306425))

(assert (=> d!70519 m!306427))

(assert (=> d!70519 m!307685))

(assert (=> d!70519 m!307695))

(declare-fun m!307705 () Bool)

(assert (=> d!70519 m!307705))

(declare-fun m!307707 () Bool)

(assert (=> d!70519 m!307707))

(declare-fun m!307709 () Bool)

(assert (=> d!70519 m!307709))

(assert (=> d!70519 m!307685))

(declare-fun m!307711 () Bool)

(assert (=> d!70519 m!307711))

(assert (=> d!70519 m!307699))

(declare-fun m!307713 () Bool)

(assert (=> d!70519 m!307713))

(assert (=> d!70519 m!306425))

(assert (=> d!70519 m!307707))

(assert (=> d!70519 m!307671))

(declare-fun m!307715 () Bool)

(assert (=> d!70519 m!307715))

(assert (=> d!70519 m!307677))

(declare-fun m!307717 () Bool)

(assert (=> d!70519 m!307717))

(assert (=> d!70519 m!306425))

(declare-fun m!307719 () Bool)

(assert (=> d!70519 m!307719))

(assert (=> d!70519 m!307701))

(assert (=> d!70519 m!307715))

(declare-fun m!307721 () Bool)

(assert (=> d!70519 m!307721))

(assert (=> d!70519 m!307695))

(declare-fun m!307723 () Bool)

(assert (=> d!70519 m!307723))

(assert (=> d!70519 m!307671))

(assert (=> d!70519 m!307673))

(assert (=> b!250059 d!70519))

(declare-fun d!70533 () Bool)

(assert (=> d!70533 (= (isEmpty!2282 lt!101836) (not ((_ is Some!759) lt!101836)))))

(assert (=> d!70235 d!70533))

(declare-fun b!250884 () Bool)

(declare-fun e!155877 () Option!761)

(declare-fun call!13278 () Option!761)

(assert (=> b!250884 (= e!155877 call!13278)))

(declare-fun lt!102369 () Option!761)

(declare-fun e!155875 () Bool)

(declare-fun b!250885 () Bool)

(assert (=> b!250885 (= e!155875 (= (list!1461 (_2!2275 (get!1211 lt!102369))) (_2!2273 (get!1209 (maxPrefix!315 thiss!17480 (t!35393 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun b!250886 () Bool)

(declare-fun lt!102367 () Option!761)

(declare-fun lt!102365 () Option!761)

(assert (=> b!250886 (= e!155877 (ite (and ((_ is None!760) lt!102367) ((_ is None!760) lt!102365)) None!760 (ite ((_ is None!760) lt!102365) lt!102367 (ite ((_ is None!760) lt!102367) lt!102365 (ite (>= (size!2910 (_1!2275 (v!14539 lt!102367))) (size!2910 (_1!2275 (v!14539 lt!102365)))) lt!102367 lt!102365)))))))

(assert (=> b!250886 (= lt!102367 call!13278)))

(assert (=> b!250886 (= lt!102365 (maxPrefixZipperSequence!278 thiss!17480 (t!35393 (t!35393 rules!1920)) (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(declare-fun bm!13273 () Bool)

(assert (=> bm!13273 (= call!13278 (maxPrefixOneRuleZipperSequence!100 thiss!17480 (h!9076 (t!35393 rules!1920)) (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(declare-fun b!250887 () Bool)

(declare-fun e!155873 () Bool)

(declare-fun e!155874 () Bool)

(assert (=> b!250887 (= e!155873 e!155874)))

(declare-fun res!116347 () Bool)

(assert (=> b!250887 (=> (not res!116347) (not e!155874))))

(assert (=> b!250887 (= res!116347 (= (_1!2275 (get!1211 lt!102369)) (_1!2273 (get!1209 (maxPrefixZipper!99 thiss!17480 (t!35393 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun b!250888 () Bool)

(assert (=> b!250888 (= e!155874 (= (list!1461 (_2!2275 (get!1211 lt!102369))) (_2!2273 (get!1209 (maxPrefixZipper!99 thiss!17480 (t!35393 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun d!70535 () Bool)

(declare-fun e!155878 () Bool)

(assert (=> d!70535 e!155878))

(declare-fun res!116349 () Bool)

(assert (=> d!70535 (=> (not res!116349) (not e!155878))))

(assert (=> d!70535 (= res!116349 (= (isDefined!612 lt!102369) (isDefined!611 (maxPrefixZipper!99 thiss!17480 (t!35393 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))))

(assert (=> d!70535 (= lt!102369 e!155877)))

(declare-fun c!47644 () Bool)

(assert (=> d!70535 (= c!47644 (and ((_ is Cons!3679) (t!35393 rules!1920)) ((_ is Nil!3679) (t!35393 (t!35393 rules!1920)))))))

(declare-fun lt!102366 () Unit!4472)

(declare-fun lt!102368 () Unit!4472)

(assert (=> d!70535 (= lt!102366 lt!102368)))

(declare-fun lt!102371 () List!3688)

(declare-fun lt!102370 () List!3688)

(assert (=> d!70535 (isPrefix!383 lt!102371 lt!102370)))

(assert (=> d!70535 (= lt!102368 (lemmaIsPrefixRefl!195 lt!102371 lt!102370))))

(assert (=> d!70535 (= lt!102370 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (=> d!70535 (= lt!102371 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (=> d!70535 (rulesValidInductive!186 thiss!17480 (t!35393 rules!1920))))

(assert (=> d!70535 (= (maxPrefixZipperSequence!278 thiss!17480 (t!35393 rules!1920) (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))) lt!102369)))

(declare-fun b!250883 () Bool)

(declare-fun e!155876 () Bool)

(assert (=> b!250883 (= e!155878 e!155876)))

(declare-fun res!116351 () Bool)

(assert (=> b!250883 (=> res!116351 e!155876)))

(assert (=> b!250883 (= res!116351 (not (isDefined!612 lt!102369)))))

(declare-fun b!250889 () Bool)

(assert (=> b!250889 (= e!155876 e!155875)))

(declare-fun res!116350 () Bool)

(assert (=> b!250889 (=> (not res!116350) (not e!155875))))

(assert (=> b!250889 (= res!116350 (= (_1!2275 (get!1211 lt!102369)) (_1!2273 (get!1209 (maxPrefix!315 thiss!17480 (t!35393 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun b!250890 () Bool)

(declare-fun res!116346 () Bool)

(assert (=> b!250890 (=> (not res!116346) (not e!155878))))

(assert (=> b!250890 (= res!116346 e!155873)))

(declare-fun res!116348 () Bool)

(assert (=> b!250890 (=> res!116348 e!155873)))

(assert (=> b!250890 (= res!116348 (not (isDefined!612 lt!102369)))))

(assert (= (and d!70535 c!47644) b!250884))

(assert (= (and d!70535 (not c!47644)) b!250886))

(assert (= (or b!250884 b!250886) bm!13273))

(assert (= (and d!70535 res!116349) b!250890))

(assert (= (and b!250890 (not res!116348)) b!250887))

(assert (= (and b!250887 res!116347) b!250888))

(assert (= (and b!250890 res!116346) b!250883))

(assert (= (and b!250883 (not res!116351)) b!250889))

(assert (= (and b!250889 res!116350) b!250885))

(declare-fun m!307725 () Bool)

(assert (=> b!250889 m!307725))

(assert (=> b!250889 m!306155))

(assert (=> b!250889 m!306901))

(assert (=> b!250889 m!306901))

(declare-fun m!307727 () Bool)

(assert (=> b!250889 m!307727))

(assert (=> b!250889 m!307727))

(declare-fun m!307729 () Bool)

(assert (=> b!250889 m!307729))

(assert (=> bm!13273 m!306155))

(declare-fun m!307731 () Bool)

(assert (=> bm!13273 m!307731))

(declare-fun m!307733 () Bool)

(assert (=> b!250890 m!307733))

(assert (=> b!250885 m!307727))

(assert (=> b!250885 m!307729))

(assert (=> b!250885 m!307725))

(assert (=> b!250885 m!306901))

(assert (=> b!250885 m!307727))

(declare-fun m!307735 () Bool)

(assert (=> b!250885 m!307735))

(assert (=> b!250885 m!306155))

(assert (=> b!250885 m!306901))

(assert (=> b!250883 m!307733))

(assert (=> b!250886 m!306155))

(declare-fun m!307737 () Bool)

(assert (=> b!250886 m!307737))

(assert (=> b!250888 m!306901))

(declare-fun m!307739 () Bool)

(assert (=> b!250888 m!307739))

(assert (=> b!250888 m!307725))

(assert (=> b!250888 m!307739))

(declare-fun m!307741 () Bool)

(assert (=> b!250888 m!307741))

(assert (=> b!250888 m!307735))

(assert (=> b!250888 m!306155))

(assert (=> b!250888 m!306901))

(assert (=> d!70535 m!306901))

(assert (=> d!70535 m!307739))

(assert (=> d!70535 m!306155))

(assert (=> d!70535 m!306901))

(declare-fun m!307743 () Bool)

(assert (=> d!70535 m!307743))

(declare-fun m!307745 () Bool)

(assert (=> d!70535 m!307745))

(assert (=> d!70535 m!307733))

(assert (=> d!70535 m!307739))

(declare-fun m!307747 () Bool)

(assert (=> d!70535 m!307747))

(assert (=> d!70535 m!307473))

(assert (=> b!250887 m!307725))

(assert (=> b!250887 m!306155))

(assert (=> b!250887 m!306901))

(assert (=> b!250887 m!306901))

(assert (=> b!250887 m!307739))

(assert (=> b!250887 m!307739))

(assert (=> b!250887 m!307741))

(assert (=> b!250396 d!70535))

(declare-fun d!70537 () Bool)

(assert (=> d!70537 (= (isEmpty!2277 lt!101834) ((_ is Nil!3678) lt!101834))))

(assert (=> bm!13258 d!70537))

(declare-fun d!70539 () Bool)

(assert (=> d!70539 (= lt!101842 (_2!2273 lt!101826))))

(assert (=> d!70539 true))

(declare-fun _$63!576 () Unit!4472)

(assert (=> d!70539 (= (choose!2356 lt!101834 lt!101842 lt!101834 (_2!2273 lt!101826) lt!101845) _$63!576)))

(assert (=> d!70331 d!70539))

(assert (=> d!70331 d!70429))

(declare-fun d!70541 () Bool)

(assert (=> d!70541 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084)))) (list!1463 (c!47452 (charsOf!354 (_1!2273 (get!1209 lt!102084))))))))

(declare-fun bs!26932 () Bool)

(assert (= bs!26932 d!70541))

(declare-fun m!307749 () Bool)

(assert (=> bs!26932 m!307749))

(assert (=> b!250244 d!70541))

(declare-fun d!70543 () Bool)

(declare-fun lt!102372 () BalanceConc!2448)

(assert (=> d!70543 (= (list!1461 lt!102372) (originalCharacters!742 (_1!2273 (get!1209 lt!102084))))))

(assert (=> d!70543 (= lt!102372 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))) (value!24237 (_1!2273 (get!1209 lt!102084)))))))

(assert (=> d!70543 (= (charsOf!354 (_1!2273 (get!1209 lt!102084))) lt!102372)))

(declare-fun b_lambda!7393 () Bool)

(assert (=> (not b_lambda!7393) (not d!70543)))

(declare-fun t!35493 () Bool)

(declare-fun tb!12839 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35493) tb!12839))

(declare-fun b!250891 () Bool)

(declare-fun e!155879 () Bool)

(declare-fun tp!97235 () Bool)

(assert (=> b!250891 (= e!155879 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))) (value!24237 (_1!2273 (get!1209 lt!102084)))))) tp!97235))))

(declare-fun result!16204 () Bool)

(assert (=> tb!12839 (= result!16204 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))) (value!24237 (_1!2273 (get!1209 lt!102084))))) e!155879))))

(assert (= tb!12839 b!250891))

(declare-fun m!307751 () Bool)

(assert (=> b!250891 m!307751))

(declare-fun m!307753 () Bool)

(assert (=> tb!12839 m!307753))

(assert (=> d!70543 t!35493))

(declare-fun b_and!18951 () Bool)

(assert (= b_and!18929 (and (=> t!35493 result!16204) b_and!18951)))

(declare-fun tb!12841 () Bool)

(declare-fun t!35495 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35495) tb!12841))

(declare-fun result!16206 () Bool)

(assert (= result!16206 result!16204))

(assert (=> d!70543 t!35495))

(declare-fun b_and!18953 () Bool)

(assert (= b_and!18927 (and (=> t!35495 result!16206) b_and!18953)))

(declare-fun t!35497 () Bool)

(declare-fun tb!12843 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35497) tb!12843))

(declare-fun result!16208 () Bool)

(assert (= result!16208 result!16204))

(assert (=> d!70543 t!35497))

(declare-fun b_and!18955 () Bool)

(assert (= b_and!18921 (and (=> t!35497 result!16208) b_and!18955)))

(declare-fun tb!12845 () Bool)

(declare-fun t!35499 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35499) tb!12845))

(declare-fun result!16210 () Bool)

(assert (= result!16210 result!16204))

(assert (=> d!70543 t!35499))

(declare-fun b_and!18957 () Bool)

(assert (= b_and!18931 (and (=> t!35499 result!16210) b_and!18957)))

(declare-fun t!35501 () Bool)

(declare-fun tb!12847 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35501) tb!12847))

(declare-fun result!16212 () Bool)

(assert (= result!16212 result!16204))

(assert (=> d!70543 t!35501))

(declare-fun b_and!18959 () Bool)

(assert (= b_and!18925 (and (=> t!35501 result!16212) b_and!18959)))

(declare-fun m!307755 () Bool)

(assert (=> d!70543 m!307755))

(declare-fun m!307757 () Bool)

(assert (=> d!70543 m!307757))

(assert (=> b!250244 d!70543))

(assert (=> b!250244 d!70481))

(declare-fun d!70545 () Bool)

(assert (=> d!70545 (= (list!1460 lt!101902) (list!1465 (c!47454 lt!101902)))))

(declare-fun bs!26933 () Bool)

(assert (= bs!26933 d!70545))

(declare-fun m!307759 () Bool)

(assert (=> bs!26933 m!307759))

(assert (=> d!70183 d!70545))

(declare-fun d!70547 () Bool)

(declare-fun e!155882 () Bool)

(assert (=> d!70547 e!155882))

(declare-fun res!116354 () Bool)

(assert (=> d!70547 (=> (not res!116354) (not e!155882))))

(declare-fun lt!102375 () BalanceConc!2450)

(assert (=> d!70547 (= res!116354 (= (list!1460 lt!102375) (Cons!3680 (h!9077 tokens!465) Nil!3680)))))

(declare-fun choose!2363 (Token!1142) BalanceConc!2450)

(assert (=> d!70547 (= lt!102375 (choose!2363 (h!9077 tokens!465)))))

(assert (=> d!70547 (= (singleton!94 (h!9077 tokens!465)) lt!102375)))

(declare-fun b!250894 () Bool)

(assert (=> b!250894 (= e!155882 (isBalanced!315 (c!47454 lt!102375)))))

(assert (= (and d!70547 res!116354) b!250894))

(declare-fun m!307761 () Bool)

(assert (=> d!70547 m!307761))

(declare-fun m!307763 () Bool)

(assert (=> d!70547 m!307763))

(declare-fun m!307765 () Bool)

(assert (=> b!250894 m!307765))

(assert (=> d!70183 d!70547))

(declare-fun b!250904 () Bool)

(declare-fun e!155889 () List!3688)

(declare-fun e!155890 () List!3688)

(assert (=> b!250904 (= e!155889 e!155890)))

(declare-fun c!47650 () Bool)

(assert (=> b!250904 (= c!47650 ((_ is Leaf!1909) (c!47452 (charsOf!354 separatorToken!170))))))

(declare-fun b!250906 () Bool)

(assert (=> b!250906 (= e!155890 (++!942 (list!1463 (left!3024 (c!47452 (charsOf!354 separatorToken!170)))) (list!1463 (right!3354 (c!47452 (charsOf!354 separatorToken!170))))))))

(declare-fun b!250905 () Bool)

(declare-fun list!1466 (IArray!2441) List!3688)

(assert (=> b!250905 (= e!155890 (list!1466 (xs!3815 (c!47452 (charsOf!354 separatorToken!170)))))))

(declare-fun d!70549 () Bool)

(declare-fun c!47649 () Bool)

(assert (=> d!70549 (= c!47649 ((_ is Empty!1220) (c!47452 (charsOf!354 separatorToken!170))))))

(assert (=> d!70549 (= (list!1463 (c!47452 (charsOf!354 separatorToken!170))) e!155889)))

(declare-fun b!250903 () Bool)

(assert (=> b!250903 (= e!155889 Nil!3678)))

(assert (= (and d!70549 c!47649) b!250903))

(assert (= (and d!70549 (not c!47649)) b!250904))

(assert (= (and b!250904 c!47650) b!250905))

(assert (= (and b!250904 (not c!47650)) b!250906))

(declare-fun m!307767 () Bool)

(assert (=> b!250906 m!307767))

(declare-fun m!307769 () Bool)

(assert (=> b!250906 m!307769))

(assert (=> b!250906 m!307767))

(assert (=> b!250906 m!307769))

(declare-fun m!307771 () Bool)

(assert (=> b!250906 m!307771))

(declare-fun m!307773 () Bool)

(assert (=> b!250905 m!307773))

(assert (=> d!70255 d!70549))

(declare-fun d!70551 () Bool)

(declare-fun lt!102412 () Bool)

(assert (=> d!70551 (= lt!102412 (isEmpty!2277 (list!1461 (_2!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)))))))))

(declare-fun isEmpty!2289 (Conc!1220) Bool)

(assert (=> d!70551 (= lt!102412 (isEmpty!2289 (c!47452 (_2!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)))))))))

(assert (=> d!70551 (= (isEmpty!2288 (_2!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170))))) lt!102412)))

(declare-fun bs!26934 () Bool)

(assert (= bs!26934 d!70551))

(declare-fun m!307775 () Bool)

(assert (=> bs!26934 m!307775))

(assert (=> bs!26934 m!307775))

(declare-fun m!307777 () Bool)

(assert (=> bs!26934 m!307777))

(declare-fun m!307779 () Bool)

(assert (=> bs!26934 m!307779))

(assert (=> b!250530 d!70551))

(declare-fun b!250915 () Bool)

(declare-fun res!116361 () Bool)

(declare-fun e!155895 () Bool)

(assert (=> b!250915 (=> (not res!116361) (not e!155895))))

(declare-fun lt!102413 () tuple2!4116)

(assert (=> b!250915 (= res!116361 (= (list!1460 (_1!2274 lt!102413)) (_1!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)))))))))

(declare-fun d!70553 () Bool)

(assert (=> d!70553 e!155895))

(declare-fun res!116360 () Bool)

(assert (=> d!70553 (=> (not res!116360) (not e!155895))))

(declare-fun e!155893 () Bool)

(assert (=> d!70553 (= res!116360 e!155893)))

(declare-fun c!47653 () Bool)

(assert (=> d!70553 (= c!47653 (> (size!2911 (_1!2274 lt!102413)) 0))))

(assert (=> d!70553 (= lt!102413 (lexTailRecV2!158 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)) (BalanceConc!2449 Empty!1220) (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)) (BalanceConc!2451 Empty!1221)))))

(assert (=> d!70553 (= (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170))) lt!102413)))

(declare-fun b!250916 () Bool)

(declare-fun e!155894 () Bool)

(assert (=> b!250916 (= e!155894 (not (isEmpty!2280 (_1!2274 lt!102413))))))

(declare-fun b!250917 () Bool)

(assert (=> b!250917 (= e!155895 (= (list!1461 (_2!2274 lt!102413)) (_2!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)))))))))

(declare-fun b!250918 () Bool)

(assert (=> b!250918 (= e!155893 e!155894)))

(declare-fun res!116359 () Bool)

(assert (=> b!250918 (= res!116359 (< (size!2917 (_2!2274 lt!102413)) (size!2917 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)))))))

(assert (=> b!250918 (=> (not res!116359) (not e!155894))))

(declare-fun b!250919 () Bool)

(assert (=> b!250919 (= e!155893 (= (_2!2274 lt!102413) (print!316 thiss!17480 (singletonSeq!251 separatorToken!170))))))

(assert (= (and d!70553 c!47653) b!250918))

(assert (= (and d!70553 (not c!47653)) b!250919))

(assert (= (and b!250918 res!116359) b!250916))

(assert (= (and d!70553 res!116360) b!250915))

(assert (= (and b!250915 res!116361) b!250917))

(declare-fun m!307781 () Bool)

(assert (=> b!250916 m!307781))

(declare-fun m!307783 () Bool)

(assert (=> b!250918 m!307783))

(assert (=> b!250918 m!307115))

(declare-fun m!307785 () Bool)

(assert (=> b!250918 m!307785))

(declare-fun m!307787 () Bool)

(assert (=> b!250915 m!307787))

(assert (=> b!250915 m!307115))

(declare-fun m!307789 () Bool)

(assert (=> b!250915 m!307789))

(assert (=> b!250915 m!307789))

(declare-fun m!307791 () Bool)

(assert (=> b!250915 m!307791))

(declare-fun m!307793 () Bool)

(assert (=> d!70553 m!307793))

(assert (=> d!70553 m!307115))

(assert (=> d!70553 m!307115))

(declare-fun m!307795 () Bool)

(assert (=> d!70553 m!307795))

(declare-fun m!307797 () Bool)

(assert (=> b!250917 m!307797))

(assert (=> b!250917 m!307115))

(assert (=> b!250917 m!307789))

(assert (=> b!250917 m!307789))

(assert (=> b!250917 m!307791))

(assert (=> b!250530 d!70553))

(declare-fun d!70555 () Bool)

(declare-fun lt!102414 () BalanceConc!2448)

(assert (=> d!70555 (= (list!1461 lt!102414) (printList!269 thiss!17480 (list!1460 (singletonSeq!251 separatorToken!170))))))

(assert (=> d!70555 (= lt!102414 (printTailRec!279 thiss!17480 (singletonSeq!251 separatorToken!170) 0 (BalanceConc!2449 Empty!1220)))))

(assert (=> d!70555 (= (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)) lt!102414)))

(declare-fun bs!26935 () Bool)

(assert (= bs!26935 d!70555))

(declare-fun m!307799 () Bool)

(assert (=> bs!26935 m!307799))

(assert (=> bs!26935 m!307113))

(assert (=> bs!26935 m!307123))

(assert (=> bs!26935 m!307123))

(declare-fun m!307801 () Bool)

(assert (=> bs!26935 m!307801))

(assert (=> bs!26935 m!307113))

(declare-fun m!307803 () Bool)

(assert (=> bs!26935 m!307803))

(assert (=> b!250530 d!70555))

(declare-fun d!70557 () Bool)

(declare-fun e!155896 () Bool)

(assert (=> d!70557 e!155896))

(declare-fun res!116362 () Bool)

(assert (=> d!70557 (=> (not res!116362) (not e!155896))))

(declare-fun lt!102415 () BalanceConc!2450)

(assert (=> d!70557 (= res!116362 (= (list!1460 lt!102415) (Cons!3680 separatorToken!170 Nil!3680)))))

(assert (=> d!70557 (= lt!102415 (singleton!94 separatorToken!170))))

(assert (=> d!70557 (= (singletonSeq!251 separatorToken!170) lt!102415)))

(declare-fun b!250920 () Bool)

(assert (=> b!250920 (= e!155896 (isBalanced!315 (c!47454 lt!102415)))))

(assert (= (and d!70557 res!116362) b!250920))

(declare-fun m!307805 () Bool)

(assert (=> d!70557 m!307805))

(declare-fun m!307807 () Bool)

(assert (=> d!70557 m!307807))

(declare-fun m!307809 () Bool)

(assert (=> b!250920 m!307809))

(assert (=> b!250530 d!70557))

(declare-fun d!70559 () Bool)

(declare-fun res!116363 () Bool)

(declare-fun e!155897 () Bool)

(assert (=> d!70559 (=> res!116363 e!155897)))

(assert (=> d!70559 (= res!116363 (not ((_ is Cons!3679) (t!35393 rules!1920))))))

(assert (=> d!70559 (= (sepAndNonSepRulesDisjointChars!288 rules!1920 (t!35393 rules!1920)) e!155897)))

(declare-fun b!250921 () Bool)

(declare-fun e!155898 () Bool)

(assert (=> b!250921 (= e!155897 e!155898)))

(declare-fun res!116364 () Bool)

(assert (=> b!250921 (=> (not res!116364) (not e!155898))))

(assert (=> b!250921 (= res!116364 (ruleDisjointCharsFromAllFromOtherType!95 (h!9076 (t!35393 rules!1920)) rules!1920))))

(declare-fun b!250922 () Bool)

(assert (=> b!250922 (= e!155898 (sepAndNonSepRulesDisjointChars!288 rules!1920 (t!35393 (t!35393 rules!1920))))))

(assert (= (and d!70559 (not res!116363)) b!250921))

(assert (= (and b!250921 res!116364) b!250922))

(declare-fun m!307811 () Bool)

(assert (=> b!250921 m!307811))

(declare-fun m!307813 () Bool)

(assert (=> b!250922 m!307813))

(assert (=> b!250536 d!70559))

(declare-fun d!70561 () Bool)

(declare-fun c!47657 () Bool)

(assert (=> d!70561 (= c!47657 ((_ is Nil!3678) lt!101851))))

(declare-fun e!155903 () (InoxSet C!2768))

(assert (=> d!70561 (= (content!513 lt!101851) e!155903)))

(declare-fun b!250931 () Bool)

(assert (=> b!250931 (= e!155903 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!250932 () Bool)

(assert (=> b!250932 (= e!155903 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!101851) true) (content!513 (t!35392 lt!101851))))))

(assert (= (and d!70561 c!47657) b!250931))

(assert (= (and d!70561 (not c!47657)) b!250932))

(declare-fun m!307815 () Bool)

(assert (=> b!250932 m!307815))

(declare-fun m!307817 () Bool)

(assert (=> b!250932 m!307817))

(assert (=> d!70153 d!70561))

(declare-fun d!70563 () Bool)

(declare-fun c!47658 () Bool)

(assert (=> d!70563 (= c!47658 ((_ is Nil!3678) lt!101834))))

(declare-fun e!155904 () (InoxSet C!2768))

(assert (=> d!70563 (= (content!513 lt!101834) e!155904)))

(declare-fun b!250933 () Bool)

(assert (=> b!250933 (= e!155904 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!250934 () Bool)

(assert (=> b!250934 (= e!155904 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!101834) true) (content!513 (t!35392 lt!101834))))))

(assert (= (and d!70563 c!47658) b!250933))

(assert (= (and d!70563 (not c!47658)) b!250934))

(declare-fun m!307819 () Bool)

(assert (=> b!250934 m!307819))

(declare-fun m!307821 () Bool)

(assert (=> b!250934 m!307821))

(assert (=> d!70153 d!70563))

(declare-fun d!70565 () Bool)

(declare-fun c!47659 () Bool)

(assert (=> d!70565 (= c!47659 ((_ is Nil!3678) lt!101842))))

(declare-fun e!155905 () (InoxSet C!2768))

(assert (=> d!70565 (= (content!513 lt!101842) e!155905)))

(declare-fun b!250935 () Bool)

(assert (=> b!250935 (= e!155905 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!250936 () Bool)

(assert (=> b!250936 (= e!155905 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!101842) true) (content!513 (t!35392 lt!101842))))))

(assert (= (and d!70565 c!47659) b!250935))

(assert (= (and d!70565 (not c!47659)) b!250936))

(declare-fun m!307823 () Bool)

(assert (=> b!250936 m!307823))

(declare-fun m!307825 () Bool)

(assert (=> b!250936 m!307825))

(assert (=> d!70153 d!70565))

(declare-fun d!70567 () Bool)

(assert (=> d!70567 (= (get!1211 lt!102143) (v!14539 lt!102143))))

(assert (=> b!250399 d!70567))

(declare-fun d!70569 () Bool)

(assert (=> d!70569 (= (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))) (v!14538 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))

(assert (=> b!250399 d!70569))

(declare-fun b!250937 () Bool)

(declare-fun res!116373 () Bool)

(declare-fun e!155906 () Bool)

(assert (=> b!250937 (=> (not res!116373) (not e!155906))))

(declare-fun lt!102435 () Option!760)

(assert (=> b!250937 (= res!116373 (= (value!24237 (_1!2273 (get!1209 lt!102435))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102435)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102435)))))))))

(declare-fun b!250938 () Bool)

(assert (=> b!250938 (= e!155906 (contains!678 rules!1920 (rule!1276 (_1!2273 (get!1209 lt!102435)))))))

(declare-fun b!250939 () Bool)

(declare-fun e!155908 () Option!760)

(declare-fun lt!102433 () Option!760)

(declare-fun lt!102434 () Option!760)

(assert (=> b!250939 (= e!155908 (ite (and ((_ is None!759) lt!102433) ((_ is None!759) lt!102434)) None!759 (ite ((_ is None!759) lt!102434) lt!102433 (ite ((_ is None!759) lt!102433) lt!102434 (ite (>= (size!2910 (_1!2273 (v!14538 lt!102433))) (size!2910 (_1!2273 (v!14538 lt!102434)))) lt!102433 lt!102434)))))))

(declare-fun call!13279 () Option!760)

(assert (=> b!250939 (= lt!102433 call!13279)))

(assert (=> b!250939 (= lt!102434 (maxPrefix!315 thiss!17480 (t!35393 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(declare-fun b!250940 () Bool)

(declare-fun res!116371 () Bool)

(assert (=> b!250940 (=> (not res!116371) (not e!155906))))

(assert (=> b!250940 (= res!116371 (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102435)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102435))))))))

(declare-fun b!250941 () Bool)

(declare-fun e!155907 () Bool)

(assert (=> b!250941 (= e!155907 e!155906)))

(declare-fun res!116370 () Bool)

(assert (=> b!250941 (=> (not res!116370) (not e!155906))))

(assert (=> b!250941 (= res!116370 (isDefined!611 lt!102435))))

(declare-fun b!250942 () Bool)

(declare-fun res!116368 () Bool)

(assert (=> b!250942 (=> (not res!116368) (not e!155906))))

(assert (=> b!250942 (= res!116368 (< (size!2913 (_2!2273 (get!1209 lt!102435))) (size!2913 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))

(declare-fun b!250943 () Bool)

(assert (=> b!250943 (= e!155908 call!13279)))

(declare-fun bm!13274 () Bool)

(assert (=> bm!13274 (= call!13279 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(declare-fun d!70571 () Bool)

(assert (=> d!70571 e!155907))

(declare-fun res!116369 () Bool)

(assert (=> d!70571 (=> res!116369 e!155907)))

(assert (=> d!70571 (= res!116369 (isEmpty!2282 lt!102435))))

(assert (=> d!70571 (= lt!102435 e!155908)))

(declare-fun c!47660 () Bool)

(assert (=> d!70571 (= c!47660 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!102437 () Unit!4472)

(declare-fun lt!102436 () Unit!4472)

(assert (=> d!70571 (= lt!102437 lt!102436)))

(assert (=> d!70571 (isPrefix!383 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (=> d!70571 (= lt!102436 (lemmaIsPrefixRefl!195 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(assert (=> d!70571 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!70571 (= (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))) lt!102435)))

(declare-fun b!250944 () Bool)

(declare-fun res!116367 () Bool)

(assert (=> b!250944 (=> (not res!116367) (not e!155906))))

(assert (=> b!250944 (= res!116367 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102435)))) (_2!2273 (get!1209 lt!102435))) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(declare-fun b!250945 () Bool)

(declare-fun res!116372 () Bool)

(assert (=> b!250945 (=> (not res!116372) (not e!155906))))

(assert (=> b!250945 (= res!116372 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102435)))) (originalCharacters!742 (_1!2273 (get!1209 lt!102435)))))))

(assert (= (and d!70571 c!47660) b!250943))

(assert (= (and d!70571 (not c!47660)) b!250939))

(assert (= (or b!250943 b!250939) bm!13274))

(assert (= (and d!70571 (not res!116369)) b!250941))

(assert (= (and b!250941 res!116370) b!250945))

(assert (= (and b!250945 res!116372) b!250942))

(assert (= (and b!250942 res!116368) b!250944))

(assert (= (and b!250944 res!116367) b!250937))

(assert (= (and b!250937 res!116373) b!250940))

(assert (= (and b!250940 res!116371) b!250938))

(declare-fun m!307879 () Bool)

(assert (=> b!250937 m!307879))

(declare-fun m!307881 () Bool)

(assert (=> b!250937 m!307881))

(assert (=> b!250937 m!307881))

(declare-fun m!307885 () Bool)

(assert (=> b!250937 m!307885))

(declare-fun m!307887 () Bool)

(assert (=> b!250941 m!307887))

(assert (=> bm!13274 m!306901))

(declare-fun m!307889 () Bool)

(assert (=> bm!13274 m!307889))

(assert (=> b!250940 m!307879))

(declare-fun m!307891 () Bool)

(assert (=> b!250940 m!307891))

(assert (=> b!250940 m!307891))

(declare-fun m!307895 () Bool)

(assert (=> b!250940 m!307895))

(assert (=> b!250940 m!307895))

(declare-fun m!307897 () Bool)

(assert (=> b!250940 m!307897))

(assert (=> b!250945 m!307879))

(assert (=> b!250945 m!307891))

(assert (=> b!250945 m!307891))

(assert (=> b!250945 m!307895))

(assert (=> b!250944 m!307879))

(assert (=> b!250944 m!307891))

(assert (=> b!250944 m!307891))

(assert (=> b!250944 m!307895))

(assert (=> b!250944 m!307895))

(declare-fun m!307899 () Bool)

(assert (=> b!250944 m!307899))

(assert (=> b!250942 m!307879))

(declare-fun m!307901 () Bool)

(assert (=> b!250942 m!307901))

(assert (=> b!250942 m!306901))

(declare-fun m!307903 () Bool)

(assert (=> b!250942 m!307903))

(declare-fun m!307905 () Bool)

(assert (=> d!70571 m!307905))

(assert (=> d!70571 m!306901))

(assert (=> d!70571 m!306901))

(declare-fun m!307907 () Bool)

(assert (=> d!70571 m!307907))

(assert (=> d!70571 m!306901))

(assert (=> d!70571 m!306901))

(declare-fun m!307909 () Bool)

(assert (=> d!70571 m!307909))

(assert (=> d!70571 m!306683))

(assert (=> b!250939 m!306901))

(assert (=> b!250939 m!307727))

(assert (=> b!250938 m!307879))

(declare-fun m!307911 () Bool)

(assert (=> b!250938 m!307911))

(assert (=> b!250399 d!70571))

(declare-fun d!70577 () Bool)

(assert (=> d!70577 (= (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))) (list!1463 (c!47452 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(declare-fun bs!26937 () Bool)

(assert (= bs!26937 d!70577))

(declare-fun m!307913 () Bool)

(assert (=> bs!26937 m!307913))

(assert (=> b!250399 d!70577))

(assert (=> bs!26916 d!70327))

(declare-fun d!70579 () Bool)

(declare-fun lt!102445 () Int)

(assert (=> d!70579 (= lt!102445 (size!2918 (list!1460 lt!101830)))))

(assert (=> d!70579 (= lt!102445 (size!2919 (c!47454 lt!101830)))))

(assert (=> d!70579 (= (size!2911 lt!101830) lt!102445)))

(declare-fun bs!26938 () Bool)

(assert (= bs!26938 d!70579))

(assert (=> bs!26938 m!306301))

(assert (=> bs!26938 m!306301))

(declare-fun m!307915 () Bool)

(assert (=> bs!26938 m!307915))

(declare-fun m!307917 () Bool)

(assert (=> bs!26938 m!307917))

(assert (=> b!249994 d!70579))

(declare-fun b!250959 () Bool)

(declare-fun e!155916 () List!3690)

(declare-fun e!155917 () List!3690)

(assert (=> b!250959 (= e!155916 e!155917)))

(declare-fun c!47667 () Bool)

(assert (=> b!250959 (= c!47667 ((_ is Leaf!1910) (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))

(declare-fun c!47666 () Bool)

(declare-fun d!70581 () Bool)

(assert (=> d!70581 (= c!47666 ((_ is Empty!1221) (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))

(assert (=> d!70581 (= (list!1465 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))) e!155916)))

(declare-fun b!250958 () Bool)

(assert (=> b!250958 (= e!155916 Nil!3680)))

(declare-fun b!250960 () Bool)

(declare-fun list!1468 (IArray!2443) List!3690)

(assert (=> b!250960 (= e!155917 (list!1468 (xs!3816 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))))))

(declare-fun b!250961 () Bool)

(declare-fun ++!946 (List!3690 List!3690) List!3690)

(assert (=> b!250961 (= e!155917 (++!946 (list!1465 (left!3025 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))) (list!1465 (right!3355 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))))

(assert (= (and d!70581 c!47666) b!250958))

(assert (= (and d!70581 (not c!47666)) b!250959))

(assert (= (and b!250959 c!47667) b!250960))

(assert (= (and b!250959 (not c!47667)) b!250961))

(declare-fun m!307961 () Bool)

(assert (=> b!250960 m!307961))

(declare-fun m!307963 () Bool)

(assert (=> b!250961 m!307963))

(declare-fun m!307965 () Bool)

(assert (=> b!250961 m!307965))

(assert (=> b!250961 m!307963))

(assert (=> b!250961 m!307965))

(declare-fun m!307967 () Bool)

(assert (=> b!250961 m!307967))

(assert (=> d!70425 d!70581))

(declare-fun d!70591 () Bool)

(declare-fun e!155920 () Bool)

(assert (=> d!70591 e!155920))

(declare-fun res!116378 () Bool)

(assert (=> d!70591 (=> (not res!116378) (not e!155920))))

(declare-fun lt!102449 () BalanceConc!2450)

(assert (=> d!70591 (= res!116378 (= (list!1460 lt!102449) (t!35394 tokens!465)))))

(declare-fun fromList!150 (List!3690) Conc!1221)

(assert (=> d!70591 (= lt!102449 (BalanceConc!2451 (fromList!150 (t!35394 tokens!465))))))

(assert (=> d!70591 (= (fromListB!280 (t!35394 tokens!465)) lt!102449)))

(declare-fun b!250964 () Bool)

(assert (=> b!250964 (= e!155920 (isBalanced!315 (fromList!150 (t!35394 tokens!465))))))

(assert (= (and d!70591 res!116378) b!250964))

(declare-fun m!307969 () Bool)

(assert (=> d!70591 m!307969))

(declare-fun m!307971 () Bool)

(assert (=> d!70591 m!307971))

(assert (=> b!250964 m!307971))

(assert (=> b!250964 m!307971))

(declare-fun m!307973 () Bool)

(assert (=> b!250964 m!307973))

(assert (=> d!70273 d!70591))

(declare-fun d!70593 () Bool)

(declare-fun res!116379 () Bool)

(declare-fun e!155921 () Bool)

(assert (=> d!70593 (=> res!116379 e!155921)))

(assert (=> d!70593 (= res!116379 ((_ is Nil!3680) (list!1460 lt!101844)))))

(assert (=> d!70593 (= (forall!865 (list!1460 lt!101844) lambda!8285) e!155921)))

(declare-fun b!250965 () Bool)

(declare-fun e!155922 () Bool)

(assert (=> b!250965 (= e!155921 e!155922)))

(declare-fun res!116380 () Bool)

(assert (=> b!250965 (=> (not res!116380) (not e!155922))))

(assert (=> b!250965 (= res!116380 (dynLambda!1813 lambda!8285 (h!9077 (list!1460 lt!101844))))))

(declare-fun b!250966 () Bool)

(assert (=> b!250966 (= e!155922 (forall!865 (t!35394 (list!1460 lt!101844)) lambda!8285))))

(assert (= (and d!70593 (not res!116379)) b!250965))

(assert (= (and b!250965 res!116380) b!250966))

(declare-fun b_lambda!7395 () Bool)

(assert (=> (not b_lambda!7395) (not b!250965)))

(declare-fun m!307975 () Bool)

(assert (=> b!250965 m!307975))

(declare-fun m!307977 () Bool)

(assert (=> b!250966 m!307977))

(assert (=> d!70337 d!70593))

(declare-fun d!70595 () Bool)

(assert (=> d!70595 (= (list!1460 lt!101844) (list!1465 (c!47454 lt!101844)))))

(declare-fun bs!26941 () Bool)

(assert (= bs!26941 d!70595))

(declare-fun m!307979 () Bool)

(assert (=> bs!26941 m!307979))

(assert (=> d!70337 d!70595))

(declare-fun b!250975 () Bool)

(declare-fun e!155930 () Bool)

(declare-fun e!155931 () Bool)

(assert (=> b!250975 (= e!155930 e!155931)))

(declare-fun c!47671 () Bool)

(assert (=> b!250975 (= c!47671 ((_ is Leaf!1910) (c!47454 lt!101844)))))

(declare-fun b!250976 () Bool)

(declare-fun forall!869 (IArray!2443 Int) Bool)

(assert (=> b!250976 (= e!155931 (forall!869 (xs!3816 (c!47454 lt!101844)) lambda!8285))))

(declare-fun b!250978 () Bool)

(declare-fun e!155929 () Bool)

(assert (=> b!250978 (= e!155929 (forall!867 (right!3355 (c!47454 lt!101844)) lambda!8285))))

(declare-fun d!70597 () Bool)

(declare-fun lt!102455 () Bool)

(assert (=> d!70597 (= lt!102455 (forall!865 (list!1465 (c!47454 lt!101844)) lambda!8285))))

(assert (=> d!70597 (= lt!102455 e!155930)))

(declare-fun res!116385 () Bool)

(assert (=> d!70597 (=> res!116385 e!155930)))

(assert (=> d!70597 (= res!116385 ((_ is Empty!1221) (c!47454 lt!101844)))))

(assert (=> d!70597 (= (forall!867 (c!47454 lt!101844) lambda!8285) lt!102455)))

(declare-fun b!250977 () Bool)

(assert (=> b!250977 (= e!155931 e!155929)))

(declare-fun lt!102454 () Unit!4472)

(declare-fun lemmaForallConcat!18 (List!3690 List!3690 Int) Unit!4472)

(assert (=> b!250977 (= lt!102454 (lemmaForallConcat!18 (list!1465 (left!3025 (c!47454 lt!101844))) (list!1465 (right!3355 (c!47454 lt!101844))) lambda!8285))))

(declare-fun res!116386 () Bool)

(assert (=> b!250977 (= res!116386 (forall!867 (left!3025 (c!47454 lt!101844)) lambda!8285))))

(assert (=> b!250977 (=> (not res!116386) (not e!155929))))

(assert (= (and d!70597 (not res!116385)) b!250975))

(assert (= (and b!250975 c!47671) b!250976))

(assert (= (and b!250975 (not c!47671)) b!250977))

(assert (= (and b!250977 res!116386) b!250978))

(declare-fun m!307981 () Bool)

(assert (=> b!250976 m!307981))

(declare-fun m!307983 () Bool)

(assert (=> b!250978 m!307983))

(assert (=> d!70597 m!307979))

(assert (=> d!70597 m!307979))

(declare-fun m!307985 () Bool)

(assert (=> d!70597 m!307985))

(declare-fun m!307987 () Bool)

(assert (=> b!250977 m!307987))

(declare-fun m!307989 () Bool)

(assert (=> b!250977 m!307989))

(assert (=> b!250977 m!307987))

(assert (=> b!250977 m!307989))

(declare-fun m!307991 () Bool)

(assert (=> b!250977 m!307991))

(declare-fun m!307993 () Bool)

(assert (=> b!250977 m!307993))

(assert (=> d!70337 d!70597))

(assert (=> d!70257 d!70259))

(assert (=> d!70257 d!70267))

(declare-fun b!250979 () Bool)

(declare-fun e!155932 () List!3688)

(assert (=> b!250979 (= e!155932 (++!942 lt!101837 lt!101842))))

(declare-fun b!250980 () Bool)

(assert (=> b!250980 (= e!155932 (Cons!3678 (h!9075 lt!101834) (++!942 (t!35392 lt!101834) (++!942 lt!101837 lt!101842))))))

(declare-fun b!250982 () Bool)

(declare-fun lt!102456 () List!3688)

(declare-fun e!155933 () Bool)

(assert (=> b!250982 (= e!155933 (or (not (= (++!942 lt!101837 lt!101842) Nil!3678)) (= lt!102456 lt!101834)))))

(declare-fun d!70599 () Bool)

(assert (=> d!70599 e!155933))

(declare-fun res!116388 () Bool)

(assert (=> d!70599 (=> (not res!116388) (not e!155933))))

(assert (=> d!70599 (= res!116388 (= (content!513 lt!102456) ((_ map or) (content!513 lt!101834) (content!513 (++!942 lt!101837 lt!101842)))))))

(assert (=> d!70599 (= lt!102456 e!155932)))

(declare-fun c!47672 () Bool)

(assert (=> d!70599 (= c!47672 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70599 (= (++!942 lt!101834 (++!942 lt!101837 lt!101842)) lt!102456)))

(declare-fun b!250981 () Bool)

(declare-fun res!116387 () Bool)

(assert (=> b!250981 (=> (not res!116387) (not e!155933))))

(assert (=> b!250981 (= res!116387 (= (size!2913 lt!102456) (+ (size!2913 lt!101834) (size!2913 (++!942 lt!101837 lt!101842)))))))

(assert (= (and d!70599 c!47672) b!250979))

(assert (= (and d!70599 (not c!47672)) b!250980))

(assert (= (and d!70599 res!116388) b!250981))

(assert (= (and b!250981 res!116387) b!250982))

(assert (=> b!250980 m!306135))

(declare-fun m!307995 () Bool)

(assert (=> b!250980 m!307995))

(declare-fun m!307997 () Bool)

(assert (=> d!70599 m!307997))

(assert (=> d!70599 m!306177))

(assert (=> d!70599 m!306135))

(declare-fun m!307999 () Bool)

(assert (=> d!70599 m!307999))

(declare-fun m!308001 () Bool)

(assert (=> b!250981 m!308001))

(assert (=> b!250981 m!306183))

(assert (=> b!250981 m!306135))

(declare-fun m!308003 () Bool)

(assert (=> b!250981 m!308003))

(assert (=> d!70257 d!70599))

(declare-fun d!70601 () Bool)

(assert (=> d!70601 (= (++!942 (++!942 lt!101834 lt!101837) lt!101842) (++!942 lt!101834 (++!942 lt!101837 lt!101842)))))

(assert (=> d!70601 true))

(declare-fun _$52!719 () Unit!4472)

(assert (=> d!70601 (= (choose!2352 lt!101834 lt!101837 lt!101842) _$52!719)))

(declare-fun bs!26942 () Bool)

(assert (= bs!26942 d!70601))

(assert (=> bs!26942 m!306131))

(assert (=> bs!26942 m!306131))

(assert (=> bs!26942 m!306133))

(assert (=> bs!26942 m!306135))

(assert (=> bs!26942 m!306135))

(assert (=> bs!26942 m!306711))

(assert (=> d!70257 d!70601))

(assert (=> d!70257 d!70271))

(declare-fun d!70603 () Bool)

(assert (=> d!70603 (= (list!1461 call!13250) (list!1463 (c!47452 call!13250)))))

(declare-fun bs!26943 () Bool)

(assert (= bs!26943 d!70603))

(declare-fun m!308005 () Bool)

(assert (=> bs!26943 m!308005))

(assert (=> b!250288 d!70603))

(declare-fun d!70605 () Bool)

(assert (=> d!70605 (= (list!1461 lt!102100) (list!1463 (c!47452 lt!102100)))))

(declare-fun bs!26944 () Bool)

(assert (= bs!26944 d!70605))

(declare-fun m!308007 () Bool)

(assert (=> bs!26944 m!308007))

(assert (=> b!250288 d!70605))

(declare-fun d!70607 () Bool)

(declare-fun lt!102464 () BalanceConc!2448)

(assert (=> d!70607 (= (list!1461 lt!102464) (printListTailRec!113 thiss!17480 (dropList!145 (singletonSeq!251 call!13247) 0) (list!1461 (BalanceConc!2449 Empty!1220))))))

(declare-fun e!155941 () BalanceConc!2448)

(assert (=> d!70607 (= lt!102464 e!155941)))

(declare-fun c!47677 () Bool)

(assert (=> d!70607 (= c!47677 (>= 0 (size!2911 (singletonSeq!251 call!13247))))))

(declare-fun e!155940 () Bool)

(assert (=> d!70607 e!155940))

(declare-fun res!116391 () Bool)

(assert (=> d!70607 (=> (not res!116391) (not e!155940))))

(assert (=> d!70607 (= res!116391 (>= 0 0))))

(assert (=> d!70607 (= (printTailRec!279 thiss!17480 (singletonSeq!251 call!13247) 0 (BalanceConc!2449 Empty!1220)) lt!102464)))

(declare-fun b!250993 () Bool)

(assert (=> b!250993 (= e!155940 (<= 0 (size!2911 (singletonSeq!251 call!13247))))))

(declare-fun b!250994 () Bool)

(assert (=> b!250994 (= e!155941 (BalanceConc!2449 Empty!1220))))

(declare-fun b!250995 () Bool)

(assert (=> b!250995 (= e!155941 (printTailRec!279 thiss!17480 (singletonSeq!251 call!13247) (+ 0 1) (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 (singletonSeq!251 call!13247) 0)))))))

(declare-fun lt!102465 () List!3690)

(assert (=> b!250995 (= lt!102465 (list!1460 (singletonSeq!251 call!13247)))))

(declare-fun lt!102469 () Unit!4472)

(assert (=> b!250995 (= lt!102469 (lemmaDropApply!185 lt!102465 0))))

(assert (=> b!250995 (= (head!864 (drop!198 lt!102465 0)) (apply!695 lt!102465 0))))

(declare-fun lt!102467 () Unit!4472)

(assert (=> b!250995 (= lt!102467 lt!102469)))

(declare-fun lt!102466 () List!3690)

(assert (=> b!250995 (= lt!102466 (list!1460 (singletonSeq!251 call!13247)))))

(declare-fun lt!102468 () Unit!4472)

(assert (=> b!250995 (= lt!102468 (lemmaDropTail!177 lt!102466 0))))

(assert (=> b!250995 (= (tail!455 (drop!198 lt!102466 0)) (drop!198 lt!102466 (+ 0 1)))))

(declare-fun lt!102463 () Unit!4472)

(assert (=> b!250995 (= lt!102463 lt!102468)))

(assert (= (and d!70607 res!116391) b!250993))

(assert (= (and d!70607 c!47677) b!250994))

(assert (= (and d!70607 (not c!47677)) b!250995))

(assert (=> d!70607 m!306307))

(assert (=> d!70607 m!306795))

(declare-fun m!308009 () Bool)

(assert (=> d!70607 m!308009))

(assert (=> d!70607 m!308009))

(assert (=> d!70607 m!306307))

(declare-fun m!308011 () Bool)

(assert (=> d!70607 m!308011))

(declare-fun m!308013 () Bool)

(assert (=> d!70607 m!308013))

(assert (=> d!70607 m!306795))

(declare-fun m!308015 () Bool)

(assert (=> d!70607 m!308015))

(assert (=> b!250993 m!306795))

(assert (=> b!250993 m!308015))

(declare-fun m!308017 () Bool)

(assert (=> b!250995 m!308017))

(declare-fun m!308019 () Bool)

(assert (=> b!250995 m!308019))

(assert (=> b!250995 m!306795))

(declare-fun m!308021 () Bool)

(assert (=> b!250995 m!308021))

(declare-fun m!308023 () Bool)

(assert (=> b!250995 m!308023))

(declare-fun m!308025 () Bool)

(assert (=> b!250995 m!308025))

(assert (=> b!250995 m!306795))

(declare-fun m!308027 () Bool)

(assert (=> b!250995 m!308027))

(declare-fun m!308029 () Bool)

(assert (=> b!250995 m!308029))

(declare-fun m!308031 () Bool)

(assert (=> b!250995 m!308031))

(declare-fun m!308033 () Bool)

(assert (=> b!250995 m!308033))

(assert (=> b!250995 m!308031))

(declare-fun m!308035 () Bool)

(assert (=> b!250995 m!308035))

(assert (=> b!250995 m!306795))

(declare-fun m!308037 () Bool)

(assert (=> b!250995 m!308037))

(declare-fun m!308039 () Bool)

(assert (=> b!250995 m!308039))

(assert (=> b!250995 m!308017))

(assert (=> b!250995 m!308021))

(declare-fun m!308041 () Bool)

(assert (=> b!250995 m!308041))

(assert (=> b!250995 m!308041))

(assert (=> b!250995 m!308037))

(assert (=> b!250288 d!70607))

(declare-fun d!70609 () Bool)

(declare-fun lt!102473 () BalanceConc!2448)

(assert (=> d!70609 (= (list!1461 lt!102473) (printList!269 thiss!17480 (list!1460 (singletonSeq!251 call!13247))))))

(assert (=> d!70609 (= lt!102473 (printTailRec!279 thiss!17480 (singletonSeq!251 call!13247) 0 (BalanceConc!2449 Empty!1220)))))

(assert (=> d!70609 (= (print!316 thiss!17480 (singletonSeq!251 call!13247)) lt!102473)))

(declare-fun bs!26945 () Bool)

(assert (= bs!26945 d!70609))

(declare-fun m!308053 () Bool)

(assert (=> bs!26945 m!308053))

(assert (=> bs!26945 m!306795))

(assert (=> bs!26945 m!308027))

(assert (=> bs!26945 m!308027))

(declare-fun m!308057 () Bool)

(assert (=> bs!26945 m!308057))

(assert (=> bs!26945 m!306795))

(assert (=> bs!26945 m!306797))

(assert (=> b!250288 d!70609))

(declare-fun d!70613 () Bool)

(declare-fun e!155945 () Bool)

(assert (=> d!70613 e!155945))

(declare-fun res!116393 () Bool)

(assert (=> d!70613 (=> (not res!116393) (not e!155945))))

(declare-fun lt!102474 () BalanceConc!2450)

(assert (=> d!70613 (= res!116393 (= (list!1460 lt!102474) (Cons!3680 call!13247 Nil!3680)))))

(assert (=> d!70613 (= lt!102474 (singleton!94 call!13247))))

(assert (=> d!70613 (= (singletonSeq!251 call!13247) lt!102474)))

(declare-fun b!251001 () Bool)

(assert (=> b!251001 (= e!155945 (isBalanced!315 (c!47454 lt!102474)))))

(assert (= (and d!70613 res!116393) b!251001))

(declare-fun m!308061 () Bool)

(assert (=> d!70613 m!308061))

(declare-fun m!308063 () Bool)

(assert (=> d!70613 m!308063))

(declare-fun m!308065 () Bool)

(assert (=> b!251001 m!308065))

(assert (=> b!250288 d!70613))

(declare-fun b!251002 () Bool)

(declare-fun res!116394 () Bool)

(declare-fun e!155947 () Bool)

(assert (=> b!251002 (=> (not res!116394) (not e!155947))))

(declare-fun lt!102483 () Token!1142)

(assert (=> b!251002 (= res!116394 (matchR!261 (regex!699 (get!1213 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!102483))))) (list!1461 (charsOf!354 lt!102483))))))

(declare-fun b!251004 () Bool)

(declare-fun e!155946 () Unit!4472)

(declare-fun Unit!4494 () Unit!4472)

(assert (=> b!251004 (= e!155946 Unit!4494)))

(declare-fun lt!102475 () List!3688)

(assert (=> b!251004 (= lt!102475 (++!942 (list!1461 call!13250) (list!1461 lt!102100)))))

(declare-fun lt!102484 () Unit!4472)

(assert (=> b!251004 (= lt!102484 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!44 thiss!17480 (rule!1276 lt!102483) rules!1920 lt!102475))))

(assert (=> b!251004 (isEmpty!2282 (maxPrefixOneRule!129 thiss!17480 (rule!1276 lt!102483) lt!102475))))

(declare-fun lt!102480 () Unit!4472)

(assert (=> b!251004 (= lt!102480 lt!102484)))

(declare-fun lt!102487 () List!3688)

(assert (=> b!251004 (= lt!102487 (list!1461 (charsOf!354 lt!102483)))))

(declare-fun lt!102491 () Unit!4472)

(assert (=> b!251004 (= lt!102491 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!44 thiss!17480 (rule!1276 lt!102483) lt!102487 (++!942 (list!1461 call!13250) (list!1461 lt!102100))))))

(assert (=> b!251004 (not (matchR!261 (regex!699 (rule!1276 lt!102483)) lt!102487))))

(declare-fun lt!102486 () Unit!4472)

(assert (=> b!251004 (= lt!102486 lt!102491)))

(assert (=> b!251004 false))

(declare-fun b!251005 () Bool)

(declare-fun Unit!4495 () Unit!4472)

(assert (=> b!251005 (= e!155946 Unit!4495)))

(declare-fun b!251003 () Bool)

(assert (=> b!251003 (= e!155947 (= (rule!1276 lt!102483) (get!1213 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!102483))))))))

(declare-fun d!70617 () Bool)

(assert (=> d!70617 (isDefined!611 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 call!13250) (list!1461 lt!102100))))))

(declare-fun lt!102488 () Unit!4472)

(assert (=> d!70617 (= lt!102488 e!155946)))

(declare-fun c!47680 () Bool)

(assert (=> d!70617 (= c!47680 (isEmpty!2282 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 call!13250) (list!1461 lt!102100)))))))

(declare-fun lt!102481 () Unit!4472)

(declare-fun lt!102489 () Unit!4472)

(assert (=> d!70617 (= lt!102481 lt!102489)))

(assert (=> d!70617 e!155947))

(declare-fun res!116395 () Bool)

(assert (=> d!70617 (=> (not res!116395) (not e!155947))))

(assert (=> d!70617 (= res!116395 (isDefined!614 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!102483)))))))

(assert (=> d!70617 (= lt!102489 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!112 thiss!17480 rules!1920 (list!1461 call!13250) lt!102483))))

(declare-fun lt!102478 () Unit!4472)

(declare-fun lt!102485 () Unit!4472)

(assert (=> d!70617 (= lt!102478 lt!102485)))

(declare-fun lt!102476 () List!3688)

(assert (=> d!70617 (isPrefix!383 lt!102476 (++!942 (list!1461 call!13250) (list!1461 lt!102100)))))

(assert (=> d!70617 (= lt!102485 (lemmaPrefixStaysPrefixWhenAddingToSuffix!44 lt!102476 (list!1461 call!13250) (list!1461 lt!102100)))))

(assert (=> d!70617 (= lt!102476 (list!1461 (charsOf!354 lt!102483)))))

(declare-fun lt!102490 () Unit!4472)

(declare-fun lt!102477 () Unit!4472)

(assert (=> d!70617 (= lt!102490 lt!102477)))

(declare-fun lt!102482 () List!3688)

(declare-fun lt!102479 () List!3688)

(assert (=> d!70617 (isPrefix!383 lt!102482 (++!942 lt!102482 lt!102479))))

(assert (=> d!70617 (= lt!102477 (lemmaConcatTwoListThenFirstIsPrefix!278 lt!102482 lt!102479))))

(assert (=> d!70617 (= lt!102479 (_2!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 call!13250)))))))

(assert (=> d!70617 (= lt!102482 (list!1461 (charsOf!354 lt!102483)))))

(assert (=> d!70617 (= lt!102483 (head!864 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 (list!1461 call!13250)))))))))

(assert (=> d!70617 (not (isEmpty!2279 rules!1920))))

(assert (=> d!70617 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 (list!1461 call!13250) (list!1461 lt!102100)) lt!102488)))

(assert (= (and d!70617 res!116395) b!251002))

(assert (= (and b!251002 res!116394) b!251003))

(assert (= (and d!70617 c!47680) b!251004))

(assert (= (and d!70617 (not c!47680)) b!251005))

(declare-fun m!308067 () Bool)

(assert (=> b!251002 m!308067))

(declare-fun m!308069 () Bool)

(assert (=> b!251002 m!308069))

(declare-fun m!308071 () Bool)

(assert (=> b!251002 m!308071))

(assert (=> b!251002 m!308067))

(assert (=> b!251002 m!308069))

(declare-fun m!308073 () Bool)

(assert (=> b!251002 m!308073))

(assert (=> b!251002 m!308073))

(declare-fun m!308075 () Bool)

(assert (=> b!251002 m!308075))

(declare-fun m!308077 () Bool)

(assert (=> b!251004 m!308077))

(assert (=> b!251004 m!308067))

(declare-fun m!308079 () Bool)

(assert (=> b!251004 m!308079))

(declare-fun m!308081 () Bool)

(assert (=> b!251004 m!308081))

(declare-fun m!308083 () Bool)

(assert (=> b!251004 m!308083))

(declare-fun m!308085 () Bool)

(assert (=> b!251004 m!308085))

(assert (=> b!251004 m!306789))

(assert (=> b!251004 m!306791))

(assert (=> b!251004 m!308081))

(assert (=> b!251004 m!308079))

(declare-fun m!308087 () Bool)

(assert (=> b!251004 m!308087))

(assert (=> b!251004 m!308067))

(assert (=> b!251004 m!308069))

(assert (=> b!251003 m!308073))

(assert (=> b!251003 m!308073))

(assert (=> b!251003 m!308075))

(assert (=> d!70617 m!306789))

(assert (=> d!70617 m!306791))

(declare-fun m!308089 () Bool)

(assert (=> d!70617 m!308089))

(assert (=> d!70617 m!308081))

(declare-fun m!308091 () Bool)

(assert (=> d!70617 m!308091))

(assert (=> d!70617 m!306031))

(declare-fun m!308093 () Bool)

(assert (=> d!70617 m!308093))

(assert (=> d!70617 m!306789))

(declare-fun m!308095 () Bool)

(assert (=> d!70617 m!308095))

(assert (=> d!70617 m!308073))

(declare-fun m!308097 () Bool)

(assert (=> d!70617 m!308097))

(declare-fun m!308099 () Bool)

(assert (=> d!70617 m!308099))

(assert (=> d!70617 m!306789))

(assert (=> d!70617 m!306791))

(assert (=> d!70617 m!308081))

(assert (=> d!70617 m!308091))

(declare-fun m!308101 () Bool)

(assert (=> d!70617 m!308101))

(declare-fun m!308103 () Bool)

(assert (=> d!70617 m!308103))

(declare-fun m!308105 () Bool)

(assert (=> d!70617 m!308105))

(assert (=> d!70617 m!308081))

(declare-fun m!308107 () Bool)

(assert (=> d!70617 m!308107))

(assert (=> d!70617 m!308095))

(declare-fun m!308109 () Bool)

(assert (=> d!70617 m!308109))

(assert (=> d!70617 m!306789))

(assert (=> d!70617 m!308103))

(assert (=> d!70617 m!308067))

(declare-fun m!308111 () Bool)

(assert (=> d!70617 m!308111))

(assert (=> d!70617 m!308073))

(declare-fun m!308113 () Bool)

(assert (=> d!70617 m!308113))

(assert (=> d!70617 m!306789))

(declare-fun m!308115 () Bool)

(assert (=> d!70617 m!308115))

(assert (=> d!70617 m!308097))

(assert (=> d!70617 m!308111))

(declare-fun m!308117 () Bool)

(assert (=> d!70617 m!308117))

(assert (=> d!70617 m!308091))

(declare-fun m!308119 () Bool)

(assert (=> d!70617 m!308119))

(assert (=> d!70617 m!308067))

(assert (=> d!70617 m!308069))

(assert (=> b!250288 d!70617))

(declare-fun bs!26961 () Bool)

(declare-fun d!70619 () Bool)

(assert (= bs!26961 (and d!70619 b!250061)))

(declare-fun lambda!8335 () Int)

(assert (=> bs!26961 (= lambda!8335 lambda!8295)))

(declare-fun bs!26962 () Bool)

(assert (= bs!26962 (and d!70619 d!70263)))

(assert (=> bs!26962 (not (= lambda!8335 lambda!8316))))

(declare-fun bs!26963 () Bool)

(assert (= bs!26963 (and d!70619 b!250282)))

(assert (=> bs!26963 (= lambda!8335 lambda!8315)))

(declare-fun bs!26964 () Bool)

(assert (= bs!26964 (and d!70619 b!250290)))

(assert (=> bs!26964 (= lambda!8335 lambda!8317)))

(declare-fun bs!26965 () Bool)

(assert (= bs!26965 (and d!70619 d!70223)))

(assert (=> bs!26965 (= lambda!8335 lambda!8309)))

(declare-fun bs!26966 () Bool)

(assert (= bs!26966 (and d!70619 d!70193)))

(assert (=> bs!26966 (not (= lambda!8335 lambda!8294))))

(declare-fun bs!26967 () Bool)

(assert (= bs!26967 (and d!70619 b!250190)))

(assert (=> bs!26967 (= lambda!8335 lambda!8304)))

(declare-fun bs!26968 () Bool)

(assert (= bs!26968 (and d!70619 b!249873)))

(assert (=> bs!26968 (not (= lambda!8335 lambda!8285))))

(declare-fun bs!26969 () Bool)

(assert (= bs!26969 (and d!70619 d!70365)))

(assert (=> bs!26969 (not (= lambda!8335 lambda!8323))))

(declare-fun bs!26970 () Bool)

(assert (= bs!26970 (and d!70619 b!249874)))

(assert (=> bs!26970 (= lambda!8335 lambda!8286)))

(declare-fun b!251117 () Bool)

(declare-fun e!156012 () Bool)

(assert (=> b!251117 (= e!156012 true)))

(declare-fun b!251116 () Bool)

(declare-fun e!156011 () Bool)

(assert (=> b!251116 (= e!156011 e!156012)))

(declare-fun b!251115 () Bool)

(declare-fun e!156010 () Bool)

(assert (=> b!251115 (= e!156010 e!156011)))

(assert (=> d!70619 e!156010))

(assert (= b!251116 b!251117))

(assert (= b!251115 b!251116))

(assert (= (and d!70619 ((_ is Cons!3679) rules!1920)) b!251115))

(assert (=> b!251117 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8335))))

(assert (=> b!251117 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8335))))

(assert (=> d!70619 true))

(declare-fun lt!102559 () Bool)

(assert (=> d!70619 (= lt!102559 (forall!865 (list!1460 lt!101844) lambda!8335))))

(declare-fun e!156008 () Bool)

(assert (=> d!70619 (= lt!102559 e!156008)))

(declare-fun res!116441 () Bool)

(assert (=> d!70619 (=> res!116441 e!156008)))

(assert (=> d!70619 (= res!116441 (not ((_ is Cons!3680) (list!1460 lt!101844))))))

(assert (=> d!70619 (not (isEmpty!2279 rules!1920))))

(assert (=> d!70619 (= (rulesProduceEachTokenIndividuallyList!206 thiss!17480 rules!1920 (list!1460 lt!101844)) lt!102559)))

(declare-fun b!251113 () Bool)

(declare-fun e!156009 () Bool)

(assert (=> b!251113 (= e!156008 e!156009)))

(declare-fun res!116442 () Bool)

(assert (=> b!251113 (=> (not res!116442) (not e!156009))))

(assert (=> b!251113 (= res!116442 (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (h!9077 (list!1460 lt!101844))))))

(declare-fun b!251114 () Bool)

(assert (=> b!251114 (= e!156009 (rulesProduceEachTokenIndividuallyList!206 thiss!17480 rules!1920 (t!35394 (list!1460 lt!101844))))))

(assert (= (and d!70619 (not res!116441)) b!251113))

(assert (= (and b!251113 res!116442) b!251114))

(assert (=> d!70619 m!306399))

(declare-fun m!308413 () Bool)

(assert (=> d!70619 m!308413))

(assert (=> d!70619 m!306031))

(declare-fun m!308417 () Bool)

(assert (=> b!251113 m!308417))

(declare-fun m!308419 () Bool)

(assert (=> b!251114 m!308419))

(assert (=> b!250208 d!70619))

(assert (=> b!250208 d!70595))

(declare-fun d!70715 () Bool)

(assert (=> d!70715 (= (head!866 lt!101834) (h!9075 lt!101834))))

(assert (=> b!250524 d!70715))

(declare-fun b!251142 () Bool)

(declare-fun e!156026 () List!3688)

(assert (=> b!251142 (= e!156026 (_2!2273 lt!101826))))

(declare-fun b!251143 () Bool)

(assert (=> b!251143 (= e!156026 (Cons!3678 (h!9075 (t!35392 lt!101834)) (++!942 (t!35392 (t!35392 lt!101834)) (_2!2273 lt!101826))))))

(declare-fun e!156027 () Bool)

(declare-fun b!251145 () Bool)

(declare-fun lt!102562 () List!3688)

(assert (=> b!251145 (= e!156027 (or (not (= (_2!2273 lt!101826) Nil!3678)) (= lt!102562 (t!35392 lt!101834))))))

(declare-fun d!70719 () Bool)

(assert (=> d!70719 e!156027))

(declare-fun res!116454 () Bool)

(assert (=> d!70719 (=> (not res!116454) (not e!156027))))

(assert (=> d!70719 (= res!116454 (= (content!513 lt!102562) ((_ map or) (content!513 (t!35392 lt!101834)) (content!513 (_2!2273 lt!101826)))))))

(assert (=> d!70719 (= lt!102562 e!156026)))

(declare-fun c!47719 () Bool)

(assert (=> d!70719 (= c!47719 ((_ is Nil!3678) (t!35392 lt!101834)))))

(assert (=> d!70719 (= (++!942 (t!35392 lt!101834) (_2!2273 lt!101826)) lt!102562)))

(declare-fun b!251144 () Bool)

(declare-fun res!116453 () Bool)

(assert (=> b!251144 (=> (not res!116453) (not e!156027))))

(assert (=> b!251144 (= res!116453 (= (size!2913 lt!102562) (+ (size!2913 (t!35392 lt!101834)) (size!2913 (_2!2273 lt!101826)))))))

(assert (= (and d!70719 c!47719) b!251142))

(assert (= (and d!70719 (not c!47719)) b!251143))

(assert (= (and d!70719 res!116454) b!251144))

(assert (= (and b!251144 res!116453) b!251145))

(declare-fun m!308429 () Bool)

(assert (=> b!251143 m!308429))

(declare-fun m!308431 () Bool)

(assert (=> d!70719 m!308431))

(assert (=> d!70719 m!307821))

(assert (=> d!70719 m!306697))

(declare-fun m!308433 () Bool)

(assert (=> b!251144 m!308433))

(assert (=> b!251144 m!307497))

(assert (=> b!251144 m!306701))

(assert (=> b!250252 d!70719))

(declare-fun b!251147 () Bool)

(declare-fun e!156028 () List!3688)

(declare-fun e!156029 () List!3688)

(assert (=> b!251147 (= e!156028 e!156029)))

(declare-fun c!47721 () Bool)

(assert (=> b!251147 (= c!47721 ((_ is Leaf!1909) (c!47452 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0))))))

(declare-fun b!251149 () Bool)

(assert (=> b!251149 (= e!156029 (++!942 (list!1463 (left!3024 (c!47452 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0)))) (list!1463 (right!3354 (c!47452 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0))))))))

(declare-fun b!251148 () Bool)

(assert (=> b!251148 (= e!156029 (list!1466 (xs!3815 (c!47452 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0)))))))

(declare-fun c!47720 () Bool)

(declare-fun d!70721 () Bool)

(assert (=> d!70721 (= c!47720 ((_ is Empty!1220) (c!47452 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0))))))

(assert (=> d!70721 (= (list!1463 (c!47452 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 0))) e!156028)))

(declare-fun b!251146 () Bool)

(assert (=> b!251146 (= e!156028 Nil!3678)))

(assert (= (and d!70721 c!47720) b!251146))

(assert (= (and d!70721 (not c!47720)) b!251147))

(assert (= (and b!251147 c!47721) b!251148))

(assert (= (and b!251147 (not c!47721)) b!251149))

(declare-fun m!308441 () Bool)

(assert (=> b!251149 m!308441))

(declare-fun m!308445 () Bool)

(assert (=> b!251149 m!308445))

(assert (=> b!251149 m!308441))

(assert (=> b!251149 m!308445))

(declare-fun m!308447 () Bool)

(assert (=> b!251149 m!308447))

(declare-fun m!308451 () Bool)

(assert (=> b!251148 m!308451))

(assert (=> d!70191 d!70721))

(declare-fun d!70723 () Bool)

(assert (=> d!70723 (= (list!1461 (ite c!47548 call!13245 e!155489)) (list!1463 (c!47452 (ite c!47548 call!13245 e!155489))))))

(declare-fun bs!26971 () Bool)

(assert (= bs!26971 d!70723))

(declare-fun m!308453 () Bool)

(assert (=> bs!26971 m!308453))

(assert (=> bm!13240 d!70723))

(declare-fun d!70727 () Bool)

(assert (=> d!70727 (= (isEmpty!2277 (originalCharacters!742 separatorToken!170)) ((_ is Nil!3678) (originalCharacters!742 separatorToken!170)))))

(assert (=> d!70321 d!70727))

(declare-fun d!70729 () Bool)

(declare-fun charsToBigInt!0 (List!3687 Int) Int)

(assert (=> d!70729 (= (inv!15 (value!24237 separatorToken!170)) (= (charsToBigInt!0 (text!5496 (value!24237 separatorToken!170)) 0) (value!24232 (value!24237 separatorToken!170))))))

(declare-fun bs!26972 () Bool)

(assert (= bs!26972 d!70729))

(declare-fun m!308455 () Bool)

(assert (=> bs!26972 m!308455))

(assert (=> b!250265 d!70729))

(declare-fun d!70731 () Bool)

(assert (=> d!70731 (= (list!1461 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))) (list!1463 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))))))

(declare-fun bs!26973 () Bool)

(assert (= bs!26973 d!70731))

(declare-fun m!308457 () Bool)

(assert (=> bs!26973 m!308457))

(assert (=> b!249941 d!70731))

(assert (=> bm!13227 d!70279))

(declare-fun b!251151 () Bool)

(declare-fun res!116457 () Bool)

(declare-fun e!156032 () Bool)

(assert (=> b!251151 (=> (not res!116457) (not e!156032))))

(assert (=> b!251151 (= res!116457 (= (head!866 lt!101834) (head!866 (++!942 lt!101834 lt!101842))))))

(declare-fun b!251150 () Bool)

(declare-fun e!156030 () Bool)

(assert (=> b!251150 (= e!156030 e!156032)))

(declare-fun res!116458 () Bool)

(assert (=> b!251150 (=> (not res!116458) (not e!156032))))

(assert (=> b!251150 (= res!116458 (not ((_ is Nil!3678) (++!942 lt!101834 lt!101842))))))

(declare-fun d!70733 () Bool)

(declare-fun e!156031 () Bool)

(assert (=> d!70733 e!156031))

(declare-fun res!116455 () Bool)

(assert (=> d!70733 (=> res!116455 e!156031)))

(declare-fun lt!102563 () Bool)

(assert (=> d!70733 (= res!116455 (not lt!102563))))

(assert (=> d!70733 (= lt!102563 e!156030)))

(declare-fun res!116456 () Bool)

(assert (=> d!70733 (=> res!116456 e!156030)))

(assert (=> d!70733 (= res!116456 ((_ is Nil!3678) lt!101834))))

(assert (=> d!70733 (= (isPrefix!383 lt!101834 (++!942 lt!101834 lt!101842)) lt!102563)))

(declare-fun b!251152 () Bool)

(assert (=> b!251152 (= e!156032 (isPrefix!383 (tail!458 lt!101834) (tail!458 (++!942 lt!101834 lt!101842))))))

(declare-fun b!251153 () Bool)

(assert (=> b!251153 (= e!156031 (>= (size!2913 (++!942 lt!101834 lt!101842)) (size!2913 lt!101834)))))

(assert (= (and d!70733 (not res!116456)) b!251150))

(assert (= (and b!251150 res!116458) b!251151))

(assert (= (and b!251151 res!116457) b!251152))

(assert (= (and d!70733 (not res!116455)) b!251153))

(assert (=> b!251151 m!307097))

(assert (=> b!251151 m!306041))

(declare-fun m!308459 () Bool)

(assert (=> b!251151 m!308459))

(assert (=> b!251152 m!307101))

(assert (=> b!251152 m!306041))

(declare-fun m!308461 () Bool)

(assert (=> b!251152 m!308461))

(assert (=> b!251152 m!307101))

(assert (=> b!251152 m!308461))

(declare-fun m!308463 () Bool)

(assert (=> b!251152 m!308463))

(assert (=> b!251153 m!306041))

(declare-fun m!308465 () Bool)

(assert (=> b!251153 m!308465))

(assert (=> b!251153 m!306183))

(assert (=> d!70427 d!70733))

(assert (=> d!70427 d!70153))

(declare-fun d!70735 () Bool)

(assert (=> d!70735 (isPrefix!383 lt!101834 (++!942 lt!101834 lt!101842))))

(assert (=> d!70735 true))

(declare-fun _$46!788 () Unit!4472)

(assert (=> d!70735 (= (choose!2362 lt!101834 lt!101842) _$46!788)))

(declare-fun bs!26974 () Bool)

(assert (= bs!26974 d!70735))

(assert (=> bs!26974 m!306041))

(assert (=> bs!26974 m!306041))

(assert (=> bs!26974 m!307411))

(assert (=> d!70427 d!70735))

(declare-fun d!70737 () Bool)

(declare-fun lt!102564 () Bool)

(assert (=> d!70737 (= lt!102564 (isEmpty!2277 (list!1461 (_2!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))))))))))

(assert (=> d!70737 (= lt!102564 (isEmpty!2289 (c!47452 (_2!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))))))))))

(assert (=> d!70737 (= (isEmpty!2288 (_2!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)))))) lt!102564)))

(declare-fun bs!26975 () Bool)

(assert (= bs!26975 d!70737))

(declare-fun m!308467 () Bool)

(assert (=> bs!26975 m!308467))

(assert (=> bs!26975 m!308467))

(declare-fun m!308469 () Bool)

(assert (=> bs!26975 m!308469))

(declare-fun m!308471 () Bool)

(assert (=> bs!26975 m!308471))

(assert (=> b!250445 d!70737))

(declare-fun b!251154 () Bool)

(declare-fun res!116461 () Bool)

(declare-fun e!156035 () Bool)

(assert (=> b!251154 (=> (not res!116461) (not e!156035))))

(declare-fun lt!102565 () tuple2!4116)

(assert (=> b!251154 (= res!116461 (= (list!1460 (_1!2274 lt!102565)) (_1!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))))))))))

(declare-fun d!70739 () Bool)

(assert (=> d!70739 e!156035))

(declare-fun res!116460 () Bool)

(assert (=> d!70739 (=> (not res!116460) (not e!156035))))

(declare-fun e!156033 () Bool)

(assert (=> d!70739 (= res!116460 e!156033)))

(declare-fun c!47722 () Bool)

(assert (=> d!70739 (= c!47722 (> (size!2911 (_1!2274 lt!102565)) 0))))

(assert (=> d!70739 (= lt!102565 (lexTailRecV2!158 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))) (BalanceConc!2449 Empty!1220) (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))) (BalanceConc!2451 Empty!1221)))))

(assert (=> d!70739 (= (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)))) lt!102565)))

(declare-fun b!251155 () Bool)

(declare-fun e!156034 () Bool)

(assert (=> b!251155 (= e!156034 (not (isEmpty!2280 (_1!2274 lt!102565))))))

(declare-fun b!251156 () Bool)

(assert (=> b!251156 (= e!156035 (= (list!1461 (_2!2274 lt!102565)) (_2!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))))))))))

(declare-fun b!251157 () Bool)

(assert (=> b!251157 (= e!156033 e!156034)))

(declare-fun res!116459 () Bool)

(assert (=> b!251157 (= res!116459 (< (size!2917 (_2!2274 lt!102565)) (size!2917 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))))))))

(assert (=> b!251157 (=> (not res!116459) (not e!156034))))

(declare-fun b!251158 () Bool)

(assert (=> b!251158 (= e!156033 (= (_2!2274 lt!102565) (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)))))))

(assert (= (and d!70739 c!47722) b!251157))

(assert (= (and d!70739 (not c!47722)) b!251158))

(assert (= (and b!251157 res!116459) b!251155))

(assert (= (and d!70739 res!116460) b!251154))

(assert (= (and b!251154 res!116461) b!251156))

(declare-fun m!308473 () Bool)

(assert (=> b!251155 m!308473))

(declare-fun m!308475 () Bool)

(assert (=> b!251157 m!308475))

(assert (=> b!251157 m!306577))

(declare-fun m!308477 () Bool)

(assert (=> b!251157 m!308477))

(declare-fun m!308479 () Bool)

(assert (=> b!251154 m!308479))

(assert (=> b!251154 m!306577))

(declare-fun m!308481 () Bool)

(assert (=> b!251154 m!308481))

(assert (=> b!251154 m!308481))

(declare-fun m!308483 () Bool)

(assert (=> b!251154 m!308483))

(declare-fun m!308485 () Bool)

(assert (=> d!70739 m!308485))

(assert (=> d!70739 m!306577))

(assert (=> d!70739 m!306577))

(declare-fun m!308487 () Bool)

(assert (=> d!70739 m!308487))

(declare-fun m!308489 () Bool)

(assert (=> b!251156 m!308489))

(assert (=> b!251156 m!306577))

(assert (=> b!251156 m!308481))

(assert (=> b!251156 m!308481))

(assert (=> b!251156 m!308483))

(assert (=> b!250445 d!70739))

(declare-fun d!70741 () Bool)

(declare-fun lt!102568 () BalanceConc!2448)

(assert (=> d!70741 (= (list!1461 lt!102568) (printList!269 thiss!17480 (list!1460 (singletonSeq!251 (h!9077 tokens!465)))))))

(assert (=> d!70741 (= lt!102568 (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)) 0 (BalanceConc!2449 Empty!1220)))))

(assert (=> d!70741 (= (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))) lt!102568)))

(declare-fun bs!26976 () Bool)

(assert (= bs!26976 d!70741))

(declare-fun m!308491 () Bool)

(assert (=> bs!26976 m!308491))

(assert (=> bs!26976 m!306099))

(assert (=> bs!26976 m!307011))

(assert (=> bs!26976 m!307011))

(declare-fun m!308493 () Bool)

(assert (=> bs!26976 m!308493))

(assert (=> bs!26976 m!306099))

(assert (=> bs!26976 m!306579))

(assert (=> b!250445 d!70741))

(assert (=> b!250445 d!70183))

(declare-fun d!70743 () Bool)

(declare-fun lt!102571 () Bool)

(declare-fun content!516 (List!3689) (InoxSet Rule!1198))

(assert (=> d!70743 (= lt!102571 (select (content!516 rules!1920) (rule!1276 (_1!2273 (get!1209 lt!102084)))))))

(declare-fun e!156050 () Bool)

(assert (=> d!70743 (= lt!102571 e!156050)))

(declare-fun res!116466 () Bool)

(assert (=> d!70743 (=> (not res!116466) (not e!156050))))

(assert (=> d!70743 (= res!116466 ((_ is Cons!3679) rules!1920))))

(assert (=> d!70743 (= (contains!678 rules!1920 (rule!1276 (_1!2273 (get!1209 lt!102084)))) lt!102571)))

(declare-fun b!251183 () Bool)

(declare-fun e!156051 () Bool)

(assert (=> b!251183 (= e!156050 e!156051)))

(declare-fun res!116467 () Bool)

(assert (=> b!251183 (=> res!116467 e!156051)))

(assert (=> b!251183 (= res!116467 (= (h!9076 rules!1920) (rule!1276 (_1!2273 (get!1209 lt!102084)))))))

(declare-fun b!251184 () Bool)

(assert (=> b!251184 (= e!156051 (contains!678 (t!35393 rules!1920) (rule!1276 (_1!2273 (get!1209 lt!102084)))))))

(assert (= (and d!70743 res!116466) b!251183))

(assert (= (and b!251183 (not res!116467)) b!251184))

(declare-fun m!308495 () Bool)

(assert (=> d!70743 m!308495))

(declare-fun m!308497 () Bool)

(assert (=> d!70743 m!308497))

(declare-fun m!308499 () Bool)

(assert (=> b!251184 m!308499))

(assert (=> b!250237 d!70743))

(assert (=> b!250237 d!70481))

(declare-fun d!70745 () Bool)

(declare-fun lt!102572 () Bool)

(assert (=> d!70745 (= lt!102572 (isEmpty!2278 (list!1460 (_1!2274 lt!102227))))))

(assert (=> d!70745 (= lt!102572 (isEmpty!2286 (c!47454 (_1!2274 lt!102227))))))

(assert (=> d!70745 (= (isEmpty!2280 (_1!2274 lt!102227)) lt!102572)))

(declare-fun bs!26977 () Bool)

(assert (= bs!26977 d!70745))

(assert (=> bs!26977 m!307209))

(assert (=> bs!26977 m!307209))

(declare-fun m!308501 () Bool)

(assert (=> bs!26977 m!308501))

(declare-fun m!308503 () Bool)

(assert (=> bs!26977 m!308503))

(assert (=> b!250581 d!70745))

(declare-fun d!70747 () Bool)

(assert (=> d!70747 (= (list!1461 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))) (list!1463 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))))))

(declare-fun bs!26978 () Bool)

(assert (= bs!26978 d!70747))

(declare-fun m!308505 () Bool)

(assert (=> bs!26978 m!308505))

(assert (=> b!250434 d!70747))

(assert (=> d!70365 d!70273))

(declare-fun bs!26984 () Bool)

(declare-fun d!70749 () Bool)

(assert (= bs!26984 (and d!70749 b!250061)))

(declare-fun lambda!8341 () Int)

(assert (=> bs!26984 (not (= lambda!8341 lambda!8295))))

(declare-fun bs!26985 () Bool)

(assert (= bs!26985 (and d!70749 d!70263)))

(assert (=> bs!26985 (= lambda!8341 lambda!8316)))

(declare-fun bs!26986 () Bool)

(assert (= bs!26986 (and d!70749 b!250282)))

(assert (=> bs!26986 (not (= lambda!8341 lambda!8315))))

(declare-fun bs!26987 () Bool)

(assert (= bs!26987 (and d!70749 b!250290)))

(assert (=> bs!26987 (not (= lambda!8341 lambda!8317))))

(declare-fun bs!26988 () Bool)

(assert (= bs!26988 (and d!70749 d!70223)))

(assert (=> bs!26988 (not (= lambda!8341 lambda!8309))))

(declare-fun bs!26989 () Bool)

(assert (= bs!26989 (and d!70749 b!250190)))

(assert (=> bs!26989 (not (= lambda!8341 lambda!8304))))

(declare-fun bs!26990 () Bool)

(assert (= bs!26990 (and d!70749 b!249873)))

(assert (=> bs!26990 (= lambda!8341 lambda!8285)))

(declare-fun bs!26991 () Bool)

(assert (= bs!26991 (and d!70749 d!70365)))

(assert (=> bs!26991 (= lambda!8341 lambda!8323)))

(declare-fun bs!26992 () Bool)

(assert (= bs!26992 (and d!70749 b!249874)))

(assert (=> bs!26992 (not (= lambda!8341 lambda!8286))))

(declare-fun bs!26993 () Bool)

(assert (= bs!26993 (and d!70749 d!70619)))

(assert (=> bs!26993 (not (= lambda!8341 lambda!8335))))

(declare-fun bs!26994 () Bool)

(assert (= bs!26994 (and d!70749 d!70193)))

(assert (=> bs!26994 (= lambda!8341 lambda!8294)))

(assert (=> d!70749 (= (filter!81 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))) lambda!8341) (t!35394 tokens!465))))

(assert (=> d!70749 true))

(declare-fun _$16!132 () Unit!4472)

(assert (=> d!70749 (= (choose!2360 thiss!17480 rules!1920 (t!35394 tokens!465) separatorToken!170) _$16!132)))

(declare-fun bs!26995 () Bool)

(assert (= bs!26995 d!70749))

(assert (=> bs!26995 m!306137))

(assert (=> bs!26995 m!307147))

(assert (=> bs!26995 m!307145))

(assert (=> bs!26995 m!307145))

(declare-fun m!308585 () Bool)

(assert (=> bs!26995 m!308585))

(assert (=> bs!26995 m!306121))

(assert (=> bs!26995 m!306137))

(assert (=> bs!26995 m!306121))

(assert (=> d!70365 d!70749))

(declare-fun b!251224 () Bool)

(declare-fun res!116479 () Bool)

(declare-fun e!156075 () Bool)

(assert (=> b!251224 (=> (not res!116479) (not e!156075))))

(declare-fun lt!102584 () tuple2!4116)

(assert (=> b!251224 (= res!116479 (= (list!1460 (_1!2274 lt!102584)) (_1!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0))))))))

(declare-fun d!70789 () Bool)

(assert (=> d!70789 e!156075))

(declare-fun res!116478 () Bool)

(assert (=> d!70789 (=> (not res!116478) (not e!156075))))

(declare-fun e!156073 () Bool)

(assert (=> d!70789 (= res!116478 e!156073)))

(declare-fun c!47745 () Bool)

(assert (=> d!70789 (= c!47745 (> (size!2911 (_1!2274 lt!102584)) 0))))

(assert (=> d!70789 (= lt!102584 (lexTailRecV2!158 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0) (BalanceConc!2449 Empty!1220) (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0) (BalanceConc!2451 Empty!1221)))))

(assert (=> d!70789 (= (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)) lt!102584)))

(declare-fun b!251225 () Bool)

(declare-fun e!156074 () Bool)

(assert (=> b!251225 (= e!156074 (not (isEmpty!2280 (_1!2274 lt!102584))))))

(declare-fun b!251226 () Bool)

(assert (=> b!251226 (= e!156075 (= (list!1461 (_2!2274 lt!102584)) (_2!2277 (lexList!191 thiss!17480 rules!1920 (list!1461 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0))))))))

(declare-fun b!251227 () Bool)

(assert (=> b!251227 (= e!156073 e!156074)))

(declare-fun res!116477 () Bool)

(assert (=> b!251227 (= res!116477 (< (size!2917 (_2!2274 lt!102584)) (size!2917 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0))))))

(assert (=> b!251227 (=> (not res!116477) (not e!156074))))

(declare-fun b!251228 () Bool)

(assert (=> b!251228 (= e!156073 (= (_2!2274 lt!102584) (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))))

(assert (= (and d!70789 c!47745) b!251227))

(assert (= (and d!70789 (not c!47745)) b!251228))

(assert (= (and b!251227 res!116477) b!251225))

(assert (= (and d!70789 res!116478) b!251224))

(assert (= (and b!251224 res!116479) b!251226))

(declare-fun m!308587 () Bool)

(assert (=> b!251225 m!308587))

(declare-fun m!308589 () Bool)

(assert (=> b!251227 m!308589))

(assert (=> b!251227 m!306137))

(declare-fun m!308591 () Bool)

(assert (=> b!251227 m!308591))

(declare-fun m!308593 () Bool)

(assert (=> b!251224 m!308593))

(assert (=> b!251224 m!306137))

(declare-fun m!308595 () Bool)

(assert (=> b!251224 m!308595))

(assert (=> b!251224 m!308595))

(declare-fun m!308597 () Bool)

(assert (=> b!251224 m!308597))

(declare-fun m!308599 () Bool)

(assert (=> d!70789 m!308599))

(assert (=> d!70789 m!306137))

(assert (=> d!70789 m!306137))

(declare-fun m!308601 () Bool)

(assert (=> d!70789 m!308601))

(declare-fun m!308603 () Bool)

(assert (=> b!251226 m!308603))

(assert (=> b!251226 m!306137))

(assert (=> b!251226 m!308595))

(assert (=> b!251226 m!308595))

(assert (=> b!251226 m!308597))

(assert (=> d!70365 d!70789))

(assert (=> d!70365 d!70317))

(declare-fun e!156077 () List!3690)

(declare-fun b!251229 () Bool)

(declare-fun call!13298 () List!3690)

(assert (=> b!251229 (= e!156077 (Cons!3680 (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0))))) call!13298))))

(declare-fun b!251230 () Bool)

(assert (=> b!251230 (= e!156077 call!13298)))

(declare-fun b!251231 () Bool)

(declare-fun e!156076 () Bool)

(declare-fun lt!102585 () List!3690)

(assert (=> b!251231 (= e!156076 (forall!865 lt!102585 lambda!8323))))

(declare-fun d!70791 () Bool)

(assert (=> d!70791 e!156076))

(declare-fun res!116481 () Bool)

(assert (=> d!70791 (=> (not res!116481) (not e!156076))))

(assert (=> d!70791 (= res!116481 (<= (size!2918 lt!102585) (size!2918 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))))))))

(declare-fun e!156078 () List!3690)

(assert (=> d!70791 (= lt!102585 e!156078)))

(declare-fun c!47747 () Bool)

(assert (=> d!70791 (= c!47747 ((_ is Nil!3680) (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0))))))))

(assert (=> d!70791 (= (filter!81 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))) lambda!8323) lt!102585)))

(declare-fun b!251232 () Bool)

(assert (=> b!251232 (= e!156078 Nil!3680)))

(declare-fun bm!13293 () Bool)

(assert (=> bm!13293 (= call!13298 (filter!81 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0))))) lambda!8323))))

(declare-fun b!251233 () Bool)

(assert (=> b!251233 (= e!156078 e!156077)))

(declare-fun c!47746 () Bool)

(assert (=> b!251233 (= c!47746 (dynLambda!1813 lambda!8323 (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))))))))

(declare-fun b!251234 () Bool)

(declare-fun res!116480 () Bool)

(assert (=> b!251234 (=> (not res!116480) (not e!156076))))

(assert (=> b!251234 (= res!116480 (= ((_ map implies) (content!515 lt!102585) (content!515 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))))) ((as const (InoxSet Token!1142)) true)))))

(assert (= (and d!70791 c!47747) b!251232))

(assert (= (and d!70791 (not c!47747)) b!251233))

(assert (= (and b!251233 c!47746) b!251229))

(assert (= (and b!251233 (not c!47746)) b!251230))

(assert (= (or b!251229 b!251230) bm!13293))

(assert (= (and d!70791 res!116481) b!251234))

(assert (= (and b!251234 res!116480) b!251231))

(declare-fun b_lambda!7405 () Bool)

(assert (=> (not b_lambda!7405) (not b!251233)))

(declare-fun m!308605 () Bool)

(assert (=> d!70791 m!308605))

(assert (=> d!70791 m!307145))

(declare-fun m!308607 () Bool)

(assert (=> d!70791 m!308607))

(declare-fun m!308609 () Bool)

(assert (=> bm!13293 m!308609))

(declare-fun m!308611 () Bool)

(assert (=> b!251234 m!308611))

(assert (=> b!251234 m!307145))

(declare-fun m!308613 () Bool)

(assert (=> b!251234 m!308613))

(declare-fun m!308615 () Bool)

(assert (=> b!251233 m!308615))

(declare-fun m!308617 () Bool)

(assert (=> b!251231 m!308617))

(assert (=> d!70365 d!70791))

(assert (=> d!70365 d!70263))

(declare-fun d!70793 () Bool)

(assert (=> d!70793 (= (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))) (list!1465 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0))))))))

(declare-fun bs!26996 () Bool)

(assert (= bs!26996 d!70793))

(declare-fun m!308619 () Bool)

(assert (=> bs!26996 m!308619))

(assert (=> d!70365 d!70793))

(declare-fun d!70795 () Bool)

(declare-fun c!47749 () Bool)

(assert (=> d!70795 (= c!47749 ((_ is IntegerValue!2163) (value!24237 (h!9077 (t!35394 tokens!465)))))))

(declare-fun e!156081 () Bool)

(assert (=> d!70795 (= (inv!21 (value!24237 (h!9077 (t!35394 tokens!465)))) e!156081)))

(declare-fun b!251235 () Bool)

(declare-fun e!156080 () Bool)

(assert (=> b!251235 (= e!156080 (inv!15 (value!24237 (h!9077 (t!35394 tokens!465)))))))

(declare-fun b!251236 () Bool)

(assert (=> b!251236 (= e!156081 (inv!16 (value!24237 (h!9077 (t!35394 tokens!465)))))))

(declare-fun b!251237 () Bool)

(declare-fun e!156079 () Bool)

(assert (=> b!251237 (= e!156079 (inv!17 (value!24237 (h!9077 (t!35394 tokens!465)))))))

(declare-fun b!251238 () Bool)

(declare-fun res!116482 () Bool)

(assert (=> b!251238 (=> res!116482 e!156080)))

(assert (=> b!251238 (= res!116482 (not ((_ is IntegerValue!2165) (value!24237 (h!9077 (t!35394 tokens!465))))))))

(assert (=> b!251238 (= e!156079 e!156080)))

(declare-fun b!251239 () Bool)

(assert (=> b!251239 (= e!156081 e!156079)))

(declare-fun c!47748 () Bool)

(assert (=> b!251239 (= c!47748 ((_ is IntegerValue!2164) (value!24237 (h!9077 (t!35394 tokens!465)))))))

(assert (= (and d!70795 c!47749) b!251236))

(assert (= (and d!70795 (not c!47749)) b!251239))

(assert (= (and b!251239 c!47748) b!251237))

(assert (= (and b!251239 (not c!47748)) b!251238))

(assert (= (and b!251238 (not res!116482)) b!251235))

(declare-fun m!308621 () Bool)

(assert (=> b!251235 m!308621))

(declare-fun m!308623 () Bool)

(assert (=> b!251236 m!308623))

(declare-fun m!308625 () Bool)

(assert (=> b!251237 m!308625))

(assert (=> b!250732 d!70795))

(declare-fun d!70797 () Bool)

(assert (=> d!70797 (= (list!1461 (_2!2274 lt!102163)) (list!1463 (c!47452 (_2!2274 lt!102163))))))

(declare-fun bs!26997 () Bool)

(assert (= bs!26997 d!70797))

(declare-fun m!308627 () Bool)

(assert (=> bs!26997 m!308627))

(assert (=> b!250431 d!70797))

(declare-fun d!70799 () Bool)

(declare-fun e!156094 () Bool)

(assert (=> d!70799 e!156094))

(declare-fun c!47754 () Bool)

(declare-fun lt!102592 () tuple2!4122)

(assert (=> d!70799 (= c!47754 (> (size!2918 (_1!2277 lt!102592)) 0))))

(declare-fun e!156095 () tuple2!4122)

(assert (=> d!70799 (= lt!102592 e!156095)))

(declare-fun c!47755 () Bool)

(declare-fun lt!102593 () Option!760)

(assert (=> d!70799 (= c!47755 ((_ is Some!759) lt!102593))))

(assert (=> d!70799 (= lt!102593 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (seqFromList!775 lt!101834))))))

(assert (=> d!70799 (= (lexList!191 thiss!17480 rules!1920 (list!1461 (seqFromList!775 lt!101834))) lt!102592)))

(declare-fun b!251256 () Bool)

(declare-fun lt!102594 () tuple2!4122)

(assert (=> b!251256 (= e!156095 (tuple2!4123 (Cons!3680 (_1!2273 (v!14538 lt!102593)) (_1!2277 lt!102594)) (_2!2277 lt!102594)))))

(assert (=> b!251256 (= lt!102594 (lexList!191 thiss!17480 rules!1920 (_2!2273 (v!14538 lt!102593))))))

(declare-fun b!251257 () Bool)

(assert (=> b!251257 (= e!156095 (tuple2!4123 Nil!3680 (list!1461 (seqFromList!775 lt!101834))))))

(declare-fun b!251258 () Bool)

(assert (=> b!251258 (= e!156094 (= (_2!2277 lt!102592) (list!1461 (seqFromList!775 lt!101834))))))

(declare-fun b!251259 () Bool)

(declare-fun e!156096 () Bool)

(assert (=> b!251259 (= e!156094 e!156096)))

(declare-fun res!116491 () Bool)

(assert (=> b!251259 (= res!116491 (< (size!2913 (_2!2277 lt!102592)) (size!2913 (list!1461 (seqFromList!775 lt!101834)))))))

(assert (=> b!251259 (=> (not res!116491) (not e!156096))))

(declare-fun b!251260 () Bool)

(assert (=> b!251260 (= e!156096 (not (isEmpty!2278 (_1!2277 lt!102592))))))

(assert (= (and d!70799 c!47755) b!251256))

(assert (= (and d!70799 (not c!47755)) b!251257))

(assert (= (and d!70799 c!47754) b!251259))

(assert (= (and d!70799 (not c!47754)) b!251258))

(assert (= (and b!251259 res!116491) b!251260))

(declare-fun m!308629 () Bool)

(assert (=> d!70799 m!308629))

(assert (=> d!70799 m!306983))

(declare-fun m!308631 () Bool)

(assert (=> d!70799 m!308631))

(declare-fun m!308633 () Bool)

(assert (=> b!251256 m!308633))

(declare-fun m!308635 () Bool)

(assert (=> b!251259 m!308635))

(assert (=> b!251259 m!306983))

(declare-fun m!308637 () Bool)

(assert (=> b!251259 m!308637))

(declare-fun m!308639 () Bool)

(assert (=> b!251260 m!308639))

(assert (=> b!250431 d!70799))

(declare-fun d!70803 () Bool)

(assert (=> d!70803 (= (list!1461 (seqFromList!775 lt!101834)) (list!1463 (c!47452 (seqFromList!775 lt!101834))))))

(declare-fun bs!26998 () Bool)

(assert (= bs!26998 d!70803))

(declare-fun m!308641 () Bool)

(assert (=> bs!26998 m!308641))

(assert (=> b!250431 d!70803))

(declare-fun d!70805 () Bool)

(assert (=> d!70805 (= (isDefined!612 lt!102143) (not (isEmpty!2285 lt!102143)))))

(declare-fun bs!26999 () Bool)

(assert (= bs!26999 d!70805))

(declare-fun m!308643 () Bool)

(assert (=> bs!26999 m!308643))

(assert (=> b!250393 d!70805))

(declare-fun e!156098 () List!3690)

(declare-fun call!13299 () List!3690)

(declare-fun b!251261 () Bool)

(assert (=> b!251261 (= e!156098 (Cons!3680 (h!9077 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))) call!13299))))

(declare-fun b!251262 () Bool)

(assert (=> b!251262 (= e!156098 call!13299)))

(declare-fun b!251263 () Bool)

(declare-fun e!156097 () Bool)

(declare-fun lt!102595 () List!3690)

(assert (=> b!251263 (= e!156097 (forall!865 lt!102595 lambda!8285))))

(declare-fun d!70807 () Bool)

(assert (=> d!70807 e!156097))

(declare-fun res!116493 () Bool)

(assert (=> d!70807 (=> (not res!116493) (not e!156097))))

(assert (=> d!70807 (= res!116493 (<= (size!2918 lt!102595) (size!2918 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))))

(declare-fun e!156099 () List!3690)

(assert (=> d!70807 (= lt!102595 e!156099)))

(declare-fun c!47757 () Bool)

(assert (=> d!70807 (= c!47757 ((_ is Nil!3680) (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))))))

(assert (=> d!70807 (= (filter!81 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))) lambda!8285) lt!102595)))

(declare-fun b!251264 () Bool)

(assert (=> b!251264 (= e!156099 Nil!3680)))

(declare-fun bm!13294 () Bool)

(assert (=> bm!13294 (= call!13299 (filter!81 (t!35394 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841))))) lambda!8285))))

(declare-fun b!251265 () Bool)

(assert (=> b!251265 (= e!156099 e!156098)))

(declare-fun c!47756 () Bool)

(assert (=> b!251265 (= c!47756 (dynLambda!1813 lambda!8285 (h!9077 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))))

(declare-fun b!251266 () Bool)

(declare-fun res!116492 () Bool)

(assert (=> b!251266 (=> (not res!116492) (not e!156097))))

(assert (=> b!251266 (= res!116492 (= ((_ map implies) (content!515 lt!102595) (content!515 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))) ((as const (InoxSet Token!1142)) true)))))

(assert (= (and d!70807 c!47757) b!251264))

(assert (= (and d!70807 (not c!47757)) b!251265))

(assert (= (and b!251265 c!47756) b!251261))

(assert (= (and b!251265 (not c!47756)) b!251262))

(assert (= (or b!251261 b!251262) bm!13294))

(assert (= (and d!70807 res!116493) b!251266))

(assert (= (and b!251266 res!116492) b!251263))

(declare-fun b_lambda!7407 () Bool)

(assert (=> (not b_lambda!7407) (not b!251265)))

(declare-fun m!308645 () Bool)

(assert (=> d!70807 m!308645))

(declare-fun m!308647 () Bool)

(assert (=> d!70807 m!308647))

(declare-fun m!308649 () Bool)

(assert (=> bm!13294 m!308649))

(declare-fun m!308651 () Bool)

(assert (=> b!251266 m!308651))

(declare-fun m!308653 () Bool)

(assert (=> b!251266 m!308653))

(declare-fun m!308655 () Bool)

(assert (=> b!251265 m!308655))

(declare-fun m!308657 () Bool)

(assert (=> b!251263 m!308657))

(assert (=> bm!13271 d!70807))

(declare-fun d!70809 () Bool)

(assert (=> d!70809 true))

(declare-fun lambda!8344 () Int)

(declare-fun order!2743 () Int)

(declare-fun dynLambda!1816 (Int Int) Int)

(assert (=> d!70809 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465))))) (dynLambda!1816 order!2743 lambda!8344))))

(declare-fun Forall2!131 (Int) Bool)

(assert (=> d!70809 (= (equivClasses!219 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465))))) (Forall2!131 lambda!8344))))

(declare-fun bs!27000 () Bool)

(assert (= bs!27000 d!70809))

(declare-fun m!308663 () Bool)

(assert (=> bs!27000 m!308663))

(assert (=> b!250436 d!70809))

(declare-fun d!70815 () Bool)

(declare-fun lt!102596 () Int)

(assert (=> d!70815 (>= lt!102596 0)))

(declare-fun e!156111 () Int)

(assert (=> d!70815 (= lt!102596 e!156111)))

(declare-fun c!47761 () Bool)

(assert (=> d!70815 (= c!47761 ((_ is Nil!3678) (originalCharacters!742 separatorToken!170)))))

(assert (=> d!70815 (= (size!2913 (originalCharacters!742 separatorToken!170)) lt!102596)))

(declare-fun b!251283 () Bool)

(assert (=> b!251283 (= e!156111 0)))

(declare-fun b!251284 () Bool)

(assert (=> b!251284 (= e!156111 (+ 1 (size!2913 (t!35392 (originalCharacters!742 separatorToken!170)))))))

(assert (= (and d!70815 c!47761) b!251283))

(assert (= (and d!70815 (not c!47761)) b!251284))

(declare-fun m!308665 () Bool)

(assert (=> b!251284 m!308665))

(assert (=> b!250435 d!70815))

(declare-fun d!70817 () Bool)

(assert (=> d!70817 (= (inv!4527 (tag!907 (rule!1276 (h!9077 (t!35394 tokens!465))))) (= (mod (str.len (value!24236 (tag!907 (rule!1276 (h!9077 (t!35394 tokens!465)))))) 2) 0))))

(assert (=> b!250733 d!70817))

(declare-fun d!70819 () Bool)

(declare-fun res!116502 () Bool)

(declare-fun e!156112 () Bool)

(assert (=> d!70819 (=> (not res!116502) (not e!156112))))

(assert (=> d!70819 (= res!116502 (semiInverseModEq!236 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))))))

(assert (=> d!70819 (= (inv!4530 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) e!156112)))

(declare-fun b!251285 () Bool)

(assert (=> b!251285 (= e!156112 (equivClasses!219 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))))))

(assert (= (and d!70819 res!116502) b!251285))

(declare-fun m!308667 () Bool)

(assert (=> d!70819 m!308667))

(declare-fun m!308669 () Bool)

(assert (=> b!251285 m!308669))

(assert (=> b!250733 d!70819))

(declare-fun b!251286 () Bool)

(declare-fun e!156113 () List!3688)

(assert (=> b!251286 (= e!156113 (ite c!47531 lt!102043 call!13233))))

(declare-fun b!251287 () Bool)

(assert (=> b!251287 (= e!156113 (Cons!3678 (h!9075 e!155435) (++!942 (t!35392 e!155435) (ite c!47531 lt!102043 call!13233))))))

(declare-fun e!156114 () Bool)

(declare-fun b!251289 () Bool)

(declare-fun lt!102597 () List!3688)

(assert (=> b!251289 (= e!156114 (or (not (= (ite c!47531 lt!102043 call!13233) Nil!3678)) (= lt!102597 e!155435)))))

(declare-fun d!70821 () Bool)

(assert (=> d!70821 e!156114))

(declare-fun res!116504 () Bool)

(assert (=> d!70821 (=> (not res!116504) (not e!156114))))

(assert (=> d!70821 (= res!116504 (= (content!513 lt!102597) ((_ map or) (content!513 e!155435) (content!513 (ite c!47531 lt!102043 call!13233)))))))

(assert (=> d!70821 (= lt!102597 e!156113)))

(declare-fun c!47762 () Bool)

(assert (=> d!70821 (= c!47762 ((_ is Nil!3678) e!155435))))

(assert (=> d!70821 (= (++!942 e!155435 (ite c!47531 lt!102043 call!13233)) lt!102597)))

(declare-fun b!251288 () Bool)

(declare-fun res!116503 () Bool)

(assert (=> b!251288 (=> (not res!116503) (not e!156114))))

(assert (=> b!251288 (= res!116503 (= (size!2913 lt!102597) (+ (size!2913 e!155435) (size!2913 (ite c!47531 lt!102043 call!13233)))))))

(assert (= (and d!70821 c!47762) b!251286))

(assert (= (and d!70821 (not c!47762)) b!251287))

(assert (= (and d!70821 res!116504) b!251288))

(assert (= (and b!251288 res!116503) b!251289))

(declare-fun m!308671 () Bool)

(assert (=> b!251287 m!308671))

(declare-fun m!308673 () Bool)

(assert (=> d!70821 m!308673))

(declare-fun m!308675 () Bool)

(assert (=> d!70821 m!308675))

(declare-fun m!308677 () Bool)

(assert (=> d!70821 m!308677))

(declare-fun m!308679 () Bool)

(assert (=> b!251288 m!308679))

(declare-fun m!308681 () Bool)

(assert (=> b!251288 m!308681))

(declare-fun m!308683 () Bool)

(assert (=> b!251288 m!308683))

(assert (=> bm!13229 d!70821))

(declare-fun d!70823 () Bool)

(declare-fun lt!102598 () Int)

(assert (=> d!70823 (>= lt!102598 0)))

(declare-fun e!156129 () Int)

(assert (=> d!70823 (= lt!102598 e!156129)))

(declare-fun c!47767 () Bool)

(assert (=> d!70823 (= c!47767 ((_ is Nil!3678) lt!101845))))

(assert (=> d!70823 (= (size!2913 lt!101845) lt!102598)))

(declare-fun b!251308 () Bool)

(assert (=> b!251308 (= e!156129 0)))

(declare-fun b!251309 () Bool)

(assert (=> b!251309 (= e!156129 (+ 1 (size!2913 (t!35392 lt!101845))))))

(assert (= (and d!70823 c!47767) b!251308))

(assert (= (and d!70823 (not c!47767)) b!251309))

(declare-fun m!308685 () Bool)

(assert (=> b!251309 m!308685))

(assert (=> b!250712 d!70823))

(assert (=> b!250712 d!70457))

(declare-fun b!251310 () Bool)

(declare-fun res!116517 () Bool)

(declare-fun e!156130 () Bool)

(assert (=> b!251310 (=> res!116517 e!156130)))

(declare-fun e!156131 () Bool)

(assert (=> b!251310 (= res!116517 e!156131)))

(declare-fun res!116515 () Bool)

(assert (=> b!251310 (=> (not res!116515) (not e!156131))))

(declare-fun lt!102599 () Bool)

(assert (=> b!251310 (= res!116515 lt!102599)))

(declare-fun b!251311 () Bool)

(declare-fun e!156136 () Bool)

(declare-fun e!156134 () Bool)

(assert (=> b!251311 (= e!156136 e!156134)))

(declare-fun res!116518 () Bool)

(assert (=> b!251311 (=> res!116518 e!156134)))

(declare-fun call!13305 () Bool)

(assert (=> b!251311 (= res!116518 call!13305)))

(declare-fun bm!13300 () Bool)

(assert (=> bm!13300 (= call!13305 (isEmpty!2277 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))))))

(declare-fun b!251312 () Bool)

(declare-fun e!156135 () Bool)

(assert (=> b!251312 (= e!156135 (matchR!261 (derivativeStep!130 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))) (head!866 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184)))))) (tail!458 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184)))))))))

(declare-fun b!251313 () Bool)

(declare-fun res!116516 () Bool)

(assert (=> b!251313 (=> res!116516 e!156134)))

(assert (=> b!251313 (= res!116516 (not (isEmpty!2277 (tail!458 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))))))))

(declare-fun d!70825 () Bool)

(declare-fun e!156133 () Bool)

(assert (=> d!70825 e!156133))

(declare-fun c!47770 () Bool)

(assert (=> d!70825 (= c!47770 ((_ is EmptyExpr!923) (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))))))

(assert (=> d!70825 (= lt!102599 e!156135)))

(declare-fun c!47768 () Bool)

(assert (=> d!70825 (= c!47768 (isEmpty!2277 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))))))

(assert (=> d!70825 (validRegex!239 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))))

(assert (=> d!70825 (= (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))) lt!102599)))

(declare-fun b!251314 () Bool)

(declare-fun res!116519 () Bool)

(assert (=> b!251314 (=> (not res!116519) (not e!156131))))

(assert (=> b!251314 (= res!116519 (isEmpty!2277 (tail!458 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184)))))))))

(declare-fun b!251315 () Bool)

(declare-fun e!156132 () Bool)

(assert (=> b!251315 (= e!156133 e!156132)))

(declare-fun c!47769 () Bool)

(assert (=> b!251315 (= c!47769 ((_ is EmptyLang!923) (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))))))

(declare-fun b!251316 () Bool)

(declare-fun res!116522 () Bool)

(assert (=> b!251316 (=> res!116522 e!156130)))

(assert (=> b!251316 (= res!116522 (not ((_ is ElementMatch!923) (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))))))

(assert (=> b!251316 (= e!156132 e!156130)))

(declare-fun b!251317 () Bool)

(assert (=> b!251317 (= e!156131 (= (head!866 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))) (c!47453 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))))))

(declare-fun b!251318 () Bool)

(assert (=> b!251318 (= e!156133 (= lt!102599 call!13305))))

(declare-fun b!251319 () Bool)

(assert (=> b!251319 (= e!156135 (nullable!164 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))))))

(declare-fun b!251320 () Bool)

(assert (=> b!251320 (= e!156134 (not (= (head!866 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))) (c!47453 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))))))))

(declare-fun b!251321 () Bool)

(assert (=> b!251321 (= e!156130 e!156136)))

(declare-fun res!116520 () Bool)

(assert (=> b!251321 (=> (not res!116520) (not e!156136))))

(assert (=> b!251321 (= res!116520 (not lt!102599))))

(declare-fun b!251322 () Bool)

(assert (=> b!251322 (= e!156132 (not lt!102599))))

(declare-fun b!251323 () Bool)

(declare-fun res!116521 () Bool)

(assert (=> b!251323 (=> (not res!116521) (not e!156131))))

(assert (=> b!251323 (= res!116521 (not call!13305))))

(assert (= (and d!70825 c!47768) b!251319))

(assert (= (and d!70825 (not c!47768)) b!251312))

(assert (= (and d!70825 c!47770) b!251318))

(assert (= (and d!70825 (not c!47770)) b!251315))

(assert (= (and b!251315 c!47769) b!251322))

(assert (= (and b!251315 (not c!47769)) b!251316))

(assert (= (and b!251316 (not res!116522)) b!251310))

(assert (= (and b!251310 res!116515) b!251323))

(assert (= (and b!251323 res!116521) b!251314))

(assert (= (and b!251314 res!116519) b!251317))

(assert (= (and b!251310 (not res!116517)) b!251321))

(assert (= (and b!251321 res!116520) b!251311))

(assert (= (and b!251311 (not res!116518)) b!251313))

(assert (= (and b!251313 (not res!116516)) b!251320))

(assert (= (or b!251318 b!251311 b!251323) bm!13300))

(assert (=> b!251317 m!307055))

(declare-fun m!308687 () Bool)

(assert (=> b!251317 m!308687))

(declare-fun m!308689 () Bool)

(assert (=> b!251319 m!308689))

(assert (=> b!251314 m!307055))

(declare-fun m!308691 () Bool)

(assert (=> b!251314 m!308691))

(assert (=> b!251314 m!308691))

(declare-fun m!308693 () Bool)

(assert (=> b!251314 m!308693))

(assert (=> b!251312 m!307055))

(assert (=> b!251312 m!308687))

(assert (=> b!251312 m!308687))

(declare-fun m!308695 () Bool)

(assert (=> b!251312 m!308695))

(assert (=> b!251312 m!307055))

(assert (=> b!251312 m!308691))

(assert (=> b!251312 m!308695))

(assert (=> b!251312 m!308691))

(declare-fun m!308697 () Bool)

(assert (=> b!251312 m!308697))

(assert (=> b!251313 m!307055))

(assert (=> b!251313 m!308691))

(assert (=> b!251313 m!308691))

(assert (=> b!251313 m!308693))

(assert (=> d!70825 m!307055))

(declare-fun m!308699 () Bool)

(assert (=> d!70825 m!308699))

(declare-fun m!308701 () Bool)

(assert (=> d!70825 m!308701))

(assert (=> bm!13300 m!307055))

(assert (=> bm!13300 m!308699))

(assert (=> b!251320 m!307055))

(assert (=> b!251320 m!308687))

(assert (=> b!250450 d!70825))

(declare-fun d!70827 () Bool)

(assert (=> d!70827 (= (get!1209 lt!102184) (v!14538 lt!102184))))

(assert (=> b!250450 d!70827))

(declare-fun d!70829 () Bool)

(assert (=> d!70829 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184)))) (list!1463 (c!47452 (charsOf!354 (_1!2273 (get!1209 lt!102184))))))))

(declare-fun bs!27001 () Bool)

(assert (= bs!27001 d!70829))

(declare-fun m!308703 () Bool)

(assert (=> bs!27001 m!308703))

(assert (=> b!250450 d!70829))

(declare-fun d!70831 () Bool)

(declare-fun lt!102600 () BalanceConc!2448)

(assert (=> d!70831 (= (list!1461 lt!102600) (originalCharacters!742 (_1!2273 (get!1209 lt!102184))))))

(assert (=> d!70831 (= lt!102600 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))) (value!24237 (_1!2273 (get!1209 lt!102184)))))))

(assert (=> d!70831 (= (charsOf!354 (_1!2273 (get!1209 lt!102184))) lt!102600)))

(declare-fun b_lambda!7409 () Bool)

(assert (=> (not b_lambda!7409) (not d!70831)))

(declare-fun tb!12869 () Bool)

(declare-fun t!35531 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35531) tb!12869))

(declare-fun b!251324 () Bool)

(declare-fun e!156137 () Bool)

(declare-fun tp!97238 () Bool)

(assert (=> b!251324 (= e!156137 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))) (value!24237 (_1!2273 (get!1209 lt!102184)))))) tp!97238))))

(declare-fun result!16234 () Bool)

(assert (=> tb!12869 (= result!16234 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))) (value!24237 (_1!2273 (get!1209 lt!102184))))) e!156137))))

(assert (= tb!12869 b!251324))

(declare-fun m!308705 () Bool)

(assert (=> b!251324 m!308705))

(declare-fun m!308707 () Bool)

(assert (=> tb!12869 m!308707))

(assert (=> d!70831 t!35531))

(declare-fun b_and!18981 () Bool)

(assert (= b_and!18951 (and (=> t!35531 result!16234) b_and!18981)))

(declare-fun tb!12871 () Bool)

(declare-fun t!35533 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35533) tb!12871))

(declare-fun result!16236 () Bool)

(assert (= result!16236 result!16234))

(assert (=> d!70831 t!35533))

(declare-fun b_and!18983 () Bool)

(assert (= b_and!18959 (and (=> t!35533 result!16236) b_and!18983)))

(declare-fun tb!12873 () Bool)

(declare-fun t!35535 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35535) tb!12873))

(declare-fun result!16238 () Bool)

(assert (= result!16238 result!16234))

(assert (=> d!70831 t!35535))

(declare-fun b_and!18985 () Bool)

(assert (= b_and!18957 (and (=> t!35535 result!16238) b_and!18985)))

(declare-fun tb!12875 () Bool)

(declare-fun t!35537 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35537) tb!12875))

(declare-fun result!16240 () Bool)

(assert (= result!16240 result!16234))

(assert (=> d!70831 t!35537))

(declare-fun b_and!18987 () Bool)

(assert (= b_and!18953 (and (=> t!35537 result!16240) b_and!18987)))

(declare-fun t!35539 () Bool)

(declare-fun tb!12877 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35539) tb!12877))

(declare-fun result!16242 () Bool)

(assert (= result!16242 result!16234))

(assert (=> d!70831 t!35539))

(declare-fun b_and!18989 () Bool)

(assert (= b_and!18955 (and (=> t!35539 result!16242) b_and!18989)))

(declare-fun m!308709 () Bool)

(assert (=> d!70831 m!308709))

(declare-fun m!308711 () Bool)

(assert (=> d!70831 m!308711))

(assert (=> b!250450 d!70831))

(declare-fun d!70833 () Bool)

(declare-fun res!116532 () Bool)

(declare-fun e!156149 () Bool)

(assert (=> d!70833 (=> res!116532 e!156149)))

(assert (=> d!70833 (= res!116532 ((_ is Nil!3679) rules!1920))))

(assert (=> d!70833 (= (noDuplicateTag!202 thiss!17480 rules!1920 Nil!3681) e!156149)))

(declare-fun b!251338 () Bool)

(declare-fun e!156150 () Bool)

(assert (=> b!251338 (= e!156149 e!156150)))

(declare-fun res!116533 () Bool)

(assert (=> b!251338 (=> (not res!116533) (not e!156150))))

(declare-fun contains!681 (List!3691 String!4685) Bool)

(assert (=> b!251338 (= res!116533 (not (contains!681 Nil!3681 (tag!907 (h!9076 rules!1920)))))))

(declare-fun b!251339 () Bool)

(assert (=> b!251339 (= e!156150 (noDuplicateTag!202 thiss!17480 (t!35393 rules!1920) (Cons!3681 (tag!907 (h!9076 rules!1920)) Nil!3681)))))

(assert (= (and d!70833 (not res!116532)) b!251338))

(assert (= (and b!251338 res!116533) b!251339))

(declare-fun m!308719 () Bool)

(assert (=> b!251338 m!308719))

(declare-fun m!308721 () Bool)

(assert (=> b!251339 m!308721))

(assert (=> b!250715 d!70833))

(declare-fun d!70837 () Bool)

(assert (=> d!70837 (= (inv!4527 (tag!907 (h!9076 (t!35393 rules!1920)))) (= (mod (str.len (value!24236 (tag!907 (h!9076 (t!35393 rules!1920))))) 2) 0))))

(assert (=> b!250766 d!70837))

(declare-fun d!70839 () Bool)

(declare-fun res!116534 () Bool)

(declare-fun e!156151 () Bool)

(assert (=> d!70839 (=> (not res!116534) (not e!156151))))

(assert (=> d!70839 (= res!116534 (semiInverseModEq!236 (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920))))))))

(assert (=> d!70839 (= (inv!4530 (transformation!699 (h!9076 (t!35393 rules!1920)))) e!156151)))

(declare-fun b!251340 () Bool)

(assert (=> b!251340 (= e!156151 (equivClasses!219 (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920))))))))

(assert (= (and d!70839 res!116534) b!251340))

(declare-fun m!308723 () Bool)

(assert (=> d!70839 m!308723))

(declare-fun m!308725 () Bool)

(assert (=> b!251340 m!308725))

(assert (=> b!250766 d!70839))

(declare-fun d!70841 () Bool)

(assert (=> d!70841 (= (list!1461 call!13232) (list!1463 (c!47452 call!13232)))))

(declare-fun bs!27002 () Bool)

(assert (= bs!27002 d!70841))

(declare-fun m!308727 () Bool)

(assert (=> bs!27002 m!308727))

(assert (=> b!250186 d!70841))

(declare-fun d!70843 () Bool)

(declare-fun lt!102603 () Token!1142)

(assert (=> d!70843 (= lt!102603 (apply!695 (list!1460 lt!101844) 0))))

(declare-fun apply!700 (Conc!1221 Int) Token!1142)

(assert (=> d!70843 (= lt!102603 (apply!700 (c!47454 lt!101844) 0))))

(declare-fun e!156154 () Bool)

(assert (=> d!70843 e!156154))

(declare-fun res!116537 () Bool)

(assert (=> d!70843 (=> (not res!116537) (not e!156154))))

(assert (=> d!70843 (= res!116537 (<= 0 0))))

(assert (=> d!70843 (= (apply!694 lt!101844 0) lt!102603)))

(declare-fun b!251343 () Bool)

(assert (=> b!251343 (= e!156154 (< 0 (size!2911 lt!101844)))))

(assert (= (and d!70843 res!116537) b!251343))

(assert (=> d!70843 m!306399))

(assert (=> d!70843 m!306399))

(declare-fun m!308729 () Bool)

(assert (=> d!70843 m!308729))

(declare-fun m!308731 () Bool)

(assert (=> d!70843 m!308731))

(assert (=> b!251343 m!306163))

(assert (=> bm!13195 d!70843))

(declare-fun d!70845 () Bool)

(declare-fun lt!102604 () Int)

(assert (=> d!70845 (= lt!102604 (size!2918 (list!1460 (_1!2274 lt!102163))))))

(assert (=> d!70845 (= lt!102604 (size!2919 (c!47454 (_1!2274 lt!102163))))))

(assert (=> d!70845 (= (size!2911 (_1!2274 lt!102163)) lt!102604)))

(declare-fun bs!27003 () Bool)

(assert (= bs!27003 d!70845))

(assert (=> bs!27003 m!306981))

(assert (=> bs!27003 m!306981))

(declare-fun m!308733 () Bool)

(assert (=> bs!27003 m!308733))

(declare-fun m!308735 () Bool)

(assert (=> bs!27003 m!308735))

(assert (=> d!70299 d!70845))

(declare-fun b!251543 () Bool)

(declare-fun e!156266 () tuple2!4116)

(declare-fun lt!102781 () BalanceConc!2448)

(assert (=> b!251543 (= e!156266 (tuple2!4117 (BalanceConc!2451 Empty!1221) lt!102781))))

(declare-fun lt!102778 () tuple2!4116)

(declare-fun lt!102776 () Option!761)

(declare-fun b!251544 () Bool)

(declare-fun lexRec!85 (LexerInterface!585 List!3689 BalanceConc!2448) tuple2!4116)

(assert (=> b!251544 (= lt!102778 (lexRec!85 thiss!17480 rules!1920 (_2!2275 (v!14539 lt!102776))))))

(declare-fun prepend!168 (BalanceConc!2450 Token!1142) BalanceConc!2450)

(assert (=> b!251544 (= e!156266 (tuple2!4117 (prepend!168 (_1!2274 lt!102778) (_1!2275 (v!14539 lt!102776))) (_2!2274 lt!102778)))))

(declare-fun b!251545 () Bool)

(declare-fun e!156265 () tuple2!4116)

(assert (=> b!251545 (= e!156265 (tuple2!4117 (BalanceConc!2451 Empty!1221) (seqFromList!775 lt!101834)))))

(declare-fun lt!102775 () Option!761)

(declare-fun b!251546 () Bool)

(declare-fun lt!102780 () BalanceConc!2448)

(declare-fun append!90 (BalanceConc!2450 Token!1142) BalanceConc!2450)

(assert (=> b!251546 (= e!156265 (lexTailRecV2!158 thiss!17480 rules!1920 (seqFromList!775 lt!101834) lt!102780 (_2!2275 (v!14539 lt!102775)) (append!90 (BalanceConc!2451 Empty!1221) (_1!2275 (v!14539 lt!102775)))))))

(declare-fun lt!102770 () tuple2!4116)

(assert (=> b!251546 (= lt!102770 (lexRec!85 thiss!17480 rules!1920 (_2!2275 (v!14539 lt!102775))))))

(declare-fun lt!102783 () List!3688)

(assert (=> b!251546 (= lt!102783 (list!1461 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!102784 () List!3688)

(assert (=> b!251546 (= lt!102784 (list!1461 (charsOf!354 (_1!2275 (v!14539 lt!102775)))))))

(declare-fun lt!102757 () List!3688)

(assert (=> b!251546 (= lt!102757 (list!1461 (_2!2275 (v!14539 lt!102775))))))

(declare-fun lt!102786 () Unit!4472)

(assert (=> b!251546 (= lt!102786 (lemmaConcatAssociativity!404 lt!102783 lt!102784 lt!102757))))

(assert (=> b!251546 (= (++!942 (++!942 lt!102783 lt!102784) lt!102757) (++!942 lt!102783 (++!942 lt!102784 lt!102757)))))

(declare-fun lt!102768 () Unit!4472)

(assert (=> b!251546 (= lt!102768 lt!102786)))

(declare-fun lt!102787 () Option!761)

(assert (=> b!251546 (= lt!102787 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (seqFromList!775 lt!101834)))))

(declare-fun c!47826 () Bool)

(assert (=> b!251546 (= c!47826 ((_ is Some!760) lt!102787))))

(declare-fun e!156267 () tuple2!4116)

(assert (=> b!251546 (= (lexRec!85 thiss!17480 rules!1920 (seqFromList!775 lt!101834)) e!156267)))

(declare-fun lt!102771 () Unit!4472)

(declare-fun Unit!4496 () Unit!4472)

(assert (=> b!251546 (= lt!102771 Unit!4496)))

(declare-fun lt!102766 () List!3690)

(assert (=> b!251546 (= lt!102766 (list!1460 (BalanceConc!2451 Empty!1221)))))

(declare-fun lt!102785 () List!3690)

(assert (=> b!251546 (= lt!102785 (Cons!3680 (_1!2275 (v!14539 lt!102775)) Nil!3680))))

(declare-fun lt!102758 () List!3690)

(assert (=> b!251546 (= lt!102758 (list!1460 (_1!2274 lt!102770)))))

(declare-fun lt!102789 () Unit!4472)

(declare-fun lemmaConcatAssociativity!405 (List!3690 List!3690 List!3690) Unit!4472)

(assert (=> b!251546 (= lt!102789 (lemmaConcatAssociativity!405 lt!102766 lt!102785 lt!102758))))

(assert (=> b!251546 (= (++!946 (++!946 lt!102766 lt!102785) lt!102758) (++!946 lt!102766 (++!946 lt!102785 lt!102758)))))

(declare-fun lt!102773 () Unit!4472)

(assert (=> b!251546 (= lt!102773 lt!102789)))

(declare-fun lt!102790 () List!3688)

(assert (=> b!251546 (= lt!102790 (++!942 (list!1461 (BalanceConc!2449 Empty!1220)) (list!1461 (charsOf!354 (_1!2275 (v!14539 lt!102775))))))))

(declare-fun lt!102761 () List!3688)

(assert (=> b!251546 (= lt!102761 (list!1461 (_2!2275 (v!14539 lt!102775))))))

(declare-fun lt!102788 () List!3690)

(assert (=> b!251546 (= lt!102788 (list!1460 (append!90 (BalanceConc!2451 Empty!1221) (_1!2275 (v!14539 lt!102775)))))))

(declare-fun lt!102764 () Unit!4472)

(declare-fun lemmaLexThenLexPrefix!72 (LexerInterface!585 List!3689 List!3688 List!3688 List!3690 List!3690 List!3688) Unit!4472)

(assert (=> b!251546 (= lt!102764 (lemmaLexThenLexPrefix!72 thiss!17480 rules!1920 lt!102790 lt!102761 lt!102788 (list!1460 (_1!2274 lt!102770)) (list!1461 (_2!2274 lt!102770))))))

(assert (=> b!251546 (= (lexList!191 thiss!17480 rules!1920 lt!102790) (tuple2!4123 lt!102788 Nil!3678))))

(declare-fun lt!102774 () Unit!4472)

(assert (=> b!251546 (= lt!102774 lt!102764)))

(assert (=> b!251546 (= lt!102781 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (_1!2275 (v!14539 lt!102775)))))))

(assert (=> b!251546 (= lt!102776 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 lt!102781))))

(declare-fun c!47825 () Bool)

(assert (=> b!251546 (= c!47825 ((_ is Some!760) lt!102776))))

(assert (=> b!251546 (= (lexRec!85 thiss!17480 rules!1920 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (_1!2275 (v!14539 lt!102775))))) e!156266)))

(declare-fun lt!102762 () Unit!4472)

(declare-fun Unit!4497 () Unit!4472)

(assert (=> b!251546 (= lt!102762 Unit!4497)))

(assert (=> b!251546 (= lt!102780 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (_1!2275 (v!14539 lt!102775)))))))

(declare-fun lt!102777 () List!3688)

(assert (=> b!251546 (= lt!102777 (list!1461 lt!102780))))

(declare-fun lt!102767 () List!3688)

(assert (=> b!251546 (= lt!102767 (list!1461 (_2!2275 (v!14539 lt!102775))))))

(declare-fun lt!102763 () Unit!4472)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!70 (List!3688 List!3688) Unit!4472)

(assert (=> b!251546 (= lt!102763 (lemmaConcatTwoListThenFSndIsSuffix!70 lt!102777 lt!102767))))

(declare-fun isSuffix!70 (List!3688 List!3688) Bool)

(assert (=> b!251546 (isSuffix!70 lt!102767 (++!942 lt!102777 lt!102767))))

(declare-fun lt!102759 () Unit!4472)

(assert (=> b!251546 (= lt!102759 lt!102763)))

(declare-fun b!251547 () Bool)

(assert (=> b!251547 (= e!156267 (tuple2!4117 (BalanceConc!2451 Empty!1221) (seqFromList!775 lt!101834)))))

(declare-fun d!70847 () Bool)

(declare-fun e!156268 () Bool)

(assert (=> d!70847 e!156268))

(declare-fun res!116634 () Bool)

(assert (=> d!70847 (=> (not res!116634) (not e!156268))))

(declare-fun lt!102760 () tuple2!4116)

(assert (=> d!70847 (= res!116634 (= (list!1460 (_1!2274 lt!102760)) (list!1460 (_1!2274 (lexRec!85 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))))))

(assert (=> d!70847 (= lt!102760 e!156265)))

(declare-fun c!47824 () Bool)

(assert (=> d!70847 (= c!47824 ((_ is Some!760) lt!102775))))

(declare-fun maxPrefixZipperSequenceV2!70 (LexerInterface!585 List!3689 BalanceConc!2448 BalanceConc!2448) Option!761)

(assert (=> d!70847 (= lt!102775 (maxPrefixZipperSequenceV2!70 thiss!17480 rules!1920 (seqFromList!775 lt!101834) (seqFromList!775 lt!101834)))))

(declare-fun lt!102769 () Unit!4472)

(declare-fun lt!102772 () Unit!4472)

(assert (=> d!70847 (= lt!102769 lt!102772)))

(declare-fun lt!102765 () List!3688)

(declare-fun lt!102782 () List!3688)

(assert (=> d!70847 (isSuffix!70 lt!102765 (++!942 lt!102782 lt!102765))))

(assert (=> d!70847 (= lt!102772 (lemmaConcatTwoListThenFSndIsSuffix!70 lt!102782 lt!102765))))

(assert (=> d!70847 (= lt!102765 (list!1461 (seqFromList!775 lt!101834)))))

(assert (=> d!70847 (= lt!102782 (list!1461 (BalanceConc!2449 Empty!1220)))))

(assert (=> d!70847 (= (lexTailRecV2!158 thiss!17480 rules!1920 (seqFromList!775 lt!101834) (BalanceConc!2449 Empty!1220) (seqFromList!775 lt!101834) (BalanceConc!2451 Empty!1221)) lt!102760)))

(declare-fun b!251548 () Bool)

(assert (=> b!251548 (= e!156268 (= (list!1461 (_2!2274 lt!102760)) (list!1461 (_2!2274 (lexRec!85 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))))))

(declare-fun b!251549 () Bool)

(declare-fun lt!102779 () tuple2!4116)

(assert (=> b!251549 (= lt!102779 (lexRec!85 thiss!17480 rules!1920 (_2!2275 (v!14539 lt!102787))))))

(assert (=> b!251549 (= e!156267 (tuple2!4117 (prepend!168 (_1!2274 lt!102779) (_1!2275 (v!14539 lt!102787))) (_2!2274 lt!102779)))))

(assert (= (and d!70847 c!47824) b!251546))

(assert (= (and d!70847 (not c!47824)) b!251545))

(assert (= (and b!251546 c!47826) b!251549))

(assert (= (and b!251546 (not c!47826)) b!251547))

(assert (= (and b!251546 c!47825) b!251544))

(assert (= (and b!251546 (not c!47825)) b!251543))

(assert (= (and d!70847 res!116634) b!251548))

(declare-fun m!309161 () Bool)

(assert (=> b!251548 m!309161))

(assert (=> b!251548 m!306033))

(declare-fun m!309163 () Bool)

(assert (=> b!251548 m!309163))

(declare-fun m!309165 () Bool)

(assert (=> b!251548 m!309165))

(declare-fun m!309167 () Bool)

(assert (=> b!251544 m!309167))

(declare-fun m!309169 () Bool)

(assert (=> b!251544 m!309169))

(declare-fun m!309171 () Bool)

(assert (=> b!251549 m!309171))

(declare-fun m!309173 () Bool)

(assert (=> b!251549 m!309173))

(assert (=> b!251546 m!306307))

(declare-fun m!309175 () Bool)

(assert (=> b!251546 m!309175))

(declare-fun m!309177 () Bool)

(assert (=> b!251546 m!309177))

(assert (=> b!251546 m!306307))

(declare-fun m!309179 () Bool)

(assert (=> b!251546 m!309179))

(declare-fun m!309181 () Bool)

(assert (=> b!251546 m!309181))

(declare-fun m!309183 () Bool)

(assert (=> b!251546 m!309183))

(assert (=> b!251546 m!306033))

(declare-fun m!309185 () Bool)

(assert (=> b!251546 m!309185))

(declare-fun m!309187 () Bool)

(assert (=> b!251546 m!309187))

(declare-fun m!309189 () Bool)

(assert (=> b!251546 m!309189))

(assert (=> b!251546 m!309187))

(declare-fun m!309191 () Bool)

(assert (=> b!251546 m!309191))

(declare-fun m!309193 () Bool)

(assert (=> b!251546 m!309193))

(declare-fun m!309195 () Bool)

(assert (=> b!251546 m!309195))

(declare-fun m!309197 () Bool)

(assert (=> b!251546 m!309197))

(declare-fun m!309199 () Bool)

(assert (=> b!251546 m!309199))

(assert (=> b!251546 m!306033))

(declare-fun m!309201 () Bool)

(assert (=> b!251546 m!309201))

(declare-fun m!309203 () Bool)

(assert (=> b!251546 m!309203))

(declare-fun m!309205 () Bool)

(assert (=> b!251546 m!309205))

(declare-fun m!309207 () Bool)

(assert (=> b!251546 m!309207))

(declare-fun m!309209 () Bool)

(assert (=> b!251546 m!309209))

(assert (=> b!251546 m!309179))

(declare-fun m!309211 () Bool)

(assert (=> b!251546 m!309211))

(declare-fun m!309213 () Bool)

(assert (=> b!251546 m!309213))

(declare-fun m!309215 () Bool)

(assert (=> b!251546 m!309215))

(assert (=> b!251546 m!306033))

(assert (=> b!251546 m!309163))

(assert (=> b!251546 m!309197))

(declare-fun m!309217 () Bool)

(assert (=> b!251546 m!309217))

(assert (=> b!251546 m!309201))

(assert (=> b!251546 m!309189))

(declare-fun m!309219 () Bool)

(assert (=> b!251546 m!309219))

(declare-fun m!309221 () Bool)

(assert (=> b!251546 m!309221))

(declare-fun m!309223 () Bool)

(assert (=> b!251546 m!309223))

(declare-fun m!309225 () Bool)

(assert (=> b!251546 m!309225))

(declare-fun m!309227 () Bool)

(assert (=> b!251546 m!309227))

(assert (=> b!251546 m!309215))

(declare-fun m!309229 () Bool)

(assert (=> b!251546 m!309229))

(assert (=> b!251546 m!309201))

(declare-fun m!309231 () Bool)

(assert (=> b!251546 m!309231))

(assert (=> b!251546 m!309209))

(assert (=> b!251546 m!309205))

(assert (=> b!251546 m!309209))

(assert (=> b!251546 m!309175))

(declare-fun m!309233 () Bool)

(assert (=> b!251546 m!309233))

(declare-fun m!309235 () Bool)

(assert (=> b!251546 m!309235))

(assert (=> b!251546 m!309191))

(assert (=> b!251546 m!309233))

(assert (=> d!70847 m!306307))

(assert (=> d!70847 m!306033))

(assert (=> d!70847 m!309163))

(assert (=> d!70847 m!306033))

(assert (=> d!70847 m!306983))

(assert (=> d!70847 m!306033))

(assert (=> d!70847 m!306033))

(declare-fun m!309237 () Bool)

(assert (=> d!70847 m!309237))

(declare-fun m!309239 () Bool)

(assert (=> d!70847 m!309239))

(declare-fun m!309241 () Bool)

(assert (=> d!70847 m!309241))

(declare-fun m!309243 () Bool)

(assert (=> d!70847 m!309243))

(declare-fun m!309245 () Bool)

(assert (=> d!70847 m!309245))

(assert (=> d!70847 m!309243))

(declare-fun m!309247 () Bool)

(assert (=> d!70847 m!309247))

(assert (=> d!70299 d!70847))

(declare-fun bs!27040 () Bool)

(declare-fun b!251566 () Bool)

(assert (= bs!27040 (and b!251566 d!70483)))

(declare-fun lambda!8356 () Int)

(assert (=> bs!27040 (= lambda!8356 lambda!8329)))

(declare-fun b!251575 () Bool)

(declare-fun e!156289 () Bool)

(assert (=> b!251575 (= e!156289 true)))

(declare-fun b!251574 () Bool)

(declare-fun e!156288 () Bool)

(assert (=> b!251574 (= e!156288 e!156289)))

(assert (=> b!251566 e!156288))

(assert (= b!251574 b!251575))

(assert (= b!251566 b!251574))

(assert (=> b!251575 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1815 order!2739 lambda!8356))))

(assert (=> b!251575 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1815 order!2739 lambda!8356))))

(declare-fun b!251562 () Bool)

(declare-fun e!156280 () Bool)

(declare-fun e!156283 () Bool)

(assert (=> b!251562 (= e!156280 e!156283)))

(declare-fun res!116644 () Bool)

(assert (=> b!251562 (=> (not res!116644) (not e!156283))))

(declare-fun lt!102816 () Option!761)

(assert (=> b!251562 (= res!116644 (= (_1!2275 (get!1211 lt!102816)) (_1!2273 (get!1209 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun b!251563 () Bool)

(assert (=> b!251563 (= e!156283 (= (list!1461 (_2!2275 (get!1211 lt!102816))) (_2!2273 (get!1209 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))))

(declare-fun b!251564 () Bool)

(declare-fun e!156279 () Bool)

(assert (=> b!251564 (= e!156279 e!156280)))

(declare-fun res!116645 () Bool)

(assert (=> b!251564 (=> res!116645 e!156280)))

(assert (=> b!251564 (= res!116645 (not (isDefined!612 lt!102816)))))

(declare-fun b!251565 () Bool)

(declare-fun e!156281 () Bool)

(declare-fun lt!102812 () List!3688)

(declare-datatypes ((tuple2!4124 0))(
  ( (tuple2!4125 (_1!2278 List!3688) (_2!2278 List!3688)) )
))
(declare-fun findLongestMatchInner!71 (Regex!923 List!3688 Int List!3688 List!3688 Int) tuple2!4124)

(assert (=> b!251565 (= e!156281 (matchR!261 (regex!699 (h!9076 rules!1920)) (_1!2278 (findLongestMatchInner!71 (regex!699 (h!9076 rules!1920)) Nil!3678 (size!2913 Nil!3678) lt!102812 lt!102812 (size!2913 lt!102812)))))))

(declare-fun b!251567 () Bool)

(declare-fun e!156282 () Option!761)

(assert (=> b!251567 (= e!156282 None!760)))

(declare-datatypes ((tuple2!4126 0))(
  ( (tuple2!4127 (_1!2279 BalanceConc!2448) (_2!2279 BalanceConc!2448)) )
))
(declare-fun lt!102813 () tuple2!4126)

(assert (=> b!251566 (= e!156282 (Some!760 (tuple2!4119 (Token!1143 (apply!698 (transformation!699 (h!9076 rules!1920)) (_1!2279 lt!102813)) (h!9076 rules!1920) (size!2917 (_1!2279 lt!102813)) (list!1461 (_1!2279 lt!102813))) (_2!2279 lt!102813))))))

(assert (=> b!251566 (= lt!102812 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(declare-fun lt!102817 () Unit!4472)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!55 (Regex!923 List!3688) Unit!4472)

(assert (=> b!251566 (= lt!102817 (longestMatchIsAcceptedByMatchOrIsEmpty!55 (regex!699 (h!9076 rules!1920)) lt!102812))))

(declare-fun res!116643 () Bool)

(assert (=> b!251566 (= res!116643 (isEmpty!2277 (_1!2278 (findLongestMatchInner!71 (regex!699 (h!9076 rules!1920)) Nil!3678 (size!2913 Nil!3678) lt!102812 lt!102812 (size!2913 lt!102812)))))))

(assert (=> b!251566 (=> res!116643 e!156281)))

(assert (=> b!251566 e!156281))

(declare-fun lt!102820 () Unit!4472)

(assert (=> b!251566 (= lt!102820 lt!102817)))

(declare-fun lt!102814 () Unit!4472)

(declare-fun lemmaInv!33 (TokenValueInjection!1214) Unit!4472)

(assert (=> b!251566 (= lt!102814 (lemmaInv!33 (transformation!699 (h!9076 rules!1920))))))

(declare-fun lt!102815 () Unit!4472)

(declare-fun ForallOf!30 (Int BalanceConc!2448) Unit!4472)

(assert (=> b!251566 (= lt!102815 (ForallOf!30 lambda!8356 (_1!2279 lt!102813)))))

(declare-fun lt!102818 () Unit!4472)

(assert (=> b!251566 (= lt!102818 (ForallOf!30 lambda!8356 (seqFromList!775 (list!1461 (_1!2279 lt!102813)))))))

(declare-fun lt!102819 () Option!761)

(assert (=> b!251566 (= lt!102819 (Some!760 (tuple2!4119 (Token!1143 (apply!698 (transformation!699 (h!9076 rules!1920)) (_1!2279 lt!102813)) (h!9076 rules!1920) (size!2917 (_1!2279 lt!102813)) (list!1461 (_1!2279 lt!102813))) (_2!2279 lt!102813))))))

(declare-fun lt!102811 () Unit!4472)

(declare-fun lemmaEqSameImage!30 (TokenValueInjection!1214 BalanceConc!2448 BalanceConc!2448) Unit!4472)

(assert (=> b!251566 (= lt!102811 (lemmaEqSameImage!30 (transformation!699 (h!9076 rules!1920)) (_1!2279 lt!102813) (seqFromList!775 (list!1461 (_1!2279 lt!102813)))))))

(declare-fun d!70983 () Bool)

(assert (=> d!70983 e!156279))

(declare-fun res!116646 () Bool)

(assert (=> d!70983 (=> (not res!116646) (not e!156279))))

(assert (=> d!70983 (= res!116646 (= (isDefined!612 lt!102816) (isDefined!611 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))))

(assert (=> d!70983 (= lt!102816 e!156282)))

(declare-fun c!47829 () Bool)

(assert (=> d!70983 (= c!47829 (isEmpty!2288 (_1!2279 lt!102813)))))

(declare-fun findLongestMatchWithZipperSequence!30 (Regex!923 BalanceConc!2448) tuple2!4126)

(assert (=> d!70983 (= lt!102813 (findLongestMatchWithZipperSequence!30 (regex!699 (h!9076 rules!1920)) (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(declare-fun ruleValid!85 (LexerInterface!585 Rule!1198) Bool)

(assert (=> d!70983 (ruleValid!85 thiss!17480 (h!9076 rules!1920))))

(assert (=> d!70983 (= (maxPrefixOneRuleZipperSequence!100 thiss!17480 (h!9076 rules!1920) (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))) lt!102816)))

(assert (= (and d!70983 c!47829) b!251567))

(assert (= (and d!70983 (not c!47829)) b!251566))

(assert (= (and b!251566 (not res!116643)) b!251565))

(assert (= (and d!70983 res!116646) b!251564))

(assert (= (and b!251564 (not res!116645)) b!251562))

(assert (= (and b!251562 res!116644) b!251563))

(declare-fun m!309249 () Bool)

(assert (=> b!251564 m!309249))

(declare-fun m!309251 () Bool)

(assert (=> b!251565 m!309251))

(declare-fun m!309253 () Bool)

(assert (=> b!251565 m!309253))

(assert (=> b!251565 m!309251))

(assert (=> b!251565 m!309253))

(declare-fun m!309255 () Bool)

(assert (=> b!251565 m!309255))

(declare-fun m!309257 () Bool)

(assert (=> b!251565 m!309257))

(assert (=> b!251566 m!309251))

(declare-fun m!309259 () Bool)

(assert (=> b!251566 m!309259))

(declare-fun m!309261 () Bool)

(assert (=> b!251566 m!309261))

(assert (=> b!251566 m!309253))

(declare-fun m!309263 () Bool)

(assert (=> b!251566 m!309263))

(declare-fun m!309265 () Bool)

(assert (=> b!251566 m!309265))

(declare-fun m!309267 () Bool)

(assert (=> b!251566 m!309267))

(assert (=> b!251566 m!306155))

(assert (=> b!251566 m!306901))

(declare-fun m!309269 () Bool)

(assert (=> b!251566 m!309269))

(assert (=> b!251566 m!309265))

(declare-fun m!309271 () Bool)

(assert (=> b!251566 m!309271))

(declare-fun m!309273 () Bool)

(assert (=> b!251566 m!309273))

(assert (=> b!251566 m!309271))

(declare-fun m!309275 () Bool)

(assert (=> b!251566 m!309275))

(assert (=> b!251566 m!309271))

(declare-fun m!309277 () Bool)

(assert (=> b!251566 m!309277))

(assert (=> b!251566 m!309251))

(assert (=> b!251566 m!309253))

(assert (=> b!251566 m!309255))

(assert (=> d!70983 m!306901))

(assert (=> d!70983 m!307889))

(assert (=> d!70983 m!306155))

(declare-fun m!309279 () Bool)

(assert (=> d!70983 m!309279))

(declare-fun m!309281 () Bool)

(assert (=> d!70983 m!309281))

(assert (=> d!70983 m!307889))

(declare-fun m!309283 () Bool)

(assert (=> d!70983 m!309283))

(assert (=> d!70983 m!309249))

(assert (=> d!70983 m!306155))

(assert (=> d!70983 m!306901))

(declare-fun m!309285 () Bool)

(assert (=> d!70983 m!309285))

(assert (=> b!251563 m!306901))

(assert (=> b!251563 m!307889))

(assert (=> b!251563 m!307889))

(declare-fun m!309287 () Bool)

(assert (=> b!251563 m!309287))

(declare-fun m!309289 () Bool)

(assert (=> b!251563 m!309289))

(declare-fun m!309291 () Bool)

(assert (=> b!251563 m!309291))

(assert (=> b!251563 m!306155))

(assert (=> b!251563 m!306901))

(assert (=> b!251562 m!309291))

(assert (=> b!251562 m!306155))

(assert (=> b!251562 m!306901))

(assert (=> b!251562 m!306901))

(assert (=> b!251562 m!307889))

(assert (=> b!251562 m!307889))

(assert (=> b!251562 m!309287))

(assert (=> bm!13251 d!70983))

(declare-fun b!251577 () Bool)

(declare-fun e!156290 () List!3688)

(declare-fun e!156291 () List!3688)

(assert (=> b!251577 (= e!156290 e!156291)))

(declare-fun c!47831 () Bool)

(assert (=> b!251577 (= c!47831 ((_ is Leaf!1909) (c!47452 (seqFromList!775 lt!101845))))))

(declare-fun b!251579 () Bool)

(assert (=> b!251579 (= e!156291 (++!942 (list!1463 (left!3024 (c!47452 (seqFromList!775 lt!101845)))) (list!1463 (right!3354 (c!47452 (seqFromList!775 lt!101845))))))))

(declare-fun b!251578 () Bool)

(assert (=> b!251578 (= e!156291 (list!1466 (xs!3815 (c!47452 (seqFromList!775 lt!101845)))))))

(declare-fun d!70985 () Bool)

(declare-fun c!47830 () Bool)

(assert (=> d!70985 (= c!47830 ((_ is Empty!1220) (c!47452 (seqFromList!775 lt!101845))))))

(assert (=> d!70985 (= (list!1463 (c!47452 (seqFromList!775 lt!101845))) e!156290)))

(declare-fun b!251576 () Bool)

(assert (=> b!251576 (= e!156290 Nil!3678)))

(assert (= (and d!70985 c!47830) b!251576))

(assert (= (and d!70985 (not c!47830)) b!251577))

(assert (= (and b!251577 c!47831) b!251578))

(assert (= (and b!251577 (not c!47831)) b!251579))

(declare-fun m!309293 () Bool)

(assert (=> b!251579 m!309293))

(declare-fun m!309295 () Bool)

(assert (=> b!251579 m!309295))

(assert (=> b!251579 m!309293))

(assert (=> b!251579 m!309295))

(declare-fun m!309297 () Bool)

(assert (=> b!251579 m!309297))

(declare-fun m!309299 () Bool)

(assert (=> b!251578 m!309299))

(assert (=> d!70435 d!70985))

(declare-fun b!251580 () Bool)

(declare-fun res!116649 () Bool)

(declare-fun e!156292 () Bool)

(assert (=> b!251580 (=> res!116649 e!156292)))

(declare-fun e!156293 () Bool)

(assert (=> b!251580 (= res!116649 e!156293)))

(declare-fun res!116647 () Bool)

(assert (=> b!251580 (=> (not res!116647) (not e!156293))))

(declare-fun lt!102821 () Bool)

(assert (=> b!251580 (= res!116647 lt!102821)))

(declare-fun b!251581 () Bool)

(declare-fun e!156298 () Bool)

(declare-fun e!156296 () Bool)

(assert (=> b!251581 (= e!156298 e!156296)))

(declare-fun res!116650 () Bool)

(assert (=> b!251581 (=> res!116650 e!156296)))

(declare-fun call!13320 () Bool)

(assert (=> b!251581 (= res!116650 call!13320)))

(declare-fun bm!13315 () Bool)

(assert (=> bm!13315 (= call!13320 (isEmpty!2277 (tail!458 lt!101834)))))

(declare-fun b!251582 () Bool)

(declare-fun e!156297 () Bool)

(assert (=> b!251582 (= e!156297 (matchR!261 (derivativeStep!130 (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834)) (head!866 (tail!458 lt!101834))) (tail!458 (tail!458 lt!101834))))))

(declare-fun b!251583 () Bool)

(declare-fun res!116648 () Bool)

(assert (=> b!251583 (=> res!116648 e!156296)))

(assert (=> b!251583 (= res!116648 (not (isEmpty!2277 (tail!458 (tail!458 lt!101834)))))))

(declare-fun d!70987 () Bool)

(declare-fun e!156295 () Bool)

(assert (=> d!70987 e!156295))

(declare-fun c!47834 () Bool)

(assert (=> d!70987 (= c!47834 ((_ is EmptyExpr!923) (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834))))))

(assert (=> d!70987 (= lt!102821 e!156297)))

(declare-fun c!47832 () Bool)

(assert (=> d!70987 (= c!47832 (isEmpty!2277 (tail!458 lt!101834)))))

(assert (=> d!70987 (validRegex!239 (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834)))))

(assert (=> d!70987 (= (matchR!261 (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834)) (tail!458 lt!101834)) lt!102821)))

(declare-fun b!251584 () Bool)

(declare-fun res!116651 () Bool)

(assert (=> b!251584 (=> (not res!116651) (not e!156293))))

(assert (=> b!251584 (= res!116651 (isEmpty!2277 (tail!458 (tail!458 lt!101834))))))

(declare-fun b!251585 () Bool)

(declare-fun e!156294 () Bool)

(assert (=> b!251585 (= e!156295 e!156294)))

(declare-fun c!47833 () Bool)

(assert (=> b!251585 (= c!47833 ((_ is EmptyLang!923) (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834))))))

(declare-fun b!251586 () Bool)

(declare-fun res!116654 () Bool)

(assert (=> b!251586 (=> res!116654 e!156292)))

(assert (=> b!251586 (= res!116654 (not ((_ is ElementMatch!923) (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834)))))))

(assert (=> b!251586 (= e!156294 e!156292)))

(declare-fun b!251587 () Bool)

(assert (=> b!251587 (= e!156293 (= (head!866 (tail!458 lt!101834)) (c!47453 (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834)))))))

(declare-fun b!251588 () Bool)

(assert (=> b!251588 (= e!156295 (= lt!102821 call!13320))))

(declare-fun b!251589 () Bool)

(assert (=> b!251589 (= e!156297 (nullable!164 (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834))))))

(declare-fun b!251590 () Bool)

(assert (=> b!251590 (= e!156296 (not (= (head!866 (tail!458 lt!101834)) (c!47453 (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834))))))))

(declare-fun b!251591 () Bool)

(assert (=> b!251591 (= e!156292 e!156298)))

(declare-fun res!116652 () Bool)

(assert (=> b!251591 (=> (not res!116652) (not e!156298))))

(assert (=> b!251591 (= res!116652 (not lt!102821))))

(declare-fun b!251592 () Bool)

(assert (=> b!251592 (= e!156294 (not lt!102821))))

(declare-fun b!251593 () Bool)

(declare-fun res!116653 () Bool)

(assert (=> b!251593 (=> (not res!116653) (not e!156293))))

(assert (=> b!251593 (= res!116653 (not call!13320))))

(assert (= (and d!70987 c!47832) b!251589))

(assert (= (and d!70987 (not c!47832)) b!251582))

(assert (= (and d!70987 c!47834) b!251588))

(assert (= (and d!70987 (not c!47834)) b!251585))

(assert (= (and b!251585 c!47833) b!251592))

(assert (= (and b!251585 (not c!47833)) b!251586))

(assert (= (and b!251586 (not res!116654)) b!251580))

(assert (= (and b!251580 res!116647) b!251593))

(assert (= (and b!251593 res!116653) b!251584))

(assert (= (and b!251584 res!116651) b!251587))

(assert (= (and b!251580 (not res!116649)) b!251591))

(assert (= (and b!251591 res!116652) b!251581))

(assert (= (and b!251581 (not res!116650)) b!251583))

(assert (= (and b!251583 (not res!116648)) b!251590))

(assert (= (or b!251588 b!251581 b!251593) bm!13315))

(assert (=> b!251587 m!307101))

(assert (=> b!251587 m!307501))

(assert (=> b!251589 m!307105))

(declare-fun m!309301 () Bool)

(assert (=> b!251589 m!309301))

(assert (=> b!251584 m!307101))

(assert (=> b!251584 m!307505))

(assert (=> b!251584 m!307505))

(declare-fun m!309303 () Bool)

(assert (=> b!251584 m!309303))

(assert (=> b!251582 m!307101))

(assert (=> b!251582 m!307501))

(assert (=> b!251582 m!307105))

(assert (=> b!251582 m!307501))

(declare-fun m!309305 () Bool)

(assert (=> b!251582 m!309305))

(assert (=> b!251582 m!307101))

(assert (=> b!251582 m!307505))

(assert (=> b!251582 m!309305))

(assert (=> b!251582 m!307505))

(declare-fun m!309307 () Bool)

(assert (=> b!251582 m!309307))

(assert (=> b!251583 m!307101))

(assert (=> b!251583 m!307505))

(assert (=> b!251583 m!307505))

(assert (=> b!251583 m!309303))

(assert (=> d!70987 m!307101))

(assert (=> d!70987 m!307103))

(assert (=> d!70987 m!307105))

(declare-fun m!309309 () Bool)

(assert (=> d!70987 m!309309))

(assert (=> bm!13315 m!307101))

(assert (=> bm!13315 m!307103))

(assert (=> b!251590 m!307101))

(assert (=> b!251590 m!307501))

(assert (=> b!250516 d!70987))

(declare-fun b!251614 () Bool)

(declare-fun e!156311 () Regex!923)

(declare-fun call!13330 () Regex!923)

(declare-fun call!13329 () Regex!923)

(assert (=> b!251614 (= e!156311 (Union!923 call!13330 call!13329))))

(declare-fun c!47847 () Bool)

(declare-fun bm!13324 () Bool)

(assert (=> bm!13324 (= call!13329 (derivativeStep!130 (ite c!47847 (regTwo!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))) (regTwo!2358 (regex!699 (rule!1276 (h!9077 tokens!465))))) (head!866 lt!101834)))))

(declare-fun b!251615 () Bool)

(declare-fun e!156312 () Regex!923)

(assert (=> b!251615 (= e!156312 (ite (= (head!866 lt!101834) (c!47453 (regex!699 (rule!1276 (h!9077 tokens!465))))) EmptyExpr!923 EmptyLang!923))))

(declare-fun d!70989 () Bool)

(declare-fun lt!102824 () Regex!923)

(assert (=> d!70989 (validRegex!239 lt!102824)))

(declare-fun e!156310 () Regex!923)

(assert (=> d!70989 (= lt!102824 e!156310)))

(declare-fun c!47848 () Bool)

(assert (=> d!70989 (= c!47848 (or ((_ is EmptyExpr!923) (regex!699 (rule!1276 (h!9077 tokens!465)))) ((_ is EmptyLang!923) (regex!699 (rule!1276 (h!9077 tokens!465))))))))

(assert (=> d!70989 (validRegex!239 (regex!699 (rule!1276 (h!9077 tokens!465))))))

(assert (=> d!70989 (= (derivativeStep!130 (regex!699 (rule!1276 (h!9077 tokens!465))) (head!866 lt!101834)) lt!102824)))

(declare-fun b!251616 () Bool)

(declare-fun e!156309 () Regex!923)

(assert (=> b!251616 (= e!156311 e!156309)))

(declare-fun c!47845 () Bool)

(assert (=> b!251616 (= c!47845 ((_ is Star!923) (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(declare-fun bm!13325 () Bool)

(declare-fun call!13331 () Regex!923)

(assert (=> bm!13325 (= call!13331 call!13330)))

(declare-fun bm!13326 () Bool)

(declare-fun call!13332 () Regex!923)

(assert (=> bm!13326 (= call!13332 call!13331)))

(declare-fun b!251617 () Bool)

(assert (=> b!251617 (= e!156310 e!156312)))

(declare-fun c!47846 () Bool)

(assert (=> b!251617 (= c!47846 ((_ is ElementMatch!923) (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(declare-fun b!251618 () Bool)

(assert (=> b!251618 (= e!156309 (Concat!1645 call!13331 (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(declare-fun b!251619 () Bool)

(declare-fun e!156313 () Regex!923)

(assert (=> b!251619 (= e!156313 (Union!923 (Concat!1645 call!13332 (regTwo!2358 (regex!699 (rule!1276 (h!9077 tokens!465))))) EmptyLang!923))))

(declare-fun b!251620 () Bool)

(declare-fun c!47849 () Bool)

(assert (=> b!251620 (= c!47849 (nullable!164 (regOne!2358 (regex!699 (rule!1276 (h!9077 tokens!465))))))))

(assert (=> b!251620 (= e!156309 e!156313)))

(declare-fun b!251621 () Bool)

(assert (=> b!251621 (= e!156310 EmptyLang!923)))

(declare-fun b!251622 () Bool)

(assert (=> b!251622 (= e!156313 (Union!923 (Concat!1645 call!13332 (regTwo!2358 (regex!699 (rule!1276 (h!9077 tokens!465))))) call!13329))))

(declare-fun bm!13327 () Bool)

(assert (=> bm!13327 (= call!13330 (derivativeStep!130 (ite c!47847 (regOne!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))) (ite c!47845 (reg!1252 (regex!699 (rule!1276 (h!9077 tokens!465)))) (regOne!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) (head!866 lt!101834)))))

(declare-fun b!251623 () Bool)

(assert (=> b!251623 (= c!47847 ((_ is Union!923) (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(assert (=> b!251623 (= e!156312 e!156311)))

(assert (= (and d!70989 c!47848) b!251621))

(assert (= (and d!70989 (not c!47848)) b!251617))

(assert (= (and b!251617 c!47846) b!251615))

(assert (= (and b!251617 (not c!47846)) b!251623))

(assert (= (and b!251623 c!47847) b!251614))

(assert (= (and b!251623 (not c!47847)) b!251616))

(assert (= (and b!251616 c!47845) b!251618))

(assert (= (and b!251616 (not c!47845)) b!251620))

(assert (= (and b!251620 c!47849) b!251622))

(assert (= (and b!251620 (not c!47849)) b!251619))

(assert (= (or b!251622 b!251619) bm!13326))

(assert (= (or b!251618 bm!13326) bm!13325))

(assert (= (or b!251614 b!251622) bm!13324))

(assert (= (or b!251614 bm!13325) bm!13327))

(assert (=> bm!13324 m!307097))

(declare-fun m!309311 () Bool)

(assert (=> bm!13324 m!309311))

(declare-fun m!309313 () Bool)

(assert (=> d!70989 m!309313))

(assert (=> d!70989 m!307111))

(declare-fun m!309315 () Bool)

(assert (=> b!251620 m!309315))

(assert (=> bm!13327 m!307097))

(declare-fun m!309317 () Bool)

(assert (=> bm!13327 m!309317))

(assert (=> b!250516 d!70989))

(assert (=> b!250516 d!70715))

(assert (=> b!250516 d!70467))

(declare-fun d!70991 () Bool)

(declare-fun c!47850 () Bool)

(assert (=> d!70991 (= c!47850 ((_ is Nil!3678) lt!102087))))

(declare-fun e!156314 () (InoxSet C!2768))

(assert (=> d!70991 (= (content!513 lt!102087) e!156314)))

(declare-fun b!251624 () Bool)

(assert (=> b!251624 (= e!156314 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!251625 () Bool)

(assert (=> b!251625 (= e!156314 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!102087) true) (content!513 (t!35392 lt!102087))))))

(assert (= (and d!70991 c!47850) b!251624))

(assert (= (and d!70991 (not c!47850)) b!251625))

(declare-fun m!309319 () Bool)

(assert (=> b!251625 m!309319))

(declare-fun m!309321 () Bool)

(assert (=> b!251625 m!309321))

(assert (=> d!70251 d!70991))

(assert (=> d!70251 d!70563))

(declare-fun d!70993 () Bool)

(declare-fun c!47851 () Bool)

(assert (=> d!70993 (= c!47851 ((_ is Nil!3678) (_2!2273 lt!101826)))))

(declare-fun e!156315 () (InoxSet C!2768))

(assert (=> d!70993 (= (content!513 (_2!2273 lt!101826)) e!156315)))

(declare-fun b!251626 () Bool)

(assert (=> b!251626 (= e!156315 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!251627 () Bool)

(assert (=> b!251627 (= e!156315 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 (_2!2273 lt!101826)) true) (content!513 (t!35392 (_2!2273 lt!101826)))))))

(assert (= (and d!70993 c!47851) b!251626))

(assert (= (and d!70993 (not c!47851)) b!251627))

(declare-fun m!309323 () Bool)

(assert (=> b!251627 m!309323))

(declare-fun m!309325 () Bool)

(assert (=> b!251627 m!309325))

(assert (=> d!70251 d!70993))

(declare-fun b!251660 () Bool)

(declare-fun e!156332 () Bool)

(assert (=> b!251660 (= e!156332 (matchR!261 (regex!699 (h!9076 rules!1920)) (_1!2278 (findLongestMatchInner!71 (regex!699 (h!9076 rules!1920)) Nil!3678 (size!2913 Nil!3678) lt!101845 lt!101845 (size!2913 lt!101845)))))))

(declare-fun b!251661 () Bool)

(declare-fun e!156334 () Bool)

(declare-fun e!156333 () Bool)

(assert (=> b!251661 (= e!156334 e!156333)))

(declare-fun res!116673 () Bool)

(assert (=> b!251661 (=> (not res!116673) (not e!156333))))

(declare-fun lt!102907 () Option!760)

(assert (=> b!251661 (= res!116673 (matchR!261 (regex!699 (h!9076 rules!1920)) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102907))))))))

(declare-fun d!70995 () Bool)

(assert (=> d!70995 e!156334))

(declare-fun res!116671 () Bool)

(assert (=> d!70995 (=> res!116671 e!156334)))

(assert (=> d!70995 (= res!116671 (isEmpty!2282 lt!102907))))

(declare-fun e!156335 () Option!760)

(assert (=> d!70995 (= lt!102907 e!156335)))

(declare-fun c!47860 () Bool)

(declare-fun lt!102904 () tuple2!4124)

(assert (=> d!70995 (= c!47860 (isEmpty!2277 (_1!2278 lt!102904)))))

(declare-fun findLongestMatch!54 (Regex!923 List!3688) tuple2!4124)

(assert (=> d!70995 (= lt!102904 (findLongestMatch!54 (regex!699 (h!9076 rules!1920)) lt!101845))))

(assert (=> d!70995 (ruleValid!85 thiss!17480 (h!9076 rules!1920))))

(assert (=> d!70995 (= (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) lt!101845) lt!102907)))

(declare-fun b!251662 () Bool)

(declare-fun res!116672 () Bool)

(assert (=> b!251662 (=> (not res!116672) (not e!156333))))

(assert (=> b!251662 (= res!116672 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102907)))) (_2!2273 (get!1209 lt!102907))) lt!101845))))

(declare-fun b!251663 () Bool)

(declare-fun res!116677 () Bool)

(assert (=> b!251663 (=> (not res!116677) (not e!156333))))

(assert (=> b!251663 (= res!116677 (= (value!24237 (_1!2273 (get!1209 lt!102907))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102907)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102907)))))))))

(declare-fun b!251664 () Bool)

(assert (=> b!251664 (= e!156335 None!759)))

(declare-fun b!251665 () Bool)

(declare-fun res!116674 () Bool)

(assert (=> b!251665 (=> (not res!116674) (not e!156333))))

(assert (=> b!251665 (= res!116674 (= (rule!1276 (_1!2273 (get!1209 lt!102907))) (h!9076 rules!1920)))))

(declare-fun b!251666 () Bool)

(assert (=> b!251666 (= e!156333 (= (size!2910 (_1!2273 (get!1209 lt!102907))) (size!2913 (originalCharacters!742 (_1!2273 (get!1209 lt!102907))))))))

(declare-fun b!251667 () Bool)

(assert (=> b!251667 (= e!156335 (Some!759 (tuple2!4115 (Token!1143 (apply!698 (transformation!699 (h!9076 rules!1920)) (seqFromList!775 (_1!2278 lt!102904))) (h!9076 rules!1920) (size!2917 (seqFromList!775 (_1!2278 lt!102904))) (_1!2278 lt!102904)) (_2!2278 lt!102904))))))

(declare-fun lt!102905 () Unit!4472)

(assert (=> b!251667 (= lt!102905 (longestMatchIsAcceptedByMatchOrIsEmpty!55 (regex!699 (h!9076 rules!1920)) lt!101845))))

(declare-fun res!116675 () Bool)

(assert (=> b!251667 (= res!116675 (isEmpty!2277 (_1!2278 (findLongestMatchInner!71 (regex!699 (h!9076 rules!1920)) Nil!3678 (size!2913 Nil!3678) lt!101845 lt!101845 (size!2913 lt!101845)))))))

(assert (=> b!251667 (=> res!116675 e!156332)))

(assert (=> b!251667 e!156332))

(declare-fun lt!102903 () Unit!4472)

(assert (=> b!251667 (= lt!102903 lt!102905)))

(declare-fun lt!102906 () Unit!4472)

(declare-fun lemmaSemiInverse!52 (TokenValueInjection!1214 BalanceConc!2448) Unit!4472)

(assert (=> b!251667 (= lt!102906 (lemmaSemiInverse!52 (transformation!699 (h!9076 rules!1920)) (seqFromList!775 (_1!2278 lt!102904))))))

(declare-fun b!251668 () Bool)

(declare-fun res!116676 () Bool)

(assert (=> b!251668 (=> (not res!116676) (not e!156333))))

(assert (=> b!251668 (= res!116676 (< (size!2913 (_2!2273 (get!1209 lt!102907))) (size!2913 lt!101845)))))

(assert (= (and d!70995 c!47860) b!251664))

(assert (= (and d!70995 (not c!47860)) b!251667))

(assert (= (and b!251667 (not res!116675)) b!251660))

(assert (= (and d!70995 (not res!116671)) b!251661))

(assert (= (and b!251661 res!116673) b!251662))

(assert (= (and b!251662 res!116672) b!251668))

(assert (= (and b!251668 res!116676) b!251665))

(assert (= (and b!251665 res!116674) b!251663))

(assert (= (and b!251663 res!116677) b!251666))

(declare-fun m!309327 () Bool)

(assert (=> d!70995 m!309327))

(declare-fun m!309329 () Bool)

(assert (=> d!70995 m!309329))

(declare-fun m!309331 () Bool)

(assert (=> d!70995 m!309331))

(assert (=> d!70995 m!309285))

(declare-fun m!309333 () Bool)

(assert (=> b!251662 m!309333))

(declare-fun m!309335 () Bool)

(assert (=> b!251662 m!309335))

(assert (=> b!251662 m!309335))

(declare-fun m!309337 () Bool)

(assert (=> b!251662 m!309337))

(assert (=> b!251662 m!309337))

(declare-fun m!309339 () Bool)

(assert (=> b!251662 m!309339))

(assert (=> b!251661 m!309333))

(assert (=> b!251661 m!309335))

(assert (=> b!251661 m!309335))

(assert (=> b!251661 m!309337))

(assert (=> b!251661 m!309337))

(declare-fun m!309341 () Bool)

(assert (=> b!251661 m!309341))

(assert (=> b!251668 m!309333))

(declare-fun m!309343 () Bool)

(assert (=> b!251668 m!309343))

(assert (=> b!251668 m!307065))

(assert (=> b!251666 m!309333))

(declare-fun m!309345 () Bool)

(assert (=> b!251666 m!309345))

(assert (=> b!251660 m!309251))

(assert (=> b!251660 m!307065))

(assert (=> b!251660 m!309251))

(assert (=> b!251660 m!307065))

(declare-fun m!309347 () Bool)

(assert (=> b!251660 m!309347))

(declare-fun m!309349 () Bool)

(assert (=> b!251660 m!309349))

(assert (=> b!251665 m!309333))

(assert (=> b!251667 m!309251))

(declare-fun m!309351 () Bool)

(assert (=> b!251667 m!309351))

(declare-fun m!309353 () Bool)

(assert (=> b!251667 m!309353))

(assert (=> b!251667 m!309351))

(assert (=> b!251667 m!309251))

(assert (=> b!251667 m!307065))

(assert (=> b!251667 m!309347))

(assert (=> b!251667 m!309351))

(declare-fun m!309355 () Bool)

(assert (=> b!251667 m!309355))

(declare-fun m!309357 () Bool)

(assert (=> b!251667 m!309357))

(assert (=> b!251667 m!309351))

(declare-fun m!309359 () Bool)

(assert (=> b!251667 m!309359))

(assert (=> b!251667 m!307065))

(declare-fun m!309361 () Bool)

(assert (=> b!251667 m!309361))

(assert (=> b!251663 m!309333))

(declare-fun m!309363 () Bool)

(assert (=> b!251663 m!309363))

(assert (=> b!251663 m!309363))

(declare-fun m!309365 () Bool)

(assert (=> b!251663 m!309365))

(assert (=> bm!13252 d!70995))

(declare-fun d!70997 () Bool)

(declare-fun lt!102908 () BalanceConc!2448)

(assert (=> d!70997 (= (list!1461 lt!102908) (originalCharacters!742 (h!9077 (t!35394 tokens!465))))))

(assert (=> d!70997 (= lt!102908 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (value!24237 (h!9077 (t!35394 tokens!465)))))))

(assert (=> d!70997 (= (charsOf!354 (h!9077 (t!35394 tokens!465))) lt!102908)))

(declare-fun b_lambda!7423 () Bool)

(assert (=> (not b_lambda!7423) (not d!70997)))

(declare-fun t!35563 () Bool)

(declare-fun tb!12899 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) t!35563) tb!12899))

(declare-fun b!251669 () Bool)

(declare-fun e!156336 () Bool)

(declare-fun tp!97241 () Bool)

(assert (=> b!251669 (= e!156336 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (value!24237 (h!9077 (t!35394 tokens!465)))))) tp!97241))))

(declare-fun result!16264 () Bool)

(assert (=> tb!12899 (= result!16264 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (value!24237 (h!9077 (t!35394 tokens!465))))) e!156336))))

(assert (= tb!12899 b!251669))

(declare-fun m!309367 () Bool)

(assert (=> b!251669 m!309367))

(declare-fun m!309369 () Bool)

(assert (=> tb!12899 m!309369))

(assert (=> d!70997 t!35563))

(declare-fun b_and!19011 () Bool)

(assert (= b_and!18983 (and (=> t!35563 result!16264) b_and!19011)))

(declare-fun t!35565 () Bool)

(declare-fun tb!12901 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) t!35565) tb!12901))

(declare-fun result!16266 () Bool)

(assert (= result!16266 result!16264))

(assert (=> d!70997 t!35565))

(declare-fun b_and!19013 () Bool)

(assert (= b_and!18985 (and (=> t!35565 result!16266) b_and!19013)))

(declare-fun t!35567 () Bool)

(declare-fun tb!12903 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) t!35567) tb!12903))

(declare-fun result!16268 () Bool)

(assert (= result!16268 result!16264))

(assert (=> d!70997 t!35567))

(declare-fun b_and!19015 () Bool)

(assert (= b_and!18981 (and (=> t!35567 result!16268) b_and!19015)))

(declare-fun t!35569 () Bool)

(declare-fun tb!12905 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) t!35569) tb!12905))

(declare-fun result!16270 () Bool)

(assert (= result!16270 result!16264))

(assert (=> d!70997 t!35569))

(declare-fun b_and!19017 () Bool)

(assert (= b_and!18987 (and (=> t!35569 result!16270) b_and!19017)))

(declare-fun t!35571 () Bool)

(declare-fun tb!12907 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) t!35571) tb!12907))

(declare-fun result!16272 () Bool)

(assert (= result!16272 result!16264))

(assert (=> d!70997 t!35571))

(declare-fun b_and!19019 () Bool)

(assert (= b_and!18989 (and (=> t!35571 result!16272) b_and!19019)))

(declare-fun m!309371 () Bool)

(assert (=> d!70997 m!309371))

(declare-fun m!309373 () Bool)

(assert (=> d!70997 m!309373))

(assert (=> bm!13236 d!70997))

(assert (=> b!250400 d!70805))

(declare-fun b!251677 () Bool)

(declare-fun res!116685 () Bool)

(declare-fun e!156341 () Bool)

(assert (=> b!251677 (=> (not res!116685) (not e!156341))))

(declare-fun lt!102945 () Option!760)

(assert (=> b!251677 (= res!116685 (= (value!24237 (_1!2273 (get!1209 lt!102945))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102945)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102945)))))))))

(declare-fun b!251678 () Bool)

(assert (=> b!251678 (= e!156341 (contains!678 rules!1920 (rule!1276 (_1!2273 (get!1209 lt!102945)))))))

(declare-fun b!251679 () Bool)

(declare-fun e!156343 () Option!760)

(declare-fun lt!102943 () Option!760)

(declare-fun lt!102944 () Option!760)

(assert (=> b!251679 (= e!156343 (ite (and ((_ is None!759) lt!102943) ((_ is None!759) lt!102944)) None!759 (ite ((_ is None!759) lt!102944) lt!102943 (ite ((_ is None!759) lt!102943) lt!102944 (ite (>= (size!2910 (_1!2273 (v!14538 lt!102943))) (size!2910 (_1!2273 (v!14538 lt!102944)))) lt!102943 lt!102944)))))))

(declare-fun call!13333 () Option!760)

(assert (=> b!251679 (= lt!102943 call!13333)))

(assert (=> b!251679 (= lt!102944 (maxPrefix!315 thiss!17480 (t!35393 rules!1920) (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043)))))

(declare-fun b!251680 () Bool)

(declare-fun res!116683 () Bool)

(assert (=> b!251680 (=> (not res!116683) (not e!156341))))

(assert (=> b!251680 (= res!116683 (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102945)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102945))))))))

(declare-fun b!251681 () Bool)

(declare-fun e!156342 () Bool)

(assert (=> b!251681 (= e!156342 e!156341)))

(declare-fun res!116682 () Bool)

(assert (=> b!251681 (=> (not res!116682) (not e!156341))))

(assert (=> b!251681 (= res!116682 (isDefined!611 lt!102945))))

(declare-fun b!251682 () Bool)

(declare-fun res!116680 () Bool)

(assert (=> b!251682 (=> (not res!116680) (not e!156341))))

(assert (=> b!251682 (= res!116680 (< (size!2913 (_2!2273 (get!1209 lt!102945))) (size!2913 (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043))))))

(declare-fun b!251683 () Bool)

(assert (=> b!251683 (= e!156343 call!13333)))

(declare-fun bm!13328 () Bool)

(assert (=> bm!13328 (= call!13333 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043)))))

(declare-fun d!70999 () Bool)

(assert (=> d!70999 e!156342))

(declare-fun res!116681 () Bool)

(assert (=> d!70999 (=> res!116681 e!156342)))

(assert (=> d!70999 (= res!116681 (isEmpty!2282 lt!102945))))

(assert (=> d!70999 (= lt!102945 e!156343)))

(declare-fun c!47864 () Bool)

(assert (=> d!70999 (= c!47864 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!102947 () Unit!4472)

(declare-fun lt!102946 () Unit!4472)

(assert (=> d!70999 (= lt!102947 lt!102946)))

(assert (=> d!70999 (isPrefix!383 (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043) (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043))))

(assert (=> d!70999 (= lt!102946 (lemmaIsPrefixRefl!195 (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043) (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043)))))

(assert (=> d!70999 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!70999 (= (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043)) lt!102945)))

(declare-fun b!251684 () Bool)

(declare-fun res!116679 () Bool)

(assert (=> b!251684 (=> (not res!116679) (not e!156341))))

(assert (=> b!251684 (= res!116679 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102945)))) (_2!2273 (get!1209 lt!102945))) (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043)))))

(declare-fun b!251685 () Bool)

(declare-fun res!116684 () Bool)

(assert (=> b!251685 (=> (not res!116684) (not e!156341))))

(assert (=> b!251685 (= res!116684 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102945)))) (originalCharacters!742 (_1!2273 (get!1209 lt!102945)))))))

(assert (= (and d!70999 c!47864) b!251683))

(assert (= (and d!70999 (not c!47864)) b!251679))

(assert (= (or b!251683 b!251679) bm!13328))

(assert (= (and d!70999 (not res!116681)) b!251681))

(assert (= (and b!251681 res!116682) b!251685))

(assert (= (and b!251685 res!116684) b!251682))

(assert (= (and b!251682 res!116680) b!251684))

(assert (= (and b!251684 res!116679) b!251677))

(assert (= (and b!251677 res!116685) b!251680))

(assert (= (and b!251680 res!116683) b!251678))

(declare-fun m!309375 () Bool)

(assert (=> b!251677 m!309375))

(declare-fun m!309377 () Bool)

(assert (=> b!251677 m!309377))

(assert (=> b!251677 m!309377))

(declare-fun m!309379 () Bool)

(assert (=> b!251677 m!309379))

(declare-fun m!309381 () Bool)

(assert (=> b!251681 m!309381))

(assert (=> bm!13328 m!306583))

(declare-fun m!309383 () Bool)

(assert (=> bm!13328 m!309383))

(assert (=> b!251680 m!309375))

(declare-fun m!309385 () Bool)

(assert (=> b!251680 m!309385))

(assert (=> b!251680 m!309385))

(declare-fun m!309387 () Bool)

(assert (=> b!251680 m!309387))

(assert (=> b!251680 m!309387))

(declare-fun m!309389 () Bool)

(assert (=> b!251680 m!309389))

(assert (=> b!251685 m!309375))

(assert (=> b!251685 m!309385))

(assert (=> b!251685 m!309385))

(assert (=> b!251685 m!309387))

(assert (=> b!251684 m!309375))

(assert (=> b!251684 m!309385))

(assert (=> b!251684 m!309385))

(assert (=> b!251684 m!309387))

(assert (=> b!251684 m!309387))

(declare-fun m!309405 () Bool)

(assert (=> b!251684 m!309405))

(assert (=> b!251682 m!309375))

(declare-fun m!309409 () Bool)

(assert (=> b!251682 m!309409))

(assert (=> b!251682 m!306583))

(declare-fun m!309413 () Bool)

(assert (=> b!251682 m!309413))

(declare-fun m!309417 () Bool)

(assert (=> d!70999 m!309417))

(assert (=> d!70999 m!306583))

(assert (=> d!70999 m!306583))

(declare-fun m!309423 () Bool)

(assert (=> d!70999 m!309423))

(assert (=> d!70999 m!306583))

(assert (=> d!70999 m!306583))

(declare-fun m!309429 () Bool)

(assert (=> d!70999 m!309429))

(assert (=> d!70999 m!306683))

(assert (=> b!251679 m!306583))

(declare-fun m!309435 () Bool)

(assert (=> b!251679 m!309435))

(assert (=> b!251678 m!309375))

(declare-fun m!309443 () Bool)

(assert (=> b!251678 m!309443))

(assert (=> b!250190 d!70999))

(declare-fun d!71001 () Bool)

(assert (=> d!71001 (dynLambda!1813 lambda!8304 (h!9077 tokens!465))))

(declare-fun lt!102948 () Unit!4472)

(assert (=> d!71001 (= lt!102948 (choose!2355 tokens!465 lambda!8304 (h!9077 tokens!465)))))

(declare-fun e!156344 () Bool)

(assert (=> d!71001 e!156344))

(declare-fun res!116686 () Bool)

(assert (=> d!71001 (=> (not res!116686) (not e!156344))))

(assert (=> d!71001 (= res!116686 (forall!865 tokens!465 lambda!8304))))

(assert (=> d!71001 (= (forallContained!266 tokens!465 lambda!8304 (h!9077 tokens!465)) lt!102948)))

(declare-fun b!251686 () Bool)

(assert (=> b!251686 (= e!156344 (contains!680 tokens!465 (h!9077 tokens!465)))))

(assert (= (and d!71001 res!116686) b!251686))

(declare-fun b_lambda!7425 () Bool)

(assert (=> (not b_lambda!7425) (not d!71001)))

(declare-fun m!309465 () Bool)

(assert (=> d!71001 m!309465))

(declare-fun m!309467 () Bool)

(assert (=> d!71001 m!309467))

(declare-fun m!309471 () Bool)

(assert (=> d!71001 m!309471))

(assert (=> b!251686 m!306933))

(assert (=> b!250190 d!71001))

(declare-fun b!251687 () Bool)

(declare-fun e!156345 () List!3688)

(assert (=> b!251687 (= e!156345 lt!102043)))

(declare-fun b!251688 () Bool)

(assert (=> b!251688 (= e!156345 (Cons!3678 (h!9075 (list!1461 (charsOf!354 (h!9077 tokens!465)))) (++!942 (t!35392 (list!1461 (charsOf!354 (h!9077 tokens!465)))) lt!102043)))))

(declare-fun b!251690 () Bool)

(declare-fun e!156346 () Bool)

(declare-fun lt!102949 () List!3688)

(assert (=> b!251690 (= e!156346 (or (not (= lt!102043 Nil!3678)) (= lt!102949 (list!1461 (charsOf!354 (h!9077 tokens!465))))))))

(declare-fun d!71003 () Bool)

(assert (=> d!71003 e!156346))

(declare-fun res!116688 () Bool)

(assert (=> d!71003 (=> (not res!116688) (not e!156346))))

(assert (=> d!71003 (= res!116688 (= (content!513 lt!102949) ((_ map or) (content!513 (list!1461 (charsOf!354 (h!9077 tokens!465)))) (content!513 lt!102043))))))

(assert (=> d!71003 (= lt!102949 e!156345)))

(declare-fun c!47865 () Bool)

(assert (=> d!71003 (= c!47865 ((_ is Nil!3678) (list!1461 (charsOf!354 (h!9077 tokens!465)))))))

(assert (=> d!71003 (= (++!942 (list!1461 (charsOf!354 (h!9077 tokens!465))) lt!102043) lt!102949)))

(declare-fun b!251689 () Bool)

(declare-fun res!116687 () Bool)

(assert (=> b!251689 (=> (not res!116687) (not e!156346))))

(assert (=> b!251689 (= res!116687 (= (size!2913 lt!102949) (+ (size!2913 (list!1461 (charsOf!354 (h!9077 tokens!465)))) (size!2913 lt!102043))))))

(assert (= (and d!71003 c!47865) b!251687))

(assert (= (and d!71003 (not c!47865)) b!251688))

(assert (= (and d!71003 res!116688) b!251689))

(assert (= (and b!251689 res!116687) b!251690))

(declare-fun m!309487 () Bool)

(assert (=> b!251688 m!309487))

(declare-fun m!309491 () Bool)

(assert (=> d!71003 m!309491))

(assert (=> d!71003 m!306141))

(declare-fun m!309495 () Bool)

(assert (=> d!71003 m!309495))

(declare-fun m!309497 () Bool)

(assert (=> d!71003 m!309497))

(declare-fun m!309501 () Bool)

(assert (=> b!251689 m!309501))

(assert (=> b!251689 m!306141))

(declare-fun m!309505 () Bool)

(assert (=> b!251689 m!309505))

(declare-fun m!309507 () Bool)

(assert (=> b!251689 m!309507))

(assert (=> b!250190 d!71003))

(assert (=> b!250190 d!70261))

(assert (=> b!250190 d!70269))

(assert (=> b!250190 d!70279))

(declare-fun d!71005 () Bool)

(declare-fun lt!102954 () Token!1142)

(assert (=> d!71005 (contains!680 lt!101949 lt!102954)))

(declare-fun e!156353 () Token!1142)

(assert (=> d!71005 (= lt!102954 e!156353)))

(declare-fun c!47870 () Bool)

(assert (=> d!71005 (= c!47870 (= 0 0))))

(declare-fun e!156354 () Bool)

(assert (=> d!71005 e!156354))

(declare-fun res!116691 () Bool)

(assert (=> d!71005 (=> (not res!116691) (not e!156354))))

(assert (=> d!71005 (= res!116691 (<= 0 0))))

(assert (=> d!71005 (= (apply!695 lt!101949 0) lt!102954)))

(declare-fun b!251701 () Bool)

(assert (=> b!251701 (= e!156354 (< 0 (size!2918 lt!101949)))))

(declare-fun b!251702 () Bool)

(assert (=> b!251702 (= e!156353 (head!864 lt!101949))))

(declare-fun b!251703 () Bool)

(assert (=> b!251703 (= e!156353 (apply!695 (tail!455 lt!101949) (- 0 1)))))

(assert (= (and d!71005 res!116691) b!251701))

(assert (= (and d!71005 c!47870) b!251702))

(assert (= (and d!71005 (not c!47870)) b!251703))

(declare-fun m!309521 () Bool)

(assert (=> d!71005 m!309521))

(declare-fun m!309523 () Bool)

(assert (=> b!251701 m!309523))

(declare-fun m!309525 () Bool)

(assert (=> b!251702 m!309525))

(declare-fun m!309527 () Bool)

(assert (=> b!251703 m!309527))

(assert (=> b!251703 m!309527))

(declare-fun m!309529 () Bool)

(assert (=> b!251703 m!309529))

(assert (=> b!250061 d!71005))

(declare-fun d!71015 () Bool)

(assert (=> d!71015 (dynLambda!1813 lambda!8295 (apply!694 lt!101844 0))))

(declare-fun lt!102955 () Unit!4472)

(assert (=> d!71015 (= lt!102955 (choose!2355 (list!1460 lt!101844) lambda!8295 (apply!694 lt!101844 0)))))

(declare-fun e!156357 () Bool)

(assert (=> d!71015 e!156357))

(declare-fun res!116692 () Bool)

(assert (=> d!71015 (=> (not res!116692) (not e!156357))))

(assert (=> d!71015 (= res!116692 (forall!865 (list!1460 lt!101844) lambda!8295))))

(assert (=> d!71015 (= (forallContained!266 (list!1460 lt!101844) lambda!8295 (apply!694 lt!101844 0)) lt!102955)))

(declare-fun b!251708 () Bool)

(assert (=> b!251708 (= e!156357 (contains!680 (list!1460 lt!101844) (apply!694 lt!101844 0)))))

(assert (= (and d!71015 res!116692) b!251708))

(declare-fun b_lambda!7427 () Bool)

(assert (=> (not b_lambda!7427) (not d!71015)))

(assert (=> d!71015 m!306409))

(declare-fun m!309531 () Bool)

(assert (=> d!71015 m!309531))

(assert (=> d!71015 m!306399))

(assert (=> d!71015 m!306409))

(declare-fun m!309533 () Bool)

(assert (=> d!71015 m!309533))

(assert (=> d!71015 m!306399))

(declare-fun m!309535 () Bool)

(assert (=> d!71015 m!309535))

(assert (=> b!251708 m!306399))

(assert (=> b!251708 m!306409))

(declare-fun m!309537 () Bool)

(assert (=> b!251708 m!309537))

(assert (=> b!250061 d!71015))

(declare-fun b!251714 () Bool)

(declare-fun lt!102956 () BalanceConc!2448)

(declare-fun e!156360 () Bool)

(assert (=> b!251714 (= e!156360 (= (list!1461 lt!102956) (++!942 (list!1461 (charsOf!354 (apply!694 lt!101844 0))) (list!1461 lt!101951))))))

(declare-fun d!71017 () Bool)

(assert (=> d!71017 e!156360))

(declare-fun res!116697 () Bool)

(assert (=> d!71017 (=> (not res!116697) (not e!156360))))

(assert (=> d!71017 (= res!116697 (appendAssocInst!50 (c!47452 (charsOf!354 (apply!694 lt!101844 0))) (c!47452 lt!101951)))))

(assert (=> d!71017 (= lt!102956 (BalanceConc!2449 (++!945 (c!47452 (charsOf!354 (apply!694 lt!101844 0))) (c!47452 lt!101951))))))

(assert (=> d!71017 (= (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951) lt!102956)))

(declare-fun b!251712 () Bool)

(declare-fun res!116695 () Bool)

(assert (=> b!251712 (=> (not res!116695) (not e!156360))))

(assert (=> b!251712 (= res!116695 (<= (height!134 (++!945 (c!47452 (charsOf!354 (apply!694 lt!101844 0))) (c!47452 lt!101951))) (+ (max!0 (height!134 (c!47452 (charsOf!354 (apply!694 lt!101844 0)))) (height!134 (c!47452 lt!101951))) 1)))))

(declare-fun b!251711 () Bool)

(declare-fun res!116696 () Bool)

(assert (=> b!251711 (=> (not res!116696) (not e!156360))))

(assert (=> b!251711 (= res!116696 (isBalanced!317 (++!945 (c!47452 (charsOf!354 (apply!694 lt!101844 0))) (c!47452 lt!101951))))))

(declare-fun b!251713 () Bool)

(declare-fun res!116698 () Bool)

(assert (=> b!251713 (=> (not res!116698) (not e!156360))))

(assert (=> b!251713 (= res!116698 (>= (height!134 (++!945 (c!47452 (charsOf!354 (apply!694 lt!101844 0))) (c!47452 lt!101951))) (max!0 (height!134 (c!47452 (charsOf!354 (apply!694 lt!101844 0)))) (height!134 (c!47452 lt!101951)))))))

(assert (= (and d!71017 res!116697) b!251711))

(assert (= (and b!251711 res!116696) b!251712))

(assert (= (and b!251712 res!116695) b!251713))

(assert (= (and b!251713 res!116698) b!251714))

(declare-fun m!309543 () Bool)

(assert (=> b!251712 m!309543))

(declare-fun m!309545 () Bool)

(assert (=> b!251712 m!309545))

(declare-fun m!309547 () Bool)

(assert (=> b!251712 m!309547))

(declare-fun m!309551 () Bool)

(assert (=> b!251712 m!309551))

(assert (=> b!251712 m!309543))

(assert (=> b!251712 m!309545))

(declare-fun m!309553 () Bool)

(assert (=> b!251712 m!309553))

(assert (=> b!251712 m!309547))

(declare-fun m!309557 () Bool)

(assert (=> b!251714 m!309557))

(assert (=> b!251714 m!306393))

(declare-fun m!309559 () Bool)

(assert (=> b!251714 m!309559))

(assert (=> b!251714 m!306427))

(assert (=> b!251714 m!309559))

(assert (=> b!251714 m!306427))

(declare-fun m!309561 () Bool)

(assert (=> b!251714 m!309561))

(declare-fun m!309563 () Bool)

(assert (=> d!71017 m!309563))

(assert (=> d!71017 m!309547))

(assert (=> b!251711 m!309547))

(assert (=> b!251711 m!309547))

(declare-fun m!309565 () Bool)

(assert (=> b!251711 m!309565))

(assert (=> b!251713 m!309543))

(assert (=> b!251713 m!309545))

(assert (=> b!251713 m!309547))

(assert (=> b!251713 m!309551))

(assert (=> b!251713 m!309543))

(assert (=> b!251713 m!309545))

(assert (=> b!251713 m!309553))

(assert (=> b!251713 m!309547))

(assert (=> b!250061 d!71017))

(declare-fun bs!27044 () Bool)

(declare-fun d!71025 () Bool)

(assert (= bs!27044 (and d!71025 d!70749)))

(declare-fun lambda!8358 () Int)

(assert (=> bs!27044 (= lambda!8358 lambda!8341)))

(declare-fun bs!27045 () Bool)

(assert (= bs!27045 (and d!71025 b!250061)))

(assert (=> bs!27045 (not (= lambda!8358 lambda!8295))))

(declare-fun bs!27046 () Bool)

(assert (= bs!27046 (and d!71025 d!70263)))

(assert (=> bs!27046 (= lambda!8358 lambda!8316)))

(declare-fun bs!27047 () Bool)

(assert (= bs!27047 (and d!71025 b!250282)))

(assert (=> bs!27047 (not (= lambda!8358 lambda!8315))))

(declare-fun bs!27048 () Bool)

(assert (= bs!27048 (and d!71025 b!250290)))

(assert (=> bs!27048 (not (= lambda!8358 lambda!8317))))

(declare-fun bs!27049 () Bool)

(assert (= bs!27049 (and d!71025 d!70223)))

(assert (=> bs!27049 (not (= lambda!8358 lambda!8309))))

(declare-fun bs!27050 () Bool)

(assert (= bs!27050 (and d!71025 b!250190)))

(assert (=> bs!27050 (not (= lambda!8358 lambda!8304))))

(declare-fun bs!27051 () Bool)

(assert (= bs!27051 (and d!71025 b!249873)))

(assert (=> bs!27051 (= lambda!8358 lambda!8285)))

(declare-fun bs!27052 () Bool)

(assert (= bs!27052 (and d!71025 d!70365)))

(assert (=> bs!27052 (= lambda!8358 lambda!8323)))

(declare-fun bs!27053 () Bool)

(assert (= bs!27053 (and d!71025 b!249874)))

(assert (=> bs!27053 (not (= lambda!8358 lambda!8286))))

(declare-fun bs!27054 () Bool)

(assert (= bs!27054 (and d!71025 d!70619)))

(assert (=> bs!27054 (not (= lambda!8358 lambda!8335))))

(declare-fun bs!27055 () Bool)

(assert (= bs!27055 (and d!71025 d!70193)))

(assert (=> bs!27055 (= lambda!8358 lambda!8294)))

(declare-fun bs!27056 () Bool)

(declare-fun b!251723 () Bool)

(assert (= bs!27056 (and b!251723 d!70749)))

(declare-fun lambda!8359 () Int)

(assert (=> bs!27056 (not (= lambda!8359 lambda!8341))))

(declare-fun bs!27057 () Bool)

(assert (= bs!27057 (and b!251723 b!250061)))

(assert (=> bs!27057 (= lambda!8359 lambda!8295)))

(declare-fun bs!27058 () Bool)

(assert (= bs!27058 (and b!251723 d!70263)))

(assert (=> bs!27058 (not (= lambda!8359 lambda!8316))))

(declare-fun bs!27059 () Bool)

(assert (= bs!27059 (and b!251723 b!250282)))

(assert (=> bs!27059 (= lambda!8359 lambda!8315)))

(declare-fun bs!27060 () Bool)

(assert (= bs!27060 (and b!251723 b!250290)))

(assert (=> bs!27060 (= lambda!8359 lambda!8317)))

(declare-fun bs!27061 () Bool)

(assert (= bs!27061 (and b!251723 d!70223)))

(assert (=> bs!27061 (= lambda!8359 lambda!8309)))

(declare-fun bs!27062 () Bool)

(assert (= bs!27062 (and b!251723 b!250190)))

(assert (=> bs!27062 (= lambda!8359 lambda!8304)))

(declare-fun bs!27063 () Bool)

(assert (= bs!27063 (and b!251723 b!249873)))

(assert (=> bs!27063 (not (= lambda!8359 lambda!8285))))

(declare-fun bs!27064 () Bool)

(assert (= bs!27064 (and b!251723 d!70365)))

(assert (=> bs!27064 (not (= lambda!8359 lambda!8323))))

(declare-fun bs!27065 () Bool)

(assert (= bs!27065 (and b!251723 b!249874)))

(assert (=> bs!27065 (= lambda!8359 lambda!8286)))

(declare-fun bs!27066 () Bool)

(assert (= bs!27066 (and b!251723 d!70619)))

(assert (=> bs!27066 (= lambda!8359 lambda!8335)))

(declare-fun bs!27067 () Bool)

(assert (= bs!27067 (and b!251723 d!70193)))

(assert (=> bs!27067 (not (= lambda!8359 lambda!8294))))

(declare-fun bs!27068 () Bool)

(assert (= bs!27068 (and b!251723 d!71025)))

(assert (=> bs!27068 (not (= lambda!8359 lambda!8358))))

(declare-fun b!251735 () Bool)

(declare-fun e!156375 () Bool)

(assert (=> b!251735 (= e!156375 true)))

(declare-fun b!251734 () Bool)

(declare-fun e!156374 () Bool)

(assert (=> b!251734 (= e!156374 e!156375)))

(declare-fun b!251733 () Bool)

(declare-fun e!156373 () Bool)

(assert (=> b!251733 (= e!156373 e!156374)))

(assert (=> b!251723 e!156373))

(assert (= b!251734 b!251735))

(assert (= b!251733 b!251734))

(assert (= (and b!251723 ((_ is Cons!3679) rules!1920)) b!251733))

(assert (=> b!251735 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8359))))

(assert (=> b!251735 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8359))))

(assert (=> b!251723 true))

(declare-fun b!251720 () Bool)

(declare-fun e!156368 () Bool)

(declare-fun lt!102965 () Option!761)

(assert (=> b!251720 (= e!156368 (= (_1!2275 (v!14539 lt!102965)) (apply!694 lt!101844 (+ 0 1))))))

(declare-fun b!251721 () Bool)

(declare-fun e!156367 () BalanceConc!2448)

(assert (=> b!251721 (= e!156367 (BalanceConc!2449 Empty!1220))))

(declare-fun call!13335 () Token!1142)

(assert (=> b!251721 (= (print!316 thiss!17480 (singletonSeq!251 call!13335)) (printTailRec!279 thiss!17480 (singletonSeq!251 call!13335) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!102961 () Unit!4472)

(declare-fun Unit!4498 () Unit!4472)

(assert (=> b!251721 (= lt!102961 Unit!4498)))

(declare-fun lt!102969 () Unit!4472)

(declare-fun lt!102960 () BalanceConc!2448)

(declare-fun call!13338 () BalanceConc!2448)

(assert (=> b!251721 (= lt!102969 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 (list!1461 call!13338) (list!1461 lt!102960)))))

(assert (=> b!251721 false))

(declare-fun lt!102967 () Unit!4472)

(declare-fun Unit!4499 () Unit!4472)

(assert (=> b!251721 (= lt!102967 Unit!4499)))

(declare-fun bm!13329 () Bool)

(declare-fun call!13336 () Token!1142)

(assert (=> bm!13329 (= call!13336 (apply!694 lt!101844 (+ 0 1)))))

(declare-fun bm!13330 () Bool)

(declare-fun c!47877 () Bool)

(declare-fun c!47878 () Bool)

(declare-fun call!13337 () BalanceConc!2448)

(assert (=> bm!13330 (= call!13337 (charsOf!354 (ite c!47878 call!13336 (ite c!47877 separatorToken!170 call!13335))))))

(declare-fun b!251722 () Bool)

(declare-fun e!156365 () BalanceConc!2448)

(assert (=> b!251722 (= e!156365 (charsOf!354 call!13335))))

(declare-fun bm!13331 () Bool)

(assert (=> bm!13331 (= call!13338 call!13337)))

(declare-fun lt!102964 () BalanceConc!2448)

(assert (=> d!71025 (= (list!1461 lt!102964) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (dropList!145 lt!101844 (+ 0 1)) separatorToken!170))))

(declare-fun e!156370 () BalanceConc!2448)

(assert (=> d!71025 (= lt!102964 e!156370)))

(declare-fun c!47876 () Bool)

(assert (=> d!71025 (= c!47876 (>= (+ 0 1) (size!2911 lt!101844)))))

(declare-fun lt!102970 () Unit!4472)

(assert (=> d!71025 (= lt!102970 (lemmaContentSubsetPreservesForall!89 (list!1460 lt!101844) (dropList!145 lt!101844 (+ 0 1)) lambda!8358))))

(declare-fun e!156366 () Bool)

(assert (=> d!71025 e!156366))

(declare-fun res!116702 () Bool)

(assert (=> d!71025 (=> (not res!116702) (not e!156366))))

(assert (=> d!71025 (= res!116702 (>= (+ 0 1) 0))))

(assert (=> d!71025 (= (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 (+ 0 1)) lt!102964)))

(declare-fun e!156364 () BalanceConc!2448)

(assert (=> b!251723 (= e!156370 e!156364)))

(declare-fun lt!102958 () List!3690)

(assert (=> b!251723 (= lt!102958 (list!1460 lt!101844))))

(declare-fun lt!102959 () Unit!4472)

(assert (=> b!251723 (= lt!102959 (lemmaDropApply!185 lt!102958 (+ 0 1)))))

(assert (=> b!251723 (= (head!864 (drop!198 lt!102958 (+ 0 1))) (apply!695 lt!102958 (+ 0 1)))))

(declare-fun lt!102971 () Unit!4472)

(assert (=> b!251723 (= lt!102971 lt!102959)))

(declare-fun lt!102962 () List!3690)

(assert (=> b!251723 (= lt!102962 (list!1460 lt!101844))))

(declare-fun lt!102963 () Unit!4472)

(assert (=> b!251723 (= lt!102963 (lemmaDropTail!177 lt!102962 (+ 0 1)))))

(assert (=> b!251723 (= (tail!455 (drop!198 lt!102962 (+ 0 1))) (drop!198 lt!102962 (+ 0 1 1)))))

(declare-fun lt!102968 () Unit!4472)

(assert (=> b!251723 (= lt!102968 lt!102963)))

(declare-fun lt!102966 () Unit!4472)

(assert (=> b!251723 (= lt!102966 (forallContained!266 (list!1460 lt!101844) lambda!8359 (apply!694 lt!101844 (+ 0 1))))))

(assert (=> b!251723 (= lt!102960 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 lt!101844 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!251723 (= lt!102965 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (++!943 (charsOf!354 (apply!694 lt!101844 (+ 0 1))) lt!102960)))))

(declare-fun res!116701 () Bool)

(assert (=> b!251723 (= res!116701 ((_ is Some!760) lt!102965))))

(assert (=> b!251723 (=> (not res!116701) (not e!156368))))

(assert (=> b!251723 (= c!47878 e!156368)))

(declare-fun b!251724 () Bool)

(declare-fun e!156369 () Bool)

(assert (=> b!251724 (= e!156369 (not (= (_1!2275 (v!14539 lt!102965)) call!13336)))))

(declare-fun b!251725 () Bool)

(assert (=> b!251725 (= e!156365 call!13337)))

(declare-fun b!251726 () Bool)

(assert (=> b!251726 (= c!47877 e!156369)))

(declare-fun res!116700 () Bool)

(assert (=> b!251726 (=> (not res!116700) (not e!156369))))

(assert (=> b!251726 (= res!116700 ((_ is Some!760) lt!102965))))

(assert (=> b!251726 (= e!156364 e!156367)))

(declare-fun bm!13332 () Bool)

(assert (=> bm!13332 (= call!13335 call!13336)))

(declare-fun b!251727 () Bool)

(assert (=> b!251727 (= e!156366 (<= (+ 0 1) (size!2911 lt!101844)))))

(declare-fun b!251728 () Bool)

(declare-fun call!13334 () BalanceConc!2448)

(assert (=> b!251728 (= e!156367 (++!943 call!13334 lt!102960))))

(declare-fun bm!13333 () Bool)

(declare-fun c!47875 () Bool)

(assert (=> bm!13333 (= c!47875 c!47878)))

(assert (=> bm!13333 (= call!13334 (++!943 e!156365 (ite c!47878 lt!102960 call!13338)))))

(declare-fun b!251729 () Bool)

(assert (=> b!251729 (= e!156364 call!13334)))

(declare-fun b!251730 () Bool)

(assert (=> b!251730 (= e!156370 (BalanceConc!2449 Empty!1220))))

(assert (= (and d!71025 res!116702) b!251727))

(assert (= (and d!71025 c!47876) b!251730))

(assert (= (and d!71025 (not c!47876)) b!251723))

(assert (= (and b!251723 res!116701) b!251720))

(assert (= (and b!251723 c!47878) b!251729))

(assert (= (and b!251723 (not c!47878)) b!251726))

(assert (= (and b!251726 res!116700) b!251724))

(assert (= (and b!251726 c!47877) b!251728))

(assert (= (and b!251726 (not c!47877)) b!251721))

(assert (= (or b!251728 b!251721) bm!13332))

(assert (= (or b!251728 b!251721) bm!13331))

(assert (= (or b!251729 b!251724 bm!13332) bm!13329))

(assert (= (or b!251729 bm!13331) bm!13330))

(assert (= (or b!251729 b!251728) bm!13333))

(assert (= (and bm!13333 c!47875) b!251725))

(assert (= (and bm!13333 (not c!47875)) b!251722))

(declare-fun m!309603 () Bool)

(assert (=> b!251722 m!309603))

(declare-fun m!309607 () Bool)

(assert (=> b!251728 m!309607))

(declare-fun m!309611 () Bool)

(assert (=> b!251723 m!309611))

(declare-fun m!309615 () Bool)

(assert (=> b!251723 m!309615))

(declare-fun m!309617 () Bool)

(assert (=> b!251723 m!309617))

(assert (=> b!251723 m!306399))

(declare-fun m!309619 () Bool)

(assert (=> b!251723 m!309619))

(declare-fun m!309623 () Bool)

(assert (=> b!251723 m!309623))

(declare-fun m!309625 () Bool)

(assert (=> b!251723 m!309625))

(assert (=> b!251723 m!309615))

(declare-fun m!309629 () Bool)

(assert (=> b!251723 m!309629))

(assert (=> b!251723 m!306399))

(declare-fun m!309631 () Bool)

(assert (=> b!251723 m!309631))

(declare-fun m!309633 () Bool)

(assert (=> b!251723 m!309633))

(declare-fun m!309635 () Bool)

(assert (=> b!251723 m!309635))

(declare-fun m!309637 () Bool)

(assert (=> b!251723 m!309637))

(assert (=> b!251723 m!309631))

(assert (=> b!251723 m!309611))

(assert (=> b!251723 m!309631))

(assert (=> b!251723 m!309637))

(declare-fun m!309639 () Bool)

(assert (=> b!251723 m!309639))

(assert (=> b!251723 m!309617))

(declare-fun m!309641 () Bool)

(assert (=> b!251723 m!309641))

(declare-fun m!309643 () Bool)

(assert (=> b!251723 m!309643))

(declare-fun m!309645 () Bool)

(assert (=> bm!13330 m!309645))

(declare-fun m!309647 () Bool)

(assert (=> b!251721 m!309647))

(declare-fun m!309649 () Bool)

(assert (=> b!251721 m!309649))

(declare-fun m!309651 () Bool)

(assert (=> b!251721 m!309651))

(assert (=> b!251721 m!309649))

(declare-fun m!309653 () Bool)

(assert (=> b!251721 m!309653))

(assert (=> b!251721 m!309647))

(assert (=> b!251721 m!309653))

(declare-fun m!309655 () Bool)

(assert (=> b!251721 m!309655))

(assert (=> b!251721 m!309653))

(declare-fun m!309657 () Bool)

(assert (=> b!251721 m!309657))

(declare-fun m!309659 () Bool)

(assert (=> bm!13333 m!309659))

(assert (=> d!71025 m!306399))

(declare-fun m!309661 () Bool)

(assert (=> d!71025 m!309661))

(assert (=> d!71025 m!306399))

(assert (=> d!71025 m!309661))

(declare-fun m!309663 () Bool)

(assert (=> d!71025 m!309663))

(assert (=> d!71025 m!309661))

(declare-fun m!309665 () Bool)

(assert (=> d!71025 m!309665))

(declare-fun m!309667 () Bool)

(assert (=> d!71025 m!309667))

(assert (=> d!71025 m!306163))

(assert (=> bm!13329 m!309631))

(assert (=> b!251720 m!309631))

(assert (=> b!251727 m!306163))

(assert (=> b!250061 d!71025))

(declare-fun b!251748 () Bool)

(declare-fun e!156387 () Option!761)

(declare-fun call!13339 () Option!761)

(assert (=> b!251748 (= e!156387 call!13339)))

(declare-fun lt!103004 () Option!761)

(declare-fun e!156385 () Bool)

(declare-fun b!251749 () Bool)

(assert (=> b!251749 (= e!156385 (= (list!1461 (_2!2275 (get!1211 lt!103004))) (_2!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))))))

(declare-fun b!251750 () Bool)

(declare-fun lt!103002 () Option!761)

(declare-fun lt!103000 () Option!761)

(assert (=> b!251750 (= e!156387 (ite (and ((_ is None!760) lt!103002) ((_ is None!760) lt!103000)) None!760 (ite ((_ is None!760) lt!103000) lt!103002 (ite ((_ is None!760) lt!103002) lt!103000 (ite (>= (size!2910 (_1!2275 (v!14539 lt!103002))) (size!2910 (_1!2275 (v!14539 lt!103000)))) lt!103002 lt!103000)))))))

(assert (=> b!251750 (= lt!103002 call!13339)))

(assert (=> b!251750 (= lt!103000 (maxPrefixZipperSequence!278 thiss!17480 (t!35393 rules!1920) (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))

(declare-fun bm!13334 () Bool)

(assert (=> bm!13334 (= call!13339 (maxPrefixOneRuleZipperSequence!100 thiss!17480 (h!9076 rules!1920) (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))

(declare-fun b!251751 () Bool)

(declare-fun e!156383 () Bool)

(declare-fun e!156384 () Bool)

(assert (=> b!251751 (= e!156383 e!156384)))

(declare-fun res!116711 () Bool)

(assert (=> b!251751 (=> (not res!116711) (not e!156384))))

(assert (=> b!251751 (= res!116711 (= (_1!2275 (get!1211 lt!103004)) (_1!2273 (get!1209 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))))))

(declare-fun b!251752 () Bool)

(assert (=> b!251752 (= e!156384 (= (list!1461 (_2!2275 (get!1211 lt!103004))) (_2!2273 (get!1209 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))))))

(declare-fun d!71035 () Bool)

(declare-fun e!156388 () Bool)

(assert (=> d!71035 e!156388))

(declare-fun res!116713 () Bool)

(assert (=> d!71035 (=> (not res!116713) (not e!156388))))

(assert (=> d!71035 (= res!116713 (= (isDefined!612 lt!103004) (isDefined!611 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951))))))))

(assert (=> d!71035 (= lt!103004 e!156387)))

(declare-fun c!47882 () Bool)

(assert (=> d!71035 (= c!47882 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!103001 () Unit!4472)

(declare-fun lt!103003 () Unit!4472)

(assert (=> d!71035 (= lt!103001 lt!103003)))

(declare-fun lt!103006 () List!3688)

(declare-fun lt!103005 () List!3688)

(assert (=> d!71035 (isPrefix!383 lt!103006 lt!103005)))

(assert (=> d!71035 (= lt!103003 (lemmaIsPrefixRefl!195 lt!103006 lt!103005))))

(assert (=> d!71035 (= lt!103005 (list!1461 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))

(assert (=> d!71035 (= lt!103006 (list!1461 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))

(assert (=> d!71035 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!71035 (= (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)) lt!103004)))

(declare-fun b!251747 () Bool)

(declare-fun e!156386 () Bool)

(assert (=> b!251747 (= e!156388 e!156386)))

(declare-fun res!116715 () Bool)

(assert (=> b!251747 (=> res!116715 e!156386)))

(assert (=> b!251747 (= res!116715 (not (isDefined!612 lt!103004)))))

(declare-fun b!251753 () Bool)

(assert (=> b!251753 (= e!156386 e!156385)))

(declare-fun res!116714 () Bool)

(assert (=> b!251753 (=> (not res!116714) (not e!156385))))

(assert (=> b!251753 (= res!116714 (= (_1!2275 (get!1211 lt!103004)) (_1!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 lt!101844 0)) lt!101951)))))))))

(declare-fun b!251754 () Bool)

(declare-fun res!116710 () Bool)

(assert (=> b!251754 (=> (not res!116710) (not e!156388))))

(assert (=> b!251754 (= res!116710 e!156383)))

(declare-fun res!116712 () Bool)

(assert (=> b!251754 (=> res!116712 e!156383)))

(assert (=> b!251754 (= res!116712 (not (isDefined!612 lt!103004)))))

(assert (= (and d!71035 c!47882) b!251748))

(assert (= (and d!71035 (not c!47882)) b!251750))

(assert (= (or b!251748 b!251750) bm!13334))

(assert (= (and d!71035 res!116713) b!251754))

(assert (= (and b!251754 (not res!116712)) b!251751))

(assert (= (and b!251751 res!116711) b!251752))

(assert (= (and b!251754 res!116710) b!251747))

(assert (= (and b!251747 (not res!116715)) b!251753))

(assert (= (and b!251753 res!116714) b!251749))

(declare-fun m!309715 () Bool)

(assert (=> b!251753 m!309715))

(assert (=> b!251753 m!306395))

(declare-fun m!309719 () Bool)

(assert (=> b!251753 m!309719))

(assert (=> b!251753 m!309719))

(declare-fun m!309723 () Bool)

(assert (=> b!251753 m!309723))

(assert (=> b!251753 m!309723))

(declare-fun m!309727 () Bool)

(assert (=> b!251753 m!309727))

(assert (=> bm!13334 m!306395))

(declare-fun m!309731 () Bool)

(assert (=> bm!13334 m!309731))

(declare-fun m!309733 () Bool)

(assert (=> b!251754 m!309733))

(assert (=> b!251749 m!309723))

(assert (=> b!251749 m!309727))

(assert (=> b!251749 m!309715))

(assert (=> b!251749 m!309719))

(assert (=> b!251749 m!309723))

(declare-fun m!309735 () Bool)

(assert (=> b!251749 m!309735))

(assert (=> b!251749 m!306395))

(assert (=> b!251749 m!309719))

(assert (=> b!251747 m!309733))

(assert (=> b!251750 m!306395))

(declare-fun m!309737 () Bool)

(assert (=> b!251750 m!309737))

(assert (=> b!251752 m!309719))

(declare-fun m!309739 () Bool)

(assert (=> b!251752 m!309739))

(assert (=> b!251752 m!309715))

(assert (=> b!251752 m!309739))

(declare-fun m!309741 () Bool)

(assert (=> b!251752 m!309741))

(assert (=> b!251752 m!309735))

(assert (=> b!251752 m!306395))

(assert (=> b!251752 m!309719))

(assert (=> d!71035 m!309719))

(assert (=> d!71035 m!309739))

(assert (=> d!71035 m!306395))

(assert (=> d!71035 m!309719))

(declare-fun m!309743 () Bool)

(assert (=> d!71035 m!309743))

(declare-fun m!309745 () Bool)

(assert (=> d!71035 m!309745))

(assert (=> d!71035 m!309733))

(assert (=> d!71035 m!309739))

(declare-fun m!309747 () Bool)

(assert (=> d!71035 m!309747))

(assert (=> d!71035 m!306683))

(assert (=> b!251751 m!309715))

(assert (=> b!251751 m!306395))

(assert (=> b!251751 m!309719))

(assert (=> b!251751 m!309719))

(assert (=> b!251751 m!309739))

(assert (=> b!251751 m!309739))

(assert (=> b!251751 m!309741))

(assert (=> b!250061 d!71035))

(declare-fun b!251773 () Bool)

(declare-fun e!156402 () Bool)

(declare-fun lt!103009 () List!3690)

(declare-fun e!156403 () Int)

(assert (=> b!251773 (= e!156402 (= (size!2918 lt!103009) e!156403))))

(declare-fun c!47893 () Bool)

(assert (=> b!251773 (= c!47893 (<= (+ 0 1) 0))))

(declare-fun b!251774 () Bool)

(declare-fun e!156399 () List!3690)

(assert (=> b!251774 (= e!156399 (drop!198 (t!35394 lt!101953) (- (+ 0 1) 1)))))

(declare-fun d!71039 () Bool)

(assert (=> d!71039 e!156402))

(declare-fun res!116718 () Bool)

(assert (=> d!71039 (=> (not res!116718) (not e!156402))))

(assert (=> d!71039 (= res!116718 (= ((_ map implies) (content!515 lt!103009) (content!515 lt!101953)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156400 () List!3690)

(assert (=> d!71039 (= lt!103009 e!156400)))

(declare-fun c!47892 () Bool)

(assert (=> d!71039 (= c!47892 ((_ is Nil!3680) lt!101953))))

(assert (=> d!71039 (= (drop!198 lt!101953 (+ 0 1)) lt!103009)))

(declare-fun b!251775 () Bool)

(assert (=> b!251775 (= e!156400 Nil!3680)))

(declare-fun b!251776 () Bool)

(declare-fun call!13342 () Int)

(assert (=> b!251776 (= e!156403 call!13342)))

(declare-fun b!251777 () Bool)

(declare-fun e!156401 () Int)

(assert (=> b!251777 (= e!156401 (- call!13342 (+ 0 1)))))

(declare-fun b!251778 () Bool)

(assert (=> b!251778 (= e!156400 e!156399)))

(declare-fun c!47891 () Bool)

(assert (=> b!251778 (= c!47891 (<= (+ 0 1) 0))))

(declare-fun b!251779 () Bool)

(assert (=> b!251779 (= e!156401 0)))

(declare-fun b!251780 () Bool)

(assert (=> b!251780 (= e!156403 e!156401)))

(declare-fun c!47894 () Bool)

(assert (=> b!251780 (= c!47894 (>= (+ 0 1) call!13342))))

(declare-fun b!251781 () Bool)

(assert (=> b!251781 (= e!156399 lt!101953)))

(declare-fun bm!13337 () Bool)

(assert (=> bm!13337 (= call!13342 (size!2918 lt!101953))))

(assert (= (and d!71039 c!47892) b!251775))

(assert (= (and d!71039 (not c!47892)) b!251778))

(assert (= (and b!251778 c!47891) b!251781))

(assert (= (and b!251778 (not c!47891)) b!251774))

(assert (= (and d!71039 res!116718) b!251773))

(assert (= (and b!251773 c!47893) b!251776))

(assert (= (and b!251773 (not c!47893)) b!251780))

(assert (= (and b!251780 c!47894) b!251779))

(assert (= (and b!251780 (not c!47894)) b!251777))

(assert (= (or b!251776 b!251780 b!251777) bm!13337))

(declare-fun m!309749 () Bool)

(assert (=> b!251773 m!309749))

(declare-fun m!309751 () Bool)

(assert (=> b!251774 m!309751))

(declare-fun m!309753 () Bool)

(assert (=> d!71039 m!309753))

(declare-fun m!309755 () Bool)

(assert (=> d!71039 m!309755))

(declare-fun m!309757 () Bool)

(assert (=> bm!13337 m!309757))

(assert (=> b!250061 d!71039))

(declare-fun d!71041 () Bool)

(assert (=> d!71041 (= (tail!455 (drop!198 lt!101953 0)) (t!35394 (drop!198 lt!101953 0)))))

(assert (=> b!250061 d!71041))

(declare-fun d!71043 () Bool)

(assert (=> d!71043 (= (head!864 (drop!198 lt!101949 0)) (h!9077 (drop!198 lt!101949 0)))))

(assert (=> b!250061 d!71043))

(declare-fun d!71045 () Bool)

(assert (=> d!71045 (= (tail!455 (drop!198 lt!101953 0)) (drop!198 lt!101953 (+ 0 1)))))

(declare-fun lt!103012 () Unit!4472)

(declare-fun choose!2365 (List!3690 Int) Unit!4472)

(assert (=> d!71045 (= lt!103012 (choose!2365 lt!101953 0))))

(declare-fun e!156406 () Bool)

(assert (=> d!71045 e!156406))

(declare-fun res!116721 () Bool)

(assert (=> d!71045 (=> (not res!116721) (not e!156406))))

(assert (=> d!71045 (= res!116721 (>= 0 0))))

(assert (=> d!71045 (= (lemmaDropTail!177 lt!101953 0) lt!103012)))

(declare-fun b!251784 () Bool)

(assert (=> b!251784 (= e!156406 (< 0 (size!2918 lt!101953)))))

(assert (= (and d!71045 res!116721) b!251784))

(assert (=> d!71045 m!306415))

(assert (=> d!71045 m!306415))

(assert (=> d!71045 m!306417))

(assert (=> d!71045 m!306403))

(declare-fun m!309759 () Bool)

(assert (=> d!71045 m!309759))

(assert (=> b!251784 m!309757))

(assert (=> b!250061 d!71045))

(declare-fun b!251785 () Bool)

(declare-fun e!156410 () Bool)

(declare-fun lt!103013 () List!3690)

(declare-fun e!156411 () Int)

(assert (=> b!251785 (= e!156410 (= (size!2918 lt!103013) e!156411))))

(declare-fun c!47897 () Bool)

(assert (=> b!251785 (= c!47897 (<= 0 0))))

(declare-fun b!251786 () Bool)

(declare-fun e!156407 () List!3690)

(assert (=> b!251786 (= e!156407 (drop!198 (t!35394 lt!101953) (- 0 1)))))

(declare-fun d!71047 () Bool)

(assert (=> d!71047 e!156410))

(declare-fun res!116722 () Bool)

(assert (=> d!71047 (=> (not res!116722) (not e!156410))))

(assert (=> d!71047 (= res!116722 (= ((_ map implies) (content!515 lt!103013) (content!515 lt!101953)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156408 () List!3690)

(assert (=> d!71047 (= lt!103013 e!156408)))

(declare-fun c!47896 () Bool)

(assert (=> d!71047 (= c!47896 ((_ is Nil!3680) lt!101953))))

(assert (=> d!71047 (= (drop!198 lt!101953 0) lt!103013)))

(declare-fun b!251787 () Bool)

(assert (=> b!251787 (= e!156408 Nil!3680)))

(declare-fun b!251788 () Bool)

(declare-fun call!13343 () Int)

(assert (=> b!251788 (= e!156411 call!13343)))

(declare-fun b!251789 () Bool)

(declare-fun e!156409 () Int)

(assert (=> b!251789 (= e!156409 (- call!13343 0))))

(declare-fun b!251790 () Bool)

(assert (=> b!251790 (= e!156408 e!156407)))

(declare-fun c!47895 () Bool)

(assert (=> b!251790 (= c!47895 (<= 0 0))))

(declare-fun b!251791 () Bool)

(assert (=> b!251791 (= e!156409 0)))

(declare-fun b!251792 () Bool)

(assert (=> b!251792 (= e!156411 e!156409)))

(declare-fun c!47898 () Bool)

(assert (=> b!251792 (= c!47898 (>= 0 call!13343))))

(declare-fun b!251793 () Bool)

(assert (=> b!251793 (= e!156407 lt!101953)))

(declare-fun bm!13338 () Bool)

(assert (=> bm!13338 (= call!13343 (size!2918 lt!101953))))

(assert (= (and d!71047 c!47896) b!251787))

(assert (= (and d!71047 (not c!47896)) b!251790))

(assert (= (and b!251790 c!47895) b!251793))

(assert (= (and b!251790 (not c!47895)) b!251786))

(assert (= (and d!71047 res!116722) b!251785))

(assert (= (and b!251785 c!47897) b!251788))

(assert (= (and b!251785 (not c!47897)) b!251792))

(assert (= (and b!251792 c!47898) b!251791))

(assert (= (and b!251792 (not c!47898)) b!251789))

(assert (= (or b!251788 b!251792 b!251789) bm!13338))

(declare-fun m!309761 () Bool)

(assert (=> b!251785 m!309761))

(declare-fun m!309763 () Bool)

(assert (=> b!251786 m!309763))

(declare-fun m!309765 () Bool)

(assert (=> d!71047 m!309765))

(assert (=> d!71047 m!309755))

(assert (=> bm!13338 m!309757))

(assert (=> b!250061 d!71047))

(declare-fun b!251794 () Bool)

(declare-fun e!156415 () Bool)

(declare-fun lt!103014 () List!3690)

(declare-fun e!156416 () Int)

(assert (=> b!251794 (= e!156415 (= (size!2918 lt!103014) e!156416))))

(declare-fun c!47901 () Bool)

(assert (=> b!251794 (= c!47901 (<= 0 0))))

(declare-fun b!251795 () Bool)

(declare-fun e!156412 () List!3690)

(assert (=> b!251795 (= e!156412 (drop!198 (t!35394 lt!101949) (- 0 1)))))

(declare-fun d!71049 () Bool)

(assert (=> d!71049 e!156415))

(declare-fun res!116723 () Bool)

(assert (=> d!71049 (=> (not res!116723) (not e!156415))))

(assert (=> d!71049 (= res!116723 (= ((_ map implies) (content!515 lt!103014) (content!515 lt!101949)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156413 () List!3690)

(assert (=> d!71049 (= lt!103014 e!156413)))

(declare-fun c!47900 () Bool)

(assert (=> d!71049 (= c!47900 ((_ is Nil!3680) lt!101949))))

(assert (=> d!71049 (= (drop!198 lt!101949 0) lt!103014)))

(declare-fun b!251796 () Bool)

(assert (=> b!251796 (= e!156413 Nil!3680)))

(declare-fun b!251797 () Bool)

(declare-fun call!13344 () Int)

(assert (=> b!251797 (= e!156416 call!13344)))

(declare-fun b!251798 () Bool)

(declare-fun e!156414 () Int)

(assert (=> b!251798 (= e!156414 (- call!13344 0))))

(declare-fun b!251799 () Bool)

(assert (=> b!251799 (= e!156413 e!156412)))

(declare-fun c!47899 () Bool)

(assert (=> b!251799 (= c!47899 (<= 0 0))))

(declare-fun b!251800 () Bool)

(assert (=> b!251800 (= e!156414 0)))

(declare-fun b!251801 () Bool)

(assert (=> b!251801 (= e!156416 e!156414)))

(declare-fun c!47902 () Bool)

(assert (=> b!251801 (= c!47902 (>= 0 call!13344))))

(declare-fun b!251802 () Bool)

(assert (=> b!251802 (= e!156412 lt!101949)))

(declare-fun bm!13339 () Bool)

(assert (=> bm!13339 (= call!13344 (size!2918 lt!101949))))

(assert (= (and d!71049 c!47900) b!251796))

(assert (= (and d!71049 (not c!47900)) b!251799))

(assert (= (and b!251799 c!47899) b!251802))

(assert (= (and b!251799 (not c!47899)) b!251795))

(assert (= (and d!71049 res!116723) b!251794))

(assert (= (and b!251794 c!47901) b!251797))

(assert (= (and b!251794 (not c!47901)) b!251801))

(assert (= (and b!251801 c!47902) b!251800))

(assert (= (and b!251801 (not c!47902)) b!251798))

(assert (= (or b!251797 b!251801 b!251798) bm!13339))

(declare-fun m!309767 () Bool)

(assert (=> b!251794 m!309767))

(declare-fun m!309769 () Bool)

(assert (=> b!251795 m!309769))

(declare-fun m!309771 () Bool)

(assert (=> d!71049 m!309771))

(declare-fun m!309773 () Bool)

(assert (=> d!71049 m!309773))

(assert (=> bm!13339 m!309523))

(assert (=> b!250061 d!71049))

(declare-fun d!71051 () Bool)

(declare-fun lt!103015 () BalanceConc!2448)

(assert (=> d!71051 (= (list!1461 lt!103015) (originalCharacters!742 (apply!694 lt!101844 0)))))

(assert (=> d!71051 (= lt!103015 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0)))) (value!24237 (apply!694 lt!101844 0))))))

(assert (=> d!71051 (= (charsOf!354 (apply!694 lt!101844 0)) lt!103015)))

(declare-fun b_lambda!7429 () Bool)

(assert (=> (not b_lambda!7429) (not d!71051)))

(declare-fun t!35574 () Bool)

(declare-fun tb!12909 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0))))) t!35574) tb!12909))

(declare-fun b!251803 () Bool)

(declare-fun e!156417 () Bool)

(declare-fun tp!97242 () Bool)

(assert (=> b!251803 (= e!156417 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0)))) (value!24237 (apply!694 lt!101844 0))))) tp!97242))))

(declare-fun result!16274 () Bool)

(assert (=> tb!12909 (= result!16274 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0)))) (value!24237 (apply!694 lt!101844 0)))) e!156417))))

(assert (= tb!12909 b!251803))

(declare-fun m!309775 () Bool)

(assert (=> b!251803 m!309775))

(declare-fun m!309777 () Bool)

(assert (=> tb!12909 m!309777))

(assert (=> d!71051 t!35574))

(declare-fun b_and!19021 () Bool)

(assert (= b_and!19015 (and (=> t!35574 result!16274) b_and!19021)))

(declare-fun tb!12911 () Bool)

(declare-fun t!35576 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0))))) t!35576) tb!12911))

(declare-fun result!16276 () Bool)

(assert (= result!16276 result!16274))

(assert (=> d!71051 t!35576))

(declare-fun b_and!19023 () Bool)

(assert (= b_and!19013 (and (=> t!35576 result!16276) b_and!19023)))

(declare-fun t!35578 () Bool)

(declare-fun tb!12913 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0))))) t!35578) tb!12913))

(declare-fun result!16278 () Bool)

(assert (= result!16278 result!16274))

(assert (=> d!71051 t!35578))

(declare-fun b_and!19025 () Bool)

(assert (= b_and!19011 (and (=> t!35578 result!16278) b_and!19025)))

(declare-fun t!35580 () Bool)

(declare-fun tb!12915 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0))))) t!35580) tb!12915))

(declare-fun result!16280 () Bool)

(assert (= result!16280 result!16274))

(assert (=> d!71051 t!35580))

(declare-fun b_and!19027 () Bool)

(assert (= b_and!19017 (and (=> t!35580 result!16280) b_and!19027)))

(declare-fun tb!12917 () Bool)

(declare-fun t!35582 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0))))) t!35582) tb!12917))

(declare-fun result!16282 () Bool)

(assert (= result!16282 result!16274))

(assert (=> d!71051 t!35582))

(declare-fun b_and!19029 () Bool)

(assert (= b_and!19019 (and (=> t!35582 result!16282) b_and!19029)))

(declare-fun m!309779 () Bool)

(assert (=> d!71051 m!309779))

(declare-fun m!309781 () Bool)

(assert (=> d!71051 m!309781))

(assert (=> b!250061 d!71051))

(declare-fun d!71053 () Bool)

(assert (=> d!71053 (= (head!864 (drop!198 lt!101949 0)) (apply!695 lt!101949 0))))

(declare-fun lt!103018 () Unit!4472)

(declare-fun choose!2367 (List!3690 Int) Unit!4472)

(assert (=> d!71053 (= lt!103018 (choose!2367 lt!101949 0))))

(declare-fun e!156420 () Bool)

(assert (=> d!71053 e!156420))

(declare-fun res!116726 () Bool)

(assert (=> d!71053 (=> (not res!116726) (not e!156420))))

(assert (=> d!71053 (= res!116726 (>= 0 0))))

(assert (=> d!71053 (= (lemmaDropApply!185 lt!101949 0) lt!103018)))

(declare-fun b!251806 () Bool)

(assert (=> b!251806 (= e!156420 (< 0 (size!2918 lt!101949)))))

(assert (= (and d!71053 res!116726) b!251806))

(assert (=> d!71053 m!306397))

(assert (=> d!71053 m!306397))

(assert (=> d!71053 m!306419))

(assert (=> d!71053 m!306413))

(declare-fun m!309783 () Bool)

(assert (=> d!71053 m!309783))

(assert (=> b!251806 m!309523))

(assert (=> b!250061 d!71053))

(assert (=> b!250061 d!70595))

(assert (=> b!250061 d!70843))

(declare-fun d!71055 () Bool)

(assert (=> d!71055 true))

(declare-fun lt!103021 () Bool)

(assert (=> d!71055 (= lt!103021 (rulesValidInductive!186 thiss!17480 rules!1920))))

(declare-fun lambda!8362 () Int)

(declare-fun forall!871 (List!3689 Int) Bool)

(assert (=> d!71055 (= lt!103021 (forall!871 rules!1920 lambda!8362))))

(assert (=> d!71055 (= (rulesValid!202 thiss!17480 rules!1920) lt!103021)))

(declare-fun bs!27070 () Bool)

(assert (= bs!27070 d!71055))

(assert (=> bs!27070 m!306683))

(declare-fun m!309785 () Bool)

(assert (=> bs!27070 m!309785))

(assert (=> d!70431 d!71055))

(declare-fun b!251809 () Bool)

(declare-fun e!156424 () Bool)

(declare-fun lt!103022 () List!3690)

(declare-fun e!156425 () Int)

(assert (=> b!251809 (= e!156424 (= (size!2918 lt!103022) e!156425))))

(declare-fun c!47905 () Bool)

(assert (=> b!251809 (= c!47905 (<= 0 0))))

(declare-fun b!251810 () Bool)

(declare-fun e!156421 () List!3690)

(assert (=> b!251810 (= e!156421 (drop!198 (t!35394 lt!101896) (- 0 1)))))

(declare-fun d!71057 () Bool)

(assert (=> d!71057 e!156424))

(declare-fun res!116727 () Bool)

(assert (=> d!71057 (=> (not res!116727) (not e!156424))))

(assert (=> d!71057 (= res!116727 (= ((_ map implies) (content!515 lt!103022) (content!515 lt!101896)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156422 () List!3690)

(assert (=> d!71057 (= lt!103022 e!156422)))

(declare-fun c!47904 () Bool)

(assert (=> d!71057 (= c!47904 ((_ is Nil!3680) lt!101896))))

(assert (=> d!71057 (= (drop!198 lt!101896 0) lt!103022)))

(declare-fun b!251811 () Bool)

(assert (=> b!251811 (= e!156422 Nil!3680)))

(declare-fun b!251812 () Bool)

(declare-fun call!13345 () Int)

(assert (=> b!251812 (= e!156425 call!13345)))

(declare-fun b!251813 () Bool)

(declare-fun e!156423 () Int)

(assert (=> b!251813 (= e!156423 (- call!13345 0))))

(declare-fun b!251814 () Bool)

(assert (=> b!251814 (= e!156422 e!156421)))

(declare-fun c!47903 () Bool)

(assert (=> b!251814 (= c!47903 (<= 0 0))))

(declare-fun b!251815 () Bool)

(assert (=> b!251815 (= e!156423 0)))

(declare-fun b!251816 () Bool)

(assert (=> b!251816 (= e!156425 e!156423)))

(declare-fun c!47906 () Bool)

(assert (=> b!251816 (= c!47906 (>= 0 call!13345))))

(declare-fun b!251817 () Bool)

(assert (=> b!251817 (= e!156421 lt!101896)))

(declare-fun bm!13340 () Bool)

(assert (=> bm!13340 (= call!13345 (size!2918 lt!101896))))

(assert (= (and d!71057 c!47904) b!251811))

(assert (= (and d!71057 (not c!47904)) b!251814))

(assert (= (and b!251814 c!47903) b!251817))

(assert (= (and b!251814 (not c!47903)) b!251810))

(assert (= (and d!71057 res!116727) b!251809))

(assert (= (and b!251809 c!47905) b!251812))

(assert (= (and b!251809 (not c!47905)) b!251816))

(assert (= (and b!251816 c!47906) b!251815))

(assert (= (and b!251816 (not c!47906)) b!251813))

(assert (= (or b!251812 b!251816 b!251813) bm!13340))

(declare-fun m!309787 () Bool)

(assert (=> b!251809 m!309787))

(declare-fun m!309789 () Bool)

(assert (=> b!251810 m!309789))

(declare-fun m!309791 () Bool)

(assert (=> d!71057 m!309791))

(declare-fun m!309793 () Bool)

(assert (=> d!71057 m!309793))

(declare-fun m!309795 () Bool)

(assert (=> bm!13340 m!309795))

(assert (=> b!249996 d!71057))

(declare-fun d!71059 () Bool)

(declare-fun lt!103023 () BalanceConc!2448)

(assert (=> d!71059 (= (list!1461 lt!103023) (originalCharacters!742 (apply!694 lt!101830 0)))))

(assert (=> d!71059 (= lt!103023 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0)))) (value!24237 (apply!694 lt!101830 0))))))

(assert (=> d!71059 (= (charsOf!354 (apply!694 lt!101830 0)) lt!103023)))

(declare-fun b_lambda!7431 () Bool)

(assert (=> (not b_lambda!7431) (not d!71059)))

(declare-fun tb!12919 () Bool)

(declare-fun t!35584 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0))))) t!35584) tb!12919))

(declare-fun b!251818 () Bool)

(declare-fun e!156426 () Bool)

(declare-fun tp!97243 () Bool)

(assert (=> b!251818 (= e!156426 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0)))) (value!24237 (apply!694 lt!101830 0))))) tp!97243))))

(declare-fun result!16284 () Bool)

(assert (=> tb!12919 (= result!16284 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0)))) (value!24237 (apply!694 lt!101830 0)))) e!156426))))

(assert (= tb!12919 b!251818))

(declare-fun m!309797 () Bool)

(assert (=> b!251818 m!309797))

(declare-fun m!309799 () Bool)

(assert (=> tb!12919 m!309799))

(assert (=> d!71059 t!35584))

(declare-fun b_and!19031 () Bool)

(assert (= b_and!19025 (and (=> t!35584 result!16284) b_and!19031)))

(declare-fun tb!12921 () Bool)

(declare-fun t!35586 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0))))) t!35586) tb!12921))

(declare-fun result!16286 () Bool)

(assert (= result!16286 result!16284))

(assert (=> d!71059 t!35586))

(declare-fun b_and!19033 () Bool)

(assert (= b_and!19027 (and (=> t!35586 result!16286) b_and!19033)))

(declare-fun tb!12923 () Bool)

(declare-fun t!35588 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0))))) t!35588) tb!12923))

(declare-fun result!16288 () Bool)

(assert (= result!16288 result!16284))

(assert (=> d!71059 t!35588))

(declare-fun b_and!19035 () Bool)

(assert (= b_and!19023 (and (=> t!35588 result!16288) b_and!19035)))

(declare-fun tb!12925 () Bool)

(declare-fun t!35590 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0))))) t!35590) tb!12925))

(declare-fun result!16290 () Bool)

(assert (= result!16290 result!16284))

(assert (=> d!71059 t!35590))

(declare-fun b_and!19037 () Bool)

(assert (= b_and!19021 (and (=> t!35590 result!16290) b_and!19037)))

(declare-fun t!35592 () Bool)

(declare-fun tb!12927 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0))))) t!35592) tb!12927))

(declare-fun result!16292 () Bool)

(assert (= result!16292 result!16284))

(assert (=> d!71059 t!35592))

(declare-fun b_and!19039 () Bool)

(assert (= b_and!19029 (and (=> t!35592 result!16292) b_and!19039)))

(declare-fun m!309801 () Bool)

(assert (=> d!71059 m!309801))

(declare-fun m!309803 () Bool)

(assert (=> d!71059 m!309803))

(assert (=> b!249996 d!71059))

(declare-fun d!71061 () Bool)

(assert (=> d!71061 (= (tail!455 (drop!198 lt!101896 0)) (drop!198 lt!101896 (+ 0 1)))))

(declare-fun lt!103024 () Unit!4472)

(assert (=> d!71061 (= lt!103024 (choose!2365 lt!101896 0))))

(declare-fun e!156427 () Bool)

(assert (=> d!71061 e!156427))

(declare-fun res!116728 () Bool)

(assert (=> d!71061 (=> (not res!116728) (not e!156427))))

(assert (=> d!71061 (= res!116728 (>= 0 0))))

(assert (=> d!71061 (= (lemmaDropTail!177 lt!101896 0) lt!103024)))

(declare-fun b!251819 () Bool)

(assert (=> b!251819 (= e!156427 (< 0 (size!2918 lt!101896)))))

(assert (= (and d!71061 res!116728) b!251819))

(assert (=> d!71061 m!306317))

(assert (=> d!71061 m!306317))

(assert (=> d!71061 m!306319))

(assert (=> d!71061 m!306331))

(declare-fun m!309805 () Bool)

(assert (=> d!71061 m!309805))

(assert (=> b!251819 m!309795))

(assert (=> b!249996 d!71061))

(declare-fun d!71063 () Bool)

(assert (=> d!71063 (= (list!1460 lt!101830) (list!1465 (c!47454 lt!101830)))))

(declare-fun bs!27071 () Bool)

(assert (= bs!27071 d!71063))

(declare-fun m!309807 () Bool)

(assert (=> bs!27071 m!309807))

(assert (=> b!249996 d!71063))

(declare-fun b!251820 () Bool)

(declare-fun e!156431 () Bool)

(declare-fun lt!103025 () List!3690)

(declare-fun e!156432 () Int)

(assert (=> b!251820 (= e!156431 (= (size!2918 lt!103025) e!156432))))

(declare-fun c!47909 () Bool)

(assert (=> b!251820 (= c!47909 (<= (+ 0 1) 0))))

(declare-fun b!251821 () Bool)

(declare-fun e!156428 () List!3690)

(assert (=> b!251821 (= e!156428 (drop!198 (t!35394 lt!101896) (- (+ 0 1) 1)))))

(declare-fun d!71065 () Bool)

(assert (=> d!71065 e!156431))

(declare-fun res!116729 () Bool)

(assert (=> d!71065 (=> (not res!116729) (not e!156431))))

(assert (=> d!71065 (= res!116729 (= ((_ map implies) (content!515 lt!103025) (content!515 lt!101896)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156429 () List!3690)

(assert (=> d!71065 (= lt!103025 e!156429)))

(declare-fun c!47908 () Bool)

(assert (=> d!71065 (= c!47908 ((_ is Nil!3680) lt!101896))))

(assert (=> d!71065 (= (drop!198 lt!101896 (+ 0 1)) lt!103025)))

(declare-fun b!251822 () Bool)

(assert (=> b!251822 (= e!156429 Nil!3680)))

(declare-fun b!251823 () Bool)

(declare-fun call!13346 () Int)

(assert (=> b!251823 (= e!156432 call!13346)))

(declare-fun b!251824 () Bool)

(declare-fun e!156430 () Int)

(assert (=> b!251824 (= e!156430 (- call!13346 (+ 0 1)))))

(declare-fun b!251825 () Bool)

(assert (=> b!251825 (= e!156429 e!156428)))

(declare-fun c!47907 () Bool)

(assert (=> b!251825 (= c!47907 (<= (+ 0 1) 0))))

(declare-fun b!251826 () Bool)

(assert (=> b!251826 (= e!156430 0)))

(declare-fun b!251827 () Bool)

(assert (=> b!251827 (= e!156432 e!156430)))

(declare-fun c!47910 () Bool)

(assert (=> b!251827 (= c!47910 (>= (+ 0 1) call!13346))))

(declare-fun b!251828 () Bool)

(assert (=> b!251828 (= e!156428 lt!101896)))

(declare-fun bm!13341 () Bool)

(assert (=> bm!13341 (= call!13346 (size!2918 lt!101896))))

(assert (= (and d!71065 c!47908) b!251822))

(assert (= (and d!71065 (not c!47908)) b!251825))

(assert (= (and b!251825 c!47907) b!251828))

(assert (= (and b!251825 (not c!47907)) b!251821))

(assert (= (and d!71065 res!116729) b!251820))

(assert (= (and b!251820 c!47909) b!251823))

(assert (= (and b!251820 (not c!47909)) b!251827))

(assert (= (and b!251827 c!47910) b!251826))

(assert (= (and b!251827 (not c!47910)) b!251824))

(assert (= (or b!251823 b!251827 b!251824) bm!13341))

(declare-fun m!309809 () Bool)

(assert (=> b!251820 m!309809))

(declare-fun m!309811 () Bool)

(assert (=> b!251821 m!309811))

(declare-fun m!309813 () Bool)

(assert (=> d!71065 m!309813))

(assert (=> d!71065 m!309793))

(assert (=> bm!13341 m!309795))

(assert (=> b!249996 d!71065))

(declare-fun b!251829 () Bool)

(declare-fun e!156436 () Bool)

(declare-fun lt!103026 () List!3690)

(declare-fun e!156437 () Int)

(assert (=> b!251829 (= e!156436 (= (size!2918 lt!103026) e!156437))))

(declare-fun c!47913 () Bool)

(assert (=> b!251829 (= c!47913 (<= 0 0))))

(declare-fun b!251830 () Bool)

(declare-fun e!156433 () List!3690)

(assert (=> b!251830 (= e!156433 (drop!198 (t!35394 lt!101895) (- 0 1)))))

(declare-fun d!71067 () Bool)

(assert (=> d!71067 e!156436))

(declare-fun res!116730 () Bool)

(assert (=> d!71067 (=> (not res!116730) (not e!156436))))

(assert (=> d!71067 (= res!116730 (= ((_ map implies) (content!515 lt!103026) (content!515 lt!101895)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156434 () List!3690)

(assert (=> d!71067 (= lt!103026 e!156434)))

(declare-fun c!47912 () Bool)

(assert (=> d!71067 (= c!47912 ((_ is Nil!3680) lt!101895))))

(assert (=> d!71067 (= (drop!198 lt!101895 0) lt!103026)))

(declare-fun b!251831 () Bool)

(assert (=> b!251831 (= e!156434 Nil!3680)))

(declare-fun b!251832 () Bool)

(declare-fun call!13347 () Int)

(assert (=> b!251832 (= e!156437 call!13347)))

(declare-fun b!251833 () Bool)

(declare-fun e!156435 () Int)

(assert (=> b!251833 (= e!156435 (- call!13347 0))))

(declare-fun b!251834 () Bool)

(assert (=> b!251834 (= e!156434 e!156433)))

(declare-fun c!47911 () Bool)

(assert (=> b!251834 (= c!47911 (<= 0 0))))

(declare-fun b!251835 () Bool)

(assert (=> b!251835 (= e!156435 0)))

(declare-fun b!251836 () Bool)

(assert (=> b!251836 (= e!156437 e!156435)))

(declare-fun c!47914 () Bool)

(assert (=> b!251836 (= c!47914 (>= 0 call!13347))))

(declare-fun b!251837 () Bool)

(assert (=> b!251837 (= e!156433 lt!101895)))

(declare-fun bm!13342 () Bool)

(assert (=> bm!13342 (= call!13347 (size!2918 lt!101895))))

(assert (= (and d!71067 c!47912) b!251831))

(assert (= (and d!71067 (not c!47912)) b!251834))

(assert (= (and b!251834 c!47911) b!251837))

(assert (= (and b!251834 (not c!47911)) b!251830))

(assert (= (and d!71067 res!116730) b!251829))

(assert (= (and b!251829 c!47913) b!251832))

(assert (= (and b!251829 (not c!47913)) b!251836))

(assert (= (and b!251836 c!47914) b!251835))

(assert (= (and b!251836 (not c!47914)) b!251833))

(assert (= (or b!251832 b!251836 b!251833) bm!13342))

(declare-fun m!309815 () Bool)

(assert (=> b!251829 m!309815))

(declare-fun m!309817 () Bool)

(assert (=> b!251830 m!309817))

(declare-fun m!309819 () Bool)

(assert (=> d!71067 m!309819))

(declare-fun m!309821 () Bool)

(assert (=> d!71067 m!309821))

(declare-fun m!309823 () Bool)

(assert (=> bm!13342 m!309823))

(assert (=> b!249996 d!71067))

(declare-fun d!71069 () Bool)

(declare-fun lt!103027 () Token!1142)

(assert (=> d!71069 (= lt!103027 (apply!695 (list!1460 lt!101830) 0))))

(assert (=> d!71069 (= lt!103027 (apply!700 (c!47454 lt!101830) 0))))

(declare-fun e!156438 () Bool)

(assert (=> d!71069 e!156438))

(declare-fun res!116731 () Bool)

(assert (=> d!71069 (=> (not res!116731) (not e!156438))))

(assert (=> d!71069 (= res!116731 (<= 0 0))))

(assert (=> d!71069 (= (apply!694 lt!101830 0) lt!103027)))

(declare-fun b!251838 () Bool)

(assert (=> b!251838 (= e!156438 (< 0 (size!2911 lt!101830)))))

(assert (= (and d!71069 res!116731) b!251838))

(assert (=> d!71069 m!306301))

(assert (=> d!71069 m!306301))

(declare-fun m!309825 () Bool)

(assert (=> d!71069 m!309825))

(declare-fun m!309827 () Bool)

(assert (=> d!71069 m!309827))

(assert (=> b!251838 m!306315))

(assert (=> b!249996 d!71069))

(declare-fun d!71071 () Bool)

(assert (=> d!71071 (= (head!864 (drop!198 lt!101895 0)) (apply!695 lt!101895 0))))

(declare-fun lt!103028 () Unit!4472)

(assert (=> d!71071 (= lt!103028 (choose!2367 lt!101895 0))))

(declare-fun e!156439 () Bool)

(assert (=> d!71071 e!156439))

(declare-fun res!116732 () Bool)

(assert (=> d!71071 (=> (not res!116732) (not e!156439))))

(assert (=> d!71071 (= res!116732 (>= 0 0))))

(assert (=> d!71071 (= (lemmaDropApply!185 lt!101895 0) lt!103028)))

(declare-fun b!251839 () Bool)

(assert (=> b!251839 (= e!156439 (< 0 (size!2918 lt!101895)))))

(assert (= (and d!71071 res!116732) b!251839))

(assert (=> d!71071 m!306329))

(assert (=> d!71071 m!306329))

(assert (=> d!71071 m!306333))

(assert (=> d!71071 m!306323))

(declare-fun m!309829 () Bool)

(assert (=> d!71071 m!309829))

(assert (=> b!251839 m!309823))

(assert (=> b!249996 d!71071))

(declare-fun d!71073 () Bool)

(assert (=> d!71073 (= (tail!455 (drop!198 lt!101896 0)) (t!35394 (drop!198 lt!101896 0)))))

(assert (=> b!249996 d!71073))

(declare-fun d!71075 () Bool)

(assert (=> d!71075 (= (head!864 (drop!198 lt!101895 0)) (h!9077 (drop!198 lt!101895 0)))))

(assert (=> b!249996 d!71075))

(declare-fun d!71077 () Bool)

(declare-fun lt!103029 () Token!1142)

(assert (=> d!71077 (contains!680 lt!101895 lt!103029)))

(declare-fun e!156440 () Token!1142)

(assert (=> d!71077 (= lt!103029 e!156440)))

(declare-fun c!47915 () Bool)

(assert (=> d!71077 (= c!47915 (= 0 0))))

(declare-fun e!156441 () Bool)

(assert (=> d!71077 e!156441))

(declare-fun res!116733 () Bool)

(assert (=> d!71077 (=> (not res!116733) (not e!156441))))

(assert (=> d!71077 (= res!116733 (<= 0 0))))

(assert (=> d!71077 (= (apply!695 lt!101895 0) lt!103029)))

(declare-fun b!251840 () Bool)

(assert (=> b!251840 (= e!156441 (< 0 (size!2918 lt!101895)))))

(declare-fun b!251841 () Bool)

(assert (=> b!251841 (= e!156440 (head!864 lt!101895))))

(declare-fun b!251842 () Bool)

(assert (=> b!251842 (= e!156440 (apply!695 (tail!455 lt!101895) (- 0 1)))))

(assert (= (and d!71077 res!116733) b!251840))

(assert (= (and d!71077 c!47915) b!251841))

(assert (= (and d!71077 (not c!47915)) b!251842))

(declare-fun m!309831 () Bool)

(assert (=> d!71077 m!309831))

(assert (=> b!251840 m!309823))

(declare-fun m!309833 () Bool)

(assert (=> b!251841 m!309833))

(declare-fun m!309835 () Bool)

(assert (=> b!251842 m!309835))

(assert (=> b!251842 m!309835))

(declare-fun m!309837 () Bool)

(assert (=> b!251842 m!309837))

(assert (=> b!249996 d!71077))

(declare-fun d!71079 () Bool)

(declare-fun lt!103031 () BalanceConc!2448)

(assert (=> d!71079 (= (list!1461 lt!103031) (printListTailRec!113 thiss!17480 (dropList!145 lt!101830 (+ 0 1)) (list!1461 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 lt!101830 0))))))))

(declare-fun e!156443 () BalanceConc!2448)

(assert (=> d!71079 (= lt!103031 e!156443)))

(declare-fun c!47916 () Bool)

(assert (=> d!71079 (= c!47916 (>= (+ 0 1) (size!2911 lt!101830)))))

(declare-fun e!156442 () Bool)

(assert (=> d!71079 e!156442))

(declare-fun res!116734 () Bool)

(assert (=> d!71079 (=> (not res!116734) (not e!156442))))

(assert (=> d!71079 (= res!116734 (>= (+ 0 1) 0))))

(assert (=> d!71079 (= (printTailRec!279 thiss!17480 lt!101830 (+ 0 1) (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 lt!101830 0)))) lt!103031)))

(declare-fun b!251843 () Bool)

(assert (=> b!251843 (= e!156442 (<= (+ 0 1) (size!2911 lt!101830)))))

(declare-fun b!251844 () Bool)

(assert (=> b!251844 (= e!156443 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 lt!101830 0))))))

(declare-fun b!251845 () Bool)

(assert (=> b!251845 (= e!156443 (printTailRec!279 thiss!17480 lt!101830 (+ 0 1 1) (++!943 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 lt!101830 0))) (charsOf!354 (apply!694 lt!101830 (+ 0 1))))))))

(declare-fun lt!103032 () List!3690)

(assert (=> b!251845 (= lt!103032 (list!1460 lt!101830))))

(declare-fun lt!103036 () Unit!4472)

(assert (=> b!251845 (= lt!103036 (lemmaDropApply!185 lt!103032 (+ 0 1)))))

(assert (=> b!251845 (= (head!864 (drop!198 lt!103032 (+ 0 1))) (apply!695 lt!103032 (+ 0 1)))))

(declare-fun lt!103034 () Unit!4472)

(assert (=> b!251845 (= lt!103034 lt!103036)))

(declare-fun lt!103033 () List!3690)

(assert (=> b!251845 (= lt!103033 (list!1460 lt!101830))))

(declare-fun lt!103035 () Unit!4472)

(assert (=> b!251845 (= lt!103035 (lemmaDropTail!177 lt!103033 (+ 0 1)))))

(assert (=> b!251845 (= (tail!455 (drop!198 lt!103033 (+ 0 1))) (drop!198 lt!103033 (+ 0 1 1)))))

(declare-fun lt!103030 () Unit!4472)

(assert (=> b!251845 (= lt!103030 lt!103035)))

(assert (= (and d!71079 res!116734) b!251843))

(assert (= (and d!71079 c!47916) b!251844))

(assert (= (and d!71079 (not c!47916)) b!251845))

(assert (=> d!71079 m!306335))

(declare-fun m!309839 () Bool)

(assert (=> d!71079 m!309839))

(declare-fun m!309841 () Bool)

(assert (=> d!71079 m!309841))

(assert (=> d!71079 m!309841))

(assert (=> d!71079 m!309839))

(declare-fun m!309843 () Bool)

(assert (=> d!71079 m!309843))

(declare-fun m!309845 () Bool)

(assert (=> d!71079 m!309845))

(assert (=> d!71079 m!306315))

(assert (=> b!251843 m!306315))

(declare-fun m!309847 () Bool)

(assert (=> b!251845 m!309847))

(declare-fun m!309849 () Bool)

(assert (=> b!251845 m!309849))

(declare-fun m!309851 () Bool)

(assert (=> b!251845 m!309851))

(declare-fun m!309853 () Bool)

(assert (=> b!251845 m!309853))

(declare-fun m!309855 () Bool)

(assert (=> b!251845 m!309855))

(assert (=> b!251845 m!306301))

(declare-fun m!309857 () Bool)

(assert (=> b!251845 m!309857))

(declare-fun m!309859 () Bool)

(assert (=> b!251845 m!309859))

(declare-fun m!309861 () Bool)

(assert (=> b!251845 m!309861))

(assert (=> b!251845 m!309859))

(declare-fun m!309863 () Bool)

(assert (=> b!251845 m!309863))

(declare-fun m!309865 () Bool)

(assert (=> b!251845 m!309865))

(declare-fun m!309867 () Bool)

(assert (=> b!251845 m!309867))

(assert (=> b!251845 m!309847))

(assert (=> b!251845 m!309851))

(declare-fun m!309869 () Bool)

(assert (=> b!251845 m!309869))

(assert (=> b!251845 m!306335))

(assert (=> b!251845 m!309869))

(assert (=> b!251845 m!309865))

(assert (=> b!249996 d!71079))

(declare-fun b!251849 () Bool)

(declare-fun e!156444 () Bool)

(declare-fun lt!103037 () BalanceConc!2448)

(assert (=> b!251849 (= e!156444 (= (list!1461 lt!103037) (++!942 (list!1461 (BalanceConc!2449 Empty!1220)) (list!1461 (charsOf!354 (apply!694 lt!101830 0))))))))

(declare-fun d!71081 () Bool)

(assert (=> d!71081 e!156444))

(declare-fun res!116737 () Bool)

(assert (=> d!71081 (=> (not res!116737) (not e!156444))))

(assert (=> d!71081 (= res!116737 (appendAssocInst!50 (c!47452 (BalanceConc!2449 Empty!1220)) (c!47452 (charsOf!354 (apply!694 lt!101830 0)))))))

(assert (=> d!71081 (= lt!103037 (BalanceConc!2449 (++!945 (c!47452 (BalanceConc!2449 Empty!1220)) (c!47452 (charsOf!354 (apply!694 lt!101830 0))))))))

(assert (=> d!71081 (= (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 lt!101830 0))) lt!103037)))

(declare-fun b!251847 () Bool)

(declare-fun res!116735 () Bool)

(assert (=> b!251847 (=> (not res!116735) (not e!156444))))

(assert (=> b!251847 (= res!116735 (<= (height!134 (++!945 (c!47452 (BalanceConc!2449 Empty!1220)) (c!47452 (charsOf!354 (apply!694 lt!101830 0))))) (+ (max!0 (height!134 (c!47452 (BalanceConc!2449 Empty!1220))) (height!134 (c!47452 (charsOf!354 (apply!694 lt!101830 0))))) 1)))))

(declare-fun b!251846 () Bool)

(declare-fun res!116736 () Bool)

(assert (=> b!251846 (=> (not res!116736) (not e!156444))))

(assert (=> b!251846 (= res!116736 (isBalanced!317 (++!945 (c!47452 (BalanceConc!2449 Empty!1220)) (c!47452 (charsOf!354 (apply!694 lt!101830 0))))))))

(declare-fun b!251848 () Bool)

(declare-fun res!116738 () Bool)

(assert (=> b!251848 (=> (not res!116738) (not e!156444))))

(assert (=> b!251848 (= res!116738 (>= (height!134 (++!945 (c!47452 (BalanceConc!2449 Empty!1220)) (c!47452 (charsOf!354 (apply!694 lt!101830 0))))) (max!0 (height!134 (c!47452 (BalanceConc!2449 Empty!1220))) (height!134 (c!47452 (charsOf!354 (apply!694 lt!101830 0)))))))))

(assert (= (and d!71081 res!116737) b!251846))

(assert (= (and b!251846 res!116736) b!251847))

(assert (= (and b!251847 res!116735) b!251848))

(assert (= (and b!251848 res!116738) b!251849))

(declare-fun m!309871 () Bool)

(assert (=> b!251847 m!309871))

(declare-fun m!309873 () Bool)

(assert (=> b!251847 m!309873))

(declare-fun m!309875 () Bool)

(assert (=> b!251847 m!309875))

(declare-fun m!309877 () Bool)

(assert (=> b!251847 m!309877))

(assert (=> b!251847 m!309871))

(assert (=> b!251847 m!309873))

(declare-fun m!309879 () Bool)

(assert (=> b!251847 m!309879))

(assert (=> b!251847 m!309875))

(declare-fun m!309881 () Bool)

(assert (=> b!251849 m!309881))

(assert (=> b!251849 m!306307))

(assert (=> b!251849 m!306339))

(declare-fun m!309883 () Bool)

(assert (=> b!251849 m!309883))

(assert (=> b!251849 m!306307))

(assert (=> b!251849 m!309883))

(declare-fun m!309885 () Bool)

(assert (=> b!251849 m!309885))

(declare-fun m!309887 () Bool)

(assert (=> d!71081 m!309887))

(assert (=> d!71081 m!309875))

(assert (=> b!251846 m!309875))

(assert (=> b!251846 m!309875))

(declare-fun m!309889 () Bool)

(assert (=> b!251846 m!309889))

(assert (=> b!251848 m!309871))

(assert (=> b!251848 m!309873))

(assert (=> b!251848 m!309875))

(assert (=> b!251848 m!309877))

(assert (=> b!251848 m!309871))

(assert (=> b!251848 m!309873))

(assert (=> b!251848 m!309879))

(assert (=> b!251848 m!309875))

(assert (=> b!249996 d!71081))

(declare-fun d!71083 () Bool)

(declare-fun e!156447 () Bool)

(assert (=> d!71083 e!156447))

(declare-fun res!116741 () Bool)

(assert (=> d!71083 (=> (not res!116741) (not e!156447))))

(declare-fun lt!103040 () BalanceConc!2448)

(assert (=> d!71083 (= res!116741 (= (list!1461 lt!103040) lt!101845))))

(declare-fun fromList!151 (List!3688) Conc!1220)

(assert (=> d!71083 (= lt!103040 (BalanceConc!2449 (fromList!151 lt!101845)))))

(assert (=> d!71083 (= (fromListB!281 lt!101845) lt!103040)))

(declare-fun b!251852 () Bool)

(assert (=> b!251852 (= e!156447 (isBalanced!317 (fromList!151 lt!101845)))))

(assert (= (and d!71083 res!116741) b!251852))

(declare-fun m!309891 () Bool)

(assert (=> d!71083 m!309891))

(declare-fun m!309893 () Bool)

(assert (=> d!71083 m!309893))

(assert (=> b!251852 m!309893))

(assert (=> b!251852 m!309893))

(declare-fun m!309895 () Bool)

(assert (=> b!251852 m!309895))

(assert (=> d!70437 d!71083))

(declare-fun e!156448 () List!3688)

(declare-fun b!251853 () Bool)

(assert (=> b!251853 (= e!156448 (ite c!47548 lt!102094 call!13242))))

(declare-fun b!251854 () Bool)

(assert (=> b!251854 (= e!156448 (Cons!3678 (h!9075 e!155492) (++!942 (t!35392 e!155492) (ite c!47548 lt!102094 call!13242))))))

(declare-fun lt!103041 () List!3688)

(declare-fun e!156449 () Bool)

(declare-fun b!251856 () Bool)

(assert (=> b!251856 (= e!156449 (or (not (= (ite c!47548 lt!102094 call!13242) Nil!3678)) (= lt!103041 e!155492)))))

(declare-fun d!71085 () Bool)

(assert (=> d!71085 e!156449))

(declare-fun res!116743 () Bool)

(assert (=> d!71085 (=> (not res!116743) (not e!156449))))

(assert (=> d!71085 (= res!116743 (= (content!513 lt!103041) ((_ map or) (content!513 e!155492) (content!513 (ite c!47548 lt!102094 call!13242)))))))

(assert (=> d!71085 (= lt!103041 e!156448)))

(declare-fun c!47918 () Bool)

(assert (=> d!71085 (= c!47918 ((_ is Nil!3678) e!155492))))

(assert (=> d!71085 (= (++!942 e!155492 (ite c!47548 lt!102094 call!13242)) lt!103041)))

(declare-fun b!251855 () Bool)

(declare-fun res!116742 () Bool)

(assert (=> b!251855 (=> (not res!116742) (not e!156449))))

(assert (=> b!251855 (= res!116742 (= (size!2913 lt!103041) (+ (size!2913 e!155492) (size!2913 (ite c!47548 lt!102094 call!13242)))))))

(assert (= (and d!71085 c!47918) b!251853))

(assert (= (and d!71085 (not c!47918)) b!251854))

(assert (= (and d!71085 res!116743) b!251855))

(assert (= (and b!251855 res!116742) b!251856))

(declare-fun m!309897 () Bool)

(assert (=> b!251854 m!309897))

(declare-fun m!309899 () Bool)

(assert (=> d!71085 m!309899))

(declare-fun m!309901 () Bool)

(assert (=> d!71085 m!309901))

(declare-fun m!309903 () Bool)

(assert (=> d!71085 m!309903))

(declare-fun m!309905 () Bool)

(assert (=> b!251855 m!309905))

(declare-fun m!309907 () Bool)

(assert (=> b!251855 m!309907))

(declare-fun m!309909 () Bool)

(assert (=> b!251855 m!309909))

(assert (=> bm!13238 d!71085))

(assert (=> b!250577 d!70715))

(declare-fun d!71087 () Bool)

(assert (=> d!71087 (= (head!866 lt!101823) (h!9075 lt!101823))))

(assert (=> b!250577 d!71087))

(declare-fun d!71089 () Bool)

(declare-fun lt!103042 () Int)

(assert (=> d!71089 (>= lt!103042 0)))

(declare-fun e!156450 () Int)

(assert (=> d!71089 (= lt!103042 e!156450)))

(declare-fun c!47919 () Bool)

(assert (=> d!71089 (= c!47919 ((_ is Nil!3678) lt!102087))))

(assert (=> d!71089 (= (size!2913 lt!102087) lt!103042)))

(declare-fun b!251857 () Bool)

(assert (=> b!251857 (= e!156450 0)))

(declare-fun b!251858 () Bool)

(assert (=> b!251858 (= e!156450 (+ 1 (size!2913 (t!35392 lt!102087))))))

(assert (= (and d!71089 c!47919) b!251857))

(assert (= (and d!71089 (not c!47919)) b!251858))

(declare-fun m!309911 () Bool)

(assert (=> b!251858 m!309911))

(assert (=> b!250253 d!71089))

(assert (=> b!250253 d!70457))

(declare-fun d!71091 () Bool)

(declare-fun lt!103043 () Int)

(assert (=> d!71091 (>= lt!103043 0)))

(declare-fun e!156451 () Int)

(assert (=> d!71091 (= lt!103043 e!156451)))

(declare-fun c!47920 () Bool)

(assert (=> d!71091 (= c!47920 ((_ is Nil!3678) (_2!2273 lt!101826)))))

(assert (=> d!71091 (= (size!2913 (_2!2273 lt!101826)) lt!103043)))

(declare-fun b!251859 () Bool)

(assert (=> b!251859 (= e!156451 0)))

(declare-fun b!251860 () Bool)

(assert (=> b!251860 (= e!156451 (+ 1 (size!2913 (t!35392 (_2!2273 lt!101826)))))))

(assert (= (and d!71091 c!47920) b!251859))

(assert (= (and d!71091 (not c!47920)) b!251860))

(declare-fun m!309913 () Bool)

(assert (=> b!251860 m!309913))

(assert (=> b!250253 d!71091))

(assert (=> b!250065 d!70329))

(declare-fun d!71093 () Bool)

(assert (=> d!71093 (= (inv!15 (value!24237 (h!9077 tokens!465))) (= (charsToBigInt!0 (text!5496 (value!24237 (h!9077 tokens!465))) 0) (value!24232 (value!24237 (h!9077 tokens!465)))))))

(declare-fun bs!27072 () Bool)

(assert (= bs!27072 d!71093))

(declare-fun m!309915 () Bool)

(assert (=> bs!27072 m!309915))

(assert (=> b!250716 d!71093))

(declare-fun d!71095 () Bool)

(declare-fun lt!103044 () Token!1142)

(assert (=> d!71095 (= lt!103044 (apply!695 (list!1460 (seqFromList!776 (t!35394 tokens!465))) 0))))

(assert (=> d!71095 (= lt!103044 (apply!700 (c!47454 (seqFromList!776 (t!35394 tokens!465))) 0))))

(declare-fun e!156452 () Bool)

(assert (=> d!71095 e!156452))

(declare-fun res!116744 () Bool)

(assert (=> d!71095 (=> (not res!116744) (not e!156452))))

(assert (=> d!71095 (= res!116744 (<= 0 0))))

(assert (=> d!71095 (= (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0) lt!103044)))

(declare-fun b!251861 () Bool)

(assert (=> b!251861 (= e!156452 (< 0 (size!2911 (seqFromList!776 (t!35394 tokens!465)))))))

(assert (= (and d!71095 res!116744) b!251861))

(assert (=> d!71095 m!306121))

(assert (=> d!71095 m!306763))

(assert (=> d!71095 m!306763))

(declare-fun m!309917 () Bool)

(assert (=> d!71095 m!309917))

(declare-fun m!309919 () Bool)

(assert (=> d!71095 m!309919))

(assert (=> b!251861 m!306121))

(assert (=> b!251861 m!306811))

(assert (=> bm!13241 d!71095))

(declare-fun b!251862 () Bool)

(declare-fun e!156453 () List!3688)

(assert (=> b!251862 (= e!156453 lt!102043)))

(declare-fun b!251863 () Bool)

(assert (=> b!251863 (= e!156453 (Cons!3678 (h!9075 call!13234) (++!942 (t!35392 call!13234) lt!102043)))))

(declare-fun lt!103045 () List!3688)

(declare-fun b!251865 () Bool)

(declare-fun e!156454 () Bool)

(assert (=> b!251865 (= e!156454 (or (not (= lt!102043 Nil!3678)) (= lt!103045 call!13234)))))

(declare-fun d!71097 () Bool)

(assert (=> d!71097 e!156454))

(declare-fun res!116746 () Bool)

(assert (=> d!71097 (=> (not res!116746) (not e!156454))))

(assert (=> d!71097 (= res!116746 (= (content!513 lt!103045) ((_ map or) (content!513 call!13234) (content!513 lt!102043))))))

(assert (=> d!71097 (= lt!103045 e!156453)))

(declare-fun c!47921 () Bool)

(assert (=> d!71097 (= c!47921 ((_ is Nil!3678) call!13234))))

(assert (=> d!71097 (= (++!942 call!13234 lt!102043) lt!103045)))

(declare-fun b!251864 () Bool)

(declare-fun res!116745 () Bool)

(assert (=> b!251864 (=> (not res!116745) (not e!156454))))

(assert (=> b!251864 (= res!116745 (= (size!2913 lt!103045) (+ (size!2913 call!13234) (size!2913 lt!102043))))))

(assert (= (and d!71097 c!47921) b!251862))

(assert (= (and d!71097 (not c!47921)) b!251863))

(assert (= (and d!71097 res!116746) b!251864))

(assert (= (and b!251864 res!116745) b!251865))

(declare-fun m!309921 () Bool)

(assert (=> b!251863 m!309921))

(declare-fun m!309923 () Bool)

(assert (=> d!71097 m!309923))

(declare-fun m!309925 () Bool)

(assert (=> d!71097 m!309925))

(assert (=> d!71097 m!309497))

(declare-fun m!309927 () Bool)

(assert (=> b!251864 m!309927))

(declare-fun m!309929 () Bool)

(assert (=> b!251864 m!309929))

(assert (=> b!251864 m!309507))

(assert (=> b!250182 d!71097))

(declare-fun b!251866 () Bool)

(declare-fun e!156455 () List!3688)

(assert (=> b!251866 (= e!156455 lt!101842)))

(declare-fun b!251867 () Bool)

(assert (=> b!251867 (= e!156455 (Cons!3678 (h!9075 (t!35392 (++!942 lt!101834 lt!101837))) (++!942 (t!35392 (t!35392 (++!942 lt!101834 lt!101837))) lt!101842)))))

(declare-fun e!156456 () Bool)

(declare-fun lt!103046 () List!3688)

(declare-fun b!251869 () Bool)

(assert (=> b!251869 (= e!156456 (or (not (= lt!101842 Nil!3678)) (= lt!103046 (t!35392 (++!942 lt!101834 lt!101837)))))))

(declare-fun d!71099 () Bool)

(assert (=> d!71099 e!156456))

(declare-fun res!116748 () Bool)

(assert (=> d!71099 (=> (not res!116748) (not e!156456))))

(assert (=> d!71099 (= res!116748 (= (content!513 lt!103046) ((_ map or) (content!513 (t!35392 (++!942 lt!101834 lt!101837))) (content!513 lt!101842))))))

(assert (=> d!71099 (= lt!103046 e!156455)))

(declare-fun c!47922 () Bool)

(assert (=> d!71099 (= c!47922 ((_ is Nil!3678) (t!35392 (++!942 lt!101834 lt!101837))))))

(assert (=> d!71099 (= (++!942 (t!35392 (++!942 lt!101834 lt!101837)) lt!101842) lt!103046)))

(declare-fun b!251868 () Bool)

(declare-fun res!116747 () Bool)

(assert (=> b!251868 (=> (not res!116747) (not e!156456))))

(assert (=> b!251868 (= res!116747 (= (size!2913 lt!103046) (+ (size!2913 (t!35392 (++!942 lt!101834 lt!101837))) (size!2913 lt!101842))))))

(assert (= (and d!71099 c!47922) b!251866))

(assert (= (and d!71099 (not c!47922)) b!251867))

(assert (= (and d!71099 res!116748) b!251868))

(assert (= (and b!251868 res!116747) b!251869))

(declare-fun m!309931 () Bool)

(assert (=> b!251867 m!309931))

(declare-fun m!309933 () Bool)

(assert (=> d!71099 m!309933))

(declare-fun m!309935 () Bool)

(assert (=> d!71099 m!309935))

(assert (=> d!71099 m!306179))

(declare-fun m!309937 () Bool)

(assert (=> b!251868 m!309937))

(declare-fun m!309939 () Bool)

(assert (=> b!251868 m!309939))

(assert (=> b!251868 m!306185))

(assert (=> b!250303 d!71099))

(declare-fun bs!27073 () Bool)

(declare-fun b!251878 () Bool)

(assert (= bs!27073 (and b!251878 d!70749)))

(declare-fun lambda!8363 () Int)

(assert (=> bs!27073 (not (= lambda!8363 lambda!8341))))

(declare-fun bs!27074 () Bool)

(assert (= bs!27074 (and b!251878 b!250061)))

(assert (=> bs!27074 (= lambda!8363 lambda!8295)))

(declare-fun bs!27075 () Bool)

(assert (= bs!27075 (and b!251878 d!70263)))

(assert (=> bs!27075 (not (= lambda!8363 lambda!8316))))

(declare-fun bs!27076 () Bool)

(assert (= bs!27076 (and b!251878 b!250282)))

(assert (=> bs!27076 (= lambda!8363 lambda!8315)))

(declare-fun bs!27077 () Bool)

(assert (= bs!27077 (and b!251878 b!250290)))

(assert (=> bs!27077 (= lambda!8363 lambda!8317)))

(declare-fun bs!27078 () Bool)

(assert (= bs!27078 (and b!251878 d!70223)))

(assert (=> bs!27078 (= lambda!8363 lambda!8309)))

(declare-fun bs!27079 () Bool)

(assert (= bs!27079 (and b!251878 b!250190)))

(assert (=> bs!27079 (= lambda!8363 lambda!8304)))

(declare-fun bs!27080 () Bool)

(assert (= bs!27080 (and b!251878 b!251723)))

(assert (=> bs!27080 (= lambda!8363 lambda!8359)))

(declare-fun bs!27081 () Bool)

(assert (= bs!27081 (and b!251878 b!249873)))

(assert (=> bs!27081 (not (= lambda!8363 lambda!8285))))

(declare-fun bs!27082 () Bool)

(assert (= bs!27082 (and b!251878 d!70365)))

(assert (=> bs!27082 (not (= lambda!8363 lambda!8323))))

(declare-fun bs!27083 () Bool)

(assert (= bs!27083 (and b!251878 b!249874)))

(assert (=> bs!27083 (= lambda!8363 lambda!8286)))

(declare-fun bs!27084 () Bool)

(assert (= bs!27084 (and b!251878 d!70619)))

(assert (=> bs!27084 (= lambda!8363 lambda!8335)))

(declare-fun bs!27085 () Bool)

(assert (= bs!27085 (and b!251878 d!70193)))

(assert (=> bs!27085 (not (= lambda!8363 lambda!8294))))

(declare-fun bs!27086 () Bool)

(assert (= bs!27086 (and b!251878 d!71025)))

(assert (=> bs!27086 (not (= lambda!8363 lambda!8358))))

(declare-fun b!251882 () Bool)

(declare-fun e!156464 () Bool)

(assert (=> b!251882 (= e!156464 true)))

(declare-fun b!251881 () Bool)

(declare-fun e!156463 () Bool)

(assert (=> b!251881 (= e!156463 e!156464)))

(declare-fun b!251880 () Bool)

(declare-fun e!156462 () Bool)

(assert (=> b!251880 (= e!156462 e!156463)))

(assert (=> b!251878 e!156462))

(assert (= b!251881 b!251882))

(assert (= b!251880 b!251881))

(assert (= (and b!251878 ((_ is Cons!3679) rules!1920)) b!251880))

(assert (=> b!251882 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8363))))

(assert (=> b!251882 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8363))))

(assert (=> b!251878 true))

(declare-fun bm!13343 () Bool)

(declare-fun call!13352 () BalanceConc!2448)

(assert (=> bm!13343 (= call!13352 (charsOf!354 (h!9077 (dropList!145 lt!101844 0))))))

(declare-fun b!251870 () Bool)

(declare-fun e!156459 () List!3688)

(declare-fun call!13350 () List!3688)

(declare-fun lt!103049 () List!3688)

(assert (=> b!251870 (= e!156459 (++!942 call!13350 lt!103049))))

(declare-fun b!251871 () Bool)

(declare-fun e!156458 () BalanceConc!2448)

(assert (=> b!251871 (= e!156458 (charsOf!354 separatorToken!170))))

(declare-fun bm!13344 () Bool)

(declare-fun call!13348 () BalanceConc!2448)

(assert (=> bm!13344 (= call!13348 call!13352)))

(declare-fun b!251872 () Bool)

(declare-fun c!47926 () Bool)

(declare-fun lt!103048 () Option!760)

(assert (=> b!251872 (= c!47926 (and ((_ is Some!759) lt!103048) (not (= (_1!2273 (v!14538 lt!103048)) (h!9077 (dropList!145 lt!101844 0))))))))

(declare-fun e!156460 () List!3688)

(assert (=> b!251872 (= e!156460 e!156459)))

(declare-fun bm!13345 () Bool)

(declare-fun c!47927 () Bool)

(declare-fun c!47923 () Bool)

(assert (=> bm!13345 (= c!47927 c!47923)))

(declare-fun call!13349 () List!3688)

(declare-fun e!156461 () List!3688)

(assert (=> bm!13345 (= call!13350 (++!942 e!156461 (ite c!47923 lt!103049 call!13349)))))

(declare-fun b!251873 () Bool)

(assert (=> b!251873 (= e!156460 call!13350)))

(declare-fun call!13351 () List!3688)

(declare-fun bm!13347 () Bool)

(assert (=> bm!13347 (= call!13351 (list!1461 (ite c!47923 call!13352 e!156458)))))

(declare-fun b!251874 () Bool)

(assert (=> b!251874 (= e!156461 (list!1461 call!13348))))

(declare-fun b!251875 () Bool)

(declare-fun e!156457 () List!3688)

(assert (=> b!251875 (= e!156457 Nil!3678)))

(declare-fun b!251876 () Bool)

(assert (=> b!251876 (= e!156461 call!13351)))

(declare-fun b!251877 () Bool)

(assert (=> b!251877 (= e!156458 call!13348)))

(assert (=> b!251878 (= e!156457 e!156460)))

(declare-fun lt!103051 () Unit!4472)

(assert (=> b!251878 (= lt!103051 (forallContained!266 (dropList!145 lt!101844 0) lambda!8363 (h!9077 (dropList!145 lt!101844 0))))))

(assert (=> b!251878 (= lt!103049 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (t!35394 (dropList!145 lt!101844 0)) separatorToken!170))))

(assert (=> b!251878 (= lt!103048 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 (charsOf!354 (h!9077 (dropList!145 lt!101844 0)))) lt!103049)))))

(assert (=> b!251878 (= c!47923 (and ((_ is Some!759) lt!103048) (= (_1!2273 (v!14538 lt!103048)) (h!9077 (dropList!145 lt!101844 0)))))))

(declare-fun b!251879 () Bool)

(assert (=> b!251879 (= e!156459 Nil!3678)))

(assert (=> b!251879 (= (print!316 thiss!17480 (singletonSeq!251 (h!9077 (dropList!145 lt!101844 0)))) (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 (dropList!145 lt!101844 0))) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!103050 () Unit!4472)

(declare-fun Unit!4502 () Unit!4472)

(assert (=> b!251879 (= lt!103050 Unit!4502)))

(declare-fun lt!103052 () Unit!4472)

(assert (=> b!251879 (= lt!103052 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 call!13349 lt!103049))))

(assert (=> b!251879 false))

(declare-fun lt!103047 () Unit!4472)

(declare-fun Unit!4503 () Unit!4472)

(assert (=> b!251879 (= lt!103047 Unit!4503)))

(declare-fun bm!13346 () Bool)

(assert (=> bm!13346 (= call!13349 call!13351)))

(declare-fun c!47925 () Bool)

(assert (=> bm!13346 (= c!47925 c!47926)))

(declare-fun d!71101 () Bool)

(declare-fun c!47924 () Bool)

(assert (=> d!71101 (= c!47924 ((_ is Cons!3680) (dropList!145 lt!101844 0)))))

(assert (=> d!71101 (= (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (dropList!145 lt!101844 0) separatorToken!170) e!156457)))

(assert (= (and d!71101 c!47924) b!251878))

(assert (= (and d!71101 (not c!47924)) b!251875))

(assert (= (and b!251878 c!47923) b!251873))

(assert (= (and b!251878 (not c!47923)) b!251872))

(assert (= (and b!251872 c!47926) b!251870))

(assert (= (and b!251872 (not c!47926)) b!251879))

(assert (= (or b!251870 b!251879) bm!13344))

(assert (= (or b!251870 b!251879) bm!13346))

(assert (= (and bm!13346 c!47925) b!251871))

(assert (= (and bm!13346 (not c!47925)) b!251877))

(assert (= (or b!251873 bm!13344) bm!13343))

(assert (= (or b!251873 bm!13346) bm!13347))

(assert (= (or b!251873 b!251870) bm!13345))

(assert (= (and bm!13345 c!47927) b!251876))

(assert (= (and bm!13345 (not c!47927)) b!251874))

(declare-fun m!309941 () Bool)

(assert (=> bm!13343 m!309941))

(declare-fun m!309943 () Bool)

(assert (=> b!251874 m!309943))

(declare-fun m!309945 () Bool)

(assert (=> b!251870 m!309945))

(declare-fun m!309947 () Bool)

(assert (=> bm!13345 m!309947))

(assert (=> b!251871 m!306127))

(declare-fun m!309949 () Bool)

(assert (=> bm!13347 m!309949))

(declare-fun m!309951 () Bool)

(assert (=> b!251879 m!309951))

(assert (=> b!251879 m!309951))

(declare-fun m!309953 () Bool)

(assert (=> b!251879 m!309953))

(assert (=> b!251879 m!309951))

(declare-fun m!309955 () Bool)

(assert (=> b!251879 m!309955))

(declare-fun m!309957 () Bool)

(assert (=> b!251879 m!309957))

(declare-fun m!309959 () Bool)

(assert (=> b!251878 m!309959))

(declare-fun m!309961 () Bool)

(assert (=> b!251878 m!309961))

(assert (=> b!251878 m!306439))

(declare-fun m!309963 () Bool)

(assert (=> b!251878 m!309963))

(assert (=> b!251878 m!309961))

(declare-fun m!309965 () Bool)

(assert (=> b!251878 m!309965))

(assert (=> b!251878 m!309941))

(assert (=> b!251878 m!309959))

(assert (=> b!251878 m!309941))

(declare-fun m!309967 () Bool)

(assert (=> b!251878 m!309967))

(assert (=> d!70193 d!71101))

(declare-fun d!71103 () Bool)

(assert (=> d!71103 (forall!865 (dropList!145 lt!101844 0) lambda!8294)))

(declare-fun lt!103055 () Unit!4472)

(declare-fun choose!2368 (List!3690 List!3690 Int) Unit!4472)

(assert (=> d!71103 (= lt!103055 (choose!2368 (list!1460 lt!101844) (dropList!145 lt!101844 0) lambda!8294))))

(assert (=> d!71103 (forall!865 (list!1460 lt!101844) lambda!8294)))

(assert (=> d!71103 (= (lemmaContentSubsetPreservesForall!89 (list!1460 lt!101844) (dropList!145 lt!101844 0) lambda!8294) lt!103055)))

(declare-fun bs!27087 () Bool)

(assert (= bs!27087 d!71103))

(assert (=> bs!27087 m!306439))

(declare-fun m!309969 () Bool)

(assert (=> bs!27087 m!309969))

(assert (=> bs!27087 m!306399))

(assert (=> bs!27087 m!306439))

(declare-fun m!309971 () Bool)

(assert (=> bs!27087 m!309971))

(assert (=> bs!27087 m!306399))

(declare-fun m!309973 () Bool)

(assert (=> bs!27087 m!309973))

(assert (=> d!70193 d!71103))

(assert (=> d!70193 d!70329))

(assert (=> d!70193 d!70595))

(declare-fun d!71105 () Bool)

(assert (=> d!71105 (= (dropList!145 lt!101844 0) (drop!198 (list!1465 (c!47454 lt!101844)) 0))))

(declare-fun bs!27088 () Bool)

(assert (= bs!27088 d!71105))

(assert (=> bs!27088 m!307979))

(assert (=> bs!27088 m!307979))

(declare-fun m!309975 () Bool)

(assert (=> bs!27088 m!309975))

(assert (=> d!70193 d!71105))

(declare-fun d!71107 () Bool)

(assert (=> d!71107 (= (list!1461 lt!101955) (list!1463 (c!47452 lt!101955)))))

(declare-fun bs!27089 () Bool)

(assert (= bs!27089 d!71107))

(declare-fun m!309977 () Bool)

(assert (=> bs!27089 m!309977))

(assert (=> d!70193 d!71107))

(declare-fun d!71109 () Bool)

(assert (=> d!71109 (= (list!1461 call!13241) (list!1463 (c!47452 call!13241)))))

(declare-fun bs!27090 () Bool)

(assert (= bs!27090 d!71109))

(declare-fun m!309979 () Bool)

(assert (=> bs!27090 m!309979))

(assert (=> b!250278 d!71109))

(declare-fun d!71111 () Bool)

(declare-fun lt!103056 () Int)

(assert (=> d!71111 (>= lt!103056 0)))

(declare-fun e!156465 () Int)

(assert (=> d!71111 (= lt!103056 e!156465)))

(declare-fun c!47928 () Bool)

(assert (=> d!71111 (= c!47928 ((_ is Nil!3678) (originalCharacters!742 (h!9077 tokens!465))))))

(assert (=> d!71111 (= (size!2913 (originalCharacters!742 (h!9077 tokens!465))) lt!103056)))

(declare-fun b!251883 () Bool)

(assert (=> b!251883 (= e!156465 0)))

(declare-fun b!251884 () Bool)

(assert (=> b!251884 (= e!156465 (+ 1 (size!2913 (t!35392 (originalCharacters!742 (h!9077 tokens!465))))))))

(assert (= (and d!71111 c!47928) b!251883))

(assert (= (and d!71111 (not c!47928)) b!251884))

(declare-fun m!309981 () Bool)

(assert (=> b!251884 m!309981))

(assert (=> b!249942 d!71111))

(declare-fun b!251886 () Bool)

(declare-fun e!156466 () List!3688)

(declare-fun e!156467 () List!3688)

(assert (=> b!251886 (= e!156466 e!156467)))

(declare-fun c!47930 () Bool)

(assert (=> b!251886 (= c!47930 ((_ is Leaf!1909) (c!47452 lt!101841)))))

(declare-fun b!251888 () Bool)

(assert (=> b!251888 (= e!156467 (++!942 (list!1463 (left!3024 (c!47452 lt!101841))) (list!1463 (right!3354 (c!47452 lt!101841)))))))

(declare-fun b!251887 () Bool)

(assert (=> b!251887 (= e!156467 (list!1466 (xs!3815 (c!47452 lt!101841))))))

(declare-fun d!71113 () Bool)

(declare-fun c!47929 () Bool)

(assert (=> d!71113 (= c!47929 ((_ is Empty!1220) (c!47452 lt!101841)))))

(assert (=> d!71113 (= (list!1463 (c!47452 lt!101841)) e!156466)))

(declare-fun b!251885 () Bool)

(assert (=> b!251885 (= e!156466 Nil!3678)))

(assert (= (and d!71113 c!47929) b!251885))

(assert (= (and d!71113 (not c!47929)) b!251886))

(assert (= (and b!251886 c!47930) b!251887))

(assert (= (and b!251886 (not c!47930)) b!251888))

(declare-fun m!309983 () Bool)

(assert (=> b!251888 m!309983))

(declare-fun m!309985 () Bool)

(assert (=> b!251888 m!309985))

(assert (=> b!251888 m!309983))

(assert (=> b!251888 m!309985))

(declare-fun m!309987 () Bool)

(assert (=> b!251888 m!309987))

(declare-fun m!309989 () Bool)

(assert (=> b!251887 m!309989))

(assert (=> d!70275 d!71113))

(declare-fun d!71115 () Bool)

(declare-fun charsToInt!0 (List!3687) (_ BitVec 32))

(assert (=> d!71115 (= (inv!16 (value!24237 separatorToken!170)) (= (charsToInt!0 (text!5494 (value!24237 separatorToken!170))) (value!24228 (value!24237 separatorToken!170))))))

(declare-fun bs!27091 () Bool)

(assert (= bs!27091 d!71115))

(declare-fun m!309991 () Bool)

(assert (=> bs!27091 m!309991))

(assert (=> b!250266 d!71115))

(declare-fun b!251889 () Bool)

(declare-fun res!116755 () Bool)

(declare-fun e!156468 () Bool)

(assert (=> b!251889 (=> (not res!116755) (not e!156468))))

(declare-fun lt!103059 () Option!760)

(assert (=> b!251889 (= res!116755 (= (value!24237 (_1!2273 (get!1209 lt!103059))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!103059)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!103059)))))))))

(declare-fun b!251890 () Bool)

(assert (=> b!251890 (= e!156468 (contains!678 (t!35393 rules!1920) (rule!1276 (_1!2273 (get!1209 lt!103059)))))))

(declare-fun b!251891 () Bool)

(declare-fun e!156470 () Option!760)

(declare-fun lt!103057 () Option!760)

(declare-fun lt!103058 () Option!760)

(assert (=> b!251891 (= e!156470 (ite (and ((_ is None!759) lt!103057) ((_ is None!759) lt!103058)) None!759 (ite ((_ is None!759) lt!103058) lt!103057 (ite ((_ is None!759) lt!103057) lt!103058 (ite (>= (size!2910 (_1!2273 (v!14538 lt!103057))) (size!2910 (_1!2273 (v!14538 lt!103058)))) lt!103057 lt!103058)))))))

(declare-fun call!13353 () Option!760)

(assert (=> b!251891 (= lt!103057 call!13353)))

(assert (=> b!251891 (= lt!103058 (maxPrefix!315 thiss!17480 (t!35393 (t!35393 rules!1920)) lt!101834))))

(declare-fun b!251892 () Bool)

(declare-fun res!116753 () Bool)

(assert (=> b!251892 (=> (not res!116753) (not e!156468))))

(assert (=> b!251892 (= res!116753 (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!103059)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103059))))))))

(declare-fun b!251893 () Bool)

(declare-fun e!156469 () Bool)

(assert (=> b!251893 (= e!156469 e!156468)))

(declare-fun res!116752 () Bool)

(assert (=> b!251893 (=> (not res!116752) (not e!156468))))

(assert (=> b!251893 (= res!116752 (isDefined!611 lt!103059))))

(declare-fun b!251894 () Bool)

(declare-fun res!116750 () Bool)

(assert (=> b!251894 (=> (not res!116750) (not e!156468))))

(assert (=> b!251894 (= res!116750 (< (size!2913 (_2!2273 (get!1209 lt!103059))) (size!2913 lt!101834)))))

(declare-fun b!251895 () Bool)

(assert (=> b!251895 (= e!156470 call!13353)))

(declare-fun bm!13348 () Bool)

(assert (=> bm!13348 (= call!13353 (maxPrefixOneRule!129 thiss!17480 (h!9076 (t!35393 rules!1920)) lt!101834))))

(declare-fun d!71117 () Bool)

(assert (=> d!71117 e!156469))

(declare-fun res!116751 () Bool)

(assert (=> d!71117 (=> res!116751 e!156469)))

(assert (=> d!71117 (= res!116751 (isEmpty!2282 lt!103059))))

(assert (=> d!71117 (= lt!103059 e!156470)))

(declare-fun c!47931 () Bool)

(assert (=> d!71117 (= c!47931 (and ((_ is Cons!3679) (t!35393 rules!1920)) ((_ is Nil!3679) (t!35393 (t!35393 rules!1920)))))))

(declare-fun lt!103061 () Unit!4472)

(declare-fun lt!103060 () Unit!4472)

(assert (=> d!71117 (= lt!103061 lt!103060)))

(assert (=> d!71117 (isPrefix!383 lt!101834 lt!101834)))

(assert (=> d!71117 (= lt!103060 (lemmaIsPrefixRefl!195 lt!101834 lt!101834))))

(assert (=> d!71117 (rulesValidInductive!186 thiss!17480 (t!35393 rules!1920))))

(assert (=> d!71117 (= (maxPrefix!315 thiss!17480 (t!35393 rules!1920) lt!101834) lt!103059)))

(declare-fun b!251896 () Bool)

(declare-fun res!116749 () Bool)

(assert (=> b!251896 (=> (not res!116749) (not e!156468))))

(assert (=> b!251896 (= res!116749 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103059)))) (_2!2273 (get!1209 lt!103059))) lt!101834))))

(declare-fun b!251897 () Bool)

(declare-fun res!116754 () Bool)

(assert (=> b!251897 (=> (not res!116754) (not e!156468))))

(assert (=> b!251897 (= res!116754 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103059)))) (originalCharacters!742 (_1!2273 (get!1209 lt!103059)))))))

(assert (= (and d!71117 c!47931) b!251895))

(assert (= (and d!71117 (not c!47931)) b!251891))

(assert (= (or b!251895 b!251891) bm!13348))

(assert (= (and d!71117 (not res!116751)) b!251893))

(assert (= (and b!251893 res!116752) b!251897))

(assert (= (and b!251897 res!116754) b!251894))

(assert (= (and b!251894 res!116750) b!251896))

(assert (= (and b!251896 res!116749) b!251889))

(assert (= (and b!251889 res!116755) b!251892))

(assert (= (and b!251892 res!116753) b!251890))

(declare-fun m!309993 () Bool)

(assert (=> b!251889 m!309993))

(declare-fun m!309995 () Bool)

(assert (=> b!251889 m!309995))

(assert (=> b!251889 m!309995))

(declare-fun m!309997 () Bool)

(assert (=> b!251889 m!309997))

(declare-fun m!309999 () Bool)

(assert (=> b!251893 m!309999))

(declare-fun m!310001 () Bool)

(assert (=> bm!13348 m!310001))

(assert (=> b!251892 m!309993))

(declare-fun m!310003 () Bool)

(assert (=> b!251892 m!310003))

(assert (=> b!251892 m!310003))

(declare-fun m!310005 () Bool)

(assert (=> b!251892 m!310005))

(assert (=> b!251892 m!310005))

(declare-fun m!310007 () Bool)

(assert (=> b!251892 m!310007))

(assert (=> b!251897 m!309993))

(assert (=> b!251897 m!310003))

(assert (=> b!251897 m!310003))

(assert (=> b!251897 m!310005))

(assert (=> b!251896 m!309993))

(assert (=> b!251896 m!310003))

(assert (=> b!251896 m!310003))

(assert (=> b!251896 m!310005))

(assert (=> b!251896 m!310005))

(declare-fun m!310009 () Bool)

(assert (=> b!251896 m!310009))

(assert (=> b!251894 m!309993))

(declare-fun m!310011 () Bool)

(assert (=> b!251894 m!310011))

(assert (=> b!251894 m!306183))

(declare-fun m!310013 () Bool)

(assert (=> d!71117 m!310013))

(assert (=> d!71117 m!306679))

(assert (=> d!71117 m!306681))

(assert (=> d!71117 m!307473))

(declare-fun m!310015 () Bool)

(assert (=> b!251891 m!310015))

(assert (=> b!251890 m!309993))

(declare-fun m!310017 () Bool)

(assert (=> b!251890 m!310017))

(assert (=> b!250238 d!71117))

(declare-fun d!71119 () Bool)

(assert (=> d!71119 (= (list!1461 lt!101878) (list!1463 (c!47452 lt!101878)))))

(declare-fun bs!27092 () Bool)

(assert (= bs!27092 d!71119))

(declare-fun m!310019 () Bool)

(assert (=> bs!27092 m!310019))

(assert (=> d!70157 d!71119))

(declare-fun d!71121 () Bool)

(declare-fun c!47932 () Bool)

(assert (=> d!71121 (= c!47932 ((_ is Cons!3680) (list!1460 lt!101830)))))

(declare-fun e!156471 () List!3688)

(assert (=> d!71121 (= (printList!269 thiss!17480 (list!1460 lt!101830)) e!156471)))

(declare-fun b!251898 () Bool)

(assert (=> b!251898 (= e!156471 (++!942 (list!1461 (charsOf!354 (h!9077 (list!1460 lt!101830)))) (printList!269 thiss!17480 (t!35394 (list!1460 lt!101830)))))))

(declare-fun b!251899 () Bool)

(assert (=> b!251899 (= e!156471 Nil!3678)))

(assert (= (and d!71121 c!47932) b!251898))

(assert (= (and d!71121 (not c!47932)) b!251899))

(declare-fun m!310021 () Bool)

(assert (=> b!251898 m!310021))

(assert (=> b!251898 m!310021))

(declare-fun m!310023 () Bool)

(assert (=> b!251898 m!310023))

(declare-fun m!310025 () Bool)

(assert (=> b!251898 m!310025))

(assert (=> b!251898 m!310023))

(assert (=> b!251898 m!310025))

(declare-fun m!310027 () Bool)

(assert (=> b!251898 m!310027))

(assert (=> d!70157 d!71121))

(assert (=> d!70157 d!71063))

(assert (=> d!70157 d!70181))

(declare-fun e!156472 () Bool)

(declare-fun lt!103062 () BalanceConc!2448)

(declare-fun b!251903 () Bool)

(assert (=> b!251903 (= e!156472 (= (list!1461 lt!103062) (++!942 (list!1461 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))) (list!1461 lt!102100))))))

(declare-fun d!71123 () Bool)

(assert (=> d!71123 e!156472))

(declare-fun res!116758 () Bool)

(assert (=> d!71123 (=> (not res!116758) (not e!156472))))

(assert (=> d!71123 (= res!116758 (appendAssocInst!50 (c!47452 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))) (c!47452 lt!102100)))))

(assert (=> d!71123 (= lt!103062 (BalanceConc!2449 (++!945 (c!47452 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))) (c!47452 lt!102100))))))

(assert (=> d!71123 (= (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100) lt!103062)))

(declare-fun b!251901 () Bool)

(declare-fun res!116756 () Bool)

(assert (=> b!251901 (=> (not res!116756) (not e!156472))))

(assert (=> b!251901 (= res!116756 (<= (height!134 (++!945 (c!47452 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))) (c!47452 lt!102100))) (+ (max!0 (height!134 (c!47452 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))) (height!134 (c!47452 lt!102100))) 1)))))

(declare-fun b!251900 () Bool)

(declare-fun res!116757 () Bool)

(assert (=> b!251900 (=> (not res!116757) (not e!156472))))

(assert (=> b!251900 (= res!116757 (isBalanced!317 (++!945 (c!47452 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))) (c!47452 lt!102100))))))

(declare-fun b!251902 () Bool)

(declare-fun res!116759 () Bool)

(assert (=> b!251902 (=> (not res!116759) (not e!156472))))

(assert (=> b!251902 (= res!116759 (>= (height!134 (++!945 (c!47452 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))) (c!47452 lt!102100))) (max!0 (height!134 (c!47452 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))) (height!134 (c!47452 lt!102100)))))))

(assert (= (and d!71123 res!116758) b!251900))

(assert (= (and b!251900 res!116757) b!251901))

(assert (= (and b!251901 res!116756) b!251902))

(assert (= (and b!251902 res!116759) b!251903))

(declare-fun m!310029 () Bool)

(assert (=> b!251901 m!310029))

(declare-fun m!310031 () Bool)

(assert (=> b!251901 m!310031))

(declare-fun m!310033 () Bool)

(assert (=> b!251901 m!310033))

(declare-fun m!310035 () Bool)

(assert (=> b!251901 m!310035))

(assert (=> b!251901 m!310029))

(assert (=> b!251901 m!310031))

(declare-fun m!310037 () Bool)

(assert (=> b!251901 m!310037))

(assert (=> b!251901 m!310033))

(declare-fun m!310039 () Bool)

(assert (=> b!251903 m!310039))

(assert (=> b!251903 m!306757))

(declare-fun m!310041 () Bool)

(assert (=> b!251903 m!310041))

(assert (=> b!251903 m!306791))

(assert (=> b!251903 m!310041))

(assert (=> b!251903 m!306791))

(declare-fun m!310043 () Bool)

(assert (=> b!251903 m!310043))

(declare-fun m!310045 () Bool)

(assert (=> d!71123 m!310045))

(assert (=> d!71123 m!310033))

(assert (=> b!251900 m!310033))

(assert (=> b!251900 m!310033))

(declare-fun m!310047 () Bool)

(assert (=> b!251900 m!310047))

(assert (=> b!251902 m!310029))

(assert (=> b!251902 m!310031))

(assert (=> b!251902 m!310033))

(assert (=> b!251902 m!310035))

(assert (=> b!251902 m!310029))

(assert (=> b!251902 m!310031))

(assert (=> b!251902 m!310037))

(assert (=> b!251902 m!310033))

(assert (=> b!250290 d!71123))

(declare-fun d!71125 () Bool)

(assert (=> d!71125 (= (head!864 (drop!198 lt!102098 0)) (apply!695 lt!102098 0))))

(declare-fun lt!103063 () Unit!4472)

(assert (=> d!71125 (= lt!103063 (choose!2367 lt!102098 0))))

(declare-fun e!156473 () Bool)

(assert (=> d!71125 e!156473))

(declare-fun res!116760 () Bool)

(assert (=> d!71125 (=> (not res!116760) (not e!156473))))

(assert (=> d!71125 (= res!116760 (>= 0 0))))

(assert (=> d!71125 (= (lemmaDropApply!185 lt!102098 0) lt!103063)))

(declare-fun b!251904 () Bool)

(assert (=> b!251904 (= e!156473 (< 0 (size!2918 lt!102098)))))

(assert (= (and d!71125 res!116760) b!251904))

(assert (=> d!71125 m!306761))

(assert (=> d!71125 m!306761))

(assert (=> d!71125 m!306783))

(assert (=> d!71125 m!306777))

(declare-fun m!310049 () Bool)

(assert (=> d!71125 m!310049))

(declare-fun m!310051 () Bool)

(assert (=> b!251904 m!310051))

(assert (=> b!250290 d!71125))

(declare-fun d!71127 () Bool)

(assert (=> d!71127 (= (tail!455 (drop!198 lt!102102 0)) (drop!198 lt!102102 (+ 0 1)))))

(declare-fun lt!103064 () Unit!4472)

(assert (=> d!71127 (= lt!103064 (choose!2365 lt!102102 0))))

(declare-fun e!156474 () Bool)

(assert (=> d!71127 e!156474))

(declare-fun res!116761 () Bool)

(assert (=> d!71127 (=> (not res!116761) (not e!156474))))

(assert (=> d!71127 (= res!116761 (>= 0 0))))

(assert (=> d!71127 (= (lemmaDropTail!177 lt!102102 0) lt!103064)))

(declare-fun b!251905 () Bool)

(assert (=> b!251905 (= e!156474 (< 0 (size!2918 lt!102102)))))

(assert (= (and d!71127 res!116761) b!251905))

(assert (=> d!71127 m!306779))

(assert (=> d!71127 m!306779))

(assert (=> d!71127 m!306781))

(assert (=> d!71127 m!306767))

(declare-fun m!310053 () Bool)

(assert (=> d!71127 m!310053))

(declare-fun m!310055 () Bool)

(assert (=> b!251905 m!310055))

(assert (=> b!250290 d!71127))

(declare-fun bs!27093 () Bool)

(declare-fun d!71129 () Bool)

(assert (= bs!27093 (and d!71129 d!70749)))

(declare-fun lambda!8364 () Int)

(assert (=> bs!27093 (= lambda!8364 lambda!8341)))

(declare-fun bs!27094 () Bool)

(assert (= bs!27094 (and d!71129 b!250061)))

(assert (=> bs!27094 (not (= lambda!8364 lambda!8295))))

(declare-fun bs!27095 () Bool)

(assert (= bs!27095 (and d!71129 d!70263)))

(assert (=> bs!27095 (= lambda!8364 lambda!8316)))

(declare-fun bs!27096 () Bool)

(assert (= bs!27096 (and d!71129 b!250282)))

(assert (=> bs!27096 (not (= lambda!8364 lambda!8315))))

(declare-fun bs!27097 () Bool)

(assert (= bs!27097 (and d!71129 b!251878)))

(assert (=> bs!27097 (not (= lambda!8364 lambda!8363))))

(declare-fun bs!27098 () Bool)

(assert (= bs!27098 (and d!71129 b!250290)))

(assert (=> bs!27098 (not (= lambda!8364 lambda!8317))))

(declare-fun bs!27099 () Bool)

(assert (= bs!27099 (and d!71129 d!70223)))

(assert (=> bs!27099 (not (= lambda!8364 lambda!8309))))

(declare-fun bs!27100 () Bool)

(assert (= bs!27100 (and d!71129 b!250190)))

(assert (=> bs!27100 (not (= lambda!8364 lambda!8304))))

(declare-fun bs!27101 () Bool)

(assert (= bs!27101 (and d!71129 b!251723)))

(assert (=> bs!27101 (not (= lambda!8364 lambda!8359))))

(declare-fun bs!27102 () Bool)

(assert (= bs!27102 (and d!71129 b!249873)))

(assert (=> bs!27102 (= lambda!8364 lambda!8285)))

(declare-fun bs!27103 () Bool)

(assert (= bs!27103 (and d!71129 d!70365)))

(assert (=> bs!27103 (= lambda!8364 lambda!8323)))

(declare-fun bs!27104 () Bool)

(assert (= bs!27104 (and d!71129 b!249874)))

(assert (=> bs!27104 (not (= lambda!8364 lambda!8286))))

(declare-fun bs!27105 () Bool)

(assert (= bs!27105 (and d!71129 d!70619)))

(assert (=> bs!27105 (not (= lambda!8364 lambda!8335))))

(declare-fun bs!27106 () Bool)

(assert (= bs!27106 (and d!71129 d!70193)))

(assert (=> bs!27106 (= lambda!8364 lambda!8294)))

(declare-fun bs!27107 () Bool)

(assert (= bs!27107 (and d!71129 d!71025)))

(assert (=> bs!27107 (= lambda!8364 lambda!8358)))

(declare-fun bs!27108 () Bool)

(declare-fun b!251909 () Bool)

(assert (= bs!27108 (and b!251909 d!70749)))

(declare-fun lambda!8365 () Int)

(assert (=> bs!27108 (not (= lambda!8365 lambda!8341))))

(declare-fun bs!27109 () Bool)

(assert (= bs!27109 (and b!251909 b!250061)))

(assert (=> bs!27109 (= lambda!8365 lambda!8295)))

(declare-fun bs!27110 () Bool)

(assert (= bs!27110 (and b!251909 d!70263)))

(assert (=> bs!27110 (not (= lambda!8365 lambda!8316))))

(declare-fun bs!27111 () Bool)

(assert (= bs!27111 (and b!251909 b!250282)))

(assert (=> bs!27111 (= lambda!8365 lambda!8315)))

(declare-fun bs!27112 () Bool)

(assert (= bs!27112 (and b!251909 b!251878)))

(assert (=> bs!27112 (= lambda!8365 lambda!8363)))

(declare-fun bs!27113 () Bool)

(assert (= bs!27113 (and b!251909 b!250290)))

(assert (=> bs!27113 (= lambda!8365 lambda!8317)))

(declare-fun bs!27114 () Bool)

(assert (= bs!27114 (and b!251909 d!70223)))

(assert (=> bs!27114 (= lambda!8365 lambda!8309)))

(declare-fun bs!27115 () Bool)

(assert (= bs!27115 (and b!251909 b!250190)))

(assert (=> bs!27115 (= lambda!8365 lambda!8304)))

(declare-fun bs!27116 () Bool)

(assert (= bs!27116 (and b!251909 d!71129)))

(assert (=> bs!27116 (not (= lambda!8365 lambda!8364))))

(declare-fun bs!27117 () Bool)

(assert (= bs!27117 (and b!251909 b!251723)))

(assert (=> bs!27117 (= lambda!8365 lambda!8359)))

(declare-fun bs!27118 () Bool)

(assert (= bs!27118 (and b!251909 b!249873)))

(assert (=> bs!27118 (not (= lambda!8365 lambda!8285))))

(declare-fun bs!27119 () Bool)

(assert (= bs!27119 (and b!251909 d!70365)))

(assert (=> bs!27119 (not (= lambda!8365 lambda!8323))))

(declare-fun bs!27120 () Bool)

(assert (= bs!27120 (and b!251909 b!249874)))

(assert (=> bs!27120 (= lambda!8365 lambda!8286)))

(declare-fun bs!27121 () Bool)

(assert (= bs!27121 (and b!251909 d!70619)))

(assert (=> bs!27121 (= lambda!8365 lambda!8335)))

(declare-fun bs!27122 () Bool)

(assert (= bs!27122 (and b!251909 d!70193)))

(assert (=> bs!27122 (not (= lambda!8365 lambda!8294))))

(declare-fun bs!27123 () Bool)

(assert (= bs!27123 (and b!251909 d!71025)))

(assert (=> bs!27123 (not (= lambda!8365 lambda!8358))))

(declare-fun b!251919 () Bool)

(declare-fun e!156484 () Bool)

(assert (=> b!251919 (= e!156484 true)))

(declare-fun b!251918 () Bool)

(declare-fun e!156483 () Bool)

(assert (=> b!251918 (= e!156483 e!156484)))

(declare-fun b!251917 () Bool)

(declare-fun e!156482 () Bool)

(assert (=> b!251917 (= e!156482 e!156483)))

(assert (=> b!251909 e!156482))

(assert (= b!251918 b!251919))

(assert (= b!251917 b!251918))

(assert (= (and b!251909 ((_ is Cons!3679) rules!1920)) b!251917))

(assert (=> b!251919 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8365))))

(assert (=> b!251919 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8365))))

(assert (=> b!251909 true))

(declare-fun b!251906 () Bool)

(declare-fun e!156479 () Bool)

(declare-fun lt!103072 () Option!761)

(assert (=> b!251906 (= e!156479 (= (_1!2275 (v!14539 lt!103072)) (apply!694 (seqFromList!776 (t!35394 tokens!465)) (+ 0 1))))))

(declare-fun b!251907 () Bool)

(declare-fun e!156478 () BalanceConc!2448)

(assert (=> b!251907 (= e!156478 (BalanceConc!2449 Empty!1220))))

(declare-fun call!13355 () Token!1142)

(assert (=> b!251907 (= (print!316 thiss!17480 (singletonSeq!251 call!13355)) (printTailRec!279 thiss!17480 (singletonSeq!251 call!13355) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!103068 () Unit!4472)

(declare-fun Unit!4506 () Unit!4472)

(assert (=> b!251907 (= lt!103068 Unit!4506)))

(declare-fun lt!103067 () BalanceConc!2448)

(declare-fun lt!103076 () Unit!4472)

(declare-fun call!13358 () BalanceConc!2448)

(assert (=> b!251907 (= lt!103076 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 (list!1461 call!13358) (list!1461 lt!103067)))))

(assert (=> b!251907 false))

(declare-fun lt!103074 () Unit!4472)

(declare-fun Unit!4507 () Unit!4472)

(assert (=> b!251907 (= lt!103074 Unit!4507)))

(declare-fun bm!13349 () Bool)

(declare-fun call!13356 () Token!1142)

(assert (=> bm!13349 (= call!13356 (apply!694 (seqFromList!776 (t!35394 tokens!465)) (+ 0 1)))))

(declare-fun c!47935 () Bool)

(declare-fun c!47936 () Bool)

(declare-fun call!13357 () BalanceConc!2448)

(declare-fun bm!13350 () Bool)

(assert (=> bm!13350 (= call!13357 (charsOf!354 (ite c!47936 call!13356 (ite c!47935 separatorToken!170 call!13355))))))

(declare-fun b!251908 () Bool)

(declare-fun e!156476 () BalanceConc!2448)

(assert (=> b!251908 (= e!156476 (charsOf!354 call!13355))))

(declare-fun bm!13351 () Bool)

(assert (=> bm!13351 (= call!13358 call!13357)))

(declare-fun lt!103071 () BalanceConc!2448)

(assert (=> d!71129 (= (list!1461 lt!103071) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) (+ 0 1)) separatorToken!170))))

(declare-fun e!156481 () BalanceConc!2448)

(assert (=> d!71129 (= lt!103071 e!156481)))

(declare-fun c!47934 () Bool)

(assert (=> d!71129 (= c!47934 (>= (+ 0 1) (size!2911 (seqFromList!776 (t!35394 tokens!465)))))))

(declare-fun lt!103077 () Unit!4472)

(assert (=> d!71129 (= lt!103077 (lemmaContentSubsetPreservesForall!89 (list!1460 (seqFromList!776 (t!35394 tokens!465))) (dropList!145 (seqFromList!776 (t!35394 tokens!465)) (+ 0 1)) lambda!8364))))

(declare-fun e!156477 () Bool)

(assert (=> d!71129 e!156477))

(declare-fun res!116764 () Bool)

(assert (=> d!71129 (=> (not res!116764) (not e!156477))))

(assert (=> d!71129 (= res!116764 (>= (+ 0 1) 0))))

(assert (=> d!71129 (= (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 (+ 0 1)) lt!103071)))

(declare-fun e!156475 () BalanceConc!2448)

(assert (=> b!251909 (= e!156481 e!156475)))

(declare-fun lt!103065 () List!3690)

(assert (=> b!251909 (= lt!103065 (list!1460 (seqFromList!776 (t!35394 tokens!465))))))

(declare-fun lt!103066 () Unit!4472)

(assert (=> b!251909 (= lt!103066 (lemmaDropApply!185 lt!103065 (+ 0 1)))))

(assert (=> b!251909 (= (head!864 (drop!198 lt!103065 (+ 0 1))) (apply!695 lt!103065 (+ 0 1)))))

(declare-fun lt!103078 () Unit!4472)

(assert (=> b!251909 (= lt!103078 lt!103066)))

(declare-fun lt!103069 () List!3690)

(assert (=> b!251909 (= lt!103069 (list!1460 (seqFromList!776 (t!35394 tokens!465))))))

(declare-fun lt!103070 () Unit!4472)

(assert (=> b!251909 (= lt!103070 (lemmaDropTail!177 lt!103069 (+ 0 1)))))

(assert (=> b!251909 (= (tail!455 (drop!198 lt!103069 (+ 0 1))) (drop!198 lt!103069 (+ 0 1 1)))))

(declare-fun lt!103075 () Unit!4472)

(assert (=> b!251909 (= lt!103075 lt!103070)))

(declare-fun lt!103073 () Unit!4472)

(assert (=> b!251909 (= lt!103073 (forallContained!266 (list!1460 (seqFromList!776 (t!35394 tokens!465))) lambda!8365 (apply!694 (seqFromList!776 (t!35394 tokens!465)) (+ 0 1))))))

(assert (=> b!251909 (= lt!103067 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!251909 (= lt!103072 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) (+ 0 1))) lt!103067)))))

(declare-fun res!116763 () Bool)

(assert (=> b!251909 (= res!116763 ((_ is Some!760) lt!103072))))

(assert (=> b!251909 (=> (not res!116763) (not e!156479))))

(assert (=> b!251909 (= c!47936 e!156479)))

(declare-fun b!251910 () Bool)

(declare-fun e!156480 () Bool)

(assert (=> b!251910 (= e!156480 (not (= (_1!2275 (v!14539 lt!103072)) call!13356)))))

(declare-fun b!251911 () Bool)

(assert (=> b!251911 (= e!156476 call!13357)))

(declare-fun b!251912 () Bool)

(assert (=> b!251912 (= c!47935 e!156480)))

(declare-fun res!116762 () Bool)

(assert (=> b!251912 (=> (not res!116762) (not e!156480))))

(assert (=> b!251912 (= res!116762 ((_ is Some!760) lt!103072))))

(assert (=> b!251912 (= e!156475 e!156478)))

(declare-fun bm!13352 () Bool)

(assert (=> bm!13352 (= call!13355 call!13356)))

(declare-fun b!251913 () Bool)

(assert (=> b!251913 (= e!156477 (<= (+ 0 1) (size!2911 (seqFromList!776 (t!35394 tokens!465)))))))

(declare-fun b!251914 () Bool)

(declare-fun call!13354 () BalanceConc!2448)

(assert (=> b!251914 (= e!156478 (++!943 call!13354 lt!103067))))

(declare-fun bm!13353 () Bool)

(declare-fun c!47933 () Bool)

(assert (=> bm!13353 (= c!47933 c!47936)))

(assert (=> bm!13353 (= call!13354 (++!943 e!156476 (ite c!47936 lt!103067 call!13358)))))

(declare-fun b!251915 () Bool)

(assert (=> b!251915 (= e!156475 call!13354)))

(declare-fun b!251916 () Bool)

(assert (=> b!251916 (= e!156481 (BalanceConc!2449 Empty!1220))))

(assert (= (and d!71129 res!116764) b!251913))

(assert (= (and d!71129 c!47934) b!251916))

(assert (= (and d!71129 (not c!47934)) b!251909))

(assert (= (and b!251909 res!116763) b!251906))

(assert (= (and b!251909 c!47936) b!251915))

(assert (= (and b!251909 (not c!47936)) b!251912))

(assert (= (and b!251912 res!116762) b!251910))

(assert (= (and b!251912 c!47935) b!251914))

(assert (= (and b!251912 (not c!47935)) b!251907))

(assert (= (or b!251914 b!251907) bm!13352))

(assert (= (or b!251914 b!251907) bm!13351))

(assert (= (or b!251915 b!251910 bm!13352) bm!13349))

(assert (= (or b!251915 bm!13351) bm!13350))

(assert (= (or b!251915 b!251914) bm!13353))

(assert (= (and bm!13353 c!47933) b!251911))

(assert (= (and bm!13353 (not c!47933)) b!251908))

(declare-fun m!310057 () Bool)

(assert (=> b!251908 m!310057))

(declare-fun m!310059 () Bool)

(assert (=> b!251914 m!310059))

(declare-fun m!310061 () Bool)

(assert (=> b!251909 m!310061))

(declare-fun m!310063 () Bool)

(assert (=> b!251909 m!310063))

(declare-fun m!310065 () Bool)

(assert (=> b!251909 m!310065))

(assert (=> b!251909 m!306121))

(assert (=> b!251909 m!306763))

(declare-fun m!310067 () Bool)

(assert (=> b!251909 m!310067))

(declare-fun m!310069 () Bool)

(assert (=> b!251909 m!310069))

(assert (=> b!251909 m!306121))

(declare-fun m!310071 () Bool)

(assert (=> b!251909 m!310071))

(assert (=> b!251909 m!310063))

(declare-fun m!310073 () Bool)

(assert (=> b!251909 m!310073))

(assert (=> b!251909 m!306763))

(declare-fun m!310075 () Bool)

(assert (=> b!251909 m!310075))

(declare-fun m!310077 () Bool)

(assert (=> b!251909 m!310077))

(declare-fun m!310079 () Bool)

(assert (=> b!251909 m!310079))

(declare-fun m!310081 () Bool)

(assert (=> b!251909 m!310081))

(assert (=> b!251909 m!310075))

(assert (=> b!251909 m!310061))

(assert (=> b!251909 m!306121))

(assert (=> b!251909 m!310075))

(assert (=> b!251909 m!310081))

(declare-fun m!310083 () Bool)

(assert (=> b!251909 m!310083))

(assert (=> b!251909 m!310065))

(declare-fun m!310085 () Bool)

(assert (=> b!251909 m!310085))

(declare-fun m!310087 () Bool)

(assert (=> b!251909 m!310087))

(declare-fun m!310089 () Bool)

(assert (=> bm!13350 m!310089))

(declare-fun m!310091 () Bool)

(assert (=> b!251907 m!310091))

(declare-fun m!310093 () Bool)

(assert (=> b!251907 m!310093))

(declare-fun m!310095 () Bool)

(assert (=> b!251907 m!310095))

(assert (=> b!251907 m!310093))

(declare-fun m!310097 () Bool)

(assert (=> b!251907 m!310097))

(assert (=> b!251907 m!310091))

(assert (=> b!251907 m!310097))

(declare-fun m!310099 () Bool)

(assert (=> b!251907 m!310099))

(assert (=> b!251907 m!310097))

(declare-fun m!310101 () Bool)

(assert (=> b!251907 m!310101))

(declare-fun m!310103 () Bool)

(assert (=> bm!13353 m!310103))

(assert (=> d!71129 m!306121))

(assert (=> d!71129 m!306763))

(assert (=> d!71129 m!306121))

(declare-fun m!310105 () Bool)

(assert (=> d!71129 m!310105))

(assert (=> d!71129 m!306763))

(assert (=> d!71129 m!310105))

(declare-fun m!310107 () Bool)

(assert (=> d!71129 m!310107))

(assert (=> d!71129 m!310105))

(declare-fun m!310109 () Bool)

(assert (=> d!71129 m!310109))

(declare-fun m!310111 () Bool)

(assert (=> d!71129 m!310111))

(assert (=> d!71129 m!306121))

(assert (=> d!71129 m!306811))

(assert (=> bm!13349 m!306121))

(assert (=> bm!13349 m!310075))

(assert (=> b!251906 m!306121))

(assert (=> b!251906 m!310075))

(assert (=> b!251913 m!306121))

(assert (=> b!251913 m!306811))

(assert (=> b!250290 d!71129))

(declare-fun d!71131 () Bool)

(assert (=> d!71131 (= (tail!455 (drop!198 lt!102102 0)) (t!35394 (drop!198 lt!102102 0)))))

(assert (=> b!250290 d!71131))

(declare-fun d!71133 () Bool)

(assert (=> d!71133 (dynLambda!1813 lambda!8317 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))

(declare-fun lt!103079 () Unit!4472)

(assert (=> d!71133 (= lt!103079 (choose!2355 (list!1460 (seqFromList!776 (t!35394 tokens!465))) lambda!8317 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))))

(declare-fun e!156485 () Bool)

(assert (=> d!71133 e!156485))

(declare-fun res!116765 () Bool)

(assert (=> d!71133 (=> (not res!116765) (not e!156485))))

(assert (=> d!71133 (= res!116765 (forall!865 (list!1460 (seqFromList!776 (t!35394 tokens!465))) lambda!8317))))

(assert (=> d!71133 (= (forallContained!266 (list!1460 (seqFromList!776 (t!35394 tokens!465))) lambda!8317 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!103079)))

(declare-fun b!251920 () Bool)

(assert (=> b!251920 (= e!156485 (contains!680 (list!1460 (seqFromList!776 (t!35394 tokens!465))) (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))))

(assert (= (and d!71133 res!116765) b!251920))

(declare-fun b_lambda!7433 () Bool)

(assert (=> (not b_lambda!7433) (not d!71133)))

(assert (=> d!71133 m!306773))

(declare-fun m!310113 () Bool)

(assert (=> d!71133 m!310113))

(assert (=> d!71133 m!306763))

(assert (=> d!71133 m!306773))

(declare-fun m!310115 () Bool)

(assert (=> d!71133 m!310115))

(assert (=> d!71133 m!306763))

(declare-fun m!310117 () Bool)

(assert (=> d!71133 m!310117))

(assert (=> b!251920 m!306763))

(assert (=> b!251920 m!306773))

(declare-fun m!310119 () Bool)

(assert (=> b!251920 m!310119))

(assert (=> b!250290 d!71133))

(declare-fun d!71135 () Bool)

(assert (=> d!71135 (= (head!864 (drop!198 lt!102098 0)) (h!9077 (drop!198 lt!102098 0)))))

(assert (=> b!250290 d!71135))

(declare-fun d!71137 () Bool)

(assert (=> d!71137 (= (list!1460 (seqFromList!776 (t!35394 tokens!465))) (list!1465 (c!47454 (seqFromList!776 (t!35394 tokens!465)))))))

(declare-fun bs!27124 () Bool)

(assert (= bs!27124 d!71137))

(declare-fun m!310121 () Bool)

(assert (=> bs!27124 m!310121))

(assert (=> b!250290 d!71137))

(declare-fun d!71139 () Bool)

(declare-fun lt!103080 () Token!1142)

(assert (=> d!71139 (contains!680 lt!102098 lt!103080)))

(declare-fun e!156486 () Token!1142)

(assert (=> d!71139 (= lt!103080 e!156486)))

(declare-fun c!47937 () Bool)

(assert (=> d!71139 (= c!47937 (= 0 0))))

(declare-fun e!156487 () Bool)

(assert (=> d!71139 e!156487))

(declare-fun res!116766 () Bool)

(assert (=> d!71139 (=> (not res!116766) (not e!156487))))

(assert (=> d!71139 (= res!116766 (<= 0 0))))

(assert (=> d!71139 (= (apply!695 lt!102098 0) lt!103080)))

(declare-fun b!251921 () Bool)

(assert (=> b!251921 (= e!156487 (< 0 (size!2918 lt!102098)))))

(declare-fun b!251922 () Bool)

(assert (=> b!251922 (= e!156486 (head!864 lt!102098))))

(declare-fun b!251923 () Bool)

(assert (=> b!251923 (= e!156486 (apply!695 (tail!455 lt!102098) (- 0 1)))))

(assert (= (and d!71139 res!116766) b!251921))

(assert (= (and d!71139 c!47937) b!251922))

(assert (= (and d!71139 (not c!47937)) b!251923))

(declare-fun m!310123 () Bool)

(assert (=> d!71139 m!310123))

(assert (=> b!251921 m!310051))

(declare-fun m!310125 () Bool)

(assert (=> b!251922 m!310125))

(declare-fun m!310127 () Bool)

(assert (=> b!251923 m!310127))

(assert (=> b!251923 m!310127))

(declare-fun m!310129 () Bool)

(assert (=> b!251923 m!310129))

(assert (=> b!250290 d!71139))

(assert (=> b!250290 d!71095))

(declare-fun d!71141 () Bool)

(declare-fun lt!103081 () BalanceConc!2448)

(assert (=> d!71141 (= (list!1461 lt!103081) (originalCharacters!742 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))))

(assert (=> d!71141 (= lt!103081 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))) (value!24237 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))))

(assert (=> d!71141 (= (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!103081)))

(declare-fun b_lambda!7435 () Bool)

(assert (=> (not b_lambda!7435) (not d!71141)))

(declare-fun tb!12929 () Bool)

(declare-fun t!35594 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))) t!35594) tb!12929))

(declare-fun b!251924 () Bool)

(declare-fun e!156488 () Bool)

(declare-fun tp!97244 () Bool)

(assert (=> b!251924 (= e!156488 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))) (value!24237 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))) tp!97244))))

(declare-fun result!16294 () Bool)

(assert (=> tb!12929 (= result!16294 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))) (value!24237 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))) e!156488))))

(assert (= tb!12929 b!251924))

(declare-fun m!310131 () Bool)

(assert (=> b!251924 m!310131))

(declare-fun m!310133 () Bool)

(assert (=> tb!12929 m!310133))

(assert (=> d!71141 t!35594))

(declare-fun b_and!19041 () Bool)

(assert (= b_and!19035 (and (=> t!35594 result!16294) b_and!19041)))

(declare-fun t!35596 () Bool)

(declare-fun tb!12931 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))) t!35596) tb!12931))

(declare-fun result!16296 () Bool)

(assert (= result!16296 result!16294))

(assert (=> d!71141 t!35596))

(declare-fun b_and!19043 () Bool)

(assert (= b_and!19031 (and (=> t!35596 result!16296) b_and!19043)))

(declare-fun tb!12933 () Bool)

(declare-fun t!35598 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))) t!35598) tb!12933))

(declare-fun result!16298 () Bool)

(assert (= result!16298 result!16294))

(assert (=> d!71141 t!35598))

(declare-fun b_and!19045 () Bool)

(assert (= b_and!19033 (and (=> t!35598 result!16298) b_and!19045)))

(declare-fun t!35600 () Bool)

(declare-fun tb!12935 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))) t!35600) tb!12935))

(declare-fun result!16300 () Bool)

(assert (= result!16300 result!16294))

(assert (=> d!71141 t!35600))

(declare-fun b_and!19047 () Bool)

(assert (= b_and!19039 (and (=> t!35600 result!16300) b_and!19047)))

(declare-fun t!35602 () Bool)

(declare-fun tb!12937 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))) t!35602) tb!12937))

(declare-fun result!16302 () Bool)

(assert (= result!16302 result!16294))

(assert (=> d!71141 t!35602))

(declare-fun b_and!19049 () Bool)

(assert (= b_and!19037 (and (=> t!35602 result!16302) b_and!19049)))

(declare-fun m!310135 () Bool)

(assert (=> d!71141 m!310135))

(declare-fun m!310137 () Bool)

(assert (=> d!71141 m!310137))

(assert (=> b!250290 d!71141))

(declare-fun b!251925 () Bool)

(declare-fun e!156492 () Bool)

(declare-fun lt!103082 () List!3690)

(declare-fun e!156493 () Int)

(assert (=> b!251925 (= e!156492 (= (size!2918 lt!103082) e!156493))))

(declare-fun c!47940 () Bool)

(assert (=> b!251925 (= c!47940 (<= 0 0))))

(declare-fun b!251926 () Bool)

(declare-fun e!156489 () List!3690)

(assert (=> b!251926 (= e!156489 (drop!198 (t!35394 lt!102102) (- 0 1)))))

(declare-fun d!71143 () Bool)

(assert (=> d!71143 e!156492))

(declare-fun res!116767 () Bool)

(assert (=> d!71143 (=> (not res!116767) (not e!156492))))

(assert (=> d!71143 (= res!116767 (= ((_ map implies) (content!515 lt!103082) (content!515 lt!102102)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156490 () List!3690)

(assert (=> d!71143 (= lt!103082 e!156490)))

(declare-fun c!47939 () Bool)

(assert (=> d!71143 (= c!47939 ((_ is Nil!3680) lt!102102))))

(assert (=> d!71143 (= (drop!198 lt!102102 0) lt!103082)))

(declare-fun b!251927 () Bool)

(assert (=> b!251927 (= e!156490 Nil!3680)))

(declare-fun b!251928 () Bool)

(declare-fun call!13359 () Int)

(assert (=> b!251928 (= e!156493 call!13359)))

(declare-fun b!251929 () Bool)

(declare-fun e!156491 () Int)

(assert (=> b!251929 (= e!156491 (- call!13359 0))))

(declare-fun b!251930 () Bool)

(assert (=> b!251930 (= e!156490 e!156489)))

(declare-fun c!47938 () Bool)

(assert (=> b!251930 (= c!47938 (<= 0 0))))

(declare-fun b!251931 () Bool)

(assert (=> b!251931 (= e!156491 0)))

(declare-fun b!251932 () Bool)

(assert (=> b!251932 (= e!156493 e!156491)))

(declare-fun c!47941 () Bool)

(assert (=> b!251932 (= c!47941 (>= 0 call!13359))))

(declare-fun b!251933 () Bool)

(assert (=> b!251933 (= e!156489 lt!102102)))

(declare-fun bm!13354 () Bool)

(assert (=> bm!13354 (= call!13359 (size!2918 lt!102102))))

(assert (= (and d!71143 c!47939) b!251927))

(assert (= (and d!71143 (not c!47939)) b!251930))

(assert (= (and b!251930 c!47938) b!251933))

(assert (= (and b!251930 (not c!47938)) b!251926))

(assert (= (and d!71143 res!116767) b!251925))

(assert (= (and b!251925 c!47940) b!251928))

(assert (= (and b!251925 (not c!47940)) b!251932))

(assert (= (and b!251932 c!47941) b!251931))

(assert (= (and b!251932 (not c!47941)) b!251929))

(assert (= (or b!251928 b!251932 b!251929) bm!13354))

(declare-fun m!310139 () Bool)

(assert (=> b!251925 m!310139))

(declare-fun m!310141 () Bool)

(assert (=> b!251926 m!310141))

(declare-fun m!310143 () Bool)

(assert (=> d!71143 m!310143))

(declare-fun m!310145 () Bool)

(assert (=> d!71143 m!310145))

(assert (=> bm!13354 m!310055))

(assert (=> b!250290 d!71143))

(declare-fun b!251934 () Bool)

(declare-fun e!156497 () Bool)

(declare-fun lt!103083 () List!3690)

(declare-fun e!156498 () Int)

(assert (=> b!251934 (= e!156497 (= (size!2918 lt!103083) e!156498))))

(declare-fun c!47944 () Bool)

(assert (=> b!251934 (= c!47944 (<= (+ 0 1) 0))))

(declare-fun b!251935 () Bool)

(declare-fun e!156494 () List!3690)

(assert (=> b!251935 (= e!156494 (drop!198 (t!35394 lt!102102) (- (+ 0 1) 1)))))

(declare-fun d!71145 () Bool)

(assert (=> d!71145 e!156497))

(declare-fun res!116768 () Bool)

(assert (=> d!71145 (=> (not res!116768) (not e!156497))))

(assert (=> d!71145 (= res!116768 (= ((_ map implies) (content!515 lt!103083) (content!515 lt!102102)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156495 () List!3690)

(assert (=> d!71145 (= lt!103083 e!156495)))

(declare-fun c!47943 () Bool)

(assert (=> d!71145 (= c!47943 ((_ is Nil!3680) lt!102102))))

(assert (=> d!71145 (= (drop!198 lt!102102 (+ 0 1)) lt!103083)))

(declare-fun b!251936 () Bool)

(assert (=> b!251936 (= e!156495 Nil!3680)))

(declare-fun b!251937 () Bool)

(declare-fun call!13360 () Int)

(assert (=> b!251937 (= e!156498 call!13360)))

(declare-fun b!251938 () Bool)

(declare-fun e!156496 () Int)

(assert (=> b!251938 (= e!156496 (- call!13360 (+ 0 1)))))

(declare-fun b!251939 () Bool)

(assert (=> b!251939 (= e!156495 e!156494)))

(declare-fun c!47942 () Bool)

(assert (=> b!251939 (= c!47942 (<= (+ 0 1) 0))))

(declare-fun b!251940 () Bool)

(assert (=> b!251940 (= e!156496 0)))

(declare-fun b!251941 () Bool)

(assert (=> b!251941 (= e!156498 e!156496)))

(declare-fun c!47945 () Bool)

(assert (=> b!251941 (= c!47945 (>= (+ 0 1) call!13360))))

(declare-fun b!251942 () Bool)

(assert (=> b!251942 (= e!156494 lt!102102)))

(declare-fun bm!13355 () Bool)

(assert (=> bm!13355 (= call!13360 (size!2918 lt!102102))))

(assert (= (and d!71145 c!47943) b!251936))

(assert (= (and d!71145 (not c!47943)) b!251939))

(assert (= (and b!251939 c!47942) b!251942))

(assert (= (and b!251939 (not c!47942)) b!251935))

(assert (= (and d!71145 res!116768) b!251934))

(assert (= (and b!251934 c!47944) b!251937))

(assert (= (and b!251934 (not c!47944)) b!251941))

(assert (= (and b!251941 c!47945) b!251940))

(assert (= (and b!251941 (not c!47945)) b!251938))

(assert (= (or b!251937 b!251941 b!251938) bm!13355))

(declare-fun m!310147 () Bool)

(assert (=> b!251934 m!310147))

(declare-fun m!310149 () Bool)

(assert (=> b!251935 m!310149))

(declare-fun m!310151 () Bool)

(assert (=> d!71145 m!310151))

(assert (=> d!71145 m!310145))

(assert (=> bm!13355 m!310055))

(assert (=> b!250290 d!71145))

(declare-fun b!251944 () Bool)

(declare-fun e!156503 () Option!761)

(declare-fun call!13361 () Option!761)

(assert (=> b!251944 (= e!156503 call!13361)))

(declare-fun b!251945 () Bool)

(declare-fun lt!103088 () Option!761)

(declare-fun e!156501 () Bool)

(assert (=> b!251945 (= e!156501 (= (list!1461 (_2!2275 (get!1211 lt!103088))) (_2!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))))))

(declare-fun b!251946 () Bool)

(declare-fun lt!103086 () Option!761)

(declare-fun lt!103084 () Option!761)

(assert (=> b!251946 (= e!156503 (ite (and ((_ is None!760) lt!103086) ((_ is None!760) lt!103084)) None!760 (ite ((_ is None!760) lt!103084) lt!103086 (ite ((_ is None!760) lt!103086) lt!103084 (ite (>= (size!2910 (_1!2275 (v!14539 lt!103086))) (size!2910 (_1!2275 (v!14539 lt!103084)))) lt!103086 lt!103084)))))))

(assert (=> b!251946 (= lt!103086 call!13361)))

(assert (=> b!251946 (= lt!103084 (maxPrefixZipperSequence!278 thiss!17480 (t!35393 rules!1920) (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))

(declare-fun bm!13356 () Bool)

(assert (=> bm!13356 (= call!13361 (maxPrefixOneRuleZipperSequence!100 thiss!17480 (h!9076 rules!1920) (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))

(declare-fun b!251947 () Bool)

(declare-fun e!156499 () Bool)

(declare-fun e!156500 () Bool)

(assert (=> b!251947 (= e!156499 e!156500)))

(declare-fun res!116770 () Bool)

(assert (=> b!251947 (=> (not res!116770) (not e!156500))))

(assert (=> b!251947 (= res!116770 (= (_1!2275 (get!1211 lt!103088)) (_1!2273 (get!1209 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))))))

(declare-fun b!251948 () Bool)

(assert (=> b!251948 (= e!156500 (= (list!1461 (_2!2275 (get!1211 lt!103088))) (_2!2273 (get!1209 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))))))

(declare-fun d!71147 () Bool)

(declare-fun e!156504 () Bool)

(assert (=> d!71147 e!156504))

(declare-fun res!116772 () Bool)

(assert (=> d!71147 (=> (not res!116772) (not e!156504))))

(assert (=> d!71147 (= res!116772 (= (isDefined!612 lt!103088) (isDefined!611 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100))))))))

(assert (=> d!71147 (= lt!103088 e!156503)))

(declare-fun c!47946 () Bool)

(assert (=> d!71147 (= c!47946 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!103085 () Unit!4472)

(declare-fun lt!103087 () Unit!4472)

(assert (=> d!71147 (= lt!103085 lt!103087)))

(declare-fun lt!103090 () List!3688)

(declare-fun lt!103089 () List!3688)

(assert (=> d!71147 (isPrefix!383 lt!103090 lt!103089)))

(assert (=> d!71147 (= lt!103087 (lemmaIsPrefixRefl!195 lt!103090 lt!103089))))

(assert (=> d!71147 (= lt!103089 (list!1461 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))

(assert (=> d!71147 (= lt!103090 (list!1461 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))

(assert (=> d!71147 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!71147 (= (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)) lt!103088)))

(declare-fun b!251943 () Bool)

(declare-fun e!156502 () Bool)

(assert (=> b!251943 (= e!156504 e!156502)))

(declare-fun res!116774 () Bool)

(assert (=> b!251943 (=> res!116774 e!156502)))

(assert (=> b!251943 (= res!116774 (not (isDefined!612 lt!103088)))))

(declare-fun b!251949 () Bool)

(assert (=> b!251949 (= e!156502 e!156501)))

(declare-fun res!116773 () Bool)

(assert (=> b!251949 (=> (not res!116773) (not e!156501))))

(assert (=> b!251949 (= res!116773 (= (_1!2275 (get!1211 lt!103088)) (_1!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (++!943 (charsOf!354 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) lt!102100)))))))))

(declare-fun b!251950 () Bool)

(declare-fun res!116769 () Bool)

(assert (=> b!251950 (=> (not res!116769) (not e!156504))))

(assert (=> b!251950 (= res!116769 e!156499)))

(declare-fun res!116771 () Bool)

(assert (=> b!251950 (=> res!116771 e!156499)))

(assert (=> b!251950 (= res!116771 (not (isDefined!612 lt!103088)))))

(assert (= (and d!71147 c!47946) b!251944))

(assert (= (and d!71147 (not c!47946)) b!251946))

(assert (= (or b!251944 b!251946) bm!13356))

(assert (= (and d!71147 res!116772) b!251950))

(assert (= (and b!251950 (not res!116771)) b!251947))

(assert (= (and b!251947 res!116770) b!251948))

(assert (= (and b!251950 res!116769) b!251943))

(assert (= (and b!251943 (not res!116774)) b!251949))

(assert (= (and b!251949 res!116773) b!251945))

(declare-fun m!310153 () Bool)

(assert (=> b!251949 m!310153))

(assert (=> b!251949 m!306759))

(declare-fun m!310155 () Bool)

(assert (=> b!251949 m!310155))

(assert (=> b!251949 m!310155))

(declare-fun m!310157 () Bool)

(assert (=> b!251949 m!310157))

(assert (=> b!251949 m!310157))

(declare-fun m!310159 () Bool)

(assert (=> b!251949 m!310159))

(assert (=> bm!13356 m!306759))

(declare-fun m!310161 () Bool)

(assert (=> bm!13356 m!310161))

(declare-fun m!310163 () Bool)

(assert (=> b!251950 m!310163))

(assert (=> b!251945 m!310157))

(assert (=> b!251945 m!310159))

(assert (=> b!251945 m!310153))

(assert (=> b!251945 m!310155))

(assert (=> b!251945 m!310157))

(declare-fun m!310165 () Bool)

(assert (=> b!251945 m!310165))

(assert (=> b!251945 m!306759))

(assert (=> b!251945 m!310155))

(assert (=> b!251943 m!310163))

(assert (=> b!251946 m!306759))

(declare-fun m!310167 () Bool)

(assert (=> b!251946 m!310167))

(assert (=> b!251948 m!310155))

(declare-fun m!310169 () Bool)

(assert (=> b!251948 m!310169))

(assert (=> b!251948 m!310153))

(assert (=> b!251948 m!310169))

(declare-fun m!310171 () Bool)

(assert (=> b!251948 m!310171))

(assert (=> b!251948 m!310165))

(assert (=> b!251948 m!306759))

(assert (=> b!251948 m!310155))

(assert (=> d!71147 m!310155))

(assert (=> d!71147 m!310169))

(assert (=> d!71147 m!306759))

(assert (=> d!71147 m!310155))

(declare-fun m!310173 () Bool)

(assert (=> d!71147 m!310173))

(declare-fun m!310175 () Bool)

(assert (=> d!71147 m!310175))

(assert (=> d!71147 m!310163))

(assert (=> d!71147 m!310169))

(declare-fun m!310177 () Bool)

(assert (=> d!71147 m!310177))

(assert (=> d!71147 m!306683))

(assert (=> b!251947 m!310153))

(assert (=> b!251947 m!306759))

(assert (=> b!251947 m!310155))

(assert (=> b!251947 m!310155))

(assert (=> b!251947 m!310169))

(assert (=> b!251947 m!310169))

(assert (=> b!251947 m!310171))

(assert (=> b!250290 d!71147))

(declare-fun b!251951 () Bool)

(declare-fun e!156508 () Bool)

(declare-fun lt!103091 () List!3690)

(declare-fun e!156509 () Int)

(assert (=> b!251951 (= e!156508 (= (size!2918 lt!103091) e!156509))))

(declare-fun c!47949 () Bool)

(assert (=> b!251951 (= c!47949 (<= 0 0))))

(declare-fun b!251952 () Bool)

(declare-fun e!156505 () List!3690)

(assert (=> b!251952 (= e!156505 (drop!198 (t!35394 lt!102098) (- 0 1)))))

(declare-fun d!71149 () Bool)

(assert (=> d!71149 e!156508))

(declare-fun res!116775 () Bool)

(assert (=> d!71149 (=> (not res!116775) (not e!156508))))

(assert (=> d!71149 (= res!116775 (= ((_ map implies) (content!515 lt!103091) (content!515 lt!102098)) ((as const (InoxSet Token!1142)) true)))))

(declare-fun e!156506 () List!3690)

(assert (=> d!71149 (= lt!103091 e!156506)))

(declare-fun c!47948 () Bool)

(assert (=> d!71149 (= c!47948 ((_ is Nil!3680) lt!102098))))

(assert (=> d!71149 (= (drop!198 lt!102098 0) lt!103091)))

(declare-fun b!251953 () Bool)

(assert (=> b!251953 (= e!156506 Nil!3680)))

(declare-fun b!251954 () Bool)

(declare-fun call!13362 () Int)

(assert (=> b!251954 (= e!156509 call!13362)))

(declare-fun b!251955 () Bool)

(declare-fun e!156507 () Int)

(assert (=> b!251955 (= e!156507 (- call!13362 0))))

(declare-fun b!251956 () Bool)

(assert (=> b!251956 (= e!156506 e!156505)))

(declare-fun c!47947 () Bool)

(assert (=> b!251956 (= c!47947 (<= 0 0))))

(declare-fun b!251957 () Bool)

(assert (=> b!251957 (= e!156507 0)))

(declare-fun b!251958 () Bool)

(assert (=> b!251958 (= e!156509 e!156507)))

(declare-fun c!47950 () Bool)

(assert (=> b!251958 (= c!47950 (>= 0 call!13362))))

(declare-fun b!251959 () Bool)

(assert (=> b!251959 (= e!156505 lt!102098)))

(declare-fun bm!13357 () Bool)

(assert (=> bm!13357 (= call!13362 (size!2918 lt!102098))))

(assert (= (and d!71149 c!47948) b!251953))

(assert (= (and d!71149 (not c!47948)) b!251956))

(assert (= (and b!251956 c!47947) b!251959))

(assert (= (and b!251956 (not c!47947)) b!251952))

(assert (= (and d!71149 res!116775) b!251951))

(assert (= (and b!251951 c!47949) b!251954))

(assert (= (and b!251951 (not c!47949)) b!251958))

(assert (= (and b!251958 c!47950) b!251957))

(assert (= (and b!251958 (not c!47950)) b!251955))

(assert (= (or b!251954 b!251958 b!251955) bm!13357))

(declare-fun m!310179 () Bool)

(assert (=> b!251951 m!310179))

(declare-fun m!310181 () Bool)

(assert (=> b!251952 m!310181))

(declare-fun m!310183 () Bool)

(assert (=> d!71149 m!310183))

(declare-fun m!310185 () Bool)

(assert (=> d!71149 m!310185))

(assert (=> bm!13357 m!310051))

(assert (=> b!250290 d!71149))

(declare-fun d!71151 () Bool)

(declare-fun res!116776 () Bool)

(declare-fun e!156510 () Bool)

(assert (=> d!71151 (=> res!116776 e!156510)))

(assert (=> d!71151 (= res!116776 ((_ is Nil!3680) (t!35394 tokens!465)))))

(assert (=> d!71151 (= (forall!865 (t!35394 tokens!465) lambda!8285) e!156510)))

(declare-fun b!251960 () Bool)

(declare-fun e!156511 () Bool)

(assert (=> b!251960 (= e!156510 e!156511)))

(declare-fun res!116777 () Bool)

(assert (=> b!251960 (=> (not res!116777) (not e!156511))))

(assert (=> b!251960 (= res!116777 (dynLambda!1813 lambda!8285 (h!9077 (t!35394 tokens!465))))))

(declare-fun b!251961 () Bool)

(assert (=> b!251961 (= e!156511 (forall!865 (t!35394 (t!35394 tokens!465)) lambda!8285))))

(assert (= (and d!71151 (not res!116776)) b!251960))

(assert (= (and b!251960 res!116777) b!251961))

(declare-fun b_lambda!7437 () Bool)

(assert (=> (not b_lambda!7437) (not b!251960)))

(declare-fun m!310187 () Bool)

(assert (=> b!251960 m!310187))

(declare-fun m!310189 () Bool)

(assert (=> b!251961 m!310189))

(assert (=> b!250250 d!71151))

(declare-fun d!71153 () Bool)

(assert (=> d!71153 (= (list!1461 (_2!2274 lt!102227)) (list!1463 (c!47452 (_2!2274 lt!102227))))))

(declare-fun bs!27125 () Bool)

(assert (= bs!27125 d!71153))

(declare-fun m!310191 () Bool)

(assert (=> bs!27125 m!310191))

(assert (=> b!250582 d!71153))

(declare-fun d!71155 () Bool)

(declare-fun e!156512 () Bool)

(assert (=> d!71155 e!156512))

(declare-fun c!47951 () Bool)

(declare-fun lt!103092 () tuple2!4122)

(assert (=> d!71155 (= c!47951 (> (size!2918 (_1!2277 lt!103092)) 0))))

(declare-fun e!156513 () tuple2!4122)

(assert (=> d!71155 (= lt!103092 e!156513)))

(declare-fun c!47952 () Bool)

(declare-fun lt!103093 () Option!760)

(assert (=> d!71155 (= c!47952 ((_ is Some!759) lt!103093))))

(assert (=> d!71155 (= lt!103093 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 lt!101841)))))

(assert (=> d!71155 (= (lexList!191 thiss!17480 rules!1920 (list!1461 lt!101841)) lt!103092)))

(declare-fun b!251962 () Bool)

(declare-fun lt!103094 () tuple2!4122)

(assert (=> b!251962 (= e!156513 (tuple2!4123 (Cons!3680 (_1!2273 (v!14538 lt!103093)) (_1!2277 lt!103094)) (_2!2277 lt!103094)))))

(assert (=> b!251962 (= lt!103094 (lexList!191 thiss!17480 rules!1920 (_2!2273 (v!14538 lt!103093))))))

(declare-fun b!251963 () Bool)

(assert (=> b!251963 (= e!156513 (tuple2!4123 Nil!3680 (list!1461 lt!101841)))))

(declare-fun b!251964 () Bool)

(assert (=> b!251964 (= e!156512 (= (_2!2277 lt!103092) (list!1461 lt!101841)))))

(declare-fun b!251965 () Bool)

(declare-fun e!156514 () Bool)

(assert (=> b!251965 (= e!156512 e!156514)))

(declare-fun res!116778 () Bool)

(assert (=> b!251965 (= res!116778 (< (size!2913 (_2!2277 lt!103092)) (size!2913 (list!1461 lt!101841))))))

(assert (=> b!251965 (=> (not res!116778) (not e!156514))))

(declare-fun b!251966 () Bool)

(assert (=> b!251966 (= e!156514 (not (isEmpty!2278 (_1!2277 lt!103092))))))

(assert (= (and d!71155 c!47952) b!251962))

(assert (= (and d!71155 (not c!47952)) b!251963))

(assert (= (and d!71155 c!47951) b!251965))

(assert (= (and d!71155 (not c!47951)) b!251964))

(assert (= (and b!251965 res!116778) b!251966))

(declare-fun m!310193 () Bool)

(assert (=> d!71155 m!310193))

(assert (=> d!71155 m!306123))

(declare-fun m!310195 () Bool)

(assert (=> d!71155 m!310195))

(declare-fun m!310197 () Bool)

(assert (=> b!251962 m!310197))

(declare-fun m!310199 () Bool)

(assert (=> b!251965 m!310199))

(assert (=> b!251965 m!306123))

(declare-fun m!310201 () Bool)

(assert (=> b!251965 m!310201))

(declare-fun m!310203 () Bool)

(assert (=> b!251966 m!310203))

(assert (=> b!250582 d!71155))

(assert (=> b!250582 d!70275))

(declare-fun b!251967 () Bool)

(declare-fun res!116785 () Bool)

(declare-fun e!156515 () Bool)

(assert (=> b!251967 (=> (not res!116785) (not e!156515))))

(declare-fun lt!103097 () Option!760)

(assert (=> b!251967 (= res!116785 (= (value!24237 (_1!2273 (get!1209 lt!103097))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!103097)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!103097)))))))))

(declare-fun b!251968 () Bool)

(assert (=> b!251968 (= e!156515 (contains!678 rules!1920 (rule!1276 (_1!2273 (get!1209 lt!103097)))))))

(declare-fun b!251969 () Bool)

(declare-fun e!156517 () Option!760)

(declare-fun lt!103095 () Option!760)

(declare-fun lt!103096 () Option!760)

(assert (=> b!251969 (= e!156517 (ite (and ((_ is None!759) lt!103095) ((_ is None!759) lt!103096)) None!759 (ite ((_ is None!759) lt!103096) lt!103095 (ite ((_ is None!759) lt!103095) lt!103096 (ite (>= (size!2910 (_1!2273 (v!14538 lt!103095))) (size!2910 (_1!2273 (v!14538 lt!103096)))) lt!103095 lt!103096)))))))

(declare-fun call!13363 () Option!760)

(assert (=> b!251969 (= lt!103095 call!13363)))

(assert (=> b!251969 (= lt!103096 (maxPrefix!315 thiss!17480 (t!35393 rules!1920) (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094)))))

(declare-fun b!251970 () Bool)

(declare-fun res!116783 () Bool)

(assert (=> b!251970 (=> (not res!116783) (not e!156515))))

(assert (=> b!251970 (= res!116783 (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!103097)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103097))))))))

(declare-fun b!251971 () Bool)

(declare-fun e!156516 () Bool)

(assert (=> b!251971 (= e!156516 e!156515)))

(declare-fun res!116782 () Bool)

(assert (=> b!251971 (=> (not res!116782) (not e!156515))))

(assert (=> b!251971 (= res!116782 (isDefined!611 lt!103097))))

(declare-fun b!251972 () Bool)

(declare-fun res!116780 () Bool)

(assert (=> b!251972 (=> (not res!116780) (not e!156515))))

(assert (=> b!251972 (= res!116780 (< (size!2913 (_2!2273 (get!1209 lt!103097))) (size!2913 (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094))))))

(declare-fun b!251973 () Bool)

(assert (=> b!251973 (= e!156517 call!13363)))

(declare-fun bm!13358 () Bool)

(assert (=> bm!13358 (= call!13363 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094)))))

(declare-fun d!71157 () Bool)

(assert (=> d!71157 e!156516))

(declare-fun res!116781 () Bool)

(assert (=> d!71157 (=> res!116781 e!156516)))

(assert (=> d!71157 (= res!116781 (isEmpty!2282 lt!103097))))

(assert (=> d!71157 (= lt!103097 e!156517)))

(declare-fun c!47953 () Bool)

(assert (=> d!71157 (= c!47953 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!103099 () Unit!4472)

(declare-fun lt!103098 () Unit!4472)

(assert (=> d!71157 (= lt!103099 lt!103098)))

(assert (=> d!71157 (isPrefix!383 (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094) (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094))))

(assert (=> d!71157 (= lt!103098 (lemmaIsPrefixRefl!195 (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094) (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094)))))

(assert (=> d!71157 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!71157 (= (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094)) lt!103097)))

(declare-fun b!251974 () Bool)

(declare-fun res!116779 () Bool)

(assert (=> b!251974 (=> (not res!116779) (not e!156515))))

(assert (=> b!251974 (= res!116779 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103097)))) (_2!2273 (get!1209 lt!103097))) (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094)))))

(declare-fun b!251975 () Bool)

(declare-fun res!116784 () Bool)

(assert (=> b!251975 (=> (not res!116784) (not e!156515))))

(assert (=> b!251975 (= res!116784 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103097)))) (originalCharacters!742 (_1!2273 (get!1209 lt!103097)))))))

(assert (= (and d!71157 c!47953) b!251973))

(assert (= (and d!71157 (not c!47953)) b!251969))

(assert (= (or b!251973 b!251969) bm!13358))

(assert (= (and d!71157 (not res!116781)) b!251971))

(assert (= (and b!251971 res!116782) b!251975))

(assert (= (and b!251975 res!116784) b!251972))

(assert (= (and b!251972 res!116780) b!251974))

(assert (= (and b!251974 res!116779) b!251967))

(assert (= (and b!251967 res!116785) b!251970))

(assert (= (and b!251970 res!116783) b!251968))

(declare-fun m!310205 () Bool)

(assert (=> b!251967 m!310205))

(declare-fun m!310207 () Bool)

(assert (=> b!251967 m!310207))

(assert (=> b!251967 m!310207))

(declare-fun m!310209 () Bool)

(assert (=> b!251967 m!310209))

(declare-fun m!310211 () Bool)

(assert (=> b!251971 m!310211))

(assert (=> bm!13358 m!306745))

(declare-fun m!310213 () Bool)

(assert (=> bm!13358 m!310213))

(assert (=> b!251970 m!310205))

(declare-fun m!310215 () Bool)

(assert (=> b!251970 m!310215))

(assert (=> b!251970 m!310215))

(declare-fun m!310217 () Bool)

(assert (=> b!251970 m!310217))

(assert (=> b!251970 m!310217))

(declare-fun m!310219 () Bool)

(assert (=> b!251970 m!310219))

(assert (=> b!251975 m!310205))

(assert (=> b!251975 m!310215))

(assert (=> b!251975 m!310215))

(assert (=> b!251975 m!310217))

(assert (=> b!251974 m!310205))

(assert (=> b!251974 m!310215))

(assert (=> b!251974 m!310215))

(assert (=> b!251974 m!310217))

(assert (=> b!251974 m!310217))

(declare-fun m!310221 () Bool)

(assert (=> b!251974 m!310221))

(assert (=> b!251972 m!310205))

(declare-fun m!310223 () Bool)

(assert (=> b!251972 m!310223))

(assert (=> b!251972 m!306745))

(declare-fun m!310225 () Bool)

(assert (=> b!251972 m!310225))

(declare-fun m!310227 () Bool)

(assert (=> d!71157 m!310227))

(assert (=> d!71157 m!306745))

(assert (=> d!71157 m!306745))

(declare-fun m!310229 () Bool)

(assert (=> d!71157 m!310229))

(assert (=> d!71157 m!306745))

(assert (=> d!71157 m!306745))

(declare-fun m!310231 () Bool)

(assert (=> d!71157 m!310231))

(assert (=> d!71157 m!306683))

(assert (=> b!251969 m!306745))

(declare-fun m!310233 () Bool)

(assert (=> b!251969 m!310233))

(assert (=> b!251968 m!310205))

(declare-fun m!310235 () Bool)

(assert (=> b!251968 m!310235))

(assert (=> b!250282 d!71157))

(assert (=> b!250282 d!70997))

(declare-fun bs!27126 () Bool)

(declare-fun b!251984 () Bool)

(assert (= bs!27126 (and b!251984 d!70749)))

(declare-fun lambda!8366 () Int)

(assert (=> bs!27126 (not (= lambda!8366 lambda!8341))))

(declare-fun bs!27127 () Bool)

(assert (= bs!27127 (and b!251984 b!250061)))

(assert (=> bs!27127 (= lambda!8366 lambda!8295)))

(declare-fun bs!27128 () Bool)

(assert (= bs!27128 (and b!251984 d!70263)))

(assert (=> bs!27128 (not (= lambda!8366 lambda!8316))))

(declare-fun bs!27129 () Bool)

(assert (= bs!27129 (and b!251984 b!250282)))

(assert (=> bs!27129 (= lambda!8366 lambda!8315)))

(declare-fun bs!27130 () Bool)

(assert (= bs!27130 (and b!251984 b!251878)))

(assert (=> bs!27130 (= lambda!8366 lambda!8363)))

(declare-fun bs!27131 () Bool)

(assert (= bs!27131 (and b!251984 b!250290)))

(assert (=> bs!27131 (= lambda!8366 lambda!8317)))

(declare-fun bs!27132 () Bool)

(assert (= bs!27132 (and b!251984 d!70223)))

(assert (=> bs!27132 (= lambda!8366 lambda!8309)))

(declare-fun bs!27133 () Bool)

(assert (= bs!27133 (and b!251984 b!250190)))

(assert (=> bs!27133 (= lambda!8366 lambda!8304)))

(declare-fun bs!27134 () Bool)

(assert (= bs!27134 (and b!251984 d!71129)))

(assert (=> bs!27134 (not (= lambda!8366 lambda!8364))))

(declare-fun bs!27135 () Bool)

(assert (= bs!27135 (and b!251984 b!251909)))

(assert (=> bs!27135 (= lambda!8366 lambda!8365)))

(declare-fun bs!27136 () Bool)

(assert (= bs!27136 (and b!251984 b!251723)))

(assert (=> bs!27136 (= lambda!8366 lambda!8359)))

(declare-fun bs!27137 () Bool)

(assert (= bs!27137 (and b!251984 b!249873)))

(assert (=> bs!27137 (not (= lambda!8366 lambda!8285))))

(declare-fun bs!27138 () Bool)

(assert (= bs!27138 (and b!251984 d!70365)))

(assert (=> bs!27138 (not (= lambda!8366 lambda!8323))))

(declare-fun bs!27139 () Bool)

(assert (= bs!27139 (and b!251984 b!249874)))

(assert (=> bs!27139 (= lambda!8366 lambda!8286)))

(declare-fun bs!27140 () Bool)

(assert (= bs!27140 (and b!251984 d!70619)))

(assert (=> bs!27140 (= lambda!8366 lambda!8335)))

(declare-fun bs!27141 () Bool)

(assert (= bs!27141 (and b!251984 d!70193)))

(assert (=> bs!27141 (not (= lambda!8366 lambda!8294))))

(declare-fun bs!27142 () Bool)

(assert (= bs!27142 (and b!251984 d!71025)))

(assert (=> bs!27142 (not (= lambda!8366 lambda!8358))))

(declare-fun b!251988 () Bool)

(declare-fun e!156525 () Bool)

(assert (=> b!251988 (= e!156525 true)))

(declare-fun b!251987 () Bool)

(declare-fun e!156524 () Bool)

(assert (=> b!251987 (= e!156524 e!156525)))

(declare-fun b!251986 () Bool)

(declare-fun e!156523 () Bool)

(assert (=> b!251986 (= e!156523 e!156524)))

(assert (=> b!251984 e!156523))

(assert (= b!251987 b!251988))

(assert (= b!251986 b!251987))

(assert (= (and b!251984 ((_ is Cons!3679) rules!1920)) b!251986))

(assert (=> b!251988 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8366))))

(assert (=> b!251988 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8366))))

(assert (=> b!251984 true))

(declare-fun bm!13359 () Bool)

(declare-fun call!13368 () BalanceConc!2448)

(assert (=> bm!13359 (= call!13368 (charsOf!354 (h!9077 (t!35394 (t!35394 tokens!465)))))))

(declare-fun b!251976 () Bool)

(declare-fun e!156520 () List!3688)

(declare-fun call!13366 () List!3688)

(declare-fun lt!103102 () List!3688)

(assert (=> b!251976 (= e!156520 (++!942 call!13366 lt!103102))))

(declare-fun b!251977 () Bool)

(declare-fun e!156519 () BalanceConc!2448)

(assert (=> b!251977 (= e!156519 (charsOf!354 separatorToken!170))))

(declare-fun bm!13360 () Bool)

(declare-fun call!13364 () BalanceConc!2448)

(assert (=> bm!13360 (= call!13364 call!13368)))

(declare-fun b!251978 () Bool)

(declare-fun c!47957 () Bool)

(declare-fun lt!103101 () Option!760)

(assert (=> b!251978 (= c!47957 (and ((_ is Some!759) lt!103101) (not (= (_1!2273 (v!14538 lt!103101)) (h!9077 (t!35394 (t!35394 tokens!465)))))))))

(declare-fun e!156521 () List!3688)

(assert (=> b!251978 (= e!156521 e!156520)))

(declare-fun bm!13361 () Bool)

(declare-fun c!47958 () Bool)

(declare-fun c!47954 () Bool)

(assert (=> bm!13361 (= c!47958 c!47954)))

(declare-fun call!13365 () List!3688)

(declare-fun e!156522 () List!3688)

(assert (=> bm!13361 (= call!13366 (++!942 e!156522 (ite c!47954 lt!103102 call!13365)))))

(declare-fun b!251979 () Bool)

(assert (=> b!251979 (= e!156521 call!13366)))

(declare-fun call!13367 () List!3688)

(declare-fun bm!13363 () Bool)

(assert (=> bm!13363 (= call!13367 (list!1461 (ite c!47954 call!13368 e!156519)))))

(declare-fun b!251980 () Bool)

(assert (=> b!251980 (= e!156522 (list!1461 call!13364))))

(declare-fun b!251981 () Bool)

(declare-fun e!156518 () List!3688)

(assert (=> b!251981 (= e!156518 Nil!3678)))

(declare-fun b!251982 () Bool)

(assert (=> b!251982 (= e!156522 call!13367)))

(declare-fun b!251983 () Bool)

(assert (=> b!251983 (= e!156519 call!13364)))

(assert (=> b!251984 (= e!156518 e!156521)))

(declare-fun lt!103104 () Unit!4472)

(assert (=> b!251984 (= lt!103104 (forallContained!266 (t!35394 (t!35394 tokens!465)) lambda!8366 (h!9077 (t!35394 (t!35394 tokens!465)))))))

(assert (=> b!251984 (= lt!103102 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (t!35394 (t!35394 (t!35394 tokens!465))) separatorToken!170))))

(assert (=> b!251984 (= lt!103101 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 (t!35394 tokens!465))))) lt!103102)))))

(assert (=> b!251984 (= c!47954 (and ((_ is Some!759) lt!103101) (= (_1!2273 (v!14538 lt!103101)) (h!9077 (t!35394 (t!35394 tokens!465))))))))

(declare-fun b!251985 () Bool)

(assert (=> b!251985 (= e!156520 Nil!3678)))

(assert (=> b!251985 (= (print!316 thiss!17480 (singletonSeq!251 (h!9077 (t!35394 (t!35394 tokens!465))))) (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 (t!35394 (t!35394 tokens!465)))) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!103103 () Unit!4472)

(declare-fun Unit!4510 () Unit!4472)

(assert (=> b!251985 (= lt!103103 Unit!4510)))

(declare-fun lt!103105 () Unit!4472)

(assert (=> b!251985 (= lt!103105 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 call!13365 lt!103102))))

(assert (=> b!251985 false))

(declare-fun lt!103100 () Unit!4472)

(declare-fun Unit!4511 () Unit!4472)

(assert (=> b!251985 (= lt!103100 Unit!4511)))

(declare-fun bm!13362 () Bool)

(assert (=> bm!13362 (= call!13365 call!13367)))

(declare-fun c!47956 () Bool)

(assert (=> bm!13362 (= c!47956 c!47957)))

(declare-fun d!71159 () Bool)

(declare-fun c!47955 () Bool)

(assert (=> d!71159 (= c!47955 ((_ is Cons!3680) (t!35394 (t!35394 tokens!465))))))

(assert (=> d!71159 (= (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (t!35394 (t!35394 tokens!465)) separatorToken!170) e!156518)))

(assert (= (and d!71159 c!47955) b!251984))

(assert (= (and d!71159 (not c!47955)) b!251981))

(assert (= (and b!251984 c!47954) b!251979))

(assert (= (and b!251984 (not c!47954)) b!251978))

(assert (= (and b!251978 c!47957) b!251976))

(assert (= (and b!251978 (not c!47957)) b!251985))

(assert (= (or b!251976 b!251985) bm!13360))

(assert (= (or b!251976 b!251985) bm!13362))

(assert (= (and bm!13362 c!47956) b!251977))

(assert (= (and bm!13362 (not c!47956)) b!251983))

(assert (= (or b!251979 bm!13360) bm!13359))

(assert (= (or b!251979 bm!13362) bm!13363))

(assert (= (or b!251979 b!251976) bm!13361))

(assert (= (and bm!13361 c!47958) b!251982))

(assert (= (and bm!13361 (not c!47958)) b!251980))

(declare-fun m!310237 () Bool)

(assert (=> bm!13359 m!310237))

(declare-fun m!310239 () Bool)

(assert (=> b!251980 m!310239))

(declare-fun m!310241 () Bool)

(assert (=> b!251976 m!310241))

(declare-fun m!310243 () Bool)

(assert (=> bm!13361 m!310243))

(assert (=> b!251977 m!306127))

(declare-fun m!310245 () Bool)

(assert (=> bm!13363 m!310245))

(declare-fun m!310247 () Bool)

(assert (=> b!251985 m!310247))

(assert (=> b!251985 m!310247))

(declare-fun m!310249 () Bool)

(assert (=> b!251985 m!310249))

(assert (=> b!251985 m!310247))

(declare-fun m!310251 () Bool)

(assert (=> b!251985 m!310251))

(declare-fun m!310253 () Bool)

(assert (=> b!251985 m!310253))

(declare-fun m!310255 () Bool)

(assert (=> b!251984 m!310255))

(declare-fun m!310257 () Bool)

(assert (=> b!251984 m!310257))

(declare-fun m!310259 () Bool)

(assert (=> b!251984 m!310259))

(assert (=> b!251984 m!310257))

(declare-fun m!310261 () Bool)

(assert (=> b!251984 m!310261))

(assert (=> b!251984 m!310237))

(assert (=> b!251984 m!310255))

(assert (=> b!251984 m!310237))

(declare-fun m!310263 () Bool)

(assert (=> b!251984 m!310263))

(assert (=> b!250282 d!71159))

(declare-fun d!71161 () Bool)

(assert (=> d!71161 (dynLambda!1813 lambda!8315 (h!9077 (t!35394 tokens!465)))))

(declare-fun lt!103106 () Unit!4472)

(assert (=> d!71161 (= lt!103106 (choose!2355 (t!35394 tokens!465) lambda!8315 (h!9077 (t!35394 tokens!465))))))

(declare-fun e!156526 () Bool)

(assert (=> d!71161 e!156526))

(declare-fun res!116786 () Bool)

(assert (=> d!71161 (=> (not res!116786) (not e!156526))))

(assert (=> d!71161 (= res!116786 (forall!865 (t!35394 tokens!465) lambda!8315))))

(assert (=> d!71161 (= (forallContained!266 (t!35394 tokens!465) lambda!8315 (h!9077 (t!35394 tokens!465))) lt!103106)))

(declare-fun b!251989 () Bool)

(assert (=> b!251989 (= e!156526 (contains!680 (t!35394 tokens!465) (h!9077 (t!35394 tokens!465))))))

(assert (= (and d!71161 res!116786) b!251989))

(declare-fun b_lambda!7439 () Bool)

(assert (=> (not b_lambda!7439) (not d!71161)))

(declare-fun m!310265 () Bool)

(assert (=> d!71161 m!310265))

(declare-fun m!310267 () Bool)

(assert (=> d!71161 m!310267))

(declare-fun m!310269 () Bool)

(assert (=> d!71161 m!310269))

(declare-fun m!310271 () Bool)

(assert (=> b!251989 m!310271))

(assert (=> b!250282 d!71161))

(declare-fun b!251990 () Bool)

(declare-fun e!156527 () List!3688)

(assert (=> b!251990 (= e!156527 lt!102094)))

(declare-fun b!251991 () Bool)

(assert (=> b!251991 (= e!156527 (Cons!3678 (h!9075 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465))))) (++!942 (t!35392 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465))))) lt!102094)))))

(declare-fun e!156528 () Bool)

(declare-fun b!251993 () Bool)

(declare-fun lt!103107 () List!3688)

(assert (=> b!251993 (= e!156528 (or (not (= lt!102094 Nil!3678)) (= lt!103107 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))))))))

(declare-fun d!71163 () Bool)

(assert (=> d!71163 e!156528))

(declare-fun res!116788 () Bool)

(assert (=> d!71163 (=> (not res!116788) (not e!156528))))

(assert (=> d!71163 (= res!116788 (= (content!513 lt!103107) ((_ map or) (content!513 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465))))) (content!513 lt!102094))))))

(assert (=> d!71163 (= lt!103107 e!156527)))

(declare-fun c!47959 () Bool)

(assert (=> d!71163 (= c!47959 ((_ is Nil!3678) (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465))))))))

(assert (=> d!71163 (= (++!942 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) lt!102094) lt!103107)))

(declare-fun b!251992 () Bool)

(declare-fun res!116787 () Bool)

(assert (=> b!251992 (=> (not res!116787) (not e!156528))))

(assert (=> b!251992 (= res!116787 (= (size!2913 lt!103107) (+ (size!2913 (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465))))) (size!2913 lt!102094))))))

(assert (= (and d!71163 c!47959) b!251990))

(assert (= (and d!71163 (not c!47959)) b!251991))

(assert (= (and d!71163 res!116788) b!251992))

(assert (= (and b!251992 res!116787) b!251993))

(declare-fun m!310273 () Bool)

(assert (=> b!251991 m!310273))

(declare-fun m!310275 () Bool)

(assert (=> d!71163 m!310275))

(assert (=> d!71163 m!306743))

(declare-fun m!310277 () Bool)

(assert (=> d!71163 m!310277))

(declare-fun m!310279 () Bool)

(assert (=> d!71163 m!310279))

(declare-fun m!310281 () Bool)

(assert (=> b!251992 m!310281))

(assert (=> b!251992 m!306743))

(declare-fun m!310283 () Bool)

(assert (=> b!251992 m!310283))

(declare-fun m!310285 () Bool)

(assert (=> b!251992 m!310285))

(assert (=> b!250282 d!71163))

(declare-fun d!71165 () Bool)

(assert (=> d!71165 (= (list!1461 (charsOf!354 (h!9077 (t!35394 tokens!465)))) (list!1463 (c!47452 (charsOf!354 (h!9077 (t!35394 tokens!465))))))))

(declare-fun bs!27143 () Bool)

(assert (= bs!27143 d!71165))

(declare-fun m!310287 () Bool)

(assert (=> bs!27143 m!310287))

(assert (=> b!250282 d!71165))

(declare-fun d!71167 () Bool)

(assert (=> d!71167 (= (isDefined!611 (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (not (isEmpty!2282 (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))))

(declare-fun bs!27144 () Bool)

(assert (= bs!27144 d!71167))

(assert (=> bs!27144 m!307403))

(declare-fun m!310289 () Bool)

(assert (=> bs!27144 m!310289))

(assert (=> b!250707 d!71167))

(declare-fun b!251994 () Bool)

(declare-fun res!116795 () Bool)

(declare-fun e!156529 () Bool)

(assert (=> b!251994 (=> (not res!116795) (not e!156529))))

(declare-fun lt!103110 () Option!760)

(assert (=> b!251994 (= res!116795 (= (value!24237 (_1!2273 (get!1209 lt!103110))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!103110)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!103110)))))))))

(declare-fun b!251995 () Bool)

(assert (=> b!251995 (= e!156529 (contains!678 rules!1920 (rule!1276 (_1!2273 (get!1209 lt!103110)))))))

(declare-fun b!251996 () Bool)

(declare-fun e!156531 () Option!760)

(declare-fun lt!103108 () Option!760)

(declare-fun lt!103109 () Option!760)

(assert (=> b!251996 (= e!156531 (ite (and ((_ is None!759) lt!103108) ((_ is None!759) lt!103109)) None!759 (ite ((_ is None!759) lt!103109) lt!103108 (ite ((_ is None!759) lt!103108) lt!103109 (ite (>= (size!2910 (_1!2273 (v!14538 lt!103108))) (size!2910 (_1!2273 (v!14538 lt!103109)))) lt!103108 lt!103109)))))))

(declare-fun call!13369 () Option!760)

(assert (=> b!251996 (= lt!103108 call!13369)))

(assert (=> b!251996 (= lt!103109 (maxPrefix!315 thiss!17480 (t!35393 rules!1920) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!251997 () Bool)

(declare-fun res!116793 () Bool)

(assert (=> b!251997 (=> (not res!116793) (not e!156529))))

(assert (=> b!251997 (= res!116793 (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!103110)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103110))))))))

(declare-fun b!251998 () Bool)

(declare-fun e!156530 () Bool)

(assert (=> b!251998 (= e!156530 e!156529)))

(declare-fun res!116792 () Bool)

(assert (=> b!251998 (=> (not res!116792) (not e!156529))))

(assert (=> b!251998 (= res!116792 (isDefined!611 lt!103110))))

(declare-fun b!251999 () Bool)

(declare-fun res!116790 () Bool)

(assert (=> b!251999 (=> (not res!116790) (not e!156529))))

(assert (=> b!251999 (= res!116790 (< (size!2913 (_2!2273 (get!1209 lt!103110))) (size!2913 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!252000 () Bool)

(assert (=> b!252000 (= e!156531 call!13369)))

(declare-fun bm!13364 () Bool)

(assert (=> bm!13364 (= call!13369 (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun d!71169 () Bool)

(assert (=> d!71169 e!156530))

(declare-fun res!116791 () Bool)

(assert (=> d!71169 (=> res!116791 e!156530)))

(assert (=> d!71169 (= res!116791 (isEmpty!2282 lt!103110))))

(assert (=> d!71169 (= lt!103110 e!156531)))

(declare-fun c!47960 () Bool)

(assert (=> d!71169 (= c!47960 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!103112 () Unit!4472)

(declare-fun lt!103111 () Unit!4472)

(assert (=> d!71169 (= lt!103112 lt!103111)))

(assert (=> d!71169 (isPrefix!383 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!71169 (= lt!103111 (lemmaIsPrefixRefl!195 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(assert (=> d!71169 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!71169 (= (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170)) lt!103110)))

(declare-fun b!252001 () Bool)

(declare-fun res!116789 () Bool)

(assert (=> b!252001 (=> (not res!116789) (not e!156529))))

(assert (=> b!252001 (= res!116789 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103110)))) (_2!2273 (get!1209 lt!103110))) (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!252002 () Bool)

(declare-fun res!116794 () Bool)

(assert (=> b!252002 (=> (not res!116794) (not e!156529))))

(assert (=> b!252002 (= res!116794 (= (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103110)))) (originalCharacters!742 (_1!2273 (get!1209 lt!103110)))))))

(assert (= (and d!71169 c!47960) b!252000))

(assert (= (and d!71169 (not c!47960)) b!251996))

(assert (= (or b!252000 b!251996) bm!13364))

(assert (= (and d!71169 (not res!116791)) b!251998))

(assert (= (and b!251998 res!116792) b!252002))

(assert (= (and b!252002 res!116794) b!251999))

(assert (= (and b!251999 res!116790) b!252001))

(assert (= (and b!252001 res!116789) b!251994))

(assert (= (and b!251994 res!116795) b!251997))

(assert (= (and b!251997 res!116793) b!251995))

(declare-fun m!310291 () Bool)

(assert (=> b!251994 m!310291))

(declare-fun m!310293 () Bool)

(assert (=> b!251994 m!310293))

(assert (=> b!251994 m!310293))

(declare-fun m!310295 () Bool)

(assert (=> b!251994 m!310295))

(declare-fun m!310297 () Bool)

(assert (=> b!251998 m!310297))

(assert (=> bm!13364 m!306049))

(declare-fun m!310299 () Bool)

(assert (=> bm!13364 m!310299))

(assert (=> b!251997 m!310291))

(declare-fun m!310301 () Bool)

(assert (=> b!251997 m!310301))

(assert (=> b!251997 m!310301))

(declare-fun m!310303 () Bool)

(assert (=> b!251997 m!310303))

(assert (=> b!251997 m!310303))

(declare-fun m!310305 () Bool)

(assert (=> b!251997 m!310305))

(assert (=> b!252002 m!310291))

(assert (=> b!252002 m!310301))

(assert (=> b!252002 m!310301))

(assert (=> b!252002 m!310303))

(assert (=> b!252001 m!310291))

(assert (=> b!252001 m!310301))

(assert (=> b!252001 m!310301))

(assert (=> b!252001 m!310303))

(assert (=> b!252001 m!310303))

(declare-fun m!310307 () Bool)

(assert (=> b!252001 m!310307))

(assert (=> b!251999 m!310291))

(declare-fun m!310309 () Bool)

(assert (=> b!251999 m!310309))

(assert (=> b!251999 m!306049))

(declare-fun m!310311 () Bool)

(assert (=> b!251999 m!310311))

(declare-fun m!310313 () Bool)

(assert (=> d!71169 m!310313))

(assert (=> d!71169 m!306049))

(assert (=> d!71169 m!306049))

(declare-fun m!310315 () Bool)

(assert (=> d!71169 m!310315))

(assert (=> d!71169 m!306049))

(assert (=> d!71169 m!306049))

(declare-fun m!310317 () Bool)

(assert (=> d!71169 m!310317))

(assert (=> d!71169 m!306683))

(assert (=> b!251996 m!306049))

(declare-fun m!310319 () Bool)

(assert (=> b!251996 m!310319))

(assert (=> b!251995 m!310291))

(declare-fun m!310321 () Bool)

(assert (=> b!251995 m!310321))

(assert (=> b!250707 d!71169))

(assert (=> b!250707 d!70197))

(declare-fun d!71171 () Bool)

(declare-fun lt!103115 () Int)

(assert (=> d!71171 (= lt!103115 (size!2913 (list!1461 (_2!2274 lt!102227))))))

(declare-fun size!2921 (Conc!1220) Int)

(assert (=> d!71171 (= lt!103115 (size!2921 (c!47452 (_2!2274 lt!102227))))))

(assert (=> d!71171 (= (size!2917 (_2!2274 lt!102227)) lt!103115)))

(declare-fun bs!27146 () Bool)

(assert (= bs!27146 d!71171))

(assert (=> bs!27146 m!307217))

(assert (=> bs!27146 m!307217))

(declare-fun m!310323 () Bool)

(assert (=> bs!27146 m!310323))

(declare-fun m!310325 () Bool)

(assert (=> bs!27146 m!310325))

(assert (=> b!250583 d!71171))

(declare-fun d!71173 () Bool)

(declare-fun lt!103116 () Int)

(assert (=> d!71173 (= lt!103116 (size!2913 (list!1461 lt!101841)))))

(assert (=> d!71173 (= lt!103116 (size!2921 (c!47452 lt!101841)))))

(assert (=> d!71173 (= (size!2917 lt!101841) lt!103116)))

(declare-fun bs!27151 () Bool)

(assert (= bs!27151 d!71173))

(assert (=> bs!27151 m!306123))

(assert (=> bs!27151 m!306123))

(assert (=> bs!27151 m!310201))

(declare-fun m!310327 () Bool)

(assert (=> bs!27151 m!310327))

(assert (=> b!250583 d!71173))

(declare-fun d!71175 () Bool)

(declare-fun lt!103117 () BalanceConc!2448)

(assert (=> d!71175 (= (list!1461 lt!103117) (printList!269 thiss!17480 (list!1460 (singletonSeq!251 (h!9077 (t!35394 tokens!465))))))))

(assert (=> d!71175 (= lt!103117 (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 (t!35394 tokens!465))) 0 (BalanceConc!2449 Empty!1220)))))

(assert (=> d!71175 (= (print!316 thiss!17480 (singletonSeq!251 (h!9077 (t!35394 tokens!465)))) lt!103117)))

(declare-fun bs!27156 () Bool)

(assert (= bs!27156 d!71175))

(declare-fun m!310329 () Bool)

(assert (=> bs!27156 m!310329))

(assert (=> bs!27156 m!306735))

(declare-fun m!310331 () Bool)

(assert (=> bs!27156 m!310331))

(assert (=> bs!27156 m!310331))

(declare-fun m!310333 () Bool)

(assert (=> bs!27156 m!310333))

(assert (=> bs!27156 m!306735))

(assert (=> bs!27156 m!306739))

(assert (=> b!250283 d!71175))

(declare-fun d!71177 () Bool)

(declare-fun e!156532 () Bool)

(assert (=> d!71177 e!156532))

(declare-fun res!116796 () Bool)

(assert (=> d!71177 (=> (not res!116796) (not e!156532))))

(declare-fun lt!103118 () BalanceConc!2450)

(assert (=> d!71177 (= res!116796 (= (list!1460 lt!103118) (Cons!3680 (h!9077 (t!35394 tokens!465)) Nil!3680)))))

(assert (=> d!71177 (= lt!103118 (singleton!94 (h!9077 (t!35394 tokens!465))))))

(assert (=> d!71177 (= (singletonSeq!251 (h!9077 (t!35394 tokens!465))) lt!103118)))

(declare-fun b!252003 () Bool)

(assert (=> b!252003 (= e!156532 (isBalanced!315 (c!47454 lt!103118)))))

(assert (= (and d!71177 res!116796) b!252003))

(declare-fun m!310335 () Bool)

(assert (=> d!71177 m!310335))

(declare-fun m!310337 () Bool)

(assert (=> d!71177 m!310337))

(declare-fun m!310339 () Bool)

(assert (=> b!252003 m!310339))

(assert (=> b!250283 d!71177))

(declare-fun d!71179 () Bool)

(declare-fun lt!103120 () BalanceConc!2448)

(assert (=> d!71179 (= (list!1461 lt!103120) (printListTailRec!113 thiss!17480 (dropList!145 (singletonSeq!251 (h!9077 (t!35394 tokens!465))) 0) (list!1461 (BalanceConc!2449 Empty!1220))))))

(declare-fun e!156534 () BalanceConc!2448)

(assert (=> d!71179 (= lt!103120 e!156534)))

(declare-fun c!47961 () Bool)

(assert (=> d!71179 (= c!47961 (>= 0 (size!2911 (singletonSeq!251 (h!9077 (t!35394 tokens!465))))))))

(declare-fun e!156533 () Bool)

(assert (=> d!71179 e!156533))

(declare-fun res!116797 () Bool)

(assert (=> d!71179 (=> (not res!116797) (not e!156533))))

(assert (=> d!71179 (= res!116797 (>= 0 0))))

(assert (=> d!71179 (= (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 (t!35394 tokens!465))) 0 (BalanceConc!2449 Empty!1220)) lt!103120)))

(declare-fun b!252004 () Bool)

(assert (=> b!252004 (= e!156533 (<= 0 (size!2911 (singletonSeq!251 (h!9077 (t!35394 tokens!465))))))))

(declare-fun b!252005 () Bool)

(assert (=> b!252005 (= e!156534 (BalanceConc!2449 Empty!1220))))

(declare-fun b!252006 () Bool)

(assert (=> b!252006 (= e!156534 (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 (t!35394 tokens!465))) (+ 0 1) (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 (singletonSeq!251 (h!9077 (t!35394 tokens!465))) 0)))))))

(declare-fun lt!103121 () List!3690)

(assert (=> b!252006 (= lt!103121 (list!1460 (singletonSeq!251 (h!9077 (t!35394 tokens!465)))))))

(declare-fun lt!103125 () Unit!4472)

(assert (=> b!252006 (= lt!103125 (lemmaDropApply!185 lt!103121 0))))

(assert (=> b!252006 (= (head!864 (drop!198 lt!103121 0)) (apply!695 lt!103121 0))))

(declare-fun lt!103123 () Unit!4472)

(assert (=> b!252006 (= lt!103123 lt!103125)))

(declare-fun lt!103122 () List!3690)

(assert (=> b!252006 (= lt!103122 (list!1460 (singletonSeq!251 (h!9077 (t!35394 tokens!465)))))))

(declare-fun lt!103124 () Unit!4472)

(assert (=> b!252006 (= lt!103124 (lemmaDropTail!177 lt!103122 0))))

(assert (=> b!252006 (= (tail!455 (drop!198 lt!103122 0)) (drop!198 lt!103122 (+ 0 1)))))

(declare-fun lt!103119 () Unit!4472)

(assert (=> b!252006 (= lt!103119 lt!103124)))

(assert (= (and d!71179 res!116797) b!252004))

(assert (= (and d!71179 c!47961) b!252005))

(assert (= (and d!71179 (not c!47961)) b!252006))

(assert (=> d!71179 m!306307))

(assert (=> d!71179 m!306735))

(declare-fun m!310343 () Bool)

(assert (=> d!71179 m!310343))

(assert (=> d!71179 m!310343))

(assert (=> d!71179 m!306307))

(declare-fun m!310345 () Bool)

(assert (=> d!71179 m!310345))

(declare-fun m!310347 () Bool)

(assert (=> d!71179 m!310347))

(assert (=> d!71179 m!306735))

(declare-fun m!310349 () Bool)

(assert (=> d!71179 m!310349))

(assert (=> b!252004 m!306735))

(assert (=> b!252004 m!310349))

(declare-fun m!310351 () Bool)

(assert (=> b!252006 m!310351))

(declare-fun m!310353 () Bool)

(assert (=> b!252006 m!310353))

(assert (=> b!252006 m!306735))

(declare-fun m!310355 () Bool)

(assert (=> b!252006 m!310355))

(declare-fun m!310357 () Bool)

(assert (=> b!252006 m!310357))

(declare-fun m!310359 () Bool)

(assert (=> b!252006 m!310359))

(assert (=> b!252006 m!306735))

(assert (=> b!252006 m!310331))

(declare-fun m!310361 () Bool)

(assert (=> b!252006 m!310361))

(declare-fun m!310363 () Bool)

(assert (=> b!252006 m!310363))

(declare-fun m!310365 () Bool)

(assert (=> b!252006 m!310365))

(assert (=> b!252006 m!310363))

(declare-fun m!310367 () Bool)

(assert (=> b!252006 m!310367))

(assert (=> b!252006 m!306735))

(declare-fun m!310371 () Bool)

(assert (=> b!252006 m!310371))

(declare-fun m!310373 () Bool)

(assert (=> b!252006 m!310373))

(assert (=> b!252006 m!310351))

(assert (=> b!252006 m!310355))

(declare-fun m!310377 () Bool)

(assert (=> b!252006 m!310377))

(assert (=> b!252006 m!310377))

(assert (=> b!252006 m!310371))

(assert (=> b!250283 d!71179))

(declare-fun b!252012 () Bool)

(declare-fun res!116801 () Bool)

(declare-fun e!156539 () Bool)

(assert (=> b!252012 (=> (not res!116801) (not e!156539))))

(declare-fun lt!103135 () Token!1142)

(assert (=> b!252012 (= res!116801 (matchR!261 (regex!699 (get!1213 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!103135))))) (list!1461 (charsOf!354 lt!103135))))))

(declare-fun b!252014 () Bool)

(declare-fun e!156538 () Unit!4472)

(declare-fun Unit!4514 () Unit!4472)

(assert (=> b!252014 (= e!156538 Unit!4514)))

(declare-fun lt!103127 () List!3688)

(assert (=> b!252014 (= lt!103127 (++!942 call!13242 lt!102094))))

(declare-fun lt!103136 () Unit!4472)

(assert (=> b!252014 (= lt!103136 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!44 thiss!17480 (rule!1276 lt!103135) rules!1920 lt!103127))))

(assert (=> b!252014 (isEmpty!2282 (maxPrefixOneRule!129 thiss!17480 (rule!1276 lt!103135) lt!103127))))

(declare-fun lt!103132 () Unit!4472)

(assert (=> b!252014 (= lt!103132 lt!103136)))

(declare-fun lt!103139 () List!3688)

(assert (=> b!252014 (= lt!103139 (list!1461 (charsOf!354 lt!103135)))))

(declare-fun lt!103143 () Unit!4472)

(assert (=> b!252014 (= lt!103143 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!44 thiss!17480 (rule!1276 lt!103135) lt!103139 (++!942 call!13242 lt!102094)))))

(assert (=> b!252014 (not (matchR!261 (regex!699 (rule!1276 lt!103135)) lt!103139))))

(declare-fun lt!103138 () Unit!4472)

(assert (=> b!252014 (= lt!103138 lt!103143)))

(assert (=> b!252014 false))

(declare-fun b!252015 () Bool)

(declare-fun Unit!4515 () Unit!4472)

(assert (=> b!252015 (= e!156538 Unit!4515)))

(declare-fun b!252013 () Bool)

(assert (=> b!252013 (= e!156539 (= (rule!1276 lt!103135) (get!1213 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!103135))))))))

(declare-fun d!71183 () Bool)

(assert (=> d!71183 (isDefined!611 (maxPrefix!315 thiss!17480 rules!1920 (++!942 call!13242 lt!102094)))))

(declare-fun lt!103140 () Unit!4472)

(assert (=> d!71183 (= lt!103140 e!156538)))

(declare-fun c!47963 () Bool)

(assert (=> d!71183 (= c!47963 (isEmpty!2282 (maxPrefix!315 thiss!17480 rules!1920 (++!942 call!13242 lt!102094))))))

(declare-fun lt!103133 () Unit!4472)

(declare-fun lt!103141 () Unit!4472)

(assert (=> d!71183 (= lt!103133 lt!103141)))

(assert (=> d!71183 e!156539))

(declare-fun res!116802 () Bool)

(assert (=> d!71183 (=> (not res!116802) (not e!156539))))

(assert (=> d!71183 (= res!116802 (isDefined!614 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!103135)))))))

(assert (=> d!71183 (= lt!103141 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!112 thiss!17480 rules!1920 call!13242 lt!103135))))

(declare-fun lt!103130 () Unit!4472)

(declare-fun lt!103137 () Unit!4472)

(assert (=> d!71183 (= lt!103130 lt!103137)))

(declare-fun lt!103128 () List!3688)

(assert (=> d!71183 (isPrefix!383 lt!103128 (++!942 call!13242 lt!102094))))

(assert (=> d!71183 (= lt!103137 (lemmaPrefixStaysPrefixWhenAddingToSuffix!44 lt!103128 call!13242 lt!102094))))

(assert (=> d!71183 (= lt!103128 (list!1461 (charsOf!354 lt!103135)))))

(declare-fun lt!103142 () Unit!4472)

(declare-fun lt!103129 () Unit!4472)

(assert (=> d!71183 (= lt!103142 lt!103129)))

(declare-fun lt!103134 () List!3688)

(declare-fun lt!103131 () List!3688)

(assert (=> d!71183 (isPrefix!383 lt!103134 (++!942 lt!103134 lt!103131))))

(assert (=> d!71183 (= lt!103129 (lemmaConcatTwoListThenFirstIsPrefix!278 lt!103134 lt!103131))))

(assert (=> d!71183 (= lt!103131 (_2!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 call!13242))))))

(assert (=> d!71183 (= lt!103134 (list!1461 (charsOf!354 lt!103135)))))

(assert (=> d!71183 (= lt!103135 (head!864 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 call!13242))))))))

(assert (=> d!71183 (not (isEmpty!2279 rules!1920))))

(assert (=> d!71183 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 call!13242 lt!102094) lt!103140)))

(assert (= (and d!71183 res!116802) b!252012))

(assert (= (and b!252012 res!116801) b!252013))

(assert (= (and d!71183 c!47963) b!252014))

(assert (= (and d!71183 (not c!47963)) b!252015))

(declare-fun m!310397 () Bool)

(assert (=> b!252012 m!310397))

(declare-fun m!310403 () Bool)

(assert (=> b!252012 m!310403))

(declare-fun m!310407 () Bool)

(assert (=> b!252012 m!310407))

(assert (=> b!252012 m!310397))

(assert (=> b!252012 m!310403))

(declare-fun m!310411 () Bool)

(assert (=> b!252012 m!310411))

(assert (=> b!252012 m!310411))

(declare-fun m!310415 () Bool)

(assert (=> b!252012 m!310415))

(declare-fun m!310417 () Bool)

(assert (=> b!252014 m!310417))

(assert (=> b!252014 m!310397))

(declare-fun m!310419 () Bool)

(assert (=> b!252014 m!310419))

(declare-fun m!310421 () Bool)

(assert (=> b!252014 m!310421))

(declare-fun m!310423 () Bool)

(assert (=> b!252014 m!310423))

(declare-fun m!310425 () Bool)

(assert (=> b!252014 m!310425))

(assert (=> b!252014 m!310421))

(assert (=> b!252014 m!310419))

(declare-fun m!310429 () Bool)

(assert (=> b!252014 m!310429))

(assert (=> b!252014 m!310397))

(assert (=> b!252014 m!310403))

(assert (=> b!252013 m!310411))

(assert (=> b!252013 m!310411))

(assert (=> b!252013 m!310415))

(declare-fun m!310431 () Bool)

(assert (=> d!71183 m!310431))

(assert (=> d!71183 m!310421))

(declare-fun m!310433 () Bool)

(assert (=> d!71183 m!310433))

(assert (=> d!71183 m!306031))

(declare-fun m!310435 () Bool)

(assert (=> d!71183 m!310435))

(declare-fun m!310437 () Bool)

(assert (=> d!71183 m!310437))

(assert (=> d!71183 m!310411))

(declare-fun m!310439 () Bool)

(assert (=> d!71183 m!310439))

(declare-fun m!310441 () Bool)

(assert (=> d!71183 m!310441))

(assert (=> d!71183 m!310421))

(assert (=> d!71183 m!310433))

(declare-fun m!310443 () Bool)

(assert (=> d!71183 m!310443))

(declare-fun m!310445 () Bool)

(assert (=> d!71183 m!310445))

(declare-fun m!310447 () Bool)

(assert (=> d!71183 m!310447))

(assert (=> d!71183 m!310421))

(declare-fun m!310449 () Bool)

(assert (=> d!71183 m!310449))

(assert (=> d!71183 m!310437))

(declare-fun m!310451 () Bool)

(assert (=> d!71183 m!310451))

(assert (=> d!71183 m!310445))

(assert (=> d!71183 m!310397))

(declare-fun m!310453 () Bool)

(assert (=> d!71183 m!310453))

(assert (=> d!71183 m!310411))

(declare-fun m!310455 () Bool)

(assert (=> d!71183 m!310455))

(declare-fun m!310457 () Bool)

(assert (=> d!71183 m!310457))

(assert (=> d!71183 m!310439))

(assert (=> d!71183 m!310453))

(declare-fun m!310459 () Bool)

(assert (=> d!71183 m!310459))

(assert (=> d!71183 m!310433))

(declare-fun m!310461 () Bool)

(assert (=> d!71183 m!310461))

(assert (=> d!71183 m!310397))

(assert (=> d!71183 m!310403))

(assert (=> b!250283 d!71183))

(declare-fun d!71191 () Bool)

(declare-fun lt!103145 () Int)

(assert (=> d!71191 (= lt!103145 (size!2913 (list!1461 (_2!2274 lt!102163))))))

(assert (=> d!71191 (= lt!103145 (size!2921 (c!47452 (_2!2274 lt!102163))))))

(assert (=> d!71191 (= (size!2917 (_2!2274 lt!102163)) lt!103145)))

(declare-fun bs!27161 () Bool)

(assert (= bs!27161 d!71191))

(assert (=> bs!27161 m!306991))

(assert (=> bs!27161 m!306991))

(declare-fun m!310467 () Bool)

(assert (=> bs!27161 m!310467))

(declare-fun m!310469 () Bool)

(assert (=> bs!27161 m!310469))

(assert (=> b!250432 d!71191))

(declare-fun d!71193 () Bool)

(declare-fun lt!103146 () Int)

(assert (=> d!71193 (= lt!103146 (size!2913 (list!1461 (seqFromList!775 lt!101834))))))

(assert (=> d!71193 (= lt!103146 (size!2921 (c!47452 (seqFromList!775 lt!101834))))))

(assert (=> d!71193 (= (size!2917 (seqFromList!775 lt!101834)) lt!103146)))

(declare-fun bs!27162 () Bool)

(assert (= bs!27162 d!71193))

(assert (=> bs!27162 m!306033))

(assert (=> bs!27162 m!306983))

(assert (=> bs!27162 m!306983))

(assert (=> bs!27162 m!308637))

(declare-fun m!310475 () Bool)

(assert (=> bs!27162 m!310475))

(assert (=> b!250432 d!71193))

(assert (=> d!70347 d!70537))

(declare-fun b!252053 () Bool)

(declare-fun res!116825 () Bool)

(declare-fun e!156572 () Bool)

(assert (=> b!252053 (=> res!116825 e!156572)))

(assert (=> b!252053 (= res!116825 (not ((_ is Concat!1645) (regex!699 (rule!1276 (h!9077 tokens!465))))))))

(declare-fun e!156568 () Bool)

(assert (=> b!252053 (= e!156568 e!156572)))

(declare-fun b!252054 () Bool)

(declare-fun e!156571 () Bool)

(assert (=> b!252054 (= e!156572 e!156571)))

(declare-fun res!116823 () Bool)

(assert (=> b!252054 (=> (not res!116823) (not e!156571))))

(declare-fun call!13377 () Bool)

(assert (=> b!252054 (= res!116823 call!13377)))

(declare-fun b!252055 () Bool)

(declare-fun e!156567 () Bool)

(declare-fun e!156566 () Bool)

(assert (=> b!252055 (= e!156567 e!156566)))

(declare-fun c!47972 () Bool)

(assert (=> b!252055 (= c!47972 ((_ is Star!923) (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(declare-fun b!252056 () Bool)

(declare-fun e!156570 () Bool)

(declare-fun call!13379 () Bool)

(assert (=> b!252056 (= e!156570 call!13379)))

(declare-fun d!71195 () Bool)

(declare-fun res!116822 () Bool)

(assert (=> d!71195 (=> res!116822 e!156567)))

(assert (=> d!71195 (= res!116822 ((_ is ElementMatch!923) (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(assert (=> d!71195 (= (validRegex!239 (regex!699 (rule!1276 (h!9077 tokens!465)))) e!156567)))

(declare-fun b!252057 () Bool)

(declare-fun e!156569 () Bool)

(assert (=> b!252057 (= e!156569 call!13377)))

(declare-fun bm!13372 () Bool)

(declare-fun call!13378 () Bool)

(assert (=> bm!13372 (= call!13378 call!13379)))

(declare-fun bm!13373 () Bool)

(declare-fun c!47973 () Bool)

(assert (=> bm!13373 (= call!13379 (validRegex!239 (ite c!47972 (reg!1252 (regex!699 (rule!1276 (h!9077 tokens!465)))) (ite c!47973 (regOne!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))) (regTwo!2358 (regex!699 (rule!1276 (h!9077 tokens!465))))))))))

(declare-fun b!252058 () Bool)

(assert (=> b!252058 (= e!156566 e!156568)))

(assert (=> b!252058 (= c!47973 ((_ is Union!923) (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(declare-fun b!252059 () Bool)

(assert (=> b!252059 (= e!156566 e!156570)))

(declare-fun res!116826 () Bool)

(assert (=> b!252059 (= res!116826 (not (nullable!164 (reg!1252 (regex!699 (rule!1276 (h!9077 tokens!465)))))))))

(assert (=> b!252059 (=> (not res!116826) (not e!156570))))

(declare-fun b!252060 () Bool)

(declare-fun res!116824 () Bool)

(assert (=> b!252060 (=> (not res!116824) (not e!156569))))

(assert (=> b!252060 (= res!116824 call!13378)))

(assert (=> b!252060 (= e!156568 e!156569)))

(declare-fun b!252061 () Bool)

(assert (=> b!252061 (= e!156571 call!13378)))

(declare-fun bm!13374 () Bool)

(assert (=> bm!13374 (= call!13377 (validRegex!239 (ite c!47973 (regTwo!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))) (regOne!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))))))

(assert (= (and d!71195 (not res!116822)) b!252055))

(assert (= (and b!252055 c!47972) b!252059))

(assert (= (and b!252055 (not c!47972)) b!252058))

(assert (= (and b!252059 res!116826) b!252056))

(assert (= (and b!252058 c!47973) b!252060))

(assert (= (and b!252058 (not c!47973)) b!252053))

(assert (= (and b!252060 res!116824) b!252057))

(assert (= (and b!252053 (not res!116825)) b!252054))

(assert (= (and b!252054 res!116823) b!252061))

(assert (= (or b!252060 b!252061) bm!13372))

(assert (= (or b!252057 b!252054) bm!13374))

(assert (= (or b!252056 bm!13372) bm!13373))

(declare-fun m!310533 () Bool)

(assert (=> bm!13373 m!310533))

(declare-fun m!310535 () Bool)

(assert (=> b!252059 m!310535))

(declare-fun m!310537 () Bool)

(assert (=> bm!13374 m!310537))

(assert (=> d!70347 d!71195))

(declare-fun d!71219 () Bool)

(declare-fun e!156574 () Bool)

(assert (=> d!71219 e!156574))

(declare-fun res!116831 () Bool)

(assert (=> d!71219 (=> (not res!116831) (not e!156574))))

(declare-fun lt!103152 () BalanceConc!2448)

(assert (=> d!71219 (= res!116831 (= (list!1461 lt!103152) lt!101834))))

(assert (=> d!71219 (= lt!103152 (BalanceConc!2449 (fromList!151 lt!101834)))))

(assert (=> d!71219 (= (fromListB!281 lt!101834) lt!103152)))

(declare-fun b!252066 () Bool)

(assert (=> b!252066 (= e!156574 (isBalanced!317 (fromList!151 lt!101834)))))

(assert (= (and d!71219 res!116831) b!252066))

(declare-fun m!310559 () Bool)

(assert (=> d!71219 m!310559))

(declare-fun m!310561 () Bool)

(assert (=> d!71219 m!310561))

(assert (=> b!252066 m!310561))

(assert (=> b!252066 m!310561))

(declare-fun m!310563 () Bool)

(assert (=> b!252066 m!310563))

(assert (=> d!70315 d!71219))

(declare-fun b!252076 () Bool)

(declare-fun e!156578 () Bool)

(assert (=> b!252076 (= e!156578 (matchR!261 (regex!699 (h!9076 rules!1920)) (_1!2278 (findLongestMatchInner!71 (regex!699 (h!9076 rules!1920)) Nil!3678 (size!2913 Nil!3678) lt!101834 lt!101834 (size!2913 lt!101834)))))))

(declare-fun b!252077 () Bool)

(declare-fun e!156580 () Bool)

(declare-fun e!156579 () Bool)

(assert (=> b!252077 (= e!156580 e!156579)))

(declare-fun res!116841 () Bool)

(assert (=> b!252077 (=> (not res!116841) (not e!156579))))

(declare-fun lt!103162 () Option!760)

(assert (=> b!252077 (= res!116841 (matchR!261 (regex!699 (h!9076 rules!1920)) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103162))))))))

(declare-fun d!71223 () Bool)

(assert (=> d!71223 e!156580))

(declare-fun res!116839 () Bool)

(assert (=> d!71223 (=> res!116839 e!156580)))

(assert (=> d!71223 (= res!116839 (isEmpty!2282 lt!103162))))

(declare-fun e!156581 () Option!760)

(assert (=> d!71223 (= lt!103162 e!156581)))

(declare-fun c!47975 () Bool)

(declare-fun lt!103159 () tuple2!4124)

(assert (=> d!71223 (= c!47975 (isEmpty!2277 (_1!2278 lt!103159)))))

(assert (=> d!71223 (= lt!103159 (findLongestMatch!54 (regex!699 (h!9076 rules!1920)) lt!101834))))

(assert (=> d!71223 (ruleValid!85 thiss!17480 (h!9076 rules!1920))))

(assert (=> d!71223 (= (maxPrefixOneRule!129 thiss!17480 (h!9076 rules!1920) lt!101834) lt!103162)))

(declare-fun b!252078 () Bool)

(declare-fun res!116840 () Bool)

(assert (=> b!252078 (=> (not res!116840) (not e!156579))))

(assert (=> b!252078 (= res!116840 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!103162)))) (_2!2273 (get!1209 lt!103162))) lt!101834))))

(declare-fun b!252079 () Bool)

(declare-fun res!116845 () Bool)

(assert (=> b!252079 (=> (not res!116845) (not e!156579))))

(assert (=> b!252079 (= res!116845 (= (value!24237 (_1!2273 (get!1209 lt!103162))) (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!103162)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!103162)))))))))

(declare-fun b!252080 () Bool)

(assert (=> b!252080 (= e!156581 None!759)))

(declare-fun b!252081 () Bool)

(declare-fun res!116842 () Bool)

(assert (=> b!252081 (=> (not res!116842) (not e!156579))))

(assert (=> b!252081 (= res!116842 (= (rule!1276 (_1!2273 (get!1209 lt!103162))) (h!9076 rules!1920)))))

(declare-fun b!252082 () Bool)

(assert (=> b!252082 (= e!156579 (= (size!2910 (_1!2273 (get!1209 lt!103162))) (size!2913 (originalCharacters!742 (_1!2273 (get!1209 lt!103162))))))))

(declare-fun b!252083 () Bool)

(assert (=> b!252083 (= e!156581 (Some!759 (tuple2!4115 (Token!1143 (apply!698 (transformation!699 (h!9076 rules!1920)) (seqFromList!775 (_1!2278 lt!103159))) (h!9076 rules!1920) (size!2917 (seqFromList!775 (_1!2278 lt!103159))) (_1!2278 lt!103159)) (_2!2278 lt!103159))))))

(declare-fun lt!103160 () Unit!4472)

(assert (=> b!252083 (= lt!103160 (longestMatchIsAcceptedByMatchOrIsEmpty!55 (regex!699 (h!9076 rules!1920)) lt!101834))))

(declare-fun res!116843 () Bool)

(assert (=> b!252083 (= res!116843 (isEmpty!2277 (_1!2278 (findLongestMatchInner!71 (regex!699 (h!9076 rules!1920)) Nil!3678 (size!2913 Nil!3678) lt!101834 lt!101834 (size!2913 lt!101834)))))))

(assert (=> b!252083 (=> res!116843 e!156578)))

(assert (=> b!252083 e!156578))

(declare-fun lt!103158 () Unit!4472)

(assert (=> b!252083 (= lt!103158 lt!103160)))

(declare-fun lt!103161 () Unit!4472)

(assert (=> b!252083 (= lt!103161 (lemmaSemiInverse!52 (transformation!699 (h!9076 rules!1920)) (seqFromList!775 (_1!2278 lt!103159))))))

(declare-fun b!252084 () Bool)

(declare-fun res!116844 () Bool)

(assert (=> b!252084 (=> (not res!116844) (not e!156579))))

(assert (=> b!252084 (= res!116844 (< (size!2913 (_2!2273 (get!1209 lt!103162))) (size!2913 lt!101834)))))

(assert (= (and d!71223 c!47975) b!252080))

(assert (= (and d!71223 (not c!47975)) b!252083))

(assert (= (and b!252083 (not res!116843)) b!252076))

(assert (= (and d!71223 (not res!116839)) b!252077))

(assert (= (and b!252077 res!116841) b!252078))

(assert (= (and b!252078 res!116840) b!252084))

(assert (= (and b!252084 res!116844) b!252081))

(assert (= (and b!252081 res!116842) b!252079))

(assert (= (and b!252079 res!116845) b!252082))

(declare-fun m!310573 () Bool)

(assert (=> d!71223 m!310573))

(declare-fun m!310575 () Bool)

(assert (=> d!71223 m!310575))

(declare-fun m!310579 () Bool)

(assert (=> d!71223 m!310579))

(assert (=> d!71223 m!309285))

(declare-fun m!310583 () Bool)

(assert (=> b!252078 m!310583))

(declare-fun m!310585 () Bool)

(assert (=> b!252078 m!310585))

(assert (=> b!252078 m!310585))

(declare-fun m!310589 () Bool)

(assert (=> b!252078 m!310589))

(assert (=> b!252078 m!310589))

(declare-fun m!310593 () Bool)

(assert (=> b!252078 m!310593))

(assert (=> b!252077 m!310583))

(assert (=> b!252077 m!310585))

(assert (=> b!252077 m!310585))

(assert (=> b!252077 m!310589))

(assert (=> b!252077 m!310589))

(declare-fun m!310603 () Bool)

(assert (=> b!252077 m!310603))

(assert (=> b!252084 m!310583))

(declare-fun m!310605 () Bool)

(assert (=> b!252084 m!310605))

(assert (=> b!252084 m!306183))

(assert (=> b!252082 m!310583))

(declare-fun m!310607 () Bool)

(assert (=> b!252082 m!310607))

(assert (=> b!252076 m!309251))

(assert (=> b!252076 m!306183))

(assert (=> b!252076 m!309251))

(assert (=> b!252076 m!306183))

(declare-fun m!310611 () Bool)

(assert (=> b!252076 m!310611))

(declare-fun m!310613 () Bool)

(assert (=> b!252076 m!310613))

(assert (=> b!252081 m!310583))

(assert (=> b!252083 m!309251))

(declare-fun m!310615 () Bool)

(assert (=> b!252083 m!310615))

(declare-fun m!310617 () Bool)

(assert (=> b!252083 m!310617))

(assert (=> b!252083 m!310615))

(assert (=> b!252083 m!309251))

(assert (=> b!252083 m!306183))

(assert (=> b!252083 m!310611))

(assert (=> b!252083 m!310615))

(declare-fun m!310619 () Bool)

(assert (=> b!252083 m!310619))

(declare-fun m!310621 () Bool)

(assert (=> b!252083 m!310621))

(assert (=> b!252083 m!310615))

(declare-fun m!310623 () Bool)

(assert (=> b!252083 m!310623))

(assert (=> b!252083 m!306183))

(declare-fun m!310625 () Bool)

(assert (=> b!252083 m!310625))

(assert (=> b!252079 m!310583))

(declare-fun m!310631 () Bool)

(assert (=> b!252079 m!310631))

(assert (=> b!252079 m!310631))

(declare-fun m!310633 () Bool)

(assert (=> b!252079 m!310633))

(assert (=> bm!13235 d!71223))

(declare-fun d!71233 () Bool)

(assert (=> d!71233 (= (isDefined!611 lt!102184) (not (isEmpty!2282 lt!102184)))))

(declare-fun bs!27171 () Bool)

(assert (= bs!27171 d!71233))

(assert (=> bs!27171 m!307067))

(assert (=> b!250451 d!71233))

(assert (=> d!70181 d!70579))

(declare-fun d!71235 () Bool)

(assert (=> d!71235 (= (dropList!145 lt!101830 0) (drop!198 (list!1465 (c!47454 lt!101830)) 0))))

(declare-fun bs!27172 () Bool)

(assert (= bs!27172 d!71235))

(assert (=> bs!27172 m!309807))

(assert (=> bs!27172 m!309807))

(declare-fun m!310637 () Bool)

(assert (=> bs!27172 m!310637))

(assert (=> d!70181 d!71235))

(declare-fun d!71237 () Bool)

(assert (=> d!71237 (= (list!1461 lt!101894) (list!1463 (c!47452 lt!101894)))))

(declare-fun bs!27173 () Bool)

(assert (= bs!27173 d!71237))

(declare-fun m!310639 () Bool)

(assert (=> bs!27173 m!310639))

(assert (=> d!70181 d!71237))

(declare-fun d!71241 () Bool)

(declare-fun lt!103215 () List!3688)

(assert (=> d!71241 (= lt!103215 (++!942 (list!1461 (BalanceConc!2449 Empty!1220)) (printList!269 thiss!17480 (dropList!145 lt!101830 0))))))

(declare-fun e!156593 () List!3688)

(assert (=> d!71241 (= lt!103215 e!156593)))

(declare-fun c!47981 () Bool)

(assert (=> d!71241 (= c!47981 ((_ is Cons!3680) (dropList!145 lt!101830 0)))))

(assert (=> d!71241 (= (printListTailRec!113 thiss!17480 (dropList!145 lt!101830 0) (list!1461 (BalanceConc!2449 Empty!1220))) lt!103215)))

(declare-fun b!252102 () Bool)

(assert (=> b!252102 (= e!156593 (printListTailRec!113 thiss!17480 (t!35394 (dropList!145 lt!101830 0)) (++!942 (list!1461 (BalanceConc!2449 Empty!1220)) (list!1461 (charsOf!354 (h!9077 (dropList!145 lt!101830 0)))))))))

(declare-fun lt!103214 () List!3688)

(assert (=> b!252102 (= lt!103214 (list!1461 (charsOf!354 (h!9077 (dropList!145 lt!101830 0)))))))

(declare-fun lt!103213 () List!3688)

(assert (=> b!252102 (= lt!103213 (printList!269 thiss!17480 (t!35394 (dropList!145 lt!101830 0))))))

(declare-fun lt!103216 () Unit!4472)

(assert (=> b!252102 (= lt!103216 (lemmaConcatAssociativity!404 (list!1461 (BalanceConc!2449 Empty!1220)) lt!103214 lt!103213))))

(assert (=> b!252102 (= (++!942 (++!942 (list!1461 (BalanceConc!2449 Empty!1220)) lt!103214) lt!103213) (++!942 (list!1461 (BalanceConc!2449 Empty!1220)) (++!942 lt!103214 lt!103213)))))

(declare-fun lt!103212 () Unit!4472)

(assert (=> b!252102 (= lt!103212 lt!103216)))

(declare-fun b!252103 () Bool)

(assert (=> b!252103 (= e!156593 (list!1461 (BalanceConc!2449 Empty!1220)))))

(assert (= (and d!71241 c!47981) b!252102))

(assert (= (and d!71241 (not c!47981)) b!252103))

(assert (=> d!71241 m!306309))

(declare-fun m!310753 () Bool)

(assert (=> d!71241 m!310753))

(assert (=> d!71241 m!306307))

(assert (=> d!71241 m!310753))

(declare-fun m!310755 () Bool)

(assert (=> d!71241 m!310755))

(declare-fun m!310757 () Bool)

(assert (=> b!252102 m!310757))

(declare-fun m!310759 () Bool)

(assert (=> b!252102 m!310759))

(declare-fun m!310761 () Bool)

(assert (=> b!252102 m!310761))

(declare-fun m!310763 () Bool)

(assert (=> b!252102 m!310763))

(assert (=> b!252102 m!310763))

(declare-fun m!310765 () Bool)

(assert (=> b!252102 m!310765))

(assert (=> b!252102 m!306307))

(declare-fun m!310767 () Bool)

(assert (=> b!252102 m!310767))

(declare-fun m!310769 () Bool)

(assert (=> b!252102 m!310769))

(assert (=> b!252102 m!306307))

(assert (=> b!252102 m!310757))

(assert (=> b!252102 m!306307))

(assert (=> b!252102 m!310765))

(declare-fun m!310771 () Bool)

(assert (=> b!252102 m!310771))

(assert (=> b!252102 m!310771))

(declare-fun m!310773 () Bool)

(assert (=> b!252102 m!310773))

(assert (=> b!252102 m!306307))

(assert (=> b!252102 m!310761))

(declare-fun m!310775 () Bool)

(assert (=> b!252102 m!310775))

(assert (=> d!70181 d!71241))

(declare-fun d!71265 () Bool)

(assert (=> d!71265 (= (list!1461 (BalanceConc!2449 Empty!1220)) (list!1463 (c!47452 (BalanceConc!2449 Empty!1220))))))

(declare-fun bs!27181 () Bool)

(assert (= bs!27181 d!71265))

(declare-fun m!310777 () Bool)

(assert (=> bs!27181 m!310777))

(assert (=> d!70181 d!71265))

(declare-fun d!71267 () Bool)

(declare-fun lt!103219 () Int)

(assert (=> d!71267 (= lt!103219 (size!2918 (list!1460 (seqFromList!776 (t!35394 tokens!465)))))))

(assert (=> d!71267 (= lt!103219 (size!2919 (c!47454 (seqFromList!776 (t!35394 tokens!465)))))))

(assert (=> d!71267 (= (size!2911 (seqFromList!776 (t!35394 tokens!465))) lt!103219)))

(declare-fun bs!27182 () Bool)

(assert (= bs!27182 d!71267))

(assert (=> bs!27182 m!306121))

(assert (=> bs!27182 m!306763))

(assert (=> bs!27182 m!306763))

(declare-fun m!310779 () Bool)

(assert (=> bs!27182 m!310779))

(declare-fun m!310781 () Bool)

(assert (=> bs!27182 m!310781))

(assert (=> b!250294 d!71267))

(assert (=> b!250397 d!70567))

(declare-fun d!71269 () Bool)

(assert (=> d!71269 (= (get!1209 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))) (v!14538 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))

(assert (=> b!250397 d!71269))

(declare-fun d!71273 () Bool)

(declare-fun lt!103291 () Option!760)

(assert (=> d!71273 (= lt!103291 (maxPrefix!315 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(declare-fun e!156653 () Option!760)

(assert (=> d!71273 (= lt!103291 e!156653)))

(declare-fun c!48005 () Bool)

(assert (=> d!71273 (= c!48005 (and ((_ is Cons!3679) rules!1920) ((_ is Nil!3679) (t!35393 rules!1920))))))

(declare-fun lt!103292 () Unit!4472)

(declare-fun lt!103288 () Unit!4472)

(assert (=> d!71273 (= lt!103292 lt!103288)))

(assert (=> d!71273 (isPrefix!383 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (=> d!71273 (= lt!103288 (lemmaIsPrefixRefl!195 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(assert (=> d!71273 (rulesValidInductive!186 thiss!17480 rules!1920)))

(assert (=> d!71273 (= (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))) lt!103291)))

(declare-fun bm!13387 () Bool)

(declare-fun call!13392 () Option!760)

(declare-fun maxPrefixOneRuleZipper!31 (LexerInterface!585 Rule!1198 List!3688) Option!760)

(assert (=> bm!13387 (= call!13392 (maxPrefixOneRuleZipper!31 thiss!17480 (h!9076 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(declare-fun b!252207 () Bool)

(assert (=> b!252207 (= e!156653 call!13392)))

(declare-fun b!252208 () Bool)

(declare-fun lt!103289 () Option!760)

(declare-fun lt!103290 () Option!760)

(assert (=> b!252208 (= e!156653 (ite (and ((_ is None!759) lt!103289) ((_ is None!759) lt!103290)) None!759 (ite ((_ is None!759) lt!103290) lt!103289 (ite ((_ is None!759) lt!103289) lt!103290 (ite (>= (size!2910 (_1!2273 (v!14538 lt!103289))) (size!2910 (_1!2273 (v!14538 lt!103290)))) lt!103289 lt!103290)))))))

(assert (=> b!252208 (= lt!103289 call!13392)))

(assert (=> b!252208 (= lt!103290 (maxPrefixZipper!99 thiss!17480 (t!35393 rules!1920) (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))

(assert (= (and d!71273 c!48005) b!252207))

(assert (= (and d!71273 (not c!48005)) b!252208))

(assert (= (or b!252207 b!252208) bm!13387))

(assert (=> d!71273 m!306901))

(assert (=> d!71273 m!306903))

(assert (=> d!71273 m!306901))

(assert (=> d!71273 m!306901))

(assert (=> d!71273 m!307907))

(assert (=> d!71273 m!306901))

(assert (=> d!71273 m!306901))

(assert (=> d!71273 m!307909))

(assert (=> d!71273 m!306683))

(assert (=> bm!13387 m!306901))

(declare-fun m!311089 () Bool)

(assert (=> bm!13387 m!311089))

(assert (=> b!252208 m!306901))

(assert (=> b!252208 m!307739))

(assert (=> b!250397 d!71273))

(assert (=> b!250397 d!70577))

(declare-fun d!71335 () Bool)

(assert (=> d!71335 (= (isEmpty!2277 (tail!458 lt!101834)) ((_ is Nil!3678) (tail!458 lt!101834)))))

(assert (=> b!250517 d!71335))

(assert (=> b!250517 d!70467))

(declare-fun d!71337 () Bool)

(declare-fun lt!103295 () Token!1142)

(assert (=> d!71337 (= lt!103295 (apply!695 (list!1460 (_1!2274 lt!102197)) 0))))

(assert (=> d!71337 (= lt!103295 (apply!700 (c!47454 (_1!2274 lt!102197)) 0))))

(declare-fun e!156660 () Bool)

(assert (=> d!71337 e!156660))

(declare-fun res!116908 () Bool)

(assert (=> d!71337 (=> (not res!116908) (not e!156660))))

(assert (=> d!71337 (= res!116908 (<= 0 0))))

(assert (=> d!71337 (= (apply!694 (_1!2274 lt!102197) 0) lt!103295)))

(declare-fun b!252219 () Bool)

(assert (=> b!252219 (= e!156660 (< 0 (size!2911 (_1!2274 lt!102197))))))

(assert (= (and d!71337 res!116908) b!252219))

(declare-fun m!311091 () Bool)

(assert (=> d!71337 m!311091))

(assert (=> d!71337 m!311091))

(declare-fun m!311093 () Bool)

(assert (=> d!71337 m!311093))

(declare-fun m!311095 () Bool)

(assert (=> d!71337 m!311095))

(assert (=> b!252219 m!307121))

(assert (=> b!250528 d!71337))

(declare-fun d!71339 () Bool)

(declare-fun lt!103296 () BalanceConc!2448)

(assert (=> d!71339 (= (list!1461 lt!103296) (originalCharacters!742 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201))))))

(assert (=> d!71339 (= lt!103296 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201))))) (value!24237 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))))

(assert (=> d!71339 (= (charsOf!354 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201))) lt!103296)))

(declare-fun b_lambda!7455 () Bool)

(assert (=> (not b_lambda!7455) (not d!71339)))

(declare-fun t!35634 () Bool)

(declare-fun tb!12969 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))) t!35634) tb!12969))

(declare-fun b!252228 () Bool)

(declare-fun e!156665 () Bool)

(declare-fun tp!97248 () Bool)

(assert (=> b!252228 (= e!156665 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201))))) (value!24237 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))) tp!97248))))

(declare-fun result!16334 () Bool)

(assert (=> tb!12969 (= result!16334 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201))))) (value!24237 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201))))) e!156665))))

(assert (= tb!12969 b!252228))

(declare-fun m!311097 () Bool)

(assert (=> b!252228 m!311097))

(declare-fun m!311099 () Bool)

(assert (=> tb!12969 m!311099))

(assert (=> d!71339 t!35634))

(declare-fun b_and!19091 () Bool)

(assert (= b_and!19047 (and (=> t!35634 result!16334) b_and!19091)))

(declare-fun t!35636 () Bool)

(declare-fun tb!12971 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))) t!35636) tb!12971))

(declare-fun result!16336 () Bool)

(assert (= result!16336 result!16334))

(assert (=> d!71339 t!35636))

(declare-fun b_and!19093 () Bool)

(assert (= b_and!19043 (and (=> t!35636 result!16336) b_and!19093)))

(declare-fun t!35638 () Bool)

(declare-fun tb!12973 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))) t!35638) tb!12973))

(declare-fun result!16338 () Bool)

(assert (= result!16338 result!16334))

(assert (=> d!71339 t!35638))

(declare-fun b_and!19095 () Bool)

(assert (= b_and!19045 (and (=> t!35638 result!16338) b_and!19095)))

(declare-fun t!35640 () Bool)

(declare-fun tb!12975 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))) t!35640) tb!12975))

(declare-fun result!16340 () Bool)

(assert (= result!16340 result!16334))

(assert (=> d!71339 t!35640))

(declare-fun b_and!19097 () Bool)

(assert (= b_and!19049 (and (=> t!35640 result!16340) b_and!19097)))

(declare-fun tb!12977 () Bool)

(declare-fun t!35642 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))) t!35642) tb!12977))

(declare-fun result!16342 () Bool)

(assert (= result!16342 result!16334))

(assert (=> d!71339 t!35642))

(declare-fun b_and!19099 () Bool)

(assert (= b_and!19041 (and (=> t!35642 result!16342) b_and!19099)))

(declare-fun m!311101 () Bool)

(assert (=> d!71339 m!311101))

(declare-fun m!311103 () Bool)

(assert (=> d!71339 m!311103))

(assert (=> bm!13196 d!71339))

(declare-fun b!252229 () Bool)

(declare-fun e!156666 () List!3688)

(assert (=> b!252229 (= e!156666 lt!101832)))

(declare-fun b!252230 () Bool)

(assert (=> b!252230 (= e!156666 (Cons!3678 (h!9075 (t!35392 lt!101834)) (++!942 (t!35392 (t!35392 lt!101834)) lt!101832)))))

(declare-fun e!156667 () Bool)

(declare-fun lt!103297 () List!3688)

(declare-fun b!252232 () Bool)

(assert (=> b!252232 (= e!156667 (or (not (= lt!101832 Nil!3678)) (= lt!103297 (t!35392 lt!101834))))))

(declare-fun d!71341 () Bool)

(assert (=> d!71341 e!156667))

(declare-fun res!116910 () Bool)

(assert (=> d!71341 (=> (not res!116910) (not e!156667))))

(assert (=> d!71341 (= res!116910 (= (content!513 lt!103297) ((_ map or) (content!513 (t!35392 lt!101834)) (content!513 lt!101832))))))

(assert (=> d!71341 (= lt!103297 e!156666)))

(declare-fun c!48014 () Bool)

(assert (=> d!71341 (= c!48014 ((_ is Nil!3678) (t!35392 lt!101834)))))

(assert (=> d!71341 (= (++!942 (t!35392 lt!101834) lt!101832) lt!103297)))

(declare-fun b!252231 () Bool)

(declare-fun res!116909 () Bool)

(assert (=> b!252231 (=> (not res!116909) (not e!156667))))

(assert (=> b!252231 (= res!116909 (= (size!2913 lt!103297) (+ (size!2913 (t!35392 lt!101834)) (size!2913 lt!101832))))))

(assert (= (and d!71341 c!48014) b!252229))

(assert (= (and d!71341 (not c!48014)) b!252230))

(assert (= (and d!71341 res!116910) b!252231))

(assert (= (and b!252231 res!116909) b!252232))

(declare-fun m!311105 () Bool)

(assert (=> b!252230 m!311105))

(declare-fun m!311107 () Bool)

(assert (=> d!71341 m!311107))

(assert (=> d!71341 m!307821))

(assert (=> d!71341 m!306847))

(declare-fun m!311109 () Bool)

(assert (=> b!252231 m!311109))

(assert (=> b!252231 m!307497))

(assert (=> b!252231 m!306851))

(assert (=> b!250311 d!71341))

(declare-fun b!252233 () Bool)

(declare-fun e!156668 () List!3688)

(assert (=> b!252233 (= e!156668 (_2!2273 (get!1209 lt!102184)))))

(declare-fun b!252234 () Bool)

(assert (=> b!252234 (= e!156668 (Cons!3678 (h!9075 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))) (++!942 (t!35392 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))) (_2!2273 (get!1209 lt!102184)))))))

(declare-fun b!252236 () Bool)

(declare-fun e!156669 () Bool)

(declare-fun lt!103298 () List!3688)

(assert (=> b!252236 (= e!156669 (or (not (= (_2!2273 (get!1209 lt!102184)) Nil!3678)) (= lt!103298 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184)))))))))

(declare-fun d!71343 () Bool)

(assert (=> d!71343 e!156669))

(declare-fun res!116912 () Bool)

(assert (=> d!71343 (=> (not res!116912) (not e!156669))))

(assert (=> d!71343 (= res!116912 (= (content!513 lt!103298) ((_ map or) (content!513 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))) (content!513 (_2!2273 (get!1209 lt!102184))))))))

(assert (=> d!71343 (= lt!103298 e!156668)))

(declare-fun c!48015 () Bool)

(assert (=> d!71343 (= c!48015 ((_ is Nil!3678) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))))))

(assert (=> d!71343 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184)))) (_2!2273 (get!1209 lt!102184))) lt!103298)))

(declare-fun b!252235 () Bool)

(declare-fun res!116911 () Bool)

(assert (=> b!252235 (=> (not res!116911) (not e!156669))))

(assert (=> b!252235 (= res!116911 (= (size!2913 lt!103298) (+ (size!2913 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102184))))) (size!2913 (_2!2273 (get!1209 lt!102184))))))))

(assert (= (and d!71343 c!48015) b!252233))

(assert (= (and d!71343 (not c!48015)) b!252234))

(assert (= (and d!71343 res!116912) b!252235))

(assert (= (and b!252235 res!116911) b!252236))

(declare-fun m!311111 () Bool)

(assert (=> b!252234 m!311111))

(declare-fun m!311113 () Bool)

(assert (=> d!71343 m!311113))

(assert (=> d!71343 m!307055))

(declare-fun m!311115 () Bool)

(assert (=> d!71343 m!311115))

(declare-fun m!311117 () Bool)

(assert (=> d!71343 m!311117))

(declare-fun m!311119 () Bool)

(assert (=> b!252235 m!311119))

(assert (=> b!252235 m!307055))

(declare-fun m!311121 () Bool)

(assert (=> b!252235 m!311121))

(assert (=> b!252235 m!307063))

(assert (=> b!250454 d!71343))

(assert (=> b!250454 d!70829))

(assert (=> b!250454 d!70831))

(assert (=> b!250454 d!70827))

(assert (=> b!250191 d!70741))

(assert (=> b!250191 d!70183))

(declare-fun d!71345 () Bool)

(declare-fun lt!103301 () BalanceConc!2448)

(assert (=> d!71345 (= (list!1461 lt!103301) (printListTailRec!113 thiss!17480 (dropList!145 (singletonSeq!251 (h!9077 tokens!465)) 0) (list!1461 (BalanceConc!2449 Empty!1220))))))

(declare-fun e!156676 () BalanceConc!2448)

(assert (=> d!71345 (= lt!103301 e!156676)))

(declare-fun c!48020 () Bool)

(assert (=> d!71345 (= c!48020 (>= 0 (size!2911 (singletonSeq!251 (h!9077 tokens!465)))))))

(declare-fun e!156675 () Bool)

(assert (=> d!71345 e!156675))

(declare-fun res!116914 () Bool)

(assert (=> d!71345 (=> (not res!116914) (not e!156675))))

(assert (=> d!71345 (= res!116914 (>= 0 0))))

(assert (=> d!71345 (= (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)) 0 (BalanceConc!2449 Empty!1220)) lt!103301)))

(declare-fun b!252246 () Bool)

(assert (=> b!252246 (= e!156675 (<= 0 (size!2911 (singletonSeq!251 (h!9077 tokens!465)))))))

(declare-fun b!252247 () Bool)

(assert (=> b!252247 (= e!156676 (BalanceConc!2449 Empty!1220))))

(declare-fun b!252248 () Bool)

(assert (=> b!252248 (= e!156676 (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)) (+ 0 1) (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (apply!694 (singletonSeq!251 (h!9077 tokens!465)) 0)))))))

(declare-fun lt!103302 () List!3690)

(assert (=> b!252248 (= lt!103302 (list!1460 (singletonSeq!251 (h!9077 tokens!465))))))

(declare-fun lt!103306 () Unit!4472)

(assert (=> b!252248 (= lt!103306 (lemmaDropApply!185 lt!103302 0))))

(assert (=> b!252248 (= (head!864 (drop!198 lt!103302 0)) (apply!695 lt!103302 0))))

(declare-fun lt!103304 () Unit!4472)

(assert (=> b!252248 (= lt!103304 lt!103306)))

(declare-fun lt!103303 () List!3690)

(assert (=> b!252248 (= lt!103303 (list!1460 (singletonSeq!251 (h!9077 tokens!465))))))

(declare-fun lt!103305 () Unit!4472)

(assert (=> b!252248 (= lt!103305 (lemmaDropTail!177 lt!103303 0))))

(assert (=> b!252248 (= (tail!455 (drop!198 lt!103303 0)) (drop!198 lt!103303 (+ 0 1)))))

(declare-fun lt!103300 () Unit!4472)

(assert (=> b!252248 (= lt!103300 lt!103305)))

(assert (= (and d!71345 res!116914) b!252246))

(assert (= (and d!71345 c!48020) b!252247))

(assert (= (and d!71345 (not c!48020)) b!252248))

(assert (=> d!71345 m!306307))

(assert (=> d!71345 m!306099))

(declare-fun m!311133 () Bool)

(assert (=> d!71345 m!311133))

(assert (=> d!71345 m!311133))

(assert (=> d!71345 m!306307))

(declare-fun m!311135 () Bool)

(assert (=> d!71345 m!311135))

(declare-fun m!311137 () Bool)

(assert (=> d!71345 m!311137))

(assert (=> d!71345 m!306099))

(declare-fun m!311139 () Bool)

(assert (=> d!71345 m!311139))

(assert (=> b!252246 m!306099))

(assert (=> b!252246 m!311139))

(declare-fun m!311141 () Bool)

(assert (=> b!252248 m!311141))

(declare-fun m!311143 () Bool)

(assert (=> b!252248 m!311143))

(assert (=> b!252248 m!306099))

(declare-fun m!311145 () Bool)

(assert (=> b!252248 m!311145))

(declare-fun m!311147 () Bool)

(assert (=> b!252248 m!311147))

(declare-fun m!311149 () Bool)

(assert (=> b!252248 m!311149))

(assert (=> b!252248 m!306099))

(assert (=> b!252248 m!307011))

(declare-fun m!311151 () Bool)

(assert (=> b!252248 m!311151))

(declare-fun m!311153 () Bool)

(assert (=> b!252248 m!311153))

(declare-fun m!311155 () Bool)

(assert (=> b!252248 m!311155))

(assert (=> b!252248 m!311153))

(declare-fun m!311157 () Bool)

(assert (=> b!252248 m!311157))

(assert (=> b!252248 m!306099))

(declare-fun m!311165 () Bool)

(assert (=> b!252248 m!311165))

(declare-fun m!311167 () Bool)

(assert (=> b!252248 m!311167))

(assert (=> b!252248 m!311141))

(assert (=> b!252248 m!311145))

(declare-fun m!311169 () Bool)

(assert (=> b!252248 m!311169))

(assert (=> b!252248 m!311169))

(assert (=> b!252248 m!311165))

(assert (=> b!250191 d!71345))

(declare-fun b!252258 () Bool)

(declare-fun res!116916 () Bool)

(declare-fun e!156683 () Bool)

(assert (=> b!252258 (=> (not res!116916) (not e!156683))))

(declare-fun lt!103317 () Token!1142)

(assert (=> b!252258 (= res!116916 (matchR!261 (regex!699 (get!1213 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!103317))))) (list!1461 (charsOf!354 lt!103317))))))

(declare-fun b!252260 () Bool)

(declare-fun e!156682 () Unit!4472)

(declare-fun Unit!4518 () Unit!4472)

(assert (=> b!252260 (= e!156682 Unit!4518)))

(declare-fun lt!103309 () List!3688)

(assert (=> b!252260 (= lt!103309 (++!942 call!13233 lt!102043))))

(declare-fun lt!103318 () Unit!4472)

(assert (=> b!252260 (= lt!103318 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!44 thiss!17480 (rule!1276 lt!103317) rules!1920 lt!103309))))

(assert (=> b!252260 (isEmpty!2282 (maxPrefixOneRule!129 thiss!17480 (rule!1276 lt!103317) lt!103309))))

(declare-fun lt!103314 () Unit!4472)

(assert (=> b!252260 (= lt!103314 lt!103318)))

(declare-fun lt!103321 () List!3688)

(assert (=> b!252260 (= lt!103321 (list!1461 (charsOf!354 lt!103317)))))

(declare-fun lt!103325 () Unit!4472)

(assert (=> b!252260 (= lt!103325 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!44 thiss!17480 (rule!1276 lt!103317) lt!103321 (++!942 call!13233 lt!102043)))))

(assert (=> b!252260 (not (matchR!261 (regex!699 (rule!1276 lt!103317)) lt!103321))))

(declare-fun lt!103320 () Unit!4472)

(assert (=> b!252260 (= lt!103320 lt!103325)))

(assert (=> b!252260 false))

(declare-fun b!252261 () Bool)

(declare-fun Unit!4519 () Unit!4472)

(assert (=> b!252261 (= e!156682 Unit!4519)))

(declare-fun b!252259 () Bool)

(assert (=> b!252259 (= e!156683 (= (rule!1276 lt!103317) (get!1213 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!103317))))))))

(declare-fun d!71351 () Bool)

(assert (=> d!71351 (isDefined!611 (maxPrefix!315 thiss!17480 rules!1920 (++!942 call!13233 lt!102043)))))

(declare-fun lt!103322 () Unit!4472)

(assert (=> d!71351 (= lt!103322 e!156682)))

(declare-fun c!48025 () Bool)

(assert (=> d!71351 (= c!48025 (isEmpty!2282 (maxPrefix!315 thiss!17480 rules!1920 (++!942 call!13233 lt!102043))))))

(declare-fun lt!103315 () Unit!4472)

(declare-fun lt!103323 () Unit!4472)

(assert (=> d!71351 (= lt!103315 lt!103323)))

(assert (=> d!71351 e!156683))

(declare-fun res!116917 () Bool)

(assert (=> d!71351 (=> (not res!116917) (not e!156683))))

(assert (=> d!71351 (= res!116917 (isDefined!614 (getRuleFromTag!112 thiss!17480 rules!1920 (tag!907 (rule!1276 lt!103317)))))))

(assert (=> d!71351 (= lt!103323 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!112 thiss!17480 rules!1920 call!13233 lt!103317))))

(declare-fun lt!103312 () Unit!4472)

(declare-fun lt!103319 () Unit!4472)

(assert (=> d!71351 (= lt!103312 lt!103319)))

(declare-fun lt!103310 () List!3688)

(assert (=> d!71351 (isPrefix!383 lt!103310 (++!942 call!13233 lt!102043))))

(assert (=> d!71351 (= lt!103319 (lemmaPrefixStaysPrefixWhenAddingToSuffix!44 lt!103310 call!13233 lt!102043))))

(assert (=> d!71351 (= lt!103310 (list!1461 (charsOf!354 lt!103317)))))

(declare-fun lt!103324 () Unit!4472)

(declare-fun lt!103311 () Unit!4472)

(assert (=> d!71351 (= lt!103324 lt!103311)))

(declare-fun lt!103316 () List!3688)

(declare-fun lt!103313 () List!3688)

(assert (=> d!71351 (isPrefix!383 lt!103316 (++!942 lt!103316 lt!103313))))

(assert (=> d!71351 (= lt!103311 (lemmaConcatTwoListThenFirstIsPrefix!278 lt!103316 lt!103313))))

(assert (=> d!71351 (= lt!103313 (_2!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 call!13233))))))

(assert (=> d!71351 (= lt!103316 (list!1461 (charsOf!354 lt!103317)))))

(assert (=> d!71351 (= lt!103317 (head!864 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 call!13233))))))))

(assert (=> d!71351 (not (isEmpty!2279 rules!1920))))

(assert (=> d!71351 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 call!13233 lt!102043) lt!103322)))

(assert (= (and d!71351 res!116917) b!252258))

(assert (= (and b!252258 res!116916) b!252259))

(assert (= (and d!71351 c!48025) b!252260))

(assert (= (and d!71351 (not c!48025)) b!252261))

(declare-fun m!311179 () Bool)

(assert (=> b!252258 m!311179))

(declare-fun m!311181 () Bool)

(assert (=> b!252258 m!311181))

(declare-fun m!311183 () Bool)

(assert (=> b!252258 m!311183))

(assert (=> b!252258 m!311179))

(assert (=> b!252258 m!311181))

(declare-fun m!311185 () Bool)

(assert (=> b!252258 m!311185))

(assert (=> b!252258 m!311185))

(declare-fun m!311187 () Bool)

(assert (=> b!252258 m!311187))

(declare-fun m!311189 () Bool)

(assert (=> b!252260 m!311189))

(assert (=> b!252260 m!311179))

(declare-fun m!311191 () Bool)

(assert (=> b!252260 m!311191))

(declare-fun m!311193 () Bool)

(assert (=> b!252260 m!311193))

(declare-fun m!311195 () Bool)

(assert (=> b!252260 m!311195))

(declare-fun m!311197 () Bool)

(assert (=> b!252260 m!311197))

(assert (=> b!252260 m!311193))

(assert (=> b!252260 m!311191))

(declare-fun m!311199 () Bool)

(assert (=> b!252260 m!311199))

(assert (=> b!252260 m!311179))

(assert (=> b!252260 m!311181))

(assert (=> b!252259 m!311185))

(assert (=> b!252259 m!311185))

(assert (=> b!252259 m!311187))

(declare-fun m!311201 () Bool)

(assert (=> d!71351 m!311201))

(assert (=> d!71351 m!311193))

(declare-fun m!311203 () Bool)

(assert (=> d!71351 m!311203))

(assert (=> d!71351 m!306031))

(declare-fun m!311205 () Bool)

(assert (=> d!71351 m!311205))

(declare-fun m!311207 () Bool)

(assert (=> d!71351 m!311207))

(assert (=> d!71351 m!311185))

(declare-fun m!311209 () Bool)

(assert (=> d!71351 m!311209))

(declare-fun m!311211 () Bool)

(assert (=> d!71351 m!311211))

(assert (=> d!71351 m!311193))

(assert (=> d!71351 m!311203))

(declare-fun m!311213 () Bool)

(assert (=> d!71351 m!311213))

(declare-fun m!311215 () Bool)

(assert (=> d!71351 m!311215))

(declare-fun m!311217 () Bool)

(assert (=> d!71351 m!311217))

(assert (=> d!71351 m!311193))

(declare-fun m!311219 () Bool)

(assert (=> d!71351 m!311219))

(assert (=> d!71351 m!311207))

(declare-fun m!311221 () Bool)

(assert (=> d!71351 m!311221))

(assert (=> d!71351 m!311215))

(assert (=> d!71351 m!311179))

(declare-fun m!311223 () Bool)

(assert (=> d!71351 m!311223))

(assert (=> d!71351 m!311185))

(declare-fun m!311225 () Bool)

(assert (=> d!71351 m!311225))

(declare-fun m!311227 () Bool)

(assert (=> d!71351 m!311227))

(assert (=> d!71351 m!311209))

(assert (=> d!71351 m!311223))

(declare-fun m!311229 () Bool)

(assert (=> d!71351 m!311229))

(assert (=> d!71351 m!311203))

(declare-fun m!311231 () Bool)

(assert (=> d!71351 m!311231))

(assert (=> d!71351 m!311179))

(assert (=> d!71351 m!311181))

(assert (=> b!250191 d!71351))

(declare-fun d!71355 () Bool)

(declare-fun lt!103326 () Int)

(assert (=> d!71355 (= lt!103326 (size!2918 (list!1460 (_1!2274 lt!102227))))))

(assert (=> d!71355 (= lt!103326 (size!2919 (c!47454 (_1!2274 lt!102227))))))

(assert (=> d!71355 (= (size!2911 (_1!2274 lt!102227)) lt!103326)))

(declare-fun bs!27209 () Bool)

(assert (= bs!27209 d!71355))

(assert (=> bs!27209 m!307209))

(assert (=> bs!27209 m!307209))

(declare-fun m!311233 () Bool)

(assert (=> bs!27209 m!311233))

(declare-fun m!311235 () Bool)

(assert (=> bs!27209 m!311235))

(assert (=> d!70389 d!71355))

(declare-fun b!252269 () Bool)

(declare-fun e!156690 () tuple2!4116)

(declare-fun lt!103353 () BalanceConc!2448)

(assert (=> b!252269 (= e!156690 (tuple2!4117 (BalanceConc!2451 Empty!1221) lt!103353))))

(declare-fun lt!103348 () Option!761)

(declare-fun b!252270 () Bool)

(declare-fun lt!103350 () tuple2!4116)

(assert (=> b!252270 (= lt!103350 (lexRec!85 thiss!17480 rules!1920 (_2!2275 (v!14539 lt!103348))))))

(assert (=> b!252270 (= e!156690 (tuple2!4117 (prepend!168 (_1!2274 lt!103350) (_1!2275 (v!14539 lt!103348))) (_2!2274 lt!103350)))))

(declare-fun b!252271 () Bool)

(declare-fun e!156689 () tuple2!4116)

(assert (=> b!252271 (= e!156689 (tuple2!4117 (BalanceConc!2451 Empty!1221) lt!101841))))

(declare-fun b!252272 () Bool)

(declare-fun lt!103347 () Option!761)

(declare-fun lt!103352 () BalanceConc!2448)

(assert (=> b!252272 (= e!156689 (lexTailRecV2!158 thiss!17480 rules!1920 lt!101841 lt!103352 (_2!2275 (v!14539 lt!103347)) (append!90 (BalanceConc!2451 Empty!1221) (_1!2275 (v!14539 lt!103347)))))))

(declare-fun lt!103342 () tuple2!4116)

(assert (=> b!252272 (= lt!103342 (lexRec!85 thiss!17480 rules!1920 (_2!2275 (v!14539 lt!103347))))))

(declare-fun lt!103355 () List!3688)

(assert (=> b!252272 (= lt!103355 (list!1461 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!103356 () List!3688)

(assert (=> b!252272 (= lt!103356 (list!1461 (charsOf!354 (_1!2275 (v!14539 lt!103347)))))))

(declare-fun lt!103327 () List!3688)

(assert (=> b!252272 (= lt!103327 (list!1461 (_2!2275 (v!14539 lt!103347))))))

(declare-fun lt!103358 () Unit!4472)

(assert (=> b!252272 (= lt!103358 (lemmaConcatAssociativity!404 lt!103355 lt!103356 lt!103327))))

(assert (=> b!252272 (= (++!942 (++!942 lt!103355 lt!103356) lt!103327) (++!942 lt!103355 (++!942 lt!103356 lt!103327)))))

(declare-fun lt!103340 () Unit!4472)

(assert (=> b!252272 (= lt!103340 lt!103358)))

(declare-fun lt!103359 () Option!761)

(assert (=> b!252272 (= lt!103359 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 lt!101841))))

(declare-fun c!48030 () Bool)

(assert (=> b!252272 (= c!48030 ((_ is Some!760) lt!103359))))

(declare-fun e!156691 () tuple2!4116)

(assert (=> b!252272 (= (lexRec!85 thiss!17480 rules!1920 lt!101841) e!156691)))

(declare-fun lt!103343 () Unit!4472)

(declare-fun Unit!4520 () Unit!4472)

(assert (=> b!252272 (= lt!103343 Unit!4520)))

(declare-fun lt!103338 () List!3690)

(assert (=> b!252272 (= lt!103338 (list!1460 (BalanceConc!2451 Empty!1221)))))

(declare-fun lt!103357 () List!3690)

(assert (=> b!252272 (= lt!103357 (Cons!3680 (_1!2275 (v!14539 lt!103347)) Nil!3680))))

(declare-fun lt!103330 () List!3690)

(assert (=> b!252272 (= lt!103330 (list!1460 (_1!2274 lt!103342)))))

(declare-fun lt!103361 () Unit!4472)

(assert (=> b!252272 (= lt!103361 (lemmaConcatAssociativity!405 lt!103338 lt!103357 lt!103330))))

(assert (=> b!252272 (= (++!946 (++!946 lt!103338 lt!103357) lt!103330) (++!946 lt!103338 (++!946 lt!103357 lt!103330)))))

(declare-fun lt!103345 () Unit!4472)

(assert (=> b!252272 (= lt!103345 lt!103361)))

(declare-fun lt!103362 () List!3688)

(assert (=> b!252272 (= lt!103362 (++!942 (list!1461 (BalanceConc!2449 Empty!1220)) (list!1461 (charsOf!354 (_1!2275 (v!14539 lt!103347))))))))

(declare-fun lt!103333 () List!3688)

(assert (=> b!252272 (= lt!103333 (list!1461 (_2!2275 (v!14539 lt!103347))))))

(declare-fun lt!103360 () List!3690)

(assert (=> b!252272 (= lt!103360 (list!1460 (append!90 (BalanceConc!2451 Empty!1221) (_1!2275 (v!14539 lt!103347)))))))

(declare-fun lt!103336 () Unit!4472)

(assert (=> b!252272 (= lt!103336 (lemmaLexThenLexPrefix!72 thiss!17480 rules!1920 lt!103362 lt!103333 lt!103360 (list!1460 (_1!2274 lt!103342)) (list!1461 (_2!2274 lt!103342))))))

(assert (=> b!252272 (= (lexList!191 thiss!17480 rules!1920 lt!103362) (tuple2!4123 lt!103360 Nil!3678))))

(declare-fun lt!103346 () Unit!4472)

(assert (=> b!252272 (= lt!103346 lt!103336)))

(assert (=> b!252272 (= lt!103353 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (_1!2275 (v!14539 lt!103347)))))))

(assert (=> b!252272 (= lt!103348 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 lt!103353))))

(declare-fun c!48029 () Bool)

(assert (=> b!252272 (= c!48029 ((_ is Some!760) lt!103348))))

(assert (=> b!252272 (= (lexRec!85 thiss!17480 rules!1920 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (_1!2275 (v!14539 lt!103347))))) e!156690)))

(declare-fun lt!103334 () Unit!4472)

(declare-fun Unit!4521 () Unit!4472)

(assert (=> b!252272 (= lt!103334 Unit!4521)))

(assert (=> b!252272 (= lt!103352 (++!943 (BalanceConc!2449 Empty!1220) (charsOf!354 (_1!2275 (v!14539 lt!103347)))))))

(declare-fun lt!103349 () List!3688)

(assert (=> b!252272 (= lt!103349 (list!1461 lt!103352))))

(declare-fun lt!103339 () List!3688)

(assert (=> b!252272 (= lt!103339 (list!1461 (_2!2275 (v!14539 lt!103347))))))

(declare-fun lt!103335 () Unit!4472)

(assert (=> b!252272 (= lt!103335 (lemmaConcatTwoListThenFSndIsSuffix!70 lt!103349 lt!103339))))

(assert (=> b!252272 (isSuffix!70 lt!103339 (++!942 lt!103349 lt!103339))))

(declare-fun lt!103331 () Unit!4472)

(assert (=> b!252272 (= lt!103331 lt!103335)))

(declare-fun b!252273 () Bool)

(assert (=> b!252273 (= e!156691 (tuple2!4117 (BalanceConc!2451 Empty!1221) lt!101841))))

(declare-fun d!71357 () Bool)

(declare-fun e!156692 () Bool)

(assert (=> d!71357 e!156692))

(declare-fun res!116920 () Bool)

(assert (=> d!71357 (=> (not res!116920) (not e!156692))))

(declare-fun lt!103332 () tuple2!4116)

(assert (=> d!71357 (= res!116920 (= (list!1460 (_1!2274 lt!103332)) (list!1460 (_1!2274 (lexRec!85 thiss!17480 rules!1920 lt!101841)))))))

(assert (=> d!71357 (= lt!103332 e!156689)))

(declare-fun c!48026 () Bool)

(assert (=> d!71357 (= c!48026 ((_ is Some!760) lt!103347))))

(assert (=> d!71357 (= lt!103347 (maxPrefixZipperSequenceV2!70 thiss!17480 rules!1920 lt!101841 lt!101841))))

(declare-fun lt!103341 () Unit!4472)

(declare-fun lt!103344 () Unit!4472)

(assert (=> d!71357 (= lt!103341 lt!103344)))

(declare-fun lt!103337 () List!3688)

(declare-fun lt!103354 () List!3688)

(assert (=> d!71357 (isSuffix!70 lt!103337 (++!942 lt!103354 lt!103337))))

(assert (=> d!71357 (= lt!103344 (lemmaConcatTwoListThenFSndIsSuffix!70 lt!103354 lt!103337))))

(assert (=> d!71357 (= lt!103337 (list!1461 lt!101841))))

(assert (=> d!71357 (= lt!103354 (list!1461 (BalanceConc!2449 Empty!1220)))))

(assert (=> d!71357 (= (lexTailRecV2!158 thiss!17480 rules!1920 lt!101841 (BalanceConc!2449 Empty!1220) lt!101841 (BalanceConc!2451 Empty!1221)) lt!103332)))

(declare-fun b!252274 () Bool)

(assert (=> b!252274 (= e!156692 (= (list!1461 (_2!2274 lt!103332)) (list!1461 (_2!2274 (lexRec!85 thiss!17480 rules!1920 lt!101841)))))))

(declare-fun lt!103351 () tuple2!4116)

(declare-fun b!252275 () Bool)

(assert (=> b!252275 (= lt!103351 (lexRec!85 thiss!17480 rules!1920 (_2!2275 (v!14539 lt!103359))))))

(assert (=> b!252275 (= e!156691 (tuple2!4117 (prepend!168 (_1!2274 lt!103351) (_1!2275 (v!14539 lt!103359))) (_2!2274 lt!103351)))))

(assert (= (and d!71357 c!48026) b!252272))

(assert (= (and d!71357 (not c!48026)) b!252271))

(assert (= (and b!252272 c!48030) b!252275))

(assert (= (and b!252272 (not c!48030)) b!252273))

(assert (= (and b!252272 c!48029) b!252270))

(assert (= (and b!252272 (not c!48029)) b!252269))

(assert (= (and d!71357 res!116920) b!252274))

(declare-fun m!311247 () Bool)

(assert (=> b!252274 m!311247))

(declare-fun m!311249 () Bool)

(assert (=> b!252274 m!311249))

(declare-fun m!311251 () Bool)

(assert (=> b!252274 m!311251))

(declare-fun m!311255 () Bool)

(assert (=> b!252270 m!311255))

(declare-fun m!311258 () Bool)

(assert (=> b!252270 m!311258))

(declare-fun m!311261 () Bool)

(assert (=> b!252275 m!311261))

(declare-fun m!311265 () Bool)

(assert (=> b!252275 m!311265))

(assert (=> b!252272 m!306307))

(declare-fun m!311269 () Bool)

(assert (=> b!252272 m!311269))

(declare-fun m!311271 () Bool)

(assert (=> b!252272 m!311271))

(assert (=> b!252272 m!306307))

(declare-fun m!311273 () Bool)

(assert (=> b!252272 m!311273))

(declare-fun m!311275 () Bool)

(assert (=> b!252272 m!311275))

(declare-fun m!311277 () Bool)

(assert (=> b!252272 m!311277))

(declare-fun m!311279 () Bool)

(assert (=> b!252272 m!311279))

(declare-fun m!311281 () Bool)

(assert (=> b!252272 m!311281))

(declare-fun m!311283 () Bool)

(assert (=> b!252272 m!311283))

(assert (=> b!252272 m!311281))

(declare-fun m!311285 () Bool)

(assert (=> b!252272 m!311285))

(declare-fun m!311287 () Bool)

(assert (=> b!252272 m!311287))

(declare-fun m!311289 () Bool)

(assert (=> b!252272 m!311289))

(declare-fun m!311291 () Bool)

(assert (=> b!252272 m!311291))

(assert (=> b!252272 m!309199))

(declare-fun m!311293 () Bool)

(assert (=> b!252272 m!311293))

(declare-fun m!311295 () Bool)

(assert (=> b!252272 m!311295))

(declare-fun m!311297 () Bool)

(assert (=> b!252272 m!311297))

(declare-fun m!311299 () Bool)

(assert (=> b!252272 m!311299))

(declare-fun m!311301 () Bool)

(assert (=> b!252272 m!311301))

(assert (=> b!252272 m!311273))

(declare-fun m!311303 () Bool)

(assert (=> b!252272 m!311303))

(declare-fun m!311305 () Bool)

(assert (=> b!252272 m!311305))

(declare-fun m!311307 () Bool)

(assert (=> b!252272 m!311307))

(assert (=> b!252272 m!311249))

(assert (=> b!252272 m!311291))

(declare-fun m!311309 () Bool)

(assert (=> b!252272 m!311309))

(assert (=> b!252272 m!311293))

(assert (=> b!252272 m!311283))

(declare-fun m!311311 () Bool)

(assert (=> b!252272 m!311311))

(declare-fun m!311313 () Bool)

(assert (=> b!252272 m!311313))

(declare-fun m!311315 () Bool)

(assert (=> b!252272 m!311315))

(declare-fun m!311317 () Bool)

(assert (=> b!252272 m!311317))

(declare-fun m!311319 () Bool)

(assert (=> b!252272 m!311319))

(assert (=> b!252272 m!311307))

(declare-fun m!311321 () Bool)

(assert (=> b!252272 m!311321))

(assert (=> b!252272 m!311293))

(declare-fun m!311323 () Bool)

(assert (=> b!252272 m!311323))

(assert (=> b!252272 m!311301))

(assert (=> b!252272 m!311297))

(assert (=> b!252272 m!311301))

(assert (=> b!252272 m!311269))

(declare-fun m!311325 () Bool)

(assert (=> b!252272 m!311325))

(declare-fun m!311327 () Bool)

(assert (=> b!252272 m!311327))

(assert (=> b!252272 m!311285))

(assert (=> b!252272 m!311325))

(assert (=> d!71357 m!306307))

(assert (=> d!71357 m!311249))

(assert (=> d!71357 m!306123))

(declare-fun m!311329 () Bool)

(assert (=> d!71357 m!311329))

(declare-fun m!311331 () Bool)

(assert (=> d!71357 m!311331))

(declare-fun m!311333 () Bool)

(assert (=> d!71357 m!311333))

(declare-fun m!311335 () Bool)

(assert (=> d!71357 m!311335))

(declare-fun m!311337 () Bool)

(assert (=> d!71357 m!311337))

(assert (=> d!71357 m!311335))

(declare-fun m!311339 () Bool)

(assert (=> d!71357 m!311339))

(assert (=> d!70389 d!71357))

(declare-fun d!71367 () Bool)

(declare-fun c!48033 () Bool)

(assert (=> d!71367 (= c!48033 ((_ is Nil!3678) lt!102115))))

(declare-fun e!156702 () (InoxSet C!2768))

(assert (=> d!71367 (= (content!513 lt!102115) e!156702)))

(declare-fun b!252288 () Bool)

(assert (=> b!252288 (= e!156702 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!252289 () Bool)

(assert (=> b!252289 (= e!156702 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!102115) true) (content!513 (t!35392 lt!102115))))))

(assert (= (and d!71367 c!48033) b!252288))

(assert (= (and d!71367 (not c!48033)) b!252289))

(declare-fun m!311341 () Bool)

(assert (=> b!252289 m!311341))

(declare-fun m!311343 () Bool)

(assert (=> b!252289 m!311343))

(assert (=> d!70267 d!71367))

(declare-fun d!71369 () Bool)

(declare-fun c!48034 () Bool)

(assert (=> d!71369 (= c!48034 ((_ is Nil!3678) (++!942 lt!101834 lt!101837)))))

(declare-fun e!156703 () (InoxSet C!2768))

(assert (=> d!71369 (= (content!513 (++!942 lt!101834 lt!101837)) e!156703)))

(declare-fun b!252290 () Bool)

(assert (=> b!252290 (= e!156703 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!252291 () Bool)

(assert (=> b!252291 (= e!156703 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 (++!942 lt!101834 lt!101837)) true) (content!513 (t!35392 (++!942 lt!101834 lt!101837)))))))

(assert (= (and d!71369 c!48034) b!252290))

(assert (= (and d!71369 (not c!48034)) b!252291))

(declare-fun m!311345 () Bool)

(assert (=> b!252291 m!311345))

(assert (=> b!252291 m!309935))

(assert (=> d!70267 d!71369))

(assert (=> d!70267 d!70565))

(declare-fun b!252292 () Bool)

(declare-fun e!156704 () List!3688)

(assert (=> b!252292 (= e!156704 lt!102094)))

(declare-fun b!252293 () Bool)

(assert (=> b!252293 (= e!156704 (Cons!3678 (h!9075 call!13243) (++!942 (t!35392 call!13243) lt!102094)))))

(declare-fun e!156705 () Bool)

(declare-fun lt!103372 () List!3688)

(declare-fun b!252295 () Bool)

(assert (=> b!252295 (= e!156705 (or (not (= lt!102094 Nil!3678)) (= lt!103372 call!13243)))))

(declare-fun d!71371 () Bool)

(assert (=> d!71371 e!156705))

(declare-fun res!116930 () Bool)

(assert (=> d!71371 (=> (not res!116930) (not e!156705))))

(assert (=> d!71371 (= res!116930 (= (content!513 lt!103372) ((_ map or) (content!513 call!13243) (content!513 lt!102094))))))

(assert (=> d!71371 (= lt!103372 e!156704)))

(declare-fun c!48035 () Bool)

(assert (=> d!71371 (= c!48035 ((_ is Nil!3678) call!13243))))

(assert (=> d!71371 (= (++!942 call!13243 lt!102094) lt!103372)))

(declare-fun b!252294 () Bool)

(declare-fun res!116929 () Bool)

(assert (=> b!252294 (=> (not res!116929) (not e!156705))))

(assert (=> b!252294 (= res!116929 (= (size!2913 lt!103372) (+ (size!2913 call!13243) (size!2913 lt!102094))))))

(assert (= (and d!71371 c!48035) b!252292))

(assert (= (and d!71371 (not c!48035)) b!252293))

(assert (= (and d!71371 res!116930) b!252294))

(assert (= (and b!252294 res!116929) b!252295))

(declare-fun m!311357 () Bool)

(assert (=> b!252293 m!311357))

(declare-fun m!311359 () Bool)

(assert (=> d!71371 m!311359))

(declare-fun m!311361 () Bool)

(assert (=> d!71371 m!311361))

(assert (=> d!71371 m!310279))

(declare-fun m!311365 () Bool)

(assert (=> b!252294 m!311365))

(declare-fun m!311367 () Bool)

(assert (=> b!252294 m!311367))

(assert (=> b!252294 m!310285))

(assert (=> b!250274 d!71371))

(declare-fun d!71373 () Bool)

(declare-fun res!116931 () Bool)

(declare-fun e!156706 () Bool)

(assert (=> d!71373 (=> res!116931 e!156706)))

(assert (=> d!71373 (= res!116931 ((_ is Nil!3680) (list!1460 lt!101844)))))

(assert (=> d!71373 (= (forall!865 (list!1460 lt!101844) lambda!8309) e!156706)))

(declare-fun b!252296 () Bool)

(declare-fun e!156707 () Bool)

(assert (=> b!252296 (= e!156706 e!156707)))

(declare-fun res!116932 () Bool)

(assert (=> b!252296 (=> (not res!116932) (not e!156707))))

(assert (=> b!252296 (= res!116932 (dynLambda!1813 lambda!8309 (h!9077 (list!1460 lt!101844))))))

(declare-fun b!252297 () Bool)

(assert (=> b!252297 (= e!156707 (forall!865 (t!35394 (list!1460 lt!101844)) lambda!8309))))

(assert (= (and d!71373 (not res!116931)) b!252296))

(assert (= (and b!252296 res!116932) b!252297))

(declare-fun b_lambda!7461 () Bool)

(assert (=> (not b_lambda!7461) (not b!252296)))

(declare-fun m!311381 () Bool)

(assert (=> b!252296 m!311381))

(declare-fun m!311383 () Bool)

(assert (=> b!252297 m!311383))

(assert (=> d!70223 d!71373))

(assert (=> d!70223 d!70595))

(declare-fun d!71375 () Bool)

(declare-fun lt!103373 () Bool)

(assert (=> d!71375 (= lt!103373 (forall!865 (list!1460 lt!101844) lambda!8309))))

(assert (=> d!71375 (= lt!103373 (forall!867 (c!47454 lt!101844) lambda!8309))))

(assert (=> d!71375 (= (forall!864 lt!101844 lambda!8309) lt!103373)))

(declare-fun bs!27210 () Bool)

(assert (= bs!27210 d!71375))

(assert (=> bs!27210 m!306399))

(assert (=> bs!27210 m!306399))

(assert (=> bs!27210 m!306625))

(declare-fun m!311387 () Bool)

(assert (=> bs!27210 m!311387))

(assert (=> d!70223 d!71375))

(assert (=> d!70223 d!70317))

(assert (=> b!250521 d!70715))

(declare-fun b!252299 () Bool)

(declare-fun res!116935 () Bool)

(declare-fun e!156710 () Bool)

(assert (=> b!252299 (=> (not res!116935) (not e!156710))))

(assert (=> b!252299 (= res!116935 (= (head!866 (tail!458 lt!101834)) (head!866 (tail!458 lt!101823))))))

(declare-fun b!252298 () Bool)

(declare-fun e!156708 () Bool)

(assert (=> b!252298 (= e!156708 e!156710)))

(declare-fun res!116936 () Bool)

(assert (=> b!252298 (=> (not res!116936) (not e!156710))))

(assert (=> b!252298 (= res!116936 (not ((_ is Nil!3678) (tail!458 lt!101823))))))

(declare-fun d!71377 () Bool)

(declare-fun e!156709 () Bool)

(assert (=> d!71377 e!156709))

(declare-fun res!116933 () Bool)

(assert (=> d!71377 (=> res!116933 e!156709)))

(declare-fun lt!103374 () Bool)

(assert (=> d!71377 (= res!116933 (not lt!103374))))

(assert (=> d!71377 (= lt!103374 e!156708)))

(declare-fun res!116934 () Bool)

(assert (=> d!71377 (=> res!116934 e!156708)))

(assert (=> d!71377 (= res!116934 ((_ is Nil!3678) (tail!458 lt!101834)))))

(assert (=> d!71377 (= (isPrefix!383 (tail!458 lt!101834) (tail!458 lt!101823)) lt!103374)))

(declare-fun b!252300 () Bool)

(assert (=> b!252300 (= e!156710 (isPrefix!383 (tail!458 (tail!458 lt!101834)) (tail!458 (tail!458 lt!101823))))))

(declare-fun b!252301 () Bool)

(assert (=> b!252301 (= e!156709 (>= (size!2913 (tail!458 lt!101823)) (size!2913 (tail!458 lt!101834))))))

(assert (= (and d!71377 (not res!116934)) b!252298))

(assert (= (and b!252298 res!116936) b!252299))

(assert (= (and b!252299 res!116935) b!252300))

(assert (= (and d!71377 (not res!116933)) b!252301))

(assert (=> b!252299 m!307101))

(assert (=> b!252299 m!307501))

(assert (=> b!252299 m!307197))

(declare-fun m!311389 () Bool)

(assert (=> b!252299 m!311389))

(assert (=> b!252300 m!307101))

(assert (=> b!252300 m!307505))

(assert (=> b!252300 m!307197))

(declare-fun m!311391 () Bool)

(assert (=> b!252300 m!311391))

(assert (=> b!252300 m!307505))

(assert (=> b!252300 m!311391))

(declare-fun m!311393 () Bool)

(assert (=> b!252300 m!311393))

(assert (=> b!252301 m!307197))

(declare-fun m!311395 () Bool)

(assert (=> b!252301 m!311395))

(assert (=> b!252301 m!307101))

(assert (=> b!252301 m!307513))

(assert (=> b!250578 d!71377))

(assert (=> b!250578 d!70467))

(declare-fun d!71381 () Bool)

(assert (=> d!71381 (= (tail!458 lt!101823) (t!35392 lt!101823))))

(assert (=> b!250578 d!71381))

(declare-fun d!71383 () Bool)

(assert (=> d!71383 (= (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))) (isBalanced!317 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))))))

(declare-fun bs!27211 () Bool)

(assert (= bs!27211 d!71383))

(declare-fun m!311421 () Bool)

(assert (=> bs!27211 m!311421))

(assert (=> tb!12769 d!71383))

(declare-fun b!252315 () Bool)

(declare-fun e!156717 () List!3688)

(assert (=> b!252315 (= e!156717 lt!101842)))

(declare-fun b!252316 () Bool)

(assert (=> b!252316 (= e!156717 (Cons!3678 (h!9075 (t!35392 lt!101837)) (++!942 (t!35392 (t!35392 lt!101837)) lt!101842)))))

(declare-fun b!252318 () Bool)

(declare-fun lt!103377 () List!3688)

(declare-fun e!156718 () Bool)

(assert (=> b!252318 (= e!156718 (or (not (= lt!101842 Nil!3678)) (= lt!103377 (t!35392 lt!101837))))))

(declare-fun d!71387 () Bool)

(assert (=> d!71387 e!156718))

(declare-fun res!116943 () Bool)

(assert (=> d!71387 (=> (not res!116943) (not e!156718))))

(assert (=> d!71387 (= res!116943 (= (content!513 lt!103377) ((_ map or) (content!513 (t!35392 lt!101837)) (content!513 lt!101842))))))

(assert (=> d!71387 (= lt!103377 e!156717)))

(declare-fun c!48040 () Bool)

(assert (=> d!71387 (= c!48040 ((_ is Nil!3678) (t!35392 lt!101837)))))

(assert (=> d!71387 (= (++!942 (t!35392 lt!101837) lt!101842) lt!103377)))

(declare-fun b!252317 () Bool)

(declare-fun res!116942 () Bool)

(assert (=> b!252317 (=> (not res!116942) (not e!156718))))

(assert (=> b!252317 (= res!116942 (= (size!2913 lt!103377) (+ (size!2913 (t!35392 lt!101837)) (size!2913 lt!101842))))))

(assert (= (and d!71387 c!48040) b!252315))

(assert (= (and d!71387 (not c!48040)) b!252316))

(assert (= (and d!71387 res!116943) b!252317))

(assert (= (and b!252317 res!116942) b!252318))

(declare-fun m!311425 () Bool)

(assert (=> b!252316 m!311425))

(declare-fun m!311427 () Bool)

(assert (=> d!71387 m!311427))

(declare-fun m!311429 () Bool)

(assert (=> d!71387 m!311429))

(assert (=> d!71387 m!306179))

(declare-fun m!311431 () Bool)

(assert (=> b!252317 m!311431))

(assert (=> b!252317 m!307499))

(assert (=> b!252317 m!306185))

(assert (=> b!250271 d!71387))

(declare-fun b!252333 () Bool)

(declare-fun lt!103392 () BalanceConc!2448)

(declare-fun e!156726 () Bool)

(assert (=> b!252333 (= e!156726 (= (list!1461 lt!103392) (++!942 (list!1461 call!13200) (list!1461 lt!101951))))))

(declare-fun d!71391 () Bool)

(assert (=> d!71391 e!156726))

(declare-fun res!116949 () Bool)

(assert (=> d!71391 (=> (not res!116949) (not e!156726))))

(assert (=> d!71391 (= res!116949 (appendAssocInst!50 (c!47452 call!13200) (c!47452 lt!101951)))))

(assert (=> d!71391 (= lt!103392 (BalanceConc!2449 (++!945 (c!47452 call!13200) (c!47452 lt!101951))))))

(assert (=> d!71391 (= (++!943 call!13200 lt!101951) lt!103392)))

(declare-fun b!252331 () Bool)

(declare-fun res!116947 () Bool)

(assert (=> b!252331 (=> (not res!116947) (not e!156726))))

(assert (=> b!252331 (= res!116947 (<= (height!134 (++!945 (c!47452 call!13200) (c!47452 lt!101951))) (+ (max!0 (height!134 (c!47452 call!13200)) (height!134 (c!47452 lt!101951))) 1)))))

(declare-fun b!252330 () Bool)

(declare-fun res!116948 () Bool)

(assert (=> b!252330 (=> (not res!116948) (not e!156726))))

(assert (=> b!252330 (= res!116948 (isBalanced!317 (++!945 (c!47452 call!13200) (c!47452 lt!101951))))))

(declare-fun b!252332 () Bool)

(declare-fun res!116950 () Bool)

(assert (=> b!252332 (=> (not res!116950) (not e!156726))))

(assert (=> b!252332 (= res!116950 (>= (height!134 (++!945 (c!47452 call!13200) (c!47452 lt!101951))) (max!0 (height!134 (c!47452 call!13200)) (height!134 (c!47452 lt!101951)))))))

(assert (= (and d!71391 res!116949) b!252330))

(assert (= (and b!252330 res!116948) b!252331))

(assert (= (and b!252331 res!116947) b!252332))

(assert (= (and b!252332 res!116950) b!252333))

(declare-fun m!311433 () Bool)

(assert (=> b!252331 m!311433))

(assert (=> b!252331 m!309545))

(declare-fun m!311435 () Bool)

(assert (=> b!252331 m!311435))

(declare-fun m!311437 () Bool)

(assert (=> b!252331 m!311437))

(assert (=> b!252331 m!311433))

(assert (=> b!252331 m!309545))

(declare-fun m!311439 () Bool)

(assert (=> b!252331 m!311439))

(assert (=> b!252331 m!311435))

(declare-fun m!311441 () Bool)

(assert (=> b!252333 m!311441))

(declare-fun m!311443 () Bool)

(assert (=> b!252333 m!311443))

(assert (=> b!252333 m!306427))

(assert (=> b!252333 m!311443))

(assert (=> b!252333 m!306427))

(declare-fun m!311445 () Bool)

(assert (=> b!252333 m!311445))

(declare-fun m!311447 () Bool)

(assert (=> d!71391 m!311447))

(assert (=> d!71391 m!311435))

(assert (=> b!252330 m!311435))

(assert (=> b!252330 m!311435))

(declare-fun m!311449 () Bool)

(assert (=> b!252330 m!311449))

(assert (=> b!252332 m!311433))

(assert (=> b!252332 m!309545))

(assert (=> b!252332 m!311435))

(assert (=> b!252332 m!311437))

(assert (=> b!252332 m!311433))

(assert (=> b!252332 m!309545))

(assert (=> b!252332 m!311439))

(assert (=> b!252332 m!311435))

(assert (=> b!250066 d!71391))

(declare-fun d!71393 () Bool)

(assert (=> d!71393 (= (inv!16 (value!24237 (h!9077 tokens!465))) (= (charsToInt!0 (text!5494 (value!24237 (h!9077 tokens!465)))) (value!24228 (value!24237 (h!9077 tokens!465)))))))

(declare-fun bs!27225 () Bool)

(assert (= bs!27225 d!71393))

(declare-fun m!311451 () Bool)

(assert (=> bs!27225 m!311451))

(assert (=> b!250717 d!71393))

(declare-fun b!252338 () Bool)

(declare-fun e!156730 () List!3688)

(declare-fun e!156731 () List!3688)

(assert (=> b!252338 (= e!156730 e!156731)))

(declare-fun c!48046 () Bool)

(assert (=> b!252338 (= c!48046 ((_ is Leaf!1909) (c!47452 lt!101829)))))

(declare-fun b!252340 () Bool)

(assert (=> b!252340 (= e!156731 (++!942 (list!1463 (left!3024 (c!47452 lt!101829))) (list!1463 (right!3354 (c!47452 lt!101829)))))))

(declare-fun b!252339 () Bool)

(assert (=> b!252339 (= e!156731 (list!1466 (xs!3815 (c!47452 lt!101829))))))

(declare-fun d!71395 () Bool)

(declare-fun c!48045 () Bool)

(assert (=> d!71395 (= c!48045 ((_ is Empty!1220) (c!47452 lt!101829)))))

(assert (=> d!71395 (= (list!1463 (c!47452 lt!101829)) e!156730)))

(declare-fun b!252337 () Bool)

(assert (=> b!252337 (= e!156730 Nil!3678)))

(assert (= (and d!71395 c!48045) b!252337))

(assert (= (and d!71395 (not c!48045)) b!252338))

(assert (= (and b!252338 c!48046) b!252339))

(assert (= (and b!252338 (not c!48046)) b!252340))

(declare-fun m!311453 () Bool)

(assert (=> b!252340 m!311453))

(declare-fun m!311455 () Bool)

(assert (=> b!252340 m!311455))

(assert (=> b!252340 m!311453))

(assert (=> b!252340 m!311455))

(declare-fun m!311457 () Bool)

(assert (=> b!252340 m!311457))

(declare-fun m!311459 () Bool)

(assert (=> b!252339 m!311459))

(assert (=> d!70179 d!71395))

(declare-fun lt!103393 () BalanceConc!2448)

(declare-fun d!71397 () Bool)

(assert (=> d!71397 (= (list!1461 lt!103393) (originalCharacters!742 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247))))))

(assert (=> d!71397 (= lt!103393 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247))))) (value!24237 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))))

(assert (=> d!71397 (= (charsOf!354 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247))) lt!103393)))

(declare-fun b_lambda!7463 () Bool)

(assert (=> (not b_lambda!7463) (not d!71397)))

(declare-fun tb!12989 () Bool)

(declare-fun t!35654 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))) t!35654) tb!12989))

(declare-fun tp!97250 () Bool)

(declare-fun b!252341 () Bool)

(declare-fun e!156732 () Bool)

(assert (=> b!252341 (= e!156732 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247))))) (value!24237 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))) tp!97250))))

(declare-fun result!16354 () Bool)

(assert (=> tb!12989 (= result!16354 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247))))) (value!24237 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247))))) e!156732))))

(assert (= tb!12989 b!252341))

(declare-fun m!311461 () Bool)

(assert (=> b!252341 m!311461))

(declare-fun m!311463 () Bool)

(assert (=> tb!12989 m!311463))

(assert (=> d!71397 t!35654))

(declare-fun b_and!19111 () Bool)

(assert (= b_and!19093 (and (=> t!35654 result!16354) b_and!19111)))

(declare-fun t!35656 () Bool)

(declare-fun tb!12991 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))) t!35656) tb!12991))

(declare-fun result!16356 () Bool)

(assert (= result!16356 result!16354))

(assert (=> d!71397 t!35656))

(declare-fun b_and!19113 () Bool)

(assert (= b_and!19091 (and (=> t!35656 result!16356) b_and!19113)))

(declare-fun tb!12993 () Bool)

(declare-fun t!35658 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))) t!35658) tb!12993))

(declare-fun result!16358 () Bool)

(assert (= result!16358 result!16354))

(assert (=> d!71397 t!35658))

(declare-fun b_and!19115 () Bool)

(assert (= b_and!19097 (and (=> t!35658 result!16358) b_and!19115)))

(declare-fun t!35660 () Bool)

(declare-fun tb!12995 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))) t!35660) tb!12995))

(declare-fun result!16360 () Bool)

(assert (= result!16360 result!16354))

(assert (=> d!71397 t!35660))

(declare-fun b_and!19117 () Bool)

(assert (= b_and!19095 (and (=> t!35660 result!16360) b_and!19117)))

(declare-fun t!35662 () Bool)

(declare-fun tb!12997 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))) t!35662) tb!12997))

(declare-fun result!16362 () Bool)

(assert (= result!16362 result!16354))

(assert (=> d!71397 t!35662))

(declare-fun b_and!19119 () Bool)

(assert (= b_and!19099 (and (=> t!35662 result!16362) b_and!19119)))

(declare-fun m!311465 () Bool)

(assert (=> d!71397 m!311465))

(declare-fun m!311467 () Bool)

(assert (=> d!71397 m!311467))

(assert (=> bm!13242 d!71397))

(declare-fun d!71399 () Bool)

(assert (=> d!71399 (= (isEmpty!2282 lt!101846) (not ((_ is Some!759) lt!101846)))))

(assert (=> d!70339 d!71399))

(declare-fun d!71401 () Bool)

(assert (=> d!71401 (= (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))) (isBalanced!317 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))))))

(declare-fun bs!27240 () Bool)

(assert (= bs!27240 d!71401))

(declare-fun m!311469 () Bool)

(assert (=> bs!27240 m!311469))

(assert (=> tb!12787 d!71401))

(declare-fun bs!27241 () Bool)

(declare-fun d!71403 () Bool)

(assert (= bs!27241 (and d!71403 d!70483)))

(declare-fun lambda!8376 () Int)

(assert (=> bs!27241 (= (and (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (= (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toValue!1402 (transformation!699 (h!9076 rules!1920))))) (= lambda!8376 lambda!8329))))

(declare-fun bs!27242 () Bool)

(assert (= bs!27242 (and d!71403 b!251566)))

(assert (=> bs!27242 (= (and (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (= (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toValue!1402 (transformation!699 (h!9076 rules!1920))))) (= lambda!8376 lambda!8356))))

(assert (=> d!71403 true))

(assert (=> d!71403 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) (dynLambda!1815 order!2739 lambda!8376))))

(assert (=> d!71403 true))

(assert (=> d!71403 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465))))) (dynLambda!1815 order!2739 lambda!8376))))

(assert (=> d!71403 (= (semiInverseModEq!236 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465))))) (Forall!155 lambda!8376))))

(declare-fun bs!27243 () Bool)

(assert (= bs!27243 d!71403))

(declare-fun m!311489 () Bool)

(assert (=> bs!27243 m!311489))

(assert (=> d!70325 d!71403))

(declare-fun d!71405 () Bool)

(declare-fun lt!103394 () Int)

(assert (=> d!71405 (>= lt!103394 0)))

(declare-fun e!156733 () Int)

(assert (=> d!71405 (= lt!103394 e!156733)))

(declare-fun c!48047 () Bool)

(assert (=> d!71405 (= c!48047 ((_ is Nil!3678) lt!102115))))

(assert (=> d!71405 (= (size!2913 lt!102115) lt!103394)))

(declare-fun b!252342 () Bool)

(assert (=> b!252342 (= e!156733 0)))

(declare-fun b!252343 () Bool)

(assert (=> b!252343 (= e!156733 (+ 1 (size!2913 (t!35392 lt!102115))))))

(assert (= (and d!71405 c!48047) b!252342))

(assert (= (and d!71405 (not c!48047)) b!252343))

(declare-fun m!311509 () Bool)

(assert (=> b!252343 m!311509))

(assert (=> b!250304 d!71405))

(declare-fun d!71407 () Bool)

(declare-fun lt!103395 () Int)

(assert (=> d!71407 (>= lt!103395 0)))

(declare-fun e!156734 () Int)

(assert (=> d!71407 (= lt!103395 e!156734)))

(declare-fun c!48048 () Bool)

(assert (=> d!71407 (= c!48048 ((_ is Nil!3678) (++!942 lt!101834 lt!101837)))))

(assert (=> d!71407 (= (size!2913 (++!942 lt!101834 lt!101837)) lt!103395)))

(declare-fun b!252344 () Bool)

(assert (=> b!252344 (= e!156734 0)))

(declare-fun b!252345 () Bool)

(assert (=> b!252345 (= e!156734 (+ 1 (size!2913 (t!35392 (++!942 lt!101834 lt!101837)))))))

(assert (= (and d!71407 c!48048) b!252344))

(assert (= (and d!71407 (not c!48048)) b!252345))

(assert (=> b!252345 m!309939))

(assert (=> b!250304 d!71407))

(declare-fun d!71409 () Bool)

(declare-fun lt!103396 () Int)

(assert (=> d!71409 (>= lt!103396 0)))

(declare-fun e!156735 () Int)

(assert (=> d!71409 (= lt!103396 e!156735)))

(declare-fun c!48049 () Bool)

(assert (=> d!71409 (= c!48049 ((_ is Nil!3678) lt!101842))))

(assert (=> d!71409 (= (size!2913 lt!101842) lt!103396)))

(declare-fun b!252346 () Bool)

(assert (=> b!252346 (= e!156735 0)))

(declare-fun b!252347 () Bool)

(assert (=> b!252347 (= e!156735 (+ 1 (size!2913 (t!35392 lt!101842))))))

(assert (= (and d!71409 c!48049) b!252346))

(assert (= (and d!71409 (not c!48049)) b!252347))

(declare-fun m!311531 () Bool)

(assert (=> b!252347 m!311531))

(assert (=> b!250304 d!71409))

(declare-fun d!71413 () Bool)

(declare-fun lt!103397 () Token!1142)

(assert (=> d!71413 (= lt!103397 (apply!695 (list!1460 (_1!2274 lt!102169)) 0))))

(assert (=> d!71413 (= lt!103397 (apply!700 (c!47454 (_1!2274 lt!102169)) 0))))

(declare-fun e!156736 () Bool)

(assert (=> d!71413 e!156736))

(declare-fun res!116951 () Bool)

(assert (=> d!71413 (=> (not res!116951) (not e!156736))))

(assert (=> d!71413 (= res!116951 (<= 0 0))))

(assert (=> d!71413 (= (apply!694 (_1!2274 lt!102169) 0) lt!103397)))

(declare-fun b!252348 () Bool)

(assert (=> b!252348 (= e!156736 (< 0 (size!2911 (_1!2274 lt!102169))))))

(assert (= (and d!71413 res!116951) b!252348))

(declare-fun m!311533 () Bool)

(assert (=> d!71413 m!311533))

(assert (=> d!71413 m!311533))

(declare-fun m!311535 () Bool)

(assert (=> d!71413 m!311535))

(declare-fun m!311537 () Bool)

(assert (=> d!71413 m!311537))

(assert (=> b!252348 m!307009))

(assert (=> b!250443 d!71413))

(declare-fun b!252364 () Bool)

(declare-fun res!116969 () Bool)

(declare-fun e!156744 () Bool)

(assert (=> b!252364 (=> (not res!116969) (not e!156744))))

(declare-fun height!136 (Conc!1221) Int)

(assert (=> b!252364 (= res!116969 (<= (- (height!136 (left!3025 (c!47454 lt!101902))) (height!136 (right!3355 (c!47454 lt!101902)))) 1))))

(declare-fun b!252365 () Bool)

(assert (=> b!252365 (= e!156744 (not (isEmpty!2286 (right!3355 (c!47454 lt!101902)))))))

(declare-fun b!252366 () Bool)

(declare-fun res!116967 () Bool)

(assert (=> b!252366 (=> (not res!116967) (not e!156744))))

(assert (=> b!252366 (= res!116967 (isBalanced!315 (left!3025 (c!47454 lt!101902))))))

(declare-fun b!252367 () Bool)

(declare-fun e!156745 () Bool)

(assert (=> b!252367 (= e!156745 e!156744)))

(declare-fun res!116971 () Bool)

(assert (=> b!252367 (=> (not res!116971) (not e!156744))))

(assert (=> b!252367 (= res!116971 (<= (- 1) (- (height!136 (left!3025 (c!47454 lt!101902))) (height!136 (right!3355 (c!47454 lt!101902))))))))

(declare-fun d!71415 () Bool)

(declare-fun res!116968 () Bool)

(assert (=> d!71415 (=> res!116968 e!156745)))

(assert (=> d!71415 (= res!116968 (not ((_ is Node!1221) (c!47454 lt!101902))))))

(assert (=> d!71415 (= (isBalanced!315 (c!47454 lt!101902)) e!156745)))

(declare-fun b!252368 () Bool)

(declare-fun res!116972 () Bool)

(assert (=> b!252368 (=> (not res!116972) (not e!156744))))

(assert (=> b!252368 (= res!116972 (not (isEmpty!2286 (left!3025 (c!47454 lt!101902)))))))

(declare-fun b!252369 () Bool)

(declare-fun res!116970 () Bool)

(assert (=> b!252369 (=> (not res!116970) (not e!156744))))

(assert (=> b!252369 (= res!116970 (isBalanced!315 (right!3355 (c!47454 lt!101902))))))

(assert (= (and d!71415 (not res!116968)) b!252367))

(assert (= (and b!252367 res!116971) b!252364))

(assert (= (and b!252364 res!116969) b!252366))

(assert (= (and b!252366 res!116967) b!252369))

(assert (= (and b!252369 res!116970) b!252368))

(assert (= (and b!252368 res!116972) b!252365))

(declare-fun m!311541 () Bool)

(assert (=> b!252364 m!311541))

(declare-fun m!311543 () Bool)

(assert (=> b!252364 m!311543))

(declare-fun m!311545 () Bool)

(assert (=> b!252366 m!311545))

(declare-fun m!311547 () Bool)

(assert (=> b!252365 m!311547))

(declare-fun m!311549 () Bool)

(assert (=> b!252369 m!311549))

(declare-fun m!311551 () Bool)

(assert (=> b!252368 m!311551))

(assert (=> b!252367 m!311541))

(assert (=> b!252367 m!311543))

(assert (=> b!249999 d!71415))

(declare-fun b!252372 () Bool)

(declare-fun e!156748 () List!3688)

(assert (=> b!252372 (= e!156748 lt!101842)))

(declare-fun b!252373 () Bool)

(assert (=> b!252373 (= e!156748 (Cons!3678 (h!9075 (t!35392 lt!101834)) (++!942 (t!35392 (t!35392 lt!101834)) lt!101842)))))

(declare-fun e!156749 () Bool)

(declare-fun b!252375 () Bool)

(declare-fun lt!103403 () List!3688)

(assert (=> b!252375 (= e!156749 (or (not (= lt!101842 Nil!3678)) (= lt!103403 (t!35392 lt!101834))))))

(declare-fun d!71419 () Bool)

(assert (=> d!71419 e!156749))

(declare-fun res!116976 () Bool)

(assert (=> d!71419 (=> (not res!116976) (not e!156749))))

(assert (=> d!71419 (= res!116976 (= (content!513 lt!103403) ((_ map or) (content!513 (t!35392 lt!101834)) (content!513 lt!101842))))))

(assert (=> d!71419 (= lt!103403 e!156748)))

(declare-fun c!48050 () Bool)

(assert (=> d!71419 (= c!48050 ((_ is Nil!3678) (t!35392 lt!101834)))))

(assert (=> d!71419 (= (++!942 (t!35392 lt!101834) lt!101842) lt!103403)))

(declare-fun b!252374 () Bool)

(declare-fun res!116975 () Bool)

(assert (=> b!252374 (=> (not res!116975) (not e!156749))))

(assert (=> b!252374 (= res!116975 (= (size!2913 lt!103403) (+ (size!2913 (t!35392 lt!101834)) (size!2913 lt!101842))))))

(assert (= (and d!71419 c!48050) b!252372))

(assert (= (and d!71419 (not c!48050)) b!252373))

(assert (= (and d!71419 res!116976) b!252374))

(assert (= (and b!252374 res!116975) b!252375))

(declare-fun m!311553 () Bool)

(assert (=> b!252373 m!311553))

(declare-fun m!311555 () Bool)

(assert (=> d!71419 m!311555))

(assert (=> d!71419 m!307821))

(assert (=> d!71419 m!306179))

(declare-fun m!311557 () Bool)

(assert (=> b!252374 m!311557))

(assert (=> b!252374 m!307497))

(assert (=> b!252374 m!306185))

(assert (=> b!249922 d!71419))

(declare-fun d!71421 () Bool)

(declare-fun charsToBigInt!1 (List!3687) Int)

(assert (=> d!71421 (= (inv!17 (value!24237 separatorToken!170)) (= (charsToBigInt!1 (text!5495 (value!24237 separatorToken!170))) (value!24229 (value!24237 separatorToken!170))))))

(declare-fun bs!27244 () Bool)

(assert (= bs!27244 d!71421))

(declare-fun m!311561 () Bool)

(assert (=> bs!27244 m!311561))

(assert (=> b!250267 d!71421))

(assert (=> d!70357 d!70557))

(declare-fun d!71427 () Bool)

(assert (=> d!71427 (= (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170))))) (list!1465 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 separatorToken!170)))))))))

(declare-fun bs!27246 () Bool)

(assert (= bs!27246 d!71427))

(declare-fun m!311565 () Bool)

(assert (=> bs!27246 m!311565))

(assert (=> d!70357 d!71427))

(assert (=> d!70357 d!70553))

(declare-fun d!71431 () Bool)

(assert (=> d!71431 (= (list!1460 (singletonSeq!251 separatorToken!170)) (list!1465 (c!47454 (singletonSeq!251 separatorToken!170))))))

(declare-fun bs!27247 () Bool)

(assert (= bs!27247 d!71431))

(declare-fun m!311567 () Bool)

(assert (=> bs!27247 m!311567))

(assert (=> d!70357 d!71431))

(assert (=> d!70357 d!70555))

(assert (=> d!70357 d!70317))

(declare-fun d!71433 () Bool)

(declare-fun lt!103405 () Int)

(assert (=> d!71433 (= lt!103405 (size!2918 (list!1460 (_1!2274 lt!102197))))))

(assert (=> d!71433 (= lt!103405 (size!2919 (c!47454 (_1!2274 lt!102197))))))

(assert (=> d!71433 (= (size!2911 (_1!2274 lt!102197)) lt!103405)))

(declare-fun bs!27248 () Bool)

(assert (= bs!27248 d!71433))

(assert (=> bs!27248 m!311091))

(assert (=> bs!27248 m!311091))

(declare-fun m!311569 () Bool)

(assert (=> bs!27248 m!311569))

(declare-fun m!311571 () Bool)

(assert (=> bs!27248 m!311571))

(assert (=> d!70357 d!71433))

(assert (=> b!250183 d!70265))

(declare-fun d!71435 () Bool)

(declare-fun c!48051 () Bool)

(assert (=> d!71435 (= c!48051 ((_ is Nil!3678) lt!102117))))

(declare-fun e!156751 () (InoxSet C!2768))

(assert (=> d!71435 (= (content!513 lt!102117) e!156751)))

(declare-fun b!252377 () Bool)

(assert (=> b!252377 (= e!156751 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!252378 () Bool)

(assert (=> b!252378 (= e!156751 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!102117) true) (content!513 (t!35392 lt!102117))))))

(assert (= (and d!71435 c!48051) b!252377))

(assert (= (and d!71435 (not c!48051)) b!252378))

(declare-fun m!311573 () Bool)

(assert (=> b!252378 m!311573))

(declare-fun m!311575 () Bool)

(assert (=> b!252378 m!311575))

(assert (=> d!70277 d!71435))

(assert (=> d!70277 d!70563))

(declare-fun d!71437 () Bool)

(declare-fun c!48052 () Bool)

(assert (=> d!71437 (= c!48052 ((_ is Nil!3678) lt!101832))))

(declare-fun e!156752 () (InoxSet C!2768))

(assert (=> d!71437 (= (content!513 lt!101832) e!156752)))

(declare-fun b!252379 () Bool)

(assert (=> b!252379 (= e!156752 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!252380 () Bool)

(assert (=> b!252380 (= e!156752 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!101832) true) (content!513 (t!35392 lt!101832))))))

(assert (= (and d!71437 c!48052) b!252379))

(assert (= (and d!71437 (not c!48052)) b!252380))

(declare-fun m!311577 () Bool)

(assert (=> b!252380 m!311577))

(declare-fun m!311579 () Bool)

(assert (=> b!252380 m!311579))

(assert (=> d!70277 d!71437))

(declare-fun b!252381 () Bool)

(declare-fun res!116980 () Bool)

(declare-fun e!156753 () Bool)

(assert (=> b!252381 (=> res!116980 e!156753)))

(declare-fun e!156754 () Bool)

(assert (=> b!252381 (= res!116980 e!156754)))

(declare-fun res!116978 () Bool)

(assert (=> b!252381 (=> (not res!116978) (not e!156754))))

(declare-fun lt!103408 () Bool)

(assert (=> b!252381 (= res!116978 lt!103408)))

(declare-fun b!252382 () Bool)

(declare-fun e!156759 () Bool)

(declare-fun e!156757 () Bool)

(assert (=> b!252382 (= e!156759 e!156757)))

(declare-fun res!116981 () Bool)

(assert (=> b!252382 (=> res!116981 e!156757)))

(declare-fun call!13404 () Bool)

(assert (=> b!252382 (= res!116981 call!13404)))

(declare-fun bm!13399 () Bool)

(assert (=> bm!13399 (= call!13404 (isEmpty!2277 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))))))

(declare-fun b!252383 () Bool)

(declare-fun e!156758 () Bool)

(assert (=> b!252383 (= e!156758 (matchR!261 (derivativeStep!130 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))) (head!866 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084)))))) (tail!458 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084)))))))))

(declare-fun b!252384 () Bool)

(declare-fun res!116979 () Bool)

(assert (=> b!252384 (=> res!116979 e!156757)))

(assert (=> b!252384 (= res!116979 (not (isEmpty!2277 (tail!458 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))))))))

(declare-fun d!71439 () Bool)

(declare-fun e!156756 () Bool)

(assert (=> d!71439 e!156756))

(declare-fun c!48055 () Bool)

(assert (=> d!71439 (= c!48055 ((_ is EmptyExpr!923) (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))))))

(assert (=> d!71439 (= lt!103408 e!156758)))

(declare-fun c!48053 () Bool)

(assert (=> d!71439 (= c!48053 (isEmpty!2277 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))))))

(assert (=> d!71439 (validRegex!239 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))))

(assert (=> d!71439 (= (matchR!261 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))) lt!103408)))

(declare-fun b!252385 () Bool)

(declare-fun res!116982 () Bool)

(assert (=> b!252385 (=> (not res!116982) (not e!156754))))

(assert (=> b!252385 (= res!116982 (isEmpty!2277 (tail!458 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084)))))))))

(declare-fun b!252386 () Bool)

(declare-fun e!156755 () Bool)

(assert (=> b!252386 (= e!156756 e!156755)))

(declare-fun c!48054 () Bool)

(assert (=> b!252386 (= c!48054 ((_ is EmptyLang!923) (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))))))

(declare-fun b!252387 () Bool)

(declare-fun res!116985 () Bool)

(assert (=> b!252387 (=> res!116985 e!156753)))

(assert (=> b!252387 (= res!116985 (not ((_ is ElementMatch!923) (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))))))

(assert (=> b!252387 (= e!156755 e!156753)))

(declare-fun b!252388 () Bool)

(assert (=> b!252388 (= e!156754 (= (head!866 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))) (c!47453 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))))))

(declare-fun b!252389 () Bool)

(assert (=> b!252389 (= e!156756 (= lt!103408 call!13404))))

(declare-fun b!252390 () Bool)

(assert (=> b!252390 (= e!156758 (nullable!164 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))))))

(declare-fun b!252391 () Bool)

(assert (=> b!252391 (= e!156757 (not (= (head!866 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))) (c!47453 (regex!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))))))))

(declare-fun b!252392 () Bool)

(assert (=> b!252392 (= e!156753 e!156759)))

(declare-fun res!116983 () Bool)

(assert (=> b!252392 (=> (not res!116983) (not e!156759))))

(assert (=> b!252392 (= res!116983 (not lt!103408))))

(declare-fun b!252393 () Bool)

(assert (=> b!252393 (= e!156755 (not lt!103408))))

(declare-fun b!252394 () Bool)

(declare-fun res!116984 () Bool)

(assert (=> b!252394 (=> (not res!116984) (not e!156754))))

(assert (=> b!252394 (= res!116984 (not call!13404))))

(assert (= (and d!71439 c!48053) b!252390))

(assert (= (and d!71439 (not c!48053)) b!252383))

(assert (= (and d!71439 c!48055) b!252389))

(assert (= (and d!71439 (not c!48055)) b!252386))

(assert (= (and b!252386 c!48054) b!252393))

(assert (= (and b!252386 (not c!48054)) b!252387))

(assert (= (and b!252387 (not res!116985)) b!252381))

(assert (= (and b!252381 res!116978) b!252394))

(assert (= (and b!252394 res!116984) b!252385))

(assert (= (and b!252385 res!116982) b!252388))

(assert (= (and b!252381 (not res!116980)) b!252392))

(assert (= (and b!252392 res!116983) b!252382))

(assert (= (and b!252382 (not res!116981)) b!252384))

(assert (= (and b!252384 (not res!116979)) b!252391))

(assert (= (or b!252389 b!252382 b!252394) bm!13399))

(assert (=> b!252388 m!306669))

(declare-fun m!311589 () Bool)

(assert (=> b!252388 m!311589))

(declare-fun m!311593 () Bool)

(assert (=> b!252390 m!311593))

(assert (=> b!252385 m!306669))

(declare-fun m!311595 () Bool)

(assert (=> b!252385 m!311595))

(assert (=> b!252385 m!311595))

(declare-fun m!311597 () Bool)

(assert (=> b!252385 m!311597))

(assert (=> b!252383 m!306669))

(assert (=> b!252383 m!311589))

(assert (=> b!252383 m!311589))

(declare-fun m!311601 () Bool)

(assert (=> b!252383 m!311601))

(assert (=> b!252383 m!306669))

(assert (=> b!252383 m!311595))

(assert (=> b!252383 m!311601))

(assert (=> b!252383 m!311595))

(declare-fun m!311605 () Bool)

(assert (=> b!252383 m!311605))

(assert (=> b!252384 m!306669))

(assert (=> b!252384 m!311595))

(assert (=> b!252384 m!311595))

(assert (=> b!252384 m!311597))

(assert (=> d!71439 m!306669))

(declare-fun m!311607 () Bool)

(assert (=> d!71439 m!311607))

(declare-fun m!311609 () Bool)

(assert (=> d!71439 m!311609))

(assert (=> bm!13399 m!306669))

(assert (=> bm!13399 m!311607))

(assert (=> b!252391 m!306669))

(assert (=> b!252391 m!311589))

(assert (=> b!250239 d!71439))

(assert (=> b!250239 d!70481))

(assert (=> b!250239 d!70541))

(assert (=> b!250239 d!70543))

(assert (=> b!250447 d!70827))

(declare-fun d!71449 () Bool)

(declare-fun dynLambda!1819 (Int BalanceConc!2448) TokenValue!721)

(assert (=> d!71449 (= (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102184))))) (dynLambda!1819 (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102184))))))))

(declare-fun b_lambda!7465 () Bool)

(assert (=> (not b_lambda!7465) (not d!71449)))

(declare-fun t!35666 () Bool)

(declare-fun tb!12999 () Bool)

(assert (=> (and b!249885 (= (toValue!1402 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35666) tb!12999))

(declare-fun result!16364 () Bool)

(assert (=> tb!12999 (= result!16364 (inv!21 (dynLambda!1819 (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184))))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102184)))))))))

(declare-fun m!311631 () Bool)

(assert (=> tb!12999 m!311631))

(assert (=> d!71449 t!35666))

(declare-fun b_and!19121 () Bool)

(assert (= b_and!18853 (and (=> t!35666 result!16364) b_and!19121)))

(declare-fun tb!13001 () Bool)

(declare-fun t!35668 () Bool)

(assert (=> (and b!250767 (= (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35668) tb!13001))

(declare-fun result!16368 () Bool)

(assert (= result!16368 result!16364))

(assert (=> d!71449 t!35668))

(declare-fun b_and!19123 () Bool)

(assert (= b_and!18917 (and (=> t!35668 result!16368) b_and!19123)))

(declare-fun t!35670 () Bool)

(declare-fun tb!13003 () Bool)

(assert (=> (and b!249891 (= (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35670) tb!13003))

(declare-fun result!16370 () Bool)

(assert (= result!16370 result!16364))

(assert (=> d!71449 t!35670))

(declare-fun b_and!19125 () Bool)

(assert (= b_and!18845 (and (=> t!35670 result!16370) b_and!19125)))

(declare-fun tb!13005 () Bool)

(declare-fun t!35672 () Bool)

(assert (=> (and b!250734 (= (toValue!1402 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35672) tb!13005))

(declare-fun result!16372 () Bool)

(assert (= result!16372 result!16364))

(assert (=> d!71449 t!35672))

(declare-fun b_and!19127 () Bool)

(assert (= b_and!18913 (and (=> t!35672 result!16372) b_and!19127)))

(declare-fun t!35674 () Bool)

(declare-fun tb!13007 () Bool)

(assert (=> (and b!249870 (= (toValue!1402 (transformation!699 (h!9076 rules!1920))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35674) tb!13007))

(declare-fun result!16374 () Bool)

(assert (= result!16374 result!16364))

(assert (=> d!71449 t!35674))

(declare-fun b_and!19129 () Bool)

(assert (= b_and!18849 (and (=> t!35674 result!16374) b_and!19129)))

(assert (=> d!71449 m!307045))

(declare-fun m!311633 () Bool)

(assert (=> d!71449 m!311633))

(assert (=> b!250447 d!71449))

(declare-fun d!71453 () Bool)

(assert (=> d!71453 (= (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102184)))) (fromListB!281 (originalCharacters!742 (_1!2273 (get!1209 lt!102184)))))))

(declare-fun bs!27251 () Bool)

(assert (= bs!27251 d!71453))

(declare-fun m!311643 () Bool)

(assert (=> bs!27251 m!311643))

(assert (=> b!250447 d!71453))

(declare-fun b!252413 () Bool)

(declare-fun e!156772 () List!3688)

(assert (=> b!252413 (= e!156772 lt!101837)))

(declare-fun b!252414 () Bool)

(assert (=> b!252414 (= e!156772 (Cons!3678 (h!9075 (t!35392 lt!101834)) (++!942 (t!35392 (t!35392 lt!101834)) lt!101837)))))

(declare-fun b!252416 () Bool)

(declare-fun e!156773 () Bool)

(declare-fun lt!103418 () List!3688)

(assert (=> b!252416 (= e!156773 (or (not (= lt!101837 Nil!3678)) (= lt!103418 (t!35392 lt!101834))))))

(declare-fun d!71455 () Bool)

(assert (=> d!71455 e!156773))

(declare-fun res!116997 () Bool)

(assert (=> d!71455 (=> (not res!116997) (not e!156773))))

(assert (=> d!71455 (= res!116997 (= (content!513 lt!103418) ((_ map or) (content!513 (t!35392 lt!101834)) (content!513 lt!101837))))))

(assert (=> d!71455 (= lt!103418 e!156772)))

(declare-fun c!48059 () Bool)

(assert (=> d!71455 (= c!48059 ((_ is Nil!3678) (t!35392 lt!101834)))))

(assert (=> d!71455 (= (++!942 (t!35392 lt!101834) lt!101837) lt!103418)))

(declare-fun b!252415 () Bool)

(declare-fun res!116996 () Bool)

(assert (=> b!252415 (=> (not res!116996) (not e!156773))))

(assert (=> b!252415 (= res!116996 (= (size!2913 lt!103418) (+ (size!2913 (t!35392 lt!101834)) (size!2913 lt!101837))))))

(assert (= (and d!71455 c!48059) b!252413))

(assert (= (and d!71455 (not c!48059)) b!252414))

(assert (= (and d!71455 res!116997) b!252415))

(assert (= (and b!252415 res!116996) b!252416))

(declare-fun m!311655 () Bool)

(assert (=> b!252414 m!311655))

(declare-fun m!311659 () Bool)

(assert (=> d!71455 m!311659))

(assert (=> d!71455 m!307821))

(assert (=> d!71455 m!306719))

(declare-fun m!311661 () Bool)

(assert (=> b!252415 m!311661))

(assert (=> b!252415 m!307497))

(assert (=> b!252415 m!306723))

(assert (=> b!250307 d!71455))

(assert (=> b!250710 d!70715))

(declare-fun d!71457 () Bool)

(assert (=> d!71457 (= (head!866 lt!101845) (h!9075 lt!101845))))

(assert (=> b!250710 d!71457))

(declare-fun d!71459 () Bool)

(assert (=> d!71459 (= (list!1461 lt!102118) (list!1463 (c!47452 lt!102118)))))

(declare-fun bs!27252 () Bool)

(assert (= bs!27252 d!71459))

(declare-fun m!311667 () Bool)

(assert (=> bs!27252 m!311667))

(assert (=> d!70279 d!71459))

(declare-fun d!71461 () Bool)

(assert (=> d!71461 (= (list!1461 lt!102104) (list!1463 (c!47452 lt!102104)))))

(declare-fun bs!27253 () Bool)

(assert (= bs!27253 d!71461))

(declare-fun m!311669 () Bool)

(assert (=> bs!27253 m!311669))

(assert (=> d!70263 d!71461))

(declare-fun bs!27254 () Bool)

(declare-fun b!252425 () Bool)

(assert (= bs!27254 (and b!252425 d!70749)))

(declare-fun lambda!8377 () Int)

(assert (=> bs!27254 (not (= lambda!8377 lambda!8341))))

(declare-fun bs!27255 () Bool)

(assert (= bs!27255 (and b!252425 b!250061)))

(assert (=> bs!27255 (= lambda!8377 lambda!8295)))

(declare-fun bs!27256 () Bool)

(assert (= bs!27256 (and b!252425 d!70263)))

(assert (=> bs!27256 (not (= lambda!8377 lambda!8316))))

(declare-fun bs!27257 () Bool)

(assert (= bs!27257 (and b!252425 b!251984)))

(assert (=> bs!27257 (= lambda!8377 lambda!8366)))

(declare-fun bs!27258 () Bool)

(assert (= bs!27258 (and b!252425 b!250282)))

(assert (=> bs!27258 (= lambda!8377 lambda!8315)))

(declare-fun bs!27259 () Bool)

(assert (= bs!27259 (and b!252425 b!251878)))

(assert (=> bs!27259 (= lambda!8377 lambda!8363)))

(declare-fun bs!27260 () Bool)

(assert (= bs!27260 (and b!252425 b!250290)))

(assert (=> bs!27260 (= lambda!8377 lambda!8317)))

(declare-fun bs!27261 () Bool)

(assert (= bs!27261 (and b!252425 d!70223)))

(assert (=> bs!27261 (= lambda!8377 lambda!8309)))

(declare-fun bs!27262 () Bool)

(assert (= bs!27262 (and b!252425 b!250190)))

(assert (=> bs!27262 (= lambda!8377 lambda!8304)))

(declare-fun bs!27263 () Bool)

(assert (= bs!27263 (and b!252425 d!71129)))

(assert (=> bs!27263 (not (= lambda!8377 lambda!8364))))

(declare-fun bs!27264 () Bool)

(assert (= bs!27264 (and b!252425 b!251909)))

(assert (=> bs!27264 (= lambda!8377 lambda!8365)))

(declare-fun bs!27265 () Bool)

(assert (= bs!27265 (and b!252425 b!251723)))

(assert (=> bs!27265 (= lambda!8377 lambda!8359)))

(declare-fun bs!27266 () Bool)

(assert (= bs!27266 (and b!252425 b!249873)))

(assert (=> bs!27266 (not (= lambda!8377 lambda!8285))))

(declare-fun bs!27267 () Bool)

(assert (= bs!27267 (and b!252425 d!70365)))

(assert (=> bs!27267 (not (= lambda!8377 lambda!8323))))

(declare-fun bs!27268 () Bool)

(assert (= bs!27268 (and b!252425 b!249874)))

(assert (=> bs!27268 (= lambda!8377 lambda!8286)))

(declare-fun bs!27269 () Bool)

(assert (= bs!27269 (and b!252425 d!70619)))

(assert (=> bs!27269 (= lambda!8377 lambda!8335)))

(declare-fun bs!27271 () Bool)

(assert (= bs!27271 (and b!252425 d!70193)))

(assert (=> bs!27271 (not (= lambda!8377 lambda!8294))))

(declare-fun bs!27272 () Bool)

(assert (= bs!27272 (and b!252425 d!71025)))

(assert (=> bs!27272 (not (= lambda!8377 lambda!8358))))

(declare-fun b!252430 () Bool)

(declare-fun e!156782 () Bool)

(assert (=> b!252430 (= e!156782 true)))

(declare-fun b!252429 () Bool)

(declare-fun e!156781 () Bool)

(assert (=> b!252429 (= e!156781 e!156782)))

(declare-fun b!252428 () Bool)

(declare-fun e!156780 () Bool)

(assert (=> b!252428 (= e!156780 e!156781)))

(assert (=> b!252425 e!156780))

(assert (= b!252429 b!252430))

(assert (= b!252428 b!252429))

(assert (= (and b!252425 ((_ is Cons!3679) rules!1920)) b!252428))

(assert (=> b!252430 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8377))))

(assert (=> b!252430 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1808 order!2735 lambda!8377))))

(assert (=> b!252425 true))

(declare-fun bm!13401 () Bool)

(declare-fun call!13410 () BalanceConc!2448)

(assert (=> bm!13401 (= call!13410 (charsOf!354 (h!9077 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0))))))

(declare-fun b!252417 () Bool)

(declare-fun e!156776 () List!3688)

(declare-fun call!13408 () List!3688)

(declare-fun lt!103421 () List!3688)

(assert (=> b!252417 (= e!156776 (++!942 call!13408 lt!103421))))

(declare-fun b!252418 () Bool)

(declare-fun e!156775 () BalanceConc!2448)

(assert (=> b!252418 (= e!156775 (charsOf!354 separatorToken!170))))

(declare-fun bm!13402 () Bool)

(declare-fun call!13406 () BalanceConc!2448)

(assert (=> bm!13402 (= call!13406 call!13410)))

(declare-fun b!252419 () Bool)

(declare-fun c!48063 () Bool)

(declare-fun lt!103420 () Option!760)

(assert (=> b!252419 (= c!48063 (and ((_ is Some!759) lt!103420) (not (= (_1!2273 (v!14538 lt!103420)) (h!9077 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0))))))))

(declare-fun e!156777 () List!3688)

(assert (=> b!252419 (= e!156777 e!156776)))

(declare-fun bm!13403 () Bool)

(declare-fun c!48064 () Bool)

(declare-fun c!48060 () Bool)

(assert (=> bm!13403 (= c!48064 c!48060)))

(declare-fun call!13407 () List!3688)

(declare-fun e!156778 () List!3688)

(assert (=> bm!13403 (= call!13408 (++!942 e!156778 (ite c!48060 lt!103421 call!13407)))))

(declare-fun b!252420 () Bool)

(assert (=> b!252420 (= e!156777 call!13408)))

(declare-fun bm!13405 () Bool)

(declare-fun call!13409 () List!3688)

(assert (=> bm!13405 (= call!13409 (list!1461 (ite c!48060 call!13410 e!156775)))))

(declare-fun b!252421 () Bool)

(assert (=> b!252421 (= e!156778 (list!1461 call!13406))))

(declare-fun b!252422 () Bool)

(declare-fun e!156774 () List!3688)

(assert (=> b!252422 (= e!156774 Nil!3678)))

(declare-fun b!252423 () Bool)

(assert (=> b!252423 (= e!156778 call!13409)))

(declare-fun b!252424 () Bool)

(assert (=> b!252424 (= e!156775 call!13406)))

(assert (=> b!252425 (= e!156774 e!156777)))

(declare-fun lt!103423 () Unit!4472)

(assert (=> b!252425 (= lt!103423 (forallContained!266 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0) lambda!8377 (h!9077 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0))))))

(assert (=> b!252425 (= lt!103421 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (t!35394 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!252425 (= lt!103420 (maxPrefix!315 thiss!17480 rules!1920 (++!942 (list!1461 (charsOf!354 (h!9077 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0)))) lt!103421)))))

(assert (=> b!252425 (= c!48060 (and ((_ is Some!759) lt!103420) (= (_1!2273 (v!14538 lt!103420)) (h!9077 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0)))))))

(declare-fun b!252426 () Bool)

(assert (=> b!252426 (= e!156776 Nil!3678)))

(assert (=> b!252426 (= (print!316 thiss!17480 (singletonSeq!251 (h!9077 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0)))) (printTailRec!279 thiss!17480 (singletonSeq!251 (h!9077 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0))) 0 (BalanceConc!2449 Empty!1220)))))

(declare-fun lt!103422 () Unit!4472)

(declare-fun Unit!4524 () Unit!4472)

(assert (=> b!252426 (= lt!103422 Unit!4524)))

(declare-fun lt!103424 () Unit!4472)

(assert (=> b!252426 (= lt!103424 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!94 thiss!17480 rules!1920 call!13407 lt!103421))))

(assert (=> b!252426 false))

(declare-fun lt!103419 () Unit!4472)

(declare-fun Unit!4525 () Unit!4472)

(assert (=> b!252426 (= lt!103419 Unit!4525)))

(declare-fun bm!13404 () Bool)

(assert (=> bm!13404 (= call!13407 call!13409)))

(declare-fun c!48062 () Bool)

(assert (=> bm!13404 (= c!48062 c!48063)))

(declare-fun d!71463 () Bool)

(declare-fun c!48061 () Bool)

(assert (=> d!71463 (= c!48061 ((_ is Cons!3680) (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0)))))

(assert (=> d!71463 (= (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0) separatorToken!170) e!156774)))

(assert (= (and d!71463 c!48061) b!252425))

(assert (= (and d!71463 (not c!48061)) b!252422))

(assert (= (and b!252425 c!48060) b!252420))

(assert (= (and b!252425 (not c!48060)) b!252419))

(assert (= (and b!252419 c!48063) b!252417))

(assert (= (and b!252419 (not c!48063)) b!252426))

(assert (= (or b!252417 b!252426) bm!13402))

(assert (= (or b!252417 b!252426) bm!13404))

(assert (= (and bm!13404 c!48062) b!252418))

(assert (= (and bm!13404 (not c!48062)) b!252424))

(assert (= (or b!252420 bm!13402) bm!13401))

(assert (= (or b!252420 bm!13404) bm!13405))

(assert (= (or b!252420 b!252417) bm!13403))

(assert (= (and bm!13403 c!48064) b!252423))

(assert (= (and bm!13403 (not c!48064)) b!252421))

(declare-fun m!311695 () Bool)

(assert (=> bm!13401 m!311695))

(declare-fun m!311697 () Bool)

(assert (=> b!252421 m!311697))

(declare-fun m!311699 () Bool)

(assert (=> b!252417 m!311699))

(declare-fun m!311701 () Bool)

(assert (=> bm!13403 m!311701))

(assert (=> b!252418 m!306127))

(declare-fun m!311703 () Bool)

(assert (=> bm!13405 m!311703))

(declare-fun m!311705 () Bool)

(assert (=> b!252426 m!311705))

(assert (=> b!252426 m!311705))

(declare-fun m!311707 () Bool)

(assert (=> b!252426 m!311707))

(assert (=> b!252426 m!311705))

(declare-fun m!311709 () Bool)

(assert (=> b!252426 m!311709))

(declare-fun m!311711 () Bool)

(assert (=> b!252426 m!311711))

(declare-fun m!311713 () Bool)

(assert (=> b!252425 m!311713))

(declare-fun m!311715 () Bool)

(assert (=> b!252425 m!311715))

(assert (=> b!252425 m!306803))

(declare-fun m!311717 () Bool)

(assert (=> b!252425 m!311717))

(assert (=> b!252425 m!311715))

(declare-fun m!311719 () Bool)

(assert (=> b!252425 m!311719))

(assert (=> b!252425 m!311695))

(assert (=> b!252425 m!311713))

(assert (=> b!252425 m!311695))

(declare-fun m!311721 () Bool)

(assert (=> b!252425 m!311721))

(assert (=> d!70263 d!71463))

(assert (=> d!70263 d!71267))

(assert (=> d!70263 d!71137))

(declare-fun d!71479 () Bool)

(assert (=> d!71479 (forall!865 (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0) lambda!8316)))

(declare-fun lt!103442 () Unit!4472)

(assert (=> d!71479 (= lt!103442 (choose!2368 (list!1460 (seqFromList!776 (t!35394 tokens!465))) (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0) lambda!8316))))

(assert (=> d!71479 (forall!865 (list!1460 (seqFromList!776 (t!35394 tokens!465))) lambda!8316)))

(assert (=> d!71479 (= (lemmaContentSubsetPreservesForall!89 (list!1460 (seqFromList!776 (t!35394 tokens!465))) (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0) lambda!8316) lt!103442)))

(declare-fun bs!27288 () Bool)

(assert (= bs!27288 d!71479))

(assert (=> bs!27288 m!306803))

(declare-fun m!311723 () Bool)

(assert (=> bs!27288 m!311723))

(assert (=> bs!27288 m!306763))

(assert (=> bs!27288 m!306803))

(declare-fun m!311725 () Bool)

(assert (=> bs!27288 m!311725))

(assert (=> bs!27288 m!306763))

(declare-fun m!311727 () Bool)

(assert (=> bs!27288 m!311727))

(assert (=> d!70263 d!71479))

(declare-fun d!71481 () Bool)

(assert (=> d!71481 (= (dropList!145 (seqFromList!776 (t!35394 tokens!465)) 0) (drop!198 (list!1465 (c!47454 (seqFromList!776 (t!35394 tokens!465)))) 0))))

(declare-fun bs!27293 () Bool)

(assert (= bs!27293 d!71481))

(assert (=> bs!27293 m!310121))

(assert (=> bs!27293 m!310121))

(declare-fun m!311729 () Bool)

(assert (=> bs!27293 m!311729))

(assert (=> d!70263 d!71481))

(declare-fun d!71483 () Bool)

(assert (=> d!71483 (= (isDefined!611 lt!102084) (not (isEmpty!2282 lt!102084)))))

(declare-fun bs!27295 () Bool)

(assert (= bs!27295 d!71483))

(assert (=> bs!27295 m!306677))

(assert (=> b!250240 d!71483))

(declare-fun d!71485 () Bool)

(assert (=> d!71485 (= (isEmpty!2282 lt!102184) (not ((_ is Some!759) lt!102184)))))

(assert (=> d!70341 d!71485))

(declare-fun b!252456 () Bool)

(declare-fun res!117006 () Bool)

(declare-fun e!156801 () Bool)

(assert (=> b!252456 (=> (not res!117006) (not e!156801))))

(assert (=> b!252456 (= res!117006 (= (head!866 lt!101845) (head!866 lt!101845)))))

(declare-fun b!252455 () Bool)

(declare-fun e!156799 () Bool)

(assert (=> b!252455 (= e!156799 e!156801)))

(declare-fun res!117007 () Bool)

(assert (=> b!252455 (=> (not res!117007) (not e!156801))))

(assert (=> b!252455 (= res!117007 (not ((_ is Nil!3678) lt!101845)))))

(declare-fun d!71487 () Bool)

(declare-fun e!156800 () Bool)

(assert (=> d!71487 e!156800))

(declare-fun res!117004 () Bool)

(assert (=> d!71487 (=> res!117004 e!156800)))

(declare-fun lt!103443 () Bool)

(assert (=> d!71487 (= res!117004 (not lt!103443))))

(assert (=> d!71487 (= lt!103443 e!156799)))

(declare-fun res!117005 () Bool)

(assert (=> d!71487 (=> res!117005 e!156799)))

(assert (=> d!71487 (= res!117005 ((_ is Nil!3678) lt!101845))))

(assert (=> d!71487 (= (isPrefix!383 lt!101845 lt!101845) lt!103443)))

(declare-fun b!252457 () Bool)

(assert (=> b!252457 (= e!156801 (isPrefix!383 (tail!458 lt!101845) (tail!458 lt!101845)))))

(declare-fun b!252458 () Bool)

(assert (=> b!252458 (= e!156800 (>= (size!2913 lt!101845) (size!2913 lt!101845)))))

(assert (= (and d!71487 (not res!117005)) b!252455))

(assert (= (and b!252455 res!117007) b!252456))

(assert (= (and b!252456 res!117006) b!252457))

(assert (= (and d!71487 (not res!117004)) b!252458))

(assert (=> b!252456 m!307415))

(assert (=> b!252456 m!307415))

(assert (=> b!252457 m!307417))

(assert (=> b!252457 m!307417))

(assert (=> b!252457 m!307417))

(assert (=> b!252457 m!307417))

(declare-fun m!311731 () Bool)

(assert (=> b!252457 m!311731))

(assert (=> b!252458 m!307065))

(assert (=> b!252458 m!307065))

(assert (=> d!70341 d!71487))

(declare-fun d!71489 () Bool)

(assert (=> d!71489 (isPrefix!383 lt!101845 lt!101845)))

(declare-fun lt!103446 () Unit!4472)

(declare-fun choose!2370 (List!3688 List!3688) Unit!4472)

(assert (=> d!71489 (= lt!103446 (choose!2370 lt!101845 lt!101845))))

(assert (=> d!71489 (= (lemmaIsPrefixRefl!195 lt!101845 lt!101845) lt!103446)))

(declare-fun bs!27307 () Bool)

(assert (= bs!27307 d!71489))

(assert (=> bs!27307 m!307069))

(declare-fun m!311733 () Bool)

(assert (=> bs!27307 m!311733))

(assert (=> d!70341 d!71489))

(declare-fun bs!27308 () Bool)

(declare-fun d!71491 () Bool)

(assert (= bs!27308 (and d!71491 d!71055)))

(declare-fun lambda!8382 () Int)

(assert (=> bs!27308 (= lambda!8382 lambda!8362)))

(assert (=> d!71491 true))

(declare-fun lt!103454 () Bool)

(assert (=> d!71491 (= lt!103454 (forall!871 rules!1920 lambda!8382))))

(declare-fun e!156819 () Bool)

(assert (=> d!71491 (= lt!103454 e!156819)))

(declare-fun res!117017 () Bool)

(assert (=> d!71491 (=> res!117017 e!156819)))

(assert (=> d!71491 (= res!117017 (not ((_ is Cons!3679) rules!1920)))))

(assert (=> d!71491 (= (rulesValidInductive!186 thiss!17480 rules!1920) lt!103454)))

(declare-fun b!252485 () Bool)

(declare-fun e!156820 () Bool)

(assert (=> b!252485 (= e!156819 e!156820)))

(declare-fun res!117016 () Bool)

(assert (=> b!252485 (=> (not res!117016) (not e!156820))))

(assert (=> b!252485 (= res!117016 (ruleValid!85 thiss!17480 (h!9076 rules!1920)))))

(declare-fun b!252486 () Bool)

(assert (=> b!252486 (= e!156820 (rulesValidInductive!186 thiss!17480 (t!35393 rules!1920)))))

(assert (= (and d!71491 (not res!117017)) b!252485))

(assert (= (and b!252485 res!117016) b!252486))

(declare-fun m!311821 () Bool)

(assert (=> d!71491 m!311821))

(assert (=> b!252485 m!309285))

(assert (=> b!252486 m!307473))

(assert (=> d!70341 d!71491))

(declare-fun d!71503 () Bool)

(assert (=> d!71503 (= (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (v!14538 (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(assert (=> b!250708 d!71503))

(assert (=> b!250708 d!71169))

(assert (=> b!250708 d!70197))

(assert (=> b!250708 d!70363))

(assert (=> b!250058 d!70843))

(declare-fun d!71507 () Bool)

(assert (=> d!71507 (isPrefix!383 lt!102145 lt!102144)))

(declare-fun lt!103455 () Unit!4472)

(assert (=> d!71507 (= lt!103455 (choose!2370 lt!102145 lt!102144))))

(assert (=> d!71507 (= (lemmaIsPrefixRefl!195 lt!102145 lt!102144) lt!103455)))

(declare-fun bs!27309 () Bool)

(assert (= bs!27309 d!71507))

(assert (=> bs!27309 m!306921))

(declare-fun m!311827 () Bool)

(assert (=> bs!27309 m!311827))

(assert (=> d!70283 d!71507))

(assert (=> d!70283 d!71491))

(assert (=> d!70283 d!71273))

(declare-fun d!71509 () Bool)

(assert (=> d!71509 (= (isDefined!611 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))) (not (isEmpty!2282 (maxPrefixZipper!99 thiss!17480 rules!1920 (list!1461 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))))))))

(declare-fun bs!27310 () Bool)

(assert (= bs!27310 d!71509))

(assert (=> bs!27310 m!306915))

(declare-fun m!311829 () Bool)

(assert (=> bs!27310 m!311829))

(assert (=> d!70283 d!71509))

(assert (=> d!70283 d!70805))

(declare-fun b!252489 () Bool)

(declare-fun res!117020 () Bool)

(declare-fun e!156824 () Bool)

(assert (=> b!252489 (=> (not res!117020) (not e!156824))))

(assert (=> b!252489 (= res!117020 (= (head!866 lt!102145) (head!866 lt!102144)))))

(declare-fun b!252488 () Bool)

(declare-fun e!156822 () Bool)

(assert (=> b!252488 (= e!156822 e!156824)))

(declare-fun res!117021 () Bool)

(assert (=> b!252488 (=> (not res!117021) (not e!156824))))

(assert (=> b!252488 (= res!117021 (not ((_ is Nil!3678) lt!102144)))))

(declare-fun d!71511 () Bool)

(declare-fun e!156823 () Bool)

(assert (=> d!71511 e!156823))

(declare-fun res!117018 () Bool)

(assert (=> d!71511 (=> res!117018 e!156823)))

(declare-fun lt!103456 () Bool)

(assert (=> d!71511 (= res!117018 (not lt!103456))))

(assert (=> d!71511 (= lt!103456 e!156822)))

(declare-fun res!117019 () Bool)

(assert (=> d!71511 (=> res!117019 e!156822)))

(assert (=> d!71511 (= res!117019 ((_ is Nil!3678) lt!102145))))

(assert (=> d!71511 (= (isPrefix!383 lt!102145 lt!102144) lt!103456)))

(declare-fun b!252490 () Bool)

(assert (=> b!252490 (= e!156824 (isPrefix!383 (tail!458 lt!102145) (tail!458 lt!102144)))))

(declare-fun b!252491 () Bool)

(assert (=> b!252491 (= e!156823 (>= (size!2913 lt!102144) (size!2913 lt!102145)))))

(assert (= (and d!71511 (not res!117019)) b!252488))

(assert (= (and b!252488 res!117021) b!252489))

(assert (= (and b!252489 res!117020) b!252490))

(assert (= (and d!71511 (not res!117018)) b!252491))

(declare-fun m!311831 () Bool)

(assert (=> b!252489 m!311831))

(declare-fun m!311833 () Bool)

(assert (=> b!252489 m!311833))

(declare-fun m!311835 () Bool)

(assert (=> b!252490 m!311835))

(declare-fun m!311837 () Bool)

(assert (=> b!252490 m!311837))

(assert (=> b!252490 m!311835))

(assert (=> b!252490 m!311837))

(declare-fun m!311839 () Bool)

(assert (=> b!252490 m!311839))

(declare-fun m!311841 () Bool)

(assert (=> b!252491 m!311841))

(declare-fun m!311843 () Bool)

(assert (=> b!252491 m!311843))

(assert (=> d!70283 d!71511))

(assert (=> d!70283 d!70577))

(declare-fun d!71513 () Bool)

(declare-fun lt!103457 () Int)

(assert (=> d!71513 (>= lt!103457 0)))

(declare-fun e!156825 () Int)

(assert (=> d!71513 (= lt!103457 e!156825)))

(declare-fun c!48082 () Bool)

(assert (=> d!71513 (= c!48082 ((_ is Nil!3678) lt!101851))))

(assert (=> d!71513 (= (size!2913 lt!101851) lt!103457)))

(declare-fun b!252492 () Bool)

(assert (=> b!252492 (= e!156825 0)))

(declare-fun b!252493 () Bool)

(assert (=> b!252493 (= e!156825 (+ 1 (size!2913 (t!35392 lt!101851))))))

(assert (= (and d!71513 c!48082) b!252492))

(assert (= (and d!71513 (not c!48082)) b!252493))

(declare-fun m!311845 () Bool)

(assert (=> b!252493 m!311845))

(assert (=> b!249923 d!71513))

(assert (=> b!249923 d!70457))

(assert (=> b!249923 d!71409))

(declare-fun d!71515 () Bool)

(declare-fun c!48085 () Bool)

(assert (=> d!71515 (= c!48085 ((_ is Node!1220) (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))))))

(declare-fun e!156830 () Bool)

(assert (=> d!71515 (= (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))) e!156830)))

(declare-fun b!252500 () Bool)

(declare-fun inv!4538 (Conc!1220) Bool)

(assert (=> b!252500 (= e!156830 (inv!4538 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))))))

(declare-fun b!252501 () Bool)

(declare-fun e!156831 () Bool)

(assert (=> b!252501 (= e!156830 e!156831)))

(declare-fun res!117024 () Bool)

(assert (=> b!252501 (= res!117024 (not ((_ is Leaf!1909) (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))))))))

(assert (=> b!252501 (=> res!117024 e!156831)))

(declare-fun b!252502 () Bool)

(declare-fun inv!4539 (Conc!1220) Bool)

(assert (=> b!252502 (= e!156831 (inv!4539 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))))))

(assert (= (and d!71515 c!48085) b!252500))

(assert (= (and d!71515 (not c!48085)) b!252501))

(assert (= (and b!252501 (not res!117024)) b!252502))

(declare-fun m!311847 () Bool)

(assert (=> b!252500 m!311847))

(declare-fun m!311849 () Bool)

(assert (=> b!252502 m!311849))

(assert (=> b!250301 d!71515))

(declare-fun d!71517 () Bool)

(assert (=> d!71517 (dynLambda!1813 lambda!8286 (h!9077 tokens!465))))

(assert (=> d!71517 true))

(declare-fun _$7!336 () Unit!4472)

(assert (=> d!71517 (= (choose!2355 tokens!465 lambda!8286 (h!9077 tokens!465)) _$7!336)))

(declare-fun b_lambda!7471 () Bool)

(assert (=> (not b_lambda!7471) (not d!71517)))

(declare-fun bs!27311 () Bool)

(assert (= bs!27311 d!71517))

(assert (=> bs!27311 m!306927))

(assert (=> d!70295 d!71517))

(declare-fun d!71519 () Bool)

(declare-fun res!117025 () Bool)

(declare-fun e!156832 () Bool)

(assert (=> d!71519 (=> res!117025 e!156832)))

(assert (=> d!71519 (= res!117025 ((_ is Nil!3680) tokens!465))))

(assert (=> d!71519 (= (forall!865 tokens!465 lambda!8286) e!156832)))

(declare-fun b!252503 () Bool)

(declare-fun e!156833 () Bool)

(assert (=> b!252503 (= e!156832 e!156833)))

(declare-fun res!117026 () Bool)

(assert (=> b!252503 (=> (not res!117026) (not e!156833))))

(assert (=> b!252503 (= res!117026 (dynLambda!1813 lambda!8286 (h!9077 tokens!465)))))

(declare-fun b!252504 () Bool)

(assert (=> b!252504 (= e!156833 (forall!865 (t!35394 tokens!465) lambda!8286))))

(assert (= (and d!71519 (not res!117025)) b!252503))

(assert (= (and b!252503 res!117026) b!252504))

(declare-fun b_lambda!7473 () Bool)

(assert (=> (not b_lambda!7473) (not b!252503)))

(assert (=> b!252503 m!306927))

(declare-fun m!311851 () Bool)

(assert (=> b!252504 m!311851))

(assert (=> d!70295 d!71519))

(declare-fun d!71521 () Bool)

(declare-fun c!48088 () Bool)

(assert (=> d!71521 (= c!48088 ((_ is Nil!3680) lt!102236))))

(declare-fun e!156836 () (InoxSet Token!1142))

(assert (=> d!71521 (= (content!515 lt!102236) e!156836)))

(declare-fun b!252509 () Bool)

(assert (=> b!252509 (= e!156836 ((as const (Array Token!1142 Bool)) false))))

(declare-fun b!252510 () Bool)

(assert (=> b!252510 (= e!156836 ((_ map or) (store ((as const (Array Token!1142 Bool)) false) (h!9077 lt!102236) true) (content!515 (t!35394 lt!102236))))))

(assert (= (and d!71521 c!48088) b!252509))

(assert (= (and d!71521 (not c!48088)) b!252510))

(declare-fun m!311853 () Bool)

(assert (=> b!252510 m!311853))

(declare-fun m!311855 () Bool)

(assert (=> b!252510 m!311855))

(assert (=> b!250616 d!71521))

(declare-fun c!48089 () Bool)

(declare-fun d!71523 () Bool)

(assert (=> d!71523 (= c!48089 ((_ is Nil!3680) (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))

(declare-fun e!156837 () (InoxSet Token!1142))

(assert (=> d!71523 (= (content!515 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))) e!156837)))

(declare-fun b!252511 () Bool)

(assert (=> b!252511 (= e!156837 ((as const (Array Token!1142 Bool)) false))))

(declare-fun b!252512 () Bool)

(assert (=> b!252512 (= e!156837 ((_ map or) (store ((as const (Array Token!1142 Bool)) false) (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))) true) (content!515 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))))

(assert (= (and d!71523 c!48089) b!252511))

(assert (= (and d!71523 (not c!48089)) b!252512))

(declare-fun m!311857 () Bool)

(assert (=> b!252512 m!311857))

(assert (=> b!252512 m!308653))

(assert (=> b!250616 d!71523))

(declare-fun lt!103458 () BalanceConc!2448)

(declare-fun e!156838 () Bool)

(declare-fun b!252516 () Bool)

(assert (=> b!252516 (= e!156838 (= (list!1461 lt!103458) (++!942 (list!1461 call!13246) (list!1461 lt!102100))))))

(declare-fun d!71525 () Bool)

(assert (=> d!71525 e!156838))

(declare-fun res!117029 () Bool)

(assert (=> d!71525 (=> (not res!117029) (not e!156838))))

(assert (=> d!71525 (= res!117029 (appendAssocInst!50 (c!47452 call!13246) (c!47452 lt!102100)))))

(assert (=> d!71525 (= lt!103458 (BalanceConc!2449 (++!945 (c!47452 call!13246) (c!47452 lt!102100))))))

(assert (=> d!71525 (= (++!943 call!13246 lt!102100) lt!103458)))

(declare-fun b!252514 () Bool)

(declare-fun res!117027 () Bool)

(assert (=> b!252514 (=> (not res!117027) (not e!156838))))

(assert (=> b!252514 (= res!117027 (<= (height!134 (++!945 (c!47452 call!13246) (c!47452 lt!102100))) (+ (max!0 (height!134 (c!47452 call!13246)) (height!134 (c!47452 lt!102100))) 1)))))

(declare-fun b!252513 () Bool)

(declare-fun res!117028 () Bool)

(assert (=> b!252513 (=> (not res!117028) (not e!156838))))

(assert (=> b!252513 (= res!117028 (isBalanced!317 (++!945 (c!47452 call!13246) (c!47452 lt!102100))))))

(declare-fun b!252515 () Bool)

(declare-fun res!117030 () Bool)

(assert (=> b!252515 (=> (not res!117030) (not e!156838))))

(assert (=> b!252515 (= res!117030 (>= (height!134 (++!945 (c!47452 call!13246) (c!47452 lt!102100))) (max!0 (height!134 (c!47452 call!13246)) (height!134 (c!47452 lt!102100)))))))

(assert (= (and d!71525 res!117029) b!252513))

(assert (= (and b!252513 res!117028) b!252514))

(assert (= (and b!252514 res!117027) b!252515))

(assert (= (and b!252515 res!117030) b!252516))

(declare-fun m!311859 () Bool)

(assert (=> b!252514 m!311859))

(assert (=> b!252514 m!310031))

(declare-fun m!311861 () Bool)

(assert (=> b!252514 m!311861))

(declare-fun m!311863 () Bool)

(assert (=> b!252514 m!311863))

(assert (=> b!252514 m!311859))

(assert (=> b!252514 m!310031))

(declare-fun m!311865 () Bool)

(assert (=> b!252514 m!311865))

(assert (=> b!252514 m!311861))

(declare-fun m!311867 () Bool)

(assert (=> b!252516 m!311867))

(declare-fun m!311869 () Bool)

(assert (=> b!252516 m!311869))

(assert (=> b!252516 m!306791))

(assert (=> b!252516 m!311869))

(assert (=> b!252516 m!306791))

(declare-fun m!311871 () Bool)

(assert (=> b!252516 m!311871))

(declare-fun m!311873 () Bool)

(assert (=> d!71525 m!311873))

(assert (=> d!71525 m!311861))

(assert (=> b!252513 m!311861))

(assert (=> b!252513 m!311861))

(declare-fun m!311875 () Bool)

(assert (=> b!252513 m!311875))

(assert (=> b!252515 m!311859))

(assert (=> b!252515 m!310031))

(assert (=> b!252515 m!311861))

(assert (=> b!252515 m!311863))

(assert (=> b!252515 m!311859))

(assert (=> b!252515 m!310031))

(assert (=> b!252515 m!311865))

(assert (=> b!252515 m!311861))

(assert (=> b!250295 d!71525))

(declare-fun d!71527 () Bool)

(declare-fun lt!103459 () Int)

(assert (=> d!71527 (>= lt!103459 0)))

(declare-fun e!156839 () Int)

(assert (=> d!71527 (= lt!103459 e!156839)))

(declare-fun c!48090 () Bool)

(assert (=> d!71527 (= c!48090 ((_ is Nil!3678) (_2!2273 (get!1209 lt!102184))))))

(assert (=> d!71527 (= (size!2913 (_2!2273 (get!1209 lt!102184))) lt!103459)))

(declare-fun b!252517 () Bool)

(assert (=> b!252517 (= e!156839 0)))

(declare-fun b!252518 () Bool)

(assert (=> b!252518 (= e!156839 (+ 1 (size!2913 (t!35392 (_2!2273 (get!1209 lt!102184))))))))

(assert (= (and d!71527 c!48090) b!252517))

(assert (= (and d!71527 (not c!48090)) b!252518))

(declare-fun m!311877 () Bool)

(assert (=> b!252518 m!311877))

(assert (=> b!250452 d!71527))

(assert (=> b!250452 d!70827))

(assert (=> b!250452 d!70823))

(declare-fun d!71529 () Bool)

(assert (=> d!71529 (= (list!1461 (_2!2275 (get!1211 lt!102143))) (list!1463 (c!47452 (_2!2275 (get!1211 lt!102143)))))))

(declare-fun bs!27312 () Bool)

(assert (= bs!27312 d!71529))

(declare-fun m!311879 () Bool)

(assert (=> bs!27312 m!311879))

(assert (=> b!250395 d!71529))

(assert (=> b!250395 d!70571))

(assert (=> b!250395 d!70569))

(assert (=> b!250395 d!70567))

(assert (=> b!250395 d!70577))

(declare-fun bs!27313 () Bool)

(declare-fun d!71531 () Bool)

(assert (= bs!27313 (and d!71531 d!70809)))

(declare-fun lambda!8383 () Int)

(assert (=> bs!27313 (= (= (toValue!1402 (transformation!699 (h!9076 rules!1920))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465))))) (= lambda!8383 lambda!8344))))

(assert (=> d!71531 true))

(assert (=> d!71531 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (dynLambda!1816 order!2743 lambda!8383))))

(assert (=> d!71531 (= (equivClasses!219 (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (Forall2!131 lambda!8383))))

(declare-fun bs!27314 () Bool)

(assert (= bs!27314 d!71531))

(declare-fun m!311881 () Bool)

(assert (=> bs!27314 m!311881))

(assert (=> b!250446 d!71531))

(declare-fun b!252519 () Bool)

(declare-fun e!156840 () List!3688)

(assert (=> b!252519 (= e!156840 (_2!2273 (get!1209 lt!102084)))))

(declare-fun b!252520 () Bool)

(assert (=> b!252520 (= e!156840 (Cons!3678 (h!9075 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))) (++!942 (t!35392 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))) (_2!2273 (get!1209 lt!102084)))))))

(declare-fun b!252522 () Bool)

(declare-fun e!156841 () Bool)

(declare-fun lt!103460 () List!3688)

(assert (=> b!252522 (= e!156841 (or (not (= (_2!2273 (get!1209 lt!102084)) Nil!3678)) (= lt!103460 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084)))))))))

(declare-fun d!71533 () Bool)

(assert (=> d!71533 e!156841))

(declare-fun res!117032 () Bool)

(assert (=> d!71533 (=> (not res!117032) (not e!156841))))

(assert (=> d!71533 (= res!117032 (= (content!513 lt!103460) ((_ map or) (content!513 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))) (content!513 (_2!2273 (get!1209 lt!102084))))))))

(assert (=> d!71533 (= lt!103460 e!156840)))

(declare-fun c!48091 () Bool)

(assert (=> d!71533 (= c!48091 ((_ is Nil!3678) (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))))))

(assert (=> d!71533 (= (++!942 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084)))) (_2!2273 (get!1209 lt!102084))) lt!103460)))

(declare-fun b!252521 () Bool)

(declare-fun res!117031 () Bool)

(assert (=> b!252521 (=> (not res!117031) (not e!156841))))

(assert (=> b!252521 (= res!117031 (= (size!2913 lt!103460) (+ (size!2913 (list!1461 (charsOf!354 (_1!2273 (get!1209 lt!102084))))) (size!2913 (_2!2273 (get!1209 lt!102084))))))))

(assert (= (and d!71533 c!48091) b!252519))

(assert (= (and d!71533 (not c!48091)) b!252520))

(assert (= (and d!71533 res!117032) b!252521))

(assert (= (and b!252521 res!117031) b!252522))

(declare-fun m!311883 () Bool)

(assert (=> b!252520 m!311883))

(declare-fun m!311885 () Bool)

(assert (=> d!71533 m!311885))

(assert (=> d!71533 m!306669))

(declare-fun m!311887 () Bool)

(assert (=> d!71533 m!311887))

(declare-fun m!311889 () Bool)

(assert (=> d!71533 m!311889))

(declare-fun m!311891 () Bool)

(assert (=> b!252521 m!311891))

(assert (=> b!252521 m!306669))

(declare-fun m!311893 () Bool)

(assert (=> b!252521 m!311893))

(assert (=> b!252521 m!306675))

(assert (=> b!250243 d!71533))

(assert (=> b!250243 d!70541))

(assert (=> b!250243 d!70543))

(assert (=> b!250243 d!70481))

(declare-fun d!71535 () Bool)

(assert (=> d!71535 (= (list!1461 lt!102114) (list!1463 (c!47452 lt!102114)))))

(declare-fun bs!27315 () Bool)

(assert (= bs!27315 d!71535))

(declare-fun m!311895 () Bool)

(assert (=> bs!27315 m!311895))

(assert (=> d!70265 d!71535))

(declare-fun b!252531 () Bool)

(declare-fun e!156849 () Bool)

(declare-fun e!156850 () Bool)

(assert (=> b!252531 (= e!156849 e!156850)))

(declare-fun res!117038 () Bool)

(assert (=> b!252531 (= res!117038 (not ((_ is Cons!3679) rules!1920)))))

(assert (=> b!252531 (=> res!117038 e!156850)))

(declare-fun d!71537 () Bool)

(declare-fun c!48094 () Bool)

(assert (=> d!71537 (= c!48094 (and ((_ is Cons!3679) rules!1920) (not (= (isSeparator!699 (h!9076 rules!1920)) (isSeparator!699 (h!9076 rules!1920))))))))

(assert (=> d!71537 (= (ruleDisjointCharsFromAllFromOtherType!95 (h!9076 rules!1920) rules!1920) e!156849)))

(declare-fun b!252532 () Bool)

(declare-fun e!156848 () Bool)

(assert (=> b!252532 (= e!156849 e!156848)))

(declare-fun res!117037 () Bool)

(declare-fun rulesUseDisjointChars!46 (Rule!1198 Rule!1198) Bool)

(assert (=> b!252532 (= res!117037 (rulesUseDisjointChars!46 (h!9076 rules!1920) (h!9076 rules!1920)))))

(assert (=> b!252532 (=> (not res!117037) (not e!156848))))

(declare-fun b!252533 () Bool)

(declare-fun call!13421 () Bool)

(assert (=> b!252533 (= e!156848 call!13421)))

(declare-fun bm!13416 () Bool)

(assert (=> bm!13416 (= call!13421 (ruleDisjointCharsFromAllFromOtherType!95 (h!9076 rules!1920) (t!35393 rules!1920)))))

(declare-fun b!252534 () Bool)

(assert (=> b!252534 (= e!156850 call!13421)))

(assert (= (and d!71537 c!48094) b!252532))

(assert (= (and d!71537 (not c!48094)) b!252531))

(assert (= (and b!252532 res!117037) b!252533))

(assert (= (and b!252531 (not res!117038)) b!252534))

(assert (= (or b!252533 b!252534) bm!13416))

(declare-fun m!311897 () Bool)

(assert (=> b!252532 m!311897))

(declare-fun m!311899 () Bool)

(assert (=> bm!13416 m!311899))

(assert (=> b!250535 d!71537))

(assert (=> d!70327 d!70183))

(declare-fun d!71539 () Bool)

(assert (=> d!71539 (= (list!1460 (singletonSeq!251 (h!9077 tokens!465))) (list!1465 (c!47454 (singletonSeq!251 (h!9077 tokens!465)))))))

(declare-fun bs!27316 () Bool)

(assert (= bs!27316 d!71539))

(declare-fun m!311901 () Bool)

(assert (=> bs!27316 m!311901))

(assert (=> d!70327 d!71539))

(assert (=> d!70327 d!70739))

(declare-fun d!71541 () Bool)

(assert (=> d!71541 (= (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465)))))) (list!1465 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 (print!316 thiss!17480 (singletonSeq!251 (h!9077 tokens!465))))))))))

(declare-fun bs!27317 () Bool)

(assert (= bs!27317 d!71541))

(declare-fun m!311903 () Bool)

(assert (=> bs!27317 m!311903))

(assert (=> d!70327 d!71541))

(declare-fun d!71543 () Bool)

(declare-fun lt!103461 () Int)

(assert (=> d!71543 (= lt!103461 (size!2918 (list!1460 (_1!2274 lt!102169))))))

(assert (=> d!71543 (= lt!103461 (size!2919 (c!47454 (_1!2274 lt!102169))))))

(assert (=> d!71543 (= (size!2911 (_1!2274 lt!102169)) lt!103461)))

(declare-fun bs!27318 () Bool)

(assert (= bs!27318 d!71543))

(assert (=> bs!27318 m!311533))

(assert (=> bs!27318 m!311533))

(declare-fun m!311905 () Bool)

(assert (=> bs!27318 m!311905))

(declare-fun m!311907 () Bool)

(assert (=> bs!27318 m!311907))

(assert (=> d!70327 d!71543))

(assert (=> d!70327 d!70317))

(assert (=> d!70327 d!70741))

(declare-fun d!71545 () Bool)

(declare-fun c!48095 () Bool)

(assert (=> d!71545 (= c!48095 ((_ is Nil!3678) lt!102091))))

(declare-fun e!156851 () (InoxSet C!2768))

(assert (=> d!71545 (= (content!513 lt!102091) e!156851)))

(declare-fun b!252535 () Bool)

(assert (=> b!252535 (= e!156851 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!252536 () Bool)

(assert (=> b!252536 (= e!156851 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!102091) true) (content!513 (t!35392 lt!102091))))))

(assert (= (and d!71545 c!48095) b!252535))

(assert (= (and d!71545 (not c!48095)) b!252536))

(declare-fun m!311909 () Bool)

(assert (=> b!252536 m!311909))

(declare-fun m!311911 () Bool)

(assert (=> b!252536 m!311911))

(assert (=> d!70259 d!71545))

(declare-fun d!71547 () Bool)

(declare-fun c!48096 () Bool)

(assert (=> d!71547 (= c!48096 ((_ is Nil!3678) lt!101837))))

(declare-fun e!156852 () (InoxSet C!2768))

(assert (=> d!71547 (= (content!513 lt!101837) e!156852)))

(declare-fun b!252537 () Bool)

(assert (=> b!252537 (= e!156852 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!252538 () Bool)

(assert (=> b!252538 (= e!156852 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!101837) true) (content!513 (t!35392 lt!101837))))))

(assert (= (and d!71547 c!48096) b!252537))

(assert (= (and d!71547 (not c!48096)) b!252538))

(declare-fun m!311913 () Bool)

(assert (=> b!252538 m!311913))

(assert (=> b!252538 m!311429))

(assert (=> d!70259 d!71547))

(assert (=> d!70259 d!70565))

(declare-fun bs!27319 () Bool)

(declare-fun d!71549 () Bool)

(assert (= bs!27319 (and d!71549 d!70809)))

(declare-fun lambda!8384 () Int)

(assert (=> bs!27319 (= (= (toValue!1402 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465))))) (= lambda!8384 lambda!8344))))

(declare-fun bs!27320 () Bool)

(assert (= bs!27320 (and d!71549 d!71531)))

(assert (=> bs!27320 (= (= (toValue!1402 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (h!9076 rules!1920)))) (= lambda!8384 lambda!8383))))

(assert (=> d!71549 true))

(assert (=> d!71549 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (rule!1276 separatorToken!170)))) (dynLambda!1816 order!2743 lambda!8384))))

(assert (=> d!71549 (= (equivClasses!219 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (rule!1276 separatorToken!170)))) (Forall2!131 lambda!8384))))

(declare-fun bs!27321 () Bool)

(assert (= bs!27321 d!71549))

(declare-fun m!311915 () Bool)

(assert (=> bs!27321 m!311915))

(assert (=> b!250008 d!71549))

(assert (=> b!250518 d!71335))

(assert (=> b!250518 d!70467))

(assert (=> b!250455 d!70829))

(assert (=> b!250455 d!70831))

(assert (=> b!250455 d!70827))

(declare-fun d!71551 () Bool)

(declare-fun lt!103462 () Bool)

(assert (=> d!71551 (= lt!103462 (isEmpty!2277 (list!1461 (_2!2274 lt!102197))))))

(assert (=> d!71551 (= lt!103462 (isEmpty!2289 (c!47452 (_2!2274 lt!102197))))))

(assert (=> d!71551 (= (isEmpty!2288 (_2!2274 lt!102197)) lt!103462)))

(declare-fun bs!27322 () Bool)

(assert (= bs!27322 d!71551))

(declare-fun m!311917 () Bool)

(assert (=> bs!27322 m!311917))

(assert (=> bs!27322 m!311917))

(declare-fun m!311919 () Bool)

(assert (=> bs!27322 m!311919))

(declare-fun m!311921 () Bool)

(assert (=> bs!27322 m!311921))

(assert (=> b!250529 d!71551))

(declare-fun d!71553 () Bool)

(declare-fun lt!103463 () BalanceConc!2448)

(assert (=> d!71553 (= (list!1461 lt!103463) (originalCharacters!742 call!13201))))

(assert (=> d!71553 (= lt!103463 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 call!13201))) (value!24237 call!13201)))))

(assert (=> d!71553 (= (charsOf!354 call!13201) lt!103463)))

(declare-fun b_lambda!7475 () Bool)

(assert (=> (not b_lambda!7475) (not d!71553)))

(declare-fun t!35686 () Bool)

(declare-fun tb!13019 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 call!13201)))) t!35686) tb!13019))

(declare-fun b!252539 () Bool)

(declare-fun e!156853 () Bool)

(declare-fun tp!97252 () Bool)

(assert (=> b!252539 (= e!156853 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 call!13201))) (value!24237 call!13201)))) tp!97252))))

(declare-fun result!16386 () Bool)

(assert (=> tb!13019 (= result!16386 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 call!13201))) (value!24237 call!13201))) e!156853))))

(assert (= tb!13019 b!252539))

(declare-fun m!311923 () Bool)

(assert (=> b!252539 m!311923))

(declare-fun m!311925 () Bool)

(assert (=> tb!13019 m!311925))

(assert (=> d!71553 t!35686))

(declare-fun b_and!19141 () Bool)

(assert (= b_and!19117 (and (=> t!35686 result!16386) b_and!19141)))

(declare-fun tb!13021 () Bool)

(declare-fun t!35688 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 call!13201)))) t!35688) tb!13021))

(declare-fun result!16388 () Bool)

(assert (= result!16388 result!16386))

(assert (=> d!71553 t!35688))

(declare-fun b_and!19143 () Bool)

(assert (= b_and!19113 (and (=> t!35688 result!16388) b_and!19143)))

(declare-fun tb!13023 () Bool)

(declare-fun t!35690 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 call!13201)))) t!35690) tb!13023))

(declare-fun result!16390 () Bool)

(assert (= result!16390 result!16386))

(assert (=> d!71553 t!35690))

(declare-fun b_and!19145 () Bool)

(assert (= b_and!19119 (and (=> t!35690 result!16390) b_and!19145)))

(declare-fun t!35692 () Bool)

(declare-fun tb!13025 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 call!13201)))) t!35692) tb!13025))

(declare-fun result!16392 () Bool)

(assert (= result!16392 result!16386))

(assert (=> d!71553 t!35692))

(declare-fun b_and!19147 () Bool)

(assert (= b_and!19111 (and (=> t!35692 result!16392) b_and!19147)))

(declare-fun t!35694 () Bool)

(declare-fun tb!13027 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 call!13201)))) t!35694) tb!13027))

(declare-fun result!16394 () Bool)

(assert (= result!16394 result!16386))

(assert (=> d!71553 t!35694))

(declare-fun b_and!19149 () Bool)

(assert (= b_and!19115 (and (=> t!35694 result!16394) b_and!19149)))

(declare-fun m!311927 () Bool)

(assert (=> d!71553 m!311927))

(declare-fun m!311929 () Bool)

(assert (=> d!71553 m!311929))

(assert (=> b!250060 d!71553))

(assert (=> b!250398 d!71269))

(assert (=> b!250398 d!70567))

(assert (=> b!250398 d!70577))

(assert (=> b!250398 d!71273))

(assert (=> b!250398 d!71529))

(declare-fun d!71555 () Bool)

(declare-fun lt!103464 () Int)

(assert (=> d!71555 (>= lt!103464 0)))

(declare-fun e!156854 () Int)

(assert (=> d!71555 (= lt!103464 e!156854)))

(declare-fun c!48097 () Bool)

(assert (=> d!71555 (= c!48097 ((_ is Nil!3678) lt!102117))))

(assert (=> d!71555 (= (size!2913 lt!102117) lt!103464)))

(declare-fun b!252540 () Bool)

(assert (=> b!252540 (= e!156854 0)))

(declare-fun b!252541 () Bool)

(assert (=> b!252541 (= e!156854 (+ 1 (size!2913 (t!35392 lt!102117))))))

(assert (= (and d!71555 c!48097) b!252540))

(assert (= (and d!71555 (not c!48097)) b!252541))

(declare-fun m!311931 () Bool)

(assert (=> b!252541 m!311931))

(assert (=> b!250312 d!71555))

(assert (=> b!250312 d!70457))

(declare-fun d!71557 () Bool)

(declare-fun lt!103465 () Int)

(assert (=> d!71557 (>= lt!103465 0)))

(declare-fun e!156855 () Int)

(assert (=> d!71557 (= lt!103465 e!156855)))

(declare-fun c!48098 () Bool)

(assert (=> d!71557 (= c!48098 ((_ is Nil!3678) lt!101832))))

(assert (=> d!71557 (= (size!2913 lt!101832) lt!103465)))

(declare-fun b!252542 () Bool)

(assert (=> b!252542 (= e!156855 0)))

(declare-fun b!252543 () Bool)

(assert (=> b!252543 (= e!156855 (+ 1 (size!2913 (t!35392 lt!101832))))))

(assert (= (and d!71557 c!48098) b!252542))

(assert (= (and d!71557 (not c!48098)) b!252543))

(declare-fun m!311933 () Bool)

(assert (=> b!252543 m!311933))

(assert (=> b!250312 d!71557))

(declare-fun d!71559 () Bool)

(declare-fun c!48099 () Bool)

(assert (=> d!71559 (= c!48099 ((_ is Node!1220) (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))))))

(declare-fun e!156856 () Bool)

(assert (=> d!71559 (= (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))) e!156856)))

(declare-fun b!252544 () Bool)

(assert (=> b!252544 (= e!156856 (inv!4538 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))))))

(declare-fun b!252545 () Bool)

(declare-fun e!156857 () Bool)

(assert (=> b!252545 (= e!156856 e!156857)))

(declare-fun res!117039 () Bool)

(assert (=> b!252545 (= res!117039 (not ((_ is Leaf!1909) (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))))))))

(assert (=> b!252545 (=> res!117039 e!156857)))

(declare-fun b!252546 () Bool)

(assert (=> b!252546 (= e!156857 (inv!4539 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))))))

(assert (= (and d!71559 c!48099) b!252544))

(assert (= (and d!71559 (not c!48099)) b!252545))

(assert (= (and b!252545 (not res!117039)) b!252546))

(declare-fun m!311935 () Bool)

(assert (=> b!252544 m!311935))

(declare-fun m!311937 () Bool)

(assert (=> b!252546 m!311937))

(assert (=> b!249953 d!71559))

(declare-fun d!71561 () Bool)

(declare-fun lt!103468 () Int)

(assert (=> d!71561 (>= lt!103468 0)))

(declare-fun e!156860 () Int)

(assert (=> d!71561 (= lt!103468 e!156860)))

(declare-fun c!48102 () Bool)

(assert (=> d!71561 (= c!48102 ((_ is Nil!3680) lt!102236))))

(assert (=> d!71561 (= (size!2918 lt!102236) lt!103468)))

(declare-fun b!252551 () Bool)

(assert (=> b!252551 (= e!156860 0)))

(declare-fun b!252552 () Bool)

(assert (=> b!252552 (= e!156860 (+ 1 (size!2918 (t!35394 lt!102236))))))

(assert (= (and d!71561 c!48102) b!252551))

(assert (= (and d!71561 (not c!48102)) b!252552))

(declare-fun m!311939 () Bool)

(assert (=> b!252552 m!311939))

(assert (=> d!70391 d!71561))

(declare-fun d!71563 () Bool)

(declare-fun lt!103469 () Int)

(assert (=> d!71563 (>= lt!103469 0)))

(declare-fun e!156861 () Int)

(assert (=> d!71563 (= lt!103469 e!156861)))

(declare-fun c!48103 () Bool)

(assert (=> d!71563 (= c!48103 ((_ is Nil!3680) (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))

(assert (=> d!71563 (= (size!2918 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))) lt!103469)))

(declare-fun b!252553 () Bool)

(assert (=> b!252553 (= e!156861 0)))

(declare-fun b!252554 () Bool)

(assert (=> b!252554 (= e!156861 (+ 1 (size!2918 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))))

(assert (= (and d!71563 c!48103) b!252553))

(assert (= (and d!71563 (not c!48103)) b!252554))

(assert (=> b!252554 m!308647))

(assert (=> d!70391 d!71563))

(declare-fun d!71565 () Bool)

(assert (=> d!71565 (= (isEmpty!2278 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))) ((_ is Nil!3680) (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))))))

(assert (=> d!70297 d!71565))

(declare-fun d!71567 () Bool)

(assert (=> d!71567 (= (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834)))) (list!1465 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))))))

(declare-fun bs!27323 () Bool)

(assert (= bs!27323 d!71567))

(declare-fun m!311941 () Bool)

(assert (=> bs!27323 m!311941))

(assert (=> d!70297 d!71567))

(declare-fun d!71569 () Bool)

(declare-fun lt!103472 () Bool)

(assert (=> d!71569 (= lt!103472 (isEmpty!2278 (list!1465 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834)))))))))

(assert (=> d!71569 (= lt!103472 (= (size!2919 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))) 0))))

(assert (=> d!71569 (= (isEmpty!2286 (c!47454 (_1!2274 (lex!385 thiss!17480 rules!1920 (seqFromList!775 lt!101834))))) lt!103472)))

(declare-fun bs!27324 () Bool)

(assert (= bs!27324 d!71569))

(assert (=> bs!27324 m!311941))

(assert (=> bs!27324 m!311941))

(declare-fun m!311943 () Bool)

(assert (=> bs!27324 m!311943))

(declare-fun m!311945 () Bool)

(assert (=> bs!27324 m!311945))

(assert (=> d!70297 d!71569))

(assert (=> d!70403 d!70395))

(declare-fun d!71571 () Bool)

(declare-fun e!156944 () Bool)

(assert (=> d!71571 e!156944))

(declare-fun res!117098 () Bool)

(assert (=> d!71571 (=> res!117098 e!156944)))

(assert (=> d!71571 (= res!117098 (isEmpty!2278 tokens!465))))

(assert (=> d!71571 true))

(declare-fun _$48!590 () Unit!4472)

(assert (=> d!71571 (= (choose!2361 thiss!17480 rules!1920 tokens!465 separatorToken!170) _$48!590)))

(declare-fun b!252685 () Bool)

(declare-fun e!156945 () Bool)

(assert (=> b!252685 (= e!156944 e!156945)))

(declare-fun res!117097 () Bool)

(assert (=> b!252685 (=> (not res!117097) (not e!156945))))

(assert (=> b!252685 (= res!117097 (isDefined!611 (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!252686 () Bool)

(assert (=> b!252686 (= e!156945 (= (_1!2273 (get!1209 (maxPrefix!315 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!278 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!864 tokens!465)))))

(assert (= (and d!71571 (not res!117098)) b!252685))

(assert (= (and b!252685 res!117097) b!252686))

(assert (=> d!71571 m!306073))

(assert (=> b!252685 m!306049))

(assert (=> b!252685 m!306049))

(assert (=> b!252685 m!307403))

(assert (=> b!252685 m!307403))

(assert (=> b!252685 m!307405))

(assert (=> b!252686 m!306049))

(assert (=> b!252686 m!306049))

(assert (=> b!252686 m!307403))

(assert (=> b!252686 m!307403))

(assert (=> b!252686 m!307407))

(assert (=> b!252686 m!306025))

(assert (=> d!70403 d!71571))

(assert (=> d!70403 d!70317))

(declare-fun b!252688 () Bool)

(declare-fun e!156946 () List!3688)

(declare-fun e!156947 () List!3688)

(assert (=> b!252688 (= e!156946 e!156947)))

(declare-fun c!48135 () Bool)

(assert (=> b!252688 (= c!48135 ((_ is Leaf!1909) (c!47452 (charsOf!354 (h!9077 tokens!465)))))))

(declare-fun b!252690 () Bool)

(assert (=> b!252690 (= e!156947 (++!942 (list!1463 (left!3024 (c!47452 (charsOf!354 (h!9077 tokens!465))))) (list!1463 (right!3354 (c!47452 (charsOf!354 (h!9077 tokens!465)))))))))

(declare-fun b!252689 () Bool)

(assert (=> b!252689 (= e!156947 (list!1466 (xs!3815 (c!47452 (charsOf!354 (h!9077 tokens!465))))))))

(declare-fun d!71651 () Bool)

(declare-fun c!48134 () Bool)

(assert (=> d!71651 (= c!48134 ((_ is Empty!1220) (c!47452 (charsOf!354 (h!9077 tokens!465)))))))

(assert (=> d!71651 (= (list!1463 (c!47452 (charsOf!354 (h!9077 tokens!465)))) e!156946)))

(declare-fun b!252687 () Bool)

(assert (=> b!252687 (= e!156946 Nil!3678)))

(assert (= (and d!71651 c!48134) b!252687))

(assert (= (and d!71651 (not c!48134)) b!252688))

(assert (= (and b!252688 c!48135) b!252689))

(assert (= (and b!252688 (not c!48135)) b!252690))

(declare-fun m!312349 () Bool)

(assert (=> b!252690 m!312349))

(declare-fun m!312351 () Bool)

(assert (=> b!252690 m!312351))

(assert (=> b!252690 m!312349))

(assert (=> b!252690 m!312351))

(declare-fun m!312353 () Bool)

(assert (=> b!252690 m!312353))

(declare-fun m!312355 () Bool)

(assert (=> b!252689 m!312355))

(assert (=> d!70269 d!71651))

(assert (=> b!250275 d!70265))

(assert (=> b!250287 d!71095))

(declare-fun d!71653 () Bool)

(declare-fun e!156948 () Bool)

(assert (=> d!71653 e!156948))

(declare-fun res!117099 () Bool)

(assert (=> d!71653 (=> (not res!117099) (not e!156948))))

(declare-fun lt!103565 () BalanceConc!2450)

(assert (=> d!71653 (= res!117099 (= (list!1460 lt!103565) tokens!465))))

(assert (=> d!71653 (= lt!103565 (BalanceConc!2451 (fromList!150 tokens!465)))))

(assert (=> d!71653 (= (fromListB!280 tokens!465) lt!103565)))

(declare-fun b!252691 () Bool)

(assert (=> b!252691 (= e!156948 (isBalanced!315 (fromList!150 tokens!465)))))

(assert (= (and d!71653 res!117099) b!252691))

(declare-fun m!312357 () Bool)

(assert (=> d!71653 m!312357))

(declare-fun m!312359 () Bool)

(assert (=> d!71653 m!312359))

(assert (=> b!252691 m!312359))

(assert (=> b!252691 m!312359))

(declare-fun m!312361 () Bool)

(assert (=> b!252691 m!312361))

(assert (=> d!70231 d!71653))

(declare-fun d!71655 () Bool)

(assert (=> d!71655 (= (isEmpty!2282 lt!102084) (not ((_ is Some!759) lt!102084)))))

(assert (=> d!70237 d!71655))

(declare-fun b!252693 () Bool)

(declare-fun res!117102 () Bool)

(declare-fun e!156951 () Bool)

(assert (=> b!252693 (=> (not res!117102) (not e!156951))))

(assert (=> b!252693 (= res!117102 (= (head!866 lt!101834) (head!866 lt!101834)))))

(declare-fun b!252692 () Bool)

(declare-fun e!156949 () Bool)

(assert (=> b!252692 (= e!156949 e!156951)))

(declare-fun res!117103 () Bool)

(assert (=> b!252692 (=> (not res!117103) (not e!156951))))

(assert (=> b!252692 (= res!117103 (not ((_ is Nil!3678) lt!101834)))))

(declare-fun d!71657 () Bool)

(declare-fun e!156950 () Bool)

(assert (=> d!71657 e!156950))

(declare-fun res!117100 () Bool)

(assert (=> d!71657 (=> res!117100 e!156950)))

(declare-fun lt!103566 () Bool)

(assert (=> d!71657 (= res!117100 (not lt!103566))))

(assert (=> d!71657 (= lt!103566 e!156949)))

(declare-fun res!117101 () Bool)

(assert (=> d!71657 (=> res!117101 e!156949)))

(assert (=> d!71657 (= res!117101 ((_ is Nil!3678) lt!101834))))

(assert (=> d!71657 (= (isPrefix!383 lt!101834 lt!101834) lt!103566)))

(declare-fun b!252694 () Bool)

(assert (=> b!252694 (= e!156951 (isPrefix!383 (tail!458 lt!101834) (tail!458 lt!101834)))))

(declare-fun b!252695 () Bool)

(assert (=> b!252695 (= e!156950 (>= (size!2913 lt!101834) (size!2913 lt!101834)))))

(assert (= (and d!71657 (not res!117101)) b!252692))

(assert (= (and b!252692 res!117103) b!252693))

(assert (= (and b!252693 res!117102) b!252694))

(assert (= (and d!71657 (not res!117100)) b!252695))

(assert (=> b!252693 m!307097))

(assert (=> b!252693 m!307097))

(assert (=> b!252694 m!307101))

(assert (=> b!252694 m!307101))

(assert (=> b!252694 m!307101))

(assert (=> b!252694 m!307101))

(declare-fun m!312363 () Bool)

(assert (=> b!252694 m!312363))

(assert (=> b!252695 m!306183))

(assert (=> b!252695 m!306183))

(assert (=> d!70237 d!71657))

(declare-fun d!71659 () Bool)

(assert (=> d!71659 (isPrefix!383 lt!101834 lt!101834)))

(declare-fun lt!103567 () Unit!4472)

(assert (=> d!71659 (= lt!103567 (choose!2370 lt!101834 lt!101834))))

(assert (=> d!71659 (= (lemmaIsPrefixRefl!195 lt!101834 lt!101834) lt!103567)))

(declare-fun bs!27355 () Bool)

(assert (= bs!27355 d!71659))

(assert (=> bs!27355 m!306679))

(declare-fun m!312365 () Bool)

(assert (=> bs!27355 m!312365))

(assert (=> d!70237 d!71659))

(assert (=> d!70237 d!71491))

(declare-fun d!71661 () Bool)

(declare-fun nullableFct!51 (Regex!923) Bool)

(assert (=> d!71661 (= (nullable!164 (regex!699 (rule!1276 (h!9077 tokens!465)))) (nullableFct!51 (regex!699 (rule!1276 (h!9077 tokens!465)))))))

(declare-fun bs!27356 () Bool)

(assert (= bs!27356 d!71661))

(declare-fun m!312367 () Bool)

(assert (=> bs!27356 m!312367))

(assert (=> b!250523 d!71661))

(declare-fun d!71663 () Bool)

(declare-fun c!48136 () Bool)

(assert (=> d!71663 (= c!48136 ((_ is Nil!3678) lt!102116))))

(declare-fun e!156952 () (InoxSet C!2768))

(assert (=> d!71663 (= (content!513 lt!102116) e!156952)))

(declare-fun b!252696 () Bool)

(assert (=> b!252696 (= e!156952 ((as const (Array C!2768 Bool)) false))))

(declare-fun b!252697 () Bool)

(assert (=> b!252697 (= e!156952 ((_ map or) (store ((as const (Array C!2768 Bool)) false) (h!9075 lt!102116) true) (content!513 (t!35392 lt!102116))))))

(assert (= (and d!71663 c!48136) b!252696))

(assert (= (and d!71663 (not c!48136)) b!252697))

(declare-fun m!312369 () Bool)

(assert (=> b!252697 m!312369))

(declare-fun m!312371 () Bool)

(assert (=> b!252697 m!312371))

(assert (=> d!70271 d!71663))

(assert (=> d!70271 d!70563))

(assert (=> d!70271 d!71547))

(declare-fun d!71665 () Bool)

(declare-fun lt!103568 () Int)

(assert (=> d!71665 (>= lt!103568 0)))

(declare-fun e!156953 () Int)

(assert (=> d!71665 (= lt!103568 e!156953)))

(declare-fun c!48137 () Bool)

(assert (=> d!71665 (= c!48137 ((_ is Nil!3680) (list!1460 lt!101844)))))

(assert (=> d!71665 (= (size!2918 (list!1460 lt!101844)) lt!103568)))

(declare-fun b!252698 () Bool)

(assert (=> b!252698 (= e!156953 0)))

(declare-fun b!252699 () Bool)

(assert (=> b!252699 (= e!156953 (+ 1 (size!2918 (t!35394 (list!1460 lt!101844)))))))

(assert (= (and d!71665 c!48137) b!252698))

(assert (= (and d!71665 (not c!48137)) b!252699))

(declare-fun m!312373 () Bool)

(assert (=> b!252699 m!312373))

(assert (=> d!70329 d!71665))

(assert (=> d!70329 d!70595))

(declare-fun d!71667 () Bool)

(declare-fun lt!103571 () Int)

(assert (=> d!71667 (= lt!103571 (size!2918 (list!1465 (c!47454 lt!101844))))))

(assert (=> d!71667 (= lt!103571 (ite ((_ is Empty!1221) (c!47454 lt!101844)) 0 (ite ((_ is Leaf!1910) (c!47454 lt!101844)) (csize!2673 (c!47454 lt!101844)) (csize!2672 (c!47454 lt!101844)))))))

(assert (=> d!71667 (= (size!2919 (c!47454 lt!101844)) lt!103571)))

(declare-fun bs!27357 () Bool)

(assert (= bs!27357 d!71667))

(assert (=> bs!27357 m!307979))

(assert (=> bs!27357 m!307979))

(declare-fun m!312375 () Bool)

(assert (=> bs!27357 m!312375))

(assert (=> d!70329 d!71667))

(declare-fun lt!103572 () BalanceConc!2448)

(declare-fun e!156954 () Bool)

(declare-fun b!252703 () Bool)

(assert (=> b!252703 (= e!156954 (= (list!1461 lt!103572) (++!942 (list!1461 e!155354) (list!1461 (ite c!47495 lt!101951 call!13204)))))))

(declare-fun d!71669 () Bool)

(assert (=> d!71669 e!156954))

(declare-fun res!117106 () Bool)

(assert (=> d!71669 (=> (not res!117106) (not e!156954))))

(assert (=> d!71669 (= res!117106 (appendAssocInst!50 (c!47452 e!155354) (c!47452 (ite c!47495 lt!101951 call!13204))))))

(assert (=> d!71669 (= lt!103572 (BalanceConc!2449 (++!945 (c!47452 e!155354) (c!47452 (ite c!47495 lt!101951 call!13204)))))))

(assert (=> d!71669 (= (++!943 e!155354 (ite c!47495 lt!101951 call!13204)) lt!103572)))

(declare-fun b!252701 () Bool)

(declare-fun res!117104 () Bool)

(assert (=> b!252701 (=> (not res!117104) (not e!156954))))

(assert (=> b!252701 (= res!117104 (<= (height!134 (++!945 (c!47452 e!155354) (c!47452 (ite c!47495 lt!101951 call!13204)))) (+ (max!0 (height!134 (c!47452 e!155354)) (height!134 (c!47452 (ite c!47495 lt!101951 call!13204)))) 1)))))

(declare-fun b!252700 () Bool)

(declare-fun res!117105 () Bool)

(assert (=> b!252700 (=> (not res!117105) (not e!156954))))

(assert (=> b!252700 (= res!117105 (isBalanced!317 (++!945 (c!47452 e!155354) (c!47452 (ite c!47495 lt!101951 call!13204)))))))

(declare-fun b!252702 () Bool)

(declare-fun res!117107 () Bool)

(assert (=> b!252702 (=> (not res!117107) (not e!156954))))

(assert (=> b!252702 (= res!117107 (>= (height!134 (++!945 (c!47452 e!155354) (c!47452 (ite c!47495 lt!101951 call!13204)))) (max!0 (height!134 (c!47452 e!155354)) (height!134 (c!47452 (ite c!47495 lt!101951 call!13204))))))))

(assert (= (and d!71669 res!117106) b!252700))

(assert (= (and b!252700 res!117105) b!252701))

(assert (= (and b!252701 res!117104) b!252702))

(assert (= (and b!252702 res!117107) b!252703))

(declare-fun m!312377 () Bool)

(assert (=> b!252701 m!312377))

(declare-fun m!312379 () Bool)

(assert (=> b!252701 m!312379))

(declare-fun m!312381 () Bool)

(assert (=> b!252701 m!312381))

(declare-fun m!312383 () Bool)

(assert (=> b!252701 m!312383))

(assert (=> b!252701 m!312377))

(assert (=> b!252701 m!312379))

(declare-fun m!312385 () Bool)

(assert (=> b!252701 m!312385))

(assert (=> b!252701 m!312381))

(declare-fun m!312387 () Bool)

(assert (=> b!252703 m!312387))

(declare-fun m!312389 () Bool)

(assert (=> b!252703 m!312389))

(declare-fun m!312391 () Bool)

(assert (=> b!252703 m!312391))

(assert (=> b!252703 m!312389))

(assert (=> b!252703 m!312391))

(declare-fun m!312393 () Bool)

(assert (=> b!252703 m!312393))

(declare-fun m!312395 () Bool)

(assert (=> d!71669 m!312395))

(assert (=> d!71669 m!312381))

(assert (=> b!252700 m!312381))

(assert (=> b!252700 m!312381))

(declare-fun m!312397 () Bool)

(assert (=> b!252700 m!312397))

(assert (=> b!252702 m!312377))

(assert (=> b!252702 m!312379))

(assert (=> b!252702 m!312381))

(assert (=> b!252702 m!312383))

(assert (=> b!252702 m!312377))

(assert (=> b!252702 m!312379))

(assert (=> b!252702 m!312385))

(assert (=> b!252702 m!312381))

(assert (=> bm!13199 d!71669))

(declare-fun d!71671 () Bool)

(assert (=> d!71671 (= (isEmpty!2285 (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465))))) (not ((_ is Some!760) (maxPrefixZipperSequence!278 thiss!17480 rules!1920 (seqFromList!775 (originalCharacters!742 (h!9077 tokens!465)))))))))

(assert (=> d!70281 d!71671))

(declare-fun d!71673 () Bool)

(declare-fun e!156955 () Bool)

(assert (=> d!71673 e!156955))

(declare-fun res!117108 () Bool)

(assert (=> d!71673 (=> (not res!117108) (not e!156955))))

(declare-fun lt!103573 () BalanceConc!2448)

(assert (=> d!71673 (= res!117108 (= (list!1461 lt!103573) (originalCharacters!742 (h!9077 tokens!465))))))

(assert (=> d!71673 (= lt!103573 (BalanceConc!2449 (fromList!151 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (=> d!71673 (= (fromListB!281 (originalCharacters!742 (h!9077 tokens!465))) lt!103573)))

(declare-fun b!252704 () Bool)

(assert (=> b!252704 (= e!156955 (isBalanced!317 (fromList!151 (originalCharacters!742 (h!9077 tokens!465)))))))

(assert (= (and d!71673 res!117108) b!252704))

(declare-fun m!312399 () Bool)

(assert (=> d!71673 m!312399))

(declare-fun m!312401 () Bool)

(assert (=> d!71673 m!312401))

(assert (=> b!252704 m!312401))

(assert (=> b!252704 m!312401))

(declare-fun m!312403 () Bool)

(assert (=> b!252704 m!312403))

(assert (=> d!70293 d!71673))

(declare-fun d!71675 () Bool)

(declare-fun lt!103574 () Int)

(assert (=> d!71675 (>= lt!103574 0)))

(declare-fun e!156956 () Int)

(assert (=> d!71675 (= lt!103574 e!156956)))

(declare-fun c!48138 () Bool)

(assert (=> d!71675 (= c!48138 ((_ is Nil!3678) lt!101823))))

(assert (=> d!71675 (= (size!2913 lt!101823) lt!103574)))

(declare-fun b!252705 () Bool)

(assert (=> b!252705 (= e!156956 0)))

(declare-fun b!252706 () Bool)

(assert (=> b!252706 (= e!156956 (+ 1 (size!2913 (t!35392 lt!101823))))))

(assert (= (and d!71675 c!48138) b!252705))

(assert (= (and d!71675 (not c!48138)) b!252706))

(declare-fun m!312405 () Bool)

(assert (=> b!252706 m!312405))

(assert (=> b!250579 d!71675))

(assert (=> b!250579 d!70457))

(declare-fun d!71677 () Bool)

(declare-fun lt!103575 () Int)

(assert (=> d!71677 (>= lt!103575 0)))

(declare-fun e!156957 () Int)

(assert (=> d!71677 (= lt!103575 e!156957)))

(declare-fun c!48139 () Bool)

(assert (=> d!71677 (= c!48139 ((_ is Nil!3678) lt!102091))))

(assert (=> d!71677 (= (size!2913 lt!102091) lt!103575)))

(declare-fun b!252707 () Bool)

(assert (=> b!252707 (= e!156957 0)))

(declare-fun b!252708 () Bool)

(assert (=> b!252708 (= e!156957 (+ 1 (size!2913 (t!35392 lt!102091))))))

(assert (= (and d!71677 c!48139) b!252707))

(assert (= (and d!71677 (not c!48139)) b!252708))

(declare-fun m!312407 () Bool)

(assert (=> b!252708 m!312407))

(assert (=> b!250272 d!71677))

(assert (=> b!250272 d!70461))

(assert (=> b!250272 d!71409))

(declare-fun d!71679 () Bool)

(declare-fun lt!103576 () BalanceConc!2448)

(assert (=> d!71679 (= (list!1461 lt!103576) (originalCharacters!742 call!13247))))

(assert (=> d!71679 (= lt!103576 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 call!13247))) (value!24237 call!13247)))))

(assert (=> d!71679 (= (charsOf!354 call!13247) lt!103576)))

(declare-fun b_lambda!7483 () Bool)

(assert (=> (not b_lambda!7483) (not d!71679)))

(declare-fun t!35718 () Bool)

(declare-fun tb!13049 () Bool)

(assert (=> (and b!249891 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 call!13247)))) t!35718) tb!13049))

(declare-fun b!252709 () Bool)

(declare-fun e!156958 () Bool)

(declare-fun tp!97255 () Bool)

(assert (=> b!252709 (= e!156958 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 call!13247))) (value!24237 call!13247)))) tp!97255))))

(declare-fun result!16416 () Bool)

(assert (=> tb!13049 (= result!16416 (and (inv!4533 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 call!13247))) (value!24237 call!13247))) e!156958))))

(assert (= tb!13049 b!252709))

(declare-fun m!312409 () Bool)

(assert (=> b!252709 m!312409))

(declare-fun m!312411 () Bool)

(assert (=> tb!13049 m!312411))

(assert (=> d!71679 t!35718))

(declare-fun b_and!19171 () Bool)

(assert (= b_and!19147 (and (=> t!35718 result!16416) b_and!19171)))

(declare-fun tb!13051 () Bool)

(declare-fun t!35720 () Bool)

(assert (=> (and b!250767 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 call!13247)))) t!35720) tb!13051))

(declare-fun result!16418 () Bool)

(assert (= result!16418 result!16416))

(assert (=> d!71679 t!35720))

(declare-fun b_and!19173 () Bool)

(assert (= b_and!19149 (and (=> t!35720 result!16418) b_and!19173)))

(declare-fun tb!13053 () Bool)

(declare-fun t!35722 () Bool)

(assert (=> (and b!249885 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 call!13247)))) t!35722) tb!13053))

(declare-fun result!16420 () Bool)

(assert (= result!16420 result!16416))

(assert (=> d!71679 t!35722))

(declare-fun b_and!19175 () Bool)

(assert (= b_and!19141 (and (=> t!35722 result!16420) b_and!19175)))

(declare-fun t!35724 () Bool)

(declare-fun tb!13055 () Bool)

(assert (=> (and b!250734 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toChars!1261 (transformation!699 (rule!1276 call!13247)))) t!35724) tb!13055))

(declare-fun result!16422 () Bool)

(assert (= result!16422 result!16416))

(assert (=> d!71679 t!35724))

(declare-fun b_and!19177 () Bool)

(assert (= b_and!19143 (and (=> t!35724 result!16422) b_and!19177)))

(declare-fun tb!13057 () Bool)

(declare-fun t!35726 () Bool)

(assert (=> (and b!249870 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 call!13247)))) t!35726) tb!13057))

(declare-fun result!16424 () Bool)

(assert (= result!16424 result!16416))

(assert (=> d!71679 t!35726))

(declare-fun b_and!19179 () Bool)

(assert (= b_and!19145 (and (=> t!35726 result!16424) b_and!19179)))

(declare-fun m!312413 () Bool)

(assert (=> d!71679 m!312413))

(declare-fun m!312415 () Bool)

(assert (=> d!71679 m!312415))

(assert (=> b!250289 d!71679))

(declare-fun d!71681 () Bool)

(assert (=> d!71681 (= (inv!17 (value!24237 (h!9077 tokens!465))) (= (charsToBigInt!1 (text!5495 (value!24237 (h!9077 tokens!465)))) (value!24229 (value!24237 (h!9077 tokens!465)))))))

(declare-fun bs!27358 () Bool)

(assert (= bs!27358 d!71681))

(declare-fun m!312417 () Bool)

(assert (=> bs!27358 m!312417))

(assert (=> b!250718 d!71681))

(declare-fun d!71683 () Bool)

(assert (=> d!71683 (= (isEmpty!2277 (originalCharacters!742 (h!9077 tokens!465))) ((_ is Nil!3678) (originalCharacters!742 (h!9077 tokens!465))))))

(assert (=> d!70155 d!71683))

(assert (=> b!250236 d!70481))

(declare-fun d!71685 () Bool)

(assert (=> d!71685 (= (apply!698 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102084))))) (dynLambda!1819 (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102084))))))))

(declare-fun b_lambda!7485 () Bool)

(assert (=> (not b_lambda!7485) (not d!71685)))

(declare-fun t!35728 () Bool)

(declare-fun tb!13059 () Bool)

(assert (=> (and b!250767 (= (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35728) tb!13059))

(declare-fun result!16426 () Bool)

(assert (=> tb!13059 (= result!16426 (inv!21 (dynLambda!1819 (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084))))) (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102084)))))))))

(declare-fun m!312419 () Bool)

(assert (=> tb!13059 m!312419))

(assert (=> d!71685 t!35728))

(declare-fun b_and!19181 () Bool)

(assert (= b_and!19123 (and (=> t!35728 result!16426) b_and!19181)))

(declare-fun t!35730 () Bool)

(declare-fun tb!13061 () Bool)

(assert (=> (and b!249885 (= (toValue!1402 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35730) tb!13061))

(declare-fun result!16428 () Bool)

(assert (= result!16428 result!16426))

(assert (=> d!71685 t!35730))

(declare-fun b_and!19183 () Bool)

(assert (= b_and!19121 (and (=> t!35730 result!16428) b_and!19183)))

(declare-fun t!35732 () Bool)

(declare-fun tb!13063 () Bool)

(assert (=> (and b!250734 (= (toValue!1402 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35732) tb!13063))

(declare-fun result!16430 () Bool)

(assert (= result!16430 result!16426))

(assert (=> d!71685 t!35732))

(declare-fun b_and!19185 () Bool)

(assert (= b_and!19127 (and (=> t!35732 result!16430) b_and!19185)))

(declare-fun t!35734 () Bool)

(declare-fun tb!13065 () Bool)

(assert (=> (and b!249891 (= (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35734) tb!13065))

(declare-fun result!16432 () Bool)

(assert (= result!16432 result!16426))

(assert (=> d!71685 t!35734))

(declare-fun b_and!19187 () Bool)

(assert (= b_and!19125 (and (=> t!35734 result!16432) b_and!19187)))

(declare-fun t!35736 () Bool)

(declare-fun tb!13067 () Bool)

(assert (=> (and b!249870 (= (toValue!1402 (transformation!699 (h!9076 rules!1920))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35736) tb!13067))

(declare-fun result!16434 () Bool)

(assert (= result!16434 result!16426))

(assert (=> d!71685 t!35736))

(declare-fun b_and!19189 () Bool)

(assert (= b_and!19129 (and (=> t!35736 result!16434) b_and!19189)))

(assert (=> d!71685 m!306659))

(declare-fun m!312421 () Bool)

(assert (=> d!71685 m!312421))

(assert (=> b!250236 d!71685))

(declare-fun d!71687 () Bool)

(assert (=> d!71687 (= (seqFromList!775 (originalCharacters!742 (_1!2273 (get!1209 lt!102084)))) (fromListB!281 (originalCharacters!742 (_1!2273 (get!1209 lt!102084)))))))

(declare-fun bs!27359 () Bool)

(assert (= bs!27359 d!71687))

(declare-fun m!312423 () Bool)

(assert (=> bs!27359 m!312423))

(assert (=> b!250236 d!71687))

(declare-fun d!71689 () Bool)

(assert (=> d!71689 (= (list!1460 (_1!2274 lt!102227)) (list!1465 (c!47454 (_1!2274 lt!102227))))))

(declare-fun bs!27360 () Bool)

(assert (= bs!27360 d!71689))

(declare-fun m!312425 () Bool)

(assert (=> bs!27360 m!312425))

(assert (=> b!250580 d!71689))

(assert (=> b!250580 d!71155))

(assert (=> b!250580 d!70275))

(declare-fun bs!27361 () Bool)

(declare-fun d!71691 () Bool)

(assert (= bs!27361 (and d!71691 d!70483)))

(declare-fun lambda!8391 () Int)

(assert (=> bs!27361 (= (and (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (= (toValue!1402 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (h!9076 rules!1920))))) (= lambda!8391 lambda!8329))))

(declare-fun bs!27362 () Bool)

(assert (= bs!27362 (and d!71691 b!251566)))

(assert (=> bs!27362 (= (and (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (h!9076 rules!1920)))) (= (toValue!1402 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (h!9076 rules!1920))))) (= lambda!8391 lambda!8356))))

(declare-fun bs!27363 () Bool)

(assert (= bs!27363 (and d!71691 d!71403)))

(assert (=> bs!27363 (= (and (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) (= (toValue!1402 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (rule!1276 (h!9077 tokens!465)))))) (= lambda!8391 lambda!8376))))

(assert (=> d!71691 true))

(assert (=> d!71691 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170)))) (dynLambda!1815 order!2739 lambda!8391))))

(assert (=> d!71691 true))

(assert (=> d!71691 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (rule!1276 separatorToken!170)))) (dynLambda!1815 order!2739 lambda!8391))))

(assert (=> d!71691 (= (semiInverseModEq!236 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toValue!1402 (transformation!699 (rule!1276 separatorToken!170)))) (Forall!155 lambda!8391))))

(declare-fun bs!27364 () Bool)

(assert (= bs!27364 d!71691))

(declare-fun m!312427 () Bool)

(assert (=> bs!27364 m!312427))

(assert (=> d!70189 d!71691))

(declare-fun d!71693 () Bool)

(declare-fun lt!103579 () Bool)

(assert (=> d!71693 (= lt!103579 (select (content!515 tokens!465) (h!9077 tokens!465)))))

(declare-fun e!156965 () Bool)

(assert (=> d!71693 (= lt!103579 e!156965)))

(declare-fun res!117113 () Bool)

(assert (=> d!71693 (=> (not res!117113) (not e!156965))))

(assert (=> d!71693 (= res!117113 ((_ is Cons!3680) tokens!465))))

(assert (=> d!71693 (= (contains!680 tokens!465 (h!9077 tokens!465)) lt!103579)))

(declare-fun b!252714 () Bool)

(declare-fun e!156964 () Bool)

(assert (=> b!252714 (= e!156965 e!156964)))

(declare-fun res!117114 () Bool)

(assert (=> b!252714 (=> res!117114 e!156964)))

(assert (=> b!252714 (= res!117114 (= (h!9077 tokens!465) (h!9077 tokens!465)))))

(declare-fun b!252715 () Bool)

(assert (=> b!252715 (= e!156964 (contains!680 (t!35394 tokens!465) (h!9077 tokens!465)))))

(assert (= (and d!71693 res!117113) b!252714))

(assert (= (and b!252714 (not res!117114)) b!252715))

(declare-fun m!312429 () Bool)

(assert (=> d!71693 m!312429))

(declare-fun m!312431 () Bool)

(assert (=> d!71693 m!312431))

(declare-fun m!312433 () Bool)

(assert (=> b!252715 m!312433))

(assert (=> b!250403 d!71693))

(declare-fun d!71695 () Bool)

(declare-fun lt!103580 () Bool)

(assert (=> d!71695 (= lt!103580 (isEmpty!2277 (list!1461 (_2!2274 lt!102169))))))

(assert (=> d!71695 (= lt!103580 (isEmpty!2289 (c!47452 (_2!2274 lt!102169))))))

(assert (=> d!71695 (= (isEmpty!2288 (_2!2274 lt!102169)) lt!103580)))

(declare-fun bs!27365 () Bool)

(assert (= bs!27365 d!71695))

(declare-fun m!312435 () Bool)

(assert (=> bs!27365 m!312435))

(assert (=> bs!27365 m!312435))

(declare-fun m!312437 () Bool)

(assert (=> bs!27365 m!312437))

(declare-fun m!312439 () Bool)

(assert (=> bs!27365 m!312439))

(assert (=> b!250444 d!71695))

(declare-fun d!71697 () Bool)

(declare-fun res!117115 () Bool)

(declare-fun e!156966 () Bool)

(assert (=> d!71697 (=> res!117115 e!156966)))

(assert (=> d!71697 (= res!117115 ((_ is Nil!3680) lt!102236))))

(assert (=> d!71697 (= (forall!865 lt!102236 lambda!8285) e!156966)))

(declare-fun b!252716 () Bool)

(declare-fun e!156967 () Bool)

(assert (=> b!252716 (= e!156966 e!156967)))

(declare-fun res!117116 () Bool)

(assert (=> b!252716 (=> (not res!117116) (not e!156967))))

(assert (=> b!252716 (= res!117116 (dynLambda!1813 lambda!8285 (h!9077 lt!102236)))))

(declare-fun b!252717 () Bool)

(assert (=> b!252717 (= e!156967 (forall!865 (t!35394 lt!102236) lambda!8285))))

(assert (= (and d!71697 (not res!117115)) b!252716))

(assert (= (and b!252716 res!117116) b!252717))

(declare-fun b_lambda!7487 () Bool)

(assert (=> (not b_lambda!7487) (not b!252716)))

(declare-fun m!312441 () Bool)

(assert (=> b!252716 m!312441))

(declare-fun m!312443 () Bool)

(assert (=> b!252717 m!312443))

(assert (=> b!250613 d!71697))

(declare-fun d!71699 () Bool)

(declare-fun lt!103581 () Bool)

(assert (=> d!71699 (= lt!103581 (select (content!516 rules!1920) (rule!1276 (_1!2273 (get!1209 lt!102184)))))))

(declare-fun e!156968 () Bool)

(assert (=> d!71699 (= lt!103581 e!156968)))

(declare-fun res!117117 () Bool)

(assert (=> d!71699 (=> (not res!117117) (not e!156968))))

(assert (=> d!71699 (= res!117117 ((_ is Cons!3679) rules!1920))))

(assert (=> d!71699 (= (contains!678 rules!1920 (rule!1276 (_1!2273 (get!1209 lt!102184)))) lt!103581)))

(declare-fun b!252718 () Bool)

(declare-fun e!156969 () Bool)

(assert (=> b!252718 (= e!156968 e!156969)))

(declare-fun res!117118 () Bool)

(assert (=> b!252718 (=> res!117118 e!156969)))

(assert (=> b!252718 (= res!117118 (= (h!9076 rules!1920) (rule!1276 (_1!2273 (get!1209 lt!102184)))))))

(declare-fun b!252719 () Bool)

(assert (=> b!252719 (= e!156969 (contains!678 (t!35393 rules!1920) (rule!1276 (_1!2273 (get!1209 lt!102184)))))))

(assert (= (and d!71699 res!117117) b!252718))

(assert (= (and b!252718 (not res!117118)) b!252719))

(assert (=> d!71699 m!308495))

(declare-fun m!312445 () Bool)

(assert (=> d!71699 m!312445))

(declare-fun m!312447 () Bool)

(assert (=> b!252719 m!312447))

(assert (=> b!250448 d!71699))

(assert (=> b!250448 d!70827))

(declare-fun d!71701 () Bool)

(declare-fun res!117119 () Bool)

(declare-fun e!156970 () Bool)

(assert (=> d!71701 (=> (not res!117119) (not e!156970))))

(assert (=> d!71701 (= res!117119 (not (isEmpty!2277 (originalCharacters!742 (h!9077 (t!35394 tokens!465))))))))

(assert (=> d!71701 (= (inv!4531 (h!9077 (t!35394 tokens!465))) e!156970)))

(declare-fun b!252720 () Bool)

(declare-fun res!117120 () Bool)

(assert (=> b!252720 (=> (not res!117120) (not e!156970))))

(assert (=> b!252720 (= res!117120 (= (originalCharacters!742 (h!9077 (t!35394 tokens!465))) (list!1461 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))) (value!24237 (h!9077 (t!35394 tokens!465)))))))))

(declare-fun b!252721 () Bool)

(assert (=> b!252721 (= e!156970 (= (size!2910 (h!9077 (t!35394 tokens!465))) (size!2913 (originalCharacters!742 (h!9077 (t!35394 tokens!465))))))))

(assert (= (and d!71701 res!117119) b!252720))

(assert (= (and b!252720 res!117120) b!252721))

(declare-fun b_lambda!7489 () Bool)

(assert (=> (not b_lambda!7489) (not b!252720)))

(assert (=> b!252720 t!35565))

(declare-fun b_and!19191 () Bool)

(assert (= b_and!19179 (and (=> t!35565 result!16266) b_and!19191)))

(assert (=> b!252720 t!35571))

(declare-fun b_and!19193 () Bool)

(assert (= b_and!19177 (and (=> t!35571 result!16272) b_and!19193)))

(assert (=> b!252720 t!35569))

(declare-fun b_and!19195 () Bool)

(assert (= b_and!19175 (and (=> t!35569 result!16270) b_and!19195)))

(assert (=> b!252720 t!35563))

(declare-fun b_and!19197 () Bool)

(assert (= b_and!19171 (and (=> t!35563 result!16264) b_and!19197)))

(assert (=> b!252720 t!35567))

(declare-fun b_and!19199 () Bool)

(assert (= b_and!19173 (and (=> t!35567 result!16268) b_and!19199)))

(declare-fun m!312449 () Bool)

(assert (=> d!71701 m!312449))

(assert (=> b!252720 m!309373))

(assert (=> b!252720 m!309373))

(declare-fun m!312451 () Bool)

(assert (=> b!252720 m!312451))

(declare-fun m!312453 () Bool)

(assert (=> b!252721 m!312453))

(assert (=> b!250731 d!71701))

(declare-fun d!71703 () Bool)

(assert (=> d!71703 (= (list!1460 (_1!2274 lt!102163)) (list!1465 (c!47454 (_1!2274 lt!102163))))))

(declare-fun bs!27366 () Bool)

(assert (= bs!27366 d!71703))

(declare-fun m!312455 () Bool)

(assert (=> bs!27366 m!312455))

(assert (=> b!250429 d!71703))

(assert (=> b!250429 d!70799))

(assert (=> b!250429 d!70803))

(declare-fun b!252725 () Bool)

(declare-fun e!156971 () Bool)

(declare-fun tp!97259 () Bool)

(declare-fun tp!97256 () Bool)

(assert (=> b!252725 (= e!156971 (and tp!97259 tp!97256))))

(assert (=> b!250733 (= tp!97189 e!156971)))

(declare-fun b!252723 () Bool)

(declare-fun tp!97257 () Bool)

(declare-fun tp!97260 () Bool)

(assert (=> b!252723 (= e!156971 (and tp!97257 tp!97260))))

(declare-fun b!252724 () Bool)

(declare-fun tp!97258 () Bool)

(assert (=> b!252724 (= e!156971 tp!97258)))

(declare-fun b!252722 () Bool)

(assert (=> b!252722 (= e!156971 tp_is_empty!1771)))

(assert (= (and b!250733 ((_ is ElementMatch!923) (regex!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) b!252722))

(assert (= (and b!250733 ((_ is Concat!1645) (regex!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) b!252723))

(assert (= (and b!250733 ((_ is Star!923) (regex!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) b!252724))

(assert (= (and b!250733 ((_ is Union!923) (regex!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) b!252725))

(declare-fun tp!97268 () Bool)

(declare-fun tp!97267 () Bool)

(declare-fun e!156977 () Bool)

(declare-fun b!252734 () Bool)

(assert (=> b!252734 (= e!156977 (and (inv!4532 (left!3024 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))))) tp!97267 (inv!4532 (right!3354 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))))) tp!97268))))

(declare-fun b!252736 () Bool)

(declare-fun e!156976 () Bool)

(declare-fun tp!97269 () Bool)

(assert (=> b!252736 (= e!156976 tp!97269)))

(declare-fun b!252735 () Bool)

(declare-fun inv!4540 (IArray!2441) Bool)

(assert (=> b!252735 (= e!156977 (and (inv!4540 (xs!3815 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))))) e!156976))))

(assert (=> b!250301 (= tp!97121 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170)))) e!156977))))

(assert (= (and b!250301 ((_ is Node!1220) (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))))) b!252734))

(assert (= b!252735 b!252736))

(assert (= (and b!250301 ((_ is Leaf!1909) (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (value!24237 separatorToken!170))))) b!252735))

(declare-fun m!312457 () Bool)

(assert (=> b!252734 m!312457))

(declare-fun m!312459 () Bool)

(assert (=> b!252734 m!312459))

(declare-fun m!312461 () Bool)

(assert (=> b!252735 m!312461))

(assert (=> b!250301 m!306813))

(declare-fun b!252739 () Bool)

(declare-fun b_free!9357 () Bool)

(declare-fun b_next!9357 () Bool)

(assert (=> b!252739 (= b_free!9357 (not b_next!9357))))

(declare-fun tb!13069 () Bool)

(declare-fun t!35738 () Bool)

(assert (=> (and b!252739 (= (toValue!1402 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35738) tb!13069))

(declare-fun result!16438 () Bool)

(assert (= result!16438 result!16364))

(assert (=> d!71449 t!35738))

(declare-fun t!35740 () Bool)

(declare-fun tb!13071 () Bool)

(assert (=> (and b!252739 (= (toValue!1402 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35740) tb!13071))

(declare-fun result!16440 () Bool)

(assert (= result!16440 result!16426))

(assert (=> d!71685 t!35740))

(declare-fun b_and!19201 () Bool)

(declare-fun tp!97271 () Bool)

(assert (=> b!252739 (= tp!97271 (and (=> t!35738 result!16438) (=> t!35740 result!16440) b_and!19201))))

(declare-fun b_free!9359 () Bool)

(declare-fun b_next!9359 () Bool)

(assert (=> b!252739 (= b_free!9359 (not b_next!9359))))

(declare-fun tb!13073 () Bool)

(declare-fun t!35742 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35742) tb!13073))

(declare-fun result!16442 () Bool)

(assert (= result!16442 result!16234))

(assert (=> d!70831 t!35742))

(declare-fun tb!13075 () Bool)

(declare-fun t!35744 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) t!35744) tb!13075))

(declare-fun result!16444 () Bool)

(assert (= result!16444 result!16112))

(assert (=> b!249941 t!35744))

(declare-fun t!35746 () Bool)

(declare-fun tb!13077 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170)))) t!35746) tb!13077))

(declare-fun result!16446 () Bool)

(assert (= result!16446 result!16134))

(assert (=> d!70265 t!35746))

(declare-fun t!35748 () Bool)

(declare-fun tb!13079 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))) t!35748) tb!13079))

(declare-fun result!16448 () Bool)

(assert (= result!16448 result!16334))

(assert (=> d!71339 t!35748))

(declare-fun t!35750 () Bool)

(declare-fun tb!13081 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35750) tb!13081))

(declare-fun result!16450 () Bool)

(assert (= result!16450 result!16204))

(assert (=> d!70543 t!35750))

(declare-fun t!35752 () Bool)

(declare-fun tb!13083 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) t!35752) tb!13083))

(declare-fun result!16452 () Bool)

(assert (= result!16452 result!16264))

(assert (=> d!70997 t!35752))

(declare-fun t!35754 () Bool)

(declare-fun tb!13085 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0))))) t!35754) tb!13085))

(declare-fun result!16454 () Bool)

(assert (= result!16454 result!16274))

(assert (=> d!71051 t!35754))

(declare-fun tb!13087 () Bool)

(declare-fun t!35756 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))) t!35756) tb!13087))

(declare-fun result!16456 () Bool)

(assert (= result!16456 result!16176))

(assert (=> d!70475 t!35756))

(declare-fun t!35758 () Bool)

(declare-fun tb!13089 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 call!13201)))) t!35758) tb!13089))

(declare-fun result!16458 () Bool)

(assert (= result!16458 result!16386))

(assert (=> d!71553 t!35758))

(declare-fun t!35760 () Bool)

(declare-fun tb!13091 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))) t!35760) tb!13091))

(declare-fun result!16460 () Bool)

(assert (= result!16460 result!16294))

(assert (=> d!71141 t!35760))

(assert (=> b!252720 t!35752))

(declare-fun tb!13093 () Bool)

(declare-fun t!35762 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 call!13247)))) t!35762) tb!13093))

(declare-fun result!16462 () Bool)

(assert (= result!16462 result!16416))

(assert (=> d!71679 t!35762))

(assert (=> d!70279 t!35744))

(declare-fun t!35764 () Bool)

(declare-fun tb!13095 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))) t!35764) tb!13095))

(declare-fun result!16464 () Bool)

(assert (= result!16464 result!16354))

(assert (=> d!71397 t!35764))

(declare-fun tb!13097 () Bool)

(declare-fun t!35766 () Bool)

(assert (=> (and b!252739 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0))))) t!35766) tb!13097))

(declare-fun result!16466 () Bool)

(assert (= result!16466 result!16284))

(assert (=> d!71059 t!35766))

(assert (=> b!250434 t!35746))

(declare-fun tp!97273 () Bool)

(declare-fun b_and!19203 () Bool)

(assert (=> b!252739 (= tp!97273 (and (=> t!35750 result!16450) (=> t!35744 result!16444) (=> t!35766 result!16466) (=> t!35748 result!16448) (=> t!35760 result!16460) (=> t!35746 result!16446) (=> t!35762 result!16462) (=> t!35758 result!16458) (=> t!35752 result!16452) (=> t!35756 result!16456) (=> t!35764 result!16464) (=> t!35742 result!16442) (=> t!35754 result!16454) b_and!19203))))

(declare-fun e!156978 () Bool)

(assert (=> b!252739 (= e!156978 (and tp!97271 tp!97273))))

(declare-fun tp!97270 () Bool)

(declare-fun b!252738 () Bool)

(declare-fun e!156981 () Bool)

(assert (=> b!252738 (= e!156981 (and tp!97270 (inv!4527 (tag!907 (h!9076 (t!35393 (t!35393 rules!1920))))) (inv!4530 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) e!156978))))

(declare-fun b!252737 () Bool)

(declare-fun e!156979 () Bool)

(declare-fun tp!97272 () Bool)

(assert (=> b!252737 (= e!156979 (and e!156981 tp!97272))))

(assert (=> b!250765 (= tp!97228 e!156979)))

(assert (= b!252738 b!252739))

(assert (= b!252737 b!252738))

(assert (= (and b!250765 ((_ is Cons!3679) (t!35393 (t!35393 rules!1920)))) b!252737))

(declare-fun m!312463 () Bool)

(assert (=> b!252738 m!312463))

(declare-fun m!312465 () Bool)

(assert (=> b!252738 m!312465))

(declare-fun b!252742 () Bool)

(declare-fun e!156984 () Bool)

(assert (=> b!252742 (= e!156984 true)))

(declare-fun b!252741 () Bool)

(declare-fun e!156983 () Bool)

(assert (=> b!252741 (= e!156983 e!156984)))

(declare-fun b!252740 () Bool)

(declare-fun e!156982 () Bool)

(assert (=> b!252740 (= e!156982 e!156983)))

(assert (=> b!250069 e!156982))

(assert (= b!252741 b!252742))

(assert (= b!252740 b!252741))

(assert (= (and b!250069 ((_ is Cons!3679) (t!35393 rules!1920))) b!252740))

(assert (=> b!252742 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8295))))

(assert (=> b!252742 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8295))))

(declare-fun b!252746 () Bool)

(declare-fun e!156985 () Bool)

(declare-fun tp!97277 () Bool)

(declare-fun tp!97274 () Bool)

(assert (=> b!252746 (= e!156985 (and tp!97277 tp!97274))))

(assert (=> b!250766 (= tp!97226 e!156985)))

(declare-fun b!252744 () Bool)

(declare-fun tp!97275 () Bool)

(declare-fun tp!97278 () Bool)

(assert (=> b!252744 (= e!156985 (and tp!97275 tp!97278))))

(declare-fun b!252745 () Bool)

(declare-fun tp!97276 () Bool)

(assert (=> b!252745 (= e!156985 tp!97276)))

(declare-fun b!252743 () Bool)

(assert (=> b!252743 (= e!156985 tp_is_empty!1771)))

(assert (= (and b!250766 ((_ is ElementMatch!923) (regex!699 (h!9076 (t!35393 rules!1920))))) b!252743))

(assert (= (and b!250766 ((_ is Concat!1645) (regex!699 (h!9076 (t!35393 rules!1920))))) b!252744))

(assert (= (and b!250766 ((_ is Star!923) (regex!699 (h!9076 (t!35393 rules!1920))))) b!252745))

(assert (= (and b!250766 ((_ is Union!923) (regex!699 (h!9076 (t!35393 rules!1920))))) b!252746))

(declare-fun b!252749 () Bool)

(declare-fun e!156988 () Bool)

(assert (=> b!252749 (= e!156988 true)))

(declare-fun b!252748 () Bool)

(declare-fun e!156987 () Bool)

(assert (=> b!252748 (= e!156987 e!156988)))

(declare-fun b!252747 () Bool)

(declare-fun e!156986 () Bool)

(assert (=> b!252747 (= e!156986 e!156987)))

(assert (=> b!250284 e!156986))

(assert (= b!252748 b!252749))

(assert (= b!252747 b!252748))

(assert (= (and b!250284 ((_ is Cons!3679) (t!35393 rules!1920))) b!252747))

(assert (=> b!252749 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8315))))

(assert (=> b!252749 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8315))))

(declare-fun b!252753 () Bool)

(declare-fun e!156989 () Bool)

(declare-fun tp!97282 () Bool)

(declare-fun tp!97279 () Bool)

(assert (=> b!252753 (= e!156989 (and tp!97282 tp!97279))))

(assert (=> b!250754 (= tp!97214 e!156989)))

(declare-fun b!252751 () Bool)

(declare-fun tp!97280 () Bool)

(declare-fun tp!97283 () Bool)

(assert (=> b!252751 (= e!156989 (and tp!97280 tp!97283))))

(declare-fun b!252752 () Bool)

(declare-fun tp!97281 () Bool)

(assert (=> b!252752 (= e!156989 tp!97281)))

(declare-fun b!252750 () Bool)

(assert (=> b!252750 (= e!156989 tp_is_empty!1771)))

(assert (= (and b!250754 ((_ is ElementMatch!923) (regOne!2358 (regex!699 (h!9076 rules!1920))))) b!252750))

(assert (= (and b!250754 ((_ is Concat!1645) (regOne!2358 (regex!699 (h!9076 rules!1920))))) b!252751))

(assert (= (and b!250754 ((_ is Star!923) (regOne!2358 (regex!699 (h!9076 rules!1920))))) b!252752))

(assert (= (and b!250754 ((_ is Union!923) (regOne!2358 (regex!699 (h!9076 rules!1920))))) b!252753))

(declare-fun b!252757 () Bool)

(declare-fun e!156990 () Bool)

(declare-fun tp!97287 () Bool)

(declare-fun tp!97284 () Bool)

(assert (=> b!252757 (= e!156990 (and tp!97287 tp!97284))))

(assert (=> b!250754 (= tp!97217 e!156990)))

(declare-fun b!252755 () Bool)

(declare-fun tp!97285 () Bool)

(declare-fun tp!97288 () Bool)

(assert (=> b!252755 (= e!156990 (and tp!97285 tp!97288))))

(declare-fun b!252756 () Bool)

(declare-fun tp!97286 () Bool)

(assert (=> b!252756 (= e!156990 tp!97286)))

(declare-fun b!252754 () Bool)

(assert (=> b!252754 (= e!156990 tp_is_empty!1771)))

(assert (= (and b!250754 ((_ is ElementMatch!923) (regTwo!2358 (regex!699 (h!9076 rules!1920))))) b!252754))

(assert (= (and b!250754 ((_ is Concat!1645) (regTwo!2358 (regex!699 (h!9076 rules!1920))))) b!252755))

(assert (= (and b!250754 ((_ is Star!923) (regTwo!2358 (regex!699 (h!9076 rules!1920))))) b!252756))

(assert (= (and b!250754 ((_ is Union!923) (regTwo!2358 (regex!699 (h!9076 rules!1920))))) b!252757))

(declare-fun b!252761 () Bool)

(declare-fun e!156991 () Bool)

(declare-fun tp!97292 () Bool)

(declare-fun tp!97289 () Bool)

(assert (=> b!252761 (= e!156991 (and tp!97292 tp!97289))))

(assert (=> b!250755 (= tp!97215 e!156991)))

(declare-fun b!252759 () Bool)

(declare-fun tp!97290 () Bool)

(declare-fun tp!97293 () Bool)

(assert (=> b!252759 (= e!156991 (and tp!97290 tp!97293))))

(declare-fun b!252760 () Bool)

(declare-fun tp!97291 () Bool)

(assert (=> b!252760 (= e!156991 tp!97291)))

(declare-fun b!252758 () Bool)

(assert (=> b!252758 (= e!156991 tp_is_empty!1771)))

(assert (= (and b!250755 ((_ is ElementMatch!923) (reg!1252 (regex!699 (h!9076 rules!1920))))) b!252758))

(assert (= (and b!250755 ((_ is Concat!1645) (reg!1252 (regex!699 (h!9076 rules!1920))))) b!252759))

(assert (= (and b!250755 ((_ is Star!923) (reg!1252 (regex!699 (h!9076 rules!1920))))) b!252760))

(assert (= (and b!250755 ((_ is Union!923) (reg!1252 (regex!699 (h!9076 rules!1920))))) b!252761))

(declare-fun b!252765 () Bool)

(declare-fun e!156992 () Bool)

(declare-fun tp!97297 () Bool)

(declare-fun tp!97294 () Bool)

(assert (=> b!252765 (= e!156992 (and tp!97297 tp!97294))))

(assert (=> b!250746 (= tp!97204 e!156992)))

(declare-fun b!252763 () Bool)

(declare-fun tp!97295 () Bool)

(declare-fun tp!97298 () Bool)

(assert (=> b!252763 (= e!156992 (and tp!97295 tp!97298))))

(declare-fun b!252764 () Bool)

(declare-fun tp!97296 () Bool)

(assert (=> b!252764 (= e!156992 tp!97296)))

(declare-fun b!252762 () Bool)

(assert (=> b!252762 (= e!156992 tp_is_empty!1771)))

(assert (= (and b!250746 ((_ is ElementMatch!923) (regOne!2358 (regex!699 (rule!1276 separatorToken!170))))) b!252762))

(assert (= (and b!250746 ((_ is Concat!1645) (regOne!2358 (regex!699 (rule!1276 separatorToken!170))))) b!252763))

(assert (= (and b!250746 ((_ is Star!923) (regOne!2358 (regex!699 (rule!1276 separatorToken!170))))) b!252764))

(assert (= (and b!250746 ((_ is Union!923) (regOne!2358 (regex!699 (rule!1276 separatorToken!170))))) b!252765))

(declare-fun b!252769 () Bool)

(declare-fun e!156993 () Bool)

(declare-fun tp!97302 () Bool)

(declare-fun tp!97299 () Bool)

(assert (=> b!252769 (= e!156993 (and tp!97302 tp!97299))))

(assert (=> b!250746 (= tp!97207 e!156993)))

(declare-fun b!252767 () Bool)

(declare-fun tp!97300 () Bool)

(declare-fun tp!97303 () Bool)

(assert (=> b!252767 (= e!156993 (and tp!97300 tp!97303))))

(declare-fun b!252768 () Bool)

(declare-fun tp!97301 () Bool)

(assert (=> b!252768 (= e!156993 tp!97301)))

(declare-fun b!252766 () Bool)

(assert (=> b!252766 (= e!156993 tp_is_empty!1771)))

(assert (= (and b!250746 ((_ is ElementMatch!923) (regTwo!2358 (regex!699 (rule!1276 separatorToken!170))))) b!252766))

(assert (= (and b!250746 ((_ is Concat!1645) (regTwo!2358 (regex!699 (rule!1276 separatorToken!170))))) b!252767))

(assert (= (and b!250746 ((_ is Star!923) (regTwo!2358 (regex!699 (rule!1276 separatorToken!170))))) b!252768))

(assert (= (and b!250746 ((_ is Union!923) (regTwo!2358 (regex!699 (rule!1276 separatorToken!170))))) b!252769))

(declare-fun b!252773 () Bool)

(declare-fun e!156994 () Bool)

(declare-fun tp!97307 () Bool)

(declare-fun tp!97304 () Bool)

(assert (=> b!252773 (= e!156994 (and tp!97307 tp!97304))))

(assert (=> b!250756 (= tp!97216 e!156994)))

(declare-fun b!252771 () Bool)

(declare-fun tp!97305 () Bool)

(declare-fun tp!97308 () Bool)

(assert (=> b!252771 (= e!156994 (and tp!97305 tp!97308))))

(declare-fun b!252772 () Bool)

(declare-fun tp!97306 () Bool)

(assert (=> b!252772 (= e!156994 tp!97306)))

(declare-fun b!252770 () Bool)

(assert (=> b!252770 (= e!156994 tp_is_empty!1771)))

(assert (= (and b!250756 ((_ is ElementMatch!923) (regOne!2359 (regex!699 (h!9076 rules!1920))))) b!252770))

(assert (= (and b!250756 ((_ is Concat!1645) (regOne!2359 (regex!699 (h!9076 rules!1920))))) b!252771))

(assert (= (and b!250756 ((_ is Star!923) (regOne!2359 (regex!699 (h!9076 rules!1920))))) b!252772))

(assert (= (and b!250756 ((_ is Union!923) (regOne!2359 (regex!699 (h!9076 rules!1920))))) b!252773))

(declare-fun b!252777 () Bool)

(declare-fun e!156995 () Bool)

(declare-fun tp!97312 () Bool)

(declare-fun tp!97309 () Bool)

(assert (=> b!252777 (= e!156995 (and tp!97312 tp!97309))))

(assert (=> b!250756 (= tp!97213 e!156995)))

(declare-fun b!252775 () Bool)

(declare-fun tp!97310 () Bool)

(declare-fun tp!97313 () Bool)

(assert (=> b!252775 (= e!156995 (and tp!97310 tp!97313))))

(declare-fun b!252776 () Bool)

(declare-fun tp!97311 () Bool)

(assert (=> b!252776 (= e!156995 tp!97311)))

(declare-fun b!252774 () Bool)

(assert (=> b!252774 (= e!156995 tp_is_empty!1771)))

(assert (= (and b!250756 ((_ is ElementMatch!923) (regTwo!2359 (regex!699 (h!9076 rules!1920))))) b!252774))

(assert (= (and b!250756 ((_ is Concat!1645) (regTwo!2359 (regex!699 (h!9076 rules!1920))))) b!252775))

(assert (= (and b!250756 ((_ is Star!923) (regTwo!2359 (regex!699 (h!9076 rules!1920))))) b!252776))

(assert (= (and b!250756 ((_ is Union!923) (regTwo!2359 (regex!699 (h!9076 rules!1920))))) b!252777))

(declare-fun b!252781 () Bool)

(declare-fun e!156996 () Bool)

(declare-fun tp!97317 () Bool)

(declare-fun tp!97314 () Bool)

(assert (=> b!252781 (= e!156996 (and tp!97317 tp!97314))))

(assert (=> b!250747 (= tp!97205 e!156996)))

(declare-fun b!252779 () Bool)

(declare-fun tp!97315 () Bool)

(declare-fun tp!97318 () Bool)

(assert (=> b!252779 (= e!156996 (and tp!97315 tp!97318))))

(declare-fun b!252780 () Bool)

(declare-fun tp!97316 () Bool)

(assert (=> b!252780 (= e!156996 tp!97316)))

(declare-fun b!252778 () Bool)

(assert (=> b!252778 (= e!156996 tp_is_empty!1771)))

(assert (= (and b!250747 ((_ is ElementMatch!923) (reg!1252 (regex!699 (rule!1276 separatorToken!170))))) b!252778))

(assert (= (and b!250747 ((_ is Concat!1645) (reg!1252 (regex!699 (rule!1276 separatorToken!170))))) b!252779))

(assert (= (and b!250747 ((_ is Star!923) (reg!1252 (regex!699 (rule!1276 separatorToken!170))))) b!252780))

(assert (= (and b!250747 ((_ is Union!923) (reg!1252 (regex!699 (rule!1276 separatorToken!170))))) b!252781))

(declare-fun b!252785 () Bool)

(declare-fun e!156997 () Bool)

(declare-fun tp!97322 () Bool)

(declare-fun tp!97319 () Bool)

(assert (=> b!252785 (= e!156997 (and tp!97322 tp!97319))))

(assert (=> b!250748 (= tp!97206 e!156997)))

(declare-fun b!252783 () Bool)

(declare-fun tp!97320 () Bool)

(declare-fun tp!97323 () Bool)

(assert (=> b!252783 (= e!156997 (and tp!97320 tp!97323))))

(declare-fun b!252784 () Bool)

(declare-fun tp!97321 () Bool)

(assert (=> b!252784 (= e!156997 tp!97321)))

(declare-fun b!252782 () Bool)

(assert (=> b!252782 (= e!156997 tp_is_empty!1771)))

(assert (= (and b!250748 ((_ is ElementMatch!923) (regOne!2359 (regex!699 (rule!1276 separatorToken!170))))) b!252782))

(assert (= (and b!250748 ((_ is Concat!1645) (regOne!2359 (regex!699 (rule!1276 separatorToken!170))))) b!252783))

(assert (= (and b!250748 ((_ is Star!923) (regOne!2359 (regex!699 (rule!1276 separatorToken!170))))) b!252784))

(assert (= (and b!250748 ((_ is Union!923) (regOne!2359 (regex!699 (rule!1276 separatorToken!170))))) b!252785))

(declare-fun b!252789 () Bool)

(declare-fun e!156998 () Bool)

(declare-fun tp!97327 () Bool)

(declare-fun tp!97324 () Bool)

(assert (=> b!252789 (= e!156998 (and tp!97327 tp!97324))))

(assert (=> b!250748 (= tp!97203 e!156998)))

(declare-fun b!252787 () Bool)

(declare-fun tp!97325 () Bool)

(declare-fun tp!97328 () Bool)

(assert (=> b!252787 (= e!156998 (and tp!97325 tp!97328))))

(declare-fun b!252788 () Bool)

(declare-fun tp!97326 () Bool)

(assert (=> b!252788 (= e!156998 tp!97326)))

(declare-fun b!252786 () Bool)

(assert (=> b!252786 (= e!156998 tp_is_empty!1771)))

(assert (= (and b!250748 ((_ is ElementMatch!923) (regTwo!2359 (regex!699 (rule!1276 separatorToken!170))))) b!252786))

(assert (= (and b!250748 ((_ is Concat!1645) (regTwo!2359 (regex!699 (rule!1276 separatorToken!170))))) b!252787))

(assert (= (and b!250748 ((_ is Star!923) (regTwo!2359 (regex!699 (rule!1276 separatorToken!170))))) b!252788))

(assert (= (and b!250748 ((_ is Union!923) (regTwo!2359 (regex!699 (rule!1276 separatorToken!170))))) b!252789))

(declare-fun tp!97329 () Bool)

(declare-fun e!157000 () Bool)

(declare-fun b!252790 () Bool)

(declare-fun tp!97330 () Bool)

(assert (=> b!252790 (= e!157000 (and (inv!4532 (left!3024 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))))) tp!97329 (inv!4532 (right!3354 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))))) tp!97330))))

(declare-fun b!252792 () Bool)

(declare-fun e!156999 () Bool)

(declare-fun tp!97331 () Bool)

(assert (=> b!252792 (= e!156999 tp!97331)))

(declare-fun b!252791 () Bool)

(assert (=> b!252791 (= e!157000 (and (inv!4540 (xs!3815 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))))) e!156999))))

(assert (=> b!249953 (= tp!97116 (and (inv!4532 (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465))))) e!157000))))

(assert (= (and b!249953 ((_ is Node!1220) (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))))) b!252790))

(assert (= b!252791 b!252792))

(assert (= (and b!249953 ((_ is Leaf!1909) (c!47452 (dynLambda!1811 (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (value!24237 (h!9077 tokens!465)))))) b!252791))

(declare-fun m!312467 () Bool)

(assert (=> b!252790 m!312467))

(declare-fun m!312469 () Bool)

(assert (=> b!252790 m!312469))

(declare-fun m!312471 () Bool)

(assert (=> b!252791 m!312471))

(assert (=> b!249953 m!306187))

(declare-fun b!252793 () Bool)

(declare-fun e!157001 () Bool)

(declare-fun tp!97332 () Bool)

(assert (=> b!252793 (= e!157001 (and tp_is_empty!1771 tp!97332))))

(assert (=> b!250775 (= tp!97232 e!157001)))

(assert (= (and b!250775 ((_ is Cons!3678) (t!35392 (originalCharacters!742 separatorToken!170)))) b!252793))

(declare-fun b!252794 () Bool)

(declare-fun e!157002 () Bool)

(declare-fun tp!97333 () Bool)

(assert (=> b!252794 (= e!157002 (and tp_is_empty!1771 tp!97333))))

(assert (=> b!250776 (= tp!97233 e!157002)))

(assert (= (and b!250776 ((_ is Cons!3678) (t!35392 (originalCharacters!742 (h!9077 tokens!465))))) b!252794))

(declare-fun b!252797 () Bool)

(declare-fun e!157005 () Bool)

(assert (=> b!252797 (= e!157005 true)))

(declare-fun b!252796 () Bool)

(declare-fun e!157004 () Bool)

(assert (=> b!252796 (= e!157004 e!157005)))

(declare-fun b!252795 () Bool)

(declare-fun e!157003 () Bool)

(assert (=> b!252795 (= e!157003 e!157004)))

(assert (=> b!250768 e!157003))

(assert (= b!252796 b!252797))

(assert (= b!252795 b!252796))

(assert (= (and b!250768 ((_ is Cons!3679) (t!35393 (t!35393 rules!1920)))) b!252795))

(assert (=> b!252797 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920)))))) (dynLambda!1808 order!2735 lambda!8286))))

(assert (=> b!252797 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920)))))) (dynLambda!1808 order!2735 lambda!8286))))

(declare-fun b!252800 () Bool)

(declare-fun e!157008 () Bool)

(assert (=> b!252800 (= e!157008 true)))

(declare-fun b!252799 () Bool)

(declare-fun e!157007 () Bool)

(assert (=> b!252799 (= e!157007 e!157008)))

(declare-fun b!252798 () Bool)

(declare-fun e!157006 () Bool)

(assert (=> b!252798 (= e!157006 e!157007)))

(assert (=> b!250192 e!157006))

(assert (= b!252799 b!252800))

(assert (= b!252798 b!252799))

(assert (= (and b!250192 ((_ is Cons!3679) (t!35393 rules!1920))) b!252798))

(assert (=> b!252800 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8304))))

(assert (=> b!252800 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8304))))

(declare-fun b!252804 () Bool)

(declare-fun e!157009 () Bool)

(declare-fun tp!97337 () Bool)

(declare-fun tp!97334 () Bool)

(assert (=> b!252804 (= e!157009 (and tp!97337 tp!97334))))

(assert (=> b!250750 (= tp!97209 e!157009)))

(declare-fun b!252802 () Bool)

(declare-fun tp!97335 () Bool)

(declare-fun tp!97338 () Bool)

(assert (=> b!252802 (= e!157009 (and tp!97335 tp!97338))))

(declare-fun b!252803 () Bool)

(declare-fun tp!97336 () Bool)

(assert (=> b!252803 (= e!157009 tp!97336)))

(declare-fun b!252801 () Bool)

(assert (=> b!252801 (= e!157009 tp_is_empty!1771)))

(assert (= (and b!250750 ((_ is ElementMatch!923) (regOne!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252801))

(assert (= (and b!250750 ((_ is Concat!1645) (regOne!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252802))

(assert (= (and b!250750 ((_ is Star!923) (regOne!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252803))

(assert (= (and b!250750 ((_ is Union!923) (regOne!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252804))

(declare-fun b!252808 () Bool)

(declare-fun e!157010 () Bool)

(declare-fun tp!97342 () Bool)

(declare-fun tp!97339 () Bool)

(assert (=> b!252808 (= e!157010 (and tp!97342 tp!97339))))

(assert (=> b!250750 (= tp!97212 e!157010)))

(declare-fun b!252806 () Bool)

(declare-fun tp!97340 () Bool)

(declare-fun tp!97343 () Bool)

(assert (=> b!252806 (= e!157010 (and tp!97340 tp!97343))))

(declare-fun b!252807 () Bool)

(declare-fun tp!97341 () Bool)

(assert (=> b!252807 (= e!157010 tp!97341)))

(declare-fun b!252805 () Bool)

(assert (=> b!252805 (= e!157010 tp_is_empty!1771)))

(assert (= (and b!250750 ((_ is ElementMatch!923) (regTwo!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252805))

(assert (= (and b!250750 ((_ is Concat!1645) (regTwo!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252806))

(assert (= (and b!250750 ((_ is Star!923) (regTwo!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252807))

(assert (= (and b!250750 ((_ is Union!923) (regTwo!2358 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252808))

(declare-fun b!252812 () Bool)

(declare-fun e!157011 () Bool)

(declare-fun tp!97347 () Bool)

(declare-fun tp!97344 () Bool)

(assert (=> b!252812 (= e!157011 (and tp!97347 tp!97344))))

(assert (=> b!250751 (= tp!97210 e!157011)))

(declare-fun b!252810 () Bool)

(declare-fun tp!97345 () Bool)

(declare-fun tp!97348 () Bool)

(assert (=> b!252810 (= e!157011 (and tp!97345 tp!97348))))

(declare-fun b!252811 () Bool)

(declare-fun tp!97346 () Bool)

(assert (=> b!252811 (= e!157011 tp!97346)))

(declare-fun b!252809 () Bool)

(assert (=> b!252809 (= e!157011 tp_is_empty!1771)))

(assert (= (and b!250751 ((_ is ElementMatch!923) (reg!1252 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252809))

(assert (= (and b!250751 ((_ is Concat!1645) (reg!1252 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252810))

(assert (= (and b!250751 ((_ is Star!923) (reg!1252 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252811))

(assert (= (and b!250751 ((_ is Union!923) (reg!1252 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252812))

(declare-fun b!252816 () Bool)

(declare-fun e!157012 () Bool)

(declare-fun tp!97352 () Bool)

(declare-fun tp!97349 () Bool)

(assert (=> b!252816 (= e!157012 (and tp!97352 tp!97349))))

(assert (=> b!250752 (= tp!97211 e!157012)))

(declare-fun b!252814 () Bool)

(declare-fun tp!97350 () Bool)

(declare-fun tp!97353 () Bool)

(assert (=> b!252814 (= e!157012 (and tp!97350 tp!97353))))

(declare-fun b!252815 () Bool)

(declare-fun tp!97351 () Bool)

(assert (=> b!252815 (= e!157012 tp!97351)))

(declare-fun b!252813 () Bool)

(assert (=> b!252813 (= e!157012 tp_is_empty!1771)))

(assert (= (and b!250752 ((_ is ElementMatch!923) (regOne!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252813))

(assert (= (and b!250752 ((_ is Concat!1645) (regOne!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252814))

(assert (= (and b!250752 ((_ is Star!923) (regOne!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252815))

(assert (= (and b!250752 ((_ is Union!923) (regOne!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252816))

(declare-fun b!252820 () Bool)

(declare-fun e!157013 () Bool)

(declare-fun tp!97357 () Bool)

(declare-fun tp!97354 () Bool)

(assert (=> b!252820 (= e!157013 (and tp!97357 tp!97354))))

(assert (=> b!250752 (= tp!97208 e!157013)))

(declare-fun b!252818 () Bool)

(declare-fun tp!97355 () Bool)

(declare-fun tp!97358 () Bool)

(assert (=> b!252818 (= e!157013 (and tp!97355 tp!97358))))

(declare-fun b!252819 () Bool)

(declare-fun tp!97356 () Bool)

(assert (=> b!252819 (= e!157013 tp!97356)))

(declare-fun b!252817 () Bool)

(assert (=> b!252817 (= e!157013 tp_is_empty!1771)))

(assert (= (and b!250752 ((_ is ElementMatch!923) (regTwo!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252817))

(assert (= (and b!250752 ((_ is Concat!1645) (regTwo!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252818))

(assert (= (and b!250752 ((_ is Star!923) (regTwo!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252819))

(assert (= (and b!250752 ((_ is Union!923) (regTwo!2359 (regex!699 (rule!1276 (h!9077 tokens!465)))))) b!252820))

(declare-fun b!252823 () Bool)

(declare-fun e!157016 () Bool)

(assert (=> b!252823 (= e!157016 true)))

(declare-fun b!252822 () Bool)

(declare-fun e!157015 () Bool)

(assert (=> b!252822 (= e!157015 e!157016)))

(declare-fun b!252821 () Bool)

(declare-fun e!157014 () Bool)

(assert (=> b!252821 (= e!157014 e!157015)))

(assert (=> b!250298 e!157014))

(assert (= b!252822 b!252823))

(assert (= b!252821 b!252822))

(assert (= (and b!250298 ((_ is Cons!3679) (t!35393 rules!1920))) b!252821))

(assert (=> b!252823 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8317))))

(assert (=> b!252823 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8317))))

(declare-fun b!252826 () Bool)

(declare-fun e!157019 () Bool)

(assert (=> b!252826 (= e!157019 true)))

(declare-fun b!252825 () Bool)

(declare-fun e!157018 () Bool)

(assert (=> b!252825 (= e!157018 e!157019)))

(declare-fun b!252824 () Bool)

(declare-fun e!157017 () Bool)

(assert (=> b!252824 (= e!157017 e!157018)))

(assert (=> b!250209 e!157017))

(assert (= b!252825 b!252826))

(assert (= b!252824 b!252825))

(assert (= (and b!250209 ((_ is Cons!3679) (t!35393 rules!1920))) b!252824))

(assert (=> b!252826 (< (dynLambda!1807 order!2733 (toValue!1402 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8309))))

(assert (=> b!252826 (< (dynLambda!1809 order!2737 (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920))))) (dynLambda!1808 order!2735 lambda!8309))))

(declare-fun b!252830 () Bool)

(declare-fun b_free!9361 () Bool)

(declare-fun b_next!9361 () Bool)

(assert (=> b!252830 (= b_free!9361 (not b_next!9361))))

(declare-fun tb!13099 () Bool)

(declare-fun t!35768 () Bool)

(assert (=> (and b!252830 (= (toValue!1402 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35768) tb!13099))

(declare-fun result!16468 () Bool)

(assert (= result!16468 result!16364))

(assert (=> d!71449 t!35768))

(declare-fun tb!13101 () Bool)

(declare-fun t!35770 () Bool)

(assert (=> (and b!252830 (= (toValue!1402 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toValue!1402 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35770) tb!13101))

(declare-fun result!16470 () Bool)

(assert (= result!16470 result!16426))

(assert (=> d!71685 t!35770))

(declare-fun tp!97359 () Bool)

(declare-fun b_and!19205 () Bool)

(assert (=> b!252830 (= tp!97359 (and (=> t!35768 result!16468) (=> t!35770 result!16470) b_and!19205))))

(declare-fun b_free!9363 () Bool)

(declare-fun b_next!9363 () Bool)

(assert (=> b!252830 (= b_free!9363 (not b_next!9363))))

(declare-fun tb!13103 () Bool)

(declare-fun t!35772 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102184)))))) t!35772) tb!13103))

(declare-fun result!16472 () Bool)

(assert (= result!16472 result!16234))

(assert (=> d!70831 t!35772))

(declare-fun t!35774 () Bool)

(declare-fun tb!13105 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465))))) t!35774) tb!13105))

(declare-fun result!16474 () Bool)

(assert (= result!16474 result!16112))

(assert (=> b!249941 t!35774))

(declare-fun t!35776 () Bool)

(declare-fun tb!13107 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 separatorToken!170)))) t!35776) tb!13107))

(declare-fun result!16476 () Bool)

(assert (= result!16476 result!16134))

(assert (=> d!70265 t!35776))

(declare-fun tb!13109 () Bool)

(declare-fun t!35778 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47495 call!13202 (ite c!47494 separatorToken!170 call!13201)))))) t!35778) tb!13109))

(declare-fun result!16478 () Bool)

(assert (= result!16478 result!16334))

(assert (=> d!71339 t!35778))

(declare-fun tb!13111 () Bool)

(declare-fun t!35780 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (_1!2273 (get!1209 lt!102084)))))) t!35780) tb!13111))

(declare-fun result!16480 () Bool)

(assert (= result!16480 result!16204))

(assert (=> d!70543 t!35780))

(declare-fun t!35782 () Bool)

(declare-fun tb!13113 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465)))))) t!35782) tb!13113))

(declare-fun result!16482 () Bool)

(assert (= result!16482 result!16264))

(assert (=> d!70997 t!35782))

(declare-fun tb!13115 () Bool)

(declare-fun t!35784 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101844 0))))) t!35784) tb!13115))

(declare-fun result!16484 () Bool)

(assert (= result!16484 result!16274))

(assert (=> d!71051 t!35784))

(declare-fun t!35786 () Bool)

(declare-fun tb!13117 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (Cons!3680 (h!9077 tokens!465) Nil!3680)))))) t!35786) tb!13117))

(declare-fun result!16486 () Bool)

(assert (= result!16486 result!16176))

(assert (=> d!70475 t!35786))

(declare-fun tb!13119 () Bool)

(declare-fun t!35788 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 call!13201)))) t!35788) tb!13119))

(declare-fun result!16488 () Bool)

(assert (= result!16488 result!16386))

(assert (=> d!71553 t!35788))

(declare-fun t!35790 () Bool)

(declare-fun tb!13121 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0))))) t!35790) tb!13121))

(declare-fun result!16490 () Bool)

(assert (= result!16490 result!16294))

(assert (=> d!71141 t!35790))

(assert (=> b!252720 t!35782))

(declare-fun tb!13123 () Bool)

(declare-fun t!35792 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 call!13247)))) t!35792) tb!13123))

(declare-fun result!16492 () Bool)

(assert (= result!16492 result!16416))

(assert (=> d!71679 t!35792))

(assert (=> d!70279 t!35774))

(declare-fun t!35794 () Bool)

(declare-fun tb!13125 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (ite c!47556 call!13248 (ite c!47555 separatorToken!170 call!13247)))))) t!35794) tb!13125))

(declare-fun result!16494 () Bool)

(assert (= result!16494 result!16354))

(assert (=> d!71397 t!35794))

(declare-fun tb!13127 () Bool)

(declare-fun t!35796 () Bool)

(assert (=> (and b!252830 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (apply!694 lt!101830 0))))) t!35796) tb!13127))

(declare-fun result!16496 () Bool)

(assert (= result!16496 result!16284))

(assert (=> d!71059 t!35796))

(assert (=> b!250434 t!35776))

(declare-fun tp!97362 () Bool)

(declare-fun b_and!19207 () Bool)

(assert (=> b!252830 (= tp!97362 (and (=> t!35772 result!16472) (=> t!35794 result!16494) (=> t!35778 result!16478) (=> t!35790 result!16490) (=> t!35780 result!16480) (=> t!35786 result!16486) (=> t!35788 result!16488) (=> t!35796 result!16496) (=> t!35782 result!16482) (=> t!35776 result!16476) (=> t!35774 result!16474) (=> t!35792 result!16492) (=> t!35784 result!16484) b_and!19207))))

(declare-fun e!157020 () Bool)

(assert (=> b!250731 (= tp!97190 e!157020)))

(declare-fun b!252829 () Bool)

(declare-fun tp!97360 () Bool)

(declare-fun e!157021 () Bool)

(declare-fun e!157024 () Bool)

(assert (=> b!252829 (= e!157021 (and tp!97360 (inv!4527 (tag!907 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (inv!4530 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) e!157024))))

(assert (=> b!252830 (= e!157024 (and tp!97359 tp!97362))))

(declare-fun e!157023 () Bool)

(declare-fun tp!97361 () Bool)

(declare-fun b!252827 () Bool)

(assert (=> b!252827 (= e!157020 (and (inv!4531 (h!9077 (t!35394 (t!35394 tokens!465)))) e!157023 tp!97361))))

(declare-fun tp!97363 () Bool)

(declare-fun b!252828 () Bool)

(assert (=> b!252828 (= e!157023 (and (inv!21 (value!24237 (h!9077 (t!35394 (t!35394 tokens!465))))) e!157021 tp!97363))))

(assert (= b!252829 b!252830))

(assert (= b!252828 b!252829))

(assert (= b!252827 b!252828))

(assert (= (and b!250731 ((_ is Cons!3680) (t!35394 (t!35394 tokens!465)))) b!252827))

(declare-fun m!312473 () Bool)

(assert (=> b!252829 m!312473))

(declare-fun m!312475 () Bool)

(assert (=> b!252829 m!312475))

(declare-fun m!312477 () Bool)

(assert (=> b!252827 m!312477))

(declare-fun m!312479 () Bool)

(assert (=> b!252828 m!312479))

(declare-fun b!252831 () Bool)

(declare-fun e!157026 () Bool)

(declare-fun tp!97364 () Bool)

(assert (=> b!252831 (= e!157026 (and tp_is_empty!1771 tp!97364))))

(assert (=> b!250732 (= tp!97192 e!157026)))

(assert (= (and b!250732 ((_ is Cons!3678) (originalCharacters!742 (h!9077 (t!35394 tokens!465))))) b!252831))

(declare-fun b_lambda!7491 () Bool)

(assert (= b_lambda!7427 (or b!250061 b_lambda!7491)))

(declare-fun bs!27367 () Bool)

(declare-fun d!71705 () Bool)

(assert (= bs!27367 (and d!71705 b!250061)))

(assert (=> bs!27367 (= (dynLambda!1813 lambda!8295 (apply!694 lt!101844 0)) (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (apply!694 lt!101844 0)))))

(assert (=> bs!27367 m!306409))

(declare-fun m!312481 () Bool)

(assert (=> bs!27367 m!312481))

(assert (=> d!71015 d!71705))

(declare-fun b_lambda!7493 () Bool)

(assert (= b_lambda!7437 (or b!249873 b_lambda!7493)))

(declare-fun bs!27368 () Bool)

(declare-fun d!71707 () Bool)

(assert (= bs!27368 (and d!71707 b!249873)))

(assert (=> bs!27368 (= (dynLambda!1813 lambda!8285 (h!9077 (t!35394 tokens!465))) (not (isSeparator!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))))

(assert (=> b!251960 d!71707))

(declare-fun b_lambda!7495 () Bool)

(assert (= b_lambda!7489 (or (and b!249891 b_free!9331 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!252830 b_free!9363 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!250767 b_free!9355 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!249885 b_free!9339 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!250734 b_free!9351) (and b!249870 b_free!9335 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!252739 b_free!9359 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) b_lambda!7495)))

(declare-fun b_lambda!7497 () Bool)

(assert (= b_lambda!7407 (or b!249873 b_lambda!7497)))

(declare-fun bs!27369 () Bool)

(declare-fun d!71709 () Bool)

(assert (= bs!27369 (and d!71709 b!249873)))

(assert (=> bs!27369 (= (dynLambda!1813 lambda!8285 (h!9077 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))) (not (isSeparator!699 (rule!1276 (h!9077 (t!35394 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 lt!101841)))))))))))

(assert (=> b!251265 d!71709))

(declare-fun b_lambda!7499 () Bool)

(assert (= b_lambda!7473 (or b!249874 b_lambda!7499)))

(assert (=> b!252503 d!70439))

(declare-fun b_lambda!7501 () Bool)

(assert (= b_lambda!7433 (or b!250290 b_lambda!7501)))

(declare-fun bs!27370 () Bool)

(declare-fun d!71711 () Bool)

(assert (= bs!27370 (and d!71711 b!250290)))

(assert (=> bs!27370 (= (dynLambda!1813 lambda!8317 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)) (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (apply!694 (seqFromList!776 (t!35394 tokens!465)) 0)))))

(assert (=> bs!27370 m!306773))

(declare-fun m!312483 () Bool)

(assert (=> bs!27370 m!312483))

(assert (=> d!71133 d!71711))

(declare-fun b_lambda!7503 () Bool)

(assert (= b_lambda!7461 (or d!70223 b_lambda!7503)))

(declare-fun bs!27371 () Bool)

(declare-fun d!71713 () Bool)

(assert (= bs!27371 (and d!71713 d!70223)))

(assert (=> bs!27371 (= (dynLambda!1813 lambda!8309 (h!9077 (list!1460 lt!101844))) (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (h!9077 (list!1460 lt!101844))))))

(assert (=> bs!27371 m!308417))

(assert (=> b!252296 d!71713))

(declare-fun b_lambda!7505 () Bool)

(assert (= b_lambda!7471 (or b!249874 b_lambda!7505)))

(assert (=> d!71517 d!70439))

(declare-fun b_lambda!7507 () Bool)

(assert (= b_lambda!7405 (or d!70365 b_lambda!7507)))

(declare-fun bs!27372 () Bool)

(declare-fun d!71715 () Bool)

(assert (= bs!27372 (and d!71715 d!70365)))

(assert (=> bs!27372 (= (dynLambda!1813 lambda!8323 (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))))) (not (isSeparator!699 (rule!1276 (h!9077 (list!1460 (_1!2274 (lex!385 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!268 thiss!17480 rules!1920 (seqFromList!776 (t!35394 tokens!465)) separatorToken!170 0)))))))))))

(assert (=> b!251233 d!71715))

(declare-fun b_lambda!7509 () Bool)

(assert (= b_lambda!7423 (or (and b!249891 b_free!9331 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 tokens!465)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!252830 b_free!9363 (= (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 (t!35394 tokens!465)))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!250767 b_free!9355 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 rules!1920)))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!249885 b_free!9339 (= (toChars!1261 (transformation!699 (rule!1276 separatorToken!170))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!250734 b_free!9351) (and b!249870 b_free!9335 (= (toChars!1261 (transformation!699 (h!9076 rules!1920))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) (and b!252739 b_free!9359 (= (toChars!1261 (transformation!699 (h!9076 (t!35393 (t!35393 rules!1920))))) (toChars!1261 (transformation!699 (rule!1276 (h!9077 (t!35394 tokens!465))))))) b_lambda!7509)))

(declare-fun b_lambda!7511 () Bool)

(assert (= b_lambda!7395 (or b!249873 b_lambda!7511)))

(declare-fun bs!27373 () Bool)

(declare-fun d!71717 () Bool)

(assert (= bs!27373 (and d!71717 b!249873)))

(assert (=> bs!27373 (= (dynLambda!1813 lambda!8285 (h!9077 (list!1460 lt!101844))) (not (isSeparator!699 (rule!1276 (h!9077 (list!1460 lt!101844))))))))

(assert (=> b!250965 d!71717))

(declare-fun b_lambda!7513 () Bool)

(assert (= b_lambda!7487 (or b!249873 b_lambda!7513)))

(declare-fun bs!27374 () Bool)

(declare-fun d!71719 () Bool)

(assert (= bs!27374 (and d!71719 b!249873)))

(assert (=> bs!27374 (= (dynLambda!1813 lambda!8285 (h!9077 lt!102236)) (not (isSeparator!699 (rule!1276 (h!9077 lt!102236)))))))

(assert (=> b!252716 d!71719))

(declare-fun b_lambda!7515 () Bool)

(assert (= b_lambda!7425 (or b!250190 b_lambda!7515)))

(declare-fun bs!27375 () Bool)

(declare-fun d!71721 () Bool)

(assert (= bs!27375 (and d!71721 b!250190)))

(assert (=> bs!27375 (= (dynLambda!1813 lambda!8304 (h!9077 tokens!465)) (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (h!9077 tokens!465)))))

(assert (=> bs!27375 m!306101))

(assert (=> d!71001 d!71721))

(declare-fun b_lambda!7517 () Bool)

(assert (= b_lambda!7439 (or b!250282 b_lambda!7517)))

(declare-fun bs!27376 () Bool)

(declare-fun d!71723 () Bool)

(assert (= bs!27376 (and d!71723 b!250282)))

(assert (=> bs!27376 (= (dynLambda!1813 lambda!8315 (h!9077 (t!35394 tokens!465))) (rulesProduceIndividualToken!334 thiss!17480 rules!1920 (h!9077 (t!35394 tokens!465))))))

(declare-fun m!312485 () Bool)

(assert (=> bs!27376 m!312485))

(assert (=> d!71161 d!71723))

(check-sat (not b!251338) (not b!251667) (not b!250880) (not b!251943) (not d!71433) (not b!251839) (not b!251684) (not bm!13359) (not b!252259) (not b_next!9333) (not tb!12869) (not b!251343) (not b!251985) (not d!71355) (not b!251284) (not b!250915) (not d!71679) (not d!71419) (not b!252102) (not d!71015) (not b!251149) (not b!251234) (not d!70555) (not b!251907) (not b_lambda!7499) (not d!71079) (not b!251976) (not b!251969) (not bs!27375) (not b!251313) (not b_lambda!7455) (not b!252763) (not b!252554) (not d!71653) (not d!71169) (not b_lambda!7515) (not b!251157) (not bm!13333) (not b!251909) (not b!251880) (not b!251785) (not b!252808) (not d!71003) (not b!252293) (not d!71141) (not b!251867) (not b!250891) (not b!252697) (not b!251971) (not b!252536) (not b!250905) (not b!251143) (not d!71063) (not b!252417) (not d!71191) (not b!251002) (not b!252807) (not b!251666) (not bm!13340) (not b!250939) (not d!70843) (not b!252246) (not d!71345) (not b!252700) (not b_lambda!7509) (not b!252415) (not b!252686) (not b!251153) (not b!251841) (not b_lambda!7429) (not b!252364) (not b!252759) (not b!251861) (not bm!13349) (not b!252520) (not b!252485) (not b!251913) (not tb!13059) (not b!251773) (not b!252803) (not bm!13294) (not b!252365) (not b!250817) (not b!252366) (not b!252787) (not b!252077) (not b!250980) (not d!71391) (not b!252814) (not bm!13272) (not b!252270) (not d!71081) (not b!251312) (not b!252720) (not bm!13405) (not b!251966) (not d!71699) (not d!70475) (not b!251897) (not b!252757) (not d!70987) (not d!71139) (not d!70597) (not b!252746) (not b!252744) (not b!251562) (not b!252414) (not d!71093) (not b!250934) (not d!71127) (not b!251878) (not b!251843) (not b!251263) (not d!71553) (not b!252753) (not d!70983) (not b!252235) (not b!252301) (not b!251314) (not b!251786) (not b_lambda!7497) (not b!251855) (not b!250981) (not b!252013) (not d!71085) (not b!252691) (not b!251961) (not d!71069) (not b!251870) (not d!71489) (not b!251906) (not b!251896) (not tb!12811) (not b!252234) (not b!251287) (not b!251590) (not tb!12899) (not b!251950) (not b!252804) (not b!251227) (not d!71267) (not b!251747) (not b!251809) (not b!252418) (not b!251995) (not d!70791) (not b!252333) (not b!251003) (not b!251945) (not b!252773) (not d!71059) (not b_lambda!7373) (not d!71039) (not d!70595) (not b!252811) (not tb!12929) (not b!250832) (not d!71397) (not d!71265) (not b!252388) (not d!71035) (not b!252538) (not b!251231) (not d!71689) (not b!251999) (not b_lambda!7463) (not b!252708) (not b!251587) (not b!250828) (not b!252793) (not b!250856) (not d!71421) (not b_lambda!7383) (not b!251842) (not b!252824) (not b!251753) (not d!70453) (not b!252341) (not b!251890) (not b!250944) (not b!251152) (not b!251184) (not d!71667) (not d!70489) (not b_lambda!7501) (not d!71025) (not b!250854) (not b!251806) (not b!251148) (not d!70723) (not d!71481) (not d!70819) (not d!71083) (not d!71567) (not d!71681) (not b!252737) (not b_next!9353) (not b!252816) (not b!251237) (not b!251986) (not b!251887) (not bm!13337) (not b!252390) (not d!70845) (not d!70613) (not bm!13342) (not b!252012) (not b_next!9361) (not b!250961) b_and!19191 (not d!71533) (not b!250825) (not b!251309) (not d!71453) (not bm!13329) (not b!250821) (not b!251924) (not d!71165) (not d!70729) (not b_lambda!7483) (not b!252317) (not d!71017) (not d!71143) (not b!252260) (not b!250993) (not b!252078) (not b!251548) (not d!71543) (not b!250966) (not b!251156) b_and!19197 (not d!70847) (not b!252081) (not b!252516) (not d!70545) (not d!70515) (not b!250823) (not d!70809) (not d!71695) (not b!252369) (not b!252772) (not d!71393) (not b!252723) (not b!251339) (not b!251997) (not b!252831) (not b!251860) (not d!71357) (not b!251722) (not d!71223) (not b!252345) (not b!251721) (not d!70579) (not d!70609) (not b!251625) b_and!19207 (not b!251854) (not b_lambda!7493) (not b!252685) (not d!70737) (not b!251689) (not b!251546) (not bm!13273) (not b!252765) (not d!71241) (not b_lambda!7379) (not b!252079) (not d!70541) (not d!71375) (not b!252456) (not b!251980) (not b!251847) (not d!70839) (not b!251712) (not b!252721) (not b!250938) (not d!71129) (not b!252513) (not d!71137) (not b!251660) (not b!250800) (not b!252784) (not b!252827) (not b!252003) (not b!252706) (not b!251702) (not b_next!9337) (not b!252521) (not d!71551) (not b!252500) (not b!252258) (not b!252331) (not b!252791) (not b!251711) (not d!71525) (not bm!13300) (not b!250976) (not b!251340) (not b!252491) (not d!70557) (not b!250799) (not b!252228) (not bm!13350) (not d!71549) (not b!251972) (not d!71703) (not b!251871) (not d!71107) (not b!251894) (not b!250945) (not b!251840) (not d!71161) (not b!250881) (not bm!13387) (not b!251795) (not b!251620) (not d!71097) (not b!250802) (not b!251914) (not d!71693) (not b!252792) (not d!71179) (not b!251723) (not b!252330) (not b!251563) (not d!70543) (not b!252818) (not b!252821) (not b!251728) (not b!250889) (not b!250805) (not b!251848) (not b!251952) (not b!251727) (not b!251904) (not b!251893) (not d!70805) (not b!250861) (not b!252543) (not b!251892) (not d!70607) (not b!251905) (not d!71479) (not b!251714) (not b!250932) (not b!252747) (not b!251685) (not b!250797) (not b!251155) (not d!71387) (not b!252725) (not d!70451) (not b!251266) (not b!252006) (not b!252767) (not b!252815) (not d!71431) (not b!251874) (not b!252340) (not d!70509) (not b!252490) (not d!71163) (not b!251235) (not b!250860) (not d!70617) (not b!250804) (not b!252810) (not tb!12839) (not b!252299) (not b!251784) (not d!70571) (not b!251703) (not b!252715) (not b!252289) (not b!251324) (not bm!13353) (not b!251701) (not b!252272) (not b!251001) (not b!252208) (not d!71109) (not bm!13338) (not b!252735) (not d!71099) (not b!252339) (not b!251819) (not d!70551) (not d!70989) (not b!251923) (not d!70799) (not b!251260) (not b!252518) (not b!250858) (not b_lambda!7503) (not b!252777) (not b_lambda!7507) (not b!252059) (not b!252502) (not b_lambda!7389) (not b!251751) (not b_lambda!7513) (not b!251115) (not d!70841) (not d!71055) (not b!251845) (not d!71157) (not b!251754) (not b_lambda!7431) (not d!70743) (not b!252783) (not b!251665) (not b!252544) (not bm!13274) (not d!70831) (not d!71427) (not b!250819) (not b!251549) (not b!252699) (not b!252690) (not d!70825) (not b!252297) (not b!250887) (not b!252546) (not b!252760) (not d!70793) (not bm!13348) (not d!71061) (not b!251902) (not b!251236) (not d!71233) (not d!71569) (not b_lambda!7377) (not d!70603) (not bm!13293) (not b!250960) (not b_lambda!7381) (not b!251810) (not b!251285) (not d!70741) (not tb!12999) (not b_next!9331) (not d!71507) (not b!250906) (not d!71147) (not d!71145) (not bm!13363) (not b!252066) (not b!252493) (not d!70553) (not b!250936) (not b!252701) (not d!71115) (not b!252751) (not d!71539) (not bs!27367) (not d!71237) (not d!71337) (not d!71439) (not b!252514) (not b!252316) (not b!251708) (not b!252458) (not tb!12909) (not b!250836) (not b!252693) (not b!251879) (not b!252780) (not b!251320) (not b!251968) (not b!252374) (not bm!13416) (not b!252294) (not b!251688) (not d!71149) (not b!252486) (not b!252771) (not d!71235) (not b!250886) (not b_lambda!7375) (not b!252378) (not b!251951) (not b!250883) (not b!252515) (not d!70591) (not b!251889) (not b!252219) (not b!251680) (not b!251821) (not bm!13358) (not bm!13373) (not d!71483) (not d!70547) (not b!250890) (not b!250857) (not d!71077) (not d!70999) (not b_lambda!7409) (not b!250978) (not d!70997) (not d!71491) (not d!70535) (not d!71193) (not bs!27376) (not b!251661) (not d!71383) (not b!250885) (not b_lambda!7517) (not d!70735) (not b!252004) (not b!250833) (not d!71047) (not bs!27370) (not d!71177) (not b!252789) (not d!71175) (not b!252426) (not b!251668) (not d!70599) (not b!250964) (not d!70749) (not d!71509) (not b!251589) (not bs!27371) (not d!71005) (not d!71529) (not b!251925) (not b!251803) b_and!19193 (not b!252704) (not b!251733) (not d!71053) (not b!251752) (not b!252828) (not d!71459) (not b!252001) (not d!71403) (not bm!13339) (not d!70517) (not d!71219) (not bm!13355) (not b_lambda!7505) (not d!71661) (not b!252794) (not b!252768) (not b!252368) (not b!251926) (not d!70577) (not d!71339) (not b!252274) (not bm!13374) b_and!19201 (not b!252084) (not b!252695) (not d!70471) (not b!252510) (not b!250824) (not b!251113) (not b!252391) (not b!252703) (not b!251852) (not b!251820) (not d!71155) (not bm!13403) (not b!251151) (not b_lambda!7393) (not d!71413) (not d!71049) b_and!19199 (not b!250922) (not b!250917) (not b!251884) (not b!250941) (not b!251818) (not b!251144) (not b!251998) (not d!70829) (not b!252795) (not b!251922) (not b!251921) (not b!252694) (not tb!13019) (not d!71687) (not b_next!9335) (not b!251669) (not b!251984) (not tb!13049) (not b!251686) (not d!71095) (not d!71125) (not b!252724) (not b!251849) (not b!251224) (not b!252781) (not bm!13334) (not b_next!9349) (not b!252785) (not d!71105) (not b!250916) (not b!252367) (not b!252014) (not b!250977) (not d!70797) (not d!71045) (not bm!13315) (not b!251225) (not b!252717) (not b!251713) (not d!71691) (not b!252373) (not bm!13343) (not bm!13328) (not d!71123) (not bm!13327) (not b!252291) (not d!71401) (not b!252083) (not tb!12989) (not bm!13357) b_and!19181 (not b!252380) (not b!251965) (not b!251829) (not b_lambda!7465) (not b!251682) (not b!250920) (not d!70747) (not b!251627) (not d!70995) (not b!251908) (not d!71173) (not b!251991) (not d!71171) (not b!250940) (not bm!13356) (not b_lambda!7385) (not b!251114) (not b!252798) (not b!252428) (not b!251974) tp_is_empty!1771 (not d!71183) (not b!252541) (not b!251846) (not b!251579) (not b!251949) (not b!251288) (not b!251947) (not b!251565) (not b!251544) (not b!252761) (not d!71065) (not b!252740) (not d!71057) (not d!70789) (not b!251317) (not b!251226) (not b!250918) (not b!251662) (not d!71133) (not d!70803) (not b!252764) (not d!70739) (not b!251864) (not d!71117) (not d!70473) (not b!251564) (not b!252076) (not b_lambda!7511) (not b!251578) b_and!19187 b_and!19203 (not d!71341) (not b!251898) (not b!252734) (not d!71273) (not b!250995) (not b!251774) (not b!251900) (not b!251677) (not b!251584) (not d!70507) b_and!19195 (not b!252384) (not b!250801) (not b!252702) (not bm!13345) (not d!70821) (not d!71571) (not d!70745) (not d!71541) (not b!251975) (not b!251868) (not b!252779) (not b!251863) (not d!71531) (not b!251679) (not b!251678) (not b_next!9339) (not b_lambda!7491) (not b!251582) (not d!71535) (not d!70807) (not b!251996) (not b!252776) (not b!252755) (not b!252230) (not b!252300) (not bm!13361) (not b!249953) (not d!70619) (not b!252504) (not b!251830) (not b!251583) (not b!252790) (not b!251566) (not b!251720) (not b!250855) (not b!250937) (not d!70605) (not b!250827) (not d!70519) (not b!252819) (not d!71673) (not b!252689) (not b_next!9357) (not bm!13341) (not b!250798) (not b!252552) (not b!250894) (not b!252719) (not b!251838) (not b!251992) (not b!252512) (not b!252347) b_and!19189 (not b!251935) (not b!252802) b_and!19205 (not bm!13330) (not b!252752) (not b!252539) (not b!250921) (not b!251970) (not b!252002) (not d!70719) (not b!250879) (not b!252709) (not b!251934) b_and!19185 (not tb!12969) (not b!252489) (not b!252820) (not b!251858) (not b!251319) (not d!71351) (not d!70513) (not d!71119) (not b!251749) (not b!252769) (not b!250888) (not b!252812) (not b!252275) (not d!71167) (not b_lambda!7475) (not d!71001) (not b!252383) (not b!250301) (not b!252248) b_and!19183 (not d!71371) (not b!251259) (not b!252775) (not b!251962) (not d!71669) (not bm!13364) (not d!71067) (not b!251256) (not b!251901) (not d!70731) (not b!251891) (not d!71455) (not b_next!9363) (not bm!13401) (not b!250942) (not b!251663) (not b!252343) (not b!252829) (not bm!13399) (not bm!13347) (not d!71071) (not b_lambda!7495) (not b!252231) (not b!252385) (not tb!12919) (not b!251977) (not b_next!9329) (not d!71343) (not b!252756) (not b!251920) (not b!251681) (not b!251967) (not b!252348) (not bm!13324) (not b_next!9355) (not b!251750) (not b_next!9351) (not d!71659) (not b!252738) (not d!71103) (not d!71461) (not d!70601) (not b_next!9359) (not b!251994) (not b!252745) (not b!252788) (not d!70511) (not b!252421) (not b!251989) (not d!71051) (not b!252082) (not b!252457) (not b!251948) (not b!251888) (not b_lambda!7485) (not d!71701) (not bm!13354) (not b!251004) (not b!251903) (not d!70483) (not b!251794) (not b_lambda!7435) (not b!252425) (not b!251946) (not b!252532) (not b!251917) (not b!252332) (not b!252806) (not b!251154) (not b!252736) (not d!71153))
(check-sat (not b_next!9333) b_and!19197 b_and!19207 (not b_next!9337) (not b_next!9331) b_and!19193 b_and!19201 b_and!19181 (not b_next!9357) b_and!19185 (not b_next!9361) b_and!19191 (not b_next!9353) (not b_next!9335) b_and!19199 (not b_next!9349) b_and!19187 b_and!19203 b_and!19195 (not b_next!9339) b_and!19189 b_and!19205 b_and!19183 (not b_next!9363) (not b_next!9355) (not b_next!9351) (not b_next!9329) (not b_next!9359))
