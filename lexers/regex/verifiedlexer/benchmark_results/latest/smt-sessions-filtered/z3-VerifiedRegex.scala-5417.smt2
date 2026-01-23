; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!275472 () Bool)

(assert start!275472)

(declare-fun b!2833917 () Bool)

(declare-fun b_free!81645 () Bool)

(declare-fun b_next!82349 () Bool)

(assert (=> b!2833917 (= b_free!81645 (not b_next!82349))))

(declare-fun tp!906130 () Bool)

(declare-fun b_and!207419 () Bool)

(assert (=> b!2833917 (= tp!906130 b_and!207419)))

(declare-fun b_free!81647 () Bool)

(declare-fun b_next!82351 () Bool)

(assert (=> b!2833917 (= b_free!81647 (not b_next!82351))))

(declare-fun tp!906126 () Bool)

(declare-fun b_and!207421 () Bool)

(assert (=> b!2833917 (= tp!906126 b_and!207421)))

(declare-fun b!2833922 () Bool)

(declare-fun b_free!81649 () Bool)

(declare-fun b_next!82353 () Bool)

(assert (=> b!2833922 (= b_free!81649 (not b_next!82353))))

(declare-fun tp!906127 () Bool)

(declare-fun b_and!207423 () Bool)

(assert (=> b!2833922 (= tp!906127 b_and!207423)))

(declare-fun b_free!81651 () Bool)

(declare-fun b_next!82355 () Bool)

(assert (=> b!2833922 (= b_free!81651 (not b_next!82355))))

(declare-fun tp!906128 () Bool)

(declare-fun b_and!207425 () Bool)

(assert (=> b!2833922 (= tp!906128 b_and!207425)))

(declare-fun b!2833912 () Bool)

(declare-fun res!1179581 () Bool)

(declare-fun e!1794497 () Bool)

(assert (=> b!2833912 (=> (not res!1179581) (not e!1794497))))

(declare-datatypes ((List!33580 0))(
  ( (Nil!33456) (Cons!33456 (h!38876 (_ BitVec 16)) (t!231705 List!33580)) )
))
(declare-datatypes ((TokenValue!5250 0))(
  ( (FloatLiteralValue!10500 (text!37195 List!33580)) (TokenValueExt!5249 (__x!22238 Int)) (Broken!26250 (value!161413 List!33580)) (Object!5373) (End!5250) (Def!5250) (Underscore!5250) (Match!5250) (Else!5250) (Error!5250) (Case!5250) (If!5250) (Extends!5250) (Abstract!5250) (Class!5250) (Val!5250) (DelimiterValue!10500 (del!5310 List!33580)) (KeywordValue!5256 (value!161414 List!33580)) (CommentValue!10500 (value!161415 List!33580)) (WhitespaceValue!10500 (value!161416 List!33580)) (IndentationValue!5250 (value!161417 List!33580)) (String!36771) (Int32!5250) (Broken!26251 (value!161418 List!33580)) (Boolean!5251) (Unit!47404) (OperatorValue!5253 (op!5310 List!33580)) (IdentifierValue!10500 (value!161419 List!33580)) (IdentifierValue!10501 (value!161420 List!33580)) (WhitespaceValue!10501 (value!161421 List!33580)) (True!10500) (False!10500) (Broken!26252 (value!161422 List!33580)) (Broken!26253 (value!161423 List!33580)) (True!10501) (RightBrace!5250) (RightBracket!5250) (Colon!5250) (Null!5250) (Comma!5250) (LeftBracket!5250) (False!10501) (LeftBrace!5250) (ImaginaryLiteralValue!5250 (text!37196 List!33580)) (StringLiteralValue!15750 (value!161424 List!33580)) (EOFValue!5250 (value!161425 List!33580)) (IdentValue!5250 (value!161426 List!33580)) (DelimiterValue!10501 (value!161427 List!33580)) (DedentValue!5250 (value!161428 List!33580)) (NewLineValue!5250 (value!161429 List!33580)) (IntegerValue!15750 (value!161430 (_ BitVec 32)) (text!37197 List!33580)) (IntegerValue!15751 (value!161431 Int) (text!37198 List!33580)) (Times!5250) (Or!5250) (Equal!5250) (Minus!5250) (Broken!26254 (value!161432 List!33580)) (And!5250) (Div!5250) (LessEqual!5250) (Mod!5250) (Concat!13661) (Not!5250) (Plus!5250) (SpaceValue!5250 (value!161433 List!33580)) (IntegerValue!15752 (value!161434 Int) (text!37199 List!33580)) (StringLiteralValue!15751 (text!37200 List!33580)) (FloatLiteralValue!10501 (text!37201 List!33580)) (BytesLiteralValue!5250 (value!161435 List!33580)) (CommentValue!10501 (value!161436 List!33580)) (StringLiteralValue!15752 (value!161437 List!33580)) (ErrorTokenValue!5250 (msg!5311 List!33580)) )
))
(declare-datatypes ((C!17004 0))(
  ( (C!17005 (val!10514 Int)) )
))
(declare-datatypes ((String!36772 0))(
  ( (String!36773 (value!161438 String)) )
))
(declare-datatypes ((Regex!8411 0))(
  ( (ElementMatch!8411 (c!458091 C!17004)) (Concat!13662 (regOne!17334 Regex!8411) (regTwo!17334 Regex!8411)) (EmptyExpr!8411) (Star!8411 (reg!8740 Regex!8411)) (EmptyLang!8411) (Union!8411 (regOne!17335 Regex!8411) (regTwo!17335 Regex!8411)) )
))
(declare-datatypes ((List!33581 0))(
  ( (Nil!33457) (Cons!33457 (h!38877 C!17004) (t!231706 List!33581)) )
))
(declare-datatypes ((IArray!20795 0))(
  ( (IArray!20796 (innerList!10455 List!33581)) )
))
(declare-datatypes ((Conc!10395 0))(
  ( (Node!10395 (left!25244 Conc!10395) (right!25574 Conc!10395) (csize!21020 Int) (cheight!10606 Int)) (Leaf!15813 (xs!13507 IArray!20795) (csize!21021 Int)) (Empty!10395) )
))
(declare-datatypes ((BalanceConc!20428 0))(
  ( (BalanceConc!20429 (c!458092 Conc!10395)) )
))
(declare-datatypes ((TokenValueInjection!9928 0))(
  ( (TokenValueInjection!9929 (toValue!7054 Int) (toChars!6913 Int)) )
))
(declare-datatypes ((Rule!9840 0))(
  ( (Rule!9841 (regex!5020 Regex!8411) (tag!5524 String!36772) (isSeparator!5020 Bool) (transformation!5020 TokenValueInjection!9928)) )
))
(declare-datatypes ((List!33582 0))(
  ( (Nil!33458) (Cons!33458 (h!38878 Rule!9840) (t!231707 List!33582)) )
))
(declare-fun rules!1047 () List!33582)

(declare-fun isEmpty!18441 (List!33582) Bool)

(assert (=> b!2833912 (= res!1179581 (not (isEmpty!18441 rules!1047)))))

(declare-fun b!2833913 () Bool)

(declare-fun res!1179579 () Bool)

(assert (=> b!2833913 (=> (not res!1179579) (not e!1794497))))

(declare-datatypes ((LexerInterface!4610 0))(
  ( (LexerInterfaceExt!4607 (__x!22239 Int)) (Lexer!4608) )
))
(declare-fun thiss!11007 () LexerInterface!4610)

(declare-datatypes ((Token!9442 0))(
  ( (Token!9443 (value!161439 TokenValue!5250) (rule!7448 Rule!9840) (size!26023 Int) (originalCharacters!5752 List!33581)) )
))
(declare-datatypes ((List!33583 0))(
  ( (Nil!33459) (Cons!33459 (h!38879 Token!9442) (t!231708 List!33583)) )
))
(declare-fun l!4019 () List!33583)

(declare-datatypes ((IArray!20797 0))(
  ( (IArray!20798 (innerList!10456 List!33583)) )
))
(declare-datatypes ((Conc!10396 0))(
  ( (Node!10396 (left!25245 Conc!10396) (right!25575 Conc!10396) (csize!21022 Int) (cheight!10607 Int)) (Leaf!15814 (xs!13508 IArray!20797) (csize!21023 Int)) (Empty!10396) )
))
(declare-datatypes ((BalanceConc!20430 0))(
  ( (BalanceConc!20431 (c!458093 Conc!10396)) )
))
(declare-fun rulesProduceEachTokenIndividually!1126 (LexerInterface!4610 List!33582 BalanceConc!20430) Bool)

(declare-fun seqFromList!3266 (List!33583) BalanceConc!20430)

(assert (=> b!2833913 (= res!1179579 (rulesProduceEachTokenIndividually!1126 thiss!11007 rules!1047 (seqFromList!3266 l!4019)))))

(declare-fun b!2833914 () Bool)

(declare-fun res!1179578 () Bool)

(assert (=> b!2833914 (=> (not res!1179578) (not e!1794497))))

(declare-fun rulesProduceEachTokenIndividuallyList!1653 (LexerInterface!4610 List!33582 List!33583) Bool)

(assert (=> b!2833914 (= res!1179578 (rulesProduceEachTokenIndividuallyList!1653 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2833915 () Bool)

(declare-fun res!1179580 () Bool)

(assert (=> b!2833915 (=> (not res!1179580) (not e!1794497))))

(get-info :version)

(assert (=> b!2833915 (= res!1179580 (and ((_ is Cons!33459) l!4019) ((_ is Cons!33459) (t!231708 l!4019))))))

(declare-fun b!2833916 () Bool)

(declare-fun contains!6104 (List!33583 Token!9442) Bool)

(assert (=> b!2833916 (= e!1794497 (not (contains!6104 l!4019 (h!38879 (t!231708 l!4019)))))))

(declare-fun rulesProduceIndividualToken!2140 (LexerInterface!4610 List!33582 Token!9442) Bool)

(assert (=> b!2833916 (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 l!4019))))

(declare-datatypes ((Unit!47405 0))(
  ( (Unit!47406) )
))
(declare-fun lt!1010651 () Unit!47405)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!754 (LexerInterface!4610 List!33582 List!33583 Token!9442) Unit!47405)

(assert (=> b!2833916 (= lt!1010651 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!754 thiss!11007 rules!1047 l!4019 (h!38879 l!4019)))))

(declare-fun e!1794499 () Bool)

(assert (=> b!2833917 (= e!1794499 (and tp!906130 tp!906126))))

(declare-fun b!2833918 () Bool)

(declare-fun e!1794498 () Bool)

(declare-fun e!1794496 () Bool)

(declare-fun tp!906134 () Bool)

(assert (=> b!2833918 (= e!1794498 (and e!1794496 tp!906134))))

(declare-fun e!1794489 () Bool)

(declare-fun tp!906131 () Bool)

(declare-fun e!1794491 () Bool)

(declare-fun b!2833919 () Bool)

(declare-fun inv!21 (TokenValue!5250) Bool)

(assert (=> b!2833919 (= e!1794491 (and (inv!21 (value!161439 (h!38879 l!4019))) e!1794489 tp!906131))))

(declare-fun b!2833920 () Bool)

(declare-fun res!1179582 () Bool)

(assert (=> b!2833920 (=> (not res!1179582) (not e!1794497))))

(declare-fun rulesInvariant!4026 (LexerInterface!4610 List!33582) Bool)

(assert (=> b!2833920 (= res!1179582 (rulesInvariant!4026 thiss!11007 rules!1047))))

(declare-fun e!1794493 () Bool)

(declare-fun tp!906133 () Bool)

(declare-fun b!2833921 () Bool)

(declare-fun inv!45414 (String!36772) Bool)

(declare-fun inv!45417 (TokenValueInjection!9928) Bool)

(assert (=> b!2833921 (= e!1794496 (and tp!906133 (inv!45414 (tag!5524 (h!38878 rules!1047))) (inv!45417 (transformation!5020 (h!38878 rules!1047))) e!1794493))))

(declare-fun tp!906132 () Bool)

(declare-fun b!2833923 () Bool)

(declare-fun e!1794495 () Bool)

(declare-fun inv!45418 (Token!9442) Bool)

(assert (=> b!2833923 (= e!1794495 (and (inv!45418 (h!38879 l!4019)) e!1794491 tp!906132))))

(declare-fun b!2833924 () Bool)

(declare-fun tp!906129 () Bool)

(assert (=> b!2833924 (= e!1794489 (and tp!906129 (inv!45414 (tag!5524 (rule!7448 (h!38879 l!4019)))) (inv!45417 (transformation!5020 (rule!7448 (h!38879 l!4019)))) e!1794499))))

(declare-fun res!1179583 () Bool)

(assert (=> start!275472 (=> (not res!1179583) (not e!1794497))))

(assert (=> start!275472 (= res!1179583 ((_ is Lexer!4608) thiss!11007))))

(assert (=> start!275472 e!1794497))

(assert (=> start!275472 true))

(assert (=> start!275472 e!1794498))

(assert (=> start!275472 e!1794495))

(assert (=> b!2833922 (= e!1794493 (and tp!906127 tp!906128))))

(assert (= (and start!275472 res!1179583) b!2833912))

(assert (= (and b!2833912 res!1179581) b!2833920))

(assert (= (and b!2833920 res!1179582) b!2833914))

(assert (= (and b!2833914 res!1179578) b!2833913))

(assert (= (and b!2833913 res!1179579) b!2833915))

(assert (= (and b!2833915 res!1179580) b!2833916))

(assert (= b!2833921 b!2833922))

(assert (= b!2833918 b!2833921))

(assert (= (and start!275472 ((_ is Cons!33458) rules!1047)) b!2833918))

(assert (= b!2833924 b!2833917))

(assert (= b!2833919 b!2833924))

(assert (= b!2833923 b!2833919))

(assert (= (and start!275472 ((_ is Cons!33459) l!4019)) b!2833923))

(declare-fun m!3263455 () Bool)

(assert (=> b!2833921 m!3263455))

(declare-fun m!3263457 () Bool)

(assert (=> b!2833921 m!3263457))

(declare-fun m!3263459 () Bool)

(assert (=> b!2833914 m!3263459))

(declare-fun m!3263461 () Bool)

(assert (=> b!2833916 m!3263461))

(declare-fun m!3263463 () Bool)

(assert (=> b!2833916 m!3263463))

(declare-fun m!3263465 () Bool)

(assert (=> b!2833916 m!3263465))

(declare-fun m!3263467 () Bool)

(assert (=> b!2833913 m!3263467))

(assert (=> b!2833913 m!3263467))

(declare-fun m!3263469 () Bool)

(assert (=> b!2833913 m!3263469))

(declare-fun m!3263471 () Bool)

(assert (=> b!2833919 m!3263471))

(declare-fun m!3263473 () Bool)

(assert (=> b!2833924 m!3263473))

(declare-fun m!3263475 () Bool)

(assert (=> b!2833924 m!3263475))

(declare-fun m!3263477 () Bool)

(assert (=> b!2833912 m!3263477))

(declare-fun m!3263479 () Bool)

(assert (=> b!2833920 m!3263479))

(declare-fun m!3263481 () Bool)

(assert (=> b!2833923 m!3263481))

(check-sat b_and!207423 (not b_next!82355) (not b!2833918) (not b!2833912) (not b!2833923) (not b!2833914) (not b!2833913) b_and!207425 (not b_next!82349) (not b!2833919) b_and!207419 (not b!2833924) (not b!2833920) (not b_next!82353) b_and!207421 (not b!2833916) (not b_next!82351) (not b!2833921))
(check-sat b_and!207423 (not b_next!82355) b_and!207425 b_and!207421 (not b_next!82349) b_and!207419 (not b_next!82351) (not b_next!82353))
(get-model)

(declare-fun b!2833972 () Bool)

(declare-fun e!1794538 () Bool)

(assert (=> b!2833972 (= e!1794538 true)))

(declare-fun b!2833971 () Bool)

(declare-fun e!1794537 () Bool)

(assert (=> b!2833971 (= e!1794537 e!1794538)))

(declare-fun b!2833970 () Bool)

(declare-fun e!1794536 () Bool)

(assert (=> b!2833970 (= e!1794536 e!1794537)))

(declare-fun d!822180 () Bool)

(assert (=> d!822180 e!1794536))

(assert (= b!2833971 b!2833972))

(assert (= b!2833970 b!2833971))

