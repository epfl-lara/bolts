; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59408 () Bool)

(assert start!59408)

(declare-fun b!619112 () Bool)

(declare-fun b_free!17969 () Bool)

(declare-fun b_next!17985 () Bool)

(assert (=> b!619112 (= b_free!17969 (not b_next!17985))))

(declare-fun tp!191899 () Bool)

(declare-fun b_and!61483 () Bool)

(assert (=> b!619112 (= tp!191899 b_and!61483)))

(declare-fun b_free!17971 () Bool)

(declare-fun b_next!17987 () Bool)

(assert (=> b!619112 (= b_free!17971 (not b_next!17987))))

(declare-fun tp!191903 () Bool)

(declare-fun b_and!61485 () Bool)

(assert (=> b!619112 (= tp!191903 b_and!61485)))

(declare-fun b!619121 () Bool)

(declare-fun b_free!17973 () Bool)

(declare-fun b_next!17989 () Bool)

(assert (=> b!619121 (= b_free!17973 (not b_next!17989))))

(declare-fun tp!191900 () Bool)

(declare-fun b_and!61487 () Bool)

(assert (=> b!619121 (= tp!191900 b_and!61487)))

(declare-fun b_free!17975 () Bool)

(declare-fun b_next!17991 () Bool)

(assert (=> b!619121 (= b_free!17975 (not b_next!17991))))

(declare-fun tp!191906 () Bool)

(declare-fun b_and!61489 () Bool)

(assert (=> b!619121 (= tp!191906 b_and!61489)))

(declare-fun b!619109 () Bool)

(declare-fun res!269695 () Bool)

(declare-fun e!375679 () Bool)

(assert (=> b!619109 (=> (not res!269695) (not e!375679))))

(declare-datatypes ((List!6321 0))(
  ( (Nil!6311) (Cons!6311 (h!11712 (_ BitVec 16)) (t!81560 List!6321)) )
))
(declare-datatypes ((TokenValue!1305 0))(
  ( (FloatLiteralValue!2610 (text!9580 List!6321)) (TokenValueExt!1304 (__x!4510 Int)) (Broken!6525 (value!41346 List!6321)) (Object!1314) (End!1305) (Def!1305) (Underscore!1305) (Match!1305) (Else!1305) (Error!1305) (Case!1305) (If!1305) (Extends!1305) (Abstract!1305) (Class!1305) (Val!1305) (DelimiterValue!2610 (del!1365 List!6321)) (KeywordValue!1311 (value!41347 List!6321)) (CommentValue!2610 (value!41348 List!6321)) (WhitespaceValue!2610 (value!41349 List!6321)) (IndentationValue!1305 (value!41350 List!6321)) (String!8272) (Int32!1305) (Broken!6526 (value!41351 List!6321)) (Boolean!1306) (Unit!11425) (OperatorValue!1308 (op!1365 List!6321)) (IdentifierValue!2610 (value!41352 List!6321)) (IdentifierValue!2611 (value!41353 List!6321)) (WhitespaceValue!2611 (value!41354 List!6321)) (True!2610) (False!2610) (Broken!6527 (value!41355 List!6321)) (Broken!6528 (value!41356 List!6321)) (True!2611) (RightBrace!1305) (RightBracket!1305) (Colon!1305) (Null!1305) (Comma!1305) (LeftBracket!1305) (False!2611) (LeftBrace!1305) (ImaginaryLiteralValue!1305 (text!9581 List!6321)) (StringLiteralValue!3915 (value!41357 List!6321)) (EOFValue!1305 (value!41358 List!6321)) (IdentValue!1305 (value!41359 List!6321)) (DelimiterValue!2611 (value!41360 List!6321)) (DedentValue!1305 (value!41361 List!6321)) (NewLineValue!1305 (value!41362 List!6321)) (IntegerValue!3915 (value!41363 (_ BitVec 32)) (text!9582 List!6321)) (IntegerValue!3916 (value!41364 Int) (text!9583 List!6321)) (Times!1305) (Or!1305) (Equal!1305) (Minus!1305) (Broken!6529 (value!41365 List!6321)) (And!1305) (Div!1305) (LessEqual!1305) (Mod!1305) (Concat!2920) (Not!1305) (Plus!1305) (SpaceValue!1305 (value!41366 List!6321)) (IntegerValue!3917 (value!41367 Int) (text!9584 List!6321)) (StringLiteralValue!3916 (text!9585 List!6321)) (FloatLiteralValue!2611 (text!9586 List!6321)) (BytesLiteralValue!1305 (value!41368 List!6321)) (CommentValue!2611 (value!41369 List!6321)) (StringLiteralValue!3917 (value!41370 List!6321)) (ErrorTokenValue!1305 (msg!1366 List!6321)) )
))
(declare-datatypes ((C!4156 0))(
  ( (C!4157 (val!2304 Int)) )
))
(declare-datatypes ((Regex!1615 0))(
  ( (ElementMatch!1615 (c!113917 C!4156)) (Concat!2921 (regOne!3742 Regex!1615) (regTwo!3742 Regex!1615)) (EmptyExpr!1615) (Star!1615 (reg!1944 Regex!1615)) (EmptyLang!1615) (Union!1615 (regOne!3743 Regex!1615) (regTwo!3743 Regex!1615)) )
))
(declare-datatypes ((String!8273 0))(
  ( (String!8274 (value!41371 String)) )
))
(declare-datatypes ((List!6322 0))(
  ( (Nil!6312) (Cons!6312 (h!11713 C!4156) (t!81561 List!6322)) )
))
(declare-datatypes ((IArray!4007 0))(
  ( (IArray!4008 (innerList!2061 List!6322)) )
))
(declare-datatypes ((Conc!2003 0))(
  ( (Node!2003 (left!5005 Conc!2003) (right!5335 Conc!2003) (csize!4236 Int) (cheight!2214 Int)) (Leaf!3152 (xs!4640 IArray!4007) (csize!4237 Int)) (Empty!2003) )
))
(declare-datatypes ((BalanceConc!4014 0))(
  ( (BalanceConc!4015 (c!113918 Conc!2003)) )
))
(declare-datatypes ((TokenValueInjection!2378 0))(
  ( (TokenValueInjection!2379 (toValue!2194 Int) (toChars!2053 Int)) )
))
(declare-datatypes ((Rule!2362 0))(
  ( (Rule!2363 (regex!1281 Regex!1615) (tag!1543 String!8273) (isSeparator!1281 Bool) (transformation!1281 TokenValueInjection!2378)) )
))
(declare-datatypes ((Token!2286 0))(
  ( (Token!2287 (value!41372 TokenValue!1305) (rule!2073 Rule!2362) (size!4904 Int) (originalCharacters!1314 List!6322)) )
))
(declare-datatypes ((List!6323 0))(
  ( (Nil!6313) (Cons!6313 (h!11714 Token!2286) (t!81562 List!6323)) )
))
(declare-fun producedTokens!8 () List!6323)

(declare-fun size!4905 (List!6323) Int)

(assert (=> b!619109 (= res!269695 (> (size!4905 producedTokens!8) 0))))

(declare-fun b!619110 () Bool)

(declare-fun e!375678 () Bool)

(declare-fun tp!191905 () Bool)

(declare-fun e!375682 () Bool)

(declare-fun inv!21 (TokenValue!1305) Bool)

(assert (=> b!619110 (= e!375678 (and (inv!21 (value!41372 (h!11714 producedTokens!8))) e!375682 tp!191905))))

(declare-fun b!619111 () Bool)

(declare-fun e!375673 () Bool)

(declare-fun tp_is_empty!3589 () Bool)

(declare-fun tp!191901 () Bool)

(assert (=> b!619111 (= e!375673 (and tp_is_empty!3589 tp!191901))))

(declare-fun e!375680 () Bool)

(assert (=> b!619112 (= e!375680 (and tp!191899 tp!191903))))

(declare-fun b!619113 () Bool)

(declare-fun e!375677 () Bool)

(assert (=> b!619113 (= e!375679 e!375677)))

(declare-fun res!269696 () Bool)

(assert (=> b!619113 (=> (not res!269696) (not e!375677))))

(declare-datatypes ((IArray!4009 0))(
  ( (IArray!4010 (innerList!2062 List!6323)) )
))
(declare-datatypes ((Conc!2004 0))(
  ( (Node!2004 (left!5006 Conc!2004) (right!5336 Conc!2004) (csize!4238 Int) (cheight!2215 Int)) (Leaf!3153 (xs!4641 IArray!4009) (csize!4239 Int)) (Empty!2004) )
))
(declare-datatypes ((BalanceConc!4016 0))(
  ( (BalanceConc!4017 (c!113919 Conc!2004)) )
))
(declare-datatypes ((tuple2!7094 0))(
  ( (tuple2!7095 (_1!3811 BalanceConc!4016) (_2!3811 BalanceConc!4014)) )
))
(declare-fun lt!264888 () tuple2!7094)

(declare-fun list!2624 (BalanceConc!4016) List!6323)

(assert (=> b!619113 (= res!269696 (= (list!2624 (_1!3811 lt!264888)) producedTokens!8))))

(declare-datatypes ((LexerInterface!1169 0))(
  ( (LexerInterfaceExt!1166 (__x!4511 Int)) (Lexer!1167) )
))
(declare-fun thiss!25571 () LexerInterface!1169)

(declare-fun input!3206 () List!6322)

(declare-datatypes ((List!6324 0))(
  ( (Nil!6314) (Cons!6314 (h!11715 Rule!2362) (t!81563 List!6324)) )
))
(declare-fun rules!3735 () List!6324)

(declare-fun lex!564 (LexerInterface!1169 List!6324 BalanceConc!4014) tuple2!7094)

(declare-fun seqFromList!1436 (List!6322) BalanceConc!4014)

(assert (=> b!619113 (= lt!264888 (lex!564 thiss!25571 rules!3735 (seqFromList!1436 input!3206)))))

(declare-fun b!619114 () Bool)

(declare-fun rulesValidInductive!490 (LexerInterface!1169 List!6324) Bool)

(assert (=> b!619114 (= e!375677 (not (rulesValidInductive!490 thiss!25571 rules!3735)))))

(declare-fun b!619115 () Bool)

(declare-fun res!269693 () Bool)

(assert (=> b!619115 (=> (not res!269693) (not e!375679))))

(declare-fun isEmpty!4526 (List!6324) Bool)

(assert (=> b!619115 (= res!269693 (not (isEmpty!4526 rules!3735)))))

(declare-fun res!269694 () Bool)

(assert (=> start!59408 (=> (not res!269694) (not e!375679))))

(get-info :version)

(assert (=> start!59408 (= res!269694 ((_ is Lexer!1167) thiss!25571))))

(assert (=> start!59408 e!375679))

(declare-fun e!375670 () Bool)

(assert (=> start!59408 e!375670))

(assert (=> start!59408 true))

(declare-fun e!375674 () Bool)

(assert (=> start!59408 e!375674))

(assert (=> start!59408 e!375673))

(declare-fun e!375676 () Bool)

(assert (=> start!59408 e!375676))

(declare-fun b!619116 () Bool)

(declare-fun res!269692 () Bool)

(assert (=> b!619116 (=> (not res!269692) (not e!375677))))

(declare-fun suffix!1461 () List!6322)

(declare-fun list!2625 (BalanceConc!4014) List!6322)

(assert (=> b!619116 (= res!269692 (= (list!2625 (_2!3811 lt!264888)) suffix!1461))))

(declare-fun b!619117 () Bool)

(declare-fun e!375671 () Bool)

(declare-fun e!375669 () Bool)

(declare-fun tp!191908 () Bool)

(declare-fun inv!7978 (String!8273) Bool)

(declare-fun inv!7981 (TokenValueInjection!2378) Bool)

(assert (=> b!619117 (= e!375669 (and tp!191908 (inv!7978 (tag!1543 (h!11715 rules!3735))) (inv!7981 (transformation!1281 (h!11715 rules!3735))) e!375671))))

(declare-fun b!619118 () Bool)

(declare-fun tp!191909 () Bool)

(assert (=> b!619118 (= e!375674 (and tp_is_empty!3589 tp!191909))))

(declare-fun b!619119 () Bool)

(declare-fun tp!191904 () Bool)

(assert (=> b!619119 (= e!375682 (and tp!191904 (inv!7978 (tag!1543 (rule!2073 (h!11714 producedTokens!8)))) (inv!7981 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) e!375680))))

(declare-fun b!619120 () Bool)

(declare-fun res!269691 () Bool)

(assert (=> b!619120 (=> (not res!269691) (not e!375679))))

(declare-fun rulesInvariant!1130 (LexerInterface!1169 List!6324) Bool)

(assert (=> b!619120 (= res!269691 (rulesInvariant!1130 thiss!25571 rules!3735))))

(assert (=> b!619121 (= e!375671 (and tp!191900 tp!191906))))

(declare-fun b!619122 () Bool)

(declare-fun tp!191907 () Bool)

(assert (=> b!619122 (= e!375676 (and e!375669 tp!191907))))

(declare-fun b!619123 () Bool)

(declare-fun tp!191902 () Bool)

(declare-fun inv!7982 (Token!2286) Bool)

(assert (=> b!619123 (= e!375670 (and (inv!7982 (h!11714 producedTokens!8)) e!375678 tp!191902))))

(assert (= (and start!59408 res!269694) b!619120))

(assert (= (and b!619120 res!269691) b!619115))

(assert (= (and b!619115 res!269693) b!619109))

(assert (= (and b!619109 res!269695) b!619113))

(assert (= (and b!619113 res!269696) b!619116))

(assert (= (and b!619116 res!269692) b!619114))

(assert (= b!619119 b!619112))

(assert (= b!619110 b!619119))

(assert (= b!619123 b!619110))

(assert (= (and start!59408 ((_ is Cons!6313) producedTokens!8)) b!619123))

(assert (= (and start!59408 ((_ is Cons!6312) suffix!1461)) b!619118))

(assert (= (and start!59408 ((_ is Cons!6312) input!3206)) b!619111))

(assert (= b!619117 b!619121))

(assert (= b!619122 b!619117))

(assert (= (and start!59408 ((_ is Cons!6314) rules!3735)) b!619122))

(declare-fun m!886987 () Bool)

(assert (=> b!619110 m!886987))

(declare-fun m!886989 () Bool)

(assert (=> b!619123 m!886989))

(declare-fun m!886991 () Bool)

(assert (=> b!619113 m!886991))

(declare-fun m!886993 () Bool)

(assert (=> b!619113 m!886993))

(assert (=> b!619113 m!886993))

(declare-fun m!886995 () Bool)

(assert (=> b!619113 m!886995))

(declare-fun m!886997 () Bool)

(assert (=> b!619120 m!886997))

(declare-fun m!886999 () Bool)

(assert (=> b!619119 m!886999))

(declare-fun m!887001 () Bool)

(assert (=> b!619119 m!887001))

(declare-fun m!887003 () Bool)

(assert (=> b!619117 m!887003))

(declare-fun m!887005 () Bool)

(assert (=> b!619117 m!887005))

(declare-fun m!887007 () Bool)

(assert (=> b!619116 m!887007))

(declare-fun m!887009 () Bool)

(assert (=> b!619115 m!887009))

(declare-fun m!887011 () Bool)

(assert (=> b!619114 m!887011))

(declare-fun m!887013 () Bool)

(assert (=> b!619109 m!887013))

(check-sat (not b!619123) (not b!619116) (not b_next!17987) (not b!619120) (not b!619117) (not b!619114) b_and!61485 (not b!619118) (not b!619109) (not b!619111) tp_is_empty!3589 (not b!619122) b_and!61483 (not b_next!17991) (not b_next!17989) (not b!619113) (not b_next!17985) (not b!619110) (not b!619119) b_and!61489 (not b!619115) b_and!61487)
(check-sat (not b_next!17987) (not b_next!17989) (not b_next!17985) b_and!61489 b_and!61485 b_and!61483 (not b_next!17991) b_and!61487)
(get-model)

(declare-fun d!216923 () Bool)

(declare-fun list!2626 (Conc!2003) List!6322)

(assert (=> d!216923 (= (list!2625 (_2!3811 lt!264888)) (list!2626 (c!113918 (_2!3811 lt!264888))))))

(declare-fun bs!71885 () Bool)

(assert (= bs!71885 d!216923))

(declare-fun m!887015 () Bool)

(assert (=> bs!71885 m!887015))

