; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29614 () Bool)

(assert start!29614)

(declare-fun b!274698 () Bool)

(declare-fun b_free!10145 () Bool)

(declare-fun b_next!10145 () Bool)

(assert (=> b!274698 (= b_free!10145 (not b_next!10145))))

(declare-fun tp!103349 () Bool)

(declare-fun b_and!22045 () Bool)

(assert (=> b!274698 (= tp!103349 b_and!22045)))

(declare-fun b_free!10147 () Bool)

(declare-fun b_next!10147 () Bool)

(assert (=> b!274698 (= b_free!10147 (not b_next!10147))))

(declare-fun tp!103352 () Bool)

(declare-fun b_and!22047 () Bool)

(assert (=> b!274698 (= tp!103352 b_and!22047)))

(declare-fun b!274681 () Bool)

(declare-fun b_free!10149 () Bool)

(declare-fun b_next!10149 () Bool)

(assert (=> b!274681 (= b_free!10149 (not b_next!10149))))

(declare-fun tp!103342 () Bool)

(declare-fun b_and!22049 () Bool)

(assert (=> b!274681 (= tp!103342 b_and!22049)))

(declare-fun b_free!10151 () Bool)

(declare-fun b_next!10151 () Bool)

(assert (=> b!274681 (= b_free!10151 (not b_next!10151))))

(declare-fun tp!103348 () Bool)

(declare-fun b_and!22051 () Bool)

(assert (=> b!274681 (= tp!103348 b_and!22051)))

(declare-fun b!274691 () Bool)

(declare-fun b_free!10153 () Bool)

(declare-fun b_next!10153 () Bool)

(assert (=> b!274691 (= b_free!10153 (not b_next!10153))))

(declare-fun tp!103350 () Bool)

(declare-fun b_and!22053 () Bool)

(assert (=> b!274691 (= tp!103350 b_and!22053)))

(declare-fun b_free!10155 () Bool)

(declare-fun b_next!10155 () Bool)

(assert (=> b!274691 (= b_free!10155 (not b_next!10155))))

(declare-fun tp!103343 () Bool)

(declare-fun b_and!22055 () Bool)

(assert (=> b!274691 (= tp!103343 b_and!22055)))

(declare-fun bs!30824 () Bool)

(declare-fun b!274677 () Bool)

(declare-fun b!274688 () Bool)

(assert (= bs!30824 (and b!274677 b!274688)))

(declare-fun lambda!9326 () Int)

(declare-fun lambda!9325 () Int)

(assert (=> bs!30824 (not (= lambda!9326 lambda!9325))))

(declare-fun b!274712 () Bool)

(declare-fun e!170722 () Bool)

(assert (=> b!274712 (= e!170722 true)))

(declare-fun b!274711 () Bool)

(declare-fun e!170721 () Bool)

(assert (=> b!274711 (= e!170721 e!170722)))

(declare-fun b!274710 () Bool)

(declare-fun e!170720 () Bool)

(assert (=> b!274710 (= e!170720 e!170721)))

(assert (=> b!274677 e!170720))

(assert (= b!274711 b!274712))

(assert (= b!274710 b!274711))

(declare-datatypes ((List!3857 0))(
  ( (Nil!3847) (Cons!3847 (h!9244 (_ BitVec 16)) (t!38947 List!3857)) )
))
(declare-datatypes ((TokenValue!757 0))(
  ( (FloatLiteralValue!1514 (text!5744 List!3857)) (TokenValueExt!756 (__x!3001 Int)) (Broken!3785 (value!25237 List!3857)) (Object!766) (End!757) (Def!757) (Underscore!757) (Match!757) (Else!757) (Error!757) (Case!757) (If!757) (Extends!757) (Abstract!757) (Class!757) (Val!757) (DelimiterValue!1514 (del!817 List!3857)) (KeywordValue!763 (value!25238 List!3857)) (CommentValue!1514 (value!25239 List!3857)) (WhitespaceValue!1514 (value!25240 List!3857)) (IndentationValue!757 (value!25241 List!3857)) (String!4864) (Int32!757) (Broken!3786 (value!25242 List!3857)) (Boolean!758) (Unit!5019) (OperatorValue!760 (op!817 List!3857)) (IdentifierValue!1514 (value!25243 List!3857)) (IdentifierValue!1515 (value!25244 List!3857)) (WhitespaceValue!1515 (value!25245 List!3857)) (True!1514) (False!1514) (Broken!3787 (value!25246 List!3857)) (Broken!3788 (value!25247 List!3857)) (True!1515) (RightBrace!757) (RightBracket!757) (Colon!757) (Null!757) (Comma!757) (LeftBracket!757) (False!1515) (LeftBrace!757) (ImaginaryLiteralValue!757 (text!5745 List!3857)) (StringLiteralValue!2271 (value!25248 List!3857)) (EOFValue!757 (value!25249 List!3857)) (IdentValue!757 (value!25250 List!3857)) (DelimiterValue!1515 (value!25251 List!3857)) (DedentValue!757 (value!25252 List!3857)) (NewLineValue!757 (value!25253 List!3857)) (IntegerValue!2271 (value!25254 (_ BitVec 32)) (text!5746 List!3857)) (IntegerValue!2272 (value!25255 Int) (text!5747 List!3857)) (Times!757) (Or!757) (Equal!757) (Minus!757) (Broken!3789 (value!25256 List!3857)) (And!757) (Div!757) (LessEqual!757) (Mod!757) (Concat!1716) (Not!757) (Plus!757) (SpaceValue!757 (value!25257 List!3857)) (IntegerValue!2273 (value!25258 Int) (text!5748 List!3857)) (StringLiteralValue!2272 (text!5749 List!3857)) (FloatLiteralValue!1515 (text!5750 List!3857)) (BytesLiteralValue!757 (value!25259 List!3857)) (CommentValue!1515 (value!25260 List!3857)) (StringLiteralValue!2273 (value!25261 List!3857)) (ErrorTokenValue!757 (msg!818 List!3857)) )
))
(declare-datatypes ((C!2840 0))(
  ( (C!2841 (val!1306 Int)) )
))
(declare-datatypes ((List!3858 0))(
  ( (Nil!3848) (Cons!3848 (h!9245 C!2840) (t!38948 List!3858)) )
))
(declare-datatypes ((IArray!2585 0))(
  ( (IArray!2586 (innerList!1350 List!3858)) )
))
(declare-datatypes ((Conc!1292 0))(
  ( (Node!1292 (left!3170 Conc!1292) (right!3500 Conc!1292) (csize!2814 Int) (cheight!1503 Int)) (Leaf!1999 (xs!3891 IArray!2585) (csize!2815 Int)) (Empty!1292) )
))
(declare-datatypes ((BalanceConc!2592 0))(
  ( (BalanceConc!2593 (c!52034 Conc!1292)) )
))
(declare-datatypes ((String!4865 0))(
  ( (String!4866 (value!25262 String)) )
))
(declare-datatypes ((TokenValueInjection!1286 0))(
  ( (TokenValueInjection!1287 (toValue!1478 Int) (toChars!1337 Int)) )
))
(declare-datatypes ((Regex!959 0))(
  ( (ElementMatch!959 (c!52035 C!2840)) (Concat!1717 (regOne!2430 Regex!959) (regTwo!2430 Regex!959)) (EmptyExpr!959) (Star!959 (reg!1288 Regex!959)) (EmptyLang!959) (Union!959 (regOne!2431 Regex!959) (regTwo!2431 Regex!959)) )
))
(declare-datatypes ((Rule!1270 0))(
  ( (Rule!1271 (regex!735 Regex!959) (tag!945 String!4865) (isSeparator!735 Bool) (transformation!735 TokenValueInjection!1286)) )
))
(declare-datatypes ((List!3859 0))(
  ( (Nil!3849) (Cons!3849 (h!9246 Rule!1270) (t!38949 List!3859)) )
))
(declare-fun rules!1920 () List!3859)

(get-info :version)

(assert (= (and b!274677 ((_ is Cons!3849) rules!1920)) b!274710))

(declare-fun order!2985 () Int)

(declare-fun order!2987 () Int)

(declare-fun dynLambda!1991 (Int Int) Int)

(declare-fun dynLambda!1992 (Int Int) Int)