(assert (= (and d!822180 ((_ is Cons!33458) rules!1047)) b!2833970))

(declare-fun order!17849 () Int)

(declare-fun order!17847 () Int)

(declare-fun lambda!104065 () Int)

(declare-fun dynLambda!14058 (Int Int) Int)

(declare-fun dynLambda!14059 (Int Int) Int)

(assert (=> b!2833972 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14059 order!17849 lambda!104065))))

(declare-fun order!17851 () Int)

(declare-fun dynLambda!14060 (Int Int) Int)

(assert (=> b!2833972 (< (dynLambda!14060 order!17851 (toChars!6913 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14059 order!17849 lambda!104065))))

(assert (=> d!822180 true))

(declare-fun e!1794529 () Bool)

(assert (=> d!822180 e!1794529))

(declare-fun res!1179614 () Bool)

(assert (=> d!822180 (=> (not res!1179614) (not e!1794529))))

(declare-fun lt!1010666 () Bool)

(declare-fun forall!6878 (List!33583 Int) Bool)

(declare-fun list!12499 (BalanceConc!20430) List!33583)

(assert (=> d!822180 (= res!1179614 (= lt!1010666 (forall!6878 (list!12499 (seqFromList!3266 l!4019)) lambda!104065)))))

(declare-fun forall!6879 (BalanceConc!20430 Int) Bool)

(assert (=> d!822180 (= lt!1010666 (forall!6879 (seqFromList!3266 l!4019) lambda!104065))))

(assert (=> d!822180 (not (isEmpty!18441 rules!1047))))

(assert (=> d!822180 (= (rulesProduceEachTokenIndividually!1126 thiss!11007 rules!1047 (seqFromList!3266 l!4019)) lt!1010666)))

(declare-fun b!2833961 () Bool)

(assert (=> b!2833961 (= e!1794529 (= lt!1010666 (rulesProduceEachTokenIndividuallyList!1653 thiss!11007 rules!1047 (list!12499 (seqFromList!3266 l!4019)))))))

(assert (= (and d!822180 res!1179614) b!2833961))

(assert (=> d!822180 m!3263467))

(declare-fun m!3263511 () Bool)

(assert (=> d!822180 m!3263511))

(assert (=> d!822180 m!3263511))

(declare-fun m!3263513 () Bool)

(assert (=> d!822180 m!3263513))

(assert (=> d!822180 m!3263467))

(declare-fun m!3263515 () Bool)

(assert (=> d!822180 m!3263515))

(assert (=> d!822180 m!3263477))

(assert (=> b!2833961 m!3263467))

(assert (=> b!2833961 m!3263511))

(assert (=> b!2833961 m!3263511))

(declare-fun m!3263517 () Bool)

(assert (=> b!2833961 m!3263517))

(assert (=> b!2833913 d!822180))

(declare-fun d!822192 () Bool)

(declare-fun fromListB!1478 (List!33583) BalanceConc!20430)

(assert (=> d!822192 (= (seqFromList!3266 l!4019) (fromListB!1478 l!4019))))

(declare-fun bs!518512 () Bool)

(assert (= bs!518512 d!822192))

(declare-fun m!3263519 () Bool)

(assert (=> bs!518512 m!3263519))

(assert (=> b!2833913 d!822192))

(declare-fun d!822194 () Bool)

(assert (=> d!822194 (= (isEmpty!18441 rules!1047) ((_ is Nil!33458) rules!1047))))

(assert (=> b!2833912 d!822194))

(declare-fun d!822196 () Bool)

(declare-fun res!1179619 () Bool)

(declare-fun e!1794541 () Bool)

(assert (=> d!822196 (=> (not res!1179619) (not e!1794541))))

(declare-fun isEmpty!18444 (List!33581) Bool)

(assert (=> d!822196 (= res!1179619 (not (isEmpty!18444 (originalCharacters!5752 (h!38879 l!4019)))))))

(assert (=> d!822196 (= (inv!45418 (h!38879 l!4019)) e!1794541)))

(declare-fun b!2833979 () Bool)

(declare-fun res!1179620 () Bool)

(assert (=> b!2833979 (=> (not res!1179620) (not e!1794541))))

(declare-fun list!12500 (BalanceConc!20428) List!33581)

(declare-fun dynLambda!14061 (Int TokenValue!5250) BalanceConc!20428)

(assert (=> b!2833979 (= res!1179620 (= (originalCharacters!5752 (h!38879 l!4019)) (list!12500 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))))))

(declare-fun b!2833980 () Bool)

(declare-fun size!26026 (List!33581) Int)

(assert (=> b!2833980 (= e!1794541 (= (size!26023 (h!38879 l!4019)) (size!26026 (originalCharacters!5752 (h!38879 l!4019)))))))

(assert (= (and d!822196 res!1179619) b!2833979))

(assert (= (and b!2833979 res!1179620) b!2833980))

(declare-fun b_lambda!85135 () Bool)

(assert (=> (not b_lambda!85135) (not b!2833979)))

(declare-fun t!231717 () Bool)

(declare-fun tb!154341 () Bool)

(assert (=> (and b!2833917 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019))))) t!231717) tb!154341))

(declare-fun b!2833985 () Bool)

(declare-fun e!1794544 () Bool)

(declare-fun tp!906137 () Bool)

(declare-fun inv!45421 (Conc!10395) Bool)

(assert (=> b!2833985 (= e!1794544 (and (inv!45421 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))) tp!906137))))

(declare-fun result!192458 () Bool)

(declare-fun inv!45422 (BalanceConc!20428) Bool)

(assert (=> tb!154341 (= result!192458 (and (inv!45422 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))) e!1794544))))

(assert (= tb!154341 b!2833985))

(declare-fun m!3263521 () Bool)

(assert (=> b!2833985 m!3263521))

(declare-fun m!3263523 () Bool)

(assert (=> tb!154341 m!3263523))

(assert (=> b!2833979 t!231717))

(declare-fun b_and!207427 () Bool)

(assert (= b_and!207421 (and (=> t!231717 result!192458) b_and!207427)))

(declare-fun tb!154343 () Bool)

(declare-fun t!231719 () Bool)

(assert (=> (and b!2833922 (= (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019))))) t!231719) tb!154343))

(declare-fun result!192462 () Bool)

(assert (= result!192462 result!192458))

(assert (=> b!2833979 t!231719))

(declare-fun b_and!207429 () Bool)

(assert (= b_and!207425 (and (=> t!231719 result!192462) b_and!207429)))

(declare-fun m!3263525 () Bool)

(assert (=> d!822196 m!3263525))

(declare-fun m!3263527 () Bool)

(assert (=> b!2833979 m!3263527))

(assert (=> b!2833979 m!3263527))

(declare-fun m!3263529 () Bool)

(assert (=> b!2833979 m!3263529))

(declare-fun m!3263531 () Bool)

(assert (=> b!2833980 m!3263531))

(assert (=> b!2833923 d!822196))

(declare-fun bs!518514 () Bool)

(declare-fun d!822198 () Bool)

(assert (= bs!518514 (and d!822198 d!822180)))

(declare-fun lambda!104068 () Int)

(assert (=> bs!518514 (= lambda!104068 lambda!104065)))

(declare-fun b!2834009 () Bool)

(declare-fun e!1794562 () Bool)

(assert (=> b!2834009 (= e!1794562 true)))

(declare-fun b!2834008 () Bool)

(declare-fun e!1794561 () Bool)

(assert (=> b!2834008 (= e!1794561 e!1794562)))

(declare-fun b!2834007 () Bool)

(declare-fun e!1794560 () Bool)

(assert (=> b!2834007 (= e!1794560 e!1794561)))

(assert (=> d!822198 e!1794560))

(assert (= b!2834008 b!2834009))

(assert (= b!2834007 b!2834008))

(assert (= (and d!822198 ((_ is Cons!33458) rules!1047)) b!2834007))

(assert (=> b!2834009 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14059 order!17849 lambda!104068))))

(assert (=> b!2834009 (< (dynLambda!14060 order!17851 (toChars!6913 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14059 order!17849 lambda!104068))))

(assert (=> d!822198 true))

(declare-fun lt!1010672 () Bool)

(assert (=> d!822198 (= lt!1010672 (forall!6878 l!4019 lambda!104068))))

(declare-fun e!1794559 () Bool)

(assert (=> d!822198 (= lt!1010672 e!1794559)))

(declare-fun res!1179629 () Bool)

(assert (=> d!822198 (=> res!1179629 e!1794559)))

(assert (=> d!822198 (= res!1179629 (not ((_ is Cons!33459) l!4019)))))

(assert (=> d!822198 (not (isEmpty!18441 rules!1047))))

(assert (=> d!822198 (= (rulesProduceEachTokenIndividuallyList!1653 thiss!11007 rules!1047 l!4019) lt!1010672)))

(declare-fun b!2834005 () Bool)

(declare-fun e!1794558 () Bool)

(assert (=> b!2834005 (= e!1794559 e!1794558)))

(declare-fun res!1179628 () Bool)

(assert (=> b!2834005 (=> (not res!1179628) (not e!1794558))))

(assert (=> b!2834005 (= res!1179628 (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 l!4019)))))

(declare-fun b!2834006 () Bool)

(assert (=> b!2834006 (= e!1794558 (rulesProduceEachTokenIndividuallyList!1653 thiss!11007 rules!1047 (t!231708 l!4019)))))

(assert (= (and d!822198 (not res!1179629)) b!2834005))

(assert (= (and b!2834005 res!1179628) b!2834006))

(declare-fun m!3263541 () Bool)

(assert (=> d!822198 m!3263541))

(assert (=> d!822198 m!3263477))

(assert (=> b!2834005 m!3263463))

(declare-fun m!3263543 () Bool)

(assert (=> b!2834006 m!3263543))

(assert (=> b!2833914 d!822198))

(declare-fun d!822204 () Bool)

(assert (=> d!822204 (= (inv!45414 (tag!5524 (rule!7448 (h!38879 l!4019)))) (= (mod (str.len (value!161438 (tag!5524 (rule!7448 (h!38879 l!4019))))) 2) 0))))

(assert (=> b!2833924 d!822204))

(declare-fun d!822206 () Bool)

(declare-fun res!1179632 () Bool)

(declare-fun e!1794565 () Bool)

(assert (=> d!822206 (=> (not res!1179632) (not e!1794565))))

(declare-fun semiInverseModEq!2087 (Int Int) Bool)

(assert (=> d!822206 (= res!1179632 (semiInverseModEq!2087 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (toValue!7054 (transformation!5020 (rule!7448 (h!38879 l!4019))))))))

(assert (=> d!822206 (= (inv!45417 (transformation!5020 (rule!7448 (h!38879 l!4019)))) e!1794565)))

(declare-fun b!2834012 () Bool)

(declare-fun equivClasses!1986 (Int Int) Bool)

(assert (=> b!2834012 (= e!1794565 (equivClasses!1986 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (toValue!7054 (transformation!5020 (rule!7448 (h!38879 l!4019))))))))

(assert (= (and d!822206 res!1179632) b!2834012))

(declare-fun m!3263545 () Bool)

(assert (=> d!822206 m!3263545))

(declare-fun m!3263547 () Bool)

(assert (=> b!2834012 m!3263547))

(assert (=> b!2833924 d!822206))

(declare-fun b!2834023 () Bool)

(declare-fun e!1794572 () Bool)

(declare-fun inv!17 (TokenValue!5250) Bool)

(assert (=> b!2834023 (= e!1794572 (inv!17 (value!161439 (h!38879 l!4019))))))

(declare-fun b!2834024 () Bool)

(declare-fun e!1794574 () Bool)

(assert (=> b!2834024 (= e!1794574 e!1794572)))

(declare-fun c!458105 () Bool)

(assert (=> b!2834024 (= c!458105 ((_ is IntegerValue!15751) (value!161439 (h!38879 l!4019))))))

(declare-fun b!2834026 () Bool)

(declare-fun e!1794573 () Bool)

(declare-fun inv!15 (TokenValue!5250) Bool)

(assert (=> b!2834026 (= e!1794573 (inv!15 (value!161439 (h!38879 l!4019))))))

(declare-fun b!2834027 () Bool)

(declare-fun res!1179635 () Bool)

(assert (=> b!2834027 (=> res!1179635 e!1794573)))

(assert (=> b!2834027 (= res!1179635 (not ((_ is IntegerValue!15752) (value!161439 (h!38879 l!4019)))))))

(assert (=> b!2834027 (= e!1794572 e!1794573)))

(declare-fun d!822208 () Bool)

(declare-fun c!458104 () Bool)

(assert (=> d!822208 (= c!458104 ((_ is IntegerValue!15750) (value!161439 (h!38879 l!4019))))))

(assert (=> d!822208 (= (inv!21 (value!161439 (h!38879 l!4019))) e!1794574)))

(declare-fun b!2834025 () Bool)

(declare-fun inv!16 (TokenValue!5250) Bool)

(assert (=> b!2834025 (= e!1794574 (inv!16 (value!161439 (h!38879 l!4019))))))

(assert (= (and d!822208 c!458104) b!2834025))

(assert (= (and d!822208 (not c!458104)) b!2834024))

(assert (= (and b!2834024 c!458105) b!2834023))

(assert (= (and b!2834024 (not c!458105)) b!2834027))

(assert (= (and b!2834027 (not res!1179635)) b!2834026))

(declare-fun m!3263549 () Bool)

(assert (=> b!2834023 m!3263549))

(declare-fun m!3263551 () Bool)

(assert (=> b!2834026 m!3263551))

(declare-fun m!3263553 () Bool)

(assert (=> b!2834025 m!3263553))

(assert (=> b!2833919 d!822208))

(declare-fun d!822210 () Bool)

(assert (=> d!822210 (= (inv!45414 (tag!5524 (h!38878 rules!1047))) (= (mod (str.len (value!161438 (tag!5524 (h!38878 rules!1047)))) 2) 0))))

(assert (=> b!2833921 d!822210))

(declare-fun d!822212 () Bool)

(declare-fun res!1179636 () Bool)

(declare-fun e!1794575 () Bool)

(assert (=> d!822212 (=> (not res!1179636) (not e!1794575))))

(assert (=> d!822212 (= res!1179636 (semiInverseModEq!2087 (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toValue!7054 (transformation!5020 (h!38878 rules!1047)))))))

(assert (=> d!822212 (= (inv!45417 (transformation!5020 (h!38878 rules!1047))) e!1794575)))

(declare-fun b!2834028 () Bool)

(assert (=> b!2834028 (= e!1794575 (equivClasses!1986 (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toValue!7054 (transformation!5020 (h!38878 rules!1047)))))))

(assert (= (and d!822212 res!1179636) b!2834028))

(declare-fun m!3263555 () Bool)

(assert (=> d!822212 m!3263555))

(declare-fun m!3263557 () Bool)

(assert (=> b!2834028 m!3263557))

(assert (=> b!2833921 d!822212))

(declare-fun d!822214 () Bool)

(declare-fun res!1179639 () Bool)

(declare-fun e!1794578 () Bool)

(assert (=> d!822214 (=> (not res!1179639) (not e!1794578))))

(declare-fun rulesValid!1857 (LexerInterface!4610 List!33582) Bool)

(assert (=> d!822214 (= res!1179639 (rulesValid!1857 thiss!11007 rules!1047))))

(assert (=> d!822214 (= (rulesInvariant!4026 thiss!11007 rules!1047) e!1794578)))

(declare-fun b!2834031 () Bool)

(declare-datatypes ((List!33585 0))(
  ( (Nil!33461) (Cons!33461 (h!38881 String!36772) (t!231742 List!33585)) )
))
(declare-fun noDuplicateTag!1853 (LexerInterface!4610 List!33582 List!33585) Bool)

(assert (=> b!2834031 (= e!1794578 (noDuplicateTag!1853 thiss!11007 rules!1047 Nil!33461))))

(assert (= (and d!822214 res!1179639) b!2834031))

(declare-fun m!3263559 () Bool)

(assert (=> d!822214 m!3263559))

(declare-fun m!3263561 () Bool)

(assert (=> b!2834031 m!3263561))

(assert (=> b!2833920 d!822214))

(declare-fun d!822216 () Bool)

(declare-fun lt!1010675 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4637 (List!33583) (InoxSet Token!9442))

(assert (=> d!822216 (= lt!1010675 (select (content!4637 l!4019) (h!38879 (t!231708 l!4019))))))

