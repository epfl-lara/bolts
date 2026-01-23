; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26338 () Bool)

(assert start!26338)

(declare-fun b!248039 () Bool)

(declare-fun b_free!9217 () Bool)

(declare-fun b_next!9217 () Bool)

(assert (=> b!248039 (= b_free!9217 (not b_next!9217))))

(declare-fun tp!96672 () Bool)

(declare-fun b_and!18685 () Bool)

(assert (=> b!248039 (= tp!96672 b_and!18685)))

(declare-fun b_free!9219 () Bool)

(declare-fun b_next!9219 () Bool)

(assert (=> b!248039 (= b_free!9219 (not b_next!9219))))

(declare-fun tp!96676 () Bool)

(declare-fun b_and!18687 () Bool)

(assert (=> b!248039 (= tp!96676 b_and!18687)))

(declare-fun b!248038 () Bool)

(declare-fun b_free!9221 () Bool)

(declare-fun b_next!9221 () Bool)

(assert (=> b!248038 (= b_free!9221 (not b_next!9221))))

(declare-fun tp!96674 () Bool)

(declare-fun b_and!18689 () Bool)

(assert (=> b!248038 (= tp!96674 b_and!18689)))

(declare-fun b_free!9223 () Bool)

(declare-fun b_next!9223 () Bool)

(assert (=> b!248038 (= b_free!9223 (not b_next!9223))))

(declare-fun tp!96679 () Bool)

(declare-fun b_and!18691 () Bool)

(assert (=> b!248038 (= tp!96679 b_and!18691)))

(declare-fun b!248042 () Bool)

(declare-fun b_free!9225 () Bool)

(declare-fun b_next!9225 () Bool)

(assert (=> b!248042 (= b_free!9225 (not b_next!9225))))

(declare-fun tp!96681 () Bool)

(declare-fun b_and!18693 () Bool)

(assert (=> b!248042 (= tp!96681 b_and!18693)))

(declare-fun b_free!9227 () Bool)

(declare-fun b_next!9227 () Bool)

(assert (=> b!248042 (= b_free!9227 (not b_next!9227))))

(declare-fun tp!96673 () Bool)

(declare-fun b_and!18695 () Bool)

(assert (=> b!248042 (= tp!96673 b_and!18695)))

(declare-fun bs!26624 () Bool)

(declare-fun b!248026 () Bool)

(declare-fun b!248015 () Bool)

(assert (= bs!26624 (and b!248026 b!248015)))

(declare-fun lambda!8178 () Int)

(declare-fun lambda!8177 () Int)

(assert (=> bs!26624 (not (= lambda!8178 lambda!8177))))

(declare-fun b!248060 () Bool)

(declare-fun e!153970 () Bool)

(assert (=> b!248060 (= e!153970 true)))

(declare-fun b!248059 () Bool)

(declare-fun e!153969 () Bool)

(assert (=> b!248059 (= e!153969 e!153970)))

(declare-fun b!248058 () Bool)

(declare-fun e!153968 () Bool)

(assert (=> b!248058 (= e!153968 e!153969)))

(assert (=> b!248026 e!153968))

(assert (= b!248059 b!248060))

(assert (= b!248058 b!248059))

