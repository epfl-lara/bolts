; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15094 () Bool)

(assert start!15094)

(declare-fun b!143677 () Bool)

(declare-fun b_free!4969 () Bool)

(declare-fun b_next!4969 () Bool)

(assert (=> b!143677 (= b_free!4969 (not b_next!4969))))

(declare-fun tp!75895 () Bool)

(declare-fun b_and!7609 () Bool)

(assert (=> b!143677 (= tp!75895 b_and!7609)))

(declare-fun b_free!4971 () Bool)

(declare-fun b_next!4971 () Bool)

(assert (=> b!143677 (= b_free!4971 (not b_next!4971))))

(declare-fun tp!75891 () Bool)

(declare-fun b_and!7611 () Bool)

(assert (=> b!143677 (= tp!75891 b_and!7611)))

(declare-fun b!143662 () Bool)

(declare-fun b_free!4973 () Bool)

(declare-fun b_next!4973 () Bool)

(assert (=> b!143662 (= b_free!4973 (not b_next!4973))))

(declare-fun tp!75896 () Bool)

(declare-fun b_and!7613 () Bool)

(assert (=> b!143662 (= tp!75896 b_and!7613)))

(declare-fun b_free!4975 () Bool)

(declare-fun b_next!4975 () Bool)

(assert (=> b!143662 (= b_free!4975 (not b_next!4975))))

(declare-fun tp!75890 () Bool)

(declare-fun b_and!7615 () Bool)

(assert (=> b!143662 (= tp!75890 b_and!7615)))

(declare-fun b!143674 () Bool)

(declare-fun b_free!4977 () Bool)

(declare-fun b_next!4977 () Bool)

(assert (=> b!143674 (= b_free!4977 (not b_next!4977))))

(declare-fun tp!75889 () Bool)

(declare-fun b_and!7617 () Bool)

(assert (=> b!143674 (= tp!75889 b_and!7617)))

(declare-fun b_free!4979 () Bool)

(declare-fun b_next!4979 () Bool)

(assert (=> b!143674 (= b_free!4979 (not b_next!4979))))

(declare-fun tp!75892 () Bool)

(declare-fun b_and!7619 () Bool)

(assert (=> b!143674 (= tp!75892 b_and!7619)))

(declare-fun e!85133 () Bool)

(assert (=> b!143662 (= e!85133 (and tp!75896 tp!75890))))

(declare-fun res!66421 () Bool)

(declare-fun e!85131 () Bool)

(assert (=> start!15094 (=> (not res!66421) (not e!85131))))

(declare-datatypes ((LexerInterface!311 0))(
  ( (LexerInterfaceExt!308 (__x!2381 Int)) (Lexer!309) )
))
(declare-fun thiss!17480 () LexerInterface!311)

(get-info :version)

(assert (=> start!15094 (= res!66421 ((_ is Lexer!309) thiss!17480))))

(assert (=> start!15094 e!85131))

(assert (=> start!15094 true))

(declare-fun e!85134 () Bool)

(assert (=> start!15094 e!85134))

(declare-datatypes ((List!2499 0))(
  ( (Nil!2489) (Cons!2489 (h!7886 (_ BitVec 16)) (t!23893 List!2499)) )
))
(declare-datatypes ((TokenValue!447 0))(
  ( (FloatLiteralValue!894 (text!3574 List!2499)) (TokenValueExt!446 (__x!2382 Int)) (Broken!2235 (value!16402 List!2499)) (Object!456) (End!447) (Def!447) (Underscore!447) (Match!447) (Else!447) (Error!447) (Case!447) (If!447) (Extends!447) (Abstract!447) (Class!447) (Val!447) (DelimiterValue!894 (del!507 List!2499)) (KeywordValue!453 (value!16403 List!2499)) (CommentValue!894 (value!16404 List!2499)) (WhitespaceValue!894 (value!16405 List!2499)) (IndentationValue!447 (value!16406 List!2499)) (String!3314) (Int32!447) (Broken!2236 (value!16407 List!2499)) (Boolean!448) (Unit!1835) (OperatorValue!450 (op!507 List!2499)) (IdentifierValue!894 (value!16408 List!2499)) (IdentifierValue!895 (value!16409 List!2499)) (WhitespaceValue!895 (value!16410 List!2499)) (True!894) (False!894) (Broken!2237 (value!16411 List!2499)) (Broken!2238 (value!16412 List!2499)) (True!895) (RightBrace!447) (RightBracket!447) (Colon!447) (Null!447) (Comma!447) (LeftBracket!447) (False!895) (LeftBrace!447) (ImaginaryLiteralValue!447 (text!3575 List!2499)) (StringLiteralValue!1341 (value!16413 List!2499)) (EOFValue!447 (value!16414 List!2499)) (IdentValue!447 (value!16415 List!2499)) (DelimiterValue!895 (value!16416 List!2499)) (DedentValue!447 (value!16417 List!2499)) (NewLineValue!447 (value!16418 List!2499)) (IntegerValue!1341 (value!16419 (_ BitVec 32)) (text!3576 List!2499)) (IntegerValue!1342 (value!16420 Int) (text!3577 List!2499)) (Times!447) (Or!447) (Equal!447) (Minus!447) (Broken!2239 (value!16421 List!2499)) (And!447) (Div!447) (LessEqual!447) (Mod!447) (Concat!1096) (Not!447) (Plus!447) (SpaceValue!447 (value!16422 List!2499)) (IntegerValue!1343 (value!16423 Int) (text!3578 List!2499)) (StringLiteralValue!1342 (text!3579 List!2499)) (FloatLiteralValue!895 (text!3580 List!2499)) (BytesLiteralValue!447 (value!16424 List!2499)) (CommentValue!895 (value!16425 List!2499)) (StringLiteralValue!1343 (value!16426 List!2499)) (ErrorTokenValue!447 (msg!508 List!2499)) )
))
(declare-datatypes ((C!2220 0))(
  ( (C!2221 (val!996 Int)) )
))
(declare-datatypes ((List!2500 0))(
  ( (Nil!2490) (Cons!2490 (h!7887 C!2220) (t!23894 List!2500)) )
))
(declare-datatypes ((IArray!1345 0))(
  ( (IArray!1346 (innerList!730 List!2500)) )
))
(declare-datatypes ((Conc!672 0))(
  ( (Node!672 (left!1879 Conc!672) (right!2209 Conc!672) (csize!1574 Int) (cheight!883 Int)) (Leaf!1224 (xs!3267 IArray!1345) (csize!1575 Int)) (Empty!672) )
))
(declare-datatypes ((BalanceConc!1352 0))(
  ( (BalanceConc!1353 (c!29527 Conc!672)) )
))
(declare-datatypes ((String!3315 0))(
  ( (String!3316 (value!16427 String)) )
))
(declare-datatypes ((TokenValueInjection!666 0))(
  ( (TokenValueInjection!667 (toValue!1044 Int) (toChars!903 Int)) )
))
(declare-datatypes ((Regex!649 0))(
  ( (ElementMatch!649 (c!29528 C!2220)) (Concat!1097 (regOne!1810 Regex!649) (regTwo!1810 Regex!649)) (EmptyExpr!649) (Star!649 (reg!978 Regex!649)) (EmptyLang!649) (Union!649 (regOne!1811 Regex!649) (regTwo!1811 Regex!649)) )
))
(declare-datatypes ((Rule!650 0))(
  ( (Rule!651 (regex!425 Regex!649) (tag!603 String!3315) (isSeparator!425 Bool) (transformation!425 TokenValueInjection!666)) )
))
(declare-datatypes ((Token!594 0))(
  ( (Token!595 (value!16428 TokenValue!447) (rule!932 Rule!650) (size!2148 Int) (originalCharacters!468 List!2500)) )
))
(declare-fun separatorToken!170 () Token!594)

(declare-fun e!85132 () Bool)

(declare-fun inv!3262 (Token!594) Bool)

(assert (=> start!15094 (and (inv!3262 separatorToken!170) e!85132)))

(declare-fun e!85135 () Bool)

(assert (=> start!15094 e!85135))

(declare-datatypes ((List!2501 0))(
  ( (Nil!2491) (Cons!2491 (h!7888 Token!594) (t!23895 List!2501)) )
))
(declare-fun tokens!465 () List!2501)

(declare-fun b!143663 () Bool)

(declare-fun e!85141 () Bool)

(declare-fun e!85136 () Bool)

(declare-fun tp!75885 () Bool)

(declare-fun inv!3259 (String!3315) Bool)

(declare-fun inv!3263 (TokenValueInjection!666) Bool)

(assert (=> b!143663 (= e!85136 (and tp!75885 (inv!3259 (tag!603 (rule!932 (h!7888 tokens!465)))) (inv!3263 (transformation!425 (rule!932 (h!7888 tokens!465)))) e!85141))))

(declare-fun b!143664 () Bool)

(declare-fun res!66419 () Bool)

(declare-fun e!85137 () Bool)

(assert (=> b!143664 (=> (not res!66419) (not e!85137))))

(assert (=> b!143664 (= res!66419 (isSeparator!425 (rule!932 separatorToken!170)))))

(declare-fun b!143665 () Bool)

(declare-fun tp!75894 () Bool)

(declare-fun e!85128 () Bool)

(declare-fun inv!21 (TokenValue!447) Bool)

(assert (=> b!143665 (= e!85128 (and (inv!21 (value!16428 (h!7888 tokens!465))) e!85136 tp!75894))))

(declare-fun b!143666 () Bool)

(declare-fun res!66423 () Bool)

(assert (=> b!143666 (=> (not res!66423) (not e!85131))))

(declare-datatypes ((List!2502 0))(
  ( (Nil!2492) (Cons!2492 (h!7889 Rule!650) (t!23896 List!2502)) )
))
(declare-fun rules!1920 () List!2502)

(declare-fun rulesInvariant!277 (LexerInterface!311 List!2502) Bool)

(assert (=> b!143666 (= res!66423 (rulesInvariant!277 thiss!17480 rules!1920))))

(declare-fun e!85143 () Bool)

(declare-fun tp!75886 () Bool)

(declare-fun b!143667 () Bool)

(assert (=> b!143667 (= e!85132 (and (inv!21 (value!16428 separatorToken!170)) e!85143 tp!75886))))

(declare-fun b!143668 () Bool)

(declare-fun e!85138 () Bool)

(declare-fun tp!75897 () Bool)

(assert (=> b!143668 (= e!85134 (and e!85138 tp!75897))))

(declare-fun b!143669 () Bool)

(declare-datatypes ((IArray!1347 0))(
  ( (IArray!1348 (innerList!731 List!2501)) )
))
(declare-datatypes ((Conc!673 0))(
  ( (Node!673 (left!1880 Conc!673) (right!2210 Conc!673) (csize!1576 Int) (cheight!884 Int)) (Leaf!1225 (xs!3268 IArray!1347) (csize!1577 Int)) (Empty!673) )
))
(declare-datatypes ((BalanceConc!1354 0))(
  ( (BalanceConc!1355 (c!29529 Conc!673)) )
))
(declare-fun lt!41357 () BalanceConc!1354)

(declare-fun size!2149 (BalanceConc!1354) Int)

(assert (=> b!143669 (= e!85137 (> 0 (size!2149 lt!41357)))))

(declare-fun lt!41358 () List!2500)

(declare-fun printWithSeparatorTokenWhenNeededList!4 (LexerInterface!311 List!2502 List!2501 Token!594) List!2500)

(assert (=> b!143669 (= lt!41358 (printWithSeparatorTokenWhenNeededList!4 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!143670 () Bool)

(declare-fun tp!75888 () Bool)

(assert (=> b!143670 (= e!85135 (and (inv!3262 (h!7888 tokens!465)) e!85128 tp!75888))))

(declare-fun b!143671 () Bool)

(declare-fun res!66422 () Bool)

(assert (=> b!143671 (=> (not res!66422) (not e!85137))))

(assert (=> b!143671 (= res!66422 ((_ is Cons!2491) tokens!465))))

(declare-fun b!143672 () Bool)

(declare-fun res!66418 () Bool)

(assert (=> b!143672 (=> (not res!66418) (not e!85137))))

(declare-fun rulesProduceIndividualToken!60 (LexerInterface!311 List!2502 Token!594) Bool)

(assert (=> b!143672 (= res!66418 (rulesProduceIndividualToken!60 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!85130 () Bool)

(declare-fun b!143673 () Bool)

(declare-fun tp!75893 () Bool)

(assert (=> b!143673 (= e!85138 (and tp!75893 (inv!3259 (tag!603 (h!7889 rules!1920))) (inv!3263 (transformation!425 (h!7889 rules!1920))) e!85130))))

(assert (=> b!143674 (= e!85141 (and tp!75889 tp!75892))))

(declare-fun b!143675 () Bool)

(declare-fun res!66424 () Bool)

(assert (=> b!143675 (=> (not res!66424) (not e!85137))))

(declare-fun lambda!3450 () Int)

(declare-fun forall!377 (List!2501 Int) Bool)

(assert (=> b!143675 (= res!66424 (forall!377 tokens!465 lambda!3450))))

(declare-fun b!143676 () Bool)

(declare-fun res!66417 () Bool)

(assert (=> b!143676 (=> (not res!66417) (not e!85137))))

(declare-fun sepAndNonSepRulesDisjointChars!14 (List!2502 List!2502) Bool)

(assert (=> b!143676 (= res!66417 (sepAndNonSepRulesDisjointChars!14 rules!1920 rules!1920))))

(assert (=> b!143677 (= e!85130 (and tp!75895 tp!75891))))

(declare-fun b!143678 () Bool)

(declare-fun res!66425 () Bool)

(assert (=> b!143678 (=> (not res!66425) (not e!85131))))

(declare-fun isEmpty!954 (List!2502) Bool)

(assert (=> b!143678 (= res!66425 (not (isEmpty!954 rules!1920)))))

(declare-fun b!143679 () Bool)

(assert (=> b!143679 (= e!85131 e!85137)))

(declare-fun res!66420 () Bool)

(assert (=> b!143679 (=> (not res!66420) (not e!85137))))

(declare-fun rulesProduceEachTokenIndividually!103 (LexerInterface!311 List!2502 BalanceConc!1354) Bool)

(assert (=> b!143679 (= res!66420 (rulesProduceEachTokenIndividually!103 thiss!17480 rules!1920 lt!41357))))

(declare-fun seqFromList!238 (List!2501) BalanceConc!1354)

(assert (=> b!143679 (= lt!41357 (seqFromList!238 tokens!465))))

(declare-fun tp!75887 () Bool)

(declare-fun b!143680 () Bool)

(assert (=> b!143680 (= e!85143 (and tp!75887 (inv!3259 (tag!603 (rule!932 separatorToken!170))) (inv!3263 (transformation!425 (rule!932 separatorToken!170))) e!85133))))

(assert (= (and start!15094 res!66421) b!143678))

(assert (= (and b!143678 res!66425) b!143666))

(assert (= (and b!143666 res!66423) b!143679))

(assert (= (and b!143679 res!66420) b!143672))

(assert (= (and b!143672 res!66418) b!143664))

(assert (= (and b!143664 res!66419) b!143675))

(assert (= (and b!143675 res!66424) b!143676))

(assert (= (and b!143676 res!66417) b!143671))

(assert (= (and b!143671 res!66422) b!143669))

(assert (= b!143673 b!143677))

(assert (= b!143668 b!143673))

(assert (= (and start!15094 ((_ is Cons!2492) rules!1920)) b!143668))

(assert (= b!143680 b!143662))

(assert (= b!143667 b!143680))

(assert (= start!15094 b!143667))

(assert (= b!143663 b!143674))

(assert (= b!143665 b!143663))

(assert (= b!143670 b!143665))

(assert (= (and start!15094 ((_ is Cons!2491) tokens!465)) b!143670))

(declare-fun m!126181 () Bool)

(assert (=> b!143680 m!126181))

(declare-fun m!126183 () Bool)

(assert (=> b!143680 m!126183))

(declare-fun m!126185 () Bool)

(assert (=> b!143679 m!126185))

(declare-fun m!126187 () Bool)

(assert (=> b!143679 m!126187))

(declare-fun m!126189 () Bool)

(assert (=> b!143676 m!126189))

(declare-fun m!126191 () Bool)

(assert (=> b!143672 m!126191))

(declare-fun m!126193 () Bool)

(assert (=> start!15094 m!126193))

(declare-fun m!126195 () Bool)

(assert (=> b!143667 m!126195))

(declare-fun m!126197 () Bool)

(assert (=> b!143666 m!126197))

(declare-fun m!126199 () Bool)

(assert (=> b!143670 m!126199))

(declare-fun m!126201 () Bool)

(assert (=> b!143663 m!126201))

(declare-fun m!126203 () Bool)

(assert (=> b!143663 m!126203))

(declare-fun m!126205 () Bool)

(assert (=> b!143678 m!126205))

(declare-fun m!126207 () Bool)

(assert (=> b!143665 m!126207))

(declare-fun m!126209 () Bool)

(assert (=> b!143675 m!126209))

(declare-fun m!126211 () Bool)

(assert (=> b!143673 m!126211))

(declare-fun m!126213 () Bool)

(assert (=> b!143673 m!126213))

(declare-fun m!126215 () Bool)

(assert (=> b!143669 m!126215))

(declare-fun m!126217 () Bool)

(assert (=> b!143669 m!126217))

(check-sat (not b!143665) (not start!15094) (not b!143668) (not b!143670) b_and!7613 (not b!143667) (not b!143676) (not b_next!4977) (not b!143673) (not b_next!4969) b_and!7617 (not b!143672) b_and!7615 (not b!143666) (not b_next!4973) (not b!143678) (not b_next!4979) (not b_next!4971) (not b!143675) b_and!7611 (not b!143680) b_and!7619 (not b!143679) (not b!143663) (not b!143669) (not b_next!4975) b_and!7609)
(check-sat b_and!7611 b_and!7613 b_and!7619 (not b_next!4977) (not b_next!4969) b_and!7617 b_and!7615 (not b_next!4973) (not b_next!4979) (not b_next!4971) (not b_next!4975) b_and!7609)
(get-model)

(declare-fun d!34108 () Bool)

(declare-fun c!29535 () Bool)

(assert (=> d!34108 (= c!29535 ((_ is IntegerValue!1341) (value!16428 separatorToken!170)))))

(declare-fun e!85162 () Bool)

(assert (=> d!34108 (= (inv!21 (value!16428 separatorToken!170)) e!85162)))

(declare-fun b!143707 () Bool)

(declare-fun e!85161 () Bool)

(declare-fun inv!15 (TokenValue!447) Bool)

(assert (=> b!143707 (= e!85161 (inv!15 (value!16428 separatorToken!170)))))

(declare-fun b!143708 () Bool)

(declare-fun e!85163 () Bool)

(declare-fun inv!17 (TokenValue!447) Bool)

(assert (=> b!143708 (= e!85163 (inv!17 (value!16428 separatorToken!170)))))

(declare-fun b!143709 () Bool)

(assert (=> b!143709 (= e!85162 e!85163)))

(declare-fun c!29534 () Bool)

(assert (=> b!143709 (= c!29534 ((_ is IntegerValue!1342) (value!16428 separatorToken!170)))))

(declare-fun b!143710 () Bool)

(declare-fun res!66448 () Bool)

(assert (=> b!143710 (=> res!66448 e!85161)))

(assert (=> b!143710 (= res!66448 (not ((_ is IntegerValue!1343) (value!16428 separatorToken!170))))))

(assert (=> b!143710 (= e!85163 e!85161)))

(declare-fun b!143711 () Bool)

(declare-fun inv!16 (TokenValue!447) Bool)

(assert (=> b!143711 (= e!85162 (inv!16 (value!16428 separatorToken!170)))))

(assert (= (and d!34108 c!29535) b!143711))

(assert (= (and d!34108 (not c!29535)) b!143709))

(assert (= (and b!143709 c!29534) b!143708))

(assert (= (and b!143709 (not c!29534)) b!143710))

(assert (= (and b!143710 (not res!66448)) b!143707))

(declare-fun m!126235 () Bool)

(assert (=> b!143707 m!126235))

(declare-fun m!126239 () Bool)

(assert (=> b!143708 m!126239))

(declare-fun m!126243 () Bool)

(assert (=> b!143711 m!126243))

(assert (=> b!143667 d!34108))

(declare-fun d!34116 () Bool)

(assert (=> d!34116 (= (isEmpty!954 rules!1920) ((_ is Nil!2492) rules!1920))))

(assert (=> b!143678 d!34116))

(declare-fun d!34118 () Bool)

(declare-fun res!66451 () Bool)

(declare-fun e!85167 () Bool)

(assert (=> d!34118 (=> (not res!66451) (not e!85167))))

(declare-fun rulesValid!111 (LexerInterface!311 List!2502) Bool)

(assert (=> d!34118 (= res!66451 (rulesValid!111 thiss!17480 rules!1920))))

(assert (=> d!34118 (= (rulesInvariant!277 thiss!17480 rules!1920) e!85167)))

(declare-fun b!143715 () Bool)

(declare-datatypes ((List!2504 0))(
  ( (Nil!2494) (Cons!2494 (h!7891 String!3315) (t!23952 List!2504)) )
))
(declare-fun noDuplicateTag!111 (LexerInterface!311 List!2502 List!2504) Bool)

(assert (=> b!143715 (= e!85167 (noDuplicateTag!111 thiss!17480 rules!1920 Nil!2494))))

(assert (= (and d!34118 res!66451) b!143715))

(declare-fun m!126245 () Bool)

(assert (=> d!34118 m!126245))

(declare-fun m!126247 () Bool)

(assert (=> b!143715 m!126247))

(assert (=> b!143666 d!34118))

(declare-fun d!34120 () Bool)

(declare-fun c!29537 () Bool)

(assert (=> d!34120 (= c!29537 ((_ is IntegerValue!1341) (value!16428 (h!7888 tokens!465))))))

(declare-fun e!85169 () Bool)

(assert (=> d!34120 (= (inv!21 (value!16428 (h!7888 tokens!465))) e!85169)))

(declare-fun b!143716 () Bool)

(declare-fun e!85168 () Bool)

(assert (=> b!143716 (= e!85168 (inv!15 (value!16428 (h!7888 tokens!465))))))

(declare-fun b!143717 () Bool)

(declare-fun e!85170 () Bool)

(assert (=> b!143717 (= e!85170 (inv!17 (value!16428 (h!7888 tokens!465))))))

(declare-fun b!143718 () Bool)

(assert (=> b!143718 (= e!85169 e!85170)))

(declare-fun c!29536 () Bool)

(assert (=> b!143718 (= c!29536 ((_ is IntegerValue!1342) (value!16428 (h!7888 tokens!465))))))

(declare-fun b!143719 () Bool)

(declare-fun res!66452 () Bool)

(assert (=> b!143719 (=> res!66452 e!85168)))

(assert (=> b!143719 (= res!66452 (not ((_ is IntegerValue!1343) (value!16428 (h!7888 tokens!465)))))))

(assert (=> b!143719 (= e!85170 e!85168)))

(declare-fun b!143720 () Bool)

(assert (=> b!143720 (= e!85169 (inv!16 (value!16428 (h!7888 tokens!465))))))

(assert (= (and d!34120 c!29537) b!143720))

(assert (= (and d!34120 (not c!29537)) b!143718))

(assert (= (and b!143718 c!29536) b!143717))

(assert (= (and b!143718 (not c!29536)) b!143719))

(assert (= (and b!143719 (not res!66452)) b!143716))

(declare-fun m!126249 () Bool)

(assert (=> b!143716 m!126249))

(declare-fun m!126251 () Bool)

(assert (=> b!143717 m!126251))

(declare-fun m!126253 () Bool)

(assert (=> b!143720 m!126253))

(assert (=> b!143665 d!34120))

(declare-fun d!34122 () Bool)

(declare-fun res!66457 () Bool)

(declare-fun e!85175 () Bool)

(assert (=> d!34122 (=> res!66457 e!85175)))

(assert (=> d!34122 (= res!66457 (not ((_ is Cons!2492) rules!1920)))))

(assert (=> d!34122 (= (sepAndNonSepRulesDisjointChars!14 rules!1920 rules!1920) e!85175)))

(declare-fun b!143725 () Bool)

(declare-fun e!85176 () Bool)

(assert (=> b!143725 (= e!85175 e!85176)))

(declare-fun res!66458 () Bool)

(assert (=> b!143725 (=> (not res!66458) (not e!85176))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!4 (Rule!650 List!2502) Bool)

(assert (=> b!143725 (= res!66458 (ruleDisjointCharsFromAllFromOtherType!4 (h!7889 rules!1920) rules!1920))))

(declare-fun b!143726 () Bool)

(assert (=> b!143726 (= e!85176 (sepAndNonSepRulesDisjointChars!14 rules!1920 (t!23896 rules!1920)))))

(assert (= (and d!34122 (not res!66457)) b!143725))

(assert (= (and b!143725 res!66458) b!143726))

(declare-fun m!126255 () Bool)

(assert (=> b!143725 m!126255))

(declare-fun m!126257 () Bool)

(assert (=> b!143726 m!126257))

(assert (=> b!143676 d!34122))

(declare-fun d!34124 () Bool)

(declare-fun res!66463 () Bool)

(declare-fun e!85181 () Bool)

(assert (=> d!34124 (=> res!66463 e!85181)))

(assert (=> d!34124 (= res!66463 ((_ is Nil!2491) tokens!465))))

(assert (=> d!34124 (= (forall!377 tokens!465 lambda!3450) e!85181)))

(declare-fun b!143731 () Bool)

(declare-fun e!85182 () Bool)

(assert (=> b!143731 (= e!85181 e!85182)))

(declare-fun res!66464 () Bool)

(assert (=> b!143731 (=> (not res!66464) (not e!85182))))

(declare-fun dynLambda!835 (Int Token!594) Bool)

(assert (=> b!143731 (= res!66464 (dynLambda!835 lambda!3450 (h!7888 tokens!465)))))

(declare-fun b!143732 () Bool)

(assert (=> b!143732 (= e!85182 (forall!377 (t!23895 tokens!465) lambda!3450))))

(assert (= (and d!34124 (not res!66463)) b!143731))

(assert (= (and b!143731 res!66464) b!143732))

(declare-fun b_lambda!2305 () Bool)

(assert (=> (not b_lambda!2305) (not b!143731)))

(declare-fun m!126259 () Bool)

(assert (=> b!143731 m!126259))

(declare-fun m!126261 () Bool)

(assert (=> b!143732 m!126261))

(assert (=> b!143675 d!34124))

(declare-fun d!34126 () Bool)

(assert (=> d!34126 (= (inv!3259 (tag!603 (rule!932 (h!7888 tokens!465)))) (= (mod (str.len (value!16427 (tag!603 (rule!932 (h!7888 tokens!465))))) 2) 0))))

(assert (=> b!143663 d!34126))

(declare-fun d!34128 () Bool)

(declare-fun res!66467 () Bool)

(declare-fun e!85185 () Bool)

(assert (=> d!34128 (=> (not res!66467) (not e!85185))))

(declare-fun semiInverseModEq!145 (Int Int) Bool)

(assert (=> d!34128 (= res!66467 (semiInverseModEq!145 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465))))))))

(assert (=> d!34128 (= (inv!3263 (transformation!425 (rule!932 (h!7888 tokens!465)))) e!85185)))

(declare-fun b!143735 () Bool)

(declare-fun equivClasses!128 (Int Int) Bool)

(assert (=> b!143735 (= e!85185 (equivClasses!128 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465))))))))

