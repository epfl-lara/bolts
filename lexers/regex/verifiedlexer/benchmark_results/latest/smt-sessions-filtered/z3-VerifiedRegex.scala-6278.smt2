; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!311210 () Bool)

(assert start!311210)

(declare-fun b!3330369 () Bool)

(declare-fun b_free!87705 () Bool)

(declare-fun b_next!88409 () Bool)

(assert (=> b!3330369 (= b_free!87705 (not b_next!88409))))

(declare-fun tp!1040845 () Bool)

(declare-fun b_and!229695 () Bool)

(assert (=> b!3330369 (= tp!1040845 b_and!229695)))

(declare-fun b_free!87707 () Bool)

(declare-fun b_next!88411 () Bool)

(assert (=> b!3330369 (= b_free!87707 (not b_next!88411))))

(declare-fun tp!1040854 () Bool)

(declare-fun b_and!229697 () Bool)

(assert (=> b!3330369 (= tp!1040854 b_and!229697)))

(declare-fun b!3330365 () Bool)

(declare-fun b_free!87709 () Bool)

(declare-fun b_next!88413 () Bool)

(assert (=> b!3330365 (= b_free!87709 (not b_next!88413))))

(declare-fun tp!1040851 () Bool)

(declare-fun b_and!229699 () Bool)

(assert (=> b!3330365 (= tp!1040851 b_and!229699)))

(declare-fun b_free!87711 () Bool)

(declare-fun b_next!88415 () Bool)

(assert (=> b!3330365 (= b_free!87711 (not b_next!88415))))

(declare-fun tp!1040843 () Bool)

(declare-fun b_and!229701 () Bool)

(assert (=> b!3330365 (= tp!1040843 b_and!229701)))

(declare-fun b!3330357 () Bool)

(declare-fun b_free!87713 () Bool)

(declare-fun b_next!88417 () Bool)

(assert (=> b!3330357 (= b_free!87713 (not b_next!88417))))

(declare-fun tp!1040842 () Bool)

(declare-fun b_and!229703 () Bool)

(assert (=> b!3330357 (= tp!1040842 b_and!229703)))

(declare-fun b_free!87715 () Bool)

(declare-fun b_next!88419 () Bool)

(assert (=> b!3330357 (= b_free!87715 (not b_next!88419))))

(declare-fun tp!1040846 () Bool)

(declare-fun b_and!229705 () Bool)

(assert (=> b!3330357 (= tp!1040846 b_and!229705)))

(declare-fun b!3330349 () Bool)

(declare-fun res!1350766 () Bool)

(declare-fun e!2071077 () Bool)

(assert (=> b!3330349 (=> (not res!1350766) (not e!2071077))))

(declare-datatypes ((C!20376 0))(
  ( (C!20377 (val!12236 Int)) )
))
(declare-datatypes ((Regex!10095 0))(
  ( (ElementMatch!10095 (c!565594 C!20376)) (Concat!15661 (regOne!20702 Regex!10095) (regTwo!20702 Regex!10095)) (EmptyExpr!10095) (Star!10095 (reg!10424 Regex!10095)) (EmptyLang!10095) (Union!10095 (regOne!20703 Regex!10095) (regTwo!20703 Regex!10095)) )
))
(declare-datatypes ((List!36810 0))(
  ( (Nil!36686) (Cons!36686 (h!42106 (_ BitVec 16)) (t!257167 List!36810)) )
))
(declare-datatypes ((TokenValue!5566 0))(
  ( (FloatLiteralValue!11132 (text!39407 List!36810)) (TokenValueExt!5565 (__x!23349 Int)) (Broken!27830 (value!172510 List!36810)) (Object!5689) (End!5566) (Def!5566) (Underscore!5566) (Match!5566) (Else!5566) (Error!5566) (Case!5566) (If!5566) (Extends!5566) (Abstract!5566) (Class!5566) (Val!5566) (DelimiterValue!11132 (del!5626 List!36810)) (KeywordValue!5572 (value!172511 List!36810)) (CommentValue!11132 (value!172512 List!36810)) (WhitespaceValue!11132 (value!172513 List!36810)) (IndentationValue!5566 (value!172514 List!36810)) (String!41163) (Int32!5566) (Broken!27831 (value!172515 List!36810)) (Boolean!5567) (Unit!51697) (OperatorValue!5569 (op!5626 List!36810)) (IdentifierValue!11132 (value!172516 List!36810)) (IdentifierValue!11133 (value!172517 List!36810)) (WhitespaceValue!11133 (value!172518 List!36810)) (True!11132) (False!11132) (Broken!27832 (value!172519 List!36810)) (Broken!27833 (value!172520 List!36810)) (True!11133) (RightBrace!5566) (RightBracket!5566) (Colon!5566) (Null!5566) (Comma!5566) (LeftBracket!5566) (False!11133) (LeftBrace!5566) (ImaginaryLiteralValue!5566 (text!39408 List!36810)) (StringLiteralValue!16698 (value!172521 List!36810)) (EOFValue!5566 (value!172522 List!36810)) (IdentValue!5566 (value!172523 List!36810)) (DelimiterValue!11133 (value!172524 List!36810)) (DedentValue!5566 (value!172525 List!36810)) (NewLineValue!5566 (value!172526 List!36810)) (IntegerValue!16698 (value!172527 (_ BitVec 32)) (text!39409 List!36810)) (IntegerValue!16699 (value!172528 Int) (text!39410 List!36810)) (Times!5566) (Or!5566) (Equal!5566) (Minus!5566) (Broken!27834 (value!172529 List!36810)) (And!5566) (Div!5566) (LessEqual!5566) (Mod!5566) (Concat!15662) (Not!5566) (Plus!5566) (SpaceValue!5566 (value!172530 List!36810)) (IntegerValue!16700 (value!172531 Int) (text!39411 List!36810)) (StringLiteralValue!16699 (text!39412 List!36810)) (FloatLiteralValue!11133 (text!39413 List!36810)) (BytesLiteralValue!5566 (value!172532 List!36810)) (CommentValue!11133 (value!172533 List!36810)) (StringLiteralValue!16700 (value!172534 List!36810)) (ErrorTokenValue!5566 (msg!5627 List!36810)) )
))
(declare-datatypes ((List!36811 0))(
  ( (Nil!36687) (Cons!36687 (h!42107 C!20376) (t!257168 List!36811)) )
))
(declare-datatypes ((IArray!22099 0))(
  ( (IArray!22100 (innerList!11107 List!36811)) )
))
(declare-datatypes ((Conc!11047 0))(
  ( (Node!11047 (left!28593 Conc!11047) (right!28923 Conc!11047) (csize!22324 Int) (cheight!11258 Int)) (Leaf!17326 (xs!14185 IArray!22099) (csize!22325 Int)) (Empty!11047) )
))
(declare-datatypes ((BalanceConc!21708 0))(
  ( (BalanceConc!21709 (c!565595 Conc!11047)) )
))
(declare-datatypes ((String!41164 0))(
  ( (String!41165 (value!172535 String)) )
))
(declare-datatypes ((TokenValueInjection!10560 0))(
  ( (TokenValueInjection!10561 (toValue!7504 Int) (toChars!7363 Int)) )
))
(declare-datatypes ((Rule!10472 0))(
  ( (Rule!10473 (regex!5336 Regex!10095) (tag!5888 String!41164) (isSeparator!5336 Bool) (transformation!5336 TokenValueInjection!10560)) )
))
(declare-datatypes ((Token!10038 0))(
  ( (Token!10039 (value!172536 TokenValue!5566) (rule!7860 Rule!10472) (size!27739 Int) (originalCharacters!6050 List!36811)) )
))
(declare-fun separatorToken!241 () Token!10038)

(declare-datatypes ((LexerInterface!4925 0))(
  ( (LexerInterfaceExt!4922 (__x!23350 Int)) (Lexer!4923) )
))
(declare-fun thiss!18206 () LexerInterface!4925)

(declare-datatypes ((List!36812 0))(
  ( (Nil!36688) (Cons!36688 (h!42108 Rule!10472) (t!257169 List!36812)) )
))
(declare-fun rules!2135 () List!36812)

(declare-fun rulesProduceIndividualToken!2417 (LexerInterface!4925 List!36812 Token!10038) Bool)

(assert (=> b!3330349 (= res!1350766 (rulesProduceIndividualToken!2417 thiss!18206 rules!2135 separatorToken!241))))

(declare-datatypes ((List!36813 0))(
  ( (Nil!36689) (Cons!36689 (h!42109 Token!10038) (t!257170 List!36813)) )
))
(declare-fun tokens!494 () List!36813)

(declare-fun e!2071083 () Bool)

(declare-fun e!2071072 () Bool)

(declare-fun b!3330350 () Bool)

(declare-fun tp!1040852 () Bool)

(declare-fun inv!21 (TokenValue!5566) Bool)

(assert (=> b!3330350 (= e!2071072 (and (inv!21 (value!172536 (h!42109 tokens!494))) e!2071083 tp!1040852))))

(declare-fun b!3330351 () Bool)

(declare-fun res!1350779 () Bool)

(assert (=> b!3330351 (=> (not res!1350779) (not e!2071077))))

(declare-fun lambda!119825 () Int)

(declare-fun forall!7665 (List!36813 Int) Bool)

(assert (=> b!3330351 (= res!1350779 (forall!7665 tokens!494 lambda!119825))))

(declare-fun e!2071073 () Bool)

(declare-fun b!3330352 () Bool)

(declare-fun tp!1040853 () Bool)

(declare-fun e!2071076 () Bool)

(declare-fun inv!49699 (String!41164) Bool)

(declare-fun inv!49702 (TokenValueInjection!10560) Bool)

(assert (=> b!3330352 (= e!2071073 (and tp!1040853 (inv!49699 (tag!5888 (h!42108 rules!2135))) (inv!49702 (transformation!5336 (h!42108 rules!2135))) e!2071076))))

(declare-fun b!3330353 () Bool)

(declare-fun res!1350778 () Bool)

(assert (=> b!3330353 (=> (not res!1350778) (not e!2071077))))

(declare-fun sepAndNonSepRulesDisjointChars!1530 (List!36812 List!36812) Bool)

(assert (=> b!3330353 (= res!1350778 (sepAndNonSepRulesDisjointChars!1530 rules!2135 rules!2135))))

(declare-fun b!3330354 () Bool)

(declare-fun res!1350767 () Bool)

(assert (=> b!3330354 (=> (not res!1350767) (not e!2071077))))

(assert (=> b!3330354 (= res!1350767 (isSeparator!5336 (rule!7860 separatorToken!241)))))

(declare-fun b!3330355 () Bool)

(declare-fun res!1350776 () Bool)

(declare-fun e!2071068 () Bool)

(assert (=> b!3330355 (=> res!1350776 e!2071068)))

(assert (=> b!3330355 (= res!1350776 (not (rulesProduceIndividualToken!2417 thiss!18206 rules!2135 (h!42109 tokens!494))))))

(declare-fun b!3330356 () Bool)

(declare-fun e!2071075 () Bool)

(assert (=> b!3330356 (= e!2071075 e!2071068)))

(declare-fun res!1350774 () Bool)

(assert (=> b!3330356 (=> res!1350774 e!2071068)))

(declare-fun lt!1132034 () List!36811)

(declare-fun lt!1132037 () List!36811)

(declare-fun lt!1132041 () List!36811)

(assert (=> b!3330356 (= res!1350774 (or (not (= lt!1132037 lt!1132041)) (not (= lt!1132034 lt!1132041))))))

(declare-fun list!13219 (BalanceConc!21708) List!36811)

(declare-fun charsOf!3350 (Token!10038) BalanceConc!21708)

(assert (=> b!3330356 (= lt!1132041 (list!13219 (charsOf!3350 (h!42109 tokens!494))))))

(declare-fun e!2071069 () Bool)

(assert (=> b!3330357 (= e!2071069 (and tp!1040842 tp!1040846))))

(declare-fun b!3330358 () Bool)

(declare-fun res!1350772 () Bool)

(declare-fun e!2071066 () Bool)

(assert (=> b!3330358 (=> (not res!1350772) (not e!2071066))))

(declare-fun rulesInvariant!4322 (LexerInterface!4925 List!36812) Bool)

(assert (=> b!3330358 (= res!1350772 (rulesInvariant!4322 thiss!18206 rules!2135))))

(declare-fun b!3330359 () Bool)

(declare-fun e!2071074 () Bool)

(declare-fun e!2071086 () Bool)

(assert (=> b!3330359 (= e!2071074 e!2071086)))

(declare-fun res!1350768 () Bool)

(assert (=> b!3330359 (=> res!1350768 e!2071086)))

(declare-datatypes ((tuple2!36200 0))(
  ( (tuple2!36201 (_1!21234 Token!10038) (_2!21234 List!36811)) )
))
(declare-datatypes ((Option!7320 0))(
  ( (None!7319) (Some!7319 (v!36227 tuple2!36200)) )
))
(declare-fun lt!1132039 () Option!7320)

(declare-fun isDefined!5662 (Option!7320) Bool)

(assert (=> b!3330359 (= res!1350768 (not (isDefined!5662 lt!1132039)))))

(declare-fun maxPrefix!2525 (LexerInterface!4925 List!36812 List!36811) Option!7320)

(assert (=> b!3330359 (= lt!1132039 (maxPrefix!2525 thiss!18206 rules!2135 lt!1132041))))

(declare-datatypes ((Unit!51698 0))(
  ( (Unit!51699) )
))
(declare-fun lt!1132042 () Unit!51698)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!920 (LexerInterface!4925 List!36812 List!36813 Token!10038) Unit!51698)

(assert (=> b!3330359 (= lt!1132042 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!920 thiss!18206 rules!2135 tokens!494 (h!42109 tokens!494)))))

(declare-fun isEmpty!20855 (List!36811) Bool)

(declare-fun getSuffix!1430 (List!36811 List!36811) List!36811)

(assert (=> b!3330359 (isEmpty!20855 (getSuffix!1430 lt!1132041 lt!1132041))))

(declare-fun lt!1132038 () Unit!51698)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!88 (List!36811) Unit!51698)

(assert (=> b!3330359 (= lt!1132038 (lemmaGetSuffixOnListWithItSelfIsEmpty!88 lt!1132041))))

(declare-fun b!3330360 () Bool)

(declare-fun e!2071081 () Bool)

(declare-fun tp!1040848 () Bool)

(assert (=> b!3330360 (= e!2071081 (and e!2071073 tp!1040848))))

(declare-fun b!3330361 () Bool)

(assert (=> b!3330361 (= e!2071068 e!2071074)))

(declare-fun res!1350773 () Bool)

(assert (=> b!3330361 (=> res!1350773 e!2071074)))

(assert (=> b!3330361 (= res!1350773 (isSeparator!5336 (rule!7860 (h!42109 tokens!494))))))

(declare-fun lt!1132036 () Unit!51698)

(declare-fun forallContained!1283 (List!36813 Int Token!10038) Unit!51698)

(assert (=> b!3330361 (= lt!1132036 (forallContained!1283 tokens!494 lambda!119825 (h!42109 tokens!494)))))

(declare-fun tp!1040844 () Bool)

(declare-fun b!3330362 () Bool)

(assert (=> b!3330362 (= e!2071083 (and tp!1040844 (inv!49699 (tag!5888 (rule!7860 (h!42109 tokens!494)))) (inv!49702 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) e!2071069))))

(declare-fun b!3330363 () Bool)

(assert (=> b!3330363 (= e!2071077 (not e!2071075))))

(declare-fun res!1350775 () Bool)

(assert (=> b!3330363 (=> res!1350775 e!2071075)))

(assert (=> b!3330363 (= res!1350775 (not (= lt!1132034 lt!1132037)))))

(declare-fun printList!1473 (LexerInterface!4925 List!36813) List!36811)

(assert (=> b!3330363 (= lt!1132037 (printList!1473 thiss!18206 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))

(declare-fun lt!1132035 () BalanceConc!21708)

(assert (=> b!3330363 (= lt!1132034 (list!13219 lt!1132035))))

(declare-datatypes ((IArray!22101 0))(
  ( (IArray!22102 (innerList!11108 List!36813)) )
))
(declare-datatypes ((Conc!11048 0))(
  ( (Node!11048 (left!28594 Conc!11048) (right!28924 Conc!11048) (csize!22326 Int) (cheight!11259 Int)) (Leaf!17327 (xs!14186 IArray!22101) (csize!22327 Int)) (Empty!11048) )
))
(declare-datatypes ((BalanceConc!21710 0))(
  ( (BalanceConc!21711 (c!565596 Conc!11048)) )
))
(declare-fun lt!1132033 () BalanceConc!21710)

(declare-fun printTailRec!1420 (LexerInterface!4925 BalanceConc!21710 Int BalanceConc!21708) BalanceConc!21708)

(assert (=> b!3330363 (= lt!1132035 (printTailRec!1420 thiss!18206 lt!1132033 0 (BalanceConc!21709 Empty!11047)))))

(declare-fun print!1990 (LexerInterface!4925 BalanceConc!21710) BalanceConc!21708)

(assert (=> b!3330363 (= lt!1132035 (print!1990 thiss!18206 lt!1132033))))

(declare-fun singletonSeq!2432 (Token!10038) BalanceConc!21710)

(assert (=> b!3330363 (= lt!1132033 (singletonSeq!2432 (h!42109 tokens!494)))))

(declare-fun tp!1040847 () Bool)

(declare-fun e!2071085 () Bool)

(declare-fun e!2071071 () Bool)

(declare-fun b!3330364 () Bool)

(assert (=> b!3330364 (= e!2071071 (and (inv!21 (value!172536 separatorToken!241)) e!2071085 tp!1040847))))

(declare-fun e!2071078 () Bool)

(assert (=> b!3330365 (= e!2071078 (and tp!1040851 tp!1040843))))

(declare-fun b!3330366 () Bool)

(declare-fun res!1350777 () Bool)

(assert (=> b!3330366 (=> (not res!1350777) (not e!2071077))))

(get-info :version)

(assert (=> b!3330366 (= res!1350777 (and (not ((_ is Nil!36689) tokens!494)) ((_ is Nil!36689) (t!257170 tokens!494))))))

(declare-fun b!3330367 () Bool)

(declare-fun res!1350780 () Bool)

(assert (=> b!3330367 (=> res!1350780 e!2071068)))

(declare-fun isEmpty!20856 (BalanceConc!21710) Bool)

(declare-datatypes ((tuple2!36202 0))(
  ( (tuple2!36203 (_1!21235 BalanceConc!21710) (_2!21235 BalanceConc!21708)) )
))
(declare-fun lex!2251 (LexerInterface!4925 List!36812 BalanceConc!21708) tuple2!36202)

(declare-fun seqFromList!3725 (List!36811) BalanceConc!21708)

(assert (=> b!3330367 (= res!1350780 (isEmpty!20856 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041)))))))

(declare-fun b!3330368 () Bool)

(declare-fun get!11687 (Option!7320) tuple2!36200)

(assert (=> b!3330368 (= e!2071086 (= (_1!21234 (get!11687 lt!1132039)) (h!42109 tokens!494)))))

(assert (=> b!3330369 (= e!2071076 (and tp!1040845 tp!1040854))))

(declare-fun b!3330370 () Bool)

(declare-fun tp!1040849 () Bool)

(assert (=> b!3330370 (= e!2071085 (and tp!1040849 (inv!49699 (tag!5888 (rule!7860 separatorToken!241))) (inv!49702 (transformation!5336 (rule!7860 separatorToken!241))) e!2071078))))

(declare-fun tp!1040850 () Bool)

(declare-fun e!2071070 () Bool)

(declare-fun b!3330371 () Bool)

(declare-fun inv!49703 (Token!10038) Bool)

(assert (=> b!3330371 (= e!2071070 (and (inv!49703 (h!42109 tokens!494)) e!2071072 tp!1040850))))

(declare-fun res!1350770 () Bool)

(assert (=> start!311210 (=> (not res!1350770) (not e!2071066))))

(assert (=> start!311210 (= res!1350770 ((_ is Lexer!4923) thiss!18206))))

(assert (=> start!311210 e!2071066))

(assert (=> start!311210 true))

(assert (=> start!311210 e!2071081))

(assert (=> start!311210 (and (inv!49703 separatorToken!241) e!2071071)))

(assert (=> start!311210 e!2071070))

(declare-fun b!3330372 () Bool)

(declare-fun res!1350771 () Bool)

(assert (=> b!3330372 (=> (not res!1350771) (not e!2071066))))

(declare-fun isEmpty!20857 (List!36812) Bool)

(assert (=> b!3330372 (= res!1350771 (not (isEmpty!20857 rules!2135)))))

(declare-fun b!3330373 () Bool)

(declare-fun res!1350765 () Bool)

(assert (=> b!3330373 (=> res!1350765 e!2071074)))

(declare-fun lt!1132040 () BalanceConc!21710)

(declare-fun printWithSeparatorToken!116 (LexerInterface!4925 BalanceConc!21710 Token!10038) BalanceConc!21708)

(declare-fun ++!8925 (List!36811 List!36811) List!36811)

(assert (=> b!3330373 (= res!1350765 (not (= (list!13219 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241)) (++!8925 lt!1132041 (list!13219 (charsOf!3350 separatorToken!241))))))))

(declare-fun b!3330374 () Bool)

(assert (=> b!3330374 (= e!2071066 e!2071077)))

(declare-fun res!1350769 () Bool)

(assert (=> b!3330374 (=> (not res!1350769) (not e!2071077))))

(declare-fun rulesProduceEachTokenIndividually!1376 (LexerInterface!4925 List!36812 BalanceConc!21710) Bool)

(assert (=> b!3330374 (= res!1350769 (rulesProduceEachTokenIndividually!1376 thiss!18206 rules!2135 lt!1132040))))

(declare-fun seqFromList!3726 (List!36813) BalanceConc!21710)

(assert (=> b!3330374 (= lt!1132040 (seqFromList!3726 tokens!494))))

(assert (= (and start!311210 res!1350770) b!3330372))

(assert (= (and b!3330372 res!1350771) b!3330358))

(assert (= (and b!3330358 res!1350772) b!3330374))

(assert (= (and b!3330374 res!1350769) b!3330349))

(assert (= (and b!3330349 res!1350766) b!3330354))

(assert (= (and b!3330354 res!1350767) b!3330351))

(assert (= (and b!3330351 res!1350779) b!3330353))

(assert (= (and b!3330353 res!1350778) b!3330366))

(assert (= (and b!3330366 res!1350777) b!3330363))

(assert (= (and b!3330363 (not res!1350775)) b!3330356))

(assert (= (and b!3330356 (not res!1350774)) b!3330355))

(assert (= (and b!3330355 (not res!1350776)) b!3330367))

(assert (= (and b!3330367 (not res!1350780)) b!3330361))

(assert (= (and b!3330361 (not res!1350773)) b!3330373))

(assert (= (and b!3330373 (not res!1350765)) b!3330359))

(assert (= (and b!3330359 (not res!1350768)) b!3330368))

(assert (= b!3330352 b!3330369))

(assert (= b!3330360 b!3330352))

(assert (= (and start!311210 ((_ is Cons!36688) rules!2135)) b!3330360))

(assert (= b!3330370 b!3330365))

(assert (= b!3330364 b!3330370))

(assert (= start!311210 b!3330364))

(assert (= b!3330362 b!3330357))

(assert (= b!3330350 b!3330362))

(assert (= b!3330371 b!3330350))

(assert (= (and start!311210 ((_ is Cons!36689) tokens!494)) b!3330371))

(declare-fun m!3671981 () Bool)

(assert (=> b!3330358 m!3671981))

(declare-fun m!3671983 () Bool)

(assert (=> b!3330374 m!3671983))

(declare-fun m!3671985 () Bool)

(assert (=> b!3330374 m!3671985))

(declare-fun m!3671987 () Bool)

(assert (=> b!3330372 m!3671987))

(declare-fun m!3671989 () Bool)

(assert (=> b!3330350 m!3671989))

(declare-fun m!3671991 () Bool)

(assert (=> b!3330364 m!3671991))

(declare-fun m!3671993 () Bool)

(assert (=> start!311210 m!3671993))

(declare-fun m!3671995 () Bool)

(assert (=> b!3330349 m!3671995))

(declare-fun m!3671997 () Bool)

(assert (=> b!3330351 m!3671997))

(declare-fun m!3671999 () Bool)

(assert (=> b!3330373 m!3671999))

(declare-fun m!3672001 () Bool)

(assert (=> b!3330373 m!3672001))

(declare-fun m!3672003 () Bool)

(assert (=> b!3330373 m!3672003))

(declare-fun m!3672005 () Bool)

(assert (=> b!3330373 m!3672005))

(assert (=> b!3330373 m!3671999))

(assert (=> b!3330373 m!3672003))

(assert (=> b!3330373 m!3672001))

(declare-fun m!3672007 () Bool)

(assert (=> b!3330373 m!3672007))

(declare-fun m!3672009 () Bool)

(assert (=> b!3330359 m!3672009))

(declare-fun m!3672011 () Bool)

(assert (=> b!3330359 m!3672011))

(declare-fun m!3672013 () Bool)

(assert (=> b!3330359 m!3672013))

(declare-fun m!3672015 () Bool)

(assert (=> b!3330359 m!3672015))

(assert (=> b!3330359 m!3672013))

(declare-fun m!3672017 () Bool)

(assert (=> b!3330359 m!3672017))

(declare-fun m!3672019 () Bool)

(assert (=> b!3330359 m!3672019))

(declare-fun m!3672021 () Bool)

(assert (=> b!3330361 m!3672021))

(declare-fun m!3672023 () Bool)

(assert (=> b!3330356 m!3672023))

(assert (=> b!3330356 m!3672023))

(declare-fun m!3672025 () Bool)

(assert (=> b!3330356 m!3672025))

(declare-fun m!3672027 () Bool)

(assert (=> b!3330367 m!3672027))

(assert (=> b!3330367 m!3672027))

(declare-fun m!3672029 () Bool)

(assert (=> b!3330367 m!3672029))

(declare-fun m!3672031 () Bool)

(assert (=> b!3330367 m!3672031))

(declare-fun m!3672033 () Bool)

(assert (=> b!3330362 m!3672033))

(declare-fun m!3672035 () Bool)

(assert (=> b!3330362 m!3672035))

(declare-fun m!3672037 () Bool)

(assert (=> b!3330353 m!3672037))

(declare-fun m!3672039 () Bool)

(assert (=> b!3330371 m!3672039))

(declare-fun m!3672041 () Bool)

(assert (=> b!3330355 m!3672041))

(declare-fun m!3672043 () Bool)

(assert (=> b!3330370 m!3672043))

(declare-fun m!3672045 () Bool)

(assert (=> b!3330370 m!3672045))

(declare-fun m!3672047 () Bool)

(assert (=> b!3330368 m!3672047))

(declare-fun m!3672049 () Bool)

(assert (=> b!3330363 m!3672049))

(declare-fun m!3672051 () Bool)

(assert (=> b!3330363 m!3672051))

(declare-fun m!3672053 () Bool)

(assert (=> b!3330363 m!3672053))

(declare-fun m!3672055 () Bool)

(assert (=> b!3330363 m!3672055))

(declare-fun m!3672057 () Bool)

(assert (=> b!3330363 m!3672057))

(declare-fun m!3672059 () Bool)

(assert (=> b!3330352 m!3672059))

(declare-fun m!3672061 () Bool)

(assert (=> b!3330352 m!3672061))

(check-sat (not b!3330364) (not b!3330363) (not b!3330351) (not b!3330372) (not b!3330350) (not b!3330349) (not b!3330360) (not b_next!88415) (not b!3330370) (not b_next!88417) b_and!229701 b_and!229699 (not b_next!88409) (not b!3330362) (not b!3330353) (not b_next!88419) (not b!3330374) (not b!3330371) b_and!229703 (not b!3330361) (not b!3330355) (not b_next!88413) (not b!3330373) (not b!3330356) (not b!3330359) (not b!3330352) (not start!311210) b_and!229705 b_and!229697 (not b!3330358) (not b!3330367) b_and!229695 (not b!3330368) (not b_next!88411))
(check-sat (not b_next!88419) b_and!229703 (not b_next!88413) b_and!229705 (not b_next!88415) b_and!229697 b_and!229695 (not b_next!88417) b_and!229701 (not b_next!88411) b_and!229699 (not b_next!88409))
(get-model)

(declare-fun d!936919 () Bool)

(declare-fun list!13222 (Conc!11047) List!36811)

(assert (=> d!936919 (= (list!13219 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241)) (list!13222 (c!565595 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241))))))

(declare-fun bs!551307 () Bool)

(assert (= bs!551307 d!936919))

(declare-fun m!3672073 () Bool)

(assert (=> bs!551307 m!3672073))

(assert (=> b!3330373 d!936919))

(declare-fun b!3330417 () Bool)

(declare-fun e!2071115 () List!36811)

(assert (=> b!3330417 (= e!2071115 (list!13219 (charsOf!3350 separatorToken!241)))))

(declare-fun d!936925 () Bool)

(declare-fun e!2071114 () Bool)

(assert (=> d!936925 e!2071114))

(declare-fun res!1350809 () Bool)

(assert (=> d!936925 (=> (not res!1350809) (not e!2071114))))

(declare-fun lt!1132048 () List!36811)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5016 (List!36811) (InoxSet C!20376))

(assert (=> d!936925 (= res!1350809 (= (content!5016 lt!1132048) ((_ map or) (content!5016 lt!1132041) (content!5016 (list!13219 (charsOf!3350 separatorToken!241))))))))

(assert (=> d!936925 (= lt!1132048 e!2071115)))

(declare-fun c!565605 () Bool)

(assert (=> d!936925 (= c!565605 ((_ is Nil!36687) lt!1132041))))

(assert (=> d!936925 (= (++!8925 lt!1132041 (list!13219 (charsOf!3350 separatorToken!241))) lt!1132048)))

(declare-fun b!3330420 () Bool)

(assert (=> b!3330420 (= e!2071114 (or (not (= (list!13219 (charsOf!3350 separatorToken!241)) Nil!36687)) (= lt!1132048 lt!1132041)))))

(declare-fun b!3330418 () Bool)

(assert (=> b!3330418 (= e!2071115 (Cons!36687 (h!42107 lt!1132041) (++!8925 (t!257168 lt!1132041) (list!13219 (charsOf!3350 separatorToken!241)))))))

(declare-fun b!3330419 () Bool)

(declare-fun res!1350810 () Bool)

(assert (=> b!3330419 (=> (not res!1350810) (not e!2071114))))

(declare-fun size!27742 (List!36811) Int)

(assert (=> b!3330419 (= res!1350810 (= (size!27742 lt!1132048) (+ (size!27742 lt!1132041) (size!27742 (list!13219 (charsOf!3350 separatorToken!241))))))))

(assert (= (and d!936925 c!565605) b!3330417))

(assert (= (and d!936925 (not c!565605)) b!3330418))

(assert (= (and d!936925 res!1350809) b!3330419))

(assert (= (and b!3330419 res!1350810) b!3330420))

(declare-fun m!3672105 () Bool)

(assert (=> d!936925 m!3672105))

(declare-fun m!3672107 () Bool)

(assert (=> d!936925 m!3672107))

(assert (=> d!936925 m!3672003))

(declare-fun m!3672109 () Bool)

(assert (=> d!936925 m!3672109))

(assert (=> b!3330418 m!3672003))

(declare-fun m!3672111 () Bool)

(assert (=> b!3330418 m!3672111))

(declare-fun m!3672113 () Bool)

(assert (=> b!3330419 m!3672113))

(declare-fun m!3672115 () Bool)

(assert (=> b!3330419 m!3672115))

(assert (=> b!3330419 m!3672003))

(declare-fun m!3672117 () Bool)

(assert (=> b!3330419 m!3672117))

(assert (=> b!3330373 d!936925))

(declare-fun d!936937 () Bool)

(assert (=> d!936937 (= (list!13219 (charsOf!3350 separatorToken!241)) (list!13222 (c!565595 (charsOf!3350 separatorToken!241))))))

(declare-fun bs!551308 () Bool)

(assert (= bs!551308 d!936937))

(declare-fun m!3672119 () Bool)

(assert (=> bs!551308 m!3672119))

(assert (=> b!3330373 d!936937))

(declare-fun lt!1132051 () BalanceConc!21708)

(declare-fun d!936939 () Bool)

(declare-fun printWithSeparatorTokenList!229 (LexerInterface!4925 List!36813 Token!10038) List!36811)

(declare-fun list!13223 (BalanceConc!21710) List!36813)

(assert (=> d!936939 (= (list!13219 lt!1132051) (printWithSeparatorTokenList!229 thiss!18206 (list!13223 lt!1132040) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!45 (LexerInterface!4925 BalanceConc!21710 Token!10038 Int BalanceConc!21708) BalanceConc!21708)

(assert (=> d!936939 (= lt!1132051 (printWithSeparatorTokenTailRec!45 thiss!18206 lt!1132040 separatorToken!241 0 (BalanceConc!21709 Empty!11047)))))

(assert (=> d!936939 (isSeparator!5336 (rule!7860 separatorToken!241))))

(assert (=> d!936939 (= (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241) lt!1132051)))

(declare-fun bs!551309 () Bool)

(assert (= bs!551309 d!936939))

(declare-fun m!3672121 () Bool)

(assert (=> bs!551309 m!3672121))

(declare-fun m!3672123 () Bool)

(assert (=> bs!551309 m!3672123))

(assert (=> bs!551309 m!3672123))

(declare-fun m!3672125 () Bool)

(assert (=> bs!551309 m!3672125))

(declare-fun m!3672127 () Bool)

(assert (=> bs!551309 m!3672127))

(assert (=> b!3330373 d!936939))

(declare-fun d!936941 () Bool)

(declare-fun lt!1132054 () BalanceConc!21708)

(assert (=> d!936941 (= (list!13219 lt!1132054) (originalCharacters!6050 separatorToken!241))))

(declare-fun dynLambda!15146 (Int TokenValue!5566) BalanceConc!21708)

(assert (=> d!936941 (= lt!1132054 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))))

(assert (=> d!936941 (= (charsOf!3350 separatorToken!241) lt!1132054)))

(declare-fun b_lambda!94087 () Bool)

(assert (=> (not b_lambda!94087) (not d!936941)))

(declare-fun t!257184 () Bool)

(declare-fun tb!174547 () Bool)

(assert (=> (and b!3330369 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) t!257184) tb!174547))

(declare-fun b!3330425 () Bool)

(declare-fun e!2071118 () Bool)

(declare-fun tp!1040861 () Bool)

(declare-fun inv!49706 (Conc!11047) Bool)

(assert (=> b!3330425 (= e!2071118 (and (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))) tp!1040861))))

(declare-fun result!217678 () Bool)

(declare-fun inv!49707 (BalanceConc!21708) Bool)

(assert (=> tb!174547 (= result!217678 (and (inv!49707 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))) e!2071118))))

(assert (= tb!174547 b!3330425))

(declare-fun m!3672129 () Bool)

(assert (=> b!3330425 m!3672129))

(declare-fun m!3672131 () Bool)

(assert (=> tb!174547 m!3672131))

(assert (=> d!936941 t!257184))

(declare-fun b_and!229719 () Bool)

(assert (= b_and!229697 (and (=> t!257184 result!217678) b_and!229719)))

(declare-fun t!257186 () Bool)

(declare-fun tb!174549 () Bool)

(assert (=> (and b!3330365 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) t!257186) tb!174549))

(declare-fun result!217682 () Bool)

(assert (= result!217682 result!217678))

(assert (=> d!936941 t!257186))

(declare-fun b_and!229721 () Bool)

(assert (= b_and!229701 (and (=> t!257186 result!217682) b_and!229721)))

(declare-fun tb!174551 () Bool)

(declare-fun t!257188 () Bool)

(assert (=> (and b!3330357 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) t!257188) tb!174551))

(declare-fun result!217684 () Bool)

(assert (= result!217684 result!217678))

(assert (=> d!936941 t!257188))

(declare-fun b_and!229723 () Bool)

(assert (= b_and!229705 (and (=> t!257188 result!217684) b_and!229723)))

(declare-fun m!3672133 () Bool)

(assert (=> d!936941 m!3672133))

(declare-fun m!3672135 () Bool)

(assert (=> d!936941 m!3672135))

(assert (=> b!3330373 d!936941))

(declare-fun d!936943 () Bool)

(assert (=> d!936943 (= (inv!49699 (tag!5888 (rule!7860 (h!42109 tokens!494)))) (= (mod (str.len (value!172535 (tag!5888 (rule!7860 (h!42109 tokens!494))))) 2) 0))))

(assert (=> b!3330362 d!936943))

(declare-fun d!936945 () Bool)

(declare-fun res!1350813 () Bool)

(declare-fun e!2071121 () Bool)

(assert (=> d!936945 (=> (not res!1350813) (not e!2071121))))

(declare-fun semiInverseModEq!2217 (Int Int) Bool)

(assert (=> d!936945 (= res!1350813 (semiInverseModEq!2217 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494))))))))

(assert (=> d!936945 (= (inv!49702 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) e!2071121)))

(declare-fun b!3330428 () Bool)

(declare-fun equivClasses!2116 (Int Int) Bool)

(assert (=> b!3330428 (= e!2071121 (equivClasses!2116 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494))))))))

(assert (= (and d!936945 res!1350813) b!3330428))

(declare-fun m!3672137 () Bool)

(assert (=> d!936945 m!3672137))

(declare-fun m!3672139 () Bool)

(assert (=> b!3330428 m!3672139))

(assert (=> b!3330362 d!936945))

(declare-fun d!936947 () Bool)

(assert (=> d!936947 (= (list!13219 lt!1132035) (list!13222 (c!565595 lt!1132035)))))

(declare-fun bs!551310 () Bool)

(assert (= bs!551310 d!936947))

(declare-fun m!3672141 () Bool)

(assert (=> bs!551310 m!3672141))

(assert (=> b!3330363 d!936947))

(declare-fun d!936949 () Bool)

(declare-fun lt!1132085 () BalanceConc!21708)

(declare-fun printListTailRec!621 (LexerInterface!4925 List!36813 List!36811) List!36811)

(declare-fun dropList!1138 (BalanceConc!21710 Int) List!36813)

(assert (=> d!936949 (= (list!13219 lt!1132085) (printListTailRec!621 thiss!18206 (dropList!1138 lt!1132033 0) (list!13219 (BalanceConc!21709 Empty!11047))))))

(declare-fun e!2071135 () BalanceConc!21708)

(assert (=> d!936949 (= lt!1132085 e!2071135)))

(declare-fun c!565611 () Bool)

(declare-fun size!27743 (BalanceConc!21710) Int)

(assert (=> d!936949 (= c!565611 (>= 0 (size!27743 lt!1132033)))))

(declare-fun e!2071136 () Bool)

(assert (=> d!936949 e!2071136))

(declare-fun res!1350825 () Bool)

(assert (=> d!936949 (=> (not res!1350825) (not e!2071136))))

(assert (=> d!936949 (= res!1350825 (>= 0 0))))

(assert (=> d!936949 (= (printTailRec!1420 thiss!18206 lt!1132033 0 (BalanceConc!21709 Empty!11047)) lt!1132085)))

(declare-fun b!3330450 () Bool)

(assert (=> b!3330450 (= e!2071136 (<= 0 (size!27743 lt!1132033)))))

(declare-fun b!3330451 () Bool)

(assert (=> b!3330451 (= e!2071135 (BalanceConc!21709 Empty!11047))))

(declare-fun b!3330452 () Bool)

(declare-fun ++!8926 (BalanceConc!21708 BalanceConc!21708) BalanceConc!21708)

(declare-fun apply!8478 (BalanceConc!21710 Int) Token!10038)

(assert (=> b!3330452 (= e!2071135 (printTailRec!1420 thiss!18206 lt!1132033 (+ 0 1) (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (apply!8478 lt!1132033 0)))))))

(declare-fun lt!1132082 () List!36813)

(assert (=> b!3330452 (= lt!1132082 (list!13223 lt!1132033))))

(declare-fun lt!1132087 () Unit!51698)

(declare-fun lemmaDropApply!1096 (List!36813 Int) Unit!51698)

(assert (=> b!3330452 (= lt!1132087 (lemmaDropApply!1096 lt!1132082 0))))

(declare-fun head!7164 (List!36813) Token!10038)

(declare-fun drop!1930 (List!36813 Int) List!36813)

(declare-fun apply!8479 (List!36813 Int) Token!10038)

(assert (=> b!3330452 (= (head!7164 (drop!1930 lt!1132082 0)) (apply!8479 lt!1132082 0))))

(declare-fun lt!1132084 () Unit!51698)

(assert (=> b!3330452 (= lt!1132084 lt!1132087)))

(declare-fun lt!1132083 () List!36813)

(assert (=> b!3330452 (= lt!1132083 (list!13223 lt!1132033))))

(declare-fun lt!1132086 () Unit!51698)

(declare-fun lemmaDropTail!980 (List!36813 Int) Unit!51698)

(assert (=> b!3330452 (= lt!1132086 (lemmaDropTail!980 lt!1132083 0))))

(declare-fun tail!5303 (List!36813) List!36813)

(assert (=> b!3330452 (= (tail!5303 (drop!1930 lt!1132083 0)) (drop!1930 lt!1132083 (+ 0 1)))))

(declare-fun lt!1132081 () Unit!51698)

(assert (=> b!3330452 (= lt!1132081 lt!1132086)))

(assert (= (and d!936949 res!1350825) b!3330450))

(assert (= (and d!936949 c!565611) b!3330451))

(assert (= (and d!936949 (not c!565611)) b!3330452))

(declare-fun m!3672171 () Bool)

(assert (=> d!936949 m!3672171))

(declare-fun m!3672173 () Bool)

(assert (=> d!936949 m!3672173))

(assert (=> d!936949 m!3672171))

(declare-fun m!3672175 () Bool)

(assert (=> d!936949 m!3672175))

(declare-fun m!3672177 () Bool)

(assert (=> d!936949 m!3672177))

(declare-fun m!3672179 () Bool)

(assert (=> d!936949 m!3672179))

(assert (=> d!936949 m!3672173))

(assert (=> b!3330450 m!3672177))

(declare-fun m!3672181 () Bool)

(assert (=> b!3330452 m!3672181))

(declare-fun m!3672183 () Bool)

(assert (=> b!3330452 m!3672183))

(declare-fun m!3672185 () Bool)

(assert (=> b!3330452 m!3672185))

(declare-fun m!3672187 () Bool)

(assert (=> b!3330452 m!3672187))

(declare-fun m!3672189 () Bool)

(assert (=> b!3330452 m!3672189))

(declare-fun m!3672191 () Bool)

(assert (=> b!3330452 m!3672191))

(declare-fun m!3672193 () Bool)

(assert (=> b!3330452 m!3672193))

(declare-fun m!3672195 () Bool)

(assert (=> b!3330452 m!3672195))

(declare-fun m!3672197 () Bool)

(assert (=> b!3330452 m!3672197))

(assert (=> b!3330452 m!3672191))

(declare-fun m!3672199 () Bool)

(assert (=> b!3330452 m!3672199))

(assert (=> b!3330452 m!3672185))

(assert (=> b!3330452 m!3672181))

(assert (=> b!3330452 m!3672189))

(declare-fun m!3672201 () Bool)

(assert (=> b!3330452 m!3672201))

(declare-fun m!3672203 () Bool)

(assert (=> b!3330452 m!3672203))

(assert (=> b!3330452 m!3672195))

(declare-fun m!3672205 () Bool)

(assert (=> b!3330452 m!3672205))

(assert (=> b!3330363 d!936949))

(declare-fun d!936961 () Bool)

(declare-fun lt!1132090 () BalanceConc!21708)

(assert (=> d!936961 (= (list!13219 lt!1132090) (printList!1473 thiss!18206 (list!13223 lt!1132033)))))

(assert (=> d!936961 (= lt!1132090 (printTailRec!1420 thiss!18206 lt!1132033 0 (BalanceConc!21709 Empty!11047)))))

(assert (=> d!936961 (= (print!1990 thiss!18206 lt!1132033) lt!1132090)))

(declare-fun bs!551313 () Bool)

(assert (= bs!551313 d!936961))

(declare-fun m!3672207 () Bool)

(assert (=> bs!551313 m!3672207))

(assert (=> bs!551313 m!3672183))

(assert (=> bs!551313 m!3672183))

(declare-fun m!3672209 () Bool)

(assert (=> bs!551313 m!3672209))

(assert (=> bs!551313 m!3672049))

(assert (=> b!3330363 d!936961))

(declare-fun d!936963 () Bool)

(declare-fun e!2071139 () Bool)

(assert (=> d!936963 e!2071139))

(declare-fun res!1350828 () Bool)

(assert (=> d!936963 (=> (not res!1350828) (not e!2071139))))

(declare-fun lt!1132093 () BalanceConc!21710)

(assert (=> d!936963 (= res!1350828 (= (list!13223 lt!1132093) (Cons!36689 (h!42109 tokens!494) Nil!36689)))))

(declare-fun singleton!1053 (Token!10038) BalanceConc!21710)

(assert (=> d!936963 (= lt!1132093 (singleton!1053 (h!42109 tokens!494)))))

(assert (=> d!936963 (= (singletonSeq!2432 (h!42109 tokens!494)) lt!1132093)))

(declare-fun b!3330455 () Bool)

(declare-fun isBalanced!3318 (Conc!11048) Bool)

(assert (=> b!3330455 (= e!2071139 (isBalanced!3318 (c!565596 lt!1132093)))))

(assert (= (and d!936963 res!1350828) b!3330455))

(declare-fun m!3672211 () Bool)

(assert (=> d!936963 m!3672211))

(declare-fun m!3672213 () Bool)

(assert (=> d!936963 m!3672213))

(declare-fun m!3672215 () Bool)

(assert (=> b!3330455 m!3672215))

(assert (=> b!3330363 d!936963))

(declare-fun d!936965 () Bool)

(declare-fun c!565614 () Bool)

(assert (=> d!936965 (= c!565614 ((_ is Cons!36689) (Cons!36689 (h!42109 tokens!494) Nil!36689)))))

(declare-fun e!2071142 () List!36811)

(assert (=> d!936965 (= (printList!1473 thiss!18206 (Cons!36689 (h!42109 tokens!494) Nil!36689)) e!2071142)))

(declare-fun b!3330460 () Bool)

(assert (=> b!3330460 (= e!2071142 (++!8925 (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))) (printList!1473 thiss!18206 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))))

(declare-fun b!3330461 () Bool)

(assert (=> b!3330461 (= e!2071142 Nil!36687)))

(assert (= (and d!936965 c!565614) b!3330460))

(assert (= (and d!936965 (not c!565614)) b!3330461))

(declare-fun m!3672217 () Bool)

(assert (=> b!3330460 m!3672217))

(assert (=> b!3330460 m!3672217))

(declare-fun m!3672219 () Bool)

(assert (=> b!3330460 m!3672219))

(declare-fun m!3672221 () Bool)

(assert (=> b!3330460 m!3672221))

(assert (=> b!3330460 m!3672219))

(assert (=> b!3330460 m!3672221))

(declare-fun m!3672223 () Bool)

(assert (=> b!3330460 m!3672223))

(assert (=> b!3330363 d!936965))

(declare-fun d!936967 () Bool)

(assert (=> d!936967 (= (inv!49699 (tag!5888 (h!42108 rules!2135))) (= (mod (str.len (value!172535 (tag!5888 (h!42108 rules!2135)))) 2) 0))))

(assert (=> b!3330352 d!936967))

(declare-fun d!936969 () Bool)

(declare-fun res!1350829 () Bool)

(declare-fun e!2071143 () Bool)

(assert (=> d!936969 (=> (not res!1350829) (not e!2071143))))

(assert (=> d!936969 (= res!1350829 (semiInverseModEq!2217 (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toValue!7504 (transformation!5336 (h!42108 rules!2135)))))))

(assert (=> d!936969 (= (inv!49702 (transformation!5336 (h!42108 rules!2135))) e!2071143)))

(declare-fun b!3330462 () Bool)

(assert (=> b!3330462 (= e!2071143 (equivClasses!2116 (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toValue!7504 (transformation!5336 (h!42108 rules!2135)))))))

(assert (= (and d!936969 res!1350829) b!3330462))

(declare-fun m!3672225 () Bool)

(assert (=> d!936969 m!3672225))

(declare-fun m!3672227 () Bool)

(assert (=> b!3330462 m!3672227))

(assert (=> b!3330352 d!936969))

(declare-fun d!936971 () Bool)

(declare-fun dynLambda!15147 (Int Token!10038) Bool)

(assert (=> d!936971 (dynLambda!15147 lambda!119825 (h!42109 tokens!494))))

(declare-fun lt!1132096 () Unit!51698)

(declare-fun choose!19302 (List!36813 Int Token!10038) Unit!51698)

(assert (=> d!936971 (= lt!1132096 (choose!19302 tokens!494 lambda!119825 (h!42109 tokens!494)))))

(declare-fun e!2071146 () Bool)

(assert (=> d!936971 e!2071146))

(declare-fun res!1350832 () Bool)

(assert (=> d!936971 (=> (not res!1350832) (not e!2071146))))

(assert (=> d!936971 (= res!1350832 (forall!7665 tokens!494 lambda!119825))))

(assert (=> d!936971 (= (forallContained!1283 tokens!494 lambda!119825 (h!42109 tokens!494)) lt!1132096)))

(declare-fun b!3330465 () Bool)

(declare-fun contains!6656 (List!36813 Token!10038) Bool)

(assert (=> b!3330465 (= e!2071146 (contains!6656 tokens!494 (h!42109 tokens!494)))))

(assert (= (and d!936971 res!1350832) b!3330465))

(declare-fun b_lambda!94089 () Bool)

(assert (=> (not b_lambda!94089) (not d!936971)))

(declare-fun m!3672229 () Bool)

(assert (=> d!936971 m!3672229))

(declare-fun m!3672231 () Bool)

(assert (=> d!936971 m!3672231))

(assert (=> d!936971 m!3671997))

(declare-fun m!3672233 () Bool)

(assert (=> b!3330465 m!3672233))

(assert (=> b!3330361 d!936971))

(declare-fun b!3330476 () Bool)

(declare-fun e!2071154 () Bool)

(declare-fun inv!16 (TokenValue!5566) Bool)

(assert (=> b!3330476 (= e!2071154 (inv!16 (value!172536 (h!42109 tokens!494))))))

(declare-fun b!3330477 () Bool)

(declare-fun e!2071155 () Bool)

(declare-fun inv!17 (TokenValue!5566) Bool)

(assert (=> b!3330477 (= e!2071155 (inv!17 (value!172536 (h!42109 tokens!494))))))

(declare-fun b!3330478 () Bool)

(declare-fun res!1350835 () Bool)

(declare-fun e!2071153 () Bool)

(assert (=> b!3330478 (=> res!1350835 e!2071153)))

(assert (=> b!3330478 (= res!1350835 (not ((_ is IntegerValue!16700) (value!172536 (h!42109 tokens!494)))))))

(assert (=> b!3330478 (= e!2071155 e!2071153)))

(declare-fun d!936973 () Bool)

(declare-fun c!565619 () Bool)

(assert (=> d!936973 (= c!565619 ((_ is IntegerValue!16698) (value!172536 (h!42109 tokens!494))))))

(assert (=> d!936973 (= (inv!21 (value!172536 (h!42109 tokens!494))) e!2071154)))

(declare-fun b!3330479 () Bool)

(declare-fun inv!15 (TokenValue!5566) Bool)

(assert (=> b!3330479 (= e!2071153 (inv!15 (value!172536 (h!42109 tokens!494))))))

(declare-fun b!3330480 () Bool)

(assert (=> b!3330480 (= e!2071154 e!2071155)))

(declare-fun c!565620 () Bool)

(assert (=> b!3330480 (= c!565620 ((_ is IntegerValue!16699) (value!172536 (h!42109 tokens!494))))))

(assert (= (and d!936973 c!565619) b!3330476))

(assert (= (and d!936973 (not c!565619)) b!3330480))

(assert (= (and b!3330480 c!565620) b!3330477))

(assert (= (and b!3330480 (not c!565620)) b!3330478))

(assert (= (and b!3330478 (not res!1350835)) b!3330479))

(declare-fun m!3672235 () Bool)

(assert (=> b!3330476 m!3672235))

(declare-fun m!3672237 () Bool)

(assert (=> b!3330477 m!3672237))

(declare-fun m!3672239 () Bool)

(assert (=> b!3330479 m!3672239))

(assert (=> b!3330350 d!936973))

(declare-fun d!936975 () Bool)

(declare-fun res!1350840 () Bool)

(declare-fun e!2071160 () Bool)

(assert (=> d!936975 (=> res!1350840 e!2071160)))

(assert (=> d!936975 (= res!1350840 ((_ is Nil!36689) tokens!494))))

(assert (=> d!936975 (= (forall!7665 tokens!494 lambda!119825) e!2071160)))

(declare-fun b!3330485 () Bool)

(declare-fun e!2071161 () Bool)

(assert (=> b!3330485 (= e!2071160 e!2071161)))

(declare-fun res!1350841 () Bool)

(assert (=> b!3330485 (=> (not res!1350841) (not e!2071161))))

(assert (=> b!3330485 (= res!1350841 (dynLambda!15147 lambda!119825 (h!42109 tokens!494)))))

(declare-fun b!3330486 () Bool)

(assert (=> b!3330486 (= e!2071161 (forall!7665 (t!257170 tokens!494) lambda!119825))))

(assert (= (and d!936975 (not res!1350840)) b!3330485))

(assert (= (and b!3330485 res!1350841) b!3330486))

(declare-fun b_lambda!94091 () Bool)

(assert (=> (not b_lambda!94091) (not b!3330485)))

(assert (=> b!3330485 m!3672229))

(declare-fun m!3672243 () Bool)

(assert (=> b!3330486 m!3672243))

(assert (=> b!3330351 d!936975))

(declare-fun d!936979 () Bool)

(assert (=> d!936979 (= (isEmpty!20857 rules!2135) ((_ is Nil!36688) rules!2135))))

(assert (=> b!3330372 d!936979))

(declare-fun d!936981 () Bool)

(declare-fun lt!1132125 () Bool)

(declare-fun e!2071188 () Bool)

(assert (=> d!936981 (= lt!1132125 e!2071188)))

(declare-fun res!1350883 () Bool)

(assert (=> d!936981 (=> (not res!1350883) (not e!2071188))))

(assert (=> d!936981 (= res!1350883 (= (list!13223 (_1!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241))))) (list!13223 (singletonSeq!2432 separatorToken!241))))))

(declare-fun e!2071187 () Bool)

(assert (=> d!936981 (= lt!1132125 e!2071187)))

(declare-fun res!1350884 () Bool)

(assert (=> d!936981 (=> (not res!1350884) (not e!2071187))))

(declare-fun lt!1132124 () tuple2!36202)

(assert (=> d!936981 (= res!1350884 (= (size!27743 (_1!21235 lt!1132124)) 1))))

(assert (=> d!936981 (= lt!1132124 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241))))))

(assert (=> d!936981 (not (isEmpty!20857 rules!2135))))

(assert (=> d!936981 (= (rulesProduceIndividualToken!2417 thiss!18206 rules!2135 separatorToken!241) lt!1132125)))

(declare-fun b!3330533 () Bool)

(declare-fun res!1350882 () Bool)

(assert (=> b!3330533 (=> (not res!1350882) (not e!2071187))))

(assert (=> b!3330533 (= res!1350882 (= (apply!8478 (_1!21235 lt!1132124) 0) separatorToken!241))))

(declare-fun b!3330534 () Bool)

(declare-fun isEmpty!20862 (BalanceConc!21708) Bool)

(assert (=> b!3330534 (= e!2071187 (isEmpty!20862 (_2!21235 lt!1132124)))))

(declare-fun b!3330535 () Bool)

(assert (=> b!3330535 (= e!2071188 (isEmpty!20862 (_2!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241))))))))

(assert (= (and d!936981 res!1350884) b!3330533))

(assert (= (and b!3330533 res!1350882) b!3330534))

(assert (= (and d!936981 res!1350883) b!3330535))

(declare-fun m!3672307 () Bool)

(assert (=> d!936981 m!3672307))

(declare-fun m!3672309 () Bool)

(assert (=> d!936981 m!3672309))

(declare-fun m!3672311 () Bool)

(assert (=> d!936981 m!3672311))

(declare-fun m!3672313 () Bool)

(assert (=> d!936981 m!3672313))

(assert (=> d!936981 m!3672307))

(assert (=> d!936981 m!3672309))

(declare-fun m!3672315 () Bool)

(assert (=> d!936981 m!3672315))

(assert (=> d!936981 m!3672307))

(declare-fun m!3672317 () Bool)

(assert (=> d!936981 m!3672317))

(assert (=> d!936981 m!3671987))

(declare-fun m!3672319 () Bool)

(assert (=> b!3330533 m!3672319))

(declare-fun m!3672321 () Bool)

(assert (=> b!3330534 m!3672321))

(assert (=> b!3330535 m!3672307))

(assert (=> b!3330535 m!3672307))

(assert (=> b!3330535 m!3672309))

(assert (=> b!3330535 m!3672309))

(assert (=> b!3330535 m!3672315))

(declare-fun m!3672323 () Bool)

(assert (=> b!3330535 m!3672323))

(assert (=> b!3330349 d!936981))

(declare-fun d!936995 () Bool)

(assert (=> d!936995 (= (inv!49699 (tag!5888 (rule!7860 separatorToken!241))) (= (mod (str.len (value!172535 (tag!5888 (rule!7860 separatorToken!241)))) 2) 0))))

(assert (=> b!3330370 d!936995))

(declare-fun d!936997 () Bool)

(declare-fun res!1350885 () Bool)

(declare-fun e!2071189 () Bool)

(assert (=> d!936997 (=> (not res!1350885) (not e!2071189))))

(assert (=> d!936997 (= res!1350885 (semiInverseModEq!2217 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241)))))))

(assert (=> d!936997 (= (inv!49702 (transformation!5336 (rule!7860 separatorToken!241))) e!2071189)))

(declare-fun b!3330536 () Bool)

(assert (=> b!3330536 (= e!2071189 (equivClasses!2116 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241)))))))

(assert (= (and d!936997 res!1350885) b!3330536))

(declare-fun m!3672325 () Bool)

(assert (=> d!936997 m!3672325))

(declare-fun m!3672327 () Bool)

(assert (=> b!3330536 m!3672327))

(assert (=> b!3330370 d!936997))

(declare-fun d!936999 () Bool)

(declare-fun res!1350890 () Bool)

(declare-fun e!2071192 () Bool)

(assert (=> d!936999 (=> (not res!1350890) (not e!2071192))))

(assert (=> d!936999 (= res!1350890 (not (isEmpty!20855 (originalCharacters!6050 (h!42109 tokens!494)))))))

(assert (=> d!936999 (= (inv!49703 (h!42109 tokens!494)) e!2071192)))

(declare-fun b!3330541 () Bool)

(declare-fun res!1350891 () Bool)

(assert (=> b!3330541 (=> (not res!1350891) (not e!2071192))))

(assert (=> b!3330541 (= res!1350891 (= (originalCharacters!6050 (h!42109 tokens!494)) (list!13219 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))))))

(declare-fun b!3330542 () Bool)

(assert (=> b!3330542 (= e!2071192 (= (size!27739 (h!42109 tokens!494)) (size!27742 (originalCharacters!6050 (h!42109 tokens!494)))))))

(assert (= (and d!936999 res!1350890) b!3330541))

(assert (= (and b!3330541 res!1350891) b!3330542))

(declare-fun b_lambda!94097 () Bool)

(assert (=> (not b_lambda!94097) (not b!3330541)))

(declare-fun tb!174553 () Bool)

(declare-fun t!257194 () Bool)

(assert (=> (and b!3330369 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) t!257194) tb!174553))

(declare-fun b!3330543 () Bool)

(declare-fun e!2071193 () Bool)

(declare-fun tp!1040862 () Bool)

(assert (=> b!3330543 (= e!2071193 (and (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))) tp!1040862))))

(declare-fun result!217686 () Bool)

(assert (=> tb!174553 (= result!217686 (and (inv!49707 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))) e!2071193))))

(assert (= tb!174553 b!3330543))

(declare-fun m!3672329 () Bool)

(assert (=> b!3330543 m!3672329))

(declare-fun m!3672331 () Bool)

(assert (=> tb!174553 m!3672331))

(assert (=> b!3330541 t!257194))

(declare-fun b_and!229725 () Bool)

(assert (= b_and!229719 (and (=> t!257194 result!217686) b_and!229725)))

(declare-fun t!257196 () Bool)

(declare-fun tb!174555 () Bool)

(assert (=> (and b!3330365 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) t!257196) tb!174555))

(declare-fun result!217688 () Bool)

(assert (= result!217688 result!217686))

(assert (=> b!3330541 t!257196))

(declare-fun b_and!229727 () Bool)

(assert (= b_and!229721 (and (=> t!257196 result!217688) b_and!229727)))

(declare-fun t!257198 () Bool)

(declare-fun tb!174557 () Bool)

(assert (=> (and b!3330357 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) t!257198) tb!174557))

(declare-fun result!217690 () Bool)

(assert (= result!217690 result!217686))

(assert (=> b!3330541 t!257198))

(declare-fun b_and!229729 () Bool)

(assert (= b_and!229723 (and (=> t!257198 result!217690) b_and!229729)))

(declare-fun m!3672333 () Bool)

(assert (=> d!936999 m!3672333))

(declare-fun m!3672335 () Bool)

(assert (=> b!3330541 m!3672335))

(assert (=> b!3330541 m!3672335))

(declare-fun m!3672337 () Bool)

(assert (=> b!3330541 m!3672337))

(declare-fun m!3672339 () Bool)

(assert (=> b!3330542 m!3672339))

(assert (=> b!3330371 d!936999))

(declare-fun d!937001 () Bool)

(declare-fun res!1350894 () Bool)

(declare-fun e!2071196 () Bool)

(assert (=> d!937001 (=> (not res!1350894) (not e!2071196))))

(declare-fun rulesValid!1977 (LexerInterface!4925 List!36812) Bool)

(assert (=> d!937001 (= res!1350894 (rulesValid!1977 thiss!18206 rules!2135))))

(assert (=> d!937001 (= (rulesInvariant!4322 thiss!18206 rules!2135) e!2071196)))

(declare-fun b!3330546 () Bool)

(declare-datatypes ((List!36815 0))(
  ( (Nil!36691) (Cons!36691 (h!42111 String!41164) (t!257226 List!36815)) )
))
(declare-fun noDuplicateTag!1973 (LexerInterface!4925 List!36812 List!36815) Bool)

(assert (=> b!3330546 (= e!2071196 (noDuplicateTag!1973 thiss!18206 rules!2135 Nil!36691))))

(assert (= (and d!937001 res!1350894) b!3330546))

(declare-fun m!3672341 () Bool)

(assert (=> d!937001 m!3672341))

(declare-fun m!3672343 () Bool)

(assert (=> b!3330546 m!3672343))

(assert (=> b!3330358 d!937001))

(declare-fun d!937003 () Bool)

(declare-fun lt!1132128 () List!36811)

(assert (=> d!937003 (= (++!8925 lt!1132041 lt!1132128) lt!1132041)))

(declare-fun e!2071199 () List!36811)

(assert (=> d!937003 (= lt!1132128 e!2071199)))

(declare-fun c!565626 () Bool)

(assert (=> d!937003 (= c!565626 ((_ is Cons!36687) lt!1132041))))

(assert (=> d!937003 (>= (size!27742 lt!1132041) (size!27742 lt!1132041))))

(assert (=> d!937003 (= (getSuffix!1430 lt!1132041 lt!1132041) lt!1132128)))

(declare-fun b!3330551 () Bool)

(declare-fun tail!5305 (List!36811) List!36811)

(assert (=> b!3330551 (= e!2071199 (getSuffix!1430 (tail!5305 lt!1132041) (t!257168 lt!1132041)))))

(declare-fun b!3330552 () Bool)

(assert (=> b!3330552 (= e!2071199 lt!1132041)))

(assert (= (and d!937003 c!565626) b!3330551))

(assert (= (and d!937003 (not c!565626)) b!3330552))

(declare-fun m!3672345 () Bool)

(assert (=> d!937003 m!3672345))

(assert (=> d!937003 m!3672115))

(assert (=> d!937003 m!3672115))

(declare-fun m!3672347 () Bool)

(assert (=> b!3330551 m!3672347))

(assert (=> b!3330551 m!3672347))

(declare-fun m!3672349 () Bool)

(assert (=> b!3330551 m!3672349))

(assert (=> b!3330359 d!937003))

(declare-fun d!937005 () Bool)

(assert (=> d!937005 (isEmpty!20855 (getSuffix!1430 lt!1132041 lt!1132041))))

(declare-fun lt!1132131 () Unit!51698)

(declare-fun choose!19303 (List!36811) Unit!51698)

(assert (=> d!937005 (= lt!1132131 (choose!19303 lt!1132041))))

(assert (=> d!937005 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!88 lt!1132041) lt!1132131)))

(declare-fun bs!551315 () Bool)

(assert (= bs!551315 d!937005))

(assert (=> bs!551315 m!3672013))

(assert (=> bs!551315 m!3672013))

(assert (=> bs!551315 m!3672017))

(declare-fun m!3672351 () Bool)

(assert (=> bs!551315 m!3672351))

(assert (=> b!3330359 d!937005))

(declare-fun d!937007 () Bool)

(declare-fun isEmpty!20863 (Option!7320) Bool)

(assert (=> d!937007 (= (isDefined!5662 lt!1132039) (not (isEmpty!20863 lt!1132039)))))

(declare-fun bs!551316 () Bool)

(assert (= bs!551316 d!937007))

(declare-fun m!3672353 () Bool)

(assert (=> bs!551316 m!3672353))

(assert (=> b!3330359 d!937007))

(declare-fun d!937009 () Bool)

(assert (=> d!937009 (= (isEmpty!20855 (getSuffix!1430 lt!1132041 lt!1132041)) ((_ is Nil!36687) (getSuffix!1430 lt!1132041 lt!1132041)))))

(assert (=> b!3330359 d!937009))

(declare-fun b!3330571 () Bool)

(declare-fun res!1350915 () Bool)

(declare-fun e!2071206 () Bool)

(assert (=> b!3330571 (=> (not res!1350915) (not e!2071206))))

(declare-fun lt!1132145 () Option!7320)

(declare-fun matchR!4687 (Regex!10095 List!36811) Bool)

(assert (=> b!3330571 (= res!1350915 (matchR!4687 (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))) (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))))))

(declare-fun b!3330572 () Bool)

(declare-fun res!1350912 () Bool)

(assert (=> b!3330572 (=> (not res!1350912) (not e!2071206))))

(assert (=> b!3330572 (= res!1350912 (= (++!8925 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145)))) (_2!21234 (get!11687 lt!1132145))) lt!1132041))))

(declare-fun b!3330573 () Bool)

(declare-fun res!1350909 () Bool)

(assert (=> b!3330573 (=> (not res!1350909) (not e!2071206))))

(assert (=> b!3330573 (= res!1350909 (< (size!27742 (_2!21234 (get!11687 lt!1132145))) (size!27742 lt!1132041)))))

(declare-fun b!3330574 () Bool)

(declare-fun res!1350913 () Bool)

(assert (=> b!3330574 (=> (not res!1350913) (not e!2071206))))

(assert (=> b!3330574 (= res!1350913 (= (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145)))) (originalCharacters!6050 (_1!21234 (get!11687 lt!1132145)))))))

(declare-fun b!3330575 () Bool)

(declare-fun res!1350911 () Bool)

(assert (=> b!3330575 (=> (not res!1350911) (not e!2071206))))

(declare-fun apply!8481 (TokenValueInjection!10560 BalanceConc!21708) TokenValue!5566)

(assert (=> b!3330575 (= res!1350911 (= (value!172536 (_1!21234 (get!11687 lt!1132145))) (apply!8481 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))) (seqFromList!3725 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132145)))))))))

(declare-fun d!937011 () Bool)

(declare-fun e!2071208 () Bool)

(assert (=> d!937011 e!2071208))

(declare-fun res!1350910 () Bool)

(assert (=> d!937011 (=> res!1350910 e!2071208)))

(assert (=> d!937011 (= res!1350910 (isEmpty!20863 lt!1132145))))

(declare-fun e!2071207 () Option!7320)

(assert (=> d!937011 (= lt!1132145 e!2071207)))

(declare-fun c!565629 () Bool)

(assert (=> d!937011 (= c!565629 (and ((_ is Cons!36688) rules!2135) ((_ is Nil!36688) (t!257169 rules!2135))))))

(declare-fun lt!1132148 () Unit!51698)

(declare-fun lt!1132146 () Unit!51698)

(assert (=> d!937011 (= lt!1132148 lt!1132146)))

(declare-fun isPrefix!2816 (List!36811 List!36811) Bool)

(assert (=> d!937011 (isPrefix!2816 lt!1132041 lt!1132041)))

(declare-fun lemmaIsPrefixRefl!1775 (List!36811 List!36811) Unit!51698)

(assert (=> d!937011 (= lt!1132146 (lemmaIsPrefixRefl!1775 lt!1132041 lt!1132041))))

(declare-fun rulesValidInductive!1823 (LexerInterface!4925 List!36812) Bool)

(assert (=> d!937011 (rulesValidInductive!1823 thiss!18206 rules!2135)))

(assert (=> d!937011 (= (maxPrefix!2525 thiss!18206 rules!2135 lt!1132041) lt!1132145)))

(declare-fun bm!241407 () Bool)

(declare-fun call!241412 () Option!7320)

(declare-fun maxPrefixOneRule!1658 (LexerInterface!4925 Rule!10472 List!36811) Option!7320)

(assert (=> bm!241407 (= call!241412 (maxPrefixOneRule!1658 thiss!18206 (h!42108 rules!2135) lt!1132041))))

(declare-fun b!3330576 () Bool)

(assert (=> b!3330576 (= e!2071208 e!2071206)))

(declare-fun res!1350914 () Bool)

(assert (=> b!3330576 (=> (not res!1350914) (not e!2071206))))

(assert (=> b!3330576 (= res!1350914 (isDefined!5662 lt!1132145))))

(declare-fun b!3330577 () Bool)

(declare-fun lt!1132144 () Option!7320)

(declare-fun lt!1132147 () Option!7320)

(assert (=> b!3330577 (= e!2071207 (ite (and ((_ is None!7319) lt!1132144) ((_ is None!7319) lt!1132147)) None!7319 (ite ((_ is None!7319) lt!1132147) lt!1132144 (ite ((_ is None!7319) lt!1132144) lt!1132147 (ite (>= (size!27739 (_1!21234 (v!36227 lt!1132144))) (size!27739 (_1!21234 (v!36227 lt!1132147)))) lt!1132144 lt!1132147)))))))

(assert (=> b!3330577 (= lt!1132144 call!241412)))

(assert (=> b!3330577 (= lt!1132147 (maxPrefix!2525 thiss!18206 (t!257169 rules!2135) lt!1132041))))

(declare-fun b!3330578 () Bool)

(declare-fun contains!6657 (List!36812 Rule!10472) Bool)

(assert (=> b!3330578 (= e!2071206 (contains!6657 rules!2135 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))))

(declare-fun b!3330579 () Bool)

(assert (=> b!3330579 (= e!2071207 call!241412)))

(assert (= (and d!937011 c!565629) b!3330579))

(assert (= (and d!937011 (not c!565629)) b!3330577))

(assert (= (or b!3330579 b!3330577) bm!241407))

(assert (= (and d!937011 (not res!1350910)) b!3330576))

(assert (= (and b!3330576 res!1350914) b!3330574))

(assert (= (and b!3330574 res!1350913) b!3330573))

(assert (= (and b!3330573 res!1350909) b!3330572))

(assert (= (and b!3330572 res!1350912) b!3330575))

(assert (= (and b!3330575 res!1350911) b!3330571))

(assert (= (and b!3330571 res!1350915) b!3330578))

(declare-fun m!3672355 () Bool)

(assert (=> b!3330575 m!3672355))

(declare-fun m!3672357 () Bool)

(assert (=> b!3330575 m!3672357))

(assert (=> b!3330575 m!3672357))

(declare-fun m!3672359 () Bool)

(assert (=> b!3330575 m!3672359))

(assert (=> b!3330574 m!3672355))

(declare-fun m!3672361 () Bool)

(assert (=> b!3330574 m!3672361))

(assert (=> b!3330574 m!3672361))

(declare-fun m!3672363 () Bool)

(assert (=> b!3330574 m!3672363))

(declare-fun m!3672365 () Bool)

(assert (=> b!3330577 m!3672365))

(declare-fun m!3672367 () Bool)

(assert (=> bm!241407 m!3672367))

(assert (=> b!3330578 m!3672355))

(declare-fun m!3672369 () Bool)

(assert (=> b!3330578 m!3672369))

(declare-fun m!3672371 () Bool)

(assert (=> b!3330576 m!3672371))

(assert (=> b!3330572 m!3672355))

(assert (=> b!3330572 m!3672361))

(assert (=> b!3330572 m!3672361))

(assert (=> b!3330572 m!3672363))

(assert (=> b!3330572 m!3672363))

(declare-fun m!3672373 () Bool)

(assert (=> b!3330572 m!3672373))

(declare-fun m!3672375 () Bool)

(assert (=> d!937011 m!3672375))

(declare-fun m!3672377 () Bool)

(assert (=> d!937011 m!3672377))

(declare-fun m!3672379 () Bool)

(assert (=> d!937011 m!3672379))

(declare-fun m!3672381 () Bool)

(assert (=> d!937011 m!3672381))

(assert (=> b!3330571 m!3672355))

(assert (=> b!3330571 m!3672361))

(assert (=> b!3330571 m!3672361))

(assert (=> b!3330571 m!3672363))

(assert (=> b!3330571 m!3672363))

(declare-fun m!3672383 () Bool)

(assert (=> b!3330571 m!3672383))

(assert (=> b!3330573 m!3672355))

(declare-fun m!3672385 () Bool)

(assert (=> b!3330573 m!3672385))

(assert (=> b!3330573 m!3672115))

(assert (=> b!3330359 d!937011))

(declare-fun d!937013 () Bool)

(assert (=> d!937013 (rulesProduceIndividualToken!2417 thiss!18206 rules!2135 (h!42109 tokens!494))))

(declare-fun lt!1132151 () Unit!51698)

(declare-fun choose!19304 (LexerInterface!4925 List!36812 List!36813 Token!10038) Unit!51698)

(assert (=> d!937013 (= lt!1132151 (choose!19304 thiss!18206 rules!2135 tokens!494 (h!42109 tokens!494)))))

(assert (=> d!937013 (not (isEmpty!20857 rules!2135))))

(assert (=> d!937013 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!920 thiss!18206 rules!2135 tokens!494 (h!42109 tokens!494)) lt!1132151)))

(declare-fun bs!551317 () Bool)

(assert (= bs!551317 d!937013))

(assert (=> bs!551317 m!3672041))

(declare-fun m!3672387 () Bool)

(assert (=> bs!551317 m!3672387))

(assert (=> bs!551317 m!3671987))

(assert (=> b!3330359 d!937013))

(declare-fun d!937015 () Bool)

(declare-fun res!1350916 () Bool)

(declare-fun e!2071209 () Bool)

(assert (=> d!937015 (=> (not res!1350916) (not e!2071209))))

(assert (=> d!937015 (= res!1350916 (not (isEmpty!20855 (originalCharacters!6050 separatorToken!241))))))

(assert (=> d!937015 (= (inv!49703 separatorToken!241) e!2071209)))

(declare-fun b!3330580 () Bool)

(declare-fun res!1350917 () Bool)

(assert (=> b!3330580 (=> (not res!1350917) (not e!2071209))))

(assert (=> b!3330580 (= res!1350917 (= (originalCharacters!6050 separatorToken!241) (list!13219 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))))))

(declare-fun b!3330581 () Bool)

(assert (=> b!3330581 (= e!2071209 (= (size!27739 separatorToken!241) (size!27742 (originalCharacters!6050 separatorToken!241))))))

(assert (= (and d!937015 res!1350916) b!3330580))

(assert (= (and b!3330580 res!1350917) b!3330581))

(declare-fun b_lambda!94099 () Bool)

(assert (=> (not b_lambda!94099) (not b!3330580)))

(assert (=> b!3330580 t!257184))

(declare-fun b_and!229731 () Bool)

(assert (= b_and!229725 (and (=> t!257184 result!217678) b_and!229731)))

(assert (=> b!3330580 t!257186))

(declare-fun b_and!229733 () Bool)

(assert (= b_and!229727 (and (=> t!257186 result!217682) b_and!229733)))

(assert (=> b!3330580 t!257188))

(declare-fun b_and!229735 () Bool)

(assert (= b_and!229729 (and (=> t!257188 result!217684) b_and!229735)))

(declare-fun m!3672389 () Bool)

(assert (=> d!937015 m!3672389))

(assert (=> b!3330580 m!3672135))

(assert (=> b!3330580 m!3672135))

(declare-fun m!3672391 () Bool)

(assert (=> b!3330580 m!3672391))

(declare-fun m!3672393 () Bool)

(assert (=> b!3330581 m!3672393))

(assert (=> start!311210 d!937015))

(declare-fun d!937017 () Bool)

(assert (=> d!937017 (= (get!11687 lt!1132039) (v!36227 lt!1132039))))

(assert (=> b!3330368 d!937017))

(declare-fun lt!1132154 () Bool)

(declare-fun d!937019 () Bool)

(declare-fun isEmpty!20864 (List!36813) Bool)

(assert (=> d!937019 (= lt!1132154 (isEmpty!20864 (list!13223 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))))))

(declare-fun isEmpty!20865 (Conc!11048) Bool)

(assert (=> d!937019 (= lt!1132154 (isEmpty!20865 (c!565596 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))))))

(assert (=> d!937019 (= (isEmpty!20856 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041)))) lt!1132154)))

(declare-fun bs!551318 () Bool)

(assert (= bs!551318 d!937019))

(declare-fun m!3672395 () Bool)

(assert (=> bs!551318 m!3672395))

(assert (=> bs!551318 m!3672395))

(declare-fun m!3672397 () Bool)

(assert (=> bs!551318 m!3672397))

(declare-fun m!3672399 () Bool)

(assert (=> bs!551318 m!3672399))

(assert (=> b!3330367 d!937019))

(declare-fun d!937021 () Bool)

(declare-fun e!2071217 () Bool)

(assert (=> d!937021 e!2071217))

(declare-fun res!1350924 () Bool)

(assert (=> d!937021 (=> (not res!1350924) (not e!2071217))))

(declare-fun e!2071218 () Bool)

(assert (=> d!937021 (= res!1350924 e!2071218)))

(declare-fun c!565632 () Bool)

(declare-fun lt!1132157 () tuple2!36202)

(assert (=> d!937021 (= c!565632 (> (size!27743 (_1!21235 lt!1132157)) 0))))

(declare-fun lexTailRecV2!990 (LexerInterface!4925 List!36812 BalanceConc!21708 BalanceConc!21708 BalanceConc!21708 BalanceConc!21710) tuple2!36202)

(assert (=> d!937021 (= lt!1132157 (lexTailRecV2!990 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041) (BalanceConc!21709 Empty!11047) (seqFromList!3725 lt!1132041) (BalanceConc!21711 Empty!11048)))))

(assert (=> d!937021 (= (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041)) lt!1132157)))

(declare-fun b!3330592 () Bool)

(declare-fun res!1350925 () Bool)

(assert (=> b!3330592 (=> (not res!1350925) (not e!2071217))))

(declare-datatypes ((tuple2!36206 0))(
  ( (tuple2!36207 (_1!21237 List!36813) (_2!21237 List!36811)) )
))
(declare-fun lexList!1380 (LexerInterface!4925 List!36812 List!36811) tuple2!36206)

(assert (=> b!3330592 (= res!1350925 (= (list!13223 (_1!21235 lt!1132157)) (_1!21237 (lexList!1380 thiss!18206 rules!2135 (list!13219 (seqFromList!3725 lt!1132041))))))))

(declare-fun b!3330593 () Bool)

(declare-fun e!2071216 () Bool)

(assert (=> b!3330593 (= e!2071218 e!2071216)))

(declare-fun res!1350926 () Bool)

(declare-fun size!27745 (BalanceConc!21708) Int)

(assert (=> b!3330593 (= res!1350926 (< (size!27745 (_2!21235 lt!1132157)) (size!27745 (seqFromList!3725 lt!1132041))))))

(assert (=> b!3330593 (=> (not res!1350926) (not e!2071216))))

(declare-fun b!3330594 () Bool)

(assert (=> b!3330594 (= e!2071216 (not (isEmpty!20856 (_1!21235 lt!1132157))))))

(declare-fun b!3330595 () Bool)

(assert (=> b!3330595 (= e!2071217 (= (list!13219 (_2!21235 lt!1132157)) (_2!21237 (lexList!1380 thiss!18206 rules!2135 (list!13219 (seqFromList!3725 lt!1132041))))))))

(declare-fun b!3330596 () Bool)

(assert (=> b!3330596 (= e!2071218 (= (_2!21235 lt!1132157) (seqFromList!3725 lt!1132041)))))

(assert (= (and d!937021 c!565632) b!3330593))

(assert (= (and d!937021 (not c!565632)) b!3330596))

(assert (= (and b!3330593 res!1350926) b!3330594))

(assert (= (and d!937021 res!1350924) b!3330592))

(assert (= (and b!3330592 res!1350925) b!3330595))

(declare-fun m!3672401 () Bool)

(assert (=> b!3330594 m!3672401))

(declare-fun m!3672403 () Bool)

(assert (=> b!3330595 m!3672403))

(assert (=> b!3330595 m!3672027))

(declare-fun m!3672405 () Bool)

(assert (=> b!3330595 m!3672405))

(assert (=> b!3330595 m!3672405))

(declare-fun m!3672407 () Bool)

(assert (=> b!3330595 m!3672407))

(declare-fun m!3672409 () Bool)

(assert (=> d!937021 m!3672409))

(assert (=> d!937021 m!3672027))

(assert (=> d!937021 m!3672027))

(declare-fun m!3672411 () Bool)

(assert (=> d!937021 m!3672411))

(declare-fun m!3672413 () Bool)

(assert (=> b!3330593 m!3672413))

(assert (=> b!3330593 m!3672027))

(declare-fun m!3672415 () Bool)

(assert (=> b!3330593 m!3672415))

(declare-fun m!3672417 () Bool)

(assert (=> b!3330592 m!3672417))

(assert (=> b!3330592 m!3672027))

(assert (=> b!3330592 m!3672405))

(assert (=> b!3330592 m!3672405))

(assert (=> b!3330592 m!3672407))

(assert (=> b!3330367 d!937021))

(declare-fun d!937023 () Bool)

(declare-fun fromListB!1650 (List!36811) BalanceConc!21708)

(assert (=> d!937023 (= (seqFromList!3725 lt!1132041) (fromListB!1650 lt!1132041))))

(declare-fun bs!551319 () Bool)

(assert (= bs!551319 d!937023))

(declare-fun m!3672419 () Bool)

(assert (=> bs!551319 m!3672419))

(assert (=> b!3330367 d!937023))

(declare-fun d!937025 () Bool)

(assert (=> d!937025 (= (list!13219 (charsOf!3350 (h!42109 tokens!494))) (list!13222 (c!565595 (charsOf!3350 (h!42109 tokens!494)))))))

(declare-fun bs!551320 () Bool)

(assert (= bs!551320 d!937025))

(declare-fun m!3672421 () Bool)

(assert (=> bs!551320 m!3672421))

(assert (=> b!3330356 d!937025))

(declare-fun d!937027 () Bool)

(declare-fun lt!1132158 () BalanceConc!21708)

(assert (=> d!937027 (= (list!13219 lt!1132158) (originalCharacters!6050 (h!42109 tokens!494)))))

(assert (=> d!937027 (= lt!1132158 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))))

(assert (=> d!937027 (= (charsOf!3350 (h!42109 tokens!494)) lt!1132158)))

(declare-fun b_lambda!94101 () Bool)

(assert (=> (not b_lambda!94101) (not d!937027)))

(assert (=> d!937027 t!257194))

(declare-fun b_and!229737 () Bool)

(assert (= b_and!229731 (and (=> t!257194 result!217686) b_and!229737)))

(assert (=> d!937027 t!257196))

(declare-fun b_and!229739 () Bool)

(assert (= b_and!229733 (and (=> t!257196 result!217688) b_and!229739)))

(assert (=> d!937027 t!257198))

(declare-fun b_and!229741 () Bool)

(assert (= b_and!229735 (and (=> t!257198 result!217690) b_and!229741)))

(declare-fun m!3672423 () Bool)

(assert (=> d!937027 m!3672423))

(assert (=> d!937027 m!3672335))

(assert (=> b!3330356 d!937027))

(declare-fun d!937029 () Bool)

(declare-fun lt!1132160 () Bool)

(declare-fun e!2071220 () Bool)

(assert (=> d!937029 (= lt!1132160 e!2071220)))

(declare-fun res!1350928 () Bool)

(assert (=> d!937029 (=> (not res!1350928) (not e!2071220))))

(assert (=> d!937029 (= res!1350928 (= (list!13223 (_1!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494)))))) (list!13223 (singletonSeq!2432 (h!42109 tokens!494)))))))

(declare-fun e!2071219 () Bool)

(assert (=> d!937029 (= lt!1132160 e!2071219)))

(declare-fun res!1350929 () Bool)

(assert (=> d!937029 (=> (not res!1350929) (not e!2071219))))

(declare-fun lt!1132159 () tuple2!36202)

(assert (=> d!937029 (= res!1350929 (= (size!27743 (_1!21235 lt!1132159)) 1))))

(assert (=> d!937029 (= lt!1132159 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494)))))))

(assert (=> d!937029 (not (isEmpty!20857 rules!2135))))

(assert (=> d!937029 (= (rulesProduceIndividualToken!2417 thiss!18206 rules!2135 (h!42109 tokens!494)) lt!1132160)))

(declare-fun b!3330597 () Bool)

(declare-fun res!1350927 () Bool)

(assert (=> b!3330597 (=> (not res!1350927) (not e!2071219))))

(assert (=> b!3330597 (= res!1350927 (= (apply!8478 (_1!21235 lt!1132159) 0) (h!42109 tokens!494)))))

(declare-fun b!3330598 () Bool)

(assert (=> b!3330598 (= e!2071219 (isEmpty!20862 (_2!21235 lt!1132159)))))

(declare-fun b!3330599 () Bool)

(assert (=> b!3330599 (= e!2071220 (isEmpty!20862 (_2!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494)))))))))

(assert (= (and d!937029 res!1350929) b!3330597))

(assert (= (and b!3330597 res!1350927) b!3330598))

(assert (= (and d!937029 res!1350928) b!3330599))

(assert (=> d!937029 m!3672053))

(declare-fun m!3672425 () Bool)

(assert (=> d!937029 m!3672425))

(declare-fun m!3672427 () Bool)

(assert (=> d!937029 m!3672427))

(declare-fun m!3672429 () Bool)

(assert (=> d!937029 m!3672429))

(assert (=> d!937029 m!3672053))

(assert (=> d!937029 m!3672425))

(declare-fun m!3672431 () Bool)

(assert (=> d!937029 m!3672431))

(assert (=> d!937029 m!3672053))

(declare-fun m!3672433 () Bool)

(assert (=> d!937029 m!3672433))

(assert (=> d!937029 m!3671987))

(declare-fun m!3672435 () Bool)

(assert (=> b!3330597 m!3672435))

(declare-fun m!3672437 () Bool)

(assert (=> b!3330598 m!3672437))

(assert (=> b!3330599 m!3672053))

(assert (=> b!3330599 m!3672053))

(assert (=> b!3330599 m!3672425))

(assert (=> b!3330599 m!3672425))

(assert (=> b!3330599 m!3672431))

(declare-fun m!3672439 () Bool)

(assert (=> b!3330599 m!3672439))

(assert (=> b!3330355 d!937029))

(declare-fun d!937031 () Bool)

(declare-fun res!1350934 () Bool)

(declare-fun e!2071225 () Bool)

(assert (=> d!937031 (=> res!1350934 e!2071225)))

(assert (=> d!937031 (= res!1350934 (not ((_ is Cons!36688) rules!2135)))))

(assert (=> d!937031 (= (sepAndNonSepRulesDisjointChars!1530 rules!2135 rules!2135) e!2071225)))

(declare-fun b!3330604 () Bool)

(declare-fun e!2071226 () Bool)

(assert (=> b!3330604 (= e!2071225 e!2071226)))

(declare-fun res!1350935 () Bool)

(assert (=> b!3330604 (=> (not res!1350935) (not e!2071226))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!653 (Rule!10472 List!36812) Bool)

(assert (=> b!3330604 (= res!1350935 (ruleDisjointCharsFromAllFromOtherType!653 (h!42108 rules!2135) rules!2135))))

(declare-fun b!3330605 () Bool)

(assert (=> b!3330605 (= e!2071226 (sepAndNonSepRulesDisjointChars!1530 rules!2135 (t!257169 rules!2135)))))

(assert (= (and d!937031 (not res!1350934)) b!3330604))

(assert (= (and b!3330604 res!1350935) b!3330605))

(declare-fun m!3672441 () Bool)

(assert (=> b!3330604 m!3672441))

(declare-fun m!3672443 () Bool)

(assert (=> b!3330605 m!3672443))

(assert (=> b!3330353 d!937031))

(declare-fun bs!551331 () Bool)

(declare-fun d!937033 () Bool)

(assert (= bs!551331 (and d!937033 b!3330351)))

(declare-fun lambda!119835 () Int)

(assert (=> bs!551331 (not (= lambda!119835 lambda!119825))))

(declare-fun b!3330746 () Bool)

(declare-fun e!2071326 () Bool)

(assert (=> b!3330746 (= e!2071326 true)))

(declare-fun b!3330745 () Bool)

(declare-fun e!2071325 () Bool)

(assert (=> b!3330745 (= e!2071325 e!2071326)))

(declare-fun b!3330744 () Bool)

(declare-fun e!2071324 () Bool)

(assert (=> b!3330744 (= e!2071324 e!2071325)))

(assert (=> d!937033 e!2071324))

(assert (= b!3330745 b!3330746))

(assert (= b!3330744 b!3330745))

(assert (= (and d!937033 ((_ is Cons!36688) rules!2135)) b!3330744))

(declare-fun order!19215 () Int)

(declare-fun order!19213 () Int)

(declare-fun dynLambda!15148 (Int Int) Int)

(declare-fun dynLambda!15149 (Int Int) Int)

(assert (=> b!3330746 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (h!42108 rules!2135)))) (dynLambda!15149 order!19215 lambda!119835))))

(declare-fun order!19217 () Int)

(declare-fun dynLambda!15150 (Int Int) Int)

(assert (=> b!3330746 (< (dynLambda!15150 order!19217 (toChars!7363 (transformation!5336 (h!42108 rules!2135)))) (dynLambda!15149 order!19215 lambda!119835))))

(assert (=> d!937033 true))

(declare-fun e!2071317 () Bool)

(assert (=> d!937033 e!2071317))

(declare-fun res!1350971 () Bool)

(assert (=> d!937033 (=> (not res!1350971) (not e!2071317))))

(declare-fun lt!1132204 () Bool)

(assert (=> d!937033 (= res!1350971 (= lt!1132204 (forall!7665 (list!13223 lt!1132040) lambda!119835)))))

(declare-fun forall!7667 (BalanceConc!21710 Int) Bool)

(assert (=> d!937033 (= lt!1132204 (forall!7667 lt!1132040 lambda!119835))))

(assert (=> d!937033 (not (isEmpty!20857 rules!2135))))

(assert (=> d!937033 (= (rulesProduceEachTokenIndividually!1376 thiss!18206 rules!2135 lt!1132040) lt!1132204)))

(declare-fun b!3330735 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1789 (LexerInterface!4925 List!36812 List!36813) Bool)

(assert (=> b!3330735 (= e!2071317 (= lt!1132204 (rulesProduceEachTokenIndividuallyList!1789 thiss!18206 rules!2135 (list!13223 lt!1132040))))))

(assert (= (and d!937033 res!1350971) b!3330735))

(assert (=> d!937033 m!3672123))

(assert (=> d!937033 m!3672123))

(declare-fun m!3672589 () Bool)

(assert (=> d!937033 m!3672589))

(declare-fun m!3672591 () Bool)

(assert (=> d!937033 m!3672591))

(assert (=> d!937033 m!3671987))

(assert (=> b!3330735 m!3672123))

(assert (=> b!3330735 m!3672123))

(declare-fun m!3672593 () Bool)

(assert (=> b!3330735 m!3672593))

(assert (=> b!3330374 d!937033))

(declare-fun d!937075 () Bool)

(declare-fun fromListB!1651 (List!36813) BalanceConc!21710)

(assert (=> d!937075 (= (seqFromList!3726 tokens!494) (fromListB!1651 tokens!494))))

(declare-fun bs!551332 () Bool)

(assert (= bs!551332 d!937075))

(declare-fun m!3672595 () Bool)

(assert (=> bs!551332 m!3672595))

(assert (=> b!3330374 d!937075))

(declare-fun b!3330749 () Bool)

(declare-fun e!2071328 () Bool)

(assert (=> b!3330749 (= e!2071328 (inv!16 (value!172536 separatorToken!241)))))

(declare-fun b!3330750 () Bool)

(declare-fun e!2071329 () Bool)

(assert (=> b!3330750 (= e!2071329 (inv!17 (value!172536 separatorToken!241)))))

(declare-fun b!3330751 () Bool)

(declare-fun res!1350972 () Bool)

(declare-fun e!2071327 () Bool)

(assert (=> b!3330751 (=> res!1350972 e!2071327)))

(assert (=> b!3330751 (= res!1350972 (not ((_ is IntegerValue!16700) (value!172536 separatorToken!241))))))

(assert (=> b!3330751 (= e!2071329 e!2071327)))

(declare-fun d!937077 () Bool)

(declare-fun c!565647 () Bool)

(assert (=> d!937077 (= c!565647 ((_ is IntegerValue!16698) (value!172536 separatorToken!241)))))

(assert (=> d!937077 (= (inv!21 (value!172536 separatorToken!241)) e!2071328)))

(declare-fun b!3330752 () Bool)

(assert (=> b!3330752 (= e!2071327 (inv!15 (value!172536 separatorToken!241)))))

(declare-fun b!3330753 () Bool)

(assert (=> b!3330753 (= e!2071328 e!2071329)))

(declare-fun c!565648 () Bool)

(assert (=> b!3330753 (= c!565648 ((_ is IntegerValue!16699) (value!172536 separatorToken!241)))))

(assert (= (and d!937077 c!565647) b!3330749))

(assert (= (and d!937077 (not c!565647)) b!3330753))

(assert (= (and b!3330753 c!565648) b!3330750))

(assert (= (and b!3330753 (not c!565648)) b!3330751))

(assert (= (and b!3330751 (not res!1350972)) b!3330752))

(declare-fun m!3672597 () Bool)

(assert (=> b!3330749 m!3672597))

(declare-fun m!3672599 () Bool)

(assert (=> b!3330750 m!3672599))

(declare-fun m!3672601 () Bool)

(assert (=> b!3330752 m!3672601))

(assert (=> b!3330364 d!937077))

(declare-fun b!3330767 () Bool)

(declare-fun e!2071332 () Bool)

(declare-fun tp!1040931 () Bool)

(declare-fun tp!1040930 () Bool)

(assert (=> b!3330767 (= e!2071332 (and tp!1040931 tp!1040930))))

(declare-fun b!3330764 () Bool)

(declare-fun tp_is_empty!17425 () Bool)

(assert (=> b!3330764 (= e!2071332 tp_is_empty!17425)))

(declare-fun b!3330765 () Bool)

(declare-fun tp!1040932 () Bool)

(declare-fun tp!1040929 () Bool)

(assert (=> b!3330765 (= e!2071332 (and tp!1040932 tp!1040929))))

(declare-fun b!3330766 () Bool)

(declare-fun tp!1040933 () Bool)

(assert (=> b!3330766 (= e!2071332 tp!1040933)))

(assert (=> b!3330362 (= tp!1040844 e!2071332)))

(assert (= (and b!3330362 ((_ is ElementMatch!10095) (regex!5336 (rule!7860 (h!42109 tokens!494))))) b!3330764))

(assert (= (and b!3330362 ((_ is Concat!15661) (regex!5336 (rule!7860 (h!42109 tokens!494))))) b!3330765))

(assert (= (and b!3330362 ((_ is Star!10095) (regex!5336 (rule!7860 (h!42109 tokens!494))))) b!3330766))

(assert (= (and b!3330362 ((_ is Union!10095) (regex!5336 (rule!7860 (h!42109 tokens!494))))) b!3330767))

(declare-fun b!3330771 () Bool)

(declare-fun e!2071333 () Bool)

(declare-fun tp!1040936 () Bool)

(declare-fun tp!1040935 () Bool)

(assert (=> b!3330771 (= e!2071333 (and tp!1040936 tp!1040935))))

(declare-fun b!3330768 () Bool)

(assert (=> b!3330768 (= e!2071333 tp_is_empty!17425)))

(declare-fun b!3330769 () Bool)

(declare-fun tp!1040937 () Bool)

(declare-fun tp!1040934 () Bool)

(assert (=> b!3330769 (= e!2071333 (and tp!1040937 tp!1040934))))

(declare-fun b!3330770 () Bool)

(declare-fun tp!1040938 () Bool)

(assert (=> b!3330770 (= e!2071333 tp!1040938)))

(assert (=> b!3330352 (= tp!1040853 e!2071333)))

(assert (= (and b!3330352 ((_ is ElementMatch!10095) (regex!5336 (h!42108 rules!2135)))) b!3330768))

(assert (= (and b!3330352 ((_ is Concat!15661) (regex!5336 (h!42108 rules!2135)))) b!3330769))

(assert (= (and b!3330352 ((_ is Star!10095) (regex!5336 (h!42108 rules!2135)))) b!3330770))

(assert (= (and b!3330352 ((_ is Union!10095) (regex!5336 (h!42108 rules!2135)))) b!3330771))

(declare-fun b!3330776 () Bool)

(declare-fun e!2071336 () Bool)

(declare-fun tp!1040941 () Bool)

(assert (=> b!3330776 (= e!2071336 (and tp_is_empty!17425 tp!1040941))))

(assert (=> b!3330350 (= tp!1040852 e!2071336)))

(assert (= (and b!3330350 ((_ is Cons!36687) (originalCharacters!6050 (h!42109 tokens!494)))) b!3330776))

(declare-fun b!3330780 () Bool)

(declare-fun e!2071337 () Bool)

(declare-fun tp!1040944 () Bool)

(declare-fun tp!1040943 () Bool)

(assert (=> b!3330780 (= e!2071337 (and tp!1040944 tp!1040943))))

(declare-fun b!3330777 () Bool)

(assert (=> b!3330777 (= e!2071337 tp_is_empty!17425)))

(declare-fun b!3330778 () Bool)

(declare-fun tp!1040945 () Bool)

(declare-fun tp!1040942 () Bool)

(assert (=> b!3330778 (= e!2071337 (and tp!1040945 tp!1040942))))

(declare-fun b!3330779 () Bool)

(declare-fun tp!1040946 () Bool)

(assert (=> b!3330779 (= e!2071337 tp!1040946)))

(assert (=> b!3330370 (= tp!1040849 e!2071337)))

(assert (= (and b!3330370 ((_ is ElementMatch!10095) (regex!5336 (rule!7860 separatorToken!241)))) b!3330777))

(assert (= (and b!3330370 ((_ is Concat!15661) (regex!5336 (rule!7860 separatorToken!241)))) b!3330778))

(assert (= (and b!3330370 ((_ is Star!10095) (regex!5336 (rule!7860 separatorToken!241)))) b!3330779))

(assert (= (and b!3330370 ((_ is Union!10095) (regex!5336 (rule!7860 separatorToken!241)))) b!3330780))

(declare-fun b!3330794 () Bool)

(declare-fun b_free!87725 () Bool)

(declare-fun b_next!88429 () Bool)

(assert (=> b!3330794 (= b_free!87725 (not b_next!88429))))

(declare-fun tp!1040960 () Bool)

(declare-fun b_and!229763 () Bool)

(assert (=> b!3330794 (= tp!1040960 b_and!229763)))

(declare-fun b_free!87727 () Bool)

(declare-fun b_next!88431 () Bool)

(assert (=> b!3330794 (= b_free!87727 (not b_next!88431))))

(declare-fun t!257219 () Bool)

(declare-fun tb!174567 () Bool)

(assert (=> (and b!3330794 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) t!257219) tb!174567))

(declare-fun result!217714 () Bool)

(assert (= result!217714 result!217678))

(assert (=> d!936941 t!257219))

(declare-fun t!257221 () Bool)

(declare-fun tb!174569 () Bool)

(assert (=> (and b!3330794 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) t!257221) tb!174569))

(declare-fun result!217716 () Bool)

(assert (= result!217716 result!217686))

(assert (=> b!3330541 t!257221))

(assert (=> b!3330580 t!257219))

(assert (=> d!937027 t!257221))

(declare-fun tp!1040959 () Bool)

(declare-fun b_and!229765 () Bool)

(assert (=> b!3330794 (= tp!1040959 (and (=> t!257219 result!217714) (=> t!257221 result!217716) b_and!229765))))

(declare-fun e!2071352 () Bool)

(declare-fun e!2071354 () Bool)

(declare-fun b!3330793 () Bool)

(declare-fun tp!1040958 () Bool)

(assert (=> b!3330793 (= e!2071354 (and tp!1040958 (inv!49699 (tag!5888 (rule!7860 (h!42109 (t!257170 tokens!494))))) (inv!49702 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) e!2071352))))

(declare-fun b!3330792 () Bool)

(declare-fun tp!1040957 () Bool)

(declare-fun e!2071350 () Bool)

(assert (=> b!3330792 (= e!2071350 (and (inv!21 (value!172536 (h!42109 (t!257170 tokens!494)))) e!2071354 tp!1040957))))

(assert (=> b!3330794 (= e!2071352 (and tp!1040960 tp!1040959))))

(declare-fun e!2071353 () Bool)

(assert (=> b!3330371 (= tp!1040850 e!2071353)))

(declare-fun b!3330791 () Bool)

(declare-fun tp!1040961 () Bool)

(assert (=> b!3330791 (= e!2071353 (and (inv!49703 (h!42109 (t!257170 tokens!494))) e!2071350 tp!1040961))))

(assert (= b!3330793 b!3330794))

(assert (= b!3330792 b!3330793))

(assert (= b!3330791 b!3330792))

(assert (= (and b!3330371 ((_ is Cons!36689) (t!257170 tokens!494))) b!3330791))

(declare-fun m!3672603 () Bool)

(assert (=> b!3330793 m!3672603))

(declare-fun m!3672605 () Bool)

(assert (=> b!3330793 m!3672605))

(declare-fun m!3672607 () Bool)

(assert (=> b!3330792 m!3672607))

(declare-fun m!3672609 () Bool)

(assert (=> b!3330791 m!3672609))

(declare-fun b!3330805 () Bool)

(declare-fun b_free!87729 () Bool)

(declare-fun b_next!88433 () Bool)

(assert (=> b!3330805 (= b_free!87729 (not b_next!88433))))

(declare-fun tp!1040971 () Bool)

(declare-fun b_and!229767 () Bool)

(assert (=> b!3330805 (= tp!1040971 b_and!229767)))

(declare-fun b_free!87731 () Bool)

(declare-fun b_next!88435 () Bool)

(assert (=> b!3330805 (= b_free!87731 (not b_next!88435))))

(declare-fun tb!174571 () Bool)

(declare-fun t!257223 () Bool)

(assert (=> (and b!3330805 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) t!257223) tb!174571))

(declare-fun result!217720 () Bool)

(assert (= result!217720 result!217678))

(assert (=> d!936941 t!257223))

(declare-fun tb!174573 () Bool)

(declare-fun t!257225 () Bool)

(assert (=> (and b!3330805 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) t!257225) tb!174573))

(declare-fun result!217722 () Bool)

(assert (= result!217722 result!217686))

(assert (=> b!3330541 t!257225))

(assert (=> b!3330580 t!257223))

(assert (=> d!937027 t!257225))

(declare-fun b_and!229769 () Bool)

(declare-fun tp!1040972 () Bool)

(assert (=> b!3330805 (= tp!1040972 (and (=> t!257223 result!217720) (=> t!257225 result!217722) b_and!229769))))

(declare-fun e!2071367 () Bool)

(assert (=> b!3330805 (= e!2071367 (and tp!1040971 tp!1040972))))

(declare-fun e!2071365 () Bool)

(declare-fun tp!1040973 () Bool)

(declare-fun b!3330804 () Bool)

(assert (=> b!3330804 (= e!2071365 (and tp!1040973 (inv!49699 (tag!5888 (h!42108 (t!257169 rules!2135)))) (inv!49702 (transformation!5336 (h!42108 (t!257169 rules!2135)))) e!2071367))))

(declare-fun b!3330803 () Bool)

(declare-fun e!2071364 () Bool)

(declare-fun tp!1040970 () Bool)

(assert (=> b!3330803 (= e!2071364 (and e!2071365 tp!1040970))))

(assert (=> b!3330360 (= tp!1040848 e!2071364)))

(assert (= b!3330804 b!3330805))

(assert (= b!3330803 b!3330804))

(assert (= (and b!3330360 ((_ is Cons!36688) (t!257169 rules!2135))) b!3330803))

(declare-fun m!3672611 () Bool)

(assert (=> b!3330804 m!3672611))

(declare-fun m!3672613 () Bool)

(assert (=> b!3330804 m!3672613))

(declare-fun b!3330806 () Bool)

(declare-fun e!2071368 () Bool)

(declare-fun tp!1040974 () Bool)

(assert (=> b!3330806 (= e!2071368 (and tp_is_empty!17425 tp!1040974))))

(assert (=> b!3330364 (= tp!1040847 e!2071368)))

(assert (= (and b!3330364 ((_ is Cons!36687) (originalCharacters!6050 separatorToken!241))) b!3330806))

(declare-fun b_lambda!94119 () Bool)

(assert (= b_lambda!94101 (or (and b!3330805 b_free!87731 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) (and b!3330794 b_free!87727 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) (and b!3330369 b_free!87707 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) (and b!3330357 b_free!87715) (and b!3330365 b_free!87711 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) b_lambda!94119)))

(declare-fun b_lambda!94121 () Bool)

(assert (= b_lambda!94091 (or b!3330351 b_lambda!94121)))

(declare-fun bs!551333 () Bool)

(declare-fun d!937079 () Bool)

(assert (= bs!551333 (and d!937079 b!3330351)))

(assert (=> bs!551333 (= (dynLambda!15147 lambda!119825 (h!42109 tokens!494)) (not (isSeparator!5336 (rule!7860 (h!42109 tokens!494)))))))

(assert (=> b!3330485 d!937079))

(declare-fun b_lambda!94123 () Bool)

(assert (= b_lambda!94097 (or (and b!3330805 b_free!87731 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) (and b!3330794 b_free!87727 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) (and b!3330369 b_free!87707 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) (and b!3330357 b_free!87715) (and b!3330365 b_free!87711 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) b_lambda!94123)))

(declare-fun b_lambda!94125 () Bool)

(assert (= b_lambda!94099 (or (and b!3330794 b_free!87727 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))))) (and b!3330357 b_free!87715 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))))) (and b!3330805 b_free!87731 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))))) (and b!3330369 b_free!87707 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))))) (and b!3330365 b_free!87711) b_lambda!94125)))

(declare-fun b_lambda!94127 () Bool)

(assert (= b_lambda!94087 (or (and b!3330794 b_free!87727 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))))) (and b!3330357 b_free!87715 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))))) (and b!3330805 b_free!87731 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))))) (and b!3330369 b_free!87707 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))))) (and b!3330365 b_free!87711) b_lambda!94127)))

(declare-fun b_lambda!94129 () Bool)

(assert (= b_lambda!94089 (or b!3330351 b_lambda!94129)))

(assert (=> d!936971 d!937079))

(check-sat b_and!229765 (not b!3330752) (not d!937019) (not b!3330575) (not d!937029) (not b!3330571) (not b!3330770) (not b!3330793) b_and!229769 (not b!3330574) (not d!936971) (not d!936925) (not b_lambda!94119) tp_is_empty!17425 (not d!936969) (not b_lambda!94121) (not b!3330551) (not b!3330418) (not b!3330534) (not b!3330778) (not b!3330779) (not b!3330536) (not b_next!88419) (not b!3330476) (not d!937075) (not d!936947) (not b!3330455) (not b!3330750) (not d!937013) (not b!3330791) (not b!3330465) (not d!936919) (not b_lambda!94129) (not b!3330543) (not b!3330533) (not b!3330592) (not d!936981) (not b!3330597) (not d!936961) (not b_next!88433) b_and!229703 (not b_next!88429) (not b!3330580) (not b!3330541) (not b!3330744) (not b!3330577) (not b!3330460) (not b_next!88413) (not b!3330428) b_and!229737 (not d!937005) b_and!229741 (not tb!174547) (not b!3330771) (not d!936941) (not d!937003) (not d!937021) (not b!3330780) (not b!3330803) b_and!229763 (not b!3330572) (not b!3330573) (not d!936949) (not d!937025) (not d!937033) (not d!937011) (not b!3330806) (not d!936963) (not b_lambda!94123) (not b!3330419) (not b!3330804) (not b!3330769) (not b!3330766) (not b!3330604) (not b_next!88415) (not b!3330599) (not b!3330605) (not b!3330776) (not d!936945) b_and!229739 b_and!229695 (not b!3330598) (not b!3330576) (not b!3330546) b_and!229767 (not b!3330792) (not d!937001) (not d!936997) (not b!3330462) (not bm!241407) (not b!3330594) (not b_lambda!94127) (not b!3330535) (not b!3330765) (not b_lambda!94125) (not b_next!88417) (not b!3330595) (not d!937007) (not b!3330479) (not tb!174553) (not b!3330749) (not b!3330542) (not b_next!88435) (not d!936999) (not b_next!88411) (not d!937015) (not d!937023) b_and!229699 (not b!3330578) (not b!3330735) (not b!3330450) (not d!936939) (not b_next!88431) (not b!3330425) (not d!937027) (not b!3330593) (not d!936937) (not b!3330477) (not b!3330767) (not b!3330486) (not b!3330452) (not b!3330581) (not b_next!88409))
(check-sat b_and!229769 (not b_next!88419) (not b_next!88433) (not b_next!88413) b_and!229765 b_and!229763 (not b_next!88415) b_and!229739 b_and!229695 b_and!229767 (not b_next!88417) (not b_next!88409) b_and!229703 (not b_next!88429) b_and!229737 b_and!229741 (not b_next!88435) (not b_next!88411) b_and!229699 (not b_next!88431))
(get-model)

(declare-fun d!937115 () Bool)

(declare-fun res!1350999 () Bool)

(declare-fun e!2071399 () Bool)

(assert (=> d!937115 (=> res!1350999 e!2071399)))

(assert (=> d!937115 (= res!1350999 ((_ is Nil!36688) rules!2135))))

(assert (=> d!937115 (= (noDuplicateTag!1973 thiss!18206 rules!2135 Nil!36691) e!2071399)))

(declare-fun b!3330851 () Bool)

(declare-fun e!2071400 () Bool)

(assert (=> b!3330851 (= e!2071399 e!2071400)))

(declare-fun res!1351000 () Bool)

(assert (=> b!3330851 (=> (not res!1351000) (not e!2071400))))

(declare-fun contains!6658 (List!36815 String!41164) Bool)

(assert (=> b!3330851 (= res!1351000 (not (contains!6658 Nil!36691 (tag!5888 (h!42108 rules!2135)))))))

(declare-fun b!3330852 () Bool)

(assert (=> b!3330852 (= e!2071400 (noDuplicateTag!1973 thiss!18206 (t!257169 rules!2135) (Cons!36691 (tag!5888 (h!42108 rules!2135)) Nil!36691)))))

(assert (= (and d!937115 (not res!1350999)) b!3330851))

(assert (= (and b!3330851 res!1351000) b!3330852))

(declare-fun m!3672701 () Bool)

(assert (=> b!3330851 m!3672701))

(declare-fun m!3672703 () Bool)

(assert (=> b!3330852 m!3672703))

(assert (=> b!3330546 d!937115))

(declare-fun bm!241410 () Bool)

(declare-fun call!241415 () Bool)

(assert (=> bm!241410 (= call!241415 (ruleDisjointCharsFromAllFromOtherType!653 (h!42108 rules!2135) (t!257169 rules!2135)))))

(declare-fun d!937119 () Bool)

(declare-fun c!565661 () Bool)

(assert (=> d!937119 (= c!565661 (and ((_ is Cons!36688) rules!2135) (not (= (isSeparator!5336 (h!42108 rules!2135)) (isSeparator!5336 (h!42108 rules!2135))))))))

(declare-fun e!2071408 () Bool)

(assert (=> d!937119 (= (ruleDisjointCharsFromAllFromOtherType!653 (h!42108 rules!2135) rules!2135) e!2071408)))

(declare-fun b!3330861 () Bool)

(declare-fun e!2071407 () Bool)

(assert (=> b!3330861 (= e!2071408 e!2071407)))

(declare-fun res!1351005 () Bool)

(declare-fun rulesUseDisjointChars!312 (Rule!10472 Rule!10472) Bool)

(assert (=> b!3330861 (= res!1351005 (rulesUseDisjointChars!312 (h!42108 rules!2135) (h!42108 rules!2135)))))

(assert (=> b!3330861 (=> (not res!1351005) (not e!2071407))))

(declare-fun b!3330862 () Bool)

(assert (=> b!3330862 (= e!2071407 call!241415)))

(declare-fun b!3330863 () Bool)

(declare-fun e!2071409 () Bool)

(assert (=> b!3330863 (= e!2071409 call!241415)))

(declare-fun b!3330864 () Bool)

(assert (=> b!3330864 (= e!2071408 e!2071409)))

(declare-fun res!1351006 () Bool)

(assert (=> b!3330864 (= res!1351006 (not ((_ is Cons!36688) rules!2135)))))

(assert (=> b!3330864 (=> res!1351006 e!2071409)))

(assert (= (and d!937119 c!565661) b!3330861))

(assert (= (and d!937119 (not c!565661)) b!3330864))

(assert (= (and b!3330861 res!1351005) b!3330862))

(assert (= (and b!3330864 (not res!1351006)) b!3330863))

(assert (= (or b!3330862 b!3330863) bm!241410))

(declare-fun m!3672717 () Bool)

(assert (=> bm!241410 m!3672717))

(declare-fun m!3672719 () Bool)

(assert (=> b!3330861 m!3672719))

(assert (=> b!3330604 d!937119))

(declare-fun d!937125 () Bool)

(declare-fun lt!1132224 () Token!10038)

(assert (=> d!937125 (= lt!1132224 (apply!8479 (list!13223 (_1!21235 lt!1132124)) 0))))

(declare-fun apply!8482 (Conc!11048 Int) Token!10038)

(assert (=> d!937125 (= lt!1132224 (apply!8482 (c!565596 (_1!21235 lt!1132124)) 0))))

(declare-fun e!2071415 () Bool)

(assert (=> d!937125 e!2071415))

(declare-fun res!1351012 () Bool)

(assert (=> d!937125 (=> (not res!1351012) (not e!2071415))))

(assert (=> d!937125 (= res!1351012 (<= 0 0))))

(assert (=> d!937125 (= (apply!8478 (_1!21235 lt!1132124) 0) lt!1132224)))

(declare-fun b!3330870 () Bool)

(assert (=> b!3330870 (= e!2071415 (< 0 (size!27743 (_1!21235 lt!1132124))))))

(assert (= (and d!937125 res!1351012) b!3330870))

(declare-fun m!3672727 () Bool)

(assert (=> d!937125 m!3672727))

(assert (=> d!937125 m!3672727))

(declare-fun m!3672729 () Bool)

(assert (=> d!937125 m!3672729))

(declare-fun m!3672731 () Bool)

(assert (=> d!937125 m!3672731))

(assert (=> b!3330870 m!3672311))

(assert (=> b!3330533 d!937125))

(declare-fun d!937129 () Bool)

(assert (=> d!937129 (= (isDefined!5662 lt!1132145) (not (isEmpty!20863 lt!1132145)))))

(declare-fun bs!551343 () Bool)

(assert (= bs!551343 d!937129))

(assert (=> bs!551343 m!3672375))

(assert (=> b!3330576 d!937129))

(declare-fun d!937131 () Bool)

(assert (=> d!937131 (= (isEmpty!20863 lt!1132039) (not ((_ is Some!7319) lt!1132039)))))

(assert (=> d!937007 d!937131))

(declare-fun b!3330882 () Bool)

(declare-fun e!2071421 () List!36811)

(assert (=> b!3330882 (= e!2071421 (++!8925 (list!13222 (left!28593 (c!565595 lt!1132035))) (list!13222 (right!28923 (c!565595 lt!1132035)))))))

(declare-fun b!3330881 () Bool)

(declare-fun list!13225 (IArray!22099) List!36811)

(assert (=> b!3330881 (= e!2071421 (list!13225 (xs!14185 (c!565595 lt!1132035))))))

(declare-fun b!3330879 () Bool)

(declare-fun e!2071420 () List!36811)

(assert (=> b!3330879 (= e!2071420 Nil!36687)))

(declare-fun d!937133 () Bool)

(declare-fun c!565666 () Bool)

(assert (=> d!937133 (= c!565666 ((_ is Empty!11047) (c!565595 lt!1132035)))))

(assert (=> d!937133 (= (list!13222 (c!565595 lt!1132035)) e!2071420)))

(declare-fun b!3330880 () Bool)

(assert (=> b!3330880 (= e!2071420 e!2071421)))

(declare-fun c!565667 () Bool)

(assert (=> b!3330880 (= c!565667 ((_ is Leaf!17326) (c!565595 lt!1132035)))))

(assert (= (and d!937133 c!565666) b!3330879))

(assert (= (and d!937133 (not c!565666)) b!3330880))

(assert (= (and b!3330880 c!565667) b!3330881))

(assert (= (and b!3330880 (not c!565667)) b!3330882))

(declare-fun m!3672733 () Bool)

(assert (=> b!3330882 m!3672733))

(declare-fun m!3672735 () Bool)

(assert (=> b!3330882 m!3672735))

(assert (=> b!3330882 m!3672733))

(assert (=> b!3330882 m!3672735))

(declare-fun m!3672737 () Bool)

(assert (=> b!3330882 m!3672737))

(declare-fun m!3672739 () Bool)

(assert (=> b!3330881 m!3672739))

(assert (=> d!936947 d!937133))

(declare-fun d!937135 () Bool)

(assert (=> d!937135 (= (inv!49699 (tag!5888 (h!42108 (t!257169 rules!2135)))) (= (mod (str.len (value!172535 (tag!5888 (h!42108 (t!257169 rules!2135))))) 2) 0))))

(assert (=> b!3330804 d!937135))

(declare-fun d!937137 () Bool)

(declare-fun res!1351013 () Bool)

(declare-fun e!2071422 () Bool)

(assert (=> d!937137 (=> (not res!1351013) (not e!2071422))))

(assert (=> d!937137 (= res!1351013 (semiInverseModEq!2217 (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toValue!7504 (transformation!5336 (h!42108 (t!257169 rules!2135))))))))

(assert (=> d!937137 (= (inv!49702 (transformation!5336 (h!42108 (t!257169 rules!2135)))) e!2071422)))

(declare-fun b!3330883 () Bool)

(assert (=> b!3330883 (= e!2071422 (equivClasses!2116 (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toValue!7504 (transformation!5336 (h!42108 (t!257169 rules!2135))))))))

(assert (= (and d!937137 res!1351013) b!3330883))

(declare-fun m!3672741 () Bool)

(assert (=> d!937137 m!3672741))

(declare-fun m!3672743 () Bool)

(assert (=> b!3330883 m!3672743))

(assert (=> b!3330804 d!937137))

(declare-fun b!3330887 () Bool)

(declare-fun e!2071424 () List!36811)

(assert (=> b!3330887 (= e!2071424 (++!8925 (list!13222 (left!28593 (c!565595 (charsOf!3350 (h!42109 tokens!494))))) (list!13222 (right!28923 (c!565595 (charsOf!3350 (h!42109 tokens!494)))))))))

(declare-fun b!3330886 () Bool)

(assert (=> b!3330886 (= e!2071424 (list!13225 (xs!14185 (c!565595 (charsOf!3350 (h!42109 tokens!494))))))))

(declare-fun b!3330884 () Bool)

(declare-fun e!2071423 () List!36811)

(assert (=> b!3330884 (= e!2071423 Nil!36687)))

(declare-fun d!937139 () Bool)

(declare-fun c!565668 () Bool)

(assert (=> d!937139 (= c!565668 ((_ is Empty!11047) (c!565595 (charsOf!3350 (h!42109 tokens!494)))))))

(assert (=> d!937139 (= (list!13222 (c!565595 (charsOf!3350 (h!42109 tokens!494)))) e!2071423)))

(declare-fun b!3330885 () Bool)

(assert (=> b!3330885 (= e!2071423 e!2071424)))

(declare-fun c!565669 () Bool)

(assert (=> b!3330885 (= c!565669 ((_ is Leaf!17326) (c!565595 (charsOf!3350 (h!42109 tokens!494)))))))

(assert (= (and d!937139 c!565668) b!3330884))

(assert (= (and d!937139 (not c!565668)) b!3330885))

(assert (= (and b!3330885 c!565669) b!3330886))

(assert (= (and b!3330885 (not c!565669)) b!3330887))

(declare-fun m!3672745 () Bool)

(assert (=> b!3330887 m!3672745))

(declare-fun m!3672747 () Bool)

(assert (=> b!3330887 m!3672747))

(assert (=> b!3330887 m!3672745))

(assert (=> b!3330887 m!3672747))

(declare-fun m!3672749 () Bool)

(assert (=> b!3330887 m!3672749))

(declare-fun m!3672751 () Bool)

(assert (=> b!3330886 m!3672751))

(assert (=> d!937025 d!937139))

(declare-fun e!2071426 () List!36811)

(declare-fun b!3330891 () Bool)

(assert (=> b!3330891 (= e!2071426 (++!8925 (list!13222 (left!28593 (c!565595 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241)))) (list!13222 (right!28923 (c!565595 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241))))))))

(declare-fun b!3330890 () Bool)

(assert (=> b!3330890 (= e!2071426 (list!13225 (xs!14185 (c!565595 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241)))))))

(declare-fun b!3330888 () Bool)

(declare-fun e!2071425 () List!36811)

(assert (=> b!3330888 (= e!2071425 Nil!36687)))

(declare-fun c!565670 () Bool)

(declare-fun d!937141 () Bool)

(assert (=> d!937141 (= c!565670 ((_ is Empty!11047) (c!565595 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241))))))

(assert (=> d!937141 (= (list!13222 (c!565595 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241))) e!2071425)))

(declare-fun b!3330889 () Bool)

(assert (=> b!3330889 (= e!2071425 e!2071426)))

(declare-fun c!565671 () Bool)

(assert (=> b!3330889 (= c!565671 ((_ is Leaf!17326) (c!565595 (printWithSeparatorToken!116 thiss!18206 lt!1132040 separatorToken!241))))))

(assert (= (and d!937141 c!565670) b!3330888))

(assert (= (and d!937141 (not c!565670)) b!3330889))

(assert (= (and b!3330889 c!565671) b!3330890))

(assert (= (and b!3330889 (not c!565671)) b!3330891))

(declare-fun m!3672753 () Bool)

(assert (=> b!3330891 m!3672753))

(declare-fun m!3672755 () Bool)

(assert (=> b!3330891 m!3672755))

(assert (=> b!3330891 m!3672753))

(assert (=> b!3330891 m!3672755))

(declare-fun m!3672757 () Bool)

(assert (=> b!3330891 m!3672757))

(declare-fun m!3672759 () Bool)

(assert (=> b!3330890 m!3672759))

(assert (=> d!936919 d!937141))

(declare-fun d!937143 () Bool)

(assert (=> d!937143 (= (get!11687 lt!1132145) (v!36227 lt!1132145))))

(assert (=> b!3330575 d!937143))

(declare-fun d!937145 () Bool)

(declare-fun dynLambda!15153 (Int BalanceConc!21708) TokenValue!5566)

(assert (=> d!937145 (= (apply!8481 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))) (seqFromList!3725 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132145))))) (dynLambda!15153 (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))) (seqFromList!3725 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132145))))))))

(declare-fun b_lambda!94135 () Bool)

(assert (=> (not b_lambda!94135) (not d!937145)))

(declare-fun tb!174595 () Bool)

(declare-fun t!257251 () Bool)

(assert (=> (and b!3330805 (= (toValue!7504 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257251) tb!174595))

(declare-fun result!217746 () Bool)

(assert (=> tb!174595 (= result!217746 (inv!21 (dynLambda!15153 (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))) (seqFromList!3725 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132145)))))))))

(declare-fun m!3672761 () Bool)

(assert (=> tb!174595 m!3672761))

(assert (=> d!937145 t!257251))

(declare-fun b_and!229791 () Bool)

(assert (= b_and!229767 (and (=> t!257251 result!217746) b_and!229791)))

(declare-fun t!257253 () Bool)

(declare-fun tb!174597 () Bool)

(assert (=> (and b!3330365 (= (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241))) (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257253) tb!174597))

(declare-fun result!217750 () Bool)

(assert (= result!217750 result!217746))

(assert (=> d!937145 t!257253))

(declare-fun b_and!229793 () Bool)

(assert (= b_and!229699 (and (=> t!257253 result!217750) b_and!229793)))

(declare-fun t!257255 () Bool)

(declare-fun tb!174599 () Bool)

(assert (=> (and b!3330357 (= (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257255) tb!174599))

(declare-fun result!217752 () Bool)

(assert (= result!217752 result!217746))

(assert (=> d!937145 t!257255))

(declare-fun b_and!229795 () Bool)

(assert (= b_and!229703 (and (=> t!257255 result!217752) b_and!229795)))

(declare-fun tb!174601 () Bool)

(declare-fun t!257257 () Bool)

(assert (=> (and b!3330794 (= (toValue!7504 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257257) tb!174601))

(declare-fun result!217754 () Bool)

(assert (= result!217754 result!217746))

(assert (=> d!937145 t!257257))

(declare-fun b_and!229797 () Bool)

(assert (= b_and!229763 (and (=> t!257257 result!217754) b_and!229797)))

(declare-fun tb!174603 () Bool)

(declare-fun t!257259 () Bool)

(assert (=> (and b!3330369 (= (toValue!7504 (transformation!5336 (h!42108 rules!2135))) (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257259) tb!174603))

(declare-fun result!217756 () Bool)

(assert (= result!217756 result!217746))

(assert (=> d!937145 t!257259))

(declare-fun b_and!229799 () Bool)

(assert (= b_and!229695 (and (=> t!257259 result!217756) b_and!229799)))

(assert (=> d!937145 m!3672357))

(declare-fun m!3672763 () Bool)

(assert (=> d!937145 m!3672763))

(assert (=> b!3330575 d!937145))

(declare-fun d!937147 () Bool)

(assert (=> d!937147 (= (seqFromList!3725 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132145)))) (fromListB!1650 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132145)))))))

(declare-fun bs!551344 () Bool)

(assert (= bs!551344 d!937147))

(declare-fun m!3672765 () Bool)

(assert (=> bs!551344 m!3672765))

(assert (=> b!3330575 d!937147))

(declare-fun d!937149 () Bool)

(assert (=> d!937149 (dynLambda!15147 lambda!119825 (h!42109 tokens!494))))

(assert (=> d!937149 true))

(declare-fun _$7!1194 () Unit!51698)

(assert (=> d!937149 (= (choose!19302 tokens!494 lambda!119825 (h!42109 tokens!494)) _$7!1194)))

(declare-fun b_lambda!94137 () Bool)

(assert (=> (not b_lambda!94137) (not d!937149)))

(declare-fun bs!551345 () Bool)

(assert (= bs!551345 d!937149))

(assert (=> bs!551345 m!3672229))

(assert (=> d!936971 d!937149))

(assert (=> d!936971 d!936975))

(declare-fun d!937151 () Bool)

(declare-fun res!1351026 () Bool)

(declare-fun e!2071434 () Bool)

(assert (=> d!937151 (=> res!1351026 e!2071434)))

(assert (=> d!937151 (= res!1351026 ((_ is Nil!36689) (t!257170 tokens!494)))))

(assert (=> d!937151 (= (forall!7665 (t!257170 tokens!494) lambda!119825) e!2071434)))

(declare-fun b!3330906 () Bool)

(declare-fun e!2071435 () Bool)

(assert (=> b!3330906 (= e!2071434 e!2071435)))

(declare-fun res!1351027 () Bool)

(assert (=> b!3330906 (=> (not res!1351027) (not e!2071435))))

(assert (=> b!3330906 (= res!1351027 (dynLambda!15147 lambda!119825 (h!42109 (t!257170 tokens!494))))))

(declare-fun b!3330907 () Bool)

(assert (=> b!3330907 (= e!2071435 (forall!7665 (t!257170 (t!257170 tokens!494)) lambda!119825))))

(assert (= (and d!937151 (not res!1351026)) b!3330906))

(assert (= (and b!3330906 res!1351027) b!3330907))

(declare-fun b_lambda!94139 () Bool)

(assert (=> (not b_lambda!94139) (not b!3330906)))

(declare-fun m!3672767 () Bool)

(assert (=> b!3330906 m!3672767))

(declare-fun m!3672769 () Bool)

(assert (=> b!3330907 m!3672769))

(assert (=> b!3330486 d!937151))

(declare-fun b!3330954 () Bool)

(declare-fun e!2071460 () Bool)

(declare-fun nullable!3425 (Regex!10095) Bool)

(assert (=> b!3330954 (= e!2071460 (nullable!3425 (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))))))

(declare-fun b!3330955 () Bool)

(declare-fun e!2071462 () Bool)

(declare-fun e!2071459 () Bool)

(assert (=> b!3330955 (= e!2071462 e!2071459)))

(declare-fun res!1351061 () Bool)

(assert (=> b!3330955 (=> res!1351061 e!2071459)))

(declare-fun call!241418 () Bool)

(assert (=> b!3330955 (= res!1351061 call!241418)))

(declare-fun b!3330956 () Bool)

(declare-fun res!1351060 () Bool)

(declare-fun e!2071461 () Bool)

(assert (=> b!3330956 (=> res!1351060 e!2071461)))

(declare-fun e!2071458 () Bool)

(assert (=> b!3330956 (= res!1351060 e!2071458)))

(declare-fun res!1351058 () Bool)

(assert (=> b!3330956 (=> (not res!1351058) (not e!2071458))))

(declare-fun lt!1132232 () Bool)

(assert (=> b!3330956 (= res!1351058 lt!1132232)))

(declare-fun b!3330957 () Bool)

(declare-fun res!1351059 () Bool)

(assert (=> b!3330957 (=> res!1351059 e!2071461)))

(assert (=> b!3330957 (= res!1351059 (not ((_ is ElementMatch!10095) (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))))))

(declare-fun e!2071456 () Bool)

(assert (=> b!3330957 (= e!2071456 e!2071461)))

(declare-fun b!3330958 () Bool)

(declare-fun head!7166 (List!36811) C!20376)

(assert (=> b!3330958 (= e!2071459 (not (= (head!7166 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))) (c!565594 (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))))))))

(declare-fun b!3330959 () Bool)

(declare-fun res!1351054 () Bool)

(assert (=> b!3330959 (=> (not res!1351054) (not e!2071458))))

(assert (=> b!3330959 (= res!1351054 (not call!241418))))

(declare-fun b!3330960 () Bool)

(declare-fun e!2071457 () Bool)

(assert (=> b!3330960 (= e!2071457 e!2071456)))

(declare-fun c!565680 () Bool)

(assert (=> b!3330960 (= c!565680 ((_ is EmptyLang!10095) (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))))))

(declare-fun d!937153 () Bool)

(assert (=> d!937153 e!2071457))

(declare-fun c!565682 () Bool)

(assert (=> d!937153 (= c!565682 ((_ is EmptyExpr!10095) (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))))))

(assert (=> d!937153 (= lt!1132232 e!2071460)))

(declare-fun c!565681 () Bool)

(assert (=> d!937153 (= c!565681 (isEmpty!20855 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))))))

(declare-fun validRegex!4581 (Regex!10095) Bool)

(assert (=> d!937153 (validRegex!4581 (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))))

(assert (=> d!937153 (= (matchR!4687 (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))) (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))) lt!1132232)))

(declare-fun b!3330961 () Bool)

(assert (=> b!3330961 (= e!2071461 e!2071462)))

(declare-fun res!1351056 () Bool)

(assert (=> b!3330961 (=> (not res!1351056) (not e!2071462))))

(assert (=> b!3330961 (= res!1351056 (not lt!1132232))))

(declare-fun b!3330962 () Bool)

(assert (=> b!3330962 (= e!2071458 (= (head!7166 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))) (c!565594 (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))))))

(declare-fun b!3330963 () Bool)

(declare-fun res!1351057 () Bool)

(assert (=> b!3330963 (=> res!1351057 e!2071459)))

(assert (=> b!3330963 (= res!1351057 (not (isEmpty!20855 (tail!5305 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))))))))

(declare-fun b!3330964 () Bool)

(assert (=> b!3330964 (= e!2071457 (= lt!1132232 call!241418))))

(declare-fun b!3330965 () Bool)

(declare-fun derivativeStep!2978 (Regex!10095 C!20376) Regex!10095)

(assert (=> b!3330965 (= e!2071460 (matchR!4687 (derivativeStep!2978 (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))) (head!7166 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145)))))) (tail!5305 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145)))))))))

(declare-fun bm!241413 () Bool)

(assert (=> bm!241413 (= call!241418 (isEmpty!20855 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))))))

(declare-fun b!3330966 () Bool)

(declare-fun res!1351055 () Bool)

(assert (=> b!3330966 (=> (not res!1351055) (not e!2071458))))

(assert (=> b!3330966 (= res!1351055 (isEmpty!20855 (tail!5305 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145)))))))))

(declare-fun b!3330967 () Bool)

(assert (=> b!3330967 (= e!2071456 (not lt!1132232))))

(assert (= (and d!937153 c!565681) b!3330954))

(assert (= (and d!937153 (not c!565681)) b!3330965))

(assert (= (and d!937153 c!565682) b!3330964))

(assert (= (and d!937153 (not c!565682)) b!3330960))

(assert (= (and b!3330960 c!565680) b!3330967))

(assert (= (and b!3330960 (not c!565680)) b!3330957))

(assert (= (and b!3330957 (not res!1351059)) b!3330956))

(assert (= (and b!3330956 res!1351058) b!3330959))

(assert (= (and b!3330959 res!1351054) b!3330966))

(assert (= (and b!3330966 res!1351055) b!3330962))

(assert (= (and b!3330956 (not res!1351060)) b!3330961))

(assert (= (and b!3330961 res!1351056) b!3330955))

(assert (= (and b!3330955 (not res!1351061)) b!3330963))

(assert (= (and b!3330963 (not res!1351057)) b!3330958))

(assert (= (or b!3330964 b!3330955 b!3330959) bm!241413))

(assert (=> b!3330963 m!3672363))

(declare-fun m!3672819 () Bool)

(assert (=> b!3330963 m!3672819))

(assert (=> b!3330963 m!3672819))

(declare-fun m!3672821 () Bool)

(assert (=> b!3330963 m!3672821))

(declare-fun m!3672823 () Bool)

(assert (=> b!3330954 m!3672823))

(assert (=> b!3330958 m!3672363))

(declare-fun m!3672825 () Bool)

(assert (=> b!3330958 m!3672825))

(assert (=> d!937153 m!3672363))

(declare-fun m!3672827 () Bool)

(assert (=> d!937153 m!3672827))

(declare-fun m!3672829 () Bool)

(assert (=> d!937153 m!3672829))

(assert (=> b!3330966 m!3672363))

(assert (=> b!3330966 m!3672819))

(assert (=> b!3330966 m!3672819))

(assert (=> b!3330966 m!3672821))

(assert (=> b!3330962 m!3672363))

(assert (=> b!3330962 m!3672825))

(assert (=> bm!241413 m!3672363))

(assert (=> bm!241413 m!3672827))

(assert (=> b!3330965 m!3672363))

(assert (=> b!3330965 m!3672825))

(assert (=> b!3330965 m!3672825))

(declare-fun m!3672835 () Bool)

(assert (=> b!3330965 m!3672835))

(assert (=> b!3330965 m!3672363))

(assert (=> b!3330965 m!3672819))

(assert (=> b!3330965 m!3672835))

(assert (=> b!3330965 m!3672819))

(declare-fun m!3672841 () Bool)

(assert (=> b!3330965 m!3672841))

(assert (=> b!3330571 d!937153))

(assert (=> b!3330571 d!937143))

(declare-fun d!937175 () Bool)

(assert (=> d!937175 (= (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145)))) (list!13222 (c!565595 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))))))

(declare-fun bs!551352 () Bool)

(assert (= bs!551352 d!937175))

(declare-fun m!3672843 () Bool)

(assert (=> bs!551352 m!3672843))

(assert (=> b!3330571 d!937175))

(declare-fun d!937177 () Bool)

(declare-fun lt!1132234 () BalanceConc!21708)

(assert (=> d!937177 (= (list!13219 lt!1132234) (originalCharacters!6050 (_1!21234 (get!11687 lt!1132145))))))

(assert (=> d!937177 (= lt!1132234 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))) (value!172536 (_1!21234 (get!11687 lt!1132145)))))))

(assert (=> d!937177 (= (charsOf!3350 (_1!21234 (get!11687 lt!1132145))) lt!1132234)))

(declare-fun b_lambda!94143 () Bool)

(assert (=> (not b_lambda!94143) (not d!937177)))

(declare-fun t!257271 () Bool)

(declare-fun tb!174615 () Bool)

(assert (=> (and b!3330794 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257271) tb!174615))

(declare-fun b!3330973 () Bool)

(declare-fun e!2071466 () Bool)

(declare-fun tp!1040977 () Bool)

(assert (=> b!3330973 (= e!2071466 (and (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))) (value!172536 (_1!21234 (get!11687 lt!1132145)))))) tp!1040977))))

(declare-fun result!217768 () Bool)

(assert (=> tb!174615 (= result!217768 (and (inv!49707 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145))))) (value!172536 (_1!21234 (get!11687 lt!1132145))))) e!2071466))))

(assert (= tb!174615 b!3330973))

(declare-fun m!3672855 () Bool)

(assert (=> b!3330973 m!3672855))

(declare-fun m!3672857 () Bool)

(assert (=> tb!174615 m!3672857))

(assert (=> d!937177 t!257271))

(declare-fun b_and!229811 () Bool)

(assert (= b_and!229765 (and (=> t!257271 result!217768) b_and!229811)))

(declare-fun t!257273 () Bool)

(declare-fun tb!174617 () Bool)

(assert (=> (and b!3330805 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257273) tb!174617))

(declare-fun result!217770 () Bool)

(assert (= result!217770 result!217768))

(assert (=> d!937177 t!257273))

(declare-fun b_and!229813 () Bool)

(assert (= b_and!229769 (and (=> t!257273 result!217770) b_and!229813)))

(declare-fun tb!174621 () Bool)

(declare-fun t!257277 () Bool)

(assert (=> (and b!3330369 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257277) tb!174621))

(declare-fun result!217774 () Bool)

(assert (= result!217774 result!217768))

(assert (=> d!937177 t!257277))

(declare-fun b_and!229815 () Bool)

(assert (= b_and!229737 (and (=> t!257277 result!217774) b_and!229815)))

(declare-fun tb!174623 () Bool)

(declare-fun t!257279 () Bool)

(assert (=> (and b!3330365 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257279) tb!174623))

(declare-fun result!217776 () Bool)

(assert (= result!217776 result!217768))

(assert (=> d!937177 t!257279))

(declare-fun b_and!229817 () Bool)

(assert (= b_and!229739 (and (=> t!257279 result!217776) b_and!229817)))

(declare-fun t!257281 () Bool)

(declare-fun tb!174625 () Bool)

(assert (=> (and b!3330357 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257281) tb!174625))

(declare-fun result!217778 () Bool)

(assert (= result!217778 result!217768))

(assert (=> d!937177 t!257281))

(declare-fun b_and!229819 () Bool)

(assert (= b_and!229741 (and (=> t!257281 result!217778) b_and!229819)))

(declare-fun m!3672863 () Bool)

(assert (=> d!937177 m!3672863))

(declare-fun m!3672865 () Bool)

(assert (=> d!937177 m!3672865))

(assert (=> b!3330571 d!937177))

(declare-fun d!937183 () Bool)

(declare-fun lt!1132237 () Int)

(assert (=> d!937183 (>= lt!1132237 0)))

(declare-fun e!2071470 () Int)

(assert (=> d!937183 (= lt!1132237 e!2071470)))

(declare-fun c!565686 () Bool)

(assert (=> d!937183 (= c!565686 ((_ is Nil!36687) (_2!21234 (get!11687 lt!1132145))))))

(assert (=> d!937183 (= (size!27742 (_2!21234 (get!11687 lt!1132145))) lt!1132237)))

(declare-fun b!3330979 () Bool)

(assert (=> b!3330979 (= e!2071470 0)))

(declare-fun b!3330980 () Bool)

(assert (=> b!3330980 (= e!2071470 (+ 1 (size!27742 (t!257168 (_2!21234 (get!11687 lt!1132145))))))))

(assert (= (and d!937183 c!565686) b!3330979))

(assert (= (and d!937183 (not c!565686)) b!3330980))

(declare-fun m!3672879 () Bool)

(assert (=> b!3330980 m!3672879))

(assert (=> b!3330573 d!937183))

(assert (=> b!3330573 d!937143))

(declare-fun d!937193 () Bool)

(declare-fun lt!1132238 () Int)

(assert (=> d!937193 (>= lt!1132238 0)))

(declare-fun e!2071471 () Int)

(assert (=> d!937193 (= lt!1132238 e!2071471)))

(declare-fun c!565687 () Bool)

(assert (=> d!937193 (= c!565687 ((_ is Nil!36687) lt!1132041))))

(assert (=> d!937193 (= (size!27742 lt!1132041) lt!1132238)))

(declare-fun b!3330981 () Bool)

(assert (=> b!3330981 (= e!2071471 0)))

(declare-fun b!3330982 () Bool)

(assert (=> b!3330982 (= e!2071471 (+ 1 (size!27742 (t!257168 lt!1132041))))))

(assert (= (and d!937193 c!565687) b!3330981))

(assert (= (and d!937193 (not c!565687)) b!3330982))

(declare-fun m!3672881 () Bool)

(assert (=> b!3330982 m!3672881))

(assert (=> b!3330573 d!937193))

(declare-fun d!937195 () Bool)

(declare-fun lt!1132241 () Bool)

(declare-fun content!5018 (List!36813) (InoxSet Token!10038))

(assert (=> d!937195 (= lt!1132241 (select (content!5018 tokens!494) (h!42109 tokens!494)))))

(declare-fun e!2071479 () Bool)

(assert (=> d!937195 (= lt!1132241 e!2071479)))

(declare-fun res!1351068 () Bool)

(assert (=> d!937195 (=> (not res!1351068) (not e!2071479))))

(assert (=> d!937195 (= res!1351068 ((_ is Cons!36689) tokens!494))))

(assert (=> d!937195 (= (contains!6656 tokens!494 (h!42109 tokens!494)) lt!1132241)))

(declare-fun b!3330993 () Bool)

(declare-fun e!2071480 () Bool)

(assert (=> b!3330993 (= e!2071479 e!2071480)))

(declare-fun res!1351069 () Bool)

(assert (=> b!3330993 (=> res!1351069 e!2071480)))

(assert (=> b!3330993 (= res!1351069 (= (h!42109 tokens!494) (h!42109 tokens!494)))))

(declare-fun b!3330994 () Bool)

(assert (=> b!3330994 (= e!2071480 (contains!6656 (t!257170 tokens!494) (h!42109 tokens!494)))))

(assert (= (and d!937195 res!1351068) b!3330993))

(assert (= (and b!3330993 (not res!1351069)) b!3330994))

(declare-fun m!3672887 () Bool)

(assert (=> d!937195 m!3672887))

(declare-fun m!3672889 () Bool)

(assert (=> d!937195 m!3672889))

(declare-fun m!3672891 () Bool)

(assert (=> b!3330994 m!3672891))

(assert (=> b!3330465 d!937195))

(declare-fun d!937197 () Bool)

(assert (=> d!937197 (= (isEmpty!20863 lt!1132145) (not ((_ is Some!7319) lt!1132145)))))

(assert (=> d!937011 d!937197))

(declare-fun b!3331005 () Bool)

(declare-fun e!2071488 () Bool)

(assert (=> b!3331005 (= e!2071488 (isPrefix!2816 (tail!5305 lt!1132041) (tail!5305 lt!1132041)))))

(declare-fun b!3331003 () Bool)

(declare-fun e!2071489 () Bool)

(assert (=> b!3331003 (= e!2071489 e!2071488)))

(declare-fun res!1351078 () Bool)

(assert (=> b!3331003 (=> (not res!1351078) (not e!2071488))))

(assert (=> b!3331003 (= res!1351078 (not ((_ is Nil!36687) lt!1132041)))))

(declare-fun b!3331006 () Bool)

(declare-fun e!2071487 () Bool)

(assert (=> b!3331006 (= e!2071487 (>= (size!27742 lt!1132041) (size!27742 lt!1132041)))))

(declare-fun b!3331004 () Bool)

(declare-fun res!1351079 () Bool)

(assert (=> b!3331004 (=> (not res!1351079) (not e!2071488))))

(assert (=> b!3331004 (= res!1351079 (= (head!7166 lt!1132041) (head!7166 lt!1132041)))))

(declare-fun d!937199 () Bool)

(assert (=> d!937199 e!2071487))

(declare-fun res!1351080 () Bool)

(assert (=> d!937199 (=> res!1351080 e!2071487)))

(declare-fun lt!1132244 () Bool)

(assert (=> d!937199 (= res!1351080 (not lt!1132244))))

(assert (=> d!937199 (= lt!1132244 e!2071489)))

(declare-fun res!1351081 () Bool)

(assert (=> d!937199 (=> res!1351081 e!2071489)))

(assert (=> d!937199 (= res!1351081 ((_ is Nil!36687) lt!1132041))))

(assert (=> d!937199 (= (isPrefix!2816 lt!1132041 lt!1132041) lt!1132244)))

(assert (= (and d!937199 (not res!1351081)) b!3331003))

(assert (= (and b!3331003 res!1351078) b!3331004))

(assert (= (and b!3331004 res!1351079) b!3331005))

(assert (= (and d!937199 (not res!1351080)) b!3331006))

(assert (=> b!3331005 m!3672347))

(assert (=> b!3331005 m!3672347))

(assert (=> b!3331005 m!3672347))

(assert (=> b!3331005 m!3672347))

(declare-fun m!3672901 () Bool)

(assert (=> b!3331005 m!3672901))

(assert (=> b!3331006 m!3672115))

(assert (=> b!3331006 m!3672115))

(declare-fun m!3672903 () Bool)

(assert (=> b!3331004 m!3672903))

(assert (=> b!3331004 m!3672903))

(assert (=> d!937011 d!937199))

(declare-fun d!937205 () Bool)

(assert (=> d!937205 (isPrefix!2816 lt!1132041 lt!1132041)))

(declare-fun lt!1132247 () Unit!51698)

(declare-fun choose!19306 (List!36811 List!36811) Unit!51698)

(assert (=> d!937205 (= lt!1132247 (choose!19306 lt!1132041 lt!1132041))))

(assert (=> d!937205 (= (lemmaIsPrefixRefl!1775 lt!1132041 lt!1132041) lt!1132247)))

(declare-fun bs!551357 () Bool)

(assert (= bs!551357 d!937205))

(assert (=> bs!551357 m!3672377))

(declare-fun m!3672905 () Bool)

(assert (=> bs!551357 m!3672905))

(assert (=> d!937011 d!937205))

(declare-fun d!937207 () Bool)

(assert (=> d!937207 true))

(declare-fun lt!1132250 () Bool)

(declare-fun lambda!119844 () Int)

(declare-fun forall!7668 (List!36812 Int) Bool)

(assert (=> d!937207 (= lt!1132250 (forall!7668 rules!2135 lambda!119844))))

(declare-fun e!2071494 () Bool)

(assert (=> d!937207 (= lt!1132250 e!2071494)))

(declare-fun res!1351086 () Bool)

(assert (=> d!937207 (=> res!1351086 e!2071494)))

(assert (=> d!937207 (= res!1351086 (not ((_ is Cons!36688) rules!2135)))))

(assert (=> d!937207 (= (rulesValidInductive!1823 thiss!18206 rules!2135) lt!1132250)))

(declare-fun b!3331011 () Bool)

(declare-fun e!2071495 () Bool)

(assert (=> b!3331011 (= e!2071494 e!2071495)))

(declare-fun res!1351087 () Bool)

(assert (=> b!3331011 (=> (not res!1351087) (not e!2071495))))

(declare-fun ruleValid!1681 (LexerInterface!4925 Rule!10472) Bool)

(assert (=> b!3331011 (= res!1351087 (ruleValid!1681 thiss!18206 (h!42108 rules!2135)))))

(declare-fun b!3331012 () Bool)

(assert (=> b!3331012 (= e!2071495 (rulesValidInductive!1823 thiss!18206 (t!257169 rules!2135)))))

(assert (= (and d!937207 (not res!1351086)) b!3331011))

(assert (= (and b!3331011 res!1351087) b!3331012))

(declare-fun m!3672907 () Bool)

(assert (=> d!937207 m!3672907))

(declare-fun m!3672909 () Bool)

(assert (=> b!3331011 m!3672909))

(declare-fun m!3672911 () Bool)

(assert (=> b!3331012 m!3672911))

(assert (=> d!937011 d!937207))

(declare-fun d!937209 () Bool)

(assert (=> d!937209 true))

(declare-fun lambda!119847 () Int)

(declare-fun order!19223 () Int)

(declare-fun dynLambda!15155 (Int Int) Int)

(assert (=> d!937209 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) (dynLambda!15155 order!19223 lambda!119847))))

(declare-fun Forall2!906 (Int) Bool)

(assert (=> d!937209 (= (equivClasses!2116 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) (Forall2!906 lambda!119847))))

(declare-fun bs!551358 () Bool)

(assert (= bs!551358 d!937209))

(declare-fun m!3672913 () Bool)

(assert (=> bs!551358 m!3672913))

(assert (=> b!3330428 d!937209))

(declare-fun d!937211 () Bool)

(declare-fun isBalanced!3321 (Conc!11047) Bool)

(assert (=> d!937211 (= (inv!49707 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))) (isBalanced!3321 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))))))

(declare-fun bs!551359 () Bool)

(assert (= bs!551359 d!937211))

(declare-fun m!3672915 () Bool)

(assert (=> bs!551359 m!3672915))

(assert (=> tb!174553 d!937211))

(declare-fun d!937213 () Bool)

(assert (=> d!937213 (= (list!13219 (_2!21235 lt!1132157)) (list!13222 (c!565595 (_2!21235 lt!1132157))))))

(declare-fun bs!551360 () Bool)

(assert (= bs!551360 d!937213))

(declare-fun m!3672917 () Bool)

(assert (=> bs!551360 m!3672917))

(assert (=> b!3330595 d!937213))

(declare-fun b!3331059 () Bool)

(declare-fun e!2071528 () tuple2!36206)

(assert (=> b!3331059 (= e!2071528 (tuple2!36207 Nil!36689 (list!13219 (seqFromList!3725 lt!1132041))))))

(declare-fun b!3331060 () Bool)

(declare-fun lt!1132289 () Option!7320)

(declare-fun lt!1132287 () tuple2!36206)

(assert (=> b!3331060 (= e!2071528 (tuple2!36207 (Cons!36689 (_1!21234 (v!36227 lt!1132289)) (_1!21237 lt!1132287)) (_2!21237 lt!1132287)))))

(assert (=> b!3331060 (= lt!1132287 (lexList!1380 thiss!18206 rules!2135 (_2!21234 (v!36227 lt!1132289))))))

(declare-fun b!3331061 () Bool)

(declare-fun e!2071527 () Bool)

(declare-fun e!2071526 () Bool)

(assert (=> b!3331061 (= e!2071527 e!2071526)))

(declare-fun res!1351114 () Bool)

(declare-fun lt!1132288 () tuple2!36206)

(assert (=> b!3331061 (= res!1351114 (< (size!27742 (_2!21237 lt!1132288)) (size!27742 (list!13219 (seqFromList!3725 lt!1132041)))))))

(assert (=> b!3331061 (=> (not res!1351114) (not e!2071526))))

(declare-fun d!937215 () Bool)

(assert (=> d!937215 e!2071527))

(declare-fun c!565699 () Bool)

(declare-fun size!27748 (List!36813) Int)

(assert (=> d!937215 (= c!565699 (> (size!27748 (_1!21237 lt!1132288)) 0))))

(assert (=> d!937215 (= lt!1132288 e!2071528)))

(declare-fun c!565698 () Bool)

(assert (=> d!937215 (= c!565698 ((_ is Some!7319) lt!1132289))))

(assert (=> d!937215 (= lt!1132289 (maxPrefix!2525 thiss!18206 rules!2135 (list!13219 (seqFromList!3725 lt!1132041))))))

(assert (=> d!937215 (= (lexList!1380 thiss!18206 rules!2135 (list!13219 (seqFromList!3725 lt!1132041))) lt!1132288)))

(declare-fun b!3331062 () Bool)

(assert (=> b!3331062 (= e!2071527 (= (_2!21237 lt!1132288) (list!13219 (seqFromList!3725 lt!1132041))))))

(declare-fun b!3331063 () Bool)

(assert (=> b!3331063 (= e!2071526 (not (isEmpty!20864 (_1!21237 lt!1132288))))))

(assert (= (and d!937215 c!565698) b!3331060))

(assert (= (and d!937215 (not c!565698)) b!3331059))

(assert (= (and d!937215 c!565699) b!3331061))

(assert (= (and d!937215 (not c!565699)) b!3331062))

(assert (= (and b!3331061 res!1351114) b!3331063))

(declare-fun m!3672971 () Bool)

(assert (=> b!3331060 m!3672971))

(declare-fun m!3672973 () Bool)

(assert (=> b!3331061 m!3672973))

(assert (=> b!3331061 m!3672405))

(declare-fun m!3672975 () Bool)

(assert (=> b!3331061 m!3672975))

(declare-fun m!3672977 () Bool)

(assert (=> d!937215 m!3672977))

(assert (=> d!937215 m!3672405))

(declare-fun m!3672979 () Bool)

(assert (=> d!937215 m!3672979))

(declare-fun m!3672981 () Bool)

(assert (=> b!3331063 m!3672981))

(assert (=> b!3330595 d!937215))

(declare-fun d!937233 () Bool)

(assert (=> d!937233 (= (list!13219 (seqFromList!3725 lt!1132041)) (list!13222 (c!565595 (seqFromList!3725 lt!1132041))))))

(declare-fun bs!551363 () Bool)

(assert (= bs!551363 d!937233))

(declare-fun m!3672983 () Bool)

(assert (=> bs!551363 m!3672983))

(assert (=> b!3330595 d!937233))

(declare-fun d!937235 () Bool)

(declare-fun e!2071542 () Bool)

(assert (=> d!937235 e!2071542))

(declare-fun res!1351123 () Bool)

(assert (=> d!937235 (=> (not res!1351123) (not e!2071542))))

(declare-fun lt!1132292 () BalanceConc!21708)

(assert (=> d!937235 (= res!1351123 (= (list!13219 lt!1132292) lt!1132041))))

(declare-fun fromList!686 (List!36811) Conc!11047)

(assert (=> d!937235 (= lt!1132292 (BalanceConc!21709 (fromList!686 lt!1132041)))))

(assert (=> d!937235 (= (fromListB!1650 lt!1132041) lt!1132292)))

(declare-fun b!3331082 () Bool)

(assert (=> b!3331082 (= e!2071542 (isBalanced!3321 (fromList!686 lt!1132041)))))

(assert (= (and d!937235 res!1351123) b!3331082))

(declare-fun m!3672989 () Bool)

(assert (=> d!937235 m!3672989))

(declare-fun m!3672991 () Bool)

(assert (=> d!937235 m!3672991))

(assert (=> b!3331082 m!3672991))

(assert (=> b!3331082 m!3672991))

(declare-fun m!3672993 () Bool)

(assert (=> b!3331082 m!3672993))

(assert (=> d!937023 d!937235))

(declare-fun d!937239 () Bool)

(declare-fun charsToInt!0 (List!36810) (_ BitVec 32))

(assert (=> d!937239 (= (inv!16 (value!172536 (h!42109 tokens!494))) (= (charsToInt!0 (text!39409 (value!172536 (h!42109 tokens!494)))) (value!172527 (value!172536 (h!42109 tokens!494)))))))

(declare-fun bs!551364 () Bool)

(assert (= bs!551364 d!937239))

(declare-fun m!3672995 () Bool)

(assert (=> bs!551364 m!3672995))

(assert (=> b!3330476 d!937239))

(declare-fun d!937241 () Bool)

(declare-fun e!2071549 () Bool)

(assert (=> d!937241 e!2071549))

(declare-fun res!1351126 () Bool)

(assert (=> d!937241 (=> (not res!1351126) (not e!2071549))))

(declare-fun lt!1132295 () BalanceConc!21710)

(assert (=> d!937241 (= res!1351126 (= (list!13223 lt!1132295) tokens!494))))

(declare-fun fromList!687 (List!36813) Conc!11048)

(assert (=> d!937241 (= lt!1132295 (BalanceConc!21711 (fromList!687 tokens!494)))))

(assert (=> d!937241 (= (fromListB!1651 tokens!494) lt!1132295)))

(declare-fun b!3331093 () Bool)

(assert (=> b!3331093 (= e!2071549 (isBalanced!3318 (fromList!687 tokens!494)))))

(assert (= (and d!937241 res!1351126) b!3331093))

(declare-fun m!3673007 () Bool)

(assert (=> d!937241 m!3673007))

(declare-fun m!3673009 () Bool)

(assert (=> d!937241 m!3673009))

(assert (=> b!3331093 m!3673009))

(assert (=> b!3331093 m!3673009))

(declare-fun m!3673011 () Bool)

(assert (=> b!3331093 m!3673011))

(assert (=> d!937075 d!937241))

(declare-fun d!937247 () Bool)

(assert (=> d!937247 (= (list!13219 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))) (list!13222 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))))))

(declare-fun bs!551367 () Bool)

(assert (= bs!551367 d!937247))

(declare-fun m!3673013 () Bool)

(assert (=> bs!551367 m!3673013))

(assert (=> b!3330580 d!937247))

(declare-fun d!937249 () Bool)

(declare-fun c!565713 () Bool)

(assert (=> d!937249 (= c!565713 ((_ is Nil!36687) lt!1132048))))

(declare-fun e!2071552 () (InoxSet C!20376))

(assert (=> d!937249 (= (content!5016 lt!1132048) e!2071552)))

(declare-fun b!3331098 () Bool)

(assert (=> b!3331098 (= e!2071552 ((as const (Array C!20376 Bool)) false))))

(declare-fun b!3331099 () Bool)

(assert (=> b!3331099 (= e!2071552 ((_ map or) (store ((as const (Array C!20376 Bool)) false) (h!42107 lt!1132048) true) (content!5016 (t!257168 lt!1132048))))))

(assert (= (and d!937249 c!565713) b!3331098))

(assert (= (and d!937249 (not c!565713)) b!3331099))

(declare-fun m!3673015 () Bool)

(assert (=> b!3331099 m!3673015))

(declare-fun m!3673017 () Bool)

(assert (=> b!3331099 m!3673017))

(assert (=> d!936925 d!937249))

(declare-fun d!937251 () Bool)

(declare-fun c!565714 () Bool)

(assert (=> d!937251 (= c!565714 ((_ is Nil!36687) lt!1132041))))

(declare-fun e!2071553 () (InoxSet C!20376))

(assert (=> d!937251 (= (content!5016 lt!1132041) e!2071553)))

(declare-fun b!3331100 () Bool)

(assert (=> b!3331100 (= e!2071553 ((as const (Array C!20376 Bool)) false))))

(declare-fun b!3331101 () Bool)

(assert (=> b!3331101 (= e!2071553 ((_ map or) (store ((as const (Array C!20376 Bool)) false) (h!42107 lt!1132041) true) (content!5016 (t!257168 lt!1132041))))))

(assert (= (and d!937251 c!565714) b!3331100))

(assert (= (and d!937251 (not c!565714)) b!3331101))

(declare-fun m!3673019 () Bool)

(assert (=> b!3331101 m!3673019))

(declare-fun m!3673021 () Bool)

(assert (=> b!3331101 m!3673021))

(assert (=> d!936925 d!937251))

(declare-fun d!937253 () Bool)

(declare-fun c!565715 () Bool)

(assert (=> d!937253 (= c!565715 ((_ is Nil!36687) (list!13219 (charsOf!3350 separatorToken!241))))))

(declare-fun e!2071554 () (InoxSet C!20376))

(assert (=> d!937253 (= (content!5016 (list!13219 (charsOf!3350 separatorToken!241))) e!2071554)))

(declare-fun b!3331102 () Bool)

(assert (=> b!3331102 (= e!2071554 ((as const (Array C!20376 Bool)) false))))

(declare-fun b!3331103 () Bool)

(assert (=> b!3331103 (= e!2071554 ((_ map or) (store ((as const (Array C!20376 Bool)) false) (h!42107 (list!13219 (charsOf!3350 separatorToken!241))) true) (content!5016 (t!257168 (list!13219 (charsOf!3350 separatorToken!241))))))))

(assert (= (and d!937253 c!565715) b!3331102))

(assert (= (and d!937253 (not c!565715)) b!3331103))

(declare-fun m!3673023 () Bool)

(assert (=> b!3331103 m!3673023))

(declare-fun m!3673025 () Bool)

(assert (=> b!3331103 m!3673025))

(assert (=> d!936925 d!937253))

(declare-fun bs!551368 () Bool)

(declare-fun d!937255 () Bool)

(assert (= bs!551368 (and d!937255 d!937209)))

(declare-fun lambda!119852 () Int)

(assert (=> bs!551368 (= (= (toValue!7504 (transformation!5336 (h!42108 rules!2135))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) (= lambda!119852 lambda!119847))))

(assert (=> d!937255 true))

(assert (=> d!937255 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (h!42108 rules!2135)))) (dynLambda!15155 order!19223 lambda!119852))))

(assert (=> d!937255 (= (equivClasses!2116 (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toValue!7504 (transformation!5336 (h!42108 rules!2135)))) (Forall2!906 lambda!119852))))

(declare-fun bs!551369 () Bool)

(assert (= bs!551369 d!937255))

(declare-fun m!3673027 () Bool)

(assert (=> bs!551369 m!3673027))

(assert (=> b!3330462 d!937255))

(declare-fun d!937257 () Bool)

(assert (=> d!937257 (= (inv!49699 (tag!5888 (rule!7860 (h!42109 (t!257170 tokens!494))))) (= (mod (str.len (value!172535 (tag!5888 (rule!7860 (h!42109 (t!257170 tokens!494)))))) 2) 0))))

(assert (=> b!3330793 d!937257))

(declare-fun d!937259 () Bool)

(declare-fun res!1351127 () Bool)

(declare-fun e!2071555 () Bool)

(assert (=> d!937259 (=> (not res!1351127) (not e!2071555))))

(assert (=> d!937259 (= res!1351127 (semiInverseModEq!2217 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))))))

(assert (=> d!937259 (= (inv!49702 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) e!2071555)))

(declare-fun b!3331104 () Bool)

(assert (=> b!3331104 (= e!2071555 (equivClasses!2116 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))))))

(assert (= (and d!937259 res!1351127) b!3331104))

(declare-fun m!3673029 () Bool)

(assert (=> d!937259 m!3673029))

(declare-fun m!3673031 () Bool)

(assert (=> b!3331104 m!3673031))

(assert (=> b!3330793 d!937259))

(declare-fun d!937261 () Bool)

(declare-fun lt!1132296 () Int)

(assert (=> d!937261 (>= lt!1132296 0)))

(declare-fun e!2071556 () Int)

(assert (=> d!937261 (= lt!1132296 e!2071556)))

(declare-fun c!565716 () Bool)

(assert (=> d!937261 (= c!565716 ((_ is Nil!36687) (originalCharacters!6050 (h!42109 tokens!494))))))

(assert (=> d!937261 (= (size!27742 (originalCharacters!6050 (h!42109 tokens!494))) lt!1132296)))

(declare-fun b!3331105 () Bool)

(assert (=> b!3331105 (= e!2071556 0)))

(declare-fun b!3331106 () Bool)

(assert (=> b!3331106 (= e!2071556 (+ 1 (size!27742 (t!257168 (originalCharacters!6050 (h!42109 tokens!494))))))))

(assert (= (and d!937261 c!565716) b!3331105))

(assert (= (and d!937261 (not c!565716)) b!3331106))

(declare-fun m!3673033 () Bool)

(assert (=> b!3331106 m!3673033))

(assert (=> b!3330542 d!937261))

(declare-fun d!937263 () Bool)

(assert (=> d!937263 (= (isEmpty!20855 (originalCharacters!6050 separatorToken!241)) ((_ is Nil!36687) (originalCharacters!6050 separatorToken!241)))))

(assert (=> d!937015 d!937263))

(declare-fun d!937265 () Bool)

(declare-fun res!1351128 () Bool)

(declare-fun e!2071557 () Bool)

(assert (=> d!937265 (=> res!1351128 e!2071557)))

(assert (=> d!937265 (= res!1351128 ((_ is Nil!36689) (list!13223 lt!1132040)))))

(assert (=> d!937265 (= (forall!7665 (list!13223 lt!1132040) lambda!119835) e!2071557)))

(declare-fun b!3331107 () Bool)

(declare-fun e!2071558 () Bool)

(assert (=> b!3331107 (= e!2071557 e!2071558)))

(declare-fun res!1351129 () Bool)

(assert (=> b!3331107 (=> (not res!1351129) (not e!2071558))))

(assert (=> b!3331107 (= res!1351129 (dynLambda!15147 lambda!119835 (h!42109 (list!13223 lt!1132040))))))

(declare-fun b!3331108 () Bool)

(assert (=> b!3331108 (= e!2071558 (forall!7665 (t!257170 (list!13223 lt!1132040)) lambda!119835))))

(assert (= (and d!937265 (not res!1351128)) b!3331107))

(assert (= (and b!3331107 res!1351129) b!3331108))

(declare-fun b_lambda!94147 () Bool)

(assert (=> (not b_lambda!94147) (not b!3331107)))

(declare-fun m!3673035 () Bool)

(assert (=> b!3331107 m!3673035))

(declare-fun m!3673037 () Bool)

(assert (=> b!3331108 m!3673037))

(assert (=> d!937033 d!937265))

(declare-fun d!937267 () Bool)

(declare-fun list!13226 (Conc!11048) List!36813)

(assert (=> d!937267 (= (list!13223 lt!1132040) (list!13226 (c!565596 lt!1132040)))))

(declare-fun bs!551370 () Bool)

(assert (= bs!551370 d!937267))

(declare-fun m!3673039 () Bool)

(assert (=> bs!551370 m!3673039))

(assert (=> d!937033 d!937267))

(declare-fun d!937269 () Bool)

(declare-fun lt!1132299 () Bool)

(assert (=> d!937269 (= lt!1132299 (forall!7665 (list!13223 lt!1132040) lambda!119835))))

(declare-fun forall!7669 (Conc!11048 Int) Bool)

(assert (=> d!937269 (= lt!1132299 (forall!7669 (c!565596 lt!1132040) lambda!119835))))

(assert (=> d!937269 (= (forall!7667 lt!1132040 lambda!119835) lt!1132299)))

(declare-fun bs!551371 () Bool)

(assert (= bs!551371 d!937269))

(assert (=> bs!551371 m!3672123))

(assert (=> bs!551371 m!3672123))

(assert (=> bs!551371 m!3672589))

(declare-fun m!3673041 () Bool)

(assert (=> bs!551371 m!3673041))

(assert (=> d!937033 d!937269))

(assert (=> d!937033 d!936979))

(declare-fun d!937271 () Bool)

(declare-fun res!1351130 () Bool)

(declare-fun e!2071559 () Bool)

(assert (=> d!937271 (=> (not res!1351130) (not e!2071559))))

(assert (=> d!937271 (= res!1351130 (not (isEmpty!20855 (originalCharacters!6050 (h!42109 (t!257170 tokens!494))))))))

(assert (=> d!937271 (= (inv!49703 (h!42109 (t!257170 tokens!494))) e!2071559)))

(declare-fun b!3331109 () Bool)

(declare-fun res!1351131 () Bool)

(assert (=> b!3331109 (=> (not res!1351131) (not e!2071559))))

(assert (=> b!3331109 (= res!1351131 (= (originalCharacters!6050 (h!42109 (t!257170 tokens!494))) (list!13219 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (value!172536 (h!42109 (t!257170 tokens!494)))))))))

(declare-fun b!3331110 () Bool)

(assert (=> b!3331110 (= e!2071559 (= (size!27739 (h!42109 (t!257170 tokens!494))) (size!27742 (originalCharacters!6050 (h!42109 (t!257170 tokens!494))))))))

(assert (= (and d!937271 res!1351130) b!3331109))

(assert (= (and b!3331109 res!1351131) b!3331110))

(declare-fun b_lambda!94149 () Bool)

(assert (=> (not b_lambda!94149) (not b!3331109)))

(declare-fun t!257292 () Bool)

(declare-fun tb!174635 () Bool)

(assert (=> (and b!3330357 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) t!257292) tb!174635))

(declare-fun b!3331111 () Bool)

(declare-fun e!2071560 () Bool)

(declare-fun tp!1040979 () Bool)

(assert (=> b!3331111 (= e!2071560 (and (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (value!172536 (h!42109 (t!257170 tokens!494)))))) tp!1040979))))

(declare-fun result!217788 () Bool)

(assert (=> tb!174635 (= result!217788 (and (inv!49707 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (value!172536 (h!42109 (t!257170 tokens!494))))) e!2071560))))

(assert (= tb!174635 b!3331111))

(declare-fun m!3673043 () Bool)

(assert (=> b!3331111 m!3673043))

(declare-fun m!3673045 () Bool)

(assert (=> tb!174635 m!3673045))

(assert (=> b!3331109 t!257292))

(declare-fun b_and!229831 () Bool)

(assert (= b_and!229819 (and (=> t!257292 result!217788) b_and!229831)))

(declare-fun t!257294 () Bool)

(declare-fun tb!174637 () Bool)

(assert (=> (and b!3330794 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) t!257294) tb!174637))

(declare-fun result!217790 () Bool)

(assert (= result!217790 result!217788))

(assert (=> b!3331109 t!257294))

(declare-fun b_and!229833 () Bool)

(assert (= b_and!229811 (and (=> t!257294 result!217790) b_and!229833)))

(declare-fun tb!174639 () Bool)

(declare-fun t!257296 () Bool)

(assert (=> (and b!3330369 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) t!257296) tb!174639))

(declare-fun result!217792 () Bool)

(assert (= result!217792 result!217788))

(assert (=> b!3331109 t!257296))

(declare-fun b_and!229835 () Bool)

(assert (= b_and!229815 (and (=> t!257296 result!217792) b_and!229835)))

(declare-fun t!257298 () Bool)

(declare-fun tb!174641 () Bool)

(assert (=> (and b!3330805 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) t!257298) tb!174641))

(declare-fun result!217794 () Bool)

(assert (= result!217794 result!217788))

(assert (=> b!3331109 t!257298))

(declare-fun b_and!229837 () Bool)

(assert (= b_and!229813 (and (=> t!257298 result!217794) b_and!229837)))

(declare-fun t!257300 () Bool)

(declare-fun tb!174643 () Bool)

(assert (=> (and b!3330365 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) t!257300) tb!174643))

(declare-fun result!217796 () Bool)

(assert (= result!217796 result!217788))

(assert (=> b!3331109 t!257300))

(declare-fun b_and!229839 () Bool)

(assert (= b_and!229817 (and (=> t!257300 result!217796) b_and!229839)))

(declare-fun m!3673047 () Bool)

(assert (=> d!937271 m!3673047))

(declare-fun m!3673049 () Bool)

(assert (=> b!3331109 m!3673049))

(assert (=> b!3331109 m!3673049))

(declare-fun m!3673051 () Bool)

(assert (=> b!3331109 m!3673051))

(declare-fun m!3673053 () Bool)

(assert (=> b!3331110 m!3673053))

(assert (=> b!3330791 d!937271))

(declare-fun d!937273 () Bool)

(declare-fun lt!1132302 () Int)

(assert (=> d!937273 (= lt!1132302 (size!27742 (list!13219 (_2!21235 lt!1132157))))))

(declare-fun size!27749 (Conc!11047) Int)

(assert (=> d!937273 (= lt!1132302 (size!27749 (c!565595 (_2!21235 lt!1132157))))))

(assert (=> d!937273 (= (size!27745 (_2!21235 lt!1132157)) lt!1132302)))

(declare-fun bs!551372 () Bool)

(assert (= bs!551372 d!937273))

(assert (=> bs!551372 m!3672403))

(assert (=> bs!551372 m!3672403))

(declare-fun m!3673055 () Bool)

(assert (=> bs!551372 m!3673055))

(declare-fun m!3673057 () Bool)

(assert (=> bs!551372 m!3673057))

(assert (=> b!3330593 d!937273))

(declare-fun d!937275 () Bool)

(declare-fun lt!1132303 () Int)

(assert (=> d!937275 (= lt!1132303 (size!27742 (list!13219 (seqFromList!3725 lt!1132041))))))

(assert (=> d!937275 (= lt!1132303 (size!27749 (c!565595 (seqFromList!3725 lt!1132041))))))

(assert (=> d!937275 (= (size!27745 (seqFromList!3725 lt!1132041)) lt!1132303)))

(declare-fun bs!551373 () Bool)

(assert (= bs!551373 d!937275))

(assert (=> bs!551373 m!3672027))

(assert (=> bs!551373 m!3672405))

(assert (=> bs!551373 m!3672405))

(assert (=> bs!551373 m!3672975))

(declare-fun m!3673059 () Bool)

(assert (=> bs!551373 m!3673059))

(assert (=> b!3330593 d!937275))

(declare-fun d!937277 () Bool)

(assert (=> d!937277 (= (inv!16 (value!172536 separatorToken!241)) (= (charsToInt!0 (text!39409 (value!172536 separatorToken!241))) (value!172527 (value!172536 separatorToken!241))))))

(declare-fun bs!551374 () Bool)

(assert (= bs!551374 d!937277))

(declare-fun m!3673061 () Bool)

(assert (=> bs!551374 m!3673061))

(assert (=> b!3330749 d!937277))

(declare-fun d!937279 () Bool)

(assert (=> d!937279 (= (list!13223 (singletonSeq!2432 separatorToken!241)) (list!13226 (c!565596 (singletonSeq!2432 separatorToken!241))))))

(declare-fun bs!551375 () Bool)

(assert (= bs!551375 d!937279))

(declare-fun m!3673063 () Bool)

(assert (=> bs!551375 m!3673063))

(assert (=> d!936981 d!937279))

(declare-fun d!937281 () Bool)

(assert (=> d!937281 (= (list!13223 (_1!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241))))) (list!13226 (c!565596 (_1!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)))))))))

(declare-fun bs!551376 () Bool)

(assert (= bs!551376 d!937281))

(declare-fun m!3673065 () Bool)

(assert (=> bs!551376 m!3673065))

(assert (=> d!936981 d!937281))

(declare-fun d!937283 () Bool)

(declare-fun e!2071561 () Bool)

(assert (=> d!937283 e!2071561))

(declare-fun res!1351132 () Bool)

(assert (=> d!937283 (=> (not res!1351132) (not e!2071561))))

(declare-fun lt!1132304 () BalanceConc!21710)

(assert (=> d!937283 (= res!1351132 (= (list!13223 lt!1132304) (Cons!36689 separatorToken!241 Nil!36689)))))

(assert (=> d!937283 (= lt!1132304 (singleton!1053 separatorToken!241))))

(assert (=> d!937283 (= (singletonSeq!2432 separatorToken!241) lt!1132304)))

(declare-fun b!3331112 () Bool)

(assert (=> b!3331112 (= e!2071561 (isBalanced!3318 (c!565596 lt!1132304)))))

(assert (= (and d!937283 res!1351132) b!3331112))

(declare-fun m!3673067 () Bool)

(assert (=> d!937283 m!3673067))

(declare-fun m!3673069 () Bool)

(assert (=> d!937283 m!3673069))

(declare-fun m!3673071 () Bool)

(assert (=> b!3331112 m!3673071))

(assert (=> d!936981 d!937283))

(declare-fun d!937285 () Bool)

(declare-fun lt!1132307 () Int)

(assert (=> d!937285 (= lt!1132307 (size!27748 (list!13223 (_1!21235 lt!1132124))))))

(declare-fun size!27750 (Conc!11048) Int)

(assert (=> d!937285 (= lt!1132307 (size!27750 (c!565596 (_1!21235 lt!1132124))))))

(assert (=> d!937285 (= (size!27743 (_1!21235 lt!1132124)) lt!1132307)))

(declare-fun bs!551377 () Bool)

(assert (= bs!551377 d!937285))

(assert (=> bs!551377 m!3672727))

(assert (=> bs!551377 m!3672727))

(declare-fun m!3673073 () Bool)

(assert (=> bs!551377 m!3673073))

(declare-fun m!3673075 () Bool)

(assert (=> bs!551377 m!3673075))

(assert (=> d!936981 d!937285))

(declare-fun d!937287 () Bool)

(declare-fun lt!1132308 () BalanceConc!21708)

(assert (=> d!937287 (= (list!13219 lt!1132308) (printList!1473 thiss!18206 (list!13223 (singletonSeq!2432 separatorToken!241))))))

(assert (=> d!937287 (= lt!1132308 (printTailRec!1420 thiss!18206 (singletonSeq!2432 separatorToken!241) 0 (BalanceConc!21709 Empty!11047)))))

(assert (=> d!937287 (= (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)) lt!1132308)))

(declare-fun bs!551378 () Bool)

(assert (= bs!551378 d!937287))

(declare-fun m!3673077 () Bool)

(assert (=> bs!551378 m!3673077))

(assert (=> bs!551378 m!3672307))

(assert (=> bs!551378 m!3672317))

(assert (=> bs!551378 m!3672317))

(declare-fun m!3673079 () Bool)

(assert (=> bs!551378 m!3673079))

(assert (=> bs!551378 m!3672307))

(declare-fun m!3673081 () Bool)

(assert (=> bs!551378 m!3673081))

(assert (=> d!936981 d!937287))

(assert (=> d!936981 d!936979))

(declare-fun d!937289 () Bool)

(declare-fun e!2071563 () Bool)

(assert (=> d!937289 e!2071563))

(declare-fun res!1351133 () Bool)

(assert (=> d!937289 (=> (not res!1351133) (not e!2071563))))

(declare-fun e!2071564 () Bool)

(assert (=> d!937289 (= res!1351133 e!2071564)))

(declare-fun c!565717 () Bool)

(declare-fun lt!1132309 () tuple2!36202)

(assert (=> d!937289 (= c!565717 (> (size!27743 (_1!21235 lt!1132309)) 0))))

(assert (=> d!937289 (= lt!1132309 (lexTailRecV2!990 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)) (BalanceConc!21709 Empty!11047) (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)) (BalanceConc!21711 Empty!11048)))))

(assert (=> d!937289 (= (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241))) lt!1132309)))

(declare-fun b!3331113 () Bool)

(declare-fun res!1351134 () Bool)

(assert (=> b!3331113 (=> (not res!1351134) (not e!2071563))))

(assert (=> b!3331113 (= res!1351134 (= (list!13223 (_1!21235 lt!1132309)) (_1!21237 (lexList!1380 thiss!18206 rules!2135 (list!13219 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)))))))))

(declare-fun b!3331114 () Bool)

(declare-fun e!2071562 () Bool)

(assert (=> b!3331114 (= e!2071564 e!2071562)))

(declare-fun res!1351135 () Bool)

(assert (=> b!3331114 (= res!1351135 (< (size!27745 (_2!21235 lt!1132309)) (size!27745 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)))))))

(assert (=> b!3331114 (=> (not res!1351135) (not e!2071562))))

(declare-fun b!3331115 () Bool)

(assert (=> b!3331115 (= e!2071562 (not (isEmpty!20856 (_1!21235 lt!1132309))))))

(declare-fun b!3331116 () Bool)

(assert (=> b!3331116 (= e!2071563 (= (list!13219 (_2!21235 lt!1132309)) (_2!21237 (lexList!1380 thiss!18206 rules!2135 (list!13219 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)))))))))

(declare-fun b!3331117 () Bool)

(assert (=> b!3331117 (= e!2071564 (= (_2!21235 lt!1132309) (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241))))))

(assert (= (and d!937289 c!565717) b!3331114))

(assert (= (and d!937289 (not c!565717)) b!3331117))

(assert (= (and b!3331114 res!1351135) b!3331115))

(assert (= (and d!937289 res!1351133) b!3331113))

(assert (= (and b!3331113 res!1351134) b!3331116))

(declare-fun m!3673083 () Bool)

(assert (=> b!3331115 m!3673083))

(declare-fun m!3673085 () Bool)

(assert (=> b!3331116 m!3673085))

(assert (=> b!3331116 m!3672309))

(declare-fun m!3673087 () Bool)

(assert (=> b!3331116 m!3673087))

(assert (=> b!3331116 m!3673087))

(declare-fun m!3673089 () Bool)

(assert (=> b!3331116 m!3673089))

(declare-fun m!3673091 () Bool)

(assert (=> d!937289 m!3673091))

(assert (=> d!937289 m!3672309))

(assert (=> d!937289 m!3672309))

(declare-fun m!3673093 () Bool)

(assert (=> d!937289 m!3673093))

(declare-fun m!3673095 () Bool)

(assert (=> b!3331114 m!3673095))

(assert (=> b!3331114 m!3672309))

(declare-fun m!3673097 () Bool)

(assert (=> b!3331114 m!3673097))

(declare-fun m!3673099 () Bool)

(assert (=> b!3331113 m!3673099))

(assert (=> b!3331113 m!3672309))

(assert (=> b!3331113 m!3673087))

(assert (=> b!3331113 m!3673087))

(assert (=> b!3331113 m!3673089))

(assert (=> d!936981 d!937289))

(declare-fun d!937291 () Bool)

(declare-fun lt!1132310 () List!36811)

(assert (=> d!937291 (= (++!8925 (t!257168 lt!1132041) lt!1132310) (tail!5305 lt!1132041))))

(declare-fun e!2071565 () List!36811)

(assert (=> d!937291 (= lt!1132310 e!2071565)))

(declare-fun c!565718 () Bool)

(assert (=> d!937291 (= c!565718 ((_ is Cons!36687) (t!257168 lt!1132041)))))

(assert (=> d!937291 (>= (size!27742 (tail!5305 lt!1132041)) (size!27742 (t!257168 lt!1132041)))))

(assert (=> d!937291 (= (getSuffix!1430 (tail!5305 lt!1132041) (t!257168 lt!1132041)) lt!1132310)))

(declare-fun b!3331118 () Bool)

(assert (=> b!3331118 (= e!2071565 (getSuffix!1430 (tail!5305 (tail!5305 lt!1132041)) (t!257168 (t!257168 lt!1132041))))))

(declare-fun b!3331119 () Bool)

(assert (=> b!3331119 (= e!2071565 (tail!5305 lt!1132041))))

(assert (= (and d!937291 c!565718) b!3331118))

(assert (= (and d!937291 (not c!565718)) b!3331119))

(declare-fun m!3673101 () Bool)

(assert (=> d!937291 m!3673101))

(assert (=> d!937291 m!3672347))

(declare-fun m!3673103 () Bool)

(assert (=> d!937291 m!3673103))

(assert (=> d!937291 m!3672881))

(assert (=> b!3331118 m!3672347))

(declare-fun m!3673105 () Bool)

(assert (=> b!3331118 m!3673105))

(assert (=> b!3331118 m!3673105))

(declare-fun m!3673107 () Bool)

(assert (=> b!3331118 m!3673107))

(assert (=> b!3330551 d!937291))

(declare-fun d!937293 () Bool)

(assert (=> d!937293 (= (tail!5305 lt!1132041) (t!257168 lt!1132041))))

(assert (=> b!3330551 d!937293))

(declare-fun d!937295 () Bool)

(assert (=> d!937295 true))

(declare-fun order!19225 () Int)

(declare-fun lambda!119855 () Int)

(declare-fun dynLambda!15156 (Int Int) Int)

(assert (=> d!937295 (< (dynLambda!15150 order!19217 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) (dynLambda!15156 order!19225 lambda!119855))))

(assert (=> d!937295 true))

(assert (=> d!937295 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241)))) (dynLambda!15156 order!19225 lambda!119855))))

(declare-fun Forall!1309 (Int) Bool)

(assert (=> d!937295 (= (semiInverseModEq!2217 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241)))) (Forall!1309 lambda!119855))))

(declare-fun bs!551379 () Bool)

(assert (= bs!551379 d!937295))

(declare-fun m!3673109 () Bool)

(assert (=> bs!551379 m!3673109))

(assert (=> d!936997 d!937295))

(declare-fun d!937297 () Bool)

(assert (=> d!937297 (= (list!13219 lt!1132158) (list!13222 (c!565595 lt!1132158)))))

(declare-fun bs!551380 () Bool)

(assert (= bs!551380 d!937297))

(declare-fun m!3673111 () Bool)

(assert (=> bs!551380 m!3673111))

(assert (=> d!937027 d!937297))

(declare-fun d!937299 () Bool)

(declare-fun lt!1132311 () Token!10038)

(assert (=> d!937299 (= lt!1132311 (apply!8479 (list!13223 (_1!21235 lt!1132159)) 0))))

(assert (=> d!937299 (= lt!1132311 (apply!8482 (c!565596 (_1!21235 lt!1132159)) 0))))

(declare-fun e!2071566 () Bool)

(assert (=> d!937299 e!2071566))

(declare-fun res!1351136 () Bool)

(assert (=> d!937299 (=> (not res!1351136) (not e!2071566))))

(assert (=> d!937299 (= res!1351136 (<= 0 0))))

(assert (=> d!937299 (= (apply!8478 (_1!21235 lt!1132159) 0) lt!1132311)))

(declare-fun b!3331124 () Bool)

(assert (=> b!3331124 (= e!2071566 (< 0 (size!27743 (_1!21235 lt!1132159))))))

(assert (= (and d!937299 res!1351136) b!3331124))

(declare-fun m!3673113 () Bool)

(assert (=> d!937299 m!3673113))

(assert (=> d!937299 m!3673113))

(declare-fun m!3673115 () Bool)

(assert (=> d!937299 m!3673115))

(declare-fun m!3673117 () Bool)

(assert (=> d!937299 m!3673117))

(assert (=> b!3331124 m!3672427))

(assert (=> b!3330597 d!937299))

(declare-fun d!937301 () Bool)

(declare-fun lt!1132314 () Bool)

(assert (=> d!937301 (= lt!1132314 (isEmpty!20855 (list!13219 (_2!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))))))))))

(declare-fun isEmpty!20867 (Conc!11047) Bool)

(assert (=> d!937301 (= lt!1132314 (isEmpty!20867 (c!565595 (_2!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))))))))))

(assert (=> d!937301 (= (isEmpty!20862 (_2!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494)))))) lt!1132314)))

(declare-fun bs!551381 () Bool)

(assert (= bs!551381 d!937301))

(declare-fun m!3673119 () Bool)

(assert (=> bs!551381 m!3673119))

(assert (=> bs!551381 m!3673119))

(declare-fun m!3673121 () Bool)

(assert (=> bs!551381 m!3673121))

(declare-fun m!3673123 () Bool)

(assert (=> bs!551381 m!3673123))

(assert (=> b!3330599 d!937301))

(declare-fun d!937303 () Bool)

(declare-fun e!2071568 () Bool)

(assert (=> d!937303 e!2071568))

(declare-fun res!1351137 () Bool)

(assert (=> d!937303 (=> (not res!1351137) (not e!2071568))))

(declare-fun e!2071569 () Bool)

(assert (=> d!937303 (= res!1351137 e!2071569)))

(declare-fun c!565719 () Bool)

(declare-fun lt!1132315 () tuple2!36202)

(assert (=> d!937303 (= c!565719 (> (size!27743 (_1!21235 lt!1132315)) 0))))

(assert (=> d!937303 (= lt!1132315 (lexTailRecV2!990 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))) (BalanceConc!21709 Empty!11047) (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))) (BalanceConc!21711 Empty!11048)))))

(assert (=> d!937303 (= (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494)))) lt!1132315)))

(declare-fun b!3331125 () Bool)

(declare-fun res!1351138 () Bool)

(assert (=> b!3331125 (=> (not res!1351138) (not e!2071568))))

(assert (=> b!3331125 (= res!1351138 (= (list!13223 (_1!21235 lt!1132315)) (_1!21237 (lexList!1380 thiss!18206 rules!2135 (list!13219 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))))))))))

(declare-fun b!3331126 () Bool)

(declare-fun e!2071567 () Bool)

(assert (=> b!3331126 (= e!2071569 e!2071567)))

(declare-fun res!1351139 () Bool)

(assert (=> b!3331126 (= res!1351139 (< (size!27745 (_2!21235 lt!1132315)) (size!27745 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))))))))

(assert (=> b!3331126 (=> (not res!1351139) (not e!2071567))))

(declare-fun b!3331127 () Bool)

(assert (=> b!3331127 (= e!2071567 (not (isEmpty!20856 (_1!21235 lt!1132315))))))

(declare-fun b!3331128 () Bool)

(assert (=> b!3331128 (= e!2071568 (= (list!13219 (_2!21235 lt!1132315)) (_2!21237 (lexList!1380 thiss!18206 rules!2135 (list!13219 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))))))))))

(declare-fun b!3331129 () Bool)

(assert (=> b!3331129 (= e!2071569 (= (_2!21235 lt!1132315) (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494)))))))

(assert (= (and d!937303 c!565719) b!3331126))

(assert (= (and d!937303 (not c!565719)) b!3331129))

(assert (= (and b!3331126 res!1351139) b!3331127))

(assert (= (and d!937303 res!1351137) b!3331125))

(assert (= (and b!3331125 res!1351138) b!3331128))

(declare-fun m!3673125 () Bool)

(assert (=> b!3331127 m!3673125))

(declare-fun m!3673127 () Bool)

(assert (=> b!3331128 m!3673127))

(assert (=> b!3331128 m!3672425))

(declare-fun m!3673129 () Bool)

(assert (=> b!3331128 m!3673129))

(assert (=> b!3331128 m!3673129))

(declare-fun m!3673131 () Bool)

(assert (=> b!3331128 m!3673131))

(declare-fun m!3673133 () Bool)

(assert (=> d!937303 m!3673133))

(assert (=> d!937303 m!3672425))

(assert (=> d!937303 m!3672425))

(declare-fun m!3673135 () Bool)

(assert (=> d!937303 m!3673135))

(declare-fun m!3673137 () Bool)

(assert (=> b!3331126 m!3673137))

(assert (=> b!3331126 m!3672425))

(declare-fun m!3673139 () Bool)

(assert (=> b!3331126 m!3673139))

(declare-fun m!3673141 () Bool)

(assert (=> b!3331125 m!3673141))

(assert (=> b!3331125 m!3672425))

(assert (=> b!3331125 m!3673129))

(assert (=> b!3331125 m!3673129))

(assert (=> b!3331125 m!3673131))

(assert (=> b!3330599 d!937303))

(declare-fun d!937305 () Bool)

(declare-fun lt!1132316 () BalanceConc!21708)

(assert (=> d!937305 (= (list!13219 lt!1132316) (printList!1473 thiss!18206 (list!13223 (singletonSeq!2432 (h!42109 tokens!494)))))))

(assert (=> d!937305 (= lt!1132316 (printTailRec!1420 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494)) 0 (BalanceConc!21709 Empty!11047)))))

(assert (=> d!937305 (= (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))) lt!1132316)))

(declare-fun bs!551382 () Bool)

(assert (= bs!551382 d!937305))

(declare-fun m!3673143 () Bool)

(assert (=> bs!551382 m!3673143))

(assert (=> bs!551382 m!3672053))

(assert (=> bs!551382 m!3672433))

(assert (=> bs!551382 m!3672433))

(declare-fun m!3673145 () Bool)

(assert (=> bs!551382 m!3673145))

(assert (=> bs!551382 m!3672053))

(declare-fun m!3673147 () Bool)

(assert (=> bs!551382 m!3673147))

(assert (=> b!3330599 d!937305))

(assert (=> b!3330599 d!936963))

(declare-fun d!937307 () Bool)

(declare-fun lt!1132317 () Int)

(assert (=> d!937307 (>= lt!1132317 0)))

(declare-fun e!2071570 () Int)

(assert (=> d!937307 (= lt!1132317 e!2071570)))

(declare-fun c!565720 () Bool)

(assert (=> d!937307 (= c!565720 ((_ is Nil!36687) lt!1132048))))

(assert (=> d!937307 (= (size!27742 lt!1132048) lt!1132317)))

(declare-fun b!3331130 () Bool)

(assert (=> b!3331130 (= e!2071570 0)))

(declare-fun b!3331131 () Bool)

(assert (=> b!3331131 (= e!2071570 (+ 1 (size!27742 (t!257168 lt!1132048))))))

(assert (= (and d!937307 c!565720) b!3331130))

(assert (= (and d!937307 (not c!565720)) b!3331131))

(declare-fun m!3673149 () Bool)

(assert (=> b!3331131 m!3673149))

(assert (=> b!3330419 d!937307))

(assert (=> b!3330419 d!937193))

(declare-fun d!937309 () Bool)

(declare-fun lt!1132318 () Int)

(assert (=> d!937309 (>= lt!1132318 0)))

(declare-fun e!2071571 () Int)

(assert (=> d!937309 (= lt!1132318 e!2071571)))

(declare-fun c!565721 () Bool)

(assert (=> d!937309 (= c!565721 ((_ is Nil!36687) (list!13219 (charsOf!3350 separatorToken!241))))))

(assert (=> d!937309 (= (size!27742 (list!13219 (charsOf!3350 separatorToken!241))) lt!1132318)))

(declare-fun b!3331132 () Bool)

(assert (=> b!3331132 (= e!2071571 0)))

(declare-fun b!3331133 () Bool)

(assert (=> b!3331133 (= e!2071571 (+ 1 (size!27742 (t!257168 (list!13219 (charsOf!3350 separatorToken!241))))))))

(assert (= (and d!937309 c!565721) b!3331132))

(assert (= (and d!937309 (not c!565721)) b!3331133))

(declare-fun m!3673151 () Bool)

(assert (=> b!3331133 m!3673151))

(assert (=> b!3330419 d!937309))

(declare-fun d!937311 () Bool)

(assert (=> d!937311 (= (dropList!1138 lt!1132033 0) (drop!1930 (list!13226 (c!565596 lt!1132033)) 0))))

(declare-fun bs!551383 () Bool)

(assert (= bs!551383 d!937311))

(declare-fun m!3673153 () Bool)

(assert (=> bs!551383 m!3673153))

(assert (=> bs!551383 m!3673153))

(declare-fun m!3673155 () Bool)

(assert (=> bs!551383 m!3673155))

(assert (=> d!936949 d!937311))

(declare-fun d!937313 () Bool)

(declare-fun lt!1132331 () List!36811)

(assert (=> d!937313 (= lt!1132331 (++!8925 (list!13219 (BalanceConc!21709 Empty!11047)) (printList!1473 thiss!18206 (dropList!1138 lt!1132033 0))))))

(declare-fun e!2071574 () List!36811)

(assert (=> d!937313 (= lt!1132331 e!2071574)))

(declare-fun c!565724 () Bool)

(assert (=> d!937313 (= c!565724 ((_ is Cons!36689) (dropList!1138 lt!1132033 0)))))

(assert (=> d!937313 (= (printListTailRec!621 thiss!18206 (dropList!1138 lt!1132033 0) (list!13219 (BalanceConc!21709 Empty!11047))) lt!1132331)))

(declare-fun b!3331138 () Bool)

(assert (=> b!3331138 (= e!2071574 (printListTailRec!621 thiss!18206 (t!257170 (dropList!1138 lt!1132033 0)) (++!8925 (list!13219 (BalanceConc!21709 Empty!11047)) (list!13219 (charsOf!3350 (h!42109 (dropList!1138 lt!1132033 0)))))))))

(declare-fun lt!1132332 () List!36811)

(assert (=> b!3331138 (= lt!1132332 (list!13219 (charsOf!3350 (h!42109 (dropList!1138 lt!1132033 0)))))))

(declare-fun lt!1132329 () List!36811)

(assert (=> b!3331138 (= lt!1132329 (printList!1473 thiss!18206 (t!257170 (dropList!1138 lt!1132033 0))))))

(declare-fun lt!1132330 () Unit!51698)

(declare-fun lemmaConcatAssociativity!1857 (List!36811 List!36811 List!36811) Unit!51698)

(assert (=> b!3331138 (= lt!1132330 (lemmaConcatAssociativity!1857 (list!13219 (BalanceConc!21709 Empty!11047)) lt!1132332 lt!1132329))))

(assert (=> b!3331138 (= (++!8925 (++!8925 (list!13219 (BalanceConc!21709 Empty!11047)) lt!1132332) lt!1132329) (++!8925 (list!13219 (BalanceConc!21709 Empty!11047)) (++!8925 lt!1132332 lt!1132329)))))

(declare-fun lt!1132333 () Unit!51698)

(assert (=> b!3331138 (= lt!1132333 lt!1132330)))

(declare-fun b!3331139 () Bool)

(assert (=> b!3331139 (= e!2071574 (list!13219 (BalanceConc!21709 Empty!11047)))))

(assert (= (and d!937313 c!565724) b!3331138))

(assert (= (and d!937313 (not c!565724)) b!3331139))

(assert (=> d!937313 m!3672173))

(declare-fun m!3673157 () Bool)

(assert (=> d!937313 m!3673157))

(assert (=> d!937313 m!3672171))

(assert (=> d!937313 m!3673157))

(declare-fun m!3673159 () Bool)

(assert (=> d!937313 m!3673159))

(declare-fun m!3673161 () Bool)

(assert (=> b!3331138 m!3673161))

(declare-fun m!3673163 () Bool)

(assert (=> b!3331138 m!3673163))

(declare-fun m!3673165 () Bool)

(assert (=> b!3331138 m!3673165))

(declare-fun m!3673167 () Bool)

(assert (=> b!3331138 m!3673167))

(declare-fun m!3673169 () Bool)

(assert (=> b!3331138 m!3673169))

(declare-fun m!3673171 () Bool)

(assert (=> b!3331138 m!3673171))

(assert (=> b!3331138 m!3673167))

(declare-fun m!3673173 () Bool)

(assert (=> b!3331138 m!3673173))

(declare-fun m!3673175 () Bool)

(assert (=> b!3331138 m!3673175))

(assert (=> b!3331138 m!3672171))

(assert (=> b!3331138 m!3673173))

(assert (=> b!3331138 m!3672171))

(assert (=> b!3331138 m!3673169))

(assert (=> b!3331138 m!3673161))

(assert (=> b!3331138 m!3672171))

(assert (=> b!3331138 m!3673171))

(declare-fun m!3673177 () Bool)

(assert (=> b!3331138 m!3673177))

(assert (=> b!3331138 m!3672171))

(declare-fun m!3673179 () Bool)

(assert (=> b!3331138 m!3673179))

(assert (=> d!936949 d!937313))

(declare-fun d!937315 () Bool)

(assert (=> d!937315 (= (list!13219 (BalanceConc!21709 Empty!11047)) (list!13222 (c!565595 (BalanceConc!21709 Empty!11047))))))

(declare-fun bs!551384 () Bool)

(assert (= bs!551384 d!937315))

(declare-fun m!3673181 () Bool)

(assert (=> bs!551384 m!3673181))

(assert (=> d!936949 d!937315))

(declare-fun d!937317 () Bool)

(assert (=> d!937317 (= (list!13219 lt!1132085) (list!13222 (c!565595 lt!1132085)))))

(declare-fun bs!551385 () Bool)

(assert (= bs!551385 d!937317))

(declare-fun m!3673183 () Bool)

(assert (=> bs!551385 m!3673183))

(assert (=> d!936949 d!937317))

(declare-fun d!937319 () Bool)

(declare-fun lt!1132334 () Int)

(assert (=> d!937319 (= lt!1132334 (size!27748 (list!13223 lt!1132033)))))

(assert (=> d!937319 (= lt!1132334 (size!27750 (c!565596 lt!1132033)))))

(assert (=> d!937319 (= (size!27743 lt!1132033) lt!1132334)))

(declare-fun bs!551386 () Bool)

(assert (= bs!551386 d!937319))

(assert (=> bs!551386 m!3672183))

(assert (=> bs!551386 m!3672183))

(declare-fun m!3673185 () Bool)

(assert (=> bs!551386 m!3673185))

(declare-fun m!3673187 () Bool)

(assert (=> bs!551386 m!3673187))

(assert (=> d!936949 d!937319))

(declare-fun bs!551387 () Bool)

(declare-fun d!937321 () Bool)

(assert (= bs!551387 (and d!937321 d!937295)))

(declare-fun lambda!119856 () Int)

(assert (=> bs!551387 (= (and (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) (= (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241))))) (= lambda!119856 lambda!119855))))

(assert (=> d!937321 true))

(assert (=> d!937321 (< (dynLambda!15150 order!19217 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) (dynLambda!15156 order!19225 lambda!119856))))

(assert (=> d!937321 true))

(assert (=> d!937321 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) (dynLambda!15156 order!19225 lambda!119856))))

(assert (=> d!937321 (= (semiInverseModEq!2217 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) (Forall!1309 lambda!119856))))

(declare-fun bs!551388 () Bool)

(assert (= bs!551388 d!937321))

(declare-fun m!3673189 () Bool)

(assert (=> bs!551388 m!3673189))

(assert (=> d!936945 d!937321))

(declare-fun d!937323 () Bool)

(assert (=> d!937323 (= (list!13223 lt!1132093) (list!13226 (c!565596 lt!1132093)))))

(declare-fun bs!551389 () Bool)

(assert (= bs!551389 d!937323))

(declare-fun m!3673191 () Bool)

(assert (=> bs!551389 m!3673191))

(assert (=> d!936963 d!937323))

(declare-fun d!937325 () Bool)

(declare-fun e!2071577 () Bool)

(assert (=> d!937325 e!2071577))

(declare-fun res!1351142 () Bool)

(assert (=> d!937325 (=> (not res!1351142) (not e!2071577))))

(declare-fun lt!1132337 () BalanceConc!21710)

(assert (=> d!937325 (= res!1351142 (= (list!13223 lt!1132337) (Cons!36689 (h!42109 tokens!494) Nil!36689)))))

(declare-fun choose!19308 (Token!10038) BalanceConc!21710)

(assert (=> d!937325 (= lt!1132337 (choose!19308 (h!42109 tokens!494)))))

(assert (=> d!937325 (= (singleton!1053 (h!42109 tokens!494)) lt!1132337)))

(declare-fun b!3331142 () Bool)

(assert (=> b!3331142 (= e!2071577 (isBalanced!3318 (c!565596 lt!1132337)))))

(assert (= (and d!937325 res!1351142) b!3331142))

(declare-fun m!3673193 () Bool)

(assert (=> d!937325 m!3673193))

(declare-fun m!3673195 () Bool)

(assert (=> d!937325 m!3673195))

(declare-fun m!3673197 () Bool)

(assert (=> b!3331142 m!3673197))

(assert (=> d!936963 d!937325))

(declare-fun d!937327 () Bool)

(declare-fun res!1351143 () Bool)

(declare-fun e!2071578 () Bool)

(assert (=> d!937327 (=> res!1351143 e!2071578)))

(assert (=> d!937327 (= res!1351143 (not ((_ is Cons!36688) (t!257169 rules!2135))))))

(assert (=> d!937327 (= (sepAndNonSepRulesDisjointChars!1530 rules!2135 (t!257169 rules!2135)) e!2071578)))

(declare-fun b!3331143 () Bool)

(declare-fun e!2071579 () Bool)

(assert (=> b!3331143 (= e!2071578 e!2071579)))

(declare-fun res!1351144 () Bool)

(assert (=> b!3331143 (=> (not res!1351144) (not e!2071579))))

(assert (=> b!3331143 (= res!1351144 (ruleDisjointCharsFromAllFromOtherType!653 (h!42108 (t!257169 rules!2135)) rules!2135))))

(declare-fun b!3331144 () Bool)

(assert (=> b!3331144 (= e!2071579 (sepAndNonSepRulesDisjointChars!1530 rules!2135 (t!257169 (t!257169 rules!2135))))))

(assert (= (and d!937327 (not res!1351143)) b!3331143))

(assert (= (and b!3331143 res!1351144) b!3331144))

(declare-fun m!3673199 () Bool)

(assert (=> b!3331143 m!3673199))

(declare-fun m!3673201 () Bool)

(assert (=> b!3331144 m!3673201))

(assert (=> b!3330605 d!937327))

(declare-fun d!937329 () Bool)

(declare-fun lt!1132338 () Bool)

(assert (=> d!937329 (= lt!1132338 (isEmpty!20855 (list!13219 (_2!21235 lt!1132124))))))

(assert (=> d!937329 (= lt!1132338 (isEmpty!20867 (c!565595 (_2!21235 lt!1132124))))))

(assert (=> d!937329 (= (isEmpty!20862 (_2!21235 lt!1132124)) lt!1132338)))

(declare-fun bs!551390 () Bool)

(assert (= bs!551390 d!937329))

(declare-fun m!3673203 () Bool)

(assert (=> bs!551390 m!3673203))

(assert (=> bs!551390 m!3673203))

(declare-fun m!3673205 () Bool)

(assert (=> bs!551390 m!3673205))

(declare-fun m!3673207 () Bool)

(assert (=> bs!551390 m!3673207))

(assert (=> b!3330534 d!937329))

(declare-fun b!3331145 () Bool)

(declare-fun res!1351151 () Bool)

(declare-fun e!2071580 () Bool)

(assert (=> b!3331145 (=> (not res!1351151) (not e!2071580))))

(declare-fun lt!1132340 () Option!7320)

(assert (=> b!3331145 (= res!1351151 (matchR!4687 (regex!5336 (rule!7860 (_1!21234 (get!11687 lt!1132340)))) (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132340))))))))

(declare-fun b!3331146 () Bool)

(declare-fun res!1351148 () Bool)

(assert (=> b!3331146 (=> (not res!1351148) (not e!2071580))))

(assert (=> b!3331146 (= res!1351148 (= (++!8925 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132340)))) (_2!21234 (get!11687 lt!1132340))) lt!1132041))))

(declare-fun b!3331147 () Bool)

(declare-fun res!1351145 () Bool)

(assert (=> b!3331147 (=> (not res!1351145) (not e!2071580))))

(assert (=> b!3331147 (= res!1351145 (< (size!27742 (_2!21234 (get!11687 lt!1132340))) (size!27742 lt!1132041)))))

(declare-fun b!3331148 () Bool)

(declare-fun res!1351149 () Bool)

(assert (=> b!3331148 (=> (not res!1351149) (not e!2071580))))

(assert (=> b!3331148 (= res!1351149 (= (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132340)))) (originalCharacters!6050 (_1!21234 (get!11687 lt!1132340)))))))

(declare-fun b!3331149 () Bool)

(declare-fun res!1351147 () Bool)

(assert (=> b!3331149 (=> (not res!1351147) (not e!2071580))))

(assert (=> b!3331149 (= res!1351147 (= (value!172536 (_1!21234 (get!11687 lt!1132340))) (apply!8481 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132340)))) (seqFromList!3725 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132340)))))))))

(declare-fun d!937331 () Bool)

(declare-fun e!2071582 () Bool)

(assert (=> d!937331 e!2071582))

(declare-fun res!1351146 () Bool)

(assert (=> d!937331 (=> res!1351146 e!2071582)))

(assert (=> d!937331 (= res!1351146 (isEmpty!20863 lt!1132340))))

(declare-fun e!2071581 () Option!7320)

(assert (=> d!937331 (= lt!1132340 e!2071581)))

(declare-fun c!565725 () Bool)

(assert (=> d!937331 (= c!565725 (and ((_ is Cons!36688) (t!257169 rules!2135)) ((_ is Nil!36688) (t!257169 (t!257169 rules!2135)))))))

(declare-fun lt!1132343 () Unit!51698)

(declare-fun lt!1132341 () Unit!51698)

(assert (=> d!937331 (= lt!1132343 lt!1132341)))

(assert (=> d!937331 (isPrefix!2816 lt!1132041 lt!1132041)))

(assert (=> d!937331 (= lt!1132341 (lemmaIsPrefixRefl!1775 lt!1132041 lt!1132041))))

(assert (=> d!937331 (rulesValidInductive!1823 thiss!18206 (t!257169 rules!2135))))

(assert (=> d!937331 (= (maxPrefix!2525 thiss!18206 (t!257169 rules!2135) lt!1132041) lt!1132340)))

(declare-fun call!241422 () Option!7320)

(declare-fun bm!241417 () Bool)

(assert (=> bm!241417 (= call!241422 (maxPrefixOneRule!1658 thiss!18206 (h!42108 (t!257169 rules!2135)) lt!1132041))))

(declare-fun b!3331150 () Bool)

(assert (=> b!3331150 (= e!2071582 e!2071580)))

(declare-fun res!1351150 () Bool)

(assert (=> b!3331150 (=> (not res!1351150) (not e!2071580))))

(assert (=> b!3331150 (= res!1351150 (isDefined!5662 lt!1132340))))

(declare-fun b!3331151 () Bool)

(declare-fun lt!1132339 () Option!7320)

(declare-fun lt!1132342 () Option!7320)

(assert (=> b!3331151 (= e!2071581 (ite (and ((_ is None!7319) lt!1132339) ((_ is None!7319) lt!1132342)) None!7319 (ite ((_ is None!7319) lt!1132342) lt!1132339 (ite ((_ is None!7319) lt!1132339) lt!1132342 (ite (>= (size!27739 (_1!21234 (v!36227 lt!1132339))) (size!27739 (_1!21234 (v!36227 lt!1132342)))) lt!1132339 lt!1132342)))))))

(assert (=> b!3331151 (= lt!1132339 call!241422)))

(assert (=> b!3331151 (= lt!1132342 (maxPrefix!2525 thiss!18206 (t!257169 (t!257169 rules!2135)) lt!1132041))))

(declare-fun b!3331152 () Bool)

(assert (=> b!3331152 (= e!2071580 (contains!6657 (t!257169 rules!2135) (rule!7860 (_1!21234 (get!11687 lt!1132340)))))))

(declare-fun b!3331153 () Bool)

(assert (=> b!3331153 (= e!2071581 call!241422)))

(assert (= (and d!937331 c!565725) b!3331153))

(assert (= (and d!937331 (not c!565725)) b!3331151))

(assert (= (or b!3331153 b!3331151) bm!241417))

(assert (= (and d!937331 (not res!1351146)) b!3331150))

(assert (= (and b!3331150 res!1351150) b!3331148))

(assert (= (and b!3331148 res!1351149) b!3331147))

(assert (= (and b!3331147 res!1351145) b!3331146))

(assert (= (and b!3331146 res!1351148) b!3331149))

(assert (= (and b!3331149 res!1351147) b!3331145))

(assert (= (and b!3331145 res!1351151) b!3331152))

(declare-fun m!3673209 () Bool)

(assert (=> b!3331149 m!3673209))

(declare-fun m!3673211 () Bool)

(assert (=> b!3331149 m!3673211))

(assert (=> b!3331149 m!3673211))

(declare-fun m!3673213 () Bool)

(assert (=> b!3331149 m!3673213))

(assert (=> b!3331148 m!3673209))

(declare-fun m!3673215 () Bool)

(assert (=> b!3331148 m!3673215))

(assert (=> b!3331148 m!3673215))

(declare-fun m!3673217 () Bool)

(assert (=> b!3331148 m!3673217))

(declare-fun m!3673219 () Bool)

(assert (=> b!3331151 m!3673219))

(declare-fun m!3673221 () Bool)

(assert (=> bm!241417 m!3673221))

(assert (=> b!3331152 m!3673209))

(declare-fun m!3673223 () Bool)

(assert (=> b!3331152 m!3673223))

(declare-fun m!3673225 () Bool)

(assert (=> b!3331150 m!3673225))

(assert (=> b!3331146 m!3673209))

(assert (=> b!3331146 m!3673215))

(assert (=> b!3331146 m!3673215))

(assert (=> b!3331146 m!3673217))

(assert (=> b!3331146 m!3673217))

(declare-fun m!3673227 () Bool)

(assert (=> b!3331146 m!3673227))

(declare-fun m!3673229 () Bool)

(assert (=> d!937331 m!3673229))

(assert (=> d!937331 m!3672377))

(assert (=> d!937331 m!3672379))

(assert (=> d!937331 m!3672911))

(assert (=> b!3331145 m!3673209))

(assert (=> b!3331145 m!3673215))

(assert (=> b!3331145 m!3673215))

(assert (=> b!3331145 m!3673217))

(assert (=> b!3331145 m!3673217))

(declare-fun m!3673231 () Bool)

(assert (=> b!3331145 m!3673231))

(assert (=> b!3331147 m!3673209))

(declare-fun m!3673233 () Bool)

(assert (=> b!3331147 m!3673233))

(assert (=> b!3331147 m!3672115))

(assert (=> b!3330577 d!937331))

(declare-fun b!3331175 () Bool)

(declare-fun e!2071592 () List!36811)

(assert (=> b!3331175 (= e!2071592 (++!8925 (list!13222 (left!28593 (c!565595 (charsOf!3350 separatorToken!241)))) (list!13222 (right!28923 (c!565595 (charsOf!3350 separatorToken!241))))))))

(declare-fun b!3331174 () Bool)

(assert (=> b!3331174 (= e!2071592 (list!13225 (xs!14185 (c!565595 (charsOf!3350 separatorToken!241)))))))

(declare-fun b!3331172 () Bool)

(declare-fun e!2071591 () List!36811)

(assert (=> b!3331172 (= e!2071591 Nil!36687)))

(declare-fun d!937333 () Bool)

(declare-fun c!565728 () Bool)

(assert (=> d!937333 (= c!565728 ((_ is Empty!11047) (c!565595 (charsOf!3350 separatorToken!241))))))

(assert (=> d!937333 (= (list!13222 (c!565595 (charsOf!3350 separatorToken!241))) e!2071591)))

(declare-fun b!3331173 () Bool)

(assert (=> b!3331173 (= e!2071591 e!2071592)))

(declare-fun c!565729 () Bool)

(assert (=> b!3331173 (= c!565729 ((_ is Leaf!17326) (c!565595 (charsOf!3350 separatorToken!241))))))

(assert (= (and d!937333 c!565728) b!3331172))

(assert (= (and d!937333 (not c!565728)) b!3331173))

(assert (= (and b!3331173 c!565729) b!3331174))

(assert (= (and b!3331173 (not c!565729)) b!3331175))

(declare-fun m!3673235 () Bool)

(assert (=> b!3331175 m!3673235))

(declare-fun m!3673237 () Bool)

(assert (=> b!3331175 m!3673237))

(assert (=> b!3331175 m!3673235))

(assert (=> b!3331175 m!3673237))

(declare-fun m!3673239 () Bool)

(assert (=> b!3331175 m!3673239))

(declare-fun m!3673241 () Bool)

(assert (=> b!3331174 m!3673241))

(assert (=> d!936937 d!937333))

(assert (=> b!3330574 d!937175))

(assert (=> b!3330574 d!937177))

(assert (=> b!3330574 d!937143))

(declare-fun bs!551402 () Bool)

(declare-fun d!937335 () Bool)

(assert (= bs!551402 (and d!937335 b!3330351)))

(declare-fun lambda!119859 () Int)

(assert (=> bs!551402 (not (= lambda!119859 lambda!119825))))

(declare-fun bs!551403 () Bool)

(assert (= bs!551403 (and d!937335 d!937033)))

(assert (=> bs!551403 (= lambda!119859 lambda!119835)))

(declare-fun b!3331299 () Bool)

(declare-fun e!2071669 () Bool)

(assert (=> b!3331299 (= e!2071669 true)))

(declare-fun b!3331298 () Bool)

(declare-fun e!2071668 () Bool)

(assert (=> b!3331298 (= e!2071668 e!2071669)))

(declare-fun b!3331297 () Bool)

(declare-fun e!2071667 () Bool)

(assert (=> b!3331297 (= e!2071667 e!2071668)))

(assert (=> d!937335 e!2071667))

(assert (= b!3331298 b!3331299))

(assert (= b!3331297 b!3331298))

(assert (= (and d!937335 ((_ is Cons!36688) rules!2135)) b!3331297))

(assert (=> b!3331299 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (h!42108 rules!2135)))) (dynLambda!15149 order!19215 lambda!119859))))

(assert (=> b!3331299 (< (dynLambda!15150 order!19217 (toChars!7363 (transformation!5336 (h!42108 rules!2135)))) (dynLambda!15149 order!19215 lambda!119859))))

(assert (=> d!937335 true))

(declare-fun lt!1132412 () Bool)

(assert (=> d!937335 (= lt!1132412 (forall!7665 (list!13223 lt!1132040) lambda!119859))))

(declare-fun e!2071665 () Bool)

(assert (=> d!937335 (= lt!1132412 e!2071665)))

(declare-fun res!1351219 () Bool)

(assert (=> d!937335 (=> res!1351219 e!2071665)))

(assert (=> d!937335 (= res!1351219 (not ((_ is Cons!36689) (list!13223 lt!1132040))))))

(assert (=> d!937335 (not (isEmpty!20857 rules!2135))))

(assert (=> d!937335 (= (rulesProduceEachTokenIndividuallyList!1789 thiss!18206 rules!2135 (list!13223 lt!1132040)) lt!1132412)))

(declare-fun b!3331295 () Bool)

(declare-fun e!2071666 () Bool)

(assert (=> b!3331295 (= e!2071665 e!2071666)))

(declare-fun res!1351218 () Bool)

(assert (=> b!3331295 (=> (not res!1351218) (not e!2071666))))

(assert (=> b!3331295 (= res!1351218 (rulesProduceIndividualToken!2417 thiss!18206 rules!2135 (h!42109 (list!13223 lt!1132040))))))

(declare-fun b!3331296 () Bool)

(assert (=> b!3331296 (= e!2071666 (rulesProduceEachTokenIndividuallyList!1789 thiss!18206 rules!2135 (t!257170 (list!13223 lt!1132040))))))

(assert (= (and d!937335 (not res!1351219)) b!3331295))

(assert (= (and b!3331295 res!1351218) b!3331296))

(assert (=> d!937335 m!3672123))

(declare-fun m!3673473 () Bool)

(assert (=> d!937335 m!3673473))

(assert (=> d!937335 m!3671987))

(declare-fun m!3673475 () Bool)

(assert (=> b!3331295 m!3673475))

(declare-fun m!3673477 () Bool)

(assert (=> b!3331296 m!3673477))

(assert (=> b!3330735 d!937335))

(assert (=> b!3330735 d!937267))

(declare-fun d!937403 () Bool)

(declare-fun e!2071721 () Bool)

(assert (=> d!937403 e!2071721))

(declare-fun res!1351269 () Bool)

(assert (=> d!937403 (=> res!1351269 e!2071721)))

(declare-fun lt!1132457 () Option!7320)

(assert (=> d!937403 (= res!1351269 (isEmpty!20863 lt!1132457))))

(declare-fun e!2071722 () Option!7320)

(assert (=> d!937403 (= lt!1132457 e!2071722)))

(declare-fun c!565792 () Bool)

(declare-datatypes ((tuple2!36210 0))(
  ( (tuple2!36211 (_1!21239 List!36811) (_2!21239 List!36811)) )
))
(declare-fun lt!1132456 () tuple2!36210)

(assert (=> d!937403 (= c!565792 (isEmpty!20855 (_1!21239 lt!1132456)))))

(declare-fun findLongestMatch!774 (Regex!10095 List!36811) tuple2!36210)

(assert (=> d!937403 (= lt!1132456 (findLongestMatch!774 (regex!5336 (h!42108 rules!2135)) lt!1132041))))

(assert (=> d!937403 (ruleValid!1681 thiss!18206 (h!42108 rules!2135))))

(assert (=> d!937403 (= (maxPrefixOneRule!1658 thiss!18206 (h!42108 rules!2135) lt!1132041) lt!1132457)))

(declare-fun b!3331395 () Bool)

(assert (=> b!3331395 (= e!2071722 (Some!7319 (tuple2!36201 (Token!10039 (apply!8481 (transformation!5336 (h!42108 rules!2135)) (seqFromList!3725 (_1!21239 lt!1132456))) (h!42108 rules!2135) (size!27745 (seqFromList!3725 (_1!21239 lt!1132456))) (_1!21239 lt!1132456)) (_2!21239 lt!1132456))))))

(declare-fun lt!1132458 () Unit!51698)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!832 (Regex!10095 List!36811) Unit!51698)

(assert (=> b!3331395 (= lt!1132458 (longestMatchIsAcceptedByMatchOrIsEmpty!832 (regex!5336 (h!42108 rules!2135)) lt!1132041))))

(declare-fun res!1351272 () Bool)

(declare-fun findLongestMatchInner!859 (Regex!10095 List!36811 Int List!36811 List!36811 Int) tuple2!36210)

(assert (=> b!3331395 (= res!1351272 (isEmpty!20855 (_1!21239 (findLongestMatchInner!859 (regex!5336 (h!42108 rules!2135)) Nil!36687 (size!27742 Nil!36687) lt!1132041 lt!1132041 (size!27742 lt!1132041)))))))

(declare-fun e!2071724 () Bool)

(assert (=> b!3331395 (=> res!1351272 e!2071724)))

(assert (=> b!3331395 e!2071724))

(declare-fun lt!1132459 () Unit!51698)

(assert (=> b!3331395 (= lt!1132459 lt!1132458)))

(declare-fun lt!1132455 () Unit!51698)

(declare-fun lemmaSemiInverse!1205 (TokenValueInjection!10560 BalanceConc!21708) Unit!51698)

(assert (=> b!3331395 (= lt!1132455 (lemmaSemiInverse!1205 (transformation!5336 (h!42108 rules!2135)) (seqFromList!3725 (_1!21239 lt!1132456))))))

(declare-fun b!3331396 () Bool)

(declare-fun res!1351273 () Bool)

(declare-fun e!2071723 () Bool)

(assert (=> b!3331396 (=> (not res!1351273) (not e!2071723))))

(assert (=> b!3331396 (= res!1351273 (= (++!8925 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132457)))) (_2!21234 (get!11687 lt!1132457))) lt!1132041))))

(declare-fun b!3331397 () Bool)

(assert (=> b!3331397 (= e!2071723 (= (size!27739 (_1!21234 (get!11687 lt!1132457))) (size!27742 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132457))))))))

(declare-fun b!3331398 () Bool)

(assert (=> b!3331398 (= e!2071721 e!2071723)))

(declare-fun res!1351271 () Bool)

(assert (=> b!3331398 (=> (not res!1351271) (not e!2071723))))

(assert (=> b!3331398 (= res!1351271 (matchR!4687 (regex!5336 (h!42108 rules!2135)) (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132457))))))))

(declare-fun b!3331399 () Bool)

(assert (=> b!3331399 (= e!2071724 (matchR!4687 (regex!5336 (h!42108 rules!2135)) (_1!21239 (findLongestMatchInner!859 (regex!5336 (h!42108 rules!2135)) Nil!36687 (size!27742 Nil!36687) lt!1132041 lt!1132041 (size!27742 lt!1132041)))))))

(declare-fun b!3331400 () Bool)

(declare-fun res!1351270 () Bool)

(assert (=> b!3331400 (=> (not res!1351270) (not e!2071723))))

(assert (=> b!3331400 (= res!1351270 (= (value!172536 (_1!21234 (get!11687 lt!1132457))) (apply!8481 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132457)))) (seqFromList!3725 (originalCharacters!6050 (_1!21234 (get!11687 lt!1132457)))))))))

(declare-fun b!3331401 () Bool)

(declare-fun res!1351268 () Bool)

(assert (=> b!3331401 (=> (not res!1351268) (not e!2071723))))

(assert (=> b!3331401 (= res!1351268 (= (rule!7860 (_1!21234 (get!11687 lt!1132457))) (h!42108 rules!2135)))))

(declare-fun b!3331402 () Bool)

(declare-fun res!1351267 () Bool)

(assert (=> b!3331402 (=> (not res!1351267) (not e!2071723))))

(assert (=> b!3331402 (= res!1351267 (< (size!27742 (_2!21234 (get!11687 lt!1132457))) (size!27742 lt!1132041)))))

(declare-fun b!3331403 () Bool)

(assert (=> b!3331403 (= e!2071722 None!7319)))

(assert (= (and d!937403 c!565792) b!3331403))

(assert (= (and d!937403 (not c!565792)) b!3331395))

(assert (= (and b!3331395 (not res!1351272)) b!3331399))

(assert (= (and d!937403 (not res!1351269)) b!3331398))

(assert (= (and b!3331398 res!1351271) b!3331396))

(assert (= (and b!3331396 res!1351273) b!3331402))

(assert (= (and b!3331402 res!1351267) b!3331401))

(assert (= (and b!3331401 res!1351268) b!3331400))

(assert (= (and b!3331400 res!1351270) b!3331397))

(declare-fun m!3673609 () Bool)

(assert (=> b!3331399 m!3673609))

(assert (=> b!3331399 m!3672115))

(assert (=> b!3331399 m!3673609))

(assert (=> b!3331399 m!3672115))

(declare-fun m!3673611 () Bool)

(assert (=> b!3331399 m!3673611))

(declare-fun m!3673613 () Bool)

(assert (=> b!3331399 m!3673613))

(declare-fun m!3673615 () Bool)

(assert (=> b!3331402 m!3673615))

(declare-fun m!3673617 () Bool)

(assert (=> b!3331402 m!3673617))

(assert (=> b!3331402 m!3672115))

(assert (=> b!3331396 m!3673615))

(declare-fun m!3673619 () Bool)

(assert (=> b!3331396 m!3673619))

(assert (=> b!3331396 m!3673619))

(declare-fun m!3673621 () Bool)

(assert (=> b!3331396 m!3673621))

(assert (=> b!3331396 m!3673621))

(declare-fun m!3673623 () Bool)

(assert (=> b!3331396 m!3673623))

(assert (=> b!3331400 m!3673615))

(declare-fun m!3673625 () Bool)

(assert (=> b!3331400 m!3673625))

(assert (=> b!3331400 m!3673625))

(declare-fun m!3673627 () Bool)

(assert (=> b!3331400 m!3673627))

(assert (=> b!3331401 m!3673615))

(assert (=> b!3331398 m!3673615))

(assert (=> b!3331398 m!3673619))

(assert (=> b!3331398 m!3673619))

(assert (=> b!3331398 m!3673621))

(assert (=> b!3331398 m!3673621))

(declare-fun m!3673629 () Bool)

(assert (=> b!3331398 m!3673629))

(assert (=> b!3331397 m!3673615))

(declare-fun m!3673631 () Bool)

(assert (=> b!3331397 m!3673631))

(declare-fun m!3673633 () Bool)

(assert (=> b!3331395 m!3673633))

(assert (=> b!3331395 m!3673633))

(declare-fun m!3673635 () Bool)

(assert (=> b!3331395 m!3673635))

(assert (=> b!3331395 m!3673609))

(assert (=> b!3331395 m!3672115))

(assert (=> b!3331395 m!3673611))

(declare-fun m!3673637 () Bool)

(assert (=> b!3331395 m!3673637))

(assert (=> b!3331395 m!3673633))

(declare-fun m!3673639 () Bool)

(assert (=> b!3331395 m!3673639))

(assert (=> b!3331395 m!3672115))

(declare-fun m!3673641 () Bool)

(assert (=> b!3331395 m!3673641))

(assert (=> b!3331395 m!3673609))

(assert (=> b!3331395 m!3673633))

(declare-fun m!3673643 () Bool)

(assert (=> b!3331395 m!3673643))

(declare-fun m!3673645 () Bool)

(assert (=> d!937403 m!3673645))

(declare-fun m!3673647 () Bool)

(assert (=> d!937403 m!3673647))

(declare-fun m!3673649 () Bool)

(assert (=> d!937403 m!3673649))

(assert (=> d!937403 m!3672909))

(assert (=> bm!241407 d!937403))

(declare-fun d!937465 () Bool)

(declare-fun c!565795 () Bool)

(assert (=> d!937465 (= c!565795 ((_ is Node!11047) (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))))))

(declare-fun e!2071729 () Bool)

(assert (=> d!937465 (= (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))) e!2071729)))

(declare-fun b!3331410 () Bool)

(declare-fun inv!49710 (Conc!11047) Bool)

(assert (=> b!3331410 (= e!2071729 (inv!49710 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))))))

(declare-fun b!3331411 () Bool)

(declare-fun e!2071730 () Bool)

(assert (=> b!3331411 (= e!2071729 e!2071730)))

(declare-fun res!1351276 () Bool)

(assert (=> b!3331411 (= res!1351276 (not ((_ is Leaf!17326) (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))))))))

(assert (=> b!3331411 (=> res!1351276 e!2071730)))

(declare-fun b!3331412 () Bool)

(declare-fun inv!49711 (Conc!11047) Bool)

(assert (=> b!3331412 (= e!2071730 (inv!49711 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))))))

(assert (= (and d!937465 c!565795) b!3331410))

(assert (= (and d!937465 (not c!565795)) b!3331411))

(assert (= (and b!3331411 (not res!1351276)) b!3331412))

(declare-fun m!3673651 () Bool)

(assert (=> b!3331410 m!3673651))

(declare-fun m!3673653 () Bool)

(assert (=> b!3331412 m!3673653))

(assert (=> b!3330543 d!937465))

(declare-fun b!3331413 () Bool)

(declare-fun e!2071732 () List!36811)

(assert (=> b!3331413 (= e!2071732 (_2!21234 (get!11687 lt!1132145)))))

(declare-fun d!937467 () Bool)

(declare-fun e!2071731 () Bool)

(assert (=> d!937467 e!2071731))

(declare-fun res!1351277 () Bool)

(assert (=> d!937467 (=> (not res!1351277) (not e!2071731))))

(declare-fun lt!1132460 () List!36811)

(assert (=> d!937467 (= res!1351277 (= (content!5016 lt!1132460) ((_ map or) (content!5016 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))) (content!5016 (_2!21234 (get!11687 lt!1132145))))))))

(assert (=> d!937467 (= lt!1132460 e!2071732)))

(declare-fun c!565796 () Bool)

(assert (=> d!937467 (= c!565796 ((_ is Nil!36687) (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))))))

(assert (=> d!937467 (= (++!8925 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145)))) (_2!21234 (get!11687 lt!1132145))) lt!1132460)))

(declare-fun b!3331416 () Bool)

(assert (=> b!3331416 (= e!2071731 (or (not (= (_2!21234 (get!11687 lt!1132145)) Nil!36687)) (= lt!1132460 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145)))))))))

(declare-fun b!3331414 () Bool)

(assert (=> b!3331414 (= e!2071732 (Cons!36687 (h!42107 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))) (++!8925 (t!257168 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))) (_2!21234 (get!11687 lt!1132145)))))))

(declare-fun b!3331415 () Bool)

(declare-fun res!1351278 () Bool)

(assert (=> b!3331415 (=> (not res!1351278) (not e!2071731))))

(assert (=> b!3331415 (= res!1351278 (= (size!27742 lt!1132460) (+ (size!27742 (list!13219 (charsOf!3350 (_1!21234 (get!11687 lt!1132145))))) (size!27742 (_2!21234 (get!11687 lt!1132145))))))))

(assert (= (and d!937467 c!565796) b!3331413))

(assert (= (and d!937467 (not c!565796)) b!3331414))

(assert (= (and d!937467 res!1351277) b!3331415))

(assert (= (and b!3331415 res!1351278) b!3331416))

(declare-fun m!3673655 () Bool)

(assert (=> d!937467 m!3673655))

(assert (=> d!937467 m!3672363))

(declare-fun m!3673657 () Bool)

(assert (=> d!937467 m!3673657))

(declare-fun m!3673659 () Bool)

(assert (=> d!937467 m!3673659))

(declare-fun m!3673661 () Bool)

(assert (=> b!3331414 m!3673661))

(declare-fun m!3673663 () Bool)

(assert (=> b!3331415 m!3673663))

(assert (=> b!3331415 m!3672363))

(declare-fun m!3673665 () Bool)

(assert (=> b!3331415 m!3673665))

(assert (=> b!3331415 m!3672385))

(assert (=> b!3330572 d!937467))

(assert (=> b!3330572 d!937175))

(assert (=> b!3330572 d!937177))

(assert (=> b!3330572 d!937143))

(assert (=> d!937013 d!937029))

(declare-fun d!937469 () Bool)

(assert (=> d!937469 (rulesProduceIndividualToken!2417 thiss!18206 rules!2135 (h!42109 tokens!494))))

(assert (=> d!937469 true))

(declare-fun _$77!887 () Unit!51698)

(assert (=> d!937469 (= (choose!19304 thiss!18206 rules!2135 tokens!494 (h!42109 tokens!494)) _$77!887)))

(declare-fun bs!551419 () Bool)

(assert (= bs!551419 d!937469))

(assert (=> bs!551419 m!3672041))

(assert (=> d!937013 d!937469))

(assert (=> d!937013 d!936979))

(declare-fun d!937471 () Bool)

(assert (=> d!937471 (= (list!13223 (_1!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494)))))) (list!13226 (c!565596 (_1!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 (h!42109 tokens!494))))))))))

(declare-fun bs!551420 () Bool)

(assert (= bs!551420 d!937471))

(declare-fun m!3673667 () Bool)

(assert (=> bs!551420 m!3673667))

(assert (=> d!937029 d!937471))

(assert (=> d!937029 d!937303))

(assert (=> d!937029 d!937305))

(declare-fun d!937473 () Bool)

(assert (=> d!937473 (= (list!13223 (singletonSeq!2432 (h!42109 tokens!494))) (list!13226 (c!565596 (singletonSeq!2432 (h!42109 tokens!494)))))))

(declare-fun bs!551421 () Bool)

(assert (= bs!551421 d!937473))

(declare-fun m!3673669 () Bool)

(assert (=> bs!551421 m!3673669))

(assert (=> d!937029 d!937473))

(assert (=> d!937029 d!936963))

(declare-fun d!937475 () Bool)

(declare-fun lt!1132461 () Int)

(assert (=> d!937475 (= lt!1132461 (size!27748 (list!13223 (_1!21235 lt!1132159))))))

(assert (=> d!937475 (= lt!1132461 (size!27750 (c!565596 (_1!21235 lt!1132159))))))

(assert (=> d!937475 (= (size!27743 (_1!21235 lt!1132159)) lt!1132461)))

(declare-fun bs!551422 () Bool)

(assert (= bs!551422 d!937475))

(assert (=> bs!551422 m!3673113))

(assert (=> bs!551422 m!3673113))

(declare-fun m!3673671 () Bool)

(assert (=> bs!551422 m!3673671))

(declare-fun m!3673673 () Bool)

(assert (=> bs!551422 m!3673673))

(assert (=> d!937029 d!937475))

(assert (=> d!937029 d!936979))

(declare-fun d!937477 () Bool)

(assert (=> d!937477 (= (inv!49707 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))) (isBalanced!3321 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))))))

(declare-fun bs!551423 () Bool)

(assert (= bs!551423 d!937477))

(declare-fun m!3673675 () Bool)

(assert (=> bs!551423 m!3673675))

(assert (=> tb!174547 d!937477))

(declare-fun b!3331417 () Bool)

(declare-fun e!2071734 () List!36811)

(assert (=> b!3331417 (= e!2071734 (printList!1473 thiss!18206 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689))))))

(declare-fun d!937479 () Bool)

(declare-fun e!2071733 () Bool)

(assert (=> d!937479 e!2071733))

(declare-fun res!1351279 () Bool)

(assert (=> d!937479 (=> (not res!1351279) (not e!2071733))))

(declare-fun lt!1132462 () List!36811)

(assert (=> d!937479 (= res!1351279 (= (content!5016 lt!1132462) ((_ map or) (content!5016 (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) (content!5016 (printList!1473 thiss!18206 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))))))

(assert (=> d!937479 (= lt!1132462 e!2071734)))

(declare-fun c!565797 () Bool)

(assert (=> d!937479 (= c!565797 ((_ is Nil!36687) (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))))))

(assert (=> d!937479 (= (++!8925 (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))) (printList!1473 thiss!18206 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689)))) lt!1132462)))

(declare-fun b!3331420 () Bool)

(assert (=> b!3331420 (= e!2071733 (or (not (= (printList!1473 thiss!18206 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689))) Nil!36687)) (= lt!1132462 (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))))))

(declare-fun b!3331418 () Bool)

(assert (=> b!3331418 (= e!2071734 (Cons!36687 (h!42107 (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) (++!8925 (t!257168 (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) (printList!1473 thiss!18206 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689))))))))

(declare-fun b!3331419 () Bool)

(declare-fun res!1351280 () Bool)

(assert (=> b!3331419 (=> (not res!1351280) (not e!2071733))))

(assert (=> b!3331419 (= res!1351280 (= (size!27742 lt!1132462) (+ (size!27742 (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) (size!27742 (printList!1473 thiss!18206 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))))))

(assert (= (and d!937479 c!565797) b!3331417))

(assert (= (and d!937479 (not c!565797)) b!3331418))

(assert (= (and d!937479 res!1351279) b!3331419))

(assert (= (and b!3331419 res!1351280) b!3331420))

(declare-fun m!3673677 () Bool)

(assert (=> d!937479 m!3673677))

(assert (=> d!937479 m!3672219))

(declare-fun m!3673679 () Bool)

(assert (=> d!937479 m!3673679))

(assert (=> d!937479 m!3672221))

(declare-fun m!3673681 () Bool)

(assert (=> d!937479 m!3673681))

(assert (=> b!3331418 m!3672221))

(declare-fun m!3673683 () Bool)

(assert (=> b!3331418 m!3673683))

(declare-fun m!3673685 () Bool)

(assert (=> b!3331419 m!3673685))

(assert (=> b!3331419 m!3672219))

(declare-fun m!3673687 () Bool)

(assert (=> b!3331419 m!3673687))

(assert (=> b!3331419 m!3672221))

(declare-fun m!3673689 () Bool)

(assert (=> b!3331419 m!3673689))

(assert (=> b!3330460 d!937479))

(declare-fun d!937481 () Bool)

(assert (=> d!937481 (= (list!13219 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))) (list!13222 (c!565595 (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))))))

(declare-fun bs!551424 () Bool)

(assert (= bs!551424 d!937481))

(declare-fun m!3673691 () Bool)

(assert (=> bs!551424 m!3673691))

(assert (=> b!3330460 d!937481))

(declare-fun d!937483 () Bool)

(declare-fun lt!1132463 () BalanceConc!21708)

(assert (=> d!937483 (= (list!13219 lt!1132463) (originalCharacters!6050 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))))

(assert (=> d!937483 (= lt!1132463 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) (value!172536 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))))

(assert (=> d!937483 (= (charsOf!3350 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))) lt!1132463)))

(declare-fun b_lambda!94157 () Bool)

(assert (=> (not b_lambda!94157) (not d!937483)))

(declare-fun t!257317 () Bool)

(declare-fun tb!174655 () Bool)

(assert (=> (and b!3330794 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))) t!257317) tb!174655))

(declare-fun b!3331421 () Bool)

(declare-fun e!2071735 () Bool)

(declare-fun tp!1040981 () Bool)

(assert (=> b!3331421 (= e!2071735 (and (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) (value!172536 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))) tp!1040981))))

(declare-fun result!217808 () Bool)

(assert (=> tb!174655 (= result!217808 (and (inv!49707 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) (value!172536 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) e!2071735))))

(assert (= tb!174655 b!3331421))

(declare-fun m!3673693 () Bool)

(assert (=> b!3331421 m!3673693))

(declare-fun m!3673695 () Bool)

(assert (=> tb!174655 m!3673695))

(assert (=> d!937483 t!257317))

(declare-fun b_and!229851 () Bool)

(assert (= b_and!229833 (and (=> t!257317 result!217808) b_and!229851)))

(declare-fun t!257319 () Bool)

(declare-fun tb!174657 () Bool)

(assert (=> (and b!3330357 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))) t!257319) tb!174657))

(declare-fun result!217810 () Bool)

(assert (= result!217810 result!217808))

(assert (=> d!937483 t!257319))

(declare-fun b_and!229853 () Bool)

(assert (= b_and!229831 (and (=> t!257319 result!217810) b_and!229853)))

(declare-fun t!257321 () Bool)

(declare-fun tb!174659 () Bool)

(assert (=> (and b!3330369 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))) t!257321) tb!174659))

(declare-fun result!217812 () Bool)

(assert (= result!217812 result!217808))

(assert (=> d!937483 t!257321))

(declare-fun b_and!229855 () Bool)

(assert (= b_and!229835 (and (=> t!257321 result!217812) b_and!229855)))

(declare-fun t!257323 () Bool)

(declare-fun tb!174661 () Bool)

(assert (=> (and b!3330805 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))) t!257323) tb!174661))

(declare-fun result!217814 () Bool)

(assert (= result!217814 result!217808))

(assert (=> d!937483 t!257323))

(declare-fun b_and!229857 () Bool)

(assert (= b_and!229837 (and (=> t!257323 result!217814) b_and!229857)))

(declare-fun tb!174663 () Bool)

(declare-fun t!257325 () Bool)

(assert (=> (and b!3330365 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))) t!257325) tb!174663))

(declare-fun result!217816 () Bool)

(assert (= result!217816 result!217808))

(assert (=> d!937483 t!257325))

(declare-fun b_and!229859 () Bool)

(assert (= b_and!229839 (and (=> t!257325 result!217816) b_and!229859)))

(declare-fun m!3673697 () Bool)

(assert (=> d!937483 m!3673697))

(declare-fun m!3673699 () Bool)

(assert (=> d!937483 m!3673699))

(assert (=> b!3330460 d!937483))

(declare-fun d!937485 () Bool)

(declare-fun c!565798 () Bool)

(assert (=> d!937485 (= c!565798 ((_ is Cons!36689) (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689))))))

(declare-fun e!2071736 () List!36811)

(assert (=> d!937485 (= (printList!1473 thiss!18206 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689))) e!2071736)))

(declare-fun b!3331422 () Bool)

(assert (=> b!3331422 (= e!2071736 (++!8925 (list!13219 (charsOf!3350 (h!42109 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689))))) (printList!1473 thiss!18206 (t!257170 (t!257170 (Cons!36689 (h!42109 tokens!494) Nil!36689))))))))

(declare-fun b!3331423 () Bool)

(assert (=> b!3331423 (= e!2071736 Nil!36687)))

(assert (= (and d!937485 c!565798) b!3331422))

(assert (= (and d!937485 (not c!565798)) b!3331423))

(declare-fun m!3673701 () Bool)

(assert (=> b!3331422 m!3673701))

(assert (=> b!3331422 m!3673701))

(declare-fun m!3673703 () Bool)

(assert (=> b!3331422 m!3673703))

(declare-fun m!3673705 () Bool)

(assert (=> b!3331422 m!3673705))

(assert (=> b!3331422 m!3673703))

(assert (=> b!3331422 m!3673705))

(declare-fun m!3673707 () Bool)

(assert (=> b!3331422 m!3673707))

(assert (=> b!3330460 d!937485))

(declare-fun d!937487 () Bool)

(declare-fun lt!1132464 () Int)

(assert (=> d!937487 (>= lt!1132464 0)))

(declare-fun e!2071737 () Int)

(assert (=> d!937487 (= lt!1132464 e!2071737)))

(declare-fun c!565799 () Bool)

(assert (=> d!937487 (= c!565799 ((_ is Nil!36687) (originalCharacters!6050 separatorToken!241)))))

(assert (=> d!937487 (= (size!27742 (originalCharacters!6050 separatorToken!241)) lt!1132464)))

(declare-fun b!3331424 () Bool)

(assert (=> b!3331424 (= e!2071737 0)))

(declare-fun b!3331425 () Bool)

(assert (=> b!3331425 (= e!2071737 (+ 1 (size!27742 (t!257168 (originalCharacters!6050 separatorToken!241)))))))

(assert (= (and d!937487 c!565799) b!3331424))

(assert (= (and d!937487 (not c!565799)) b!3331425))

(declare-fun m!3673709 () Bool)

(assert (=> b!3331425 m!3673709))

(assert (=> b!3330581 d!937487))

(declare-fun b!3331438 () Bool)

(declare-fun e!2071742 () Bool)

(declare-fun e!2071743 () Bool)

(assert (=> b!3331438 (= e!2071742 e!2071743)))

(declare-fun res!1351293 () Bool)

(assert (=> b!3331438 (=> (not res!1351293) (not e!2071743))))

(declare-fun height!1639 (Conc!11048) Int)

(assert (=> b!3331438 (= res!1351293 (<= (- 1) (- (height!1639 (left!28594 (c!565596 lt!1132093))) (height!1639 (right!28924 (c!565596 lt!1132093))))))))

(declare-fun b!3331439 () Bool)

(assert (=> b!3331439 (= e!2071743 (not (isEmpty!20865 (right!28924 (c!565596 lt!1132093)))))))

(declare-fun b!3331440 () Bool)

(declare-fun res!1351297 () Bool)

(assert (=> b!3331440 (=> (not res!1351297) (not e!2071743))))

(assert (=> b!3331440 (= res!1351297 (isBalanced!3318 (right!28924 (c!565596 lt!1132093))))))

(declare-fun d!937489 () Bool)

(declare-fun res!1351294 () Bool)

(assert (=> d!937489 (=> res!1351294 e!2071742)))

(assert (=> d!937489 (= res!1351294 (not ((_ is Node!11048) (c!565596 lt!1132093))))))

(assert (=> d!937489 (= (isBalanced!3318 (c!565596 lt!1132093)) e!2071742)))

(declare-fun b!3331441 () Bool)

(declare-fun res!1351296 () Bool)

(assert (=> b!3331441 (=> (not res!1351296) (not e!2071743))))

(assert (=> b!3331441 (= res!1351296 (<= (- (height!1639 (left!28594 (c!565596 lt!1132093))) (height!1639 (right!28924 (c!565596 lt!1132093)))) 1))))

(declare-fun b!3331442 () Bool)

(declare-fun res!1351295 () Bool)

(assert (=> b!3331442 (=> (not res!1351295) (not e!2071743))))

(assert (=> b!3331442 (= res!1351295 (isBalanced!3318 (left!28594 (c!565596 lt!1132093))))))

(declare-fun b!3331443 () Bool)

(declare-fun res!1351298 () Bool)

(assert (=> b!3331443 (=> (not res!1351298) (not e!2071743))))

(assert (=> b!3331443 (= res!1351298 (not (isEmpty!20865 (left!28594 (c!565596 lt!1132093)))))))

(assert (= (and d!937489 (not res!1351294)) b!3331438))

(assert (= (and b!3331438 res!1351293) b!3331441))

(assert (= (and b!3331441 res!1351296) b!3331442))

(assert (= (and b!3331442 res!1351295) b!3331440))

(assert (= (and b!3331440 res!1351297) b!3331443))

(assert (= (and b!3331443 res!1351298) b!3331439))

(declare-fun m!3673711 () Bool)

(assert (=> b!3331438 m!3673711))

(declare-fun m!3673713 () Bool)

(assert (=> b!3331438 m!3673713))

(declare-fun m!3673715 () Bool)

(assert (=> b!3331439 m!3673715))

(declare-fun m!3673717 () Bool)

(assert (=> b!3331443 m!3673717))

(declare-fun m!3673719 () Bool)

(assert (=> b!3331442 m!3673719))

(declare-fun m!3673721 () Bool)

(assert (=> b!3331440 m!3673721))

(assert (=> b!3331441 m!3673711))

(assert (=> b!3331441 m!3673713))

(assert (=> b!3330455 d!937489))

(declare-fun d!937491 () Bool)

(assert (=> d!937491 (= (isEmpty!20864 (list!13223 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))) ((_ is Nil!36689) (list!13223 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))))))

(assert (=> d!937019 d!937491))

(declare-fun d!937493 () Bool)

(assert (=> d!937493 (= (list!13223 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041)))) (list!13226 (c!565596 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))))))

(declare-fun bs!551425 () Bool)

(assert (= bs!551425 d!937493))

(declare-fun m!3673723 () Bool)

(assert (=> bs!551425 m!3673723))

(assert (=> d!937019 d!937493))

(declare-fun d!937495 () Bool)

(declare-fun lt!1132467 () Bool)

(assert (=> d!937495 (= lt!1132467 (isEmpty!20864 (list!13226 (c!565596 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041)))))))))

(assert (=> d!937495 (= lt!1132467 (= (size!27750 (c!565596 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))) 0))))

(assert (=> d!937495 (= (isEmpty!20865 (c!565596 (_1!21235 (lex!2251 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))) lt!1132467)))

(declare-fun bs!551426 () Bool)

(assert (= bs!551426 d!937495))

(assert (=> bs!551426 m!3673723))

(assert (=> bs!551426 m!3673723))

(declare-fun m!3673725 () Bool)

(assert (=> bs!551426 m!3673725))

(declare-fun m!3673727 () Bool)

(assert (=> bs!551426 m!3673727))

(assert (=> d!937019 d!937495))

(declare-fun d!937497 () Bool)

(declare-fun charsToBigInt!0 (List!36810 Int) Int)

(assert (=> d!937497 (= (inv!15 (value!172536 (h!42109 tokens!494))) (= (charsToBigInt!0 (text!39411 (value!172536 (h!42109 tokens!494))) 0) (value!172531 (value!172536 (h!42109 tokens!494)))))))

(declare-fun bs!551427 () Bool)

(assert (= bs!551427 d!937497))

(declare-fun m!3673729 () Bool)

(assert (=> bs!551427 m!3673729))

(assert (=> b!3330479 d!937497))

(declare-fun d!937499 () Bool)

(declare-fun charsToBigInt!1 (List!36810) Int)

(assert (=> d!937499 (= (inv!17 (value!172536 (h!42109 tokens!494))) (= (charsToBigInt!1 (text!39410 (value!172536 (h!42109 tokens!494)))) (value!172528 (value!172536 (h!42109 tokens!494)))))))

(declare-fun bs!551428 () Bool)

(assert (= bs!551428 d!937499))

(declare-fun m!3673731 () Bool)

(assert (=> bs!551428 m!3673731))

(assert (=> b!3330477 d!937499))

(declare-fun b!3331444 () Bool)

(declare-fun e!2071745 () Bool)

(assert (=> b!3331444 (= e!2071745 (inv!16 (value!172536 (h!42109 (t!257170 tokens!494)))))))

(declare-fun b!3331445 () Bool)

(declare-fun e!2071746 () Bool)

(assert (=> b!3331445 (= e!2071746 (inv!17 (value!172536 (h!42109 (t!257170 tokens!494)))))))

(declare-fun b!3331446 () Bool)

(declare-fun res!1351299 () Bool)

(declare-fun e!2071744 () Bool)

(assert (=> b!3331446 (=> res!1351299 e!2071744)))

(assert (=> b!3331446 (= res!1351299 (not ((_ is IntegerValue!16700) (value!172536 (h!42109 (t!257170 tokens!494))))))))

(assert (=> b!3331446 (= e!2071746 e!2071744)))

(declare-fun d!937501 () Bool)

(declare-fun c!565800 () Bool)

(assert (=> d!937501 (= c!565800 ((_ is IntegerValue!16698) (value!172536 (h!42109 (t!257170 tokens!494)))))))

(assert (=> d!937501 (= (inv!21 (value!172536 (h!42109 (t!257170 tokens!494)))) e!2071745)))

(declare-fun b!3331447 () Bool)

(assert (=> b!3331447 (= e!2071744 (inv!15 (value!172536 (h!42109 (t!257170 tokens!494)))))))

(declare-fun b!3331448 () Bool)

(assert (=> b!3331448 (= e!2071745 e!2071746)))

(declare-fun c!565801 () Bool)

(assert (=> b!3331448 (= c!565801 ((_ is IntegerValue!16699) (value!172536 (h!42109 (t!257170 tokens!494)))))))

(assert (= (and d!937501 c!565800) b!3331444))

(assert (= (and d!937501 (not c!565800)) b!3331448))

(assert (= (and b!3331448 c!565801) b!3331445))

(assert (= (and b!3331448 (not c!565801)) b!3331446))

(assert (= (and b!3331446 (not res!1351299)) b!3331447))

(declare-fun m!3673733 () Bool)

(assert (=> b!3331444 m!3673733))

(declare-fun m!3673735 () Bool)

(assert (=> b!3331445 m!3673735))

(declare-fun m!3673737 () Bool)

(assert (=> b!3331447 m!3673737))

(assert (=> b!3330792 d!937501))

(declare-fun d!937503 () Bool)

(declare-fun lt!1132468 () Bool)

(assert (=> d!937503 (= lt!1132468 (isEmpty!20864 (list!13223 (_1!21235 lt!1132157))))))

(assert (=> d!937503 (= lt!1132468 (isEmpty!20865 (c!565596 (_1!21235 lt!1132157))))))

(assert (=> d!937503 (= (isEmpty!20856 (_1!21235 lt!1132157)) lt!1132468)))

(declare-fun bs!551429 () Bool)

(assert (= bs!551429 d!937503))

(assert (=> bs!551429 m!3672417))

(assert (=> bs!551429 m!3672417))

(declare-fun m!3673739 () Bool)

(assert (=> bs!551429 m!3673739))

(declare-fun m!3673741 () Bool)

(assert (=> bs!551429 m!3673741))

(assert (=> b!3330594 d!937503))

(assert (=> d!937005 d!937009))

(assert (=> d!937005 d!937003))

(declare-fun d!937505 () Bool)

(assert (=> d!937505 (isEmpty!20855 (getSuffix!1430 lt!1132041 lt!1132041))))

(assert (=> d!937505 true))

(declare-fun _$66!408 () Unit!51698)

(assert (=> d!937505 (= (choose!19303 lt!1132041) _$66!408)))

(declare-fun bs!551430 () Bool)

(assert (= bs!551430 d!937505))

(assert (=> bs!551430 m!3672013))

(assert (=> bs!551430 m!3672013))

(assert (=> bs!551430 m!3672017))

(assert (=> d!937005 d!937505))

(declare-fun d!937507 () Bool)

(assert (=> d!937507 (= (isEmpty!20855 (originalCharacters!6050 (h!42109 tokens!494))) ((_ is Nil!36687) (originalCharacters!6050 (h!42109 tokens!494))))))

(assert (=> d!936999 d!937507))

(declare-fun d!937509 () Bool)

(declare-fun c!565802 () Bool)

(assert (=> d!937509 (= c!565802 ((_ is Node!11047) (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))))))

(declare-fun e!2071747 () Bool)

(assert (=> d!937509 (= (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))) e!2071747)))

(declare-fun b!3331449 () Bool)

(assert (=> b!3331449 (= e!2071747 (inv!49710 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))))))

(declare-fun b!3331450 () Bool)

(declare-fun e!2071748 () Bool)

(assert (=> b!3331450 (= e!2071747 e!2071748)))

(declare-fun res!1351300 () Bool)

(assert (=> b!3331450 (= res!1351300 (not ((_ is Leaf!17326) (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))))))))

(assert (=> b!3331450 (=> res!1351300 e!2071748)))

(declare-fun b!3331451 () Bool)

(assert (=> b!3331451 (= e!2071748 (inv!49711 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))))))

(assert (= (and d!937509 c!565802) b!3331449))

(assert (= (and d!937509 (not c!565802)) b!3331450))

(assert (= (and b!3331450 (not res!1351300)) b!3331451))

(declare-fun m!3673743 () Bool)

(assert (=> b!3331449 m!3673743))

(declare-fun m!3673745 () Bool)

(assert (=> b!3331451 m!3673745))

(assert (=> b!3330425 d!937509))

(declare-fun d!937511 () Bool)

(assert (=> d!937511 (= (list!13223 (_1!21235 lt!1132157)) (list!13226 (c!565596 (_1!21235 lt!1132157))))))

(declare-fun bs!551431 () Bool)

(assert (= bs!551431 d!937511))

(declare-fun m!3673747 () Bool)

(assert (=> bs!551431 m!3673747))

(assert (=> b!3330592 d!937511))

(assert (=> b!3330592 d!937215))

(assert (=> b!3330592 d!937233))

(declare-fun d!937513 () Bool)

(declare-fun lt!1132473 () BalanceConc!21708)

(assert (=> d!937513 (= (list!13219 lt!1132473) (printListTailRec!621 thiss!18206 (dropList!1138 lt!1132033 (+ 0 1)) (list!13219 (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (apply!8478 lt!1132033 0))))))))

(declare-fun e!2071749 () BalanceConc!21708)

(assert (=> d!937513 (= lt!1132473 e!2071749)))

(declare-fun c!565803 () Bool)

(assert (=> d!937513 (= c!565803 (>= (+ 0 1) (size!27743 lt!1132033)))))

(declare-fun e!2071750 () Bool)

(assert (=> d!937513 e!2071750))

(declare-fun res!1351301 () Bool)

(assert (=> d!937513 (=> (not res!1351301) (not e!2071750))))

(assert (=> d!937513 (= res!1351301 (>= (+ 0 1) 0))))

(assert (=> d!937513 (= (printTailRec!1420 thiss!18206 lt!1132033 (+ 0 1) (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (apply!8478 lt!1132033 0)))) lt!1132473)))

(declare-fun b!3331452 () Bool)

(assert (=> b!3331452 (= e!2071750 (<= (+ 0 1) (size!27743 lt!1132033)))))

(declare-fun b!3331453 () Bool)

(assert (=> b!3331453 (= e!2071749 (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (apply!8478 lt!1132033 0))))))

(declare-fun b!3331454 () Bool)

(assert (=> b!3331454 (= e!2071749 (printTailRec!1420 thiss!18206 lt!1132033 (+ 0 1 1) (++!8926 (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (apply!8478 lt!1132033 0))) (charsOf!3350 (apply!8478 lt!1132033 (+ 0 1))))))))

(declare-fun lt!1132470 () List!36813)

(assert (=> b!3331454 (= lt!1132470 (list!13223 lt!1132033))))

(declare-fun lt!1132475 () Unit!51698)

(assert (=> b!3331454 (= lt!1132475 (lemmaDropApply!1096 lt!1132470 (+ 0 1)))))

(assert (=> b!3331454 (= (head!7164 (drop!1930 lt!1132470 (+ 0 1))) (apply!8479 lt!1132470 (+ 0 1)))))

(declare-fun lt!1132472 () Unit!51698)

(assert (=> b!3331454 (= lt!1132472 lt!1132475)))

(declare-fun lt!1132471 () List!36813)

(assert (=> b!3331454 (= lt!1132471 (list!13223 lt!1132033))))

(declare-fun lt!1132474 () Unit!51698)

(assert (=> b!3331454 (= lt!1132474 (lemmaDropTail!980 lt!1132471 (+ 0 1)))))

(assert (=> b!3331454 (= (tail!5303 (drop!1930 lt!1132471 (+ 0 1))) (drop!1930 lt!1132471 (+ 0 1 1)))))

(declare-fun lt!1132469 () Unit!51698)

(assert (=> b!3331454 (= lt!1132469 lt!1132474)))

(assert (= (and d!937513 res!1351301) b!3331452))

(assert (= (and d!937513 c!565803) b!3331453))

(assert (= (and d!937513 (not c!565803)) b!3331454))

(assert (=> d!937513 m!3672191))

(declare-fun m!3673749 () Bool)

(assert (=> d!937513 m!3673749))

(declare-fun m!3673751 () Bool)

(assert (=> d!937513 m!3673751))

(assert (=> d!937513 m!3673749))

(declare-fun m!3673753 () Bool)

(assert (=> d!937513 m!3673753))

(assert (=> d!937513 m!3672177))

(declare-fun m!3673755 () Bool)

(assert (=> d!937513 m!3673755))

(assert (=> d!937513 m!3673751))

(assert (=> b!3331452 m!3672177))

(declare-fun m!3673757 () Bool)

(assert (=> b!3331454 m!3673757))

(assert (=> b!3331454 m!3672183))

(declare-fun m!3673759 () Bool)

(assert (=> b!3331454 m!3673759))

(declare-fun m!3673761 () Bool)

(assert (=> b!3331454 m!3673761))

(assert (=> b!3331454 m!3672191))

(declare-fun m!3673763 () Bool)

(assert (=> b!3331454 m!3673763))

(declare-fun m!3673765 () Bool)

(assert (=> b!3331454 m!3673765))

(declare-fun m!3673767 () Bool)

(assert (=> b!3331454 m!3673767))

(declare-fun m!3673769 () Bool)

(assert (=> b!3331454 m!3673769))

(declare-fun m!3673771 () Bool)

(assert (=> b!3331454 m!3673771))

(assert (=> b!3331454 m!3673765))

(declare-fun m!3673773 () Bool)

(assert (=> b!3331454 m!3673773))

(assert (=> b!3331454 m!3673759))

(assert (=> b!3331454 m!3673757))

(assert (=> b!3331454 m!3673763))

(declare-fun m!3673775 () Bool)

(assert (=> b!3331454 m!3673775))

(declare-fun m!3673777 () Bool)

(assert (=> b!3331454 m!3673777))

(assert (=> b!3331454 m!3673769))

(declare-fun m!3673779 () Bool)

(assert (=> b!3331454 m!3673779))

(assert (=> b!3330452 d!937513))

(declare-fun d!937515 () Bool)

(declare-fun lt!1132490 () Token!10038)

(assert (=> d!937515 (contains!6656 lt!1132082 lt!1132490)))

(declare-fun e!2071755 () Token!10038)

(assert (=> d!937515 (= lt!1132490 e!2071755)))

(declare-fun c!565806 () Bool)

(assert (=> d!937515 (= c!565806 (= 0 0))))

(declare-fun e!2071756 () Bool)

(assert (=> d!937515 e!2071756))

(declare-fun res!1351304 () Bool)

(assert (=> d!937515 (=> (not res!1351304) (not e!2071756))))

(assert (=> d!937515 (= res!1351304 (<= 0 0))))

(assert (=> d!937515 (= (apply!8479 lt!1132082 0) lt!1132490)))

(declare-fun b!3331463 () Bool)

(assert (=> b!3331463 (= e!2071756 (< 0 (size!27748 lt!1132082)))))

(declare-fun b!3331464 () Bool)

(assert (=> b!3331464 (= e!2071755 (head!7164 lt!1132082))))

(declare-fun b!3331465 () Bool)

(assert (=> b!3331465 (= e!2071755 (apply!8479 (tail!5303 lt!1132082) (- 0 1)))))

(assert (= (and d!937515 res!1351304) b!3331463))

(assert (= (and d!937515 c!565806) b!3331464))

(assert (= (and d!937515 (not c!565806)) b!3331465))

(declare-fun m!3673781 () Bool)

(assert (=> d!937515 m!3673781))

(declare-fun m!3673783 () Bool)

(assert (=> b!3331463 m!3673783))

(declare-fun m!3673785 () Bool)

(assert (=> b!3331464 m!3673785))

(declare-fun m!3673787 () Bool)

(assert (=> b!3331465 m!3673787))

(assert (=> b!3331465 m!3673787))

(declare-fun m!3673789 () Bool)

(assert (=> b!3331465 m!3673789))

(assert (=> b!3330452 d!937515))

(declare-fun d!937517 () Bool)

(assert (=> d!937517 (= (head!7164 (drop!1930 lt!1132082 0)) (apply!8479 lt!1132082 0))))

(declare-fun lt!1132549 () Unit!51698)

(declare-fun choose!19311 (List!36813 Int) Unit!51698)

(assert (=> d!937517 (= lt!1132549 (choose!19311 lt!1132082 0))))

(declare-fun e!2071765 () Bool)

(assert (=> d!937517 e!2071765))

(declare-fun res!1351307 () Bool)

(assert (=> d!937517 (=> (not res!1351307) (not e!2071765))))

(assert (=> d!937517 (= res!1351307 (>= 0 0))))

(assert (=> d!937517 (= (lemmaDropApply!1096 lt!1132082 0) lt!1132549)))

(declare-fun b!3331478 () Bool)

(assert (=> b!3331478 (= e!2071765 (< 0 (size!27748 lt!1132082)))))

(assert (= (and d!937517 res!1351307) b!3331478))

(assert (=> d!937517 m!3672185))

(assert (=> d!937517 m!3672185))

(assert (=> d!937517 m!3672187))

(assert (=> d!937517 m!3672203))

(declare-fun m!3673791 () Bool)

(assert (=> d!937517 m!3673791))

(assert (=> b!3331478 m!3673783))

(assert (=> b!3330452 d!937517))

(declare-fun d!937519 () Bool)

(declare-fun lt!1132550 () Token!10038)

(assert (=> d!937519 (= lt!1132550 (apply!8479 (list!13223 lt!1132033) 0))))

(assert (=> d!937519 (= lt!1132550 (apply!8482 (c!565596 lt!1132033) 0))))

(declare-fun e!2071766 () Bool)

(assert (=> d!937519 e!2071766))

(declare-fun res!1351308 () Bool)

(assert (=> d!937519 (=> (not res!1351308) (not e!2071766))))

(assert (=> d!937519 (= res!1351308 (<= 0 0))))

(assert (=> d!937519 (= (apply!8478 lt!1132033 0) lt!1132550)))

(declare-fun b!3331479 () Bool)

(assert (=> b!3331479 (= e!2071766 (< 0 (size!27743 lt!1132033)))))

(assert (= (and d!937519 res!1351308) b!3331479))

(assert (=> d!937519 m!3672183))

(assert (=> d!937519 m!3672183))

(declare-fun m!3673793 () Bool)

(assert (=> d!937519 m!3673793))

(declare-fun m!3673795 () Bool)

(assert (=> d!937519 m!3673795))

(assert (=> b!3331479 m!3672177))

(assert (=> b!3330452 d!937519))

(declare-fun b!3331500 () Bool)

(declare-fun e!2071782 () Int)

(declare-fun call!241433 () Int)

(assert (=> b!3331500 (= e!2071782 (- call!241433 0))))

(declare-fun b!3331501 () Bool)

(declare-fun e!2071781 () Int)

(assert (=> b!3331501 (= e!2071781 call!241433)))

(declare-fun b!3331502 () Bool)

(assert (=> b!3331502 (= e!2071782 0)))

(declare-fun b!3331503 () Bool)

(declare-fun e!2071779 () Bool)

(declare-fun lt!1132553 () List!36813)

(assert (=> b!3331503 (= e!2071779 (= (size!27748 lt!1132553) e!2071781))))

(declare-fun c!565822 () Bool)

(assert (=> b!3331503 (= c!565822 (<= 0 0))))

(declare-fun b!3331504 () Bool)

(declare-fun e!2071783 () List!36813)

(assert (=> b!3331504 (= e!2071783 (drop!1930 (t!257170 lt!1132083) (- 0 1)))))

(declare-fun d!937521 () Bool)

(assert (=> d!937521 e!2071779))

(declare-fun res!1351313 () Bool)

(assert (=> d!937521 (=> (not res!1351313) (not e!2071779))))

(assert (=> d!937521 (= res!1351313 (= ((_ map implies) (content!5018 lt!1132553) (content!5018 lt!1132083)) ((as const (InoxSet Token!10038)) true)))))

(declare-fun e!2071780 () List!36813)

(assert (=> d!937521 (= lt!1132553 e!2071780)))

(declare-fun c!565824 () Bool)

(assert (=> d!937521 (= c!565824 ((_ is Nil!36689) lt!1132083))))

(assert (=> d!937521 (= (drop!1930 lt!1132083 0) lt!1132553)))

(declare-fun b!3331505 () Bool)

(assert (=> b!3331505 (= e!2071781 e!2071782)))

(declare-fun c!565821 () Bool)

(assert (=> b!3331505 (= c!565821 (>= 0 call!241433))))

(declare-fun b!3331506 () Bool)

(assert (=> b!3331506 (= e!2071780 Nil!36689)))

(declare-fun b!3331507 () Bool)

(assert (=> b!3331507 (= e!2071780 e!2071783)))

(declare-fun c!565823 () Bool)

(assert (=> b!3331507 (= c!565823 (<= 0 0))))

(declare-fun bm!241428 () Bool)

(assert (=> bm!241428 (= call!241433 (size!27748 lt!1132083))))

(declare-fun b!3331508 () Bool)

(assert (=> b!3331508 (= e!2071783 lt!1132083)))

(assert (= (and d!937521 c!565824) b!3331506))

(assert (= (and d!937521 (not c!565824)) b!3331507))

(assert (= (and b!3331507 c!565823) b!3331508))

(assert (= (and b!3331507 (not c!565823)) b!3331504))

(assert (= (and d!937521 res!1351313) b!3331503))

(assert (= (and b!3331503 c!565822) b!3331501))

(assert (= (and b!3331503 (not c!565822)) b!3331505))

(assert (= (and b!3331505 c!565821) b!3331502))

(assert (= (and b!3331505 (not c!565821)) b!3331500))

(assert (= (or b!3331501 b!3331505 b!3331500) bm!241428))

(declare-fun m!3673797 () Bool)

(assert (=> b!3331503 m!3673797))

(declare-fun m!3673799 () Bool)

(assert (=> b!3331504 m!3673799))

(declare-fun m!3673801 () Bool)

(assert (=> d!937521 m!3673801))

(declare-fun m!3673803 () Bool)

(assert (=> d!937521 m!3673803))

(declare-fun m!3673805 () Bool)

(assert (=> bm!241428 m!3673805))

(assert (=> b!3330452 d!937521))

(declare-fun d!937523 () Bool)

(assert (=> d!937523 (= (list!13223 lt!1132033) (list!13226 (c!565596 lt!1132033)))))

(declare-fun bs!551432 () Bool)

(assert (= bs!551432 d!937523))

(assert (=> bs!551432 m!3673153))

(assert (=> b!3330452 d!937523))

(declare-fun b!3331533 () Bool)

(declare-fun res!1351326 () Bool)

(declare-fun e!2071794 () Bool)

(assert (=> b!3331533 (=> (not res!1351326) (not e!2071794))))

(declare-fun height!1640 (Conc!11047) Int)

(declare-fun ++!8929 (Conc!11047 Conc!11047) Conc!11047)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3331533 (= res!1351326 (>= (height!1640 (++!8929 (c!565595 (BalanceConc!21709 Empty!11047)) (c!565595 (charsOf!3350 (apply!8478 lt!1132033 0))))) (max!0 (height!1640 (c!565595 (BalanceConc!21709 Empty!11047))) (height!1640 (c!565595 (charsOf!3350 (apply!8478 lt!1132033 0)))))))))

(declare-fun d!937525 () Bool)

(assert (=> d!937525 e!2071794))

(declare-fun res!1351327 () Bool)

(assert (=> d!937525 (=> (not res!1351327) (not e!2071794))))

(declare-fun appendAssocInst!775 (Conc!11047 Conc!11047) Bool)

(assert (=> d!937525 (= res!1351327 (appendAssocInst!775 (c!565595 (BalanceConc!21709 Empty!11047)) (c!565595 (charsOf!3350 (apply!8478 lt!1132033 0)))))))

(declare-fun lt!1132592 () BalanceConc!21708)

(assert (=> d!937525 (= lt!1132592 (BalanceConc!21709 (++!8929 (c!565595 (BalanceConc!21709 Empty!11047)) (c!565595 (charsOf!3350 (apply!8478 lt!1132033 0))))))))

(assert (=> d!937525 (= (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (apply!8478 lt!1132033 0))) lt!1132592)))

(declare-fun b!3331531 () Bool)

(declare-fun res!1351324 () Bool)

(assert (=> b!3331531 (=> (not res!1351324) (not e!2071794))))

(assert (=> b!3331531 (= res!1351324 (isBalanced!3321 (++!8929 (c!565595 (BalanceConc!21709 Empty!11047)) (c!565595 (charsOf!3350 (apply!8478 lt!1132033 0))))))))

(declare-fun b!3331532 () Bool)

(declare-fun res!1351325 () Bool)

(assert (=> b!3331532 (=> (not res!1351325) (not e!2071794))))

(assert (=> b!3331532 (= res!1351325 (<= (height!1640 (++!8929 (c!565595 (BalanceConc!21709 Empty!11047)) (c!565595 (charsOf!3350 (apply!8478 lt!1132033 0))))) (+ (max!0 (height!1640 (c!565595 (BalanceConc!21709 Empty!11047))) (height!1640 (c!565595 (charsOf!3350 (apply!8478 lt!1132033 0))))) 1)))))

(declare-fun b!3331534 () Bool)

(assert (=> b!3331534 (= e!2071794 (= (list!13219 lt!1132592) (++!8925 (list!13219 (BalanceConc!21709 Empty!11047)) (list!13219 (charsOf!3350 (apply!8478 lt!1132033 0))))))))

(assert (= (and d!937525 res!1351327) b!3331531))

(assert (= (and b!3331531 res!1351324) b!3331532))

(assert (= (and b!3331532 res!1351325) b!3331533))

(assert (= (and b!3331533 res!1351326) b!3331534))

(declare-fun m!3673907 () Bool)

(assert (=> d!937525 m!3673907))

(declare-fun m!3673909 () Bool)

(assert (=> d!937525 m!3673909))

(declare-fun m!3673911 () Bool)

(assert (=> b!3331532 m!3673911))

(assert (=> b!3331532 m!3673909))

(assert (=> b!3331532 m!3673911))

(declare-fun m!3673913 () Bool)

(assert (=> b!3331532 m!3673913))

(declare-fun m!3673915 () Bool)

(assert (=> b!3331532 m!3673915))

(assert (=> b!3331532 m!3673913))

(assert (=> b!3331532 m!3673909))

(declare-fun m!3673919 () Bool)

(assert (=> b!3331532 m!3673919))

(assert (=> b!3331533 m!3673911))

(assert (=> b!3331533 m!3673909))

(assert (=> b!3331533 m!3673911))

(assert (=> b!3331533 m!3673913))

(assert (=> b!3331533 m!3673915))

(assert (=> b!3331533 m!3673913))

(assert (=> b!3331533 m!3673909))

(assert (=> b!3331533 m!3673919))

(declare-fun m!3673923 () Bool)

(assert (=> b!3331534 m!3673923))

(assert (=> b!3331534 m!3672171))

(assert (=> b!3331534 m!3672189))

(declare-fun m!3673925 () Bool)

(assert (=> b!3331534 m!3673925))

(assert (=> b!3331534 m!3672171))

(assert (=> b!3331534 m!3673925))

(declare-fun m!3673927 () Bool)

(assert (=> b!3331534 m!3673927))

(assert (=> b!3331531 m!3673909))

(assert (=> b!3331531 m!3673909))

(declare-fun m!3673929 () Bool)

(assert (=> b!3331531 m!3673929))

(assert (=> b!3330452 d!937525))

(declare-fun d!937535 () Bool)

(assert (=> d!937535 (= (tail!5303 (drop!1930 lt!1132083 0)) (t!257170 (drop!1930 lt!1132083 0)))))

(assert (=> b!3330452 d!937535))

(declare-fun d!937539 () Bool)

(assert (=> d!937539 (= (tail!5303 (drop!1930 lt!1132083 0)) (drop!1930 lt!1132083 (+ 0 1)))))

(declare-fun lt!1132597 () Unit!51698)

(declare-fun choose!19312 (List!36813 Int) Unit!51698)

(assert (=> d!937539 (= lt!1132597 (choose!19312 lt!1132083 0))))

(declare-fun e!2071799 () Bool)

(assert (=> d!937539 e!2071799))

(declare-fun res!1351332 () Bool)

(assert (=> d!937539 (=> (not res!1351332) (not e!2071799))))

(assert (=> d!937539 (= res!1351332 (>= 0 0))))

(assert (=> d!937539 (= (lemmaDropTail!980 lt!1132083 0) lt!1132597)))

(declare-fun b!3331539 () Bool)

(assert (=> b!3331539 (= e!2071799 (< 0 (size!27748 lt!1132083)))))

(assert (= (and d!937539 res!1351332) b!3331539))

(assert (=> d!937539 m!3672195))

(assert (=> d!937539 m!3672195))

(assert (=> d!937539 m!3672197))

(assert (=> d!937539 m!3672205))

(declare-fun m!3673937 () Bool)

(assert (=> d!937539 m!3673937))

(assert (=> b!3331539 m!3673805))

(assert (=> b!3330452 d!937539))

(declare-fun d!937545 () Bool)

(assert (=> d!937545 (= (head!7164 (drop!1930 lt!1132082 0)) (h!42109 (drop!1930 lt!1132082 0)))))

(assert (=> b!3330452 d!937545))

(declare-fun b!3331542 () Bool)

(declare-fun e!2071805 () Int)

(declare-fun call!241434 () Int)

(assert (=> b!3331542 (= e!2071805 (- call!241434 0))))

(declare-fun b!3331543 () Bool)

(declare-fun e!2071804 () Int)

(assert (=> b!3331543 (= e!2071804 call!241434)))

(declare-fun b!3331544 () Bool)

(assert (=> b!3331544 (= e!2071805 0)))

(declare-fun b!3331545 () Bool)

(declare-fun e!2071802 () Bool)

(declare-fun lt!1132598 () List!36813)

(assert (=> b!3331545 (= e!2071802 (= (size!27748 lt!1132598) e!2071804))))

(declare-fun c!565835 () Bool)

(assert (=> b!3331545 (= c!565835 (<= 0 0))))

(declare-fun b!3331546 () Bool)

(declare-fun e!2071806 () List!36813)

(assert (=> b!3331546 (= e!2071806 (drop!1930 (t!257170 lt!1132082) (- 0 1)))))

(declare-fun d!937547 () Bool)

(assert (=> d!937547 e!2071802))

(declare-fun res!1351335 () Bool)

(assert (=> d!937547 (=> (not res!1351335) (not e!2071802))))

(assert (=> d!937547 (= res!1351335 (= ((_ map implies) (content!5018 lt!1132598) (content!5018 lt!1132082)) ((as const (InoxSet Token!10038)) true)))))

(declare-fun e!2071803 () List!36813)

(assert (=> d!937547 (= lt!1132598 e!2071803)))

(declare-fun c!565837 () Bool)

(assert (=> d!937547 (= c!565837 ((_ is Nil!36689) lt!1132082))))

(assert (=> d!937547 (= (drop!1930 lt!1132082 0) lt!1132598)))

(declare-fun b!3331547 () Bool)

(assert (=> b!3331547 (= e!2071804 e!2071805)))

(declare-fun c!565834 () Bool)

(assert (=> b!3331547 (= c!565834 (>= 0 call!241434))))

(declare-fun b!3331548 () Bool)

(assert (=> b!3331548 (= e!2071803 Nil!36689)))

(declare-fun b!3331549 () Bool)

(assert (=> b!3331549 (= e!2071803 e!2071806)))

(declare-fun c!565836 () Bool)

(assert (=> b!3331549 (= c!565836 (<= 0 0))))

(declare-fun bm!241429 () Bool)

(assert (=> bm!241429 (= call!241434 (size!27748 lt!1132082))))

(declare-fun b!3331550 () Bool)

(assert (=> b!3331550 (= e!2071806 lt!1132082)))

(assert (= (and d!937547 c!565837) b!3331548))

(assert (= (and d!937547 (not c!565837)) b!3331549))

(assert (= (and b!3331549 c!565836) b!3331550))

(assert (= (and b!3331549 (not c!565836)) b!3331546))

(assert (= (and d!937547 res!1351335) b!3331545))

(assert (= (and b!3331545 c!565835) b!3331543))

(assert (= (and b!3331545 (not c!565835)) b!3331547))

(assert (= (and b!3331547 c!565834) b!3331544))

(assert (= (and b!3331547 (not c!565834)) b!3331542))

(assert (= (or b!3331543 b!3331547 b!3331542) bm!241429))

(declare-fun m!3673943 () Bool)

(assert (=> b!3331545 m!3673943))

(declare-fun m!3673945 () Bool)

(assert (=> b!3331546 m!3673945))

(declare-fun m!3673947 () Bool)

(assert (=> d!937547 m!3673947))

(declare-fun m!3673949 () Bool)

(assert (=> d!937547 m!3673949))

(assert (=> bm!241429 m!3673783))

(assert (=> b!3330452 d!937547))

(declare-fun b!3331553 () Bool)

(declare-fun e!2071812 () Int)

(declare-fun call!241435 () Int)

(assert (=> b!3331553 (= e!2071812 (- call!241435 (+ 0 1)))))

(declare-fun b!3331554 () Bool)

(declare-fun e!2071811 () Int)

(assert (=> b!3331554 (= e!2071811 call!241435)))

(declare-fun b!3331555 () Bool)

(assert (=> b!3331555 (= e!2071812 0)))

(declare-fun b!3331556 () Bool)

(declare-fun e!2071809 () Bool)

(declare-fun lt!1132599 () List!36813)

(assert (=> b!3331556 (= e!2071809 (= (size!27748 lt!1132599) e!2071811))))

(declare-fun c!565839 () Bool)

(assert (=> b!3331556 (= c!565839 (<= (+ 0 1) 0))))

(declare-fun b!3331557 () Bool)

(declare-fun e!2071813 () List!36813)

(assert (=> b!3331557 (= e!2071813 (drop!1930 (t!257170 lt!1132083) (- (+ 0 1) 1)))))

(declare-fun d!937551 () Bool)

(assert (=> d!937551 e!2071809))

(declare-fun res!1351338 () Bool)

(assert (=> d!937551 (=> (not res!1351338) (not e!2071809))))

(assert (=> d!937551 (= res!1351338 (= ((_ map implies) (content!5018 lt!1132599) (content!5018 lt!1132083)) ((as const (InoxSet Token!10038)) true)))))

(declare-fun e!2071810 () List!36813)

(assert (=> d!937551 (= lt!1132599 e!2071810)))

(declare-fun c!565841 () Bool)

(assert (=> d!937551 (= c!565841 ((_ is Nil!36689) lt!1132083))))

(assert (=> d!937551 (= (drop!1930 lt!1132083 (+ 0 1)) lt!1132599)))

(declare-fun b!3331558 () Bool)

(assert (=> b!3331558 (= e!2071811 e!2071812)))

(declare-fun c!565838 () Bool)

(assert (=> b!3331558 (= c!565838 (>= (+ 0 1) call!241435))))

(declare-fun b!3331559 () Bool)

(assert (=> b!3331559 (= e!2071810 Nil!36689)))

(declare-fun b!3331560 () Bool)

(assert (=> b!3331560 (= e!2071810 e!2071813)))

(declare-fun c!565840 () Bool)

(assert (=> b!3331560 (= c!565840 (<= (+ 0 1) 0))))

(declare-fun bm!241430 () Bool)

(assert (=> bm!241430 (= call!241435 (size!27748 lt!1132083))))

(declare-fun b!3331561 () Bool)

(assert (=> b!3331561 (= e!2071813 lt!1132083)))

(assert (= (and d!937551 c!565841) b!3331559))

(assert (= (and d!937551 (not c!565841)) b!3331560))

(assert (= (and b!3331560 c!565840) b!3331561))

(assert (= (and b!3331560 (not c!565840)) b!3331557))

(assert (= (and d!937551 res!1351338) b!3331556))

(assert (= (and b!3331556 c!565839) b!3331554))

(assert (= (and b!3331556 (not c!565839)) b!3331558))

(assert (= (and b!3331558 c!565838) b!3331555))

(assert (= (and b!3331558 (not c!565838)) b!3331553))

(assert (= (or b!3331554 b!3331558 b!3331553) bm!241430))

(declare-fun m!3673951 () Bool)

(assert (=> b!3331556 m!3673951))

(declare-fun m!3673953 () Bool)

(assert (=> b!3331557 m!3673953))

(declare-fun m!3673955 () Bool)

(assert (=> d!937551 m!3673955))

(assert (=> d!937551 m!3673803))

(assert (=> bm!241430 m!3673805))

(assert (=> b!3330452 d!937551))

(declare-fun d!937553 () Bool)

(declare-fun lt!1132600 () BalanceConc!21708)

(assert (=> d!937553 (= (list!13219 lt!1132600) (originalCharacters!6050 (apply!8478 lt!1132033 0)))))

(assert (=> d!937553 (= lt!1132600 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0)))) (value!172536 (apply!8478 lt!1132033 0))))))

(assert (=> d!937553 (= (charsOf!3350 (apply!8478 lt!1132033 0)) lt!1132600)))

(declare-fun b_lambda!94161 () Bool)

(assert (=> (not b_lambda!94161) (not d!937553)))

(declare-fun tb!174665 () Bool)

(declare-fun t!257329 () Bool)

(assert (=> (and b!3330805 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0))))) t!257329) tb!174665))

(declare-fun b!3331564 () Bool)

(declare-fun e!2071815 () Bool)

(declare-fun tp!1040982 () Bool)

(assert (=> b!3331564 (= e!2071815 (and (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0)))) (value!172536 (apply!8478 lt!1132033 0))))) tp!1040982))))

(declare-fun result!217818 () Bool)

(assert (=> tb!174665 (= result!217818 (and (inv!49707 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0)))) (value!172536 (apply!8478 lt!1132033 0)))) e!2071815))))

(assert (= tb!174665 b!3331564))

(declare-fun m!3673961 () Bool)

(assert (=> b!3331564 m!3673961))

(declare-fun m!3673963 () Bool)

(assert (=> tb!174665 m!3673963))

(assert (=> d!937553 t!257329))

(declare-fun b_and!229861 () Bool)

(assert (= b_and!229857 (and (=> t!257329 result!217818) b_and!229861)))

(declare-fun tb!174667 () Bool)

(declare-fun t!257331 () Bool)

(assert (=> (and b!3330794 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))) (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0))))) t!257331) tb!174667))

(declare-fun result!217820 () Bool)

(assert (= result!217820 result!217818))

(assert (=> d!937553 t!257331))

(declare-fun b_and!229863 () Bool)

(assert (= b_and!229851 (and (=> t!257331 result!217820) b_and!229863)))

(declare-fun tb!174669 () Bool)

(declare-fun t!257333 () Bool)

(assert (=> (and b!3330369 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0))))) t!257333) tb!174669))

(declare-fun result!217822 () Bool)

(assert (= result!217822 result!217818))

(assert (=> d!937553 t!257333))

(declare-fun b_and!229865 () Bool)

(assert (= b_and!229855 (and (=> t!257333 result!217822) b_and!229865)))

(declare-fun tb!174671 () Bool)

(declare-fun t!257335 () Bool)

(assert (=> (and b!3330365 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0))))) t!257335) tb!174671))

(declare-fun result!217824 () Bool)

(assert (= result!217824 result!217818))

(assert (=> d!937553 t!257335))

(declare-fun b_and!229867 () Bool)

(assert (= b_and!229859 (and (=> t!257335 result!217824) b_and!229867)))

(declare-fun t!257337 () Bool)

(declare-fun tb!174673 () Bool)

(assert (=> (and b!3330357 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0))))) t!257337) tb!174673))

(declare-fun result!217826 () Bool)

(assert (= result!217826 result!217818))

(assert (=> d!937553 t!257337))

(declare-fun b_and!229869 () Bool)

(assert (= b_and!229853 (and (=> t!257337 result!217826) b_and!229869)))

(declare-fun m!3673965 () Bool)

(assert (=> d!937553 m!3673965))

(declare-fun m!3673967 () Bool)

(assert (=> d!937553 m!3673967))

(assert (=> b!3330452 d!937553))

(declare-fun d!937559 () Bool)

(assert (=> d!937559 (= (list!13219 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))) (list!13222 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))))))

(declare-fun bs!551443 () Bool)

(assert (= bs!551443 d!937559))

(declare-fun m!3673969 () Bool)

(assert (=> bs!551443 m!3673969))

(assert (=> b!3330541 d!937559))

(assert (=> b!3330450 d!937319))

(declare-fun bs!551444 () Bool)

(declare-fun d!937561 () Bool)

(assert (= bs!551444 (and d!937561 d!937295)))

(declare-fun lambda!119866 () Int)

(assert (=> bs!551444 (= (and (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) (= (toValue!7504 (transformation!5336 (h!42108 rules!2135))) (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241))))) (= lambda!119866 lambda!119855))))

(declare-fun bs!551445 () Bool)

(assert (= bs!551445 (and d!937561 d!937321)))

(assert (=> bs!551445 (= (and (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) (= (toValue!7504 (transformation!5336 (h!42108 rules!2135))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494)))))) (= lambda!119866 lambda!119856))))

(assert (=> d!937561 true))

(assert (=> d!937561 (< (dynLambda!15150 order!19217 (toChars!7363 (transformation!5336 (h!42108 rules!2135)))) (dynLambda!15156 order!19225 lambda!119866))))

(assert (=> d!937561 true))

(assert (=> d!937561 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (h!42108 rules!2135)))) (dynLambda!15156 order!19225 lambda!119866))))

(assert (=> d!937561 (= (semiInverseModEq!2217 (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toValue!7504 (transformation!5336 (h!42108 rules!2135)))) (Forall!1309 lambda!119866))))

(declare-fun bs!551446 () Bool)

(assert (= bs!551446 d!937561))

(declare-fun m!3673975 () Bool)

(assert (=> bs!551446 m!3673975))

(assert (=> d!936969 d!937561))

(declare-fun d!937565 () Bool)

(assert (=> d!937565 (= (inv!15 (value!172536 separatorToken!241)) (= (charsToBigInt!0 (text!39411 (value!172536 separatorToken!241)) 0) (value!172531 (value!172536 separatorToken!241))))))

(declare-fun bs!551447 () Bool)

(assert (= bs!551447 d!937565))

(declare-fun m!3673979 () Bool)

(assert (=> bs!551447 m!3673979))

(assert (=> b!3330752 d!937565))

(declare-fun bs!551448 () Bool)

(declare-fun d!937569 () Bool)

(assert (= bs!551448 (and d!937569 d!937207)))

(declare-fun lambda!119869 () Int)

(assert (=> bs!551448 (= lambda!119869 lambda!119844)))

(assert (=> d!937569 true))

(declare-fun lt!1132609 () Bool)

(assert (=> d!937569 (= lt!1132609 (rulesValidInductive!1823 thiss!18206 rules!2135))))

(assert (=> d!937569 (= lt!1132609 (forall!7668 rules!2135 lambda!119869))))

(assert (=> d!937569 (= (rulesValid!1977 thiss!18206 rules!2135) lt!1132609)))

(declare-fun bs!551449 () Bool)

(assert (= bs!551449 d!937569))

(assert (=> bs!551449 m!3672381))

(declare-fun m!3674005 () Bool)

(assert (=> bs!551449 m!3674005))

(assert (=> d!937001 d!937569))

(declare-fun bs!551451 () Bool)

(declare-fun d!937573 () Bool)

(assert (= bs!551451 (and d!937573 d!937209)))

(declare-fun lambda!119870 () Int)

(assert (=> bs!551451 (= (= (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241))) (toValue!7504 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) (= lambda!119870 lambda!119847))))

(declare-fun bs!551452 () Bool)

(assert (= bs!551452 (and d!937573 d!937255)))

(assert (=> bs!551452 (= (= (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241))) (toValue!7504 (transformation!5336 (h!42108 rules!2135)))) (= lambda!119870 lambda!119852))))

(assert (=> d!937573 true))

(assert (=> d!937573 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241)))) (dynLambda!15155 order!19223 lambda!119870))))

(assert (=> d!937573 (= (equivClasses!2116 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toValue!7504 (transformation!5336 (rule!7860 separatorToken!241)))) (Forall2!906 lambda!119870))))

(declare-fun bs!551453 () Bool)

(assert (= bs!551453 d!937573))

(declare-fun m!3674015 () Bool)

(assert (=> bs!551453 m!3674015))

(assert (=> b!3330536 d!937573))

(declare-fun d!937579 () Bool)

(assert (=> d!937579 (= (inv!17 (value!172536 separatorToken!241)) (= (charsToBigInt!1 (text!39410 (value!172536 separatorToken!241))) (value!172528 (value!172536 separatorToken!241))))))

(declare-fun bs!551454 () Bool)

(assert (= bs!551454 d!937579))

(declare-fun m!3674017 () Bool)

(assert (=> bs!551454 m!3674017))

(assert (=> b!3330750 d!937579))

(declare-fun d!937581 () Bool)

(assert (=> d!937581 (= (list!13219 lt!1132090) (list!13222 (c!565595 lt!1132090)))))

(declare-fun bs!551455 () Bool)

(assert (= bs!551455 d!937581))

(declare-fun m!3674019 () Bool)

(assert (=> bs!551455 m!3674019))

(assert (=> d!936961 d!937581))

(declare-fun d!937583 () Bool)

(declare-fun c!565849 () Bool)

(assert (=> d!937583 (= c!565849 ((_ is Cons!36689) (list!13223 lt!1132033)))))

(declare-fun e!2071824 () List!36811)

(assert (=> d!937583 (= (printList!1473 thiss!18206 (list!13223 lt!1132033)) e!2071824)))

(declare-fun b!3331584 () Bool)

(assert (=> b!3331584 (= e!2071824 (++!8925 (list!13219 (charsOf!3350 (h!42109 (list!13223 lt!1132033)))) (printList!1473 thiss!18206 (t!257170 (list!13223 lt!1132033)))))))

(declare-fun b!3331585 () Bool)

(assert (=> b!3331585 (= e!2071824 Nil!36687)))

(assert (= (and d!937583 c!565849) b!3331584))

(assert (= (and d!937583 (not c!565849)) b!3331585))

(declare-fun m!3674021 () Bool)

(assert (=> b!3331584 m!3674021))

(assert (=> b!3331584 m!3674021))

(declare-fun m!3674023 () Bool)

(assert (=> b!3331584 m!3674023))

(declare-fun m!3674025 () Bool)

(assert (=> b!3331584 m!3674025))

(assert (=> b!3331584 m!3674023))

(assert (=> b!3331584 m!3674025))

(declare-fun m!3674027 () Bool)

(assert (=> b!3331584 m!3674027))

(assert (=> d!936961 d!937583))

(assert (=> d!936961 d!937523))

(assert (=> d!936961 d!936949))

(declare-fun d!937585 () Bool)

(declare-fun lt!1132610 () Int)

(assert (=> d!937585 (= lt!1132610 (size!27748 (list!13223 (_1!21235 lt!1132157))))))

(assert (=> d!937585 (= lt!1132610 (size!27750 (c!565596 (_1!21235 lt!1132157))))))

(assert (=> d!937585 (= (size!27743 (_1!21235 lt!1132157)) lt!1132610)))

(declare-fun bs!551456 () Bool)

(assert (= bs!551456 d!937585))

(assert (=> bs!551456 m!3672417))

(assert (=> bs!551456 m!3672417))

(declare-fun m!3674029 () Bool)

(assert (=> bs!551456 m!3674029))

(declare-fun m!3674031 () Bool)

(assert (=> bs!551456 m!3674031))

(assert (=> d!937021 d!937585))

(declare-fun b!3331615 () Bool)

(declare-fun e!2071851 () tuple2!36202)

(assert (=> b!3331615 (= e!2071851 (tuple2!36203 (BalanceConc!21711 Empty!11048) (seqFromList!3725 lt!1132041)))))

(declare-fun b!3331616 () Bool)

(declare-fun lt!1132708 () tuple2!36202)

(declare-datatypes ((tuple2!36214 0))(
  ( (tuple2!36215 (_1!21241 Token!10038) (_2!21241 BalanceConc!21708)) )
))
(declare-datatypes ((Option!7322 0))(
  ( (None!7321) (Some!7321 (v!36241 tuple2!36214)) )
))
(declare-fun lt!1132689 () Option!7322)

(declare-fun lexRec!721 (LexerInterface!4925 List!36812 BalanceConc!21708) tuple2!36202)

(assert (=> b!3331616 (= lt!1132708 (lexRec!721 thiss!18206 rules!2135 (_2!21241 (v!36241 lt!1132689))))))

(declare-fun prepend!1219 (BalanceConc!21710 Token!10038) BalanceConc!21710)

(assert (=> b!3331616 (= e!2071851 (tuple2!36203 (prepend!1219 (_1!21235 lt!1132708) (_1!21241 (v!36241 lt!1132689))) (_2!21235 lt!1132708)))))

(declare-fun b!3331617 () Bool)

(declare-fun e!2071849 () tuple2!36202)

(assert (=> b!3331617 (= e!2071849 (tuple2!36203 (BalanceConc!21711 Empty!11048) (seqFromList!3725 lt!1132041)))))

(declare-fun d!937587 () Bool)

(declare-fun e!2071850 () Bool)

(assert (=> d!937587 e!2071850))

(declare-fun res!1351360 () Bool)

(assert (=> d!937587 (=> (not res!1351360) (not e!2071850))))

(declare-fun lt!1132715 () tuple2!36202)

(assert (=> d!937587 (= res!1351360 (= (list!13223 (_1!21235 lt!1132715)) (list!13223 (_1!21235 (lexRec!721 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))))))

(assert (=> d!937587 (= lt!1132715 e!2071849)))

(declare-fun c!565858 () Bool)

(declare-fun lt!1132710 () Option!7322)

(assert (=> d!937587 (= c!565858 ((_ is Some!7321) lt!1132710))))

(declare-fun maxPrefixZipperSequenceV2!508 (LexerInterface!4925 List!36812 BalanceConc!21708 BalanceConc!21708) Option!7322)

(assert (=> d!937587 (= lt!1132710 (maxPrefixZipperSequenceV2!508 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041) (seqFromList!3725 lt!1132041)))))

(declare-fun lt!1132691 () Unit!51698)

(declare-fun lt!1132711 () Unit!51698)

(assert (=> d!937587 (= lt!1132691 lt!1132711)))

(declare-fun lt!1132688 () List!36811)

(declare-fun lt!1132699 () List!36811)

(declare-fun isSuffix!883 (List!36811 List!36811) Bool)

(assert (=> d!937587 (isSuffix!883 lt!1132688 (++!8925 lt!1132699 lt!1132688))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!568 (List!36811 List!36811) Unit!51698)

(assert (=> d!937587 (= lt!1132711 (lemmaConcatTwoListThenFSndIsSuffix!568 lt!1132699 lt!1132688))))

(assert (=> d!937587 (= lt!1132688 (list!13219 (seqFromList!3725 lt!1132041)))))

(assert (=> d!937587 (= lt!1132699 (list!13219 (BalanceConc!21709 Empty!11047)))))

(assert (=> d!937587 (= (lexTailRecV2!990 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041) (BalanceConc!21709 Empty!11047) (seqFromList!3725 lt!1132041) (BalanceConc!21711 Empty!11048)) lt!1132715)))

(declare-fun b!3331618 () Bool)

(declare-fun lt!1132685 () BalanceConc!21708)

(declare-fun append!915 (BalanceConc!21710 Token!10038) BalanceConc!21710)

(assert (=> b!3331618 (= e!2071849 (lexTailRecV2!990 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041) lt!1132685 (_2!21241 (v!36241 lt!1132710)) (append!915 (BalanceConc!21711 Empty!11048) (_1!21241 (v!36241 lt!1132710)))))))

(declare-fun lt!1132706 () tuple2!36202)

(assert (=> b!3331618 (= lt!1132706 (lexRec!721 thiss!18206 rules!2135 (_2!21241 (v!36241 lt!1132710))))))

(declare-fun lt!1132712 () List!36811)

(assert (=> b!3331618 (= lt!1132712 (list!13219 (BalanceConc!21709 Empty!11047)))))

(declare-fun lt!1132698 () List!36811)

(assert (=> b!3331618 (= lt!1132698 (list!13219 (charsOf!3350 (_1!21241 (v!36241 lt!1132710)))))))

(declare-fun lt!1132714 () List!36811)

(assert (=> b!3331618 (= lt!1132714 (list!13219 (_2!21241 (v!36241 lt!1132710))))))

(declare-fun lt!1132692 () Unit!51698)

(assert (=> b!3331618 (= lt!1132692 (lemmaConcatAssociativity!1857 lt!1132712 lt!1132698 lt!1132714))))

(assert (=> b!3331618 (= (++!8925 (++!8925 lt!1132712 lt!1132698) lt!1132714) (++!8925 lt!1132712 (++!8925 lt!1132698 lt!1132714)))))

(declare-fun lt!1132718 () Unit!51698)

(assert (=> b!3331618 (= lt!1132718 lt!1132692)))

(declare-fun maxPrefixZipperSequence!1114 (LexerInterface!4925 List!36812 BalanceConc!21708) Option!7322)

(assert (=> b!3331618 (= lt!1132689 (maxPrefixZipperSequence!1114 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041)))))

(declare-fun c!565856 () Bool)

(assert (=> b!3331618 (= c!565856 ((_ is Some!7321) lt!1132689))))

(assert (=> b!3331618 (= (lexRec!721 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041)) e!2071851)))

(declare-fun lt!1132705 () Unit!51698)

(declare-fun Unit!51702 () Unit!51698)

(assert (=> b!3331618 (= lt!1132705 Unit!51702)))

(declare-fun lt!1132697 () List!36813)

(assert (=> b!3331618 (= lt!1132697 (list!13223 (BalanceConc!21711 Empty!11048)))))

(declare-fun lt!1132702 () List!36813)

(assert (=> b!3331618 (= lt!1132702 (Cons!36689 (_1!21241 (v!36241 lt!1132710)) Nil!36689))))

(declare-fun lt!1132693 () List!36813)

(assert (=> b!3331618 (= lt!1132693 (list!13223 (_1!21235 lt!1132706)))))

(declare-fun lt!1132713 () Unit!51698)

(declare-fun lemmaConcatAssociativity!1860 (List!36813 List!36813 List!36813) Unit!51698)

(assert (=> b!3331618 (= lt!1132713 (lemmaConcatAssociativity!1860 lt!1132697 lt!1132702 lt!1132693))))

(declare-fun ++!8931 (List!36813 List!36813) List!36813)

(assert (=> b!3331618 (= (++!8931 (++!8931 lt!1132697 lt!1132702) lt!1132693) (++!8931 lt!1132697 (++!8931 lt!1132702 lt!1132693)))))

(declare-fun lt!1132701 () Unit!51698)

(assert (=> b!3331618 (= lt!1132701 lt!1132713)))

(declare-fun lt!1132696 () List!36811)

(assert (=> b!3331618 (= lt!1132696 (++!8925 (list!13219 (BalanceConc!21709 Empty!11047)) (list!13219 (charsOf!3350 (_1!21241 (v!36241 lt!1132710))))))))

(declare-fun lt!1132690 () List!36811)

(assert (=> b!3331618 (= lt!1132690 (list!13219 (_2!21241 (v!36241 lt!1132710))))))

(declare-fun lt!1132694 () List!36813)

(assert (=> b!3331618 (= lt!1132694 (list!13223 (append!915 (BalanceConc!21711 Empty!11048) (_1!21241 (v!36241 lt!1132710)))))))

(declare-fun lt!1132704 () Unit!51698)

(declare-fun lemmaLexThenLexPrefix!486 (LexerInterface!4925 List!36812 List!36811 List!36811 List!36813 List!36813 List!36811) Unit!51698)

(assert (=> b!3331618 (= lt!1132704 (lemmaLexThenLexPrefix!486 thiss!18206 rules!2135 lt!1132696 lt!1132690 lt!1132694 (list!13223 (_1!21235 lt!1132706)) (list!13219 (_2!21235 lt!1132706))))))

(assert (=> b!3331618 (= (lexList!1380 thiss!18206 rules!2135 lt!1132696) (tuple2!36207 lt!1132694 Nil!36687))))

(declare-fun lt!1132695 () Unit!51698)

(assert (=> b!3331618 (= lt!1132695 lt!1132704)))

(declare-fun lt!1132703 () BalanceConc!21708)

(assert (=> b!3331618 (= lt!1132703 (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (_1!21241 (v!36241 lt!1132710)))))))

(declare-fun lt!1132686 () Option!7322)

(assert (=> b!3331618 (= lt!1132686 (maxPrefixZipperSequence!1114 thiss!18206 rules!2135 lt!1132703))))

(declare-fun c!565857 () Bool)

(assert (=> b!3331618 (= c!565857 ((_ is Some!7321) lt!1132686))))

(declare-fun e!2071848 () tuple2!36202)

(assert (=> b!3331618 (= (lexRec!721 thiss!18206 rules!2135 (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (_1!21241 (v!36241 lt!1132710))))) e!2071848)))

(declare-fun lt!1132687 () Unit!51698)

(declare-fun Unit!51703 () Unit!51698)

(assert (=> b!3331618 (= lt!1132687 Unit!51703)))

(assert (=> b!3331618 (= lt!1132685 (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (_1!21241 (v!36241 lt!1132710)))))))

(declare-fun lt!1132707 () List!36811)

(assert (=> b!3331618 (= lt!1132707 (list!13219 lt!1132685))))

(declare-fun lt!1132700 () List!36811)

(assert (=> b!3331618 (= lt!1132700 (list!13219 (_2!21241 (v!36241 lt!1132710))))))

(declare-fun lt!1132716 () Unit!51698)

(assert (=> b!3331618 (= lt!1132716 (lemmaConcatTwoListThenFSndIsSuffix!568 lt!1132707 lt!1132700))))

(assert (=> b!3331618 (isSuffix!883 lt!1132700 (++!8925 lt!1132707 lt!1132700))))

(declare-fun lt!1132717 () Unit!51698)

(assert (=> b!3331618 (= lt!1132717 lt!1132716)))

(declare-fun b!3331619 () Bool)

(assert (=> b!3331619 (= e!2071850 (= (list!13219 (_2!21235 lt!1132715)) (list!13219 (_2!21235 (lexRec!721 thiss!18206 rules!2135 (seqFromList!3725 lt!1132041))))))))

(declare-fun lt!1132709 () tuple2!36202)

(declare-fun b!3331620 () Bool)

(assert (=> b!3331620 (= lt!1132709 (lexRec!721 thiss!18206 rules!2135 (_2!21241 (v!36241 lt!1132686))))))

(assert (=> b!3331620 (= e!2071848 (tuple2!36203 (prepend!1219 (_1!21235 lt!1132709) (_1!21241 (v!36241 lt!1132686))) (_2!21235 lt!1132709)))))

(declare-fun b!3331621 () Bool)

(assert (=> b!3331621 (= e!2071848 (tuple2!36203 (BalanceConc!21711 Empty!11048) lt!1132703))))

(assert (= (and d!937587 c!565858) b!3331618))

(assert (= (and d!937587 (not c!565858)) b!3331617))

(assert (= (and b!3331618 c!565856) b!3331616))

(assert (= (and b!3331618 (not c!565856)) b!3331615))

(assert (= (and b!3331618 c!565857) b!3331620))

(assert (= (and b!3331618 (not c!565857)) b!3331621))

(assert (= (and d!937587 res!1351360) b!3331619))

(declare-fun m!3674049 () Bool)

(assert (=> b!3331619 m!3674049))

(assert (=> b!3331619 m!3672027))

(declare-fun m!3674051 () Bool)

(assert (=> b!3331619 m!3674051))

(declare-fun m!3674053 () Bool)

(assert (=> b!3331619 m!3674053))

(declare-fun m!3674055 () Bool)

(assert (=> b!3331618 m!3674055))

(declare-fun m!3674057 () Bool)

(assert (=> b!3331618 m!3674057))

(declare-fun m!3674059 () Bool)

(assert (=> b!3331618 m!3674059))

(declare-fun m!3674061 () Bool)

(assert (=> b!3331618 m!3674061))

(assert (=> b!3331618 m!3674059))

(declare-fun m!3674063 () Bool)

(assert (=> b!3331618 m!3674063))

(declare-fun m!3674065 () Bool)

(assert (=> b!3331618 m!3674065))

(declare-fun m!3674067 () Bool)

(assert (=> b!3331618 m!3674067))

(declare-fun m!3674069 () Bool)

(assert (=> b!3331618 m!3674069))

(declare-fun m!3674071 () Bool)

(assert (=> b!3331618 m!3674071))

(declare-fun m!3674073 () Bool)

(assert (=> b!3331618 m!3674073))

(assert (=> b!3331618 m!3674059))

(assert (=> b!3331618 m!3672027))

(declare-fun m!3674075 () Bool)

(assert (=> b!3331618 m!3674075))

(assert (=> b!3331618 m!3672027))

(declare-fun m!3674077 () Bool)

(assert (=> b!3331618 m!3674077))

(declare-fun m!3674079 () Bool)

(assert (=> b!3331618 m!3674079))

(assert (=> b!3331618 m!3674077))

(assert (=> b!3331618 m!3674063))

(declare-fun m!3674081 () Bool)

(assert (=> b!3331618 m!3674081))

(assert (=> b!3331618 m!3674069))

(declare-fun m!3674083 () Bool)

(assert (=> b!3331618 m!3674083))

(declare-fun m!3674085 () Bool)

(assert (=> b!3331618 m!3674085))

(declare-fun m!3674087 () Bool)

(assert (=> b!3331618 m!3674087))

(declare-fun m!3674089 () Bool)

(assert (=> b!3331618 m!3674089))

(declare-fun m!3674091 () Bool)

(assert (=> b!3331618 m!3674091))

(declare-fun m!3674093 () Bool)

(assert (=> b!3331618 m!3674093))

(declare-fun m!3674095 () Bool)

(assert (=> b!3331618 m!3674095))

(assert (=> b!3331618 m!3674057))

(declare-fun m!3674097 () Bool)

(assert (=> b!3331618 m!3674097))

(assert (=> b!3331618 m!3674073))

(declare-fun m!3674099 () Bool)

(assert (=> b!3331618 m!3674099))

(assert (=> b!3331618 m!3672027))

(assert (=> b!3331618 m!3674051))

(assert (=> b!3331618 m!3674095))

(declare-fun m!3674101 () Bool)

(assert (=> b!3331618 m!3674101))

(declare-fun m!3674103 () Bool)

(assert (=> b!3331618 m!3674103))

(assert (=> b!3331618 m!3672171))

(assert (=> b!3331618 m!3674061))

(declare-fun m!3674105 () Bool)

(assert (=> b!3331618 m!3674105))

(declare-fun m!3674107 () Bool)

(assert (=> b!3331618 m!3674107))

(declare-fun m!3674109 () Bool)

(assert (=> b!3331618 m!3674109))

(assert (=> b!3331618 m!3674091))

(assert (=> b!3331618 m!3672171))

(declare-fun m!3674111 () Bool)

(assert (=> b!3331618 m!3674111))

(assert (=> b!3331618 m!3674109))

(declare-fun m!3674113 () Bool)

(assert (=> b!3331618 m!3674113))

(assert (=> b!3331618 m!3674089))

(assert (=> b!3331618 m!3674077))

(declare-fun m!3674115 () Bool)

(assert (=> b!3331618 m!3674115))

(declare-fun m!3674117 () Bool)

(assert (=> b!3331620 m!3674117))

(declare-fun m!3674119 () Bool)

(assert (=> b!3331620 m!3674119))

(assert (=> d!937587 m!3672027))

(assert (=> d!937587 m!3674051))

(declare-fun m!3674121 () Bool)

(assert (=> d!937587 m!3674121))

(declare-fun m!3674123 () Bool)

(assert (=> d!937587 m!3674123))

(declare-fun m!3674125 () Bool)

(assert (=> d!937587 m!3674125))

(declare-fun m!3674127 () Bool)

(assert (=> d!937587 m!3674127))

(assert (=> d!937587 m!3672027))

(assert (=> d!937587 m!3672027))

(declare-fun m!3674129 () Bool)

(assert (=> d!937587 m!3674129))

(assert (=> d!937587 m!3672171))

(assert (=> d!937587 m!3674123))

(assert (=> d!937587 m!3672027))

(assert (=> d!937587 m!3672405))

(declare-fun m!3674131 () Bool)

(assert (=> d!937587 m!3674131))

(declare-fun m!3674133 () Bool)

(assert (=> b!3331616 m!3674133))

(declare-fun m!3674135 () Bool)

(assert (=> b!3331616 m!3674135))

(assert (=> d!937021 d!937587))

(declare-fun b!3331622 () Bool)

(declare-fun e!2071853 () List!36811)

(assert (=> b!3331622 (= e!2071853 lt!1132128)))

(declare-fun d!937597 () Bool)

(declare-fun e!2071852 () Bool)

(assert (=> d!937597 e!2071852))

(declare-fun res!1351361 () Bool)

(assert (=> d!937597 (=> (not res!1351361) (not e!2071852))))

(declare-fun lt!1132719 () List!36811)

(assert (=> d!937597 (= res!1351361 (= (content!5016 lt!1132719) ((_ map or) (content!5016 lt!1132041) (content!5016 lt!1132128))))))

(assert (=> d!937597 (= lt!1132719 e!2071853)))

(declare-fun c!565859 () Bool)

(assert (=> d!937597 (= c!565859 ((_ is Nil!36687) lt!1132041))))

(assert (=> d!937597 (= (++!8925 lt!1132041 lt!1132128) lt!1132719)))

(declare-fun b!3331625 () Bool)

(assert (=> b!3331625 (= e!2071852 (or (not (= lt!1132128 Nil!36687)) (= lt!1132719 lt!1132041)))))

(declare-fun b!3331623 () Bool)

(assert (=> b!3331623 (= e!2071853 (Cons!36687 (h!42107 lt!1132041) (++!8925 (t!257168 lt!1132041) lt!1132128)))))

(declare-fun b!3331624 () Bool)

(declare-fun res!1351362 () Bool)

(assert (=> b!3331624 (=> (not res!1351362) (not e!2071852))))

(assert (=> b!3331624 (= res!1351362 (= (size!27742 lt!1132719) (+ (size!27742 lt!1132041) (size!27742 lt!1132128))))))

(assert (= (and d!937597 c!565859) b!3331622))

(assert (= (and d!937597 (not c!565859)) b!3331623))

(assert (= (and d!937597 res!1351361) b!3331624))

(assert (= (and b!3331624 res!1351362) b!3331625))

(declare-fun m!3674137 () Bool)

(assert (=> d!937597 m!3674137))

(assert (=> d!937597 m!3672107))

(declare-fun m!3674139 () Bool)

(assert (=> d!937597 m!3674139))

(declare-fun m!3674141 () Bool)

(assert (=> b!3331623 m!3674141))

(declare-fun m!3674143 () Bool)

(assert (=> b!3331624 m!3674143))

(assert (=> b!3331624 m!3672115))

(declare-fun m!3674145 () Bool)

(assert (=> b!3331624 m!3674145))

(assert (=> d!937003 d!937597))

(assert (=> d!937003 d!937193))

(declare-fun d!937599 () Bool)

(assert (=> d!937599 (= (list!13219 lt!1132054) (list!13222 (c!565595 lt!1132054)))))

(declare-fun bs!551461 () Bool)

(assert (= bs!551461 d!937599))

(declare-fun m!3674147 () Bool)

(assert (=> bs!551461 m!3674147))

(assert (=> d!936941 d!937599))

(declare-fun d!937601 () Bool)

(declare-fun lt!1132720 () Bool)

(assert (=> d!937601 (= lt!1132720 (isEmpty!20855 (list!13219 (_2!21235 lt!1132159))))))

(assert (=> d!937601 (= lt!1132720 (isEmpty!20867 (c!565595 (_2!21235 lt!1132159))))))

(assert (=> d!937601 (= (isEmpty!20862 (_2!21235 lt!1132159)) lt!1132720)))

(declare-fun bs!551462 () Bool)

(assert (= bs!551462 d!937601))

(declare-fun m!3674149 () Bool)

(assert (=> bs!551462 m!3674149))

(assert (=> bs!551462 m!3674149))

(declare-fun m!3674151 () Bool)

(assert (=> bs!551462 m!3674151))

(declare-fun m!3674153 () Bool)

(assert (=> bs!551462 m!3674153))

(assert (=> b!3330598 d!937601))

(declare-fun d!937603 () Bool)

(assert (=> d!937603 (= (list!13219 lt!1132051) (list!13222 (c!565595 lt!1132051)))))

(declare-fun bs!551463 () Bool)

(assert (= bs!551463 d!937603))

(declare-fun m!3674155 () Bool)

(assert (=> bs!551463 m!3674155))

(assert (=> d!936939 d!937603))

(declare-fun d!937605 () Bool)

(declare-fun c!565862 () Bool)

(assert (=> d!937605 (= c!565862 ((_ is Cons!36689) (list!13223 lt!1132040)))))

(declare-fun e!2071856 () List!36811)

(assert (=> d!937605 (= (printWithSeparatorTokenList!229 thiss!18206 (list!13223 lt!1132040) separatorToken!241) e!2071856)))

(declare-fun b!3331630 () Bool)

(assert (=> b!3331630 (= e!2071856 (++!8925 (++!8925 (list!13219 (charsOf!3350 (h!42109 (list!13223 lt!1132040)))) (list!13219 (charsOf!3350 separatorToken!241))) (printWithSeparatorTokenList!229 thiss!18206 (t!257170 (list!13223 lt!1132040)) separatorToken!241)))))

(declare-fun b!3331631 () Bool)

(assert (=> b!3331631 (= e!2071856 Nil!36687)))

(assert (= (and d!937605 c!565862) b!3331630))

(assert (= (and d!937605 (not c!565862)) b!3331631))

(declare-fun m!3674157 () Bool)

(assert (=> b!3331630 m!3674157))

(declare-fun m!3674159 () Bool)

(assert (=> b!3331630 m!3674159))

(assert (=> b!3331630 m!3674157))

(declare-fun m!3674161 () Bool)

(assert (=> b!3331630 m!3674161))

(assert (=> b!3331630 m!3671999))

(assert (=> b!3331630 m!3672003))

(assert (=> b!3331630 m!3671999))

(declare-fun m!3674163 () Bool)

(assert (=> b!3331630 m!3674163))

(assert (=> b!3331630 m!3672003))

(assert (=> b!3331630 m!3674159))

(declare-fun m!3674165 () Bool)

(assert (=> b!3331630 m!3674165))

(assert (=> b!3331630 m!3674163))

(assert (=> b!3331630 m!3674165))

(assert (=> d!936939 d!937605))

(assert (=> d!936939 d!937267))

(declare-fun d!937607 () Bool)

(declare-fun lt!1132743 () BalanceConc!21708)

(declare-fun printWithSeparatorTokenListTailRec!28 (LexerInterface!4925 List!36813 Token!10038 List!36811) List!36811)

(assert (=> d!937607 (= (list!13219 lt!1132743) (printWithSeparatorTokenListTailRec!28 thiss!18206 (dropList!1138 lt!1132040 0) separatorToken!241 (list!13219 (BalanceConc!21709 Empty!11047))))))

(declare-fun e!2071879 () BalanceConc!21708)

(assert (=> d!937607 (= lt!1132743 e!2071879)))

(declare-fun c!565865 () Bool)

(assert (=> d!937607 (= c!565865 (>= 0 (size!27743 lt!1132040)))))

(declare-fun e!2071880 () Bool)

(assert (=> d!937607 e!2071880))

(declare-fun res!1351371 () Bool)

(assert (=> d!937607 (=> (not res!1351371) (not e!2071880))))

(assert (=> d!937607 (= res!1351371 (>= 0 0))))

(assert (=> d!937607 (= (printWithSeparatorTokenTailRec!45 thiss!18206 lt!1132040 separatorToken!241 0 (BalanceConc!21709 Empty!11047)) lt!1132743)))

(declare-fun b!3331676 () Bool)

(assert (=> b!3331676 (= e!2071880 (<= 0 (size!27743 lt!1132040)))))

(declare-fun b!3331677 () Bool)

(assert (=> b!3331677 (= e!2071879 (BalanceConc!21709 Empty!11047))))

(declare-fun b!3331678 () Bool)

(assert (=> b!3331678 (= e!2071879 (printWithSeparatorTokenTailRec!45 thiss!18206 lt!1132040 separatorToken!241 (+ 0 1) (++!8926 (++!8926 (BalanceConc!21709 Empty!11047) (charsOf!3350 (apply!8478 lt!1132040 0))) (charsOf!3350 separatorToken!241))))))

(declare-fun lt!1132741 () List!36813)

(assert (=> b!3331678 (= lt!1132741 (list!13223 lt!1132040))))

(declare-fun lt!1132740 () Unit!51698)

(assert (=> b!3331678 (= lt!1132740 (lemmaDropApply!1096 lt!1132741 0))))

(assert (=> b!3331678 (= (head!7164 (drop!1930 lt!1132741 0)) (apply!8479 lt!1132741 0))))

(declare-fun lt!1132745 () Unit!51698)

(assert (=> b!3331678 (= lt!1132745 lt!1132740)))

(declare-fun lt!1132739 () List!36813)

(assert (=> b!3331678 (= lt!1132739 (list!13223 lt!1132040))))

(declare-fun lt!1132742 () Unit!51698)

(assert (=> b!3331678 (= lt!1132742 (lemmaDropTail!980 lt!1132739 0))))

(assert (=> b!3331678 (= (tail!5303 (drop!1930 lt!1132739 0)) (drop!1930 lt!1132739 (+ 0 1)))))

(declare-fun lt!1132744 () Unit!51698)

(assert (=> b!3331678 (= lt!1132744 lt!1132742)))

(assert (= (and d!937607 res!1351371) b!3331676))

(assert (= (and d!937607 c!565865) b!3331677))

(assert (= (and d!937607 (not c!565865)) b!3331678))

(declare-fun m!3674185 () Bool)

(assert (=> d!937607 m!3674185))

(declare-fun m!3674187 () Bool)

(assert (=> d!937607 m!3674187))

(assert (=> d!937607 m!3672171))

(declare-fun m!3674189 () Bool)

(assert (=> d!937607 m!3674189))

(assert (=> d!937607 m!3672171))

(assert (=> d!937607 m!3674187))

(declare-fun m!3674191 () Bool)

(assert (=> d!937607 m!3674191))

(assert (=> b!3331676 m!3674191))

(assert (=> b!3331678 m!3672123))

(declare-fun m!3674193 () Bool)

(assert (=> b!3331678 m!3674193))

(declare-fun m!3674195 () Bool)

(assert (=> b!3331678 m!3674195))

(assert (=> b!3331678 m!3671999))

(declare-fun m!3674197 () Bool)

(assert (=> b!3331678 m!3674197))

(declare-fun m!3674199 () Bool)

(assert (=> b!3331678 m!3674199))

(declare-fun m!3674201 () Bool)

(assert (=> b!3331678 m!3674201))

(declare-fun m!3674203 () Bool)

(assert (=> b!3331678 m!3674203))

(declare-fun m!3674205 () Bool)

(assert (=> b!3331678 m!3674205))

(declare-fun m!3674207 () Bool)

(assert (=> b!3331678 m!3674207))

(assert (=> b!3331678 m!3674193))

(declare-fun m!3674209 () Bool)

(assert (=> b!3331678 m!3674209))

(declare-fun m!3674211 () Bool)

(assert (=> b!3331678 m!3674211))

(assert (=> b!3331678 m!3674205))

(declare-fun m!3674213 () Bool)

(assert (=> b!3331678 m!3674213))

(assert (=> b!3331678 m!3674197))

(assert (=> b!3331678 m!3674207))

(assert (=> b!3331678 m!3674195))

(assert (=> b!3331678 m!3671999))

(declare-fun m!3674215 () Bool)

(assert (=> b!3331678 m!3674215))

(assert (=> b!3331678 m!3674215))

(declare-fun m!3674217 () Bool)

(assert (=> b!3331678 m!3674217))

(assert (=> d!936939 d!937607))

(declare-fun d!937615 () Bool)

(declare-fun lt!1132746 () Bool)

(assert (=> d!937615 (= lt!1132746 (isEmpty!20855 (list!13219 (_2!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)))))))))

(assert (=> d!937615 (= lt!1132746 (isEmpty!20867 (c!565595 (_2!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241)))))))))

(assert (=> d!937615 (= (isEmpty!20862 (_2!21235 (lex!2251 thiss!18206 rules!2135 (print!1990 thiss!18206 (singletonSeq!2432 separatorToken!241))))) lt!1132746)))

(declare-fun bs!551467 () Bool)

(assert (= bs!551467 d!937615))

(declare-fun m!3674219 () Bool)

(assert (=> bs!551467 m!3674219))

(assert (=> bs!551467 m!3674219))

(declare-fun m!3674221 () Bool)

(assert (=> bs!551467 m!3674221))

(declare-fun m!3674223 () Bool)

(assert (=> bs!551467 m!3674223))

(assert (=> b!3330535 d!937615))

(assert (=> b!3330535 d!937289))

(assert (=> b!3330535 d!937287))

(assert (=> b!3330535 d!937283))

(declare-fun d!937617 () Bool)

(declare-fun lt!1132749 () Bool)

(declare-fun content!5020 (List!36812) (InoxSet Rule!10472))

(assert (=> d!937617 (= lt!1132749 (select (content!5020 rules!2135) (rule!7860 (_1!21234 (get!11687 lt!1132145)))))))

(declare-fun e!2071905 () Bool)

(assert (=> d!937617 (= lt!1132749 e!2071905)))

(declare-fun res!1351377 () Bool)

(assert (=> d!937617 (=> (not res!1351377) (not e!2071905))))

(assert (=> d!937617 (= res!1351377 ((_ is Cons!36688) rules!2135))))

(assert (=> d!937617 (= (contains!6657 rules!2135 (rule!7860 (_1!21234 (get!11687 lt!1132145)))) lt!1132749)))

(declare-fun b!3331718 () Bool)

(declare-fun e!2071904 () Bool)

(assert (=> b!3331718 (= e!2071905 e!2071904)))

(declare-fun res!1351376 () Bool)

(assert (=> b!3331718 (=> res!1351376 e!2071904)))

(assert (=> b!3331718 (= res!1351376 (= (h!42108 rules!2135) (rule!7860 (_1!21234 (get!11687 lt!1132145)))))))

(declare-fun b!3331719 () Bool)

(assert (=> b!3331719 (= e!2071904 (contains!6657 (t!257169 rules!2135) (rule!7860 (_1!21234 (get!11687 lt!1132145)))))))

(assert (= (and d!937617 res!1351377) b!3331718))

(assert (= (and b!3331718 (not res!1351376)) b!3331719))

(declare-fun m!3674243 () Bool)

(assert (=> d!937617 m!3674243))

(declare-fun m!3674245 () Bool)

(assert (=> d!937617 m!3674245))

(declare-fun m!3674247 () Bool)

(assert (=> b!3331719 m!3674247))

(assert (=> b!3330578 d!937617))

(assert (=> b!3330578 d!937143))

(declare-fun b!3331729 () Bool)

(declare-fun e!2071910 () List!36811)

(assert (=> b!3331729 (= e!2071910 (list!13219 (charsOf!3350 separatorToken!241)))))

(declare-fun d!937619 () Bool)

(declare-fun e!2071909 () Bool)

(assert (=> d!937619 e!2071909))

(declare-fun res!1351378 () Bool)

(assert (=> d!937619 (=> (not res!1351378) (not e!2071909))))

(declare-fun lt!1132750 () List!36811)

(assert (=> d!937619 (= res!1351378 (= (content!5016 lt!1132750) ((_ map or) (content!5016 (t!257168 lt!1132041)) (content!5016 (list!13219 (charsOf!3350 separatorToken!241))))))))

(assert (=> d!937619 (= lt!1132750 e!2071910)))

(declare-fun c!565866 () Bool)

(assert (=> d!937619 (= c!565866 ((_ is Nil!36687) (t!257168 lt!1132041)))))

(assert (=> d!937619 (= (++!8925 (t!257168 lt!1132041) (list!13219 (charsOf!3350 separatorToken!241))) lt!1132750)))

(declare-fun b!3331732 () Bool)

(assert (=> b!3331732 (= e!2071909 (or (not (= (list!13219 (charsOf!3350 separatorToken!241)) Nil!36687)) (= lt!1132750 (t!257168 lt!1132041))))))

(declare-fun b!3331730 () Bool)

(assert (=> b!3331730 (= e!2071910 (Cons!36687 (h!42107 (t!257168 lt!1132041)) (++!8925 (t!257168 (t!257168 lt!1132041)) (list!13219 (charsOf!3350 separatorToken!241)))))))

(declare-fun b!3331731 () Bool)

(declare-fun res!1351379 () Bool)

(assert (=> b!3331731 (=> (not res!1351379) (not e!2071909))))

(assert (=> b!3331731 (= res!1351379 (= (size!27742 lt!1132750) (+ (size!27742 (t!257168 lt!1132041)) (size!27742 (list!13219 (charsOf!3350 separatorToken!241))))))))

(assert (= (and d!937619 c!565866) b!3331729))

(assert (= (and d!937619 (not c!565866)) b!3331730))

(assert (= (and d!937619 res!1351378) b!3331731))

(assert (= (and b!3331731 res!1351379) b!3331732))

(declare-fun m!3674249 () Bool)

(assert (=> d!937619 m!3674249))

(assert (=> d!937619 m!3673021))

(assert (=> d!937619 m!3672003))

(assert (=> d!937619 m!3672109))

(assert (=> b!3331730 m!3672003))

(declare-fun m!3674251 () Bool)

(assert (=> b!3331730 m!3674251))

(declare-fun m!3674253 () Bool)

(assert (=> b!3331731 m!3674253))

(assert (=> b!3331731 m!3672881))

(assert (=> b!3331731 m!3672003))

(assert (=> b!3331731 m!3672117))

(assert (=> b!3330418 d!937619))

(declare-fun b!3331755 () Bool)

(declare-fun e!2071918 () Bool)

(declare-fun tp!1041094 () Bool)

(declare-fun tp!1041093 () Bool)

(assert (=> b!3331755 (= e!2071918 (and tp!1041094 tp!1041093))))

(declare-fun b!3331752 () Bool)

(assert (=> b!3331752 (= e!2071918 tp_is_empty!17425)))

(declare-fun b!3331753 () Bool)

(declare-fun tp!1041095 () Bool)

(declare-fun tp!1041092 () Bool)

(assert (=> b!3331753 (= e!2071918 (and tp!1041095 tp!1041092))))

(declare-fun b!3331754 () Bool)

(declare-fun tp!1041096 () Bool)

(assert (=> b!3331754 (= e!2071918 tp!1041096)))

(assert (=> b!3330770 (= tp!1040938 e!2071918)))

(assert (= (and b!3330770 ((_ is ElementMatch!10095) (reg!10424 (regex!5336 (h!42108 rules!2135))))) b!3331752))

(assert (= (and b!3330770 ((_ is Concat!15661) (reg!10424 (regex!5336 (h!42108 rules!2135))))) b!3331753))

(assert (= (and b!3330770 ((_ is Star!10095) (reg!10424 (regex!5336 (h!42108 rules!2135))))) b!3331754))

(assert (= (and b!3330770 ((_ is Union!10095) (reg!10424 (regex!5336 (h!42108 rules!2135))))) b!3331755))

(declare-fun b!3331759 () Bool)

(declare-fun e!2071919 () Bool)

(declare-fun tp!1041099 () Bool)

(declare-fun tp!1041098 () Bool)

(assert (=> b!3331759 (= e!2071919 (and tp!1041099 tp!1041098))))

(declare-fun b!3331756 () Bool)

(assert (=> b!3331756 (= e!2071919 tp_is_empty!17425)))

(declare-fun b!3331757 () Bool)

(declare-fun tp!1041100 () Bool)

(declare-fun tp!1041097 () Bool)

(assert (=> b!3331757 (= e!2071919 (and tp!1041100 tp!1041097))))

(declare-fun b!3331758 () Bool)

(declare-fun tp!1041101 () Bool)

(assert (=> b!3331758 (= e!2071919 tp!1041101)))

(assert (=> b!3330771 (= tp!1040936 e!2071919)))

(assert (= (and b!3330771 ((_ is ElementMatch!10095) (regOne!20703 (regex!5336 (h!42108 rules!2135))))) b!3331756))

(assert (= (and b!3330771 ((_ is Concat!15661) (regOne!20703 (regex!5336 (h!42108 rules!2135))))) b!3331757))

(assert (= (and b!3330771 ((_ is Star!10095) (regOne!20703 (regex!5336 (h!42108 rules!2135))))) b!3331758))

(assert (= (and b!3330771 ((_ is Union!10095) (regOne!20703 (regex!5336 (h!42108 rules!2135))))) b!3331759))

(declare-fun b!3331763 () Bool)

(declare-fun e!2071920 () Bool)

(declare-fun tp!1041104 () Bool)

(declare-fun tp!1041103 () Bool)

(assert (=> b!3331763 (= e!2071920 (and tp!1041104 tp!1041103))))

(declare-fun b!3331760 () Bool)

(assert (=> b!3331760 (= e!2071920 tp_is_empty!17425)))

(declare-fun b!3331761 () Bool)

(declare-fun tp!1041105 () Bool)

(declare-fun tp!1041102 () Bool)

(assert (=> b!3331761 (= e!2071920 (and tp!1041105 tp!1041102))))

(declare-fun b!3331762 () Bool)

(declare-fun tp!1041106 () Bool)

(assert (=> b!3331762 (= e!2071920 tp!1041106)))

(assert (=> b!3330771 (= tp!1040935 e!2071920)))

(assert (= (and b!3330771 ((_ is ElementMatch!10095) (regTwo!20703 (regex!5336 (h!42108 rules!2135))))) b!3331760))

(assert (= (and b!3330771 ((_ is Concat!15661) (regTwo!20703 (regex!5336 (h!42108 rules!2135))))) b!3331761))

(assert (= (and b!3330771 ((_ is Star!10095) (regTwo!20703 (regex!5336 (h!42108 rules!2135))))) b!3331762))

(assert (= (and b!3330771 ((_ is Union!10095) (regTwo!20703 (regex!5336 (h!42108 rules!2135))))) b!3331763))

(declare-fun b!3331767 () Bool)

(declare-fun e!2071921 () Bool)

(declare-fun tp!1041109 () Bool)

(declare-fun tp!1041108 () Bool)

(assert (=> b!3331767 (= e!2071921 (and tp!1041109 tp!1041108))))

(declare-fun b!3331764 () Bool)

(assert (=> b!3331764 (= e!2071921 tp_is_empty!17425)))

(declare-fun b!3331765 () Bool)

(declare-fun tp!1041110 () Bool)

(declare-fun tp!1041107 () Bool)

(assert (=> b!3331765 (= e!2071921 (and tp!1041110 tp!1041107))))

(declare-fun b!3331766 () Bool)

(declare-fun tp!1041111 () Bool)

(assert (=> b!3331766 (= e!2071921 tp!1041111)))

(assert (=> b!3330804 (= tp!1040973 e!2071921)))

(assert (= (and b!3330804 ((_ is ElementMatch!10095) (regex!5336 (h!42108 (t!257169 rules!2135))))) b!3331764))

(assert (= (and b!3330804 ((_ is Concat!15661) (regex!5336 (h!42108 (t!257169 rules!2135))))) b!3331765))

(assert (= (and b!3330804 ((_ is Star!10095) (regex!5336 (h!42108 (t!257169 rules!2135))))) b!3331766))

(assert (= (and b!3330804 ((_ is Union!10095) (regex!5336 (h!42108 (t!257169 rules!2135))))) b!3331767))

(declare-fun b!3331771 () Bool)

(declare-fun e!2071922 () Bool)

(declare-fun tp!1041114 () Bool)

(declare-fun tp!1041113 () Bool)

(assert (=> b!3331771 (= e!2071922 (and tp!1041114 tp!1041113))))

(declare-fun b!3331768 () Bool)

(assert (=> b!3331768 (= e!2071922 tp_is_empty!17425)))

(declare-fun b!3331769 () Bool)

(declare-fun tp!1041115 () Bool)

(declare-fun tp!1041112 () Bool)

(assert (=> b!3331769 (= e!2071922 (and tp!1041115 tp!1041112))))

(declare-fun b!3331770 () Bool)

(declare-fun tp!1041116 () Bool)

(assert (=> b!3331770 (= e!2071922 tp!1041116)))

(assert (=> b!3330769 (= tp!1040937 e!2071922)))

(assert (= (and b!3330769 ((_ is ElementMatch!10095) (regOne!20702 (regex!5336 (h!42108 rules!2135))))) b!3331768))

(assert (= (and b!3330769 ((_ is Concat!15661) (regOne!20702 (regex!5336 (h!42108 rules!2135))))) b!3331769))

(assert (= (and b!3330769 ((_ is Star!10095) (regOne!20702 (regex!5336 (h!42108 rules!2135))))) b!3331770))

(assert (= (and b!3330769 ((_ is Union!10095) (regOne!20702 (regex!5336 (h!42108 rules!2135))))) b!3331771))

(declare-fun b!3331775 () Bool)

(declare-fun e!2071923 () Bool)

(declare-fun tp!1041119 () Bool)

(declare-fun tp!1041118 () Bool)

(assert (=> b!3331775 (= e!2071923 (and tp!1041119 tp!1041118))))

(declare-fun b!3331772 () Bool)

(assert (=> b!3331772 (= e!2071923 tp_is_empty!17425)))

(declare-fun b!3331773 () Bool)

(declare-fun tp!1041120 () Bool)

(declare-fun tp!1041117 () Bool)

(assert (=> b!3331773 (= e!2071923 (and tp!1041120 tp!1041117))))

(declare-fun b!3331774 () Bool)

(declare-fun tp!1041121 () Bool)

(assert (=> b!3331774 (= e!2071923 tp!1041121)))

(assert (=> b!3330769 (= tp!1040934 e!2071923)))

(assert (= (and b!3330769 ((_ is ElementMatch!10095) (regTwo!20702 (regex!5336 (h!42108 rules!2135))))) b!3331772))

(assert (= (and b!3330769 ((_ is Concat!15661) (regTwo!20702 (regex!5336 (h!42108 rules!2135))))) b!3331773))

(assert (= (and b!3330769 ((_ is Star!10095) (regTwo!20702 (regex!5336 (h!42108 rules!2135))))) b!3331774))

(assert (= (and b!3330769 ((_ is Union!10095) (regTwo!20702 (regex!5336 (h!42108 rules!2135))))) b!3331775))

(declare-fun tp!1041129 () Bool)

(declare-fun tp!1041130 () Bool)

(declare-fun b!3331784 () Bool)

(declare-fun e!2071928 () Bool)

(assert (=> b!3331784 (= e!2071928 (and (inv!49706 (left!28593 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))))) tp!1041129 (inv!49706 (right!28923 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))))) tp!1041130))))

(declare-fun b!3331786 () Bool)

(declare-fun e!2071929 () Bool)

(declare-fun tp!1041128 () Bool)

(assert (=> b!3331786 (= e!2071929 tp!1041128)))

(declare-fun b!3331785 () Bool)

(declare-fun inv!49712 (IArray!22099) Bool)

(assert (=> b!3331785 (= e!2071928 (and (inv!49712 (xs!14185 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))))) e!2071929))))

(assert (=> b!3330543 (= tp!1040862 (and (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494))))) e!2071928))))

(assert (= (and b!3330543 ((_ is Node!11047) (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))))) b!3331784))

(assert (= b!3331785 b!3331786))

(assert (= (and b!3330543 ((_ is Leaf!17326) (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (value!172536 (h!42109 tokens!494)))))) b!3331785))

(declare-fun m!3674255 () Bool)

(assert (=> b!3331784 m!3674255))

(declare-fun m!3674257 () Bool)

(assert (=> b!3331784 m!3674257))

(declare-fun m!3674259 () Bool)

(assert (=> b!3331785 m!3674259))

(assert (=> b!3330543 m!3672329))

(declare-fun b!3331787 () Bool)

(declare-fun e!2071930 () Bool)

(declare-fun tp!1041131 () Bool)

(assert (=> b!3331787 (= e!2071930 (and tp_is_empty!17425 tp!1041131))))

(assert (=> b!3330776 (= tp!1040941 e!2071930)))

(assert (= (and b!3330776 ((_ is Cons!36687) (t!257168 (originalCharacters!6050 (h!42109 tokens!494))))) b!3331787))

(declare-fun b!3331790 () Bool)

(declare-fun b_free!87741 () Bool)

(declare-fun b_next!88445 () Bool)

(assert (=> b!3331790 (= b_free!87741 (not b_next!88445))))

(declare-fun t!257370 () Bool)

(declare-fun tb!174703 () Bool)

(assert (=> (and b!3331790 (= (toValue!7504 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257370) tb!174703))

(declare-fun result!217860 () Bool)

(assert (= result!217860 result!217746))

(assert (=> d!937145 t!257370))

(declare-fun tp!1041133 () Bool)

(declare-fun b_and!229879 () Bool)

(assert (=> b!3331790 (= tp!1041133 (and (=> t!257370 result!217860) b_and!229879))))

(declare-fun b_free!87743 () Bool)

(declare-fun b_next!88447 () Bool)

(assert (=> b!3331790 (= b_free!87743 (not b_next!88447))))

(declare-fun t!257372 () Bool)

(declare-fun tb!174705 () Bool)

(assert (=> (and b!3331790 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) t!257372) tb!174705))

(declare-fun result!217862 () Bool)

(assert (= result!217862 result!217788))

(assert (=> b!3331109 t!257372))

(declare-fun tb!174707 () Bool)

(declare-fun t!257374 () Bool)

(assert (=> (and b!3331790 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))) t!257374) tb!174707))

(declare-fun result!217864 () Bool)

(assert (= result!217864 result!217808))

(assert (=> d!937483 t!257374))

(declare-fun tb!174709 () Bool)

(declare-fun t!257376 () Bool)

(assert (=> (and b!3331790 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257376) tb!174709))

(declare-fun result!217866 () Bool)

(assert (= result!217866 result!217768))

(assert (=> d!937177 t!257376))

(declare-fun tb!174711 () Bool)

(declare-fun t!257378 () Bool)

(assert (=> (and b!3331790 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) t!257378) tb!174711))

(declare-fun result!217868 () Bool)

(assert (= result!217868 result!217686))

(assert (=> d!937027 t!257378))

(declare-fun tb!174713 () Bool)

(declare-fun t!257380 () Bool)

(assert (=> (and b!3331790 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) t!257380) tb!174713))

(declare-fun result!217870 () Bool)

(assert (= result!217870 result!217678))

(assert (=> d!936941 t!257380))

(declare-fun t!257382 () Bool)

(declare-fun tb!174715 () Bool)

(assert (=> (and b!3331790 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0))))) t!257382) tb!174715))

(declare-fun result!217872 () Bool)

(assert (= result!217872 result!217818))

(assert (=> d!937553 t!257382))

(assert (=> b!3330580 t!257380))

(assert (=> b!3330541 t!257378))

(declare-fun tp!1041134 () Bool)

(declare-fun b_and!229881 () Bool)

(assert (=> b!3331790 (= tp!1041134 (and (=> t!257382 result!217872) (=> t!257374 result!217864) (=> t!257376 result!217866) (=> t!257380 result!217870) (=> t!257372 result!217862) (=> t!257378 result!217868) b_and!229881))))

(declare-fun e!2071934 () Bool)

(assert (=> b!3331790 (= e!2071934 (and tp!1041133 tp!1041134))))

(declare-fun tp!1041135 () Bool)

(declare-fun b!3331789 () Bool)

(declare-fun e!2071932 () Bool)

(assert (=> b!3331789 (= e!2071932 (and tp!1041135 (inv!49699 (tag!5888 (h!42108 (t!257169 (t!257169 rules!2135))))) (inv!49702 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) e!2071934))))

(declare-fun b!3331788 () Bool)

(declare-fun e!2071931 () Bool)

(declare-fun tp!1041132 () Bool)

(assert (=> b!3331788 (= e!2071931 (and e!2071932 tp!1041132))))

(assert (=> b!3330803 (= tp!1040970 e!2071931)))

(assert (= b!3331789 b!3331790))

(assert (= b!3331788 b!3331789))

(assert (= (and b!3330803 ((_ is Cons!36688) (t!257169 (t!257169 rules!2135)))) b!3331788))

(declare-fun m!3674261 () Bool)

(assert (=> b!3331789 m!3674261))

(declare-fun m!3674263 () Bool)

(assert (=> b!3331789 m!3674263))

(declare-fun b!3331793 () Bool)

(declare-fun e!2071937 () Bool)

(assert (=> b!3331793 (= e!2071937 true)))

(declare-fun b!3331792 () Bool)

(declare-fun e!2071936 () Bool)

(assert (=> b!3331792 (= e!2071936 e!2071937)))

(declare-fun b!3331791 () Bool)

(declare-fun e!2071935 () Bool)

(assert (=> b!3331791 (= e!2071935 e!2071936)))

(assert (=> b!3330744 e!2071935))

(assert (= b!3331792 b!3331793))

(assert (= b!3331791 b!3331792))

(assert (= (and b!3330744 ((_ is Cons!36688) (t!257169 rules!2135))) b!3331791))

(assert (=> b!3331793 (< (dynLambda!15148 order!19213 (toValue!7504 (transformation!5336 (h!42108 (t!257169 rules!2135))))) (dynLambda!15149 order!19215 lambda!119835))))

(assert (=> b!3331793 (< (dynLambda!15150 order!19217 (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135))))) (dynLambda!15149 order!19215 lambda!119835))))

(declare-fun b!3331794 () Bool)

(declare-fun e!2071938 () Bool)

(declare-fun tp!1041136 () Bool)

(assert (=> b!3331794 (= e!2071938 (and tp_is_empty!17425 tp!1041136))))

(assert (=> b!3330792 (= tp!1040957 e!2071938)))

(assert (= (and b!3330792 ((_ is Cons!36687) (originalCharacters!6050 (h!42109 (t!257170 tokens!494))))) b!3331794))

(declare-fun b!3331798 () Bool)

(declare-fun e!2071939 () Bool)

(declare-fun tp!1041139 () Bool)

(declare-fun tp!1041138 () Bool)

(assert (=> b!3331798 (= e!2071939 (and tp!1041139 tp!1041138))))

(declare-fun b!3331795 () Bool)

(assert (=> b!3331795 (= e!2071939 tp_is_empty!17425)))

(declare-fun b!3331796 () Bool)

(declare-fun tp!1041140 () Bool)

(declare-fun tp!1041137 () Bool)

(assert (=> b!3331796 (= e!2071939 (and tp!1041140 tp!1041137))))

(declare-fun b!3331797 () Bool)

(declare-fun tp!1041141 () Bool)

(assert (=> b!3331797 (= e!2071939 tp!1041141)))

(assert (=> b!3330766 (= tp!1040933 e!2071939)))

(assert (= (and b!3330766 ((_ is ElementMatch!10095) (reg!10424 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331795))

(assert (= (and b!3330766 ((_ is Concat!15661) (reg!10424 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331796))

(assert (= (and b!3330766 ((_ is Star!10095) (reg!10424 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331797))

(assert (= (and b!3330766 ((_ is Union!10095) (reg!10424 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331798))

(declare-fun b!3331802 () Bool)

(declare-fun e!2071940 () Bool)

(declare-fun tp!1041144 () Bool)

(declare-fun tp!1041143 () Bool)

(assert (=> b!3331802 (= e!2071940 (and tp!1041144 tp!1041143))))

(declare-fun b!3331799 () Bool)

(assert (=> b!3331799 (= e!2071940 tp_is_empty!17425)))

(declare-fun b!3331800 () Bool)

(declare-fun tp!1041145 () Bool)

(declare-fun tp!1041142 () Bool)

(assert (=> b!3331800 (= e!2071940 (and tp!1041145 tp!1041142))))

(declare-fun b!3331801 () Bool)

(declare-fun tp!1041146 () Bool)

(assert (=> b!3331801 (= e!2071940 tp!1041146)))

(assert (=> b!3330765 (= tp!1040932 e!2071940)))

(assert (= (and b!3330765 ((_ is ElementMatch!10095) (regOne!20702 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331799))

(assert (= (and b!3330765 ((_ is Concat!15661) (regOne!20702 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331800))

(assert (= (and b!3330765 ((_ is Star!10095) (regOne!20702 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331801))

(assert (= (and b!3330765 ((_ is Union!10095) (regOne!20702 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331802))

(declare-fun b!3331806 () Bool)

(declare-fun e!2071941 () Bool)

(declare-fun tp!1041149 () Bool)

(declare-fun tp!1041148 () Bool)

(assert (=> b!3331806 (= e!2071941 (and tp!1041149 tp!1041148))))

(declare-fun b!3331803 () Bool)

(assert (=> b!3331803 (= e!2071941 tp_is_empty!17425)))

(declare-fun b!3331804 () Bool)

(declare-fun tp!1041150 () Bool)

(declare-fun tp!1041147 () Bool)

(assert (=> b!3331804 (= e!2071941 (and tp!1041150 tp!1041147))))

(declare-fun b!3331805 () Bool)

(declare-fun tp!1041151 () Bool)

(assert (=> b!3331805 (= e!2071941 tp!1041151)))

(assert (=> b!3330765 (= tp!1040929 e!2071941)))

(assert (= (and b!3330765 ((_ is ElementMatch!10095) (regTwo!20702 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331803))

(assert (= (and b!3330765 ((_ is Concat!15661) (regTwo!20702 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331804))

(assert (= (and b!3330765 ((_ is Star!10095) (regTwo!20702 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331805))

(assert (= (and b!3330765 ((_ is Union!10095) (regTwo!20702 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331806))

(declare-fun b!3331810 () Bool)

(declare-fun e!2071942 () Bool)

(declare-fun tp!1041154 () Bool)

(declare-fun tp!1041153 () Bool)

(assert (=> b!3331810 (= e!2071942 (and tp!1041154 tp!1041153))))

(declare-fun b!3331807 () Bool)

(assert (=> b!3331807 (= e!2071942 tp_is_empty!17425)))

(declare-fun b!3331808 () Bool)

(declare-fun tp!1041155 () Bool)

(declare-fun tp!1041152 () Bool)

(assert (=> b!3331808 (= e!2071942 (and tp!1041155 tp!1041152))))

(declare-fun b!3331809 () Bool)

(declare-fun tp!1041156 () Bool)

(assert (=> b!3331809 (= e!2071942 tp!1041156)))

(assert (=> b!3330767 (= tp!1040931 e!2071942)))

(assert (= (and b!3330767 ((_ is ElementMatch!10095) (regOne!20703 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331807))

(assert (= (and b!3330767 ((_ is Concat!15661) (regOne!20703 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331808))

(assert (= (and b!3330767 ((_ is Star!10095) (regOne!20703 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331809))

(assert (= (and b!3330767 ((_ is Union!10095) (regOne!20703 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331810))

(declare-fun b!3331814 () Bool)

(declare-fun e!2071943 () Bool)

(declare-fun tp!1041159 () Bool)

(declare-fun tp!1041158 () Bool)

(assert (=> b!3331814 (= e!2071943 (and tp!1041159 tp!1041158))))

(declare-fun b!3331811 () Bool)

(assert (=> b!3331811 (= e!2071943 tp_is_empty!17425)))

(declare-fun b!3331812 () Bool)

(declare-fun tp!1041160 () Bool)

(declare-fun tp!1041157 () Bool)

(assert (=> b!3331812 (= e!2071943 (and tp!1041160 tp!1041157))))

(declare-fun b!3331813 () Bool)

(declare-fun tp!1041161 () Bool)

(assert (=> b!3331813 (= e!2071943 tp!1041161)))

(assert (=> b!3330767 (= tp!1040930 e!2071943)))

(assert (= (and b!3330767 ((_ is ElementMatch!10095) (regTwo!20703 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331811))

(assert (= (and b!3330767 ((_ is Concat!15661) (regTwo!20703 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331812))

(assert (= (and b!3330767 ((_ is Star!10095) (regTwo!20703 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331813))

(assert (= (and b!3330767 ((_ is Union!10095) (regTwo!20703 (regex!5336 (rule!7860 (h!42109 tokens!494)))))) b!3331814))

(declare-fun tp!1041163 () Bool)

(declare-fun e!2071944 () Bool)

(declare-fun tp!1041164 () Bool)

(declare-fun b!3331815 () Bool)

(assert (=> b!3331815 (= e!2071944 (and (inv!49706 (left!28593 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))))) tp!1041163 (inv!49706 (right!28923 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))))) tp!1041164))))

(declare-fun b!3331817 () Bool)

(declare-fun e!2071945 () Bool)

(declare-fun tp!1041162 () Bool)

(assert (=> b!3331817 (= e!2071945 tp!1041162)))

(declare-fun b!3331816 () Bool)

(assert (=> b!3331816 (= e!2071944 (and (inv!49712 (xs!14185 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))))) e!2071945))))

(assert (=> b!3330425 (= tp!1040861 (and (inv!49706 (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241)))) e!2071944))))

(assert (= (and b!3330425 ((_ is Node!11047) (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))))) b!3331815))

(assert (= b!3331816 b!3331817))

(assert (= (and b!3330425 ((_ is Leaf!17326) (c!565595 (dynLambda!15146 (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (value!172536 separatorToken!241))))) b!3331816))

(declare-fun m!3674265 () Bool)

(assert (=> b!3331815 m!3674265))

(declare-fun m!3674267 () Bool)

(assert (=> b!3331815 m!3674267))

(declare-fun m!3674269 () Bool)

(assert (=> b!3331816 m!3674269))

(assert (=> b!3330425 m!3672129))

(declare-fun b!3331821 () Bool)

(declare-fun e!2071946 () Bool)

(declare-fun tp!1041167 () Bool)

(declare-fun tp!1041166 () Bool)

(assert (=> b!3331821 (= e!2071946 (and tp!1041167 tp!1041166))))

(declare-fun b!3331818 () Bool)

(assert (=> b!3331818 (= e!2071946 tp_is_empty!17425)))

(declare-fun b!3331819 () Bool)

(declare-fun tp!1041168 () Bool)

(declare-fun tp!1041165 () Bool)

(assert (=> b!3331819 (= e!2071946 (and tp!1041168 tp!1041165))))

(declare-fun b!3331820 () Bool)

(declare-fun tp!1041169 () Bool)

(assert (=> b!3331820 (= e!2071946 tp!1041169)))

(assert (=> b!3330793 (= tp!1040958 e!2071946)))

(assert (= (and b!3330793 ((_ is ElementMatch!10095) (regex!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) b!3331818))

(assert (= (and b!3330793 ((_ is Concat!15661) (regex!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) b!3331819))

(assert (= (and b!3330793 ((_ is Star!10095) (regex!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) b!3331820))

(assert (= (and b!3330793 ((_ is Union!10095) (regex!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) b!3331821))

(declare-fun b!3331822 () Bool)

(declare-fun e!2071947 () Bool)

(declare-fun tp!1041170 () Bool)

(assert (=> b!3331822 (= e!2071947 (and tp_is_empty!17425 tp!1041170))))

(assert (=> b!3330806 (= tp!1040974 e!2071947)))

(assert (= (and b!3330806 ((_ is Cons!36687) (t!257168 (originalCharacters!6050 separatorToken!241)))) b!3331822))

(declare-fun b!3331826 () Bool)

(declare-fun b_free!87745 () Bool)

(declare-fun b_next!88449 () Bool)

(assert (=> b!3331826 (= b_free!87745 (not b_next!88449))))

(declare-fun t!257384 () Bool)

(declare-fun tb!174717 () Bool)

(assert (=> (and b!3331826 (= (toValue!7504 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (toValue!7504 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257384) tb!174717))

(declare-fun result!217874 () Bool)

(assert (= result!217874 result!217746))

(assert (=> d!937145 t!257384))

(declare-fun b_and!229883 () Bool)

(declare-fun tp!1041174 () Bool)

(assert (=> b!3331826 (= tp!1041174 (and (=> t!257384 result!217874) b_and!229883))))

(declare-fun b_free!87747 () Bool)

(declare-fun b_next!88451 () Bool)

(assert (=> b!3331826 (= b_free!87747 (not b_next!88451))))

(declare-fun t!257386 () Bool)

(declare-fun tb!174719 () Bool)

(assert (=> (and b!3331826 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494)))))) t!257386) tb!174719))

(declare-fun result!217876 () Bool)

(assert (= result!217876 result!217788))

(assert (=> b!3331109 t!257386))

(declare-fun t!257388 () Bool)

(declare-fun tb!174721 () Bool)

(assert (=> (and b!3331826 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (Cons!36689 (h!42109 tokens!494) Nil!36689)))))) t!257388) tb!174721))

(declare-fun result!217878 () Bool)

(assert (= result!217878 result!217808))

(assert (=> d!937483 t!257388))

(declare-fun t!257390 () Bool)

(declare-fun tb!174723 () Bool)

(assert (=> (and b!3331826 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (toChars!7363 (transformation!5336 (rule!7860 (_1!21234 (get!11687 lt!1132145)))))) t!257390) tb!174723))

(declare-fun result!217880 () Bool)

(assert (= result!217880 result!217768))

(assert (=> d!937177 t!257390))

(declare-fun t!257392 () Bool)

(declare-fun tb!174725 () Bool)

(assert (=> (and b!3331826 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494))))) t!257392) tb!174725))

(declare-fun result!217882 () Bool)

(assert (= result!217882 result!217686))

(assert (=> d!937027 t!257392))

(declare-fun tb!174727 () Bool)

(declare-fun t!257394 () Bool)

(assert (=> (and b!3331826 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241)))) t!257394) tb!174727))

(declare-fun result!217884 () Bool)

(assert (= result!217884 result!217678))

(assert (=> d!936941 t!257394))

(declare-fun tb!174729 () Bool)

(declare-fun t!257396 () Bool)

(assert (=> (and b!3331826 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (toChars!7363 (transformation!5336 (rule!7860 (apply!8478 lt!1132033 0))))) t!257396) tb!174729))

(declare-fun result!217886 () Bool)

(assert (= result!217886 result!217818))

(assert (=> d!937553 t!257396))

(assert (=> b!3330580 t!257394))

(assert (=> b!3330541 t!257392))

(declare-fun tp!1041173 () Bool)

(declare-fun b_and!229885 () Bool)

(assert (=> b!3331826 (= tp!1041173 (and (=> t!257388 result!217878) (=> t!257386 result!217876) (=> t!257396 result!217886) (=> t!257394 result!217884) (=> t!257390 result!217880) (=> t!257392 result!217882) b_and!229885))))

(declare-fun tp!1041172 () Bool)

(declare-fun e!2071950 () Bool)

(declare-fun e!2071952 () Bool)

(declare-fun b!3331825 () Bool)

(assert (=> b!3331825 (= e!2071952 (and tp!1041172 (inv!49699 (tag!5888 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (inv!49702 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) e!2071950))))

(declare-fun b!3331824 () Bool)

(declare-fun e!2071948 () Bool)

(declare-fun tp!1041171 () Bool)

(assert (=> b!3331824 (= e!2071948 (and (inv!21 (value!172536 (h!42109 (t!257170 (t!257170 tokens!494))))) e!2071952 tp!1041171))))

(assert (=> b!3331826 (= e!2071950 (and tp!1041174 tp!1041173))))

(declare-fun e!2071951 () Bool)

(assert (=> b!3330791 (= tp!1040961 e!2071951)))

(declare-fun b!3331823 () Bool)

(declare-fun tp!1041175 () Bool)

(assert (=> b!3331823 (= e!2071951 (and (inv!49703 (h!42109 (t!257170 (t!257170 tokens!494)))) e!2071948 tp!1041175))))

(assert (= b!3331825 b!3331826))

(assert (= b!3331824 b!3331825))

(assert (= b!3331823 b!3331824))

(assert (= (and b!3330791 ((_ is Cons!36689) (t!257170 (t!257170 tokens!494)))) b!3331823))

(declare-fun m!3674271 () Bool)

(assert (=> b!3331825 m!3674271))

(declare-fun m!3674273 () Bool)

(assert (=> b!3331825 m!3674273))

(declare-fun m!3674275 () Bool)

(assert (=> b!3331824 m!3674275))

(declare-fun m!3674277 () Bool)

(assert (=> b!3331823 m!3674277))

(declare-fun b!3331830 () Bool)

(declare-fun e!2071954 () Bool)

(declare-fun tp!1041178 () Bool)

(declare-fun tp!1041177 () Bool)

(assert (=> b!3331830 (= e!2071954 (and tp!1041178 tp!1041177))))

(declare-fun b!3331827 () Bool)

(assert (=> b!3331827 (= e!2071954 tp_is_empty!17425)))

(declare-fun b!3331828 () Bool)

(declare-fun tp!1041179 () Bool)

(declare-fun tp!1041176 () Bool)

(assert (=> b!3331828 (= e!2071954 (and tp!1041179 tp!1041176))))

(declare-fun b!3331829 () Bool)

(declare-fun tp!1041180 () Bool)

(assert (=> b!3331829 (= e!2071954 tp!1041180)))

(assert (=> b!3330778 (= tp!1040945 e!2071954)))

(assert (= (and b!3330778 ((_ is ElementMatch!10095) (regOne!20702 (regex!5336 (rule!7860 separatorToken!241))))) b!3331827))

(assert (= (and b!3330778 ((_ is Concat!15661) (regOne!20702 (regex!5336 (rule!7860 separatorToken!241))))) b!3331828))

(assert (= (and b!3330778 ((_ is Star!10095) (regOne!20702 (regex!5336 (rule!7860 separatorToken!241))))) b!3331829))

(assert (= (and b!3330778 ((_ is Union!10095) (regOne!20702 (regex!5336 (rule!7860 separatorToken!241))))) b!3331830))

(declare-fun b!3331834 () Bool)

(declare-fun e!2071955 () Bool)

(declare-fun tp!1041183 () Bool)

(declare-fun tp!1041182 () Bool)

(assert (=> b!3331834 (= e!2071955 (and tp!1041183 tp!1041182))))

(declare-fun b!3331831 () Bool)

(assert (=> b!3331831 (= e!2071955 tp_is_empty!17425)))

(declare-fun b!3331832 () Bool)

(declare-fun tp!1041184 () Bool)

(declare-fun tp!1041181 () Bool)

(assert (=> b!3331832 (= e!2071955 (and tp!1041184 tp!1041181))))

(declare-fun b!3331833 () Bool)

(declare-fun tp!1041185 () Bool)

(assert (=> b!3331833 (= e!2071955 tp!1041185)))

(assert (=> b!3330778 (= tp!1040942 e!2071955)))

(assert (= (and b!3330778 ((_ is ElementMatch!10095) (regTwo!20702 (regex!5336 (rule!7860 separatorToken!241))))) b!3331831))

(assert (= (and b!3330778 ((_ is Concat!15661) (regTwo!20702 (regex!5336 (rule!7860 separatorToken!241))))) b!3331832))

(assert (= (and b!3330778 ((_ is Star!10095) (regTwo!20702 (regex!5336 (rule!7860 separatorToken!241))))) b!3331833))

(assert (= (and b!3330778 ((_ is Union!10095) (regTwo!20702 (regex!5336 (rule!7860 separatorToken!241))))) b!3331834))

(declare-fun b!3331838 () Bool)

(declare-fun e!2071956 () Bool)

(declare-fun tp!1041188 () Bool)

(declare-fun tp!1041187 () Bool)

(assert (=> b!3331838 (= e!2071956 (and tp!1041188 tp!1041187))))

(declare-fun b!3331835 () Bool)

(assert (=> b!3331835 (= e!2071956 tp_is_empty!17425)))

(declare-fun b!3331836 () Bool)

(declare-fun tp!1041189 () Bool)

(declare-fun tp!1041186 () Bool)

(assert (=> b!3331836 (= e!2071956 (and tp!1041189 tp!1041186))))

(declare-fun b!3331837 () Bool)

(declare-fun tp!1041190 () Bool)

(assert (=> b!3331837 (= e!2071956 tp!1041190)))

(assert (=> b!3330780 (= tp!1040944 e!2071956)))

(assert (= (and b!3330780 ((_ is ElementMatch!10095) (regOne!20703 (regex!5336 (rule!7860 separatorToken!241))))) b!3331835))

(assert (= (and b!3330780 ((_ is Concat!15661) (regOne!20703 (regex!5336 (rule!7860 separatorToken!241))))) b!3331836))

(assert (= (and b!3330780 ((_ is Star!10095) (regOne!20703 (regex!5336 (rule!7860 separatorToken!241))))) b!3331837))

(assert (= (and b!3330780 ((_ is Union!10095) (regOne!20703 (regex!5336 (rule!7860 separatorToken!241))))) b!3331838))

(declare-fun b!3331842 () Bool)

(declare-fun e!2071957 () Bool)

(declare-fun tp!1041193 () Bool)

(declare-fun tp!1041192 () Bool)

(assert (=> b!3331842 (= e!2071957 (and tp!1041193 tp!1041192))))

(declare-fun b!3331839 () Bool)

(assert (=> b!3331839 (= e!2071957 tp_is_empty!17425)))

(declare-fun b!3331840 () Bool)

(declare-fun tp!1041194 () Bool)

(declare-fun tp!1041191 () Bool)

(assert (=> b!3331840 (= e!2071957 (and tp!1041194 tp!1041191))))

(declare-fun b!3331841 () Bool)

(declare-fun tp!1041195 () Bool)

(assert (=> b!3331841 (= e!2071957 tp!1041195)))

(assert (=> b!3330780 (= tp!1040943 e!2071957)))

(assert (= (and b!3330780 ((_ is ElementMatch!10095) (regTwo!20703 (regex!5336 (rule!7860 separatorToken!241))))) b!3331839))

(assert (= (and b!3330780 ((_ is Concat!15661) (regTwo!20703 (regex!5336 (rule!7860 separatorToken!241))))) b!3331840))

(assert (= (and b!3330780 ((_ is Star!10095) (regTwo!20703 (regex!5336 (rule!7860 separatorToken!241))))) b!3331841))

(assert (= (and b!3330780 ((_ is Union!10095) (regTwo!20703 (regex!5336 (rule!7860 separatorToken!241))))) b!3331842))

(declare-fun b!3331846 () Bool)

(declare-fun e!2071958 () Bool)

(declare-fun tp!1041198 () Bool)

(declare-fun tp!1041197 () Bool)

(assert (=> b!3331846 (= e!2071958 (and tp!1041198 tp!1041197))))

(declare-fun b!3331843 () Bool)

(assert (=> b!3331843 (= e!2071958 tp_is_empty!17425)))

(declare-fun b!3331844 () Bool)

(declare-fun tp!1041199 () Bool)

(declare-fun tp!1041196 () Bool)

(assert (=> b!3331844 (= e!2071958 (and tp!1041199 tp!1041196))))

(declare-fun b!3331845 () Bool)

(declare-fun tp!1041200 () Bool)

(assert (=> b!3331845 (= e!2071958 tp!1041200)))

(assert (=> b!3330779 (= tp!1040946 e!2071958)))

(assert (= (and b!3330779 ((_ is ElementMatch!10095) (reg!10424 (regex!5336 (rule!7860 separatorToken!241))))) b!3331843))

(assert (= (and b!3330779 ((_ is Concat!15661) (reg!10424 (regex!5336 (rule!7860 separatorToken!241))))) b!3331844))

(assert (= (and b!3330779 ((_ is Star!10095) (reg!10424 (regex!5336 (rule!7860 separatorToken!241))))) b!3331845))

(assert (= (and b!3330779 ((_ is Union!10095) (reg!10424 (regex!5336 (rule!7860 separatorToken!241))))) b!3331846))

(declare-fun b_lambda!94171 () Bool)

(assert (= b_lambda!94147 (or d!937033 b_lambda!94171)))

(declare-fun bs!551470 () Bool)

(declare-fun d!937625 () Bool)

(assert (= bs!551470 (and d!937625 d!937033)))

(assert (=> bs!551470 (= (dynLambda!15147 lambda!119835 (h!42109 (list!13223 lt!1132040))) (rulesProduceIndividualToken!2417 thiss!18206 rules!2135 (h!42109 (list!13223 lt!1132040))))))

(assert (=> bs!551470 m!3673475))

(assert (=> b!3331107 d!937625))

(declare-fun b_lambda!94173 () Bool)

(assert (= b_lambda!94149 (or (and b!3330365 b_free!87711 (= (toChars!7363 (transformation!5336 (rule!7860 separatorToken!241))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))))) (and b!3330369 b_free!87707 (= (toChars!7363 (transformation!5336 (h!42108 rules!2135))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))))) (and b!3330794 b_free!87727) (and b!3330805 b_free!87731 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 rules!2135)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))))) (and b!3330357 b_free!87715 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 tokens!494)))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))))) (and b!3331826 b_free!87747 (= (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 (t!257170 tokens!494)))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))))) (and b!3331790 b_free!87743 (= (toChars!7363 (transformation!5336 (h!42108 (t!257169 (t!257169 rules!2135))))) (toChars!7363 (transformation!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))))) b_lambda!94173)))

(declare-fun b_lambda!94175 () Bool)

(assert (= b_lambda!94137 (or b!3330351 b_lambda!94175)))

(assert (=> d!937149 d!937079))

(declare-fun b_lambda!94177 () Bool)

(assert (= b_lambda!94139 (or b!3330351 b_lambda!94177)))

(declare-fun bs!551471 () Bool)

(declare-fun d!937627 () Bool)

(assert (= bs!551471 (and d!937627 b!3330351)))

(assert (=> bs!551471 (= (dynLambda!15147 lambda!119825 (h!42109 (t!257170 tokens!494))) (not (isSeparator!5336 (rule!7860 (h!42109 (t!257170 tokens!494))))))))

(assert (=> b!3330906 d!937627))

(check-sat (not b!3331414) (not b!3331753) (not d!937331) (not b_next!88447) (not b!3330973) (not b!3331534) (not b!3331503) (not b!3331533) (not b!3331093) b_and!229799 (not b!3331402) (not b!3331817) (not b!3331297) (not b!3331004) (not b!3331769) (not b!3331442) (not b!3331845) (not d!937569) (not b_lambda!94171) (not b!3331296) (not b!3331148) tp_is_empty!17425 (not b!3331422) (not b!3331410) b_and!229797 (not b_lambda!94119) (not b!3331834) (not b_lambda!94121) (not b!3331624) (not d!937519) (not b!3330965) (not b!3330891) (not b!3331797) (not d!937317) (not b!3331532) (not b!3331439) (not b!3331844) (not d!937153) (not b!3331814) (not b!3331775) (not b!3330861) b_and!229795 (not d!937619) (not b_next!88419) b_and!229861 (not d!937521) (not b!3331142) (not bm!241410) (not b!3331770) (not b!3331138) (not b!3331824) (not b!3330994) (not b!3331774) (not d!937579) (not b!3330851) (not bm!241430) (not b!3331175) (not b!3331800) (not d!937477) (not d!937233) (not d!937255) (not b!3331106) (not b!3331841) (not d!937495) (not d!937483) (not b!3331395) (not b!3330852) (not b!3331539) (not d!937329) (not d!937297) (not b!3331174) (not b!3331443) (not b!3331440) (not d!937481) (not d!937525) (not b!3331438) (not b!3331060) (not b!3331731) (not b_lambda!94129) (not b!3330543) (not b!3330980) (not d!937599) (not b!3330954) (not d!937587) (not d!937213) (not b!3331295) (not tb!174635) (not d!937147) (not b!3331794) (not b_next!88449) (not d!937285) (not d!937207) (not d!937129) (not b_next!88433) (not b!3331758) (not b!3331838) (not d!937559) (not bm!241417) (not b!3331133) (not d!937585) (not b!3331099) (not b!3331804) (not b_next!88429) (not d!937617) (not b!3331791) (not d!937503) (not d!937241) (not b!3331464) (not d!937287) (not d!937277) (not b!3331126) b_and!229881 (not b!3331150) (not b!3331830) b_and!229793 (not b!3331676) (not b!3331846) (not b!3330907) (not b!3331103) (not b!3331828) (not b_next!88451) (not b!3331823) (not b_lambda!94161) (not b_next!88413) (not b_next!88445) (not b!3331766) (not d!937471) (not d!937301) (not b!3331531) (not d!937125) (not b!3331061) (not b!3331564) (not b!3331118) (not b!3331545) (not b!3331678) (not b!3330883) (not b!3331128) (not b!3331397) (not d!937467) (not b!3331761) (not b!3330890) (not d!937553) (not d!937597) (not b!3331444) (not d!937215) (not b!3331463) (not b!3331802) (not b!3331556) (not d!937515) (not b!3331788) (not d!937295) (not b!3331143) (not b!3330870) (not b!3331840) b_and!229883 (not d!937211) (not b!3331145) (not d!937273) (not b!3331584) (not b!3331447) (not b!3331755) (not b!3331110) b_and!229865 (not b!3331546) (not b!3331147) (not b!3331112) (not b_lambda!94157) (not b!3330982) (not d!937283) (not b!3331400) (not b!3331765) b_and!229867 (not d!937281) (not d!937299) (not d!937469) (not b!3331806) (not b!3331786) (not b!3331798) (not b!3331478) b_and!229879 (not b_lambda!94135) (not d!937175) (not d!937305) (not b!3331124) (not b!3331113) (not b!3331825) (not d!937271) (not b!3331116) (not b!3331623) (not b!3331399) (not b_lambda!94123) (not b_lambda!94143) (not d!937259) (not b!3331820) (not d!937313) (not b!3331754) (not d!937209) (not b!3331808) (not b_next!88415) (not b!3331618) (not b!3331108) (not b!3331801) (not bm!241428) (not b!3331812) (not d!937517) (not d!937551) (not b!3331006) (not b!3331767) (not b!3331152) (not b!3330966) (not b_lambda!94177) (not tb!174665) (not d!937137) (not d!937403) (not b!3331810) (not b!3331415) (not d!937473) (not b!3331412) (not b!3331454) (not d!937303) (not d!937205) (not d!937581) (not b!3331815) (not b!3331819) (not b!3331809) (not b!3331719) b_and!229863 (not b!3330886) (not b!3331451) (not d!937497) (not b!3331465) (not d!937323) (not b!3331842) (not d!937511) (not b!3331762) (not b!3331620) (not d!937601) (not b!3331789) (not b!3331146) (not b!3331127) (not b!3331785) (not b!3331151) (not d!937573) (not d!937311) (not d!937235) (not d!937561) (not b_lambda!94173) (not b!3331115) (not b!3331757) (not b!3330963) (not b!3331730) (not d!937269) (not d!937475) (not b!3331109) (not b_lambda!94125) (not b!3331836) (not b!3331829) (not d!937321) (not b!3331114) (not d!937479) (not b!3331425) (not b!3331837) (not d!937547) (not b!3330962) (not b!3331449) (not d!937607) (not b_lambda!94127) (not d!937279) (not b_next!88417) (not d!937539) (not b!3331441) (not b!3331813) (not d!937315) (not b!3331833) (not b!3331082) (not b!3331784) (not d!937565) (not b!3331557) (not b!3331821) (not b!3331796) (not d!937615) (not tb!174655) (not d!937275) (not b!3331816) (not b!3331144) b_and!229869 (not tb!174595) (not b!3331773) (not d!937289) (not d!937523) (not b_next!88435) (not b!3331479) (not b_next!88411) (not b!3331149) (not b!3331011) (not b!3331421) (not tb!174615) (not b!3331104) (not d!937195) (not b!3331419) (not d!937335) (not b!3331452) (not d!937493) (not b_next!88431) (not b!3331396) (not b!3331822) (not b!3330425) (not d!937177) (not b!3330887) (not b!3330881) (not d!937513) (not b!3331012) (not d!937325) (not b!3331125) (not d!937319) (not b!3330882) (not b!3331630) (not b!3331763) (not d!937291) (not d!937267) (not b_lambda!94175) (not b!3331063) (not b!3331619) (not b!3331759) (not b!3331131) (not bm!241429) (not b!3331832) (not b!3331398) (not b!3331418) (not d!937247) (not b_next!88409) (not bs!551470) (not b!3331504) (not b!3331445) (not b!3331805) (not bm!241413) (not b!3331111) (not d!937499) (not d!937505) b_and!229791 (not b!3331005) (not b!3331401) (not b!3331771) (not b!3331787) (not b!3331616) (not b!3330958) (not d!937603) (not b!3331101) (not d!937239) b_and!229885)
(check-sat (not b_next!88447) b_and!229799 b_and!229797 b_and!229883 b_and!229865 b_and!229867 b_and!229879 (not b_next!88415) b_and!229863 (not b_next!88417) b_and!229869 (not b_next!88431) (not b_next!88409) b_and!229795 (not b_next!88419) b_and!229861 (not b_next!88449) (not b_next!88433) (not b_next!88429) b_and!229881 b_and!229793 (not b_next!88451) (not b_next!88413) (not b_next!88445) (not b_next!88435) (not b_next!88411) b_and!229791 b_and!229885)
