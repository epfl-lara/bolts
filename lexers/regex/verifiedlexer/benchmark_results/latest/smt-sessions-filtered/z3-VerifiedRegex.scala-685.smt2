; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26342 () Bool)

(assert start!26342)

(declare-fun b!248268 () Bool)

(declare-fun b_free!9241 () Bool)

(declare-fun b_next!9241 () Bool)

(assert (=> b!248268 (= b_free!9241 (not b_next!9241))))

(declare-fun tp!96747 () Bool)

(declare-fun b_and!18709 () Bool)

(assert (=> b!248268 (= tp!96747 b_and!18709)))

(declare-fun b_free!9243 () Bool)

(declare-fun b_next!9243 () Bool)

(assert (=> b!248268 (= b_free!9243 (not b_next!9243))))

(declare-fun tp!96757 () Bool)

(declare-fun b_and!18711 () Bool)

(assert (=> b!248268 (= tp!96757 b_and!18711)))

(declare-fun b!248279 () Bool)

(declare-fun b_free!9245 () Bool)

(declare-fun b_next!9245 () Bool)

(assert (=> b!248279 (= b_free!9245 (not b_next!9245))))

(declare-fun tp!96749 () Bool)

(declare-fun b_and!18713 () Bool)

(assert (=> b!248279 (= tp!96749 b_and!18713)))

(declare-fun b_free!9247 () Bool)

(declare-fun b_next!9247 () Bool)

(assert (=> b!248279 (= b_free!9247 (not b_next!9247))))

(declare-fun tp!96754 () Bool)

(declare-fun b_and!18715 () Bool)

(assert (=> b!248279 (= tp!96754 b_and!18715)))

(declare-fun b!248269 () Bool)

(declare-fun b_free!9249 () Bool)

(declare-fun b_next!9249 () Bool)

(assert (=> b!248269 (= b_free!9249 (not b_next!9249))))

(declare-fun tp!96750 () Bool)

(declare-fun b_and!18717 () Bool)

(assert (=> b!248269 (= tp!96750 b_and!18717)))

(declare-fun b_free!9251 () Bool)

(declare-fun b_next!9251 () Bool)

(assert (=> b!248269 (= b_free!9251 (not b_next!9251))))

(declare-fun tp!96753 () Bool)

(declare-fun b_and!18719 () Bool)

(assert (=> b!248269 (= tp!96753 b_and!18719)))

(declare-fun bs!26628 () Bool)

(declare-fun b!248288 () Bool)

(declare-fun b!248264 () Bool)

(assert (= bs!26628 (and b!248288 b!248264)))

(declare-fun lambda!8194 () Int)

(declare-fun lambda!8193 () Int)

(assert (=> bs!26628 (not (= lambda!8194 lambda!8193))))

(declare-fun b!248302 () Bool)

(declare-fun e!154156 () Bool)

(assert (=> b!248302 (= e!154156 true)))

(declare-fun b!248301 () Bool)

(declare-fun e!154155 () Bool)

(assert (=> b!248301 (= e!154155 e!154156)))

(declare-fun b!248300 () Bool)

(declare-fun e!154154 () Bool)

(assert (=> b!248300 (= e!154154 e!154155)))

(assert (=> b!248288 e!154154))

(assert (= b!248301 b!248302))

(assert (= b!248300 b!248301))

