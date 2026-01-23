; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392974 () Bool)

(assert start!392974)

(declare-fun b!4136825 () Bool)

(declare-fun b_free!117619 () Bool)

(declare-fun b_next!118323 () Bool)

(assert (=> b!4136825 (= b_free!117619 (not b_next!118323))))

(declare-fun tp!1260993 () Bool)

(declare-fun b_and!321009 () Bool)

(assert (=> b!4136825 (= tp!1260993 b_and!321009)))

(declare-fun b_free!117621 () Bool)

(declare-fun b_next!118325 () Bool)

(assert (=> b!4136825 (= b_free!117621 (not b_next!118325))))

(declare-fun tp!1260994 () Bool)

(declare-fun b_and!321011 () Bool)

(assert (=> b!4136825 (= tp!1260994 b_and!321011)))

(declare-fun b!4136822 () Bool)

(declare-fun b_free!117623 () Bool)

(declare-fun b_next!118327 () Bool)

(assert (=> b!4136822 (= b_free!117623 (not b_next!118327))))

(declare-fun tp!1261002 () Bool)

(declare-fun b_and!321013 () Bool)

(assert (=> b!4136822 (= tp!1261002 b_and!321013)))

(declare-fun b_free!117625 () Bool)

(declare-fun b_next!118329 () Bool)

(assert (=> b!4136822 (= b_free!117625 (not b_next!118329))))

(declare-fun tp!1260999 () Bool)

(declare-fun b_and!321015 () Bool)

(assert (=> b!4136822 (= tp!1260999 b_and!321015)))

(declare-fun b!4136820 () Bool)

(declare-fun b_free!117627 () Bool)

(declare-fun b_next!118331 () Bool)

(assert (=> b!4136820 (= b_free!117627 (not b_next!118331))))

(declare-fun tp!1260996 () Bool)

(declare-fun b_and!321017 () Bool)

(assert (=> b!4136820 (= tp!1260996 b_and!321017)))

(declare-fun b_free!117629 () Bool)

(declare-fun b_next!118333 () Bool)

(assert (=> b!4136820 (= b_free!117629 (not b_next!118333))))

(declare-fun tp!1261004 () Bool)

(declare-fun b_and!321019 () Bool)

(assert (=> b!4136820 (= tp!1261004 b_and!321019)))

