; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14510 () Bool)

(assert start!14510)

(declare-fun b!137960 () Bool)

(declare-fun b_free!4103 () Bool)

(declare-fun b_next!4103 () Bool)

(assert (=> b!137960 (= b_free!4103 (not b_next!4103))))

(declare-fun tp!72223 () Bool)

(declare-fun b_and!6255 () Bool)

(assert (=> b!137960 (= tp!72223 b_and!6255)))

(declare-fun b_free!4105 () Bool)

(declare-fun b_next!4105 () Bool)

(assert (=> b!137960 (= b_free!4105 (not b_next!4105))))

(declare-fun tp!72224 () Bool)

(declare-fun b_and!6257 () Bool)

(assert (=> b!137960 (= tp!72224 b_and!6257)))

(declare-fun b!137958 () Bool)

(declare-fun b_free!4107 () Bool)

(declare-fun b_next!4107 () Bool)

(assert (=> b!137958 (= b_free!4107 (not b_next!4107))))

(declare-fun tp!72222 () Bool)

(declare-fun b_and!6259 () Bool)

(assert (=> b!137958 (= tp!72222 b_and!6259)))

(declare-fun b_free!4109 () Bool)

(declare-fun b_next!4109 () Bool)

(assert (=> b!137958 (= b_free!4109 (not b_next!4109))))

(declare-fun tp!72216 () Bool)

(declare-fun b_and!6261 () Bool)

(assert (=> b!137958 (= tp!72216 b_and!6261)))

(declare-fun b_free!4111 () Bool)

(declare-fun b_next!4111 () Bool)

(assert (=> start!14510 (= b_free!4111 (not b_next!4111))))

(declare-fun tp!72218 () Bool)

(declare-fun b_and!6263 () Bool)

(assert (=> start!14510 (= tp!72218 b_and!6263)))

(declare-fun b!137954 () Bool)

(declare-fun b_free!4113 () Bool)

(declare-fun b_next!4113 () Bool)

(assert (=> b!137954 (= b_free!4113 (not b_next!4113))))

(declare-fun tp!72228 () Bool)

(declare-fun b_and!6265 () Bool)

(assert (=> b!137954 (= tp!72228 b_and!6265)))

(declare-fun b_free!4115 () Bool)

(declare-fun b_next!4115 () Bool)

(assert (=> b!137954 (= b_free!4115 (not b_next!4115))))

(declare-fun tp!72226 () Bool)

(declare-fun b_and!6267 () Bool)

(assert (=> b!137954 (= tp!72226 b_and!6267)))

(declare-datatypes ((List!2313 0))(
  ( (Nil!2303) (Cons!2303 (h!7700 (_ BitVec 16)) (t!22899 List!2313)) )
))
(declare-datatypes ((TokenValue!401 0))(
  ( (FloatLiteralValue!802 (text!3252 List!2313)) (TokenValueExt!400 (__x!2291 Int)) (Broken!2005 (value!15091 List!2313)) (Object!410) (End!401) (Def!401) (Underscore!401) (Match!401) (Else!401) (Error!401) (Case!401) (If!401) (Extends!401) (Abstract!401) (Class!401) (Val!401) (DelimiterValue!802 (del!461 List!2313)) (KeywordValue!407 (value!15092 List!2313)) (CommentValue!802 (value!15093 List!2313)) (WhitespaceValue!802 (value!15094 List!2313)) (IndentationValue!401 (value!15095 List!2313)) (String!3084) (Int32!401) (Broken!2006 (value!15096 List!2313)) (Boolean!402) (Unit!1781) (OperatorValue!404 (op!461 List!2313)) (IdentifierValue!802 (value!15097 List!2313)) (IdentifierValue!803 (value!15098 List!2313)) (WhitespaceValue!803 (value!15099 List!2313)) (True!802) (False!802) (Broken!2007 (value!15100 List!2313)) (Broken!2008 (value!15101 List!2313)) (True!803) (RightBrace!401) (RightBracket!401) (Colon!401) (Null!401) (Comma!401) (LeftBracket!401) (False!803) (LeftBrace!401) (ImaginaryLiteralValue!401 (text!3253 List!2313)) (StringLiteralValue!1203 (value!15102 List!2313)) (EOFValue!401 (value!15103 List!2313)) (IdentValue!401 (value!15104 List!2313)) (DelimiterValue!803 (value!15105 List!2313)) (DedentValue!401 (value!15106 List!2313)) (NewLineValue!401 (value!15107 List!2313)) (IntegerValue!1203 (value!15108 (_ BitVec 32)) (text!3254 List!2313)) (IntegerValue!1204 (value!15109 Int) (text!3255 List!2313)) (Times!401) (Or!401) (Equal!401) (Minus!401) (Broken!2009 (value!15110 List!2313)) (And!401) (Div!401) (LessEqual!401) (Mod!401) (Concat!1004) (Not!401) (Plus!401) (SpaceValue!401 (value!15111 List!2313)) (IntegerValue!1205 (value!15112 Int) (text!3256 List!2313)) (StringLiteralValue!1204 (text!3257 List!2313)) (FloatLiteralValue!803 (text!3258 List!2313)) (BytesLiteralValue!401 (value!15113 List!2313)) (CommentValue!803 (value!15114 List!2313)) (StringLiteralValue!1205 (value!15115 List!2313)) (ErrorTokenValue!401 (msg!462 List!2313)) )
))
(declare-datatypes ((C!2128 0))(
  ( (C!2129 (val!950 Int)) )
))
(declare-datatypes ((List!2314 0))(
  ( (Nil!2304) (Cons!2304 (h!7701 C!2128) (t!22900 List!2314)) )
))
(declare-datatypes ((IArray!1219 0))(
  ( (IArray!1220 (innerList!667 List!2314)) )
))
(declare-datatypes ((Conc!609 0))(
  ( (Node!609 (left!1785 Conc!609) (right!2115 Conc!609) (csize!1448 Int) (cheight!820 Int)) (Leaf!1138 (xs!3204 IArray!1219) (csize!1449 Int)) (Empty!609) )
))
(declare-datatypes ((BalanceConc!1226 0))(
  ( (BalanceConc!1227 (c!29070 Conc!609)) )
))
(declare-datatypes ((TokenValueInjection!574 0))(
  ( (TokenValueInjection!575 (toValue!990 Int) (toChars!849 Int)) )
))
(declare-datatypes ((Regex!603 0))(
  ( (ElementMatch!603 (c!29071 C!2128)) (Concat!1005 (regOne!1718 Regex!603) (regTwo!1718 Regex!603)) (EmptyExpr!603) (Star!603 (reg!932 Regex!603)) (EmptyLang!603) (Union!603 (regOne!1719 Regex!603) (regTwo!1719 Regex!603)) )
))
(declare-datatypes ((String!3085 0))(
  ( (String!3086 (value!15116 String)) )
))
(declare-datatypes ((Rule!558 0))(
  ( (Rule!559 (regex!379 Regex!603) (tag!557 String!3085) (isSeparator!379 Bool) (transformation!379 TokenValueInjection!574)) )
))
(declare-datatypes ((List!2315 0))(
  ( (Nil!2305) (Cons!2305 (h!7702 Rule!558) (t!22901 List!2315)) )
))
(declare-fun rules!4268 () List!2315)

