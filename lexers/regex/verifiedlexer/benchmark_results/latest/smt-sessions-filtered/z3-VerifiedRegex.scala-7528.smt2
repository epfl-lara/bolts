; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397586 () Bool)

(assert start!397586)

(declare-fun b!4170162 () Bool)

(declare-fun b_free!120623 () Bool)

(declare-fun b_next!121327 () Bool)

(assert (=> b!4170162 (= b_free!120623 (not b_next!121327))))

(declare-fun tp!1273989 () Bool)

(declare-fun b_and!325565 () Bool)

(assert (=> b!4170162 (= tp!1273989 b_and!325565)))

(declare-fun b_free!120625 () Bool)

(declare-fun b_next!121329 () Bool)

(assert (=> b!4170162 (= b_free!120625 (not b_next!121329))))

(declare-fun tp!1273988 () Bool)

(declare-fun b_and!325567 () Bool)

(assert (=> b!4170162 (= tp!1273988 b_and!325567)))

(declare-fun b!4170165 () Bool)

(declare-fun b_free!120627 () Bool)

(declare-fun b_next!121331 () Bool)

(assert (=> b!4170165 (= b_free!120627 (not b_next!121331))))

(declare-fun tp!1273990 () Bool)

(declare-fun b_and!325569 () Bool)

(assert (=> b!4170165 (= tp!1273990 b_and!325569)))

(declare-fun b_free!120629 () Bool)

(declare-fun b_next!121333 () Bool)

(assert (=> b!4170165 (= b_free!120629 (not b_next!121333))))

(declare-fun tp!1273994 () Bool)

(declare-fun b_and!325571 () Bool)

(assert (=> b!4170165 (= tp!1273994 b_and!325571)))

(declare-fun b!4170172 () Bool)

(declare-fun b_free!120631 () Bool)

(declare-fun b_next!121335 () Bool)

(assert (=> b!4170172 (= b_free!120631 (not b_next!121335))))

(declare-fun tp!1273993 () Bool)

(declare-fun b_and!325573 () Bool)

(assert (=> b!4170172 (= tp!1273993 b_and!325573)))

(declare-fun b_free!120633 () Bool)

(declare-fun b_next!121337 () Bool)

(assert (=> b!4170172 (= b_free!120633 (not b_next!121337))))

(declare-fun tp!1273998 () Bool)

(declare-fun b_and!325575 () Bool)

(assert (=> b!4170172 (= tp!1273998 b_and!325575)))

(declare-fun b!4170159 () Bool)

(declare-fun res!1708668 () Bool)

(declare-fun e!2588889 () Bool)

(assert (=> b!4170159 (=> (not res!1708668) (not e!2588889))))

(declare-datatypes ((LexerInterface!7165 0))(
  ( (LexerInterfaceExt!7162 (__x!27825 Int)) (Lexer!7163) )
))
(declare-fun thiss!25986 () LexerInterface!7165)

(declare-datatypes ((List!45809 0))(
  ( (Nil!45685) (Cons!45685 (h!51105 (_ BitVec 16)) (t!344320 List!45809)) )
))
(declare-datatypes ((TokenValue!7802 0))(
  ( (FloatLiteralValue!15604 (text!55059 List!45809)) (TokenValueExt!7801 (__x!27826 Int)) (Broken!39010 (value!236311 List!45809)) (Object!7925) (End!7802) (Def!7802) (Underscore!7802) (Match!7802) (Else!7802) (Error!7802) (Case!7802) (If!7802) (Extends!7802) (Abstract!7802) (Class!7802) (Val!7802) (DelimiterValue!15604 (del!7862 List!45809)) (KeywordValue!7808 (value!236312 List!45809)) (CommentValue!15604 (value!236313 List!45809)) (WhitespaceValue!15604 (value!236314 List!45809)) (IndentationValue!7802 (value!236315 List!45809)) (String!52875) (Int32!7802) (Broken!39011 (value!236316 List!45809)) (Boolean!7803) (Unit!64754) (OperatorValue!7805 (op!7862 List!45809)) (IdentifierValue!15604 (value!236317 List!45809)) (IdentifierValue!15605 (value!236318 List!45809)) (WhitespaceValue!15605 (value!236319 List!45809)) (True!15604) (False!15604) (Broken!39012 (value!236320 List!45809)) (Broken!39013 (value!236321 List!45809)) (True!15605) (RightBrace!7802) (RightBracket!7802) (Colon!7802) (Null!7802) (Comma!7802) (LeftBracket!7802) (False!15605) (LeftBrace!7802) (ImaginaryLiteralValue!7802 (text!55060 List!45809)) (StringLiteralValue!23406 (value!236322 List!45809)) (EOFValue!7802 (value!236323 List!45809)) (IdentValue!7802 (value!236324 List!45809)) (DelimiterValue!15605 (value!236325 List!45809)) (DedentValue!7802 (value!236326 List!45809)) (NewLineValue!7802 (value!236327 List!45809)) (IntegerValue!23406 (value!236328 (_ BitVec 32)) (text!55061 List!45809)) (IntegerValue!23407 (value!236329 Int) (text!55062 List!45809)) (Times!7802) (Or!7802) (Equal!7802) (Minus!7802) (Broken!39014 (value!236330 List!45809)) (And!7802) (Div!7802) (LessEqual!7802) (Mod!7802) (Concat!20279) (Not!7802) (Plus!7802) (SpaceValue!7802 (value!236331 List!45809)) (IntegerValue!23408 (value!236332 Int) (text!55063 List!45809)) (StringLiteralValue!23407 (text!55064 List!45809)) (FloatLiteralValue!15605 (text!55065 List!45809)) (BytesLiteralValue!7802 (value!236333 List!45809)) (CommentValue!15605 (value!236334 List!45809)) (StringLiteralValue!23408 (value!236335 List!45809)) (ErrorTokenValue!7802 (msg!7863 List!45809)) )
))
(declare-datatypes ((C!25144 0))(
  ( (C!25145 (val!14734 Int)) )
))
(declare-datatypes ((List!45810 0))(
  ( (Nil!45686) (Cons!45686 (h!51106 C!25144) (t!344321 List!45810)) )
))
(declare-datatypes ((IArray!27571 0))(
  ( (IArray!27572 (innerList!13843 List!45810)) )
))
(declare-datatypes ((Conc!13783 0))(
  ( (Node!13783 (left!34055 Conc!13783) (right!34385 Conc!13783) (csize!27796 Int) (cheight!13994 Int)) (Leaf!21312 (xs!17089 IArray!27571) (csize!27797 Int)) (Empty!13783) )
))
(declare-datatypes ((BalanceConc!27160 0))(
  ( (BalanceConc!27161 (c!712844 Conc!13783)) )
))
(declare-datatypes ((Regex!12477 0))(
  ( (ElementMatch!12477 (c!712845 C!25144)) (Concat!20280 (regOne!25466 Regex!12477) (regTwo!25466 Regex!12477)) (EmptyExpr!12477) (Star!12477 (reg!12806 Regex!12477)) (EmptyLang!12477) (Union!12477 (regOne!25467 Regex!12477) (regTwo!25467 Regex!12477)) )
))
(declare-datatypes ((String!52876 0))(
  ( (String!52877 (value!236336 String)) )
))
(declare-datatypes ((TokenValueInjection!15032 0))(
  ( (TokenValueInjection!15033 (toValue!10252 Int) (toChars!10111 Int)) )
))
(declare-datatypes ((Rule!14944 0))(
  ( (Rule!14945 (regex!7572 Regex!12477) (tag!8436 String!52876) (isSeparator!7572 Bool) (transformation!7572 TokenValueInjection!15032)) )
))
(declare-datatypes ((List!45811 0))(
  ( (Nil!45687) (Cons!45687 (h!51107 Rule!14944) (t!344322 List!45811)) )
))
(declare-fun rules!3843 () List!45811)

(declare-fun rulesInvariant!6378 (LexerInterface!7165 List!45811) Bool)

(assert (=> b!4170159 (= res!1708668 (rulesInvariant!6378 thiss!25986 rules!3843))))

(declare-fun b!4170160 () Bool)

(declare-fun e!2588890 () Bool)

(declare-fun tp_is_empty!21917 () Bool)

(declare-fun tp!1273997 () Bool)

(assert (=> b!4170160 (= e!2588890 (and tp_is_empty!21917 tp!1273997))))

(declare-fun b!4170161 () Bool)

(declare-fun e!2588882 () Bool)

(declare-fun tp!1273995 () Bool)

(assert (=> b!4170161 (= e!2588882 (and tp_is_empty!21917 tp!1273995))))

(declare-fun e!2588880 () Bool)

(assert (=> b!4170162 (= e!2588880 (and tp!1273989 tp!1273988))))

(declare-fun b!4170163 () Bool)

(declare-fun res!1708672 () Bool)

(assert (=> b!4170163 (=> (not res!1708672) (not e!2588889))))

(declare-fun r!4142 () Rule!14944)

(declare-fun validRegex!5594 (Regex!12477) Bool)