(declare-datatypes ((List!44958 0))(
  ( (Nil!44834) (Cons!44834 (h!50254 (_ BitVec 16)) (t!342043 List!44958)) )
))
(declare-datatypes ((TokenValue!7584 0))(
  ( (FloatLiteralValue!15168 (text!53533 List!44958)) (TokenValueExt!7583 (__x!27385 Int)) (Broken!37920 (value!230117 List!44958)) (Object!7707) (End!7584) (Def!7584) (Underscore!7584) (Match!7584) (Else!7584) (Error!7584) (Case!7584) (If!7584) (Extends!7584) (Abstract!7584) (Class!7584) (Val!7584) (DelimiterValue!15168 (del!7644 List!44958)) (KeywordValue!7590 (value!230118 List!44958)) (CommentValue!15168 (value!230119 List!44958)) (WhitespaceValue!15168 (value!230120 List!44958)) (IndentationValue!7584 (value!230121 List!44958)) (String!51669) (Int32!7584) (Broken!37921 (value!230122 List!44958)) (Boolean!7585) (Unit!64144) (OperatorValue!7587 (op!7644 List!44958)) (IdentifierValue!15168 (value!230123 List!44958)) (IdentifierValue!15169 (value!230124 List!44958)) (WhitespaceValue!15169 (value!230125 List!44958)) (True!15168) (False!15168) (Broken!37922 (value!230126 List!44958)) (Broken!37923 (value!230127 List!44958)) (True!15169) (RightBrace!7584) (RightBracket!7584) (Colon!7584) (Null!7584) (Comma!7584) (LeftBracket!7584) (False!15169) (LeftBrace!7584) (ImaginaryLiteralValue!7584 (text!53534 List!44958)) (StringLiteralValue!22752 (value!230128 List!44958)) (EOFValue!7584 (value!230129 List!44958)) (IdentValue!7584 (value!230130 List!44958)) (DelimiterValue!15169 (value!230131 List!44958)) (DedentValue!7584 (value!230132 List!44958)) (NewLineValue!7584 (value!230133 List!44958)) (IntegerValue!22752 (value!230134 (_ BitVec 32)) (text!53535 List!44958)) (IntegerValue!22753 (value!230135 Int) (text!53536 List!44958)) (Times!7584) (Or!7584) (Equal!7584) (Minus!7584) (Broken!37924 (value!230136 List!44958)) (And!7584) (Div!7584) (LessEqual!7584) (Mod!7584) (Concat!19843) (Not!7584) (Plus!7584) (SpaceValue!7584 (value!230137 List!44958)) (IntegerValue!22754 (value!230138 Int) (text!53537 List!44958)) (StringLiteralValue!22753 (text!53538 List!44958)) (FloatLiteralValue!15169 (text!53539 List!44958)) (BytesLiteralValue!7584 (value!230139 List!44958)) (CommentValue!15169 (value!230140 List!44958)) (StringLiteralValue!22754 (value!230141 List!44958)) (ErrorTokenValue!7584 (msg!7645 List!44958)) )
))
(declare-datatypes ((C!24704 0))(
  ( (C!24705 (val!14462 Int)) )
))
(declare-datatypes ((List!44959 0))(
  ( (Nil!44835) (Cons!44835 (h!50255 C!24704) (t!342044 List!44959)) )
))
(declare-datatypes ((IArray!27135 0))(
  ( (IArray!27136 (innerList!13625 List!44959)) )
))
(declare-datatypes ((Conc!13565 0))(
  ( (Node!13565 (left!33576 Conc!13565) (right!33906 Conc!13565) (csize!27360 Int) (cheight!13776 Int)) (Leaf!20957 (xs!16871 IArray!27135) (csize!27361 Int)) (Empty!13565) )
))
(declare-datatypes ((BalanceConc!26724 0))(
  ( (BalanceConc!26725 (c!709430 Conc!13565)) )
))
(declare-datatypes ((String!51670 0))(
  ( (String!51671 (value!230142 String)) )
))
(declare-datatypes ((Regex!12259 0))(
  ( (ElementMatch!12259 (c!709431 C!24704)) (Concat!19844 (regOne!25030 Regex!12259) (regTwo!25030 Regex!12259)) (EmptyExpr!12259) (Star!12259 (reg!12588 Regex!12259)) (EmptyLang!12259) (Union!12259 (regOne!25031 Regex!12259) (regTwo!25031 Regex!12259)) )
))
(declare-datatypes ((TokenValueInjection!14596 0))(
  ( (TokenValueInjection!14597 (toValue!10018 Int) (toChars!9877 Int)) )
))
(declare-datatypes ((Rule!14508 0))(
  ( (Rule!14509 (regex!7354 Regex!12259) (tag!8214 String!51670) (isSeparator!7354 Bool) (transformation!7354 TokenValueInjection!14596)) )
))
(declare-fun rBis!149 () Rule!14508)

(declare-fun b!4136803 () Bool)

(declare-fun tp!1260998 () Bool)

(declare-fun e!2566746 () Bool)

(declare-fun e!2566749 () Bool)

(declare-fun inv!59440 (String!51670) Bool)

(declare-fun inv!59442 (TokenValueInjection!14596) Bool)

(assert (=> b!4136803 (= e!2566749 (and tp!1260998 (inv!59440 (tag!8214 rBis!149)) (inv!59442 (transformation!7354 rBis!149)) e!2566746))))

(declare-fun tp!1261001 () Bool)

(declare-fun e!2566751 () Bool)

(declare-fun e!2566736 () Bool)

(declare-fun b!4136805 () Bool)

(declare-fun r!4008 () Rule!14508)

(assert (=> b!4136805 (= e!2566736 (and tp!1261001 (inv!59440 (tag!8214 r!4008)) (inv!59442 (transformation!7354 r!4008)) e!2566751))))

(declare-fun b!4136806 () Bool)

(declare-fun res!1691780 () Bool)

(declare-fun e!2566741 () Bool)

(assert (=> b!4136806 (=> (not res!1691780) (not e!2566741))))

(declare-datatypes ((LexerInterface!6943 0))(
  ( (LexerInterfaceExt!6940 (__x!27386 Int)) (Lexer!6941) )
))
(declare-fun thiss!25645 () LexerInterface!6943)

(declare-fun ruleValid!3160 (LexerInterface!6943 Rule!14508) Bool)

(assert (=> b!4136806 (= res!1691780 (ruleValid!3160 thiss!25645 r!4008))))

(declare-fun b!4136807 () Bool)

(declare-fun e!2566740 () Bool)

(declare-fun e!2566744 () Bool)

