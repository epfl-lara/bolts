; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302614 () Bool)

(assert start!302614)

(declare-fun b!3220912 () Bool)

(declare-fun b_free!85617 () Bool)

(declare-fun b_next!86321 () Bool)

(assert (=> b!3220912 (= b_free!85617 (not b_next!86321))))

(declare-fun tp!1014729 () Bool)

(declare-fun b_and!215319 () Bool)

(assert (=> b!3220912 (= tp!1014729 b_and!215319)))

(declare-fun b_free!85619 () Bool)

(declare-fun b_next!86323 () Bool)

(assert (=> b!3220912 (= b_free!85619 (not b_next!86323))))

(declare-fun tp!1014733 () Bool)

(declare-fun b_and!215321 () Bool)

(assert (=> b!3220912 (= tp!1014733 b_and!215321)))

(declare-fun b!3220898 () Bool)

(declare-fun b_free!85621 () Bool)

(declare-fun b_next!86325 () Bool)

(assert (=> b!3220898 (= b_free!85621 (not b_next!86325))))

(declare-fun tp!1014730 () Bool)

(declare-fun b_and!215323 () Bool)

(assert (=> b!3220898 (= tp!1014730 b_and!215323)))

(declare-fun b_free!85623 () Bool)

(declare-fun b_next!86327 () Bool)

(assert (=> b!3220898 (= b_free!85623 (not b_next!86327))))

(declare-fun tp!1014737 () Bool)

(declare-fun b_and!215325 () Bool)

(assert (=> b!3220898 (= tp!1014737 b_and!215325)))

(declare-fun b!3220878 () Bool)

(declare-fun b_free!85625 () Bool)

(declare-fun b_next!86329 () Bool)

(assert (=> b!3220878 (= b_free!85625 (not b_next!86329))))

(declare-fun tp!1014731 () Bool)

(declare-fun b_and!215327 () Bool)

(assert (=> b!3220878 (= tp!1014731 b_and!215327)))

(declare-fun b_free!85627 () Bool)

(declare-fun b_next!86331 () Bool)

(assert (=> b!3220878 (= b_free!85627 (not b_next!86331))))

(declare-fun tp!1014736 () Bool)

(declare-fun b_and!215329 () Bool)

(assert (=> b!3220878 (= tp!1014736 b_and!215329)))

(declare-fun bs!542603 () Bool)

(declare-fun b!3220913 () Bool)

(declare-fun b!3220877 () Bool)

(assert (= bs!542603 (and b!3220913 b!3220877)))

(declare-fun lambda!117747 () Int)

(declare-fun lambda!117746 () Int)

(assert (=> bs!542603 (not (= lambda!117747 lambda!117746))))

(declare-fun b!3220936 () Bool)

(declare-fun e!2008268 () Bool)

(assert (=> b!3220936 (= e!2008268 true)))

(declare-fun b!3220935 () Bool)

(declare-fun e!2008267 () Bool)

(assert (=> b!3220935 (= e!2008267 e!2008268)))

(declare-fun b!3220934 () Bool)

(declare-fun e!2008266 () Bool)

(assert (=> b!3220934 (= e!2008266 e!2008267)))

(assert (=> b!3220913 e!2008266))

(assert (= b!3220935 b!3220936))

(assert (= b!3220934 b!3220935))

(declare-datatypes ((C!20172 0))(
  ( (C!20173 (val!12134 Int)) )
))
(declare-datatypes ((Regex!9993 0))(
  ( (ElementMatch!9993 (c!541652 C!20172)) (Concat!15457 (regOne!20498 Regex!9993) (regTwo!20498 Regex!9993)) (EmptyExpr!9993) (Star!9993 (reg!10322 Regex!9993)) (EmptyLang!9993) (Union!9993 (regOne!20499 Regex!9993) (regTwo!20499 Regex!9993)) )
))
(declare-datatypes ((List!36346 0))(
  ( (Nil!36222) (Cons!36222 (h!41642 (_ BitVec 16)) (t!240483 List!36346)) )
))
(declare-datatypes ((TokenValue!5464 0))(
  ( (FloatLiteralValue!10928 (text!38693 List!36346)) (TokenValueExt!5463 (__x!23145 Int)) (Broken!27320 (value!169603 List!36346)) (Object!5587) (End!5464) (Def!5464) (Underscore!5464) (Match!5464) (Else!5464) (Error!5464) (Case!5464) (If!5464) (Extends!5464) (Abstract!5464) (Class!5464) (Val!5464) (DelimiterValue!10928 (del!5524 List!36346)) (KeywordValue!5470 (value!169604 List!36346)) (CommentValue!10928 (value!169605 List!36346)) (WhitespaceValue!10928 (value!169606 List!36346)) (IndentationValue!5464 (value!169607 List!36346)) (String!40653) (Int32!5464) (Broken!27321 (value!169608 List!36346)) (Boolean!5465) (Unit!50773) (OperatorValue!5467 (op!5524 List!36346)) (IdentifierValue!10928 (value!169609 List!36346)) (IdentifierValue!10929 (value!169610 List!36346)) (WhitespaceValue!10929 (value!169611 List!36346)) (True!10928) (False!10928) (Broken!27322 (value!169612 List!36346)) (Broken!27323 (value!169613 List!36346)) (True!10929) (RightBrace!5464) (RightBracket!5464) (Colon!5464) (Null!5464) (Comma!5464) (LeftBracket!5464) (False!10929) (LeftBrace!5464) (ImaginaryLiteralValue!5464 (text!38694 List!36346)) (StringLiteralValue!16392 (value!169614 List!36346)) (EOFValue!5464 (value!169615 List!36346)) (IdentValue!5464 (value!169616 List!36346)) (DelimiterValue!10929 (value!169617 List!36346)) (DedentValue!5464 (value!169618 List!36346)) (NewLineValue!5464 (value!169619 List!36346)) (IntegerValue!16392 (value!169620 (_ BitVec 32)) (text!38695 List!36346)) (IntegerValue!16393 (value!169621 Int) (text!38696 List!36346)) (Times!5464) (Or!5464) (Equal!5464) (Minus!5464) (Broken!27324 (value!169622 List!36346)) (And!5464) (Div!5464) (LessEqual!5464) (Mod!5464) (Concat!15458) (Not!5464) (Plus!5464) (SpaceValue!5464 (value!169623 List!36346)) (IntegerValue!16394 (value!169624 Int) (text!38697 List!36346)) (StringLiteralValue!16393 (text!38698 List!36346)) (FloatLiteralValue!10929 (text!38699 List!36346)) (BytesLiteralValue!5464 (value!169625 List!36346)) (CommentValue!10929 (value!169626 List!36346)) (StringLiteralValue!16394 (value!169627 List!36346)) (ErrorTokenValue!5464 (msg!5525 List!36346)) )
))
(declare-datatypes ((List!36347 0))(
  ( (Nil!36223) (Cons!36223 (h!41643 C!20172) (t!240484 List!36347)) )
))
(declare-datatypes ((IArray!21691 0))(
  ( (IArray!21692 (innerList!10903 List!36347)) )
))
(declare-datatypes ((Conc!10843 0))(
  ( (Node!10843 (left!28178 Conc!10843) (right!28508 Conc!10843) (csize!21916 Int) (cheight!11054 Int)) (Leaf!17071 (xs!13961 IArray!21691) (csize!21917 Int)) (Empty!10843) )
))
(declare-datatypes ((BalanceConc!21300 0))(
  ( (BalanceConc!21301 (c!541653 Conc!10843)) )
))
(declare-datatypes ((String!40654 0))(
  ( (String!40655 (value!169628 String)) )
))
(declare-datatypes ((TokenValueInjection!10356 0))(
  ( (TokenValueInjection!10357 (toValue!7330 Int) (toChars!7189 Int)) )
))
(declare-datatypes ((Rule!10268 0))(
  ( (Rule!10269 (regex!5234 Regex!9993) (tag!5766 String!40654) (isSeparator!5234 Bool) (transformation!5234 TokenValueInjection!10356)) )
))
(declare-datatypes ((List!36348 0))(
  ( (Nil!36224) (Cons!36224 (h!41644 Rule!10268) (t!240485 List!36348)) )
))
(declare-fun rules!2135 () List!36348)

