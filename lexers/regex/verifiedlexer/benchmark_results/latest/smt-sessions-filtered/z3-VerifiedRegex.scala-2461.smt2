; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130284 () Bool)

(assert start!130284)

(declare-fun b!1417608 () Bool)

(declare-fun res!641955 () Bool)

(declare-fun e!904968 () Bool)

(assert (=> b!1417608 (=> (not res!641955) (not e!904968))))

(declare-datatypes ((List!14601 0))(
  ( (Nil!14535) (Cons!14535 (h!19936 (_ BitVec 16)) (t!124206 List!14601)) )
))
(declare-datatypes ((TokenValue!2621 0))(
  ( (FloatLiteralValue!5242 (text!18792 List!14601)) (TokenValueExt!2620 (__x!9051 Int)) (Broken!13105 (value!81740 List!14601)) (Object!2686) (End!2621) (Def!2621) (Underscore!2621) (Match!2621) (Else!2621) (Error!2621) (Case!2621) (If!2621) (Extends!2621) (Abstract!2621) (Class!2621) (Val!2621) (DelimiterValue!5242 (del!2681 List!14601)) (KeywordValue!2627 (value!81741 List!14601)) (CommentValue!5242 (value!81742 List!14601)) (WhitespaceValue!5242 (value!81743 List!14601)) (IndentationValue!2621 (value!81744 List!14601)) (String!17340) (Int32!2621) (Broken!13106 (value!81745 List!14601)) (Boolean!2622) (Unit!21439) (OperatorValue!2624 (op!2681 List!14601)) (IdentifierValue!5242 (value!81746 List!14601)) (IdentifierValue!5243 (value!81747 List!14601)) (WhitespaceValue!5243 (value!81748 List!14601)) (True!5242) (False!5242) (Broken!13107 (value!81749 List!14601)) (Broken!13108 (value!81750 List!14601)) (True!5243) (RightBrace!2621) (RightBracket!2621) (Colon!2621) (Null!2621) (Comma!2621) (LeftBracket!2621) (False!5243) (LeftBrace!2621) (ImaginaryLiteralValue!2621 (text!18793 List!14601)) (StringLiteralValue!7863 (value!81751 List!14601)) (EOFValue!2621 (value!81752 List!14601)) (IdentValue!2621 (value!81753 List!14601)) (DelimiterValue!5243 (value!81754 List!14601)) (DedentValue!2621 (value!81755 List!14601)) (NewLineValue!2621 (value!81756 List!14601)) (IntegerValue!7863 (value!81757 (_ BitVec 32)) (text!18794 List!14601)) (IntegerValue!7864 (value!81758 Int) (text!18795 List!14601)) (Times!2621) (Or!2621) (Equal!2621) (Minus!2621) (Broken!13109 (value!81759 List!14601)) (And!2621) (Div!2621) (LessEqual!2621) (Mod!2621) (Concat!6466) (Not!2621) (Plus!2621) (SpaceValue!2621 (value!81760 List!14601)) (IntegerValue!7865 (value!81761 Int) (text!18796 List!14601)) (StringLiteralValue!7864 (text!18797 List!14601)) (FloatLiteralValue!5243 (text!18798 List!14601)) (BytesLiteralValue!2621 (value!81762 List!14601)) (CommentValue!5243 (value!81763 List!14601)) (StringLiteralValue!7865 (value!81764 List!14601)) (ErrorTokenValue!2621 (msg!2682 List!14601)) )
))
(declare-datatypes ((Regex!3845 0))(
  ( (ElementMatch!3845 (c!232915 (_ BitVec 16))) (Concat!6467 (regOne!8202 Regex!3845) (regTwo!8202 Regex!3845)) (EmptyExpr!3845) (Star!3845 (reg!4174 Regex!3845)) (EmptyLang!3845) (Union!3845 (regOne!8203 Regex!3845) (regTwo!8203 Regex!3845)) )
))
(declare-datatypes ((String!17341 0))(
  ( (String!17342 (value!81765 String)) )
))
(declare-datatypes ((IArray!9739 0))(
  ( (IArray!9740 (innerList!4927 List!14601)) )
))
(declare-datatypes ((Conc!4867 0))(
  ( (Node!4867 (left!12426 Conc!4867) (right!12756 Conc!4867) (csize!9964 Int) (cheight!5078 Int)) (Leaf!7329 (xs!7594 IArray!9739) (csize!9965 Int)) (Empty!4867) )
))
(declare-datatypes ((BalanceConc!9674 0))(
  ( (BalanceConc!9675 (c!232916 Conc!4867)) )
))
(declare-datatypes ((TokenValueInjection!4902 0))(
  ( (TokenValueInjection!4903 (toValue!3830 Int) (toChars!3689 Int)) )
))
(declare-datatypes ((Rule!4862 0))(
  ( (Rule!4863 (regex!2531 Regex!3845) (tag!2793 String!17341) (isSeparator!2531 Bool) (transformation!2531 TokenValueInjection!4902)) )
))
(declare-datatypes ((Token!4724 0))(
  ( (Token!4725 (value!81766 TokenValue!2621) (rule!4294 Rule!4862) (size!11991 Int) (originalCharacters!3393 List!14601)) )
))
(declare-datatypes ((List!14602 0))(
  ( (Nil!14536) (Cons!14536 (h!19937 Token!4724) (t!124207 List!14602)) )
))
(declare-datatypes ((IArray!9741 0))(
  ( (IArray!9742 (innerList!4928 List!14602)) )
))
(declare-datatypes ((Conc!4868 0))(
  ( (Node!4868 (left!12427 Conc!4868) (right!12757 Conc!4868) (csize!9966 Int) (cheight!5079 Int)) (Leaf!7330 (xs!7595 IArray!9741) (csize!9967 Int)) (Empty!4868) )
))
(declare-datatypes ((List!14603 0))(
  ( (Nil!14537) (Cons!14537 (h!19938 Rule!4862) (t!124208 List!14603)) )
))
(declare-datatypes ((BalanceConc!9676 0))(
  ( (BalanceConc!9677 (c!232917 Conc!4868)) )
))
(declare-datatypes ((PrintableTokens!844 0))(
  ( (PrintableTokens!845 (rules!11116 List!14603) (tokens!1820 BalanceConc!9676)) )
))
(declare-fun acc!229 () PrintableTokens!844)

(declare-fun usesJsonRules!0 (PrintableTokens!844) Bool)

(assert (=> b!1417608 (= res!641955 (usesJsonRules!0 acc!229))))

(declare-fun b!1417609 () Bool)

(declare-fun res!641952 () Bool)

(assert (=> b!1417609 (=> (not res!641952) (not e!904968))))

(declare-datatypes ((List!14604 0))(
  ( (Nil!14538) (Cons!14538 (h!19939 PrintableTokens!844) (t!124209 List!14604)) )
))
(declare-datatypes ((IArray!9743 0))(
  ( (IArray!9744 (innerList!4929 List!14604)) )
))
(declare-datatypes ((Conc!4869 0))(
  ( (Node!4869 (left!12428 Conc!4869) (right!12758 Conc!4869) (csize!9968 Int) (cheight!5080 Int)) (Leaf!7331 (xs!7596 IArray!9743) (csize!9969 Int)) (Empty!4869) )
))
(declare-datatypes ((BalanceConc!9678 0))(
  ( (BalanceConc!9679 (c!232918 Conc!4869)) )
))
(declare-fun objs!24 () BalanceConc!9678)

(declare-fun isEmpty!8925 (BalanceConc!9678) Bool)

(assert (=> b!1417609 (= res!641952 (not (isEmpty!8925 objs!24)))))

(declare-fun b!1417610 () Bool)

(declare-fun e!904963 () Bool)

(declare-fun sep!3 () PrintableTokens!844)

(declare-fun tp!402152 () Bool)

(declare-fun inv!19130 (Conc!4868) Bool)

(assert (=> b!1417610 (= e!904963 (and (inv!19130 (c!232917 (tokens!1820 sep!3))) tp!402152))))

(declare-fun b!1417611 () Bool)

(declare-fun e!904964 () Bool)

(declare-datatypes ((Option!2792 0))(
  ( (None!2791) (Some!2791 (v!22075 PrintableTokens!844)) )
))
(declare-fun lt!476933 () Option!2792)

(declare-fun get!4467 (Option!2792) PrintableTokens!844)

(assert (=> b!1417611 (= e!904964 (not (usesJsonRules!0 (get!4467 lt!476933))))))

(declare-fun res!641956 () Bool)

(assert (=> start!130284 (=> (not res!641956) (not e!904968))))

(declare-fun lambda!62593 () Int)

(declare-fun forall!3611 (BalanceConc!9678 Int) Bool)

(assert (=> start!130284 (= res!641956 (forall!3611 objs!24 lambda!62593))))

(assert (=> start!130284 e!904968))

(declare-fun e!904966 () Bool)

(declare-fun inv!19131 (BalanceConc!9678) Bool)

(assert (=> start!130284 (and (inv!19131 objs!24) e!904966)))

(declare-fun e!904967 () Bool)

(declare-fun inv!19132 (PrintableTokens!844) Bool)

(assert (=> start!130284 (and (inv!19132 acc!229) e!904967)))

(declare-fun e!904961 () Bool)

(assert (=> start!130284 (and (inv!19132 sep!3) e!904961)))

(declare-fun b!1417612 () Bool)

(declare-fun tp!402154 () Bool)

(declare-fun inv!19133 (Conc!4869) Bool)

(assert (=> b!1417612 (= e!904966 (and (inv!19133 (c!232918 objs!24)) tp!402154))))

(declare-fun b!1417613 () Bool)

(declare-fun res!641953 () Bool)

(assert (=> b!1417613 (=> (not res!641953) (not e!904968))))

(assert (=> b!1417613 (= res!641953 (usesJsonRules!0 sep!3))))

(declare-fun tp!402153 () Bool)

(declare-fun e!904965 () Bool)

(declare-fun b!1417614 () Bool)

(declare-fun inv!19134 (BalanceConc!9676) Bool)

(assert (=> b!1417614 (= e!904967 (and tp!402153 (inv!19134 (tokens!1820 acc!229)) e!904965))))

(declare-fun b!1417615 () Bool)

(declare-fun res!641954 () Bool)

(assert (=> b!1417615 (=> (not res!641954) (not e!904968))))

(declare-fun size!11992 (BalanceConc!9678) Int)

(assert (=> b!1417615 (= res!641954 (= (size!11992 objs!24) 1))))

(declare-fun b!1417616 () Bool)

(declare-fun e!904962 () Bool)

(assert (=> b!1417616 (= e!904962 e!904964)))

(declare-fun res!641958 () Bool)

(assert (=> b!1417616 (=> (not res!641958) (not e!904964))))

(declare-fun isEmpty!8926 (Option!2792) Bool)

(assert (=> b!1417616 (= res!641958 (not (isEmpty!8926 lt!476933)))))

(declare-fun lt!476934 () Option!2792)

