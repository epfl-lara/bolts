; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!310036 () Bool)

(assert start!310036)

(declare-fun b!3322984 () Bool)

(declare-fun b_free!87381 () Bool)

(declare-fun b_next!88085 () Bool)

(assert (=> b!3322984 (= b_free!87381 (not b_next!88085))))

(declare-fun tp!1038050 () Bool)

(declare-fun b_and!228859 () Bool)

(assert (=> b!3322984 (= tp!1038050 b_and!228859)))

(declare-fun b_free!87383 () Bool)

(declare-fun b_next!88087 () Bool)

(assert (=> b!3322984 (= b_free!87383 (not b_next!88087))))

(declare-fun tp!1038056 () Bool)

(declare-fun b_and!228861 () Bool)

(assert (=> b!3322984 (= tp!1038056 b_and!228861)))

(declare-fun b!3322992 () Bool)

(declare-fun b_free!87385 () Bool)

(declare-fun b_next!88089 () Bool)

(assert (=> b!3322992 (= b_free!87385 (not b_next!88089))))

(declare-fun tp!1038059 () Bool)

(declare-fun b_and!228863 () Bool)

(assert (=> b!3322992 (= tp!1038059 b_and!228863)))

(declare-fun b_free!87387 () Bool)

(declare-fun b_next!88091 () Bool)

(assert (=> b!3322992 (= b_free!87387 (not b_next!88091))))

(declare-fun tp!1038057 () Bool)

(declare-fun b_and!228865 () Bool)

(assert (=> b!3322992 (= tp!1038057 b_and!228865)))

(declare-fun b!3322977 () Bool)

(declare-fun b_free!87389 () Bool)

(declare-fun b_next!88093 () Bool)

(assert (=> b!3322977 (= b_free!87389 (not b_next!88093))))

(declare-fun tp!1038060 () Bool)

(declare-fun b_and!228867 () Bool)

(assert (=> b!3322977 (= tp!1038060 b_and!228867)))

(declare-fun b_free!87391 () Bool)

(declare-fun b_next!88095 () Bool)

(assert (=> b!3322977 (= b_free!87391 (not b_next!88095))))

(declare-fun tp!1038058 () Bool)

(declare-fun b_and!228869 () Bool)

(assert (=> b!3322977 (= tp!1038058 b_and!228869)))

(declare-fun e!2066553 () Bool)

(assert (=> b!3322977 (= e!2066553 (and tp!1038060 tp!1038058))))

(declare-fun b!3322978 () Bool)

(declare-fun res!1347989 () Bool)

(declare-fun e!2066550 () Bool)

(assert (=> b!3322978 (=> (not res!1347989) (not e!2066550))))

(declare-datatypes ((C!20346 0))(
  ( (C!20347 (val!12221 Int)) )
))
(declare-datatypes ((Regex!10080 0))(
  ( (ElementMatch!10080 (c!564486 C!20346)) (Concat!15631 (regOne!20672 Regex!10080) (regTwo!20672 Regex!10080)) (EmptyExpr!10080) (Star!10080 (reg!10409 Regex!10080)) (EmptyLang!10080) (Union!10080 (regOne!20673 Regex!10080) (regTwo!20673 Regex!10080)) )
))
(declare-datatypes ((List!36740 0))(
  ( (Nil!36616) (Cons!36616 (h!42036 (_ BitVec 16)) (t!256293 List!36740)) )
))
(declare-datatypes ((TokenValue!5551 0))(
  ( (FloatLiteralValue!11102 (text!39302 List!36740)) (TokenValueExt!5550 (__x!23319 Int)) (Broken!27755 (value!172084 List!36740)) (Object!5674) (End!5551) (Def!5551) (Underscore!5551) (Match!5551) (Else!5551) (Error!5551) (Case!5551) (If!5551) (Extends!5551) (Abstract!5551) (Class!5551) (Val!5551) (DelimiterValue!11102 (del!5611 List!36740)) (KeywordValue!5557 (value!172085 List!36740)) (CommentValue!11102 (value!172086 List!36740)) (WhitespaceValue!11102 (value!172087 List!36740)) (IndentationValue!5551 (value!172088 List!36740)) (String!41090) (Int32!5551) (Broken!27756 (value!172089 List!36740)) (Boolean!5552) (Unit!51636) (OperatorValue!5554 (op!5611 List!36740)) (IdentifierValue!11102 (value!172090 List!36740)) (IdentifierValue!11103 (value!172091 List!36740)) (WhitespaceValue!11103 (value!172092 List!36740)) (True!11102) (False!11102) (Broken!27757 (value!172093 List!36740)) (Broken!27758 (value!172094 List!36740)) (True!11103) (RightBrace!5551) (RightBracket!5551) (Colon!5551) (Null!5551) (Comma!5551) (LeftBracket!5551) (False!11103) (LeftBrace!5551) (ImaginaryLiteralValue!5551 (text!39303 List!36740)) (StringLiteralValue!16653 (value!172095 List!36740)) (EOFValue!5551 (value!172096 List!36740)) (IdentValue!5551 (value!172097 List!36740)) (DelimiterValue!11103 (value!172098 List!36740)) (DedentValue!5551 (value!172099 List!36740)) (NewLineValue!5551 (value!172100 List!36740)) (IntegerValue!16653 (value!172101 (_ BitVec 32)) (text!39304 List!36740)) (IntegerValue!16654 (value!172102 Int) (text!39305 List!36740)) (Times!5551) (Or!5551) (Equal!5551) (Minus!5551) (Broken!27759 (value!172103 List!36740)) (And!5551) (Div!5551) (LessEqual!5551) (Mod!5551) (Concat!15632) (Not!5551) (Plus!5551) (SpaceValue!5551 (value!172104 List!36740)) (IntegerValue!16655 (value!172105 Int) (text!39306 List!36740)) (StringLiteralValue!16654 (text!39307 List!36740)) (FloatLiteralValue!11103 (text!39308 List!36740)) (BytesLiteralValue!5551 (value!172106 List!36740)) (CommentValue!11103 (value!172107 List!36740)) (StringLiteralValue!16655 (value!172108 List!36740)) (ErrorTokenValue!5551 (msg!5612 List!36740)) )
))
(declare-datatypes ((List!36741 0))(
  ( (Nil!36617) (Cons!36617 (h!42037 C!20346) (t!256294 List!36741)) )
))
(declare-datatypes ((IArray!22039 0))(
  ( (IArray!22040 (innerList!11077 List!36741)) )
))
(declare-datatypes ((Conc!11017 0))(
  ( (Node!11017 (left!28536 Conc!11017) (right!28866 Conc!11017) (csize!22264 Int) (cheight!11228 Int)) (Leaf!17289 (xs!14155 IArray!22039) (csize!22265 Int)) (Empty!11017) )
))
(declare-datatypes ((BalanceConc!21648 0))(
  ( (BalanceConc!21649 (c!564487 Conc!11017)) )
))
(declare-datatypes ((String!41091 0))(
  ( (String!41092 (value!172109 String)) )
))
(declare-datatypes ((TokenValueInjection!10530 0))(
  ( (TokenValueInjection!10531 (toValue!7477 Int) (toChars!7336 Int)) )
))
(declare-datatypes ((Rule!10442 0))(
  ( (Rule!10443 (regex!5321 Regex!10080) (tag!5873 String!41091) (isSeparator!5321 Bool) (transformation!5321 TokenValueInjection!10530)) )
))
(declare-datatypes ((Token!10008 0))(
  ( (Token!10009 (value!172110 TokenValue!5551) (rule!7843 Rule!10442) (size!27676 Int) (originalCharacters!6035 List!36741)) )
))
(declare-datatypes ((List!36742 0))(
  ( (Nil!36618) (Cons!36618 (h!42038 Token!10008) (t!256295 List!36742)) )
))
(declare-fun tokens!494 () List!36742)

(declare-fun lambda!119570 () Int)

(declare-fun forall!7624 (List!36742 Int) Bool)

(assert (=> b!3322978 (= res!1347989 (forall!7624 tokens!494 lambda!119570))))

(declare-fun b!3322979 () Bool)

(declare-fun e!2066560 () Bool)

(declare-fun e!2066558 () Bool)

(declare-fun tp!1038055 () Bool)