(get-info :version)

(assert (= (and b!3220913 ((_ is Cons!36224) rules!2135)) b!3220934))

(declare-fun order!18559 () Int)

(declare-fun order!18557 () Int)

(declare-fun dynLambda!14667 (Int Int) Int)

(declare-fun dynLambda!14668 (Int Int) Int)

(assert (=> b!3220936 (< (dynLambda!14667 order!18557 (toValue!7330 (transformation!5234 (h!41644 rules!2135)))) (dynLambda!14668 order!18559 lambda!117747))))

(declare-fun order!18561 () Int)

(declare-fun dynLambda!14669 (Int Int) Int)

(assert (=> b!3220936 (< (dynLambda!14669 order!18561 (toChars!7189 (transformation!5234 (h!41644 rules!2135)))) (dynLambda!14668 order!18559 lambda!117747))))

(assert (=> b!3220913 true))

(declare-fun b!3220875 () Bool)

(declare-fun res!1311232 () Bool)

(declare-fun e!2008230 () Bool)

(assert (=> b!3220875 (=> (not res!1311232) (not e!2008230))))

(declare-datatypes ((Token!9834 0))(
  ( (Token!9835 (value!169629 TokenValue!5464) (rule!7692 Rule!10268) (size!27313 Int) (originalCharacters!5948 List!36347)) )
))
(declare-datatypes ((List!36349 0))(
  ( (Nil!36225) (Cons!36225 (h!41645 Token!9834) (t!240486 List!36349)) )
))
(declare-fun tokens!494 () List!36349)

(declare-datatypes ((LexerInterface!4823 0))(
  ( (LexerInterfaceExt!4820 (__x!23146 Int)) (Lexer!4821) )
))
(declare-fun thiss!18206 () LexerInterface!4823)

(declare-datatypes ((IArray!21693 0))(
  ( (IArray!21694 (innerList!10904 List!36349)) )
))
(declare-datatypes ((Conc!10844 0))(
  ( (Node!10844 (left!28179 Conc!10844) (right!28509 Conc!10844) (csize!21918 Int) (cheight!11055 Int)) (Leaf!17072 (xs!13962 IArray!21693) (csize!21919 Int)) (Empty!10844) )
))
(declare-datatypes ((BalanceConc!21302 0))(
  ( (BalanceConc!21303 (c!541654 Conc!10844)) )
))
(declare-fun rulesProduceEachTokenIndividually!1274 (LexerInterface!4823 List!36348 BalanceConc!21302) Bool)

(declare-fun seqFromList!3539 (List!36349) BalanceConc!21302)

(assert (=> b!3220875 (= res!1311232 (rulesProduceEachTokenIndividually!1274 thiss!18206 rules!2135 (seqFromList!3539 tokens!494)))))

(declare-fun b!3220876 () Bool)

(declare-fun res!1311255 () Bool)

(assert (=> b!3220876 (=> (not res!1311255) (not e!2008230))))

(assert (=> b!3220876 (= res!1311255 (and (not ((_ is Nil!36225) tokens!494)) (not ((_ is Nil!36225) (t!240486 tokens!494)))))))

(declare-fun res!1311257 () Bool)

(assert (=> b!3220877 (=> (not res!1311257) (not e!2008230))))

(declare-fun forall!7416 (List!36349 Int) Bool)

(assert (=> b!3220877 (= res!1311257 (forall!7416 tokens!494 lambda!117746))))

(declare-fun e!2008224 () Bool)

(assert (=> b!3220878 (= e!2008224 (and tp!1014731 tp!1014736))))

(declare-fun b!3220879 () Bool)

(declare-fun e!2008244 () Bool)

(declare-fun e!2008245 () Bool)

(assert (=> b!3220879 (= e!2008244 e!2008245)))

(declare-fun res!1311229 () Bool)

(assert (=> b!3220879 (=> (not res!1311229) (not e!2008245))))

(declare-fun lt!1090912 () Rule!10268)

(declare-fun lt!1090919 () List!36347)

(declare-fun matchR!4627 (Regex!9993 List!36347) Bool)

(assert (=> b!3220879 (= res!1311229 (matchR!4627 (regex!5234 lt!1090912) lt!1090919))))

(declare-datatypes ((Option!7173 0))(
  ( (None!7172) (Some!7172 (v!35752 Rule!10268)) )
))
(declare-fun lt!1090908 () Option!7173)

(declare-fun get!11541 (Option!7173) Rule!10268)

(assert (=> b!3220879 (= lt!1090912 (get!11541 lt!1090908))))

(declare-fun b!3220880 () Bool)

(declare-datatypes ((Unit!50774 0))(
  ( (Unit!50775) )
))
(declare-fun e!2008231 () Unit!50774)

(declare-fun Unit!50776 () Unit!50774)

(assert (=> b!3220880 (= e!2008231 Unit!50776)))

(declare-fun lt!1090927 () Unit!50774)

(declare-fun lt!1090903 () List!36347)

(declare-fun lt!1090933 () C!20172)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!398 (Regex!9993 List!36347 C!20172) Unit!50774)

(assert (=> b!3220880 (= lt!1090927 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!398 (regex!5234 (rule!7692 (h!41645 (t!240486 tokens!494)))) lt!1090903 lt!1090933))))

(declare-fun res!1311246 () Bool)

(assert (=> b!3220880 (= res!1311246 (not (matchR!4627 (regex!5234 (rule!7692 (h!41645 (t!240486 tokens!494)))) lt!1090903)))))

(declare-fun e!2008250 () Bool)

(assert (=> b!3220880 (=> (not res!1311246) (not e!2008250))))

(assert (=> b!3220880 e!2008250))

(declare-fun b!3220881 () Bool)

(declare-fun res!1311227 () Bool)

(declare-fun e!2008253 () Bool)

(assert (=> b!3220881 (=> res!1311227 e!2008253)))

(declare-datatypes ((tuple2!35650 0))(
  ( (tuple2!35651 (_1!20959 BalanceConc!21302) (_2!20959 BalanceConc!21300)) )
))
(declare-fun lt!1090913 () tuple2!35650)

(declare-fun apply!8235 (BalanceConc!21302 Int) Token!9834)

(assert (=> b!3220881 (= res!1311227 (not (= (apply!8235 (_1!20959 lt!1090913) 0) (h!41645 (t!240486 tokens!494)))))))

(declare-fun b!3220882 () Bool)

(declare-fun e!2008254 () Bool)

(declare-fun e!2008226 () Bool)

(assert (=> b!3220882 (= e!2008254 e!2008226)))

(declare-fun res!1311256 () Bool)

(assert (=> b!3220882 (=> res!1311256 e!2008226)))

(declare-fun lt!1090930 () List!36347)

(declare-fun lt!1090892 () C!20172)

(declare-fun contains!6492 (List!36347 C!20172) Bool)

(assert (=> b!3220882 (= res!1311256 (contains!6492 lt!1090930 lt!1090892))))

(declare-fun lt!1090906 () List!36347)

(declare-fun head!7059 (List!36347) C!20172)

(assert (=> b!3220882 (= lt!1090892 (head!7059 lt!1090906))))

(declare-fun b!3220883 () Bool)

(declare-fun e!2008241 () Bool)

(declare-fun e!2008259 () Bool)

(assert (=> b!3220883 (= e!2008241 e!2008259)))

