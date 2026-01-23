; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302638 () Bool)

(assert start!302638)

(declare-fun b!3222622 () Bool)

(declare-fun b_free!85761 () Bool)

(declare-fun b_next!86465 () Bool)

(assert (=> b!3222622 (= b_free!85761 (not b_next!86465))))

(declare-fun tp!1015199 () Bool)

(declare-fun b_and!215463 () Bool)

(assert (=> b!3222622 (= tp!1015199 b_and!215463)))

(declare-fun b_free!85763 () Bool)

(declare-fun b_next!86467 () Bool)

(assert (=> b!3222622 (= b_free!85763 (not b_next!86467))))

(declare-fun tp!1015206 () Bool)

(declare-fun b_and!215465 () Bool)

(assert (=> b!3222622 (= tp!1015206 b_and!215465)))

(declare-fun b!3222658 () Bool)

(declare-fun b_free!85765 () Bool)

(declare-fun b_next!86469 () Bool)

(assert (=> b!3222658 (= b_free!85765 (not b_next!86469))))

(declare-fun tp!1015207 () Bool)

(declare-fun b_and!215467 () Bool)

(assert (=> b!3222658 (= tp!1015207 b_and!215467)))

(declare-fun b_free!85767 () Bool)

(declare-fun b_next!86471 () Bool)

(assert (=> b!3222658 (= b_free!85767 (not b_next!86471))))

(declare-fun tp!1015201 () Bool)

(declare-fun b_and!215469 () Bool)

(assert (=> b!3222658 (= tp!1015201 b_and!215469)))

(declare-fun b!3222653 () Bool)

(declare-fun b_free!85769 () Bool)

(declare-fun b_next!86473 () Bool)

(assert (=> b!3222653 (= b_free!85769 (not b_next!86473))))

(declare-fun tp!1015196 () Bool)

(declare-fun b_and!215471 () Bool)

(assert (=> b!3222653 (= tp!1015196 b_and!215471)))

(declare-fun b_free!85771 () Bool)

(declare-fun b_next!86475 () Bool)

(assert (=> b!3222653 (= b_free!85771 (not b_next!86475))))

(declare-fun tp!1015202 () Bool)

(declare-fun b_and!215473 () Bool)

(assert (=> b!3222653 (= tp!1015202 b_and!215473)))

(declare-fun bs!542627 () Bool)

(declare-fun b!3222657 () Bool)

(declare-fun b!3222619 () Bool)

(assert (= bs!542627 (and b!3222657 b!3222619)))

(declare-fun lambda!117899 () Int)

(declare-fun lambda!117898 () Int)

(assert (=> bs!542627 (not (= lambda!117899 lambda!117898))))

(declare-fun b!3222670 () Bool)

(declare-fun e!2009660 () Bool)

(assert (=> b!3222670 (= e!2009660 true)))

(declare-fun b!3222669 () Bool)

(declare-fun e!2009659 () Bool)

(assert (=> b!3222669 (= e!2009659 e!2009660)))

(declare-fun b!3222668 () Bool)

(declare-fun e!2009658 () Bool)

(assert (=> b!3222668 (= e!2009658 e!2009659)))

(assert (=> b!3222657 e!2009658))

(assert (= b!3222669 b!3222670))

(assert (= b!3222668 b!3222669))

(declare-datatypes ((C!20196 0))(
  ( (C!20197 (val!12146 Int)) )
))
(declare-datatypes ((Regex!10005 0))(
  ( (ElementMatch!10005 (c!541772 C!20196)) (Concat!15481 (regOne!20522 Regex!10005) (regTwo!20522 Regex!10005)) (EmptyExpr!10005) (Star!10005 (reg!10334 Regex!10005)) (EmptyLang!10005) (Union!10005 (regOne!20523 Regex!10005) (regTwo!20523 Regex!10005)) )
))
(declare-datatypes ((List!36394 0))(
  ( (Nil!36270) (Cons!36270 (h!41690 (_ BitVec 16)) (t!240603 List!36394)) )
))
(declare-datatypes ((TokenValue!5476 0))(
  ( (FloatLiteralValue!10952 (text!38777 List!36394)) (TokenValueExt!5475 (__x!23169 Int)) (Broken!27380 (value!169945 List!36394)) (Object!5599) (End!5476) (Def!5476) (Underscore!5476) (Match!5476) (Else!5476) (Error!5476) (Case!5476) (If!5476) (Extends!5476) (Abstract!5476) (Class!5476) (Val!5476) (DelimiterValue!10952 (del!5536 List!36394)) (KeywordValue!5482 (value!169946 List!36394)) (CommentValue!10952 (value!169947 List!36394)) (WhitespaceValue!10952 (value!169948 List!36394)) (IndentationValue!5476 (value!169949 List!36394)) (String!40713) (Int32!5476) (Broken!27381 (value!169950 List!36394)) (Boolean!5477) (Unit!50857) (OperatorValue!5479 (op!5536 List!36394)) (IdentifierValue!10952 (value!169951 List!36394)) (IdentifierValue!10953 (value!169952 List!36394)) (WhitespaceValue!10953 (value!169953 List!36394)) (True!10952) (False!10952) (Broken!27382 (value!169954 List!36394)) (Broken!27383 (value!169955 List!36394)) (True!10953) (RightBrace!5476) (RightBracket!5476) (Colon!5476) (Null!5476) (Comma!5476) (LeftBracket!5476) (False!10953) (LeftBrace!5476) (ImaginaryLiteralValue!5476 (text!38778 List!36394)) (StringLiteralValue!16428 (value!169956 List!36394)) (EOFValue!5476 (value!169957 List!36394)) (IdentValue!5476 (value!169958 List!36394)) (DelimiterValue!10953 (value!169959 List!36394)) (DedentValue!5476 (value!169960 List!36394)) (NewLineValue!5476 (value!169961 List!36394)) (IntegerValue!16428 (value!169962 (_ BitVec 32)) (text!38779 List!36394)) (IntegerValue!16429 (value!169963 Int) (text!38780 List!36394)) (Times!5476) (Or!5476) (Equal!5476) (Minus!5476) (Broken!27384 (value!169964 List!36394)) (And!5476) (Div!5476) (LessEqual!5476) (Mod!5476) (Concat!15482) (Not!5476) (Plus!5476) (SpaceValue!5476 (value!169965 List!36394)) (IntegerValue!16430 (value!169966 Int) (text!38781 List!36394)) (StringLiteralValue!16429 (text!38782 List!36394)) (FloatLiteralValue!10953 (text!38783 List!36394)) (BytesLiteralValue!5476 (value!169967 List!36394)) (CommentValue!10953 (value!169968 List!36394)) (StringLiteralValue!16430 (value!169969 List!36394)) (ErrorTokenValue!5476 (msg!5537 List!36394)) )
))
(declare-datatypes ((List!36395 0))(
  ( (Nil!36271) (Cons!36271 (h!41691 C!20196) (t!240604 List!36395)) )
))
(declare-datatypes ((IArray!21739 0))(
  ( (IArray!21740 (innerList!10927 List!36395)) )
))
(declare-datatypes ((Conc!10867 0))(
  ( (Node!10867 (left!28232 Conc!10867) (right!28562 Conc!10867) (csize!21964 Int) (cheight!11078 Int)) (Leaf!17101 (xs!13985 IArray!21739) (csize!21965 Int)) (Empty!10867) )
))
(declare-datatypes ((BalanceConc!21348 0))(
  ( (BalanceConc!21349 (c!541773 Conc!10867)) )
))
(declare-datatypes ((String!40714 0))(
  ( (String!40715 (value!169970 String)) )
))
(declare-datatypes ((TokenValueInjection!10380 0))(
  ( (TokenValueInjection!10381 (toValue!7342 Int) (toChars!7201 Int)) )
))
(declare-datatypes ((Rule!10292 0))(
  ( (Rule!10293 (regex!5246 Regex!10005) (tag!5778 String!40714) (isSeparator!5246 Bool) (transformation!5246 TokenValueInjection!10380)) )
))
(declare-datatypes ((List!36396 0))(
  ( (Nil!36272) (Cons!36272 (h!41692 Rule!10292) (t!240605 List!36396)) )
))
(declare-fun rules!2135 () List!36396)