(assert (=> b!4170163 (= res!1708672 (validRegex!5594 (regex!7572 r!4142)))))

(declare-fun b!4170164 () Bool)

(declare-fun res!1708665 () Bool)

(assert (=> b!4170164 (=> (not res!1708665) (not e!2588889))))

(declare-fun rBis!167 () Rule!14944)

(declare-fun contains!9373 (List!45811 Rule!14944) Bool)

(assert (=> b!4170164 (= res!1708665 (contains!9373 rules!3843 rBis!167))))

(declare-fun e!2588879 () Bool)

(assert (=> b!4170165 (= e!2588879 (and tp!1273990 tp!1273994))))

(declare-fun b!4170166 () Bool)

(declare-fun res!1708667 () Bool)

(assert (=> b!4170166 (=> (not res!1708667) (not e!2588889))))

(declare-fun pBis!107 () List!45810)

(declare-fun input!3342 () List!45810)

(declare-fun isPrefix!4429 (List!45810 List!45810) Bool)

(assert (=> b!4170166 (= res!1708667 (isPrefix!4429 pBis!107 input!3342))))

(declare-fun e!2588881 () Bool)

(declare-fun tp!1273996 () Bool)

(declare-fun e!2588884 () Bool)

(declare-fun b!4170167 () Bool)

(declare-fun inv!60213 (String!52876) Bool)

(declare-fun inv!60215 (TokenValueInjection!15032) Bool)

(assert (=> b!4170167 (= e!2588881 (and tp!1273996 (inv!60213 (tag!8436 r!4142)) (inv!60215 (transformation!7572 r!4142)) e!2588884))))

(declare-fun tp!1273991 () Bool)

(declare-fun e!2588885 () Bool)

(declare-fun b!4170168 () Bool)

(assert (=> b!4170168 (= e!2588885 (and tp!1273991 (inv!60213 (tag!8436 (h!51107 rules!3843))) (inv!60215 (transformation!7572 (h!51107 rules!3843))) e!2588879))))

(declare-fun res!1708670 () Bool)

(assert (=> start!397586 (=> (not res!1708670) (not e!2588889))))

(get-info :version)

(assert (=> start!397586 (= res!1708670 ((_ is Lexer!7163) thiss!25986))))

(assert (=> start!397586 e!2588889))

(assert (=> start!397586 true))

(declare-fun e!2588886 () Bool)

(assert (=> start!397586 e!2588886))

(assert (=> start!397586 e!2588881))

(declare-fun e!2588888 () Bool)

(assert (=> start!397586 e!2588888))

(declare-fun e!2588891 () Bool)

(assert (=> start!397586 e!2588891))

(assert (=> start!397586 e!2588882))

(assert (=> start!397586 e!2588890))

(declare-fun b!4170169 () Bool)

(declare-fun res!1708669 () Bool)

(assert (=> b!4170169 (=> (not res!1708669) (not e!2588889))))

(declare-fun p!2959 () List!45810)

(declare-fun matchR!6216 (Regex!12477 List!45810) Bool)

(assert (=> b!4170169 (= res!1708669 (matchR!6216 (regex!7572 r!4142) p!2959))))

(declare-fun b!4170170 () Bool)

(declare-fun res!1708663 () Bool)

(assert (=> b!4170170 (=> (not res!1708663) (not e!2588889))))

(assert (=> b!4170170 (= res!1708663 (contains!9373 rules!3843 r!4142))))

(declare-fun b!4170171 () Bool)

(declare-fun tp!1273986 () Bool)

(assert (=> b!4170171 (= e!2588891 (and tp_is_empty!21917 tp!1273986))))

(assert (=> b!4170172 (= e!2588884 (and tp!1273993 tp!1273998))))

(declare-fun b!4170173 () Bool)

(declare-fun res!1708664 () Bool)

(assert (=> b!4170173 (=> (not res!1708664) (not e!2588889))))

(declare-fun ruleValid!3290 (LexerInterface!7165 Rule!14944) Bool)

(assert (=> b!4170173 (= res!1708664 (ruleValid!3290 thiss!25986 r!4142))))

(declare-fun b!4170174 () Bool)

(declare-fun res!1708671 () Bool)

(assert (=> b!4170174 (=> (not res!1708671) (not e!2588889))))

(assert (=> b!4170174 (= res!1708671 (isPrefix!4429 p!2959 input!3342))))

(declare-fun b!4170175 () Bool)

(declare-fun res!1708666 () Bool)

(assert (=> b!4170175 (=> (not res!1708666) (not e!2588889))))

(declare-fun isEmpty!27031 (List!45811) Bool)

(assert (=> b!4170175 (= res!1708666 (not (isEmpty!27031 rules!3843)))))

(declare-fun b!4170176 () Bool)

(declare-fun size!33540 (List!45810) Int)

(assert (=> b!4170176 (= e!2588889 (not (>= (size!33540 input!3342) (size!33540 p!2959))))))

(assert (=> b!4170176 (isPrefix!4429 input!3342 input!3342)))

(declare-datatypes ((Unit!64755 0))(
  ( (Unit!64756) )
))
(declare-fun lt!1485139 () Unit!64755)

(declare-fun lemmaIsPrefixRefl!2858 (List!45810 List!45810) Unit!64755)

(assert (=> b!4170176 (= lt!1485139 (lemmaIsPrefixRefl!2858 input!3342 input!3342))))

(declare-fun lt!1485140 () Unit!64755)

(declare-fun lemmaSemiInverse!2338 (TokenValueInjection!15032 BalanceConc!27160) Unit!64755)

(declare-fun seqFromList!5597 (List!45810) BalanceConc!27160)

(assert (=> b!4170176 (= lt!1485140 (lemmaSemiInverse!2338 (transformation!7572 r!4142) (seqFromList!5597 p!2959)))))

(declare-fun b!4170177 () Bool)

(declare-fun tp!1273992 () Bool)

(assert (=> b!4170177 (= e!2588888 (and e!2588885 tp!1273992))))

(declare-fun b!4170178 () Bool)

(declare-fun tp!1273987 () Bool)

(assert (=> b!4170178 (= e!2588886 (and tp!1273987 (inv!60213 (tag!8436 rBis!167)) (inv!60215 (transformation!7572 rBis!167)) e!2588880))))

(assert (= (and start!397586 res!1708670) b!4170174))

(assert (= (and b!4170174 res!1708671) b!4170166))

(assert (= (and b!4170166 res!1708667) b!4170175))

(assert (= (and b!4170175 res!1708666) b!4170159))

(assert (= (and b!4170159 res!1708668) b!4170170))

(assert (= (and b!4170170 res!1708663) b!4170164))

(assert (= (and b!4170164 res!1708665) b!4170163))

(assert (= (and b!4170163 res!1708672) b!4170169))

(assert (= (and b!4170169 res!1708669) b!4170173))

(assert (= (and b!4170173 res!1708664) b!4170176))

(assert (= b!4170178 b!4170162))

(assert (= start!397586 b!4170178))

(assert (= b!4170167 b!4170172))

(assert (= start!397586 b!4170167))

(assert (= b!4170168 b!4170165))

(assert (= b!4170177 b!4170168))

(assert (= (and start!397586 ((_ is Cons!45687) rules!3843)) b!4170177))

(assert (= (and start!397586 ((_ is Cons!45686) input!3342)) b!4170171))

(assert (= (and start!397586 ((_ is Cons!45686) pBis!107)) b!4170161))

(assert (= (and start!397586 ((_ is Cons!45686) p!2959)) b!4170160))

(declare-fun m!4760929 () Bool)

(assert (=> b!4170163 m!4760929))

(declare-fun m!4760931 () Bool)

(assert (=> b!4170173 m!4760931))

(declare-fun m!4760933 () Bool)

(assert (=> b!4170170 m!4760933))

(declare-fun m!4760935 () Bool)

(assert (=> b!4170178 m!4760935))

(declare-fun m!4760937 () Bool)

(assert (=> b!4170178 m!4760937))

(declare-fun m!4760939 () Bool)

(assert (=> b!4170159 m!4760939))

(declare-fun m!4760941 () Bool)

(assert (=> b!4170167 m!4760941))

(declare-fun m!4760943 () Bool)

(assert (=> b!4170167 m!4760943))

(declare-fun m!4760945 () Bool)

(assert (=> b!4170174 m!4760945))

(declare-fun m!4760947 () Bool)

(assert (=> b!4170169 m!4760947))

(declare-fun m!4760949 () Bool)

(assert (=> b!4170166 m!4760949))

(declare-fun m!4760951 () Bool)

(assert (=> b!4170164 m!4760951))

(declare-fun m!4760953 () Bool)

(assert (=> b!4170175 m!4760953))

(declare-fun m!4760955 () Bool)

(assert (=> b!4170168 m!4760955))

(declare-fun m!4760957 () Bool)

(assert (=> b!4170168 m!4760957))

(declare-fun m!4760959 () Bool)

(assert (=> b!4170176 m!4760959))