(declare-fun res!1311251 () Bool)

(assert (=> b!3220883 (=> res!1311251 e!2008259)))

(declare-datatypes ((tuple2!35652 0))(
  ( (tuple2!35653 (_1!20960 Token!9834) (_2!20960 List!36347)) )
))
(declare-fun lt!1090918 () tuple2!35652)

(declare-fun separatorToken!241 () Token!9834)

(assert (=> b!3220883 (= res!1311251 (not (= (_1!20960 lt!1090918) separatorToken!241)))))

(declare-datatypes ((Option!7174 0))(
  ( (None!7173) (Some!7173 (v!35753 tuple2!35652)) )
))
(declare-fun lt!1090935 () Option!7174)

(declare-fun get!11542 (Option!7174) tuple2!35652)

(assert (=> b!3220883 (= lt!1090918 (get!11542 lt!1090935))))

(declare-fun b!3220884 () Bool)

(assert (=> b!3220884 (= e!2008245 (= (rule!7692 separatorToken!241) lt!1090912))))

(declare-fun b!3220885 () Bool)

(declare-fun e!2008243 () Bool)

(declare-fun e!2008258 () Bool)

(assert (=> b!3220885 (= e!2008243 e!2008258)))

(declare-fun res!1311245 () Bool)

(assert (=> b!3220885 (=> res!1311245 e!2008258)))

(declare-fun ++!8708 (List!36347 List!36347) List!36347)

(declare-fun printWithSeparatorTokenList!168 (LexerInterface!4823 List!36349 Token!9834) List!36347)

(assert (=> b!3220885 (= res!1311245 (not (= lt!1090906 (++!8708 (++!8708 lt!1090903 lt!1090919) (printWithSeparatorTokenList!168 thiss!18206 (t!240486 (t!240486 tokens!494)) separatorToken!241)))))))

(declare-fun list!12899 (BalanceConc!21300) List!36347)

(declare-fun charsOf!3250 (Token!9834) BalanceConc!21300)

(assert (=> b!3220885 (= lt!1090903 (list!12899 (charsOf!3250 (h!41645 (t!240486 tokens!494)))))))

(declare-fun lt!1090928 () List!36347)

(assert (=> b!3220885 (= lt!1090928 (++!8708 lt!1090919 lt!1090906))))

(assert (=> b!3220885 (= lt!1090919 (list!12899 (charsOf!3250 separatorToken!241)))))

(assert (=> b!3220885 (= lt!1090906 (printWithSeparatorTokenList!168 thiss!18206 (t!240486 tokens!494) separatorToken!241))))

(declare-fun lt!1090943 () List!36347)