(assert (=> b!3322979 (= e!2066560 (and e!2066558 tp!1038055))))

(declare-fun b!3322980 () Bool)

(declare-fun size!27677 (List!36742) Int)

(assert (=> b!3322980 (= e!2066550 (< (size!27677 tokens!494) 0))))

(declare-fun b!3322981 () Bool)

(declare-fun e!2066562 () Bool)

(declare-fun tp!1038054 () Bool)

(declare-fun inv!49610 (String!41091) Bool)

(declare-fun inv!49613 (TokenValueInjection!10530) Bool)

(assert (=> b!3322981 (= e!2066562 (and tp!1038054 (inv!49610 (tag!5873 (rule!7843 (h!42038 tokens!494)))) (inv!49613 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) e!2066553))))

(declare-fun separatorToken!241 () Token!10008)

(declare-fun e!2066556 () Bool)

(declare-fun b!3322982 () Bool)

(declare-fun tp!1038053 () Bool)

(declare-fun e!2066563 () Bool)

(assert (=> b!3322982 (= e!2066556 (and tp!1038053 (inv!49610 (tag!5873 (rule!7843 separatorToken!241))) (inv!49613 (transformation!5321 (rule!7843 separatorToken!241))) e!2066563))))

(declare-fun b!3322983 () Bool)

(declare-datatypes ((List!36743 0))(
  ( (Nil!36619) (Cons!36619 (h!42039 Rule!10442) (t!256296 List!36743)) )
))
(declare-fun rules!2135 () List!36743)

(declare-fun e!2066551 () Bool)

(declare-fun tp!1038052 () Bool)

(assert (=> b!3322983 (= e!2066558 (and tp!1038052 (inv!49610 (tag!5873 (h!42039 rules!2135))) (inv!49613 (transformation!5321 (h!42039 rules!2135))) e!2066551))))

(assert (=> b!3322984 (= e!2066563 (and tp!1038050 tp!1038056))))

(declare-fun res!1347996 () Bool)

(assert (=> start!310036 (=> (not res!1347996) (not e!2066550))))

(declare-datatypes ((LexerInterface!4910 0))(
  ( (LexerInterfaceExt!4907 (__x!23320 Int)) (Lexer!4908) )
))
(declare-fun thiss!18206 () LexerInterface!4910)

(assert (=> start!310036 (= res!1347996 (is-Lexer!4908 thiss!18206))))

(assert (=> start!310036 e!2066550))

(assert (=> start!310036 true))

(assert (=> start!310036 e!2066560))

(declare-fun e!2066559 () Bool)

(assert (=> start!310036 e!2066559))

(declare-fun e!2066555 () Bool)

(declare-fun inv!49614 (Token!10008) Bool)

(assert (=> start!310036 (and (inv!49614 separatorToken!241) e!2066555)))

(declare-fun e!2066564 () Bool)

(declare-fun b!3322985 () Bool)

(declare-fun tp!1038049 () Bool)

(assert (=> b!3322985 (= e!2066559 (and (inv!49614 (h!42038 tokens!494)) e!2066564 tp!1038049))))

(declare-fun b!3322986 () Bool)

(declare-fun res!1347990 () Bool)

(assert (=> b!3322986 (=> (not res!1347990) (not e!2066550))))

(declare-datatypes ((IArray!22041 0))(
  ( (IArray!22042 (innerList!11078 List!36742)) )
))
(declare-datatypes ((Conc!11018 0))(
  ( (Node!11018 (left!28537 Conc!11018) (right!28867 Conc!11018) (csize!22266 Int) (cheight!11229 Int)) (Leaf!17290 (xs!14156 IArray!22041) (csize!22267 Int)) (Empty!11018) )
))
(declare-datatypes ((BalanceConc!21650 0))(
  ( (BalanceConc!21651 (c!564488 Conc!11018)) )
))
(declare-fun rulesProduceEachTokenIndividually!1361 (LexerInterface!4910 List!36743 BalanceConc!21650) Bool)

(declare-fun seqFromList!3697 (List!36742) BalanceConc!21650)

(assert (=> b!3322986 (= res!1347990 (rulesProduceEachTokenIndividually!1361 thiss!18206 rules!2135 (seqFromList!3697 tokens!494)))))

(declare-fun b!3322987 () Bool)

(declare-fun res!1347993 () Bool)

(assert (=> b!3322987 (=> (not res!1347993) (not e!2066550))))

(declare-fun isEmpty!20776 (List!36743) Bool)

(assert (=> b!3322987 (= res!1347993 (not (isEmpty!20776 rules!2135)))))

(declare-fun b!3322988 () Bool)

(declare-fun res!1347995 () Bool)

(assert (=> b!3322988 (=> (not res!1347995) (not e!2066550))))

(assert (=> b!3322988 (= res!1347995 (isSeparator!5321 (rule!7843 separatorToken!241)))))

(declare-fun b!3322989 () Bool)

(declare-fun tp!1038051 () Bool)

(declare-fun inv!21 (TokenValue!5551) Bool)

(assert (=> b!3322989 (= e!2066555 (and (inv!21 (value!172110 separatorToken!241)) e!2066556 tp!1038051))))

(declare-fun b!3322990 () Bool)

(declare-fun res!1347994 () Bool)

(assert (=> b!3322990 (=> (not res!1347994) (not e!2066550))))

(declare-fun sepAndNonSepRulesDisjointChars!1515 (List!36743 List!36743) Bool)

(assert (=> b!3322990 (= res!1347994 (sepAndNonSepRulesDisjointChars!1515 rules!2135 rules!2135))))

(declare-fun b!3322991 () Bool)

(declare-fun res!1347991 () Bool)

(assert (=> b!3322991 (=> (not res!1347991) (not e!2066550))))

(declare-fun rulesProduceIndividualToken!2402 (LexerInterface!4910 List!36743 Token!10008) Bool)

