; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!526990 () Bool)

(assert start!526990)

(declare-fun b!4987033 () Bool)

(declare-fun b_free!133195 () Bool)

(declare-fun b_next!133985 () Bool)

(assert (=> b!4987033 (= b_free!133195 (not b_next!133985))))

(declare-fun tp!1397605 () Bool)

(declare-fun b_and!349971 () Bool)

(assert (=> b!4987033 (= tp!1397605 b_and!349971)))

(declare-fun b_free!133197 () Bool)

(declare-fun b_next!133987 () Bool)

(assert (=> b!4987033 (= b_free!133197 (not b_next!133987))))

(declare-fun tp!1397602 () Bool)

(declare-fun b_and!349973 () Bool)

(assert (=> b!4987033 (= tp!1397602 b_and!349973)))

(declare-fun b!4987027 () Bool)

(declare-fun res!2128910 () Bool)

(declare-fun e!3116775 () Bool)

(assert (=> b!4987027 (=> (not res!2128910) (not e!3116775))))

(declare-datatypes ((LexerInterface!8066 0))(
  ( (LexerInterfaceExt!8063 (__x!34861 Int)) (Lexer!8064) )
))
(declare-fun thiss!16165 () LexerInterface!8066)

(declare-datatypes ((C!27664 0))(
  ( (C!27665 (val!23198 Int)) )
))
(declare-datatypes ((List!57744 0))(
  ( (Nil!57620) (Cons!57620 (h!64068 C!27664) (t!370010 List!57744)) )
))
(declare-datatypes ((IArray!30513 0))(
  ( (IArray!30514 (innerList!15314 List!57744)) )
))
(declare-datatypes ((List!57745 0))(
  ( (Nil!57621) (Cons!57621 (h!64069 (_ BitVec 16)) (t!370011 List!57745)) )
))
(declare-datatypes ((Regex!13707 0))(
  ( (ElementMatch!13707 (c!851009 C!27664)) (Concat!22491 (regOne!27926 Regex!13707) (regTwo!27926 Regex!13707)) (EmptyExpr!13707) (Star!13707 (reg!14036 Regex!13707)) (EmptyLang!13707) (Union!13707 (regOne!27927 Regex!13707) (regTwo!27927 Regex!13707)) )
))
(declare-datatypes ((String!65793 0))(
  ( (String!65794 (value!270902 String)) )
))
(declare-datatypes ((Conc!15226 0))(
  ( (Node!15226 (left!42153 Conc!15226) (right!42483 Conc!15226) (csize!30682 Int) (cheight!15437 Int)) (Leaf!25288 (xs!18552 IArray!30513) (csize!30683 Int)) (Empty!15226) )
))
(declare-datatypes ((BalanceConc!29882 0))(
  ( (BalanceConc!29883 (c!851010 Conc!15226)) )
))
(declare-datatypes ((TokenValue!8784 0))(
  ( (FloatLiteralValue!17568 (text!61933 List!57745)) (TokenValueExt!8783 (__x!34862 Int)) (Broken!43920 (value!270903 List!57745)) (Object!8907) (End!8784) (Def!8784) (Underscore!8784) (Match!8784) (Else!8784) (Error!8784) (Case!8784) (If!8784) (Extends!8784) (Abstract!8784) (Class!8784) (Val!8784) (DelimiterValue!17568 (del!8844 List!57745)) (KeywordValue!8790 (value!270904 List!57745)) (CommentValue!17568 (value!270905 List!57745)) (WhitespaceValue!17568 (value!270906 List!57745)) (IndentationValue!8784 (value!270907 List!57745)) (String!65795) (Int32!8784) (Broken!43921 (value!270908 List!57745)) (Boolean!8785) (Unit!148770) (OperatorValue!8787 (op!8844 List!57745)) (IdentifierValue!17568 (value!270909 List!57745)) (IdentifierValue!17569 (value!270910 List!57745)) (WhitespaceValue!17569 (value!270911 List!57745)) (True!17568) (False!17568) (Broken!43922 (value!270912 List!57745)) (Broken!43923 (value!270913 List!57745)) (True!17569) (RightBrace!8784) (RightBracket!8784) (Colon!8784) (Null!8784) (Comma!8784) (LeftBracket!8784) (False!17569) (LeftBrace!8784) (ImaginaryLiteralValue!8784 (text!61934 List!57745)) (StringLiteralValue!26352 (value!270914 List!57745)) (EOFValue!8784 (value!270915 List!57745)) (IdentValue!8784 (value!270916 List!57745)) (DelimiterValue!17569 (value!270917 List!57745)) (DedentValue!8784 (value!270918 List!57745)) (NewLineValue!8784 (value!270919 List!57745)) (IntegerValue!26352 (value!270920 (_ BitVec 32)) (text!61935 List!57745)) (IntegerValue!26353 (value!270921 Int) (text!61936 List!57745)) (Times!8784) (Or!8784) (Equal!8784) (Minus!8784) (Broken!43924 (value!270922 List!57745)) (And!8784) (Div!8784) (LessEqual!8784) (Mod!8784) (Concat!22492) (Not!8784) (Plus!8784) (SpaceValue!8784 (value!270923 List!57745)) (IntegerValue!26354 (value!270924 Int) (text!61937 List!57745)) (StringLiteralValue!26353 (text!61938 List!57745)) (FloatLiteralValue!17569 (text!61939 List!57745)) (BytesLiteralValue!8784 (value!270925 List!57745)) (CommentValue!17569 (value!270926 List!57745)) (StringLiteralValue!26354 (value!270927 List!57745)) (ErrorTokenValue!8784 (msg!8845 List!57745)) )
))
(declare-datatypes ((TokenValueInjection!16876 0))(
  ( (TokenValueInjection!16877 (toValue!11483 Int) (toChars!11342 Int)) )
))
(declare-datatypes ((Rule!16748 0))(
  ( (Rule!16749 (regex!8474 Regex!13707) (tag!9338 String!65793) (isSeparator!8474 Bool) (transformation!8474 TokenValueInjection!16876)) )
))
(declare-fun rule!200 () Rule!16748)