(assert (=> b!3220885 (= lt!1090943 (printWithSeparatorTokenList!168 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3220886 () Bool)

(declare-fun e!2008246 () Bool)

(declare-fun e!2008227 () Bool)

(declare-fun tp!1014728 () Bool)

(declare-fun inv!49096 (String!40654) Bool)

(declare-fun inv!49099 (TokenValueInjection!10356) Bool)

(assert (=> b!3220886 (= e!2008227 (and tp!1014728 (inv!49096 (tag!5766 (rule!7692 (h!41645 tokens!494)))) (inv!49099 (transformation!5234 (rule!7692 (h!41645 tokens!494)))) e!2008246))))

(declare-fun b!3220887 () Bool)

(declare-fun e!2008242 () Bool)

(declare-fun e!2008255 () Bool)

(assert (=> b!3220887 (= e!2008242 e!2008255)))

(declare-fun res!1311225 () Bool)

(assert (=> b!3220887 (=> (not res!1311225) (not e!2008255))))

(declare-fun lt!1090905 () Rule!10268)

(declare-fun lt!1090934 () List!36347)

(assert (=> b!3220887 (= res!1311225 (matchR!4627 (regex!5234 lt!1090905) lt!1090934))))

(declare-fun lt!1090910 () Option!7173)

(assert (=> b!3220887 (= lt!1090905 (get!11541 lt!1090910))))

(declare-fun b!3220888 () Bool)

(declare-fun res!1311252 () Bool)

(assert (=> b!3220888 (=> (not res!1311252) (not e!2008230))))

(declare-fun sepAndNonSepRulesDisjointChars!1428 (List!36348 List!36348) Bool)

(assert (=> b!3220888 (= res!1311252 (sepAndNonSepRulesDisjointChars!1428 rules!2135 rules!2135))))

(declare-fun b!3220889 () Bool)

(declare-fun res!1311240 () Bool)

(assert (=> b!3220889 (=> res!1311240 e!2008254)))

(declare-fun isEmpty!20328 (List!36347) Bool)

(assert (=> b!3220889 (= res!1311240 (isEmpty!20328 lt!1090906))))

(declare-fun b!3220890 () Bool)

(declare-fun res!1311228 () Bool)

(assert (=> b!3220890 (=> (not res!1311228) (not e!2008230))))

(declare-fun rulesInvariant!4220 (LexerInterface!4823 List!36348) Bool)

(assert (=> b!3220890 (= res!1311228 (rulesInvariant!4220 thiss!18206 rules!2135))))

(declare-fun b!3220891 () Bool)

(assert (=> b!3220891 (= e!2008255 (= (rule!7692 (h!41645 tokens!494)) lt!1090905))))

(declare-fun b!3220892 () Bool)

(declare-fun res!1311253 () Bool)

(assert (=> b!3220892 (=> (not res!1311253) (not e!2008230))))

(declare-fun rulesProduceIndividualToken!2315 (LexerInterface!4823 List!36348 Token!9834) Bool)

(assert (=> b!3220892 (= res!1311253 (rulesProduceIndividualToken!2315 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3220893 () Bool)

(declare-fun e!2008235 () Bool)

(declare-fun e!2008256 () Bool)

(declare-fun tp!1014735 () Bool)

(assert (=> b!3220893 (= e!2008235 (and e!2008256 tp!1014735))))

(declare-fun b!3220894 () Bool)

(declare-fun res!1311226 () Bool)

(declare-fun e!2008234 () Bool)

(assert (=> b!3220894 (=> res!1311226 e!2008234)))

(assert (=> b!3220894 (= res!1311226 (not (rulesProduceIndividualToken!2315 thiss!18206 rules!2135 (h!41645 tokens!494))))))

(declare-fun e!2008221 () Bool)

(declare-fun tp!1014734 () Bool)

(declare-fun e!2008232 () Bool)

(declare-fun b!3220895 () Bool)

(declare-fun inv!49100 (Token!9834) Bool)

(assert (=> b!3220895 (= e!2008221 (and (inv!49100 (h!41645 tokens!494)) e!2008232 tp!1014734))))

(declare-fun b!3220896 () Bool)

(declare-fun e!2008229 () Bool)

(assert (=> b!3220896 (= e!2008230 (not e!2008229))))

(declare-fun res!1311223 () Bool)

(assert (=> b!3220896 (=> res!1311223 e!2008229)))

(declare-fun lt!1090937 () List!36347)

(declare-fun lt!1090902 () List!36347)

(assert (=> b!3220896 (= res!1311223 (not (= lt!1090937 lt!1090902)))))

(declare-fun printList!1373 (LexerInterface!4823 List!36349) List!36347)

(assert (=> b!3220896 (= lt!1090902 (printList!1373 thiss!18206 (Cons!36225 (h!41645 tokens!494) Nil!36225)))))

(declare-fun lt!1090929 () BalanceConc!21300)

(assert (=> b!3220896 (= lt!1090937 (list!12899 lt!1090929))))

(declare-fun lt!1090941 () BalanceConc!21302)

(declare-fun printTailRec!1320 (LexerInterface!4823 BalanceConc!21302 Int BalanceConc!21300) BalanceConc!21300)

(assert (=> b!3220896 (= lt!1090929 (printTailRec!1320 thiss!18206 lt!1090941 0 (BalanceConc!21301 Empty!10843)))))

(declare-fun print!1888 (LexerInterface!4823 BalanceConc!21302) BalanceConc!21300)

(assert (=> b!3220896 (= lt!1090929 (print!1888 thiss!18206 lt!1090941))))

(declare-fun singletonSeq!2330 (Token!9834) BalanceConc!21302)

(assert (=> b!3220896 (= lt!1090941 (singletonSeq!2330 (h!41645 tokens!494)))))

(declare-fun b!3220897 () Bool)

(declare-fun e!2008238 () Bool)

(declare-fun e!2008239 () Bool)

(assert (=> b!3220897 (= e!2008238 e!2008239)))

(declare-fun res!1311236 () Bool)

(assert (=> b!3220897 (=> (not res!1311236) (not e!2008239))))

(declare-fun lt!1090911 () Rule!10268)

(assert (=> b!3220897 (= res!1311236 (matchR!4627 (regex!5234 lt!1090911) lt!1090903))))

(declare-fun lt!1090898 () Option!7173)

(assert (=> b!3220897 (= lt!1090911 (get!11541 lt!1090898))))

(assert (=> b!3220898 (= e!2008246 (and tp!1014730 tp!1014737))))

(declare-fun b!3220899 () Bool)

(assert (=> b!3220899 (= e!2008239 (= (rule!7692 (h!41645 (t!240486 tokens!494))) lt!1090911))))

(declare-fun b!3220900 () Bool)

(declare-fun res!1311254 () Bool)

(assert (=> b!3220900 (=> (not res!1311254) (not e!2008230))))

(declare-fun isEmpty!20329 (List!36348) Bool)

(assert (=> b!3220900 (= res!1311254 (not (isEmpty!20329 rules!2135)))))

(declare-fun b!3220901 () Bool)

(declare-fun e!2008251 () Bool)

(assert (=> b!3220901 (= e!2008234 e!2008251)))

(declare-fun res!1311239 () Bool)

(assert (=> b!3220901 (=> res!1311239 e!2008251)))

(declare-fun lt!1090900 () BalanceConc!21300)

(declare-fun isEmpty!20330 (BalanceConc!21302) Bool)

(declare-fun lex!2153 (LexerInterface!4823 List!36348 BalanceConc!21300) tuple2!35650)

(assert (=> b!3220901 (= res!1311239 (isEmpty!20330 (_1!20959 (lex!2153 thiss!18206 rules!2135 lt!1090900))))))

(declare-fun seqFromList!3540 (List!36347) BalanceConc!21300)

(assert (=> b!3220901 (= lt!1090900 (seqFromList!3540 lt!1090934))))

(declare-fun b!3220902 () Bool)

(declare-fun e!2008223 () Bool)

(assert (=> b!3220902 (= e!2008223 false)))

(declare-fun b!3220903 () Bool)

(assert (=> b!3220903 (= e!2008251 e!2008243)))

(declare-fun res!1311231 () Bool)

(assert (=> b!3220903 (=> res!1311231 e!2008243)))

(assert (=> b!3220903 (= res!1311231 (or (isSeparator!5234 (rule!7692 (h!41645 tokens!494))) (isSeparator!5234 (rule!7692 (h!41645 (t!240486 tokens!494))))))))

(declare-fun lt!1090895 () Unit!50774)

(declare-fun forallContained!1205 (List!36349 Int Token!9834) Unit!50774)

(assert (=> b!3220903 (= lt!1090895 (forallContained!1205 tokens!494 lambda!117746 (h!41645 (t!240486 tokens!494))))))

(declare-fun lt!1090923 () Unit!50774)

(assert (=> b!3220903 (= lt!1090923 (forallContained!1205 tokens!494 lambda!117746 (h!41645 tokens!494)))))

(declare-fun b!3220904 () Bool)

(declare-fun e!2008220 () Bool)

(declare-fun e!2008236 () Bool)

(assert (=> b!3220904 (= e!2008220 e!2008236)))

(declare-fun res!1311242 () Bool)

(assert (=> b!3220904 (=> res!1311242 e!2008236)))

(declare-fun lt!1090940 () List!36347)

(assert (=> b!3220904 (= res!1311242 (not (= lt!1090943 lt!1090940)))))

(declare-fun lt!1090897 () List!36347)

(assert (=> b!3220904 (= lt!1090897 lt!1090940)))

(assert (=> b!3220904 (= lt!1090940 (++!8708 lt!1090934 lt!1090928))))

(declare-fun lt!1090891 () Unit!50774)

(declare-fun lemmaConcatAssociativity!1762 (List!36347 List!36347 List!36347) Unit!50774)

(assert (=> b!3220904 (= lt!1090891 (lemmaConcatAssociativity!1762 lt!1090934 lt!1090919 lt!1090906))))

(declare-fun b!3220905 () Bool)

(declare-fun e!2008252 () Bool)

(declare-fun lt!1090896 () tuple2!35650)

(declare-fun isEmpty!20331 (BalanceConc!21300) Bool)

(assert (=> b!3220905 (= e!2008252 (isEmpty!20331 (_2!20959 lt!1090896)))))

(declare-fun b!3220906 () Bool)

(assert (=> b!3220906 (= e!2008259 e!2008254)))

(declare-fun res!1311248 () Bool)

(assert (=> b!3220906 (=> res!1311248 e!2008254)))

(assert (=> b!3220906 (= res!1311248 (not (matchR!4627 (regex!5234 (rule!7692 separatorToken!241)) lt!1090919)))))

(declare-fun ruleValid!1654 (LexerInterface!4823 Rule!10268) Bool)

(assert (=> b!3220906 (ruleValid!1654 thiss!18206 (rule!7692 separatorToken!241))))

(declare-fun lt!1090917 () Unit!50774)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!934 (LexerInterface!4823 Rule!10268 List!36348) Unit!50774)

(assert (=> b!3220906 (= lt!1090917 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!934 thiss!18206 (rule!7692 separatorToken!241) rules!2135))))

(declare-fun b!3220907 () Bool)

(declare-fun Unit!50777 () Unit!50774)

(assert (=> b!3220907 (= e!2008231 Unit!50777)))

(declare-fun b!3220908 () Bool)

(declare-fun e!2008237 () Unit!50774)

(declare-fun Unit!50778 () Unit!50774)

(assert (=> b!3220908 (= e!2008237 Unit!50778)))

(declare-fun b!3220909 () Bool)

(declare-fun res!1311241 () Bool)

(assert (=> b!3220909 (=> (not res!1311241) (not e!2008252))))

(assert (=> b!3220909 (= res!1311241 (= (apply!8235 (_1!20959 lt!1090896) 0) separatorToken!241))))

(declare-fun b!3220910 () Bool)

(assert (=> b!3220910 (= e!2008226 true)))

(declare-fun lt!1090909 () Bool)

(declare-fun lt!1090924 () List!36347)

(assert (=> b!3220910 (= lt!1090909 (contains!6492 lt!1090924 lt!1090892))))

(declare-fun b!3220911 () Bool)

(assert (=> b!3220911 (= e!2008229 e!2008234)))

(declare-fun res!1311243 () Bool)

(assert (=> b!3220911 (=> res!1311243 e!2008234)))

(assert (=> b!3220911 (= res!1311243 (or (not (= lt!1090902 lt!1090934)) (not (= lt!1090937 lt!1090934))))))

(assert (=> b!3220911 (= lt!1090934 (list!12899 (charsOf!3250 (h!41645 tokens!494))))))

(declare-fun e!2008247 () Bool)

(assert (=> b!3220912 (= e!2008247 (and tp!1014729 tp!1014733))))

(declare-fun e!2008248 () Bool)

(assert (=> b!3220913 (= e!2008236 e!2008248)))

(declare-fun res!1311258 () Bool)

(assert (=> b!3220913 (=> res!1311258 e!2008248)))

(declare-fun contains!6493 (List!36348 Rule!10268) Bool)

(assert (=> b!3220913 (= res!1311258 (not (contains!6493 rules!2135 (rule!7692 separatorToken!241))))))

(assert (=> b!3220913 (not (contains!6492 lt!1090930 lt!1090933))))

(declare-fun lt!1090901 () Unit!50774)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!142 (LexerInterface!4823 List!36348 List!36348 Rule!10268 Rule!10268 C!20172) Unit!50774)

(assert (=> b!3220913 (= lt!1090901 (lemmaSepRuleNotContainsCharContainedInANonSepRule!142 thiss!18206 rules!2135 rules!2135 (rule!7692 (h!41645 (t!240486 tokens!494))) (rule!7692 separatorToken!241) lt!1090933))))

(declare-fun lt!1090920 () Unit!50774)

(assert (=> b!3220913 (= lt!1090920 e!2008231)))

(declare-fun c!541651 () Bool)

(assert (=> b!3220913 (= c!541651 (not (contains!6492 lt!1090924 lt!1090933)))))

(assert (=> b!3220913 (= lt!1090933 (head!7059 lt!1090903))))

(declare-fun usedCharacters!550 (Regex!9993) List!36347)

(assert (=> b!3220913 (= lt!1090924 (usedCharacters!550 (regex!5234 (rule!7692 (h!41645 (t!240486 tokens!494))))))))

(declare-fun maxPrefixOneRule!1602 (LexerInterface!4823 Rule!10268 List!36347) Option!7174)

(declare-fun apply!8236 (TokenValueInjection!10356 BalanceConc!21300) TokenValue!5464)

(declare-fun size!27314 (List!36347) Int)

(assert (=> b!3220913 (= (maxPrefixOneRule!1602 thiss!18206 (rule!7692 (h!41645 (t!240486 tokens!494))) lt!1090903) (Some!7173 (tuple2!35653 (Token!9835 (apply!8236 (transformation!5234 (rule!7692 (h!41645 (t!240486 tokens!494)))) (seqFromList!3540 lt!1090903)) (rule!7692 (h!41645 (t!240486 tokens!494))) (size!27314 lt!1090903) lt!1090903) Nil!36223)))))

(declare-fun lt!1090921 () Unit!50774)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!715 (LexerInterface!4823 List!36348 List!36347 List!36347 List!36347 Rule!10268) Unit!50774)

(assert (=> b!3220913 (= lt!1090921 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!715 thiss!18206 rules!2135 lt!1090903 lt!1090903 Nil!36223 (rule!7692 (h!41645 (t!240486 tokens!494)))))))

(assert (=> b!3220913 e!2008238))

(declare-fun res!1311230 () Bool)

(assert (=> b!3220913 (=> (not res!1311230) (not e!2008238))))

(declare-fun isDefined!5571 (Option!7173) Bool)

(assert (=> b!3220913 (= res!1311230 (isDefined!5571 lt!1090898))))

(declare-fun getRuleFromTag!939 (LexerInterface!4823 List!36348 String!40654) Option!7173)

(assert (=> b!3220913 (= lt!1090898 (getRuleFromTag!939 thiss!18206 rules!2135 (tag!5766 (rule!7692 (h!41645 (t!240486 tokens!494))))))))

(declare-fun lt!1090915 () Unit!50774)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!939 (LexerInterface!4823 List!36348 List!36347 Token!9834) Unit!50774)