(declare-fun e!1794584 () Bool)

(assert (=> d!822216 (= lt!1010675 e!1794584)))

(declare-fun res!1179644 () Bool)

(assert (=> d!822216 (=> (not res!1179644) (not e!1794584))))

(assert (=> d!822216 (= res!1179644 ((_ is Cons!33459) l!4019))))

(assert (=> d!822216 (= (contains!6104 l!4019 (h!38879 (t!231708 l!4019))) lt!1010675)))

(declare-fun b!2834036 () Bool)

(declare-fun e!1794583 () Bool)

(assert (=> b!2834036 (= e!1794584 e!1794583)))

(declare-fun res!1179645 () Bool)

(assert (=> b!2834036 (=> res!1179645 e!1794583)))

(assert (=> b!2834036 (= res!1179645 (= (h!38879 l!4019) (h!38879 (t!231708 l!4019))))))

(declare-fun b!2834037 () Bool)

(assert (=> b!2834037 (= e!1794583 (contains!6104 (t!231708 l!4019) (h!38879 (t!231708 l!4019))))))

(assert (= (and d!822216 res!1179644) b!2834036))

(assert (= (and b!2834036 (not res!1179645)) b!2834037))

(declare-fun m!3263563 () Bool)

(assert (=> d!822216 m!3263563))

(declare-fun m!3263565 () Bool)

(assert (=> d!822216 m!3263565))

(declare-fun m!3263567 () Bool)

(assert (=> b!2834037 m!3263567))

(assert (=> b!2833916 d!822216))

(declare-fun d!822218 () Bool)

(declare-fun lt!1010684 () Bool)

(declare-fun e!1794646 () Bool)

(assert (=> d!822218 (= lt!1010684 e!1794646)))

(declare-fun res!1179669 () Bool)

(assert (=> d!822218 (=> (not res!1179669) (not e!1794646))))

(declare-datatypes ((tuple2!33528 0))(
  ( (tuple2!33529 (_1!19876 BalanceConc!20430) (_2!19876 BalanceConc!20428)) )
))
(declare-fun lex!2020 (LexerInterface!4610 List!33582 BalanceConc!20428) tuple2!33528)

(declare-fun print!1739 (LexerInterface!4610 BalanceConc!20430) BalanceConc!20428)

(declare-fun singletonSeq!2171 (Token!9442) BalanceConc!20430)

(assert (=> d!822218 (= res!1179669 (= (list!12499 (_1!19876 (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019)))))) (list!12499 (singletonSeq!2171 (h!38879 l!4019)))))))

(declare-fun e!1794645 () Bool)

(assert (=> d!822218 (= lt!1010684 e!1794645)))

(declare-fun res!1179670 () Bool)

(assert (=> d!822218 (=> (not res!1179670) (not e!1794645))))

(declare-fun lt!1010683 () tuple2!33528)

(declare-fun size!26027 (BalanceConc!20430) Int)

(assert (=> d!822218 (= res!1179670 (= (size!26027 (_1!19876 lt!1010683)) 1))))

(assert (=> d!822218 (= lt!1010683 (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019)))))))

(assert (=> d!822218 (not (isEmpty!18441 rules!1047))))

(assert (=> d!822218 (= (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 l!4019)) lt!1010684)))

(declare-fun b!2834116 () Bool)

(declare-fun res!1179668 () Bool)

(assert (=> b!2834116 (=> (not res!1179668) (not e!1794645))))

(declare-fun apply!7811 (BalanceConc!20430 Int) Token!9442)

(assert (=> b!2834116 (= res!1179668 (= (apply!7811 (_1!19876 lt!1010683) 0) (h!38879 l!4019)))))

(declare-fun b!2834117 () Bool)

(declare-fun isEmpty!18445 (BalanceConc!20428) Bool)

(assert (=> b!2834117 (= e!1794645 (isEmpty!18445 (_2!19876 lt!1010683)))))

(declare-fun b!2834118 () Bool)

(assert (=> b!2834118 (= e!1794646 (isEmpty!18445 (_2!19876 (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019)))))))))

(assert (= (and d!822218 res!1179670) b!2834116))

(assert (= (and b!2834116 res!1179668) b!2834117))

(assert (= (and d!822218 res!1179669) b!2834118))

(declare-fun m!3263615 () Bool)

(assert (=> d!822218 m!3263615))

(declare-fun m!3263617 () Bool)

(assert (=> d!822218 m!3263617))

(declare-fun m!3263619 () Bool)

(assert (=> d!822218 m!3263619))

(assert (=> d!822218 m!3263477))

(declare-fun m!3263621 () Bool)

(assert (=> d!822218 m!3263621))

(assert (=> d!822218 m!3263617))

(declare-fun m!3263623 () Bool)

(assert (=> d!822218 m!3263623))

(assert (=> d!822218 m!3263623))

(declare-fun m!3263625 () Bool)

(assert (=> d!822218 m!3263625))

(assert (=> d!822218 m!3263617))

(declare-fun m!3263627 () Bool)

(assert (=> b!2834116 m!3263627))

(declare-fun m!3263629 () Bool)

(assert (=> b!2834117 m!3263629))

(assert (=> b!2834118 m!3263617))

(assert (=> b!2834118 m!3263617))

(assert (=> b!2834118 m!3263623))

(assert (=> b!2834118 m!3263623))

(assert (=> b!2834118 m!3263625))

(declare-fun m!3263631 () Bool)

(assert (=> b!2834118 m!3263631))

(assert (=> b!2833916 d!822218))

(declare-fun d!822234 () Bool)

(assert (=> d!822234 (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 l!4019))))

(declare-fun lt!1010687 () Unit!47405)

(declare-fun choose!16726 (LexerInterface!4610 List!33582 List!33583 Token!9442) Unit!47405)

(assert (=> d!822234 (= lt!1010687 (choose!16726 thiss!11007 rules!1047 l!4019 (h!38879 l!4019)))))

(assert (=> d!822234 (not (isEmpty!18441 rules!1047))))

(assert (=> d!822234 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!754 thiss!11007 rules!1047 l!4019 (h!38879 l!4019)) lt!1010687)))

(declare-fun bs!518517 () Bool)

(assert (= bs!518517 d!822234))

(assert (=> bs!518517 m!3263463))

(declare-fun m!3263633 () Bool)

(assert (=> bs!518517 m!3263633))

(assert (=> bs!518517 m!3263477))

(assert (=> b!2833916 d!822234))

(declare-fun b!2834129 () Bool)

(declare-fun b_free!81661 () Bool)

(declare-fun b_next!82365 () Bool)

(assert (=> b!2834129 (= b_free!81661 (not b_next!82365))))

(declare-fun tp!906202 () Bool)

(declare-fun b_and!207443 () Bool)

(assert (=> b!2834129 (= tp!906202 b_and!207443)))

(declare-fun b_free!81663 () Bool)

(declare-fun b_next!82367 () Bool)

(assert (=> b!2834129 (= b_free!81663 (not b_next!82367))))

(declare-fun t!231739 () Bool)

(declare-fun tb!154353 () Bool)

(assert (=> (and b!2834129 (= (toChars!6913 (transformation!5020 (h!38878 (t!231707 rules!1047)))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019))))) t!231739) tb!154353))

(declare-fun result!192484 () Bool)

(assert (= result!192484 result!192458))

(assert (=> b!2833979 t!231739))

(declare-fun tp!906201 () Bool)

(declare-fun b_and!207445 () Bool)

(assert (=> b!2834129 (= tp!906201 (and (=> t!231739 result!192484) b_and!207445))))

(declare-fun e!1794655 () Bool)

(assert (=> b!2834129 (= e!1794655 (and tp!906202 tp!906201))))

(declare-fun e!1794656 () Bool)

(declare-fun tp!906200 () Bool)

(declare-fun b!2834128 () Bool)

(assert (=> b!2834128 (= e!1794656 (and tp!906200 (inv!45414 (tag!5524 (h!38878 (t!231707 rules!1047)))) (inv!45417 (transformation!5020 (h!38878 (t!231707 rules!1047)))) e!1794655))))

(declare-fun b!2834127 () Bool)

(declare-fun e!1794658 () Bool)

(declare-fun tp!906199 () Bool)

(assert (=> b!2834127 (= e!1794658 (and e!1794656 tp!906199))))

(assert (=> b!2833918 (= tp!906134 e!1794658)))

(assert (= b!2834128 b!2834129))

(assert (= b!2834127 b!2834128))

(assert (= (and b!2833918 ((_ is Cons!33458) (t!231707 rules!1047))) b!2834127))

(declare-fun m!3263635 () Bool)

(assert (=> b!2834128 m!3263635))

(declare-fun m!3263637 () Bool)

(assert (=> b!2834128 m!3263637))

(declare-fun b!2834143 () Bool)

(declare-fun b_free!81665 () Bool)

(declare-fun b_next!82369 () Bool)

(assert (=> b!2834143 (= b_free!81665 (not b_next!82369))))

(declare-fun tp!906213 () Bool)

(declare-fun b_and!207447 () Bool)

(assert (=> b!2834143 (= tp!906213 b_and!207447)))

(declare-fun b_free!81667 () Bool)

(declare-fun b_next!82371 () Bool)

(assert (=> b!2834143 (= b_free!81667 (not b_next!82371))))

(declare-fun t!231741 () Bool)

(declare-fun tb!154355 () Bool)

(assert (=> (and b!2834143 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019))))) t!231741) tb!154355))

(declare-fun result!192488 () Bool)

(assert (= result!192488 result!192458))

(assert (=> b!2833979 t!231741))

(declare-fun b_and!207449 () Bool)

(declare-fun tp!906214 () Bool)

(assert (=> b!2834143 (= tp!906214 (and (=> t!231741 result!192488) b_and!207449))))

(declare-fun tp!906217 () Bool)

(declare-fun e!1794671 () Bool)

(declare-fun e!1794673 () Bool)

(declare-fun b!2834140 () Bool)

(assert (=> b!2834140 (= e!1794673 (and (inv!45418 (h!38879 (t!231708 l!4019))) e!1794671 tp!906217))))

(declare-fun b!2834141 () Bool)

(declare-fun e!1794675 () Bool)

(declare-fun tp!906215 () Bool)

(assert (=> b!2834141 (= e!1794671 (and (inv!21 (value!161439 (h!38879 (t!231708 l!4019)))) e!1794675 tp!906215))))

(declare-fun tp!906216 () Bool)

(declare-fun b!2834142 () Bool)

(declare-fun e!1794674 () Bool)

(assert (=> b!2834142 (= e!1794675 (and tp!906216 (inv!45414 (tag!5524 (rule!7448 (h!38879 (t!231708 l!4019))))) (inv!45417 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) e!1794674))))

(assert (=> b!2834143 (= e!1794674 (and tp!906213 tp!906214))))

(assert (=> b!2833923 (= tp!906132 e!1794673)))

(assert (= b!2834142 b!2834143))

(assert (= b!2834141 b!2834142))

(assert (= b!2834140 b!2834141))

(assert (= (and b!2833923 ((_ is Cons!33459) (t!231708 l!4019))) b!2834140))

(declare-fun m!3263639 () Bool)

(assert (=> b!2834140 m!3263639))

(declare-fun m!3263641 () Bool)

(assert (=> b!2834141 m!3263641))

(declare-fun m!3263643 () Bool)

(assert (=> b!2834142 m!3263643))

(declare-fun m!3263645 () Bool)

(assert (=> b!2834142 m!3263645))

(declare-fun b!2834154 () Bool)

(declare-fun e!1794679 () Bool)

(declare-fun tp_is_empty!14587 () Bool)

(assert (=> b!2834154 (= e!1794679 tp_is_empty!14587)))

(declare-fun b!2834155 () Bool)

(declare-fun tp!906232 () Bool)

(declare-fun tp!906230 () Bool)

(assert (=> b!2834155 (= e!1794679 (and tp!906232 tp!906230))))

(declare-fun b!2834157 () Bool)

(declare-fun tp!906228 () Bool)

(declare-fun tp!906231 () Bool)

(assert (=> b!2834157 (= e!1794679 (and tp!906228 tp!906231))))

(assert (=> b!2833924 (= tp!906129 e!1794679)))

(declare-fun b!2834156 () Bool)

(declare-fun tp!906229 () Bool)

(assert (=> b!2834156 (= e!1794679 tp!906229)))

(assert (= (and b!2833924 ((_ is ElementMatch!8411) (regex!5020 (rule!7448 (h!38879 l!4019))))) b!2834154))

(assert (= (and b!2833924 ((_ is Concat!13662) (regex!5020 (rule!7448 (h!38879 l!4019))))) b!2834155))

(assert (= (and b!2833924 ((_ is Star!8411) (regex!5020 (rule!7448 (h!38879 l!4019))))) b!2834156))

(assert (= (and b!2833924 ((_ is Union!8411) (regex!5020 (rule!7448 (h!38879 l!4019))))) b!2834157))

(declare-fun b!2834162 () Bool)

(declare-fun e!1794682 () Bool)

(declare-fun tp!906235 () Bool)

(assert (=> b!2834162 (= e!1794682 (and tp_is_empty!14587 tp!906235))))

(assert (=> b!2833919 (= tp!906131 e!1794682)))

(assert (= (and b!2833919 ((_ is Cons!33457) (originalCharacters!5752 (h!38879 l!4019)))) b!2834162))

(declare-fun b!2834163 () Bool)

(declare-fun e!1794683 () Bool)

(assert (=> b!2834163 (= e!1794683 tp_is_empty!14587)))

(declare-fun b!2834164 () Bool)

(declare-fun tp!906240 () Bool)

(declare-fun tp!906238 () Bool)

(assert (=> b!2834164 (= e!1794683 (and tp!906240 tp!906238))))

(declare-fun b!2834166 () Bool)

(declare-fun tp!906236 () Bool)

(declare-fun tp!906239 () Bool)

(assert (=> b!2834166 (= e!1794683 (and tp!906236 tp!906239))))

(assert (=> b!2833921 (= tp!906133 e!1794683)))

(declare-fun b!2834165 () Bool)

(declare-fun tp!906237 () Bool)

(assert (=> b!2834165 (= e!1794683 tp!906237)))

(assert (= (and b!2833921 ((_ is ElementMatch!8411) (regex!5020 (h!38878 rules!1047)))) b!2834163))

(assert (= (and b!2833921 ((_ is Concat!13662) (regex!5020 (h!38878 rules!1047)))) b!2834164))

(assert (= (and b!2833921 ((_ is Star!8411) (regex!5020 (h!38878 rules!1047)))) b!2834165))

(assert (= (and b!2833921 ((_ is Union!8411) (regex!5020 (h!38878 rules!1047)))) b!2834166))

(declare-fun b_lambda!85141 () Bool)

(assert (= b_lambda!85135 (or (and b!2833917 b_free!81647) (and b!2833922 b_free!81651 (= (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))))) (and b!2834129 b_free!81663 (= (toChars!6913 (transformation!5020 (h!38878 (t!231707 rules!1047)))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))))) (and b!2834143 b_free!81667 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))))) b_lambda!85141)))

(check-sat (not b_next!82365) (not b!2834156) (not b!2834028) b_and!207445 (not b!2834023) b_and!207443 b_and!207447 (not b!2834118) (not b!2834164) (not b_next!82369) (not b!2833979) (not b_next!82353) (not d!822196) (not d!822234) (not b!2834162) (not d!822218) (not b!2834155) (not b!2834117) b_and!207429 (not b!2834037) (not b!2834142) b_and!207423 (not d!822198) (not b_lambda!85141) (not b!2834127) (not b_next!82355) tp_is_empty!14587 b_and!207427 (not b!2834031) (not b!2834116) (not b!2834141) (not tb!154341) (not b!2834026) (not b!2834012) b_and!207449 (not b!2834140) (not b_next!82367) (not d!822216) (not b!2834007) (not b!2833985) (not b!2834166) (not b!2834025) (not b_next!82349) (not b!2833961) (not b!2834005) b_and!207419 (not b!2833980) (not b!2833970) (not b!2834157) (not b_next!82371) (not b_next!82351) (not d!822206) (not d!822192) (not b!2834128) (not d!822180) (not d!822212) (not d!822214) (not b!2834165) (not b!2834006))
(check-sat (not b_next!82365) (not b_next!82355) b_and!207427 b_and!207445 b_and!207449 b_and!207443 (not b_next!82367) (not b_next!82349) b_and!207447 (not b_next!82351) (not b_next!82369) (not b_next!82353) b_and!207429 b_and!207423 b_and!207419 (not b_next!82371))
(get-model)