(declare-datatypes ((List!3661 0))(
  ( (Nil!3651) (Cons!3651 (h!9048 (_ BitVec 16)) (t!35289 List!3661)) )
))
(declare-datatypes ((TokenValue!715 0))(
  ( (FloatLiteralValue!1430 (text!5450 List!3661)) (TokenValueExt!714 (__x!2917 Int)) (Broken!3575 (value!24040 List!3661)) (Object!724) (End!715) (Def!715) (Underscore!715) (Match!715) (Else!715) (Error!715) (Case!715) (If!715) (Extends!715) (Abstract!715) (Class!715) (Val!715) (DelimiterValue!1430 (del!775 List!3661)) (KeywordValue!721 (value!24041 List!3661)) (CommentValue!1430 (value!24042 List!3661)) (WhitespaceValue!1430 (value!24043 List!3661)) (IndentationValue!715 (value!24044 List!3661)) (String!4654) (Int32!715) (Broken!3576 (value!24045 List!3661)) (Boolean!716) (Unit!4437) (OperatorValue!718 (op!775 List!3661)) (IdentifierValue!1430 (value!24046 List!3661)) (IdentifierValue!1431 (value!24047 List!3661)) (WhitespaceValue!1431 (value!24048 List!3661)) (True!1430) (False!1430) (Broken!3577 (value!24049 List!3661)) (Broken!3578 (value!24050 List!3661)) (True!1431) (RightBrace!715) (RightBracket!715) (Colon!715) (Null!715) (Comma!715) (LeftBracket!715) (False!1431) (LeftBrace!715) (ImaginaryLiteralValue!715 (text!5451 List!3661)) (StringLiteralValue!2145 (value!24051 List!3661)) (EOFValue!715 (value!24052 List!3661)) (IdentValue!715 (value!24053 List!3661)) (DelimiterValue!1431 (value!24054 List!3661)) (DedentValue!715 (value!24055 List!3661)) (NewLineValue!715 (value!24056 List!3661)) (IntegerValue!2145 (value!24057 (_ BitVec 32)) (text!5452 List!3661)) (IntegerValue!2146 (value!24058 Int) (text!5453 List!3661)) (Times!715) (Or!715) (Equal!715) (Minus!715) (Broken!3579 (value!24059 List!3661)) (And!715) (Div!715) (LessEqual!715) (Mod!715) (Concat!1632) (Not!715) (Plus!715) (SpaceValue!715 (value!24060 List!3661)) (IntegerValue!2147 (value!24061 Int) (text!5454 List!3661)) (StringLiteralValue!2146 (text!5455 List!3661)) (FloatLiteralValue!1431 (text!5456 List!3661)) (BytesLiteralValue!715 (value!24062 List!3661)) (CommentValue!1431 (value!24063 List!3661)) (StringLiteralValue!2147 (value!24064 List!3661)) (ErrorTokenValue!715 (msg!776 List!3661)) )
))
(declare-datatypes ((C!2756 0))(
  ( (C!2757 (val!1264 Int)) )
))
(declare-datatypes ((List!3662 0))(
  ( (Nil!3652) (Cons!3652 (h!9049 C!2756) (t!35290 List!3662)) )
))
(declare-datatypes ((IArray!2417 0))(
  ( (IArray!2418 (innerList!1266 List!3662)) )
))
(declare-datatypes ((Conc!1208 0))(
  ( (Node!1208 (left!2997 Conc!1208) (right!3327 Conc!1208) (csize!2646 Int) (cheight!1419 Int)) (Leaf!1894 (xs!3803 IArray!2417) (csize!2647 Int)) (Empty!1208) )
))
(declare-datatypes ((BalanceConc!2424 0))(
  ( (BalanceConc!2425 (c!47264 Conc!1208)) )
))
(declare-datatypes ((String!4655 0))(
  ( (String!4656 (value!24065 String)) )
))
(declare-datatypes ((TokenValueInjection!1202 0))(
  ( (TokenValueInjection!1203 (toValue!1396 Int) (toChars!1255 Int)) )
))
(declare-datatypes ((Regex!917 0))(
  ( (ElementMatch!917 (c!47265 C!2756)) (Concat!1633 (regOne!2346 Regex!917) (regTwo!2346 Regex!917)) (EmptyExpr!917) (Star!917 (reg!1246 Regex!917)) (EmptyLang!917) (Union!917 (regOne!2347 Regex!917) (regTwo!2347 Regex!917)) )
))
(declare-datatypes ((Rule!1186 0))(
  ( (Rule!1187 (regex!693 Regex!917) (tag!901 String!4655) (isSeparator!693 Bool) (transformation!693 TokenValueInjection!1202)) )
))
(declare-datatypes ((List!3663 0))(
  ( (Nil!3653) (Cons!3653 (h!9050 Rule!1186) (t!35291 List!3663)) )
))
(declare-fun rules!1920 () List!3663)

(get-info :version)

(assert (= (and b!248288 ((_ is Cons!3653) rules!1920)) b!248300))

(declare-fun order!2699 () Int)

(declare-fun order!2697 () Int)

(declare-fun dynLambda!1785 (Int Int) Int)

(declare-fun dynLambda!1786 (Int Int) Int)

(assert (=> b!248302 (< (dynLambda!1785 order!2697 (toValue!1396 (transformation!693 (h!9050 rules!1920)))) (dynLambda!1786 order!2699 lambda!8194))))

(declare-fun order!2701 () Int)

(declare-fun dynLambda!1787 (Int Int) Int)

(assert (=> b!248302 (< (dynLambda!1787 order!2701 (toChars!1255 (transformation!693 (h!9050 rules!1920)))) (dynLambda!1786 order!2699 lambda!8194))))

(assert (=> b!248288 true))

(declare-fun b!248256 () Bool)

(declare-fun e!154144 () Bool)

(declare-datatypes ((Token!1130 0))(
  ( (Token!1131 (value!24066 TokenValue!715) (rule!1270 Rule!1186) (size!2891 Int) (originalCharacters!736 List!3662)) )
))
(declare-datatypes ((tuple2!4074 0))(
  ( (tuple2!4075 (_1!2253 Token!1130) (_2!2253 List!3662)) )
))
(declare-datatypes ((Option!748 0))(
  ( (None!747) (Some!747 (v!14520 tuple2!4074)) )
))
(declare-fun lt!100946 () Option!748)

(declare-datatypes ((List!3664 0))(
  ( (Nil!3654) (Cons!3654 (h!9051 Token!1130) (t!35292 List!3664)) )
))
(declare-fun tokens!465 () List!3664)

(declare-fun get!1198 (Option!748) tuple2!4074)

(declare-fun head!856 (List!3664) Token!1130)

(assert (=> b!248256 (= e!154144 (= (_1!2253 (get!1198 lt!100946)) (head!856 tokens!465)))))

(declare-fun b!248257 () Bool)

(declare-fun res!114997 () Bool)

(declare-fun e!154121 () Bool)