(declare-fun m!4760961 () Bool)

(assert (=> b!4170176 m!4760961))

(declare-fun m!4760963 () Bool)

(assert (=> b!4170176 m!4760963))

(declare-fun m!4760965 () Bool)

(assert (=> b!4170176 m!4760965))

(declare-fun m!4760967 () Bool)

(assert (=> b!4170176 m!4760967))

(assert (=> b!4170176 m!4760961))

(declare-fun m!4760969 () Bool)

(assert (=> b!4170176 m!4760969))

(check-sat b_and!325565 (not b!4170170) (not b_next!121333) (not b!4170173) (not b_next!121331) (not b!4170166) (not b!4170176) (not b_next!121335) (not b!4170160) b_and!325571 tp_is_empty!21917 (not b!4170161) (not b!4170167) (not b_next!121329) (not b!4170175) b_and!325569 b_and!325573 (not b!4170169) (not b!4170171) (not b!4170164) (not b!4170168) (not b!4170177) b_and!325575 (not b!4170178) (not b_next!121337) (not b!4170174) b_and!325567 (not b!4170159) (not b_next!121327) (not b!4170163))
(check-sat (not b_next!121329) b_and!325565 b_and!325575 (not b_next!121333) (not b_next!121337) (not b_next!121331) b_and!325567 (not b_next!121335) b_and!325571 (not b_next!121327) b_and!325569 b_and!325573)
(get-model)

(declare-fun d!1232047 () Bool)

(declare-fun e!2588904 () Bool)

(assert (=> d!1232047 e!2588904))

(declare-fun res!1708695 () Bool)

(assert (=> d!1232047 (=> res!1708695 e!2588904)))

(declare-fun lt!1485143 () Bool)

(assert (=> d!1232047 (= res!1708695 (not lt!1485143))))

(declare-fun e!2588903 () Bool)

(assert (=> d!1232047 (= lt!1485143 e!2588903)))

(declare-fun res!1708694 () Bool)

(assert (=> d!1232047 (=> res!1708694 e!2588903)))

(assert (=> d!1232047 (= res!1708694 ((_ is Nil!45686) input!3342))))

(assert (=> d!1232047 (= (isPrefix!4429 input!3342 input!3342) lt!1485143)))

(declare-fun b!4170193 () Bool)

(assert (=> b!4170193 (= e!2588904 (>= (size!33540 input!3342) (size!33540 input!3342)))))

(declare-fun b!4170190 () Bool)

(declare-fun e!2588902 () Bool)

(assert (=> b!4170190 (= e!2588903 e!2588902)))

(declare-fun res!1708692 () Bool)

(assert (=> b!4170190 (=> (not res!1708692) (not e!2588902))))

(assert (=> b!4170190 (= res!1708692 (not ((_ is Nil!45686) input!3342)))))

(declare-fun b!4170191 () Bool)

(declare-fun res!1708693 () Bool)

(assert (=> b!4170191 (=> (not res!1708693) (not e!2588902))))

(declare-fun head!8854 (List!45810) C!25144)

(assert (=> b!4170191 (= res!1708693 (= (head!8854 input!3342) (head!8854 input!3342)))))

(declare-fun b!4170192 () Bool)

(declare-fun tail!6701 (List!45810) List!45810)

(assert (=> b!4170192 (= e!2588902 (isPrefix!4429 (tail!6701 input!3342) (tail!6701 input!3342)))))

(assert (= (and d!1232047 (not res!1708694)) b!4170190))

(assert (= (and b!4170190 res!1708692) b!4170191))

(assert (= (and b!4170191 res!1708693) b!4170192))

(assert (= (and d!1232047 (not res!1708695)) b!4170193))

(assert (=> b!4170193 m!4760963))

(assert (=> b!4170193 m!4760963))

(declare-fun m!4760975 () Bool)

(assert (=> b!4170191 m!4760975))

(assert (=> b!4170191 m!4760975))

(declare-fun m!4760977 () Bool)

(assert (=> b!4170192 m!4760977))

(assert (=> b!4170192 m!4760977))

(assert (=> b!4170192 m!4760977))

(assert (=> b!4170192 m!4760977))

(declare-fun m!4760979 () Bool)

(assert (=> b!4170192 m!4760979))

(assert (=> b!4170176 d!1232047))

(declare-fun d!1232051 () Bool)

(declare-fun fromListB!2569 (List!45810) BalanceConc!27160)

(assert (=> d!1232051 (= (seqFromList!5597 p!2959) (fromListB!2569 p!2959))))

(declare-fun bs!596002 () Bool)

(assert (= bs!596002 d!1232051))

(declare-fun m!4760987 () Bool)

(assert (=> bs!596002 m!4760987))

(assert (=> b!4170176 d!1232051))

(declare-fun d!1232055 () Bool)

(assert (=> d!1232055 (isPrefix!4429 input!3342 input!3342)))

(declare-fun lt!1485149 () Unit!64755)

(declare-fun choose!25530 (List!45810 List!45810) Unit!64755)

(assert (=> d!1232055 (= lt!1485149 (choose!25530 input!3342 input!3342))))

(assert (=> d!1232055 (= (lemmaIsPrefixRefl!2858 input!3342 input!3342) lt!1485149)))

(declare-fun bs!596003 () Bool)

(assert (= bs!596003 d!1232055))

(assert (=> bs!596003 m!4760959))

(declare-fun m!4760989 () Bool)

(assert (=> bs!596003 m!4760989))

(assert (=> b!4170176 d!1232055))

(declare-fun b!4170366 () Bool)

(declare-fun e!2589015 () Bool)

(assert (=> b!4170366 (= e!2589015 true)))

(declare-fun d!1232057 () Bool)

(assert (=> d!1232057 e!2589015))

(assert (= d!1232057 b!4170366))

(declare-fun order!24095 () Int)

(declare-fun order!24093 () Int)

(declare-fun lambda!129229 () Int)

(declare-fun dynLambda!19587 (Int Int) Int)

(declare-fun dynLambda!19588 (Int Int) Int)

(assert (=> b!4170366 (< (dynLambda!19587 order!24093 (toValue!10252 (transformation!7572 r!4142))) (dynLambda!19588 order!24095 lambda!129229))))

(declare-fun order!24097 () Int)

(declare-fun dynLambda!19589 (Int Int) Int)

(assert (=> b!4170366 (< (dynLambda!19589 order!24097 (toChars!10111 (transformation!7572 r!4142))) (dynLambda!19588 order!24095 lambda!129229))))

(declare-fun list!16523 (BalanceConc!27160) List!45810)

(declare-fun dynLambda!19590 (Int TokenValue!7802) BalanceConc!27160)

(declare-fun dynLambda!19591 (Int BalanceConc!27160) TokenValue!7802)

(assert (=> d!1232057 (= (list!16523 (dynLambda!19590 (toChars!10111 (transformation!7572 r!4142)) (dynLambda!19591 (toValue!10252 (transformation!7572 r!4142)) (seqFromList!5597 p!2959)))) (list!16523 (seqFromList!5597 p!2959)))))

(declare-fun lt!1485171 () Unit!64755)

(declare-fun ForallOf!1020 (Int BalanceConc!27160) Unit!64755)

(assert (=> d!1232057 (= lt!1485171 (ForallOf!1020 lambda!129229 (seqFromList!5597 p!2959)))))

(assert (=> d!1232057 (= (lemmaSemiInverse!2338 (transformation!7572 r!4142) (seqFromList!5597 p!2959)) lt!1485171)))

(declare-fun b_lambda!122495 () Bool)

(assert (=> (not b_lambda!122495) (not d!1232057)))

(declare-fun t!344340 () Bool)

(declare-fun tb!249747 () Bool)

(assert (=> (and b!4170162 (= (toChars!10111 (transformation!7572 rBis!167)) (toChars!10111 (transformation!7572 r!4142))) t!344340) tb!249747))

(declare-fun e!2589018 () Bool)

(declare-fun b!4170371 () Bool)

(declare-fun tp!1274046 () Bool)

(declare-fun inv!60218 (Conc!13783) Bool)

(assert (=> b!4170371 (= e!2589018 (and (inv!60218 (c!712844 (dynLambda!19590 (toChars!10111 (transformation!7572 r!4142)) (dynLambda!19591 (toValue!10252 (transformation!7572 r!4142)) (seqFromList!5597 p!2959))))) tp!1274046))))

(declare-fun result!304246 () Bool)

(declare-fun inv!60219 (BalanceConc!27160) Bool)

(assert (=> tb!249747 (= result!304246 (and (inv!60219 (dynLambda!19590 (toChars!10111 (transformation!7572 r!4142)) (dynLambda!19591 (toValue!10252 (transformation!7572 r!4142)) (seqFromList!5597 p!2959)))) e!2589018))))

(assert (= tb!249747 b!4170371))

(declare-fun m!4761071 () Bool)

(assert (=> b!4170371 m!4761071))

(declare-fun m!4761073 () Bool)

(assert (=> tb!249747 m!4761073))