(assert (=> b!3322991 (= res!1347991 (rulesProduceIndividualToken!2402 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3322992 (= e!2066551 (and tp!1038059 tp!1038057))))

(declare-fun b!3322993 () Bool)

(declare-fun res!1347992 () Bool)

(assert (=> b!3322993 (=> (not res!1347992) (not e!2066550))))

(declare-fun rulesInvariant!4307 (LexerInterface!4910 List!36743) Bool)

(assert (=> b!3322993 (= res!1347992 (rulesInvariant!4307 thiss!18206 rules!2135))))

(declare-fun b!3322994 () Bool)

(declare-fun tp!1038061 () Bool)

(assert (=> b!3322994 (= e!2066564 (and (inv!21 (value!172110 (h!42038 tokens!494))) e!2066562 tp!1038061))))

(assert (= (and start!310036 res!1347996) b!3322987))

(assert (= (and b!3322987 res!1347993) b!3322993))

(assert (= (and b!3322993 res!1347992) b!3322986))

(assert (= (and b!3322986 res!1347990) b!3322991))

(assert (= (and b!3322991 res!1347991) b!3322988))

(assert (= (and b!3322988 res!1347995) b!3322978))

(assert (= (and b!3322978 res!1347989) b!3322990))

(assert (= (and b!3322990 res!1347994) b!3322980))

(assert (= b!3322983 b!3322992))

(assert (= b!3322979 b!3322983))

(assert (= (and start!310036 (is-Cons!36619 rules!2135)) b!3322979))

(assert (= b!3322981 b!3322977))

(assert (= b!3322994 b!3322981))

(assert (= b!3322985 b!3322994))

(assert (= (and start!310036 (is-Cons!36618 tokens!494)) b!3322985))

(assert (= b!3322982 b!3322984))

(assert (= b!3322989 b!3322982))

(assert (= start!310036 b!3322989))

(declare-fun m!3662279 () Bool)

(assert (=> b!3322978 m!3662279))

(declare-fun m!3662281 () Bool)

(assert (=> b!3322983 m!3662281))

(declare-fun m!3662283 () Bool)

(assert (=> b!3322983 m!3662283))

(declare-fun m!3662285 () Bool)

(assert (=> b!3322980 m!3662285))

(declare-fun m!3662287 () Bool)

(assert (=> b!3322987 m!3662287))

(declare-fun m!3662289 () Bool)

(assert (=> b!3322982 m!3662289))

(declare-fun m!3662291 () Bool)

(assert (=> b!3322982 m!3662291))

(declare-fun m!3662293 () Bool)

(assert (=> b!3322985 m!3662293))

(declare-fun m!3662295 () Bool)

(assert (=> b!3322986 m!3662295))

(assert (=> b!3322986 m!3662295))

(declare-fun m!3662297 () Bool)

(assert (=> b!3322986 m!3662297))

(declare-fun m!3662299 () Bool)

(assert (=> b!3322990 m!3662299))

(declare-fun m!3662301 () Bool)

(assert (=> b!3322989 m!3662301))

(declare-fun m!3662303 () Bool)

(assert (=> b!3322994 m!3662303))

(declare-fun m!3662305 () Bool)

(assert (=> start!310036 m!3662305))

(declare-fun m!3662307 () Bool)

(assert (=> b!3322981 m!3662307))

(declare-fun m!3662309 () Bool)

(assert (=> b!3322981 m!3662309))

(declare-fun m!3662311 () Bool)

(assert (=> b!3322991 m!3662311))

(declare-fun m!3662313 () Bool)

(assert (=> b!3322993 m!3662313))

(push 1)

(assert (not b!3322987))

(assert (not b!3322978))

(assert (not b!3322983))

(assert (not b_next!88089))

(assert (not b!3322989))

(assert (not b!3322991))

(assert (not b!3322980))

(assert (not b!3322979))

(assert (not b!3322986))

(assert (not b!3322993))

(assert b_and!228861)

(assert (not b_next!88093))

(assert (not b_next!88091))

(assert (not b!3322985))

(assert (not b!3322981))

(assert (not b_next!88087))

(assert b_and!228865)

(assert b_and!228859)

(assert (not b_next!88085))

(assert b_and!228867)

(assert b_and!228869)

(assert (not b!3322990))

(assert (not b!3322982))

(assert (not b_next!88095))

(assert b_and!228863)

(assert (not start!310036))

(assert (not b!3322994))

(check-sat)

(pop 1)

(push 1)

(assert b_and!228861)

(assert (not b_next!88089))

(assert (not b_next!88093))

(assert (not b_next!88091))

(assert (not b_next!88087))

(assert b_and!228865)

(assert b_and!228859)

(assert (not b_next!88085))

(assert b_and!228867)

(assert b_and!228869)

(assert (not b_next!88095))

(assert b_and!228863)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!550652 () Bool)

(declare-fun d!934146 () Bool)

(assert (= bs!550652 (and d!934146 b!3322978)))

(declare-fun lambda!119578 () Int)

(assert (=> bs!550652 (not (= lambda!119578 lambda!119570))))

(declare-fun b!3323097 () Bool)

(declare-fun e!2066648 () Bool)

(assert (=> b!3323097 (= e!2066648 true)))

(declare-fun b!3323096 () Bool)

(declare-fun e!2066647 () Bool)

(assert (=> b!3323096 (= e!2066647 e!2066648)))

(declare-fun b!3323095 () Bool)

(declare-fun e!2066646 () Bool)

(assert (=> b!3323095 (= e!2066646 e!2066647)))

(assert (=> d!934146 e!2066646))

(assert (= b!3323096 b!3323097))

(assert (= b!3323095 b!3323096))

(assert (= (and d!934146 (is-Cons!36619 rules!2135)) b!3323095))

(declare-fun order!19119 () Int)

(declare-fun order!19121 () Int)

(declare-fun dynLambda!15073 (Int Int) Int)

(declare-fun dynLambda!15074 (Int Int) Int)

(assert (=> b!3323097 (< (dynLambda!15073 order!19119 (toValue!7477 (transformation!5321 (h!42039 rules!2135)))) (dynLambda!15074 order!19121 lambda!119578))))

(declare-fun order!19123 () Int)

(declare-fun dynLambda!15075 (Int Int) Int)

(assert (=> b!3323097 (< (dynLambda!15075 order!19123 (toChars!7336 (transformation!5321 (h!42039 rules!2135)))) (dynLambda!15074 order!19121 lambda!119578))))

(assert (=> d!934146 true))

(declare-fun e!2066639 () Bool)

(assert (=> d!934146 e!2066639))

(declare-fun res!1348051 () Bool)

(assert (=> d!934146 (=> (not res!1348051) (not e!2066639))))

(declare-fun lt!1129188 () Bool)

(declare-fun list!13172 (BalanceConc!21650) List!36742)

(assert (=> d!934146 (= res!1348051 (= lt!1129188 (forall!7624 (list!13172 (seqFromList!3697 tokens!494)) lambda!119578)))))

(declare-fun forall!7626 (BalanceConc!21650 Int) Bool)

(assert (=> d!934146 (= lt!1129188 (forall!7626 (seqFromList!3697 tokens!494) lambda!119578))))

(assert (=> d!934146 (not (isEmpty!20776 rules!2135))))

(assert (=> d!934146 (= (rulesProduceEachTokenIndividually!1361 thiss!18206 rules!2135 (seqFromList!3697 tokens!494)) lt!1129188)))

(declare-fun b!3323086 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1778 (LexerInterface!4910 List!36743 List!36742) Bool)

(assert (=> b!3323086 (= e!2066639 (= lt!1129188 (rulesProduceEachTokenIndividuallyList!1778 thiss!18206 rules!2135 (list!13172 (seqFromList!3697 tokens!494)))))))

(assert (= (and d!934146 res!1348051) b!3323086))

(assert (=> d!934146 m!3662295))

(declare-fun m!3662391 () Bool)

(assert (=> d!934146 m!3662391))

(assert (=> d!934146 m!3662391))

(declare-fun m!3662393 () Bool)

(assert (=> d!934146 m!3662393))

(assert (=> d!934146 m!3662295))

(declare-fun m!3662395 () Bool)

(assert (=> d!934146 m!3662395))

(assert (=> d!934146 m!3662287))

(assert (=> b!3323086 m!3662295))

(assert (=> b!3323086 m!3662391))

(assert (=> b!3323086 m!3662391))

(declare-fun m!3662397 () Bool)

(assert (=> b!3323086 m!3662397))

(assert (=> b!3322986 d!934146))

(declare-fun d!934164 () Bool)

(declare-fun fromListB!1632 (List!36742) BalanceConc!21650)

(assert (=> d!934164 (= (seqFromList!3697 tokens!494) (fromListB!1632 tokens!494))))

(declare-fun bs!550653 () Bool)

(assert (= bs!550653 d!934164))

(declare-fun m!3662399 () Bool)

(assert (=> bs!550653 m!3662399))

(assert (=> b!3322986 d!934164))

(declare-fun d!934166 () Bool)

(declare-fun res!1348056 () Bool)

(declare-fun e!2066651 () Bool)

(assert (=> d!934166 (=> (not res!1348056) (not e!2066651))))

(declare-fun isEmpty!20778 (List!36741) Bool)

(assert (=> d!934166 (= res!1348056 (not (isEmpty!20778 (originalCharacters!6035 (h!42038 tokens!494)))))))

(assert (=> d!934166 (= (inv!49614 (h!42038 tokens!494)) e!2066651)))

(declare-fun b!3323104 () Bool)

(declare-fun res!1348057 () Bool)

(assert (=> b!3323104 (=> (not res!1348057) (not e!2066651))))

(declare-fun list!13173 (BalanceConc!21648) List!36741)

(declare-fun dynLambda!15076 (Int TokenValue!5551) BalanceConc!21648)

(assert (=> b!3323104 (= res!1348057 (= (originalCharacters!6035 (h!42038 tokens!494)) (list!13173 (dynLambda!15076 (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) (value!172110 (h!42038 tokens!494))))))))

(declare-fun b!3323105 () Bool)

(declare-fun size!27680 (List!36741) Int)

(assert (=> b!3323105 (= e!2066651 (= (size!27676 (h!42038 tokens!494)) (size!27680 (originalCharacters!6035 (h!42038 tokens!494)))))))

(assert (= (and d!934166 res!1348056) b!3323104))

(assert (= (and b!3323104 res!1348057) b!3323105))

(declare-fun b_lambda!93657 () Bool)

(assert (=> (not b_lambda!93657) (not b!3323104)))

(declare-fun t!256315 () Bool)

(declare-fun tb!173873 () Bool)

(assert (=> (and b!3322984 (= (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494))))) t!256315) tb!173873))