(assert (=> b!3220913 (= lt!1090915 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!939 thiss!18206 rules!2135 lt!1090903 (h!41645 (t!240486 tokens!494))))))

(declare-fun lt!1090899 () Bool)

(assert (=> b!3220913 lt!1090899))

(declare-fun lt!1090894 () Unit!50774)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!862 (LexerInterface!4823 List!36348 List!36349 Token!9834) Unit!50774)

(assert (=> b!3220913 (= lt!1090894 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!862 thiss!18206 rules!2135 tokens!494 (h!41645 (t!240486 tokens!494))))))

(declare-fun maxPrefix!2465 (LexerInterface!4823 List!36348 List!36347) Option!7174)

(assert (=> b!3220913 (= (maxPrefix!2465 thiss!18206 rules!2135 lt!1090940) (Some!7173 (tuple2!35653 (h!41645 tokens!494) lt!1090928)))))

(declare-fun lt!1090904 () Unit!50774)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!158 (LexerInterface!4823 List!36348 Token!9834 Rule!10268 List!36347 Rule!10268) Unit!50774)

(assert (=> b!3220913 (= lt!1090904 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!158 thiss!18206 rules!2135 (h!41645 tokens!494) (rule!7692 (h!41645 tokens!494)) lt!1090928 (rule!7692 separatorToken!241)))))

(declare-fun lt!1090936 () C!20172)

(assert (=> b!3220913 (not (contains!6492 (usedCharacters!550 (regex!5234 (rule!7692 (h!41645 tokens!494)))) lt!1090936))))

(declare-fun lt!1090942 () Unit!50774)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!158 (LexerInterface!4823 List!36348 List!36348 Rule!10268 Rule!10268 C!20172) Unit!50774)

(assert (=> b!3220913 (= lt!1090942 (lemmaNonSepRuleNotContainsCharContainedInASepRule!158 thiss!18206 rules!2135 rules!2135 (rule!7692 (h!41645 tokens!494)) (rule!7692 separatorToken!241) lt!1090936))))

(declare-fun lt!1090916 () Unit!50774)

(assert (=> b!3220913 (= lt!1090916 (forallContained!1205 tokens!494 lambda!117747 (h!41645 (t!240486 tokens!494))))))

(declare-fun lt!1090944 () Bool)

(assert (=> b!3220913 (= lt!1090899 (not lt!1090944))))

(assert (=> b!3220913 (= lt!1090899 (rulesProduceIndividualToken!2315 thiss!18206 rules!2135 (h!41645 (t!240486 tokens!494))))))

(assert (=> b!3220913 (= lt!1090944 e!2008253)))

(declare-fun res!1311235 () Bool)

(assert (=> b!3220913 (=> res!1311235 e!2008253)))

(declare-fun size!27315 (BalanceConc!21302) Int)

(assert (=> b!3220913 (= res!1311235 (not (= (size!27315 (_1!20959 lt!1090913)) 1)))))

(declare-fun lt!1090925 () BalanceConc!21300)

(assert (=> b!3220913 (= lt!1090913 (lex!2153 thiss!18206 rules!2135 lt!1090925))))

(declare-fun lt!1090914 () BalanceConc!21302)

(assert (=> b!3220913 (= lt!1090925 (printTailRec!1320 thiss!18206 lt!1090914 0 (BalanceConc!21301 Empty!10843)))))

(assert (=> b!3220913 (= lt!1090925 (print!1888 thiss!18206 lt!1090914))))

(assert (=> b!3220913 (= lt!1090914 (singletonSeq!2330 (h!41645 (t!240486 tokens!494))))))

(assert (=> b!3220913 e!2008252))

(declare-fun res!1311249 () Bool)

(assert (=> b!3220913 (=> (not res!1311249) (not e!2008252))))

(assert (=> b!3220913 (= res!1311249 (= (size!27315 (_1!20959 lt!1090896)) 1))))

(declare-fun lt!1090932 () BalanceConc!21300)

(assert (=> b!3220913 (= lt!1090896 (lex!2153 thiss!18206 rules!2135 lt!1090932))))

(declare-fun lt!1090922 () BalanceConc!21302)

(assert (=> b!3220913 (= lt!1090932 (printTailRec!1320 thiss!18206 lt!1090922 0 (BalanceConc!21301 Empty!10843)))))