(get-info :version)

(assert (= (and b!3222657 ((_ is Cons!36272) rules!2135)) b!3222668))

(declare-fun order!18629 () Int)

(declare-fun order!18631 () Int)

(declare-fun dynLambda!14703 (Int Int) Int)

(declare-fun dynLambda!14704 (Int Int) Int)

(assert (=> b!3222670 (< (dynLambda!14703 order!18629 (toValue!7342 (transformation!5246 (h!41692 rules!2135)))) (dynLambda!14704 order!18631 lambda!117899))))

(declare-fun order!18633 () Int)

(declare-fun dynLambda!14705 (Int Int) Int)

(assert (=> b!3222670 (< (dynLambda!14705 order!18633 (toChars!7201 (transformation!5246 (h!41692 rules!2135)))) (dynLambda!14704 order!18631 lambda!117899))))

(assert (=> b!3222657 true))

(declare-fun b!3222616 () Bool)

(declare-datatypes ((Unit!50858 0))(
  ( (Unit!50859) )
))
(declare-fun e!2009630 () Unit!50858)

(declare-fun Unit!50860 () Unit!50858)

(assert (=> b!3222616 (= e!2009630 Unit!50860)))

(declare-fun b!3222617 () Bool)

(declare-fun res!1312305 () Bool)

(declare-fun e!2009633 () Bool)

(assert (=> b!3222617 (=> (not res!1312305) (not e!2009633))))

(declare-datatypes ((Token!9858 0))(
  ( (Token!9859 (value!169971 TokenValue!5476) (rule!7704 Rule!10292) (size!27349 Int) (originalCharacters!5960 List!36395)) )
))
(declare-datatypes ((List!36397 0))(
  ( (Nil!36273) (Cons!36273 (h!41693 Token!9858) (t!240606 List!36397)) )
))
(declare-fun tokens!494 () List!36397)

(assert (=> b!3222617 (= res!1312305 (and (not ((_ is Nil!36273) tokens!494)) (not ((_ is Nil!36273) (t!240606 tokens!494)))))))

(declare-fun e!2009644 () Bool)

(declare-fun separatorToken!241 () Token!9858)

(declare-fun tp!1015203 () Bool)

(declare-fun e!2009617 () Bool)

(declare-fun b!3222618 () Bool)

(declare-fun inv!49138 (String!40714) Bool)

(declare-fun inv!49141 (TokenValueInjection!10380) Bool)

(assert (=> b!3222618 (= e!2009644 (and tp!1015203 (inv!49138 (tag!5778 (rule!7704 separatorToken!241))) (inv!49141 (transformation!5246 (rule!7704 separatorToken!241))) e!2009617))))

(declare-fun res!1312308 () Bool)

(assert (=> b!3222619 (=> (not res!1312308) (not e!2009633))))

(declare-fun forall!7428 (List!36397 Int) Bool)

(assert (=> b!3222619 (= res!1312308 (forall!7428 tokens!494 lambda!117898))))

(declare-fun tp!1015204 () Bool)

(declare-fun b!3222620 () Bool)

(declare-fun e!2009650 () Bool)

(declare-fun inv!21 (TokenValue!5476) Bool)

(assert (=> b!3222620 (= e!2009650 (and (inv!21 (value!169971 separatorToken!241)) e!2009644 tp!1015204))))

(declare-fun b!3222621 () Bool)

(declare-fun res!1312310 () Bool)

(assert (=> b!3222621 (=> (not res!1312310) (not e!2009633))))

(declare-datatypes ((LexerInterface!4835 0))(
  ( (LexerInterfaceExt!4832 (__x!23170 Int)) (Lexer!4833) )
))
(declare-fun thiss!18206 () LexerInterface!4835)

(declare-fun rulesInvariant!4232 (LexerInterface!4835 List!36396) Bool)

(assert (=> b!3222621 (= res!1312310 (rulesInvariant!4232 thiss!18206 rules!2135))))

(declare-fun e!2009624 () Bool)

(assert (=> b!3222622 (= e!2009624 (and tp!1015199 tp!1015206))))

(declare-fun b!3222623 () Bool)

(declare-fun e!2009629 () Unit!50858)

(declare-fun Unit!50861 () Unit!50858)

(assert (=> b!3222623 (= e!2009629 Unit!50861)))

(declare-fun b!3222624 () Bool)

(declare-fun res!1312329 () Bool)

(assert (=> b!3222624 (=> (not res!1312329) (not e!2009633))))

(declare-fun sepAndNonSepRulesDisjointChars!1440 (List!36396 List!36396) Bool)

(assert (=> b!3222624 (= res!1312329 (sepAndNonSepRulesDisjointChars!1440 rules!2135 rules!2135))))

(declare-fun b!3222625 () Bool)

(declare-fun res!1312319 () Bool)

(declare-fun e!2009616 () Bool)

(assert (=> b!3222625 (=> (not res!1312319) (not e!2009616))))

(declare-datatypes ((IArray!21741 0))(
  ( (IArray!21742 (innerList!10928 List!36397)) )
))
(declare-datatypes ((Conc!10868 0))(
  ( (Node!10868 (left!28233 Conc!10868) (right!28563 Conc!10868) (csize!21966 Int) (cheight!11079 Int)) (Leaf!17102 (xs!13986 IArray!21741) (csize!21967 Int)) (Empty!10868) )
))
(declare-datatypes ((BalanceConc!21350 0))(
  ( (BalanceConc!21351 (c!541774 Conc!10868)) )
))
(declare-datatypes ((tuple2!35700 0))(
  ( (tuple2!35701 (_1!20984 BalanceConc!21350) (_2!20984 BalanceConc!21348)) )
))
(declare-fun lt!1092703 () tuple2!35700)

(declare-fun apply!8259 (BalanceConc!21350 Int) Token!9858)

(assert (=> b!3222625 (= res!1312319 (= (apply!8259 (_1!20984 lt!1092703) 0) separatorToken!241))))

(declare-fun b!3222626 () Bool)

(declare-fun e!2009623 () Bool)

(declare-fun e!2009634 () Bool)

(assert (=> b!3222626 (= e!2009623 e!2009634)))

(declare-fun res!1312324 () Bool)

(assert (=> b!3222626 (=> (not res!1312324) (not e!2009634))))

(declare-fun lt!1092701 () Rule!10292)

(declare-fun lt!1092699 () List!36395)

(declare-fun matchR!4639 (Regex!10005 List!36395) Bool)

(assert (=> b!3222626 (= res!1312324 (matchR!4639 (regex!5246 lt!1092701) lt!1092699))))

(declare-datatypes ((Option!7197 0))(
  ( (None!7196) (Some!7196 (v!35776 Rule!10292)) )
))
(declare-fun lt!1092714 () Option!7197)