(assert (=> b!248257 (=> res!114997 e!154121)))

(declare-datatypes ((LexerInterface!579 0))(
  ( (LexerInterfaceExt!576 (__x!2918 Int)) (Lexer!577) )
))
(declare-fun thiss!17480 () LexerInterface!579)

(declare-fun rulesProduceIndividualToken!328 (LexerInterface!579 List!3663 Token!1130) Bool)

(assert (=> b!248257 (= res!114997 (not (rulesProduceIndividualToken!328 thiss!17480 rules!1920 (h!9051 tokens!465))))))

(declare-fun b!248258 () Bool)

(declare-fun res!114995 () Bool)

(declare-fun e!154127 () Bool)

(assert (=> b!248258 (=> (not res!114995) (not e!154127))))

(declare-fun separatorToken!170 () Token!1130)

(assert (=> b!248258 (= res!114995 (isSeparator!693 (rule!1270 separatorToken!170)))))

(declare-fun b!248259 () Bool)

(declare-fun e!154135 () Bool)

(declare-fun e!154134 () Bool)

(assert (=> b!248259 (= e!154135 e!154134)))

(declare-fun res!114993 () Bool)

(assert (=> b!248259 (=> res!114993 e!154134)))

(declare-fun lt!100937 () Bool)

(assert (=> b!248259 (= res!114993 lt!100937)))

(declare-fun e!154131 () Bool)

(assert (=> b!248259 e!154131))

(declare-fun res!115000 () Bool)

(assert (=> b!248259 (=> (not res!115000) (not e!154131))))

(declare-fun lt!100940 () tuple2!4074)

(assert (=> b!248259 (= res!115000 (= (_1!2253 lt!100940) (h!9051 tokens!465)))))

(declare-fun lt!100936 () Option!748)

(assert (=> b!248259 (= lt!100940 (get!1198 lt!100936))))

(declare-fun isDefined!599 (Option!748) Bool)

(assert (=> b!248259 (isDefined!599 lt!100936)))

(declare-fun lt!100954 () List!3662)

(declare-fun maxPrefix!309 (LexerInterface!579 List!3663 List!3662) Option!748)

(assert (=> b!248259 (= lt!100936 (maxPrefix!309 thiss!17480 rules!1920 lt!100954))))

(declare-fun b!248260 () Bool)

(declare-fun e!154133 () Bool)

(assert (=> b!248260 (= e!154134 e!154133)))

(declare-fun res!114985 () Bool)

(assert (=> b!248260 (=> res!114985 e!154133)))

(declare-fun lt!100944 () List!3662)

(declare-fun isPrefix!377 (List!3662 List!3662) Bool)

(assert (=> b!248260 (= res!114985 (not (isPrefix!377 lt!100954 lt!100944)))))

(declare-fun lt!100934 () tuple2!4074)

(assert (=> b!248260 (= lt!100934 (get!1198 (maxPrefix!309 thiss!17480 rules!1920 lt!100944)))))

(declare-fun lt!100953 () List!3662)

(assert (=> b!248260 (isPrefix!377 lt!100954 lt!100953)))

(declare-fun lt!100941 () List!3662)

(declare-fun ++!934 (List!3662 List!3662) List!3662)

(assert (=> b!248260 (= lt!100953 (++!934 lt!100954 lt!100941))))

(declare-datatypes ((Unit!4438 0))(
  ( (Unit!4439) )
))
(declare-fun lt!100931 () Unit!4438)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!272 (List!3662 List!3662) Unit!4438)

(assert (=> b!248260 (= lt!100931 (lemmaConcatTwoListThenFirstIsPrefix!272 lt!100954 lt!100941))))

(declare-fun lt!100938 () BalanceConc!2424)

(declare-fun filter!75 (List!3664 Int) List!3664)

(declare-datatypes ((IArray!2419 0))(
  ( (IArray!2420 (innerList!1267 List!3664)) )
))
(declare-datatypes ((Conc!1209 0))(
  ( (Node!1209 (left!2998 Conc!1209) (right!3328 Conc!1209) (csize!2648 Int) (cheight!1420 Int)) (Leaf!1895 (xs!3804 IArray!2419) (csize!2649 Int)) (Empty!1209) )
))
(declare-datatypes ((BalanceConc!2426 0))(
  ( (BalanceConc!2427 (c!47266 Conc!1209)) )
))
(declare-fun list!1444 (BalanceConc!2426) List!3664)

(declare-datatypes ((tuple2!4076 0))(
  ( (tuple2!4077 (_1!2254 BalanceConc!2426) (_2!2254 BalanceConc!2424)) )
))
(declare-fun lex!379 (LexerInterface!579 List!3663 BalanceConc!2424) tuple2!4076)

(assert (=> b!248260 (= (filter!75 (list!1444 (_1!2254 (lex!379 thiss!17480 rules!1920 lt!100938))) lambda!8193) (t!35292 tokens!465))))

(declare-fun lt!100933 () Unit!4438)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!66 (LexerInterface!579 List!3663 List!3664 Token!1130) Unit!4438)

(assert (=> b!248260 (= lt!100933 (theoremInvertabilityFromTokensSepTokenWhenNeeded!66 thiss!17480 rules!1920 (t!35292 tokens!465) separatorToken!170))))