(declare-fun b!3323110 () Bool)

(declare-fun e!2066654 () Bool)

(declare-fun tp!1038106 () Bool)

(declare-fun inv!49617 (Conc!11017) Bool)

(assert (=> b!3323110 (= e!2066654 (and (inv!49617 (c!564487 (dynLambda!15076 (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) (value!172110 (h!42038 tokens!494))))) tp!1038106))))

(declare-fun result!216888 () Bool)

(declare-fun inv!49618 (BalanceConc!21648) Bool)

(assert (=> tb!173873 (= result!216888 (and (inv!49618 (dynLambda!15076 (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) (value!172110 (h!42038 tokens!494)))) e!2066654))))

(assert (= tb!173873 b!3323110))

(declare-fun m!3662401 () Bool)

(assert (=> b!3323110 m!3662401))

(declare-fun m!3662403 () Bool)

(assert (=> tb!173873 m!3662403))

(assert (=> b!3323104 t!256315))

(declare-fun b_and!228889 () Bool)

(assert (= b_and!228861 (and (=> t!256315 result!216888) b_and!228889)))

(declare-fun t!256317 () Bool)

(declare-fun tb!173875 () Bool)

(assert (=> (and b!3322992 (= (toChars!7336 (transformation!5321 (h!42039 rules!2135))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494))))) t!256317) tb!173875))

(declare-fun result!216892 () Bool)

(assert (= result!216892 result!216888))

(assert (=> b!3323104 t!256317))

(declare-fun b_and!228891 () Bool)

(assert (= b_and!228865 (and (=> t!256317 result!216892) b_and!228891)))

(declare-fun t!256319 () Bool)

(declare-fun tb!173877 () Bool)

(assert (=> (and b!3322977 (= (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494))))) t!256319) tb!173877))

(declare-fun result!216894 () Bool)

(assert (= result!216894 result!216888))

(assert (=> b!3323104 t!256319))

(declare-fun b_and!228893 () Bool)

(assert (= b_and!228869 (and (=> t!256319 result!216894) b_and!228893)))

(declare-fun m!3662405 () Bool)

(assert (=> d!934166 m!3662405))

(declare-fun m!3662407 () Bool)

(assert (=> b!3323104 m!3662407))

(assert (=> b!3323104 m!3662407))

(declare-fun m!3662409 () Bool)

(assert (=> b!3323104 m!3662409))

(declare-fun m!3662411 () Bool)

(assert (=> b!3323105 m!3662411))

(assert (=> b!3322985 d!934166))

(declare-fun d!934168 () Bool)

(assert (=> d!934168 (= (isEmpty!20776 rules!2135) (is-Nil!36619 rules!2135))))

(assert (=> b!3322987 d!934168))

(declare-fun d!934170 () Bool)

(assert (=> d!934170 (= (inv!49610 (tag!5873 (h!42039 rules!2135))) (= (mod (str.len (value!172109 (tag!5873 (h!42039 rules!2135)))) 2) 0))))

(assert (=> b!3322983 d!934170))

(declare-fun d!934172 () Bool)

(declare-fun res!1348060 () Bool)

(declare-fun e!2066657 () Bool)

(assert (=> d!934172 (=> (not res!1348060) (not e!2066657))))

(declare-fun semiInverseModEq!2206 (Int Int) Bool)

(assert (=> d!934172 (= res!1348060 (semiInverseModEq!2206 (toChars!7336 (transformation!5321 (h!42039 rules!2135))) (toValue!7477 (transformation!5321 (h!42039 rules!2135)))))))

(assert (=> d!934172 (= (inv!49613 (transformation!5321 (h!42039 rules!2135))) e!2066657)))

(declare-fun b!3323113 () Bool)

(declare-fun equivClasses!2105 (Int Int) Bool)

(assert (=> b!3323113 (= e!2066657 (equivClasses!2105 (toChars!7336 (transformation!5321 (h!42039 rules!2135))) (toValue!7477 (transformation!5321 (h!42039 rules!2135)))))))

(assert (= (and d!934172 res!1348060) b!3323113))

(declare-fun m!3662413 () Bool)

(assert (=> d!934172 m!3662413))

(declare-fun m!3662415 () Bool)

(assert (=> b!3323113 m!3662415))

(assert (=> b!3322983 d!934172))

(declare-fun b!3323124 () Bool)

(declare-fun e!2066664 () Bool)

(declare-fun inv!17 (TokenValue!5551) Bool)

(assert (=> b!3323124 (= e!2066664 (inv!17 (value!172110 (h!42038 tokens!494))))))

(declare-fun b!3323125 () Bool)

(declare-fun e!2066665 () Bool)

(declare-fun inv!15 (TokenValue!5551) Bool)

(assert (=> b!3323125 (= e!2066665 (inv!15 (value!172110 (h!42038 tokens!494))))))

(declare-fun b!3323126 () Bool)

(declare-fun e!2066666 () Bool)

(assert (=> b!3323126 (= e!2066666 e!2066664)))

(declare-fun c!564500 () Bool)

(assert (=> b!3323126 (= c!564500 (is-IntegerValue!16654 (value!172110 (h!42038 tokens!494))))))

(declare-fun b!3323127 () Bool)

(declare-fun inv!16 (TokenValue!5551) Bool)

(assert (=> b!3323127 (= e!2066666 (inv!16 (value!172110 (h!42038 tokens!494))))))

(declare-fun b!3323128 () Bool)

(declare-fun res!1348063 () Bool)

(assert (=> b!3323128 (=> res!1348063 e!2066665)))

(assert (=> b!3323128 (= res!1348063 (not (is-IntegerValue!16655 (value!172110 (h!42038 tokens!494)))))))

(assert (=> b!3323128 (= e!2066664 e!2066665)))

(declare-fun d!934174 () Bool)

(declare-fun c!564501 () Bool)

(assert (=> d!934174 (= c!564501 (is-IntegerValue!16653 (value!172110 (h!42038 tokens!494))))))

(assert (=> d!934174 (= (inv!21 (value!172110 (h!42038 tokens!494))) e!2066666)))

(assert (= (and d!934174 c!564501) b!3323127))

(assert (= (and d!934174 (not c!564501)) b!3323126))

(assert (= (and b!3323126 c!564500) b!3323124))

(assert (= (and b!3323126 (not c!564500)) b!3323128))

(assert (= (and b!3323128 (not res!1348063)) b!3323125))

(declare-fun m!3662417 () Bool)

(assert (=> b!3323124 m!3662417))

(declare-fun m!3662419 () Bool)

(assert (=> b!3323125 m!3662419))

(declare-fun m!3662421 () Bool)

(assert (=> b!3323127 m!3662421))

(assert (=> b!3322994 d!934174))

(declare-fun d!934176 () Bool)

(declare-fun res!1348066 () Bool)

(declare-fun e!2066669 () Bool)

(assert (=> d!934176 (=> (not res!1348066) (not e!2066669))))

(declare-fun rulesValid!1966 (LexerInterface!4910 List!36743) Bool)

(assert (=> d!934176 (= res!1348066 (rulesValid!1966 thiss!18206 rules!2135))))

(assert (=> d!934176 (= (rulesInvariant!4307 thiss!18206 rules!2135) e!2066669)))

(declare-fun b!3323131 () Bool)

(declare-datatypes ((List!36748 0))(
  ( (Nil!36624) (Cons!36624 (h!42044 String!41091) (t!256335 List!36748)) )
))
(declare-fun noDuplicateTag!1962 (LexerInterface!4910 List!36743 List!36748) Bool)

(assert (=> b!3323131 (= e!2066669 (noDuplicateTag!1962 thiss!18206 rules!2135 Nil!36624))))

(assert (= (and d!934176 res!1348066) b!3323131))

(declare-fun m!3662423 () Bool)

(assert (=> d!934176 m!3662423))

(declare-fun m!3662425 () Bool)

(assert (=> b!3323131 m!3662425))

(assert (=> b!3322993 d!934176))

(declare-fun d!934178 () Bool)

(declare-fun lt!1129193 () Bool)

(declare-fun e!2066674 () Bool)

(assert (=> d!934178 (= lt!1129193 e!2066674)))

(declare-fun res!1348074 () Bool)