(declare-fun e!80637 () Bool)

(declare-fun e!80638 () Bool)

(declare-fun b!137945 () Bool)

(declare-fun tp!72215 () Bool)

(declare-fun inv!3046 (String!3085) Bool)

(declare-fun inv!3049 (TokenValueInjection!574) Bool)

(assert (=> b!137945 (= e!80638 (and tp!72215 (inv!3046 (tag!557 (h!7702 rules!4268))) (inv!3049 (transformation!379 (h!7702 rules!4268))) e!80637))))

(declare-fun b!137946 () Bool)

(declare-fun res!64429 () Bool)

(declare-fun e!80635 () Bool)

(assert (=> b!137946 (=> (not res!64429) (not e!80635))))

(declare-datatypes ((LexerInterface!267 0))(
  ( (LexerInterfaceExt!264 (__x!2292 Int)) (Lexer!265) )
))
(declare-fun thiss!27322 () LexerInterface!267)

(declare-fun p!3028 () Int)

(declare-datatypes ((Token!502 0))(
  ( (Token!503 (value!15117 TokenValue!401) (rule!886 Rule!558) (size!2063 Int) (originalCharacters!422 List!2314)) )
))
(declare-datatypes ((List!2316 0))(
  ( (Nil!2306) (Cons!2306 (h!7703 Token!502) (t!22902 List!2316)) )
))
(declare-fun l2!3099 () List!2316)

(declare-fun tokensListTwoByTwoPredicateList!6 (LexerInterface!267 List!2316 List!2315 Int) Bool)

(assert (=> b!137946 (= res!64429 (tokensListTwoByTwoPredicateList!6 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun b!137947 () Bool)

(declare-fun e!80639 () Bool)

(declare-fun tp!72221 () Bool)

(assert (=> b!137947 (= e!80639 (and e!80638 tp!72221))))

(declare-fun e!80644 () Bool)

(declare-fun tp!72219 () Bool)

(declare-fun b!137948 () Bool)

(declare-fun e!80629 () Bool)

(declare-fun inv!21 (TokenValue!401) Bool)

(assert (=> b!137948 (= e!80644 (and (inv!21 (value!15117 (h!7703 l2!3099))) e!80629 tp!72219))))

(declare-fun b!137949 () Bool)

(declare-fun l1!3130 () List!2316)

(declare-fun e!80645 () Bool)

(declare-fun e!80636 () Bool)

(declare-fun tp!72220 () Bool)

(assert (=> b!137949 (= e!80645 (and tp!72220 (inv!3046 (tag!557 (rule!886 (h!7703 l1!3130)))) (inv!3049 (transformation!379 (rule!886 (h!7703 l1!3130)))) e!80636))))

(declare-fun e!80632 () Bool)

(declare-fun tp!72225 () Bool)

(declare-fun b!137950 () Bool)

(declare-fun inv!3050 (Token!502) Bool)

(assert (=> b!137950 (= e!80632 (and (inv!3050 (h!7703 l2!3099)) e!80644 tp!72225))))

(declare-fun res!64430 () Bool)

(assert (=> start!14510 (=> (not res!64430) (not e!80635))))

(get-info :version)

(assert (=> start!14510 (= res!64430 ((_ is Lexer!265) thiss!27322))))

(assert (=> start!14510 e!80635))

(assert (=> start!14510 true))

(assert (=> start!14510 e!80639))

(assert (=> start!14510 tp!72218))

(declare-fun e!80634 () Bool)

(assert (=> start!14510 e!80634))

(assert (=> start!14510 e!80632))

(declare-fun b!137951 () Bool)

(assert (=> b!137951 (= e!80635 (= l2!3099 Nil!2306))))

(declare-fun b!137952 () Bool)

(declare-fun res!64431 () Bool)

(assert (=> b!137952 (=> (not res!64431) (not e!80635))))

(declare-fun isEmpty!884 (List!2316) Bool)

(assert (=> b!137952 (= res!64431 (not (isEmpty!884 l1!3130)))))

(declare-fun b!137953 () Bool)

(declare-fun tp!72217 () Bool)

(declare-fun e!80630 () Bool)

(assert (=> b!137953 (= e!80630 (and (inv!21 (value!15117 (h!7703 l1!3130))) e!80645 tp!72217))))

(assert (=> b!137954 (= e!80636 (and tp!72228 tp!72226))))

(declare-fun b!137955 () Bool)

(declare-fun res!64433 () Bool)

(assert (=> b!137955 (=> (not res!64433) (not e!80635))))

(assert (=> b!137955 (= res!64433 (not (isEmpty!884 l2!3099)))))

(declare-fun b!137956 () Bool)

(declare-fun e!80633 () Bool)

(declare-fun tp!72229 () Bool)

(assert (=> b!137956 (= e!80629 (and tp!72229 (inv!3046 (tag!557 (rule!886 (h!7703 l2!3099)))) (inv!3049 (transformation!379 (rule!886 (h!7703 l2!3099)))) e!80633))))

(declare-fun b!137957 () Bool)

(declare-fun tp!72227 () Bool)

(assert (=> b!137957 (= e!80634 (and (inv!3050 (h!7703 l1!3130)) e!80630 tp!72227))))

(assert (=> b!137958 (= e!80637 (and tp!72222 tp!72216))))

(declare-fun b!137959 () Bool)

(declare-fun res!64432 () Bool)

(assert (=> b!137959 (=> (not res!64432) (not e!80635))))

(assert (=> b!137959 (= res!64432 (tokensListTwoByTwoPredicateList!6 thiss!27322 l1!3130 rules!4268 p!3028))))

(assert (=> b!137960 (= e!80633 (and tp!72223 tp!72224))))

(assert (= (and start!14510 res!64430) b!137959))

(assert (= (and b!137959 res!64432) b!137946))

(assert (= (and b!137946 res!64429) b!137952))

(assert (= (and b!137952 res!64431) b!137955))

(assert (= (and b!137955 res!64433) b!137951))

(assert (= b!137945 b!137958))

(assert (= b!137947 b!137945))

(assert (= (and start!14510 ((_ is Cons!2305) rules!4268)) b!137947))

(assert (= b!137949 b!137954))

(assert (= b!137953 b!137949))

(assert (= b!137957 b!137953))

(assert (= (and start!14510 ((_ is Cons!2306) l1!3130)) b!137957))

(assert (= b!137956 b!137960))

(assert (= b!137948 b!137956))

(assert (= b!137950 b!137948))

(assert (= (and start!14510 ((_ is Cons!2306) l2!3099)) b!137950))

(declare-fun m!121915 () Bool)

(assert (=> b!137945 m!121915))

(declare-fun m!121917 () Bool)

(assert (=> b!137945 m!121917))

(declare-fun m!121919 () Bool)

(assert (=> b!137946 m!121919))

(declare-fun m!121921 () Bool)

(assert (=> b!137952 m!121921))

(declare-fun m!121923 () Bool)

(assert (=> b!137948 m!121923))

(declare-fun m!121925 () Bool)

(assert (=> b!137956 m!121925))

(declare-fun m!121927 () Bool)

(assert (=> b!137956 m!121927))

(declare-fun m!121929 () Bool)

(assert (=> b!137953 m!121929))

(declare-fun m!121931 () Bool)

(assert (=> b!137959 m!121931))

(declare-fun m!121933 () Bool)

(assert (=> b!137955 m!121933))

(declare-fun m!121935 () Bool)

(assert (=> b!137957 m!121935))

(declare-fun m!121937 () Bool)

(assert (=> b!137949 m!121937))

(declare-fun m!121939 () Bool)

(assert (=> b!137949 m!121939))

(declare-fun m!121941 () Bool)

(assert (=> b!137950 m!121941))

(check-sat (not b!137947) (not b_next!4115) (not b!137950) (not b!137953) (not b_next!4111) b_and!6263 (not b!137952) (not b_next!4107) (not b_next!4109) (not b!137949) (not b!137948) (not b!137959) (not b!137956) (not b!137945) b_and!6265 (not b_next!4113) b_and!6267 (not b_next!4103) (not b!137955) (not b!137946) b_and!6259 (not b_next!4105) b_and!6257 b_and!6255 b_and!6261 (not b!137957))
(check-sat (not b_next!4115) (not b_next!4111) b_and!6263 b_and!6261 (not b_next!4107) (not b_next!4109) b_and!6265 (not b_next!4113) b_and!6267 (not b_next!4103) b_and!6259 (not b_next!4105) b_and!6257 b_and!6255)
(get-model)

(declare-fun d!32945 () Bool)

(declare-fun res!64438 () Bool)

(declare-fun e!80648 () Bool)

(assert (=> d!32945 (=> (not res!64438) (not e!80648))))

(declare-fun isEmpty!885 (List!2314) Bool)

(assert (=> d!32945 (= res!64438 (not (isEmpty!885 (originalCharacters!422 (h!7703 l2!3099)))))))

(assert (=> d!32945 (= (inv!3050 (h!7703 l2!3099)) e!80648)))

(declare-fun b!137965 () Bool)

(declare-fun res!64439 () Bool)

(assert (=> b!137965 (=> (not res!64439) (not e!80648))))

(declare-fun list!826 (BalanceConc!1226) List!2314)

(declare-fun dynLambda!764 (Int TokenValue!401) BalanceConc!1226)

(assert (=> b!137965 (= res!64439 (= (originalCharacters!422 (h!7703 l2!3099)) (list!826 (dynLambda!764 (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))) (value!15117 (h!7703 l2!3099))))))))

(declare-fun b!137966 () Bool)

(declare-fun size!2064 (List!2314) Int)

(assert (=> b!137966 (= e!80648 (= (size!2063 (h!7703 l2!3099)) (size!2064 (originalCharacters!422 (h!7703 l2!3099)))))))

(assert (= (and d!32945 res!64438) b!137965))

(assert (= (and b!137965 res!64439) b!137966))

(declare-fun b_lambda!1747 () Bool)

(assert (=> (not b_lambda!1747) (not b!137965)))

(declare-fun t!22904 () Bool)

(declare-fun tb!3669 () Bool)

(assert (=> (and b!137960 (= (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099))))) t!22904) tb!3669))