(assert (=> b!3220913 (= lt!1090932 (print!1888 thiss!18206 lt!1090922))))

(assert (=> b!3220913 (= lt!1090922 (singletonSeq!2330 separatorToken!241))))

(declare-fun lt!1090938 () Unit!50774)

(assert (=> b!3220913 (= lt!1090938 e!2008237)))

(declare-fun c!541650 () Bool)

(assert (=> b!3220913 (= c!541650 (not (contains!6492 lt!1090930 lt!1090936)))))

(assert (=> b!3220913 (= lt!1090936 (head!7059 lt!1090919))))

(assert (=> b!3220913 (= lt!1090930 (usedCharacters!550 (regex!5234 (rule!7692 separatorToken!241))))))

(assert (=> b!3220913 e!2008244))

(declare-fun res!1311237 () Bool)

(assert (=> b!3220913 (=> (not res!1311237) (not e!2008244))))

(assert (=> b!3220913 (= res!1311237 (isDefined!5571 lt!1090908))))

(assert (=> b!3220913 (= lt!1090908 (getRuleFromTag!939 thiss!18206 rules!2135 (tag!5766 (rule!7692 separatorToken!241))))))

(declare-fun lt!1090907 () Unit!50774)

(assert (=> b!3220913 (= lt!1090907 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!939 thiss!18206 rules!2135 lt!1090919 separatorToken!241))))

(assert (=> b!3220913 (= (maxPrefixOneRule!1602 thiss!18206 (rule!7692 (h!41645 tokens!494)) lt!1090934) (Some!7173 (tuple2!35653 (Token!9835 (apply!8236 (transformation!5234 (rule!7692 (h!41645 tokens!494))) lt!1090900) (rule!7692 (h!41645 tokens!494)) (size!27314 lt!1090934) lt!1090934) Nil!36223)))))

(declare-fun lt!1090939 () Unit!50774)

(assert (=> b!3220913 (= lt!1090939 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!715 thiss!18206 rules!2135 lt!1090934 lt!1090934 Nil!36223 (rule!7692 (h!41645 tokens!494))))))

(assert (=> b!3220913 e!2008242))

(declare-fun res!1311233 () Bool)

(assert (=> b!3220913 (=> (not res!1311233) (not e!2008242))))

(assert (=> b!3220913 (= res!1311233 (isDefined!5571 lt!1090910))))

(assert (=> b!3220913 (= lt!1090910 (getRuleFromTag!939 thiss!18206 rules!2135 (tag!5766 (rule!7692 (h!41645 tokens!494)))))))

(declare-fun lt!1090926 () Unit!50774)

(assert (=> b!3220913 (= lt!1090926 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!939 thiss!18206 rules!2135 lt!1090934 (h!41645 tokens!494)))))

(declare-fun lt!1090931 () Unit!50774)

(assert (=> b!3220913 (= lt!1090931 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!862 thiss!18206 rules!2135 tokens!494 (h!41645 tokens!494)))))

(declare-fun b!3220914 () Bool)

(declare-fun res!1311244 () Bool)

(assert (=> b!3220914 (=> res!1311244 e!2008248)))

(assert (=> b!3220914 (= res!1311244 (not (contains!6493 rules!2135 (rule!7692 (h!41645 (t!240486 tokens!494))))))))

(declare-fun b!3220915 () Bool)

(assert (=> b!3220915 (= e!2008253 (not (isEmpty!20331 (_2!20959 lt!1090913))))))

(declare-fun tp!1014739 () Bool)

(declare-fun b!3220916 () Bool)

(declare-fun e!2008233 () Bool)

(assert (=> b!3220916 (= e!2008233 (and tp!1014739 (inv!49096 (tag!5766 (rule!7692 separatorToken!241))) (inv!49099 (transformation!5234 (rule!7692 separatorToken!241))) e!2008224))))

(declare-fun res!1311238 () Bool)

(assert (=> start!302614 (=> (not res!1311238) (not e!2008230))))

(assert (=> start!302614 (= res!1311238 ((_ is Lexer!4821) thiss!18206))))

(assert (=> start!302614 e!2008230))

(assert (=> start!302614 true))

(assert (=> start!302614 e!2008235))

(assert (=> start!302614 e!2008221))

(declare-fun e!2008249 () Bool)

(assert (=> start!302614 (and (inv!49100 separatorToken!241) e!2008249)))

(declare-fun b!3220917 () Bool)

(assert (=> b!3220917 (= e!2008250 false)))

(declare-fun b!3220918 () Bool)

(declare-fun res!1311247 () Bool)

(assert (=> b!3220918 (=> (not res!1311247) (not e!2008230))))

(assert (=> b!3220918 (= res!1311247 (isSeparator!5234 (rule!7692 separatorToken!241)))))

(declare-fun b!3220919 () Bool)

(declare-fun res!1311250 () Bool)

(assert (=> b!3220919 (=> res!1311250 e!2008259)))

(assert (=> b!3220919 (= res!1311250 (not (isEmpty!20328 (_2!20960 lt!1090918))))))

(declare-fun b!3220920 () Bool)

(declare-fun Unit!50779 () Unit!50774)

(assert (=> b!3220920 (= e!2008237 Unit!50779)))

(declare-fun lt!1090893 () Unit!50774)

(assert (=> b!3220920 (= lt!1090893 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!398 (regex!5234 (rule!7692 separatorToken!241)) lt!1090919 lt!1090936))))

(declare-fun res!1311222 () Bool)

(assert (=> b!3220920 (= res!1311222 (not (matchR!4627 (regex!5234 (rule!7692 separatorToken!241)) lt!1090919)))))

(assert (=> b!3220920 (=> (not res!1311222) (not e!2008223))))

(assert (=> b!3220920 e!2008223))

(declare-fun b!3220921 () Bool)

(assert (=> b!3220921 (= e!2008248 e!2008241)))

(declare-fun res!1311224 () Bool)

(assert (=> b!3220921 (=> res!1311224 e!2008241)))

(declare-fun isDefined!5572 (Option!7174) Bool)

(assert (=> b!3220921 (= res!1311224 (not (isDefined!5572 lt!1090935)))))

(assert (=> b!3220921 (= lt!1090935 (maxPrefix!2465 thiss!18206 rules!2135 lt!1090919))))

(declare-fun b!3220922 () Bool)

(assert (=> b!3220922 (= e!2008258 e!2008220)))

(declare-fun res!1311234 () Bool)

(assert (=> b!3220922 (=> res!1311234 e!2008220)))

(assert (=> b!3220922 (= res!1311234 (not (= lt!1090943 lt!1090897)))))

(assert (=> b!3220922 (= lt!1090897 (++!8708 (++!8708 lt!1090934 lt!1090919) lt!1090906))))

(declare-fun b!3220923 () Bool)

(declare-fun tp!1014738 () Bool)

(assert (=> b!3220923 (= e!2008256 (and tp!1014738 (inv!49096 (tag!5766 (h!41644 rules!2135))) (inv!49099 (transformation!5234 (h!41644 rules!2135))) e!2008247))))

(declare-fun b!3220924 () Bool)

(declare-fun tp!1014732 () Bool)

(declare-fun inv!21 (TokenValue!5464) Bool)

(assert (=> b!3220924 (= e!2008249 (and (inv!21 (value!169629 separatorToken!241)) e!2008233 tp!1014732))))

(declare-fun b!3220925 () Bool)

(declare-fun tp!1014740 () Bool)

(assert (=> b!3220925 (= e!2008232 (and (inv!21 (value!169629 (h!41645 tokens!494))) e!2008227 tp!1014740))))

(assert (= (and start!302614 res!1311238) b!3220900))

(assert (= (and b!3220900 res!1311254) b!3220890))