(assert (=> b!619116 d!216923))

(declare-fun b!619134 () Bool)

(declare-fun e!375689 () Bool)

(declare-fun inv!16 (TokenValue!1305) Bool)

(assert (=> b!619134 (= e!375689 (inv!16 (value!41372 (h!11714 producedTokens!8))))))

(declare-fun d!216925 () Bool)

(declare-fun c!113924 () Bool)

(assert (=> d!216925 (= c!113924 ((_ is IntegerValue!3915) (value!41372 (h!11714 producedTokens!8))))))

(assert (=> d!216925 (= (inv!21 (value!41372 (h!11714 producedTokens!8))) e!375689)))

(declare-fun b!619135 () Bool)

(declare-fun e!375691 () Bool)

(assert (=> b!619135 (= e!375689 e!375691)))

(declare-fun c!113925 () Bool)

(assert (=> b!619135 (= c!113925 ((_ is IntegerValue!3916) (value!41372 (h!11714 producedTokens!8))))))

(declare-fun b!619136 () Bool)

(declare-fun inv!17 (TokenValue!1305) Bool)

(assert (=> b!619136 (= e!375691 (inv!17 (value!41372 (h!11714 producedTokens!8))))))

(declare-fun b!619137 () Bool)

(declare-fun res!269699 () Bool)

(declare-fun e!375690 () Bool)

(assert (=> b!619137 (=> res!269699 e!375690)))

(assert (=> b!619137 (= res!269699 (not ((_ is IntegerValue!3917) (value!41372 (h!11714 producedTokens!8)))))))

(assert (=> b!619137 (= e!375691 e!375690)))

(declare-fun b!619138 () Bool)

(declare-fun inv!15 (TokenValue!1305) Bool)

(assert (=> b!619138 (= e!375690 (inv!15 (value!41372 (h!11714 producedTokens!8))))))

(assert (= (and d!216925 c!113924) b!619134))

(assert (= (and d!216925 (not c!113924)) b!619135))

(assert (= (and b!619135 c!113925) b!619136))

(assert (= (and b!619135 (not c!113925)) b!619137))

(assert (= (and b!619137 (not res!269699)) b!619138))

(declare-fun m!887017 () Bool)

(assert (=> b!619134 m!887017))

(declare-fun m!887019 () Bool)

(assert (=> b!619136 m!887019))

(declare-fun m!887021 () Bool)

(assert (=> b!619138 m!887021))

(assert (=> b!619110 d!216925))

(declare-fun d!216927 () Bool)

(assert (=> d!216927 (= (isEmpty!4526 rules!3735) ((_ is Nil!6314) rules!3735))))

(assert (=> b!619115 d!216927))

(declare-fun d!216929 () Bool)

(assert (=> d!216929 (= (inv!7978 (tag!1543 (h!11715 rules!3735))) (= (mod (str.len (value!41371 (tag!1543 (h!11715 rules!3735)))) 2) 0))))

(assert (=> b!619117 d!216929))

(declare-fun d!216931 () Bool)

(declare-fun res!269702 () Bool)

(declare-fun e!375694 () Bool)

(assert (=> d!216931 (=> (not res!269702) (not e!375694))))

(declare-fun semiInverseModEq!514 (Int Int) Bool)

(assert (=> d!216931 (= res!269702 (semiInverseModEq!514 (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toValue!2194 (transformation!1281 (h!11715 rules!3735)))))))

(assert (=> d!216931 (= (inv!7981 (transformation!1281 (h!11715 rules!3735))) e!375694)))

(declare-fun b!619141 () Bool)

(declare-fun equivClasses!497 (Int Int) Bool)

(assert (=> b!619141 (= e!375694 (equivClasses!497 (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toValue!2194 (transformation!1281 (h!11715 rules!3735)))))))

(assert (= (and d!216931 res!269702) b!619141))

(declare-fun m!887023 () Bool)

(assert (=> d!216931 m!887023))

(declare-fun m!887025 () Bool)

(assert (=> b!619141 m!887025))

(assert (=> b!619117 d!216931))

(declare-fun d!216933 () Bool)

(declare-fun list!2627 (Conc!2004) List!6323)

(assert (=> d!216933 (= (list!2624 (_1!3811 lt!264888)) (list!2627 (c!113919 (_1!3811 lt!264888))))))

(declare-fun bs!71886 () Bool)

(assert (= bs!71886 d!216933))

(declare-fun m!887027 () Bool)

(assert (=> bs!71886 m!887027))

(assert (=> b!619113 d!216933))

(declare-fun d!216935 () Bool)

(declare-fun e!375702 () Bool)

(assert (=> d!216935 e!375702))

(declare-fun res!269711 () Bool)

(assert (=> d!216935 (=> (not res!269711) (not e!375702))))

(declare-fun e!375701 () Bool)

(assert (=> d!216935 (= res!269711 e!375701)))

(declare-fun c!113928 () Bool)

(declare-fun lt!264891 () tuple2!7094)

(declare-fun size!4906 (BalanceConc!4016) Int)

(assert (=> d!216935 (= c!113928 (> (size!4906 (_1!3811 lt!264891)) 0))))

(declare-fun lexTailRecV2!268 (LexerInterface!1169 List!6324 BalanceConc!4014 BalanceConc!4014 BalanceConc!4014 BalanceConc!4016) tuple2!7094)

(assert (=> d!216935 (= lt!264891 (lexTailRecV2!268 thiss!25571 rules!3735 (seqFromList!1436 input!3206) (BalanceConc!4015 Empty!2003) (seqFromList!1436 input!3206) (BalanceConc!4017 Empty!2004)))))

(assert (=> d!216935 (= (lex!564 thiss!25571 rules!3735 (seqFromList!1436 input!3206)) lt!264891)))

(declare-fun b!619152 () Bool)

(declare-fun e!375703 () Bool)

(assert (=> b!619152 (= e!375701 e!375703)))

(declare-fun res!269710 () Bool)

(declare-fun size!4907 (BalanceConc!4014) Int)

(assert (=> b!619152 (= res!269710 (< (size!4907 (_2!3811 lt!264891)) (size!4907 (seqFromList!1436 input!3206))))))

(assert (=> b!619152 (=> (not res!269710) (not e!375703))))

(declare-fun b!619153 () Bool)

(declare-fun isEmpty!4527 (BalanceConc!4016) Bool)

(assert (=> b!619153 (= e!375703 (not (isEmpty!4527 (_1!3811 lt!264891))))))

(declare-fun b!619154 () Bool)

(declare-datatypes ((tuple2!7096 0))(
  ( (tuple2!7097 (_1!3812 List!6323) (_2!3812 List!6322)) )
))
(declare-fun lexList!306 (LexerInterface!1169 List!6324 List!6322) tuple2!7096)

(assert (=> b!619154 (= e!375702 (= (list!2625 (_2!3811 lt!264891)) (_2!3812 (lexList!306 thiss!25571 rules!3735 (list!2625 (seqFromList!1436 input!3206))))))))

(declare-fun b!619155 () Bool)

(assert (=> b!619155 (= e!375701 (= (_2!3811 lt!264891) (seqFromList!1436 input!3206)))))

(declare-fun b!619156 () Bool)

(declare-fun res!269709 () Bool)

(assert (=> b!619156 (=> (not res!269709) (not e!375702))))

(assert (=> b!619156 (= res!269709 (= (list!2624 (_1!3811 lt!264891)) (_1!3812 (lexList!306 thiss!25571 rules!3735 (list!2625 (seqFromList!1436 input!3206))))))))

(assert (= (and d!216935 c!113928) b!619152))

(assert (= (and d!216935 (not c!113928)) b!619155))

(assert (= (and b!619152 res!269710) b!619153))

(assert (= (and d!216935 res!269711) b!619156))

(assert (= (and b!619156 res!269709) b!619154))

(declare-fun m!887033 () Bool)

(assert (=> b!619154 m!887033))

(assert (=> b!619154 m!886993))

(declare-fun m!887035 () Bool)

(assert (=> b!619154 m!887035))

(assert (=> b!619154 m!887035))

(declare-fun m!887037 () Bool)

(assert (=> b!619154 m!887037))

(declare-fun m!887039 () Bool)

(assert (=> b!619153 m!887039))

(declare-fun m!887041 () Bool)

(assert (=> d!216935 m!887041))

(assert (=> d!216935 m!886993))

(assert (=> d!216935 m!886993))

(declare-fun m!887043 () Bool)

(assert (=> d!216935 m!887043))

(declare-fun m!887045 () Bool)

(assert (=> b!619152 m!887045))

(assert (=> b!619152 m!886993))

(declare-fun m!887047 () Bool)

(assert (=> b!619152 m!887047))

(declare-fun m!887049 () Bool)

(assert (=> b!619156 m!887049))

(assert (=> b!619156 m!886993))

(assert (=> b!619156 m!887035))

(assert (=> b!619156 m!887035))

(assert (=> b!619156 m!887037))

(assert (=> b!619113 d!216935))

(declare-fun d!216943 () Bool)

(declare-fun fromListB!623 (List!6322) BalanceConc!4014)

(assert (=> d!216943 (= (seqFromList!1436 input!3206) (fromListB!623 input!3206))))

(declare-fun bs!71889 () Bool)

(assert (= bs!71889 d!216943))

(declare-fun m!887051 () Bool)

(assert (=> bs!71889 m!887051))

(assert (=> b!619113 d!216943))

(declare-fun d!216945 () Bool)

(declare-fun res!269716 () Bool)

(declare-fun e!375706 () Bool)

(assert (=> d!216945 (=> (not res!269716) (not e!375706))))

(declare-fun isEmpty!4528 (List!6322) Bool)

(assert (=> d!216945 (= res!269716 (not (isEmpty!4528 (originalCharacters!1314 (h!11714 producedTokens!8)))))))

(assert (=> d!216945 (= (inv!7982 (h!11714 producedTokens!8)) e!375706)))

(declare-fun b!619161 () Bool)

(declare-fun res!269717 () Bool)

(assert (=> b!619161 (=> (not res!269717) (not e!375706))))

(declare-fun dynLambda!3584 (Int TokenValue!1305) BalanceConc!4014)

(assert (=> b!619161 (= res!269717 (= (originalCharacters!1314 (h!11714 producedTokens!8)) (list!2625 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))))))

(declare-fun b!619162 () Bool)

(declare-fun size!4908 (List!6322) Int)

(assert (=> b!619162 (= e!375706 (= (size!4904 (h!11714 producedTokens!8)) (size!4908 (originalCharacters!1314 (h!11714 producedTokens!8)))))))

(assert (= (and d!216945 res!269716) b!619161))

(assert (= (and b!619161 res!269717) b!619162))

(declare-fun b_lambda!24521 () Bool)

(assert (=> (not b_lambda!24521) (not b!619161)))

(declare-fun t!81565 () Bool)

(declare-fun tb!53767 () Bool)

(assert (=> (and b!619112 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) t!81565) tb!53767))

(declare-fun b!619167 () Bool)

(declare-fun e!375709 () Bool)

(declare-fun tp!191912 () Bool)

(declare-fun inv!7983 (Conc!2003) Bool)

(assert (=> b!619167 (= e!375709 (and (inv!7983 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))) tp!191912))))

(declare-fun result!60654 () Bool)

(declare-fun inv!7984 (BalanceConc!4014) Bool)

(assert (=> tb!53767 (= result!60654 (and (inv!7984 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))) e!375709))))

(assert (= tb!53767 b!619167))

(declare-fun m!887053 () Bool)

(assert (=> b!619167 m!887053))

(declare-fun m!887055 () Bool)

(assert (=> tb!53767 m!887055))

(assert (=> b!619161 t!81565))

(declare-fun b_and!61491 () Bool)

(assert (= b_and!61485 (and (=> t!81565 result!60654) b_and!61491)))

(declare-fun tb!53769 () Bool)

(declare-fun t!81567 () Bool)

(assert (=> (and b!619121 (= (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) t!81567) tb!53769))

(declare-fun result!60658 () Bool)

(assert (= result!60658 result!60654))

(assert (=> b!619161 t!81567))

(declare-fun b_and!61493 () Bool)

(assert (= b_and!61489 (and (=> t!81567 result!60658) b_and!61493)))

(declare-fun m!887057 () Bool)

(assert (=> d!216945 m!887057))

(declare-fun m!887059 () Bool)

(assert (=> b!619161 m!887059))

(assert (=> b!619161 m!887059))

(declare-fun m!887061 () Bool)

(assert (=> b!619161 m!887061))

(declare-fun m!887063 () Bool)

(assert (=> b!619162 m!887063))

(assert (=> b!619123 d!216945))

(declare-fun d!216947 () Bool)

(declare-fun res!269720 () Bool)

(declare-fun e!375712 () Bool)

(assert (=> d!216947 (=> (not res!269720) (not e!375712))))

(declare-fun rulesValid!476 (LexerInterface!1169 List!6324) Bool)

(assert (=> d!216947 (= res!269720 (rulesValid!476 thiss!25571 rules!3735))))

(assert (=> d!216947 (= (rulesInvariant!1130 thiss!25571 rules!3735) e!375712)))

(declare-fun b!619170 () Bool)

(declare-datatypes ((List!6325 0))(
  ( (Nil!6315) (Cons!6315 (h!11716 String!8273) (t!81580 List!6325)) )
))
(declare-fun noDuplicateTag!476 (LexerInterface!1169 List!6324 List!6325) Bool)

(assert (=> b!619170 (= e!375712 (noDuplicateTag!476 thiss!25571 rules!3735 Nil!6315))))

(assert (= (and d!216947 res!269720) b!619170))

(declare-fun m!887065 () Bool)

(assert (=> d!216947 m!887065))

(declare-fun m!887067 () Bool)

(assert (=> b!619170 m!887067))

(assert (=> b!619120 d!216947))

(declare-fun d!216949 () Bool)

(declare-fun lt!264894 () Int)

(assert (=> d!216949 (>= lt!264894 0)))

(declare-fun e!375715 () Int)

(assert (=> d!216949 (= lt!264894 e!375715)))

(declare-fun c!113931 () Bool)

(assert (=> d!216949 (= c!113931 ((_ is Nil!6313) producedTokens!8))))

(assert (=> d!216949 (= (size!4905 producedTokens!8) lt!264894)))

(declare-fun b!619175 () Bool)

(assert (=> b!619175 (= e!375715 0)))

(declare-fun b!619176 () Bool)

(assert (=> b!619176 (= e!375715 (+ 1 (size!4905 (t!81562 producedTokens!8))))))

(assert (= (and d!216949 c!113931) b!619175))

(assert (= (and d!216949 (not c!113931)) b!619176))

(declare-fun m!887069 () Bool)

(assert (=> b!619176 m!887069))

(assert (=> b!619109 d!216949))

(declare-fun d!216951 () Bool)

(assert (=> d!216951 true))

(declare-fun lt!264905 () Bool)

(declare-fun lambda!16251 () Int)

(declare-fun forall!1570 (List!6324 Int) Bool)

(assert (=> d!216951 (= lt!264905 (forall!1570 rules!3735 lambda!16251))))

(declare-fun e!375759 () Bool)

(assert (=> d!216951 (= lt!264905 e!375759)))

(declare-fun res!269754 () Bool)

(assert (=> d!216951 (=> res!269754 e!375759)))

(assert (=> d!216951 (= res!269754 (not ((_ is Cons!6314) rules!3735)))))

(assert (=> d!216951 (= (rulesValidInductive!490 thiss!25571 rules!3735) lt!264905)))

(declare-fun b!619239 () Bool)

(declare-fun e!375758 () Bool)

(assert (=> b!619239 (= e!375759 e!375758)))

(declare-fun res!269755 () Bool)

(assert (=> b!619239 (=> (not res!269755) (not e!375758))))

(declare-fun ruleValid!453 (LexerInterface!1169 Rule!2362) Bool)

(assert (=> b!619239 (= res!269755 (ruleValid!453 thiss!25571 (h!11715 rules!3735)))))

(declare-fun b!619240 () Bool)

(assert (=> b!619240 (= e!375758 (rulesValidInductive!490 thiss!25571 (t!81563 rules!3735)))))

(assert (= (and d!216951 (not res!269754)) b!619239))

(assert (= (and b!619239 res!269755) b!619240))

(declare-fun m!887123 () Bool)

(assert (=> d!216951 m!887123))

(declare-fun m!887125 () Bool)

(assert (=> b!619239 m!887125))

(declare-fun m!887127 () Bool)

(assert (=> b!619240 m!887127))

(assert (=> b!619114 d!216951))

(declare-fun d!216975 () Bool)

(assert (=> d!216975 (= (inv!7978 (tag!1543 (rule!2073 (h!11714 producedTokens!8)))) (= (mod (str.len (value!41371 (tag!1543 (rule!2073 (h!11714 producedTokens!8))))) 2) 0))))

(assert (=> b!619119 d!216975))

(declare-fun d!216977 () Bool)

(declare-fun res!269756 () Bool)

(declare-fun e!375760 () Bool)

(assert (=> d!216977 (=> (not res!269756) (not e!375760))))

(assert (=> d!216977 (= res!269756 (semiInverseModEq!514 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (toValue!2194 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))))))