(declare-fun b!137971 () Bool)

(declare-fun e!80651 () Bool)

(declare-fun tp!72232 () Bool)

(declare-fun inv!3051 (Conc!609) Bool)

(assert (=> b!137971 (= e!80651 (and (inv!3051 (c!29070 (dynLambda!764 (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))) (value!15117 (h!7703 l2!3099))))) tp!72232))))

(declare-fun result!5760 () Bool)

(declare-fun inv!3052 (BalanceConc!1226) Bool)

(assert (=> tb!3669 (= result!5760 (and (inv!3052 (dynLambda!764 (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))) (value!15117 (h!7703 l2!3099)))) e!80651))))

(assert (= tb!3669 b!137971))

(declare-fun m!121943 () Bool)

(assert (=> b!137971 m!121943))

(declare-fun m!121945 () Bool)

(assert (=> tb!3669 m!121945))

(assert (=> b!137965 t!22904))

(declare-fun b_and!6269 () Bool)

(assert (= b_and!6257 (and (=> t!22904 result!5760) b_and!6269)))

(declare-fun t!22906 () Bool)

(declare-fun tb!3671 () Bool)

(assert (=> (and b!137958 (= (toChars!849 (transformation!379 (h!7702 rules!4268))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099))))) t!22906) tb!3671))

(declare-fun result!5764 () Bool)

(assert (= result!5764 result!5760))

(assert (=> b!137965 t!22906))

(declare-fun b_and!6271 () Bool)

(assert (= b_and!6261 (and (=> t!22906 result!5764) b_and!6271)))

(declare-fun t!22908 () Bool)

(declare-fun tb!3673 () Bool)

(assert (=> (and b!137954 (= (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099))))) t!22908) tb!3673))

(declare-fun result!5766 () Bool)

(assert (= result!5766 result!5760))

(assert (=> b!137965 t!22908))

(declare-fun b_and!6273 () Bool)

(assert (= b_and!6267 (and (=> t!22908 result!5766) b_and!6273)))

(declare-fun m!121947 () Bool)

(assert (=> d!32945 m!121947))

(declare-fun m!121949 () Bool)

(assert (=> b!137965 m!121949))

(assert (=> b!137965 m!121949))

(declare-fun m!121951 () Bool)

(assert (=> b!137965 m!121951))

(declare-fun m!121953 () Bool)

(assert (=> b!137966 m!121953))

(assert (=> b!137950 d!32945))

(declare-fun b!137982 () Bool)

(declare-fun e!80659 () Bool)

(declare-fun inv!17 (TokenValue!401) Bool)

(assert (=> b!137982 (= e!80659 (inv!17 (value!15117 (h!7703 l1!3130))))))

(declare-fun b!137983 () Bool)

(declare-fun res!64442 () Bool)

(declare-fun e!80660 () Bool)

(assert (=> b!137983 (=> res!64442 e!80660)))

(assert (=> b!137983 (= res!64442 (not ((_ is IntegerValue!1205) (value!15117 (h!7703 l1!3130)))))))

(assert (=> b!137983 (= e!80659 e!80660)))

(declare-fun d!32947 () Bool)

(declare-fun c!29077 () Bool)

