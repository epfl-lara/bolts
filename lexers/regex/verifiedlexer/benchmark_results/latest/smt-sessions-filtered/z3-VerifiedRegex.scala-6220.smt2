; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!301278 () Bool)

(assert start!301278)

(declare-fun b!3208565 () Bool)

(declare-fun b_free!85353 () Bool)

(declare-fun b_next!86057 () Bool)

(assert (=> b!3208565 (= b_free!85353 (not b_next!86057))))

(declare-fun tp!1013088 () Bool)

(declare-fun b_and!213663 () Bool)

(assert (=> b!3208565 (= tp!1013088 b_and!213663)))

(declare-fun b_free!85355 () Bool)

(declare-fun b_next!86059 () Bool)

(assert (=> b!3208565 (= b_free!85355 (not b_next!86059))))

(declare-fun tp!1013094 () Bool)

(declare-fun b_and!213665 () Bool)

(assert (=> b!3208565 (= tp!1013094 b_and!213665)))

(declare-fun b!3208585 () Bool)

(declare-fun b_free!85357 () Bool)

(declare-fun b_next!86061 () Bool)

(assert (=> b!3208585 (= b_free!85357 (not b_next!86061))))

(declare-fun tp!1013089 () Bool)

(declare-fun b_and!213667 () Bool)

(assert (=> b!3208585 (= tp!1013089 b_and!213667)))

(declare-fun b_free!85359 () Bool)

(declare-fun b_next!86063 () Bool)

(assert (=> b!3208585 (= b_free!85359 (not b_next!86063))))

(declare-fun tp!1013091 () Bool)

(declare-fun b_and!213669 () Bool)

(assert (=> b!3208585 (= tp!1013091 b_and!213669)))

(declare-fun b!3208580 () Bool)

(declare-fun b_free!85361 () Bool)

(declare-fun b_next!86065 () Bool)

(assert (=> b!3208580 (= b_free!85361 (not b_next!86065))))

(declare-fun tp!1013090 () Bool)

(declare-fun b_and!213671 () Bool)

(assert (=> b!3208580 (= tp!1013090 b_and!213671)))

(declare-fun b_free!85363 () Bool)

(declare-fun b_next!86067 () Bool)

(assert (=> b!3208580 (= b_free!85363 (not b_next!86067))))

(declare-fun tp!1013087 () Bool)

(declare-fun b_and!213673 () Bool)

(assert (=> b!3208580 (= tp!1013087 b_and!213673)))

(declare-fun bs!541513 () Bool)

(declare-fun b!3208574 () Bool)

(declare-fun b!3208570 () Bool)

(assert (= bs!541513 (and b!3208574 b!3208570)))

(declare-fun lambda!117439 () Int)

(declare-fun lambda!117438 () Int)

(assert (=> bs!541513 (not (= lambda!117439 lambda!117438))))

(declare-fun b!3208612 () Bool)

(declare-fun e!2000672 () Bool)

(assert (=> b!3208612 (= e!2000672 true)))

(declare-fun b!3208611 () Bool)

(declare-fun e!2000671 () Bool)

(assert (=> b!3208611 (= e!2000671 e!2000672)))

(declare-fun b!3208610 () Bool)

(declare-fun e!2000670 () Bool)

(assert (=> b!3208610 (= e!2000670 e!2000671)))

(assert (=> b!3208574 e!2000670))

(assert (= b!3208611 b!3208612))

(assert (= b!3208610 b!3208611))

(declare-datatypes ((C!20144 0))(
  ( (C!20145 (val!12120 Int)) )
))
(declare-datatypes ((Regex!9979 0))(
  ( (ElementMatch!9979 (c!538902 C!20144)) (Concat!15429 (regOne!20470 Regex!9979) (regTwo!20470 Regex!9979)) (EmptyExpr!9979) (Star!9979 (reg!10308 Regex!9979)) (EmptyLang!9979) (Union!9979 (regOne!20471 Regex!9979) (regTwo!20471 Regex!9979)) )
))
(declare-datatypes ((List!36284 0))(
  ( (Nil!36160) (Cons!36160 (h!41580 (_ BitVec 16)) (t!238471 List!36284)) )
))
(declare-datatypes ((TokenValue!5450 0))(
  ( (FloatLiteralValue!10900 (text!38595 List!36284)) (TokenValueExt!5449 (__x!23117 Int)) (Broken!27250 (value!169204 List!36284)) (Object!5573) (End!5450) (Def!5450) (Underscore!5450) (Match!5450) (Else!5450) (Error!5450) (Case!5450) (If!5450) (Extends!5450) (Abstract!5450) (Class!5450) (Val!5450) (DelimiterValue!10900 (del!5510 List!36284)) (KeywordValue!5456 (value!169205 List!36284)) (CommentValue!10900 (value!169206 List!36284)) (WhitespaceValue!10900 (value!169207 List!36284)) (IndentationValue!5450 (value!169208 List!36284)) (String!40583) (Int32!5450) (Broken!27251 (value!169209 List!36284)) (Boolean!5451) (Unit!50621) (OperatorValue!5453 (op!5510 List!36284)) (IdentifierValue!10900 (value!169210 List!36284)) (IdentifierValue!10901 (value!169211 List!36284)) (WhitespaceValue!10901 (value!169212 List!36284)) (True!10900) (False!10900) (Broken!27252 (value!169213 List!36284)) (Broken!27253 (value!169214 List!36284)) (True!10901) (RightBrace!5450) (RightBracket!5450) (Colon!5450) (Null!5450) (Comma!5450) (LeftBracket!5450) (False!10901) (LeftBrace!5450) (ImaginaryLiteralValue!5450 (text!38596 List!36284)) (StringLiteralValue!16350 (value!169215 List!36284)) (EOFValue!5450 (value!169216 List!36284)) (IdentValue!5450 (value!169217 List!36284)) (DelimiterValue!10901 (value!169218 List!36284)) (DedentValue!5450 (value!169219 List!36284)) (NewLineValue!5450 (value!169220 List!36284)) (IntegerValue!16350 (value!169221 (_ BitVec 32)) (text!38597 List!36284)) (IntegerValue!16351 (value!169222 Int) (text!38598 List!36284)) (Times!5450) (Or!5450) (Equal!5450) (Minus!5450) (Broken!27254 (value!169223 List!36284)) (And!5450) (Div!5450) (LessEqual!5450) (Mod!5450) (Concat!15430) (Not!5450) (Plus!5450) (SpaceValue!5450 (value!169224 List!36284)) (IntegerValue!16352 (value!169225 Int) (text!38599 List!36284)) (StringLiteralValue!16351 (text!38600 List!36284)) (FloatLiteralValue!10901 (text!38601 List!36284)) (BytesLiteralValue!5450 (value!169226 List!36284)) (CommentValue!10901 (value!169227 List!36284)) (StringLiteralValue!16352 (value!169228 List!36284)) (ErrorTokenValue!5450 (msg!5511 List!36284)) )
))
(declare-datatypes ((List!36285 0))(
  ( (Nil!36161) (Cons!36161 (h!41581 C!20144) (t!238472 List!36285)) )
))
(declare-datatypes ((IArray!21635 0))(
  ( (IArray!21636 (innerList!10875 List!36285)) )
))
(declare-datatypes ((Conc!10815 0))(
  ( (Node!10815 (left!28115 Conc!10815) (right!28445 Conc!10815) (csize!21860 Int) (cheight!11026 Int)) (Leaf!17036 (xs!13933 IArray!21635) (csize!21861 Int)) (Empty!10815) )
))
(declare-datatypes ((BalanceConc!21244 0))(
  ( (BalanceConc!21245 (c!538903 Conc!10815)) )
))
(declare-datatypes ((String!40584 0))(
  ( (String!40585 (value!169229 String)) )
))
(declare-datatypes ((TokenValueInjection!10328 0))(
  ( (TokenValueInjection!10329 (toValue!7304 Int) (toChars!7163 Int)) )
))
(declare-datatypes ((Rule!10240 0))(
  ( (Rule!10241 (regex!5220 Regex!9979) (tag!5746 String!40584) (isSeparator!5220 Bool) (transformation!5220 TokenValueInjection!10328)) )
))
(declare-datatypes ((List!36286 0))(
  ( (Nil!36162) (Cons!36162 (h!41582 Rule!10240) (t!238473 List!36286)) )
))
(declare-fun rules!2135 () List!36286)