(declare-fun recombineSlicesWithSep!0 (BalanceConc!9678 PrintableTokens!844 PrintableTokens!844) Option!2792)

(declare-fun tail!2100 (BalanceConc!9678) BalanceConc!9678)

(assert (=> b!1417616 (= lt!476933 (recombineSlicesWithSep!0 (tail!2100 objs!24) sep!3 (v!22075 lt!476934)))))

(declare-fun b!1417617 () Bool)

(assert (=> b!1417617 (= e!904968 e!904962)))

(declare-fun res!641957 () Bool)

(assert (=> b!1417617 (=> (not res!641957) (not e!904962))))

(get-info :version)

(assert (=> b!1417617 (= res!641957 ((_ is Some!2791) lt!476934))))

(declare-fun append!446 (PrintableTokens!844 PrintableTokens!844) Option!2792)

(declare-fun head!2745 (BalanceConc!9678) PrintableTokens!844)

(assert (=> b!1417617 (= lt!476934 (append!446 acc!229 (head!2745 objs!24)))))

(declare-fun tp!402150 () Bool)

(declare-fun b!1417618 () Bool)

(assert (=> b!1417618 (= e!904961 (and tp!402150 (inv!19134 (tokens!1820 sep!3)) e!904963))))

(declare-fun b!1417619 () Bool)

(declare-fun tp!402151 () Bool)

(assert (=> b!1417619 (= e!904965 (and (inv!19130 (c!232917 (tokens!1820 acc!229))) tp!402151))))

(assert (= (and start!130284 res!641956) b!1417608))

(assert (= (and b!1417608 res!641955) b!1417613))

(assert (= (and b!1417613 res!641953) b!1417609))

(assert (= (and b!1417609 res!641952) b!1417615))

(assert (= (and b!1417615 res!641954) b!1417617))

(assert (= (and b!1417617 res!641957) b!1417616))

(assert (= (and b!1417616 res!641958) b!1417611))

(assert (= start!130284 b!1417612))

(assert (= b!1417614 b!1417619))

(assert (= start!130284 b!1417614))

(assert (= b!1417618 b!1417610))

(assert (= start!130284 b!1417618))

(declare-fun m!1603995 () Bool)

(assert (=> b!1417618 m!1603995))

(declare-fun m!1603997 () Bool)

(assert (=> b!1417613 m!1603997))

(declare-fun m!1603999 () Bool)

(assert (=> b!1417611 m!1603999))

(assert (=> b!1417611 m!1603999))

(declare-fun m!1604001 () Bool)

(assert (=> b!1417611 m!1604001))

(declare-fun m!1604003 () Bool)

(assert (=> start!130284 m!1604003))

(declare-fun m!1604005 () Bool)

(assert (=> start!130284 m!1604005))

(declare-fun m!1604007 () Bool)

(assert (=> start!130284 m!1604007))

(declare-fun m!1604009 () Bool)

(assert (=> start!130284 m!1604009))

(declare-fun m!1604011 () Bool)

(assert (=> b!1417616 m!1604011))

(declare-fun m!1604013 () Bool)

(assert (=> b!1417616 m!1604013))

(assert (=> b!1417616 m!1604013))

(declare-fun m!1604015 () Bool)

(assert (=> b!1417616 m!1604015))

(declare-fun m!1604017 () Bool)

(assert (=> b!1417617 m!1604017))

(assert (=> b!1417617 m!1604017))

(declare-fun m!1604019 () Bool)

(assert (=> b!1417617 m!1604019))

(declare-fun m!1604021 () Bool)

(assert (=> b!1417610 m!1604021))

(declare-fun m!1604023 () Bool)

(assert (=> b!1417609 m!1604023))

(declare-fun m!1604025 () Bool)

(assert (=> b!1417614 m!1604025))

(declare-fun m!1604027 () Bool)

(assert (=> b!1417619 m!1604027))

(declare-fun m!1604029 () Bool)

(assert (=> b!1417608 m!1604029))

(declare-fun m!1604031 () Bool)

(assert (=> b!1417612 m!1604031))

(declare-fun m!1604033 () Bool)

(assert (=> b!1417615 m!1604033))

(check-sat (not b!1417610) (not b!1417611) (not b!1417612) (not b!1417613) (not start!130284) (not b!1417616) (not b!1417608) (not b!1417609) (not b!1417619) (not b!1417617) (not b!1417618) (not b!1417615) (not b!1417614))
(check-sat)
(get-model)

(declare-fun d!405902 () Bool)

(declare-datatypes ((JsonLexer!416 0))(
  ( (JsonLexer!417) )
))
(declare-fun rules!109 (JsonLexer!416) List!14603)

(assert (=> d!405902 (= (usesJsonRules!0 acc!229) (= (rules!11116 acc!229) (rules!109 JsonLexer!417)))))

(declare-fun bs!339508 () Bool)

(assert (= bs!339508 d!405902))

(declare-fun m!1604037 () Bool)

(assert (=> bs!339508 m!1604037))

(assert (=> b!1417608 d!405902))

(declare-fun d!405906 () Bool)

(declare-fun c!232921 () Bool)

(assert (=> d!405906 (= c!232921 ((_ is Node!4868) (c!232917 (tokens!1820 acc!229))))))

(declare-fun e!904973 () Bool)

(assert (=> d!405906 (= (inv!19130 (c!232917 (tokens!1820 acc!229))) e!904973)))

(declare-fun b!1417626 () Bool)

(declare-fun inv!19135 (Conc!4868) Bool)

(assert (=> b!1417626 (= e!904973 (inv!19135 (c!232917 (tokens!1820 acc!229))))))

(declare-fun b!1417627 () Bool)

(declare-fun e!904974 () Bool)

(assert (=> b!1417627 (= e!904973 e!904974)))

(declare-fun res!641963 () Bool)

(assert (=> b!1417627 (= res!641963 (not ((_ is Leaf!7330) (c!232917 (tokens!1820 acc!229)))))))

(assert (=> b!1417627 (=> res!641963 e!904974)))

(declare-fun b!1417628 () Bool)

(declare-fun inv!19137 (Conc!4868) Bool)

(assert (=> b!1417628 (= e!904974 (inv!19137 (c!232917 (tokens!1820 acc!229))))))

(assert (= (and d!405906 c!232921) b!1417626))

(assert (= (and d!405906 (not c!232921)) b!1417627))

(assert (= (and b!1417627 (not res!641963)) b!1417628))

(declare-fun m!1604039 () Bool)

(assert (=> b!1417626 m!1604039))

(declare-fun m!1604041 () Bool)

(assert (=> b!1417628 m!1604041))

(assert (=> b!1417619 d!405906))

(declare-fun d!405908 () Bool)

(declare-fun lt!476937 () Bool)

(declare-fun isEmpty!8928 (List!14604) Bool)

(declare-fun list!5727 (BalanceConc!9678) List!14604)

(assert (=> d!405908 (= lt!476937 (isEmpty!8928 (list!5727 objs!24)))))

(declare-fun isEmpty!8929 (Conc!4869) Bool)

(assert (=> d!405908 (= lt!476937 (isEmpty!8929 (c!232918 objs!24)))))

(assert (=> d!405908 (= (isEmpty!8925 objs!24) lt!476937)))

(declare-fun bs!339509 () Bool)

(assert (= bs!339509 d!405908))

(declare-fun m!1604043 () Bool)

(assert (=> bs!339509 m!1604043))

(assert (=> bs!339509 m!1604043))

(declare-fun m!1604045 () Bool)

(assert (=> bs!339509 m!1604045))

(declare-fun m!1604047 () Bool)

(assert (=> bs!339509 m!1604047))

(assert (=> b!1417609 d!405908))

(declare-fun d!405910 () Bool)

(declare-fun c!232922 () Bool)

(assert (=> d!405910 (= c!232922 ((_ is Node!4868) (c!232917 (tokens!1820 sep!3))))))

(declare-fun e!904975 () Bool)

(assert (=> d!405910 (= (inv!19130 (c!232917 (tokens!1820 sep!3))) e!904975)))

(declare-fun b!1417629 () Bool)

(assert (=> b!1417629 (= e!904975 (inv!19135 (c!232917 (tokens!1820 sep!3))))))

(declare-fun b!1417630 () Bool)

(declare-fun e!904976 () Bool)

(assert (=> b!1417630 (= e!904975 e!904976)))

(declare-fun res!641964 () Bool)

(assert (=> b!1417630 (= res!641964 (not ((_ is Leaf!7330) (c!232917 (tokens!1820 sep!3)))))))

(assert (=> b!1417630 (=> res!641964 e!904976)))

(declare-fun b!1417631 () Bool)

(assert (=> b!1417631 (= e!904976 (inv!19137 (c!232917 (tokens!1820 sep!3))))))

(assert (= (and d!405910 c!232922) b!1417629))

(assert (= (and d!405910 (not c!232922)) b!1417630))

(assert (= (and b!1417630 (not res!641964)) b!1417631))

(declare-fun m!1604049 () Bool)

(assert (=> b!1417629 m!1604049))

(declare-fun m!1604051 () Bool)

(assert (=> b!1417631 m!1604051))

(assert (=> b!1417610 d!405910))

(declare-fun d!405912 () Bool)

(declare-fun lt!476940 () Bool)

(declare-fun forall!3614 (List!14604 Int) Bool)

(assert (=> d!405912 (= lt!476940 (forall!3614 (list!5727 objs!24) lambda!62593))))

(declare-fun forall!3615 (Conc!4869 Int) Bool)

(assert (=> d!405912 (= lt!476940 (forall!3615 (c!232918 objs!24) lambda!62593))))

(assert (=> d!405912 (= (forall!3611 objs!24 lambda!62593) lt!476940)))

(declare-fun bs!339510 () Bool)

(assert (= bs!339510 d!405912))

(assert (=> bs!339510 m!1604043))

(assert (=> bs!339510 m!1604043))

(declare-fun m!1604053 () Bool)

(assert (=> bs!339510 m!1604053))

(declare-fun m!1604055 () Bool)

(assert (=> bs!339510 m!1604055))

(assert (=> start!130284 d!405912))

(declare-fun d!405914 () Bool)

(declare-fun isBalanced!1447 (Conc!4869) Bool)

(assert (=> d!405914 (= (inv!19131 objs!24) (isBalanced!1447 (c!232918 objs!24)))))

(declare-fun bs!339511 () Bool)

(assert (= bs!339511 d!405914))

(declare-fun m!1604057 () Bool)

(assert (=> bs!339511 m!1604057))

(assert (=> start!130284 d!405914))

(declare-fun d!405916 () Bool)

(declare-fun res!641971 () Bool)

(declare-fun e!904979 () Bool)

(assert (=> d!405916 (=> (not res!641971) (not e!904979))))

(declare-fun isEmpty!8933 (List!14603) Bool)

(assert (=> d!405916 (= res!641971 (not (isEmpty!8933 (rules!11116 acc!229))))))

(assert (=> d!405916 (= (inv!19132 acc!229) e!904979)))