(assert (= (and d!34128 res!66467) b!143735))

(declare-fun m!126263 () Bool)

(assert (=> d!34128 m!126263))

(declare-fun m!126265 () Bool)

(assert (=> b!143735 m!126265))

(assert (=> b!143663 d!34128))

(declare-fun d!34130 () Bool)

(assert (=> d!34130 (= (inv!3259 (tag!603 (h!7889 rules!1920))) (= (mod (str.len (value!16427 (tag!603 (h!7889 rules!1920)))) 2) 0))))

(assert (=> b!143673 d!34130))

(declare-fun d!34132 () Bool)

(declare-fun res!66468 () Bool)

(declare-fun e!85186 () Bool)

(assert (=> d!34132 (=> (not res!66468) (not e!85186))))

(assert (=> d!34132 (= res!66468 (semiInverseModEq!145 (toChars!903 (transformation!425 (h!7889 rules!1920))) (toValue!1044 (transformation!425 (h!7889 rules!1920)))))))

(assert (=> d!34132 (= (inv!3263 (transformation!425 (h!7889 rules!1920))) e!85186)))

(declare-fun b!143736 () Bool)

(assert (=> b!143736 (= e!85186 (equivClasses!128 (toChars!903 (transformation!425 (h!7889 rules!1920))) (toValue!1044 (transformation!425 (h!7889 rules!1920)))))))

(assert (= (and d!34132 res!66468) b!143736))

(declare-fun m!126267 () Bool)

(assert (=> d!34132 m!126267))

(declare-fun m!126269 () Bool)

(assert (=> b!143736 m!126269))

(assert (=> b!143673 d!34132))

(declare-fun d!34134 () Bool)

(declare-fun res!66473 () Bool)

(declare-fun e!85189 () Bool)

(assert (=> d!34134 (=> (not res!66473) (not e!85189))))

(declare-fun isEmpty!957 (List!2500) Bool)

(assert (=> d!34134 (= res!66473 (not (isEmpty!957 (originalCharacters!468 separatorToken!170))))))

(assert (=> d!34134 (= (inv!3262 separatorToken!170) e!85189)))

(declare-fun b!143741 () Bool)

(declare-fun res!66474 () Bool)

(assert (=> b!143741 (=> (not res!66474) (not e!85189))))

(declare-fun list!856 (BalanceConc!1352) List!2500)

(declare-fun dynLambda!836 (Int TokenValue!447) BalanceConc!1352)

(assert (=> b!143741 (= res!66474 (= (originalCharacters!468 separatorToken!170) (list!856 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))))))

(declare-fun b!143742 () Bool)

(declare-fun size!2153 (List!2500) Int)

(assert (=> b!143742 (= e!85189 (= (size!2148 separatorToken!170) (size!2153 (originalCharacters!468 separatorToken!170))))))

(assert (= (and d!34134 res!66473) b!143741))

(assert (= (and b!143741 res!66474) b!143742))

(declare-fun b_lambda!2307 () Bool)

(assert (=> (not b_lambda!2307) (not b!143741)))

(declare-fun t!23904 () Bool)

(declare-fun tb!4467 () Bool)

(assert (=> (and b!143677 (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) t!23904) tb!4467))

(declare-fun b!143747 () Bool)

(declare-fun e!85192 () Bool)

(declare-fun tp!75903 () Bool)

(declare-fun inv!3266 (Conc!672) Bool)

(assert (=> b!143747 (= e!85192 (and (inv!3266 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))) tp!75903))))

(declare-fun result!6768 () Bool)

(declare-fun inv!3267 (BalanceConc!1352) Bool)

(assert (=> tb!4467 (= result!6768 (and (inv!3267 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))) e!85192))))

(assert (= tb!4467 b!143747))

(declare-fun m!126271 () Bool)

(assert (=> b!143747 m!126271))

(declare-fun m!126273 () Bool)

(assert (=> tb!4467 m!126273))

(assert (=> b!143741 t!23904))

(declare-fun b_and!7627 () Bool)

(assert (= b_and!7611 (and (=> t!23904 result!6768) b_and!7627)))

(declare-fun t!23906 () Bool)

(declare-fun tb!4469 () Bool)

(assert (=> (and b!143662 (= (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) t!23906) tb!4469))

(declare-fun result!6772 () Bool)

(assert (= result!6772 result!6768))

(assert (=> b!143741 t!23906))

(declare-fun b_and!7629 () Bool)

(assert (= b_and!7615 (and (=> t!23906 result!6772) b_and!7629)))

(declare-fun t!23908 () Bool)

(declare-fun tb!4471 () Bool)

(assert (=> (and b!143674 (= (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) t!23908) tb!4471))

(declare-fun result!6774 () Bool)

(assert (= result!6774 result!6768))

(assert (=> b!143741 t!23908))

(declare-fun b_and!7631 () Bool)

(assert (= b_and!7619 (and (=> t!23908 result!6774) b_and!7631)))

(declare-fun m!126275 () Bool)

(assert (=> d!34134 m!126275))

(declare-fun m!126277 () Bool)

(assert (=> b!143741 m!126277))

(assert (=> b!143741 m!126277))

(declare-fun m!126279 () Bool)

(assert (=> b!143741 m!126279))

(declare-fun m!126281 () Bool)

(assert (=> b!143742 m!126281))

(assert (=> start!15094 d!34134))

(declare-fun d!34136 () Bool)

(declare-fun lt!41365 () Bool)

(declare-fun e!85198 () Bool)

(assert (=> d!34136 (= lt!41365 e!85198)))

(declare-fun res!66483 () Bool)

(assert (=> d!34136 (=> (not res!66483) (not e!85198))))

(declare-fun list!857 (BalanceConc!1354) List!2501)

(declare-datatypes ((tuple2!2484 0))(
  ( (tuple2!2485 (_1!1458 BalanceConc!1354) (_2!1458 BalanceConc!1352)) )
))
(declare-fun lex!155 (LexerInterface!311 List!2502 BalanceConc!1352) tuple2!2484)

(declare-fun print!80 (LexerInterface!311 BalanceConc!1354) BalanceConc!1352)

(declare-fun singletonSeq!13 (Token!594) BalanceConc!1354)

(assert (=> d!34136 (= res!66483 (= (list!857 (_1!1458 (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170))))) (list!857 (singletonSeq!13 separatorToken!170))))))

(declare-fun e!85197 () Bool)

(assert (=> d!34136 (= lt!41365 e!85197)))

(declare-fun res!66482 () Bool)

(assert (=> d!34136 (=> (not res!66482) (not e!85197))))

(declare-fun lt!41366 () tuple2!2484)

(assert (=> d!34136 (= res!66482 (= (size!2149 (_1!1458 lt!41366)) 1))))

(assert (=> d!34136 (= lt!41366 (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170))))))

(assert (=> d!34136 (not (isEmpty!954 rules!1920))))

(assert (=> d!34136 (= (rulesProduceIndividualToken!60 thiss!17480 rules!1920 separatorToken!170) lt!41365)))

(declare-fun b!143754 () Bool)

(declare-fun res!66481 () Bool)

(assert (=> b!143754 (=> (not res!66481) (not e!85197))))

(declare-fun apply!300 (BalanceConc!1354 Int) Token!594)

(assert (=> b!143754 (= res!66481 (= (apply!300 (_1!1458 lt!41366) 0) separatorToken!170))))

(declare-fun b!143755 () Bool)

(declare-fun isEmpty!958 (BalanceConc!1352) Bool)

(assert (=> b!143755 (= e!85197 (isEmpty!958 (_2!1458 lt!41366)))))

(declare-fun b!143756 () Bool)

(assert (=> b!143756 (= e!85198 (isEmpty!958 (_2!1458 (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170))))))))

(assert (= (and d!34136 res!66482) b!143754))

(assert (= (and b!143754 res!66481) b!143755))

(assert (= (and d!34136 res!66483) b!143756))

(declare-fun m!126283 () Bool)

(assert (=> d!34136 m!126283))

(assert (=> d!34136 m!126205))

(declare-fun m!126285 () Bool)

(assert (=> d!34136 m!126285))

(declare-fun m!126287 () Bool)

(assert (=> d!34136 m!126287))

(assert (=> d!34136 m!126283))

(declare-fun m!126289 () Bool)

(assert (=> d!34136 m!126289))

(assert (=> d!34136 m!126283))

(declare-fun m!126291 () Bool)

(assert (=> d!34136 m!126291))

(assert (=> d!34136 m!126289))

(declare-fun m!126293 () Bool)

(assert (=> d!34136 m!126293))

(declare-fun m!126295 () Bool)

(assert (=> b!143754 m!126295))

(declare-fun m!126297 () Bool)

(assert (=> b!143755 m!126297))

(assert (=> b!143756 m!126283))

(assert (=> b!143756 m!126283))

(assert (=> b!143756 m!126289))

(assert (=> b!143756 m!126289))

(assert (=> b!143756 m!126293))

(declare-fun m!126299 () Bool)

(assert (=> b!143756 m!126299))

(assert (=> b!143672 d!34136))

(declare-fun d!34138 () Bool)

(declare-fun res!66484 () Bool)

(declare-fun e!85199 () Bool)

(assert (=> d!34138 (=> (not res!66484) (not e!85199))))

(assert (=> d!34138 (= res!66484 (not (isEmpty!957 (originalCharacters!468 (h!7888 tokens!465)))))))

(assert (=> d!34138 (= (inv!3262 (h!7888 tokens!465)) e!85199)))

(declare-fun b!143757 () Bool)

(declare-fun res!66485 () Bool)

(assert (=> b!143757 (=> (not res!66485) (not e!85199))))

(assert (=> b!143757 (= res!66485 (= (originalCharacters!468 (h!7888 tokens!465)) (list!856 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))))))

(declare-fun b!143758 () Bool)

(assert (=> b!143758 (= e!85199 (= (size!2148 (h!7888 tokens!465)) (size!2153 (originalCharacters!468 (h!7888 tokens!465)))))))

(assert (= (and d!34138 res!66484) b!143757))

(assert (= (and b!143757 res!66485) b!143758))

(declare-fun b_lambda!2309 () Bool)

(assert (=> (not b_lambda!2309) (not b!143757)))

(declare-fun t!23913 () Bool)

(declare-fun tb!4473 () Bool)

(assert (=> (and b!143677 (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) t!23913) tb!4473))

(declare-fun b!143759 () Bool)

(declare-fun e!85200 () Bool)

(declare-fun tp!75904 () Bool)

(assert (=> b!143759 (= e!85200 (and (inv!3266 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))) tp!75904))))

(declare-fun result!6776 () Bool)

(assert (=> tb!4473 (= result!6776 (and (inv!3267 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))) e!85200))))

(assert (= tb!4473 b!143759))

(declare-fun m!126301 () Bool)

(assert (=> b!143759 m!126301))

(declare-fun m!126303 () Bool)

(assert (=> tb!4473 m!126303))

(assert (=> b!143757 t!23913))

(declare-fun b_and!7633 () Bool)

(assert (= b_and!7627 (and (=> t!23913 result!6776) b_and!7633)))

(declare-fun tb!4475 () Bool)

(declare-fun t!23915 () Bool)

(assert (=> (and b!143662 (= (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) t!23915) tb!4475))

(declare-fun result!6778 () Bool)

(assert (= result!6778 result!6776))

(assert (=> b!143757 t!23915))

(declare-fun b_and!7635 () Bool)

(assert (= b_and!7629 (and (=> t!23915 result!6778) b_and!7635)))

(declare-fun t!23917 () Bool)

(declare-fun tb!4477 () Bool)

(assert (=> (and b!143674 (= (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) t!23917) tb!4477))

(declare-fun result!6780 () Bool)

(assert (= result!6780 result!6776))

(assert (=> b!143757 t!23917))

(declare-fun b_and!7637 () Bool)

(assert (= b_and!7631 (and (=> t!23917 result!6780) b_and!7637)))

(declare-fun m!126305 () Bool)

(assert (=> d!34138 m!126305))

(declare-fun m!126307 () Bool)

(assert (=> b!143757 m!126307))

(assert (=> b!143757 m!126307))

(declare-fun m!126309 () Bool)

(assert (=> b!143757 m!126309))

(declare-fun m!126311 () Bool)

(assert (=> b!143758 m!126311))

(assert (=> b!143670 d!34138))

(declare-fun d!34140 () Bool)

(declare-fun lt!41369 () Int)

(declare-fun size!2154 (List!2501) Int)

(assert (=> d!34140 (= lt!41369 (size!2154 (list!857 lt!41357)))))

(declare-fun size!2155 (Conc!673) Int)

(assert (=> d!34140 (= lt!41369 (size!2155 (c!29529 lt!41357)))))

(assert (=> d!34140 (= (size!2149 lt!41357) lt!41369)))

(declare-fun bs!12989 () Bool)

(assert (= bs!12989 d!34140))

(declare-fun m!126313 () Bool)

(assert (=> bs!12989 m!126313))

(assert (=> bs!12989 m!126313))

(declare-fun m!126315 () Bool)

(assert (=> bs!12989 m!126315))

(declare-fun m!126317 () Bool)

(assert (=> bs!12989 m!126317))

(assert (=> b!143669 d!34140))

(declare-fun bs!12996 () Bool)

(declare-fun b!143931 () Bool)

(assert (= bs!12996 (and b!143931 b!143675)))

(declare-fun lambda!3461 () Int)

(assert (=> bs!12996 (not (= lambda!3461 lambda!3450))))

(declare-fun b!143942 () Bool)

(declare-fun e!85324 () Bool)

(assert (=> b!143942 (= e!85324 true)))

(declare-fun b!143941 () Bool)

(declare-fun e!85323 () Bool)

(assert (=> b!143941 (= e!85323 e!85324)))

(declare-fun b!143940 () Bool)

(declare-fun e!85322 () Bool)

(assert (=> b!143940 (= e!85322 e!85323)))

(assert (=> b!143931 e!85322))

(assert (= b!143941 b!143942))

(assert (= b!143940 b!143941))

(assert (= (and b!143931 ((_ is Cons!2492) rules!1920)) b!143940))

(declare-fun order!1197 () Int)

(declare-fun order!1199 () Int)

(declare-fun dynLambda!837 (Int Int) Int)

(declare-fun dynLambda!838 (Int Int) Int)

(assert (=> b!143942 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (dynLambda!838 order!1199 lambda!3461))))

(declare-fun order!1201 () Int)

(declare-fun dynLambda!839 (Int Int) Int)

(assert (=> b!143942 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (h!7889 rules!1920)))) (dynLambda!838 order!1199 lambda!3461))))

(assert (=> b!143931 true))

(declare-fun b!143924 () Bool)

(declare-fun c!29569 () Bool)

(declare-datatypes ((tuple2!2486 0))(
  ( (tuple2!2487 (_1!1459 Token!594) (_2!1459 List!2500)) )
))
(declare-datatypes ((Option!209 0))(
  ( (None!208) (Some!208 (v!13559 tuple2!2486)) )
))
(declare-fun lt!41414 () Option!209)

(assert (=> b!143924 (= c!29569 (and ((_ is Some!208) lt!41414) (not (= (_1!1459 (v!13559 lt!41414)) (h!7888 tokens!465)))))))

(declare-fun e!85312 () List!2500)

(declare-fun e!85314 () List!2500)

(assert (=> b!143924 (= e!85312 e!85314)))

(declare-fun d!34142 () Bool)

(declare-fun c!29571 () Bool)

(assert (=> d!34142 (= c!29571 ((_ is Cons!2491) tokens!465))))

(declare-fun e!85313 () List!2500)

(assert (=> d!34142 (= (printWithSeparatorTokenWhenNeededList!4 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!85313)))

(declare-fun b!143925 () Bool)

(assert (=> b!143925 (= e!85313 Nil!2490)))

(declare-fun bm!5607 () Bool)

(declare-fun call!5614 () BalanceConc!1352)

(declare-fun call!5616 () BalanceConc!1352)

(assert (=> bm!5607 (= call!5614 call!5616)))

(declare-fun c!29570 () Bool)

(declare-fun bm!5608 () Bool)

(declare-fun call!5615 () List!2500)

(assert (=> bm!5608 (= call!5615 (list!856 (ite c!29570 call!5616 call!5614)))))

(declare-fun b!143926 () Bool)

(assert (=> b!143926 (= e!85314 Nil!2490)))

(declare-fun printTailRec!43 (LexerInterface!311 BalanceConc!1354 Int BalanceConc!1352) BalanceConc!1352)

(assert (=> b!143926 (= (print!80 thiss!17480 (singletonSeq!13 (h!7888 tokens!465))) (printTailRec!43 thiss!17480 (singletonSeq!13 (h!7888 tokens!465)) 0 (BalanceConc!1353 Empty!672)))))

(declare-datatypes ((Unit!1840 0))(
  ( (Unit!1841) )
))
(declare-fun lt!41413 () Unit!1840)

(declare-fun Unit!1842 () Unit!1840)

(assert (=> b!143926 (= lt!41413 Unit!1842)))

(declare-fun lt!41411 () Unit!1840)

(declare-fun lt!41410 () List!2500)

(declare-fun call!5612 () List!2500)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!2 (LexerInterface!311 List!2502 List!2500 List!2500) Unit!1840)

(assert (=> b!143926 (= lt!41411 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!2 thiss!17480 rules!1920 call!5612 lt!41410))))

(assert (=> b!143926 false))

(declare-fun lt!41412 () Unit!1840)

(declare-fun Unit!1843 () Unit!1840)

(assert (=> b!143926 (= lt!41412 Unit!1843)))

(declare-fun b!143927 () Bool)

(declare-fun call!5613 () List!2500)

(assert (=> b!143927 (= e!85312 call!5613)))

(declare-fun b!143928 () Bool)

(declare-fun e!85315 () BalanceConc!1352)

(declare-fun charsOf!90 (Token!594) BalanceConc!1352)

(assert (=> b!143928 (= e!85315 (charsOf!90 separatorToken!170))))

(declare-fun b!143929 () Bool)

(declare-fun ++!530 (List!2500 List!2500) List!2500)

(assert (=> b!143929 (= e!85314 (++!530 call!5613 lt!41410))))

(declare-fun b!143930 () Bool)

(assert (=> b!143930 (= e!85315 call!5614)))

(declare-fun bm!5609 () Bool)

(assert (=> bm!5609 (= call!5616 (charsOf!90 (h!7888 tokens!465)))))

(assert (=> b!143931 (= e!85313 e!85312)))

(declare-fun lt!41415 () Unit!1840)

(declare-fun forallContained!38 (List!2501 Int Token!594) Unit!1840)

(assert (=> b!143931 (= lt!41415 (forallContained!38 tokens!465 lambda!3461 (h!7888 tokens!465)))))

(assert (=> b!143931 (= lt!41410 (printWithSeparatorTokenWhenNeededList!4 thiss!17480 rules!1920 (t!23895 tokens!465) separatorToken!170))))

(declare-fun maxPrefix!95 (LexerInterface!311 List!2502 List!2500) Option!209)

(assert (=> b!143931 (= lt!41414 (maxPrefix!95 thiss!17480 rules!1920 (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410)))))

(assert (=> b!143931 (= c!29570 (and ((_ is Some!208) lt!41414) (= (_1!1459 (v!13559 lt!41414)) (h!7888 tokens!465))))))

(declare-fun bm!5610 () Bool)

(assert (=> bm!5610 (= call!5612 (list!856 e!85315))))

(declare-fun c!29572 () Bool)

(assert (=> bm!5610 (= c!29572 c!29569)))

(declare-fun bm!5611 () Bool)

(assert (=> bm!5611 (= call!5613 (++!530 call!5615 (ite c!29570 lt!41410 call!5612)))))

(assert (= (and d!34142 c!29571) b!143931))

(assert (= (and d!34142 (not c!29571)) b!143925))

(assert (= (and b!143931 c!29570) b!143927))

(assert (= (and b!143931 (not c!29570)) b!143924))

(assert (= (and b!143924 c!29569) b!143929))

(assert (= (and b!143924 (not c!29569)) b!143926))

(assert (= (or b!143929 b!143926) bm!5607))

(assert (= (or b!143929 b!143926) bm!5610))

(assert (= (and bm!5610 c!29572) b!143928))

(assert (= (and bm!5610 (not c!29572)) b!143930))

(assert (= (or b!143927 bm!5607) bm!5609))

(assert (= (or b!143927 b!143929) bm!5608))

(assert (= (or b!143927 b!143929) bm!5611))

(declare-fun m!126433 () Bool)

(assert (=> b!143931 m!126433))

(declare-fun m!126435 () Bool)

(assert (=> b!143931 m!126435))

(declare-fun m!126437 () Bool)

(assert (=> b!143931 m!126437))

(declare-fun m!126439 () Bool)

(assert (=> b!143931 m!126439))

(assert (=> b!143931 m!126433))

(assert (=> b!143931 m!126435))

(declare-fun m!126441 () Bool)

(assert (=> b!143931 m!126441))

(assert (=> b!143931 m!126441))

(declare-fun m!126443 () Bool)

(assert (=> b!143931 m!126443))

(declare-fun m!126445 () Bool)

(assert (=> bm!5610 m!126445))

(declare-fun m!126447 () Bool)

(assert (=> b!143929 m!126447))

(assert (=> bm!5609 m!126433))

(declare-fun m!126449 () Bool)

(assert (=> b!143926 m!126449))

(assert (=> b!143926 m!126449))

(declare-fun m!126451 () Bool)

(assert (=> b!143926 m!126451))

(assert (=> b!143926 m!126449))

(declare-fun m!126453 () Bool)

(assert (=> b!143926 m!126453))

(declare-fun m!126455 () Bool)

(assert (=> b!143926 m!126455))

(declare-fun m!126457 () Bool)

(assert (=> b!143928 m!126457))

(declare-fun m!126459 () Bool)

(assert (=> bm!5608 m!126459))

(declare-fun m!126461 () Bool)

(assert (=> bm!5611 m!126461))

(assert (=> b!143669 d!34142))

(declare-fun d!34174 () Bool)

(assert (=> d!34174 (= (inv!3259 (tag!603 (rule!932 separatorToken!170))) (= (mod (str.len (value!16427 (tag!603 (rule!932 separatorToken!170)))) 2) 0))))

(assert (=> b!143680 d!34174))

(declare-fun d!34176 () Bool)

(declare-fun res!66518 () Bool)

(declare-fun e!85325 () Bool)

(assert (=> d!34176 (=> (not res!66518) (not e!85325))))

(assert (=> d!34176 (= res!66518 (semiInverseModEq!145 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toValue!1044 (transformation!425 (rule!932 separatorToken!170)))))))

(assert (=> d!34176 (= (inv!3263 (transformation!425 (rule!932 separatorToken!170))) e!85325)))

(declare-fun b!143945 () Bool)

(assert (=> b!143945 (= e!85325 (equivClasses!128 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toValue!1044 (transformation!425 (rule!932 separatorToken!170)))))))

(assert (= (and d!34176 res!66518) b!143945))

(declare-fun m!126463 () Bool)

(assert (=> d!34176 m!126463))

(declare-fun m!126465 () Bool)

(assert (=> b!143945 m!126465))

(assert (=> b!143680 d!34176))

(declare-fun bs!12997 () Bool)

(declare-fun d!34178 () Bool)

(assert (= bs!12997 (and d!34178 b!143675)))

(declare-fun lambda!3466 () Int)

(assert (=> bs!12997 (not (= lambda!3466 lambda!3450))))

(declare-fun bs!12998 () Bool)

(assert (= bs!12998 (and d!34178 b!143931)))

(assert (=> bs!12998 (= lambda!3466 lambda!3461)))

(declare-fun b!143951 () Bool)

(declare-fun e!85331 () Bool)

(assert (=> b!143951 (= e!85331 true)))

(declare-fun b!143950 () Bool)

(declare-fun e!85330 () Bool)

(assert (=> b!143950 (= e!85330 e!85331)))

(declare-fun b!143949 () Bool)

(declare-fun e!85329 () Bool)

(assert (=> b!143949 (= e!85329 e!85330)))

(assert (=> d!34178 e!85329))

(assert (= b!143950 b!143951))

(assert (= b!143949 b!143950))

(assert (= (and d!34178 ((_ is Cons!2492) rules!1920)) b!143949))

(assert (=> b!143951 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (dynLambda!838 order!1199 lambda!3466))))

(assert (=> b!143951 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (h!7889 rules!1920)))) (dynLambda!838 order!1199 lambda!3466))))

(assert (=> d!34178 true))

(declare-fun e!85328 () Bool)

(assert (=> d!34178 e!85328))

(declare-fun res!66521 () Bool)

(assert (=> d!34178 (=> (not res!66521) (not e!85328))))

(declare-fun lt!41418 () Bool)

(assert (=> d!34178 (= res!66521 (= lt!41418 (forall!377 (list!857 lt!41357) lambda!3466)))))

(declare-fun forall!379 (BalanceConc!1354 Int) Bool)

(assert (=> d!34178 (= lt!41418 (forall!379 lt!41357 lambda!3466))))

(assert (=> d!34178 (not (isEmpty!954 rules!1920))))

(assert (=> d!34178 (= (rulesProduceEachTokenIndividually!103 thiss!17480 rules!1920 lt!41357) lt!41418)))

(declare-fun b!143948 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!65 (LexerInterface!311 List!2502 List!2501) Bool)