(get-info :version)

(assert (= (and b!3208574 ((_ is Cons!36162) rules!2135)) b!3208610))

(declare-fun order!18449 () Int)

(declare-fun order!18451 () Int)

(declare-fun dynLambda!14595 (Int Int) Int)

(declare-fun dynLambda!14596 (Int Int) Int)

(assert (=> b!3208612 (< (dynLambda!14595 order!18449 (toValue!7304 (transformation!5220 (h!41582 rules!2135)))) (dynLambda!14596 order!18451 lambda!117439))))

(declare-fun order!18453 () Int)

(declare-fun dynLambda!14597 (Int Int) Int)

(assert (=> b!3208612 (< (dynLambda!14597 order!18453 (toChars!7163 (transformation!5220 (h!41582 rules!2135)))) (dynLambda!14596 order!18451 lambda!117439))))

(assert (=> b!3208574 true))

(declare-fun b!3208564 () Bool)

(declare-fun res!1305920 () Bool)

(declare-fun e!2000656 () Bool)

(assert (=> b!3208564 (=> (not res!1305920) (not e!2000656))))

(declare-datatypes ((Token!9806 0))(
  ( (Token!9807 (value!169230 TokenValue!5450) (rule!7660 Rule!10240) (size!27247 Int) (originalCharacters!5934 List!36285)) )
))
(declare-fun separatorToken!241 () Token!9806)

(declare-datatypes ((LexerInterface!4809 0))(
  ( (LexerInterfaceExt!4806 (__x!23118 Int)) (Lexer!4807) )
))
(declare-fun thiss!18206 () LexerInterface!4809)

(declare-fun rulesProduceIndividualToken!2301 (LexerInterface!4809 List!36286 Token!9806) Bool)