(declare-fun get!11560 (Option!7197) Rule!10292)

(assert (=> b!3222626 (= lt!1092701 (get!11560 lt!1092714))))

(declare-fun b!3222627 () Bool)

(declare-fun e!2009646 () Bool)

(declare-fun lt!1092734 () Rule!10292)

(assert (=> b!3222627 (= e!2009646 (= (rule!7704 (h!41693 (t!240606 tokens!494))) lt!1092734))))

(declare-fun b!3222628 () Bool)

(declare-fun e!2009651 () Bool)

(declare-fun e!2009618 () Bool)

(assert (=> b!3222628 (= e!2009651 e!2009618)))

(declare-fun res!1312317 () Bool)

(assert (=> b!3222628 (=> res!1312317 e!2009618)))

(declare-fun lt!1092706 () BalanceConc!21348)

(declare-fun isEmpty!20365 (BalanceConc!21350) Bool)

(declare-fun lex!2165 (LexerInterface!4835 List!36396 BalanceConc!21348) tuple2!35700)

(assert (=> b!3222628 (= res!1312317 (isEmpty!20365 (_1!20984 (lex!2165 thiss!18206 rules!2135 lt!1092706))))))

(declare-fun seqFromList!3563 (List!36395) BalanceConc!21348)

(assert (=> b!3222628 (= lt!1092706 (seqFromList!3563 lt!1092699))))

(declare-fun b!3222629 () Bool)

(declare-fun tp!1015200 () Bool)

(declare-fun e!2009628 () Bool)

(assert (=> b!3222629 (= e!2009628 (and tp!1015200 (inv!49138 (tag!5778 (rule!7704 (h!41693 tokens!494)))) (inv!49141 (transformation!5246 (rule!7704 (h!41693 tokens!494)))) e!2009624))))

(declare-fun b!3222630 () Bool)

(declare-fun res!1312321 () Bool)

(assert (=> b!3222630 (=> res!1312321 e!2009651)))

(declare-fun rulesProduceIndividualToken!2327 (LexerInterface!4835 List!36396 Token!9858) Bool)

(assert (=> b!3222630 (= res!1312321 (not (rulesProduceIndividualToken!2327 thiss!18206 rules!2135 (h!41693 tokens!494))))))

(declare-fun b!3222631 () Bool)

(declare-fun e!2009637 () Bool)

(declare-fun e!2009639 () Bool)

(assert (=> b!3222631 (= e!2009637 e!2009639)))

(declare-fun res!1312318 () Bool)

(assert (=> b!3222631 (=> res!1312318 e!2009639)))

(declare-fun lt!1092727 () List!36395)

(declare-fun lt!1092747 () List!36395)

(assert (=> b!3222631 (= res!1312318 (not (= lt!1092727 lt!1092747)))))

(declare-fun lt!1092721 () List!36395)

(declare-fun lt!1092750 () List!36395)

(declare-fun ++!8720 (List!36395 List!36395) List!36395)

(assert (=> b!3222631 (= lt!1092747 (++!8720 (++!8720 lt!1092699 lt!1092721) lt!1092750))))

(declare-fun b!3222632 () Bool)

(assert (=> b!3222632 (= e!2009634 (= (rule!7704 (h!41693 tokens!494)) lt!1092701))))

(declare-fun b!3222633 () Bool)

(declare-fun e!2009638 () Bool)

(assert (=> b!3222633 (= e!2009638 true)))

(declare-fun lt!1092731 () List!36397)

(declare-fun filter!514 (List!36397 Int) List!36397)

(declare-datatypes ((tuple2!35702 0))(
  ( (tuple2!35703 (_1!20985 List!36397) (_2!20985 List!36395)) )
))
(declare-fun lexList!1319 (LexerInterface!4835 List!36396 List!36395) tuple2!35702)

(assert (=> b!3222633 (= lt!1092731 (filter!514 (_1!20985 (lexList!1319 thiss!18206 rules!2135 lt!1092750)) lambda!117898))))

(declare-fun b!3222634 () Bool)

(declare-fun e!2009643 () Bool)

(assert (=> b!3222634 (= e!2009643 false)))

(declare-fun b!3222635 () Bool)

(declare-fun res!1312326 () Bool)

(assert (=> b!3222635 (=> (not res!1312326) (not e!2009633))))