(assert (=> b!4136807 (= e!2566740 e!2566744)))

(declare-fun res!1691786 () Bool)

(assert (=> b!4136807 (=> res!1691786 e!2566744)))

(declare-fun lt!1474955 () List!44959)

(declare-fun p!2912 () List!44959)

(declare-fun input!3238 () List!44959)

(declare-fun ++!11598 (List!44959 List!44959) List!44959)

(assert (=> b!4136807 (= res!1691786 (not (= (++!11598 p!2912 lt!1474955) input!3238)))))

(declare-fun lt!1474966 () List!44959)

(declare-fun lt!1474961 () List!44959)

(declare-fun getSuffix!2616 (List!44959 List!44959) List!44959)

(assert (=> b!4136807 (= lt!1474966 (getSuffix!2616 input!3238 lt!1474961))))

(declare-fun lt!1474965 () BalanceConc!26724)

(declare-fun list!16417 (BalanceConc!26724) List!44959)

(assert (=> b!4136807 (= lt!1474961 (list!16417 lt!1474965))))

(declare-fun b!4136808 () Bool)

(declare-fun e!2566742 () Bool)

(declare-fun tp_is_empty!21441 () Bool)

(declare-fun tp!1261003 () Bool)

(assert (=> b!4136808 (= e!2566742 (and tp_is_empty!21441 tp!1261003))))

(declare-fun b!4136809 () Bool)

(declare-fun res!1691774 () Bool)

(declare-fun e!2566743 () Bool)

(assert (=> b!4136809 (=> (not res!1691774) (not e!2566743))))

(declare-fun isEmpty!26715 (List!44959) Bool)

(assert (=> b!4136809 (= res!1691774 (not (isEmpty!26715 p!2912)))))

(declare-datatypes ((List!44960 0))(
  ( (Nil!44836) (Cons!44836 (h!50256 Rule!14508) (t!342045 List!44960)) )
))
(declare-fun rules!3756 () List!44960)

(declare-fun b!4136810 () Bool)

(declare-fun e!2566737 () Bool)

(declare-fun e!2566735 () Bool)

(declare-fun tp!1260995 () Bool)

(assert (=> b!4136810 (= e!2566737 (and tp!1260995 (inv!59440 (tag!8214 (h!50256 rules!3756))) (inv!59442 (transformation!7354 (h!50256 rules!3756))) e!2566735))))

(declare-fun b!4136811 () Bool)

(declare-fun res!1691778 () Bool)

(assert (=> b!4136811 (=> (not res!1691778) (not e!2566741))))

(declare-fun matchR!6088 (Regex!12259 List!44959) Bool)

(assert (=> b!4136811 (= res!1691778 (matchR!6088 (regex!7354 r!4008) p!2912))))

(declare-fun res!1691772 () Bool)

(assert (=> start!392974 (=> (not res!1691772) (not e!2566743))))

(get-info :version)

(assert (=> start!392974 (= res!1691772 ((_ is Lexer!6941) thiss!25645))))

(assert (=> start!392974 e!2566743))

(declare-fun e!2566748 () Bool)

(assert (=> start!392974 e!2566748))

(declare-fun e!2566738 () Bool)

(assert (=> start!392974 e!2566738))

(assert (=> start!392974 true))

(assert (=> start!392974 e!2566736))

(assert (=> start!392974 e!2566742))

(assert (=> start!392974 e!2566749))

(declare-fun b!4136804 () Bool)

(declare-fun res!1691779 () Bool)

(assert (=> b!4136804 (=> (not res!1691779) (not e!2566743))))

(declare-fun contains!9034 (List!44960 Rule!14508) Bool)

(assert (=> b!4136804 (= res!1691779 (contains!9034 rules!3756 r!4008))))

(declare-fun b!4136812 () Bool)

(declare-fun e!2566739 () Bool)

(assert (=> b!4136812 (= e!2566739 e!2566740)))

(declare-fun res!1691784 () Bool)

(assert (=> b!4136812 (=> res!1691784 e!2566740)))

(declare-fun lt!1474968 () Int)

(declare-fun size!33192 (BalanceConc!26724) Int)

(assert (=> b!4136812 (= res!1691784 (<= (size!33192 lt!1474965) lt!1474968))))