(declare-datatypes ((List!3653 0))(
  ( (Nil!3643) (Cons!3643 (h!9040 (_ BitVec 16)) (t!35277 List!3653)) )
))
(declare-datatypes ((TokenValue!713 0))(
  ( (FloatLiteralValue!1426 (text!5436 List!3653)) (TokenValueExt!712 (__x!2913 Int)) (Broken!3565 (value!23983 List!3653)) (Object!722) (End!713) (Def!713) (Underscore!713) (Match!713) (Else!713) (Error!713) (Case!713) (If!713) (Extends!713) (Abstract!713) (Class!713) (Val!713) (DelimiterValue!1426 (del!773 List!3653)) (KeywordValue!719 (value!23984 List!3653)) (CommentValue!1426 (value!23985 List!3653)) (WhitespaceValue!1426 (value!23986 List!3653)) (IndentationValue!713 (value!23987 List!3653)) (String!4644) (Int32!713) (Broken!3566 (value!23988 List!3653)) (Boolean!714) (Unit!4431) (OperatorValue!716 (op!773 List!3653)) (IdentifierValue!1426 (value!23989 List!3653)) (IdentifierValue!1427 (value!23990 List!3653)) (WhitespaceValue!1427 (value!23991 List!3653)) (True!1426) (False!1426) (Broken!3567 (value!23992 List!3653)) (Broken!3568 (value!23993 List!3653)) (True!1427) (RightBrace!713) (RightBracket!713) (Colon!713) (Null!713) (Comma!713) (LeftBracket!713) (False!1427) (LeftBrace!713) (ImaginaryLiteralValue!713 (text!5437 List!3653)) (StringLiteralValue!2139 (value!23994 List!3653)) (EOFValue!713 (value!23995 List!3653)) (IdentValue!713 (value!23996 List!3653)) (DelimiterValue!1427 (value!23997 List!3653)) (DedentValue!713 (value!23998 List!3653)) (NewLineValue!713 (value!23999 List!3653)) (IntegerValue!2139 (value!24000 (_ BitVec 32)) (text!5438 List!3653)) (IntegerValue!2140 (value!24001 Int) (text!5439 List!3653)) (Times!713) (Or!713) (Equal!713) (Minus!713) (Broken!3569 (value!24002 List!3653)) (And!713) (Div!713) (LessEqual!713) (Mod!713) (Concat!1628) (Not!713) (Plus!713) (SpaceValue!713 (value!24003 List!3653)) (IntegerValue!2141 (value!24004 Int) (text!5440 List!3653)) (StringLiteralValue!2140 (text!5441 List!3653)) (FloatLiteralValue!1427 (text!5442 List!3653)) (BytesLiteralValue!713 (value!24005 List!3653)) (CommentValue!1427 (value!24006 List!3653)) (StringLiteralValue!2141 (value!24007 List!3653)) (ErrorTokenValue!713 (msg!774 List!3653)) )
))
(declare-datatypes ((C!2752 0))(
  ( (C!2753 (val!1262 Int)) )
))
(declare-datatypes ((List!3654 0))(
  ( (Nil!3644) (Cons!3644 (h!9041 C!2752) (t!35278 List!3654)) )
))
(declare-datatypes ((IArray!2409 0))(
  ( (IArray!2410 (innerList!1262 List!3654)) )
))
(declare-datatypes ((Conc!1204 0))(
  ( (Node!1204 (left!2988 Conc!1204) (right!3318 Conc!1204) (csize!2638 Int) (cheight!1415 Int)) (Leaf!1889 (xs!3799 IArray!2409) (csize!2639 Int)) (Empty!1204) )
))
(declare-datatypes ((BalanceConc!2416 0))(
  ( (BalanceConc!2417 (c!47256 Conc!1204)) )
))
(declare-datatypes ((TokenValueInjection!1198 0))(
  ( (TokenValueInjection!1199 (toValue!1394 Int) (toChars!1253 Int)) )
))
(declare-datatypes ((String!4645 0))(
  ( (String!4646 (value!24008 String)) )
))
(declare-datatypes ((Regex!915 0))(
  ( (ElementMatch!915 (c!47257 C!2752)) (Concat!1629 (regOne!2342 Regex!915) (regTwo!2342 Regex!915)) (EmptyExpr!915) (Star!915 (reg!1244 Regex!915)) (EmptyLang!915) (Union!915 (regOne!2343 Regex!915) (regTwo!2343 Regex!915)) )
))
(declare-datatypes ((Rule!1182 0))(
  ( (Rule!1183 (regex!691 Regex!915) (tag!899 String!4645) (isSeparator!691 Bool) (transformation!691 TokenValueInjection!1198)) )
))
(declare-datatypes ((List!3655 0))(
  ( (Nil!3645) (Cons!3645 (h!9042 Rule!1182) (t!35279 List!3655)) )
))
(declare-fun rules!1920 () List!3655)

(get-info :version)

(assert (= (and b!248026 ((_ is Cons!3645) rules!1920)) b!248058))

(declare-fun order!2685 () Int)

(declare-fun order!2687 () Int)

(declare-fun dynLambda!1779 (Int Int) Int)

(declare-fun dynLambda!1780 (Int Int) Int)

(assert (=> b!248060 (< (dynLambda!1779 order!2685 (toValue!1394 (transformation!691 (h!9042 rules!1920)))) (dynLambda!1780 order!2687 lambda!8178))))

(declare-fun order!2689 () Int)

(declare-fun dynLambda!1781 (Int Int) Int)

(assert (=> b!248060 (< (dynLambda!1781 order!2689 (toChars!1253 (transformation!691 (h!9042 rules!1920)))) (dynLambda!1780 order!2687 lambda!8178))))

(assert (=> b!248026 true))

(declare-fun res!114844 () Bool)

(declare-fun e!153944 () Bool)

(assert (=> b!248015 (=> (not res!114844) (not e!153944))))

(declare-datatypes ((Token!1126 0))(
  ( (Token!1127 (value!24009 TokenValue!713) (rule!1268 Rule!1182) (size!2889 Int) (originalCharacters!734 List!3654)) )
))
(declare-datatypes ((List!3656 0))(
  ( (Nil!3646) (Cons!3646 (h!9043 Token!1126) (t!35280 List!3656)) )
))
(declare-fun tokens!465 () List!3656)

(declare-fun forall!853 (List!3656 Int) Bool)

(assert (=> b!248015 (= res!114844 (forall!853 tokens!465 lambda!8177))))

(declare-fun b!248016 () Bool)

(declare-fun res!114832 () Bool)

(declare-fun e!153945 () Bool)

(assert (=> b!248016 (=> res!114832 e!153945)))

(declare-fun lt!100777 () List!3654)

(declare-datatypes ((LexerInterface!577 0))(
  ( (LexerInterfaceExt!574 (__x!2914 Int)) (Lexer!575) )
))
(declare-fun thiss!17480 () LexerInterface!577)