(assert (= (and b!3220890 res!1311228) b!3220875))

(assert (= (and b!3220875 res!1311232) b!3220892))

(assert (= (and b!3220892 res!1311253) b!3220918))

(assert (= (and b!3220918 res!1311247) b!3220877))

(assert (= (and b!3220877 res!1311257) b!3220888))

(assert (= (and b!3220888 res!1311252) b!3220876))

(assert (= (and b!3220876 res!1311255) b!3220896))

(assert (= (and b!3220896 (not res!1311223)) b!3220911))

(assert (= (and b!3220911 (not res!1311243)) b!3220894))

(assert (= (and b!3220894 (not res!1311226)) b!3220901))

(assert (= (and b!3220901 (not res!1311239)) b!3220903))

(assert (= (and b!3220903 (not res!1311231)) b!3220885))

(assert (= (and b!3220885 (not res!1311245)) b!3220922))

(assert (= (and b!3220922 (not res!1311234)) b!3220904))

(assert (= (and b!3220904 (not res!1311242)) b!3220913))

(assert (= (and b!3220913 res!1311233) b!3220887))

(assert (= (and b!3220887 res!1311225) b!3220891))

(assert (= (and b!3220913 res!1311237) b!3220879))

(assert (= (and b!3220879 res!1311229) b!3220884))

(assert (= (and b!3220913 c!541650) b!3220920))

(assert (= (and b!3220913 (not c!541650)) b!3220908))

(assert (= (and b!3220920 res!1311222) b!3220902))

(assert (= (and b!3220913 res!1311249) b!3220909))

(assert (= (and b!3220909 res!1311241) b!3220905))

(assert (= (and b!3220913 (not res!1311235)) b!3220881))

(assert (= (and b!3220881 (not res!1311227)) b!3220915))

(assert (= (and b!3220913 res!1311230) b!3220897))

(assert (= (and b!3220897 res!1311236) b!3220899))

(assert (= (and b!3220913 c!541651) b!3220880))

(assert (= (and b!3220913 (not c!541651)) b!3220907))

(assert (= (and b!3220880 res!1311246) b!3220917))

(assert (= (and b!3220913 (not res!1311258)) b!3220914))

(assert (= (and b!3220914 (not res!1311244)) b!3220921))

(assert (= (and b!3220921 (not res!1311224)) b!3220883))

(assert (= (and b!3220883 (not res!1311251)) b!3220919))

(assert (= (and b!3220919 (not res!1311250)) b!3220906))

(assert (= (and b!3220906 (not res!1311248)) b!3220889))

(assert (= (and b!3220889 (not res!1311240)) b!3220882))

(assert (= (and b!3220882 (not res!1311256)) b!3220910))

(assert (= b!3220923 b!3220912))

(assert (= b!3220893 b!3220923))

(assert (= (and start!302614 ((_ is Cons!36224) rules!2135)) b!3220893))

(assert (= b!3220886 b!3220898))

(assert (= b!3220925 b!3220886))

(assert (= b!3220895 b!3220925))

(assert (= (and start!302614 ((_ is Cons!36225) tokens!494)) b!3220895))

(assert (= b!3220916 b!3220878))

(assert (= b!3220924 b!3220916))

(assert (= start!302614 b!3220924))

(declare-fun m!3497461 () Bool)

(assert (=> b!3220915 m!3497461))

(declare-fun m!3497463 () Bool)

(assert (=> b!3220875 m!3497463))

(assert (=> b!3220875 m!3497463))

(declare-fun m!3497465 () Bool)

(assert (=> b!3220875 m!3497465))

(declare-fun m!3497467 () Bool)

(assert (=> b!3220922 m!3497467))

(assert (=> b!3220922 m!3497467))

(declare-fun m!3497469 () Bool)

(assert (=> b!3220922 m!3497469))

(declare-fun m!3497471 () Bool)

(assert (=> b!3220910 m!3497471))

(declare-fun m!3497473 () Bool)

(assert (=> b!3220895 m!3497473))

(declare-fun m!3497475 () Bool)

(assert (=> b!3220920 m!3497475))

(declare-fun m!3497477 () Bool)

(assert (=> b!3220920 m!3497477))

(declare-fun m!3497479 () Bool)

(assert (=> b!3220883 m!3497479))

(declare-fun m!3497481 () Bool)

(assert (=> b!3220897 m!3497481))

(declare-fun m!3497483 () Bool)

(assert (=> b!3220897 m!3497483))

(declare-fun m!3497485 () Bool)

(assert (=> b!3220919 m!3497485))

(declare-fun m!3497487 () Bool)

(assert (=> b!3220911 m!3497487))

(assert (=> b!3220911 m!3497487))

(declare-fun m!3497489 () Bool)

(assert (=> b!3220911 m!3497489))

(declare-fun m!3497491 () Bool)

(assert (=> b!3220894 m!3497491))

(declare-fun m!3497493 () Bool)

(assert (=> b!3220916 m!3497493))

(declare-fun m!3497495 () Bool)

(assert (=> b!3220916 m!3497495))

(declare-fun m!3497497 () Bool)

(assert (=> b!3220896 m!3497497))

(declare-fun m!3497499 () Bool)

(assert (=> b!3220896 m!3497499))

(declare-fun m!3497501 () Bool)

(assert (=> b!3220896 m!3497501))

(declare-fun m!3497503 () Bool)

(assert (=> b!3220896 m!3497503))

(declare-fun m!3497505 () Bool)

(assert (=> b!3220896 m!3497505))

(declare-fun m!3497507 () Bool)

(assert (=> b!3220924 m!3497507))

(declare-fun m!3497509 () Bool)

(assert (=> b!3220901 m!3497509))

(declare-fun m!3497511 () Bool)

(assert (=> b!3220901 m!3497511))

(declare-fun m!3497513 () Bool)

(assert (=> b!3220901 m!3497513))

(declare-fun m!3497515 () Bool)

(assert (=> b!3220923 m!3497515))

(declare-fun m!3497517 () Bool)

(assert (=> b!3220923 m!3497517))

(declare-fun m!3497519 () Bool)

(assert (=> b!3220887 m!3497519))

(declare-fun m!3497521 () Bool)

(assert (=> b!3220887 m!3497521))

(declare-fun m!3497523 () Bool)

(assert (=> b!3220889 m!3497523))

(declare-fun m!3497525 () Bool)

(assert (=> b!3220881 m!3497525))

(assert (=> b!3220906 m!3497477))

(declare-fun m!3497527 () Bool)

(assert (=> b!3220906 m!3497527))

(declare-fun m!3497529 () Bool)

(assert (=> b!3220906 m!3497529))

(declare-fun m!3497531 () Bool)

(assert (=> b!3220914 m!3497531))

(declare-fun m!3497533 () Bool)

(assert (=> b!3220903 m!3497533))

(declare-fun m!3497535 () Bool)

(assert (=> b!3220903 m!3497535))

(declare-fun m!3497537 () Bool)

(assert (=> b!3220879 m!3497537))

(declare-fun m!3497539 () Bool)

(assert (=> b!3220879 m!3497539))

(declare-fun m!3497541 () Bool)

(assert (=> b!3220900 m!3497541))

(declare-fun m!3497543 () Bool)

(assert (=> b!3220921 m!3497543))

(declare-fun m!3497545 () Bool)

(assert (=> b!3220921 m!3497545))

(declare-fun m!3497547 () Bool)

(assert (=> b!3220904 m!3497547))

(declare-fun m!3497549 () Bool)

(assert (=> b!3220904 m!3497549))

(declare-fun m!3497551 () Bool)

(assert (=> b!3220885 m!3497551))

(declare-fun m!3497553 () Bool)

(assert (=> b!3220885 m!3497553))

(declare-fun m!3497555 () Bool)

(assert (=> b!3220885 m!3497555))