(assert (=> b!143948 (= e!85328 (= lt!41418 (rulesProduceEachTokenIndividuallyList!65 thiss!17480 rules!1920 (list!857 lt!41357))))))

(assert (= (and d!34178 res!66521) b!143948))

(assert (=> d!34178 m!126313))

(assert (=> d!34178 m!126313))

(declare-fun m!126467 () Bool)

(assert (=> d!34178 m!126467))

(declare-fun m!126469 () Bool)

(assert (=> d!34178 m!126469))

(assert (=> d!34178 m!126205))

(assert (=> b!143948 m!126313))

(assert (=> b!143948 m!126313))

(declare-fun m!126471 () Bool)

(assert (=> b!143948 m!126471))

(assert (=> b!143679 d!34178))

(declare-fun d!34180 () Bool)

(declare-fun fromListB!103 (List!2501) BalanceConc!1354)

(assert (=> d!34180 (= (seqFromList!238 tokens!465) (fromListB!103 tokens!465))))

(declare-fun bs!12999 () Bool)

(assert (= bs!12999 d!34180))

(declare-fun m!126473 () Bool)

(assert (=> bs!12999 m!126473))

(assert (=> b!143679 d!34180))

(declare-fun b!143965 () Bool)

(declare-fun e!85334 () Bool)

(declare-fun tp!75973 () Bool)

(declare-fun tp!75972 () Bool)

(assert (=> b!143965 (= e!85334 (and tp!75973 tp!75972))))

(declare-fun b!143964 () Bool)

(declare-fun tp!75975 () Bool)

(assert (=> b!143964 (= e!85334 tp!75975)))

(assert (=> b!143673 (= tp!75893 e!85334)))

(declare-fun b!143962 () Bool)

(declare-fun tp_is_empty!1587 () Bool)

(assert (=> b!143962 (= e!85334 tp_is_empty!1587)))

(declare-fun b!143963 () Bool)

(declare-fun tp!75976 () Bool)

(declare-fun tp!75974 () Bool)

(assert (=> b!143963 (= e!85334 (and tp!75976 tp!75974))))

(assert (= (and b!143673 ((_ is ElementMatch!649) (regex!425 (h!7889 rules!1920)))) b!143962))

(assert (= (and b!143673 ((_ is Concat!1097) (regex!425 (h!7889 rules!1920)))) b!143963))

(assert (= (and b!143673 ((_ is Star!649) (regex!425 (h!7889 rules!1920)))) b!143964))

(assert (= (and b!143673 ((_ is Union!649) (regex!425 (h!7889 rules!1920)))) b!143965))

(declare-fun b!143976 () Bool)

(declare-fun b_free!4989 () Bool)

(declare-fun b_next!4989 () Bool)

(assert (=> b!143976 (= b_free!4989 (not b_next!4989))))

(declare-fun tp!75988 () Bool)

(declare-fun b_and!7653 () Bool)

(assert (=> b!143976 (= tp!75988 b_and!7653)))

(declare-fun b_free!4991 () Bool)

(declare-fun b_next!4991 () Bool)

(assert (=> b!143976 (= b_free!4991 (not b_next!4991))))

(declare-fun t!23945 () Bool)

(declare-fun tb!4493 () Bool)

(assert (=> (and b!143976 (= (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) t!23945) tb!4493))

(declare-fun result!6808 () Bool)

(assert (= result!6808 result!6768))

(assert (=> b!143741 t!23945))

(declare-fun t!23947 () Bool)

(declare-fun tb!4495 () Bool)

(assert (=> (and b!143976 (= (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) t!23947) tb!4495))

(declare-fun result!6810 () Bool)

(assert (= result!6810 result!6776))

(assert (=> b!143757 t!23947))

(declare-fun b_and!7655 () Bool)

(declare-fun tp!75987 () Bool)

(assert (=> b!143976 (= tp!75987 (and (=> t!23945 result!6808) (=> t!23947 result!6810) b_and!7655))))

(declare-fun e!85345 () Bool)

(assert (=> b!143976 (= e!85345 (and tp!75988 tp!75987))))

(declare-fun b!143975 () Bool)

(declare-fun e!85343 () Bool)

(declare-fun tp!75986 () Bool)

(assert (=> b!143975 (= e!85343 (and tp!75986 (inv!3259 (tag!603 (h!7889 (t!23896 rules!1920)))) (inv!3263 (transformation!425 (h!7889 (t!23896 rules!1920)))) e!85345))))

(declare-fun b!143974 () Bool)

(declare-fun e!85344 () Bool)

(declare-fun tp!75985 () Bool)

(assert (=> b!143974 (= e!85344 (and e!85343 tp!75985))))

(assert (=> b!143668 (= tp!75897 e!85344)))

(assert (= b!143975 b!143976))

(assert (= b!143974 b!143975))

(assert (= (and b!143668 ((_ is Cons!2492) (t!23896 rules!1920))) b!143974))

(declare-fun m!126475 () Bool)

(assert (=> b!143975 m!126475))

(declare-fun m!126477 () Bool)

(assert (=> b!143975 m!126477))

(declare-fun b!143981 () Bool)

(declare-fun e!85349 () Bool)

(declare-fun tp!75991 () Bool)

(assert (=> b!143981 (= e!85349 (and tp_is_empty!1587 tp!75991))))

(assert (=> b!143667 (= tp!75886 e!85349)))

(assert (= (and b!143667 ((_ is Cons!2490) (originalCharacters!468 separatorToken!170))) b!143981))

(declare-fun b!143982 () Bool)

(declare-fun e!85350 () Bool)

(declare-fun tp!75992 () Bool)

(assert (=> b!143982 (= e!85350 (and tp_is_empty!1587 tp!75992))))

(assert (=> b!143665 (= tp!75894 e!85350)))

(assert (= (and b!143665 ((_ is Cons!2490) (originalCharacters!468 (h!7888 tokens!465)))) b!143982))

(declare-fun b!143996 () Bool)

(declare-fun b_free!4993 () Bool)

(declare-fun b_next!4993 () Bool)

(assert (=> b!143996 (= b_free!4993 (not b_next!4993))))

(declare-fun tp!76005 () Bool)

(declare-fun b_and!7657 () Bool)

(assert (=> b!143996 (= tp!76005 b_and!7657)))

(declare-fun b_free!4995 () Bool)

(declare-fun b_next!4995 () Bool)

(assert (=> b!143996 (= b_free!4995 (not b_next!4995))))

(declare-fun t!23949 () Bool)

(declare-fun tb!4497 () Bool)

(assert (=> (and b!143996 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) t!23949) tb!4497))

(declare-fun result!6816 () Bool)

(assert (= result!6816 result!6768))

(assert (=> b!143741 t!23949))

(declare-fun t!23951 () Bool)

(declare-fun tb!4499 () Bool)

(assert (=> (and b!143996 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) t!23951) tb!4499))

(declare-fun result!6818 () Bool)

(assert (= result!6818 result!6776))

(assert (=> b!143757 t!23951))

(declare-fun b_and!7659 () Bool)

(declare-fun tp!76003 () Bool)

(assert (=> b!143996 (= tp!76003 (and (=> t!23949 result!6816) (=> t!23951 result!6818) b_and!7659))))

(declare-fun e!85363 () Bool)

(assert (=> b!143996 (= e!85363 (and tp!76005 tp!76003))))

(declare-fun e!85368 () Bool)

(declare-fun tp!76004 () Bool)

(declare-fun e!85366 () Bool)

(declare-fun b!143993 () Bool)

(assert (=> b!143993 (= e!85366 (and (inv!3262 (h!7888 (t!23895 tokens!465))) e!85368 tp!76004))))

(declare-fun b!143994 () Bool)

(declare-fun tp!76007 () Bool)

(declare-fun e!85367 () Bool)

(assert (=> b!143994 (= e!85368 (and (inv!21 (value!16428 (h!7888 (t!23895 tokens!465)))) e!85367 tp!76007))))

(declare-fun b!143995 () Bool)

(declare-fun tp!76006 () Bool)

(assert (=> b!143995 (= e!85367 (and tp!76006 (inv!3259 (tag!603 (rule!932 (h!7888 (t!23895 tokens!465))))) (inv!3263 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) e!85363))))

(assert (=> b!143670 (= tp!75888 e!85366)))

(assert (= b!143995 b!143996))

(assert (= b!143994 b!143995))

(assert (= b!143993 b!143994))

(assert (= (and b!143670 ((_ is Cons!2491) (t!23895 tokens!465))) b!143993))

(declare-fun m!126479 () Bool)

(assert (=> b!143993 m!126479))

(declare-fun m!126481 () Bool)

(assert (=> b!143994 m!126481))

(declare-fun m!126483 () Bool)

(assert (=> b!143995 m!126483))

(declare-fun m!126485 () Bool)

(assert (=> b!143995 m!126485))

(declare-fun b!144000 () Bool)

(declare-fun e!85369 () Bool)

(declare-fun tp!76009 () Bool)

(declare-fun tp!76008 () Bool)

(assert (=> b!144000 (= e!85369 (and tp!76009 tp!76008))))

(declare-fun b!143999 () Bool)

(declare-fun tp!76011 () Bool)

(assert (=> b!143999 (= e!85369 tp!76011)))

(assert (=> b!143680 (= tp!75887 e!85369)))

(declare-fun b!143997 () Bool)

(assert (=> b!143997 (= e!85369 tp_is_empty!1587)))

(declare-fun b!143998 () Bool)

(declare-fun tp!76012 () Bool)

(declare-fun tp!76010 () Bool)

(assert (=> b!143998 (= e!85369 (and tp!76012 tp!76010))))

(assert (= (and b!143680 ((_ is ElementMatch!649) (regex!425 (rule!932 separatorToken!170)))) b!143997))

(assert (= (and b!143680 ((_ is Concat!1097) (regex!425 (rule!932 separatorToken!170)))) b!143998))

(assert (= (and b!143680 ((_ is Star!649) (regex!425 (rule!932 separatorToken!170)))) b!143999))

(assert (= (and b!143680 ((_ is Union!649) (regex!425 (rule!932 separatorToken!170)))) b!144000))

(declare-fun b!144004 () Bool)

(declare-fun e!85370 () Bool)

(declare-fun tp!76014 () Bool)

(declare-fun tp!76013 () Bool)

(assert (=> b!144004 (= e!85370 (and tp!76014 tp!76013))))

(declare-fun b!144003 () Bool)

(declare-fun tp!76016 () Bool)

(assert (=> b!144003 (= e!85370 tp!76016)))

(assert (=> b!143663 (= tp!75885 e!85370)))

(declare-fun b!144001 () Bool)

(assert (=> b!144001 (= e!85370 tp_is_empty!1587)))

(declare-fun b!144002 () Bool)

(declare-fun tp!76017 () Bool)

(declare-fun tp!76015 () Bool)

(assert (=> b!144002 (= e!85370 (and tp!76017 tp!76015))))

(assert (= (and b!143663 ((_ is ElementMatch!649) (regex!425 (rule!932 (h!7888 tokens!465))))) b!144001))

(assert (= (and b!143663 ((_ is Concat!1097) (regex!425 (rule!932 (h!7888 tokens!465))))) b!144002))

(assert (= (and b!143663 ((_ is Star!649) (regex!425 (rule!932 (h!7888 tokens!465))))) b!144003))

(assert (= (and b!143663 ((_ is Union!649) (regex!425 (rule!932 (h!7888 tokens!465))))) b!144004))

(declare-fun b_lambda!2321 () Bool)

(assert (= b_lambda!2309 (or (and b!143976 b_free!4991 (= (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!143677 b_free!4971 (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!143662 b_free!4975 (= (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!143996 b_free!4995 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!143674 b_free!4979) b_lambda!2321)))

(declare-fun b_lambda!2323 () Bool)

(assert (= b_lambda!2305 (or b!143675 b_lambda!2323)))

(declare-fun bs!13000 () Bool)

(declare-fun d!34182 () Bool)

(assert (= bs!13000 (and d!34182 b!143675)))

(assert (=> bs!13000 (= (dynLambda!835 lambda!3450 (h!7888 tokens!465)) (not (isSeparator!425 (rule!932 (h!7888 tokens!465)))))))

(assert (=> b!143731 d!34182))

(declare-fun b_lambda!2325 () Bool)

(assert (= b_lambda!2307 (or (and b!143662 b_free!4975) (and b!143674 b_free!4979 (= (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) (and b!143976 b_free!4991 (= (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) (and b!143677 b_free!4971 (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) (and b!143996 b_free!4995 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) b_lambda!2325)))

(check-sat (not b!143759) (not b!143757) (not b!143993) (not bm!5610) (not b!143982) (not b!143720) (not d!34128) b_and!7653 (not d!34180) b_and!7637 (not b!143742) (not b!143715) (not b!143747) (not b!143999) (not d!34134) (not b!143726) b_and!7635 (not b!143755) (not b!144003) (not b!143945) (not b_next!4979) (not b_next!4971) (not bm!5608) (not b!143948) (not b!143975) (not b!143741) (not b!143963) (not b!143754) b_and!7659 (not b!143716) (not b!143732) b_and!7633 (not d!34176) (not b!143717) (not b!143949) (not d!34118) (not b!143708) (not b_lambda!2321) (not b!143964) b_and!7613 (not bm!5609) (not b!143994) (not d!34132) b_and!7655 (not b!143929) (not b_next!4995) (not d!34136) (not b_next!4991) (not b!143756) (not b!143974) (not b!143931) (not b!144004) (not b!143725) tp_is_empty!1587 b_and!7657 (not b_next!4975) b_and!7609 (not b!144002) (not b!143736) (not b!143758) (not b_next!4977) (not b!143965) (not b_next!4989) (not d!34140) (not b_next!4969) (not b!143981) (not b!143998) (not b!143928) (not b!143995) (not tb!4467) (not b_next!4993) b_and!7617 (not b_lambda!2325) (not d!34178) (not b!143711) (not tb!4473) (not b!143926) (not b!143735) (not b_lambda!2323) (not bm!5611) (not b!144000) (not b_next!4973) (not d!34138) (not b!143707) (not b!143940))
(check-sat b_and!7635 b_and!7659 b_and!7633 b_and!7613 b_and!7655 (not b_next!4995) (not b_next!4991) (not b_next!4977) (not b_next!4989) (not b_next!4969) (not b_next!4973) b_and!7653 b_and!7637 (not b_next!4979) (not b_next!4971) b_and!7657 (not b_next!4975) b_and!7609 (not b_next!4993) b_and!7617)
(get-model)

(declare-fun d!34214 () Bool)

(declare-fun lt!41433 () Bool)

(assert (=> d!34214 (= lt!41433 (isEmpty!957 (list!856 (_2!1458 (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)))))))))

(declare-fun isEmpty!960 (Conc!672) Bool)

(assert (=> d!34214 (= lt!41433 (isEmpty!960 (c!29527 (_2!1458 (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)))))))))

(assert (=> d!34214 (= (isEmpty!958 (_2!1458 (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170))))) lt!41433)))

(declare-fun bs!13011 () Bool)

(assert (= bs!13011 d!34214))

(declare-fun m!126535 () Bool)

(assert (=> bs!13011 m!126535))

(assert (=> bs!13011 m!126535))

(declare-fun m!126537 () Bool)

(assert (=> bs!13011 m!126537))

(declare-fun m!126539 () Bool)

(assert (=> bs!13011 m!126539))

(assert (=> b!143756 d!34214))

(declare-fun b!144071 () Bool)

(declare-fun res!66558 () Bool)

(declare-fun e!85413 () Bool)

(assert (=> b!144071 (=> (not res!66558) (not e!85413))))

(declare-fun lt!41443 () tuple2!2484)

(declare-datatypes ((tuple2!2490 0))(
  ( (tuple2!2491 (_1!1461 List!2501) (_2!1461 List!2500)) )
))
(declare-fun lexList!87 (LexerInterface!311 List!2502 List!2500) tuple2!2490)

(assert (=> b!144071 (= res!66558 (= (list!857 (_1!1458 lt!41443)) (_1!1461 (lexList!87 thiss!17480 rules!1920 (list!856 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)))))))))

(declare-fun b!144072 () Bool)

(assert (=> b!144072 (= e!85413 (= (list!856 (_2!1458 lt!41443)) (_2!1461 (lexList!87 thiss!17480 rules!1920 (list!856 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)))))))))

(declare-fun b!144073 () Bool)

(declare-fun e!85412 () Bool)

(declare-fun isEmpty!962 (BalanceConc!1354) Bool)

(assert (=> b!144073 (= e!85412 (not (isEmpty!962 (_1!1458 lt!41443))))))

(declare-fun b!144074 () Bool)

(declare-fun e!85414 () Bool)

(assert (=> b!144074 (= e!85414 e!85412)))

(declare-fun res!66560 () Bool)

(declare-fun size!2157 (BalanceConc!1352) Int)

(assert (=> b!144074 (= res!66560 (< (size!2157 (_2!1458 lt!41443)) (size!2157 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)))))))

(assert (=> b!144074 (=> (not res!66560) (not e!85412))))

(declare-fun b!144075 () Bool)

(assert (=> b!144075 (= e!85414 (= (_2!1458 lt!41443) (print!80 thiss!17480 (singletonSeq!13 separatorToken!170))))))

(declare-fun d!34216 () Bool)

(assert (=> d!34216 e!85413))

(declare-fun res!66559 () Bool)

(assert (=> d!34216 (=> (not res!66559) (not e!85413))))

(assert (=> d!34216 (= res!66559 e!85414)))

(declare-fun c!29587 () Bool)

(assert (=> d!34216 (= c!29587 (> (size!2149 (_1!1458 lt!41443)) 0))))

(declare-fun lexTailRecV2!74 (LexerInterface!311 List!2502 BalanceConc!1352 BalanceConc!1352 BalanceConc!1352 BalanceConc!1354) tuple2!2484)

(assert (=> d!34216 (= lt!41443 (lexTailRecV2!74 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)) (BalanceConc!1353 Empty!672) (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)) (BalanceConc!1355 Empty!673)))))

(assert (=> d!34216 (= (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170))) lt!41443)))

(assert (= (and d!34216 c!29587) b!144074))

(assert (= (and d!34216 (not c!29587)) b!144075))

(assert (= (and b!144074 res!66560) b!144073))

(assert (= (and d!34216 res!66559) b!144071))

(assert (= (and b!144071 res!66558) b!144072))

(declare-fun m!126559 () Bool)

(assert (=> b!144072 m!126559))

(assert (=> b!144072 m!126289))

(declare-fun m!126561 () Bool)

(assert (=> b!144072 m!126561))

(assert (=> b!144072 m!126561))

(declare-fun m!126563 () Bool)

(assert (=> b!144072 m!126563))

(declare-fun m!126565 () Bool)

(assert (=> d!34216 m!126565))

(assert (=> d!34216 m!126289))

(assert (=> d!34216 m!126289))

(declare-fun m!126567 () Bool)

(assert (=> d!34216 m!126567))

(declare-fun m!126569 () Bool)

(assert (=> b!144074 m!126569))

(assert (=> b!144074 m!126289))

(declare-fun m!126571 () Bool)

(assert (=> b!144074 m!126571))

(declare-fun m!126573 () Bool)

(assert (=> b!144071 m!126573))

(assert (=> b!144071 m!126289))

(assert (=> b!144071 m!126561))

(assert (=> b!144071 m!126561))

(assert (=> b!144071 m!126563))

(declare-fun m!126575 () Bool)

(assert (=> b!144073 m!126575))

(assert (=> b!143756 d!34216))

(declare-fun d!34224 () Bool)

(declare-fun lt!41446 () BalanceConc!1352)

(declare-fun printList!43 (LexerInterface!311 List!2501) List!2500)

(assert (=> d!34224 (= (list!856 lt!41446) (printList!43 thiss!17480 (list!857 (singletonSeq!13 separatorToken!170))))))

(assert (=> d!34224 (= lt!41446 (printTailRec!43 thiss!17480 (singletonSeq!13 separatorToken!170) 0 (BalanceConc!1353 Empty!672)))))

(assert (=> d!34224 (= (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)) lt!41446)))

(declare-fun bs!13017 () Bool)

(assert (= bs!13017 d!34224))

(declare-fun m!126577 () Bool)

(assert (=> bs!13017 m!126577))

(assert (=> bs!13017 m!126283))

(assert (=> bs!13017 m!126291))

(assert (=> bs!13017 m!126291))

(declare-fun m!126579 () Bool)

(assert (=> bs!13017 m!126579))

(assert (=> bs!13017 m!126283))

(declare-fun m!126581 () Bool)

(assert (=> bs!13017 m!126581))

(assert (=> b!143756 d!34224))

(declare-fun d!34226 () Bool)

(declare-fun e!85417 () Bool)

(assert (=> d!34226 e!85417))

(declare-fun res!66563 () Bool)

(assert (=> d!34226 (=> (not res!66563) (not e!85417))))

(declare-fun lt!41449 () BalanceConc!1354)

(assert (=> d!34226 (= res!66563 (= (list!857 lt!41449) (Cons!2491 separatorToken!170 Nil!2491)))))

(declare-fun singleton!11 (Token!594) BalanceConc!1354)

(assert (=> d!34226 (= lt!41449 (singleton!11 separatorToken!170))))

(assert (=> d!34226 (= (singletonSeq!13 separatorToken!170) lt!41449)))

(declare-fun b!144078 () Bool)

(declare-fun isBalanced!191 (Conc!673) Bool)

(assert (=> b!144078 (= e!85417 (isBalanced!191 (c!29529 lt!41449)))))

(assert (= (and d!34226 res!66563) b!144078))

(declare-fun m!126583 () Bool)

(assert (=> d!34226 m!126583))

(declare-fun m!126585 () Bool)

(assert (=> d!34226 m!126585))

(declare-fun m!126587 () Bool)

(assert (=> b!144078 m!126587))

(assert (=> b!143756 d!34226))

(declare-fun d!34228 () Bool)

(declare-fun res!66564 () Bool)

(declare-fun e!85418 () Bool)

(assert (=> d!34228 (=> res!66564 e!85418)))

(assert (=> d!34228 (= res!66564 ((_ is Nil!2491) (list!857 lt!41357)))))

(assert (=> d!34228 (= (forall!377 (list!857 lt!41357) lambda!3466) e!85418)))

(declare-fun b!144079 () Bool)

(declare-fun e!85419 () Bool)

(assert (=> b!144079 (= e!85418 e!85419)))

(declare-fun res!66565 () Bool)

(assert (=> b!144079 (=> (not res!66565) (not e!85419))))

(assert (=> b!144079 (= res!66565 (dynLambda!835 lambda!3466 (h!7888 (list!857 lt!41357))))))

(declare-fun b!144080 () Bool)

(assert (=> b!144080 (= e!85419 (forall!377 (t!23895 (list!857 lt!41357)) lambda!3466))))

(assert (= (and d!34228 (not res!66564)) b!144079))

(assert (= (and b!144079 res!66565) b!144080))

(declare-fun b_lambda!2327 () Bool)

(assert (=> (not b_lambda!2327) (not b!144079)))

(declare-fun m!126589 () Bool)

(assert (=> b!144079 m!126589))

(declare-fun m!126591 () Bool)

(assert (=> b!144080 m!126591))

(assert (=> d!34178 d!34228))

(declare-fun d!34230 () Bool)

(declare-fun list!860 (Conc!673) List!2501)

(assert (=> d!34230 (= (list!857 lt!41357) (list!860 (c!29529 lt!41357)))))

(declare-fun bs!13018 () Bool)

(assert (= bs!13018 d!34230))

(declare-fun m!126593 () Bool)

(assert (=> bs!13018 m!126593))

(assert (=> d!34178 d!34230))

(declare-fun d!34232 () Bool)

(declare-fun lt!41452 () Bool)

(assert (=> d!34232 (= lt!41452 (forall!377 (list!857 lt!41357) lambda!3466))))

(declare-fun forall!381 (Conc!673 Int) Bool)

(assert (=> d!34232 (= lt!41452 (forall!381 (c!29529 lt!41357) lambda!3466))))

(assert (=> d!34232 (= (forall!379 lt!41357 lambda!3466) lt!41452)))

(declare-fun bs!13019 () Bool)

(assert (= bs!13019 d!34232))

(assert (=> bs!13019 m!126313))

(assert (=> bs!13019 m!126313))

(assert (=> bs!13019 m!126467))

(declare-fun m!126595 () Bool)

(assert (=> bs!13019 m!126595))

(assert (=> d!34178 d!34232))

(assert (=> d!34178 d!34116))

(assert (=> d!34136 d!34226))

(declare-fun d!34234 () Bool)

(assert (=> d!34234 (= (list!857 (_1!1458 (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170))))) (list!860 (c!29529 (_1!1458 (lex!155 thiss!17480 rules!1920 (print!80 thiss!17480 (singletonSeq!13 separatorToken!170)))))))))

(declare-fun bs!13020 () Bool)

(assert (= bs!13020 d!34234))

(declare-fun m!126597 () Bool)

(assert (=> bs!13020 m!126597))

(assert (=> d!34136 d!34234))

(assert (=> d!34136 d!34216))

(declare-fun d!34236 () Bool)

(assert (=> d!34236 (= (list!857 (singletonSeq!13 separatorToken!170)) (list!860 (c!29529 (singletonSeq!13 separatorToken!170))))))

(declare-fun bs!13021 () Bool)

(assert (= bs!13021 d!34236))

(declare-fun m!126599 () Bool)

(assert (=> bs!13021 m!126599))

(assert (=> d!34136 d!34236))

(declare-fun d!34238 () Bool)

(declare-fun lt!41453 () Int)

(assert (=> d!34238 (= lt!41453 (size!2154 (list!857 (_1!1458 lt!41366))))))

(assert (=> d!34238 (= lt!41453 (size!2155 (c!29529 (_1!1458 lt!41366))))))

(assert (=> d!34238 (= (size!2149 (_1!1458 lt!41366)) lt!41453)))

(declare-fun bs!13022 () Bool)

(assert (= bs!13022 d!34238))

(declare-fun m!126601 () Bool)

(assert (=> bs!13022 m!126601))

(assert (=> bs!13022 m!126601))

(declare-fun m!126603 () Bool)

(assert (=> bs!13022 m!126603))

(declare-fun m!126605 () Bool)

(assert (=> bs!13022 m!126605))

(assert (=> d!34136 d!34238))

(assert (=> d!34136 d!34224))

(assert (=> d!34136 d!34116))