(assert (=> b!3222635 (= res!1312326 (rulesProduceIndividualToken!2327 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun res!1312330 () Bool)

(assert (=> start!302638 (=> (not res!1312330) (not e!2009633))))

(assert (=> start!302638 (= res!1312330 ((_ is Lexer!4833) thiss!18206))))

(assert (=> start!302638 e!2009633))

(assert (=> start!302638 true))

(declare-fun e!2009632 () Bool)

(assert (=> start!302638 e!2009632))

(declare-fun e!2009647 () Bool)

(assert (=> start!302638 e!2009647))

(declare-fun inv!49142 (Token!9858) Bool)

(assert (=> start!302638 (and (inv!49142 separatorToken!241) e!2009650)))

(declare-fun b!3222636 () Bool)

(declare-fun e!2009625 () Bool)

(assert (=> b!3222636 (= e!2009625 e!2009646)))

(declare-fun res!1312316 () Bool)

(assert (=> b!3222636 (=> (not res!1312316) (not e!2009646))))

(declare-fun lt!1092715 () List!36395)

(assert (=> b!3222636 (= res!1312316 (matchR!4639 (regex!5246 lt!1092734) lt!1092715))))

(declare-fun lt!1092736 () Option!7197)

(assert (=> b!3222636 (= lt!1092734 (get!11560 lt!1092736))))

(declare-fun b!3222637 () Bool)

(declare-fun e!2009642 () Bool)

(assert (=> b!3222637 (= e!2009642 e!2009651)))

(declare-fun res!1312313 () Bool)

(assert (=> b!3222637 (=> res!1312313 e!2009651)))

(declare-fun lt!1092743 () List!36395)

(declare-fun lt!1092730 () List!36395)

(assert (=> b!3222637 (= res!1312313 (or (not (= lt!1092743 lt!1092699)) (not (= lt!1092730 lt!1092699))))))

(declare-fun list!12916 (BalanceConc!21348) List!36395)

(declare-fun charsOf!3262 (Token!9858) BalanceConc!21348)

(assert (=> b!3222637 (= lt!1092699 (list!12916 (charsOf!3262 (h!41693 tokens!494))))))

(declare-fun b!3222638 () Bool)

(declare-fun e!2009649 () Bool)

(declare-fun lt!1092740 () Rule!10292)

(assert (=> b!3222638 (= e!2009649 (= (rule!7704 separatorToken!241) lt!1092740))))

(declare-fun b!3222639 () Bool)

(declare-fun res!1312323 () Bool)

(declare-fun e!2009621 () Bool)

(assert (=> b!3222639 (=> res!1312323 e!2009621)))

(declare-fun lt!1092720 () tuple2!35700)

(assert (=> b!3222639 (= res!1312323 (not (= (apply!8259 (_1!20984 lt!1092720) 0) (h!41693 (t!240606 tokens!494)))))))

(declare-fun b!3222640 () Bool)

(declare-fun e!2009640 () Bool)

(assert (=> b!3222640 (= e!2009640 e!2009637)))

(declare-fun res!1312327 () Bool)

(assert (=> b!3222640 (=> res!1312327 e!2009637)))

(declare-fun printWithSeparatorTokenList!180 (LexerInterface!4835 List!36397 Token!9858) List!36395)

(assert (=> b!3222640 (= res!1312327 (not (= lt!1092750 (++!8720 (++!8720 lt!1092715 lt!1092721) (printWithSeparatorTokenList!180 thiss!18206 (t!240606 (t!240606 tokens!494)) separatorToken!241)))))))

(assert (=> b!3222640 (= lt!1092715 (list!12916 (charsOf!3262 (h!41693 (t!240606 tokens!494)))))))

(declare-fun lt!1092742 () List!36395)

(assert (=> b!3222640 (= lt!1092742 (++!8720 lt!1092721 lt!1092750))))

(assert (=> b!3222640 (= lt!1092721 (list!12916 (charsOf!3262 separatorToken!241)))))

(assert (=> b!3222640 (= lt!1092750 (printWithSeparatorTokenList!180 thiss!18206 (t!240606 tokens!494) separatorToken!241))))

(assert (=> b!3222640 (= lt!1092727 (printWithSeparatorTokenList!180 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3222641 () Bool)

(declare-fun isEmpty!20366 (BalanceConc!21348) Bool)

(assert (=> b!3222641 (= e!2009621 (not (isEmpty!20366 (_2!20984 lt!1092720))))))

(declare-fun b!3222642 () Bool)

(declare-fun res!1312307 () Bool)

(assert (=> b!3222642 (=> (not res!1312307) (not e!2009633))))

(declare-fun rulesProduceEachTokenIndividually!1286 (LexerInterface!4835 List!36396 BalanceConc!21350) Bool)

(declare-fun seqFromList!3564 (List!36397) BalanceConc!21350)

(assert (=> b!3222642 (= res!1312307 (rulesProduceEachTokenIndividually!1286 thiss!18206 rules!2135 (seqFromList!3564 tokens!494)))))

(declare-fun b!3222643 () Bool)

(declare-fun e!2009626 () Bool)

(assert (=> b!3222643 (= e!2009626 e!2009649)))

(declare-fun res!1312303 () Bool)

(assert (=> b!3222643 (=> (not res!1312303) (not e!2009649))))

(assert (=> b!3222643 (= res!1312303 (matchR!4639 (regex!5246 lt!1092740) lt!1092721))))

(declare-fun lt!1092729 () Option!7197)

(assert (=> b!3222643 (= lt!1092740 (get!11560 lt!1092729))))

(declare-fun tp!1015198 () Bool)

(declare-fun e!2009627 () Bool)

(declare-fun b!3222644 () Bool)

(assert (=> b!3222644 (= e!2009647 (and (inv!49142 (h!41693 tokens!494)) e!2009627 tp!1015198))))

(declare-fun b!3222645 () Bool)

(assert (=> b!3222645 (= e!2009633 (not e!2009642))))

(declare-fun res!1312304 () Bool)

(assert (=> b!3222645 (=> res!1312304 e!2009642)))

(assert (=> b!3222645 (= res!1312304 (not (= lt!1092730 lt!1092743)))))

(declare-fun printList!1385 (LexerInterface!4835 List!36397) List!36395)

(assert (=> b!3222645 (= lt!1092743 (printList!1385 thiss!18206 (Cons!36273 (h!41693 tokens!494) Nil!36273)))))

(declare-fun lt!1092722 () BalanceConc!21348)

(assert (=> b!3222645 (= lt!1092730 (list!12916 lt!1092722))))

(declare-fun lt!1092738 () BalanceConc!21350)

(declare-fun printTailRec!1332 (LexerInterface!4835 BalanceConc!21350 Int BalanceConc!21348) BalanceConc!21348)

(assert (=> b!3222645 (= lt!1092722 (printTailRec!1332 thiss!18206 lt!1092738 0 (BalanceConc!21349 Empty!10867)))))

(declare-fun print!1900 (LexerInterface!4835 BalanceConc!21350) BalanceConc!21348)

(assert (=> b!3222645 (= lt!1092722 (print!1900 thiss!18206 lt!1092738))))

(declare-fun singletonSeq!2342 (Token!9858) BalanceConc!21350)

(assert (=> b!3222645 (= lt!1092738 (singletonSeq!2342 (h!41693 tokens!494)))))

(declare-fun b!3222646 () Bool)

(declare-fun e!2009648 () Bool)

(assert (=> b!3222646 (= e!2009639 e!2009648)))

(declare-fun res!1312331 () Bool)

(assert (=> b!3222646 (=> res!1312331 e!2009648)))

(declare-fun lt!1092732 () List!36395)

(assert (=> b!3222646 (= res!1312331 (not (= lt!1092727 lt!1092732)))))

(assert (=> b!3222646 (= lt!1092747 lt!1092732)))

(assert (=> b!3222646 (= lt!1092732 (++!8720 lt!1092699 lt!1092742))))

(declare-fun lt!1092709 () Unit!50858)

(declare-fun lemmaConcatAssociativity!1774 (List!36395 List!36395 List!36395) Unit!50858)

(assert (=> b!3222646 (= lt!1092709 (lemmaConcatAssociativity!1774 lt!1092699 lt!1092721 lt!1092750))))

(declare-fun b!3222647 () Bool)

(declare-fun res!1312320 () Bool)

(assert (=> b!3222647 (=> (not res!1312320) (not e!2009633))))

(declare-fun isEmpty!20367 (List!36396) Bool)

(assert (=> b!3222647 (= res!1312320 (not (isEmpty!20367 rules!2135)))))

(declare-fun b!3222648 () Bool)

(declare-fun Unit!50862 () Unit!50858)

(assert (=> b!3222648 (= e!2009629 Unit!50862)))

(declare-fun lt!1092741 () C!20196)

(declare-fun lt!1092713 () Unit!50858)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!410 (Regex!10005 List!36395 C!20196) Unit!50858)

(assert (=> b!3222648 (= lt!1092713 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!410 (regex!5246 (rule!7704 separatorToken!241)) lt!1092721 lt!1092741))))

(declare-fun res!1312312 () Bool)

(assert (=> b!3222648 (= res!1312312 (not (matchR!4639 (regex!5246 (rule!7704 separatorToken!241)) lt!1092721)))))

(declare-fun e!2009641 () Bool)

(assert (=> b!3222648 (=> (not res!1312312) (not e!2009641))))

(assert (=> b!3222648 e!2009641))

(declare-fun b!3222649 () Bool)

(assert (=> b!3222649 (= e!2009641 false)))

(declare-fun b!3222650 () Bool)

(assert (=> b!3222650 (= e!2009616 (isEmpty!20366 (_2!20984 lt!1092703)))))

(declare-fun b!3222651 () Bool)

(assert (=> b!3222651 (= e!2009618 e!2009640)))

(declare-fun res!1312311 () Bool)

(assert (=> b!3222651 (=> res!1312311 e!2009640)))

(assert (=> b!3222651 (= res!1312311 (or (isSeparator!5246 (rule!7704 (h!41693 tokens!494))) (isSeparator!5246 (rule!7704 (h!41693 (t!240606 tokens!494))))))))

(declare-fun lt!1092748 () Unit!50858)

(declare-fun forallContained!1217 (List!36397 Int Token!9858) Unit!50858)

(assert (=> b!3222651 (= lt!1092748 (forallContained!1217 tokens!494 lambda!117898 (h!41693 (t!240606 tokens!494))))))

(declare-fun lt!1092733 () Unit!50858)

(assert (=> b!3222651 (= lt!1092733 (forallContained!1217 tokens!494 lambda!117898 (h!41693 tokens!494)))))

(declare-fun b!3222652 () Bool)

(declare-fun Unit!50863 () Unit!50858)

(assert (=> b!3222652 (= e!2009630 Unit!50863)))

(declare-fun lt!1092723 () C!20196)

(declare-fun lt!1092712 () Unit!50858)

(assert (=> b!3222652 (= lt!1092712 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!410 (regex!5246 (rule!7704 (h!41693 (t!240606 tokens!494)))) lt!1092715 lt!1092723))))

(declare-fun res!1312309 () Bool)

(assert (=> b!3222652 (= res!1312309 (not (matchR!4639 (regex!5246 (rule!7704 (h!41693 (t!240606 tokens!494)))) lt!1092715)))))

(assert (=> b!3222652 (=> (not res!1312309) (not e!2009643))))

(assert (=> b!3222652 e!2009643))

(declare-fun e!2009620 () Bool)

(assert (=> b!3222653 (= e!2009620 (and tp!1015196 tp!1015202))))

(declare-fun tp!1015205 () Bool)

(declare-fun b!3222654 () Bool)

(assert (=> b!3222654 (= e!2009627 (and (inv!21 (value!169971 (h!41693 tokens!494))) e!2009628 tp!1015205))))

(declare-fun b!3222655 () Bool)

(declare-fun e!2009622 () Bool)

(declare-fun tp!1015208 () Bool)

(assert (=> b!3222655 (= e!2009632 (and e!2009622 tp!1015208))))

(declare-fun tp!1015197 () Bool)

(declare-fun b!3222656 () Bool)

(assert (=> b!3222656 (= e!2009622 (and tp!1015197 (inv!49138 (tag!5778 (h!41692 rules!2135))) (inv!49141 (transformation!5246 (h!41692 rules!2135))) e!2009620))))

(assert (=> b!3222657 (= e!2009648 e!2009638)))

(declare-fun res!1312306 () Bool)

(assert (=> b!3222657 (=> res!1312306 e!2009638)))

(declare-fun lt!1092725 () List!36397)

(assert (=> b!3222657 (= res!1312306 (not (= (filter!514 lt!1092725 lambda!117898) (t!240606 tokens!494))))))

(assert (=> b!3222657 (= (filter!514 lt!1092725 lambda!117898) (t!240606 tokens!494))))

(declare-fun list!12917 (BalanceConc!21350) List!36397)

(declare-fun printWithSeparatorToken!64 (LexerInterface!4835 BalanceConc!21350 Token!9858) BalanceConc!21348)

(assert (=> b!3222657 (= lt!1092725 (list!12917 (_1!20984 (lex!2165 thiss!18206 rules!2135 (printWithSeparatorToken!64 thiss!18206 (seqFromList!3564 (t!240606 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1092726 () Unit!50858)

(declare-fun theoremInvertFromTokensSepTokenBetweenEach!6 (LexerInterface!4835 List!36396 List!36397 Token!9858) Unit!50858)

(assert (=> b!3222657 (= lt!1092726 (theoremInvertFromTokensSepTokenBetweenEach!6 thiss!18206 rules!2135 (t!240606 tokens!494) separatorToken!241))))

(declare-datatypes ((tuple2!35704 0))(
  ( (tuple2!35705 (_1!20986 Token!9858) (_2!20986 List!36395)) )
))
(declare-datatypes ((Option!7198 0))(
  ( (None!7197) (Some!7197 (v!35777 tuple2!35704)) )
))
(declare-fun maxPrefix!2477 (LexerInterface!4835 List!36396 List!36395) Option!7198)

(assert (=> b!3222657 (= (maxPrefix!2477 thiss!18206 rules!2135 lt!1092742) (Some!7197 (tuple2!35705 separatorToken!241 lt!1092750)))))

(declare-fun lt!1092716 () Unit!50858)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!170 (LexerInterface!4835 List!36396 Token!9858 Rule!10292 List!36395 Rule!10292) Unit!50858)

(assert (=> b!3222657 (= lt!1092716 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!170 thiss!18206 rules!2135 separatorToken!241 (rule!7704 separatorToken!241) lt!1092750 (rule!7704 (h!41693 (t!240606 tokens!494)))))))

(declare-fun lt!1092719 () List!36395)

(declare-fun contains!6505 (List!36395 C!20196) Bool)

(assert (=> b!3222657 (not (contains!6505 lt!1092719 lt!1092723))))

(declare-fun lt!1092704 () Unit!50858)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!154 (LexerInterface!4835 List!36396 List!36396 Rule!10292 Rule!10292 C!20196) Unit!50858)

(assert (=> b!3222657 (= lt!1092704 (lemmaSepRuleNotContainsCharContainedInANonSepRule!154 thiss!18206 rules!2135 rules!2135 (rule!7704 (h!41693 (t!240606 tokens!494))) (rule!7704 separatorToken!241) lt!1092723))))

(declare-fun lt!1092708 () Unit!50858)

(assert (=> b!3222657 (= lt!1092708 e!2009630)))

(declare-fun c!541771 () Bool)

(declare-fun usedCharacters!562 (Regex!10005) List!36395)

(assert (=> b!3222657 (= c!541771 (not (contains!6505 (usedCharacters!562 (regex!5246 (rule!7704 (h!41693 (t!240606 tokens!494))))) lt!1092723)))))

(declare-fun head!7071 (List!36395) C!20196)

(assert (=> b!3222657 (= lt!1092723 (head!7071 lt!1092715))))

(declare-fun maxPrefixOneRule!1614 (LexerInterface!4835 Rule!10292 List!36395) Option!7198)

(declare-fun apply!8260 (TokenValueInjection!10380 BalanceConc!21348) TokenValue!5476)

(declare-fun size!27350 (List!36395) Int)

(assert (=> b!3222657 (= (maxPrefixOneRule!1614 thiss!18206 (rule!7704 (h!41693 (t!240606 tokens!494))) lt!1092715) (Some!7197 (tuple2!35705 (Token!9859 (apply!8260 (transformation!5246 (rule!7704 (h!41693 (t!240606 tokens!494)))) (seqFromList!3563 lt!1092715)) (rule!7704 (h!41693 (t!240606 tokens!494))) (size!27350 lt!1092715) lt!1092715) Nil!36271)))))

(declare-fun lt!1092717 () Unit!50858)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!727 (LexerInterface!4835 List!36396 List!36395 List!36395 List!36395 Rule!10292) Unit!50858)

(assert (=> b!3222657 (= lt!1092717 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!727 thiss!18206 rules!2135 lt!1092715 lt!1092715 Nil!36271 (rule!7704 (h!41693 (t!240606 tokens!494)))))))

(assert (=> b!3222657 e!2009625))

(declare-fun res!1312314 () Bool)

(assert (=> b!3222657 (=> (not res!1312314) (not e!2009625))))

(declare-fun isDefined!5584 (Option!7197) Bool)

(assert (=> b!3222657 (= res!1312314 (isDefined!5584 lt!1092736))))

(declare-fun getRuleFromTag!951 (LexerInterface!4835 List!36396 String!40714) Option!7197)

(assert (=> b!3222657 (= lt!1092736 (getRuleFromTag!951 thiss!18206 rules!2135 (tag!5778 (rule!7704 (h!41693 (t!240606 tokens!494))))))))

(declare-fun lt!1092735 () Unit!50858)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!951 (LexerInterface!4835 List!36396 List!36395 Token!9858) Unit!50858)

(assert (=> b!3222657 (= lt!1092735 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!951 thiss!18206 rules!2135 lt!1092715 (h!41693 (t!240606 tokens!494))))))

(declare-fun lt!1092749 () Bool)

(assert (=> b!3222657 lt!1092749))

(declare-fun lt!1092745 () Unit!50858)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!874 (LexerInterface!4835 List!36396 List!36397 Token!9858) Unit!50858)

(assert (=> b!3222657 (= lt!1092745 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!874 thiss!18206 rules!2135 tokens!494 (h!41693 (t!240606 tokens!494))))))

(assert (=> b!3222657 (= (maxPrefix!2477 thiss!18206 rules!2135 lt!1092732) (Some!7197 (tuple2!35705 (h!41693 tokens!494) lt!1092742)))))

(declare-fun lt!1092702 () Unit!50858)

(assert (=> b!3222657 (= lt!1092702 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!170 thiss!18206 rules!2135 (h!41693 tokens!494) (rule!7704 (h!41693 tokens!494)) lt!1092742 (rule!7704 separatorToken!241)))))

(assert (=> b!3222657 (not (contains!6505 (usedCharacters!562 (regex!5246 (rule!7704 (h!41693 tokens!494)))) lt!1092741))))

(declare-fun lt!1092710 () Unit!50858)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!170 (LexerInterface!4835 List!36396 List!36396 Rule!10292 Rule!10292 C!20196) Unit!50858)