(assert (=> b!3208564 (= res!1305920 (rulesProduceIndividualToken!2301 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2000648 () Bool)

(assert (=> b!3208565 (= e!2000648 (and tp!1013088 tp!1013094))))

(declare-fun b!3208566 () Bool)

(declare-fun e!2000634 () Bool)

(declare-fun e!2000652 () Bool)

(assert (=> b!3208566 (= e!2000634 e!2000652)))

(declare-fun res!1305935 () Bool)

(assert (=> b!3208566 (=> res!1305935 e!2000652)))

(declare-fun lt!1084147 () List!36285)

(declare-fun lt!1084140 () List!36285)

(declare-fun lt!1084146 () List!36285)

(assert (=> b!3208566 (= res!1305935 (or (not (= lt!1084140 lt!1084146)) (not (= lt!1084147 lt!1084146))))))

(declare-datatypes ((List!36287 0))(
  ( (Nil!36163) (Cons!36163 (h!41583 Token!9806) (t!238474 List!36287)) )
))
(declare-fun tokens!494 () List!36287)

(declare-fun list!12861 (BalanceConc!21244) List!36285)

(declare-fun charsOf!3236 (Token!9806) BalanceConc!21244)

(assert (=> b!3208566 (= lt!1084146 (list!12861 (charsOf!3236 (h!41583 tokens!494))))))

(declare-fun b!3208567 () Bool)

(declare-fun e!2000657 () Bool)

(declare-fun lt!1084136 () Rule!10240)

(assert (=> b!3208567 (= e!2000657 (= (rule!7660 (h!41583 tokens!494)) lt!1084136))))

(declare-fun b!3208568 () Bool)

(declare-fun e!2000650 () Bool)

(declare-fun e!2000655 () Bool)

(assert (=> b!3208568 (= e!2000650 e!2000655)))

(declare-fun res!1305929 () Bool)

(assert (=> b!3208568 (=> res!1305929 e!2000655)))

(declare-fun lt!1084130 () List!36285)

(declare-fun lt!1084148 () List!36285)

(assert (=> b!3208568 (= res!1305929 (not (= lt!1084130 lt!1084148)))))

(declare-fun lt!1084138 () List!36285)

(declare-fun lt!1084154 () List!36285)

(declare-fun ++!8676 (List!36285 List!36285) List!36285)

(assert (=> b!3208568 (= lt!1084148 (++!8676 (++!8676 lt!1084146 lt!1084154) lt!1084138))))

(declare-fun b!3208569 () Bool)

(declare-fun e!2000644 () Bool)

(assert (=> b!3208569 (= e!2000652 e!2000644)))

(declare-fun res!1305940 () Bool)

(assert (=> b!3208569 (=> res!1305940 e!2000644)))

(declare-fun lt!1084124 () BalanceConc!21244)

(declare-datatypes ((IArray!21637 0))(
  ( (IArray!21638 (innerList!10876 List!36287)) )
))
(declare-datatypes ((Conc!10816 0))(
  ( (Node!10816 (left!28116 Conc!10816) (right!28446 Conc!10816) (csize!21862 Int) (cheight!11027 Int)) (Leaf!17037 (xs!13934 IArray!21637) (csize!21863 Int)) (Empty!10816) )
))
(declare-datatypes ((BalanceConc!21246 0))(
  ( (BalanceConc!21247 (c!538904 Conc!10816)) )
))
(declare-fun isEmpty!20247 (BalanceConc!21246) Bool)

(declare-datatypes ((tuple2!35558 0))(
  ( (tuple2!35559 (_1!20913 BalanceConc!21246) (_2!20913 BalanceConc!21244)) )
))
(declare-fun lex!2139 (LexerInterface!4809 List!36286 BalanceConc!21244) tuple2!35558)

(assert (=> b!3208569 (= res!1305940 (isEmpty!20247 (_1!20913 (lex!2139 thiss!18206 rules!2135 lt!1084124))))))

(declare-fun seqFromList!3511 (List!36285) BalanceConc!21244)

(assert (=> b!3208569 (= lt!1084124 (seqFromList!3511 lt!1084146))))

(declare-fun res!1305926 () Bool)

(assert (=> b!3208570 (=> (not res!1305926) (not e!2000656))))

(declare-fun forall!7384 (List!36287 Int) Bool)

(assert (=> b!3208570 (= res!1305926 (forall!7384 tokens!494 lambda!117438))))

(declare-fun b!3208571 () Bool)

(declare-fun e!2000647 () Bool)

(assert (=> b!3208571 (= e!2000647 e!2000657)))

(declare-fun res!1305924 () Bool)

(assert (=> b!3208571 (=> (not res!1305924) (not e!2000657))))

(declare-fun matchR!4613 (Regex!9979 List!36285) Bool)

(assert (=> b!3208571 (= res!1305924 (matchR!4613 (regex!5220 lt!1084136) lt!1084146))))

(declare-datatypes ((Option!7139 0))(
  ( (None!7138) (Some!7138 (v!35688 Rule!10240)) )
))
(declare-fun lt!1084132 () Option!7139)

(declare-fun get!11513 (Option!7139) Rule!10240)

(assert (=> b!3208571 (= lt!1084136 (get!11513 lt!1084132))))

(declare-fun b!3208572 () Bool)

(declare-fun e!2000636 () Bool)

(declare-fun e!2000658 () Bool)

(declare-fun tp!1013093 () Bool)

(declare-fun inv!49018 (String!40584) Bool)

(declare-fun inv!49021 (TokenValueInjection!10328) Bool)

(assert (=> b!3208572 (= e!2000636 (and tp!1013093 (inv!49018 (tag!5746 (rule!7660 separatorToken!241))) (inv!49021 (transformation!5220 (rule!7660 separatorToken!241))) e!2000658))))

(declare-fun b!3208573 () Bool)

(declare-fun e!2000646 () Bool)

(declare-fun e!2000659 () Bool)

(assert (=> b!3208573 (= e!2000646 e!2000659)))

(declare-fun res!1305923 () Bool)

(assert (=> b!3208573 (=> (not res!1305923) (not e!2000659))))

(declare-fun lt!1084125 () Rule!10240)

(assert (=> b!3208573 (= res!1305923 (matchR!4613 (regex!5220 lt!1084125) lt!1084154))))

(declare-fun lt!1084122 () Option!7139)

(assert (=> b!3208573 (= lt!1084125 (get!11513 lt!1084122))))

(declare-fun e!2000643 () Bool)

(assert (=> b!3208574 (= e!2000643 true)))

(declare-datatypes ((tuple2!35560 0))(
  ( (tuple2!35561 (_1!20914 Token!9806) (_2!20914 List!36285)) )
))
(declare-datatypes ((Option!7140 0))(
  ( (None!7139) (Some!7139 (v!35689 tuple2!35560)) )
))
(declare-fun lt!1084153 () Option!7140)

(declare-fun lt!1084129 () List!36285)

(declare-fun maxPrefix!2451 (LexerInterface!4809 List!36286 List!36285) Option!7140)

(assert (=> b!3208574 (= lt!1084153 (maxPrefix!2451 thiss!18206 rules!2135 lt!1084129))))

(declare-fun lt!1084121 () Bool)

(assert (=> b!3208574 lt!1084121))

(declare-datatypes ((Unit!50622 0))(
  ( (Unit!50623) )
))
(declare-fun lt!1084157 () Unit!50622)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!848 (LexerInterface!4809 List!36286 List!36287 Token!9806) Unit!50622)

(assert (=> b!3208574 (= lt!1084157 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!848 thiss!18206 rules!2135 tokens!494 (h!41583 (t!238474 tokens!494))))))

(declare-fun lt!1084159 () List!36285)

(declare-fun lt!1084134 () List!36285)

(assert (=> b!3208574 (= (maxPrefix!2451 thiss!18206 rules!2135 lt!1084159) (Some!7139 (tuple2!35561 (h!41583 tokens!494) lt!1084134)))))

(declare-fun lt!1084149 () Unit!50622)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!144 (LexerInterface!4809 List!36286 Token!9806 Rule!10240 List!36285 Rule!10240) Unit!50622)

(assert (=> b!3208574 (= lt!1084149 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!144 thiss!18206 rules!2135 (h!41583 tokens!494) (rule!7660 (h!41583 tokens!494)) lt!1084134 (rule!7660 separatorToken!241)))))

(declare-fun lt!1084131 () C!20144)

(declare-fun contains!6455 (List!36285 C!20144) Bool)

(declare-fun usedCharacters!536 (Regex!9979) List!36285)