(declare-fun d!34240 () Bool)

(declare-fun e!85422 () Bool)

(assert (=> d!34240 e!85422))

(declare-fun res!66568 () Bool)

(assert (=> d!34240 (=> (not res!66568) (not e!85422))))

(declare-fun lt!41456 () BalanceConc!1354)

(assert (=> d!34240 (= res!66568 (= (list!857 lt!41456) tokens!465))))

(declare-fun fromList!70 (List!2501) Conc!673)

(assert (=> d!34240 (= lt!41456 (BalanceConc!1355 (fromList!70 tokens!465)))))

(assert (=> d!34240 (= (fromListB!103 tokens!465) lt!41456)))

(declare-fun b!144083 () Bool)

(assert (=> b!144083 (= e!85422 (isBalanced!191 (fromList!70 tokens!465)))))

(assert (= (and d!34240 res!66568) b!144083))

(declare-fun m!126607 () Bool)

(assert (=> d!34240 m!126607))

(declare-fun m!126609 () Bool)

(assert (=> d!34240 m!126609))

(assert (=> b!144083 m!126609))

(assert (=> b!144083 m!126609))

(declare-fun m!126611 () Bool)

(assert (=> b!144083 m!126611))

(assert (=> d!34180 d!34240))

(declare-fun d!34242 () Bool)

(declare-fun lt!41459 () Token!594)

(declare-fun apply!303 (List!2501 Int) Token!594)

(assert (=> d!34242 (= lt!41459 (apply!303 (list!857 (_1!1458 lt!41366)) 0))))

(declare-fun apply!304 (Conc!673 Int) Token!594)

(assert (=> d!34242 (= lt!41459 (apply!304 (c!29529 (_1!1458 lt!41366)) 0))))

(declare-fun e!85425 () Bool)

(assert (=> d!34242 e!85425))

(declare-fun res!66571 () Bool)

(assert (=> d!34242 (=> (not res!66571) (not e!85425))))

(assert (=> d!34242 (= res!66571 (<= 0 0))))

(assert (=> d!34242 (= (apply!300 (_1!1458 lt!41366) 0) lt!41459)))

(declare-fun b!144086 () Bool)

(assert (=> b!144086 (= e!85425 (< 0 (size!2149 (_1!1458 lt!41366))))))

(assert (= (and d!34242 res!66571) b!144086))

(assert (=> d!34242 m!126601))

(assert (=> d!34242 m!126601))

(declare-fun m!126613 () Bool)

(assert (=> d!34242 m!126613))

(declare-fun m!126615 () Bool)

(assert (=> d!34242 m!126615))

(assert (=> b!144086 m!126287))

(assert (=> b!143754 d!34242))

(declare-fun d!34244 () Bool)

(assert (=> d!34244 true))

(declare-fun order!1205 () Int)

(declare-fun lambda!3479 () Int)

(declare-fun dynLambda!842 (Int Int) Int)

(assert (=> d!34244 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465))))) (dynLambda!842 order!1205 lambda!3479))))

(declare-fun Forall2!90 (Int) Bool)

(assert (=> d!34244 (= (equivClasses!128 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465))))) (Forall2!90 lambda!3479))))

(declare-fun bs!13023 () Bool)

(assert (= bs!13023 d!34244))

(declare-fun m!126617 () Bool)

(assert (=> bs!13023 m!126617))

(assert (=> b!143735 d!34244))

(declare-fun d!34246 () Bool)

(assert (=> d!34246 (= (inv!3259 (tag!603 (h!7889 (t!23896 rules!1920)))) (= (mod (str.len (value!16427 (tag!603 (h!7889 (t!23896 rules!1920))))) 2) 0))))

(assert (=> b!143975 d!34246))

(declare-fun d!34248 () Bool)

(declare-fun res!66574 () Bool)

(declare-fun e!85428 () Bool)

(assert (=> d!34248 (=> (not res!66574) (not e!85428))))

(assert (=> d!34248 (= res!66574 (semiInverseModEq!145 (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toValue!1044 (transformation!425 (h!7889 (t!23896 rules!1920))))))))

(assert (=> d!34248 (= (inv!3263 (transformation!425 (h!7889 (t!23896 rules!1920)))) e!85428)))

(declare-fun b!144091 () Bool)

(assert (=> b!144091 (= e!85428 (equivClasses!128 (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toValue!1044 (transformation!425 (h!7889 (t!23896 rules!1920))))))))

(assert (= (and d!34248 res!66574) b!144091))

(declare-fun m!126619 () Bool)

(assert (=> d!34248 m!126619))

(declare-fun m!126621 () Bool)

(assert (=> b!144091 m!126621))

(assert (=> b!143975 d!34248))

(declare-fun d!34250 () Bool)

(declare-fun c!29591 () Bool)

(assert (=> d!34250 (= c!29591 ((_ is Node!672) (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))))))

(declare-fun e!85433 () Bool)

(assert (=> d!34250 (= (inv!3266 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))) e!85433)))

(declare-fun b!144098 () Bool)

(declare-fun inv!3270 (Conc!672) Bool)

(assert (=> b!144098 (= e!85433 (inv!3270 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))))))

(declare-fun b!144099 () Bool)

(declare-fun e!85434 () Bool)

(assert (=> b!144099 (= e!85433 e!85434)))

(declare-fun res!66577 () Bool)

(assert (=> b!144099 (= res!66577 (not ((_ is Leaf!1224) (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))))))))

(assert (=> b!144099 (=> res!66577 e!85434)))

(declare-fun b!144100 () Bool)

(declare-fun inv!3271 (Conc!672) Bool)

(assert (=> b!144100 (= e!85434 (inv!3271 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))))))

(assert (= (and d!34250 c!29591) b!144098))

(assert (= (and d!34250 (not c!29591)) b!144099))

(assert (= (and b!144099 (not res!66577)) b!144100))

(declare-fun m!126623 () Bool)

(assert (=> b!144098 m!126623))

(declare-fun m!126625 () Bool)

(assert (=> b!144100 m!126625))

(assert (=> b!143759 d!34250))

(declare-fun d!34252 () Bool)

(declare-fun charsToBigInt!1 (List!2499) Int)

(assert (=> d!34252 (= (inv!17 (value!16428 (h!7888 tokens!465))) (= (charsToBigInt!1 (text!3577 (value!16428 (h!7888 tokens!465)))) (value!16420 (value!16428 (h!7888 tokens!465)))))))

(declare-fun bs!13024 () Bool)

(assert (= bs!13024 d!34252))

(declare-fun m!126627 () Bool)

(assert (=> bs!13024 m!126627))

(assert (=> b!143717 d!34252))

(declare-fun d!34254 () Bool)

(declare-fun res!66578 () Bool)

(declare-fun e!85435 () Bool)

(assert (=> d!34254 (=> res!66578 e!85435)))

(assert (=> d!34254 (= res!66578 ((_ is Nil!2491) (t!23895 tokens!465)))))

(assert (=> d!34254 (= (forall!377 (t!23895 tokens!465) lambda!3450) e!85435)))

(declare-fun b!144101 () Bool)

(declare-fun e!85436 () Bool)

(assert (=> b!144101 (= e!85435 e!85436)))

(declare-fun res!66579 () Bool)

(assert (=> b!144101 (=> (not res!66579) (not e!85436))))

(assert (=> b!144101 (= res!66579 (dynLambda!835 lambda!3450 (h!7888 (t!23895 tokens!465))))))

(declare-fun b!144102 () Bool)

(assert (=> b!144102 (= e!85436 (forall!377 (t!23895 (t!23895 tokens!465)) lambda!3450))))

(assert (= (and d!34254 (not res!66578)) b!144101))

(assert (= (and b!144101 res!66579) b!144102))

(declare-fun b_lambda!2329 () Bool)

(assert (=> (not b_lambda!2329) (not b!144101)))

(declare-fun m!126629 () Bool)

(assert (=> b!144101 m!126629))

(declare-fun m!126631 () Bool)

(assert (=> b!144102 m!126631))

(assert (=> b!143732 d!34254))

(declare-fun d!34256 () Bool)

(assert (=> d!34256 (= (isEmpty!957 (originalCharacters!468 separatorToken!170)) ((_ is Nil!2490) (originalCharacters!468 separatorToken!170)))))

(assert (=> d!34134 d!34256))

(declare-fun d!34258 () Bool)

(assert (=> d!34258 true))

(declare-fun order!1207 () Int)

(declare-fun lambda!3482 () Int)

(declare-fun dynLambda!843 (Int Int) Int)

(assert (=> d!34258 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) (dynLambda!843 order!1207 lambda!3482))))

(assert (=> d!34258 true))

(assert (=> d!34258 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (rule!932 separatorToken!170)))) (dynLambda!843 order!1207 lambda!3482))))

(declare-fun Forall!114 (Int) Bool)

(assert (=> d!34258 (= (semiInverseModEq!145 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toValue!1044 (transformation!425 (rule!932 separatorToken!170)))) (Forall!114 lambda!3482))))

(declare-fun bs!13025 () Bool)

(assert (= bs!13025 d!34258))

(declare-fun m!126633 () Bool)

(assert (=> bs!13025 m!126633))

(assert (=> d!34176 d!34258))

(declare-fun d!34260 () Bool)

(assert (=> d!34260 true))

(declare-fun lt!41462 () Bool)

(declare-fun rulesValidInductive!88 (LexerInterface!311 List!2502) Bool)

(assert (=> d!34260 (= lt!41462 (rulesValidInductive!88 thiss!17480 rules!1920))))

(declare-fun lambda!3485 () Int)

(declare-fun forall!382 (List!2502 Int) Bool)

(assert (=> d!34260 (= lt!41462 (forall!382 rules!1920 lambda!3485))))

(assert (=> d!34260 (= (rulesValid!111 thiss!17480 rules!1920) lt!41462)))

(declare-fun bs!13026 () Bool)

(assert (= bs!13026 d!34260))

(declare-fun m!126635 () Bool)

(assert (=> bs!13026 m!126635))

(declare-fun m!126637 () Bool)

(assert (=> bs!13026 m!126637))

(assert (=> d!34118 d!34260))

(declare-fun d!34262 () Bool)

(declare-fun list!861 (Conc!672) List!2500)

(assert (=> d!34262 (= (list!856 e!85315) (list!861 (c!29527 e!85315)))))

(declare-fun bs!13027 () Bool)

(assert (= bs!13027 d!34262))

(declare-fun m!126639 () Bool)

(assert (=> bs!13027 m!126639))

(assert (=> bm!5610 d!34262))

(declare-fun d!34264 () Bool)

(assert (=> d!34264 (= (list!856 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))) (list!861 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))))))

(declare-fun bs!13028 () Bool)

(assert (= bs!13028 d!34264))

(declare-fun m!126641 () Bool)

(assert (=> bs!13028 m!126641))

(assert (=> b!143741 d!34264))

(declare-fun d!34266 () Bool)

(declare-fun lt!41465 () BalanceConc!1352)

(assert (=> d!34266 (= (list!856 lt!41465) (originalCharacters!468 (h!7888 tokens!465)))))

(assert (=> d!34266 (= lt!41465 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))))

(assert (=> d!34266 (= (charsOf!90 (h!7888 tokens!465)) lt!41465)))

(declare-fun b_lambda!2331 () Bool)

(assert (=> (not b_lambda!2331) (not d!34266)))

(assert (=> d!34266 t!23915))

(declare-fun b_and!7661 () Bool)

(assert (= b_and!7635 (and (=> t!23915 result!6778) b_and!7661)))

(assert (=> d!34266 t!23951))

(declare-fun b_and!7663 () Bool)

(assert (= b_and!7659 (and (=> t!23951 result!6818) b_and!7663)))

(assert (=> d!34266 t!23917))

(declare-fun b_and!7665 () Bool)

(assert (= b_and!7637 (and (=> t!23917 result!6780) b_and!7665)))

(assert (=> d!34266 t!23913))

(declare-fun b_and!7667 () Bool)

(assert (= b_and!7633 (and (=> t!23913 result!6776) b_and!7667)))

(assert (=> d!34266 t!23947))

(declare-fun b_and!7669 () Bool)

(assert (= b_and!7655 (and (=> t!23947 result!6810) b_and!7669)))

(declare-fun m!126643 () Bool)

(assert (=> d!34266 m!126643))

(assert (=> d!34266 m!126307))

(assert (=> bm!5609 d!34266))

(declare-fun d!34268 () Bool)

(assert (=> d!34268 (= (inv!3259 (tag!603 (rule!932 (h!7888 (t!23895 tokens!465))))) (= (mod (str.len (value!16427 (tag!603 (rule!932 (h!7888 (t!23895 tokens!465)))))) 2) 0))))

(assert (=> b!143995 d!34268))

(declare-fun d!34270 () Bool)

(declare-fun res!66582 () Bool)

(declare-fun e!85439 () Bool)

(assert (=> d!34270 (=> (not res!66582) (not e!85439))))

(assert (=> d!34270 (= res!66582 (semiInverseModEq!145 (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toValue!1044 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))))))

(assert (=> d!34270 (= (inv!3263 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) e!85439)))

(declare-fun b!144111 () Bool)

(assert (=> b!144111 (= e!85439 (equivClasses!128 (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toValue!1044 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))))))

(assert (= (and d!34270 res!66582) b!144111))

(declare-fun m!126645 () Bool)

(assert (=> d!34270 m!126645))

(declare-fun m!126647 () Bool)

(assert (=> b!144111 m!126647))

(assert (=> b!143995 d!34270))

(declare-fun d!34272 () Bool)

(declare-fun res!66585 () Bool)

(declare-fun e!85444 () Bool)

(assert (=> d!34272 (=> (not res!66585) (not e!85444))))

(assert (=> d!34272 (= res!66585 (not (isEmpty!957 (originalCharacters!468 (h!7888 (t!23895 tokens!465))))))))

(assert (=> d!34272 (= (inv!3262 (h!7888 (t!23895 tokens!465))) e!85444)))

(declare-fun b!144116 () Bool)

(declare-fun res!66586 () Bool)

(assert (=> b!144116 (=> (not res!66586) (not e!85444))))

(assert (=> b!144116 (= res!66586 (= (originalCharacters!468 (h!7888 (t!23895 tokens!465))) (list!856 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (value!16428 (h!7888 (t!23895 tokens!465)))))))))

(declare-fun b!144117 () Bool)

(assert (=> b!144117 (= e!85444 (= (size!2148 (h!7888 (t!23895 tokens!465))) (size!2153 (originalCharacters!468 (h!7888 (t!23895 tokens!465))))))))

(assert (= (and d!34272 res!66585) b!144116))

(assert (= (and b!144116 res!66586) b!144117))

(declare-fun b_lambda!2333 () Bool)

(assert (=> (not b_lambda!2333) (not b!144116)))

(declare-fun t!23958 () Bool)

(declare-fun tb!4501 () Bool)

(assert (=> (and b!143674 (= (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) t!23958) tb!4501))

(declare-fun b!144122 () Bool)

(declare-fun e!85445 () Bool)

(declare-fun tp!76018 () Bool)

(assert (=> b!144122 (= e!85445 (and (inv!3266 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (value!16428 (h!7888 (t!23895 tokens!465)))))) tp!76018))))

(declare-fun result!6820 () Bool)

(assert (=> tb!4501 (= result!6820 (and (inv!3267 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (value!16428 (h!7888 (t!23895 tokens!465))))) e!85445))))

(assert (= tb!4501 b!144122))

(declare-fun m!126649 () Bool)

(assert (=> b!144122 m!126649))

(declare-fun m!126651 () Bool)

(assert (=> tb!4501 m!126651))

(assert (=> b!144116 t!23958))

(declare-fun b_and!7671 () Bool)

(assert (= b_and!7665 (and (=> t!23958 result!6820) b_and!7671)))

(declare-fun tb!4503 () Bool)

(declare-fun t!23960 () Bool)

(assert (=> (and b!143976 (= (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) t!23960) tb!4503))

(declare-fun result!6822 () Bool)

(assert (= result!6822 result!6820))

(assert (=> b!144116 t!23960))

(declare-fun b_and!7673 () Bool)

(assert (= b_and!7669 (and (=> t!23960 result!6822) b_and!7673)))

(declare-fun t!23962 () Bool)

(declare-fun tb!4505 () Bool)

(assert (=> (and b!143996 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) t!23962) tb!4505))

(declare-fun result!6824 () Bool)

(assert (= result!6824 result!6820))

(assert (=> b!144116 t!23962))

(declare-fun b_and!7675 () Bool)

(assert (= b_and!7663 (and (=> t!23962 result!6824) b_and!7675)))

(declare-fun t!23964 () Bool)

(declare-fun tb!4507 () Bool)

(assert (=> (and b!143662 (= (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) t!23964) tb!4507))

(declare-fun result!6826 () Bool)

(assert (= result!6826 result!6820))

(assert (=> b!144116 t!23964))

(declare-fun b_and!7677 () Bool)

(assert (= b_and!7661 (and (=> t!23964 result!6826) b_and!7677)))

(declare-fun tb!4509 () Bool)

(declare-fun t!23966 () Bool)

(assert (=> (and b!143677 (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) t!23966) tb!4509))

(declare-fun result!6828 () Bool)

(assert (= result!6828 result!6820))

(assert (=> b!144116 t!23966))

(declare-fun b_and!7679 () Bool)

(assert (= b_and!7667 (and (=> t!23966 result!6828) b_and!7679)))

(declare-fun m!126653 () Bool)

(assert (=> d!34272 m!126653))

(declare-fun m!126655 () Bool)

(assert (=> b!144116 m!126655))

(assert (=> b!144116 m!126655))

(declare-fun m!126657 () Bool)

(assert (=> b!144116 m!126657))

(declare-fun m!126659 () Bool)

(assert (=> b!144117 m!126659))

(assert (=> b!143993 d!34272))

(declare-fun bs!13029 () Bool)

(declare-fun d!34274 () Bool)

(assert (= bs!13029 (and d!34274 d!34244)))

(declare-fun lambda!3486 () Int)

(assert (=> bs!13029 (= (= (toValue!1044 (transformation!425 (h!7889 rules!1920))) (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465))))) (= lambda!3486 lambda!3479))))

(assert (=> d!34274 true))

(assert (=> d!34274 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (dynLambda!842 order!1205 lambda!3486))))

(assert (=> d!34274 (= (equivClasses!128 (toChars!903 (transformation!425 (h!7889 rules!1920))) (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (Forall2!90 lambda!3486))))

(declare-fun bs!13030 () Bool)

(assert (= bs!13030 d!34274))

(declare-fun m!126661 () Bool)

(assert (=> bs!13030 m!126661))

(assert (=> b!143736 d!34274))

(declare-fun d!34276 () Bool)

(declare-fun lt!41471 () Int)

(assert (=> d!34276 (>= lt!41471 0)))

(declare-fun e!85451 () Int)

(assert (=> d!34276 (= lt!41471 e!85451)))

(declare-fun c!29597 () Bool)

(assert (=> d!34276 (= c!29597 ((_ is Nil!2491) (list!857 lt!41357)))))

(assert (=> d!34276 (= (size!2154 (list!857 lt!41357)) lt!41471)))

(declare-fun b!144132 () Bool)

(assert (=> b!144132 (= e!85451 0)))

(declare-fun b!144133 () Bool)

(assert (=> b!144133 (= e!85451 (+ 1 (size!2154 (t!23895 (list!857 lt!41357)))))))

(assert (= (and d!34276 c!29597) b!144132))

(assert (= (and d!34276 (not c!29597)) b!144133))

(declare-fun m!126677 () Bool)

(assert (=> b!144133 m!126677))

(assert (=> d!34140 d!34276))

(assert (=> d!34140 d!34230))

(declare-fun d!34278 () Bool)

(declare-fun lt!41474 () Int)

(assert (=> d!34278 (= lt!41474 (size!2154 (list!860 (c!29529 lt!41357))))))

(assert (=> d!34278 (= lt!41474 (ite ((_ is Empty!673) (c!29529 lt!41357)) 0 (ite ((_ is Leaf!1225) (c!29529 lt!41357)) (csize!1577 (c!29529 lt!41357)) (csize!1576 (c!29529 lt!41357)))))))

(assert (=> d!34278 (= (size!2155 (c!29529 lt!41357)) lt!41474)))

(declare-fun bs!13031 () Bool)

(assert (= bs!13031 d!34278))

(assert (=> bs!13031 m!126593))

(assert (=> bs!13031 m!126593))

(declare-fun m!126683 () Bool)

(assert (=> bs!13031 m!126683))

(assert (=> d!34140 d!34278))

(declare-fun b!144142 () Bool)

(declare-fun e!85460 () Bool)

(declare-fun call!5622 () Bool)

(assert (=> b!144142 (= e!85460 call!5622)))

(declare-fun b!144143 () Bool)

(declare-fun e!85458 () Bool)

(assert (=> b!144143 (= e!85458 e!85460)))

(declare-fun res!66597 () Bool)

(declare-fun rulesUseDisjointChars!4 (Rule!650 Rule!650) Bool)

(assert (=> b!144143 (= res!66597 (rulesUseDisjointChars!4 (h!7889 rules!1920) (h!7889 rules!1920)))))

(assert (=> b!144143 (=> (not res!66597) (not e!85460))))

(declare-fun b!144144 () Bool)

(declare-fun e!85459 () Bool)

(assert (=> b!144144 (= e!85458 e!85459)))

(declare-fun res!66596 () Bool)

(assert (=> b!144144 (= res!66596 (not ((_ is Cons!2492) rules!1920)))))

(assert (=> b!144144 (=> res!66596 e!85459)))

(declare-fun d!34282 () Bool)

(declare-fun c!29600 () Bool)

(assert (=> d!34282 (= c!29600 (and ((_ is Cons!2492) rules!1920) (not (= (isSeparator!425 (h!7889 rules!1920)) (isSeparator!425 (h!7889 rules!1920))))))))

(assert (=> d!34282 (= (ruleDisjointCharsFromAllFromOtherType!4 (h!7889 rules!1920) rules!1920) e!85458)))

(declare-fun b!144145 () Bool)

(assert (=> b!144145 (= e!85459 call!5622)))

(declare-fun bm!5617 () Bool)

(assert (=> bm!5617 (= call!5622 (ruleDisjointCharsFromAllFromOtherType!4 (h!7889 rules!1920) (t!23896 rules!1920)))))

(assert (= (and d!34282 c!29600) b!144143))

(assert (= (and d!34282 (not c!29600)) b!144144))

(assert (= (and b!144143 res!66597) b!144142))

(assert (= (and b!144144 (not res!66596)) b!144145))

(assert (= (or b!144142 b!144145) bm!5617))

(declare-fun m!126685 () Bool)

(assert (=> b!144143 m!126685))

(declare-fun m!126687 () Bool)

(assert (=> bm!5617 m!126687))

(assert (=> b!143725 d!34282))

(declare-fun bs!13032 () Bool)

(declare-fun d!34284 () Bool)

(assert (= bs!13032 (and d!34284 d!34258)))

(declare-fun lambda!3487 () Int)

(assert (=> bs!13032 (= (and (= (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) (= (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toValue!1044 (transformation!425 (rule!932 separatorToken!170))))) (= lambda!3487 lambda!3482))))

(assert (=> d!34284 true))

(assert (=> d!34284 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) (dynLambda!843 order!1207 lambda!3487))))

(assert (=> d!34284 true))

(assert (=> d!34284 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465))))) (dynLambda!843 order!1207 lambda!3487))))

(assert (=> d!34284 (= (semiInverseModEq!145 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465))))) (Forall!114 lambda!3487))))

(declare-fun bs!13033 () Bool)

(assert (= bs!13033 d!34284))

(declare-fun m!126689 () Bool)

(assert (=> bs!13033 m!126689))

(assert (=> d!34128 d!34284))

(declare-fun b!144157 () Bool)

(declare-fun e!85467 () List!2500)

(assert (=> b!144157 (= e!85467 (Cons!2490 (h!7887 call!5613) (++!530 (t!23894 call!5613) lt!41410)))))

(declare-fun d!34286 () Bool)

(declare-fun e!85468 () Bool)

(assert (=> d!34286 e!85468))

(declare-fun res!66604 () Bool)

(assert (=> d!34286 (=> (not res!66604) (not e!85468))))

(declare-fun lt!41482 () List!2500)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!351 (List!2500) (InoxSet C!2220))

(assert (=> d!34286 (= res!66604 (= (content!351 lt!41482) ((_ map or) (content!351 call!5613) (content!351 lt!41410))))))

(assert (=> d!34286 (= lt!41482 e!85467)))

(declare-fun c!29603 () Bool)

(assert (=> d!34286 (= c!29603 ((_ is Nil!2490) call!5613))))

(assert (=> d!34286 (= (++!530 call!5613 lt!41410) lt!41482)))

(declare-fun b!144158 () Bool)

(declare-fun res!66605 () Bool)

(assert (=> b!144158 (=> (not res!66605) (not e!85468))))

(assert (=> b!144158 (= res!66605 (= (size!2153 lt!41482) (+ (size!2153 call!5613) (size!2153 lt!41410))))))

(declare-fun b!144156 () Bool)

(assert (=> b!144156 (= e!85467 lt!41410)))

(declare-fun b!144159 () Bool)

(assert (=> b!144159 (= e!85468 (or (not (= lt!41410 Nil!2490)) (= lt!41482 call!5613)))))

(assert (= (and d!34286 c!29603) b!144156))

(assert (= (and d!34286 (not c!29603)) b!144157))

(assert (= (and d!34286 res!66604) b!144158))

(assert (= (and b!144158 res!66605) b!144159))

(declare-fun m!126697 () Bool)

(assert (=> b!144157 m!126697))

(declare-fun m!126701 () Bool)

(assert (=> d!34286 m!126701))

(declare-fun m!126705 () Bool)

(assert (=> d!34286 m!126705))

(declare-fun m!126709 () Bool)

(assert (=> d!34286 m!126709))

(declare-fun m!126711 () Bool)

(assert (=> b!144158 m!126711))

(declare-fun m!126713 () Bool)

(assert (=> b!144158 m!126713))

(declare-fun m!126715 () Bool)

(assert (=> b!144158 m!126715))

(assert (=> b!143929 d!34286))

(declare-fun d!34292 () Bool)

(declare-fun charsToInt!0 (List!2499) (_ BitVec 32))

(assert (=> d!34292 (= (inv!16 (value!16428 separatorToken!170)) (= (charsToInt!0 (text!3576 (value!16428 separatorToken!170))) (value!16419 (value!16428 separatorToken!170))))))