(assert (=> d!216977 (= (inv!7981 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) e!375760)))

(declare-fun b!619243 () Bool)

(assert (=> b!619243 (= e!375760 (equivClasses!497 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (toValue!2194 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))))))

(assert (= (and d!216977 res!269756) b!619243))

(declare-fun m!887129 () Bool)

(assert (=> d!216977 m!887129))

(declare-fun m!887131 () Bool)

(assert (=> b!619243 m!887131))

(assert (=> b!619119 d!216977))

(declare-fun b!619248 () Bool)

(declare-fun e!375763 () Bool)

(declare-fun tp!191918 () Bool)

(assert (=> b!619248 (= e!375763 (and tp_is_empty!3589 tp!191918))))

(assert (=> b!619110 (= tp!191905 e!375763)))

(assert (= (and b!619110 ((_ is Cons!6312) (originalCharacters!1314 (h!11714 producedTokens!8)))) b!619248))

(declare-fun b!619260 () Bool)

(declare-fun e!375766 () Bool)

(declare-fun tp!191932 () Bool)

(declare-fun tp!191933 () Bool)

(assert (=> b!619260 (= e!375766 (and tp!191932 tp!191933))))

(assert (=> b!619117 (= tp!191908 e!375766)))

(declare-fun b!619261 () Bool)

(declare-fun tp!191929 () Bool)

(assert (=> b!619261 (= e!375766 tp!191929)))

(declare-fun b!619259 () Bool)

(assert (=> b!619259 (= e!375766 tp_is_empty!3589)))

(declare-fun b!619262 () Bool)

(declare-fun tp!191930 () Bool)

(declare-fun tp!191931 () Bool)

(assert (=> b!619262 (= e!375766 (and tp!191930 tp!191931))))

(assert (= (and b!619117 ((_ is ElementMatch!1615) (regex!1281 (h!11715 rules!3735)))) b!619259))

(assert (= (and b!619117 ((_ is Concat!2921) (regex!1281 (h!11715 rules!3735)))) b!619260))

(assert (= (and b!619117 ((_ is Star!1615) (regex!1281 (h!11715 rules!3735)))) b!619261))

(assert (= (and b!619117 ((_ is Union!1615) (regex!1281 (h!11715 rules!3735)))) b!619262))

(declare-fun b!619273 () Bool)

(declare-fun b_free!17977 () Bool)

(declare-fun b_next!17993 () Bool)

(assert (=> b!619273 (= b_free!17977 (not b_next!17993))))

(declare-fun tp!191945 () Bool)

(declare-fun b_and!61499 () Bool)

(assert (=> b!619273 (= tp!191945 b_and!61499)))

(declare-fun b_free!17979 () Bool)

(declare-fun b_next!17995 () Bool)

(assert (=> b!619273 (= b_free!17979 (not b_next!17995))))

(declare-fun t!81573 () Bool)

(declare-fun tb!53775 () Bool)

(assert (=> (and b!619273 (= (toChars!2053 (transformation!1281 (h!11715 (t!81563 rules!3735)))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) t!81573) tb!53775))

(declare-fun result!60672 () Bool)

(assert (= result!60672 result!60654))

(assert (=> b!619161 t!81573))

(declare-fun tp!191944 () Bool)

(declare-fun b_and!61501 () Bool)

(assert (=> b!619273 (= tp!191944 (and (=> t!81573 result!60672) b_and!61501))))

(declare-fun e!375778 () Bool)

(assert (=> b!619273 (= e!375778 (and tp!191945 tp!191944))))

(declare-fun e!375777 () Bool)

(declare-fun b!619272 () Bool)

(declare-fun tp!191942 () Bool)

(assert (=> b!619272 (= e!375777 (and tp!191942 (inv!7978 (tag!1543 (h!11715 (t!81563 rules!3735)))) (inv!7981 (transformation!1281 (h!11715 (t!81563 rules!3735)))) e!375778))))

(declare-fun b!619271 () Bool)

(declare-fun e!375775 () Bool)

(declare-fun tp!191943 () Bool)

(assert (=> b!619271 (= e!375775 (and e!375777 tp!191943))))

(assert (=> b!619122 (= tp!191907 e!375775)))

(assert (= b!619272 b!619273))

(assert (= b!619271 b!619272))

(assert (= (and b!619122 ((_ is Cons!6314) (t!81563 rules!3735))) b!619271))

(declare-fun m!887133 () Bool)

(assert (=> b!619272 m!887133))

(declare-fun m!887135 () Bool)

(assert (=> b!619272 m!887135))

(declare-fun b!619274 () Bool)

(declare-fun e!375779 () Bool)

(declare-fun tp!191946 () Bool)

(assert (=> b!619274 (= e!375779 (and tp_is_empty!3589 tp!191946))))

(assert (=> b!619111 (= tp!191901 e!375779)))

(assert (= (and b!619111 ((_ is Cons!6312) (t!81561 input!3206))) b!619274))

(declare-fun b!619275 () Bool)

(declare-fun e!375780 () Bool)

(declare-fun tp!191947 () Bool)

(assert (=> b!619275 (= e!375780 (and tp_is_empty!3589 tp!191947))))

(assert (=> b!619118 (= tp!191909 e!375780)))

(assert (= (and b!619118 ((_ is Cons!6312) (t!81561 suffix!1461))) b!619275))

(declare-fun b!619289 () Bool)

(declare-fun b_free!17981 () Bool)

(declare-fun b_next!17997 () Bool)

(assert (=> b!619289 (= b_free!17981 (not b_next!17997))))

(declare-fun tp!191960 () Bool)

(declare-fun b_and!61503 () Bool)

(assert (=> b!619289 (= tp!191960 b_and!61503)))

(declare-fun b_free!17983 () Bool)

(declare-fun b_next!17999 () Bool)

(assert (=> b!619289 (= b_free!17983 (not b_next!17999))))

(declare-fun t!81575 () Bool)

(declare-fun tb!53777 () Bool)

(assert (=> (and b!619289 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) t!81575) tb!53777))

(declare-fun result!60676 () Bool)

(assert (= result!60676 result!60654))

(assert (=> b!619161 t!81575))

(declare-fun tp!191961 () Bool)

(declare-fun b_and!61505 () Bool)

(assert (=> b!619289 (= tp!191961 (and (=> t!81575 result!60676) b_and!61505))))

(declare-fun tp!191958 () Bool)

(declare-fun b!619287 () Bool)

(declare-fun e!375795 () Bool)

(declare-fun e!375797 () Bool)

(assert (=> b!619287 (= e!375797 (and (inv!21 (value!41372 (h!11714 (t!81562 producedTokens!8)))) e!375795 tp!191958))))

(declare-fun e!375794 () Bool)

(assert (=> b!619289 (= e!375794 (and tp!191960 tp!191961))))

(declare-fun b!619286 () Bool)

(declare-fun tp!191962 () Bool)

(declare-fun e!375793 () Bool)

(assert (=> b!619286 (= e!375793 (and (inv!7982 (h!11714 (t!81562 producedTokens!8))) e!375797 tp!191962))))

(assert (=> b!619123 (= tp!191902 e!375793)))

(declare-fun tp!191959 () Bool)

(declare-fun b!619288 () Bool)

(assert (=> b!619288 (= e!375795 (and tp!191959 (inv!7978 (tag!1543 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (inv!7981 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) e!375794))))

(assert (= b!619288 b!619289))

(assert (= b!619287 b!619288))

(assert (= b!619286 b!619287))

(assert (= (and b!619123 ((_ is Cons!6313) (t!81562 producedTokens!8))) b!619286))

(declare-fun m!887137 () Bool)

(assert (=> b!619287 m!887137))

(declare-fun m!887139 () Bool)

(assert (=> b!619286 m!887139))

(declare-fun m!887141 () Bool)

(assert (=> b!619288 m!887141))

(declare-fun m!887143 () Bool)

(assert (=> b!619288 m!887143))

(declare-fun b!619291 () Bool)

(declare-fun e!375799 () Bool)

(declare-fun tp!191966 () Bool)

(declare-fun tp!191967 () Bool)

(assert (=> b!619291 (= e!375799 (and tp!191966 tp!191967))))

(assert (=> b!619119 (= tp!191904 e!375799)))

(declare-fun b!619292 () Bool)

(declare-fun tp!191963 () Bool)

(assert (=> b!619292 (= e!375799 tp!191963)))

(declare-fun b!619290 () Bool)

(assert (=> b!619290 (= e!375799 tp_is_empty!3589)))

(declare-fun b!619293 () Bool)

(declare-fun tp!191964 () Bool)

(declare-fun tp!191965 () Bool)

(assert (=> b!619293 (= e!375799 (and tp!191964 tp!191965))))

(assert (= (and b!619119 ((_ is ElementMatch!1615) (regex!1281 (rule!2073 (h!11714 producedTokens!8))))) b!619290))

(assert (= (and b!619119 ((_ is Concat!2921) (regex!1281 (rule!2073 (h!11714 producedTokens!8))))) b!619291))

(assert (= (and b!619119 ((_ is Star!1615) (regex!1281 (rule!2073 (h!11714 producedTokens!8))))) b!619292))

(assert (= (and b!619119 ((_ is Union!1615) (regex!1281 (rule!2073 (h!11714 producedTokens!8))))) b!619293))

(declare-fun b_lambda!24525 () Bool)

(assert (= b_lambda!24521 (or (and b!619112 b_free!17971) (and b!619121 b_free!17975 (= (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))))) (and b!619273 b_free!17979 (= (toChars!2053 (transformation!1281 (h!11715 (t!81563 rules!3735)))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))))) (and b!619289 b_free!17983 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))))) b_lambda!24525)))

(check-sat (not b_next!17987) (not b!619260) (not b_next!17997) (not b!619170) (not d!216923) (not b!619134) b_and!61487 (not b!619239) (not b!619288) (not b!619162) (not b!619167) (not b!619141) (not b!619274) (not d!216945) (not b!619176) b_and!61499 b_and!61493 (not tb!53767) (not b!619153) (not b!619291) (not b!619293) (not b_next!17989) (not b!619138) b_and!61505 (not b!619136) (not b_next!17985) (not d!216935) (not b!619286) b_and!61503 (not b_next!17995) (not d!216947) (not b!619154) (not b!619161) (not b!619243) (not b!619248) (not d!216943) (not b!619262) (not b!619152) (not b!619156) (not b!619275) (not d!216951) tp_is_empty!3589 (not d!216977) (not b!619271) (not b!619272) b_and!61501 b_and!61491 (not b_next!17993) (not b!619287) (not b_next!17999) (not b!619292) b_and!61483 (not d!216933) (not b_next!17991) (not b_lambda!24525) (not b!619240) (not b!619261) (not d!216931))
(check-sat (not b_next!17987) (not b_next!17985) (not b_next!17997) (not b_next!17993) (not b_next!17991) b_and!61487 b_and!61499 b_and!61493 (not b_next!17989) b_and!61505 b_and!61503 (not b_next!17995) b_and!61501 b_and!61491 (not b_next!17999) b_and!61483)
(get-model)

(declare-fun d!216979 () Bool)

(declare-fun lt!264907 () Int)

(assert (=> d!216979 (>= lt!264907 0)))

(declare-fun e!375841 () Int)

(assert (=> d!216979 (= lt!264907 e!375841)))

(declare-fun c!113944 () Bool)

(assert (=> d!216979 (= c!113944 ((_ is Nil!6313) (t!81562 producedTokens!8)))))

(assert (=> d!216979 (= (size!4905 (t!81562 producedTokens!8)) lt!264907)))

(declare-fun b!619348 () Bool)

(assert (=> b!619348 (= e!375841 0)))

(declare-fun b!619349 () Bool)

(assert (=> b!619349 (= e!375841 (+ 1 (size!4905 (t!81562 (t!81562 producedTokens!8)))))))

(assert (= (and d!216979 c!113944) b!619348))

(assert (= (and d!216979 (not c!113944)) b!619349))

(declare-fun m!887163 () Bool)

(assert (=> b!619349 m!887163))

(assert (=> b!619176 d!216979))

(declare-fun d!216981 () Bool)

(assert (=> d!216981 (= (list!2625 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))) (list!2626 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))))))

(declare-fun bs!71891 () Bool)

(assert (= bs!71891 d!216981))

(declare-fun m!887165 () Bool)

(assert (=> bs!71891 m!887165))

(assert (=> b!619161 d!216981))

(declare-fun d!216983 () Bool)

(declare-fun res!269766 () Bool)

(declare-fun e!375844 () Bool)

(assert (=> d!216983 (=> (not res!269766) (not e!375844))))

(declare-fun validRegex!558 (Regex!1615) Bool)

(assert (=> d!216983 (= res!269766 (validRegex!558 (regex!1281 (h!11715 rules!3735))))))

(assert (=> d!216983 (= (ruleValid!453 thiss!25571 (h!11715 rules!3735)) e!375844)))

(declare-fun b!619354 () Bool)

(declare-fun res!269767 () Bool)

(assert (=> b!619354 (=> (not res!269767) (not e!375844))))

(declare-fun nullable!463 (Regex!1615) Bool)

(assert (=> b!619354 (= res!269767 (not (nullable!463 (regex!1281 (h!11715 rules!3735)))))))

(declare-fun b!619355 () Bool)

(assert (=> b!619355 (= e!375844 (not (= (tag!1543 (h!11715 rules!3735)) (String!8274 ""))))))

(assert (= (and d!216983 res!269766) b!619354))

(assert (= (and b!619354 res!269767) b!619355))

(declare-fun m!887167 () Bool)

(assert (=> d!216983 m!887167))

(declare-fun m!887169 () Bool)

(assert (=> b!619354 m!887169))

(assert (=> b!619239 d!216983))

(declare-fun d!216985 () Bool)

(declare-fun lt!264910 () Int)

(assert (=> d!216985 (>= lt!264910 0)))

(declare-fun e!375847 () Int)

(assert (=> d!216985 (= lt!264910 e!375847)))

(declare-fun c!113947 () Bool)

(assert (=> d!216985 (= c!113947 ((_ is Nil!6312) (originalCharacters!1314 (h!11714 producedTokens!8))))))

(assert (=> d!216985 (= (size!4908 (originalCharacters!1314 (h!11714 producedTokens!8))) lt!264910)))

(declare-fun b!619360 () Bool)

(assert (=> b!619360 (= e!375847 0)))

(declare-fun b!619361 () Bool)

(assert (=> b!619361 (= e!375847 (+ 1 (size!4908 (t!81561 (originalCharacters!1314 (h!11714 producedTokens!8))))))))

(assert (= (and d!216985 c!113947) b!619360))

(assert (= (and d!216985 (not c!113947)) b!619361))

(declare-fun m!887171 () Bool)

(assert (=> b!619361 m!887171))

(assert (=> b!619162 d!216985))

(declare-fun d!216987 () Bool)

(assert (=> d!216987 (= (list!2624 (_1!3811 lt!264891)) (list!2627 (c!113919 (_1!3811 lt!264891))))))

(declare-fun bs!71892 () Bool)

(assert (= bs!71892 d!216987))

(declare-fun m!887173 () Bool)

(assert (=> bs!71892 m!887173))

(assert (=> b!619156 d!216987))

(declare-fun b!619372 () Bool)

(declare-fun e!375856 () tuple2!7096)

(declare-datatypes ((tuple2!7100 0))(
  ( (tuple2!7101 (_1!3814 Token!2286) (_2!3814 List!6322)) )
))
(declare-datatypes ((Option!1619 0))(
  ( (None!1618) (Some!1618 (v!16545 tuple2!7100)) )
))
(declare-fun lt!264919 () Option!1619)