(declare-fun m!3497557 () Bool)

(assert (=> b!3220885 m!3497557))

(declare-fun m!3497559 () Bool)

(assert (=> b!3220885 m!3497559))

(declare-fun m!3497561 () Bool)

(assert (=> b!3220885 m!3497561))

(declare-fun m!3497563 () Bool)

(assert (=> b!3220885 m!3497563))

(assert (=> b!3220885 m!3497551))

(declare-fun m!3497565 () Bool)

(assert (=> b!3220885 m!3497565))

(assert (=> b!3220885 m!3497557))

(assert (=> b!3220885 m!3497553))

(declare-fun m!3497567 () Bool)

(assert (=> b!3220885 m!3497567))

(declare-fun m!3497569 () Bool)

(assert (=> b!3220885 m!3497569))

(assert (=> b!3220885 m!3497555))

(declare-fun m!3497571 () Bool)

(assert (=> b!3220890 m!3497571))

(declare-fun m!3497573 () Bool)

(assert (=> b!3220913 m!3497573))

(declare-fun m!3497575 () Bool)

(assert (=> b!3220913 m!3497575))

(declare-fun m!3497577 () Bool)

(assert (=> b!3220913 m!3497577))

(declare-fun m!3497579 () Bool)

(assert (=> b!3220913 m!3497579))

(declare-fun m!3497581 () Bool)

(assert (=> b!3220913 m!3497581))

(declare-fun m!3497583 () Bool)

(assert (=> b!3220913 m!3497583))

(declare-fun m!3497585 () Bool)

(assert (=> b!3220913 m!3497585))

(declare-fun m!3497587 () Bool)

(assert (=> b!3220913 m!3497587))

(declare-fun m!3497589 () Bool)

(assert (=> b!3220913 m!3497589))

(declare-fun m!3497591 () Bool)

(assert (=> b!3220913 m!3497591))

(declare-fun m!3497593 () Bool)

(assert (=> b!3220913 m!3497593))

(declare-fun m!3497595 () Bool)

(assert (=> b!3220913 m!3497595))

(declare-fun m!3497597 () Bool)

(assert (=> b!3220913 m!3497597))

(declare-fun m!3497599 () Bool)

(assert (=> b!3220913 m!3497599))

(declare-fun m!3497601 () Bool)

(assert (=> b!3220913 m!3497601))

(declare-fun m!3497603 () Bool)

(assert (=> b!3220913 m!3497603))

(declare-fun m!3497605 () Bool)

(assert (=> b!3220913 m!3497605))

(declare-fun m!3497607 () Bool)

(assert (=> b!3220913 m!3497607))

(declare-fun m!3497609 () Bool)

(assert (=> b!3220913 m!3497609))

(declare-fun m!3497611 () Bool)

(assert (=> b!3220913 m!3497611))

(declare-fun m!3497613 () Bool)

(assert (=> b!3220913 m!3497613))

(declare-fun m!3497615 () Bool)

(assert (=> b!3220913 m!3497615))

(declare-fun m!3497617 () Bool)

(assert (=> b!3220913 m!3497617))

(declare-fun m!3497619 () Bool)

(assert (=> b!3220913 m!3497619))

(declare-fun m!3497621 () Bool)

(assert (=> b!3220913 m!3497621))

(declare-fun m!3497623 () Bool)

(assert (=> b!3220913 m!3497623))

(declare-fun m!3497625 () Bool)

(assert (=> b!3220913 m!3497625))

(declare-fun m!3497627 () Bool)

(assert (=> b!3220913 m!3497627))

(declare-fun m!3497629 () Bool)

(assert (=> b!3220913 m!3497629))

(declare-fun m!3497631 () Bool)

(assert (=> b!3220913 m!3497631))

(declare-fun m!3497633 () Bool)

(assert (=> b!3220913 m!3497633))

(declare-fun m!3497635 () Bool)

(assert (=> b!3220913 m!3497635))

(declare-fun m!3497637 () Bool)

(assert (=> b!3220913 m!3497637))

(declare-fun m!3497639 () Bool)

(assert (=> b!3220913 m!3497639))

(declare-fun m!3497641 () Bool)

(assert (=> b!3220913 m!3497641))

(declare-fun m!3497643 () Bool)

(assert (=> b!3220913 m!3497643))

(declare-fun m!3497645 () Bool)

(assert (=> b!3220913 m!3497645))

(declare-fun m!3497647 () Bool)

(assert (=> b!3220913 m!3497647))

(declare-fun m!3497649 () Bool)

(assert (=> b!3220913 m!3497649))

(declare-fun m!3497651 () Bool)

(assert (=> b!3220913 m!3497651))

(declare-fun m!3497653 () Bool)

(assert (=> b!3220913 m!3497653))

(assert (=> b!3220913 m!3497595))

(declare-fun m!3497655 () Bool)

(assert (=> b!3220913 m!3497655))

(assert (=> b!3220913 m!3497591))

(declare-fun m!3497657 () Bool)

(assert (=> b!3220913 m!3497657))

(declare-fun m!3497659 () Bool)

(assert (=> b!3220913 m!3497659))

(declare-fun m!3497661 () Bool)

(assert (=> b!3220913 m!3497661))

(declare-fun m!3497663 () Bool)

(assert (=> b!3220913 m!3497663))

(declare-fun m!3497665 () Bool)

(assert (=> b!3220886 m!3497665))

(declare-fun m!3497667 () Bool)

(assert (=> b!3220886 m!3497667))

(declare-fun m!3497669 () Bool)

(assert (=> b!3220905 m!3497669))

(declare-fun m!3497671 () Bool)

(assert (=> b!3220892 m!3497671))

(declare-fun m!3497673 () Bool)

(assert (=> b!3220925 m!3497673))

(declare-fun m!3497675 () Bool)

(assert (=> b!3220880 m!3497675))

(declare-fun m!3497677 () Bool)

(assert (=> b!3220880 m!3497677))

(declare-fun m!3497679 () Bool)

(assert (=> start!302614 m!3497679))

(declare-fun m!3497681 () Bool)

(assert (=> b!3220909 m!3497681))

(declare-fun m!3497683 () Bool)

(assert (=> b!3220882 m!3497683))

(declare-fun m!3497685 () Bool)

(assert (=> b!3220882 m!3497685))

(declare-fun m!3497687 () Bool)

(assert (=> b!3220877 m!3497687))

(declare-fun m!3497689 () Bool)

(assert (=> b!3220888 m!3497689))

(check-sat (not b!3220886) (not b!3220885) (not b!3220896) (not b!3220916) (not b!3220894) (not b!3220893) (not b_next!86323) (not b_next!86327) (not b!3220922) (not b!3220924) (not b!3220880) (not b!3220897) b_and!215319 (not b!3220890) (not b!3220883) (not b_next!86325) (not b!3220934) (not b!3220889) (not b!3220920) (not b!3220919) (not b!3220900) (not b!3220875) b_and!215327 (not b_next!86331) (not b!3220892) (not b!3220887) (not b!3220903) b_and!215325 (not b!3220906) (not b!3220913) (not b!3220910) (not b!3220904) (not b!3220914) (not b!3220877) (not b_next!86329) (not b!3220881) (not b!3220879) b_and!215321 (not b!3220925) b_and!215323 (not b!3220911) b_and!215329 (not b_next!86321) (not b!3220921) (not b!3220923) (not b!3220915) (not b!3220905) (not b!3220901) (not start!302614) (not b!3220895) (not b!3220882) (not b!3220909) (not b!3220888))
(check-sat (not b_next!86327) b_and!215319 (not b_next!86325) b_and!215327 (not b_next!86331) b_and!215325 (not b_next!86329) (not b_next!86321) (not b_next!86323) b_and!215321 b_and!215323 b_and!215329)