(assert (=> b!274712 (< (dynLambda!1991 order!2985 (toValue!1478 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9326))))

(declare-fun order!2989 () Int)

(declare-fun dynLambda!1993 (Int Int) Int)

(assert (=> b!274712 (< (dynLambda!1993 order!2989 (toChars!1337 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9326))))

(assert (=> b!274677 true))

(declare-fun b!274667 () Bool)

(declare-fun e!170699 () Bool)

(declare-fun e!170697 () Bool)

(declare-fun tp!103344 () Bool)

(assert (=> b!274667 (= e!170699 (and e!170697 tp!103344))))

(declare-fun b!274668 () Bool)

(declare-fun e!170695 () Bool)

(declare-fun e!170686 () Bool)

(assert (=> b!274668 (= e!170695 e!170686)))

(declare-fun res!125362 () Bool)

(assert (=> b!274668 (=> res!125362 e!170686)))

(declare-fun e!170689 () Bool)

(assert (=> b!274668 (= res!125362 e!170689)))

(declare-fun res!125358 () Bool)

(assert (=> b!274668 (=> (not res!125358) (not e!170689))))

(declare-fun lt!113891 () Bool)

(assert (=> b!274668 (= res!125358 (not lt!113891))))

(declare-fun lt!113881 () List!3858)

(declare-fun lt!113886 () List!3858)

(assert (=> b!274668 (= lt!113891 (= lt!113881 lt!113886))))

(declare-fun b!274669 () Bool)

(declare-fun res!125345 () Bool)

(declare-fun e!170704 () Bool)

(assert (=> b!274669 (=> (not res!125345) (not e!170704))))

(declare-datatypes ((LexerInterface!621 0))(
  ( (LexerInterfaceExt!618 (__x!3002 Int)) (Lexer!619) )
))
(declare-fun thiss!17480 () LexerInterface!621)

(declare-fun rulesInvariant!587 (LexerInterface!621 List!3859) Bool)

(assert (=> b!274669 (= res!125345 (rulesInvariant!587 thiss!17480 rules!1920))))

(declare-fun b!274670 () Bool)

(declare-fun res!125350 () Bool)

(declare-fun e!170690 () Bool)

(assert (=> b!274670 (=> res!125350 e!170690)))

(declare-datatypes ((Token!1214 0))(
  ( (Token!1215 (value!25263 TokenValue!757) (rule!1322 Rule!1270) (size!3073 Int) (originalCharacters!778 List!3858)) )
))
(declare-datatypes ((List!3860 0))(
  ( (Nil!3850) (Cons!3850 (h!9247 Token!1214) (t!38950 List!3860)) )
))
(declare-fun tokens!465 () List!3860)

(declare-fun lt!113893 () List!3860)

(assert (=> b!274670 (= res!125350 (not (= tokens!465 lt!113893)))))

(declare-fun b!274671 () Bool)

(declare-fun res!125340 () Bool)

(assert (=> b!274671 (=> (not res!125340) (not e!170704))))

(declare-fun isEmpty!2465 (List!3859) Bool)

(assert (=> b!274671 (= res!125340 (not (isEmpty!2465 rules!1920)))))

(declare-fun b!274672 () Bool)

(declare-fun res!125351 () Bool)

(declare-fun e!170693 () Bool)

(assert (=> b!274672 (=> (not res!125351) (not e!170693))))

(declare-fun separatorToken!170 () Token!1214)

(assert (=> b!274672 (= res!125351 (isSeparator!735 (rule!1322 separatorToken!170)))))

(declare-fun b!274673 () Bool)

(declare-fun res!125346 () Bool)

(declare-fun e!170712 () Bool)

(assert (=> b!274673 (=> (not res!125346) (not e!170712))))

(declare-fun lt!113878 () List!3858)

(declare-fun list!1583 (BalanceConc!2592) List!3858)

(declare-fun seqFromList!837 (List!3858) BalanceConc!2592)

(assert (=> b!274673 (= res!125346 (= (list!1583 (seqFromList!837 lt!113881)) lt!113878))))

(declare-fun b!274674 () Bool)

(assert (=> b!274674 (= e!170693 e!170712)))

(declare-fun res!125357 () Bool)

(assert (=> b!274674 (=> (not res!125357) (not e!170712))))

(assert (=> b!274674 (= res!125357 (= lt!113881 lt!113878))))

(declare-datatypes ((IArray!2587 0))(
  ( (IArray!2588 (innerList!1351 List!3860)) )
))
(declare-datatypes ((Conc!1293 0))(
  ( (Node!1293 (left!3171 Conc!1293) (right!3501 Conc!1293) (csize!2816 Int) (cheight!1504 Int)) (Leaf!2000 (xs!3892 IArray!2587) (csize!2817 Int)) (Empty!1293) )
))
(declare-datatypes ((BalanceConc!2594 0))(
  ( (BalanceConc!2595 (c!52036 Conc!1293)) )
))
(declare-fun lt!113879 () BalanceConc!2594)

(declare-fun printWithSeparatorTokenWhenNeededRec!296 (LexerInterface!621 List!3859 BalanceConc!2594 Token!1214 Int) BalanceConc!2592)

(assert (=> b!274674 (= lt!113878 (list!1583 (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 lt!113879 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!304 (LexerInterface!621 List!3859 List!3860 Token!1214) List!3858)

(assert (=> b!274674 (= lt!113881 (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!274675 () Bool)

(declare-fun e!170694 () Bool)

(declare-fun e!170691 () Bool)

(assert (=> b!274675 (= e!170694 e!170691)))

(declare-fun res!125359 () Bool)

(assert (=> b!274675 (=> (not res!125359) (not e!170691))))

(declare-datatypes ((tuple2!4334 0))(
  ( (tuple2!4335 (_1!2383 Token!1214) (_2!2383 List!3858)) )
))
(declare-datatypes ((Option!824 0))(
  ( (None!823) (Some!823 (v!14706 tuple2!4334)) )
))
(declare-fun lt!113876 () Option!824)

(declare-fun isDefined!667 (Option!824) Bool)

(assert (=> b!274675 (= res!125359 (isDefined!667 lt!113876))))

(declare-fun maxPrefix!339 (LexerInterface!621 List!3859 List!3858) Option!824)

(assert (=> b!274675 (= lt!113876 (maxPrefix!339 thiss!17480 rules!1920 lt!113881))))

(declare-fun b!274676 () Bool)

(declare-fun lt!113874 () List!3858)

(declare-fun isEmpty!2466 (List!3858) Bool)

(assert (=> b!274676 (= e!170690 (isEmpty!2466 lt!113874))))

(declare-fun e!170706 () Bool)

(declare-fun e!170703 () Bool)

(assert (=> b!274677 (= e!170706 e!170703)))

(declare-fun res!125352 () Bool)

(assert (=> b!274677 (=> res!125352 e!170703)))

(declare-datatypes ((tuple2!4336 0))(
  ( (tuple2!4337 (_1!2384 Token!1214) (_2!2384 BalanceConc!2592)) )
))
(declare-datatypes ((Option!825 0))(
  ( (None!824) (Some!824 (v!14707 tuple2!4336)) )
))
(declare-fun isDefined!668 (Option!825) Bool)

(declare-fun maxPrefixZipperSequence!302 (LexerInterface!621 List!3859 BalanceConc!2592) Option!825)

(assert (=> b!274677 (= res!125352 (not (isDefined!668 (maxPrefixZipperSequence!302 thiss!17480 rules!1920 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))))

(declare-datatypes ((Unit!5020 0))(
  ( (Unit!5021) )
))
(declare-fun lt!113897 () Unit!5020)

(declare-fun forallContained!290 (List!3860 Int Token!1214) Unit!5020)

(assert (=> b!274677 (= lt!113897 (forallContained!290 tokens!465 lambda!9326 (h!9247 tokens!465)))))

(declare-fun lt!113887 () List!3858)

(assert (=> b!274677 (= lt!113887 (originalCharacters!778 (h!9247 tokens!465)))))

(declare-fun b!274678 () Bool)

(declare-fun res!125361 () Bool)

(assert (=> b!274678 (=> (not res!125361) (not e!170693))))

(declare-fun sepAndNonSepRulesDisjointChars!324 (List!3859 List!3859) Bool)

(assert (=> b!274678 (= res!125361 (sepAndNonSepRulesDisjointChars!324 rules!1920 rules!1920))))

(declare-fun tp!103345 () Bool)

(declare-fun b!274679 () Bool)

(declare-fun e!170710 () Bool)

(declare-fun inv!4763 (String!4865) Bool)

(declare-fun inv!4766 (TokenValueInjection!1286) Bool)

(assert (=> b!274679 (= e!170697 (and tp!103345 (inv!4763 (tag!945 (h!9246 rules!1920))) (inv!4766 (transformation!735 (h!9246 rules!1920))) e!170710))))

(declare-fun b!274680 () Bool)

(declare-fun e!170705 () Bool)

(declare-fun matchR!281 (Regex!959 List!3858) Bool)

(assert (=> b!274680 (= e!170705 (matchR!281 (regex!735 (rule!1322 (h!9247 tokens!465))) lt!113887))))

(declare-fun e!170708 () Bool)

(assert (=> b!274681 (= e!170708 (and tp!103342 tp!103348))))

(declare-fun b!274682 () Bool)

(declare-fun e!170698 () Bool)

(assert (=> b!274682 (= e!170698 e!170690)))

(declare-fun res!125355 () Bool)

(assert (=> b!274682 (=> res!125355 e!170690)))

(declare-fun isEmpty!2467 (List!3860) Bool)

(assert (=> b!274682 (= res!125355 (not (isEmpty!2467 (t!38950 tokens!465))))))

(declare-fun lt!113882 () List!3858)

(declare-fun lt!113898 () Option!824)

(assert (=> b!274682 (= lt!113898 (maxPrefix!339 thiss!17480 rules!1920 lt!113882))))

(declare-fun lt!113892 () tuple2!4334)

(assert (=> b!274682 (= lt!113882 (_2!2383 lt!113892))))

(declare-fun lt!113885 () Unit!5020)

(declare-fun lemmaSamePrefixThenSameSuffix!204 (List!3858 List!3858 List!3858 List!3858 List!3858) Unit!5020)

(assert (=> b!274682 (= lt!113885 (lemmaSamePrefixThenSameSuffix!204 lt!113887 lt!113882 lt!113887 (_2!2383 lt!113892) lt!113881))))

(declare-fun get!1281 (Option!824) tuple2!4334)

(assert (=> b!274682 (= lt!113892 (get!1281 (maxPrefix!339 thiss!17480 rules!1920 lt!113881)))))

(declare-fun isPrefix!403 (List!3858 List!3858) Bool)

(assert (=> b!274682 (isPrefix!403 lt!113887 lt!113886)))

(declare-fun lt!113890 () Unit!5020)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!298 (List!3858 List!3858) Unit!5020)

(assert (=> b!274682 (= lt!113890 (lemmaConcatTwoListThenFirstIsPrefix!298 lt!113887 lt!113882))))

(assert (=> b!274682 e!170694))

(declare-fun res!125348 () Bool)

(assert (=> b!274682 (=> res!125348 e!170694)))

(assert (=> b!274682 (= res!125348 (isEmpty!2467 tokens!465))))

(declare-fun lt!113896 () Unit!5020)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!160 (LexerInterface!621 List!3859 List!3860 Token!1214) Unit!5020)

(assert (=> b!274682 (= lt!113896 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!160 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!274683 () Bool)

(assert (=> b!274683 (= e!170704 e!170693)))

(declare-fun res!125342 () Bool)

(assert (=> b!274683 (=> (not res!125342) (not e!170693))))

(declare-fun rulesProduceEachTokenIndividually!413 (LexerInterface!621 List!3859 BalanceConc!2594) Bool)

(assert (=> b!274683 (= res!125342 (rulesProduceEachTokenIndividually!413 thiss!17480 rules!1920 lt!113879))))

(declare-fun seqFromList!838 (List!3860) BalanceConc!2594)

(assert (=> b!274683 (= lt!113879 (seqFromList!838 tokens!465))))

(declare-fun tp!103346 () Bool)

(declare-fun b!274684 () Bool)

(declare-fun e!170687 () Bool)

(assert (=> b!274684 (= e!170687 (and tp!103346 (inv!4763 (tag!945 (rule!1322 (h!9247 tokens!465)))) (inv!4766 (transformation!735 (rule!1322 (h!9247 tokens!465)))) e!170708))))

(declare-fun b!274685 () Bool)

(assert (=> b!274685 (= e!170703 e!170698)))

(declare-fun res!125364 () Bool)

(assert (=> b!274685 (=> res!125364 e!170698)))

(assert (=> b!274685 (= res!125364 (not lt!113891))))

(assert (=> b!274685 e!170705))

(declare-fun res!125363 () Bool)

(assert (=> b!274685 (=> (not res!125363) (not e!170705))))

(declare-fun lt!113888 () tuple2!4334)

(assert (=> b!274685 (= res!125363 (= (_1!2383 lt!113888) (h!9247 tokens!465)))))

(declare-fun lt!113894 () Option!824)

(assert (=> b!274685 (= lt!113888 (get!1281 lt!113894))))

(assert (=> b!274685 (isDefined!667 lt!113894)))

(assert (=> b!274685 (= lt!113894 (maxPrefix!339 thiss!17480 rules!1920 lt!113887))))

(declare-fun tp!103341 () Bool)

(declare-fun e!170701 () Bool)

(declare-fun e!170700 () Bool)

(declare-fun b!274686 () Bool)

(assert (=> b!274686 (= e!170701 (and tp!103341 (inv!4763 (tag!945 (rule!1322 separatorToken!170))) (inv!4766 (transformation!735 (rule!1322 separatorToken!170))) e!170700))))

(declare-fun b!274687 () Bool)

(declare-fun res!125347 () Bool)

(assert (=> b!274687 (=> (not res!125347) (not e!170693))))

(assert (=> b!274687 (= res!125347 ((_ is Cons!3850) tokens!465))))

(declare-fun res!125356 () Bool)

(assert (=> b!274688 (=> (not res!125356) (not e!170693))))

(declare-fun forall!976 (List!3860 Int) Bool)

(assert (=> b!274688 (= res!125356 (forall!976 tokens!465 lambda!9325))))

(declare-fun b!274689 () Bool)

(declare-fun res!125341 () Bool)

(assert (=> b!274689 (=> res!125341 e!170706)))

(declare-fun isEmpty!2468 (BalanceConc!2594) Bool)

(declare-datatypes ((tuple2!4338 0))(
  ( (tuple2!4339 (_1!2385 BalanceConc!2594) (_2!2385 BalanceConc!2592)) )
))
(declare-fun lex!413 (LexerInterface!621 List!3859 BalanceConc!2592) tuple2!4338)

(assert (=> b!274689 (= res!125341 (isEmpty!2468 (_1!2385 (lex!413 thiss!17480 rules!1920 (seqFromList!837 lt!113887)))))))

(declare-fun b!274690 () Bool)

(declare-fun res!125353 () Bool)

(assert (=> b!274690 (=> (not res!125353) (not e!170693))))

(declare-fun rulesProduceIndividualToken!370 (LexerInterface!621 List!3859 Token!1214) Bool)

(assert (=> b!274690 (= res!125353 (rulesProduceIndividualToken!370 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!274691 (= e!170710 (and tp!103350 tp!103343))))

(declare-fun b!274692 () Bool)

(assert (=> b!274692 (= e!170686 e!170706)))

(declare-fun res!125349 () Bool)

(assert (=> b!274692 (=> res!125349 e!170706)))

(declare-fun lt!113875 () List!3858)

(declare-fun lt!113883 () List!3858)

(assert (=> b!274692 (= res!125349 (or (not (= lt!113883 lt!113875)) (not (= lt!113875 lt!113887)) (not (= lt!113883 lt!113887))))))

(declare-fun printList!297 (LexerInterface!621 List!3860) List!3858)

(assert (=> b!274692 (= lt!113875 (printList!297 thiss!17480 lt!113893))))

(declare-fun lt!113877 () BalanceConc!2592)

(assert (=> b!274692 (= lt!113883 (list!1583 lt!113877))))

(assert (=> b!274692 (= lt!113893 (Cons!3850 (h!9247 tokens!465) Nil!3850))))

(declare-fun lt!113880 () BalanceConc!2594)

(declare-fun printTailRec!309 (LexerInterface!621 BalanceConc!2594 Int BalanceConc!2592) BalanceConc!2592)

(assert (=> b!274692 (= lt!113877 (printTailRec!309 thiss!17480 lt!113880 0 (BalanceConc!2593 Empty!1292)))))

(declare-fun print!346 (LexerInterface!621 BalanceConc!2594) BalanceConc!2592)

(assert (=> b!274692 (= lt!113877 (print!346 thiss!17480 lt!113880))))

(declare-fun singletonSeq!281 (Token!1214) BalanceConc!2594)

(assert (=> b!274692 (= lt!113880 (singletonSeq!281 (h!9247 tokens!465)))))

(declare-fun b!274693 () Bool)

(declare-fun e!170713 () Bool)

(declare-fun e!170709 () Bool)

(declare-fun tp!103347 () Bool)

(declare-fun inv!4767 (Token!1214) Bool)

(assert (=> b!274693 (= e!170709 (and (inv!4767 (h!9247 tokens!465)) e!170713 tp!103347))))

(declare-fun b!274694 () Bool)

(declare-fun res!125354 () Bool)

(assert (=> b!274694 (=> (not res!125354) (not e!170705))))

(assert (=> b!274694 (= res!125354 (isEmpty!2466 (_2!2383 lt!113888)))))

(declare-fun b!274695 () Bool)

(declare-fun ++!1014 (List!3858 List!3858) List!3858)

(assert (=> b!274695 (= e!170689 (not (= lt!113881 (++!1014 lt!113887 lt!113874))))))

(declare-fun b!274696 () Bool)

(declare-fun tp!103351 () Bool)

(declare-fun inv!21 (TokenValue!757) Bool)

(assert (=> b!274696 (= e!170713 (and (inv!21 (value!25263 (h!9247 tokens!465))) e!170687 tp!103351))))

(declare-fun b!274697 () Bool)

(declare-fun head!896 (List!3860) Token!1214)

(assert (=> b!274697 (= e!170691 (= (_1!2383 (get!1281 lt!113876)) (head!896 tokens!465)))))

(assert (=> b!274698 (= e!170700 (and tp!103349 tp!103352))))

(declare-fun tp!103353 () Bool)

(declare-fun b!274699 () Bool)

(declare-fun e!170688 () Bool)

(assert (=> b!274699 (= e!170688 (and (inv!21 (value!25263 separatorToken!170)) e!170701 tp!103353))))

(declare-fun res!125344 () Bool)

(assert (=> start!29614 (=> (not res!125344) (not e!170704))))

(assert (=> start!29614 (= res!125344 ((_ is Lexer!619) thiss!17480))))

(assert (=> start!29614 e!170704))

(assert (=> start!29614 true))

(assert (=> start!29614 e!170699))

(assert (=> start!29614 (and (inv!4767 separatorToken!170) e!170688)))

(assert (=> start!29614 e!170709))

(declare-fun b!274700 () Bool)

(assert (=> b!274700 (= e!170712 (not e!170695))))

(declare-fun res!125360 () Bool)

(assert (=> b!274700 (=> res!125360 e!170695)))

(assert (=> b!274700 (= res!125360 (not (= lt!113874 (list!1583 (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 (seqFromList!838 (t!38950 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!113895 () List!3858)

(assert (=> b!274700 (= lt!113895 lt!113886)))

(assert (=> b!274700 (= lt!113886 (++!1014 lt!113887 lt!113882))))

(declare-fun lt!113884 () List!3858)

(assert (=> b!274700 (= lt!113895 (++!1014 (++!1014 lt!113887 lt!113884) lt!113874))))

(declare-fun lt!113889 () Unit!5020)

(declare-fun lemmaConcatAssociativity!436 (List!3858 List!3858 List!3858) Unit!5020)

(assert (=> b!274700 (= lt!113889 (lemmaConcatAssociativity!436 lt!113887 lt!113884 lt!113874))))

(declare-fun charsOf!380 (Token!1214) BalanceConc!2592)

(assert (=> b!274700 (= lt!113887 (list!1583 (charsOf!380 (h!9247 tokens!465))))))

(assert (=> b!274700 (= lt!113882 (++!1014 lt!113884 lt!113874))))

(assert (=> b!274700 (= lt!113874 (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 (t!38950 tokens!465) separatorToken!170))))

(assert (=> b!274700 (= lt!113884 (list!1583 (charsOf!380 separatorToken!170)))))

(declare-fun b!274701 () Bool)

(declare-fun res!125343 () Bool)

(assert (=> b!274701 (=> res!125343 e!170706)))

(assert (=> b!274701 (= res!125343 (not (rulesProduceIndividualToken!370 thiss!17480 rules!1920 (h!9247 tokens!465))))))

(assert (= (and start!29614 res!125344) b!274671))

(assert (= (and b!274671 res!125340) b!274669))

(assert (= (and b!274669 res!125345) b!274683))

(assert (= (and b!274683 res!125342) b!274690))

(assert (= (and b!274690 res!125353) b!274672))

(assert (= (and b!274672 res!125351) b!274688))

(assert (= (and b!274688 res!125356) b!274678))

(assert (= (and b!274678 res!125361) b!274687))

(assert (= (and b!274687 res!125347) b!274674))

(assert (= (and b!274674 res!125357) b!274673))

(assert (= (and b!274673 res!125346) b!274700))

(assert (= (and b!274700 (not res!125360)) b!274668))

(assert (= (and b!274668 res!125358) b!274695))

(assert (= (and b!274668 (not res!125362)) b!274692))

(assert (= (and b!274692 (not res!125349)) b!274701))

(assert (= (and b!274701 (not res!125343)) b!274689))

(assert (= (and b!274689 (not res!125341)) b!274677))

(assert (= (and b!274677 (not res!125352)) b!274685))

(assert (= (and b!274685 res!125363) b!274694))

(assert (= (and b!274694 res!125354) b!274680))

(assert (= (and b!274685 (not res!125364)) b!274682))

(assert (= (and b!274682 (not res!125348)) b!274675))

(assert (= (and b!274675 res!125359) b!274697))

(assert (= (and b!274682 (not res!125355)) b!274670))

(assert (= (and b!274670 (not res!125350)) b!274676))

(assert (= b!274679 b!274691))

(assert (= b!274667 b!274679))

(assert (= (and start!29614 ((_ is Cons!3849) rules!1920)) b!274667))

(assert (= b!274686 b!274698))

(assert (= b!274699 b!274686))

(assert (= start!29614 b!274699))

(assert (= b!274684 b!274681))

(assert (= b!274696 b!274684))

(assert (= b!274693 b!274696))

(assert (= (and start!29614 ((_ is Cons!3850) tokens!465)) b!274693))

(declare-fun m!350297 () Bool)

(assert (=> b!274679 m!350297))

(declare-fun m!350299 () Bool)

(assert (=> b!274679 m!350299))

(declare-fun m!350301 () Bool)

(assert (=> b!274675 m!350301))

(declare-fun m!350303 () Bool)

(assert (=> b!274675 m!350303))

(declare-fun m!350305 () Bool)

(assert (=> b!274699 m!350305))

(declare-fun m!350307 () Bool)

(assert (=> b!274686 m!350307))

(declare-fun m!350309 () Bool)

(assert (=> b!274686 m!350309))

(declare-fun m!350311 () Bool)

(assert (=> b!274673 m!350311))

(assert (=> b!274673 m!350311))

(declare-fun m!350313 () Bool)

(assert (=> b!274673 m!350313))

(declare-fun m!350315 () Bool)

(assert (=> b!274682 m!350315))

(assert (=> b!274682 m!350303))

(declare-fun m!350317 () Bool)

(assert (=> b!274682 m!350317))

(assert (=> b!274682 m!350303))

(declare-fun m!350319 () Bool)

(assert (=> b!274682 m!350319))

(declare-fun m!350321 () Bool)

(assert (=> b!274682 m!350321))

(declare-fun m!350323 () Bool)

(assert (=> b!274682 m!350323))

(declare-fun m!350325 () Bool)

(assert (=> b!274682 m!350325))

(declare-fun m!350327 () Bool)

(assert (=> b!274682 m!350327))

(declare-fun m!350329 () Bool)

(assert (=> b!274682 m!350329))

(declare-fun m!350331 () Bool)

(assert (=> b!274688 m!350331))

(declare-fun m!350333 () Bool)

(assert (=> b!274684 m!350333))

(declare-fun m!350335 () Bool)

(assert (=> b!274684 m!350335))

(declare-fun m!350337 () Bool)

(assert (=> b!274689 m!350337))

(assert (=> b!274689 m!350337))

(declare-fun m!350339 () Bool)

(assert (=> b!274689 m!350339))

(declare-fun m!350341 () Bool)

(assert (=> b!274689 m!350341))

(declare-fun m!350343 () Bool)

(assert (=> b!274697 m!350343))

(declare-fun m!350345 () Bool)

(assert (=> b!274697 m!350345))

(declare-fun m!350347 () Bool)

(assert (=> b!274676 m!350347))

(declare-fun m!350349 () Bool)

(assert (=> b!274683 m!350349))

(declare-fun m!350351 () Bool)

(assert (=> b!274683 m!350351))

(declare-fun m!350353 () Bool)

(assert (=> b!274671 m!350353))

(declare-fun m!350355 () Bool)

(assert (=> b!274674 m!350355))

(assert (=> b!274674 m!350355))

(declare-fun m!350357 () Bool)

(assert (=> b!274674 m!350357))

(declare-fun m!350359 () Bool)

(assert (=> b!274674 m!350359))

(declare-fun m!350361 () Bool)

(assert (=> start!29614 m!350361))

(declare-fun m!350363 () Bool)

(assert (=> b!274678 m!350363))

(declare-fun m!350365 () Bool)

(assert (=> b!274693 m!350365))

(declare-fun m!350367 () Bool)

(assert (=> b!274685 m!350367))

(declare-fun m!350369 () Bool)

(assert (=> b!274685 m!350369))

(declare-fun m!350371 () Bool)

(assert (=> b!274685 m!350371))

(declare-fun m!350373 () Bool)

(assert (=> b!274695 m!350373))

(declare-fun m!350375 () Bool)

(assert (=> b!274694 m!350375))

(declare-fun m!350377 () Bool)

(assert (=> b!274692 m!350377))

(declare-fun m!350379 () Bool)

(assert (=> b!274692 m!350379))

(declare-fun m!350381 () Bool)

(assert (=> b!274692 m!350381))

(declare-fun m!350383 () Bool)

(assert (=> b!274692 m!350383))

(declare-fun m!350385 () Bool)

(assert (=> b!274692 m!350385))

(declare-fun m!350387 () Bool)

(assert (=> b!274690 m!350387))

(declare-fun m!350389 () Bool)

(assert (=> b!274669 m!350389))

(declare-fun m!350391 () Bool)

(assert (=> b!274701 m!350391))

(declare-fun m!350393 () Bool)

(assert (=> b!274677 m!350393))

(assert (=> b!274677 m!350393))

(declare-fun m!350395 () Bool)

(assert (=> b!274677 m!350395))

(assert (=> b!274677 m!350395))

(declare-fun m!350397 () Bool)

(assert (=> b!274677 m!350397))

(declare-fun m!350399 () Bool)

(assert (=> b!274677 m!350399))

(declare-fun m!350401 () Bool)

(assert (=> b!274696 m!350401))

(declare-fun m!350403 () Bool)

(assert (=> b!274680 m!350403))

(declare-fun m!350405 () Bool)

(assert (=> b!274700 m!350405))

(declare-fun m!350407 () Bool)

(assert (=> b!274700 m!350407))

(declare-fun m!350409 () Bool)

(assert (=> b!274700 m!350409))

(declare-fun m!350411 () Bool)

(assert (=> b!274700 m!350411))

(declare-fun m!350413 () Bool)

(assert (=> b!274700 m!350413))

(declare-fun m!350415 () Bool)

(assert (=> b!274700 m!350415))

(declare-fun m!350417 () Bool)

(assert (=> b!274700 m!350417))

(assert (=> b!274700 m!350415))

(declare-fun m!350419 () Bool)

(assert (=> b!274700 m!350419))

(declare-fun m!350421 () Bool)

(assert (=> b!274700 m!350421))

(assert (=> b!274700 m!350405))

(declare-fun m!350423 () Bool)

(assert (=> b!274700 m!350423))

(declare-fun m!350425 () Bool)

(assert (=> b!274700 m!350425))

(assert (=> b!274700 m!350425))

(declare-fun m!350427 () Bool)

(assert (=> b!274700 m!350427))

(assert (=> b!274700 m!350407))

(assert (=> b!274700 m!350423))

(declare-fun m!350429 () Bool)

(assert (=> b!274700 m!350429))

(check-sat (not b!274677) (not b!274699) b_and!22053 (not b!274673) b_and!22045 (not b!274676) (not b!274679) (not b!274684) (not b!274669) (not b_next!10145) (not b!274674) (not b!274675) (not b!274682) (not b!274700) (not b!274694) (not b!274678) (not b_next!10153) (not b!274680) (not b!274696) (not b!274697) (not b_next!10155) (not b!274683) (not b!274693) (not b!274695) (not b!274686) b_and!22047 (not b_next!10147) (not b!274688) (not b!274701) b_and!22049 (not b!274692) b_and!22051 (not b!274689) (not start!29614) (not b!274690) b_and!22055 (not b!274685) (not b!274710) (not b!274671) (not b!274667) (not b_next!10149) (not b_next!10151))
(check-sat (not b_next!10153) b_and!22053 (not b_next!10155) b_and!22047 b_and!22045 (not b_next!10147) (not b_next!10145) b_and!22055 b_and!22049 b_and!22051 (not b_next!10149) (not b_next!10151))
(get-model)

(declare-fun d!80475 () Bool)

(declare-fun lt!113927 () Bool)

(declare-fun e!170783 () Bool)

(assert (=> d!80475 (= lt!113927 e!170783)))

(declare-fun res!125450 () Bool)

(assert (=> d!80475 (=> (not res!125450) (not e!170783))))

(declare-fun list!1586 (BalanceConc!2594) List!3860)

(assert (=> d!80475 (= res!125450 (= (list!1586 (_1!2385 (lex!413 thiss!17480 rules!1920 (print!346 thiss!17480 (singletonSeq!281 (h!9247 tokens!465)))))) (list!1586 (singletonSeq!281 (h!9247 tokens!465)))))))

(declare-fun e!170782 () Bool)

(assert (=> d!80475 (= lt!113927 e!170782)))

(declare-fun res!125449 () Bool)

(assert (=> d!80475 (=> (not res!125449) (not e!170782))))

(declare-fun lt!113928 () tuple2!4338)

(declare-fun size!3076 (BalanceConc!2594) Int)

(assert (=> d!80475 (= res!125449 (= (size!3076 (_1!2385 lt!113928)) 1))))

(assert (=> d!80475 (= lt!113928 (lex!413 thiss!17480 rules!1920 (print!346 thiss!17480 (singletonSeq!281 (h!9247 tokens!465)))))))

(assert (=> d!80475 (not (isEmpty!2465 rules!1920))))

(assert (=> d!80475 (= (rulesProduceIndividualToken!370 thiss!17480 rules!1920 (h!9247 tokens!465)) lt!113927)))

(declare-fun b!274829 () Bool)

(declare-fun res!125451 () Bool)

(assert (=> b!274829 (=> (not res!125451) (not e!170782))))

(declare-fun apply!787 (BalanceConc!2594 Int) Token!1214)

(assert (=> b!274829 (= res!125451 (= (apply!787 (_1!2385 lt!113928) 0) (h!9247 tokens!465)))))

(declare-fun b!274830 () Bool)

(declare-fun isEmpty!2471 (BalanceConc!2592) Bool)

(assert (=> b!274830 (= e!170782 (isEmpty!2471 (_2!2385 lt!113928)))))

(declare-fun b!274831 () Bool)

(assert (=> b!274831 (= e!170783 (isEmpty!2471 (_2!2385 (lex!413 thiss!17480 rules!1920 (print!346 thiss!17480 (singletonSeq!281 (h!9247 tokens!465)))))))))

(assert (= (and d!80475 res!125449) b!274829))

(assert (= (and b!274829 res!125451) b!274830))

(assert (= (and d!80475 res!125450) b!274831))

(assert (=> d!80475 m!350385))

(declare-fun m!350529 () Bool)

(assert (=> d!80475 m!350529))

(declare-fun m!350531 () Bool)

(assert (=> d!80475 m!350531))

(assert (=> d!80475 m!350385))

(declare-fun m!350533 () Bool)

(assert (=> d!80475 m!350533))

(declare-fun m!350535 () Bool)

(assert (=> d!80475 m!350535))

(assert (=> d!80475 m!350385))

(assert (=> d!80475 m!350529))

(declare-fun m!350537 () Bool)

(assert (=> d!80475 m!350537))

(assert (=> d!80475 m!350353))

(declare-fun m!350539 () Bool)

(assert (=> b!274829 m!350539))

(declare-fun m!350541 () Bool)

(assert (=> b!274830 m!350541))

(assert (=> b!274831 m!350385))

(assert (=> b!274831 m!350385))

(assert (=> b!274831 m!350529))

(assert (=> b!274831 m!350529))

(assert (=> b!274831 m!350537))

(declare-fun m!350543 () Bool)

(assert (=> b!274831 m!350543))

(assert (=> b!274701 d!80475))

(declare-fun b!274860 () Bool)

(declare-fun res!125474 () Bool)

(declare-fun e!170800 () Bool)

(assert (=> b!274860 (=> res!125474 e!170800)))

(declare-fun tail!486 (List!3858) List!3858)

(assert (=> b!274860 (= res!125474 (not (isEmpty!2466 (tail!486 lt!113887))))))

(declare-fun bm!15098 () Bool)

(declare-fun call!15103 () Bool)

(assert (=> bm!15098 (= call!15103 (isEmpty!2466 lt!113887))))

(declare-fun b!274861 () Bool)

(declare-fun e!170804 () Bool)

(declare-fun head!898 (List!3858) C!2840)

(assert (=> b!274861 (= e!170804 (= (head!898 lt!113887) (c!52035 (regex!735 (rule!1322 (h!9247 tokens!465))))))))

(declare-fun b!274862 () Bool)

(declare-fun e!170799 () Bool)

(declare-fun e!170798 () Bool)

(assert (=> b!274862 (= e!170799 e!170798)))

(declare-fun res!125471 () Bool)

(assert (=> b!274862 (=> (not res!125471) (not e!170798))))

(declare-fun lt!113931 () Bool)

(assert (=> b!274862 (= res!125471 (not lt!113931))))

(declare-fun b!274863 () Bool)

(assert (=> b!274863 (= e!170800 (not (= (head!898 lt!113887) (c!52035 (regex!735 (rule!1322 (h!9247 tokens!465)))))))))

(declare-fun b!274864 () Bool)

(declare-fun e!170801 () Bool)

(declare-fun nullable!170 (Regex!959) Bool)

(assert (=> b!274864 (= e!170801 (nullable!170 (regex!735 (rule!1322 (h!9247 tokens!465)))))))

(declare-fun b!274865 () Bool)

(declare-fun e!170803 () Bool)

(declare-fun e!170802 () Bool)

(assert (=> b!274865 (= e!170803 e!170802)))

(declare-fun c!52063 () Bool)

(assert (=> b!274865 (= c!52063 ((_ is EmptyLang!959) (regex!735 (rule!1322 (h!9247 tokens!465)))))))

(declare-fun b!274866 () Bool)

(declare-fun res!125469 () Bool)

(assert (=> b!274866 (=> res!125469 e!170799)))

(assert (=> b!274866 (= res!125469 e!170804)))

(declare-fun res!125473 () Bool)

(assert (=> b!274866 (=> (not res!125473) (not e!170804))))

(assert (=> b!274866 (= res!125473 lt!113931)))

(declare-fun b!274867 () Bool)

(assert (=> b!274867 (= e!170802 (not lt!113931))))

(declare-fun b!274868 () Bool)

(declare-fun derivativeStep!136 (Regex!959 C!2840) Regex!959)

(assert (=> b!274868 (= e!170801 (matchR!281 (derivativeStep!136 (regex!735 (rule!1322 (h!9247 tokens!465))) (head!898 lt!113887)) (tail!486 lt!113887)))))

(declare-fun d!80493 () Bool)

(assert (=> d!80493 e!170803))

(declare-fun c!52062 () Bool)

(assert (=> d!80493 (= c!52062 ((_ is EmptyExpr!959) (regex!735 (rule!1322 (h!9247 tokens!465)))))))

(assert (=> d!80493 (= lt!113931 e!170801)))

(declare-fun c!52061 () Bool)

(assert (=> d!80493 (= c!52061 (isEmpty!2466 lt!113887))))

(declare-fun validRegex!245 (Regex!959) Bool)

(assert (=> d!80493 (validRegex!245 (regex!735 (rule!1322 (h!9247 tokens!465))))))

(assert (=> d!80493 (= (matchR!281 (regex!735 (rule!1322 (h!9247 tokens!465))) lt!113887) lt!113931)))

(declare-fun b!274869 () Bool)

(declare-fun res!125472 () Bool)

(assert (=> b!274869 (=> (not res!125472) (not e!170804))))

(assert (=> b!274869 (= res!125472 (not call!15103))))

(declare-fun b!274870 () Bool)

(declare-fun res!125475 () Bool)

(assert (=> b!274870 (=> res!125475 e!170799)))

(assert (=> b!274870 (= res!125475 (not ((_ is ElementMatch!959) (regex!735 (rule!1322 (h!9247 tokens!465))))))))

(assert (=> b!274870 (= e!170802 e!170799)))

(declare-fun b!274871 () Bool)

(assert (=> b!274871 (= e!170798 e!170800)))

(declare-fun res!125470 () Bool)

(assert (=> b!274871 (=> res!125470 e!170800)))

(assert (=> b!274871 (= res!125470 call!15103)))

(declare-fun b!274872 () Bool)

(declare-fun res!125468 () Bool)

(assert (=> b!274872 (=> (not res!125468) (not e!170804))))

(assert (=> b!274872 (= res!125468 (isEmpty!2466 (tail!486 lt!113887)))))

(declare-fun b!274873 () Bool)

(assert (=> b!274873 (= e!170803 (= lt!113931 call!15103))))

(assert (= (and d!80493 c!52061) b!274864))

(assert (= (and d!80493 (not c!52061)) b!274868))

(assert (= (and d!80493 c!52062) b!274873))

(assert (= (and d!80493 (not c!52062)) b!274865))

(assert (= (and b!274865 c!52063) b!274867))

(assert (= (and b!274865 (not c!52063)) b!274870))

(assert (= (and b!274870 (not res!125475)) b!274866))

(assert (= (and b!274866 res!125473) b!274869))

(assert (= (and b!274869 res!125472) b!274872))

(assert (= (and b!274872 res!125468) b!274861))

(assert (= (and b!274866 (not res!125469)) b!274862))

(assert (= (and b!274862 res!125471) b!274871))

(assert (= (and b!274871 (not res!125470)) b!274860))

(assert (= (and b!274860 (not res!125474)) b!274863))

(assert (= (or b!274873 b!274869 b!274871) bm!15098))

(declare-fun m!350545 () Bool)

(assert (=> b!274864 m!350545))

(declare-fun m!350547 () Bool)

(assert (=> d!80493 m!350547))

(declare-fun m!350549 () Bool)

(assert (=> d!80493 m!350549))

(declare-fun m!350551 () Bool)

(assert (=> b!274872 m!350551))

(assert (=> b!274872 m!350551))

(declare-fun m!350553 () Bool)

(assert (=> b!274872 m!350553))

(declare-fun m!350555 () Bool)

(assert (=> b!274868 m!350555))

(assert (=> b!274868 m!350555))

(declare-fun m!350557 () Bool)

(assert (=> b!274868 m!350557))

(assert (=> b!274868 m!350551))

(assert (=> b!274868 m!350557))

(assert (=> b!274868 m!350551))

(declare-fun m!350559 () Bool)

(assert (=> b!274868 m!350559))

(assert (=> b!274861 m!350555))

(assert (=> bm!15098 m!350547))

(assert (=> b!274863 m!350555))

(assert (=> b!274860 m!350551))

(assert (=> b!274860 m!350551))

(assert (=> b!274860 m!350553))

(assert (=> b!274680 d!80493))

(declare-fun d!80495 () Bool)

(assert (=> d!80495 (= (inv!4763 (tag!945 (h!9246 rules!1920))) (= (mod (str.len (value!25262 (tag!945 (h!9246 rules!1920)))) 2) 0))))

(assert (=> b!274679 d!80495))

(declare-fun d!80497 () Bool)

(declare-fun res!125478 () Bool)

(declare-fun e!170807 () Bool)

(assert (=> d!80497 (=> (not res!125478) (not e!170807))))

(declare-fun semiInverseModEq!263 (Int Int) Bool)

(assert (=> d!80497 (= res!125478 (semiInverseModEq!263 (toChars!1337 (transformation!735 (h!9246 rules!1920))) (toValue!1478 (transformation!735 (h!9246 rules!1920)))))))

(assert (=> d!80497 (= (inv!4766 (transformation!735 (h!9246 rules!1920))) e!170807)))

(declare-fun b!274876 () Bool)

(declare-fun equivClasses!246 (Int Int) Bool)

(assert (=> b!274876 (= e!170807 (equivClasses!246 (toChars!1337 (transformation!735 (h!9246 rules!1920))) (toValue!1478 (transformation!735 (h!9246 rules!1920)))))))

(assert (= (and d!80497 res!125478) b!274876))

(declare-fun m!350561 () Bool)

(assert (=> d!80497 m!350561))

(declare-fun m!350563 () Bool)

(assert (=> b!274876 m!350563))

(assert (=> b!274679 d!80497))

(declare-fun d!80499 () Bool)

(assert (=> d!80499 (= (++!1014 (++!1014 lt!113887 lt!113884) lt!113874) (++!1014 lt!113887 (++!1014 lt!113884 lt!113874)))))

(declare-fun lt!113934 () Unit!5020)

(declare-fun choose!2482 (List!3858 List!3858 List!3858) Unit!5020)

(assert (=> d!80499 (= lt!113934 (choose!2482 lt!113887 lt!113884 lt!113874))))

(assert (=> d!80499 (= (lemmaConcatAssociativity!436 lt!113887 lt!113884 lt!113874) lt!113934)))

(declare-fun bs!30828 () Bool)

(assert (= bs!30828 d!80499))

(declare-fun m!350565 () Bool)

(assert (=> bs!30828 m!350565))

(assert (=> bs!30828 m!350421))

(declare-fun m!350567 () Bool)

(assert (=> bs!30828 m!350567))

(assert (=> bs!30828 m!350407))

(assert (=> bs!30828 m!350409))

(assert (=> bs!30828 m!350421))

(assert (=> bs!30828 m!350407))

(assert (=> b!274700 d!80499))

(declare-fun d!80501 () Bool)

(declare-fun fromListB!328 (List!3860) BalanceConc!2594)

(assert (=> d!80501 (= (seqFromList!838 (t!38950 tokens!465)) (fromListB!328 (t!38950 tokens!465)))))

(declare-fun bs!30829 () Bool)

(assert (= bs!30829 d!80501))

(declare-fun m!350569 () Bool)

(assert (=> bs!30829 m!350569))

(assert (=> b!274700 d!80501))

(declare-fun d!80503 () Bool)

(declare-fun list!1587 (Conc!1292) List!3858)

(assert (=> d!80503 (= (list!1583 (charsOf!380 separatorToken!170)) (list!1587 (c!52034 (charsOf!380 separatorToken!170))))))

(declare-fun bs!30830 () Bool)

(assert (= bs!30830 d!80503))

(declare-fun m!350571 () Bool)

(assert (=> bs!30830 m!350571))

(assert (=> b!274700 d!80503))

(declare-fun d!80505 () Bool)

(assert (=> d!80505 (= (list!1583 (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 (seqFromList!838 (t!38950 tokens!465)) separatorToken!170 0)) (list!1587 (c!52034 (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 (seqFromList!838 (t!38950 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!30831 () Bool)

(assert (= bs!30831 d!80505))

(declare-fun m!350573 () Bool)

(assert (=> bs!30831 m!350573))

(assert (=> b!274700 d!80505))

(declare-fun b!274886 () Bool)

(declare-fun e!170813 () List!3858)

(assert (=> b!274886 (= e!170813 (Cons!3848 (h!9245 lt!113887) (++!1014 (t!38948 lt!113887) lt!113884)))))

(declare-fun d!80507 () Bool)

(declare-fun e!170812 () Bool)

(assert (=> d!80507 e!170812))

(declare-fun res!125483 () Bool)

(assert (=> d!80507 (=> (not res!125483) (not e!170812))))

(declare-fun lt!113937 () List!3858)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!556 (List!3858) (InoxSet C!2840))

(assert (=> d!80507 (= res!125483 (= (content!556 lt!113937) ((_ map or) (content!556 lt!113887) (content!556 lt!113884))))))

(assert (=> d!80507 (= lt!113937 e!170813)))

(declare-fun c!52066 () Bool)

(assert (=> d!80507 (= c!52066 ((_ is Nil!3848) lt!113887))))

(assert (=> d!80507 (= (++!1014 lt!113887 lt!113884) lt!113937)))

(declare-fun b!274888 () Bool)

(assert (=> b!274888 (= e!170812 (or (not (= lt!113884 Nil!3848)) (= lt!113937 lt!113887)))))

(declare-fun b!274887 () Bool)

(declare-fun res!125484 () Bool)

(assert (=> b!274887 (=> (not res!125484) (not e!170812))))

(declare-fun size!3078 (List!3858) Int)

(assert (=> b!274887 (= res!125484 (= (size!3078 lt!113937) (+ (size!3078 lt!113887) (size!3078 lt!113884))))))

(declare-fun b!274885 () Bool)

(assert (=> b!274885 (= e!170813 lt!113884)))

(assert (= (and d!80507 c!52066) b!274885))

(assert (= (and d!80507 (not c!52066)) b!274886))

(assert (= (and d!80507 res!125483) b!274887))

(assert (= (and b!274887 res!125484) b!274888))

(declare-fun m!350575 () Bool)

(assert (=> b!274886 m!350575))

(declare-fun m!350577 () Bool)

(assert (=> d!80507 m!350577))

(declare-fun m!350579 () Bool)

(assert (=> d!80507 m!350579))

(declare-fun m!350581 () Bool)

(assert (=> d!80507 m!350581))

(declare-fun m!350583 () Bool)

(assert (=> b!274887 m!350583))

(declare-fun m!350585 () Bool)

(assert (=> b!274887 m!350585))

(declare-fun m!350587 () Bool)

(assert (=> b!274887 m!350587))

(assert (=> b!274700 d!80507))

(declare-fun bs!30836 () Bool)

(declare-fun b!274925 () Bool)

(assert (= bs!30836 (and b!274925 b!274688)))

(declare-fun lambda!9334 () Int)

(assert (=> bs!30836 (not (= lambda!9334 lambda!9325))))

(declare-fun bs!30837 () Bool)

(assert (= bs!30837 (and b!274925 b!274677)))

(assert (=> bs!30837 (= lambda!9334 lambda!9326)))

(declare-fun b!274940 () Bool)

(declare-fun e!170846 () Bool)

(assert (=> b!274940 (= e!170846 true)))

(declare-fun b!274939 () Bool)

(declare-fun e!170845 () Bool)

(assert (=> b!274939 (= e!170845 e!170846)))

(declare-fun b!274938 () Bool)

(declare-fun e!170844 () Bool)

(assert (=> b!274938 (= e!170844 e!170845)))

(assert (=> b!274925 e!170844))

(assert (= b!274939 b!274940))

(assert (= b!274938 b!274939))

(assert (= (and b!274925 ((_ is Cons!3849) rules!1920)) b!274938))

(assert (=> b!274940 (< (dynLambda!1991 order!2985 (toValue!1478 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9334))))

(assert (=> b!274940 (< (dynLambda!1993 order!2989 (toChars!1337 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9334))))

(assert (=> b!274925 true))

(declare-fun b!274920 () Bool)

(declare-fun e!170838 () List!3858)

(declare-fun call!15114 () List!3858)

(assert (=> b!274920 (= e!170838 call!15114)))

(declare-fun b!274921 () Bool)

(declare-fun call!15116 () BalanceConc!2592)

(assert (=> b!274921 (= e!170838 (list!1583 call!15116))))

(declare-fun b!274922 () Bool)

(declare-fun e!170836 () BalanceConc!2592)

(assert (=> b!274922 (= e!170836 call!15116)))

(declare-fun d!80509 () Bool)

(declare-fun c!52080 () Bool)

(assert (=> d!80509 (= c!52080 ((_ is Cons!3850) (t!38950 tokens!465)))))

(declare-fun e!170837 () List!3858)

(assert (=> d!80509 (= (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 (t!38950 tokens!465) separatorToken!170) e!170837)))

(declare-fun bm!15109 () Bool)

(declare-fun call!15118 () BalanceConc!2592)

(declare-fun c!52078 () Bool)

(assert (=> bm!15109 (= call!15114 (list!1583 (ite c!52078 call!15118 e!170836)))))

(declare-fun bm!15110 () Bool)

(assert (=> bm!15110 (= call!15116 call!15118)))

(declare-fun b!274923 () Bool)

(declare-fun c!52077 () Bool)

(declare-fun lt!113962 () Option!824)

(assert (=> b!274923 (= c!52077 (and ((_ is Some!823) lt!113962) (not (= (_1!2383 (v!14706 lt!113962)) (h!9247 (t!38950 tokens!465))))))))

(declare-fun e!170839 () List!3858)

(declare-fun e!170833 () List!3858)

(assert (=> b!274923 (= e!170839 e!170833)))

(declare-fun bm!15111 () Bool)

(declare-fun call!15117 () List!3858)

(assert (=> bm!15111 (= call!15117 call!15114)))

(declare-fun c!52081 () Bool)

(assert (=> bm!15111 (= c!52081 c!52077)))

(declare-fun b!274924 () Bool)

(assert (=> b!274924 (= e!170837 Nil!3848)))

(assert (=> b!274925 (= e!170837 e!170839)))

(declare-fun lt!113958 () Unit!5020)

(assert (=> b!274925 (= lt!113958 (forallContained!290 (t!38950 tokens!465) lambda!9334 (h!9247 (t!38950 tokens!465))))))

(declare-fun lt!113963 () List!3858)

(assert (=> b!274925 (= lt!113963 (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 (t!38950 (t!38950 tokens!465)) separatorToken!170))))

(assert (=> b!274925 (= lt!113962 (maxPrefix!339 thiss!17480 rules!1920 (++!1014 (list!1583 (charsOf!380 (h!9247 (t!38950 tokens!465)))) lt!113963)))))

(assert (=> b!274925 (= c!52078 (and ((_ is Some!823) lt!113962) (= (_1!2383 (v!14706 lt!113962)) (h!9247 (t!38950 tokens!465)))))))

(declare-fun b!274926 () Bool)

(assert (=> b!274926 (= e!170836 (charsOf!380 separatorToken!170))))

(declare-fun bm!15112 () Bool)

(assert (=> bm!15112 (= call!15118 (charsOf!380 (h!9247 (t!38950 tokens!465))))))

(declare-fun b!274927 () Bool)

(declare-fun call!15115 () List!3858)

(assert (=> b!274927 (= e!170839 call!15115)))

(declare-fun bm!15113 () Bool)

(declare-fun c!52079 () Bool)

(assert (=> bm!15113 (= c!52079 c!52078)))

(assert (=> bm!15113 (= call!15115 (++!1014 e!170838 (ite c!52078 lt!113963 call!15117)))))

(declare-fun b!274928 () Bool)

(assert (=> b!274928 (= e!170833 Nil!3848)))

(assert (=> b!274928 (= (print!346 thiss!17480 (singletonSeq!281 (h!9247 (t!38950 tokens!465)))) (printTailRec!309 thiss!17480 (singletonSeq!281 (h!9247 (t!38950 tokens!465))) 0 (BalanceConc!2593 Empty!1292)))))

(declare-fun lt!113960 () Unit!5020)

(declare-fun Unit!5022 () Unit!5020)

(assert (=> b!274928 (= lt!113960 Unit!5022)))

(declare-fun lt!113959 () Unit!5020)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!115 (LexerInterface!621 List!3859 List!3858 List!3858) Unit!5020)

(assert (=> b!274928 (= lt!113959 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!115 thiss!17480 rules!1920 call!15117 lt!113963))))

(assert (=> b!274928 false))

(declare-fun lt!113961 () Unit!5020)

(declare-fun Unit!5023 () Unit!5020)

(assert (=> b!274928 (= lt!113961 Unit!5023)))

(declare-fun b!274929 () Bool)

(assert (=> b!274929 (= e!170833 (++!1014 call!15115 lt!113963))))

(assert (= (and d!80509 c!52080) b!274925))

(assert (= (and d!80509 (not c!52080)) b!274924))

(assert (= (and b!274925 c!52078) b!274927))

(assert (= (and b!274925 (not c!52078)) b!274923))

(assert (= (and b!274923 c!52077) b!274929))

(assert (= (and b!274923 (not c!52077)) b!274928))

(assert (= (or b!274929 b!274928) bm!15110))

(assert (= (or b!274929 b!274928) bm!15111))

(assert (= (and bm!15111 c!52081) b!274926))

(assert (= (and bm!15111 (not c!52081)) b!274922))

(assert (= (or b!274927 bm!15110) bm!15112))

(assert (= (or b!274927 bm!15111) bm!15109))

(assert (= (or b!274927 b!274929) bm!15113))

(assert (= (and bm!15113 c!52079) b!274920))

(assert (= (and bm!15113 (not c!52079)) b!274921))

(declare-fun m!350609 () Bool)

(assert (=> b!274925 m!350609))

(declare-fun m!350611 () Bool)

(assert (=> b!274925 m!350611))

(declare-fun m!350613 () Bool)

(assert (=> b!274925 m!350613))

(declare-fun m!350615 () Bool)

(assert (=> b!274925 m!350615))

(declare-fun m!350617 () Bool)

(assert (=> b!274925 m!350617))

(assert (=> b!274925 m!350613))

(declare-fun m!350619 () Bool)

(assert (=> b!274925 m!350619))

(assert (=> b!274925 m!350619))

(assert (=> b!274925 m!350609))

(declare-fun m!350621 () Bool)

(assert (=> b!274921 m!350621))

(declare-fun m!350623 () Bool)

(assert (=> b!274929 m!350623))

(assert (=> b!274926 m!350415))

(declare-fun m!350625 () Bool)

(assert (=> bm!15113 m!350625))

(declare-fun m!350627 () Bool)

(assert (=> bm!15109 m!350627))

(assert (=> bm!15112 m!350613))

(declare-fun m!350629 () Bool)

(assert (=> b!274928 m!350629))

(assert (=> b!274928 m!350629))

(declare-fun m!350631 () Bool)

(assert (=> b!274928 m!350631))

(assert (=> b!274928 m!350629))

(declare-fun m!350633 () Bool)

(assert (=> b!274928 m!350633))

(declare-fun m!350635 () Bool)

(assert (=> b!274928 m!350635))

(assert (=> b!274700 d!80509))

(declare-fun bs!30841 () Bool)

(declare-fun d!80523 () Bool)

(assert (= bs!30841 (and d!80523 b!274688)))

(declare-fun lambda!9339 () Int)

(assert (=> bs!30841 (= lambda!9339 lambda!9325)))

(declare-fun bs!30842 () Bool)

(assert (= bs!30842 (and d!80523 b!274677)))

(assert (=> bs!30842 (not (= lambda!9339 lambda!9326))))

(declare-fun bs!30843 () Bool)

(assert (= bs!30843 (and d!80523 b!274925)))

(assert (=> bs!30843 (not (= lambda!9339 lambda!9334))))

(declare-fun bs!30844 () Bool)

(declare-fun b!275031 () Bool)

(assert (= bs!30844 (and b!275031 b!274688)))

(declare-fun lambda!9340 () Int)

(assert (=> bs!30844 (not (= lambda!9340 lambda!9325))))

(declare-fun bs!30845 () Bool)

(assert (= bs!30845 (and b!275031 b!274677)))

(assert (=> bs!30845 (= lambda!9340 lambda!9326)))

(declare-fun bs!30846 () Bool)

(assert (= bs!30846 (and b!275031 b!274925)))

(assert (=> bs!30846 (= lambda!9340 lambda!9334)))

(declare-fun bs!30847 () Bool)

(assert (= bs!30847 (and b!275031 d!80523)))

(assert (=> bs!30847 (not (= lambda!9340 lambda!9339))))

(declare-fun b!275036 () Bool)

(declare-fun e!170910 () Bool)

(assert (=> b!275036 (= e!170910 true)))

(declare-fun b!275035 () Bool)

(declare-fun e!170909 () Bool)

(assert (=> b!275035 (= e!170909 e!170910)))

(declare-fun b!275034 () Bool)

(declare-fun e!170908 () Bool)

(assert (=> b!275034 (= e!170908 e!170909)))

(assert (=> b!275031 e!170908))

(assert (= b!275035 b!275036))

(assert (= b!275034 b!275035))

(assert (= (and b!275031 ((_ is Cons!3849) rules!1920)) b!275034))

(assert (=> b!275036 (< (dynLambda!1991 order!2985 (toValue!1478 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9340))))

(assert (=> b!275036 (< (dynLambda!1993 order!2989 (toChars!1337 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9340))))

(assert (=> b!275031 true))

(declare-fun b!275025 () Bool)

(declare-fun e!170904 () BalanceConc!2592)

(assert (=> b!275025 (= e!170904 (BalanceConc!2593 Empty!1292))))

(declare-fun call!15132 () Token!1214)

(assert (=> b!275025 (= (print!346 thiss!17480 (singletonSeq!281 call!15132)) (printTailRec!309 thiss!17480 (singletonSeq!281 call!15132) 0 (BalanceConc!2593 Empty!1292)))))

(declare-fun lt!114021 () Unit!5020)

(declare-fun Unit!5024 () Unit!5020)

(assert (=> b!275025 (= lt!114021 Unit!5024)))

(declare-fun lt!114026 () Unit!5020)

(declare-fun call!15134 () BalanceConc!2592)

(declare-fun lt!114023 () BalanceConc!2592)

(assert (=> b!275025 (= lt!114026 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!115 thiss!17480 rules!1920 (list!1583 call!15134) (list!1583 lt!114023)))))

(assert (=> b!275025 false))

(declare-fun lt!114022 () Unit!5020)

(declare-fun Unit!5025 () Unit!5020)

(assert (=> b!275025 (= lt!114022 Unit!5025)))

(declare-fun b!275026 () Bool)

(declare-fun e!170903 () Bool)

(declare-fun lt!114020 () Option!825)

(assert (=> b!275026 (= e!170903 (= (_1!2384 (v!14707 lt!114020)) (apply!787 (seqFromList!838 (t!38950 tokens!465)) 0)))))

(declare-fun b!275027 () Bool)

(declare-fun e!170907 () Bool)

(assert (=> b!275027 (= e!170907 (<= 0 (size!3076 (seqFromList!838 (t!38950 tokens!465)))))))

(declare-fun bm!15126 () Bool)

(declare-fun call!15131 () Token!1214)

(assert (=> bm!15126 (= call!15131 (apply!787 (seqFromList!838 (t!38950 tokens!465)) 0))))

(declare-fun bm!15127 () Bool)

(assert (=> bm!15127 (= call!15132 call!15131)))

(declare-fun b!275028 () Bool)

(declare-fun e!170906 () Bool)

(assert (=> b!275028 (= e!170906 (not (= (_1!2384 (v!14707 lt!114020)) call!15131)))))

(declare-fun call!15135 () BalanceConc!2592)

(declare-fun c!52098 () Bool)

(declare-fun call!15133 () BalanceConc!2592)

(declare-fun bm!15128 () Bool)

(declare-fun ++!1015 (BalanceConc!2592 BalanceConc!2592) BalanceConc!2592)

(assert (=> bm!15128 (= call!15133 (++!1015 call!15135 (ite c!52098 lt!114023 call!15134)))))

(declare-fun lt!114028 () BalanceConc!2592)

(declare-fun dropList!167 (BalanceConc!2594 Int) List!3860)

(assert (=> d!80523 (= (list!1583 lt!114028) (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 (dropList!167 (seqFromList!838 (t!38950 tokens!465)) 0) separatorToken!170))))

(declare-fun e!170905 () BalanceConc!2592)

(assert (=> d!80523 (= lt!114028 e!170905)))

(declare-fun c!52096 () Bool)

(assert (=> d!80523 (= c!52096 (>= 0 (size!3076 (seqFromList!838 (t!38950 tokens!465)))))))

(declare-fun lt!114024 () Unit!5020)

(declare-fun lemmaContentSubsetPreservesForall!111 (List!3860 List!3860 Int) Unit!5020)

(assert (=> d!80523 (= lt!114024 (lemmaContentSubsetPreservesForall!111 (list!1586 (seqFromList!838 (t!38950 tokens!465))) (dropList!167 (seqFromList!838 (t!38950 tokens!465)) 0) lambda!9339))))

(assert (=> d!80523 e!170907))

(declare-fun res!125557 () Bool)

(assert (=> d!80523 (=> (not res!125557) (not e!170907))))

(assert (=> d!80523 (= res!125557 (>= 0 0))))

(assert (=> d!80523 (= (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 (seqFromList!838 (t!38950 tokens!465)) separatorToken!170 0) lt!114028)))

(declare-fun b!275029 () Bool)

(declare-fun c!52097 () Bool)

(assert (=> b!275029 (= c!52097 e!170906)))

(declare-fun res!125559 () Bool)

(assert (=> b!275029 (=> (not res!125559) (not e!170906))))

(assert (=> b!275029 (= res!125559 ((_ is Some!824) lt!114020))))

(declare-fun e!170902 () BalanceConc!2592)

(assert (=> b!275029 (= e!170902 e!170904)))

(declare-fun bm!15129 () Bool)

(assert (=> bm!15129 (= call!15135 (charsOf!380 (ite c!52098 call!15131 call!15132)))))

(declare-fun b!275030 () Bool)

(assert (=> b!275030 (= e!170902 call!15133)))

(assert (=> b!275031 (= e!170905 e!170902)))

(declare-fun lt!114019 () List!3860)

(assert (=> b!275031 (= lt!114019 (list!1586 (seqFromList!838 (t!38950 tokens!465))))))

(declare-fun lt!114030 () Unit!5020)

(declare-fun lemmaDropApply!207 (List!3860 Int) Unit!5020)

(assert (=> b!275031 (= lt!114030 (lemmaDropApply!207 lt!114019 0))))

(declare-fun drop!220 (List!3860 Int) List!3860)

(declare-fun apply!788 (List!3860 Int) Token!1214)

(assert (=> b!275031 (= (head!896 (drop!220 lt!114019 0)) (apply!788 lt!114019 0))))

(declare-fun lt!114031 () Unit!5020)

(assert (=> b!275031 (= lt!114031 lt!114030)))

(declare-fun lt!114018 () List!3860)

(assert (=> b!275031 (= lt!114018 (list!1586 (seqFromList!838 (t!38950 tokens!465))))))

(declare-fun lt!114027 () Unit!5020)

(declare-fun lemmaDropTail!199 (List!3860 Int) Unit!5020)

(assert (=> b!275031 (= lt!114027 (lemmaDropTail!199 lt!114018 0))))

(declare-fun tail!487 (List!3860) List!3860)

(assert (=> b!275031 (= (tail!487 (drop!220 lt!114018 0)) (drop!220 lt!114018 (+ 0 1)))))

(declare-fun lt!114025 () Unit!5020)

(assert (=> b!275031 (= lt!114025 lt!114027)))

(declare-fun lt!114029 () Unit!5020)

(assert (=> b!275031 (= lt!114029 (forallContained!290 (list!1586 (seqFromList!838 (t!38950 tokens!465))) lambda!9340 (apply!787 (seqFromList!838 (t!38950 tokens!465)) 0)))))

(assert (=> b!275031 (= lt!114023 (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 (seqFromList!838 (t!38950 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!275031 (= lt!114020 (maxPrefixZipperSequence!302 thiss!17480 rules!1920 (++!1015 (charsOf!380 (apply!787 (seqFromList!838 (t!38950 tokens!465)) 0)) lt!114023)))))

(declare-fun res!125558 () Bool)

(assert (=> b!275031 (= res!125558 ((_ is Some!824) lt!114020))))

(assert (=> b!275031 (=> (not res!125558) (not e!170903))))

(assert (=> b!275031 (= c!52098 e!170903)))

(declare-fun b!275032 () Bool)

(assert (=> b!275032 (= e!170905 (BalanceConc!2593 Empty!1292))))

(declare-fun bm!15130 () Bool)

(assert (=> bm!15130 (= call!15134 (charsOf!380 (ite c!52097 separatorToken!170 call!15132)))))

(declare-fun b!275033 () Bool)

(assert (=> b!275033 (= e!170904 (++!1015 call!15133 lt!114023))))

(assert (= (and d!80523 res!125557) b!275027))

(assert (= (and d!80523 c!52096) b!275032))

(assert (= (and d!80523 (not c!52096)) b!275031))

(assert (= (and b!275031 res!125558) b!275026))

(assert (= (and b!275031 c!52098) b!275030))

(assert (= (and b!275031 (not c!52098)) b!275029))

(assert (= (and b!275029 res!125559) b!275028))

(assert (= (and b!275029 c!52097) b!275033))

(assert (= (and b!275029 (not c!52097)) b!275025))

(assert (= (or b!275033 b!275025) bm!15127))

(assert (= (or b!275033 b!275025) bm!15130))

(assert (= (or b!275030 bm!15127 b!275028) bm!15126))

(assert (= (or b!275030 b!275033) bm!15129))

(assert (= (or b!275030 b!275033) bm!15128))

(assert (=> bm!15126 m!350405))

(declare-fun m!350769 () Bool)

(assert (=> bm!15126 m!350769))

(assert (=> d!80523 m!350405))

(declare-fun m!350771 () Bool)

(assert (=> d!80523 m!350771))

(assert (=> d!80523 m!350405))

(declare-fun m!350773 () Bool)

(assert (=> d!80523 m!350773))

(assert (=> d!80523 m!350771))

(declare-fun m!350777 () Bool)

(assert (=> d!80523 m!350777))

(declare-fun m!350781 () Bool)

(assert (=> d!80523 m!350781))

(assert (=> d!80523 m!350777))

(declare-fun m!350785 () Bool)

(assert (=> d!80523 m!350785))

(assert (=> d!80523 m!350405))

(assert (=> d!80523 m!350777))

(declare-fun m!350787 () Bool)

(assert (=> d!80523 m!350787))

(declare-fun m!350789 () Bool)

(assert (=> bm!15129 m!350789))

(assert (=> b!275026 m!350405))

(assert (=> b!275026 m!350769))

(declare-fun m!350791 () Bool)

(assert (=> b!275033 m!350791))

(assert (=> b!275027 m!350405))

(assert (=> b!275027 m!350773))

(declare-fun m!350793 () Bool)

(assert (=> bm!15128 m!350793))

(declare-fun m!350795 () Bool)

(assert (=> bm!15130 m!350795))

(declare-fun m!350797 () Bool)

(assert (=> b!275031 m!350797))

(declare-fun m!350799 () Bool)

(assert (=> b!275031 m!350799))

(declare-fun m!350801 () Bool)

(assert (=> b!275031 m!350801))

(declare-fun m!350803 () Bool)

(assert (=> b!275031 m!350803))

(assert (=> b!275031 m!350405))

(assert (=> b!275031 m!350771))

(assert (=> b!275031 m!350771))

(assert (=> b!275031 m!350769))

(declare-fun m!350805 () Bool)

(assert (=> b!275031 m!350805))

(assert (=> b!275031 m!350803))

(declare-fun m!350807 () Bool)

(assert (=> b!275031 m!350807))

(declare-fun m!350809 () Bool)

(assert (=> b!275031 m!350809))

(declare-fun m!350811 () Bool)

(assert (=> b!275031 m!350811))

(declare-fun m!350813 () Bool)

(assert (=> b!275031 m!350813))

(declare-fun m!350815 () Bool)

(assert (=> b!275031 m!350815))

(declare-fun m!350817 () Bool)

(assert (=> b!275031 m!350817))

(assert (=> b!275031 m!350769))

(assert (=> b!275031 m!350801))

(assert (=> b!275031 m!350797))

(assert (=> b!275031 m!350405))

(assert (=> b!275031 m!350769))

(assert (=> b!275031 m!350405))

(declare-fun m!350819 () Bool)

(assert (=> b!275031 m!350819))

(assert (=> b!275031 m!350813))

(declare-fun m!350821 () Bool)

(assert (=> b!275031 m!350821))

(declare-fun m!350823 () Bool)

(assert (=> b!275025 m!350823))

(declare-fun m!350825 () Bool)

(assert (=> b!275025 m!350825))

(assert (=> b!275025 m!350823))

(declare-fun m!350827 () Bool)

(assert (=> b!275025 m!350827))

(declare-fun m!350829 () Bool)

(assert (=> b!275025 m!350829))

(declare-fun m!350831 () Bool)

(assert (=> b!275025 m!350831))

(assert (=> b!275025 m!350831))

(assert (=> b!275025 m!350829))

(declare-fun m!350833 () Bool)

(assert (=> b!275025 m!350833))

(assert (=> b!275025 m!350823))

(assert (=> b!274700 d!80523))

(declare-fun d!80559 () Bool)

(declare-fun lt!114037 () BalanceConc!2592)

(assert (=> d!80559 (= (list!1583 lt!114037) (originalCharacters!778 separatorToken!170))))

(declare-fun dynLambda!1996 (Int TokenValue!757) BalanceConc!2592)

(assert (=> d!80559 (= lt!114037 (dynLambda!1996 (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (value!25263 separatorToken!170)))))

(assert (=> d!80559 (= (charsOf!380 separatorToken!170) lt!114037)))

(declare-fun b_lambda!8843 () Bool)

(assert (=> (not b_lambda!8843) (not d!80559)))

(declare-fun t!38971 () Bool)

(declare-fun tb!15747 () Bool)

(assert (=> (and b!274698 (= (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170)))) t!38971) tb!15747))

(declare-fun b!275044 () Bool)

(declare-fun e!170916 () Bool)

(declare-fun tp!103359 () Bool)

(declare-fun inv!4770 (Conc!1292) Bool)

(assert (=> b!275044 (= e!170916 (and (inv!4770 (c!52034 (dynLambda!1996 (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (value!25263 separatorToken!170)))) tp!103359))))

(declare-fun result!19400 () Bool)

(declare-fun inv!4771 (BalanceConc!2592) Bool)

(assert (=> tb!15747 (= result!19400 (and (inv!4771 (dynLambda!1996 (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (value!25263 separatorToken!170))) e!170916))))

(assert (= tb!15747 b!275044))

(declare-fun m!350835 () Bool)

(assert (=> b!275044 m!350835))

(declare-fun m!350837 () Bool)

(assert (=> tb!15747 m!350837))

(assert (=> d!80559 t!38971))

(declare-fun b_and!22063 () Bool)

(assert (= b_and!22047 (and (=> t!38971 result!19400) b_and!22063)))

(declare-fun tb!15749 () Bool)

(declare-fun t!38973 () Bool)

(assert (=> (and b!274681 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170)))) t!38973) tb!15749))

(declare-fun result!19404 () Bool)

(assert (= result!19404 result!19400))

(assert (=> d!80559 t!38973))

(declare-fun b_and!22065 () Bool)

(assert (= b_and!22051 (and (=> t!38973 result!19404) b_and!22065)))

(declare-fun t!38975 () Bool)

(declare-fun tb!15751 () Bool)

(assert (=> (and b!274691 (= (toChars!1337 (transformation!735 (h!9246 rules!1920))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170)))) t!38975) tb!15751))

(declare-fun result!19406 () Bool)

(assert (= result!19406 result!19400))

(assert (=> d!80559 t!38975))

(declare-fun b_and!22067 () Bool)

(assert (= b_and!22055 (and (=> t!38975 result!19406) b_and!22067)))

(declare-fun m!350839 () Bool)

(assert (=> d!80559 m!350839))

(declare-fun m!350841 () Bool)

(assert (=> d!80559 m!350841))

(assert (=> b!274700 d!80559))

(declare-fun b!275046 () Bool)

(declare-fun e!170918 () List!3858)

(assert (=> b!275046 (= e!170918 (Cons!3848 (h!9245 lt!113884) (++!1014 (t!38948 lt!113884) lt!113874)))))

(declare-fun d!80561 () Bool)

(declare-fun e!170917 () Bool)

(assert (=> d!80561 e!170917))

(declare-fun res!125563 () Bool)

(assert (=> d!80561 (=> (not res!125563) (not e!170917))))

(declare-fun lt!114038 () List!3858)

(assert (=> d!80561 (= res!125563 (= (content!556 lt!114038) ((_ map or) (content!556 lt!113884) (content!556 lt!113874))))))

(assert (=> d!80561 (= lt!114038 e!170918)))

(declare-fun c!52099 () Bool)

(assert (=> d!80561 (= c!52099 ((_ is Nil!3848) lt!113884))))

(assert (=> d!80561 (= (++!1014 lt!113884 lt!113874) lt!114038)))

(declare-fun b!275048 () Bool)

(assert (=> b!275048 (= e!170917 (or (not (= lt!113874 Nil!3848)) (= lt!114038 lt!113884)))))

(declare-fun b!275047 () Bool)

(declare-fun res!125564 () Bool)

(assert (=> b!275047 (=> (not res!125564) (not e!170917))))

(assert (=> b!275047 (= res!125564 (= (size!3078 lt!114038) (+ (size!3078 lt!113884) (size!3078 lt!113874))))))

(declare-fun b!275045 () Bool)

(assert (=> b!275045 (= e!170918 lt!113874)))

(assert (= (and d!80561 c!52099) b!275045))

(assert (= (and d!80561 (not c!52099)) b!275046))

(assert (= (and d!80561 res!125563) b!275047))

(assert (= (and b!275047 res!125564) b!275048))

(declare-fun m!350843 () Bool)

(assert (=> b!275046 m!350843))

(declare-fun m!350845 () Bool)

(assert (=> d!80561 m!350845))

(assert (=> d!80561 m!350581))

(declare-fun m!350847 () Bool)

(assert (=> d!80561 m!350847))

(declare-fun m!350849 () Bool)

(assert (=> b!275047 m!350849))

(assert (=> b!275047 m!350587))

(declare-fun m!350851 () Bool)

(assert (=> b!275047 m!350851))

(assert (=> b!274700 d!80561))

(declare-fun b!275050 () Bool)

(declare-fun e!170920 () List!3858)

(assert (=> b!275050 (= e!170920 (Cons!3848 (h!9245 lt!113887) (++!1014 (t!38948 lt!113887) lt!113882)))))

(declare-fun d!80563 () Bool)

(declare-fun e!170919 () Bool)

(assert (=> d!80563 e!170919))

(declare-fun res!125565 () Bool)

(assert (=> d!80563 (=> (not res!125565) (not e!170919))))

(declare-fun lt!114039 () List!3858)

(assert (=> d!80563 (= res!125565 (= (content!556 lt!114039) ((_ map or) (content!556 lt!113887) (content!556 lt!113882))))))

(assert (=> d!80563 (= lt!114039 e!170920)))

(declare-fun c!52100 () Bool)

(assert (=> d!80563 (= c!52100 ((_ is Nil!3848) lt!113887))))

(assert (=> d!80563 (= (++!1014 lt!113887 lt!113882) lt!114039)))

(declare-fun b!275052 () Bool)

(assert (=> b!275052 (= e!170919 (or (not (= lt!113882 Nil!3848)) (= lt!114039 lt!113887)))))

(declare-fun b!275051 () Bool)

(declare-fun res!125566 () Bool)

(assert (=> b!275051 (=> (not res!125566) (not e!170919))))

(assert (=> b!275051 (= res!125566 (= (size!3078 lt!114039) (+ (size!3078 lt!113887) (size!3078 lt!113882))))))

(declare-fun b!275049 () Bool)

(assert (=> b!275049 (= e!170920 lt!113882)))

(assert (= (and d!80563 c!52100) b!275049))

(assert (= (and d!80563 (not c!52100)) b!275050))

(assert (= (and d!80563 res!125565) b!275051))

(assert (= (and b!275051 res!125566) b!275052))

(declare-fun m!350853 () Bool)

(assert (=> b!275050 m!350853))

(declare-fun m!350855 () Bool)

(assert (=> d!80563 m!350855))

(assert (=> d!80563 m!350579))

(declare-fun m!350857 () Bool)

(assert (=> d!80563 m!350857))

(declare-fun m!350859 () Bool)

(assert (=> b!275051 m!350859))

(assert (=> b!275051 m!350585))

(declare-fun m!350861 () Bool)

(assert (=> b!275051 m!350861))

(assert (=> b!274700 d!80563))

(declare-fun d!80565 () Bool)

(assert (=> d!80565 (= (list!1583 (charsOf!380 (h!9247 tokens!465))) (list!1587 (c!52034 (charsOf!380 (h!9247 tokens!465)))))))

(declare-fun bs!30848 () Bool)

(assert (= bs!30848 d!80565))

(declare-fun m!350863 () Bool)

(assert (=> bs!30848 m!350863))

(assert (=> b!274700 d!80565))

(declare-fun e!170922 () List!3858)

(declare-fun b!275054 () Bool)

(assert (=> b!275054 (= e!170922 (Cons!3848 (h!9245 (++!1014 lt!113887 lt!113884)) (++!1014 (t!38948 (++!1014 lt!113887 lt!113884)) lt!113874)))))

(declare-fun d!80567 () Bool)

(declare-fun e!170921 () Bool)

(assert (=> d!80567 e!170921))

(declare-fun res!125567 () Bool)

(assert (=> d!80567 (=> (not res!125567) (not e!170921))))

(declare-fun lt!114040 () List!3858)

(assert (=> d!80567 (= res!125567 (= (content!556 lt!114040) ((_ map or) (content!556 (++!1014 lt!113887 lt!113884)) (content!556 lt!113874))))))

(assert (=> d!80567 (= lt!114040 e!170922)))

(declare-fun c!52101 () Bool)

(assert (=> d!80567 (= c!52101 ((_ is Nil!3848) (++!1014 lt!113887 lt!113884)))))

(assert (=> d!80567 (= (++!1014 (++!1014 lt!113887 lt!113884) lt!113874) lt!114040)))

(declare-fun b!275056 () Bool)

(assert (=> b!275056 (= e!170921 (or (not (= lt!113874 Nil!3848)) (= lt!114040 (++!1014 lt!113887 lt!113884))))))

(declare-fun b!275055 () Bool)

(declare-fun res!125568 () Bool)

(assert (=> b!275055 (=> (not res!125568) (not e!170921))))

(assert (=> b!275055 (= res!125568 (= (size!3078 lt!114040) (+ (size!3078 (++!1014 lt!113887 lt!113884)) (size!3078 lt!113874))))))

(declare-fun b!275053 () Bool)

(assert (=> b!275053 (= e!170922 lt!113874)))

(assert (= (and d!80567 c!52101) b!275053))

(assert (= (and d!80567 (not c!52101)) b!275054))

(assert (= (and d!80567 res!125567) b!275055))

(assert (= (and b!275055 res!125568) b!275056))

(declare-fun m!350865 () Bool)

(assert (=> b!275054 m!350865))

(declare-fun m!350867 () Bool)

(assert (=> d!80567 m!350867))

(assert (=> d!80567 m!350407))

(declare-fun m!350869 () Bool)

(assert (=> d!80567 m!350869))

(assert (=> d!80567 m!350847))

(declare-fun m!350871 () Bool)

(assert (=> b!275055 m!350871))

(assert (=> b!275055 m!350407))

(declare-fun m!350873 () Bool)

(assert (=> b!275055 m!350873))

(assert (=> b!275055 m!350851))

(assert (=> b!274700 d!80567))

(declare-fun d!80569 () Bool)

(declare-fun lt!114041 () BalanceConc!2592)

(assert (=> d!80569 (= (list!1583 lt!114041) (originalCharacters!778 (h!9247 tokens!465)))))

(assert (=> d!80569 (= lt!114041 (dynLambda!1996 (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (value!25263 (h!9247 tokens!465))))))

(assert (=> d!80569 (= (charsOf!380 (h!9247 tokens!465)) lt!114041)))

(declare-fun b_lambda!8845 () Bool)

(assert (=> (not b_lambda!8845) (not d!80569)))

(declare-fun tb!15753 () Bool)

(declare-fun t!38977 () Bool)

(assert (=> (and b!274698 (= (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465))))) t!38977) tb!15753))

(declare-fun b!275057 () Bool)

(declare-fun e!170923 () Bool)

(declare-fun tp!103360 () Bool)

(assert (=> b!275057 (= e!170923 (and (inv!4770 (c!52034 (dynLambda!1996 (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (value!25263 (h!9247 tokens!465))))) tp!103360))))

(declare-fun result!19408 () Bool)

(assert (=> tb!15753 (= result!19408 (and (inv!4771 (dynLambda!1996 (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (value!25263 (h!9247 tokens!465)))) e!170923))))

(assert (= tb!15753 b!275057))

(declare-fun m!350875 () Bool)

(assert (=> b!275057 m!350875))

(declare-fun m!350877 () Bool)

(assert (=> tb!15753 m!350877))

(assert (=> d!80569 t!38977))

(declare-fun b_and!22069 () Bool)

(assert (= b_and!22063 (and (=> t!38977 result!19408) b_and!22069)))

(declare-fun t!38979 () Bool)

(declare-fun tb!15755 () Bool)

(assert (=> (and b!274681 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465))))) t!38979) tb!15755))

(declare-fun result!19410 () Bool)

(assert (= result!19410 result!19408))

(assert (=> d!80569 t!38979))

(declare-fun b_and!22071 () Bool)

(assert (= b_and!22065 (and (=> t!38979 result!19410) b_and!22071)))

(declare-fun t!38981 () Bool)

(declare-fun tb!15757 () Bool)

(assert (=> (and b!274691 (= (toChars!1337 (transformation!735 (h!9246 rules!1920))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465))))) t!38981) tb!15757))

(declare-fun result!19412 () Bool)

(assert (= result!19412 result!19408))

(assert (=> d!80569 t!38981))

(declare-fun b_and!22073 () Bool)

(assert (= b_and!22067 (and (=> t!38981 result!19412) b_and!22073)))

(declare-fun m!350879 () Bool)

(assert (=> d!80569 m!350879))

(declare-fun m!350881 () Bool)

(assert (=> d!80569 m!350881))

(assert (=> b!274700 d!80569))

(declare-fun b!275068 () Bool)

(declare-fun res!125571 () Bool)

(declare-fun e!170932 () Bool)

(assert (=> b!275068 (=> res!125571 e!170932)))

(assert (=> b!275068 (= res!125571 (not ((_ is IntegerValue!2273) (value!25263 separatorToken!170))))))

(declare-fun e!170930 () Bool)

(assert (=> b!275068 (= e!170930 e!170932)))

(declare-fun b!275069 () Bool)

(declare-fun inv!17 (TokenValue!757) Bool)

(assert (=> b!275069 (= e!170930 (inv!17 (value!25263 separatorToken!170)))))

(declare-fun b!275070 () Bool)

(declare-fun e!170931 () Bool)

(declare-fun inv!16 (TokenValue!757) Bool)

(assert (=> b!275070 (= e!170931 (inv!16 (value!25263 separatorToken!170)))))

(declare-fun b!275071 () Bool)

(declare-fun inv!15 (TokenValue!757) Bool)

(assert (=> b!275071 (= e!170932 (inv!15 (value!25263 separatorToken!170)))))

(declare-fun d!80571 () Bool)

(declare-fun c!52107 () Bool)

(assert (=> d!80571 (= c!52107 ((_ is IntegerValue!2271) (value!25263 separatorToken!170)))))

(assert (=> d!80571 (= (inv!21 (value!25263 separatorToken!170)) e!170931)))

(declare-fun b!275072 () Bool)

(assert (=> b!275072 (= e!170931 e!170930)))

(declare-fun c!52106 () Bool)

(assert (=> b!275072 (= c!52106 ((_ is IntegerValue!2272) (value!25263 separatorToken!170)))))

(assert (= (and d!80571 c!52107) b!275070))

(assert (= (and d!80571 (not c!52107)) b!275072))

(assert (= (and b!275072 c!52106) b!275069))

(assert (= (and b!275072 (not c!52106)) b!275068))

(assert (= (and b!275068 (not res!125571)) b!275071))

(declare-fun m!350889 () Bool)

(assert (=> b!275069 m!350889))

(declare-fun m!350891 () Bool)

(assert (=> b!275070 m!350891))

(declare-fun m!350893 () Bool)

(assert (=> b!275071 m!350893))

(assert (=> b!274699 d!80571))

(declare-fun d!80575 () Bool)

(declare-fun res!125576 () Bool)

(declare-fun e!170937 () Bool)

(assert (=> d!80575 (=> res!125576 e!170937)))

(assert (=> d!80575 (= res!125576 (not ((_ is Cons!3849) rules!1920)))))

(assert (=> d!80575 (= (sepAndNonSepRulesDisjointChars!324 rules!1920 rules!1920) e!170937)))

(declare-fun b!275077 () Bool)

(declare-fun e!170938 () Bool)

(assert (=> b!275077 (= e!170937 e!170938)))

(declare-fun res!125577 () Bool)

(assert (=> b!275077 (=> (not res!125577) (not e!170938))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!122 (Rule!1270 List!3859) Bool)

(assert (=> b!275077 (= res!125577 (ruleDisjointCharsFromAllFromOtherType!122 (h!9246 rules!1920) rules!1920))))

(declare-fun b!275078 () Bool)

(assert (=> b!275078 (= e!170938 (sepAndNonSepRulesDisjointChars!324 rules!1920 (t!38949 rules!1920)))))

(assert (= (and d!80575 (not res!125576)) b!275077))

(assert (= (and b!275077 res!125577) b!275078))

(declare-fun m!350895 () Bool)

(assert (=> b!275077 m!350895))

(declare-fun m!350897 () Bool)

(assert (=> b!275078 m!350897))

(assert (=> b!274678 d!80575))

(declare-fun d!80577 () Bool)

(declare-fun isEmpty!2474 (Option!825) Bool)

(assert (=> d!80577 (= (isDefined!668 (maxPrefixZipperSequence!302 thiss!17480 rules!1920 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465))))) (not (isEmpty!2474 (maxPrefixZipperSequence!302 thiss!17480 rules!1920 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))))

(declare-fun bs!30850 () Bool)

(assert (= bs!30850 d!80577))

(assert (=> bs!30850 m!350395))

(declare-fun m!350899 () Bool)

(assert (=> bs!30850 m!350899))

(assert (=> b!274677 d!80577))

(declare-fun e!170972 () Bool)

(declare-fun lt!114087 () Option!825)

(declare-fun b!275121 () Bool)

(declare-fun get!1282 (Option!825) tuple2!4336)

(declare-fun maxPrefixZipper!116 (LexerInterface!621 List!3859 List!3858) Option!824)

(assert (=> b!275121 (= e!170972 (= (list!1583 (_2!2384 (get!1282 lt!114087))) (_2!2383 (get!1281 (maxPrefixZipper!116 thiss!17480 rules!1920 (list!1583 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))))))

(declare-fun b!275122 () Bool)

(declare-fun e!170968 () Option!825)

(declare-fun lt!114084 () Option!825)

(declare-fun lt!114082 () Option!825)

(assert (=> b!275122 (= e!170968 (ite (and ((_ is None!824) lt!114084) ((_ is None!824) lt!114082)) None!824 (ite ((_ is None!824) lt!114082) lt!114084 (ite ((_ is None!824) lt!114084) lt!114082 (ite (>= (size!3073 (_1!2384 (v!14707 lt!114084))) (size!3073 (_1!2384 (v!14707 lt!114082)))) lt!114084 lt!114082)))))))

(declare-fun call!15138 () Option!825)

(assert (=> b!275122 (= lt!114084 call!15138)))

(assert (=> b!275122 (= lt!114082 (maxPrefixZipperSequence!302 thiss!17480 (t!38949 rules!1920) (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))

(declare-fun b!275123 () Bool)

(assert (=> b!275123 (= e!170968 call!15138)))

(declare-fun b!275124 () Bool)

(declare-fun e!170969 () Bool)

(assert (=> b!275124 (= e!170969 e!170972)))

(declare-fun res!125600 () Bool)

(assert (=> b!275124 (=> (not res!125600) (not e!170972))))

(assert (=> b!275124 (= res!125600 (= (_1!2384 (get!1282 lt!114087)) (_1!2383 (get!1281 (maxPrefixZipper!116 thiss!17480 rules!1920 (list!1583 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))))))

(declare-fun d!80579 () Bool)

(declare-fun e!170971 () Bool)

(assert (=> d!80579 e!170971))

(declare-fun res!125601 () Bool)

(assert (=> d!80579 (=> (not res!125601) (not e!170971))))

(assert (=> d!80579 (= res!125601 (= (isDefined!668 lt!114087) (isDefined!667 (maxPrefixZipper!116 thiss!17480 rules!1920 (list!1583 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465))))))))))

(assert (=> d!80579 (= lt!114087 e!170968)))

(declare-fun c!52118 () Bool)

(assert (=> d!80579 (= c!52118 (and ((_ is Cons!3849) rules!1920) ((_ is Nil!3849) (t!38949 rules!1920))))))

(declare-fun lt!114088 () Unit!5020)

(declare-fun lt!114083 () Unit!5020)

(assert (=> d!80579 (= lt!114088 lt!114083)))

(declare-fun lt!114086 () List!3858)

(declare-fun lt!114085 () List!3858)

(assert (=> d!80579 (isPrefix!403 lt!114086 lt!114085)))

(declare-fun lemmaIsPrefixRefl!213 (List!3858 List!3858) Unit!5020)

(assert (=> d!80579 (= lt!114083 (lemmaIsPrefixRefl!213 lt!114086 lt!114085))))

(assert (=> d!80579 (= lt!114085 (list!1583 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))

(assert (=> d!80579 (= lt!114086 (list!1583 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))

(declare-fun rulesValidInductive!208 (LexerInterface!621 List!3859) Bool)

(assert (=> d!80579 (rulesValidInductive!208 thiss!17480 rules!1920)))

(assert (=> d!80579 (= (maxPrefixZipperSequence!302 thiss!17480 rules!1920 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))) lt!114087)))

(declare-fun b!275125 () Bool)

(declare-fun e!170970 () Bool)

(declare-fun e!170967 () Bool)

(assert (=> b!275125 (= e!170970 e!170967)))

(declare-fun res!125603 () Bool)

(assert (=> b!275125 (=> (not res!125603) (not e!170967))))

(assert (=> b!275125 (= res!125603 (= (_1!2384 (get!1282 lt!114087)) (_1!2383 (get!1281 (maxPrefix!339 thiss!17480 rules!1920 (list!1583 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))))))

(declare-fun bm!15133 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!118 (LexerInterface!621 Rule!1270 BalanceConc!2592) Option!825)

(assert (=> bm!15133 (= call!15138 (maxPrefixOneRuleZipperSequence!118 thiss!17480 (h!9246 rules!1920) (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))

(declare-fun b!275126 () Bool)

(declare-fun res!125604 () Bool)

(assert (=> b!275126 (=> (not res!125604) (not e!170971))))

(assert (=> b!275126 (= res!125604 e!170969)))

(declare-fun res!125599 () Bool)

(assert (=> b!275126 (=> res!125599 e!170969)))

(assert (=> b!275126 (= res!125599 (not (isDefined!668 lt!114087)))))

(declare-fun b!275127 () Bool)

(assert (=> b!275127 (= e!170971 e!170970)))

(declare-fun res!125602 () Bool)

(assert (=> b!275127 (=> res!125602 e!170970)))

(assert (=> b!275127 (= res!125602 (not (isDefined!668 lt!114087)))))

(declare-fun b!275128 () Bool)

(assert (=> b!275128 (= e!170967 (= (list!1583 (_2!2384 (get!1282 lt!114087))) (_2!2383 (get!1281 (maxPrefix!339 thiss!17480 rules!1920 (list!1583 (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465)))))))))))

(assert (= (and d!80579 c!52118) b!275123))

(assert (= (and d!80579 (not c!52118)) b!275122))

(assert (= (or b!275123 b!275122) bm!15133))

(assert (= (and d!80579 res!125601) b!275126))

(assert (= (and b!275126 (not res!125599)) b!275124))

(assert (= (and b!275124 res!125600) b!275121))

(assert (= (and b!275126 res!125604) b!275127))

(assert (= (and b!275127 (not res!125602)) b!275125))

(assert (= (and b!275125 res!125603) b!275128))

(declare-fun m!350983 () Bool)

(assert (=> b!275125 m!350983))

(assert (=> b!275125 m!350393))

(declare-fun m!350985 () Bool)

(assert (=> b!275125 m!350985))

(assert (=> b!275125 m!350985))

(declare-fun m!350987 () Bool)

(assert (=> b!275125 m!350987))

(assert (=> b!275125 m!350987))

(declare-fun m!350989 () Bool)

(assert (=> b!275125 m!350989))

(assert (=> b!275128 m!350985))

(assert (=> b!275128 m!350987))

(assert (=> b!275128 m!350393))

(assert (=> b!275128 m!350985))

(assert (=> b!275128 m!350983))

(declare-fun m!350991 () Bool)

(assert (=> b!275128 m!350991))

(assert (=> b!275128 m!350987))

(assert (=> b!275128 m!350989))

(declare-fun m!350993 () Bool)

(assert (=> b!275126 m!350993))

(assert (=> b!275124 m!350983))

(assert (=> b!275124 m!350393))

(assert (=> b!275124 m!350985))

(assert (=> b!275124 m!350985))

(declare-fun m!350995 () Bool)

(assert (=> b!275124 m!350995))

(assert (=> b!275124 m!350995))

(declare-fun m!350997 () Bool)

(assert (=> b!275124 m!350997))

(assert (=> b!275127 m!350993))

(assert (=> b!275121 m!350985))

(assert (=> b!275121 m!350995))

(assert (=> b!275121 m!350995))

(assert (=> b!275121 m!350997))

(assert (=> b!275121 m!350393))

(assert (=> b!275121 m!350985))

(assert (=> b!275121 m!350983))

(assert (=> b!275121 m!350991))

(assert (=> bm!15133 m!350393))

(declare-fun m!350999 () Bool)

(assert (=> bm!15133 m!350999))

(assert (=> b!275122 m!350393))

(declare-fun m!351001 () Bool)

(assert (=> b!275122 m!351001))

(assert (=> d!80579 m!350995))

(declare-fun m!351003 () Bool)

(assert (=> d!80579 m!351003))

(assert (=> d!80579 m!350393))

(assert (=> d!80579 m!350985))

(declare-fun m!351005 () Bool)

(assert (=> d!80579 m!351005))

(declare-fun m!351007 () Bool)

(assert (=> d!80579 m!351007))

(declare-fun m!351009 () Bool)

(assert (=> d!80579 m!351009))

(assert (=> d!80579 m!350993))

(assert (=> d!80579 m!350985))

(assert (=> d!80579 m!350995))

(assert (=> b!274677 d!80579))

(declare-fun d!80595 () Bool)

(declare-fun fromListB!329 (List!3858) BalanceConc!2592)

(assert (=> d!80595 (= (seqFromList!837 (originalCharacters!778 (h!9247 tokens!465))) (fromListB!329 (originalCharacters!778 (h!9247 tokens!465))))))

(declare-fun bs!30853 () Bool)

(assert (= bs!30853 d!80595))

(declare-fun m!351011 () Bool)

(assert (=> bs!30853 m!351011))

(assert (=> b!274677 d!80595))

(declare-fun d!80597 () Bool)

(declare-fun dynLambda!1997 (Int Token!1214) Bool)

(assert (=> d!80597 (dynLambda!1997 lambda!9326 (h!9247 tokens!465))))

(declare-fun lt!114091 () Unit!5020)

(declare-fun choose!2486 (List!3860 Int Token!1214) Unit!5020)

(assert (=> d!80597 (= lt!114091 (choose!2486 tokens!465 lambda!9326 (h!9247 tokens!465)))))

(declare-fun e!170975 () Bool)

(assert (=> d!80597 e!170975))

(declare-fun res!125607 () Bool)

(assert (=> d!80597 (=> (not res!125607) (not e!170975))))

(assert (=> d!80597 (= res!125607 (forall!976 tokens!465 lambda!9326))))

(assert (=> d!80597 (= (forallContained!290 tokens!465 lambda!9326 (h!9247 tokens!465)) lt!114091)))

(declare-fun b!275131 () Bool)

(declare-fun contains!733 (List!3860 Token!1214) Bool)

(assert (=> b!275131 (= e!170975 (contains!733 tokens!465 (h!9247 tokens!465)))))

(assert (= (and d!80597 res!125607) b!275131))

(declare-fun b_lambda!8849 () Bool)

(assert (=> (not b_lambda!8849) (not d!80597)))

(declare-fun m!351013 () Bool)

(assert (=> d!80597 m!351013))

(declare-fun m!351015 () Bool)

(assert (=> d!80597 m!351015))

(declare-fun m!351017 () Bool)

(assert (=> d!80597 m!351017))

(declare-fun m!351019 () Bool)

(assert (=> b!275131 m!351019))

(assert (=> b!274677 d!80597))

(declare-fun d!80599 () Bool)

(assert (=> d!80599 (= (get!1281 lt!113876) (v!14706 lt!113876))))

(assert (=> b!274697 d!80599))

(declare-fun d!80601 () Bool)

(assert (=> d!80601 (= (head!896 tokens!465) (h!9247 tokens!465))))

(assert (=> b!274697 d!80601))

(declare-fun d!80603 () Bool)

(assert (=> d!80603 (= (isEmpty!2466 lt!113874) ((_ is Nil!3848) lt!113874))))

(assert (=> b!274676 d!80603))

(declare-fun d!80605 () Bool)

(declare-fun isEmpty!2475 (Option!824) Bool)

(assert (=> d!80605 (= (isDefined!667 lt!113876) (not (isEmpty!2475 lt!113876)))))

(declare-fun bs!30854 () Bool)

(assert (= bs!30854 d!80605))

(declare-fun m!351021 () Bool)

(assert (=> bs!30854 m!351021))

(assert (=> b!274675 d!80605))

(declare-fun d!80607 () Bool)

(declare-fun e!171005 () Bool)

(assert (=> d!80607 e!171005))

(declare-fun res!125649 () Bool)

(assert (=> d!80607 (=> res!125649 e!171005)))

(declare-fun lt!114129 () Option!824)

(assert (=> d!80607 (= res!125649 (isEmpty!2475 lt!114129))))

(declare-fun e!171003 () Option!824)

(assert (=> d!80607 (= lt!114129 e!171003)))

(declare-fun c!52124 () Bool)

(assert (=> d!80607 (= c!52124 (and ((_ is Cons!3849) rules!1920) ((_ is Nil!3849) (t!38949 rules!1920))))))

(declare-fun lt!114126 () Unit!5020)

(declare-fun lt!114130 () Unit!5020)

(assert (=> d!80607 (= lt!114126 lt!114130)))

(assert (=> d!80607 (isPrefix!403 lt!113881 lt!113881)))

(assert (=> d!80607 (= lt!114130 (lemmaIsPrefixRefl!213 lt!113881 lt!113881))))

(assert (=> d!80607 (rulesValidInductive!208 thiss!17480 rules!1920)))

(assert (=> d!80607 (= (maxPrefix!339 thiss!17480 rules!1920 lt!113881) lt!114129)))

(declare-fun b!275177 () Bool)

(declare-fun res!125643 () Bool)

(declare-fun e!171004 () Bool)

(assert (=> b!275177 (=> (not res!125643) (not e!171004))))

(assert (=> b!275177 (= res!125643 (matchR!281 (regex!735 (rule!1322 (_1!2383 (get!1281 lt!114129)))) (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114129))))))))

(declare-fun b!275178 () Bool)

(declare-fun res!125644 () Bool)

(assert (=> b!275178 (=> (not res!125644) (not e!171004))))

(assert (=> b!275178 (= res!125644 (= (++!1014 (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114129)))) (_2!2383 (get!1281 lt!114129))) lt!113881))))

(declare-fun b!275179 () Bool)

(declare-fun res!125648 () Bool)

(assert (=> b!275179 (=> (not res!125648) (not e!171004))))

(declare-fun apply!790 (TokenValueInjection!1286 BalanceConc!2592) TokenValue!757)

(assert (=> b!275179 (= res!125648 (= (value!25263 (_1!2383 (get!1281 lt!114129))) (apply!790 (transformation!735 (rule!1322 (_1!2383 (get!1281 lt!114129)))) (seqFromList!837 (originalCharacters!778 (_1!2383 (get!1281 lt!114129)))))))))

(declare-fun b!275180 () Bool)

(assert (=> b!275180 (= e!171005 e!171004)))

(declare-fun res!125647 () Bool)

(assert (=> b!275180 (=> (not res!125647) (not e!171004))))

(assert (=> b!275180 (= res!125647 (isDefined!667 lt!114129))))

(declare-fun b!275181 () Bool)

(declare-fun lt!114128 () Option!824)

(declare-fun lt!114127 () Option!824)

(assert (=> b!275181 (= e!171003 (ite (and ((_ is None!823) lt!114128) ((_ is None!823) lt!114127)) None!823 (ite ((_ is None!823) lt!114127) lt!114128 (ite ((_ is None!823) lt!114128) lt!114127 (ite (>= (size!3073 (_1!2383 (v!14706 lt!114128))) (size!3073 (_1!2383 (v!14706 lt!114127)))) lt!114128 lt!114127)))))))

(declare-fun call!15144 () Option!824)

(assert (=> b!275181 (= lt!114128 call!15144)))

(assert (=> b!275181 (= lt!114127 (maxPrefix!339 thiss!17480 (t!38949 rules!1920) lt!113881))))

(declare-fun b!275182 () Bool)

(declare-fun res!125646 () Bool)

(assert (=> b!275182 (=> (not res!125646) (not e!171004))))

(assert (=> b!275182 (= res!125646 (= (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114129)))) (originalCharacters!778 (_1!2383 (get!1281 lt!114129)))))))

(declare-fun b!275183 () Bool)

(declare-fun contains!735 (List!3859 Rule!1270) Bool)

(assert (=> b!275183 (= e!171004 (contains!735 rules!1920 (rule!1322 (_1!2383 (get!1281 lt!114129)))))))

(declare-fun b!275184 () Bool)

(declare-fun res!125645 () Bool)

(assert (=> b!275184 (=> (not res!125645) (not e!171004))))

(assert (=> b!275184 (= res!125645 (< (size!3078 (_2!2383 (get!1281 lt!114129))) (size!3078 lt!113881)))))

(declare-fun b!275185 () Bool)

(assert (=> b!275185 (= e!171003 call!15144)))

(declare-fun bm!15139 () Bool)

(declare-fun maxPrefixOneRule!147 (LexerInterface!621 Rule!1270 List!3858) Option!824)

(assert (=> bm!15139 (= call!15144 (maxPrefixOneRule!147 thiss!17480 (h!9246 rules!1920) lt!113881))))

(assert (= (and d!80607 c!52124) b!275185))

(assert (= (and d!80607 (not c!52124)) b!275181))

(assert (= (or b!275185 b!275181) bm!15139))

(assert (= (and d!80607 (not res!125649)) b!275180))

(assert (= (and b!275180 res!125647) b!275182))

(assert (= (and b!275182 res!125646) b!275184))

(assert (= (and b!275184 res!125645) b!275178))

(assert (= (and b!275178 res!125644) b!275179))

(assert (= (and b!275179 res!125648) b!275177))

(assert (= (and b!275177 res!125643) b!275183))

(declare-fun m!351061 () Bool)

(assert (=> b!275180 m!351061))

(declare-fun m!351063 () Bool)

(assert (=> b!275179 m!351063))

(declare-fun m!351065 () Bool)

(assert (=> b!275179 m!351065))

(assert (=> b!275179 m!351065))

(declare-fun m!351067 () Bool)

(assert (=> b!275179 m!351067))

(declare-fun m!351069 () Bool)

(assert (=> b!275181 m!351069))

(assert (=> b!275177 m!351063))

(declare-fun m!351071 () Bool)

(assert (=> b!275177 m!351071))

(assert (=> b!275177 m!351071))

(declare-fun m!351073 () Bool)

(assert (=> b!275177 m!351073))

(assert (=> b!275177 m!351073))

(declare-fun m!351075 () Bool)

(assert (=> b!275177 m!351075))

(declare-fun m!351077 () Bool)

(assert (=> d!80607 m!351077))

(declare-fun m!351079 () Bool)

(assert (=> d!80607 m!351079))

(declare-fun m!351081 () Bool)

(assert (=> d!80607 m!351081))

(assert (=> d!80607 m!351007))

(assert (=> b!275178 m!351063))

(assert (=> b!275178 m!351071))

(assert (=> b!275178 m!351071))

(assert (=> b!275178 m!351073))

(assert (=> b!275178 m!351073))

(declare-fun m!351083 () Bool)

(assert (=> b!275178 m!351083))

(assert (=> b!275182 m!351063))

(assert (=> b!275182 m!351071))

(assert (=> b!275182 m!351071))

(assert (=> b!275182 m!351073))

(assert (=> b!275183 m!351063))

(declare-fun m!351085 () Bool)

(assert (=> b!275183 m!351085))

(assert (=> b!275184 m!351063))

(declare-fun m!351087 () Bool)

(assert (=> b!275184 m!351087))

(declare-fun m!351089 () Bool)

(assert (=> b!275184 m!351089))

(declare-fun m!351091 () Bool)

(assert (=> bm!15139 m!351091))

(assert (=> b!274675 d!80607))

(declare-fun b!275186 () Bool)

(declare-fun res!125650 () Bool)

(declare-fun e!171008 () Bool)

(assert (=> b!275186 (=> res!125650 e!171008)))

(assert (=> b!275186 (= res!125650 (not ((_ is IntegerValue!2273) (value!25263 (h!9247 tokens!465)))))))

(declare-fun e!171006 () Bool)

(assert (=> b!275186 (= e!171006 e!171008)))

(declare-fun b!275187 () Bool)

(assert (=> b!275187 (= e!171006 (inv!17 (value!25263 (h!9247 tokens!465))))))

(declare-fun b!275188 () Bool)

(declare-fun e!171007 () Bool)

(assert (=> b!275188 (= e!171007 (inv!16 (value!25263 (h!9247 tokens!465))))))

(declare-fun b!275189 () Bool)

(assert (=> b!275189 (= e!171008 (inv!15 (value!25263 (h!9247 tokens!465))))))

(declare-fun d!80617 () Bool)

(declare-fun c!52126 () Bool)

(assert (=> d!80617 (= c!52126 ((_ is IntegerValue!2271) (value!25263 (h!9247 tokens!465))))))

(assert (=> d!80617 (= (inv!21 (value!25263 (h!9247 tokens!465))) e!171007)))

(declare-fun b!275190 () Bool)

(assert (=> b!275190 (= e!171007 e!171006)))

(declare-fun c!52125 () Bool)

(assert (=> b!275190 (= c!52125 ((_ is IntegerValue!2272) (value!25263 (h!9247 tokens!465))))))

(assert (= (and d!80617 c!52126) b!275188))

(assert (= (and d!80617 (not c!52126)) b!275190))

(assert (= (and b!275190 c!52125) b!275187))

(assert (= (and b!275190 (not c!52125)) b!275186))

(assert (= (and b!275186 (not res!125650)) b!275189))

(declare-fun m!351093 () Bool)

(assert (=> b!275187 m!351093))

(declare-fun m!351095 () Bool)

(assert (=> b!275188 m!351095))

(declare-fun m!351097 () Bool)

(assert (=> b!275189 m!351097))

(assert (=> b!274696 d!80617))

(declare-fun b!275192 () Bool)

(declare-fun e!171010 () List!3858)

(assert (=> b!275192 (= e!171010 (Cons!3848 (h!9245 lt!113887) (++!1014 (t!38948 lt!113887) lt!113874)))))

(declare-fun d!80619 () Bool)

(declare-fun e!171009 () Bool)

(assert (=> d!80619 e!171009))

(declare-fun res!125651 () Bool)

(assert (=> d!80619 (=> (not res!125651) (not e!171009))))

(declare-fun lt!114131 () List!3858)

(assert (=> d!80619 (= res!125651 (= (content!556 lt!114131) ((_ map or) (content!556 lt!113887) (content!556 lt!113874))))))

(assert (=> d!80619 (= lt!114131 e!171010)))

(declare-fun c!52127 () Bool)

(assert (=> d!80619 (= c!52127 ((_ is Nil!3848) lt!113887))))

(assert (=> d!80619 (= (++!1014 lt!113887 lt!113874) lt!114131)))

(declare-fun b!275194 () Bool)

(assert (=> b!275194 (= e!171009 (or (not (= lt!113874 Nil!3848)) (= lt!114131 lt!113887)))))

(declare-fun b!275193 () Bool)

(declare-fun res!125652 () Bool)

(assert (=> b!275193 (=> (not res!125652) (not e!171009))))

(assert (=> b!275193 (= res!125652 (= (size!3078 lt!114131) (+ (size!3078 lt!113887) (size!3078 lt!113874))))))

(declare-fun b!275191 () Bool)

(assert (=> b!275191 (= e!171010 lt!113874)))

(assert (= (and d!80619 c!52127) b!275191))

(assert (= (and d!80619 (not c!52127)) b!275192))

(assert (= (and d!80619 res!125651) b!275193))

(assert (= (and b!275193 res!125652) b!275194))

(declare-fun m!351099 () Bool)

(assert (=> b!275192 m!351099))

(declare-fun m!351101 () Bool)

(assert (=> d!80619 m!351101))

(assert (=> d!80619 m!350579))

(assert (=> d!80619 m!350847))

(declare-fun m!351103 () Bool)

(assert (=> b!275193 m!351103))

(assert (=> b!275193 m!350585))

(assert (=> b!275193 m!350851))

(assert (=> b!274695 d!80619))

(declare-fun d!80621 () Bool)

(assert (=> d!80621 (= (list!1583 (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 lt!113879 separatorToken!170 0)) (list!1587 (c!52034 (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 lt!113879 separatorToken!170 0))))))

(declare-fun bs!30857 () Bool)

(assert (= bs!30857 d!80621))

(declare-fun m!351105 () Bool)

(assert (=> bs!30857 m!351105))

(assert (=> b!274674 d!80621))

(declare-fun bs!30858 () Bool)

(declare-fun d!80623 () Bool)

(assert (= bs!30858 (and d!80623 d!80523)))

(declare-fun lambda!9341 () Int)

(assert (=> bs!30858 (= lambda!9341 lambda!9339)))

(declare-fun bs!30859 () Bool)

(assert (= bs!30859 (and d!80623 b!274688)))

(assert (=> bs!30859 (= lambda!9341 lambda!9325)))

(declare-fun bs!30860 () Bool)

(assert (= bs!30860 (and d!80623 b!275031)))

(assert (=> bs!30860 (not (= lambda!9341 lambda!9340))))

(declare-fun bs!30861 () Bool)

(assert (= bs!30861 (and d!80623 b!274677)))

(assert (=> bs!30861 (not (= lambda!9341 lambda!9326))))

(declare-fun bs!30862 () Bool)

(assert (= bs!30862 (and d!80623 b!274925)))

(assert (=> bs!30862 (not (= lambda!9341 lambda!9334))))

(declare-fun bs!30863 () Bool)

(declare-fun b!275201 () Bool)

(assert (= bs!30863 (and b!275201 d!80623)))

(declare-fun lambda!9342 () Int)

(assert (=> bs!30863 (not (= lambda!9342 lambda!9341))))

(declare-fun bs!30864 () Bool)

(assert (= bs!30864 (and b!275201 d!80523)))

(assert (=> bs!30864 (not (= lambda!9342 lambda!9339))))

(declare-fun bs!30865 () Bool)

(assert (= bs!30865 (and b!275201 b!274688)))

(assert (=> bs!30865 (not (= lambda!9342 lambda!9325))))

(declare-fun bs!30866 () Bool)

(assert (= bs!30866 (and b!275201 b!275031)))

(assert (=> bs!30866 (= lambda!9342 lambda!9340)))

(declare-fun bs!30867 () Bool)

(assert (= bs!30867 (and b!275201 b!274677)))

(assert (=> bs!30867 (= lambda!9342 lambda!9326)))

(declare-fun bs!30868 () Bool)

(assert (= bs!30868 (and b!275201 b!274925)))

(assert (=> bs!30868 (= lambda!9342 lambda!9334)))

(declare-fun b!275206 () Bool)

(declare-fun e!171019 () Bool)

(assert (=> b!275206 (= e!171019 true)))

(declare-fun b!275205 () Bool)

(declare-fun e!171018 () Bool)

(assert (=> b!275205 (= e!171018 e!171019)))

(declare-fun b!275204 () Bool)

(declare-fun e!171017 () Bool)

(assert (=> b!275204 (= e!171017 e!171018)))

(assert (=> b!275201 e!171017))

(assert (= b!275205 b!275206))

(assert (= b!275204 b!275205))

(assert (= (and b!275201 ((_ is Cons!3849) rules!1920)) b!275204))

(assert (=> b!275206 (< (dynLambda!1991 order!2985 (toValue!1478 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9342))))

(assert (=> b!275206 (< (dynLambda!1993 order!2989 (toChars!1337 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9342))))

(assert (=> b!275201 true))

(declare-fun b!275195 () Bool)

(declare-fun e!171013 () BalanceConc!2592)

(assert (=> b!275195 (= e!171013 (BalanceConc!2593 Empty!1292))))

(declare-fun call!15146 () Token!1214)

(assert (=> b!275195 (= (print!346 thiss!17480 (singletonSeq!281 call!15146)) (printTailRec!309 thiss!17480 (singletonSeq!281 call!15146) 0 (BalanceConc!2593 Empty!1292)))))

(declare-fun lt!114135 () Unit!5020)

(declare-fun Unit!5028 () Unit!5020)

(assert (=> b!275195 (= lt!114135 Unit!5028)))

(declare-fun lt!114140 () Unit!5020)

(declare-fun call!15148 () BalanceConc!2592)

(declare-fun lt!114137 () BalanceConc!2592)

(assert (=> b!275195 (= lt!114140 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!115 thiss!17480 rules!1920 (list!1583 call!15148) (list!1583 lt!114137)))))

(assert (=> b!275195 false))

(declare-fun lt!114136 () Unit!5020)

(declare-fun Unit!5029 () Unit!5020)

(assert (=> b!275195 (= lt!114136 Unit!5029)))

(declare-fun b!275196 () Bool)

(declare-fun e!171012 () Bool)

(declare-fun lt!114134 () Option!825)

(assert (=> b!275196 (= e!171012 (= (_1!2384 (v!14707 lt!114134)) (apply!787 lt!113879 0)))))

(declare-fun b!275197 () Bool)

(declare-fun e!171016 () Bool)

(assert (=> b!275197 (= e!171016 (<= 0 (size!3076 lt!113879)))))

(declare-fun bm!15140 () Bool)

(declare-fun call!15145 () Token!1214)

(assert (=> bm!15140 (= call!15145 (apply!787 lt!113879 0))))

(declare-fun bm!15141 () Bool)

(assert (=> bm!15141 (= call!15146 call!15145)))

(declare-fun b!275198 () Bool)

(declare-fun e!171015 () Bool)

(assert (=> b!275198 (= e!171015 (not (= (_1!2384 (v!14707 lt!114134)) call!15145)))))

(declare-fun call!15147 () BalanceConc!2592)

(declare-fun c!52130 () Bool)

(declare-fun bm!15142 () Bool)

(declare-fun call!15149 () BalanceConc!2592)

(assert (=> bm!15142 (= call!15147 (++!1015 call!15149 (ite c!52130 lt!114137 call!15148)))))

(declare-fun lt!114142 () BalanceConc!2592)

(assert (=> d!80623 (= (list!1583 lt!114142) (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 (dropList!167 lt!113879 0) separatorToken!170))))

(declare-fun e!171014 () BalanceConc!2592)

(assert (=> d!80623 (= lt!114142 e!171014)))

(declare-fun c!52128 () Bool)

(assert (=> d!80623 (= c!52128 (>= 0 (size!3076 lt!113879)))))

(declare-fun lt!114138 () Unit!5020)

(assert (=> d!80623 (= lt!114138 (lemmaContentSubsetPreservesForall!111 (list!1586 lt!113879) (dropList!167 lt!113879 0) lambda!9341))))

(assert (=> d!80623 e!171016))

(declare-fun res!125653 () Bool)

(assert (=> d!80623 (=> (not res!125653) (not e!171016))))

(assert (=> d!80623 (= res!125653 (>= 0 0))))

(assert (=> d!80623 (= (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 lt!113879 separatorToken!170 0) lt!114142)))

(declare-fun b!275199 () Bool)

(declare-fun c!52129 () Bool)

(assert (=> b!275199 (= c!52129 e!171015)))

(declare-fun res!125655 () Bool)

(assert (=> b!275199 (=> (not res!125655) (not e!171015))))

(assert (=> b!275199 (= res!125655 ((_ is Some!824) lt!114134))))

(declare-fun e!171011 () BalanceConc!2592)

(assert (=> b!275199 (= e!171011 e!171013)))

(declare-fun bm!15143 () Bool)

(assert (=> bm!15143 (= call!15149 (charsOf!380 (ite c!52130 call!15145 call!15146)))))

(declare-fun b!275200 () Bool)

(assert (=> b!275200 (= e!171011 call!15147)))

(assert (=> b!275201 (= e!171014 e!171011)))

(declare-fun lt!114133 () List!3860)

(assert (=> b!275201 (= lt!114133 (list!1586 lt!113879))))

(declare-fun lt!114144 () Unit!5020)

(assert (=> b!275201 (= lt!114144 (lemmaDropApply!207 lt!114133 0))))

(assert (=> b!275201 (= (head!896 (drop!220 lt!114133 0)) (apply!788 lt!114133 0))))

(declare-fun lt!114145 () Unit!5020)

(assert (=> b!275201 (= lt!114145 lt!114144)))

(declare-fun lt!114132 () List!3860)

(assert (=> b!275201 (= lt!114132 (list!1586 lt!113879))))

(declare-fun lt!114141 () Unit!5020)

(assert (=> b!275201 (= lt!114141 (lemmaDropTail!199 lt!114132 0))))

(assert (=> b!275201 (= (tail!487 (drop!220 lt!114132 0)) (drop!220 lt!114132 (+ 0 1)))))

(declare-fun lt!114139 () Unit!5020)

(assert (=> b!275201 (= lt!114139 lt!114141)))

(declare-fun lt!114143 () Unit!5020)

(assert (=> b!275201 (= lt!114143 (forallContained!290 (list!1586 lt!113879) lambda!9342 (apply!787 lt!113879 0)))))

(assert (=> b!275201 (= lt!114137 (printWithSeparatorTokenWhenNeededRec!296 thiss!17480 rules!1920 lt!113879 separatorToken!170 (+ 0 1)))))

(assert (=> b!275201 (= lt!114134 (maxPrefixZipperSequence!302 thiss!17480 rules!1920 (++!1015 (charsOf!380 (apply!787 lt!113879 0)) lt!114137)))))

(declare-fun res!125654 () Bool)

(assert (=> b!275201 (= res!125654 ((_ is Some!824) lt!114134))))

(assert (=> b!275201 (=> (not res!125654) (not e!171012))))

(assert (=> b!275201 (= c!52130 e!171012)))

(declare-fun b!275202 () Bool)

(assert (=> b!275202 (= e!171014 (BalanceConc!2593 Empty!1292))))

(declare-fun bm!15144 () Bool)

(assert (=> bm!15144 (= call!15148 (charsOf!380 (ite c!52129 separatorToken!170 call!15146)))))

(declare-fun b!275203 () Bool)

(assert (=> b!275203 (= e!171013 (++!1015 call!15147 lt!114137))))

(assert (= (and d!80623 res!125653) b!275197))

(assert (= (and d!80623 c!52128) b!275202))

(assert (= (and d!80623 (not c!52128)) b!275201))

(assert (= (and b!275201 res!125654) b!275196))

(assert (= (and b!275201 c!52130) b!275200))

(assert (= (and b!275201 (not c!52130)) b!275199))

(assert (= (and b!275199 res!125655) b!275198))

(assert (= (and b!275199 c!52129) b!275203))

(assert (= (and b!275199 (not c!52129)) b!275195))

(assert (= (or b!275203 b!275195) bm!15141))

(assert (= (or b!275203 b!275195) bm!15144))

(assert (= (or b!275200 bm!15141 b!275198) bm!15140))

(assert (= (or b!275200 b!275203) bm!15143))

(assert (= (or b!275200 b!275203) bm!15142))

(declare-fun m!351107 () Bool)

(assert (=> bm!15140 m!351107))

(declare-fun m!351109 () Bool)

(assert (=> d!80623 m!351109))

(declare-fun m!351111 () Bool)

(assert (=> d!80623 m!351111))

(assert (=> d!80623 m!351109))

(declare-fun m!351113 () Bool)

(assert (=> d!80623 m!351113))

(declare-fun m!351115 () Bool)

(assert (=> d!80623 m!351115))

(assert (=> d!80623 m!351113))

(declare-fun m!351117 () Bool)

(assert (=> d!80623 m!351117))

(assert (=> d!80623 m!351113))

(declare-fun m!351119 () Bool)

(assert (=> d!80623 m!351119))

(declare-fun m!351121 () Bool)

(assert (=> bm!15143 m!351121))

(assert (=> b!275196 m!351107))

(declare-fun m!351123 () Bool)

(assert (=> b!275203 m!351123))

(assert (=> b!275197 m!351111))

(declare-fun m!351125 () Bool)

(assert (=> bm!15142 m!351125))

(declare-fun m!351127 () Bool)

(assert (=> bm!15144 m!351127))

(declare-fun m!351129 () Bool)

(assert (=> b!275201 m!351129))

(declare-fun m!351131 () Bool)

(assert (=> b!275201 m!351131))

(declare-fun m!351133 () Bool)

(assert (=> b!275201 m!351133))

(declare-fun m!351135 () Bool)

(assert (=> b!275201 m!351135))

(assert (=> b!275201 m!351109))

(assert (=> b!275201 m!351109))

(assert (=> b!275201 m!351107))

(declare-fun m!351137 () Bool)

(assert (=> b!275201 m!351137))

(assert (=> b!275201 m!351135))

(declare-fun m!351139 () Bool)

(assert (=> b!275201 m!351139))

(declare-fun m!351141 () Bool)

(assert (=> b!275201 m!351141))

(declare-fun m!351143 () Bool)

(assert (=> b!275201 m!351143))

(declare-fun m!351145 () Bool)

(assert (=> b!275201 m!351145))

(declare-fun m!351147 () Bool)

(assert (=> b!275201 m!351147))

(declare-fun m!351149 () Bool)

(assert (=> b!275201 m!351149))

(assert (=> b!275201 m!351107))

(assert (=> b!275201 m!351133))

(assert (=> b!275201 m!351129))

(assert (=> b!275201 m!351107))

(declare-fun m!351151 () Bool)

(assert (=> b!275201 m!351151))

(assert (=> b!275201 m!351145))

(declare-fun m!351153 () Bool)

(assert (=> b!275201 m!351153))

(declare-fun m!351155 () Bool)

(assert (=> b!275195 m!351155))

(declare-fun m!351157 () Bool)

(assert (=> b!275195 m!351157))

(assert (=> b!275195 m!351155))

(declare-fun m!351159 () Bool)

(assert (=> b!275195 m!351159))

(declare-fun m!351161 () Bool)

(assert (=> b!275195 m!351161))

(declare-fun m!351163 () Bool)

(assert (=> b!275195 m!351163))

(assert (=> b!275195 m!351163))

(assert (=> b!275195 m!351161))

(declare-fun m!351165 () Bool)

(assert (=> b!275195 m!351165))

(assert (=> b!275195 m!351155))

(assert (=> b!274674 d!80623))

(declare-fun bs!30869 () Bool)

(declare-fun b!275212 () Bool)

(assert (= bs!30869 (and b!275212 d!80523)))

(declare-fun lambda!9343 () Int)

(assert (=> bs!30869 (not (= lambda!9343 lambda!9339))))

(declare-fun bs!30870 () Bool)

(assert (= bs!30870 (and b!275212 b!274688)))

(assert (=> bs!30870 (not (= lambda!9343 lambda!9325))))

(declare-fun bs!30871 () Bool)

(assert (= bs!30871 (and b!275212 b!275031)))

(assert (=> bs!30871 (= lambda!9343 lambda!9340)))

(declare-fun bs!30872 () Bool)

(assert (= bs!30872 (and b!275212 b!274677)))

(assert (=> bs!30872 (= lambda!9343 lambda!9326)))

(declare-fun bs!30873 () Bool)

(assert (= bs!30873 (and b!275212 b!274925)))

(assert (=> bs!30873 (= lambda!9343 lambda!9334)))

(declare-fun bs!30874 () Bool)

(assert (= bs!30874 (and b!275212 b!275201)))

(assert (=> bs!30874 (= lambda!9343 lambda!9342)))

(declare-fun bs!30875 () Bool)

(assert (= bs!30875 (and b!275212 d!80623)))

(assert (=> bs!30875 (not (= lambda!9343 lambda!9341))))

(declare-fun b!275219 () Bool)

(declare-fun e!171027 () Bool)

(assert (=> b!275219 (= e!171027 true)))

(declare-fun b!275218 () Bool)

(declare-fun e!171026 () Bool)

(assert (=> b!275218 (= e!171026 e!171027)))

(declare-fun b!275217 () Bool)

(declare-fun e!171025 () Bool)

(assert (=> b!275217 (= e!171025 e!171026)))

(assert (=> b!275212 e!171025))

(assert (= b!275218 b!275219))

(assert (= b!275217 b!275218))

(assert (= (and b!275212 ((_ is Cons!3849) rules!1920)) b!275217))

(assert (=> b!275219 (< (dynLambda!1991 order!2985 (toValue!1478 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9343))))

(assert (=> b!275219 (< (dynLambda!1993 order!2989 (toChars!1337 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9343))))

(assert (=> b!275212 true))

(declare-fun b!275207 () Bool)

(declare-fun e!171023 () List!3858)

(declare-fun call!15150 () List!3858)

(assert (=> b!275207 (= e!171023 call!15150)))

(declare-fun b!275208 () Bool)

(declare-fun call!15152 () BalanceConc!2592)

(assert (=> b!275208 (= e!171023 (list!1583 call!15152))))

(declare-fun b!275209 () Bool)

(declare-fun e!171021 () BalanceConc!2592)

(assert (=> b!275209 (= e!171021 call!15152)))

(declare-fun d!80625 () Bool)

(declare-fun c!52134 () Bool)

(assert (=> d!80625 (= c!52134 ((_ is Cons!3850) tokens!465))))

(declare-fun e!171022 () List!3858)

(assert (=> d!80625 (= (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!171022)))

(declare-fun c!52132 () Bool)

(declare-fun call!15154 () BalanceConc!2592)

(declare-fun bm!15145 () Bool)

(assert (=> bm!15145 (= call!15150 (list!1583 (ite c!52132 call!15154 e!171021)))))

(declare-fun bm!15146 () Bool)

(assert (=> bm!15146 (= call!15152 call!15154)))

(declare-fun b!275210 () Bool)

(declare-fun c!52131 () Bool)

(declare-fun lt!114150 () Option!824)

(assert (=> b!275210 (= c!52131 (and ((_ is Some!823) lt!114150) (not (= (_1!2383 (v!14706 lt!114150)) (h!9247 tokens!465)))))))

(declare-fun e!171024 () List!3858)

(declare-fun e!171020 () List!3858)

(assert (=> b!275210 (= e!171024 e!171020)))

(declare-fun bm!15147 () Bool)

(declare-fun call!15153 () List!3858)

(assert (=> bm!15147 (= call!15153 call!15150)))

(declare-fun c!52135 () Bool)

(assert (=> bm!15147 (= c!52135 c!52131)))

(declare-fun b!275211 () Bool)

(assert (=> b!275211 (= e!171022 Nil!3848)))

(assert (=> b!275212 (= e!171022 e!171024)))

(declare-fun lt!114146 () Unit!5020)

(assert (=> b!275212 (= lt!114146 (forallContained!290 tokens!465 lambda!9343 (h!9247 tokens!465)))))

(declare-fun lt!114151 () List!3858)

(assert (=> b!275212 (= lt!114151 (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 (t!38950 tokens!465) separatorToken!170))))

(assert (=> b!275212 (= lt!114150 (maxPrefix!339 thiss!17480 rules!1920 (++!1014 (list!1583 (charsOf!380 (h!9247 tokens!465))) lt!114151)))))

(assert (=> b!275212 (= c!52132 (and ((_ is Some!823) lt!114150) (= (_1!2383 (v!14706 lt!114150)) (h!9247 tokens!465))))))

(declare-fun b!275213 () Bool)

(assert (=> b!275213 (= e!171021 (charsOf!380 separatorToken!170))))

(declare-fun bm!15148 () Bool)

(assert (=> bm!15148 (= call!15154 (charsOf!380 (h!9247 tokens!465)))))

(declare-fun b!275214 () Bool)

(declare-fun call!15151 () List!3858)

(assert (=> b!275214 (= e!171024 call!15151)))

(declare-fun bm!15149 () Bool)

(declare-fun c!52133 () Bool)

(assert (=> bm!15149 (= c!52133 c!52132)))

(assert (=> bm!15149 (= call!15151 (++!1014 e!171023 (ite c!52132 lt!114151 call!15153)))))

(declare-fun b!275215 () Bool)

(assert (=> b!275215 (= e!171020 Nil!3848)))

(assert (=> b!275215 (= (print!346 thiss!17480 (singletonSeq!281 (h!9247 tokens!465))) (printTailRec!309 thiss!17480 (singletonSeq!281 (h!9247 tokens!465)) 0 (BalanceConc!2593 Empty!1292)))))

(declare-fun lt!114148 () Unit!5020)

(declare-fun Unit!5032 () Unit!5020)

(assert (=> b!275215 (= lt!114148 Unit!5032)))

(declare-fun lt!114147 () Unit!5020)

(assert (=> b!275215 (= lt!114147 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!115 thiss!17480 rules!1920 call!15153 lt!114151))))

(assert (=> b!275215 false))

(declare-fun lt!114149 () Unit!5020)

(declare-fun Unit!5033 () Unit!5020)

(assert (=> b!275215 (= lt!114149 Unit!5033)))

(declare-fun b!275216 () Bool)

(assert (=> b!275216 (= e!171020 (++!1014 call!15151 lt!114151))))

(assert (= (and d!80625 c!52134) b!275212))

(assert (= (and d!80625 (not c!52134)) b!275211))

(assert (= (and b!275212 c!52132) b!275214))

(assert (= (and b!275212 (not c!52132)) b!275210))

(assert (= (and b!275210 c!52131) b!275216))

(assert (= (and b!275210 (not c!52131)) b!275215))

(assert (= (or b!275216 b!275215) bm!15146))

(assert (= (or b!275216 b!275215) bm!15147))

(assert (= (and bm!15147 c!52135) b!275213))

(assert (= (and bm!15147 (not c!52135)) b!275209))

(assert (= (or b!275214 bm!15146) bm!15148))

(assert (= (or b!275214 bm!15147) bm!15145))

(assert (= (or b!275214 b!275216) bm!15149))

(assert (= (and bm!15149 c!52133) b!275207))

(assert (= (and bm!15149 (not c!52133)) b!275208))

(declare-fun m!351167 () Bool)

(assert (=> b!275212 m!351167))

(declare-fun m!351169 () Bool)

(assert (=> b!275212 m!351169))

(assert (=> b!275212 m!350425))

(declare-fun m!351171 () Bool)

(assert (=> b!275212 m!351171))

(assert (=> b!275212 m!350413))

(assert (=> b!275212 m!350425))

(assert (=> b!275212 m!350427))

(assert (=> b!275212 m!350427))

(assert (=> b!275212 m!351167))

(declare-fun m!351173 () Bool)

(assert (=> b!275208 m!351173))

(declare-fun m!351175 () Bool)

(assert (=> b!275216 m!351175))

(assert (=> b!275213 m!350415))

(declare-fun m!351177 () Bool)

(assert (=> bm!15149 m!351177))

(declare-fun m!351179 () Bool)

(assert (=> bm!15145 m!351179))

(assert (=> bm!15148 m!350425))

(assert (=> b!275215 m!350385))

(assert (=> b!275215 m!350385))

(assert (=> b!275215 m!350529))

(assert (=> b!275215 m!350385))

(declare-fun m!351181 () Bool)

(assert (=> b!275215 m!351181))

(declare-fun m!351183 () Bool)

(assert (=> b!275215 m!351183))

(assert (=> b!274674 d!80625))

(declare-fun d!80627 () Bool)

(assert (=> d!80627 (= (list!1583 (seqFromList!837 lt!113881)) (list!1587 (c!52034 (seqFromList!837 lt!113881))))))

(declare-fun bs!30876 () Bool)

(assert (= bs!30876 d!80627))

(declare-fun m!351185 () Bool)

(assert (=> bs!30876 m!351185))

(assert (=> b!274673 d!80627))

(declare-fun d!80629 () Bool)

(assert (=> d!80629 (= (seqFromList!837 lt!113881) (fromListB!329 lt!113881))))

(declare-fun bs!30877 () Bool)

(assert (= bs!30877 d!80629))

(declare-fun m!351187 () Bool)

(assert (=> bs!30877 m!351187))

(assert (=> b!274673 d!80629))

(declare-fun d!80631 () Bool)

(assert (=> d!80631 (= (isEmpty!2466 (_2!2383 lt!113888)) ((_ is Nil!3848) (_2!2383 lt!113888)))))

(assert (=> b!274694 d!80631))

(declare-fun d!80633 () Bool)

(declare-fun res!125660 () Bool)

(declare-fun e!171030 () Bool)

(assert (=> d!80633 (=> (not res!125660) (not e!171030))))

(assert (=> d!80633 (= res!125660 (not (isEmpty!2466 (originalCharacters!778 (h!9247 tokens!465)))))))

(assert (=> d!80633 (= (inv!4767 (h!9247 tokens!465)) e!171030)))

(declare-fun b!275224 () Bool)

(declare-fun res!125661 () Bool)

(assert (=> b!275224 (=> (not res!125661) (not e!171030))))

(assert (=> b!275224 (= res!125661 (= (originalCharacters!778 (h!9247 tokens!465)) (list!1583 (dynLambda!1996 (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (value!25263 (h!9247 tokens!465))))))))

(declare-fun b!275225 () Bool)

(assert (=> b!275225 (= e!171030 (= (size!3073 (h!9247 tokens!465)) (size!3078 (originalCharacters!778 (h!9247 tokens!465)))))))

(assert (= (and d!80633 res!125660) b!275224))

(assert (= (and b!275224 res!125661) b!275225))

(declare-fun b_lambda!8853 () Bool)

(assert (=> (not b_lambda!8853) (not b!275224)))

(assert (=> b!275224 t!38977))

(declare-fun b_and!22081 () Bool)

(assert (= b_and!22069 (and (=> t!38977 result!19408) b_and!22081)))

(assert (=> b!275224 t!38979))

(declare-fun b_and!22083 () Bool)

(assert (= b_and!22071 (and (=> t!38979 result!19410) b_and!22083)))

(assert (=> b!275224 t!38981))

(declare-fun b_and!22085 () Bool)

(assert (= b_and!22073 (and (=> t!38981 result!19412) b_and!22085)))

(declare-fun m!351189 () Bool)

(assert (=> d!80633 m!351189))

(assert (=> b!275224 m!350881))

(assert (=> b!275224 m!350881))

(declare-fun m!351191 () Bool)

(assert (=> b!275224 m!351191))

(declare-fun m!351193 () Bool)

(assert (=> b!275225 m!351193))

(assert (=> b!274693 d!80633))

(declare-fun d!80635 () Bool)

(assert (=> d!80635 (= (isEmpty!2465 rules!1920) ((_ is Nil!3849) rules!1920))))

(assert (=> b!274671 d!80635))

(declare-fun d!80637 () Bool)

(declare-fun e!171033 () Bool)

(assert (=> d!80637 e!171033))

(declare-fun res!125664 () Bool)

(assert (=> d!80637 (=> (not res!125664) (not e!171033))))

(declare-fun lt!114154 () BalanceConc!2594)

(assert (=> d!80637 (= res!125664 (= (list!1586 lt!114154) (Cons!3850 (h!9247 tokens!465) Nil!3850)))))

(declare-fun singleton!118 (Token!1214) BalanceConc!2594)

(assert (=> d!80637 (= lt!114154 (singleton!118 (h!9247 tokens!465)))))

(assert (=> d!80637 (= (singletonSeq!281 (h!9247 tokens!465)) lt!114154)))

(declare-fun b!275228 () Bool)

(declare-fun isBalanced!359 (Conc!1293) Bool)

(assert (=> b!275228 (= e!171033 (isBalanced!359 (c!52036 lt!114154)))))

(assert (= (and d!80637 res!125664) b!275228))

(declare-fun m!351195 () Bool)

(assert (=> d!80637 m!351195))

(declare-fun m!351197 () Bool)

(assert (=> d!80637 m!351197))

(declare-fun m!351199 () Bool)

(assert (=> b!275228 m!351199))

(assert (=> b!274692 d!80637))

(declare-fun d!80639 () Bool)

(declare-fun lt!114157 () BalanceConc!2592)

(assert (=> d!80639 (= (list!1583 lt!114157) (printList!297 thiss!17480 (list!1586 lt!113880)))))

(assert (=> d!80639 (= lt!114157 (printTailRec!309 thiss!17480 lt!113880 0 (BalanceConc!2593 Empty!1292)))))

(assert (=> d!80639 (= (print!346 thiss!17480 lt!113880) lt!114157)))

(declare-fun bs!30878 () Bool)

(assert (= bs!30878 d!80639))

(declare-fun m!351201 () Bool)

(assert (=> bs!30878 m!351201))

(declare-fun m!351203 () Bool)

(assert (=> bs!30878 m!351203))

(assert (=> bs!30878 m!351203))

(declare-fun m!351205 () Bool)

(assert (=> bs!30878 m!351205))

(assert (=> bs!30878 m!350383))

(assert (=> b!274692 d!80639))

(declare-fun d!80641 () Bool)

(declare-fun lt!114178 () BalanceConc!2592)

(declare-fun printListTailRec!134 (LexerInterface!621 List!3860 List!3858) List!3858)

(assert (=> d!80641 (= (list!1583 lt!114178) (printListTailRec!134 thiss!17480 (dropList!167 lt!113880 0) (list!1583 (BalanceConc!2593 Empty!1292))))))

(declare-fun e!171039 () BalanceConc!2592)

(assert (=> d!80641 (= lt!114178 e!171039)))

(declare-fun c!52138 () Bool)

(assert (=> d!80641 (= c!52138 (>= 0 (size!3076 lt!113880)))))

(declare-fun e!171038 () Bool)

(assert (=> d!80641 e!171038))

(declare-fun res!125667 () Bool)

(assert (=> d!80641 (=> (not res!125667) (not e!171038))))

(assert (=> d!80641 (= res!125667 (>= 0 0))))

(assert (=> d!80641 (= (printTailRec!309 thiss!17480 lt!113880 0 (BalanceConc!2593 Empty!1292)) lt!114178)))

(declare-fun b!275235 () Bool)

(assert (=> b!275235 (= e!171038 (<= 0 (size!3076 lt!113880)))))

(declare-fun b!275236 () Bool)

(assert (=> b!275236 (= e!171039 (BalanceConc!2593 Empty!1292))))

(declare-fun b!275237 () Bool)

(assert (=> b!275237 (= e!171039 (printTailRec!309 thiss!17480 lt!113880 (+ 0 1) (++!1015 (BalanceConc!2593 Empty!1292) (charsOf!380 (apply!787 lt!113880 0)))))))

(declare-fun lt!114172 () List!3860)

(assert (=> b!275237 (= lt!114172 (list!1586 lt!113880))))

(declare-fun lt!114174 () Unit!5020)

(assert (=> b!275237 (= lt!114174 (lemmaDropApply!207 lt!114172 0))))

(assert (=> b!275237 (= (head!896 (drop!220 lt!114172 0)) (apply!788 lt!114172 0))))

(declare-fun lt!114177 () Unit!5020)

(assert (=> b!275237 (= lt!114177 lt!114174)))

(declare-fun lt!114175 () List!3860)

(assert (=> b!275237 (= lt!114175 (list!1586 lt!113880))))

(declare-fun lt!114176 () Unit!5020)

(assert (=> b!275237 (= lt!114176 (lemmaDropTail!199 lt!114175 0))))

(assert (=> b!275237 (= (tail!487 (drop!220 lt!114175 0)) (drop!220 lt!114175 (+ 0 1)))))

(declare-fun lt!114173 () Unit!5020)

(assert (=> b!275237 (= lt!114173 lt!114176)))

(assert (= (and d!80641 res!125667) b!275235))

(assert (= (and d!80641 c!52138) b!275236))

(assert (= (and d!80641 (not c!52138)) b!275237))

(declare-fun m!351207 () Bool)

(assert (=> d!80641 m!351207))

(declare-fun m!351209 () Bool)

(assert (=> d!80641 m!351209))

(declare-fun m!351211 () Bool)

(assert (=> d!80641 m!351211))

(declare-fun m!351213 () Bool)

(assert (=> d!80641 m!351213))

(assert (=> d!80641 m!351209))

(declare-fun m!351215 () Bool)

(assert (=> d!80641 m!351215))

(assert (=> d!80641 m!351207))

(assert (=> b!275235 m!351215))

(declare-fun m!351217 () Bool)

(assert (=> b!275237 m!351217))

(declare-fun m!351219 () Bool)

(assert (=> b!275237 m!351219))

(declare-fun m!351221 () Bool)

(assert (=> b!275237 m!351221))

(declare-fun m!351223 () Bool)

(assert (=> b!275237 m!351223))

(declare-fun m!351225 () Bool)

(assert (=> b!275237 m!351225))

(assert (=> b!275237 m!351217))

(assert (=> b!275237 m!351203))

(declare-fun m!351227 () Bool)

(assert (=> b!275237 m!351227))

(declare-fun m!351229 () Bool)

(assert (=> b!275237 m!351229))

(assert (=> b!275237 m!351227))

(assert (=> b!275237 m!351225))

(declare-fun m!351231 () Bool)

(assert (=> b!275237 m!351231))

(assert (=> b!275237 m!351221))

(declare-fun m!351233 () Bool)

(assert (=> b!275237 m!351233))

(declare-fun m!351235 () Bool)

(assert (=> b!275237 m!351235))

(assert (=> b!275237 m!351233))

(declare-fun m!351237 () Bool)

(assert (=> b!275237 m!351237))

(declare-fun m!351239 () Bool)

(assert (=> b!275237 m!351239))

(assert (=> b!274692 d!80641))

(declare-fun d!80643 () Bool)

(declare-fun c!52141 () Bool)

(assert (=> d!80643 (= c!52141 ((_ is Cons!3850) lt!113893))))

(declare-fun e!171042 () List!3858)

(assert (=> d!80643 (= (printList!297 thiss!17480 lt!113893) e!171042)))

(declare-fun b!275242 () Bool)

(assert (=> b!275242 (= e!171042 (++!1014 (list!1583 (charsOf!380 (h!9247 lt!113893))) (printList!297 thiss!17480 (t!38950 lt!113893))))))

(declare-fun b!275243 () Bool)

(assert (=> b!275243 (= e!171042 Nil!3848)))

(assert (= (and d!80643 c!52141) b!275242))

(assert (= (and d!80643 (not c!52141)) b!275243))

(declare-fun m!351241 () Bool)

(assert (=> b!275242 m!351241))

(assert (=> b!275242 m!351241))

(declare-fun m!351243 () Bool)

(assert (=> b!275242 m!351243))

(declare-fun m!351245 () Bool)

(assert (=> b!275242 m!351245))

(assert (=> b!275242 m!351243))

(assert (=> b!275242 m!351245))

(declare-fun m!351247 () Bool)

(assert (=> b!275242 m!351247))

(assert (=> b!274692 d!80643))

(declare-fun d!80645 () Bool)

(assert (=> d!80645 (= (list!1583 lt!113877) (list!1587 (c!52034 lt!113877)))))

(declare-fun bs!30879 () Bool)

(assert (= bs!30879 d!80645))

(declare-fun m!351249 () Bool)

(assert (=> bs!30879 m!351249))

(assert (=> b!274692 d!80645))

(declare-fun d!80647 () Bool)

(declare-fun res!125670 () Bool)

(declare-fun e!171045 () Bool)

(assert (=> d!80647 (=> (not res!125670) (not e!171045))))

(declare-fun rulesValid!229 (LexerInterface!621 List!3859) Bool)

(assert (=> d!80647 (= res!125670 (rulesValid!229 thiss!17480 rules!1920))))

(assert (=> d!80647 (= (rulesInvariant!587 thiss!17480 rules!1920) e!171045)))

(declare-fun b!275246 () Bool)

(declare-datatypes ((List!3862 0))(
  ( (Nil!3852) (Cons!3852 (h!9249 String!4865) (t!39016 List!3862)) )
))
(declare-fun noDuplicateTag!229 (LexerInterface!621 List!3859 List!3862) Bool)

(assert (=> b!275246 (= e!171045 (noDuplicateTag!229 thiss!17480 rules!1920 Nil!3852))))

(assert (= (and d!80647 res!125670) b!275246))

(declare-fun m!351251 () Bool)

(assert (=> d!80647 m!351251))

(declare-fun m!351253 () Bool)

(assert (=> b!275246 m!351253))

(assert (=> b!274669 d!80647))

(declare-fun d!80649 () Bool)

(declare-fun res!125671 () Bool)

(declare-fun e!171046 () Bool)

(assert (=> d!80649 (=> (not res!125671) (not e!171046))))

(assert (=> d!80649 (= res!125671 (not (isEmpty!2466 (originalCharacters!778 separatorToken!170))))))

(assert (=> d!80649 (= (inv!4767 separatorToken!170) e!171046)))

(declare-fun b!275247 () Bool)

(declare-fun res!125672 () Bool)

(assert (=> b!275247 (=> (not res!125672) (not e!171046))))

(assert (=> b!275247 (= res!125672 (= (originalCharacters!778 separatorToken!170) (list!1583 (dynLambda!1996 (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (value!25263 separatorToken!170)))))))

(declare-fun b!275248 () Bool)

(assert (=> b!275248 (= e!171046 (= (size!3073 separatorToken!170) (size!3078 (originalCharacters!778 separatorToken!170))))))

(assert (= (and d!80649 res!125671) b!275247))

(assert (= (and b!275247 res!125672) b!275248))

(declare-fun b_lambda!8855 () Bool)

(assert (=> (not b_lambda!8855) (not b!275247)))

(assert (=> b!275247 t!38971))

(declare-fun b_and!22087 () Bool)

(assert (= b_and!22081 (and (=> t!38971 result!19400) b_and!22087)))

(assert (=> b!275247 t!38973))

(declare-fun b_and!22089 () Bool)

(assert (= b_and!22083 (and (=> t!38973 result!19404) b_and!22089)))

(assert (=> b!275247 t!38975))

(declare-fun b_and!22091 () Bool)

(assert (= b_and!22085 (and (=> t!38975 result!19406) b_and!22091)))

(declare-fun m!351255 () Bool)

(assert (=> d!80649 m!351255))

(assert (=> b!275247 m!350841))

(assert (=> b!275247 m!350841))

(declare-fun m!351257 () Bool)

(assert (=> b!275247 m!351257))

(declare-fun m!351259 () Bool)

(assert (=> b!275248 m!351259))

(assert (=> start!29614 d!80649))

(declare-fun d!80651 () Bool)

(declare-fun lt!114179 () Bool)

(declare-fun e!171048 () Bool)

(assert (=> d!80651 (= lt!114179 e!171048)))

(declare-fun res!125674 () Bool)

(assert (=> d!80651 (=> (not res!125674) (not e!171048))))

(assert (=> d!80651 (= res!125674 (= (list!1586 (_1!2385 (lex!413 thiss!17480 rules!1920 (print!346 thiss!17480 (singletonSeq!281 separatorToken!170))))) (list!1586 (singletonSeq!281 separatorToken!170))))))

(declare-fun e!171047 () Bool)

(assert (=> d!80651 (= lt!114179 e!171047)))

(declare-fun res!125673 () Bool)

(assert (=> d!80651 (=> (not res!125673) (not e!171047))))

(declare-fun lt!114180 () tuple2!4338)

(assert (=> d!80651 (= res!125673 (= (size!3076 (_1!2385 lt!114180)) 1))))

(assert (=> d!80651 (= lt!114180 (lex!413 thiss!17480 rules!1920 (print!346 thiss!17480 (singletonSeq!281 separatorToken!170))))))

(assert (=> d!80651 (not (isEmpty!2465 rules!1920))))

(assert (=> d!80651 (= (rulesProduceIndividualToken!370 thiss!17480 rules!1920 separatorToken!170) lt!114179)))

(declare-fun b!275249 () Bool)

(declare-fun res!125675 () Bool)

(assert (=> b!275249 (=> (not res!125675) (not e!171047))))

(assert (=> b!275249 (= res!125675 (= (apply!787 (_1!2385 lt!114180) 0) separatorToken!170))))

(declare-fun b!275250 () Bool)

(assert (=> b!275250 (= e!171047 (isEmpty!2471 (_2!2385 lt!114180)))))

(declare-fun b!275251 () Bool)

(assert (=> b!275251 (= e!171048 (isEmpty!2471 (_2!2385 (lex!413 thiss!17480 rules!1920 (print!346 thiss!17480 (singletonSeq!281 separatorToken!170))))))))

(assert (= (and d!80651 res!125673) b!275249))

(assert (= (and b!275249 res!125675) b!275250))

(assert (= (and d!80651 res!125674) b!275251))

(declare-fun m!351261 () Bool)

(assert (=> d!80651 m!351261))

(declare-fun m!351263 () Bool)

(assert (=> d!80651 m!351263))

(declare-fun m!351265 () Bool)

(assert (=> d!80651 m!351265))

(assert (=> d!80651 m!351261))

(declare-fun m!351267 () Bool)

(assert (=> d!80651 m!351267))

(declare-fun m!351269 () Bool)

(assert (=> d!80651 m!351269))

(assert (=> d!80651 m!351261))

(assert (=> d!80651 m!351263))

(declare-fun m!351271 () Bool)

(assert (=> d!80651 m!351271))

(assert (=> d!80651 m!350353))

(declare-fun m!351273 () Bool)

(assert (=> b!275249 m!351273))

(declare-fun m!351275 () Bool)

(assert (=> b!275250 m!351275))

(assert (=> b!275251 m!351261))

(assert (=> b!275251 m!351261))

(assert (=> b!275251 m!351263))

(assert (=> b!275251 m!351263))

(assert (=> b!275251 m!351271))

(declare-fun m!351277 () Bool)

(assert (=> b!275251 m!351277))

(assert (=> b!274690 d!80651))

(declare-fun lt!114183 () Bool)

(declare-fun d!80653 () Bool)

(assert (=> d!80653 (= lt!114183 (isEmpty!2467 (list!1586 (_1!2385 (lex!413 thiss!17480 rules!1920 (seqFromList!837 lt!113887))))))))

(declare-fun isEmpty!2476 (Conc!1293) Bool)

(assert (=> d!80653 (= lt!114183 (isEmpty!2476 (c!52036 (_1!2385 (lex!413 thiss!17480 rules!1920 (seqFromList!837 lt!113887))))))))

(assert (=> d!80653 (= (isEmpty!2468 (_1!2385 (lex!413 thiss!17480 rules!1920 (seqFromList!837 lt!113887)))) lt!114183)))

(declare-fun bs!30880 () Bool)

(assert (= bs!30880 d!80653))

(declare-fun m!351279 () Bool)

(assert (=> bs!30880 m!351279))

(assert (=> bs!30880 m!351279))

(declare-fun m!351281 () Bool)

(assert (=> bs!30880 m!351281))

(declare-fun m!351283 () Bool)

(assert (=> bs!30880 m!351283))

(assert (=> b!274689 d!80653))

(declare-fun b!275298 () Bool)

(declare-fun res!125691 () Bool)

(declare-fun e!171080 () Bool)

(assert (=> b!275298 (=> (not res!125691) (not e!171080))))

(declare-fun lt!114228 () tuple2!4338)

(declare-datatypes ((tuple2!4342 0))(
  ( (tuple2!4343 (_1!2387 List!3860) (_2!2387 List!3858)) )
))
(declare-fun lexList!213 (LexerInterface!621 List!3859 List!3858) tuple2!4342)

(assert (=> b!275298 (= res!125691 (= (list!1586 (_1!2385 lt!114228)) (_1!2387 (lexList!213 thiss!17480 rules!1920 (list!1583 (seqFromList!837 lt!113887))))))))

(declare-fun d!80655 () Bool)

(assert (=> d!80655 e!171080))

(declare-fun res!125693 () Bool)

(assert (=> d!80655 (=> (not res!125693) (not e!171080))))

(declare-fun e!171081 () Bool)

(assert (=> d!80655 (= res!125693 e!171081)))

(declare-fun c!52156 () Bool)

(assert (=> d!80655 (= c!52156 (> (size!3076 (_1!2385 lt!114228)) 0))))

(declare-fun lexTailRecV2!180 (LexerInterface!621 List!3859 BalanceConc!2592 BalanceConc!2592 BalanceConc!2592 BalanceConc!2594) tuple2!4338)

(assert (=> d!80655 (= lt!114228 (lexTailRecV2!180 thiss!17480 rules!1920 (seqFromList!837 lt!113887) (BalanceConc!2593 Empty!1292) (seqFromList!837 lt!113887) (BalanceConc!2595 Empty!1293)))))

(assert (=> d!80655 (= (lex!413 thiss!17480 rules!1920 (seqFromList!837 lt!113887)) lt!114228)))

(declare-fun b!275299 () Bool)

(declare-fun e!171079 () Bool)

(assert (=> b!275299 (= e!171081 e!171079)))

(declare-fun res!125692 () Bool)

(declare-fun size!3079 (BalanceConc!2592) Int)

(assert (=> b!275299 (= res!125692 (< (size!3079 (_2!2385 lt!114228)) (size!3079 (seqFromList!837 lt!113887))))))

(assert (=> b!275299 (=> (not res!125692) (not e!171079))))

(declare-fun b!275300 () Bool)

(assert (=> b!275300 (= e!171081 (= (_2!2385 lt!114228) (seqFromList!837 lt!113887)))))

(declare-fun b!275301 () Bool)

(assert (=> b!275301 (= e!171080 (= (list!1583 (_2!2385 lt!114228)) (_2!2387 (lexList!213 thiss!17480 rules!1920 (list!1583 (seqFromList!837 lt!113887))))))))

(declare-fun b!275302 () Bool)

(assert (=> b!275302 (= e!171079 (not (isEmpty!2468 (_1!2385 lt!114228))))))

(assert (= (and d!80655 c!52156) b!275299))

(assert (= (and d!80655 (not c!52156)) b!275300))

(assert (= (and b!275299 res!125692) b!275302))

(assert (= (and d!80655 res!125693) b!275298))

(assert (= (and b!275298 res!125691) b!275301))

(declare-fun m!351343 () Bool)

(assert (=> b!275298 m!351343))

(assert (=> b!275298 m!350337))

(declare-fun m!351345 () Bool)

(assert (=> b!275298 m!351345))

(assert (=> b!275298 m!351345))

(declare-fun m!351347 () Bool)

(assert (=> b!275298 m!351347))

(declare-fun m!351349 () Bool)

(assert (=> d!80655 m!351349))

(assert (=> d!80655 m!350337))

(assert (=> d!80655 m!350337))

(declare-fun m!351351 () Bool)

(assert (=> d!80655 m!351351))

(declare-fun m!351353 () Bool)

(assert (=> b!275299 m!351353))

(assert (=> b!275299 m!350337))

(declare-fun m!351355 () Bool)

(assert (=> b!275299 m!351355))

(declare-fun m!351357 () Bool)

(assert (=> b!275301 m!351357))

(assert (=> b!275301 m!350337))

(assert (=> b!275301 m!351345))

(assert (=> b!275301 m!351345))

(assert (=> b!275301 m!351347))

(declare-fun m!351359 () Bool)

(assert (=> b!275302 m!351359))

(assert (=> b!274689 d!80655))

(declare-fun d!80659 () Bool)

(assert (=> d!80659 (= (seqFromList!837 lt!113887) (fromListB!329 lt!113887))))

(declare-fun bs!30888 () Bool)

(assert (= bs!30888 d!80659))

(declare-fun m!351361 () Bool)

(assert (=> bs!30888 m!351361))

(assert (=> b!274689 d!80659))

(declare-fun d!80661 () Bool)

(declare-fun res!125698 () Bool)

(declare-fun e!171086 () Bool)

(assert (=> d!80661 (=> res!125698 e!171086)))

(assert (=> d!80661 (= res!125698 ((_ is Nil!3850) tokens!465))))

(assert (=> d!80661 (= (forall!976 tokens!465 lambda!9325) e!171086)))

(declare-fun b!275307 () Bool)

(declare-fun e!171087 () Bool)

(assert (=> b!275307 (= e!171086 e!171087)))

(declare-fun res!125699 () Bool)

(assert (=> b!275307 (=> (not res!125699) (not e!171087))))

(assert (=> b!275307 (= res!125699 (dynLambda!1997 lambda!9325 (h!9247 tokens!465)))))

(declare-fun b!275308 () Bool)

(assert (=> b!275308 (= e!171087 (forall!976 (t!38950 tokens!465) lambda!9325))))

(assert (= (and d!80661 (not res!125698)) b!275307))

(assert (= (and b!275307 res!125699) b!275308))

(declare-fun b_lambda!8857 () Bool)

(assert (=> (not b_lambda!8857) (not b!275307)))

(declare-fun m!351363 () Bool)

(assert (=> b!275307 m!351363))

(declare-fun m!351365 () Bool)

(assert (=> b!275308 m!351365))

(assert (=> b!274688 d!80661))

(declare-fun d!80663 () Bool)

(assert (=> d!80663 (= (inv!4763 (tag!945 (rule!1322 separatorToken!170))) (= (mod (str.len (value!25262 (tag!945 (rule!1322 separatorToken!170)))) 2) 0))))

(assert (=> b!274686 d!80663))

(declare-fun d!80665 () Bool)

(declare-fun res!125700 () Bool)

(declare-fun e!171088 () Bool)

(assert (=> d!80665 (=> (not res!125700) (not e!171088))))

(assert (=> d!80665 (= res!125700 (semiInverseModEq!263 (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (toValue!1478 (transformation!735 (rule!1322 separatorToken!170)))))))

(assert (=> d!80665 (= (inv!4766 (transformation!735 (rule!1322 separatorToken!170))) e!171088)))

(declare-fun b!275309 () Bool)

(assert (=> b!275309 (= e!171088 (equivClasses!246 (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (toValue!1478 (transformation!735 (rule!1322 separatorToken!170)))))))

(assert (= (and d!80665 res!125700) b!275309))

(declare-fun m!351367 () Bool)

(assert (=> d!80665 m!351367))

(declare-fun m!351369 () Bool)

(assert (=> b!275309 m!351369))

(assert (=> b!274686 d!80665))

(declare-fun d!80667 () Bool)

(assert (=> d!80667 (= (get!1281 lt!113894) (v!14706 lt!113894))))

(assert (=> b!274685 d!80667))

(declare-fun d!80669 () Bool)

(assert (=> d!80669 (= (isDefined!667 lt!113894) (not (isEmpty!2475 lt!113894)))))

(declare-fun bs!30889 () Bool)

(assert (= bs!30889 d!80669))

(declare-fun m!351371 () Bool)

(assert (=> bs!30889 m!351371))

(assert (=> b!274685 d!80669))

(declare-fun d!80671 () Bool)

(declare-fun e!171091 () Bool)

(assert (=> d!80671 e!171091))

(declare-fun res!125707 () Bool)

(assert (=> d!80671 (=> res!125707 e!171091)))

(declare-fun lt!114232 () Option!824)

(assert (=> d!80671 (= res!125707 (isEmpty!2475 lt!114232))))

(declare-fun e!171089 () Option!824)

(assert (=> d!80671 (= lt!114232 e!171089)))

(declare-fun c!52157 () Bool)

(assert (=> d!80671 (= c!52157 (and ((_ is Cons!3849) rules!1920) ((_ is Nil!3849) (t!38949 rules!1920))))))

(declare-fun lt!114229 () Unit!5020)

(declare-fun lt!114233 () Unit!5020)

(assert (=> d!80671 (= lt!114229 lt!114233)))

(assert (=> d!80671 (isPrefix!403 lt!113887 lt!113887)))

(assert (=> d!80671 (= lt!114233 (lemmaIsPrefixRefl!213 lt!113887 lt!113887))))

(assert (=> d!80671 (rulesValidInductive!208 thiss!17480 rules!1920)))

(assert (=> d!80671 (= (maxPrefix!339 thiss!17480 rules!1920 lt!113887) lt!114232)))

(declare-fun b!275310 () Bool)

(declare-fun res!125701 () Bool)

(declare-fun e!171090 () Bool)

(assert (=> b!275310 (=> (not res!125701) (not e!171090))))

(assert (=> b!275310 (= res!125701 (matchR!281 (regex!735 (rule!1322 (_1!2383 (get!1281 lt!114232)))) (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114232))))))))

(declare-fun b!275311 () Bool)

(declare-fun res!125702 () Bool)

(assert (=> b!275311 (=> (not res!125702) (not e!171090))))

(assert (=> b!275311 (= res!125702 (= (++!1014 (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114232)))) (_2!2383 (get!1281 lt!114232))) lt!113887))))

(declare-fun b!275312 () Bool)

(declare-fun res!125706 () Bool)

(assert (=> b!275312 (=> (not res!125706) (not e!171090))))

(assert (=> b!275312 (= res!125706 (= (value!25263 (_1!2383 (get!1281 lt!114232))) (apply!790 (transformation!735 (rule!1322 (_1!2383 (get!1281 lt!114232)))) (seqFromList!837 (originalCharacters!778 (_1!2383 (get!1281 lt!114232)))))))))

(declare-fun b!275313 () Bool)

(assert (=> b!275313 (= e!171091 e!171090)))

(declare-fun res!125705 () Bool)

(assert (=> b!275313 (=> (not res!125705) (not e!171090))))

(assert (=> b!275313 (= res!125705 (isDefined!667 lt!114232))))

(declare-fun b!275314 () Bool)

(declare-fun lt!114231 () Option!824)

(declare-fun lt!114230 () Option!824)

(assert (=> b!275314 (= e!171089 (ite (and ((_ is None!823) lt!114231) ((_ is None!823) lt!114230)) None!823 (ite ((_ is None!823) lt!114230) lt!114231 (ite ((_ is None!823) lt!114231) lt!114230 (ite (>= (size!3073 (_1!2383 (v!14706 lt!114231))) (size!3073 (_1!2383 (v!14706 lt!114230)))) lt!114231 lt!114230)))))))

(declare-fun call!15170 () Option!824)

(assert (=> b!275314 (= lt!114231 call!15170)))

(assert (=> b!275314 (= lt!114230 (maxPrefix!339 thiss!17480 (t!38949 rules!1920) lt!113887))))

(declare-fun b!275315 () Bool)

(declare-fun res!125704 () Bool)

(assert (=> b!275315 (=> (not res!125704) (not e!171090))))

(assert (=> b!275315 (= res!125704 (= (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114232)))) (originalCharacters!778 (_1!2383 (get!1281 lt!114232)))))))

(declare-fun b!275316 () Bool)

(assert (=> b!275316 (= e!171090 (contains!735 rules!1920 (rule!1322 (_1!2383 (get!1281 lt!114232)))))))

(declare-fun b!275317 () Bool)

(declare-fun res!125703 () Bool)

(assert (=> b!275317 (=> (not res!125703) (not e!171090))))

(assert (=> b!275317 (= res!125703 (< (size!3078 (_2!2383 (get!1281 lt!114232))) (size!3078 lt!113887)))))

(declare-fun b!275318 () Bool)

(assert (=> b!275318 (= e!171089 call!15170)))

(declare-fun bm!15165 () Bool)

(assert (=> bm!15165 (= call!15170 (maxPrefixOneRule!147 thiss!17480 (h!9246 rules!1920) lt!113887))))

(assert (= (and d!80671 c!52157) b!275318))

(assert (= (and d!80671 (not c!52157)) b!275314))

(assert (= (or b!275318 b!275314) bm!15165))

(assert (= (and d!80671 (not res!125707)) b!275313))

(assert (= (and b!275313 res!125705) b!275315))

(assert (= (and b!275315 res!125704) b!275317))

(assert (= (and b!275317 res!125703) b!275311))

(assert (= (and b!275311 res!125702) b!275312))

(assert (= (and b!275312 res!125706) b!275310))

(assert (= (and b!275310 res!125701) b!275316))

(declare-fun m!351373 () Bool)

(assert (=> b!275313 m!351373))

(declare-fun m!351375 () Bool)

(assert (=> b!275312 m!351375))

(declare-fun m!351377 () Bool)

(assert (=> b!275312 m!351377))

(assert (=> b!275312 m!351377))

(declare-fun m!351379 () Bool)

(assert (=> b!275312 m!351379))

(declare-fun m!351381 () Bool)

(assert (=> b!275314 m!351381))

(assert (=> b!275310 m!351375))

(declare-fun m!351383 () Bool)

(assert (=> b!275310 m!351383))

(assert (=> b!275310 m!351383))

(declare-fun m!351385 () Bool)

(assert (=> b!275310 m!351385))

(assert (=> b!275310 m!351385))

(declare-fun m!351387 () Bool)

(assert (=> b!275310 m!351387))

(declare-fun m!351389 () Bool)

(assert (=> d!80671 m!351389))

(declare-fun m!351391 () Bool)

(assert (=> d!80671 m!351391))

(declare-fun m!351393 () Bool)

(assert (=> d!80671 m!351393))

(assert (=> d!80671 m!351007))

(assert (=> b!275311 m!351375))

(assert (=> b!275311 m!351383))

(assert (=> b!275311 m!351383))

(assert (=> b!275311 m!351385))

(assert (=> b!275311 m!351385))

(declare-fun m!351395 () Bool)

(assert (=> b!275311 m!351395))

(assert (=> b!275315 m!351375))

(assert (=> b!275315 m!351383))

(assert (=> b!275315 m!351383))

(assert (=> b!275315 m!351385))

(assert (=> b!275316 m!351375))

(declare-fun m!351397 () Bool)

(assert (=> b!275316 m!351397))

(assert (=> b!275317 m!351375))

(declare-fun m!351399 () Bool)

(assert (=> b!275317 m!351399))

(assert (=> b!275317 m!350585))

(declare-fun m!351401 () Bool)

(assert (=> bm!15165 m!351401))

(assert (=> b!274685 d!80671))

(declare-fun d!80673 () Bool)

(assert (=> d!80673 (= (inv!4763 (tag!945 (rule!1322 (h!9247 tokens!465)))) (= (mod (str.len (value!25262 (tag!945 (rule!1322 (h!9247 tokens!465))))) 2) 0))))

(assert (=> b!274684 d!80673))

(declare-fun d!80675 () Bool)

(declare-fun res!125708 () Bool)

(declare-fun e!171092 () Bool)

(assert (=> d!80675 (=> (not res!125708) (not e!171092))))

(assert (=> d!80675 (= res!125708 (semiInverseModEq!263 (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (toValue!1478 (transformation!735 (rule!1322 (h!9247 tokens!465))))))))

(assert (=> d!80675 (= (inv!4766 (transformation!735 (rule!1322 (h!9247 tokens!465)))) e!171092)))

(declare-fun b!275319 () Bool)

(assert (=> b!275319 (= e!171092 (equivClasses!246 (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (toValue!1478 (transformation!735 (rule!1322 (h!9247 tokens!465))))))))

(assert (= (and d!80675 res!125708) b!275319))

(declare-fun m!351403 () Bool)

(assert (=> d!80675 m!351403))

(declare-fun m!351405 () Bool)

(assert (=> b!275319 m!351405))

(assert (=> b!274684 d!80675))

(declare-fun bs!30890 () Bool)

(declare-fun d!80677 () Bool)

(assert (= bs!30890 (and d!80677 d!80523)))

(declare-fun lambda!9354 () Int)

(assert (=> bs!30890 (not (= lambda!9354 lambda!9339))))

(declare-fun bs!30891 () Bool)

(assert (= bs!30891 (and d!80677 b!274688)))

(assert (=> bs!30891 (not (= lambda!9354 lambda!9325))))

(declare-fun bs!30892 () Bool)

(assert (= bs!30892 (and d!80677 b!275212)))

(assert (=> bs!30892 (= lambda!9354 lambda!9343)))

(declare-fun bs!30893 () Bool)

(assert (= bs!30893 (and d!80677 b!275031)))

(assert (=> bs!30893 (= lambda!9354 lambda!9340)))

(declare-fun bs!30894 () Bool)

(assert (= bs!30894 (and d!80677 b!274677)))

(assert (=> bs!30894 (= lambda!9354 lambda!9326)))

(declare-fun bs!30895 () Bool)

(assert (= bs!30895 (and d!80677 b!274925)))

(assert (=> bs!30895 (= lambda!9354 lambda!9334)))

(declare-fun bs!30896 () Bool)

(assert (= bs!30896 (and d!80677 b!275201)))

(assert (=> bs!30896 (= lambda!9354 lambda!9342)))

(declare-fun bs!30897 () Bool)

(assert (= bs!30897 (and d!80677 d!80623)))

(assert (=> bs!30897 (not (= lambda!9354 lambda!9341))))

(declare-fun b!275329 () Bool)

(declare-fun e!171100 () Bool)

(assert (=> b!275329 (= e!171100 true)))

(declare-fun b!275328 () Bool)

(declare-fun e!171099 () Bool)

(assert (=> b!275328 (= e!171099 e!171100)))

(declare-fun b!275327 () Bool)

(declare-fun e!171098 () Bool)

(assert (=> b!275327 (= e!171098 e!171099)))

(assert (=> d!80677 e!171098))

(assert (= b!275328 b!275329))

(assert (= b!275327 b!275328))

(assert (= (and d!80677 ((_ is Cons!3849) rules!1920)) b!275327))

(assert (=> b!275329 (< (dynLambda!1991 order!2985 (toValue!1478 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9354))))

(assert (=> b!275329 (< (dynLambda!1993 order!2989 (toChars!1337 (transformation!735 (h!9246 rules!1920)))) (dynLambda!1992 order!2987 lambda!9354))))

(assert (=> d!80677 true))

(declare-fun e!171097 () Bool)

(assert (=> d!80677 e!171097))

(declare-fun res!125711 () Bool)

(assert (=> d!80677 (=> (not res!125711) (not e!171097))))

(declare-fun lt!114238 () Bool)

(assert (=> d!80677 (= res!125711 (= lt!114238 (forall!976 (list!1586 lt!113879) lambda!9354)))))

(declare-fun forall!978 (BalanceConc!2594 Int) Bool)

(assert (=> d!80677 (= lt!114238 (forall!978 lt!113879 lambda!9354))))

(assert (=> d!80677 (not (isEmpty!2465 rules!1920))))

(assert (=> d!80677 (= (rulesProduceEachTokenIndividually!413 thiss!17480 rules!1920 lt!113879) lt!114238)))

(declare-fun b!275326 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!233 (LexerInterface!621 List!3859 List!3860) Bool)

(assert (=> b!275326 (= e!171097 (= lt!114238 (rulesProduceEachTokenIndividuallyList!233 thiss!17480 rules!1920 (list!1586 lt!113879))))))

(assert (= (and d!80677 res!125711) b!275326))

(assert (=> d!80677 m!351109))

(assert (=> d!80677 m!351109))

(declare-fun m!351407 () Bool)

(assert (=> d!80677 m!351407))

(declare-fun m!351409 () Bool)

(assert (=> d!80677 m!351409))

(assert (=> d!80677 m!350353))

(assert (=> b!275326 m!351109))

(assert (=> b!275326 m!351109))

(declare-fun m!351411 () Bool)

(assert (=> b!275326 m!351411))

(assert (=> b!274683 d!80677))

(declare-fun d!80679 () Bool)

(assert (=> d!80679 (= (seqFromList!838 tokens!465) (fromListB!328 tokens!465))))

(declare-fun bs!30898 () Bool)

(assert (= bs!30898 d!80679))

(declare-fun m!351413 () Bool)

(assert (=> bs!30898 m!351413))

(assert (=> b!274683 d!80679))

(declare-fun d!80681 () Bool)

(assert (=> d!80681 (= (get!1281 (maxPrefix!339 thiss!17480 rules!1920 lt!113881)) (v!14706 (maxPrefix!339 thiss!17480 rules!1920 lt!113881)))))

(assert (=> b!274682 d!80681))

(declare-fun d!80683 () Bool)

(declare-fun e!171107 () Bool)

(assert (=> d!80683 e!171107))

(declare-fun res!125718 () Bool)

(assert (=> d!80683 (=> res!125718 e!171107)))

(declare-fun lt!114252 () Option!824)

(assert (=> d!80683 (= res!125718 (isEmpty!2475 lt!114252))))

(declare-fun e!171105 () Option!824)

(assert (=> d!80683 (= lt!114252 e!171105)))

(declare-fun c!52164 () Bool)

(assert (=> d!80683 (= c!52164 (and ((_ is Cons!3849) rules!1920) ((_ is Nil!3849) (t!38949 rules!1920))))))

(declare-fun lt!114249 () Unit!5020)

(declare-fun lt!114253 () Unit!5020)

(assert (=> d!80683 (= lt!114249 lt!114253)))

(assert (=> d!80683 (isPrefix!403 lt!113882 lt!113882)))

(assert (=> d!80683 (= lt!114253 (lemmaIsPrefixRefl!213 lt!113882 lt!113882))))

(assert (=> d!80683 (rulesValidInductive!208 thiss!17480 rules!1920)))

(assert (=> d!80683 (= (maxPrefix!339 thiss!17480 rules!1920 lt!113882) lt!114252)))

(declare-fun b!275338 () Bool)

(declare-fun res!125712 () Bool)

(declare-fun e!171106 () Bool)

(assert (=> b!275338 (=> (not res!125712) (not e!171106))))

(assert (=> b!275338 (= res!125712 (matchR!281 (regex!735 (rule!1322 (_1!2383 (get!1281 lt!114252)))) (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114252))))))))

(declare-fun b!275339 () Bool)

(declare-fun res!125713 () Bool)

(assert (=> b!275339 (=> (not res!125713) (not e!171106))))

(assert (=> b!275339 (= res!125713 (= (++!1014 (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114252)))) (_2!2383 (get!1281 lt!114252))) lt!113882))))

(declare-fun b!275340 () Bool)

(declare-fun res!125717 () Bool)

(assert (=> b!275340 (=> (not res!125717) (not e!171106))))

(assert (=> b!275340 (= res!125717 (= (value!25263 (_1!2383 (get!1281 lt!114252))) (apply!790 (transformation!735 (rule!1322 (_1!2383 (get!1281 lt!114252)))) (seqFromList!837 (originalCharacters!778 (_1!2383 (get!1281 lt!114252)))))))))

(declare-fun b!275341 () Bool)

(assert (=> b!275341 (= e!171107 e!171106)))

(declare-fun res!125716 () Bool)

(assert (=> b!275341 (=> (not res!125716) (not e!171106))))

(assert (=> b!275341 (= res!125716 (isDefined!667 lt!114252))))

(declare-fun b!275342 () Bool)

(declare-fun lt!114251 () Option!824)

(declare-fun lt!114250 () Option!824)

(assert (=> b!275342 (= e!171105 (ite (and ((_ is None!823) lt!114251) ((_ is None!823) lt!114250)) None!823 (ite ((_ is None!823) lt!114250) lt!114251 (ite ((_ is None!823) lt!114251) lt!114250 (ite (>= (size!3073 (_1!2383 (v!14706 lt!114251))) (size!3073 (_1!2383 (v!14706 lt!114250)))) lt!114251 lt!114250)))))))

(declare-fun call!15171 () Option!824)

(assert (=> b!275342 (= lt!114251 call!15171)))

(assert (=> b!275342 (= lt!114250 (maxPrefix!339 thiss!17480 (t!38949 rules!1920) lt!113882))))

(declare-fun b!275343 () Bool)

(declare-fun res!125715 () Bool)

(assert (=> b!275343 (=> (not res!125715) (not e!171106))))

(assert (=> b!275343 (= res!125715 (= (list!1583 (charsOf!380 (_1!2383 (get!1281 lt!114252)))) (originalCharacters!778 (_1!2383 (get!1281 lt!114252)))))))

(declare-fun b!275344 () Bool)

(assert (=> b!275344 (= e!171106 (contains!735 rules!1920 (rule!1322 (_1!2383 (get!1281 lt!114252)))))))

(declare-fun b!275345 () Bool)

(declare-fun res!125714 () Bool)

(assert (=> b!275345 (=> (not res!125714) (not e!171106))))

(assert (=> b!275345 (= res!125714 (< (size!3078 (_2!2383 (get!1281 lt!114252))) (size!3078 lt!113882)))))

(declare-fun b!275346 () Bool)

(assert (=> b!275346 (= e!171105 call!15171)))

(declare-fun bm!15166 () Bool)

(assert (=> bm!15166 (= call!15171 (maxPrefixOneRule!147 thiss!17480 (h!9246 rules!1920) lt!113882))))

(assert (= (and d!80683 c!52164) b!275346))

(assert (= (and d!80683 (not c!52164)) b!275342))

(assert (= (or b!275346 b!275342) bm!15166))

(assert (= (and d!80683 (not res!125718)) b!275341))

(assert (= (and b!275341 res!125716) b!275343))

(assert (= (and b!275343 res!125715) b!275345))

(assert (= (and b!275345 res!125714) b!275339))

(assert (= (and b!275339 res!125713) b!275340))

(assert (= (and b!275340 res!125717) b!275338))

(assert (= (and b!275338 res!125712) b!275344))

(declare-fun m!351415 () Bool)

(assert (=> b!275341 m!351415))

(declare-fun m!351417 () Bool)

(assert (=> b!275340 m!351417))

(declare-fun m!351419 () Bool)

(assert (=> b!275340 m!351419))

(assert (=> b!275340 m!351419))

(declare-fun m!351421 () Bool)

(assert (=> b!275340 m!351421))

(declare-fun m!351423 () Bool)

(assert (=> b!275342 m!351423))

(assert (=> b!275338 m!351417))

(declare-fun m!351425 () Bool)

(assert (=> b!275338 m!351425))

(assert (=> b!275338 m!351425))

(declare-fun m!351427 () Bool)

(assert (=> b!275338 m!351427))

(assert (=> b!275338 m!351427))

(declare-fun m!351429 () Bool)

(assert (=> b!275338 m!351429))

(declare-fun m!351431 () Bool)

(assert (=> d!80683 m!351431))

(declare-fun m!351433 () Bool)

(assert (=> d!80683 m!351433))

(declare-fun m!351435 () Bool)

(assert (=> d!80683 m!351435))

(assert (=> d!80683 m!351007))

(assert (=> b!275339 m!351417))

(assert (=> b!275339 m!351425))

(assert (=> b!275339 m!351425))

(assert (=> b!275339 m!351427))

(assert (=> b!275339 m!351427))

(declare-fun m!351437 () Bool)

(assert (=> b!275339 m!351437))

(assert (=> b!275343 m!351417))

(assert (=> b!275343 m!351425))

(assert (=> b!275343 m!351425))

(assert (=> b!275343 m!351427))

(assert (=> b!275344 m!351417))

(declare-fun m!351439 () Bool)

(assert (=> b!275344 m!351439))

(assert (=> b!275345 m!351417))

(declare-fun m!351441 () Bool)

(assert (=> b!275345 m!351441))

(assert (=> b!275345 m!350861))

(declare-fun m!351443 () Bool)

(assert (=> bm!15166 m!351443))

(assert (=> b!274682 d!80683))

(declare-fun d!80685 () Bool)

(assert (=> d!80685 (= (isEmpty!2467 (t!38950 tokens!465)) ((_ is Nil!3850) (t!38950 tokens!465)))))

(assert (=> b!274682 d!80685))

(declare-fun d!80687 () Bool)

(assert (=> d!80687 (= (isEmpty!2467 tokens!465) ((_ is Nil!3850) tokens!465))))

(assert (=> b!274682 d!80687))

(declare-fun d!80689 () Bool)

(assert (=> d!80689 (isPrefix!403 lt!113887 (++!1014 lt!113887 lt!113882))))

(declare-fun lt!114256 () Unit!5020)

(declare-fun choose!2489 (List!3858 List!3858) Unit!5020)

(assert (=> d!80689 (= lt!114256 (choose!2489 lt!113887 lt!113882))))

(assert (=> d!80689 (= (lemmaConcatTwoListThenFirstIsPrefix!298 lt!113887 lt!113882) lt!114256)))

(declare-fun bs!30899 () Bool)

(assert (= bs!30899 d!80689))

(assert (=> bs!30899 m!350419))

(assert (=> bs!30899 m!350419))

(declare-fun m!351445 () Bool)

(assert (=> bs!30899 m!351445))

(declare-fun m!351447 () Bool)

(assert (=> bs!30899 m!351447))

(assert (=> b!274682 d!80689))

(assert (=> b!274682 d!80607))

(declare-fun b!275371 () Bool)

(declare-fun res!125729 () Bool)

(declare-fun e!171124 () Bool)

(assert (=> b!275371 (=> (not res!125729) (not e!171124))))

(assert (=> b!275371 (= res!125729 (= (head!898 lt!113887) (head!898 lt!113886)))))

(declare-fun b!275370 () Bool)

(declare-fun e!171125 () Bool)

(assert (=> b!275370 (= e!171125 e!171124)))

(declare-fun res!125728 () Bool)

(assert (=> b!275370 (=> (not res!125728) (not e!171124))))

(assert (=> b!275370 (= res!125728 (not ((_ is Nil!3848) lt!113886)))))

(declare-fun b!275373 () Bool)

(declare-fun e!171123 () Bool)

(assert (=> b!275373 (= e!171123 (>= (size!3078 lt!113886) (size!3078 lt!113887)))))

(declare-fun b!275372 () Bool)

(assert (=> b!275372 (= e!171124 (isPrefix!403 (tail!486 lt!113887) (tail!486 lt!113886)))))

(declare-fun d!80691 () Bool)

(assert (=> d!80691 e!171123))

(declare-fun res!125730 () Bool)

(assert (=> d!80691 (=> res!125730 e!171123)))

(declare-fun lt!114265 () Bool)

(assert (=> d!80691 (= res!125730 (not lt!114265))))

(assert (=> d!80691 (= lt!114265 e!171125)))

(declare-fun res!125727 () Bool)

(assert (=> d!80691 (=> res!125727 e!171125)))

(assert (=> d!80691 (= res!125727 ((_ is Nil!3848) lt!113887))))

(assert (=> d!80691 (= (isPrefix!403 lt!113887 lt!113886) lt!114265)))

(assert (= (and d!80691 (not res!125727)) b!275370))

(assert (= (and b!275370 res!125728) b!275371))

(assert (= (and b!275371 res!125729) b!275372))

(assert (= (and d!80691 (not res!125730)) b!275373))

(assert (=> b!275371 m!350555))

(declare-fun m!351453 () Bool)

(assert (=> b!275371 m!351453))

(declare-fun m!351457 () Bool)

(assert (=> b!275373 m!351457))

(assert (=> b!275373 m!350585))

(assert (=> b!275372 m!350551))

(declare-fun m!351463 () Bool)

(assert (=> b!275372 m!351463))

(assert (=> b!275372 m!350551))

(assert (=> b!275372 m!351463))

(declare-fun m!351467 () Bool)

(assert (=> b!275372 m!351467))

(assert (=> b!274682 d!80691))

(declare-fun d!80693 () Bool)

(assert (=> d!80693 (= lt!113882 (_2!2383 lt!113892))))

(declare-fun lt!114275 () Unit!5020)

(declare-fun choose!2490 (List!3858 List!3858 List!3858 List!3858 List!3858) Unit!5020)

(assert (=> d!80693 (= lt!114275 (choose!2490 lt!113887 lt!113882 lt!113887 (_2!2383 lt!113892) lt!113881))))

(assert (=> d!80693 (isPrefix!403 lt!113887 lt!113881)))

(assert (=> d!80693 (= (lemmaSamePrefixThenSameSuffix!204 lt!113887 lt!113882 lt!113887 (_2!2383 lt!113892) lt!113881) lt!114275)))

(declare-fun bs!30908 () Bool)

(assert (= bs!30908 d!80693))

(declare-fun m!351489 () Bool)

(assert (=> bs!30908 m!351489))

(declare-fun m!351491 () Bool)

(assert (=> bs!30908 m!351491))

(assert (=> b!274682 d!80693))

(declare-fun d!80707 () Bool)

(declare-fun e!171198 () Bool)

(assert (=> d!80707 e!171198))

(declare-fun res!125746 () Bool)

(assert (=> d!80707 (=> res!125746 e!171198)))

(assert (=> d!80707 (= res!125746 (isEmpty!2467 tokens!465))))

(declare-fun lt!114302 () Unit!5020)

(declare-fun choose!2491 (LexerInterface!621 List!3859 List!3860 Token!1214) Unit!5020)

(assert (=> d!80707 (= lt!114302 (choose!2491 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!80707 (not (isEmpty!2465 rules!1920))))

(assert (=> d!80707 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!160 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!114302)))

(declare-fun b!275475 () Bool)

(declare-fun e!171197 () Bool)

(assert (=> b!275475 (= e!171198 e!171197)))

(declare-fun res!125747 () Bool)

(assert (=> b!275475 (=> (not res!125747) (not e!171197))))

(assert (=> b!275475 (= res!125747 (isDefined!667 (maxPrefix!339 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!275476 () Bool)

(assert (=> b!275476 (= e!171197 (= (_1!2383 (get!1281 (maxPrefix!339 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!304 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!896 tokens!465)))))

(assert (= (and d!80707 (not res!125746)) b!275475))

(assert (= (and b!275475 res!125747) b!275476))

(assert (=> d!80707 m!350315))

(declare-fun m!351631 () Bool)

(assert (=> d!80707 m!351631))

(assert (=> d!80707 m!350353))

(assert (=> b!275475 m!350359))

(assert (=> b!275475 m!350359))

(declare-fun m!351633 () Bool)

(assert (=> b!275475 m!351633))

(assert (=> b!275475 m!351633))

(declare-fun m!351635 () Bool)

(assert (=> b!275475 m!351635))

(assert (=> b!275476 m!350359))

(assert (=> b!275476 m!350359))

(assert (=> b!275476 m!351633))

(assert (=> b!275476 m!351633))

(declare-fun m!351637 () Bool)

(assert (=> b!275476 m!351637))

(assert (=> b!275476 m!350345))

(assert (=> b!274682 d!80707))

(declare-fun b!275490 () Bool)

(declare-fun e!171201 () Bool)

(declare-fun tp!103428 () Bool)

(declare-fun tp!103430 () Bool)

(assert (=> b!275490 (= e!171201 (and tp!103428 tp!103430))))

(assert (=> b!274679 (= tp!103345 e!171201)))

(declare-fun b!275488 () Bool)

(declare-fun tp!103432 () Bool)

(declare-fun tp!103429 () Bool)

(assert (=> b!275488 (= e!171201 (and tp!103432 tp!103429))))

(declare-fun b!275489 () Bool)

(declare-fun tp!103431 () Bool)

(assert (=> b!275489 (= e!171201 tp!103431)))

(declare-fun b!275487 () Bool)

(declare-fun tp_is_empty!1823 () Bool)

(assert (=> b!275487 (= e!171201 tp_is_empty!1823)))

(assert (= (and b!274679 ((_ is ElementMatch!959) (regex!735 (h!9246 rules!1920)))) b!275487))

(assert (= (and b!274679 ((_ is Concat!1717) (regex!735 (h!9246 rules!1920)))) b!275488))

(assert (= (and b!274679 ((_ is Star!959) (regex!735 (h!9246 rules!1920)))) b!275489))

(assert (= (and b!274679 ((_ is Union!959) (regex!735 (h!9246 rules!1920)))) b!275490))

(declare-fun b!275495 () Bool)

(declare-fun e!171204 () Bool)

(declare-fun tp!103435 () Bool)

(assert (=> b!275495 (= e!171204 (and tp_is_empty!1823 tp!103435))))

(assert (=> b!274699 (= tp!103353 e!171204)))

(assert (= (and b!274699 ((_ is Cons!3848) (originalCharacters!778 separatorToken!170))) b!275495))

(declare-fun b!275506 () Bool)

(declare-fun b_free!10165 () Bool)

(declare-fun b_next!10165 () Bool)

(assert (=> b!275506 (= b_free!10165 (not b_next!10165))))

(declare-fun tp!103445 () Bool)

(declare-fun b_and!22113 () Bool)

(assert (=> b!275506 (= tp!103445 b_and!22113)))

(declare-fun b_free!10167 () Bool)

(declare-fun b_next!10167 () Bool)

(assert (=> b!275506 (= b_free!10167 (not b_next!10167))))

(declare-fun tb!15773 () Bool)

(declare-fun t!39008 () Bool)

(assert (=> (and b!275506 (= (toChars!1337 (transformation!735 (h!9246 (t!38949 rules!1920)))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170)))) t!39008) tb!15773))

(declare-fun result!19442 () Bool)

(assert (= result!19442 result!19400))

(assert (=> d!80559 t!39008))

(declare-fun t!39010 () Bool)

(declare-fun tb!15775 () Bool)

(assert (=> (and b!275506 (= (toChars!1337 (transformation!735 (h!9246 (t!38949 rules!1920)))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465))))) t!39010) tb!15775))

(declare-fun result!19444 () Bool)

(assert (= result!19444 result!19408))

(assert (=> d!80569 t!39010))

(assert (=> b!275224 t!39010))

(assert (=> b!275247 t!39008))

(declare-fun tp!103444 () Bool)

(declare-fun b_and!22115 () Bool)

(assert (=> b!275506 (= tp!103444 (and (=> t!39008 result!19442) (=> t!39010 result!19444) b_and!22115))))

(declare-fun e!171214 () Bool)

(assert (=> b!275506 (= e!171214 (and tp!103445 tp!103444))))

(declare-fun b!275505 () Bool)

(declare-fun tp!103447 () Bool)

(declare-fun e!171215 () Bool)

(assert (=> b!275505 (= e!171215 (and tp!103447 (inv!4763 (tag!945 (h!9246 (t!38949 rules!1920)))) (inv!4766 (transformation!735 (h!9246 (t!38949 rules!1920)))) e!171214))))

(declare-fun b!275504 () Bool)

(declare-fun e!171213 () Bool)

(declare-fun tp!103446 () Bool)

(assert (=> b!275504 (= e!171213 (and e!171215 tp!103446))))

(assert (=> b!274667 (= tp!103344 e!171213)))

(assert (= b!275505 b!275506))

(assert (= b!275504 b!275505))

(assert (= (and b!274667 ((_ is Cons!3849) (t!38949 rules!1920))) b!275504))

(declare-fun m!351639 () Bool)

(assert (=> b!275505 m!351639))

(declare-fun m!351641 () Bool)

(assert (=> b!275505 m!351641))

(declare-fun b!275510 () Bool)

(declare-fun e!171217 () Bool)

(declare-fun tp!103448 () Bool)

(declare-fun tp!103450 () Bool)

(assert (=> b!275510 (= e!171217 (and tp!103448 tp!103450))))

(assert (=> b!274686 (= tp!103341 e!171217)))

(declare-fun b!275508 () Bool)

(declare-fun tp!103452 () Bool)

(declare-fun tp!103449 () Bool)

(assert (=> b!275508 (= e!171217 (and tp!103452 tp!103449))))

(declare-fun b!275509 () Bool)

(declare-fun tp!103451 () Bool)

(assert (=> b!275509 (= e!171217 tp!103451)))

(declare-fun b!275507 () Bool)

(assert (=> b!275507 (= e!171217 tp_is_empty!1823)))

(assert (= (and b!274686 ((_ is ElementMatch!959) (regex!735 (rule!1322 separatorToken!170)))) b!275507))

(assert (= (and b!274686 ((_ is Concat!1717) (regex!735 (rule!1322 separatorToken!170)))) b!275508))

(assert (= (and b!274686 ((_ is Star!959) (regex!735 (rule!1322 separatorToken!170)))) b!275509))

(assert (= (and b!274686 ((_ is Union!959) (regex!735 (rule!1322 separatorToken!170)))) b!275510))

(declare-fun b!275511 () Bool)

(declare-fun e!171218 () Bool)

(declare-fun tp!103453 () Bool)

(assert (=> b!275511 (= e!171218 (and tp_is_empty!1823 tp!103453))))

(assert (=> b!274696 (= tp!103351 e!171218)))

(assert (= (and b!274696 ((_ is Cons!3848) (originalCharacters!778 (h!9247 tokens!465)))) b!275511))

(declare-fun b!275515 () Bool)

(declare-fun e!171219 () Bool)

(declare-fun tp!103454 () Bool)

(declare-fun tp!103456 () Bool)

(assert (=> b!275515 (= e!171219 (and tp!103454 tp!103456))))

(assert (=> b!274684 (= tp!103346 e!171219)))

(declare-fun b!275513 () Bool)

(declare-fun tp!103458 () Bool)

(declare-fun tp!103455 () Bool)

(assert (=> b!275513 (= e!171219 (and tp!103458 tp!103455))))

(declare-fun b!275514 () Bool)

(declare-fun tp!103457 () Bool)

(assert (=> b!275514 (= e!171219 tp!103457)))

(declare-fun b!275512 () Bool)

(assert (=> b!275512 (= e!171219 tp_is_empty!1823)))

(assert (= (and b!274684 ((_ is ElementMatch!959) (regex!735 (rule!1322 (h!9247 tokens!465))))) b!275512))

(assert (= (and b!274684 ((_ is Concat!1717) (regex!735 (rule!1322 (h!9247 tokens!465))))) b!275513))

(assert (= (and b!274684 ((_ is Star!959) (regex!735 (rule!1322 (h!9247 tokens!465))))) b!275514))

(assert (= (and b!274684 ((_ is Union!959) (regex!735 (rule!1322 (h!9247 tokens!465))))) b!275515))

(declare-fun b!275529 () Bool)

(declare-fun b_free!10169 () Bool)

(declare-fun b_next!10169 () Bool)

(assert (=> b!275529 (= b_free!10169 (not b_next!10169))))

(declare-fun tp!103471 () Bool)

(declare-fun b_and!22117 () Bool)

(assert (=> b!275529 (= tp!103471 b_and!22117)))

(declare-fun b_free!10171 () Bool)

(declare-fun b_next!10171 () Bool)

(assert (=> b!275529 (= b_free!10171 (not b_next!10171))))

(declare-fun t!39012 () Bool)

(declare-fun tb!15777 () Bool)

(assert (=> (and b!275529 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 (t!38950 tokens!465))))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170)))) t!39012) tb!15777))

(declare-fun result!19448 () Bool)

(assert (= result!19448 result!19400))

(assert (=> d!80559 t!39012))

(declare-fun t!39014 () Bool)

(declare-fun tb!15779 () Bool)

(assert (=> (and b!275529 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 (t!38950 tokens!465))))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465))))) t!39014) tb!15779))

(declare-fun result!19450 () Bool)

(assert (= result!19450 result!19408))

(assert (=> d!80569 t!39014))

(assert (=> b!275224 t!39014))

(assert (=> b!275247 t!39012))

(declare-fun tp!103473 () Bool)

(declare-fun b_and!22119 () Bool)

(assert (=> b!275529 (= tp!103473 (and (=> t!39012 result!19448) (=> t!39014 result!19450) b_and!22119))))

(declare-fun tp!103472 () Bool)

(declare-fun b!275528 () Bool)

(declare-fun e!171232 () Bool)

(declare-fun e!171233 () Bool)

(assert (=> b!275528 (= e!171233 (and tp!103472 (inv!4763 (tag!945 (rule!1322 (h!9247 (t!38950 tokens!465))))) (inv!4766 (transformation!735 (rule!1322 (h!9247 (t!38950 tokens!465))))) e!171232))))

(declare-fun b!275526 () Bool)

(declare-fun e!171234 () Bool)

(declare-fun e!171236 () Bool)

(declare-fun tp!103469 () Bool)

(assert (=> b!275526 (= e!171236 (and (inv!4767 (h!9247 (t!38950 tokens!465))) e!171234 tp!103469))))

(assert (=> b!274693 (= tp!103347 e!171236)))

(assert (=> b!275529 (= e!171232 (and tp!103471 tp!103473))))

(declare-fun b!275527 () Bool)

(declare-fun tp!103470 () Bool)

(assert (=> b!275527 (= e!171234 (and (inv!21 (value!25263 (h!9247 (t!38950 tokens!465)))) e!171233 tp!103470))))

(assert (= b!275528 b!275529))

(assert (= b!275527 b!275528))

(assert (= b!275526 b!275527))

(assert (= (and b!274693 ((_ is Cons!3850) (t!38950 tokens!465))) b!275526))

(declare-fun m!351643 () Bool)

(assert (=> b!275528 m!351643))

(declare-fun m!351645 () Bool)

(assert (=> b!275528 m!351645))

(declare-fun m!351647 () Bool)

(assert (=> b!275526 m!351647))

(declare-fun m!351649 () Bool)

(assert (=> b!275527 m!351649))

(declare-fun b!275532 () Bool)

(declare-fun e!171240 () Bool)

(assert (=> b!275532 (= e!171240 true)))

(declare-fun b!275531 () Bool)

(declare-fun e!171239 () Bool)

(assert (=> b!275531 (= e!171239 e!171240)))

(declare-fun b!275530 () Bool)

(declare-fun e!171238 () Bool)

(assert (=> b!275530 (= e!171238 e!171239)))

(assert (=> b!274710 e!171238))

(assert (= b!275531 b!275532))

(assert (= b!275530 b!275531))

(assert (= (and b!274710 ((_ is Cons!3849) (t!38949 rules!1920))) b!275530))

(assert (=> b!275532 (< (dynLambda!1991 order!2985 (toValue!1478 (transformation!735 (h!9246 (t!38949 rules!1920))))) (dynLambda!1992 order!2987 lambda!9326))))

(assert (=> b!275532 (< (dynLambda!1993 order!2989 (toChars!1337 (transformation!735 (h!9246 (t!38949 rules!1920))))) (dynLambda!1992 order!2987 lambda!9326))))

(declare-fun b_lambda!8875 () Bool)

(assert (= b_lambda!8853 (or (and b!275529 b_free!10171 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 (t!38950 tokens!465))))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))))) (and b!274691 b_free!10155 (= (toChars!1337 (transformation!735 (h!9246 rules!1920))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))))) (and b!274698 b_free!10147 (= (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))))) (and b!275506 b_free!10167 (= (toChars!1337 (transformation!735 (h!9246 (t!38949 rules!1920)))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))))) (and b!274681 b_free!10151) b_lambda!8875)))