(declare-fun b!1417638 () Bool)

(declare-fun res!641972 () Bool)

(assert (=> b!1417638 (=> (not res!641972) (not e!904979))))

(declare-datatypes ((LexerInterface!2207 0))(
  ( (LexerInterfaceExt!2204 (__x!9053 Int)) (Lexer!2205) )
))
(declare-fun rulesInvariant!2077 (LexerInterface!2207 List!14603) Bool)

(assert (=> b!1417638 (= res!641972 (rulesInvariant!2077 Lexer!2205 (rules!11116 acc!229)))))

(declare-fun b!1417639 () Bool)

(declare-fun res!641973 () Bool)

(assert (=> b!1417639 (=> (not res!641973) (not e!904979))))

(declare-fun rulesProduceEachTokenIndividually!804 (LexerInterface!2207 List!14603 BalanceConc!9676) Bool)

(assert (=> b!1417639 (= res!641973 (rulesProduceEachTokenIndividually!804 Lexer!2205 (rules!11116 acc!229) (tokens!1820 acc!229)))))

(declare-fun b!1417640 () Bool)

(declare-fun separableTokens!189 (LexerInterface!2207 BalanceConc!9676 List!14603) Bool)

(assert (=> b!1417640 (= e!904979 (separableTokens!189 Lexer!2205 (tokens!1820 acc!229) (rules!11116 acc!229)))))

(assert (= (and d!405916 res!641971) b!1417638))

(assert (= (and b!1417638 res!641972) b!1417639))

(assert (= (and b!1417639 res!641973) b!1417640))

(declare-fun m!1604059 () Bool)

(assert (=> d!405916 m!1604059))

(declare-fun m!1604061 () Bool)

(assert (=> b!1417638 m!1604061))

(declare-fun m!1604063 () Bool)

(assert (=> b!1417639 m!1604063))

(declare-fun m!1604065 () Bool)

(assert (=> b!1417640 m!1604065))

(assert (=> start!130284 d!405916))

(declare-fun d!405918 () Bool)

(declare-fun res!641974 () Bool)

(declare-fun e!904980 () Bool)

(assert (=> d!405918 (=> (not res!641974) (not e!904980))))

(assert (=> d!405918 (= res!641974 (not (isEmpty!8933 (rules!11116 sep!3))))))

(assert (=> d!405918 (= (inv!19132 sep!3) e!904980)))

(declare-fun b!1417641 () Bool)

(declare-fun res!641975 () Bool)

(assert (=> b!1417641 (=> (not res!641975) (not e!904980))))

(assert (=> b!1417641 (= res!641975 (rulesInvariant!2077 Lexer!2205 (rules!11116 sep!3)))))

(declare-fun b!1417642 () Bool)

(declare-fun res!641976 () Bool)

(assert (=> b!1417642 (=> (not res!641976) (not e!904980))))

(assert (=> b!1417642 (= res!641976 (rulesProduceEachTokenIndividually!804 Lexer!2205 (rules!11116 sep!3) (tokens!1820 sep!3)))))

(declare-fun b!1417643 () Bool)

(assert (=> b!1417643 (= e!904980 (separableTokens!189 Lexer!2205 (tokens!1820 sep!3) (rules!11116 sep!3)))))

(assert (= (and d!405918 res!641974) b!1417641))

(assert (= (and b!1417641 res!641975) b!1417642))

(assert (= (and b!1417642 res!641976) b!1417643))

(declare-fun m!1604067 () Bool)

(assert (=> d!405918 m!1604067))

(declare-fun m!1604069 () Bool)

(assert (=> b!1417641 m!1604069))

(declare-fun m!1604071 () Bool)

(assert (=> b!1417642 m!1604071))

(declare-fun m!1604073 () Bool)

(assert (=> b!1417643 m!1604073))

(assert (=> start!130284 d!405918))

(declare-fun d!405920 () Bool)

(assert (=> d!405920 (= (isEmpty!8926 lt!476933) (not ((_ is Some!2791) lt!476933)))))

(assert (=> b!1417616 d!405920))

(declare-fun bs!339516 () Bool)

(declare-fun d!405922 () Bool)

(assert (= bs!339516 (and d!405922 start!130284)))

(declare-fun lambda!62596 () Int)

(assert (=> bs!339516 (= lambda!62596 lambda!62593)))

(declare-fun b!1417732 () Bool)

(declare-fun e!905033 () Option!2792)

(declare-fun e!905030 () Option!2792)

(assert (=> b!1417732 (= e!905033 e!905030)))

(declare-fun lt!477151 () Option!2792)

(declare-fun call!96173 () Option!2792)

(assert (=> b!1417732 (= lt!477151 call!96173)))

(declare-fun c!232963 () Bool)

(assert (=> b!1417732 (= c!232963 ((_ is Some!2791) lt!477151))))

(declare-fun b!1417734 () Bool)

(declare-fun e!905034 () Bool)

(declare-fun lt!477152 () Option!2792)

(assert (=> b!1417734 (= e!905034 (usesJsonRules!0 (get!4467 lt!477152)))))

(declare-fun b!1417735 () Bool)

(assert (=> b!1417735 (= e!905033 None!2791)))

(declare-fun bm!96168 () Bool)

(declare-fun lt!477153 () Option!2792)

(declare-fun c!232962 () Bool)

(declare-fun call!96175 () PrintableTokens!844)

(assert (=> bm!96168 (= call!96173 (append!446 (v!22075 lt!476934) (ite c!232962 call!96175 (v!22075 lt!477153))))))

(declare-fun bm!96169 () Bool)

(declare-fun call!96176 () BalanceConc!9678)

(declare-fun lt!477150 () Option!2792)

(declare-fun call!96174 () Option!2792)

(assert (=> bm!96169 (= call!96174 (recombineSlicesWithSep!0 call!96176 sep!3 (ite c!232962 (v!22075 lt!477150) (v!22075 lt!477151))))))

(declare-fun b!1417736 () Bool)

(declare-fun e!905031 () Option!2792)

(assert (=> b!1417736 (= e!905031 (Some!2791 (v!22075 lt!476934)))))

(declare-fun b!1417737 () Bool)

(declare-fun c!232964 () Bool)

(assert (=> b!1417737 (= c!232964 ((_ is Some!2791) lt!477150))))

(assert (=> b!1417737 (= lt!477150 call!96173)))

(declare-fun e!905032 () Option!2792)

(declare-fun e!905029 () Option!2792)

(assert (=> b!1417737 (= e!905032 e!905029)))

(declare-fun b!1417738 () Bool)

(declare-fun c!232965 () Bool)

(assert (=> b!1417738 (= c!232965 ((_ is Some!2791) lt!477153))))

(assert (=> b!1417738 (= lt!477153 (append!446 call!96175 sep!3))))

(assert (=> b!1417738 (= e!905032 e!905033)))

(assert (=> d!405922 e!905034))

(declare-fun res!641991 () Bool)

(assert (=> d!405922 (=> res!641991 e!905034)))

(assert (=> d!405922 (= res!641991 (isEmpty!8926 lt!477152))))

(assert (=> d!405922 (= lt!477152 e!905031)))

(declare-fun c!232961 () Bool)

(assert (=> d!405922 (= c!232961 (isEmpty!8925 (tail!2100 objs!24)))))

(assert (=> d!405922 (forall!3611 (tail!2100 objs!24) lambda!62596)))

(assert (=> d!405922 (= (recombineSlicesWithSep!0 (tail!2100 objs!24) sep!3 (v!22075 lt!476934)) lt!477152)))

(declare-fun b!1417733 () Bool)

(assert (=> b!1417733 (= e!905031 e!905032)))

(assert (=> b!1417733 (= c!232962 (= (size!11992 (tail!2100 objs!24)) 1))))

(declare-fun b!1417739 () Bool)

(assert (=> b!1417739 (= e!905029 None!2791)))

(declare-fun b!1417740 () Bool)

(assert (=> b!1417740 (= e!905030 call!96174)))

(declare-fun bm!96170 () Bool)

(assert (=> bm!96170 (= call!96176 (tail!2100 (tail!2100 objs!24)))))

(declare-fun b!1417741 () Bool)

(assert (=> b!1417741 (= e!905030 None!2791)))

(declare-fun b!1417742 () Bool)

(assert (=> b!1417742 (= e!905029 call!96174)))

(declare-fun bm!96171 () Bool)

(assert (=> bm!96171 (= call!96175 (head!2745 (tail!2100 objs!24)))))

(assert (= (and d!405922 c!232961) b!1417736))

(assert (= (and d!405922 (not c!232961)) b!1417733))

(assert (= (and b!1417733 c!232962) b!1417737))

(assert (= (and b!1417733 (not c!232962)) b!1417738))

(assert (= (and b!1417737 c!232964) b!1417742))

(assert (= (and b!1417737 (not c!232964)) b!1417739))

(assert (= (and b!1417738 c!232965) b!1417732))

(assert (= (and b!1417738 (not c!232965)) b!1417735))

(assert (= (and b!1417732 c!232963) b!1417740))

(assert (= (and b!1417732 (not c!232963)) b!1417741))

(assert (= (or b!1417737 b!1417738) bm!96171))

(assert (= (or b!1417742 b!1417740) bm!96170))

(assert (= (or b!1417737 b!1417732) bm!96168))

(assert (= (or b!1417742 b!1417740) bm!96169))

(assert (= (and d!405922 (not res!641991)) b!1417734))

(assert (=> bm!96171 m!1604013))

(declare-fun m!1604209 () Bool)

(assert (=> bm!96171 m!1604209))

(declare-fun m!1604211 () Bool)

(assert (=> b!1417738 m!1604211))

(declare-fun m!1604215 () Bool)

(assert (=> bm!96169 m!1604215))

(declare-fun m!1604217 () Bool)

(assert (=> b!1417734 m!1604217))

(assert (=> b!1417734 m!1604217))

(declare-fun m!1604219 () Bool)

(assert (=> b!1417734 m!1604219))

(declare-fun m!1604221 () Bool)

(assert (=> d!405922 m!1604221))

(assert (=> d!405922 m!1604013))

(declare-fun m!1604223 () Bool)

(assert (=> d!405922 m!1604223))

(assert (=> d!405922 m!1604013))

(declare-fun m!1604225 () Bool)

(assert (=> d!405922 m!1604225))

(declare-fun m!1604227 () Bool)

(assert (=> bm!96168 m!1604227))

(assert (=> b!1417733 m!1604013))

(declare-fun m!1604229 () Bool)

(assert (=> b!1417733 m!1604229))

(assert (=> bm!96170 m!1604013))

(declare-fun m!1604231 () Bool)

(assert (=> bm!96170 m!1604231))

(assert (=> b!1417616 d!405922))

(declare-fun d!405938 () Bool)

(declare-fun e!905037 () Bool)

(assert (=> d!405938 e!905037))

(declare-fun res!641994 () Bool)

(assert (=> d!405938 (=> (not res!641994) (not e!905037))))

(declare-fun tail!2101 (Conc!4869) Conc!4869)