(assert (=> b!3222657 (= lt!1092710 (lemmaNonSepRuleNotContainsCharContainedInASepRule!170 thiss!18206 rules!2135 rules!2135 (rule!7704 (h!41693 tokens!494)) (rule!7704 separatorToken!241) lt!1092741))))

(declare-fun lt!1092728 () Unit!50858)

(assert (=> b!3222657 (= lt!1092728 (forallContained!1217 tokens!494 lambda!117899 (h!41693 (t!240606 tokens!494))))))

(declare-fun lt!1092724 () Bool)

(assert (=> b!3222657 (= lt!1092749 (not lt!1092724))))

(assert (=> b!3222657 (= lt!1092749 (rulesProduceIndividualToken!2327 thiss!18206 rules!2135 (h!41693 (t!240606 tokens!494))))))

(assert (=> b!3222657 (= lt!1092724 e!2009621)))

(declare-fun res!1312315 () Bool)

(assert (=> b!3222657 (=> res!1312315 e!2009621)))

(declare-fun size!27351 (BalanceConc!21350) Int)

(assert (=> b!3222657 (= res!1312315 (not (= (size!27351 (_1!20984 lt!1092720)) 1)))))

(declare-fun lt!1092718 () BalanceConc!21348)

(assert (=> b!3222657 (= lt!1092720 (lex!2165 thiss!18206 rules!2135 lt!1092718))))