(declare-fun b_lambda!8877 () Bool)

(assert (= b_lambda!8857 (or b!274688 b_lambda!8877)))

(declare-fun bs!30935 () Bool)

(declare-fun d!80731 () Bool)

(assert (= bs!30935 (and d!80731 b!274688)))

(assert (=> bs!30935 (= (dynLambda!1997 lambda!9325 (h!9247 tokens!465)) (not (isSeparator!735 (rule!1322 (h!9247 tokens!465)))))))

(assert (=> b!275307 d!80731))

(declare-fun b_lambda!8879 () Bool)

(assert (= b_lambda!8843 (or (and b!274681 b_free!10151 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))))) (and b!275506 b_free!10167 (= (toChars!1337 (transformation!735 (h!9246 (t!38949 rules!1920)))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))))) (and b!275529 b_free!10171 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 (t!38950 tokens!465))))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))))) (and b!274698 b_free!10147) (and b!274691 b_free!10155 (= (toChars!1337 (transformation!735 (h!9246 rules!1920))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))))) b_lambda!8879)))

(declare-fun b_lambda!8881 () Bool)

(assert (= b_lambda!8855 (or (and b!274681 b_free!10151 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))))) (and b!275506 b_free!10167 (= (toChars!1337 (transformation!735 (h!9246 (t!38949 rules!1920)))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))))) (and b!275529 b_free!10171 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 (t!38950 tokens!465))))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))))) (and b!274698 b_free!10147) (and b!274691 b_free!10155 (= (toChars!1337 (transformation!735 (h!9246 rules!1920))) (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))))) b_lambda!8881)))

