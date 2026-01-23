; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29458 () Bool)

(assert start!29458)

(declare-fun b!273637 () Bool)

(declare-fun b_free!10105 () Bool)

(declare-fun b_next!10105 () Bool)

(assert (=> b!273637 (= b_free!10105 (not b_next!10105))))

(declare-fun tp!103154 () Bool)

(declare-fun b_and!21957 () Bool)

(assert (=> b!273637 (= tp!103154 b_and!21957)))

(declare-fun b_free!10107 () Bool)

(declare-fun b_next!10107 () Bool)

(assert (=> b!273637 (= b_free!10107 (not b_next!10107))))

(declare-fun tp!103153 () Bool)

(declare-fun b_and!21959 () Bool)

(assert (=> b!273637 (= tp!103153 b_and!21959)))

(declare-fun b!273630 () Bool)

(declare-fun b_free!10109 () Bool)

(declare-fun b_next!10109 () Bool)

(assert (=> b!273630 (= b_free!10109 (not b_next!10109))))

(declare-fun tp!103152 () Bool)

(declare-fun b_and!21961 () Bool)

(assert (=> b!273630 (= tp!103152 b_and!21961)))

(declare-fun b_free!10111 () Bool)

(declare-fun b_next!10111 () Bool)

(assert (=> b!273630 (= b_free!10111 (not b_next!10111))))

(declare-fun tp!103148 () Bool)

(declare-fun b_and!21963 () Bool)

(assert (=> b!273630 (= tp!103148 b_and!21963)))

(declare-fun b!273652 () Bool)

(declare-fun b_free!10113 () Bool)

(declare-fun b_next!10113 () Bool)

(assert (=> b!273652 (= b_free!10113 (not b_next!10113))))

(declare-fun tp!103144 () Bool)

(declare-fun b_and!21965 () Bool)

(assert (=> b!273652 (= tp!103144 b_and!21965)))

(declare-fun b_free!10115 () Bool)

(declare-fun b_next!10115 () Bool)

(assert (=> b!273652 (= b_free!10115 (not b_next!10115))))

(declare-fun tp!103151 () Bool)

(declare-fun b_and!21967 () Bool)

(assert (=> b!273652 (= tp!103151 b_and!21967)))

(declare-fun bs!30708 () Bool)

(declare-fun b!273643 () Bool)

(declare-fun b!273654 () Bool)

(assert (= bs!30708 (and b!273643 b!273654)))

(declare-fun lambda!9280 () Int)

(declare-fun lambda!9279 () Int)

(assert (=> bs!30708 (not (= lambda!9280 lambda!9279))))

(declare-fun b!273666 () Bool)

(declare-fun e!170022 () Bool)

(assert (=> b!273666 (= e!170022 true)))

(declare-fun b!273665 () Bool)

(declare-fun e!170021 () Bool)

(assert (=> b!273665 (= e!170021 e!170022)))

(declare-fun b!273664 () Bool)

(declare-fun e!170020 () Bool)

(assert (=> b!273664 (= e!170020 e!170021)))

(assert (=> b!273643 e!170020))

(assert (= b!273665 b!273666))

(assert (= b!273664 b!273665))

(declare-datatypes ((List!3847 0))(
  ( (Nil!3837) (Cons!3837 (h!9234 (_ BitVec 16)) (t!38869 List!3847)) )
))
(declare-datatypes ((TokenValue!755 0))(
  ( (FloatLiteralValue!1510 (text!5730 List!3847)) (TokenValueExt!754 (__x!2997 Int)) (Broken!3775 (value!25180 List!3847)) (Object!764) (End!755) (Def!755) (Underscore!755) (Match!755) (Else!755) (Error!755) (Case!755) (If!755) (Extends!755) (Abstract!755) (Class!755) (Val!755) (DelimiterValue!1510 (del!815 List!3847)) (KeywordValue!761 (value!25181 List!3847)) (CommentValue!1510 (value!25182 List!3847)) (WhitespaceValue!1510 (value!25183 List!3847)) (IndentationValue!755 (value!25184 List!3847)) (String!4854) (Int32!755) (Broken!3776 (value!25185 List!3847)) (Boolean!756) (Unit!4997) (OperatorValue!758 (op!815 List!3847)) (IdentifierValue!1510 (value!25186 List!3847)) (IdentifierValue!1511 (value!25187 List!3847)) (WhitespaceValue!1511 (value!25188 List!3847)) (True!1510) (False!1510) (Broken!3777 (value!25189 List!3847)) (Broken!3778 (value!25190 List!3847)) (True!1511) (RightBrace!755) (RightBracket!755) (Colon!755) (Null!755) (Comma!755) (LeftBracket!755) (False!1511) (LeftBrace!755) (ImaginaryLiteralValue!755 (text!5731 List!3847)) (StringLiteralValue!2265 (value!25191 List!3847)) (EOFValue!755 (value!25192 List!3847)) (IdentValue!755 (value!25193 List!3847)) (DelimiterValue!1511 (value!25194 List!3847)) (DedentValue!755 (value!25195 List!3847)) (NewLineValue!755 (value!25196 List!3847)) (IntegerValue!2265 (value!25197 (_ BitVec 32)) (text!5732 List!3847)) (IntegerValue!2266 (value!25198 Int) (text!5733 List!3847)) (Times!755) (Or!755) (Equal!755) (Minus!755) (Broken!3779 (value!25199 List!3847)) (And!755) (Div!755) (LessEqual!755) (Mod!755) (Concat!1712) (Not!755) (Plus!755) (SpaceValue!755 (value!25200 List!3847)) (IntegerValue!2267 (value!25201 Int) (text!5734 List!3847)) (StringLiteralValue!2266 (text!5735 List!3847)) (FloatLiteralValue!1511 (text!5736 List!3847)) (BytesLiteralValue!755 (value!25202 List!3847)) (CommentValue!1511 (value!25203 List!3847)) (StringLiteralValue!2267 (value!25204 List!3847)) (ErrorTokenValue!755 (msg!816 List!3847)) )
))
(declare-datatypes ((C!2836 0))(
  ( (C!2837 (val!1304 Int)) )
))
(declare-datatypes ((List!3848 0))(
  ( (Nil!3838) (Cons!3838 (h!9235 C!2836) (t!38870 List!3848)) )
))
(declare-datatypes ((IArray!2577 0))(
  ( (IArray!2578 (innerList!1346 List!3848)) )
))
(declare-datatypes ((Conc!1288 0))(
  ( (Node!1288 (left!3161 Conc!1288) (right!3491 Conc!1288) (csize!2806 Int) (cheight!1499 Int)) (Leaf!1994 (xs!3887 IArray!2577) (csize!2807 Int)) (Empty!1288) )
))
(declare-datatypes ((BalanceConc!2584 0))(
  ( (BalanceConc!2585 (c!51884 Conc!1288)) )
))
(declare-datatypes ((TokenValueInjection!1282 0))(
  ( (TokenValueInjection!1283 (toValue!1476 Int) (toChars!1335 Int)) )
))
(declare-datatypes ((Regex!957 0))(
  ( (ElementMatch!957 (c!51885 C!2836)) (Concat!1713 (regOne!2426 Regex!957) (regTwo!2426 Regex!957)) (EmptyExpr!957) (Star!957 (reg!1286 Regex!957)) (EmptyLang!957) (Union!957 (regOne!2427 Regex!957) (regTwo!2427 Regex!957)) )
))
(declare-datatypes ((String!4855 0))(
  ( (String!4856 (value!25205 String)) )
))
(declare-datatypes ((Rule!1266 0))(
  ( (Rule!1267 (regex!733 Regex!957) (tag!943 String!4855) (isSeparator!733 Bool) (transformation!733 TokenValueInjection!1282)) )
))
(declare-datatypes ((List!3849 0))(
  ( (Nil!3839) (Cons!3839 (h!9236 Rule!1266) (t!38871 List!3849)) )
))
(declare-fun rules!1920 () List!3849)

(get-info :version)

(assert (= (and b!273643 ((_ is Cons!3839) rules!1920)) b!273664))

(declare-fun order!2975 () Int)

(declare-fun order!2973 () Int)

(declare-fun dynLambda!1981 (Int Int) Int)

(declare-fun dynLambda!1982 (Int Int) Int)

(assert (=> b!273666 (< (dynLambda!1981 order!2973 (toValue!1476 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9280))))

(declare-fun order!2977 () Int)

(declare-fun dynLambda!1983 (Int Int) Int)

(assert (=> b!273666 (< (dynLambda!1983 order!2977 (toChars!1335 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9280))))

(assert (=> b!273643 true))

(declare-fun b!273622 () Bool)

(declare-fun res!124813 () Bool)

(declare-fun e!169993 () Bool)

(assert (=> b!273622 (=> (not res!124813) (not e!169993))))

(declare-fun isEmpty!2449 (List!3849) Bool)

(assert (=> b!273622 (= res!124813 (not (isEmpty!2449 rules!1920)))))

(declare-fun b!273623 () Bool)

(declare-fun e!170012 () Bool)

(declare-fun e!169990 () Bool)

(assert (=> b!273623 (= e!170012 e!169990)))

(declare-fun res!124816 () Bool)

(assert (=> b!273623 (=> res!124816 e!169990)))

(declare-fun e!169994 () Bool)

(assert (=> b!273623 (= res!124816 e!169994)))

(declare-fun res!124820 () Bool)

(assert (=> b!273623 (=> (not res!124820) (not e!169994))))

(declare-fun lt!113338 () Bool)

(assert (=> b!273623 (= res!124820 (not lt!113338))))

(declare-fun lt!113329 () List!3848)

(declare-fun lt!113340 () List!3848)

(assert (=> b!273623 (= lt!113338 (= lt!113329 lt!113340))))

(declare-fun b!273624 () Bool)

(declare-fun e!170004 () Bool)

(declare-fun e!170009 () Bool)

(assert (=> b!273624 (= e!170004 e!170009)))

(declare-fun res!124812 () Bool)

(assert (=> b!273624 (=> (not res!124812) (not e!170009))))

(declare-datatypes ((Token!1210 0))(
  ( (Token!1211 (value!25206 TokenValue!755) (rule!1320 Rule!1266) (size!3065 Int) (originalCharacters!776 List!3848)) )
))
(declare-datatypes ((tuple2!4318 0))(
  ( (tuple2!4319 (_1!2375 Token!1210) (_2!2375 List!3848)) )
))
(declare-datatypes ((Option!820 0))(
  ( (None!819) (Some!819 (v!14696 tuple2!4318)) )
))
(declare-fun lt!113325 () Option!820)

(declare-fun isDefined!663 (Option!820) Bool)

(assert (=> b!273624 (= res!124812 (isDefined!663 lt!113325))))

(declare-datatypes ((LexerInterface!619 0))(
  ( (LexerInterfaceExt!616 (__x!2998 Int)) (Lexer!617) )
))
(declare-fun thiss!17480 () LexerInterface!619)

(declare-fun maxPrefix!337 (LexerInterface!619 List!3849 List!3848) Option!820)

(assert (=> b!273624 (= lt!113325 (maxPrefix!337 thiss!17480 rules!1920 lt!113329))))

(declare-fun b!273625 () Bool)

(declare-fun e!170007 () Bool)

(assert (=> b!273625 (= e!169990 e!170007)))

(declare-fun res!124821 () Bool)

(assert (=> b!273625 (=> res!124821 e!170007)))

(declare-fun lt!113323 () List!3848)

(declare-fun lt!113327 () List!3848)

(declare-fun lt!113342 () List!3848)

(assert (=> b!273625 (= res!124821 (or (not (= lt!113342 lt!113323)) (not (= lt!113323 lt!113327)) (not (= lt!113342 lt!113327))))))

(declare-datatypes ((List!3850 0))(
  ( (Nil!3840) (Cons!3840 (h!9237 Token!1210) (t!38872 List!3850)) )
))
(declare-fun lt!113337 () List!3850)

(declare-fun printList!295 (LexerInterface!619 List!3850) List!3848)

(assert (=> b!273625 (= lt!113323 (printList!295 thiss!17480 lt!113337))))

(declare-fun lt!113324 () BalanceConc!2584)

(declare-fun list!1577 (BalanceConc!2584) List!3848)

(assert (=> b!273625 (= lt!113342 (list!1577 lt!113324))))

(declare-fun tokens!465 () List!3850)

(assert (=> b!273625 (= lt!113337 (Cons!3840 (h!9237 tokens!465) Nil!3840))))

(declare-datatypes ((IArray!2579 0))(
  ( (IArray!2580 (innerList!1347 List!3850)) )
))
(declare-datatypes ((Conc!1289 0))(
  ( (Node!1289 (left!3162 Conc!1289) (right!3492 Conc!1289) (csize!2808 Int) (cheight!1500 Int)) (Leaf!1995 (xs!3888 IArray!2579) (csize!2809 Int)) (Empty!1289) )
))
(declare-datatypes ((BalanceConc!2586 0))(
  ( (BalanceConc!2587 (c!51886 Conc!1289)) )
))
(declare-fun lt!113344 () BalanceConc!2586)

(declare-fun printTailRec!307 (LexerInterface!619 BalanceConc!2586 Int BalanceConc!2584) BalanceConc!2584)

(assert (=> b!273625 (= lt!113324 (printTailRec!307 thiss!17480 lt!113344 0 (BalanceConc!2585 Empty!1288)))))

(declare-fun print!344 (LexerInterface!619 BalanceConc!2586) BalanceConc!2584)

(assert (=> b!273625 (= lt!113324 (print!344 thiss!17480 lt!113344))))

(declare-fun singletonSeq!279 (Token!1210) BalanceConc!2586)

(assert (=> b!273625 (= lt!113344 (singletonSeq!279 (h!9237 tokens!465)))))

(declare-fun b!273626 () Bool)

(declare-fun e!169987 () Bool)

(declare-fun tp!103146 () Bool)

(declare-fun e!170010 () Bool)

(declare-fun inv!4752 (String!4855) Bool)

(declare-fun inv!4755 (TokenValueInjection!1282) Bool)

(assert (=> b!273626 (= e!169987 (and tp!103146 (inv!4752 (tag!943 (h!9236 rules!1920))) (inv!4755 (transformation!733 (h!9236 rules!1920))) e!170010))))

(declare-fun b!273628 () Bool)

(declare-fun e!170006 () Bool)

(declare-fun e!169989 () Bool)

(assert (=> b!273628 (= e!170006 e!169989)))

(declare-fun res!124824 () Bool)

(assert (=> b!273628 (=> res!124824 e!169989)))

(assert (=> b!273628 (= res!124824 (not lt!113338))))

(declare-fun e!170013 () Bool)

(assert (=> b!273628 e!170013))

(declare-fun res!124827 () Bool)

(assert (=> b!273628 (=> (not res!124827) (not e!170013))))

(declare-fun lt!113330 () tuple2!4318)

(assert (=> b!273628 (= res!124827 (= (_1!2375 lt!113330) (h!9237 tokens!465)))))

(declare-fun lt!113333 () Option!820)

(declare-fun get!1276 (Option!820) tuple2!4318)

(assert (=> b!273628 (= lt!113330 (get!1276 lt!113333))))

(assert (=> b!273628 (isDefined!663 lt!113333)))

(assert (=> b!273628 (= lt!113333 (maxPrefix!337 thiss!17480 rules!1920 lt!113327))))

(declare-fun b!273629 () Bool)

(declare-fun res!124828 () Bool)

(assert (=> b!273629 (=> res!124828 e!170007)))

(declare-fun isEmpty!2450 (BalanceConc!2586) Bool)

(declare-datatypes ((tuple2!4320 0))(
  ( (tuple2!4321 (_1!2376 BalanceConc!2586) (_2!2376 BalanceConc!2584)) )
))
(declare-fun lex!411 (LexerInterface!619 List!3849 BalanceConc!2584) tuple2!4320)

(declare-fun seqFromList!833 (List!3848) BalanceConc!2584)

(assert (=> b!273629 (= res!124828 (isEmpty!2450 (_1!2376 (lex!411 thiss!17480 rules!1920 (seqFromList!833 lt!113327)))))))

(assert (=> b!273630 (= e!170010 (and tp!103152 tp!103148))))

(declare-fun lt!113334 () List!3848)

(declare-fun b!273631 () Bool)

(declare-fun ++!1010 (List!3848 List!3848) List!3848)

(assert (=> b!273631 (= e!169994 (not (= lt!113329 (++!1010 lt!113327 lt!113334))))))

(declare-fun b!273632 () Bool)

(declare-fun e!169991 () Bool)

(assert (=> b!273632 (= e!169989 e!169991)))

(declare-fun res!124826 () Bool)

(assert (=> b!273632 (=> res!124826 e!169991)))

(declare-fun isEmpty!2451 (List!3850) Bool)

(assert (=> b!273632 (= res!124826 (not (isEmpty!2451 (t!38872 tokens!465))))))

(declare-fun lt!113343 () List!3848)

(declare-fun lt!113332 () Option!820)

(assert (=> b!273632 (= lt!113332 (maxPrefix!337 thiss!17480 rules!1920 lt!113343))))

(declare-fun lt!113322 () tuple2!4318)

(assert (=> b!273632 (= lt!113343 (_2!2375 lt!113322))))

(declare-datatypes ((Unit!4998 0))(
  ( (Unit!4999) )
))
(declare-fun lt!113331 () Unit!4998)

(declare-fun lemmaSamePrefixThenSameSuffix!202 (List!3848 List!3848 List!3848 List!3848 List!3848) Unit!4998)

(assert (=> b!273632 (= lt!113331 (lemmaSamePrefixThenSameSuffix!202 lt!113327 lt!113343 lt!113327 (_2!2375 lt!113322) lt!113329))))

(assert (=> b!273632 (= lt!113322 (get!1276 (maxPrefix!337 thiss!17480 rules!1920 lt!113329)))))

(declare-fun isPrefix!401 (List!3848 List!3848) Bool)

(assert (=> b!273632 (isPrefix!401 lt!113327 lt!113340)))

(declare-fun lt!113336 () Unit!4998)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!296 (List!3848 List!3848) Unit!4998)

(assert (=> b!273632 (= lt!113336 (lemmaConcatTwoListThenFirstIsPrefix!296 lt!113327 lt!113343))))

(assert (=> b!273632 e!170004))

(declare-fun res!124808 () Bool)

(assert (=> b!273632 (=> res!124808 e!170004)))

(assert (=> b!273632 (= res!124808 (isEmpty!2451 tokens!465))))

(declare-fun separatorToken!170 () Token!1210)

(declare-fun lt!113321 () Unit!4998)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!158 (LexerInterface!619 List!3849 List!3850 Token!1210) Unit!4998)