(declare-fun d!822250 () Bool)

(assert (=> d!822250 true))

(declare-fun lambda!104080 () Int)

(declare-fun order!17855 () Int)

(declare-fun dynLambda!14062 (Int Int) Int)

(assert (=> d!822250 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14062 order!17855 lambda!104080))))

(declare-fun Forall2!838 (Int) Bool)

(assert (=> d!822250 (= (equivClasses!1986 (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (Forall2!838 lambda!104080))))

(declare-fun bs!518525 () Bool)

(assert (= bs!518525 d!822250))

(declare-fun m!3263673 () Bool)

(assert (=> bs!518525 m!3263673))

(assert (=> b!2834028 d!822250))

(declare-fun d!822256 () Bool)

(declare-fun res!1179692 () Bool)

(declare-fun e!1794702 () Bool)

(assert (=> d!822256 (=> (not res!1179692) (not e!1794702))))

(assert (=> d!822256 (= res!1179692 (not (isEmpty!18444 (originalCharacters!5752 (h!38879 (t!231708 l!4019))))))))

(assert (=> d!822256 (= (inv!45418 (h!38879 (t!231708 l!4019))) e!1794702)))

(declare-fun b!2834189 () Bool)

(declare-fun res!1179693 () Bool)

(assert (=> b!2834189 (=> (not res!1179693) (not e!1794702))))

(assert (=> b!2834189 (= res!1179693 (= (originalCharacters!5752 (h!38879 (t!231708 l!4019))) (list!12500 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) (value!161439 (h!38879 (t!231708 l!4019)))))))))

(declare-fun b!2834190 () Bool)

(assert (=> b!2834190 (= e!1794702 (= (size!26023 (h!38879 (t!231708 l!4019))) (size!26026 (originalCharacters!5752 (h!38879 (t!231708 l!4019))))))))

(assert (= (and d!822256 res!1179692) b!2834189))

(assert (= (and b!2834189 res!1179693) b!2834190))

(declare-fun b_lambda!85143 () Bool)

(assert (=> (not b_lambda!85143) (not b!2834189)))

(declare-fun t!231744 () Bool)

(declare-fun tb!154357 () Bool)

(assert (=> (and b!2833917 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) t!231744) tb!154357))

(declare-fun b!2834191 () Bool)

(declare-fun e!1794703 () Bool)

(declare-fun tp!906241 () Bool)

(assert (=> b!2834191 (= e!1794703 (and (inv!45421 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) (value!161439 (h!38879 (t!231708 l!4019)))))) tp!906241))))

(declare-fun result!192494 () Bool)

(assert (=> tb!154357 (= result!192494 (and (inv!45422 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) (value!161439 (h!38879 (t!231708 l!4019))))) e!1794703))))

(assert (= tb!154357 b!2834191))

(declare-fun m!3263675 () Bool)

(assert (=> b!2834191 m!3263675))

(declare-fun m!3263677 () Bool)

(assert (=> tb!154357 m!3263677))

(assert (=> b!2834189 t!231744))

(declare-fun b_and!207451 () Bool)

(assert (= b_and!207427 (and (=> t!231744 result!192494) b_and!207451)))

(declare-fun tb!154359 () Bool)

(declare-fun t!231746 () Bool)

(assert (=> (and b!2833922 (= (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) t!231746) tb!154359))

(declare-fun result!192496 () Bool)

(assert (= result!192496 result!192494))

(assert (=> b!2834189 t!231746))

(declare-fun b_and!207453 () Bool)

(assert (= b_and!207429 (and (=> t!231746 result!192496) b_and!207453)))

(declare-fun t!231748 () Bool)

(declare-fun tb!154361 () Bool)

(assert (=> (and b!2834129 (= (toChars!6913 (transformation!5020 (h!38878 (t!231707 rules!1047)))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) t!231748) tb!154361))

(declare-fun result!192498 () Bool)

(assert (= result!192498 result!192494))

(assert (=> b!2834189 t!231748))

(declare-fun b_and!207455 () Bool)

(assert (= b_and!207445 (and (=> t!231748 result!192498) b_and!207455)))

(declare-fun t!231750 () Bool)

(declare-fun tb!154363 () Bool)

(assert (=> (and b!2834143 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) t!231750) tb!154363))

(declare-fun result!192500 () Bool)

(assert (= result!192500 result!192494))

(assert (=> b!2834189 t!231750))

(declare-fun b_and!207457 () Bool)

(assert (= b_and!207449 (and (=> t!231750 result!192500) b_and!207457)))

(declare-fun m!3263679 () Bool)

(assert (=> d!822256 m!3263679))

(declare-fun m!3263681 () Bool)

(assert (=> b!2834189 m!3263681))

(assert (=> b!2834189 m!3263681))

(declare-fun m!3263683 () Bool)

(assert (=> b!2834189 m!3263683))

(declare-fun m!3263687 () Bool)

(assert (=> b!2834190 m!3263687))

(assert (=> b!2834140 d!822256))

(declare-fun d!822258 () Bool)

(declare-fun e!1794706 () Bool)

(assert (=> d!822258 e!1794706))

(declare-fun res!1179696 () Bool)

(assert (=> d!822258 (=> (not res!1179696) (not e!1794706))))

(declare-fun lt!1010697 () BalanceConc!20430)

(assert (=> d!822258 (= res!1179696 (= (list!12499 lt!1010697) l!4019))))

(declare-fun fromList!584 (List!33583) Conc!10396)

(assert (=> d!822258 (= lt!1010697 (BalanceConc!20431 (fromList!584 l!4019)))))

(assert (=> d!822258 (= (fromListB!1478 l!4019) lt!1010697)))

(declare-fun b!2834194 () Bool)

(declare-fun isBalanced!3133 (Conc!10396) Bool)

(assert (=> b!2834194 (= e!1794706 (isBalanced!3133 (fromList!584 l!4019)))))

(assert (= (and d!822258 res!1179696) b!2834194))

(declare-fun m!3263695 () Bool)

(assert (=> d!822258 m!3263695))

(declare-fun m!3263697 () Bool)

(assert (=> d!822258 m!3263697))

(assert (=> b!2834194 m!3263697))

(assert (=> b!2834194 m!3263697))

(declare-fun m!3263699 () Bool)

(assert (=> b!2834194 m!3263699))

(assert (=> d!822192 d!822258))

(declare-fun d!822264 () Bool)

(declare-fun res!1179704 () Bool)

(declare-fun e!1794714 () Bool)

(assert (=> d!822264 (=> res!1179704 e!1794714)))

(assert (=> d!822264 (= res!1179704 ((_ is Nil!33458) rules!1047))))

(assert (=> d!822264 (= (noDuplicateTag!1853 thiss!11007 rules!1047 Nil!33461) e!1794714)))

(declare-fun b!2834202 () Bool)

(declare-fun e!1794715 () Bool)

(assert (=> b!2834202 (= e!1794714 e!1794715)))

(declare-fun res!1179705 () Bool)

(assert (=> b!2834202 (=> (not res!1179705) (not e!1794715))))

(declare-fun contains!6106 (List!33585 String!36772) Bool)

(assert (=> b!2834202 (= res!1179705 (not (contains!6106 Nil!33461 (tag!5524 (h!38878 rules!1047)))))))

(declare-fun b!2834203 () Bool)

(assert (=> b!2834203 (= e!1794715 (noDuplicateTag!1853 thiss!11007 (t!231707 rules!1047) (Cons!33461 (tag!5524 (h!38878 rules!1047)) Nil!33461)))))

(assert (= (and d!822264 (not res!1179704)) b!2834202))

(assert (= (and b!2834202 res!1179705) b!2834203))

(declare-fun m!3263707 () Bool)

(assert (=> b!2834202 m!3263707))

(declare-fun m!3263709 () Bool)

(assert (=> b!2834203 m!3263709))

(assert (=> b!2834031 d!822264))

(assert (=> b!2834005 d!822218))

(declare-fun bs!518528 () Bool)

(declare-fun d!822268 () Bool)

(assert (= bs!518528 (and d!822268 d!822180)))

(declare-fun lambda!104081 () Int)

(assert (=> bs!518528 (= lambda!104081 lambda!104065)))

(declare-fun bs!518529 () Bool)

(assert (= bs!518529 (and d!822268 d!822198)))

(assert (=> bs!518529 (= lambda!104081 lambda!104068)))

(declare-fun b!2834208 () Bool)

(declare-fun e!1794720 () Bool)

(assert (=> b!2834208 (= e!1794720 true)))

(declare-fun b!2834207 () Bool)

(declare-fun e!1794719 () Bool)

(assert (=> b!2834207 (= e!1794719 e!1794720)))

(declare-fun b!2834206 () Bool)

(declare-fun e!1794718 () Bool)

(assert (=> b!2834206 (= e!1794718 e!1794719)))

(assert (=> d!822268 e!1794718))

(assert (= b!2834207 b!2834208))

(assert (= b!2834206 b!2834207))

(assert (= (and d!822268 ((_ is Cons!33458) rules!1047)) b!2834206))

(assert (=> b!2834208 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14059 order!17849 lambda!104081))))

(assert (=> b!2834208 (< (dynLambda!14060 order!17851 (toChars!6913 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14059 order!17849 lambda!104081))))

(assert (=> d!822268 true))

(declare-fun lt!1010701 () Bool)

(assert (=> d!822268 (= lt!1010701 (forall!6878 (t!231708 l!4019) lambda!104081))))

(declare-fun e!1794717 () Bool)

(assert (=> d!822268 (= lt!1010701 e!1794717)))

(declare-fun res!1179707 () Bool)

(assert (=> d!822268 (=> res!1179707 e!1794717)))

(assert (=> d!822268 (= res!1179707 (not ((_ is Cons!33459) (t!231708 l!4019))))))

(assert (=> d!822268 (not (isEmpty!18441 rules!1047))))

(assert (=> d!822268 (= (rulesProduceEachTokenIndividuallyList!1653 thiss!11007 rules!1047 (t!231708 l!4019)) lt!1010701)))

(declare-fun b!2834204 () Bool)

(declare-fun e!1794716 () Bool)

(assert (=> b!2834204 (= e!1794717 e!1794716)))

(declare-fun res!1179706 () Bool)

(assert (=> b!2834204 (=> (not res!1179706) (not e!1794716))))

(assert (=> b!2834204 (= res!1179706 (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 (t!231708 l!4019))))))

(declare-fun b!2834205 () Bool)

(assert (=> b!2834205 (= e!1794716 (rulesProduceEachTokenIndividuallyList!1653 thiss!11007 rules!1047 (t!231708 (t!231708 l!4019))))))

(assert (= (and d!822268 (not res!1179707)) b!2834204))

(assert (= (and b!2834204 res!1179706) b!2834205))

(declare-fun m!3263711 () Bool)

(assert (=> d!822268 m!3263711))

(assert (=> d!822268 m!3263477))

(declare-fun m!3263713 () Bool)

(assert (=> b!2834204 m!3263713))

(declare-fun m!3263715 () Bool)

(assert (=> b!2834205 m!3263715))

(assert (=> b!2834006 d!822268))

(declare-fun d!822270 () Bool)

(declare-fun res!1179712 () Bool)

(declare-fun e!1794725 () Bool)

(assert (=> d!822270 (=> res!1179712 e!1794725)))

(assert (=> d!822270 (= res!1179712 ((_ is Nil!33459) l!4019))))

(assert (=> d!822270 (= (forall!6878 l!4019 lambda!104068) e!1794725)))

(declare-fun b!2834213 () Bool)

(declare-fun e!1794726 () Bool)

(assert (=> b!2834213 (= e!1794725 e!1794726)))

(declare-fun res!1179713 () Bool)

(assert (=> b!2834213 (=> (not res!1179713) (not e!1794726))))

(declare-fun dynLambda!14063 (Int Token!9442) Bool)

(assert (=> b!2834213 (= res!1179713 (dynLambda!14063 lambda!104068 (h!38879 l!4019)))))

(declare-fun b!2834214 () Bool)

(assert (=> b!2834214 (= e!1794726 (forall!6878 (t!231708 l!4019) lambda!104068))))

(assert (= (and d!822270 (not res!1179712)) b!2834213))

(assert (= (and b!2834213 res!1179713) b!2834214))

(declare-fun b_lambda!85145 () Bool)

(assert (=> (not b_lambda!85145) (not b!2834213)))

(declare-fun m!3263717 () Bool)

(assert (=> b!2834213 m!3263717))

(declare-fun m!3263719 () Bool)

(assert (=> b!2834214 m!3263719))

(assert (=> d!822198 d!822270))

(assert (=> d!822198 d!822194))

(declare-fun d!822272 () Bool)

(assert (=> d!822272 (= (inv!45414 (tag!5524 (h!38878 (t!231707 rules!1047)))) (= (mod (str.len (value!161438 (tag!5524 (h!38878 (t!231707 rules!1047))))) 2) 0))))

(assert (=> b!2834128 d!822272))

(declare-fun d!822274 () Bool)

(declare-fun res!1179714 () Bool)

(declare-fun e!1794727 () Bool)

(assert (=> d!822274 (=> (not res!1179714) (not e!1794727))))

(assert (=> d!822274 (= res!1179714 (semiInverseModEq!2087 (toChars!6913 (transformation!5020 (h!38878 (t!231707 rules!1047)))) (toValue!7054 (transformation!5020 (h!38878 (t!231707 rules!1047))))))))

(assert (=> d!822274 (= (inv!45417 (transformation!5020 (h!38878 (t!231707 rules!1047)))) e!1794727)))

(declare-fun b!2834215 () Bool)

(assert (=> b!2834215 (= e!1794727 (equivClasses!1986 (toChars!6913 (transformation!5020 (h!38878 (t!231707 rules!1047)))) (toValue!7054 (transformation!5020 (h!38878 (t!231707 rules!1047))))))))

(assert (= (and d!822274 res!1179714) b!2834215))

(declare-fun m!3263721 () Bool)

(assert (=> d!822274 m!3263721))

(declare-fun m!3263723 () Bool)

(assert (=> b!2834215 m!3263723))

(assert (=> b!2834128 d!822274))

(declare-fun d!822276 () Bool)

(declare-fun isBalanced!3134 (Conc!10395) Bool)

(assert (=> d!822276 (= (inv!45422 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))) (isBalanced!3134 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))))))

(declare-fun bs!518530 () Bool)

(assert (= bs!518530 d!822276))

(declare-fun m!3263725 () Bool)

(assert (=> bs!518530 m!3263725))

(assert (=> tb!154341 d!822276))

(declare-fun d!822278 () Bool)

(assert (=> d!822278 true))

(declare-fun lambda!104084 () Int)

(declare-fun order!17857 () Int)

(declare-fun dynLambda!14065 (Int Int) Int)

(assert (=> d!822278 (< (dynLambda!14060 order!17851 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019))))) (dynLambda!14065 order!17857 lambda!104084))))

(assert (=> d!822278 true))

(assert (=> d!822278 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (rule!7448 (h!38879 l!4019))))) (dynLambda!14065 order!17857 lambda!104084))))

(declare-fun Forall!1241 (Int) Bool)

(assert (=> d!822278 (= (semiInverseModEq!2087 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (toValue!7054 (transformation!5020 (rule!7448 (h!38879 l!4019))))) (Forall!1241 lambda!104084))))

(declare-fun bs!518531 () Bool)

(assert (= bs!518531 d!822278))

(declare-fun m!3263727 () Bool)

(assert (=> bs!518531 m!3263727))

(assert (=> d!822206 d!822278))

(declare-fun bs!518532 () Bool)

(declare-fun d!822280 () Bool)

(assert (= bs!518532 (and d!822280 d!822278)))

(declare-fun lambda!104085 () Int)

(assert (=> bs!518532 (= (and (= (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019))))) (= (toValue!7054 (transformation!5020 (h!38878 rules!1047))) (toValue!7054 (transformation!5020 (rule!7448 (h!38879 l!4019)))))) (= lambda!104085 lambda!104084))))

(assert (=> d!822280 true))

(assert (=> d!822280 (< (dynLambda!14060 order!17851 (toChars!6913 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14065 order!17857 lambda!104085))))

(assert (=> d!822280 true))

(assert (=> d!822280 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14065 order!17857 lambda!104085))))