(declare-fun lt!1092700 () BalanceConc!21350)

(assert (=> b!3222657 (= lt!1092718 (printTailRec!1332 thiss!18206 lt!1092700 0 (BalanceConc!21349 Empty!10867)))))

(assert (=> b!3222657 (= lt!1092718 (print!1900 thiss!18206 lt!1092700))))

(assert (=> b!3222657 (= lt!1092700 (singletonSeq!2342 (h!41693 (t!240606 tokens!494))))))

(assert (=> b!3222657 e!2009616))

(declare-fun res!1312322 () Bool)

(assert (=> b!3222657 (=> (not res!1312322) (not e!2009616))))

(assert (=> b!3222657 (= res!1312322 (= (size!27351 (_1!20984 lt!1092703)) 1))))

(declare-fun lt!1092711 () BalanceConc!21348)

(assert (=> b!3222657 (= lt!1092703 (lex!2165 thiss!18206 rules!2135 lt!1092711))))

(declare-fun lt!1092737 () BalanceConc!21350)

(assert (=> b!3222657 (= lt!1092711 (printTailRec!1332 thiss!18206 lt!1092737 0 (BalanceConc!21349 Empty!10867)))))

(assert (=> b!3222657 (= lt!1092711 (print!1900 thiss!18206 lt!1092737))))

(assert (=> b!3222657 (= lt!1092737 (singletonSeq!2342 separatorToken!241))))

(declare-fun lt!1092744 () Unit!50858)

(assert (=> b!3222657 (= lt!1092744 e!2009629)))

(declare-fun c!541770 () Bool)

(assert (=> b!3222657 (= c!541770 (not (contains!6505 lt!1092719 lt!1092741)))))

(assert (=> b!3222657 (= lt!1092741 (head!7071 lt!1092721))))

(assert (=> b!3222657 (= lt!1092719 (usedCharacters!562 (regex!5246 (rule!7704 separatorToken!241))))))

(assert (=> b!3222657 e!2009626))

(declare-fun res!1312332 () Bool)

(assert (=> b!3222657 (=> (not res!1312332) (not e!2009626))))

(assert (=> b!3222657 (= res!1312332 (isDefined!5584 lt!1092729))))

(assert (=> b!3222657 (= lt!1092729 (getRuleFromTag!951 thiss!18206 rules!2135 (tag!5778 (rule!7704 separatorToken!241))))))

(declare-fun lt!1092705 () Unit!50858)

(assert (=> b!3222657 (= lt!1092705 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!951 thiss!18206 rules!2135 lt!1092721 separatorToken!241))))

(assert (=> b!3222657 (= (maxPrefixOneRule!1614 thiss!18206 (rule!7704 (h!41693 tokens!494)) lt!1092699) (Some!7197 (tuple2!35705 (Token!9859 (apply!8260 (transformation!5246 (rule!7704 (h!41693 tokens!494))) lt!1092706) (rule!7704 (h!41693 tokens!494)) (size!27350 lt!1092699) lt!1092699) Nil!36271)))))

(declare-fun lt!1092746 () Unit!50858)

(assert (=> b!3222657 (= lt!1092746 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!727 thiss!18206 rules!2135 lt!1092699 lt!1092699 Nil!36271 (rule!7704 (h!41693 tokens!494))))))

(assert (=> b!3222657 e!2009623))

(declare-fun res!1312328 () Bool)

(assert (=> b!3222657 (=> (not res!1312328) (not e!2009623))))

(assert (=> b!3222657 (= res!1312328 (isDefined!5584 lt!1092714))))

(assert (=> b!3222657 (= lt!1092714 (getRuleFromTag!951 thiss!18206 rules!2135 (tag!5778 (rule!7704 (h!41693 tokens!494)))))))

(declare-fun lt!1092739 () Unit!50858)

(assert (=> b!3222657 (= lt!1092739 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!951 thiss!18206 rules!2135 lt!1092699 (h!41693 tokens!494)))))

(declare-fun lt!1092707 () Unit!50858)

(assert (=> b!3222657 (= lt!1092707 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!874 thiss!18206 rules!2135 tokens!494 (h!41693 tokens!494)))))

(assert (=> b!3222658 (= e!2009617 (and tp!1015207 tp!1015201))))

(declare-fun b!3222659 () Bool)

(declare-fun res!1312325 () Bool)

(assert (=> b!3222659 (=> (not res!1312325) (not e!2009633))))

(assert (=> b!3222659 (= res!1312325 (isSeparator!5246 (rule!7704 separatorToken!241)))))

(assert (= (and start!302638 res!1312330) b!3222647))

(assert (= (and b!3222647 res!1312320) b!3222621))

