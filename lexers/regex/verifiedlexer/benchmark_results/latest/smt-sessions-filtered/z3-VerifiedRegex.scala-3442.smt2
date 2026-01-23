; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197312 () Bool)

(assert start!197312)

(declare-fun b!2007921 () Bool)

(declare-fun b_free!55985 () Bool)

(declare-fun b_next!56689 () Bool)

(assert (=> b!2007921 (= b_free!55985 (not b_next!56689))))

(declare-fun tp!599134 () Bool)

(declare-fun b_and!158473 () Bool)

(assert (=> b!2007921 (= tp!599134 b_and!158473)))

(declare-fun b_free!55987 () Bool)

(declare-fun b_next!56691 () Bool)

(assert (=> b!2007921 (= b_free!55987 (not b_next!56691))))

(declare-fun tp!599139 () Bool)

(declare-fun b_and!158475 () Bool)

(assert (=> b!2007921 (= tp!599139 b_and!158475)))

(declare-fun b!2007923 () Bool)

(declare-fun b_free!55989 () Bool)

(declare-fun b_next!56693 () Bool)

(assert (=> b!2007923 (= b_free!55989 (not b_next!56693))))

(declare-fun tp!599130 () Bool)

(declare-fun b_and!158477 () Bool)

(assert (=> b!2007923 (= tp!599130 b_and!158477)))

(declare-fun b_free!55991 () Bool)

(declare-fun b_next!56695 () Bool)

(assert (=> b!2007923 (= b_free!55991 (not b_next!56695))))

(declare-fun tp!599138 () Bool)

(declare-fun b_and!158479 () Bool)

(assert (=> b!2007923 (= tp!599138 b_and!158479)))

(declare-fun b!2007925 () Bool)

(declare-fun b_free!55993 () Bool)

(declare-fun b_next!56697 () Bool)

(assert (=> b!2007925 (= b_free!55993 (not b_next!56697))))

(declare-fun tp!599140 () Bool)

(declare-fun b_and!158481 () Bool)

(assert (=> b!2007925 (= tp!599140 b_and!158481)))

(declare-fun b_free!55995 () Bool)

(declare-fun b_next!56699 () Bool)

(assert (=> b!2007925 (= b_free!55995 (not b_next!56699))))

(declare-fun tp!599133 () Bool)

(declare-fun b_and!158483 () Bool)

(assert (=> b!2007925 (= tp!599133 b_and!158483)))

(declare-fun e!1268715 () Bool)

(declare-fun b!2007908 () Bool)

(declare-fun e!1268704 () Bool)

(declare-fun tp!599131 () Bool)

(declare-datatypes ((List!22142 0))(
  ( (Nil!22060) (Cons!22060 (h!27461 (_ BitVec 16)) (t!187319 List!22142)) )
))
(declare-datatypes ((TokenValue!4096 0))(
  ( (FloatLiteralValue!8192 (text!29117 List!22142)) (TokenValueExt!4095 (__x!13690 Int)) (Broken!20480 (value!124425 List!22142)) (Object!4177) (End!4096) (Def!4096) (Underscore!4096) (Match!4096) (Else!4096) (Error!4096) (Case!4096) (If!4096) (Extends!4096) (Abstract!4096) (Class!4096) (Val!4096) (DelimiterValue!8192 (del!4156 List!22142)) (KeywordValue!4102 (value!124426 List!22142)) (CommentValue!8192 (value!124427 List!22142)) (WhitespaceValue!8192 (value!124428 List!22142)) (IndentationValue!4096 (value!124429 List!22142)) (String!25597) (Int32!4096) (Broken!20481 (value!124430 List!22142)) (Boolean!4097) (Unit!36619) (OperatorValue!4099 (op!4156 List!22142)) (IdentifierValue!8192 (value!124431 List!22142)) (IdentifierValue!8193 (value!124432 List!22142)) (WhitespaceValue!8193 (value!124433 List!22142)) (True!8192) (False!8192) (Broken!20482 (value!124434 List!22142)) (Broken!20483 (value!124435 List!22142)) (True!8193) (RightBrace!4096) (RightBracket!4096) (Colon!4096) (Null!4096) (Comma!4096) (LeftBracket!4096) (False!8193) (LeftBrace!4096) (ImaginaryLiteralValue!4096 (text!29118 List!22142)) (StringLiteralValue!12288 (value!124436 List!22142)) (EOFValue!4096 (value!124437 List!22142)) (IdentValue!4096 (value!124438 List!22142)) (DelimiterValue!8193 (value!124439 List!22142)) (DedentValue!4096 (value!124440 List!22142)) (NewLineValue!4096 (value!124441 List!22142)) (IntegerValue!12288 (value!124442 (_ BitVec 32)) (text!29119 List!22142)) (IntegerValue!12289 (value!124443 Int) (text!29120 List!22142)) (Times!4096) (Or!4096) (Equal!4096) (Minus!4096) (Broken!20484 (value!124444 List!22142)) (And!4096) (Div!4096) (LessEqual!4096) (Mod!4096) (Concat!9481) (Not!4096) (Plus!4096) (SpaceValue!4096 (value!124445 List!22142)) (IntegerValue!12290 (value!124446 Int) (text!29121 List!22142)) (StringLiteralValue!12289 (text!29122 List!22142)) (FloatLiteralValue!8193 (text!29123 List!22142)) (BytesLiteralValue!4096 (value!124447 List!22142)) (CommentValue!8193 (value!124448 List!22142)) (StringLiteralValue!12290 (value!124449 List!22142)) (ErrorTokenValue!4096 (msg!4157 List!22142)) )
))
(declare-datatypes ((C!10916 0))(
  ( (C!10917 (val!6410 Int)) )
))
(declare-datatypes ((List!22143 0))(
  ( (Nil!22061) (Cons!22061 (h!27462 C!10916) (t!187320 List!22143)) )
))
(declare-datatypes ((Regex!5385 0))(
  ( (ElementMatch!5385 (c!324301 C!10916)) (Concat!9482 (regOne!11282 Regex!5385) (regTwo!11282 Regex!5385)) (EmptyExpr!5385) (Star!5385 (reg!5714 Regex!5385)) (EmptyLang!5385) (Union!5385 (regOne!11283 Regex!5385) (regTwo!11283 Regex!5385)) )
))
(declare-datatypes ((String!25598 0))(
  ( (String!25599 (value!124450 String)) )
))
(declare-datatypes ((IArray!14747 0))(
  ( (IArray!14748 (innerList!7431 List!22143)) )
))
(declare-datatypes ((Conc!7371 0))(
  ( (Node!7371 (left!17553 Conc!7371) (right!17883 Conc!7371) (csize!14972 Int) (cheight!7582 Int)) (Leaf!10814 (xs!10269 IArray!14747) (csize!14973 Int)) (Empty!7371) )
))
(declare-datatypes ((BalanceConc!14558 0))(
  ( (BalanceConc!14559 (c!324302 Conc!7371)) )
))
(declare-datatypes ((TokenValueInjection!7776 0))(
  ( (TokenValueInjection!7777 (toValue!5625 Int) (toChars!5484 Int)) )
))
(declare-datatypes ((Rule!7720 0))(
  ( (Rule!7721 (regex!3960 Regex!5385) (tag!4424 String!25598) (isSeparator!3960 Bool) (transformation!3960 TokenValueInjection!7776)) )
))
(declare-datatypes ((Token!7472 0))(
  ( (Token!7473 (value!124451 TokenValue!4096) (rule!6185 Rule!7720) (size!17246 Int) (originalCharacters!4767 List!22143)) )
))
(declare-datatypes ((List!22144 0))(
  ( (Nil!22062) (Cons!22062 (h!27463 Token!7472) (t!187321 List!22144)) )
))
(declare-fun tokens!598 () List!22144)

(declare-fun inv!29216 (String!25598) Bool)

(declare-fun inv!29219 (TokenValueInjection!7776) Bool)

(assert (=> b!2007908 (= e!1268715 (and tp!599131 (inv!29216 (tag!4424 (rule!6185 (h!27463 tokens!598)))) (inv!29219 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) e!1268704))))

(declare-fun b!2007909 () Bool)

(declare-fun e!1268718 () Bool)

(declare-fun e!1268722 () Bool)

(assert (=> b!2007909 (= e!1268718 e!1268722)))

(declare-fun res!880621 () Bool)

(assert (=> b!2007909 (=> (not res!880621) (not e!1268722))))

(declare-fun lt!754033 () Rule!7720)

(declare-fun lt!754035 () List!22143)

(declare-fun matchR!2651 (Regex!5385 List!22143) Bool)

(assert (=> b!2007909 (= res!880621 (matchR!2651 (regex!3960 lt!754033) lt!754035))))

(declare-datatypes ((Option!4601 0))(
  ( (None!4600) (Some!4600 (v!26837 Rule!7720)) )
))
(declare-fun lt!754029 () Option!4601)

(declare-fun get!6972 (Option!4601) Rule!7720)

(assert (=> b!2007909 (= lt!754033 (get!6972 lt!754029))))

(declare-fun b!2007910 () Bool)

(declare-fun e!1268724 () Bool)

(declare-fun e!1268725 () Bool)

(declare-fun tp!599136 () Bool)

(assert (=> b!2007910 (= e!1268724 (and e!1268725 tp!599136))))

(declare-fun b!2007911 () Bool)

(declare-fun res!880608 () Bool)

(declare-fun e!1268721 () Bool)

(assert (=> b!2007911 (=> res!880608 e!1268721)))

(declare-fun separatorToken!354 () Token!7472)

(declare-fun validRegex!2157 (Regex!5385) Bool)

(assert (=> b!2007911 (= res!880608 (not (validRegex!2157 (regex!3960 (rule!6185 separatorToken!354)))))))

(declare-fun b!2007912 () Bool)

(declare-fun res!880622 () Bool)

(declare-fun e!1268717 () Bool)

(assert (=> b!2007912 (=> (not res!880622) (not e!1268717))))

(declare-datatypes ((List!22145 0))(
  ( (Nil!22063) (Cons!22063 (h!27464 Rule!7720) (t!187322 List!22145)) )
))
(declare-fun rules!3198 () List!22145)

(declare-fun sepAndNonSepRulesDisjointChars!1058 (List!22145 List!22145) Bool)

(assert (=> b!2007912 (= res!880622 (sepAndNonSepRulesDisjointChars!1058 rules!3198 rules!3198))))

(declare-fun res!880613 () Bool)

(assert (=> start!197312 (=> (not res!880613) (not e!1268717))))

(declare-datatypes ((LexerInterface!3573 0))(
  ( (LexerInterfaceExt!3570 (__x!13691 Int)) (Lexer!3571) )
))
(declare-fun thiss!23328 () LexerInterface!3573)

(get-info :version)

(assert (=> start!197312 (= res!880613 ((_ is Lexer!3571) thiss!23328))))

(assert (=> start!197312 e!1268717))

(assert (=> start!197312 true))

(assert (=> start!197312 e!1268724))

(declare-fun e!1268710 () Bool)

(assert (=> start!197312 e!1268710))

(declare-fun e!1268711 () Bool)

(declare-fun inv!29220 (Token!7472) Bool)

(assert (=> start!197312 (and (inv!29220 separatorToken!354) e!1268711)))

(declare-fun b!2007913 () Bool)

(declare-fun tp!599132 () Bool)

(declare-fun e!1268707 () Bool)

(assert (=> b!2007913 (= e!1268725 (and tp!599132 (inv!29216 (tag!4424 (h!27464 rules!3198))) (inv!29219 (transformation!3960 (h!27464 rules!3198))) e!1268707))))

(declare-fun b!2007914 () Bool)

(declare-fun lt!754030 () List!22143)

(declare-fun lt!754022 () C!10916)

(declare-fun contains!4030 (List!22143 C!10916) Bool)

(assert (=> b!2007914 (= e!1268721 (contains!4030 lt!754030 lt!754022))))

(declare-fun b!2007915 () Bool)

(declare-fun e!1268720 () Bool)

(assert (=> b!2007915 (= e!1268717 (not e!1268720))))

(declare-fun res!880609 () Bool)

(assert (=> b!2007915 (=> res!880609 e!1268720)))

(declare-fun lt!754024 () Bool)

(declare-datatypes ((tuple2!20730 0))(
  ( (tuple2!20731 (_1!11834 Token!7472) (_2!11834 List!22143)) )
))
(declare-datatypes ((Option!4602 0))(
  ( (None!4601) (Some!4601 (v!26838 tuple2!20730)) )
))
(declare-fun lt!754025 () Option!4602)

(assert (=> b!2007915 (= res!880609 (or (and (not lt!754024) (= (_1!11834 (v!26838 lt!754025)) (h!27463 tokens!598))) lt!754024 (= (_1!11834 (v!26838 lt!754025)) (h!27463 tokens!598))))))

(assert (=> b!2007915 (= lt!754024 (not ((_ is Some!4601) lt!754025)))))

(declare-fun lt!754023 () List!22143)

(declare-fun maxPrefix!2009 (LexerInterface!3573 List!22145 List!22143) Option!4602)

(declare-fun ++!5953 (List!22143 List!22143) List!22143)

(assert (=> b!2007915 (= lt!754025 (maxPrefix!2009 thiss!23328 rules!3198 (++!5953 lt!754035 lt!754023)))))

(declare-fun printWithSeparatorTokenWhenNeededList!602 (LexerInterface!3573 List!22145 List!22144 Token!7472) List!22143)

(assert (=> b!2007915 (= lt!754023 (printWithSeparatorTokenWhenNeededList!602 thiss!23328 rules!3198 (t!187321 tokens!598) separatorToken!354))))

(assert (=> b!2007915 e!1268718))

(declare-fun res!880614 () Bool)

(assert (=> b!2007915 (=> (not res!880614) (not e!1268718))))

(declare-fun isDefined!3889 (Option!4601) Bool)

(assert (=> b!2007915 (= res!880614 (isDefined!3889 lt!754029))))

(declare-fun getRuleFromTag!775 (LexerInterface!3573 List!22145 String!25598) Option!4601)

(assert (=> b!2007915 (= lt!754029 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))))

(declare-datatypes ((Unit!36620 0))(
  ( (Unit!36621) )
))
(declare-fun lt!754034 () Unit!36620)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!775 (LexerInterface!3573 List!22145 List!22143 Token!7472) Unit!36620)

(assert (=> b!2007915 (= lt!754034 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!775 thiss!23328 rules!3198 lt!754035 (h!27463 tokens!598)))))

(declare-fun e!1268708 () Bool)

(assert (=> b!2007915 e!1268708))

(declare-fun res!880623 () Bool)

(assert (=> b!2007915 (=> (not res!880623) (not e!1268708))))

(declare-fun lt!754032 () Option!4602)

(declare-fun isDefined!3890 (Option!4602) Bool)

(assert (=> b!2007915 (= res!880623 (isDefined!3890 lt!754032))))

(assert (=> b!2007915 (= lt!754032 (maxPrefix!2009 thiss!23328 rules!3198 lt!754035))))

(declare-fun lt!754026 () BalanceConc!14558)

(declare-fun list!8981 (BalanceConc!14558) List!22143)

(assert (=> b!2007915 (= lt!754035 (list!8981 lt!754026))))

(declare-fun e!1268713 () Bool)

(assert (=> b!2007915 e!1268713))

(declare-fun res!880620 () Bool)

(assert (=> b!2007915 (=> (not res!880620) (not e!1268713))))

(declare-fun lt!754031 () Option!4601)

(assert (=> b!2007915 (= res!880620 (isDefined!3889 lt!754031))))

(assert (=> b!2007915 (= lt!754031 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))))

(declare-fun lt!754037 () Unit!36620)

(assert (=> b!2007915 (= lt!754037 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!775 thiss!23328 rules!3198 lt!754030 separatorToken!354))))

(declare-fun charsOf!2500 (Token!7472) BalanceConc!14558)

(assert (=> b!2007915 (= lt!754030 (list!8981 (charsOf!2500 separatorToken!354)))))

(declare-fun lt!754027 () Unit!36620)

(declare-fun lemmaEqSameImage!646 (TokenValueInjection!7776 BalanceConc!14558 BalanceConc!14558) Unit!36620)

(declare-fun seqFromList!2814 (List!22143) BalanceConc!14558)

(assert (=> b!2007915 (= lt!754027 (lemmaEqSameImage!646 (transformation!3960 (rule!6185 (h!27463 tokens!598))) lt!754026 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))))))

(declare-fun lt!754038 () Unit!36620)

(declare-fun lemmaSemiInverse!917 (TokenValueInjection!7776 BalanceConc!14558) Unit!36620)

(assert (=> b!2007915 (= lt!754038 (lemmaSemiInverse!917 (transformation!3960 (rule!6185 (h!27463 tokens!598))) lt!754026))))

(assert (=> b!2007915 (= lt!754026 (charsOf!2500 (h!27463 tokens!598)))))

(declare-fun e!1268712 () Bool)

(declare-fun tp!599135 () Bool)

(declare-fun b!2007916 () Bool)

(assert (=> b!2007916 (= e!1268710 (and (inv!29220 (h!27463 tokens!598)) e!1268712 tp!599135))))

(declare-fun b!2007917 () Bool)

(declare-fun res!880618 () Bool)

(assert (=> b!2007917 (=> (not res!880618) (not e!1268717))))

(declare-fun isEmpty!13680 (List!22145) Bool)

(assert (=> b!2007917 (= res!880618 (not (isEmpty!13680 rules!3198)))))

(declare-fun b!2007918 () Bool)

(declare-fun res!880612 () Bool)

(assert (=> b!2007918 (=> (not res!880612) (not e!1268717))))

(assert (=> b!2007918 (= res!880612 ((_ is Cons!22062) tokens!598))))

(declare-fun b!2007919 () Bool)

(declare-fun get!6973 (Option!4602) tuple2!20730)

(assert (=> b!2007919 (= e!1268708 (= (_1!11834 (get!6973 lt!754032)) (h!27463 tokens!598)))))

(declare-fun b!2007920 () Bool)

(declare-fun res!880619 () Bool)

(assert (=> b!2007920 (=> (not res!880619) (not e!1268717))))

(declare-fun lambda!76021 () Int)

(declare-fun forall!4686 (List!22144 Int) Bool)

(assert (=> b!2007920 (= res!880619 (forall!4686 tokens!598 lambda!76021))))

(declare-fun e!1268706 () Bool)

(assert (=> b!2007921 (= e!1268706 (and tp!599134 tp!599139))))

(declare-fun b!2007922 () Bool)

(declare-fun e!1268726 () Bool)

(declare-fun lt!754036 () Rule!7720)

(assert (=> b!2007922 (= e!1268726 (= (rule!6185 separatorToken!354) lt!754036))))

(assert (=> b!2007923 (= e!1268707 (and tp!599130 tp!599138))))

(declare-fun b!2007924 () Bool)

(declare-fun tp!599141 () Bool)

(declare-fun e!1268723 () Bool)

(declare-fun inv!21 (TokenValue!4096) Bool)

(assert (=> b!2007924 (= e!1268711 (and (inv!21 (value!124451 separatorToken!354)) e!1268723 tp!599141))))

(assert (=> b!2007925 (= e!1268704 (and tp!599140 tp!599133))))

(declare-fun b!2007926 () Bool)

(assert (=> b!2007926 (= e!1268713 e!1268726)))

(declare-fun res!880607 () Bool)

(assert (=> b!2007926 (=> (not res!880607) (not e!1268726))))

(assert (=> b!2007926 (= res!880607 (matchR!2651 (regex!3960 lt!754036) lt!754030))))

(assert (=> b!2007926 (= lt!754036 (get!6972 lt!754031))))

(declare-fun b!2007927 () Bool)

(declare-fun res!880611 () Bool)

(assert (=> b!2007927 (=> (not res!880611) (not e!1268717))))

(declare-fun rulesProduceEachTokenIndividuallyList!1304 (LexerInterface!3573 List!22145 List!22144) Bool)

(assert (=> b!2007927 (= res!880611 (rulesProduceEachTokenIndividuallyList!1304 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2007928 () Bool)

(assert (=> b!2007928 (= e!1268722 (= (rule!6185 (h!27463 tokens!598)) lt!754033))))

(declare-fun b!2007929 () Bool)

(declare-fun tp!599142 () Bool)

(assert (=> b!2007929 (= e!1268723 (and tp!599142 (inv!29216 (tag!4424 (rule!6185 separatorToken!354))) (inv!29219 (transformation!3960 (rule!6185 separatorToken!354))) e!1268706))))

(declare-fun b!2007930 () Bool)

(assert (=> b!2007930 (= e!1268720 e!1268721)))

(declare-fun res!880617 () Bool)

(assert (=> b!2007930 (=> res!880617 e!1268721)))

(declare-fun usedCharacters!398 (Regex!5385) List!22143)

(assert (=> b!2007930 (= res!880617 (contains!4030 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354))) lt!754022))))

(declare-fun head!4536 (List!22143) C!10916)

(assert (=> b!2007930 (= lt!754022 (head!4536 lt!754030))))

(assert (=> b!2007930 (= (++!5953 (++!5953 lt!754035 lt!754030) lt!754023) (++!5953 lt!754035 (++!5953 lt!754030 lt!754023)))))

(declare-fun lt!754028 () Unit!36620)

(declare-fun lemmaConcatAssociativity!1223 (List!22143 List!22143 List!22143) Unit!36620)

(assert (=> b!2007930 (= lt!754028 (lemmaConcatAssociativity!1223 lt!754035 lt!754030 lt!754023))))

(declare-fun b!2007931 () Bool)

(declare-fun res!880615 () Bool)

(assert (=> b!2007931 (=> (not res!880615) (not e!1268717))))

(declare-fun rulesInvariant!3180 (LexerInterface!3573 List!22145) Bool)

(assert (=> b!2007931 (= res!880615 (rulesInvariant!3180 thiss!23328 rules!3198))))

(declare-fun b!2007932 () Bool)

(declare-fun tp!599137 () Bool)

(assert (=> b!2007932 (= e!1268712 (and (inv!21 (value!124451 (h!27463 tokens!598))) e!1268715 tp!599137))))

(declare-fun b!2007933 () Bool)

(declare-fun res!880616 () Bool)

(assert (=> b!2007933 (=> (not res!880616) (not e!1268717))))

(assert (=> b!2007933 (= res!880616 (isSeparator!3960 (rule!6185 separatorToken!354)))))

(declare-fun b!2007934 () Bool)

(declare-fun res!880610 () Bool)

(assert (=> b!2007934 (=> (not res!880610) (not e!1268717))))

(declare-fun rulesProduceIndividualToken!1745 (LexerInterface!3573 List!22145 Token!7472) Bool)

(assert (=> b!2007934 (= res!880610 (rulesProduceIndividualToken!1745 thiss!23328 rules!3198 separatorToken!354))))

(assert (= (and start!197312 res!880613) b!2007917))

(assert (= (and b!2007917 res!880618) b!2007931))

(assert (= (and b!2007931 res!880615) b!2007927))

(assert (= (and b!2007927 res!880611) b!2007934))

(assert (= (and b!2007934 res!880610) b!2007933))

(assert (= (and b!2007933 res!880616) b!2007920))

(assert (= (and b!2007920 res!880619) b!2007912))

(assert (= (and b!2007912 res!880622) b!2007918))

(assert (= (and b!2007918 res!880612) b!2007915))

(assert (= (and b!2007915 res!880620) b!2007926))

(assert (= (and b!2007926 res!880607) b!2007922))

(assert (= (and b!2007915 res!880623) b!2007919))

(assert (= (and b!2007915 res!880614) b!2007909))

(assert (= (and b!2007909 res!880621) b!2007928))

(assert (= (and b!2007915 (not res!880609)) b!2007930))

(assert (= (and b!2007930 (not res!880617)) b!2007911))

(assert (= (and b!2007911 (not res!880608)) b!2007914))

(assert (= b!2007913 b!2007923))

(assert (= b!2007910 b!2007913))

(assert (= (and start!197312 ((_ is Cons!22063) rules!3198)) b!2007910))

(assert (= b!2007908 b!2007925))

(assert (= b!2007932 b!2007908))

(assert (= b!2007916 b!2007932))

(assert (= (and start!197312 ((_ is Cons!22062) tokens!598)) b!2007916))

(assert (= b!2007929 b!2007921))

(assert (= b!2007924 b!2007929))

(assert (= start!197312 b!2007924))

(declare-fun m!2439981 () Bool)

(assert (=> start!197312 m!2439981))

(declare-fun m!2439983 () Bool)

(assert (=> b!2007931 m!2439983))

(declare-fun m!2439985 () Bool)

(assert (=> b!2007929 m!2439985))

(declare-fun m!2439987 () Bool)

(assert (=> b!2007929 m!2439987))

(declare-fun m!2439989 () Bool)

(assert (=> b!2007909 m!2439989))

(declare-fun m!2439991 () Bool)

(assert (=> b!2007909 m!2439991))

(declare-fun m!2439993 () Bool)

(assert (=> b!2007932 m!2439993))

(declare-fun m!2439995 () Bool)

(assert (=> b!2007911 m!2439995))

(declare-fun m!2439997 () Bool)

(assert (=> b!2007908 m!2439997))

(declare-fun m!2439999 () Bool)

(assert (=> b!2007908 m!2439999))

(declare-fun m!2440001 () Bool)

(assert (=> b!2007912 m!2440001))

(declare-fun m!2440003 () Bool)

(assert (=> b!2007934 m!2440003))

(declare-fun m!2440005 () Bool)

(assert (=> b!2007915 m!2440005))

(declare-fun m!2440007 () Bool)

(assert (=> b!2007915 m!2440007))

(assert (=> b!2007915 m!2440005))

(declare-fun m!2440009 () Bool)

(assert (=> b!2007915 m!2440009))

(declare-fun m!2440011 () Bool)

(assert (=> b!2007915 m!2440011))

(declare-fun m!2440013 () Bool)

(assert (=> b!2007915 m!2440013))

(declare-fun m!2440015 () Bool)

(assert (=> b!2007915 m!2440015))

(declare-fun m!2440017 () Bool)

(assert (=> b!2007915 m!2440017))

(declare-fun m!2440019 () Bool)

(assert (=> b!2007915 m!2440019))

(declare-fun m!2440021 () Bool)

(assert (=> b!2007915 m!2440021))

(declare-fun m!2440023 () Bool)

(assert (=> b!2007915 m!2440023))

(declare-fun m!2440025 () Bool)

(assert (=> b!2007915 m!2440025))

(declare-fun m!2440027 () Bool)

(assert (=> b!2007915 m!2440027))

(declare-fun m!2440029 () Bool)

(assert (=> b!2007915 m!2440029))

(declare-fun m!2440031 () Bool)

(assert (=> b!2007915 m!2440031))

(declare-fun m!2440033 () Bool)

(assert (=> b!2007915 m!2440033))

(declare-fun m!2440035 () Bool)

(assert (=> b!2007915 m!2440035))

(declare-fun m!2440037 () Bool)

(assert (=> b!2007915 m!2440037))

(declare-fun m!2440039 () Bool)

(assert (=> b!2007915 m!2440039))

(assert (=> b!2007915 m!2440029))

(assert (=> b!2007915 m!2440037))

(declare-fun m!2440041 () Bool)

(assert (=> b!2007914 m!2440041))

(declare-fun m!2440043 () Bool)

(assert (=> b!2007927 m!2440043))

(declare-fun m!2440045 () Bool)

(assert (=> b!2007913 m!2440045))

(declare-fun m!2440047 () Bool)

(assert (=> b!2007913 m!2440047))

(declare-fun m!2440049 () Bool)

(assert (=> b!2007926 m!2440049))

(declare-fun m!2440051 () Bool)

(assert (=> b!2007926 m!2440051))

(declare-fun m!2440053 () Bool)

(assert (=> b!2007920 m!2440053))

(declare-fun m!2440055 () Bool)

(assert (=> b!2007930 m!2440055))

(declare-fun m!2440057 () Bool)

(assert (=> b!2007930 m!2440057))

(declare-fun m!2440059 () Bool)

(assert (=> b!2007930 m!2440059))

(declare-fun m!2440061 () Bool)

(assert (=> b!2007930 m!2440061))

(declare-fun m!2440063 () Bool)

(assert (=> b!2007930 m!2440063))

(assert (=> b!2007930 m!2440059))

(declare-fun m!2440065 () Bool)

(assert (=> b!2007930 m!2440065))

(assert (=> b!2007930 m!2440055))

(declare-fun m!2440067 () Bool)

(assert (=> b!2007930 m!2440067))

(assert (=> b!2007930 m!2440065))

(declare-fun m!2440069 () Bool)

(assert (=> b!2007930 m!2440069))

(declare-fun m!2440071 () Bool)

(assert (=> b!2007917 m!2440071))

(declare-fun m!2440073 () Bool)

(assert (=> b!2007924 m!2440073))

(declare-fun m!2440075 () Bool)

(assert (=> b!2007919 m!2440075))

(declare-fun m!2440077 () Bool)

(assert (=> b!2007916 m!2440077))

(check-sat (not b_next!56693) (not b!2007932) (not b!2007908) (not b!2007919) b_and!158473 (not b!2007914) (not b!2007909) (not b_next!56697) b_and!158481 (not b!2007911) b_and!158477 (not b_next!56695) (not b!2007912) (not start!197312) (not b!2007934) (not b!2007917) (not b_next!56699) b_and!158483 (not b!2007920) (not b!2007916) (not b!2007924) (not b!2007930) b_and!158479 (not b!2007926) (not b_next!56691) (not b!2007915) (not b!2007910) (not b!2007929) (not b_next!56689) (not b!2007913) (not b!2007931) b_and!158475 (not b!2007927))
(check-sat (not b_next!56699) b_and!158483 (not b_next!56693) b_and!158479 (not b_next!56691) (not b_next!56689) b_and!158473 (not b_next!56697) b_and!158481 b_and!158477 (not b_next!56695) b_and!158475)
(get-model)

(declare-fun d!613069 () Bool)

(declare-fun e!1268729 () Bool)

(assert (=> d!613069 e!1268729))

(declare-fun res!880638 () Bool)

(assert (=> d!613069 (=> (not res!880638) (not e!1268729))))

(assert (=> d!613069 (= res!880638 (isDefined!3889 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))))))

(declare-fun lt!754041 () Unit!36620)

(declare-fun choose!12233 (LexerInterface!3573 List!22145 List!22143 Token!7472) Unit!36620)

(assert (=> d!613069 (= lt!754041 (choose!12233 thiss!23328 rules!3198 lt!754035 (h!27463 tokens!598)))))

(assert (=> d!613069 (rulesInvariant!3180 thiss!23328 rules!3198)))

(assert (=> d!613069 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!775 thiss!23328 rules!3198 lt!754035 (h!27463 tokens!598)) lt!754041)))

(declare-fun b!2007939 () Bool)

(declare-fun res!880639 () Bool)

(assert (=> b!2007939 (=> (not res!880639) (not e!1268729))))

(assert (=> b!2007939 (= res!880639 (matchR!2651 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))) (list!8981 (charsOf!2500 (h!27463 tokens!598)))))))

(declare-fun b!2007940 () Bool)

(assert (=> b!2007940 (= e!1268729 (= (rule!6185 (h!27463 tokens!598)) (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))))))

(assert (= (and d!613069 res!880638) b!2007939))

(assert (= (and b!2007939 res!880639) b!2007940))

(assert (=> d!613069 m!2440033))

(assert (=> d!613069 m!2440033))

(declare-fun m!2440079 () Bool)

(assert (=> d!613069 m!2440079))

(declare-fun m!2440081 () Bool)

(assert (=> d!613069 m!2440081))

(assert (=> d!613069 m!2439983))

(assert (=> b!2007939 m!2440023))

(declare-fun m!2440083 () Bool)

(assert (=> b!2007939 m!2440083))

(assert (=> b!2007939 m!2440023))

(assert (=> b!2007939 m!2440033))

(assert (=> b!2007939 m!2440083))

(declare-fun m!2440085 () Bool)

(assert (=> b!2007939 m!2440085))

(assert (=> b!2007939 m!2440033))

(declare-fun m!2440087 () Bool)

(assert (=> b!2007939 m!2440087))

(assert (=> b!2007940 m!2440033))

(assert (=> b!2007940 m!2440033))

(assert (=> b!2007940 m!2440087))

(assert (=> b!2007915 d!613069))

(declare-fun d!613071 () Bool)

(declare-fun isEmpty!13682 (Option!4601) Bool)

(assert (=> d!613071 (= (isDefined!3889 lt!754029) (not (isEmpty!13682 lt!754029)))))

(declare-fun bs!419615 () Bool)

(assert (= bs!419615 d!613071))

(declare-fun m!2440089 () Bool)

(assert (=> bs!419615 m!2440089))

(assert (=> b!2007915 d!613071))

(declare-fun d!613073 () Bool)

(declare-fun e!1268730 () Bool)

(assert (=> d!613073 e!1268730))

(declare-fun res!880640 () Bool)

(assert (=> d!613073 (=> (not res!880640) (not e!1268730))))

(assert (=> d!613073 (= res!880640 (isDefined!3889 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))))))

(declare-fun lt!754042 () Unit!36620)

(assert (=> d!613073 (= lt!754042 (choose!12233 thiss!23328 rules!3198 lt!754030 separatorToken!354))))

(assert (=> d!613073 (rulesInvariant!3180 thiss!23328 rules!3198)))

(assert (=> d!613073 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!775 thiss!23328 rules!3198 lt!754030 separatorToken!354) lt!754042)))

(declare-fun b!2007941 () Bool)

(declare-fun res!880641 () Bool)

(assert (=> b!2007941 (=> (not res!880641) (not e!1268730))))

(assert (=> b!2007941 (= res!880641 (matchR!2651 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))) (list!8981 (charsOf!2500 separatorToken!354))))))

(declare-fun b!2007942 () Bool)

(assert (=> b!2007942 (= e!1268730 (= (rule!6185 separatorToken!354) (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))))))

(assert (= (and d!613073 res!880640) b!2007941))

(assert (= (and b!2007941 res!880641) b!2007942))

(assert (=> d!613073 m!2440019))

(assert (=> d!613073 m!2440019))

(declare-fun m!2440091 () Bool)

(assert (=> d!613073 m!2440091))

(declare-fun m!2440093 () Bool)

(assert (=> d!613073 m!2440093))

(assert (=> d!613073 m!2439983))

(assert (=> b!2007941 m!2440029))

(assert (=> b!2007941 m!2440031))

(assert (=> b!2007941 m!2440029))

(assert (=> b!2007941 m!2440019))

(assert (=> b!2007941 m!2440031))

(declare-fun m!2440095 () Bool)

(assert (=> b!2007941 m!2440095))

(assert (=> b!2007941 m!2440019))

(declare-fun m!2440097 () Bool)

(assert (=> b!2007941 m!2440097))

(assert (=> b!2007942 m!2440019))

(assert (=> b!2007942 m!2440019))

(assert (=> b!2007942 m!2440097))

(assert (=> b!2007915 d!613073))

(declare-fun d!613075 () Bool)

(assert (=> d!613075 (= (isDefined!3889 lt!754031) (not (isEmpty!13682 lt!754031)))))

(declare-fun bs!419616 () Bool)

(assert (= bs!419616 d!613075))

(declare-fun m!2440099 () Bool)

(assert (=> bs!419616 m!2440099))

(assert (=> b!2007915 d!613075))

(declare-fun b!2008026 () Bool)

(declare-fun e!1268784 () Bool)

(assert (=> b!2008026 (= e!1268784 true)))

(declare-fun d!613077 () Bool)

(assert (=> d!613077 e!1268784))

(assert (= d!613077 b!2008026))

(declare-fun order!13999 () Int)

(declare-fun lambda!76027 () Int)

(declare-fun order!14001 () Int)

(declare-fun dynLambda!10853 (Int Int) Int)

(declare-fun dynLambda!10854 (Int Int) Int)

(assert (=> b!2008026 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (dynLambda!10854 order!14001 lambda!76027))))

(declare-fun order!14003 () Int)

(declare-fun dynLambda!10855 (Int Int) Int)

(assert (=> b!2008026 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (dynLambda!10854 order!14001 lambda!76027))))

(declare-fun dynLambda!10856 (Int TokenValue!4096) BalanceConc!14558)

(declare-fun dynLambda!10857 (Int BalanceConc!14558) TokenValue!4096)

(assert (=> d!613077 (= (list!8981 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))) (list!8981 lt!754026))))

(declare-fun lt!754053 () Unit!36620)

(declare-fun ForallOf!426 (Int BalanceConc!14558) Unit!36620)

(assert (=> d!613077 (= lt!754053 (ForallOf!426 lambda!76027 lt!754026))))

(assert (=> d!613077 (= (lemmaSemiInverse!917 (transformation!3960 (rule!6185 (h!27463 tokens!598))) lt!754026) lt!754053)))

(declare-fun b_lambda!66969 () Bool)

(assert (=> (not b_lambda!66969) (not d!613077)))

(declare-fun t!187326 () Bool)

(declare-fun tb!125337 () Bool)

(assert (=> (and b!2007921 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187326) tb!125337))

(declare-fun e!1268787 () Bool)

(declare-fun b!2008031 () Bool)

(declare-fun tp!599145 () Bool)

(declare-fun inv!29223 (Conc!7371) Bool)

(assert (=> b!2008031 (= e!1268787 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))) tp!599145))))

(declare-fun result!150204 () Bool)

(declare-fun inv!29224 (BalanceConc!14558) Bool)

(assert (=> tb!125337 (= result!150204 (and (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))) e!1268787))))

(assert (= tb!125337 b!2008031))

(declare-fun m!2440171 () Bool)

(assert (=> b!2008031 m!2440171))

(declare-fun m!2440173 () Bool)

(assert (=> tb!125337 m!2440173))

(assert (=> d!613077 t!187326))

(declare-fun b_and!158485 () Bool)

(assert (= b_and!158475 (and (=> t!187326 result!150204) b_and!158485)))

(declare-fun tb!125339 () Bool)

(declare-fun t!187328 () Bool)

(assert (=> (and b!2007923 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187328) tb!125339))

(declare-fun result!150208 () Bool)

(assert (= result!150208 result!150204))

(assert (=> d!613077 t!187328))

(declare-fun b_and!158487 () Bool)

(assert (= b_and!158479 (and (=> t!187328 result!150208) b_and!158487)))

(declare-fun t!187330 () Bool)

(declare-fun tb!125341 () Bool)

(assert (=> (and b!2007925 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187330) tb!125341))

(declare-fun result!150210 () Bool)

(assert (= result!150210 result!150204))

(assert (=> d!613077 t!187330))

(declare-fun b_and!158489 () Bool)

(assert (= b_and!158483 (and (=> t!187330 result!150210) b_and!158489)))

(declare-fun b_lambda!66971 () Bool)

(assert (=> (not b_lambda!66971) (not d!613077)))

(declare-fun t!187332 () Bool)

(declare-fun tb!125343 () Bool)

(assert (=> (and b!2007921 (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187332) tb!125343))

(declare-fun result!150212 () Bool)

(assert (=> tb!125343 (= result!150212 (inv!21 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))

(declare-fun m!2440175 () Bool)

(assert (=> tb!125343 m!2440175))

(assert (=> d!613077 t!187332))

(declare-fun b_and!158491 () Bool)

(assert (= b_and!158473 (and (=> t!187332 result!150212) b_and!158491)))

(declare-fun tb!125345 () Bool)

(declare-fun t!187334 () Bool)

(assert (=> (and b!2007923 (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187334) tb!125345))

(declare-fun result!150216 () Bool)

(assert (= result!150216 result!150212))

(assert (=> d!613077 t!187334))

(declare-fun b_and!158493 () Bool)

(assert (= b_and!158477 (and (=> t!187334 result!150216) b_and!158493)))

(declare-fun t!187336 () Bool)

(declare-fun tb!125347 () Bool)

(assert (=> (and b!2007925 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187336) tb!125347))

(declare-fun result!150218 () Bool)

(assert (= result!150218 result!150212))

(assert (=> d!613077 t!187336))

(declare-fun b_and!158495 () Bool)

(assert (= b_and!158481 (and (=> t!187336 result!150218) b_and!158495)))

(declare-fun m!2440179 () Bool)

(assert (=> d!613077 m!2440179))

(assert (=> d!613077 m!2440179))

(declare-fun m!2440181 () Bool)

(assert (=> d!613077 m!2440181))

(declare-fun m!2440183 () Bool)

(assert (=> d!613077 m!2440183))

(assert (=> d!613077 m!2440009))

(assert (=> d!613077 m!2440181))

(declare-fun m!2440185 () Bool)

(assert (=> d!613077 m!2440185))

(assert (=> b!2007915 d!613077))

(declare-fun bs!419619 () Bool)

(declare-fun b!2008072 () Bool)

(assert (= bs!419619 (and b!2008072 b!2007920)))

(declare-fun lambda!76030 () Int)

(assert (=> bs!419619 (not (= lambda!76030 lambda!76021))))

(declare-fun b!2008085 () Bool)

(declare-fun e!1268820 () Bool)

(assert (=> b!2008085 (= e!1268820 true)))

(declare-fun b!2008084 () Bool)

(declare-fun e!1268819 () Bool)

(assert (=> b!2008084 (= e!1268819 e!1268820)))

(declare-fun b!2008083 () Bool)

(declare-fun e!1268818 () Bool)

(assert (=> b!2008083 (= e!1268818 e!1268819)))

(assert (=> b!2008072 e!1268818))

(assert (= b!2008084 b!2008085))

(assert (= b!2008083 b!2008084))

(assert (= (and b!2008072 ((_ is Cons!22063) rules!3198)) b!2008083))

(declare-fun order!14005 () Int)

(declare-fun dynLambda!10858 (Int Int) Int)

(assert (=> b!2008085 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10858 order!14005 lambda!76030))))

(assert (=> b!2008085 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10858 order!14005 lambda!76030))))

(assert (=> b!2008072 true))

(declare-fun call!122768 () BalanceConc!14558)

(declare-fun bm!122762 () Bool)

(declare-fun c!324333 () Bool)

(declare-fun call!122770 () BalanceConc!14558)

(declare-fun call!122767 () List!22143)

(assert (=> bm!122762 (= call!122767 (list!8981 (ite c!324333 call!122768 call!122770)))))

(declare-fun d!613103 () Bool)

(declare-fun c!324330 () Bool)

(assert (=> d!613103 (= c!324330 ((_ is Cons!22062) (t!187321 tokens!598)))))

(declare-fun e!1268810 () List!22143)

(assert (=> d!613103 (= (printWithSeparatorTokenWhenNeededList!602 thiss!23328 rules!3198 (t!187321 tokens!598) separatorToken!354) e!1268810)))

(declare-fun b!2008067 () Bool)

(declare-fun e!1268808 () List!22143)

(assert (=> b!2008067 (= e!1268808 call!122767)))

(declare-fun bm!122763 () Bool)

(assert (=> bm!122763 (= call!122770 call!122768)))

(declare-fun b!2008068 () Bool)

(declare-fun e!1268809 () List!22143)

(assert (=> b!2008068 (= e!1268809 Nil!22061)))

(declare-datatypes ((IArray!14751 0))(
  ( (IArray!14752 (innerList!7433 List!22144)) )
))
(declare-datatypes ((Conc!7373 0))(
  ( (Node!7373 (left!17559 Conc!7373) (right!17889 Conc!7373) (csize!14976 Int) (cheight!7584 Int)) (Leaf!10816 (xs!10271 IArray!14751) (csize!14977 Int)) (Empty!7373) )
))
(declare-datatypes ((BalanceConc!14562 0))(
  ( (BalanceConc!14563 (c!324444 Conc!7373)) )
))
(declare-fun print!1541 (LexerInterface!3573 BalanceConc!14562) BalanceConc!14558)

(declare-fun singletonSeq!1942 (Token!7472) BalanceConc!14562)

(declare-fun printTailRec!1047 (LexerInterface!3573 BalanceConc!14562 Int BalanceConc!14558) BalanceConc!14558)

(assert (=> b!2008068 (= (print!1541 thiss!23328 (singletonSeq!1942 (h!27463 (t!187321 tokens!598)))) (printTailRec!1047 thiss!23328 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))) 0 (BalanceConc!14559 Empty!7371)))))

(declare-fun lt!754077 () Unit!36620)

(declare-fun Unit!36624 () Unit!36620)

(assert (=> b!2008068 (= lt!754077 Unit!36624)))

(declare-fun lt!754076 () List!22143)

(declare-fun lt!754079 () Unit!36620)

(declare-fun call!122771 () List!22143)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!757 (LexerInterface!3573 List!22145 List!22143 List!22143) Unit!36620)

(assert (=> b!2008068 (= lt!754079 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!757 thiss!23328 rules!3198 call!122771 lt!754076))))

(assert (=> b!2008068 false))

(declare-fun lt!754081 () Unit!36620)

(declare-fun Unit!36625 () Unit!36620)

(assert (=> b!2008068 (= lt!754081 Unit!36625)))

(declare-fun bm!122764 () Bool)

(declare-fun c!324331 () Bool)

(assert (=> bm!122764 (= c!324331 c!324333)))

(declare-fun call!122769 () List!22143)

(assert (=> bm!122764 (= call!122769 (++!5953 e!1268808 (ite c!324333 lt!754076 call!122771)))))

(declare-fun bm!122765 () Bool)

(assert (=> bm!122765 (= call!122771 call!122767)))

(declare-fun b!2008069 () Bool)

(declare-fun e!1268811 () List!22143)

(assert (=> b!2008069 (= e!1268811 call!122769)))

(declare-fun b!2008070 () Bool)

(assert (=> b!2008070 (= e!1268809 (++!5953 call!122769 lt!754076))))

(declare-fun b!2008071 () Bool)

(assert (=> b!2008071 (= e!1268808 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))))))

(assert (=> b!2008072 (= e!1268810 e!1268811)))

(declare-fun lt!754078 () Unit!36620)

(declare-fun forallContained!726 (List!22144 Int Token!7472) Unit!36620)

(assert (=> b!2008072 (= lt!754078 (forallContained!726 (t!187321 tokens!598) lambda!76030 (h!27463 (t!187321 tokens!598))))))

(assert (=> b!2008072 (= lt!754076 (printWithSeparatorTokenWhenNeededList!602 thiss!23328 rules!3198 (t!187321 (t!187321 tokens!598)) separatorToken!354))))

(declare-fun lt!754080 () Option!4602)

(assert (=> b!2008072 (= lt!754080 (maxPrefix!2009 thiss!23328 rules!3198 (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076)))))

(assert (=> b!2008072 (= c!324333 (and ((_ is Some!4601) lt!754080) (= (_1!11834 (v!26838 lt!754080)) (h!27463 (t!187321 tokens!598)))))))

(declare-fun c!324332 () Bool)

(declare-fun bm!122766 () Bool)

(assert (=> bm!122766 (= call!122768 (charsOf!2500 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598))))))))

(declare-fun b!2008073 () Bool)

(assert (=> b!2008073 (= e!1268810 Nil!22061)))

(declare-fun b!2008074 () Bool)

(assert (=> b!2008074 (= c!324332 (and ((_ is Some!4601) lt!754080) (not (= (_1!11834 (v!26838 lt!754080)) (h!27463 (t!187321 tokens!598))))))))

(assert (=> b!2008074 (= e!1268811 e!1268809)))

(assert (= (and d!613103 c!324330) b!2008072))

(assert (= (and d!613103 (not c!324330)) b!2008073))

(assert (= (and b!2008072 c!324333) b!2008069))

(assert (= (and b!2008072 (not c!324333)) b!2008074))

(assert (= (and b!2008074 c!324332) b!2008070))

(assert (= (and b!2008074 (not c!324332)) b!2008068))

(assert (= (or b!2008070 b!2008068) bm!122763))

(assert (= (or b!2008070 b!2008068) bm!122765))

(assert (= (or b!2008069 bm!122763) bm!122766))

(assert (= (or b!2008069 bm!122765) bm!122762))

(assert (= (or b!2008069 b!2008070) bm!122764))

(assert (= (and bm!122764 c!324331) b!2008067))

(assert (= (and bm!122764 (not c!324331)) b!2008071))

(declare-fun m!2440209 () Bool)

(assert (=> bm!122762 m!2440209))

(declare-fun m!2440211 () Bool)

(assert (=> bm!122764 m!2440211))

(declare-fun m!2440213 () Bool)

(assert (=> b!2008072 m!2440213))

(declare-fun m!2440215 () Bool)

(assert (=> b!2008072 m!2440215))

(declare-fun m!2440217 () Bool)

(assert (=> b!2008072 m!2440217))

(declare-fun m!2440219 () Bool)

(assert (=> b!2008072 m!2440219))

(assert (=> b!2008072 m!2440215))

(declare-fun m!2440221 () Bool)

(assert (=> b!2008072 m!2440221))

(assert (=> b!2008072 m!2440217))

(assert (=> b!2008072 m!2440213))

(declare-fun m!2440223 () Bool)

(assert (=> b!2008072 m!2440223))

(assert (=> b!2008071 m!2440217))

(assert (=> b!2008071 m!2440217))

(assert (=> b!2008071 m!2440213))

(declare-fun m!2440225 () Bool)

(assert (=> b!2008068 m!2440225))

(assert (=> b!2008068 m!2440225))

(declare-fun m!2440227 () Bool)

(assert (=> b!2008068 m!2440227))

(assert (=> b!2008068 m!2440225))

(declare-fun m!2440229 () Bool)

(assert (=> b!2008068 m!2440229))

(declare-fun m!2440231 () Bool)

(assert (=> b!2008068 m!2440231))

(declare-fun m!2440233 () Bool)

(assert (=> b!2008070 m!2440233))

(declare-fun m!2440235 () Bool)

(assert (=> bm!122766 m!2440235))

(assert (=> b!2007915 d!613103))

(declare-fun d!613109 () Bool)

(declare-fun list!8983 (Conc!7371) List!22143)

(assert (=> d!613109 (= (list!8981 (charsOf!2500 separatorToken!354)) (list!8983 (c!324302 (charsOf!2500 separatorToken!354))))))

(declare-fun bs!419620 () Bool)

(assert (= bs!419620 d!613109))

(declare-fun m!2440237 () Bool)

(assert (=> bs!419620 m!2440237))

(assert (=> b!2007915 d!613109))

(declare-fun bm!122784 () Bool)

(declare-fun call!122789 () Option!4602)

(declare-fun maxPrefixOneRule!1244 (LexerInterface!3573 Rule!7720 List!22143) Option!4602)

(assert (=> bm!122784 (= call!122789 (maxPrefixOneRule!1244 thiss!23328 (h!27464 rules!3198) (++!5953 lt!754035 lt!754023)))))

(declare-fun b!2008160 () Bool)

(declare-fun e!1268861 () Bool)

(declare-fun lt!754126 () Option!4602)

(declare-fun contains!4032 (List!22145 Rule!7720) Bool)

(assert (=> b!2008160 (= e!1268861 (contains!4032 rules!3198 (rule!6185 (_1!11834 (get!6973 lt!754126)))))))

(declare-fun b!2008161 () Bool)

(declare-fun res!880711 () Bool)

(assert (=> b!2008161 (=> (not res!880711) (not e!1268861))))

(declare-fun apply!5780 (TokenValueInjection!7776 BalanceConc!14558) TokenValue!4096)

(assert (=> b!2008161 (= res!880711 (= (value!124451 (_1!11834 (get!6973 lt!754126))) (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754126)))))))))

(declare-fun b!2008163 () Bool)

(declare-fun e!1268862 () Bool)

(assert (=> b!2008163 (= e!1268862 e!1268861)))

(declare-fun res!880714 () Bool)

(assert (=> b!2008163 (=> (not res!880714) (not e!1268861))))

(assert (=> b!2008163 (= res!880714 (isDefined!3890 lt!754126))))

(declare-fun b!2008164 () Bool)

(declare-fun res!880713 () Bool)

(assert (=> b!2008164 (=> (not res!880713) (not e!1268861))))

(assert (=> b!2008164 (= res!880713 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126)))) (_2!11834 (get!6973 lt!754126))) (++!5953 lt!754035 lt!754023)))))

(declare-fun b!2008165 () Bool)

(declare-fun e!1268860 () Option!4602)

(declare-fun lt!754129 () Option!4602)

(declare-fun lt!754128 () Option!4602)

(assert (=> b!2008165 (= e!1268860 (ite (and ((_ is None!4601) lt!754129) ((_ is None!4601) lt!754128)) None!4601 (ite ((_ is None!4601) lt!754128) lt!754129 (ite ((_ is None!4601) lt!754129) lt!754128 (ite (>= (size!17246 (_1!11834 (v!26838 lt!754129))) (size!17246 (_1!11834 (v!26838 lt!754128)))) lt!754129 lt!754128)))))))

(assert (=> b!2008165 (= lt!754129 call!122789)))

(assert (=> b!2008165 (= lt!754128 (maxPrefix!2009 thiss!23328 (t!187322 rules!3198) (++!5953 lt!754035 lt!754023)))))

(declare-fun b!2008166 () Bool)

(declare-fun res!880709 () Bool)

(assert (=> b!2008166 (=> (not res!880709) (not e!1268861))))

(assert (=> b!2008166 (= res!880709 (= (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126)))) (originalCharacters!4767 (_1!11834 (get!6973 lt!754126)))))))

(declare-fun d!613111 () Bool)

(assert (=> d!613111 e!1268862))

(declare-fun res!880712 () Bool)

(assert (=> d!613111 (=> res!880712 e!1268862)))

(declare-fun isEmpty!13684 (Option!4602) Bool)

(assert (=> d!613111 (= res!880712 (isEmpty!13684 lt!754126))))

(assert (=> d!613111 (= lt!754126 e!1268860)))

(declare-fun c!324356 () Bool)

(assert (=> d!613111 (= c!324356 (and ((_ is Cons!22063) rules!3198) ((_ is Nil!22063) (t!187322 rules!3198))))))

(declare-fun lt!754127 () Unit!36620)

(declare-fun lt!754130 () Unit!36620)

(assert (=> d!613111 (= lt!754127 lt!754130)))

(declare-fun isPrefix!1962 (List!22143 List!22143) Bool)

(assert (=> d!613111 (isPrefix!1962 (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023))))

(declare-fun lemmaIsPrefixRefl!1280 (List!22143 List!22143) Unit!36620)

(assert (=> d!613111 (= lt!754130 (lemmaIsPrefixRefl!1280 (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023)))))

(declare-fun rulesValidInductive!1361 (LexerInterface!3573 List!22145) Bool)

(assert (=> d!613111 (rulesValidInductive!1361 thiss!23328 rules!3198)))

(assert (=> d!613111 (= (maxPrefix!2009 thiss!23328 rules!3198 (++!5953 lt!754035 lt!754023)) lt!754126)))

(declare-fun b!2008162 () Bool)

(declare-fun res!880708 () Bool)

(assert (=> b!2008162 (=> (not res!880708) (not e!1268861))))

(declare-fun size!17248 (List!22143) Int)

(assert (=> b!2008162 (= res!880708 (< (size!17248 (_2!11834 (get!6973 lt!754126))) (size!17248 (++!5953 lt!754035 lt!754023))))))

(declare-fun b!2008167 () Bool)

(assert (=> b!2008167 (= e!1268860 call!122789)))

(declare-fun b!2008168 () Bool)

(declare-fun res!880710 () Bool)

(assert (=> b!2008168 (=> (not res!880710) (not e!1268861))))

(assert (=> b!2008168 (= res!880710 (matchR!2651 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))))))

(assert (= (and d!613111 c!324356) b!2008167))

(assert (= (and d!613111 (not c!324356)) b!2008165))

(assert (= (or b!2008167 b!2008165) bm!122784))

(assert (= (and d!613111 (not res!880712)) b!2008163))

(assert (= (and b!2008163 res!880714) b!2008166))

(assert (= (and b!2008166 res!880709) b!2008162))

(assert (= (and b!2008162 res!880708) b!2008164))

(assert (= (and b!2008164 res!880713) b!2008161))

(assert (= (and b!2008161 res!880711) b!2008168))

(assert (= (and b!2008168 res!880710) b!2008160))

(declare-fun m!2440311 () Bool)

(assert (=> b!2008163 m!2440311))

(declare-fun m!2440313 () Bool)

(assert (=> b!2008164 m!2440313))

(declare-fun m!2440315 () Bool)

(assert (=> b!2008164 m!2440315))

(assert (=> b!2008164 m!2440315))

(declare-fun m!2440317 () Bool)

(assert (=> b!2008164 m!2440317))

(assert (=> b!2008164 m!2440317))

(declare-fun m!2440319 () Bool)

(assert (=> b!2008164 m!2440319))

(assert (=> bm!122784 m!2440037))

(declare-fun m!2440321 () Bool)

(assert (=> bm!122784 m!2440321))

(assert (=> b!2008161 m!2440313))

(declare-fun m!2440323 () Bool)

(assert (=> b!2008161 m!2440323))

(assert (=> b!2008161 m!2440323))

(declare-fun m!2440325 () Bool)

(assert (=> b!2008161 m!2440325))

(declare-fun m!2440327 () Bool)

(assert (=> d!613111 m!2440327))

(assert (=> d!613111 m!2440037))

(assert (=> d!613111 m!2440037))

(declare-fun m!2440329 () Bool)

(assert (=> d!613111 m!2440329))

(assert (=> d!613111 m!2440037))

(assert (=> d!613111 m!2440037))

(declare-fun m!2440331 () Bool)

(assert (=> d!613111 m!2440331))

(declare-fun m!2440333 () Bool)

(assert (=> d!613111 m!2440333))

(assert (=> b!2008160 m!2440313))

(declare-fun m!2440335 () Bool)

(assert (=> b!2008160 m!2440335))

(assert (=> b!2008165 m!2440037))

(declare-fun m!2440337 () Bool)

(assert (=> b!2008165 m!2440337))

(assert (=> b!2008162 m!2440313))

(declare-fun m!2440339 () Bool)

(assert (=> b!2008162 m!2440339))

(assert (=> b!2008162 m!2440037))

(declare-fun m!2440341 () Bool)

(assert (=> b!2008162 m!2440341))

(assert (=> b!2008168 m!2440313))

(assert (=> b!2008168 m!2440315))

(assert (=> b!2008168 m!2440315))

(assert (=> b!2008168 m!2440317))

(assert (=> b!2008168 m!2440317))

(declare-fun m!2440343 () Bool)

(assert (=> b!2008168 m!2440343))

(assert (=> b!2008166 m!2440313))

(assert (=> b!2008166 m!2440315))

(assert (=> b!2008166 m!2440315))

(assert (=> b!2008166 m!2440317))

(assert (=> b!2007915 d!613111))

(declare-fun d!613131 () Bool)

(declare-fun lt!754133 () BalanceConc!14558)

(assert (=> d!613131 (= (list!8981 lt!754133) (originalCharacters!4767 separatorToken!354))))

(assert (=> d!613131 (= lt!754133 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))))

(assert (=> d!613131 (= (charsOf!2500 separatorToken!354) lt!754133)))

(declare-fun b_lambda!66977 () Bool)

(assert (=> (not b_lambda!66977) (not d!613131)))

(declare-fun t!187354 () Bool)

(declare-fun tb!125361 () Bool)

(assert (=> (and b!2007921 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) t!187354) tb!125361))

(declare-fun b!2008169 () Bool)

(declare-fun e!1268863 () Bool)

(declare-fun tp!599150 () Bool)

(assert (=> b!2008169 (= e!1268863 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))) tp!599150))))

(declare-fun result!150234 () Bool)

(assert (=> tb!125361 (= result!150234 (and (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))) e!1268863))))

(assert (= tb!125361 b!2008169))

(declare-fun m!2440345 () Bool)

(assert (=> b!2008169 m!2440345))

(declare-fun m!2440347 () Bool)

(assert (=> tb!125361 m!2440347))

(assert (=> d!613131 t!187354))

(declare-fun b_and!158509 () Bool)

(assert (= b_and!158485 (and (=> t!187354 result!150234) b_and!158509)))

(declare-fun t!187356 () Bool)

(declare-fun tb!125363 () Bool)

(assert (=> (and b!2007923 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) t!187356) tb!125363))

(declare-fun result!150236 () Bool)

(assert (= result!150236 result!150234))

(assert (=> d!613131 t!187356))

(declare-fun b_and!158511 () Bool)

(assert (= b_and!158487 (and (=> t!187356 result!150236) b_and!158511)))

(declare-fun t!187358 () Bool)

(declare-fun tb!125365 () Bool)

(assert (=> (and b!2007925 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) t!187358) tb!125365))

(declare-fun result!150238 () Bool)

(assert (= result!150238 result!150234))

(assert (=> d!613131 t!187358))

(declare-fun b_and!158513 () Bool)

(assert (= b_and!158489 (and (=> t!187358 result!150238) b_and!158513)))

(declare-fun m!2440349 () Bool)

(assert (=> d!613131 m!2440349))

(declare-fun m!2440351 () Bool)

(assert (=> d!613131 m!2440351))

(assert (=> b!2007915 d!613131))

(declare-fun d!613133 () Bool)

(assert (=> d!613133 (= (isDefined!3890 lt!754032) (not (isEmpty!13684 lt!754032)))))

(declare-fun bs!419627 () Bool)

(assert (= bs!419627 d!613133))

(declare-fun m!2440353 () Bool)

(assert (=> bs!419627 m!2440353))

(assert (=> b!2007915 d!613133))

(declare-fun d!613135 () Bool)

(declare-fun e!1268872 () Bool)

(assert (=> d!613135 e!1268872))

(declare-fun res!880720 () Bool)

(assert (=> d!613135 (=> res!880720 e!1268872)))

(declare-fun lt!754141 () Option!4601)

(assert (=> d!613135 (= res!880720 (isEmpty!13682 lt!754141))))

(declare-fun e!1268875 () Option!4601)

(assert (=> d!613135 (= lt!754141 e!1268875)))

(declare-fun c!324361 () Bool)

(assert (=> d!613135 (= c!324361 (and ((_ is Cons!22063) rules!3198) (= (tag!4424 (h!27464 rules!3198)) (tag!4424 (rule!6185 separatorToken!354)))))))

(assert (=> d!613135 (rulesInvariant!3180 thiss!23328 rules!3198)))

(assert (=> d!613135 (= (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))) lt!754141)))

(declare-fun b!2008182 () Bool)

(declare-fun e!1268873 () Option!4601)

(assert (=> b!2008182 (= e!1268873 None!4600)))

(declare-fun b!2008183 () Bool)

(declare-fun e!1268874 () Bool)

(assert (=> b!2008183 (= e!1268872 e!1268874)))

(declare-fun res!880719 () Bool)

(assert (=> b!2008183 (=> (not res!880719) (not e!1268874))))

(assert (=> b!2008183 (= res!880719 (contains!4032 rules!3198 (get!6972 lt!754141)))))

(declare-fun b!2008184 () Bool)

(declare-fun lt!754142 () Unit!36620)

(declare-fun lt!754140 () Unit!36620)

(assert (=> b!2008184 (= lt!754142 lt!754140)))

(assert (=> b!2008184 (rulesInvariant!3180 thiss!23328 (t!187322 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!288 (LexerInterface!3573 Rule!7720 List!22145) Unit!36620)

(assert (=> b!2008184 (= lt!754140 (lemmaInvariantOnRulesThenOnTail!288 thiss!23328 (h!27464 rules!3198) (t!187322 rules!3198)))))

(assert (=> b!2008184 (= e!1268873 (getRuleFromTag!775 thiss!23328 (t!187322 rules!3198) (tag!4424 (rule!6185 separatorToken!354))))))

(declare-fun b!2008185 () Bool)

(assert (=> b!2008185 (= e!1268875 e!1268873)))

(declare-fun c!324362 () Bool)

(assert (=> b!2008185 (= c!324362 (and ((_ is Cons!22063) rules!3198) (not (= (tag!4424 (h!27464 rules!3198)) (tag!4424 (rule!6185 separatorToken!354))))))))

(declare-fun b!2008186 () Bool)

(assert (=> b!2008186 (= e!1268874 (= (tag!4424 (get!6972 lt!754141)) (tag!4424 (rule!6185 separatorToken!354))))))

(declare-fun b!2008187 () Bool)

(assert (=> b!2008187 (= e!1268875 (Some!4600 (h!27464 rules!3198)))))

(assert (= (and d!613135 c!324361) b!2008187))

(assert (= (and d!613135 (not c!324361)) b!2008185))

(assert (= (and b!2008185 c!324362) b!2008184))

(assert (= (and b!2008185 (not c!324362)) b!2008182))

(assert (= (and d!613135 (not res!880720)) b!2008183))

(assert (= (and b!2008183 res!880719) b!2008186))

(declare-fun m!2440355 () Bool)

(assert (=> d!613135 m!2440355))

(assert (=> d!613135 m!2439983))

(declare-fun m!2440357 () Bool)

(assert (=> b!2008183 m!2440357))

(assert (=> b!2008183 m!2440357))

(declare-fun m!2440359 () Bool)

(assert (=> b!2008183 m!2440359))

(declare-fun m!2440361 () Bool)

(assert (=> b!2008184 m!2440361))

(declare-fun m!2440363 () Bool)

(assert (=> b!2008184 m!2440363))

(declare-fun m!2440365 () Bool)

(assert (=> b!2008184 m!2440365))

(assert (=> b!2008186 m!2440357))

(assert (=> b!2007915 d!613135))

(declare-fun d!613137 () Bool)

(declare-fun lt!754143 () BalanceConc!14558)

(assert (=> d!613137 (= (list!8981 lt!754143) (originalCharacters!4767 (h!27463 tokens!598)))))

(assert (=> d!613137 (= lt!754143 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))))

(assert (=> d!613137 (= (charsOf!2500 (h!27463 tokens!598)) lt!754143)))

(declare-fun b_lambda!66979 () Bool)

(assert (=> (not b_lambda!66979) (not d!613137)))

(declare-fun tb!125367 () Bool)

(declare-fun t!187360 () Bool)

(assert (=> (and b!2007921 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187360) tb!125367))

(declare-fun b!2008188 () Bool)

(declare-fun e!1268876 () Bool)

(declare-fun tp!599151 () Bool)

(assert (=> b!2008188 (= e!1268876 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))) tp!599151))))

(declare-fun result!150240 () Bool)

(assert (=> tb!125367 (= result!150240 (and (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))) e!1268876))))

(assert (= tb!125367 b!2008188))

(declare-fun m!2440367 () Bool)

(assert (=> b!2008188 m!2440367))

(declare-fun m!2440369 () Bool)

(assert (=> tb!125367 m!2440369))

(assert (=> d!613137 t!187360))

(declare-fun b_and!158515 () Bool)

(assert (= b_and!158509 (and (=> t!187360 result!150240) b_and!158515)))

(declare-fun tb!125369 () Bool)

(declare-fun t!187362 () Bool)

(assert (=> (and b!2007923 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187362) tb!125369))

(declare-fun result!150242 () Bool)

(assert (= result!150242 result!150240))

(assert (=> d!613137 t!187362))

(declare-fun b_and!158517 () Bool)

(assert (= b_and!158511 (and (=> t!187362 result!150242) b_and!158517)))

(declare-fun t!187364 () Bool)

(declare-fun tb!125371 () Bool)

(assert (=> (and b!2007925 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187364) tb!125371))

(declare-fun result!150244 () Bool)

(assert (= result!150244 result!150240))

(assert (=> d!613137 t!187364))

(declare-fun b_and!158519 () Bool)

(assert (= b_and!158513 (and (=> t!187364 result!150244) b_and!158519)))

(declare-fun m!2440371 () Bool)

(assert (=> d!613137 m!2440371))

(declare-fun m!2440373 () Bool)

(assert (=> d!613137 m!2440373))

(assert (=> b!2007915 d!613137))

(declare-fun d!613139 () Bool)

(assert (=> d!613139 (= (list!8981 lt!754026) (list!8983 (c!324302 lt!754026)))))

(declare-fun bs!419628 () Bool)

(assert (= bs!419628 d!613139))

(declare-fun m!2440375 () Bool)

(assert (=> bs!419628 m!2440375))

(assert (=> b!2007915 d!613139))

(declare-fun d!613141 () Bool)

(declare-fun fromListB!1259 (List!22143) BalanceConc!14558)

(assert (=> d!613141 (= (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))) (fromListB!1259 (originalCharacters!4767 (h!27463 tokens!598))))))

(declare-fun bs!419629 () Bool)

(assert (= bs!419629 d!613141))

(declare-fun m!2440377 () Bool)

(assert (=> bs!419629 m!2440377))

(assert (=> b!2007915 d!613141))

(declare-fun call!122790 () Option!4602)

(declare-fun bm!122785 () Bool)

(assert (=> bm!122785 (= call!122790 (maxPrefixOneRule!1244 thiss!23328 (h!27464 rules!3198) lt!754035))))

(declare-fun b!2008189 () Bool)

(declare-fun e!1268878 () Bool)

(declare-fun lt!754144 () Option!4602)

(assert (=> b!2008189 (= e!1268878 (contains!4032 rules!3198 (rule!6185 (_1!11834 (get!6973 lt!754144)))))))

(declare-fun b!2008190 () Bool)

(declare-fun res!880724 () Bool)

(assert (=> b!2008190 (=> (not res!880724) (not e!1268878))))

(assert (=> b!2008190 (= res!880724 (= (value!124451 (_1!11834 (get!6973 lt!754144))) (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754144)))))))))

(declare-fun b!2008192 () Bool)

(declare-fun e!1268879 () Bool)

(assert (=> b!2008192 (= e!1268879 e!1268878)))

(declare-fun res!880727 () Bool)

(assert (=> b!2008192 (=> (not res!880727) (not e!1268878))))

(assert (=> b!2008192 (= res!880727 (isDefined!3890 lt!754144))))

(declare-fun b!2008193 () Bool)

(declare-fun res!880726 () Bool)

(assert (=> b!2008193 (=> (not res!880726) (not e!1268878))))

(assert (=> b!2008193 (= res!880726 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144)))) (_2!11834 (get!6973 lt!754144))) lt!754035))))

(declare-fun b!2008194 () Bool)

(declare-fun e!1268877 () Option!4602)

(declare-fun lt!754147 () Option!4602)

(declare-fun lt!754146 () Option!4602)

(assert (=> b!2008194 (= e!1268877 (ite (and ((_ is None!4601) lt!754147) ((_ is None!4601) lt!754146)) None!4601 (ite ((_ is None!4601) lt!754146) lt!754147 (ite ((_ is None!4601) lt!754147) lt!754146 (ite (>= (size!17246 (_1!11834 (v!26838 lt!754147))) (size!17246 (_1!11834 (v!26838 lt!754146)))) lt!754147 lt!754146)))))))

(assert (=> b!2008194 (= lt!754147 call!122790)))

(assert (=> b!2008194 (= lt!754146 (maxPrefix!2009 thiss!23328 (t!187322 rules!3198) lt!754035))))

(declare-fun b!2008195 () Bool)

(declare-fun res!880722 () Bool)

(assert (=> b!2008195 (=> (not res!880722) (not e!1268878))))

(assert (=> b!2008195 (= res!880722 (= (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144)))) (originalCharacters!4767 (_1!11834 (get!6973 lt!754144)))))))

(declare-fun d!613143 () Bool)

(assert (=> d!613143 e!1268879))

(declare-fun res!880725 () Bool)

(assert (=> d!613143 (=> res!880725 e!1268879)))

(assert (=> d!613143 (= res!880725 (isEmpty!13684 lt!754144))))

(assert (=> d!613143 (= lt!754144 e!1268877)))

(declare-fun c!324363 () Bool)

(assert (=> d!613143 (= c!324363 (and ((_ is Cons!22063) rules!3198) ((_ is Nil!22063) (t!187322 rules!3198))))))

(declare-fun lt!754145 () Unit!36620)

(declare-fun lt!754148 () Unit!36620)

(assert (=> d!613143 (= lt!754145 lt!754148)))

(assert (=> d!613143 (isPrefix!1962 lt!754035 lt!754035)))

(assert (=> d!613143 (= lt!754148 (lemmaIsPrefixRefl!1280 lt!754035 lt!754035))))

(assert (=> d!613143 (rulesValidInductive!1361 thiss!23328 rules!3198)))

(assert (=> d!613143 (= (maxPrefix!2009 thiss!23328 rules!3198 lt!754035) lt!754144)))

(declare-fun b!2008191 () Bool)

(declare-fun res!880721 () Bool)

(assert (=> b!2008191 (=> (not res!880721) (not e!1268878))))

(assert (=> b!2008191 (= res!880721 (< (size!17248 (_2!11834 (get!6973 lt!754144))) (size!17248 lt!754035)))))

(declare-fun b!2008196 () Bool)

(assert (=> b!2008196 (= e!1268877 call!122790)))

(declare-fun b!2008197 () Bool)

(declare-fun res!880723 () Bool)

(assert (=> b!2008197 (=> (not res!880723) (not e!1268878))))

(assert (=> b!2008197 (= res!880723 (matchR!2651 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))))))

(assert (= (and d!613143 c!324363) b!2008196))

(assert (= (and d!613143 (not c!324363)) b!2008194))

(assert (= (or b!2008196 b!2008194) bm!122785))

(assert (= (and d!613143 (not res!880725)) b!2008192))

(assert (= (and b!2008192 res!880727) b!2008195))

(assert (= (and b!2008195 res!880722) b!2008191))

(assert (= (and b!2008191 res!880721) b!2008193))

(assert (= (and b!2008193 res!880726) b!2008190))

(assert (= (and b!2008190 res!880724) b!2008197))

(assert (= (and b!2008197 res!880723) b!2008189))

(declare-fun m!2440379 () Bool)

(assert (=> b!2008192 m!2440379))

(declare-fun m!2440381 () Bool)

(assert (=> b!2008193 m!2440381))

(declare-fun m!2440383 () Bool)

(assert (=> b!2008193 m!2440383))

(assert (=> b!2008193 m!2440383))

(declare-fun m!2440385 () Bool)

(assert (=> b!2008193 m!2440385))

(assert (=> b!2008193 m!2440385))

(declare-fun m!2440387 () Bool)

(assert (=> b!2008193 m!2440387))

(declare-fun m!2440389 () Bool)

(assert (=> bm!122785 m!2440389))

(assert (=> b!2008190 m!2440381))

(declare-fun m!2440391 () Bool)

(assert (=> b!2008190 m!2440391))

(assert (=> b!2008190 m!2440391))

(declare-fun m!2440393 () Bool)

(assert (=> b!2008190 m!2440393))

(declare-fun m!2440395 () Bool)

(assert (=> d!613143 m!2440395))

(declare-fun m!2440397 () Bool)

(assert (=> d!613143 m!2440397))

(declare-fun m!2440399 () Bool)

(assert (=> d!613143 m!2440399))

(assert (=> d!613143 m!2440333))

(assert (=> b!2008189 m!2440381))

(declare-fun m!2440401 () Bool)

(assert (=> b!2008189 m!2440401))

(declare-fun m!2440403 () Bool)

(assert (=> b!2008194 m!2440403))

(assert (=> b!2008191 m!2440381))

(declare-fun m!2440405 () Bool)

(assert (=> b!2008191 m!2440405))

(declare-fun m!2440407 () Bool)

(assert (=> b!2008191 m!2440407))

(assert (=> b!2008197 m!2440381))

(assert (=> b!2008197 m!2440383))

(assert (=> b!2008197 m!2440383))

(assert (=> b!2008197 m!2440385))

(assert (=> b!2008197 m!2440385))

(declare-fun m!2440409 () Bool)

(assert (=> b!2008197 m!2440409))

(assert (=> b!2008195 m!2440381))

(assert (=> b!2008195 m!2440383))

(assert (=> b!2008195 m!2440383))

(assert (=> b!2008195 m!2440385))

(assert (=> b!2007915 d!613143))

(declare-fun b!2008226 () Bool)

(declare-fun res!880746 () Bool)

(declare-fun e!1268891 () Bool)

(assert (=> b!2008226 (=> (not res!880746) (not e!1268891))))

(declare-fun lt!754161 () List!22143)

(assert (=> b!2008226 (= res!880746 (= (size!17248 lt!754161) (+ (size!17248 lt!754035) (size!17248 lt!754023))))))

(declare-fun b!2008227 () Bool)

(assert (=> b!2008227 (= e!1268891 (or (not (= lt!754023 Nil!22061)) (= lt!754161 lt!754035)))))

(declare-fun d!613145 () Bool)

(assert (=> d!613145 e!1268891))

(declare-fun res!880747 () Bool)

(assert (=> d!613145 (=> (not res!880747) (not e!1268891))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3231 (List!22143) (InoxSet C!10916))

(assert (=> d!613145 (= res!880747 (= (content!3231 lt!754161) ((_ map or) (content!3231 lt!754035) (content!3231 lt!754023))))))

(declare-fun e!1268890 () List!22143)

(assert (=> d!613145 (= lt!754161 e!1268890)))

(declare-fun c!324368 () Bool)

(assert (=> d!613145 (= c!324368 ((_ is Nil!22061) lt!754035))))

(assert (=> d!613145 (= (++!5953 lt!754035 lt!754023) lt!754161)))

(declare-fun b!2008225 () Bool)

(assert (=> b!2008225 (= e!1268890 (Cons!22061 (h!27462 lt!754035) (++!5953 (t!187320 lt!754035) lt!754023)))))

(declare-fun b!2008224 () Bool)

(assert (=> b!2008224 (= e!1268890 lt!754023)))

(assert (= (and d!613145 c!324368) b!2008224))

(assert (= (and d!613145 (not c!324368)) b!2008225))

(assert (= (and d!613145 res!880747) b!2008226))

(assert (= (and b!2008226 res!880746) b!2008227))

(declare-fun m!2440411 () Bool)

(assert (=> b!2008226 m!2440411))

(assert (=> b!2008226 m!2440407))

(declare-fun m!2440413 () Bool)

(assert (=> b!2008226 m!2440413))

(declare-fun m!2440415 () Bool)

(assert (=> d!613145 m!2440415))

(declare-fun m!2440417 () Bool)

(assert (=> d!613145 m!2440417))

(declare-fun m!2440419 () Bool)

(assert (=> d!613145 m!2440419))

(declare-fun m!2440421 () Bool)

(assert (=> b!2008225 m!2440421))

(assert (=> b!2007915 d!613145))

(declare-fun d!613147 () Bool)

(declare-fun e!1268892 () Bool)

(assert (=> d!613147 e!1268892))

(declare-fun res!880749 () Bool)

(assert (=> d!613147 (=> res!880749 e!1268892)))

(declare-fun lt!754163 () Option!4601)

(assert (=> d!613147 (= res!880749 (isEmpty!13682 lt!754163))))

(declare-fun e!1268895 () Option!4601)

(assert (=> d!613147 (= lt!754163 e!1268895)))

(declare-fun c!324369 () Bool)

(assert (=> d!613147 (= c!324369 (and ((_ is Cons!22063) rules!3198) (= (tag!4424 (h!27464 rules!3198)) (tag!4424 (rule!6185 (h!27463 tokens!598))))))))

(assert (=> d!613147 (rulesInvariant!3180 thiss!23328 rules!3198)))

(assert (=> d!613147 (= (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))) lt!754163)))

(declare-fun b!2008228 () Bool)

(declare-fun e!1268893 () Option!4601)

(assert (=> b!2008228 (= e!1268893 None!4600)))

(declare-fun b!2008229 () Bool)

(declare-fun e!1268894 () Bool)

(assert (=> b!2008229 (= e!1268892 e!1268894)))

(declare-fun res!880748 () Bool)

(assert (=> b!2008229 (=> (not res!880748) (not e!1268894))))

(assert (=> b!2008229 (= res!880748 (contains!4032 rules!3198 (get!6972 lt!754163)))))

(declare-fun b!2008230 () Bool)

(declare-fun lt!754164 () Unit!36620)

(declare-fun lt!754162 () Unit!36620)

(assert (=> b!2008230 (= lt!754164 lt!754162)))

(assert (=> b!2008230 (rulesInvariant!3180 thiss!23328 (t!187322 rules!3198))))

(assert (=> b!2008230 (= lt!754162 (lemmaInvariantOnRulesThenOnTail!288 thiss!23328 (h!27464 rules!3198) (t!187322 rules!3198)))))

(assert (=> b!2008230 (= e!1268893 (getRuleFromTag!775 thiss!23328 (t!187322 rules!3198) (tag!4424 (rule!6185 (h!27463 tokens!598)))))))

(declare-fun b!2008231 () Bool)

(assert (=> b!2008231 (= e!1268895 e!1268893)))

(declare-fun c!324370 () Bool)

(assert (=> b!2008231 (= c!324370 (and ((_ is Cons!22063) rules!3198) (not (= (tag!4424 (h!27464 rules!3198)) (tag!4424 (rule!6185 (h!27463 tokens!598)))))))))

(declare-fun b!2008232 () Bool)

(assert (=> b!2008232 (= e!1268894 (= (tag!4424 (get!6972 lt!754163)) (tag!4424 (rule!6185 (h!27463 tokens!598)))))))

(declare-fun b!2008233 () Bool)

(assert (=> b!2008233 (= e!1268895 (Some!4600 (h!27464 rules!3198)))))

(assert (= (and d!613147 c!324369) b!2008233))

(assert (= (and d!613147 (not c!324369)) b!2008231))

(assert (= (and b!2008231 c!324370) b!2008230))

(assert (= (and b!2008231 (not c!324370)) b!2008228))

(assert (= (and d!613147 (not res!880749)) b!2008229))

(assert (= (and b!2008229 res!880748) b!2008232))

(declare-fun m!2440423 () Bool)

(assert (=> d!613147 m!2440423))

(assert (=> d!613147 m!2439983))

(declare-fun m!2440425 () Bool)

(assert (=> b!2008229 m!2440425))

(assert (=> b!2008229 m!2440425))

(declare-fun m!2440427 () Bool)

(assert (=> b!2008229 m!2440427))

(assert (=> b!2008230 m!2440361))

(assert (=> b!2008230 m!2440363))

(declare-fun m!2440429 () Bool)

(assert (=> b!2008230 m!2440429))

(assert (=> b!2008232 m!2440425))

(assert (=> b!2007915 d!613147))

(declare-fun b!2008249 () Bool)

(declare-fun e!1268903 () Bool)

(assert (=> b!2008249 (= e!1268903 true)))

(declare-fun d!613149 () Bool)

(assert (=> d!613149 e!1268903))

(assert (= d!613149 b!2008249))

(declare-fun lambda!76036 () Int)

(declare-fun order!14007 () Int)

(declare-fun dynLambda!10862 (Int Int) Int)

(assert (=> b!2008249 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (dynLambda!10862 order!14007 lambda!76036))))

(assert (=> b!2008249 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (dynLambda!10862 order!14007 lambda!76036))))

(assert (=> d!613149 (= (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))))))

(declare-fun lt!754172 () Unit!36620)

(declare-fun Forall2of!223 (Int BalanceConc!14558 BalanceConc!14558) Unit!36620)

(assert (=> d!613149 (= lt!754172 (Forall2of!223 lambda!76036 lt!754026 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))))))

(assert (=> d!613149 (= (list!8981 lt!754026) (list!8981 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))))))

(assert (=> d!613149 (= (lemmaEqSameImage!646 (transformation!3960 (rule!6185 (h!27463 tokens!598))) lt!754026 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))) lt!754172)))

(declare-fun b_lambda!66981 () Bool)

(assert (=> (not b_lambda!66981) (not d!613149)))

(assert (=> d!613149 t!187332))

(declare-fun b_and!158521 () Bool)

(assert (= b_and!158491 (and (=> t!187332 result!150212) b_and!158521)))

(assert (=> d!613149 t!187334))

(declare-fun b_and!158523 () Bool)

(assert (= b_and!158493 (and (=> t!187334 result!150216) b_and!158523)))

(assert (=> d!613149 t!187336))

(declare-fun b_and!158525 () Bool)

(assert (= b_and!158495 (and (=> t!187336 result!150218) b_and!158525)))

(declare-fun b_lambda!66983 () Bool)

(assert (=> (not b_lambda!66983) (not d!613149)))

(declare-fun t!187366 () Bool)

(declare-fun tb!125373 () Bool)

(assert (=> (and b!2007921 (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187366) tb!125373))

(declare-fun result!150246 () Bool)

(assert (=> tb!125373 (= result!150246 (inv!21 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))))

(declare-fun m!2440463 () Bool)

(assert (=> tb!125373 m!2440463))

(assert (=> d!613149 t!187366))

(declare-fun b_and!158527 () Bool)

(assert (= b_and!158521 (and (=> t!187366 result!150246) b_and!158527)))

(declare-fun tb!125375 () Bool)

(declare-fun t!187368 () Bool)

(assert (=> (and b!2007923 (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187368) tb!125375))

(declare-fun result!150248 () Bool)

(assert (= result!150248 result!150246))

(assert (=> d!613149 t!187368))

(declare-fun b_and!158529 () Bool)

(assert (= b_and!158523 (and (=> t!187368 result!150248) b_and!158529)))

(declare-fun t!187370 () Bool)

(declare-fun tb!125377 () Bool)

(assert (=> (and b!2007925 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187370) tb!125377))

(declare-fun result!150250 () Bool)

(assert (= result!150250 result!150246))

(assert (=> d!613149 t!187370))

(declare-fun b_and!158531 () Bool)

(assert (= b_and!158525 (and (=> t!187370 result!150250) b_and!158531)))

(assert (=> d!613149 m!2440005))

(declare-fun m!2440465 () Bool)

(assert (=> d!613149 m!2440465))

(assert (=> d!613149 m!2440005))

(declare-fun m!2440467 () Bool)

(assert (=> d!613149 m!2440467))

(assert (=> d!613149 m!2440005))

(declare-fun m!2440469 () Bool)

(assert (=> d!613149 m!2440469))

(assert (=> d!613149 m!2440179))

(assert (=> d!613149 m!2440009))

(assert (=> b!2007915 d!613149))

(declare-fun d!613153 () Bool)

(declare-fun lt!754178 () Bool)

(assert (=> d!613153 (= lt!754178 (select (content!3231 lt!754030) lt!754022))))

(declare-fun e!1268912 () Bool)

(assert (=> d!613153 (= lt!754178 e!1268912)))

(declare-fun res!880765 () Bool)

(assert (=> d!613153 (=> (not res!880765) (not e!1268912))))

(assert (=> d!613153 (= res!880765 ((_ is Cons!22061) lt!754030))))

(assert (=> d!613153 (= (contains!4030 lt!754030 lt!754022) lt!754178)))

(declare-fun b!2008256 () Bool)

(declare-fun e!1268911 () Bool)

(assert (=> b!2008256 (= e!1268912 e!1268911)))

(declare-fun res!880766 () Bool)

(assert (=> b!2008256 (=> res!880766 e!1268911)))

(assert (=> b!2008256 (= res!880766 (= (h!27462 lt!754030) lt!754022))))

(declare-fun b!2008257 () Bool)

(assert (=> b!2008257 (= e!1268911 (contains!4030 (t!187320 lt!754030) lt!754022))))

(assert (= (and d!613153 res!880765) b!2008256))

(assert (= (and b!2008256 (not res!880766)) b!2008257))

(declare-fun m!2440471 () Bool)

(assert (=> d!613153 m!2440471))

(declare-fun m!2440473 () Bool)

(assert (=> d!613153 m!2440473))

(declare-fun m!2440475 () Bool)

(assert (=> b!2008257 m!2440475))

(assert (=> b!2007914 d!613153))

(declare-fun d!613155 () Bool)

(declare-fun res!880771 () Bool)

(declare-fun e!1268922 () Bool)

(assert (=> d!613155 (=> (not res!880771) (not e!1268922))))

(declare-fun isEmpty!13686 (List!22143) Bool)

(assert (=> d!613155 (= res!880771 (not (isEmpty!13686 (originalCharacters!4767 (h!27463 tokens!598)))))))

(assert (=> d!613155 (= (inv!29220 (h!27463 tokens!598)) e!1268922)))

(declare-fun b!2008269 () Bool)

(declare-fun res!880772 () Bool)

(assert (=> b!2008269 (=> (not res!880772) (not e!1268922))))

(assert (=> b!2008269 (= res!880772 (= (originalCharacters!4767 (h!27463 tokens!598)) (list!8981 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))))))

(declare-fun b!2008270 () Bool)

(assert (=> b!2008270 (= e!1268922 (= (size!17246 (h!27463 tokens!598)) (size!17248 (originalCharacters!4767 (h!27463 tokens!598)))))))

(assert (= (and d!613155 res!880771) b!2008269))

(assert (= (and b!2008269 res!880772) b!2008270))

(declare-fun b_lambda!66989 () Bool)

(assert (=> (not b_lambda!66989) (not b!2008269)))

(assert (=> b!2008269 t!187360))

(declare-fun b_and!158545 () Bool)

(assert (= b_and!158515 (and (=> t!187360 result!150240) b_and!158545)))

(assert (=> b!2008269 t!187362))

(declare-fun b_and!158547 () Bool)

(assert (= b_and!158517 (and (=> t!187362 result!150242) b_and!158547)))

(assert (=> b!2008269 t!187364))

(declare-fun b_and!158549 () Bool)

(assert (= b_and!158519 (and (=> t!187364 result!150244) b_and!158549)))

(declare-fun m!2440491 () Bool)

(assert (=> d!613155 m!2440491))

(assert (=> b!2008269 m!2440373))

(assert (=> b!2008269 m!2440373))

(declare-fun m!2440493 () Bool)

(assert (=> b!2008269 m!2440493))

(declare-fun m!2440495 () Bool)

(assert (=> b!2008270 m!2440495))

(assert (=> b!2007916 d!613155))

(declare-fun bs!419632 () Bool)

(declare-fun d!613161 () Bool)

(assert (= bs!419632 (and d!613161 b!2007920)))

(declare-fun lambda!76045 () Int)

(assert (=> bs!419632 (not (= lambda!76045 lambda!76021))))

(declare-fun bs!419633 () Bool)

(assert (= bs!419633 (and d!613161 b!2008072)))

(assert (=> bs!419633 (= lambda!76045 lambda!76030)))

(declare-fun b!2008362 () Bool)

(declare-fun e!1268975 () Bool)

(assert (=> b!2008362 (= e!1268975 true)))

(declare-fun b!2008361 () Bool)

(declare-fun e!1268974 () Bool)

(assert (=> b!2008361 (= e!1268974 e!1268975)))

(declare-fun b!2008360 () Bool)

(declare-fun e!1268973 () Bool)

(assert (=> b!2008360 (= e!1268973 e!1268974)))

(assert (=> d!613161 e!1268973))

(assert (= b!2008361 b!2008362))

(assert (= b!2008360 b!2008361))

(assert (= (and d!613161 ((_ is Cons!22063) rules!3198)) b!2008360))

(assert (=> b!2008362 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10858 order!14005 lambda!76045))))

(assert (=> b!2008362 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10858 order!14005 lambda!76045))))

(assert (=> d!613161 true))

(declare-fun lt!754195 () Bool)

(assert (=> d!613161 (= lt!754195 (forall!4686 tokens!598 lambda!76045))))

(declare-fun e!1268971 () Bool)

(assert (=> d!613161 (= lt!754195 e!1268971)))

(declare-fun res!880826 () Bool)

(assert (=> d!613161 (=> res!880826 e!1268971)))

(assert (=> d!613161 (= res!880826 (not ((_ is Cons!22062) tokens!598)))))

(assert (=> d!613161 (not (isEmpty!13680 rules!3198))))

(assert (=> d!613161 (= (rulesProduceEachTokenIndividuallyList!1304 thiss!23328 rules!3198 tokens!598) lt!754195)))

(declare-fun b!2008358 () Bool)

(declare-fun e!1268972 () Bool)

(assert (=> b!2008358 (= e!1268971 e!1268972)))

(declare-fun res!880827 () Bool)

(assert (=> b!2008358 (=> (not res!880827) (not e!1268972))))

(assert (=> b!2008358 (= res!880827 (rulesProduceIndividualToken!1745 thiss!23328 rules!3198 (h!27463 tokens!598)))))

(declare-fun b!2008359 () Bool)

(assert (=> b!2008359 (= e!1268972 (rulesProduceEachTokenIndividuallyList!1304 thiss!23328 rules!3198 (t!187321 tokens!598)))))

(assert (= (and d!613161 (not res!880826)) b!2008358))

(assert (= (and b!2008358 res!880827) b!2008359))

(declare-fun m!2440589 () Bool)

(assert (=> d!613161 m!2440589))

(assert (=> d!613161 m!2440071))

(declare-fun m!2440591 () Bool)

(assert (=> b!2008358 m!2440591))

(declare-fun m!2440593 () Bool)

(assert (=> b!2008359 m!2440593))

(assert (=> b!2007927 d!613161))

(declare-fun b!2008391 () Bool)

(declare-fun e!1268993 () Bool)

(assert (=> b!2008391 (= e!1268993 (= (head!4536 lt!754030) (c!324301 (regex!3960 lt!754036))))))

(declare-fun b!2008392 () Bool)

(declare-fun e!1268994 () Bool)

(declare-fun lt!754198 () Bool)

(assert (=> b!2008392 (= e!1268994 (not lt!754198))))

(declare-fun b!2008393 () Bool)

(declare-fun res!880846 () Bool)

(declare-fun e!1268996 () Bool)

(assert (=> b!2008393 (=> res!880846 e!1268996)))

(assert (=> b!2008393 (= res!880846 (not ((_ is ElementMatch!5385) (regex!3960 lt!754036))))))

(assert (=> b!2008393 (= e!1268994 e!1268996)))

(declare-fun d!613187 () Bool)

(declare-fun e!1268991 () Bool)

(assert (=> d!613187 e!1268991))

(declare-fun c!324395 () Bool)

(assert (=> d!613187 (= c!324395 ((_ is EmptyExpr!5385) (regex!3960 lt!754036)))))

(declare-fun e!1268990 () Bool)

(assert (=> d!613187 (= lt!754198 e!1268990)))

(declare-fun c!324393 () Bool)

(assert (=> d!613187 (= c!324393 (isEmpty!13686 lt!754030))))

(assert (=> d!613187 (validRegex!2157 (regex!3960 lt!754036))))

(assert (=> d!613187 (= (matchR!2651 (regex!3960 lt!754036) lt!754030) lt!754198)))

(declare-fun b!2008394 () Bool)

(declare-fun res!880850 () Bool)

(assert (=> b!2008394 (=> (not res!880850) (not e!1268993))))

(declare-fun tail!3022 (List!22143) List!22143)

(assert (=> b!2008394 (= res!880850 (isEmpty!13686 (tail!3022 lt!754030)))))

(declare-fun b!2008395 () Bool)

(declare-fun res!880849 () Bool)

(declare-fun e!1268995 () Bool)

(assert (=> b!2008395 (=> res!880849 e!1268995)))

(assert (=> b!2008395 (= res!880849 (not (isEmpty!13686 (tail!3022 lt!754030))))))

(declare-fun b!2008396 () Bool)

(declare-fun res!880845 () Bool)

(assert (=> b!2008396 (=> res!880845 e!1268996)))

(assert (=> b!2008396 (= res!880845 e!1268993)))

(declare-fun res!880847 () Bool)

(assert (=> b!2008396 (=> (not res!880847) (not e!1268993))))

(assert (=> b!2008396 (= res!880847 lt!754198)))

(declare-fun b!2008397 () Bool)

(declare-fun derivativeStep!1390 (Regex!5385 C!10916) Regex!5385)

(assert (=> b!2008397 (= e!1268990 (matchR!2651 (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030)) (tail!3022 lt!754030)))))

(declare-fun b!2008398 () Bool)

(declare-fun e!1268992 () Bool)

(assert (=> b!2008398 (= e!1268996 e!1268992)))

(declare-fun res!880851 () Bool)

(assert (=> b!2008398 (=> (not res!880851) (not e!1268992))))

(assert (=> b!2008398 (= res!880851 (not lt!754198))))

(declare-fun b!2008399 () Bool)

(assert (=> b!2008399 (= e!1268992 e!1268995)))

(declare-fun res!880848 () Bool)

(assert (=> b!2008399 (=> res!880848 e!1268995)))

(declare-fun call!122801 () Bool)

(assert (=> b!2008399 (= res!880848 call!122801)))

(declare-fun b!2008400 () Bool)

(assert (=> b!2008400 (= e!1268991 e!1268994)))

(declare-fun c!324394 () Bool)

(assert (=> b!2008400 (= c!324394 ((_ is EmptyLang!5385) (regex!3960 lt!754036)))))

(declare-fun b!2008401 () Bool)

(declare-fun res!880844 () Bool)

(assert (=> b!2008401 (=> (not res!880844) (not e!1268993))))

(assert (=> b!2008401 (= res!880844 (not call!122801))))

(declare-fun b!2008402 () Bool)

(assert (=> b!2008402 (= e!1268995 (not (= (head!4536 lt!754030) (c!324301 (regex!3960 lt!754036)))))))

(declare-fun bm!122796 () Bool)

(assert (=> bm!122796 (= call!122801 (isEmpty!13686 lt!754030))))

(declare-fun b!2008403 () Bool)

(assert (=> b!2008403 (= e!1268991 (= lt!754198 call!122801))))

(declare-fun b!2008404 () Bool)

(declare-fun nullable!1631 (Regex!5385) Bool)

(assert (=> b!2008404 (= e!1268990 (nullable!1631 (regex!3960 lt!754036)))))

(assert (= (and d!613187 c!324393) b!2008404))

(assert (= (and d!613187 (not c!324393)) b!2008397))

(assert (= (and d!613187 c!324395) b!2008403))

(assert (= (and d!613187 (not c!324395)) b!2008400))

(assert (= (and b!2008400 c!324394) b!2008392))

(assert (= (and b!2008400 (not c!324394)) b!2008393))

(assert (= (and b!2008393 (not res!880846)) b!2008396))

(assert (= (and b!2008396 res!880847) b!2008401))

(assert (= (and b!2008401 res!880844) b!2008394))

(assert (= (and b!2008394 res!880850) b!2008391))

(assert (= (and b!2008396 (not res!880845)) b!2008398))

(assert (= (and b!2008398 res!880851) b!2008399))

(assert (= (and b!2008399 (not res!880848)) b!2008395))

(assert (= (and b!2008395 (not res!880849)) b!2008402))

(assert (= (or b!2008403 b!2008399 b!2008401) bm!122796))

(assert (=> b!2008397 m!2440063))

(assert (=> b!2008397 m!2440063))

(declare-fun m!2440595 () Bool)

(assert (=> b!2008397 m!2440595))

(declare-fun m!2440597 () Bool)

(assert (=> b!2008397 m!2440597))

(assert (=> b!2008397 m!2440595))

(assert (=> b!2008397 m!2440597))

(declare-fun m!2440599 () Bool)

(assert (=> b!2008397 m!2440599))

(assert (=> b!2008391 m!2440063))

(declare-fun m!2440601 () Bool)

(assert (=> b!2008404 m!2440601))

(declare-fun m!2440603 () Bool)

(assert (=> d!613187 m!2440603))

(declare-fun m!2440605 () Bool)

(assert (=> d!613187 m!2440605))

(assert (=> bm!122796 m!2440603))

(assert (=> b!2008402 m!2440063))

(assert (=> b!2008395 m!2440597))

(assert (=> b!2008395 m!2440597))

(declare-fun m!2440607 () Bool)

(assert (=> b!2008395 m!2440607))

(assert (=> b!2008394 m!2440597))

(assert (=> b!2008394 m!2440597))

(assert (=> b!2008394 m!2440607))

(assert (=> b!2007926 d!613187))

(declare-fun d!613189 () Bool)

(assert (=> d!613189 (= (get!6972 lt!754031) (v!26837 lt!754031))))

(assert (=> b!2007926 d!613189))

(declare-fun d!613191 () Bool)

(assert (=> d!613191 (= (isEmpty!13680 rules!3198) ((_ is Nil!22063) rules!3198))))

(assert (=> b!2007917 d!613191))

(declare-fun d!613193 () Bool)

(assert (=> d!613193 (= (inv!29216 (tag!4424 (rule!6185 (h!27463 tokens!598)))) (= (mod (str.len (value!124450 (tag!4424 (rule!6185 (h!27463 tokens!598))))) 2) 0))))

(assert (=> b!2007908 d!613193))

(declare-fun d!613195 () Bool)

(declare-fun res!880854 () Bool)

(declare-fun e!1268999 () Bool)

(assert (=> d!613195 (=> (not res!880854) (not e!1268999))))

(declare-fun semiInverseModEq!1587 (Int Int) Bool)

(assert (=> d!613195 (= res!880854 (semiInverseModEq!1587 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))))))

(assert (=> d!613195 (= (inv!29219 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) e!1268999)))

(declare-fun b!2008407 () Bool)

(declare-fun equivClasses!1514 (Int Int) Bool)

(assert (=> b!2008407 (= e!1268999 (equivClasses!1514 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))))))

(assert (= (and d!613195 res!880854) b!2008407))

(declare-fun m!2440609 () Bool)

(assert (=> d!613195 m!2440609))

(declare-fun m!2440611 () Bool)

(assert (=> b!2008407 m!2440611))

(assert (=> b!2007908 d!613195))

(declare-fun d!613197 () Bool)

(assert (=> d!613197 (= (get!6973 lt!754032) (v!26838 lt!754032))))

(assert (=> b!2007919 d!613197))

(declare-fun d!613199 () Bool)

(assert (=> d!613199 (= (inv!29216 (tag!4424 (rule!6185 separatorToken!354))) (= (mod (str.len (value!124450 (tag!4424 (rule!6185 separatorToken!354)))) 2) 0))))

(assert (=> b!2007929 d!613199))

(declare-fun d!613201 () Bool)

(declare-fun res!880855 () Bool)

(declare-fun e!1269000 () Bool)

(assert (=> d!613201 (=> (not res!880855) (not e!1269000))))

(assert (=> d!613201 (= res!880855 (semiInverseModEq!1587 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354)))))))

(assert (=> d!613201 (= (inv!29219 (transformation!3960 (rule!6185 separatorToken!354))) e!1269000)))

(declare-fun b!2008408 () Bool)

(assert (=> b!2008408 (= e!1269000 (equivClasses!1514 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354)))))))

(assert (= (and d!613201 res!880855) b!2008408))

(declare-fun m!2440613 () Bool)

(assert (=> d!613201 m!2440613))

(declare-fun m!2440615 () Bool)

(assert (=> b!2008408 m!2440615))

(assert (=> b!2007929 d!613201))

(declare-fun d!613203 () Bool)

(declare-fun res!880860 () Bool)

(declare-fun e!1269005 () Bool)

(assert (=> d!613203 (=> res!880860 e!1269005)))

(assert (=> d!613203 (= res!880860 ((_ is Nil!22062) tokens!598))))

(assert (=> d!613203 (= (forall!4686 tokens!598 lambda!76021) e!1269005)))

(declare-fun b!2008413 () Bool)

(declare-fun e!1269006 () Bool)

(assert (=> b!2008413 (= e!1269005 e!1269006)))

(declare-fun res!880861 () Bool)

(assert (=> b!2008413 (=> (not res!880861) (not e!1269006))))

(declare-fun dynLambda!10864 (Int Token!7472) Bool)

(assert (=> b!2008413 (= res!880861 (dynLambda!10864 lambda!76021 (h!27463 tokens!598)))))

(declare-fun b!2008414 () Bool)

(assert (=> b!2008414 (= e!1269006 (forall!4686 (t!187321 tokens!598) lambda!76021))))

(assert (= (and d!613203 (not res!880860)) b!2008413))

(assert (= (and b!2008413 res!880861) b!2008414))

(declare-fun b_lambda!67001 () Bool)

(assert (=> (not b_lambda!67001) (not b!2008413)))

(declare-fun m!2440617 () Bool)

(assert (=> b!2008413 m!2440617))

(declare-fun m!2440619 () Bool)

(assert (=> b!2008414 m!2440619))

(assert (=> b!2007920 d!613203))

(declare-fun d!613205 () Bool)

(declare-fun res!880864 () Bool)

(declare-fun e!1269009 () Bool)

(assert (=> d!613205 (=> (not res!880864) (not e!1269009))))

(declare-fun rulesValid!1474 (LexerInterface!3573 List!22145) Bool)

(assert (=> d!613205 (= res!880864 (rulesValid!1474 thiss!23328 rules!3198))))

(assert (=> d!613205 (= (rulesInvariant!3180 thiss!23328 rules!3198) e!1269009)))

(declare-fun b!2008417 () Bool)

(declare-datatypes ((List!22147 0))(
  ( (Nil!22065) (Cons!22065 (h!27466 String!25598) (t!187434 List!22147)) )
))
(declare-fun noDuplicateTag!1472 (LexerInterface!3573 List!22145 List!22147) Bool)

(assert (=> b!2008417 (= e!1269009 (noDuplicateTag!1472 thiss!23328 rules!3198 Nil!22065))))

(assert (= (and d!613205 res!880864) b!2008417))

(declare-fun m!2440621 () Bool)

(assert (=> d!613205 m!2440621))

(declare-fun m!2440623 () Bool)

(assert (=> b!2008417 m!2440623))

(assert (=> b!2007931 d!613205))

(declare-fun d!613207 () Bool)

(assert (=> d!613207 (= (++!5953 (++!5953 lt!754035 lt!754030) lt!754023) (++!5953 lt!754035 (++!5953 lt!754030 lt!754023)))))

(declare-fun lt!754201 () Unit!36620)

(declare-fun choose!12234 (List!22143 List!22143 List!22143) Unit!36620)

(assert (=> d!613207 (= lt!754201 (choose!12234 lt!754035 lt!754030 lt!754023))))

(assert (=> d!613207 (= (lemmaConcatAssociativity!1223 lt!754035 lt!754030 lt!754023) lt!754201)))

(declare-fun bs!419634 () Bool)

(assert (= bs!419634 d!613207))

(assert (=> bs!419634 m!2440059))

(assert (=> bs!419634 m!2440061))

(declare-fun m!2440625 () Bool)

(assert (=> bs!419634 m!2440625))

(assert (=> bs!419634 m!2440059))

(assert (=> bs!419634 m!2440065))

(assert (=> bs!419634 m!2440069))

(assert (=> bs!419634 m!2440065))

(assert (=> b!2007930 d!613207))

(declare-fun b!2008420 () Bool)

(declare-fun res!880865 () Bool)

(declare-fun e!1269011 () Bool)

(assert (=> b!2008420 (=> (not res!880865) (not e!1269011))))

(declare-fun lt!754202 () List!22143)

(assert (=> b!2008420 (= res!880865 (= (size!17248 lt!754202) (+ (size!17248 lt!754035) (size!17248 lt!754030))))))

(declare-fun b!2008421 () Bool)

(assert (=> b!2008421 (= e!1269011 (or (not (= lt!754030 Nil!22061)) (= lt!754202 lt!754035)))))

(declare-fun d!613209 () Bool)

(assert (=> d!613209 e!1269011))

(declare-fun res!880866 () Bool)

(assert (=> d!613209 (=> (not res!880866) (not e!1269011))))

(assert (=> d!613209 (= res!880866 (= (content!3231 lt!754202) ((_ map or) (content!3231 lt!754035) (content!3231 lt!754030))))))

(declare-fun e!1269010 () List!22143)

(assert (=> d!613209 (= lt!754202 e!1269010)))

(declare-fun c!324396 () Bool)

(assert (=> d!613209 (= c!324396 ((_ is Nil!22061) lt!754035))))

(assert (=> d!613209 (= (++!5953 lt!754035 lt!754030) lt!754202)))

(declare-fun b!2008419 () Bool)

(assert (=> b!2008419 (= e!1269010 (Cons!22061 (h!27462 lt!754035) (++!5953 (t!187320 lt!754035) lt!754030)))))

(declare-fun b!2008418 () Bool)

(assert (=> b!2008418 (= e!1269010 lt!754030)))

(assert (= (and d!613209 c!324396) b!2008418))

(assert (= (and d!613209 (not c!324396)) b!2008419))

(assert (= (and d!613209 res!880866) b!2008420))

(assert (= (and b!2008420 res!880865) b!2008421))

(declare-fun m!2440627 () Bool)

(assert (=> b!2008420 m!2440627))

(assert (=> b!2008420 m!2440407))

(declare-fun m!2440629 () Bool)

(assert (=> b!2008420 m!2440629))

(declare-fun m!2440631 () Bool)

(assert (=> d!613209 m!2440631))

(assert (=> d!613209 m!2440417))

(assert (=> d!613209 m!2440471))

(declare-fun m!2440633 () Bool)

(assert (=> b!2008419 m!2440633))

(assert (=> b!2007930 d!613209))

(declare-fun b!2008447 () Bool)

(declare-fun e!1269027 () List!22143)

(assert (=> b!2008447 (= e!1269027 (Cons!22061 (c!324301 (regex!3960 (rule!6185 separatorToken!354))) Nil!22061))))

(declare-fun d!613211 () Bool)

(declare-fun c!324408 () Bool)

(assert (=> d!613211 (= c!324408 (or ((_ is EmptyExpr!5385) (regex!3960 (rule!6185 separatorToken!354))) ((_ is EmptyLang!5385) (regex!3960 (rule!6185 separatorToken!354)))))))

(declare-fun e!1269026 () List!22143)

(assert (=> d!613211 (= (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354))) e!1269026)))

(declare-fun c!324407 () Bool)

(declare-fun c!324405 () Bool)

(declare-fun call!122812 () List!22143)

(declare-fun bm!122805 () Bool)

(assert (=> bm!122805 (= call!122812 (usedCharacters!398 (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(declare-fun b!2008448 () Bool)

(declare-fun e!1269028 () List!22143)

(declare-fun e!1269029 () List!22143)

(assert (=> b!2008448 (= e!1269028 e!1269029)))

(assert (=> b!2008448 (= c!324405 ((_ is Union!5385) (regex!3960 (rule!6185 separatorToken!354))))))

(declare-fun b!2008449 () Bool)

(assert (=> b!2008449 (= e!1269028 call!122812)))

(declare-fun b!2008450 () Bool)

(assert (=> b!2008450 (= e!1269026 Nil!22061)))

(declare-fun b!2008451 () Bool)

(declare-fun call!122813 () List!22143)

(assert (=> b!2008451 (= e!1269029 call!122813)))

(declare-fun bm!122806 () Bool)

(declare-fun call!122811 () List!22143)

(assert (=> bm!122806 (= call!122811 call!122812)))

(declare-fun b!2008452 () Bool)

(assert (=> b!2008452 (= e!1269029 call!122813)))

(declare-fun b!2008453 () Bool)

(assert (=> b!2008453 (= e!1269026 e!1269027)))

(declare-fun c!324406 () Bool)

(assert (=> b!2008453 (= c!324406 ((_ is ElementMatch!5385) (regex!3960 (rule!6185 separatorToken!354))))))

(declare-fun bm!122807 () Bool)

(declare-fun call!122810 () List!22143)

(assert (=> bm!122807 (= call!122813 (++!5953 (ite c!324405 call!122811 call!122810) (ite c!324405 call!122810 call!122811)))))

(declare-fun b!2008454 () Bool)

(assert (=> b!2008454 (= c!324407 ((_ is Star!5385) (regex!3960 (rule!6185 separatorToken!354))))))

(assert (=> b!2008454 (= e!1269027 e!1269028)))

(declare-fun bm!122808 () Bool)

(assert (=> bm!122808 (= call!122810 (usedCharacters!398 (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))))))

(assert (= (and d!613211 c!324408) b!2008450))

(assert (= (and d!613211 (not c!324408)) b!2008453))

(assert (= (and b!2008453 c!324406) b!2008447))

(assert (= (and b!2008453 (not c!324406)) b!2008454))

(assert (= (and b!2008454 c!324407) b!2008449))

(assert (= (and b!2008454 (not c!324407)) b!2008448))

(assert (= (and b!2008448 c!324405) b!2008451))

(assert (= (and b!2008448 (not c!324405)) b!2008452))

(assert (= (or b!2008451 b!2008452) bm!122806))

(assert (= (or b!2008451 b!2008452) bm!122808))

(assert (= (or b!2008451 b!2008452) bm!122807))

(assert (= (or b!2008449 bm!122806) bm!122805))

(declare-fun m!2440653 () Bool)

(assert (=> bm!122805 m!2440653))

(declare-fun m!2440655 () Bool)

(assert (=> bm!122807 m!2440655))

(declare-fun m!2440657 () Bool)

(assert (=> bm!122808 m!2440657))

(assert (=> b!2007930 d!613211))

(declare-fun b!2008471 () Bool)

(declare-fun res!880882 () Bool)

(declare-fun e!1269041 () Bool)

(assert (=> b!2008471 (=> (not res!880882) (not e!1269041))))

(declare-fun lt!754209 () List!22143)

(assert (=> b!2008471 (= res!880882 (= (size!17248 lt!754209) (+ (size!17248 (++!5953 lt!754035 lt!754030)) (size!17248 lt!754023))))))

(declare-fun b!2008472 () Bool)

(assert (=> b!2008472 (= e!1269041 (or (not (= lt!754023 Nil!22061)) (= lt!754209 (++!5953 lt!754035 lt!754030))))))

(declare-fun d!613215 () Bool)

(assert (=> d!613215 e!1269041))

(declare-fun res!880883 () Bool)

(assert (=> d!613215 (=> (not res!880883) (not e!1269041))))

(assert (=> d!613215 (= res!880883 (= (content!3231 lt!754209) ((_ map or) (content!3231 (++!5953 lt!754035 lt!754030)) (content!3231 lt!754023))))))

(declare-fun e!1269040 () List!22143)

(assert (=> d!613215 (= lt!754209 e!1269040)))

(declare-fun c!324413 () Bool)

(assert (=> d!613215 (= c!324413 ((_ is Nil!22061) (++!5953 lt!754035 lt!754030)))))

(assert (=> d!613215 (= (++!5953 (++!5953 lt!754035 lt!754030) lt!754023) lt!754209)))

(declare-fun b!2008470 () Bool)

(assert (=> b!2008470 (= e!1269040 (Cons!22061 (h!27462 (++!5953 lt!754035 lt!754030)) (++!5953 (t!187320 (++!5953 lt!754035 lt!754030)) lt!754023)))))

(declare-fun b!2008469 () Bool)

(assert (=> b!2008469 (= e!1269040 lt!754023)))

(assert (= (and d!613215 c!324413) b!2008469))

(assert (= (and d!613215 (not c!324413)) b!2008470))

(assert (= (and d!613215 res!880883) b!2008471))

(assert (= (and b!2008471 res!880882) b!2008472))

(declare-fun m!2440659 () Bool)

(assert (=> b!2008471 m!2440659))

(assert (=> b!2008471 m!2440065))

(declare-fun m!2440661 () Bool)

(assert (=> b!2008471 m!2440661))

(assert (=> b!2008471 m!2440413))

(declare-fun m!2440663 () Bool)

(assert (=> d!613215 m!2440663))

(assert (=> d!613215 m!2440065))

(declare-fun m!2440665 () Bool)

(assert (=> d!613215 m!2440665))

(assert (=> d!613215 m!2440419))

(declare-fun m!2440667 () Bool)

(assert (=> b!2008470 m!2440667))

(assert (=> b!2007930 d!613215))

(declare-fun b!2008479 () Bool)

(declare-fun res!880888 () Bool)

(declare-fun e!1269047 () Bool)

(assert (=> b!2008479 (=> (not res!880888) (not e!1269047))))

(declare-fun lt!754210 () List!22143)

(assert (=> b!2008479 (= res!880888 (= (size!17248 lt!754210) (+ (size!17248 lt!754030) (size!17248 lt!754023))))))

(declare-fun b!2008480 () Bool)

(assert (=> b!2008480 (= e!1269047 (or (not (= lt!754023 Nil!22061)) (= lt!754210 lt!754030)))))

(declare-fun d!613217 () Bool)

(assert (=> d!613217 e!1269047))

(declare-fun res!880889 () Bool)

(assert (=> d!613217 (=> (not res!880889) (not e!1269047))))

(assert (=> d!613217 (= res!880889 (= (content!3231 lt!754210) ((_ map or) (content!3231 lt!754030) (content!3231 lt!754023))))))

(declare-fun e!1269046 () List!22143)

(assert (=> d!613217 (= lt!754210 e!1269046)))

(declare-fun c!324414 () Bool)

(assert (=> d!613217 (= c!324414 ((_ is Nil!22061) lt!754030))))

(assert (=> d!613217 (= (++!5953 lt!754030 lt!754023) lt!754210)))

(declare-fun b!2008478 () Bool)

(assert (=> b!2008478 (= e!1269046 (Cons!22061 (h!27462 lt!754030) (++!5953 (t!187320 lt!754030) lt!754023)))))

(declare-fun b!2008477 () Bool)

(assert (=> b!2008477 (= e!1269046 lt!754023)))

(assert (= (and d!613217 c!324414) b!2008477))

(assert (= (and d!613217 (not c!324414)) b!2008478))

(assert (= (and d!613217 res!880889) b!2008479))

(assert (= (and b!2008479 res!880888) b!2008480))

(declare-fun m!2440669 () Bool)

(assert (=> b!2008479 m!2440669))

(assert (=> b!2008479 m!2440629))

(assert (=> b!2008479 m!2440413))

(declare-fun m!2440671 () Bool)

(assert (=> d!613217 m!2440671))

(assert (=> d!613217 m!2440471))

(assert (=> d!613217 m!2440419))

(declare-fun m!2440673 () Bool)

(assert (=> b!2008478 m!2440673))

(assert (=> b!2007930 d!613217))

(declare-fun b!2008483 () Bool)

(declare-fun res!880890 () Bool)

(declare-fun e!1269049 () Bool)

(assert (=> b!2008483 (=> (not res!880890) (not e!1269049))))

(declare-fun lt!754211 () List!22143)

(assert (=> b!2008483 (= res!880890 (= (size!17248 lt!754211) (+ (size!17248 lt!754035) (size!17248 (++!5953 lt!754030 lt!754023)))))))

(declare-fun b!2008484 () Bool)

(assert (=> b!2008484 (= e!1269049 (or (not (= (++!5953 lt!754030 lt!754023) Nil!22061)) (= lt!754211 lt!754035)))))

(declare-fun d!613219 () Bool)

(assert (=> d!613219 e!1269049))

(declare-fun res!880891 () Bool)

(assert (=> d!613219 (=> (not res!880891) (not e!1269049))))

(assert (=> d!613219 (= res!880891 (= (content!3231 lt!754211) ((_ map or) (content!3231 lt!754035) (content!3231 (++!5953 lt!754030 lt!754023)))))))

(declare-fun e!1269048 () List!22143)

(assert (=> d!613219 (= lt!754211 e!1269048)))

(declare-fun c!324415 () Bool)

(assert (=> d!613219 (= c!324415 ((_ is Nil!22061) lt!754035))))

(assert (=> d!613219 (= (++!5953 lt!754035 (++!5953 lt!754030 lt!754023)) lt!754211)))

(declare-fun b!2008482 () Bool)

(assert (=> b!2008482 (= e!1269048 (Cons!22061 (h!27462 lt!754035) (++!5953 (t!187320 lt!754035) (++!5953 lt!754030 lt!754023))))))

(declare-fun b!2008481 () Bool)

(assert (=> b!2008481 (= e!1269048 (++!5953 lt!754030 lt!754023))))

(assert (= (and d!613219 c!324415) b!2008481))

(assert (= (and d!613219 (not c!324415)) b!2008482))

(assert (= (and d!613219 res!880891) b!2008483))

(assert (= (and b!2008483 res!880890) b!2008484))

(declare-fun m!2440675 () Bool)

(assert (=> b!2008483 m!2440675))

(assert (=> b!2008483 m!2440407))

(assert (=> b!2008483 m!2440059))

(declare-fun m!2440677 () Bool)

(assert (=> b!2008483 m!2440677))

(declare-fun m!2440679 () Bool)

(assert (=> d!613219 m!2440679))

(assert (=> d!613219 m!2440417))

(assert (=> d!613219 m!2440059))

(declare-fun m!2440681 () Bool)

(assert (=> d!613219 m!2440681))

(assert (=> b!2008482 m!2440059))

(declare-fun m!2440683 () Bool)

(assert (=> b!2008482 m!2440683))

(assert (=> b!2007930 d!613219))

(declare-fun d!613221 () Bool)

(declare-fun lt!754212 () Bool)

(assert (=> d!613221 (= lt!754212 (select (content!3231 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))) lt!754022))))

(declare-fun e!1269051 () Bool)

(assert (=> d!613221 (= lt!754212 e!1269051)))

(declare-fun res!880892 () Bool)

(assert (=> d!613221 (=> (not res!880892) (not e!1269051))))

(assert (=> d!613221 (= res!880892 ((_ is Cons!22061) (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))))))

(assert (=> d!613221 (= (contains!4030 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354))) lt!754022) lt!754212)))

(declare-fun b!2008485 () Bool)

(declare-fun e!1269050 () Bool)

(assert (=> b!2008485 (= e!1269051 e!1269050)))

(declare-fun res!880893 () Bool)

(assert (=> b!2008485 (=> res!880893 e!1269050)))

(assert (=> b!2008485 (= res!880893 (= (h!27462 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))) lt!754022))))

(declare-fun b!2008486 () Bool)

(assert (=> b!2008486 (= e!1269050 (contains!4030 (t!187320 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))) lt!754022))))

(assert (= (and d!613221 res!880892) b!2008485))

(assert (= (and b!2008485 (not res!880893)) b!2008486))

(assert (=> d!613221 m!2440055))

(declare-fun m!2440685 () Bool)

(assert (=> d!613221 m!2440685))

(declare-fun m!2440687 () Bool)

(assert (=> d!613221 m!2440687))

(declare-fun m!2440689 () Bool)

(assert (=> b!2008486 m!2440689))

(assert (=> b!2007930 d!613221))

(declare-fun d!613223 () Bool)

(assert (=> d!613223 (= (head!4536 lt!754030) (h!27462 lt!754030))))

(assert (=> b!2007930 d!613223))

(declare-fun b!2008487 () Bool)

(declare-fun e!1269055 () Bool)

(assert (=> b!2008487 (= e!1269055 (= (head!4536 lt!754035) (c!324301 (regex!3960 lt!754033))))))

(declare-fun b!2008488 () Bool)

(declare-fun e!1269056 () Bool)

(declare-fun lt!754213 () Bool)

(assert (=> b!2008488 (= e!1269056 (not lt!754213))))

(declare-fun b!2008489 () Bool)

(declare-fun res!880896 () Bool)

(declare-fun e!1269058 () Bool)

(assert (=> b!2008489 (=> res!880896 e!1269058)))

(assert (=> b!2008489 (= res!880896 (not ((_ is ElementMatch!5385) (regex!3960 lt!754033))))))

(assert (=> b!2008489 (= e!1269056 e!1269058)))

(declare-fun d!613225 () Bool)

(declare-fun e!1269053 () Bool)

(assert (=> d!613225 e!1269053))

(declare-fun c!324418 () Bool)

(assert (=> d!613225 (= c!324418 ((_ is EmptyExpr!5385) (regex!3960 lt!754033)))))

(declare-fun e!1269052 () Bool)

(assert (=> d!613225 (= lt!754213 e!1269052)))

(declare-fun c!324416 () Bool)

(assert (=> d!613225 (= c!324416 (isEmpty!13686 lt!754035))))

(assert (=> d!613225 (validRegex!2157 (regex!3960 lt!754033))))

(assert (=> d!613225 (= (matchR!2651 (regex!3960 lt!754033) lt!754035) lt!754213)))

(declare-fun b!2008490 () Bool)

(declare-fun res!880900 () Bool)

(assert (=> b!2008490 (=> (not res!880900) (not e!1269055))))

(assert (=> b!2008490 (= res!880900 (isEmpty!13686 (tail!3022 lt!754035)))))

(declare-fun b!2008491 () Bool)

(declare-fun res!880899 () Bool)

(declare-fun e!1269057 () Bool)

(assert (=> b!2008491 (=> res!880899 e!1269057)))

(assert (=> b!2008491 (= res!880899 (not (isEmpty!13686 (tail!3022 lt!754035))))))

(declare-fun b!2008492 () Bool)

(declare-fun res!880895 () Bool)

(assert (=> b!2008492 (=> res!880895 e!1269058)))

(assert (=> b!2008492 (= res!880895 e!1269055)))

(declare-fun res!880897 () Bool)

(assert (=> b!2008492 (=> (not res!880897) (not e!1269055))))

(assert (=> b!2008492 (= res!880897 lt!754213)))

(declare-fun b!2008493 () Bool)

(assert (=> b!2008493 (= e!1269052 (matchR!2651 (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035)) (tail!3022 lt!754035)))))

(declare-fun b!2008494 () Bool)

(declare-fun e!1269054 () Bool)

(assert (=> b!2008494 (= e!1269058 e!1269054)))

(declare-fun res!880901 () Bool)

(assert (=> b!2008494 (=> (not res!880901) (not e!1269054))))

(assert (=> b!2008494 (= res!880901 (not lt!754213))))

(declare-fun b!2008495 () Bool)

(assert (=> b!2008495 (= e!1269054 e!1269057)))

(declare-fun res!880898 () Bool)

(assert (=> b!2008495 (=> res!880898 e!1269057)))

(declare-fun call!122820 () Bool)

(assert (=> b!2008495 (= res!880898 call!122820)))

(declare-fun b!2008496 () Bool)

(assert (=> b!2008496 (= e!1269053 e!1269056)))

(declare-fun c!324417 () Bool)

(assert (=> b!2008496 (= c!324417 ((_ is EmptyLang!5385) (regex!3960 lt!754033)))))

(declare-fun b!2008497 () Bool)

(declare-fun res!880894 () Bool)

(assert (=> b!2008497 (=> (not res!880894) (not e!1269055))))

(assert (=> b!2008497 (= res!880894 (not call!122820))))

(declare-fun b!2008498 () Bool)

(assert (=> b!2008498 (= e!1269057 (not (= (head!4536 lt!754035) (c!324301 (regex!3960 lt!754033)))))))

(declare-fun bm!122815 () Bool)

(assert (=> bm!122815 (= call!122820 (isEmpty!13686 lt!754035))))

(declare-fun b!2008499 () Bool)

(assert (=> b!2008499 (= e!1269053 (= lt!754213 call!122820))))

(declare-fun b!2008500 () Bool)

(assert (=> b!2008500 (= e!1269052 (nullable!1631 (regex!3960 lt!754033)))))

(assert (= (and d!613225 c!324416) b!2008500))

(assert (= (and d!613225 (not c!324416)) b!2008493))

(assert (= (and d!613225 c!324418) b!2008499))

(assert (= (and d!613225 (not c!324418)) b!2008496))

(assert (= (and b!2008496 c!324417) b!2008488))

(assert (= (and b!2008496 (not c!324417)) b!2008489))

(assert (= (and b!2008489 (not res!880896)) b!2008492))

(assert (= (and b!2008492 res!880897) b!2008497))

(assert (= (and b!2008497 res!880894) b!2008490))

(assert (= (and b!2008490 res!880900) b!2008487))

(assert (= (and b!2008492 (not res!880895)) b!2008494))

(assert (= (and b!2008494 res!880901) b!2008495))

(assert (= (and b!2008495 (not res!880898)) b!2008491))

(assert (= (and b!2008491 (not res!880899)) b!2008498))

(assert (= (or b!2008499 b!2008495 b!2008497) bm!122815))

(declare-fun m!2440691 () Bool)

(assert (=> b!2008493 m!2440691))

(assert (=> b!2008493 m!2440691))

(declare-fun m!2440693 () Bool)

(assert (=> b!2008493 m!2440693))

(declare-fun m!2440695 () Bool)

(assert (=> b!2008493 m!2440695))

(assert (=> b!2008493 m!2440693))

(assert (=> b!2008493 m!2440695))

(declare-fun m!2440697 () Bool)

(assert (=> b!2008493 m!2440697))

(assert (=> b!2008487 m!2440691))

(declare-fun m!2440699 () Bool)

(assert (=> b!2008500 m!2440699))

(declare-fun m!2440701 () Bool)

(assert (=> d!613225 m!2440701))

(declare-fun m!2440703 () Bool)

(assert (=> d!613225 m!2440703))

(assert (=> bm!122815 m!2440701))

(assert (=> b!2008498 m!2440691))

(assert (=> b!2008491 m!2440695))

(assert (=> b!2008491 m!2440695))

(declare-fun m!2440705 () Bool)

(assert (=> b!2008491 m!2440705))

(assert (=> b!2008490 m!2440695))

(assert (=> b!2008490 m!2440695))

(assert (=> b!2008490 m!2440705))

(assert (=> b!2007909 d!613225))

(declare-fun d!613227 () Bool)

(assert (=> d!613227 (= (get!6972 lt!754029) (v!26837 lt!754029))))

(assert (=> b!2007909 d!613227))

(declare-fun b!2008532 () Bool)

(declare-fun res!880913 () Bool)

(declare-fun e!1269080 () Bool)

(assert (=> b!2008532 (=> res!880913 e!1269080)))

(assert (=> b!2008532 (= res!880913 (not ((_ is IntegerValue!12290) (value!124451 (h!27463 tokens!598)))))))

(declare-fun e!1269081 () Bool)

(assert (=> b!2008532 (= e!1269081 e!1269080)))

(declare-fun b!2008533 () Bool)

(declare-fun inv!15 (TokenValue!4096) Bool)

(assert (=> b!2008533 (= e!1269080 (inv!15 (value!124451 (h!27463 tokens!598))))))

(declare-fun b!2008534 () Bool)

(declare-fun e!1269082 () Bool)

(assert (=> b!2008534 (= e!1269082 e!1269081)))

(declare-fun c!324429 () Bool)

(assert (=> b!2008534 (= c!324429 ((_ is IntegerValue!12289) (value!124451 (h!27463 tokens!598))))))

(declare-fun b!2008535 () Bool)

(declare-fun inv!16 (TokenValue!4096) Bool)

(assert (=> b!2008535 (= e!1269082 (inv!16 (value!124451 (h!27463 tokens!598))))))

(declare-fun d!613229 () Bool)

(declare-fun c!324430 () Bool)

(assert (=> d!613229 (= c!324430 ((_ is IntegerValue!12288) (value!124451 (h!27463 tokens!598))))))

(assert (=> d!613229 (= (inv!21 (value!124451 (h!27463 tokens!598))) e!1269082)))

(declare-fun b!2008536 () Bool)

(declare-fun inv!17 (TokenValue!4096) Bool)

(assert (=> b!2008536 (= e!1269081 (inv!17 (value!124451 (h!27463 tokens!598))))))

(assert (= (and d!613229 c!324430) b!2008535))

(assert (= (and d!613229 (not c!324430)) b!2008534))

(assert (= (and b!2008534 c!324429) b!2008536))

(assert (= (and b!2008534 (not c!324429)) b!2008532))

(assert (= (and b!2008532 (not res!880913)) b!2008533))

(declare-fun m!2440717 () Bool)

(assert (=> b!2008533 m!2440717))

(declare-fun m!2440719 () Bool)

(assert (=> b!2008535 m!2440719))

(declare-fun m!2440721 () Bool)

(assert (=> b!2008536 m!2440721))

(assert (=> b!2007932 d!613229))

(declare-fun b!2008573 () Bool)

(declare-fun e!1269114 () Bool)

(declare-fun e!1269113 () Bool)

(assert (=> b!2008573 (= e!1269114 e!1269113)))

(declare-fun res!880936 () Bool)

(assert (=> b!2008573 (=> (not res!880936) (not e!1269113))))

(declare-fun call!122832 () Bool)

(assert (=> b!2008573 (= res!880936 call!122832)))

(declare-fun b!2008574 () Bool)

(declare-fun e!1269111 () Bool)

(declare-fun e!1269112 () Bool)

(assert (=> b!2008574 (= e!1269111 e!1269112)))

(declare-fun c!324440 () Bool)

(assert (=> b!2008574 (= c!324440 ((_ is Union!5385) (regex!3960 (rule!6185 separatorToken!354))))))

(declare-fun b!2008575 () Bool)

(declare-fun res!880938 () Bool)

(declare-fun e!1269116 () Bool)

(assert (=> b!2008575 (=> (not res!880938) (not e!1269116))))

(assert (=> b!2008575 (= res!880938 call!122832)))

(assert (=> b!2008575 (= e!1269112 e!1269116)))

(declare-fun call!122831 () Bool)

(declare-fun bm!122825 () Bool)

(declare-fun c!324439 () Bool)

(assert (=> bm!122825 (= call!122831 (validRegex!2157 (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(declare-fun b!2008576 () Bool)

(declare-fun call!122830 () Bool)

(assert (=> b!2008576 (= e!1269116 call!122830)))

(declare-fun bm!122826 () Bool)

(assert (=> bm!122826 (= call!122832 call!122831)))

(declare-fun b!2008578 () Bool)

(declare-fun res!880937 () Bool)

(assert (=> b!2008578 (=> res!880937 e!1269114)))

(assert (=> b!2008578 (= res!880937 (not ((_ is Concat!9482) (regex!3960 (rule!6185 separatorToken!354)))))))

(assert (=> b!2008578 (= e!1269112 e!1269114)))

(declare-fun b!2008579 () Bool)

(declare-fun e!1269117 () Bool)

(assert (=> b!2008579 (= e!1269117 call!122831)))

(declare-fun b!2008580 () Bool)

(assert (=> b!2008580 (= e!1269111 e!1269117)))

(declare-fun res!880935 () Bool)

(assert (=> b!2008580 (= res!880935 (not (nullable!1631 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))))))))

(assert (=> b!2008580 (=> (not res!880935) (not e!1269117))))

(declare-fun d!613235 () Bool)

(declare-fun res!880934 () Bool)

(declare-fun e!1269115 () Bool)

(assert (=> d!613235 (=> res!880934 e!1269115)))

(assert (=> d!613235 (= res!880934 ((_ is ElementMatch!5385) (regex!3960 (rule!6185 separatorToken!354))))))

(assert (=> d!613235 (= (validRegex!2157 (regex!3960 (rule!6185 separatorToken!354))) e!1269115)))

(declare-fun b!2008577 () Bool)

(assert (=> b!2008577 (= e!1269113 call!122830)))

(declare-fun bm!122827 () Bool)

(assert (=> bm!122827 (= call!122830 (validRegex!2157 (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))))))

(declare-fun b!2008581 () Bool)

(assert (=> b!2008581 (= e!1269115 e!1269111)))

(assert (=> b!2008581 (= c!324439 ((_ is Star!5385) (regex!3960 (rule!6185 separatorToken!354))))))

(assert (= (and d!613235 (not res!880934)) b!2008581))

(assert (= (and b!2008581 c!324439) b!2008580))

(assert (= (and b!2008581 (not c!324439)) b!2008574))

(assert (= (and b!2008580 res!880935) b!2008579))

(assert (= (and b!2008574 c!324440) b!2008575))

(assert (= (and b!2008574 (not c!324440)) b!2008578))

(assert (= (and b!2008575 res!880938) b!2008576))

(assert (= (and b!2008578 (not res!880937)) b!2008573))

(assert (= (and b!2008573 res!880936) b!2008577))

(assert (= (or b!2008575 b!2008573) bm!122826))

(assert (= (or b!2008576 b!2008577) bm!122827))

(assert (= (or b!2008579 bm!122826) bm!122825))

(declare-fun m!2440747 () Bool)

(assert (=> bm!122825 m!2440747))

(declare-fun m!2440749 () Bool)

(assert (=> b!2008580 m!2440749))

(declare-fun m!2440751 () Bool)

(assert (=> bm!122827 m!2440751))

(assert (=> b!2007911 d!613235))

(declare-fun d!613251 () Bool)

(declare-fun res!880943 () Bool)

(declare-fun e!1269137 () Bool)

(assert (=> d!613251 (=> res!880943 e!1269137)))

(assert (=> d!613251 (= res!880943 (not ((_ is Cons!22063) rules!3198)))))

(assert (=> d!613251 (= (sepAndNonSepRulesDisjointChars!1058 rules!3198 rules!3198) e!1269137)))

(declare-fun b!2008610 () Bool)

(declare-fun e!1269138 () Bool)

(assert (=> b!2008610 (= e!1269137 e!1269138)))

(declare-fun res!880944 () Bool)

(assert (=> b!2008610 (=> (not res!880944) (not e!1269138))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!471 (Rule!7720 List!22145) Bool)

(assert (=> b!2008610 (= res!880944 (ruleDisjointCharsFromAllFromOtherType!471 (h!27464 rules!3198) rules!3198))))

(declare-fun b!2008611 () Bool)

(assert (=> b!2008611 (= e!1269138 (sepAndNonSepRulesDisjointChars!1058 rules!3198 (t!187322 rules!3198)))))

(assert (= (and d!613251 (not res!880943)) b!2008610))

(assert (= (and b!2008610 res!880944) b!2008611))

(declare-fun m!2440753 () Bool)

(assert (=> b!2008610 m!2440753))

(declare-fun m!2440755 () Bool)

(assert (=> b!2008611 m!2440755))

(assert (=> b!2007912 d!613251))

(declare-fun d!613253 () Bool)

(declare-fun res!880945 () Bool)

(declare-fun e!1269139 () Bool)

(assert (=> d!613253 (=> (not res!880945) (not e!1269139))))

(assert (=> d!613253 (= res!880945 (not (isEmpty!13686 (originalCharacters!4767 separatorToken!354))))))

(assert (=> d!613253 (= (inv!29220 separatorToken!354) e!1269139)))

(declare-fun b!2008612 () Bool)

(declare-fun res!880946 () Bool)

(assert (=> b!2008612 (=> (not res!880946) (not e!1269139))))

(assert (=> b!2008612 (= res!880946 (= (originalCharacters!4767 separatorToken!354) (list!8981 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))))))

(declare-fun b!2008613 () Bool)

(assert (=> b!2008613 (= e!1269139 (= (size!17246 separatorToken!354) (size!17248 (originalCharacters!4767 separatorToken!354))))))

(assert (= (and d!613253 res!880945) b!2008612))

(assert (= (and b!2008612 res!880946) b!2008613))

(declare-fun b_lambda!67003 () Bool)

(assert (=> (not b_lambda!67003) (not b!2008612)))

(assert (=> b!2008612 t!187354))

(declare-fun b_and!158575 () Bool)

(assert (= b_and!158545 (and (=> t!187354 result!150234) b_and!158575)))

(assert (=> b!2008612 t!187356))

(declare-fun b_and!158577 () Bool)

(assert (= b_and!158547 (and (=> t!187356 result!150236) b_and!158577)))

(assert (=> b!2008612 t!187358))

(declare-fun b_and!158579 () Bool)

(assert (= b_and!158549 (and (=> t!187358 result!150238) b_and!158579)))

(declare-fun m!2440757 () Bool)

(assert (=> d!613253 m!2440757))

(assert (=> b!2008612 m!2440351))

(assert (=> b!2008612 m!2440351))

(declare-fun m!2440759 () Bool)

(assert (=> b!2008612 m!2440759))

(declare-fun m!2440761 () Bool)

(assert (=> b!2008613 m!2440761))

(assert (=> start!197312 d!613253))

(declare-fun b!2008618 () Bool)

(declare-fun res!880947 () Bool)

(declare-fun e!1269146 () Bool)

(assert (=> b!2008618 (=> res!880947 e!1269146)))

(assert (=> b!2008618 (= res!880947 (not ((_ is IntegerValue!12290) (value!124451 separatorToken!354))))))

(declare-fun e!1269147 () Bool)

(assert (=> b!2008618 (= e!1269147 e!1269146)))

(declare-fun b!2008619 () Bool)

(assert (=> b!2008619 (= e!1269146 (inv!15 (value!124451 separatorToken!354)))))

(declare-fun b!2008620 () Bool)

(declare-fun e!1269148 () Bool)

(assert (=> b!2008620 (= e!1269148 e!1269147)))

(declare-fun c!324441 () Bool)

(assert (=> b!2008620 (= c!324441 ((_ is IntegerValue!12289) (value!124451 separatorToken!354)))))

(declare-fun b!2008621 () Bool)

(assert (=> b!2008621 (= e!1269148 (inv!16 (value!124451 separatorToken!354)))))

(declare-fun d!613255 () Bool)

(declare-fun c!324442 () Bool)

(assert (=> d!613255 (= c!324442 ((_ is IntegerValue!12288) (value!124451 separatorToken!354)))))

(assert (=> d!613255 (= (inv!21 (value!124451 separatorToken!354)) e!1269148)))

(declare-fun b!2008622 () Bool)

(assert (=> b!2008622 (= e!1269147 (inv!17 (value!124451 separatorToken!354)))))

(assert (= (and d!613255 c!324442) b!2008621))

(assert (= (and d!613255 (not c!324442)) b!2008620))

(assert (= (and b!2008620 c!324441) b!2008622))

(assert (= (and b!2008620 (not c!324441)) b!2008618))

(assert (= (and b!2008618 (not res!880947)) b!2008619))

(declare-fun m!2440763 () Bool)

(assert (=> b!2008619 m!2440763))

(declare-fun m!2440765 () Bool)

(assert (=> b!2008621 m!2440765))

(declare-fun m!2440767 () Bool)

(assert (=> b!2008622 m!2440767))

(assert (=> b!2007924 d!613255))

(declare-fun d!613257 () Bool)

(declare-fun lt!754220 () Bool)

(declare-fun e!1269171 () Bool)

(assert (=> d!613257 (= lt!754220 e!1269171)))

(declare-fun res!880954 () Bool)

(assert (=> d!613257 (=> (not res!880954) (not e!1269171))))

(declare-fun list!8985 (BalanceConc!14562) List!22144)

(declare-datatypes ((tuple2!20734 0))(
  ( (tuple2!20735 (_1!11836 BalanceConc!14562) (_2!11836 BalanceConc!14558)) )
))
(declare-fun lex!1595 (LexerInterface!3573 List!22145 BalanceConc!14558) tuple2!20734)

(assert (=> d!613257 (= res!880954 (= (list!8985 (_1!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354))))) (list!8985 (singletonSeq!1942 separatorToken!354))))))

(declare-fun e!1269172 () Bool)

(assert (=> d!613257 (= lt!754220 e!1269172)))

(declare-fun res!880955 () Bool)

(assert (=> d!613257 (=> (not res!880955) (not e!1269172))))

(declare-fun lt!754219 () tuple2!20734)

(declare-fun size!17250 (BalanceConc!14562) Int)

(assert (=> d!613257 (= res!880955 (= (size!17250 (_1!11836 lt!754219)) 1))))

(assert (=> d!613257 (= lt!754219 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354))))))

(assert (=> d!613257 (not (isEmpty!13680 rules!3198))))

(assert (=> d!613257 (= (rulesProduceIndividualToken!1745 thiss!23328 rules!3198 separatorToken!354) lt!754220)))

(declare-fun b!2008654 () Bool)

(declare-fun res!880956 () Bool)

(assert (=> b!2008654 (=> (not res!880956) (not e!1269172))))

(declare-fun apply!5783 (BalanceConc!14562 Int) Token!7472)

(assert (=> b!2008654 (= res!880956 (= (apply!5783 (_1!11836 lt!754219) 0) separatorToken!354))))

(declare-fun b!2008655 () Bool)

(declare-fun isEmpty!13688 (BalanceConc!14558) Bool)

(assert (=> b!2008655 (= e!1269172 (isEmpty!13688 (_2!11836 lt!754219)))))

(declare-fun b!2008656 () Bool)

(assert (=> b!2008656 (= e!1269171 (isEmpty!13688 (_2!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354))))))))

(assert (= (and d!613257 res!880955) b!2008654))

(assert (= (and b!2008654 res!880956) b!2008655))

(assert (= (and d!613257 res!880954) b!2008656))

(declare-fun m!2440781 () Bool)

(assert (=> d!613257 m!2440781))

(assert (=> d!613257 m!2440071))

(declare-fun m!2440783 () Bool)

(assert (=> d!613257 m!2440783))

(declare-fun m!2440785 () Bool)

(assert (=> d!613257 m!2440785))

(declare-fun m!2440787 () Bool)

(assert (=> d!613257 m!2440787))

(declare-fun m!2440789 () Bool)

(assert (=> d!613257 m!2440789))

(assert (=> d!613257 m!2440781))

(assert (=> d!613257 m!2440783))

(assert (=> d!613257 m!2440781))

(declare-fun m!2440791 () Bool)

(assert (=> d!613257 m!2440791))

(declare-fun m!2440793 () Bool)

(assert (=> b!2008654 m!2440793))

(declare-fun m!2440795 () Bool)

(assert (=> b!2008655 m!2440795))

(assert (=> b!2008656 m!2440781))

(assert (=> b!2008656 m!2440781))

(assert (=> b!2008656 m!2440783))

(assert (=> b!2008656 m!2440783))

(assert (=> b!2008656 m!2440785))

(declare-fun m!2440797 () Bool)

(assert (=> b!2008656 m!2440797))

(assert (=> b!2007934 d!613257))

(declare-fun d!613261 () Bool)

(assert (=> d!613261 (= (inv!29216 (tag!4424 (h!27464 rules!3198))) (= (mod (str.len (value!124450 (tag!4424 (h!27464 rules!3198)))) 2) 0))))

(assert (=> b!2007913 d!613261))

(declare-fun d!613263 () Bool)

(declare-fun res!880957 () Bool)

(declare-fun e!1269173 () Bool)

(assert (=> d!613263 (=> (not res!880957) (not e!1269173))))

(assert (=> d!613263 (= res!880957 (semiInverseModEq!1587 (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (h!27464 rules!3198)))))))

(assert (=> d!613263 (= (inv!29219 (transformation!3960 (h!27464 rules!3198))) e!1269173)))

(declare-fun b!2008657 () Bool)

(assert (=> b!2008657 (= e!1269173 (equivClasses!1514 (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (h!27464 rules!3198)))))))

(assert (= (and d!613263 res!880957) b!2008657))

(declare-fun m!2440799 () Bool)

(assert (=> d!613263 m!2440799))

(declare-fun m!2440801 () Bool)

(assert (=> b!2008657 m!2440801))

(assert (=> b!2007913 d!613263))

(declare-fun b!2008671 () Bool)

(declare-fun b_free!56005 () Bool)

(declare-fun b_next!56709 () Bool)

(assert (=> b!2008671 (= b_free!56005 (not b_next!56709))))

(declare-fun t!187415 () Bool)

(declare-fun tb!125417 () Bool)

(assert (=> (and b!2008671 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187415) tb!125417))

(declare-fun result!150302 () Bool)

(assert (= result!150302 result!150212))

(assert (=> d!613077 t!187415))

(assert (=> d!613149 t!187415))

(declare-fun t!187417 () Bool)

(declare-fun tb!125419 () Bool)

(assert (=> (and b!2008671 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187417) tb!125419))

(declare-fun result!150304 () Bool)

(assert (= result!150304 result!150246))

(assert (=> d!613149 t!187417))

(declare-fun tp!599222 () Bool)

(declare-fun b_and!158589 () Bool)

(assert (=> b!2008671 (= tp!599222 (and (=> t!187415 result!150302) (=> t!187417 result!150304) b_and!158589))))

(declare-fun b_free!56007 () Bool)

(declare-fun b_next!56711 () Bool)

(assert (=> b!2008671 (= b_free!56007 (not b_next!56711))))

(declare-fun t!187419 () Bool)

(declare-fun tb!125421 () Bool)

(assert (=> (and b!2008671 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187419) tb!125421))

(declare-fun result!150306 () Bool)

(assert (= result!150306 result!150240))

(assert (=> d!613137 t!187419))

(assert (=> b!2008269 t!187419))

(declare-fun t!187421 () Bool)

(declare-fun tb!125423 () Bool)

(assert (=> (and b!2008671 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) t!187421) tb!125423))

(declare-fun result!150308 () Bool)

(assert (= result!150308 result!150234))

(assert (=> d!613131 t!187421))

(declare-fun t!187423 () Bool)

(declare-fun tb!125425 () Bool)

(assert (=> (and b!2008671 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187423) tb!125425))

(declare-fun result!150310 () Bool)

(assert (= result!150310 result!150204))

(assert (=> d!613077 t!187423))

(assert (=> b!2008612 t!187421))

(declare-fun tp!599223 () Bool)

(declare-fun b_and!158591 () Bool)

(assert (=> b!2008671 (= tp!599223 (and (=> t!187423 result!150310) (=> t!187421 result!150308) (=> t!187419 result!150306) b_and!158591))))

(declare-fun b!2008670 () Bool)

(declare-fun tp!599220 () Bool)

(declare-fun e!1269188 () Bool)

(declare-fun e!1269189 () Bool)

(assert (=> b!2008670 (= e!1269189 (and tp!599220 (inv!29216 (tag!4424 (rule!6185 (h!27463 (t!187321 tokens!598))))) (inv!29219 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) e!1269188))))

(declare-fun tp!599221 () Bool)

(declare-fun b!2008669 () Bool)

(declare-fun e!1269187 () Bool)

(assert (=> b!2008669 (= e!1269187 (and (inv!21 (value!124451 (h!27463 (t!187321 tokens!598)))) e!1269189 tp!599221))))

(declare-fun e!1269191 () Bool)

(declare-fun tp!599219 () Bool)

(declare-fun b!2008668 () Bool)

(assert (=> b!2008668 (= e!1269191 (and (inv!29220 (h!27463 (t!187321 tokens!598))) e!1269187 tp!599219))))

(assert (=> b!2008671 (= e!1269188 (and tp!599222 tp!599223))))

(assert (=> b!2007916 (= tp!599135 e!1269191)))

(assert (= b!2008670 b!2008671))

(assert (= b!2008669 b!2008670))

(assert (= b!2008668 b!2008669))

(assert (= (and b!2007916 ((_ is Cons!22062) (t!187321 tokens!598))) b!2008668))

(declare-fun m!2440803 () Bool)

(assert (=> b!2008670 m!2440803))

(declare-fun m!2440805 () Bool)

(assert (=> b!2008670 m!2440805))

(declare-fun m!2440807 () Bool)

(assert (=> b!2008669 m!2440807))

(declare-fun m!2440809 () Bool)

(assert (=> b!2008668 m!2440809))

(declare-fun e!1269194 () Bool)

(assert (=> b!2007908 (= tp!599131 e!1269194)))

(declare-fun b!2008682 () Bool)

(declare-fun tp_is_empty!9181 () Bool)

(assert (=> b!2008682 (= e!1269194 tp_is_empty!9181)))

(declare-fun b!2008685 () Bool)

(declare-fun tp!599238 () Bool)

(declare-fun tp!599236 () Bool)

(assert (=> b!2008685 (= e!1269194 (and tp!599238 tp!599236))))

(declare-fun b!2008684 () Bool)

(declare-fun tp!599235 () Bool)

(assert (=> b!2008684 (= e!1269194 tp!599235)))

(declare-fun b!2008683 () Bool)

(declare-fun tp!599237 () Bool)

(declare-fun tp!599234 () Bool)

(assert (=> b!2008683 (= e!1269194 (and tp!599237 tp!599234))))

(assert (= (and b!2007908 ((_ is ElementMatch!5385) (regex!3960 (rule!6185 (h!27463 tokens!598))))) b!2008682))

(assert (= (and b!2007908 ((_ is Concat!9482) (regex!3960 (rule!6185 (h!27463 tokens!598))))) b!2008683))

(assert (= (and b!2007908 ((_ is Star!5385) (regex!3960 (rule!6185 (h!27463 tokens!598))))) b!2008684))

(assert (= (and b!2007908 ((_ is Union!5385) (regex!3960 (rule!6185 (h!27463 tokens!598))))) b!2008685))

(declare-fun e!1269195 () Bool)

(assert (=> b!2007929 (= tp!599142 e!1269195)))

(declare-fun b!2008686 () Bool)

(assert (=> b!2008686 (= e!1269195 tp_is_empty!9181)))

(declare-fun b!2008689 () Bool)

(declare-fun tp!599243 () Bool)

(declare-fun tp!599241 () Bool)

(assert (=> b!2008689 (= e!1269195 (and tp!599243 tp!599241))))

(declare-fun b!2008688 () Bool)

(declare-fun tp!599240 () Bool)

(assert (=> b!2008688 (= e!1269195 tp!599240)))

(declare-fun b!2008687 () Bool)

(declare-fun tp!599242 () Bool)

(declare-fun tp!599239 () Bool)

(assert (=> b!2008687 (= e!1269195 (and tp!599242 tp!599239))))

(assert (= (and b!2007929 ((_ is ElementMatch!5385) (regex!3960 (rule!6185 separatorToken!354)))) b!2008686))

(assert (= (and b!2007929 ((_ is Concat!9482) (regex!3960 (rule!6185 separatorToken!354)))) b!2008687))

(assert (= (and b!2007929 ((_ is Star!5385) (regex!3960 (rule!6185 separatorToken!354)))) b!2008688))

(assert (= (and b!2007929 ((_ is Union!5385) (regex!3960 (rule!6185 separatorToken!354)))) b!2008689))

(declare-fun b!2008694 () Bool)

(declare-fun e!1269198 () Bool)

(declare-fun tp!599246 () Bool)

(assert (=> b!2008694 (= e!1269198 (and tp_is_empty!9181 tp!599246))))

(assert (=> b!2007932 (= tp!599137 e!1269198)))

(assert (= (and b!2007932 ((_ is Cons!22061) (originalCharacters!4767 (h!27463 tokens!598)))) b!2008694))

(declare-fun b!2008705 () Bool)

(declare-fun b_free!56009 () Bool)

(declare-fun b_next!56713 () Bool)

(assert (=> b!2008705 (= b_free!56009 (not b_next!56713))))

(declare-fun t!187425 () Bool)

(declare-fun tb!125427 () Bool)

(assert (=> (and b!2008705 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187425) tb!125427))

(declare-fun result!150318 () Bool)

(assert (= result!150318 result!150212))

(assert (=> d!613077 t!187425))

(assert (=> d!613149 t!187425))

(declare-fun t!187427 () Bool)

(declare-fun tb!125429 () Bool)

(assert (=> (and b!2008705 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187427) tb!125429))

(declare-fun result!150320 () Bool)

(assert (= result!150320 result!150246))

(assert (=> d!613149 t!187427))

(declare-fun b_and!158593 () Bool)

(declare-fun tp!599255 () Bool)

(assert (=> b!2008705 (= tp!599255 (and (=> t!187425 result!150318) (=> t!187427 result!150320) b_and!158593))))

(declare-fun b_free!56011 () Bool)

(declare-fun b_next!56715 () Bool)

(assert (=> b!2008705 (= b_free!56011 (not b_next!56715))))

(declare-fun t!187429 () Bool)

(declare-fun tb!125431 () Bool)

(assert (=> (and b!2008705 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187429) tb!125431))

(declare-fun result!150322 () Bool)

(assert (= result!150322 result!150240))

(assert (=> d!613137 t!187429))

(assert (=> b!2008269 t!187429))

(declare-fun tb!125433 () Bool)

(declare-fun t!187431 () Bool)

(assert (=> (and b!2008705 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) t!187431) tb!125433))

(declare-fun result!150324 () Bool)

(assert (= result!150324 result!150234))

(assert (=> d!613131 t!187431))

(declare-fun t!187433 () Bool)

(declare-fun tb!125435 () Bool)

(assert (=> (and b!2008705 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187433) tb!125435))

(declare-fun result!150326 () Bool)

(assert (= result!150326 result!150204))

(assert (=> d!613077 t!187433))

(assert (=> b!2008612 t!187431))

(declare-fun b_and!158595 () Bool)

(declare-fun tp!599256 () Bool)

(assert (=> b!2008705 (= tp!599256 (and (=> t!187429 result!150322) (=> t!187431 result!150324) (=> t!187433 result!150326) b_and!158595))))

(declare-fun e!1269208 () Bool)

(assert (=> b!2008705 (= e!1269208 (and tp!599255 tp!599256))))

(declare-fun b!2008704 () Bool)

(declare-fun tp!599257 () Bool)

(declare-fun e!1269209 () Bool)

(assert (=> b!2008704 (= e!1269209 (and tp!599257 (inv!29216 (tag!4424 (h!27464 (t!187322 rules!3198)))) (inv!29219 (transformation!3960 (h!27464 (t!187322 rules!3198)))) e!1269208))))

(declare-fun b!2008703 () Bool)

(declare-fun e!1269207 () Bool)

(declare-fun tp!599258 () Bool)

(assert (=> b!2008703 (= e!1269207 (and e!1269209 tp!599258))))

(assert (=> b!2007910 (= tp!599136 e!1269207)))

(assert (= b!2008704 b!2008705))

(assert (= b!2008703 b!2008704))

(assert (= (and b!2007910 ((_ is Cons!22063) (t!187322 rules!3198))) b!2008703))

(declare-fun m!2440811 () Bool)

(assert (=> b!2008704 m!2440811))

(declare-fun m!2440813 () Bool)

(assert (=> b!2008704 m!2440813))

(declare-fun b!2008706 () Bool)

(declare-fun e!1269211 () Bool)

(declare-fun tp!599259 () Bool)

(assert (=> b!2008706 (= e!1269211 (and tp_is_empty!9181 tp!599259))))

(assert (=> b!2007924 (= tp!599141 e!1269211)))

(assert (= (and b!2007924 ((_ is Cons!22061) (originalCharacters!4767 separatorToken!354))) b!2008706))

(declare-fun e!1269212 () Bool)

(assert (=> b!2007913 (= tp!599132 e!1269212)))

(declare-fun b!2008707 () Bool)

(assert (=> b!2008707 (= e!1269212 tp_is_empty!9181)))

(declare-fun b!2008710 () Bool)

(declare-fun tp!599264 () Bool)

(declare-fun tp!599262 () Bool)

(assert (=> b!2008710 (= e!1269212 (and tp!599264 tp!599262))))

(declare-fun b!2008709 () Bool)

(declare-fun tp!599261 () Bool)

(assert (=> b!2008709 (= e!1269212 tp!599261)))

(declare-fun b!2008708 () Bool)

(declare-fun tp!599263 () Bool)

(declare-fun tp!599260 () Bool)

(assert (=> b!2008708 (= e!1269212 (and tp!599263 tp!599260))))

(assert (= (and b!2007913 ((_ is ElementMatch!5385) (regex!3960 (h!27464 rules!3198)))) b!2008707))

(assert (= (and b!2007913 ((_ is Concat!9482) (regex!3960 (h!27464 rules!3198)))) b!2008708))

(assert (= (and b!2007913 ((_ is Star!5385) (regex!3960 (h!27464 rules!3198)))) b!2008709))

(assert (= (and b!2007913 ((_ is Union!5385) (regex!3960 (h!27464 rules!3198)))) b!2008710))

(declare-fun b_lambda!67023 () Bool)

(assert (= b_lambda!66969 (or (and b!2008671 b_free!56007 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007925 b_free!55995) (and b!2008705 b_free!56011 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007921 b_free!55987 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007923 b_free!55991 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) b_lambda!67023)))

(declare-fun b_lambda!67025 () Bool)

(assert (= b_lambda!67001 (or b!2007920 b_lambda!67025)))

(declare-fun bs!419636 () Bool)

(declare-fun d!613265 () Bool)

(assert (= bs!419636 (and d!613265 b!2007920)))

(assert (=> bs!419636 (= (dynLambda!10864 lambda!76021 (h!27463 tokens!598)) (not (isSeparator!3960 (rule!6185 (h!27463 tokens!598)))))))

(assert (=> b!2008413 d!613265))

(declare-fun b_lambda!67027 () Bool)

(assert (= b_lambda!66979 (or (and b!2008671 b_free!56007 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007925 b_free!55995) (and b!2008705 b_free!56011 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007921 b_free!55987 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007923 b_free!55991 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) b_lambda!67027)))

(declare-fun b_lambda!67029 () Bool)

(assert (= b_lambda!66983 (or (and b!2008671 b_free!56005 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007925 b_free!55993) (and b!2008705 b_free!56009 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007921 b_free!55985 (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007923 b_free!55989 (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) b_lambda!67029)))

(declare-fun b_lambda!67031 () Bool)

(assert (= b_lambda!66989 (or (and b!2008671 b_free!56007 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007925 b_free!55995) (and b!2008705 b_free!56011 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007921 b_free!55987 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007923 b_free!55991 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) b_lambda!67031)))

(declare-fun b_lambda!67033 () Bool)

(assert (= b_lambda!66971 (or (and b!2008671 b_free!56005 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007925 b_free!55993) (and b!2008705 b_free!56009 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007921 b_free!55985 (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007923 b_free!55989 (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) b_lambda!67033)))

(declare-fun b_lambda!67035 () Bool)

(assert (= b_lambda!66981 (or (and b!2008671 b_free!56005 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007925 b_free!55993) (and b!2008705 b_free!56009 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007921 b_free!55985 (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (and b!2007923 b_free!55989 (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) b_lambda!67035)))

(declare-fun b_lambda!67037 () Bool)

(assert (= b_lambda!66977 (or (and b!2008671 b_free!56007 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))))) (and b!2008705 b_free!56011 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))))) (and b!2007925 b_free!55995 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))))) (and b!2007923 b_free!55991 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))))) (and b!2007921 b_free!55987) b_lambda!67037)))

(declare-fun b_lambda!67039 () Bool)

(assert (= b_lambda!67003 (or (and b!2008671 b_free!56007 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))))) (and b!2008705 b_free!56011 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))))) (and b!2007925 b_free!55995 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))))) (and b!2007923 b_free!55991 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))))) (and b!2007921 b_free!55987) b_lambda!67039)))

(check-sat (not b!2008193) (not b!2008083) (not b_next!56699) (not b!2007942) (not b!2008358) (not b!2008612) (not b!2008500) (not b!2008419) (not b!2008493) (not b!2008402) (not b!2008656) (not b!2008535) (not b!2008404) (not b_next!56693) (not bm!122807) (not tb!125361) (not b!2008166) (not b_next!56715) (not b!2008232) (not bm!122784) (not b!2007939) (not b!2008183) (not b!2008687) (not d!613137) b_and!158579 b_and!158593 (not b!2008269) (not d!613217) (not b_next!56709) (not d!613219) (not b!2008420) (not d!613225) (not b!2008071) (not d!613209) (not b!2008683) (not d!613149) (not b!2008490) (not d!613143) b_and!158529 (not b!2008257) (not b_next!56691) (not b!2008270) (not b!2008068) (not b!2008580) (not b!2008162) (not d!613133) (not b!2008684) (not d!613073) (not b!2008704) (not b!2008197) b_and!158531 (not b!2008703) (not b!2008190) (not d!613155) (not bm!122764) (not d!613131) tp_is_empty!9181 (not d!613111) (not tb!125343) (not d!613145) (not b!2008163) (not d!613221) (not d!613141) (not d!613161) (not b!2008479) (not b!2008164) (not b!2008536) (not b!2008189) (not b!2008482) (not bm!122805) (not b_lambda!67031) (not b!2008192) (not b_lambda!67037) (not b_next!56689) (not bm!122796) (not b!2008195) (not b!2008072) (not d!613215) b_and!158595 (not d!613147) (not d!613205) (not b!2008414) (not b!2008483) (not b!2008611) (not b!2008622) (not b!2008486) (not b!2008165) (not b!2008709) (not d!613201) (not d!613135) (not b!2008688) (not b!2008359) (not d!613257) (not b!2008657) (not b!2008360) (not b!2008395) (not b!2008621) (not b_lambda!67029) (not bm!122815) (not b!2008408) (not b!2008417) (not b!2008184) (not d!613195) (not d!613263) (not d!613075) (not b!2008169) (not b_next!56697) (not b!2008161) (not bm!122825) (not bm!122827) (not bm!122762) b_and!158575 (not b!2008397) (not b!2008708) (not b!2008670) (not b!2008610) (not b!2008394) (not b!2007941) b_and!158577 (not b!2008694) (not bm!122785) (not b!2008229) (not d!613207) (not b_lambda!67025) (not b!2008655) (not b_lambda!67033) (not d!613139) (not b!2008669) (not b!2007940) (not b!2008491) (not b!2008668) (not b!2008191) (not b!2008470) (not b!2008230) (not b!2008710) (not b!2008225) (not d!613109) (not d!613253) (not b!2008471) (not d!613077) (not tb!125373) (not b!2008160) (not b!2008186) (not tb!125337) (not b_next!56695) (not b!2008487) (not b!2008654) (not b!2008478) (not d!613187) (not d!613071) (not bm!122766) (not b!2008168) (not b!2008689) (not b!2008407) (not b!2008226) b_and!158591 (not b!2008194) (not b_lambda!67035) (not d!613069) (not bm!122808) (not b!2008070) (not b!2008498) (not b_lambda!67027) (not b!2008533) (not b!2008685) (not b_lambda!67023) (not tb!125367) (not b_lambda!67039) (not b_next!56713) (not b!2008706) b_and!158527 (not b!2008031) (not d!613153) b_and!158589 (not b!2008613) (not b!2008619) (not b!2008391) (not b_next!56711) (not b!2008188))
(check-sat (not b_next!56699) (not b_next!56693) (not b_next!56715) (not b_next!56709) b_and!158529 (not b_next!56691) b_and!158531 (not b_next!56689) b_and!158595 b_and!158577 (not b_next!56695) b_and!158591 b_and!158589 (not b_next!56711) b_and!158579 b_and!158593 (not b_next!56697) b_and!158575 (not b_next!56713) b_and!158527)
(get-model)

(declare-fun b!2008844 () Bool)

(declare-fun res!881020 () Bool)

(declare-fun e!1269290 () Bool)

(assert (=> b!2008844 (=> (not res!881020) (not e!1269290))))

(declare-fun lt!754265 () List!22143)

(assert (=> b!2008844 (= res!881020 (= (size!17248 lt!754265) (+ (size!17248 (t!187320 lt!754030)) (size!17248 lt!754023))))))

(declare-fun b!2008845 () Bool)

(assert (=> b!2008845 (= e!1269290 (or (not (= lt!754023 Nil!22061)) (= lt!754265 (t!187320 lt!754030))))))

(declare-fun d!613337 () Bool)

(assert (=> d!613337 e!1269290))

(declare-fun res!881021 () Bool)

(assert (=> d!613337 (=> (not res!881021) (not e!1269290))))

(assert (=> d!613337 (= res!881021 (= (content!3231 lt!754265) ((_ map or) (content!3231 (t!187320 lt!754030)) (content!3231 lt!754023))))))

(declare-fun e!1269289 () List!22143)

(assert (=> d!613337 (= lt!754265 e!1269289)))

(declare-fun c!324474 () Bool)

(assert (=> d!613337 (= c!324474 ((_ is Nil!22061) (t!187320 lt!754030)))))

(assert (=> d!613337 (= (++!5953 (t!187320 lt!754030) lt!754023) lt!754265)))

(declare-fun b!2008843 () Bool)

(assert (=> b!2008843 (= e!1269289 (Cons!22061 (h!27462 (t!187320 lt!754030)) (++!5953 (t!187320 (t!187320 lt!754030)) lt!754023)))))

(declare-fun b!2008842 () Bool)

(assert (=> b!2008842 (= e!1269289 lt!754023)))

(assert (= (and d!613337 c!324474) b!2008842))

(assert (= (and d!613337 (not c!324474)) b!2008843))

(assert (= (and d!613337 res!881021) b!2008844))

(assert (= (and b!2008844 res!881020) b!2008845))

(declare-fun m!2441051 () Bool)

(assert (=> b!2008844 m!2441051))

(declare-fun m!2441053 () Bool)

(assert (=> b!2008844 m!2441053))

(assert (=> b!2008844 m!2440413))

(declare-fun m!2441055 () Bool)

(assert (=> d!613337 m!2441055))

(declare-fun m!2441057 () Bool)

(assert (=> d!613337 m!2441057))

(assert (=> d!613337 m!2440419))

(declare-fun m!2441059 () Bool)

(assert (=> b!2008843 m!2441059))

(assert (=> b!2008478 d!613337))

(declare-fun b!2008850 () Bool)

(declare-fun res!881022 () Bool)

(declare-fun e!1269293 () Bool)

(assert (=> b!2008850 (=> res!881022 e!1269293)))

(assert (=> b!2008850 (= res!881022 (not ((_ is IntegerValue!12290) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))))))

(declare-fun e!1269294 () Bool)

(assert (=> b!2008850 (= e!1269294 e!1269293)))

(declare-fun b!2008851 () Bool)

(assert (=> b!2008851 (= e!1269293 (inv!15 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))

(declare-fun b!2008852 () Bool)

(declare-fun e!1269295 () Bool)

(assert (=> b!2008852 (= e!1269295 e!1269294)))

(declare-fun c!324477 () Bool)

(assert (=> b!2008852 (= c!324477 ((_ is IntegerValue!12289) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))

(declare-fun b!2008853 () Bool)

(assert (=> b!2008853 (= e!1269295 (inv!16 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))

(declare-fun d!613339 () Bool)

(declare-fun c!324478 () Bool)

(assert (=> d!613339 (= c!324478 ((_ is IntegerValue!12288) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))

(assert (=> d!613339 (= (inv!21 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)) e!1269295)))

(declare-fun b!2008854 () Bool)

(assert (=> b!2008854 (= e!1269294 (inv!17 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))

(assert (= (and d!613339 c!324478) b!2008853))

(assert (= (and d!613339 (not c!324478)) b!2008852))

(assert (= (and b!2008852 c!324477) b!2008854))

(assert (= (and b!2008852 (not c!324477)) b!2008850))

(assert (= (and b!2008850 (not res!881022)) b!2008851))

(declare-fun m!2441061 () Bool)

(assert (=> b!2008851 m!2441061))

(declare-fun m!2441063 () Bool)

(assert (=> b!2008853 m!2441063))

(declare-fun m!2441065 () Bool)

(assert (=> b!2008854 m!2441065))

(assert (=> tb!125343 d!613339))

(declare-fun d!613341 () Bool)

(assert (=> d!613341 (= (get!6973 lt!754126) (v!26838 lt!754126))))

(assert (=> b!2008161 d!613341))

(declare-fun d!613345 () Bool)

(assert (=> d!613345 (= (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754126))))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754126))))))))

(declare-fun b_lambda!67049 () Bool)

(assert (=> (not b_lambda!67049) (not d!613345)))

(declare-fun tb!125457 () Bool)

(declare-fun t!187457 () Bool)

(assert (=> (and b!2007921 (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187457) tb!125457))

(declare-fun result!150348 () Bool)

(assert (=> tb!125457 (= result!150348 (inv!21 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754126)))))))))

(declare-fun m!2441083 () Bool)

(assert (=> tb!125457 m!2441083))

(assert (=> d!613345 t!187457))

(declare-fun b_and!158617 () Bool)

(assert (= b_and!158527 (and (=> t!187457 result!150348) b_and!158617)))

(declare-fun t!187459 () Bool)

(declare-fun tb!125459 () Bool)

(assert (=> (and b!2007923 (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187459) tb!125459))

(declare-fun result!150350 () Bool)

(assert (= result!150350 result!150348))

(assert (=> d!613345 t!187459))

(declare-fun b_and!158619 () Bool)

(assert (= b_and!158529 (and (=> t!187459 result!150350) b_and!158619)))

(declare-fun tb!125461 () Bool)

(declare-fun t!187461 () Bool)

(assert (=> (and b!2008671 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187461) tb!125461))

(declare-fun result!150352 () Bool)

(assert (= result!150352 result!150348))

(assert (=> d!613345 t!187461))

(declare-fun b_and!158621 () Bool)

(assert (= b_and!158589 (and (=> t!187461 result!150352) b_and!158621)))

(declare-fun t!187463 () Bool)

(declare-fun tb!125463 () Bool)

(assert (=> (and b!2007925 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187463) tb!125463))

(declare-fun result!150354 () Bool)

(assert (= result!150354 result!150348))

(assert (=> d!613345 t!187463))

(declare-fun b_and!158623 () Bool)

(assert (= b_and!158531 (and (=> t!187463 result!150354) b_and!158623)))

(declare-fun t!187465 () Bool)

(declare-fun tb!125465 () Bool)

(assert (=> (and b!2008705 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187465) tb!125465))

(declare-fun result!150356 () Bool)

(assert (= result!150356 result!150348))

(assert (=> d!613345 t!187465))

(declare-fun b_and!158625 () Bool)

(assert (= b_and!158593 (and (=> t!187465 result!150356) b_and!158625)))

(assert (=> d!613345 m!2440323))

(declare-fun m!2441087 () Bool)

(assert (=> d!613345 m!2441087))

(assert (=> b!2008161 d!613345))

(declare-fun d!613361 () Bool)

(assert (=> d!613361 (= (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754126)))) (fromListB!1259 (originalCharacters!4767 (_1!11834 (get!6973 lt!754126)))))))

(declare-fun bs!419651 () Bool)

(assert (= bs!419651 d!613361))

(declare-fun m!2441089 () Bool)

(assert (=> bs!419651 m!2441089))

(assert (=> b!2008161 d!613361))

(declare-fun bm!122840 () Bool)

(declare-fun call!122845 () Option!4602)

(assert (=> bm!122840 (= call!122845 (maxPrefixOneRule!1244 thiss!23328 (h!27464 (t!187322 rules!3198)) lt!754035))))

(declare-fun b!2008865 () Bool)

(declare-fun e!1269305 () Bool)

(declare-fun lt!754272 () Option!4602)

(assert (=> b!2008865 (= e!1269305 (contains!4032 (t!187322 rules!3198) (rule!6185 (_1!11834 (get!6973 lt!754272)))))))

(declare-fun b!2008866 () Bool)

(declare-fun res!881029 () Bool)

(assert (=> b!2008866 (=> (not res!881029) (not e!1269305))))

(assert (=> b!2008866 (= res!881029 (= (value!124451 (_1!11834 (get!6973 lt!754272))) (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754272)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754272)))))))))

(declare-fun b!2008868 () Bool)

(declare-fun e!1269306 () Bool)

(assert (=> b!2008868 (= e!1269306 e!1269305)))

(declare-fun res!881032 () Bool)

(assert (=> b!2008868 (=> (not res!881032) (not e!1269305))))

(assert (=> b!2008868 (= res!881032 (isDefined!3890 lt!754272))))

(declare-fun b!2008869 () Bool)

(declare-fun res!881031 () Bool)

(assert (=> b!2008869 (=> (not res!881031) (not e!1269305))))

(assert (=> b!2008869 (= res!881031 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754272)))) (_2!11834 (get!6973 lt!754272))) lt!754035))))

(declare-fun b!2008870 () Bool)

(declare-fun e!1269304 () Option!4602)

(declare-fun lt!754275 () Option!4602)

(declare-fun lt!754274 () Option!4602)

(assert (=> b!2008870 (= e!1269304 (ite (and ((_ is None!4601) lt!754275) ((_ is None!4601) lt!754274)) None!4601 (ite ((_ is None!4601) lt!754274) lt!754275 (ite ((_ is None!4601) lt!754275) lt!754274 (ite (>= (size!17246 (_1!11834 (v!26838 lt!754275))) (size!17246 (_1!11834 (v!26838 lt!754274)))) lt!754275 lt!754274)))))))

(assert (=> b!2008870 (= lt!754275 call!122845)))

(assert (=> b!2008870 (= lt!754274 (maxPrefix!2009 thiss!23328 (t!187322 (t!187322 rules!3198)) lt!754035))))

(declare-fun b!2008871 () Bool)

(declare-fun res!881027 () Bool)

(assert (=> b!2008871 (=> (not res!881027) (not e!1269305))))

(assert (=> b!2008871 (= res!881027 (= (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754272)))) (originalCharacters!4767 (_1!11834 (get!6973 lt!754272)))))))

(declare-fun d!613363 () Bool)

(assert (=> d!613363 e!1269306))

(declare-fun res!881030 () Bool)

(assert (=> d!613363 (=> res!881030 e!1269306)))

(assert (=> d!613363 (= res!881030 (isEmpty!13684 lt!754272))))

(assert (=> d!613363 (= lt!754272 e!1269304)))

(declare-fun c!324482 () Bool)

(assert (=> d!613363 (= c!324482 (and ((_ is Cons!22063) (t!187322 rules!3198)) ((_ is Nil!22063) (t!187322 (t!187322 rules!3198)))))))

(declare-fun lt!754273 () Unit!36620)

(declare-fun lt!754276 () Unit!36620)

(assert (=> d!613363 (= lt!754273 lt!754276)))

(assert (=> d!613363 (isPrefix!1962 lt!754035 lt!754035)))

(assert (=> d!613363 (= lt!754276 (lemmaIsPrefixRefl!1280 lt!754035 lt!754035))))

(assert (=> d!613363 (rulesValidInductive!1361 thiss!23328 (t!187322 rules!3198))))

(assert (=> d!613363 (= (maxPrefix!2009 thiss!23328 (t!187322 rules!3198) lt!754035) lt!754272)))

(declare-fun b!2008867 () Bool)

(declare-fun res!881026 () Bool)

(assert (=> b!2008867 (=> (not res!881026) (not e!1269305))))

(assert (=> b!2008867 (= res!881026 (< (size!17248 (_2!11834 (get!6973 lt!754272))) (size!17248 lt!754035)))))

(declare-fun b!2008872 () Bool)

(assert (=> b!2008872 (= e!1269304 call!122845)))

(declare-fun b!2008873 () Bool)

(declare-fun res!881028 () Bool)

(assert (=> b!2008873 (=> (not res!881028) (not e!1269305))))

(assert (=> b!2008873 (= res!881028 (matchR!2651 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754272)))) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754272))))))))

(assert (= (and d!613363 c!324482) b!2008872))

(assert (= (and d!613363 (not c!324482)) b!2008870))

(assert (= (or b!2008872 b!2008870) bm!122840))

(assert (= (and d!613363 (not res!881030)) b!2008868))

(assert (= (and b!2008868 res!881032) b!2008871))

(assert (= (and b!2008871 res!881027) b!2008867))

(assert (= (and b!2008867 res!881026) b!2008869))

(assert (= (and b!2008869 res!881031) b!2008866))

(assert (= (and b!2008866 res!881029) b!2008873))

(assert (= (and b!2008873 res!881028) b!2008865))

(declare-fun m!2441099 () Bool)

(assert (=> b!2008868 m!2441099))

(declare-fun m!2441101 () Bool)

(assert (=> b!2008869 m!2441101))

(declare-fun m!2441103 () Bool)

(assert (=> b!2008869 m!2441103))

(assert (=> b!2008869 m!2441103))

(declare-fun m!2441105 () Bool)

(assert (=> b!2008869 m!2441105))

(assert (=> b!2008869 m!2441105))

(declare-fun m!2441107 () Bool)

(assert (=> b!2008869 m!2441107))

(declare-fun m!2441109 () Bool)

(assert (=> bm!122840 m!2441109))

(assert (=> b!2008866 m!2441101))

(declare-fun m!2441111 () Bool)

(assert (=> b!2008866 m!2441111))

(assert (=> b!2008866 m!2441111))

(declare-fun m!2441113 () Bool)

(assert (=> b!2008866 m!2441113))

(declare-fun m!2441115 () Bool)

(assert (=> d!613363 m!2441115))

(assert (=> d!613363 m!2440397))

(assert (=> d!613363 m!2440399))

(declare-fun m!2441117 () Bool)

(assert (=> d!613363 m!2441117))

(assert (=> b!2008865 m!2441101))

(declare-fun m!2441119 () Bool)

(assert (=> b!2008865 m!2441119))

(declare-fun m!2441121 () Bool)

(assert (=> b!2008870 m!2441121))

(assert (=> b!2008867 m!2441101))

(declare-fun m!2441123 () Bool)

(assert (=> b!2008867 m!2441123))

(assert (=> b!2008867 m!2440407))

(assert (=> b!2008873 m!2441101))

(assert (=> b!2008873 m!2441103))

(assert (=> b!2008873 m!2441103))

(assert (=> b!2008873 m!2441105))

(assert (=> b!2008873 m!2441105))

(declare-fun m!2441125 () Bool)

(assert (=> b!2008873 m!2441125))

(assert (=> b!2008871 m!2441101))

(assert (=> b!2008871 m!2441103))

(assert (=> b!2008871 m!2441103))

(assert (=> b!2008871 m!2441105))

(assert (=> b!2008194 d!613363))

(declare-fun d!613369 () Bool)

(assert (=> d!613369 (= (isEmpty!13686 (tail!3022 lt!754035)) ((_ is Nil!22061) (tail!3022 lt!754035)))))

(assert (=> b!2008490 d!613369))

(declare-fun d!613371 () Bool)

(assert (=> d!613371 (= (tail!3022 lt!754035) (t!187320 lt!754035))))

(assert (=> b!2008490 d!613371))

(declare-fun d!613375 () Bool)

(assert (=> d!613375 (= (isEmpty!13684 lt!754126) (not ((_ is Some!4601) lt!754126)))))

(assert (=> d!613111 d!613375))

(declare-fun b!2008898 () Bool)

(declare-fun e!1269321 () Bool)

(declare-fun e!1269322 () Bool)

(assert (=> b!2008898 (= e!1269321 e!1269322)))

(declare-fun res!881049 () Bool)

(assert (=> b!2008898 (=> (not res!881049) (not e!1269322))))

(assert (=> b!2008898 (= res!881049 (not ((_ is Nil!22061) (++!5953 lt!754035 lt!754023))))))

(declare-fun b!2008900 () Bool)

(assert (=> b!2008900 (= e!1269322 (isPrefix!1962 (tail!3022 (++!5953 lt!754035 lt!754023)) (tail!3022 (++!5953 lt!754035 lt!754023))))))

(declare-fun d!613377 () Bool)

(declare-fun e!1269320 () Bool)

(assert (=> d!613377 e!1269320))

(declare-fun res!881052 () Bool)

(assert (=> d!613377 (=> res!881052 e!1269320)))

(declare-fun lt!754282 () Bool)

(assert (=> d!613377 (= res!881052 (not lt!754282))))

(assert (=> d!613377 (= lt!754282 e!1269321)))

(declare-fun res!881051 () Bool)

(assert (=> d!613377 (=> res!881051 e!1269321)))

(assert (=> d!613377 (= res!881051 ((_ is Nil!22061) (++!5953 lt!754035 lt!754023)))))

(assert (=> d!613377 (= (isPrefix!1962 (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023)) lt!754282)))

(declare-fun b!2008901 () Bool)

(assert (=> b!2008901 (= e!1269320 (>= (size!17248 (++!5953 lt!754035 lt!754023)) (size!17248 (++!5953 lt!754035 lt!754023))))))

(declare-fun b!2008899 () Bool)

(declare-fun res!881050 () Bool)

(assert (=> b!2008899 (=> (not res!881050) (not e!1269322))))

(assert (=> b!2008899 (= res!881050 (= (head!4536 (++!5953 lt!754035 lt!754023)) (head!4536 (++!5953 lt!754035 lt!754023))))))

(assert (= (and d!613377 (not res!881051)) b!2008898))

(assert (= (and b!2008898 res!881049) b!2008899))

(assert (= (and b!2008899 res!881050) b!2008900))

(assert (= (and d!613377 (not res!881052)) b!2008901))

(assert (=> b!2008900 m!2440037))

(declare-fun m!2441141 () Bool)

(assert (=> b!2008900 m!2441141))

(assert (=> b!2008900 m!2440037))

(assert (=> b!2008900 m!2441141))

(assert (=> b!2008900 m!2441141))

(assert (=> b!2008900 m!2441141))

(declare-fun m!2441143 () Bool)

(assert (=> b!2008900 m!2441143))

(assert (=> b!2008901 m!2440037))

(assert (=> b!2008901 m!2440341))

(assert (=> b!2008901 m!2440037))

(assert (=> b!2008901 m!2440341))

(assert (=> b!2008899 m!2440037))

(declare-fun m!2441145 () Bool)

(assert (=> b!2008899 m!2441145))

(assert (=> b!2008899 m!2440037))

(assert (=> b!2008899 m!2441145))

(assert (=> d!613111 d!613377))

(declare-fun d!613379 () Bool)

(assert (=> d!613379 (isPrefix!1962 (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023))))

(declare-fun lt!754285 () Unit!36620)

(declare-fun choose!12237 (List!22143 List!22143) Unit!36620)

(assert (=> d!613379 (= lt!754285 (choose!12237 (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023)))))

(assert (=> d!613379 (= (lemmaIsPrefixRefl!1280 (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023)) lt!754285)))

(declare-fun bs!419653 () Bool)

(assert (= bs!419653 d!613379))

(assert (=> bs!419653 m!2440037))

(assert (=> bs!419653 m!2440037))

(assert (=> bs!419653 m!2440329))

(assert (=> bs!419653 m!2440037))

(assert (=> bs!419653 m!2440037))

(declare-fun m!2441147 () Bool)

(assert (=> bs!419653 m!2441147))

(assert (=> d!613111 d!613379))

(declare-fun d!613381 () Bool)

(assert (=> d!613381 true))

(declare-fun lt!754289 () Bool)

(declare-fun lambda!76055 () Int)

(declare-fun forall!4687 (List!22145 Int) Bool)

(assert (=> d!613381 (= lt!754289 (forall!4687 rules!3198 lambda!76055))))

(declare-fun e!1269343 () Bool)

(assert (=> d!613381 (= lt!754289 e!1269343)))

(declare-fun res!881057 () Bool)

(assert (=> d!613381 (=> res!881057 e!1269343)))

(assert (=> d!613381 (= res!881057 (not ((_ is Cons!22063) rules!3198)))))

(assert (=> d!613381 (= (rulesValidInductive!1361 thiss!23328 rules!3198) lt!754289)))

(declare-fun b!2008934 () Bool)

(declare-fun e!1269342 () Bool)

(assert (=> b!2008934 (= e!1269343 e!1269342)))

(declare-fun res!881058 () Bool)

(assert (=> b!2008934 (=> (not res!881058) (not e!1269342))))

(declare-fun ruleValid!1211 (LexerInterface!3573 Rule!7720) Bool)

(assert (=> b!2008934 (= res!881058 (ruleValid!1211 thiss!23328 (h!27464 rules!3198)))))

(declare-fun b!2008935 () Bool)

(assert (=> b!2008935 (= e!1269342 (rulesValidInductive!1361 thiss!23328 (t!187322 rules!3198)))))

(assert (= (and d!613381 (not res!881057)) b!2008934))

(assert (= (and b!2008934 res!881058) b!2008935))

(declare-fun m!2441157 () Bool)

(assert (=> d!613381 m!2441157))

(declare-fun m!2441159 () Bool)

(assert (=> b!2008934 m!2441159))

(assert (=> b!2008935 m!2441117))

(assert (=> d!613111 d!613381))

(declare-fun b!2008938 () Bool)

(declare-fun e!1269347 () Bool)

(declare-fun e!1269346 () Bool)

(assert (=> b!2008938 (= e!1269347 e!1269346)))

(declare-fun res!881061 () Bool)

(assert (=> b!2008938 (=> (not res!881061) (not e!1269346))))

(declare-fun call!122861 () Bool)

(assert (=> b!2008938 (= res!881061 call!122861)))

(declare-fun b!2008939 () Bool)

(declare-fun e!1269344 () Bool)

(declare-fun e!1269345 () Bool)

(assert (=> b!2008939 (= e!1269344 e!1269345)))

(declare-fun c!324502 () Bool)

(assert (=> b!2008939 (= c!324502 ((_ is Union!5385) (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(declare-fun b!2008940 () Bool)

(declare-fun res!881063 () Bool)

(declare-fun e!1269349 () Bool)

(assert (=> b!2008940 (=> (not res!881063) (not e!1269349))))

(assert (=> b!2008940 (= res!881063 call!122861)))

(assert (=> b!2008940 (= e!1269345 e!1269349)))

(declare-fun call!122860 () Bool)

(declare-fun c!324501 () Bool)

(declare-fun bm!122854 () Bool)

(assert (=> bm!122854 (= call!122860 (validRegex!2157 (ite c!324501 (reg!5714 (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))) (ite c!324502 (regOne!11283 (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))) (regOne!11282 (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))))))))))

(declare-fun b!2008941 () Bool)

(declare-fun call!122859 () Bool)

(assert (=> b!2008941 (= e!1269349 call!122859)))

(declare-fun bm!122855 () Bool)

(assert (=> bm!122855 (= call!122861 call!122860)))

(declare-fun b!2008943 () Bool)

(declare-fun res!881062 () Bool)

(assert (=> b!2008943 (=> res!881062 e!1269347)))

(assert (=> b!2008943 (= res!881062 (not ((_ is Concat!9482) (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))))))))

(assert (=> b!2008943 (= e!1269345 e!1269347)))

(declare-fun b!2008944 () Bool)

(declare-fun e!1269350 () Bool)

(assert (=> b!2008944 (= e!1269350 call!122860)))

(declare-fun b!2008945 () Bool)

(assert (=> b!2008945 (= e!1269344 e!1269350)))

(declare-fun res!881060 () Bool)

(assert (=> b!2008945 (= res!881060 (not (nullable!1631 (reg!5714 (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))))

(assert (=> b!2008945 (=> (not res!881060) (not e!1269350))))

(declare-fun d!613387 () Bool)

(declare-fun res!881059 () Bool)

(declare-fun e!1269348 () Bool)

(assert (=> d!613387 (=> res!881059 e!1269348)))

(assert (=> d!613387 (= res!881059 ((_ is ElementMatch!5385) (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(assert (=> d!613387 (= (validRegex!2157 (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))) e!1269348)))

(declare-fun b!2008942 () Bool)

(assert (=> b!2008942 (= e!1269346 call!122859)))

(declare-fun bm!122856 () Bool)

(assert (=> bm!122856 (= call!122859 (validRegex!2157 (ite c!324502 (regTwo!11283 (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))) (regTwo!11282 (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))))

(declare-fun b!2008946 () Bool)

(assert (=> b!2008946 (= e!1269348 e!1269344)))

(assert (=> b!2008946 (= c!324501 ((_ is Star!5385) (ite c!324439 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324440 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(assert (= (and d!613387 (not res!881059)) b!2008946))

(assert (= (and b!2008946 c!324501) b!2008945))

(assert (= (and b!2008946 (not c!324501)) b!2008939))

(assert (= (and b!2008945 res!881060) b!2008944))

(assert (= (and b!2008939 c!324502) b!2008940))

(assert (= (and b!2008939 (not c!324502)) b!2008943))

(assert (= (and b!2008940 res!881063) b!2008941))

(assert (= (and b!2008943 (not res!881062)) b!2008938))

(assert (= (and b!2008938 res!881061) b!2008942))

(assert (= (or b!2008940 b!2008938) bm!122855))

(assert (= (or b!2008941 b!2008942) bm!122856))

(assert (= (or b!2008944 bm!122855) bm!122854))

(declare-fun m!2441161 () Bool)

(assert (=> bm!122854 m!2441161))

(declare-fun m!2441163 () Bool)

(assert (=> b!2008945 m!2441163))

(declare-fun m!2441165 () Bool)

(assert (=> bm!122856 m!2441165))

(assert (=> bm!122825 d!613387))

(declare-fun d!613389 () Bool)

(assert (=> d!613389 (= (isEmpty!13682 lt!754141) (not ((_ is Some!4600) lt!754141)))))

(assert (=> d!613135 d!613389))

(assert (=> d!613135 d!613205))

(declare-fun d!613391 () Bool)

(assert (=> d!613391 (= (isDefined!3889 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))) (not (isEmpty!13682 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))))))

(declare-fun bs!419654 () Bool)

(assert (= bs!419654 d!613391))

(assert (=> bs!419654 m!2440019))

(declare-fun m!2441167 () Bool)

(assert (=> bs!419654 m!2441167))

(assert (=> d!613073 d!613391))

(assert (=> d!613073 d!613135))

(declare-fun d!613393 () Bool)

(declare-fun e!1269375 () Bool)

(assert (=> d!613393 e!1269375))

(declare-fun res!881090 () Bool)

(assert (=> d!613393 (=> (not res!881090) (not e!1269375))))

(assert (=> d!613393 (= res!881090 (isDefined!3889 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))))))

(assert (=> d!613393 true))

(declare-fun _$52!1290 () Unit!36620)

(assert (=> d!613393 (= (choose!12233 thiss!23328 rules!3198 lt!754030 separatorToken!354) _$52!1290)))

(declare-fun b!2008991 () Bool)

(declare-fun res!881091 () Bool)

(assert (=> b!2008991 (=> (not res!881091) (not e!1269375))))

(assert (=> b!2008991 (= res!881091 (matchR!2651 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))) (list!8981 (charsOf!2500 separatorToken!354))))))

(declare-fun b!2008992 () Bool)

(assert (=> b!2008992 (= e!1269375 (= (rule!6185 separatorToken!354) (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))))))

(assert (= (and d!613393 res!881090) b!2008991))

(assert (= (and b!2008991 res!881091) b!2008992))

(assert (=> d!613393 m!2440019))

(assert (=> d!613393 m!2440019))

(assert (=> d!613393 m!2440091))

(assert (=> b!2008991 m!2440031))

(assert (=> b!2008991 m!2440095))

(assert (=> b!2008991 m!2440029))

(assert (=> b!2008991 m!2440029))

(assert (=> b!2008991 m!2440031))

(assert (=> b!2008991 m!2440019))

(assert (=> b!2008991 m!2440097))

(assert (=> b!2008991 m!2440019))

(assert (=> b!2008992 m!2440019))

(assert (=> b!2008992 m!2440019))

(assert (=> b!2008992 m!2440097))

(assert (=> d!613073 d!613393))

(assert (=> d!613073 d!613205))

(declare-fun d!613407 () Bool)

(declare-fun res!881092 () Bool)

(declare-fun e!1269376 () Bool)

(assert (=> d!613407 (=> res!881092 e!1269376)))

(assert (=> d!613407 (= res!881092 ((_ is Nil!22062) (t!187321 tokens!598)))))

(assert (=> d!613407 (= (forall!4686 (t!187321 tokens!598) lambda!76021) e!1269376)))

(declare-fun b!2008993 () Bool)

(declare-fun e!1269377 () Bool)

(assert (=> b!2008993 (= e!1269376 e!1269377)))

(declare-fun res!881093 () Bool)

(assert (=> b!2008993 (=> (not res!881093) (not e!1269377))))

(assert (=> b!2008993 (= res!881093 (dynLambda!10864 lambda!76021 (h!27463 (t!187321 tokens!598))))))

(declare-fun b!2008994 () Bool)

(assert (=> b!2008994 (= e!1269377 (forall!4686 (t!187321 (t!187321 tokens!598)) lambda!76021))))

(assert (= (and d!613407 (not res!881092)) b!2008993))

(assert (= (and b!2008993 res!881093) b!2008994))

(declare-fun b_lambda!67053 () Bool)

(assert (=> (not b_lambda!67053) (not b!2008993)))

(declare-fun m!2441223 () Bool)

(assert (=> b!2008993 m!2441223))

(declare-fun m!2441225 () Bool)

(assert (=> b!2008994 m!2441225))

(assert (=> b!2008414 d!613407))

(declare-fun d!613411 () Bool)

(assert (=> d!613411 (= (list!8981 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))) (list!8983 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))))

(declare-fun bs!419656 () Bool)

(assert (= bs!419656 d!613411))

(declare-fun m!2441227 () Bool)

(assert (=> bs!419656 m!2441227))

(assert (=> d!613077 d!613411))

(assert (=> d!613077 d!613139))

(declare-fun d!613413 () Bool)

(declare-fun dynLambda!10865 (Int BalanceConc!14558) Bool)

(assert (=> d!613413 (dynLambda!10865 lambda!76027 lt!754026)))

(declare-fun lt!754298 () Unit!36620)

(declare-fun choose!12238 (Int BalanceConc!14558) Unit!36620)

(assert (=> d!613413 (= lt!754298 (choose!12238 lambda!76027 lt!754026))))

(declare-fun Forall!1016 (Int) Bool)

(assert (=> d!613413 (Forall!1016 lambda!76027)))

(assert (=> d!613413 (= (ForallOf!426 lambda!76027 lt!754026) lt!754298)))

(declare-fun b_lambda!67055 () Bool)

(assert (=> (not b_lambda!67055) (not d!613413)))

(declare-fun bs!419657 () Bool)

(assert (= bs!419657 d!613413))

(declare-fun m!2441247 () Bool)

(assert (=> bs!419657 m!2441247))

(declare-fun m!2441249 () Bool)

(assert (=> bs!419657 m!2441249))

(declare-fun m!2441251 () Bool)

(assert (=> bs!419657 m!2441251))

(assert (=> d!613077 d!613413))

(declare-fun d!613417 () Bool)

(declare-fun res!881106 () Bool)

(declare-fun e!1269395 () Bool)

(assert (=> d!613417 (=> res!881106 e!1269395)))

(assert (=> d!613417 (= res!881106 ((_ is Nil!22063) rules!3198))))

(assert (=> d!613417 (= (noDuplicateTag!1472 thiss!23328 rules!3198 Nil!22065) e!1269395)))

(declare-fun b!2009024 () Bool)

(declare-fun e!1269396 () Bool)

(assert (=> b!2009024 (= e!1269395 e!1269396)))

(declare-fun res!881107 () Bool)

(assert (=> b!2009024 (=> (not res!881107) (not e!1269396))))

(declare-fun contains!4034 (List!22147 String!25598) Bool)

(assert (=> b!2009024 (= res!881107 (not (contains!4034 Nil!22065 (tag!4424 (h!27464 rules!3198)))))))

(declare-fun b!2009025 () Bool)

(assert (=> b!2009025 (= e!1269396 (noDuplicateTag!1472 thiss!23328 (t!187322 rules!3198) (Cons!22065 (tag!4424 (h!27464 rules!3198)) Nil!22065)))))

(assert (= (and d!613417 (not res!881106)) b!2009024))

(assert (= (and b!2009024 res!881107) b!2009025))

(declare-fun m!2441269 () Bool)

(assert (=> b!2009024 m!2441269))

(declare-fun m!2441271 () Bool)

(assert (=> b!2009025 m!2441271))

(assert (=> b!2008417 d!613417))

(declare-fun d!613425 () Bool)

(assert (=> d!613425 (= (get!6972 lt!754141) (v!26837 lt!754141))))

(assert (=> b!2008186 d!613425))

(declare-fun d!613427 () Bool)

(assert (=> d!613427 (= (isEmpty!13686 (tail!3022 lt!754030)) ((_ is Nil!22061) (tail!3022 lt!754030)))))

(assert (=> b!2008395 d!613427))

(declare-fun d!613429 () Bool)

(assert (=> d!613429 (= (tail!3022 lt!754030) (t!187320 lt!754030))))

(assert (=> b!2008395 d!613429))

(declare-fun b!2009026 () Bool)

(declare-fun e!1269398 () List!22143)

(assert (=> b!2009026 (= e!1269398 (Cons!22061 (c!324301 (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))) Nil!22061))))

(declare-fun d!613431 () Bool)

(declare-fun c!324523 () Bool)

(assert (=> d!613431 (= c!324523 (or ((_ is EmptyExpr!5385) (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))) ((_ is EmptyLang!5385) (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))))))))

(declare-fun e!1269397 () List!22143)

(assert (=> d!613431 (= (usedCharacters!398 (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))) e!1269397)))

(declare-fun c!324522 () Bool)

(declare-fun bm!122864 () Bool)

(declare-fun call!122871 () List!22143)

(declare-fun c!324520 () Bool)

(assert (=> bm!122864 (= call!122871 (usedCharacters!398 (ite c!324522 (reg!5714 (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))) (ite c!324520 (regOne!11283 (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))) (regTwo!11282 (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))))))))))

(declare-fun b!2009027 () Bool)

(declare-fun e!1269399 () List!22143)

(declare-fun e!1269400 () List!22143)

(assert (=> b!2009027 (= e!1269399 e!1269400)))

(assert (=> b!2009027 (= c!324520 ((_ is Union!5385) (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(declare-fun b!2009028 () Bool)

(assert (=> b!2009028 (= e!1269399 call!122871)))

(declare-fun b!2009029 () Bool)

(assert (=> b!2009029 (= e!1269397 Nil!22061)))

(declare-fun b!2009030 () Bool)

(declare-fun call!122872 () List!22143)

(assert (=> b!2009030 (= e!1269400 call!122872)))

(declare-fun bm!122865 () Bool)

(declare-fun call!122870 () List!22143)

(assert (=> bm!122865 (= call!122870 call!122871)))

(declare-fun b!2009031 () Bool)

(assert (=> b!2009031 (= e!1269400 call!122872)))

(declare-fun b!2009032 () Bool)

(assert (=> b!2009032 (= e!1269397 e!1269398)))

(declare-fun c!324521 () Bool)

(assert (=> b!2009032 (= c!324521 ((_ is ElementMatch!5385) (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(declare-fun bm!122866 () Bool)

(declare-fun call!122869 () List!22143)

(assert (=> bm!122866 (= call!122872 (++!5953 (ite c!324520 call!122870 call!122869) (ite c!324520 call!122869 call!122870)))))

(declare-fun b!2009033 () Bool)

(assert (=> b!2009033 (= c!324522 ((_ is Star!5385) (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(assert (=> b!2009033 (= e!1269398 e!1269399)))

(declare-fun bm!122867 () Bool)

(assert (=> bm!122867 (= call!122869 (usedCharacters!398 (ite c!324520 (regTwo!11283 (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))) (regOne!11282 (ite c!324407 (reg!5714 (regex!3960 (rule!6185 separatorToken!354))) (ite c!324405 (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))))

(assert (= (and d!613431 c!324523) b!2009029))

(assert (= (and d!613431 (not c!324523)) b!2009032))

(assert (= (and b!2009032 c!324521) b!2009026))

(assert (= (and b!2009032 (not c!324521)) b!2009033))

(assert (= (and b!2009033 c!324522) b!2009028))

(assert (= (and b!2009033 (not c!324522)) b!2009027))

(assert (= (and b!2009027 c!324520) b!2009030))

(assert (= (and b!2009027 (not c!324520)) b!2009031))

(assert (= (or b!2009030 b!2009031) bm!122865))

(assert (= (or b!2009030 b!2009031) bm!122867))

(assert (= (or b!2009030 b!2009031) bm!122866))

(assert (= (or b!2009028 bm!122865) bm!122864))

(declare-fun m!2441273 () Bool)

(assert (=> bm!122864 m!2441273))

(declare-fun m!2441275 () Bool)

(assert (=> bm!122866 m!2441275))

(declare-fun m!2441277 () Bool)

(assert (=> bm!122867 m!2441277))

(assert (=> bm!122805 d!613431))

(declare-fun d!613433 () Bool)

(assert (=> d!613433 (= (isEmpty!13684 lt!754032) (not ((_ is Some!4601) lt!754032)))))

(assert (=> d!613133 d!613433))

(declare-fun b!2009036 () Bool)

(declare-fun res!881108 () Bool)

(declare-fun e!1269402 () Bool)

(assert (=> b!2009036 (=> (not res!881108) (not e!1269402))))

(declare-fun lt!754300 () List!22143)

(assert (=> b!2009036 (= res!881108 (= (size!17248 lt!754300) (+ (size!17248 (t!187320 (++!5953 lt!754035 lt!754030))) (size!17248 lt!754023))))))

(declare-fun b!2009037 () Bool)

(assert (=> b!2009037 (= e!1269402 (or (not (= lt!754023 Nil!22061)) (= lt!754300 (t!187320 (++!5953 lt!754035 lt!754030)))))))

(declare-fun d!613435 () Bool)

(assert (=> d!613435 e!1269402))

(declare-fun res!881109 () Bool)

(assert (=> d!613435 (=> (not res!881109) (not e!1269402))))

(assert (=> d!613435 (= res!881109 (= (content!3231 lt!754300) ((_ map or) (content!3231 (t!187320 (++!5953 lt!754035 lt!754030))) (content!3231 lt!754023))))))

(declare-fun e!1269401 () List!22143)

(assert (=> d!613435 (= lt!754300 e!1269401)))

(declare-fun c!324524 () Bool)

(assert (=> d!613435 (= c!324524 ((_ is Nil!22061) (t!187320 (++!5953 lt!754035 lt!754030))))))

(assert (=> d!613435 (= (++!5953 (t!187320 (++!5953 lt!754035 lt!754030)) lt!754023) lt!754300)))

(declare-fun b!2009035 () Bool)

(assert (=> b!2009035 (= e!1269401 (Cons!22061 (h!27462 (t!187320 (++!5953 lt!754035 lt!754030))) (++!5953 (t!187320 (t!187320 (++!5953 lt!754035 lt!754030))) lt!754023)))))

(declare-fun b!2009034 () Bool)

(assert (=> b!2009034 (= e!1269401 lt!754023)))

(assert (= (and d!613435 c!324524) b!2009034))

(assert (= (and d!613435 (not c!324524)) b!2009035))

(assert (= (and d!613435 res!881109) b!2009036))

(assert (= (and b!2009036 res!881108) b!2009037))

(declare-fun m!2441279 () Bool)

(assert (=> b!2009036 m!2441279))

(declare-fun m!2441281 () Bool)

(assert (=> b!2009036 m!2441281))

(assert (=> b!2009036 m!2440413))

(declare-fun m!2441283 () Bool)

(assert (=> d!613435 m!2441283))

(declare-fun m!2441285 () Bool)

(assert (=> d!613435 m!2441285))

(assert (=> d!613435 m!2440419))

(declare-fun m!2441287 () Bool)

(assert (=> b!2009035 m!2441287))

(assert (=> b!2008470 d!613435))

(declare-fun d!613437 () Bool)

(assert (=> d!613437 (= (isEmpty!13682 lt!754029) (not ((_ is Some!4600) lt!754029)))))

(assert (=> d!613071 d!613437))

(declare-fun bs!419659 () Bool)

(declare-fun d!613439 () Bool)

(assert (= bs!419659 (and d!613439 d!613381)))

(declare-fun lambda!76058 () Int)

(assert (=> bs!419659 (= lambda!76058 lambda!76055)))

(assert (=> d!613439 true))

(declare-fun lt!754303 () Bool)

(assert (=> d!613439 (= lt!754303 (rulesValidInductive!1361 thiss!23328 rules!3198))))

(assert (=> d!613439 (= lt!754303 (forall!4687 rules!3198 lambda!76058))))

(assert (=> d!613439 (= (rulesValid!1474 thiss!23328 rules!3198) lt!754303)))

(declare-fun bs!419660 () Bool)

(assert (= bs!419660 d!613439))

(assert (=> bs!419660 m!2440333))

(declare-fun m!2441289 () Bool)

(assert (=> bs!419660 m!2441289))

(assert (=> d!613205 d!613439))

(declare-fun d!613441 () Bool)

(assert (=> d!613441 (= (get!6973 lt!754144) (v!26838 lt!754144))))

(assert (=> b!2008190 d!613441))

(declare-fun d!613443 () Bool)

(assert (=> d!613443 (= (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754144))))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754144))))))))

(declare-fun b_lambda!67059 () Bool)

(assert (=> (not b_lambda!67059) (not d!613443)))

(declare-fun tb!125487 () Bool)

(declare-fun t!187487 () Bool)

(assert (=> (and b!2008705 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187487) tb!125487))

(declare-fun result!150378 () Bool)

(assert (=> tb!125487 (= result!150378 (inv!21 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754144)))))))))

(declare-fun m!2441291 () Bool)

(assert (=> tb!125487 m!2441291))

(assert (=> d!613443 t!187487))

(declare-fun b_and!158647 () Bool)

(assert (= b_and!158625 (and (=> t!187487 result!150378) b_and!158647)))

(declare-fun t!187489 () Bool)

(declare-fun tb!125489 () Bool)

(assert (=> (and b!2007921 (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187489) tb!125489))

(declare-fun result!150380 () Bool)

(assert (= result!150380 result!150378))

(assert (=> d!613443 t!187489))

(declare-fun b_and!158649 () Bool)

(assert (= b_and!158617 (and (=> t!187489 result!150380) b_and!158649)))

(declare-fun t!187491 () Bool)

(declare-fun tb!125491 () Bool)

(assert (=> (and b!2007925 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187491) tb!125491))

(declare-fun result!150382 () Bool)

(assert (= result!150382 result!150378))

(assert (=> d!613443 t!187491))

(declare-fun b_and!158651 () Bool)

(assert (= b_and!158623 (and (=> t!187491 result!150382) b_and!158651)))

(declare-fun t!187493 () Bool)

(declare-fun tb!125493 () Bool)

(assert (=> (and b!2007923 (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187493) tb!125493))

(declare-fun result!150384 () Bool)

(assert (= result!150384 result!150378))

(assert (=> d!613443 t!187493))

(declare-fun b_and!158653 () Bool)

(assert (= b_and!158619 (and (=> t!187493 result!150384) b_and!158653)))

(declare-fun tb!125495 () Bool)

(declare-fun t!187495 () Bool)

(assert (=> (and b!2008671 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187495) tb!125495))

(declare-fun result!150386 () Bool)

(assert (= result!150386 result!150378))

(assert (=> d!613443 t!187495))

(declare-fun b_and!158655 () Bool)

(assert (= b_and!158621 (and (=> t!187495 result!150386) b_and!158655)))

(assert (=> d!613443 m!2440391))

(declare-fun m!2441293 () Bool)

(assert (=> d!613443 m!2441293))

(assert (=> b!2008190 d!613443))

(declare-fun d!613445 () Bool)

(assert (=> d!613445 (= (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754144)))) (fromListB!1259 (originalCharacters!4767 (_1!11834 (get!6973 lt!754144)))))))

(declare-fun bs!419661 () Bool)

(assert (= bs!419661 d!613445))

(declare-fun m!2441295 () Bool)

(assert (=> bs!419661 m!2441295))

(assert (=> b!2008190 d!613445))

(assert (=> b!2008391 d!613223))

(declare-fun d!613447 () Bool)

(assert (=> d!613447 (= (get!6972 lt!754163) (v!26837 lt!754163))))

(assert (=> b!2008232 d!613447))

(declare-fun d!613449 () Bool)

(declare-fun charsToBigInt!0 (List!22142 Int) Int)

(assert (=> d!613449 (= (inv!15 (value!124451 (h!27463 tokens!598))) (= (charsToBigInt!0 (text!29121 (value!124451 (h!27463 tokens!598))) 0) (value!124446 (value!124451 (h!27463 tokens!598)))))))

(declare-fun bs!419662 () Bool)

(assert (= bs!419662 d!613449))

(declare-fun m!2441297 () Bool)

(assert (=> bs!419662 m!2441297))

(assert (=> b!2008533 d!613449))

(declare-fun lt!754306 () BalanceConc!14558)

(declare-fun d!613451 () Bool)

(assert (=> d!613451 (= (list!8981 lt!754306) (originalCharacters!4767 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598))))))))

(assert (=> d!613451 (= lt!754306 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598))))))) (value!124451 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))))

(assert (=> d!613451 (= (charsOf!2500 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598))))) lt!754306)))

(declare-fun b_lambda!67061 () Bool)

(assert (=> (not b_lambda!67061) (not d!613451)))

(declare-fun tb!125497 () Bool)

(declare-fun t!187497 () Bool)

(assert (=> (and b!2008705 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))) t!187497) tb!125497))

(declare-fun tp!599269 () Bool)

(declare-fun b!2009038 () Bool)

(declare-fun e!1269404 () Bool)

(assert (=> b!2009038 (= e!1269404 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598))))))) (value!124451 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))) tp!599269))))

(declare-fun result!150388 () Bool)

(assert (=> tb!125497 (= result!150388 (and (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598))))))) (value!124451 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598))))))) e!1269404))))

(assert (= tb!125497 b!2009038))

(declare-fun m!2441305 () Bool)

(assert (=> b!2009038 m!2441305))

(declare-fun m!2441307 () Bool)

(assert (=> tb!125497 m!2441307))

(assert (=> d!613451 t!187497))

(declare-fun b_and!158657 () Bool)

(assert (= b_and!158595 (and (=> t!187497 result!150388) b_and!158657)))

(declare-fun t!187499 () Bool)

(declare-fun tb!125499 () Bool)

(assert (=> (and b!2007925 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))) t!187499) tb!125499))

(declare-fun result!150390 () Bool)

(assert (= result!150390 result!150388))

(assert (=> d!613451 t!187499))

(declare-fun b_and!158659 () Bool)

(assert (= b_and!158579 (and (=> t!187499 result!150390) b_and!158659)))

(declare-fun tb!125501 () Bool)

(declare-fun t!187501 () Bool)

(assert (=> (and b!2007923 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))) t!187501) tb!125501))

(declare-fun result!150392 () Bool)

(assert (= result!150392 result!150388))

(assert (=> d!613451 t!187501))

(declare-fun b_and!158661 () Bool)

(assert (= b_and!158577 (and (=> t!187501 result!150392) b_and!158661)))

(declare-fun t!187503 () Bool)

(declare-fun tb!125503 () Bool)

(assert (=> (and b!2008671 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))) t!187503) tb!125503))

(declare-fun result!150394 () Bool)

(assert (= result!150394 result!150388))

(assert (=> d!613451 t!187503))

(declare-fun b_and!158663 () Bool)

(assert (= b_and!158591 (and (=> t!187503 result!150394) b_and!158663)))

(declare-fun t!187505 () Bool)

(declare-fun tb!125505 () Bool)

(assert (=> (and b!2007921 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))) t!187505) tb!125505))

(declare-fun result!150396 () Bool)

(assert (= result!150396 result!150388))

(assert (=> d!613451 t!187505))

(declare-fun b_and!158665 () Bool)

(assert (= b_and!158575 (and (=> t!187505 result!150396) b_and!158665)))

(declare-fun m!2441309 () Bool)

(assert (=> d!613451 m!2441309))

(declare-fun m!2441311 () Bool)

(assert (=> d!613451 m!2441311))

(assert (=> bm!122766 d!613451))

(declare-fun d!613455 () Bool)

(assert (=> d!613455 (= (isEmpty!13686 lt!754035) ((_ is Nil!22061) lt!754035))))

(assert (=> bm!122815 d!613455))

(declare-fun d!613457 () Bool)

(declare-fun lt!754309 () Bool)

(declare-fun e!1269405 () Bool)

(assert (=> d!613457 (= lt!754309 e!1269405)))

(declare-fun res!881110 () Bool)

(assert (=> d!613457 (=> (not res!881110) (not e!1269405))))

(assert (=> d!613457 (= res!881110 (= (list!8985 (_1!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 (h!27463 tokens!598)))))) (list!8985 (singletonSeq!1942 (h!27463 tokens!598)))))))

(declare-fun e!1269406 () Bool)

(assert (=> d!613457 (= lt!754309 e!1269406)))

(declare-fun res!881111 () Bool)

(assert (=> d!613457 (=> (not res!881111) (not e!1269406))))

(declare-fun lt!754308 () tuple2!20734)

(assert (=> d!613457 (= res!881111 (= (size!17250 (_1!11836 lt!754308)) 1))))

(assert (=> d!613457 (= lt!754308 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 (h!27463 tokens!598)))))))

(assert (=> d!613457 (not (isEmpty!13680 rules!3198))))

(assert (=> d!613457 (= (rulesProduceIndividualToken!1745 thiss!23328 rules!3198 (h!27463 tokens!598)) lt!754309)))

(declare-fun b!2009039 () Bool)

(declare-fun res!881112 () Bool)

(assert (=> b!2009039 (=> (not res!881112) (not e!1269406))))

(assert (=> b!2009039 (= res!881112 (= (apply!5783 (_1!11836 lt!754308) 0) (h!27463 tokens!598)))))

(declare-fun b!2009040 () Bool)

(assert (=> b!2009040 (= e!1269406 (isEmpty!13688 (_2!11836 lt!754308)))))

(declare-fun b!2009041 () Bool)

(assert (=> b!2009041 (= e!1269405 (isEmpty!13688 (_2!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 (h!27463 tokens!598)))))))))

(assert (= (and d!613457 res!881111) b!2009039))

(assert (= (and b!2009039 res!881112) b!2009040))

(assert (= (and d!613457 res!881110) b!2009041))

(declare-fun m!2441313 () Bool)

(assert (=> d!613457 m!2441313))

(assert (=> d!613457 m!2440071))

(declare-fun m!2441315 () Bool)

(assert (=> d!613457 m!2441315))

(declare-fun m!2441317 () Bool)

(assert (=> d!613457 m!2441317))

(declare-fun m!2441319 () Bool)

(assert (=> d!613457 m!2441319))

(declare-fun m!2441321 () Bool)

(assert (=> d!613457 m!2441321))

(assert (=> d!613457 m!2441313))

(assert (=> d!613457 m!2441315))

(assert (=> d!613457 m!2441313))

(declare-fun m!2441323 () Bool)

(assert (=> d!613457 m!2441323))

(declare-fun m!2441325 () Bool)

(assert (=> b!2009039 m!2441325))

(declare-fun m!2441327 () Bool)

(assert (=> b!2009040 m!2441327))

(assert (=> b!2009041 m!2441313))

(assert (=> b!2009041 m!2441313))

(assert (=> b!2009041 m!2441315))

(assert (=> b!2009041 m!2441315))

(assert (=> b!2009041 m!2441317))

(declare-fun m!2441329 () Bool)

(assert (=> b!2009041 m!2441329))

(assert (=> b!2008358 d!613457))

(declare-fun d!613459 () Bool)

(declare-fun isBalanced!2295 (Conc!7371) Bool)

(assert (=> d!613459 (= (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))) (isBalanced!2295 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))))))

(declare-fun bs!419664 () Bool)

(assert (= bs!419664 d!613459))

(declare-fun m!2441337 () Bool)

(assert (=> bs!419664 m!2441337))

(assert (=> tb!125361 d!613459))

(declare-fun d!613463 () Bool)

(assert (=> d!613463 (= (list!8981 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))) (list!8983 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))))))

(declare-fun bs!419665 () Bool)

(assert (= bs!419665 d!613463))

(declare-fun m!2441339 () Bool)

(assert (=> bs!419665 m!2441339))

(assert (=> b!2008612 d!613463))

(declare-fun d!613465 () Bool)

(assert (=> d!613465 (= (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))) (v!26837 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))))))

(assert (=> b!2007940 d!613465))

(assert (=> b!2007940 d!613147))

(declare-fun d!613467 () Bool)

(assert (=> d!613467 (= (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126)))) (list!8983 (c!324302 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))))))

(declare-fun bs!419666 () Bool)

(assert (= bs!419666 d!613467))

(declare-fun m!2441341 () Bool)

(assert (=> bs!419666 m!2441341))

(assert (=> b!2008166 d!613467))

(declare-fun d!613469 () Bool)

(declare-fun lt!754313 () BalanceConc!14558)

(assert (=> d!613469 (= (list!8981 lt!754313) (originalCharacters!4767 (_1!11834 (get!6973 lt!754126))))))

(assert (=> d!613469 (= lt!754313 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))) (value!124451 (_1!11834 (get!6973 lt!754126)))))))

(assert (=> d!613469 (= (charsOf!2500 (_1!11834 (get!6973 lt!754126))) lt!754313)))

(declare-fun b_lambda!67063 () Bool)

(assert (=> (not b_lambda!67063) (not d!613469)))

(declare-fun t!187508 () Bool)

(declare-fun tb!125507 () Bool)

(assert (=> (and b!2008671 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187508) tb!125507))

(declare-fun b!2009045 () Bool)

(declare-fun e!1269410 () Bool)

(declare-fun tp!599270 () Bool)

(assert (=> b!2009045 (= e!1269410 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))) (value!124451 (_1!11834 (get!6973 lt!754126)))))) tp!599270))))

(declare-fun result!150398 () Bool)

(assert (=> tb!125507 (= result!150398 (and (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))) (value!124451 (_1!11834 (get!6973 lt!754126))))) e!1269410))))

(assert (= tb!125507 b!2009045))

(declare-fun m!2441343 () Bool)

(assert (=> b!2009045 m!2441343))

(declare-fun m!2441345 () Bool)

(assert (=> tb!125507 m!2441345))

(assert (=> d!613469 t!187508))

(declare-fun b_and!158667 () Bool)

(assert (= b_and!158663 (and (=> t!187508 result!150398) b_and!158667)))

(declare-fun tb!125509 () Bool)

(declare-fun t!187510 () Bool)

(assert (=> (and b!2007923 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187510) tb!125509))

(declare-fun result!150400 () Bool)

(assert (= result!150400 result!150398))

(assert (=> d!613469 t!187510))

(declare-fun b_and!158669 () Bool)

(assert (= b_and!158661 (and (=> t!187510 result!150400) b_and!158669)))

(declare-fun tb!125511 () Bool)

(declare-fun t!187512 () Bool)

(assert (=> (and b!2007921 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187512) tb!125511))

(declare-fun result!150402 () Bool)

(assert (= result!150402 result!150398))

(assert (=> d!613469 t!187512))

(declare-fun b_and!158671 () Bool)

(assert (= b_and!158665 (and (=> t!187512 result!150402) b_and!158671)))

(declare-fun tb!125513 () Bool)

(declare-fun t!187514 () Bool)

(assert (=> (and b!2008705 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187514) tb!125513))

(declare-fun result!150404 () Bool)

(assert (= result!150404 result!150398))

(assert (=> d!613469 t!187514))

(declare-fun b_and!158673 () Bool)

(assert (= b_and!158657 (and (=> t!187514 result!150404) b_and!158673)))

(declare-fun tb!125515 () Bool)

(declare-fun t!187516 () Bool)

(assert (=> (and b!2007925 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187516) tb!125515))

(declare-fun result!150406 () Bool)

(assert (= result!150406 result!150398))

(assert (=> d!613469 t!187516))

(declare-fun b_and!158675 () Bool)

(assert (= b_and!158659 (and (=> t!187516 result!150406) b_and!158675)))

(declare-fun m!2441347 () Bool)

(assert (=> d!613469 m!2441347))

(declare-fun m!2441349 () Bool)

(assert (=> d!613469 m!2441349))

(assert (=> b!2008166 d!613469))

(assert (=> b!2008166 d!613341))

(declare-fun b!2009054 () Bool)

(declare-fun e!1269415 () List!22143)

(assert (=> b!2009054 (= e!1269415 Nil!22061)))

(declare-fun b!2009056 () Bool)

(declare-fun e!1269416 () List!22143)

(declare-fun list!8987 (IArray!14747) List!22143)

(assert (=> b!2009056 (= e!1269416 (list!8987 (xs!10269 (c!324302 lt!754026))))))

(declare-fun b!2009055 () Bool)

(assert (=> b!2009055 (= e!1269415 e!1269416)))

(declare-fun c!324530 () Bool)

(assert (=> b!2009055 (= c!324530 ((_ is Leaf!10814) (c!324302 lt!754026)))))

(declare-fun d!613471 () Bool)

(declare-fun c!324529 () Bool)

(assert (=> d!613471 (= c!324529 ((_ is Empty!7371) (c!324302 lt!754026)))))

(assert (=> d!613471 (= (list!8983 (c!324302 lt!754026)) e!1269415)))

(declare-fun b!2009057 () Bool)

(assert (=> b!2009057 (= e!1269416 (++!5953 (list!8983 (left!17553 (c!324302 lt!754026))) (list!8983 (right!17883 (c!324302 lt!754026)))))))

(assert (= (and d!613471 c!324529) b!2009054))

(assert (= (and d!613471 (not c!324529)) b!2009055))

(assert (= (and b!2009055 c!324530) b!2009056))

(assert (= (and b!2009055 (not c!324530)) b!2009057))

(declare-fun m!2441351 () Bool)

(assert (=> b!2009056 m!2441351))

(declare-fun m!2441353 () Bool)

(assert (=> b!2009057 m!2441353))

(declare-fun m!2441355 () Bool)

(assert (=> b!2009057 m!2441355))

(assert (=> b!2009057 m!2441353))

(assert (=> b!2009057 m!2441355))

(declare-fun m!2441357 () Bool)

(assert (=> b!2009057 m!2441357))

(assert (=> d!613139 d!613471))

(declare-fun d!613473 () Bool)

(declare-fun c!324533 () Bool)

(assert (=> d!613473 (= c!324533 ((_ is Nil!22061) lt!754210))))

(declare-fun e!1269419 () (InoxSet C!10916))

(assert (=> d!613473 (= (content!3231 lt!754210) e!1269419)))

(declare-fun b!2009062 () Bool)

(assert (=> b!2009062 (= e!1269419 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009063 () Bool)

(assert (=> b!2009063 (= e!1269419 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 lt!754210) true) (content!3231 (t!187320 lt!754210))))))

(assert (= (and d!613473 c!324533) b!2009062))

(assert (= (and d!613473 (not c!324533)) b!2009063))

(declare-fun m!2441359 () Bool)

(assert (=> b!2009063 m!2441359))

(declare-fun m!2441361 () Bool)

(assert (=> b!2009063 m!2441361))

(assert (=> d!613217 d!613473))

(declare-fun d!613475 () Bool)

(declare-fun c!324534 () Bool)

(assert (=> d!613475 (= c!324534 ((_ is Nil!22061) lt!754030))))

(declare-fun e!1269420 () (InoxSet C!10916))

(assert (=> d!613475 (= (content!3231 lt!754030) e!1269420)))

(declare-fun b!2009064 () Bool)

(assert (=> b!2009064 (= e!1269420 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009065 () Bool)

(assert (=> b!2009065 (= e!1269420 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 lt!754030) true) (content!3231 (t!187320 lt!754030))))))

(assert (= (and d!613475 c!324534) b!2009064))

(assert (= (and d!613475 (not c!324534)) b!2009065))

(declare-fun m!2441363 () Bool)

(assert (=> b!2009065 m!2441363))

(assert (=> b!2009065 m!2441057))

(assert (=> d!613217 d!613475))

(declare-fun d!613477 () Bool)

(declare-fun c!324535 () Bool)

(assert (=> d!613477 (= c!324535 ((_ is Nil!22061) lt!754023))))

(declare-fun e!1269421 () (InoxSet C!10916))

(assert (=> d!613477 (= (content!3231 lt!754023) e!1269421)))

(declare-fun b!2009066 () Bool)

(assert (=> b!2009066 (= e!1269421 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009067 () Bool)

(assert (=> b!2009067 (= e!1269421 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 lt!754023) true) (content!3231 (t!187320 lt!754023))))))

(assert (= (and d!613477 c!324535) b!2009066))

(assert (= (and d!613477 (not c!324535)) b!2009067))

(declare-fun m!2441365 () Bool)

(assert (=> b!2009067 m!2441365))

(declare-fun m!2441367 () Bool)

(assert (=> b!2009067 m!2441367))

(assert (=> d!613217 d!613477))

(declare-fun d!613479 () Bool)

(assert (=> d!613479 (= (isEmpty!13686 (originalCharacters!4767 separatorToken!354)) ((_ is Nil!22061) (originalCharacters!4767 separatorToken!354)))))

(assert (=> d!613253 d!613479))

(declare-fun e!1269425 () Bool)

(declare-fun b!2009068 () Bool)

(assert (=> b!2009068 (= e!1269425 (= (head!4536 (list!8981 (charsOf!2500 separatorToken!354))) (c!324301 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))))))))

(declare-fun b!2009069 () Bool)

(declare-fun e!1269426 () Bool)

(declare-fun lt!754314 () Bool)

(assert (=> b!2009069 (= e!1269426 (not lt!754314))))

(declare-fun b!2009070 () Bool)

(declare-fun res!881118 () Bool)

(declare-fun e!1269428 () Bool)

(assert (=> b!2009070 (=> res!881118 e!1269428)))

(assert (=> b!2009070 (= res!881118 (not ((_ is ElementMatch!5385) (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))))))))

(assert (=> b!2009070 (= e!1269426 e!1269428)))

(declare-fun d!613481 () Bool)

(declare-fun e!1269423 () Bool)

(assert (=> d!613481 e!1269423))

(declare-fun c!324538 () Bool)

(assert (=> d!613481 (= c!324538 ((_ is EmptyExpr!5385) (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))))))))

(declare-fun e!1269422 () Bool)

(assert (=> d!613481 (= lt!754314 e!1269422)))

(declare-fun c!324536 () Bool)

(assert (=> d!613481 (= c!324536 (isEmpty!13686 (list!8981 (charsOf!2500 separatorToken!354))))))

(assert (=> d!613481 (validRegex!2157 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))))))

(assert (=> d!613481 (= (matchR!2651 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))) (list!8981 (charsOf!2500 separatorToken!354))) lt!754314)))

(declare-fun b!2009071 () Bool)

(declare-fun res!881122 () Bool)

(assert (=> b!2009071 (=> (not res!881122) (not e!1269425))))

(assert (=> b!2009071 (= res!881122 (isEmpty!13686 (tail!3022 (list!8981 (charsOf!2500 separatorToken!354)))))))

(declare-fun b!2009072 () Bool)

(declare-fun res!881121 () Bool)

(declare-fun e!1269427 () Bool)

(assert (=> b!2009072 (=> res!881121 e!1269427)))

(assert (=> b!2009072 (= res!881121 (not (isEmpty!13686 (tail!3022 (list!8981 (charsOf!2500 separatorToken!354))))))))

(declare-fun b!2009073 () Bool)

(declare-fun res!881117 () Bool)

(assert (=> b!2009073 (=> res!881117 e!1269428)))

(assert (=> b!2009073 (= res!881117 e!1269425)))

(declare-fun res!881119 () Bool)

(assert (=> b!2009073 (=> (not res!881119) (not e!1269425))))

(assert (=> b!2009073 (= res!881119 lt!754314)))

(declare-fun b!2009074 () Bool)

(assert (=> b!2009074 (= e!1269422 (matchR!2651 (derivativeStep!1390 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354))))) (head!4536 (list!8981 (charsOf!2500 separatorToken!354)))) (tail!3022 (list!8981 (charsOf!2500 separatorToken!354)))))))

(declare-fun b!2009075 () Bool)

(declare-fun e!1269424 () Bool)

(assert (=> b!2009075 (= e!1269428 e!1269424)))

(declare-fun res!881123 () Bool)

(assert (=> b!2009075 (=> (not res!881123) (not e!1269424))))

(assert (=> b!2009075 (= res!881123 (not lt!754314))))

(declare-fun b!2009076 () Bool)

(assert (=> b!2009076 (= e!1269424 e!1269427)))

(declare-fun res!881120 () Bool)

(assert (=> b!2009076 (=> res!881120 e!1269427)))

(declare-fun call!122873 () Bool)

(assert (=> b!2009076 (= res!881120 call!122873)))

(declare-fun b!2009077 () Bool)

(assert (=> b!2009077 (= e!1269423 e!1269426)))

(declare-fun c!324537 () Bool)

(assert (=> b!2009077 (= c!324537 ((_ is EmptyLang!5385) (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))))))))

(declare-fun b!2009078 () Bool)

(declare-fun res!881116 () Bool)

(assert (=> b!2009078 (=> (not res!881116) (not e!1269425))))

(assert (=> b!2009078 (= res!881116 (not call!122873))))

(declare-fun b!2009079 () Bool)

(assert (=> b!2009079 (= e!1269427 (not (= (head!4536 (list!8981 (charsOf!2500 separatorToken!354))) (c!324301 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))))))))))

(declare-fun bm!122868 () Bool)

(assert (=> bm!122868 (= call!122873 (isEmpty!13686 (list!8981 (charsOf!2500 separatorToken!354))))))

(declare-fun b!2009080 () Bool)

(assert (=> b!2009080 (= e!1269423 (= lt!754314 call!122873))))

(declare-fun b!2009081 () Bool)

(assert (=> b!2009081 (= e!1269422 (nullable!1631 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))))))))

(assert (= (and d!613481 c!324536) b!2009081))

(assert (= (and d!613481 (not c!324536)) b!2009074))

(assert (= (and d!613481 c!324538) b!2009080))

(assert (= (and d!613481 (not c!324538)) b!2009077))

(assert (= (and b!2009077 c!324537) b!2009069))

(assert (= (and b!2009077 (not c!324537)) b!2009070))

(assert (= (and b!2009070 (not res!881118)) b!2009073))

(assert (= (and b!2009073 res!881119) b!2009078))

(assert (= (and b!2009078 res!881116) b!2009071))

(assert (= (and b!2009071 res!881122) b!2009068))

(assert (= (and b!2009073 (not res!881117)) b!2009075))

(assert (= (and b!2009075 res!881123) b!2009076))

(assert (= (and b!2009076 (not res!881120)) b!2009072))

(assert (= (and b!2009072 (not res!881121)) b!2009079))

(assert (= (or b!2009080 b!2009076 b!2009078) bm!122868))

(assert (=> b!2009074 m!2440031))

(declare-fun m!2441369 () Bool)

(assert (=> b!2009074 m!2441369))

(assert (=> b!2009074 m!2441369))

(declare-fun m!2441371 () Bool)

(assert (=> b!2009074 m!2441371))

(assert (=> b!2009074 m!2440031))

(declare-fun m!2441373 () Bool)

(assert (=> b!2009074 m!2441373))

(assert (=> b!2009074 m!2441371))

(assert (=> b!2009074 m!2441373))

(declare-fun m!2441375 () Bool)

(assert (=> b!2009074 m!2441375))

(assert (=> b!2009068 m!2440031))

(assert (=> b!2009068 m!2441369))

(declare-fun m!2441377 () Bool)

(assert (=> b!2009081 m!2441377))

(assert (=> d!613481 m!2440031))

(declare-fun m!2441379 () Bool)

(assert (=> d!613481 m!2441379))

(declare-fun m!2441381 () Bool)

(assert (=> d!613481 m!2441381))

(assert (=> bm!122868 m!2440031))

(assert (=> bm!122868 m!2441379))

(assert (=> b!2009079 m!2440031))

(assert (=> b!2009079 m!2441369))

(assert (=> b!2009072 m!2440031))

(assert (=> b!2009072 m!2441373))

(assert (=> b!2009072 m!2441373))

(declare-fun m!2441383 () Bool)

(assert (=> b!2009072 m!2441383))

(assert (=> b!2009071 m!2440031))

(assert (=> b!2009071 m!2441373))

(assert (=> b!2009071 m!2441373))

(assert (=> b!2009071 m!2441383))

(assert (=> b!2007941 d!613481))

(declare-fun d!613483 () Bool)

(assert (=> d!613483 (= (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))) (v!26837 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 separatorToken!354)))))))

(assert (=> b!2007941 d!613483))

(assert (=> b!2007941 d!613109))

(assert (=> b!2007941 d!613131))

(assert (=> b!2007941 d!613135))

(declare-fun d!613485 () Bool)

(declare-fun lt!754317 () Bool)

(assert (=> d!613485 (= lt!754317 (isEmpty!13686 (list!8981 (_2!11836 lt!754219))))))

(declare-fun isEmpty!13689 (Conc!7371) Bool)

(assert (=> d!613485 (= lt!754317 (isEmpty!13689 (c!324302 (_2!11836 lt!754219))))))

(assert (=> d!613485 (= (isEmpty!13688 (_2!11836 lt!754219)) lt!754317)))

(declare-fun bs!419667 () Bool)

(assert (= bs!419667 d!613485))

(declare-fun m!2441385 () Bool)

(assert (=> bs!419667 m!2441385))

(assert (=> bs!419667 m!2441385))

(declare-fun m!2441387 () Bool)

(assert (=> bs!419667 m!2441387))

(declare-fun m!2441389 () Bool)

(assert (=> bs!419667 m!2441389))

(assert (=> b!2008655 d!613485))

(declare-fun b!2009084 () Bool)

(declare-fun res!881124 () Bool)

(declare-fun e!1269430 () Bool)

(assert (=> b!2009084 (=> (not res!881124) (not e!1269430))))

(declare-fun lt!754318 () List!22143)

(assert (=> b!2009084 (= res!881124 (= (size!17248 lt!754318) (+ (size!17248 (t!187320 lt!754035)) (size!17248 (++!5953 lt!754030 lt!754023)))))))

(declare-fun b!2009085 () Bool)

(assert (=> b!2009085 (= e!1269430 (or (not (= (++!5953 lt!754030 lt!754023) Nil!22061)) (= lt!754318 (t!187320 lt!754035))))))

(declare-fun d!613487 () Bool)

(assert (=> d!613487 e!1269430))

(declare-fun res!881125 () Bool)

(assert (=> d!613487 (=> (not res!881125) (not e!1269430))))

(assert (=> d!613487 (= res!881125 (= (content!3231 lt!754318) ((_ map or) (content!3231 (t!187320 lt!754035)) (content!3231 (++!5953 lt!754030 lt!754023)))))))

(declare-fun e!1269429 () List!22143)

(assert (=> d!613487 (= lt!754318 e!1269429)))

(declare-fun c!324539 () Bool)

(assert (=> d!613487 (= c!324539 ((_ is Nil!22061) (t!187320 lt!754035)))))

(assert (=> d!613487 (= (++!5953 (t!187320 lt!754035) (++!5953 lt!754030 lt!754023)) lt!754318)))

(declare-fun b!2009083 () Bool)

(assert (=> b!2009083 (= e!1269429 (Cons!22061 (h!27462 (t!187320 lt!754035)) (++!5953 (t!187320 (t!187320 lt!754035)) (++!5953 lt!754030 lt!754023))))))

(declare-fun b!2009082 () Bool)

(assert (=> b!2009082 (= e!1269429 (++!5953 lt!754030 lt!754023))))

(assert (= (and d!613487 c!324539) b!2009082))

(assert (= (and d!613487 (not c!324539)) b!2009083))

(assert (= (and d!613487 res!881125) b!2009084))

(assert (= (and b!2009084 res!881124) b!2009085))

(declare-fun m!2441391 () Bool)

(assert (=> b!2009084 m!2441391))

(declare-fun m!2441393 () Bool)

(assert (=> b!2009084 m!2441393))

(assert (=> b!2009084 m!2440059))

(assert (=> b!2009084 m!2440677))

(declare-fun m!2441395 () Bool)

(assert (=> d!613487 m!2441395))

(declare-fun m!2441397 () Bool)

(assert (=> d!613487 m!2441397))

(assert (=> d!613487 m!2440059))

(assert (=> d!613487 m!2440681))

(assert (=> b!2009083 m!2440059))

(declare-fun m!2441399 () Bool)

(assert (=> b!2009083 m!2441399))

(assert (=> b!2008482 d!613487))

(declare-fun d!613489 () Bool)

(declare-fun lt!754321 () Int)

(assert (=> d!613489 (>= lt!754321 0)))

(declare-fun e!1269433 () Int)

(assert (=> d!613489 (= lt!754321 e!1269433)))

(declare-fun c!324542 () Bool)

(assert (=> d!613489 (= c!324542 ((_ is Nil!22061) lt!754210))))

(assert (=> d!613489 (= (size!17248 lt!754210) lt!754321)))

(declare-fun b!2009090 () Bool)

(assert (=> b!2009090 (= e!1269433 0)))

(declare-fun b!2009091 () Bool)

(assert (=> b!2009091 (= e!1269433 (+ 1 (size!17248 (t!187320 lt!754210))))))

(assert (= (and d!613489 c!324542) b!2009090))

(assert (= (and d!613489 (not c!324542)) b!2009091))

(declare-fun m!2441401 () Bool)

(assert (=> b!2009091 m!2441401))

(assert (=> b!2008479 d!613489))

(declare-fun d!613491 () Bool)

(declare-fun lt!754322 () Int)

(assert (=> d!613491 (>= lt!754322 0)))

(declare-fun e!1269434 () Int)

(assert (=> d!613491 (= lt!754322 e!1269434)))

(declare-fun c!324543 () Bool)

(assert (=> d!613491 (= c!324543 ((_ is Nil!22061) lt!754030))))

(assert (=> d!613491 (= (size!17248 lt!754030) lt!754322)))

(declare-fun b!2009092 () Bool)

(assert (=> b!2009092 (= e!1269434 0)))

(declare-fun b!2009093 () Bool)

(assert (=> b!2009093 (= e!1269434 (+ 1 (size!17248 (t!187320 lt!754030))))))

(assert (= (and d!613491 c!324543) b!2009092))

(assert (= (and d!613491 (not c!324543)) b!2009093))

(assert (=> b!2009093 m!2441053))

(assert (=> b!2008479 d!613491))

(declare-fun d!613493 () Bool)

(declare-fun lt!754323 () Int)

(assert (=> d!613493 (>= lt!754323 0)))

(declare-fun e!1269435 () Int)

(assert (=> d!613493 (= lt!754323 e!1269435)))

(declare-fun c!324544 () Bool)

(assert (=> d!613493 (= c!324544 ((_ is Nil!22061) lt!754023))))

(assert (=> d!613493 (= (size!17248 lt!754023) lt!754323)))

(declare-fun b!2009094 () Bool)

(assert (=> b!2009094 (= e!1269435 0)))

(declare-fun b!2009095 () Bool)

(assert (=> b!2009095 (= e!1269435 (+ 1 (size!17248 (t!187320 lt!754023))))))

(assert (= (and d!613493 c!324544) b!2009094))

(assert (= (and d!613493 (not c!324544)) b!2009095))

(declare-fun m!2441403 () Bool)

(assert (=> b!2009095 m!2441403))

(assert (=> b!2008479 d!613493))

(assert (=> b!2008491 d!613369))

(assert (=> b!2008491 d!613371))

(declare-fun d!613495 () Bool)

(declare-fun lt!754324 () Int)

(assert (=> d!613495 (>= lt!754324 0)))

(declare-fun e!1269436 () Int)

(assert (=> d!613495 (= lt!754324 e!1269436)))

(declare-fun c!324545 () Bool)

(assert (=> d!613495 (= c!324545 ((_ is Nil!22061) (_2!11834 (get!6973 lt!754126))))))

(assert (=> d!613495 (= (size!17248 (_2!11834 (get!6973 lt!754126))) lt!754324)))

(declare-fun b!2009096 () Bool)

(assert (=> b!2009096 (= e!1269436 0)))

(declare-fun b!2009097 () Bool)

(assert (=> b!2009097 (= e!1269436 (+ 1 (size!17248 (t!187320 (_2!11834 (get!6973 lt!754126))))))))

(assert (= (and d!613495 c!324545) b!2009096))

(assert (= (and d!613495 (not c!324545)) b!2009097))

(declare-fun m!2441405 () Bool)

(assert (=> b!2009097 m!2441405))

(assert (=> b!2008162 d!613495))

(assert (=> b!2008162 d!613341))

(declare-fun d!613497 () Bool)

(declare-fun lt!754325 () Int)

(assert (=> d!613497 (>= lt!754325 0)))

(declare-fun e!1269437 () Int)

(assert (=> d!613497 (= lt!754325 e!1269437)))

(declare-fun c!324546 () Bool)

(assert (=> d!613497 (= c!324546 ((_ is Nil!22061) (++!5953 lt!754035 lt!754023)))))

(assert (=> d!613497 (= (size!17248 (++!5953 lt!754035 lt!754023)) lt!754325)))

(declare-fun b!2009098 () Bool)

(assert (=> b!2009098 (= e!1269437 0)))

(declare-fun b!2009099 () Bool)

(assert (=> b!2009099 (= e!1269437 (+ 1 (size!17248 (t!187320 (++!5953 lt!754035 lt!754023)))))))

(assert (= (and d!613497 c!324546) b!2009098))

(assert (= (and d!613497 (not c!324546)) b!2009099))

(declare-fun m!2441407 () Bool)

(assert (=> b!2009099 m!2441407))

(assert (=> b!2008162 d!613497))

(declare-fun d!613499 () Bool)

(assert (=> d!613499 (= (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144)))) (list!8983 (c!324302 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))))))

(declare-fun bs!419668 () Bool)

(assert (= bs!419668 d!613499))

(declare-fun m!2441409 () Bool)

(assert (=> bs!419668 m!2441409))

(assert (=> b!2008195 d!613499))

(declare-fun d!613501 () Bool)

(declare-fun lt!754326 () BalanceConc!14558)

(assert (=> d!613501 (= (list!8981 lt!754326) (originalCharacters!4767 (_1!11834 (get!6973 lt!754144))))))

(assert (=> d!613501 (= lt!754326 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))) (value!124451 (_1!11834 (get!6973 lt!754144)))))))

(assert (=> d!613501 (= (charsOf!2500 (_1!11834 (get!6973 lt!754144))) lt!754326)))

(declare-fun b_lambda!67065 () Bool)

(assert (=> (not b_lambda!67065) (not d!613501)))

(declare-fun t!187519 () Bool)

(declare-fun tb!125517 () Bool)

(assert (=> (and b!2008705 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187519) tb!125517))

(declare-fun b!2009100 () Bool)

(declare-fun e!1269438 () Bool)

(declare-fun tp!599271 () Bool)

(assert (=> b!2009100 (= e!1269438 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))) (value!124451 (_1!11834 (get!6973 lt!754144)))))) tp!599271))))

(declare-fun result!150408 () Bool)

(assert (=> tb!125517 (= result!150408 (and (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))) (value!124451 (_1!11834 (get!6973 lt!754144))))) e!1269438))))

(assert (= tb!125517 b!2009100))

(declare-fun m!2441411 () Bool)

(assert (=> b!2009100 m!2441411))

(declare-fun m!2441413 () Bool)

(assert (=> tb!125517 m!2441413))

(assert (=> d!613501 t!187519))

(declare-fun b_and!158677 () Bool)

(assert (= b_and!158673 (and (=> t!187519 result!150408) b_and!158677)))

(declare-fun tb!125519 () Bool)

(declare-fun t!187521 () Bool)

(assert (=> (and b!2007921 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187521) tb!125519))

(declare-fun result!150410 () Bool)

(assert (= result!150410 result!150408))

(assert (=> d!613501 t!187521))

(declare-fun b_and!158679 () Bool)

(assert (= b_and!158671 (and (=> t!187521 result!150410) b_and!158679)))

(declare-fun tb!125521 () Bool)

(declare-fun t!187523 () Bool)

(assert (=> (and b!2007925 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187523) tb!125521))

(declare-fun result!150412 () Bool)

(assert (= result!150412 result!150408))

(assert (=> d!613501 t!187523))

(declare-fun b_and!158681 () Bool)

(assert (= b_and!158675 (and (=> t!187523 result!150412) b_and!158681)))

(declare-fun tb!125523 () Bool)

(declare-fun t!187525 () Bool)

(assert (=> (and b!2007923 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187525) tb!125523))

(declare-fun result!150414 () Bool)

(assert (= result!150414 result!150408))

(assert (=> d!613501 t!187525))

(declare-fun b_and!158683 () Bool)

(assert (= b_and!158669 (and (=> t!187525 result!150414) b_and!158683)))

(declare-fun tb!125525 () Bool)

(declare-fun t!187527 () Bool)

(assert (=> (and b!2008671 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187527) tb!125525))

(declare-fun result!150416 () Bool)

(assert (= result!150416 result!150408))

(assert (=> d!613501 t!187527))

(declare-fun b_and!158685 () Bool)

(assert (= b_and!158667 (and (=> t!187527 result!150416) b_and!158685)))

(declare-fun m!2441415 () Bool)

(assert (=> d!613501 m!2441415))

(declare-fun m!2441417 () Bool)

(assert (=> d!613501 m!2441417))

(assert (=> b!2008195 d!613501))

(assert (=> b!2008195 d!613441))

(declare-fun d!613503 () Bool)

(declare-fun lt!754327 () Int)

(assert (=> d!613503 (>= lt!754327 0)))

(declare-fun e!1269439 () Int)

(assert (=> d!613503 (= lt!754327 e!1269439)))

(declare-fun c!324547 () Bool)

(assert (=> d!613503 (= c!324547 ((_ is Nil!22061) (originalCharacters!4767 separatorToken!354)))))

(assert (=> d!613503 (= (size!17248 (originalCharacters!4767 separatorToken!354)) lt!754327)))

(declare-fun b!2009101 () Bool)

(assert (=> b!2009101 (= e!1269439 0)))

(declare-fun b!2009102 () Bool)

(assert (=> b!2009102 (= e!1269439 (+ 1 (size!17248 (t!187320 (originalCharacters!4767 separatorToken!354)))))))

(assert (= (and d!613503 c!324547) b!2009101))

(assert (= (and d!613503 (not c!324547)) b!2009102))

(declare-fun m!2441419 () Bool)

(assert (=> b!2009102 m!2441419))

(assert (=> b!2008613 d!613503))

(declare-fun bs!419669 () Bool)

(declare-fun d!613505 () Bool)

(assert (= bs!419669 (and d!613505 b!2007920)))

(declare-fun lambda!76059 () Int)

(assert (=> bs!419669 (not (= lambda!76059 lambda!76021))))

(declare-fun bs!419670 () Bool)

(assert (= bs!419670 (and d!613505 b!2008072)))

(assert (=> bs!419670 (= lambda!76059 lambda!76030)))

(declare-fun bs!419671 () Bool)

(assert (= bs!419671 (and d!613505 d!613161)))

(assert (=> bs!419671 (= lambda!76059 lambda!76045)))

(declare-fun b!2009107 () Bool)

(declare-fun e!1269444 () Bool)

(assert (=> b!2009107 (= e!1269444 true)))

(declare-fun b!2009106 () Bool)

(declare-fun e!1269443 () Bool)

(assert (=> b!2009106 (= e!1269443 e!1269444)))

(declare-fun b!2009105 () Bool)

(declare-fun e!1269442 () Bool)

(assert (=> b!2009105 (= e!1269442 e!1269443)))

(assert (=> d!613505 e!1269442))

(assert (= b!2009106 b!2009107))

(assert (= b!2009105 b!2009106))

(assert (= (and d!613505 ((_ is Cons!22063) rules!3198)) b!2009105))

(assert (=> b!2009107 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10858 order!14005 lambda!76059))))

(assert (=> b!2009107 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10858 order!14005 lambda!76059))))

(assert (=> d!613505 true))

(declare-fun lt!754328 () Bool)

(assert (=> d!613505 (= lt!754328 (forall!4686 (t!187321 tokens!598) lambda!76059))))

(declare-fun e!1269440 () Bool)

(assert (=> d!613505 (= lt!754328 e!1269440)))

(declare-fun res!881126 () Bool)

(assert (=> d!613505 (=> res!881126 e!1269440)))

(assert (=> d!613505 (= res!881126 (not ((_ is Cons!22062) (t!187321 tokens!598))))))

(assert (=> d!613505 (not (isEmpty!13680 rules!3198))))

(assert (=> d!613505 (= (rulesProduceEachTokenIndividuallyList!1304 thiss!23328 rules!3198 (t!187321 tokens!598)) lt!754328)))

(declare-fun b!2009103 () Bool)

(declare-fun e!1269441 () Bool)

(assert (=> b!2009103 (= e!1269440 e!1269441)))

(declare-fun res!881127 () Bool)

(assert (=> b!2009103 (=> (not res!881127) (not e!1269441))))

(assert (=> b!2009103 (= res!881127 (rulesProduceIndividualToken!1745 thiss!23328 rules!3198 (h!27463 (t!187321 tokens!598))))))

(declare-fun b!2009104 () Bool)

(assert (=> b!2009104 (= e!1269441 (rulesProduceEachTokenIndividuallyList!1304 thiss!23328 rules!3198 (t!187321 (t!187321 tokens!598))))))

(assert (= (and d!613505 (not res!881126)) b!2009103))

(assert (= (and b!2009103 res!881127) b!2009104))

(declare-fun m!2441421 () Bool)

(assert (=> d!613505 m!2441421))

(assert (=> d!613505 m!2440071))

(declare-fun m!2441423 () Bool)

(assert (=> b!2009103 m!2441423))

(declare-fun m!2441425 () Bool)

(assert (=> b!2009104 m!2441425))

(assert (=> b!2008359 d!613505))

(assert (=> d!613225 d!613455))

(declare-fun b!2009112 () Bool)

(declare-fun e!1269450 () Bool)

(declare-fun e!1269449 () Bool)

(assert (=> b!2009112 (= e!1269450 e!1269449)))

(declare-fun res!881132 () Bool)

(assert (=> b!2009112 (=> (not res!881132) (not e!1269449))))

(declare-fun call!122876 () Bool)

(assert (=> b!2009112 (= res!881132 call!122876)))

(declare-fun b!2009113 () Bool)

(declare-fun e!1269447 () Bool)

(declare-fun e!1269448 () Bool)

(assert (=> b!2009113 (= e!1269447 e!1269448)))

(declare-fun c!324549 () Bool)

(assert (=> b!2009113 (= c!324549 ((_ is Union!5385) (regex!3960 lt!754033)))))

(declare-fun b!2009114 () Bool)

(declare-fun res!881134 () Bool)

(declare-fun e!1269452 () Bool)

(assert (=> b!2009114 (=> (not res!881134) (not e!1269452))))

(assert (=> b!2009114 (= res!881134 call!122876)))

(assert (=> b!2009114 (= e!1269448 e!1269452)))

(declare-fun c!324548 () Bool)

(declare-fun bm!122869 () Bool)

(declare-fun call!122875 () Bool)

(assert (=> bm!122869 (= call!122875 (validRegex!2157 (ite c!324548 (reg!5714 (regex!3960 lt!754033)) (ite c!324549 (regOne!11283 (regex!3960 lt!754033)) (regOne!11282 (regex!3960 lt!754033))))))))

(declare-fun b!2009115 () Bool)

(declare-fun call!122874 () Bool)

(assert (=> b!2009115 (= e!1269452 call!122874)))

(declare-fun bm!122870 () Bool)

(assert (=> bm!122870 (= call!122876 call!122875)))

(declare-fun b!2009117 () Bool)

(declare-fun res!881133 () Bool)

(assert (=> b!2009117 (=> res!881133 e!1269450)))

(assert (=> b!2009117 (= res!881133 (not ((_ is Concat!9482) (regex!3960 lt!754033))))))

(assert (=> b!2009117 (= e!1269448 e!1269450)))

(declare-fun b!2009118 () Bool)

(declare-fun e!1269453 () Bool)

(assert (=> b!2009118 (= e!1269453 call!122875)))

(declare-fun b!2009120 () Bool)

(assert (=> b!2009120 (= e!1269447 e!1269453)))

(declare-fun res!881131 () Bool)

(assert (=> b!2009120 (= res!881131 (not (nullable!1631 (reg!5714 (regex!3960 lt!754033)))))))

(assert (=> b!2009120 (=> (not res!881131) (not e!1269453))))

(declare-fun d!613507 () Bool)

(declare-fun res!881130 () Bool)

(declare-fun e!1269451 () Bool)

(assert (=> d!613507 (=> res!881130 e!1269451)))

(assert (=> d!613507 (= res!881130 ((_ is ElementMatch!5385) (regex!3960 lt!754033)))))

(assert (=> d!613507 (= (validRegex!2157 (regex!3960 lt!754033)) e!1269451)))

(declare-fun b!2009116 () Bool)

(assert (=> b!2009116 (= e!1269449 call!122874)))

(declare-fun bm!122871 () Bool)

(assert (=> bm!122871 (= call!122874 (validRegex!2157 (ite c!324549 (regTwo!11283 (regex!3960 lt!754033)) (regTwo!11282 (regex!3960 lt!754033)))))))

(declare-fun b!2009122 () Bool)

(assert (=> b!2009122 (= e!1269451 e!1269447)))

(assert (=> b!2009122 (= c!324548 ((_ is Star!5385) (regex!3960 lt!754033)))))

(assert (= (and d!613507 (not res!881130)) b!2009122))

(assert (= (and b!2009122 c!324548) b!2009120))

(assert (= (and b!2009122 (not c!324548)) b!2009113))

(assert (= (and b!2009120 res!881131) b!2009118))

(assert (= (and b!2009113 c!324549) b!2009114))

(assert (= (and b!2009113 (not c!324549)) b!2009117))

(assert (= (and b!2009114 res!881134) b!2009115))

(assert (= (and b!2009117 (not res!881133)) b!2009112))

(assert (= (and b!2009112 res!881132) b!2009116))

(assert (= (or b!2009114 b!2009112) bm!122870))

(assert (= (or b!2009115 b!2009116) bm!122871))

(assert (= (or b!2009118 bm!122870) bm!122869))

(declare-fun m!2441427 () Bool)

(assert (=> bm!122869 m!2441427))

(declare-fun m!2441429 () Bool)

(assert (=> b!2009120 m!2441429))

(declare-fun m!2441431 () Bool)

(assert (=> bm!122871 m!2441431))

(assert (=> d!613225 d!613507))

(declare-fun d!613509 () Bool)

(assert (=> d!613509 (= (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))) (isBalanced!2295 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))))))

(declare-fun bs!419672 () Bool)

(assert (= bs!419672 d!613509))

(declare-fun m!2441433 () Bool)

(assert (=> bs!419672 m!2441433))

(assert (=> tb!125367 d!613509))

(declare-fun d!613511 () Bool)

(declare-fun lt!754343 () Int)

(assert (=> d!613511 (>= lt!754343 0)))

(declare-fun e!1269456 () Int)

(assert (=> d!613511 (= lt!754343 e!1269456)))

(declare-fun c!324552 () Bool)

(assert (=> d!613511 (= c!324552 ((_ is Nil!22061) lt!754209))))

(assert (=> d!613511 (= (size!17248 lt!754209) lt!754343)))

(declare-fun b!2009123 () Bool)

(assert (=> b!2009123 (= e!1269456 0)))

(declare-fun b!2009124 () Bool)

(assert (=> b!2009124 (= e!1269456 (+ 1 (size!17248 (t!187320 lt!754209))))))

(assert (= (and d!613511 c!324552) b!2009123))

(assert (= (and d!613511 (not c!324552)) b!2009124))

(declare-fun m!2441435 () Bool)

(assert (=> b!2009124 m!2441435))

(assert (=> b!2008471 d!613511))

(declare-fun d!613513 () Bool)

(declare-fun lt!754344 () Int)

(assert (=> d!613513 (>= lt!754344 0)))

(declare-fun e!1269457 () Int)

(assert (=> d!613513 (= lt!754344 e!1269457)))

(declare-fun c!324553 () Bool)

(assert (=> d!613513 (= c!324553 ((_ is Nil!22061) (++!5953 lt!754035 lt!754030)))))

(assert (=> d!613513 (= (size!17248 (++!5953 lt!754035 lt!754030)) lt!754344)))

(declare-fun b!2009125 () Bool)

(assert (=> b!2009125 (= e!1269457 0)))

(declare-fun b!2009126 () Bool)

(assert (=> b!2009126 (= e!1269457 (+ 1 (size!17248 (t!187320 (++!5953 lt!754035 lt!754030)))))))

(assert (= (and d!613513 c!324553) b!2009125))

(assert (= (and d!613513 (not c!324553)) b!2009126))

(assert (=> b!2009126 m!2441281))

(assert (=> b!2008471 d!613513))

(assert (=> b!2008471 d!613493))

(declare-fun d!613515 () Bool)

(assert (=> d!613515 (= (isEmpty!13682 lt!754163) (not ((_ is Some!4600) lt!754163)))))

(assert (=> d!613147 d!613515))

(assert (=> d!613147 d!613205))

(declare-fun d!613517 () Bool)

(declare-fun lt!754345 () Bool)

(assert (=> d!613517 (= lt!754345 (select (content!3231 (t!187320 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354))))) lt!754022))))

(declare-fun e!1269459 () Bool)

(assert (=> d!613517 (= lt!754345 e!1269459)))

(declare-fun res!881135 () Bool)

(assert (=> d!613517 (=> (not res!881135) (not e!1269459))))

(assert (=> d!613517 (= res!881135 ((_ is Cons!22061) (t!187320 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354))))))))

(assert (=> d!613517 (= (contains!4030 (t!187320 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))) lt!754022) lt!754345)))

(declare-fun b!2009127 () Bool)

(declare-fun e!1269458 () Bool)

(assert (=> b!2009127 (= e!1269459 e!1269458)))

(declare-fun res!881136 () Bool)

(assert (=> b!2009127 (=> res!881136 e!1269458)))

(assert (=> b!2009127 (= res!881136 (= (h!27462 (t!187320 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354))))) lt!754022))))

(declare-fun b!2009128 () Bool)

(assert (=> b!2009128 (= e!1269458 (contains!4030 (t!187320 (t!187320 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354))))) lt!754022))))

(assert (= (and d!613517 res!881135) b!2009127))

(assert (= (and b!2009127 (not res!881136)) b!2009128))

(declare-fun m!2441437 () Bool)

(assert (=> d!613517 m!2441437))

(declare-fun m!2441439 () Bool)

(assert (=> d!613517 m!2441439))

(declare-fun m!2441441 () Bool)

(assert (=> b!2009128 m!2441441))

(assert (=> b!2008486 d!613517))

(assert (=> d!613153 d!613475))

(declare-fun d!613519 () Bool)

(declare-fun lt!754346 () Int)

(assert (=> d!613519 (>= lt!754346 0)))

(declare-fun e!1269460 () Int)

(assert (=> d!613519 (= lt!754346 e!1269460)))

(declare-fun c!324554 () Bool)

(assert (=> d!613519 (= c!324554 ((_ is Nil!22061) (_2!11834 (get!6973 lt!754144))))))

(assert (=> d!613519 (= (size!17248 (_2!11834 (get!6973 lt!754144))) lt!754346)))

(declare-fun b!2009129 () Bool)

(assert (=> b!2009129 (= e!1269460 0)))

(declare-fun b!2009130 () Bool)

(assert (=> b!2009130 (= e!1269460 (+ 1 (size!17248 (t!187320 (_2!11834 (get!6973 lt!754144))))))))

(assert (= (and d!613519 c!324554) b!2009129))

(assert (= (and d!613519 (not c!324554)) b!2009130))

(declare-fun m!2441443 () Bool)

(assert (=> b!2009130 m!2441443))

(assert (=> b!2008191 d!613519))

(assert (=> b!2008191 d!613441))

(declare-fun d!613521 () Bool)

(declare-fun lt!754347 () Int)

(assert (=> d!613521 (>= lt!754347 0)))

(declare-fun e!1269461 () Int)

(assert (=> d!613521 (= lt!754347 e!1269461)))

(declare-fun c!324555 () Bool)

(assert (=> d!613521 (= c!324555 ((_ is Nil!22061) lt!754035))))

(assert (=> d!613521 (= (size!17248 lt!754035) lt!754347)))

(declare-fun b!2009131 () Bool)

(assert (=> b!2009131 (= e!1269461 0)))

(declare-fun b!2009132 () Bool)

(assert (=> b!2009132 (= e!1269461 (+ 1 (size!17248 (t!187320 lt!754035))))))

(assert (= (and d!613521 c!324555) b!2009131))

(assert (= (and d!613521 (not c!324555)) b!2009132))

(assert (=> b!2009132 m!2441393))

(assert (=> b!2008191 d!613521))

(declare-fun d!613523 () Bool)

(assert (=> d!613523 (= (isEmpty!13684 lt!754144) (not ((_ is Some!4601) lt!754144)))))

(assert (=> d!613143 d!613523))

(declare-fun b!2009133 () Bool)

(declare-fun e!1269463 () Bool)

(declare-fun e!1269464 () Bool)

(assert (=> b!2009133 (= e!1269463 e!1269464)))

(declare-fun res!881137 () Bool)

(assert (=> b!2009133 (=> (not res!881137) (not e!1269464))))

(assert (=> b!2009133 (= res!881137 (not ((_ is Nil!22061) lt!754035)))))

(declare-fun b!2009135 () Bool)

(assert (=> b!2009135 (= e!1269464 (isPrefix!1962 (tail!3022 lt!754035) (tail!3022 lt!754035)))))

(declare-fun d!613525 () Bool)

(declare-fun e!1269462 () Bool)

(assert (=> d!613525 e!1269462))

(declare-fun res!881140 () Bool)

(assert (=> d!613525 (=> res!881140 e!1269462)))

(declare-fun lt!754348 () Bool)

(assert (=> d!613525 (= res!881140 (not lt!754348))))

(assert (=> d!613525 (= lt!754348 e!1269463)))

(declare-fun res!881139 () Bool)

(assert (=> d!613525 (=> res!881139 e!1269463)))

(assert (=> d!613525 (= res!881139 ((_ is Nil!22061) lt!754035))))

(assert (=> d!613525 (= (isPrefix!1962 lt!754035 lt!754035) lt!754348)))

(declare-fun b!2009136 () Bool)

(assert (=> b!2009136 (= e!1269462 (>= (size!17248 lt!754035) (size!17248 lt!754035)))))

(declare-fun b!2009134 () Bool)

(declare-fun res!881138 () Bool)

(assert (=> b!2009134 (=> (not res!881138) (not e!1269464))))

(assert (=> b!2009134 (= res!881138 (= (head!4536 lt!754035) (head!4536 lt!754035)))))

(assert (= (and d!613525 (not res!881139)) b!2009133))

(assert (= (and b!2009133 res!881137) b!2009134))

(assert (= (and b!2009134 res!881138) b!2009135))

(assert (= (and d!613525 (not res!881140)) b!2009136))

(assert (=> b!2009135 m!2440695))

(assert (=> b!2009135 m!2440695))

(assert (=> b!2009135 m!2440695))

(assert (=> b!2009135 m!2440695))

(declare-fun m!2441445 () Bool)

(assert (=> b!2009135 m!2441445))

(assert (=> b!2009136 m!2440407))

(assert (=> b!2009136 m!2440407))

(assert (=> b!2009134 m!2440691))

(assert (=> b!2009134 m!2440691))

(assert (=> d!613143 d!613525))

(declare-fun d!613527 () Bool)

(assert (=> d!613527 (isPrefix!1962 lt!754035 lt!754035)))

(declare-fun lt!754349 () Unit!36620)

(assert (=> d!613527 (= lt!754349 (choose!12237 lt!754035 lt!754035))))

(assert (=> d!613527 (= (lemmaIsPrefixRefl!1280 lt!754035 lt!754035) lt!754349)))

(declare-fun bs!419673 () Bool)

(assert (= bs!419673 d!613527))

(assert (=> bs!419673 m!2440397))

(declare-fun m!2441447 () Bool)

(assert (=> bs!419673 m!2441447))

(assert (=> d!613143 d!613527))

(assert (=> d!613143 d!613381))

(assert (=> b!2007942 d!613483))

(assert (=> b!2007942 d!613135))

(declare-fun d!613529 () Bool)

(declare-fun c!324559 () Bool)

(assert (=> d!613529 (= c!324559 ((_ is Node!7371) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))))))

(declare-fun e!1269471 () Bool)

(assert (=> d!613529 (= (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))) e!1269471)))

(declare-fun b!2009146 () Bool)

(declare-fun inv!29227 (Conc!7371) Bool)

(assert (=> b!2009146 (= e!1269471 (inv!29227 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))))))

(declare-fun b!2009147 () Bool)

(declare-fun e!1269472 () Bool)

(assert (=> b!2009147 (= e!1269471 e!1269472)))

(declare-fun res!881144 () Bool)

(assert (=> b!2009147 (= res!881144 (not ((_ is Leaf!10814) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))))))))

(assert (=> b!2009147 (=> res!881144 e!1269472)))

(declare-fun b!2009148 () Bool)

(declare-fun inv!29228 (Conc!7371) Bool)

(assert (=> b!2009148 (= e!1269472 (inv!29228 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))))))

(assert (= (and d!613529 c!324559) b!2009146))

(assert (= (and d!613529 (not c!324559)) b!2009147))

(assert (= (and b!2009147 (not res!881144)) b!2009148))

(declare-fun m!2441483 () Bool)

(assert (=> b!2009146 m!2441483))

(declare-fun m!2441485 () Bool)

(assert (=> b!2009148 m!2441485))

(assert (=> b!2008169 d!613529))

(declare-fun b!2009151 () Bool)

(declare-fun res!881145 () Bool)

(declare-fun e!1269474 () Bool)

(assert (=> b!2009151 (=> (not res!881145) (not e!1269474))))

(declare-fun lt!754357 () List!22143)

(assert (=> b!2009151 (= res!881145 (= (size!17248 lt!754357) (+ (size!17248 call!122769) (size!17248 lt!754076))))))

(declare-fun b!2009152 () Bool)

(assert (=> b!2009152 (= e!1269474 (or (not (= lt!754076 Nil!22061)) (= lt!754357 call!122769)))))

(declare-fun d!613533 () Bool)

(assert (=> d!613533 e!1269474))

(declare-fun res!881146 () Bool)

(assert (=> d!613533 (=> (not res!881146) (not e!1269474))))

(assert (=> d!613533 (= res!881146 (= (content!3231 lt!754357) ((_ map or) (content!3231 call!122769) (content!3231 lt!754076))))))

(declare-fun e!1269473 () List!22143)

(assert (=> d!613533 (= lt!754357 e!1269473)))

(declare-fun c!324560 () Bool)

(assert (=> d!613533 (= c!324560 ((_ is Nil!22061) call!122769))))

(assert (=> d!613533 (= (++!5953 call!122769 lt!754076) lt!754357)))

(declare-fun b!2009150 () Bool)

(assert (=> b!2009150 (= e!1269473 (Cons!22061 (h!27462 call!122769) (++!5953 (t!187320 call!122769) lt!754076)))))

(declare-fun b!2009149 () Bool)

(assert (=> b!2009149 (= e!1269473 lt!754076)))

(assert (= (and d!613533 c!324560) b!2009149))

(assert (= (and d!613533 (not c!324560)) b!2009150))

(assert (= (and d!613533 res!881146) b!2009151))

(assert (= (and b!2009151 res!881145) b!2009152))

(declare-fun m!2441487 () Bool)

(assert (=> b!2009151 m!2441487))

(declare-fun m!2441489 () Bool)

(assert (=> b!2009151 m!2441489))

(declare-fun m!2441491 () Bool)

(assert (=> b!2009151 m!2441491))

(declare-fun m!2441493 () Bool)

(assert (=> d!613533 m!2441493))

(declare-fun m!2441495 () Bool)

(assert (=> d!613533 m!2441495))

(declare-fun m!2441497 () Bool)

(assert (=> d!613533 m!2441497))

(declare-fun m!2441499 () Bool)

(assert (=> b!2009150 m!2441499))

(assert (=> b!2008070 d!613533))

(declare-fun bs!419674 () Bool)

(declare-fun d!613535 () Bool)

(assert (= bs!419674 (and d!613535 d!613149)))

(declare-fun lambda!76062 () Int)

(assert (=> bs!419674 (= (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (= lambda!76062 lambda!76036))))

(assert (=> d!613535 true))

(assert (=> d!613535 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354)))) (dynLambda!10862 order!14007 lambda!76062))))

(declare-fun Forall2!641 (Int) Bool)

(assert (=> d!613535 (= (equivClasses!1514 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354)))) (Forall2!641 lambda!76062))))

(declare-fun bs!419675 () Bool)

(assert (= bs!419675 d!613535))

(declare-fun m!2441501 () Bool)

(assert (=> bs!419675 m!2441501))

(assert (=> b!2008408 d!613535))

(declare-fun d!613537 () Bool)

(declare-fun e!1269479 () Bool)

(assert (=> d!613537 e!1269479))

(declare-fun res!881151 () Bool)

(assert (=> d!613537 (=> (not res!881151) (not e!1269479))))

(declare-fun lt!754360 () BalanceConc!14558)

(assert (=> d!613537 (= res!881151 (= (list!8981 lt!754360) (originalCharacters!4767 (h!27463 tokens!598))))))

(declare-fun fromList!495 (List!22143) Conc!7371)

(assert (=> d!613537 (= lt!754360 (BalanceConc!14559 (fromList!495 (originalCharacters!4767 (h!27463 tokens!598)))))))

(assert (=> d!613537 (= (fromListB!1259 (originalCharacters!4767 (h!27463 tokens!598))) lt!754360)))

(declare-fun b!2009159 () Bool)

(assert (=> b!2009159 (= e!1269479 (isBalanced!2295 (fromList!495 (originalCharacters!4767 (h!27463 tokens!598)))))))

(assert (= (and d!613537 res!881151) b!2009159))

(declare-fun m!2441503 () Bool)

(assert (=> d!613537 m!2441503))

(declare-fun m!2441505 () Bool)

(assert (=> d!613537 m!2441505))

(assert (=> b!2009159 m!2441505))

(assert (=> b!2009159 m!2441505))

(declare-fun m!2441507 () Bool)

(assert (=> b!2009159 m!2441507))

(assert (=> d!613141 d!613537))

(declare-fun d!613539 () Bool)

(declare-fun lt!754363 () Bool)

(declare-fun content!3233 (List!22145) (InoxSet Rule!7720))

(assert (=> d!613539 (= lt!754363 (select (content!3233 rules!3198) (get!6972 lt!754141)))))

(declare-fun e!1269484 () Bool)

(assert (=> d!613539 (= lt!754363 e!1269484)))

(declare-fun res!881157 () Bool)

(assert (=> d!613539 (=> (not res!881157) (not e!1269484))))

(assert (=> d!613539 (= res!881157 ((_ is Cons!22063) rules!3198))))

(assert (=> d!613539 (= (contains!4032 rules!3198 (get!6972 lt!754141)) lt!754363)))

(declare-fun b!2009164 () Bool)

(declare-fun e!1269485 () Bool)

(assert (=> b!2009164 (= e!1269484 e!1269485)))

(declare-fun res!881156 () Bool)

(assert (=> b!2009164 (=> res!881156 e!1269485)))

(assert (=> b!2009164 (= res!881156 (= (h!27464 rules!3198) (get!6972 lt!754141)))))

(declare-fun b!2009165 () Bool)

(assert (=> b!2009165 (= e!1269485 (contains!4032 (t!187322 rules!3198) (get!6972 lt!754141)))))

(assert (= (and d!613539 res!881157) b!2009164))

(assert (= (and b!2009164 (not res!881156)) b!2009165))

(declare-fun m!2441509 () Bool)

(assert (=> d!613539 m!2441509))

(assert (=> d!613539 m!2440357))

(declare-fun m!2441511 () Bool)

(assert (=> d!613539 m!2441511))

(assert (=> b!2009165 m!2440357))

(declare-fun m!2441513 () Bool)

(assert (=> b!2009165 m!2441513))

(assert (=> b!2008183 d!613539))

(assert (=> b!2008183 d!613425))

(declare-fun d!613541 () Bool)

(declare-fun res!881158 () Bool)

(declare-fun e!1269486 () Bool)

(assert (=> d!613541 (=> (not res!881158) (not e!1269486))))

(assert (=> d!613541 (= res!881158 (not (isEmpty!13686 (originalCharacters!4767 (h!27463 (t!187321 tokens!598))))))))

(assert (=> d!613541 (= (inv!29220 (h!27463 (t!187321 tokens!598))) e!1269486)))

(declare-fun b!2009166 () Bool)

(declare-fun res!881159 () Bool)

(assert (=> b!2009166 (=> (not res!881159) (not e!1269486))))

(assert (=> b!2009166 (= res!881159 (= (originalCharacters!4767 (h!27463 (t!187321 tokens!598))) (list!8981 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (value!124451 (h!27463 (t!187321 tokens!598)))))))))

(declare-fun b!2009167 () Bool)

(assert (=> b!2009167 (= e!1269486 (= (size!17246 (h!27463 (t!187321 tokens!598))) (size!17248 (originalCharacters!4767 (h!27463 (t!187321 tokens!598))))))))

(assert (= (and d!613541 res!881158) b!2009166))

(assert (= (and b!2009166 res!881159) b!2009167))

(declare-fun b_lambda!67067 () Bool)

(assert (=> (not b_lambda!67067) (not b!2009166)))

(declare-fun t!187529 () Bool)

(declare-fun tb!125527 () Bool)

(assert (=> (and b!2007925 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) t!187529) tb!125527))

(declare-fun b!2009168 () Bool)

(declare-fun e!1269487 () Bool)

(declare-fun tp!599272 () Bool)

(assert (=> b!2009168 (= e!1269487 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (value!124451 (h!27463 (t!187321 tokens!598)))))) tp!599272))))

(declare-fun result!150418 () Bool)

(assert (=> tb!125527 (= result!150418 (and (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (value!124451 (h!27463 (t!187321 tokens!598))))) e!1269487))))

(assert (= tb!125527 b!2009168))

(declare-fun m!2441515 () Bool)

(assert (=> b!2009168 m!2441515))

(declare-fun m!2441517 () Bool)

(assert (=> tb!125527 m!2441517))

(assert (=> b!2009166 t!187529))

(declare-fun b_and!158687 () Bool)

(assert (= b_and!158681 (and (=> t!187529 result!150418) b_and!158687)))

(declare-fun tb!125529 () Bool)

(declare-fun t!187531 () Bool)

(assert (=> (and b!2007921 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) t!187531) tb!125529))

(declare-fun result!150420 () Bool)

(assert (= result!150420 result!150418))

(assert (=> b!2009166 t!187531))

(declare-fun b_and!158689 () Bool)

(assert (= b_and!158679 (and (=> t!187531 result!150420) b_and!158689)))

(declare-fun tb!125531 () Bool)

(declare-fun t!187533 () Bool)

(assert (=> (and b!2008705 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) t!187533) tb!125531))

(declare-fun result!150422 () Bool)

(assert (= result!150422 result!150418))

(assert (=> b!2009166 t!187533))

(declare-fun b_and!158691 () Bool)

(assert (= b_and!158677 (and (=> t!187533 result!150422) b_and!158691)))

(declare-fun t!187535 () Bool)

(declare-fun tb!125533 () Bool)

(assert (=> (and b!2008671 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) t!187535) tb!125533))

(declare-fun result!150424 () Bool)

(assert (= result!150424 result!150418))

(assert (=> b!2009166 t!187535))

(declare-fun b_and!158693 () Bool)

(assert (= b_and!158685 (and (=> t!187535 result!150424) b_and!158693)))

(declare-fun t!187537 () Bool)

(declare-fun tb!125535 () Bool)

(assert (=> (and b!2007923 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) t!187537) tb!125535))

(declare-fun result!150426 () Bool)

(assert (= result!150426 result!150418))

(assert (=> b!2009166 t!187537))

(declare-fun b_and!158695 () Bool)

(assert (= b_and!158683 (and (=> t!187537 result!150426) b_and!158695)))

(declare-fun m!2441519 () Bool)

(assert (=> d!613541 m!2441519))

(declare-fun m!2441521 () Bool)

(assert (=> b!2009166 m!2441521))

(assert (=> b!2009166 m!2441521))

(declare-fun m!2441523 () Bool)

(assert (=> b!2009166 m!2441523))

(declare-fun m!2441525 () Bool)

(assert (=> b!2009167 m!2441525))

(assert (=> b!2008668 d!613541))

(declare-fun b!2009169 () Bool)

(declare-fun e!1269491 () Bool)

(assert (=> b!2009169 (= e!1269491 (= (head!4536 (tail!3022 lt!754030)) (c!324301 (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030)))))))

(declare-fun b!2009170 () Bool)

(declare-fun e!1269492 () Bool)

(declare-fun lt!754364 () Bool)

(assert (=> b!2009170 (= e!1269492 (not lt!754364))))

(declare-fun b!2009171 () Bool)

(declare-fun res!881162 () Bool)

(declare-fun e!1269494 () Bool)

(assert (=> b!2009171 (=> res!881162 e!1269494)))

(assert (=> b!2009171 (= res!881162 (not ((_ is ElementMatch!5385) (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030)))))))

(assert (=> b!2009171 (= e!1269492 e!1269494)))

(declare-fun d!613543 () Bool)

(declare-fun e!1269489 () Bool)

(assert (=> d!613543 e!1269489))

(declare-fun c!324564 () Bool)

(assert (=> d!613543 (= c!324564 ((_ is EmptyExpr!5385) (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030))))))

(declare-fun e!1269488 () Bool)

(assert (=> d!613543 (= lt!754364 e!1269488)))

(declare-fun c!324562 () Bool)

(assert (=> d!613543 (= c!324562 (isEmpty!13686 (tail!3022 lt!754030)))))

(assert (=> d!613543 (validRegex!2157 (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030)))))

(assert (=> d!613543 (= (matchR!2651 (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030)) (tail!3022 lt!754030)) lt!754364)))

(declare-fun b!2009172 () Bool)

(declare-fun res!881166 () Bool)

(assert (=> b!2009172 (=> (not res!881166) (not e!1269491))))

(assert (=> b!2009172 (= res!881166 (isEmpty!13686 (tail!3022 (tail!3022 lt!754030))))))

(declare-fun b!2009173 () Bool)

(declare-fun res!881165 () Bool)

(declare-fun e!1269493 () Bool)

(assert (=> b!2009173 (=> res!881165 e!1269493)))

(assert (=> b!2009173 (= res!881165 (not (isEmpty!13686 (tail!3022 (tail!3022 lt!754030)))))))

(declare-fun b!2009174 () Bool)

(declare-fun res!881161 () Bool)

(assert (=> b!2009174 (=> res!881161 e!1269494)))

(assert (=> b!2009174 (= res!881161 e!1269491)))

(declare-fun res!881163 () Bool)

(assert (=> b!2009174 (=> (not res!881163) (not e!1269491))))

(assert (=> b!2009174 (= res!881163 lt!754364)))

(declare-fun b!2009175 () Bool)

(assert (=> b!2009175 (= e!1269488 (matchR!2651 (derivativeStep!1390 (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030)) (head!4536 (tail!3022 lt!754030))) (tail!3022 (tail!3022 lt!754030))))))

(declare-fun b!2009176 () Bool)

(declare-fun e!1269490 () Bool)

(assert (=> b!2009176 (= e!1269494 e!1269490)))

(declare-fun res!881167 () Bool)

(assert (=> b!2009176 (=> (not res!881167) (not e!1269490))))

(assert (=> b!2009176 (= res!881167 (not lt!754364))))

(declare-fun b!2009177 () Bool)

(assert (=> b!2009177 (= e!1269490 e!1269493)))

(declare-fun res!881164 () Bool)

(assert (=> b!2009177 (=> res!881164 e!1269493)))

(declare-fun call!122877 () Bool)

(assert (=> b!2009177 (= res!881164 call!122877)))

(declare-fun b!2009178 () Bool)

(assert (=> b!2009178 (= e!1269489 e!1269492)))

(declare-fun c!324563 () Bool)

(assert (=> b!2009178 (= c!324563 ((_ is EmptyLang!5385) (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030))))))

(declare-fun b!2009179 () Bool)

(declare-fun res!881160 () Bool)

(assert (=> b!2009179 (=> (not res!881160) (not e!1269491))))

(assert (=> b!2009179 (= res!881160 (not call!122877))))

(declare-fun b!2009180 () Bool)

(assert (=> b!2009180 (= e!1269493 (not (= (head!4536 (tail!3022 lt!754030)) (c!324301 (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030))))))))

(declare-fun bm!122872 () Bool)

(assert (=> bm!122872 (= call!122877 (isEmpty!13686 (tail!3022 lt!754030)))))

(declare-fun b!2009181 () Bool)

(assert (=> b!2009181 (= e!1269489 (= lt!754364 call!122877))))

(declare-fun b!2009182 () Bool)

(assert (=> b!2009182 (= e!1269488 (nullable!1631 (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030))))))

(assert (= (and d!613543 c!324562) b!2009182))

(assert (= (and d!613543 (not c!324562)) b!2009175))

(assert (= (and d!613543 c!324564) b!2009181))

(assert (= (and d!613543 (not c!324564)) b!2009178))

(assert (= (and b!2009178 c!324563) b!2009170))

(assert (= (and b!2009178 (not c!324563)) b!2009171))

(assert (= (and b!2009171 (not res!881162)) b!2009174))

(assert (= (and b!2009174 res!881163) b!2009179))

(assert (= (and b!2009179 res!881160) b!2009172))

(assert (= (and b!2009172 res!881166) b!2009169))

(assert (= (and b!2009174 (not res!881161)) b!2009176))

(assert (= (and b!2009176 res!881167) b!2009177))

(assert (= (and b!2009177 (not res!881164)) b!2009173))

(assert (= (and b!2009173 (not res!881165)) b!2009180))

(assert (= (or b!2009181 b!2009177 b!2009179) bm!122872))

(assert (=> b!2009175 m!2440597))

(declare-fun m!2441527 () Bool)

(assert (=> b!2009175 m!2441527))

(assert (=> b!2009175 m!2440595))

(assert (=> b!2009175 m!2441527))

(declare-fun m!2441529 () Bool)

(assert (=> b!2009175 m!2441529))

(assert (=> b!2009175 m!2440597))

(declare-fun m!2441531 () Bool)

(assert (=> b!2009175 m!2441531))

(assert (=> b!2009175 m!2441529))

(assert (=> b!2009175 m!2441531))

(declare-fun m!2441533 () Bool)

(assert (=> b!2009175 m!2441533))

(assert (=> b!2009169 m!2440597))

(assert (=> b!2009169 m!2441527))

(assert (=> b!2009182 m!2440595))

(declare-fun m!2441535 () Bool)

(assert (=> b!2009182 m!2441535))

(assert (=> d!613543 m!2440597))

(assert (=> d!613543 m!2440607))

(assert (=> d!613543 m!2440595))

(declare-fun m!2441537 () Bool)

(assert (=> d!613543 m!2441537))

(assert (=> bm!122872 m!2440597))

(assert (=> bm!122872 m!2440607))

(assert (=> b!2009180 m!2440597))

(assert (=> b!2009180 m!2441527))

(assert (=> b!2009173 m!2440597))

(assert (=> b!2009173 m!2441531))

(assert (=> b!2009173 m!2441531))

(declare-fun m!2441539 () Bool)

(assert (=> b!2009173 m!2441539))

(assert (=> b!2009172 m!2440597))

(assert (=> b!2009172 m!2441531))

(assert (=> b!2009172 m!2441531))

(assert (=> b!2009172 m!2441539))

(assert (=> b!2008397 d!613543))

(declare-fun b!2009203 () Bool)

(declare-fun c!324575 () Bool)

(assert (=> b!2009203 (= c!324575 ((_ is Union!5385) (regex!3960 lt!754036)))))

(declare-fun e!1269506 () Regex!5385)

(declare-fun e!1269505 () Regex!5385)

(assert (=> b!2009203 (= e!1269506 e!1269505)))

(declare-fun b!2009204 () Bool)

(declare-fun c!324579 () Bool)

(assert (=> b!2009204 (= c!324579 (nullable!1631 (regOne!11282 (regex!3960 lt!754036))))))

(declare-fun e!1269509 () Regex!5385)

(declare-fun e!1269507 () Regex!5385)

(assert (=> b!2009204 (= e!1269509 e!1269507)))

(declare-fun bm!122881 () Bool)

(declare-fun call!122889 () Regex!5385)

(assert (=> bm!122881 (= call!122889 (derivativeStep!1390 (ite c!324575 (regTwo!11283 (regex!3960 lt!754036)) (regOne!11282 (regex!3960 lt!754036))) (head!4536 lt!754030)))))

(declare-fun bm!122882 () Bool)

(declare-fun call!122887 () Regex!5385)

(declare-fun call!122886 () Regex!5385)

(assert (=> bm!122882 (= call!122887 call!122886)))

(declare-fun d!613545 () Bool)

(declare-fun lt!754367 () Regex!5385)

(assert (=> d!613545 (validRegex!2157 lt!754367)))

(declare-fun e!1269508 () Regex!5385)

(assert (=> d!613545 (= lt!754367 e!1269508)))

(declare-fun c!324577 () Bool)

(assert (=> d!613545 (= c!324577 (or ((_ is EmptyExpr!5385) (regex!3960 lt!754036)) ((_ is EmptyLang!5385) (regex!3960 lt!754036))))))

(assert (=> d!613545 (validRegex!2157 (regex!3960 lt!754036))))

(assert (=> d!613545 (= (derivativeStep!1390 (regex!3960 lt!754036) (head!4536 lt!754030)) lt!754367)))

(declare-fun b!2009205 () Bool)

(assert (=> b!2009205 (= e!1269508 e!1269506)))

(declare-fun c!324576 () Bool)

(assert (=> b!2009205 (= c!324576 ((_ is ElementMatch!5385) (regex!3960 lt!754036)))))

(declare-fun bm!122883 () Bool)

(declare-fun call!122888 () Regex!5385)

(assert (=> bm!122883 (= call!122888 call!122887)))

(declare-fun b!2009206 () Bool)

(assert (=> b!2009206 (= e!1269509 (Concat!9482 call!122887 (regex!3960 lt!754036)))))

(declare-fun c!324578 () Bool)

(declare-fun bm!122884 () Bool)

(assert (=> bm!122884 (= call!122886 (derivativeStep!1390 (ite c!324575 (regOne!11283 (regex!3960 lt!754036)) (ite c!324578 (reg!5714 (regex!3960 lt!754036)) (ite c!324579 (regTwo!11282 (regex!3960 lt!754036)) (regOne!11282 (regex!3960 lt!754036))))) (head!4536 lt!754030)))))

(declare-fun b!2009207 () Bool)

(assert (=> b!2009207 (= e!1269507 (Union!5385 (Concat!9482 call!122889 (regTwo!11282 (regex!3960 lt!754036))) call!122888))))

(declare-fun b!2009208 () Bool)

(assert (=> b!2009208 (= e!1269508 EmptyLang!5385)))

(declare-fun b!2009209 () Bool)

(assert (=> b!2009209 (= e!1269505 (Union!5385 call!122886 call!122889))))

(declare-fun b!2009210 () Bool)

(assert (=> b!2009210 (= e!1269505 e!1269509)))

(assert (=> b!2009210 (= c!324578 ((_ is Star!5385) (regex!3960 lt!754036)))))

(declare-fun b!2009211 () Bool)

(assert (=> b!2009211 (= e!1269507 (Union!5385 (Concat!9482 call!122888 (regTwo!11282 (regex!3960 lt!754036))) EmptyLang!5385))))

(declare-fun b!2009212 () Bool)

(assert (=> b!2009212 (= e!1269506 (ite (= (head!4536 lt!754030) (c!324301 (regex!3960 lt!754036))) EmptyExpr!5385 EmptyLang!5385))))

(assert (= (and d!613545 c!324577) b!2009208))

(assert (= (and d!613545 (not c!324577)) b!2009205))

(assert (= (and b!2009205 c!324576) b!2009212))

(assert (= (and b!2009205 (not c!324576)) b!2009203))

(assert (= (and b!2009203 c!324575) b!2009209))

(assert (= (and b!2009203 (not c!324575)) b!2009210))

(assert (= (and b!2009210 c!324578) b!2009206))

(assert (= (and b!2009210 (not c!324578)) b!2009204))

(assert (= (and b!2009204 c!324579) b!2009207))

(assert (= (and b!2009204 (not c!324579)) b!2009211))

(assert (= (or b!2009207 b!2009211) bm!122883))

(assert (= (or b!2009206 bm!122883) bm!122882))

(assert (= (or b!2009209 bm!122882) bm!122884))

(assert (= (or b!2009209 b!2009207) bm!122881))

(declare-fun m!2441541 () Bool)

(assert (=> b!2009204 m!2441541))

(assert (=> bm!122881 m!2440063))

(declare-fun m!2441543 () Bool)

(assert (=> bm!122881 m!2441543))

(declare-fun m!2441545 () Bool)

(assert (=> d!613545 m!2441545))

(assert (=> d!613545 m!2440605))

(assert (=> bm!122884 m!2440063))

(declare-fun m!2441547 () Bool)

(assert (=> bm!122884 m!2441547))

(assert (=> b!2008397 d!613545))

(assert (=> b!2008397 d!613223))

(assert (=> b!2008397 d!613429))

(declare-fun d!613547 () Bool)

(assert (=> d!613547 (= (list!8981 lt!754133) (list!8983 (c!324302 lt!754133)))))

(declare-fun bs!419676 () Bool)

(assert (= bs!419676 d!613547))

(declare-fun m!2441549 () Bool)

(assert (=> bs!419676 m!2441549))

(assert (=> d!613131 d!613547))

(declare-fun d!613549 () Bool)

(assert (=> d!613549 (= (head!4536 lt!754035) (h!27462 lt!754035))))

(assert (=> b!2008487 d!613549))

(declare-fun d!613551 () Bool)

(declare-fun nullableFct!378 (Regex!5385) Bool)

(assert (=> d!613551 (= (nullable!1631 (regex!3960 lt!754036)) (nullableFct!378 (regex!3960 lt!754036)))))

(declare-fun bs!419677 () Bool)

(assert (= bs!419677 d!613551))

(declare-fun m!2441551 () Bool)

(assert (=> bs!419677 m!2441551))

(assert (=> b!2008404 d!613551))

(declare-fun b!2009213 () Bool)

(declare-fun e!1269511 () List!22143)

(assert (=> b!2009213 (= e!1269511 (Cons!22061 (c!324301 (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) Nil!22061))))

(declare-fun d!613553 () Bool)

(declare-fun c!324583 () Bool)

(assert (=> d!613553 (= c!324583 (or ((_ is EmptyExpr!5385) (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) ((_ is EmptyLang!5385) (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(declare-fun e!1269510 () List!22143)

(assert (=> d!613553 (= (usedCharacters!398 (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) e!1269510)))

(declare-fun bm!122885 () Bool)

(declare-fun call!122892 () List!22143)

(declare-fun c!324582 () Bool)

(declare-fun c!324580 () Bool)

(assert (=> bm!122885 (= call!122892 (usedCharacters!398 (ite c!324582 (reg!5714 (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) (ite c!324580 (regOne!11283 (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) (regTwo!11282 (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))))

(declare-fun b!2009214 () Bool)

(declare-fun e!1269512 () List!22143)

(declare-fun e!1269513 () List!22143)

(assert (=> b!2009214 (= e!1269512 e!1269513)))

(assert (=> b!2009214 (= c!324580 ((_ is Union!5385) (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))))))

(declare-fun b!2009215 () Bool)

(assert (=> b!2009215 (= e!1269512 call!122892)))

(declare-fun b!2009216 () Bool)

(assert (=> b!2009216 (= e!1269510 Nil!22061)))

(declare-fun b!2009217 () Bool)

(declare-fun call!122893 () List!22143)

(assert (=> b!2009217 (= e!1269513 call!122893)))

(declare-fun bm!122886 () Bool)

(declare-fun call!122891 () List!22143)

(assert (=> bm!122886 (= call!122891 call!122892)))

(declare-fun b!2009218 () Bool)

(assert (=> b!2009218 (= e!1269513 call!122893)))

(declare-fun b!2009219 () Bool)

(assert (=> b!2009219 (= e!1269510 e!1269511)))

(declare-fun c!324581 () Bool)

(assert (=> b!2009219 (= c!324581 ((_ is ElementMatch!5385) (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))))))

(declare-fun call!122890 () List!22143)

(declare-fun bm!122887 () Bool)

(assert (=> bm!122887 (= call!122893 (++!5953 (ite c!324580 call!122891 call!122890) (ite c!324580 call!122890 call!122891)))))

(declare-fun b!2009220 () Bool)

(assert (=> b!2009220 (= c!324582 ((_ is Star!5385) (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))))))

(assert (=> b!2009220 (= e!1269511 e!1269512)))

(declare-fun bm!122888 () Bool)

(assert (=> bm!122888 (= call!122890 (usedCharacters!398 (ite c!324580 (regTwo!11283 (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) (regOne!11282 (ite c!324405 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))))))))

(assert (= (and d!613553 c!324583) b!2009216))

(assert (= (and d!613553 (not c!324583)) b!2009219))

(assert (= (and b!2009219 c!324581) b!2009213))

(assert (= (and b!2009219 (not c!324581)) b!2009220))

(assert (= (and b!2009220 c!324582) b!2009215))

(assert (= (and b!2009220 (not c!324582)) b!2009214))

(assert (= (and b!2009214 c!324580) b!2009217))

(assert (= (and b!2009214 (not c!324580)) b!2009218))

(assert (= (or b!2009217 b!2009218) bm!122886))

(assert (= (or b!2009217 b!2009218) bm!122888))

(assert (= (or b!2009217 b!2009218) bm!122887))

(assert (= (or b!2009215 bm!122886) bm!122885))

(declare-fun m!2441553 () Bool)

(assert (=> bm!122885 m!2441553))

(declare-fun m!2441555 () Bool)

(assert (=> bm!122887 m!2441555))

(declare-fun m!2441557 () Bool)

(assert (=> bm!122888 m!2441557))

(assert (=> bm!122808 d!613553))

(declare-fun b!2009221 () Bool)

(declare-fun res!881168 () Bool)

(declare-fun e!1269514 () Bool)

(assert (=> b!2009221 (=> res!881168 e!1269514)))

(assert (=> b!2009221 (= res!881168 (not ((_ is IntegerValue!12290) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))))))))

(declare-fun e!1269515 () Bool)

(assert (=> b!2009221 (= e!1269515 e!1269514)))

(declare-fun b!2009222 () Bool)

(assert (=> b!2009222 (= e!1269514 (inv!15 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))))

(declare-fun b!2009223 () Bool)

(declare-fun e!1269516 () Bool)

(assert (=> b!2009223 (= e!1269516 e!1269515)))

(declare-fun c!324584 () Bool)

(assert (=> b!2009223 (= c!324584 ((_ is IntegerValue!12289) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))))

(declare-fun b!2009224 () Bool)

(assert (=> b!2009224 (= e!1269516 (inv!16 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))))

(declare-fun d!613555 () Bool)

(declare-fun c!324585 () Bool)

(assert (=> d!613555 (= c!324585 ((_ is IntegerValue!12288) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))))

(assert (=> d!613555 (= (inv!21 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))) e!1269516)))

(declare-fun b!2009225 () Bool)

(assert (=> b!2009225 (= e!1269515 (inv!17 (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))))

(assert (= (and d!613555 c!324585) b!2009224))

(assert (= (and d!613555 (not c!324585)) b!2009223))

(assert (= (and b!2009223 c!324584) b!2009225))

(assert (= (and b!2009223 (not c!324584)) b!2009221))

(assert (= (and b!2009221 (not res!881168)) b!2009222))

(declare-fun m!2441559 () Bool)

(assert (=> b!2009222 m!2441559))

(declare-fun m!2441561 () Bool)

(assert (=> b!2009224 m!2441561))

(declare-fun m!2441563 () Bool)

(assert (=> b!2009225 m!2441563))

(assert (=> tb!125373 d!613555))

(declare-fun d!613557 () Bool)

(declare-fun lt!754370 () BalanceConc!14558)

(declare-fun printList!1104 (LexerInterface!3573 List!22144) List!22143)

(assert (=> d!613557 (= (list!8981 lt!754370) (printList!1104 thiss!23328 (list!8985 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))))))))

(assert (=> d!613557 (= lt!754370 (printTailRec!1047 thiss!23328 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))) 0 (BalanceConc!14559 Empty!7371)))))

(assert (=> d!613557 (= (print!1541 thiss!23328 (singletonSeq!1942 (h!27463 (t!187321 tokens!598)))) lt!754370)))

(declare-fun bs!419678 () Bool)

(assert (= bs!419678 d!613557))

(declare-fun m!2441565 () Bool)

(assert (=> bs!419678 m!2441565))

(assert (=> bs!419678 m!2440225))

(declare-fun m!2441567 () Bool)

(assert (=> bs!419678 m!2441567))

(assert (=> bs!419678 m!2441567))

(declare-fun m!2441569 () Bool)

(assert (=> bs!419678 m!2441569))

(assert (=> bs!419678 m!2440225))

(assert (=> bs!419678 m!2440229))

(assert (=> b!2008068 d!613557))

(declare-fun d!613559 () Bool)

(declare-fun e!1269519 () Bool)

(assert (=> d!613559 e!1269519))

(declare-fun res!881171 () Bool)

(assert (=> d!613559 (=> (not res!881171) (not e!1269519))))

(declare-fun lt!754373 () BalanceConc!14562)

(assert (=> d!613559 (= res!881171 (= (list!8985 lt!754373) (Cons!22062 (h!27463 (t!187321 tokens!598)) Nil!22062)))))

(declare-fun singleton!868 (Token!7472) BalanceConc!14562)

(assert (=> d!613559 (= lt!754373 (singleton!868 (h!27463 (t!187321 tokens!598))))))

(assert (=> d!613559 (= (singletonSeq!1942 (h!27463 (t!187321 tokens!598))) lt!754373)))

(declare-fun b!2009228 () Bool)

(declare-fun isBalanced!2297 (Conc!7373) Bool)

(assert (=> b!2009228 (= e!1269519 (isBalanced!2297 (c!324444 lt!754373)))))

(assert (= (and d!613559 res!881171) b!2009228))

(declare-fun m!2441571 () Bool)

(assert (=> d!613559 m!2441571))

(declare-fun m!2441573 () Bool)

(assert (=> d!613559 m!2441573))

(declare-fun m!2441575 () Bool)

(assert (=> b!2009228 m!2441575))

(assert (=> b!2008068 d!613559))

(declare-fun d!613561 () Bool)

(declare-fun lt!754393 () BalanceConc!14558)

(declare-fun printListTailRec!473 (LexerInterface!3573 List!22144 List!22143) List!22143)

(declare-fun dropList!804 (BalanceConc!14562 Int) List!22144)

(assert (=> d!613561 (= (list!8981 lt!754393) (printListTailRec!473 thiss!23328 (dropList!804 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))) 0) (list!8981 (BalanceConc!14559 Empty!7371))))))

(declare-fun e!1269524 () BalanceConc!14558)

(assert (=> d!613561 (= lt!754393 e!1269524)))

(declare-fun c!324588 () Bool)

(assert (=> d!613561 (= c!324588 (>= 0 (size!17250 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))))))))

(declare-fun e!1269525 () Bool)

(assert (=> d!613561 e!1269525))

(declare-fun res!881174 () Bool)

(assert (=> d!613561 (=> (not res!881174) (not e!1269525))))

(assert (=> d!613561 (= res!881174 (>= 0 0))))

(assert (=> d!613561 (= (printTailRec!1047 thiss!23328 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))) 0 (BalanceConc!14559 Empty!7371)) lt!754393)))

(declare-fun b!2009235 () Bool)

(assert (=> b!2009235 (= e!1269525 (<= 0 (size!17250 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))))))))

(declare-fun b!2009236 () Bool)

(assert (=> b!2009236 (= e!1269524 (BalanceConc!14559 Empty!7371))))

(declare-fun b!2009237 () Bool)

(declare-fun ++!5955 (BalanceConc!14558 BalanceConc!14558) BalanceConc!14558)

(assert (=> b!2009237 (= e!1269524 (printTailRec!1047 thiss!23328 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))) (+ 0 1) (++!5955 (BalanceConc!14559 Empty!7371) (charsOf!2500 (apply!5783 (singletonSeq!1942 (h!27463 (t!187321 tokens!598))) 0)))))))

(declare-fun lt!754391 () List!22144)

(assert (=> b!2009237 (= lt!754391 (list!8985 (singletonSeq!1942 (h!27463 (t!187321 tokens!598)))))))

(declare-fun lt!754389 () Unit!36620)

(declare-fun lemmaDropApply!728 (List!22144 Int) Unit!36620)

(assert (=> b!2009237 (= lt!754389 (lemmaDropApply!728 lt!754391 0))))

(declare-fun head!4538 (List!22144) Token!7472)

(declare-fun drop!1103 (List!22144 Int) List!22144)

(declare-fun apply!5785 (List!22144 Int) Token!7472)

(assert (=> b!2009237 (= (head!4538 (drop!1103 lt!754391 0)) (apply!5785 lt!754391 0))))

(declare-fun lt!754390 () Unit!36620)

(assert (=> b!2009237 (= lt!754390 lt!754389)))

(declare-fun lt!754392 () List!22144)

(assert (=> b!2009237 (= lt!754392 (list!8985 (singletonSeq!1942 (h!27463 (t!187321 tokens!598)))))))

(declare-fun lt!754388 () Unit!36620)

(declare-fun lemmaDropTail!704 (List!22144 Int) Unit!36620)

(assert (=> b!2009237 (= lt!754388 (lemmaDropTail!704 lt!754392 0))))

(declare-fun tail!3024 (List!22144) List!22144)

(assert (=> b!2009237 (= (tail!3024 (drop!1103 lt!754392 0)) (drop!1103 lt!754392 (+ 0 1)))))

(declare-fun lt!754394 () Unit!36620)

(assert (=> b!2009237 (= lt!754394 lt!754388)))

(assert (= (and d!613561 res!881174) b!2009235))

(assert (= (and d!613561 c!324588) b!2009236))

(assert (= (and d!613561 (not c!324588)) b!2009237))

(declare-fun m!2441577 () Bool)

(assert (=> d!613561 m!2441577))

(assert (=> d!613561 m!2440225))

(declare-fun m!2441579 () Bool)

(assert (=> d!613561 m!2441579))

(assert (=> d!613561 m!2440225))

(declare-fun m!2441581 () Bool)

(assert (=> d!613561 m!2441581))

(declare-fun m!2441583 () Bool)

(assert (=> d!613561 m!2441583))

(assert (=> d!613561 m!2441579))

(assert (=> d!613561 m!2441583))

(declare-fun m!2441585 () Bool)

(assert (=> d!613561 m!2441585))

(assert (=> b!2009235 m!2440225))

(assert (=> b!2009235 m!2441581))

(declare-fun m!2441587 () Bool)

(assert (=> b!2009237 m!2441587))

(declare-fun m!2441589 () Bool)

(assert (=> b!2009237 m!2441589))

(assert (=> b!2009237 m!2440225))

(declare-fun m!2441591 () Bool)

(assert (=> b!2009237 m!2441591))

(declare-fun m!2441593 () Bool)

(assert (=> b!2009237 m!2441593))

(declare-fun m!2441595 () Bool)

(assert (=> b!2009237 m!2441595))

(declare-fun m!2441597 () Bool)

(assert (=> b!2009237 m!2441597))

(assert (=> b!2009237 m!2441595))

(declare-fun m!2441599 () Bool)

(assert (=> b!2009237 m!2441599))

(declare-fun m!2441601 () Bool)

(assert (=> b!2009237 m!2441601))

(assert (=> b!2009237 m!2441601))

(declare-fun m!2441603 () Bool)

(assert (=> b!2009237 m!2441603))

(declare-fun m!2441605 () Bool)

(assert (=> b!2009237 m!2441605))

(declare-fun m!2441607 () Bool)

(assert (=> b!2009237 m!2441607))

(declare-fun m!2441609 () Bool)

(assert (=> b!2009237 m!2441609))

(assert (=> b!2009237 m!2440225))

(assert (=> b!2009237 m!2441605))

(assert (=> b!2009237 m!2441607))

(assert (=> b!2009237 m!2441591))

(assert (=> b!2009237 m!2440225))

(assert (=> b!2009237 m!2441567))

(assert (=> b!2008068 d!613561))

(declare-fun d!613563 () Bool)

(assert (=> d!613563 (isDefined!3890 (maxPrefix!2009 thiss!23328 rules!3198 (++!5953 call!122771 lt!754076)))))

(declare-fun lt!754523 () Unit!36620)

(declare-fun e!1269635 () Unit!36620)

(assert (=> d!613563 (= lt!754523 e!1269635)))

(declare-fun c!324624 () Bool)

(assert (=> d!613563 (= c!324624 (isEmpty!13684 (maxPrefix!2009 thiss!23328 rules!3198 (++!5953 call!122771 lt!754076))))))

(declare-fun lt!754537 () Unit!36620)

(declare-fun lt!754529 () Unit!36620)

(assert (=> d!613563 (= lt!754537 lt!754529)))

(declare-fun e!1269637 () Bool)

(assert (=> d!613563 e!1269637))

(declare-fun res!881281 () Bool)

(assert (=> d!613563 (=> (not res!881281) (not e!1269637))))

(declare-fun lt!754525 () Token!7472)

(assert (=> d!613563 (= res!881281 (isDefined!3889 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 lt!754525)))))))

(assert (=> d!613563 (= lt!754529 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!775 thiss!23328 rules!3198 call!122771 lt!754525))))

(declare-fun lt!754539 () Unit!36620)

(declare-fun lt!754535 () Unit!36620)

(assert (=> d!613563 (= lt!754539 lt!754535)))

(declare-fun lt!754538 () List!22143)

(assert (=> d!613563 (isPrefix!1962 lt!754538 (++!5953 call!122771 lt!754076))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!375 (List!22143 List!22143 List!22143) Unit!36620)

(assert (=> d!613563 (= lt!754535 (lemmaPrefixStaysPrefixWhenAddingToSuffix!375 lt!754538 call!122771 lt!754076))))

(assert (=> d!613563 (= lt!754538 (list!8981 (charsOf!2500 lt!754525)))))

(declare-fun lt!754532 () Unit!36620)

(declare-fun lt!754531 () Unit!36620)

(assert (=> d!613563 (= lt!754532 lt!754531)))

(declare-fun lt!754526 () List!22143)

(declare-fun lt!754530 () List!22143)

(assert (=> d!613563 (isPrefix!1962 lt!754526 (++!5953 lt!754526 lt!754530))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1342 (List!22143 List!22143) Unit!36620)

(assert (=> d!613563 (= lt!754531 (lemmaConcatTwoListThenFirstIsPrefix!1342 lt!754526 lt!754530))))

(assert (=> d!613563 (= lt!754530 (_2!11834 (get!6973 (maxPrefix!2009 thiss!23328 rules!3198 call!122771))))))

(assert (=> d!613563 (= lt!754526 (list!8981 (charsOf!2500 lt!754525)))))

(assert (=> d!613563 (= lt!754525 (head!4538 (list!8985 (_1!11836 (lex!1595 thiss!23328 rules!3198 (seqFromList!2814 call!122771))))))))

(assert (=> d!613563 (not (isEmpty!13680 rules!3198))))

(assert (=> d!613563 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!757 thiss!23328 rules!3198 call!122771 lt!754076) lt!754523)))

(declare-fun b!2009417 () Bool)

(assert (=> b!2009417 (= e!1269637 (= (rule!6185 lt!754525) (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 lt!754525))))))))

(declare-fun b!2009416 () Bool)

(declare-fun res!881280 () Bool)

(assert (=> b!2009416 (=> (not res!881280) (not e!1269637))))

(assert (=> b!2009416 (= res!881280 (matchR!2651 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 lt!754525))))) (list!8981 (charsOf!2500 lt!754525))))))

(declare-fun b!2009419 () Bool)

(declare-fun Unit!36630 () Unit!36620)

(assert (=> b!2009419 (= e!1269635 Unit!36630)))

(declare-fun b!2009418 () Bool)

(declare-fun Unit!36631 () Unit!36620)

(assert (=> b!2009418 (= e!1269635 Unit!36631)))

(declare-fun lt!754524 () List!22143)

(assert (=> b!2009418 (= lt!754524 (++!5953 call!122771 lt!754076))))

(declare-fun lt!754527 () Unit!36620)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!383 (LexerInterface!3573 Rule!7720 List!22145 List!22143) Unit!36620)

(assert (=> b!2009418 (= lt!754527 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!383 thiss!23328 (rule!6185 lt!754525) rules!3198 lt!754524))))

(assert (=> b!2009418 (isEmpty!13684 (maxPrefixOneRule!1244 thiss!23328 (rule!6185 lt!754525) lt!754524))))

(declare-fun lt!754528 () Unit!36620)

(assert (=> b!2009418 (= lt!754528 lt!754527)))

(declare-fun lt!754534 () List!22143)

(assert (=> b!2009418 (= lt!754534 (list!8981 (charsOf!2500 lt!754525)))))

(declare-fun lt!754522 () Unit!36620)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!379 (LexerInterface!3573 Rule!7720 List!22143 List!22143) Unit!36620)

(assert (=> b!2009418 (= lt!754522 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!379 thiss!23328 (rule!6185 lt!754525) lt!754534 (++!5953 call!122771 lt!754076)))))

(assert (=> b!2009418 (not (matchR!2651 (regex!3960 (rule!6185 lt!754525)) lt!754534))))

(declare-fun lt!754536 () Unit!36620)

(assert (=> b!2009418 (= lt!754536 lt!754522)))

(assert (=> b!2009418 false))

(assert (= (and d!613563 res!881281) b!2009416))

(assert (= (and b!2009416 res!881280) b!2009417))

(assert (= (and d!613563 c!324624) b!2009418))

(assert (= (and d!613563 (not c!324624)) b!2009419))

(declare-fun m!2441919 () Bool)

(assert (=> d!613563 m!2441919))

(declare-fun m!2441921 () Bool)

(assert (=> d!613563 m!2441921))

(declare-fun m!2441923 () Bool)

(assert (=> d!613563 m!2441923))

(declare-fun m!2441925 () Bool)

(assert (=> d!613563 m!2441925))

(assert (=> d!613563 m!2440071))

(assert (=> d!613563 m!2441921))

(declare-fun m!2441927 () Bool)

(assert (=> d!613563 m!2441927))

(declare-fun m!2441929 () Bool)

(assert (=> d!613563 m!2441929))

(declare-fun m!2441931 () Bool)

(assert (=> d!613563 m!2441931))

(declare-fun m!2441933 () Bool)

(assert (=> d!613563 m!2441933))

(declare-fun m!2441935 () Bool)

(assert (=> d!613563 m!2441935))

(declare-fun m!2441937 () Bool)

(assert (=> d!613563 m!2441937))

(declare-fun m!2441939 () Bool)

(assert (=> d!613563 m!2441939))

(declare-fun m!2441941 () Bool)

(assert (=> d!613563 m!2441941))

(declare-fun m!2441943 () Bool)

(assert (=> d!613563 m!2441943))

(assert (=> d!613563 m!2441919))

(assert (=> d!613563 m!2441939))

(assert (=> d!613563 m!2441925))

(declare-fun m!2441945 () Bool)

(assert (=> d!613563 m!2441945))

(assert (=> d!613563 m!2441939))

(declare-fun m!2441947 () Bool)

(assert (=> d!613563 m!2441947))

(assert (=> d!613563 m!2441935))

(assert (=> d!613563 m!2441927))

(assert (=> d!613563 m!2441943))

(declare-fun m!2441949 () Bool)

(assert (=> d!613563 m!2441949))

(declare-fun m!2441951 () Bool)

(assert (=> d!613563 m!2441951))

(declare-fun m!2441953 () Bool)

(assert (=> d!613563 m!2441953))

(assert (=> d!613563 m!2441919))

(declare-fun m!2441955 () Bool)

(assert (=> d!613563 m!2441955))

(assert (=> d!613563 m!2441951))

(declare-fun m!2441957 () Bool)

(assert (=> d!613563 m!2441957))

(assert (=> b!2009417 m!2441943))

(assert (=> b!2009417 m!2441943))

(declare-fun m!2441959 () Bool)

(assert (=> b!2009417 m!2441959))

(assert (=> b!2009416 m!2441943))

(assert (=> b!2009416 m!2441959))

(assert (=> b!2009416 m!2441929))

(declare-fun m!2441963 () Bool)

(assert (=> b!2009416 m!2441963))

(assert (=> b!2009416 m!2441927))

(assert (=> b!2009416 m!2441927))

(assert (=> b!2009416 m!2441929))

(assert (=> b!2009416 m!2441943))

(assert (=> b!2009418 m!2441919))

(declare-fun m!2441965 () Bool)

(assert (=> b!2009418 m!2441965))

(assert (=> b!2009418 m!2441927))

(assert (=> b!2009418 m!2441927))

(assert (=> b!2009418 m!2441929))

(declare-fun m!2441967 () Bool)

(assert (=> b!2009418 m!2441967))

(assert (=> b!2009418 m!2441965))

(declare-fun m!2441971 () Bool)

(assert (=> b!2009418 m!2441971))

(declare-fun m!2441973 () Bool)

(assert (=> b!2009418 m!2441973))

(assert (=> b!2009418 m!2441919))

(declare-fun m!2441977 () Bool)

(assert (=> b!2009418 m!2441977))

(assert (=> b!2008068 d!613563))

(declare-fun d!613690 () Bool)

(declare-fun c!324629 () Bool)

(assert (=> d!613690 (= c!324629 ((_ is Nil!22061) lt!754211))))

(declare-fun e!1269645 () (InoxSet C!10916))

(assert (=> d!613690 (= (content!3231 lt!754211) e!1269645)))

(declare-fun b!2009431 () Bool)

(assert (=> b!2009431 (= e!1269645 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009432 () Bool)

(assert (=> b!2009432 (= e!1269645 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 lt!754211) true) (content!3231 (t!187320 lt!754211))))))

(assert (= (and d!613690 c!324629) b!2009431))

(assert (= (and d!613690 (not c!324629)) b!2009432))

(declare-fun m!2441981 () Bool)

(assert (=> b!2009432 m!2441981))

(declare-fun m!2441983 () Bool)

(assert (=> b!2009432 m!2441983))

(assert (=> d!613219 d!613690))

(declare-fun d!613693 () Bool)

(declare-fun c!324630 () Bool)

(assert (=> d!613693 (= c!324630 ((_ is Nil!22061) lt!754035))))

(declare-fun e!1269646 () (InoxSet C!10916))

(assert (=> d!613693 (= (content!3231 lt!754035) e!1269646)))

(declare-fun b!2009433 () Bool)

(assert (=> b!2009433 (= e!1269646 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009434 () Bool)

(assert (=> b!2009434 (= e!1269646 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 lt!754035) true) (content!3231 (t!187320 lt!754035))))))

(assert (= (and d!613693 c!324630) b!2009433))

(assert (= (and d!613693 (not c!324630)) b!2009434))

(declare-fun m!2441985 () Bool)

(assert (=> b!2009434 m!2441985))

(assert (=> b!2009434 m!2441397))

(assert (=> d!613219 d!613693))

(declare-fun d!613695 () Bool)

(declare-fun c!324631 () Bool)

(assert (=> d!613695 (= c!324631 ((_ is Nil!22061) (++!5953 lt!754030 lt!754023)))))

(declare-fun e!1269647 () (InoxSet C!10916))

(assert (=> d!613695 (= (content!3231 (++!5953 lt!754030 lt!754023)) e!1269647)))

(declare-fun b!2009435 () Bool)

(assert (=> b!2009435 (= e!1269647 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009436 () Bool)

(assert (=> b!2009436 (= e!1269647 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 (++!5953 lt!754030 lt!754023)) true) (content!3231 (t!187320 (++!5953 lt!754030 lt!754023)))))))

(assert (= (and d!613695 c!324631) b!2009435))

(assert (= (and d!613695 (not c!324631)) b!2009436))

(declare-fun m!2441987 () Bool)

(assert (=> b!2009436 m!2441987))

(declare-fun m!2441989 () Bool)

(assert (=> b!2009436 m!2441989))

(assert (=> d!613219 d!613695))

(declare-fun d!613697 () Bool)

(assert (=> d!613697 (= (inv!29216 (tag!4424 (h!27464 (t!187322 rules!3198)))) (= (mod (str.len (value!124450 (tag!4424 (h!27464 (t!187322 rules!3198))))) 2) 0))))

(assert (=> b!2008704 d!613697))

(declare-fun d!613699 () Bool)

(declare-fun res!881285 () Bool)

(declare-fun e!1269648 () Bool)

(assert (=> d!613699 (=> (not res!881285) (not e!1269648))))

(assert (=> d!613699 (= res!881285 (semiInverseModEq!1587 (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198))))))))

(assert (=> d!613699 (= (inv!29219 (transformation!3960 (h!27464 (t!187322 rules!3198)))) e!1269648)))

(declare-fun b!2009437 () Bool)

(assert (=> b!2009437 (= e!1269648 (equivClasses!1514 (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198))))))))

(assert (= (and d!613699 res!881285) b!2009437))

(declare-fun m!2441995 () Bool)

(assert (=> d!613699 m!2441995))

(declare-fun m!2441997 () Bool)

(assert (=> b!2009437 m!2441997))

(assert (=> b!2008704 d!613699))

(declare-fun d!613705 () Bool)

(assert (=> d!613705 (= (isEmpty!13686 lt!754030) ((_ is Nil!22061) lt!754030))))

(assert (=> d!613187 d!613705))

(declare-fun b!2009438 () Bool)

(declare-fun e!1269652 () Bool)

(declare-fun e!1269651 () Bool)

(assert (=> b!2009438 (= e!1269652 e!1269651)))

(declare-fun res!881288 () Bool)

(assert (=> b!2009438 (=> (not res!881288) (not e!1269651))))

(declare-fun call!122910 () Bool)

(assert (=> b!2009438 (= res!881288 call!122910)))

(declare-fun b!2009439 () Bool)

(declare-fun e!1269649 () Bool)

(declare-fun e!1269650 () Bool)

(assert (=> b!2009439 (= e!1269649 e!1269650)))

(declare-fun c!324633 () Bool)

(assert (=> b!2009439 (= c!324633 ((_ is Union!5385) (regex!3960 lt!754036)))))

(declare-fun b!2009440 () Bool)

(declare-fun res!881290 () Bool)

(declare-fun e!1269654 () Bool)

(assert (=> b!2009440 (=> (not res!881290) (not e!1269654))))

(assert (=> b!2009440 (= res!881290 call!122910)))

(assert (=> b!2009440 (= e!1269650 e!1269654)))

(declare-fun call!122909 () Bool)

(declare-fun bm!122903 () Bool)

(declare-fun c!324632 () Bool)

(assert (=> bm!122903 (= call!122909 (validRegex!2157 (ite c!324632 (reg!5714 (regex!3960 lt!754036)) (ite c!324633 (regOne!11283 (regex!3960 lt!754036)) (regOne!11282 (regex!3960 lt!754036))))))))

(declare-fun b!2009441 () Bool)

(declare-fun call!122908 () Bool)

(assert (=> b!2009441 (= e!1269654 call!122908)))

(declare-fun bm!122904 () Bool)

(assert (=> bm!122904 (= call!122910 call!122909)))

(declare-fun b!2009443 () Bool)

(declare-fun res!881289 () Bool)

(assert (=> b!2009443 (=> res!881289 e!1269652)))

(assert (=> b!2009443 (= res!881289 (not ((_ is Concat!9482) (regex!3960 lt!754036))))))

(assert (=> b!2009443 (= e!1269650 e!1269652)))

(declare-fun b!2009444 () Bool)

(declare-fun e!1269655 () Bool)

(assert (=> b!2009444 (= e!1269655 call!122909)))

(declare-fun b!2009445 () Bool)

(assert (=> b!2009445 (= e!1269649 e!1269655)))

(declare-fun res!881287 () Bool)

(assert (=> b!2009445 (= res!881287 (not (nullable!1631 (reg!5714 (regex!3960 lt!754036)))))))

(assert (=> b!2009445 (=> (not res!881287) (not e!1269655))))

(declare-fun d!613707 () Bool)

(declare-fun res!881286 () Bool)

(declare-fun e!1269653 () Bool)

(assert (=> d!613707 (=> res!881286 e!1269653)))

(assert (=> d!613707 (= res!881286 ((_ is ElementMatch!5385) (regex!3960 lt!754036)))))

(assert (=> d!613707 (= (validRegex!2157 (regex!3960 lt!754036)) e!1269653)))

(declare-fun b!2009442 () Bool)

(assert (=> b!2009442 (= e!1269651 call!122908)))

(declare-fun bm!122905 () Bool)

(assert (=> bm!122905 (= call!122908 (validRegex!2157 (ite c!324633 (regTwo!11283 (regex!3960 lt!754036)) (regTwo!11282 (regex!3960 lt!754036)))))))

(declare-fun b!2009446 () Bool)

(assert (=> b!2009446 (= e!1269653 e!1269649)))

(assert (=> b!2009446 (= c!324632 ((_ is Star!5385) (regex!3960 lt!754036)))))

(assert (= (and d!613707 (not res!881286)) b!2009446))

(assert (= (and b!2009446 c!324632) b!2009445))

(assert (= (and b!2009446 (not c!324632)) b!2009439))

(assert (= (and b!2009445 res!881287) b!2009444))

(assert (= (and b!2009439 c!324633) b!2009440))

(assert (= (and b!2009439 (not c!324633)) b!2009443))

(assert (= (and b!2009440 res!881290) b!2009441))

(assert (= (and b!2009443 (not res!881289)) b!2009438))

(assert (= (and b!2009438 res!881288) b!2009442))

(assert (= (or b!2009440 b!2009438) bm!122904))

(assert (= (or b!2009441 b!2009442) bm!122905))

(assert (= (or b!2009444 bm!122904) bm!122903))

(declare-fun m!2441999 () Bool)

(assert (=> bm!122903 m!2441999))

(declare-fun m!2442001 () Bool)

(assert (=> b!2009445 m!2442001))

(declare-fun m!2442003 () Bool)

(assert (=> bm!122905 m!2442003))

(assert (=> d!613187 d!613707))

(declare-fun d!613709 () Bool)

(declare-fun lt!754544 () Bool)

(assert (=> d!613709 (= lt!754544 (isEmpty!13686 (list!8981 (_2!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)))))))))

(assert (=> d!613709 (= lt!754544 (isEmpty!13689 (c!324302 (_2!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)))))))))

(assert (=> d!613709 (= (isEmpty!13688 (_2!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354))))) lt!754544)))

(declare-fun bs!419708 () Bool)

(assert (= bs!419708 d!613709))

(declare-fun m!2442005 () Bool)

(assert (=> bs!419708 m!2442005))

(assert (=> bs!419708 m!2442005))

(declare-fun m!2442007 () Bool)

(assert (=> bs!419708 m!2442007))

(declare-fun m!2442009 () Bool)

(assert (=> bs!419708 m!2442009))

(assert (=> b!2008656 d!613709))

(declare-fun b!2009472 () Bool)

(declare-fun e!1269671 () Bool)

(declare-fun e!1269672 () Bool)

(assert (=> b!2009472 (= e!1269671 e!1269672)))

(declare-fun lt!754550 () tuple2!20734)

(declare-fun res!881307 () Bool)

(declare-fun size!17252 (BalanceConc!14558) Int)

(assert (=> b!2009472 (= res!881307 (< (size!17252 (_2!11836 lt!754550)) (size!17252 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)))))))

(assert (=> b!2009472 (=> (not res!881307) (not e!1269672))))

(declare-fun b!2009473 () Bool)

(declare-fun res!881308 () Bool)

(declare-fun e!1269673 () Bool)

(assert (=> b!2009473 (=> (not res!881308) (not e!1269673))))

(declare-datatypes ((tuple2!20738 0))(
  ( (tuple2!20739 (_1!11838 List!22144) (_2!11838 List!22143)) )
))
(declare-fun lexList!966 (LexerInterface!3573 List!22145 List!22143) tuple2!20738)

(assert (=> b!2009473 (= res!881308 (= (list!8985 (_1!11836 lt!754550)) (_1!11838 (lexList!966 thiss!23328 rules!3198 (list!8981 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)))))))))

(declare-fun d!613711 () Bool)

(assert (=> d!613711 e!1269673))

(declare-fun res!881306 () Bool)

(assert (=> d!613711 (=> (not res!881306) (not e!1269673))))

(assert (=> d!613711 (= res!881306 e!1269671)))

(declare-fun c!324639 () Bool)

(assert (=> d!613711 (= c!324639 (> (size!17250 (_1!11836 lt!754550)) 0))))

(declare-fun lexTailRecV2!689 (LexerInterface!3573 List!22145 BalanceConc!14558 BalanceConc!14558 BalanceConc!14558 BalanceConc!14562) tuple2!20734)

(assert (=> d!613711 (= lt!754550 (lexTailRecV2!689 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)) (BalanceConc!14559 Empty!7371) (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)) (BalanceConc!14563 Empty!7373)))))

(assert (=> d!613711 (= (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354))) lt!754550)))

(declare-fun b!2009474 () Bool)

(assert (=> b!2009474 (= e!1269671 (= (_2!11836 lt!754550) (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354))))))

(declare-fun b!2009475 () Bool)

(assert (=> b!2009475 (= e!1269673 (= (list!8981 (_2!11836 lt!754550)) (_2!11838 (lexList!966 thiss!23328 rules!3198 (list!8981 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)))))))))

(declare-fun b!2009476 () Bool)

(declare-fun isEmpty!13690 (BalanceConc!14562) Bool)

(assert (=> b!2009476 (= e!1269672 (not (isEmpty!13690 (_1!11836 lt!754550))))))

(assert (= (and d!613711 c!324639) b!2009472))

(assert (= (and d!613711 (not c!324639)) b!2009474))

(assert (= (and b!2009472 res!881307) b!2009476))

(assert (= (and d!613711 res!881306) b!2009473))

(assert (= (and b!2009473 res!881308) b!2009475))

(declare-fun m!2442021 () Bool)

(assert (=> b!2009473 m!2442021))

(assert (=> b!2009473 m!2440783))

(declare-fun m!2442025 () Bool)

(assert (=> b!2009473 m!2442025))

(assert (=> b!2009473 m!2442025))

(declare-fun m!2442029 () Bool)

(assert (=> b!2009473 m!2442029))

(declare-fun m!2442033 () Bool)

(assert (=> b!2009475 m!2442033))

(assert (=> b!2009475 m!2440783))

(assert (=> b!2009475 m!2442025))

(assert (=> b!2009475 m!2442025))

(assert (=> b!2009475 m!2442029))

(declare-fun m!2442037 () Bool)

(assert (=> b!2009472 m!2442037))

(assert (=> b!2009472 m!2440783))

(declare-fun m!2442039 () Bool)

(assert (=> b!2009472 m!2442039))

(declare-fun m!2442041 () Bool)

(assert (=> b!2009476 m!2442041))

(declare-fun m!2442043 () Bool)

(assert (=> d!613711 m!2442043))

(assert (=> d!613711 m!2440783))

(assert (=> d!613711 m!2440783))

(declare-fun m!2442045 () Bool)

(assert (=> d!613711 m!2442045))

(assert (=> b!2008656 d!613711))

(declare-fun d!613715 () Bool)

(declare-fun lt!754551 () BalanceConc!14558)

(assert (=> d!613715 (= (list!8981 lt!754551) (printList!1104 thiss!23328 (list!8985 (singletonSeq!1942 separatorToken!354))))))

(assert (=> d!613715 (= lt!754551 (printTailRec!1047 thiss!23328 (singletonSeq!1942 separatorToken!354) 0 (BalanceConc!14559 Empty!7371)))))

(assert (=> d!613715 (= (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)) lt!754551)))

(declare-fun bs!419709 () Bool)

(assert (= bs!419709 d!613715))

(declare-fun m!2442047 () Bool)

(assert (=> bs!419709 m!2442047))

(assert (=> bs!419709 m!2440781))

(assert (=> bs!419709 m!2440791))

(assert (=> bs!419709 m!2440791))

(declare-fun m!2442049 () Bool)

(assert (=> bs!419709 m!2442049))

(assert (=> bs!419709 m!2440781))

(declare-fun m!2442051 () Bool)

(assert (=> bs!419709 m!2442051))

(assert (=> b!2008656 d!613715))

(declare-fun d!613717 () Bool)

(declare-fun e!1269674 () Bool)

(assert (=> d!613717 e!1269674))

(declare-fun res!881309 () Bool)

(assert (=> d!613717 (=> (not res!881309) (not e!1269674))))

(declare-fun lt!754552 () BalanceConc!14562)

(assert (=> d!613717 (= res!881309 (= (list!8985 lt!754552) (Cons!22062 separatorToken!354 Nil!22062)))))

(assert (=> d!613717 (= lt!754552 (singleton!868 separatorToken!354))))

(assert (=> d!613717 (= (singletonSeq!1942 separatorToken!354) lt!754552)))

(declare-fun b!2009477 () Bool)

(assert (=> b!2009477 (= e!1269674 (isBalanced!2297 (c!324444 lt!754552)))))

(assert (= (and d!613717 res!881309) b!2009477))

(declare-fun m!2442053 () Bool)

(assert (=> d!613717 m!2442053))

(declare-fun m!2442055 () Bool)

(assert (=> d!613717 m!2442055))

(declare-fun m!2442057 () Bool)

(assert (=> b!2009477 m!2442057))

(assert (=> b!2008656 d!613717))

(declare-fun d!613719 () Bool)

(declare-fun lt!754553 () Bool)

(assert (=> d!613719 (= lt!754553 (select (content!3233 rules!3198) (get!6972 lt!754163)))))

(declare-fun e!1269675 () Bool)

(assert (=> d!613719 (= lt!754553 e!1269675)))

(declare-fun res!881311 () Bool)

(assert (=> d!613719 (=> (not res!881311) (not e!1269675))))

(assert (=> d!613719 (= res!881311 ((_ is Cons!22063) rules!3198))))

(assert (=> d!613719 (= (contains!4032 rules!3198 (get!6972 lt!754163)) lt!754553)))

(declare-fun b!2009478 () Bool)

(declare-fun e!1269676 () Bool)

(assert (=> b!2009478 (= e!1269675 e!1269676)))

(declare-fun res!881310 () Bool)

(assert (=> b!2009478 (=> res!881310 e!1269676)))

(assert (=> b!2009478 (= res!881310 (= (h!27464 rules!3198) (get!6972 lt!754163)))))

(declare-fun b!2009479 () Bool)

(assert (=> b!2009479 (= e!1269676 (contains!4032 (t!187322 rules!3198) (get!6972 lt!754163)))))

(assert (= (and d!613719 res!881311) b!2009478))

(assert (= (and b!2009478 (not res!881310)) b!2009479))

(assert (=> d!613719 m!2441509))

(assert (=> d!613719 m!2440425))

(declare-fun m!2442059 () Bool)

(assert (=> d!613719 m!2442059))

(assert (=> b!2009479 m!2440425))

(declare-fun m!2442061 () Bool)

(assert (=> b!2009479 m!2442061))

(assert (=> b!2008229 d!613719))

(assert (=> b!2008229 d!613447))

(assert (=> d!613257 d!613717))

(assert (=> d!613257 d!613715))

(declare-fun d!613721 () Bool)

(declare-fun lt!754561 () Int)

(declare-fun size!17253 (List!22144) Int)

(assert (=> d!613721 (= lt!754561 (size!17253 (list!8985 (_1!11836 lt!754219))))))

(declare-fun size!17254 (Conc!7373) Int)

(assert (=> d!613721 (= lt!754561 (size!17254 (c!324444 (_1!11836 lt!754219))))))

(assert (=> d!613721 (= (size!17250 (_1!11836 lt!754219)) lt!754561)))

(declare-fun bs!419711 () Bool)

(assert (= bs!419711 d!613721))

(declare-fun m!2442083 () Bool)

(assert (=> bs!419711 m!2442083))

(assert (=> bs!419711 m!2442083))

(declare-fun m!2442085 () Bool)

(assert (=> bs!419711 m!2442085))

(declare-fun m!2442087 () Bool)

(assert (=> bs!419711 m!2442087))

(assert (=> d!613257 d!613721))

(declare-fun d!613729 () Bool)

(declare-fun list!8988 (Conc!7373) List!22144)

(assert (=> d!613729 (= (list!8985 (_1!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354))))) (list!8988 (c!324444 (_1!11836 (lex!1595 thiss!23328 rules!3198 (print!1541 thiss!23328 (singletonSeq!1942 separatorToken!354)))))))))

(declare-fun bs!419712 () Bool)

(assert (= bs!419712 d!613729))

(declare-fun m!2442091 () Bool)

(assert (=> bs!419712 m!2442091))

(assert (=> d!613257 d!613729))

(declare-fun d!613731 () Bool)

(assert (=> d!613731 (= (list!8985 (singletonSeq!1942 separatorToken!354)) (list!8988 (c!324444 (singletonSeq!1942 separatorToken!354))))))

(declare-fun bs!419713 () Bool)

(assert (= bs!419713 d!613731))

(declare-fun m!2442095 () Bool)

(assert (=> bs!419713 m!2442095))

(assert (=> d!613257 d!613731))

(assert (=> d!613257 d!613711))

(assert (=> d!613257 d!613191))

(declare-fun d!613735 () Bool)

(declare-fun charsToInt!0 (List!22142) (_ BitVec 32))

(assert (=> d!613735 (= (inv!16 (value!124451 separatorToken!354)) (= (charsToInt!0 (text!29119 (value!124451 separatorToken!354))) (value!124442 (value!124451 separatorToken!354))))))

(declare-fun bs!419715 () Bool)

(assert (= bs!419715 d!613735))

(declare-fun m!2442101 () Bool)

(assert (=> bs!419715 m!2442101))

(assert (=> b!2008621 d!613735))

(declare-fun d!613739 () Bool)

(declare-fun c!324645 () Bool)

(assert (=> d!613739 (= c!324645 ((_ is Node!7371) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))))))

(declare-fun e!1269685 () Bool)

(assert (=> d!613739 (= (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))) e!1269685)))

(declare-fun b!2009493 () Bool)

(assert (=> b!2009493 (= e!1269685 (inv!29227 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))))))

(declare-fun b!2009494 () Bool)

(declare-fun e!1269686 () Bool)

(assert (=> b!2009494 (= e!1269685 e!1269686)))

(declare-fun res!881315 () Bool)

(assert (=> b!2009494 (= res!881315 (not ((_ is Leaf!10814) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))))))))

(assert (=> b!2009494 (=> res!881315 e!1269686)))

(declare-fun b!2009495 () Bool)

(assert (=> b!2009495 (= e!1269686 (inv!29228 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))))))

(assert (= (and d!613739 c!324645) b!2009493))

(assert (= (and d!613739 (not c!324645)) b!2009494))

(assert (= (and b!2009494 (not res!881315)) b!2009495))

(declare-fun m!2442107 () Bool)

(assert (=> b!2009493 m!2442107))

(declare-fun m!2442109 () Bool)

(assert (=> b!2009495 m!2442109))

(assert (=> b!2008188 d!613739))

(declare-fun b!2009503 () Bool)

(declare-fun res!881317 () Bool)

(declare-fun e!1269691 () Bool)

(assert (=> b!2009503 (=> (not res!881317) (not e!1269691))))

(declare-fun lt!754562 () List!22143)

(assert (=> b!2009503 (= res!881317 (= (size!17248 lt!754562) (+ (size!17248 (t!187320 lt!754035)) (size!17248 lt!754023))))))

(declare-fun b!2009504 () Bool)

(assert (=> b!2009504 (= e!1269691 (or (not (= lt!754023 Nil!22061)) (= lt!754562 (t!187320 lt!754035))))))

(declare-fun d!613743 () Bool)

(assert (=> d!613743 e!1269691))

(declare-fun res!881318 () Bool)

(assert (=> d!613743 (=> (not res!881318) (not e!1269691))))

(assert (=> d!613743 (= res!881318 (= (content!3231 lt!754562) ((_ map or) (content!3231 (t!187320 lt!754035)) (content!3231 lt!754023))))))

(declare-fun e!1269690 () List!22143)

(assert (=> d!613743 (= lt!754562 e!1269690)))

(declare-fun c!324648 () Bool)

(assert (=> d!613743 (= c!324648 ((_ is Nil!22061) (t!187320 lt!754035)))))

(assert (=> d!613743 (= (++!5953 (t!187320 lt!754035) lt!754023) lt!754562)))

(declare-fun b!2009502 () Bool)

(assert (=> b!2009502 (= e!1269690 (Cons!22061 (h!27462 (t!187320 lt!754035)) (++!5953 (t!187320 (t!187320 lt!754035)) lt!754023)))))

(declare-fun b!2009501 () Bool)

(assert (=> b!2009501 (= e!1269690 lt!754023)))

(assert (= (and d!613743 c!324648) b!2009501))

(assert (= (and d!613743 (not c!324648)) b!2009502))

(assert (= (and d!613743 res!881318) b!2009503))

(assert (= (and b!2009503 res!881317) b!2009504))

(declare-fun m!2442119 () Bool)

(assert (=> b!2009503 m!2442119))

(assert (=> b!2009503 m!2441393))

(assert (=> b!2009503 m!2440413))

(declare-fun m!2442121 () Bool)

(assert (=> d!613743 m!2442121))

(assert (=> d!613743 m!2441397))

(assert (=> d!613743 m!2440419))

(declare-fun m!2442123 () Bool)

(assert (=> b!2009502 m!2442123))

(assert (=> b!2008225 d!613743))

(declare-fun d!613749 () Bool)

(declare-fun lt!754564 () Bool)

(assert (=> d!613749 (= lt!754564 (select (content!3231 (t!187320 lt!754030)) lt!754022))))

(declare-fun e!1269696 () Bool)

(assert (=> d!613749 (= lt!754564 e!1269696)))

(declare-fun res!881320 () Bool)

(assert (=> d!613749 (=> (not res!881320) (not e!1269696))))

(assert (=> d!613749 (= res!881320 ((_ is Cons!22061) (t!187320 lt!754030)))))

(assert (=> d!613749 (= (contains!4030 (t!187320 lt!754030) lt!754022) lt!754564)))

(declare-fun b!2009510 () Bool)

(declare-fun e!1269695 () Bool)

(assert (=> b!2009510 (= e!1269696 e!1269695)))

(declare-fun res!881321 () Bool)

(assert (=> b!2009510 (=> res!881321 e!1269695)))

(assert (=> b!2009510 (= res!881321 (= (h!27462 (t!187320 lt!754030)) lt!754022))))

(declare-fun b!2009511 () Bool)

(assert (=> b!2009511 (= e!1269695 (contains!4030 (t!187320 (t!187320 lt!754030)) lt!754022))))

(assert (= (and d!613749 res!881320) b!2009510))

(assert (= (and b!2009510 (not res!881321)) b!2009511))

(assert (=> d!613749 m!2441057))

(declare-fun m!2442129 () Bool)

(assert (=> d!613749 m!2442129))

(declare-fun m!2442131 () Bool)

(assert (=> b!2009511 m!2442131))

(assert (=> b!2008257 d!613749))

(declare-fun d!613753 () Bool)

(assert (=> d!613753 (= (isDefined!3889 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))) (not (isEmpty!13682 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))))))

(declare-fun bs!419716 () Bool)

(assert (= bs!419716 d!613753))

(assert (=> bs!419716 m!2440033))

(declare-fun m!2442139 () Bool)

(assert (=> bs!419716 m!2442139))

(assert (=> d!613069 d!613753))

(assert (=> d!613069 d!613147))

(declare-fun d!613757 () Bool)

(declare-fun e!1269699 () Bool)

(assert (=> d!613757 e!1269699))

(declare-fun res!881324 () Bool)

(assert (=> d!613757 (=> (not res!881324) (not e!1269699))))

(assert (=> d!613757 (= res!881324 (isDefined!3889 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))))))

(assert (=> d!613757 true))

(declare-fun _$52!1294 () Unit!36620)

(assert (=> d!613757 (= (choose!12233 thiss!23328 rules!3198 lt!754035 (h!27463 tokens!598)) _$52!1294)))

(declare-fun b!2009516 () Bool)

(declare-fun res!881325 () Bool)

(assert (=> b!2009516 (=> (not res!881325) (not e!1269699))))

(assert (=> b!2009516 (= res!881325 (matchR!2651 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))) (list!8981 (charsOf!2500 (h!27463 tokens!598)))))))

(declare-fun b!2009517 () Bool)

(assert (=> b!2009517 (= e!1269699 (= (rule!6185 (h!27463 tokens!598)) (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))))))

(assert (= (and d!613757 res!881324) b!2009516))

(assert (= (and b!2009516 res!881325) b!2009517))

(assert (=> d!613757 m!2440033))

(assert (=> d!613757 m!2440033))

(assert (=> d!613757 m!2440079))

(assert (=> b!2009516 m!2440083))

(assert (=> b!2009516 m!2440085))

(assert (=> b!2009516 m!2440023))

(assert (=> b!2009516 m!2440023))

(assert (=> b!2009516 m!2440083))

(assert (=> b!2009516 m!2440033))

(assert (=> b!2009516 m!2440087))

(assert (=> b!2009516 m!2440033))

(assert (=> b!2009517 m!2440033))

(assert (=> b!2009517 m!2440033))

(assert (=> b!2009517 m!2440087))

(assert (=> d!613069 d!613757))

(assert (=> d!613069 d!613205))

(declare-fun d!613759 () Bool)

(declare-fun c!324652 () Bool)

(assert (=> d!613759 (= c!324652 ((_ is Nil!22061) (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))))))

(declare-fun e!1269700 () (InoxSet C!10916))

(assert (=> d!613759 (= (content!3231 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))) e!1269700)))

(declare-fun b!2009518 () Bool)

(assert (=> b!2009518 (= e!1269700 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009519 () Bool)

(assert (=> b!2009519 (= e!1269700 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))) true) (content!3231 (t!187320 (usedCharacters!398 (regex!3960 (rule!6185 separatorToken!354)))))))))

(assert (= (and d!613759 c!324652) b!2009518))

(assert (= (and d!613759 (not c!324652)) b!2009519))

(declare-fun m!2442141 () Bool)

(assert (=> b!2009519 m!2442141))

(assert (=> b!2009519 m!2441437))

(assert (=> d!613221 d!613759))

(declare-fun d!613761 () Bool)

(assert (=> d!613761 (= (isDefined!3890 lt!754126) (not (isEmpty!13684 lt!754126)))))

(declare-fun bs!419717 () Bool)

(assert (= bs!419717 d!613761))

(assert (=> bs!419717 m!2440327))

(assert (=> b!2008163 d!613761))

(declare-fun d!613763 () Bool)

(assert (=> d!613763 (= (list!8981 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))) (list!8983 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))))))

(declare-fun bs!419718 () Bool)

(assert (= bs!419718 d!613763))

(declare-fun m!2442143 () Bool)

(assert (=> bs!419718 m!2442143))

(assert (=> b!2008269 d!613763))

(declare-fun bs!419720 () Bool)

(declare-fun d!613765 () Bool)

(assert (= bs!419720 (and d!613765 d!613149)))

(declare-fun lambda!76072 () Int)

(assert (=> bs!419720 (= (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (= lambda!76072 lambda!76036))))

(declare-fun bs!419721 () Bool)

(assert (= bs!419721 (and d!613765 d!613535)))

(assert (=> bs!419721 (= (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354)))) (= lambda!76072 lambda!76062))))

(assert (=> d!613765 true))

(assert (=> d!613765 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10862 order!14007 lambda!76072))))

(assert (=> d!613765 (= (equivClasses!1514 (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (Forall2!641 lambda!76072))))

(declare-fun bs!419722 () Bool)

(assert (= bs!419722 d!613765))

(declare-fun m!2442157 () Bool)

(assert (=> bs!419722 m!2442157))

(assert (=> b!2008657 d!613765))

(declare-fun d!613771 () Bool)

(assert (=> d!613771 (= (inv!15 (value!124451 separatorToken!354)) (= (charsToBigInt!0 (text!29121 (value!124451 separatorToken!354)) 0) (value!124446 (value!124451 separatorToken!354))))))

(declare-fun bs!419723 () Bool)

(assert (= bs!419723 d!613771))

(declare-fun m!2442159 () Bool)

(assert (=> bs!419723 m!2442159))

(assert (=> b!2008619 d!613771))

(declare-fun d!613775 () Bool)

(declare-fun c!324659 () Bool)

(assert (=> d!613775 (= c!324659 (and ((_ is Cons!22063) rules!3198) (not (= (isSeparator!3960 (h!27464 rules!3198)) (isSeparator!3960 (h!27464 rules!3198))))))))

(declare-fun e!1269718 () Bool)

(assert (=> d!613775 (= (ruleDisjointCharsFromAllFromOtherType!471 (h!27464 rules!3198) rules!3198) e!1269718)))

(declare-fun b!2009546 () Bool)

(declare-fun e!1269719 () Bool)

(declare-fun call!122917 () Bool)

(assert (=> b!2009546 (= e!1269719 call!122917)))

(declare-fun b!2009547 () Bool)

(declare-fun e!1269720 () Bool)

(assert (=> b!2009547 (= e!1269720 call!122917)))

(declare-fun bm!122912 () Bool)

(assert (=> bm!122912 (= call!122917 (ruleDisjointCharsFromAllFromOtherType!471 (h!27464 rules!3198) (t!187322 rules!3198)))))

(declare-fun b!2009548 () Bool)

(assert (=> b!2009548 (= e!1269718 e!1269719)))

(declare-fun res!881341 () Bool)

(assert (=> b!2009548 (= res!881341 (not ((_ is Cons!22063) rules!3198)))))

(assert (=> b!2009548 (=> res!881341 e!1269719)))

(declare-fun b!2009549 () Bool)

(assert (=> b!2009549 (= e!1269718 e!1269720)))

(declare-fun res!881340 () Bool)

(declare-fun rulesUseDisjointChars!222 (Rule!7720 Rule!7720) Bool)

(assert (=> b!2009549 (= res!881340 (rulesUseDisjointChars!222 (h!27464 rules!3198) (h!27464 rules!3198)))))

(assert (=> b!2009549 (=> (not res!881340) (not e!1269720))))

(assert (= (and d!613775 c!324659) b!2009549))

(assert (= (and d!613775 (not c!324659)) b!2009548))

(assert (= (and b!2009549 res!881340) b!2009547))

(assert (= (and b!2009548 (not res!881341)) b!2009546))

(assert (= (or b!2009547 b!2009546) bm!122912))

(declare-fun m!2442201 () Bool)

(assert (=> bm!122912 m!2442201))

(declare-fun m!2442203 () Bool)

(assert (=> b!2009549 m!2442203))

(assert (=> b!2008610 d!613775))

(declare-fun b!2009722 () Bool)

(declare-fun res!881380 () Bool)

(declare-fun e!1269807 () Bool)

(assert (=> b!2009722 (=> (not res!881380) (not e!1269807))))

(declare-fun lt!754602 () Option!4602)

(assert (=> b!2009722 (= res!881380 (< (size!17248 (_2!11834 (get!6973 lt!754602))) (size!17248 lt!754035)))))

(declare-fun b!2009723 () Bool)

(declare-fun res!881381 () Bool)

(assert (=> b!2009723 (=> (not res!881381) (not e!1269807))))

(assert (=> b!2009723 (= res!881381 (= (value!124451 (_1!11834 (get!6973 lt!754602))) (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754602)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754602)))))))))

(declare-fun b!2009724 () Bool)

(declare-fun e!1269805 () Bool)

(declare-datatypes ((tuple2!20740 0))(
  ( (tuple2!20741 (_1!11839 List!22143) (_2!11839 List!22143)) )
))
(declare-fun findLongestMatchInner!551 (Regex!5385 List!22143 Int List!22143 List!22143 Int) tuple2!20740)

(assert (=> b!2009724 (= e!1269805 (matchR!2651 (regex!3960 (h!27464 rules!3198)) (_1!11839 (findLongestMatchInner!551 (regex!3960 (h!27464 rules!3198)) Nil!22061 (size!17248 Nil!22061) lt!754035 lt!754035 (size!17248 lt!754035)))))))

(declare-fun b!2009725 () Bool)

(assert (=> b!2009725 (= e!1269807 (= (size!17246 (_1!11834 (get!6973 lt!754602))) (size!17248 (originalCharacters!4767 (_1!11834 (get!6973 lt!754602))))))))

(declare-fun b!2009726 () Bool)

(declare-fun e!1269808 () Option!4602)

(assert (=> b!2009726 (= e!1269808 None!4601)))

(declare-fun b!2009728 () Bool)

(declare-fun lt!754604 () tuple2!20740)

(assert (=> b!2009728 (= e!1269808 (Some!4601 (tuple2!20731 (Token!7473 (apply!5780 (transformation!3960 (h!27464 rules!3198)) (seqFromList!2814 (_1!11839 lt!754604))) (h!27464 rules!3198) (size!17252 (seqFromList!2814 (_1!11839 lt!754604))) (_1!11839 lt!754604)) (_2!11839 lt!754604))))))

(declare-fun lt!754605 () Unit!36620)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!535 (Regex!5385 List!22143) Unit!36620)

(assert (=> b!2009728 (= lt!754605 (longestMatchIsAcceptedByMatchOrIsEmpty!535 (regex!3960 (h!27464 rules!3198)) lt!754035))))

(declare-fun res!881382 () Bool)

(assert (=> b!2009728 (= res!881382 (isEmpty!13686 (_1!11839 (findLongestMatchInner!551 (regex!3960 (h!27464 rules!3198)) Nil!22061 (size!17248 Nil!22061) lt!754035 lt!754035 (size!17248 lt!754035)))))))

(assert (=> b!2009728 (=> res!881382 e!1269805)))

(assert (=> b!2009728 e!1269805))

(declare-fun lt!754606 () Unit!36620)

(assert (=> b!2009728 (= lt!754606 lt!754605)))

(declare-fun lt!754603 () Unit!36620)

(assert (=> b!2009728 (= lt!754603 (lemmaSemiInverse!917 (transformation!3960 (h!27464 rules!3198)) (seqFromList!2814 (_1!11839 lt!754604))))))

(declare-fun b!2009729 () Bool)

(declare-fun e!1269806 () Bool)

(assert (=> b!2009729 (= e!1269806 e!1269807)))

(declare-fun res!881376 () Bool)

(assert (=> b!2009729 (=> (not res!881376) (not e!1269807))))

(assert (=> b!2009729 (= res!881376 (matchR!2651 (regex!3960 (h!27464 rules!3198)) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754602))))))))

(declare-fun b!2009730 () Bool)

(declare-fun res!881377 () Bool)

(assert (=> b!2009730 (=> (not res!881377) (not e!1269807))))

(assert (=> b!2009730 (= res!881377 (= (rule!6185 (_1!11834 (get!6973 lt!754602))) (h!27464 rules!3198)))))

(declare-fun d!613793 () Bool)

(assert (=> d!613793 e!1269806))

(declare-fun res!881378 () Bool)

(assert (=> d!613793 (=> res!881378 e!1269806)))

(assert (=> d!613793 (= res!881378 (isEmpty!13684 lt!754602))))

(assert (=> d!613793 (= lt!754602 e!1269808)))

(declare-fun c!324678 () Bool)

(assert (=> d!613793 (= c!324678 (isEmpty!13686 (_1!11839 lt!754604)))))

(declare-fun findLongestMatch!478 (Regex!5385 List!22143) tuple2!20740)

(assert (=> d!613793 (= lt!754604 (findLongestMatch!478 (regex!3960 (h!27464 rules!3198)) lt!754035))))

(assert (=> d!613793 (ruleValid!1211 thiss!23328 (h!27464 rules!3198))))

(assert (=> d!613793 (= (maxPrefixOneRule!1244 thiss!23328 (h!27464 rules!3198) lt!754035) lt!754602)))

(declare-fun b!2009727 () Bool)

(declare-fun res!881379 () Bool)

(assert (=> b!2009727 (=> (not res!881379) (not e!1269807))))

(assert (=> b!2009727 (= res!881379 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754602)))) (_2!11834 (get!6973 lt!754602))) lt!754035))))

(assert (= (and d!613793 c!324678) b!2009726))

(assert (= (and d!613793 (not c!324678)) b!2009728))

(assert (= (and b!2009728 (not res!881382)) b!2009724))

(assert (= (and d!613793 (not res!881378)) b!2009729))

(assert (= (and b!2009729 res!881376) b!2009727))

(assert (= (and b!2009727 res!881379) b!2009722))

(assert (= (and b!2009722 res!881380) b!2009730))

(assert (= (and b!2009730 res!881377) b!2009723))

(assert (= (and b!2009723 res!881381) b!2009725))

(declare-fun m!2442361 () Bool)

(assert (=> b!2009724 m!2442361))

(assert (=> b!2009724 m!2440407))

(assert (=> b!2009724 m!2442361))

(assert (=> b!2009724 m!2440407))

(declare-fun m!2442363 () Bool)

(assert (=> b!2009724 m!2442363))

(declare-fun m!2442365 () Bool)

(assert (=> b!2009724 m!2442365))

(declare-fun m!2442367 () Bool)

(assert (=> b!2009725 m!2442367))

(declare-fun m!2442369 () Bool)

(assert (=> b!2009725 m!2442369))

(assert (=> b!2009723 m!2442367))

(declare-fun m!2442371 () Bool)

(assert (=> b!2009723 m!2442371))

(assert (=> b!2009723 m!2442371))

(declare-fun m!2442373 () Bool)

(assert (=> b!2009723 m!2442373))

(assert (=> b!2009729 m!2442367))

(declare-fun m!2442375 () Bool)

(assert (=> b!2009729 m!2442375))

(assert (=> b!2009729 m!2442375))

(declare-fun m!2442377 () Bool)

(assert (=> b!2009729 m!2442377))

(assert (=> b!2009729 m!2442377))

(declare-fun m!2442379 () Bool)

(assert (=> b!2009729 m!2442379))

(declare-fun m!2442381 () Bool)

(assert (=> d!613793 m!2442381))

(declare-fun m!2442383 () Bool)

(assert (=> d!613793 m!2442383))

(declare-fun m!2442385 () Bool)

(assert (=> d!613793 m!2442385))

(assert (=> d!613793 m!2441159))

(declare-fun m!2442387 () Bool)

(assert (=> b!2009728 m!2442387))

(declare-fun m!2442389 () Bool)

(assert (=> b!2009728 m!2442389))

(declare-fun m!2442391 () Bool)

(assert (=> b!2009728 m!2442391))

(assert (=> b!2009728 m!2442361))

(assert (=> b!2009728 m!2440407))

(assert (=> b!2009728 m!2442363))

(assert (=> b!2009728 m!2442387))

(declare-fun m!2442393 () Bool)

(assert (=> b!2009728 m!2442393))

(assert (=> b!2009728 m!2442361))

(assert (=> b!2009728 m!2440407))

(assert (=> b!2009728 m!2442387))

(declare-fun m!2442395 () Bool)

(assert (=> b!2009728 m!2442395))

(assert (=> b!2009728 m!2442387))

(declare-fun m!2442397 () Bool)

(assert (=> b!2009728 m!2442397))

(assert (=> b!2009722 m!2442367))

(declare-fun m!2442399 () Bool)

(assert (=> b!2009722 m!2442399))

(assert (=> b!2009722 m!2440407))

(assert (=> b!2009727 m!2442367))

(assert (=> b!2009727 m!2442375))

(assert (=> b!2009727 m!2442375))

(assert (=> b!2009727 m!2442377))

(assert (=> b!2009727 m!2442377))

(declare-fun m!2442401 () Bool)

(assert (=> b!2009727 m!2442401))

(assert (=> b!2009730 m!2442367))

(assert (=> bm!122785 d!613793))

(declare-fun d!613859 () Bool)

(assert (=> d!613859 (= (nullable!1631 (reg!5714 (regex!3960 (rule!6185 separatorToken!354)))) (nullableFct!378 (reg!5714 (regex!3960 (rule!6185 separatorToken!354)))))))

(declare-fun bs!419748 () Bool)

(assert (= bs!419748 d!613859))

(declare-fun m!2442403 () Bool)

(assert (=> bs!419748 m!2442403))

(assert (=> b!2008580 d!613859))

(assert (=> d!613207 d!613209))

(declare-fun d!613861 () Bool)

(assert (=> d!613861 (= (++!5953 (++!5953 lt!754035 lt!754030) lt!754023) (++!5953 lt!754035 (++!5953 lt!754030 lt!754023)))))

(assert (=> d!613861 true))

(declare-fun _$52!1298 () Unit!36620)

(assert (=> d!613861 (= (choose!12234 lt!754035 lt!754030 lt!754023) _$52!1298)))

(declare-fun bs!419749 () Bool)

(assert (= bs!419749 d!613861))

(assert (=> bs!419749 m!2440065))

(assert (=> bs!419749 m!2440065))

(assert (=> bs!419749 m!2440069))

(assert (=> bs!419749 m!2440059))

(assert (=> bs!419749 m!2440059))

(assert (=> bs!419749 m!2440061))

(assert (=> d!613207 d!613861))

(assert (=> d!613207 d!613215))

(assert (=> d!613207 d!613217))

(assert (=> d!613207 d!613219))

(declare-fun b!2009733 () Bool)

(declare-fun res!881383 () Bool)

(declare-fun e!1269810 () Bool)

(assert (=> b!2009733 (=> (not res!881383) (not e!1269810))))

(declare-fun lt!754607 () List!22143)

(assert (=> b!2009733 (= res!881383 (= (size!17248 lt!754607) (+ (size!17248 (t!187320 lt!754035)) (size!17248 lt!754030))))))

(declare-fun b!2009734 () Bool)

(assert (=> b!2009734 (= e!1269810 (or (not (= lt!754030 Nil!22061)) (= lt!754607 (t!187320 lt!754035))))))

(declare-fun d!613863 () Bool)

(assert (=> d!613863 e!1269810))

(declare-fun res!881384 () Bool)

(assert (=> d!613863 (=> (not res!881384) (not e!1269810))))

(assert (=> d!613863 (= res!881384 (= (content!3231 lt!754607) ((_ map or) (content!3231 (t!187320 lt!754035)) (content!3231 lt!754030))))))

(declare-fun e!1269809 () List!22143)

(assert (=> d!613863 (= lt!754607 e!1269809)))

(declare-fun c!324679 () Bool)

(assert (=> d!613863 (= c!324679 ((_ is Nil!22061) (t!187320 lt!754035)))))

(assert (=> d!613863 (= (++!5953 (t!187320 lt!754035) lt!754030) lt!754607)))

(declare-fun b!2009732 () Bool)

(assert (=> b!2009732 (= e!1269809 (Cons!22061 (h!27462 (t!187320 lt!754035)) (++!5953 (t!187320 (t!187320 lt!754035)) lt!754030)))))

(declare-fun b!2009731 () Bool)

(assert (=> b!2009731 (= e!1269809 lt!754030)))

(assert (= (and d!613863 c!324679) b!2009731))

(assert (= (and d!613863 (not c!324679)) b!2009732))

(assert (= (and d!613863 res!881384) b!2009733))

(assert (= (and b!2009733 res!881383) b!2009734))

(declare-fun m!2442405 () Bool)

(assert (=> b!2009733 m!2442405))

(assert (=> b!2009733 m!2441393))

(assert (=> b!2009733 m!2440629))

(declare-fun m!2442407 () Bool)

(assert (=> d!613863 m!2442407))

(assert (=> d!613863 m!2441397))

(assert (=> d!613863 m!2440471))

(declare-fun m!2442409 () Bool)

(assert (=> b!2009732 m!2442409))

(assert (=> b!2008419 d!613863))

(declare-fun b!2009735 () Bool)

(declare-fun res!881389 () Bool)

(declare-fun e!1269813 () Bool)

(assert (=> b!2009735 (=> (not res!881389) (not e!1269813))))

(declare-fun lt!754608 () Option!4602)

(assert (=> b!2009735 (= res!881389 (< (size!17248 (_2!11834 (get!6973 lt!754608))) (size!17248 (++!5953 lt!754035 lt!754023))))))

(declare-fun b!2009736 () Bool)

(declare-fun res!881390 () Bool)

(assert (=> b!2009736 (=> (not res!881390) (not e!1269813))))

(assert (=> b!2009736 (= res!881390 (= (value!124451 (_1!11834 (get!6973 lt!754608))) (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754608)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754608)))))))))

(declare-fun b!2009737 () Bool)

(declare-fun e!1269811 () Bool)

(assert (=> b!2009737 (= e!1269811 (matchR!2651 (regex!3960 (h!27464 rules!3198)) (_1!11839 (findLongestMatchInner!551 (regex!3960 (h!27464 rules!3198)) Nil!22061 (size!17248 Nil!22061) (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023) (size!17248 (++!5953 lt!754035 lt!754023))))))))

(declare-fun b!2009738 () Bool)

(assert (=> b!2009738 (= e!1269813 (= (size!17246 (_1!11834 (get!6973 lt!754608))) (size!17248 (originalCharacters!4767 (_1!11834 (get!6973 lt!754608))))))))

(declare-fun b!2009739 () Bool)

(declare-fun e!1269814 () Option!4602)

(assert (=> b!2009739 (= e!1269814 None!4601)))

(declare-fun b!2009741 () Bool)

(declare-fun lt!754610 () tuple2!20740)

(assert (=> b!2009741 (= e!1269814 (Some!4601 (tuple2!20731 (Token!7473 (apply!5780 (transformation!3960 (h!27464 rules!3198)) (seqFromList!2814 (_1!11839 lt!754610))) (h!27464 rules!3198) (size!17252 (seqFromList!2814 (_1!11839 lt!754610))) (_1!11839 lt!754610)) (_2!11839 lt!754610))))))

(declare-fun lt!754611 () Unit!36620)

(assert (=> b!2009741 (= lt!754611 (longestMatchIsAcceptedByMatchOrIsEmpty!535 (regex!3960 (h!27464 rules!3198)) (++!5953 lt!754035 lt!754023)))))

(declare-fun res!881391 () Bool)

(assert (=> b!2009741 (= res!881391 (isEmpty!13686 (_1!11839 (findLongestMatchInner!551 (regex!3960 (h!27464 rules!3198)) Nil!22061 (size!17248 Nil!22061) (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023) (size!17248 (++!5953 lt!754035 lt!754023))))))))

(assert (=> b!2009741 (=> res!881391 e!1269811)))

(assert (=> b!2009741 e!1269811))

(declare-fun lt!754612 () Unit!36620)

(assert (=> b!2009741 (= lt!754612 lt!754611)))

(declare-fun lt!754609 () Unit!36620)

(assert (=> b!2009741 (= lt!754609 (lemmaSemiInverse!917 (transformation!3960 (h!27464 rules!3198)) (seqFromList!2814 (_1!11839 lt!754610))))))

(declare-fun b!2009742 () Bool)

(declare-fun e!1269812 () Bool)

(assert (=> b!2009742 (= e!1269812 e!1269813)))

(declare-fun res!881385 () Bool)

(assert (=> b!2009742 (=> (not res!881385) (not e!1269813))))

(assert (=> b!2009742 (= res!881385 (matchR!2651 (regex!3960 (h!27464 rules!3198)) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754608))))))))

(declare-fun b!2009743 () Bool)

(declare-fun res!881386 () Bool)

(assert (=> b!2009743 (=> (not res!881386) (not e!1269813))))

(assert (=> b!2009743 (= res!881386 (= (rule!6185 (_1!11834 (get!6973 lt!754608))) (h!27464 rules!3198)))))

(declare-fun d!613865 () Bool)

(assert (=> d!613865 e!1269812))

(declare-fun res!881387 () Bool)

(assert (=> d!613865 (=> res!881387 e!1269812)))

(assert (=> d!613865 (= res!881387 (isEmpty!13684 lt!754608))))

(assert (=> d!613865 (= lt!754608 e!1269814)))

(declare-fun c!324680 () Bool)

(assert (=> d!613865 (= c!324680 (isEmpty!13686 (_1!11839 lt!754610)))))

(assert (=> d!613865 (= lt!754610 (findLongestMatch!478 (regex!3960 (h!27464 rules!3198)) (++!5953 lt!754035 lt!754023)))))

(assert (=> d!613865 (ruleValid!1211 thiss!23328 (h!27464 rules!3198))))

(assert (=> d!613865 (= (maxPrefixOneRule!1244 thiss!23328 (h!27464 rules!3198) (++!5953 lt!754035 lt!754023)) lt!754608)))

(declare-fun b!2009740 () Bool)

(declare-fun res!881388 () Bool)

(assert (=> b!2009740 (=> (not res!881388) (not e!1269813))))

(assert (=> b!2009740 (= res!881388 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754608)))) (_2!11834 (get!6973 lt!754608))) (++!5953 lt!754035 lt!754023)))))

(assert (= (and d!613865 c!324680) b!2009739))

(assert (= (and d!613865 (not c!324680)) b!2009741))

(assert (= (and b!2009741 (not res!881391)) b!2009737))

(assert (= (and d!613865 (not res!881387)) b!2009742))

(assert (= (and b!2009742 res!881385) b!2009740))

(assert (= (and b!2009740 res!881388) b!2009735))

(assert (= (and b!2009735 res!881389) b!2009743))

(assert (= (and b!2009743 res!881386) b!2009736))

(assert (= (and b!2009736 res!881390) b!2009738))

(assert (=> b!2009737 m!2442361))

(assert (=> b!2009737 m!2440037))

(assert (=> b!2009737 m!2440341))

(assert (=> b!2009737 m!2442361))

(assert (=> b!2009737 m!2440037))

(assert (=> b!2009737 m!2440037))

(assert (=> b!2009737 m!2440341))

(declare-fun m!2442411 () Bool)

(assert (=> b!2009737 m!2442411))

(declare-fun m!2442413 () Bool)

(assert (=> b!2009737 m!2442413))

(declare-fun m!2442415 () Bool)

(assert (=> b!2009738 m!2442415))

(declare-fun m!2442417 () Bool)

(assert (=> b!2009738 m!2442417))

(assert (=> b!2009736 m!2442415))

(declare-fun m!2442419 () Bool)

(assert (=> b!2009736 m!2442419))

(assert (=> b!2009736 m!2442419))

(declare-fun m!2442421 () Bool)

(assert (=> b!2009736 m!2442421))

(assert (=> b!2009742 m!2442415))

(declare-fun m!2442423 () Bool)

(assert (=> b!2009742 m!2442423))

(assert (=> b!2009742 m!2442423))

(declare-fun m!2442425 () Bool)

(assert (=> b!2009742 m!2442425))

(assert (=> b!2009742 m!2442425))

(declare-fun m!2442427 () Bool)

(assert (=> b!2009742 m!2442427))

(declare-fun m!2442429 () Bool)

(assert (=> d!613865 m!2442429))

(declare-fun m!2442431 () Bool)

(assert (=> d!613865 m!2442431))

(assert (=> d!613865 m!2440037))

(declare-fun m!2442433 () Bool)

(assert (=> d!613865 m!2442433))

(assert (=> d!613865 m!2441159))

(declare-fun m!2442435 () Bool)

(assert (=> b!2009741 m!2442435))

(declare-fun m!2442437 () Bool)

(assert (=> b!2009741 m!2442437))

(declare-fun m!2442439 () Bool)

(assert (=> b!2009741 m!2442439))

(assert (=> b!2009741 m!2442361))

(assert (=> b!2009741 m!2440037))

(assert (=> b!2009741 m!2440037))

(assert (=> b!2009741 m!2440341))

(assert (=> b!2009741 m!2442411))

(assert (=> b!2009741 m!2442435))

(declare-fun m!2442441 () Bool)

(assert (=> b!2009741 m!2442441))

(assert (=> b!2009741 m!2442361))

(assert (=> b!2009741 m!2440037))

(assert (=> b!2009741 m!2440341))

(assert (=> b!2009741 m!2442435))

(assert (=> b!2009741 m!2440037))

(declare-fun m!2442443 () Bool)

(assert (=> b!2009741 m!2442443))

(assert (=> b!2009741 m!2442435))

(declare-fun m!2442445 () Bool)

(assert (=> b!2009741 m!2442445))

(assert (=> b!2009735 m!2442415))

(declare-fun m!2442447 () Bool)

(assert (=> b!2009735 m!2442447))

(assert (=> b!2009735 m!2440037))

(assert (=> b!2009735 m!2440341))

(assert (=> b!2009740 m!2442415))

(assert (=> b!2009740 m!2442423))

(assert (=> b!2009740 m!2442423))

(assert (=> b!2009740 m!2442425))

(assert (=> b!2009740 m!2442425))

(declare-fun m!2442449 () Bool)

(assert (=> b!2009740 m!2442449))

(assert (=> b!2009743 m!2442415))

(assert (=> bm!122784 d!613865))

(declare-fun d!613867 () Bool)

(assert (=> d!613867 (= (isDefined!3890 lt!754144) (not (isEmpty!13684 lt!754144)))))

(declare-fun bs!419750 () Bool)

(assert (= bs!419750 d!613867))

(assert (=> bs!419750 m!2440395))

(assert (=> b!2008192 d!613867))

(declare-fun d!613869 () Bool)

(declare-fun lt!754613 () Int)

(assert (=> d!613869 (>= lt!754613 0)))

(declare-fun e!1269815 () Int)

(assert (=> d!613869 (= lt!754613 e!1269815)))

(declare-fun c!324681 () Bool)

(assert (=> d!613869 (= c!324681 ((_ is Nil!22061) lt!754211))))

(assert (=> d!613869 (= (size!17248 lt!754211) lt!754613)))

(declare-fun b!2009744 () Bool)

(assert (=> b!2009744 (= e!1269815 0)))

(declare-fun b!2009745 () Bool)

(assert (=> b!2009745 (= e!1269815 (+ 1 (size!17248 (t!187320 lt!754211))))))

(assert (= (and d!613869 c!324681) b!2009744))

(assert (= (and d!613869 (not c!324681)) b!2009745))

(declare-fun m!2442451 () Bool)

(assert (=> b!2009745 m!2442451))

(assert (=> b!2008483 d!613869))

(assert (=> b!2008483 d!613521))

(declare-fun d!613871 () Bool)

(declare-fun lt!754614 () Int)

(assert (=> d!613871 (>= lt!754614 0)))

(declare-fun e!1269816 () Int)

(assert (=> d!613871 (= lt!754614 e!1269816)))

(declare-fun c!324682 () Bool)

(assert (=> d!613871 (= c!324682 ((_ is Nil!22061) (++!5953 lt!754030 lt!754023)))))

(assert (=> d!613871 (= (size!17248 (++!5953 lt!754030 lt!754023)) lt!754614)))

(declare-fun b!2009746 () Bool)

(assert (=> b!2009746 (= e!1269816 0)))

(declare-fun b!2009747 () Bool)

(assert (=> b!2009747 (= e!1269816 (+ 1 (size!17248 (t!187320 (++!5953 lt!754030 lt!754023)))))))

(assert (= (and d!613871 c!324682) b!2009746))

(assert (= (and d!613871 (not c!324682)) b!2009747))

(declare-fun m!2442453 () Bool)

(assert (=> b!2009747 m!2442453))

(assert (=> b!2008483 d!613871))

(declare-fun d!613873 () Bool)

(assert (=> d!613873 (= (inv!16 (value!124451 (h!27463 tokens!598))) (= (charsToInt!0 (text!29119 (value!124451 (h!27463 tokens!598)))) (value!124442 (value!124451 (h!27463 tokens!598)))))))

(declare-fun bs!419751 () Bool)

(assert (= bs!419751 d!613873))

(declare-fun m!2442455 () Bool)

(assert (=> bs!419751 m!2442455))

(assert (=> b!2008535 d!613873))

(declare-fun d!613875 () Bool)

(assert (=> d!613875 (= (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) (list!8983 (c!324302 (charsOf!2500 (h!27463 (t!187321 tokens!598))))))))

(declare-fun bs!419752 () Bool)

(assert (= bs!419752 d!613875))

(declare-fun m!2442457 () Bool)

(assert (=> bs!419752 m!2442457))

(assert (=> b!2008071 d!613875))

(declare-fun d!613877 () Bool)

(declare-fun lt!754615 () BalanceConc!14558)

(assert (=> d!613877 (= (list!8981 lt!754615) (originalCharacters!4767 (h!27463 (t!187321 tokens!598))))))

(assert (=> d!613877 (= lt!754615 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (value!124451 (h!27463 (t!187321 tokens!598)))))))

(assert (=> d!613877 (= (charsOf!2500 (h!27463 (t!187321 tokens!598))) lt!754615)))

(declare-fun b_lambda!67103 () Bool)

(assert (=> (not b_lambda!67103) (not d!613877)))

(assert (=> d!613877 t!187537))

(declare-fun b_and!158791 () Bool)

(assert (= b_and!158695 (and (=> t!187537 result!150426) b_and!158791)))

(assert (=> d!613877 t!187531))

(declare-fun b_and!158793 () Bool)

(assert (= b_and!158689 (and (=> t!187531 result!150420) b_and!158793)))

(assert (=> d!613877 t!187533))

(declare-fun b_and!158795 () Bool)

(assert (= b_and!158691 (and (=> t!187533 result!150422) b_and!158795)))

(assert (=> d!613877 t!187529))

(declare-fun b_and!158797 () Bool)

(assert (= b_and!158687 (and (=> t!187529 result!150418) b_and!158797)))

(assert (=> d!613877 t!187535))

(declare-fun b_and!158799 () Bool)

(assert (= b_and!158693 (and (=> t!187535 result!150424) b_and!158799)))

(declare-fun m!2442459 () Bool)

(assert (=> d!613877 m!2442459))

(assert (=> d!613877 m!2441521))

(assert (=> b!2008071 d!613877))

(declare-fun d!613879 () Bool)

(declare-fun res!881392 () Bool)

(declare-fun e!1269817 () Bool)

(assert (=> d!613879 (=> res!881392 e!1269817)))

(assert (=> d!613879 (= res!881392 ((_ is Nil!22062) tokens!598))))

(assert (=> d!613879 (= (forall!4686 tokens!598 lambda!76045) e!1269817)))

(declare-fun b!2009748 () Bool)

(declare-fun e!1269818 () Bool)

(assert (=> b!2009748 (= e!1269817 e!1269818)))

(declare-fun res!881393 () Bool)

(assert (=> b!2009748 (=> (not res!881393) (not e!1269818))))

(assert (=> b!2009748 (= res!881393 (dynLambda!10864 lambda!76045 (h!27463 tokens!598)))))

(declare-fun b!2009749 () Bool)

(assert (=> b!2009749 (= e!1269818 (forall!4686 (t!187321 tokens!598) lambda!76045))))

(assert (= (and d!613879 (not res!881392)) b!2009748))

(assert (= (and b!2009748 res!881393) b!2009749))

(declare-fun b_lambda!67105 () Bool)

(assert (=> (not b_lambda!67105) (not b!2009748)))

(declare-fun m!2442461 () Bool)

(assert (=> b!2009748 m!2442461))

(declare-fun m!2442463 () Bool)

(assert (=> b!2009749 m!2442463))

(assert (=> d!613161 d!613879))

(assert (=> d!613161 d!613191))

(declare-fun d!613881 () Bool)

(assert (=> d!613881 (= (nullable!1631 (regex!3960 lt!754033)) (nullableFct!378 (regex!3960 lt!754033)))))

(declare-fun bs!419753 () Bool)

(assert (= bs!419753 d!613881))

(declare-fun m!2442465 () Bool)

(assert (=> bs!419753 m!2442465))

(assert (=> b!2008500 d!613881))

(declare-fun d!613883 () Bool)

(assert (=> d!613883 (= (inv!29224 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))) (isBalanced!2295 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))))

(declare-fun bs!419754 () Bool)

(assert (= bs!419754 d!613883))

(declare-fun m!2442467 () Bool)

(assert (=> bs!419754 m!2442467))

(assert (=> tb!125337 d!613883))

(declare-fun b!2009750 () Bool)

(declare-fun res!881394 () Bool)

(declare-fun e!1269819 () Bool)

(assert (=> b!2009750 (=> res!881394 e!1269819)))

(assert (=> b!2009750 (= res!881394 (not ((_ is IntegerValue!12290) (value!124451 (h!27463 (t!187321 tokens!598))))))))

(declare-fun e!1269820 () Bool)

(assert (=> b!2009750 (= e!1269820 e!1269819)))

(declare-fun b!2009751 () Bool)

(assert (=> b!2009751 (= e!1269819 (inv!15 (value!124451 (h!27463 (t!187321 tokens!598)))))))

(declare-fun b!2009752 () Bool)

(declare-fun e!1269821 () Bool)

(assert (=> b!2009752 (= e!1269821 e!1269820)))

(declare-fun c!324683 () Bool)

(assert (=> b!2009752 (= c!324683 ((_ is IntegerValue!12289) (value!124451 (h!27463 (t!187321 tokens!598)))))))

(declare-fun b!2009753 () Bool)

(assert (=> b!2009753 (= e!1269821 (inv!16 (value!124451 (h!27463 (t!187321 tokens!598)))))))

(declare-fun d!613885 () Bool)

(declare-fun c!324684 () Bool)

(assert (=> d!613885 (= c!324684 ((_ is IntegerValue!12288) (value!124451 (h!27463 (t!187321 tokens!598)))))))

(assert (=> d!613885 (= (inv!21 (value!124451 (h!27463 (t!187321 tokens!598)))) e!1269821)))

(declare-fun b!2009754 () Bool)

(assert (=> b!2009754 (= e!1269820 (inv!17 (value!124451 (h!27463 (t!187321 tokens!598)))))))

(assert (= (and d!613885 c!324684) b!2009753))

(assert (= (and d!613885 (not c!324684)) b!2009752))

(assert (= (and b!2009752 c!324683) b!2009754))

(assert (= (and b!2009752 (not c!324683)) b!2009750))

(assert (= (and b!2009750 (not res!881394)) b!2009751))

(declare-fun m!2442469 () Bool)

(assert (=> b!2009751 m!2442469))

(declare-fun m!2442471 () Bool)

(assert (=> b!2009753 m!2442471))

(declare-fun m!2442473 () Bool)

(assert (=> b!2009754 m!2442473))

(assert (=> b!2008669 d!613885))

(declare-fun d!613887 () Bool)

(declare-fun res!881395 () Bool)

(declare-fun e!1269822 () Bool)

(assert (=> d!613887 (=> (not res!881395) (not e!1269822))))

(assert (=> d!613887 (= res!881395 (rulesValid!1474 thiss!23328 (t!187322 rules!3198)))))

(assert (=> d!613887 (= (rulesInvariant!3180 thiss!23328 (t!187322 rules!3198)) e!1269822)))

(declare-fun b!2009755 () Bool)

(assert (=> b!2009755 (= e!1269822 (noDuplicateTag!1472 thiss!23328 (t!187322 rules!3198) Nil!22065))))

(assert (= (and d!613887 res!881395) b!2009755))

(declare-fun m!2442475 () Bool)

(assert (=> d!613887 m!2442475))

(declare-fun m!2442477 () Bool)

(assert (=> b!2009755 m!2442477))

(assert (=> b!2008184 d!613887))

(declare-fun d!613889 () Bool)

(assert (=> d!613889 (rulesInvariant!3180 thiss!23328 (t!187322 rules!3198))))

(declare-fun lt!754618 () Unit!36620)

(declare-fun choose!12240 (LexerInterface!3573 Rule!7720 List!22145) Unit!36620)

(assert (=> d!613889 (= lt!754618 (choose!12240 thiss!23328 (h!27464 rules!3198) (t!187322 rules!3198)))))

(assert (=> d!613889 (rulesInvariant!3180 thiss!23328 (Cons!22063 (h!27464 rules!3198) (t!187322 rules!3198)))))

(assert (=> d!613889 (= (lemmaInvariantOnRulesThenOnTail!288 thiss!23328 (h!27464 rules!3198) (t!187322 rules!3198)) lt!754618)))

(declare-fun bs!419755 () Bool)

(assert (= bs!419755 d!613889))

(assert (=> bs!419755 m!2440361))

(declare-fun m!2442479 () Bool)

(assert (=> bs!419755 m!2442479))

(declare-fun m!2442481 () Bool)

(assert (=> bs!419755 m!2442481))

(assert (=> b!2008184 d!613889))

(declare-fun d!613891 () Bool)

(declare-fun e!1269823 () Bool)

(assert (=> d!613891 e!1269823))

(declare-fun res!881397 () Bool)

(assert (=> d!613891 (=> res!881397 e!1269823)))

(declare-fun lt!754620 () Option!4601)

(assert (=> d!613891 (= res!881397 (isEmpty!13682 lt!754620))))

(declare-fun e!1269826 () Option!4601)

(assert (=> d!613891 (= lt!754620 e!1269826)))

(declare-fun c!324685 () Bool)

(assert (=> d!613891 (= c!324685 (and ((_ is Cons!22063) (t!187322 rules!3198)) (= (tag!4424 (h!27464 (t!187322 rules!3198))) (tag!4424 (rule!6185 separatorToken!354)))))))

(assert (=> d!613891 (rulesInvariant!3180 thiss!23328 (t!187322 rules!3198))))

(assert (=> d!613891 (= (getRuleFromTag!775 thiss!23328 (t!187322 rules!3198) (tag!4424 (rule!6185 separatorToken!354))) lt!754620)))

(declare-fun b!2009756 () Bool)

(declare-fun e!1269824 () Option!4601)

(assert (=> b!2009756 (= e!1269824 None!4600)))

(declare-fun b!2009757 () Bool)

(declare-fun e!1269825 () Bool)

(assert (=> b!2009757 (= e!1269823 e!1269825)))

(declare-fun res!881396 () Bool)

(assert (=> b!2009757 (=> (not res!881396) (not e!1269825))))

(assert (=> b!2009757 (= res!881396 (contains!4032 (t!187322 rules!3198) (get!6972 lt!754620)))))

(declare-fun b!2009758 () Bool)

(declare-fun lt!754621 () Unit!36620)

(declare-fun lt!754619 () Unit!36620)

(assert (=> b!2009758 (= lt!754621 lt!754619)))

(assert (=> b!2009758 (rulesInvariant!3180 thiss!23328 (t!187322 (t!187322 rules!3198)))))

(assert (=> b!2009758 (= lt!754619 (lemmaInvariantOnRulesThenOnTail!288 thiss!23328 (h!27464 (t!187322 rules!3198)) (t!187322 (t!187322 rules!3198))))))

(assert (=> b!2009758 (= e!1269824 (getRuleFromTag!775 thiss!23328 (t!187322 (t!187322 rules!3198)) (tag!4424 (rule!6185 separatorToken!354))))))

(declare-fun b!2009759 () Bool)

(assert (=> b!2009759 (= e!1269826 e!1269824)))

(declare-fun c!324686 () Bool)

(assert (=> b!2009759 (= c!324686 (and ((_ is Cons!22063) (t!187322 rules!3198)) (not (= (tag!4424 (h!27464 (t!187322 rules!3198))) (tag!4424 (rule!6185 separatorToken!354))))))))

(declare-fun b!2009760 () Bool)

(assert (=> b!2009760 (= e!1269825 (= (tag!4424 (get!6972 lt!754620)) (tag!4424 (rule!6185 separatorToken!354))))))

(declare-fun b!2009761 () Bool)

(assert (=> b!2009761 (= e!1269826 (Some!4600 (h!27464 (t!187322 rules!3198))))))

(assert (= (and d!613891 c!324685) b!2009761))

(assert (= (and d!613891 (not c!324685)) b!2009759))

(assert (= (and b!2009759 c!324686) b!2009758))

(assert (= (and b!2009759 (not c!324686)) b!2009756))

(assert (= (and d!613891 (not res!881397)) b!2009757))

(assert (= (and b!2009757 res!881396) b!2009760))

(declare-fun m!2442483 () Bool)

(assert (=> d!613891 m!2442483))

(assert (=> d!613891 m!2440361))

(declare-fun m!2442485 () Bool)

(assert (=> b!2009757 m!2442485))

(assert (=> b!2009757 m!2442485))

(declare-fun m!2442487 () Bool)

(assert (=> b!2009757 m!2442487))

(declare-fun m!2442489 () Bool)

(assert (=> b!2009758 m!2442489))

(declare-fun m!2442491 () Bool)

(assert (=> b!2009758 m!2442491))

(declare-fun m!2442493 () Bool)

(assert (=> b!2009758 m!2442493))

(assert (=> b!2009760 m!2442485))

(assert (=> b!2008184 d!613891))

(declare-fun bs!419756 () Bool)

(declare-fun d!613893 () Bool)

(assert (= bs!419756 (and d!613893 d!613077)))

(declare-fun lambda!76077 () Int)

(assert (=> bs!419756 (= (and (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (= (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (= lambda!76077 lambda!76027))))

(assert (=> d!613893 true))

(assert (=> d!613893 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) (dynLambda!10854 order!14001 lambda!76077))))

(assert (=> d!613893 true))

(assert (=> d!613893 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354)))) (dynLambda!10854 order!14001 lambda!76077))))

(assert (=> d!613893 (= (semiInverseModEq!1587 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354)))) (Forall!1016 lambda!76077))))

(declare-fun bs!419757 () Bool)

(assert (= bs!419757 d!613893))

(declare-fun m!2442495 () Bool)

(assert (=> bs!419757 m!2442495))

(assert (=> d!613201 d!613893))

(declare-fun d!613895 () Bool)

(declare-fun res!881398 () Bool)

(declare-fun e!1269827 () Bool)

(assert (=> d!613895 (=> res!881398 e!1269827)))

(assert (=> d!613895 (= res!881398 (not ((_ is Cons!22063) (t!187322 rules!3198))))))

(assert (=> d!613895 (= (sepAndNonSepRulesDisjointChars!1058 rules!3198 (t!187322 rules!3198)) e!1269827)))

(declare-fun b!2009766 () Bool)

(declare-fun e!1269828 () Bool)

(assert (=> b!2009766 (= e!1269827 e!1269828)))

(declare-fun res!881399 () Bool)

(assert (=> b!2009766 (=> (not res!881399) (not e!1269828))))

(assert (=> b!2009766 (= res!881399 (ruleDisjointCharsFromAllFromOtherType!471 (h!27464 (t!187322 rules!3198)) rules!3198))))

(declare-fun b!2009767 () Bool)

(assert (=> b!2009767 (= e!1269828 (sepAndNonSepRulesDisjointChars!1058 rules!3198 (t!187322 (t!187322 rules!3198))))))

(assert (= (and d!613895 (not res!881398)) b!2009766))

(assert (= (and b!2009766 res!881399) b!2009767))

(declare-fun m!2442497 () Bool)

(assert (=> b!2009766 m!2442497))

(declare-fun m!2442499 () Bool)

(assert (=> b!2009767 m!2442499))

(assert (=> b!2008611 d!613895))

(declare-fun bs!419758 () Bool)

(declare-fun d!613897 () Bool)

(assert (= bs!419758 (and d!613897 d!613149)))

(declare-fun lambda!76078 () Int)

(assert (=> bs!419758 (= lambda!76078 lambda!76036)))

(declare-fun bs!419759 () Bool)

(assert (= bs!419759 (and d!613897 d!613535)))

(assert (=> bs!419759 (= (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354)))) (= lambda!76078 lambda!76062))))

(declare-fun bs!419760 () Bool)

(assert (= bs!419760 (and d!613897 d!613765)))

(assert (=> bs!419760 (= (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (= lambda!76078 lambda!76072))))

(assert (=> d!613897 true))

(assert (=> d!613897 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (dynLambda!10862 order!14007 lambda!76078))))

(assert (=> d!613897 (= (equivClasses!1514 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (Forall2!641 lambda!76078))))

(declare-fun bs!419761 () Bool)

(assert (= bs!419761 d!613897))

(declare-fun m!2442501 () Bool)

(assert (=> bs!419761 m!2442501))

(assert (=> b!2008407 d!613897))

(declare-fun b!2009768 () Bool)

(declare-fun e!1269829 () List!22143)

(assert (=> b!2009768 (= e!1269829 Nil!22061)))

(declare-fun b!2009770 () Bool)

(declare-fun e!1269830 () List!22143)

(assert (=> b!2009770 (= e!1269830 (list!8987 (xs!10269 (c!324302 (charsOf!2500 separatorToken!354)))))))

(declare-fun b!2009769 () Bool)

(assert (=> b!2009769 (= e!1269829 e!1269830)))

(declare-fun c!324688 () Bool)

(assert (=> b!2009769 (= c!324688 ((_ is Leaf!10814) (c!324302 (charsOf!2500 separatorToken!354))))))

(declare-fun d!613899 () Bool)

(declare-fun c!324687 () Bool)

(assert (=> d!613899 (= c!324687 ((_ is Empty!7371) (c!324302 (charsOf!2500 separatorToken!354))))))

(assert (=> d!613899 (= (list!8983 (c!324302 (charsOf!2500 separatorToken!354))) e!1269829)))

(declare-fun b!2009771 () Bool)

(assert (=> b!2009771 (= e!1269830 (++!5953 (list!8983 (left!17553 (c!324302 (charsOf!2500 separatorToken!354)))) (list!8983 (right!17883 (c!324302 (charsOf!2500 separatorToken!354))))))))

(assert (= (and d!613899 c!324687) b!2009768))

(assert (= (and d!613899 (not c!324687)) b!2009769))

(assert (= (and b!2009769 c!324688) b!2009770))

(assert (= (and b!2009769 (not c!324688)) b!2009771))

(declare-fun m!2442503 () Bool)

(assert (=> b!2009770 m!2442503))

(declare-fun m!2442505 () Bool)

(assert (=> b!2009771 m!2442505))

(declare-fun m!2442507 () Bool)

(assert (=> b!2009771 m!2442507))

(assert (=> b!2009771 m!2442505))

(assert (=> b!2009771 m!2442507))

(declare-fun m!2442509 () Bool)

(assert (=> b!2009771 m!2442509))

(assert (=> d!613109 d!613899))

(declare-fun d!613901 () Bool)

(declare-fun c!324689 () Bool)

(assert (=> d!613901 (= c!324689 ((_ is Nil!22061) lt!754202))))

(declare-fun e!1269831 () (InoxSet C!10916))

(assert (=> d!613901 (= (content!3231 lt!754202) e!1269831)))

(declare-fun b!2009772 () Bool)

(assert (=> b!2009772 (= e!1269831 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009773 () Bool)

(assert (=> b!2009773 (= e!1269831 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 lt!754202) true) (content!3231 (t!187320 lt!754202))))))

(assert (= (and d!613901 c!324689) b!2009772))

(assert (= (and d!613901 (not c!324689)) b!2009773))

(declare-fun m!2442511 () Bool)

(assert (=> b!2009773 m!2442511))

(declare-fun m!2442513 () Bool)

(assert (=> b!2009773 m!2442513))

(assert (=> d!613209 d!613901))

(assert (=> d!613209 d!613693))

(assert (=> d!613209 d!613475))

(declare-fun b!2009776 () Bool)

(declare-fun res!881400 () Bool)

(declare-fun e!1269833 () Bool)

(assert (=> b!2009776 (=> (not res!881400) (not e!1269833))))

(declare-fun lt!754622 () List!22143)

(assert (=> b!2009776 (= res!881400 (= (size!17248 lt!754622) (+ (size!17248 e!1268808) (size!17248 (ite c!324333 lt!754076 call!122771)))))))

(declare-fun b!2009777 () Bool)

(assert (=> b!2009777 (= e!1269833 (or (not (= (ite c!324333 lt!754076 call!122771) Nil!22061)) (= lt!754622 e!1268808)))))

(declare-fun d!613903 () Bool)

(assert (=> d!613903 e!1269833))

(declare-fun res!881401 () Bool)

(assert (=> d!613903 (=> (not res!881401) (not e!1269833))))

(assert (=> d!613903 (= res!881401 (= (content!3231 lt!754622) ((_ map or) (content!3231 e!1268808) (content!3231 (ite c!324333 lt!754076 call!122771)))))))

(declare-fun e!1269832 () List!22143)

(assert (=> d!613903 (= lt!754622 e!1269832)))

(declare-fun c!324690 () Bool)

(assert (=> d!613903 (= c!324690 ((_ is Nil!22061) e!1268808))))

(assert (=> d!613903 (= (++!5953 e!1268808 (ite c!324333 lt!754076 call!122771)) lt!754622)))

(declare-fun b!2009775 () Bool)

(assert (=> b!2009775 (= e!1269832 (Cons!22061 (h!27462 e!1268808) (++!5953 (t!187320 e!1268808) (ite c!324333 lt!754076 call!122771))))))

(declare-fun b!2009774 () Bool)

(assert (=> b!2009774 (= e!1269832 (ite c!324333 lt!754076 call!122771))))

(assert (= (and d!613903 c!324690) b!2009774))

(assert (= (and d!613903 (not c!324690)) b!2009775))

(assert (= (and d!613903 res!881401) b!2009776))

(assert (= (and b!2009776 res!881400) b!2009777))

(declare-fun m!2442515 () Bool)

(assert (=> b!2009776 m!2442515))

(declare-fun m!2442517 () Bool)

(assert (=> b!2009776 m!2442517))

(declare-fun m!2442519 () Bool)

(assert (=> b!2009776 m!2442519))

(declare-fun m!2442521 () Bool)

(assert (=> d!613903 m!2442521))

(declare-fun m!2442523 () Bool)

(assert (=> d!613903 m!2442523))

(declare-fun m!2442525 () Bool)

(assert (=> d!613903 m!2442525))

(declare-fun m!2442527 () Bool)

(assert (=> b!2009775 m!2442527))

(assert (=> bm!122764 d!613903))

(declare-fun d!613905 () Bool)

(declare-fun c!324691 () Bool)

(assert (=> d!613905 (= c!324691 ((_ is Node!7371) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))))

(declare-fun e!1269834 () Bool)

(assert (=> d!613905 (= (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))) e!1269834)))

(declare-fun b!2009778 () Bool)

(assert (=> b!2009778 (= e!1269834 (inv!29227 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))))

(declare-fun b!2009779 () Bool)

(declare-fun e!1269835 () Bool)

(assert (=> b!2009779 (= e!1269834 e!1269835)))

(declare-fun res!881402 () Bool)

(assert (=> b!2009779 (= res!881402 (not ((_ is Leaf!10814) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))))))))

(assert (=> b!2009779 (=> res!881402 e!1269835)))

(declare-fun b!2009780 () Bool)

(assert (=> b!2009780 (= e!1269835 (inv!29228 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))))))

(assert (= (and d!613905 c!324691) b!2009778))

(assert (= (and d!613905 (not c!324691)) b!2009779))

(assert (= (and b!2009779 (not res!881402)) b!2009780))

(declare-fun m!2442529 () Bool)

(assert (=> b!2009778 m!2442529))

(declare-fun m!2442531 () Bool)

(assert (=> b!2009780 m!2442531))

(assert (=> b!2008031 d!613905))

(declare-fun b!2009781 () Bool)

(declare-fun e!1269839 () Bool)

(assert (=> b!2009781 (= e!1269839 (= (head!4536 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))) (c!324301 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))))))

(declare-fun b!2009782 () Bool)

(declare-fun e!1269840 () Bool)

(declare-fun lt!754623 () Bool)

(assert (=> b!2009782 (= e!1269840 (not lt!754623))))

(declare-fun b!2009783 () Bool)

(declare-fun res!881405 () Bool)

(declare-fun e!1269842 () Bool)

(assert (=> b!2009783 (=> res!881405 e!1269842)))

(assert (=> b!2009783 (= res!881405 (not ((_ is ElementMatch!5385) (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))))))

(assert (=> b!2009783 (= e!1269840 e!1269842)))

(declare-fun d!613907 () Bool)

(declare-fun e!1269837 () Bool)

(assert (=> d!613907 e!1269837))

(declare-fun c!324694 () Bool)

(assert (=> d!613907 (= c!324694 ((_ is EmptyExpr!5385) (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))))))

(declare-fun e!1269836 () Bool)

(assert (=> d!613907 (= lt!754623 e!1269836)))

(declare-fun c!324692 () Bool)

(assert (=> d!613907 (= c!324692 (isEmpty!13686 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))))))

(assert (=> d!613907 (validRegex!2157 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))))

(assert (=> d!613907 (= (matchR!2651 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))) lt!754623)))

(declare-fun b!2009784 () Bool)

(declare-fun res!881409 () Bool)

(assert (=> b!2009784 (=> (not res!881409) (not e!1269839))))

(assert (=> b!2009784 (= res!881409 (isEmpty!13686 (tail!3022 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126)))))))))

(declare-fun b!2009785 () Bool)

(declare-fun res!881408 () Bool)

(declare-fun e!1269841 () Bool)

(assert (=> b!2009785 (=> res!881408 e!1269841)))

(assert (=> b!2009785 (= res!881408 (not (isEmpty!13686 (tail!3022 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))))))))

(declare-fun b!2009786 () Bool)

(declare-fun res!881404 () Bool)

(assert (=> b!2009786 (=> res!881404 e!1269842)))

(assert (=> b!2009786 (= res!881404 e!1269839)))

(declare-fun res!881406 () Bool)

(assert (=> b!2009786 (=> (not res!881406) (not e!1269839))))

(assert (=> b!2009786 (= res!881406 lt!754623)))

(declare-fun b!2009787 () Bool)

(assert (=> b!2009787 (= e!1269836 (matchR!2651 (derivativeStep!1390 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))) (head!4536 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126)))))) (tail!3022 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126)))))))))

(declare-fun b!2009788 () Bool)

(declare-fun e!1269838 () Bool)

(assert (=> b!2009788 (= e!1269842 e!1269838)))

(declare-fun res!881410 () Bool)

(assert (=> b!2009788 (=> (not res!881410) (not e!1269838))))

(assert (=> b!2009788 (= res!881410 (not lt!754623))))

(declare-fun b!2009789 () Bool)

(assert (=> b!2009789 (= e!1269838 e!1269841)))

(declare-fun res!881407 () Bool)

(assert (=> b!2009789 (=> res!881407 e!1269841)))

(declare-fun call!122921 () Bool)

(assert (=> b!2009789 (= res!881407 call!122921)))

(declare-fun b!2009790 () Bool)

(assert (=> b!2009790 (= e!1269837 e!1269840)))

(declare-fun c!324693 () Bool)

(assert (=> b!2009790 (= c!324693 ((_ is EmptyLang!5385) (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))))))

(declare-fun b!2009791 () Bool)

(declare-fun res!881403 () Bool)

(assert (=> b!2009791 (=> (not res!881403) (not e!1269839))))

(assert (=> b!2009791 (= res!881403 (not call!122921))))

(declare-fun b!2009792 () Bool)

(assert (=> b!2009792 (= e!1269841 (not (= (head!4536 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))) (c!324301 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))))))))

(declare-fun bm!122916 () Bool)

(assert (=> bm!122916 (= call!122921 (isEmpty!13686 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))))))

(declare-fun b!2009793 () Bool)

(assert (=> b!2009793 (= e!1269837 (= lt!754623 call!122921))))

(declare-fun b!2009794 () Bool)

(assert (=> b!2009794 (= e!1269836 (nullable!1631 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754126))))))))

(assert (= (and d!613907 c!324692) b!2009794))

(assert (= (and d!613907 (not c!324692)) b!2009787))

(assert (= (and d!613907 c!324694) b!2009793))

(assert (= (and d!613907 (not c!324694)) b!2009790))

(assert (= (and b!2009790 c!324693) b!2009782))

(assert (= (and b!2009790 (not c!324693)) b!2009783))

(assert (= (and b!2009783 (not res!881405)) b!2009786))

(assert (= (and b!2009786 res!881406) b!2009791))

(assert (= (and b!2009791 res!881403) b!2009784))

(assert (= (and b!2009784 res!881409) b!2009781))

(assert (= (and b!2009786 (not res!881404)) b!2009788))

(assert (= (and b!2009788 res!881410) b!2009789))

(assert (= (and b!2009789 (not res!881407)) b!2009785))

(assert (= (and b!2009785 (not res!881408)) b!2009792))

(assert (= (or b!2009793 b!2009789 b!2009791) bm!122916))

(assert (=> b!2009787 m!2440317))

(declare-fun m!2442533 () Bool)

(assert (=> b!2009787 m!2442533))

(assert (=> b!2009787 m!2442533))

(declare-fun m!2442535 () Bool)

(assert (=> b!2009787 m!2442535))

(assert (=> b!2009787 m!2440317))

(declare-fun m!2442537 () Bool)

(assert (=> b!2009787 m!2442537))

(assert (=> b!2009787 m!2442535))

(assert (=> b!2009787 m!2442537))

(declare-fun m!2442539 () Bool)

(assert (=> b!2009787 m!2442539))

(assert (=> b!2009781 m!2440317))

(assert (=> b!2009781 m!2442533))

(declare-fun m!2442541 () Bool)

(assert (=> b!2009794 m!2442541))

(assert (=> d!613907 m!2440317))

(declare-fun m!2442543 () Bool)

(assert (=> d!613907 m!2442543))

(declare-fun m!2442545 () Bool)

(assert (=> d!613907 m!2442545))

(assert (=> bm!122916 m!2440317))

(assert (=> bm!122916 m!2442543))

(assert (=> b!2009792 m!2440317))

(assert (=> b!2009792 m!2442533))

(assert (=> b!2009785 m!2440317))

(assert (=> b!2009785 m!2442537))

(assert (=> b!2009785 m!2442537))

(declare-fun m!2442547 () Bool)

(assert (=> b!2009785 m!2442547))

(assert (=> b!2009784 m!2440317))

(assert (=> b!2009784 m!2442537))

(assert (=> b!2009784 m!2442537))

(assert (=> b!2009784 m!2442547))

(assert (=> b!2008168 d!613907))

(assert (=> b!2008168 d!613341))

(assert (=> b!2008168 d!613467))

(assert (=> b!2008168 d!613469))

(assert (=> b!2008402 d!613223))

(declare-fun d!613909 () Bool)

(assert (=> d!613909 (= (list!8981 lt!754143) (list!8983 (c!324302 lt!754143)))))

(declare-fun bs!419762 () Bool)

(assert (= bs!419762 d!613909))

(declare-fun m!2442549 () Bool)

(assert (=> bs!419762 m!2442549))

(assert (=> d!613137 d!613909))

(assert (=> b!2008230 d!613887))

(assert (=> b!2008230 d!613889))

(declare-fun d!613911 () Bool)

(declare-fun e!1269843 () Bool)

(assert (=> d!613911 e!1269843))

(declare-fun res!881412 () Bool)

(assert (=> d!613911 (=> res!881412 e!1269843)))

(declare-fun lt!754625 () Option!4601)

(assert (=> d!613911 (= res!881412 (isEmpty!13682 lt!754625))))

(declare-fun e!1269846 () Option!4601)

(assert (=> d!613911 (= lt!754625 e!1269846)))

(declare-fun c!324695 () Bool)

(assert (=> d!613911 (= c!324695 (and ((_ is Cons!22063) (t!187322 rules!3198)) (= (tag!4424 (h!27464 (t!187322 rules!3198))) (tag!4424 (rule!6185 (h!27463 tokens!598))))))))

(assert (=> d!613911 (rulesInvariant!3180 thiss!23328 (t!187322 rules!3198))))

(assert (=> d!613911 (= (getRuleFromTag!775 thiss!23328 (t!187322 rules!3198) (tag!4424 (rule!6185 (h!27463 tokens!598)))) lt!754625)))

(declare-fun b!2009795 () Bool)

(declare-fun e!1269844 () Option!4601)

(assert (=> b!2009795 (= e!1269844 None!4600)))

(declare-fun b!2009796 () Bool)

(declare-fun e!1269845 () Bool)

(assert (=> b!2009796 (= e!1269843 e!1269845)))

(declare-fun res!881411 () Bool)

(assert (=> b!2009796 (=> (not res!881411) (not e!1269845))))

(assert (=> b!2009796 (= res!881411 (contains!4032 (t!187322 rules!3198) (get!6972 lt!754625)))))

(declare-fun b!2009797 () Bool)

(declare-fun lt!754626 () Unit!36620)

(declare-fun lt!754624 () Unit!36620)

(assert (=> b!2009797 (= lt!754626 lt!754624)))

(assert (=> b!2009797 (rulesInvariant!3180 thiss!23328 (t!187322 (t!187322 rules!3198)))))

(assert (=> b!2009797 (= lt!754624 (lemmaInvariantOnRulesThenOnTail!288 thiss!23328 (h!27464 (t!187322 rules!3198)) (t!187322 (t!187322 rules!3198))))))

(assert (=> b!2009797 (= e!1269844 (getRuleFromTag!775 thiss!23328 (t!187322 (t!187322 rules!3198)) (tag!4424 (rule!6185 (h!27463 tokens!598)))))))

(declare-fun b!2009798 () Bool)

(assert (=> b!2009798 (= e!1269846 e!1269844)))

(declare-fun c!324696 () Bool)

(assert (=> b!2009798 (= c!324696 (and ((_ is Cons!22063) (t!187322 rules!3198)) (not (= (tag!4424 (h!27464 (t!187322 rules!3198))) (tag!4424 (rule!6185 (h!27463 tokens!598)))))))))

(declare-fun b!2009799 () Bool)

(assert (=> b!2009799 (= e!1269845 (= (tag!4424 (get!6972 lt!754625)) (tag!4424 (rule!6185 (h!27463 tokens!598)))))))

(declare-fun b!2009800 () Bool)

(assert (=> b!2009800 (= e!1269846 (Some!4600 (h!27464 (t!187322 rules!3198))))))

(assert (= (and d!613911 c!324695) b!2009800))

(assert (= (and d!613911 (not c!324695)) b!2009798))

(assert (= (and b!2009798 c!324696) b!2009797))

(assert (= (and b!2009798 (not c!324696)) b!2009795))

(assert (= (and d!613911 (not res!881412)) b!2009796))

(assert (= (and b!2009796 res!881411) b!2009799))

(declare-fun m!2442551 () Bool)

(assert (=> d!613911 m!2442551))

(assert (=> d!613911 m!2440361))

(declare-fun m!2442553 () Bool)

(assert (=> b!2009796 m!2442553))

(assert (=> b!2009796 m!2442553))

(declare-fun m!2442555 () Bool)

(assert (=> b!2009796 m!2442555))

(assert (=> b!2009797 m!2442489))

(assert (=> b!2009797 m!2442491))

(declare-fun m!2442557 () Bool)

(assert (=> b!2009797 m!2442557))

(assert (=> b!2009799 m!2442553))

(assert (=> b!2008230 d!613911))

(declare-fun d!613913 () Bool)

(declare-fun lt!754627 () Bool)

(assert (=> d!613913 (= lt!754627 (select (content!3233 rules!3198) (rule!6185 (_1!11834 (get!6973 lt!754126)))))))

(declare-fun e!1269847 () Bool)

(assert (=> d!613913 (= lt!754627 e!1269847)))

(declare-fun res!881414 () Bool)

(assert (=> d!613913 (=> (not res!881414) (not e!1269847))))

(assert (=> d!613913 (= res!881414 ((_ is Cons!22063) rules!3198))))

(assert (=> d!613913 (= (contains!4032 rules!3198 (rule!6185 (_1!11834 (get!6973 lt!754126)))) lt!754627)))

(declare-fun b!2009801 () Bool)

(declare-fun e!1269848 () Bool)

(assert (=> b!2009801 (= e!1269847 e!1269848)))

(declare-fun res!881413 () Bool)

(assert (=> b!2009801 (=> res!881413 e!1269848)))

(assert (=> b!2009801 (= res!881413 (= (h!27464 rules!3198) (rule!6185 (_1!11834 (get!6973 lt!754126)))))))

(declare-fun b!2009802 () Bool)

(assert (=> b!2009802 (= e!1269848 (contains!4032 (t!187322 rules!3198) (rule!6185 (_1!11834 (get!6973 lt!754126)))))))

(assert (= (and d!613913 res!881414) b!2009801))

(assert (= (and b!2009801 (not res!881413)) b!2009802))

(assert (=> d!613913 m!2441509))

(declare-fun m!2442559 () Bool)

(assert (=> d!613913 m!2442559))

(declare-fun m!2442561 () Bool)

(assert (=> b!2009802 m!2442561))

(assert (=> b!2008160 d!613913))

(assert (=> b!2008160 d!613341))

(declare-fun b!2009805 () Bool)

(declare-fun res!881415 () Bool)

(declare-fun e!1269850 () Bool)

(assert (=> b!2009805 (=> (not res!881415) (not e!1269850))))

(declare-fun lt!754628 () List!22143)

(assert (=> b!2009805 (= res!881415 (= (size!17248 lt!754628) (+ (size!17248 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))) (size!17248 (_2!11834 (get!6973 lt!754144))))))))

(declare-fun b!2009806 () Bool)

(assert (=> b!2009806 (= e!1269850 (or (not (= (_2!11834 (get!6973 lt!754144)) Nil!22061)) (= lt!754628 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144)))))))))

(declare-fun d!613915 () Bool)

(assert (=> d!613915 e!1269850))

(declare-fun res!881416 () Bool)

(assert (=> d!613915 (=> (not res!881416) (not e!1269850))))

(assert (=> d!613915 (= res!881416 (= (content!3231 lt!754628) ((_ map or) (content!3231 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))) (content!3231 (_2!11834 (get!6973 lt!754144))))))))

(declare-fun e!1269849 () List!22143)

(assert (=> d!613915 (= lt!754628 e!1269849)))

(declare-fun c!324697 () Bool)

(assert (=> d!613915 (= c!324697 ((_ is Nil!22061) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))))))

(assert (=> d!613915 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144)))) (_2!11834 (get!6973 lt!754144))) lt!754628)))

(declare-fun b!2009804 () Bool)

(assert (=> b!2009804 (= e!1269849 (Cons!22061 (h!27462 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))) (++!5953 (t!187320 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))) (_2!11834 (get!6973 lt!754144)))))))

(declare-fun b!2009803 () Bool)

(assert (=> b!2009803 (= e!1269849 (_2!11834 (get!6973 lt!754144)))))

(assert (= (and d!613915 c!324697) b!2009803))

(assert (= (and d!613915 (not c!324697)) b!2009804))

(assert (= (and d!613915 res!881416) b!2009805))

(assert (= (and b!2009805 res!881415) b!2009806))

(declare-fun m!2442563 () Bool)

(assert (=> b!2009805 m!2442563))

(assert (=> b!2009805 m!2440385))

(declare-fun m!2442565 () Bool)

(assert (=> b!2009805 m!2442565))

(assert (=> b!2009805 m!2440405))

(declare-fun m!2442567 () Bool)

(assert (=> d!613915 m!2442567))

(assert (=> d!613915 m!2440385))

(declare-fun m!2442569 () Bool)

(assert (=> d!613915 m!2442569))

(declare-fun m!2442571 () Bool)

(assert (=> d!613915 m!2442571))

(declare-fun m!2442573 () Bool)

(assert (=> b!2009804 m!2442573))

(assert (=> b!2008193 d!613915))

(assert (=> b!2008193 d!613499))

(assert (=> b!2008193 d!613501))

(assert (=> b!2008193 d!613441))

(declare-fun d!613917 () Bool)

(declare-fun dynLambda!10866 (Int BalanceConc!14558 BalanceConc!14558) Bool)

(assert (=> d!613917 (dynLambda!10866 lambda!76036 lt!754026 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))

(declare-fun lt!754631 () Unit!36620)

(declare-fun choose!12241 (Int BalanceConc!14558 BalanceConc!14558) Unit!36620)

(assert (=> d!613917 (= lt!754631 (choose!12241 lambda!76036 lt!754026 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))))))

(assert (=> d!613917 (Forall2!641 lambda!76036)))

(assert (=> d!613917 (= (Forall2of!223 lambda!76036 lt!754026 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))) lt!754631)))

(declare-fun b_lambda!67107 () Bool)

(assert (=> (not b_lambda!67107) (not d!613917)))

(declare-fun bs!419763 () Bool)

(assert (= bs!419763 d!613917))

(assert (=> bs!419763 m!2440005))

(declare-fun m!2442575 () Bool)

(assert (=> bs!419763 m!2442575))

(assert (=> bs!419763 m!2440005))

(declare-fun m!2442577 () Bool)

(assert (=> bs!419763 m!2442577))

(declare-fun m!2442579 () Bool)

(assert (=> bs!419763 m!2442579))

(assert (=> d!613149 d!613917))

(assert (=> d!613149 d!613139))

(declare-fun d!613919 () Bool)

(assert (=> d!613919 (= (list!8981 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))) (list!8983 (c!324302 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))))

(declare-fun bs!419764 () Bool)

(assert (= bs!419764 d!613919))

(declare-fun m!2442581 () Bool)

(assert (=> bs!419764 m!2442581))

(assert (=> d!613149 d!613919))

(declare-fun d!613921 () Bool)

(declare-fun lt!754632 () Int)

(assert (=> d!613921 (>= lt!754632 0)))

(declare-fun e!1269851 () Int)

(assert (=> d!613921 (= lt!754632 e!1269851)))

(declare-fun c!324698 () Bool)

(assert (=> d!613921 (= c!324698 ((_ is Nil!22061) lt!754161))))

(assert (=> d!613921 (= (size!17248 lt!754161) lt!754632)))

(declare-fun b!2009808 () Bool)

(assert (=> b!2009808 (= e!1269851 0)))

(declare-fun b!2009809 () Bool)

(assert (=> b!2009809 (= e!1269851 (+ 1 (size!17248 (t!187320 lt!754161))))))

(assert (= (and d!613921 c!324698) b!2009808))

(assert (= (and d!613921 (not c!324698)) b!2009809))

(declare-fun m!2442583 () Bool)

(assert (=> b!2009809 m!2442583))

(assert (=> b!2008226 d!613921))

(assert (=> b!2008226 d!613521))

(assert (=> b!2008226 d!613493))

(declare-fun d!613923 () Bool)

(declare-fun lt!754633 () Int)

(assert (=> d!613923 (>= lt!754633 0)))

(declare-fun e!1269852 () Int)

(assert (=> d!613923 (= lt!754633 e!1269852)))

(declare-fun c!324699 () Bool)

(assert (=> d!613923 (= c!324699 ((_ is Nil!22061) (originalCharacters!4767 (h!27463 tokens!598))))))

(assert (=> d!613923 (= (size!17248 (originalCharacters!4767 (h!27463 tokens!598))) lt!754633)))

(declare-fun b!2009810 () Bool)

(assert (=> b!2009810 (= e!1269852 0)))

(declare-fun b!2009811 () Bool)

(assert (=> b!2009811 (= e!1269852 (+ 1 (size!17248 (t!187320 (originalCharacters!4767 (h!27463 tokens!598))))))))

(assert (= (and d!613923 c!324699) b!2009810))

(assert (= (and d!613923 (not c!324699)) b!2009811))

(declare-fun m!2442585 () Bool)

(assert (=> b!2009811 m!2442585))

(assert (=> b!2008270 d!613923))

(declare-fun d!613925 () Bool)

(assert (=> d!613925 (= (list!8981 (ite c!324333 call!122768 call!122770)) (list!8983 (c!324302 (ite c!324333 call!122768 call!122770))))))

(declare-fun bs!419765 () Bool)

(assert (= bs!419765 d!613925))

(declare-fun m!2442587 () Bool)

(assert (=> bs!419765 m!2442587))

(assert (=> bm!122762 d!613925))

(declare-fun b!2009814 () Bool)

(declare-fun res!881417 () Bool)

(declare-fun e!1269854 () Bool)

(assert (=> b!2009814 (=> (not res!881417) (not e!1269854))))

(declare-fun lt!754634 () List!22143)

(assert (=> b!2009814 (= res!881417 (= (size!17248 lt!754634) (+ (size!17248 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))) (size!17248 (_2!11834 (get!6973 lt!754126))))))))

(declare-fun b!2009815 () Bool)

(assert (=> b!2009815 (= e!1269854 (or (not (= (_2!11834 (get!6973 lt!754126)) Nil!22061)) (= lt!754634 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126)))))))))

(declare-fun d!613927 () Bool)

(assert (=> d!613927 e!1269854))

(declare-fun res!881418 () Bool)

(assert (=> d!613927 (=> (not res!881418) (not e!1269854))))

(assert (=> d!613927 (= res!881418 (= (content!3231 lt!754634) ((_ map or) (content!3231 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))) (content!3231 (_2!11834 (get!6973 lt!754126))))))))

(declare-fun e!1269853 () List!22143)

(assert (=> d!613927 (= lt!754634 e!1269853)))

(declare-fun c!324700 () Bool)

(assert (=> d!613927 (= c!324700 ((_ is Nil!22061) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))))))

(assert (=> d!613927 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126)))) (_2!11834 (get!6973 lt!754126))) lt!754634)))

(declare-fun b!2009813 () Bool)

(assert (=> b!2009813 (= e!1269853 (Cons!22061 (h!27462 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))) (++!5953 (t!187320 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754126))))) (_2!11834 (get!6973 lt!754126)))))))

(declare-fun b!2009812 () Bool)

(assert (=> b!2009812 (= e!1269853 (_2!11834 (get!6973 lt!754126)))))

(assert (= (and d!613927 c!324700) b!2009812))

(assert (= (and d!613927 (not c!324700)) b!2009813))

(assert (= (and d!613927 res!881418) b!2009814))

(assert (= (and b!2009814 res!881417) b!2009815))

(declare-fun m!2442589 () Bool)

(assert (=> b!2009814 m!2442589))

(assert (=> b!2009814 m!2440317))

(declare-fun m!2442591 () Bool)

(assert (=> b!2009814 m!2442591))

(assert (=> b!2009814 m!2440339))

(declare-fun m!2442593 () Bool)

(assert (=> d!613927 m!2442593))

(assert (=> d!613927 m!2440317))

(declare-fun m!2442595 () Bool)

(assert (=> d!613927 m!2442595))

(declare-fun m!2442597 () Bool)

(assert (=> d!613927 m!2442597))

(declare-fun m!2442599 () Bool)

(assert (=> b!2009813 m!2442599))

(assert (=> b!2008164 d!613927))

(assert (=> b!2008164 d!613467))

(assert (=> b!2008164 d!613469))

(assert (=> b!2008164 d!613341))

(declare-fun b!2009816 () Bool)

(declare-fun e!1269858 () Bool)

(assert (=> b!2009816 (= e!1269858 (= (head!4536 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))) (c!324301 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))))))

(declare-fun b!2009817 () Bool)

(declare-fun e!1269859 () Bool)

(declare-fun lt!754635 () Bool)

(assert (=> b!2009817 (= e!1269859 (not lt!754635))))

(declare-fun b!2009818 () Bool)

(declare-fun res!881421 () Bool)

(declare-fun e!1269861 () Bool)

(assert (=> b!2009818 (=> res!881421 e!1269861)))

(assert (=> b!2009818 (= res!881421 (not ((_ is ElementMatch!5385) (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))))))

(assert (=> b!2009818 (= e!1269859 e!1269861)))

(declare-fun d!613929 () Bool)

(declare-fun e!1269856 () Bool)

(assert (=> d!613929 e!1269856))

(declare-fun c!324703 () Bool)

(assert (=> d!613929 (= c!324703 ((_ is EmptyExpr!5385) (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))))))

(declare-fun e!1269855 () Bool)

(assert (=> d!613929 (= lt!754635 e!1269855)))

(declare-fun c!324701 () Bool)

(assert (=> d!613929 (= c!324701 (isEmpty!13686 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))))))

(assert (=> d!613929 (validRegex!2157 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))))

(assert (=> d!613929 (= (matchR!2651 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))) lt!754635)))

(declare-fun b!2009819 () Bool)

(declare-fun res!881425 () Bool)

(assert (=> b!2009819 (=> (not res!881425) (not e!1269858))))

(assert (=> b!2009819 (= res!881425 (isEmpty!13686 (tail!3022 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144)))))))))

(declare-fun b!2009820 () Bool)

(declare-fun res!881424 () Bool)

(declare-fun e!1269860 () Bool)

(assert (=> b!2009820 (=> res!881424 e!1269860)))

(assert (=> b!2009820 (= res!881424 (not (isEmpty!13686 (tail!3022 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))))))))

(declare-fun b!2009821 () Bool)

(declare-fun res!881420 () Bool)

(assert (=> b!2009821 (=> res!881420 e!1269861)))

(assert (=> b!2009821 (= res!881420 e!1269858)))

(declare-fun res!881422 () Bool)

(assert (=> b!2009821 (=> (not res!881422) (not e!1269858))))

(assert (=> b!2009821 (= res!881422 lt!754635)))

(declare-fun b!2009822 () Bool)

(assert (=> b!2009822 (= e!1269855 (matchR!2651 (derivativeStep!1390 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))) (head!4536 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144)))))) (tail!3022 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144)))))))))

(declare-fun b!2009823 () Bool)

(declare-fun e!1269857 () Bool)

(assert (=> b!2009823 (= e!1269861 e!1269857)))

(declare-fun res!881426 () Bool)

(assert (=> b!2009823 (=> (not res!881426) (not e!1269857))))

(assert (=> b!2009823 (= res!881426 (not lt!754635))))

(declare-fun b!2009824 () Bool)

(assert (=> b!2009824 (= e!1269857 e!1269860)))

(declare-fun res!881423 () Bool)

(assert (=> b!2009824 (=> res!881423 e!1269860)))

(declare-fun call!122922 () Bool)

(assert (=> b!2009824 (= res!881423 call!122922)))

(declare-fun b!2009825 () Bool)

(assert (=> b!2009825 (= e!1269856 e!1269859)))

(declare-fun c!324702 () Bool)

(assert (=> b!2009825 (= c!324702 ((_ is EmptyLang!5385) (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))))))

(declare-fun b!2009826 () Bool)

(declare-fun res!881419 () Bool)

(assert (=> b!2009826 (=> (not res!881419) (not e!1269858))))

(assert (=> b!2009826 (= res!881419 (not call!122922))))

(declare-fun b!2009827 () Bool)

(assert (=> b!2009827 (= e!1269860 (not (= (head!4536 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))) (c!324301 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))))))))

(declare-fun bm!122917 () Bool)

(assert (=> bm!122917 (= call!122922 (isEmpty!13686 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754144))))))))

(declare-fun b!2009828 () Bool)

(assert (=> b!2009828 (= e!1269856 (= lt!754635 call!122922))))

(declare-fun b!2009829 () Bool)

(assert (=> b!2009829 (= e!1269855 (nullable!1631 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754144))))))))

(assert (= (and d!613929 c!324701) b!2009829))

(assert (= (and d!613929 (not c!324701)) b!2009822))

(assert (= (and d!613929 c!324703) b!2009828))

(assert (= (and d!613929 (not c!324703)) b!2009825))

(assert (= (and b!2009825 c!324702) b!2009817))

(assert (= (and b!2009825 (not c!324702)) b!2009818))

(assert (= (and b!2009818 (not res!881421)) b!2009821))

(assert (= (and b!2009821 res!881422) b!2009826))

(assert (= (and b!2009826 res!881419) b!2009819))

(assert (= (and b!2009819 res!881425) b!2009816))

(assert (= (and b!2009821 (not res!881420)) b!2009823))

(assert (= (and b!2009823 res!881426) b!2009824))

(assert (= (and b!2009824 (not res!881423)) b!2009820))

(assert (= (and b!2009820 (not res!881424)) b!2009827))

(assert (= (or b!2009828 b!2009824 b!2009826) bm!122917))

(assert (=> b!2009822 m!2440385))

(declare-fun m!2442601 () Bool)

(assert (=> b!2009822 m!2442601))

(assert (=> b!2009822 m!2442601))

(declare-fun m!2442603 () Bool)

(assert (=> b!2009822 m!2442603))

(assert (=> b!2009822 m!2440385))

(declare-fun m!2442605 () Bool)

(assert (=> b!2009822 m!2442605))

(assert (=> b!2009822 m!2442603))

(assert (=> b!2009822 m!2442605))

(declare-fun m!2442607 () Bool)

(assert (=> b!2009822 m!2442607))

(assert (=> b!2009816 m!2440385))

(assert (=> b!2009816 m!2442601))

(declare-fun m!2442609 () Bool)

(assert (=> b!2009829 m!2442609))

(assert (=> d!613929 m!2440385))

(declare-fun m!2442611 () Bool)

(assert (=> d!613929 m!2442611))

(declare-fun m!2442613 () Bool)

(assert (=> d!613929 m!2442613))

(assert (=> bm!122917 m!2440385))

(assert (=> bm!122917 m!2442611))

(assert (=> b!2009827 m!2440385))

(assert (=> b!2009827 m!2442601))

(assert (=> b!2009820 m!2440385))

(assert (=> b!2009820 m!2442605))

(assert (=> b!2009820 m!2442605))

(declare-fun m!2442615 () Bool)

(assert (=> b!2009820 m!2442615))

(assert (=> b!2009819 m!2440385))

(assert (=> b!2009819 m!2442605))

(assert (=> b!2009819 m!2442605))

(assert (=> b!2009819 m!2442615))

(assert (=> b!2008197 d!613929))

(assert (=> b!2008197 d!613441))

(assert (=> b!2008197 d!613499))

(assert (=> b!2008197 d!613501))

(declare-fun d!613931 () Bool)

(declare-fun c!324704 () Bool)

(assert (=> d!613931 (= c!324704 ((_ is Nil!22061) lt!754161))))

(declare-fun e!1269862 () (InoxSet C!10916))

(assert (=> d!613931 (= (content!3231 lt!754161) e!1269862)))

(declare-fun b!2009830 () Bool)

(assert (=> b!2009830 (= e!1269862 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009831 () Bool)

(assert (=> b!2009831 (= e!1269862 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 lt!754161) true) (content!3231 (t!187320 lt!754161))))))

(assert (= (and d!613931 c!324704) b!2009830))

(assert (= (and d!613931 (not c!324704)) b!2009831))

(declare-fun m!2442617 () Bool)

(assert (=> b!2009831 m!2442617))

(declare-fun m!2442619 () Bool)

(assert (=> b!2009831 m!2442619))

(assert (=> d!613145 d!613931))

(assert (=> d!613145 d!613693))

(assert (=> d!613145 d!613477))

(assert (=> b!2008394 d!613427))

(assert (=> b!2008394 d!613429))

(declare-fun b!2009832 () Bool)

(declare-fun e!1269866 () Bool)

(declare-fun e!1269865 () Bool)

(assert (=> b!2009832 (= e!1269866 e!1269865)))

(declare-fun res!881429 () Bool)

(assert (=> b!2009832 (=> (not res!881429) (not e!1269865))))

(declare-fun call!122925 () Bool)

(assert (=> b!2009832 (= res!881429 call!122925)))

(declare-fun b!2009833 () Bool)

(declare-fun e!1269863 () Bool)

(declare-fun e!1269864 () Bool)

(assert (=> b!2009833 (= e!1269863 e!1269864)))

(declare-fun c!324706 () Bool)

(assert (=> b!2009833 (= c!324706 ((_ is Union!5385) (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))))))

(declare-fun b!2009834 () Bool)

(declare-fun res!881431 () Bool)

(declare-fun e!1269868 () Bool)

(assert (=> b!2009834 (=> (not res!881431) (not e!1269868))))

(assert (=> b!2009834 (= res!881431 call!122925)))

(assert (=> b!2009834 (= e!1269864 e!1269868)))

(declare-fun call!122924 () Bool)

(declare-fun bm!122918 () Bool)

(declare-fun c!324705 () Bool)

(assert (=> bm!122918 (= call!122924 (validRegex!2157 (ite c!324705 (reg!5714 (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))) (ite c!324706 (regOne!11283 (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))) (regOne!11282 (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))))

(declare-fun b!2009835 () Bool)

(declare-fun call!122923 () Bool)

(assert (=> b!2009835 (= e!1269868 call!122923)))

(declare-fun bm!122919 () Bool)

(assert (=> bm!122919 (= call!122925 call!122924)))

(declare-fun b!2009837 () Bool)

(declare-fun res!881430 () Bool)

(assert (=> b!2009837 (=> res!881430 e!1269866)))

(assert (=> b!2009837 (= res!881430 (not ((_ is Concat!9482) (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354)))))))))

(assert (=> b!2009837 (= e!1269864 e!1269866)))

(declare-fun b!2009838 () Bool)

(declare-fun e!1269869 () Bool)

(assert (=> b!2009838 (= e!1269869 call!122924)))

(declare-fun b!2009839 () Bool)

(assert (=> b!2009839 (= e!1269863 e!1269869)))

(declare-fun res!881428 () Bool)

(assert (=> b!2009839 (= res!881428 (not (nullable!1631 (reg!5714 (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))))))))

(assert (=> b!2009839 (=> (not res!881428) (not e!1269869))))

(declare-fun d!613933 () Bool)

(declare-fun res!881427 () Bool)

(declare-fun e!1269867 () Bool)

(assert (=> d!613933 (=> res!881427 e!1269867)))

(assert (=> d!613933 (= res!881427 ((_ is ElementMatch!5385) (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))))))

(assert (=> d!613933 (= (validRegex!2157 (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))) e!1269867)))

(declare-fun b!2009836 () Bool)

(assert (=> b!2009836 (= e!1269865 call!122923)))

(declare-fun bm!122920 () Bool)

(assert (=> bm!122920 (= call!122923 (validRegex!2157 (ite c!324706 (regTwo!11283 (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))) (regTwo!11282 (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))))))))

(declare-fun b!2009840 () Bool)

(assert (=> b!2009840 (= e!1269867 e!1269863)))

(assert (=> b!2009840 (= c!324705 ((_ is Star!5385) (ite c!324440 (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))))))

(assert (= (and d!613933 (not res!881427)) b!2009840))

(assert (= (and b!2009840 c!324705) b!2009839))

(assert (= (and b!2009840 (not c!324705)) b!2009833))

(assert (= (and b!2009839 res!881428) b!2009838))

(assert (= (and b!2009833 c!324706) b!2009834))

(assert (= (and b!2009833 (not c!324706)) b!2009837))

(assert (= (and b!2009834 res!881431) b!2009835))

(assert (= (and b!2009837 (not res!881430)) b!2009832))

(assert (= (and b!2009832 res!881429) b!2009836))

(assert (= (or b!2009834 b!2009832) bm!122919))

(assert (= (or b!2009835 b!2009836) bm!122920))

(assert (= (or b!2009838 bm!122919) bm!122918))

(declare-fun m!2442621 () Bool)

(assert (=> bm!122918 m!2442621))

(declare-fun m!2442623 () Bool)

(assert (=> b!2009839 m!2442623))

(declare-fun m!2442625 () Bool)

(assert (=> bm!122920 m!2442625))

(assert (=> bm!122827 d!613933))

(declare-fun d!613935 () Bool)

(declare-fun lt!754636 () Bool)

(assert (=> d!613935 (= lt!754636 (select (content!3233 rules!3198) (rule!6185 (_1!11834 (get!6973 lt!754144)))))))

(declare-fun e!1269870 () Bool)

(assert (=> d!613935 (= lt!754636 e!1269870)))

(declare-fun res!881433 () Bool)

(assert (=> d!613935 (=> (not res!881433) (not e!1269870))))

(assert (=> d!613935 (= res!881433 ((_ is Cons!22063) rules!3198))))

(assert (=> d!613935 (= (contains!4032 rules!3198 (rule!6185 (_1!11834 (get!6973 lt!754144)))) lt!754636)))

(declare-fun b!2009841 () Bool)

(declare-fun e!1269871 () Bool)

(assert (=> b!2009841 (= e!1269870 e!1269871)))

(declare-fun res!881432 () Bool)

(assert (=> b!2009841 (=> res!881432 e!1269871)))

(assert (=> b!2009841 (= res!881432 (= (h!27464 rules!3198) (rule!6185 (_1!11834 (get!6973 lt!754144)))))))

(declare-fun b!2009842 () Bool)

(assert (=> b!2009842 (= e!1269871 (contains!4032 (t!187322 rules!3198) (rule!6185 (_1!11834 (get!6973 lt!754144)))))))

(assert (= (and d!613935 res!881433) b!2009841))

(assert (= (and b!2009841 (not res!881432)) b!2009842))

(assert (=> d!613935 m!2441509))

(declare-fun m!2442627 () Bool)

(assert (=> d!613935 m!2442627))

(declare-fun m!2442629 () Bool)

(assert (=> b!2009842 m!2442629))

(assert (=> b!2008189 d!613935))

(assert (=> b!2008189 d!613441))

(declare-fun bs!419766 () Bool)

(declare-fun d!613937 () Bool)

(assert (= bs!419766 (and d!613937 d!613077)))

(declare-fun lambda!76079 () Int)

(assert (=> bs!419766 (= lambda!76079 lambda!76027)))

(declare-fun bs!419767 () Bool)

(assert (= bs!419767 (and d!613937 d!613893)))

(assert (=> bs!419767 (= (and (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))))) (= lambda!76079 lambda!76077))))

(assert (=> d!613937 true))

(assert (=> d!613937 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (dynLambda!10854 order!14001 lambda!76079))))

(assert (=> d!613937 true))

(assert (=> d!613937 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (dynLambda!10854 order!14001 lambda!76079))))

(assert (=> d!613937 (= (semiInverseModEq!1587 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (Forall!1016 lambda!76079))))

(declare-fun bs!419768 () Bool)

(assert (= bs!419768 d!613937))

(declare-fun m!2442631 () Bool)

(assert (=> bs!419768 m!2442631))

(assert (=> d!613195 d!613937))

(declare-fun d!613939 () Bool)

(declare-fun c!324707 () Bool)

(assert (=> d!613939 (= c!324707 ((_ is Nil!22061) lt!754209))))

(declare-fun e!1269872 () (InoxSet C!10916))

(assert (=> d!613939 (= (content!3231 lt!754209) e!1269872)))

(declare-fun b!2009843 () Bool)

(assert (=> b!2009843 (= e!1269872 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009844 () Bool)

(assert (=> b!2009844 (= e!1269872 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 lt!754209) true) (content!3231 (t!187320 lt!754209))))))

(assert (= (and d!613939 c!324707) b!2009843))

(assert (= (and d!613939 (not c!324707)) b!2009844))

(declare-fun m!2442633 () Bool)

(assert (=> b!2009844 m!2442633))

(declare-fun m!2442635 () Bool)

(assert (=> b!2009844 m!2442635))

(assert (=> d!613215 d!613939))

(declare-fun d!613941 () Bool)

(declare-fun c!324708 () Bool)

(assert (=> d!613941 (= c!324708 ((_ is Nil!22061) (++!5953 lt!754035 lt!754030)))))

(declare-fun e!1269873 () (InoxSet C!10916))

(assert (=> d!613941 (= (content!3231 (++!5953 lt!754035 lt!754030)) e!1269873)))

(declare-fun b!2009845 () Bool)

(assert (=> b!2009845 (= e!1269873 ((as const (Array C!10916 Bool)) false))))

(declare-fun b!2009846 () Bool)

(assert (=> b!2009846 (= e!1269873 ((_ map or) (store ((as const (Array C!10916 Bool)) false) (h!27462 (++!5953 lt!754035 lt!754030)) true) (content!3231 (t!187320 (++!5953 lt!754035 lt!754030)))))))

(assert (= (and d!613941 c!324708) b!2009845))

(assert (= (and d!613941 (not c!324708)) b!2009846))

(declare-fun m!2442637 () Bool)

(assert (=> b!2009846 m!2442637))

(assert (=> b!2009846 m!2441285))

(assert (=> d!613215 d!613941))

(assert (=> d!613215 d!613477))

(declare-fun d!613943 () Bool)

(declare-fun lt!754637 () Int)

(assert (=> d!613943 (>= lt!754637 0)))

(declare-fun e!1269874 () Int)

(assert (=> d!613943 (= lt!754637 e!1269874)))

(declare-fun c!324709 () Bool)

(assert (=> d!613943 (= c!324709 ((_ is Nil!22061) lt!754202))))

(assert (=> d!613943 (= (size!17248 lt!754202) lt!754637)))

(declare-fun b!2009847 () Bool)

(assert (=> b!2009847 (= e!1269874 0)))

(declare-fun b!2009848 () Bool)

(assert (=> b!2009848 (= e!1269874 (+ 1 (size!17248 (t!187320 lt!754202))))))

(assert (= (and d!613943 c!324709) b!2009847))

(assert (= (and d!613943 (not c!324709)) b!2009848))

(declare-fun m!2442639 () Bool)

(assert (=> b!2009848 m!2442639))

(assert (=> b!2008420 d!613943))

(assert (=> b!2008420 d!613521))

(assert (=> b!2008420 d!613491))

(declare-fun d!613945 () Bool)

(declare-fun charsToBigInt!1 (List!22142) Int)

(assert (=> d!613945 (= (inv!17 (value!124451 separatorToken!354)) (= (charsToBigInt!1 (text!29120 (value!124451 separatorToken!354))) (value!124443 (value!124451 separatorToken!354))))))

(declare-fun bs!419769 () Bool)

(assert (= bs!419769 d!613945))

(declare-fun m!2442641 () Bool)

(assert (=> bs!419769 m!2442641))

(assert (=> b!2008622 d!613945))

(declare-fun d!613947 () Bool)

(assert (=> d!613947 (= (isEmpty!13682 lt!754031) (not ((_ is Some!4600) lt!754031)))))

(assert (=> d!613075 d!613947))

(declare-fun b!2009849 () Bool)

(declare-fun e!1269878 () Bool)

(assert (=> b!2009849 (= e!1269878 (= (head!4536 (tail!3022 lt!754035)) (c!324301 (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035)))))))

(declare-fun b!2009850 () Bool)

(declare-fun e!1269879 () Bool)

(declare-fun lt!754638 () Bool)

(assert (=> b!2009850 (= e!1269879 (not lt!754638))))

(declare-fun b!2009851 () Bool)

(declare-fun res!881436 () Bool)

(declare-fun e!1269881 () Bool)

(assert (=> b!2009851 (=> res!881436 e!1269881)))

(assert (=> b!2009851 (= res!881436 (not ((_ is ElementMatch!5385) (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035)))))))

(assert (=> b!2009851 (= e!1269879 e!1269881)))

(declare-fun d!613949 () Bool)

(declare-fun e!1269876 () Bool)

(assert (=> d!613949 e!1269876))

(declare-fun c!324712 () Bool)

(assert (=> d!613949 (= c!324712 ((_ is EmptyExpr!5385) (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035))))))

(declare-fun e!1269875 () Bool)

(assert (=> d!613949 (= lt!754638 e!1269875)))

(declare-fun c!324710 () Bool)

(assert (=> d!613949 (= c!324710 (isEmpty!13686 (tail!3022 lt!754035)))))

(assert (=> d!613949 (validRegex!2157 (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035)))))

(assert (=> d!613949 (= (matchR!2651 (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035)) (tail!3022 lt!754035)) lt!754638)))

(declare-fun b!2009852 () Bool)

(declare-fun res!881440 () Bool)

(assert (=> b!2009852 (=> (not res!881440) (not e!1269878))))

(assert (=> b!2009852 (= res!881440 (isEmpty!13686 (tail!3022 (tail!3022 lt!754035))))))

(declare-fun b!2009853 () Bool)

(declare-fun res!881439 () Bool)

(declare-fun e!1269880 () Bool)

(assert (=> b!2009853 (=> res!881439 e!1269880)))

(assert (=> b!2009853 (= res!881439 (not (isEmpty!13686 (tail!3022 (tail!3022 lt!754035)))))))

(declare-fun b!2009854 () Bool)

(declare-fun res!881435 () Bool)

(assert (=> b!2009854 (=> res!881435 e!1269881)))

(assert (=> b!2009854 (= res!881435 e!1269878)))

(declare-fun res!881437 () Bool)

(assert (=> b!2009854 (=> (not res!881437) (not e!1269878))))

(assert (=> b!2009854 (= res!881437 lt!754638)))

(declare-fun b!2009855 () Bool)

(assert (=> b!2009855 (= e!1269875 (matchR!2651 (derivativeStep!1390 (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035)) (head!4536 (tail!3022 lt!754035))) (tail!3022 (tail!3022 lt!754035))))))

(declare-fun b!2009856 () Bool)

(declare-fun e!1269877 () Bool)

(assert (=> b!2009856 (= e!1269881 e!1269877)))

(declare-fun res!881441 () Bool)

(assert (=> b!2009856 (=> (not res!881441) (not e!1269877))))

(assert (=> b!2009856 (= res!881441 (not lt!754638))))

(declare-fun b!2009857 () Bool)

(assert (=> b!2009857 (= e!1269877 e!1269880)))

(declare-fun res!881438 () Bool)

(assert (=> b!2009857 (=> res!881438 e!1269880)))

(declare-fun call!122926 () Bool)

(assert (=> b!2009857 (= res!881438 call!122926)))

(declare-fun b!2009858 () Bool)

(assert (=> b!2009858 (= e!1269876 e!1269879)))

(declare-fun c!324711 () Bool)

(assert (=> b!2009858 (= c!324711 ((_ is EmptyLang!5385) (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035))))))

(declare-fun b!2009859 () Bool)

(declare-fun res!881434 () Bool)

(assert (=> b!2009859 (=> (not res!881434) (not e!1269878))))

(assert (=> b!2009859 (= res!881434 (not call!122926))))

(declare-fun b!2009860 () Bool)

(assert (=> b!2009860 (= e!1269880 (not (= (head!4536 (tail!3022 lt!754035)) (c!324301 (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035))))))))

(declare-fun bm!122921 () Bool)

(assert (=> bm!122921 (= call!122926 (isEmpty!13686 (tail!3022 lt!754035)))))

(declare-fun b!2009861 () Bool)

(assert (=> b!2009861 (= e!1269876 (= lt!754638 call!122926))))

(declare-fun b!2009862 () Bool)

(assert (=> b!2009862 (= e!1269875 (nullable!1631 (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035))))))

(assert (= (and d!613949 c!324710) b!2009862))

(assert (= (and d!613949 (not c!324710)) b!2009855))

(assert (= (and d!613949 c!324712) b!2009861))

(assert (= (and d!613949 (not c!324712)) b!2009858))

(assert (= (and b!2009858 c!324711) b!2009850))

(assert (= (and b!2009858 (not c!324711)) b!2009851))

(assert (= (and b!2009851 (not res!881436)) b!2009854))

(assert (= (and b!2009854 res!881437) b!2009859))

(assert (= (and b!2009859 res!881434) b!2009852))

(assert (= (and b!2009852 res!881440) b!2009849))

(assert (= (and b!2009854 (not res!881435)) b!2009856))

(assert (= (and b!2009856 res!881441) b!2009857))

(assert (= (and b!2009857 (not res!881438)) b!2009853))

(assert (= (and b!2009853 (not res!881439)) b!2009860))

(assert (= (or b!2009861 b!2009857 b!2009859) bm!122921))

(assert (=> b!2009855 m!2440695))

(declare-fun m!2442643 () Bool)

(assert (=> b!2009855 m!2442643))

(assert (=> b!2009855 m!2440693))

(assert (=> b!2009855 m!2442643))

(declare-fun m!2442645 () Bool)

(assert (=> b!2009855 m!2442645))

(assert (=> b!2009855 m!2440695))

(declare-fun m!2442647 () Bool)

(assert (=> b!2009855 m!2442647))

(assert (=> b!2009855 m!2442645))

(assert (=> b!2009855 m!2442647))

(declare-fun m!2442649 () Bool)

(assert (=> b!2009855 m!2442649))

(assert (=> b!2009849 m!2440695))

(assert (=> b!2009849 m!2442643))

(assert (=> b!2009862 m!2440693))

(declare-fun m!2442651 () Bool)

(assert (=> b!2009862 m!2442651))

(assert (=> d!613949 m!2440695))

(assert (=> d!613949 m!2440705))

(assert (=> d!613949 m!2440693))

(declare-fun m!2442653 () Bool)

(assert (=> d!613949 m!2442653))

(assert (=> bm!122921 m!2440695))

(assert (=> bm!122921 m!2440705))

(assert (=> b!2009860 m!2440695))

(assert (=> b!2009860 m!2442643))

(assert (=> b!2009853 m!2440695))

(assert (=> b!2009853 m!2442647))

(assert (=> b!2009853 m!2442647))

(declare-fun m!2442655 () Bool)

(assert (=> b!2009853 m!2442655))

(assert (=> b!2009852 m!2440695))

(assert (=> b!2009852 m!2442647))

(assert (=> b!2009852 m!2442647))

(assert (=> b!2009852 m!2442655))

(assert (=> b!2008493 d!613949))

(declare-fun b!2009863 () Bool)

(declare-fun c!324713 () Bool)

(assert (=> b!2009863 (= c!324713 ((_ is Union!5385) (regex!3960 lt!754033)))))

(declare-fun e!1269883 () Regex!5385)

(declare-fun e!1269882 () Regex!5385)

(assert (=> b!2009863 (= e!1269883 e!1269882)))

(declare-fun b!2009864 () Bool)

(declare-fun c!324717 () Bool)

(assert (=> b!2009864 (= c!324717 (nullable!1631 (regOne!11282 (regex!3960 lt!754033))))))

(declare-fun e!1269886 () Regex!5385)

(declare-fun e!1269884 () Regex!5385)

(assert (=> b!2009864 (= e!1269886 e!1269884)))

(declare-fun bm!122922 () Bool)

(declare-fun call!122930 () Regex!5385)

(assert (=> bm!122922 (= call!122930 (derivativeStep!1390 (ite c!324713 (regTwo!11283 (regex!3960 lt!754033)) (regOne!11282 (regex!3960 lt!754033))) (head!4536 lt!754035)))))

(declare-fun bm!122923 () Bool)

(declare-fun call!122928 () Regex!5385)

(declare-fun call!122927 () Regex!5385)

(assert (=> bm!122923 (= call!122928 call!122927)))

(declare-fun d!613951 () Bool)

(declare-fun lt!754639 () Regex!5385)

(assert (=> d!613951 (validRegex!2157 lt!754639)))

(declare-fun e!1269885 () Regex!5385)

(assert (=> d!613951 (= lt!754639 e!1269885)))

(declare-fun c!324715 () Bool)

(assert (=> d!613951 (= c!324715 (or ((_ is EmptyExpr!5385) (regex!3960 lt!754033)) ((_ is EmptyLang!5385) (regex!3960 lt!754033))))))

(assert (=> d!613951 (validRegex!2157 (regex!3960 lt!754033))))

(assert (=> d!613951 (= (derivativeStep!1390 (regex!3960 lt!754033) (head!4536 lt!754035)) lt!754639)))

(declare-fun b!2009865 () Bool)

(assert (=> b!2009865 (= e!1269885 e!1269883)))

(declare-fun c!324714 () Bool)

(assert (=> b!2009865 (= c!324714 ((_ is ElementMatch!5385) (regex!3960 lt!754033)))))

(declare-fun bm!122924 () Bool)

(declare-fun call!122929 () Regex!5385)

(assert (=> bm!122924 (= call!122929 call!122928)))

(declare-fun b!2009866 () Bool)

(assert (=> b!2009866 (= e!1269886 (Concat!9482 call!122928 (regex!3960 lt!754033)))))

(declare-fun c!324716 () Bool)

(declare-fun bm!122925 () Bool)

(assert (=> bm!122925 (= call!122927 (derivativeStep!1390 (ite c!324713 (regOne!11283 (regex!3960 lt!754033)) (ite c!324716 (reg!5714 (regex!3960 lt!754033)) (ite c!324717 (regTwo!11282 (regex!3960 lt!754033)) (regOne!11282 (regex!3960 lt!754033))))) (head!4536 lt!754035)))))

(declare-fun b!2009867 () Bool)

(assert (=> b!2009867 (= e!1269884 (Union!5385 (Concat!9482 call!122930 (regTwo!11282 (regex!3960 lt!754033))) call!122929))))

(declare-fun b!2009868 () Bool)

(assert (=> b!2009868 (= e!1269885 EmptyLang!5385)))

(declare-fun b!2009869 () Bool)

(assert (=> b!2009869 (= e!1269882 (Union!5385 call!122927 call!122930))))

(declare-fun b!2009870 () Bool)

(assert (=> b!2009870 (= e!1269882 e!1269886)))

(assert (=> b!2009870 (= c!324716 ((_ is Star!5385) (regex!3960 lt!754033)))))

(declare-fun b!2009871 () Bool)

(assert (=> b!2009871 (= e!1269884 (Union!5385 (Concat!9482 call!122929 (regTwo!11282 (regex!3960 lt!754033))) EmptyLang!5385))))

(declare-fun b!2009872 () Bool)

(assert (=> b!2009872 (= e!1269883 (ite (= (head!4536 lt!754035) (c!324301 (regex!3960 lt!754033))) EmptyExpr!5385 EmptyLang!5385))))

(assert (= (and d!613951 c!324715) b!2009868))

(assert (= (and d!613951 (not c!324715)) b!2009865))

(assert (= (and b!2009865 c!324714) b!2009872))

(assert (= (and b!2009865 (not c!324714)) b!2009863))

(assert (= (and b!2009863 c!324713) b!2009869))

(assert (= (and b!2009863 (not c!324713)) b!2009870))

(assert (= (and b!2009870 c!324716) b!2009866))

(assert (= (and b!2009870 (not c!324716)) b!2009864))

(assert (= (and b!2009864 c!324717) b!2009867))

(assert (= (and b!2009864 (not c!324717)) b!2009871))

(assert (= (or b!2009867 b!2009871) bm!122924))

(assert (= (or b!2009866 bm!122924) bm!122923))

(assert (= (or b!2009869 bm!122923) bm!122925))

(assert (= (or b!2009869 b!2009867) bm!122922))

(declare-fun m!2442657 () Bool)

(assert (=> b!2009864 m!2442657))

(assert (=> bm!122922 m!2440691))

(declare-fun m!2442659 () Bool)

(assert (=> bm!122922 m!2442659))

(declare-fun m!2442661 () Bool)

(assert (=> d!613951 m!2442661))

(assert (=> d!613951 m!2440703))

(assert (=> bm!122925 m!2440691))

(declare-fun m!2442663 () Bool)

(assert (=> bm!122925 m!2442663))

(assert (=> b!2008493 d!613951))

(assert (=> b!2008493 d!613549))

(assert (=> b!2008493 d!613371))

(declare-fun d!613953 () Bool)

(declare-fun lt!754642 () Token!7472)

(assert (=> d!613953 (= lt!754642 (apply!5785 (list!8985 (_1!11836 lt!754219)) 0))))

(declare-fun apply!5787 (Conc!7373 Int) Token!7472)

(assert (=> d!613953 (= lt!754642 (apply!5787 (c!324444 (_1!11836 lt!754219)) 0))))

(declare-fun e!1269889 () Bool)

(assert (=> d!613953 e!1269889))

(declare-fun res!881444 () Bool)

(assert (=> d!613953 (=> (not res!881444) (not e!1269889))))

(assert (=> d!613953 (= res!881444 (<= 0 0))))

(assert (=> d!613953 (= (apply!5783 (_1!11836 lt!754219) 0) lt!754642)))

(declare-fun b!2009875 () Bool)

(assert (=> b!2009875 (= e!1269889 (< 0 (size!17250 (_1!11836 lt!754219))))))

(assert (= (and d!613953 res!881444) b!2009875))

(assert (=> d!613953 m!2442083))

(assert (=> d!613953 m!2442083))

(declare-fun m!2442665 () Bool)

(assert (=> d!613953 m!2442665))

(declare-fun m!2442667 () Bool)

(assert (=> d!613953 m!2442667))

(assert (=> b!2009875 m!2440787))

(assert (=> b!2008654 d!613953))

(declare-fun d!613955 () Bool)

(assert (=> d!613955 (= (inv!29216 (tag!4424 (rule!6185 (h!27463 (t!187321 tokens!598))))) (= (mod (str.len (value!124450 (tag!4424 (rule!6185 (h!27463 (t!187321 tokens!598)))))) 2) 0))))

(assert (=> b!2008670 d!613955))

(declare-fun d!613957 () Bool)

(declare-fun res!881445 () Bool)

(declare-fun e!1269890 () Bool)

(assert (=> d!613957 (=> (not res!881445) (not e!1269890))))

(assert (=> d!613957 (= res!881445 (semiInverseModEq!1587 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))))))

(assert (=> d!613957 (= (inv!29219 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) e!1269890)))

(declare-fun b!2009876 () Bool)

(assert (=> b!2009876 (= e!1269890 (equivClasses!1514 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))))))

(assert (= (and d!613957 res!881445) b!2009876))

(declare-fun m!2442669 () Bool)

(assert (=> d!613957 m!2442669))

(declare-fun m!2442671 () Bool)

(assert (=> b!2009876 m!2442671))

(assert (=> b!2008670 d!613957))

(declare-fun bm!122926 () Bool)

(declare-fun call!122931 () Option!4602)

(assert (=> bm!122926 (= call!122931 (maxPrefixOneRule!1244 thiss!23328 (h!27464 rules!3198) (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076)))))

(declare-fun b!2009877 () Bool)

(declare-fun e!1269892 () Bool)

(declare-fun lt!754643 () Option!4602)

(assert (=> b!2009877 (= e!1269892 (contains!4032 rules!3198 (rule!6185 (_1!11834 (get!6973 lt!754643)))))))

(declare-fun b!2009878 () Bool)

(declare-fun res!881449 () Bool)

(assert (=> b!2009878 (=> (not res!881449) (not e!1269892))))

(assert (=> b!2009878 (= res!881449 (= (value!124451 (_1!11834 (get!6973 lt!754643))) (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754643)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754643)))))))))

(declare-fun b!2009880 () Bool)

(declare-fun e!1269893 () Bool)

(assert (=> b!2009880 (= e!1269893 e!1269892)))

(declare-fun res!881452 () Bool)

(assert (=> b!2009880 (=> (not res!881452) (not e!1269892))))

(assert (=> b!2009880 (= res!881452 (isDefined!3890 lt!754643))))

(declare-fun b!2009881 () Bool)

(declare-fun res!881451 () Bool)

(assert (=> b!2009881 (=> (not res!881451) (not e!1269892))))

(assert (=> b!2009881 (= res!881451 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754643)))) (_2!11834 (get!6973 lt!754643))) (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076)))))

(declare-fun b!2009882 () Bool)

(declare-fun e!1269891 () Option!4602)

(declare-fun lt!754646 () Option!4602)

(declare-fun lt!754645 () Option!4602)

(assert (=> b!2009882 (= e!1269891 (ite (and ((_ is None!4601) lt!754646) ((_ is None!4601) lt!754645)) None!4601 (ite ((_ is None!4601) lt!754645) lt!754646 (ite ((_ is None!4601) lt!754646) lt!754645 (ite (>= (size!17246 (_1!11834 (v!26838 lt!754646))) (size!17246 (_1!11834 (v!26838 lt!754645)))) lt!754646 lt!754645)))))))

(assert (=> b!2009882 (= lt!754646 call!122931)))

(assert (=> b!2009882 (= lt!754645 (maxPrefix!2009 thiss!23328 (t!187322 rules!3198) (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076)))))

(declare-fun b!2009883 () Bool)

(declare-fun res!881447 () Bool)

(assert (=> b!2009883 (=> (not res!881447) (not e!1269892))))

(assert (=> b!2009883 (= res!881447 (= (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754643)))) (originalCharacters!4767 (_1!11834 (get!6973 lt!754643)))))))

(declare-fun d!613959 () Bool)

(assert (=> d!613959 e!1269893))

(declare-fun res!881450 () Bool)

(assert (=> d!613959 (=> res!881450 e!1269893)))

(assert (=> d!613959 (= res!881450 (isEmpty!13684 lt!754643))))

(assert (=> d!613959 (= lt!754643 e!1269891)))

(declare-fun c!324718 () Bool)

(assert (=> d!613959 (= c!324718 (and ((_ is Cons!22063) rules!3198) ((_ is Nil!22063) (t!187322 rules!3198))))))

(declare-fun lt!754644 () Unit!36620)

(declare-fun lt!754647 () Unit!36620)

(assert (=> d!613959 (= lt!754644 lt!754647)))

(assert (=> d!613959 (isPrefix!1962 (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076) (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076))))

(assert (=> d!613959 (= lt!754647 (lemmaIsPrefixRefl!1280 (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076) (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076)))))

(assert (=> d!613959 (rulesValidInductive!1361 thiss!23328 rules!3198)))

(assert (=> d!613959 (= (maxPrefix!2009 thiss!23328 rules!3198 (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076)) lt!754643)))

(declare-fun b!2009879 () Bool)

(declare-fun res!881446 () Bool)

(assert (=> b!2009879 (=> (not res!881446) (not e!1269892))))

(assert (=> b!2009879 (= res!881446 (< (size!17248 (_2!11834 (get!6973 lt!754643))) (size!17248 (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076))))))

(declare-fun b!2009884 () Bool)

(assert (=> b!2009884 (= e!1269891 call!122931)))

(declare-fun b!2009885 () Bool)

(declare-fun res!881448 () Bool)

(assert (=> b!2009885 (=> (not res!881448) (not e!1269892))))

(assert (=> b!2009885 (= res!881448 (matchR!2651 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754643)))) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754643))))))))

(assert (= (and d!613959 c!324718) b!2009884))

(assert (= (and d!613959 (not c!324718)) b!2009882))

(assert (= (or b!2009884 b!2009882) bm!122926))

(assert (= (and d!613959 (not res!881450)) b!2009880))

(assert (= (and b!2009880 res!881452) b!2009883))

(assert (= (and b!2009883 res!881447) b!2009879))

(assert (= (and b!2009879 res!881446) b!2009881))

(assert (= (and b!2009881 res!881451) b!2009878))

(assert (= (and b!2009878 res!881449) b!2009885))

(assert (= (and b!2009885 res!881448) b!2009877))

(declare-fun m!2442673 () Bool)

(assert (=> b!2009880 m!2442673))

(declare-fun m!2442675 () Bool)

(assert (=> b!2009881 m!2442675))

(declare-fun m!2442677 () Bool)

(assert (=> b!2009881 m!2442677))

(assert (=> b!2009881 m!2442677))

(declare-fun m!2442679 () Bool)

(assert (=> b!2009881 m!2442679))

(assert (=> b!2009881 m!2442679))

(declare-fun m!2442681 () Bool)

(assert (=> b!2009881 m!2442681))

(assert (=> bm!122926 m!2440215))

(declare-fun m!2442683 () Bool)

(assert (=> bm!122926 m!2442683))

(assert (=> b!2009878 m!2442675))

(declare-fun m!2442685 () Bool)

(assert (=> b!2009878 m!2442685))

(assert (=> b!2009878 m!2442685))

(declare-fun m!2442687 () Bool)

(assert (=> b!2009878 m!2442687))

(declare-fun m!2442689 () Bool)

(assert (=> d!613959 m!2442689))

(assert (=> d!613959 m!2440215))

(assert (=> d!613959 m!2440215))

(declare-fun m!2442691 () Bool)

(assert (=> d!613959 m!2442691))

(assert (=> d!613959 m!2440215))

(assert (=> d!613959 m!2440215))

(declare-fun m!2442693 () Bool)

(assert (=> d!613959 m!2442693))

(assert (=> d!613959 m!2440333))

(assert (=> b!2009877 m!2442675))

(declare-fun m!2442695 () Bool)

(assert (=> b!2009877 m!2442695))

(assert (=> b!2009882 m!2440215))

(declare-fun m!2442697 () Bool)

(assert (=> b!2009882 m!2442697))

(assert (=> b!2009879 m!2442675))

(declare-fun m!2442699 () Bool)

(assert (=> b!2009879 m!2442699))

(assert (=> b!2009879 m!2440215))

(declare-fun m!2442701 () Bool)

(assert (=> b!2009879 m!2442701))

(assert (=> b!2009885 m!2442675))

(assert (=> b!2009885 m!2442677))

(assert (=> b!2009885 m!2442677))

(assert (=> b!2009885 m!2442679))

(assert (=> b!2009885 m!2442679))

(declare-fun m!2442703 () Bool)

(assert (=> b!2009885 m!2442703))

(assert (=> b!2009883 m!2442675))

(assert (=> b!2009883 m!2442677))

(assert (=> b!2009883 m!2442677))

(assert (=> b!2009883 m!2442679))

(assert (=> b!2008072 d!613959))

(declare-fun d!613961 () Bool)

(assert (=> d!613961 (dynLambda!10864 lambda!76030 (h!27463 (t!187321 tokens!598)))))

(declare-fun lt!754650 () Unit!36620)

(declare-fun choose!12244 (List!22144 Int Token!7472) Unit!36620)

(assert (=> d!613961 (= lt!754650 (choose!12244 (t!187321 tokens!598) lambda!76030 (h!27463 (t!187321 tokens!598))))))

(declare-fun e!1269896 () Bool)

(assert (=> d!613961 e!1269896))

(declare-fun res!881455 () Bool)

(assert (=> d!613961 (=> (not res!881455) (not e!1269896))))

(assert (=> d!613961 (= res!881455 (forall!4686 (t!187321 tokens!598) lambda!76030))))

(assert (=> d!613961 (= (forallContained!726 (t!187321 tokens!598) lambda!76030 (h!27463 (t!187321 tokens!598))) lt!754650)))

(declare-fun b!2009888 () Bool)

(declare-fun contains!4036 (List!22144 Token!7472) Bool)

(assert (=> b!2009888 (= e!1269896 (contains!4036 (t!187321 tokens!598) (h!27463 (t!187321 tokens!598))))))

(assert (= (and d!613961 res!881455) b!2009888))

(declare-fun b_lambda!67109 () Bool)

(assert (=> (not b_lambda!67109) (not d!613961)))

(declare-fun m!2442705 () Bool)

(assert (=> d!613961 m!2442705))

(declare-fun m!2442707 () Bool)

(assert (=> d!613961 m!2442707))

(declare-fun m!2442709 () Bool)

(assert (=> d!613961 m!2442709))

(declare-fun m!2442711 () Bool)

(assert (=> b!2009888 m!2442711))

(assert (=> b!2008072 d!613961))

(assert (=> b!2008072 d!613877))

(declare-fun b!2009891 () Bool)

(declare-fun res!881456 () Bool)

(declare-fun e!1269898 () Bool)

(assert (=> b!2009891 (=> (not res!881456) (not e!1269898))))

(declare-fun lt!754651 () List!22143)

(assert (=> b!2009891 (= res!881456 (= (size!17248 lt!754651) (+ (size!17248 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598))))) (size!17248 lt!754076))))))

(declare-fun b!2009892 () Bool)

(assert (=> b!2009892 (= e!1269898 (or (not (= lt!754076 Nil!22061)) (= lt!754651 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))))))))

(declare-fun d!613963 () Bool)

(assert (=> d!613963 e!1269898))

(declare-fun res!881457 () Bool)

(assert (=> d!613963 (=> (not res!881457) (not e!1269898))))

(assert (=> d!613963 (= res!881457 (= (content!3231 lt!754651) ((_ map or) (content!3231 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598))))) (content!3231 lt!754076))))))

(declare-fun e!1269897 () List!22143)

(assert (=> d!613963 (= lt!754651 e!1269897)))

(declare-fun c!324719 () Bool)

(assert (=> d!613963 (= c!324719 ((_ is Nil!22061) (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598))))))))

(assert (=> d!613963 (= (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598)))) lt!754076) lt!754651)))

(declare-fun b!2009890 () Bool)

(assert (=> b!2009890 (= e!1269897 (Cons!22061 (h!27462 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598))))) (++!5953 (t!187320 (list!8981 (charsOf!2500 (h!27463 (t!187321 tokens!598))))) lt!754076)))))

(declare-fun b!2009889 () Bool)

(assert (=> b!2009889 (= e!1269897 lt!754076)))

(assert (= (and d!613963 c!324719) b!2009889))

(assert (= (and d!613963 (not c!324719)) b!2009890))

(assert (= (and d!613963 res!881457) b!2009891))

(assert (= (and b!2009891 res!881456) b!2009892))

(declare-fun m!2442713 () Bool)

(assert (=> b!2009891 m!2442713))

(assert (=> b!2009891 m!2440213))

(declare-fun m!2442715 () Bool)

(assert (=> b!2009891 m!2442715))

(assert (=> b!2009891 m!2441491))

(declare-fun m!2442717 () Bool)

(assert (=> d!613963 m!2442717))

(assert (=> d!613963 m!2440213))

(declare-fun m!2442719 () Bool)

(assert (=> d!613963 m!2442719))

(assert (=> d!613963 m!2441497))

(declare-fun m!2442721 () Bool)

(assert (=> b!2009890 m!2442721))

(assert (=> b!2008072 d!613963))

(declare-fun bs!419770 () Bool)

(declare-fun b!2009898 () Bool)

(assert (= bs!419770 (and b!2009898 b!2007920)))

(declare-fun lambda!76080 () Int)

(assert (=> bs!419770 (not (= lambda!76080 lambda!76021))))

(declare-fun bs!419771 () Bool)

(assert (= bs!419771 (and b!2009898 b!2008072)))

(assert (=> bs!419771 (= lambda!76080 lambda!76030)))

(declare-fun bs!419772 () Bool)

(assert (= bs!419772 (and b!2009898 d!613161)))

(assert (=> bs!419772 (= lambda!76080 lambda!76045)))

(declare-fun bs!419773 () Bool)

(assert (= bs!419773 (and b!2009898 d!613505)))

(assert (=> bs!419773 (= lambda!76080 lambda!76059)))

(declare-fun b!2009903 () Bool)

(declare-fun e!1269905 () Bool)

(assert (=> b!2009903 (= e!1269905 true)))

(declare-fun b!2009902 () Bool)

(declare-fun e!1269904 () Bool)

(assert (=> b!2009902 (= e!1269904 e!1269905)))

(declare-fun b!2009901 () Bool)

(declare-fun e!1269903 () Bool)

(assert (=> b!2009901 (= e!1269903 e!1269904)))

(assert (=> b!2009898 e!1269903))

(assert (= b!2009902 b!2009903))

(assert (= b!2009901 b!2009902))

(assert (= (and b!2009898 ((_ is Cons!22063) rules!3198)) b!2009901))

(assert (=> b!2009903 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10858 order!14005 lambda!76080))))

(assert (=> b!2009903 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10858 order!14005 lambda!76080))))

(assert (=> b!2009898 true))

(declare-fun call!122933 () BalanceConc!14558)

(declare-fun bm!122927 () Bool)

(declare-fun call!122935 () BalanceConc!14558)

(declare-fun c!324723 () Bool)

(declare-fun call!122932 () List!22143)

(assert (=> bm!122927 (= call!122932 (list!8981 (ite c!324723 call!122933 call!122935)))))

(declare-fun d!613965 () Bool)

(declare-fun c!324720 () Bool)

(assert (=> d!613965 (= c!324720 ((_ is Cons!22062) (t!187321 (t!187321 tokens!598))))))

(declare-fun e!1269901 () List!22143)

(assert (=> d!613965 (= (printWithSeparatorTokenWhenNeededList!602 thiss!23328 rules!3198 (t!187321 (t!187321 tokens!598)) separatorToken!354) e!1269901)))

(declare-fun b!2009893 () Bool)

(declare-fun e!1269899 () List!22143)

(assert (=> b!2009893 (= e!1269899 call!122932)))

(declare-fun bm!122928 () Bool)

(assert (=> bm!122928 (= call!122935 call!122933)))

(declare-fun b!2009894 () Bool)

(declare-fun e!1269900 () List!22143)

(assert (=> b!2009894 (= e!1269900 Nil!22061)))

(assert (=> b!2009894 (= (print!1541 thiss!23328 (singletonSeq!1942 (h!27463 (t!187321 (t!187321 tokens!598))))) (printTailRec!1047 thiss!23328 (singletonSeq!1942 (h!27463 (t!187321 (t!187321 tokens!598)))) 0 (BalanceConc!14559 Empty!7371)))))

(declare-fun lt!754653 () Unit!36620)

(declare-fun Unit!36632 () Unit!36620)

(assert (=> b!2009894 (= lt!754653 Unit!36632)))

(declare-fun lt!754652 () List!22143)

(declare-fun call!122936 () List!22143)

(declare-fun lt!754655 () Unit!36620)

(assert (=> b!2009894 (= lt!754655 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!757 thiss!23328 rules!3198 call!122936 lt!754652))))

(assert (=> b!2009894 false))

(declare-fun lt!754657 () Unit!36620)

(declare-fun Unit!36633 () Unit!36620)

(assert (=> b!2009894 (= lt!754657 Unit!36633)))

(declare-fun bm!122929 () Bool)

(declare-fun c!324721 () Bool)

(assert (=> bm!122929 (= c!324721 c!324723)))

(declare-fun call!122934 () List!22143)

(assert (=> bm!122929 (= call!122934 (++!5953 e!1269899 (ite c!324723 lt!754652 call!122936)))))

(declare-fun bm!122930 () Bool)

(assert (=> bm!122930 (= call!122936 call!122932)))

(declare-fun b!2009895 () Bool)

(declare-fun e!1269902 () List!22143)

(assert (=> b!2009895 (= e!1269902 call!122934)))

(declare-fun b!2009896 () Bool)

(assert (=> b!2009896 (= e!1269900 (++!5953 call!122934 lt!754652))))

(declare-fun b!2009897 () Bool)

(assert (=> b!2009897 (= e!1269899 (list!8981 (charsOf!2500 (h!27463 (t!187321 (t!187321 tokens!598))))))))

(assert (=> b!2009898 (= e!1269901 e!1269902)))

(declare-fun lt!754654 () Unit!36620)

(assert (=> b!2009898 (= lt!754654 (forallContained!726 (t!187321 (t!187321 tokens!598)) lambda!76080 (h!27463 (t!187321 (t!187321 tokens!598)))))))

(assert (=> b!2009898 (= lt!754652 (printWithSeparatorTokenWhenNeededList!602 thiss!23328 rules!3198 (t!187321 (t!187321 (t!187321 tokens!598))) separatorToken!354))))

(declare-fun lt!754656 () Option!4602)

(assert (=> b!2009898 (= lt!754656 (maxPrefix!2009 thiss!23328 rules!3198 (++!5953 (list!8981 (charsOf!2500 (h!27463 (t!187321 (t!187321 tokens!598))))) lt!754652)))))

(assert (=> b!2009898 (= c!324723 (and ((_ is Some!4601) lt!754656) (= (_1!11834 (v!26838 lt!754656)) (h!27463 (t!187321 (t!187321 tokens!598))))))))

(declare-fun bm!122931 () Bool)

(declare-fun c!324722 () Bool)

(assert (=> bm!122931 (= call!122933 (charsOf!2500 (ite c!324723 (h!27463 (t!187321 (t!187321 tokens!598))) (ite c!324722 separatorToken!354 (h!27463 (t!187321 (t!187321 tokens!598)))))))))

(declare-fun b!2009899 () Bool)

(assert (=> b!2009899 (= e!1269901 Nil!22061)))

(declare-fun b!2009900 () Bool)

(assert (=> b!2009900 (= c!324722 (and ((_ is Some!4601) lt!754656) (not (= (_1!11834 (v!26838 lt!754656)) (h!27463 (t!187321 (t!187321 tokens!598)))))))))

(assert (=> b!2009900 (= e!1269902 e!1269900)))

(assert (= (and d!613965 c!324720) b!2009898))

(assert (= (and d!613965 (not c!324720)) b!2009899))

(assert (= (and b!2009898 c!324723) b!2009895))

(assert (= (and b!2009898 (not c!324723)) b!2009900))

(assert (= (and b!2009900 c!324722) b!2009896))

(assert (= (and b!2009900 (not c!324722)) b!2009894))

(assert (= (or b!2009896 b!2009894) bm!122928))

(assert (= (or b!2009896 b!2009894) bm!122930))

(assert (= (or b!2009895 bm!122928) bm!122931))

(assert (= (or b!2009895 bm!122930) bm!122927))

(assert (= (or b!2009895 b!2009896) bm!122929))

(assert (= (and bm!122929 c!324721) b!2009893))

(assert (= (and bm!122929 (not c!324721)) b!2009897))

(declare-fun m!2442723 () Bool)

(assert (=> bm!122927 m!2442723))

(declare-fun m!2442725 () Bool)

(assert (=> bm!122929 m!2442725))

(declare-fun m!2442727 () Bool)

(assert (=> b!2009898 m!2442727))

(declare-fun m!2442729 () Bool)

(assert (=> b!2009898 m!2442729))

(declare-fun m!2442731 () Bool)

(assert (=> b!2009898 m!2442731))

(declare-fun m!2442733 () Bool)

(assert (=> b!2009898 m!2442733))

(assert (=> b!2009898 m!2442729))

(declare-fun m!2442735 () Bool)

(assert (=> b!2009898 m!2442735))

(assert (=> b!2009898 m!2442731))

(assert (=> b!2009898 m!2442727))

(declare-fun m!2442737 () Bool)

(assert (=> b!2009898 m!2442737))

(assert (=> b!2009897 m!2442731))

(assert (=> b!2009897 m!2442731))

(assert (=> b!2009897 m!2442727))

(declare-fun m!2442739 () Bool)

(assert (=> b!2009894 m!2442739))

(assert (=> b!2009894 m!2442739))

(declare-fun m!2442741 () Bool)

(assert (=> b!2009894 m!2442741))

(assert (=> b!2009894 m!2442739))

(declare-fun m!2442743 () Bool)

(assert (=> b!2009894 m!2442743))

(declare-fun m!2442745 () Bool)

(assert (=> b!2009894 m!2442745))

(declare-fun m!2442747 () Bool)

(assert (=> b!2009896 m!2442747))

(declare-fun m!2442749 () Bool)

(assert (=> bm!122931 m!2442749))

(assert (=> b!2008072 d!613965))

(assert (=> b!2008072 d!613875))

(assert (=> b!2008498 d!613549))

(declare-fun b!2009904 () Bool)

(declare-fun e!1269909 () Bool)

(assert (=> b!2009904 (= e!1269909 (= (head!4536 (list!8981 (charsOf!2500 (h!27463 tokens!598)))) (c!324301 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))))))))

(declare-fun b!2009905 () Bool)

(declare-fun e!1269910 () Bool)

(declare-fun lt!754658 () Bool)

(assert (=> b!2009905 (= e!1269910 (not lt!754658))))

(declare-fun b!2009906 () Bool)

(declare-fun res!881460 () Bool)

(declare-fun e!1269912 () Bool)

(assert (=> b!2009906 (=> res!881460 e!1269912)))

(assert (=> b!2009906 (= res!881460 (not ((_ is ElementMatch!5385) (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))))))))

(assert (=> b!2009906 (= e!1269910 e!1269912)))

(declare-fun d!613967 () Bool)

(declare-fun e!1269907 () Bool)

(assert (=> d!613967 e!1269907))

(declare-fun c!324726 () Bool)

(assert (=> d!613967 (= c!324726 ((_ is EmptyExpr!5385) (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))))))))

(declare-fun e!1269906 () Bool)

(assert (=> d!613967 (= lt!754658 e!1269906)))

(declare-fun c!324724 () Bool)

(assert (=> d!613967 (= c!324724 (isEmpty!13686 (list!8981 (charsOf!2500 (h!27463 tokens!598)))))))

(assert (=> d!613967 (validRegex!2157 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))))))

(assert (=> d!613967 (= (matchR!2651 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))) (list!8981 (charsOf!2500 (h!27463 tokens!598)))) lt!754658)))

(declare-fun b!2009907 () Bool)

(declare-fun res!881464 () Bool)

(assert (=> b!2009907 (=> (not res!881464) (not e!1269909))))

(assert (=> b!2009907 (= res!881464 (isEmpty!13686 (tail!3022 (list!8981 (charsOf!2500 (h!27463 tokens!598))))))))

(declare-fun b!2009908 () Bool)

(declare-fun res!881463 () Bool)

(declare-fun e!1269911 () Bool)

(assert (=> b!2009908 (=> res!881463 e!1269911)))

(assert (=> b!2009908 (= res!881463 (not (isEmpty!13686 (tail!3022 (list!8981 (charsOf!2500 (h!27463 tokens!598)))))))))

(declare-fun b!2009909 () Bool)

(declare-fun res!881459 () Bool)

(assert (=> b!2009909 (=> res!881459 e!1269912)))

(assert (=> b!2009909 (= res!881459 e!1269909)))

(declare-fun res!881461 () Bool)

(assert (=> b!2009909 (=> (not res!881461) (not e!1269909))))

(assert (=> b!2009909 (= res!881461 lt!754658)))

(declare-fun b!2009910 () Bool)

(assert (=> b!2009910 (= e!1269906 (matchR!2651 (derivativeStep!1390 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598)))))) (head!4536 (list!8981 (charsOf!2500 (h!27463 tokens!598))))) (tail!3022 (list!8981 (charsOf!2500 (h!27463 tokens!598))))))))

(declare-fun b!2009911 () Bool)

(declare-fun e!1269908 () Bool)

(assert (=> b!2009911 (= e!1269912 e!1269908)))

(declare-fun res!881465 () Bool)

(assert (=> b!2009911 (=> (not res!881465) (not e!1269908))))

(assert (=> b!2009911 (= res!881465 (not lt!754658))))

(declare-fun b!2009912 () Bool)

(assert (=> b!2009912 (= e!1269908 e!1269911)))

(declare-fun res!881462 () Bool)

(assert (=> b!2009912 (=> res!881462 e!1269911)))

(declare-fun call!122937 () Bool)

(assert (=> b!2009912 (= res!881462 call!122937)))

(declare-fun b!2009913 () Bool)

(assert (=> b!2009913 (= e!1269907 e!1269910)))

(declare-fun c!324725 () Bool)

(assert (=> b!2009913 (= c!324725 ((_ is EmptyLang!5385) (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))))))))

(declare-fun b!2009914 () Bool)

(declare-fun res!881458 () Bool)

(assert (=> b!2009914 (=> (not res!881458) (not e!1269909))))

(assert (=> b!2009914 (= res!881458 (not call!122937))))

(declare-fun b!2009915 () Bool)

(assert (=> b!2009915 (= e!1269911 (not (= (head!4536 (list!8981 (charsOf!2500 (h!27463 tokens!598)))) (c!324301 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))))))))))

(declare-fun bm!122932 () Bool)

(assert (=> bm!122932 (= call!122937 (isEmpty!13686 (list!8981 (charsOf!2500 (h!27463 tokens!598)))))))

(declare-fun b!2009916 () Bool)

(assert (=> b!2009916 (= e!1269907 (= lt!754658 call!122937))))

(declare-fun b!2009917 () Bool)

(assert (=> b!2009917 (= e!1269906 (nullable!1631 (regex!3960 (get!6972 (getRuleFromTag!775 thiss!23328 rules!3198 (tag!4424 (rule!6185 (h!27463 tokens!598))))))))))

(assert (= (and d!613967 c!324724) b!2009917))

(assert (= (and d!613967 (not c!324724)) b!2009910))

(assert (= (and d!613967 c!324726) b!2009916))

(assert (= (and d!613967 (not c!324726)) b!2009913))

(assert (= (and b!2009913 c!324725) b!2009905))

(assert (= (and b!2009913 (not c!324725)) b!2009906))

(assert (= (and b!2009906 (not res!881460)) b!2009909))

(assert (= (and b!2009909 res!881461) b!2009914))

(assert (= (and b!2009914 res!881458) b!2009907))

(assert (= (and b!2009907 res!881464) b!2009904))

(assert (= (and b!2009909 (not res!881459)) b!2009911))

(assert (= (and b!2009911 res!881465) b!2009912))

(assert (= (and b!2009912 (not res!881462)) b!2009908))

(assert (= (and b!2009908 (not res!881463)) b!2009915))

(assert (= (or b!2009916 b!2009912 b!2009914) bm!122932))

(assert (=> b!2009910 m!2440083))

(declare-fun m!2442751 () Bool)

(assert (=> b!2009910 m!2442751))

(assert (=> b!2009910 m!2442751))

(declare-fun m!2442753 () Bool)

(assert (=> b!2009910 m!2442753))

(assert (=> b!2009910 m!2440083))

(declare-fun m!2442755 () Bool)

(assert (=> b!2009910 m!2442755))

(assert (=> b!2009910 m!2442753))

(assert (=> b!2009910 m!2442755))

(declare-fun m!2442757 () Bool)

(assert (=> b!2009910 m!2442757))

(assert (=> b!2009904 m!2440083))

(assert (=> b!2009904 m!2442751))

(declare-fun m!2442759 () Bool)

(assert (=> b!2009917 m!2442759))

(assert (=> d!613967 m!2440083))

(declare-fun m!2442761 () Bool)

(assert (=> d!613967 m!2442761))

(declare-fun m!2442763 () Bool)

(assert (=> d!613967 m!2442763))

(assert (=> bm!122932 m!2440083))

(assert (=> bm!122932 m!2442761))

(assert (=> b!2009915 m!2440083))

(assert (=> b!2009915 m!2442751))

(assert (=> b!2009908 m!2440083))

(assert (=> b!2009908 m!2442755))

(assert (=> b!2009908 m!2442755))

(declare-fun m!2442765 () Bool)

(assert (=> b!2009908 m!2442765))

(assert (=> b!2009907 m!2440083))

(assert (=> b!2009907 m!2442755))

(assert (=> b!2009907 m!2442755))

(assert (=> b!2009907 m!2442765))

(assert (=> b!2007939 d!613967))

(assert (=> b!2007939 d!613465))

(assert (=> b!2007939 d!613137))

(declare-fun d!613969 () Bool)

(assert (=> d!613969 (= (list!8981 (charsOf!2500 (h!27463 tokens!598))) (list!8983 (c!324302 (charsOf!2500 (h!27463 tokens!598)))))))

(declare-fun bs!419774 () Bool)

(assert (= bs!419774 d!613969))

(declare-fun m!2442767 () Bool)

(assert (=> bs!419774 m!2442767))

(assert (=> b!2007939 d!613969))

(assert (=> b!2007939 d!613147))

(declare-fun bm!122933 () Bool)

(declare-fun call!122938 () Option!4602)

(assert (=> bm!122933 (= call!122938 (maxPrefixOneRule!1244 thiss!23328 (h!27464 (t!187322 rules!3198)) (++!5953 lt!754035 lt!754023)))))

(declare-fun b!2009918 () Bool)

(declare-fun e!1269914 () Bool)

(declare-fun lt!754659 () Option!4602)

(assert (=> b!2009918 (= e!1269914 (contains!4032 (t!187322 rules!3198) (rule!6185 (_1!11834 (get!6973 lt!754659)))))))

(declare-fun b!2009919 () Bool)

(declare-fun res!881469 () Bool)

(assert (=> b!2009919 (=> (not res!881469) (not e!1269914))))

(assert (=> b!2009919 (= res!881469 (= (value!124451 (_1!11834 (get!6973 lt!754659))) (apply!5780 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754659)))) (seqFromList!2814 (originalCharacters!4767 (_1!11834 (get!6973 lt!754659)))))))))

(declare-fun b!2009921 () Bool)

(declare-fun e!1269915 () Bool)

(assert (=> b!2009921 (= e!1269915 e!1269914)))

(declare-fun res!881472 () Bool)

(assert (=> b!2009921 (=> (not res!881472) (not e!1269914))))

(assert (=> b!2009921 (= res!881472 (isDefined!3890 lt!754659))))

(declare-fun b!2009922 () Bool)

(declare-fun res!881471 () Bool)

(assert (=> b!2009922 (=> (not res!881471) (not e!1269914))))

(assert (=> b!2009922 (= res!881471 (= (++!5953 (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754659)))) (_2!11834 (get!6973 lt!754659))) (++!5953 lt!754035 lt!754023)))))

(declare-fun b!2009923 () Bool)

(declare-fun e!1269913 () Option!4602)

(declare-fun lt!754662 () Option!4602)

(declare-fun lt!754661 () Option!4602)

(assert (=> b!2009923 (= e!1269913 (ite (and ((_ is None!4601) lt!754662) ((_ is None!4601) lt!754661)) None!4601 (ite ((_ is None!4601) lt!754661) lt!754662 (ite ((_ is None!4601) lt!754662) lt!754661 (ite (>= (size!17246 (_1!11834 (v!26838 lt!754662))) (size!17246 (_1!11834 (v!26838 lt!754661)))) lt!754662 lt!754661)))))))

(assert (=> b!2009923 (= lt!754662 call!122938)))

(assert (=> b!2009923 (= lt!754661 (maxPrefix!2009 thiss!23328 (t!187322 (t!187322 rules!3198)) (++!5953 lt!754035 lt!754023)))))

(declare-fun b!2009924 () Bool)

(declare-fun res!881467 () Bool)

(assert (=> b!2009924 (=> (not res!881467) (not e!1269914))))

(assert (=> b!2009924 (= res!881467 (= (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754659)))) (originalCharacters!4767 (_1!11834 (get!6973 lt!754659)))))))

(declare-fun d!613971 () Bool)

(assert (=> d!613971 e!1269915))

(declare-fun res!881470 () Bool)

(assert (=> d!613971 (=> res!881470 e!1269915)))

(assert (=> d!613971 (= res!881470 (isEmpty!13684 lt!754659))))

(assert (=> d!613971 (= lt!754659 e!1269913)))

(declare-fun c!324727 () Bool)

(assert (=> d!613971 (= c!324727 (and ((_ is Cons!22063) (t!187322 rules!3198)) ((_ is Nil!22063) (t!187322 (t!187322 rules!3198)))))))

(declare-fun lt!754660 () Unit!36620)

(declare-fun lt!754663 () Unit!36620)

(assert (=> d!613971 (= lt!754660 lt!754663)))

(assert (=> d!613971 (isPrefix!1962 (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023))))

(assert (=> d!613971 (= lt!754663 (lemmaIsPrefixRefl!1280 (++!5953 lt!754035 lt!754023) (++!5953 lt!754035 lt!754023)))))

(assert (=> d!613971 (rulesValidInductive!1361 thiss!23328 (t!187322 rules!3198))))

(assert (=> d!613971 (= (maxPrefix!2009 thiss!23328 (t!187322 rules!3198) (++!5953 lt!754035 lt!754023)) lt!754659)))

(declare-fun b!2009920 () Bool)

(declare-fun res!881466 () Bool)

(assert (=> b!2009920 (=> (not res!881466) (not e!1269914))))

(assert (=> b!2009920 (= res!881466 (< (size!17248 (_2!11834 (get!6973 lt!754659))) (size!17248 (++!5953 lt!754035 lt!754023))))))

(declare-fun b!2009925 () Bool)

(assert (=> b!2009925 (= e!1269913 call!122938)))

(declare-fun b!2009926 () Bool)

(declare-fun res!881468 () Bool)

(assert (=> b!2009926 (=> (not res!881468) (not e!1269914))))

(assert (=> b!2009926 (= res!881468 (matchR!2651 (regex!3960 (rule!6185 (_1!11834 (get!6973 lt!754659)))) (list!8981 (charsOf!2500 (_1!11834 (get!6973 lt!754659))))))))

(assert (= (and d!613971 c!324727) b!2009925))

(assert (= (and d!613971 (not c!324727)) b!2009923))

(assert (= (or b!2009925 b!2009923) bm!122933))

(assert (= (and d!613971 (not res!881470)) b!2009921))

(assert (= (and b!2009921 res!881472) b!2009924))

(assert (= (and b!2009924 res!881467) b!2009920))

(assert (= (and b!2009920 res!881466) b!2009922))

(assert (= (and b!2009922 res!881471) b!2009919))

(assert (= (and b!2009919 res!881469) b!2009926))

(assert (= (and b!2009926 res!881468) b!2009918))

(declare-fun m!2442769 () Bool)

(assert (=> b!2009921 m!2442769))

(declare-fun m!2442771 () Bool)

(assert (=> b!2009922 m!2442771))

(declare-fun m!2442773 () Bool)

(assert (=> b!2009922 m!2442773))

(assert (=> b!2009922 m!2442773))

(declare-fun m!2442775 () Bool)

(assert (=> b!2009922 m!2442775))

(assert (=> b!2009922 m!2442775))

(declare-fun m!2442777 () Bool)

(assert (=> b!2009922 m!2442777))

(assert (=> bm!122933 m!2440037))

(declare-fun m!2442779 () Bool)

(assert (=> bm!122933 m!2442779))

(assert (=> b!2009919 m!2442771))

(declare-fun m!2442781 () Bool)

(assert (=> b!2009919 m!2442781))

(assert (=> b!2009919 m!2442781))

(declare-fun m!2442783 () Bool)

(assert (=> b!2009919 m!2442783))

(declare-fun m!2442785 () Bool)

(assert (=> d!613971 m!2442785))

(assert (=> d!613971 m!2440037))

(assert (=> d!613971 m!2440037))

(assert (=> d!613971 m!2440329))

(assert (=> d!613971 m!2440037))

(assert (=> d!613971 m!2440037))

(assert (=> d!613971 m!2440331))

(assert (=> d!613971 m!2441117))

(assert (=> b!2009918 m!2442771))

(declare-fun m!2442787 () Bool)

(assert (=> b!2009918 m!2442787))

(assert (=> b!2009923 m!2440037))

(declare-fun m!2442789 () Bool)

(assert (=> b!2009923 m!2442789))

(assert (=> b!2009920 m!2442771))

(declare-fun m!2442791 () Bool)

(assert (=> b!2009920 m!2442791))

(assert (=> b!2009920 m!2440037))

(assert (=> b!2009920 m!2440341))

(assert (=> b!2009926 m!2442771))

(assert (=> b!2009926 m!2442773))

(assert (=> b!2009926 m!2442773))

(assert (=> b!2009926 m!2442775))

(assert (=> b!2009926 m!2442775))

(declare-fun m!2442793 () Bool)

(assert (=> b!2009926 m!2442793))

(assert (=> b!2009924 m!2442771))

(assert (=> b!2009924 m!2442773))

(assert (=> b!2009924 m!2442773))

(assert (=> b!2009924 m!2442775))

(assert (=> b!2008165 d!613971))

(declare-fun bs!419775 () Bool)

(declare-fun d!613973 () Bool)

(assert (= bs!419775 (and d!613973 d!613077)))

(declare-fun lambda!76081 () Int)

(assert (=> bs!419775 (= (and (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (= lambda!76081 lambda!76027))))

(declare-fun bs!419776 () Bool)

(assert (= bs!419776 (and d!613973 d!613893)))

(assert (=> bs!419776 (= (and (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 separatorToken!354))))) (= lambda!76081 lambda!76077))))

(declare-fun bs!419777 () Bool)

(assert (= bs!419777 (and d!613973 d!613937)))

(assert (=> bs!419777 (= (and (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) (= (toValue!5625 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))))) (= lambda!76081 lambda!76079))))

(assert (=> d!613973 true))

(assert (=> d!613973 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10854 order!14001 lambda!76081))))

(assert (=> d!613973 true))

(assert (=> d!613973 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (dynLambda!10854 order!14001 lambda!76081))))

(assert (=> d!613973 (= (semiInverseModEq!1587 (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toValue!5625 (transformation!3960 (h!27464 rules!3198)))) (Forall!1016 lambda!76081))))

(declare-fun bs!419778 () Bool)

(assert (= bs!419778 d!613973))

(declare-fun m!2442795 () Bool)

(assert (=> bs!419778 m!2442795))

(assert (=> d!613263 d!613973))

(assert (=> bm!122796 d!613705))

(declare-fun b!2009929 () Bool)

(declare-fun res!881473 () Bool)

(declare-fun e!1269917 () Bool)

(assert (=> b!2009929 (=> (not res!881473) (not e!1269917))))

(declare-fun lt!754664 () List!22143)

(assert (=> b!2009929 (= res!881473 (= (size!17248 lt!754664) (+ (size!17248 (ite c!324405 call!122811 call!122810)) (size!17248 (ite c!324405 call!122810 call!122811)))))))

(declare-fun b!2009930 () Bool)

(assert (=> b!2009930 (= e!1269917 (or (not (= (ite c!324405 call!122810 call!122811) Nil!22061)) (= lt!754664 (ite c!324405 call!122811 call!122810))))))

(declare-fun d!613975 () Bool)

(assert (=> d!613975 e!1269917))

(declare-fun res!881474 () Bool)

(assert (=> d!613975 (=> (not res!881474) (not e!1269917))))

(assert (=> d!613975 (= res!881474 (= (content!3231 lt!754664) ((_ map or) (content!3231 (ite c!324405 call!122811 call!122810)) (content!3231 (ite c!324405 call!122810 call!122811)))))))

(declare-fun e!1269916 () List!22143)

(assert (=> d!613975 (= lt!754664 e!1269916)))

(declare-fun c!324728 () Bool)

(assert (=> d!613975 (= c!324728 ((_ is Nil!22061) (ite c!324405 call!122811 call!122810)))))

(assert (=> d!613975 (= (++!5953 (ite c!324405 call!122811 call!122810) (ite c!324405 call!122810 call!122811)) lt!754664)))

(declare-fun b!2009928 () Bool)

(assert (=> b!2009928 (= e!1269916 (Cons!22061 (h!27462 (ite c!324405 call!122811 call!122810)) (++!5953 (t!187320 (ite c!324405 call!122811 call!122810)) (ite c!324405 call!122810 call!122811))))))

(declare-fun b!2009927 () Bool)

(assert (=> b!2009927 (= e!1269916 (ite c!324405 call!122810 call!122811))))

(assert (= (and d!613975 c!324728) b!2009927))

(assert (= (and d!613975 (not c!324728)) b!2009928))

(assert (= (and d!613975 res!881474) b!2009929))

(assert (= (and b!2009929 res!881473) b!2009930))

(declare-fun m!2442797 () Bool)

(assert (=> b!2009929 m!2442797))

(declare-fun m!2442799 () Bool)

(assert (=> b!2009929 m!2442799))

(declare-fun m!2442801 () Bool)

(assert (=> b!2009929 m!2442801))

(declare-fun m!2442803 () Bool)

(assert (=> d!613975 m!2442803))

(declare-fun m!2442805 () Bool)

(assert (=> d!613975 m!2442805))

(declare-fun m!2442807 () Bool)

(assert (=> d!613975 m!2442807))

(declare-fun m!2442809 () Bool)

(assert (=> b!2009928 m!2442809))

(assert (=> bm!122807 d!613975))

(declare-fun d!613977 () Bool)

(assert (=> d!613977 (= (isEmpty!13686 (originalCharacters!4767 (h!27463 tokens!598))) ((_ is Nil!22061) (originalCharacters!4767 (h!27463 tokens!598))))))

(assert (=> d!613155 d!613977))

(declare-fun d!613979 () Bool)

(assert (=> d!613979 (= (inv!17 (value!124451 (h!27463 tokens!598))) (= (charsToBigInt!1 (text!29120 (value!124451 (h!27463 tokens!598)))) (value!124443 (value!124451 (h!27463 tokens!598)))))))

(declare-fun bs!419779 () Bool)

(assert (= bs!419779 d!613979))

(declare-fun m!2442811 () Bool)

(assert (=> bs!419779 m!2442811))

(assert (=> b!2008536 d!613979))

(declare-fun b!2009933 () Bool)

(declare-fun e!1269920 () Bool)

(assert (=> b!2009933 (= e!1269920 true)))

(declare-fun b!2009932 () Bool)

(declare-fun e!1269919 () Bool)

(assert (=> b!2009932 (= e!1269919 e!1269920)))

(declare-fun b!2009931 () Bool)

(declare-fun e!1269918 () Bool)

(assert (=> b!2009931 (= e!1269918 e!1269919)))

(assert (=> b!2008083 e!1269918))

(assert (= b!2009932 b!2009933))

(assert (= b!2009931 b!2009932))

(assert (= (and b!2008083 ((_ is Cons!22063) (t!187322 rules!3198))) b!2009931))

(assert (=> b!2009933 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198))))) (dynLambda!10858 order!14005 lambda!76030))))

(assert (=> b!2009933 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198))))) (dynLambda!10858 order!14005 lambda!76030))))

(declare-fun tp!599391 () Bool)

(declare-fun e!1269925 () Bool)

(declare-fun b!2009942 () Bool)

(declare-fun tp!599393 () Bool)

(assert (=> b!2009942 (= e!1269925 (and (inv!29223 (left!17553 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))))) tp!599393 (inv!29223 (right!17883 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))))) tp!599391))))

(declare-fun b!2009944 () Bool)

(declare-fun e!1269926 () Bool)

(declare-fun tp!599392 () Bool)

(assert (=> b!2009944 (= e!1269926 tp!599392)))

(declare-fun b!2009943 () Bool)

(declare-fun inv!29230 (IArray!14747) Bool)

(assert (=> b!2009943 (= e!1269925 (and (inv!29230 (xs!10269 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))))) e!1269926))))

(assert (=> b!2008188 (= tp!599151 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598))))) e!1269925))))

(assert (= (and b!2008188 ((_ is Node!7371) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))))) b!2009942))

(assert (= b!2009943 b!2009944))

(assert (= (and b!2008188 ((_ is Leaf!10814) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (value!124451 (h!27463 tokens!598)))))) b!2009943))

(declare-fun m!2442813 () Bool)

(assert (=> b!2009942 m!2442813))

(declare-fun m!2442815 () Bool)

(assert (=> b!2009942 m!2442815))

(declare-fun m!2442817 () Bool)

(assert (=> b!2009943 m!2442817))

(assert (=> b!2008188 m!2440367))

(declare-fun b!2009945 () Bool)

(declare-fun e!1269927 () Bool)

(declare-fun tp!599394 () Bool)

(assert (=> b!2009945 (= e!1269927 (and tp_is_empty!9181 tp!599394))))

(assert (=> b!2008706 (= tp!599259 e!1269927)))

(assert (= (and b!2008706 ((_ is Cons!22061) (t!187320 (originalCharacters!4767 separatorToken!354)))) b!2009945))

(declare-fun b!2009946 () Bool)

(declare-fun e!1269928 () Bool)

(declare-fun tp!599395 () Bool)

(assert (=> b!2009946 (= e!1269928 (and tp_is_empty!9181 tp!599395))))

(assert (=> b!2008694 (= tp!599246 e!1269928)))

(assert (= (and b!2008694 ((_ is Cons!22061) (t!187320 (originalCharacters!4767 (h!27463 tokens!598))))) b!2009946))

(declare-fun e!1269929 () Bool)

(assert (=> b!2008689 (= tp!599243 e!1269929)))

(declare-fun b!2009947 () Bool)

(assert (=> b!2009947 (= e!1269929 tp_is_empty!9181)))

(declare-fun b!2009950 () Bool)

(declare-fun tp!599400 () Bool)

(declare-fun tp!599398 () Bool)

(assert (=> b!2009950 (= e!1269929 (and tp!599400 tp!599398))))

(declare-fun b!2009949 () Bool)

(declare-fun tp!599397 () Bool)

(assert (=> b!2009949 (= e!1269929 tp!599397)))

(declare-fun b!2009948 () Bool)

(declare-fun tp!599399 () Bool)

(declare-fun tp!599396 () Bool)

(assert (=> b!2009948 (= e!1269929 (and tp!599399 tp!599396))))

(assert (= (and b!2008689 ((_ is ElementMatch!5385) (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))))) b!2009947))

(assert (= (and b!2008689 ((_ is Concat!9482) (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))))) b!2009948))

(assert (= (and b!2008689 ((_ is Star!5385) (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))))) b!2009949))

(assert (= (and b!2008689 ((_ is Union!5385) (regOne!11283 (regex!3960 (rule!6185 separatorToken!354))))) b!2009950))

(declare-fun e!1269930 () Bool)

(assert (=> b!2008689 (= tp!599241 e!1269930)))

(declare-fun b!2009951 () Bool)

(assert (=> b!2009951 (= e!1269930 tp_is_empty!9181)))

(declare-fun b!2009954 () Bool)

(declare-fun tp!599405 () Bool)

(declare-fun tp!599403 () Bool)

(assert (=> b!2009954 (= e!1269930 (and tp!599405 tp!599403))))

(declare-fun b!2009953 () Bool)

(declare-fun tp!599402 () Bool)

(assert (=> b!2009953 (= e!1269930 tp!599402)))

(declare-fun b!2009952 () Bool)

(declare-fun tp!599404 () Bool)

(declare-fun tp!599401 () Bool)

(assert (=> b!2009952 (= e!1269930 (and tp!599404 tp!599401))))

(assert (= (and b!2008689 ((_ is ElementMatch!5385) (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))))) b!2009951))

(assert (= (and b!2008689 ((_ is Concat!9482) (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))))) b!2009952))

(assert (= (and b!2008689 ((_ is Star!5385) (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))))) b!2009953))

(assert (= (and b!2008689 ((_ is Union!5385) (regTwo!11283 (regex!3960 (rule!6185 separatorToken!354))))) b!2009954))

(declare-fun e!1269931 () Bool)

(assert (=> b!2008687 (= tp!599242 e!1269931)))

(declare-fun b!2009955 () Bool)

(assert (=> b!2009955 (= e!1269931 tp_is_empty!9181)))

(declare-fun b!2009958 () Bool)

(declare-fun tp!599410 () Bool)

(declare-fun tp!599408 () Bool)

(assert (=> b!2009958 (= e!1269931 (and tp!599410 tp!599408))))

(declare-fun b!2009957 () Bool)

(declare-fun tp!599407 () Bool)

(assert (=> b!2009957 (= e!1269931 tp!599407)))

(declare-fun b!2009956 () Bool)

(declare-fun tp!599409 () Bool)

(declare-fun tp!599406 () Bool)

(assert (=> b!2009956 (= e!1269931 (and tp!599409 tp!599406))))

(assert (= (and b!2008687 ((_ is ElementMatch!5385) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) b!2009955))

(assert (= (and b!2008687 ((_ is Concat!9482) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) b!2009956))

(assert (= (and b!2008687 ((_ is Star!5385) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) b!2009957))

(assert (= (and b!2008687 ((_ is Union!5385) (regOne!11282 (regex!3960 (rule!6185 separatorToken!354))))) b!2009958))

(declare-fun e!1269932 () Bool)

(assert (=> b!2008687 (= tp!599239 e!1269932)))

(declare-fun b!2009959 () Bool)

(assert (=> b!2009959 (= e!1269932 tp_is_empty!9181)))

(declare-fun b!2009962 () Bool)

(declare-fun tp!599415 () Bool)

(declare-fun tp!599413 () Bool)

(assert (=> b!2009962 (= e!1269932 (and tp!599415 tp!599413))))

(declare-fun b!2009961 () Bool)

(declare-fun tp!599412 () Bool)

(assert (=> b!2009961 (= e!1269932 tp!599412)))

(declare-fun b!2009960 () Bool)

(declare-fun tp!599414 () Bool)

(declare-fun tp!599411 () Bool)

(assert (=> b!2009960 (= e!1269932 (and tp!599414 tp!599411))))

(assert (= (and b!2008687 ((_ is ElementMatch!5385) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))) b!2009959))

(assert (= (and b!2008687 ((_ is Concat!9482) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))) b!2009960))

(assert (= (and b!2008687 ((_ is Star!5385) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))) b!2009961))

(assert (= (and b!2008687 ((_ is Union!5385) (regTwo!11282 (regex!3960 (rule!6185 separatorToken!354))))) b!2009962))

(declare-fun b!2009965 () Bool)

(declare-fun e!1269935 () Bool)

(assert (=> b!2009965 (= e!1269935 true)))

(declare-fun b!2009964 () Bool)

(declare-fun e!1269934 () Bool)

(assert (=> b!2009964 (= e!1269934 e!1269935)))

(declare-fun b!2009963 () Bool)

(declare-fun e!1269933 () Bool)

(assert (=> b!2009963 (= e!1269933 e!1269934)))

(assert (=> b!2008360 e!1269933))

(assert (= b!2009964 b!2009965))

(assert (= b!2009963 b!2009964))

(assert (= (and b!2008360 ((_ is Cons!22063) (t!187322 rules!3198))) b!2009963))

(assert (=> b!2009965 (< (dynLambda!10853 order!13999 (toValue!5625 (transformation!3960 (h!27464 (t!187322 rules!3198))))) (dynLambda!10858 order!14005 lambda!76045))))

(assert (=> b!2009965 (< (dynLambda!10855 order!14003 (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198))))) (dynLambda!10858 order!14005 lambda!76045))))

(declare-fun e!1269936 () Bool)

(assert (=> b!2008688 (= tp!599240 e!1269936)))

(declare-fun b!2009966 () Bool)

(assert (=> b!2009966 (= e!1269936 tp_is_empty!9181)))

(declare-fun b!2009969 () Bool)

(declare-fun tp!599420 () Bool)

(declare-fun tp!599418 () Bool)

(assert (=> b!2009969 (= e!1269936 (and tp!599420 tp!599418))))

(declare-fun b!2009968 () Bool)

(declare-fun tp!599417 () Bool)

(assert (=> b!2009968 (= e!1269936 tp!599417)))

(declare-fun b!2009967 () Bool)

(declare-fun tp!599419 () Bool)

(declare-fun tp!599416 () Bool)

(assert (=> b!2009967 (= e!1269936 (and tp!599419 tp!599416))))

(assert (= (and b!2008688 ((_ is ElementMatch!5385) (reg!5714 (regex!3960 (rule!6185 separatorToken!354))))) b!2009966))

(assert (= (and b!2008688 ((_ is Concat!9482) (reg!5714 (regex!3960 (rule!6185 separatorToken!354))))) b!2009967))

(assert (= (and b!2008688 ((_ is Star!5385) (reg!5714 (regex!3960 (rule!6185 separatorToken!354))))) b!2009968))

(assert (= (and b!2008688 ((_ is Union!5385) (reg!5714 (regex!3960 (rule!6185 separatorToken!354))))) b!2009969))

(declare-fun tp!599423 () Bool)

(declare-fun tp!599421 () Bool)

(declare-fun b!2009970 () Bool)

(declare-fun e!1269937 () Bool)

(assert (=> b!2009970 (= e!1269937 (and (inv!29223 (left!17553 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))))) tp!599423 (inv!29223 (right!17883 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))))) tp!599421))))

(declare-fun b!2009972 () Bool)

(declare-fun e!1269938 () Bool)

(declare-fun tp!599422 () Bool)

(assert (=> b!2009972 (= e!1269938 tp!599422)))

(declare-fun b!2009971 () Bool)

(assert (=> b!2009971 (= e!1269937 (and (inv!29230 (xs!10269 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))))) e!1269938))))

(assert (=> b!2008169 (= tp!599150 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354)))) e!1269937))))

(assert (= (and b!2008169 ((_ is Node!7371) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))))) b!2009970))

(assert (= b!2009971 b!2009972))

(assert (= (and b!2008169 ((_ is Leaf!10814) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (value!124451 separatorToken!354))))) b!2009971))

(declare-fun m!2442819 () Bool)

(assert (=> b!2009970 m!2442819))

(declare-fun m!2442821 () Bool)

(assert (=> b!2009970 m!2442821))

(declare-fun m!2442823 () Bool)

(assert (=> b!2009971 m!2442823))

(assert (=> b!2008169 m!2440345))

(declare-fun e!1269939 () Bool)

(assert (=> b!2008670 (= tp!599220 e!1269939)))

(declare-fun b!2009973 () Bool)

(assert (=> b!2009973 (= e!1269939 tp_is_empty!9181)))

(declare-fun b!2009976 () Bool)

(declare-fun tp!599428 () Bool)

(declare-fun tp!599426 () Bool)

(assert (=> b!2009976 (= e!1269939 (and tp!599428 tp!599426))))

(declare-fun b!2009975 () Bool)

(declare-fun tp!599425 () Bool)

(assert (=> b!2009975 (= e!1269939 tp!599425)))

(declare-fun b!2009974 () Bool)

(declare-fun tp!599427 () Bool)

(declare-fun tp!599424 () Bool)

(assert (=> b!2009974 (= e!1269939 (and tp!599427 tp!599424))))

(assert (= (and b!2008670 ((_ is ElementMatch!5385) (regex!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) b!2009973))

(assert (= (and b!2008670 ((_ is Concat!9482) (regex!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) b!2009974))

(assert (= (and b!2008670 ((_ is Star!5385) (regex!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) b!2009975))

(assert (= (and b!2008670 ((_ is Union!5385) (regex!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) b!2009976))

(declare-fun e!1269940 () Bool)

(assert (=> b!2008710 (= tp!599264 e!1269940)))

(declare-fun b!2009977 () Bool)

(assert (=> b!2009977 (= e!1269940 tp_is_empty!9181)))

(declare-fun b!2009980 () Bool)

(declare-fun tp!599433 () Bool)

(declare-fun tp!599431 () Bool)

(assert (=> b!2009980 (= e!1269940 (and tp!599433 tp!599431))))

(declare-fun b!2009979 () Bool)

(declare-fun tp!599430 () Bool)

(assert (=> b!2009979 (= e!1269940 tp!599430)))

(declare-fun b!2009978 () Bool)

(declare-fun tp!599432 () Bool)

(declare-fun tp!599429 () Bool)

(assert (=> b!2009978 (= e!1269940 (and tp!599432 tp!599429))))

(assert (= (and b!2008710 ((_ is ElementMatch!5385) (regOne!11283 (regex!3960 (h!27464 rules!3198))))) b!2009977))

(assert (= (and b!2008710 ((_ is Concat!9482) (regOne!11283 (regex!3960 (h!27464 rules!3198))))) b!2009978))

(assert (= (and b!2008710 ((_ is Star!5385) (regOne!11283 (regex!3960 (h!27464 rules!3198))))) b!2009979))

(assert (= (and b!2008710 ((_ is Union!5385) (regOne!11283 (regex!3960 (h!27464 rules!3198))))) b!2009980))

(declare-fun e!1269941 () Bool)

(assert (=> b!2008710 (= tp!599262 e!1269941)))

(declare-fun b!2009981 () Bool)

(assert (=> b!2009981 (= e!1269941 tp_is_empty!9181)))

(declare-fun b!2009984 () Bool)

(declare-fun tp!599438 () Bool)

(declare-fun tp!599436 () Bool)

(assert (=> b!2009984 (= e!1269941 (and tp!599438 tp!599436))))

(declare-fun b!2009983 () Bool)

(declare-fun tp!599435 () Bool)

(assert (=> b!2009983 (= e!1269941 tp!599435)))

(declare-fun b!2009982 () Bool)

(declare-fun tp!599437 () Bool)

(declare-fun tp!599434 () Bool)

(assert (=> b!2009982 (= e!1269941 (and tp!599437 tp!599434))))

(assert (= (and b!2008710 ((_ is ElementMatch!5385) (regTwo!11283 (regex!3960 (h!27464 rules!3198))))) b!2009981))

(assert (= (and b!2008710 ((_ is Concat!9482) (regTwo!11283 (regex!3960 (h!27464 rules!3198))))) b!2009982))

(assert (= (and b!2008710 ((_ is Star!5385) (regTwo!11283 (regex!3960 (h!27464 rules!3198))))) b!2009983))

(assert (= (and b!2008710 ((_ is Union!5385) (regTwo!11283 (regex!3960 (h!27464 rules!3198))))) b!2009984))

(declare-fun b!2009985 () Bool)

(declare-fun e!1269942 () Bool)

(declare-fun tp!599439 () Bool)

(assert (=> b!2009985 (= e!1269942 (and tp_is_empty!9181 tp!599439))))

(assert (=> b!2008669 (= tp!599221 e!1269942)))

(assert (= (and b!2008669 ((_ is Cons!22061) (originalCharacters!4767 (h!27463 (t!187321 tokens!598))))) b!2009985))

(declare-fun b!2009989 () Bool)

(declare-fun b_free!56021 () Bool)

(declare-fun b_next!56725 () Bool)

(assert (=> b!2009989 (= b_free!56021 (not b_next!56725))))

(declare-fun t!187604 () Bool)

(declare-fun tb!125601 () Bool)

(assert (=> (and b!2009989 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187604) tb!125601))

(declare-fun result!150496 () Bool)

(assert (= result!150496 result!150212))

(assert (=> d!613149 t!187604))

(declare-fun t!187606 () Bool)

(declare-fun tb!125603 () Bool)

(assert (=> (and b!2009989 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187606) tb!125603))

(declare-fun result!150498 () Bool)

(assert (= result!150498 result!150348))

(assert (=> d!613345 t!187606))

(declare-fun tb!125605 () Bool)

(declare-fun t!187608 () Bool)

(assert (=> (and b!2009989 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187608) tb!125605))

(declare-fun result!150500 () Bool)

(assert (= result!150500 result!150378))

(assert (=> d!613443 t!187608))

(declare-fun t!187610 () Bool)

(declare-fun tb!125607 () Bool)

(assert (=> (and b!2009989 (= (toValue!5625 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187610) tb!125607))

(declare-fun result!150502 () Bool)

(assert (= result!150502 result!150246))

(assert (=> d!613149 t!187610))

(assert (=> d!613077 t!187604))

(declare-fun tp!599443 () Bool)

(declare-fun b_and!158801 () Bool)

(assert (=> b!2009989 (= tp!599443 (and (=> t!187606 result!150498) (=> t!187608 result!150500) (=> t!187604 result!150496) (=> t!187610 result!150502) b_and!158801))))

(declare-fun b_free!56023 () Bool)

(declare-fun b_next!56727 () Bool)

(assert (=> b!2009989 (= b_free!56023 (not b_next!56727))))

(declare-fun t!187612 () Bool)

(declare-fun tb!125609 () Bool)

(assert (=> (and b!2009989 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) t!187612) tb!125609))

(declare-fun result!150504 () Bool)

(assert (= result!150504 result!150418))

(assert (=> d!613877 t!187612))

(declare-fun t!187614 () Bool)

(declare-fun tb!125611 () Bool)

(assert (=> (and b!2009989 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187614) tb!125611))

(declare-fun result!150506 () Bool)

(assert (= result!150506 result!150240))

(assert (=> d!613137 t!187614))

(assert (=> b!2008269 t!187614))

(declare-fun tb!125613 () Bool)

(declare-fun t!187616 () Bool)

(assert (=> (and b!2009989 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) t!187616) tb!125613))

(declare-fun result!150508 () Bool)

(assert (= result!150508 result!150234))

(assert (=> d!613131 t!187616))

(declare-fun t!187618 () Bool)

(declare-fun tb!125615 () Bool)

(assert (=> (and b!2009989 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187618) tb!125615))

(declare-fun result!150510 () Bool)

(assert (= result!150510 result!150408))

(assert (=> d!613501 t!187618))

(declare-fun t!187620 () Bool)

(declare-fun tb!125617 () Bool)

(assert (=> (and b!2009989 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187620) tb!125617))

(declare-fun result!150512 () Bool)

(assert (= result!150512 result!150204))

(assert (=> d!613077 t!187620))

(declare-fun t!187622 () Bool)

(declare-fun tb!125619 () Bool)

(assert (=> (and b!2009989 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))) t!187622) tb!125619))

(declare-fun result!150514 () Bool)

(assert (= result!150514 result!150388))

(assert (=> d!613451 t!187622))

(assert (=> b!2008612 t!187616))

(assert (=> b!2009166 t!187612))

(declare-fun t!187624 () Bool)

(declare-fun tb!125621 () Bool)

(assert (=> (and b!2009989 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187624) tb!125621))

(declare-fun result!150516 () Bool)

(assert (= result!150516 result!150398))

(assert (=> d!613469 t!187624))

(declare-fun tp!599444 () Bool)

(declare-fun b_and!158803 () Bool)

(assert (=> b!2009989 (= tp!599444 (and (=> t!187620 result!150512) (=> t!187624 result!150516) (=> t!187612 result!150504) (=> t!187618 result!150510) (=> t!187616 result!150508) (=> t!187614 result!150506) (=> t!187622 result!150514) b_and!158803))))

(declare-fun b!2009988 () Bool)

(declare-fun e!1269946 () Bool)

(declare-fun e!1269945 () Bool)

(declare-fun tp!599441 () Bool)

(assert (=> b!2009988 (= e!1269946 (and tp!599441 (inv!29216 (tag!4424 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (inv!29219 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) e!1269945))))

(declare-fun e!1269944 () Bool)

(declare-fun tp!599442 () Bool)

(declare-fun b!2009987 () Bool)

(assert (=> b!2009987 (= e!1269944 (and (inv!21 (value!124451 (h!27463 (t!187321 (t!187321 tokens!598))))) e!1269946 tp!599442))))

(declare-fun e!1269948 () Bool)

(declare-fun tp!599440 () Bool)

(declare-fun b!2009986 () Bool)

(assert (=> b!2009986 (= e!1269948 (and (inv!29220 (h!27463 (t!187321 (t!187321 tokens!598)))) e!1269944 tp!599440))))

(assert (=> b!2009989 (= e!1269945 (and tp!599443 tp!599444))))

(assert (=> b!2008668 (= tp!599219 e!1269948)))

(assert (= b!2009988 b!2009989))

(assert (= b!2009987 b!2009988))

(assert (= b!2009986 b!2009987))

(assert (= (and b!2008668 ((_ is Cons!22062) (t!187321 (t!187321 tokens!598)))) b!2009986))

(declare-fun m!2442825 () Bool)

(assert (=> b!2009988 m!2442825))

(declare-fun m!2442827 () Bool)

(assert (=> b!2009988 m!2442827))

(declare-fun m!2442829 () Bool)

(assert (=> b!2009987 m!2442829))

(declare-fun m!2442831 () Bool)

(assert (=> b!2009986 m!2442831))

(declare-fun e!1269949 () Bool)

(assert (=> b!2008709 (= tp!599261 e!1269949)))

(declare-fun b!2009990 () Bool)

(assert (=> b!2009990 (= e!1269949 tp_is_empty!9181)))

(declare-fun b!2009993 () Bool)

(declare-fun tp!599449 () Bool)

(declare-fun tp!599447 () Bool)

(assert (=> b!2009993 (= e!1269949 (and tp!599449 tp!599447))))

(declare-fun b!2009992 () Bool)

(declare-fun tp!599446 () Bool)

(assert (=> b!2009992 (= e!1269949 tp!599446)))

(declare-fun b!2009991 () Bool)

(declare-fun tp!599448 () Bool)

(declare-fun tp!599445 () Bool)

(assert (=> b!2009991 (= e!1269949 (and tp!599448 tp!599445))))

(assert (= (and b!2008709 ((_ is ElementMatch!5385) (reg!5714 (regex!3960 (h!27464 rules!3198))))) b!2009990))

(assert (= (and b!2008709 ((_ is Concat!9482) (reg!5714 (regex!3960 (h!27464 rules!3198))))) b!2009991))

(assert (= (and b!2008709 ((_ is Star!5385) (reg!5714 (regex!3960 (h!27464 rules!3198))))) b!2009992))

(assert (= (and b!2008709 ((_ is Union!5385) (reg!5714 (regex!3960 (h!27464 rules!3198))))) b!2009993))

(declare-fun e!1269950 () Bool)

(assert (=> b!2008708 (= tp!599263 e!1269950)))

(declare-fun b!2009994 () Bool)

(assert (=> b!2009994 (= e!1269950 tp_is_empty!9181)))

(declare-fun b!2009997 () Bool)

(declare-fun tp!599454 () Bool)

(declare-fun tp!599452 () Bool)

(assert (=> b!2009997 (= e!1269950 (and tp!599454 tp!599452))))

(declare-fun b!2009996 () Bool)

(declare-fun tp!599451 () Bool)

(assert (=> b!2009996 (= e!1269950 tp!599451)))

(declare-fun b!2009995 () Bool)

(declare-fun tp!599453 () Bool)

(declare-fun tp!599450 () Bool)

(assert (=> b!2009995 (= e!1269950 (and tp!599453 tp!599450))))

(assert (= (and b!2008708 ((_ is ElementMatch!5385) (regOne!11282 (regex!3960 (h!27464 rules!3198))))) b!2009994))

(assert (= (and b!2008708 ((_ is Concat!9482) (regOne!11282 (regex!3960 (h!27464 rules!3198))))) b!2009995))

(assert (= (and b!2008708 ((_ is Star!5385) (regOne!11282 (regex!3960 (h!27464 rules!3198))))) b!2009996))

(assert (= (and b!2008708 ((_ is Union!5385) (regOne!11282 (regex!3960 (h!27464 rules!3198))))) b!2009997))

(declare-fun e!1269951 () Bool)

(assert (=> b!2008708 (= tp!599260 e!1269951)))

(declare-fun b!2009998 () Bool)

(assert (=> b!2009998 (= e!1269951 tp_is_empty!9181)))

(declare-fun b!2010001 () Bool)

(declare-fun tp!599459 () Bool)

(declare-fun tp!599457 () Bool)

(assert (=> b!2010001 (= e!1269951 (and tp!599459 tp!599457))))

(declare-fun b!2010000 () Bool)

(declare-fun tp!599456 () Bool)

(assert (=> b!2010000 (= e!1269951 tp!599456)))

(declare-fun b!2009999 () Bool)

(declare-fun tp!599458 () Bool)

(declare-fun tp!599455 () Bool)

(assert (=> b!2009999 (= e!1269951 (and tp!599458 tp!599455))))

(assert (= (and b!2008708 ((_ is ElementMatch!5385) (regTwo!11282 (regex!3960 (h!27464 rules!3198))))) b!2009998))

(assert (= (and b!2008708 ((_ is Concat!9482) (regTwo!11282 (regex!3960 (h!27464 rules!3198))))) b!2009999))

(assert (= (and b!2008708 ((_ is Star!5385) (regTwo!11282 (regex!3960 (h!27464 rules!3198))))) b!2010000))

(assert (= (and b!2008708 ((_ is Union!5385) (regTwo!11282 (regex!3960 (h!27464 rules!3198))))) b!2010001))

(declare-fun e!1269952 () Bool)

(assert (=> b!2008685 (= tp!599238 e!1269952)))

(declare-fun b!2010002 () Bool)

(assert (=> b!2010002 (= e!1269952 tp_is_empty!9181)))

(declare-fun b!2010005 () Bool)

(declare-fun tp!599464 () Bool)

(declare-fun tp!599462 () Bool)

(assert (=> b!2010005 (= e!1269952 (and tp!599464 tp!599462))))

(declare-fun b!2010004 () Bool)

(declare-fun tp!599461 () Bool)

(assert (=> b!2010004 (= e!1269952 tp!599461)))

(declare-fun b!2010003 () Bool)

(declare-fun tp!599463 () Bool)

(declare-fun tp!599460 () Bool)

(assert (=> b!2010003 (= e!1269952 (and tp!599463 tp!599460))))

(assert (= (and b!2008685 ((_ is ElementMatch!5385) (regOne!11283 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010002))

(assert (= (and b!2008685 ((_ is Concat!9482) (regOne!11283 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010003))

(assert (= (and b!2008685 ((_ is Star!5385) (regOne!11283 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010004))

(assert (= (and b!2008685 ((_ is Union!5385) (regOne!11283 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010005))

(declare-fun e!1269953 () Bool)

(assert (=> b!2008685 (= tp!599236 e!1269953)))

(declare-fun b!2010006 () Bool)

(assert (=> b!2010006 (= e!1269953 tp_is_empty!9181)))

(declare-fun b!2010009 () Bool)

(declare-fun tp!599469 () Bool)

(declare-fun tp!599467 () Bool)

(assert (=> b!2010009 (= e!1269953 (and tp!599469 tp!599467))))

(declare-fun b!2010008 () Bool)

(declare-fun tp!599466 () Bool)

(assert (=> b!2010008 (= e!1269953 tp!599466)))

(declare-fun b!2010007 () Bool)

(declare-fun tp!599468 () Bool)

(declare-fun tp!599465 () Bool)

(assert (=> b!2010007 (= e!1269953 (and tp!599468 tp!599465))))

(assert (= (and b!2008685 ((_ is ElementMatch!5385) (regTwo!11283 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010006))

(assert (= (and b!2008685 ((_ is Concat!9482) (regTwo!11283 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010007))

(assert (= (and b!2008685 ((_ is Star!5385) (regTwo!11283 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010008))

(assert (= (and b!2008685 ((_ is Union!5385) (regTwo!11283 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010009))

(declare-fun e!1269954 () Bool)

(assert (=> b!2008704 (= tp!599257 e!1269954)))

(declare-fun b!2010010 () Bool)

(assert (=> b!2010010 (= e!1269954 tp_is_empty!9181)))

(declare-fun b!2010013 () Bool)

(declare-fun tp!599474 () Bool)

(declare-fun tp!599472 () Bool)

(assert (=> b!2010013 (= e!1269954 (and tp!599474 tp!599472))))

(declare-fun b!2010012 () Bool)

(declare-fun tp!599471 () Bool)

(assert (=> b!2010012 (= e!1269954 tp!599471)))

(declare-fun b!2010011 () Bool)

(declare-fun tp!599473 () Bool)

(declare-fun tp!599470 () Bool)

(assert (=> b!2010011 (= e!1269954 (and tp!599473 tp!599470))))

(assert (= (and b!2008704 ((_ is ElementMatch!5385) (regex!3960 (h!27464 (t!187322 rules!3198))))) b!2010010))

(assert (= (and b!2008704 ((_ is Concat!9482) (regex!3960 (h!27464 (t!187322 rules!3198))))) b!2010011))

(assert (= (and b!2008704 ((_ is Star!5385) (regex!3960 (h!27464 (t!187322 rules!3198))))) b!2010012))

(assert (= (and b!2008704 ((_ is Union!5385) (regex!3960 (h!27464 (t!187322 rules!3198))))) b!2010013))

(declare-fun b!2010014 () Bool)

(declare-fun tp!599477 () Bool)

(declare-fun e!1269955 () Bool)

(declare-fun tp!599475 () Bool)

(assert (=> b!2010014 (= e!1269955 (and (inv!29223 (left!17553 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))))) tp!599477 (inv!29223 (right!17883 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))))) tp!599475))))

(declare-fun b!2010016 () Bool)

(declare-fun e!1269956 () Bool)

(declare-fun tp!599476 () Bool)

(assert (=> b!2010016 (= e!1269956 tp!599476)))

(declare-fun b!2010015 () Bool)

(assert (=> b!2010015 (= e!1269955 (and (inv!29230 (xs!10269 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))))) e!1269956))))

(assert (=> b!2008031 (= tp!599145 (and (inv!29223 (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026)))) e!1269955))))

(assert (= (and b!2008031 ((_ is Node!7371) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))))) b!2010014))

(assert (= b!2010015 b!2010016))

(assert (= (and b!2008031 ((_ is Leaf!10814) (c!324302 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))))) b!2010015))

(declare-fun m!2442833 () Bool)

(assert (=> b!2010014 m!2442833))

(declare-fun m!2442835 () Bool)

(assert (=> b!2010014 m!2442835))

(declare-fun m!2442837 () Bool)

(assert (=> b!2010015 m!2442837))

(assert (=> b!2008031 m!2440171))

(declare-fun e!1269957 () Bool)

(assert (=> b!2008684 (= tp!599235 e!1269957)))

(declare-fun b!2010017 () Bool)

(assert (=> b!2010017 (= e!1269957 tp_is_empty!9181)))

(declare-fun b!2010020 () Bool)

(declare-fun tp!599482 () Bool)

(declare-fun tp!599480 () Bool)

(assert (=> b!2010020 (= e!1269957 (and tp!599482 tp!599480))))

(declare-fun b!2010019 () Bool)

(declare-fun tp!599479 () Bool)

(assert (=> b!2010019 (= e!1269957 tp!599479)))

(declare-fun b!2010018 () Bool)

(declare-fun tp!599481 () Bool)

(declare-fun tp!599478 () Bool)

(assert (=> b!2010018 (= e!1269957 (and tp!599481 tp!599478))))

(assert (= (and b!2008684 ((_ is ElementMatch!5385) (reg!5714 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010017))

(assert (= (and b!2008684 ((_ is Concat!9482) (reg!5714 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010018))

(assert (= (and b!2008684 ((_ is Star!5385) (reg!5714 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010019))

(assert (= (and b!2008684 ((_ is Union!5385) (reg!5714 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010020))

(declare-fun e!1269958 () Bool)

(assert (=> b!2008683 (= tp!599237 e!1269958)))

(declare-fun b!2010021 () Bool)

(assert (=> b!2010021 (= e!1269958 tp_is_empty!9181)))

(declare-fun b!2010024 () Bool)

(declare-fun tp!599487 () Bool)

(declare-fun tp!599485 () Bool)

(assert (=> b!2010024 (= e!1269958 (and tp!599487 tp!599485))))

(declare-fun b!2010023 () Bool)

(declare-fun tp!599484 () Bool)

(assert (=> b!2010023 (= e!1269958 tp!599484)))

(declare-fun b!2010022 () Bool)

(declare-fun tp!599486 () Bool)

(declare-fun tp!599483 () Bool)

(assert (=> b!2010022 (= e!1269958 (and tp!599486 tp!599483))))

(assert (= (and b!2008683 ((_ is ElementMatch!5385) (regOne!11282 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010021))

(assert (= (and b!2008683 ((_ is Concat!9482) (regOne!11282 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010022))

(assert (= (and b!2008683 ((_ is Star!5385) (regOne!11282 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010023))

(assert (= (and b!2008683 ((_ is Union!5385) (regOne!11282 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010024))

(declare-fun e!1269959 () Bool)

(assert (=> b!2008683 (= tp!599234 e!1269959)))

(declare-fun b!2010025 () Bool)

(assert (=> b!2010025 (= e!1269959 tp_is_empty!9181)))

(declare-fun b!2010028 () Bool)

(declare-fun tp!599492 () Bool)

(declare-fun tp!599490 () Bool)

(assert (=> b!2010028 (= e!1269959 (and tp!599492 tp!599490))))

(declare-fun b!2010027 () Bool)

(declare-fun tp!599489 () Bool)

(assert (=> b!2010027 (= e!1269959 tp!599489)))

(declare-fun b!2010026 () Bool)

(declare-fun tp!599491 () Bool)

(declare-fun tp!599488 () Bool)

(assert (=> b!2010026 (= e!1269959 (and tp!599491 tp!599488))))

(assert (= (and b!2008683 ((_ is ElementMatch!5385) (regTwo!11282 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010025))

(assert (= (and b!2008683 ((_ is Concat!9482) (regTwo!11282 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010026))

(assert (= (and b!2008683 ((_ is Star!5385) (regTwo!11282 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010027))

(assert (= (and b!2008683 ((_ is Union!5385) (regTwo!11282 (regex!3960 (rule!6185 (h!27463 tokens!598)))))) b!2010028))

(declare-fun b!2010031 () Bool)

(declare-fun b_free!56025 () Bool)

(declare-fun b_next!56729 () Bool)

(assert (=> b!2010031 (= b_free!56025 (not b_next!56729))))

(declare-fun t!187626 () Bool)

(declare-fun tb!125623 () Bool)

(assert (=> (and b!2010031 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187626) tb!125623))

(declare-fun result!150518 () Bool)

(assert (= result!150518 result!150212))

(assert (=> d!613149 t!187626))

(declare-fun t!187628 () Bool)

(declare-fun tb!125625 () Bool)

(assert (=> (and b!2010031 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187628) tb!125625))

(declare-fun result!150520 () Bool)

(assert (= result!150520 result!150348))

(assert (=> d!613345 t!187628))

(declare-fun t!187630 () Bool)

(declare-fun tb!125627 () Bool)

(assert (=> (and b!2010031 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toValue!5625 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187630) tb!125627))

(declare-fun result!150522 () Bool)

(assert (= result!150522 result!150378))

(assert (=> d!613443 t!187630))

(declare-fun tb!125629 () Bool)

(declare-fun t!187632 () Bool)

(assert (=> (and b!2010031 (= (toValue!5625 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187632) tb!125629))

(declare-fun result!150524 () Bool)

(assert (= result!150524 result!150246))

(assert (=> d!613149 t!187632))

(assert (=> d!613077 t!187626))

(declare-fun b_and!158805 () Bool)

(declare-fun tp!599493 () Bool)

(assert (=> b!2010031 (= tp!599493 (and (=> t!187630 result!150522) (=> t!187632 result!150524) (=> t!187628 result!150520) (=> t!187626 result!150518) b_and!158805))))

(declare-fun b_free!56027 () Bool)

(declare-fun b_next!56731 () Bool)

(assert (=> b!2010031 (= b_free!56027 (not b_next!56731))))

(declare-fun t!187634 () Bool)

(declare-fun tb!125631 () Bool)

(assert (=> (and b!2010031 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598)))))) t!187634) tb!125631))

(declare-fun result!150526 () Bool)

(assert (= result!150526 result!150418))

(assert (=> d!613877 t!187634))

(declare-fun tb!125633 () Bool)

(declare-fun t!187636 () Bool)

(assert (=> (and b!2010031 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187636) tb!125633))

(declare-fun result!150528 () Bool)

(assert (= result!150528 result!150240))

(assert (=> d!613137 t!187636))

(assert (=> b!2008269 t!187636))

(declare-fun tb!125635 () Bool)

(declare-fun t!187638 () Bool)

(assert (=> (and b!2010031 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354)))) t!187638) tb!125635))

(declare-fun result!150530 () Bool)

(assert (= result!150530 result!150234))

(assert (=> d!613131 t!187638))

(declare-fun tb!125637 () Bool)

(declare-fun t!187640 () Bool)

(assert (=> (and b!2010031 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754144)))))) t!187640) tb!125637))

(declare-fun result!150532 () Bool)

(assert (= result!150532 result!150408))

(assert (=> d!613501 t!187640))

(declare-fun tb!125639 () Bool)

(declare-fun t!187642 () Bool)

(assert (=> (and b!2010031 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598))))) t!187642) tb!125639))

(declare-fun result!150534 () Bool)

(assert (= result!150534 result!150204))

(assert (=> d!613077 t!187642))

(declare-fun t!187644 () Bool)

(declare-fun tb!125641 () Bool)

(assert (=> (and b!2010031 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 (ite c!324333 (h!27463 (t!187321 tokens!598)) (ite c!324332 separatorToken!354 (h!27463 (t!187321 tokens!598)))))))) t!187644) tb!125641))

(declare-fun result!150536 () Bool)

(assert (= result!150536 result!150388))

(assert (=> d!613451 t!187644))

(assert (=> b!2008612 t!187638))

(assert (=> b!2009166 t!187634))

(declare-fun t!187646 () Bool)

(declare-fun tb!125643 () Bool)

(assert (=> (and b!2010031 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 (_1!11834 (get!6973 lt!754126)))))) t!187646) tb!125643))

(declare-fun result!150538 () Bool)

(assert (= result!150538 result!150398))

(assert (=> d!613469 t!187646))

(declare-fun b_and!158807 () Bool)

(declare-fun tp!599494 () Bool)

(assert (=> b!2010031 (= tp!599494 (and (=> t!187640 result!150532) (=> t!187634 result!150526) (=> t!187646 result!150538) (=> t!187644 result!150536) (=> t!187638 result!150530) (=> t!187636 result!150528) (=> t!187642 result!150534) b_and!158807))))

(declare-fun e!1269961 () Bool)

(assert (=> b!2010031 (= e!1269961 (and tp!599493 tp!599494))))

(declare-fun e!1269962 () Bool)

(declare-fun b!2010030 () Bool)

(declare-fun tp!599495 () Bool)

(assert (=> b!2010030 (= e!1269962 (and tp!599495 (inv!29216 (tag!4424 (h!27464 (t!187322 (t!187322 rules!3198))))) (inv!29219 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) e!1269961))))

(declare-fun b!2010029 () Bool)

(declare-fun e!1269960 () Bool)

(declare-fun tp!599496 () Bool)

(assert (=> b!2010029 (= e!1269960 (and e!1269962 tp!599496))))

(assert (=> b!2008703 (= tp!599258 e!1269960)))

(assert (= b!2010030 b!2010031))

(assert (= b!2010029 b!2010030))

(assert (= (and b!2008703 ((_ is Cons!22063) (t!187322 (t!187322 rules!3198)))) b!2010029))

(declare-fun m!2442839 () Bool)

(assert (=> b!2010030 m!2442839))

(declare-fun m!2442841 () Bool)

(assert (=> b!2010030 m!2442841))

(declare-fun b_lambda!67111 () Bool)

(assert (= b_lambda!67055 (or d!613077 b_lambda!67111)))

(declare-fun bs!419780 () Bool)

(declare-fun d!613981 () Bool)

(assert (= bs!419780 (and d!613981 d!613077)))

(assert (=> bs!419780 (= (dynLambda!10865 lambda!76027 lt!754026) (= (list!8981 (dynLambda!10856 (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026))) (list!8981 lt!754026)))))

(declare-fun b_lambda!67125 () Bool)

(assert (=> (not b_lambda!67125) (not bs!419780)))

(assert (=> bs!419780 t!187642))

(declare-fun b_and!158809 () Bool)

(assert (= b_and!158807 (and (=> t!187642 result!150534) b_and!158809)))

(assert (=> bs!419780 t!187330))

(declare-fun b_and!158811 () Bool)

(assert (= b_and!158797 (and (=> t!187330 result!150210) b_and!158811)))

(assert (=> bs!419780 t!187433))

(declare-fun b_and!158813 () Bool)

(assert (= b_and!158795 (and (=> t!187433 result!150326) b_and!158813)))

(assert (=> bs!419780 t!187328))

(declare-fun b_and!158815 () Bool)

(assert (= b_and!158791 (and (=> t!187328 result!150208) b_and!158815)))

(assert (=> bs!419780 t!187326))

(declare-fun b_and!158817 () Bool)

(assert (= b_and!158793 (and (=> t!187326 result!150204) b_and!158817)))

(assert (=> bs!419780 t!187620))

(declare-fun b_and!158819 () Bool)

(assert (= b_and!158803 (and (=> t!187620 result!150512) b_and!158819)))

(assert (=> bs!419780 t!187423))

(declare-fun b_and!158821 () Bool)

(assert (= b_and!158799 (and (=> t!187423 result!150310) b_and!158821)))

(declare-fun b_lambda!67127 () Bool)

(assert (=> (not b_lambda!67127) (not bs!419780)))

(assert (=> bs!419780 t!187332))

(declare-fun b_and!158823 () Bool)

(assert (= b_and!158649 (and (=> t!187332 result!150212) b_and!158823)))

(assert (=> bs!419780 t!187604))

(declare-fun b_and!158825 () Bool)

(assert (= b_and!158801 (and (=> t!187604 result!150496) b_and!158825)))

(assert (=> bs!419780 t!187334))

(declare-fun b_and!158827 () Bool)

(assert (= b_and!158653 (and (=> t!187334 result!150216) b_and!158827)))

(assert (=> bs!419780 t!187626))

(declare-fun b_and!158829 () Bool)

(assert (= b_and!158805 (and (=> t!187626 result!150518) b_and!158829)))

(assert (=> bs!419780 t!187336))

(declare-fun b_and!158831 () Bool)

(assert (= b_and!158651 (and (=> t!187336 result!150218) b_and!158831)))

(assert (=> bs!419780 t!187425))

(declare-fun b_and!158833 () Bool)

(assert (= b_and!158647 (and (=> t!187425 result!150318) b_and!158833)))

(assert (=> bs!419780 t!187415))

(declare-fun b_and!158835 () Bool)

(assert (= b_and!158655 (and (=> t!187415 result!150302) b_and!158835)))

(assert (=> bs!419780 m!2440009))

(assert (=> bs!419780 m!2440179))

(assert (=> bs!419780 m!2440181))

(assert (=> bs!419780 m!2440179))

(assert (=> bs!419780 m!2440181))

(assert (=> bs!419780 m!2440185))

(assert (=> d!613413 d!613981))

(declare-fun b_lambda!67113 () Bool)

(assert (= b_lambda!67105 (or d!613161 b_lambda!67113)))

(declare-fun bs!419781 () Bool)

(declare-fun d!613983 () Bool)

(assert (= bs!419781 (and d!613983 d!613161)))

(assert (=> bs!419781 (= (dynLambda!10864 lambda!76045 (h!27463 tokens!598)) (rulesProduceIndividualToken!1745 thiss!23328 rules!3198 (h!27463 tokens!598)))))

(assert (=> bs!419781 m!2440591))

(assert (=> b!2009748 d!613983))

(declare-fun b_lambda!67115 () Bool)

(assert (= b_lambda!67067 (or (and b!2007925 b_free!55995 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2010031 b_free!56027 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2008671 b_free!56007) (and b!2007921 b_free!55987 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2007923 b_free!55991 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2009989 b_free!56023 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2008705 b_free!56011 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) b_lambda!67115)))

(declare-fun b_lambda!67117 () Bool)

(assert (= b_lambda!67107 (or d!613149 b_lambda!67117)))

(declare-fun bs!419782 () Bool)

(declare-fun d!613985 () Bool)

(assert (= bs!419782 (and d!613985 d!613149)))

(declare-fun res!881475 () Bool)

(declare-fun e!1269964 () Bool)

(assert (=> bs!419782 (=> res!881475 e!1269964)))

(assert (=> bs!419782 (= res!881475 (not (= (list!8981 lt!754026) (list!8981 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))))))))

(assert (=> bs!419782 (= (dynLambda!10866 lambda!76036 lt!754026 (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598)))) e!1269964)))

(declare-fun b!2010032 () Bool)

(assert (=> b!2010032 (= e!1269964 (= (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) lt!754026) (dynLambda!10857 (toValue!5625 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (seqFromList!2814 (originalCharacters!4767 (h!27463 tokens!598))))))))

(assert (= (and bs!419782 (not res!881475)) b!2010032))

(declare-fun b_lambda!67129 () Bool)

(assert (=> (not b_lambda!67129) (not b!2010032)))

(assert (=> b!2010032 t!187604))

(declare-fun b_and!158837 () Bool)

(assert (= b_and!158825 (and (=> t!187604 result!150496) b_and!158837)))

(assert (=> b!2010032 t!187415))

(declare-fun b_and!158839 () Bool)

(assert (= b_and!158835 (and (=> t!187415 result!150302) b_and!158839)))

(assert (=> b!2010032 t!187332))

(declare-fun b_and!158841 () Bool)

(assert (= b_and!158823 (and (=> t!187332 result!150212) b_and!158841)))

(assert (=> b!2010032 t!187336))

(declare-fun b_and!158843 () Bool)

(assert (= b_and!158831 (and (=> t!187336 result!150218) b_and!158843)))

(assert (=> b!2010032 t!187626))

(declare-fun b_and!158845 () Bool)

(assert (= b_and!158829 (and (=> t!187626 result!150518) b_and!158845)))

(assert (=> b!2010032 t!187425))

(declare-fun b_and!158847 () Bool)

(assert (= b_and!158833 (and (=> t!187425 result!150318) b_and!158847)))

(assert (=> b!2010032 t!187334))

(declare-fun b_and!158849 () Bool)

(assert (= b_and!158827 (and (=> t!187334 result!150216) b_and!158849)))

(declare-fun b_lambda!67131 () Bool)

(assert (=> (not b_lambda!67131) (not b!2010032)))

(assert (=> b!2010032 t!187610))

(declare-fun b_and!158851 () Bool)

(assert (= b_and!158837 (and (=> t!187610 result!150502) b_and!158851)))

(assert (=> b!2010032 t!187632))

(declare-fun b_and!158853 () Bool)

(assert (= b_and!158845 (and (=> t!187632 result!150524) b_and!158853)))

(assert (=> b!2010032 t!187417))

(declare-fun b_and!158855 () Bool)

(assert (= b_and!158839 (and (=> t!187417 result!150304) b_and!158855)))

(assert (=> b!2010032 t!187427))

(declare-fun b_and!158857 () Bool)

(assert (= b_and!158847 (and (=> t!187427 result!150320) b_and!158857)))

(assert (=> b!2010032 t!187368))

(declare-fun b_and!158859 () Bool)

(assert (= b_and!158849 (and (=> t!187368 result!150248) b_and!158859)))

(assert (=> b!2010032 t!187370))

(declare-fun b_and!158861 () Bool)

(assert (= b_and!158843 (and (=> t!187370 result!150250) b_and!158861)))

(assert (=> b!2010032 t!187366))

(declare-fun b_and!158863 () Bool)

(assert (= b_and!158841 (and (=> t!187366 result!150246) b_and!158863)))

(assert (=> bs!419782 m!2440009))

(assert (=> bs!419782 m!2440005))

(assert (=> bs!419782 m!2440465))

(assert (=> b!2010032 m!2440179))

(assert (=> b!2010032 m!2440005))

(assert (=> b!2010032 m!2440469))

(assert (=> d!613917 d!613985))

(declare-fun b_lambda!67119 () Bool)

(assert (= b_lambda!67109 (or b!2008072 b_lambda!67119)))

(declare-fun bs!419783 () Bool)

(declare-fun d!613987 () Bool)

(assert (= bs!419783 (and d!613987 b!2008072)))

(assert (=> bs!419783 (= (dynLambda!10864 lambda!76030 (h!27463 (t!187321 tokens!598))) (rulesProduceIndividualToken!1745 thiss!23328 rules!3198 (h!27463 (t!187321 tokens!598))))))

(assert (=> bs!419783 m!2441423))

(assert (=> d!613961 d!613987))

(declare-fun b_lambda!67121 () Bool)

(assert (= b_lambda!67053 (or b!2007920 b_lambda!67121)))

(declare-fun bs!419784 () Bool)

(declare-fun d!613989 () Bool)

(assert (= bs!419784 (and d!613989 b!2007920)))

(assert (=> bs!419784 (= (dynLambda!10864 lambda!76021 (h!27463 (t!187321 tokens!598))) (not (isSeparator!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))))

(assert (=> b!2008993 d!613989))

(declare-fun b_lambda!67123 () Bool)

(assert (= b_lambda!67103 (or (and b!2007925 b_free!55995 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 tokens!598)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2010031 b_free!56027 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 (t!187322 rules!3198))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2008671 b_free!56007) (and b!2007921 b_free!55987 (= (toChars!5484 (transformation!3960 (rule!6185 separatorToken!354))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2007923 b_free!55991 (= (toChars!5484 (transformation!3960 (h!27464 rules!3198))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2009989 b_free!56023 (= (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 (t!187321 tokens!598)))))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) (and b!2008705 b_free!56011 (= (toChars!5484 (transformation!3960 (h!27464 (t!187322 rules!3198)))) (toChars!5484 (transformation!3960 (rule!6185 (h!27463 (t!187321 tokens!598))))))) b_lambda!67123)))

(check-sat (not d!613877) (not b_lambda!67129) b_and!158815 (not b!2009151) (not b!2009740) (not b!2010029) (not b_next!56699) (not d!613975) (not d!613501) (not d!613547) (not d!613469) (not d!613391) (not d!613929) (not d!613535) (not b!2009908) (not b!2010024) (not b!2009855) (not d!613699) (not b!2009146) (not b!2009737) (not d!613875) (not b!2009924) (not bm!122925) (not b!2009511) (not b!2009063) b_and!158851 (not b!2010014) (not b!2009136) (not d!613393) (not b!2009975) (not b!2009986) (not b!2009736) (not b!2009132) (not b!2009907) (not d!613715) (not d!613873) (not d!613499) (not b!2009878) (not d!613935) (not b!2009766) (not b!2009849) (not b!2009957) (not b!2010007) (not d!613925) (not d!613889) (not b!2008945) (not b_next!56693) (not b!2009130) (not b!2009950) (not d!613743) (not b!2009742) (not b!2009974) (not b_lambda!67131) (not d!613967) (not b!2009775) (not b!2009995) (not b!2009877) (not d!613753) (not b_lambda!67063) (not d!613487) (not b!2009035) b_and!158853 (not b!2009776) (not b!2009083) (not b!2009418) (not b!2009928) (not b!2009166) (not b!2008901) (not b!2009479) (not b!2009853) (not b_next!56715) (not b!2009827) (not b_lambda!67121) (not b!2009987) (not d!613533) (not b!2009093) (not b!2009237) (not b!2009503) (not b!2009876) (not b!2009549) (not b!2009182) (not b!2009753) (not b!2009437) (not b!2009222) (not tb!125497) (not d!613865) (not b!2009741) (not b!2009084) (not b!2009091) (not d!613459) (not b!2010008) (not b!2009074) (not b!2009727) (not b!2009172) (not b!2009804) (not b!2008853) (not b!2009758) (not b!2010009) (not b!2009235) (not b!2009811) (not d!613973) (not b!2009953) (not b!2009778) (not b!2009519) (not b_next!56709) (not b!2010012) (not b!2010004) (not b!2009864) (not b!2009967) (not d!613721) (not tb!125507) (not b!2009839) (not b!2009729) b_and!158861 (not b!2009517) (not b!2009025) (not b!2009780) (not b!2009057) (not b!2009922) (not b!2009770) (not b!2009816) (not b!2009432) (not b!2008865) (not b!2009820) (not d!613909) (not b!2009784) (not b!2009056) (not b!2009738) (not b!2009931) (not tb!125457) (not d!613891) (not b!2009991) (not b!2009985) (not b!2009831) (not b!2008851) (not b!2009915) (not b!2009969) (not b_lambda!67123) (not b!2009929) (not bm!122931) (not b!2009982) (not b!2009104) (not bm!122927) (not b!2009169) (not bm!122867) (not bm!122869) (not d!613793) (not d!613861) (not bm!122905) (not b!2010023) (not d!613457) b_and!158859 (not b_next!56691) (not b!2010003) (not d!613731) (not b!2009735) (not d!613449) (not b!2008934) (not d!613485) (not bm!122868) (not d!613927) (not d!613917) (not b!2009862) (not b!2009842) (not d!613729) (not b!2009722) (not b!2009081) (not b_lambda!67117) (not b!2009814) (not b_lambda!67065) (not b!2009787) (not d!613863) (not b!2009942) (not b!2009773) (not b!2008994) (not b!2009809) (not b!2010019) (not b!2009749) tp_is_empty!9181 (not b!2009725) (not b!2009475) (not b!2009730) (not b!2009036) (not b!2009918) (not b!2009972) (not d!613915) (not d!613445) (not b!2009920) (not b!2009781) (not d!613949) (not b!2009095) (not b!2009896) (not d!613541) (not b!2009802) (not b!2009120) (not d!613411) (not b!2009128) (not bm!122888) (not b_lambda!67061) (not b_lambda!67049) (not b!2009745) (not b!2009898) (not b!2009105) (not d!613561) (not b_lambda!67119) b_and!158817 (not b!2010026) (not d!613907) (not d!613517) (not d!613563) (not b!2009949) (not b!2009794) (not b!2009760) (not b!2009502) (not d!613893) (not bm!122871) (not b_lambda!67111) (not b!2009476) (not b!2009891) (not b!2009945) (not b!2009983) (not d!613953) (not b!2009796) (not b!2009984) (not bm!122929) (not d!613951) (not b_lambda!67031) (not b!2010020) (not d!613971) (not b!2009225) (not d!613881) (not b!2009728) (not b_lambda!67127) (not bm!122912) (not b_lambda!67037) (not b_next!56689) (not d!613957) b_and!158863 (not d!613711) b_and!158821 (not d!613937) (not bm!122864) (not b!2009860) (not b!2009944) (not b!2009175) (not b!2009126) (not b!2009473) (not b!2009068) (not d!613435) (not b!2008900) (not d!613361) (not b!2009875) (not b!2009904) (not d!613961) (not b!2009436) (not b!2009065) (not b!2009958) (not bm!122866) (not b!2009846) (not b!2009954) (not d!613463) (not b!2008869) (not b!2009167) (not b!2009723) (not b!2009805) (not bm!122926) (not b!2009952) b_and!158811 (not d!613963) (not b!2009148) (not bm!122854) (not bs!419781) (not d!613537) (not b_next!56725) (not b!2008844) (not tb!125517) (not b!2009516) (not b!2009813) (not b!2008870) (not b!2009039) (not d!613451) (not b!2009102) (not b!2009829) (not b!2009165) (not b!2009150) (not b!2009962) b_and!158857 (not b!2009417) (not bm!122903) (not b!2010028) (not b!2009024) (not bm!122885) (not b!2009943) (not bm!122920) (not b!2009168) (not b_lambda!67125) (not bm!122916) (not b!2009067) (not b!2009885) (not b!2009099) (not b!2009888) (not d!613551) (not b_lambda!67029) (not b!2009948) (not d!613381) (not d!613559) (not b!2008169) (not b!2009980) (not b_next!56697) (not b!2009124) (not bm!122840) (not d!613761) (not b!2009819) (not bm!122856) (not b!2009173) (not b!2010013) (not b!2009799) (not b!2009963) (not b!2009724) (not d!613959) (not b!2010018) (not d!613557) (not b!2009134) (not b!2009901) (not b!2009961) (not b!2009968) (not b!2009848) (not b!2009495) (not d!613969) (not d!613379) (not bm!122921) (not d!613337) (not b!2009882) (not b!2009946) (not d!613467) (not d!613709) (not b!2009960) (not tb!125487) (not bm!122933) (not b!2009771) (not b!2009923) (not d!613439) (not b!2009204) (not b!2009754) (not b_next!56731) (not d!613539) (not b!2009999) (not b!2009844) (not b!2009956) (not b!2009879) (not bs!419780) (not b!2009228) (not d!613749) b_and!158809 (not b_next!56727) (not b!2009978) (not b!2009921) (not b_lambda!67033) (not b!2009045) (not b!2008868) (not b_lambda!67059) (not bm!122918) b_and!158855 (not b!2009445) (not b_lambda!67025) (not b!2009434) (not d!613859) (not b!2008992) (not b!2009072) (not b!2009100) (not bm!122884) (not b!2009797) (not d!613919) (not d!613717) (not b!2009993) (not b!2009970) (not b!2009180) (not d!613543) (not b!2009979) (not d!613897) (not b!2009103) (not b!2009040) (not b!2008843) (not b!2009880) (not d!613911) (not b!2010000) (not b!2010030) (not d!613771) (not b!2009917) (not b!2009733) (not b!2010015) (not b!2009767) (not b!2009852) (not b!2010005) (not b!2009785) (not b!2009472) (not b!2008854) (not b_next!56695) (not b!2008867) (not b!2010027) (not b!2009757) (not b!2009910) (not bm!122887) (not b!2009079) (not bs!419783) (not bm!122881) (not bs!419782) (not bm!122872) (not b_lambda!67113) (not b!2009919) (not b!2009224) (not d!613765) (not d!613903) (not d!613979) (not b!2009416) (not b!2009890) (not b!2009997) (not b!2009992) (not d!613883) (not d!613887) (not b!2009038) (not b!2009751) (not b!2009477) (not b!2010001) (not b_lambda!67035) (not b!2009747) (not b!2009926) (not b!2009881) (not b!2009792) (not d!613719) (not tb!125527) (not b!2009897) (not b_lambda!67023) (not b!2009894) (not b!2009976) (not d!613763) (not b_lambda!67027) (not d!613757) (not b!2008899) (not b!2008871) (not b!2009071) (not b!2009041) (not d!613735) b_and!158819 (not b!2009988) (not b!2009732) (not d!613363) (not b!2009971) (not d!613509) (not bm!122917) (not b_lambda!67039) (not b_lambda!67115) (not b!2009159) (not d!613413) (not b_next!56713) (not b!2009097) (not bm!122922) (not b!2008935) (not b!2008873) (not b!2010022) (not b!2009743) (not d!613913) (not d!613545) (not b!2008031) (not d!613481) (not b!2009822) (not b!2009493) (not b!2009996) (not b!2010011) (not b!2009135) (not b!2008866) (not b!2009883) (not d!613505) (not d!613945) (not d!613527) b_and!158813 (not d!613867) (not b!2009755) (not b!2008991) (not b_next!56729) (not b_next!56711) (not bm!122932) (not b!2008188) (not b!2010016))
(check-sat b_and!158851 (not b_next!56693) b_and!158817 (not b_next!56689) b_and!158857 (not b_next!56697) (not b_next!56731) (not b_next!56695) b_and!158815 (not b_next!56699) b_and!158853 (not b_next!56715) (not b_next!56709) b_and!158861 b_and!158859 (not b_next!56691) b_and!158863 b_and!158821 b_and!158811 (not b_next!56725) b_and!158809 (not b_next!56727) b_and!158855 b_and!158819 (not b_next!56713) b_and!158813 (not b_next!56729) (not b_next!56711))