(assert (=> d!822280 (= (semiInverseModEq!2087 (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (Forall!1241 lambda!104085))))

(declare-fun bs!518533 () Bool)

(assert (= bs!518533 d!822280))

(declare-fun m!3263729 () Bool)

(assert (=> bs!518533 m!3263729))

(assert (=> d!822212 d!822280))

(declare-fun d!822282 () Bool)

(declare-fun c!458110 () Bool)

(assert (=> d!822282 (= c!458110 ((_ is Node!10395) (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))))))

(declare-fun e!1794732 () Bool)

(assert (=> d!822282 (= (inv!45421 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))) e!1794732)))

(declare-fun b!2834226 () Bool)

(declare-fun inv!45423 (Conc!10395) Bool)

(assert (=> b!2834226 (= e!1794732 (inv!45423 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))))))

(declare-fun b!2834227 () Bool)

(declare-fun e!1794733 () Bool)

(assert (=> b!2834227 (= e!1794732 e!1794733)))

(declare-fun res!1179717 () Bool)

(assert (=> b!2834227 (= res!1179717 (not ((_ is Leaf!15813) (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))))))))

(assert (=> b!2834227 (=> res!1179717 e!1794733)))

(declare-fun b!2834228 () Bool)

(declare-fun inv!45424 (Conc!10395) Bool)

(assert (=> b!2834228 (= e!1794733 (inv!45424 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))))))

(assert (= (and d!822282 c!458110) b!2834226))

(assert (= (and d!822282 (not c!458110)) b!2834227))

(assert (= (and b!2834227 (not res!1179717)) b!2834228))

(declare-fun m!3263737 () Bool)

(assert (=> b!2834226 m!3263737))

(declare-fun m!3263739 () Bool)

(assert (=> b!2834228 m!3263739))

(assert (=> b!2833985 d!822282))

(declare-fun d!822286 () Bool)

(assert (=> d!822286 (= (isEmpty!18444 (originalCharacters!5752 (h!38879 l!4019))) ((_ is Nil!33457) (originalCharacters!5752 (h!38879 l!4019))))))

(assert (=> d!822196 d!822286))

(assert (=> d!822218 d!822194))

(declare-fun d!822290 () Bool)

(declare-fun list!12502 (Conc!10396) List!33583)

(assert (=> d!822290 (= (list!12499 (singletonSeq!2171 (h!38879 l!4019))) (list!12502 (c!458093 (singletonSeq!2171 (h!38879 l!4019)))))))

(declare-fun bs!518536 () Bool)

(assert (= bs!518536 d!822290))

(declare-fun m!3263743 () Bool)

(assert (=> bs!518536 m!3263743))

(assert (=> d!822218 d!822290))

(declare-fun d!822292 () Bool)

(declare-fun e!1794736 () Bool)

(assert (=> d!822292 e!1794736))

(declare-fun res!1179720 () Bool)

(assert (=> d!822292 (=> (not res!1179720) (not e!1794736))))

(declare-fun lt!1010707 () BalanceConc!20430)

(assert (=> d!822292 (= res!1179720 (= (list!12499 lt!1010707) (Cons!33459 (h!38879 l!4019) Nil!33459)))))

(declare-fun singleton!951 (Token!9442) BalanceConc!20430)

(assert (=> d!822292 (= lt!1010707 (singleton!951 (h!38879 l!4019)))))

(assert (=> d!822292 (= (singletonSeq!2171 (h!38879 l!4019)) lt!1010707)))

(declare-fun b!2834231 () Bool)

(assert (=> b!2834231 (= e!1794736 (isBalanced!3133 (c!458093 lt!1010707)))))

(assert (= (and d!822292 res!1179720) b!2834231))

(declare-fun m!3263745 () Bool)

(assert (=> d!822292 m!3263745))

(declare-fun m!3263747 () Bool)

(assert (=> d!822292 m!3263747))

(declare-fun m!3263749 () Bool)

(assert (=> b!2834231 m!3263749))

(assert (=> d!822218 d!822292))

(declare-fun d!822294 () Bool)

(assert (=> d!822294 (= (list!12499 (_1!19876 (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019)))))) (list!12502 (c!458093 (_1!19876 (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))))))))))

(declare-fun bs!518537 () Bool)

(assert (= bs!518537 d!822294))

(declare-fun m!3263751 () Bool)

(assert (=> bs!518537 m!3263751))

(assert (=> d!822218 d!822294))

(declare-fun b!2834242 () Bool)

(declare-fun e!1794745 () Bool)

(declare-fun e!1794744 () Bool)

(assert (=> b!2834242 (= e!1794745 e!1794744)))

(declare-fun lt!1010710 () tuple2!33528)

(declare-fun res!1179729 () Bool)

(declare-fun size!26030 (BalanceConc!20428) Int)

(assert (=> b!2834242 (= res!1179729 (< (size!26030 (_2!19876 lt!1010710)) (size!26030 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))))))))

(assert (=> b!2834242 (=> (not res!1179729) (not e!1794744))))

(declare-fun b!2834243 () Bool)

(declare-fun res!1179728 () Bool)

(declare-fun e!1794743 () Bool)

(assert (=> b!2834243 (=> (not res!1179728) (not e!1794743))))

(declare-datatypes ((tuple2!33530 0))(
  ( (tuple2!33531 (_1!19877 List!33583) (_2!19877 List!33581)) )
))
(declare-fun lexList!1255 (LexerInterface!4610 List!33582 List!33581) tuple2!33530)

(assert (=> b!2834243 (= res!1179728 (= (list!12499 (_1!19876 lt!1010710)) (_1!19877 (lexList!1255 thiss!11007 rules!1047 (list!12500 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))))))))))

(declare-fun b!2834245 () Bool)

(assert (=> b!2834245 (= e!1794743 (= (list!12500 (_2!19876 lt!1010710)) (_2!19877 (lexList!1255 thiss!11007 rules!1047 (list!12500 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))))))))))

(declare-fun b!2834246 () Bool)

(assert (=> b!2834246 (= e!1794745 (= (_2!19876 lt!1010710) (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019)))))))

(declare-fun d!822296 () Bool)

(assert (=> d!822296 e!1794743))

(declare-fun res!1179727 () Bool)

(assert (=> d!822296 (=> (not res!1179727) (not e!1794743))))

(assert (=> d!822296 (= res!1179727 e!1794745)))

(declare-fun c!458113 () Bool)

(assert (=> d!822296 (= c!458113 (> (size!26027 (_1!19876 lt!1010710)) 0))))

(declare-fun lexTailRecV2!893 (LexerInterface!4610 List!33582 BalanceConc!20428 BalanceConc!20428 BalanceConc!20428 BalanceConc!20430) tuple2!33528)

(assert (=> d!822296 (= lt!1010710 (lexTailRecV2!893 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))) (BalanceConc!20429 Empty!10395) (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))) (BalanceConc!20431 Empty!10396)))))

(assert (=> d!822296 (= (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019)))) lt!1010710)))

(declare-fun b!2834244 () Bool)

(declare-fun isEmpty!18446 (BalanceConc!20430) Bool)

(assert (=> b!2834244 (= e!1794744 (not (isEmpty!18446 (_1!19876 lt!1010710))))))

(assert (= (and d!822296 c!458113) b!2834242))

(assert (= (and d!822296 (not c!458113)) b!2834246))

(assert (= (and b!2834242 res!1179729) b!2834244))

(assert (= (and d!822296 res!1179727) b!2834243))

(assert (= (and b!2834243 res!1179728) b!2834245))

(declare-fun m!3263753 () Bool)

(assert (=> d!822296 m!3263753))

(assert (=> d!822296 m!3263623))

(assert (=> d!822296 m!3263623))

(declare-fun m!3263755 () Bool)

(assert (=> d!822296 m!3263755))

(declare-fun m!3263757 () Bool)

(assert (=> b!2834243 m!3263757))

(assert (=> b!2834243 m!3263623))

(declare-fun m!3263759 () Bool)

(assert (=> b!2834243 m!3263759))

(assert (=> b!2834243 m!3263759))

(declare-fun m!3263761 () Bool)

(assert (=> b!2834243 m!3263761))

(declare-fun m!3263763 () Bool)

(assert (=> b!2834245 m!3263763))

(assert (=> b!2834245 m!3263623))

(assert (=> b!2834245 m!3263759))

(assert (=> b!2834245 m!3263759))

(assert (=> b!2834245 m!3263761))

(declare-fun m!3263765 () Bool)

(assert (=> b!2834242 m!3263765))

(assert (=> b!2834242 m!3263623))

(declare-fun m!3263767 () Bool)

(assert (=> b!2834242 m!3263767))

(declare-fun m!3263769 () Bool)

(assert (=> b!2834244 m!3263769))

(assert (=> d!822218 d!822296))

(declare-fun d!822298 () Bool)

(declare-fun lt!1010715 () BalanceConc!20428)

(declare-fun printList!1230 (LexerInterface!4610 List!33583) List!33581)

(assert (=> d!822298 (= (list!12500 lt!1010715) (printList!1230 thiss!11007 (list!12499 (singletonSeq!2171 (h!38879 l!4019)))))))

(declare-fun printTailRec!1173 (LexerInterface!4610 BalanceConc!20430 Int BalanceConc!20428) BalanceConc!20428)

(assert (=> d!822298 (= lt!1010715 (printTailRec!1173 thiss!11007 (singletonSeq!2171 (h!38879 l!4019)) 0 (BalanceConc!20429 Empty!10395)))))

(assert (=> d!822298 (= (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))) lt!1010715)))

(declare-fun bs!518538 () Bool)

(assert (= bs!518538 d!822298))

(declare-fun m!3263771 () Bool)

(assert (=> bs!518538 m!3263771))

(assert (=> bs!518538 m!3263617))

(assert (=> bs!518538 m!3263619))

(assert (=> bs!518538 m!3263619))

(declare-fun m!3263773 () Bool)

(assert (=> bs!518538 m!3263773))

(assert (=> bs!518538 m!3263617))

(declare-fun m!3263775 () Bool)

(assert (=> bs!518538 m!3263775))

(assert (=> d!822218 d!822298))

(declare-fun d!822300 () Bool)

(declare-fun lt!1010718 () Int)

(declare-fun size!26032 (List!33583) Int)

(assert (=> d!822300 (= lt!1010718 (size!26032 (list!12499 (_1!19876 lt!1010683))))))

(declare-fun size!26033 (Conc!10396) Int)

(assert (=> d!822300 (= lt!1010718 (size!26033 (c!458093 (_1!19876 lt!1010683))))))

(assert (=> d!822300 (= (size!26027 (_1!19876 lt!1010683)) lt!1010718)))

(declare-fun bs!518539 () Bool)

(assert (= bs!518539 d!822300))

(declare-fun m!3263777 () Bool)

(assert (=> bs!518539 m!3263777))

(assert (=> bs!518539 m!3263777))

(declare-fun m!3263779 () Bool)

(assert (=> bs!518539 m!3263779))

(declare-fun m!3263781 () Bool)

(assert (=> bs!518539 m!3263781))

(assert (=> d!822218 d!822300))

(declare-fun d!822302 () Bool)

(declare-fun lt!1010722 () Bool)

(assert (=> d!822302 (= lt!1010722 (isEmpty!18444 (list!12500 (_2!19876 lt!1010683))))))

(declare-fun isEmpty!18447 (Conc!10395) Bool)

(assert (=> d!822302 (= lt!1010722 (isEmpty!18447 (c!458092 (_2!19876 lt!1010683))))))

(assert (=> d!822302 (= (isEmpty!18445 (_2!19876 lt!1010683)) lt!1010722)))

(declare-fun bs!518540 () Bool)

(assert (= bs!518540 d!822302))

(declare-fun m!3263801 () Bool)

(assert (=> bs!518540 m!3263801))

(assert (=> bs!518540 m!3263801))

(declare-fun m!3263803 () Bool)

(assert (=> bs!518540 m!3263803))

(declare-fun m!3263805 () Bool)

(assert (=> bs!518540 m!3263805))

(assert (=> b!2834117 d!822302))

(declare-fun d!822306 () Bool)

(declare-fun list!12503 (Conc!10395) List!33581)

(assert (=> d!822306 (= (list!12500 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))) (list!12503 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))))))

(declare-fun bs!518542 () Bool)

(assert (= bs!518542 d!822306))

(declare-fun m!3263809 () Bool)

(assert (=> bs!518542 m!3263809))

(assert (=> b!2833979 d!822306))

(declare-fun d!822312 () Bool)

(declare-fun lt!1010725 () Int)

(assert (=> d!822312 (>= lt!1010725 0)))

(declare-fun e!1794758 () Int)

(assert (=> d!822312 (= lt!1010725 e!1794758)))

(declare-fun c!458119 () Bool)

(assert (=> d!822312 (= c!458119 ((_ is Nil!33457) (originalCharacters!5752 (h!38879 l!4019))))))

(assert (=> d!822312 (= (size!26026 (originalCharacters!5752 (h!38879 l!4019))) lt!1010725)))

(declare-fun b!2834267 () Bool)

(assert (=> b!2834267 (= e!1794758 0)))

(declare-fun b!2834268 () Bool)

(assert (=> b!2834268 (= e!1794758 (+ 1 (size!26026 (t!231706 (originalCharacters!5752 (h!38879 l!4019))))))))

(assert (= (and d!822312 c!458119) b!2834267))

(assert (= (and d!822312 (not c!458119)) b!2834268))

(declare-fun m!3263817 () Bool)

(assert (=> b!2834268 m!3263817))

(assert (=> b!2833980 d!822312))

(assert (=> d!822234 d!822218))

(declare-fun d!822318 () Bool)

(assert (=> d!822318 (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 l!4019))))

(assert (=> d!822318 true))

(declare-fun _$77!759 () Unit!47405)

(assert (=> d!822318 (= (choose!16726 thiss!11007 rules!1047 l!4019 (h!38879 l!4019)) _$77!759)))

(declare-fun bs!518553 () Bool)

(assert (= bs!518553 d!822318))

(assert (=> bs!518553 m!3263463))

(assert (=> d!822234 d!822318))

(assert (=> d!822234 d!822194))

(declare-fun lt!1010736 () Bool)

(declare-fun d!822342 () Bool)

(assert (=> d!822342 (= lt!1010736 (isEmpty!18444 (list!12500 (_2!19876 (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))))))))))

(assert (=> d!822342 (= lt!1010736 (isEmpty!18447 (c!458092 (_2!19876 (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019))))))))))

(assert (=> d!822342 (= (isEmpty!18445 (_2!19876 (lex!2020 thiss!11007 rules!1047 (print!1739 thiss!11007 (singletonSeq!2171 (h!38879 l!4019)))))) lt!1010736)))

(declare-fun bs!518554 () Bool)

(assert (= bs!518554 d!822342))

(declare-fun m!3263853 () Bool)

(assert (=> bs!518554 m!3263853))

(assert (=> bs!518554 m!3263853))

(declare-fun m!3263855 () Bool)

(assert (=> bs!518554 m!3263855))

(declare-fun m!3263857 () Bool)

(assert (=> bs!518554 m!3263857))

(assert (=> b!2834118 d!822342))

(assert (=> b!2834118 d!822296))

(assert (=> b!2834118 d!822298))

(assert (=> b!2834118 d!822292))

(declare-fun bs!518555 () Bool)

(declare-fun d!822344 () Bool)

(assert (= bs!518555 (and d!822344 d!822180)))

(declare-fun lambda!104095 () Int)

(assert (=> bs!518555 (= lambda!104095 lambda!104065)))

(declare-fun bs!518556 () Bool)

(assert (= bs!518556 (and d!822344 d!822198)))

(assert (=> bs!518556 (= lambda!104095 lambda!104068)))

(declare-fun bs!518557 () Bool)

(assert (= bs!518557 (and d!822344 d!822268)))

(assert (=> bs!518557 (= lambda!104095 lambda!104081)))

(declare-fun b!2834299 () Bool)

(declare-fun e!1794781 () Bool)

(assert (=> b!2834299 (= e!1794781 true)))

(declare-fun b!2834298 () Bool)

(declare-fun e!1794780 () Bool)

(assert (=> b!2834298 (= e!1794780 e!1794781)))

(declare-fun b!2834297 () Bool)