(assert (=> b!3208574 (not (contains!6455 (usedCharacters!536 (regex!5220 (rule!7660 (h!41583 tokens!494)))) lt!1084131))))

(declare-fun lt!1084126 () Unit!50622)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!144 (LexerInterface!4809 List!36286 List!36286 Rule!10240 Rule!10240 C!20144) Unit!50622)

(assert (=> b!3208574 (= lt!1084126 (lemmaNonSepRuleNotContainsCharContainedInASepRule!144 thiss!18206 rules!2135 rules!2135 (rule!7660 (h!41583 tokens!494)) (rule!7660 separatorToken!241) lt!1084131))))

(declare-fun lt!1084139 () Unit!50622)

(declare-fun forallContained!1191 (List!36287 Int Token!9806) Unit!50622)

(assert (=> b!3208574 (= lt!1084139 (forallContained!1191 tokens!494 lambda!117439 (h!41583 (t!238474 tokens!494))))))

(declare-fun lt!1084145 () Bool)

(assert (=> b!3208574 (= lt!1084121 (not lt!1084145))))

(assert (=> b!3208574 (= lt!1084121 (rulesProduceIndividualToken!2301 thiss!18206 rules!2135 (h!41583 (t!238474 tokens!494))))))

(declare-fun e!2000642 () Bool)

(assert (=> b!3208574 (= lt!1084145 e!2000642)))

(declare-fun res!1305931 () Bool)

(assert (=> b!3208574 (=> res!1305931 e!2000642)))

(declare-fun lt!1084142 () tuple2!35558)

(declare-fun size!27248 (BalanceConc!21246) Int)

(assert (=> b!3208574 (= res!1305931 (not (= (size!27248 (_1!20913 lt!1084142)) 1)))))

(declare-fun lt!1084127 () BalanceConc!21244)

(assert (=> b!3208574 (= lt!1084142 (lex!2139 thiss!18206 rules!2135 lt!1084127))))

(declare-fun lt!1084133 () BalanceConc!21246)

(declare-fun printTailRec!1306 (LexerInterface!4809 BalanceConc!21246 Int BalanceConc!21244) BalanceConc!21244)

(assert (=> b!3208574 (= lt!1084127 (printTailRec!1306 thiss!18206 lt!1084133 0 (BalanceConc!21245 Empty!10815)))))

(declare-fun print!1874 (LexerInterface!4809 BalanceConc!21246) BalanceConc!21244)

(assert (=> b!3208574 (= lt!1084127 (print!1874 thiss!18206 lt!1084133))))

(declare-fun singletonSeq!2316 (Token!9806) BalanceConc!21246)

(assert (=> b!3208574 (= lt!1084133 (singletonSeq!2316 (h!41583 (t!238474 tokens!494))))))

(declare-fun e!2000649 () Bool)

(assert (=> b!3208574 e!2000649))

(declare-fun res!1305937 () Bool)

(assert (=> b!3208574 (=> (not res!1305937) (not e!2000649))))

(declare-fun lt!1084151 () tuple2!35558)

(assert (=> b!3208574 (= res!1305937 (= (size!27248 (_1!20913 lt!1084151)) 1))))

(declare-fun lt!1084150 () BalanceConc!21244)

(assert (=> b!3208574 (= lt!1084151 (lex!2139 thiss!18206 rules!2135 lt!1084150))))

(declare-fun lt!1084135 () BalanceConc!21246)

(assert (=> b!3208574 (= lt!1084150 (printTailRec!1306 thiss!18206 lt!1084135 0 (BalanceConc!21245 Empty!10815)))))

(assert (=> b!3208574 (= lt!1084150 (print!1874 thiss!18206 lt!1084135))))

(assert (=> b!3208574 (= lt!1084135 (singletonSeq!2316 separatorToken!241))))

(declare-fun lt!1084158 () Unit!50622)

(declare-fun e!2000638 () Unit!50622)

(assert (=> b!3208574 (= lt!1084158 e!2000638)))

(declare-fun c!538901 () Bool)

(assert (=> b!3208574 (= c!538901 (not (contains!6455 (usedCharacters!536 (regex!5220 (rule!7660 separatorToken!241))) lt!1084131)))))

(declare-fun head!7039 (List!36285) C!20144)

(assert (=> b!3208574 (= lt!1084131 (head!7039 lt!1084154))))

(assert (=> b!3208574 e!2000646))

(declare-fun res!1305941 () Bool)

(assert (=> b!3208574 (=> (not res!1305941) (not e!2000646))))

(declare-fun isDefined!5550 (Option!7139) Bool)

(assert (=> b!3208574 (= res!1305941 (isDefined!5550 lt!1084122))))

(declare-fun getRuleFromTag!925 (LexerInterface!4809 List!36286 String!40584) Option!7139)

(assert (=> b!3208574 (= lt!1084122 (getRuleFromTag!925 thiss!18206 rules!2135 (tag!5746 (rule!7660 separatorToken!241))))))

(declare-fun lt!1084141 () Unit!50622)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!925 (LexerInterface!4809 List!36286 List!36285 Token!9806) Unit!50622)

(assert (=> b!3208574 (= lt!1084141 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!925 thiss!18206 rules!2135 lt!1084154 separatorToken!241))))

(declare-fun maxPrefixOneRule!1588 (LexerInterface!4809 Rule!10240 List!36285) Option!7140)

(declare-fun apply!8189 (TokenValueInjection!10328 BalanceConc!21244) TokenValue!5450)

(declare-fun size!27249 (List!36285) Int)

(assert (=> b!3208574 (= (maxPrefixOneRule!1588 thiss!18206 (rule!7660 (h!41583 tokens!494)) lt!1084146) (Some!7139 (tuple2!35561 (Token!9807 (apply!8189 (transformation!5220 (rule!7660 (h!41583 tokens!494))) lt!1084124) (rule!7660 (h!41583 tokens!494)) (size!27249 lt!1084146) lt!1084146) Nil!36161)))))

(declare-fun lt!1084152 () Unit!50622)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!701 (LexerInterface!4809 List!36286 List!36285 List!36285 List!36285 Rule!10240) Unit!50622)

(assert (=> b!3208574 (= lt!1084152 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!701 thiss!18206 rules!2135 lt!1084146 lt!1084146 Nil!36161 (rule!7660 (h!41583 tokens!494))))))