(assert (=> b!273632 (= lt!113321 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!158 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!103147 () Bool)

(declare-fun b!273633 () Bool)

(declare-fun e!169988 () Bool)

(declare-fun e!169998 () Bool)

(declare-fun inv!21 (TokenValue!755) Bool)

(assert (=> b!273633 (= e!169998 (and (inv!21 (value!25206 (h!9237 tokens!465))) e!169988 tp!103147))))

(declare-fun b!273634 () Bool)

(declare-fun res!124814 () Bool)

(assert (=> b!273634 (=> (not res!124814) (not e!169993))))

(declare-fun rulesInvariant!585 (LexerInterface!619 List!3849) Bool)

(assert (=> b!273634 (= res!124814 (rulesInvariant!585 thiss!17480 rules!1920))))

(declare-fun b!273635 () Bool)

(declare-fun res!124805 () Bool)

(declare-fun e!170002 () Bool)

(assert (=> b!273635 (=> (not res!124805) (not e!170002))))

(declare-fun sepAndNonSepRulesDisjointChars!322 (List!3849 List!3849) Bool)

(assert (=> b!273635 (= res!124805 (sepAndNonSepRulesDisjointChars!322 rules!1920 rules!1920))))

(declare-fun b!273636 () Bool)

(assert (=> b!273636 (= e!169993 e!170002)))

(declare-fun res!124810 () Bool)

(assert (=> b!273636 (=> (not res!124810) (not e!170002))))

(declare-fun lt!113341 () BalanceConc!2586)

(declare-fun rulesProduceEachTokenIndividually!411 (LexerInterface!619 List!3849 BalanceConc!2586) Bool)

(assert (=> b!273636 (= res!124810 (rulesProduceEachTokenIndividually!411 thiss!17480 rules!1920 lt!113341))))

(declare-fun seqFromList!834 (List!3850) BalanceConc!2586)

(assert (=> b!273636 (= lt!113341 (seqFromList!834 tokens!465))))

(declare-fun e!170001 () Bool)

(assert (=> b!273637 (= e!170001 (and tp!103154 tp!103153))))

(declare-fun b!273638 () Bool)

(declare-fun e!169996 () Bool)

(declare-fun tp!103149 () Bool)

(declare-fun inv!4756 (Token!1210) Bool)

(assert (=> b!273638 (= e!169996 (and (inv!4756 (h!9237 tokens!465)) e!169998 tp!103149))))

(declare-fun b!273639 () Bool)

(declare-fun matchR!279 (Regex!957 List!3848) Bool)

(assert (=> b!273639 (= e!170013 (matchR!279 (regex!733 (rule!1320 (h!9237 tokens!465))) lt!113327))))

(declare-fun b!273640 () Bool)

(declare-fun e!170011 () Bool)

(declare-fun tp!103155 () Bool)

(assert (=> b!273640 (= e!170011 (and e!169987 tp!103155))))

(declare-fun b!273641 () Bool)

(declare-fun res!124817 () Bool)

(assert (=> b!273641 (=> (not res!124817) (not e!170013))))

(declare-fun isEmpty!2452 (List!3848) Bool)

(assert (=> b!273641 (= res!124817 (isEmpty!2452 (_2!2375 lt!113330)))))

(declare-fun b!273627 () Bool)

(declare-fun res!124825 () Bool)

(declare-fun e!169986 () Bool)

(assert (=> b!273627 (=> (not res!124825) (not e!169986))))

(declare-fun lt!113326 () List!3848)

(assert (=> b!273627 (= res!124825 (= (list!1577 (seqFromList!833 lt!113329)) lt!113326))))

(declare-fun res!124811 () Bool)

(assert (=> start!29458 (=> (not res!124811) (not e!169993))))

(assert (=> start!29458 (= res!124811 ((_ is Lexer!617) thiss!17480))))

(assert (=> start!29458 e!169993))

(assert (=> start!29458 true))

(assert (=> start!29458 e!170011))

(declare-fun e!169995 () Bool)

(assert (=> start!29458 (and (inv!4756 separatorToken!170) e!169995)))

(assert (=> start!29458 e!169996))

(declare-fun b!273642 () Bool)

(assert (=> b!273642 (= e!169991 (= tokens!465 lt!113337))))

(assert (=> b!273643 (= e!170007 e!170006)))

(declare-fun res!124819 () Bool)

(assert (=> b!273643 (=> res!124819 e!170006)))

(declare-datatypes ((tuple2!4322 0))(
  ( (tuple2!4323 (_1!2377 Token!1210) (_2!2377 BalanceConc!2584)) )
))
(declare-datatypes ((Option!821 0))(
  ( (None!820) (Some!820 (v!14697 tuple2!4322)) )
))
(declare-fun isDefined!664 (Option!821) Bool)

(declare-fun maxPrefixZipperSequence!300 (LexerInterface!619 List!3849 BalanceConc!2584) Option!821)

(assert (=> b!273643 (= res!124819 (not (isDefined!664 (maxPrefixZipperSequence!300 thiss!17480 rules!1920 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))))

(declare-fun lt!113320 () Unit!4998)

(declare-fun forallContained!288 (List!3850 Int Token!1210) Unit!4998)

(assert (=> b!273643 (= lt!113320 (forallContained!288 tokens!465 lambda!9280 (h!9237 tokens!465)))))

(assert (=> b!273643 (= lt!113327 (originalCharacters!776 (h!9237 tokens!465)))))

(declare-fun b!273644 () Bool)

(declare-fun head!892 (List!3850) Token!1210)

(assert (=> b!273644 (= e!170009 (= (_1!2375 (get!1276 lt!113325)) (head!892 tokens!465)))))

(declare-fun b!273645 () Bool)

(assert (=> b!273645 (= e!169986 (not e!170012))))

(declare-fun res!124815 () Bool)

(assert (=> b!273645 (=> res!124815 e!170012)))

(declare-fun printWithSeparatorTokenWhenNeededRec!294 (LexerInterface!619 List!3849 BalanceConc!2586 Token!1210 Int) BalanceConc!2584)

(assert (=> b!273645 (= res!124815 (not (= lt!113334 (list!1577 (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 (seqFromList!834 (t!38872 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!113339 () List!3848)

(assert (=> b!273645 (= lt!113339 lt!113340)))

(assert (=> b!273645 (= lt!113340 (++!1010 lt!113327 lt!113343))))

(declare-fun lt!113335 () List!3848)

(assert (=> b!273645 (= lt!113339 (++!1010 (++!1010 lt!113327 lt!113335) lt!113334))))

(declare-fun lt!113328 () Unit!4998)

(declare-fun lemmaConcatAssociativity!434 (List!3848 List!3848 List!3848) Unit!4998)

(assert (=> b!273645 (= lt!113328 (lemmaConcatAssociativity!434 lt!113327 lt!113335 lt!113334))))

(declare-fun charsOf!378 (Token!1210) BalanceConc!2584)

(assert (=> b!273645 (= lt!113327 (list!1577 (charsOf!378 (h!9237 tokens!465))))))

(assert (=> b!273645 (= lt!113343 (++!1010 lt!113335 lt!113334))))

(declare-fun printWithSeparatorTokenWhenNeededList!302 (LexerInterface!619 List!3849 List!3850 Token!1210) List!3848)

(assert (=> b!273645 (= lt!113334 (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 (t!38872 tokens!465) separatorToken!170))))

(assert (=> b!273645 (= lt!113335 (list!1577 (charsOf!378 separatorToken!170)))))

(declare-fun b!273646 () Bool)

(declare-fun e!169992 () Bool)

(declare-fun e!170000 () Bool)

(declare-fun tp!103150 () Bool)

(assert (=> b!273646 (= e!169992 (and tp!103150 (inv!4752 (tag!943 (rule!1320 separatorToken!170))) (inv!4755 (transformation!733 (rule!1320 separatorToken!170))) e!170000))))

(declare-fun tp!103145 () Bool)

(declare-fun b!273647 () Bool)

(assert (=> b!273647 (= e!169995 (and (inv!21 (value!25206 separatorToken!170)) e!169992 tp!103145))))

(declare-fun tp!103143 () Bool)

(declare-fun b!273648 () Bool)

(assert (=> b!273648 (= e!169988 (and tp!103143 (inv!4752 (tag!943 (rule!1320 (h!9237 tokens!465)))) (inv!4755 (transformation!733 (rule!1320 (h!9237 tokens!465)))) e!170001))))

(declare-fun b!273649 () Bool)

(declare-fun res!124807 () Bool)

(assert (=> b!273649 (=> (not res!124807) (not e!170002))))

(assert (=> b!273649 (= res!124807 (isSeparator!733 (rule!1320 separatorToken!170)))))

(declare-fun b!273650 () Bool)

(declare-fun res!124806 () Bool)

(assert (=> b!273650 (=> res!124806 e!170007)))

(declare-fun rulesProduceIndividualToken!368 (LexerInterface!619 List!3849 Token!1210) Bool)

(assert (=> b!273650 (= res!124806 (not (rulesProduceIndividualToken!368 thiss!17480 rules!1920 (h!9237 tokens!465))))))

(declare-fun b!273651 () Bool)

(declare-fun res!124809 () Bool)

(assert (=> b!273651 (=> (not res!124809) (not e!170002))))

(assert (=> b!273651 (= res!124809 ((_ is Cons!3840) tokens!465))))

(assert (=> b!273652 (= e!170000 (and tp!103144 tp!103151))))

(declare-fun b!273653 () Bool)

(assert (=> b!273653 (= e!170002 e!169986)))

(declare-fun res!124822 () Bool)

(assert (=> b!273653 (=> (not res!124822) (not e!169986))))

(assert (=> b!273653 (= res!124822 (= lt!113329 lt!113326))))

(assert (=> b!273653 (= lt!113326 (list!1577 (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 lt!113341 separatorToken!170 0)))))

(assert (=> b!273653 (= lt!113329 (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!124818 () Bool)

(assert (=> b!273654 (=> (not res!124818) (not e!170002))))

(declare-fun forall!972 (List!3850 Int) Bool)

(assert (=> b!273654 (= res!124818 (forall!972 tokens!465 lambda!9279))))

(declare-fun b!273655 () Bool)

(declare-fun res!124823 () Bool)

(assert (=> b!273655 (=> (not res!124823) (not e!170002))))

(assert (=> b!273655 (= res!124823 (rulesProduceIndividualToken!368 thiss!17480 rules!1920 separatorToken!170))))

(assert (= (and start!29458 res!124811) b!273622))

(assert (= (and b!273622 res!124813) b!273634))

(assert (= (and b!273634 res!124814) b!273636))

(assert (= (and b!273636 res!124810) b!273655))

(assert (= (and b!273655 res!124823) b!273649))

(assert (= (and b!273649 res!124807) b!273654))

(assert (= (and b!273654 res!124818) b!273635))

(assert (= (and b!273635 res!124805) b!273651))

(assert (= (and b!273651 res!124809) b!273653))

(assert (= (and b!273653 res!124822) b!273627))

(assert (= (and b!273627 res!124825) b!273645))

(assert (= (and b!273645 (not res!124815)) b!273623))

(assert (= (and b!273623 res!124820) b!273631))

(assert (= (and b!273623 (not res!124816)) b!273625))

(assert (= (and b!273625 (not res!124821)) b!273650))

(assert (= (and b!273650 (not res!124806)) b!273629))

(assert (= (and b!273629 (not res!124828)) b!273643))

(assert (= (and b!273643 (not res!124819)) b!273628))

(assert (= (and b!273628 res!124827) b!273641))

(assert (= (and b!273641 res!124817) b!273639))

(assert (= (and b!273628 (not res!124824)) b!273632))

(assert (= (and b!273632 (not res!124808)) b!273624))

(assert (= (and b!273624 res!124812) b!273644))

(assert (= (and b!273632 (not res!124826)) b!273642))

(assert (= b!273626 b!273630))

(assert (= b!273640 b!273626))

(assert (= (and start!29458 ((_ is Cons!3839) rules!1920)) b!273640))

(assert (= b!273646 b!273652))

(assert (= b!273647 b!273646))

(assert (= start!29458 b!273647))

(assert (= b!273648 b!273637))

(assert (= b!273633 b!273648))

(assert (= b!273638 b!273633))

(assert (= (and start!29458 ((_ is Cons!3840) tokens!465)) b!273638))

(declare-fun m!348811 () Bool)

(assert (=> b!273650 m!348811))

(declare-fun m!348813 () Bool)

(assert (=> b!273647 m!348813))

(declare-fun m!348815 () Bool)

(assert (=> b!273654 m!348815))

(declare-fun m!348817 () Bool)

(assert (=> b!273627 m!348817))

(assert (=> b!273627 m!348817))

(declare-fun m!348819 () Bool)

(assert (=> b!273627 m!348819))

(declare-fun m!348821 () Bool)

(assert (=> b!273634 m!348821))

(declare-fun m!348823 () Bool)

(assert (=> b!273638 m!348823))

(declare-fun m!348825 () Bool)

(assert (=> b!273639 m!348825))

(declare-fun m!348827 () Bool)

(assert (=> b!273641 m!348827))

(declare-fun m!348829 () Bool)

(assert (=> b!273629 m!348829))

(assert (=> b!273629 m!348829))

(declare-fun m!348831 () Bool)

(assert (=> b!273629 m!348831))

(declare-fun m!348833 () Bool)

(assert (=> b!273629 m!348833))

(declare-fun m!348835 () Bool)

(assert (=> b!273626 m!348835))

(declare-fun m!348837 () Bool)

(assert (=> b!273626 m!348837))

(declare-fun m!348839 () Bool)

(assert (=> b!273633 m!348839))

(declare-fun m!348841 () Bool)

(assert (=> b!273644 m!348841))

(declare-fun m!348843 () Bool)

(assert (=> b!273644 m!348843))

(declare-fun m!348845 () Bool)

(assert (=> b!273655 m!348845))

(declare-fun m!348847 () Bool)

(assert (=> b!273624 m!348847))

(declare-fun m!348849 () Bool)

(assert (=> b!273624 m!348849))

(declare-fun m!348851 () Bool)

(assert (=> b!273643 m!348851))

(assert (=> b!273643 m!348851))

(declare-fun m!348853 () Bool)

(assert (=> b!273643 m!348853))

(assert (=> b!273643 m!348853))

(declare-fun m!348855 () Bool)

(assert (=> b!273643 m!348855))

(declare-fun m!348857 () Bool)

(assert (=> b!273643 m!348857))

(declare-fun m!348859 () Bool)

(assert (=> b!273628 m!348859))

(declare-fun m!348861 () Bool)

(assert (=> b!273628 m!348861))

(declare-fun m!348863 () Bool)

(assert (=> b!273628 m!348863))

(declare-fun m!348865 () Bool)

(assert (=> b!273631 m!348865))

(declare-fun m!348867 () Bool)

(assert (=> b!273625 m!348867))

(declare-fun m!348869 () Bool)

(assert (=> b!273625 m!348869))

(declare-fun m!348871 () Bool)

(assert (=> b!273625 m!348871))

(declare-fun m!348873 () Bool)

(assert (=> b!273625 m!348873))

(declare-fun m!348875 () Bool)

(assert (=> b!273625 m!348875))

(declare-fun m!348877 () Bool)

(assert (=> b!273636 m!348877))

(declare-fun m!348879 () Bool)

(assert (=> b!273636 m!348879))

(declare-fun m!348881 () Bool)

(assert (=> start!29458 m!348881))

(declare-fun m!348883 () Bool)

(assert (=> b!273653 m!348883))

(assert (=> b!273653 m!348883))

(declare-fun m!348885 () Bool)

(assert (=> b!273653 m!348885))

(declare-fun m!348887 () Bool)

(assert (=> b!273653 m!348887))

(declare-fun m!348889 () Bool)

(assert (=> b!273646 m!348889))

(declare-fun m!348891 () Bool)

(assert (=> b!273646 m!348891))

(declare-fun m!348893 () Bool)

(assert (=> b!273635 m!348893))

(declare-fun m!348895 () Bool)

(assert (=> b!273645 m!348895))

(declare-fun m!348897 () Bool)

(assert (=> b!273645 m!348897))

(declare-fun m!348899 () Bool)

(assert (=> b!273645 m!348899))

(declare-fun m!348901 () Bool)

(assert (=> b!273645 m!348901))

(declare-fun m!348903 () Bool)

(assert (=> b!273645 m!348903))

(assert (=> b!273645 m!348895))

(declare-fun m!348905 () Bool)

(assert (=> b!273645 m!348905))

(declare-fun m!348907 () Bool)

(assert (=> b!273645 m!348907))

(assert (=> b!273645 m!348905))

(declare-fun m!348909 () Bool)

(assert (=> b!273645 m!348909))

(assert (=> b!273645 m!348899))

(declare-fun m!348911 () Bool)

(assert (=> b!273645 m!348911))

(declare-fun m!348913 () Bool)

(assert (=> b!273645 m!348913))

(declare-fun m!348915 () Bool)

(assert (=> b!273645 m!348915))

(assert (=> b!273645 m!348911))

(declare-fun m!348917 () Bool)

(assert (=> b!273645 m!348917))

(assert (=> b!273645 m!348913))

(declare-fun m!348919 () Bool)

(assert (=> b!273645 m!348919))

(declare-fun m!348921 () Bool)

(assert (=> b!273648 m!348921))

(declare-fun m!348923 () Bool)

(assert (=> b!273648 m!348923))

(declare-fun m!348925 () Bool)

(assert (=> b!273632 m!348925))

(declare-fun m!348927 () Bool)

(assert (=> b!273632 m!348927))

(declare-fun m!348929 () Bool)

(assert (=> b!273632 m!348929))

(declare-fun m!348931 () Bool)

(assert (=> b!273632 m!348931))

(declare-fun m!348933 () Bool)

(assert (=> b!273632 m!348933))

(assert (=> b!273632 m!348849))

(declare-fun m!348935 () Bool)

(assert (=> b!273632 m!348935))

(assert (=> b!273632 m!348849))

(declare-fun m!348937 () Bool)

(assert (=> b!273632 m!348937))

(declare-fun m!348939 () Bool)

(assert (=> b!273632 m!348939))

(declare-fun m!348941 () Bool)

(assert (=> b!273622 m!348941))

(check-sat (not b!273634) b_and!21965 (not b!273664) (not b!273648) (not b!273631) (not b_next!10109) (not start!29458) (not b!273629) (not b_next!10111) (not b!273633) (not b_next!10113) (not b!273638) (not b!273655) (not b!273646) (not b!273644) (not b_next!10115) (not b!273647) b_and!21959 (not b!273643) (not b!273626) b_and!21961 (not b!273627) (not b_next!10107) (not b!273625) (not b!273645) (not b!273628) (not b_next!10105) (not b!273640) (not b!273636) (not b!273639) (not b!273650) b_and!21957 (not b!273654) (not b!273653) (not b!273622) b_and!21963 (not b!273632) b_and!21967 (not b!273635) (not b!273641) (not b!273624))
(check-sat b_and!21965 (not b_next!10115) b_and!21959 (not b_next!10109) (not b_next!10105) (not b_next!10111) b_and!21957 (not b_next!10113) b_and!21963 b_and!21967 b_and!21961 (not b_next!10107))
(get-model)

(declare-fun b!273681 () Bool)

(declare-fun e!170034 () List!3848)

(assert (=> b!273681 (= e!170034 lt!113334)))

(declare-fun b!273684 () Bool)

(declare-fun lt!113349 () List!3848)

(declare-fun e!170033 () Bool)

(assert (=> b!273684 (= e!170033 (or (not (= lt!113334 Nil!3838)) (= lt!113349 lt!113327)))))

(declare-fun b!273682 () Bool)

(assert (=> b!273682 (= e!170034 (Cons!3838 (h!9235 lt!113327) (++!1010 (t!38870 lt!113327) lt!113334)))))

(declare-fun d!80198 () Bool)

(assert (=> d!80198 e!170033))

(declare-fun res!124854 () Bool)

(assert (=> d!80198 (=> (not res!124854) (not e!170033))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!555 (List!3848) (InoxSet C!2836))

(assert (=> d!80198 (= res!124854 (= (content!555 lt!113349) ((_ map or) (content!555 lt!113327) (content!555 lt!113334))))))

(assert (=> d!80198 (= lt!113349 e!170034)))

(declare-fun c!51889 () Bool)

(assert (=> d!80198 (= c!51889 ((_ is Nil!3838) lt!113327))))

(assert (=> d!80198 (= (++!1010 lt!113327 lt!113334) lt!113349)))

(declare-fun b!273683 () Bool)

(declare-fun res!124853 () Bool)

(assert (=> b!273683 (=> (not res!124853) (not e!170033))))

(declare-fun size!3069 (List!3848) Int)

(assert (=> b!273683 (= res!124853 (= (size!3069 lt!113349) (+ (size!3069 lt!113327) (size!3069 lt!113334))))))

(assert (= (and d!80198 c!51889) b!273681))

(assert (= (and d!80198 (not c!51889)) b!273682))

(assert (= (and d!80198 res!124854) b!273683))

(assert (= (and b!273683 res!124853) b!273684))

(declare-fun m!348951 () Bool)

(assert (=> b!273682 m!348951))

(declare-fun m!348953 () Bool)

(assert (=> d!80198 m!348953))

(declare-fun m!348955 () Bool)

(assert (=> d!80198 m!348955))

(declare-fun m!348957 () Bool)

(assert (=> d!80198 m!348957))

(declare-fun m!348959 () Bool)

(assert (=> b!273683 m!348959))

(declare-fun m!348961 () Bool)

(assert (=> b!273683 m!348961))

(declare-fun m!348963 () Bool)

(assert (=> b!273683 m!348963))

(assert (=> b!273631 d!80198))

(declare-fun d!80200 () Bool)

(declare-fun list!1580 (Conc!1288) List!3848)

(assert (=> d!80200 (= (list!1577 (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 lt!113341 separatorToken!170 0)) (list!1580 (c!51884 (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 lt!113341 separatorToken!170 0))))))

(declare-fun bs!30711 () Bool)

(assert (= bs!30711 d!80200))

(declare-fun m!348973 () Bool)

(assert (=> bs!30711 m!348973))

(assert (=> b!273653 d!80200))

(declare-fun bs!30719 () Bool)

(declare-fun d!80204 () Bool)

(assert (= bs!30719 (and d!80204 b!273654)))

(declare-fun lambda!9290 () Int)

(assert (=> bs!30719 (= lambda!9290 lambda!9279)))

(declare-fun bs!30720 () Bool)

(assert (= bs!30720 (and d!80204 b!273643)))

(assert (=> bs!30720 (not (= lambda!9290 lambda!9280))))

(declare-fun bs!30721 () Bool)

(declare-fun b!273799 () Bool)

(assert (= bs!30721 (and b!273799 b!273654)))

(declare-fun lambda!9291 () Int)

(assert (=> bs!30721 (not (= lambda!9291 lambda!9279))))

(declare-fun bs!30722 () Bool)

(assert (= bs!30722 (and b!273799 b!273643)))

(assert (=> bs!30722 (= lambda!9291 lambda!9280)))

(declare-fun bs!30723 () Bool)

(assert (= bs!30723 (and b!273799 d!80204)))

(assert (=> bs!30723 (not (= lambda!9291 lambda!9290))))

(declare-fun b!273807 () Bool)

(declare-fun e!170105 () Bool)

(assert (=> b!273807 (= e!170105 true)))

(declare-fun b!273806 () Bool)

(declare-fun e!170104 () Bool)

(assert (=> b!273806 (= e!170104 e!170105)))

(declare-fun b!273805 () Bool)

(declare-fun e!170103 () Bool)

(assert (=> b!273805 (= e!170103 e!170104)))

(assert (=> b!273799 e!170103))

(assert (= b!273806 b!273807))

(assert (= b!273805 b!273806))

(assert (= (and b!273799 ((_ is Cons!3839) rules!1920)) b!273805))

(assert (=> b!273807 (< (dynLambda!1981 order!2973 (toValue!1476 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9291))))

(assert (=> b!273807 (< (dynLambda!1983 order!2977 (toChars!1335 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9291))))

(assert (=> b!273799 true))

(declare-fun call!15009 () BalanceConc!2584)

(declare-fun call!15007 () Token!1210)

(declare-fun c!51914 () Bool)

(declare-fun bm!15001 () Bool)

(assert (=> bm!15001 (= call!15009 (charsOf!378 (ite c!51914 separatorToken!170 call!15007)))))

(declare-fun b!273796 () Bool)

(declare-fun e!170098 () Bool)

(assert (=> b!273796 (= c!51914 e!170098)))

(declare-fun res!124913 () Bool)

(assert (=> b!273796 (=> (not res!124913) (not e!170098))))

(declare-fun lt!113404 () Option!821)

(assert (=> b!273796 (= res!124913 ((_ is Some!820) lt!113404))))

(declare-fun e!170097 () BalanceConc!2584)

(declare-fun e!170100 () BalanceConc!2584)

(assert (=> b!273796 (= e!170097 e!170100)))

(declare-fun b!273797 () Bool)

(declare-fun e!170099 () Bool)

(declare-fun apply!781 (BalanceConc!2586 Int) Token!1210)

(assert (=> b!273797 (= e!170099 (= (_1!2377 (v!14697 lt!113404)) (apply!781 lt!113341 0)))))

(declare-fun b!273798 () Bool)

(declare-fun call!15006 () Token!1210)

(assert (=> b!273798 (= e!170098 (not (= (_1!2377 (v!14697 lt!113404)) call!15006)))))

(declare-fun e!170102 () BalanceConc!2584)

(assert (=> b!273799 (= e!170102 e!170097)))

(declare-fun lt!113401 () List!3850)

(declare-fun list!1581 (BalanceConc!2586) List!3850)

(assert (=> b!273799 (= lt!113401 (list!1581 lt!113341))))

(declare-fun lt!113407 () Unit!4998)

(declare-fun lemmaDropApply!206 (List!3850 Int) Unit!4998)

(assert (=> b!273799 (= lt!113407 (lemmaDropApply!206 lt!113401 0))))

(declare-fun drop!219 (List!3850 Int) List!3850)

(declare-fun apply!782 (List!3850 Int) Token!1210)

(assert (=> b!273799 (= (head!892 (drop!219 lt!113401 0)) (apply!782 lt!113401 0))))

(declare-fun lt!113396 () Unit!4998)

(assert (=> b!273799 (= lt!113396 lt!113407)))

(declare-fun lt!113406 () List!3850)

(assert (=> b!273799 (= lt!113406 (list!1581 lt!113341))))

(declare-fun lt!113403 () Unit!4998)

(declare-fun lemmaDropTail!198 (List!3850 Int) Unit!4998)

(assert (=> b!273799 (= lt!113403 (lemmaDropTail!198 lt!113406 0))))

(declare-fun tail!483 (List!3850) List!3850)

(assert (=> b!273799 (= (tail!483 (drop!219 lt!113406 0)) (drop!219 lt!113406 (+ 0 1)))))

(declare-fun lt!113399 () Unit!4998)

(assert (=> b!273799 (= lt!113399 lt!113403)))

(declare-fun lt!113405 () Unit!4998)

(assert (=> b!273799 (= lt!113405 (forallContained!288 (list!1581 lt!113341) lambda!9291 (apply!781 lt!113341 0)))))

(declare-fun lt!113408 () BalanceConc!2584)

(assert (=> b!273799 (= lt!113408 (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 lt!113341 separatorToken!170 (+ 0 1)))))

(declare-fun ++!1012 (BalanceConc!2584 BalanceConc!2584) BalanceConc!2584)

(assert (=> b!273799 (= lt!113404 (maxPrefixZipperSequence!300 thiss!17480 rules!1920 (++!1012 (charsOf!378 (apply!781 lt!113341 0)) lt!113408)))))

(declare-fun res!124912 () Bool)

(assert (=> b!273799 (= res!124912 ((_ is Some!820) lt!113404))))

(assert (=> b!273799 (=> (not res!124912) (not e!170099))))

(declare-fun c!51912 () Bool)

(assert (=> b!273799 (= c!51912 e!170099)))

(declare-fun b!273800 () Bool)

(assert (=> b!273800 (= e!170100 (BalanceConc!2585 Empty!1288))))

(assert (=> b!273800 (= (print!344 thiss!17480 (singletonSeq!279 call!15007)) (printTailRec!307 thiss!17480 (singletonSeq!279 call!15007) 0 (BalanceConc!2585 Empty!1288)))))

(declare-fun lt!113395 () Unit!4998)

(declare-fun Unit!5004 () Unit!4998)

(assert (=> b!273800 (= lt!113395 Unit!5004)))

(declare-fun lt!113400 () Unit!4998)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!114 (LexerInterface!619 List!3849 List!3848 List!3848) Unit!4998)

(assert (=> b!273800 (= lt!113400 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!114 thiss!17480 rules!1920 (list!1577 call!15009) (list!1577 lt!113408)))))

(assert (=> b!273800 false))

(declare-fun lt!113398 () Unit!4998)

(declare-fun Unit!5005 () Unit!4998)

(assert (=> b!273800 (= lt!113398 Unit!5005)))

(declare-fun call!15010 () BalanceConc!2584)

(declare-fun bm!15002 () Bool)

(assert (=> bm!15002 (= call!15010 (charsOf!378 (ite c!51912 call!15006 call!15007)))))

(declare-fun bm!15003 () Bool)

(assert (=> bm!15003 (= call!15006 (apply!781 lt!113341 0))))

(declare-fun b!273801 () Bool)

(declare-fun e!170101 () Bool)

(declare-fun size!3070 (BalanceConc!2586) Int)

(assert (=> b!273801 (= e!170101 (<= 0 (size!3070 lt!113341)))))

(declare-fun lt!113402 () BalanceConc!2584)

(declare-fun dropList!166 (BalanceConc!2586 Int) List!3850)

(assert (=> d!80204 (= (list!1577 lt!113402) (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 (dropList!166 lt!113341 0) separatorToken!170))))

(assert (=> d!80204 (= lt!113402 e!170102)))

(declare-fun c!51913 () Bool)

(assert (=> d!80204 (= c!51913 (>= 0 (size!3070 lt!113341)))))

(declare-fun lt!113397 () Unit!4998)

(declare-fun lemmaContentSubsetPreservesForall!110 (List!3850 List!3850 Int) Unit!4998)

(assert (=> d!80204 (= lt!113397 (lemmaContentSubsetPreservesForall!110 (list!1581 lt!113341) (dropList!166 lt!113341 0) lambda!9290))))

(assert (=> d!80204 e!170101))

(declare-fun res!124911 () Bool)

(assert (=> d!80204 (=> (not res!124911) (not e!170101))))

(assert (=> d!80204 (= res!124911 (>= 0 0))))

(assert (=> d!80204 (= (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 lt!113341 separatorToken!170 0) lt!113402)))

(declare-fun b!273802 () Bool)

(declare-fun call!15008 () BalanceConc!2584)

(assert (=> b!273802 (= e!170097 call!15008)))

(declare-fun bm!15004 () Bool)

(assert (=> bm!15004 (= call!15008 (++!1012 call!15010 (ite c!51912 lt!113408 call!15009)))))

(declare-fun b!273803 () Bool)

(assert (=> b!273803 (= e!170100 (++!1012 call!15008 lt!113408))))

(declare-fun b!273804 () Bool)

(assert (=> b!273804 (= e!170102 (BalanceConc!2585 Empty!1288))))

(declare-fun bm!15005 () Bool)

(assert (=> bm!15005 (= call!15007 call!15006)))

(assert (= (and d!80204 res!124911) b!273801))

(assert (= (and d!80204 c!51913) b!273804))

(assert (= (and d!80204 (not c!51913)) b!273799))

(assert (= (and b!273799 res!124912) b!273797))

(assert (= (and b!273799 c!51912) b!273802))

(assert (= (and b!273799 (not c!51912)) b!273796))

(assert (= (and b!273796 res!124913) b!273798))

(assert (= (and b!273796 c!51914) b!273803))

(assert (= (and b!273796 (not c!51914)) b!273800))

(assert (= (or b!273803 b!273800) bm!15005))

(assert (= (or b!273803 b!273800) bm!15001))

(assert (= (or b!273802 b!273798 bm!15005) bm!15003))

(assert (= (or b!273802 b!273803) bm!15002))

(assert (= (or b!273802 b!273803) bm!15004))

(declare-fun m!349081 () Bool)

(assert (=> b!273801 m!349081))

(declare-fun m!349083 () Bool)

(assert (=> bm!15001 m!349083))

(declare-fun m!349085 () Bool)

(assert (=> bm!15004 m!349085))

(declare-fun m!349087 () Bool)

(assert (=> b!273797 m!349087))

(declare-fun m!349089 () Bool)

(assert (=> b!273803 m!349089))

(declare-fun m!349091 () Bool)

(assert (=> bm!15002 m!349091))

(assert (=> d!80204 m!349081))

(declare-fun m!349093 () Bool)

(assert (=> d!80204 m!349093))

(declare-fun m!349095 () Bool)

(assert (=> d!80204 m!349095))

(declare-fun m!349097 () Bool)

(assert (=> d!80204 m!349097))

(assert (=> d!80204 m!349093))

(declare-fun m!349099 () Bool)

(assert (=> d!80204 m!349099))

(assert (=> d!80204 m!349093))

(assert (=> d!80204 m!349097))

(declare-fun m!349101 () Bool)

(assert (=> d!80204 m!349101))

(declare-fun m!349103 () Bool)

(assert (=> b!273799 m!349103))

(declare-fun m!349105 () Bool)

(assert (=> b!273799 m!349105))

(assert (=> b!273799 m!349097))

(assert (=> b!273799 m!349087))

(declare-fun m!349107 () Bool)

(assert (=> b!273799 m!349107))

(declare-fun m!349109 () Bool)

(assert (=> b!273799 m!349109))

(declare-fun m!349111 () Bool)

(assert (=> b!273799 m!349111))

(declare-fun m!349113 () Bool)

(assert (=> b!273799 m!349113))

(assert (=> b!273799 m!349087))

(declare-fun m!349115 () Bool)

(assert (=> b!273799 m!349115))

(assert (=> b!273799 m!349097))

(declare-fun m!349117 () Bool)

(assert (=> b!273799 m!349117))

(declare-fun m!349119 () Bool)

(assert (=> b!273799 m!349119))

(assert (=> b!273799 m!349105))

(declare-fun m!349121 () Bool)

(assert (=> b!273799 m!349121))

(assert (=> b!273799 m!349115))

(assert (=> b!273799 m!349117))

(declare-fun m!349123 () Bool)

(assert (=> b!273799 m!349123))

(assert (=> b!273799 m!349111))

(declare-fun m!349125 () Bool)

(assert (=> b!273799 m!349125))

(declare-fun m!349127 () Bool)

(assert (=> b!273799 m!349127))

(assert (=> b!273799 m!349087))

(assert (=> bm!15003 m!349087))

(declare-fun m!349129 () Bool)

(assert (=> b!273800 m!349129))

(declare-fun m!349131 () Bool)

(assert (=> b!273800 m!349131))

(declare-fun m!349133 () Bool)

(assert (=> b!273800 m!349133))

(assert (=> b!273800 m!349131))

(declare-fun m!349135 () Bool)

(assert (=> b!273800 m!349135))

(assert (=> b!273800 m!349131))

(declare-fun m!349137 () Bool)

(assert (=> b!273800 m!349137))

(assert (=> b!273800 m!349129))

(assert (=> b!273800 m!349133))

(declare-fun m!349139 () Bool)

(assert (=> b!273800 m!349139))

(assert (=> b!273653 d!80204))

(declare-fun bs!30727 () Bool)

(declare-fun b!273857 () Bool)

(assert (= bs!30727 (and b!273857 b!273654)))

(declare-fun lambda!9297 () Int)

(assert (=> bs!30727 (not (= lambda!9297 lambda!9279))))

(declare-fun bs!30728 () Bool)

(assert (= bs!30728 (and b!273857 b!273643)))

(assert (=> bs!30728 (= lambda!9297 lambda!9280)))

(declare-fun bs!30729 () Bool)

(assert (= bs!30729 (and b!273857 d!80204)))

(assert (=> bs!30729 (not (= lambda!9297 lambda!9290))))

(declare-fun bs!30730 () Bool)

(assert (= bs!30730 (and b!273857 b!273799)))

(assert (=> bs!30730 (= lambda!9297 lambda!9291)))

(declare-fun b!273861 () Bool)

(declare-fun e!170135 () Bool)

(assert (=> b!273861 (= e!170135 true)))

(declare-fun b!273860 () Bool)

(declare-fun e!170134 () Bool)

(assert (=> b!273860 (= e!170134 e!170135)))

(declare-fun b!273859 () Bool)

(declare-fun e!170133 () Bool)

(assert (=> b!273859 (= e!170133 e!170134)))

(assert (=> b!273857 e!170133))

(assert (= b!273860 b!273861))

(assert (= b!273859 b!273860))

(assert (= (and b!273857 ((_ is Cons!3839) rules!1920)) b!273859))

(assert (=> b!273861 (< (dynLambda!1981 order!2973 (toValue!1476 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9297))))

(assert (=> b!273861 (< (dynLambda!1983 order!2977 (toChars!1335 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9297))))

(assert (=> b!273857 true))

(declare-fun b!273851 () Bool)

(declare-fun c!51937 () Bool)

(declare-fun lt!113443 () Option!820)

(assert (=> b!273851 (= c!51937 (and ((_ is Some!819) lt!113443) (not (= (_1!2375 (v!14696 lt!113443)) (h!9237 tokens!465)))))))

(declare-fun e!170129 () List!3848)

(declare-fun e!170132 () List!3848)

(assert (=> b!273851 (= e!170129 e!170132)))

(declare-fun bm!15031 () Bool)

(declare-fun call!15039 () BalanceConc!2584)

(assert (=> bm!15031 (= call!15039 (charsOf!378 (h!9237 tokens!465)))))

(declare-fun b!273852 () Bool)

(declare-fun e!170130 () List!3848)

(assert (=> b!273852 (= e!170130 Nil!3838)))

(declare-fun call!15037 () BalanceConc!2584)

(declare-fun bm!15032 () Bool)

(declare-fun call!15040 () List!3848)

(declare-fun c!51938 () Bool)

(assert (=> bm!15032 (= call!15040 (list!1577 (ite c!51938 call!15039 call!15037)))))

(declare-fun bm!15033 () Bool)

(assert (=> bm!15033 (= call!15037 call!15039)))

(declare-fun b!273853 () Bool)

(declare-fun e!170131 () BalanceConc!2584)

(assert (=> b!273853 (= e!170131 (charsOf!378 separatorToken!170))))

(declare-fun b!273854 () Bool)

(declare-fun call!15038 () List!3848)

(assert (=> b!273854 (= e!170129 call!15038)))

(declare-fun b!273855 () Bool)

(declare-fun lt!113441 () List!3848)

(assert (=> b!273855 (= e!170132 (++!1010 call!15038 lt!113441))))

(declare-fun d!80232 () Bool)

(declare-fun c!51935 () Bool)

(assert (=> d!80232 (= c!51935 ((_ is Cons!3840) tokens!465))))

(assert (=> d!80232 (= (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!170130)))

(declare-fun b!273856 () Bool)

(assert (=> b!273856 (= e!170132 Nil!3838)))

(assert (=> b!273856 (= (print!344 thiss!17480 (singletonSeq!279 (h!9237 tokens!465))) (printTailRec!307 thiss!17480 (singletonSeq!279 (h!9237 tokens!465)) 0 (BalanceConc!2585 Empty!1288)))))

(declare-fun lt!113439 () Unit!4998)

(declare-fun Unit!5006 () Unit!4998)

(assert (=> b!273856 (= lt!113439 Unit!5006)))

(declare-fun lt!113442 () Unit!4998)

(declare-fun call!15036 () List!3848)

(assert (=> b!273856 (= lt!113442 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!114 thiss!17480 rules!1920 call!15036 lt!113441))))

(assert (=> b!273856 false))

(declare-fun lt!113444 () Unit!4998)

(declare-fun Unit!5007 () Unit!4998)

(assert (=> b!273856 (= lt!113444 Unit!5007)))

(declare-fun bm!15034 () Bool)

(assert (=> bm!15034 (= call!15036 (list!1577 e!170131))))

(declare-fun c!51936 () Bool)

(assert (=> bm!15034 (= c!51936 c!51937)))

(declare-fun bm!15035 () Bool)

(assert (=> bm!15035 (= call!15038 (++!1010 call!15040 (ite c!51938 lt!113441 call!15036)))))

(assert (=> b!273857 (= e!170130 e!170129)))

(declare-fun lt!113440 () Unit!4998)

(assert (=> b!273857 (= lt!113440 (forallContained!288 tokens!465 lambda!9297 (h!9237 tokens!465)))))

(assert (=> b!273857 (= lt!113441 (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 (t!38872 tokens!465) separatorToken!170))))

(assert (=> b!273857 (= lt!113443 (maxPrefix!337 thiss!17480 rules!1920 (++!1010 (list!1577 (charsOf!378 (h!9237 tokens!465))) lt!113441)))))

(assert (=> b!273857 (= c!51938 (and ((_ is Some!819) lt!113443) (= (_1!2375 (v!14696 lt!113443)) (h!9237 tokens!465))))))

(declare-fun b!273858 () Bool)

(assert (=> b!273858 (= e!170131 call!15037)))

(assert (= (and d!80232 c!51935) b!273857))

(assert (= (and d!80232 (not c!51935)) b!273852))

(assert (= (and b!273857 c!51938) b!273854))

(assert (= (and b!273857 (not c!51938)) b!273851))

(assert (= (and b!273851 c!51937) b!273855))

(assert (= (and b!273851 (not c!51937)) b!273856))

(assert (= (or b!273855 b!273856) bm!15033))

(assert (= (or b!273855 b!273856) bm!15034))

(assert (= (and bm!15034 c!51936) b!273853))

(assert (= (and bm!15034 (not c!51936)) b!273858))

(assert (= (or b!273854 bm!15033) bm!15031))

(assert (= (or b!273854 b!273855) bm!15032))

(assert (= (or b!273854 b!273855) bm!15035))

(declare-fun m!349169 () Bool)

(assert (=> bm!15034 m!349169))

(declare-fun m!349171 () Bool)

(assert (=> b!273855 m!349171))

(declare-fun m!349173 () Bool)

(assert (=> bm!15035 m!349173))

(declare-fun m!349175 () Bool)

(assert (=> bm!15032 m!349175))

(assert (=> b!273856 m!348875))

(assert (=> b!273856 m!348875))

(declare-fun m!349177 () Bool)

(assert (=> b!273856 m!349177))

(assert (=> b!273856 m!348875))

(declare-fun m!349179 () Bool)

(assert (=> b!273856 m!349179))

(declare-fun m!349181 () Bool)

(assert (=> b!273856 m!349181))

(assert (=> b!273853 m!348905))

(assert (=> bm!15031 m!348913))

(assert (=> b!273857 m!348913))

(assert (=> b!273857 m!348915))

(assert (=> b!273857 m!348903))

(declare-fun m!349183 () Bool)

(assert (=> b!273857 m!349183))

(declare-fun m!349185 () Bool)

(assert (=> b!273857 m!349185))

(assert (=> b!273857 m!348915))

(assert (=> b!273857 m!349183))

(declare-fun m!349187 () Bool)

(assert (=> b!273857 m!349187))

(assert (=> b!273857 m!348913))

(assert (=> b!273653 d!80232))

(declare-fun d!80236 () Bool)

(declare-fun lt!113497 () Bool)

(declare-fun e!170169 () Bool)

(assert (=> d!80236 (= lt!113497 e!170169)))

(declare-fun res!124935 () Bool)

(assert (=> d!80236 (=> (not res!124935) (not e!170169))))

(assert (=> d!80236 (= res!124935 (= (list!1581 (_1!2376 (lex!411 thiss!17480 rules!1920 (print!344 thiss!17480 (singletonSeq!279 separatorToken!170))))) (list!1581 (singletonSeq!279 separatorToken!170))))))

(declare-fun e!170168 () Bool)

(assert (=> d!80236 (= lt!113497 e!170168)))

(declare-fun res!124933 () Bool)

(assert (=> d!80236 (=> (not res!124933) (not e!170168))))

(declare-fun lt!113498 () tuple2!4320)

(assert (=> d!80236 (= res!124933 (= (size!3070 (_1!2376 lt!113498)) 1))))

(assert (=> d!80236 (= lt!113498 (lex!411 thiss!17480 rules!1920 (print!344 thiss!17480 (singletonSeq!279 separatorToken!170))))))

(assert (=> d!80236 (not (isEmpty!2449 rules!1920))))

(assert (=> d!80236 (= (rulesProduceIndividualToken!368 thiss!17480 rules!1920 separatorToken!170) lt!113497)))

(declare-fun b!273912 () Bool)

(declare-fun res!124934 () Bool)

(assert (=> b!273912 (=> (not res!124934) (not e!170168))))

(assert (=> b!273912 (= res!124934 (= (apply!781 (_1!2376 lt!113498) 0) separatorToken!170))))

(declare-fun b!273913 () Bool)

(declare-fun isEmpty!2455 (BalanceConc!2584) Bool)

(assert (=> b!273913 (= e!170168 (isEmpty!2455 (_2!2376 lt!113498)))))

(declare-fun b!273914 () Bool)

(assert (=> b!273914 (= e!170169 (isEmpty!2455 (_2!2376 (lex!411 thiss!17480 rules!1920 (print!344 thiss!17480 (singletonSeq!279 separatorToken!170))))))))

(assert (= (and d!80236 res!124933) b!273912))

(assert (= (and b!273912 res!124934) b!273913))

(assert (= (and d!80236 res!124935) b!273914))

(declare-fun m!349273 () Bool)

(assert (=> d!80236 m!349273))

(declare-fun m!349275 () Bool)

(assert (=> d!80236 m!349275))

(declare-fun m!349277 () Bool)

(assert (=> d!80236 m!349277))

(assert (=> d!80236 m!349275))

(declare-fun m!349279 () Bool)

(assert (=> d!80236 m!349279))

(assert (=> d!80236 m!349275))

(assert (=> d!80236 m!349279))

(declare-fun m!349281 () Bool)

(assert (=> d!80236 m!349281))

(declare-fun m!349283 () Bool)

(assert (=> d!80236 m!349283))

(assert (=> d!80236 m!348941))

(declare-fun m!349285 () Bool)

(assert (=> b!273912 m!349285))

(declare-fun m!349287 () Bool)

(assert (=> b!273913 m!349287))

(assert (=> b!273914 m!349275))

(assert (=> b!273914 m!349275))

(assert (=> b!273914 m!349279))

(assert (=> b!273914 m!349279))

(assert (=> b!273914 m!349281))

(declare-fun m!349289 () Bool)

(assert (=> b!273914 m!349289))

(assert (=> b!273655 d!80236))

(declare-fun d!80252 () Bool)

(declare-fun res!124938 () Bool)

(declare-fun e!170174 () Bool)

(assert (=> d!80252 (=> (not res!124938) (not e!170174))))

(declare-fun rulesValid!226 (LexerInterface!619 List!3849) Bool)

(assert (=> d!80252 (= res!124938 (rulesValid!226 thiss!17480 rules!1920))))

(assert (=> d!80252 (= (rulesInvariant!585 thiss!17480 rules!1920) e!170174)))

(declare-fun b!273921 () Bool)

(declare-datatypes ((List!3851 0))(
  ( (Nil!3841) (Cons!3841 (h!9238 String!4855) (t!38937 List!3851)) )
))
(declare-fun noDuplicateTag!226 (LexerInterface!619 List!3849 List!3851) Bool)

(assert (=> b!273921 (= e!170174 (noDuplicateTag!226 thiss!17480 rules!1920 Nil!3841))))

(assert (= (and d!80252 res!124938) b!273921))

(declare-fun m!349291 () Bool)

(assert (=> d!80252 m!349291))

(declare-fun m!349293 () Bool)

(assert (=> b!273921 m!349293))

(assert (=> b!273634 d!80252))

(declare-fun b!273946 () Bool)

(declare-fun e!170187 () Bool)

(declare-fun tail!484 (List!3848) List!3848)

(assert (=> b!273946 (= e!170187 (isPrefix!401 (tail!484 lt!113327) (tail!484 lt!113340)))))

(declare-fun b!273944 () Bool)

(declare-fun e!170185 () Bool)

(assert (=> b!273944 (= e!170185 e!170187)))

(declare-fun res!124964 () Bool)

(assert (=> b!273944 (=> (not res!124964) (not e!170187))))

(assert (=> b!273944 (= res!124964 (not ((_ is Nil!3838) lt!113340)))))

(declare-fun b!273947 () Bool)

(declare-fun e!170186 () Bool)

(assert (=> b!273947 (= e!170186 (>= (size!3069 lt!113340) (size!3069 lt!113327)))))

(declare-fun d!80254 () Bool)

(assert (=> d!80254 e!170186))

(declare-fun res!124962 () Bool)

(assert (=> d!80254 (=> res!124962 e!170186)))

(declare-fun lt!113511 () Bool)

(assert (=> d!80254 (= res!124962 (not lt!113511))))

(assert (=> d!80254 (= lt!113511 e!170185)))

(declare-fun res!124963 () Bool)

(assert (=> d!80254 (=> res!124963 e!170185)))

(assert (=> d!80254 (= res!124963 ((_ is Nil!3838) lt!113327))))

(assert (=> d!80254 (= (isPrefix!401 lt!113327 lt!113340) lt!113511)))

(declare-fun b!273945 () Bool)

(declare-fun res!124961 () Bool)

(assert (=> b!273945 (=> (not res!124961) (not e!170187))))

(declare-fun head!894 (List!3848) C!2836)

(assert (=> b!273945 (= res!124961 (= (head!894 lt!113327) (head!894 lt!113340)))))

(assert (= (and d!80254 (not res!124963)) b!273944))

(assert (= (and b!273944 res!124964) b!273945))

(assert (= (and b!273945 res!124961) b!273946))

(assert (= (and d!80254 (not res!124962)) b!273947))

(declare-fun m!349295 () Bool)

(assert (=> b!273946 m!349295))

(declare-fun m!349297 () Bool)

(assert (=> b!273946 m!349297))

(assert (=> b!273946 m!349295))

(assert (=> b!273946 m!349297))

(declare-fun m!349299 () Bool)

(assert (=> b!273946 m!349299))

(declare-fun m!349301 () Bool)

(assert (=> b!273947 m!349301))

(assert (=> b!273947 m!348961))

(declare-fun m!349303 () Bool)

(assert (=> b!273945 m!349303))

(declare-fun m!349305 () Bool)

(assert (=> b!273945 m!349305))

(assert (=> b!273632 d!80254))

(declare-fun d!80256 () Bool)

(assert (=> d!80256 (isPrefix!401 lt!113327 (++!1010 lt!113327 lt!113343))))

(declare-fun lt!113514 () Unit!4998)

(declare-fun choose!2473 (List!3848 List!3848) Unit!4998)

(assert (=> d!80256 (= lt!113514 (choose!2473 lt!113327 lt!113343))))

(assert (=> d!80256 (= (lemmaConcatTwoListThenFirstIsPrefix!296 lt!113327 lt!113343) lt!113514)))

(declare-fun bs!30742 () Bool)

(assert (= bs!30742 d!80256))

(assert (=> bs!30742 m!348909))

(assert (=> bs!30742 m!348909))

(declare-fun m!349307 () Bool)

(assert (=> bs!30742 m!349307))

(declare-fun m!349309 () Bool)

(assert (=> bs!30742 m!349309))

(assert (=> b!273632 d!80256))

(declare-fun d!80258 () Bool)

(assert (=> d!80258 (= (isEmpty!2451 tokens!465) ((_ is Nil!3840) tokens!465))))

(assert (=> b!273632 d!80258))

(declare-fun d!80260 () Bool)

(declare-fun e!170221 () Bool)

(assert (=> d!80260 e!170221))

(declare-fun res!124996 () Bool)

(assert (=> d!80260 (=> res!124996 e!170221)))

(assert (=> d!80260 (= res!124996 (isEmpty!2451 tokens!465))))

(declare-fun lt!113564 () Unit!4998)

(declare-fun choose!2474 (LexerInterface!619 List!3849 List!3850 Token!1210) Unit!4998)

(assert (=> d!80260 (= lt!113564 (choose!2474 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!80260 (not (isEmpty!2449 rules!1920))))

(assert (=> d!80260 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!158 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!113564)))

(declare-fun b!273999 () Bool)

(declare-fun e!170222 () Bool)

(assert (=> b!273999 (= e!170221 e!170222)))

(declare-fun res!124997 () Bool)

(assert (=> b!273999 (=> (not res!124997) (not e!170222))))

(assert (=> b!273999 (= res!124997 (isDefined!663 (maxPrefix!337 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!274000 () Bool)

(assert (=> b!274000 (= e!170222 (= (_1!2375 (get!1276 (maxPrefix!337 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!892 tokens!465)))))

(assert (= (and d!80260 (not res!124996)) b!273999))

(assert (= (and b!273999 res!124997) b!274000))

(assert (=> d!80260 m!348925))

(declare-fun m!349409 () Bool)

(assert (=> d!80260 m!349409))

(assert (=> d!80260 m!348941))

(assert (=> b!273999 m!348887))

(assert (=> b!273999 m!348887))

(declare-fun m!349411 () Bool)

(assert (=> b!273999 m!349411))

(assert (=> b!273999 m!349411))

(declare-fun m!349413 () Bool)

(assert (=> b!273999 m!349413))

(assert (=> b!274000 m!348887))

(assert (=> b!274000 m!348887))

(assert (=> b!274000 m!349411))

(assert (=> b!274000 m!349411))

(declare-fun m!349415 () Bool)

(assert (=> b!274000 m!349415))

(assert (=> b!274000 m!348843))

(assert (=> b!273632 d!80260))

(declare-fun d!80278 () Bool)

(assert (=> d!80278 (= lt!113343 (_2!2375 lt!113322))))

(declare-fun lt!113567 () Unit!4998)

(declare-fun choose!2475 (List!3848 List!3848 List!3848 List!3848 List!3848) Unit!4998)

(assert (=> d!80278 (= lt!113567 (choose!2475 lt!113327 lt!113343 lt!113327 (_2!2375 lt!113322) lt!113329))))

(assert (=> d!80278 (isPrefix!401 lt!113327 lt!113329)))

(assert (=> d!80278 (= (lemmaSamePrefixThenSameSuffix!202 lt!113327 lt!113343 lt!113327 (_2!2375 lt!113322) lt!113329) lt!113567)))

(declare-fun bs!30746 () Bool)

(assert (= bs!30746 d!80278))

(declare-fun m!349417 () Bool)

(assert (=> bs!30746 m!349417))

(declare-fun m!349419 () Bool)

(assert (=> bs!30746 m!349419))

(assert (=> b!273632 d!80278))

(declare-fun d!80280 () Bool)

(assert (=> d!80280 (= (get!1276 (maxPrefix!337 thiss!17480 rules!1920 lt!113329)) (v!14696 (maxPrefix!337 thiss!17480 rules!1920 lt!113329)))))

(assert (=> b!273632 d!80280))

(declare-fun d!80282 () Bool)

(assert (=> d!80282 (= (isEmpty!2451 (t!38872 tokens!465)) ((_ is Nil!3840) (t!38872 tokens!465)))))

(assert (=> b!273632 d!80282))

(declare-fun b!274079 () Bool)

(declare-fun res!125060 () Bool)

(declare-fun e!170266 () Bool)

(assert (=> b!274079 (=> (not res!125060) (not e!170266))))

(declare-fun lt!113608 () Option!820)

(assert (=> b!274079 (= res!125060 (= (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113608)))) (originalCharacters!776 (_1!2375 (get!1276 lt!113608)))))))

(declare-fun d!80284 () Bool)

(declare-fun e!170268 () Bool)

(assert (=> d!80284 e!170268))

(declare-fun res!125057 () Bool)

(assert (=> d!80284 (=> res!125057 e!170268)))

(declare-fun isEmpty!2457 (Option!820) Bool)

(assert (=> d!80284 (= res!125057 (isEmpty!2457 lt!113608))))

(declare-fun e!170267 () Option!820)

(assert (=> d!80284 (= lt!113608 e!170267)))

(declare-fun c!51976 () Bool)

(assert (=> d!80284 (= c!51976 (and ((_ is Cons!3839) rules!1920) ((_ is Nil!3839) (t!38871 rules!1920))))))

(declare-fun lt!113607 () Unit!4998)

(declare-fun lt!113610 () Unit!4998)

(assert (=> d!80284 (= lt!113607 lt!113610)))

(assert (=> d!80284 (isPrefix!401 lt!113329 lt!113329)))

(declare-fun lemmaIsPrefixRefl!211 (List!3848 List!3848) Unit!4998)

(assert (=> d!80284 (= lt!113610 (lemmaIsPrefixRefl!211 lt!113329 lt!113329))))

(declare-fun rulesValidInductive!206 (LexerInterface!619 List!3849) Bool)

(assert (=> d!80284 (rulesValidInductive!206 thiss!17480 rules!1920)))

(assert (=> d!80284 (= (maxPrefix!337 thiss!17480 rules!1920 lt!113329) lt!113608)))

(declare-fun b!274080 () Bool)

(declare-fun res!125056 () Bool)

(assert (=> b!274080 (=> (not res!125056) (not e!170266))))

(declare-fun apply!784 (TokenValueInjection!1282 BalanceConc!2584) TokenValue!755)

(assert (=> b!274080 (= res!125056 (= (value!25206 (_1!2375 (get!1276 lt!113608))) (apply!784 (transformation!733 (rule!1320 (_1!2375 (get!1276 lt!113608)))) (seqFromList!833 (originalCharacters!776 (_1!2375 (get!1276 lt!113608)))))))))

(declare-fun b!274081 () Bool)

(declare-fun res!125059 () Bool)

(assert (=> b!274081 (=> (not res!125059) (not e!170266))))

(assert (=> b!274081 (= res!125059 (matchR!279 (regex!733 (rule!1320 (_1!2375 (get!1276 lt!113608)))) (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113608))))))))

(declare-fun b!274082 () Bool)

(declare-fun lt!113611 () Option!820)

(declare-fun lt!113609 () Option!820)

(assert (=> b!274082 (= e!170267 (ite (and ((_ is None!819) lt!113611) ((_ is None!819) lt!113609)) None!819 (ite ((_ is None!819) lt!113609) lt!113611 (ite ((_ is None!819) lt!113611) lt!113609 (ite (>= (size!3065 (_1!2375 (v!14696 lt!113611))) (size!3065 (_1!2375 (v!14696 lt!113609)))) lt!113611 lt!113609)))))))

(declare-fun call!15066 () Option!820)

(assert (=> b!274082 (= lt!113611 call!15066)))

(assert (=> b!274082 (= lt!113609 (maxPrefix!337 thiss!17480 (t!38871 rules!1920) lt!113329))))

(declare-fun b!274083 () Bool)

(declare-fun res!125055 () Bool)

(assert (=> b!274083 (=> (not res!125055) (not e!170266))))

(assert (=> b!274083 (= res!125055 (= (++!1010 (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113608)))) (_2!2375 (get!1276 lt!113608))) lt!113329))))

(declare-fun b!274084 () Bool)

(declare-fun res!125058 () Bool)

(assert (=> b!274084 (=> (not res!125058) (not e!170266))))

(assert (=> b!274084 (= res!125058 (< (size!3069 (_2!2375 (get!1276 lt!113608))) (size!3069 lt!113329)))))

(declare-fun b!274085 () Bool)

(assert (=> b!274085 (= e!170267 call!15066)))

(declare-fun b!274086 () Bool)

(assert (=> b!274086 (= e!170268 e!170266)))

(declare-fun res!125054 () Bool)

(assert (=> b!274086 (=> (not res!125054) (not e!170266))))

(assert (=> b!274086 (= res!125054 (isDefined!663 lt!113608))))

(declare-fun b!274087 () Bool)

(declare-fun contains!729 (List!3849 Rule!1266) Bool)

(assert (=> b!274087 (= e!170266 (contains!729 rules!1920 (rule!1320 (_1!2375 (get!1276 lt!113608)))))))

(declare-fun bm!15061 () Bool)

(declare-fun maxPrefixOneRule!145 (LexerInterface!619 Rule!1266 List!3848) Option!820)

(assert (=> bm!15061 (= call!15066 (maxPrefixOneRule!145 thiss!17480 (h!9236 rules!1920) lt!113329))))

(assert (= (and d!80284 c!51976) b!274085))

(assert (= (and d!80284 (not c!51976)) b!274082))

(assert (= (or b!274085 b!274082) bm!15061))

(assert (= (and d!80284 (not res!125057)) b!274086))

(assert (= (and b!274086 res!125054) b!274079))

(assert (= (and b!274079 res!125060) b!274084))

(assert (= (and b!274084 res!125058) b!274083))

(assert (= (and b!274083 res!125055) b!274080))

(assert (= (and b!274080 res!125056) b!274081))

(assert (= (and b!274081 res!125059) b!274087))

(declare-fun m!349553 () Bool)

(assert (=> d!80284 m!349553))

(declare-fun m!349555 () Bool)

(assert (=> d!80284 m!349555))

(declare-fun m!349557 () Bool)

(assert (=> d!80284 m!349557))

(declare-fun m!349559 () Bool)

(assert (=> d!80284 m!349559))

(declare-fun m!349561 () Bool)

(assert (=> b!274083 m!349561))

(declare-fun m!349563 () Bool)

(assert (=> b!274083 m!349563))

(assert (=> b!274083 m!349563))

(declare-fun m!349565 () Bool)

(assert (=> b!274083 m!349565))

(assert (=> b!274083 m!349565))

(declare-fun m!349567 () Bool)

(assert (=> b!274083 m!349567))

(declare-fun m!349569 () Bool)

(assert (=> b!274082 m!349569))

(declare-fun m!349571 () Bool)

(assert (=> b!274086 m!349571))

(assert (=> b!274080 m!349561))

(declare-fun m!349573 () Bool)

(assert (=> b!274080 m!349573))

(assert (=> b!274080 m!349573))

(declare-fun m!349575 () Bool)

(assert (=> b!274080 m!349575))

(assert (=> b!274081 m!349561))

(assert (=> b!274081 m!349563))

(assert (=> b!274081 m!349563))

(assert (=> b!274081 m!349565))

(assert (=> b!274081 m!349565))

(declare-fun m!349577 () Bool)

(assert (=> b!274081 m!349577))

(assert (=> b!274084 m!349561))

(declare-fun m!349579 () Bool)

(assert (=> b!274084 m!349579))

(declare-fun m!349581 () Bool)

(assert (=> b!274084 m!349581))

(assert (=> b!274079 m!349561))

(assert (=> b!274079 m!349563))

(assert (=> b!274079 m!349563))

(assert (=> b!274079 m!349565))

(declare-fun m!349583 () Bool)

(assert (=> bm!15061 m!349583))

(assert (=> b!274087 m!349561))

(declare-fun m!349585 () Bool)

(assert (=> b!274087 m!349585))

(assert (=> b!273632 d!80284))

(declare-fun b!274088 () Bool)

(declare-fun res!125067 () Bool)

(declare-fun e!170269 () Bool)

(assert (=> b!274088 (=> (not res!125067) (not e!170269))))

(declare-fun lt!113613 () Option!820)

(assert (=> b!274088 (= res!125067 (= (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113613)))) (originalCharacters!776 (_1!2375 (get!1276 lt!113613)))))))

(declare-fun d!80324 () Bool)

(declare-fun e!170271 () Bool)

(assert (=> d!80324 e!170271))

(declare-fun res!125064 () Bool)

(assert (=> d!80324 (=> res!125064 e!170271)))

(assert (=> d!80324 (= res!125064 (isEmpty!2457 lt!113613))))

(declare-fun e!170270 () Option!820)

(assert (=> d!80324 (= lt!113613 e!170270)))

(declare-fun c!51977 () Bool)

(assert (=> d!80324 (= c!51977 (and ((_ is Cons!3839) rules!1920) ((_ is Nil!3839) (t!38871 rules!1920))))))

(declare-fun lt!113612 () Unit!4998)

(declare-fun lt!113615 () Unit!4998)

(assert (=> d!80324 (= lt!113612 lt!113615)))

(assert (=> d!80324 (isPrefix!401 lt!113343 lt!113343)))

(assert (=> d!80324 (= lt!113615 (lemmaIsPrefixRefl!211 lt!113343 lt!113343))))

(assert (=> d!80324 (rulesValidInductive!206 thiss!17480 rules!1920)))

(assert (=> d!80324 (= (maxPrefix!337 thiss!17480 rules!1920 lt!113343) lt!113613)))

(declare-fun b!274089 () Bool)

(declare-fun res!125063 () Bool)

(assert (=> b!274089 (=> (not res!125063) (not e!170269))))

(assert (=> b!274089 (= res!125063 (= (value!25206 (_1!2375 (get!1276 lt!113613))) (apply!784 (transformation!733 (rule!1320 (_1!2375 (get!1276 lt!113613)))) (seqFromList!833 (originalCharacters!776 (_1!2375 (get!1276 lt!113613)))))))))

(declare-fun b!274090 () Bool)

(declare-fun res!125066 () Bool)

(assert (=> b!274090 (=> (not res!125066) (not e!170269))))

(assert (=> b!274090 (= res!125066 (matchR!279 (regex!733 (rule!1320 (_1!2375 (get!1276 lt!113613)))) (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113613))))))))

(declare-fun b!274091 () Bool)

(declare-fun lt!113616 () Option!820)

(declare-fun lt!113614 () Option!820)

(assert (=> b!274091 (= e!170270 (ite (and ((_ is None!819) lt!113616) ((_ is None!819) lt!113614)) None!819 (ite ((_ is None!819) lt!113614) lt!113616 (ite ((_ is None!819) lt!113616) lt!113614 (ite (>= (size!3065 (_1!2375 (v!14696 lt!113616))) (size!3065 (_1!2375 (v!14696 lt!113614)))) lt!113616 lt!113614)))))))

(declare-fun call!15067 () Option!820)

(assert (=> b!274091 (= lt!113616 call!15067)))

(assert (=> b!274091 (= lt!113614 (maxPrefix!337 thiss!17480 (t!38871 rules!1920) lt!113343))))

(declare-fun b!274092 () Bool)

(declare-fun res!125062 () Bool)

(assert (=> b!274092 (=> (not res!125062) (not e!170269))))

(assert (=> b!274092 (= res!125062 (= (++!1010 (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113613)))) (_2!2375 (get!1276 lt!113613))) lt!113343))))

(declare-fun b!274093 () Bool)

(declare-fun res!125065 () Bool)

(assert (=> b!274093 (=> (not res!125065) (not e!170269))))

(assert (=> b!274093 (= res!125065 (< (size!3069 (_2!2375 (get!1276 lt!113613))) (size!3069 lt!113343)))))

(declare-fun b!274094 () Bool)

(assert (=> b!274094 (= e!170270 call!15067)))

(declare-fun b!274095 () Bool)

(assert (=> b!274095 (= e!170271 e!170269)))

(declare-fun res!125061 () Bool)

(assert (=> b!274095 (=> (not res!125061) (not e!170269))))

(assert (=> b!274095 (= res!125061 (isDefined!663 lt!113613))))

(declare-fun b!274096 () Bool)

(assert (=> b!274096 (= e!170269 (contains!729 rules!1920 (rule!1320 (_1!2375 (get!1276 lt!113613)))))))

(declare-fun bm!15062 () Bool)

(assert (=> bm!15062 (= call!15067 (maxPrefixOneRule!145 thiss!17480 (h!9236 rules!1920) lt!113343))))

(assert (= (and d!80324 c!51977) b!274094))

(assert (= (and d!80324 (not c!51977)) b!274091))

(assert (= (or b!274094 b!274091) bm!15062))

(assert (= (and d!80324 (not res!125064)) b!274095))

(assert (= (and b!274095 res!125061) b!274088))

(assert (= (and b!274088 res!125067) b!274093))

(assert (= (and b!274093 res!125065) b!274092))

(assert (= (and b!274092 res!125062) b!274089))

(assert (= (and b!274089 res!125063) b!274090))

(assert (= (and b!274090 res!125066) b!274096))

(declare-fun m!349587 () Bool)

(assert (=> d!80324 m!349587))

(declare-fun m!349589 () Bool)

(assert (=> d!80324 m!349589))

(declare-fun m!349591 () Bool)

(assert (=> d!80324 m!349591))

(assert (=> d!80324 m!349559))

(declare-fun m!349593 () Bool)

(assert (=> b!274092 m!349593))

(declare-fun m!349595 () Bool)

(assert (=> b!274092 m!349595))

(assert (=> b!274092 m!349595))

(declare-fun m!349597 () Bool)

(assert (=> b!274092 m!349597))

(assert (=> b!274092 m!349597))

(declare-fun m!349599 () Bool)

(assert (=> b!274092 m!349599))

(declare-fun m!349601 () Bool)

(assert (=> b!274091 m!349601))

(declare-fun m!349603 () Bool)

(assert (=> b!274095 m!349603))

(assert (=> b!274089 m!349593))

(declare-fun m!349605 () Bool)

(assert (=> b!274089 m!349605))

(assert (=> b!274089 m!349605))

(declare-fun m!349607 () Bool)

(assert (=> b!274089 m!349607))

(assert (=> b!274090 m!349593))

(assert (=> b!274090 m!349595))

(assert (=> b!274090 m!349595))

(assert (=> b!274090 m!349597))

(assert (=> b!274090 m!349597))

(declare-fun m!349609 () Bool)

(assert (=> b!274090 m!349609))

(assert (=> b!274093 m!349593))

(declare-fun m!349611 () Bool)

(assert (=> b!274093 m!349611))

(declare-fun m!349613 () Bool)

(assert (=> b!274093 m!349613))

(assert (=> b!274088 m!349593))

(assert (=> b!274088 m!349595))

(assert (=> b!274088 m!349595))

(assert (=> b!274088 m!349597))

(declare-fun m!349615 () Bool)

(assert (=> bm!15062 m!349615))

(assert (=> b!274096 m!349593))

(declare-fun m!349617 () Bool)

(assert (=> b!274096 m!349617))

(assert (=> b!273632 d!80324))

(declare-fun b!274107 () Bool)

(declare-fun e!170278 () Bool)

(declare-fun inv!15 (TokenValue!755) Bool)

(assert (=> b!274107 (= e!170278 (inv!15 (value!25206 (h!9237 tokens!465))))))

(declare-fun b!274108 () Bool)

(declare-fun e!170279 () Bool)

(declare-fun inv!16 (TokenValue!755) Bool)

(assert (=> b!274108 (= e!170279 (inv!16 (value!25206 (h!9237 tokens!465))))))

(declare-fun b!274109 () Bool)

(declare-fun res!125070 () Bool)

(assert (=> b!274109 (=> res!125070 e!170278)))

(assert (=> b!274109 (= res!125070 (not ((_ is IntegerValue!2267) (value!25206 (h!9237 tokens!465)))))))

(declare-fun e!170280 () Bool)

(assert (=> b!274109 (= e!170280 e!170278)))

(declare-fun d!80326 () Bool)

(declare-fun c!51982 () Bool)

(assert (=> d!80326 (= c!51982 ((_ is IntegerValue!2265) (value!25206 (h!9237 tokens!465))))))

(assert (=> d!80326 (= (inv!21 (value!25206 (h!9237 tokens!465))) e!170279)))

(declare-fun b!274110 () Bool)

(assert (=> b!274110 (= e!170279 e!170280)))

(declare-fun c!51983 () Bool)

(assert (=> b!274110 (= c!51983 ((_ is IntegerValue!2266) (value!25206 (h!9237 tokens!465))))))

(declare-fun b!274111 () Bool)

(declare-fun inv!17 (TokenValue!755) Bool)

(assert (=> b!274111 (= e!170280 (inv!17 (value!25206 (h!9237 tokens!465))))))

(assert (= (and d!80326 c!51982) b!274108))

(assert (= (and d!80326 (not c!51982)) b!274110))

(assert (= (and b!274110 c!51983) b!274111))

(assert (= (and b!274110 (not c!51983)) b!274109))

(assert (= (and b!274109 (not res!125070)) b!274107))

(declare-fun m!349619 () Bool)

(assert (=> b!274107 m!349619))

(declare-fun m!349621 () Bool)

(assert (=> b!274108 m!349621))

(declare-fun m!349623 () Bool)

(assert (=> b!274111 m!349623))

(assert (=> b!273633 d!80326))

(declare-fun d!80328 () Bool)

(declare-fun res!125075 () Bool)

(declare-fun e!170285 () Bool)

(assert (=> d!80328 (=> res!125075 e!170285)))

(assert (=> d!80328 (= res!125075 ((_ is Nil!3840) tokens!465))))

(assert (=> d!80328 (= (forall!972 tokens!465 lambda!9279) e!170285)))

(declare-fun b!274116 () Bool)

(declare-fun e!170286 () Bool)

(assert (=> b!274116 (= e!170285 e!170286)))

(declare-fun res!125076 () Bool)

(assert (=> b!274116 (=> (not res!125076) (not e!170286))))

(declare-fun dynLambda!1986 (Int Token!1210) Bool)

(assert (=> b!274116 (= res!125076 (dynLambda!1986 lambda!9279 (h!9237 tokens!465)))))

(declare-fun b!274117 () Bool)

(assert (=> b!274117 (= e!170286 (forall!972 (t!38872 tokens!465) lambda!9279))))

(assert (= (and d!80328 (not res!125075)) b!274116))

(assert (= (and b!274116 res!125076) b!274117))

(declare-fun b_lambda!8801 () Bool)

(assert (=> (not b_lambda!8801) (not b!274116)))

(declare-fun m!349625 () Bool)

(assert (=> b!274116 m!349625))

(declare-fun m!349627 () Bool)

(assert (=> b!274117 m!349627))

(assert (=> b!273654 d!80328))

(declare-fun bs!30753 () Bool)

(declare-fun d!80330 () Bool)

(assert (= bs!30753 (and d!80330 b!273643)))

(declare-fun lambda!9308 () Int)

(assert (=> bs!30753 (= lambda!9308 lambda!9280)))

(declare-fun bs!30754 () Bool)

(assert (= bs!30754 (and d!80330 d!80204)))

(assert (=> bs!30754 (not (= lambda!9308 lambda!9290))))

(declare-fun bs!30755 () Bool)

(assert (= bs!30755 (and d!80330 b!273799)))

(assert (=> bs!30755 (= lambda!9308 lambda!9291)))

(declare-fun bs!30756 () Bool)

(assert (= bs!30756 (and d!80330 b!273857)))

(assert (=> bs!30756 (= lambda!9308 lambda!9297)))

(declare-fun bs!30757 () Bool)

(assert (= bs!30757 (and d!80330 b!273654)))

(assert (=> bs!30757 (not (= lambda!9308 lambda!9279))))

(declare-fun b!274133 () Bool)

(declare-fun e!170302 () Bool)

(assert (=> b!274133 (= e!170302 true)))

(declare-fun b!274132 () Bool)

(declare-fun e!170301 () Bool)

(assert (=> b!274132 (= e!170301 e!170302)))

(declare-fun b!274131 () Bool)

(declare-fun e!170300 () Bool)

(assert (=> b!274131 (= e!170300 e!170301)))

(assert (=> d!80330 e!170300))

(assert (= b!274132 b!274133))

(assert (= b!274131 b!274132))

(assert (= (and d!80330 ((_ is Cons!3839) rules!1920)) b!274131))

(assert (=> b!274133 (< (dynLambda!1981 order!2973 (toValue!1476 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9308))))

(assert (=> b!274133 (< (dynLambda!1983 order!2977 (toChars!1335 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9308))))

(assert (=> d!80330 true))

(declare-fun e!170295 () Bool)

(assert (=> d!80330 e!170295))

(declare-fun res!125085 () Bool)

(assert (=> d!80330 (=> (not res!125085) (not e!170295))))

(declare-fun lt!113622 () Bool)

(assert (=> d!80330 (= res!125085 (= lt!113622 (forall!972 (list!1581 lt!113341) lambda!9308)))))

(declare-fun forall!974 (BalanceConc!2586 Int) Bool)

(assert (=> d!80330 (= lt!113622 (forall!974 lt!113341 lambda!9308))))

(assert (=> d!80330 (not (isEmpty!2449 rules!1920))))

(assert (=> d!80330 (= (rulesProduceEachTokenIndividually!411 thiss!17480 rules!1920 lt!113341) lt!113622)))

(declare-fun b!274126 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!231 (LexerInterface!619 List!3849 List!3850) Bool)

(assert (=> b!274126 (= e!170295 (= lt!113622 (rulesProduceEachTokenIndividuallyList!231 thiss!17480 rules!1920 (list!1581 lt!113341))))))

(assert (= (and d!80330 res!125085) b!274126))

(assert (=> d!80330 m!349097))

(assert (=> d!80330 m!349097))

(declare-fun m!349641 () Bool)

(assert (=> d!80330 m!349641))

(declare-fun m!349643 () Bool)

(assert (=> d!80330 m!349643))

(assert (=> d!80330 m!348941))

(assert (=> b!274126 m!349097))

(assert (=> b!274126 m!349097))

(declare-fun m!349645 () Bool)

(assert (=> b!274126 m!349645))

(assert (=> b!273636 d!80330))

(declare-fun d!80336 () Bool)

(declare-fun fromListB!324 (List!3850) BalanceConc!2586)

(assert (=> d!80336 (= (seqFromList!834 tokens!465) (fromListB!324 tokens!465))))

(declare-fun bs!30758 () Bool)

(assert (= bs!30758 d!80336))

(declare-fun m!349647 () Bool)

(assert (=> bs!30758 m!349647))

(assert (=> b!273636 d!80336))

(declare-fun d!80338 () Bool)

(declare-fun res!125102 () Bool)

(declare-fun e!170315 () Bool)

(assert (=> d!80338 (=> res!125102 e!170315)))

(assert (=> d!80338 (= res!125102 (not ((_ is Cons!3839) rules!1920)))))

(assert (=> d!80338 (= (sepAndNonSepRulesDisjointChars!322 rules!1920 rules!1920) e!170315)))

(declare-fun b!274146 () Bool)

(declare-fun e!170316 () Bool)

(assert (=> b!274146 (= e!170315 e!170316)))

(declare-fun res!125103 () Bool)

(assert (=> b!274146 (=> (not res!125103) (not e!170316))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!119 (Rule!1266 List!3849) Bool)

(assert (=> b!274146 (= res!125103 (ruleDisjointCharsFromAllFromOtherType!119 (h!9236 rules!1920) rules!1920))))

(declare-fun b!274147 () Bool)

(assert (=> b!274147 (= e!170316 (sepAndNonSepRulesDisjointChars!322 rules!1920 (t!38871 rules!1920)))))

(assert (= (and d!80338 (not res!125102)) b!274146))

(assert (= (and b!274146 res!125103) b!274147))

(declare-fun m!349653 () Bool)

(assert (=> b!274146 m!349653))

(declare-fun m!349655 () Bool)

(assert (=> b!274147 m!349655))

(assert (=> b!273635 d!80338))

(declare-fun b!274176 () Bool)

(declare-fun e!170335 () Bool)

(declare-fun derivativeStep!134 (Regex!957 C!2836) Regex!957)

(assert (=> b!274176 (= e!170335 (matchR!279 (derivativeStep!134 (regex!733 (rule!1320 (h!9237 tokens!465))) (head!894 lt!113327)) (tail!484 lt!113327)))))

(declare-fun bm!15065 () Bool)

(declare-fun call!15070 () Bool)

(assert (=> bm!15065 (= call!15070 (isEmpty!2452 lt!113327))))

(declare-fun b!274177 () Bool)

(declare-fun e!170332 () Bool)

(assert (=> b!274177 (= e!170332 (not (= (head!894 lt!113327) (c!51885 (regex!733 (rule!1320 (h!9237 tokens!465)))))))))

(declare-fun b!274178 () Bool)

(declare-fun e!170337 () Bool)

(declare-fun lt!113625 () Bool)

(assert (=> b!274178 (= e!170337 (= lt!113625 call!15070))))

(declare-fun b!274179 () Bool)

(declare-fun res!125122 () Bool)

(declare-fun e!170336 () Bool)

(assert (=> b!274179 (=> res!125122 e!170336)))

(assert (=> b!274179 (= res!125122 (not ((_ is ElementMatch!957) (regex!733 (rule!1320 (h!9237 tokens!465))))))))

(declare-fun e!170331 () Bool)

(assert (=> b!274179 (= e!170331 e!170336)))

(declare-fun b!274180 () Bool)

(declare-fun nullable!168 (Regex!957) Bool)

(assert (=> b!274180 (= e!170335 (nullable!168 (regex!733 (rule!1320 (h!9237 tokens!465)))))))

(declare-fun b!274181 () Bool)

(declare-fun res!125126 () Bool)

(assert (=> b!274181 (=> res!125126 e!170336)))

(declare-fun e!170334 () Bool)

(assert (=> b!274181 (= res!125126 e!170334)))

(declare-fun res!125127 () Bool)

(assert (=> b!274181 (=> (not res!125127) (not e!170334))))

(assert (=> b!274181 (= res!125127 lt!113625)))

(declare-fun b!274182 () Bool)

(declare-fun res!125123 () Bool)

(assert (=> b!274182 (=> res!125123 e!170332)))

(assert (=> b!274182 (= res!125123 (not (isEmpty!2452 (tail!484 lt!113327))))))

(declare-fun b!274183 () Bool)

(assert (=> b!274183 (= e!170334 (= (head!894 lt!113327) (c!51885 (regex!733 (rule!1320 (h!9237 tokens!465))))))))

(declare-fun b!274184 () Bool)

(declare-fun res!125124 () Bool)

(assert (=> b!274184 (=> (not res!125124) (not e!170334))))

(assert (=> b!274184 (= res!125124 (not call!15070))))

(declare-fun b!274185 () Bool)

(declare-fun e!170333 () Bool)

(assert (=> b!274185 (= e!170333 e!170332)))

(declare-fun res!125121 () Bool)

(assert (=> b!274185 (=> res!125121 e!170332)))

(assert (=> b!274185 (= res!125121 call!15070)))

(declare-fun d!80342 () Bool)

(assert (=> d!80342 e!170337))

(declare-fun c!51990 () Bool)

(assert (=> d!80342 (= c!51990 ((_ is EmptyExpr!957) (regex!733 (rule!1320 (h!9237 tokens!465)))))))

(assert (=> d!80342 (= lt!113625 e!170335)))

(declare-fun c!51991 () Bool)

(assert (=> d!80342 (= c!51991 (isEmpty!2452 lt!113327))))

(declare-fun validRegex!243 (Regex!957) Bool)

(assert (=> d!80342 (validRegex!243 (regex!733 (rule!1320 (h!9237 tokens!465))))))

(assert (=> d!80342 (= (matchR!279 (regex!733 (rule!1320 (h!9237 tokens!465))) lt!113327) lt!113625)))

(declare-fun b!274186 () Bool)

(assert (=> b!274186 (= e!170336 e!170333)))

(declare-fun res!125120 () Bool)

(assert (=> b!274186 (=> (not res!125120) (not e!170333))))

(assert (=> b!274186 (= res!125120 (not lt!113625))))

(declare-fun b!274187 () Bool)

(assert (=> b!274187 (= e!170331 (not lt!113625))))

(declare-fun b!274188 () Bool)

(declare-fun res!125125 () Bool)

(assert (=> b!274188 (=> (not res!125125) (not e!170334))))

(assert (=> b!274188 (= res!125125 (isEmpty!2452 (tail!484 lt!113327)))))

(declare-fun b!274189 () Bool)

(assert (=> b!274189 (= e!170337 e!170331)))

(declare-fun c!51992 () Bool)

(assert (=> b!274189 (= c!51992 ((_ is EmptyLang!957) (regex!733 (rule!1320 (h!9237 tokens!465)))))))

(assert (= (and d!80342 c!51991) b!274180))

(assert (= (and d!80342 (not c!51991)) b!274176))

(assert (= (and d!80342 c!51990) b!274178))

(assert (= (and d!80342 (not c!51990)) b!274189))

(assert (= (and b!274189 c!51992) b!274187))

(assert (= (and b!274189 (not c!51992)) b!274179))

(assert (= (and b!274179 (not res!125122)) b!274181))

(assert (= (and b!274181 res!125127) b!274184))

(assert (= (and b!274184 res!125124) b!274188))

(assert (= (and b!274188 res!125125) b!274183))

(assert (= (and b!274181 (not res!125126)) b!274186))

(assert (= (and b!274186 res!125120) b!274185))

(assert (= (and b!274185 (not res!125121)) b!274182))

(assert (= (and b!274182 (not res!125123)) b!274177))

(assert (= (or b!274178 b!274184 b!274185) bm!15065))

(assert (=> b!274182 m!349295))

(assert (=> b!274182 m!349295))

(declare-fun m!349657 () Bool)

(assert (=> b!274182 m!349657))

(assert (=> b!274188 m!349295))

(assert (=> b!274188 m!349295))

(assert (=> b!274188 m!349657))

(declare-fun m!349659 () Bool)

(assert (=> bm!15065 m!349659))

(assert (=> d!80342 m!349659))

(declare-fun m!349661 () Bool)

(assert (=> d!80342 m!349661))

(declare-fun m!349663 () Bool)

(assert (=> b!274180 m!349663))

(assert (=> b!274177 m!349303))

(assert (=> b!274183 m!349303))

(assert (=> b!274176 m!349303))

(assert (=> b!274176 m!349303))

(declare-fun m!349665 () Bool)

(assert (=> b!274176 m!349665))

(assert (=> b!274176 m!349295))

(assert (=> b!274176 m!349665))

(assert (=> b!274176 m!349295))

(declare-fun m!349667 () Bool)

(assert (=> b!274176 m!349667))

(assert (=> b!273639 d!80342))

(declare-fun d!80344 () Bool)

(declare-fun res!125132 () Bool)

(declare-fun e!170340 () Bool)

(assert (=> d!80344 (=> (not res!125132) (not e!170340))))

(assert (=> d!80344 (= res!125132 (not (isEmpty!2452 (originalCharacters!776 (h!9237 tokens!465)))))))

(assert (=> d!80344 (= (inv!4756 (h!9237 tokens!465)) e!170340)))

(declare-fun b!274194 () Bool)

(declare-fun res!125133 () Bool)

(assert (=> b!274194 (=> (not res!125133) (not e!170340))))

(declare-fun dynLambda!1987 (Int TokenValue!755) BalanceConc!2584)

(assert (=> b!274194 (= res!125133 (= (originalCharacters!776 (h!9237 tokens!465)) (list!1577 (dynLambda!1987 (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (value!25206 (h!9237 tokens!465))))))))

(declare-fun b!274195 () Bool)

(assert (=> b!274195 (= e!170340 (= (size!3065 (h!9237 tokens!465)) (size!3069 (originalCharacters!776 (h!9237 tokens!465)))))))

(assert (= (and d!80344 res!125132) b!274194))

(assert (= (and b!274194 res!125133) b!274195))

(declare-fun b_lambda!8805 () Bool)

(assert (=> (not b_lambda!8805) (not b!274194)))

(declare-fun t!38908 () Bool)

(declare-fun tb!15713 () Bool)

(assert (=> (and b!273637 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465))))) t!38908) tb!15713))

(declare-fun b!274200 () Bool)

(declare-fun e!170343 () Bool)

(declare-fun tp!103162 () Bool)

(declare-fun inv!4759 (Conc!1288) Bool)

(assert (=> b!274200 (= e!170343 (and (inv!4759 (c!51884 (dynLambda!1987 (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (value!25206 (h!9237 tokens!465))))) tp!103162))))

(declare-fun result!19346 () Bool)

(declare-fun inv!4760 (BalanceConc!2584) Bool)

(assert (=> tb!15713 (= result!19346 (and (inv!4760 (dynLambda!1987 (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (value!25206 (h!9237 tokens!465)))) e!170343))))

(assert (= tb!15713 b!274200))

(declare-fun m!349669 () Bool)

(assert (=> b!274200 m!349669))

(declare-fun m!349671 () Bool)

(assert (=> tb!15713 m!349671))

(assert (=> b!274194 t!38908))

(declare-fun b_and!21993 () Bool)

(assert (= b_and!21959 (and (=> t!38908 result!19346) b_and!21993)))

(declare-fun tb!15715 () Bool)

(declare-fun t!38910 () Bool)

(assert (=> (and b!273630 (= (toChars!1335 (transformation!733 (h!9236 rules!1920))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465))))) t!38910) tb!15715))

(declare-fun result!19350 () Bool)

(assert (= result!19350 result!19346))

(assert (=> b!274194 t!38910))

(declare-fun b_and!21995 () Bool)

(assert (= b_and!21963 (and (=> t!38910 result!19350) b_and!21995)))

(declare-fun t!38912 () Bool)

(declare-fun tb!15717 () Bool)

(assert (=> (and b!273652 (= (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465))))) t!38912) tb!15717))

(declare-fun result!19352 () Bool)

(assert (= result!19352 result!19346))

(assert (=> b!274194 t!38912))

(declare-fun b_and!21997 () Bool)

(assert (= b_and!21967 (and (=> t!38912 result!19352) b_and!21997)))

(declare-fun m!349673 () Bool)

(assert (=> d!80344 m!349673))

(declare-fun m!349675 () Bool)

(assert (=> b!274194 m!349675))

(assert (=> b!274194 m!349675))

(declare-fun m!349677 () Bool)

(assert (=> b!274194 m!349677))

(declare-fun m!349679 () Bool)

(assert (=> b!274195 m!349679))

(assert (=> b!273638 d!80344))

(declare-fun d!80346 () Bool)

(assert (=> d!80346 (= (isEmpty!2452 (_2!2375 lt!113330)) ((_ is Nil!3838) (_2!2375 lt!113330)))))

(assert (=> b!273641 d!80346))

(declare-fun d!80348 () Bool)

(assert (=> d!80348 (= (get!1276 lt!113325) (v!14696 lt!113325))))

(assert (=> b!273644 d!80348))

(declare-fun d!80350 () Bool)

(assert (=> d!80350 (= (head!892 tokens!465) (h!9237 tokens!465))))

(assert (=> b!273644 d!80350))

(declare-fun d!80352 () Bool)

(assert (=> d!80352 (= (seqFromList!834 (t!38872 tokens!465)) (fromListB!324 (t!38872 tokens!465)))))

(declare-fun bs!30759 () Bool)

(assert (= bs!30759 d!80352))

(declare-fun m!349681 () Bool)

(assert (=> bs!30759 m!349681))

(assert (=> b!273645 d!80352))

(declare-fun d!80354 () Bool)

(assert (=> d!80354 (= (list!1577 (charsOf!378 separatorToken!170)) (list!1580 (c!51884 (charsOf!378 separatorToken!170))))))

(declare-fun bs!30760 () Bool)

(assert (= bs!30760 d!80354))

(declare-fun m!349683 () Bool)

(assert (=> bs!30760 m!349683))

(assert (=> b!273645 d!80354))

(declare-fun d!80356 () Bool)

(assert (=> d!80356 (= (list!1577 (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 (seqFromList!834 (t!38872 tokens!465)) separatorToken!170 0)) (list!1580 (c!51884 (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 (seqFromList!834 (t!38872 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!30761 () Bool)

(assert (= bs!30761 d!80356))

(declare-fun m!349685 () Bool)

(assert (=> bs!30761 m!349685))

(assert (=> b!273645 d!80356))

(declare-fun b!274201 () Bool)

(declare-fun e!170345 () List!3848)

(assert (=> b!274201 (= e!170345 lt!113334)))

(declare-fun e!170344 () Bool)

(declare-fun lt!113626 () List!3848)

(declare-fun b!274204 () Bool)

(assert (=> b!274204 (= e!170344 (or (not (= lt!113334 Nil!3838)) (= lt!113626 (++!1010 lt!113327 lt!113335))))))

(declare-fun b!274202 () Bool)

(assert (=> b!274202 (= e!170345 (Cons!3838 (h!9235 (++!1010 lt!113327 lt!113335)) (++!1010 (t!38870 (++!1010 lt!113327 lt!113335)) lt!113334)))))

(declare-fun d!80358 () Bool)

(assert (=> d!80358 e!170344))

(declare-fun res!125135 () Bool)

(assert (=> d!80358 (=> (not res!125135) (not e!170344))))

(assert (=> d!80358 (= res!125135 (= (content!555 lt!113626) ((_ map or) (content!555 (++!1010 lt!113327 lt!113335)) (content!555 lt!113334))))))

(assert (=> d!80358 (= lt!113626 e!170345)))

(declare-fun c!51993 () Bool)

(assert (=> d!80358 (= c!51993 ((_ is Nil!3838) (++!1010 lt!113327 lt!113335)))))

(assert (=> d!80358 (= (++!1010 (++!1010 lt!113327 lt!113335) lt!113334) lt!113626)))

(declare-fun b!274203 () Bool)

(declare-fun res!125134 () Bool)

(assert (=> b!274203 (=> (not res!125134) (not e!170344))))

(assert (=> b!274203 (= res!125134 (= (size!3069 lt!113626) (+ (size!3069 (++!1010 lt!113327 lt!113335)) (size!3069 lt!113334))))))

(assert (= (and d!80358 c!51993) b!274201))

(assert (= (and d!80358 (not c!51993)) b!274202))

(assert (= (and d!80358 res!125135) b!274203))

(assert (= (and b!274203 res!125134) b!274204))

(declare-fun m!349687 () Bool)

(assert (=> b!274202 m!349687))

(declare-fun m!349689 () Bool)

(assert (=> d!80358 m!349689))

(assert (=> d!80358 m!348895))

(declare-fun m!349691 () Bool)

(assert (=> d!80358 m!349691))

(assert (=> d!80358 m!348957))

(declare-fun m!349693 () Bool)

(assert (=> b!274203 m!349693))

(assert (=> b!274203 m!348895))

(declare-fun m!349695 () Bool)

(assert (=> b!274203 m!349695))

(assert (=> b!274203 m!348963))

(assert (=> b!273645 d!80358))

(declare-fun bs!30762 () Bool)

(declare-fun b!274211 () Bool)

(assert (= bs!30762 (and b!274211 d!80330)))

(declare-fun lambda!9309 () Int)

(assert (=> bs!30762 (= lambda!9309 lambda!9308)))

(declare-fun bs!30763 () Bool)

(assert (= bs!30763 (and b!274211 b!273643)))

(assert (=> bs!30763 (= lambda!9309 lambda!9280)))

(declare-fun bs!30764 () Bool)

(assert (= bs!30764 (and b!274211 d!80204)))

(assert (=> bs!30764 (not (= lambda!9309 lambda!9290))))

(declare-fun bs!30765 () Bool)

(assert (= bs!30765 (and b!274211 b!273799)))

(assert (=> bs!30765 (= lambda!9309 lambda!9291)))

(declare-fun bs!30766 () Bool)

(assert (= bs!30766 (and b!274211 b!273857)))

(assert (=> bs!30766 (= lambda!9309 lambda!9297)))

(declare-fun bs!30767 () Bool)

(assert (= bs!30767 (and b!274211 b!273654)))

(assert (=> bs!30767 (not (= lambda!9309 lambda!9279))))

(declare-fun b!274215 () Bool)

(declare-fun e!170352 () Bool)

(assert (=> b!274215 (= e!170352 true)))

(declare-fun b!274214 () Bool)

(declare-fun e!170351 () Bool)

(assert (=> b!274214 (= e!170351 e!170352)))

(declare-fun b!274213 () Bool)

(declare-fun e!170350 () Bool)

(assert (=> b!274213 (= e!170350 e!170351)))

(assert (=> b!274211 e!170350))

(assert (= b!274214 b!274215))

(assert (= b!274213 b!274214))

(assert (= (and b!274211 ((_ is Cons!3839) rules!1920)) b!274213))

(assert (=> b!274215 (< (dynLambda!1981 order!2973 (toValue!1476 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9309))))

(assert (=> b!274215 (< (dynLambda!1983 order!2977 (toChars!1335 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9309))))

(assert (=> b!274211 true))

(declare-fun b!274205 () Bool)

(declare-fun c!51996 () Bool)

(declare-fun lt!113631 () Option!820)

(assert (=> b!274205 (= c!51996 (and ((_ is Some!819) lt!113631) (not (= (_1!2375 (v!14696 lt!113631)) (h!9237 (t!38872 tokens!465))))))))

(declare-fun e!170346 () List!3848)

(declare-fun e!170349 () List!3848)

(assert (=> b!274205 (= e!170346 e!170349)))

(declare-fun bm!15066 () Bool)

(declare-fun call!15074 () BalanceConc!2584)

(assert (=> bm!15066 (= call!15074 (charsOf!378 (h!9237 (t!38872 tokens!465))))))

(declare-fun b!274206 () Bool)

(declare-fun e!170347 () List!3848)

(assert (=> b!274206 (= e!170347 Nil!3838)))

(declare-fun call!15075 () List!3848)

(declare-fun call!15072 () BalanceConc!2584)

(declare-fun bm!15067 () Bool)

(declare-fun c!51997 () Bool)

(assert (=> bm!15067 (= call!15075 (list!1577 (ite c!51997 call!15074 call!15072)))))

(declare-fun bm!15068 () Bool)

(assert (=> bm!15068 (= call!15072 call!15074)))

(declare-fun b!274207 () Bool)

(declare-fun e!170348 () BalanceConc!2584)

(assert (=> b!274207 (= e!170348 (charsOf!378 separatorToken!170))))

(declare-fun b!274208 () Bool)

(declare-fun call!15073 () List!3848)

(assert (=> b!274208 (= e!170346 call!15073)))

(declare-fun b!274209 () Bool)

(declare-fun lt!113629 () List!3848)

(assert (=> b!274209 (= e!170349 (++!1010 call!15073 lt!113629))))

(declare-fun d!80360 () Bool)

(declare-fun c!51994 () Bool)

(assert (=> d!80360 (= c!51994 ((_ is Cons!3840) (t!38872 tokens!465)))))

(assert (=> d!80360 (= (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 (t!38872 tokens!465) separatorToken!170) e!170347)))

(declare-fun b!274210 () Bool)

(assert (=> b!274210 (= e!170349 Nil!3838)))

(assert (=> b!274210 (= (print!344 thiss!17480 (singletonSeq!279 (h!9237 (t!38872 tokens!465)))) (printTailRec!307 thiss!17480 (singletonSeq!279 (h!9237 (t!38872 tokens!465))) 0 (BalanceConc!2585 Empty!1288)))))

(declare-fun lt!113627 () Unit!4998)

(declare-fun Unit!5008 () Unit!4998)

(assert (=> b!274210 (= lt!113627 Unit!5008)))

(declare-fun call!15071 () List!3848)

(declare-fun lt!113630 () Unit!4998)

(assert (=> b!274210 (= lt!113630 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!114 thiss!17480 rules!1920 call!15071 lt!113629))))

(assert (=> b!274210 false))

(declare-fun lt!113632 () Unit!4998)

(declare-fun Unit!5009 () Unit!4998)

(assert (=> b!274210 (= lt!113632 Unit!5009)))

(declare-fun bm!15069 () Bool)

(assert (=> bm!15069 (= call!15071 (list!1577 e!170348))))

(declare-fun c!51995 () Bool)

(assert (=> bm!15069 (= c!51995 c!51996)))

(declare-fun bm!15070 () Bool)

(assert (=> bm!15070 (= call!15073 (++!1010 call!15075 (ite c!51997 lt!113629 call!15071)))))

(assert (=> b!274211 (= e!170347 e!170346)))

(declare-fun lt!113628 () Unit!4998)

(assert (=> b!274211 (= lt!113628 (forallContained!288 (t!38872 tokens!465) lambda!9309 (h!9237 (t!38872 tokens!465))))))

(assert (=> b!274211 (= lt!113629 (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 (t!38872 (t!38872 tokens!465)) separatorToken!170))))

(assert (=> b!274211 (= lt!113631 (maxPrefix!337 thiss!17480 rules!1920 (++!1010 (list!1577 (charsOf!378 (h!9237 (t!38872 tokens!465)))) lt!113629)))))

(assert (=> b!274211 (= c!51997 (and ((_ is Some!819) lt!113631) (= (_1!2375 (v!14696 lt!113631)) (h!9237 (t!38872 tokens!465)))))))

(declare-fun b!274212 () Bool)

(assert (=> b!274212 (= e!170348 call!15072)))

(assert (= (and d!80360 c!51994) b!274211))

(assert (= (and d!80360 (not c!51994)) b!274206))

(assert (= (and b!274211 c!51997) b!274208))

(assert (= (and b!274211 (not c!51997)) b!274205))

(assert (= (and b!274205 c!51996) b!274209))

(assert (= (and b!274205 (not c!51996)) b!274210))

(assert (= (or b!274209 b!274210) bm!15068))

(assert (= (or b!274209 b!274210) bm!15069))

(assert (= (and bm!15069 c!51995) b!274207))

(assert (= (and bm!15069 (not c!51995)) b!274212))

(assert (= (or b!274208 bm!15068) bm!15066))

(assert (= (or b!274208 b!274209) bm!15067))

(assert (= (or b!274208 b!274209) bm!15070))

(declare-fun m!349697 () Bool)

(assert (=> bm!15069 m!349697))

(declare-fun m!349699 () Bool)

(assert (=> b!274209 m!349699))

(declare-fun m!349701 () Bool)

(assert (=> bm!15070 m!349701))

(declare-fun m!349703 () Bool)

(assert (=> bm!15067 m!349703))

(declare-fun m!349705 () Bool)

(assert (=> b!274210 m!349705))

(assert (=> b!274210 m!349705))

(declare-fun m!349707 () Bool)

(assert (=> b!274210 m!349707))

(assert (=> b!274210 m!349705))

(declare-fun m!349709 () Bool)

(assert (=> b!274210 m!349709))

(declare-fun m!349711 () Bool)

(assert (=> b!274210 m!349711))

(assert (=> b!274207 m!348905))

(declare-fun m!349713 () Bool)

(assert (=> bm!15066 m!349713))

(assert (=> b!274211 m!349713))

(declare-fun m!349715 () Bool)

(assert (=> b!274211 m!349715))

(declare-fun m!349717 () Bool)

(assert (=> b!274211 m!349717))

(declare-fun m!349719 () Bool)

(assert (=> b!274211 m!349719))

(declare-fun m!349721 () Bool)

(assert (=> b!274211 m!349721))

(assert (=> b!274211 m!349715))

(assert (=> b!274211 m!349719))

(declare-fun m!349723 () Bool)

(assert (=> b!274211 m!349723))

(assert (=> b!274211 m!349713))

(assert (=> b!273645 d!80360))

(declare-fun b!274216 () Bool)

(declare-fun e!170354 () List!3848)

(assert (=> b!274216 (= e!170354 lt!113343)))

(declare-fun e!170353 () Bool)

(declare-fun b!274219 () Bool)

(declare-fun lt!113633 () List!3848)

(assert (=> b!274219 (= e!170353 (or (not (= lt!113343 Nil!3838)) (= lt!113633 lt!113327)))))

(declare-fun b!274217 () Bool)

(assert (=> b!274217 (= e!170354 (Cons!3838 (h!9235 lt!113327) (++!1010 (t!38870 lt!113327) lt!113343)))))

(declare-fun d!80362 () Bool)

(assert (=> d!80362 e!170353))

(declare-fun res!125137 () Bool)

(assert (=> d!80362 (=> (not res!125137) (not e!170353))))

(assert (=> d!80362 (= res!125137 (= (content!555 lt!113633) ((_ map or) (content!555 lt!113327) (content!555 lt!113343))))))

(assert (=> d!80362 (= lt!113633 e!170354)))

(declare-fun c!51998 () Bool)

(assert (=> d!80362 (= c!51998 ((_ is Nil!3838) lt!113327))))

(assert (=> d!80362 (= (++!1010 lt!113327 lt!113343) lt!113633)))

(declare-fun b!274218 () Bool)

(declare-fun res!125136 () Bool)

(assert (=> b!274218 (=> (not res!125136) (not e!170353))))

(assert (=> b!274218 (= res!125136 (= (size!3069 lt!113633) (+ (size!3069 lt!113327) (size!3069 lt!113343))))))

(assert (= (and d!80362 c!51998) b!274216))

(assert (= (and d!80362 (not c!51998)) b!274217))

(assert (= (and d!80362 res!125137) b!274218))

(assert (= (and b!274218 res!125136) b!274219))

(declare-fun m!349725 () Bool)

(assert (=> b!274217 m!349725))

(declare-fun m!349727 () Bool)

(assert (=> d!80362 m!349727))

(assert (=> d!80362 m!348955))

(declare-fun m!349729 () Bool)

(assert (=> d!80362 m!349729))

(declare-fun m!349731 () Bool)

(assert (=> b!274218 m!349731))

(assert (=> b!274218 m!348961))

(assert (=> b!274218 m!349613))

(assert (=> b!273645 d!80362))

(declare-fun d!80364 () Bool)

(declare-fun lt!113636 () BalanceConc!2584)

(assert (=> d!80364 (= (list!1577 lt!113636) (originalCharacters!776 separatorToken!170))))

(assert (=> d!80364 (= lt!113636 (dynLambda!1987 (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (value!25206 separatorToken!170)))))

(assert (=> d!80364 (= (charsOf!378 separatorToken!170) lt!113636)))

(declare-fun b_lambda!8807 () Bool)

(assert (=> (not b_lambda!8807) (not d!80364)))

(declare-fun t!38914 () Bool)

(declare-fun tb!15719 () Bool)

(assert (=> (and b!273637 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170)))) t!38914) tb!15719))

(declare-fun b!274220 () Bool)

(declare-fun e!170355 () Bool)

(declare-fun tp!103163 () Bool)

(assert (=> b!274220 (= e!170355 (and (inv!4759 (c!51884 (dynLambda!1987 (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (value!25206 separatorToken!170)))) tp!103163))))

(declare-fun result!19354 () Bool)

(assert (=> tb!15719 (= result!19354 (and (inv!4760 (dynLambda!1987 (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (value!25206 separatorToken!170))) e!170355))))

(assert (= tb!15719 b!274220))

(declare-fun m!349733 () Bool)

(assert (=> b!274220 m!349733))

(declare-fun m!349735 () Bool)

(assert (=> tb!15719 m!349735))

(assert (=> d!80364 t!38914))

(declare-fun b_and!21999 () Bool)

(assert (= b_and!21993 (and (=> t!38914 result!19354) b_and!21999)))

(declare-fun t!38916 () Bool)

(declare-fun tb!15721 () Bool)

(assert (=> (and b!273630 (= (toChars!1335 (transformation!733 (h!9236 rules!1920))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170)))) t!38916) tb!15721))

(declare-fun result!19356 () Bool)

(assert (= result!19356 result!19354))

(assert (=> d!80364 t!38916))

(declare-fun b_and!22001 () Bool)

(assert (= b_and!21995 (and (=> t!38916 result!19356) b_and!22001)))

(declare-fun t!38918 () Bool)

(declare-fun tb!15723 () Bool)

(assert (=> (and b!273652 (= (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170)))) t!38918) tb!15723))

(declare-fun result!19358 () Bool)

(assert (= result!19358 result!19354))

(assert (=> d!80364 t!38918))

(declare-fun b_and!22003 () Bool)

(assert (= b_and!21997 (and (=> t!38918 result!19358) b_and!22003)))

(declare-fun m!349737 () Bool)

(assert (=> d!80364 m!349737))

(declare-fun m!349739 () Bool)

(assert (=> d!80364 m!349739))

(assert (=> b!273645 d!80364))

(declare-fun d!80366 () Bool)

(assert (=> d!80366 (= (list!1577 (charsOf!378 (h!9237 tokens!465))) (list!1580 (c!51884 (charsOf!378 (h!9237 tokens!465)))))))

(declare-fun bs!30768 () Bool)

(assert (= bs!30768 d!80366))

(declare-fun m!349741 () Bool)

(assert (=> bs!30768 m!349741))

(assert (=> b!273645 d!80366))

(declare-fun d!80368 () Bool)

(declare-fun lt!113637 () BalanceConc!2584)

(assert (=> d!80368 (= (list!1577 lt!113637) (originalCharacters!776 (h!9237 tokens!465)))))

(assert (=> d!80368 (= lt!113637 (dynLambda!1987 (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (value!25206 (h!9237 tokens!465))))))

(assert (=> d!80368 (= (charsOf!378 (h!9237 tokens!465)) lt!113637)))

(declare-fun b_lambda!8809 () Bool)

(assert (=> (not b_lambda!8809) (not d!80368)))

(assert (=> d!80368 t!38908))

(declare-fun b_and!22005 () Bool)

(assert (= b_and!21999 (and (=> t!38908 result!19346) b_and!22005)))

(assert (=> d!80368 t!38910))

(declare-fun b_and!22007 () Bool)

(assert (= b_and!22001 (and (=> t!38910 result!19350) b_and!22007)))

(assert (=> d!80368 t!38912))

(declare-fun b_and!22009 () Bool)

(assert (= b_and!22003 (and (=> t!38912 result!19352) b_and!22009)))

(declare-fun m!349743 () Bool)

(assert (=> d!80368 m!349743))

(assert (=> d!80368 m!349675))

(assert (=> b!273645 d!80368))

(declare-fun d!80370 () Bool)

(assert (=> d!80370 (= (++!1010 (++!1010 lt!113327 lt!113335) lt!113334) (++!1010 lt!113327 (++!1010 lt!113335 lt!113334)))))

(declare-fun lt!113640 () Unit!4998)

(declare-fun choose!2480 (List!3848 List!3848 List!3848) Unit!4998)

(assert (=> d!80370 (= lt!113640 (choose!2480 lt!113327 lt!113335 lt!113334))))

(assert (=> d!80370 (= (lemmaConcatAssociativity!434 lt!113327 lt!113335 lt!113334) lt!113640)))

(declare-fun bs!30769 () Bool)

(assert (= bs!30769 d!80370))

(assert (=> bs!30769 m!348895))

(assert (=> bs!30769 m!348901))

(declare-fun m!349745 () Bool)

(assert (=> bs!30769 m!349745))

(assert (=> bs!30769 m!348895))

(assert (=> bs!30769 m!348897))

(assert (=> bs!30769 m!348901))

(declare-fun m!349747 () Bool)

(assert (=> bs!30769 m!349747))

(assert (=> b!273645 d!80370))

(declare-fun b!274221 () Bool)

(declare-fun e!170357 () List!3848)

(assert (=> b!274221 (= e!170357 lt!113335)))

(declare-fun b!274224 () Bool)

(declare-fun e!170356 () Bool)

(declare-fun lt!113641 () List!3848)

(assert (=> b!274224 (= e!170356 (or (not (= lt!113335 Nil!3838)) (= lt!113641 lt!113327)))))

(declare-fun b!274222 () Bool)

(assert (=> b!274222 (= e!170357 (Cons!3838 (h!9235 lt!113327) (++!1010 (t!38870 lt!113327) lt!113335)))))

(declare-fun d!80372 () Bool)

(assert (=> d!80372 e!170356))

(declare-fun res!125139 () Bool)

(assert (=> d!80372 (=> (not res!125139) (not e!170356))))

(assert (=> d!80372 (= res!125139 (= (content!555 lt!113641) ((_ map or) (content!555 lt!113327) (content!555 lt!113335))))))

(assert (=> d!80372 (= lt!113641 e!170357)))

(declare-fun c!51999 () Bool)

(assert (=> d!80372 (= c!51999 ((_ is Nil!3838) lt!113327))))

(assert (=> d!80372 (= (++!1010 lt!113327 lt!113335) lt!113641)))

(declare-fun b!274223 () Bool)

(declare-fun res!125138 () Bool)

(assert (=> b!274223 (=> (not res!125138) (not e!170356))))

(assert (=> b!274223 (= res!125138 (= (size!3069 lt!113641) (+ (size!3069 lt!113327) (size!3069 lt!113335))))))

(assert (= (and d!80372 c!51999) b!274221))

(assert (= (and d!80372 (not c!51999)) b!274222))

(assert (= (and d!80372 res!125139) b!274223))

(assert (= (and b!274223 res!125138) b!274224))

(declare-fun m!349749 () Bool)

(assert (=> b!274222 m!349749))

(declare-fun m!349751 () Bool)

(assert (=> d!80372 m!349751))

(assert (=> d!80372 m!348955))

(declare-fun m!349753 () Bool)

(assert (=> d!80372 m!349753))

(declare-fun m!349755 () Bool)

(assert (=> b!274223 m!349755))

(assert (=> b!274223 m!348961))

(declare-fun m!349757 () Bool)

(assert (=> b!274223 m!349757))

(assert (=> b!273645 d!80372))

(declare-fun b!274225 () Bool)

(declare-fun e!170359 () List!3848)

(assert (=> b!274225 (= e!170359 lt!113334)))

(declare-fun b!274228 () Bool)

(declare-fun lt!113642 () List!3848)

(declare-fun e!170358 () Bool)

(assert (=> b!274228 (= e!170358 (or (not (= lt!113334 Nil!3838)) (= lt!113642 lt!113335)))))

(declare-fun b!274226 () Bool)

(assert (=> b!274226 (= e!170359 (Cons!3838 (h!9235 lt!113335) (++!1010 (t!38870 lt!113335) lt!113334)))))

(declare-fun d!80374 () Bool)

(assert (=> d!80374 e!170358))

(declare-fun res!125141 () Bool)

(assert (=> d!80374 (=> (not res!125141) (not e!170358))))

(assert (=> d!80374 (= res!125141 (= (content!555 lt!113642) ((_ map or) (content!555 lt!113335) (content!555 lt!113334))))))

(assert (=> d!80374 (= lt!113642 e!170359)))

(declare-fun c!52000 () Bool)

(assert (=> d!80374 (= c!52000 ((_ is Nil!3838) lt!113335))))

(assert (=> d!80374 (= (++!1010 lt!113335 lt!113334) lt!113642)))

(declare-fun b!274227 () Bool)

(declare-fun res!125140 () Bool)

(assert (=> b!274227 (=> (not res!125140) (not e!170358))))

(assert (=> b!274227 (= res!125140 (= (size!3069 lt!113642) (+ (size!3069 lt!113335) (size!3069 lt!113334))))))

(assert (= (and d!80374 c!52000) b!274225))

(assert (= (and d!80374 (not c!52000)) b!274226))

(assert (= (and d!80374 res!125141) b!274227))

(assert (= (and b!274227 res!125140) b!274228))

(declare-fun m!349759 () Bool)

(assert (=> b!274226 m!349759))

(declare-fun m!349761 () Bool)

(assert (=> d!80374 m!349761))

(assert (=> d!80374 m!349753))

(assert (=> d!80374 m!348957))

(declare-fun m!349763 () Bool)

(assert (=> b!274227 m!349763))

(assert (=> b!274227 m!349757))

(assert (=> b!274227 m!348963))

(assert (=> b!273645 d!80374))

(declare-fun bs!30770 () Bool)

(declare-fun d!80376 () Bool)

(assert (= bs!30770 (and d!80376 d!80330)))

(declare-fun lambda!9310 () Int)

(assert (=> bs!30770 (not (= lambda!9310 lambda!9308))))

(declare-fun bs!30771 () Bool)

(assert (= bs!30771 (and d!80376 b!273643)))

(assert (=> bs!30771 (not (= lambda!9310 lambda!9280))))

(declare-fun bs!30772 () Bool)

(assert (= bs!30772 (and d!80376 d!80204)))

(assert (=> bs!30772 (= lambda!9310 lambda!9290)))

(declare-fun bs!30773 () Bool)

(assert (= bs!30773 (and d!80376 b!274211)))

(assert (=> bs!30773 (not (= lambda!9310 lambda!9309))))

(declare-fun bs!30774 () Bool)

(assert (= bs!30774 (and d!80376 b!273799)))

(assert (=> bs!30774 (not (= lambda!9310 lambda!9291))))

(declare-fun bs!30775 () Bool)

(assert (= bs!30775 (and d!80376 b!273857)))

(assert (=> bs!30775 (not (= lambda!9310 lambda!9297))))

(declare-fun bs!30776 () Bool)

(assert (= bs!30776 (and d!80376 b!273654)))

(assert (=> bs!30776 (= lambda!9310 lambda!9279)))

(declare-fun bs!30777 () Bool)

(declare-fun b!274232 () Bool)

(assert (= bs!30777 (and b!274232 d!80330)))

(declare-fun lambda!9311 () Int)

(assert (=> bs!30777 (= lambda!9311 lambda!9308)))

(declare-fun bs!30778 () Bool)

(assert (= bs!30778 (and b!274232 b!273643)))

(assert (=> bs!30778 (= lambda!9311 lambda!9280)))

(declare-fun bs!30779 () Bool)

(assert (= bs!30779 (and b!274232 d!80204)))

(assert (=> bs!30779 (not (= lambda!9311 lambda!9290))))

(declare-fun bs!30780 () Bool)

(assert (= bs!30780 (and b!274232 b!274211)))

(assert (=> bs!30780 (= lambda!9311 lambda!9309)))

(declare-fun bs!30781 () Bool)

(assert (= bs!30781 (and b!274232 b!273799)))

(assert (=> bs!30781 (= lambda!9311 lambda!9291)))

(declare-fun bs!30782 () Bool)

(assert (= bs!30782 (and b!274232 d!80376)))

(assert (=> bs!30782 (not (= lambda!9311 lambda!9310))))

(declare-fun bs!30783 () Bool)

(assert (= bs!30783 (and b!274232 b!273857)))

(assert (=> bs!30783 (= lambda!9311 lambda!9297)))

(declare-fun bs!30784 () Bool)

(assert (= bs!30784 (and b!274232 b!273654)))

(assert (=> bs!30784 (not (= lambda!9311 lambda!9279))))

(declare-fun b!274240 () Bool)

(declare-fun e!170368 () Bool)

(assert (=> b!274240 (= e!170368 true)))

(declare-fun b!274239 () Bool)

(declare-fun e!170367 () Bool)

(assert (=> b!274239 (= e!170367 e!170368)))

(declare-fun b!274238 () Bool)

(declare-fun e!170366 () Bool)

(assert (=> b!274238 (= e!170366 e!170367)))

(assert (=> b!274232 e!170366))

(assert (= b!274239 b!274240))

(assert (= b!274238 b!274239))

(assert (= (and b!274232 ((_ is Cons!3839) rules!1920)) b!274238))

(assert (=> b!274240 (< (dynLambda!1981 order!2973 (toValue!1476 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9311))))

(assert (=> b!274240 (< (dynLambda!1983 order!2977 (toChars!1335 (transformation!733 (h!9236 rules!1920)))) (dynLambda!1982 order!2975 lambda!9311))))

(assert (=> b!274232 true))

(declare-fun bm!15071 () Bool)

(declare-fun call!15079 () BalanceConc!2584)

(declare-fun call!15077 () Token!1210)

(declare-fun c!52003 () Bool)

(assert (=> bm!15071 (= call!15079 (charsOf!378 (ite c!52003 separatorToken!170 call!15077)))))

(declare-fun b!274229 () Bool)

(declare-fun e!170361 () Bool)

(assert (=> b!274229 (= c!52003 e!170361)))

(declare-fun res!125144 () Bool)

(assert (=> b!274229 (=> (not res!125144) (not e!170361))))

(declare-fun lt!113652 () Option!821)

(assert (=> b!274229 (= res!125144 ((_ is Some!820) lt!113652))))

(declare-fun e!170360 () BalanceConc!2584)

(declare-fun e!170363 () BalanceConc!2584)

(assert (=> b!274229 (= e!170360 e!170363)))

(declare-fun b!274230 () Bool)

(declare-fun e!170362 () Bool)

(assert (=> b!274230 (= e!170362 (= (_1!2377 (v!14697 lt!113652)) (apply!781 (seqFromList!834 (t!38872 tokens!465)) 0)))))

(declare-fun b!274231 () Bool)

(declare-fun call!15076 () Token!1210)

(assert (=> b!274231 (= e!170361 (not (= (_1!2377 (v!14697 lt!113652)) call!15076)))))

(declare-fun e!170365 () BalanceConc!2584)

(assert (=> b!274232 (= e!170365 e!170360)))

(declare-fun lt!113649 () List!3850)

(assert (=> b!274232 (= lt!113649 (list!1581 (seqFromList!834 (t!38872 tokens!465))))))

(declare-fun lt!113655 () Unit!4998)

(assert (=> b!274232 (= lt!113655 (lemmaDropApply!206 lt!113649 0))))

(assert (=> b!274232 (= (head!892 (drop!219 lt!113649 0)) (apply!782 lt!113649 0))))

(declare-fun lt!113644 () Unit!4998)

(assert (=> b!274232 (= lt!113644 lt!113655)))

(declare-fun lt!113654 () List!3850)

(assert (=> b!274232 (= lt!113654 (list!1581 (seqFromList!834 (t!38872 tokens!465))))))

(declare-fun lt!113651 () Unit!4998)

(assert (=> b!274232 (= lt!113651 (lemmaDropTail!198 lt!113654 0))))

(assert (=> b!274232 (= (tail!483 (drop!219 lt!113654 0)) (drop!219 lt!113654 (+ 0 1)))))

(declare-fun lt!113647 () Unit!4998)

(assert (=> b!274232 (= lt!113647 lt!113651)))

(declare-fun lt!113653 () Unit!4998)

(assert (=> b!274232 (= lt!113653 (forallContained!288 (list!1581 (seqFromList!834 (t!38872 tokens!465))) lambda!9311 (apply!781 (seqFromList!834 (t!38872 tokens!465)) 0)))))

(declare-fun lt!113656 () BalanceConc!2584)

(assert (=> b!274232 (= lt!113656 (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 (seqFromList!834 (t!38872 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!274232 (= lt!113652 (maxPrefixZipperSequence!300 thiss!17480 rules!1920 (++!1012 (charsOf!378 (apply!781 (seqFromList!834 (t!38872 tokens!465)) 0)) lt!113656)))))

(declare-fun res!125143 () Bool)

(assert (=> b!274232 (= res!125143 ((_ is Some!820) lt!113652))))

(assert (=> b!274232 (=> (not res!125143) (not e!170362))))

(declare-fun c!52001 () Bool)

(assert (=> b!274232 (= c!52001 e!170362)))

(declare-fun b!274233 () Bool)

(assert (=> b!274233 (= e!170363 (BalanceConc!2585 Empty!1288))))

(assert (=> b!274233 (= (print!344 thiss!17480 (singletonSeq!279 call!15077)) (printTailRec!307 thiss!17480 (singletonSeq!279 call!15077) 0 (BalanceConc!2585 Empty!1288)))))

(declare-fun lt!113643 () Unit!4998)

(declare-fun Unit!5012 () Unit!4998)

(assert (=> b!274233 (= lt!113643 Unit!5012)))

(declare-fun lt!113648 () Unit!4998)

(assert (=> b!274233 (= lt!113648 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!114 thiss!17480 rules!1920 (list!1577 call!15079) (list!1577 lt!113656)))))

(assert (=> b!274233 false))

(declare-fun lt!113646 () Unit!4998)

(declare-fun Unit!5013 () Unit!4998)

(assert (=> b!274233 (= lt!113646 Unit!5013)))

(declare-fun call!15080 () BalanceConc!2584)

(declare-fun bm!15072 () Bool)

(assert (=> bm!15072 (= call!15080 (charsOf!378 (ite c!52001 call!15076 call!15077)))))

(declare-fun bm!15073 () Bool)

(assert (=> bm!15073 (= call!15076 (apply!781 (seqFromList!834 (t!38872 tokens!465)) 0))))

(declare-fun b!274234 () Bool)

(declare-fun e!170364 () Bool)

(assert (=> b!274234 (= e!170364 (<= 0 (size!3070 (seqFromList!834 (t!38872 tokens!465)))))))

(declare-fun lt!113650 () BalanceConc!2584)

(assert (=> d!80376 (= (list!1577 lt!113650) (printWithSeparatorTokenWhenNeededList!302 thiss!17480 rules!1920 (dropList!166 (seqFromList!834 (t!38872 tokens!465)) 0) separatorToken!170))))

(assert (=> d!80376 (= lt!113650 e!170365)))

(declare-fun c!52002 () Bool)

(assert (=> d!80376 (= c!52002 (>= 0 (size!3070 (seqFromList!834 (t!38872 tokens!465)))))))

(declare-fun lt!113645 () Unit!4998)

(assert (=> d!80376 (= lt!113645 (lemmaContentSubsetPreservesForall!110 (list!1581 (seqFromList!834 (t!38872 tokens!465))) (dropList!166 (seqFromList!834 (t!38872 tokens!465)) 0) lambda!9310))))

(assert (=> d!80376 e!170364))

(declare-fun res!125142 () Bool)

(assert (=> d!80376 (=> (not res!125142) (not e!170364))))

(assert (=> d!80376 (= res!125142 (>= 0 0))))

(assert (=> d!80376 (= (printWithSeparatorTokenWhenNeededRec!294 thiss!17480 rules!1920 (seqFromList!834 (t!38872 tokens!465)) separatorToken!170 0) lt!113650)))

(declare-fun b!274235 () Bool)

(declare-fun call!15078 () BalanceConc!2584)

(assert (=> b!274235 (= e!170360 call!15078)))

(declare-fun bm!15074 () Bool)

(assert (=> bm!15074 (= call!15078 (++!1012 call!15080 (ite c!52001 lt!113656 call!15079)))))

(declare-fun b!274236 () Bool)

(assert (=> b!274236 (= e!170363 (++!1012 call!15078 lt!113656))))

(declare-fun b!274237 () Bool)

(assert (=> b!274237 (= e!170365 (BalanceConc!2585 Empty!1288))))

(declare-fun bm!15075 () Bool)

(assert (=> bm!15075 (= call!15077 call!15076)))

(assert (= (and d!80376 res!125142) b!274234))

(assert (= (and d!80376 c!52002) b!274237))

(assert (= (and d!80376 (not c!52002)) b!274232))

(assert (= (and b!274232 res!125143) b!274230))

(assert (= (and b!274232 c!52001) b!274235))

(assert (= (and b!274232 (not c!52001)) b!274229))

(assert (= (and b!274229 res!125144) b!274231))

(assert (= (and b!274229 c!52003) b!274236))

(assert (= (and b!274229 (not c!52003)) b!274233))

(assert (= (or b!274236 b!274233) bm!15075))

(assert (= (or b!274236 b!274233) bm!15071))

(assert (= (or b!274235 b!274231 bm!15075) bm!15073))

(assert (= (or b!274235 b!274236) bm!15072))

(assert (= (or b!274235 b!274236) bm!15074))

(assert (=> b!274234 m!348899))

(declare-fun m!349765 () Bool)

(assert (=> b!274234 m!349765))

(declare-fun m!349767 () Bool)

(assert (=> bm!15071 m!349767))

(declare-fun m!349769 () Bool)

(assert (=> bm!15074 m!349769))

(assert (=> b!274230 m!348899))

(declare-fun m!349771 () Bool)

(assert (=> b!274230 m!349771))

(declare-fun m!349773 () Bool)

(assert (=> b!274236 m!349773))

(declare-fun m!349775 () Bool)

(assert (=> bm!15072 m!349775))

(assert (=> d!80376 m!348899))

(assert (=> d!80376 m!349765))

(declare-fun m!349777 () Bool)

(assert (=> d!80376 m!349777))

(declare-fun m!349779 () Bool)

(assert (=> d!80376 m!349779))

(declare-fun m!349781 () Bool)

(assert (=> d!80376 m!349781))

(assert (=> d!80376 m!349777))

(declare-fun m!349783 () Bool)

(assert (=> d!80376 m!349783))

(assert (=> d!80376 m!348899))

(assert (=> d!80376 m!349777))

(assert (=> d!80376 m!348899))

(assert (=> d!80376 m!349781))

(declare-fun m!349785 () Bool)

(assert (=> d!80376 m!349785))

(declare-fun m!349787 () Bool)

(assert (=> b!274232 m!349787))

(declare-fun m!349789 () Bool)

(assert (=> b!274232 m!349789))

(assert (=> b!274232 m!349781))

(assert (=> b!274232 m!349771))

(declare-fun m!349791 () Bool)

(assert (=> b!274232 m!349791))

(declare-fun m!349793 () Bool)

(assert (=> b!274232 m!349793))

(declare-fun m!349795 () Bool)

(assert (=> b!274232 m!349795))

(declare-fun m!349797 () Bool)

(assert (=> b!274232 m!349797))

(assert (=> b!274232 m!349771))

(declare-fun m!349799 () Bool)

(assert (=> b!274232 m!349799))

(assert (=> b!274232 m!348899))

(assert (=> b!274232 m!349781))

(declare-fun m!349801 () Bool)

(assert (=> b!274232 m!349801))

(declare-fun m!349803 () Bool)

(assert (=> b!274232 m!349803))

(assert (=> b!274232 m!349789))

(declare-fun m!349805 () Bool)

(assert (=> b!274232 m!349805))

(assert (=> b!274232 m!349799))

(assert (=> b!274232 m!349801))

(declare-fun m!349807 () Bool)

(assert (=> b!274232 m!349807))

(assert (=> b!274232 m!349795))

(declare-fun m!349809 () Bool)

(assert (=> b!274232 m!349809))

(assert (=> b!274232 m!348899))

(declare-fun m!349811 () Bool)

(assert (=> b!274232 m!349811))

(assert (=> b!274232 m!348899))

(assert (=> b!274232 m!349771))

(assert (=> bm!15073 m!348899))

(assert (=> bm!15073 m!349771))

(declare-fun m!349813 () Bool)

(assert (=> b!274233 m!349813))

(declare-fun m!349815 () Bool)

(assert (=> b!274233 m!349815))

(declare-fun m!349817 () Bool)

(assert (=> b!274233 m!349817))

(assert (=> b!274233 m!349815))

(declare-fun m!349819 () Bool)

(assert (=> b!274233 m!349819))

(assert (=> b!274233 m!349815))

(declare-fun m!349821 () Bool)

(assert (=> b!274233 m!349821))

(assert (=> b!274233 m!349813))

(assert (=> b!274233 m!349817))

(declare-fun m!349823 () Bool)

(assert (=> b!274233 m!349823))

(assert (=> b!273645 d!80376))

(declare-fun d!80378 () Bool)

(declare-fun isEmpty!2459 (Option!821) Bool)

(assert (=> d!80378 (= (isDefined!664 (maxPrefixZipperSequence!300 thiss!17480 rules!1920 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465))))) (not (isEmpty!2459 (maxPrefixZipperSequence!300 thiss!17480 rules!1920 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))))

(declare-fun bs!30785 () Bool)

(assert (= bs!30785 d!80378))

(assert (=> bs!30785 m!348853))

(declare-fun m!349825 () Bool)

(assert (=> bs!30785 m!349825))

(assert (=> b!273643 d!80378))

(declare-fun e!170449 () Bool)

(declare-fun lt!113705 () Option!821)

(declare-fun b!274349 () Bool)

(declare-fun get!1278 (Option!821) tuple2!4322)

(declare-fun maxPrefixZipper!115 (LexerInterface!619 List!3849 List!3848) Option!820)

(assert (=> b!274349 (= e!170449 (= (list!1577 (_2!2377 (get!1278 lt!113705))) (_2!2375 (get!1276 (maxPrefixZipper!115 thiss!17480 rules!1920 (list!1577 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))))))

(declare-fun d!80380 () Bool)

(declare-fun e!170450 () Bool)

(assert (=> d!80380 e!170450))

(declare-fun res!125174 () Bool)

(assert (=> d!80380 (=> (not res!125174) (not e!170450))))

(assert (=> d!80380 (= res!125174 (= (isDefined!664 lt!113705) (isDefined!663 (maxPrefixZipper!115 thiss!17480 rules!1920 (list!1577 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465))))))))))

(declare-fun e!170451 () Option!821)

(assert (=> d!80380 (= lt!113705 e!170451)))

(declare-fun c!52016 () Bool)

(assert (=> d!80380 (= c!52016 (and ((_ is Cons!3839) rules!1920) ((_ is Nil!3839) (t!38871 rules!1920))))))

(declare-fun lt!113703 () Unit!4998)

(declare-fun lt!113699 () Unit!4998)

(assert (=> d!80380 (= lt!113703 lt!113699)))

(declare-fun lt!113702 () List!3848)

(declare-fun lt!113701 () List!3848)

(assert (=> d!80380 (isPrefix!401 lt!113702 lt!113701)))

(assert (=> d!80380 (= lt!113699 (lemmaIsPrefixRefl!211 lt!113702 lt!113701))))

(assert (=> d!80380 (= lt!113701 (list!1577 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))

(assert (=> d!80380 (= lt!113702 (list!1577 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))

(assert (=> d!80380 (rulesValidInductive!206 thiss!17480 rules!1920)))

(assert (=> d!80380 (= (maxPrefixZipperSequence!300 thiss!17480 rules!1920 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))) lt!113705)))

(declare-fun b!274350 () Bool)

(declare-fun call!15093 () Option!821)

(assert (=> b!274350 (= e!170451 call!15093)))

(declare-fun bm!15088 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!116 (LexerInterface!619 Rule!1266 BalanceConc!2584) Option!821)

(assert (=> bm!15088 (= call!15093 (maxPrefixOneRuleZipperSequence!116 thiss!17480 (h!9236 rules!1920) (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))

(declare-fun b!274351 () Bool)

(declare-fun e!170448 () Bool)

(assert (=> b!274351 (= e!170450 e!170448)))

(declare-fun res!125176 () Bool)

(assert (=> b!274351 (=> res!125176 e!170448)))

(assert (=> b!274351 (= res!125176 (not (isDefined!664 lt!113705)))))

(declare-fun b!274352 () Bool)

(declare-fun res!125178 () Bool)

(assert (=> b!274352 (=> (not res!125178) (not e!170450))))

(declare-fun e!170452 () Bool)

(assert (=> b!274352 (= res!125178 e!170452)))

(declare-fun res!125173 () Bool)

(assert (=> b!274352 (=> res!125173 e!170452)))

(assert (=> b!274352 (= res!125173 (not (isDefined!664 lt!113705)))))

(declare-fun b!274353 () Bool)

(declare-fun e!170447 () Bool)

(assert (=> b!274353 (= e!170448 e!170447)))

(declare-fun res!125175 () Bool)

(assert (=> b!274353 (=> (not res!125175) (not e!170447))))

(assert (=> b!274353 (= res!125175 (= (_1!2377 (get!1278 lt!113705)) (_1!2375 (get!1276 (maxPrefix!337 thiss!17480 rules!1920 (list!1577 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))))))

(declare-fun b!274354 () Bool)

(assert (=> b!274354 (= e!170447 (= (list!1577 (_2!2377 (get!1278 lt!113705))) (_2!2375 (get!1276 (maxPrefix!337 thiss!17480 rules!1920 (list!1577 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))))))

(declare-fun b!274355 () Bool)

(assert (=> b!274355 (= e!170452 e!170449)))

(declare-fun res!125177 () Bool)

(assert (=> b!274355 (=> (not res!125177) (not e!170449))))

(assert (=> b!274355 (= res!125177 (= (_1!2377 (get!1278 lt!113705)) (_1!2375 (get!1276 (maxPrefixZipper!115 thiss!17480 rules!1920 (list!1577 (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))))))

(declare-fun b!274356 () Bool)

(declare-fun lt!113704 () Option!821)

(declare-fun lt!113700 () Option!821)

(assert (=> b!274356 (= e!170451 (ite (and ((_ is None!820) lt!113704) ((_ is None!820) lt!113700)) None!820 (ite ((_ is None!820) lt!113700) lt!113704 (ite ((_ is None!820) lt!113704) lt!113700 (ite (>= (size!3065 (_1!2377 (v!14697 lt!113704))) (size!3065 (_1!2377 (v!14697 lt!113700)))) lt!113704 lt!113700)))))))

(assert (=> b!274356 (= lt!113704 call!15093)))

(assert (=> b!274356 (= lt!113700 (maxPrefixZipperSequence!300 thiss!17480 (t!38871 rules!1920) (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465)))))))

(assert (= (and d!80380 c!52016) b!274350))

(assert (= (and d!80380 (not c!52016)) b!274356))

(assert (= (or b!274350 b!274356) bm!15088))

(assert (= (and d!80380 res!125174) b!274352))

(assert (= (and b!274352 (not res!125173)) b!274355))

(assert (= (and b!274355 res!125177) b!274349))

(assert (= (and b!274352 res!125178) b!274351))

(assert (= (and b!274351 (not res!125176)) b!274353))

(assert (= (and b!274353 res!125175) b!274354))

(declare-fun m!349957 () Bool)

(assert (=> b!274352 m!349957))

(declare-fun m!349959 () Bool)

(assert (=> d!80380 m!349959))

(assert (=> d!80380 m!349559))

(declare-fun m!349961 () Bool)

(assert (=> d!80380 m!349961))

(assert (=> d!80380 m!348851))

(declare-fun m!349963 () Bool)

(assert (=> d!80380 m!349963))

(declare-fun m!349965 () Bool)

(assert (=> d!80380 m!349965))

(declare-fun m!349967 () Bool)

(assert (=> d!80380 m!349967))

(assert (=> d!80380 m!349963))

(assert (=> d!80380 m!349965))

(assert (=> d!80380 m!349957))

(assert (=> b!274351 m!349957))

(assert (=> bm!15088 m!348851))

(declare-fun m!349969 () Bool)

(assert (=> bm!15088 m!349969))

(declare-fun m!349971 () Bool)

(assert (=> b!274353 m!349971))

(assert (=> b!274353 m!348851))

(assert (=> b!274353 m!349963))

(assert (=> b!274353 m!349963))

(declare-fun m!349973 () Bool)

(assert (=> b!274353 m!349973))

(assert (=> b!274353 m!349973))

(declare-fun m!349975 () Bool)

(assert (=> b!274353 m!349975))

(assert (=> b!274356 m!348851))

(declare-fun m!349977 () Bool)

(assert (=> b!274356 m!349977))

(assert (=> b!274354 m!349971))

(assert (=> b!274354 m!349963))

(assert (=> b!274354 m!349973))

(assert (=> b!274354 m!349973))

(assert (=> b!274354 m!349975))

(assert (=> b!274354 m!348851))

(assert (=> b!274354 m!349963))

(declare-fun m!349979 () Bool)

(assert (=> b!274354 m!349979))

(assert (=> b!274349 m!349971))

(assert (=> b!274349 m!349963))

(assert (=> b!274349 m!349965))

(assert (=> b!274349 m!349965))

(declare-fun m!349981 () Bool)

(assert (=> b!274349 m!349981))

(assert (=> b!274349 m!348851))

(assert (=> b!274349 m!349963))

(assert (=> b!274349 m!349979))

(assert (=> b!274355 m!349971))

(assert (=> b!274355 m!348851))

(assert (=> b!274355 m!349963))

(assert (=> b!274355 m!349963))

(assert (=> b!274355 m!349965))

(assert (=> b!274355 m!349965))

(assert (=> b!274355 m!349981))

(assert (=> b!273643 d!80380))

(declare-fun d!80402 () Bool)

(declare-fun fromListB!325 (List!3848) BalanceConc!2584)

(assert (=> d!80402 (= (seqFromList!833 (originalCharacters!776 (h!9237 tokens!465))) (fromListB!325 (originalCharacters!776 (h!9237 tokens!465))))))

(declare-fun bs!30810 () Bool)

(assert (= bs!30810 d!80402))

(declare-fun m!349983 () Bool)

(assert (=> bs!30810 m!349983))

(assert (=> b!273643 d!80402))

(declare-fun d!80404 () Bool)

(assert (=> d!80404 (dynLambda!1986 lambda!9280 (h!9237 tokens!465))))

(declare-fun lt!113708 () Unit!4998)

(declare-fun choose!2481 (List!3850 Int Token!1210) Unit!4998)

(assert (=> d!80404 (= lt!113708 (choose!2481 tokens!465 lambda!9280 (h!9237 tokens!465)))))

(declare-fun e!170459 () Bool)

(assert (=> d!80404 e!170459))

(declare-fun res!125181 () Bool)

(assert (=> d!80404 (=> (not res!125181) (not e!170459))))

(assert (=> d!80404 (= res!125181 (forall!972 tokens!465 lambda!9280))))

(assert (=> d!80404 (= (forallContained!288 tokens!465 lambda!9280 (h!9237 tokens!465)) lt!113708)))

(declare-fun b!274365 () Bool)

(declare-fun contains!731 (List!3850 Token!1210) Bool)

(assert (=> b!274365 (= e!170459 (contains!731 tokens!465 (h!9237 tokens!465)))))

(assert (= (and d!80404 res!125181) b!274365))

(declare-fun b_lambda!8823 () Bool)

(assert (=> (not b_lambda!8823) (not d!80404)))

(declare-fun m!349985 () Bool)

(assert (=> d!80404 m!349985))

(declare-fun m!349987 () Bool)

(assert (=> d!80404 m!349987))

(declare-fun m!349989 () Bool)

(assert (=> d!80404 m!349989))

(declare-fun m!349991 () Bool)

(assert (=> b!274365 m!349991))

(assert (=> b!273643 d!80404))

(declare-fun d!80406 () Bool)

(assert (=> d!80406 (= (isEmpty!2449 rules!1920) ((_ is Nil!3839) rules!1920))))

(assert (=> b!273622 d!80406))

(declare-fun b!274366 () Bool)

(declare-fun e!170460 () Bool)

(assert (=> b!274366 (= e!170460 (inv!15 (value!25206 separatorToken!170)))))

(declare-fun b!274367 () Bool)

(declare-fun e!170461 () Bool)

(assert (=> b!274367 (= e!170461 (inv!16 (value!25206 separatorToken!170)))))

(declare-fun b!274368 () Bool)

(declare-fun res!125182 () Bool)

(assert (=> b!274368 (=> res!125182 e!170460)))

(assert (=> b!274368 (= res!125182 (not ((_ is IntegerValue!2267) (value!25206 separatorToken!170))))))

(declare-fun e!170462 () Bool)

(assert (=> b!274368 (= e!170462 e!170460)))

(declare-fun d!80408 () Bool)

(declare-fun c!52017 () Bool)

(assert (=> d!80408 (= c!52017 ((_ is IntegerValue!2265) (value!25206 separatorToken!170)))))

(assert (=> d!80408 (= (inv!21 (value!25206 separatorToken!170)) e!170461)))

(declare-fun b!274369 () Bool)

(assert (=> b!274369 (= e!170461 e!170462)))

(declare-fun c!52018 () Bool)

(assert (=> b!274369 (= c!52018 ((_ is IntegerValue!2266) (value!25206 separatorToken!170)))))

(declare-fun b!274370 () Bool)

(assert (=> b!274370 (= e!170462 (inv!17 (value!25206 separatorToken!170)))))

(assert (= (and d!80408 c!52017) b!274367))

(assert (= (and d!80408 (not c!52017)) b!274369))

(assert (= (and b!274369 c!52018) b!274370))

(assert (= (and b!274369 (not c!52018)) b!274368))

(assert (= (and b!274368 (not res!125182)) b!274366))

(declare-fun m!349993 () Bool)

(assert (=> b!274366 m!349993))

(declare-fun m!349995 () Bool)

(assert (=> b!274367 m!349995))

(declare-fun m!349997 () Bool)

(assert (=> b!274370 m!349997))

(assert (=> b!273647 d!80408))

(declare-fun d!80410 () Bool)

(assert (=> d!80410 (= (inv!4752 (tag!943 (h!9236 rules!1920))) (= (mod (str.len (value!25205 (tag!943 (h!9236 rules!1920)))) 2) 0))))

(assert (=> b!273626 d!80410))

(declare-fun d!80412 () Bool)

(declare-fun res!125185 () Bool)

(declare-fun e!170465 () Bool)

(assert (=> d!80412 (=> (not res!125185) (not e!170465))))

(declare-fun semiInverseModEq!261 (Int Int) Bool)

(assert (=> d!80412 (= res!125185 (semiInverseModEq!261 (toChars!1335 (transformation!733 (h!9236 rules!1920))) (toValue!1476 (transformation!733 (h!9236 rules!1920)))))))

(assert (=> d!80412 (= (inv!4755 (transformation!733 (h!9236 rules!1920))) e!170465)))

(declare-fun b!274373 () Bool)

(declare-fun equivClasses!244 (Int Int) Bool)

(assert (=> b!274373 (= e!170465 (equivClasses!244 (toChars!1335 (transformation!733 (h!9236 rules!1920))) (toValue!1476 (transformation!733 (h!9236 rules!1920)))))))

(assert (= (and d!80412 res!125185) b!274373))

(declare-fun m!349999 () Bool)

(assert (=> d!80412 m!349999))

(declare-fun m!350001 () Bool)

(assert (=> b!274373 m!350001))

(assert (=> b!273626 d!80412))

(declare-fun d!80414 () Bool)

(assert (=> d!80414 (= (isDefined!663 lt!113325) (not (isEmpty!2457 lt!113325)))))

(declare-fun bs!30811 () Bool)

(assert (= bs!30811 d!80414))

(declare-fun m!350003 () Bool)

(assert (=> bs!30811 m!350003))

(assert (=> b!273624 d!80414))

(assert (=> b!273624 d!80284))

(declare-fun d!80416 () Bool)

(declare-fun e!170468 () Bool)

(assert (=> d!80416 e!170468))

(declare-fun res!125188 () Bool)

(assert (=> d!80416 (=> (not res!125188) (not e!170468))))

(declare-fun lt!113711 () BalanceConc!2586)

(assert (=> d!80416 (= res!125188 (= (list!1581 lt!113711) (Cons!3840 (h!9237 tokens!465) Nil!3840)))))

(declare-fun singleton!116 (Token!1210) BalanceConc!2586)

(assert (=> d!80416 (= lt!113711 (singleton!116 (h!9237 tokens!465)))))

(assert (=> d!80416 (= (singletonSeq!279 (h!9237 tokens!465)) lt!113711)))

(declare-fun b!274376 () Bool)

(declare-fun isBalanced!357 (Conc!1289) Bool)

(assert (=> b!274376 (= e!170468 (isBalanced!357 (c!51886 lt!113711)))))

(assert (= (and d!80416 res!125188) b!274376))

(declare-fun m!350005 () Bool)

(assert (=> d!80416 m!350005))

(declare-fun m!350007 () Bool)

(assert (=> d!80416 m!350007))

(declare-fun m!350009 () Bool)

(assert (=> b!274376 m!350009))

(assert (=> b!273625 d!80416))

(declare-fun d!80418 () Bool)

(assert (=> d!80418 (= (list!1577 lt!113324) (list!1580 (c!51884 lt!113324)))))

(declare-fun bs!30812 () Bool)

(assert (= bs!30812 d!80418))

(declare-fun m!350011 () Bool)

(assert (=> bs!30812 m!350011))

(assert (=> b!273625 d!80418))

(declare-fun d!80420 () Bool)

(declare-fun c!52021 () Bool)

(assert (=> d!80420 (= c!52021 ((_ is Cons!3840) lt!113337))))

(declare-fun e!170471 () List!3848)

(assert (=> d!80420 (= (printList!295 thiss!17480 lt!113337) e!170471)))

(declare-fun b!274381 () Bool)

(assert (=> b!274381 (= e!170471 (++!1010 (list!1577 (charsOf!378 (h!9237 lt!113337))) (printList!295 thiss!17480 (t!38872 lt!113337))))))

(declare-fun b!274382 () Bool)

(assert (=> b!274382 (= e!170471 Nil!3838)))

(assert (= (and d!80420 c!52021) b!274381))

(assert (= (and d!80420 (not c!52021)) b!274382))

(declare-fun m!350013 () Bool)

(assert (=> b!274381 m!350013))

(assert (=> b!274381 m!350013))

(declare-fun m!350015 () Bool)

(assert (=> b!274381 m!350015))

(declare-fun m!350017 () Bool)

(assert (=> b!274381 m!350017))

(assert (=> b!274381 m!350015))

(assert (=> b!274381 m!350017))

(declare-fun m!350019 () Bool)

(assert (=> b!274381 m!350019))

(assert (=> b!273625 d!80420))

(declare-fun d!80422 () Bool)

(declare-fun lt!113728 () BalanceConc!2584)

(declare-fun printListTailRec!132 (LexerInterface!619 List!3850 List!3848) List!3848)

(assert (=> d!80422 (= (list!1577 lt!113728) (printListTailRec!132 thiss!17480 (dropList!166 lt!113344 0) (list!1577 (BalanceConc!2585 Empty!1288))))))

(declare-fun e!170477 () BalanceConc!2584)

(assert (=> d!80422 (= lt!113728 e!170477)))

(declare-fun c!52024 () Bool)

(assert (=> d!80422 (= c!52024 (>= 0 (size!3070 lt!113344)))))

(declare-fun e!170476 () Bool)

(assert (=> d!80422 e!170476))

(declare-fun res!125191 () Bool)

(assert (=> d!80422 (=> (not res!125191) (not e!170476))))

(assert (=> d!80422 (= res!125191 (>= 0 0))))

(assert (=> d!80422 (= (printTailRec!307 thiss!17480 lt!113344 0 (BalanceConc!2585 Empty!1288)) lt!113728)))

(declare-fun b!274389 () Bool)

(assert (=> b!274389 (= e!170476 (<= 0 (size!3070 lt!113344)))))

(declare-fun b!274390 () Bool)

(assert (=> b!274390 (= e!170477 (BalanceConc!2585 Empty!1288))))

(declare-fun b!274391 () Bool)

(assert (=> b!274391 (= e!170477 (printTailRec!307 thiss!17480 lt!113344 (+ 0 1) (++!1012 (BalanceConc!2585 Empty!1288) (charsOf!378 (apply!781 lt!113344 0)))))))

(declare-fun lt!113727 () List!3850)

(assert (=> b!274391 (= lt!113727 (list!1581 lt!113344))))

(declare-fun lt!113729 () Unit!4998)

(assert (=> b!274391 (= lt!113729 (lemmaDropApply!206 lt!113727 0))))

(assert (=> b!274391 (= (head!892 (drop!219 lt!113727 0)) (apply!782 lt!113727 0))))

(declare-fun lt!113730 () Unit!4998)

(assert (=> b!274391 (= lt!113730 lt!113729)))

(declare-fun lt!113732 () List!3850)

(assert (=> b!274391 (= lt!113732 (list!1581 lt!113344))))

(declare-fun lt!113726 () Unit!4998)

(assert (=> b!274391 (= lt!113726 (lemmaDropTail!198 lt!113732 0))))

(assert (=> b!274391 (= (tail!483 (drop!219 lt!113732 0)) (drop!219 lt!113732 (+ 0 1)))))

(declare-fun lt!113731 () Unit!4998)

(assert (=> b!274391 (= lt!113731 lt!113726)))

(assert (= (and d!80422 res!125191) b!274389))

(assert (= (and d!80422 c!52024) b!274390))

(assert (= (and d!80422 (not c!52024)) b!274391))

(declare-fun m!350021 () Bool)

(assert (=> d!80422 m!350021))

(declare-fun m!350023 () Bool)

(assert (=> d!80422 m!350023))

(declare-fun m!350025 () Bool)

(assert (=> d!80422 m!350025))

(declare-fun m!350027 () Bool)

(assert (=> d!80422 m!350027))

(assert (=> d!80422 m!350021))

(assert (=> d!80422 m!350023))

(declare-fun m!350029 () Bool)

(assert (=> d!80422 m!350029))

(assert (=> b!274389 m!350029))

(declare-fun m!350031 () Bool)

(assert (=> b!274391 m!350031))

(declare-fun m!350033 () Bool)

(assert (=> b!274391 m!350033))

(declare-fun m!350035 () Bool)

(assert (=> b!274391 m!350035))

(declare-fun m!350037 () Bool)

(assert (=> b!274391 m!350037))

(declare-fun m!350039 () Bool)

(assert (=> b!274391 m!350039))

(declare-fun m!350041 () Bool)

(assert (=> b!274391 m!350041))

(declare-fun m!350043 () Bool)

(assert (=> b!274391 m!350043))

(assert (=> b!274391 m!350033))

(declare-fun m!350045 () Bool)

(assert (=> b!274391 m!350045))

(assert (=> b!274391 m!350031))

(assert (=> b!274391 m!350039))

(declare-fun m!350047 () Bool)

(assert (=> b!274391 m!350047))

(assert (=> b!274391 m!350035))

(declare-fun m!350049 () Bool)

(assert (=> b!274391 m!350049))

(declare-fun m!350051 () Bool)

(assert (=> b!274391 m!350051))

(declare-fun m!350053 () Bool)

(assert (=> b!274391 m!350053))

(assert (=> b!274391 m!350045))

(declare-fun m!350055 () Bool)

(assert (=> b!274391 m!350055))

(assert (=> b!273625 d!80422))

(declare-fun d!80424 () Bool)

(declare-fun lt!113735 () BalanceConc!2584)

(assert (=> d!80424 (= (list!1577 lt!113735) (printList!295 thiss!17480 (list!1581 lt!113344)))))

(assert (=> d!80424 (= lt!113735 (printTailRec!307 thiss!17480 lt!113344 0 (BalanceConc!2585 Empty!1288)))))

(assert (=> d!80424 (= (print!344 thiss!17480 lt!113344) lt!113735)))

(declare-fun bs!30813 () Bool)

(assert (= bs!30813 d!80424))

(declare-fun m!350057 () Bool)

(assert (=> bs!30813 m!350057))

(assert (=> bs!30813 m!350041))

(assert (=> bs!30813 m!350041))

(declare-fun m!350059 () Bool)

(assert (=> bs!30813 m!350059))

(assert (=> bs!30813 m!348873))

(assert (=> b!273625 d!80424))

(declare-fun d!80426 () Bool)

(assert (=> d!80426 (= (inv!4752 (tag!943 (rule!1320 separatorToken!170))) (= (mod (str.len (value!25205 (tag!943 (rule!1320 separatorToken!170)))) 2) 0))))

(assert (=> b!273646 d!80426))

(declare-fun d!80428 () Bool)

(declare-fun res!125192 () Bool)

(declare-fun e!170478 () Bool)

(assert (=> d!80428 (=> (not res!125192) (not e!170478))))

(assert (=> d!80428 (= res!125192 (semiInverseModEq!261 (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (toValue!1476 (transformation!733 (rule!1320 separatorToken!170)))))))

(assert (=> d!80428 (= (inv!4755 (transformation!733 (rule!1320 separatorToken!170))) e!170478)))

(declare-fun b!274392 () Bool)

(assert (=> b!274392 (= e!170478 (equivClasses!244 (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (toValue!1476 (transformation!733 (rule!1320 separatorToken!170)))))))

(assert (= (and d!80428 res!125192) b!274392))

(declare-fun m!350061 () Bool)

(assert (=> d!80428 m!350061))

(declare-fun m!350063 () Bool)

(assert (=> b!274392 m!350063))

(assert (=> b!273646 d!80428))

(declare-fun d!80430 () Bool)

(assert (=> d!80430 (= (get!1276 lt!113333) (v!14696 lt!113333))))

(assert (=> b!273628 d!80430))

(declare-fun d!80432 () Bool)

(assert (=> d!80432 (= (isDefined!663 lt!113333) (not (isEmpty!2457 lt!113333)))))

(declare-fun bs!30814 () Bool)

(assert (= bs!30814 d!80432))

(declare-fun m!350065 () Bool)

(assert (=> bs!30814 m!350065))

(assert (=> b!273628 d!80432))

(declare-fun b!274393 () Bool)

(declare-fun res!125199 () Bool)

(declare-fun e!170479 () Bool)

(assert (=> b!274393 (=> (not res!125199) (not e!170479))))

(declare-fun lt!113737 () Option!820)

(assert (=> b!274393 (= res!125199 (= (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113737)))) (originalCharacters!776 (_1!2375 (get!1276 lt!113737)))))))

(declare-fun d!80434 () Bool)

(declare-fun e!170481 () Bool)

(assert (=> d!80434 e!170481))

(declare-fun res!125196 () Bool)

(assert (=> d!80434 (=> res!125196 e!170481)))

(assert (=> d!80434 (= res!125196 (isEmpty!2457 lt!113737))))

(declare-fun e!170480 () Option!820)

(assert (=> d!80434 (= lt!113737 e!170480)))

(declare-fun c!52025 () Bool)

(assert (=> d!80434 (= c!52025 (and ((_ is Cons!3839) rules!1920) ((_ is Nil!3839) (t!38871 rules!1920))))))

(declare-fun lt!113736 () Unit!4998)

(declare-fun lt!113739 () Unit!4998)

(assert (=> d!80434 (= lt!113736 lt!113739)))

(assert (=> d!80434 (isPrefix!401 lt!113327 lt!113327)))

(assert (=> d!80434 (= lt!113739 (lemmaIsPrefixRefl!211 lt!113327 lt!113327))))

(assert (=> d!80434 (rulesValidInductive!206 thiss!17480 rules!1920)))

(assert (=> d!80434 (= (maxPrefix!337 thiss!17480 rules!1920 lt!113327) lt!113737)))

(declare-fun b!274394 () Bool)

(declare-fun res!125195 () Bool)

(assert (=> b!274394 (=> (not res!125195) (not e!170479))))

(assert (=> b!274394 (= res!125195 (= (value!25206 (_1!2375 (get!1276 lt!113737))) (apply!784 (transformation!733 (rule!1320 (_1!2375 (get!1276 lt!113737)))) (seqFromList!833 (originalCharacters!776 (_1!2375 (get!1276 lt!113737)))))))))

(declare-fun b!274395 () Bool)

(declare-fun res!125198 () Bool)

(assert (=> b!274395 (=> (not res!125198) (not e!170479))))

(assert (=> b!274395 (= res!125198 (matchR!279 (regex!733 (rule!1320 (_1!2375 (get!1276 lt!113737)))) (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113737))))))))

(declare-fun b!274396 () Bool)

(declare-fun lt!113740 () Option!820)

(declare-fun lt!113738 () Option!820)

(assert (=> b!274396 (= e!170480 (ite (and ((_ is None!819) lt!113740) ((_ is None!819) lt!113738)) None!819 (ite ((_ is None!819) lt!113738) lt!113740 (ite ((_ is None!819) lt!113740) lt!113738 (ite (>= (size!3065 (_1!2375 (v!14696 lt!113740))) (size!3065 (_1!2375 (v!14696 lt!113738)))) lt!113740 lt!113738)))))))

(declare-fun call!15094 () Option!820)

(assert (=> b!274396 (= lt!113740 call!15094)))

(assert (=> b!274396 (= lt!113738 (maxPrefix!337 thiss!17480 (t!38871 rules!1920) lt!113327))))

(declare-fun b!274397 () Bool)

(declare-fun res!125194 () Bool)

(assert (=> b!274397 (=> (not res!125194) (not e!170479))))

(assert (=> b!274397 (= res!125194 (= (++!1010 (list!1577 (charsOf!378 (_1!2375 (get!1276 lt!113737)))) (_2!2375 (get!1276 lt!113737))) lt!113327))))

(declare-fun b!274398 () Bool)

(declare-fun res!125197 () Bool)

(assert (=> b!274398 (=> (not res!125197) (not e!170479))))

(assert (=> b!274398 (= res!125197 (< (size!3069 (_2!2375 (get!1276 lt!113737))) (size!3069 lt!113327)))))

(declare-fun b!274399 () Bool)

(assert (=> b!274399 (= e!170480 call!15094)))

(declare-fun b!274400 () Bool)

(assert (=> b!274400 (= e!170481 e!170479)))

(declare-fun res!125193 () Bool)

(assert (=> b!274400 (=> (not res!125193) (not e!170479))))

(assert (=> b!274400 (= res!125193 (isDefined!663 lt!113737))))

(declare-fun b!274401 () Bool)

(assert (=> b!274401 (= e!170479 (contains!729 rules!1920 (rule!1320 (_1!2375 (get!1276 lt!113737)))))))

(declare-fun bm!15089 () Bool)

(assert (=> bm!15089 (= call!15094 (maxPrefixOneRule!145 thiss!17480 (h!9236 rules!1920) lt!113327))))

(assert (= (and d!80434 c!52025) b!274399))

(assert (= (and d!80434 (not c!52025)) b!274396))

(assert (= (or b!274399 b!274396) bm!15089))

(assert (= (and d!80434 (not res!125196)) b!274400))

(assert (= (and b!274400 res!125193) b!274393))

(assert (= (and b!274393 res!125199) b!274398))

(assert (= (and b!274398 res!125197) b!274397))

(assert (= (and b!274397 res!125194) b!274394))

(assert (= (and b!274394 res!125195) b!274395))

(assert (= (and b!274395 res!125198) b!274401))

(declare-fun m!350067 () Bool)

(assert (=> d!80434 m!350067))

(declare-fun m!350069 () Bool)

(assert (=> d!80434 m!350069))

(declare-fun m!350071 () Bool)

(assert (=> d!80434 m!350071))

(assert (=> d!80434 m!349559))

(declare-fun m!350073 () Bool)

(assert (=> b!274397 m!350073))

(declare-fun m!350075 () Bool)

(assert (=> b!274397 m!350075))

(assert (=> b!274397 m!350075))

(declare-fun m!350077 () Bool)

(assert (=> b!274397 m!350077))

(assert (=> b!274397 m!350077))

(declare-fun m!350079 () Bool)

(assert (=> b!274397 m!350079))

(declare-fun m!350081 () Bool)

(assert (=> b!274396 m!350081))

(declare-fun m!350083 () Bool)

(assert (=> b!274400 m!350083))

(assert (=> b!274394 m!350073))

(declare-fun m!350085 () Bool)

(assert (=> b!274394 m!350085))

(assert (=> b!274394 m!350085))

(declare-fun m!350087 () Bool)

(assert (=> b!274394 m!350087))

(assert (=> b!274395 m!350073))

(assert (=> b!274395 m!350075))

(assert (=> b!274395 m!350075))

(assert (=> b!274395 m!350077))

(assert (=> b!274395 m!350077))

(declare-fun m!350089 () Bool)

(assert (=> b!274395 m!350089))

(assert (=> b!274398 m!350073))

(declare-fun m!350091 () Bool)

(assert (=> b!274398 m!350091))

(assert (=> b!274398 m!348961))

(assert (=> b!274393 m!350073))

(assert (=> b!274393 m!350075))

(assert (=> b!274393 m!350075))

(assert (=> b!274393 m!350077))

(declare-fun m!350093 () Bool)

(assert (=> bm!15089 m!350093))

(assert (=> b!274401 m!350073))

(declare-fun m!350095 () Bool)

(assert (=> b!274401 m!350095))

(assert (=> b!273628 d!80434))

(declare-fun lt!113743 () Bool)

(declare-fun d!80436 () Bool)

(assert (=> d!80436 (= lt!113743 (isEmpty!2451 (list!1581 (_1!2376 (lex!411 thiss!17480 rules!1920 (seqFromList!833 lt!113327))))))))

(declare-fun isEmpty!2460 (Conc!1289) Bool)

(assert (=> d!80436 (= lt!113743 (isEmpty!2460 (c!51886 (_1!2376 (lex!411 thiss!17480 rules!1920 (seqFromList!833 lt!113327))))))))

(assert (=> d!80436 (= (isEmpty!2450 (_1!2376 (lex!411 thiss!17480 rules!1920 (seqFromList!833 lt!113327)))) lt!113743)))

(declare-fun bs!30815 () Bool)

(assert (= bs!30815 d!80436))

(declare-fun m!350097 () Bool)

(assert (=> bs!30815 m!350097))

(assert (=> bs!30815 m!350097))

(declare-fun m!350099 () Bool)

(assert (=> bs!30815 m!350099))

(declare-fun m!350101 () Bool)

(assert (=> bs!30815 m!350101))

(assert (=> b!273629 d!80436))

(declare-fun b!274412 () Bool)

(declare-fun e!170490 () Bool)

(declare-fun e!170489 () Bool)

(assert (=> b!274412 (= e!170490 e!170489)))

(declare-fun res!125206 () Bool)

(declare-fun lt!113746 () tuple2!4320)

(declare-fun size!3071 (BalanceConc!2584) Int)

(assert (=> b!274412 (= res!125206 (< (size!3071 (_2!2376 lt!113746)) (size!3071 (seqFromList!833 lt!113327))))))

(assert (=> b!274412 (=> (not res!125206) (not e!170489))))

(declare-fun e!170488 () Bool)

(declare-fun b!274413 () Bool)

(declare-datatypes ((tuple2!4326 0))(
  ( (tuple2!4327 (_1!2379 List!3850) (_2!2379 List!3848)) )
))
(declare-fun lexList!211 (LexerInterface!619 List!3849 List!3848) tuple2!4326)

(assert (=> b!274413 (= e!170488 (= (list!1577 (_2!2376 lt!113746)) (_2!2379 (lexList!211 thiss!17480 rules!1920 (list!1577 (seqFromList!833 lt!113327))))))))

(declare-fun d!80438 () Bool)

(assert (=> d!80438 e!170488))

(declare-fun res!125208 () Bool)

(assert (=> d!80438 (=> (not res!125208) (not e!170488))))

(assert (=> d!80438 (= res!125208 e!170490)))

(declare-fun c!52028 () Bool)

(assert (=> d!80438 (= c!52028 (> (size!3070 (_1!2376 lt!113746)) 0))))

(declare-fun lexTailRecV2!178 (LexerInterface!619 List!3849 BalanceConc!2584 BalanceConc!2584 BalanceConc!2584 BalanceConc!2586) tuple2!4320)

(assert (=> d!80438 (= lt!113746 (lexTailRecV2!178 thiss!17480 rules!1920 (seqFromList!833 lt!113327) (BalanceConc!2585 Empty!1288) (seqFromList!833 lt!113327) (BalanceConc!2587 Empty!1289)))))

(assert (=> d!80438 (= (lex!411 thiss!17480 rules!1920 (seqFromList!833 lt!113327)) lt!113746)))

(declare-fun b!274414 () Bool)

(declare-fun res!125207 () Bool)

(assert (=> b!274414 (=> (not res!125207) (not e!170488))))

(assert (=> b!274414 (= res!125207 (= (list!1581 (_1!2376 lt!113746)) (_1!2379 (lexList!211 thiss!17480 rules!1920 (list!1577 (seqFromList!833 lt!113327))))))))

(declare-fun b!274415 () Bool)

(assert (=> b!274415 (= e!170490 (= (_2!2376 lt!113746) (seqFromList!833 lt!113327)))))

(declare-fun b!274416 () Bool)

(assert (=> b!274416 (= e!170489 (not (isEmpty!2450 (_1!2376 lt!113746))))))

(assert (= (and d!80438 c!52028) b!274412))

(assert (= (and d!80438 (not c!52028)) b!274415))

(assert (= (and b!274412 res!125206) b!274416))

(assert (= (and d!80438 res!125208) b!274414))

(assert (= (and b!274414 res!125207) b!274413))

(declare-fun m!350103 () Bool)

(assert (=> b!274416 m!350103))

(declare-fun m!350105 () Bool)

(assert (=> b!274412 m!350105))

(assert (=> b!274412 m!348829))

(declare-fun m!350107 () Bool)

(assert (=> b!274412 m!350107))

(declare-fun m!350109 () Bool)

(assert (=> d!80438 m!350109))

(assert (=> d!80438 m!348829))

(assert (=> d!80438 m!348829))

(declare-fun m!350111 () Bool)

(assert (=> d!80438 m!350111))

(declare-fun m!350113 () Bool)

(assert (=> b!274414 m!350113))

(assert (=> b!274414 m!348829))

(declare-fun m!350115 () Bool)

(assert (=> b!274414 m!350115))

(assert (=> b!274414 m!350115))

(declare-fun m!350117 () Bool)

(assert (=> b!274414 m!350117))

(declare-fun m!350119 () Bool)

(assert (=> b!274413 m!350119))

(assert (=> b!274413 m!348829))

(assert (=> b!274413 m!350115))

(assert (=> b!274413 m!350115))

(assert (=> b!274413 m!350117))

(assert (=> b!273629 d!80438))

(declare-fun d!80440 () Bool)

(assert (=> d!80440 (= (seqFromList!833 lt!113327) (fromListB!325 lt!113327))))

(declare-fun bs!30816 () Bool)

(assert (= bs!30816 d!80440))

(declare-fun m!350121 () Bool)

(assert (=> bs!30816 m!350121))

(assert (=> b!273629 d!80440))

(declare-fun d!80442 () Bool)

(declare-fun lt!113747 () Bool)

(declare-fun e!170492 () Bool)

(assert (=> d!80442 (= lt!113747 e!170492)))

(declare-fun res!125211 () Bool)

(assert (=> d!80442 (=> (not res!125211) (not e!170492))))

(assert (=> d!80442 (= res!125211 (= (list!1581 (_1!2376 (lex!411 thiss!17480 rules!1920 (print!344 thiss!17480 (singletonSeq!279 (h!9237 tokens!465)))))) (list!1581 (singletonSeq!279 (h!9237 tokens!465)))))))

(declare-fun e!170491 () Bool)

(assert (=> d!80442 (= lt!113747 e!170491)))

(declare-fun res!125209 () Bool)

(assert (=> d!80442 (=> (not res!125209) (not e!170491))))

(declare-fun lt!113748 () tuple2!4320)

(assert (=> d!80442 (= res!125209 (= (size!3070 (_1!2376 lt!113748)) 1))))

(assert (=> d!80442 (= lt!113748 (lex!411 thiss!17480 rules!1920 (print!344 thiss!17480 (singletonSeq!279 (h!9237 tokens!465)))))))

(assert (=> d!80442 (not (isEmpty!2449 rules!1920))))

(assert (=> d!80442 (= (rulesProduceIndividualToken!368 thiss!17480 rules!1920 (h!9237 tokens!465)) lt!113747)))

(declare-fun b!274417 () Bool)

(declare-fun res!125210 () Bool)

(assert (=> b!274417 (=> (not res!125210) (not e!170491))))

(assert (=> b!274417 (= res!125210 (= (apply!781 (_1!2376 lt!113748) 0) (h!9237 tokens!465)))))

(declare-fun b!274418 () Bool)

(assert (=> b!274418 (= e!170491 (isEmpty!2455 (_2!2376 lt!113748)))))

(declare-fun b!274419 () Bool)

(assert (=> b!274419 (= e!170492 (isEmpty!2455 (_2!2376 (lex!411 thiss!17480 rules!1920 (print!344 thiss!17480 (singletonSeq!279 (h!9237 tokens!465)))))))))

(assert (= (and d!80442 res!125209) b!274417))

(assert (= (and b!274417 res!125210) b!274418))

(assert (= (and d!80442 res!125211) b!274419))

(declare-fun m!350123 () Bool)

(assert (=> d!80442 m!350123))

(assert (=> d!80442 m!348875))

(declare-fun m!350125 () Bool)

(assert (=> d!80442 m!350125))

(assert (=> d!80442 m!348875))

(assert (=> d!80442 m!349177))

(assert (=> d!80442 m!348875))

(assert (=> d!80442 m!349177))

(declare-fun m!350127 () Bool)

(assert (=> d!80442 m!350127))

(declare-fun m!350129 () Bool)

(assert (=> d!80442 m!350129))

(assert (=> d!80442 m!348941))

(declare-fun m!350131 () Bool)

(assert (=> b!274417 m!350131))

(declare-fun m!350133 () Bool)

(assert (=> b!274418 m!350133))

(assert (=> b!274419 m!348875))

(assert (=> b!274419 m!348875))

(assert (=> b!274419 m!349177))

(assert (=> b!274419 m!349177))

(assert (=> b!274419 m!350127))

(declare-fun m!350135 () Bool)

(assert (=> b!274419 m!350135))

(assert (=> b!273650 d!80442))

(declare-fun d!80444 () Bool)

(declare-fun res!125212 () Bool)

(declare-fun e!170493 () Bool)

(assert (=> d!80444 (=> (not res!125212) (not e!170493))))

(assert (=> d!80444 (= res!125212 (not (isEmpty!2452 (originalCharacters!776 separatorToken!170))))))

(assert (=> d!80444 (= (inv!4756 separatorToken!170) e!170493)))

(declare-fun b!274420 () Bool)

(declare-fun res!125213 () Bool)

(assert (=> b!274420 (=> (not res!125213) (not e!170493))))

(assert (=> b!274420 (= res!125213 (= (originalCharacters!776 separatorToken!170) (list!1577 (dynLambda!1987 (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (value!25206 separatorToken!170)))))))

(declare-fun b!274421 () Bool)

(assert (=> b!274421 (= e!170493 (= (size!3065 separatorToken!170) (size!3069 (originalCharacters!776 separatorToken!170))))))

(assert (= (and d!80444 res!125212) b!274420))

(assert (= (and b!274420 res!125213) b!274421))

(declare-fun b_lambda!8825 () Bool)

(assert (=> (not b_lambda!8825) (not b!274420)))

(assert (=> b!274420 t!38914))

(declare-fun b_and!22019 () Bool)

(assert (= b_and!22005 (and (=> t!38914 result!19354) b_and!22019)))

(assert (=> b!274420 t!38916))

(declare-fun b_and!22021 () Bool)

(assert (= b_and!22007 (and (=> t!38916 result!19356) b_and!22021)))

(assert (=> b!274420 t!38918))

(declare-fun b_and!22023 () Bool)

(assert (= b_and!22009 (and (=> t!38918 result!19358) b_and!22023)))

(declare-fun m!350137 () Bool)

(assert (=> d!80444 m!350137))

(assert (=> b!274420 m!349739))

(assert (=> b!274420 m!349739))

(declare-fun m!350139 () Bool)

(assert (=> b!274420 m!350139))

(declare-fun m!350141 () Bool)

(assert (=> b!274421 m!350141))

(assert (=> start!29458 d!80444))

(declare-fun d!80446 () Bool)

(assert (=> d!80446 (= (list!1577 (seqFromList!833 lt!113329)) (list!1580 (c!51884 (seqFromList!833 lt!113329))))))

(declare-fun bs!30817 () Bool)

(assert (= bs!30817 d!80446))

(declare-fun m!350143 () Bool)

(assert (=> bs!30817 m!350143))

(assert (=> b!273627 d!80446))

(declare-fun d!80448 () Bool)

(assert (=> d!80448 (= (seqFromList!833 lt!113329) (fromListB!325 lt!113329))))

(declare-fun bs!30818 () Bool)

(assert (= bs!30818 d!80448))

(declare-fun m!350145 () Bool)

(assert (=> bs!30818 m!350145))

(assert (=> b!273627 d!80448))

(declare-fun d!80450 () Bool)

(assert (=> d!80450 (= (inv!4752 (tag!943 (rule!1320 (h!9237 tokens!465)))) (= (mod (str.len (value!25205 (tag!943 (rule!1320 (h!9237 tokens!465))))) 2) 0))))

(assert (=> b!273648 d!80450))

(declare-fun d!80452 () Bool)

(declare-fun res!125214 () Bool)

(declare-fun e!170494 () Bool)

(assert (=> d!80452 (=> (not res!125214) (not e!170494))))

(assert (=> d!80452 (= res!125214 (semiInverseModEq!261 (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (toValue!1476 (transformation!733 (rule!1320 (h!9237 tokens!465))))))))

(assert (=> d!80452 (= (inv!4755 (transformation!733 (rule!1320 (h!9237 tokens!465)))) e!170494)))

(declare-fun b!274422 () Bool)

(assert (=> b!274422 (= e!170494 (equivClasses!244 (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (toValue!1476 (transformation!733 (rule!1320 (h!9237 tokens!465))))))))

(assert (= (and d!80452 res!125214) b!274422))

(declare-fun m!350147 () Bool)

(assert (=> d!80452 m!350147))

(declare-fun m!350149 () Bool)

(assert (=> b!274422 m!350149))

(assert (=> b!273648 d!80452))

(declare-fun b!274433 () Bool)

(declare-fun b_free!10125 () Bool)

(declare-fun b_next!10125 () Bool)

(assert (=> b!274433 (= b_free!10125 (not b_next!10125))))

(declare-fun tp!103231 () Bool)

(declare-fun b_and!22025 () Bool)

(assert (=> b!274433 (= tp!103231 b_and!22025)))

(declare-fun b_free!10127 () Bool)

(declare-fun b_next!10127 () Bool)

(assert (=> b!274433 (= b_free!10127 (not b_next!10127))))

(declare-fun tb!15733 () Bool)

(declare-fun t!38930 () Bool)

(assert (=> (and b!274433 (= (toChars!1335 (transformation!733 (h!9236 (t!38871 rules!1920)))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465))))) t!38930) tb!15733))

(declare-fun result!19378 () Bool)

(assert (= result!19378 result!19346))

(assert (=> b!274194 t!38930))

(declare-fun t!38932 () Bool)

(declare-fun tb!15735 () Bool)

(assert (=> (and b!274433 (= (toChars!1335 (transformation!733 (h!9236 (t!38871 rules!1920)))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170)))) t!38932) tb!15735))

(declare-fun result!19380 () Bool)

(assert (= result!19380 result!19354))

(assert (=> d!80364 t!38932))

(assert (=> d!80368 t!38930))

(assert (=> b!274420 t!38932))

(declare-fun tp!103229 () Bool)

(declare-fun b_and!22027 () Bool)

(assert (=> b!274433 (= tp!103229 (and (=> t!38930 result!19378) (=> t!38932 result!19380) b_and!22027))))

(declare-fun e!170503 () Bool)

(assert (=> b!274433 (= e!170503 (and tp!103231 tp!103229))))

(declare-fun tp!103230 () Bool)

(declare-fun e!170505 () Bool)

(declare-fun b!274432 () Bool)

(assert (=> b!274432 (= e!170505 (and tp!103230 (inv!4752 (tag!943 (h!9236 (t!38871 rules!1920)))) (inv!4755 (transformation!733 (h!9236 (t!38871 rules!1920)))) e!170503))))

(declare-fun b!274431 () Bool)

(declare-fun e!170504 () Bool)

(declare-fun tp!103228 () Bool)

(assert (=> b!274431 (= e!170504 (and e!170505 tp!103228))))

(assert (=> b!273640 (= tp!103155 e!170504)))

(assert (= b!274432 b!274433))

(assert (= b!274431 b!274432))

(assert (= (and b!273640 ((_ is Cons!3839) (t!38871 rules!1920))) b!274431))

(declare-fun m!350151 () Bool)

(assert (=> b!274432 m!350151))

(declare-fun m!350153 () Bool)

(assert (=> b!274432 m!350153))

(declare-fun b!274438 () Bool)

(declare-fun e!170509 () Bool)

(declare-fun tp_is_empty!1819 () Bool)

(declare-fun tp!103234 () Bool)

(assert (=> b!274438 (= e!170509 (and tp_is_empty!1819 tp!103234))))

(assert (=> b!273633 (= tp!103147 e!170509)))

(assert (= (and b!273633 ((_ is Cons!3838) (originalCharacters!776 (h!9237 tokens!465)))) b!274438))

(declare-fun b!274439 () Bool)

(declare-fun e!170510 () Bool)

(declare-fun tp!103235 () Bool)

(assert (=> b!274439 (= e!170510 (and tp_is_empty!1819 tp!103235))))

(assert (=> b!273647 (= tp!103145 e!170510)))

(assert (= (and b!273647 ((_ is Cons!3838) (originalCharacters!776 separatorToken!170))) b!274439))

(declare-fun b!274450 () Bool)

(declare-fun e!170513 () Bool)

(assert (=> b!274450 (= e!170513 tp_is_empty!1819)))

(declare-fun b!274453 () Bool)

(declare-fun tp!103249 () Bool)

(declare-fun tp!103250 () Bool)

(assert (=> b!274453 (= e!170513 (and tp!103249 tp!103250))))

(declare-fun b!274451 () Bool)

(declare-fun tp!103247 () Bool)

(declare-fun tp!103246 () Bool)

(assert (=> b!274451 (= e!170513 (and tp!103247 tp!103246))))

(assert (=> b!273626 (= tp!103146 e!170513)))

(declare-fun b!274452 () Bool)

(declare-fun tp!103248 () Bool)

(assert (=> b!274452 (= e!170513 tp!103248)))

(assert (= (and b!273626 ((_ is ElementMatch!957) (regex!733 (h!9236 rules!1920)))) b!274450))

(assert (= (and b!273626 ((_ is Concat!1713) (regex!733 (h!9236 rules!1920)))) b!274451))

(assert (= (and b!273626 ((_ is Star!957) (regex!733 (h!9236 rules!1920)))) b!274452))

(assert (= (and b!273626 ((_ is Union!957) (regex!733 (h!9236 rules!1920)))) b!274453))

(declare-fun b!274456 () Bool)

(declare-fun e!170516 () Bool)

(assert (=> b!274456 (= e!170516 true)))

(declare-fun b!274455 () Bool)

(declare-fun e!170515 () Bool)

(assert (=> b!274455 (= e!170515 e!170516)))

(declare-fun b!274454 () Bool)

(declare-fun e!170514 () Bool)

(assert (=> b!274454 (= e!170514 e!170515)))

(assert (=> b!273664 e!170514))

(assert (= b!274455 b!274456))

(assert (= b!274454 b!274455))

(assert (= (and b!273664 ((_ is Cons!3839) (t!38871 rules!1920))) b!274454))

(assert (=> b!274456 (< (dynLambda!1981 order!2973 (toValue!1476 (transformation!733 (h!9236 (t!38871 rules!1920))))) (dynLambda!1982 order!2975 lambda!9280))))

(assert (=> b!274456 (< (dynLambda!1983 order!2977 (toChars!1335 (transformation!733 (h!9236 (t!38871 rules!1920))))) (dynLambda!1982 order!2975 lambda!9280))))

(declare-fun b!274457 () Bool)

(declare-fun e!170517 () Bool)

(assert (=> b!274457 (= e!170517 tp_is_empty!1819)))

(declare-fun b!274460 () Bool)

(declare-fun tp!103254 () Bool)

(declare-fun tp!103255 () Bool)

(assert (=> b!274460 (= e!170517 (and tp!103254 tp!103255))))

(declare-fun b!274458 () Bool)

(declare-fun tp!103252 () Bool)

(declare-fun tp!103251 () Bool)

(assert (=> b!274458 (= e!170517 (and tp!103252 tp!103251))))

(assert (=> b!273646 (= tp!103150 e!170517)))

(declare-fun b!274459 () Bool)

(declare-fun tp!103253 () Bool)

(assert (=> b!274459 (= e!170517 tp!103253)))

(assert (= (and b!273646 ((_ is ElementMatch!957) (regex!733 (rule!1320 separatorToken!170)))) b!274457))

(assert (= (and b!273646 ((_ is Concat!1713) (regex!733 (rule!1320 separatorToken!170)))) b!274458))

(assert (= (and b!273646 ((_ is Star!957) (regex!733 (rule!1320 separatorToken!170)))) b!274459))

(assert (= (and b!273646 ((_ is Union!957) (regex!733 (rule!1320 separatorToken!170)))) b!274460))

(declare-fun b!274461 () Bool)

(declare-fun e!170518 () Bool)

(assert (=> b!274461 (= e!170518 tp_is_empty!1819)))

(declare-fun b!274464 () Bool)

(declare-fun tp!103259 () Bool)

(declare-fun tp!103260 () Bool)

(assert (=> b!274464 (= e!170518 (and tp!103259 tp!103260))))

(declare-fun b!274462 () Bool)

(declare-fun tp!103257 () Bool)

(declare-fun tp!103256 () Bool)

(assert (=> b!274462 (= e!170518 (and tp!103257 tp!103256))))

(assert (=> b!273648 (= tp!103143 e!170518)))

(declare-fun b!274463 () Bool)

(declare-fun tp!103258 () Bool)

(assert (=> b!274463 (= e!170518 tp!103258)))

(assert (= (and b!273648 ((_ is ElementMatch!957) (regex!733 (rule!1320 (h!9237 tokens!465))))) b!274461))

(assert (= (and b!273648 ((_ is Concat!1713) (regex!733 (rule!1320 (h!9237 tokens!465))))) b!274462))

(assert (= (and b!273648 ((_ is Star!957) (regex!733 (rule!1320 (h!9237 tokens!465))))) b!274463))

(assert (= (and b!273648 ((_ is Union!957) (regex!733 (rule!1320 (h!9237 tokens!465))))) b!274464))

(declare-fun b!274478 () Bool)

(declare-fun b_free!10129 () Bool)

(declare-fun b_next!10129 () Bool)

(assert (=> b!274478 (= b_free!10129 (not b_next!10129))))

(declare-fun tp!103274 () Bool)

(declare-fun b_and!22029 () Bool)

(assert (=> b!274478 (= tp!103274 b_and!22029)))

(declare-fun b_free!10131 () Bool)

(declare-fun b_next!10131 () Bool)

(assert (=> b!274478 (= b_free!10131 (not b_next!10131))))

(declare-fun t!38934 () Bool)

(declare-fun tb!15737 () Bool)

(assert (=> (and b!274478 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 (t!38872 tokens!465))))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465))))) t!38934) tb!15737))

(declare-fun result!19388 () Bool)

(assert (= result!19388 result!19346))

(assert (=> b!274194 t!38934))

(declare-fun t!38936 () Bool)

(declare-fun tb!15739 () Bool)

(assert (=> (and b!274478 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 (t!38872 tokens!465))))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170)))) t!38936) tb!15739))