(declare-fun e!1794779 () Bool)

(assert (=> b!2834297 (= e!1794779 e!1794780)))

(assert (=> d!822344 e!1794779))

(assert (= b!2834298 b!2834299))

(assert (= b!2834297 b!2834298))

(assert (= (and d!822344 ((_ is Cons!33458) rules!1047)) b!2834297))

(assert (=> b!2834299 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14059 order!17849 lambda!104095))))

(assert (=> b!2834299 (< (dynLambda!14060 order!17851 (toChars!6913 (transformation!5020 (h!38878 rules!1047)))) (dynLambda!14059 order!17849 lambda!104095))))

(assert (=> d!822344 true))

(declare-fun lt!1010737 () Bool)

(assert (=> d!822344 (= lt!1010737 (forall!6878 (list!12499 (seqFromList!3266 l!4019)) lambda!104095))))

(declare-fun e!1794778 () Bool)

(assert (=> d!822344 (= lt!1010737 e!1794778)))

(declare-fun res!1179754 () Bool)

(assert (=> d!822344 (=> res!1179754 e!1794778)))

(assert (=> d!822344 (= res!1179754 (not ((_ is Cons!33459) (list!12499 (seqFromList!3266 l!4019)))))))

(assert (=> d!822344 (not (isEmpty!18441 rules!1047))))

(assert (=> d!822344 (= (rulesProduceEachTokenIndividuallyList!1653 thiss!11007 rules!1047 (list!12499 (seqFromList!3266 l!4019))) lt!1010737)))

(declare-fun b!2834295 () Bool)

(declare-fun e!1794777 () Bool)

(assert (=> b!2834295 (= e!1794778 e!1794777)))

(declare-fun res!1179753 () Bool)

(assert (=> b!2834295 (=> (not res!1179753) (not e!1794777))))

(assert (=> b!2834295 (= res!1179753 (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 (list!12499 (seqFromList!3266 l!4019)))))))

(declare-fun b!2834296 () Bool)

(assert (=> b!2834296 (= e!1794777 (rulesProduceEachTokenIndividuallyList!1653 thiss!11007 rules!1047 (t!231708 (list!12499 (seqFromList!3266 l!4019)))))))

(assert (= (and d!822344 (not res!1179754)) b!2834295))

(assert (= (and b!2834295 res!1179753) b!2834296))

(assert (=> d!822344 m!3263511))

(declare-fun m!3263859 () Bool)

(assert (=> d!822344 m!3263859))

(assert (=> d!822344 m!3263477))

(declare-fun m!3263861 () Bool)

(assert (=> b!2834295 m!3263861))

(declare-fun m!3263863 () Bool)

(assert (=> b!2834296 m!3263863))

(assert (=> b!2833961 d!822344))

(declare-fun d!822346 () Bool)

(assert (=> d!822346 (= (list!12499 (seqFromList!3266 l!4019)) (list!12502 (c!458093 (seqFromList!3266 l!4019))))))

(declare-fun bs!518558 () Bool)

(assert (= bs!518558 d!822346))

(declare-fun m!3263865 () Bool)

(assert (=> bs!518558 m!3263865))

(assert (=> b!2833961 d!822346))

(declare-fun bs!518559 () Bool)

(declare-fun d!822348 () Bool)

(assert (= bs!518559 (and d!822348 d!822250)))

(declare-fun lambda!104096 () Int)

(assert (=> bs!518559 (= (= (toValue!7054 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (toValue!7054 (transformation!5020 (h!38878 rules!1047)))) (= lambda!104096 lambda!104080))))

(assert (=> d!822348 true))

(assert (=> d!822348 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (rule!7448 (h!38879 l!4019))))) (dynLambda!14062 order!17855 lambda!104096))))

(assert (=> d!822348 (= (equivClasses!1986 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (toValue!7054 (transformation!5020 (rule!7448 (h!38879 l!4019))))) (Forall2!838 lambda!104096))))

(declare-fun bs!518560 () Bool)

(assert (= bs!518560 d!822348))

(declare-fun m!3263867 () Bool)

(assert (=> bs!518560 m!3263867))

(assert (=> b!2834012 d!822348))

(declare-fun d!822350 () Bool)

(declare-fun res!1179755 () Bool)

(declare-fun e!1794782 () Bool)

(assert (=> d!822350 (=> res!1179755 e!1794782)))

(assert (=> d!822350 (= res!1179755 ((_ is Nil!33459) (list!12499 (seqFromList!3266 l!4019))))))

(assert (=> d!822350 (= (forall!6878 (list!12499 (seqFromList!3266 l!4019)) lambda!104065) e!1794782)))

(declare-fun b!2834300 () Bool)

(declare-fun e!1794783 () Bool)

(assert (=> b!2834300 (= e!1794782 e!1794783)))

(declare-fun res!1179756 () Bool)

(assert (=> b!2834300 (=> (not res!1179756) (not e!1794783))))

(assert (=> b!2834300 (= res!1179756 (dynLambda!14063 lambda!104065 (h!38879 (list!12499 (seqFromList!3266 l!4019)))))))

(declare-fun b!2834301 () Bool)

(assert (=> b!2834301 (= e!1794783 (forall!6878 (t!231708 (list!12499 (seqFromList!3266 l!4019))) lambda!104065))))

(assert (= (and d!822350 (not res!1179755)) b!2834300))

(assert (= (and b!2834300 res!1179756) b!2834301))

(declare-fun b_lambda!85149 () Bool)

(assert (=> (not b_lambda!85149) (not b!2834300)))

(declare-fun m!3263869 () Bool)

(assert (=> b!2834300 m!3263869))

(declare-fun m!3263871 () Bool)

(assert (=> b!2834301 m!3263871))

(assert (=> d!822180 d!822350))

(assert (=> d!822180 d!822346))

(declare-fun d!822352 () Bool)

(declare-fun lt!1010740 () Bool)

(assert (=> d!822352 (= lt!1010740 (forall!6878 (list!12499 (seqFromList!3266 l!4019)) lambda!104065))))

(declare-fun forall!6880 (Conc!10396 Int) Bool)

(assert (=> d!822352 (= lt!1010740 (forall!6880 (c!458093 (seqFromList!3266 l!4019)) lambda!104065))))

(assert (=> d!822352 (= (forall!6879 (seqFromList!3266 l!4019) lambda!104065) lt!1010740)))

(declare-fun bs!518561 () Bool)

(assert (= bs!518561 d!822352))

(assert (=> bs!518561 m!3263467))

(assert (=> bs!518561 m!3263511))

(assert (=> bs!518561 m!3263511))

(assert (=> bs!518561 m!3263513))

(declare-fun m!3263873 () Bool)

(assert (=> bs!518561 m!3263873))

(assert (=> d!822180 d!822352))

(assert (=> d!822180 d!822194))

(declare-fun d!822354 () Bool)

(declare-fun lt!1010743 () Token!9442)

(declare-fun apply!7812 (List!33583 Int) Token!9442)

(assert (=> d!822354 (= lt!1010743 (apply!7812 (list!12499 (_1!19876 lt!1010683)) 0))))

(declare-fun apply!7813 (Conc!10396 Int) Token!9442)

(assert (=> d!822354 (= lt!1010743 (apply!7813 (c!458093 (_1!19876 lt!1010683)) 0))))

(declare-fun e!1794786 () Bool)

(assert (=> d!822354 e!1794786))

(declare-fun res!1179759 () Bool)

(assert (=> d!822354 (=> (not res!1179759) (not e!1794786))))

(assert (=> d!822354 (= res!1179759 (<= 0 0))))

(assert (=> d!822354 (= (apply!7811 (_1!19876 lt!1010683) 0) lt!1010743)))

(declare-fun b!2834304 () Bool)

(assert (=> b!2834304 (= e!1794786 (< 0 (size!26027 (_1!19876 lt!1010683))))))

(assert (= (and d!822354 res!1179759) b!2834304))

(assert (=> d!822354 m!3263777))

(assert (=> d!822354 m!3263777))

(declare-fun m!3263875 () Bool)

(assert (=> d!822354 m!3263875))

(declare-fun m!3263877 () Bool)

(assert (=> d!822354 m!3263877))

(assert (=> b!2834304 m!3263621))

(assert (=> b!2834116 d!822354))

(declare-fun d!822356 () Bool)

(declare-fun charsToInt!0 (List!33580) (_ BitVec 32))

(assert (=> d!822356 (= (inv!16 (value!161439 (h!38879 l!4019))) (= (charsToInt!0 (text!37197 (value!161439 (h!38879 l!4019)))) (value!161430 (value!161439 (h!38879 l!4019)))))))

(declare-fun bs!518562 () Bool)

(assert (= bs!518562 d!822356))

(declare-fun m!3263879 () Bool)

(assert (=> bs!518562 m!3263879))

(assert (=> b!2834025 d!822356))

(declare-fun d!822358 () Bool)

(assert (=> d!822358 true))

(declare-fun lt!1010746 () Bool)

(declare-fun rulesValidInductive!1728 (LexerInterface!4610 List!33582) Bool)

(assert (=> d!822358 (= lt!1010746 (rulesValidInductive!1728 thiss!11007 rules!1047))))

(declare-fun lambda!104099 () Int)

(declare-fun forall!6882 (List!33582 Int) Bool)

(assert (=> d!822358 (= lt!1010746 (forall!6882 rules!1047 lambda!104099))))

(assert (=> d!822358 (= (rulesValid!1857 thiss!11007 rules!1047) lt!1010746)))

(declare-fun bs!518563 () Bool)

(assert (= bs!518563 d!822358))

(declare-fun m!3263881 () Bool)

(assert (=> bs!518563 m!3263881))

(declare-fun m!3263883 () Bool)

(assert (=> bs!518563 m!3263883))

(assert (=> d!822214 d!822358))

(declare-fun d!822360 () Bool)

(declare-fun charsToBigInt!0 (List!33580 Int) Int)

(assert (=> d!822360 (= (inv!15 (value!161439 (h!38879 l!4019))) (= (charsToBigInt!0 (text!37199 (value!161439 (h!38879 l!4019))) 0) (value!161434 (value!161439 (h!38879 l!4019)))))))

(declare-fun bs!518564 () Bool)

(assert (= bs!518564 d!822360))

(declare-fun m!3263885 () Bool)

(assert (=> bs!518564 m!3263885))

(assert (=> b!2834026 d!822360))

(declare-fun d!822362 () Bool)

(declare-fun lt!1010747 () Bool)

(assert (=> d!822362 (= lt!1010747 (select (content!4637 (t!231708 l!4019)) (h!38879 (t!231708 l!4019))))))

(declare-fun e!1794788 () Bool)

(assert (=> d!822362 (= lt!1010747 e!1794788)))

(declare-fun res!1179760 () Bool)

(assert (=> d!822362 (=> (not res!1179760) (not e!1794788))))

(assert (=> d!822362 (= res!1179760 ((_ is Cons!33459) (t!231708 l!4019)))))

(assert (=> d!822362 (= (contains!6104 (t!231708 l!4019) (h!38879 (t!231708 l!4019))) lt!1010747)))

(declare-fun b!2834307 () Bool)

(declare-fun e!1794787 () Bool)

(assert (=> b!2834307 (= e!1794788 e!1794787)))

(declare-fun res!1179761 () Bool)

(assert (=> b!2834307 (=> res!1179761 e!1794787)))

(assert (=> b!2834307 (= res!1179761 (= (h!38879 (t!231708 l!4019)) (h!38879 (t!231708 l!4019))))))

(declare-fun b!2834308 () Bool)

(assert (=> b!2834308 (= e!1794787 (contains!6104 (t!231708 (t!231708 l!4019)) (h!38879 (t!231708 l!4019))))))

(assert (= (and d!822362 res!1179760) b!2834307))

(assert (= (and b!2834307 (not res!1179761)) b!2834308))

(declare-fun m!3263887 () Bool)

(assert (=> d!822362 m!3263887))

(declare-fun m!3263889 () Bool)

(assert (=> d!822362 m!3263889))

(declare-fun m!3263891 () Bool)

(assert (=> b!2834308 m!3263891))

(assert (=> b!2834037 d!822362))

(declare-fun b!2834309 () Bool)

(declare-fun e!1794789 () Bool)

(assert (=> b!2834309 (= e!1794789 (inv!17 (value!161439 (h!38879 (t!231708 l!4019)))))))

(declare-fun b!2834310 () Bool)

(declare-fun e!1794791 () Bool)

(assert (=> b!2834310 (= e!1794791 e!1794789)))

(declare-fun c!458123 () Bool)

(assert (=> b!2834310 (= c!458123 ((_ is IntegerValue!15751) (value!161439 (h!38879 (t!231708 l!4019)))))))

(declare-fun b!2834312 () Bool)

(declare-fun e!1794790 () Bool)

(assert (=> b!2834312 (= e!1794790 (inv!15 (value!161439 (h!38879 (t!231708 l!4019)))))))

(declare-fun b!2834313 () Bool)

(declare-fun res!1179762 () Bool)

(assert (=> b!2834313 (=> res!1179762 e!1794790)))

(assert (=> b!2834313 (= res!1179762 (not ((_ is IntegerValue!15752) (value!161439 (h!38879 (t!231708 l!4019))))))))

(assert (=> b!2834313 (= e!1794789 e!1794790)))

(declare-fun d!822364 () Bool)

(declare-fun c!458122 () Bool)

(assert (=> d!822364 (= c!458122 ((_ is IntegerValue!15750) (value!161439 (h!38879 (t!231708 l!4019)))))))

(assert (=> d!822364 (= (inv!21 (value!161439 (h!38879 (t!231708 l!4019)))) e!1794791)))

(declare-fun b!2834311 () Bool)

(assert (=> b!2834311 (= e!1794791 (inv!16 (value!161439 (h!38879 (t!231708 l!4019)))))))

(assert (= (and d!822364 c!458122) b!2834311))

(assert (= (and d!822364 (not c!458122)) b!2834310))

(assert (= (and b!2834310 c!458123) b!2834309))

(assert (= (and b!2834310 (not c!458123)) b!2834313))

(assert (= (and b!2834313 (not res!1179762)) b!2834312))

(declare-fun m!3263893 () Bool)

(assert (=> b!2834309 m!3263893))

(declare-fun m!3263895 () Bool)

(assert (=> b!2834312 m!3263895))

(declare-fun m!3263897 () Bool)

(assert (=> b!2834311 m!3263897))

(assert (=> b!2834141 d!822364))

(declare-fun d!822368 () Bool)

(declare-fun c!458126 () Bool)

(assert (=> d!822368 (= c!458126 ((_ is Nil!33459) l!4019))))

(declare-fun e!1794794 () (InoxSet Token!9442))

(assert (=> d!822368 (= (content!4637 l!4019) e!1794794)))

(declare-fun b!2834318 () Bool)

(assert (=> b!2834318 (= e!1794794 ((as const (Array Token!9442 Bool)) false))))

(declare-fun b!2834319 () Bool)

(assert (=> b!2834319 (= e!1794794 ((_ map or) (store ((as const (Array Token!9442 Bool)) false) (h!38879 l!4019) true) (content!4637 (t!231708 l!4019))))))

(assert (= (and d!822368 c!458126) b!2834318))

(assert (= (and d!822368 (not c!458126)) b!2834319))

(declare-fun m!3263899 () Bool)

(assert (=> b!2834319 m!3263899))

(assert (=> b!2834319 m!3263887))

(assert (=> d!822216 d!822368))

(declare-fun d!822370 () Bool)

(declare-fun charsToBigInt!1 (List!33580) Int)

(assert (=> d!822370 (= (inv!17 (value!161439 (h!38879 l!4019))) (= (charsToBigInt!1 (text!37198 (value!161439 (h!38879 l!4019)))) (value!161431 (value!161439 (h!38879 l!4019)))))))

(declare-fun bs!518566 () Bool)

(assert (= bs!518566 d!822370))

(declare-fun m!3263901 () Bool)

(assert (=> bs!518566 m!3263901))

(assert (=> b!2834023 d!822370))

(declare-fun d!822372 () Bool)

(assert (=> d!822372 (= (inv!45414 (tag!5524 (rule!7448 (h!38879 (t!231708 l!4019))))) (= (mod (str.len (value!161438 (tag!5524 (rule!7448 (h!38879 (t!231708 l!4019)))))) 2) 0))))

(assert (=> b!2834142 d!822372))