(assert (=> d!1232057 t!344340))

(declare-fun b_and!325593 () Bool)

(assert (= b_and!325567 (and (=> t!344340 result!304246) b_and!325593)))

(declare-fun tb!249749 () Bool)

(declare-fun t!344342 () Bool)

(assert (=> (and b!4170165 (= (toChars!10111 (transformation!7572 (h!51107 rules!3843))) (toChars!10111 (transformation!7572 r!4142))) t!344342) tb!249749))

(declare-fun result!304250 () Bool)

(assert (= result!304250 result!304246))

(assert (=> d!1232057 t!344342))

(declare-fun b_and!325595 () Bool)

(assert (= b_and!325571 (and (=> t!344342 result!304250) b_and!325595)))

(declare-fun t!344344 () Bool)

(declare-fun tb!249751 () Bool)

(assert (=> (and b!4170172 (= (toChars!10111 (transformation!7572 r!4142)) (toChars!10111 (transformation!7572 r!4142))) t!344344) tb!249751))

(declare-fun result!304252 () Bool)

(assert (= result!304252 result!304246))

(assert (=> d!1232057 t!344344))

(declare-fun b_and!325597 () Bool)

(assert (= b_and!325575 (and (=> t!344344 result!304252) b_and!325597)))

(declare-fun b_lambda!122497 () Bool)

(assert (=> (not b_lambda!122497) (not d!1232057)))

(declare-fun tb!249753 () Bool)

(declare-fun t!344346 () Bool)

(assert (=> (and b!4170162 (= (toValue!10252 (transformation!7572 rBis!167)) (toValue!10252 (transformation!7572 r!4142))) t!344346) tb!249753))

(declare-fun result!304254 () Bool)

(declare-fun inv!21 (TokenValue!7802) Bool)

(assert (=> tb!249753 (= result!304254 (inv!21 (dynLambda!19591 (toValue!10252 (transformation!7572 r!4142)) (seqFromList!5597 p!2959))))))

(declare-fun m!4761075 () Bool)

(assert (=> tb!249753 m!4761075))

(assert (=> d!1232057 t!344346))

(declare-fun b_and!325599 () Bool)

(assert (= b_and!325565 (and (=> t!344346 result!304254) b_and!325599)))

(declare-fun tb!249755 () Bool)

(declare-fun t!344348 () Bool)

(assert (=> (and b!4170165 (= (toValue!10252 (transformation!7572 (h!51107 rules!3843))) (toValue!10252 (transformation!7572 r!4142))) t!344348) tb!249755))

(declare-fun result!304258 () Bool)

(assert (= result!304258 result!304254))

(assert (=> d!1232057 t!344348))

(declare-fun b_and!325601 () Bool)

(assert (= b_and!325569 (and (=> t!344348 result!304258) b_and!325601)))

(declare-fun t!344350 () Bool)

(declare-fun tb!249757 () Bool)

(assert (=> (and b!4170172 (= (toValue!10252 (transformation!7572 r!4142)) (toValue!10252 (transformation!7572 r!4142))) t!344350) tb!249757))

(declare-fun result!304260 () Bool)

(assert (= result!304260 result!304254))

(assert (=> d!1232057 t!344350))

(declare-fun b_and!325603 () Bool)

(assert (= b_and!325573 (and (=> t!344350 result!304260) b_and!325603)))

(declare-fun m!4761077 () Bool)

(assert (=> d!1232057 m!4761077))

(declare-fun m!4761079 () Bool)

(assert (=> d!1232057 m!4761079))

(assert (=> d!1232057 m!4760961))

(assert (=> d!1232057 m!4761077))

(assert (=> d!1232057 m!4760961))

(declare-fun m!4761081 () Bool)

(assert (=> d!1232057 m!4761081))

(assert (=> d!1232057 m!4760961))

(declare-fun m!4761083 () Bool)

(assert (=> d!1232057 m!4761083))

(assert (=> d!1232057 m!4761079))

(declare-fun m!4761085 () Bool)

(assert (=> d!1232057 m!4761085))

(assert (=> b!4170176 d!1232057))

(declare-fun d!1232091 () Bool)

(declare-fun lt!1485174 () Int)

(assert (=> d!1232091 (>= lt!1485174 0)))

(declare-fun e!2589024 () Int)

(assert (=> d!1232091 (= lt!1485174 e!2589024)))

(declare-fun c!712869 () Bool)

(assert (=> d!1232091 (= c!712869 ((_ is Nil!45686) input!3342))))

(assert (=> d!1232091 (= (size!33540 input!3342) lt!1485174)))

(declare-fun b!4170378 () Bool)

(assert (=> b!4170378 (= e!2589024 0)))

(declare-fun b!4170379 () Bool)

(assert (=> b!4170379 (= e!2589024 (+ 1 (size!33540 (t!344321 input!3342))))))

(assert (= (and d!1232091 c!712869) b!4170378))

(assert (= (and d!1232091 (not c!712869)) b!4170379))

(declare-fun m!4761087 () Bool)

(assert (=> b!4170379 m!4761087))

(assert (=> b!4170176 d!1232091))

(declare-fun d!1232093 () Bool)

(declare-fun lt!1485175 () Int)

(assert (=> d!1232093 (>= lt!1485175 0)))

(declare-fun e!2589025 () Int)

(assert (=> d!1232093 (= lt!1485175 e!2589025)))

(declare-fun c!712870 () Bool)

(assert (=> d!1232093 (= c!712870 ((_ is Nil!45686) p!2959))))

(assert (=> d!1232093 (= (size!33540 p!2959) lt!1485175)))

(declare-fun b!4170380 () Bool)

(assert (=> b!4170380 (= e!2589025 0)))

(declare-fun b!4170381 () Bool)

(assert (=> b!4170381 (= e!2589025 (+ 1 (size!33540 (t!344321 p!2959))))))

(assert (= (and d!1232093 c!712870) b!4170380))

(assert (= (and d!1232093 (not c!712870)) b!4170381))

(declare-fun m!4761089 () Bool)

(assert (=> b!4170381 m!4761089))

(assert (=> b!4170176 d!1232093))

(declare-fun d!1232095 () Bool)

(declare-fun lt!1485178 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7102 (List!45811) (InoxSet Rule!14944))

(assert (=> d!1232095 (= lt!1485178 (select (content!7102 rules!3843) rBis!167))))

(declare-fun e!2589031 () Bool)

(assert (=> d!1232095 (= lt!1485178 e!2589031)))

(declare-fun res!1708779 () Bool)

(assert (=> d!1232095 (=> (not res!1708779) (not e!2589031))))

(assert (=> d!1232095 (= res!1708779 ((_ is Cons!45687) rules!3843))))

(assert (=> d!1232095 (= (contains!9373 rules!3843 rBis!167) lt!1485178)))

(declare-fun b!4170386 () Bool)

(declare-fun e!2589030 () Bool)

(assert (=> b!4170386 (= e!2589031 e!2589030)))

(declare-fun res!1708778 () Bool)

(assert (=> b!4170386 (=> res!1708778 e!2589030)))

(assert (=> b!4170386 (= res!1708778 (= (h!51107 rules!3843) rBis!167))))

(declare-fun b!4170387 () Bool)

(assert (=> b!4170387 (= e!2589030 (contains!9373 (t!344322 rules!3843) rBis!167))))

(assert (= (and d!1232095 res!1708779) b!4170386))

(assert (= (and b!4170386 (not res!1708778)) b!4170387))

(declare-fun m!4761091 () Bool)

(assert (=> d!1232095 m!4761091))

(declare-fun m!4761093 () Bool)

(assert (=> d!1232095 m!4761093))

(declare-fun m!4761095 () Bool)

(assert (=> b!4170387 m!4761095))

(assert (=> b!4170164 d!1232095))

(declare-fun d!1232097 () Bool)

(assert (=> d!1232097 (= (isEmpty!27031 rules!3843) ((_ is Nil!45687) rules!3843))))

(assert (=> b!4170175 d!1232097))

(declare-fun d!1232099 () Bool)

(declare-fun e!2589034 () Bool)

(assert (=> d!1232099 e!2589034))

(declare-fun res!1708783 () Bool)

(assert (=> d!1232099 (=> res!1708783 e!2589034)))

(declare-fun lt!1485179 () Bool)

(assert (=> d!1232099 (= res!1708783 (not lt!1485179))))

(declare-fun e!2589033 () Bool)

(assert (=> d!1232099 (= lt!1485179 e!2589033)))

(declare-fun res!1708782 () Bool)

(assert (=> d!1232099 (=> res!1708782 e!2589033)))

(assert (=> d!1232099 (= res!1708782 ((_ is Nil!45686) p!2959))))

(assert (=> d!1232099 (= (isPrefix!4429 p!2959 input!3342) lt!1485179)))

(declare-fun b!4170391 () Bool)

(assert (=> b!4170391 (= e!2589034 (>= (size!33540 input!3342) (size!33540 p!2959)))))

(declare-fun b!4170388 () Bool)

(declare-fun e!2589032 () Bool)