(assert (=> d!405938 (= res!641994 (isBalanced!1447 (tail!2101 (c!232918 objs!24))))))

(declare-fun lt!477156 () BalanceConc!9678)

(assert (=> d!405938 (= lt!477156 (BalanceConc!9679 (tail!2101 (c!232918 objs!24))))))

(assert (=> d!405938 (not (isEmpty!8925 objs!24))))

(assert (=> d!405938 (= (tail!2100 objs!24) lt!477156)))

(declare-fun b!1417745 () Bool)

(declare-fun tail!2102 (List!14604) List!14604)

(assert (=> b!1417745 (= e!905037 (= (list!5727 lt!477156) (tail!2102 (list!5727 objs!24))))))

(assert (= (and d!405938 res!641994) b!1417745))

(declare-fun m!1604233 () Bool)

(assert (=> d!405938 m!1604233))

(assert (=> d!405938 m!1604233))

(declare-fun m!1604235 () Bool)

(assert (=> d!405938 m!1604235))

(assert (=> d!405938 m!1604023))

(declare-fun m!1604237 () Bool)

(assert (=> b!1417745 m!1604237))

(assert (=> b!1417745 m!1604043))

(assert (=> b!1417745 m!1604043))

(declare-fun m!1604239 () Bool)

(assert (=> b!1417745 m!1604239))

(assert (=> b!1417616 d!405938))

(declare-fun b!1417883 () Bool)

(declare-fun e!905124 () Option!2792)

(assert (=> b!1417883 (= e!905124 None!2791)))

(declare-fun bm!96262 () Bool)

(declare-datatypes ((Unit!21455 0))(
  ( (Unit!21456) )
))
(declare-fun call!96289 () Unit!21455)

(declare-fun call!96284 () Unit!21455)

(assert (=> bm!96262 (= call!96289 call!96284)))

(declare-fun b!1417884 () Bool)

(declare-fun e!905126 () List!14602)

(declare-fun call!96279 () List!14602)

(assert (=> b!1417884 (= e!905126 call!96279)))

(declare-fun bm!96263 () Bool)

(declare-fun call!96295 () List!14601)

(declare-fun call!96272 () BalanceConc!9674)

(declare-fun list!5728 (BalanceConc!9674) List!14601)

(assert (=> bm!96263 (= call!96295 (list!5728 call!96272))))

(declare-fun c!233007 () Bool)

(declare-fun bm!96264 () Bool)

(declare-fun lt!477316 () List!14602)

(declare-fun lt!477361 () LexerInterface!2207)

(declare-fun e!905130 () List!14602)

(declare-fun call!96299 () List!14601)

(declare-fun c!233010 () Bool)

(declare-fun printList!661 (LexerInterface!2207 List!14602) List!14601)

(assert (=> bm!96264 (= call!96299 (printList!661 (ite (or c!233010 c!233007) Lexer!2205 lt!477361) (ite c!233010 (t!124207 lt!477316) e!905130)))))

(declare-fun lt!477310 () List!14602)

(declare-fun bm!96265 () Bool)

(declare-fun lt!477362 () List!14602)

(declare-fun lt!477303 () List!14602)

(declare-fun lt!477332 () List!14602)

(declare-fun ++!3807 (List!14602 List!14602) List!14602)

(assert (=> bm!96265 (= call!96279 (++!3807 (ite c!233010 lt!477332 lt!477362) (ite c!233010 lt!477310 lt!477303)))))

(declare-fun bm!96266 () Bool)

(declare-fun call!96297 () BalanceConc!9674)

(declare-fun call!96282 () BalanceConc!9674)

(assert (=> bm!96266 (= call!96297 call!96282)))

(declare-fun bm!96267 () Bool)

(declare-fun lt!477337 () List!14602)

(declare-fun charsOf!1478 (Token!4724) BalanceConc!9674)

(assert (=> bm!96267 (= call!96272 (charsOf!1478 (ite c!233010 (h!19937 lt!477316) (h!19937 lt!477337))))))

(declare-fun bm!96268 () Bool)

(declare-fun call!96270 () List!14601)

(declare-fun call!96303 () List!14601)

(assert (=> bm!96268 (= call!96270 call!96303)))

(declare-fun bm!96269 () Bool)

(declare-fun call!96287 () BalanceConc!9674)

(declare-fun call!96291 () BalanceConc!9674)

(assert (=> bm!96269 (= call!96287 call!96291)))

(declare-fun call!96305 () List!14602)

(declare-fun bm!96270 () Bool)

(declare-fun list!5729 (BalanceConc!9676) List!14602)

(assert (=> bm!96270 (= call!96305 (list!5729 (ite c!233010 (tokens!1820 (head!2745 objs!24)) (ite c!233007 (tokens!1820 acc!229) (tokens!1820 (head!2745 objs!24))))))))

(declare-fun b!1417885 () Bool)

(declare-fun c!233004 () Bool)

(declare-fun separableTokensPredicate!484 (LexerInterface!2207 Token!4724 Token!4724 List!14603) Bool)

(declare-fun last!81 (BalanceConc!9676) Token!4724)

(declare-fun head!2749 (BalanceConc!9676) Token!4724)

(assert (=> b!1417885 (= c!233004 (separableTokensPredicate!484 Lexer!2205 (last!81 (tokens!1820 acc!229)) (head!2749 (tokens!1820 (head!2745 objs!24))) (rules!11116 acc!229)))))

(declare-fun lt!477355 () Unit!21455)

(declare-fun lt!477347 () Unit!21455)

(assert (=> b!1417885 (= lt!477355 lt!477347)))

(declare-fun lt!477331 () LexerInterface!2207)

(declare-fun lt!477341 () Token!4724)

(declare-fun rulesProduceIndividualToken!1170 (LexerInterface!2207 List!14603 Token!4724) Bool)

(assert (=> b!1417885 (rulesProduceIndividualToken!1170 lt!477331 (rules!11116 acc!229) lt!477341)))

(declare-fun lt!477366 () List!14602)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!355 (LexerInterface!2207 List!14603 List!14602 Token!4724) Unit!21455)

(assert (=> b!1417885 (= lt!477347 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!355 lt!477331 (rules!11116 acc!229) lt!477366 lt!477341))))

(assert (=> b!1417885 (= lt!477341 (head!2749 (tokens!1820 (head!2745 objs!24))))))

(declare-fun call!96304 () List!14602)

(assert (=> b!1417885 (= lt!477366 call!96304)))

(assert (=> b!1417885 (= lt!477331 Lexer!2205)))

(declare-fun lt!477309 () Unit!21455)

(declare-fun lt!477346 () Unit!21455)

(assert (=> b!1417885 (= lt!477309 lt!477346)))

(declare-fun lt!477330 () LexerInterface!2207)

(declare-fun lt!477323 () Token!4724)

(assert (=> b!1417885 (rulesProduceIndividualToken!1170 lt!477330 (rules!11116 acc!229) lt!477323)))

(declare-fun lt!477359 () List!14602)

(assert (=> b!1417885 (= lt!477346 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!355 lt!477330 (rules!11116 acc!229) lt!477359 lt!477323))))

(assert (=> b!1417885 (= lt!477323 (last!81 (tokens!1820 acc!229)))))

(declare-fun call!96298 () List!14602)

(assert (=> b!1417885 (= lt!477359 call!96298)))

(assert (=> b!1417885 (= lt!477330 Lexer!2205)))

(declare-fun e!905129 () Option!2792)

(assert (=> b!1417885 (= e!905129 e!905124)))

(declare-fun b!1417886 () Bool)

(declare-fun lt!477326 () Unit!21455)

(declare-fun Unit!21457 () Unit!21455)

(assert (=> b!1417886 (= lt!477326 Unit!21457)))

(declare-fun call!96267 () List!14601)

(declare-fun e!905125 () List!14601)

(assert (=> b!1417886 (= call!96267 e!905125)))

(declare-fun c!233011 () Bool)

(assert (=> b!1417886 (= c!233011 ((_ is Cons!14536) lt!477337))))

(assert (=> b!1417886 (= lt!477337 call!96298)))

(declare-fun lt!477343 () Unit!21455)

(declare-fun Unit!21458 () Unit!21455)

(assert (=> b!1417886 (= lt!477343 Unit!21458)))

(declare-fun call!96268 () BalanceConc!9674)

(declare-fun call!96280 () BalanceConc!9674)

(assert (=> b!1417886 (= call!96268 call!96280)))

(declare-fun lt!477324 () Unit!21455)

(declare-fun Unit!21459 () Unit!21455)

(assert (=> b!1417886 (= lt!477324 Unit!21459)))

(declare-fun call!96273 () BalanceConc!9674)

(assert (=> b!1417886 (= call!96273 call!96268)))

(declare-fun lt!477353 () Unit!21455)

(declare-fun call!96283 () Unit!21455)

(assert (=> b!1417886 (= lt!477353 call!96283)))

(declare-fun lt!477358 () Unit!21455)

(declare-fun Unit!21460 () Unit!21455)

(assert (=> b!1417886 (= lt!477358 Unit!21460)))

(assert (=> b!1417886 (= call!96287 call!96297)))

(declare-fun lt!477334 () Unit!21455)

(assert (=> b!1417886 (= lt!477334 call!96289)))

(declare-fun lt!477339 () Unit!21455)

(declare-fun Unit!21461 () Unit!21455)

(assert (=> b!1417886 (= lt!477339 Unit!21461)))

(declare-fun call!96276 () List!14601)

(assert (=> b!1417886 (= call!96276 Nil!14535)))

(declare-fun lt!477318 () Unit!21455)

(declare-fun lt!477352 () Unit!21455)

(assert (=> b!1417886 (= lt!477318 lt!477352)))

(declare-fun call!96296 () List!14601)

(assert (=> b!1417886 (= call!96296 call!96270)))

(declare-fun call!96275 () Unit!21455)

(assert (=> b!1417886 (= lt!477352 call!96275)))

(declare-fun lt!477315 () List!14602)

(assert (=> b!1417886 (= lt!477315 call!96298)))

(declare-fun lt!477350 () List!14602)

(assert (=> b!1417886 (= lt!477350 Nil!14536)))

(declare-fun lt!477307 () LexerInterface!2207)

(assert (=> b!1417886 (= lt!477307 Lexer!2205)))

(assert (=> b!1417886 (= e!905129 (Some!2791 (head!2745 objs!24)))))

(declare-fun bm!96271 () Bool)

(declare-fun printTailRec!643 (LexerInterface!2207 BalanceConc!9676 Int BalanceConc!9674) BalanceConc!9674)

(assert (=> bm!96271 (= call!96280 (printTailRec!643 Lexer!2205 (tokens!1820 (head!2745 objs!24)) 0 (BalanceConc!9675 Empty!4867)))))

(declare-fun b!1417887 () Bool)

(declare-fun e!905122 () List!14601)

(assert (=> b!1417887 (= e!905122 call!96295)))

(declare-fun b!1417888 () Bool)

(declare-fun e!905121 () Option!2792)