(declare-fun d!822374 () Bool)

(declare-fun res!1179765 () Bool)

(declare-fun e!1794799 () Bool)

(assert (=> d!822374 (=> (not res!1179765) (not e!1794799))))

(assert (=> d!822374 (= res!1179765 (semiInverseModEq!2087 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) (toValue!7054 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))))))

(assert (=> d!822374 (= (inv!45417 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) e!1794799)))

(declare-fun b!2834326 () Bool)

(assert (=> b!2834326 (= e!1794799 (equivClasses!1986 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))) (toValue!7054 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))))))

(assert (= (and d!822374 res!1179765) b!2834326))

(declare-fun m!3263903 () Bool)

(assert (=> d!822374 m!3263903))

(declare-fun m!3263905 () Bool)

(assert (=> b!2834326 m!3263905))

(assert (=> b!2834142 d!822374))

(declare-fun b!2834333 () Bool)

(declare-fun b_free!81669 () Bool)

(declare-fun b_next!82373 () Bool)

(assert (=> b!2834333 (= b_free!81669 (not b_next!82373))))

(declare-fun tp!906242 () Bool)

(declare-fun b_and!207459 () Bool)

(assert (=> b!2834333 (= tp!906242 b_and!207459)))

(declare-fun b_free!81671 () Bool)

(declare-fun b_next!82375 () Bool)

(assert (=> b!2834333 (= b_free!81671 (not b_next!82375))))

(declare-fun t!231756 () Bool)

(declare-fun tb!154365 () Bool)

(assert (=> (and b!2834333 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 (t!231708 l!4019)))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019))))) t!231756) tb!154365))

(declare-fun result!192502 () Bool)

(assert (= result!192502 result!192458))

(assert (=> b!2833979 t!231756))

(declare-fun t!231758 () Bool)

(declare-fun tb!154367 () Bool)

(assert (=> (and b!2834333 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 (t!231708 l!4019)))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) t!231758) tb!154367))

(declare-fun result!192504 () Bool)

(assert (= result!192504 result!192494))

(assert (=> b!2834189 t!231758))

(declare-fun tp!906243 () Bool)

(declare-fun b_and!207461 () Bool)

(assert (=> b!2834333 (= tp!906243 (and (=> t!231756 result!192502) (=> t!231758 result!192504) b_and!207461))))

(declare-fun tp!906246 () Bool)

(declare-fun e!1794802 () Bool)

(declare-fun b!2834330 () Bool)

(declare-fun e!1794804 () Bool)

(assert (=> b!2834330 (= e!1794804 (and (inv!45418 (h!38879 (t!231708 (t!231708 l!4019)))) e!1794802 tp!906246))))

(declare-fun tp!906244 () Bool)

(declare-fun b!2834331 () Bool)

(declare-fun e!1794806 () Bool)

(assert (=> b!2834331 (= e!1794802 (and (inv!21 (value!161439 (h!38879 (t!231708 (t!231708 l!4019))))) e!1794806 tp!906244))))

(declare-fun b!2834332 () Bool)

(declare-fun tp!906245 () Bool)

(declare-fun e!1794805 () Bool)

(assert (=> b!2834332 (= e!1794806 (and tp!906245 (inv!45414 (tag!5524 (rule!7448 (h!38879 (t!231708 (t!231708 l!4019)))))) (inv!45417 (transformation!5020 (rule!7448 (h!38879 (t!231708 (t!231708 l!4019)))))) e!1794805))))

(assert (=> b!2834333 (= e!1794805 (and tp!906242 tp!906243))))

(assert (=> b!2834140 (= tp!906217 e!1794804)))

(assert (= b!2834332 b!2834333))

(assert (= b!2834331 b!2834332))

(assert (= b!2834330 b!2834331))

(assert (= (and b!2834140 ((_ is Cons!33459) (t!231708 (t!231708 l!4019)))) b!2834330))

(declare-fun m!3263911 () Bool)

(assert (=> b!2834330 m!3263911))

(declare-fun m!3263913 () Bool)

(assert (=> b!2834331 m!3263913))

(declare-fun m!3263915 () Bool)

(assert (=> b!2834332 m!3263915))

(declare-fun m!3263917 () Bool)

(assert (=> b!2834332 m!3263917))

(declare-fun b!2834334 () Bool)

(declare-fun e!1794808 () Bool)

(assert (=> b!2834334 (= e!1794808 tp_is_empty!14587)))

(declare-fun b!2834335 () Bool)

(declare-fun tp!906251 () Bool)

(declare-fun tp!906249 () Bool)

(assert (=> b!2834335 (= e!1794808 (and tp!906251 tp!906249))))

(declare-fun b!2834337 () Bool)

(declare-fun tp!906247 () Bool)

(declare-fun tp!906250 () Bool)

(assert (=> b!2834337 (= e!1794808 (and tp!906247 tp!906250))))

(assert (=> b!2834166 (= tp!906236 e!1794808)))

(declare-fun b!2834336 () Bool)

(declare-fun tp!906248 () Bool)

(assert (=> b!2834336 (= e!1794808 tp!906248)))

(assert (= (and b!2834166 ((_ is ElementMatch!8411) (regOne!17335 (regex!5020 (h!38878 rules!1047))))) b!2834334))

(assert (= (and b!2834166 ((_ is Concat!13662) (regOne!17335 (regex!5020 (h!38878 rules!1047))))) b!2834335))

(assert (= (and b!2834166 ((_ is Star!8411) (regOne!17335 (regex!5020 (h!38878 rules!1047))))) b!2834336))

(assert (= (and b!2834166 ((_ is Union!8411) (regOne!17335 (regex!5020 (h!38878 rules!1047))))) b!2834337))

(declare-fun b!2834338 () Bool)

(declare-fun e!1794809 () Bool)

(assert (=> b!2834338 (= e!1794809 tp_is_empty!14587)))

(declare-fun b!2834339 () Bool)

(declare-fun tp!906256 () Bool)

(declare-fun tp!906254 () Bool)

(assert (=> b!2834339 (= e!1794809 (and tp!906256 tp!906254))))

(declare-fun b!2834341 () Bool)

(declare-fun tp!906252 () Bool)

(declare-fun tp!906255 () Bool)

(assert (=> b!2834341 (= e!1794809 (and tp!906252 tp!906255))))

(assert (=> b!2834166 (= tp!906239 e!1794809)))

(declare-fun b!2834340 () Bool)

(declare-fun tp!906253 () Bool)

(assert (=> b!2834340 (= e!1794809 tp!906253)))

(assert (= (and b!2834166 ((_ is ElementMatch!8411) (regTwo!17335 (regex!5020 (h!38878 rules!1047))))) b!2834338))

(assert (= (and b!2834166 ((_ is Concat!13662) (regTwo!17335 (regex!5020 (h!38878 rules!1047))))) b!2834339))

(assert (= (and b!2834166 ((_ is Star!8411) (regTwo!17335 (regex!5020 (h!38878 rules!1047))))) b!2834340))

(assert (= (and b!2834166 ((_ is Union!8411) (regTwo!17335 (regex!5020 (h!38878 rules!1047))))) b!2834341))

(declare-fun b!2834342 () Bool)

(declare-fun e!1794810 () Bool)

(declare-fun tp!906257 () Bool)

(assert (=> b!2834342 (= e!1794810 (and tp_is_empty!14587 tp!906257))))

(assert (=> b!2834162 (= tp!906235 e!1794810)))

(assert (= (and b!2834162 ((_ is Cons!33457) (t!231706 (originalCharacters!5752 (h!38879 l!4019))))) b!2834342))

(declare-fun b!2834345 () Bool)

(declare-fun e!1794813 () Bool)

(assert (=> b!2834345 (= e!1794813 true)))

(declare-fun b!2834344 () Bool)

(declare-fun e!1794812 () Bool)

(assert (=> b!2834344 (= e!1794812 e!1794813)))

(declare-fun b!2834343 () Bool)

(declare-fun e!1794811 () Bool)

(assert (=> b!2834343 (= e!1794811 e!1794812)))

(assert (=> b!2833970 e!1794811))

(assert (= b!2834344 b!2834345))

(assert (= b!2834343 b!2834344))

(assert (= (and b!2833970 ((_ is Cons!33458) (t!231707 rules!1047))) b!2834343))

(assert (=> b!2834345 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (h!38878 (t!231707 rules!1047))))) (dynLambda!14059 order!17849 lambda!104065))))

(assert (=> b!2834345 (< (dynLambda!14060 order!17851 (toChars!6913 (transformation!5020 (h!38878 (t!231707 rules!1047))))) (dynLambda!14059 order!17849 lambda!104065))))

(declare-fun b!2834346 () Bool)

(declare-fun e!1794814 () Bool)

(assert (=> b!2834346 (= e!1794814 tp_is_empty!14587)))

(declare-fun b!2834347 () Bool)

(declare-fun tp!906262 () Bool)

(declare-fun tp!906260 () Bool)

(assert (=> b!2834347 (= e!1794814 (and tp!906262 tp!906260))))

(declare-fun b!2834349 () Bool)

(declare-fun tp!906258 () Bool)

(declare-fun tp!906261 () Bool)

(assert (=> b!2834349 (= e!1794814 (and tp!906258 tp!906261))))

(assert (=> b!2834128 (= tp!906200 e!1794814)))

(declare-fun b!2834348 () Bool)

(declare-fun tp!906259 () Bool)

(assert (=> b!2834348 (= e!1794814 tp!906259)))

(assert (= (and b!2834128 ((_ is ElementMatch!8411) (regex!5020 (h!38878 (t!231707 rules!1047))))) b!2834346))

(assert (= (and b!2834128 ((_ is Concat!13662) (regex!5020 (h!38878 (t!231707 rules!1047))))) b!2834347))

(assert (= (and b!2834128 ((_ is Star!8411) (regex!5020 (h!38878 (t!231707 rules!1047))))) b!2834348))

(assert (= (and b!2834128 ((_ is Union!8411) (regex!5020 (h!38878 (t!231707 rules!1047))))) b!2834349))

(declare-fun b!2834352 () Bool)

(declare-fun e!1794816 () Bool)

(assert (=> b!2834352 (= e!1794816 tp_is_empty!14587)))

(declare-fun b!2834353 () Bool)

(declare-fun tp!906267 () Bool)

(declare-fun tp!906265 () Bool)

(assert (=> b!2834353 (= e!1794816 (and tp!906267 tp!906265))))

(declare-fun b!2834355 () Bool)

(declare-fun tp!906263 () Bool)

(declare-fun tp!906266 () Bool)

(assert (=> b!2834355 (= e!1794816 (and tp!906263 tp!906266))))

(assert (=> b!2834164 (= tp!906240 e!1794816)))

(declare-fun b!2834354 () Bool)

(declare-fun tp!906264 () Bool)

(assert (=> b!2834354 (= e!1794816 tp!906264)))

(assert (= (and b!2834164 ((_ is ElementMatch!8411) (regOne!17334 (regex!5020 (h!38878 rules!1047))))) b!2834352))

(assert (= (and b!2834164 ((_ is Concat!13662) (regOne!17334 (regex!5020 (h!38878 rules!1047))))) b!2834353))

(assert (= (and b!2834164 ((_ is Star!8411) (regOne!17334 (regex!5020 (h!38878 rules!1047))))) b!2834354))

(assert (= (and b!2834164 ((_ is Union!8411) (regOne!17334 (regex!5020 (h!38878 rules!1047))))) b!2834355))

(declare-fun b!2834356 () Bool)

(declare-fun e!1794817 () Bool)

(assert (=> b!2834356 (= e!1794817 tp_is_empty!14587)))

(declare-fun b!2834357 () Bool)

(declare-fun tp!906272 () Bool)

(declare-fun tp!906270 () Bool)

(assert (=> b!2834357 (= e!1794817 (and tp!906272 tp!906270))))

(declare-fun b!2834359 () Bool)

(declare-fun tp!906268 () Bool)

(declare-fun tp!906271 () Bool)

(assert (=> b!2834359 (= e!1794817 (and tp!906268 tp!906271))))

(assert (=> b!2834164 (= tp!906238 e!1794817)))

(declare-fun b!2834358 () Bool)

(declare-fun tp!906269 () Bool)

(assert (=> b!2834358 (= e!1794817 tp!906269)))

(assert (= (and b!2834164 ((_ is ElementMatch!8411) (regTwo!17334 (regex!5020 (h!38878 rules!1047))))) b!2834356))

(assert (= (and b!2834164 ((_ is Concat!13662) (regTwo!17334 (regex!5020 (h!38878 rules!1047))))) b!2834357))

(assert (= (and b!2834164 ((_ is Star!8411) (regTwo!17334 (regex!5020 (h!38878 rules!1047))))) b!2834358))

(assert (= (and b!2834164 ((_ is Union!8411) (regTwo!17334 (regex!5020 (h!38878 rules!1047))))) b!2834359))

(declare-fun b!2834360 () Bool)

(declare-fun e!1794818 () Bool)

(assert (=> b!2834360 (= e!1794818 tp_is_empty!14587)))

(declare-fun b!2834361 () Bool)

(declare-fun tp!906277 () Bool)

(declare-fun tp!906275 () Bool)

(assert (=> b!2834361 (= e!1794818 (and tp!906277 tp!906275))))

(declare-fun b!2834363 () Bool)

(declare-fun tp!906273 () Bool)

(declare-fun tp!906276 () Bool)

(assert (=> b!2834363 (= e!1794818 (and tp!906273 tp!906276))))

(assert (=> b!2834165 (= tp!906237 e!1794818)))

(declare-fun b!2834362 () Bool)

(declare-fun tp!906274 () Bool)

(assert (=> b!2834362 (= e!1794818 tp!906274)))

(assert (= (and b!2834165 ((_ is ElementMatch!8411) (reg!8740 (regex!5020 (h!38878 rules!1047))))) b!2834360))

(assert (= (and b!2834165 ((_ is Concat!13662) (reg!8740 (regex!5020 (h!38878 rules!1047))))) b!2834361))

(assert (= (and b!2834165 ((_ is Star!8411) (reg!8740 (regex!5020 (h!38878 rules!1047))))) b!2834362))

(assert (= (and b!2834165 ((_ is Union!8411) (reg!8740 (regex!5020 (h!38878 rules!1047))))) b!2834363))

(declare-fun b!2834375 () Bool)

(declare-fun tp!906285 () Bool)

(declare-fun tp!906287 () Bool)

(declare-fun e!1794827 () Bool)

(assert (=> b!2834375 (= e!1794827 (and (inv!45421 (left!25244 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))))) tp!906285 (inv!45421 (right!25574 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))))) tp!906287))))

(declare-fun b!2834377 () Bool)

(declare-fun e!1794826 () Bool)

(declare-fun tp!906286 () Bool)

(assert (=> b!2834377 (= e!1794826 tp!906286)))

(declare-fun b!2834376 () Bool)

(declare-fun inv!45427 (IArray!20795) Bool)

(assert (=> b!2834376 (= e!1794827 (and (inv!45427 (xs!13507 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))))) e!1794826))))

(assert (=> b!2833985 (= tp!906137 (and (inv!45421 (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019))))) e!1794827))))

(assert (= (and b!2833985 ((_ is Node!10395) (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))))) b!2834375))

(assert (= b!2834376 b!2834377))