(declare-fun result!19390 () Bool)

(assert (= result!19390 result!19354))

(assert (=> d!80364 t!38936))

(assert (=> d!80368 t!38934))

(assert (=> b!274420 t!38936))

(declare-fun b_and!22031 () Bool)

(declare-fun tp!103275 () Bool)

(assert (=> b!274478 (= tp!103275 (and (=> t!38934 result!19388) (=> t!38936 result!19390) b_and!22031))))

(declare-fun e!170534 () Bool)

(assert (=> b!274478 (= e!170534 (and tp!103274 tp!103275))))

(declare-fun e!170531 () Bool)

(declare-fun tp!103272 () Bool)

(declare-fun b!274477 () Bool)

(assert (=> b!274477 (= e!170531 (and tp!103272 (inv!4752 (tag!943 (rule!1320 (h!9237 (t!38872 tokens!465))))) (inv!4755 (transformation!733 (rule!1320 (h!9237 (t!38872 tokens!465))))) e!170534))))

(declare-fun b!274476 () Bool)

(declare-fun tp!103271 () Bool)

(declare-fun e!170535 () Bool)

(assert (=> b!274476 (= e!170535 (and (inv!21 (value!25206 (h!9237 (t!38872 tokens!465)))) e!170531 tp!103271))))

(declare-fun e!170536 () Bool)