(declare-fun b_lambda!8883 () Bool)

(assert (= b_lambda!8845 (or (and b!275529 b_free!10171 (= (toChars!1337 (transformation!735 (rule!1322 (h!9247 (t!38950 tokens!465))))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))))) (and b!274691 b_free!10155 (= (toChars!1337 (transformation!735 (h!9246 rules!1920))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))))) (and b!274698 b_free!10147 (= (toChars!1337 (transformation!735 (rule!1322 separatorToken!170))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))))) (and b!275506 b_free!10167 (= (toChars!1337 (transformation!735 (h!9246 (t!38949 rules!1920)))) (toChars!1337 (transformation!735 (rule!1322 (h!9247 tokens!465)))))) (and b!274681 b_free!10151) b_lambda!8883)))

(declare-fun b_lambda!8885 () Bool)

(assert (= b_lambda!8849 (or b!274677 b_lambda!8885)))

(declare-fun bs!30936 () Bool)

(declare-fun d!80733 () Bool)

(assert (= bs!30936 (and d!80733 b!274677)))

(assert (=> bs!30936 (= (dynLambda!1997 lambda!9326 (h!9247 tokens!465)) (rulesProduceIndividualToken!370 thiss!17480 rules!1920 (h!9247 tokens!465)))))

(assert (=> bs!30936 m!350391))