(assert (=> b!1417888 (= e!905121 e!905129)))

(declare-fun isEmpty!8934 (BalanceConc!9676) Bool)

(assert (=> b!1417888 (= c!233007 (isEmpty!8934 (tokens!1820 acc!229)))))

(declare-fun b!1417889 () Bool)

(declare-fun e!905127 () List!14601)

(assert (=> b!1417889 (= e!905127 Nil!14535)))

(declare-fun call!96286 () List!14601)

(declare-fun call!96300 () List!14601)

(declare-fun bm!96272 () Bool)

(declare-fun call!96278 () List!14601)

(declare-fun ++!3808 (List!14601 List!14601) List!14601)

(assert (=> bm!96272 (= call!96303 (++!3808 (ite c!233010 call!96295 (ite c!233007 call!96286 call!96300)) (ite c!233010 call!96299 call!96278)))))

(declare-fun bm!96273 () Bool)

(declare-fun c!233009 () Bool)

(assert (=> bm!96273 (= c!233009 c!233007)))

(declare-fun call!96269 () List!14601)

(assert (=> bm!96273 (= call!96296 call!96269)))

(declare-fun bm!96274 () Bool)

(declare-fun lt!477327 () List!14602)

(declare-fun lt!477364 () List!14602)

(declare-fun call!96302 () List!14602)

(assert (=> bm!96274 (= call!96302 (++!3807 (ite c!233007 lt!477350 lt!477364) (ite c!233007 lt!477315 lt!477327)))))

(declare-fun b!1417890 () Bool)

(assert (=> b!1417890 (= e!905126 call!96302)))

(declare-fun b!1417891 () Bool)

(declare-fun lt!477338 () List!14602)

(declare-fun lt!477317 () List!14602)

(assert (=> b!1417891 (= e!905130 (++!3807 lt!477338 lt!477317))))

(declare-fun b!1417892 () Bool)

(assert (=> b!1417892 (= e!905125 Nil!14535)))

(declare-fun b!1417893 () Bool)

(declare-fun res!642025 () Bool)

(declare-fun e!905123 () Bool)

(assert (=> b!1417893 (=> (not res!642025) (not e!905123))))

(declare-fun lt!477329 () Option!2792)

(assert (=> b!1417893 (= res!642025 (= (list!5729 (tokens!1820 (get!4467 lt!477329))) (++!3807 (list!5729 (tokens!1820 acc!229)) (list!5729 (tokens!1820 (head!2745 objs!24))))))))

(declare-fun b!1417894 () Bool)

(assert (=> b!1417894 (= e!905127 call!96303)))

(declare-fun b!1417895 () Bool)

(declare-fun print!977 (PrintableTokens!844) BalanceConc!9674)

(assert (=> b!1417895 (= e!905123 (= (list!5728 (print!977 (get!4467 lt!477329))) (++!3808 (list!5728 (print!977 acc!229)) (list!5728 (print!977 (head!2745 objs!24))))))))

(declare-fun b!1417896 () Bool)

(assert (=> b!1417896 (= e!905122 call!96276)))

(declare-fun call!96285 () Unit!21455)

(declare-fun bm!96275 () Bool)

(declare-fun call!96277 () List!14602)

(declare-fun theoremInvertabilityWhenTokenListSeparable!31 (LexerInterface!2207 List!14603 List!14602) Unit!21455)

(assert (=> bm!96275 (= call!96285 (theoremInvertabilityWhenTokenListSeparable!31 Lexer!2205 (ite c!233010 (rules!11116 acc!229) (rules!11116 (head!2745 objs!24))) (ite c!233010 call!96277 (ite c!233007 call!96298 call!96304))))))

(declare-fun bm!96276 () Bool)

(assert (=> bm!96276 (= call!96283 call!96285)))

(declare-fun call!96301 () List!14601)

(declare-fun bm!96277 () Bool)

(assert (=> bm!96277 (= call!96301 (printList!661 (ite c!233010 Lexer!2205 (ite c!233007 lt!477307 lt!477361)) (ite c!233010 Nil!14536 (ite c!233007 lt!477315 lt!477317))))))

(declare-fun bm!96278 () Bool)

(declare-fun call!96293 () List!14601)

(assert (=> bm!96278 (= call!96300 call!96293)))

(declare-fun bm!96279 () Bool)

(assert (=> bm!96279 (= call!96277 (list!5729 (ite c!233010 (tokens!1820 acc!229) (ite c!233007 (tokens!1820 (head!2745 objs!24)) (tokens!1820 acc!229)))))))

(declare-fun bm!96280 () Bool)

(declare-fun call!96292 () List!14601)

(assert (=> bm!96280 (= call!96276 call!96292)))

(declare-fun b!1417897 () Bool)

(declare-fun call!96271 () List!14601)

(assert (=> b!1417897 (= e!905125 call!96271)))

(declare-fun lt!477357 () LexerInterface!2207)

(declare-fun lt!477344 () LexerInterface!2207)

(declare-fun bm!96281 () Bool)

(assert (=> bm!96281 (= call!96269 (printList!661 (ite c!233010 lt!477357 (ite c!233007 lt!477307 lt!477344)) (ite c!233010 lt!477310 e!905126)))))

(declare-fun bm!96282 () Bool)

(declare-fun call!96290 () List!14601)

(assert (=> bm!96282 (= call!96290 (++!3808 (ite c!233010 call!96292 e!905122) (ite c!233010 call!96269 (ite c!233007 call!96300 call!96286))))))

(declare-fun d!405940 () Bool)

(declare-fun e!905128 () Bool)

(assert (=> d!405940 e!905128))

(declare-fun res!642023 () Bool)

(assert (=> d!405940 (=> res!642023 e!905128)))

(assert (=> d!405940 (= res!642023 (isEmpty!8926 lt!477329))))

(assert (=> d!405940 (= lt!477329 e!905121)))

(assert (=> d!405940 (= c!233010 (isEmpty!8934 (tokens!1820 (head!2745 objs!24))))))

(declare-fun lt!477312 () Unit!21455)

(declare-fun lemmaInvariant!233 (PrintableTokens!844) Unit!21455)

(assert (=> d!405940 (= lt!477312 (lemmaInvariant!233 acc!229))))

(declare-fun lt!477336 () Unit!21455)

(assert (=> d!405940 (= lt!477336 (lemmaInvariant!233 (head!2745 objs!24)))))

(assert (=> d!405940 (= (rules!11116 acc!229) (rules!11116 (head!2745 objs!24)))))

(assert (=> d!405940 (= (append!446 acc!229 (head!2745 objs!24)) lt!477329)))

(declare-fun bm!96283 () Bool)

(declare-fun c!233008 () Bool)

(assert (=> bm!96283 (= c!233008 c!233007)))

(assert (=> bm!96283 (= call!96271 call!96290)))

(declare-fun bm!96284 () Bool)

(declare-fun print!978 (LexerInterface!2207 BalanceConc!9676) BalanceConc!9674)

(assert (=> bm!96284 (= call!96282 (print!978 Lexer!2205 (tokens!1820 acc!229)))))

(declare-fun bm!96285 () Bool)

(declare-fun call!96288 () BalanceConc!9674)

(assert (=> bm!96285 (= call!96268 call!96288)))

(declare-fun b!1417898 () Bool)

(declare-fun ++!3809 (BalanceConc!9676 BalanceConc!9676) BalanceConc!9676)

(assert (=> b!1417898 (= e!905124 (Some!2791 (PrintableTokens!845 (rules!11116 acc!229) (++!3809 (tokens!1820 acc!229) (tokens!1820 (head!2745 objs!24))))))))

(declare-fun lt!477333 () LexerInterface!2207)

(assert (=> b!1417898 (= lt!477333 Lexer!2205)))

(assert (=> b!1417898 (= lt!477364 call!96298)))

(assert (=> b!1417898 (= lt!477327 call!96304)))

(declare-fun lt!477335 () Unit!21455)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!26 (LexerInterface!2207 List!14602 List!14602 List!14603) Unit!21455)

(assert (=> b!1417898 (= lt!477335 (tokensListTwoByTwoPredicateConcatSeparableTokensList!26 lt!477333 lt!477364 lt!477327 (rules!11116 acc!229)))))

(declare-fun lt!477345 () Unit!21455)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!26 (LexerInterface!2207 List!14603 List!14602 List!14602) Unit!21455)

(assert (=> b!1417898 (= lt!477345 (lemmaRulesProduceEachTokenIndividuallyConcat!26 lt!477333 (rules!11116 acc!229) lt!477364 lt!477327))))

(declare-fun rulesProduceEachTokenIndividuallyList!688 (LexerInterface!2207 List!14603 List!14602) Bool)

(assert (=> b!1417898 (rulesProduceEachTokenIndividuallyList!688 lt!477333 (rules!11116 acc!229) call!96302)))

(declare-fun lt!477363 () Unit!21455)