(assert (= (and b!3222621 res!1312310) b!3222642))

(assert (= (and b!3222642 res!1312307) b!3222635))

(assert (= (and b!3222635 res!1312326) b!3222659))

(assert (= (and b!3222659 res!1312325) b!3222619))

(assert (= (and b!3222619 res!1312308) b!3222624))

(assert (= (and b!3222624 res!1312329) b!3222617))

(assert (= (and b!3222617 res!1312305) b!3222645))

(assert (= (and b!3222645 (not res!1312304)) b!3222637))

(assert (= (and b!3222637 (not res!1312313)) b!3222630))

(assert (= (and b!3222630 (not res!1312321)) b!3222628))

(assert (= (and b!3222628 (not res!1312317)) b!3222651))

(assert (= (and b!3222651 (not res!1312311)) b!3222640))

(assert (= (and b!3222640 (not res!1312327)) b!3222631))

(assert (= (and b!3222631 (not res!1312318)) b!3222646))

(assert (= (and b!3222646 (not res!1312331)) b!3222657))

(assert (= (and b!3222657 res!1312328) b!3222626))

(assert (= (and b!3222626 res!1312324) b!3222632))

(assert (= (and b!3222657 res!1312332) b!3222643))

(assert (= (and b!3222643 res!1312303) b!3222638))

(assert (= (and b!3222657 c!541770) b!3222648))

(assert (= (and b!3222657 (not c!541770)) b!3222623))

(assert (= (and b!3222648 res!1312312) b!3222649))

(assert (= (and b!3222657 res!1312322) b!3222625))

(assert (= (and b!3222625 res!1312319) b!3222650))

(assert (= (and b!3222657 (not res!1312315)) b!3222639))

(assert (= (and b!3222639 (not res!1312323)) b!3222641))

(assert (= (and b!3222657 res!1312314) b!3222636))

(assert (= (and b!3222636 res!1312316) b!3222627))

(assert (= (and b!3222657 c!541771) b!3222652))

(assert (= (and b!3222657 (not c!541771)) b!3222616))

(assert (= (and b!3222652 res!1312309) b!3222634))

(assert (= (and b!3222657 (not res!1312306)) b!3222633))

(assert (= b!3222656 b!3222653))

(assert (= b!3222655 b!3222656))

(assert (= (and start!302638 ((_ is Cons!36272) rules!2135)) b!3222655))

(assert (= b!3222629 b!3222622))

(assert (= b!3222654 b!3222629))

(assert (= b!3222644 b!3222654))

(assert (= (and start!302638 ((_ is Cons!36273) tokens!494)) b!3222644))

(assert (= b!3222618 b!3222658))

(assert (= b!3222620 b!3222618))

(assert (= start!302638 b!3222620))

(declare-fun m!3500093 () Bool)

(assert (=> start!302638 m!3500093))

(declare-fun m!3500095 () Bool)

(assert (=> b!3222657 m!3500095))

(declare-fun m!3500097 () Bool)

(assert (=> b!3222657 m!3500097))

(declare-fun m!3500099 () Bool)

(assert (=> b!3222657 m!3500099))

(declare-fun m!3500101 () Bool)

(assert (=> b!3222657 m!3500101))

(declare-fun m!3500103 () Bool)

(assert (=> b!3222657 m!3500103))

(declare-fun m!3500105 () Bool)

(assert (=> b!3222657 m!3500105))

(declare-fun m!3500107 () Bool)

(assert (=> b!3222657 m!3500107))

(declare-fun m!3500109 () Bool)

(assert (=> b!3222657 m!3500109))

(declare-fun m!3500111 () Bool)

(assert (=> b!3222657 m!3500111))

(declare-fun m!3500113 () Bool)

(assert (=> b!3222657 m!3500113))

(declare-fun m!3500115 () Bool)

(assert (=> b!3222657 m!3500115))

(declare-fun m!3500117 () Bool)

(assert (=> b!3222657 m!3500117))

(declare-fun m!3500119 () Bool)

(assert (=> b!3222657 m!3500119))

(declare-fun m!3500121 () Bool)

(assert (=> b!3222657 m!3500121))

(declare-fun m!3500123 () Bool)

(assert (=> b!3222657 m!3500123))

(declare-fun m!3500125 () Bool)

(assert (=> b!3222657 m!3500125))

(declare-fun m!3500127 () Bool)

(assert (=> b!3222657 m!3500127))

(declare-fun m!3500129 () Bool)

(assert (=> b!3222657 m!3500129))

(declare-fun m!3500131 () Bool)

(assert (=> b!3222657 m!3500131))

(declare-fun m!3500133 () Bool)

(assert (=> b!3222657 m!3500133))

(declare-fun m!3500135 () Bool)

(assert (=> b!3222657 m!3500135))

(declare-fun m!3500137 () Bool)

(assert (=> b!3222657 m!3500137))

(declare-fun m!3500139 () Bool)

(assert (=> b!3222657 m!3500139))

(declare-fun m!3500141 () Bool)

(assert (=> b!3222657 m!3500141))

(declare-fun m!3500143 () Bool)

(assert (=> b!3222657 m!3500143))

(assert (=> b!3222657 m!3500139))

(declare-fun m!3500145 () Bool)

(assert (=> b!3222657 m!3500145))

(declare-fun m!3500147 () Bool)

(assert (=> b!3222657 m!3500147))

(declare-fun m!3500149 () Bool)

(assert (=> b!3222657 m!3500149))

(declare-fun m!3500151 () Bool)

(assert (=> b!3222657 m!3500151))

(assert (=> b!3222657 m!3500097))

(declare-fun m!3500153 () Bool)

(assert (=> b!3222657 m!3500153))

(declare-fun m!3500155 () Bool)

(assert (=> b!3222657 m!3500155))

(assert (=> b!3222657 m!3500115))

(assert (=> b!3222657 m!3500131))

(declare-fun m!3500157 () Bool)

(assert (=> b!3222657 m!3500157))

(declare-fun m!3500159 () Bool)

(assert (=> b!3222657 m!3500159))

(declare-fun m!3500161 () Bool)

(assert (=> b!3222657 m!3500161))

(declare-fun m!3500163 () Bool)

(assert (=> b!3222657 m!3500163))

(declare-fun m!3500165 () Bool)

(assert (=> b!3222657 m!3500165))

(declare-fun m!3500167 () Bool)

(assert (=> b!3222657 m!3500167))

(assert (=> b!3222657 m!3500153))

(declare-fun m!3500169 () Bool)

(assert (=> b!3222657 m!3500169))

(declare-fun m!3500171 () Bool)

(assert (=> b!3222657 m!3500171))

(declare-fun m!3500173 () Bool)

(assert (=> b!3222657 m!3500173))

(declare-fun m!3500175 () Bool)

(assert (=> b!3222657 m!3500175))

(declare-fun m!3500177 () Bool)

(assert (=> b!3222657 m!3500177))

(assert (=> b!3222657 m!3500111))

(declare-fun m!3500179 () Bool)

(assert (=> b!3222657 m!3500179))

(declare-fun m!3500181 () Bool)

(assert (=> b!3222657 m!3500181))

(declare-fun m!3500183 () Bool)

(assert (=> b!3222657 m!3500183))

(declare-fun m!3500185 () Bool)

(assert (=> b!3222657 m!3500185))

(declare-fun m!3500187 () Bool)

(assert (=> b!3222657 m!3500187))

(declare-fun m!3500189 () Bool)