(declare-datatypes ((IArray!2411 0))(
  ( (IArray!2412 (innerList!1263 List!3656)) )
))
(declare-datatypes ((Conc!1205 0))(
  ( (Node!1205 (left!2989 Conc!1205) (right!3319 Conc!1205) (csize!2640 Int) (cheight!1416 Int)) (Leaf!1890 (xs!3800 IArray!2411) (csize!2641 Int)) (Empty!1205) )
))
(declare-datatypes ((BalanceConc!2418 0))(
  ( (BalanceConc!2419 (c!47258 Conc!1205)) )
))
(declare-fun isEmpty!2237 (BalanceConc!2418) Bool)

(declare-datatypes ((tuple2!4062 0))(
  ( (tuple2!4063 (_1!2247 BalanceConc!2418) (_2!2247 BalanceConc!2416)) )
))
(declare-fun lex!377 (LexerInterface!577 List!3655 BalanceConc!2416) tuple2!4062)

(declare-fun seqFromList!759 (List!3654) BalanceConc!2416)

(assert (=> b!248016 (= res!114832 (isEmpty!2237 (_1!2247 (lex!377 thiss!17480 rules!1920 (seqFromList!759 lt!100777)))))))

(declare-fun b!248017 () Bool)

(declare-fun e!153938 () Bool)

(assert (=> b!248017 (= e!153944 e!153938)))

(declare-fun res!114839 () Bool)

(assert (=> b!248017 (=> (not res!114839) (not e!153938))))

(declare-fun lt!100785 () List!3654)

(declare-fun lt!100797 () List!3654)

(assert (=> b!248017 (= res!114839 (= lt!100785 lt!100797))))

(declare-fun separatorToken!170 () Token!1126)

(declare-fun lt!100781 () BalanceConc!2418)

(declare-fun list!1440 (BalanceConc!2416) List!3654)

(declare-fun printWithSeparatorTokenWhenNeededRec!260 (LexerInterface!577 List!3655 BalanceConc!2418 Token!1126 Int) BalanceConc!2416)