(assert (=> b!4170388 (= e!2589033 e!2589032)))

(declare-fun res!1708780 () Bool)

(assert (=> b!4170388 (=> (not res!1708780) (not e!2589032))))

(assert (=> b!4170388 (= res!1708780 (not ((_ is Nil!45686) input!3342)))))

(declare-fun b!4170389 () Bool)

(declare-fun res!1708781 () Bool)

(assert (=> b!4170389 (=> (not res!1708781) (not e!2589032))))

(assert (=> b!4170389 (= res!1708781 (= (head!8854 p!2959) (head!8854 input!3342)))))

(declare-fun b!4170390 () Bool)

(assert (=> b!4170390 (= e!2589032 (isPrefix!4429 (tail!6701 p!2959) (tail!6701 input!3342)))))

(assert (= (and d!1232099 (not res!1708782)) b!4170388))

(assert (= (and b!4170388 res!1708780) b!4170389))

(assert (= (and b!4170389 res!1708781) b!4170390))

(assert (= (and d!1232099 (not res!1708783)) b!4170391))

(assert (=> b!4170391 m!4760963))

(assert (=> b!4170391 m!4760967))

(declare-fun m!4761097 () Bool)

(assert (=> b!4170389 m!4761097))

(assert (=> b!4170389 m!4760975))

(declare-fun m!4761099 () Bool)

(assert (=> b!4170390 m!4761099))

(assert (=> b!4170390 m!4760977))

(assert (=> b!4170390 m!4761099))

(assert (=> b!4170390 m!4760977))

(declare-fun m!4761101 () Bool)

(assert (=> b!4170390 m!4761101))

(assert (=> b!4170174 d!1232099))

(declare-fun d!1232101 () Bool)

(assert (=> d!1232101 (= (inv!60213 (tag!8436 (h!51107 rules!3843))) (= (mod (str.len (value!236336 (tag!8436 (h!51107 rules!3843)))) 2) 0))))

(assert (=> b!4170168 d!1232101))

(declare-fun d!1232103 () Bool)

(declare-fun res!1708786 () Bool)

(declare-fun e!2589037 () Bool)

(assert (=> d!1232103 (=> (not res!1708786) (not e!2589037))))

(declare-fun semiInverseModEq!3286 (Int Int) Bool)

(assert (=> d!1232103 (= res!1708786 (semiInverseModEq!3286 (toChars!10111 (transformation!7572 (h!51107 rules!3843))) (toValue!10252 (transformation!7572 (h!51107 rules!3843)))))))

(assert (=> d!1232103 (= (inv!60215 (transformation!7572 (h!51107 rules!3843))) e!2589037)))

(declare-fun b!4170394 () Bool)

(declare-fun equivClasses!3185 (Int Int) Bool)

(assert (=> b!4170394 (= e!2589037 (equivClasses!3185 (toChars!10111 (transformation!7572 (h!51107 rules!3843))) (toValue!10252 (transformation!7572 (h!51107 rules!3843)))))))

(assert (= (and d!1232103 res!1708786) b!4170394))

(declare-fun m!4761103 () Bool)

(assert (=> d!1232103 m!4761103))

(declare-fun m!4761105 () Bool)

(assert (=> b!4170394 m!4761105))

(assert (=> b!4170168 d!1232103))

(declare-fun d!1232105 () Bool)

(assert (=> d!1232105 (= (inv!60213 (tag!8436 rBis!167)) (= (mod (str.len (value!236336 (tag!8436 rBis!167))) 2) 0))))

(assert (=> b!4170178 d!1232105))

(declare-fun d!1232107 () Bool)

(declare-fun res!1708787 () Bool)

(declare-fun e!2589038 () Bool)

(assert (=> d!1232107 (=> (not res!1708787) (not e!2589038))))

(assert (=> d!1232107 (= res!1708787 (semiInverseModEq!3286 (toChars!10111 (transformation!7572 rBis!167)) (toValue!10252 (transformation!7572 rBis!167))))))

(assert (=> d!1232107 (= (inv!60215 (transformation!7572 rBis!167)) e!2589038)))

(declare-fun b!4170395 () Bool)

(assert (=> b!4170395 (= e!2589038 (equivClasses!3185 (toChars!10111 (transformation!7572 rBis!167)) (toValue!10252 (transformation!7572 rBis!167))))))

(assert (= (and d!1232107 res!1708787) b!4170395))

(declare-fun m!4761107 () Bool)

(assert (=> d!1232107 m!4761107))

(declare-fun m!4761109 () Bool)

(assert (=> b!4170395 m!4761109))

(assert (=> b!4170178 d!1232107))

(declare-fun d!1232109 () Bool)

(assert (=> d!1232109 (= (inv!60213 (tag!8436 r!4142)) (= (mod (str.len (value!236336 (tag!8436 r!4142))) 2) 0))))

(assert (=> b!4170167 d!1232109))

(declare-fun d!1232111 () Bool)

(declare-fun res!1708788 () Bool)

(declare-fun e!2589039 () Bool)

(assert (=> d!1232111 (=> (not res!1708788) (not e!2589039))))

(assert (=> d!1232111 (= res!1708788 (semiInverseModEq!3286 (toChars!10111 (transformation!7572 r!4142)) (toValue!10252 (transformation!7572 r!4142))))))

(assert (=> d!1232111 (= (inv!60215 (transformation!7572 r!4142)) e!2589039)))

(declare-fun b!4170396 () Bool)

(assert (=> b!4170396 (= e!2589039 (equivClasses!3185 (toChars!10111 (transformation!7572 r!4142)) (toValue!10252 (transformation!7572 r!4142))))))

(assert (= (and d!1232111 res!1708788) b!4170396))

(declare-fun m!4761111 () Bool)

(assert (=> d!1232111 m!4761111))

(declare-fun m!4761113 () Bool)

(assert (=> b!4170396 m!4761113))

(assert (=> b!4170167 d!1232111))

(declare-fun d!1232113 () Bool)

(declare-fun e!2589042 () Bool)

(assert (=> d!1232113 e!2589042))

(declare-fun res!1708792 () Bool)

(assert (=> d!1232113 (=> res!1708792 e!2589042)))

(declare-fun lt!1485180 () Bool)

(assert (=> d!1232113 (= res!1708792 (not lt!1485180))))

(declare-fun e!2589041 () Bool)

(assert (=> d!1232113 (= lt!1485180 e!2589041)))

(declare-fun res!1708791 () Bool)

(assert (=> d!1232113 (=> res!1708791 e!2589041)))

(assert (=> d!1232113 (= res!1708791 ((_ is Nil!45686) pBis!107))))

(assert (=> d!1232113 (= (isPrefix!4429 pBis!107 input!3342) lt!1485180)))

(declare-fun b!4170400 () Bool)

(assert (=> b!4170400 (= e!2589042 (>= (size!33540 input!3342) (size!33540 pBis!107)))))

(declare-fun b!4170397 () Bool)

(declare-fun e!2589040 () Bool)

(assert (=> b!4170397 (= e!2589041 e!2589040)))

(declare-fun res!1708789 () Bool)

(assert (=> b!4170397 (=> (not res!1708789) (not e!2589040))))

(assert (=> b!4170397 (= res!1708789 (not ((_ is Nil!45686) input!3342)))))

(declare-fun b!4170398 () Bool)

(declare-fun res!1708790 () Bool)

(assert (=> b!4170398 (=> (not res!1708790) (not e!2589040))))

(assert (=> b!4170398 (= res!1708790 (= (head!8854 pBis!107) (head!8854 input!3342)))))

(declare-fun b!4170399 () Bool)

(assert (=> b!4170399 (= e!2589040 (isPrefix!4429 (tail!6701 pBis!107) (tail!6701 input!3342)))))

(assert (= (and d!1232113 (not res!1708791)) b!4170397))

(assert (= (and b!4170397 res!1708789) b!4170398))

(assert (= (and b!4170398 res!1708790) b!4170399))

(assert (= (and d!1232113 (not res!1708792)) b!4170400))

(assert (=> b!4170400 m!4760963))

(declare-fun m!4761115 () Bool)

(assert (=> b!4170400 m!4761115))

(declare-fun m!4761117 () Bool)

(assert (=> b!4170398 m!4761117))

(assert (=> b!4170398 m!4760975))

(declare-fun m!4761119 () Bool)

(assert (=> b!4170399 m!4761119))

(assert (=> b!4170399 m!4760977))

(assert (=> b!4170399 m!4761119))

(assert (=> b!4170399 m!4760977))

(declare-fun m!4761121 () Bool)

(assert (=> b!4170399 m!4761121))

(assert (=> b!4170166 d!1232113))

(declare-fun d!1232115 () Bool)

(declare-fun lt!1485181 () Bool)

(assert (=> d!1232115 (= lt!1485181 (select (content!7102 rules!3843) r!4142))))

(declare-fun e!2589044 () Bool)

(assert (=> d!1232115 (= lt!1485181 e!2589044)))

(declare-fun res!1708794 () Bool)