(declare-fun bs!13036 () Bool)

(assert (= bs!13036 d!34292))

(declare-fun m!126719 () Bool)

(assert (=> bs!13036 m!126719))

(assert (=> b!143711 d!34292))

(declare-fun d!34296 () Bool)

(assert (=> d!34296 (= (list!856 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))) (list!861 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))))))

(declare-fun bs!13037 () Bool)

(assert (= bs!13037 d!34296))

(declare-fun m!126721 () Bool)

(assert (=> bs!13037 m!126721))

(assert (=> b!143757 d!34296))

(declare-fun d!34298 () Bool)

(declare-fun res!66611 () Bool)

(declare-fun e!85474 () Bool)

(assert (=> d!34298 (=> res!66611 e!85474)))

(assert (=> d!34298 (= res!66611 ((_ is Nil!2492) rules!1920))))

(assert (=> d!34298 (= (noDuplicateTag!111 thiss!17480 rules!1920 Nil!2494) e!85474)))

(declare-fun b!144165 () Bool)

(declare-fun e!85475 () Bool)

(assert (=> b!144165 (= e!85474 e!85475)))

(declare-fun res!66612 () Bool)

(assert (=> b!144165 (=> (not res!66612) (not e!85475))))

(declare-fun contains!392 (List!2504 String!3315) Bool)

(assert (=> b!144165 (= res!66612 (not (contains!392 Nil!2494 (tag!603 (h!7889 rules!1920)))))))

(declare-fun b!144166 () Bool)

(assert (=> b!144166 (= e!85475 (noDuplicateTag!111 thiss!17480 (t!23896 rules!1920) (Cons!2494 (tag!603 (h!7889 rules!1920)) Nil!2494)))))

(assert (= (and d!34298 (not res!66611)) b!144165))

(assert (= (and b!144165 res!66612) b!144166))

(declare-fun m!126723 () Bool)

(assert (=> b!144165 m!126723))

(declare-fun m!126725 () Bool)

(assert (=> b!144166 m!126725))

(assert (=> b!143715 d!34298))

(declare-fun d!34300 () Bool)

(assert (=> d!34300 (= (list!856 (ite c!29570 call!5616 call!5614)) (list!861 (c!29527 (ite c!29570 call!5616 call!5614))))))

(declare-fun bs!13038 () Bool)

(assert (= bs!13038 d!34300))

(declare-fun m!126727 () Bool)

(assert (=> bs!13038 m!126727))

(assert (=> bm!5608 d!34300))

(declare-fun d!34302 () Bool)

(declare-fun charsToBigInt!0 (List!2499 Int) Int)

(assert (=> d!34302 (= (inv!15 (value!16428 separatorToken!170)) (= (charsToBigInt!0 (text!3578 (value!16428 separatorToken!170)) 0) (value!16423 (value!16428 separatorToken!170))))))

(declare-fun bs!13039 () Bool)

(assert (= bs!13039 d!34302))

(declare-fun m!126735 () Bool)

(assert (=> bs!13039 m!126735))

(assert (=> b!143707 d!34302))

(declare-fun d!34306 () Bool)

(assert (=> d!34306 (= (isEmpty!957 (originalCharacters!468 (h!7888 tokens!465))) ((_ is Nil!2490) (originalCharacters!468 (h!7888 tokens!465))))))

(assert (=> d!34138 d!34306))

(declare-fun d!34308 () Bool)

(declare-fun lt!41487 () Bool)

(assert (=> d!34308 (= lt!41487 (isEmpty!957 (list!856 (_2!1458 lt!41366))))))

(assert (=> d!34308 (= lt!41487 (isEmpty!960 (c!29527 (_2!1458 lt!41366))))))

(assert (=> d!34308 (= (isEmpty!958 (_2!1458 lt!41366)) lt!41487)))

(declare-fun bs!13040 () Bool)

(assert (= bs!13040 d!34308))

(declare-fun m!126737 () Bool)

(assert (=> bs!13040 m!126737))

(assert (=> bs!13040 m!126737))

(declare-fun m!126739 () Bool)

(assert (=> bs!13040 m!126739))

(declare-fun m!126741 () Bool)

(assert (=> bs!13040 m!126741))

(assert (=> b!143755 d!34308))

(declare-fun d!34310 () Bool)

(assert (=> d!34310 (= (inv!16 (value!16428 (h!7888 tokens!465))) (= (charsToInt!0 (text!3576 (value!16428 (h!7888 tokens!465)))) (value!16419 (value!16428 (h!7888 tokens!465)))))))

(declare-fun bs!13041 () Bool)

(assert (= bs!13041 d!34310))

(declare-fun m!126743 () Bool)

(assert (=> bs!13041 m!126743))

(assert (=> b!143720 d!34310))

(declare-fun bs!13042 () Bool)

(declare-fun d!34312 () Bool)

(assert (= bs!13042 (and d!34312 d!34244)))

(declare-fun lambda!3488 () Int)

(assert (=> bs!13042 (= (= (toValue!1044 (transformation!425 (rule!932 separatorToken!170))) (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465))))) (= lambda!3488 lambda!3479))))

(declare-fun bs!13043 () Bool)

(assert (= bs!13043 (and d!34312 d!34274)))

(assert (=> bs!13043 (= (= (toValue!1044 (transformation!425 (rule!932 separatorToken!170))) (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (= lambda!3488 lambda!3486))))

(assert (=> d!34312 true))

(assert (=> d!34312 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (rule!932 separatorToken!170)))) (dynLambda!842 order!1205 lambda!3488))))

(assert (=> d!34312 (= (equivClasses!128 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toValue!1044 (transformation!425 (rule!932 separatorToken!170)))) (Forall2!90 lambda!3488))))

(declare-fun bs!13044 () Bool)

(assert (= bs!13044 d!34312))

(declare-fun m!126745 () Bool)

(assert (=> bs!13044 m!126745))

(assert (=> b!143945 d!34312))

(declare-fun d!34314 () Bool)

(declare-fun isBalanced!192 (Conc!672) Bool)

(assert (=> d!34314 (= (inv!3267 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))) (isBalanced!192 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))))))

(declare-fun bs!13045 () Bool)

(assert (= bs!13045 d!34314))

(declare-fun m!126747 () Bool)

(assert (=> bs!13045 m!126747))

(assert (=> tb!4467 d!34314))

(declare-fun d!34316 () Bool)

(assert (=> d!34316 (= (inv!15 (value!16428 (h!7888 tokens!465))) (= (charsToBigInt!0 (text!3578 (value!16428 (h!7888 tokens!465))) 0) (value!16423 (value!16428 (h!7888 tokens!465)))))))

(declare-fun bs!13046 () Bool)

(assert (= bs!13046 d!34316))

(declare-fun m!126749 () Bool)

(assert (=> bs!13046 m!126749))

(assert (=> b!143716 d!34316))

(declare-fun d!34318 () Bool)

(declare-fun c!29604 () Bool)

(assert (=> d!34318 (= c!29604 ((_ is Node!672) (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))))))

(declare-fun e!85481 () Bool)

(assert (=> d!34318 (= (inv!3266 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))) e!85481)))

(declare-fun b!144172 () Bool)

(assert (=> b!144172 (= e!85481 (inv!3270 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))))))

(declare-fun b!144173 () Bool)

(declare-fun e!85482 () Bool)

(assert (=> b!144173 (= e!85481 e!85482)))

(declare-fun res!66618 () Bool)

(assert (=> b!144173 (= res!66618 (not ((_ is Leaf!1224) (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))))))))

(assert (=> b!144173 (=> res!66618 e!85482)))

(declare-fun b!144174 () Bool)

(assert (=> b!144174 (= e!85482 (inv!3271 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))))))

(assert (= (and d!34318 c!29604) b!144172))

(assert (= (and d!34318 (not c!29604)) b!144173))

(assert (= (and b!144173 (not res!66618)) b!144174))

(declare-fun m!126751 () Bool)

(assert (=> b!144172 m!126751))

(declare-fun m!126753 () Bool)

(assert (=> b!144174 m!126753))

(assert (=> b!143747 d!34318))

(declare-fun d!34320 () Bool)

(assert (=> d!34320 (= (inv!3267 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))) (isBalanced!192 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))))))

(declare-fun bs!13047 () Bool)

(assert (= bs!13047 d!34320))

(declare-fun m!126755 () Bool)

(assert (=> bs!13047 m!126755))

(assert (=> tb!4473 d!34320))

(declare-fun e!85483 () List!2500)

(declare-fun b!144178 () Bool)

(assert (=> b!144178 (= e!85483 (Cons!2490 (h!7887 call!5615) (++!530 (t!23894 call!5615) (ite c!29570 lt!41410 call!5612))))))

(declare-fun d!34322 () Bool)

(declare-fun e!85484 () Bool)

(assert (=> d!34322 e!85484))

(declare-fun res!66619 () Bool)

(assert (=> d!34322 (=> (not res!66619) (not e!85484))))

(declare-fun lt!41488 () List!2500)

(assert (=> d!34322 (= res!66619 (= (content!351 lt!41488) ((_ map or) (content!351 call!5615) (content!351 (ite c!29570 lt!41410 call!5612)))))))

(assert (=> d!34322 (= lt!41488 e!85483)))

(declare-fun c!29605 () Bool)

(assert (=> d!34322 (= c!29605 ((_ is Nil!2490) call!5615))))

(assert (=> d!34322 (= (++!530 call!5615 (ite c!29570 lt!41410 call!5612)) lt!41488)))

(declare-fun b!144179 () Bool)

(declare-fun res!66620 () Bool)

(assert (=> b!144179 (=> (not res!66620) (not e!85484))))

(assert (=> b!144179 (= res!66620 (= (size!2153 lt!41488) (+ (size!2153 call!5615) (size!2153 (ite c!29570 lt!41410 call!5612)))))))

(declare-fun b!144177 () Bool)

(assert (=> b!144177 (= e!85483 (ite c!29570 lt!41410 call!5612))))

(declare-fun b!144180 () Bool)

(assert (=> b!144180 (= e!85484 (or (not (= (ite c!29570 lt!41410 call!5612) Nil!2490)) (= lt!41488 call!5615)))))

(assert (= (and d!34322 c!29605) b!144177))

(assert (= (and d!34322 (not c!29605)) b!144178))

(assert (= (and d!34322 res!66619) b!144179))

(assert (= (and b!144179 res!66620) b!144180))

(declare-fun m!126759 () Bool)

(assert (=> b!144178 m!126759))

(declare-fun m!126761 () Bool)

(assert (=> d!34322 m!126761))

(declare-fun m!126763 () Bool)

(assert (=> d!34322 m!126763))

(declare-fun m!126765 () Bool)

(assert (=> d!34322 m!126765))

(declare-fun m!126767 () Bool)

(assert (=> b!144179 m!126767))

(declare-fun m!126769 () Bool)

(assert (=> b!144179 m!126769))

(declare-fun m!126771 () Bool)

(assert (=> b!144179 m!126771))

(assert (=> bm!5611 d!34322))

(declare-fun b!144244 () Bool)

(declare-fun res!66654 () Bool)

(declare-fun e!85522 () Bool)

(assert (=> b!144244 (=> (not res!66654) (not e!85522))))

(declare-fun lt!41522 () Option!209)

(declare-fun matchR!59 (Regex!649 List!2500) Bool)

(declare-fun get!674 (Option!209) tuple2!2486)

(assert (=> b!144244 (= res!66654 (matchR!59 (regex!425 (rule!932 (_1!1459 (get!674 lt!41522)))) (list!856 (charsOf!90 (_1!1459 (get!674 lt!41522))))))))

(declare-fun b!144245 () Bool)

(declare-fun res!66655 () Bool)

(assert (=> b!144245 (=> (not res!66655) (not e!85522))))

(declare-fun apply!306 (TokenValueInjection!666 BalanceConc!1352) TokenValue!447)

(declare-fun seqFromList!240 (List!2500) BalanceConc!1352)

(assert (=> b!144245 (= res!66655 (= (value!16428 (_1!1459 (get!674 lt!41522))) (apply!306 (transformation!425 (rule!932 (_1!1459 (get!674 lt!41522)))) (seqFromList!240 (originalCharacters!468 (_1!1459 (get!674 lt!41522)))))))))

(declare-fun bm!5625 () Bool)

(declare-fun call!5630 () Option!209)

(declare-fun maxPrefixOneRule!47 (LexerInterface!311 Rule!650 List!2500) Option!209)

(assert (=> bm!5625 (= call!5630 (maxPrefixOneRule!47 thiss!17480 (h!7889 rules!1920) (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410)))))

(declare-fun b!144246 () Bool)

(declare-fun res!66652 () Bool)

(assert (=> b!144246 (=> (not res!66652) (not e!85522))))

(assert (=> b!144246 (= res!66652 (= (++!530 (list!856 (charsOf!90 (_1!1459 (get!674 lt!41522)))) (_2!1459 (get!674 lt!41522))) (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410)))))

(declare-fun b!144247 () Bool)

(declare-fun contains!394 (List!2502 Rule!650) Bool)

(assert (=> b!144247 (= e!85522 (contains!394 rules!1920 (rule!932 (_1!1459 (get!674 lt!41522)))))))

(declare-fun d!34326 () Bool)

(declare-fun e!85521 () Bool)

(assert (=> d!34326 e!85521))

(declare-fun res!66653 () Bool)

(assert (=> d!34326 (=> res!66653 e!85521)))

(declare-fun isEmpty!964 (Option!209) Bool)

(assert (=> d!34326 (= res!66653 (isEmpty!964 lt!41522))))

(declare-fun e!85523 () Option!209)

(assert (=> d!34326 (= lt!41522 e!85523)))

(declare-fun c!29621 () Bool)

(assert (=> d!34326 (= c!29621 (and ((_ is Cons!2492) rules!1920) ((_ is Nil!2492) (t!23896 rules!1920))))))

(declare-fun lt!41520 () Unit!1840)

(declare-fun lt!41519 () Unit!1840)

(assert (=> d!34326 (= lt!41520 lt!41519)))

(declare-fun isPrefix!203 (List!2500 List!2500) Bool)

(assert (=> d!34326 (isPrefix!203 (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410) (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410))))

(declare-fun lemmaIsPrefixRefl!111 (List!2500 List!2500) Unit!1840)

(assert (=> d!34326 (= lt!41519 (lemmaIsPrefixRefl!111 (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410) (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410)))))

(assert (=> d!34326 (rulesValidInductive!88 thiss!17480 rules!1920)))

(assert (=> d!34326 (= (maxPrefix!95 thiss!17480 rules!1920 (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410)) lt!41522)))

(declare-fun b!144243 () Bool)

(assert (=> b!144243 (= e!85523 call!5630)))

(declare-fun b!144248 () Bool)

(declare-fun res!66656 () Bool)

(assert (=> b!144248 (=> (not res!66656) (not e!85522))))

(assert (=> b!144248 (= res!66656 (= (list!856 (charsOf!90 (_1!1459 (get!674 lt!41522)))) (originalCharacters!468 (_1!1459 (get!674 lt!41522)))))))

(declare-fun b!144249 () Bool)

(declare-fun lt!41518 () Option!209)

(declare-fun lt!41521 () Option!209)

(assert (=> b!144249 (= e!85523 (ite (and ((_ is None!208) lt!41518) ((_ is None!208) lt!41521)) None!208 (ite ((_ is None!208) lt!41521) lt!41518 (ite ((_ is None!208) lt!41518) lt!41521 (ite (>= (size!2148 (_1!1459 (v!13559 lt!41518))) (size!2148 (_1!1459 (v!13559 lt!41521)))) lt!41518 lt!41521)))))))

(assert (=> b!144249 (= lt!41518 call!5630)))

(assert (=> b!144249 (= lt!41521 (maxPrefix!95 thiss!17480 (t!23896 rules!1920) (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410)))))

(declare-fun b!144250 () Bool)

(assert (=> b!144250 (= e!85521 e!85522)))

(declare-fun res!66657 () Bool)

(assert (=> b!144250 (=> (not res!66657) (not e!85522))))

(declare-fun isDefined!78 (Option!209) Bool)

(assert (=> b!144250 (= res!66657 (isDefined!78 lt!41522))))

(declare-fun b!144251 () Bool)

(declare-fun res!66658 () Bool)

(assert (=> b!144251 (=> (not res!66658) (not e!85522))))

(assert (=> b!144251 (= res!66658 (< (size!2153 (_2!1459 (get!674 lt!41522))) (size!2153 (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410))))))

(assert (= (and d!34326 c!29621) b!144243))

(assert (= (and d!34326 (not c!29621)) b!144249))

(assert (= (or b!144243 b!144249) bm!5625))

(assert (= (and d!34326 (not res!66653)) b!144250))

(assert (= (and b!144250 res!66657) b!144248))

(assert (= (and b!144248 res!66656) b!144251))

(assert (= (and b!144251 res!66658) b!144246))

(assert (= (and b!144246 res!66652) b!144245))

(assert (= (and b!144245 res!66655) b!144244))

(assert (= (and b!144244 res!66654) b!144247))

(declare-fun m!126871 () Bool)

(assert (=> b!144248 m!126871))

(declare-fun m!126873 () Bool)

(assert (=> b!144248 m!126873))

(assert (=> b!144248 m!126873))

(declare-fun m!126875 () Bool)

(assert (=> b!144248 m!126875))

(assert (=> b!144247 m!126871))

(declare-fun m!126877 () Bool)

(assert (=> b!144247 m!126877))

(declare-fun m!126879 () Bool)

(assert (=> d!34326 m!126879))

(assert (=> d!34326 m!126441))

(assert (=> d!34326 m!126441))

(declare-fun m!126881 () Bool)

(assert (=> d!34326 m!126881))

(assert (=> d!34326 m!126441))

(assert (=> d!34326 m!126441))

(declare-fun m!126883 () Bool)

(assert (=> d!34326 m!126883))

(assert (=> d!34326 m!126635))

(assert (=> b!144249 m!126441))

(declare-fun m!126885 () Bool)

(assert (=> b!144249 m!126885))

(declare-fun m!126887 () Bool)

(assert (=> b!144250 m!126887))

(assert (=> b!144245 m!126871))

(declare-fun m!126889 () Bool)

(assert (=> b!144245 m!126889))

(assert (=> b!144245 m!126889))

(declare-fun m!126891 () Bool)

(assert (=> b!144245 m!126891))

(assert (=> b!144251 m!126871))

(declare-fun m!126893 () Bool)

(assert (=> b!144251 m!126893))

(assert (=> b!144251 m!126441))

(declare-fun m!126895 () Bool)

(assert (=> b!144251 m!126895))

(assert (=> b!144246 m!126871))

(assert (=> b!144246 m!126873))

(assert (=> b!144246 m!126873))

(assert (=> b!144246 m!126875))

(assert (=> b!144246 m!126875))

(declare-fun m!126897 () Bool)

(assert (=> b!144246 m!126897))

(assert (=> bm!5625 m!126441))

(declare-fun m!126899 () Bool)

(assert (=> bm!5625 m!126899))

(assert (=> b!144244 m!126871))

(assert (=> b!144244 m!126873))

(assert (=> b!144244 m!126873))

(assert (=> b!144244 m!126875))

(assert (=> b!144244 m!126875))

(declare-fun m!126901 () Bool)

(assert (=> b!144244 m!126901))

(assert (=> b!143931 d!34326))

(declare-fun b!144253 () Bool)

(declare-fun e!85524 () List!2500)

(assert (=> b!144253 (= e!85524 (Cons!2490 (h!7887 (list!856 (charsOf!90 (h!7888 tokens!465)))) (++!530 (t!23894 (list!856 (charsOf!90 (h!7888 tokens!465)))) lt!41410)))))

(declare-fun d!34374 () Bool)

(declare-fun e!85525 () Bool)

(assert (=> d!34374 e!85525))

(declare-fun res!66659 () Bool)

(assert (=> d!34374 (=> (not res!66659) (not e!85525))))

(declare-fun lt!41523 () List!2500)

(assert (=> d!34374 (= res!66659 (= (content!351 lt!41523) ((_ map or) (content!351 (list!856 (charsOf!90 (h!7888 tokens!465)))) (content!351 lt!41410))))))

(assert (=> d!34374 (= lt!41523 e!85524)))

(declare-fun c!29622 () Bool)

(assert (=> d!34374 (= c!29622 ((_ is Nil!2490) (list!856 (charsOf!90 (h!7888 tokens!465)))))))

(assert (=> d!34374 (= (++!530 (list!856 (charsOf!90 (h!7888 tokens!465))) lt!41410) lt!41523)))

(declare-fun b!144254 () Bool)

(declare-fun res!66660 () Bool)

(assert (=> b!144254 (=> (not res!66660) (not e!85525))))

(assert (=> b!144254 (= res!66660 (= (size!2153 lt!41523) (+ (size!2153 (list!856 (charsOf!90 (h!7888 tokens!465)))) (size!2153 lt!41410))))))

(declare-fun b!144252 () Bool)

(assert (=> b!144252 (= e!85524 lt!41410)))

(declare-fun b!144255 () Bool)

(assert (=> b!144255 (= e!85525 (or (not (= lt!41410 Nil!2490)) (= lt!41523 (list!856 (charsOf!90 (h!7888 tokens!465))))))))

(assert (= (and d!34374 c!29622) b!144252))

(assert (= (and d!34374 (not c!29622)) b!144253))

(assert (= (and d!34374 res!66659) b!144254))

(assert (= (and b!144254 res!66660) b!144255))

(declare-fun m!126903 () Bool)

(assert (=> b!144253 m!126903))

(declare-fun m!126905 () Bool)

(assert (=> d!34374 m!126905))

(assert (=> d!34374 m!126435))

(declare-fun m!126907 () Bool)

(assert (=> d!34374 m!126907))

(assert (=> d!34374 m!126709))

(declare-fun m!126909 () Bool)

(assert (=> b!144254 m!126909))

(assert (=> b!144254 m!126435))

(declare-fun m!126911 () Bool)

(assert (=> b!144254 m!126911))

(assert (=> b!144254 m!126715))

(assert (=> b!143931 d!34374))

(declare-fun bs!13064 () Bool)

(declare-fun b!144263 () Bool)

(assert (= bs!13064 (and b!144263 b!143675)))

(declare-fun lambda!3495 () Int)

(assert (=> bs!13064 (not (= lambda!3495 lambda!3450))))

(declare-fun bs!13065 () Bool)

(assert (= bs!13065 (and b!144263 b!143931)))

(assert (=> bs!13065 (= lambda!3495 lambda!3461)))

(declare-fun bs!13066 () Bool)

(assert (= bs!13066 (and b!144263 d!34178)))

(assert (=> bs!13066 (= lambda!3495 lambda!3466)))

(declare-fun b!144266 () Bool)

(declare-fun e!85532 () Bool)

(assert (=> b!144266 (= e!85532 true)))

(declare-fun b!144265 () Bool)

(declare-fun e!85531 () Bool)

(assert (=> b!144265 (= e!85531 e!85532)))

(declare-fun b!144264 () Bool)

(declare-fun e!85530 () Bool)

(assert (=> b!144264 (= e!85530 e!85531)))

(assert (=> b!144263 e!85530))

(assert (= b!144265 b!144266))

(assert (= b!144264 b!144265))

(assert (= (and b!144263 ((_ is Cons!2492) rules!1920)) b!144264))

(assert (=> b!144266 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (dynLambda!838 order!1199 lambda!3495))))

(assert (=> b!144266 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (h!7889 rules!1920)))) (dynLambda!838 order!1199 lambda!3495))))

(assert (=> b!144263 true))

(declare-fun b!144256 () Bool)

(declare-fun c!29623 () Bool)

(declare-fun lt!41528 () Option!209)

(assert (=> b!144256 (= c!29623 (and ((_ is Some!208) lt!41528) (not (= (_1!1459 (v!13559 lt!41528)) (h!7888 (t!23895 tokens!465))))))))

(declare-fun e!85526 () List!2500)

(declare-fun e!85528 () List!2500)

(assert (=> b!144256 (= e!85526 e!85528)))

(declare-fun d!34376 () Bool)

(declare-fun c!29625 () Bool)

(assert (=> d!34376 (= c!29625 ((_ is Cons!2491) (t!23895 tokens!465)))))

(declare-fun e!85527 () List!2500)

(assert (=> d!34376 (= (printWithSeparatorTokenWhenNeededList!4 thiss!17480 rules!1920 (t!23895 tokens!465) separatorToken!170) e!85527)))

(declare-fun b!144257 () Bool)

(assert (=> b!144257 (= e!85527 Nil!2490)))

(declare-fun bm!5626 () Bool)

(declare-fun call!5633 () BalanceConc!1352)

(declare-fun call!5635 () BalanceConc!1352)

(assert (=> bm!5626 (= call!5633 call!5635)))

(declare-fun call!5634 () List!2500)

(declare-fun bm!5627 () Bool)

(declare-fun c!29624 () Bool)

(assert (=> bm!5627 (= call!5634 (list!856 (ite c!29624 call!5635 call!5633)))))

(declare-fun b!144258 () Bool)

(assert (=> b!144258 (= e!85528 Nil!2490)))

(assert (=> b!144258 (= (print!80 thiss!17480 (singletonSeq!13 (h!7888 (t!23895 tokens!465)))) (printTailRec!43 thiss!17480 (singletonSeq!13 (h!7888 (t!23895 tokens!465))) 0 (BalanceConc!1353 Empty!672)))))

(declare-fun lt!41527 () Unit!1840)

(declare-fun Unit!1846 () Unit!1840)

(assert (=> b!144258 (= lt!41527 Unit!1846)))

(declare-fun lt!41525 () Unit!1840)

(declare-fun lt!41524 () List!2500)

(declare-fun call!5631 () List!2500)

(assert (=> b!144258 (= lt!41525 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!2 thiss!17480 rules!1920 call!5631 lt!41524))))

(assert (=> b!144258 false))

(declare-fun lt!41526 () Unit!1840)

(declare-fun Unit!1847 () Unit!1840)

(assert (=> b!144258 (= lt!41526 Unit!1847)))

(declare-fun b!144259 () Bool)

(declare-fun call!5632 () List!2500)

(assert (=> b!144259 (= e!85526 call!5632)))

(declare-fun b!144260 () Bool)

(declare-fun e!85529 () BalanceConc!1352)

(assert (=> b!144260 (= e!85529 (charsOf!90 separatorToken!170))))