(assert (=> b!3222657 m!3500189))

(declare-fun m!3500191 () Bool)

(assert (=> b!3222657 m!3500191))

(declare-fun m!3500193 () Bool)

(assert (=> b!3222657 m!3500193))

(declare-fun m!3500195 () Bool)

(assert (=> b!3222657 m!3500195))

(declare-fun m!3500197 () Bool)

(assert (=> b!3222657 m!3500197))

(declare-fun m!3500199 () Bool)

(assert (=> b!3222657 m!3500199))

(declare-fun m!3500201 () Bool)

(assert (=> b!3222647 m!3500201))

(declare-fun m!3500203 () Bool)

(assert (=> b!3222646 m!3500203))

(declare-fun m!3500205 () Bool)

(assert (=> b!3222646 m!3500205))

(declare-fun m!3500207 () Bool)

(assert (=> b!3222656 m!3500207))

(declare-fun m!3500209 () Bool)

(assert (=> b!3222656 m!3500209))

(declare-fun m!3500211 () Bool)

(assert (=> b!3222642 m!3500211))

(assert (=> b!3222642 m!3500211))

(declare-fun m!3500213 () Bool)

(assert (=> b!3222642 m!3500213))

(declare-fun m!3500215 () Bool)

(assert (=> b!3222624 m!3500215))

(declare-fun m!3500217 () Bool)

(assert (=> b!3222645 m!3500217))

(declare-fun m!3500219 () Bool)

(assert (=> b!3222645 m!3500219))

(declare-fun m!3500221 () Bool)

(assert (=> b!3222645 m!3500221))

(declare-fun m!3500223 () Bool)

(assert (=> b!3222645 m!3500223))

(declare-fun m!3500225 () Bool)

(assert (=> b!3222645 m!3500225))

(declare-fun m!3500227 () Bool)

(assert (=> b!3222619 m!3500227))

(declare-fun m!3500229 () Bool)

(assert (=> b!3222621 m!3500229))

(declare-fun m!3500231 () Bool)

(assert (=> b!3222639 m!3500231))

(declare-fun m!3500233 () Bool)

(assert (=> b!3222650 m!3500233))

(declare-fun m!3500235 () Bool)

(assert (=> b!3222640 m!3500235))

(declare-fun m!3500237 () Bool)

(assert (=> b!3222640 m!3500237))

(declare-fun m!3500239 () Bool)

(assert (=> b!3222640 m!3500239))

(declare-fun m!3500241 () Bool)

(assert (=> b!3222640 m!3500241))

(assert (=> b!3222640 m!3500237))

(declare-fun m!3500243 () Bool)

(assert (=> b!3222640 m!3500243))

(declare-fun m!3500245 () Bool)

(assert (=> b!3222640 m!3500245))

(declare-fun m!3500247 () Bool)

(assert (=> b!3222640 m!3500247))

(assert (=> b!3222640 m!3500239))

(declare-fun m!3500249 () Bool)

(assert (=> b!3222640 m!3500249))

(declare-fun m!3500251 () Bool)

(assert (=> b!3222640 m!3500251))

(assert (=> b!3222640 m!3500235))

(assert (=> b!3222640 m!3500247))

(declare-fun m!3500253 () Bool)

(assert (=> b!3222640 m!3500253))

(declare-fun m!3500255 () Bool)

(assert (=> b!3222635 m!3500255))

(declare-fun m!3500257 () Bool)

(assert (=> b!3222643 m!3500257))

(declare-fun m!3500259 () Bool)

(assert (=> b!3222643 m!3500259))

(declare-fun m!3500261 () Bool)

(assert (=> b!3222631 m!3500261))

(assert (=> b!3222631 m!3500261))

(declare-fun m!3500263 () Bool)

(assert (=> b!3222631 m!3500263))

(declare-fun m!3500265 () Bool)

(assert (=> b!3222625 m!3500265))

(declare-fun m!3500267 () Bool)

(assert (=> b!3222651 m!3500267))

(declare-fun m!3500269 () Bool)

(assert (=> b!3222651 m!3500269))

(declare-fun m!3500271 () Bool)

(assert (=> b!3222654 m!3500271))

(declare-fun m!3500273 () Bool)

(assert (=> b!3222644 m!3500273))

(declare-fun m!3500275 () Bool)

(assert (=> b!3222636 m!3500275))

(declare-fun m!3500277 () Bool)

(assert (=> b!3222636 m!3500277))

(declare-fun m!3500279 () Bool)

(assert (=> b!3222629 m!3500279))

(declare-fun m!3500281 () Bool)

(assert (=> b!3222629 m!3500281))

(declare-fun m!3500283 () Bool)

(assert (=> b!3222618 m!3500283))

(declare-fun m!3500285 () Bool)

(assert (=> b!3222618 m!3500285))

(declare-fun m!3500287 () Bool)

(assert (=> b!3222652 m!3500287))

(declare-fun m!3500289 () Bool)

(assert (=> b!3222652 m!3500289))

(declare-fun m!3500291 () Bool)

(assert (=> b!3222620 m!3500291))

(declare-fun m!3500293 () Bool)

(assert (=> b!3222626 m!3500293))

(declare-fun m!3500295 () Bool)

(assert (=> b!3222626 m!3500295))

(declare-fun m!3500297 () Bool)

(assert (=> b!3222637 m!3500297))

(assert (=> b!3222637 m!3500297))

(declare-fun m!3500299 () Bool)

(assert (=> b!3222637 m!3500299))

(declare-fun m!3500301 () Bool)

(assert (=> b!3222648 m!3500301))

(declare-fun m!3500303 () Bool)

(assert (=> b!3222648 m!3500303))

(declare-fun m!3500305 () Bool)

(assert (=> b!3222630 m!3500305))

(declare-fun m!3500307 () Bool)

(assert (=> b!3222628 m!3500307))

(declare-fun m!3500309 () Bool)

(assert (=> b!3222628 m!3500309))

(declare-fun m!3500311 () Bool)

(assert (=> b!3222628 m!3500311))

(declare-fun m!3500313 () Bool)

(assert (=> b!3222641 m!3500313))

(declare-fun m!3500315 () Bool)

(assert (=> b!3222633 m!3500315))

(declare-fun m!3500317 () Bool)

(assert (=> b!3222633 m!3500317))

(check-sat (not b!3222626) (not b_next!86465) (not b!3222625) (not b!3222624) (not b!3222636) b_and!215463 (not b!3222648) (not b!3222640) (not b!3222644) b_and!215465 (not b!3222637) (not b!3222645) (not b!3222651) (not b!3222650) (not b!3222657) (not b!3222654) (not b!3222639) (not b!3222633) (not b!3222656) (not b!3222643) (not b!3222620) (not b!3222652) (not b!3222641) (not b_next!86469) (not b_next!86471) (not b!3222629) b_and!215467 (not b!3222642) (not b!3222628) (not b!3222635) (not start!302638) (not b_next!86473) b_and!215469 b_and!215473 (not b!3222655) (not b!3222630) (not b!3222631) (not b!3222647) (not b!3222646) (not b!3222621) (not b_next!86467) (not b!3222619) (not b!3222668) (not b_next!86475) (not b!3222618) b_and!215471)
(check-sat b_and!215465 (not b_next!86465) b_and!215467 (not b_next!86473) b_and!215463 (not b_next!86467) (not b_next!86475) b_and!215471 (not b_next!86469) (not b_next!86471) b_and!215469 b_and!215473)