(assert (=> d!1232115 (=> (not res!1708794) (not e!2589044))))

(assert (=> d!1232115 (= res!1708794 ((_ is Cons!45687) rules!3843))))

(assert (=> d!1232115 (= (contains!9373 rules!3843 r!4142) lt!1485181)))

(declare-fun b!4170401 () Bool)

(declare-fun e!2589043 () Bool)

(assert (=> b!4170401 (= e!2589044 e!2589043)))

(declare-fun res!1708793 () Bool)

(assert (=> b!4170401 (=> res!1708793 e!2589043)))

(assert (=> b!4170401 (= res!1708793 (= (h!51107 rules!3843) r!4142))))

(declare-fun b!4170402 () Bool)

(assert (=> b!4170402 (= e!2589043 (contains!9373 (t!344322 rules!3843) r!4142))))

(assert (= (and d!1232115 res!1708794) b!4170401))

(assert (= (and b!4170401 (not res!1708793)) b!4170402))

(assert (=> d!1232115 m!4761091))

(declare-fun m!4761123 () Bool)

(assert (=> d!1232115 m!4761123))

(declare-fun m!4761125 () Bool)

(assert (=> b!4170402 m!4761125))

(assert (=> b!4170170 d!1232115))

(declare-fun d!1232117 () Bool)

(declare-fun res!1708797 () Bool)

(declare-fun e!2589047 () Bool)

(assert (=> d!1232117 (=> (not res!1708797) (not e!2589047))))

(declare-fun rulesValid!2954 (LexerInterface!7165 List!45811) Bool)

(assert (=> d!1232117 (= res!1708797 (rulesValid!2954 thiss!25986 rules!3843))))

(assert (=> d!1232117 (= (rulesInvariant!6378 thiss!25986 rules!3843) e!2589047)))

(declare-fun b!4170405 () Bool)

(declare-datatypes ((List!45813 0))(
  ( (Nil!45689) (Cons!45689 (h!51109 String!52876) (t!344356 List!45813)) )
))
(declare-fun noDuplicateTag!3115 (LexerInterface!7165 List!45811 List!45813) Bool)

(assert (=> b!4170405 (= e!2589047 (noDuplicateTag!3115 thiss!25986 rules!3843 Nil!45689))))

(assert (= (and d!1232117 res!1708797) b!4170405))

(declare-fun m!4761127 () Bool)

(assert (=> d!1232117 m!4761127))

(declare-fun m!4761129 () Bool)

(assert (=> b!4170405 m!4761129))

(assert (=> b!4170159 d!1232117))

(declare-fun b!4170434 () Bool)

(declare-fun res!1708814 () Bool)

(declare-fun e!2589064 () Bool)

(assert (=> b!4170434 (=> (not res!1708814) (not e!2589064))))

(declare-fun call!291205 () Bool)

(assert (=> b!4170434 (= res!1708814 (not call!291205))))

(declare-fun b!4170435 () Bool)

(declare-fun e!2589062 () Bool)

(declare-fun e!2589066 () Bool)

(assert (=> b!4170435 (= e!2589062 e!2589066)))

(declare-fun res!1708817 () Bool)

(assert (=> b!4170435 (=> res!1708817 e!2589066)))

(assert (=> b!4170435 (= res!1708817 call!291205)))

(declare-fun b!4170436 () Bool)

(assert (=> b!4170436 (= e!2589066 (not (= (head!8854 p!2959) (c!712845 (regex!7572 r!4142)))))))

(declare-fun bm!291200 () Bool)

(declare-fun isEmpty!27033 (List!45810) Bool)

(assert (=> bm!291200 (= call!291205 (isEmpty!27033 p!2959))))

(declare-fun b!4170437 () Bool)

(declare-fun res!1708819 () Bool)

(declare-fun e!2589065 () Bool)

(assert (=> b!4170437 (=> res!1708819 e!2589065)))

(assert (=> b!4170437 (= res!1708819 (not ((_ is ElementMatch!12477) (regex!7572 r!4142))))))

(declare-fun e!2589067 () Bool)

(assert (=> b!4170437 (= e!2589067 e!2589065)))

(declare-fun b!4170438 () Bool)

(declare-fun e!2589063 () Bool)

(declare-fun nullable!4377 (Regex!12477) Bool)

(assert (=> b!4170438 (= e!2589063 (nullable!4377 (regex!7572 r!4142)))))

(declare-fun d!1232119 () Bool)

(declare-fun e!2589068 () Bool)

(assert (=> d!1232119 e!2589068))

(declare-fun c!712877 () Bool)

(assert (=> d!1232119 (= c!712877 ((_ is EmptyExpr!12477) (regex!7572 r!4142)))))

(declare-fun lt!1485184 () Bool)

(assert (=> d!1232119 (= lt!1485184 e!2589063)))

(declare-fun c!712878 () Bool)

(assert (=> d!1232119 (= c!712878 (isEmpty!27033 p!2959))))

(assert (=> d!1232119 (validRegex!5594 (regex!7572 r!4142))))

(assert (=> d!1232119 (= (matchR!6216 (regex!7572 r!4142) p!2959) lt!1485184)))

(declare-fun b!4170439 () Bool)

(assert (=> b!4170439 (= e!2589065 e!2589062)))

(declare-fun res!1708820 () Bool)

(assert (=> b!4170439 (=> (not res!1708820) (not e!2589062))))

(assert (=> b!4170439 (= res!1708820 (not lt!1485184))))

(declare-fun b!4170440 () Bool)

(assert (=> b!4170440 (= e!2589064 (= (head!8854 p!2959) (c!712845 (regex!7572 r!4142))))))

(declare-fun b!4170441 () Bool)

(assert (=> b!4170441 (= e!2589068 e!2589067)))

(declare-fun c!712879 () Bool)

(assert (=> b!4170441 (= c!712879 ((_ is EmptyLang!12477) (regex!7572 r!4142)))))

(declare-fun b!4170442 () Bool)

(assert (=> b!4170442 (= e!2589068 (= lt!1485184 call!291205))))

(declare-fun b!4170443 () Bool)

(declare-fun res!1708818 () Bool)

(assert (=> b!4170443 (=> (not res!1708818) (not e!2589064))))

(assert (=> b!4170443 (= res!1708818 (isEmpty!27033 (tail!6701 p!2959)))))

(declare-fun b!4170444 () Bool)

(declare-fun derivativeStep!3767 (Regex!12477 C!25144) Regex!12477)

(assert (=> b!4170444 (= e!2589063 (matchR!6216 (derivativeStep!3767 (regex!7572 r!4142) (head!8854 p!2959)) (tail!6701 p!2959)))))

(declare-fun b!4170445 () Bool)

(declare-fun res!1708816 () Bool)

(assert (=> b!4170445 (=> res!1708816 e!2589066)))

(assert (=> b!4170445 (= res!1708816 (not (isEmpty!27033 (tail!6701 p!2959))))))

(declare-fun b!4170446 () Bool)

(declare-fun res!1708815 () Bool)

(assert (=> b!4170446 (=> res!1708815 e!2589065)))

(assert (=> b!4170446 (= res!1708815 e!2589064)))

(declare-fun res!1708821 () Bool)

(assert (=> b!4170446 (=> (not res!1708821) (not e!2589064))))

(assert (=> b!4170446 (= res!1708821 lt!1485184)))

(declare-fun b!4170447 () Bool)

(assert (=> b!4170447 (= e!2589067 (not lt!1485184))))

(assert (= (and d!1232119 c!712878) b!4170438))

(assert (= (and d!1232119 (not c!712878)) b!4170444))

(assert (= (and d!1232119 c!712877) b!4170442))

(assert (= (and d!1232119 (not c!712877)) b!4170441))

(assert (= (and b!4170441 c!712879) b!4170447))

(assert (= (and b!4170441 (not c!712879)) b!4170437))

(assert (= (and b!4170437 (not res!1708819)) b!4170446))

(assert (= (and b!4170446 res!1708821) b!4170434))

(assert (= (and b!4170434 res!1708814) b!4170443))

(assert (= (and b!4170443 res!1708818) b!4170440))

(assert (= (and b!4170446 (not res!1708815)) b!4170439))

(assert (= (and b!4170439 res!1708820) b!4170435))

(assert (= (and b!4170435 (not res!1708817)) b!4170445))

(assert (= (and b!4170445 (not res!1708816)) b!4170436))

(assert (= (or b!4170442 b!4170434 b!4170435) bm!291200))

(declare-fun m!4761131 () Bool)

(assert (=> d!1232119 m!4761131))

(assert (=> d!1232119 m!4760929))

(assert (=> b!4170436 m!4761097))

(assert (=> b!4170440 m!4761097))

(declare-fun m!4761133 () Bool)

(assert (=> b!4170438 m!4761133))

(assert (=> b!4170444 m!4761097))

(assert (=> b!4170444 m!4761097))

(declare-fun m!4761135 () Bool)

(assert (=> b!4170444 m!4761135))

(assert (=> b!4170444 m!4761099))