(assert (=> d!32947 (= c!29077 ((_ is IntegerValue!1203) (value!15117 (h!7703 l1!3130))))))

(declare-fun e!80658 () Bool)

(assert (=> d!32947 (= (inv!21 (value!15117 (h!7703 l1!3130))) e!80658)))

(declare-fun b!137984 () Bool)

(assert (=> b!137984 (= e!80658 e!80659)))

(declare-fun c!29076 () Bool)

(assert (=> b!137984 (= c!29076 ((_ is IntegerValue!1204) (value!15117 (h!7703 l1!3130))))))

(declare-fun b!137985 () Bool)

(declare-fun inv!16 (TokenValue!401) Bool)

(assert (=> b!137985 (= e!80658 (inv!16 (value!15117 (h!7703 l1!3130))))))

(declare-fun b!137986 () Bool)

(declare-fun inv!15 (TokenValue!401) Bool)

(assert (=> b!137986 (= e!80660 (inv!15 (value!15117 (h!7703 l1!3130))))))

(assert (= (and d!32947 c!29077) b!137985))

(assert (= (and d!32947 (not c!29077)) b!137984))

(assert (= (and b!137984 c!29076) b!137982))

(assert (= (and b!137984 (not c!29076)) b!137983))

(assert (= (and b!137983 (not res!64442)) b!137986))

(declare-fun m!121955 () Bool)

(assert (=> b!137982 m!121955))

(declare-fun m!121957 () Bool)

(assert (=> b!137985 m!121957))

(declare-fun m!121959 () Bool)

(assert (=> b!137986 m!121959))

(assert (=> b!137953 d!32947))

(declare-fun d!32953 () Bool)

(assert (=> d!32953 (= (isEmpty!884 l1!3130) ((_ is Nil!2306) l1!3130))))

(assert (=> b!137952 d!32953))

(declare-fun d!32955 () Bool)

(declare-fun res!64450 () Bool)

(declare-fun e!80668 () Bool)

(assert (=> d!32955 (=> res!64450 e!80668)))

(assert (=> d!32955 (= res!64450 (or (not ((_ is Cons!2306) l2!3099)) (not ((_ is Cons!2306) (t!22902 l2!3099)))))))

(assert (=> d!32955 (= (tokensListTwoByTwoPredicateList!6 thiss!27322 l2!3099 rules!4268 p!3028) e!80668)))

(declare-fun b!137994 () Bool)

(declare-fun e!80669 () Bool)

(assert (=> b!137994 (= e!80668 e!80669)))

(declare-fun res!64451 () Bool)

(assert (=> b!137994 (=> (not res!64451) (not e!80669))))

(declare-fun dynLambda!765 (Int Token!502 Token!502 List!2315) Bool)

(assert (=> b!137994 (= res!64451 (dynLambda!765 p!3028 (h!7703 l2!3099) (h!7703 (t!22902 l2!3099)) rules!4268))))

(declare-fun b!137995 () Bool)

(assert (=> b!137995 (= e!80669 (tokensListTwoByTwoPredicateList!6 thiss!27322 (Cons!2306 (h!7703 (t!22902 l2!3099)) (t!22902 (t!22902 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!32955 (not res!64450)) b!137994))

(assert (= (and b!137994 res!64451) b!137995))

(declare-fun b_lambda!1749 () Bool)

(assert (=> (not b_lambda!1749) (not b!137994)))

(declare-fun t!22910 () Bool)

(declare-fun tb!3675 () Bool)

(assert (=> (and start!14510 (= p!3028 p!3028) t!22910) tb!3675))

(declare-fun result!5768 () Bool)

(assert (=> tb!3675 (= result!5768 true)))

(assert (=> b!137994 t!22910))

(declare-fun b_and!6275 () Bool)

(assert (= b_and!6263 (and (=> t!22910 result!5768) b_and!6275)))

(declare-fun m!121965 () Bool)

(assert (=> b!137994 m!121965))

(declare-fun m!121967 () Bool)

(assert (=> b!137995 m!121967))

(assert (=> b!137946 d!32955))

(declare-fun d!32959 () Bool)

(declare-fun res!64456 () Bool)

(declare-fun e!80674 () Bool)

(assert (=> d!32959 (=> (not res!64456) (not e!80674))))

(assert (=> d!32959 (= res!64456 (not (isEmpty!885 (originalCharacters!422 (h!7703 l1!3130)))))))

(assert (=> d!32959 (= (inv!3050 (h!7703 l1!3130)) e!80674)))

(declare-fun b!138000 () Bool)

(declare-fun res!64457 () Bool)

(assert (=> b!138000 (=> (not res!64457) (not e!80674))))

(assert (=> b!138000 (= res!64457 (= (originalCharacters!422 (h!7703 l1!3130)) (list!826 (dynLambda!764 (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))) (value!15117 (h!7703 l1!3130))))))))

(declare-fun b!138001 () Bool)

(assert (=> b!138001 (= e!80674 (= (size!2063 (h!7703 l1!3130)) (size!2064 (originalCharacters!422 (h!7703 l1!3130)))))))

(assert (= (and d!32959 res!64456) b!138000))

(assert (= (and b!138000 res!64457) b!138001))

(declare-fun b_lambda!1751 () Bool)

(assert (=> (not b_lambda!1751) (not b!138000)))

(declare-fun tb!3677 () Bool)

(declare-fun t!22912 () Bool)

(assert (=> (and b!137960 (= (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130))))) t!22912) tb!3677))

(declare-fun b!138002 () Bool)

(declare-fun e!80675 () Bool)

(declare-fun tp!72233 () Bool)

(assert (=> b!138002 (= e!80675 (and (inv!3051 (c!29070 (dynLambda!764 (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))) (value!15117 (h!7703 l1!3130))))) tp!72233))))

(declare-fun result!5770 () Bool)

(assert (=> tb!3677 (= result!5770 (and (inv!3052 (dynLambda!764 (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))) (value!15117 (h!7703 l1!3130)))) e!80675))))

(assert (= tb!3677 b!138002))

(declare-fun m!121969 () Bool)

(assert (=> b!138002 m!121969))

(declare-fun m!121971 () Bool)

(assert (=> tb!3677 m!121971))

(assert (=> b!138000 t!22912))

(declare-fun b_and!6277 () Bool)

(assert (= b_and!6269 (and (=> t!22912 result!5770) b_and!6277)))

(declare-fun t!22914 () Bool)

(declare-fun tb!3679 () Bool)

(assert (=> (and b!137958 (= (toChars!849 (transformation!379 (h!7702 rules!4268))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130))))) t!22914) tb!3679))

(declare-fun result!5772 () Bool)

(assert (= result!5772 result!5770))

(assert (=> b!138000 t!22914))

(declare-fun b_and!6279 () Bool)

(assert (= b_and!6271 (and (=> t!22914 result!5772) b_and!6279)))