(assert (=> b!273638 (= tp!103149 e!170536)))

(declare-fun b!274475 () Bool)

(declare-fun tp!103273 () Bool)

(assert (=> b!274475 (= e!170536 (and (inv!4756 (h!9237 (t!38872 tokens!465))) e!170535 tp!103273))))

(assert (= b!274477 b!274478))

(assert (= b!274476 b!274477))

(assert (= b!274475 b!274476))

(assert (= (and b!273638 ((_ is Cons!3840) (t!38872 tokens!465))) b!274475))

(declare-fun m!350155 () Bool)

(assert (=> b!274477 m!350155))

(declare-fun m!350157 () Bool)

(assert (=> b!274477 m!350157))

(declare-fun m!350159 () Bool)

(assert (=> b!274476 m!350159))

(declare-fun m!350161 () Bool)

(assert (=> b!274475 m!350161))

(declare-fun b_lambda!8827 () Bool)

(assert (= b_lambda!8805 (or (and b!273652 b_free!10115 (= (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))))) (and b!274478 b_free!10131 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 (t!38872 tokens!465))))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))))) (and b!273630 b_free!10111 (= (toChars!1335 (transformation!733 (h!9236 rules!1920))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))))) (and b!274433 b_free!10127 (= (toChars!1335 (transformation!733 (h!9236 (t!38871 rules!1920)))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))))) (and b!273637 b_free!10107) b_lambda!8827)))