(declare-fun lt!264918 () tuple2!7096)

(assert (=> b!619372 (= e!375856 (tuple2!7097 (Cons!6313 (_1!3814 (v!16545 lt!264919)) (_1!3812 lt!264918)) (_2!3812 lt!264918)))))

(assert (=> b!619372 (= lt!264918 (lexList!306 thiss!25571 rules!3735 (_2!3814 (v!16545 lt!264919))))))

(declare-fun b!619373 () Bool)

(assert (=> b!619373 (= e!375856 (tuple2!7097 Nil!6313 (list!2625 (seqFromList!1436 input!3206))))))

(declare-fun b!619374 () Bool)

(declare-fun e!375855 () Bool)

(declare-fun e!375854 () Bool)

(assert (=> b!619374 (= e!375855 e!375854)))

(declare-fun res!269770 () Bool)

(declare-fun lt!264917 () tuple2!7096)

(assert (=> b!619374 (= res!269770 (< (size!4908 (_2!3812 lt!264917)) (size!4908 (list!2625 (seqFromList!1436 input!3206)))))))

(assert (=> b!619374 (=> (not res!269770) (not e!375854))))

(declare-fun b!619375 () Bool)

(declare-fun isEmpty!4531 (List!6323) Bool)

(assert (=> b!619375 (= e!375854 (not (isEmpty!4531 (_1!3812 lt!264917))))))

(declare-fun d!216989 () Bool)

(assert (=> d!216989 e!375855))

(declare-fun c!113953 () Bool)

(assert (=> d!216989 (= c!113953 (> (size!4905 (_1!3812 lt!264917)) 0))))

(assert (=> d!216989 (= lt!264917 e!375856)))

(declare-fun c!113952 () Bool)

(assert (=> d!216989 (= c!113952 ((_ is Some!1618) lt!264919))))

(declare-fun maxPrefix!852 (LexerInterface!1169 List!6324 List!6322) Option!1619)

(assert (=> d!216989 (= lt!264919 (maxPrefix!852 thiss!25571 rules!3735 (list!2625 (seqFromList!1436 input!3206))))))

(assert (=> d!216989 (= (lexList!306 thiss!25571 rules!3735 (list!2625 (seqFromList!1436 input!3206))) lt!264917)))

(declare-fun b!619376 () Bool)

(assert (=> b!619376 (= e!375855 (= (_2!3812 lt!264917) (list!2625 (seqFromList!1436 input!3206))))))

(assert (= (and d!216989 c!113952) b!619372))

(assert (= (and d!216989 (not c!113952)) b!619373))

(assert (= (and d!216989 c!113953) b!619374))

(assert (= (and d!216989 (not c!113953)) b!619376))

(assert (= (and b!619374 res!269770) b!619375))

(declare-fun m!887175 () Bool)

(assert (=> b!619372 m!887175))

(declare-fun m!887177 () Bool)

(assert (=> b!619374 m!887177))

(assert (=> b!619374 m!887035))

(declare-fun m!887179 () Bool)

(assert (=> b!619374 m!887179))

(declare-fun m!887181 () Bool)

(assert (=> b!619375 m!887181))

(declare-fun m!887183 () Bool)

(assert (=> d!216989 m!887183))

(assert (=> d!216989 m!887035))

(declare-fun m!887185 () Bool)

(assert (=> d!216989 m!887185))

(assert (=> b!619156 d!216989))

(declare-fun d!216991 () Bool)

(assert (=> d!216991 (= (list!2625 (seqFromList!1436 input!3206)) (list!2626 (c!113918 (seqFromList!1436 input!3206))))))

(declare-fun bs!71893 () Bool)

(assert (= bs!71893 d!216991))

(declare-fun m!887187 () Bool)

(assert (=> bs!71893 m!887187))

(assert (=> b!619156 d!216991))

(declare-fun d!216993 () Bool)

(declare-fun res!269775 () Bool)

(declare-fun e!375861 () Bool)

(assert (=> d!216993 (=> res!269775 e!375861)))

(assert (=> d!216993 (= res!269775 ((_ is Nil!6314) rules!3735))))

(assert (=> d!216993 (= (noDuplicateTag!476 thiss!25571 rules!3735 Nil!6315) e!375861)))

(declare-fun b!619381 () Bool)

(declare-fun e!375862 () Bool)

(assert (=> b!619381 (= e!375861 e!375862)))

(declare-fun res!269776 () Bool)

(assert (=> b!619381 (=> (not res!269776) (not e!375862))))

(declare-fun contains!1491 (List!6325 String!8273) Bool)

(assert (=> b!619381 (= res!269776 (not (contains!1491 Nil!6315 (tag!1543 (h!11715 rules!3735)))))))

(declare-fun b!619382 () Bool)

(assert (=> b!619382 (= e!375862 (noDuplicateTag!476 thiss!25571 (t!81563 rules!3735) (Cons!6315 (tag!1543 (h!11715 rules!3735)) Nil!6315)))))

(assert (= (and d!216993 (not res!269775)) b!619381))

(assert (= (and b!619381 res!269776) b!619382))

(declare-fun m!887189 () Bool)

(assert (=> b!619381 m!887189))

(declare-fun m!887191 () Bool)

(assert (=> b!619382 m!887191))

(assert (=> b!619170 d!216993))

(declare-fun b!619383 () Bool)

(declare-fun e!375863 () Bool)

(assert (=> b!619383 (= e!375863 (inv!16 (value!41372 (h!11714 (t!81562 producedTokens!8)))))))

(declare-fun d!216995 () Bool)

(declare-fun c!113954 () Bool)

(assert (=> d!216995 (= c!113954 ((_ is IntegerValue!3915) (value!41372 (h!11714 (t!81562 producedTokens!8)))))))

(assert (=> d!216995 (= (inv!21 (value!41372 (h!11714 (t!81562 producedTokens!8)))) e!375863)))

(declare-fun b!619384 () Bool)

(declare-fun e!375865 () Bool)

(assert (=> b!619384 (= e!375863 e!375865)))

(declare-fun c!113955 () Bool)

(assert (=> b!619384 (= c!113955 ((_ is IntegerValue!3916) (value!41372 (h!11714 (t!81562 producedTokens!8)))))))

(declare-fun b!619385 () Bool)

(assert (=> b!619385 (= e!375865 (inv!17 (value!41372 (h!11714 (t!81562 producedTokens!8)))))))

(declare-fun b!619386 () Bool)

(declare-fun res!269777 () Bool)

(declare-fun e!375864 () Bool)

(assert (=> b!619386 (=> res!269777 e!375864)))

(assert (=> b!619386 (= res!269777 (not ((_ is IntegerValue!3917) (value!41372 (h!11714 (t!81562 producedTokens!8))))))))

(assert (=> b!619386 (= e!375865 e!375864)))

(declare-fun b!619387 () Bool)

(assert (=> b!619387 (= e!375864 (inv!15 (value!41372 (h!11714 (t!81562 producedTokens!8)))))))

(assert (= (and d!216995 c!113954) b!619383))

(assert (= (and d!216995 (not c!113954)) b!619384))

(assert (= (and b!619384 c!113955) b!619385))

(assert (= (and b!619384 (not c!113955)) b!619386))

(assert (= (and b!619386 (not res!269777)) b!619387))

(declare-fun m!887193 () Bool)

(assert (=> b!619383 m!887193))

(declare-fun m!887195 () Bool)

(assert (=> b!619385 m!887195))

(declare-fun m!887197 () Bool)

(assert (=> b!619387 m!887197))

(assert (=> b!619287 d!216995))

(declare-fun d!216997 () Bool)

(assert (=> d!216997 true))

(declare-fun order!4907 () Int)

(declare-fun lambda!16257 () Int)

(declare-fun order!4909 () Int)

(declare-fun dynLambda!3586 (Int Int) Int)

(declare-fun dynLambda!3587 (Int Int) Int)

(assert (=> d!216997 (< (dynLambda!3586 order!4907 (toValue!2194 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) (dynLambda!3587 order!4909 lambda!16257))))

(declare-fun Forall2!236 (Int) Bool)

(assert (=> d!216997 (= (equivClasses!497 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (toValue!2194 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) (Forall2!236 lambda!16257))))

(declare-fun bs!71894 () Bool)

(assert (= bs!71894 d!216997))

(declare-fun m!887199 () Bool)

(assert (=> bs!71894 m!887199))

(assert (=> b!619243 d!216997))

(declare-fun bs!71895 () Bool)

(declare-fun d!216999 () Bool)

(assert (= bs!71895 (and d!216999 d!216951)))

(declare-fun lambda!16260 () Int)

(assert (=> bs!71895 (= lambda!16260 lambda!16251)))

(assert (=> d!216999 true))

(declare-fun lt!264922 () Bool)

(assert (=> d!216999 (= lt!264922 (rulesValidInductive!490 thiss!25571 rules!3735))))

(assert (=> d!216999 (= lt!264922 (forall!1570 rules!3735 lambda!16260))))

(assert (=> d!216999 (= (rulesValid!476 thiss!25571 rules!3735) lt!264922)))

(declare-fun bs!71896 () Bool)

(assert (= bs!71896 d!216999))

(assert (=> bs!71896 m!887011))

(declare-fun m!887201 () Bool)

(assert (=> bs!71896 m!887201))

(assert (=> d!216947 d!216999))

(declare-fun d!217001 () Bool)

(declare-fun isBalanced!535 (Conc!2003) Bool)

(assert (=> d!217001 (= (inv!7984 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))) (isBalanced!535 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))))))

(declare-fun bs!71897 () Bool)

(assert (= bs!71897 d!217001))

(declare-fun m!887203 () Bool)

(assert (=> bs!71897 m!887203))

(assert (=> tb!53767 d!217001))

(declare-fun d!217003 () Bool)

(assert (=> d!217003 (= (inv!7978 (tag!1543 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (= (mod (str.len (value!41371 (tag!1543 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) 2) 0))))

(assert (=> b!619288 d!217003))

(declare-fun d!217005 () Bool)

(declare-fun res!269780 () Bool)

(declare-fun e!375868 () Bool)

(assert (=> d!217005 (=> (not res!269780) (not e!375868))))

(assert (=> d!217005 (= res!269780 (semiInverseModEq!514 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (toValue!2194 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))))))

(assert (=> d!217005 (= (inv!7981 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) e!375868)))

(declare-fun b!619392 () Bool)

(assert (=> b!619392 (= e!375868 (equivClasses!497 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (toValue!2194 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))))))

(assert (= (and d!217005 res!269780) b!619392))

(declare-fun m!887205 () Bool)

(assert (=> d!217005 m!887205))

(declare-fun m!887207 () Bool)

(assert (=> b!619392 m!887207))

(assert (=> b!619288 d!217005))

(declare-fun bs!71898 () Bool)

(declare-fun d!217007 () Bool)

(assert (= bs!71898 (and d!217007 d!216997)))

(declare-fun lambda!16261 () Int)

(assert (=> bs!71898 (= (= (toValue!2194 (transformation!1281 (h!11715 rules!3735))) (toValue!2194 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) (= lambda!16261 lambda!16257))))

(assert (=> d!217007 true))

(assert (=> d!217007 (< (dynLambda!3586 order!4907 (toValue!2194 (transformation!1281 (h!11715 rules!3735)))) (dynLambda!3587 order!4909 lambda!16261))))

(assert (=> d!217007 (= (equivClasses!497 (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toValue!2194 (transformation!1281 (h!11715 rules!3735)))) (Forall2!236 lambda!16261))))

(declare-fun bs!71899 () Bool)

(assert (= bs!71899 d!217007))

(declare-fun m!887209 () Bool)

(assert (=> bs!71899 m!887209))

(assert (=> b!619141 d!217007))

(declare-fun d!217009 () Bool)

(assert (=> d!217009 true))

(declare-fun order!4911 () Int)

(declare-fun lambda!16264 () Int)

(declare-fun order!4913 () Int)

(declare-fun dynLambda!3588 (Int Int) Int)

(declare-fun dynLambda!3589 (Int Int) Int)

(assert (=> d!217009 (< (dynLambda!3588 order!4911 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) (dynLambda!3589 order!4913 lambda!16264))))

(assert (=> d!217009 true))

(assert (=> d!217009 (< (dynLambda!3586 order!4907 (toValue!2194 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) (dynLambda!3589 order!4913 lambda!16264))))

(declare-fun Forall!310 (Int) Bool)

(assert (=> d!217009 (= (semiInverseModEq!514 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (toValue!2194 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) (Forall!310 lambda!16264))))

(declare-fun bs!71900 () Bool)

(assert (= bs!71900 d!217009))

(declare-fun m!887211 () Bool)

(assert (=> bs!71900 m!887211))

(assert (=> d!216977 d!217009))

(declare-fun bs!71901 () Bool)

(declare-fun d!217011 () Bool)

(assert (= bs!71901 (and d!217011 d!216951)))

(declare-fun lambda!16265 () Int)

(assert (=> bs!71901 (= lambda!16265 lambda!16251)))

(declare-fun bs!71902 () Bool)

(assert (= bs!71902 (and d!217011 d!216999)))

(assert (=> bs!71902 (= lambda!16265 lambda!16260)))

(assert (=> d!217011 true))

(declare-fun lt!264923 () Bool)

(assert (=> d!217011 (= lt!264923 (forall!1570 (t!81563 rules!3735) lambda!16265))))

(declare-fun e!375870 () Bool)

(assert (=> d!217011 (= lt!264923 e!375870)))

(declare-fun res!269781 () Bool)

(assert (=> d!217011 (=> res!269781 e!375870)))

(assert (=> d!217011 (= res!269781 (not ((_ is Cons!6314) (t!81563 rules!3735))))))

(assert (=> d!217011 (= (rulesValidInductive!490 thiss!25571 (t!81563 rules!3735)) lt!264923)))

(declare-fun b!619397 () Bool)

(declare-fun e!375869 () Bool)

(assert (=> b!619397 (= e!375870 e!375869)))

(declare-fun res!269782 () Bool)

(assert (=> b!619397 (=> (not res!269782) (not e!375869))))

(assert (=> b!619397 (= res!269782 (ruleValid!453 thiss!25571 (h!11715 (t!81563 rules!3735))))))

(declare-fun b!619398 () Bool)

(assert (=> b!619398 (= e!375869 (rulesValidInductive!490 thiss!25571 (t!81563 (t!81563 rules!3735))))))

(assert (= (and d!217011 (not res!269781)) b!619397))

(assert (= (and b!619397 res!269782) b!619398))

(declare-fun m!887213 () Bool)

(assert (=> d!217011 m!887213))

(declare-fun m!887215 () Bool)

(assert (=> b!619397 m!887215))

(declare-fun m!887217 () Bool)

(assert (=> b!619398 m!887217))

(assert (=> b!619240 d!217011))

(declare-fun d!217013 () Bool)

(declare-fun c!113958 () Bool)

(assert (=> d!217013 (= c!113958 ((_ is Node!2003) (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))))))

(declare-fun e!375875 () Bool)

(assert (=> d!217013 (= (inv!7983 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))) e!375875)))

(declare-fun b!619405 () Bool)

(declare-fun inv!7987 (Conc!2003) Bool)

(assert (=> b!619405 (= e!375875 (inv!7987 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))))))

(declare-fun b!619406 () Bool)

(declare-fun e!375876 () Bool)

(assert (=> b!619406 (= e!375875 e!375876)))

(declare-fun res!269785 () Bool)

(assert (=> b!619406 (= res!269785 (not ((_ is Leaf!3152) (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))))))))

(assert (=> b!619406 (=> res!269785 e!375876)))

(declare-fun b!619407 () Bool)

(declare-fun inv!7988 (Conc!2003) Bool)

(assert (=> b!619407 (= e!375876 (inv!7988 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))))))

(assert (= (and d!217013 c!113958) b!619405))

(assert (= (and d!217013 (not c!113958)) b!619406))

(assert (= (and b!619406 (not res!269785)) b!619407))

(declare-fun m!887219 () Bool)

(assert (=> b!619405 m!887219))

(declare-fun m!887221 () Bool)

(assert (=> b!619407 m!887221))

(assert (=> b!619167 d!217013))

(declare-fun d!217015 () Bool)