(assert (=> b!248017 (= lt!100797 (list!1440 (printWithSeparatorTokenWhenNeededRec!260 thiss!17480 rules!1920 lt!100781 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!270 (LexerInterface!577 List!3655 List!3656 Token!1126) List!3654)

(assert (=> b!248017 (= lt!100785 (printWithSeparatorTokenWhenNeededList!270 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!248018 () Bool)

(declare-fun res!114848 () Bool)

(assert (=> b!248018 (=> (not res!114848) (not e!153938))))

(assert (=> b!248018 (= res!114848 (= (list!1440 (seqFromList!759 lt!100785)) lt!100797))))

(declare-fun b!248019 () Bool)

(declare-fun res!114829 () Bool)

(assert (=> b!248019 (=> (not res!114829) (not e!153944))))

(declare-fun rulesProduceIndividualToken!326 (LexerInterface!577 List!3655 Token!1126) Bool)

(assert (=> b!248019 (= res!114829 (rulesProduceIndividualToken!326 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!248020 () Bool)

(declare-fun e!153955 () Bool)

(assert (=> b!248020 (= e!153955 true)))

(declare-fun lt!100789 () List!3654)

(declare-datatypes ((tuple2!4064 0))(
  ( (tuple2!4065 (_1!2248 Token!1126) (_2!2248 List!3654)) )
))
(declare-datatypes ((Option!744 0))(
  ( (None!743) (Some!743 (v!14516 tuple2!4064)) )
))
(declare-fun lt!100791 () Option!744)

(declare-fun ++!932 (List!3654 List!3654) List!3654)

(declare-fun get!1195 (Option!744) tuple2!4064)

(assert (=> b!248020 (= lt!100789 (++!932 lt!100777 (_2!2248 (get!1195 lt!100791))))))

(declare-fun b!248021 () Bool)

(declare-fun e!153953 () Bool)

(declare-fun e!153942 () Bool)

(assert (=> b!248021 (= e!153953 e!153942)))

(declare-fun res!114846 () Bool)

(assert (=> b!248021 (=> res!114846 e!153942)))

(declare-fun lt!100787 () Bool)

(assert (=> b!248021 (= res!114846 lt!100787)))

(declare-fun e!153950 () Bool)

(assert (=> b!248021 e!153950))

(declare-fun res!114842 () Bool)

(assert (=> b!248021 (=> (not res!114842) (not e!153950))))

(declare-fun lt!100800 () tuple2!4064)

(assert (=> b!248021 (= res!114842 (= (_1!2248 lt!100800) (h!9043 tokens!465)))))

(declare-fun lt!100795 () Option!744)

(assert (=> b!248021 (= lt!100800 (get!1195 lt!100795))))

(declare-fun isDefined!595 (Option!744) Bool)

(assert (=> b!248021 (isDefined!595 lt!100795)))

(declare-fun maxPrefix!307 (LexerInterface!577 List!3655 List!3654) Option!744)

(assert (=> b!248021 (= lt!100795 (maxPrefix!307 thiss!17480 rules!1920 lt!100777))))

(declare-fun b!248022 () Bool)

(declare-fun res!114831 () Bool)

(assert (=> b!248022 (=> (not res!114831) (not e!153950))))

(declare-fun isEmpty!2238 (List!3654) Bool)

(assert (=> b!248022 (= res!114831 (isEmpty!2238 (_2!2248 lt!100800)))))

(declare-fun b!248023 () Bool)

(declare-fun e!153961 () Bool)

(declare-fun lt!100775 () Option!744)

(declare-fun head!854 (List!3656) Token!1126)

(assert (=> b!248023 (= e!153961 (= (_1!2248 (get!1195 lt!100775)) (head!854 tokens!465)))))

(declare-fun b!248024 () Bool)

(declare-fun e!153936 () Bool)

(assert (=> b!248024 (= e!153936 e!153945)))

(declare-fun res!114830 () Bool)

(assert (=> b!248024 (=> res!114830 e!153945)))

(declare-fun lt!100796 () List!3654)

(declare-fun lt!100790 () List!3654)

(assert (=> b!248024 (= res!114830 (or (not (= lt!100796 lt!100790)) (not (= lt!100790 lt!100777)) (not (= lt!100796 lt!100777))))))

(declare-fun printList!261 (LexerInterface!577 List!3656) List!3654)

(assert (=> b!248024 (= lt!100790 (printList!261 thiss!17480 (Cons!3646 (h!9043 tokens!465) Nil!3646)))))

(declare-fun lt!100799 () BalanceConc!2416)

(assert (=> b!248024 (= lt!100796 (list!1440 lt!100799))))

(declare-fun lt!100780 () BalanceConc!2418)

(declare-fun printTailRec!271 (LexerInterface!577 BalanceConc!2418 Int BalanceConc!2416) BalanceConc!2416)

(assert (=> b!248024 (= lt!100799 (printTailRec!271 thiss!17480 lt!100780 0 (BalanceConc!2417 Empty!1204)))))

(declare-fun print!308 (LexerInterface!577 BalanceConc!2418) BalanceConc!2416)

(assert (=> b!248024 (= lt!100799 (print!308 thiss!17480 lt!100780))))

(declare-fun singletonSeq!243 (Token!1126) BalanceConc!2418)

(assert (=> b!248024 (= lt!100780 (singletonSeq!243 (h!9043 tokens!465)))))

(declare-fun b!248025 () Bool)

(declare-fun res!114835 () Bool)

(declare-fun e!153934 () Bool)

(assert (=> b!248025 (=> (not res!114835) (not e!153934))))

(declare-fun isEmpty!2239 (List!3655) Bool)

(assert (=> b!248025 (= res!114835 (not (isEmpty!2239 rules!1920)))))

(assert (=> b!248026 (= e!153945 e!153953)))

(declare-fun res!114838 () Bool)

(assert (=> b!248026 (=> res!114838 e!153953)))

(declare-datatypes ((tuple2!4066 0))(
  ( (tuple2!4067 (_1!2249 Token!1126) (_2!2249 BalanceConc!2416)) )
))
(declare-datatypes ((Option!745 0))(
  ( (None!744) (Some!744 (v!14517 tuple2!4066)) )
))
(declare-fun isDefined!596 (Option!745) Bool)

(declare-fun maxPrefixZipperSequence!270 (LexerInterface!577 List!3655 BalanceConc!2416) Option!745)

(assert (=> b!248026 (= res!114838 (not (isDefined!596 (maxPrefixZipperSequence!270 thiss!17480 rules!1920 (seqFromList!759 (originalCharacters!734 (h!9043 tokens!465)))))))))

(declare-datatypes ((Unit!4432 0))(
  ( (Unit!4433) )
))
(declare-fun lt!100778 () Unit!4432)

(declare-fun forallContained!258 (List!3656 Int Token!1126) Unit!4432)

(assert (=> b!248026 (= lt!100778 (forallContained!258 tokens!465 lambda!8178 (h!9043 tokens!465)))))

(assert (=> b!248026 (= lt!100777 (originalCharacters!734 (h!9043 tokens!465)))))

(declare-fun b!248027 () Bool)

(declare-fun res!114824 () Bool)

(assert (=> b!248027 (=> (not res!114824) (not e!153944))))

(declare-fun sepAndNonSepRulesDisjointChars!280 (List!3655 List!3655) Bool)

(assert (=> b!248027 (= res!114824 (sepAndNonSepRulesDisjointChars!280 rules!1920 rules!1920))))

(declare-fun b!248028 () Bool)

(assert (=> b!248028 (= e!153942 e!153955)))

(declare-fun res!114834 () Bool)

(assert (=> b!248028 (=> res!114834 e!153955)))

(declare-fun isPrefix!375 (List!3654 List!3654) Bool)

(assert (=> b!248028 (= res!114834 (not (isPrefix!375 lt!100777 lt!100785)))))

(assert (=> b!248028 (= lt!100791 (maxPrefix!307 thiss!17480 rules!1920 lt!100785))))

(declare-fun lt!100798 () List!3654)

(assert (=> b!248028 (isPrefix!375 lt!100777 lt!100798)))

(declare-fun lt!100786 () List!3654)

(assert (=> b!248028 (= lt!100798 (++!932 lt!100777 lt!100786))))

(declare-fun lt!100776 () Unit!4432)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!270 (List!3654 List!3654) Unit!4432)

(assert (=> b!248028 (= lt!100776 (lemmaConcatTwoListThenFirstIsPrefix!270 lt!100777 lt!100786))))

(declare-fun lt!100794 () BalanceConc!2416)

(declare-fun filter!73 (List!3656 Int) List!3656)

(declare-fun list!1441 (BalanceConc!2418) List!3656)

(assert (=> b!248028 (= (filter!73 (list!1441 (_1!2247 (lex!377 thiss!17480 rules!1920 lt!100794))) lambda!8177) (t!35280 tokens!465))))

(declare-fun lt!100792 () Unit!4432)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!64 (LexerInterface!577 List!3655 List!3656 Token!1126) Unit!4432)

(assert (=> b!248028 (= lt!100792 (theoremInvertabilityFromTokensSepTokenWhenNeeded!64 thiss!17480 rules!1920 (t!35280 tokens!465) separatorToken!170))))

(declare-fun e!153935 () Bool)

(assert (=> b!248028 e!153935))

(declare-fun res!114843 () Bool)

(assert (=> b!248028 (=> res!114843 e!153935)))

(declare-fun isEmpty!2240 (List!3656) Bool)

(assert (=> b!248028 (= res!114843 (isEmpty!2240 tokens!465))))

(declare-fun lt!100788 () Unit!4432)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!146 (LexerInterface!577 List!3655 List!3656 Token!1126) Unit!4432)

(assert (=> b!248028 (= lt!100788 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!146 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!248029 () Bool)

(assert (=> b!248029 (= e!153935 e!153961)))

(declare-fun res!114827 () Bool)

(assert (=> b!248029 (=> (not res!114827) (not e!153961))))

(assert (=> b!248029 (= res!114827 (isDefined!595 lt!100775))))

(assert (=> b!248029 (= lt!100775 (maxPrefix!307 thiss!17480 rules!1920 lt!100785))))

(declare-fun tp!96680 () Bool)

(declare-fun e!153952 () Bool)

(declare-fun b!248030 () Bool)

(declare-fun e!153946 () Bool)

(declare-fun inv!21 (TokenValue!713) Bool)

(assert (=> b!248030 (= e!153952 (and (inv!21 (value!24009 separatorToken!170)) e!153946 tp!96680))))

(declare-fun b!248031 () Bool)

(declare-fun e!153939 () Bool)

(declare-fun e!153951 () Bool)

(declare-fun tp!96677 () Bool)

(assert (=> b!248031 (= e!153939 (and e!153951 tp!96677))))

(declare-fun b!248032 () Bool)

(declare-fun res!114847 () Bool)

(assert (=> b!248032 (=> (not res!114847) (not e!153944))))

(assert (=> b!248032 (= res!114847 ((_ is Cons!3646) tokens!465))))

(declare-fun e!153954 () Bool)

(declare-fun b!248033 () Bool)

(declare-fun tp!96670 () Bool)

(declare-fun e!153940 () Bool)

(declare-fun inv!4498 (Token!1126) Bool)

(assert (=> b!248033 (= e!153940 (and (inv!4498 (h!9043 tokens!465)) e!153954 tp!96670))))

(declare-fun b!248034 () Bool)

(declare-fun res!114826 () Bool)

(assert (=> b!248034 (=> (not res!114826) (not e!153934))))

(declare-fun rulesInvariant!543 (LexerInterface!577 List!3655) Bool)

(assert (=> b!248034 (= res!114826 (rulesInvariant!543 thiss!17480 rules!1920))))

(declare-fun b!248035 () Bool)

(declare-fun e!153941 () Bool)

(assert (=> b!248035 (= e!153941 e!153936)))

(declare-fun res!114841 () Bool)

(assert (=> b!248035 (=> res!114841 e!153936)))

(declare-fun e!153956 () Bool)

(assert (=> b!248035 (= res!114841 e!153956)))

(declare-fun res!114828 () Bool)

(assert (=> b!248035 (=> (not res!114828) (not e!153956))))

(assert (=> b!248035 (= res!114828 (not lt!100787))))

(declare-fun lt!100784 () List!3654)

(assert (=> b!248035 (= lt!100787 (= lt!100785 lt!100784))))

(declare-fun b!248036 () Bool)

(assert (=> b!248036 (= e!153934 e!153944)))

(declare-fun res!114840 () Bool)

(assert (=> b!248036 (=> (not res!114840) (not e!153944))))

(declare-fun rulesProduceEachTokenIndividually!369 (LexerInterface!577 List!3655 BalanceConc!2418) Bool)

(assert (=> b!248036 (= res!114840 (rulesProduceEachTokenIndividually!369 thiss!17480 rules!1920 lt!100781))))

(declare-fun seqFromList!760 (List!3656) BalanceConc!2418)

(assert (=> b!248036 (= lt!100781 (seqFromList!760 tokens!465))))

(declare-fun b!248037 () Bool)

(assert (=> b!248037 (= e!153956 (not (= lt!100785 (++!932 lt!100777 lt!100786))))))

(declare-fun res!114833 () Bool)

(assert (=> start!26338 (=> (not res!114833) (not e!153934))))

(assert (=> start!26338 (= res!114833 ((_ is Lexer!575) thiss!17480))))

(assert (=> start!26338 e!153934))

(assert (=> start!26338 true))

(assert (=> start!26338 e!153939))

(assert (=> start!26338 (and (inv!4498 separatorToken!170) e!153952)))

(assert (=> start!26338 e!153940))

(declare-fun e!153959 () Bool)

(assert (=> b!248038 (= e!153959 (and tp!96674 tp!96679))))

(declare-fun e!153957 () Bool)

(assert (=> b!248039 (= e!153957 (and tp!96672 tp!96676))))

(declare-fun tp!96678 () Bool)

(declare-fun b!248040 () Bool)

(declare-fun e!153937 () Bool)

(declare-fun e!153958 () Bool)

(declare-fun inv!4495 (String!4645) Bool)

(declare-fun inv!4499 (TokenValueInjection!1198) Bool)

(assert (=> b!248040 (= e!153958 (and tp!96678 (inv!4495 (tag!899 (rule!1268 (h!9043 tokens!465)))) (inv!4499 (transformation!691 (rule!1268 (h!9043 tokens!465)))) e!153937))))

(declare-fun tp!96669 () Bool)

(declare-fun b!248041 () Bool)

(assert (=> b!248041 (= e!153954 (and (inv!21 (value!24009 (h!9043 tokens!465))) e!153958 tp!96669))))

(assert (=> b!248042 (= e!153937 (and tp!96681 tp!96673))))

(declare-fun b!248043 () Bool)

(declare-fun res!114825 () Bool)

(assert (=> b!248043 (=> res!114825 e!153955)))

(assert (=> b!248043 (= res!114825 (not (= lt!100798 lt!100785)))))

(declare-fun tp!96675 () Bool)

(declare-fun b!248044 () Bool)

(assert (=> b!248044 (= e!153951 (and tp!96675 (inv!4495 (tag!899 (h!9042 rules!1920))) (inv!4499 (transformation!691 (h!9042 rules!1920))) e!153959))))

(declare-fun b!248045 () Bool)

(declare-fun tp!96671 () Bool)

(assert (=> b!248045 (= e!153946 (and tp!96671 (inv!4495 (tag!899 (rule!1268 separatorToken!170))) (inv!4499 (transformation!691 (rule!1268 separatorToken!170))) e!153957))))

(declare-fun b!248046 () Bool)

(declare-fun matchR!253 (Regex!915 List!3654) Bool)

(assert (=> b!248046 (= e!153950 (matchR!253 (regex!691 (rule!1268 (h!9043 tokens!465))) lt!100777))))

(declare-fun b!248047 () Bool)

(declare-fun res!114845 () Bool)

(assert (=> b!248047 (=> (not res!114845) (not e!153944))))

(assert (=> b!248047 (= res!114845 (isSeparator!691 (rule!1268 separatorToken!170)))))

(declare-fun b!248048 () Bool)

(assert (=> b!248048 (= e!153938 (not e!153941))))

(declare-fun res!114836 () Bool)

(assert (=> b!248048 (=> res!114836 e!153941)))

(assert (=> b!248048 (= res!114836 (not (= lt!100786 (list!1440 lt!100794))))))

(assert (=> b!248048 (= lt!100794 (printWithSeparatorTokenWhenNeededRec!260 thiss!17480 rules!1920 (seqFromList!760 (t!35280 tokens!465)) separatorToken!170 0))))

(declare-fun lt!100783 () List!3654)

(assert (=> b!248048 (= lt!100783 lt!100784)))

(declare-fun lt!100779 () List!3654)

(assert (=> b!248048 (= lt!100784 (++!932 lt!100777 lt!100779))))

(declare-fun lt!100793 () List!3654)

(assert (=> b!248048 (= lt!100783 (++!932 (++!932 lt!100777 lt!100793) lt!100786))))

(declare-fun lt!100782 () Unit!4432)

(declare-fun lemmaConcatAssociativity!396 (List!3654 List!3654 List!3654) Unit!4432)

(assert (=> b!248048 (= lt!100782 (lemmaConcatAssociativity!396 lt!100777 lt!100793 lt!100786))))

(declare-fun charsOf!346 (Token!1126) BalanceConc!2416)

(assert (=> b!248048 (= lt!100777 (list!1440 (charsOf!346 (h!9043 tokens!465))))))

(assert (=> b!248048 (= lt!100779 (++!932 lt!100793 lt!100786))))

(assert (=> b!248048 (= lt!100786 (printWithSeparatorTokenWhenNeededList!270 thiss!17480 rules!1920 (t!35280 tokens!465) separatorToken!170))))

(assert (=> b!248048 (= lt!100793 (list!1440 (charsOf!346 separatorToken!170)))))

(declare-fun b!248049 () Bool)

(declare-fun res!114837 () Bool)

(assert (=> b!248049 (=> res!114837 e!153945)))

(assert (=> b!248049 (= res!114837 (not (rulesProduceIndividualToken!326 thiss!17480 rules!1920 (h!9043 tokens!465))))))

(assert (= (and start!26338 res!114833) b!248025))

(assert (= (and b!248025 res!114835) b!248034))

(assert (= (and b!248034 res!114826) b!248036))

(assert (= (and b!248036 res!114840) b!248019))

(assert (= (and b!248019 res!114829) b!248047))

(assert (= (and b!248047 res!114845) b!248015))

(assert (= (and b!248015 res!114844) b!248027))

(assert (= (and b!248027 res!114824) b!248032))

(assert (= (and b!248032 res!114847) b!248017))

(assert (= (and b!248017 res!114839) b!248018))

(assert (= (and b!248018 res!114848) b!248048))

(assert (= (and b!248048 (not res!114836)) b!248035))

(assert (= (and b!248035 res!114828) b!248037))

(assert (= (and b!248035 (not res!114841)) b!248024))

(assert (= (and b!248024 (not res!114830)) b!248049))

(assert (= (and b!248049 (not res!114837)) b!248016))

(assert (= (and b!248016 (not res!114832)) b!248026))

(assert (= (and b!248026 (not res!114838)) b!248021))

(assert (= (and b!248021 res!114842) b!248022))

(assert (= (and b!248022 res!114831) b!248046))

(assert (= (and b!248021 (not res!114846)) b!248028))

(assert (= (and b!248028 (not res!114843)) b!248029))

(assert (= (and b!248029 res!114827) b!248023))

(assert (= (and b!248028 (not res!114834)) b!248043))

(assert (= (and b!248043 (not res!114825)) b!248020))

(assert (= b!248044 b!248038))

(assert (= b!248031 b!248044))

(assert (= (and start!26338 ((_ is Cons!3645) rules!1920)) b!248031))

(assert (= b!248045 b!248039))

(assert (= b!248030 b!248045))

(assert (= start!26338 b!248030))

(assert (= b!248040 b!248042))

(assert (= b!248041 b!248040))

(assert (= b!248033 b!248041))

(assert (= (and start!26338 ((_ is Cons!3646) tokens!465)) b!248033))

(declare-fun m!303621 () Bool)

(assert (=> b!248045 m!303621))

(declare-fun m!303623 () Bool)

(assert (=> b!248045 m!303623))

(declare-fun m!303625 () Bool)

(assert (=> b!248023 m!303625))

(declare-fun m!303627 () Bool)

(assert (=> b!248023 m!303627))

(declare-fun m!303629 () Bool)

(assert (=> b!248018 m!303629))

(assert (=> b!248018 m!303629))

(declare-fun m!303631 () Bool)

(assert (=> b!248018 m!303631))

(declare-fun m!303633 () Bool)

(assert (=> b!248044 m!303633))

(declare-fun m!303635 () Bool)

(assert (=> b!248044 m!303635))

(declare-fun m!303637 () Bool)

(assert (=> b!248041 m!303637))

(declare-fun m!303639 () Bool)

(assert (=> b!248027 m!303639))

(declare-fun m!303641 () Bool)

(assert (=> b!248049 m!303641))

(declare-fun m!303643 () Bool)

(assert (=> b!248016 m!303643))

(assert (=> b!248016 m!303643))

(declare-fun m!303645 () Bool)

(assert (=> b!248016 m!303645))

(declare-fun m!303647 () Bool)

(assert (=> b!248016 m!303647))

(declare-fun m!303649 () Bool)

(assert (=> b!248022 m!303649))

(declare-fun m!303651 () Bool)

(assert (=> b!248040 m!303651))

(declare-fun m!303653 () Bool)

(assert (=> b!248040 m!303653))

(declare-fun m!303655 () Bool)

(assert (=> b!248015 m!303655))

(declare-fun m!303657 () Bool)

(assert (=> b!248026 m!303657))

(assert (=> b!248026 m!303657))

(declare-fun m!303659 () Bool)

(assert (=> b!248026 m!303659))

(assert (=> b!248026 m!303659))

(declare-fun m!303661 () Bool)

(assert (=> b!248026 m!303661))

(declare-fun m!303663 () Bool)

(assert (=> b!248026 m!303663))

(declare-fun m!303665 () Bool)

(assert (=> b!248017 m!303665))

(assert (=> b!248017 m!303665))

(declare-fun m!303667 () Bool)

(assert (=> b!248017 m!303667))

(declare-fun m!303669 () Bool)

(assert (=> b!248017 m!303669))

(declare-fun m!303671 () Bool)

(assert (=> start!26338 m!303671))

(declare-fun m!303673 () Bool)

(assert (=> b!248034 m!303673))

(declare-fun m!303675 () Bool)

(assert (=> b!248028 m!303675))

(declare-fun m!303677 () Bool)

(assert (=> b!248028 m!303677))

(declare-fun m!303679 () Bool)

(assert (=> b!248028 m!303679))

(declare-fun m!303681 () Bool)

(assert (=> b!248028 m!303681))

(declare-fun m!303683 () Bool)

(assert (=> b!248028 m!303683))

(declare-fun m!303685 () Bool)

(assert (=> b!248028 m!303685))

(declare-fun m!303687 () Bool)

(assert (=> b!248028 m!303687))

(assert (=> b!248028 m!303679))

(declare-fun m!303689 () Bool)

(assert (=> b!248028 m!303689))

(declare-fun m!303691 () Bool)

(assert (=> b!248028 m!303691))

(declare-fun m!303693 () Bool)

(assert (=> b!248028 m!303693))

(declare-fun m!303695 () Bool)

(assert (=> b!248028 m!303695))

(declare-fun m!303697 () Bool)

(assert (=> b!248033 m!303697))

(declare-fun m!303699 () Bool)

(assert (=> b!248020 m!303699))

(declare-fun m!303701 () Bool)

(assert (=> b!248020 m!303701))

(assert (=> b!248037 m!303689))

(declare-fun m!303703 () Bool)

(assert (=> b!248048 m!303703))

(declare-fun m!303705 () Bool)

(assert (=> b!248048 m!303705))

(declare-fun m!303707 () Bool)

(assert (=> b!248048 m!303707))

(declare-fun m!303709 () Bool)

(assert (=> b!248048 m!303709))

(declare-fun m!303711 () Bool)

(assert (=> b!248048 m!303711))

(assert (=> b!248048 m!303705))

(declare-fun m!303713 () Bool)

(assert (=> b!248048 m!303713))

(declare-fun m!303715 () Bool)

(assert (=> b!248048 m!303715))

(assert (=> b!248048 m!303703))

(declare-fun m!303717 () Bool)

(assert (=> b!248048 m!303717))

(declare-fun m!303719 () Bool)

(assert (=> b!248048 m!303719))

(assert (=> b!248048 m!303713))

(assert (=> b!248048 m!303709))

(declare-fun m!303721 () Bool)

(assert (=> b!248048 m!303721))

(declare-fun m!303723 () Bool)

(assert (=> b!248048 m!303723))

(declare-fun m!303725 () Bool)

(assert (=> b!248048 m!303725))

(declare-fun m!303727 () Bool)

(assert (=> b!248048 m!303727))

(declare-fun m!303729 () Bool)

(assert (=> b!248019 m!303729))

(declare-fun m!303731 () Bool)

(assert (=> b!248036 m!303731))

(declare-fun m!303733 () Bool)

(assert (=> b!248036 m!303733))

(declare-fun m!303735 () Bool)

(assert (=> b!248025 m!303735))

(declare-fun m!303737 () Bool)

(assert (=> b!248029 m!303737))

(assert (=> b!248029 m!303695))

(declare-fun m!303739 () Bool)

(assert (=> b!248030 m!303739))

(declare-fun m!303741 () Bool)

(assert (=> b!248021 m!303741))

(declare-fun m!303743 () Bool)

(assert (=> b!248021 m!303743))

(declare-fun m!303745 () Bool)

(assert (=> b!248021 m!303745))

(declare-fun m!303747 () Bool)

(assert (=> b!248024 m!303747))

(declare-fun m!303749 () Bool)

(assert (=> b!248024 m!303749))

(declare-fun m!303751 () Bool)

(assert (=> b!248024 m!303751))

(declare-fun m!303753 () Bool)

(assert (=> b!248024 m!303753))

(declare-fun m!303755 () Bool)

(assert (=> b!248024 m!303755))

(declare-fun m!303757 () Bool)

(assert (=> b!248046 m!303757))

(check-sat (not b!248021) (not b!248019) (not b!248036) b_and!18691 b_and!18685 (not b!248045) (not b!248048) (not b!248022) (not b!248030) (not start!26338) (not b!248037) (not b_next!9225) (not b!248044) (not b!248041) (not b!248034) (not b!248029) (not b!248020) b_and!18695 b_and!18687 (not b!248031) (not b!248027) (not b!248017) (not b!248023) (not b_next!9227) (not b!248018) (not b_next!9217) b_and!18693 (not b!248024) (not b!248025) (not b!248016) (not b!248049) b_and!18689 (not b!248058) (not b!248026) (not b_next!9223) (not b!248028) (not b!248040) (not b_next!9219) (not b!248033) (not b!248046) (not b!248015) (not b_next!9221))
(check-sat (not b_next!9225) b_and!18695 b_and!18687 b_and!18691 (not b_next!9227) (not b_next!9217) b_and!18685 b_and!18693 b_and!18689 (not b_next!9223) (not b_next!9219) (not b_next!9221))