(declare-fun t!22916 () Bool)

(declare-fun tb!3681 () Bool)

(assert (=> (and b!137954 (= (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130))))) t!22916) tb!3681))

(declare-fun result!5774 () Bool)

(assert (= result!5774 result!5770))

(assert (=> b!138000 t!22916))

(declare-fun b_and!6281 () Bool)

(assert (= b_and!6273 (and (=> t!22916 result!5774) b_and!6281)))

(declare-fun m!121973 () Bool)

(assert (=> d!32959 m!121973))

(declare-fun m!121975 () Bool)

(assert (=> b!138000 m!121975))

(assert (=> b!138000 m!121975))

(declare-fun m!121977 () Bool)

(assert (=> b!138000 m!121977))

(declare-fun m!121979 () Bool)

(assert (=> b!138001 m!121979))

(assert (=> b!137957 d!32959))

(declare-fun d!32961 () Bool)

(assert (=> d!32961 (= (inv!3046 (tag!557 (rule!886 (h!7703 l2!3099)))) (= (mod (str.len (value!15116 (tag!557 (rule!886 (h!7703 l2!3099))))) 2) 0))))

(assert (=> b!137956 d!32961))

(declare-fun d!32963 () Bool)

(declare-fun res!64465 () Bool)

(declare-fun e!80683 () Bool)

(assert (=> d!32963 (=> (not res!64465) (not e!80683))))

(declare-fun semiInverseModEq!125 (Int Int) Bool)

(assert (=> d!32963 (= res!64465 (semiInverseModEq!125 (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))) (toValue!990 (transformation!379 (rule!886 (h!7703 l2!3099))))))))

(assert (=> d!32963 (= (inv!3049 (transformation!379 (rule!886 (h!7703 l2!3099)))) e!80683)))

(declare-fun b!138010 () Bool)

(declare-fun equivClasses!108 (Int Int) Bool)

(assert (=> b!138010 (= e!80683 (equivClasses!108 (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))) (toValue!990 (transformation!379 (rule!886 (h!7703 l2!3099))))))))

(assert (= (and d!32963 res!64465) b!138010))

(declare-fun m!121993 () Bool)

(assert (=> d!32963 m!121993))

(declare-fun m!121995 () Bool)

(assert (=> b!138010 m!121995))

(assert (=> b!137956 d!32963))

(declare-fun d!32975 () Bool)

(assert (=> d!32975 (= (inv!3046 (tag!557 (h!7702 rules!4268))) (= (mod (str.len (value!15116 (tag!557 (h!7702 rules!4268)))) 2) 0))))

(assert (=> b!137945 d!32975))

(declare-fun d!32977 () Bool)

(declare-fun res!64466 () Bool)

(declare-fun e!80684 () Bool)

(assert (=> d!32977 (=> (not res!64466) (not e!80684))))

(assert (=> d!32977 (= res!64466 (semiInverseModEq!125 (toChars!849 (transformation!379 (h!7702 rules!4268))) (toValue!990 (transformation!379 (h!7702 rules!4268)))))))

(assert (=> d!32977 (= (inv!3049 (transformation!379 (h!7702 rules!4268))) e!80684)))

(declare-fun b!138011 () Bool)

(assert (=> b!138011 (= e!80684 (equivClasses!108 (toChars!849 (transformation!379 (h!7702 rules!4268))) (toValue!990 (transformation!379 (h!7702 rules!4268)))))))

(assert (= (and d!32977 res!64466) b!138011))

(declare-fun m!121997 () Bool)

(assert (=> d!32977 m!121997))

(declare-fun m!121999 () Bool)

(assert (=> b!138011 m!121999))

(assert (=> b!137945 d!32977))

(declare-fun d!32979 () Bool)

(assert (=> d!32979 (= (isEmpty!884 l2!3099) ((_ is Nil!2306) l2!3099))))

(assert (=> b!137955 d!32979))

(declare-fun d!32981 () Bool)

(assert (=> d!32981 (= (inv!3046 (tag!557 (rule!886 (h!7703 l1!3130)))) (= (mod (str.len (value!15116 (tag!557 (rule!886 (h!7703 l1!3130))))) 2) 0))))

(assert (=> b!137949 d!32981))

(declare-fun d!32983 () Bool)

(declare-fun res!64467 () Bool)

(declare-fun e!80685 () Bool)

(assert (=> d!32983 (=> (not res!64467) (not e!80685))))

(assert (=> d!32983 (= res!64467 (semiInverseModEq!125 (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))) (toValue!990 (transformation!379 (rule!886 (h!7703 l1!3130))))))))

(assert (=> d!32983 (= (inv!3049 (transformation!379 (rule!886 (h!7703 l1!3130)))) e!80685)))

(declare-fun b!138012 () Bool)

(assert (=> b!138012 (= e!80685 (equivClasses!108 (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))) (toValue!990 (transformation!379 (rule!886 (h!7703 l1!3130))))))))

(assert (= (and d!32983 res!64467) b!138012))

(declare-fun m!122001 () Bool)

(assert (=> d!32983 m!122001))

(declare-fun m!122003 () Bool)

(assert (=> b!138012 m!122003))

(assert (=> b!137949 d!32983))

(declare-fun b!138013 () Bool)

(declare-fun e!80687 () Bool)

(assert (=> b!138013 (= e!80687 (inv!17 (value!15117 (h!7703 l2!3099))))))

(declare-fun b!138014 () Bool)

(declare-fun res!64468 () Bool)

(declare-fun e!80688 () Bool)

(assert (=> b!138014 (=> res!64468 e!80688)))

(assert (=> b!138014 (= res!64468 (not ((_ is IntegerValue!1205) (value!15117 (h!7703 l2!3099)))))))

(assert (=> b!138014 (= e!80687 e!80688)))

(declare-fun d!32985 () Bool)

(declare-fun c!29079 () Bool)

(assert (=> d!32985 (= c!29079 ((_ is IntegerValue!1203) (value!15117 (h!7703 l2!3099))))))

(declare-fun e!80686 () Bool)

(assert (=> d!32985 (= (inv!21 (value!15117 (h!7703 l2!3099))) e!80686)))

(declare-fun b!138015 () Bool)

(assert (=> b!138015 (= e!80686 e!80687)))

(declare-fun c!29078 () Bool)

(assert (=> b!138015 (= c!29078 ((_ is IntegerValue!1204) (value!15117 (h!7703 l2!3099))))))

(declare-fun b!138016 () Bool)

(assert (=> b!138016 (= e!80686 (inv!16 (value!15117 (h!7703 l2!3099))))))

(declare-fun b!138017 () Bool)

(assert (=> b!138017 (= e!80688 (inv!15 (value!15117 (h!7703 l2!3099))))))

(assert (= (and d!32985 c!29079) b!138016))

(assert (= (and d!32985 (not c!29079)) b!138015))

(assert (= (and b!138015 c!29078) b!138013))