(declare-datatypes ((Token!13638 0))(
  ( (Token!13639 (value!230143 TokenValue!7584) (rule!10454 Rule!14508) (size!33193 Int) (originalCharacters!7850 List!44959)) )
))
(declare-datatypes ((tuple2!43230 0))(
  ( (tuple2!43231 (_1!24749 Token!13638) (_2!24749 List!44959)) )
))
(declare-datatypes ((Option!9660 0))(
  ( (None!9659) (Some!9659 (v!40287 tuple2!43230)) )
))
(declare-fun lt!1474962 () Option!9660)

(declare-fun charsOf!4953 (Token!13638) BalanceConc!26724)

(declare-fun get!14626 (Option!9660) tuple2!43230)

(assert (=> b!4136812 (= lt!1474965 (charsOf!4953 (_1!24749 (get!14626 lt!1474962))))))

(declare-fun b!4136813 () Bool)

(declare-fun res!1691781 () Bool)

(assert (=> b!4136813 (=> (not res!1691781) (not e!2566743))))

(declare-fun isEmpty!26716 (List!44960) Bool)

(assert (=> b!4136813 (= res!1691781 (not (isEmpty!26716 rules!3756)))))

(declare-fun b!4136814 () Bool)

(declare-fun res!1691775 () Bool)

(assert (=> b!4136814 (=> (not res!1691775) (not e!2566743))))

(declare-fun rulesInvariant!6240 (LexerInterface!6943 List!44960) Bool)

(assert (=> b!4136814 (= res!1691775 (rulesInvariant!6240 thiss!25645 rules!3756))))

(declare-fun b!4136815 () Bool)

(declare-fun tp!1260997 () Bool)

(assert (=> b!4136815 (= e!2566748 (and e!2566737 tp!1260997))))

(declare-fun b!4136816 () Bool)

(declare-fun e!2566752 () Bool)

(assert (=> b!4136816 (= e!2566741 (not e!2566752))))

(declare-fun res!1691785 () Bool)

(assert (=> b!4136816 (=> res!1691785 e!2566752)))