(assert (=> b!3208574 e!2000647))

(declare-fun res!1305928 () Bool)

(assert (=> b!3208574 (=> (not res!1305928) (not e!2000647))))

(assert (=> b!3208574 (= res!1305928 (isDefined!5550 lt!1084132))))

(assert (=> b!3208574 (= lt!1084132 (getRuleFromTag!925 thiss!18206 rules!2135 (tag!5746 (rule!7660 (h!41583 tokens!494)))))))

(declare-fun lt!1084137 () Unit!50622)

(assert (=> b!3208574 (= lt!1084137 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!925 thiss!18206 rules!2135 lt!1084146 (h!41583 tokens!494)))))

(declare-fun lt!1084143 () Unit!50622)

(assert (=> b!3208574 (= lt!1084143 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!848 thiss!18206 rules!2135 tokens!494 (h!41583 tokens!494)))))

(declare-fun b!3208575 () Bool)

(declare-fun res!1305930 () Bool)

(assert (=> b!3208575 (=> res!1305930 e!2000652)))

(assert (=> b!3208575 (= res!1305930 (not (rulesProduceIndividualToken!2301 thiss!18206 rules!2135 (h!41583 tokens!494))))))

(declare-fun b!3208576 () Bool)

(declare-fun e!2000640 () Bool)

(assert (=> b!3208576 (= e!2000640 false)))

(declare-fun b!3208577 () Bool)

(declare-fun e!2000660 () Bool)

(assert (=> b!3208577 (= e!2000660 e!2000650)))

(declare-fun res!1305927 () Bool)

(assert (=> b!3208577 (=> res!1305927 e!2000650)))

(declare-fun printWithSeparatorTokenList!154 (LexerInterface!4809 List!36287 Token!9806) List!36285)

(assert (=> b!3208577 (= res!1305927 (not (= lt!1084138 (++!8676 (++!8676 lt!1084129 lt!1084154) (printWithSeparatorTokenList!154 thiss!18206 (t!238474 (t!238474 tokens!494)) separatorToken!241)))))))

(assert (=> b!3208577 (= lt!1084129 (list!12861 (charsOf!3236 (h!41583 (t!238474 tokens!494)))))))

(assert (=> b!3208577 (= lt!1084134 (++!8676 lt!1084154 lt!1084138))))

(assert (=> b!3208577 (= lt!1084154 (list!12861 (charsOf!3236 separatorToken!241)))))

(assert (=> b!3208577 (= lt!1084138 (printWithSeparatorTokenList!154 thiss!18206 (t!238474 tokens!494) separatorToken!241))))