(assert (=> d!80597 d!80733))

(check-sat (not d!80607) (not b!275184) (not b!274876) (not b!274830) (not b!275511) (not b!274886) (not bm!15165) (not b!275124) b_and!22117 (not b!275131) (not b!275126) (not d!80677) (not b!275342) (not b_next!10153) (not b!275528) (not b!274887) (not b!274829) b_and!22113 (not b!275319) (not b!275372) (not d!80707) (not b!275526) (not bm!15133) b_and!22053 (not b!275196) (not b!274860) (not d!80683) (not b!275128) (not d!80595) (not b!275302) (not b!275034) (not bm!15126) (not b_next!10165) (not bm!15140) b_and!22089 (not d!80647) (not b!275228) (not b!275343) (not b!275054) (not b!275248) (not b!275212) (not b!275195) (not d!80649) (not b_next!10155) (not d!80507) (not d!80523) (not b!275326) (not b_lambda!8881) (not b!275338) (not b!275192) (not b!275513) (not b_next!10169) (not b!275495) (not b_next!10171) (not b!275188) (not d!80651) (not d!80499) (not b!275127) (not bm!15145) (not b_lambda!8885) (not b!275311) (not b!275312) (not d!80497) (not b!275340) (not b!275310) (not b!275197) (not b!274938) tp_is_empty!1823 (not b!275225) (not b!275515) (not d!80561) b_and!22045 (not d!80665) (not b!274925) (not b!275181) (not b_next!10147) (not b!275044) (not b!275182) (not b!275070) (not b!275235) (not d!80493) (not d!80679) (not b!275488) (not b!275177) (not bm!15128) (not d!80565) (not d!80675) (not d!80605) (not b!274864) (not b!275046) (not b!275246) (not bm!15139) (not b!275122) (not d!80559) b_and!22087 b_and!22091 (not b!275069) (not b!275251) (not b!275530) (not b!275237) (not b!275249) (not bm!15129) (not b!275031) (not b!275077) (not b!275055) (not d!80669) (not b!274868) (not bm!15149) (not b_lambda!8879) (not d!80577) (not b!275527) (not b!275301) b_and!22119 (not b!275298) (not b!274928) (not b!275178) (not bm!15112) (not b!275189) (not d!80503) (not b!275193) (not b!275051) (not d!80505) (not d!80569) (not b!275047) (not b_lambda!8883) (not b!274831) (not tb!15747) (not b_next!10167) (not d!80633) (not b!275490) (not b!275315) (not b_next!10145) (not b!275217) (not b!275078) (not b!275373) (not d!80671) (not b!275510) b_and!22115 (not b!275050) (not b!275344) (not d!80659) (not d!80655) (not b!275371) (not b!275247) (not d!80623) (not d!80563) (not bm!15109) (not b!275504) (not b!275215) (not d!80693) (not b!275180) (not b!275213) (not b!275201) (not bs!30936) (not b!275316) (not b!275514) (not b!275475) (not d!80579) (not bm!15166) (not b!275033) (not d!80475) (not d!80641) (not b!275314) (not b!275509) (not b!275216) (not d!80639) b_and!22049 (not bm!15143) (not d!80597) (not b!274929) (not d!80653) (not b!274872) (not b!275027) (not b_lambda!8877) (not d!80567) (not d!80645) (not b_lambda!8875) (not b!275187) (not b!275125) (not b!275327) (not b!274863) (not b!275204) (not d!80689) (not b!275505) (not b!275025) (not b!275071) (not b!275242) (not b!274921) (not b!275121) (not b!275339) (not d!80621) (not bm!15098) (not b!275183) (not b!275345) (not d!80637) (not b!274861) (not b!275309) (not d!80619) (not d!80501) (not b_next!10149) (not b_next!10151) (not bm!15130) (not b!274926) (not b!275224) (not b!275026) (not b!275508) (not b!275250) (not b!275208) (not b!275299) (not b!275203) (not b!275476) (not bm!15148) (not bm!15113) (not bm!15142) (not tb!15753) (not d!80629) (not b!275308) (not b!275489) (not b!275179) (not d!80627) (not b!275057) (not bm!15144) (not b!275313) (not b!275341) (not b!275317))
(check-sat b_and!22117 b_and!22053 (not b_next!10165) b_and!22089 (not b_next!10155) (not b_next!10169) (not b_next!10171) b_and!22045 (not b_next!10147) b_and!22119 (not b_next!10167) b_and!22049 (not b_next!10153) b_and!22113 b_and!22087 b_and!22091 (not b_next!10145) b_and!22115 (not b_next!10149) (not b_next!10151))