(declare-fun b!144261 () Bool)

(assert (=> b!144261 (= e!85528 (++!530 call!5632 lt!41524))))

(declare-fun b!144262 () Bool)

(assert (=> b!144262 (= e!85529 call!5633)))

(declare-fun bm!5628 () Bool)

(assert (=> bm!5628 (= call!5635 (charsOf!90 (h!7888 (t!23895 tokens!465))))))

(assert (=> b!144263 (= e!85527 e!85526)))

(declare-fun lt!41529 () Unit!1840)

(assert (=> b!144263 (= lt!41529 (forallContained!38 (t!23895 tokens!465) lambda!3495 (h!7888 (t!23895 tokens!465))))))

(assert (=> b!144263 (= lt!41524 (printWithSeparatorTokenWhenNeededList!4 thiss!17480 rules!1920 (t!23895 (t!23895 tokens!465)) separatorToken!170))))

(assert (=> b!144263 (= lt!41528 (maxPrefix!95 thiss!17480 rules!1920 (++!530 (list!856 (charsOf!90 (h!7888 (t!23895 tokens!465)))) lt!41524)))))

(assert (=> b!144263 (= c!29624 (and ((_ is Some!208) lt!41528) (= (_1!1459 (v!13559 lt!41528)) (h!7888 (t!23895 tokens!465)))))))

(declare-fun bm!5629 () Bool)

(assert (=> bm!5629 (= call!5631 (list!856 e!85529))))

(declare-fun c!29626 () Bool)

(assert (=> bm!5629 (= c!29626 c!29623)))

(declare-fun bm!5630 () Bool)

(assert (=> bm!5630 (= call!5632 (++!530 call!5634 (ite c!29624 lt!41524 call!5631)))))

(assert (= (and d!34376 c!29625) b!144263))

(assert (= (and d!34376 (not c!29625)) b!144257))

(assert (= (and b!144263 c!29624) b!144259))

(assert (= (and b!144263 (not c!29624)) b!144256))

(assert (= (and b!144256 c!29623) b!144261))

(assert (= (and b!144256 (not c!29623)) b!144258))

(assert (= (or b!144261 b!144258) bm!5626))

(assert (= (or b!144261 b!144258) bm!5629))

(assert (= (and bm!5629 c!29626) b!144260))

(assert (= (and bm!5629 (not c!29626)) b!144262))

(assert (= (or b!144259 bm!5626) bm!5628))

(assert (= (or b!144259 b!144261) bm!5627))

(assert (= (or b!144259 b!144261) bm!5630))

(declare-fun m!126913 () Bool)

(assert (=> b!144263 m!126913))

(declare-fun m!126915 () Bool)

(assert (=> b!144263 m!126915))

(declare-fun m!126917 () Bool)

(assert (=> b!144263 m!126917))

(declare-fun m!126919 () Bool)

(assert (=> b!144263 m!126919))

(assert (=> b!144263 m!126913))

(assert (=> b!144263 m!126915))

(declare-fun m!126921 () Bool)

(assert (=> b!144263 m!126921))

(assert (=> b!144263 m!126921))

(declare-fun m!126923 () Bool)

(assert (=> b!144263 m!126923))

(declare-fun m!126925 () Bool)

(assert (=> bm!5629 m!126925))

(declare-fun m!126927 () Bool)

(assert (=> b!144261 m!126927))

(assert (=> bm!5628 m!126913))

(declare-fun m!126929 () Bool)

(assert (=> b!144258 m!126929))

(assert (=> b!144258 m!126929))

(declare-fun m!126931 () Bool)

(assert (=> b!144258 m!126931))

(assert (=> b!144258 m!126929))

(declare-fun m!126933 () Bool)

(assert (=> b!144258 m!126933))

(declare-fun m!126935 () Bool)

(assert (=> b!144258 m!126935))

(assert (=> b!144260 m!126457))

(declare-fun m!126937 () Bool)

(assert (=> bm!5627 m!126937))

(declare-fun m!126939 () Bool)

(assert (=> bm!5630 m!126939))

(assert (=> b!143931 d!34376))

(declare-fun d!34378 () Bool)

(assert (=> d!34378 (dynLambda!835 lambda!3461 (h!7888 tokens!465))))

(declare-fun lt!41532 () Unit!1840)

(declare-fun choose!1726 (List!2501 Int Token!594) Unit!1840)

(assert (=> d!34378 (= lt!41532 (choose!1726 tokens!465 lambda!3461 (h!7888 tokens!465)))))

(declare-fun e!85535 () Bool)

(assert (=> d!34378 e!85535))

(declare-fun res!66663 () Bool)

(assert (=> d!34378 (=> (not res!66663) (not e!85535))))

(assert (=> d!34378 (= res!66663 (forall!377 tokens!465 lambda!3461))))

(assert (=> d!34378 (= (forallContained!38 tokens!465 lambda!3461 (h!7888 tokens!465)) lt!41532)))

(declare-fun b!144269 () Bool)

(declare-fun contains!396 (List!2501 Token!594) Bool)

(assert (=> b!144269 (= e!85535 (contains!396 tokens!465 (h!7888 tokens!465)))))

(assert (= (and d!34378 res!66663) b!144269))

(declare-fun b_lambda!2341 () Bool)

(assert (=> (not b_lambda!2341) (not d!34378)))

(declare-fun m!126941 () Bool)

(assert (=> d!34378 m!126941))

(declare-fun m!126943 () Bool)

(assert (=> d!34378 m!126943))

(declare-fun m!126945 () Bool)

(assert (=> d!34378 m!126945))

(declare-fun m!126947 () Bool)

(assert (=> b!144269 m!126947))

(assert (=> b!143931 d!34378))

(declare-fun d!34380 () Bool)

(assert (=> d!34380 (= (list!856 (charsOf!90 (h!7888 tokens!465))) (list!861 (c!29527 (charsOf!90 (h!7888 tokens!465)))))))

(declare-fun bs!13067 () Bool)

(assert (= bs!13067 d!34380))

(declare-fun m!126949 () Bool)

(assert (=> bs!13067 m!126949))

(assert (=> b!143931 d!34380))

(assert (=> b!143931 d!34266))

(declare-fun d!34382 () Bool)

(declare-fun lt!41535 () Int)

(assert (=> d!34382 (>= lt!41535 0)))

(declare-fun e!85538 () Int)

(assert (=> d!34382 (= lt!41535 e!85538)))

(declare-fun c!29629 () Bool)

(assert (=> d!34382 (= c!29629 ((_ is Nil!2490) (originalCharacters!468 separatorToken!170)))))

(assert (=> d!34382 (= (size!2153 (originalCharacters!468 separatorToken!170)) lt!41535)))

(declare-fun b!144274 () Bool)

(assert (=> b!144274 (= e!85538 0)))

(declare-fun b!144275 () Bool)

(assert (=> b!144275 (= e!85538 (+ 1 (size!2153 (t!23894 (originalCharacters!468 separatorToken!170)))))))

(assert (= (and d!34382 c!29629) b!144274))

(assert (= (and d!34382 (not c!29629)) b!144275))

(declare-fun m!126951 () Bool)

(assert (=> b!144275 m!126951))

(assert (=> b!143742 d!34382))

(declare-fun d!34384 () Bool)

(declare-fun res!66664 () Bool)

(declare-fun e!85539 () Bool)

(assert (=> d!34384 (=> res!66664 e!85539)))

(assert (=> d!34384 (= res!66664 (not ((_ is Cons!2492) (t!23896 rules!1920))))))

(assert (=> d!34384 (= (sepAndNonSepRulesDisjointChars!14 rules!1920 (t!23896 rules!1920)) e!85539)))

(declare-fun b!144276 () Bool)

(declare-fun e!85540 () Bool)

(assert (=> b!144276 (= e!85539 e!85540)))

(declare-fun res!66665 () Bool)

(assert (=> b!144276 (=> (not res!66665) (not e!85540))))

(assert (=> b!144276 (= res!66665 (ruleDisjointCharsFromAllFromOtherType!4 (h!7889 (t!23896 rules!1920)) rules!1920))))

(declare-fun b!144277 () Bool)

(assert (=> b!144277 (= e!85540 (sepAndNonSepRulesDisjointChars!14 rules!1920 (t!23896 (t!23896 rules!1920))))))

(assert (= (and d!34384 (not res!66664)) b!144276))

(assert (= (and b!144276 res!66665) b!144277))

(declare-fun m!126953 () Bool)

(assert (=> b!144276 m!126953))

(declare-fun m!126955 () Bool)

(assert (=> b!144277 m!126955))

(assert (=> b!143726 d!34384))

(declare-fun d!34386 () Bool)

(declare-fun c!29631 () Bool)

(assert (=> d!34386 (= c!29631 ((_ is IntegerValue!1341) (value!16428 (h!7888 (t!23895 tokens!465)))))))

(declare-fun e!85542 () Bool)

(assert (=> d!34386 (= (inv!21 (value!16428 (h!7888 (t!23895 tokens!465)))) e!85542)))

(declare-fun b!144278 () Bool)

(declare-fun e!85541 () Bool)

(assert (=> b!144278 (= e!85541 (inv!15 (value!16428 (h!7888 (t!23895 tokens!465)))))))

(declare-fun b!144279 () Bool)

(declare-fun e!85543 () Bool)

(assert (=> b!144279 (= e!85543 (inv!17 (value!16428 (h!7888 (t!23895 tokens!465)))))))

(declare-fun b!144280 () Bool)

(assert (=> b!144280 (= e!85542 e!85543)))

(declare-fun c!29630 () Bool)

(assert (=> b!144280 (= c!29630 ((_ is IntegerValue!1342) (value!16428 (h!7888 (t!23895 tokens!465)))))))

(declare-fun b!144281 () Bool)

(declare-fun res!66666 () Bool)

(assert (=> b!144281 (=> res!66666 e!85541)))

(assert (=> b!144281 (= res!66666 (not ((_ is IntegerValue!1343) (value!16428 (h!7888 (t!23895 tokens!465))))))))

(assert (=> b!144281 (= e!85543 e!85541)))

(declare-fun b!144282 () Bool)

(assert (=> b!144282 (= e!85542 (inv!16 (value!16428 (h!7888 (t!23895 tokens!465)))))))

(assert (= (and d!34386 c!29631) b!144282))

(assert (= (and d!34386 (not c!29631)) b!144280))

(assert (= (and b!144280 c!29630) b!144279))

(assert (= (and b!144280 (not c!29630)) b!144281))

(assert (= (and b!144281 (not res!66666)) b!144278))

(declare-fun m!126957 () Bool)

(assert (=> b!144278 m!126957))

(declare-fun m!126959 () Bool)

(assert (=> b!144279 m!126959))

(declare-fun m!126961 () Bool)

(assert (=> b!144282 m!126961))

(assert (=> b!143994 d!34386))

(declare-fun d!34388 () Bool)

(declare-fun lt!41536 () BalanceConc!1352)

(assert (=> d!34388 (= (list!856 lt!41536) (originalCharacters!468 separatorToken!170))))

(assert (=> d!34388 (= lt!41536 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))))

(assert (=> d!34388 (= (charsOf!90 separatorToken!170) lt!41536)))

(declare-fun b_lambda!2343 () Bool)

(assert (=> (not b_lambda!2343) (not d!34388)))

(assert (=> d!34388 t!23904))

(declare-fun b_and!7701 () Bool)

(assert (= b_and!7679 (and (=> t!23904 result!6768) b_and!7701)))

(assert (=> d!34388 t!23906))

(declare-fun b_and!7703 () Bool)

(assert (= b_and!7677 (and (=> t!23906 result!6772) b_and!7703)))

(assert (=> d!34388 t!23908))

(declare-fun b_and!7705 () Bool)

(assert (= b_and!7671 (and (=> t!23908 result!6774) b_and!7705)))

(assert (=> d!34388 t!23949))

(declare-fun b_and!7707 () Bool)

(assert (= b_and!7675 (and (=> t!23949 result!6816) b_and!7707)))

(assert (=> d!34388 t!23945))

(declare-fun b_and!7709 () Bool)

(assert (= b_and!7673 (and (=> t!23945 result!6808) b_and!7709)))

(declare-fun m!126963 () Bool)

(assert (=> d!34388 m!126963))

(assert (=> d!34388 m!126277))

(assert (=> b!143928 d!34388))

(declare-fun d!34390 () Bool)

(declare-fun lt!41537 () Int)

(assert (=> d!34390 (>= lt!41537 0)))

(declare-fun e!85544 () Int)

(assert (=> d!34390 (= lt!41537 e!85544)))

(declare-fun c!29632 () Bool)

(assert (=> d!34390 (= c!29632 ((_ is Nil!2490) (originalCharacters!468 (h!7888 tokens!465))))))

(assert (=> d!34390 (= (size!2153 (originalCharacters!468 (h!7888 tokens!465))) lt!41537)))

(declare-fun b!144283 () Bool)

(assert (=> b!144283 (= e!85544 0)))

(declare-fun b!144284 () Bool)

(assert (=> b!144284 (= e!85544 (+ 1 (size!2153 (t!23894 (originalCharacters!468 (h!7888 tokens!465))))))))

(assert (= (and d!34390 c!29632) b!144283))

(assert (= (and d!34390 (not c!29632)) b!144284))

(declare-fun m!126965 () Bool)

(assert (=> b!144284 m!126965))

(assert (=> b!143758 d!34390))

(declare-fun bs!13068 () Bool)

(declare-fun d!34392 () Bool)

(assert (= bs!13068 (and d!34392 d!34258)))

(declare-fun lambda!3496 () Int)

(assert (=> bs!13068 (= (and (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) (= (toValue!1044 (transformation!425 (h!7889 rules!1920))) (toValue!1044 (transformation!425 (rule!932 separatorToken!170))))) (= lambda!3496 lambda!3482))))

(declare-fun bs!13069 () Bool)

(assert (= bs!13069 (and d!34392 d!34284)))

(assert (=> bs!13069 (= (and (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) (= (toValue!1044 (transformation!425 (h!7889 rules!1920))) (toValue!1044 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (= lambda!3496 lambda!3487))))

(assert (=> d!34392 true))

(assert (=> d!34392 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (h!7889 rules!1920)))) (dynLambda!843 order!1207 lambda!3496))))

(assert (=> d!34392 true))

(assert (=> d!34392 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (dynLambda!843 order!1207 lambda!3496))))

(assert (=> d!34392 (= (semiInverseModEq!145 (toChars!903 (transformation!425 (h!7889 rules!1920))) (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (Forall!114 lambda!3496))))

(declare-fun bs!13070 () Bool)

(assert (= bs!13070 d!34392))

(declare-fun m!126967 () Bool)

(assert (=> bs!13070 m!126967))

(assert (=> d!34132 d!34392))

(declare-fun bs!13077 () Bool)

(declare-fun d!34394 () Bool)

(assert (= bs!13077 (and d!34394 b!143675)))

(declare-fun lambda!3499 () Int)

(assert (=> bs!13077 (not (= lambda!3499 lambda!3450))))

(declare-fun bs!13078 () Bool)

(assert (= bs!13078 (and d!34394 b!143931)))

(assert (=> bs!13078 (= lambda!3499 lambda!3461)))

(declare-fun bs!13079 () Bool)

(assert (= bs!13079 (and d!34394 d!34178)))

(assert (=> bs!13079 (= lambda!3499 lambda!3466)))

(declare-fun bs!13080 () Bool)

(assert (= bs!13080 (and d!34394 b!144263)))

(assert (=> bs!13080 (= lambda!3499 lambda!3495)))

(declare-fun b!144344 () Bool)

(declare-fun e!85580 () Bool)

(assert (=> b!144344 (= e!85580 true)))

(declare-fun b!144343 () Bool)

(declare-fun e!85579 () Bool)

(assert (=> b!144343 (= e!85579 e!85580)))

(declare-fun b!144342 () Bool)

(declare-fun e!85578 () Bool)

(assert (=> b!144342 (= e!85578 e!85579)))

(assert (=> d!34394 e!85578))

(assert (= b!144343 b!144344))

(assert (= b!144342 b!144343))

(assert (= (and d!34394 ((_ is Cons!2492) rules!1920)) b!144342))

(assert (=> b!144344 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (h!7889 rules!1920)))) (dynLambda!838 order!1199 lambda!3499))))

(assert (=> b!144344 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (h!7889 rules!1920)))) (dynLambda!838 order!1199 lambda!3499))))

(assert (=> d!34394 true))

(declare-fun lt!41585 () Bool)

(assert (=> d!34394 (= lt!41585 (forall!377 (list!857 lt!41357) lambda!3499))))

(declare-fun e!85577 () Bool)

(assert (=> d!34394 (= lt!41585 e!85577)))

(declare-fun res!66706 () Bool)

(assert (=> d!34394 (=> res!66706 e!85577)))

(assert (=> d!34394 (= res!66706 (not ((_ is Cons!2491) (list!857 lt!41357))))))

(assert (=> d!34394 (not (isEmpty!954 rules!1920))))

(assert (=> d!34394 (= (rulesProduceEachTokenIndividuallyList!65 thiss!17480 rules!1920 (list!857 lt!41357)) lt!41585)))

(declare-fun b!144340 () Bool)

(declare-fun e!85576 () Bool)

(assert (=> b!144340 (= e!85577 e!85576)))

(declare-fun res!66705 () Bool)

(assert (=> b!144340 (=> (not res!66705) (not e!85576))))

(assert (=> b!144340 (= res!66705 (rulesProduceIndividualToken!60 thiss!17480 rules!1920 (h!7888 (list!857 lt!41357))))))

(declare-fun b!144341 () Bool)

(assert (=> b!144341 (= e!85576 (rulesProduceEachTokenIndividuallyList!65 thiss!17480 rules!1920 (t!23895 (list!857 lt!41357))))))

(assert (= (and d!34394 (not res!66706)) b!144340))

(assert (= (and b!144340 res!66705) b!144341))

(assert (=> d!34394 m!126313))

(declare-fun m!127093 () Bool)

(assert (=> d!34394 m!127093))

(assert (=> d!34394 m!126205))

(declare-fun m!127095 () Bool)

(assert (=> b!144340 m!127095))

(declare-fun m!127097 () Bool)

(assert (=> b!144341 m!127097))

(assert (=> b!143948 d!34394))

(assert (=> b!143948 d!34230))

(declare-fun d!34426 () Bool)

(assert (=> d!34426 (= (inv!17 (value!16428 separatorToken!170)) (= (charsToBigInt!1 (text!3577 (value!16428 separatorToken!170))) (value!16420 (value!16428 separatorToken!170))))))

(declare-fun bs!13081 () Bool)

(assert (= bs!13081 d!34426))

(declare-fun m!127099 () Bool)

(assert (=> bs!13081 m!127099))

(assert (=> b!143708 d!34426))

(declare-fun d!34428 () Bool)

(declare-fun lt!41586 () BalanceConc!1352)

(assert (=> d!34428 (= (list!856 lt!41586) (printList!43 thiss!17480 (list!857 (singletonSeq!13 (h!7888 tokens!465)))))))

(assert (=> d!34428 (= lt!41586 (printTailRec!43 thiss!17480 (singletonSeq!13 (h!7888 tokens!465)) 0 (BalanceConc!1353 Empty!672)))))

(assert (=> d!34428 (= (print!80 thiss!17480 (singletonSeq!13 (h!7888 tokens!465))) lt!41586)))

(declare-fun bs!13082 () Bool)

(assert (= bs!13082 d!34428))

(declare-fun m!127101 () Bool)

(assert (=> bs!13082 m!127101))

(assert (=> bs!13082 m!126449))

(declare-fun m!127103 () Bool)

(assert (=> bs!13082 m!127103))

(assert (=> bs!13082 m!127103))

(declare-fun m!127105 () Bool)

(assert (=> bs!13082 m!127105))

(assert (=> bs!13082 m!126449))

(assert (=> bs!13082 m!126453))

(assert (=> b!143926 d!34428))

(declare-fun d!34430 () Bool)

(declare-fun e!85581 () Bool)

(assert (=> d!34430 e!85581))

(declare-fun res!66707 () Bool)

(assert (=> d!34430 (=> (not res!66707) (not e!85581))))

(declare-fun lt!41587 () BalanceConc!1354)

(assert (=> d!34430 (= res!66707 (= (list!857 lt!41587) (Cons!2491 (h!7888 tokens!465) Nil!2491)))))

(assert (=> d!34430 (= lt!41587 (singleton!11 (h!7888 tokens!465)))))

(assert (=> d!34430 (= (singletonSeq!13 (h!7888 tokens!465)) lt!41587)))

(declare-fun b!144345 () Bool)

(assert (=> b!144345 (= e!85581 (isBalanced!191 (c!29529 lt!41587)))))

(assert (= (and d!34430 res!66707) b!144345))

(declare-fun m!127107 () Bool)

(assert (=> d!34430 m!127107))

(declare-fun m!127109 () Bool)

(assert (=> d!34430 m!127109))

(declare-fun m!127111 () Bool)

(assert (=> b!144345 m!127111))

(assert (=> b!143926 d!34430))

(declare-fun d!34432 () Bool)

(declare-fun lt!41608 () BalanceConc!1352)

(declare-fun printListTailRec!30 (LexerInterface!311 List!2501 List!2500) List!2500)

(declare-fun dropList!54 (BalanceConc!1354 Int) List!2501)

(assert (=> d!34432 (= (list!856 lt!41608) (printListTailRec!30 thiss!17480 (dropList!54 (singletonSeq!13 (h!7888 tokens!465)) 0) (list!856 (BalanceConc!1353 Empty!672))))))

(declare-fun e!85586 () BalanceConc!1352)

(assert (=> d!34432 (= lt!41608 e!85586)))

(declare-fun c!29643 () Bool)

(assert (=> d!34432 (= c!29643 (>= 0 (size!2149 (singletonSeq!13 (h!7888 tokens!465)))))))

(declare-fun e!85587 () Bool)

(assert (=> d!34432 e!85587))

(declare-fun res!66710 () Bool)

(assert (=> d!34432 (=> (not res!66710) (not e!85587))))

(assert (=> d!34432 (= res!66710 (>= 0 0))))

(assert (=> d!34432 (= (printTailRec!43 thiss!17480 (singletonSeq!13 (h!7888 tokens!465)) 0 (BalanceConc!1353 Empty!672)) lt!41608)))

(declare-fun b!144352 () Bool)

(assert (=> b!144352 (= e!85587 (<= 0 (size!2149 (singletonSeq!13 (h!7888 tokens!465)))))))

(declare-fun b!144353 () Bool)

(assert (=> b!144353 (= e!85586 (BalanceConc!1353 Empty!672))))

(declare-fun b!144354 () Bool)

(declare-fun ++!532 (BalanceConc!1352 BalanceConc!1352) BalanceConc!1352)

(assert (=> b!144354 (= e!85586 (printTailRec!43 thiss!17480 (singletonSeq!13 (h!7888 tokens!465)) (+ 0 1) (++!532 (BalanceConc!1353 Empty!672) (charsOf!90 (apply!300 (singletonSeq!13 (h!7888 tokens!465)) 0)))))))

(declare-fun lt!41605 () List!2501)

(assert (=> b!144354 (= lt!41605 (list!857 (singletonSeq!13 (h!7888 tokens!465))))))

(declare-fun lt!41602 () Unit!1840)

(declare-fun lemmaDropApply!94 (List!2501 Int) Unit!1840)

(assert (=> b!144354 (= lt!41602 (lemmaDropApply!94 lt!41605 0))))

(declare-fun head!568 (List!2501) Token!594)

(declare-fun drop!107 (List!2501 Int) List!2501)

(assert (=> b!144354 (= (head!568 (drop!107 lt!41605 0)) (apply!303 lt!41605 0))))

(declare-fun lt!41606 () Unit!1840)

(assert (=> b!144354 (= lt!41606 lt!41602)))

(declare-fun lt!41604 () List!2501)

(assert (=> b!144354 (= lt!41604 (list!857 (singletonSeq!13 (h!7888 tokens!465))))))

(declare-fun lt!41607 () Unit!1840)

(declare-fun lemmaDropTail!86 (List!2501 Int) Unit!1840)

(assert (=> b!144354 (= lt!41607 (lemmaDropTail!86 lt!41604 0))))

(declare-fun tail!308 (List!2501) List!2501)

(assert (=> b!144354 (= (tail!308 (drop!107 lt!41604 0)) (drop!107 lt!41604 (+ 0 1)))))

(declare-fun lt!41603 () Unit!1840)

(assert (=> b!144354 (= lt!41603 lt!41607)))

(assert (= (and d!34432 res!66710) b!144352))

(assert (= (and d!34432 c!29643) b!144353))

(assert (= (and d!34432 (not c!29643)) b!144354))

(declare-fun m!127113 () Bool)

(assert (=> d!34432 m!127113))

(assert (=> d!34432 m!126449))

(declare-fun m!127115 () Bool)

(assert (=> d!34432 m!127115))

(declare-fun m!127117 () Bool)

(assert (=> d!34432 m!127117))

(assert (=> d!34432 m!127113))

(declare-fun m!127119 () Bool)

(assert (=> d!34432 m!127119))

(assert (=> d!34432 m!126449))

(assert (=> d!34432 m!127117))

(declare-fun m!127121 () Bool)

(assert (=> d!34432 m!127121))

(assert (=> b!144352 m!126449))

(assert (=> b!144352 m!127115))

(declare-fun m!127123 () Bool)

(assert (=> b!144354 m!127123))

(assert (=> b!144354 m!126449))

(assert (=> b!144354 m!127103))

(assert (=> b!144354 m!126449))

(declare-fun m!127125 () Bool)

(assert (=> b!144354 m!127125))

(assert (=> b!144354 m!127125))

(declare-fun m!127127 () Bool)

(assert (=> b!144354 m!127127))

(assert (=> b!144354 m!127127))

(declare-fun m!127129 () Bool)

(assert (=> b!144354 m!127129))

(assert (=> b!144354 m!126449))

(assert (=> b!144354 m!127129))

(declare-fun m!127131 () Bool)

(assert (=> b!144354 m!127131))

(declare-fun m!127133 () Bool)

(assert (=> b!144354 m!127133))

(declare-fun m!127135 () Bool)

(assert (=> b!144354 m!127135))

(declare-fun m!127137 () Bool)

(assert (=> b!144354 m!127137))

(declare-fun m!127139 () Bool)

(assert (=> b!144354 m!127139))