(declare-fun e!154124 () Bool)

(assert (=> b!248260 e!154124))

(declare-fun res!115001 () Bool)

(assert (=> b!248260 (=> res!115001 e!154124)))

(declare-fun isEmpty!2245 (List!3664) Bool)

(assert (=> b!248260 (= res!115001 (isEmpty!2245 tokens!465))))

(declare-fun lt!100947 () Unit!4438)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!148 (LexerInterface!579 List!3663 List!3664 Token!1130) Unit!4438)

(assert (=> b!248260 (= lt!100947 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!148 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!96759 () Bool)

(declare-fun b!248261 () Bool)

(declare-fun e!154132 () Bool)

(declare-fun e!154129 () Bool)

(declare-fun inv!21 (TokenValue!715) Bool)

(assert (=> b!248261 (= e!154129 (and (inv!21 (value!24066 (h!9051 tokens!465))) e!154132 tp!96759))))

(declare-fun b!248262 () Bool)

(declare-fun e!154126 () Bool)

(declare-fun e!154140 () Bool)

(declare-fun tp!96756 () Bool)

(assert (=> b!248262 (= e!154126 (and e!154140 tp!96756))))

(declare-fun tp!96748 () Bool)

(declare-fun e!154122 () Bool)

(declare-fun b!248263 () Bool)

(declare-fun inv!4505 (Token!1130) Bool)

(assert (=> b!248263 (= e!154122 (and (inv!4505 (h!9051 tokens!465)) e!154129 tp!96748))))

(declare-fun res!114994 () Bool)

(assert (=> b!248264 (=> (not res!114994) (not e!154127))))

(declare-fun forall!855 (List!3664 Int) Bool)

(assert (=> b!248264 (= res!114994 (forall!855 tokens!465 lambda!8193))))

(declare-fun b!248265 () Bool)

(declare-fun res!114982 () Bool)

(declare-fun e!154136 () Bool)

(assert (=> b!248265 (=> (not res!114982) (not e!154136))))

(declare-fun lt!100952 () List!3662)

(declare-fun list!1445 (BalanceConc!2424) List!3662)

(declare-fun seqFromList!763 (List!3662) BalanceConc!2424)

(assert (=> b!248265 (= res!114982 (= (list!1445 (seqFromList!763 lt!100944)) lt!100952))))

(declare-fun b!248266 () Bool)

(declare-fun res!114988 () Bool)

(assert (=> b!248266 (=> (not res!114988) (not e!154131))))

(declare-fun isEmpty!2246 (List!3662) Bool)

(assert (=> b!248266 (= res!114988 (isEmpty!2246 (_2!2253 lt!100940)))))

(declare-fun b!248267 () Bool)

(declare-fun res!114987 () Bool)

(assert (=> b!248267 (=> (not res!114987) (not e!154127))))

(assert (=> b!248267 (= res!114987 (rulesProduceIndividualToken!328 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!154147 () Bool)

(assert (=> b!248268 (= e!154147 (and tp!96747 tp!96757))))

(declare-fun b!248270 () Bool)

(declare-fun tp!96751 () Bool)

(declare-fun inv!4502 (String!4655) Bool)

(declare-fun inv!4506 (TokenValueInjection!1202) Bool)

(assert (=> b!248270 (= e!154132 (and tp!96751 (inv!4502 (tag!901 (rule!1270 (h!9051 tokens!465)))) (inv!4506 (transformation!693 (rule!1270 (h!9051 tokens!465)))) e!154147))))

(declare-fun b!248271 () Bool)

(declare-fun res!114984 () Bool)

(assert (=> b!248271 (=> res!114984 e!154133)))

(assert (=> b!248271 (= res!114984 (not (= (++!934 lt!100954 (_2!2253 lt!100934)) lt!100944)))))

(declare-fun b!248272 () Bool)

(declare-fun e!154123 () Bool)

(declare-fun tp!96755 () Bool)

(assert (=> b!248272 (= e!154140 (and tp!96755 (inv!4502 (tag!901 (h!9050 rules!1920))) (inv!4506 (transformation!693 (h!9050 rules!1920))) e!154123))))

(declare-fun b!248273 () Bool)

(declare-fun res!114983 () Bool)

(declare-fun e!154120 () Bool)

(assert (=> b!248273 (=> (not res!114983) (not e!154120))))

(declare-fun rulesInvariant!545 (LexerInterface!579 List!3663) Bool)

(assert (=> b!248273 (= res!114983 (rulesInvariant!545 thiss!17480 rules!1920))))

(declare-fun b!248274 () Bool)

(declare-fun matchR!255 (Regex!917 List!3662) Bool)

(assert (=> b!248274 (= e!154131 (matchR!255 (regex!693 (rule!1270 (h!9051 tokens!465))) lt!100954))))

(declare-fun b!248275 () Bool)

(declare-fun e!154128 () Bool)

(assert (=> b!248275 (= e!154128 (not (= lt!100944 (++!934 lt!100954 lt!100941))))))

(declare-fun b!248276 () Bool)

(declare-fun e!154130 () Bool)

(assert (=> b!248276 (= e!154130 e!154121)))

(declare-fun res!114989 () Bool)

(assert (=> b!248276 (=> res!114989 e!154121)))

(declare-fun lt!100950 () List!3662)

(declare-fun lt!100949 () List!3662)

(assert (=> b!248276 (= res!114989 (or (not (= lt!100949 lt!100950)) (not (= lt!100950 lt!100954)) (not (= lt!100949 lt!100954))))))

(declare-fun printList!263 (LexerInterface!579 List!3664) List!3662)

(assert (=> b!248276 (= lt!100950 (printList!263 thiss!17480 (Cons!3654 (h!9051 tokens!465) Nil!3654)))))

(declare-fun lt!100932 () BalanceConc!2424)

(assert (=> b!248276 (= lt!100949 (list!1445 lt!100932))))

(declare-fun lt!100939 () BalanceConc!2426)

(declare-fun printTailRec!273 (LexerInterface!579 BalanceConc!2426 Int BalanceConc!2424) BalanceConc!2424)

(assert (=> b!248276 (= lt!100932 (printTailRec!273 thiss!17480 lt!100939 0 (BalanceConc!2425 Empty!1208)))))

(declare-fun print!310 (LexerInterface!579 BalanceConc!2426) BalanceConc!2424)

(assert (=> b!248276 (= lt!100932 (print!310 thiss!17480 lt!100939))))

(declare-fun singletonSeq!245 (Token!1130) BalanceConc!2426)

(assert (=> b!248276 (= lt!100939 (singletonSeq!245 (h!9051 tokens!465)))))

(declare-fun b!248277 () Bool)

(assert (=> b!248277 (= e!154124 e!154144)))

(declare-fun res!115004 () Bool)

(assert (=> b!248277 (=> (not res!115004) (not e!154144))))

(assert (=> b!248277 (= res!115004 (isDefined!599 lt!100946))))

(assert (=> b!248277 (= lt!100946 (maxPrefix!309 thiss!17480 rules!1920 lt!100944))))

(declare-fun res!115002 () Bool)

(assert (=> start!26342 (=> (not res!115002) (not e!154120))))

(assert (=> start!26342 (= res!115002 ((_ is Lexer!577) thiss!17480))))

(assert (=> start!26342 e!154120))

(assert (=> start!26342 true))

(assert (=> start!26342 e!154126))

(declare-fun e!154146 () Bool)

(assert (=> start!26342 (and (inv!4505 separatorToken!170) e!154146)))

(assert (=> start!26342 e!154122))

(assert (=> b!248269 (= e!154123 (and tp!96750 tp!96753))))

(declare-fun b!248278 () Bool)

(declare-fun res!114998 () Bool)

(assert (=> b!248278 (=> (not res!114998) (not e!154120))))

(declare-fun isEmpty!2247 (List!3663) Bool)

(assert (=> b!248278 (= res!114998 (not (isEmpty!2247 rules!1920)))))

(declare-fun e!154142 () Bool)

(assert (=> b!248279 (= e!154142 (and tp!96749 tp!96754))))

(declare-fun b!248280 () Bool)

(declare-fun res!115003 () Bool)

(assert (=> b!248280 (=> res!115003 e!154121)))

(declare-fun isEmpty!2248 (BalanceConc!2426) Bool)

(assert (=> b!248280 (= res!115003 (isEmpty!2248 (_1!2254 (lex!379 thiss!17480 rules!1920 (seqFromList!763 lt!100954)))))))

(declare-fun b!248281 () Bool)

(declare-fun tp!96752 () Bool)

(declare-fun e!154138 () Bool)

(assert (=> b!248281 (= e!154146 (and (inv!21 (value!24066 separatorToken!170)) e!154138 tp!96752))))

(declare-fun b!248282 () Bool)

(assert (=> b!248282 (= e!154120 e!154127)))

(declare-fun res!114991 () Bool)

(assert (=> b!248282 (=> (not res!114991) (not e!154127))))

(declare-fun lt!100945 () BalanceConc!2426)

(declare-fun rulesProduceEachTokenIndividually!371 (LexerInterface!579 List!3663 BalanceConc!2426) Bool)

(assert (=> b!248282 (= res!114991 (rulesProduceEachTokenIndividually!371 thiss!17480 rules!1920 lt!100945))))

(declare-fun seqFromList!764 (List!3664) BalanceConc!2426)

(assert (=> b!248282 (= lt!100945 (seqFromList!764 tokens!465))))

(declare-fun b!248283 () Bool)

(declare-fun e!154125 () Bool)

(assert (=> b!248283 (= e!154125 e!154130)))

(declare-fun res!114979 () Bool)

(assert (=> b!248283 (=> res!114979 e!154130)))

(assert (=> b!248283 (= res!114979 e!154128)))

(declare-fun res!114996 () Bool)

(assert (=> b!248283 (=> (not res!114996) (not e!154128))))

(assert (=> b!248283 (= res!114996 (not lt!100937))))

(declare-fun lt!100956 () List!3662)

(assert (=> b!248283 (= lt!100937 (= lt!100944 lt!100956))))

(declare-fun b!248284 () Bool)

(assert (=> b!248284 (= e!154133 true)))

(assert (=> b!248284 (= lt!100941 (_2!2253 lt!100934))))

(declare-fun lt!100942 () Unit!4438)

(declare-fun lemmaSamePrefixThenSameSuffix!192 (List!3662 List!3662 List!3662 List!3662 List!3662) Unit!4438)

(assert (=> b!248284 (= lt!100942 (lemmaSamePrefixThenSameSuffix!192 lt!100954 lt!100941 lt!100954 (_2!2253 lt!100934) lt!100944))))

(declare-fun b!248285 () Bool)

(assert (=> b!248285 (= e!154136 (not e!154125))))

(declare-fun res!114999 () Bool)

(assert (=> b!248285 (=> res!114999 e!154125)))

(assert (=> b!248285 (= res!114999 (not (= lt!100941 (list!1445 lt!100938))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!262 (LexerInterface!579 List!3663 BalanceConc!2426 Token!1130 Int) BalanceConc!2424)

(assert (=> b!248285 (= lt!100938 (printWithSeparatorTokenWhenNeededRec!262 thiss!17480 rules!1920 (seqFromList!764 (t!35292 tokens!465)) separatorToken!170 0))))

(declare-fun lt!100951 () List!3662)

(assert (=> b!248285 (= lt!100951 lt!100956)))

(declare-fun lt!100943 () List!3662)

(assert (=> b!248285 (= lt!100956 (++!934 lt!100954 lt!100943))))

(declare-fun lt!100935 () List!3662)

(assert (=> b!248285 (= lt!100951 (++!934 (++!934 lt!100954 lt!100935) lt!100941))))

(declare-fun lt!100948 () Unit!4438)

(declare-fun lemmaConcatAssociativity!398 (List!3662 List!3662 List!3662) Unit!4438)

(assert (=> b!248285 (= lt!100948 (lemmaConcatAssociativity!398 lt!100954 lt!100935 lt!100941))))

(declare-fun charsOf!348 (Token!1130) BalanceConc!2424)

(assert (=> b!248285 (= lt!100954 (list!1445 (charsOf!348 (h!9051 tokens!465))))))

(assert (=> b!248285 (= lt!100943 (++!934 lt!100935 lt!100941))))

(declare-fun printWithSeparatorTokenWhenNeededList!272 (LexerInterface!579 List!3663 List!3664 Token!1130) List!3662)

(assert (=> b!248285 (= lt!100941 (printWithSeparatorTokenWhenNeededList!272 thiss!17480 rules!1920 (t!35292 tokens!465) separatorToken!170))))

(assert (=> b!248285 (= lt!100935 (list!1445 (charsOf!348 separatorToken!170)))))

(declare-fun b!248286 () Bool)

(declare-fun tp!96758 () Bool)

(assert (=> b!248286 (= e!154138 (and tp!96758 (inv!4502 (tag!901 (rule!1270 separatorToken!170))) (inv!4506 (transformation!693 (rule!1270 separatorToken!170))) e!154142))))

(declare-fun b!248287 () Bool)

(declare-fun res!114990 () Bool)

(assert (=> b!248287 (=> (not res!114990) (not e!154127))))

(declare-fun sepAndNonSepRulesDisjointChars!282 (List!3663 List!3663) Bool)

(assert (=> b!248287 (= res!114990 (sepAndNonSepRulesDisjointChars!282 rules!1920 rules!1920))))

(assert (=> b!248288 (= e!154121 e!154135)))

(declare-fun res!114992 () Bool)

(assert (=> b!248288 (=> res!114992 e!154135)))

(declare-datatypes ((tuple2!4078 0))(
  ( (tuple2!4079 (_1!2255 Token!1130) (_2!2255 BalanceConc!2424)) )
))
(declare-datatypes ((Option!749 0))(
  ( (None!748) (Some!748 (v!14521 tuple2!4078)) )
))
(declare-fun isDefined!600 (Option!749) Bool)

(declare-fun maxPrefixZipperSequence!272 (LexerInterface!579 List!3663 BalanceConc!2424) Option!749)

(assert (=> b!248288 (= res!114992 (not (isDefined!600 (maxPrefixZipperSequence!272 thiss!17480 rules!1920 (seqFromList!763 (originalCharacters!736 (h!9051 tokens!465)))))))))

(declare-fun lt!100955 () Unit!4438)

(declare-fun forallContained!260 (List!3664 Int Token!1130) Unit!4438)

(assert (=> b!248288 (= lt!100955 (forallContained!260 tokens!465 lambda!8194 (h!9051 tokens!465)))))

(assert (=> b!248288 (= lt!100954 (originalCharacters!736 (h!9051 tokens!465)))))

(declare-fun b!248289 () Bool)

(declare-fun res!114980 () Bool)

(assert (=> b!248289 (=> res!114980 e!154133)))

(assert (=> b!248289 (= res!114980 (not (= lt!100953 lt!100944)))))

(declare-fun b!248290 () Bool)

(assert (=> b!248290 (= e!154127 e!154136)))

(declare-fun res!114986 () Bool)

(assert (=> b!248290 (=> (not res!114986) (not e!154136))))

(assert (=> b!248290 (= res!114986 (= lt!100944 lt!100952))))

(assert (=> b!248290 (= lt!100952 (list!1445 (printWithSeparatorTokenWhenNeededRec!262 thiss!17480 rules!1920 lt!100945 separatorToken!170 0)))))

(assert (=> b!248290 (= lt!100944 (printWithSeparatorTokenWhenNeededList!272 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!248291 () Bool)

(declare-fun res!114981 () Bool)

(assert (=> b!248291 (=> (not res!114981) (not e!154127))))

(assert (=> b!248291 (= res!114981 ((_ is Cons!3654) tokens!465))))

(assert (= (and start!26342 res!115002) b!248278))

(assert (= (and b!248278 res!114998) b!248273))

(assert (= (and b!248273 res!114983) b!248282))

(assert (= (and b!248282 res!114991) b!248267))

(assert (= (and b!248267 res!114987) b!248258))

(assert (= (and b!248258 res!114995) b!248264))

(assert (= (and b!248264 res!114994) b!248287))

(assert (= (and b!248287 res!114990) b!248291))

(assert (= (and b!248291 res!114981) b!248290))

(assert (= (and b!248290 res!114986) b!248265))

(assert (= (and b!248265 res!114982) b!248285))

(assert (= (and b!248285 (not res!114999)) b!248283))

(assert (= (and b!248283 res!114996) b!248275))

(assert (= (and b!248283 (not res!114979)) b!248276))

(assert (= (and b!248276 (not res!114989)) b!248257))

(assert (= (and b!248257 (not res!114997)) b!248280))

(assert (= (and b!248280 (not res!115003)) b!248288))

(assert (= (and b!248288 (not res!114992)) b!248259))

(assert (= (and b!248259 res!115000) b!248266))

(assert (= (and b!248266 res!114988) b!248274))

(assert (= (and b!248259 (not res!114993)) b!248260))

(assert (= (and b!248260 (not res!115001)) b!248277))

(assert (= (and b!248277 res!115004) b!248256))

(assert (= (and b!248260 (not res!114985)) b!248289))

(assert (= (and b!248289 (not res!114980)) b!248271))

(assert (= (and b!248271 (not res!114984)) b!248284))

(assert (= b!248272 b!248269))

(assert (= b!248262 b!248272))

(assert (= (and start!26342 ((_ is Cons!3653) rules!1920)) b!248262))

(assert (= b!248286 b!248279))

(assert (= b!248281 b!248286))

(assert (= start!26342 b!248281))

(assert (= b!248270 b!248268))

(assert (= b!248261 b!248270))

(assert (= b!248263 b!248261))

(assert (= (and start!26342 ((_ is Cons!3654) tokens!465)) b!248263))

(declare-fun m!303899 () Bool)

(assert (=> b!248274 m!303899))

(declare-fun m!303901 () Bool)

(assert (=> b!248277 m!303901))

(declare-fun m!303903 () Bool)

(assert (=> b!248277 m!303903))

(declare-fun m!303905 () Bool)

(assert (=> b!248260 m!303905))

(assert (=> b!248260 m!303903))

(declare-fun m!303907 () Bool)

(assert (=> b!248260 m!303907))

(assert (=> b!248260 m!303903))

(declare-fun m!303909 () Bool)

(assert (=> b!248260 m!303909))

(declare-fun m!303911 () Bool)

(assert (=> b!248260 m!303911))

(declare-fun m!303913 () Bool)

(assert (=> b!248260 m!303913))

(declare-fun m!303915 () Bool)

(assert (=> b!248260 m!303915))

(declare-fun m!303917 () Bool)

(assert (=> b!248260 m!303917))

(declare-fun m!303919 () Bool)

(assert (=> b!248260 m!303919))

(declare-fun m!303921 () Bool)

(assert (=> b!248260 m!303921))

(assert (=> b!248260 m!303913))

(declare-fun m!303923 () Bool)

(assert (=> b!248260 m!303923))

(declare-fun m!303925 () Bool)

(assert (=> b!248260 m!303925))

(assert (=> b!248275 m!303911))

(declare-fun m!303927 () Bool)

(assert (=> b!248259 m!303927))

(declare-fun m!303929 () Bool)

(assert (=> b!248259 m!303929))

(declare-fun m!303931 () Bool)

(assert (=> b!248259 m!303931))

(declare-fun m!303933 () Bool)

(assert (=> b!248281 m!303933))

(declare-fun m!303935 () Bool)

(assert (=> b!248276 m!303935))

(declare-fun m!303937 () Bool)

(assert (=> b!248276 m!303937))

(declare-fun m!303939 () Bool)

(assert (=> b!248276 m!303939))

(declare-fun m!303941 () Bool)

(assert (=> b!248276 m!303941))

(declare-fun m!303943 () Bool)

(assert (=> b!248276 m!303943))

(declare-fun m!303945 () Bool)

(assert (=> b!248261 m!303945))

(declare-fun m!303947 () Bool)

(assert (=> b!248288 m!303947))

(assert (=> b!248288 m!303947))

(declare-fun m!303949 () Bool)

(assert (=> b!248288 m!303949))

(assert (=> b!248288 m!303949))

(declare-fun m!303951 () Bool)

(assert (=> b!248288 m!303951))

(declare-fun m!303953 () Bool)

(assert (=> b!248288 m!303953))

(declare-fun m!303955 () Bool)

(assert (=> b!248286 m!303955))

(declare-fun m!303957 () Bool)

(assert (=> b!248286 m!303957))

(declare-fun m!303959 () Bool)

(assert (=> b!248266 m!303959))

(declare-fun m!303961 () Bool)

(assert (=> b!248284 m!303961))

(declare-fun m!303963 () Bool)

(assert (=> b!248265 m!303963))

(assert (=> b!248265 m!303963))

(declare-fun m!303965 () Bool)

(assert (=> b!248265 m!303965))

(declare-fun m!303967 () Bool)

(assert (=> b!248285 m!303967))

(declare-fun m!303969 () Bool)

(assert (=> b!248285 m!303969))

(declare-fun m!303971 () Bool)

(assert (=> b!248285 m!303971))

(declare-fun m!303973 () Bool)

(assert (=> b!248285 m!303973))

(declare-fun m!303975 () Bool)

(assert (=> b!248285 m!303975))

(declare-fun m!303977 () Bool)

(assert (=> b!248285 m!303977))

(assert (=> b!248285 m!303973))

(declare-fun m!303979 () Bool)

(assert (=> b!248285 m!303979))

(declare-fun m!303981 () Bool)

(assert (=> b!248285 m!303981))

(declare-fun m!303983 () Bool)

(assert (=> b!248285 m!303983))

(assert (=> b!248285 m!303979))

(declare-fun m!303985 () Bool)

(assert (=> b!248285 m!303985))

(declare-fun m!303987 () Bool)

(assert (=> b!248285 m!303987))

(declare-fun m!303989 () Bool)

(assert (=> b!248285 m!303989))

(assert (=> b!248285 m!303967))

(declare-fun m!303991 () Bool)

(assert (=> b!248285 m!303991))

(assert (=> b!248285 m!303987))

(declare-fun m!303993 () Bool)

(assert (=> b!248280 m!303993))

(assert (=> b!248280 m!303993))

(declare-fun m!303995 () Bool)

(assert (=> b!248280 m!303995))

(declare-fun m!303997 () Bool)

(assert (=> b!248280 m!303997))

(declare-fun m!303999 () Bool)

(assert (=> b!248257 m!303999))

(declare-fun m!304001 () Bool)

(assert (=> b!248290 m!304001))

(assert (=> b!248290 m!304001))

(declare-fun m!304003 () Bool)

(assert (=> b!248290 m!304003))

(declare-fun m!304005 () Bool)

(assert (=> b!248290 m!304005))

(declare-fun m!304007 () Bool)

(assert (=> start!26342 m!304007))

(declare-fun m!304009 () Bool)

(assert (=> b!248287 m!304009))

(declare-fun m!304011 () Bool)

(assert (=> b!248272 m!304011))

(declare-fun m!304013 () Bool)

(assert (=> b!248272 m!304013))

(declare-fun m!304015 () Bool)

(assert (=> b!248256 m!304015))

(declare-fun m!304017 () Bool)

(assert (=> b!248256 m!304017))

(declare-fun m!304019 () Bool)

(assert (=> b!248264 m!304019))

(declare-fun m!304021 () Bool)

(assert (=> b!248263 m!304021))

(declare-fun m!304023 () Bool)

(assert (=> b!248267 m!304023))

(declare-fun m!304025 () Bool)

(assert (=> b!248282 m!304025))

(declare-fun m!304027 () Bool)

(assert (=> b!248282 m!304027))

(declare-fun m!304029 () Bool)

(assert (=> b!248271 m!304029))

(declare-fun m!304031 () Bool)

(assert (=> b!248273 m!304031))

(declare-fun m!304033 () Bool)

(assert (=> b!248278 m!304033))

(declare-fun m!304035 () Bool)

(assert (=> b!248270 m!304035))

(declare-fun m!304037 () Bool)

(assert (=> b!248270 m!304037))

(check-sat (not b!248272) (not start!26342) (not b!248256) (not b!248262) (not b!248266) (not b!248278) (not b!248267) (not b!248259) (not b!248274) (not b!248277) (not b!248281) (not b!248260) b_and!18709 (not b!248263) (not b!248265) (not b!248276) (not b!248285) (not b_next!9247) (not b!248288) b_and!18719 (not b!248290) (not b!248261) (not b_next!9243) (not b!248264) (not b!248273) b_and!18717 (not b!248275) (not b_next!9251) (not b!248300) (not b!248286) (not b!248257) b_and!18713 (not b!248271) (not b!248282) (not b!248270) (not b!248284) (not b!248280) (not b_next!9249) b_and!18715 (not b_next!9241) b_and!18711 (not b_next!9245) (not b!248287))
(check-sat b_and!18709 (not b_next!9247) b_and!18719 (not b_next!9251) b_and!18713 (not b_next!9245) (not b_next!9243) b_and!18717 (not b_next!9249) b_and!18715 (not b_next!9241) b_and!18711)