(assert (= (and b!138015 (not c!29078)) b!138014))

(assert (= (and b!138014 (not res!64468)) b!138017))

(declare-fun m!122005 () Bool)

(assert (=> b!138013 m!122005))

(declare-fun m!122007 () Bool)

(assert (=> b!138016 m!122007))

(declare-fun m!122009 () Bool)

(assert (=> b!138017 m!122009))

(assert (=> b!137948 d!32985))

(declare-fun d!32987 () Bool)

(declare-fun res!64469 () Bool)

(declare-fun e!80689 () Bool)

(assert (=> d!32987 (=> res!64469 e!80689)))

(assert (=> d!32987 (= res!64469 (or (not ((_ is Cons!2306) l1!3130)) (not ((_ is Cons!2306) (t!22902 l1!3130)))))))

(assert (=> d!32987 (= (tokensListTwoByTwoPredicateList!6 thiss!27322 l1!3130 rules!4268 p!3028) e!80689)))

(declare-fun b!138018 () Bool)

(declare-fun e!80690 () Bool)

(assert (=> b!138018 (= e!80689 e!80690)))

(declare-fun res!64470 () Bool)

(assert (=> b!138018 (=> (not res!64470) (not e!80690))))

(assert (=> b!138018 (= res!64470 (dynLambda!765 p!3028 (h!7703 l1!3130) (h!7703 (t!22902 l1!3130)) rules!4268))))

(declare-fun b!138019 () Bool)

(assert (=> b!138019 (= e!80690 (tokensListTwoByTwoPredicateList!6 thiss!27322 (Cons!2306 (h!7703 (t!22902 l1!3130)) (t!22902 (t!22902 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!32987 (not res!64469)) b!138018))

(assert (= (and b!138018 res!64470) b!138019))

(declare-fun b_lambda!1757 () Bool)

(assert (=> (not b_lambda!1757) (not b!138018)))

(declare-fun t!22922 () Bool)

(declare-fun tb!3687 () Bool)

(assert (=> (and start!14510 (= p!3028 p!3028) t!22922) tb!3687))

(declare-fun result!5780 () Bool)

(assert (=> tb!3687 (= result!5780 true)))

(assert (=> b!138018 t!22922))

(declare-fun b_and!6287 () Bool)

(assert (= b_and!6275 (and (=> t!22922 result!5780) b_and!6287)))

(declare-fun m!122011 () Bool)

(assert (=> b!138018 m!122011))

(declare-fun m!122013 () Bool)

(assert (=> b!138019 m!122013))

(assert (=> b!137959 d!32987))

(declare-fun b!138044 () Bool)

(declare-fun b_free!4117 () Bool)

(declare-fun b_next!4117 () Bool)

(assert (=> b!138044 (= b_free!4117 (not b_next!4117))))

(declare-fun tp!72248 () Bool)

(declare-fun b_and!6291 () Bool)

(assert (=> b!138044 (= tp!72248 b_and!6291)))

(declare-fun b_free!4119 () Bool)

(declare-fun b_next!4119 () Bool)

(assert (=> b!138044 (= b_free!4119 (not b_next!4119))))

(declare-fun t!22930 () Bool)

(declare-fun tb!3695 () Bool)

(assert (=> (and b!138044 (= (toChars!849 (transformation!379 (rule!886 (h!7703 (t!22902 l1!3130))))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099))))) t!22930) tb!3695))

(declare-fun result!5792 () Bool)

(assert (= result!5792 result!5760))

(assert (=> b!137965 t!22930))

(declare-fun t!22932 () Bool)

(declare-fun tb!3697 () Bool)

(assert (=> (and b!138044 (= (toChars!849 (transformation!379 (rule!886 (h!7703 (t!22902 l1!3130))))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130))))) t!22932) tb!3697))

(declare-fun result!5794 () Bool)

(assert (= result!5794 result!5770))

(assert (=> b!138000 t!22932))

(declare-fun b_and!6295 () Bool)

(declare-fun tp!72250 () Bool)

(assert (=> b!138044 (= tp!72250 (and (=> t!22930 result!5792) (=> t!22932 result!5794) b_and!6295))))

(declare-fun e!80714 () Bool)

(declare-fun e!80709 () Bool)

(declare-fun b!138042 () Bool)

(declare-fun tp!72249 () Bool)

(assert (=> b!138042 (= e!80709 (and (inv!21 (value!15117 (h!7703 (t!22902 l1!3130)))) e!80714 tp!72249))))

(declare-fun tp!72251 () Bool)

(declare-fun b!138043 () Bool)

(declare-fun e!80711 () Bool)

(assert (=> b!138043 (= e!80714 (and tp!72251 (inv!3046 (tag!557 (rule!886 (h!7703 (t!22902 l1!3130))))) (inv!3049 (transformation!379 (rule!886 (h!7703 (t!22902 l1!3130))))) e!80711))))

(declare-fun e!80712 () Bool)

(assert (=> b!137957 (= tp!72227 e!80712)))

(assert (=> b!138044 (= e!80711 (and tp!72248 tp!72250))))

(declare-fun b!138041 () Bool)

(declare-fun tp!72247 () Bool)

(assert (=> b!138041 (= e!80712 (and (inv!3050 (h!7703 (t!22902 l1!3130))) e!80709 tp!72247))))

(assert (= b!138043 b!138044))

(assert (= b!138042 b!138043))

(assert (= b!138041 b!138042))

(assert (= (and b!137957 ((_ is Cons!2306) (t!22902 l1!3130))) b!138041))

(declare-fun m!122027 () Bool)

(assert (=> b!138042 m!122027))

(declare-fun m!122029 () Bool)

(assert (=> b!138043 m!122029))

(declare-fun m!122031 () Bool)

(assert (=> b!138043 m!122031))

(declare-fun m!122033 () Bool)

(assert (=> b!138041 m!122033))

(declare-fun b!138060 () Bool)

(declare-fun e!80719 () Bool)

(declare-fun tp!72266 () Bool)

(assert (=> b!138060 (= e!80719 tp!72266)))

(declare-fun b!138059 () Bool)

(declare-fun tp!72265 () Bool)

(declare-fun tp!72264 () Bool)

(assert (=> b!138059 (= e!80719 (and tp!72265 tp!72264))))

(declare-fun b!138058 () Bool)

(declare-fun tp_is_empty!1545 () Bool)

(assert (=> b!138058 (= e!80719 tp_is_empty!1545)))

(declare-fun b!138061 () Bool)

(declare-fun tp!72263 () Bool)

(declare-fun tp!72267 () Bool)

(assert (=> b!138061 (= e!80719 (and tp!72263 tp!72267))))

(assert (=> b!137956 (= tp!72229 e!80719)))

(assert (= (and b!137956 ((_ is ElementMatch!603) (regex!379 (rule!886 (h!7703 l2!3099))))) b!138058))