(declare-fun m!127141 () Bool)

(assert (=> b!144354 m!127141))

(assert (=> b!144354 m!127141))

(declare-fun m!127143 () Bool)

(assert (=> b!144354 m!127143))

(declare-fun m!127145 () Bool)

(assert (=> b!144354 m!127145))

(assert (=> b!144354 m!127135))

(assert (=> b!143926 d!34432))

(declare-fun b!144474 () Bool)

(declare-fun e!85643 () Bool)

(declare-fun lt!41700 () Token!594)

(declare-datatypes ((Option!211 0))(
  ( (None!210) (Some!210 (v!13565 Rule!650)) )
))
(declare-fun get!676 (Option!211) Rule!650)

(declare-fun getRuleFromTag!2 (LexerInterface!311 List!2502 String!3315) Option!211)

(assert (=> b!144474 (= e!85643 (= (rule!932 lt!41700) (get!676 (getRuleFromTag!2 thiss!17480 rules!1920 (tag!603 (rule!932 lt!41700))))))))

(declare-fun b!144476 () Bool)

(declare-fun e!85642 () Unit!1840)

(declare-fun Unit!1850 () Unit!1840)

(assert (=> b!144476 (= e!85642 Unit!1850)))

(declare-fun b!144473 () Bool)

(declare-fun res!66722 () Bool)

(assert (=> b!144473 (=> (not res!66722) (not e!85643))))

(assert (=> b!144473 (= res!66722 (matchR!59 (regex!425 (get!676 (getRuleFromTag!2 thiss!17480 rules!1920 (tag!603 (rule!932 lt!41700))))) (list!856 (charsOf!90 lt!41700))))))

(declare-fun b!144475 () Bool)

(declare-fun Unit!1851 () Unit!1840)

(assert (=> b!144475 (= e!85642 Unit!1851)))

(declare-fun lt!41702 () List!2500)

(assert (=> b!144475 (= lt!41702 (++!530 call!5612 lt!41410))))

(declare-fun lt!41698 () Unit!1840)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!2 (LexerInterface!311 Rule!650 List!2502 List!2500) Unit!1840)

(assert (=> b!144475 (= lt!41698 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!2 thiss!17480 (rule!932 lt!41700) rules!1920 lt!41702))))

(assert (=> b!144475 (isEmpty!964 (maxPrefixOneRule!47 thiss!17480 (rule!932 lt!41700) lt!41702))))

(declare-fun lt!41703 () Unit!1840)

(assert (=> b!144475 (= lt!41703 lt!41698)))

(declare-fun lt!41705 () List!2500)

(assert (=> b!144475 (= lt!41705 (list!856 (charsOf!90 lt!41700)))))

(declare-fun lt!41706 () Unit!1840)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!2 (LexerInterface!311 Rule!650 List!2500 List!2500) Unit!1840)

(assert (=> b!144475 (= lt!41706 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!2 thiss!17480 (rule!932 lt!41700) lt!41705 (++!530 call!5612 lt!41410)))))

(assert (=> b!144475 (not (matchR!59 (regex!425 (rule!932 lt!41700)) lt!41705))))

(declare-fun lt!41709 () Unit!1840)

(assert (=> b!144475 (= lt!41709 lt!41706)))

(assert (=> b!144475 false))

(declare-fun d!34434 () Bool)

(assert (=> d!34434 (isDefined!78 (maxPrefix!95 thiss!17480 rules!1920 (++!530 call!5612 lt!41410)))))

(declare-fun lt!41708 () Unit!1840)

(assert (=> d!34434 (= lt!41708 e!85642)))

(declare-fun c!29649 () Bool)

(assert (=> d!34434 (= c!29649 (isEmpty!964 (maxPrefix!95 thiss!17480 rules!1920 (++!530 call!5612 lt!41410))))))

(declare-fun lt!41694 () Unit!1840)

(declare-fun lt!41701 () Unit!1840)

(assert (=> d!34434 (= lt!41694 lt!41701)))

(assert (=> d!34434 e!85643))

(declare-fun res!66721 () Bool)

(assert (=> d!34434 (=> (not res!66721) (not e!85643))))

(declare-fun isDefined!80 (Option!211) Bool)

(assert (=> d!34434 (= res!66721 (isDefined!80 (getRuleFromTag!2 thiss!17480 rules!1920 (tag!603 (rule!932 lt!41700)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!2 (LexerInterface!311 List!2502 List!2500 Token!594) Unit!1840)

(assert (=> d!34434 (= lt!41701 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!2 thiss!17480 rules!1920 call!5612 lt!41700))))

(declare-fun lt!41710 () Unit!1840)

(declare-fun lt!41704 () Unit!1840)

(assert (=> d!34434 (= lt!41710 lt!41704)))

(declare-fun lt!41696 () List!2500)

(assert (=> d!34434 (isPrefix!203 lt!41696 (++!530 call!5612 lt!41410))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!2 (List!2500 List!2500 List!2500) Unit!1840)

(assert (=> d!34434 (= lt!41704 (lemmaPrefixStaysPrefixWhenAddingToSuffix!2 lt!41696 call!5612 lt!41410))))

(assert (=> d!34434 (= lt!41696 (list!856 (charsOf!90 lt!41700)))))

(declare-fun lt!41699 () Unit!1840)

(declare-fun lt!41695 () Unit!1840)

(assert (=> d!34434 (= lt!41699 lt!41695)))

(declare-fun lt!41707 () List!2500)

(declare-fun lt!41697 () List!2500)

(assert (=> d!34434 (isPrefix!203 lt!41707 (++!530 lt!41707 lt!41697))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!106 (List!2500 List!2500) Unit!1840)

(assert (=> d!34434 (= lt!41695 (lemmaConcatTwoListThenFirstIsPrefix!106 lt!41707 lt!41697))))

(assert (=> d!34434 (= lt!41697 (_2!1459 (get!674 (maxPrefix!95 thiss!17480 rules!1920 call!5612))))))

(assert (=> d!34434 (= lt!41707 (list!856 (charsOf!90 lt!41700)))))

(assert (=> d!34434 (= lt!41700 (head!568 (list!857 (_1!1458 (lex!155 thiss!17480 rules!1920 (seqFromList!240 call!5612))))))))

(assert (=> d!34434 (not (isEmpty!954 rules!1920))))

(assert (=> d!34434 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!2 thiss!17480 rules!1920 call!5612 lt!41410) lt!41708)))

(assert (= (and d!34434 res!66721) b!144473))

(assert (= (and b!144473 res!66722) b!144474))

(assert (= (and d!34434 c!29649) b!144475))

(assert (= (and d!34434 (not c!29649)) b!144476))

(declare-fun m!127231 () Bool)

(assert (=> b!144474 m!127231))

(assert (=> b!144474 m!127231))

(declare-fun m!127233 () Bool)

(assert (=> b!144474 m!127233))

(assert (=> b!144473 m!127231))

(assert (=> b!144473 m!127233))

(declare-fun m!127235 () Bool)

(assert (=> b!144473 m!127235))

(declare-fun m!127237 () Bool)

(assert (=> b!144473 m!127237))

(assert (=> b!144473 m!127237))

(declare-fun m!127239 () Bool)

(assert (=> b!144473 m!127239))

(assert (=> b!144473 m!127231))

(assert (=> b!144473 m!127235))

(declare-fun m!127241 () Bool)

(assert (=> b!144475 m!127241))

(assert (=> b!144475 m!127235))

(assert (=> b!144475 m!127237))

(declare-fun m!127243 () Bool)

(assert (=> b!144475 m!127243))

(declare-fun m!127245 () Bool)

(assert (=> b!144475 m!127245))

(declare-fun m!127247 () Bool)

(assert (=> b!144475 m!127247))

(assert (=> b!144475 m!127243))

(declare-fun m!127249 () Bool)

(assert (=> b!144475 m!127249))

(assert (=> b!144475 m!127247))

(declare-fun m!127251 () Bool)

(assert (=> b!144475 m!127251))

(assert (=> b!144475 m!127235))

(declare-fun m!127253 () Bool)

(assert (=> d!34434 m!127253))

(declare-fun m!127255 () Bool)

(assert (=> d!34434 m!127255))

(assert (=> d!34434 m!127253))

(declare-fun m!127257 () Bool)

(assert (=> d!34434 m!127257))

(declare-fun m!127259 () Bool)

(assert (=> d!34434 m!127259))

(assert (=> d!34434 m!127235))

(assert (=> d!34434 m!127237))

(declare-fun m!127261 () Bool)

(assert (=> d!34434 m!127261))

(declare-fun m!127263 () Bool)

(assert (=> d!34434 m!127263))

(assert (=> d!34434 m!127231))

(declare-fun m!127265 () Bool)

(assert (=> d!34434 m!127265))

(assert (=> d!34434 m!127247))

(declare-fun m!127267 () Bool)

(assert (=> d!34434 m!127267))

(assert (=> d!34434 m!127257))

(declare-fun m!127269 () Bool)

(assert (=> d!34434 m!127269))

(assert (=> d!34434 m!127231))

(declare-fun m!127271 () Bool)

(assert (=> d!34434 m!127271))

(assert (=> d!34434 m!127235))

(declare-fun m!127273 () Bool)

(assert (=> d!34434 m!127273))

(assert (=> d!34434 m!126205))

(assert (=> d!34434 m!127265))

(declare-fun m!127275 () Bool)

(assert (=> d!34434 m!127275))

(declare-fun m!127277 () Bool)

(assert (=> d!34434 m!127277))

(declare-fun m!127279 () Bool)

(assert (=> d!34434 m!127279))

(assert (=> d!34434 m!127277))

(assert (=> d!34434 m!127247))

(declare-fun m!127281 () Bool)

(assert (=> d!34434 m!127281))

(assert (=> d!34434 m!127247))

(assert (=> d!34434 m!127257))

(assert (=> d!34434 m!127261))

(declare-fun m!127283 () Bool)

(assert (=> d!34434 m!127283))

(assert (=> b!143926 d!34434))

(declare-fun b!144480 () Bool)

(declare-fun e!85644 () Bool)

(declare-fun tp!76130 () Bool)

(declare-fun tp!76129 () Bool)

(assert (=> b!144480 (= e!85644 (and tp!76130 tp!76129))))

(declare-fun b!144479 () Bool)

(declare-fun tp!76132 () Bool)

(assert (=> b!144479 (= e!85644 tp!76132)))

(assert (=> b!143965 (= tp!75973 e!85644)))

(declare-fun b!144477 () Bool)

(assert (=> b!144477 (= e!85644 tp_is_empty!1587)))

(declare-fun b!144478 () Bool)

(declare-fun tp!76133 () Bool)

(declare-fun tp!76131 () Bool)

(assert (=> b!144478 (= e!85644 (and tp!76133 tp!76131))))

(assert (= (and b!143965 ((_ is ElementMatch!649) (regOne!1811 (regex!425 (h!7889 rules!1920))))) b!144477))

(assert (= (and b!143965 ((_ is Concat!1097) (regOne!1811 (regex!425 (h!7889 rules!1920))))) b!144478))

(assert (= (and b!143965 ((_ is Star!649) (regOne!1811 (regex!425 (h!7889 rules!1920))))) b!144479))

(assert (= (and b!143965 ((_ is Union!649) (regOne!1811 (regex!425 (h!7889 rules!1920))))) b!144480))

(declare-fun b!144484 () Bool)

(declare-fun e!85645 () Bool)

(declare-fun tp!76135 () Bool)

(declare-fun tp!76134 () Bool)

(assert (=> b!144484 (= e!85645 (and tp!76135 tp!76134))))

(declare-fun b!144483 () Bool)

(declare-fun tp!76137 () Bool)

(assert (=> b!144483 (= e!85645 tp!76137)))

(assert (=> b!143965 (= tp!75972 e!85645)))

(declare-fun b!144481 () Bool)

(assert (=> b!144481 (= e!85645 tp_is_empty!1587)))

(declare-fun b!144482 () Bool)

(declare-fun tp!76138 () Bool)

(declare-fun tp!76136 () Bool)

(assert (=> b!144482 (= e!85645 (and tp!76138 tp!76136))))

(assert (= (and b!143965 ((_ is ElementMatch!649) (regTwo!1811 (regex!425 (h!7889 rules!1920))))) b!144481))

(assert (= (and b!143965 ((_ is Concat!1097) (regTwo!1811 (regex!425 (h!7889 rules!1920))))) b!144482))

(assert (= (and b!143965 ((_ is Star!649) (regTwo!1811 (regex!425 (h!7889 rules!1920))))) b!144483))

(assert (= (and b!143965 ((_ is Union!649) (regTwo!1811 (regex!425 (h!7889 rules!1920))))) b!144484))

(declare-fun b!144485 () Bool)

(declare-fun e!85646 () Bool)

(declare-fun tp!76139 () Bool)

(assert (=> b!144485 (= e!85646 (and tp_is_empty!1587 tp!76139))))

(assert (=> b!143982 (= tp!75992 e!85646)))

(assert (= (and b!143982 ((_ is Cons!2490) (t!23894 (originalCharacters!468 (h!7888 tokens!465))))) b!144485))

(declare-fun tp!76147 () Bool)

(declare-fun e!85652 () Bool)

(declare-fun b!144494 () Bool)

(declare-fun tp!76148 () Bool)

(assert (=> b!144494 (= e!85652 (and (inv!3266 (left!1879 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))))) tp!76148 (inv!3266 (right!2209 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))))) tp!76147))))

(declare-fun b!144496 () Bool)

(declare-fun e!85651 () Bool)

(declare-fun tp!76146 () Bool)

(assert (=> b!144496 (= e!85651 tp!76146)))

(declare-fun b!144495 () Bool)

(declare-fun inv!3273 (IArray!1345) Bool)

(assert (=> b!144495 (= e!85652 (and (inv!3273 (xs!3267 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))))) e!85651))))

(assert (=> b!143747 (= tp!75903 (and (inv!3266 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170)))) e!85652))))

(assert (= (and b!143747 ((_ is Node!672) (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))))) b!144494))

(assert (= b!144495 b!144496))

(assert (= (and b!143747 ((_ is Leaf!1224) (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (value!16428 separatorToken!170))))) b!144495))

(declare-fun m!127285 () Bool)

(assert (=> b!144494 m!127285))

(declare-fun m!127287 () Bool)

(assert (=> b!144494 m!127287))

(declare-fun m!127289 () Bool)

(assert (=> b!144495 m!127289))

(assert (=> b!143747 m!126271))

(declare-fun b!144500 () Bool)

(declare-fun e!85653 () Bool)

(declare-fun tp!76150 () Bool)

(declare-fun tp!76149 () Bool)

(assert (=> b!144500 (= e!85653 (and tp!76150 tp!76149))))

(declare-fun b!144499 () Bool)

(declare-fun tp!76152 () Bool)

(assert (=> b!144499 (= e!85653 tp!76152)))

(assert (=> b!143964 (= tp!75975 e!85653)))

(declare-fun b!144497 () Bool)

(assert (=> b!144497 (= e!85653 tp_is_empty!1587)))

(declare-fun b!144498 () Bool)

(declare-fun tp!76153 () Bool)

(declare-fun tp!76151 () Bool)

(assert (=> b!144498 (= e!85653 (and tp!76153 tp!76151))))

(assert (= (and b!143964 ((_ is ElementMatch!649) (reg!978 (regex!425 (h!7889 rules!1920))))) b!144497))

(assert (= (and b!143964 ((_ is Concat!1097) (reg!978 (regex!425 (h!7889 rules!1920))))) b!144498))

(assert (= (and b!143964 ((_ is Star!649) (reg!978 (regex!425 (h!7889 rules!1920))))) b!144499))

(assert (= (and b!143964 ((_ is Union!649) (reg!978 (regex!425 (h!7889 rules!1920))))) b!144500))

(declare-fun b!144503 () Bool)

(declare-fun e!85656 () Bool)

(assert (=> b!144503 (= e!85656 true)))

(declare-fun b!144502 () Bool)

(declare-fun e!85655 () Bool)

(assert (=> b!144502 (= e!85655 e!85656)))

(declare-fun b!144501 () Bool)

(declare-fun e!85654 () Bool)

(assert (=> b!144501 (= e!85654 e!85655)))

(assert (=> b!143949 e!85654))

(assert (= b!144502 b!144503))

(assert (= b!144501 b!144502))

(assert (= (and b!143949 ((_ is Cons!2492) (t!23896 rules!1920))) b!144501))

(assert (=> b!144503 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (h!7889 (t!23896 rules!1920))))) (dynLambda!838 order!1199 lambda!3466))))

(assert (=> b!144503 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920))))) (dynLambda!838 order!1199 lambda!3466))))

(declare-fun b!144506 () Bool)

(declare-fun e!85659 () Bool)

(assert (=> b!144506 (= e!85659 true)))

(declare-fun b!144505 () Bool)

(declare-fun e!85658 () Bool)

(assert (=> b!144505 (= e!85658 e!85659)))

(declare-fun b!144504 () Bool)

(declare-fun e!85657 () Bool)

(assert (=> b!144504 (= e!85657 e!85658)))

(assert (=> b!143940 e!85657))

(assert (= b!144505 b!144506))

(assert (= b!144504 b!144505))

(assert (= (and b!143940 ((_ is Cons!2492) (t!23896 rules!1920))) b!144504))

(assert (=> b!144506 (< (dynLambda!837 order!1197 (toValue!1044 (transformation!425 (h!7889 (t!23896 rules!1920))))) (dynLambda!838 order!1199 lambda!3461))))

(assert (=> b!144506 (< (dynLambda!839 order!1201 (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920))))) (dynLambda!838 order!1199 lambda!3461))))

(declare-fun b!144510 () Bool)

(declare-fun e!85660 () Bool)

(declare-fun tp!76155 () Bool)

(declare-fun tp!76154 () Bool)

(assert (=> b!144510 (= e!85660 (and tp!76155 tp!76154))))

(declare-fun b!144509 () Bool)

(declare-fun tp!76157 () Bool)

(assert (=> b!144509 (= e!85660 tp!76157)))

(assert (=> b!143963 (= tp!75976 e!85660)))

(declare-fun b!144507 () Bool)

(assert (=> b!144507 (= e!85660 tp_is_empty!1587)))

(declare-fun b!144508 () Bool)

(declare-fun tp!76158 () Bool)

(declare-fun tp!76156 () Bool)

(assert (=> b!144508 (= e!85660 (and tp!76158 tp!76156))))

(assert (= (and b!143963 ((_ is ElementMatch!649) (regOne!1810 (regex!425 (h!7889 rules!1920))))) b!144507))

(assert (= (and b!143963 ((_ is Concat!1097) (regOne!1810 (regex!425 (h!7889 rules!1920))))) b!144508))

(assert (= (and b!143963 ((_ is Star!649) (regOne!1810 (regex!425 (h!7889 rules!1920))))) b!144509))

(assert (= (and b!143963 ((_ is Union!649) (regOne!1810 (regex!425 (h!7889 rules!1920))))) b!144510))

(declare-fun b!144514 () Bool)

(declare-fun e!85661 () Bool)

(declare-fun tp!76160 () Bool)

(declare-fun tp!76159 () Bool)

(assert (=> b!144514 (= e!85661 (and tp!76160 tp!76159))))

(declare-fun b!144513 () Bool)

(declare-fun tp!76162 () Bool)

(assert (=> b!144513 (= e!85661 tp!76162)))

(assert (=> b!143963 (= tp!75974 e!85661)))

(declare-fun b!144511 () Bool)

(assert (=> b!144511 (= e!85661 tp_is_empty!1587)))

(declare-fun b!144512 () Bool)

(declare-fun tp!76163 () Bool)

(declare-fun tp!76161 () Bool)

(assert (=> b!144512 (= e!85661 (and tp!76163 tp!76161))))

(assert (= (and b!143963 ((_ is ElementMatch!649) (regTwo!1810 (regex!425 (h!7889 rules!1920))))) b!144511))

(assert (= (and b!143963 ((_ is Concat!1097) (regTwo!1810 (regex!425 (h!7889 rules!1920))))) b!144512))

(assert (= (and b!143963 ((_ is Star!649) (regTwo!1810 (regex!425 (h!7889 rules!1920))))) b!144513))

(assert (= (and b!143963 ((_ is Union!649) (regTwo!1810 (regex!425 (h!7889 rules!1920))))) b!144514))

(declare-fun b!144518 () Bool)

(declare-fun e!85662 () Bool)

(declare-fun tp!76165 () Bool)

(declare-fun tp!76164 () Bool)

(assert (=> b!144518 (= e!85662 (and tp!76165 tp!76164))))

(declare-fun b!144517 () Bool)

(declare-fun tp!76167 () Bool)

(assert (=> b!144517 (= e!85662 tp!76167)))

(assert (=> b!143999 (= tp!76011 e!85662)))

(declare-fun b!144515 () Bool)

(assert (=> b!144515 (= e!85662 tp_is_empty!1587)))

(declare-fun b!144516 () Bool)

(declare-fun tp!76168 () Bool)

(declare-fun tp!76166 () Bool)

(assert (=> b!144516 (= e!85662 (and tp!76168 tp!76166))))

(assert (= (and b!143999 ((_ is ElementMatch!649) (reg!978 (regex!425 (rule!932 separatorToken!170))))) b!144515))

(assert (= (and b!143999 ((_ is Concat!1097) (reg!978 (regex!425 (rule!932 separatorToken!170))))) b!144516))

(assert (= (and b!143999 ((_ is Star!649) (reg!978 (regex!425 (rule!932 separatorToken!170))))) b!144517))

(assert (= (and b!143999 ((_ is Union!649) (reg!978 (regex!425 (rule!932 separatorToken!170))))) b!144518))

(declare-fun b!144522 () Bool)

(declare-fun e!85663 () Bool)

(declare-fun tp!76170 () Bool)

(declare-fun tp!76169 () Bool)

(assert (=> b!144522 (= e!85663 (and tp!76170 tp!76169))))

(declare-fun b!144521 () Bool)

(declare-fun tp!76172 () Bool)

(assert (=> b!144521 (= e!85663 tp!76172)))

(assert (=> b!144004 (= tp!76014 e!85663)))

(declare-fun b!144519 () Bool)

(assert (=> b!144519 (= e!85663 tp_is_empty!1587)))

(declare-fun b!144520 () Bool)

(declare-fun tp!76173 () Bool)

(declare-fun tp!76171 () Bool)

(assert (=> b!144520 (= e!85663 (and tp!76173 tp!76171))))