(declare-fun ruleValid!3882 (LexerInterface!8066 Rule!16748) Bool)

(assert (=> b!4987027 (= res!2128910 (ruleValid!3882 thiss!16165 rule!200))))

(declare-fun b!4987028 () Bool)

(declare-fun res!2128913 () Bool)

(assert (=> b!4987028 (=> (not res!2128913) (not e!3116775))))

(declare-fun input!1580 () BalanceConc!29882)

(declare-fun totalInput!520 () BalanceConc!29882)

(declare-fun isEmpty!31173 (BalanceConc!29882) Bool)

(declare-datatypes ((tuple2!62666 0))(
  ( (tuple2!62667 (_1!34636 BalanceConc!29882) (_2!34636 BalanceConc!29882)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!237 (Regex!13707 BalanceConc!29882 BalanceConc!29882) tuple2!62666)

(assert (=> b!4987028 (= res!2128913 (not (isEmpty!31173 (_1!34636 (findLongestMatchWithZipperSequenceV2!237 (regex!8474 rule!200) input!1580 totalInput!520)))))))

(declare-fun e!3116772 () Bool)

(declare-fun b!4987029 () Bool)

(declare-fun tp!1397606 () Bool)

(declare-fun e!3116774 () Bool)

(declare-fun inv!75543 (String!65793) Bool)

(declare-fun inv!75547 (TokenValueInjection!16876) Bool)

(assert (=> b!4987029 (= e!3116774 (and tp!1397606 (inv!75543 (tag!9338 rule!200)) (inv!75547 (transformation!8474 rule!200)) e!3116772))))

(declare-fun res!2128912 () Bool)

(assert (=> start!526990 (=> (not res!2128912) (not e!3116775))))

(get-info :version)

(assert (=> start!526990 (= res!2128912 ((_ is Lexer!8064) thiss!16165))))

(assert (=> start!526990 e!3116775))

(assert (=> start!526990 true))

(assert (=> start!526990 e!3116774))

(declare-fun e!3116773 () Bool)

(declare-fun inv!75548 (BalanceConc!29882) Bool)

(assert (=> start!526990 (and (inv!75548 input!1580) e!3116773)))

(declare-fun e!3116771 () Bool)

(assert (=> start!526990 (and (inv!75548 totalInput!520) e!3116771)))

(declare-fun b!4987030 () Bool)

(declare-fun tp!1397604 () Bool)

(declare-fun inv!75549 (Conc!15226) Bool)

(assert (=> b!4987030 (= e!3116773 (and (inv!75549 (c!851010 input!1580)) tp!1397604))))

(declare-fun b!4987031 () Bool)

(declare-fun res!2128911 () Bool)

(assert (=> b!4987031 (=> (not res!2128911) (not e!3116775))))

(declare-fun isSuffix!1273 (List!57744 List!57744) Bool)

(declare-fun list!18500 (BalanceConc!29882) List!57744)

(assert (=> b!4987031 (= res!2128911 (isSuffix!1273 (list!18500 input!1580) (list!18500 totalInput!520)))))

(declare-fun b!4987032 () Bool)

(declare-fun tp!1397603 () Bool)

(assert (=> b!4987032 (= e!3116771 (and (inv!75549 (c!851010 totalInput!520)) tp!1397603))))

(assert (=> b!4987033 (= e!3116772 (and tp!1397605 tp!1397602))))

(declare-fun b!4987034 () Bool)

(declare-fun validRegex!6006 (Regex!13707) Bool)

(assert (=> b!4987034 (= e!3116775 (not (validRegex!6006 (regex!8474 rule!200))))))

(assert (= (and start!526990 res!2128912) b!4987027))

(assert (= (and b!4987027 res!2128910) b!4987031))

(assert (= (and b!4987031 res!2128911) b!4987028))

(assert (= (and b!4987028 res!2128913) b!4987034))

(assert (= b!4987029 b!4987033))

(assert (= start!526990 b!4987029))

(assert (= start!526990 b!4987030))

(assert (= start!526990 b!4987032))

(declare-fun m!6018844 () Bool)

(assert (=> b!4987034 m!6018844))

(declare-fun m!6018846 () Bool)

(assert (=> b!4987030 m!6018846))

(declare-fun m!6018848 () Bool)

(assert (=> b!4987029 m!6018848))

(declare-fun m!6018850 () Bool)

(assert (=> b!4987029 m!6018850))

(declare-fun m!6018852 () Bool)

(assert (=> b!4987031 m!6018852))

(declare-fun m!6018854 () Bool)

(assert (=> b!4987031 m!6018854))

(assert (=> b!4987031 m!6018852))

(assert (=> b!4987031 m!6018854))

(declare-fun m!6018856 () Bool)

(assert (=> b!4987031 m!6018856))

(declare-fun m!6018858 () Bool)

(assert (=> b!4987028 m!6018858))

(declare-fun m!6018860 () Bool)

(assert (=> b!4987028 m!6018860))

(declare-fun m!6018862 () Bool)

(assert (=> start!526990 m!6018862))

(declare-fun m!6018864 () Bool)

(assert (=> start!526990 m!6018864))

(declare-fun m!6018866 () Bool)

(assert (=> b!4987032 m!6018866))

(declare-fun m!6018868 () Bool)

(assert (=> b!4987027 m!6018868))

(check-sat (not b!4987034) (not b_next!133985) (not start!526990) (not b_next!133987) (not b!4987029) (not b!4987027) (not b!4987030) b_and!349971 (not b!4987028) (not b!4987032) (not b!4987031) b_and!349973)
(check-sat b_and!349973 b_and!349971 (not b_next!133987) (not b_next!133985))
(get-model)

(declare-fun d!1605938 () Bool)

(declare-fun e!3116778 () Bool)

(assert (=> d!1605938 e!3116778))

(declare-fun res!2128920 () Bool)

(assert (=> d!1605938 (=> res!2128920 e!3116778)))

(declare-fun lt!2061323 () Bool)

(assert (=> d!1605938 (= res!2128920 (not lt!2061323))))

(declare-fun drop!2387 (List!57744 Int) List!57744)

(declare-fun size!38278 (List!57744) Int)

(assert (=> d!1605938 (= lt!2061323 (= (list!18500 input!1580) (drop!2387 (list!18500 totalInput!520) (- (size!38278 (list!18500 totalInput!520)) (size!38278 (list!18500 input!1580))))))))

(assert (=> d!1605938 (= (isSuffix!1273 (list!18500 input!1580) (list!18500 totalInput!520)) lt!2061323)))

(declare-fun b!4987037 () Bool)

(assert (=> b!4987037 (= e!3116778 (>= (size!38278 (list!18500 totalInput!520)) (size!38278 (list!18500 input!1580))))))

(assert (= (and d!1605938 (not res!2128920)) b!4987037))

(assert (=> d!1605938 m!6018854))

(declare-fun m!6018870 () Bool)

(assert (=> d!1605938 m!6018870))

(assert (=> d!1605938 m!6018852))

(declare-fun m!6018872 () Bool)

(assert (=> d!1605938 m!6018872))

(assert (=> d!1605938 m!6018854))

(declare-fun m!6018874 () Bool)

(assert (=> d!1605938 m!6018874))

(assert (=> b!4987037 m!6018854))

(assert (=> b!4987037 m!6018870))

(assert (=> b!4987037 m!6018852))

(assert (=> b!4987037 m!6018872))

(assert (=> b!4987031 d!1605938))

(declare-fun d!1605942 () Bool)

(declare-fun list!18501 (Conc!15226) List!57744)

(assert (=> d!1605942 (= (list!18500 input!1580) (list!18501 (c!851010 input!1580)))))

(declare-fun bs!1184699 () Bool)

(assert (= bs!1184699 d!1605942))

(declare-fun m!6018876 () Bool)

(assert (=> bs!1184699 m!6018876))

(assert (=> b!4987031 d!1605942))

(declare-fun d!1605944 () Bool)

(assert (=> d!1605944 (= (list!18500 totalInput!520) (list!18501 (c!851010 totalInput!520)))))

(declare-fun bs!1184700 () Bool)

(assert (= bs!1184700 d!1605944))

(declare-fun m!6018878 () Bool)

(assert (=> bs!1184700 m!6018878))

(assert (=> b!4987031 d!1605944))

(declare-fun d!1605946 () Bool)

(declare-fun c!851013 () Bool)

(assert (=> d!1605946 (= c!851013 ((_ is Node!15226) (c!851010 input!1580)))))

(declare-fun e!3116783 () Bool)

(assert (=> d!1605946 (= (inv!75549 (c!851010 input!1580)) e!3116783)))

(declare-fun b!4987044 () Bool)

(declare-fun inv!75550 (Conc!15226) Bool)

(assert (=> b!4987044 (= e!3116783 (inv!75550 (c!851010 input!1580)))))

(declare-fun b!4987045 () Bool)

(declare-fun e!3116784 () Bool)

(assert (=> b!4987045 (= e!3116783 e!3116784)))

(declare-fun res!2128923 () Bool)

(assert (=> b!4987045 (= res!2128923 (not ((_ is Leaf!25288) (c!851010 input!1580))))))

(assert (=> b!4987045 (=> res!2128923 e!3116784)))

(declare-fun b!4987046 () Bool)

(declare-fun inv!75551 (Conc!15226) Bool)

(assert (=> b!4987046 (= e!3116784 (inv!75551 (c!851010 input!1580)))))

(assert (= (and d!1605946 c!851013) b!4987044))

(assert (= (and d!1605946 (not c!851013)) b!4987045))

(assert (= (and b!4987045 (not res!2128923)) b!4987046))

(declare-fun m!6018886 () Bool)

(assert (=> b!4987044 m!6018886))

(declare-fun m!6018888 () Bool)

(assert (=> b!4987046 m!6018888))

(assert (=> b!4987030 d!1605946))

(declare-fun d!1605950 () Bool)

(assert (=> d!1605950 (= (inv!75543 (tag!9338 rule!200)) (= (mod (str.len (value!270902 (tag!9338 rule!200))) 2) 0))))

(assert (=> b!4987029 d!1605950))

(declare-fun d!1605952 () Bool)

(declare-fun res!2128926 () Bool)

(declare-fun e!3116787 () Bool)

(assert (=> d!1605952 (=> (not res!2128926) (not e!3116787))))

(declare-fun semiInverseModEq!3767 (Int Int) Bool)

(assert (=> d!1605952 (= res!2128926 (semiInverseModEq!3767 (toChars!11342 (transformation!8474 rule!200)) (toValue!11483 (transformation!8474 rule!200))))))

(assert (=> d!1605952 (= (inv!75547 (transformation!8474 rule!200)) e!3116787)))

(declare-fun b!4987049 () Bool)

(declare-fun equivClasses!3586 (Int Int) Bool)

(assert (=> b!4987049 (= e!3116787 (equivClasses!3586 (toChars!11342 (transformation!8474 rule!200)) (toValue!11483 (transformation!8474 rule!200))))))

(assert (= (and d!1605952 res!2128926) b!4987049))

(declare-fun m!6018890 () Bool)

(assert (=> d!1605952 m!6018890))

(declare-fun m!6018892 () Bool)

(assert (=> b!4987049 m!6018892))

(assert (=> b!4987029 d!1605952))

(declare-fun d!1605954 () Bool)

(declare-fun isBalanced!4240 (Conc!15226) Bool)

(assert (=> d!1605954 (= (inv!75548 input!1580) (isBalanced!4240 (c!851010 input!1580)))))

(declare-fun bs!1184702 () Bool)

(assert (= bs!1184702 d!1605954))

(declare-fun m!6018894 () Bool)

(assert (=> bs!1184702 m!6018894))

(assert (=> start!526990 d!1605954))

(declare-fun d!1605956 () Bool)

(assert (=> d!1605956 (= (inv!75548 totalInput!520) (isBalanced!4240 (c!851010 totalInput!520)))))

(declare-fun bs!1184703 () Bool)

(assert (= bs!1184703 d!1605956))

(declare-fun m!6018896 () Bool)

(assert (=> bs!1184703 m!6018896))

(assert (=> start!526990 d!1605956))

(declare-fun b!4987068 () Bool)

(declare-fun res!2128941 () Bool)

(declare-fun e!3116808 () Bool)

(assert (=> b!4987068 (=> res!2128941 e!3116808)))

(assert (=> b!4987068 (= res!2128941 (not ((_ is Concat!22491) (regex!8474 rule!200))))))

(declare-fun e!3116806 () Bool)

(assert (=> b!4987068 (= e!3116806 e!3116808)))

(declare-fun b!4987069 () Bool)

(declare-fun e!3116802 () Bool)

(assert (=> b!4987069 (= e!3116808 e!3116802)))

(declare-fun res!2128938 () Bool)

(assert (=> b!4987069 (=> (not res!2128938) (not e!3116802))))

(declare-fun call!348052 () Bool)

(assert (=> b!4987069 (= res!2128938 call!348052)))

(declare-fun bm!348047 () Bool)

(declare-fun call!348054 () Bool)

(declare-fun c!851019 () Bool)

(assert (=> bm!348047 (= call!348054 (validRegex!6006 (ite c!851019 (regTwo!27927 (regex!8474 rule!200)) (regTwo!27926 (regex!8474 rule!200)))))))

(declare-fun call!348053 () Bool)

(declare-fun bm!348048 () Bool)

(declare-fun c!851018 () Bool)

(assert (=> bm!348048 (= call!348053 (validRegex!6006 (ite c!851018 (reg!14036 (regex!8474 rule!200)) (ite c!851019 (regOne!27927 (regex!8474 rule!200)) (regOne!27926 (regex!8474 rule!200))))))))

(declare-fun b!4987070 () Bool)

(declare-fun e!3116803 () Bool)

(declare-fun e!3116805 () Bool)

(assert (=> b!4987070 (= e!3116803 e!3116805)))

(declare-fun res!2128939 () Bool)

(declare-fun nullable!4657 (Regex!13707) Bool)

(assert (=> b!4987070 (= res!2128939 (not (nullable!4657 (reg!14036 (regex!8474 rule!200)))))))

(assert (=> b!4987070 (=> (not res!2128939) (not e!3116805))))

(declare-fun d!1605958 () Bool)

(declare-fun res!2128940 () Bool)

(declare-fun e!3116807 () Bool)

(assert (=> d!1605958 (=> res!2128940 e!3116807)))

(assert (=> d!1605958 (= res!2128940 ((_ is ElementMatch!13707) (regex!8474 rule!200)))))

(assert (=> d!1605958 (= (validRegex!6006 (regex!8474 rule!200)) e!3116807)))

(declare-fun b!4987071 () Bool)

(assert (=> b!4987071 (= e!3116805 call!348053)))

(declare-fun b!4987072 () Bool)

(assert (=> b!4987072 (= e!3116803 e!3116806)))

(assert (=> b!4987072 (= c!851019 ((_ is Union!13707) (regex!8474 rule!200)))))

(declare-fun bm!348049 () Bool)

(assert (=> bm!348049 (= call!348052 call!348053)))

(declare-fun b!4987073 () Bool)

(assert (=> b!4987073 (= e!3116802 call!348054)))

(declare-fun b!4987074 () Bool)

(assert (=> b!4987074 (= e!3116807 e!3116803)))

(assert (=> b!4987074 (= c!851018 ((_ is Star!13707) (regex!8474 rule!200)))))

(declare-fun b!4987075 () Bool)

(declare-fun e!3116804 () Bool)

(assert (=> b!4987075 (= e!3116804 call!348054)))

(declare-fun b!4987076 () Bool)

(declare-fun res!2128937 () Bool)

(assert (=> b!4987076 (=> (not res!2128937) (not e!3116804))))

(assert (=> b!4987076 (= res!2128937 call!348052)))

(assert (=> b!4987076 (= e!3116806 e!3116804)))

(assert (= (and d!1605958 (not res!2128940)) b!4987074))

(assert (= (and b!4987074 c!851018) b!4987070))

(assert (= (and b!4987074 (not c!851018)) b!4987072))

(assert (= (and b!4987070 res!2128939) b!4987071))

(assert (= (and b!4987072 c!851019) b!4987076))

(assert (= (and b!4987072 (not c!851019)) b!4987068))

(assert (= (and b!4987076 res!2128937) b!4987075))

(assert (= (and b!4987068 (not res!2128941)) b!4987069))

(assert (= (and b!4987069 res!2128938) b!4987073))

(assert (= (or b!4987076 b!4987069) bm!348049))

(assert (= (or b!4987075 b!4987073) bm!348047))

(assert (= (or b!4987071 bm!348049) bm!348048))

(declare-fun m!6018898 () Bool)

(assert (=> bm!348047 m!6018898))

(declare-fun m!6018900 () Bool)

(assert (=> bm!348048 m!6018900))

(declare-fun m!6018902 () Bool)

(assert (=> b!4987070 m!6018902))

(assert (=> b!4987034 d!1605958))

(declare-fun lt!2061329 () Bool)

(declare-fun d!1605960 () Bool)

(declare-fun isEmpty!31176 (List!57744) Bool)

(assert (=> d!1605960 (= lt!2061329 (isEmpty!31176 (list!18500 (_1!34636 (findLongestMatchWithZipperSequenceV2!237 (regex!8474 rule!200) input!1580 totalInput!520)))))))

(declare-fun isEmpty!31177 (Conc!15226) Bool)

(assert (=> d!1605960 (= lt!2061329 (isEmpty!31177 (c!851010 (_1!34636 (findLongestMatchWithZipperSequenceV2!237 (regex!8474 rule!200) input!1580 totalInput!520)))))))

(assert (=> d!1605960 (= (isEmpty!31173 (_1!34636 (findLongestMatchWithZipperSequenceV2!237 (regex!8474 rule!200) input!1580 totalInput!520))) lt!2061329)))

(declare-fun bs!1184704 () Bool)

(assert (= bs!1184704 d!1605960))

(declare-fun m!6018904 () Bool)

(assert (=> bs!1184704 m!6018904))

(assert (=> bs!1184704 m!6018904))

(declare-fun m!6018906 () Bool)

(assert (=> bs!1184704 m!6018906))

(declare-fun m!6018908 () Bool)

(assert (=> bs!1184704 m!6018908))

(assert (=> b!4987028 d!1605960))

(declare-fun d!1605962 () Bool)

(declare-fun lt!2061338 () tuple2!62666)

(declare-datatypes ((tuple2!62670 0))(
  ( (tuple2!62671 (_1!34638 List!57744) (_2!34638 List!57744)) )
))
(declare-fun findLongestMatch!1732 (Regex!13707 List!57744) tuple2!62670)

(assert (=> d!1605962 (= (tuple2!62671 (list!18500 (_1!34636 lt!2061338)) (list!18500 (_2!34636 lt!2061338))) (findLongestMatch!1732 (regex!8474 rule!200) (list!18500 input!1580)))))

(declare-fun choose!36865 (Regex!13707 BalanceConc!29882 BalanceConc!29882) tuple2!62666)

(assert (=> d!1605962 (= lt!2061338 (choose!36865 (regex!8474 rule!200) input!1580 totalInput!520))))

(assert (=> d!1605962 (validRegex!6006 (regex!8474 rule!200))))

(assert (=> d!1605962 (= (findLongestMatchWithZipperSequenceV2!237 (regex!8474 rule!200) input!1580 totalInput!520) lt!2061338)))

(declare-fun bs!1184710 () Bool)

(assert (= bs!1184710 d!1605962))

(declare-fun m!6018948 () Bool)

(assert (=> bs!1184710 m!6018948))

(assert (=> bs!1184710 m!6018852))

(declare-fun m!6018950 () Bool)

(assert (=> bs!1184710 m!6018950))

(declare-fun m!6018952 () Bool)

(assert (=> bs!1184710 m!6018952))

(assert (=> bs!1184710 m!6018852))

(declare-fun m!6018954 () Bool)

(assert (=> bs!1184710 m!6018954))

(assert (=> bs!1184710 m!6018844))

(assert (=> b!4987028 d!1605962))

(declare-fun d!1605986 () Bool)

(declare-fun res!2128977 () Bool)

(declare-fun e!3116856 () Bool)

(assert (=> d!1605986 (=> (not res!2128977) (not e!3116856))))

(assert (=> d!1605986 (= res!2128977 (validRegex!6006 (regex!8474 rule!200)))))

(assert (=> d!1605986 (= (ruleValid!3882 thiss!16165 rule!200) e!3116856)))

(declare-fun b!4987154 () Bool)

(declare-fun res!2128978 () Bool)

(assert (=> b!4987154 (=> (not res!2128978) (not e!3116856))))

(assert (=> b!4987154 (= res!2128978 (not (nullable!4657 (regex!8474 rule!200))))))

(declare-fun b!4987155 () Bool)

(assert (=> b!4987155 (= e!3116856 (not (= (tag!9338 rule!200) (String!65794 ""))))))

(assert (= (and d!1605986 res!2128977) b!4987154))

(assert (= (and b!4987154 res!2128978) b!4987155))

(assert (=> d!1605986 m!6018844))

(declare-fun m!6018960 () Bool)

(assert (=> b!4987154 m!6018960))

(assert (=> b!4987027 d!1605986))

(declare-fun d!1605988 () Bool)

(declare-fun c!851030 () Bool)

(assert (=> d!1605988 (= c!851030 ((_ is Node!15226) (c!851010 totalInput!520)))))

(declare-fun e!3116857 () Bool)

(assert (=> d!1605988 (= (inv!75549 (c!851010 totalInput!520)) e!3116857)))

(declare-fun b!4987156 () Bool)

(assert (=> b!4987156 (= e!3116857 (inv!75550 (c!851010 totalInput!520)))))

(declare-fun b!4987157 () Bool)

(declare-fun e!3116858 () Bool)

(assert (=> b!4987157 (= e!3116857 e!3116858)))

(declare-fun res!2128979 () Bool)

(assert (=> b!4987157 (= res!2128979 (not ((_ is Leaf!25288) (c!851010 totalInput!520))))))

(assert (=> b!4987157 (=> res!2128979 e!3116858)))

(declare-fun b!4987158 () Bool)

(assert (=> b!4987158 (= e!3116858 (inv!75551 (c!851010 totalInput!520)))))

(assert (= (and d!1605988 c!851030) b!4987156))

(assert (= (and d!1605988 (not c!851030)) b!4987157))

(assert (= (and b!4987157 (not res!2128979)) b!4987158))

(declare-fun m!6018962 () Bool)

(assert (=> b!4987156 m!6018962))

(declare-fun m!6018964 () Bool)

(assert (=> b!4987158 m!6018964))

(assert (=> b!4987032 d!1605988))

(declare-fun e!3116868 () Bool)

(declare-fun tp!1397641 () Bool)

(declare-fun tp!1397640 () Bool)

(declare-fun b!4987173 () Bool)

(assert (=> b!4987173 (= e!3116868 (and (inv!75549 (left!42153 (c!851010 input!1580))) tp!1397641 (inv!75549 (right!42483 (c!851010 input!1580))) tp!1397640))))

(declare-fun b!4987175 () Bool)

(declare-fun e!3116867 () Bool)

(declare-fun tp!1397642 () Bool)

(assert (=> b!4987175 (= e!3116867 tp!1397642)))

(declare-fun b!4987174 () Bool)

(declare-fun inv!75554 (IArray!30513) Bool)

(assert (=> b!4987174 (= e!3116868 (and (inv!75554 (xs!18552 (c!851010 input!1580))) e!3116867))))

(assert (=> b!4987030 (= tp!1397604 (and (inv!75549 (c!851010 input!1580)) e!3116868))))

(assert (= (and b!4987030 ((_ is Node!15226) (c!851010 input!1580))) b!4987173))

(assert (= b!4987174 b!4987175))

(assert (= (and b!4987030 ((_ is Leaf!25288) (c!851010 input!1580))) b!4987174))

(declare-fun m!6018978 () Bool)

(assert (=> b!4987173 m!6018978))

(declare-fun m!6018980 () Bool)

(assert (=> b!4987173 m!6018980))

(declare-fun m!6018982 () Bool)

(assert (=> b!4987174 m!6018982))

(assert (=> b!4987030 m!6018846))

(declare-fun b!4987189 () Bool)

(declare-fun e!3116871 () Bool)

(declare-fun tp!1397653 () Bool)

(declare-fun tp!1397657 () Bool)

(assert (=> b!4987189 (= e!3116871 (and tp!1397653 tp!1397657))))

(declare-fun b!4987188 () Bool)

(declare-fun tp!1397654 () Bool)

(assert (=> b!4987188 (= e!3116871 tp!1397654)))

(declare-fun b!4987186 () Bool)

(declare-fun tp_is_empty!36415 () Bool)

(assert (=> b!4987186 (= e!3116871 tp_is_empty!36415)))

(assert (=> b!4987029 (= tp!1397606 e!3116871)))

(declare-fun b!4987187 () Bool)

(declare-fun tp!1397656 () Bool)

(declare-fun tp!1397655 () Bool)

(assert (=> b!4987187 (= e!3116871 (and tp!1397656 tp!1397655))))

(assert (= (and b!4987029 ((_ is ElementMatch!13707) (regex!8474 rule!200))) b!4987186))

(assert (= (and b!4987029 ((_ is Concat!22491) (regex!8474 rule!200))) b!4987187))

(assert (= (and b!4987029 ((_ is Star!13707) (regex!8474 rule!200))) b!4987188))

(assert (= (and b!4987029 ((_ is Union!13707) (regex!8474 rule!200))) b!4987189))

(declare-fun e!3116873 () Bool)

(declare-fun tp!1397659 () Bool)

(declare-fun b!4987190 () Bool)

(declare-fun tp!1397658 () Bool)

(assert (=> b!4987190 (= e!3116873 (and (inv!75549 (left!42153 (c!851010 totalInput!520))) tp!1397659 (inv!75549 (right!42483 (c!851010 totalInput!520))) tp!1397658))))

(declare-fun b!4987192 () Bool)

(declare-fun e!3116872 () Bool)

(declare-fun tp!1397660 () Bool)

(assert (=> b!4987192 (= e!3116872 tp!1397660)))

(declare-fun b!4987191 () Bool)

(assert (=> b!4987191 (= e!3116873 (and (inv!75554 (xs!18552 (c!851010 totalInput!520))) e!3116872))))

(assert (=> b!4987032 (= tp!1397603 (and (inv!75549 (c!851010 totalInput!520)) e!3116873))))

(assert (= (and b!4987032 ((_ is Node!15226) (c!851010 totalInput!520))) b!4987190))

(assert (= b!4987191 b!4987192))

(assert (= (and b!4987032 ((_ is Leaf!25288) (c!851010 totalInput!520))) b!4987191))

(declare-fun m!6018984 () Bool)

(assert (=> b!4987190 m!6018984))

(declare-fun m!6018986 () Bool)

(assert (=> b!4987190 m!6018986))

(declare-fun m!6018988 () Bool)

(assert (=> b!4987191 m!6018988))

(assert (=> b!4987032 m!6018866))

(check-sat (not b!4987158) (not b!4987173) (not bm!348048) (not b!4987046) (not d!1605952) (not b_next!133987) (not b!4987154) tp_is_empty!36415 (not bm!348047) (not b!4987049) b_and!349973 (not d!1605954) (not b!4987044) b_and!349971 (not b!4987189) (not b!4987037) (not b!4987175) (not d!1605986) (not b!4987192) (not d!1605960) (not b_next!133985) (not d!1605962) (not d!1605942) (not b!4987187) (not d!1605944) (not b!4987190) (not b!4987032) (not b!4987156) (not d!1605956) (not d!1605938) (not b!4987174) (not b!4987188) (not b!4987191) (not b!4987070) (not b!4987030))
(check-sat b_and!349973 b_and!349971 (not b_next!133987) (not b_next!133985))