(assert (=> d!934178 (=> (not res!1348074) (not e!2066674))))

(declare-datatypes ((tuple2!36124 0))(
  ( (tuple2!36125 (_1!21196 BalanceConc!21650) (_2!21196 BalanceConc!21648)) )
))
(declare-fun lex!2236 (LexerInterface!4910 List!36743 BalanceConc!21648) tuple2!36124)

(declare-fun print!1975 (LexerInterface!4910 BalanceConc!21650) BalanceConc!21648)

(declare-fun singletonSeq!2417 (Token!10008) BalanceConc!21650)

(assert (=> d!934178 (= res!1348074 (= (list!13172 (_1!21196 (lex!2236 thiss!18206 rules!2135 (print!1975 thiss!18206 (singletonSeq!2417 separatorToken!241))))) (list!13172 (singletonSeq!2417 separatorToken!241))))))

(declare-fun e!2066675 () Bool)

(assert (=> d!934178 (= lt!1129193 e!2066675)))

(declare-fun res!1348075 () Bool)

(assert (=> d!934178 (=> (not res!1348075) (not e!2066675))))

(declare-fun lt!1129194 () tuple2!36124)

(declare-fun size!27681 (BalanceConc!21650) Int)

(assert (=> d!934178 (= res!1348075 (= (size!27681 (_1!21196 lt!1129194)) 1))))

(assert (=> d!934178 (= lt!1129194 (lex!2236 thiss!18206 rules!2135 (print!1975 thiss!18206 (singletonSeq!2417 separatorToken!241))))))

(assert (=> d!934178 (not (isEmpty!20776 rules!2135))))

(assert (=> d!934178 (= (rulesProduceIndividualToken!2402 thiss!18206 rules!2135 separatorToken!241) lt!1129193)))

(declare-fun b!3323138 () Bool)

(declare-fun res!1348073 () Bool)

(assert (=> b!3323138 (=> (not res!1348073) (not e!2066675))))

(declare-fun apply!8446 (BalanceConc!21650 Int) Token!10008)

(assert (=> b!3323138 (= res!1348073 (= (apply!8446 (_1!21196 lt!1129194) 0) separatorToken!241))))

(declare-fun b!3323139 () Bool)

(declare-fun isEmpty!20779 (BalanceConc!21648) Bool)

(assert (=> b!3323139 (= e!2066675 (isEmpty!20779 (_2!21196 lt!1129194)))))

(declare-fun b!3323140 () Bool)

(assert (=> b!3323140 (= e!2066674 (isEmpty!20779 (_2!21196 (lex!2236 thiss!18206 rules!2135 (print!1975 thiss!18206 (singletonSeq!2417 separatorToken!241))))))))

(assert (= (and d!934178 res!1348075) b!3323138))

(assert (= (and b!3323138 res!1348073) b!3323139))

(assert (= (and d!934178 res!1348074) b!3323140))

(declare-fun m!3662427 () Bool)

(assert (=> d!934178 m!3662427))

(declare-fun m!3662429 () Bool)

(assert (=> d!934178 m!3662429))

(declare-fun m!3662431 () Bool)

(assert (=> d!934178 m!3662431))

(assert (=> d!934178 m!3662427))

(declare-fun m!3662433 () Bool)

(assert (=> d!934178 m!3662433))

(assert (=> d!934178 m!3662427))

(assert (=> d!934178 m!3662429))

(assert (=> d!934178 m!3662287))

(declare-fun m!3662435 () Bool)

(assert (=> d!934178 m!3662435))

(declare-fun m!3662437 () Bool)

(assert (=> d!934178 m!3662437))

(declare-fun m!3662439 () Bool)

(assert (=> b!3323138 m!3662439))

(declare-fun m!3662441 () Bool)

(assert (=> b!3323139 m!3662441))

(assert (=> b!3323140 m!3662427))

(assert (=> b!3323140 m!3662427))

(assert (=> b!3323140 m!3662429))

(assert (=> b!3323140 m!3662429))

(assert (=> b!3323140 m!3662431))

(declare-fun m!3662443 () Bool)

(assert (=> b!3323140 m!3662443))

(assert (=> b!3322991 d!934178))

(declare-fun d!934180 () Bool)

(declare-fun lt!1129197 () Int)

(assert (=> d!934180 (>= lt!1129197 0)))

(declare-fun e!2066678 () Int)

(assert (=> d!934180 (= lt!1129197 e!2066678)))

(declare-fun c!564504 () Bool)

(assert (=> d!934180 (= c!564504 (is-Nil!36618 tokens!494))))

(assert (=> d!934180 (= (size!27677 tokens!494) lt!1129197)))

(declare-fun b!3323145 () Bool)

(assert (=> b!3323145 (= e!2066678 0)))

(declare-fun b!3323146 () Bool)

(assert (=> b!3323146 (= e!2066678 (+ 1 (size!27677 (t!256295 tokens!494))))))

(assert (= (and d!934180 c!564504) b!3323145))

(assert (= (and d!934180 (not c!564504)) b!3323146))

(declare-fun m!3662445 () Bool)

(assert (=> b!3323146 m!3662445))

(assert (=> b!3322980 d!934180))

(declare-fun d!934182 () Bool)

(declare-fun res!1348076 () Bool)

(declare-fun e!2066679 () Bool)

(assert (=> d!934182 (=> (not res!1348076) (not e!2066679))))

(assert (=> d!934182 (= res!1348076 (not (isEmpty!20778 (originalCharacters!6035 separatorToken!241))))))

(assert (=> d!934182 (= (inv!49614 separatorToken!241) e!2066679)))

(declare-fun b!3323147 () Bool)

(declare-fun res!1348077 () Bool)

(assert (=> b!3323147 (=> (not res!1348077) (not e!2066679))))

(assert (=> b!3323147 (= res!1348077 (= (originalCharacters!6035 separatorToken!241) (list!13173 (dynLambda!15076 (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))) (value!172110 separatorToken!241)))))))

(declare-fun b!3323148 () Bool)

(assert (=> b!3323148 (= e!2066679 (= (size!27676 separatorToken!241) (size!27680 (originalCharacters!6035 separatorToken!241))))))

(assert (= (and d!934182 res!1348076) b!3323147))

(assert (= (and b!3323147 res!1348077) b!3323148))

(declare-fun b_lambda!93659 () Bool)

(assert (=> (not b_lambda!93659) (not b!3323147)))

(declare-fun t!256322 () Bool)

(declare-fun tb!173879 () Bool)

(assert (=> (and b!3322984 (= (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241)))) t!256322) tb!173879))

(declare-fun b!3323149 () Bool)

(declare-fun e!2066680 () Bool)

(declare-fun tp!1038107 () Bool)

(assert (=> b!3323149 (= e!2066680 (and (inv!49617 (c!564487 (dynLambda!15076 (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))) (value!172110 separatorToken!241)))) tp!1038107))))

(declare-fun result!216896 () Bool)

(assert (=> tb!173879 (= result!216896 (and (inv!49618 (dynLambda!15076 (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))) (value!172110 separatorToken!241))) e!2066680))))

(assert (= tb!173879 b!3323149))

(declare-fun m!3662447 () Bool)

(assert (=> b!3323149 m!3662447))

(declare-fun m!3662449 () Bool)

(assert (=> tb!173879 m!3662449))

(assert (=> b!3323147 t!256322))

(declare-fun b_and!228895 () Bool)

(assert (= b_and!228889 (and (=> t!256322 result!216896) b_and!228895)))

(declare-fun t!256324 () Bool)

(declare-fun tb!173881 () Bool)

(assert (=> (and b!3322992 (= (toChars!7336 (transformation!5321 (h!42039 rules!2135))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241)))) t!256324) tb!173881))

(declare-fun result!216898 () Bool)

(assert (= result!216898 result!216896))

(assert (=> b!3323147 t!256324))

(declare-fun b_and!228897 () Bool)

(assert (= b_and!228891 (and (=> t!256324 result!216898) b_and!228897)))

(declare-fun tb!173883 () Bool)

(declare-fun t!256326 () Bool)

(assert (=> (and b!3322977 (= (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241)))) t!256326) tb!173883))

(declare-fun result!216900 () Bool)

(assert (= result!216900 result!216896))