(assert (=> b!3208577 (= lt!1084130 (printWithSeparatorTokenList!154 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3208578 () Bool)

(declare-fun res!1305919 () Bool)

(assert (=> b!3208578 (=> (not res!1305919) (not e!2000656))))

(declare-fun rulesInvariant!4206 (LexerInterface!4809 List!36286) Bool)

(assert (=> b!3208578 (= res!1305919 (rulesInvariant!4206 thiss!18206 rules!2135))))

(declare-fun b!3208579 () Bool)

(declare-fun res!1305918 () Bool)

(assert (=> b!3208579 (=> (not res!1305918) (not e!2000656))))

(assert (=> b!3208579 (= res!1305918 (and (not ((_ is Nil!36163) tokens!494)) (not ((_ is Nil!36163) (t!238474 tokens!494)))))))

(assert (=> b!3208580 (= e!2000658 (and tp!1013090 tp!1013087))))

(declare-fun b!3208581 () Bool)

(declare-fun res!1305939 () Bool)

(assert (=> b!3208581 (=> res!1305939 e!2000642)))

(declare-fun apply!8190 (BalanceConc!21246 Int) Token!9806)

(assert (=> b!3208581 (= res!1305939 (not (= (apply!8190 (_1!20913 lt!1084142) 0) (h!41583 (t!238474 tokens!494)))))))

(declare-fun b!3208582 () Bool)

(declare-fun e!2000635 () Bool)

(declare-fun tp!1013092 () Bool)

(declare-fun e!2000654 () Bool)

(declare-fun inv!49022 (Token!9806) Bool)

(assert (=> b!3208582 (= e!2000654 (and (inv!49022 (h!41583 tokens!494)) e!2000635 tp!1013092))))

(declare-fun b!3208583 () Bool)

(declare-fun res!1305934 () Bool)

(assert (=> b!3208583 (=> (not res!1305934) (not e!2000656))))

(declare-fun sepAndNonSepRulesDisjointChars!1414 (List!36286 List!36286) Bool)

(assert (=> b!3208583 (= res!1305934 (sepAndNonSepRulesDisjointChars!1414 rules!2135 rules!2135))))

(declare-fun b!3208584 () Bool)

(declare-fun isEmpty!20248 (BalanceConc!21244) Bool)

(assert (=> b!3208584 (= e!2000642 (not (isEmpty!20248 (_2!20913 lt!1084142))))))

(declare-fun e!2000639 () Bool)

(assert (=> b!3208585 (= e!2000639 (and tp!1013089 tp!1013091))))

(declare-fun b!3208586 () Bool)

(declare-fun res!1305932 () Bool)

(assert (=> b!3208586 (=> (not res!1305932) (not e!2000656))))

(assert (=> b!3208586 (= res!1305932 (isSeparator!5220 (rule!7660 separatorToken!241)))))

(declare-fun b!3208587 () Bool)

(declare-fun Unit!50624 () Unit!50622)

(assert (=> b!3208587 (= e!2000638 Unit!50624)))

(declare-fun lt!1084156 () Unit!50622)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!384 (Regex!9979 List!36285 C!20144) Unit!50622)

(assert (=> b!3208587 (= lt!1084156 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!384 (regex!5220 (rule!7660 separatorToken!241)) lt!1084154 lt!1084131))))

(declare-fun res!1305936 () Bool)

(assert (=> b!3208587 (= res!1305936 (not (matchR!4613 (regex!5220 (rule!7660 separatorToken!241)) lt!1084154)))))

(assert (=> b!3208587 (=> (not res!1305936) (not e!2000640))))

(assert (=> b!3208587 e!2000640))

(declare-fun b!3208589 () Bool)

(declare-fun tp!1013084 () Bool)

(declare-fun e!2000662 () Bool)

(declare-fun inv!21 (TokenValue!5450) Bool)

(assert (=> b!3208589 (= e!2000635 (and (inv!21 (value!169230 (h!41583 tokens!494))) e!2000662 tp!1013084))))

(declare-fun b!3208588 () Bool)

(declare-fun res!1305922 () Bool)

(assert (=> b!3208588 (=> (not res!1305922) (not e!2000649))))

(assert (=> b!3208588 (= res!1305922 (= (apply!8190 (_1!20913 lt!1084151) 0) separatorToken!241))))

(declare-fun res!1305933 () Bool)

(assert (=> start!301278 (=> (not res!1305933) (not e!2000656))))

(assert (=> start!301278 (= res!1305933 ((_ is Lexer!4807) thiss!18206))))

(assert (=> start!301278 e!2000656))

(assert (=> start!301278 true))

(declare-fun e!2000653 () Bool)

(assert (=> start!301278 e!2000653))

(assert (=> start!301278 e!2000654))

(declare-fun e!2000663 () Bool)

(assert (=> start!301278 (and (inv!49022 separatorToken!241) e!2000663)))

(declare-fun b!3208590 () Bool)

(declare-fun e!2000651 () Bool)

(declare-fun tp!1013096 () Bool)

(assert (=> b!3208590 (= e!2000653 (and e!2000651 tp!1013096))))

(declare-fun b!3208591 () Bool)

(assert (=> b!3208591 (= e!2000644 e!2000660)))

(declare-fun res!1305925 () Bool)

(assert (=> b!3208591 (=> res!1305925 e!2000660)))

(assert (=> b!3208591 (= res!1305925 (or (isSeparator!5220 (rule!7660 (h!41583 tokens!494))) (isSeparator!5220 (rule!7660 (h!41583 (t!238474 tokens!494))))))))

(declare-fun lt!1084144 () Unit!50622)

(assert (=> b!3208591 (= lt!1084144 (forallContained!1191 tokens!494 lambda!117438 (h!41583 (t!238474 tokens!494))))))

(declare-fun lt!1084160 () Unit!50622)

(assert (=> b!3208591 (= lt!1084160 (forallContained!1191 tokens!494 lambda!117438 (h!41583 tokens!494)))))

(declare-fun tp!1013095 () Bool)

(declare-fun b!3208592 () Bool)

(assert (=> b!3208592 (= e!2000663 (and (inv!21 (value!169230 separatorToken!241)) e!2000636 tp!1013095))))

(declare-fun b!3208593 () Bool)

(assert (=> b!3208593 (= e!2000656 (not e!2000634))))

(declare-fun res!1305917 () Bool)

(assert (=> b!3208593 (=> res!1305917 e!2000634)))

(assert (=> b!3208593 (= res!1305917 (not (= lt!1084147 lt!1084140)))))

(declare-fun printList!1359 (LexerInterface!4809 List!36287) List!36285)

(assert (=> b!3208593 (= lt!1084140 (printList!1359 thiss!18206 (Cons!36163 (h!41583 tokens!494) Nil!36163)))))

(declare-fun lt!1084155 () BalanceConc!21244)

(assert (=> b!3208593 (= lt!1084147 (list!12861 lt!1084155))))

(declare-fun lt!1084128 () BalanceConc!21246)

(assert (=> b!3208593 (= lt!1084155 (printTailRec!1306 thiss!18206 lt!1084128 0 (BalanceConc!21245 Empty!10815)))))

(assert (=> b!3208593 (= lt!1084155 (print!1874 thiss!18206 lt!1084128))))

(assert (=> b!3208593 (= lt!1084128 (singletonSeq!2316 (h!41583 tokens!494)))))

(declare-fun b!3208594 () Bool)

(assert (=> b!3208594 (= e!2000655 e!2000643)))

(declare-fun res!1305942 () Bool)

(assert (=> b!3208594 (=> res!1305942 e!2000643)))

(assert (=> b!3208594 (= res!1305942 (not (= lt!1084130 lt!1084159)))))

(assert (=> b!3208594 (= lt!1084148 lt!1084159)))

(assert (=> b!3208594 (= lt!1084159 (++!8676 lt!1084146 lt!1084134))))

(declare-fun lt!1084123 () Unit!50622)

(declare-fun lemmaConcatAssociativity!1742 (List!36285 List!36285 List!36285) Unit!50622)

(assert (=> b!3208594 (= lt!1084123 (lemmaConcatAssociativity!1742 lt!1084146 lt!1084154 lt!1084138))))

(declare-fun b!3208595 () Bool)

(declare-fun res!1305921 () Bool)

(assert (=> b!3208595 (=> (not res!1305921) (not e!2000656))))

(declare-fun rulesProduceEachTokenIndividually!1260 (LexerInterface!4809 List!36286 BalanceConc!21246) Bool)

(declare-fun seqFromList!3512 (List!36287) BalanceConc!21246)

(assert (=> b!3208595 (= res!1305921 (rulesProduceEachTokenIndividually!1260 thiss!18206 rules!2135 (seqFromList!3512 tokens!494)))))

(declare-fun tp!1013086 () Bool)

(declare-fun b!3208596 () Bool)

(assert (=> b!3208596 (= e!2000662 (and tp!1013086 (inv!49018 (tag!5746 (rule!7660 (h!41583 tokens!494)))) (inv!49021 (transformation!5220 (rule!7660 (h!41583 tokens!494)))) e!2000639))))

(declare-fun b!3208597 () Bool)

(declare-fun res!1305938 () Bool)

(assert (=> b!3208597 (=> (not res!1305938) (not e!2000656))))

(declare-fun isEmpty!20249 (List!36286) Bool)

(assert (=> b!3208597 (= res!1305938 (not (isEmpty!20249 rules!2135)))))

(declare-fun b!3208598 () Bool)

(assert (=> b!3208598 (= e!2000649 (isEmpty!20248 (_2!20913 lt!1084151)))))

(declare-fun b!3208599 () Bool)

(assert (=> b!3208599 (= e!2000659 (= (rule!7660 separatorToken!241) lt!1084125))))

(declare-fun b!3208600 () Bool)

(declare-fun tp!1013085 () Bool)

(assert (=> b!3208600 (= e!2000651 (and tp!1013085 (inv!49018 (tag!5746 (h!41582 rules!2135))) (inv!49021 (transformation!5220 (h!41582 rules!2135))) e!2000648))))

(declare-fun b!3208601 () Bool)

(declare-fun Unit!50625 () Unit!50622)

(assert (=> b!3208601 (= e!2000638 Unit!50625)))

(assert (= (and start!301278 res!1305933) b!3208597))

(assert (= (and b!3208597 res!1305938) b!3208578))

(assert (= (and b!3208578 res!1305919) b!3208595))

(assert (= (and b!3208595 res!1305921) b!3208564))

(assert (= (and b!3208564 res!1305920) b!3208586))

(assert (= (and b!3208586 res!1305932) b!3208570))

(assert (= (and b!3208570 res!1305926) b!3208583))

(assert (= (and b!3208583 res!1305934) b!3208579))

(assert (= (and b!3208579 res!1305918) b!3208593))

(assert (= (and b!3208593 (not res!1305917)) b!3208566))

(assert (= (and b!3208566 (not res!1305935)) b!3208575))

(assert (= (and b!3208575 (not res!1305930)) b!3208569))

(assert (= (and b!3208569 (not res!1305940)) b!3208591))

(assert (= (and b!3208591 (not res!1305925)) b!3208577))

(assert (= (and b!3208577 (not res!1305927)) b!3208568))

(assert (= (and b!3208568 (not res!1305929)) b!3208594))

(assert (= (and b!3208594 (not res!1305942)) b!3208574))

(assert (= (and b!3208574 res!1305928) b!3208571))

(assert (= (and b!3208571 res!1305924) b!3208567))

(assert (= (and b!3208574 res!1305941) b!3208573))

(assert (= (and b!3208573 res!1305923) b!3208599))

(assert (= (and b!3208574 c!538901) b!3208587))

(assert (= (and b!3208574 (not c!538901)) b!3208601))

(assert (= (and b!3208587 res!1305936) b!3208576))

(assert (= (and b!3208574 res!1305937) b!3208588))

(assert (= (and b!3208588 res!1305922) b!3208598))

(assert (= (and b!3208574 (not res!1305931)) b!3208581))

(assert (= (and b!3208581 (not res!1305939)) b!3208584))

(assert (= b!3208600 b!3208565))

(assert (= b!3208590 b!3208600))

(assert (= (and start!301278 ((_ is Cons!36162) rules!2135)) b!3208590))

(assert (= b!3208596 b!3208585))

(assert (= b!3208589 b!3208596))

(assert (= b!3208582 b!3208589))

(assert (= (and start!301278 ((_ is Cons!36163) tokens!494)) b!3208582))

(assert (= b!3208572 b!3208580))

(assert (= b!3208592 b!3208572))

(assert (= start!301278 b!3208592))

(declare-fun m!3475901 () Bool)

(assert (=> start!301278 m!3475901))

(declare-fun m!3475903 () Bool)

(assert (=> b!3208574 m!3475903))

(declare-fun m!3475905 () Bool)

(assert (=> b!3208574 m!3475905))

(declare-fun m!3475907 () Bool)

(assert (=> b!3208574 m!3475907))

(declare-fun m!3475909 () Bool)

(assert (=> b!3208574 m!3475909))

(declare-fun m!3475911 () Bool)

(assert (=> b!3208574 m!3475911))

(declare-fun m!3475913 () Bool)

(assert (=> b!3208574 m!3475913))

(declare-fun m!3475915 () Bool)

(assert (=> b!3208574 m!3475915))

(declare-fun m!3475917 () Bool)

(assert (=> b!3208574 m!3475917))

(declare-fun m!3475919 () Bool)

(assert (=> b!3208574 m!3475919))

(declare-fun m!3475921 () Bool)

(assert (=> b!3208574 m!3475921))

(declare-fun m!3475923 () Bool)

(assert (=> b!3208574 m!3475923))

(declare-fun m!3475925 () Bool)

(assert (=> b!3208574 m!3475925))

(declare-fun m!3475927 () Bool)

(assert (=> b!3208574 m!3475927))

(declare-fun m!3475929 () Bool)

(assert (=> b!3208574 m!3475929))

(declare-fun m!3475931 () Bool)

(assert (=> b!3208574 m!3475931))

(declare-fun m!3475933 () Bool)

(assert (=> b!3208574 m!3475933))

(declare-fun m!3475935 () Bool)

(assert (=> b!3208574 m!3475935))

(declare-fun m!3475937 () Bool)

(assert (=> b!3208574 m!3475937))

(declare-fun m!3475939 () Bool)

(assert (=> b!3208574 m!3475939))

(declare-fun m!3475941 () Bool)

(assert (=> b!3208574 m!3475941))

(declare-fun m!3475943 () Bool)

(assert (=> b!3208574 m!3475943))

(declare-fun m!3475945 () Bool)

(assert (=> b!3208574 m!3475945))

(assert (=> b!3208574 m!3475905))

(declare-fun m!3475947 () Bool)

(assert (=> b!3208574 m!3475947))

(declare-fun m!3475949 () Bool)

(assert (=> b!3208574 m!3475949))

(declare-fun m!3475951 () Bool)

(assert (=> b!3208574 m!3475951))

(declare-fun m!3475953 () Bool)

(assert (=> b!3208574 m!3475953))

(declare-fun m!3475955 () Bool)

(assert (=> b!3208574 m!3475955))

(declare-fun m!3475957 () Bool)

(assert (=> b!3208574 m!3475957))

(assert (=> b!3208574 m!3475955))

(declare-fun m!3475959 () Bool)

(assert (=> b!3208574 m!3475959))

(declare-fun m!3475961 () Bool)

(assert (=> b!3208574 m!3475961))

(declare-fun m!3475963 () Bool)

(assert (=> b!3208574 m!3475963))

(declare-fun m!3475965 () Bool)

(assert (=> b!3208574 m!3475965))

(declare-fun m!3475967 () Bool)

(assert (=> b!3208574 m!3475967))

(declare-fun m!3475969 () Bool)

(assert (=> b!3208582 m!3475969))

(declare-fun m!3475971 () Bool)

(assert (=> b!3208564 m!3475971))

(declare-fun m!3475973 () Bool)

(assert (=> b!3208583 m!3475973))

(declare-fun m!3475975 () Bool)

(assert (=> b!3208578 m!3475975))

(declare-fun m!3475977 () Bool)

(assert (=> b!3208581 m!3475977))

(declare-fun m!3475979 () Bool)

(assert (=> b!3208596 m!3475979))

(declare-fun m!3475981 () Bool)

(assert (=> b!3208596 m!3475981))

(declare-fun m!3475983 () Bool)

(assert (=> b!3208591 m!3475983))

(declare-fun m!3475985 () Bool)

(assert (=> b!3208591 m!3475985))

(declare-fun m!3475987 () Bool)

(assert (=> b!3208595 m!3475987))

(assert (=> b!3208595 m!3475987))

(declare-fun m!3475989 () Bool)

(assert (=> b!3208595 m!3475989))

(declare-fun m!3475991 () Bool)

(assert (=> b!3208573 m!3475991))

(declare-fun m!3475993 () Bool)

(assert (=> b!3208573 m!3475993))

(declare-fun m!3475995 () Bool)

(assert (=> b!3208571 m!3475995))

(declare-fun m!3475997 () Bool)

(assert (=> b!3208571 m!3475997))

(declare-fun m!3475999 () Bool)

(assert (=> b!3208570 m!3475999))

(declare-fun m!3476001 () Bool)

(assert (=> b!3208568 m!3476001))

(assert (=> b!3208568 m!3476001))

(declare-fun m!3476003 () Bool)

(assert (=> b!3208568 m!3476003))

(declare-fun m!3476005 () Bool)

(assert (=> b!3208588 m!3476005))

(declare-fun m!3476007 () Bool)

(assert (=> b!3208569 m!3476007))

(declare-fun m!3476009 () Bool)

(assert (=> b!3208569 m!3476009))

(declare-fun m!3476011 () Bool)

(assert (=> b!3208569 m!3476011))

(declare-fun m!3476013 () Bool)

(assert (=> b!3208594 m!3476013))

(declare-fun m!3476015 () Bool)

(assert (=> b!3208594 m!3476015))

(declare-fun m!3476017 () Bool)

(assert (=> b!3208575 m!3476017))

(declare-fun m!3476019 () Bool)

(assert (=> b!3208584 m!3476019))

(declare-fun m!3476021 () Bool)

(assert (=> b!3208598 m!3476021))

(declare-fun m!3476023 () Bool)

(assert (=> b!3208597 m!3476023))

(declare-fun m!3476025 () Bool)

(assert (=> b!3208593 m!3476025))

(declare-fun m!3476027 () Bool)

(assert (=> b!3208593 m!3476027))

(declare-fun m!3476029 () Bool)

(assert (=> b!3208593 m!3476029))

(declare-fun m!3476031 () Bool)

(assert (=> b!3208593 m!3476031))

(declare-fun m!3476033 () Bool)

(assert (=> b!3208593 m!3476033))

(declare-fun m!3476035 () Bool)

(assert (=> b!3208566 m!3476035))

(assert (=> b!3208566 m!3476035))

(declare-fun m!3476037 () Bool)

(assert (=> b!3208566 m!3476037))

(declare-fun m!3476039 () Bool)

(assert (=> b!3208592 m!3476039))

(declare-fun m!3476041 () Bool)

(assert (=> b!3208600 m!3476041))

(declare-fun m!3476043 () Bool)

(assert (=> b!3208600 m!3476043))

(declare-fun m!3476045 () Bool)

(assert (=> b!3208587 m!3476045))

(declare-fun m!3476047 () Bool)

(assert (=> b!3208587 m!3476047))

(declare-fun m!3476049 () Bool)

(assert (=> b!3208577 m!3476049))

(declare-fun m!3476051 () Bool)

(assert (=> b!3208577 m!3476051))

(declare-fun m!3476053 () Bool)

(assert (=> b!3208577 m!3476053))

(declare-fun m!3476055 () Bool)

(assert (=> b!3208577 m!3476055))

(declare-fun m!3476057 () Bool)

(assert (=> b!3208577 m!3476057))

(assert (=> b!3208577 m!3476055))

(declare-fun m!3476059 () Bool)

(assert (=> b!3208577 m!3476059))

(declare-fun m!3476061 () Bool)

(assert (=> b!3208577 m!3476061))

(declare-fun m!3476063 () Bool)

(assert (=> b!3208577 m!3476063))

(declare-fun m!3476065 () Bool)

(assert (=> b!3208577 m!3476065))

(assert (=> b!3208577 m!3476061))

(assert (=> b!3208577 m!3476057))

(assert (=> b!3208577 m!3476049))

(declare-fun m!3476067 () Bool)

(assert (=> b!3208577 m!3476067))

(declare-fun m!3476069 () Bool)

(assert (=> b!3208589 m!3476069))

(declare-fun m!3476071 () Bool)

(assert (=> b!3208572 m!3476071))

(declare-fun m!3476073 () Bool)

(assert (=> b!3208572 m!3476073))

(check-sat b_and!213673 (not b!3208589) (not start!301278) (not b!3208598) (not b!3208592) (not b!3208596) (not b!3208568) (not b!3208575) (not b_next!86065) (not b!3208600) (not b!3208587) (not b!3208584) (not b!3208597) (not b!3208595) b_and!213663 (not b!3208574) (not b!3208588) (not b!3208577) (not b_next!86067) (not b!3208571) (not b!3208564) (not b!3208572) (not b!3208591) (not b_next!86059) (not b!3208582) (not b!3208573) (not b!3208594) b_and!213665 (not b!3208610) (not b!3208583) (not b!3208566) (not b!3208590) (not b!3208581) (not b!3208569) (not b_next!86061) b_and!213667 (not b_next!86063) (not b_next!86057) (not b!3208593) (not b!3208570) b_and!213671 (not b!3208578) b_and!213669)
(check-sat b_and!213673 (not b_next!86067) (not b_next!86059) b_and!213665 (not b_next!86065) b_and!213671 b_and!213669 b_and!213663 (not b_next!86061) b_and!213667 (not b_next!86063) (not b_next!86057))