(assert (=> b!1417898 (= lt!477363 lt!477345)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!207 (LexerInterface!2207 List!14602 List!14603) Bool)

(assert (=> b!1417898 (tokensListTwoByTwoPredicateSeparableList!207 lt!477333 call!96302 (rules!11116 acc!229))))

(declare-fun lt!477313 () Unit!21455)

(assert (=> b!1417898 (= lt!477313 lt!477335)))

(assert (=> b!1417898 (= lt!477361 Lexer!2205)))

(assert (=> b!1417898 (= lt!477338 call!96298)))

(assert (=> b!1417898 (= lt!477317 call!96304)))

(declare-fun lt!477351 () Unit!21455)

(assert (=> b!1417898 (= lt!477351 call!96275)))

(assert (=> b!1417898 (= call!96267 call!96270)))

(declare-fun lt!477314 () Unit!21455)

(assert (=> b!1417898 (= lt!477314 lt!477351)))

(declare-fun lt!477308 () Unit!21455)

(assert (=> b!1417898 (= lt!477308 call!96289)))

(assert (=> b!1417898 (= call!96287 call!96297)))

(declare-fun lt!477342 () Unit!21455)

(declare-fun Unit!21462 () Unit!21455)

(assert (=> b!1417898 (= lt!477342 Unit!21462)))

(declare-fun lt!477365 () Unit!21455)

(assert (=> b!1417898 (= lt!477365 call!96283)))

(assert (=> b!1417898 (= call!96273 call!96268)))

(declare-fun lt!477340 () Unit!21455)

(declare-fun Unit!21463 () Unit!21455)

(assert (=> b!1417898 (= lt!477340 Unit!21463)))

(declare-fun lt!477306 () PrintableTokens!844)

(assert (=> b!1417898 (= lt!477306 (PrintableTokens!845 (rules!11116 acc!229) (++!3809 (tokens!1820 acc!229) (tokens!1820 (head!2745 objs!24)))))))

(declare-fun lt!477319 () BalanceConc!9676)

(assert (=> b!1417898 (= lt!477319 (++!3809 (tokens!1820 acc!229) (tokens!1820 (head!2745 objs!24))))))

(declare-fun lt!477328 () Unit!21455)

(assert (=> b!1417898 (= lt!477328 (theoremInvertabilityWhenTokenListSeparable!31 Lexer!2205 (rules!11116 acc!229) (list!5729 (++!3809 (tokens!1820 acc!229) (tokens!1820 (head!2745 objs!24))))))))

(assert (=> b!1417898 (= (print!977 (PrintableTokens!845 (rules!11116 acc!229) (++!3809 (tokens!1820 acc!229) (tokens!1820 (head!2745 objs!24))))) (print!978 Lexer!2205 (++!3809 (tokens!1820 acc!229) (tokens!1820 (head!2745 objs!24)))))))

(declare-fun lt!477320 () Unit!21455)

(declare-fun Unit!21464 () Unit!21455)

(assert (=> b!1417898 (= lt!477320 Unit!21464)))

(assert (=> b!1417898 (= lt!477344 Lexer!2205)))

(assert (=> b!1417898 (= lt!477362 call!96298)))

(assert (=> b!1417898 (= lt!477303 call!96304)))

(declare-fun lt!477349 () Unit!21455)

(declare-fun lemmaPrintConcatSameAsConcatPrint!26 (LexerInterface!2207 List!14602 List!14602) Unit!21455)

(assert (=> b!1417898 (= lt!477349 (lemmaPrintConcatSameAsConcatPrint!26 lt!477344 lt!477362 lt!477303))))

(assert (=> b!1417898 (= call!96296 call!96271)))

(declare-fun lt!477304 () Unit!21455)

(assert (=> b!1417898 (= lt!477304 lt!477349)))

(declare-fun bm!96286 () Bool)

(assert (=> bm!96286 (= call!96292 (printList!661 (ite c!233010 lt!477357 (ite c!233007 Lexer!2205 lt!477344)) (ite c!233010 lt!477332 (ite c!233007 Nil!14536 lt!477362))))))

(declare-fun bm!96287 () Bool)

(assert (=> bm!96287 (= call!96293 (printList!661 (ite (or c!233010 c!233007) Lexer!2205 lt!477361) (ite c!233010 call!96305 (ite c!233007 (t!124207 lt!477337) lt!477338))))))

(declare-fun bm!96288 () Bool)

(declare-fun call!96281 () BalanceConc!9674)

(assert (=> bm!96288 (= call!96273 call!96281)))

(declare-fun bm!96289 () Bool)

(assert (=> bm!96289 (= call!96284 (theoremInvertabilityWhenTokenListSeparable!31 Lexer!2205 (ite c!233010 (rules!11116 (head!2745 objs!24)) (rules!11116 acc!229)) (ite c!233010 call!96305 (ite c!233007 call!96304 call!96298))))))

(declare-fun call!96274 () List!14601)

(declare-fun bm!96290 () Bool)

(assert (=> bm!96290 (= call!96274 (printList!661 (ite c!233010 lt!477357 (ite c!233007 lt!477307 lt!477344)) (ite c!233010 call!96279 (ite c!233007 lt!477350 lt!477303))))))

(declare-fun bm!96291 () Bool)

(assert (=> bm!96291 (= call!96288 (print!978 Lexer!2205 (tokens!1820 (head!2745 objs!24))))))

(declare-fun bm!96292 () Bool)

(assert (=> bm!96292 (= call!96278 call!96301)))

(declare-fun bm!96293 () Bool)

(declare-fun c!233005 () Bool)

(assert (=> bm!96293 (= c!233005 c!233007)))

(assert (=> bm!96293 (= call!96267 call!96299)))

(declare-fun bm!96294 () Bool)

(declare-fun call!96294 () Unit!21455)

(assert (=> bm!96294 (= call!96275 call!96294)))

(declare-fun bm!96295 () Bool)

(assert (=> bm!96295 (= call!96281 (print!977 (head!2745 objs!24)))))

(declare-fun b!1417899 () Bool)

(assert (=> b!1417899 (= e!905130 call!96298)))

(declare-fun b!1417900 () Bool)

(assert (=> b!1417900 (= e!905121 (Some!2791 acc!229))))

(assert (=> b!1417900 (= lt!477357 Lexer!2205)))

(assert (=> b!1417900 (= lt!477332 call!96277)))

(assert (=> b!1417900 (= lt!477310 Nil!14536)))

(declare-fun lt!477325 () Unit!21455)

(assert (=> b!1417900 (= lt!477325 call!96294)))

(assert (=> b!1417900 (= call!96274 call!96290)))

(declare-fun lt!477356 () Unit!21455)

(assert (=> b!1417900 (= lt!477356 lt!477325)))

(assert (=> b!1417900 (= call!96301 Nil!14535)))

(declare-fun lt!477348 () Unit!21455)

(declare-fun Unit!21465 () Unit!21455)

(assert (=> b!1417900 (= lt!477348 Unit!21465)))

(declare-fun lt!477322 () Unit!21455)

(assert (=> b!1417900 (= lt!477322 call!96285)))

(assert (=> b!1417900 (= call!96291 call!96282)))

(declare-fun lt!477305 () Unit!21455)

(declare-fun Unit!21466 () Unit!21455)

(assert (=> b!1417900 (= lt!477305 Unit!21466)))

(declare-fun lt!477360 () Unit!21455)

(assert (=> b!1417900 (= lt!477360 call!96284)))

(assert (=> b!1417900 (= call!96281 call!96288)))

(declare-fun lt!477321 () Unit!21455)

(declare-fun Unit!21467 () Unit!21455)

(assert (=> b!1417900 (= lt!477321 Unit!21467)))

(assert (=> b!1417900 (= call!96288 call!96280)))

(declare-fun lt!477354 () Unit!21455)

(declare-fun Unit!21468 () Unit!21455)

(assert (=> b!1417900 (= lt!477354 Unit!21468)))

(assert (=> b!1417900 (= lt!477316 call!96305)))

(declare-fun c!233006 () Bool)

(assert (=> b!1417900 (= c!233006 ((_ is Cons!14536) lt!477316))))

(assert (=> b!1417900 (= call!96293 e!905127)))

(declare-fun lt!477311 () Unit!21455)

(declare-fun Unit!21469 () Unit!21455)

(assert (=> b!1417900 (= lt!477311 Unit!21469)))

(declare-fun bm!96296 () Bool)

(assert (=> bm!96296 (= call!96291 (print!977 acc!229))))

(declare-fun b!1417901 () Bool)

(assert (=> b!1417901 (= e!905128 e!905123)))

(declare-fun res!642024 () Bool)

(assert (=> b!1417901 (=> (not res!642024) (not e!905123))))

(assert (=> b!1417901 (= res!642024 (= (rules!11116 (get!4467 lt!477329)) (rules!11116 acc!229)))))

(declare-fun bm!96297 () Bool)

(assert (=> bm!96297 (= call!96286 call!96274)))

(declare-fun bm!96298 () Bool)

(assert (=> bm!96298 (= call!96304 call!96305)))

(declare-fun bm!96299 () Bool)

(assert (=> bm!96299 (= call!96294 (lemmaPrintConcatSameAsConcatPrint!26 (ite c!233010 lt!477357 (ite c!233007 lt!477307 lt!477361)) (ite c!233010 lt!477332 (ite c!233007 lt!477350 lt!477338)) (ite c!233010 lt!477310 (ite c!233007 lt!477315 lt!477317))))))

(declare-fun bm!96300 () Bool)

(assert (=> bm!96300 (= call!96298 call!96277)))

(assert (= (and d!405940 c!233010) b!1417900))

(assert (= (and d!405940 (not c!233010)) b!1417888))

(assert (= (and b!1417900 c!233006) b!1417894))

(assert (= (and b!1417900 (not c!233006)) b!1417889))

(assert (= (and b!1417888 c!233007) b!1417886))

(assert (= (and b!1417888 (not c!233007)) b!1417885))

(assert (= (and b!1417886 c!233011) b!1417897))

(assert (= (and b!1417886 (not c!233011)) b!1417892))

(assert (= (and b!1417885 c!233004) b!1417898))

(assert (= (and b!1417885 (not c!233004)) b!1417883))

(assert (= (or b!1417886 b!1417898) bm!96288))

(assert (= (or b!1417886 b!1417898) bm!96285))

(assert (= (or b!1417886 b!1417898) bm!96292))

(assert (= (or b!1417886 b!1417898) bm!96266))

(assert (= (or b!1417886 b!1417898) bm!96269))

(assert (= (or b!1417886 b!1417885 b!1417898) bm!96300))

(assert (= (or b!1417897 b!1417898) bm!96278))

(assert (= (or b!1417886 b!1417898) bm!96294))

(assert (= (or b!1417886 b!1417898) bm!96280))

(assert (= (or b!1417886 b!1417885 b!1417898) bm!96298))

(assert (= (or b!1417886 b!1417898) bm!96274))

(assert (= (or b!1417886 b!1417898) bm!96297))

(assert (= (or b!1417886 b!1417898) bm!96273))

(assert (= (and bm!96273 c!233009) b!1417890))

(assert (= (and bm!96273 (not c!233009)) b!1417884))

(assert (= (or b!1417886 b!1417898) bm!96293))

(assert (= (and bm!96293 c!233005) b!1417899))

(assert (= (and bm!96293 (not c!233005)) b!1417891))

(assert (= (or b!1417886 b!1417898) bm!96276))

(assert (= (or b!1417886 b!1417898) bm!96262))

(assert (= (or b!1417886 b!1417898) bm!96268))

(assert (= (or b!1417897 b!1417898) bm!96283))

(assert (= (and bm!96283 c!233008) b!1417887))

(assert (= (and bm!96283 (not c!233008)) b!1417896))

(assert (= (or b!1417900 bm!96280) bm!96286))

(assert (= (or b!1417900 bm!96269) bm!96296))

(assert (= (or b!1417900 b!1417886) bm!96271))

(assert (= (or b!1417900 bm!96300) bm!96279))

(assert (= (or b!1417900 bm!96266) bm!96284))

(assert (= (or b!1417900 bm!96292) bm!96277))

(assert (= (or b!1417894 bm!96293) bm!96264))

(assert (= (or b!1417900 bm!96294) bm!96299))

(assert (= (or b!1417900 b!1417884) bm!96265))

(assert (= (or b!1417900 bm!96288) bm!96295))

(assert (= (or b!1417894 b!1417887) bm!96267))

(assert (= (or b!1417900 bm!96285) bm!96291))

(assert (= (or b!1417900 bm!96298) bm!96270))

(assert (= (or b!1417900 bm!96273) bm!96281))

(assert (= (or b!1417900 bm!96262) bm!96289))

(assert (= (or b!1417900 bm!96276) bm!96275))

(assert (= (or b!1417900 bm!96297) bm!96290))

(assert (= (or b!1417900 bm!96278) bm!96287))

(assert (= (or b!1417894 b!1417887) bm!96263))

(assert (= (or b!1417900 bm!96283) bm!96282))

(assert (= (or b!1417894 bm!96268) bm!96272))

(assert (= (and d!405940 (not res!642023)) b!1417901))

(assert (= (and b!1417901 res!642024) b!1417893))

(assert (= (and b!1417893 res!642025) b!1417895))

(declare-fun m!1604327 () Bool)

(assert (=> bm!96299 m!1604327))

(declare-fun m!1604329 () Bool)

(assert (=> b!1417891 m!1604329))

(declare-fun m!1604331 () Bool)

(assert (=> bm!96274 m!1604331))

(declare-fun m!1604333 () Bool)

(assert (=> bm!96264 m!1604333))

(declare-fun m!1604335 () Bool)

(assert (=> b!1417893 m!1604335))

(declare-fun m!1604337 () Bool)

(assert (=> b!1417893 m!1604337))

(declare-fun m!1604339 () Bool)

(assert (=> b!1417893 m!1604339))

(assert (=> b!1417893 m!1604337))

(assert (=> b!1417893 m!1604335))

(declare-fun m!1604341 () Bool)

(assert (=> b!1417893 m!1604341))

(declare-fun m!1604343 () Bool)

(assert (=> b!1417893 m!1604343))

(declare-fun m!1604345 () Bool)

(assert (=> bm!96271 m!1604345))

(declare-fun m!1604347 () Bool)

(assert (=> bm!96296 m!1604347))

(declare-fun m!1604349 () Bool)

(assert (=> bm!96265 m!1604349))

(declare-fun m!1604351 () Bool)

(assert (=> bm!96277 m!1604351))

(declare-fun m!1604353 () Bool)

(assert (=> bm!96281 m!1604353))

(declare-fun m!1604355 () Bool)

(assert (=> bm!96286 m!1604355))

(declare-fun m!1604357 () Bool)

(assert (=> bm!96290 m!1604357))

(declare-fun m!1604359 () Bool)

(assert (=> bm!96287 m!1604359))

(declare-fun m!1604361 () Bool)

(assert (=> d!405940 m!1604361))

(declare-fun m!1604363 () Bool)

(assert (=> d!405940 m!1604363))

(declare-fun m!1604365 () Bool)

(assert (=> d!405940 m!1604365))

(assert (=> d!405940 m!1604017))

(declare-fun m!1604367 () Bool)

(assert (=> d!405940 m!1604367))

(assert (=> b!1417901 m!1604339))

(declare-fun m!1604369 () Bool)

(assert (=> bm!96263 m!1604369))

(declare-fun m!1604371 () Bool)

(assert (=> bm!96284 m!1604371))

(assert (=> b!1417895 m!1604017))

(declare-fun m!1604373 () Bool)

(assert (=> b!1417895 m!1604373))

(assert (=> b!1417895 m!1604339))

(declare-fun m!1604375 () Bool)

(assert (=> b!1417895 m!1604375))

(assert (=> b!1417895 m!1604347))

(assert (=> b!1417895 m!1604339))

(assert (=> b!1417895 m!1604375))

(declare-fun m!1604377 () Bool)

(assert (=> b!1417895 m!1604377))

(assert (=> b!1417895 m!1604347))

(declare-fun m!1604379 () Bool)

(assert (=> b!1417895 m!1604379))

(assert (=> b!1417895 m!1604379))

(declare-fun m!1604381 () Bool)

(assert (=> b!1417895 m!1604381))

(declare-fun m!1604383 () Bool)

(assert (=> b!1417895 m!1604383))

(assert (=> b!1417895 m!1604373))

(assert (=> b!1417895 m!1604381))

(declare-fun m!1604385 () Bool)

(assert (=> bm!96272 m!1604385))

(declare-fun m!1604387 () Bool)

(assert (=> bm!96270 m!1604387))

(declare-fun m!1604389 () Bool)

(assert (=> bm!96282 m!1604389))

(declare-fun m!1604391 () Bool)

(assert (=> b!1417888 m!1604391))

(declare-fun m!1604393 () Bool)

(assert (=> bm!96275 m!1604393))

(declare-fun m!1604395 () Bool)

(assert (=> b!1417885 m!1604395))

(assert (=> b!1417885 m!1604395))

(declare-fun m!1604397 () Bool)

(assert (=> b!1417885 m!1604397))

(declare-fun m!1604399 () Bool)

(assert (=> b!1417885 m!1604399))

(declare-fun m!1604401 () Bool)

(assert (=> b!1417885 m!1604401))

(declare-fun m!1604403 () Bool)

(assert (=> b!1417885 m!1604403))

(assert (=> b!1417885 m!1604397))

(declare-fun m!1604405 () Bool)

(assert (=> b!1417885 m!1604405))

(declare-fun m!1604407 () Bool)

(assert (=> b!1417885 m!1604407))

(declare-fun m!1604409 () Bool)

(assert (=> b!1417898 m!1604409))

(declare-fun m!1604411 () Bool)

(assert (=> b!1417898 m!1604411))

(declare-fun m!1604413 () Bool)

(assert (=> b!1417898 m!1604413))

(declare-fun m!1604415 () Bool)

(assert (=> b!1417898 m!1604415))

(assert (=> b!1417898 m!1604409))

(declare-fun m!1604417 () Bool)

(assert (=> b!1417898 m!1604417))

(declare-fun m!1604419 () Bool)

(assert (=> b!1417898 m!1604419))

(declare-fun m!1604421 () Bool)

(assert (=> b!1417898 m!1604421))

(assert (=> b!1417898 m!1604409))

(declare-fun m!1604423 () Bool)

(assert (=> b!1417898 m!1604423))

(assert (=> b!1417898 m!1604417))

(declare-fun m!1604425 () Bool)

(assert (=> b!1417898 m!1604425))

(declare-fun m!1604427 () Bool)

(assert (=> b!1417898 m!1604427))

(declare-fun m!1604429 () Bool)

(assert (=> bm!96267 m!1604429))

(declare-fun m!1604431 () Bool)

(assert (=> bm!96279 m!1604431))

(assert (=> bm!96295 m!1604017))

(assert (=> bm!96295 m!1604373))

(declare-fun m!1604433 () Bool)

(assert (=> bm!96289 m!1604433))

(declare-fun m!1604435 () Bool)

(assert (=> bm!96291 m!1604435))

(assert (=> b!1417617 d!405940))

(declare-fun d!405964 () Bool)

(declare-fun lt!477369 () PrintableTokens!844)

(declare-fun head!2750 (List!14604) PrintableTokens!844)

(assert (=> d!405964 (= lt!477369 (head!2750 (list!5727 objs!24)))))

(declare-fun head!2751 (Conc!4869) PrintableTokens!844)

(assert (=> d!405964 (= lt!477369 (head!2751 (c!232918 objs!24)))))

(assert (=> d!405964 (not (isEmpty!8925 objs!24))))

(assert (=> d!405964 (= (head!2745 objs!24) lt!477369)))

(declare-fun bs!339523 () Bool)

(assert (= bs!339523 d!405964))

(assert (=> bs!339523 m!1604043))

(assert (=> bs!339523 m!1604043))

(declare-fun m!1604437 () Bool)

(assert (=> bs!339523 m!1604437))

(declare-fun m!1604439 () Bool)

(assert (=> bs!339523 m!1604439))

(assert (=> bs!339523 m!1604023))

(assert (=> b!1417617 d!405964))

(declare-fun d!405966 () Bool)

(declare-fun isBalanced!1448 (Conc!4868) Bool)

(assert (=> d!405966 (= (inv!19134 (tokens!1820 sep!3)) (isBalanced!1448 (c!232917 (tokens!1820 sep!3))))))

(declare-fun bs!339524 () Bool)

(assert (= bs!339524 d!405966))

(declare-fun m!1604441 () Bool)

(assert (=> bs!339524 m!1604441))

(assert (=> b!1417618 d!405966))

(declare-fun d!405968 () Bool)

(assert (=> d!405968 (= (usesJsonRules!0 sep!3) (= (rules!11116 sep!3) (rules!109 JsonLexer!417)))))

(declare-fun bs!339525 () Bool)

(assert (= bs!339525 d!405968))

(assert (=> bs!339525 m!1604037))

(assert (=> b!1417613 d!405968))

(declare-fun d!405970 () Bool)

(assert (=> d!405970 (= (inv!19134 (tokens!1820 acc!229)) (isBalanced!1448 (c!232917 (tokens!1820 acc!229))))))

(declare-fun bs!339526 () Bool)

(assert (= bs!339526 d!405970))

(declare-fun m!1604443 () Bool)

(assert (=> bs!339526 m!1604443))

(assert (=> b!1417614 d!405970))

(declare-fun d!405972 () Bool)

(declare-fun lt!477372 () Int)

(declare-fun size!11995 (List!14604) Int)

(assert (=> d!405972 (= lt!477372 (size!11995 (list!5727 objs!24)))))

(declare-fun size!11996 (Conc!4869) Int)

(assert (=> d!405972 (= lt!477372 (size!11996 (c!232918 objs!24)))))

(assert (=> d!405972 (= (size!11992 objs!24) lt!477372)))

(declare-fun bs!339527 () Bool)

(assert (= bs!339527 d!405972))

(assert (=> bs!339527 m!1604043))

(assert (=> bs!339527 m!1604043))

(declare-fun m!1604445 () Bool)

(assert (=> bs!339527 m!1604445))

(declare-fun m!1604447 () Bool)

(assert (=> bs!339527 m!1604447))

(assert (=> b!1417615 d!405972))

(declare-fun d!405974 () Bool)

(assert (=> d!405974 (= (usesJsonRules!0 (get!4467 lt!476933)) (= (rules!11116 (get!4467 lt!476933)) (rules!109 JsonLexer!417)))))

(declare-fun bs!339528 () Bool)

(assert (= bs!339528 d!405974))

(assert (=> bs!339528 m!1604037))

(assert (=> b!1417611 d!405974))

(declare-fun d!405976 () Bool)

(assert (=> d!405976 (= (get!4467 lt!476933) (v!22075 lt!476933))))

(assert (=> b!1417611 d!405976))

(declare-fun d!405978 () Bool)

(declare-fun c!233014 () Bool)

(assert (=> d!405978 (= c!233014 ((_ is Node!4869) (c!232918 objs!24)))))

(declare-fun e!905135 () Bool)

(assert (=> d!405978 (= (inv!19133 (c!232918 objs!24)) e!905135)))

(declare-fun b!1417908 () Bool)

(declare-fun inv!19144 (Conc!4869) Bool)

(assert (=> b!1417908 (= e!905135 (inv!19144 (c!232918 objs!24)))))

(declare-fun b!1417909 () Bool)

(declare-fun e!905136 () Bool)

(assert (=> b!1417909 (= e!905135 e!905136)))

(declare-fun res!642028 () Bool)

(assert (=> b!1417909 (= res!642028 (not ((_ is Leaf!7331) (c!232918 objs!24))))))

(assert (=> b!1417909 (=> res!642028 e!905136)))

(declare-fun b!1417910 () Bool)

(declare-fun inv!19145 (Conc!4869) Bool)

(assert (=> b!1417910 (= e!905136 (inv!19145 (c!232918 objs!24)))))

(assert (= (and d!405978 c!233014) b!1417908))

(assert (= (and d!405978 (not c!233014)) b!1417909))

(assert (= (and b!1417909 (not res!642028)) b!1417910))

(declare-fun m!1604449 () Bool)

(assert (=> b!1417908 m!1604449))

(declare-fun m!1604451 () Bool)

(assert (=> b!1417910 m!1604451))

(assert (=> b!1417612 d!405978))

(declare-fun tp!402194 () Bool)

(declare-fun b!1417919 () Bool)

(declare-fun e!905142 () Bool)

(declare-fun tp!402196 () Bool)

(assert (=> b!1417919 (= e!905142 (and (inv!19130 (left!12427 (c!232917 (tokens!1820 acc!229)))) tp!402194 (inv!19130 (right!12757 (c!232917 (tokens!1820 acc!229)))) tp!402196))))

(declare-fun b!1417921 () Bool)

(declare-fun e!905141 () Bool)

(declare-fun tp!402195 () Bool)

(assert (=> b!1417921 (= e!905141 tp!402195)))

(declare-fun b!1417920 () Bool)

(declare-fun inv!19146 (IArray!9741) Bool)

(assert (=> b!1417920 (= e!905142 (and (inv!19146 (xs!7595 (c!232917 (tokens!1820 acc!229)))) e!905141))))

(assert (=> b!1417619 (= tp!402151 (and (inv!19130 (c!232917 (tokens!1820 acc!229))) e!905142))))

(assert (= (and b!1417619 ((_ is Node!4868) (c!232917 (tokens!1820 acc!229)))) b!1417919))

(assert (= b!1417920 b!1417921))

(assert (= (and b!1417619 ((_ is Leaf!7330) (c!232917 (tokens!1820 acc!229)))) b!1417920))

(declare-fun m!1604453 () Bool)

(assert (=> b!1417919 m!1604453))

(declare-fun m!1604455 () Bool)

(assert (=> b!1417919 m!1604455))

(declare-fun m!1604457 () Bool)

(assert (=> b!1417920 m!1604457))

(assert (=> b!1417619 m!1604027))

(declare-fun b!1417932 () Bool)

(declare-fun b_free!34943 () Bool)

(declare-fun b_next!35647 () Bool)

(assert (=> b!1417932 (= b_free!34943 (not b_next!35647))))

(declare-fun tp!402205 () Bool)

(declare-fun b_and!94943 () Bool)

(assert (=> b!1417932 (= tp!402205 b_and!94943)))

(declare-fun b_free!34945 () Bool)

(declare-fun b_next!35649 () Bool)

(assert (=> b!1417932 (= b_free!34945 (not b_next!35649))))

(declare-fun tp!402204 () Bool)

(declare-fun b_and!94945 () Bool)

(assert (=> b!1417932 (= tp!402204 b_and!94945)))

(declare-fun e!905153 () Bool)

(assert (=> b!1417932 (= e!905153 (and tp!402205 tp!402204))))

(declare-fun b!1417931 () Bool)

(declare-fun e!905151 () Bool)

(declare-fun inv!19124 (String!17341) Bool)

(declare-fun inv!19147 (TokenValueInjection!4902) Bool)

(assert (=> b!1417931 (= e!905151 (and (inv!19124 (tag!2793 (h!19938 (rules!11116 acc!229)))) (inv!19147 (transformation!2531 (h!19938 (rules!11116 acc!229)))) e!905153))))

(declare-fun b!1417930 () Bool)

(declare-fun e!905154 () Bool)

(declare-fun tp!402203 () Bool)

(assert (=> b!1417930 (= e!905154 (and e!905151 tp!402203))))

(assert (=> b!1417614 (= tp!402153 e!905154)))

(assert (= b!1417931 b!1417932))

(assert (= b!1417930 b!1417931))

(assert (= (and b!1417614 ((_ is Cons!14537) (rules!11116 acc!229))) b!1417930))

(declare-fun m!1604459 () Bool)

(assert (=> b!1417931 m!1604459))

(declare-fun m!1604461 () Bool)

(assert (=> b!1417931 m!1604461))

(declare-fun tp!402206 () Bool)

(declare-fun b!1417933 () Bool)

(declare-fun e!905156 () Bool)

(declare-fun tp!402208 () Bool)

(assert (=> b!1417933 (= e!905156 (and (inv!19130 (left!12427 (c!232917 (tokens!1820 sep!3)))) tp!402206 (inv!19130 (right!12757 (c!232917 (tokens!1820 sep!3)))) tp!402208))))

(declare-fun b!1417935 () Bool)

(declare-fun e!905155 () Bool)

(declare-fun tp!402207 () Bool)

(assert (=> b!1417935 (= e!905155 tp!402207)))

(declare-fun b!1417934 () Bool)

(assert (=> b!1417934 (= e!905156 (and (inv!19146 (xs!7595 (c!232917 (tokens!1820 sep!3)))) e!905155))))

(assert (=> b!1417610 (= tp!402152 (and (inv!19130 (c!232917 (tokens!1820 sep!3))) e!905156))))

(assert (= (and b!1417610 ((_ is Node!4868) (c!232917 (tokens!1820 sep!3)))) b!1417933))

(assert (= b!1417934 b!1417935))

(assert (= (and b!1417610 ((_ is Leaf!7330) (c!232917 (tokens!1820 sep!3)))) b!1417934))

(declare-fun m!1604463 () Bool)

(assert (=> b!1417933 m!1604463))

(declare-fun m!1604465 () Bool)

(assert (=> b!1417933 m!1604465))

(declare-fun m!1604467 () Bool)

(assert (=> b!1417934 m!1604467))

(assert (=> b!1417610 m!1604021))

(declare-fun e!905162 () Bool)

(declare-fun tp!402217 () Bool)

(declare-fun b!1417944 () Bool)

(declare-fun tp!402215 () Bool)

(assert (=> b!1417944 (= e!905162 (and (inv!19133 (left!12428 (c!232918 objs!24))) tp!402217 (inv!19133 (right!12758 (c!232918 objs!24))) tp!402215))))

(declare-fun b!1417946 () Bool)

(declare-fun e!905161 () Bool)

(declare-fun tp!402216 () Bool)

(assert (=> b!1417946 (= e!905161 tp!402216)))

(declare-fun b!1417945 () Bool)

(declare-fun inv!19148 (IArray!9743) Bool)

(assert (=> b!1417945 (= e!905162 (and (inv!19148 (xs!7596 (c!232918 objs!24))) e!905161))))

(assert (=> b!1417612 (= tp!402154 (and (inv!19133 (c!232918 objs!24)) e!905162))))

(assert (= (and b!1417612 ((_ is Node!4869) (c!232918 objs!24))) b!1417944))

(assert (= b!1417945 b!1417946))

(assert (= (and b!1417612 ((_ is Leaf!7331) (c!232918 objs!24))) b!1417945))

(declare-fun m!1604469 () Bool)

(assert (=> b!1417944 m!1604469))

(declare-fun m!1604471 () Bool)

(assert (=> b!1417944 m!1604471))

(declare-fun m!1604473 () Bool)

(assert (=> b!1417945 m!1604473))

(assert (=> b!1417612 m!1604031))

(declare-fun b!1417949 () Bool)

(declare-fun b_free!34947 () Bool)

(declare-fun b_next!35651 () Bool)

(assert (=> b!1417949 (= b_free!34947 (not b_next!35651))))

(declare-fun tp!402220 () Bool)

(declare-fun b_and!94947 () Bool)

(assert (=> b!1417949 (= tp!402220 b_and!94947)))

(declare-fun b_free!34949 () Bool)

(declare-fun b_next!35653 () Bool)

(assert (=> b!1417949 (= b_free!34949 (not b_next!35653))))

(declare-fun tp!402219 () Bool)

(declare-fun b_and!94949 () Bool)

(assert (=> b!1417949 (= tp!402219 b_and!94949)))

(declare-fun e!905165 () Bool)

(assert (=> b!1417949 (= e!905165 (and tp!402220 tp!402219))))

(declare-fun b!1417948 () Bool)

(declare-fun e!905163 () Bool)

(assert (=> b!1417948 (= e!905163 (and (inv!19124 (tag!2793 (h!19938 (rules!11116 sep!3)))) (inv!19147 (transformation!2531 (h!19938 (rules!11116 sep!3)))) e!905165))))

(declare-fun b!1417947 () Bool)

(declare-fun e!905166 () Bool)

(declare-fun tp!402218 () Bool)

(assert (=> b!1417947 (= e!905166 (and e!905163 tp!402218))))

(assert (=> b!1417618 (= tp!402150 e!905166)))

(assert (= b!1417948 b!1417949))

(assert (= b!1417947 b!1417948))

(assert (= (and b!1417618 ((_ is Cons!14537) (rules!11116 sep!3))) b!1417947))

(declare-fun m!1604475 () Bool)

(assert (=> b!1417948 m!1604475))

(declare-fun m!1604477 () Bool)

(assert (=> b!1417948 m!1604477))

(check-sat (not d!405938) (not bm!96295) (not bm!96286) (not d!405918) (not b!1417934) (not d!405964) (not b!1417638) (not b!1417945) (not d!405974) (not bm!96170) b_and!94945 (not d!405966) (not d!405902) (not bm!96267) (not b!1417610) (not bm!96289) (not b!1417919) (not b!1417948) (not bm!96290) (not b!1417931) (not bm!96264) (not b!1417933) (not bm!96281) b_and!94943 (not bm!96284) (not bm!96296) (not bm!96274) (not d!405912) (not bm!96168) (not b!1417643) (not b!1417947) (not bm!96291) b_and!94947 (not bm!96279) (not b!1417639) (not bm!96263) (not b!1417641) (not b!1417612) (not b!1417733) (not d!405914) (not b!1417910) (not b!1417628) (not bm!96287) (not b!1417901) (not d!405922) (not b!1417920) (not b!1417745) (not d!405972) (not bm!96171) (not b!1417893) (not bm!96299) (not b!1417738) (not b!1417631) (not b_next!35651) (not b!1417888) (not b!1417921) (not bm!96272) (not bm!96277) (not b_next!35649) (not b!1417935) (not bm!96271) (not b_next!35647) (not bm!96282) (not b!1417895) (not b!1417734) (not b!1417898) (not bm!96270) (not b!1417908) (not d!405970) (not b!1417626) (not b!1417930) (not b!1417640) (not bm!96169) (not b!1417891) (not d!405916) b_and!94949 (not b!1417944) (not b!1417642) (not d!405968) (not b!1417946) (not b!1417885) (not b_next!35653) (not bm!96275) (not b!1417629) (not d!405908) (not d!405940) (not b!1417619) (not bm!96265))
(check-sat b_and!94945 b_and!94943 b_and!94947 (not b_next!35651) (not b_next!35649) (not b_next!35647) b_and!94949 (not b_next!35653))