(assert (=> b!3323147 t!256326))

(declare-fun b_and!228899 () Bool)

(assert (= b_and!228893 (and (=> t!256326 result!216900) b_and!228899)))

(declare-fun m!3662451 () Bool)

(assert (=> d!934182 m!3662451))

(declare-fun m!3662453 () Bool)

(assert (=> b!3323147 m!3662453))

(assert (=> b!3323147 m!3662453))

(declare-fun m!3662455 () Bool)

(assert (=> b!3323147 m!3662455))

(declare-fun m!3662457 () Bool)

(assert (=> b!3323148 m!3662457))

(assert (=> start!310036 d!934182))

(declare-fun d!934184 () Bool)

(assert (=> d!934184 (= (inv!49610 (tag!5873 (rule!7843 separatorToken!241))) (= (mod (str.len (value!172109 (tag!5873 (rule!7843 separatorToken!241)))) 2) 0))))

(assert (=> b!3322982 d!934184))

(declare-fun d!934186 () Bool)

(declare-fun res!1348078 () Bool)

(declare-fun e!2066681 () Bool)

(assert (=> d!934186 (=> (not res!1348078) (not e!2066681))))

(assert (=> d!934186 (= res!1348078 (semiInverseModEq!2206 (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))) (toValue!7477 (transformation!5321 (rule!7843 separatorToken!241)))))))

(assert (=> d!934186 (= (inv!49613 (transformation!5321 (rule!7843 separatorToken!241))) e!2066681)))

(declare-fun b!3323150 () Bool)

(assert (=> b!3323150 (= e!2066681 (equivClasses!2105 (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))) (toValue!7477 (transformation!5321 (rule!7843 separatorToken!241)))))))

(assert (= (and d!934186 res!1348078) b!3323150))

(declare-fun m!3662459 () Bool)

(assert (=> d!934186 m!3662459))

(declare-fun m!3662461 () Bool)

(assert (=> b!3323150 m!3662461))

(assert (=> b!3322982 d!934186))

(declare-fun d!934188 () Bool)

(assert (=> d!934188 (= (inv!49610 (tag!5873 (rule!7843 (h!42038 tokens!494)))) (= (mod (str.len (value!172109 (tag!5873 (rule!7843 (h!42038 tokens!494))))) 2) 0))))

(assert (=> b!3322981 d!934188))

(declare-fun d!934190 () Bool)

(declare-fun res!1348079 () Bool)

(declare-fun e!2066682 () Bool)

(assert (=> d!934190 (=> (not res!1348079) (not e!2066682))))

(assert (=> d!934190 (= res!1348079 (semiInverseModEq!2206 (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) (toValue!7477 (transformation!5321 (rule!7843 (h!42038 tokens!494))))))))

(assert (=> d!934190 (= (inv!49613 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) e!2066682)))

(declare-fun b!3323151 () Bool)

(assert (=> b!3323151 (= e!2066682 (equivClasses!2105 (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) (toValue!7477 (transformation!5321 (rule!7843 (h!42038 tokens!494))))))))

(assert (= (and d!934190 res!1348079) b!3323151))

(declare-fun m!3662463 () Bool)

(assert (=> d!934190 m!3662463))

(declare-fun m!3662465 () Bool)

(assert (=> b!3323151 m!3662465))

(assert (=> b!3322981 d!934190))

(declare-fun d!934192 () Bool)

(declare-fun res!1348084 () Bool)

(declare-fun e!2066687 () Bool)

(assert (=> d!934192 (=> res!1348084 e!2066687)))

(assert (=> d!934192 (= res!1348084 (is-Nil!36618 tokens!494))))

(assert (=> d!934192 (= (forall!7624 tokens!494 lambda!119570) e!2066687)))

(declare-fun b!3323156 () Bool)

(declare-fun e!2066688 () Bool)

(assert (=> b!3323156 (= e!2066687 e!2066688)))

(declare-fun res!1348085 () Bool)

(assert (=> b!3323156 (=> (not res!1348085) (not e!2066688))))

(declare-fun dynLambda!15077 (Int Token!10008) Bool)

(assert (=> b!3323156 (= res!1348085 (dynLambda!15077 lambda!119570 (h!42038 tokens!494)))))

(declare-fun b!3323157 () Bool)

(assert (=> b!3323157 (= e!2066688 (forall!7624 (t!256295 tokens!494) lambda!119570))))

(assert (= (and d!934192 (not res!1348084)) b!3323156))

(assert (= (and b!3323156 res!1348085) b!3323157))

(declare-fun b_lambda!93661 () Bool)

(assert (=> (not b_lambda!93661) (not b!3323156)))

(declare-fun m!3662467 () Bool)

(assert (=> b!3323156 m!3662467))

(declare-fun m!3662469 () Bool)

(assert (=> b!3323157 m!3662469))

(assert (=> b!3322978 d!934192))

(declare-fun d!934194 () Bool)

(declare-fun res!1348090 () Bool)

(declare-fun e!2066693 () Bool)

(assert (=> d!934194 (=> res!1348090 e!2066693)))

(assert (=> d!934194 (= res!1348090 (not (is-Cons!36619 rules!2135)))))

(assert (=> d!934194 (= (sepAndNonSepRulesDisjointChars!1515 rules!2135 rules!2135) e!2066693)))

(declare-fun b!3323162 () Bool)

(declare-fun e!2066694 () Bool)

(assert (=> b!3323162 (= e!2066693 e!2066694)))

(declare-fun res!1348091 () Bool)

(assert (=> b!3323162 (=> (not res!1348091) (not e!2066694))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!642 (Rule!10442 List!36743) Bool)

(assert (=> b!3323162 (= res!1348091 (ruleDisjointCharsFromAllFromOtherType!642 (h!42039 rules!2135) rules!2135))))

(declare-fun b!3323163 () Bool)

(assert (=> b!3323163 (= e!2066694 (sepAndNonSepRulesDisjointChars!1515 rules!2135 (t!256296 rules!2135)))))

(assert (= (and d!934194 (not res!1348090)) b!3323162))

(assert (= (and b!3323162 res!1348091) b!3323163))

(declare-fun m!3662471 () Bool)

(assert (=> b!3323162 m!3662471))

(declare-fun m!3662473 () Bool)

(assert (=> b!3323163 m!3662473))

(assert (=> b!3322990 d!934194))

(declare-fun b!3323164 () Bool)

(declare-fun e!2066695 () Bool)

(assert (=> b!3323164 (= e!2066695 (inv!17 (value!172110 separatorToken!241)))))

(declare-fun b!3323165 () Bool)

(declare-fun e!2066696 () Bool)

(assert (=> b!3323165 (= e!2066696 (inv!15 (value!172110 separatorToken!241)))))

(declare-fun b!3323166 () Bool)

(declare-fun e!2066697 () Bool)

(assert (=> b!3323166 (= e!2066697 e!2066695)))

(declare-fun c!564505 () Bool)

(assert (=> b!3323166 (= c!564505 (is-IntegerValue!16654 (value!172110 separatorToken!241)))))

(declare-fun b!3323167 () Bool)

(assert (=> b!3323167 (= e!2066697 (inv!16 (value!172110 separatorToken!241)))))

(declare-fun b!3323168 () Bool)

(declare-fun res!1348092 () Bool)

(assert (=> b!3323168 (=> res!1348092 e!2066696)))

(assert (=> b!3323168 (= res!1348092 (not (is-IntegerValue!16655 (value!172110 separatorToken!241))))))

(assert (=> b!3323168 (= e!2066695 e!2066696)))

(declare-fun d!934196 () Bool)

(declare-fun c!564506 () Bool)

(assert (=> d!934196 (= c!564506 (is-IntegerValue!16653 (value!172110 separatorToken!241)))))

(assert (=> d!934196 (= (inv!21 (value!172110 separatorToken!241)) e!2066697)))

(assert (= (and d!934196 c!564506) b!3323167))

(assert (= (and d!934196 (not c!564506)) b!3323166))

(assert (= (and b!3323166 c!564505) b!3323164))

(assert (= (and b!3323166 (not c!564505)) b!3323168))

(assert (= (and b!3323168 (not res!1348092)) b!3323165))

(declare-fun m!3662475 () Bool)

(assert (=> b!3323164 m!3662475))

(declare-fun m!3662477 () Bool)

(assert (=> b!3323165 m!3662477))

(declare-fun m!3662479 () Bool)

(assert (=> b!3323167 m!3662479))

(assert (=> b!3322989 d!934196))

(declare-fun b!3323182 () Bool)

(declare-fun b_free!87405 () Bool)

(declare-fun b_next!88109 () Bool)

(assert (=> b!3323182 (= b_free!87405 (not b_next!88109))))

(declare-fun tp!1038122 () Bool)

(declare-fun b_and!228901 () Bool)

(assert (=> b!3323182 (= tp!1038122 b_and!228901)))

(declare-fun b_free!87407 () Bool)

(declare-fun b_next!88111 () Bool)

(assert (=> b!3323182 (= b_free!87407 (not b_next!88111))))

(declare-fun t!256328 () Bool)

(declare-fun tb!173885 () Bool)

(assert (=> (and b!3323182 (= (toChars!7336 (transformation!5321 (rule!7843 (h!42038 (t!256295 tokens!494))))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494))))) t!256328) tb!173885))