(assert (=> b!4136816 (= res!1691785 (or (not ((_ is Cons!44836) rules!3756)) (not (= (h!50256 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!64145 0))(
  ( (Unit!64146) )
))
(declare-fun lt!1474964 () Unit!64145)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2200 (LexerInterface!6943 Rule!14508 List!44960) Unit!64145)

(assert (=> b!4136816 (= lt!1474964 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2200 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4136816 (ruleValid!3160 thiss!25645 rBis!149)))

(declare-fun lt!1474963 () Unit!64145)

(assert (=> b!4136816 (= lt!1474963 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2200 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4136817 () Bool)

(assert (=> b!4136817 (= e!2566752 e!2566739)))

(declare-fun res!1691783 () Bool)

(assert (=> b!4136817 (=> res!1691783 e!2566739)))

(declare-fun isEmpty!26717 (Option!9660) Bool)

(assert (=> b!4136817 (= res!1691783 (isEmpty!26717 lt!1474962))))

(declare-fun maxPrefixOneRule!3072 (LexerInterface!6943 Rule!14508 List!44959) Option!9660)

(assert (=> b!4136817 (= lt!1474962 (maxPrefixOneRule!3072 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4136817 (not (= rBis!149 r!4008))))

(declare-fun lt!1474967 () Unit!64145)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!52 (LexerInterface!6943 List!44960 Rule!14508 Rule!14508) Unit!64145)

(assert (=> b!4136817 (= lt!1474967 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!52 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6515 (List!44960) List!44960)

(assert (=> b!4136817 (contains!9034 (tail!6515 rules!3756) r!4008)))

(declare-fun lt!1474956 () Unit!64145)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!58 (List!44960 Rule!14508 Rule!14508) Unit!64145)

(assert (=> b!4136817 (= lt!1474956 (lemmaGetIndexBiggerAndHeadEqThenTailContains!58 rules!3756 rBis!149 r!4008))))

(declare-fun b!4136818 () Bool)

(declare-fun res!1691782 () Bool)

(assert (=> b!4136818 (=> (not res!1691782) (not e!2566743))))

(assert (=> b!4136818 (= res!1691782 (contains!9034 rules!3756 rBis!149))))

(declare-fun b!4136819 () Bool)

(declare-fun res!1691773 () Bool)

(assert (=> b!4136819 (=> (not res!1691773) (not e!2566741))))

(declare-fun getIndex!700 (List!44960 Rule!14508) Int)

(assert (=> b!4136819 (= res!1691773 (< (getIndex!700 rules!3756 rBis!149) (getIndex!700 rules!3756 r!4008)))))

(assert (=> b!4136820 (= e!2566751 (and tp!1260996 tp!1261004))))

(declare-fun b!4136821 () Bool)

(declare-fun res!1691777 () Bool)

(assert (=> b!4136821 (=> (not res!1691777) (not e!2566743))))

(declare-fun isPrefix!4289 (List!44959 List!44959) Bool)

(assert (=> b!4136821 (= res!1691777 (isPrefix!4289 p!2912 input!3238))))

(assert (=> b!4136822 (= e!2566746 (and tp!1261002 tp!1260999))))

(declare-fun b!4136823 () Bool)

(assert (=> b!4136823 (= e!2566743 e!2566741)))

(declare-fun res!1691776 () Bool)

(assert (=> b!4136823 (=> (not res!1691776) (not e!2566741))))

(declare-fun lt!1474960 () TokenValue!7584)

(declare-fun maxPrefix!4133 (LexerInterface!6943 List!44960 List!44959) Option!9660)

(assert (=> b!4136823 (= res!1691776 (= (maxPrefix!4133 thiss!25645 rules!3756 input!3238) (Some!9659 (tuple2!43231 (Token!13639 lt!1474960 r!4008 lt!1474968 p!2912) lt!1474955))))))

(assert (=> b!4136823 (= lt!1474955 (getSuffix!2616 input!3238 p!2912))))

(declare-fun size!33194 (List!44959) Int)

(assert (=> b!4136823 (= lt!1474968 (size!33194 p!2912))))

(declare-fun lt!1474957 () BalanceConc!26724)

(declare-fun apply!10427 (TokenValueInjection!14596 BalanceConc!26724) TokenValue!7584)

(assert (=> b!4136823 (= lt!1474960 (apply!10427 (transformation!7354 r!4008) lt!1474957))))

(declare-fun lt!1474958 () Unit!64145)

(declare-fun lemmaSemiInverse!2212 (TokenValueInjection!14596 BalanceConc!26724) Unit!64145)

(assert (=> b!4136823 (= lt!1474958 (lemmaSemiInverse!2212 (transformation!7354 r!4008) lt!1474957))))

(declare-fun seqFromList!5471 (List!44959) BalanceConc!26724)

(assert (=> b!4136823 (= lt!1474957 (seqFromList!5471 p!2912))))

(declare-fun b!4136824 () Bool)

(assert (=> b!4136824 (= e!2566744 true)))

(declare-fun lt!1474959 () Bool)

(assert (=> b!4136824 (= lt!1474959 (isPrefix!4289 lt!1474961 input!3238))))

(assert (=> b!4136825 (= e!2566735 (and tp!1260993 tp!1260994))))

(declare-fun b!4136826 () Bool)

(declare-fun tp!1261000 () Bool)

(assert (=> b!4136826 (= e!2566738 (and tp_is_empty!21441 tp!1261000))))

(assert (= (and start!392974 res!1691772) b!4136821))

(assert (= (and b!4136821 res!1691777) b!4136813))

(assert (= (and b!4136813 res!1691781) b!4136814))

(assert (= (and b!4136814 res!1691775) b!4136804))

(assert (= (and b!4136804 res!1691779) b!4136818))

(assert (= (and b!4136818 res!1691782) b!4136809))

(assert (= (and b!4136809 res!1691774) b!4136823))

(assert (= (and b!4136823 res!1691776) b!4136811))

(assert (= (and b!4136811 res!1691778) b!4136819))

(assert (= (and b!4136819 res!1691773) b!4136806))

(assert (= (and b!4136806 res!1691780) b!4136816))

(assert (= (and b!4136816 (not res!1691785)) b!4136817))

(assert (= (and b!4136817 (not res!1691783)) b!4136812))

(assert (= (and b!4136812 (not res!1691784)) b!4136807))

(assert (= (and b!4136807 (not res!1691786)) b!4136824))

(assert (= b!4136810 b!4136825))

(assert (= b!4136815 b!4136810))

(assert (= (and start!392974 ((_ is Cons!44836) rules!3756)) b!4136815))

(assert (= (and start!392974 ((_ is Cons!44835) p!2912)) b!4136826))

(assert (= b!4136805 b!4136820))

(assert (= start!392974 b!4136805))

(assert (= (and start!392974 ((_ is Cons!44835) input!3238)) b!4136808))

(assert (= b!4136803 b!4136822))

(assert (= start!392974 b!4136803))

(declare-fun m!4733369 () Bool)

(assert (=> b!4136819 m!4733369))

(declare-fun m!4733371 () Bool)

(assert (=> b!4136819 m!4733371))

(declare-fun m!4733373 () Bool)

(assert (=> b!4136821 m!4733373))

(declare-fun m!4733375 () Bool)

(assert (=> b!4136813 m!4733375))

(declare-fun m!4733377 () Bool)

(assert (=> b!4136806 m!4733377))

(declare-fun m!4733379 () Bool)

(assert (=> b!4136804 m!4733379))

(declare-fun m!4733381 () Bool)

(assert (=> b!4136816 m!4733381))

(declare-fun m!4733383 () Bool)

(assert (=> b!4136816 m!4733383))

(declare-fun m!4733385 () Bool)

(assert (=> b!4136816 m!4733385))

(declare-fun m!4733387 () Bool)

(assert (=> b!4136814 m!4733387))

(declare-fun m!4733389 () Bool)

(assert (=> b!4136805 m!4733389))

(declare-fun m!4733391 () Bool)

(assert (=> b!4136805 m!4733391))

(declare-fun m!4733393 () Bool)

(assert (=> b!4136823 m!4733393))

(declare-fun m!4733395 () Bool)

(assert (=> b!4136823 m!4733395))

(declare-fun m!4733397 () Bool)

(assert (=> b!4136823 m!4733397))

(declare-fun m!4733399 () Bool)

(assert (=> b!4136823 m!4733399))

(declare-fun m!4733401 () Bool)

(assert (=> b!4136823 m!4733401))

(declare-fun m!4733403 () Bool)

(assert (=> b!4136823 m!4733403))

(declare-fun m!4733405 () Bool)

(assert (=> b!4136818 m!4733405))

(declare-fun m!4733407 () Bool)

(assert (=> b!4136824 m!4733407))

(declare-fun m!4733409 () Bool)

(assert (=> b!4136803 m!4733409))

(declare-fun m!4733411 () Bool)

(assert (=> b!4136803 m!4733411))

(declare-fun m!4733413 () Bool)

(assert (=> b!4136817 m!4733413))

(declare-fun m!4733415 () Bool)

(assert (=> b!4136817 m!4733415))

(declare-fun m!4733417 () Bool)

(assert (=> b!4136817 m!4733417))

(assert (=> b!4136817 m!4733413))

(declare-fun m!4733419 () Bool)

(assert (=> b!4136817 m!4733419))

(declare-fun m!4733421 () Bool)

(assert (=> b!4136817 m!4733421))

(declare-fun m!4733423 () Bool)

(assert (=> b!4136817 m!4733423))

(declare-fun m!4733425 () Bool)

(assert (=> b!4136812 m!4733425))

(declare-fun m!4733427 () Bool)

(assert (=> b!4136812 m!4733427))

(declare-fun m!4733429 () Bool)

(assert (=> b!4136812 m!4733429))

(declare-fun m!4733431 () Bool)

(assert (=> b!4136810 m!4733431))

(declare-fun m!4733433 () Bool)

(assert (=> b!4136810 m!4733433))

(declare-fun m!4733435 () Bool)

(assert (=> b!4136811 m!4733435))

(declare-fun m!4733437 () Bool)

(assert (=> b!4136809 m!4733437))

(declare-fun m!4733439 () Bool)

(assert (=> b!4136807 m!4733439))

(declare-fun m!4733441 () Bool)

(assert (=> b!4136807 m!4733441))

(declare-fun m!4733443 () Bool)

(assert (=> b!4136807 m!4733443))

(check-sat (not b_next!118331) (not b!4136817) b_and!321017 (not b!4136803) b_and!321015 (not b!4136816) (not b!4136810) tp_is_empty!21441 (not b_next!118323) (not b!4136815) (not b!4136811) (not b_next!118327) (not b!4136806) (not b!4136807) b_and!321019 (not b!4136804) (not b!4136813) (not b!4136808) (not b_next!118333) (not b!4136824) (not b!4136805) (not b!4136819) b_and!321011 b_and!321009 b_and!321013 (not b!4136809) (not b_next!118325) (not b!4136826) (not b!4136821) (not b!4136814) (not b_next!118329) (not b!4136823) (not b!4136812) (not b!4136818))
(check-sat (not b_next!118327) b_and!321019 (not b_next!118331) b_and!321017 b_and!321015 (not b_next!118333) (not b_next!118323) b_and!321011 (not b_next!118325) (not b_next!118329) b_and!321009 b_and!321013)