(declare-fun b_lambda!8829 () Bool)

(assert (= b_lambda!8807 (or (and b!273630 b_free!10111 (= (toChars!1335 (transformation!733 (h!9236 rules!1920))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))))) (and b!273637 b_free!10107 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))))) (and b!274478 b_free!10131 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 (t!38872 tokens!465))))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))))) (and b!274433 b_free!10127 (= (toChars!1335 (transformation!733 (h!9236 (t!38871 rules!1920)))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))))) (and b!273652 b_free!10115) b_lambda!8829)))

(declare-fun b_lambda!8831 () Bool)

(assert (= b_lambda!8809 (or (and b!273652 b_free!10115 (= (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))))) (and b!274478 b_free!10131 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 (t!38872 tokens!465))))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))))) (and b!273630 b_free!10111 (= (toChars!1335 (transformation!733 (h!9236 rules!1920))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))))) (and b!274433 b_free!10127 (= (toChars!1335 (transformation!733 (h!9236 (t!38871 rules!1920)))) (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))))) (and b!273637 b_free!10107) b_lambda!8831)))

(declare-fun b_lambda!8833 () Bool)

(assert (= b_lambda!8825 (or (and b!273630 b_free!10111 (= (toChars!1335 (transformation!733 (h!9236 rules!1920))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))))) (and b!273637 b_free!10107 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 tokens!465)))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))))) (and b!274478 b_free!10131 (= (toChars!1335 (transformation!733 (rule!1320 (h!9237 (t!38872 tokens!465))))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))))) (and b!274433 b_free!10127 (= (toChars!1335 (transformation!733 (h!9236 (t!38871 rules!1920)))) (toChars!1335 (transformation!733 (rule!1320 separatorToken!170))))) (and b!273652 b_free!10115) b_lambda!8833)))