(declare-fun result!216904 () Bool)

(assert (= result!216904 result!216888))

(assert (=> b!3323104 t!256328))

(declare-fun t!256330 () Bool)

(declare-fun tb!173887 () Bool)

(assert (=> (and b!3323182 (= (toChars!7336 (transformation!5321 (rule!7843 (h!42038 (t!256295 tokens!494))))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241)))) t!256330) tb!173887))

(declare-fun result!216906 () Bool)

(assert (= result!216906 result!216896))

(assert (=> b!3323147 t!256330))

(declare-fun b_and!228903 () Bool)

(declare-fun tp!1038118 () Bool)

(assert (=> b!3323182 (= tp!1038118 (and (=> t!256328 result!216904) (=> t!256330 result!216906) b_and!228903))))

(declare-fun b!3323180 () Bool)

(declare-fun e!2066710 () Bool)

(declare-fun tp!1038119 () Bool)

(declare-fun e!2066713 () Bool)

(assert (=> b!3323180 (= e!2066710 (and (inv!21 (value!172110 (h!42038 (t!256295 tokens!494)))) e!2066713 tp!1038119))))

(declare-fun tp!1038121 () Bool)

(declare-fun b!3323179 () Bool)

(declare-fun e!2066711 () Bool)

(assert (=> b!3323179 (= e!2066711 (and (inv!49614 (h!42038 (t!256295 tokens!494))) e!2066710 tp!1038121))))

(declare-fun b!3323181 () Bool)

(declare-fun e!2066714 () Bool)

(declare-fun tp!1038120 () Bool)

(assert (=> b!3323181 (= e!2066713 (and tp!1038120 (inv!49610 (tag!5873 (rule!7843 (h!42038 (t!256295 tokens!494))))) (inv!49613 (transformation!5321 (rule!7843 (h!42038 (t!256295 tokens!494))))) e!2066714))))

(assert (=> b!3322985 (= tp!1038049 e!2066711)))

(assert (=> b!3323182 (= e!2066714 (and tp!1038122 tp!1038118))))

(assert (= b!3323181 b!3323182))

(assert (= b!3323180 b!3323181))

(assert (= b!3323179 b!3323180))

(assert (= (and b!3322985 (is-Cons!36618 (t!256295 tokens!494))) b!3323179))

(declare-fun m!3662481 () Bool)

(assert (=> b!3323180 m!3662481))

(declare-fun m!3662483 () Bool)

(assert (=> b!3323179 m!3662483))

(declare-fun m!3662485 () Bool)

(assert (=> b!3323181 m!3662485))

(declare-fun m!3662487 () Bool)

(assert (=> b!3323181 m!3662487))

(declare-fun b!3323196 () Bool)

(declare-fun e!2066718 () Bool)

(declare-fun tp!1038134 () Bool)

(declare-fun tp!1038133 () Bool)

(assert (=> b!3323196 (= e!2066718 (and tp!1038134 tp!1038133))))

(declare-fun b!3323195 () Bool)

(declare-fun tp!1038137 () Bool)

(assert (=> b!3323195 (= e!2066718 tp!1038137)))

(declare-fun b!3323194 () Bool)

(declare-fun tp!1038135 () Bool)

(declare-fun tp!1038136 () Bool)

(assert (=> b!3323194 (= e!2066718 (and tp!1038135 tp!1038136))))

(assert (=> b!3322982 (= tp!1038053 e!2066718)))

(declare-fun b!3323193 () Bool)

(declare-fun tp_is_empty!17403 () Bool)

(assert (=> b!3323193 (= e!2066718 tp_is_empty!17403)))

(assert (= (and b!3322982 (is-ElementMatch!10080 (regex!5321 (rule!7843 separatorToken!241)))) b!3323193))

(assert (= (and b!3322982 (is-Concat!15631 (regex!5321 (rule!7843 separatorToken!241)))) b!3323194))

(assert (= (and b!3322982 (is-Star!10080 (regex!5321 (rule!7843 separatorToken!241)))) b!3323195))

(assert (= (and b!3322982 (is-Union!10080 (regex!5321 (rule!7843 separatorToken!241)))) b!3323196))

(declare-fun b!3323200 () Bool)

(declare-fun e!2066719 () Bool)

(declare-fun tp!1038139 () Bool)

(declare-fun tp!1038138 () Bool)

(assert (=> b!3323200 (= e!2066719 (and tp!1038139 tp!1038138))))

(declare-fun b!3323199 () Bool)

(declare-fun tp!1038142 () Bool)

(assert (=> b!3323199 (= e!2066719 tp!1038142)))

(declare-fun b!3323198 () Bool)

(declare-fun tp!1038140 () Bool)

(declare-fun tp!1038141 () Bool)

(assert (=> b!3323198 (= e!2066719 (and tp!1038140 tp!1038141))))

(assert (=> b!3322981 (= tp!1038054 e!2066719)))

(declare-fun b!3323197 () Bool)

(assert (=> b!3323197 (= e!2066719 tp_is_empty!17403)))

(assert (= (and b!3322981 (is-ElementMatch!10080 (regex!5321 (rule!7843 (h!42038 tokens!494))))) b!3323197))

(assert (= (and b!3322981 (is-Concat!15631 (regex!5321 (rule!7843 (h!42038 tokens!494))))) b!3323198))

(assert (= (and b!3322981 (is-Star!10080 (regex!5321 (rule!7843 (h!42038 tokens!494))))) b!3323199))

(assert (= (and b!3322981 (is-Union!10080 (regex!5321 (rule!7843 (h!42038 tokens!494))))) b!3323200))

(declare-fun b!3323204 () Bool)

(declare-fun e!2066720 () Bool)

(declare-fun tp!1038144 () Bool)

(declare-fun tp!1038143 () Bool)

(assert (=> b!3323204 (= e!2066720 (and tp!1038144 tp!1038143))))

(declare-fun b!3323203 () Bool)

(declare-fun tp!1038147 () Bool)

(assert (=> b!3323203 (= e!2066720 tp!1038147)))

(declare-fun b!3323202 () Bool)

(declare-fun tp!1038145 () Bool)

(declare-fun tp!1038146 () Bool)

(assert (=> b!3323202 (= e!2066720 (and tp!1038145 tp!1038146))))

(assert (=> b!3322983 (= tp!1038052 e!2066720)))

(declare-fun b!3323201 () Bool)

(assert (=> b!3323201 (= e!2066720 tp_is_empty!17403)))

(assert (= (and b!3322983 (is-ElementMatch!10080 (regex!5321 (h!42039 rules!2135)))) b!3323201))

(assert (= (and b!3322983 (is-Concat!15631 (regex!5321 (h!42039 rules!2135)))) b!3323202))

(assert (= (and b!3322983 (is-Star!10080 (regex!5321 (h!42039 rules!2135)))) b!3323203))

(assert (= (and b!3322983 (is-Union!10080 (regex!5321 (h!42039 rules!2135)))) b!3323204))

(declare-fun b!3323209 () Bool)

(declare-fun e!2066723 () Bool)

(declare-fun tp!1038150 () Bool)

(assert (=> b!3323209 (= e!2066723 (and tp_is_empty!17403 tp!1038150))))