(assert (= (and b!137956 ((_ is Concat!1005) (regex!379 (rule!886 (h!7703 l2!3099))))) b!138059))

(assert (= (and b!137956 ((_ is Star!603) (regex!379 (rule!886 (h!7703 l2!3099))))) b!138060))

(assert (= (and b!137956 ((_ is Union!603) (regex!379 (rule!886 (h!7703 l2!3099))))) b!138061))

(declare-fun b!138065 () Bool)

(declare-fun b_free!4121 () Bool)

(declare-fun b_next!4121 () Bool)

(assert (=> b!138065 (= b_free!4121 (not b_next!4121))))

(declare-fun tp!72269 () Bool)

(declare-fun b_and!6305 () Bool)

(assert (=> b!138065 (= tp!72269 b_and!6305)))

(declare-fun b_free!4123 () Bool)

(declare-fun b_next!4123 () Bool)

(assert (=> b!138065 (= b_free!4123 (not b_next!4123))))

(declare-fun t!22940 () Bool)

(declare-fun tb!3705 () Bool)

(assert (=> (and b!138065 (= (toChars!849 (transformation!379 (rule!886 (h!7703 (t!22902 l2!3099))))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099))))) t!22940) tb!3705))

(declare-fun result!5804 () Bool)

(assert (= result!5804 result!5760))

(assert (=> b!137965 t!22940))

(declare-fun t!22942 () Bool)

(declare-fun tb!3707 () Bool)

(assert (=> (and b!138065 (= (toChars!849 (transformation!379 (rule!886 (h!7703 (t!22902 l2!3099))))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130))))) t!22942) tb!3707))

(declare-fun result!5806 () Bool)

(assert (= result!5806 result!5770))

(assert (=> b!138000 t!22942))

(declare-fun b_and!6307 () Bool)

(declare-fun tp!72271 () Bool)

(assert (=> b!138065 (= tp!72271 (and (=> t!22940 result!5804) (=> t!22942 result!5806) b_and!6307))))

(declare-fun b!138063 () Bool)

(declare-fun e!80720 () Bool)

(declare-fun e!80725 () Bool)

(declare-fun tp!72270 () Bool)

(assert (=> b!138063 (= e!80720 (and (inv!21 (value!15117 (h!7703 (t!22902 l2!3099)))) e!80725 tp!72270))))

(declare-fun tp!72272 () Bool)

(declare-fun b!138064 () Bool)

(declare-fun e!80722 () Bool)

(assert (=> b!138064 (= e!80725 (and tp!72272 (inv!3046 (tag!557 (rule!886 (h!7703 (t!22902 l2!3099))))) (inv!3049 (transformation!379 (rule!886 (h!7703 (t!22902 l2!3099))))) e!80722))))

(declare-fun e!80723 () Bool)

(assert (=> b!137950 (= tp!72225 e!80723)))

(assert (=> b!138065 (= e!80722 (and tp!72269 tp!72271))))

(declare-fun b!138062 () Bool)

(declare-fun tp!72268 () Bool)

(assert (=> b!138062 (= e!80723 (and (inv!3050 (h!7703 (t!22902 l2!3099))) e!80720 tp!72268))))

(assert (= b!138064 b!138065))

(assert (= b!138063 b!138064))

(assert (= b!138062 b!138063))

(assert (= (and b!137950 ((_ is Cons!2306) (t!22902 l2!3099))) b!138062))

(declare-fun m!122047 () Bool)

(assert (=> b!138063 m!122047))

(declare-fun m!122049 () Bool)

(assert (=> b!138064 m!122049))

(declare-fun m!122051 () Bool)

(assert (=> b!138064 m!122051))

(declare-fun m!122053 () Bool)

(assert (=> b!138062 m!122053))

(declare-fun b!138068 () Bool)

(declare-fun e!80726 () Bool)

(declare-fun tp!72276 () Bool)

(assert (=> b!138068 (= e!80726 tp!72276)))

(declare-fun b!138067 () Bool)

(declare-fun tp!72275 () Bool)

(declare-fun tp!72274 () Bool)

(assert (=> b!138067 (= e!80726 (and tp!72275 tp!72274))))

(declare-fun b!138066 () Bool)

(assert (=> b!138066 (= e!80726 tp_is_empty!1545)))

(declare-fun b!138069 () Bool)

(declare-fun tp!72273 () Bool)

(declare-fun tp!72277 () Bool)

(assert (=> b!138069 (= e!80726 (and tp!72273 tp!72277))))

(assert (=> b!137945 (= tp!72215 e!80726)))

(assert (= (and b!137945 ((_ is ElementMatch!603) (regex!379 (h!7702 rules!4268)))) b!138066))

(assert (= (and b!137945 ((_ is Concat!1005) (regex!379 (h!7702 rules!4268)))) b!138067))

(assert (= (and b!137945 ((_ is Star!603) (regex!379 (h!7702 rules!4268)))) b!138068))

(assert (= (and b!137945 ((_ is Union!603) (regex!379 (h!7702 rules!4268)))) b!138069))

(declare-fun b!138072 () Bool)

(declare-fun e!80727 () Bool)

(declare-fun tp!72281 () Bool)

(assert (=> b!138072 (= e!80727 tp!72281)))

(declare-fun b!138071 () Bool)

(declare-fun tp!72280 () Bool)

(declare-fun tp!72279 () Bool)

(assert (=> b!138071 (= e!80727 (and tp!72280 tp!72279))))

(declare-fun b!138070 () Bool)

(assert (=> b!138070 (= e!80727 tp_is_empty!1545)))

(declare-fun b!138073 () Bool)

(declare-fun tp!72278 () Bool)

(declare-fun tp!72282 () Bool)

(assert (=> b!138073 (= e!80727 (and tp!72278 tp!72282))))

(assert (=> b!137949 (= tp!72220 e!80727)))

(assert (= (and b!137949 ((_ is ElementMatch!603) (regex!379 (rule!886 (h!7703 l1!3130))))) b!138070))

(assert (= (and b!137949 ((_ is Concat!1005) (regex!379 (rule!886 (h!7703 l1!3130))))) b!138071))

(assert (= (and b!137949 ((_ is Star!603) (regex!379 (rule!886 (h!7703 l1!3130))))) b!138072))

(assert (= (and b!137949 ((_ is Union!603) (regex!379 (rule!886 (h!7703 l1!3130))))) b!138073))

(declare-fun b!138082 () Bool)

(declare-fun e!80732 () Bool)

(declare-fun tp!72285 () Bool)

(assert (=> b!138082 (= e!80732 (and tp_is_empty!1545 tp!72285))))

(assert (=> b!137948 (= tp!72219 e!80732)))

(assert (= (and b!137948 ((_ is Cons!2304) (originalCharacters!422 (h!7703 l2!3099)))) b!138082))

(declare-fun b!138087 () Bool)

(declare-fun e!80735 () Bool)

(declare-fun tp!72286 () Bool)