(assert (= (and b!2833985 ((_ is Leaf!15813) (c!458092 (dynLambda!14061 (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (value!161439 (h!38879 l!4019)))))) b!2834376))

(declare-fun m!3263949 () Bool)

(assert (=> b!2834375 m!3263949))

(declare-fun m!3263951 () Bool)

(assert (=> b!2834375 m!3263951))

(declare-fun m!3263953 () Bool)

(assert (=> b!2834376 m!3263953))

(assert (=> b!2833985 m!3263521))

(declare-fun b!2834380 () Bool)

(declare-fun e!1794830 () Bool)

(assert (=> b!2834380 (= e!1794830 tp_is_empty!14587)))

(declare-fun b!2834381 () Bool)

(declare-fun tp!906292 () Bool)

(declare-fun tp!906290 () Bool)

(assert (=> b!2834381 (= e!1794830 (and tp!906292 tp!906290))))

(declare-fun b!2834383 () Bool)

(declare-fun tp!906288 () Bool)

(declare-fun tp!906291 () Bool)

(assert (=> b!2834383 (= e!1794830 (and tp!906288 tp!906291))))

(assert (=> b!2834155 (= tp!906232 e!1794830)))

(declare-fun b!2834382 () Bool)

(declare-fun tp!906289 () Bool)

(assert (=> b!2834382 (= e!1794830 tp!906289)))

(assert (= (and b!2834155 ((_ is ElementMatch!8411) (regOne!17334 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834380))

(assert (= (and b!2834155 ((_ is Concat!13662) (regOne!17334 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834381))

(assert (= (and b!2834155 ((_ is Star!8411) (regOne!17334 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834382))

(assert (= (and b!2834155 ((_ is Union!8411) (regOne!17334 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834383))

(declare-fun b!2834384 () Bool)

(declare-fun e!1794831 () Bool)

(assert (=> b!2834384 (= e!1794831 tp_is_empty!14587)))

(declare-fun b!2834385 () Bool)

(declare-fun tp!906297 () Bool)

(declare-fun tp!906295 () Bool)

(assert (=> b!2834385 (= e!1794831 (and tp!906297 tp!906295))))

(declare-fun b!2834387 () Bool)

(declare-fun tp!906293 () Bool)

(declare-fun tp!906296 () Bool)

(assert (=> b!2834387 (= e!1794831 (and tp!906293 tp!906296))))

(assert (=> b!2834155 (= tp!906230 e!1794831)))

(declare-fun b!2834386 () Bool)

(declare-fun tp!906294 () Bool)

(assert (=> b!2834386 (= e!1794831 tp!906294)))

(assert (= (and b!2834155 ((_ is ElementMatch!8411) (regTwo!17334 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834384))

(assert (= (and b!2834155 ((_ is Concat!13662) (regTwo!17334 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834385))

(assert (= (and b!2834155 ((_ is Star!8411) (regTwo!17334 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834386))

(assert (= (and b!2834155 ((_ is Union!8411) (regTwo!17334 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834387))

(declare-fun b!2834388 () Bool)

(declare-fun e!1794832 () Bool)

(declare-fun tp!906298 () Bool)

(assert (=> b!2834388 (= e!1794832 (and tp_is_empty!14587 tp!906298))))

(assert (=> b!2834141 (= tp!906215 e!1794832)))

(assert (= (and b!2834141 ((_ is Cons!33457) (originalCharacters!5752 (h!38879 (t!231708 l!4019))))) b!2834388))

(declare-fun b!2834391 () Bool)

(declare-fun e!1794835 () Bool)

(assert (=> b!2834391 (= e!1794835 true)))

(declare-fun b!2834390 () Bool)

(declare-fun e!1794834 () Bool)

(assert (=> b!2834390 (= e!1794834 e!1794835)))

(declare-fun b!2834389 () Bool)

(declare-fun e!1794833 () Bool)

(assert (=> b!2834389 (= e!1794833 e!1794834)))

(assert (=> b!2834007 e!1794833))

(assert (= b!2834390 b!2834391))

(assert (= b!2834389 b!2834390))

(assert (= (and b!2834007 ((_ is Cons!33458) (t!231707 rules!1047))) b!2834389))

(assert (=> b!2834391 (< (dynLambda!14058 order!17847 (toValue!7054 (transformation!5020 (h!38878 (t!231707 rules!1047))))) (dynLambda!14059 order!17849 lambda!104068))))

(assert (=> b!2834391 (< (dynLambda!14060 order!17851 (toChars!6913 (transformation!5020 (h!38878 (t!231707 rules!1047))))) (dynLambda!14059 order!17849 lambda!104068))))

(declare-fun b!2834392 () Bool)

(declare-fun e!1794836 () Bool)

(assert (=> b!2834392 (= e!1794836 tp_is_empty!14587)))

(declare-fun b!2834393 () Bool)

(declare-fun tp!906303 () Bool)

(declare-fun tp!906301 () Bool)

(assert (=> b!2834393 (= e!1794836 (and tp!906303 tp!906301))))

(declare-fun b!2834395 () Bool)

(declare-fun tp!906299 () Bool)

(declare-fun tp!906302 () Bool)

(assert (=> b!2834395 (= e!1794836 (and tp!906299 tp!906302))))

(assert (=> b!2834156 (= tp!906229 e!1794836)))

(declare-fun b!2834394 () Bool)

(declare-fun tp!906300 () Bool)

(assert (=> b!2834394 (= e!1794836 tp!906300)))

(assert (= (and b!2834156 ((_ is ElementMatch!8411) (reg!8740 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834392))

(assert (= (and b!2834156 ((_ is Concat!13662) (reg!8740 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834393))

(assert (= (and b!2834156 ((_ is Star!8411) (reg!8740 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834394))

(assert (= (and b!2834156 ((_ is Union!8411) (reg!8740 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834395))

(declare-fun b!2834400 () Bool)

(declare-fun e!1794839 () Bool)

(assert (=> b!2834400 (= e!1794839 tp_is_empty!14587)))

(declare-fun b!2834401 () Bool)

(declare-fun tp!906308 () Bool)

(declare-fun tp!906306 () Bool)

(assert (=> b!2834401 (= e!1794839 (and tp!906308 tp!906306))))

(declare-fun b!2834403 () Bool)

(declare-fun tp!906304 () Bool)

(declare-fun tp!906307 () Bool)

(assert (=> b!2834403 (= e!1794839 (and tp!906304 tp!906307))))

(assert (=> b!2834142 (= tp!906216 e!1794839)))

(declare-fun b!2834402 () Bool)

(declare-fun tp!906305 () Bool)

(assert (=> b!2834402 (= e!1794839 tp!906305)))

(assert (= (and b!2834142 ((_ is ElementMatch!8411) (regex!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) b!2834400))

(assert (= (and b!2834142 ((_ is Concat!13662) (regex!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) b!2834401))

(assert (= (and b!2834142 ((_ is Star!8411) (regex!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) b!2834402))

(assert (= (and b!2834142 ((_ is Union!8411) (regex!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) b!2834403))

(declare-fun b!2834406 () Bool)

(declare-fun b_free!81673 () Bool)

(declare-fun b_next!82377 () Bool)

(assert (=> b!2834406 (= b_free!81673 (not b_next!82377))))

(declare-fun tp!906312 () Bool)

(declare-fun b_and!207471 () Bool)

(assert (=> b!2834406 (= tp!906312 b_and!207471)))

(declare-fun b_free!81675 () Bool)

(declare-fun b_next!82379 () Bool)

(assert (=> b!2834406 (= b_free!81675 (not b_next!82379))))

(declare-fun tb!154377 () Bool)

(declare-fun t!231768 () Bool)

(assert (=> (and b!2834406 (= (toChars!6913 (transformation!5020 (h!38878 (t!231707 (t!231707 rules!1047))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019))))) t!231768) tb!154377))

(declare-fun result!192516 () Bool)

(assert (= result!192516 result!192458))

(assert (=> b!2833979 t!231768))

(declare-fun tb!154379 () Bool)

(declare-fun t!231770 () Bool)

(assert (=> (and b!2834406 (= (toChars!6913 (transformation!5020 (h!38878 (t!231707 (t!231707 rules!1047))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019)))))) t!231770) tb!154379))

(declare-fun result!192518 () Bool)

(assert (= result!192518 result!192494))

(assert (=> b!2834189 t!231770))

(declare-fun b_and!207473 () Bool)

(declare-fun tp!906311 () Bool)

(assert (=> b!2834406 (= tp!906311 (and (=> t!231768 result!192516) (=> t!231770 result!192518) b_and!207473))))

(declare-fun e!1794840 () Bool)

(assert (=> b!2834406 (= e!1794840 (and tp!906312 tp!906311))))

(declare-fun b!2834405 () Bool)

(declare-fun e!1794841 () Bool)

(declare-fun tp!906310 () Bool)

(assert (=> b!2834405 (= e!1794841 (and tp!906310 (inv!45414 (tag!5524 (h!38878 (t!231707 (t!231707 rules!1047))))) (inv!45417 (transformation!5020 (h!38878 (t!231707 (t!231707 rules!1047))))) e!1794840))))

(declare-fun b!2834404 () Bool)

(declare-fun e!1794843 () Bool)

(declare-fun tp!906309 () Bool)

(assert (=> b!2834404 (= e!1794843 (and e!1794841 tp!906309))))

(assert (=> b!2834127 (= tp!906199 e!1794843)))

(assert (= b!2834405 b!2834406))

(assert (= b!2834404 b!2834405))

(assert (= (and b!2834127 ((_ is Cons!33458) (t!231707 (t!231707 rules!1047)))) b!2834404))

(declare-fun m!3263959 () Bool)

(assert (=> b!2834405 m!3263959))

(declare-fun m!3263961 () Bool)

(assert (=> b!2834405 m!3263961))

(declare-fun b!2834408 () Bool)

(declare-fun e!1794844 () Bool)

(assert (=> b!2834408 (= e!1794844 tp_is_empty!14587)))

(declare-fun b!2834410 () Bool)

(declare-fun tp!906317 () Bool)

(declare-fun tp!906315 () Bool)

(assert (=> b!2834410 (= e!1794844 (and tp!906317 tp!906315))))

(declare-fun b!2834412 () Bool)

(declare-fun tp!906313 () Bool)

(declare-fun tp!906316 () Bool)

(assert (=> b!2834412 (= e!1794844 (and tp!906313 tp!906316))))

(assert (=> b!2834157 (= tp!906228 e!1794844)))

(declare-fun b!2834411 () Bool)

(declare-fun tp!906314 () Bool)

(assert (=> b!2834411 (= e!1794844 tp!906314)))

(assert (= (and b!2834157 ((_ is ElementMatch!8411) (regOne!17335 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834408))

(assert (= (and b!2834157 ((_ is Concat!13662) (regOne!17335 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834410))

(assert (= (and b!2834157 ((_ is Star!8411) (regOne!17335 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834411))

(assert (= (and b!2834157 ((_ is Union!8411) (regOne!17335 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834412))

(declare-fun b!2834413 () Bool)

(declare-fun e!1794846 () Bool)

(assert (=> b!2834413 (= e!1794846 tp_is_empty!14587)))

(declare-fun b!2834414 () Bool)

(declare-fun tp!906322 () Bool)

(declare-fun tp!906320 () Bool)

(assert (=> b!2834414 (= e!1794846 (and tp!906322 tp!906320))))

(declare-fun b!2834416 () Bool)

(declare-fun tp!906318 () Bool)

(declare-fun tp!906321 () Bool)

(assert (=> b!2834416 (= e!1794846 (and tp!906318 tp!906321))))

(assert (=> b!2834157 (= tp!906231 e!1794846)))

(declare-fun b!2834415 () Bool)

(declare-fun tp!906319 () Bool)

(assert (=> b!2834415 (= e!1794846 tp!906319)))

(assert (= (and b!2834157 ((_ is ElementMatch!8411) (regTwo!17335 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834413))

(assert (= (and b!2834157 ((_ is Concat!13662) (regTwo!17335 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834414))

(assert (= (and b!2834157 ((_ is Star!8411) (regTwo!17335 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834415))

(assert (= (and b!2834157 ((_ is Union!8411) (regTwo!17335 (regex!5020 (rule!7448 (h!38879 l!4019)))))) b!2834416))

(declare-fun b_lambda!85155 () Bool)

(assert (= b_lambda!85149 (or d!822180 b_lambda!85155)))

(declare-fun bs!518569 () Bool)

(declare-fun d!822390 () Bool)

(assert (= bs!518569 (and d!822390 d!822180)))

(assert (=> bs!518569 (= (dynLambda!14063 lambda!104065 (h!38879 (list!12499 (seqFromList!3266 l!4019)))) (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 (list!12499 (seqFromList!3266 l!4019)))))))

(assert (=> bs!518569 m!3263861))

(assert (=> b!2834300 d!822390))

(declare-fun b_lambda!85157 () Bool)

(assert (= b_lambda!85145 (or d!822198 b_lambda!85157)))

(declare-fun bs!518570 () Bool)

(declare-fun d!822392 () Bool)

(assert (= bs!518570 (and d!822392 d!822198)))

(assert (=> bs!518570 (= (dynLambda!14063 lambda!104068 (h!38879 l!4019)) (rulesProduceIndividualToken!2140 thiss!11007 rules!1047 (h!38879 l!4019)))))

(assert (=> bs!518570 m!3263463))

(assert (=> b!2834213 d!822392))

(declare-fun b_lambda!85159 () Bool)

(assert (= b_lambda!85143 (or (and b!2834129 b_free!81663 (= (toChars!6913 (transformation!5020 (h!38878 (t!231707 rules!1047)))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))))) (and b!2833917 b_free!81647 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 l!4019)))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))))) (and b!2834143 b_free!81667) (and b!2834333 b_free!81671 (= (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 (t!231708 l!4019)))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))))) (and b!2833922 b_free!81651 (= (toChars!6913 (transformation!5020 (h!38878 rules!1047))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))))) (and b!2834406 b_free!81675 (= (toChars!6913 (transformation!5020 (h!38878 (t!231707 (t!231707 rules!1047))))) (toChars!6913 (transformation!5020 (rule!7448 (h!38879 (t!231708 l!4019))))))) b_lambda!85159)))

(check-sat (not d!822342) (not b_lambda!85155) (not b!2834205) (not b!2834381) b_and!207459 (not b!2834331) (not b!2834204) (not b!2834295) (not b!2834383) (not d!822356) (not d!822300) (not b!2834401) (not b!2834191) (not b!2834402) (not b_next!82365) (not b_lambda!85159) (not b!2834215) (not b!2834387) (not b_next!82377) (not b!2834319) (not b!2834375) (not b_lambda!85157) b_and!207423 b_and!207471 (not b!2834393) b_and!207455 (not b_lambda!85141) (not b_next!82373) (not b!2834311) (not b!2834404) (not b!2834336) (not b!2834341) (not b_next!82355) (not d!822276) (not b!2834343) (not b_next!82375) (not b!2834243) (not b!2834412) (not b!2834382) (not b!2834339) (not b!2834309) (not b!2834189) (not tb!154357) tp_is_empty!14587 (not d!822354) (not b!2834347) (not d!822344) (not b!2834297) (not b!2834228) (not d!822290) (not b!2834363) (not b!2834244) (not d!822296) (not d!822298) (not b!2834312) (not b!2834337) (not b!2834376) (not d!822352) (not b!2834357) (not b!2834355) (not d!822256) (not b!2834190) (not b!2834362) (not d!822306) (not d!822348) (not b!2834353) (not d!822278) (not b!2834395) (not d!822280) (not b!2834361) b_and!207443 (not b!2834226) (not b!2834394) (not d!822258) (not b!2834301) (not b!2834304) (not b!2834202) (not b_next!82367) (not b!2834416) (not b!2834335) (not bs!518569) (not b!2834348) (not b!2834308) (not d!822292) b_and!207461 (not b!2834349) (not b!2834410) (not b!2833985) (not b!2834414) (not d!822318) (not d!822302) (not d!822370) (not b_next!82349) b_and!207457 (not b!2834411) (not b!2834214) (not d!822346) (not b!2834194) (not b!2834358) (not d!822362) (not d!822268) (not b!2834231) b_and!207447 (not b!2834377) (not bs!518570) (not b!2834359) (not b!2834332) b_and!207419 (not b_next!82371) (not d!822360) (not d!822374) (not b!2834342) b_and!207473 (not b_next!82351) (not d!822274) b_and!207453 (not b!2834340) (not b!2834326) (not b!2834330) (not d!822358) (not b!2834296) (not b_next!82379) (not b!2834206) (not d!822294) (not b!2834388) (not b!2834389) (not b_next!82369) (not b!2834354) (not b!2834386) (not b!2834385) b_and!207451 (not b!2834242) (not b!2834245) (not b!2834203) (not b!2834415) (not b!2834268) (not b!2834403) (not b!2834405) (not b_next!82353) (not d!822250))
(check-sat b_and!207459 (not b_next!82365) (not b_next!82377) (not b_next!82355) (not b_next!82375) b_and!207443 (not b_next!82367) b_and!207461 b_and!207447 b_and!207453 (not b_next!82379) (not b_next!82369) b_and!207451 (not b_next!82353) b_and!207423 b_and!207471 b_and!207455 (not b_next!82373) (not b_next!82349) b_and!207457 b_and!207419 (not b_next!82371) b_and!207473 (not b_next!82351))