(assert (=> b!4170444 m!4761135))

(assert (=> b!4170444 m!4761099))

(declare-fun m!4761137 () Bool)

(assert (=> b!4170444 m!4761137))

(assert (=> bm!291200 m!4761131))

(assert (=> b!4170443 m!4761099))

(assert (=> b!4170443 m!4761099))

(declare-fun m!4761139 () Bool)

(assert (=> b!4170443 m!4761139))

(assert (=> b!4170445 m!4761099))

(assert (=> b!4170445 m!4761099))

(assert (=> b!4170445 m!4761139))

(assert (=> b!4170169 d!1232119))

(declare-fun b!4170466 () Bool)

(declare-fun e!2589089 () Bool)

(declare-fun e!2589087 () Bool)

(assert (=> b!4170466 (= e!2589089 e!2589087)))

(declare-fun c!712884 () Bool)

(assert (=> b!4170466 (= c!712884 ((_ is Star!12477) (regex!7572 r!4142)))))

(declare-fun b!4170467 () Bool)

(declare-fun e!2589086 () Bool)

(assert (=> b!4170467 (= e!2589087 e!2589086)))

(declare-fun res!1708835 () Bool)

(assert (=> b!4170467 (= res!1708835 (not (nullable!4377 (reg!12806 (regex!7572 r!4142)))))))

(assert (=> b!4170467 (=> (not res!1708835) (not e!2589086))))

(declare-fun bm!291207 () Bool)

(declare-fun call!291214 () Bool)

(declare-fun c!712885 () Bool)

(assert (=> bm!291207 (= call!291214 (validRegex!5594 (ite c!712885 (regTwo!25467 (regex!7572 r!4142)) (regTwo!25466 (regex!7572 r!4142)))))))

(declare-fun b!4170469 () Bool)

(declare-fun e!2589088 () Bool)

(assert (=> b!4170469 (= e!2589087 e!2589088)))

(assert (=> b!4170469 (= c!712885 ((_ is Union!12477) (regex!7572 r!4142)))))

(declare-fun b!4170470 () Bool)

(declare-fun res!1708836 () Bool)

(declare-fun e!2589083 () Bool)

(assert (=> b!4170470 (=> (not res!1708836) (not e!2589083))))

(declare-fun call!291213 () Bool)

(assert (=> b!4170470 (= res!1708836 call!291213)))

(assert (=> b!4170470 (= e!2589088 e!2589083)))

(declare-fun b!4170471 () Bool)

(declare-fun call!291212 () Bool)

(assert (=> b!4170471 (= e!2589086 call!291212)))

(declare-fun b!4170472 () Bool)

(declare-fun e!2589084 () Bool)

(declare-fun e!2589085 () Bool)

(assert (=> b!4170472 (= e!2589084 e!2589085)))

(declare-fun res!1708832 () Bool)

(assert (=> b!4170472 (=> (not res!1708832) (not e!2589085))))

(assert (=> b!4170472 (= res!1708832 call!291213)))

(declare-fun bm!291208 () Bool)

(assert (=> bm!291208 (= call!291213 call!291212)))

(declare-fun bm!291209 () Bool)

(assert (=> bm!291209 (= call!291212 (validRegex!5594 (ite c!712884 (reg!12806 (regex!7572 r!4142)) (ite c!712885 (regOne!25467 (regex!7572 r!4142)) (regOne!25466 (regex!7572 r!4142))))))))

(declare-fun b!4170473 () Bool)

(declare-fun res!1708834 () Bool)

(assert (=> b!4170473 (=> res!1708834 e!2589084)))

(assert (=> b!4170473 (= res!1708834 (not ((_ is Concat!20280) (regex!7572 r!4142))))))

(assert (=> b!4170473 (= e!2589088 e!2589084)))

(declare-fun b!4170474 () Bool)

(assert (=> b!4170474 (= e!2589083 call!291214)))

(declare-fun b!4170468 () Bool)

(assert (=> b!4170468 (= e!2589085 call!291214)))

(declare-fun d!1232121 () Bool)

(declare-fun res!1708833 () Bool)

(assert (=> d!1232121 (=> res!1708833 e!2589089)))

(assert (=> d!1232121 (= res!1708833 ((_ is ElementMatch!12477) (regex!7572 r!4142)))))

(assert (=> d!1232121 (= (validRegex!5594 (regex!7572 r!4142)) e!2589089)))

(assert (= (and d!1232121 (not res!1708833)) b!4170466))

(assert (= (and b!4170466 c!712884) b!4170467))

(assert (= (and b!4170466 (not c!712884)) b!4170469))

(assert (= (and b!4170467 res!1708835) b!4170471))

(assert (= (and b!4170469 c!712885) b!4170470))

(assert (= (and b!4170469 (not c!712885)) b!4170473))

(assert (= (and b!4170470 res!1708836) b!4170474))

(assert (= (and b!4170473 (not res!1708834)) b!4170472))

(assert (= (and b!4170472 res!1708832) b!4170468))

(assert (= (or b!4170474 b!4170468) bm!291207))

(assert (= (or b!4170470 b!4170472) bm!291208))

(assert (= (or b!4170471 bm!291208) bm!291209))

(declare-fun m!4761141 () Bool)

(assert (=> b!4170467 m!4761141))

(declare-fun m!4761143 () Bool)

(assert (=> bm!291207 m!4761143))

(declare-fun m!4761145 () Bool)

(assert (=> bm!291209 m!4761145))

(assert (=> b!4170163 d!1232121))

(declare-fun d!1232123 () Bool)

(declare-fun res!1708841 () Bool)

(declare-fun e!2589092 () Bool)

(assert (=> d!1232123 (=> (not res!1708841) (not e!2589092))))

(assert (=> d!1232123 (= res!1708841 (validRegex!5594 (regex!7572 r!4142)))))

(assert (=> d!1232123 (= (ruleValid!3290 thiss!25986 r!4142) e!2589092)))

(declare-fun b!4170479 () Bool)

(declare-fun res!1708842 () Bool)

(assert (=> b!4170479 (=> (not res!1708842) (not e!2589092))))

(assert (=> b!4170479 (= res!1708842 (not (nullable!4377 (regex!7572 r!4142))))))

(declare-fun b!4170480 () Bool)

(assert (=> b!4170480 (= e!2589092 (not (= (tag!8436 r!4142) (String!52877 ""))))))

(assert (= (and d!1232123 res!1708841) b!4170479))

(assert (= (and b!4170479 res!1708842) b!4170480))

(assert (=> d!1232123 m!4760929))

(assert (=> b!4170479 m!4761133))

(assert (=> b!4170173 d!1232123))

(declare-fun b!4170485 () Bool)

(declare-fun e!2589095 () Bool)

(declare-fun tp!1274049 () Bool)

(assert (=> b!4170485 (= e!2589095 (and tp_is_empty!21917 tp!1274049))))

(assert (=> b!4170160 (= tp!1273997 e!2589095)))

(assert (= (and b!4170160 ((_ is Cons!45686) (t!344321 p!2959))) b!4170485))

(declare-fun b!4170486 () Bool)

(declare-fun e!2589096 () Bool)

(declare-fun tp!1274050 () Bool)

(assert (=> b!4170486 (= e!2589096 (and tp_is_empty!21917 tp!1274050))))

(assert (=> b!4170171 (= tp!1273986 e!2589096)))

(assert (= (and b!4170171 ((_ is Cons!45686) (t!344321 input!3342))) b!4170486))

(declare-fun b!4170500 () Bool)

(declare-fun e!2589099 () Bool)

(declare-fun tp!1274064 () Bool)

(declare-fun tp!1274063 () Bool)

(assert (=> b!4170500 (= e!2589099 (and tp!1274064 tp!1274063))))

(declare-fun b!4170497 () Bool)

(assert (=> b!4170497 (= e!2589099 tp_is_empty!21917)))

(declare-fun b!4170499 () Bool)

(declare-fun tp!1274061 () Bool)

(assert (=> b!4170499 (= e!2589099 tp!1274061)))

(declare-fun b!4170498 () Bool)

(declare-fun tp!1274062 () Bool)

(declare-fun tp!1274065 () Bool)

(assert (=> b!4170498 (= e!2589099 (and tp!1274062 tp!1274065))))

(assert (=> b!4170168 (= tp!1273991 e!2589099)))

(assert (= (and b!4170168 ((_ is ElementMatch!12477) (regex!7572 (h!51107 rules!3843)))) b!4170497))

(assert (= (and b!4170168 ((_ is Concat!20280) (regex!7572 (h!51107 rules!3843)))) b!4170498))

(assert (= (and b!4170168 ((_ is Star!12477) (regex!7572 (h!51107 rules!3843)))) b!4170499))

(assert (= (and b!4170168 ((_ is Union!12477) (regex!7572 (h!51107 rules!3843)))) b!4170500))

(declare-fun b!4170504 () Bool)

(declare-fun e!2589100 () Bool)

(declare-fun tp!1274069 () Bool)