(assert (=> b!3322994 (= tp!1038061 e!2066723)))

(assert (= (and b!3322994 (is-Cons!36617 (originalCharacters!6035 (h!42038 tokens!494)))) b!3323209))

(declare-fun b!3323220 () Bool)

(declare-fun b_free!87409 () Bool)

(declare-fun b_next!88113 () Bool)

(assert (=> b!3323220 (= b_free!87409 (not b_next!88113))))

(declare-fun tp!1038161 () Bool)

(declare-fun b_and!228905 () Bool)

(assert (=> b!3323220 (= tp!1038161 b_and!228905)))

(declare-fun b_free!87411 () Bool)

(declare-fun b_next!88115 () Bool)

(assert (=> b!3323220 (= b_free!87411 (not b_next!88115))))

(declare-fun tb!173889 () Bool)

(declare-fun t!256332 () Bool)

(assert (=> (and b!3323220 (= (toChars!7336 (transformation!5321 (h!42039 (t!256296 rules!2135)))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494))))) t!256332) tb!173889))

(declare-fun result!216914 () Bool)

(assert (= result!216914 result!216888))

(assert (=> b!3323104 t!256332))

(declare-fun t!256334 () Bool)

(declare-fun tb!173891 () Bool)

(assert (=> (and b!3323220 (= (toChars!7336 (transformation!5321 (h!42039 (t!256296 rules!2135)))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241)))) t!256334) tb!173891))

(declare-fun result!216916 () Bool)

(assert (= result!216916 result!216896))

(assert (=> b!3323147 t!256334))

(declare-fun b_and!228907 () Bool)

(declare-fun tp!1038162 () Bool)

(assert (=> b!3323220 (= tp!1038162 (and (=> t!256332 result!216914) (=> t!256334 result!216916) b_and!228907))))

(declare-fun e!2066733 () Bool)

(assert (=> b!3323220 (= e!2066733 (and tp!1038161 tp!1038162))))

(declare-fun tp!1038160 () Bool)

(declare-fun e!2066732 () Bool)

(declare-fun b!3323219 () Bool)

(assert (=> b!3323219 (= e!2066732 (and tp!1038160 (inv!49610 (tag!5873 (h!42039 (t!256296 rules!2135)))) (inv!49613 (transformation!5321 (h!42039 (t!256296 rules!2135)))) e!2066733))))

(declare-fun b!3323218 () Bool)

(declare-fun e!2066734 () Bool)

(declare-fun tp!1038159 () Bool)

(assert (=> b!3323218 (= e!2066734 (and e!2066732 tp!1038159))))

(assert (=> b!3322979 (= tp!1038055 e!2066734)))

(assert (= b!3323219 b!3323220))

(assert (= b!3323218 b!3323219))

(assert (= (and b!3322979 (is-Cons!36619 (t!256296 rules!2135))) b!3323218))

(declare-fun m!3662489 () Bool)

(assert (=> b!3323219 m!3662489))

(declare-fun m!3662491 () Bool)

(assert (=> b!3323219 m!3662491))

(declare-fun b!3323221 () Bool)

(declare-fun e!2066736 () Bool)

(declare-fun tp!1038163 () Bool)

(assert (=> b!3323221 (= e!2066736 (and tp_is_empty!17403 tp!1038163))))

(assert (=> b!3322989 (= tp!1038051 e!2066736)))

(assert (= (and b!3322989 (is-Cons!36617 (originalCharacters!6035 separatorToken!241))) b!3323221))

(declare-fun b_lambda!93663 () Bool)

(assert (= b_lambda!93657 (or (and b!3322984 b_free!87383 (= (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))))) (and b!3322992 b_free!87387 (= (toChars!7336 (transformation!5321 (h!42039 rules!2135))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))))) (and b!3323182 b_free!87407 (= (toChars!7336 (transformation!5321 (rule!7843 (h!42038 (t!256295 tokens!494))))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))))) (and b!3323220 b_free!87411 (= (toChars!7336 (transformation!5321 (h!42039 (t!256296 rules!2135)))) (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))))) (and b!3322977 b_free!87391) b_lambda!93663)))

(declare-fun b_lambda!93665 () Bool)

(assert (= b_lambda!93659 (or (and b!3322992 b_free!87387 (= (toChars!7336 (transformation!5321 (h!42039 rules!2135))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))))) (and b!3322977 b_free!87391 (= (toChars!7336 (transformation!5321 (rule!7843 (h!42038 tokens!494)))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))))) (and b!3322984 b_free!87383) (and b!3323220 b_free!87411 (= (toChars!7336 (transformation!5321 (h!42039 (t!256296 rules!2135)))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))))) (and b!3323182 b_free!87407 (= (toChars!7336 (transformation!5321 (rule!7843 (h!42038 (t!256295 tokens!494))))) (toChars!7336 (transformation!5321 (rule!7843 separatorToken!241))))) b_lambda!93665)))

(declare-fun b_lambda!93667 () Bool)

(assert (= b_lambda!93661 (or b!3322978 b_lambda!93667)))

(declare-fun bs!550654 () Bool)

(declare-fun d!934198 () Bool)

(assert (= bs!550654 (and d!934198 b!3322978)))

(assert (=> bs!550654 (= (dynLambda!15077 lambda!119570 (h!42038 tokens!494)) (not (isSeparator!5321 (rule!7843 (h!42038 tokens!494)))))))

(assert (=> b!3323156 d!934198))

(push 1)

(assert (not b!3323138))

(assert (not d!934172))

(assert (not b!3323157))

(assert (not b!3323165))

(assert (not b!3323086))

(assert (not b!3323105))

(assert (not b!3323195))

(assert (not b!3323204))

(assert (not b_next!88113))

(assert (not b!3323218))

(assert b_and!228903)

(assert (not b_lambda!93665))

(assert (not tb!173879))

(assert (not b!3323194))

(assert (not b!3323139))

(assert (not b!3323148))

(assert (not b!3323162))

(assert (not b!3323146))

(assert (not b!3323131))

(assert (not b!3323104))

(assert (not b_lambda!93663))

(assert (not b!3323151))

(assert (not d!934182))

(assert tp_is_empty!17403)

(assert (not b_next!88109))

(assert (not b!3323167))

(assert (not b!3323219))

(assert (not b_next!88093))

(assert b_and!228897)

(assert (not b_next!88091))

(assert (not d!934190))

(assert (not b!3323113))

(assert (not b!3323221))

(assert (not b_next!88089))

(assert (not b!3323127))

(assert b_and!228895)

(assert (not b!3323209))

(assert (not b!3323149))

(assert (not b!3323179))

(assert (not b_next!88115))

(assert (not b!3323199))

(assert b_and!228901)

(assert (not tb!173873))

(assert (not b!3323110))

(assert (not b_next!88087))

(assert (not b!3323202))

(assert b_and!228907)

(assert (not b!3323150))

(assert (not b!3323196))

(assert (not b!3323125))

(assert (not b!3323180))

(assert (not d!934186))

(assert b_and!228859)

(assert (not b_next!88085))

(assert b_and!228867)

(assert (not b!3323095))

(assert (not b_lambda!93667))

(assert (not d!934178))

(assert (not b!3323181))

(assert (not b!3323198))

(assert (not b!3323200))

(assert b_and!228905)

(assert (not b!3323147))

(assert (not b_next!88111))

(assert (not b!3323203))

(assert (not b!3323140))

(assert (not b_next!88095))

(assert b_and!228863)

(assert (not d!934164))

(assert (not d!934146))

(assert (not b!3323164))

(assert (not b!3323163))

(assert (not d!934176))

(assert (not b!3323124))

(assert (not d!934166))

(assert b_and!228899)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!88113))

(assert b_and!228903)

(assert (not b_next!88109))

(assert (not b_next!88089))

(assert b_and!228895)

(assert b_and!228907)

(assert b_and!228899)

(assert (not b_next!88093))

(assert b_and!228897)

(assert (not b_next!88091))

(assert (not b_next!88115))

(assert (not b_next!88087))

(assert b_and!228901)

(assert b_and!228859)

(assert (not b_next!88085))

(assert b_and!228867)

(assert b_and!228905)

(assert (not b_next!88111))

(assert (not b_next!88095))

(assert b_and!228863)

(check-sat)

(pop 1)