(assert (=> b!138087 (= e!80735 (and tp_is_empty!1545 tp!72286))))

(assert (=> b!137953 (= tp!72217 e!80735)))

(assert (= (and b!137953 ((_ is Cons!2304) (originalCharacters!422 (h!7703 l1!3130)))) b!138087))

(declare-fun b!138105 () Bool)

(declare-fun b_free!4125 () Bool)

(declare-fun b_next!4125 () Bool)

(assert (=> b!138105 (= b_free!4125 (not b_next!4125))))

(declare-fun tp!72295 () Bool)

(declare-fun b_and!6309 () Bool)

(assert (=> b!138105 (= tp!72295 b_and!6309)))

(declare-fun b_free!4127 () Bool)

(declare-fun b_next!4127 () Bool)

(assert (=> b!138105 (= b_free!4127 (not b_next!4127))))

(declare-fun tb!3709 () Bool)

(declare-fun t!22944 () Bool)

(assert (=> (and b!138105 (= (toChars!849 (transformation!379 (h!7702 (t!22901 rules!4268)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099))))) t!22944) tb!3709))

(declare-fun result!5812 () Bool)

(assert (= result!5812 result!5760))

(assert (=> b!137965 t!22944))

(declare-fun t!22946 () Bool)

(declare-fun tb!3711 () Bool)

(assert (=> (and b!138105 (= (toChars!849 (transformation!379 (h!7702 (t!22901 rules!4268)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130))))) t!22946) tb!3711))

(declare-fun result!5814 () Bool)

(assert (= result!5814 result!5770))

(assert (=> b!138000 t!22946))

(declare-fun b_and!6311 () Bool)

(declare-fun tp!72296 () Bool)

(assert (=> b!138105 (= tp!72296 (and (=> t!22944 result!5812) (=> t!22946 result!5814) b_and!6311))))

(declare-fun e!80751 () Bool)

(assert (=> b!138105 (= e!80751 (and tp!72295 tp!72296))))

(declare-fun e!80752 () Bool)

(declare-fun tp!72297 () Bool)

(declare-fun b!138104 () Bool)

(assert (=> b!138104 (= e!80752 (and tp!72297 (inv!3046 (tag!557 (h!7702 (t!22901 rules!4268)))) (inv!3049 (transformation!379 (h!7702 (t!22901 rules!4268)))) e!80751))))

(declare-fun b!138103 () Bool)

(declare-fun e!80750 () Bool)

(declare-fun tp!72298 () Bool)

(assert (=> b!138103 (= e!80750 (and e!80752 tp!72298))))

(assert (=> b!137947 (= tp!72221 e!80750)))

(assert (= b!138104 b!138105))

(assert (= b!138103 b!138104))

(assert (= (and b!137947 ((_ is Cons!2305) (t!22901 rules!4268))) b!138103))

(declare-fun m!122061 () Bool)

(assert (=> b!138104 m!122061))

(declare-fun m!122063 () Bool)

(assert (=> b!138104 m!122063))

(declare-fun b_lambda!1763 () Bool)

(assert (= b_lambda!1747 (or (and b!137954 b_free!4115 (= (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))))) (and b!137958 b_free!4109 (= (toChars!849 (transformation!379 (h!7702 rules!4268))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))))) (and b!137960 b_free!4105) (and b!138044 b_free!4119 (= (toChars!849 (transformation!379 (rule!886 (h!7703 (t!22902 l1!3130))))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))))) (and b!138105 b_free!4127 (= (toChars!849 (transformation!379 (h!7702 (t!22901 rules!4268)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))))) (and b!138065 b_free!4123 (= (toChars!849 (transformation!379 (rule!886 (h!7703 (t!22902 l2!3099))))) (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))))) b_lambda!1763)))

(declare-fun b_lambda!1765 () Bool)

(assert (= b_lambda!1751 (or (and b!137958 b_free!4109 (= (toChars!849 (transformation!379 (h!7702 rules!4268))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))))) (and b!137960 b_free!4105 (= (toChars!849 (transformation!379 (rule!886 (h!7703 l2!3099)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))))) (and b!138105 b_free!4127 (= (toChars!849 (transformation!379 (h!7702 (t!22901 rules!4268)))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))))) (and b!138044 b_free!4119 (= (toChars!849 (transformation!379 (rule!886 (h!7703 (t!22902 l1!3130))))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))))) (and b!137954 b_free!4115) (and b!138065 b_free!4123 (= (toChars!849 (transformation!379 (rule!886 (h!7703 (t!22902 l2!3099))))) (toChars!849 (transformation!379 (rule!886 (h!7703 l1!3130)))))) b_lambda!1765)))

(declare-fun b_lambda!1767 () Bool)

(assert (= b_lambda!1749 (or (and start!14510 b_free!4111) b_lambda!1767)))

(declare-fun b_lambda!1769 () Bool)

(assert (= b_lambda!1757 (or (and start!14510 b_free!4111) b_lambda!1769)))

(check-sat b_and!6309 b_and!6311 (not b_next!4115) (not b_next!4125) b_and!6281 (not b!138072) (not b!138059) (not b!137985) (not b!138071) (not b_next!4117) (not tb!3677) (not b!138017) b_and!6307 (not b!138001) (not b!137995) (not b!138060) (not tb!3669) b_and!6265 (not b_next!4113) (not b!138063) (not b_next!4103) (not b!138103) (not b!138002) (not b!137986) (not b!138041) (not b_lambda!1765) (not d!32945) (not b_next!4111) (not b!138061) (not b_next!4119) (not d!32959) (not b!138104) (not b!137966) (not b!138012) (not b_next!4123) b_and!6259 b_and!6287 (not b_next!4105) (not b!138087) (not b!137965) (not b!138073) (not b!138064) b_and!6291 b_and!6277 (not b!138013) b_and!6305 (not b!138069) (not d!32977) b_and!6255 (not b_lambda!1767) (not b!138019) (not b!138067) (not b_lambda!1763) tp_is_empty!1545 (not b!138042) (not b!138082) (not b!138062) b_and!6295 (not b_next!4127) (not b_lambda!1769) (not b!137971) (not d!32983) (not b!138068) (not b!138043) (not d!32963) (not b_next!4121) (not b_next!4107) (not b!138000) b_and!6279 (not b!137982) (not b_next!4109) (not b!138016) (not b!138011) (not b!138010))
(check-sat (not b_next!4117) b_and!6309 b_and!6307 b_and!6311 (not b_next!4115) (not b_next!4125) b_and!6281 b_and!6255 b_and!6295 (not b_next!4127) (not b_next!4109) b_and!6265 (not b_next!4113) (not b_next!4103) (not b_next!4111) (not b_next!4119) (not b_next!4123) b_and!6259 b_and!6287 (not b_next!4105) b_and!6291 b_and!6277 b_and!6305 b_and!6279 (not b_next!4121) (not b_next!4107))