(assert (= (and b!144004 ((_ is ElementMatch!649) (regOne!1811 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144519))

(assert (= (and b!144004 ((_ is Concat!1097) (regOne!1811 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144520))

(assert (= (and b!144004 ((_ is Star!649) (regOne!1811 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144521))

(assert (= (and b!144004 ((_ is Union!649) (regOne!1811 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144522))

(declare-fun b!144526 () Bool)

(declare-fun e!85664 () Bool)

(declare-fun tp!76175 () Bool)

(declare-fun tp!76174 () Bool)

(assert (=> b!144526 (= e!85664 (and tp!76175 tp!76174))))

(declare-fun b!144525 () Bool)

(declare-fun tp!76177 () Bool)

(assert (=> b!144525 (= e!85664 tp!76177)))

(assert (=> b!144004 (= tp!76013 e!85664)))

(declare-fun b!144523 () Bool)

(assert (=> b!144523 (= e!85664 tp_is_empty!1587)))

(declare-fun b!144524 () Bool)

(declare-fun tp!76178 () Bool)

(declare-fun tp!76176 () Bool)

(assert (=> b!144524 (= e!85664 (and tp!76178 tp!76176))))

(assert (= (and b!144004 ((_ is ElementMatch!649) (regTwo!1811 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144523))

(assert (= (and b!144004 ((_ is Concat!1097) (regTwo!1811 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144524))

(assert (= (and b!144004 ((_ is Star!649) (regTwo!1811 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144525))

(assert (= (and b!144004 ((_ is Union!649) (regTwo!1811 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144526))

(declare-fun b!144527 () Bool)

(declare-fun e!85665 () Bool)

(declare-fun tp!76179 () Bool)

(assert (=> b!144527 (= e!85665 (and tp_is_empty!1587 tp!76179))))

(assert (=> b!143981 (= tp!75991 e!85665)))

(assert (= (and b!143981 ((_ is Cons!2490) (t!23894 (originalCharacters!468 separatorToken!170)))) b!144527))

(declare-fun b!144531 () Bool)

(declare-fun e!85666 () Bool)

(declare-fun tp!76181 () Bool)

(declare-fun tp!76180 () Bool)

(assert (=> b!144531 (= e!85666 (and tp!76181 tp!76180))))

(declare-fun b!144530 () Bool)

(declare-fun tp!76183 () Bool)

(assert (=> b!144530 (= e!85666 tp!76183)))

(assert (=> b!143995 (= tp!76006 e!85666)))

(declare-fun b!144528 () Bool)

(assert (=> b!144528 (= e!85666 tp_is_empty!1587)))

(declare-fun b!144529 () Bool)

(declare-fun tp!76184 () Bool)

(declare-fun tp!76182 () Bool)

(assert (=> b!144529 (= e!85666 (and tp!76184 tp!76182))))

(assert (= (and b!143995 ((_ is ElementMatch!649) (regex!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) b!144528))

(assert (= (and b!143995 ((_ is Concat!1097) (regex!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) b!144529))

(assert (= (and b!143995 ((_ is Star!649) (regex!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) b!144530))

(assert (= (and b!143995 ((_ is Union!649) (regex!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) b!144531))

(declare-fun b!144535 () Bool)

(declare-fun e!85667 () Bool)

(declare-fun tp!76186 () Bool)

(declare-fun tp!76185 () Bool)

(assert (=> b!144535 (= e!85667 (and tp!76186 tp!76185))))

(declare-fun b!144534 () Bool)

(declare-fun tp!76188 () Bool)

(assert (=> b!144534 (= e!85667 tp!76188)))

(assert (=> b!144000 (= tp!76009 e!85667)))

(declare-fun b!144532 () Bool)

(assert (=> b!144532 (= e!85667 tp_is_empty!1587)))

(declare-fun b!144533 () Bool)

(declare-fun tp!76189 () Bool)

(declare-fun tp!76187 () Bool)

(assert (=> b!144533 (= e!85667 (and tp!76189 tp!76187))))

(assert (= (and b!144000 ((_ is ElementMatch!649) (regOne!1811 (regex!425 (rule!932 separatorToken!170))))) b!144532))

(assert (= (and b!144000 ((_ is Concat!1097) (regOne!1811 (regex!425 (rule!932 separatorToken!170))))) b!144533))

(assert (= (and b!144000 ((_ is Star!649) (regOne!1811 (regex!425 (rule!932 separatorToken!170))))) b!144534))

(assert (= (and b!144000 ((_ is Union!649) (regOne!1811 (regex!425 (rule!932 separatorToken!170))))) b!144535))

(declare-fun b!144539 () Bool)

(declare-fun e!85668 () Bool)

(declare-fun tp!76191 () Bool)

(declare-fun tp!76190 () Bool)

(assert (=> b!144539 (= e!85668 (and tp!76191 tp!76190))))

(declare-fun b!144538 () Bool)

(declare-fun tp!76193 () Bool)

(assert (=> b!144538 (= e!85668 tp!76193)))

(assert (=> b!144000 (= tp!76008 e!85668)))

(declare-fun b!144536 () Bool)

(assert (=> b!144536 (= e!85668 tp_is_empty!1587)))

(declare-fun b!144537 () Bool)

(declare-fun tp!76194 () Bool)

(declare-fun tp!76192 () Bool)

(assert (=> b!144537 (= e!85668 (and tp!76194 tp!76192))))

(assert (= (and b!144000 ((_ is ElementMatch!649) (regTwo!1811 (regex!425 (rule!932 separatorToken!170))))) b!144536))

(assert (= (and b!144000 ((_ is Concat!1097) (regTwo!1811 (regex!425 (rule!932 separatorToken!170))))) b!144537))

(assert (= (and b!144000 ((_ is Star!649) (regTwo!1811 (regex!425 (rule!932 separatorToken!170))))) b!144538))

(assert (= (and b!144000 ((_ is Union!649) (regTwo!1811 (regex!425 (rule!932 separatorToken!170))))) b!144539))

(declare-fun b!144543 () Bool)

(declare-fun b_free!5005 () Bool)

(declare-fun b_next!5005 () Bool)

(assert (=> b!144543 (= b_free!5005 (not b_next!5005))))

(declare-fun tp!76197 () Bool)

(declare-fun b_and!7729 () Bool)

(assert (=> b!144543 (= tp!76197 b_and!7729)))

(declare-fun b_free!5007 () Bool)

(declare-fun b_next!5007 () Bool)

(assert (=> b!144543 (= b_free!5007 (not b_next!5007))))

(declare-fun t!23994 () Bool)

(declare-fun tb!4533 () Bool)

(assert (=> (and b!144543 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 (t!23895 tokens!465)))))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) t!23994) tb!4533))

(declare-fun result!6856 () Bool)

(assert (= result!6856 result!6820))

(assert (=> b!144116 t!23994))

(declare-fun t!23996 () Bool)

(declare-fun tb!4535 () Bool)

(assert (=> (and b!144543 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 (t!23895 tokens!465)))))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) t!23996) tb!4535))

(declare-fun result!6858 () Bool)

(assert (= result!6858 result!6768))

(assert (=> d!34388 t!23996))

(assert (=> b!143741 t!23996))

(declare-fun t!23998 () Bool)

(declare-fun tb!4537 () Bool)

(assert (=> (and b!144543 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 (t!23895 tokens!465)))))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) t!23998) tb!4537))

(declare-fun result!6860 () Bool)

(assert (= result!6860 result!6776))

(assert (=> d!34266 t!23998))

(assert (=> b!143757 t!23998))

(declare-fun tp!76195 () Bool)

(declare-fun b_and!7731 () Bool)

(assert (=> b!144543 (= tp!76195 (and (=> t!23998 result!6860) (=> t!23994 result!6856) (=> t!23996 result!6858) b_and!7731))))

(declare-fun e!85669 () Bool)

(assert (=> b!144543 (= e!85669 (and tp!76197 tp!76195))))

(declare-fun e!85674 () Bool)

(declare-fun e!85672 () Bool)

(declare-fun tp!76196 () Bool)

(declare-fun b!144540 () Bool)

(assert (=> b!144540 (= e!85672 (and (inv!3262 (h!7888 (t!23895 (t!23895 tokens!465)))) e!85674 tp!76196))))

(declare-fun tp!76199 () Bool)

(declare-fun b!144541 () Bool)

(declare-fun e!85673 () Bool)

(assert (=> b!144541 (= e!85674 (and (inv!21 (value!16428 (h!7888 (t!23895 (t!23895 tokens!465))))) e!85673 tp!76199))))

(declare-fun tp!76198 () Bool)

(declare-fun b!144542 () Bool)

(assert (=> b!144542 (= e!85673 (and tp!76198 (inv!3259 (tag!603 (rule!932 (h!7888 (t!23895 (t!23895 tokens!465)))))) (inv!3263 (transformation!425 (rule!932 (h!7888 (t!23895 (t!23895 tokens!465)))))) e!85669))))

(assert (=> b!143993 (= tp!76004 e!85672)))

(assert (= b!144542 b!144543))

(assert (= b!144541 b!144542))

(assert (= b!144540 b!144541))

(assert (= (and b!143993 ((_ is Cons!2491) (t!23895 (t!23895 tokens!465)))) b!144540))

(declare-fun m!127291 () Bool)

(assert (=> b!144540 m!127291))

(declare-fun m!127293 () Bool)

(assert (=> b!144541 m!127293))

(declare-fun m!127295 () Bool)

(assert (=> b!144542 m!127295))

(declare-fun m!127297 () Bool)

(assert (=> b!144542 m!127297))

(declare-fun b!144546 () Bool)

(declare-fun b_free!5009 () Bool)

(declare-fun b_next!5009 () Bool)

(assert (=> b!144546 (= b_free!5009 (not b_next!5009))))

(declare-fun tp!76203 () Bool)

(declare-fun b_and!7733 () Bool)

(assert (=> b!144546 (= tp!76203 b_and!7733)))

(declare-fun b_free!5011 () Bool)

(declare-fun b_next!5011 () Bool)

(assert (=> b!144546 (= b_free!5011 (not b_next!5011))))

(declare-fun t!24000 () Bool)

(declare-fun tb!4539 () Bool)

(assert (=> (and b!144546 (= (toChars!903 (transformation!425 (h!7889 (t!23896 (t!23896 rules!1920))))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465)))))) t!24000) tb!4539))

(declare-fun result!6862 () Bool)

(assert (= result!6862 result!6820))

(assert (=> b!144116 t!24000))

(declare-fun t!24002 () Bool)

(declare-fun tb!4541 () Bool)

(assert (=> (and b!144546 (= (toChars!903 (transformation!425 (h!7889 (t!23896 (t!23896 rules!1920))))) (toChars!903 (transformation!425 (rule!932 separatorToken!170)))) t!24002) tb!4541))

(declare-fun result!6864 () Bool)

(assert (= result!6864 result!6768))

(assert (=> d!34388 t!24002))

(assert (=> b!143741 t!24002))

(declare-fun tb!4543 () Bool)

(declare-fun t!24004 () Bool)

(assert (=> (and b!144546 (= (toChars!903 (transformation!425 (h!7889 (t!23896 (t!23896 rules!1920))))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465))))) t!24004) tb!4543))

(declare-fun result!6866 () Bool)

(assert (= result!6866 result!6776))

(assert (=> d!34266 t!24004))

(assert (=> b!143757 t!24004))

(declare-fun b_and!7735 () Bool)

(declare-fun tp!76202 () Bool)

(assert (=> b!144546 (= tp!76202 (and (=> t!24002 result!6864) (=> t!24004 result!6866) (=> t!24000 result!6862) b_and!7735))))

(declare-fun e!85677 () Bool)

(assert (=> b!144546 (= e!85677 (and tp!76203 tp!76202))))

(declare-fun tp!76201 () Bool)

(declare-fun b!144545 () Bool)

(declare-fun e!85675 () Bool)

(assert (=> b!144545 (= e!85675 (and tp!76201 (inv!3259 (tag!603 (h!7889 (t!23896 (t!23896 rules!1920))))) (inv!3263 (transformation!425 (h!7889 (t!23896 (t!23896 rules!1920))))) e!85677))))

(declare-fun b!144544 () Bool)

(declare-fun e!85676 () Bool)

(declare-fun tp!76200 () Bool)

(assert (=> b!144544 (= e!85676 (and e!85675 tp!76200))))

(assert (=> b!143974 (= tp!75985 e!85676)))

(assert (= b!144545 b!144546))

(assert (= b!144544 b!144545))

(assert (= (and b!143974 ((_ is Cons!2492) (t!23896 (t!23896 rules!1920)))) b!144544))

(declare-fun m!127299 () Bool)

(assert (=> b!144545 m!127299))

(declare-fun m!127301 () Bool)

(assert (=> b!144545 m!127301))

(declare-fun b!144550 () Bool)

(declare-fun e!85679 () Bool)

(declare-fun tp!76205 () Bool)

(declare-fun tp!76204 () Bool)

(assert (=> b!144550 (= e!85679 (and tp!76205 tp!76204))))

(declare-fun b!144549 () Bool)

(declare-fun tp!76207 () Bool)

(assert (=> b!144549 (= e!85679 tp!76207)))

(assert (=> b!143998 (= tp!76012 e!85679)))

(declare-fun b!144547 () Bool)

(assert (=> b!144547 (= e!85679 tp_is_empty!1587)))

(declare-fun b!144548 () Bool)

(declare-fun tp!76208 () Bool)

(declare-fun tp!76206 () Bool)

(assert (=> b!144548 (= e!85679 (and tp!76208 tp!76206))))

(assert (= (and b!143998 ((_ is ElementMatch!649) (regOne!1810 (regex!425 (rule!932 separatorToken!170))))) b!144547))

(assert (= (and b!143998 ((_ is Concat!1097) (regOne!1810 (regex!425 (rule!932 separatorToken!170))))) b!144548))

(assert (= (and b!143998 ((_ is Star!649) (regOne!1810 (regex!425 (rule!932 separatorToken!170))))) b!144549))

(assert (= (and b!143998 ((_ is Union!649) (regOne!1810 (regex!425 (rule!932 separatorToken!170))))) b!144550))

(declare-fun b!144554 () Bool)

(declare-fun e!85680 () Bool)

(declare-fun tp!76210 () Bool)

(declare-fun tp!76209 () Bool)

(assert (=> b!144554 (= e!85680 (and tp!76210 tp!76209))))

(declare-fun b!144553 () Bool)

(declare-fun tp!76212 () Bool)

(assert (=> b!144553 (= e!85680 tp!76212)))

(assert (=> b!143998 (= tp!76010 e!85680)))

(declare-fun b!144551 () Bool)

(assert (=> b!144551 (= e!85680 tp_is_empty!1587)))

(declare-fun b!144552 () Bool)

(declare-fun tp!76213 () Bool)

(declare-fun tp!76211 () Bool)

(assert (=> b!144552 (= e!85680 (and tp!76213 tp!76211))))

(assert (= (and b!143998 ((_ is ElementMatch!649) (regTwo!1810 (regex!425 (rule!932 separatorToken!170))))) b!144551))

(assert (= (and b!143998 ((_ is Concat!1097) (regTwo!1810 (regex!425 (rule!932 separatorToken!170))))) b!144552))

(assert (= (and b!143998 ((_ is Star!649) (regTwo!1810 (regex!425 (rule!932 separatorToken!170))))) b!144553))

(assert (= (and b!143998 ((_ is Union!649) (regTwo!1810 (regex!425 (rule!932 separatorToken!170))))) b!144554))

(declare-fun b!144558 () Bool)

(declare-fun e!85681 () Bool)

(declare-fun tp!76215 () Bool)

(declare-fun tp!76214 () Bool)

(assert (=> b!144558 (= e!85681 (and tp!76215 tp!76214))))

(declare-fun b!144557 () Bool)

(declare-fun tp!76217 () Bool)

(assert (=> b!144557 (= e!85681 tp!76217)))

(assert (=> b!143975 (= tp!75986 e!85681)))

(declare-fun b!144555 () Bool)

(assert (=> b!144555 (= e!85681 tp_is_empty!1587)))

(declare-fun b!144556 () Bool)

(declare-fun tp!76218 () Bool)

(declare-fun tp!76216 () Bool)

(assert (=> b!144556 (= e!85681 (and tp!76218 tp!76216))))

(assert (= (and b!143975 ((_ is ElementMatch!649) (regex!425 (h!7889 (t!23896 rules!1920))))) b!144555))

(assert (= (and b!143975 ((_ is Concat!1097) (regex!425 (h!7889 (t!23896 rules!1920))))) b!144556))

(assert (= (and b!143975 ((_ is Star!649) (regex!425 (h!7889 (t!23896 rules!1920))))) b!144557))

(assert (= (and b!143975 ((_ is Union!649) (regex!425 (h!7889 (t!23896 rules!1920))))) b!144558))

(declare-fun b!144562 () Bool)

(declare-fun e!85682 () Bool)

(declare-fun tp!76220 () Bool)

(declare-fun tp!76219 () Bool)

(assert (=> b!144562 (= e!85682 (and tp!76220 tp!76219))))

(declare-fun b!144561 () Bool)

(declare-fun tp!76222 () Bool)

(assert (=> b!144561 (= e!85682 tp!76222)))

(assert (=> b!144003 (= tp!76016 e!85682)))

(declare-fun b!144559 () Bool)

(assert (=> b!144559 (= e!85682 tp_is_empty!1587)))

(declare-fun b!144560 () Bool)

(declare-fun tp!76223 () Bool)

(declare-fun tp!76221 () Bool)

(assert (=> b!144560 (= e!85682 (and tp!76223 tp!76221))))

(assert (= (and b!144003 ((_ is ElementMatch!649) (reg!978 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144559))

(assert (= (and b!144003 ((_ is Concat!1097) (reg!978 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144560))

(assert (= (and b!144003 ((_ is Star!649) (reg!978 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144561))

(assert (= (and b!144003 ((_ is Union!649) (reg!978 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144562))

(declare-fun b!144563 () Bool)

(declare-fun e!85683 () Bool)

(declare-fun tp!76224 () Bool)

(assert (=> b!144563 (= e!85683 (and tp_is_empty!1587 tp!76224))))

(assert (=> b!143994 (= tp!76007 e!85683)))

(assert (= (and b!143994 ((_ is Cons!2490) (originalCharacters!468 (h!7888 (t!23895 tokens!465))))) b!144563))

(declare-fun e!85685 () Bool)

(declare-fun tp!76227 () Bool)

(declare-fun b!144564 () Bool)

(declare-fun tp!76226 () Bool)

(assert (=> b!144564 (= e!85685 (and (inv!3266 (left!1879 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))))) tp!76227 (inv!3266 (right!2209 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))))) tp!76226))))

(declare-fun b!144566 () Bool)

(declare-fun e!85684 () Bool)

(declare-fun tp!76225 () Bool)

(assert (=> b!144566 (= e!85684 tp!76225)))

(declare-fun b!144565 () Bool)

(assert (=> b!144565 (= e!85685 (and (inv!3273 (xs!3267 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))))) e!85684))))

(assert (=> b!143759 (= tp!75904 (and (inv!3266 (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465))))) e!85685))))

(assert (= (and b!143759 ((_ is Node!672) (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))))) b!144564))

(assert (= b!144565 b!144566))

(assert (= (and b!143759 ((_ is Leaf!1224) (c!29527 (dynLambda!836 (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (value!16428 (h!7888 tokens!465)))))) b!144565))

(declare-fun m!127303 () Bool)

(assert (=> b!144564 m!127303))

(declare-fun m!127305 () Bool)

(assert (=> b!144564 m!127305))

(declare-fun m!127307 () Bool)

(assert (=> b!144565 m!127307))

(assert (=> b!143759 m!126301))

(declare-fun b!144570 () Bool)

(declare-fun e!85686 () Bool)

(declare-fun tp!76229 () Bool)

(declare-fun tp!76228 () Bool)

(assert (=> b!144570 (= e!85686 (and tp!76229 tp!76228))))

(declare-fun b!144569 () Bool)

(declare-fun tp!76231 () Bool)

(assert (=> b!144569 (= e!85686 tp!76231)))

(assert (=> b!144002 (= tp!76017 e!85686)))

(declare-fun b!144567 () Bool)

(assert (=> b!144567 (= e!85686 tp_is_empty!1587)))

(declare-fun b!144568 () Bool)

(declare-fun tp!76232 () Bool)

(declare-fun tp!76230 () Bool)

(assert (=> b!144568 (= e!85686 (and tp!76232 tp!76230))))

(assert (= (and b!144002 ((_ is ElementMatch!649) (regOne!1810 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144567))

(assert (= (and b!144002 ((_ is Concat!1097) (regOne!1810 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144568))

(assert (= (and b!144002 ((_ is Star!649) (regOne!1810 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144569))

(assert (= (and b!144002 ((_ is Union!649) (regOne!1810 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144570))

(declare-fun b!144574 () Bool)

(declare-fun e!85687 () Bool)

(declare-fun tp!76234 () Bool)

(declare-fun tp!76233 () Bool)

(assert (=> b!144574 (= e!85687 (and tp!76234 tp!76233))))

(declare-fun b!144573 () Bool)

(declare-fun tp!76236 () Bool)

(assert (=> b!144573 (= e!85687 tp!76236)))

(assert (=> b!144002 (= tp!76015 e!85687)))

(declare-fun b!144571 () Bool)

(assert (=> b!144571 (= e!85687 tp_is_empty!1587)))

(declare-fun b!144572 () Bool)

(declare-fun tp!76237 () Bool)

(declare-fun tp!76235 () Bool)

(assert (=> b!144572 (= e!85687 (and tp!76237 tp!76235))))

(assert (= (and b!144002 ((_ is ElementMatch!649) (regTwo!1810 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144571))

(assert (= (and b!144002 ((_ is Concat!1097) (regTwo!1810 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144572))

(assert (= (and b!144002 ((_ is Star!649) (regTwo!1810 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144573))

(assert (= (and b!144002 ((_ is Union!649) (regTwo!1810 (regex!425 (rule!932 (h!7888 tokens!465)))))) b!144574))

(declare-fun b_lambda!2363 () Bool)

(assert (= b_lambda!2331 (or (and b!143976 b_free!4991 (= (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!143677 b_free!4971 (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!143662 b_free!4975 (= (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!143996 b_free!4995 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!143674 b_free!4979) (and b!144543 b_free!5007 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 (t!23895 tokens!465)))))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) (and b!144546 b_free!5011 (= (toChars!903 (transformation!425 (h!7889 (t!23896 (t!23896 rules!1920))))) (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))))) b_lambda!2363)))

(declare-fun b_lambda!2365 () Bool)

(assert (= b_lambda!2341 (or b!143931 b_lambda!2365)))

(declare-fun bs!13090 () Bool)

(declare-fun d!34446 () Bool)

(assert (= bs!13090 (and d!34446 b!143931)))

(assert (=> bs!13090 (= (dynLambda!835 lambda!3461 (h!7888 tokens!465)) (rulesProduceIndividualToken!60 thiss!17480 rules!1920 (h!7888 tokens!465)))))

(declare-fun m!127309 () Bool)

(assert (=> bs!13090 m!127309))

(assert (=> d!34378 d!34446))

(declare-fun b_lambda!2367 () Bool)

(assert (= b_lambda!2343 (or (and b!143662 b_free!4975) (and b!143674 b_free!4979 (= (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) (and b!143976 b_free!4991 (= (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) (and b!144546 b_free!5011 (= (toChars!903 (transformation!425 (h!7889 (t!23896 (t!23896 rules!1920))))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) (and b!143677 b_free!4971 (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) (and b!143996 b_free!4995 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) (and b!144543 b_free!5007 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 (t!23895 tokens!465)))))) (toChars!903 (transformation!425 (rule!932 separatorToken!170))))) b_lambda!2367)))

(declare-fun b_lambda!2369 () Bool)

(assert (= b_lambda!2327 (or d!34178 b_lambda!2369)))

(declare-fun bs!13091 () Bool)

(declare-fun d!34448 () Bool)

(assert (= bs!13091 (and d!34448 d!34178)))

(assert (=> bs!13091 (= (dynLambda!835 lambda!3466 (h!7888 (list!857 lt!41357))) (rulesProduceIndividualToken!60 thiss!17480 rules!1920 (h!7888 (list!857 lt!41357))))))

(assert (=> bs!13091 m!127095))

(assert (=> b!144079 d!34448))

(declare-fun b_lambda!2371 () Bool)

(assert (= b_lambda!2329 (or b!143675 b_lambda!2371)))

(declare-fun bs!13092 () Bool)

(declare-fun d!34450 () Bool)

(assert (= bs!13092 (and d!34450 b!143675)))

(assert (=> bs!13092 (= (dynLambda!835 lambda!3450 (h!7888 (t!23895 tokens!465))) (not (isSeparator!425 (rule!932 (h!7888 (t!23895 tokens!465))))))))

(assert (=> b!144101 d!34450))

(declare-fun b_lambda!2373 () Bool)

(assert (= b_lambda!2333 (or (and b!144543 b_free!5007 (= (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 (t!23895 tokens!465)))))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))))) (and b!143996 b_free!4995) (and b!143662 b_free!4975 (= (toChars!903 (transformation!425 (rule!932 separatorToken!170))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))))) (and b!143976 b_free!4991 (= (toChars!903 (transformation!425 (h!7889 (t!23896 rules!1920)))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))))) (and b!143674 b_free!4979 (= (toChars!903 (transformation!425 (rule!932 (h!7888 tokens!465)))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))))) (and b!144546 b_free!5011 (= (toChars!903 (transformation!425 (h!7889 (t!23896 (t!23896 rules!1920))))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))))) (and b!143677 b_free!4971 (= (toChars!903 (transformation!425 (h!7889 rules!1920))) (toChars!903 (transformation!425 (rule!932 (h!7888 (t!23895 tokens!465))))))) b_lambda!2373)))

(check-sat (not b_next!5005) (not b!144544) (not b!144282) (not b!143759) (not d!34308) (not b_next!5011) (not b!144518) (not b!144480) (not b!144561) (not b!144342) (not b!144073) (not b!144260) (not d!34270) (not b!144485) (not d!34272) (not tb!4501) b_and!7653 (not b!144499) (not b!144275) (not d!34284) (not b!143747) (not b!144562) (not b!144116) (not bm!5617) (not b!144074) (not d!34428) (not b!144566) (not d!34322) (not b!144572) (not b!144261) (not d!34216) (not b!144091) (not b!144538) (not b!144494) (not d!34258) (not bs!13091) (not b!144474) (not d!34248) (not b!144111) (not b_next!4979) (not b!144246) (not b!144568) (not b!144552) (not bm!5625) (not b_next!4971) (not b!144563) (not bm!5627) (not b!144556) (not b!144574) (not b_next!5007) (not b!144269) (not b!144276) (not b!144549) (not b!144509) (not d!34388) (not b!144539) b_and!7705 (not b!144166) (not b!144516) (not b!144158) (not b!144254) (not b!144284) (not d!34230) (not d!34378) (not b!144473) (not b!144341) (not d!34242) (not b!144179) (not b!144264) (not b!144258) (not b_lambda!2365) (not d!34260) (not d!34286) (not b!144498) (not b!144510) (not b!144517) (not b!144102) (not d!34374) (not d!34232) (not b!144512) (not b!144501) (not d!34244) (not b_lambda!2321) (not b!144558) b_and!7613 (not d!34240) (not b!144122) (not b!144098) (not b!144244) b_and!7707 (not b!144117) (not b_lambda!2369) (not b_next!5009) (not b!144100) (not d!34262) (not b!144573) (not bs!13090) b_and!7733 (not bm!5628) (not d!34292) (not d!34224) (not b!144540) (not d!34394) (not b_lambda!2367) (not b!144354) (not b!144251) (not b!144478) (not b!144345) (not b_next!4995) (not b!144482) (not b!144340) (not b_next!4991) (not d!34238) b_and!7735 b_and!7703 (not b!144524) (not b!144352) (not b!144548) (not d!34214) (not d!34264) b_and!7709 (not b!144514) tp_is_empty!1587 (not b!144495) (not b!144143) (not d!34274) (not b!144520) (not b!144496) b_and!7657 (not b!144531) (not b_lambda!2373) (not b!144554) (not b_next!4975) (not d!34296) b_and!7609 (not d!34226) (not d!34312) (not d!34434) (not b!144479) (not d!34266) (not d!34300) (not b!144165) (not b_next!4977) (not b!144249) (not b!144245) b_and!7701 (not b_lambda!2371) (not b!144569) (not b!144545) (not b!144080) (not b!144535) (not d!34432) (not d!34310) (not b!144542) (not d!34236) (not b_next!4989) (not b!144083) (not b!144513) (not b!144475) (not b!144534) (not d!34234) (not b!144071) (not b_next!4969) (not b!144526) (not b!144550) (not b!144529) (not b!144178) (not b!144086) (not b!144172) (not b!144521) (not b!144157) (not d!34320) (not b!144570) (not b!144483) (not b!144279) (not b_lambda!2325) (not b_next!4993) (not b!144500) b_and!7617 (not bm!5630) (not b!144253) (not b!144564) (not b!144248) (not b!144525) (not b!144133) (not d!34380) (not b_lambda!2363) b_and!7731 (not d!34314) (not b!144565) (not b!144530) (not b!144560) (not b!144278) (not b!144072) (not b!144277) (not b!144557) (not d!34278) (not b!144504) (not d!34426) (not d!34392) (not b!144533) (not bm!5629) b_and!7729 (not b_lambda!2323) (not b!144553) (not d!34252) (not b!144522) (not b!144527) (not d!34302) (not b!144537) (not d!34316) (not b!144247) (not b_next!4973) (not b!144078) (not b!144263) (not b!144250) (not b!144484) (not d!34326) (not b!144174) (not b!144541) (not d!34430) (not b!144508))
(check-sat b_and!7653 (not b_next!5007) b_and!7705 b_and!7613 b_and!7733 (not b_next!4995) b_and!7709 (not b_next!4977) b_and!7701 (not b_next!4989) (not b_next!4969) b_and!7731 b_and!7729 (not b_next!4973) (not b_next!5005) (not b_next!5011) (not b_next!4979) (not b_next!4971) b_and!7707 (not b_next!5009) (not b_next!4991) b_and!7735 b_and!7703 b_and!7657 (not b_next!4975) b_and!7609 (not b_next!4993) b_and!7617)