(assert (=> d!217015 (= (isEmpty!4528 (originalCharacters!1314 (h!11714 producedTokens!8))) ((_ is Nil!6312) (originalCharacters!1314 (h!11714 producedTokens!8))))))

(assert (=> d!216945 d!217015))

(declare-fun d!217017 () Bool)

(declare-fun res!269786 () Bool)

(declare-fun e!375877 () Bool)

(assert (=> d!217017 (=> (not res!269786) (not e!375877))))

(assert (=> d!217017 (= res!269786 (not (isEmpty!4528 (originalCharacters!1314 (h!11714 (t!81562 producedTokens!8))))))))

(assert (=> d!217017 (= (inv!7982 (h!11714 (t!81562 producedTokens!8))) e!375877)))

(declare-fun b!619408 () Bool)

(declare-fun res!269787 () Bool)

(assert (=> b!619408 (=> (not res!269787) (not e!375877))))

(assert (=> b!619408 (= res!269787 (= (originalCharacters!1314 (h!11714 (t!81562 producedTokens!8))) (list!2625 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (value!41372 (h!11714 (t!81562 producedTokens!8)))))))))

(declare-fun b!619409 () Bool)

(assert (=> b!619409 (= e!375877 (= (size!4904 (h!11714 (t!81562 producedTokens!8))) (size!4908 (originalCharacters!1314 (h!11714 (t!81562 producedTokens!8))))))))

(assert (= (and d!217017 res!269786) b!619408))

(assert (= (and b!619408 res!269787) b!619409))

(declare-fun b_lambda!24529 () Bool)

(assert (=> (not b_lambda!24529) (not b!619408)))

(declare-fun t!81583 () Bool)

(declare-fun tb!53783 () Bool)

(assert (=> (and b!619112 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) t!81583) tb!53783))

(declare-fun b!619410 () Bool)

(declare-fun e!375878 () Bool)

(declare-fun tp!192020 () Bool)

(assert (=> b!619410 (= e!375878 (and (inv!7983 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (value!41372 (h!11714 (t!81562 producedTokens!8)))))) tp!192020))))

(declare-fun result!60690 () Bool)

(assert (=> tb!53783 (= result!60690 (and (inv!7984 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (value!41372 (h!11714 (t!81562 producedTokens!8))))) e!375878))))

(assert (= tb!53783 b!619410))

(declare-fun m!887223 () Bool)

(assert (=> b!619410 m!887223))

(declare-fun m!887225 () Bool)

(assert (=> tb!53783 m!887225))

(assert (=> b!619408 t!81583))

(declare-fun b_and!61515 () Bool)

(assert (= b_and!61491 (and (=> t!81583 result!60690) b_and!61515)))

(declare-fun t!81585 () Bool)

(declare-fun tb!53785 () Bool)

(assert (=> (and b!619121 (= (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) t!81585) tb!53785))

(declare-fun result!60692 () Bool)

(assert (= result!60692 result!60690))

(assert (=> b!619408 t!81585))

(declare-fun b_and!61517 () Bool)

(assert (= b_and!61493 (and (=> t!81585 result!60692) b_and!61517)))

(declare-fun t!81587 () Bool)

(declare-fun tb!53787 () Bool)

(assert (=> (and b!619273 (= (toChars!2053 (transformation!1281 (h!11715 (t!81563 rules!3735)))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) t!81587) tb!53787))

(declare-fun result!60694 () Bool)

(assert (= result!60694 result!60690))

(assert (=> b!619408 t!81587))

(declare-fun b_and!61519 () Bool)

(assert (= b_and!61501 (and (=> t!81587 result!60694) b_and!61519)))

(declare-fun t!81589 () Bool)

(declare-fun tb!53789 () Bool)

(assert (=> (and b!619289 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) t!81589) tb!53789))

(declare-fun result!60696 () Bool)

(assert (= result!60696 result!60690))

(assert (=> b!619408 t!81589))

(declare-fun b_and!61521 () Bool)

(assert (= b_and!61505 (and (=> t!81589 result!60696) b_and!61521)))

(declare-fun m!887227 () Bool)

(assert (=> d!217017 m!887227))

(declare-fun m!887229 () Bool)

(assert (=> b!619408 m!887229))

(assert (=> b!619408 m!887229))

(declare-fun m!887231 () Bool)

(assert (=> b!619408 m!887231))

(declare-fun m!887233 () Bool)

(assert (=> b!619409 m!887233))

(assert (=> b!619286 d!217017))

(declare-fun d!217019 () Bool)

(declare-fun res!269792 () Bool)

(declare-fun e!375883 () Bool)

(assert (=> d!217019 (=> res!269792 e!375883)))

(assert (=> d!217019 (= res!269792 ((_ is Nil!6314) rules!3735))))

(assert (=> d!217019 (= (forall!1570 rules!3735 lambda!16251) e!375883)))

(declare-fun b!619415 () Bool)

(declare-fun e!375884 () Bool)

(assert (=> b!619415 (= e!375883 e!375884)))

(declare-fun res!269793 () Bool)

(assert (=> b!619415 (=> (not res!269793) (not e!375884))))

(declare-fun dynLambda!3590 (Int Rule!2362) Bool)

(assert (=> b!619415 (= res!269793 (dynLambda!3590 lambda!16251 (h!11715 rules!3735)))))

(declare-fun b!619416 () Bool)

(assert (=> b!619416 (= e!375884 (forall!1570 (t!81563 rules!3735) lambda!16251))))

(assert (= (and d!217019 (not res!269792)) b!619415))

(assert (= (and b!619415 res!269793) b!619416))

(declare-fun b_lambda!24531 () Bool)

(assert (=> (not b_lambda!24531) (not b!619415)))

(declare-fun m!887235 () Bool)

(assert (=> b!619415 m!887235))

(declare-fun m!887237 () Bool)

(assert (=> b!619416 m!887237))

(assert (=> d!216951 d!217019))

(declare-fun bs!71903 () Bool)

(declare-fun d!217021 () Bool)

(assert (= bs!71903 (and d!217021 d!217009)))

(declare-fun lambda!16266 () Int)

(assert (=> bs!71903 (= (and (= (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) (= (toValue!2194 (transformation!1281 (h!11715 rules!3735))) (toValue!2194 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))))) (= lambda!16266 lambda!16264))))

(assert (=> d!217021 true))

(assert (=> d!217021 (< (dynLambda!3588 order!4911 (toChars!2053 (transformation!1281 (h!11715 rules!3735)))) (dynLambda!3589 order!4913 lambda!16266))))

(assert (=> d!217021 true))

(assert (=> d!217021 (< (dynLambda!3586 order!4907 (toValue!2194 (transformation!1281 (h!11715 rules!3735)))) (dynLambda!3589 order!4913 lambda!16266))))

(assert (=> d!217021 (= (semiInverseModEq!514 (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toValue!2194 (transformation!1281 (h!11715 rules!3735)))) (Forall!310 lambda!16266))))

(declare-fun bs!71904 () Bool)

(assert (= bs!71904 d!217021))

(declare-fun m!887239 () Bool)

(assert (=> bs!71904 m!887239))

(assert (=> d!216931 d!217021))

(declare-fun d!217023 () Bool)

(declare-fun charsToInt!0 (List!6321) (_ BitVec 32))

(assert (=> d!217023 (= (inv!16 (value!41372 (h!11714 producedTokens!8))) (= (charsToInt!0 (text!9582 (value!41372 (h!11714 producedTokens!8)))) (value!41363 (value!41372 (h!11714 producedTokens!8)))))))

(declare-fun bs!71905 () Bool)

(assert (= bs!71905 d!217023))

(declare-fun m!887241 () Bool)

(assert (=> bs!71905 m!887241))

(assert (=> b!619134 d!217023))

(declare-fun b!619426 () Bool)

(declare-fun e!375889 () List!6323)

(declare-fun e!375890 () List!6323)

(assert (=> b!619426 (= e!375889 e!375890)))

(declare-fun c!113964 () Bool)

(assert (=> b!619426 (= c!113964 ((_ is Leaf!3153) (c!113919 (_1!3811 lt!264888))))))

(declare-fun d!217025 () Bool)

(declare-fun c!113963 () Bool)

(assert (=> d!217025 (= c!113963 ((_ is Empty!2004) (c!113919 (_1!3811 lt!264888))))))

(assert (=> d!217025 (= (list!2627 (c!113919 (_1!3811 lt!264888))) e!375889)))

(declare-fun b!619428 () Bool)

(declare-fun ++!1743 (List!6323 List!6323) List!6323)

(assert (=> b!619428 (= e!375890 (++!1743 (list!2627 (left!5006 (c!113919 (_1!3811 lt!264888)))) (list!2627 (right!5336 (c!113919 (_1!3811 lt!264888))))))))

(declare-fun b!619427 () Bool)

(declare-fun list!2630 (IArray!4009) List!6323)

(assert (=> b!619427 (= e!375890 (list!2630 (xs!4641 (c!113919 (_1!3811 lt!264888)))))))

(declare-fun b!619425 () Bool)

(assert (=> b!619425 (= e!375889 Nil!6313)))

(assert (= (and d!217025 c!113963) b!619425))

(assert (= (and d!217025 (not c!113963)) b!619426))

(assert (= (and b!619426 c!113964) b!619427))

(assert (= (and b!619426 (not c!113964)) b!619428))

(declare-fun m!887243 () Bool)

(assert (=> b!619428 m!887243))

(declare-fun m!887245 () Bool)

(assert (=> b!619428 m!887245))

(assert (=> b!619428 m!887243))

(assert (=> b!619428 m!887245))

(declare-fun m!887247 () Bool)

(assert (=> b!619428 m!887247))

(declare-fun m!887249 () Bool)

(assert (=> b!619427 m!887249))

(assert (=> d!216933 d!217025))

(declare-fun d!217027 () Bool)

(declare-fun charsToBigInt!0 (List!6321 Int) Int)

(assert (=> d!217027 (= (inv!15 (value!41372 (h!11714 producedTokens!8))) (= (charsToBigInt!0 (text!9584 (value!41372 (h!11714 producedTokens!8))) 0) (value!41367 (value!41372 (h!11714 producedTokens!8)))))))

(declare-fun bs!71906 () Bool)

(assert (= bs!71906 d!217027))

(declare-fun m!887251 () Bool)

(assert (=> bs!71906 m!887251))

(assert (=> b!619138 d!217027))

(declare-fun d!217029 () Bool)

(declare-fun lt!264926 () Bool)

(assert (=> d!217029 (= lt!264926 (isEmpty!4531 (list!2624 (_1!3811 lt!264891))))))

(declare-fun isEmpty!4532 (Conc!2004) Bool)

(assert (=> d!217029 (= lt!264926 (isEmpty!4532 (c!113919 (_1!3811 lt!264891))))))

(assert (=> d!217029 (= (isEmpty!4527 (_1!3811 lt!264891)) lt!264926)))

(declare-fun bs!71907 () Bool)

(assert (= bs!71907 d!217029))

(assert (=> bs!71907 m!887049))

(assert (=> bs!71907 m!887049))

(declare-fun m!887253 () Bool)

(assert (=> bs!71907 m!887253))

(declare-fun m!887255 () Bool)

(assert (=> bs!71907 m!887255))

(assert (=> b!619153 d!217029))

(declare-fun d!217031 () Bool)

(declare-fun e!375893 () Bool)

(assert (=> d!217031 e!375893))

(declare-fun res!269796 () Bool)

(assert (=> d!217031 (=> (not res!269796) (not e!375893))))

(declare-fun lt!264929 () BalanceConc!4014)

(assert (=> d!217031 (= res!269796 (= (list!2625 lt!264929) input!3206))))

(declare-fun fromList!286 (List!6322) Conc!2003)

(assert (=> d!217031 (= lt!264929 (BalanceConc!4015 (fromList!286 input!3206)))))

(assert (=> d!217031 (= (fromListB!623 input!3206) lt!264929)))

(declare-fun b!619431 () Bool)

(assert (=> b!619431 (= e!375893 (isBalanced!535 (fromList!286 input!3206)))))

(assert (= (and d!217031 res!269796) b!619431))

(declare-fun m!887257 () Bool)

(assert (=> d!217031 m!887257))

(declare-fun m!887259 () Bool)

(assert (=> d!217031 m!887259))

(assert (=> b!619431 m!887259))

(assert (=> b!619431 m!887259))

(declare-fun m!887261 () Bool)

(assert (=> b!619431 m!887261))

(assert (=> d!216943 d!217031))

(declare-fun d!217033 () Bool)

(assert (=> d!217033 (= (list!2625 (_2!3811 lt!264891)) (list!2626 (c!113918 (_2!3811 lt!264891))))))

(declare-fun bs!71908 () Bool)

(assert (= bs!71908 d!217033))

(declare-fun m!887263 () Bool)

(assert (=> bs!71908 m!887263))

(assert (=> b!619154 d!217033))

(assert (=> b!619154 d!216989))

(assert (=> b!619154 d!216991))

(declare-fun d!217035 () Bool)

(declare-fun lt!264932 () Int)

(assert (=> d!217035 (= lt!264932 (size!4905 (list!2624 (_1!3811 lt!264891))))))

(declare-fun size!4912 (Conc!2004) Int)

(assert (=> d!217035 (= lt!264932 (size!4912 (c!113919 (_1!3811 lt!264891))))))

(assert (=> d!217035 (= (size!4906 (_1!3811 lt!264891)) lt!264932)))

(declare-fun bs!71909 () Bool)

(assert (= bs!71909 d!217035))

(assert (=> bs!71909 m!887049))

(assert (=> bs!71909 m!887049))

(declare-fun m!887265 () Bool)

(assert (=> bs!71909 m!887265))

(declare-fun m!887267 () Bool)

(assert (=> bs!71909 m!887267))

(assert (=> d!216935 d!217035))

(declare-fun b!619537 () Bool)

(declare-fun e!375961 () tuple2!7094)

(assert (=> b!619537 (= e!375961 (tuple2!7095 (BalanceConc!4017 Empty!2004) (seqFromList!1436 input!3206)))))

(declare-fun d!217037 () Bool)

(declare-fun e!375960 () Bool)

(assert (=> d!217037 e!375960))

(declare-fun res!269836 () Bool)

(assert (=> d!217037 (=> (not res!269836) (not e!375960))))

(declare-fun lt!265057 () tuple2!7094)

(declare-fun lexRec!144 (LexerInterface!1169 List!6324 BalanceConc!4014) tuple2!7094)

(assert (=> d!217037 (= res!269836 (= (list!2624 (_1!3811 lt!265057)) (list!2624 (_1!3811 (lexRec!144 thiss!25571 rules!3735 (seqFromList!1436 input!3206))))))))

(declare-fun e!375959 () tuple2!7094)

(assert (=> d!217037 (= lt!265057 e!375959)))

(declare-fun c!113997 () Bool)

(declare-datatypes ((tuple2!7102 0))(
  ( (tuple2!7103 (_1!3815 Token!2286) (_2!3815 BalanceConc!4014)) )
))
(declare-datatypes ((Option!1620 0))(
  ( (None!1619) (Some!1619 (v!16546 tuple2!7102)) )
))
(declare-fun lt!265033 () Option!1620)

(assert (=> d!217037 (= c!113997 ((_ is Some!1619) lt!265033))))

(declare-fun maxPrefixZipperSequenceV2!121 (LexerInterface!1169 List!6324 BalanceConc!4014 BalanceConc!4014) Option!1620)

(assert (=> d!217037 (= lt!265033 (maxPrefixZipperSequenceV2!121 thiss!25571 rules!3735 (seqFromList!1436 input!3206) (seqFromList!1436 input!3206)))))

(declare-datatypes ((Unit!11426 0))(
  ( (Unit!11427) )
))
(declare-fun lt!265041 () Unit!11426)

(declare-fun lt!265056 () Unit!11426)

(assert (=> d!217037 (= lt!265041 lt!265056)))

(declare-fun lt!265032 () List!6322)

(declare-fun lt!265031 () List!6322)

(declare-fun isSuffix!121 (List!6322 List!6322) Bool)

(declare-fun ++!1744 (List!6322 List!6322) List!6322)