(declare-fun b_lambda!8835 () Bool)

(assert (= b_lambda!8801 (or b!273654 b_lambda!8835)))

(declare-fun bs!30819 () Bool)

(declare-fun d!80454 () Bool)

(assert (= bs!30819 (and d!80454 b!273654)))

(assert (=> bs!30819 (= (dynLambda!1986 lambda!9279 (h!9237 tokens!465)) (not (isSeparator!733 (rule!1320 (h!9237 tokens!465)))))))

(assert (=> b!274116 d!80454))

(declare-fun b_lambda!8837 () Bool)

(assert (= b_lambda!8823 (or b!273643 b_lambda!8837)))

(declare-fun bs!30820 () Bool)

(declare-fun d!80456 () Bool)

(assert (= bs!30820 (and d!80456 b!273643)))

(assert (=> bs!30820 (= (dynLambda!1986 lambda!9280 (h!9237 tokens!465)) (rulesProduceIndividualToken!368 thiss!17480 rules!1920 (h!9237 tokens!465)))))

(assert (=> bs!30820 m!348811))

(assert (=> d!80404 d!80456))

(check-sat (not b!274354) (not b!274108) (not b!274421) (not b!273805) (not b!273856) (not b!274356) (not d!80446) (not b!274392) (not b!274202) (not bs!30820) (not b!274353) (not d!80352) (not b!274394) (not b!274462) (not bm!15062) (not d!80412) (not b!274414) (not b!274232) (not d!80436) (not d!80354) (not b!274217) (not bm!15067) (not b!273859) (not b!274439) (not b!274220) (not b!274177) (not b!274092) (not tb!15719) (not d!80200) (not d!80434) b_and!21965 (not b!274218) (not bm!15066) (not bm!15032) (not b_lambda!8829) (not d!80378) b_and!22023 (not b!273855) (not b!274412) (not b_next!10127) (not d!80284) (not tb!15713) (not b_next!10115) tp_is_empty!1819 (not d!80358) (not d!80330) (not b!274079) (not bm!15073) (not d!80256) (not b_lambda!8837) (not d!80236) (not b!274195) (not b!274083) (not d!80342) (not b!274126) (not b!273921) (not b!274398) (not b!274451) (not b!274131) (not b!274146) (not b!274422) (not bm!15071) (not b_next!10125) (not b!273857) (not d!80198) (not b!274367) (not d!80424) (not b!274093) (not b!274376) (not b!274352) (not b!274147) (not b!274084) (not b!274416) (not b!273947) (not d!80440) (not d!80428) (not b!274393) b_and!22027 (not bm!15089) (not b!274082) (not b!274453) (not bm!15072) b_and!21961 (not d!80356) (not b_next!10107) (not b!274200) (not b!274210) (not b!274188) (not bm!15001) (not b!274236) (not b!274095) (not d!80204) (not b!274351) (not b!273683) (not b!274460) (not b!274395) (not b_next!10109) (not b!274349) (not b!274370) b_and!22025 (not b_lambda!8833) (not b!274180) (not b!274209) (not d!80380) (not b!274400) (not d!80368) (not d!80336) (not b!274203) (not b_next!10105) (not b!274223) (not d!80260) (not bm!15061) (not b!274477) (not b_next!10129) (not b!274233) (not d!80362) (not b!273853) (not b!274413) (not b_lambda!8835) (not d!80432) (not d!80372) (not b!273800) (not b!274401) b_and!22019 (not d!80416) (not bm!15088) (not b!274438) (not b!273946) (not b!273797) (not b!273913) (not b!273682) (not b!274183) (not b!274464) (not b!274431) (not b!274397) (not b_next!10111) (not b!274234) (not d!80422) b_and!22029 (not d!80344) (not b!274475) (not b!274476) (not b!274176) (not b!274417) b_and!22031 (not b!274111) (not b!274381) (not bm!15035) (not bm!15034) b_and!21957 (not b!274389) (not b!274222) (not b!274080) (not b!274418) (not b!274086) (not b!274230) (not d!80442) (not d!80278) (not b_lambda!8831) (not b!273801) (not b!273945) (not b!274081) (not bm!15031) (not d!80404) (not b!274366) (not b!274213) (not d!80402) (not b!274194) (not b!274458) (not b!273999) (not d!80418) (not b!274373) (not b!274087) (not b_next!10113) (not b!274096) (not b!274211) (not bm!15065) (not b!274207) (not b_lambda!8827) (not b!274396) (not b!274227) (not bm!15070) (not d!80370) (not b!274090) (not b!274419) (not b!274432) (not bm!15003) (not b!274000) (not d!80252) (not d!80324) (not d!80414) (not b!274452) (not d!80374) (not b!273803) (not b!274459) (not bm!15069) (not b!274091) (not b!274463) (not b!274088) (not d!80438) (not b!274226) (not b!274117) (not b!274454) (not b!273914) (not b_next!10131) (not b!274238) (not b!274420) (not d!80452) (not b!274089) (not d!80376) (not bm!15002) (not b!274107) (not bm!15074) (not b!274182) (not b!274391) (not d!80448) (not b!274355) b_and!22021 (not d!80366) (not bm!15004) (not b!273799) (not d!80444) (not b!273912) (not b!274365) (not d!80364))
(check-sat (not b_next!10125) b_and!22027 b_and!22019 b_and!22031 b_and!21957 (not b_next!10113) (not b_next!10131) b_and!22021 b_and!21965 b_and!22023 (not b_next!10127) (not b_next!10115) b_and!21961 (not b_next!10107) (not b_next!10109) b_and!22025 (not b_next!10105) (not b_next!10129) (not b_next!10111) b_and!22029)