(declare-fun tp!1274068 () Bool)

(assert (=> b!4170504 (= e!2589100 (and tp!1274069 tp!1274068))))

(declare-fun b!4170501 () Bool)

(assert (=> b!4170501 (= e!2589100 tp_is_empty!21917)))

(declare-fun b!4170503 () Bool)

(declare-fun tp!1274066 () Bool)

(assert (=> b!4170503 (= e!2589100 tp!1274066)))

(declare-fun b!4170502 () Bool)

(declare-fun tp!1274067 () Bool)

(declare-fun tp!1274070 () Bool)

(assert (=> b!4170502 (= e!2589100 (and tp!1274067 tp!1274070))))

(assert (=> b!4170178 (= tp!1273987 e!2589100)))

(assert (= (and b!4170178 ((_ is ElementMatch!12477) (regex!7572 rBis!167))) b!4170501))

(assert (= (and b!4170178 ((_ is Concat!20280) (regex!7572 rBis!167))) b!4170502))

(assert (= (and b!4170178 ((_ is Star!12477) (regex!7572 rBis!167))) b!4170503))

(assert (= (and b!4170178 ((_ is Union!12477) (regex!7572 rBis!167))) b!4170504))

(declare-fun b!4170508 () Bool)

(declare-fun e!2589101 () Bool)

(declare-fun tp!1274074 () Bool)

(declare-fun tp!1274073 () Bool)

(assert (=> b!4170508 (= e!2589101 (and tp!1274074 tp!1274073))))

(declare-fun b!4170505 () Bool)

(assert (=> b!4170505 (= e!2589101 tp_is_empty!21917)))

(declare-fun b!4170507 () Bool)

(declare-fun tp!1274071 () Bool)

(assert (=> b!4170507 (= e!2589101 tp!1274071)))

(declare-fun b!4170506 () Bool)

(declare-fun tp!1274072 () Bool)

(declare-fun tp!1274075 () Bool)

(assert (=> b!4170506 (= e!2589101 (and tp!1274072 tp!1274075))))

(assert (=> b!4170167 (= tp!1273996 e!2589101)))

(assert (= (and b!4170167 ((_ is ElementMatch!12477) (regex!7572 r!4142))) b!4170505))

(assert (= (and b!4170167 ((_ is Concat!20280) (regex!7572 r!4142))) b!4170506))

(assert (= (and b!4170167 ((_ is Star!12477) (regex!7572 r!4142))) b!4170507))

(assert (= (and b!4170167 ((_ is Union!12477) (regex!7572 r!4142))) b!4170508))

(declare-fun b!4170509 () Bool)

(declare-fun e!2589102 () Bool)

(declare-fun tp!1274076 () Bool)

(assert (=> b!4170509 (= e!2589102 (and tp_is_empty!21917 tp!1274076))))

(assert (=> b!4170161 (= tp!1273995 e!2589102)))

(assert (= (and b!4170161 ((_ is Cons!45686) (t!344321 pBis!107))) b!4170509))

(declare-fun b!4170520 () Bool)

(declare-fun b_free!120639 () Bool)

(declare-fun b_next!121343 () Bool)

(assert (=> b!4170520 (= b_free!120639 (not b_next!121343))))

(declare-fun t!344352 () Bool)

(declare-fun tb!249759 () Bool)

(assert (=> (and b!4170520 (= (toValue!10252 (transformation!7572 (h!51107 (t!344322 rules!3843)))) (toValue!10252 (transformation!7572 r!4142))) t!344352) tb!249759))

(declare-fun result!304268 () Bool)

(assert (= result!304268 result!304254))

(assert (=> d!1232057 t!344352))

(declare-fun tp!1274086 () Bool)

(declare-fun b_and!325605 () Bool)

(assert (=> b!4170520 (= tp!1274086 (and (=> t!344352 result!304268) b_and!325605))))

(declare-fun b_free!120641 () Bool)

(declare-fun b_next!121345 () Bool)

(assert (=> b!4170520 (= b_free!120641 (not b_next!121345))))

(declare-fun t!344354 () Bool)

(declare-fun tb!249761 () Bool)

(assert (=> (and b!4170520 (= (toChars!10111 (transformation!7572 (h!51107 (t!344322 rules!3843)))) (toChars!10111 (transformation!7572 r!4142))) t!344354) tb!249761))

(declare-fun result!304270 () Bool)

(assert (= result!304270 result!304246))

(assert (=> d!1232057 t!344354))

(declare-fun tp!1274085 () Bool)

(declare-fun b_and!325607 () Bool)

(assert (=> b!4170520 (= tp!1274085 (and (=> t!344354 result!304270) b_and!325607))))

(declare-fun e!2589113 () Bool)

(assert (=> b!4170520 (= e!2589113 (and tp!1274086 tp!1274085))))

(declare-fun b!4170519 () Bool)

(declare-fun tp!1274088 () Bool)

(declare-fun e!2589112 () Bool)

(assert (=> b!4170519 (= e!2589112 (and tp!1274088 (inv!60213 (tag!8436 (h!51107 (t!344322 rules!3843)))) (inv!60215 (transformation!7572 (h!51107 (t!344322 rules!3843)))) e!2589113))))

(declare-fun b!4170518 () Bool)

(declare-fun e!2589114 () Bool)

(declare-fun tp!1274087 () Bool)

(assert (=> b!4170518 (= e!2589114 (and e!2589112 tp!1274087))))

(assert (=> b!4170177 (= tp!1273992 e!2589114)))

(assert (= b!4170519 b!4170520))

(assert (= b!4170518 b!4170519))

(assert (= (and b!4170177 ((_ is Cons!45687) (t!344322 rules!3843))) b!4170518))

(declare-fun m!4761147 () Bool)

(assert (=> b!4170519 m!4761147))

(declare-fun m!4761149 () Bool)

(assert (=> b!4170519 m!4761149))

(declare-fun b_lambda!122499 () Bool)

(assert (= b_lambda!122497 (or (and b!4170162 b_free!120623 (= (toValue!10252 (transformation!7572 rBis!167)) (toValue!10252 (transformation!7572 r!4142)))) (and b!4170165 b_free!120627 (= (toValue!10252 (transformation!7572 (h!51107 rules!3843))) (toValue!10252 (transformation!7572 r!4142)))) (and b!4170172 b_free!120631) (and b!4170520 b_free!120639 (= (toValue!10252 (transformation!7572 (h!51107 (t!344322 rules!3843)))) (toValue!10252 (transformation!7572 r!4142)))) b_lambda!122499)))

(declare-fun b_lambda!122501 () Bool)

(assert (= b_lambda!122495 (or (and b!4170162 b_free!120625 (= (toChars!10111 (transformation!7572 rBis!167)) (toChars!10111 (transformation!7572 r!4142)))) (and b!4170165 b_free!120629 (= (toChars!10111 (transformation!7572 (h!51107 rules!3843))) (toChars!10111 (transformation!7572 r!4142)))) (and b!4170172 b_free!120633) (and b!4170520 b_free!120641 (= (toChars!10111 (transformation!7572 (h!51107 (t!344322 rules!3843)))) (toChars!10111 (transformation!7572 r!4142)))) b_lambda!122501)))

(check-sat (not b!4170391) (not b!4170390) b_and!325601 (not b!4170486) (not d!1232123) (not b!4170381) (not b_lambda!122499) (not b_next!121327) tp_is_empty!21917 (not b!4170502) (not b!4170443) b_and!325595 (not b!4170518) (not b_next!121329) (not b!4170509) (not bm!291209) (not b!4170445) (not b!4170436) (not b!4170507) (not d!1232115) (not b!4170389) (not b_next!121343) (not tb!249747) (not b!4170398) (not b!4170467) (not b!4170396) (not b_lambda!122501) (not b!4170506) (not b!4170479) (not b!4170500) (not b!4170485) (not d!1232111) (not b!4170519) (not b!4170191) (not b!4170498) (not b_next!121333) b_and!325599 (not b_next!121337) (not b!4170438) (not tb!249753) (not b!4170508) (not d!1232095) b_and!325605 (not b!4170395) b_and!325607 (not b_next!121331) (not d!1232055) (not b!4170387) (not bm!291200) (not b!4170503) (not b!4170379) (not b!4170440) b_and!325597 (not b!4170399) (not d!1232051) (not b!4170402) (not d!1232057) (not b!4170400) (not b!4170192) (not d!1232117) b_and!325603 (not b!4170499) (not d!1232107) (not b!4170405) (not b_next!121345) (not d!1232103) (not bm!291207) (not b!4170504) (not b!4170371) (not b_next!121335) (not d!1232119) (not b!4170193) (not b!4170444) (not b!4170394) b_and!325593)
(check-sat b_and!325595 (not b_next!121329) b_and!325601 (not b_next!121343) (not b_next!121333) b_and!325597 b_and!325603 (not b_next!121327) b_and!325593 b_and!325599 (not b_next!121337) b_and!325605 b_and!325607 (not b_next!121331) (not b_next!121345) (not b_next!121335))