(assert (=> d!217037 (isSuffix!121 lt!265032 (++!1744 lt!265031 lt!265032))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!121 (List!6322 List!6322) Unit!11426)

(assert (=> d!217037 (= lt!265056 (lemmaConcatTwoListThenFSndIsSuffix!121 lt!265031 lt!265032))))

(assert (=> d!217037 (= lt!265032 (list!2625 (seqFromList!1436 input!3206)))))

(assert (=> d!217037 (= lt!265031 (list!2625 (BalanceConc!4015 Empty!2003)))))

(assert (=> d!217037 (= (lexTailRecV2!268 thiss!25571 rules!3735 (seqFromList!1436 input!3206) (BalanceConc!4015 Empty!2003) (seqFromList!1436 input!3206) (BalanceConc!4017 Empty!2004)) lt!265057)))

(declare-fun lt!265036 () BalanceConc!4014)

(declare-fun b!619538 () Bool)

(declare-fun append!160 (BalanceConc!4016 Token!2286) BalanceConc!4016)

(assert (=> b!619538 (= e!375959 (lexTailRecV2!268 thiss!25571 rules!3735 (seqFromList!1436 input!3206) lt!265036 (_2!3815 (v!16546 lt!265033)) (append!160 (BalanceConc!4017 Empty!2004) (_1!3815 (v!16546 lt!265033)))))))

(declare-fun lt!265051 () tuple2!7094)

(assert (=> b!619538 (= lt!265051 (lexRec!144 thiss!25571 rules!3735 (_2!3815 (v!16546 lt!265033))))))

(declare-fun lt!265048 () List!6322)

(assert (=> b!619538 (= lt!265048 (list!2625 (BalanceConc!4015 Empty!2003)))))

(declare-fun lt!265038 () List!6322)

(declare-fun charsOf!884 (Token!2286) BalanceConc!4014)

(assert (=> b!619538 (= lt!265038 (list!2625 (charsOf!884 (_1!3815 (v!16546 lt!265033)))))))

(declare-fun lt!265047 () List!6322)

(assert (=> b!619538 (= lt!265047 (list!2625 (_2!3815 (v!16546 lt!265033))))))

(declare-fun lt!265043 () Unit!11426)

(declare-fun lemmaConcatAssociativity!621 (List!6322 List!6322 List!6322) Unit!11426)

(assert (=> b!619538 (= lt!265043 (lemmaConcatAssociativity!621 lt!265048 lt!265038 lt!265047))))

(assert (=> b!619538 (= (++!1744 (++!1744 lt!265048 lt!265038) lt!265047) (++!1744 lt!265048 (++!1744 lt!265038 lt!265047)))))

(declare-fun lt!265039 () Unit!11426)

(assert (=> b!619538 (= lt!265039 lt!265043)))

(declare-fun lt!265045 () Option!1620)

(declare-fun maxPrefixZipperSequence!447 (LexerInterface!1169 List!6324 BalanceConc!4014) Option!1620)

(assert (=> b!619538 (= lt!265045 (maxPrefixZipperSequence!447 thiss!25571 rules!3735 (seqFromList!1436 input!3206)))))

(declare-fun c!113998 () Bool)

(assert (=> b!619538 (= c!113998 ((_ is Some!1619) lt!265045))))

(assert (=> b!619538 (= (lexRec!144 thiss!25571 rules!3735 (seqFromList!1436 input!3206)) e!375961)))

(declare-fun lt!265054 () Unit!11426)

(declare-fun Unit!11428 () Unit!11426)

(assert (=> b!619538 (= lt!265054 Unit!11428)))

(declare-fun lt!265034 () List!6323)

(assert (=> b!619538 (= lt!265034 (list!2624 (BalanceConc!4017 Empty!2004)))))

(declare-fun lt!265030 () List!6323)

(assert (=> b!619538 (= lt!265030 (Cons!6313 (_1!3815 (v!16546 lt!265033)) Nil!6313))))

(declare-fun lt!265027 () List!6323)

(assert (=> b!619538 (= lt!265027 (list!2624 (_1!3811 lt!265051)))))

(declare-fun lt!265028 () Unit!11426)

(declare-fun lemmaConcatAssociativity!622 (List!6323 List!6323 List!6323) Unit!11426)

(assert (=> b!619538 (= lt!265028 (lemmaConcatAssociativity!622 lt!265034 lt!265030 lt!265027))))

(assert (=> b!619538 (= (++!1743 (++!1743 lt!265034 lt!265030) lt!265027) (++!1743 lt!265034 (++!1743 lt!265030 lt!265027)))))

(declare-fun lt!265044 () Unit!11426)

(assert (=> b!619538 (= lt!265044 lt!265028)))

(declare-fun lt!265058 () List!6322)

(assert (=> b!619538 (= lt!265058 (++!1744 (list!2625 (BalanceConc!4015 Empty!2003)) (list!2625 (charsOf!884 (_1!3815 (v!16546 lt!265033))))))))

(declare-fun lt!265050 () List!6322)

(assert (=> b!619538 (= lt!265050 (list!2625 (_2!3815 (v!16546 lt!265033))))))

(declare-fun lt!265046 () List!6323)

(assert (=> b!619538 (= lt!265046 (list!2624 (append!160 (BalanceConc!4017 Empty!2004) (_1!3815 (v!16546 lt!265033)))))))

(declare-fun lt!265037 () Unit!11426)

(declare-fun lemmaLexThenLexPrefix!123 (LexerInterface!1169 List!6324 List!6322 List!6322 List!6323 List!6323 List!6322) Unit!11426)

(assert (=> b!619538 (= lt!265037 (lemmaLexThenLexPrefix!123 thiss!25571 rules!3735 lt!265058 lt!265050 lt!265046 (list!2624 (_1!3811 lt!265051)) (list!2625 (_2!3811 lt!265051))))))

(assert (=> b!619538 (= (lexList!306 thiss!25571 rules!3735 lt!265058) (tuple2!7097 lt!265046 Nil!6312))))

(declare-fun lt!265060 () Unit!11426)

(assert (=> b!619538 (= lt!265060 lt!265037)))

(declare-fun lt!265059 () BalanceConc!4014)

(declare-fun ++!1745 (BalanceConc!4014 BalanceConc!4014) BalanceConc!4014)

(assert (=> b!619538 (= lt!265059 (++!1745 (BalanceConc!4015 Empty!2003) (charsOf!884 (_1!3815 (v!16546 lt!265033)))))))

(declare-fun lt!265042 () Option!1620)

(assert (=> b!619538 (= lt!265042 (maxPrefixZipperSequence!447 thiss!25571 rules!3735 lt!265059))))

(declare-fun c!113999 () Bool)

(assert (=> b!619538 (= c!113999 ((_ is Some!1619) lt!265042))))

(declare-fun e!375962 () tuple2!7094)

(assert (=> b!619538 (= (lexRec!144 thiss!25571 rules!3735 (++!1745 (BalanceConc!4015 Empty!2003) (charsOf!884 (_1!3815 (v!16546 lt!265033))))) e!375962)))

(declare-fun lt!265053 () Unit!11426)

(declare-fun Unit!11429 () Unit!11426)

(assert (=> b!619538 (= lt!265053 Unit!11429)))

(assert (=> b!619538 (= lt!265036 (++!1745 (BalanceConc!4015 Empty!2003) (charsOf!884 (_1!3815 (v!16546 lt!265033)))))))

(declare-fun lt!265040 () List!6322)

(assert (=> b!619538 (= lt!265040 (list!2625 lt!265036))))

(declare-fun lt!265052 () List!6322)

(assert (=> b!619538 (= lt!265052 (list!2625 (_2!3815 (v!16546 lt!265033))))))

(declare-fun lt!265049 () Unit!11426)

(assert (=> b!619538 (= lt!265049 (lemmaConcatTwoListThenFSndIsSuffix!121 lt!265040 lt!265052))))

(assert (=> b!619538 (isSuffix!121 lt!265052 (++!1744 lt!265040 lt!265052))))

(declare-fun lt!265029 () Unit!11426)

(assert (=> b!619538 (= lt!265029 lt!265049)))

(declare-fun b!619539 () Bool)

(declare-fun lt!265055 () tuple2!7094)

(assert (=> b!619539 (= lt!265055 (lexRec!144 thiss!25571 rules!3735 (_2!3815 (v!16546 lt!265045))))))

(declare-fun prepend!244 (BalanceConc!4016 Token!2286) BalanceConc!4016)

(assert (=> b!619539 (= e!375961 (tuple2!7095 (prepend!244 (_1!3811 lt!265055) (_1!3815 (v!16546 lt!265045))) (_2!3811 lt!265055)))))

(declare-fun b!619540 () Bool)

(assert (=> b!619540 (= e!375959 (tuple2!7095 (BalanceConc!4017 Empty!2004) (seqFromList!1436 input!3206)))))

(declare-fun b!619541 () Bool)

(assert (=> b!619541 (= e!375962 (tuple2!7095 (BalanceConc!4017 Empty!2004) lt!265059))))

(declare-fun b!619542 () Bool)

(assert (=> b!619542 (= e!375960 (= (list!2625 (_2!3811 lt!265057)) (list!2625 (_2!3811 (lexRec!144 thiss!25571 rules!3735 (seqFromList!1436 input!3206))))))))

(declare-fun lt!265035 () tuple2!7094)

(declare-fun b!619543 () Bool)

(assert (=> b!619543 (= lt!265035 (lexRec!144 thiss!25571 rules!3735 (_2!3815 (v!16546 lt!265042))))))

(assert (=> b!619543 (= e!375962 (tuple2!7095 (prepend!244 (_1!3811 lt!265035) (_1!3815 (v!16546 lt!265042))) (_2!3811 lt!265035)))))

(assert (= (and d!217037 c!113997) b!619538))

(assert (= (and d!217037 (not c!113997)) b!619540))

(assert (= (and b!619538 c!113998) b!619539))

(assert (= (and b!619538 (not c!113998)) b!619537))

(assert (= (and b!619538 c!113999) b!619543))

(assert (= (and b!619538 (not c!113999)) b!619541))

(assert (= (and d!217037 res!269836) b!619542))

(declare-fun m!887389 () Bool)

(assert (=> b!619543 m!887389))

(declare-fun m!887391 () Bool)

(assert (=> b!619543 m!887391))

(declare-fun m!887393 () Bool)

(assert (=> b!619538 m!887393))

(declare-fun m!887395 () Bool)

(assert (=> b!619538 m!887395))

(declare-fun m!887397 () Bool)

(assert (=> b!619538 m!887397))

(declare-fun m!887399 () Bool)

(assert (=> b!619538 m!887399))

(declare-fun m!887401 () Bool)

(assert (=> b!619538 m!887401))

(declare-fun m!887403 () Bool)

(assert (=> b!619538 m!887403))

(declare-fun m!887405 () Bool)

(assert (=> b!619538 m!887405))

(declare-fun m!887407 () Bool)

(assert (=> b!619538 m!887407))

(declare-fun m!887409 () Bool)

(assert (=> b!619538 m!887409))

(declare-fun m!887411 () Bool)

(assert (=> b!619538 m!887411))

(declare-fun m!887413 () Bool)

(assert (=> b!619538 m!887413))

(declare-fun m!887415 () Bool)

(assert (=> b!619538 m!887415))

(declare-fun m!887417 () Bool)

(assert (=> b!619538 m!887417))

(assert (=> b!619538 m!887411))

(declare-fun m!887419 () Bool)

(assert (=> b!619538 m!887419))

(declare-fun m!887421 () Bool)

(assert (=> b!619538 m!887421))

(declare-fun m!887423 () Bool)

(assert (=> b!619538 m!887423))

(assert (=> b!619538 m!887399))

(declare-fun m!887425 () Bool)

(assert (=> b!619538 m!887425))

(assert (=> b!619538 m!886993))

(assert (=> b!619538 m!887407))

(declare-fun m!887427 () Bool)

(assert (=> b!619538 m!887427))

(declare-fun m!887429 () Bool)

(assert (=> b!619538 m!887429))

(declare-fun m!887431 () Bool)

(assert (=> b!619538 m!887431))

(assert (=> b!619538 m!887403))

(declare-fun m!887433 () Bool)

(assert (=> b!619538 m!887433))

(declare-fun m!887435 () Bool)

(assert (=> b!619538 m!887435))

(assert (=> b!619538 m!887401))

(declare-fun m!887437 () Bool)

(assert (=> b!619538 m!887437))

(declare-fun m!887439 () Bool)

(assert (=> b!619538 m!887439))

(assert (=> b!619538 m!887423))

(assert (=> b!619538 m!887417))

(assert (=> b!619538 m!886993))

(declare-fun m!887441 () Bool)

(assert (=> b!619538 m!887441))

(declare-fun m!887443 () Bool)

(assert (=> b!619538 m!887443))

(assert (=> b!619538 m!887395))

(assert (=> b!619538 m!886993))

(declare-fun m!887445 () Bool)

(assert (=> b!619538 m!887445))

(declare-fun m!887447 () Bool)

(assert (=> b!619538 m!887447))

(declare-fun m!887449 () Bool)

(assert (=> b!619538 m!887449))

(declare-fun m!887451 () Bool)

(assert (=> b!619538 m!887451))

(assert (=> b!619538 m!887415))

(declare-fun m!887453 () Bool)

(assert (=> b!619538 m!887453))

(declare-fun m!887455 () Bool)

(assert (=> b!619538 m!887455))

(assert (=> b!619538 m!887409))

(assert (=> b!619538 m!887417))

(assert (=> b!619538 m!887447))

(assert (=> b!619538 m!887407))

(declare-fun m!887457 () Bool)

(assert (=> b!619538 m!887457))

(assert (=> b!619538 m!887433))

(declare-fun m!887459 () Bool)

(assert (=> b!619542 m!887459))

(assert (=> b!619542 m!886993))

(assert (=> b!619542 m!887441))

(declare-fun m!887461 () Bool)

(assert (=> b!619542 m!887461))

(assert (=> d!217037 m!886993))

(assert (=> d!217037 m!887441))

(declare-fun m!887463 () Bool)

(assert (=> d!217037 m!887463))

(declare-fun m!887465 () Bool)

(assert (=> d!217037 m!887465))

(declare-fun m!887467 () Bool)

(assert (=> d!217037 m!887467))

(declare-fun m!887469 () Bool)

(assert (=> d!217037 m!887469))

(assert (=> d!217037 m!887467))

(assert (=> d!217037 m!886993))

(assert (=> d!217037 m!887035))

(declare-fun m!887471 () Bool)

(assert (=> d!217037 m!887471))

(assert (=> d!217037 m!887409))

(assert (=> d!217037 m!886993))

(assert (=> d!217037 m!886993))

(declare-fun m!887473 () Bool)

(assert (=> d!217037 m!887473))

(declare-fun m!887475 () Bool)

(assert (=> b!619539 m!887475))

(declare-fun m!887477 () Bool)

(assert (=> b!619539 m!887477))

(assert (=> d!216935 d!217037))

(declare-fun d!217105 () Bool)

(declare-fun charsToBigInt!1 (List!6321) Int)

(assert (=> d!217105 (= (inv!17 (value!41372 (h!11714 producedTokens!8))) (= (charsToBigInt!1 (text!9583 (value!41372 (h!11714 producedTokens!8)))) (value!41364 (value!41372 (h!11714 producedTokens!8)))))))

(declare-fun bs!71930 () Bool)

(assert (= bs!71930 d!217105))

(declare-fun m!887479 () Bool)

(assert (=> bs!71930 m!887479))

(assert (=> b!619136 d!217105))

(declare-fun d!217107 () Bool)

(assert (=> d!217107 (= (inv!7978 (tag!1543 (h!11715 (t!81563 rules!3735)))) (= (mod (str.len (value!41371 (tag!1543 (h!11715 (t!81563 rules!3735))))) 2) 0))))

(assert (=> b!619272 d!217107))

(declare-fun d!217109 () Bool)

(declare-fun res!269837 () Bool)

(declare-fun e!375963 () Bool)

(assert (=> d!217109 (=> (not res!269837) (not e!375963))))

(assert (=> d!217109 (= res!269837 (semiInverseModEq!514 (toChars!2053 (transformation!1281 (h!11715 (t!81563 rules!3735)))) (toValue!2194 (transformation!1281 (h!11715 (t!81563 rules!3735))))))))

(assert (=> d!217109 (= (inv!7981 (transformation!1281 (h!11715 (t!81563 rules!3735)))) e!375963)))

(declare-fun b!619544 () Bool)

(assert (=> b!619544 (= e!375963 (equivClasses!497 (toChars!2053 (transformation!1281 (h!11715 (t!81563 rules!3735)))) (toValue!2194 (transformation!1281 (h!11715 (t!81563 rules!3735))))))))

(assert (= (and d!217109 res!269837) b!619544))

(declare-fun m!887481 () Bool)

(assert (=> d!217109 m!887481))

(declare-fun m!887483 () Bool)

(assert (=> b!619544 m!887483))

(assert (=> b!619272 d!217109))

(declare-fun d!217111 () Bool)

(declare-fun lt!265064 () Int)

(assert (=> d!217111 (= lt!265064 (size!4908 (list!2625 (_2!3811 lt!264891))))))

(declare-fun size!4913 (Conc!2003) Int)

(assert (=> d!217111 (= lt!265064 (size!4913 (c!113918 (_2!3811 lt!264891))))))

(assert (=> d!217111 (= (size!4907 (_2!3811 lt!264891)) lt!265064)))

(declare-fun bs!71931 () Bool)

(assert (= bs!71931 d!217111))

(assert (=> bs!71931 m!887033))

(assert (=> bs!71931 m!887033))

(declare-fun m!887485 () Bool)

(assert (=> bs!71931 m!887485))

(declare-fun m!887487 () Bool)

(assert (=> bs!71931 m!887487))

(assert (=> b!619152 d!217111))

(declare-fun d!217113 () Bool)

(declare-fun lt!265065 () Int)

(assert (=> d!217113 (= lt!265065 (size!4908 (list!2625 (seqFromList!1436 input!3206))))))

(assert (=> d!217113 (= lt!265065 (size!4913 (c!113918 (seqFromList!1436 input!3206))))))

(assert (=> d!217113 (= (size!4907 (seqFromList!1436 input!3206)) lt!265065)))

(declare-fun bs!71932 () Bool)

(assert (= bs!71932 d!217113))

(assert (=> bs!71932 m!886993))

(assert (=> bs!71932 m!887035))

(assert (=> bs!71932 m!887035))

(assert (=> bs!71932 m!887179))

(declare-fun m!887489 () Bool)

(assert (=> bs!71932 m!887489))

(assert (=> b!619152 d!217113))

(declare-fun b!619555 () Bool)

(declare-fun e!375969 () List!6322)

(declare-fun list!2631 (IArray!4007) List!6322)

(assert (=> b!619555 (= e!375969 (list!2631 (xs!4640 (c!113918 (_2!3811 lt!264888)))))))

(declare-fun b!619556 () Bool)

(assert (=> b!619556 (= e!375969 (++!1744 (list!2626 (left!5005 (c!113918 (_2!3811 lt!264888)))) (list!2626 (right!5335 (c!113918 (_2!3811 lt!264888))))))))

(declare-fun b!619554 () Bool)

(declare-fun e!375968 () List!6322)

(assert (=> b!619554 (= e!375968 e!375969)))

(declare-fun c!114005 () Bool)

(assert (=> b!619554 (= c!114005 ((_ is Leaf!3152) (c!113918 (_2!3811 lt!264888))))))

(declare-fun d!217115 () Bool)

(declare-fun c!114004 () Bool)

(assert (=> d!217115 (= c!114004 ((_ is Empty!2003) (c!113918 (_2!3811 lt!264888))))))

(assert (=> d!217115 (= (list!2626 (c!113918 (_2!3811 lt!264888))) e!375968)))

(declare-fun b!619553 () Bool)

(assert (=> b!619553 (= e!375968 Nil!6312)))

(assert (= (and d!217115 c!114004) b!619553))

(assert (= (and d!217115 (not c!114004)) b!619554))

(assert (= (and b!619554 c!114005) b!619555))

(assert (= (and b!619554 (not c!114005)) b!619556))

(declare-fun m!887491 () Bool)

(assert (=> b!619555 m!887491))

(declare-fun m!887493 () Bool)

(assert (=> b!619556 m!887493))

(declare-fun m!887495 () Bool)

(assert (=> b!619556 m!887495))

(assert (=> b!619556 m!887493))

(assert (=> b!619556 m!887495))

(declare-fun m!887497 () Bool)

(assert (=> b!619556 m!887497))

(assert (=> d!216923 d!217115))

(declare-fun b!619558 () Bool)

(declare-fun e!375970 () Bool)

(declare-fun tp!192025 () Bool)

(declare-fun tp!192026 () Bool)

(assert (=> b!619558 (= e!375970 (and tp!192025 tp!192026))))

(assert (=> b!619292 (= tp!191963 e!375970)))

(declare-fun b!619559 () Bool)

(declare-fun tp!192022 () Bool)

(assert (=> b!619559 (= e!375970 tp!192022)))

(declare-fun b!619557 () Bool)

(assert (=> b!619557 (= e!375970 tp_is_empty!3589)))

(declare-fun b!619560 () Bool)

(declare-fun tp!192023 () Bool)

(declare-fun tp!192024 () Bool)

(assert (=> b!619560 (= e!375970 (and tp!192023 tp!192024))))

(assert (= (and b!619292 ((_ is ElementMatch!1615) (reg!1944 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619557))

(assert (= (and b!619292 ((_ is Concat!2921) (reg!1944 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619558))

(assert (= (and b!619292 ((_ is Star!1615) (reg!1944 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619559))

(assert (= (and b!619292 ((_ is Union!1615) (reg!1944 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619560))

(declare-fun b!619562 () Bool)

(declare-fun e!375971 () Bool)

(declare-fun tp!192030 () Bool)

(declare-fun tp!192031 () Bool)

(assert (=> b!619562 (= e!375971 (and tp!192030 tp!192031))))

(assert (=> b!619293 (= tp!191964 e!375971)))

(declare-fun b!619563 () Bool)

(declare-fun tp!192027 () Bool)

(assert (=> b!619563 (= e!375971 tp!192027)))

(declare-fun b!619561 () Bool)

(assert (=> b!619561 (= e!375971 tp_is_empty!3589)))

(declare-fun b!619564 () Bool)

(declare-fun tp!192028 () Bool)

(declare-fun tp!192029 () Bool)

(assert (=> b!619564 (= e!375971 (and tp!192028 tp!192029))))

(assert (= (and b!619293 ((_ is ElementMatch!1615) (regOne!3743 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619561))

(assert (= (and b!619293 ((_ is Concat!2921) (regOne!3743 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619562))

(assert (= (and b!619293 ((_ is Star!1615) (regOne!3743 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619563))

(assert (= (and b!619293 ((_ is Union!1615) (regOne!3743 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619564))

(declare-fun b!619566 () Bool)

(declare-fun e!375972 () Bool)

(declare-fun tp!192035 () Bool)

(declare-fun tp!192036 () Bool)

(assert (=> b!619566 (= e!375972 (and tp!192035 tp!192036))))

(assert (=> b!619293 (= tp!191965 e!375972)))

(declare-fun b!619567 () Bool)

(declare-fun tp!192032 () Bool)

(assert (=> b!619567 (= e!375972 tp!192032)))

(declare-fun b!619565 () Bool)

(assert (=> b!619565 (= e!375972 tp_is_empty!3589)))

(declare-fun b!619568 () Bool)

(declare-fun tp!192033 () Bool)

(declare-fun tp!192034 () Bool)

(assert (=> b!619568 (= e!375972 (and tp!192033 tp!192034))))

(assert (= (and b!619293 ((_ is ElementMatch!1615) (regTwo!3743 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619565))

(assert (= (and b!619293 ((_ is Concat!2921) (regTwo!3743 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619566))

(assert (= (and b!619293 ((_ is Star!1615) (regTwo!3743 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619567))

(assert (= (and b!619293 ((_ is Union!1615) (regTwo!3743 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619568))

(declare-fun b!619571 () Bool)

(declare-fun b_free!17993 () Bool)

(declare-fun b_next!18009 () Bool)

(assert (=> b!619571 (= b_free!17993 (not b_next!18009))))

(declare-fun tp!192040 () Bool)

(declare-fun b_and!61531 () Bool)

(assert (=> b!619571 (= tp!192040 b_and!61531)))

(declare-fun b_free!17995 () Bool)

(declare-fun b_next!18011 () Bool)

(assert (=> b!619571 (= b_free!17995 (not b_next!18011))))

(declare-fun t!81603 () Bool)

(declare-fun tb!53799 () Bool)

(assert (=> (and b!619571 (= (toChars!2053 (transformation!1281 (h!11715 (t!81563 (t!81563 rules!3735))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) t!81603) tb!53799))

(declare-fun result!60706 () Bool)

(assert (= result!60706 result!60654))

(assert (=> b!619161 t!81603))

(declare-fun t!81605 () Bool)

(declare-fun tb!53801 () Bool)

(assert (=> (and b!619571 (= (toChars!2053 (transformation!1281 (h!11715 (t!81563 (t!81563 rules!3735))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) t!81605) tb!53801))

(declare-fun result!60708 () Bool)

(assert (= result!60708 result!60690))

(assert (=> b!619408 t!81605))

(declare-fun tp!192039 () Bool)

(declare-fun b_and!61533 () Bool)

(assert (=> b!619571 (= tp!192039 (and (=> t!81603 result!60706) (=> t!81605 result!60708) b_and!61533))))

(declare-fun e!375976 () Bool)

(assert (=> b!619571 (= e!375976 (and tp!192040 tp!192039))))

(declare-fun tp!192037 () Bool)

(declare-fun b!619570 () Bool)

(declare-fun e!375975 () Bool)

(assert (=> b!619570 (= e!375975 (and tp!192037 (inv!7978 (tag!1543 (h!11715 (t!81563 (t!81563 rules!3735))))) (inv!7981 (transformation!1281 (h!11715 (t!81563 (t!81563 rules!3735))))) e!375976))))

(declare-fun b!619569 () Bool)

(declare-fun e!375973 () Bool)

(declare-fun tp!192038 () Bool)

(assert (=> b!619569 (= e!375973 (and e!375975 tp!192038))))

(assert (=> b!619271 (= tp!191943 e!375973)))

(assert (= b!619570 b!619571))

(assert (= b!619569 b!619570))

(assert (= (and b!619271 ((_ is Cons!6314) (t!81563 (t!81563 rules!3735)))) b!619569))

(declare-fun m!887499 () Bool)

(assert (=> b!619570 m!887499))

(declare-fun m!887501 () Bool)

(assert (=> b!619570 m!887501))

(declare-fun b!619573 () Bool)

(declare-fun e!375977 () Bool)

(declare-fun tp!192044 () Bool)

(declare-fun tp!192045 () Bool)

(assert (=> b!619573 (= e!375977 (and tp!192044 tp!192045))))

(assert (=> b!619291 (= tp!191966 e!375977)))

(declare-fun b!619574 () Bool)

(declare-fun tp!192041 () Bool)

(assert (=> b!619574 (= e!375977 tp!192041)))

(declare-fun b!619572 () Bool)

(assert (=> b!619572 (= e!375977 tp_is_empty!3589)))

(declare-fun b!619575 () Bool)

(declare-fun tp!192042 () Bool)

(declare-fun tp!192043 () Bool)

(assert (=> b!619575 (= e!375977 (and tp!192042 tp!192043))))

(assert (= (and b!619291 ((_ is ElementMatch!1615) (regOne!3742 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619572))

(assert (= (and b!619291 ((_ is Concat!2921) (regOne!3742 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619573))

(assert (= (and b!619291 ((_ is Star!1615) (regOne!3742 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619574))

(assert (= (and b!619291 ((_ is Union!1615) (regOne!3742 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619575))

(declare-fun b!619577 () Bool)

(declare-fun e!375978 () Bool)

(declare-fun tp!192049 () Bool)

(declare-fun tp!192050 () Bool)

(assert (=> b!619577 (= e!375978 (and tp!192049 tp!192050))))

(assert (=> b!619291 (= tp!191967 e!375978)))

(declare-fun b!619578 () Bool)

(declare-fun tp!192046 () Bool)

(assert (=> b!619578 (= e!375978 tp!192046)))

(declare-fun b!619576 () Bool)

(assert (=> b!619576 (= e!375978 tp_is_empty!3589)))

(declare-fun b!619579 () Bool)

(declare-fun tp!192047 () Bool)

(declare-fun tp!192048 () Bool)

(assert (=> b!619579 (= e!375978 (and tp!192047 tp!192048))))

(assert (= (and b!619291 ((_ is ElementMatch!1615) (regTwo!3742 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619576))

(assert (= (and b!619291 ((_ is Concat!2921) (regTwo!3742 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619577))

(assert (= (and b!619291 ((_ is Star!1615) (regTwo!3742 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619578))

(assert (= (and b!619291 ((_ is Union!1615) (regTwo!3742 (regex!1281 (rule!2073 (h!11714 producedTokens!8)))))) b!619579))

(declare-fun b!619580 () Bool)

(declare-fun e!375979 () Bool)

(declare-fun tp!192051 () Bool)

(assert (=> b!619580 (= e!375979 (and tp_is_empty!3589 tp!192051))))

(assert (=> b!619275 (= tp!191947 e!375979)))

(assert (= (and b!619275 ((_ is Cons!6312) (t!81561 (t!81561 suffix!1461)))) b!619580))

(declare-fun b!619581 () Bool)

(declare-fun e!375980 () Bool)

(declare-fun tp!192052 () Bool)

(assert (=> b!619581 (= e!375980 (and tp_is_empty!3589 tp!192052))))

(assert (=> b!619287 (= tp!191958 e!375980)))

(assert (= (and b!619287 ((_ is Cons!6312) (originalCharacters!1314 (h!11714 (t!81562 producedTokens!8))))) b!619581))

(declare-fun b!619583 () Bool)

(declare-fun e!375981 () Bool)

(declare-fun tp!192056 () Bool)

(declare-fun tp!192057 () Bool)

(assert (=> b!619583 (= e!375981 (and tp!192056 tp!192057))))

(assert (=> b!619261 (= tp!191929 e!375981)))

(declare-fun b!619584 () Bool)

(declare-fun tp!192053 () Bool)

(assert (=> b!619584 (= e!375981 tp!192053)))

(declare-fun b!619582 () Bool)

(assert (=> b!619582 (= e!375981 tp_is_empty!3589)))

(declare-fun b!619585 () Bool)

(declare-fun tp!192054 () Bool)

(declare-fun tp!192055 () Bool)

(assert (=> b!619585 (= e!375981 (and tp!192054 tp!192055))))

(assert (= (and b!619261 ((_ is ElementMatch!1615) (reg!1944 (regex!1281 (h!11715 rules!3735))))) b!619582))

(assert (= (and b!619261 ((_ is Concat!2921) (reg!1944 (regex!1281 (h!11715 rules!3735))))) b!619583))

(assert (= (and b!619261 ((_ is Star!1615) (reg!1944 (regex!1281 (h!11715 rules!3735))))) b!619584))

(assert (= (and b!619261 ((_ is Union!1615) (reg!1944 (regex!1281 (h!11715 rules!3735))))) b!619585))

(declare-fun b!619587 () Bool)

(declare-fun e!375982 () Bool)

(declare-fun tp!192061 () Bool)

(declare-fun tp!192062 () Bool)

(assert (=> b!619587 (= e!375982 (and tp!192061 tp!192062))))

(assert (=> b!619260 (= tp!191932 e!375982)))

(declare-fun b!619588 () Bool)

(declare-fun tp!192058 () Bool)

(assert (=> b!619588 (= e!375982 tp!192058)))

(declare-fun b!619586 () Bool)

(assert (=> b!619586 (= e!375982 tp_is_empty!3589)))

(declare-fun b!619589 () Bool)

(declare-fun tp!192059 () Bool)

(declare-fun tp!192060 () Bool)

(assert (=> b!619589 (= e!375982 (and tp!192059 tp!192060))))

(assert (= (and b!619260 ((_ is ElementMatch!1615) (regOne!3742 (regex!1281 (h!11715 rules!3735))))) b!619586))

(assert (= (and b!619260 ((_ is Concat!2921) (regOne!3742 (regex!1281 (h!11715 rules!3735))))) b!619587))

(assert (= (and b!619260 ((_ is Star!1615) (regOne!3742 (regex!1281 (h!11715 rules!3735))))) b!619588))

(assert (= (and b!619260 ((_ is Union!1615) (regOne!3742 (regex!1281 (h!11715 rules!3735))))) b!619589))

(declare-fun b!619591 () Bool)

(declare-fun e!375983 () Bool)

(declare-fun tp!192066 () Bool)

(declare-fun tp!192067 () Bool)

(assert (=> b!619591 (= e!375983 (and tp!192066 tp!192067))))

(assert (=> b!619260 (= tp!191933 e!375983)))

(declare-fun b!619592 () Bool)

(declare-fun tp!192063 () Bool)

(assert (=> b!619592 (= e!375983 tp!192063)))

(declare-fun b!619590 () Bool)

(assert (=> b!619590 (= e!375983 tp_is_empty!3589)))

(declare-fun b!619593 () Bool)

(declare-fun tp!192064 () Bool)

(declare-fun tp!192065 () Bool)

(assert (=> b!619593 (= e!375983 (and tp!192064 tp!192065))))

(assert (= (and b!619260 ((_ is ElementMatch!1615) (regTwo!3742 (regex!1281 (h!11715 rules!3735))))) b!619590))

(assert (= (and b!619260 ((_ is Concat!2921) (regTwo!3742 (regex!1281 (h!11715 rules!3735))))) b!619591))

(assert (= (and b!619260 ((_ is Star!1615) (regTwo!3742 (regex!1281 (h!11715 rules!3735))))) b!619592))

(assert (= (and b!619260 ((_ is Union!1615) (regTwo!3742 (regex!1281 (h!11715 rules!3735))))) b!619593))

(declare-fun b!619594 () Bool)

(declare-fun e!375984 () Bool)

(declare-fun tp!192068 () Bool)

(assert (=> b!619594 (= e!375984 (and tp_is_empty!3589 tp!192068))))

(assert (=> b!619274 (= tp!191946 e!375984)))

(assert (= (and b!619274 ((_ is Cons!6312) (t!81561 (t!81561 input!3206)))) b!619594))

(declare-fun b!619596 () Bool)

(declare-fun e!375985 () Bool)

(declare-fun tp!192072 () Bool)

(declare-fun tp!192073 () Bool)

(assert (=> b!619596 (= e!375985 (and tp!192072 tp!192073))))

(assert (=> b!619262 (= tp!191930 e!375985)))

(declare-fun b!619597 () Bool)

(declare-fun tp!192069 () Bool)

(assert (=> b!619597 (= e!375985 tp!192069)))

(declare-fun b!619595 () Bool)

(assert (=> b!619595 (= e!375985 tp_is_empty!3589)))

(declare-fun b!619598 () Bool)

(declare-fun tp!192070 () Bool)

(declare-fun tp!192071 () Bool)

(assert (=> b!619598 (= e!375985 (and tp!192070 tp!192071))))

(assert (= (and b!619262 ((_ is ElementMatch!1615) (regOne!3743 (regex!1281 (h!11715 rules!3735))))) b!619595))

(assert (= (and b!619262 ((_ is Concat!2921) (regOne!3743 (regex!1281 (h!11715 rules!3735))))) b!619596))

(assert (= (and b!619262 ((_ is Star!1615) (regOne!3743 (regex!1281 (h!11715 rules!3735))))) b!619597))

(assert (= (and b!619262 ((_ is Union!1615) (regOne!3743 (regex!1281 (h!11715 rules!3735))))) b!619598))

(declare-fun b!619600 () Bool)

(declare-fun e!375986 () Bool)

(declare-fun tp!192077 () Bool)

(declare-fun tp!192078 () Bool)

(assert (=> b!619600 (= e!375986 (and tp!192077 tp!192078))))

(assert (=> b!619262 (= tp!191931 e!375986)))

(declare-fun b!619601 () Bool)

(declare-fun tp!192074 () Bool)

(assert (=> b!619601 (= e!375986 tp!192074)))

(declare-fun b!619599 () Bool)

(assert (=> b!619599 (= e!375986 tp_is_empty!3589)))

(declare-fun b!619602 () Bool)

(declare-fun tp!192075 () Bool)

(declare-fun tp!192076 () Bool)

(assert (=> b!619602 (= e!375986 (and tp!192075 tp!192076))))

(assert (= (and b!619262 ((_ is ElementMatch!1615) (regTwo!3743 (regex!1281 (h!11715 rules!3735))))) b!619599))

(assert (= (and b!619262 ((_ is Concat!2921) (regTwo!3743 (regex!1281 (h!11715 rules!3735))))) b!619600))

(assert (= (and b!619262 ((_ is Star!1615) (regTwo!3743 (regex!1281 (h!11715 rules!3735))))) b!619601))

(assert (= (and b!619262 ((_ is Union!1615) (regTwo!3743 (regex!1281 (h!11715 rules!3735))))) b!619602))

(declare-fun b!619604 () Bool)

(declare-fun e!375987 () Bool)

(declare-fun tp!192082 () Bool)

(declare-fun tp!192083 () Bool)

(assert (=> b!619604 (= e!375987 (and tp!192082 tp!192083))))

(assert (=> b!619288 (= tp!191959 e!375987)))

(declare-fun b!619605 () Bool)

(declare-fun tp!192079 () Bool)

(assert (=> b!619605 (= e!375987 tp!192079)))

(declare-fun b!619603 () Bool)

(assert (=> b!619603 (= e!375987 tp_is_empty!3589)))

(declare-fun b!619606 () Bool)

(declare-fun tp!192080 () Bool)

(declare-fun tp!192081 () Bool)

(assert (=> b!619606 (= e!375987 (and tp!192080 tp!192081))))

(assert (= (and b!619288 ((_ is ElementMatch!1615) (regex!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) b!619603))

(assert (= (and b!619288 ((_ is Concat!2921) (regex!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) b!619604))

(assert (= (and b!619288 ((_ is Star!1615) (regex!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) b!619605))

(assert (= (and b!619288 ((_ is Union!1615) (regex!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) b!619606))

(declare-fun b!619607 () Bool)

(declare-fun e!375988 () Bool)

(declare-fun tp!192084 () Bool)

(assert (=> b!619607 (= e!375988 (and tp_is_empty!3589 tp!192084))))

(assert (=> b!619248 (= tp!191918 e!375988)))

(assert (= (and b!619248 ((_ is Cons!6312) (t!81561 (originalCharacters!1314 (h!11714 producedTokens!8))))) b!619607))

(declare-fun b!619609 () Bool)

(declare-fun e!375989 () Bool)

(declare-fun tp!192088 () Bool)

(declare-fun tp!192089 () Bool)

(assert (=> b!619609 (= e!375989 (and tp!192088 tp!192089))))

(assert (=> b!619272 (= tp!191942 e!375989)))

(declare-fun b!619610 () Bool)

(declare-fun tp!192085 () Bool)

(assert (=> b!619610 (= e!375989 tp!192085)))

(declare-fun b!619608 () Bool)

(assert (=> b!619608 (= e!375989 tp_is_empty!3589)))

(declare-fun b!619611 () Bool)

(declare-fun tp!192086 () Bool)

(declare-fun tp!192087 () Bool)

(assert (=> b!619611 (= e!375989 (and tp!192086 tp!192087))))

(assert (= (and b!619272 ((_ is ElementMatch!1615) (regex!1281 (h!11715 (t!81563 rules!3735))))) b!619608))

(assert (= (and b!619272 ((_ is Concat!2921) (regex!1281 (h!11715 (t!81563 rules!3735))))) b!619609))

(assert (= (and b!619272 ((_ is Star!1615) (regex!1281 (h!11715 (t!81563 rules!3735))))) b!619610))

(assert (= (and b!619272 ((_ is Union!1615) (regex!1281 (h!11715 (t!81563 rules!3735))))) b!619611))

(declare-fun tp!192096 () Bool)

(declare-fun b!619620 () Bool)

(declare-fun tp!192098 () Bool)

(declare-fun e!375994 () Bool)

(assert (=> b!619620 (= e!375994 (and (inv!7983 (left!5005 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))))) tp!192098 (inv!7983 (right!5335 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))))) tp!192096))))

(declare-fun b!619622 () Bool)

(declare-fun e!375995 () Bool)

(declare-fun tp!192097 () Bool)

(assert (=> b!619622 (= e!375995 tp!192097)))

(declare-fun b!619621 () Bool)

(declare-fun inv!7989 (IArray!4007) Bool)

(assert (=> b!619621 (= e!375994 (and (inv!7989 (xs!4640 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))))) e!375995))))

(assert (=> b!619167 (= tp!191912 (and (inv!7983 (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8))))) e!375994))))

(assert (= (and b!619167 ((_ is Node!2003) (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))))) b!619620))

(assert (= b!619621 b!619622))

(assert (= (and b!619167 ((_ is Leaf!3152) (c!113918 (dynLambda!3584 (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (value!41372 (h!11714 producedTokens!8)))))) b!619621))

(declare-fun m!887503 () Bool)

(assert (=> b!619620 m!887503))

(declare-fun m!887505 () Bool)

(assert (=> b!619620 m!887505))

(declare-fun m!887507 () Bool)

(assert (=> b!619621 m!887507))

(assert (=> b!619167 m!887053))

(declare-fun b!619626 () Bool)

(declare-fun b_free!17997 () Bool)

(declare-fun b_next!18013 () Bool)

(assert (=> b!619626 (= b_free!17997 (not b_next!18013))))

(declare-fun tp!192101 () Bool)

(declare-fun b_and!61535 () Bool)

(assert (=> b!619626 (= tp!192101 b_and!61535)))

(declare-fun b_free!17999 () Bool)

(declare-fun b_next!18015 () Bool)

(assert (=> b!619626 (= b_free!17999 (not b_next!18015))))

(declare-fun t!81607 () Bool)

(declare-fun tb!53803 () Bool)

(assert (=> (and b!619626 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 (t!81562 producedTokens!8)))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8))))) t!81607) tb!53803))

(declare-fun result!60712 () Bool)

(assert (= result!60712 result!60654))

(assert (=> b!619161 t!81607))

(declare-fun t!81609 () Bool)

(declare-fun tb!53805 () Bool)

(assert (=> (and b!619626 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 (t!81562 producedTokens!8)))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8)))))) t!81609) tb!53805))

(declare-fun result!60714 () Bool)

(assert (= result!60714 result!60690))

(assert (=> b!619408 t!81609))

(declare-fun tp!192102 () Bool)

(declare-fun b_and!61537 () Bool)

(assert (=> b!619626 (= tp!192102 (and (=> t!81607 result!60712) (=> t!81609 result!60714) b_and!61537))))

(declare-fun tp!192099 () Bool)

(declare-fun b!619624 () Bool)

(declare-fun e!375998 () Bool)

(declare-fun e!376000 () Bool)

(assert (=> b!619624 (= e!376000 (and (inv!21 (value!41372 (h!11714 (t!81562 (t!81562 producedTokens!8))))) e!375998 tp!192099))))

(declare-fun e!375997 () Bool)

(assert (=> b!619626 (= e!375997 (and tp!192101 tp!192102))))

(declare-fun e!375996 () Bool)

(declare-fun b!619623 () Bool)

(declare-fun tp!192103 () Bool)

(assert (=> b!619623 (= e!375996 (and (inv!7982 (h!11714 (t!81562 (t!81562 producedTokens!8)))) e!376000 tp!192103))))

(assert (=> b!619286 (= tp!191962 e!375996)))

(declare-fun b!619625 () Bool)

(declare-fun tp!192100 () Bool)

(assert (=> b!619625 (= e!375998 (and tp!192100 (inv!7978 (tag!1543 (rule!2073 (h!11714 (t!81562 (t!81562 producedTokens!8)))))) (inv!7981 (transformation!1281 (rule!2073 (h!11714 (t!81562 (t!81562 producedTokens!8)))))) e!375997))))

(assert (= b!619625 b!619626))

(assert (= b!619624 b!619625))

(assert (= b!619623 b!619624))

(assert (= (and b!619286 ((_ is Cons!6313) (t!81562 (t!81562 producedTokens!8)))) b!619623))

(declare-fun m!887509 () Bool)

(assert (=> b!619624 m!887509))

(declare-fun m!887511 () Bool)

(assert (=> b!619623 m!887511))

(declare-fun m!887513 () Bool)

(assert (=> b!619625 m!887513))

(declare-fun m!887515 () Bool)

(assert (=> b!619625 m!887515))

(declare-fun b_lambda!24537 () Bool)

(assert (= b_lambda!24529 (or (and b!619626 b_free!17999 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 (t!81562 producedTokens!8)))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))))) (and b!619121 b_free!17975 (= (toChars!2053 (transformation!1281 (h!11715 rules!3735))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))))) (and b!619273 b_free!17979 (= (toChars!2053 (transformation!1281 (h!11715 (t!81563 rules!3735)))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))))) (and b!619571 b_free!17995 (= (toChars!2053 (transformation!1281 (h!11715 (t!81563 (t!81563 rules!3735))))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))))) (and b!619289 b_free!17983) (and b!619112 b_free!17971 (= (toChars!2053 (transformation!1281 (rule!2073 (h!11714 producedTokens!8)))) (toChars!2053 (transformation!1281 (rule!2073 (h!11714 (t!81562 producedTokens!8))))))) b_lambda!24537)))

(declare-fun b_lambda!24539 () Bool)

(assert (= b_lambda!24531 (or d!216951 b_lambda!24539)))

(declare-fun bs!71933 () Bool)

(declare-fun d!217117 () Bool)

(assert (= bs!71933 (and d!217117 d!216951)))

(assert (=> bs!71933 (= (dynLambda!3590 lambda!16251 (h!11715 rules!3735)) (ruleValid!453 thiss!25571 (h!11715 rules!3735)))))

(assert (=> bs!71933 m!887125))

(assert (=> b!619415 d!217117))

(check-sat (not b_next!17985) (not b!619625) (not d!216989) (not b!619562) (not b!619623) (not b!619610) (not d!217109) (not b!619587) (not b!619428) (not d!217011) (not b!619539) (not d!217009) (not b!619408) (not b!619624) (not b!619383) (not d!217005) (not b!619573) (not d!217035) (not b!619567) (not b!619611) (not b!619560) (not b!619382) (not d!217021) b_and!61537 (not b!619592) (not b!619167) (not d!217113) (not b!619431) (not d!217023) (not d!217033) (not b!619597) (not b!619594) (not b!619589) b_and!61499 (not b!619575) (not b_next!18013) (not d!216987) (not b!619542) (not d!217105) b_and!61531 (not b!619398) (not b!619361) (not b!619578) (not b!619577) (not b!619385) (not b!619591) b_and!61521 (not d!216991) (not d!217027) (not b!619563) (not b!619392) (not d!216997) (not b!619397) (not b!619374) (not b!619410) (not b_next!17987) (not b!619601) (not b!619544) (not b!619588) (not b!619600) (not b!619596) (not tb!53783) (not b_next!17989) (not b!619407) (not b!619598) (not d!217029) (not b!619416) (not b!619622) (not b!619569) b_and!61517 (not b_next!18011) b_and!61519 (not b!619581) b_and!61503 (not b_next!17995) (not b_next!18015) (not b!619584) (not b!619606) (not b!619564) (not b!619604) (not b!619349) (not d!217001) (not d!216999) (not b!619602) (not b!619405) (not b_next!17997) (not bs!71933) (not b!619568) (not d!217007) (not b!619607) (not b!619372) (not b!619381) (not b!619583) (not b!619570) (not d!217031) b_and!61533 (not b!619409) (not b!619621) (not b!619620) b_and!61535 (not b!619579) (not b!619559) (not b!619427) tp_is_empty!3589 (not b!619543) (not d!216983) b_and!61515 (not d!217017) (not b_lambda!24539) (not b!619538) (not d!217037) (not b!619558) (not b!619580) (not b_next!17993) (not b_next!18009) (not b!619375) (not b!619593) (not b_lambda!24537) (not b_next!17999) (not d!216981) b_and!61483 (not d!217111) (not b_next!17991) (not b_lambda!24525) (not b!619605) (not b!619556) (not b!619574) (not b!619387) (not b!619354) (not b!619555) (not b!619585) b_and!61487 (not b!619609) (not b!619566))
(check-sat b_and!61537 b_and!61521 (not b_next!17987) (not b_next!17985) (not b_next!18015) (not b_next!17997) b_and!61533 b_and!61535 b_and!61515 (not b_next!17991) b_and!61487 b_and!61531 b_and!61499 (not b_next!18013) b_and!61517 (not b_next!17989) (not b_next!18011) b_and!61519 b_and!61503 (not b_next!17995) (not b_next!17993) (not b_next!18009) (not b_next!17999) b_and!61483)
