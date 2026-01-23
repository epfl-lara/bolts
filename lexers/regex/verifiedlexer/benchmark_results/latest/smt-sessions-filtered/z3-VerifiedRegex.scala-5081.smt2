; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259710 () Bool)

(assert start!259710)

(declare-fun b!2670424 () Bool)

(declare-fun b_free!75057 () Bool)

(declare-fun b_next!75761 () Bool)

(assert (=> b!2670424 (= b_free!75057 (not b_next!75761))))

(declare-fun tp!844237 () Bool)

(declare-fun b_and!197089 () Bool)

(assert (=> b!2670424 (= tp!844237 b_and!197089)))

(declare-fun b_free!75059 () Bool)

(declare-fun b_next!75763 () Bool)

(assert (=> b!2670424 (= b_free!75059 (not b_next!75763))))

(declare-fun tp!844236 () Bool)

(declare-fun b_and!197091 () Bool)

(assert (=> b!2670424 (= tp!844236 b_and!197091)))

(declare-fun b!2670415 () Bool)

(declare-fun b_free!75061 () Bool)

(declare-fun b_next!75765 () Bool)

(assert (=> b!2670415 (= b_free!75061 (not b_next!75765))))

(declare-fun tp!844242 () Bool)

(declare-fun b_and!197093 () Bool)

(assert (=> b!2670415 (= tp!844242 b_and!197093)))

(declare-fun b_free!75063 () Bool)

(declare-fun b_next!75767 () Bool)

(assert (=> b!2670415 (= b_free!75063 (not b_next!75767))))

(declare-fun tp!844245 () Bool)

(declare-fun b_and!197095 () Bool)

(assert (=> b!2670415 (= tp!844245 b_and!197095)))

(declare-fun b!2670419 () Bool)

(declare-fun b_free!75065 () Bool)

(declare-fun b_next!75769 () Bool)

(assert (=> b!2670419 (= b_free!75065 (not b_next!75769))))

(declare-fun tp!844238 () Bool)

(declare-fun b_and!197097 () Bool)

(assert (=> b!2670419 (= tp!844238 b_and!197097)))

(declare-fun b_free!75067 () Bool)

(declare-fun b_next!75771 () Bool)

(assert (=> b!2670419 (= b_free!75067 (not b_next!75771))))

(declare-fun tp!844241 () Bool)

(declare-fun b_and!197099 () Bool)

(assert (=> b!2670419 (= tp!844241 b_and!197099)))

(declare-fun bs!479424 () Bool)

(declare-fun b!2670409 () Bool)

(declare-fun b!2670413 () Bool)

(assert (= bs!479424 (and b!2670409 b!2670413)))

(declare-fun lambda!99708 () Int)

(declare-fun lambda!99707 () Int)

(assert (=> bs!479424 (not (= lambda!99708 lambda!99707))))

(declare-fun b!2670439 () Bool)

(declare-fun e!1683034 () Bool)

(assert (=> b!2670439 (= e!1683034 true)))

(declare-fun b!2670438 () Bool)

(declare-fun e!1683033 () Bool)

(assert (=> b!2670438 (= e!1683033 e!1683034)))

(declare-fun b!2670437 () Bool)

(declare-fun e!1683032 () Bool)

(assert (=> b!2670437 (= e!1683032 e!1683033)))

(assert (=> b!2670409 e!1683032))

(assert (= b!2670438 b!2670439))

(assert (= b!2670437 b!2670438))

(declare-datatypes ((List!30799 0))(
  ( (Nil!30699) (Cons!30699 (h!36119 (_ BitVec 16)) (t!223168 List!30799)) )
))
(declare-datatypes ((TokenValue!4905 0))(
  ( (FloatLiteralValue!9810 (text!34780 List!30799)) (TokenValueExt!4904 (__x!19643 Int)) (Broken!24525 (value!151044 List!30799)) (Object!5004) (End!4905) (Def!4905) (Underscore!4905) (Match!4905) (Else!4905) (Error!4905) (Case!4905) (If!4905) (Extends!4905) (Abstract!4905) (Class!4905) (Val!4905) (DelimiterValue!9810 (del!4965 List!30799)) (KeywordValue!4911 (value!151045 List!30799)) (CommentValue!9810 (value!151046 List!30799)) (WhitespaceValue!9810 (value!151047 List!30799)) (IndentationValue!4905 (value!151048 List!30799)) (String!34408) (Int32!4905) (Broken!24526 (value!151049 List!30799)) (Boolean!4906) (Unit!44916) (OperatorValue!4908 (op!4965 List!30799)) (IdentifierValue!9810 (value!151050 List!30799)) (IdentifierValue!9811 (value!151051 List!30799)) (WhitespaceValue!9811 (value!151052 List!30799)) (True!9810) (False!9810) (Broken!24527 (value!151053 List!30799)) (Broken!24528 (value!151054 List!30799)) (True!9811) (RightBrace!4905) (RightBracket!4905) (Colon!4905) (Null!4905) (Comma!4905) (LeftBracket!4905) (False!9811) (LeftBrace!4905) (ImaginaryLiteralValue!4905 (text!34781 List!30799)) (StringLiteralValue!14715 (value!151055 List!30799)) (EOFValue!4905 (value!151056 List!30799)) (IdentValue!4905 (value!151057 List!30799)) (DelimiterValue!9811 (value!151058 List!30799)) (DedentValue!4905 (value!151059 List!30799)) (NewLineValue!4905 (value!151060 List!30799)) (IntegerValue!14715 (value!151061 (_ BitVec 32)) (text!34782 List!30799)) (IntegerValue!14716 (value!151062 Int) (text!34783 List!30799)) (Times!4905) (Or!4905) (Equal!4905) (Minus!4905) (Broken!24529 (value!151063 List!30799)) (And!4905) (Div!4905) (LessEqual!4905) (Mod!4905) (Concat!12732) (Not!4905) (Plus!4905) (SpaceValue!4905 (value!151064 List!30799)) (IntegerValue!14717 (value!151065 Int) (text!34784 List!30799)) (StringLiteralValue!14716 (text!34785 List!30799)) (FloatLiteralValue!9811 (text!34786 List!30799)) (BytesLiteralValue!4905 (value!151066 List!30799)) (CommentValue!9811 (value!151067 List!30799)) (StringLiteralValue!14717 (value!151068 List!30799)) (ErrorTokenValue!4905 (msg!4966 List!30799)) )
))
(declare-datatypes ((C!15812 0))(
  ( (C!15813 (val!9840 Int)) )
))
(declare-datatypes ((Regex!7827 0))(
  ( (ElementMatch!7827 (c!430457 C!15812)) (Concat!12733 (regOne!16166 Regex!7827) (regTwo!16166 Regex!7827)) (EmptyExpr!7827) (Star!7827 (reg!8156 Regex!7827)) (EmptyLang!7827) (Union!7827 (regOne!16167 Regex!7827) (regTwo!16167 Regex!7827)) )
))
(declare-datatypes ((List!30800 0))(
  ( (Nil!30700) (Cons!30700 (h!36120 C!15812) (t!223169 List!30800)) )
))
(declare-datatypes ((IArray!19199 0))(
  ( (IArray!19200 (innerList!9657 List!30800)) )
))
(declare-datatypes ((Conc!9597 0))(
  ( (Node!9597 (left!23742 Conc!9597) (right!24072 Conc!9597) (csize!19424 Int) (cheight!9808 Int)) (Leaf!14679 (xs!12627 IArray!19199) (csize!19425 Int)) (Empty!9597) )
))
(declare-datatypes ((BalanceConc!18808 0))(
  ( (BalanceConc!18809 (c!430458 Conc!9597)) )
))
(declare-datatypes ((TokenValueInjection!9250 0))(
  ( (TokenValueInjection!9251 (toValue!6621 Int) (toChars!6480 Int)) )
))
(declare-datatypes ((String!34409 0))(
  ( (String!34410 (value!151069 String)) )
))
(declare-datatypes ((Rule!9166 0))(
  ( (Rule!9167 (regex!4683 Regex!7827) (tag!5185 String!34409) (isSeparator!4683 Bool) (transformation!4683 TokenValueInjection!9250)) )
))
(declare-datatypes ((List!30801 0))(
  ( (Nil!30701) (Cons!30701 (h!36121 Rule!9166) (t!223170 List!30801)) )
))
(declare-fun rules!1712 () List!30801)

(get-info :version)

(assert (= (and b!2670409 ((_ is Cons!30701) rules!1712)) b!2670437))

(declare-fun order!16839 () Int)

(declare-fun order!16841 () Int)

(declare-fun dynLambda!13284 (Int Int) Int)

(declare-fun dynLambda!13285 (Int Int) Int)

(assert (=> b!2670439 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99708))))

(declare-fun order!16843 () Int)

(declare-fun dynLambda!13286 (Int Int) Int)

(assert (=> b!2670439 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99708))))

(assert (=> b!2670409 true))

(declare-fun e!1683014 () Bool)

(declare-datatypes ((LexerInterface!4280 0))(
  ( (LexerInterfaceExt!4277 (__x!19644 Int)) (Lexer!4278) )
))
(declare-fun thiss!14116 () LexerInterface!4280)

(declare-fun rulesValidInductive!1629 (LexerInterface!4280 List!30801) Bool)

(assert (=> b!2670409 (= e!1683014 (not (rulesValidInductive!1629 thiss!14116 rules!1712)))))

(declare-datatypes ((Token!8836 0))(
  ( (Token!8837 (value!151070 TokenValue!4905) (rule!7089 Rule!9166) (size!23745 Int) (originalCharacters!5449 List!30800)) )
))
(declare-fun separatorToken!152 () Token!8836)

(declare-datatypes ((List!30802 0))(
  ( (Nil!30702) (Cons!30702 (h!36122 Token!8836) (t!223171 List!30802)) )
))
(declare-fun l!4335 () List!30802)

(declare-fun lt!940490 () List!30800)

(declare-fun ++!7487 (List!30800 List!30800) List!30800)

(declare-fun list!11587 (BalanceConc!18808) List!30800)

(declare-fun charsOf!2948 (Token!8836) BalanceConc!18808)

(declare-fun printWithSeparatorTokenWhenNeededList!676 (LexerInterface!4280 List!30801 List!30802 Token!8836) List!30800)

(assert (=> b!2670409 (= lt!940490 (++!7487 (list!11587 (charsOf!2948 (h!36122 l!4335))) (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))

(declare-datatypes ((Unit!44917 0))(
  ( (Unit!44918) )
))
(declare-fun lt!940489 () Unit!44917)

(declare-fun forallContained!1025 (List!30802 Int Token!8836) Unit!44917)

(assert (=> b!2670409 (= lt!940489 (forallContained!1025 l!4335 lambda!99708 (h!36122 l!4335)))))

(declare-fun b!2670410 () Bool)

(declare-fun res!1122750 () Bool)

(assert (=> b!2670410 (=> (not res!1122750) (not e!1683014))))

(declare-fun rulesInvariant!3780 (LexerInterface!4280 List!30801) Bool)

(assert (=> b!2670410 (= res!1122750 (rulesInvariant!3780 thiss!14116 rules!1712))))

(declare-fun b!2670412 () Bool)

(declare-fun res!1122745 () Bool)

(assert (=> b!2670412 (=> (not res!1122745) (not e!1683014))))

(assert (=> b!2670412 (= res!1122745 ((_ is Cons!30702) l!4335))))

(declare-fun res!1122749 () Bool)

(assert (=> b!2670413 (=> (not res!1122749) (not e!1683014))))

(declare-fun forall!6496 (List!30802 Int) Bool)

(assert (=> b!2670413 (= res!1122749 (forall!6496 l!4335 lambda!99707))))

(declare-fun tp!844239 () Bool)

(declare-fun b!2670414 () Bool)

(declare-fun e!1683022 () Bool)

(declare-fun e!1683018 () Bool)

(declare-fun inv!41701 (String!34409) Bool)

(declare-fun inv!41704 (TokenValueInjection!9250) Bool)

(assert (=> b!2670414 (= e!1683022 (and tp!844239 (inv!41701 (tag!5185 (rule!7089 (h!36122 l!4335)))) (inv!41704 (transformation!4683 (rule!7089 (h!36122 l!4335)))) e!1683018))))

(declare-fun e!1683021 () Bool)

(assert (=> b!2670415 (= e!1683021 (and tp!844242 tp!844245))))

(declare-fun b!2670416 () Bool)

(declare-fun res!1122752 () Bool)

(assert (=> b!2670416 (=> (not res!1122752) (not e!1683014))))

(assert (=> b!2670416 (= res!1122752 (isSeparator!4683 (rule!7089 separatorToken!152)))))

(declare-fun b!2670417 () Bool)

(declare-fun res!1122746 () Bool)

(assert (=> b!2670417 (=> (not res!1122746) (not e!1683014))))

(declare-fun sepAndNonSepRulesDisjointChars!1256 (List!30801 List!30801) Bool)

(assert (=> b!2670417 (= res!1122746 (sepAndNonSepRulesDisjointChars!1256 rules!1712 rules!1712))))

(declare-fun b!2670418 () Bool)

(declare-fun e!1683025 () Bool)

(declare-fun e!1683017 () Bool)

(declare-fun tp!844235 () Bool)

(assert (=> b!2670418 (= e!1683025 (and e!1683017 tp!844235))))

(declare-fun e!1683020 () Bool)

(assert (=> b!2670419 (= e!1683020 (and tp!844238 tp!844241))))

(declare-fun b!2670420 () Bool)

(declare-fun res!1122753 () Bool)

(assert (=> b!2670420 (=> (not res!1122753) (not e!1683014))))

(declare-fun rulesProduceIndividualToken!1992 (LexerInterface!4280 List!30801 Token!8836) Bool)

(assert (=> b!2670420 (= res!1122753 (rulesProduceIndividualToken!1992 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2670421 () Bool)

(declare-fun res!1122747 () Bool)

(assert (=> b!2670421 (=> (not res!1122747) (not e!1683014))))

(declare-fun contains!5891 (List!30802 Token!8836) Bool)

(assert (=> b!2670421 (= res!1122747 (contains!5891 l!4335 (h!36122 l!4335)))))

(declare-fun b!2670422 () Bool)

(declare-fun res!1122751 () Bool)

(assert (=> b!2670422 (=> (not res!1122751) (not e!1683014))))

(declare-fun rulesProduceEachTokenIndividuallyList!1502 (LexerInterface!4280 List!30801 List!30802) Bool)

(assert (=> b!2670422 (= res!1122751 (rulesProduceEachTokenIndividuallyList!1502 thiss!14116 rules!1712 l!4335))))

(declare-fun tp!844244 () Bool)

(declare-fun e!1683011 () Bool)

(declare-fun e!1683019 () Bool)

(declare-fun b!2670423 () Bool)

(declare-fun inv!21 (TokenValue!4905) Bool)

(assert (=> b!2670423 (= e!1683019 (and (inv!21 (value!151070 separatorToken!152)) e!1683011 tp!844244))))

(declare-fun b!2670411 () Bool)

(declare-fun tp!844246 () Bool)

(declare-fun e!1683010 () Bool)

(assert (=> b!2670411 (= e!1683010 (and (inv!21 (value!151070 (h!36122 l!4335))) e!1683022 tp!844246))))

(declare-fun res!1122748 () Bool)

(assert (=> start!259710 (=> (not res!1122748) (not e!1683014))))

(assert (=> start!259710 (= res!1122748 ((_ is Lexer!4278) thiss!14116))))

(assert (=> start!259710 e!1683014))

(assert (=> start!259710 true))

(assert (=> start!259710 e!1683025))

(declare-fun e!1683013 () Bool)

(assert (=> start!259710 e!1683013))

(declare-fun inv!41705 (Token!8836) Bool)

(assert (=> start!259710 (and (inv!41705 separatorToken!152) e!1683019)))

(assert (=> b!2670424 (= e!1683018 (and tp!844237 tp!844236))))

(declare-fun tp!844240 () Bool)

(declare-fun b!2670425 () Bool)

(assert (=> b!2670425 (= e!1683013 (and (inv!41705 (h!36122 l!4335)) e!1683010 tp!844240))))

(declare-fun b!2670426 () Bool)

(declare-fun tp!844234 () Bool)

(assert (=> b!2670426 (= e!1683011 (and tp!844234 (inv!41701 (tag!5185 (rule!7089 separatorToken!152))) (inv!41704 (transformation!4683 (rule!7089 separatorToken!152))) e!1683021))))

(declare-fun b!2670427 () Bool)

(declare-fun tp!844243 () Bool)

(assert (=> b!2670427 (= e!1683017 (and tp!844243 (inv!41701 (tag!5185 (h!36121 rules!1712))) (inv!41704 (transformation!4683 (h!36121 rules!1712))) e!1683020))))

(declare-fun b!2670428 () Bool)

(declare-fun res!1122754 () Bool)

(assert (=> b!2670428 (=> (not res!1122754) (not e!1683014))))

(declare-fun isEmpty!17559 (List!30801) Bool)

(assert (=> b!2670428 (= res!1122754 (not (isEmpty!17559 rules!1712)))))

(assert (= (and start!259710 res!1122748) b!2670428))

(assert (= (and b!2670428 res!1122754) b!2670410))

(assert (= (and b!2670410 res!1122750) b!2670422))

(assert (= (and b!2670422 res!1122751) b!2670420))

(assert (= (and b!2670420 res!1122753) b!2670416))

(assert (= (and b!2670416 res!1122752) b!2670413))

(assert (= (and b!2670413 res!1122749) b!2670417))

(assert (= (and b!2670417 res!1122746) b!2670412))

(assert (= (and b!2670412 res!1122745) b!2670421))

(assert (= (and b!2670421 res!1122747) b!2670409))

(assert (= b!2670427 b!2670419))

(assert (= b!2670418 b!2670427))

(assert (= (and start!259710 ((_ is Cons!30701) rules!1712)) b!2670418))

(assert (= b!2670414 b!2670424))

(assert (= b!2670411 b!2670414))

(assert (= b!2670425 b!2670411))

(assert (= (and start!259710 ((_ is Cons!30702) l!4335)) b!2670425))

(assert (= b!2670426 b!2670415))

(assert (= b!2670423 b!2670426))

(assert (= start!259710 b!2670423))

(declare-fun m!3036505 () Bool)

(assert (=> b!2670414 m!3036505))

(declare-fun m!3036507 () Bool)

(assert (=> b!2670414 m!3036507))

(declare-fun m!3036509 () Bool)

(assert (=> b!2670413 m!3036509))

(declare-fun m!3036511 () Bool)

(assert (=> b!2670422 m!3036511))

(declare-fun m!3036513 () Bool)

(assert (=> b!2670409 m!3036513))

(declare-fun m!3036515 () Bool)

(assert (=> b!2670409 m!3036515))

(assert (=> b!2670409 m!3036515))

(declare-fun m!3036517 () Bool)

(assert (=> b!2670409 m!3036517))

(declare-fun m!3036519 () Bool)

(assert (=> b!2670409 m!3036519))

(assert (=> b!2670409 m!3036513))

(declare-fun m!3036521 () Bool)

(assert (=> b!2670409 m!3036521))

(declare-fun m!3036523 () Bool)

(assert (=> b!2670409 m!3036523))

(assert (=> b!2670409 m!3036517))

(declare-fun m!3036525 () Bool)

(assert (=> start!259710 m!3036525))

(declare-fun m!3036527 () Bool)

(assert (=> b!2670423 m!3036527))

(declare-fun m!3036529 () Bool)

(assert (=> b!2670426 m!3036529))

(declare-fun m!3036531 () Bool)

(assert (=> b!2670426 m!3036531))

(declare-fun m!3036533 () Bool)

(assert (=> b!2670421 m!3036533))

(declare-fun m!3036535 () Bool)

(assert (=> b!2670410 m!3036535))

(declare-fun m!3036537 () Bool)

(assert (=> b!2670428 m!3036537))

(declare-fun m!3036539 () Bool)

(assert (=> b!2670425 m!3036539))

(declare-fun m!3036541 () Bool)

(assert (=> b!2670427 m!3036541))

(declare-fun m!3036543 () Bool)

(assert (=> b!2670427 m!3036543))

(declare-fun m!3036545 () Bool)

(assert (=> b!2670411 m!3036545))

(declare-fun m!3036547 () Bool)

(assert (=> b!2670417 m!3036547))

(declare-fun m!3036549 () Bool)

(assert (=> b!2670420 m!3036549))

(check-sat (not b_next!75769) (not b!2670413) b_and!197097 (not b_next!75771) (not b!2670410) (not b!2670427) (not b!2670417) b_and!197089 (not b!2670420) (not b_next!75761) (not b!2670414) (not b!2670426) (not b!2670425) b_and!197099 b_and!197091 (not b!2670418) (not b_next!75763) b_and!197093 (not start!259710) b_and!197095 (not b!2670428) (not b!2670409) (not b!2670421) (not b!2670423) (not b_next!75765) (not b_next!75767) (not b!2670437) (not b!2670422) (not b!2670411))
(check-sat (not b_next!75769) b_and!197095 (not b_next!75765) b_and!197097 (not b_next!75767) (not b_next!75771) b_and!197089 (not b_next!75761) b_and!197099 b_and!197091 (not b_next!75763) b_and!197093)
(get-model)

(declare-fun d!763656 () Bool)

(assert (=> d!763656 (= (isEmpty!17559 rules!1712) ((_ is Nil!30701) rules!1712))))

(assert (=> b!2670428 d!763656))

(declare-fun d!763658 () Bool)

(assert (=> d!763658 (= (inv!41701 (tag!5185 (h!36121 rules!1712))) (= (mod (str.len (value!151069 (tag!5185 (h!36121 rules!1712)))) 2) 0))))

(assert (=> b!2670427 d!763658))

(declare-fun d!763660 () Bool)

(declare-fun res!1122796 () Bool)

(declare-fun e!1683074 () Bool)

(assert (=> d!763660 (=> (not res!1122796) (not e!1683074))))

(declare-fun semiInverseModEq!1940 (Int Int) Bool)

(assert (=> d!763660 (= res!1122796 (semiInverseModEq!1940 (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toValue!6621 (transformation!4683 (h!36121 rules!1712)))))))

(assert (=> d!763660 (= (inv!41704 (transformation!4683 (h!36121 rules!1712))) e!1683074)))

(declare-fun b!2670492 () Bool)

(declare-fun equivClasses!1841 (Int Int) Bool)

(assert (=> b!2670492 (= e!1683074 (equivClasses!1841 (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toValue!6621 (transformation!4683 (h!36121 rules!1712)))))))

(assert (= (and d!763660 res!1122796) b!2670492))

(declare-fun m!3036591 () Bool)

(assert (=> d!763660 m!3036591))

(declare-fun m!3036593 () Bool)

(assert (=> b!2670492 m!3036593))

(assert (=> b!2670427 d!763660))

(declare-fun d!763662 () Bool)

(declare-fun res!1122801 () Bool)

(declare-fun e!1683079 () Bool)

(assert (=> d!763662 (=> res!1122801 e!1683079)))

(assert (=> d!763662 (= res!1122801 (not ((_ is Cons!30701) rules!1712)))))

(assert (=> d!763662 (= (sepAndNonSepRulesDisjointChars!1256 rules!1712 rules!1712) e!1683079)))

(declare-fun b!2670497 () Bool)

(declare-fun e!1683080 () Bool)

(assert (=> b!2670497 (= e!1683079 e!1683080)))

(declare-fun res!1122802 () Bool)

(assert (=> b!2670497 (=> (not res!1122802) (not e!1683080))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!547 (Rule!9166 List!30801) Bool)

(assert (=> b!2670497 (= res!1122802 (ruleDisjointCharsFromAllFromOtherType!547 (h!36121 rules!1712) rules!1712))))

(declare-fun b!2670498 () Bool)

(assert (=> b!2670498 (= e!1683080 (sepAndNonSepRulesDisjointChars!1256 rules!1712 (t!223170 rules!1712)))))

(assert (= (and d!763662 (not res!1122801)) b!2670497))

(assert (= (and b!2670497 res!1122802) b!2670498))

(declare-fun m!3036595 () Bool)

(assert (=> b!2670497 m!3036595))

(declare-fun m!3036597 () Bool)

(assert (=> b!2670498 m!3036597))

(assert (=> b!2670417 d!763662))

(declare-fun d!763664 () Bool)

(declare-fun lt!940517 () Bool)

(declare-fun e!1683110 () Bool)

(assert (=> d!763664 (= lt!940517 e!1683110)))

(declare-fun res!1122836 () Bool)

(assert (=> d!763664 (=> (not res!1122836) (not e!1683110))))

(declare-datatypes ((IArray!19203 0))(
  ( (IArray!19204 (innerList!9659 List!30802)) )
))
(declare-datatypes ((Conc!9599 0))(
  ( (Node!9599 (left!23744 Conc!9599) (right!24074 Conc!9599) (csize!19428 Int) (cheight!9810 Int)) (Leaf!14681 (xs!12629 IArray!19203) (csize!19429 Int)) (Empty!9599) )
))
(declare-datatypes ((BalanceConc!18812 0))(
  ( (BalanceConc!18813 (c!430511 Conc!9599)) )
))
(declare-fun list!11590 (BalanceConc!18812) List!30802)

(declare-datatypes ((tuple2!30180 0))(
  ( (tuple2!30181 (_1!17632 BalanceConc!18812) (_2!17632 BalanceConc!18808)) )
))
(declare-fun lex!1925 (LexerInterface!4280 List!30801 BalanceConc!18808) tuple2!30180)

(declare-fun print!1663 (LexerInterface!4280 BalanceConc!18812) BalanceConc!18808)

(declare-fun singletonSeq!2082 (Token!8836) BalanceConc!18812)

(assert (=> d!763664 (= res!1122836 (= (list!11590 (_1!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152))))) (list!11590 (singletonSeq!2082 separatorToken!152))))))

(declare-fun e!1683109 () Bool)

(assert (=> d!763664 (= lt!940517 e!1683109)))

(declare-fun res!1122838 () Bool)

(assert (=> d!763664 (=> (not res!1122838) (not e!1683109))))

(declare-fun lt!940516 () tuple2!30180)

(declare-fun size!23748 (BalanceConc!18812) Int)

(assert (=> d!763664 (= res!1122838 (= (size!23748 (_1!17632 lt!940516)) 1))))

(assert (=> d!763664 (= lt!940516 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152))))))

(assert (=> d!763664 (not (isEmpty!17559 rules!1712))))

(assert (=> d!763664 (= (rulesProduceIndividualToken!1992 thiss!14116 rules!1712 separatorToken!152) lt!940517)))

(declare-fun b!2670541 () Bool)

(declare-fun res!1122837 () Bool)

(assert (=> b!2670541 (=> (not res!1122837) (not e!1683109))))

(declare-fun apply!7358 (BalanceConc!18812 Int) Token!8836)

(assert (=> b!2670541 (= res!1122837 (= (apply!7358 (_1!17632 lt!940516) 0) separatorToken!152))))

(declare-fun b!2670542 () Bool)

(declare-fun isEmpty!17562 (BalanceConc!18808) Bool)

(assert (=> b!2670542 (= e!1683109 (isEmpty!17562 (_2!17632 lt!940516)))))

(declare-fun b!2670543 () Bool)

(assert (=> b!2670543 (= e!1683110 (isEmpty!17562 (_2!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152))))))))

(assert (= (and d!763664 res!1122838) b!2670541))

(assert (= (and b!2670541 res!1122837) b!2670542))

(assert (= (and d!763664 res!1122836) b!2670543))

(declare-fun m!3036663 () Bool)

(assert (=> d!763664 m!3036663))

(assert (=> d!763664 m!3036663))

(declare-fun m!3036665 () Bool)

(assert (=> d!763664 m!3036665))

(declare-fun m!3036667 () Bool)

(assert (=> d!763664 m!3036667))

(declare-fun m!3036669 () Bool)

(assert (=> d!763664 m!3036669))

(assert (=> d!763664 m!3036537))

(assert (=> d!763664 m!3036663))

(assert (=> d!763664 m!3036667))

(declare-fun m!3036671 () Bool)

(assert (=> d!763664 m!3036671))

(declare-fun m!3036673 () Bool)

(assert (=> d!763664 m!3036673))

(declare-fun m!3036675 () Bool)

(assert (=> b!2670541 m!3036675))

(declare-fun m!3036677 () Bool)

(assert (=> b!2670542 m!3036677))

(assert (=> b!2670543 m!3036663))

(assert (=> b!2670543 m!3036663))

(assert (=> b!2670543 m!3036667))

(assert (=> b!2670543 m!3036667))

(assert (=> b!2670543 m!3036669))

(declare-fun m!3036679 () Bool)

(assert (=> b!2670543 m!3036679))

(assert (=> b!2670420 d!763664))

(declare-fun d!763684 () Bool)

(declare-fun res!1122841 () Bool)

(declare-fun e!1683113 () Bool)

(assert (=> d!763684 (=> (not res!1122841) (not e!1683113))))

(declare-fun rulesValid!1746 (LexerInterface!4280 List!30801) Bool)

(assert (=> d!763684 (= res!1122841 (rulesValid!1746 thiss!14116 rules!1712))))

(assert (=> d!763684 (= (rulesInvariant!3780 thiss!14116 rules!1712) e!1683113)))

(declare-fun b!2670546 () Bool)

(declare-datatypes ((List!30804 0))(
  ( (Nil!30704) (Cons!30704 (h!36124 String!34409) (t!223223 List!30804)) )
))
(declare-fun noDuplicateTag!1742 (LexerInterface!4280 List!30801 List!30804) Bool)

(assert (=> b!2670546 (= e!1683113 (noDuplicateTag!1742 thiss!14116 rules!1712 Nil!30704))))

(assert (= (and d!763684 res!1122841) b!2670546))

(declare-fun m!3036681 () Bool)

(assert (=> d!763684 m!3036681))

(declare-fun m!3036683 () Bool)

(assert (=> b!2670546 m!3036683))

(assert (=> b!2670410 d!763684))

(declare-fun d!763686 () Bool)

(declare-fun lt!940520 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4358 (List!30802) (InoxSet Token!8836))

(assert (=> d!763686 (= lt!940520 (select (content!4358 l!4335) (h!36122 l!4335)))))

(declare-fun e!1683118 () Bool)

(assert (=> d!763686 (= lt!940520 e!1683118)))

(declare-fun res!1122847 () Bool)

(assert (=> d!763686 (=> (not res!1122847) (not e!1683118))))

(assert (=> d!763686 (= res!1122847 ((_ is Cons!30702) l!4335))))

(assert (=> d!763686 (= (contains!5891 l!4335 (h!36122 l!4335)) lt!940520)))

(declare-fun b!2670551 () Bool)

(declare-fun e!1683119 () Bool)

(assert (=> b!2670551 (= e!1683118 e!1683119)))

(declare-fun res!1122846 () Bool)

(assert (=> b!2670551 (=> res!1122846 e!1683119)))

(assert (=> b!2670551 (= res!1122846 (= (h!36122 l!4335) (h!36122 l!4335)))))

(declare-fun b!2670552 () Bool)

(assert (=> b!2670552 (= e!1683119 (contains!5891 (t!223171 l!4335) (h!36122 l!4335)))))

(assert (= (and d!763686 res!1122847) b!2670551))

(assert (= (and b!2670551 (not res!1122846)) b!2670552))

(declare-fun m!3036685 () Bool)

(assert (=> d!763686 m!3036685))

(declare-fun m!3036687 () Bool)

(assert (=> d!763686 m!3036687))

(declare-fun m!3036689 () Bool)

(assert (=> b!2670552 m!3036689))

(assert (=> b!2670421 d!763686))

(declare-fun d!763688 () Bool)

(declare-fun lt!940523 () BalanceConc!18808)

(assert (=> d!763688 (= (list!11587 lt!940523) (originalCharacters!5449 (h!36122 l!4335)))))

(declare-fun dynLambda!13289 (Int TokenValue!4905) BalanceConc!18808)

(assert (=> d!763688 (= lt!940523 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))))

(assert (=> d!763688 (= (charsOf!2948 (h!36122 l!4335)) lt!940523)))

(declare-fun b_lambda!81305 () Bool)

(assert (=> (not b_lambda!81305) (not d!763688)))

(declare-fun t!223187 () Bool)

(declare-fun tb!149629 () Bool)

(assert (=> (and b!2670424 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335))))) t!223187) tb!149629))

(declare-fun b!2670557 () Bool)

(declare-fun e!1683122 () Bool)

(declare-fun tp!844253 () Bool)

(declare-fun inv!41708 (Conc!9597) Bool)

(assert (=> b!2670557 (= e!1683122 (and (inv!41708 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))) tp!844253))))

(declare-fun result!184810 () Bool)

(declare-fun inv!41709 (BalanceConc!18808) Bool)

(assert (=> tb!149629 (= result!184810 (and (inv!41709 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))) e!1683122))))

(assert (= tb!149629 b!2670557))

(declare-fun m!3036691 () Bool)

(assert (=> b!2670557 m!3036691))

(declare-fun m!3036693 () Bool)

(assert (=> tb!149629 m!3036693))

(assert (=> d!763688 t!223187))

(declare-fun b_and!197119 () Bool)

(assert (= b_and!197091 (and (=> t!223187 result!184810) b_and!197119)))

(declare-fun t!223189 () Bool)

(declare-fun tb!149631 () Bool)

(assert (=> (and b!2670415 (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335))))) t!223189) tb!149631))

(declare-fun result!184814 () Bool)

(assert (= result!184814 result!184810))

(assert (=> d!763688 t!223189))

(declare-fun b_and!197121 () Bool)

(assert (= b_and!197095 (and (=> t!223189 result!184814) b_and!197121)))

(declare-fun tb!149633 () Bool)

(declare-fun t!223191 () Bool)

(assert (=> (and b!2670419 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335))))) t!223191) tb!149633))

(declare-fun result!184816 () Bool)

(assert (= result!184816 result!184810))

(assert (=> d!763688 t!223191))

(declare-fun b_and!197123 () Bool)

(assert (= b_and!197099 (and (=> t!223191 result!184816) b_and!197123)))

(declare-fun m!3036695 () Bool)

(assert (=> d!763688 m!3036695))

(declare-fun m!3036697 () Bool)

(assert (=> d!763688 m!3036697))

(assert (=> b!2670409 d!763688))

(declare-fun b!2670568 () Bool)

(declare-fun res!1122853 () Bool)

(declare-fun e!1683128 () Bool)

(assert (=> b!2670568 (=> (not res!1122853) (not e!1683128))))

(declare-fun lt!940526 () List!30800)

(declare-fun size!23749 (List!30800) Int)

(assert (=> b!2670568 (= res!1122853 (= (size!23749 lt!940526) (+ (size!23749 (list!11587 (charsOf!2948 (h!36122 l!4335)))) (size!23749 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))))

(declare-fun b!2670566 () Bool)

(declare-fun e!1683127 () List!30800)

(assert (=> b!2670566 (= e!1683127 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152))))

(declare-fun b!2670567 () Bool)

(assert (=> b!2670567 (= e!1683127 (Cons!30700 (h!36120 (list!11587 (charsOf!2948 (h!36122 l!4335)))) (++!7487 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335)))) (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152))))))

(declare-fun b!2670569 () Bool)

(assert (=> b!2670569 (= e!1683128 (or (not (= (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152) Nil!30700)) (= lt!940526 (list!11587 (charsOf!2948 (h!36122 l!4335))))))))

(declare-fun d!763690 () Bool)

(assert (=> d!763690 e!1683128))

(declare-fun res!1122852 () Bool)

(assert (=> d!763690 (=> (not res!1122852) (not e!1683128))))

(declare-fun content!4359 (List!30800) (InoxSet C!15812))

(assert (=> d!763690 (= res!1122852 (= (content!4359 lt!940526) ((_ map or) (content!4359 (list!11587 (charsOf!2948 (h!36122 l!4335)))) (content!4359 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))))

(assert (=> d!763690 (= lt!940526 e!1683127)))

(declare-fun c!430471 () Bool)

(assert (=> d!763690 (= c!430471 ((_ is Nil!30700) (list!11587 (charsOf!2948 (h!36122 l!4335)))))))

(assert (=> d!763690 (= (++!7487 (list!11587 (charsOf!2948 (h!36122 l!4335))) (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)) lt!940526)))

(assert (= (and d!763690 c!430471) b!2670566))

(assert (= (and d!763690 (not c!430471)) b!2670567))

(assert (= (and d!763690 res!1122852) b!2670568))

(assert (= (and b!2670568 res!1122853) b!2670569))

(declare-fun m!3036699 () Bool)

(assert (=> b!2670568 m!3036699))

(assert (=> b!2670568 m!3036515))

(declare-fun m!3036701 () Bool)

(assert (=> b!2670568 m!3036701))

(assert (=> b!2670568 m!3036517))

(declare-fun m!3036703 () Bool)

(assert (=> b!2670568 m!3036703))

(assert (=> b!2670567 m!3036517))

(declare-fun m!3036705 () Bool)

(assert (=> b!2670567 m!3036705))

(declare-fun m!3036707 () Bool)

(assert (=> d!763690 m!3036707))

(assert (=> d!763690 m!3036515))

(declare-fun m!3036709 () Bool)

(assert (=> d!763690 m!3036709))

(assert (=> d!763690 m!3036517))

(declare-fun m!3036711 () Bool)

(assert (=> d!763690 m!3036711))

(assert (=> b!2670409 d!763690))

(declare-fun d!763692 () Bool)

(declare-fun dynLambda!13290 (Int Token!8836) Bool)

(assert (=> d!763692 (dynLambda!13290 lambda!99708 (h!36122 l!4335))))

(declare-fun lt!940529 () Unit!44917)

(declare-fun choose!15835 (List!30802 Int Token!8836) Unit!44917)

(assert (=> d!763692 (= lt!940529 (choose!15835 l!4335 lambda!99708 (h!36122 l!4335)))))

(declare-fun e!1683131 () Bool)

(assert (=> d!763692 e!1683131))

(declare-fun res!1122856 () Bool)

(assert (=> d!763692 (=> (not res!1122856) (not e!1683131))))

(assert (=> d!763692 (= res!1122856 (forall!6496 l!4335 lambda!99708))))

(assert (=> d!763692 (= (forallContained!1025 l!4335 lambda!99708 (h!36122 l!4335)) lt!940529)))

(declare-fun b!2670572 () Bool)

(assert (=> b!2670572 (= e!1683131 (contains!5891 l!4335 (h!36122 l!4335)))))

(assert (= (and d!763692 res!1122856) b!2670572))

(declare-fun b_lambda!81307 () Bool)

(assert (=> (not b_lambda!81307) (not d!763692)))

(declare-fun m!3036713 () Bool)

(assert (=> d!763692 m!3036713))

(declare-fun m!3036715 () Bool)

(assert (=> d!763692 m!3036715))

(declare-fun m!3036717 () Bool)

(assert (=> d!763692 m!3036717))

(assert (=> b!2670572 m!3036533))

(assert (=> b!2670409 d!763692))

(declare-fun d!763694 () Bool)

(assert (=> d!763694 true))

(declare-fun lt!940534 () Bool)

(declare-fun lambda!99716 () Int)

(declare-fun forall!6498 (List!30801 Int) Bool)

(assert (=> d!763694 (= lt!940534 (forall!6498 rules!1712 lambda!99716))))

(declare-fun e!1683139 () Bool)

(assert (=> d!763694 (= lt!940534 e!1683139)))

(declare-fun res!1122861 () Bool)

(assert (=> d!763694 (=> res!1122861 e!1683139)))

(assert (=> d!763694 (= res!1122861 (not ((_ is Cons!30701) rules!1712)))))

(assert (=> d!763694 (= (rulesValidInductive!1629 thiss!14116 rules!1712) lt!940534)))

(declare-fun b!2670581 () Bool)

(declare-fun e!1683138 () Bool)

(assert (=> b!2670581 (= e!1683139 e!1683138)))

(declare-fun res!1122862 () Bool)

(assert (=> b!2670581 (=> (not res!1122862) (not e!1683138))))

(declare-fun ruleValid!1551 (LexerInterface!4280 Rule!9166) Bool)

(assert (=> b!2670581 (= res!1122862 (ruleValid!1551 thiss!14116 (h!36121 rules!1712)))))

(declare-fun b!2670582 () Bool)

(assert (=> b!2670582 (= e!1683138 (rulesValidInductive!1629 thiss!14116 (t!223170 rules!1712)))))

(assert (= (and d!763694 (not res!1122861)) b!2670581))

(assert (= (and b!2670581 res!1122862) b!2670582))

(declare-fun m!3036719 () Bool)

(assert (=> d!763694 m!3036719))

(declare-fun m!3036721 () Bool)

(assert (=> b!2670581 m!3036721))

(declare-fun m!3036723 () Bool)

(assert (=> b!2670582 m!3036723))

(assert (=> b!2670409 d!763694))

(declare-fun d!763696 () Bool)

(declare-fun list!11591 (Conc!9597) List!30800)

(assert (=> d!763696 (= (list!11587 (charsOf!2948 (h!36122 l!4335))) (list!11591 (c!430458 (charsOf!2948 (h!36122 l!4335)))))))

(declare-fun bs!479426 () Bool)

(assert (= bs!479426 d!763696))

(declare-fun m!3036725 () Bool)

(assert (=> bs!479426 m!3036725))

(assert (=> b!2670409 d!763696))

(declare-fun bs!479434 () Bool)

(declare-fun b!2670710 () Bool)

(assert (= bs!479434 (and b!2670710 b!2670413)))

(declare-fun lambda!99723 () Int)

(assert (=> bs!479434 (not (= lambda!99723 lambda!99707))))

(declare-fun bs!479435 () Bool)

(assert (= bs!479435 (and b!2670710 b!2670409)))

(assert (=> bs!479435 (= lambda!99723 lambda!99708)))

(declare-fun b!2670713 () Bool)

(declare-fun e!1683227 () Bool)

(assert (=> b!2670713 (= e!1683227 true)))

(declare-fun b!2670712 () Bool)

(declare-fun e!1683226 () Bool)

(assert (=> b!2670712 (= e!1683226 e!1683227)))

(declare-fun b!2670711 () Bool)

(declare-fun e!1683225 () Bool)

(assert (=> b!2670711 (= e!1683225 e!1683226)))

(assert (=> b!2670710 e!1683225))

(assert (= b!2670712 b!2670713))

(assert (= b!2670711 b!2670712))

(assert (= (and b!2670710 ((_ is Cons!30701) rules!1712)) b!2670711))

(assert (=> b!2670713 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99723))))

(assert (=> b!2670713 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99723))))

(assert (=> b!2670710 true))

(declare-fun b!2670701 () Bool)

(declare-fun e!1683220 () List!30800)

(declare-fun lt!940568 () List!30800)

(assert (=> b!2670701 (= e!1683220 lt!940568)))

(declare-fun bm!172443 () Bool)

(declare-fun call!172452 () BalanceConc!18808)

(assert (=> bm!172443 (= call!172452 (charsOf!2948 (h!36122 (t!223171 l!4335))))))

(declare-fun b!2670702 () Bool)

(declare-fun e!1683224 () List!30800)

(declare-fun call!172450 () List!30800)

(assert (=> b!2670702 (= e!1683224 (++!7487 call!172450 lt!940568))))

(declare-fun b!2670703 () Bool)

(declare-fun e!1683222 () BalanceConc!18808)

(assert (=> b!2670703 (= e!1683222 call!172452)))

(declare-fun b!2670704 () Bool)

(declare-fun c!430497 () Bool)

(declare-datatypes ((tuple2!30182 0))(
  ( (tuple2!30183 (_1!17633 Token!8836) (_2!17633 List!30800)) )
))
(declare-datatypes ((Option!6074 0))(
  ( (None!6073) (Some!6073 (v!32604 tuple2!30182)) )
))
(declare-fun lt!940569 () Option!6074)

(assert (=> b!2670704 (= c!430497 (and ((_ is Some!6073) lt!940569) (not (= (_1!17633 (v!32604 lt!940569)) (h!36122 (t!223171 l!4335))))))))

(declare-fun e!1683223 () List!30800)

(assert (=> b!2670704 (= e!1683223 e!1683224)))

(declare-fun b!2670705 () Bool)

(declare-fun call!172451 () BalanceConc!18808)

(assert (=> b!2670705 (= e!1683220 (list!11587 call!172451))))

(declare-fun b!2670706 () Bool)

(assert (=> b!2670706 (= e!1683223 call!172450)))

(declare-fun call!172449 () List!30800)

(declare-fun c!430498 () Bool)

(declare-fun bm!172445 () Bool)

(assert (=> bm!172445 (= call!172449 (list!11587 (ite c!430498 call!172452 e!1683222)))))

(declare-fun b!2670707 () Bool)

(assert (=> b!2670707 (= e!1683222 call!172451)))

(declare-fun b!2670708 () Bool)

(declare-fun e!1683221 () List!30800)

(assert (=> b!2670708 (= e!1683221 Nil!30700)))

(declare-fun d!763698 () Bool)

(declare-fun c!430499 () Bool)

(assert (=> d!763698 (= c!430499 ((_ is Cons!30702) (t!223171 l!4335)))))

(assert (=> d!763698 (= (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152) e!1683221)))

(declare-fun bm!172444 () Bool)

(declare-fun c!430501 () Bool)

(assert (=> bm!172444 (= c!430501 c!430498)))

(declare-fun call!172448 () List!30800)

(assert (=> bm!172444 (= call!172450 (++!7487 (ite c!430498 call!172449 call!172448) e!1683220))))

(declare-fun bm!172446 () Bool)

(assert (=> bm!172446 (= call!172451 (charsOf!2948 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335)))))))

(declare-fun b!2670709 () Bool)

(assert (=> b!2670709 (= e!1683224 Nil!30700)))

(declare-fun printTailRec!1139 (LexerInterface!4280 BalanceConc!18812 Int BalanceConc!18808) BalanceConc!18808)

(assert (=> b!2670709 (= (print!1663 thiss!14116 (singletonSeq!2082 (h!36122 (t!223171 l!4335)))) (printTailRec!1139 thiss!14116 (singletonSeq!2082 (h!36122 (t!223171 l!4335))) 0 (BalanceConc!18809 Empty!9597)))))

(declare-fun lt!940567 () Unit!44917)

(declare-fun Unit!44921 () Unit!44917)

(assert (=> b!2670709 (= lt!940567 Unit!44921)))

(declare-fun lt!940570 () Unit!44917)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!815 (LexerInterface!4280 List!30801 List!30800 List!30800) Unit!44917)

(assert (=> b!2670709 (= lt!940570 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!815 thiss!14116 rules!1712 call!172448 lt!940568))))

(assert (=> b!2670709 false))

(declare-fun lt!940571 () Unit!44917)

(declare-fun Unit!44922 () Unit!44917)

(assert (=> b!2670709 (= lt!940571 Unit!44922)))

(assert (=> b!2670710 (= e!1683221 e!1683223)))

(declare-fun lt!940566 () Unit!44917)

(assert (=> b!2670710 (= lt!940566 (forallContained!1025 (t!223171 l!4335) lambda!99723 (h!36122 (t!223171 l!4335))))))

(assert (=> b!2670710 (= lt!940568 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 (t!223171 l!4335)) separatorToken!152))))

(declare-fun maxPrefix!2322 (LexerInterface!4280 List!30801 List!30800) Option!6074)

(assert (=> b!2670710 (= lt!940569 (maxPrefix!2322 thiss!14116 rules!1712 (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568)))))

(assert (=> b!2670710 (= c!430498 (and ((_ is Some!6073) lt!940569) (= (_1!17633 (v!32604 lt!940569)) (h!36122 (t!223171 l!4335)))))))

(declare-fun bm!172447 () Bool)

(assert (=> bm!172447 (= call!172448 call!172449)))

(declare-fun c!430500 () Bool)

(assert (=> bm!172447 (= c!430500 c!430497)))

(assert (= (and d!763698 c!430499) b!2670710))

(assert (= (and d!763698 (not c!430499)) b!2670708))

(assert (= (and b!2670710 c!430498) b!2670706))

(assert (= (and b!2670710 (not c!430498)) b!2670704))

(assert (= (and b!2670704 c!430497) b!2670702))

(assert (= (and b!2670704 (not c!430497)) b!2670709))

(assert (= (or b!2670702 b!2670709) bm!172446))

(assert (= (or b!2670702 b!2670709) bm!172447))

(assert (= (and bm!172447 c!430500) b!2670703))

(assert (= (and bm!172447 (not c!430500)) b!2670707))

(assert (= (or b!2670706 b!2670703) bm!172443))

(assert (= (or b!2670706 bm!172447) bm!172445))

(assert (= (or b!2670706 b!2670702) bm!172444))

(assert (= (and bm!172444 c!430501) b!2670701))

(assert (= (and bm!172444 (not c!430501)) b!2670705))

(declare-fun m!3036785 () Bool)

(assert (=> bm!172444 m!3036785))

(declare-fun m!3036787 () Bool)

(assert (=> b!2670705 m!3036787))

(declare-fun m!3036789 () Bool)

(assert (=> b!2670709 m!3036789))

(assert (=> b!2670709 m!3036789))

(declare-fun m!3036791 () Bool)

(assert (=> b!2670709 m!3036791))

(assert (=> b!2670709 m!3036789))

(declare-fun m!3036793 () Bool)

(assert (=> b!2670709 m!3036793))

(declare-fun m!3036795 () Bool)

(assert (=> b!2670709 m!3036795))

(declare-fun m!3036797 () Bool)

(assert (=> bm!172445 m!3036797))

(declare-fun m!3036799 () Bool)

(assert (=> bm!172446 m!3036799))

(declare-fun m!3036801 () Bool)

(assert (=> b!2670710 m!3036801))

(declare-fun m!3036803 () Bool)

(assert (=> b!2670710 m!3036803))

(declare-fun m!3036805 () Bool)

(assert (=> b!2670710 m!3036805))

(assert (=> b!2670710 m!3036803))

(declare-fun m!3036807 () Bool)

(assert (=> b!2670710 m!3036807))

(declare-fun m!3036809 () Bool)

(assert (=> b!2670710 m!3036809))

(declare-fun m!3036811 () Bool)

(assert (=> b!2670710 m!3036811))

(assert (=> b!2670710 m!3036809))

(assert (=> b!2670710 m!3036801))

(declare-fun m!3036813 () Bool)

(assert (=> b!2670702 m!3036813))

(assert (=> bm!172443 m!3036809))

(assert (=> b!2670409 d!763698))

(declare-fun d!763710 () Bool)

(declare-fun res!1122877 () Bool)

(declare-fun e!1683230 () Bool)

(assert (=> d!763710 (=> (not res!1122877) (not e!1683230))))

(declare-fun isEmpty!17563 (List!30800) Bool)

(assert (=> d!763710 (= res!1122877 (not (isEmpty!17563 (originalCharacters!5449 separatorToken!152))))))

(assert (=> d!763710 (= (inv!41705 separatorToken!152) e!1683230)))

(declare-fun b!2670718 () Bool)

(declare-fun res!1122878 () Bool)

(assert (=> b!2670718 (=> (not res!1122878) (not e!1683230))))

(assert (=> b!2670718 (= res!1122878 (= (originalCharacters!5449 separatorToken!152) (list!11587 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))))))

(declare-fun b!2670719 () Bool)

(assert (=> b!2670719 (= e!1683230 (= (size!23745 separatorToken!152) (size!23749 (originalCharacters!5449 separatorToken!152))))))

(assert (= (and d!763710 res!1122877) b!2670718))

(assert (= (and b!2670718 res!1122878) b!2670719))

(declare-fun b_lambda!81319 () Bool)

(assert (=> (not b_lambda!81319) (not b!2670718)))

(declare-fun tb!149643 () Bool)

(declare-fun t!223207 () Bool)

(assert (=> (and b!2670424 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) t!223207) tb!149643))

(declare-fun b!2670720 () Bool)

(declare-fun e!1683231 () Bool)

(declare-fun tp!844310 () Bool)

(assert (=> b!2670720 (= e!1683231 (and (inv!41708 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))) tp!844310))))

(declare-fun result!184834 () Bool)

(assert (=> tb!149643 (= result!184834 (and (inv!41709 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))) e!1683231))))

(assert (= tb!149643 b!2670720))

(declare-fun m!3036815 () Bool)

(assert (=> b!2670720 m!3036815))

(declare-fun m!3036817 () Bool)

(assert (=> tb!149643 m!3036817))

(assert (=> b!2670718 t!223207))

(declare-fun b_and!197133 () Bool)

(assert (= b_and!197119 (and (=> t!223207 result!184834) b_and!197133)))

(declare-fun t!223209 () Bool)

(declare-fun tb!149645 () Bool)

(assert (=> (and b!2670415 (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) t!223209) tb!149645))

(declare-fun result!184836 () Bool)

(assert (= result!184836 result!184834))

(assert (=> b!2670718 t!223209))

(declare-fun b_and!197135 () Bool)

(assert (= b_and!197121 (and (=> t!223209 result!184836) b_and!197135)))

(declare-fun t!223211 () Bool)

(declare-fun tb!149647 () Bool)

(assert (=> (and b!2670419 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) t!223211) tb!149647))

(declare-fun result!184838 () Bool)

(assert (= result!184838 result!184834))

(assert (=> b!2670718 t!223211))

(declare-fun b_and!197137 () Bool)

(assert (= b_and!197123 (and (=> t!223211 result!184838) b_and!197137)))

(declare-fun m!3036819 () Bool)

(assert (=> d!763710 m!3036819))

(declare-fun m!3036821 () Bool)

(assert (=> b!2670718 m!3036821))

(assert (=> b!2670718 m!3036821))

(declare-fun m!3036823 () Bool)

(assert (=> b!2670718 m!3036823))

(declare-fun m!3036825 () Bool)

(assert (=> b!2670719 m!3036825))

(assert (=> start!259710 d!763710))

(declare-fun b!2670731 () Bool)

(declare-fun e!1683238 () Bool)

(declare-fun inv!16 (TokenValue!4905) Bool)

(assert (=> b!2670731 (= e!1683238 (inv!16 (value!151070 separatorToken!152)))))

(declare-fun b!2670732 () Bool)

(declare-fun e!1683240 () Bool)

(declare-fun inv!17 (TokenValue!4905) Bool)

(assert (=> b!2670732 (= e!1683240 (inv!17 (value!151070 separatorToken!152)))))

(declare-fun d!763712 () Bool)

(declare-fun c!430506 () Bool)

(assert (=> d!763712 (= c!430506 ((_ is IntegerValue!14715) (value!151070 separatorToken!152)))))

(assert (=> d!763712 (= (inv!21 (value!151070 separatorToken!152)) e!1683238)))

(declare-fun b!2670733 () Bool)

(declare-fun res!1122881 () Bool)

(declare-fun e!1683239 () Bool)

(assert (=> b!2670733 (=> res!1122881 e!1683239)))

(assert (=> b!2670733 (= res!1122881 (not ((_ is IntegerValue!14717) (value!151070 separatorToken!152))))))

(assert (=> b!2670733 (= e!1683240 e!1683239)))

(declare-fun b!2670734 () Bool)

(declare-fun inv!15 (TokenValue!4905) Bool)

(assert (=> b!2670734 (= e!1683239 (inv!15 (value!151070 separatorToken!152)))))

(declare-fun b!2670735 () Bool)

(assert (=> b!2670735 (= e!1683238 e!1683240)))

(declare-fun c!430507 () Bool)

(assert (=> b!2670735 (= c!430507 ((_ is IntegerValue!14716) (value!151070 separatorToken!152)))))

(assert (= (and d!763712 c!430506) b!2670731))

(assert (= (and d!763712 (not c!430506)) b!2670735))

(assert (= (and b!2670735 c!430507) b!2670732))

(assert (= (and b!2670735 (not c!430507)) b!2670733))

(assert (= (and b!2670733 (not res!1122881)) b!2670734))

(declare-fun m!3036827 () Bool)

(assert (=> b!2670731 m!3036827))

(declare-fun m!3036829 () Bool)

(assert (=> b!2670732 m!3036829))

(declare-fun m!3036831 () Bool)

(assert (=> b!2670734 m!3036831))

(assert (=> b!2670423 d!763712))

(declare-fun d!763714 () Bool)

(declare-fun res!1122886 () Bool)

(declare-fun e!1683245 () Bool)

(assert (=> d!763714 (=> res!1122886 e!1683245)))

(assert (=> d!763714 (= res!1122886 ((_ is Nil!30702) l!4335))))

(assert (=> d!763714 (= (forall!6496 l!4335 lambda!99707) e!1683245)))

(declare-fun b!2670740 () Bool)

(declare-fun e!1683246 () Bool)

(assert (=> b!2670740 (= e!1683245 e!1683246)))

(declare-fun res!1122887 () Bool)

(assert (=> b!2670740 (=> (not res!1122887) (not e!1683246))))

(assert (=> b!2670740 (= res!1122887 (dynLambda!13290 lambda!99707 (h!36122 l!4335)))))

(declare-fun b!2670741 () Bool)

(assert (=> b!2670741 (= e!1683246 (forall!6496 (t!223171 l!4335) lambda!99707))))

(assert (= (and d!763714 (not res!1122886)) b!2670740))

(assert (= (and b!2670740 res!1122887) b!2670741))

(declare-fun b_lambda!81321 () Bool)

(assert (=> (not b_lambda!81321) (not b!2670740)))

(declare-fun m!3036833 () Bool)

(assert (=> b!2670740 m!3036833))

(declare-fun m!3036835 () Bool)

(assert (=> b!2670741 m!3036835))

(assert (=> b!2670413 d!763714))

(declare-fun b!2670742 () Bool)

(declare-fun e!1683247 () Bool)

(assert (=> b!2670742 (= e!1683247 (inv!16 (value!151070 (h!36122 l!4335))))))

(declare-fun b!2670743 () Bool)

(declare-fun e!1683249 () Bool)

(assert (=> b!2670743 (= e!1683249 (inv!17 (value!151070 (h!36122 l!4335))))))

(declare-fun d!763716 () Bool)

(declare-fun c!430508 () Bool)

(assert (=> d!763716 (= c!430508 ((_ is IntegerValue!14715) (value!151070 (h!36122 l!4335))))))

(assert (=> d!763716 (= (inv!21 (value!151070 (h!36122 l!4335))) e!1683247)))

(declare-fun b!2670744 () Bool)

(declare-fun res!1122888 () Bool)

(declare-fun e!1683248 () Bool)

(assert (=> b!2670744 (=> res!1122888 e!1683248)))

(assert (=> b!2670744 (= res!1122888 (not ((_ is IntegerValue!14717) (value!151070 (h!36122 l!4335)))))))

(assert (=> b!2670744 (= e!1683249 e!1683248)))

(declare-fun b!2670745 () Bool)

(assert (=> b!2670745 (= e!1683248 (inv!15 (value!151070 (h!36122 l!4335))))))

(declare-fun b!2670746 () Bool)

(assert (=> b!2670746 (= e!1683247 e!1683249)))

(declare-fun c!430509 () Bool)

(assert (=> b!2670746 (= c!430509 ((_ is IntegerValue!14716) (value!151070 (h!36122 l!4335))))))

(assert (= (and d!763716 c!430508) b!2670742))

(assert (= (and d!763716 (not c!430508)) b!2670746))

(assert (= (and b!2670746 c!430509) b!2670743))

(assert (= (and b!2670746 (not c!430509)) b!2670744))

(assert (= (and b!2670744 (not res!1122888)) b!2670745))

(declare-fun m!3036837 () Bool)

(assert (=> b!2670742 m!3036837))

(declare-fun m!3036839 () Bool)

(assert (=> b!2670743 m!3036839))

(declare-fun m!3036841 () Bool)

(assert (=> b!2670745 m!3036841))

(assert (=> b!2670411 d!763716))

(declare-fun bs!479436 () Bool)

(declare-fun d!763718 () Bool)

(assert (= bs!479436 (and d!763718 b!2670413)))

(declare-fun lambda!99726 () Int)

(assert (=> bs!479436 (not (= lambda!99726 lambda!99707))))

(declare-fun bs!479437 () Bool)

(assert (= bs!479437 (and d!763718 b!2670409)))

(assert (=> bs!479437 (= lambda!99726 lambda!99708)))

(declare-fun bs!479438 () Bool)

(assert (= bs!479438 (and d!763718 b!2670710)))

(assert (=> bs!479438 (= lambda!99726 lambda!99723)))

(declare-fun b!2670755 () Bool)

(declare-fun e!1683258 () Bool)

(assert (=> b!2670755 (= e!1683258 true)))

(declare-fun b!2670754 () Bool)

(declare-fun e!1683257 () Bool)

(assert (=> b!2670754 (= e!1683257 e!1683258)))

(declare-fun b!2670753 () Bool)

(declare-fun e!1683256 () Bool)

(assert (=> b!2670753 (= e!1683256 e!1683257)))

(assert (=> d!763718 e!1683256))

(assert (= b!2670754 b!2670755))

(assert (= b!2670753 b!2670754))

(assert (= (and d!763718 ((_ is Cons!30701) rules!1712)) b!2670753))

(assert (=> b!2670755 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99726))))

(assert (=> b!2670755 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99726))))

(assert (=> d!763718 true))

(declare-fun lt!940574 () Bool)

(assert (=> d!763718 (= lt!940574 (forall!6496 l!4335 lambda!99726))))

(declare-fun e!1683254 () Bool)

(assert (=> d!763718 (= lt!940574 e!1683254)))

(declare-fun res!1122894 () Bool)

(assert (=> d!763718 (=> res!1122894 e!1683254)))

(assert (=> d!763718 (= res!1122894 (not ((_ is Cons!30702) l!4335)))))

(assert (=> d!763718 (not (isEmpty!17559 rules!1712))))

(assert (=> d!763718 (= (rulesProduceEachTokenIndividuallyList!1502 thiss!14116 rules!1712 l!4335) lt!940574)))

(declare-fun b!2670751 () Bool)

(declare-fun e!1683255 () Bool)

(assert (=> b!2670751 (= e!1683254 e!1683255)))

(declare-fun res!1122893 () Bool)

(assert (=> b!2670751 (=> (not res!1122893) (not e!1683255))))

(assert (=> b!2670751 (= res!1122893 (rulesProduceIndividualToken!1992 thiss!14116 rules!1712 (h!36122 l!4335)))))

(declare-fun b!2670752 () Bool)

(assert (=> b!2670752 (= e!1683255 (rulesProduceEachTokenIndividuallyList!1502 thiss!14116 rules!1712 (t!223171 l!4335)))))

(assert (= (and d!763718 (not res!1122894)) b!2670751))

(assert (= (and b!2670751 res!1122893) b!2670752))

(declare-fun m!3036843 () Bool)

(assert (=> d!763718 m!3036843))

(assert (=> d!763718 m!3036537))

(declare-fun m!3036845 () Bool)

(assert (=> b!2670751 m!3036845))

(declare-fun m!3036847 () Bool)

(assert (=> b!2670752 m!3036847))

(assert (=> b!2670422 d!763718))

(declare-fun d!763720 () Bool)

(assert (=> d!763720 (= (inv!41701 (tag!5185 (rule!7089 separatorToken!152))) (= (mod (str.len (value!151069 (tag!5185 (rule!7089 separatorToken!152)))) 2) 0))))

(assert (=> b!2670426 d!763720))

(declare-fun d!763722 () Bool)

(declare-fun res!1122895 () Bool)

(declare-fun e!1683259 () Bool)

(assert (=> d!763722 (=> (not res!1122895) (not e!1683259))))

(assert (=> d!763722 (= res!1122895 (semiInverseModEq!1940 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152)))))))

(assert (=> d!763722 (= (inv!41704 (transformation!4683 (rule!7089 separatorToken!152))) e!1683259)))

(declare-fun b!2670756 () Bool)

(assert (=> b!2670756 (= e!1683259 (equivClasses!1841 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152)))))))

(assert (= (and d!763722 res!1122895) b!2670756))

(declare-fun m!3036849 () Bool)

(assert (=> d!763722 m!3036849))

(declare-fun m!3036851 () Bool)

(assert (=> b!2670756 m!3036851))

(assert (=> b!2670426 d!763722))

(declare-fun d!763724 () Bool)

(assert (=> d!763724 (= (inv!41701 (tag!5185 (rule!7089 (h!36122 l!4335)))) (= (mod (str.len (value!151069 (tag!5185 (rule!7089 (h!36122 l!4335))))) 2) 0))))

(assert (=> b!2670414 d!763724))

(declare-fun d!763726 () Bool)

(declare-fun res!1122896 () Bool)

(declare-fun e!1683260 () Bool)

(assert (=> d!763726 (=> (not res!1122896) (not e!1683260))))

(assert (=> d!763726 (= res!1122896 (semiInverseModEq!1940 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335))))))))

(assert (=> d!763726 (= (inv!41704 (transformation!4683 (rule!7089 (h!36122 l!4335)))) e!1683260)))

(declare-fun b!2670757 () Bool)

(assert (=> b!2670757 (= e!1683260 (equivClasses!1841 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335))))))))

(assert (= (and d!763726 res!1122896) b!2670757))

(declare-fun m!3036853 () Bool)

(assert (=> d!763726 m!3036853))

(declare-fun m!3036855 () Bool)

(assert (=> b!2670757 m!3036855))

(assert (=> b!2670414 d!763726))

(declare-fun d!763728 () Bool)

(declare-fun res!1122897 () Bool)

(declare-fun e!1683261 () Bool)

(assert (=> d!763728 (=> (not res!1122897) (not e!1683261))))

(assert (=> d!763728 (= res!1122897 (not (isEmpty!17563 (originalCharacters!5449 (h!36122 l!4335)))))))

(assert (=> d!763728 (= (inv!41705 (h!36122 l!4335)) e!1683261)))

(declare-fun b!2670758 () Bool)

(declare-fun res!1122898 () Bool)

(assert (=> b!2670758 (=> (not res!1122898) (not e!1683261))))

(assert (=> b!2670758 (= res!1122898 (= (originalCharacters!5449 (h!36122 l!4335)) (list!11587 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))))))

(declare-fun b!2670759 () Bool)

(assert (=> b!2670759 (= e!1683261 (= (size!23745 (h!36122 l!4335)) (size!23749 (originalCharacters!5449 (h!36122 l!4335)))))))

(assert (= (and d!763728 res!1122897) b!2670758))

(assert (= (and b!2670758 res!1122898) b!2670759))

(declare-fun b_lambda!81323 () Bool)

(assert (=> (not b_lambda!81323) (not b!2670758)))

(assert (=> b!2670758 t!223187))

(declare-fun b_and!197139 () Bool)

(assert (= b_and!197133 (and (=> t!223187 result!184810) b_and!197139)))

(assert (=> b!2670758 t!223189))

(declare-fun b_and!197141 () Bool)

(assert (= b_and!197135 (and (=> t!223189 result!184814) b_and!197141)))

(assert (=> b!2670758 t!223191))

(declare-fun b_and!197143 () Bool)

(assert (= b_and!197137 (and (=> t!223191 result!184816) b_and!197143)))

(declare-fun m!3036857 () Bool)

(assert (=> d!763728 m!3036857))

(assert (=> b!2670758 m!3036697))

(assert (=> b!2670758 m!3036697))

(declare-fun m!3036859 () Bool)

(assert (=> b!2670758 m!3036859))

(declare-fun m!3036861 () Bool)

(assert (=> b!2670759 m!3036861))

(assert (=> b!2670425 d!763728))

(declare-fun b!2670770 () Bool)

(declare-fun b_free!75077 () Bool)

(declare-fun b_next!75781 () Bool)

(assert (=> b!2670770 (= b_free!75077 (not b_next!75781))))

(declare-fun tp!844321 () Bool)

(declare-fun b_and!197145 () Bool)

(assert (=> b!2670770 (= tp!844321 b_and!197145)))

(declare-fun b_free!75079 () Bool)

(declare-fun b_next!75783 () Bool)

(assert (=> b!2670770 (= b_free!75079 (not b_next!75783))))

(declare-fun tb!149649 () Bool)

(declare-fun t!223216 () Bool)

(assert (=> (and b!2670770 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335))))) t!223216) tb!149649))

(declare-fun result!184842 () Bool)

(assert (= result!184842 result!184810))

(assert (=> d!763688 t!223216))

(declare-fun t!223218 () Bool)

(declare-fun tb!149651 () Bool)

(assert (=> (and b!2670770 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) t!223218) tb!149651))

(declare-fun result!184844 () Bool)

(assert (= result!184844 result!184834))

(assert (=> b!2670718 t!223218))

(assert (=> b!2670758 t!223216))

(declare-fun tp!844320 () Bool)

(declare-fun b_and!197147 () Bool)

(assert (=> b!2670770 (= tp!844320 (and (=> t!223216 result!184842) (=> t!223218 result!184844) b_and!197147))))

(declare-fun e!1683273 () Bool)

(assert (=> b!2670770 (= e!1683273 (and tp!844321 tp!844320))))

(declare-fun b!2670769 () Bool)

(declare-fun tp!844319 () Bool)

(declare-fun e!1683271 () Bool)

(assert (=> b!2670769 (= e!1683271 (and tp!844319 (inv!41701 (tag!5185 (h!36121 (t!223170 rules!1712)))) (inv!41704 (transformation!4683 (h!36121 (t!223170 rules!1712)))) e!1683273))))

(declare-fun b!2670768 () Bool)

(declare-fun e!1683270 () Bool)

(declare-fun tp!844322 () Bool)

(assert (=> b!2670768 (= e!1683270 (and e!1683271 tp!844322))))

(assert (=> b!2670418 (= tp!844235 e!1683270)))

(assert (= b!2670769 b!2670770))

(assert (= b!2670768 b!2670769))

(assert (= (and b!2670418 ((_ is Cons!30701) (t!223170 rules!1712))) b!2670768))

(declare-fun m!3036863 () Bool)

(assert (=> b!2670769 m!3036863))

(declare-fun m!3036865 () Bool)

(assert (=> b!2670769 m!3036865))

(declare-fun b!2670781 () Bool)

(declare-fun e!1683276 () Bool)

(declare-fun tp_is_empty!13809 () Bool)

(assert (=> b!2670781 (= e!1683276 tp_is_empty!13809)))

(declare-fun b!2670782 () Bool)

(declare-fun tp!844334 () Bool)

(declare-fun tp!844337 () Bool)

(assert (=> b!2670782 (= e!1683276 (and tp!844334 tp!844337))))

(assert (=> b!2670427 (= tp!844243 e!1683276)))

(declare-fun b!2670783 () Bool)

(declare-fun tp!844336 () Bool)

(assert (=> b!2670783 (= e!1683276 tp!844336)))

(declare-fun b!2670784 () Bool)

(declare-fun tp!844335 () Bool)

(declare-fun tp!844333 () Bool)

(assert (=> b!2670784 (= e!1683276 (and tp!844335 tp!844333))))

(assert (= (and b!2670427 ((_ is ElementMatch!7827) (regex!4683 (h!36121 rules!1712)))) b!2670781))

(assert (= (and b!2670427 ((_ is Concat!12733) (regex!4683 (h!36121 rules!1712)))) b!2670782))

(assert (= (and b!2670427 ((_ is Star!7827) (regex!4683 (h!36121 rules!1712)))) b!2670783))

(assert (= (and b!2670427 ((_ is Union!7827) (regex!4683 (h!36121 rules!1712)))) b!2670784))

(declare-fun b!2670787 () Bool)

(declare-fun e!1683279 () Bool)

(assert (=> b!2670787 (= e!1683279 true)))

(declare-fun b!2670786 () Bool)

(declare-fun e!1683278 () Bool)

(assert (=> b!2670786 (= e!1683278 e!1683279)))

(declare-fun b!2670785 () Bool)

(declare-fun e!1683277 () Bool)

(assert (=> b!2670785 (= e!1683277 e!1683278)))

(assert (=> b!2670437 e!1683277))

(assert (= b!2670786 b!2670787))

(assert (= b!2670785 b!2670786))

(assert (= (and b!2670437 ((_ is Cons!30701) (t!223170 rules!1712))) b!2670785))

(assert (=> b!2670787 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 (t!223170 rules!1712))))) (dynLambda!13285 order!16841 lambda!99708))))

(assert (=> b!2670787 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712))))) (dynLambda!13285 order!16841 lambda!99708))))

(declare-fun b!2670792 () Bool)

(declare-fun e!1683282 () Bool)

(declare-fun tp!844340 () Bool)

(assert (=> b!2670792 (= e!1683282 (and tp_is_empty!13809 tp!844340))))

(assert (=> b!2670423 (= tp!844244 e!1683282)))

(assert (= (and b!2670423 ((_ is Cons!30700) (originalCharacters!5449 separatorToken!152))) b!2670792))

(declare-fun b!2670793 () Bool)

(declare-fun e!1683283 () Bool)

(declare-fun tp!844341 () Bool)

(assert (=> b!2670793 (= e!1683283 (and tp_is_empty!13809 tp!844341))))

(assert (=> b!2670411 (= tp!844246 e!1683283)))

(assert (= (and b!2670411 ((_ is Cons!30700) (originalCharacters!5449 (h!36122 l!4335)))) b!2670793))

(declare-fun b!2670794 () Bool)

(declare-fun e!1683284 () Bool)

(assert (=> b!2670794 (= e!1683284 tp_is_empty!13809)))

(declare-fun b!2670795 () Bool)

(declare-fun tp!844343 () Bool)

(declare-fun tp!844346 () Bool)

(assert (=> b!2670795 (= e!1683284 (and tp!844343 tp!844346))))

(assert (=> b!2670426 (= tp!844234 e!1683284)))

(declare-fun b!2670796 () Bool)

(declare-fun tp!844345 () Bool)

(assert (=> b!2670796 (= e!1683284 tp!844345)))

(declare-fun b!2670797 () Bool)

(declare-fun tp!844344 () Bool)

(declare-fun tp!844342 () Bool)

(assert (=> b!2670797 (= e!1683284 (and tp!844344 tp!844342))))

(assert (= (and b!2670426 ((_ is ElementMatch!7827) (regex!4683 (rule!7089 separatorToken!152)))) b!2670794))

(assert (= (and b!2670426 ((_ is Concat!12733) (regex!4683 (rule!7089 separatorToken!152)))) b!2670795))

(assert (= (and b!2670426 ((_ is Star!7827) (regex!4683 (rule!7089 separatorToken!152)))) b!2670796))

(assert (= (and b!2670426 ((_ is Union!7827) (regex!4683 (rule!7089 separatorToken!152)))) b!2670797))

(declare-fun b!2670798 () Bool)

(declare-fun e!1683285 () Bool)

(assert (=> b!2670798 (= e!1683285 tp_is_empty!13809)))

(declare-fun b!2670799 () Bool)

(declare-fun tp!844348 () Bool)

(declare-fun tp!844351 () Bool)

(assert (=> b!2670799 (= e!1683285 (and tp!844348 tp!844351))))

(assert (=> b!2670414 (= tp!844239 e!1683285)))

(declare-fun b!2670800 () Bool)

(declare-fun tp!844350 () Bool)

(assert (=> b!2670800 (= e!1683285 tp!844350)))

(declare-fun b!2670801 () Bool)

(declare-fun tp!844349 () Bool)

(declare-fun tp!844347 () Bool)

(assert (=> b!2670801 (= e!1683285 (and tp!844349 tp!844347))))

(assert (= (and b!2670414 ((_ is ElementMatch!7827) (regex!4683 (rule!7089 (h!36122 l!4335))))) b!2670798))

(assert (= (and b!2670414 ((_ is Concat!12733) (regex!4683 (rule!7089 (h!36122 l!4335))))) b!2670799))

(assert (= (and b!2670414 ((_ is Star!7827) (regex!4683 (rule!7089 (h!36122 l!4335))))) b!2670800))

(assert (= (and b!2670414 ((_ is Union!7827) (regex!4683 (rule!7089 (h!36122 l!4335))))) b!2670801))

(declare-fun b!2670815 () Bool)

(declare-fun b_free!75081 () Bool)

(declare-fun b_next!75785 () Bool)

(assert (=> b!2670815 (= b_free!75081 (not b_next!75785))))

(declare-fun tp!844366 () Bool)

(declare-fun b_and!197149 () Bool)

(assert (=> b!2670815 (= tp!844366 b_and!197149)))

(declare-fun b_free!75083 () Bool)

(declare-fun b_next!75787 () Bool)

(assert (=> b!2670815 (= b_free!75083 (not b_next!75787))))

(declare-fun t!223220 () Bool)

(declare-fun tb!149653 () Bool)

(assert (=> (and b!2670815 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335))))) t!223220) tb!149653))

(declare-fun result!184852 () Bool)

(assert (= result!184852 result!184810))

(assert (=> d!763688 t!223220))

(declare-fun tb!149655 () Bool)

(declare-fun t!223222 () Bool)

(assert (=> (and b!2670815 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) t!223222) tb!149655))

(declare-fun result!184854 () Bool)

(assert (= result!184854 result!184834))

(assert (=> b!2670718 t!223222))

(assert (=> b!2670758 t!223220))

(declare-fun b_and!197151 () Bool)

(declare-fun tp!844363 () Bool)

(assert (=> b!2670815 (= tp!844363 (and (=> t!223220 result!184852) (=> t!223222 result!184854) b_and!197151))))

(declare-fun e!1683298 () Bool)

(declare-fun e!1683302 () Bool)

(declare-fun tp!844362 () Bool)

(declare-fun b!2670812 () Bool)

(assert (=> b!2670812 (= e!1683298 (and (inv!41705 (h!36122 (t!223171 l!4335))) e!1683302 tp!844362))))

(declare-fun e!1683301 () Bool)

(assert (=> b!2670815 (= e!1683301 (and tp!844366 tp!844363))))

(declare-fun tp!844365 () Bool)

(declare-fun b!2670814 () Bool)

(declare-fun e!1683299 () Bool)

(assert (=> b!2670814 (= e!1683299 (and tp!844365 (inv!41701 (tag!5185 (rule!7089 (h!36122 (t!223171 l!4335))))) (inv!41704 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) e!1683301))))

(assert (=> b!2670425 (= tp!844240 e!1683298)))

(declare-fun b!2670813 () Bool)

(declare-fun tp!844364 () Bool)

(assert (=> b!2670813 (= e!1683302 (and (inv!21 (value!151070 (h!36122 (t!223171 l!4335)))) e!1683299 tp!844364))))

(assert (= b!2670814 b!2670815))

(assert (= b!2670813 b!2670814))

(assert (= b!2670812 b!2670813))

(assert (= (and b!2670425 ((_ is Cons!30702) (t!223171 l!4335))) b!2670812))

(declare-fun m!3036867 () Bool)

(assert (=> b!2670812 m!3036867))

(declare-fun m!3036869 () Bool)

(assert (=> b!2670814 m!3036869))

(declare-fun m!3036871 () Bool)

(assert (=> b!2670814 m!3036871))

(declare-fun m!3036873 () Bool)

(assert (=> b!2670813 m!3036873))

(declare-fun b_lambda!81325 () Bool)

(assert (= b_lambda!81321 (or b!2670413 b_lambda!81325)))

(declare-fun bs!479439 () Bool)

(declare-fun d!763730 () Bool)

(assert (= bs!479439 (and d!763730 b!2670413)))

(assert (=> bs!479439 (= (dynLambda!13290 lambda!99707 (h!36122 l!4335)) (not (isSeparator!4683 (rule!7089 (h!36122 l!4335)))))))

(assert (=> b!2670740 d!763730))

(declare-fun b_lambda!81327 () Bool)

(assert (= b_lambda!81323 (or (and b!2670815 b_free!75083 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))))) (and b!2670424 b_free!75059) (and b!2670419 b_free!75067 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))))) (and b!2670770 b_free!75079 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))))) (and b!2670415 b_free!75063 (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))))) b_lambda!81327)))

(declare-fun b_lambda!81329 () Bool)

(assert (= b_lambda!81307 (or b!2670409 b_lambda!81329)))

(declare-fun bs!479440 () Bool)

(declare-fun d!763732 () Bool)

(assert (= bs!479440 (and d!763732 b!2670409)))

(assert (=> bs!479440 (= (dynLambda!13290 lambda!99708 (h!36122 l!4335)) (rulesProduceIndividualToken!1992 thiss!14116 rules!1712 (h!36122 l!4335)))))

(assert (=> bs!479440 m!3036845))

(assert (=> d!763692 d!763732))

(declare-fun b_lambda!81331 () Bool)

(assert (= b_lambda!81319 (or (and b!2670419 b_free!75067 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))))) (and b!2670424 b_free!75059 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))))) (and b!2670770 b_free!75079 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))))) (and b!2670815 b_free!75083 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))))) (and b!2670415 b_free!75063) b_lambda!81331)))

(declare-fun b_lambda!81333 () Bool)

(assert (= b_lambda!81305 (or (and b!2670815 b_free!75083 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))))) (and b!2670424 b_free!75059) (and b!2670419 b_free!75067 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))))) (and b!2670770 b_free!75079 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))))) (and b!2670415 b_free!75063 (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))))) b_lambda!81333)))

(check-sat (not b!2670742) (not b!2670498) (not b!2670783) (not bm!172446) (not d!763710) (not b!2670543) b_and!197147 (not bm!172444) (not b!2670731) (not b!2670752) (not tb!149629) (not d!763690) (not d!763696) (not b_next!75769) (not b!2670768) b_and!197145 (not b!2670800) (not b!2670581) (not b_lambda!81325) (not b!2670552) (not b!2670796) (not b!2670568) (not bs!479440) b_and!197139 (not b!2670753) (not bm!172443) (not b!2670784) (not b!2670718) (not b!2670799) (not d!763684) (not b_next!75783) (not b!2670758) (not b!2670801) (not b_next!75763) (not b!2670757) tp_is_empty!13809 b_and!197093 (not b!2670720) (not b_next!75781) (not d!763726) (not b!2670797) (not b!2670751) (not b!2670719) (not d!763692) (not d!763694) (not bm!172445) (not b!2670782) b_and!197141 (not d!763686) (not b!2670745) (not b!2670711) b_and!197143 (not d!763718) (not b_next!75765) (not b!2670546) (not b!2670792) (not b!2670759) (not d!763722) (not b!2670572) (not b!2670769) b_and!197097 (not b_next!75767) (not b!2670812) (not b!2670497) (not b_lambda!81331) (not b_next!75771) b_and!197151 (not b_lambda!81333) (not d!763660) (not b!2670732) (not b!2670756) (not b_next!75787) (not b!2670492) (not b!2670567) (not b_lambda!81329) b_and!197149 b_and!197089 (not b!2670542) (not b_next!75785) (not b_lambda!81327) (not b!2670582) (not d!763728) (not b!2670793) (not b!2670795) (not b!2670541) (not b!2670705) (not d!763664) (not b!2670785) (not tb!149643) (not b_next!75761) (not d!763688) (not b!2670709) (not b!2670734) (not b!2670814) (not b!2670557) (not b!2670741) (not b!2670743) (not b!2670813) (not b!2670710) (not b!2670702))
(check-sat b_and!197147 (not b_next!75769) b_and!197145 b_and!197139 (not b_next!75783) (not b_next!75781) (not b_next!75765) b_and!197097 (not b_next!75767) (not b_next!75787) b_and!197149 (not b_next!75761) (not b_next!75763) b_and!197093 b_and!197141 b_and!197143 (not b_next!75771) b_and!197151 b_and!197089 (not b_next!75785))
(get-model)

(declare-fun bs!479441 () Bool)

(declare-fun d!763736 () Bool)

(assert (= bs!479441 (and d!763736 b!2670413)))

(declare-fun lambda!99727 () Int)

(assert (=> bs!479441 (not (= lambda!99727 lambda!99707))))

(declare-fun bs!479442 () Bool)

(assert (= bs!479442 (and d!763736 b!2670409)))

(assert (=> bs!479442 (= lambda!99727 lambda!99708)))

(declare-fun bs!479443 () Bool)

(assert (= bs!479443 (and d!763736 b!2670710)))

(assert (=> bs!479443 (= lambda!99727 lambda!99723)))

(declare-fun bs!479444 () Bool)

(assert (= bs!479444 (and d!763736 d!763718)))

(assert (=> bs!479444 (= lambda!99727 lambda!99726)))

(declare-fun b!2670820 () Bool)

(declare-fun e!1683308 () Bool)

(assert (=> b!2670820 (= e!1683308 true)))

(declare-fun b!2670819 () Bool)

(declare-fun e!1683307 () Bool)

(assert (=> b!2670819 (= e!1683307 e!1683308)))

(declare-fun b!2670818 () Bool)

(declare-fun e!1683306 () Bool)

(assert (=> b!2670818 (= e!1683306 e!1683307)))

(assert (=> d!763736 e!1683306))

(assert (= b!2670819 b!2670820))

(assert (= b!2670818 b!2670819))

(assert (= (and d!763736 ((_ is Cons!30701) rules!1712)) b!2670818))

(assert (=> b!2670820 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99727))))

(assert (=> b!2670820 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99727))))

(assert (=> d!763736 true))

(declare-fun lt!940575 () Bool)

(assert (=> d!763736 (= lt!940575 (forall!6496 (t!223171 l!4335) lambda!99727))))

(declare-fun e!1683304 () Bool)

(assert (=> d!763736 (= lt!940575 e!1683304)))

(declare-fun res!1122907 () Bool)

(assert (=> d!763736 (=> res!1122907 e!1683304)))

(assert (=> d!763736 (= res!1122907 (not ((_ is Cons!30702) (t!223171 l!4335))))))

(assert (=> d!763736 (not (isEmpty!17559 rules!1712))))

(assert (=> d!763736 (= (rulesProduceEachTokenIndividuallyList!1502 thiss!14116 rules!1712 (t!223171 l!4335)) lt!940575)))

(declare-fun b!2670816 () Bool)

(declare-fun e!1683305 () Bool)

(assert (=> b!2670816 (= e!1683304 e!1683305)))

(declare-fun res!1122906 () Bool)

(assert (=> b!2670816 (=> (not res!1122906) (not e!1683305))))

(assert (=> b!2670816 (= res!1122906 (rulesProduceIndividualToken!1992 thiss!14116 rules!1712 (h!36122 (t!223171 l!4335))))))

(declare-fun b!2670817 () Bool)

(assert (=> b!2670817 (= e!1683305 (rulesProduceEachTokenIndividuallyList!1502 thiss!14116 rules!1712 (t!223171 (t!223171 l!4335))))))

(assert (= (and d!763736 (not res!1122907)) b!2670816))

(assert (= (and b!2670816 res!1122906) b!2670817))

(declare-fun m!3036875 () Bool)

(assert (=> d!763736 m!3036875))

(assert (=> d!763736 m!3036537))

(declare-fun m!3036877 () Bool)

(assert (=> b!2670816 m!3036877))

(declare-fun m!3036879 () Bool)

(assert (=> b!2670817 m!3036879))

(assert (=> b!2670752 d!763736))

(declare-fun d!763738 () Bool)

(declare-fun lt!940581 () BalanceConc!18808)

(declare-fun printList!1179 (LexerInterface!4280 List!30802) List!30800)

(assert (=> d!763738 (= (list!11587 lt!940581) (printList!1179 thiss!14116 (list!11590 (singletonSeq!2082 (h!36122 (t!223171 l!4335))))))))

(assert (=> d!763738 (= lt!940581 (printTailRec!1139 thiss!14116 (singletonSeq!2082 (h!36122 (t!223171 l!4335))) 0 (BalanceConc!18809 Empty!9597)))))

(assert (=> d!763738 (= (print!1663 thiss!14116 (singletonSeq!2082 (h!36122 (t!223171 l!4335)))) lt!940581)))

(declare-fun bs!479446 () Bool)

(assert (= bs!479446 d!763738))

(declare-fun m!3036929 () Bool)

(assert (=> bs!479446 m!3036929))

(assert (=> bs!479446 m!3036789))

(declare-fun m!3036931 () Bool)

(assert (=> bs!479446 m!3036931))

(assert (=> bs!479446 m!3036931))

(declare-fun m!3036933 () Bool)

(assert (=> bs!479446 m!3036933))

(assert (=> bs!479446 m!3036789))

(assert (=> bs!479446 m!3036793))

(assert (=> b!2670709 d!763738))

(declare-fun d!763754 () Bool)

(declare-fun e!1683339 () Bool)

(assert (=> d!763754 e!1683339))

(declare-fun res!1122931 () Bool)

(assert (=> d!763754 (=> (not res!1122931) (not e!1683339))))

(declare-fun lt!940584 () BalanceConc!18812)

(assert (=> d!763754 (= res!1122931 (= (list!11590 lt!940584) (Cons!30702 (h!36122 (t!223171 l!4335)) Nil!30702)))))

(declare-fun singleton!923 (Token!8836) BalanceConc!18812)

(assert (=> d!763754 (= lt!940584 (singleton!923 (h!36122 (t!223171 l!4335))))))

(assert (=> d!763754 (= (singletonSeq!2082 (h!36122 (t!223171 l!4335))) lt!940584)))

(declare-fun b!2670862 () Bool)

(declare-fun isBalanced!2908 (Conc!9599) Bool)

(assert (=> b!2670862 (= e!1683339 (isBalanced!2908 (c!430511 lt!940584)))))

(assert (= (and d!763754 res!1122931) b!2670862))

(declare-fun m!3036939 () Bool)

(assert (=> d!763754 m!3036939))

(declare-fun m!3036941 () Bool)

(assert (=> d!763754 m!3036941))

(declare-fun m!3036943 () Bool)

(assert (=> b!2670862 m!3036943))

(assert (=> b!2670709 d!763754))

(declare-fun d!763758 () Bool)

(declare-fun lt!940612 () BalanceConc!18808)

(declare-fun printListTailRec!518 (LexerInterface!4280 List!30802 List!30800) List!30800)

(declare-fun dropList!967 (BalanceConc!18812 Int) List!30802)

(assert (=> d!763758 (= (list!11587 lt!940612) (printListTailRec!518 thiss!14116 (dropList!967 (singletonSeq!2082 (h!36122 (t!223171 l!4335))) 0) (list!11587 (BalanceConc!18809 Empty!9597))))))

(declare-fun e!1683353 () BalanceConc!18808)

(assert (=> d!763758 (= lt!940612 e!1683353)))

(declare-fun c!430528 () Bool)

(assert (=> d!763758 (= c!430528 (>= 0 (size!23748 (singletonSeq!2082 (h!36122 (t!223171 l!4335))))))))

(declare-fun e!1683352 () Bool)

(assert (=> d!763758 e!1683352))

(declare-fun res!1122937 () Bool)

(assert (=> d!763758 (=> (not res!1122937) (not e!1683352))))

(assert (=> d!763758 (= res!1122937 (>= 0 0))))

(assert (=> d!763758 (= (printTailRec!1139 thiss!14116 (singletonSeq!2082 (h!36122 (t!223171 l!4335))) 0 (BalanceConc!18809 Empty!9597)) lt!940612)))

(declare-fun b!2670886 () Bool)

(assert (=> b!2670886 (= e!1683352 (<= 0 (size!23748 (singletonSeq!2082 (h!36122 (t!223171 l!4335))))))))

(declare-fun b!2670887 () Bool)

(assert (=> b!2670887 (= e!1683353 (BalanceConc!18809 Empty!9597))))

(declare-fun b!2670888 () Bool)

(declare-fun ++!7488 (BalanceConc!18808 BalanceConc!18808) BalanceConc!18808)

(assert (=> b!2670888 (= e!1683353 (printTailRec!1139 thiss!14116 (singletonSeq!2082 (h!36122 (t!223171 l!4335))) (+ 0 1) (++!7488 (BalanceConc!18809 Empty!9597) (charsOf!2948 (apply!7358 (singletonSeq!2082 (h!36122 (t!223171 l!4335))) 0)))))))

(declare-fun lt!940616 () List!30802)

(assert (=> b!2670888 (= lt!940616 (list!11590 (singletonSeq!2082 (h!36122 (t!223171 l!4335)))))))

(declare-fun lt!940610 () Unit!44917)

(declare-fun lemmaDropApply!873 (List!30802 Int) Unit!44917)

(assert (=> b!2670888 (= lt!940610 (lemmaDropApply!873 lt!940616 0))))

(declare-fun head!6072 (List!30802) Token!8836)

(declare-fun drop!1664 (List!30802 Int) List!30802)

(declare-fun apply!7359 (List!30802 Int) Token!8836)

(assert (=> b!2670888 (= (head!6072 (drop!1664 lt!940616 0)) (apply!7359 lt!940616 0))))

(declare-fun lt!940615 () Unit!44917)

(assert (=> b!2670888 (= lt!940615 lt!940610)))

(declare-fun lt!940613 () List!30802)

(assert (=> b!2670888 (= lt!940613 (list!11590 (singletonSeq!2082 (h!36122 (t!223171 l!4335)))))))

(declare-fun lt!940611 () Unit!44917)

(declare-fun lemmaDropTail!845 (List!30802 Int) Unit!44917)

(assert (=> b!2670888 (= lt!940611 (lemmaDropTail!845 lt!940613 0))))

(declare-fun tail!4310 (List!30802) List!30802)

(assert (=> b!2670888 (= (tail!4310 (drop!1664 lt!940613 0)) (drop!1664 lt!940613 (+ 0 1)))))

(declare-fun lt!940614 () Unit!44917)

(assert (=> b!2670888 (= lt!940614 lt!940611)))

(assert (= (and d!763758 res!1122937) b!2670886))

(assert (= (and d!763758 c!430528) b!2670887))

(assert (= (and d!763758 (not c!430528)) b!2670888))

(declare-fun m!3036965 () Bool)

(assert (=> d!763758 m!3036965))

(declare-fun m!3036967 () Bool)

(assert (=> d!763758 m!3036967))

(declare-fun m!3036969 () Bool)

(assert (=> d!763758 m!3036969))

(assert (=> d!763758 m!3036789))

(assert (=> d!763758 m!3036965))

(assert (=> d!763758 m!3036789))

(declare-fun m!3036971 () Bool)

(assert (=> d!763758 m!3036971))

(assert (=> d!763758 m!3036967))

(declare-fun m!3036973 () Bool)

(assert (=> d!763758 m!3036973))

(assert (=> b!2670886 m!3036789))

(assert (=> b!2670886 m!3036971))

(declare-fun m!3036975 () Bool)

(assert (=> b!2670888 m!3036975))

(declare-fun m!3036977 () Bool)

(assert (=> b!2670888 m!3036977))

(declare-fun m!3036979 () Bool)

(assert (=> b!2670888 m!3036979))

(assert (=> b!2670888 m!3036789))

(declare-fun m!3036981 () Bool)

(assert (=> b!2670888 m!3036981))

(declare-fun m!3036983 () Bool)

(assert (=> b!2670888 m!3036983))

(declare-fun m!3036985 () Bool)

(assert (=> b!2670888 m!3036985))

(declare-fun m!3036987 () Bool)

(assert (=> b!2670888 m!3036987))

(assert (=> b!2670888 m!3036789))

(assert (=> b!2670888 m!3036931))

(declare-fun m!3036989 () Bool)

(assert (=> b!2670888 m!3036989))

(declare-fun m!3036991 () Bool)

(assert (=> b!2670888 m!3036991))

(assert (=> b!2670888 m!3036981))

(assert (=> b!2670888 m!3036977))

(declare-fun m!3036993 () Bool)

(assert (=> b!2670888 m!3036993))

(assert (=> b!2670888 m!3036789))

(declare-fun m!3036995 () Bool)

(assert (=> b!2670888 m!3036995))

(assert (=> b!2670888 m!3036995))

(assert (=> b!2670888 m!3036991))

(assert (=> b!2670888 m!3036975))

(declare-fun m!3036997 () Bool)

(assert (=> b!2670888 m!3036997))

(assert (=> b!2670709 d!763758))

(declare-fun b!2670965 () Bool)

(declare-fun res!1122972 () Bool)

(declare-fun e!1683401 () Bool)

(assert (=> b!2670965 (=> (not res!1122972) (not e!1683401))))

(declare-fun lt!940680 () Token!8836)

(declare-fun matchR!3621 (Regex!7827 List!30800) Bool)

(declare-datatypes ((Option!6075 0))(
  ( (None!6074) (Some!6074 (v!32609 Rule!9166)) )
))
(declare-fun get!9656 (Option!6075) Rule!9166)

(declare-fun getRuleFromTag!832 (LexerInterface!4280 List!30801 String!34409) Option!6075)

(assert (=> b!2670965 (= res!1122972 (matchR!3621 (regex!4683 (get!9656 (getRuleFromTag!832 thiss!14116 rules!1712 (tag!5185 (rule!7089 lt!940680))))) (list!11587 (charsOf!2948 lt!940680))))))

(declare-fun b!2670967 () Bool)

(declare-fun e!1683402 () Unit!44917)

(declare-fun Unit!44923 () Unit!44917)

(assert (=> b!2670967 (= e!1683402 Unit!44923)))

(declare-fun lt!940672 () List!30800)

(assert (=> b!2670967 (= lt!940672 (++!7487 call!172448 lt!940568))))

(declare-fun lt!940682 () Unit!44917)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!436 (LexerInterface!4280 Rule!9166 List!30801 List!30800) Unit!44917)

(assert (=> b!2670967 (= lt!940682 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!436 thiss!14116 (rule!7089 lt!940680) rules!1712 lt!940672))))

(declare-fun isEmpty!17564 (Option!6074) Bool)

(declare-fun maxPrefixOneRule!1479 (LexerInterface!4280 Rule!9166 List!30800) Option!6074)

(assert (=> b!2670967 (isEmpty!17564 (maxPrefixOneRule!1479 thiss!14116 (rule!7089 lt!940680) lt!940672))))

(declare-fun lt!940685 () Unit!44917)

(assert (=> b!2670967 (= lt!940685 lt!940682)))

(declare-fun lt!940679 () List!30800)

(assert (=> b!2670967 (= lt!940679 (list!11587 (charsOf!2948 lt!940680)))))

(declare-fun lt!940684 () Unit!44917)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!424 (LexerInterface!4280 Rule!9166 List!30800 List!30800) Unit!44917)

(assert (=> b!2670967 (= lt!940684 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!424 thiss!14116 (rule!7089 lt!940680) lt!940679 (++!7487 call!172448 lt!940568)))))

(assert (=> b!2670967 (not (matchR!3621 (regex!4683 (rule!7089 lt!940680)) lt!940679))))

(declare-fun lt!940676 () Unit!44917)

(assert (=> b!2670967 (= lt!940676 lt!940684)))

(assert (=> b!2670967 false))

(declare-fun b!2670968 () Bool)

(declare-fun Unit!44924 () Unit!44917)

(assert (=> b!2670968 (= e!1683402 Unit!44924)))

(declare-fun b!2670966 () Bool)

(assert (=> b!2670966 (= e!1683401 (= (rule!7089 lt!940680) (get!9656 (getRuleFromTag!832 thiss!14116 rules!1712 (tag!5185 (rule!7089 lt!940680))))))))

(declare-fun d!763772 () Bool)

(declare-fun isDefined!4831 (Option!6074) Bool)

(assert (=> d!763772 (isDefined!4831 (maxPrefix!2322 thiss!14116 rules!1712 (++!7487 call!172448 lt!940568)))))

(declare-fun lt!940677 () Unit!44917)

(assert (=> d!763772 (= lt!940677 e!1683402)))

(declare-fun c!430549 () Bool)

(assert (=> d!763772 (= c!430549 (isEmpty!17564 (maxPrefix!2322 thiss!14116 rules!1712 (++!7487 call!172448 lt!940568))))))

(declare-fun lt!940678 () Unit!44917)

(declare-fun lt!940671 () Unit!44917)

(assert (=> d!763772 (= lt!940678 lt!940671)))

(assert (=> d!763772 e!1683401))

(declare-fun res!1122971 () Bool)

(assert (=> d!763772 (=> (not res!1122971) (not e!1683401))))

(declare-fun isDefined!4832 (Option!6075) Bool)

(assert (=> d!763772 (= res!1122971 (isDefined!4832 (getRuleFromTag!832 thiss!14116 rules!1712 (tag!5185 (rule!7089 lt!940680)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!832 (LexerInterface!4280 List!30801 List!30800 Token!8836) Unit!44917)

(assert (=> d!763772 (= lt!940671 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!832 thiss!14116 rules!1712 call!172448 lt!940680))))

(declare-fun lt!940687 () Unit!44917)

(declare-fun lt!940681 () Unit!44917)

(assert (=> d!763772 (= lt!940687 lt!940681)))

(declare-fun lt!940673 () List!30800)

(declare-fun isPrefix!2450 (List!30800 List!30800) Bool)

(assert (=> d!763772 (isPrefix!2450 lt!940673 (++!7487 call!172448 lt!940568))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!400 (List!30800 List!30800 List!30800) Unit!44917)

(assert (=> d!763772 (= lt!940681 (lemmaPrefixStaysPrefixWhenAddingToSuffix!400 lt!940673 call!172448 lt!940568))))

(assert (=> d!763772 (= lt!940673 (list!11587 (charsOf!2948 lt!940680)))))

(declare-fun lt!940683 () Unit!44917)

(declare-fun lt!940674 () Unit!44917)

(assert (=> d!763772 (= lt!940683 lt!940674)))

(declare-fun lt!940675 () List!30800)

(declare-fun lt!940686 () List!30800)

(assert (=> d!763772 (isPrefix!2450 lt!940675 (++!7487 lt!940675 lt!940686))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1619 (List!30800 List!30800) Unit!44917)

(assert (=> d!763772 (= lt!940674 (lemmaConcatTwoListThenFirstIsPrefix!1619 lt!940675 lt!940686))))

(declare-fun get!9657 (Option!6074) tuple2!30182)

(assert (=> d!763772 (= lt!940686 (_2!17633 (get!9657 (maxPrefix!2322 thiss!14116 rules!1712 call!172448))))))

(assert (=> d!763772 (= lt!940675 (list!11587 (charsOf!2948 lt!940680)))))

(declare-fun seqFromList!3194 (List!30800) BalanceConc!18808)

(assert (=> d!763772 (= lt!940680 (head!6072 (list!11590 (_1!17632 (lex!1925 thiss!14116 rules!1712 (seqFromList!3194 call!172448))))))))

(assert (=> d!763772 (not (isEmpty!17559 rules!1712))))

(assert (=> d!763772 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!815 thiss!14116 rules!1712 call!172448 lt!940568) lt!940677)))

(assert (= (and d!763772 res!1122971) b!2670965))

(assert (= (and b!2670965 res!1122972) b!2670966))

(assert (= (and d!763772 c!430549) b!2670967))

(assert (= (and d!763772 (not c!430549)) b!2670968))

(declare-fun m!3037143 () Bool)

(assert (=> b!2670965 m!3037143))

(declare-fun m!3037145 () Bool)

(assert (=> b!2670965 m!3037145))

(declare-fun m!3037147 () Bool)

(assert (=> b!2670965 m!3037147))

(declare-fun m!3037149 () Bool)

(assert (=> b!2670965 m!3037149))

(assert (=> b!2670965 m!3037147))

(assert (=> b!2670965 m!3037143))

(assert (=> b!2670965 m!3037149))

(declare-fun m!3037151 () Bool)

(assert (=> b!2670965 m!3037151))

(declare-fun m!3037153 () Bool)

(assert (=> b!2670967 m!3037153))

(declare-fun m!3037155 () Bool)

(assert (=> b!2670967 m!3037155))

(declare-fun m!3037157 () Bool)

(assert (=> b!2670967 m!3037157))

(assert (=> b!2670967 m!3037147))

(declare-fun m!3037159 () Bool)

(assert (=> b!2670967 m!3037159))

(assert (=> b!2670967 m!3037147))

(assert (=> b!2670967 m!3037143))

(declare-fun m!3037161 () Bool)

(assert (=> b!2670967 m!3037161))

(declare-fun m!3037163 () Bool)

(assert (=> b!2670967 m!3037163))

(assert (=> b!2670967 m!3037161))

(assert (=> b!2670967 m!3037155))

(assert (=> b!2670966 m!3037149))

(assert (=> b!2670966 m!3037149))

(assert (=> b!2670966 m!3037151))

(declare-fun m!3037165 () Bool)

(assert (=> d!763772 m!3037165))

(declare-fun m!3037167 () Bool)

(assert (=> d!763772 m!3037167))

(assert (=> d!763772 m!3037155))

(declare-fun m!3037169 () Bool)

(assert (=> d!763772 m!3037169))

(declare-fun m!3037171 () Bool)

(assert (=> d!763772 m!3037171))

(assert (=> d!763772 m!3036537))

(assert (=> d!763772 m!3037147))

(assert (=> d!763772 m!3037165))

(assert (=> d!763772 m!3037155))

(declare-fun m!3037173 () Bool)

(assert (=> d!763772 m!3037173))

(assert (=> d!763772 m!3037149))

(assert (=> d!763772 m!3037155))

(declare-fun m!3037175 () Bool)

(assert (=> d!763772 m!3037175))

(declare-fun m!3037177 () Bool)

(assert (=> d!763772 m!3037177))

(declare-fun m!3037179 () Bool)

(assert (=> d!763772 m!3037179))

(declare-fun m!3037181 () Bool)

(assert (=> d!763772 m!3037181))

(assert (=> d!763772 m!3037175))

(declare-fun m!3037183 () Bool)

(assert (=> d!763772 m!3037183))

(assert (=> d!763772 m!3037147))

(assert (=> d!763772 m!3037143))

(assert (=> d!763772 m!3037175))

(declare-fun m!3037185 () Bool)

(assert (=> d!763772 m!3037185))

(assert (=> d!763772 m!3037149))

(declare-fun m!3037187 () Bool)

(assert (=> d!763772 m!3037187))

(assert (=> d!763772 m!3037179))

(declare-fun m!3037189 () Bool)

(assert (=> d!763772 m!3037189))

(assert (=> d!763772 m!3037177))

(declare-fun m!3037191 () Bool)

(assert (=> d!763772 m!3037191))

(declare-fun m!3037193 () Bool)

(assert (=> d!763772 m!3037193))

(declare-fun m!3037195 () Bool)

(assert (=> d!763772 m!3037195))

(assert (=> d!763772 m!3037193))

(assert (=> b!2670709 d!763772))

(declare-fun d!763846 () Bool)

(assert (=> d!763846 (= (isEmpty!17563 (originalCharacters!5449 (h!36122 l!4335))) ((_ is Nil!30700) (originalCharacters!5449 (h!36122 l!4335))))))

(assert (=> d!763728 d!763846))

(declare-fun d!763848 () Bool)

(declare-fun res!1122973 () Bool)

(declare-fun e!1683403 () Bool)

(assert (=> d!763848 (=> res!1122973 e!1683403)))

(assert (=> d!763848 (= res!1122973 ((_ is Nil!30702) l!4335))))

(assert (=> d!763848 (= (forall!6496 l!4335 lambda!99726) e!1683403)))

(declare-fun b!2670969 () Bool)

(declare-fun e!1683404 () Bool)

(assert (=> b!2670969 (= e!1683403 e!1683404)))

(declare-fun res!1122974 () Bool)

(assert (=> b!2670969 (=> (not res!1122974) (not e!1683404))))

(assert (=> b!2670969 (= res!1122974 (dynLambda!13290 lambda!99726 (h!36122 l!4335)))))

(declare-fun b!2670970 () Bool)

(assert (=> b!2670970 (= e!1683404 (forall!6496 (t!223171 l!4335) lambda!99726))))

(assert (= (and d!763848 (not res!1122973)) b!2670969))

(assert (= (and b!2670969 res!1122974) b!2670970))

(declare-fun b_lambda!81347 () Bool)

(assert (=> (not b_lambda!81347) (not b!2670969)))

(declare-fun m!3037197 () Bool)

(assert (=> b!2670969 m!3037197))

(declare-fun m!3037199 () Bool)

(assert (=> b!2670970 m!3037199))

(assert (=> d!763718 d!763848))

(assert (=> d!763718 d!763656))

(declare-fun d!763850 () Bool)

(assert (=> d!763850 true))

(declare-fun lambda!99742 () Int)

(declare-fun order!16849 () Int)

(declare-fun dynLambda!13293 (Int Int) Int)

(assert (=> d!763850 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13293 order!16849 lambda!99742))))

(declare-fun Forall2!790 (Int) Bool)

(assert (=> d!763850 (= (equivClasses!1841 (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (Forall2!790 lambda!99742))))

(declare-fun bs!479472 () Bool)

(assert (= bs!479472 d!763850))

(declare-fun m!3037201 () Bool)

(assert (=> bs!479472 m!3037201))

(assert (=> b!2670492 d!763850))

(declare-fun d!763852 () Bool)

(declare-fun res!1122977 () Bool)

(declare-fun e!1683407 () Bool)

(assert (=> d!763852 (=> (not res!1122977) (not e!1683407))))

(assert (=> d!763852 (= res!1122977 (not (isEmpty!17563 (originalCharacters!5449 (h!36122 (t!223171 l!4335))))))))

(assert (=> d!763852 (= (inv!41705 (h!36122 (t!223171 l!4335))) e!1683407)))

(declare-fun b!2670975 () Bool)

(declare-fun res!1122978 () Bool)

(assert (=> b!2670975 (=> (not res!1122978) (not e!1683407))))

(assert (=> b!2670975 (= res!1122978 (= (originalCharacters!5449 (h!36122 (t!223171 l!4335))) (list!11587 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (value!151070 (h!36122 (t!223171 l!4335)))))))))

(declare-fun b!2670976 () Bool)

(assert (=> b!2670976 (= e!1683407 (= (size!23745 (h!36122 (t!223171 l!4335))) (size!23749 (originalCharacters!5449 (h!36122 (t!223171 l!4335))))))))

(assert (= (and d!763852 res!1122977) b!2670975))

(assert (= (and b!2670975 res!1122978) b!2670976))

(declare-fun b_lambda!81349 () Bool)

(assert (=> (not b_lambda!81349) (not b!2670975)))

(declare-fun t!223238 () Bool)

(declare-fun tb!149667 () Bool)

(assert (=> (and b!2670415 (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) t!223238) tb!149667))

(declare-fun b!2670977 () Bool)

(declare-fun e!1683408 () Bool)

(declare-fun tp!844368 () Bool)

(assert (=> b!2670977 (= e!1683408 (and (inv!41708 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (value!151070 (h!36122 (t!223171 l!4335)))))) tp!844368))))

(declare-fun result!184866 () Bool)

(assert (=> tb!149667 (= result!184866 (and (inv!41709 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (value!151070 (h!36122 (t!223171 l!4335))))) e!1683408))))

(assert (= tb!149667 b!2670977))

(declare-fun m!3037203 () Bool)

(assert (=> b!2670977 m!3037203))

(declare-fun m!3037205 () Bool)

(assert (=> tb!149667 m!3037205))

(assert (=> b!2670975 t!223238))

(declare-fun b_and!197173 () Bool)

(assert (= b_and!197141 (and (=> t!223238 result!184866) b_and!197173)))

(declare-fun tb!149669 () Bool)

(declare-fun t!223240 () Bool)

(assert (=> (and b!2670770 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) t!223240) tb!149669))

(declare-fun result!184868 () Bool)

(assert (= result!184868 result!184866))

(assert (=> b!2670975 t!223240))

(declare-fun b_and!197175 () Bool)

(assert (= b_and!197147 (and (=> t!223240 result!184868) b_and!197175)))

(declare-fun t!223242 () Bool)

(declare-fun tb!149671 () Bool)

(assert (=> (and b!2670424 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) t!223242) tb!149671))

(declare-fun result!184870 () Bool)

(assert (= result!184870 result!184866))

(assert (=> b!2670975 t!223242))

(declare-fun b_and!197177 () Bool)

(assert (= b_and!197139 (and (=> t!223242 result!184870) b_and!197177)))

(declare-fun tb!149673 () Bool)

(declare-fun t!223244 () Bool)

(assert (=> (and b!2670419 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) t!223244) tb!149673))

(declare-fun result!184872 () Bool)

(assert (= result!184872 result!184866))

(assert (=> b!2670975 t!223244))

(declare-fun b_and!197179 () Bool)

(assert (= b_and!197143 (and (=> t!223244 result!184872) b_and!197179)))

(declare-fun t!223246 () Bool)

(declare-fun tb!149675 () Bool)

(assert (=> (and b!2670815 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) t!223246) tb!149675))

(declare-fun result!184874 () Bool)

(assert (= result!184874 result!184866))

(assert (=> b!2670975 t!223246))

(declare-fun b_and!197181 () Bool)

(assert (= b_and!197151 (and (=> t!223246 result!184874) b_and!197181)))

(declare-fun m!3037207 () Bool)

(assert (=> d!763852 m!3037207))

(declare-fun m!3037209 () Bool)

(assert (=> b!2670975 m!3037209))

(assert (=> b!2670975 m!3037209))

(declare-fun m!3037211 () Bool)

(assert (=> b!2670975 m!3037211))

(declare-fun m!3037213 () Bool)

(assert (=> b!2670976 m!3037213))

(assert (=> b!2670812 d!763852))

(declare-fun d!763854 () Bool)

(declare-fun isBalanced!2910 (Conc!9597) Bool)

(assert (=> d!763854 (= (inv!41709 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))) (isBalanced!2910 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))))))

(declare-fun bs!479473 () Bool)

(assert (= bs!479473 d!763854))

(declare-fun m!3037215 () Bool)

(assert (=> bs!479473 m!3037215))

(assert (=> tb!149643 d!763854))

(declare-fun d!763856 () Bool)

(assert (=> d!763856 (= (list!11587 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))) (list!11591 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))))))

(declare-fun bs!479474 () Bool)

(assert (= bs!479474 d!763856))

(declare-fun m!3037217 () Bool)

(assert (=> bs!479474 m!3037217))

(assert (=> b!2670758 d!763856))

(declare-fun bs!479475 () Bool)

(declare-fun d!763858 () Bool)

(assert (= bs!479475 (and d!763858 d!763850)))

(declare-fun lambda!99743 () Int)

(assert (=> bs!479475 (= (= (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152))) (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (= lambda!99743 lambda!99742))))

(assert (=> d!763858 true))

(assert (=> d!763858 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152)))) (dynLambda!13293 order!16849 lambda!99743))))

(assert (=> d!763858 (= (equivClasses!1841 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152)))) (Forall2!790 lambda!99743))))

(declare-fun bs!479476 () Bool)

(assert (= bs!479476 d!763858))

(declare-fun m!3037219 () Bool)

(assert (=> bs!479476 m!3037219))

(assert (=> b!2670756 d!763858))

(declare-fun d!763860 () Bool)

(assert (=> d!763860 (= (inv!41701 (tag!5185 (rule!7089 (h!36122 (t!223171 l!4335))))) (= (mod (str.len (value!151069 (tag!5185 (rule!7089 (h!36122 (t!223171 l!4335)))))) 2) 0))))

(assert (=> b!2670814 d!763860))

(declare-fun d!763862 () Bool)

(declare-fun res!1122979 () Bool)

(declare-fun e!1683409 () Bool)

(assert (=> d!763862 (=> (not res!1122979) (not e!1683409))))

(assert (=> d!763862 (= res!1122979 (semiInverseModEq!1940 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toValue!6621 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))))))

(assert (=> d!763862 (= (inv!41704 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) e!1683409)))

(declare-fun b!2670978 () Bool)

(assert (=> b!2670978 (= e!1683409 (equivClasses!1841 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toValue!6621 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))))))

(assert (= (and d!763862 res!1122979) b!2670978))

(declare-fun m!3037221 () Bool)

(assert (=> d!763862 m!3037221))

(declare-fun m!3037223 () Bool)

(assert (=> b!2670978 m!3037223))

(assert (=> b!2670814 d!763862))

(declare-fun bs!479477 () Bool)

(declare-fun d!763864 () Bool)

(assert (= bs!479477 (and d!763864 d!763694)))

(declare-fun lambda!99744 () Int)

(assert (=> bs!479477 (= lambda!99744 lambda!99716)))

(assert (=> d!763864 true))

(declare-fun lt!940688 () Bool)

(assert (=> d!763864 (= lt!940688 (forall!6498 (t!223170 rules!1712) lambda!99744))))

(declare-fun e!1683411 () Bool)

(assert (=> d!763864 (= lt!940688 e!1683411)))

(declare-fun res!1122980 () Bool)

(assert (=> d!763864 (=> res!1122980 e!1683411)))

(assert (=> d!763864 (= res!1122980 (not ((_ is Cons!30701) (t!223170 rules!1712))))))

(assert (=> d!763864 (= (rulesValidInductive!1629 thiss!14116 (t!223170 rules!1712)) lt!940688)))

(declare-fun b!2670979 () Bool)

(declare-fun e!1683410 () Bool)

(assert (=> b!2670979 (= e!1683411 e!1683410)))

(declare-fun res!1122981 () Bool)

(assert (=> b!2670979 (=> (not res!1122981) (not e!1683410))))

(assert (=> b!2670979 (= res!1122981 (ruleValid!1551 thiss!14116 (h!36121 (t!223170 rules!1712))))))

(declare-fun b!2670980 () Bool)

(assert (=> b!2670980 (= e!1683410 (rulesValidInductive!1629 thiss!14116 (t!223170 (t!223170 rules!1712))))))

(assert (= (and d!763864 (not res!1122980)) b!2670979))

(assert (= (and b!2670979 res!1122981) b!2670980))

(declare-fun m!3037225 () Bool)

(assert (=> d!763864 m!3037225))

(declare-fun m!3037227 () Bool)

(assert (=> b!2670979 m!3037227))

(declare-fun m!3037229 () Bool)

(assert (=> b!2670980 m!3037229))

(assert (=> b!2670582 d!763864))

(declare-fun b!2670983 () Bool)

(declare-fun res!1122983 () Bool)

(declare-fun e!1683413 () Bool)

(assert (=> b!2670983 (=> (not res!1122983) (not e!1683413))))

(declare-fun lt!940689 () List!30800)

(assert (=> b!2670983 (= res!1122983 (= (size!23749 lt!940689) (+ (size!23749 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335))))) (size!23749 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))))

(declare-fun b!2670981 () Bool)

(declare-fun e!1683412 () List!30800)

(assert (=> b!2670981 (= e!1683412 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152))))

(declare-fun b!2670982 () Bool)

(assert (=> b!2670982 (= e!1683412 (Cons!30700 (h!36120 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335))))) (++!7487 (t!223169 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335))))) (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152))))))

(declare-fun b!2670984 () Bool)

(assert (=> b!2670984 (= e!1683413 (or (not (= (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152) Nil!30700)) (= lt!940689 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335)))))))))

(declare-fun d!763866 () Bool)

(assert (=> d!763866 e!1683413))

(declare-fun res!1122982 () Bool)

(assert (=> d!763866 (=> (not res!1122982) (not e!1683413))))

(assert (=> d!763866 (= res!1122982 (= (content!4359 lt!940689) ((_ map or) (content!4359 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335))))) (content!4359 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))))

(assert (=> d!763866 (= lt!940689 e!1683412)))

(declare-fun c!430550 () Bool)

(assert (=> d!763866 (= c!430550 ((_ is Nil!30700) (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335))))))))

(assert (=> d!763866 (= (++!7487 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335)))) (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)) lt!940689)))

(assert (= (and d!763866 c!430550) b!2670981))

(assert (= (and d!763866 (not c!430550)) b!2670982))

(assert (= (and d!763866 res!1122982) b!2670983))

(assert (= (and b!2670983 res!1122983) b!2670984))

(declare-fun m!3037231 () Bool)

(assert (=> b!2670983 m!3037231))

(declare-fun m!3037233 () Bool)

(assert (=> b!2670983 m!3037233))

(assert (=> b!2670983 m!3036517))

(assert (=> b!2670983 m!3036703))

(assert (=> b!2670982 m!3036517))

(declare-fun m!3037235 () Bool)

(assert (=> b!2670982 m!3037235))

(declare-fun m!3037237 () Bool)

(assert (=> d!763866 m!3037237))

(declare-fun m!3037239 () Bool)

(assert (=> d!763866 m!3037239))

(assert (=> d!763866 m!3036517))

(assert (=> d!763866 m!3036711))

(assert (=> b!2670567 d!763866))

(declare-fun d!763868 () Bool)

(declare-fun res!1122988 () Bool)

(declare-fun e!1683418 () Bool)

(assert (=> d!763868 (=> res!1122988 e!1683418)))

(assert (=> d!763868 (= res!1122988 ((_ is Nil!30701) rules!1712))))

(assert (=> d!763868 (= (noDuplicateTag!1742 thiss!14116 rules!1712 Nil!30704) e!1683418)))

(declare-fun b!2670989 () Bool)

(declare-fun e!1683419 () Bool)

(assert (=> b!2670989 (= e!1683418 e!1683419)))

(declare-fun res!1122989 () Bool)

(assert (=> b!2670989 (=> (not res!1122989) (not e!1683419))))

(declare-fun contains!5892 (List!30804 String!34409) Bool)

(assert (=> b!2670989 (= res!1122989 (not (contains!5892 Nil!30704 (tag!5185 (h!36121 rules!1712)))))))

(declare-fun b!2670990 () Bool)

(assert (=> b!2670990 (= e!1683419 (noDuplicateTag!1742 thiss!14116 (t!223170 rules!1712) (Cons!30704 (tag!5185 (h!36121 rules!1712)) Nil!30704)))))

(assert (= (and d!763868 (not res!1122988)) b!2670989))

(assert (= (and b!2670989 res!1122989) b!2670990))

(declare-fun m!3037241 () Bool)

(assert (=> b!2670989 m!3037241))

(declare-fun m!3037243 () Bool)

(assert (=> b!2670990 m!3037243))

(assert (=> b!2670546 d!763868))

(declare-fun d!763870 () Bool)

(declare-fun charsToInt!0 (List!30799) (_ BitVec 32))

(assert (=> d!763870 (= (inv!16 (value!151070 (h!36122 l!4335))) (= (charsToInt!0 (text!34782 (value!151070 (h!36122 l!4335)))) (value!151061 (value!151070 (h!36122 l!4335)))))))

(declare-fun bs!479478 () Bool)

(assert (= bs!479478 d!763870))

(declare-fun m!3037245 () Bool)

(assert (=> bs!479478 m!3037245))

(assert (=> b!2670742 d!763870))

(declare-fun b!2671017 () Bool)

(declare-fun e!1683434 () Bool)

(declare-fun e!1683432 () Bool)

(assert (=> b!2671017 (= e!1683434 e!1683432)))

(declare-fun res!1123008 () Bool)

(declare-fun rulesUseDisjointChars!251 (Rule!9166 Rule!9166) Bool)

(assert (=> b!2671017 (= res!1123008 (rulesUseDisjointChars!251 (h!36121 rules!1712) (h!36121 rules!1712)))))

(assert (=> b!2671017 (=> (not res!1123008) (not e!1683432))))

(declare-fun b!2671018 () Bool)

(declare-fun e!1683433 () Bool)

(declare-fun call!172460 () Bool)

(assert (=> b!2671018 (= e!1683433 call!172460)))

(declare-fun b!2671020 () Bool)

(assert (=> b!2671020 (= e!1683434 e!1683433)))

(declare-fun res!1123009 () Bool)

(assert (=> b!2671020 (= res!1123009 (not ((_ is Cons!30701) rules!1712)))))

(assert (=> b!2671020 (=> res!1123009 e!1683433)))

(declare-fun bm!172455 () Bool)

(assert (=> bm!172455 (= call!172460 (ruleDisjointCharsFromAllFromOtherType!547 (h!36121 rules!1712) (t!223170 rules!1712)))))

(declare-fun d!763872 () Bool)

(declare-fun c!430555 () Bool)

(assert (=> d!763872 (= c!430555 (and ((_ is Cons!30701) rules!1712) (not (= (isSeparator!4683 (h!36121 rules!1712)) (isSeparator!4683 (h!36121 rules!1712))))))))

(assert (=> d!763872 (= (ruleDisjointCharsFromAllFromOtherType!547 (h!36121 rules!1712) rules!1712) e!1683434)))

(declare-fun b!2671019 () Bool)

(assert (=> b!2671019 (= e!1683432 call!172460)))

(assert (= (and d!763872 c!430555) b!2671017))

(assert (= (and d!763872 (not c!430555)) b!2671020))

(assert (= (and b!2671017 res!1123008) b!2671019))

(assert (= (and b!2671020 (not res!1123009)) b!2671018))

(assert (= (or b!2671019 b!2671018) bm!172455))

(declare-fun m!3037247 () Bool)

(assert (=> b!2671017 m!3037247))

(declare-fun m!3037249 () Bool)

(assert (=> bm!172455 m!3037249))

(assert (=> b!2670497 d!763872))

(declare-fun d!763874 () Bool)

(assert (=> d!763874 (= (inv!16 (value!151070 separatorToken!152)) (= (charsToInt!0 (text!34782 (value!151070 separatorToken!152))) (value!151061 (value!151070 separatorToken!152))))))

(declare-fun bs!479479 () Bool)

(assert (= bs!479479 d!763874))

(declare-fun m!3037251 () Bool)

(assert (=> bs!479479 m!3037251))

(assert (=> b!2670731 d!763874))

(declare-fun d!763876 () Bool)

(assert (=> d!763876 true))

(declare-fun order!16851 () Int)

(declare-fun lambda!99747 () Int)

(declare-fun dynLambda!13295 (Int Int) Int)

(assert (=> d!763876 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13295 order!16851 lambda!99747))))

(assert (=> d!763876 true))

(assert (=> d!763876 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13295 order!16851 lambda!99747))))

(declare-fun Forall!1192 (Int) Bool)

(assert (=> d!763876 (= (semiInverseModEq!1940 (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (Forall!1192 lambda!99747))))

(declare-fun bs!479480 () Bool)

(assert (= bs!479480 d!763876))

(declare-fun m!3037253 () Bool)

(assert (=> bs!479480 m!3037253))

(assert (=> d!763660 d!763876))

(declare-fun d!763878 () Bool)

(declare-fun lt!940707 () Int)

(assert (=> d!763878 (>= lt!940707 0)))

(declare-fun e!1683440 () Int)

(assert (=> d!763878 (= lt!940707 e!1683440)))

(declare-fun c!430559 () Bool)

(assert (=> d!763878 (= c!430559 ((_ is Nil!30700) lt!940526))))

(assert (=> d!763878 (= (size!23749 lt!940526) lt!940707)))

(declare-fun b!2671038 () Bool)

(assert (=> b!2671038 (= e!1683440 0)))

(declare-fun b!2671039 () Bool)

(assert (=> b!2671039 (= e!1683440 (+ 1 (size!23749 (t!223169 lt!940526))))))

(assert (= (and d!763878 c!430559) b!2671038))

(assert (= (and d!763878 (not c!430559)) b!2671039))

(declare-fun m!3037255 () Bool)

(assert (=> b!2671039 m!3037255))

(assert (=> b!2670568 d!763878))

(declare-fun d!763880 () Bool)

(declare-fun lt!940708 () Int)

(assert (=> d!763880 (>= lt!940708 0)))

(declare-fun e!1683441 () Int)

(assert (=> d!763880 (= lt!940708 e!1683441)))

(declare-fun c!430560 () Bool)

(assert (=> d!763880 (= c!430560 ((_ is Nil!30700) (list!11587 (charsOf!2948 (h!36122 l!4335)))))))

(assert (=> d!763880 (= (size!23749 (list!11587 (charsOf!2948 (h!36122 l!4335)))) lt!940708)))

(declare-fun b!2671040 () Bool)

(assert (=> b!2671040 (= e!1683441 0)))

(declare-fun b!2671041 () Bool)

(assert (=> b!2671041 (= e!1683441 (+ 1 (size!23749 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335)))))))))

(assert (= (and d!763880 c!430560) b!2671040))

(assert (= (and d!763880 (not c!430560)) b!2671041))

(assert (=> b!2671041 m!3037233))

(assert (=> b!2670568 d!763880))

(declare-fun d!763882 () Bool)

(declare-fun lt!940709 () Int)

(assert (=> d!763882 (>= lt!940709 0)))

(declare-fun e!1683442 () Int)

(assert (=> d!763882 (= lt!940709 e!1683442)))

(declare-fun c!430561 () Bool)

(assert (=> d!763882 (= c!430561 ((_ is Nil!30700) (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))

(assert (=> d!763882 (= (size!23749 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)) lt!940709)))

(declare-fun b!2671042 () Bool)

(assert (=> b!2671042 (= e!1683442 0)))

(declare-fun b!2671043 () Bool)

(assert (=> b!2671043 (= e!1683442 (+ 1 (size!23749 (t!223169 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))))

(assert (= (and d!763882 c!430561) b!2671042))

(assert (= (and d!763882 (not c!430561)) b!2671043))

(declare-fun m!3037257 () Bool)

(assert (=> b!2671043 m!3037257))

(assert (=> b!2670568 d!763882))

(declare-fun d!763884 () Bool)

(declare-fun charsToBigInt!0 (List!30799 Int) Int)

(assert (=> d!763884 (= (inv!15 (value!151070 (h!36122 l!4335))) (= (charsToBigInt!0 (text!34784 (value!151070 (h!36122 l!4335))) 0) (value!151065 (value!151070 (h!36122 l!4335)))))))

(declare-fun bs!479481 () Bool)

(assert (= bs!479481 d!763884))

(declare-fun m!3037291 () Bool)

(assert (=> bs!479481 m!3037291))

(assert (=> b!2670745 d!763884))

(declare-fun d!763888 () Bool)

(declare-fun lt!940712 () Bool)

(declare-fun e!1683445 () Bool)

(assert (=> d!763888 (= lt!940712 e!1683445)))

(declare-fun res!1123018 () Bool)

(assert (=> d!763888 (=> (not res!1123018) (not e!1683445))))

(assert (=> d!763888 (= res!1123018 (= (list!11590 (_1!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 (h!36122 l!4335)))))) (list!11590 (singletonSeq!2082 (h!36122 l!4335)))))))

(declare-fun e!1683444 () Bool)

(assert (=> d!763888 (= lt!940712 e!1683444)))

(declare-fun res!1123020 () Bool)

(assert (=> d!763888 (=> (not res!1123020) (not e!1683444))))

(declare-fun lt!940711 () tuple2!30180)

(assert (=> d!763888 (= res!1123020 (= (size!23748 (_1!17632 lt!940711)) 1))))

(assert (=> d!763888 (= lt!940711 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 (h!36122 l!4335)))))))

(assert (=> d!763888 (not (isEmpty!17559 rules!1712))))

(assert (=> d!763888 (= (rulesProduceIndividualToken!1992 thiss!14116 rules!1712 (h!36122 l!4335)) lt!940712)))

(declare-fun b!2671045 () Bool)

(declare-fun res!1123019 () Bool)

(assert (=> b!2671045 (=> (not res!1123019) (not e!1683444))))

(assert (=> b!2671045 (= res!1123019 (= (apply!7358 (_1!17632 lt!940711) 0) (h!36122 l!4335)))))

(declare-fun b!2671046 () Bool)

(assert (=> b!2671046 (= e!1683444 (isEmpty!17562 (_2!17632 lt!940711)))))

(declare-fun b!2671047 () Bool)

(assert (=> b!2671047 (= e!1683445 (isEmpty!17562 (_2!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 (h!36122 l!4335)))))))))

(assert (= (and d!763888 res!1123020) b!2671045))

(assert (= (and b!2671045 res!1123019) b!2671046))

(assert (= (and d!763888 res!1123018) b!2671047))

(declare-fun m!3037311 () Bool)

(assert (=> d!763888 m!3037311))

(assert (=> d!763888 m!3037311))

(declare-fun m!3037313 () Bool)

(assert (=> d!763888 m!3037313))

(declare-fun m!3037317 () Bool)

(assert (=> d!763888 m!3037317))

(declare-fun m!3037319 () Bool)

(assert (=> d!763888 m!3037319))

(assert (=> d!763888 m!3036537))

(assert (=> d!763888 m!3037311))

(assert (=> d!763888 m!3037317))

(declare-fun m!3037321 () Bool)

(assert (=> d!763888 m!3037321))

(declare-fun m!3037323 () Bool)

(assert (=> d!763888 m!3037323))

(declare-fun m!3037325 () Bool)

(assert (=> b!2671045 m!3037325))

(declare-fun m!3037327 () Bool)

(assert (=> b!2671046 m!3037327))

(assert (=> b!2671047 m!3037311))

(assert (=> b!2671047 m!3037311))

(assert (=> b!2671047 m!3037317))

(assert (=> b!2671047 m!3037317))

(assert (=> b!2671047 m!3037319))

(declare-fun m!3037329 () Bool)

(assert (=> b!2671047 m!3037329))

(assert (=> bs!479440 d!763888))

(declare-fun d!763896 () Bool)

(declare-fun c!430570 () Bool)

(assert (=> d!763896 (= c!430570 ((_ is Node!9597) (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))))))

(declare-fun e!1683461 () Bool)

(assert (=> d!763896 (= (inv!41708 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))) e!1683461)))

(declare-fun b!2671073 () Bool)

(declare-fun inv!41712 (Conc!9597) Bool)

(assert (=> b!2671073 (= e!1683461 (inv!41712 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))))))

(declare-fun b!2671074 () Bool)

(declare-fun e!1683462 () Bool)

(assert (=> b!2671074 (= e!1683461 e!1683462)))

(declare-fun res!1123027 () Bool)

(assert (=> b!2671074 (= res!1123027 (not ((_ is Leaf!14679) (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))))))))

(assert (=> b!2671074 (=> res!1123027 e!1683462)))

(declare-fun b!2671075 () Bool)

(declare-fun inv!41713 (Conc!9597) Bool)

(assert (=> b!2671075 (= e!1683462 (inv!41713 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))))))

(assert (= (and d!763896 c!430570) b!2671073))

(assert (= (and d!763896 (not c!430570)) b!2671074))

(assert (= (and b!2671074 (not res!1123027)) b!2671075))

(declare-fun m!3037367 () Bool)

(assert (=> b!2671073 m!3037367))

(declare-fun m!3037369 () Bool)

(assert (=> b!2671075 m!3037369))

(assert (=> b!2670557 d!763896))

(declare-fun b!2671078 () Bool)

(declare-fun res!1123029 () Bool)

(declare-fun e!1683464 () Bool)

(assert (=> b!2671078 (=> (not res!1123029) (not e!1683464))))

(declare-fun lt!940721 () List!30800)

(assert (=> b!2671078 (= res!1123029 (= (size!23749 lt!940721) (+ (size!23749 call!172450) (size!23749 lt!940568))))))

(declare-fun b!2671076 () Bool)

(declare-fun e!1683463 () List!30800)

(assert (=> b!2671076 (= e!1683463 lt!940568)))

(declare-fun b!2671077 () Bool)

(assert (=> b!2671077 (= e!1683463 (Cons!30700 (h!36120 call!172450) (++!7487 (t!223169 call!172450) lt!940568)))))

(declare-fun b!2671079 () Bool)

(assert (=> b!2671079 (= e!1683464 (or (not (= lt!940568 Nil!30700)) (= lt!940721 call!172450)))))

(declare-fun d!763902 () Bool)

(assert (=> d!763902 e!1683464))

(declare-fun res!1123028 () Bool)

(assert (=> d!763902 (=> (not res!1123028) (not e!1683464))))

(assert (=> d!763902 (= res!1123028 (= (content!4359 lt!940721) ((_ map or) (content!4359 call!172450) (content!4359 lt!940568))))))

(assert (=> d!763902 (= lt!940721 e!1683463)))

(declare-fun c!430571 () Bool)

(assert (=> d!763902 (= c!430571 ((_ is Nil!30700) call!172450))))

(assert (=> d!763902 (= (++!7487 call!172450 lt!940568) lt!940721)))

(assert (= (and d!763902 c!430571) b!2671076))

(assert (= (and d!763902 (not c!430571)) b!2671077))

(assert (= (and d!763902 res!1123028) b!2671078))

(assert (= (and b!2671078 res!1123029) b!2671079))

(declare-fun m!3037375 () Bool)

(assert (=> b!2671078 m!3037375))

(declare-fun m!3037377 () Bool)

(assert (=> b!2671078 m!3037377))

(declare-fun m!3037379 () Bool)

(assert (=> b!2671078 m!3037379))

(declare-fun m!3037381 () Bool)

(assert (=> b!2671077 m!3037381))

(declare-fun m!3037383 () Bool)

(assert (=> d!763902 m!3037383))

(declare-fun m!3037385 () Bool)

(assert (=> d!763902 m!3037385))

(declare-fun m!3037389 () Bool)

(assert (=> d!763902 m!3037389))

(assert (=> b!2670702 d!763902))

(declare-fun b!2671087 () Bool)

(declare-fun res!1123034 () Bool)

(declare-fun e!1683469 () Bool)

(assert (=> b!2671087 (=> (not res!1123034) (not e!1683469))))

(declare-fun lt!940724 () List!30800)

(assert (=> b!2671087 (= res!1123034 (= (size!23749 lt!940724) (+ (size!23749 (ite c!430498 call!172449 call!172448)) (size!23749 e!1683220))))))

(declare-fun b!2671084 () Bool)

(declare-fun e!1683467 () List!30800)

(assert (=> b!2671084 (= e!1683467 e!1683220)))

(declare-fun b!2671086 () Bool)

(assert (=> b!2671086 (= e!1683467 (Cons!30700 (h!36120 (ite c!430498 call!172449 call!172448)) (++!7487 (t!223169 (ite c!430498 call!172449 call!172448)) e!1683220)))))

(declare-fun b!2671088 () Bool)

(assert (=> b!2671088 (= e!1683469 (or (not (= e!1683220 Nil!30700)) (= lt!940724 (ite c!430498 call!172449 call!172448))))))

(declare-fun d!763910 () Bool)

(assert (=> d!763910 e!1683469))

(declare-fun res!1123032 () Bool)

(assert (=> d!763910 (=> (not res!1123032) (not e!1683469))))

(assert (=> d!763910 (= res!1123032 (= (content!4359 lt!940724) ((_ map or) (content!4359 (ite c!430498 call!172449 call!172448)) (content!4359 e!1683220))))))

(assert (=> d!763910 (= lt!940724 e!1683467)))

(declare-fun c!430573 () Bool)

(assert (=> d!763910 (= c!430573 ((_ is Nil!30700) (ite c!430498 call!172449 call!172448)))))

(assert (=> d!763910 (= (++!7487 (ite c!430498 call!172449 call!172448) e!1683220) lt!940724)))

(assert (= (and d!763910 c!430573) b!2671084))

(assert (= (and d!763910 (not c!430573)) b!2671086))

(assert (= (and d!763910 res!1123032) b!2671087))

(assert (= (and b!2671087 res!1123034) b!2671088))

(declare-fun m!3037391 () Bool)

(assert (=> b!2671087 m!3037391))

(declare-fun m!3037393 () Bool)

(assert (=> b!2671087 m!3037393))

(declare-fun m!3037395 () Bool)

(assert (=> b!2671087 m!3037395))

(declare-fun m!3037397 () Bool)

(assert (=> b!2671086 m!3037397))

(declare-fun m!3037399 () Bool)

(assert (=> d!763910 m!3037399))

(declare-fun m!3037401 () Bool)

(assert (=> d!763910 m!3037401))

(declare-fun m!3037403 () Bool)

(assert (=> d!763910 m!3037403))

(assert (=> bm!172444 d!763910))

(declare-fun d!763912 () Bool)

(declare-fun lt!940727 () Int)

(declare-fun size!23753 (List!30802) Int)

(assert (=> d!763912 (= lt!940727 (size!23753 (list!11590 (_1!17632 lt!940516))))))

(declare-fun size!23754 (Conc!9599) Int)

(assert (=> d!763912 (= lt!940727 (size!23754 (c!430511 (_1!17632 lt!940516))))))

(assert (=> d!763912 (= (size!23748 (_1!17632 lt!940516)) lt!940727)))

(declare-fun bs!479496 () Bool)

(assert (= bs!479496 d!763912))

(declare-fun m!3037415 () Bool)

(assert (=> bs!479496 m!3037415))

(assert (=> bs!479496 m!3037415))

(declare-fun m!3037417 () Bool)

(assert (=> bs!479496 m!3037417))

(declare-fun m!3037419 () Bool)

(assert (=> bs!479496 m!3037419))

(assert (=> d!763664 d!763912))

(declare-fun d!763920 () Bool)

(declare-fun lt!940728 () BalanceConc!18808)

(assert (=> d!763920 (= (list!11587 lt!940728) (printList!1179 thiss!14116 (list!11590 (singletonSeq!2082 separatorToken!152))))))

(assert (=> d!763920 (= lt!940728 (printTailRec!1139 thiss!14116 (singletonSeq!2082 separatorToken!152) 0 (BalanceConc!18809 Empty!9597)))))

(assert (=> d!763920 (= (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)) lt!940728)))

(declare-fun bs!479497 () Bool)

(assert (= bs!479497 d!763920))

(declare-fun m!3037421 () Bool)

(assert (=> bs!479497 m!3037421))

(assert (=> bs!479497 m!3036663))

(assert (=> bs!479497 m!3036665))

(assert (=> bs!479497 m!3036665))

(declare-fun m!3037423 () Bool)

(assert (=> bs!479497 m!3037423))

(assert (=> bs!479497 m!3036663))

(declare-fun m!3037425 () Bool)

(assert (=> bs!479497 m!3037425))

(assert (=> d!763664 d!763920))

(declare-fun b!2671132 () Bool)

(declare-fun res!1123061 () Bool)

(declare-fun e!1683504 () Bool)

(assert (=> b!2671132 (=> (not res!1123061) (not e!1683504))))

(declare-fun lt!940756 () tuple2!30180)

(declare-datatypes ((tuple2!30186 0))(
  ( (tuple2!30187 (_1!17635 List!30802) (_2!17635 List!30800)) )
))
(declare-fun lexList!1172 (LexerInterface!4280 List!30801 List!30800) tuple2!30186)

(assert (=> b!2671132 (= res!1123061 (= (list!11590 (_1!17632 lt!940756)) (_1!17635 (lexList!1172 thiss!14116 rules!1712 (list!11587 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)))))))))

(declare-fun e!1683502 () Bool)

(declare-fun b!2671133 () Bool)

(assert (=> b!2671133 (= e!1683502 (= (_2!17632 lt!940756) (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152))))))

(declare-fun b!2671134 () Bool)

(assert (=> b!2671134 (= e!1683504 (= (list!11587 (_2!17632 lt!940756)) (_2!17635 (lexList!1172 thiss!14116 rules!1712 (list!11587 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)))))))))

(declare-fun d!763922 () Bool)

(assert (=> d!763922 e!1683504))

(declare-fun res!1123060 () Bool)

(assert (=> d!763922 (=> (not res!1123060) (not e!1683504))))

(assert (=> d!763922 (= res!1123060 e!1683502)))

(declare-fun c!430581 () Bool)

(assert (=> d!763922 (= c!430581 (> (size!23748 (_1!17632 lt!940756)) 0))))

(declare-fun lexTailRecV2!847 (LexerInterface!4280 List!30801 BalanceConc!18808 BalanceConc!18808 BalanceConc!18808 BalanceConc!18812) tuple2!30180)

(assert (=> d!763922 (= lt!940756 (lexTailRecV2!847 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)) (BalanceConc!18809 Empty!9597) (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)) (BalanceConc!18813 Empty!9599)))))

(assert (=> d!763922 (= (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152))) lt!940756)))

(declare-fun b!2671135 () Bool)

(declare-fun e!1683503 () Bool)

(assert (=> b!2671135 (= e!1683502 e!1683503)))

(declare-fun res!1123062 () Bool)

(declare-fun size!23755 (BalanceConc!18808) Int)

(assert (=> b!2671135 (= res!1123062 (< (size!23755 (_2!17632 lt!940756)) (size!23755 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)))))))

(assert (=> b!2671135 (=> (not res!1123062) (not e!1683503))))

(declare-fun b!2671136 () Bool)

(declare-fun isEmpty!17567 (BalanceConc!18812) Bool)

(assert (=> b!2671136 (= e!1683503 (not (isEmpty!17567 (_1!17632 lt!940756))))))

(assert (= (and d!763922 c!430581) b!2671135))

(assert (= (and d!763922 (not c!430581)) b!2671133))

(assert (= (and b!2671135 res!1123062) b!2671136))

(assert (= (and d!763922 res!1123060) b!2671132))

(assert (= (and b!2671132 res!1123061) b!2671134))

(declare-fun m!3037505 () Bool)

(assert (=> d!763922 m!3037505))

(assert (=> d!763922 m!3036667))

(assert (=> d!763922 m!3036667))

(declare-fun m!3037507 () Bool)

(assert (=> d!763922 m!3037507))

(declare-fun m!3037509 () Bool)

(assert (=> b!2671134 m!3037509))

(assert (=> b!2671134 m!3036667))

(declare-fun m!3037511 () Bool)

(assert (=> b!2671134 m!3037511))

(assert (=> b!2671134 m!3037511))

(declare-fun m!3037513 () Bool)

(assert (=> b!2671134 m!3037513))

(declare-fun m!3037515 () Bool)

(assert (=> b!2671135 m!3037515))

(assert (=> b!2671135 m!3036667))

(declare-fun m!3037517 () Bool)

(assert (=> b!2671135 m!3037517))

(declare-fun m!3037519 () Bool)

(assert (=> b!2671132 m!3037519))

(assert (=> b!2671132 m!3036667))

(assert (=> b!2671132 m!3037511))

(assert (=> b!2671132 m!3037511))

(assert (=> b!2671132 m!3037513))

(declare-fun m!3037521 () Bool)

(assert (=> b!2671136 m!3037521))

(assert (=> d!763664 d!763922))

(declare-fun d!763948 () Bool)

(declare-fun e!1683505 () Bool)

(assert (=> d!763948 e!1683505))

(declare-fun res!1123063 () Bool)

(assert (=> d!763948 (=> (not res!1123063) (not e!1683505))))

(declare-fun lt!940757 () BalanceConc!18812)

(assert (=> d!763948 (= res!1123063 (= (list!11590 lt!940757) (Cons!30702 separatorToken!152 Nil!30702)))))

(assert (=> d!763948 (= lt!940757 (singleton!923 separatorToken!152))))

(assert (=> d!763948 (= (singletonSeq!2082 separatorToken!152) lt!940757)))

(declare-fun b!2671137 () Bool)

(assert (=> b!2671137 (= e!1683505 (isBalanced!2908 (c!430511 lt!940757)))))

(assert (= (and d!763948 res!1123063) b!2671137))

(declare-fun m!3037523 () Bool)

(assert (=> d!763948 m!3037523))

(declare-fun m!3037525 () Bool)

(assert (=> d!763948 m!3037525))

(declare-fun m!3037527 () Bool)

(assert (=> b!2671137 m!3037527))

(assert (=> d!763664 d!763948))

(declare-fun d!763950 () Bool)

(declare-fun list!11594 (Conc!9599) List!30802)

(assert (=> d!763950 (= (list!11590 (_1!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152))))) (list!11594 (c!430511 (_1!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)))))))))

(declare-fun bs!479502 () Bool)

(assert (= bs!479502 d!763950))

(declare-fun m!3037529 () Bool)

(assert (=> bs!479502 m!3037529))

(assert (=> d!763664 d!763950))

(assert (=> d!763664 d!763656))

(declare-fun d!763952 () Bool)

(assert (=> d!763952 (= (list!11590 (singletonSeq!2082 separatorToken!152)) (list!11594 (c!430511 (singletonSeq!2082 separatorToken!152))))))

(declare-fun bs!479503 () Bool)

(assert (= bs!479503 d!763952))

(declare-fun m!3037531 () Bool)

(assert (=> bs!479503 m!3037531))

(assert (=> d!763664 d!763952))

(declare-fun d!763954 () Bool)

(assert (=> d!763954 (= (inv!41709 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))) (isBalanced!2910 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))))))

(declare-fun bs!479504 () Bool)

(assert (= bs!479504 d!763954))

(declare-fun m!3037533 () Bool)

(assert (=> bs!479504 m!3037533))

(assert (=> tb!149629 d!763954))

(declare-fun d!763956 () Bool)

(assert (=> d!763956 (= (list!11587 call!172451) (list!11591 (c!430458 call!172451)))))

(declare-fun bs!479505 () Bool)

(assert (= bs!479505 d!763956))

(declare-fun m!3037535 () Bool)

(assert (=> bs!479505 m!3037535))

(assert (=> b!2670705 d!763956))

(declare-fun d!763958 () Bool)

(declare-fun lt!940760 () Bool)

(assert (=> d!763958 (= lt!940760 (isEmpty!17563 (list!11587 (_2!17632 lt!940516))))))

(declare-fun isEmpty!17569 (Conc!9597) Bool)

(assert (=> d!763958 (= lt!940760 (isEmpty!17569 (c!430458 (_2!17632 lt!940516))))))

(assert (=> d!763958 (= (isEmpty!17562 (_2!17632 lt!940516)) lt!940760)))

(declare-fun bs!479506 () Bool)

(assert (= bs!479506 d!763958))

(declare-fun m!3037537 () Bool)

(assert (=> bs!479506 m!3037537))

(assert (=> bs!479506 m!3037537))

(declare-fun m!3037539 () Bool)

(assert (=> bs!479506 m!3037539))

(declare-fun m!3037541 () Bool)

(assert (=> bs!479506 m!3037541))

(assert (=> b!2670542 d!763958))

(declare-fun d!763960 () Bool)

(assert (=> d!763960 (= (inv!41701 (tag!5185 (h!36121 (t!223170 rules!1712)))) (= (mod (str.len (value!151069 (tag!5185 (h!36121 (t!223170 rules!1712))))) 2) 0))))

(assert (=> b!2670769 d!763960))

(declare-fun d!763962 () Bool)

(declare-fun res!1123064 () Bool)

(declare-fun e!1683506 () Bool)

(assert (=> d!763962 (=> (not res!1123064) (not e!1683506))))

(assert (=> d!763962 (= res!1123064 (semiInverseModEq!1940 (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toValue!6621 (transformation!4683 (h!36121 (t!223170 rules!1712))))))))

(assert (=> d!763962 (= (inv!41704 (transformation!4683 (h!36121 (t!223170 rules!1712)))) e!1683506)))

(declare-fun b!2671138 () Bool)

(assert (=> b!2671138 (= e!1683506 (equivClasses!1841 (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toValue!6621 (transformation!4683 (h!36121 (t!223170 rules!1712))))))))

(assert (= (and d!763962 res!1123064) b!2671138))

(declare-fun m!3037543 () Bool)

(assert (=> d!763962 m!3037543))

(declare-fun m!3037545 () Bool)

(assert (=> b!2671138 m!3037545))

(assert (=> b!2670769 d!763962))

(declare-fun d!763964 () Bool)

(assert (=> d!763964 (= (list!11587 (ite c!430498 call!172452 e!1683222)) (list!11591 (c!430458 (ite c!430498 call!172452 e!1683222))))))

(declare-fun bs!479507 () Bool)

(assert (= bs!479507 d!763964))

(declare-fun m!3037547 () Bool)

(assert (=> bs!479507 m!3037547))

(assert (=> bm!172445 d!763964))

(declare-fun bs!479508 () Bool)

(declare-fun d!763966 () Bool)

(assert (= bs!479508 (and d!763966 d!763850)))

(declare-fun lambda!99751 () Int)

(assert (=> bs!479508 (= (= (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (= lambda!99751 lambda!99742))))

(declare-fun bs!479509 () Bool)

(assert (= bs!479509 (and d!763966 d!763858)))

(assert (=> bs!479509 (= (= (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152)))) (= lambda!99751 lambda!99743))))

(assert (=> d!763966 true))

(assert (=> d!763966 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335))))) (dynLambda!13293 order!16849 lambda!99751))))

(assert (=> d!763966 (= (equivClasses!1841 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335))))) (Forall2!790 lambda!99751))))

(declare-fun bs!479510 () Bool)

(assert (= bs!479510 d!763966))

(declare-fun m!3037549 () Bool)

(assert (=> bs!479510 m!3037549))

(assert (=> b!2670757 d!763966))

(declare-fun d!763968 () Bool)

(declare-fun lt!940761 () Int)

(assert (=> d!763968 (>= lt!940761 0)))

(declare-fun e!1683507 () Int)

(assert (=> d!763968 (= lt!940761 e!1683507)))

(declare-fun c!430582 () Bool)

(assert (=> d!763968 (= c!430582 ((_ is Nil!30700) (originalCharacters!5449 separatorToken!152)))))

(assert (=> d!763968 (= (size!23749 (originalCharacters!5449 separatorToken!152)) lt!940761)))

(declare-fun b!2671139 () Bool)

(assert (=> b!2671139 (= e!1683507 0)))

(declare-fun b!2671140 () Bool)

(assert (=> b!2671140 (= e!1683507 (+ 1 (size!23749 (t!223169 (originalCharacters!5449 separatorToken!152)))))))

(assert (= (and d!763968 c!430582) b!2671139))

(assert (= (and d!763968 (not c!430582)) b!2671140))

(declare-fun m!3037551 () Bool)

(assert (=> b!2671140 m!3037551))

(assert (=> b!2670719 d!763968))

(assert (=> b!2670572 d!763686))

(declare-fun lt!940762 () BalanceConc!18808)

(declare-fun d!763970 () Bool)

(assert (=> d!763970 (= (list!11587 lt!940762) (originalCharacters!5449 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335)))))))

(assert (=> d!763970 (= lt!940762 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335)))))) (value!151070 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))))

(assert (=> d!763970 (= (charsOf!2948 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335)))) lt!940762)))

(declare-fun b_lambda!81357 () Bool)

(assert (=> (not b_lambda!81357) (not d!763970)))

(declare-fun t!223258 () Bool)

(declare-fun tb!149687 () Bool)

(assert (=> (and b!2670770 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))) t!223258) tb!149687))

(declare-fun b!2671141 () Bool)

(declare-fun tp!844370 () Bool)

(declare-fun e!1683508 () Bool)

(assert (=> b!2671141 (= e!1683508 (and (inv!41708 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335)))))) (value!151070 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))) tp!844370))))

(declare-fun result!184886 () Bool)

(assert (=> tb!149687 (= result!184886 (and (inv!41709 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335)))))) (value!151070 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335)))))) e!1683508))))

(assert (= tb!149687 b!2671141))

(declare-fun m!3037553 () Bool)

(assert (=> b!2671141 m!3037553))

(declare-fun m!3037555 () Bool)

(assert (=> tb!149687 m!3037555))

(assert (=> d!763970 t!223258))

(declare-fun b_and!197193 () Bool)

(assert (= b_and!197175 (and (=> t!223258 result!184886) b_and!197193)))

(declare-fun t!223260 () Bool)

(declare-fun tb!149689 () Bool)

(assert (=> (and b!2670419 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))) t!223260) tb!149689))

(declare-fun result!184888 () Bool)

(assert (= result!184888 result!184886))

(assert (=> d!763970 t!223260))

(declare-fun b_and!197195 () Bool)

(assert (= b_and!197179 (and (=> t!223260 result!184888) b_and!197195)))

(declare-fun t!223262 () Bool)

(declare-fun tb!149691 () Bool)

(assert (=> (and b!2670815 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))) t!223262) tb!149691))

(declare-fun result!184890 () Bool)

(assert (= result!184890 result!184886))

(assert (=> d!763970 t!223262))

(declare-fun b_and!197197 () Bool)

(assert (= b_and!197181 (and (=> t!223262 result!184890) b_and!197197)))

(declare-fun tb!149693 () Bool)

(declare-fun t!223264 () Bool)

(assert (=> (and b!2670415 (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))) t!223264) tb!149693))

(declare-fun result!184892 () Bool)

(assert (= result!184892 result!184886))

(assert (=> d!763970 t!223264))

(declare-fun b_and!197199 () Bool)

(assert (= b_and!197173 (and (=> t!223264 result!184892) b_and!197199)))

(declare-fun t!223266 () Bool)

(declare-fun tb!149695 () Bool)

(assert (=> (and b!2670424 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))) t!223266) tb!149695))

(declare-fun result!184894 () Bool)

(assert (= result!184894 result!184886))

(assert (=> d!763970 t!223266))

(declare-fun b_and!197201 () Bool)

(assert (= b_and!197177 (and (=> t!223266 result!184894) b_and!197201)))

(declare-fun m!3037557 () Bool)

(assert (=> d!763970 m!3037557))

(declare-fun m!3037559 () Bool)

(assert (=> d!763970 m!3037559))

(assert (=> bm!172446 d!763970))

(declare-fun b!2671144 () Bool)

(declare-fun res!1123066 () Bool)

(declare-fun e!1683510 () Bool)

(assert (=> b!2671144 (=> (not res!1123066) (not e!1683510))))

(declare-fun lt!940763 () List!30800)

(assert (=> b!2671144 (= res!1123066 (= (size!23749 lt!940763) (+ (size!23749 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335))))) (size!23749 lt!940568))))))

(declare-fun b!2671142 () Bool)

(declare-fun e!1683509 () List!30800)

(assert (=> b!2671142 (= e!1683509 lt!940568)))

(declare-fun b!2671143 () Bool)

(assert (=> b!2671143 (= e!1683509 (Cons!30700 (h!36120 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335))))) (++!7487 (t!223169 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335))))) lt!940568)))))

(declare-fun b!2671145 () Bool)

(assert (=> b!2671145 (= e!1683510 (or (not (= lt!940568 Nil!30700)) (= lt!940763 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))))))))

(declare-fun d!763972 () Bool)

(assert (=> d!763972 e!1683510))

(declare-fun res!1123065 () Bool)

(assert (=> d!763972 (=> (not res!1123065) (not e!1683510))))

(assert (=> d!763972 (= res!1123065 (= (content!4359 lt!940763) ((_ map or) (content!4359 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335))))) (content!4359 lt!940568))))))

(assert (=> d!763972 (= lt!940763 e!1683509)))

(declare-fun c!430583 () Bool)

(assert (=> d!763972 (= c!430583 ((_ is Nil!30700) (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335))))))))

(assert (=> d!763972 (= (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568) lt!940763)))

(assert (= (and d!763972 c!430583) b!2671142))

(assert (= (and d!763972 (not c!430583)) b!2671143))

(assert (= (and d!763972 res!1123065) b!2671144))

(assert (= (and b!2671144 res!1123066) b!2671145))

(declare-fun m!3037561 () Bool)

(assert (=> b!2671144 m!3037561))

(assert (=> b!2671144 m!3036801))

(declare-fun m!3037563 () Bool)

(assert (=> b!2671144 m!3037563))

(assert (=> b!2671144 m!3037379))

(declare-fun m!3037565 () Bool)

(assert (=> b!2671143 m!3037565))

(declare-fun m!3037567 () Bool)

(assert (=> d!763972 m!3037567))

(assert (=> d!763972 m!3036801))

(declare-fun m!3037569 () Bool)

(assert (=> d!763972 m!3037569))

(assert (=> d!763972 m!3037389))

(assert (=> b!2670710 d!763972))

(declare-fun d!763974 () Bool)

(assert (=> d!763974 (dynLambda!13290 lambda!99723 (h!36122 (t!223171 l!4335)))))

(declare-fun lt!940764 () Unit!44917)

(assert (=> d!763974 (= lt!940764 (choose!15835 (t!223171 l!4335) lambda!99723 (h!36122 (t!223171 l!4335))))))

(declare-fun e!1683511 () Bool)

(assert (=> d!763974 e!1683511))

(declare-fun res!1123067 () Bool)

(assert (=> d!763974 (=> (not res!1123067) (not e!1683511))))

(assert (=> d!763974 (= res!1123067 (forall!6496 (t!223171 l!4335) lambda!99723))))

(assert (=> d!763974 (= (forallContained!1025 (t!223171 l!4335) lambda!99723 (h!36122 (t!223171 l!4335))) lt!940764)))

(declare-fun b!2671146 () Bool)

(assert (=> b!2671146 (= e!1683511 (contains!5891 (t!223171 l!4335) (h!36122 (t!223171 l!4335))))))

(assert (= (and d!763974 res!1123067) b!2671146))

(declare-fun b_lambda!81359 () Bool)

(assert (=> (not b_lambda!81359) (not d!763974)))

(declare-fun m!3037571 () Bool)

(assert (=> d!763974 m!3037571))

(declare-fun m!3037573 () Bool)

(assert (=> d!763974 m!3037573))

(declare-fun m!3037575 () Bool)

(assert (=> d!763974 m!3037575))

(declare-fun m!3037577 () Bool)

(assert (=> b!2671146 m!3037577))

(assert (=> b!2670710 d!763974))

(declare-fun d!763976 () Bool)

(assert (=> d!763976 (= (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) (list!11591 (c!430458 (charsOf!2948 (h!36122 (t!223171 l!4335))))))))

(declare-fun bs!479511 () Bool)

(assert (= bs!479511 d!763976))

(declare-fun m!3037579 () Bool)

(assert (=> bs!479511 m!3037579))

(assert (=> b!2670710 d!763976))

(declare-fun d!763978 () Bool)

(declare-fun lt!940765 () BalanceConc!18808)

(assert (=> d!763978 (= (list!11587 lt!940765) (originalCharacters!5449 (h!36122 (t!223171 l!4335))))))

(assert (=> d!763978 (= lt!940765 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))) (value!151070 (h!36122 (t!223171 l!4335)))))))

(assert (=> d!763978 (= (charsOf!2948 (h!36122 (t!223171 l!4335))) lt!940765)))

(declare-fun b_lambda!81361 () Bool)

(assert (=> (not b_lambda!81361) (not d!763978)))

(assert (=> d!763978 t!223242))

(declare-fun b_and!197203 () Bool)

(assert (= b_and!197201 (and (=> t!223242 result!184870) b_and!197203)))

(assert (=> d!763978 t!223244))

(declare-fun b_and!197205 () Bool)

(assert (= b_and!197195 (and (=> t!223244 result!184872) b_and!197205)))

(assert (=> d!763978 t!223240))

(declare-fun b_and!197207 () Bool)

(assert (= b_and!197193 (and (=> t!223240 result!184868) b_and!197207)))

(assert (=> d!763978 t!223238))

(declare-fun b_and!197209 () Bool)

(assert (= b_and!197199 (and (=> t!223238 result!184866) b_and!197209)))

(assert (=> d!763978 t!223246))

(declare-fun b_and!197211 () Bool)

(assert (= b_and!197197 (and (=> t!223246 result!184874) b_and!197211)))

(declare-fun m!3037581 () Bool)

(assert (=> d!763978 m!3037581))

(assert (=> d!763978 m!3037209))

(assert (=> b!2670710 d!763978))

(declare-fun b!2671165 () Bool)

(declare-fun res!1123086 () Bool)

(declare-fun e!1683519 () Bool)

(assert (=> b!2671165 (=> (not res!1123086) (not e!1683519))))

(declare-fun lt!940780 () Option!6074)

(assert (=> b!2671165 (= res!1123086 (= (list!11587 (charsOf!2948 (_1!17633 (get!9657 lt!940780)))) (originalCharacters!5449 (_1!17633 (get!9657 lt!940780)))))))

(declare-fun d!763980 () Bool)

(declare-fun e!1683520 () Bool)

(assert (=> d!763980 e!1683520))

(declare-fun res!1123084 () Bool)

(assert (=> d!763980 (=> res!1123084 e!1683520)))

(assert (=> d!763980 (= res!1123084 (isEmpty!17564 lt!940780))))

(declare-fun e!1683518 () Option!6074)

(assert (=> d!763980 (= lt!940780 e!1683518)))

(declare-fun c!430586 () Bool)

(assert (=> d!763980 (= c!430586 (and ((_ is Cons!30701) rules!1712) ((_ is Nil!30701) (t!223170 rules!1712))))))

(declare-fun lt!940779 () Unit!44917)

(declare-fun lt!940778 () Unit!44917)

(assert (=> d!763980 (= lt!940779 lt!940778)))

(assert (=> d!763980 (isPrefix!2450 (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568) (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568))))

(declare-fun lemmaIsPrefixRefl!1577 (List!30800 List!30800) Unit!44917)

(assert (=> d!763980 (= lt!940778 (lemmaIsPrefixRefl!1577 (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568) (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568)))))

(assert (=> d!763980 (rulesValidInductive!1629 thiss!14116 rules!1712)))

(assert (=> d!763980 (= (maxPrefix!2322 thiss!14116 rules!1712 (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568)) lt!940780)))

(declare-fun b!2671166 () Bool)

(assert (=> b!2671166 (= e!1683520 e!1683519)))

(declare-fun res!1123082 () Bool)

(assert (=> b!2671166 (=> (not res!1123082) (not e!1683519))))

(assert (=> b!2671166 (= res!1123082 (isDefined!4831 lt!940780))))

(declare-fun b!2671167 () Bool)

(declare-fun lt!940776 () Option!6074)

(declare-fun lt!940777 () Option!6074)

(assert (=> b!2671167 (= e!1683518 (ite (and ((_ is None!6073) lt!940776) ((_ is None!6073) lt!940777)) None!6073 (ite ((_ is None!6073) lt!940777) lt!940776 (ite ((_ is None!6073) lt!940776) lt!940777 (ite (>= (size!23745 (_1!17633 (v!32604 lt!940776))) (size!23745 (_1!17633 (v!32604 lt!940777)))) lt!940776 lt!940777)))))))

(declare-fun call!172469 () Option!6074)

(assert (=> b!2671167 (= lt!940776 call!172469)))

(assert (=> b!2671167 (= lt!940777 (maxPrefix!2322 thiss!14116 (t!223170 rules!1712) (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568)))))

(declare-fun b!2671168 () Bool)

(declare-fun res!1123083 () Bool)

(assert (=> b!2671168 (=> (not res!1123083) (not e!1683519))))

(assert (=> b!2671168 (= res!1123083 (= (++!7487 (list!11587 (charsOf!2948 (_1!17633 (get!9657 lt!940780)))) (_2!17633 (get!9657 lt!940780))) (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568)))))

(declare-fun b!2671169 () Bool)

(declare-fun res!1123088 () Bool)

(assert (=> b!2671169 (=> (not res!1123088) (not e!1683519))))

(assert (=> b!2671169 (= res!1123088 (matchR!3621 (regex!4683 (rule!7089 (_1!17633 (get!9657 lt!940780)))) (list!11587 (charsOf!2948 (_1!17633 (get!9657 lt!940780))))))))

(declare-fun b!2671170 () Bool)

(declare-fun contains!5894 (List!30801 Rule!9166) Bool)

(assert (=> b!2671170 (= e!1683519 (contains!5894 rules!1712 (rule!7089 (_1!17633 (get!9657 lt!940780)))))))

(declare-fun b!2671171 () Bool)

(declare-fun res!1123085 () Bool)

(assert (=> b!2671171 (=> (not res!1123085) (not e!1683519))))

(declare-fun apply!7363 (TokenValueInjection!9250 BalanceConc!18808) TokenValue!4905)

(assert (=> b!2671171 (= res!1123085 (= (value!151070 (_1!17633 (get!9657 lt!940780))) (apply!7363 (transformation!4683 (rule!7089 (_1!17633 (get!9657 lt!940780)))) (seqFromList!3194 (originalCharacters!5449 (_1!17633 (get!9657 lt!940780)))))))))

(declare-fun bm!172464 () Bool)

(assert (=> bm!172464 (= call!172469 (maxPrefixOneRule!1479 thiss!14116 (h!36121 rules!1712) (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568)))))

(declare-fun b!2671172 () Bool)

(assert (=> b!2671172 (= e!1683518 call!172469)))

(declare-fun b!2671173 () Bool)

(declare-fun res!1123087 () Bool)

(assert (=> b!2671173 (=> (not res!1123087) (not e!1683519))))

(assert (=> b!2671173 (= res!1123087 (< (size!23749 (_2!17633 (get!9657 lt!940780))) (size!23749 (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 l!4335)))) lt!940568))))))

(assert (= (and d!763980 c!430586) b!2671172))

(assert (= (and d!763980 (not c!430586)) b!2671167))

(assert (= (or b!2671172 b!2671167) bm!172464))

(assert (= (and d!763980 (not res!1123084)) b!2671166))

(assert (= (and b!2671166 res!1123082) b!2671165))

(assert (= (and b!2671165 res!1123086) b!2671173))

(assert (= (and b!2671173 res!1123087) b!2671168))

(assert (= (and b!2671168 res!1123083) b!2671171))

(assert (= (and b!2671171 res!1123085) b!2671169))

(assert (= (and b!2671169 res!1123088) b!2671170))

(declare-fun m!3037583 () Bool)

(assert (=> b!2671171 m!3037583))

(declare-fun m!3037585 () Bool)

(assert (=> b!2671171 m!3037585))

(assert (=> b!2671171 m!3037585))

(declare-fun m!3037587 () Bool)

(assert (=> b!2671171 m!3037587))

(declare-fun m!3037589 () Bool)

(assert (=> d!763980 m!3037589))

(assert (=> d!763980 m!3036803))

(assert (=> d!763980 m!3036803))

(declare-fun m!3037591 () Bool)

(assert (=> d!763980 m!3037591))

(assert (=> d!763980 m!3036803))

(assert (=> d!763980 m!3036803))

(declare-fun m!3037593 () Bool)

(assert (=> d!763980 m!3037593))

(assert (=> d!763980 m!3036521))

(declare-fun m!3037595 () Bool)

(assert (=> b!2671166 m!3037595))

(assert (=> b!2671165 m!3037583))

(declare-fun m!3037597 () Bool)

(assert (=> b!2671165 m!3037597))

(assert (=> b!2671165 m!3037597))

(declare-fun m!3037599 () Bool)

(assert (=> b!2671165 m!3037599))

(assert (=> b!2671167 m!3036803))

(declare-fun m!3037601 () Bool)

(assert (=> b!2671167 m!3037601))

(assert (=> b!2671169 m!3037583))

(assert (=> b!2671169 m!3037597))

(assert (=> b!2671169 m!3037597))

(assert (=> b!2671169 m!3037599))

(assert (=> b!2671169 m!3037599))

(declare-fun m!3037603 () Bool)

(assert (=> b!2671169 m!3037603))

(assert (=> bm!172464 m!3036803))

(declare-fun m!3037605 () Bool)

(assert (=> bm!172464 m!3037605))

(assert (=> b!2671168 m!3037583))

(assert (=> b!2671168 m!3037597))

(assert (=> b!2671168 m!3037597))

(assert (=> b!2671168 m!3037599))

(assert (=> b!2671168 m!3037599))

(declare-fun m!3037607 () Bool)

(assert (=> b!2671168 m!3037607))

(assert (=> b!2671170 m!3037583))

(declare-fun m!3037609 () Bool)

(assert (=> b!2671170 m!3037609))

(assert (=> b!2671173 m!3037583))

(declare-fun m!3037611 () Bool)

(assert (=> b!2671173 m!3037611))

(assert (=> b!2671173 m!3036803))

(declare-fun m!3037613 () Bool)

(assert (=> b!2671173 m!3037613))

(assert (=> b!2670710 d!763980))

(declare-fun bs!479512 () Bool)

(declare-fun b!2671183 () Bool)

(assert (= bs!479512 (and b!2671183 d!763718)))

(declare-fun lambda!99752 () Int)

(assert (=> bs!479512 (= lambda!99752 lambda!99726)))

(declare-fun bs!479513 () Bool)

(assert (= bs!479513 (and b!2671183 d!763736)))

(assert (=> bs!479513 (= lambda!99752 lambda!99727)))

(declare-fun bs!479514 () Bool)

(assert (= bs!479514 (and b!2671183 b!2670710)))

(assert (=> bs!479514 (= lambda!99752 lambda!99723)))

(declare-fun bs!479515 () Bool)

(assert (= bs!479515 (and b!2671183 b!2670409)))

(assert (=> bs!479515 (= lambda!99752 lambda!99708)))

(declare-fun bs!479516 () Bool)

(assert (= bs!479516 (and b!2671183 b!2670413)))

(assert (=> bs!479516 (not (= lambda!99752 lambda!99707))))

(declare-fun b!2671186 () Bool)

(declare-fun e!1683528 () Bool)

(assert (=> b!2671186 (= e!1683528 true)))

(declare-fun b!2671185 () Bool)

(declare-fun e!1683527 () Bool)

(assert (=> b!2671185 (= e!1683527 e!1683528)))

(declare-fun b!2671184 () Bool)

(declare-fun e!1683526 () Bool)

(assert (=> b!2671184 (= e!1683526 e!1683527)))

(assert (=> b!2671183 e!1683526))

(assert (= b!2671185 b!2671186))

(assert (= b!2671184 b!2671185))

(assert (= (and b!2671183 ((_ is Cons!30701) rules!1712)) b!2671184))

(assert (=> b!2671186 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99752))))

(assert (=> b!2671186 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 rules!1712)))) (dynLambda!13285 order!16841 lambda!99752))))

(assert (=> b!2671183 true))

(declare-fun b!2671174 () Bool)

(declare-fun e!1683521 () List!30800)

(declare-fun lt!940783 () List!30800)

(assert (=> b!2671174 (= e!1683521 lt!940783)))

(declare-fun bm!172465 () Bool)

(declare-fun call!172474 () BalanceConc!18808)

(assert (=> bm!172465 (= call!172474 (charsOf!2948 (h!36122 (t!223171 (t!223171 l!4335)))))))

(declare-fun b!2671175 () Bool)

(declare-fun e!1683525 () List!30800)

(declare-fun call!172472 () List!30800)

(assert (=> b!2671175 (= e!1683525 (++!7487 call!172472 lt!940783))))

(declare-fun b!2671176 () Bool)

(declare-fun e!1683523 () BalanceConc!18808)

(assert (=> b!2671176 (= e!1683523 call!172474)))

(declare-fun b!2671177 () Bool)

(declare-fun c!430587 () Bool)

(declare-fun lt!940784 () Option!6074)

(assert (=> b!2671177 (= c!430587 (and ((_ is Some!6073) lt!940784) (not (= (_1!17633 (v!32604 lt!940784)) (h!36122 (t!223171 (t!223171 l!4335)))))))))

(declare-fun e!1683524 () List!30800)

(assert (=> b!2671177 (= e!1683524 e!1683525)))

(declare-fun b!2671178 () Bool)

(declare-fun call!172473 () BalanceConc!18808)

(assert (=> b!2671178 (= e!1683521 (list!11587 call!172473))))

(declare-fun b!2671179 () Bool)

(assert (=> b!2671179 (= e!1683524 call!172472)))

(declare-fun call!172471 () List!30800)

(declare-fun c!430588 () Bool)

(declare-fun bm!172467 () Bool)

(assert (=> bm!172467 (= call!172471 (list!11587 (ite c!430588 call!172474 e!1683523)))))

(declare-fun b!2671180 () Bool)

(assert (=> b!2671180 (= e!1683523 call!172473)))

(declare-fun b!2671181 () Bool)

(declare-fun e!1683522 () List!30800)

(assert (=> b!2671181 (= e!1683522 Nil!30700)))

(declare-fun d!763982 () Bool)

(declare-fun c!430589 () Bool)

(assert (=> d!763982 (= c!430589 ((_ is Cons!30702) (t!223171 (t!223171 l!4335))))))

(assert (=> d!763982 (= (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 (t!223171 l!4335)) separatorToken!152) e!1683522)))

(declare-fun bm!172466 () Bool)

(declare-fun c!430591 () Bool)

(assert (=> bm!172466 (= c!430591 c!430588)))

(declare-fun call!172470 () List!30800)

(assert (=> bm!172466 (= call!172472 (++!7487 (ite c!430588 call!172471 call!172470) e!1683521))))

(declare-fun bm!172468 () Bool)

(assert (=> bm!172468 (= call!172473 (charsOf!2948 (ite c!430587 separatorToken!152 (h!36122 (t!223171 (t!223171 l!4335))))))))

(declare-fun b!2671182 () Bool)

(assert (=> b!2671182 (= e!1683525 Nil!30700)))

(assert (=> b!2671182 (= (print!1663 thiss!14116 (singletonSeq!2082 (h!36122 (t!223171 (t!223171 l!4335))))) (printTailRec!1139 thiss!14116 (singletonSeq!2082 (h!36122 (t!223171 (t!223171 l!4335)))) 0 (BalanceConc!18809 Empty!9597)))))

(declare-fun lt!940782 () Unit!44917)

(declare-fun Unit!44927 () Unit!44917)

(assert (=> b!2671182 (= lt!940782 Unit!44927)))

(declare-fun lt!940785 () Unit!44917)

(assert (=> b!2671182 (= lt!940785 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!815 thiss!14116 rules!1712 call!172470 lt!940783))))

(assert (=> b!2671182 false))

(declare-fun lt!940786 () Unit!44917)

(declare-fun Unit!44928 () Unit!44917)

(assert (=> b!2671182 (= lt!940786 Unit!44928)))

(assert (=> b!2671183 (= e!1683522 e!1683524)))

(declare-fun lt!940781 () Unit!44917)

(assert (=> b!2671183 (= lt!940781 (forallContained!1025 (t!223171 (t!223171 l!4335)) lambda!99752 (h!36122 (t!223171 (t!223171 l!4335)))))))

(assert (=> b!2671183 (= lt!940783 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 (t!223171 (t!223171 l!4335))) separatorToken!152))))

(assert (=> b!2671183 (= lt!940784 (maxPrefix!2322 thiss!14116 rules!1712 (++!7487 (list!11587 (charsOf!2948 (h!36122 (t!223171 (t!223171 l!4335))))) lt!940783)))))

(assert (=> b!2671183 (= c!430588 (and ((_ is Some!6073) lt!940784) (= (_1!17633 (v!32604 lt!940784)) (h!36122 (t!223171 (t!223171 l!4335))))))))

(declare-fun bm!172469 () Bool)

(assert (=> bm!172469 (= call!172470 call!172471)))

(declare-fun c!430590 () Bool)

(assert (=> bm!172469 (= c!430590 c!430587)))

(assert (= (and d!763982 c!430589) b!2671183))

(assert (= (and d!763982 (not c!430589)) b!2671181))

(assert (= (and b!2671183 c!430588) b!2671179))

(assert (= (and b!2671183 (not c!430588)) b!2671177))

(assert (= (and b!2671177 c!430587) b!2671175))

(assert (= (and b!2671177 (not c!430587)) b!2671182))

(assert (= (or b!2671175 b!2671182) bm!172468))

(assert (= (or b!2671175 b!2671182) bm!172469))

(assert (= (and bm!172469 c!430590) b!2671176))

(assert (= (and bm!172469 (not c!430590)) b!2671180))

(assert (= (or b!2671179 b!2671176) bm!172465))

(assert (= (or b!2671179 bm!172469) bm!172467))

(assert (= (or b!2671179 b!2671175) bm!172466))

(assert (= (and bm!172466 c!430591) b!2671174))

(assert (= (and bm!172466 (not c!430591)) b!2671178))

(declare-fun m!3037615 () Bool)

(assert (=> bm!172466 m!3037615))

(declare-fun m!3037617 () Bool)

(assert (=> b!2671178 m!3037617))

(declare-fun m!3037619 () Bool)

(assert (=> b!2671182 m!3037619))

(assert (=> b!2671182 m!3037619))

(declare-fun m!3037621 () Bool)

(assert (=> b!2671182 m!3037621))

(assert (=> b!2671182 m!3037619))

(declare-fun m!3037623 () Bool)

(assert (=> b!2671182 m!3037623))

(declare-fun m!3037625 () Bool)

(assert (=> b!2671182 m!3037625))

(declare-fun m!3037627 () Bool)

(assert (=> bm!172467 m!3037627))

(declare-fun m!3037629 () Bool)

(assert (=> bm!172468 m!3037629))

(declare-fun m!3037631 () Bool)

(assert (=> b!2671183 m!3037631))

(declare-fun m!3037633 () Bool)

(assert (=> b!2671183 m!3037633))

(declare-fun m!3037635 () Bool)

(assert (=> b!2671183 m!3037635))

(assert (=> b!2671183 m!3037633))

(declare-fun m!3037637 () Bool)

(assert (=> b!2671183 m!3037637))

(declare-fun m!3037639 () Bool)

(assert (=> b!2671183 m!3037639))

(declare-fun m!3037641 () Bool)

(assert (=> b!2671183 m!3037641))

(assert (=> b!2671183 m!3037639))

(assert (=> b!2671183 m!3037631))

(declare-fun m!3037643 () Bool)

(assert (=> b!2671175 m!3037643))

(assert (=> bm!172465 m!3037639))

(assert (=> b!2670710 d!763982))

(declare-fun d!763984 () Bool)

(assert (=> d!763984 (= (isEmpty!17563 (originalCharacters!5449 separatorToken!152)) ((_ is Nil!30700) (originalCharacters!5449 separatorToken!152)))))

(assert (=> d!763710 d!763984))

(declare-fun bs!479517 () Bool)

(declare-fun d!763986 () Bool)

(assert (= bs!479517 (and d!763986 d!763876)))

(declare-fun lambda!99753 () Int)

(assert (=> bs!479517 (= (and (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (h!36121 rules!1712)))) (= (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152))) (toValue!6621 (transformation!4683 (h!36121 rules!1712))))) (= lambda!99753 lambda!99747))))

(assert (=> d!763986 true))

(assert (=> d!763986 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) (dynLambda!13295 order!16851 lambda!99753))))

(assert (=> d!763986 true))

(assert (=> d!763986 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152)))) (dynLambda!13295 order!16851 lambda!99753))))

(assert (=> d!763986 (= (semiInverseModEq!1940 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152)))) (Forall!1192 lambda!99753))))

(declare-fun bs!479518 () Bool)

(assert (= bs!479518 d!763986))

(declare-fun m!3037645 () Bool)

(assert (=> bs!479518 m!3037645))

(assert (=> d!763722 d!763986))

(declare-fun b!2671195 () Bool)

(declare-fun e!1683533 () List!30800)

(assert (=> b!2671195 (= e!1683533 Nil!30700)))

(declare-fun b!2671197 () Bool)

(declare-fun e!1683534 () List!30800)

(declare-fun list!11595 (IArray!19199) List!30800)

(assert (=> b!2671197 (= e!1683534 (list!11595 (xs!12627 (c!430458 (charsOf!2948 (h!36122 l!4335))))))))

(declare-fun b!2671196 () Bool)

(assert (=> b!2671196 (= e!1683533 e!1683534)))

(declare-fun c!430597 () Bool)

(assert (=> b!2671196 (= c!430597 ((_ is Leaf!14679) (c!430458 (charsOf!2948 (h!36122 l!4335)))))))

(declare-fun d!763988 () Bool)

(declare-fun c!430596 () Bool)

(assert (=> d!763988 (= c!430596 ((_ is Empty!9597) (c!430458 (charsOf!2948 (h!36122 l!4335)))))))

(assert (=> d!763988 (= (list!11591 (c!430458 (charsOf!2948 (h!36122 l!4335)))) e!1683533)))

(declare-fun b!2671198 () Bool)

(assert (=> b!2671198 (= e!1683534 (++!7487 (list!11591 (left!23742 (c!430458 (charsOf!2948 (h!36122 l!4335))))) (list!11591 (right!24072 (c!430458 (charsOf!2948 (h!36122 l!4335)))))))))

(assert (= (and d!763988 c!430596) b!2671195))

(assert (= (and d!763988 (not c!430596)) b!2671196))

(assert (= (and b!2671196 c!430597) b!2671197))

(assert (= (and b!2671196 (not c!430597)) b!2671198))

(declare-fun m!3037647 () Bool)

(assert (=> b!2671197 m!3037647))

(declare-fun m!3037649 () Bool)

(assert (=> b!2671198 m!3037649))

(declare-fun m!3037651 () Bool)

(assert (=> b!2671198 m!3037651))

(assert (=> b!2671198 m!3037649))

(assert (=> b!2671198 m!3037651))

(declare-fun m!3037653 () Bool)

(assert (=> b!2671198 m!3037653))

(assert (=> d!763696 d!763988))

(declare-fun d!763990 () Bool)

(assert (=> d!763990 (dynLambda!13290 lambda!99708 (h!36122 l!4335))))

(assert (=> d!763990 true))

(declare-fun _$7!979 () Unit!44917)

(assert (=> d!763990 (= (choose!15835 l!4335 lambda!99708 (h!36122 l!4335)) _$7!979)))

(declare-fun b_lambda!81363 () Bool)

(assert (=> (not b_lambda!81363) (not d!763990)))

(declare-fun bs!479519 () Bool)

(assert (= bs!479519 d!763990))

(assert (=> bs!479519 m!3036713))

(assert (=> d!763692 d!763990))

(declare-fun d!763992 () Bool)

(declare-fun res!1123089 () Bool)

(declare-fun e!1683535 () Bool)

(assert (=> d!763992 (=> res!1123089 e!1683535)))

(assert (=> d!763992 (= res!1123089 ((_ is Nil!30702) l!4335))))

(assert (=> d!763992 (= (forall!6496 l!4335 lambda!99708) e!1683535)))

(declare-fun b!2671199 () Bool)

(declare-fun e!1683536 () Bool)

(assert (=> b!2671199 (= e!1683535 e!1683536)))

(declare-fun res!1123090 () Bool)

(assert (=> b!2671199 (=> (not res!1123090) (not e!1683536))))

(assert (=> b!2671199 (= res!1123090 (dynLambda!13290 lambda!99708 (h!36122 l!4335)))))

(declare-fun b!2671200 () Bool)

(assert (=> b!2671200 (= e!1683536 (forall!6496 (t!223171 l!4335) lambda!99708))))

(assert (= (and d!763992 (not res!1123089)) b!2671199))

(assert (= (and b!2671199 res!1123090) b!2671200))

(declare-fun b_lambda!81365 () Bool)

(assert (=> (not b_lambda!81365) (not b!2671199)))

(assert (=> b!2671199 m!3036713))

(declare-fun m!3037655 () Bool)

(assert (=> b!2671200 m!3037655))

(assert (=> d!763692 d!763992))

(declare-fun d!763994 () Bool)

(assert (=> d!763994 (= (list!11587 lt!940523) (list!11591 (c!430458 lt!940523)))))

(declare-fun bs!479520 () Bool)

(assert (= bs!479520 d!763994))

(declare-fun m!3037657 () Bool)

(assert (=> bs!479520 m!3037657))

(assert (=> d!763688 d!763994))

(declare-fun d!763996 () Bool)

(declare-fun res!1123095 () Bool)

(declare-fun e!1683539 () Bool)

(assert (=> d!763996 (=> (not res!1123095) (not e!1683539))))

(declare-fun validRegex!3297 (Regex!7827) Bool)

(assert (=> d!763996 (= res!1123095 (validRegex!3297 (regex!4683 (h!36121 rules!1712))))))

(assert (=> d!763996 (= (ruleValid!1551 thiss!14116 (h!36121 rules!1712)) e!1683539)))

(declare-fun b!2671205 () Bool)

(declare-fun res!1123096 () Bool)

(assert (=> b!2671205 (=> (not res!1123096) (not e!1683539))))

(declare-fun nullable!2588 (Regex!7827) Bool)

(assert (=> b!2671205 (= res!1123096 (not (nullable!2588 (regex!4683 (h!36121 rules!1712)))))))

(declare-fun b!2671206 () Bool)

(assert (=> b!2671206 (= e!1683539 (not (= (tag!5185 (h!36121 rules!1712)) (String!34410 ""))))))

(assert (= (and d!763996 res!1123095) b!2671205))

(assert (= (and b!2671205 res!1123096) b!2671206))

(declare-fun m!3037659 () Bool)

(assert (=> d!763996 m!3037659))

(declare-fun m!3037661 () Bool)

(assert (=> b!2671205 m!3037661))

(assert (=> b!2670581 d!763996))

(declare-fun b!2671207 () Bool)

(declare-fun e!1683540 () Bool)

(assert (=> b!2671207 (= e!1683540 (inv!16 (value!151070 (h!36122 (t!223171 l!4335)))))))

(declare-fun b!2671208 () Bool)

(declare-fun e!1683542 () Bool)

(assert (=> b!2671208 (= e!1683542 (inv!17 (value!151070 (h!36122 (t!223171 l!4335)))))))

(declare-fun d!763998 () Bool)

(declare-fun c!430598 () Bool)

(assert (=> d!763998 (= c!430598 ((_ is IntegerValue!14715) (value!151070 (h!36122 (t!223171 l!4335)))))))

(assert (=> d!763998 (= (inv!21 (value!151070 (h!36122 (t!223171 l!4335)))) e!1683540)))

(declare-fun b!2671209 () Bool)

(declare-fun res!1123097 () Bool)

(declare-fun e!1683541 () Bool)

(assert (=> b!2671209 (=> res!1123097 e!1683541)))

(assert (=> b!2671209 (= res!1123097 (not ((_ is IntegerValue!14717) (value!151070 (h!36122 (t!223171 l!4335))))))))

(assert (=> b!2671209 (= e!1683542 e!1683541)))

(declare-fun b!2671210 () Bool)

(assert (=> b!2671210 (= e!1683541 (inv!15 (value!151070 (h!36122 (t!223171 l!4335)))))))

(declare-fun b!2671211 () Bool)

(assert (=> b!2671211 (= e!1683540 e!1683542)))

(declare-fun c!430599 () Bool)

(assert (=> b!2671211 (= c!430599 ((_ is IntegerValue!14716) (value!151070 (h!36122 (t!223171 l!4335)))))))

(assert (= (and d!763998 c!430598) b!2671207))

(assert (= (and d!763998 (not c!430598)) b!2671211))

(assert (= (and b!2671211 c!430599) b!2671208))

(assert (= (and b!2671211 (not c!430599)) b!2671209))

(assert (= (and b!2671209 (not res!1123097)) b!2671210))

(declare-fun m!3037663 () Bool)

(assert (=> b!2671207 m!3037663))

(declare-fun m!3037665 () Bool)

(assert (=> b!2671208 m!3037665))

(declare-fun m!3037667 () Bool)

(assert (=> b!2671210 m!3037667))

(assert (=> b!2670813 d!763998))

(declare-fun d!764000 () Bool)

(declare-fun res!1123098 () Bool)

(declare-fun e!1683543 () Bool)

(assert (=> d!764000 (=> res!1123098 e!1683543)))

(assert (=> d!764000 (= res!1123098 (not ((_ is Cons!30701) (t!223170 rules!1712))))))

(assert (=> d!764000 (= (sepAndNonSepRulesDisjointChars!1256 rules!1712 (t!223170 rules!1712)) e!1683543)))

(declare-fun b!2671212 () Bool)

(declare-fun e!1683544 () Bool)

(assert (=> b!2671212 (= e!1683543 e!1683544)))

(declare-fun res!1123099 () Bool)

(assert (=> b!2671212 (=> (not res!1123099) (not e!1683544))))

(assert (=> b!2671212 (= res!1123099 (ruleDisjointCharsFromAllFromOtherType!547 (h!36121 (t!223170 rules!1712)) rules!1712))))

(declare-fun b!2671213 () Bool)

(assert (=> b!2671213 (= e!1683544 (sepAndNonSepRulesDisjointChars!1256 rules!1712 (t!223170 (t!223170 rules!1712))))))

(assert (= (and d!764000 (not res!1123098)) b!2671212))

(assert (= (and b!2671212 res!1123099) b!2671213))

(declare-fun m!3037669 () Bool)

(assert (=> b!2671212 m!3037669))

(declare-fun m!3037671 () Bool)

(assert (=> b!2671213 m!3037671))

(assert (=> b!2670498 d!764000))

(declare-fun d!764002 () Bool)

(declare-fun lt!940787 () Int)

(assert (=> d!764002 (>= lt!940787 0)))

(declare-fun e!1683545 () Int)

(assert (=> d!764002 (= lt!940787 e!1683545)))

(declare-fun c!430600 () Bool)

(assert (=> d!764002 (= c!430600 ((_ is Nil!30700) (originalCharacters!5449 (h!36122 l!4335))))))

(assert (=> d!764002 (= (size!23749 (originalCharacters!5449 (h!36122 l!4335))) lt!940787)))

(declare-fun b!2671214 () Bool)

(assert (=> b!2671214 (= e!1683545 0)))

(declare-fun b!2671215 () Bool)

(assert (=> b!2671215 (= e!1683545 (+ 1 (size!23749 (t!223169 (originalCharacters!5449 (h!36122 l!4335))))))))

(assert (= (and d!764002 c!430600) b!2671214))

(assert (= (and d!764002 (not c!430600)) b!2671215))

(declare-fun m!3037673 () Bool)

(assert (=> b!2671215 m!3037673))

(assert (=> b!2670759 d!764002))

(declare-fun d!764004 () Bool)

(declare-fun c!430601 () Bool)

(assert (=> d!764004 (= c!430601 ((_ is Node!9597) (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))))))

(declare-fun e!1683546 () Bool)

(assert (=> d!764004 (= (inv!41708 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))) e!1683546)))

(declare-fun b!2671216 () Bool)

(assert (=> b!2671216 (= e!1683546 (inv!41712 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))))))

(declare-fun b!2671217 () Bool)

(declare-fun e!1683547 () Bool)

(assert (=> b!2671217 (= e!1683546 e!1683547)))

(declare-fun res!1123100 () Bool)

(assert (=> b!2671217 (= res!1123100 (not ((_ is Leaf!14679) (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))))))))

(assert (=> b!2671217 (=> res!1123100 e!1683547)))

(declare-fun b!2671218 () Bool)

(assert (=> b!2671218 (= e!1683547 (inv!41713 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))))))

(assert (= (and d!764004 c!430601) b!2671216))

(assert (= (and d!764004 (not c!430601)) b!2671217))

(assert (= (and b!2671217 (not res!1123100)) b!2671218))

(declare-fun m!3037675 () Bool)

(assert (=> b!2671216 m!3037675))

(declare-fun m!3037677 () Bool)

(assert (=> b!2671218 m!3037677))

(assert (=> b!2670720 d!764004))

(declare-fun d!764006 () Bool)

(declare-fun charsToBigInt!1 (List!30799) Int)

(assert (=> d!764006 (= (inv!17 (value!151070 (h!36122 l!4335))) (= (charsToBigInt!1 (text!34783 (value!151070 (h!36122 l!4335)))) (value!151062 (value!151070 (h!36122 l!4335)))))))

(declare-fun bs!479521 () Bool)

(assert (= bs!479521 d!764006))

(declare-fun m!3037679 () Bool)

(assert (=> bs!479521 m!3037679))

(assert (=> b!2670743 d!764006))

(declare-fun d!764008 () Bool)

(declare-fun res!1123105 () Bool)

(declare-fun e!1683552 () Bool)

(assert (=> d!764008 (=> res!1123105 e!1683552)))

(assert (=> d!764008 (= res!1123105 ((_ is Nil!30701) rules!1712))))

(assert (=> d!764008 (= (forall!6498 rules!1712 lambda!99716) e!1683552)))

(declare-fun b!2671223 () Bool)

(declare-fun e!1683553 () Bool)

(assert (=> b!2671223 (= e!1683552 e!1683553)))

(declare-fun res!1123106 () Bool)

(assert (=> b!2671223 (=> (not res!1123106) (not e!1683553))))

(declare-fun dynLambda!13296 (Int Rule!9166) Bool)

(assert (=> b!2671223 (= res!1123106 (dynLambda!13296 lambda!99716 (h!36121 rules!1712)))))

(declare-fun b!2671224 () Bool)

(assert (=> b!2671224 (= e!1683553 (forall!6498 (t!223170 rules!1712) lambda!99716))))

(assert (= (and d!764008 (not res!1123105)) b!2671223))

(assert (= (and b!2671223 res!1123106) b!2671224))

(declare-fun b_lambda!81367 () Bool)

(assert (=> (not b_lambda!81367) (not b!2671223)))

(declare-fun m!3037681 () Bool)

(assert (=> b!2671223 m!3037681))

(declare-fun m!3037683 () Bool)

(assert (=> b!2671224 m!3037683))

(assert (=> d!763694 d!764008))

(assert (=> bm!172443 d!763978))

(declare-fun d!764010 () Bool)

(assert (=> d!764010 (= (inv!17 (value!151070 separatorToken!152)) (= (charsToBigInt!1 (text!34783 (value!151070 separatorToken!152))) (value!151062 (value!151070 separatorToken!152))))))

(declare-fun bs!479522 () Bool)

(assert (= bs!479522 d!764010))

(declare-fun m!3037685 () Bool)

(assert (=> bs!479522 m!3037685))

(assert (=> b!2670732 d!764010))

(declare-fun d!764012 () Bool)

(assert (=> d!764012 (= (inv!15 (value!151070 separatorToken!152)) (= (charsToBigInt!0 (text!34784 (value!151070 separatorToken!152)) 0) (value!151065 (value!151070 separatorToken!152))))))

(declare-fun bs!479523 () Bool)

(assert (= bs!479523 d!764012))

(declare-fun m!3037687 () Bool)

(assert (=> bs!479523 m!3037687))

(assert (=> b!2670734 d!764012))

(declare-fun d!764014 () Bool)

(declare-fun c!430604 () Bool)

(assert (=> d!764014 (= c!430604 ((_ is Nil!30702) l!4335))))

(declare-fun e!1683556 () (InoxSet Token!8836))

(assert (=> d!764014 (= (content!4358 l!4335) e!1683556)))

(declare-fun b!2671229 () Bool)

(assert (=> b!2671229 (= e!1683556 ((as const (Array Token!8836 Bool)) false))))

(declare-fun b!2671230 () Bool)

(assert (=> b!2671230 (= e!1683556 ((_ map or) (store ((as const (Array Token!8836 Bool)) false) (h!36122 l!4335) true) (content!4358 (t!223171 l!4335))))))

(assert (= (and d!764014 c!430604) b!2671229))

(assert (= (and d!764014 (not c!430604)) b!2671230))

(declare-fun m!3037689 () Bool)

(assert (=> b!2671230 m!3037689))

(declare-fun m!3037691 () Bool)

(assert (=> b!2671230 m!3037691))

(assert (=> d!763686 d!764014))

(declare-fun d!764016 () Bool)

(declare-fun res!1123107 () Bool)

(declare-fun e!1683557 () Bool)

(assert (=> d!764016 (=> res!1123107 e!1683557)))

(assert (=> d!764016 (= res!1123107 ((_ is Nil!30702) (t!223171 l!4335)))))

(assert (=> d!764016 (= (forall!6496 (t!223171 l!4335) lambda!99707) e!1683557)))

(declare-fun b!2671231 () Bool)

(declare-fun e!1683558 () Bool)

(assert (=> b!2671231 (= e!1683557 e!1683558)))

(declare-fun res!1123108 () Bool)

(assert (=> b!2671231 (=> (not res!1123108) (not e!1683558))))

(assert (=> b!2671231 (= res!1123108 (dynLambda!13290 lambda!99707 (h!36122 (t!223171 l!4335))))))

(declare-fun b!2671232 () Bool)

(assert (=> b!2671232 (= e!1683558 (forall!6496 (t!223171 (t!223171 l!4335)) lambda!99707))))

(assert (= (and d!764016 (not res!1123107)) b!2671231))

(assert (= (and b!2671231 res!1123108) b!2671232))

(declare-fun b_lambda!81369 () Bool)

(assert (=> (not b_lambda!81369) (not b!2671231)))

(declare-fun m!3037693 () Bool)

(assert (=> b!2671231 m!3037693))

(declare-fun m!3037695 () Bool)

(assert (=> b!2671232 m!3037695))

(assert (=> b!2670741 d!764016))

(declare-fun bs!479524 () Bool)

(declare-fun d!764018 () Bool)

(assert (= bs!479524 (and d!764018 d!763876)))

(declare-fun lambda!99754 () Int)

(assert (=> bs!479524 (= (and (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (h!36121 rules!1712)))) (= (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toValue!6621 (transformation!4683 (h!36121 rules!1712))))) (= lambda!99754 lambda!99747))))

(declare-fun bs!479525 () Bool)

(assert (= bs!479525 (and d!764018 d!763986)))

(assert (=> bs!479525 (= (and (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) (= (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toValue!6621 (transformation!4683 (rule!7089 separatorToken!152))))) (= lambda!99754 lambda!99753))))

(assert (=> d!764018 true))

(assert (=> d!764018 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335))))) (dynLambda!13295 order!16851 lambda!99754))))

(assert (=> d!764018 true))

(assert (=> d!764018 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335))))) (dynLambda!13295 order!16851 lambda!99754))))

(assert (=> d!764018 (= (semiInverseModEq!1940 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toValue!6621 (transformation!4683 (rule!7089 (h!36122 l!4335))))) (Forall!1192 lambda!99754))))

(declare-fun bs!479526 () Bool)

(assert (= bs!479526 d!764018))

(declare-fun m!3037697 () Bool)

(assert (=> bs!479526 m!3037697))

(assert (=> d!763726 d!764018))

(declare-fun d!764020 () Bool)

(declare-fun lt!940824 () Token!8836)

(assert (=> d!764020 (= lt!940824 (apply!7359 (list!11590 (_1!17632 lt!940516)) 0))))

(declare-fun apply!7364 (Conc!9599 Int) Token!8836)

(assert (=> d!764020 (= lt!940824 (apply!7364 (c!430511 (_1!17632 lt!940516)) 0))))

(declare-fun e!1683565 () Bool)

(assert (=> d!764020 e!1683565))

(declare-fun res!1123115 () Bool)

(assert (=> d!764020 (=> (not res!1123115) (not e!1683565))))

(assert (=> d!764020 (= res!1123115 (<= 0 0))))

(assert (=> d!764020 (= (apply!7358 (_1!17632 lt!940516) 0) lt!940824)))

(declare-fun b!2671243 () Bool)

(assert (=> b!2671243 (= e!1683565 (< 0 (size!23748 (_1!17632 lt!940516))))))

(assert (= (and d!764020 res!1123115) b!2671243))

(assert (=> d!764020 m!3037415))

(assert (=> d!764020 m!3037415))

(declare-fun m!3037699 () Bool)

(assert (=> d!764020 m!3037699))

(declare-fun m!3037701 () Bool)

(assert (=> d!764020 m!3037701))

(assert (=> b!2671243 m!3036671))

(assert (=> b!2670541 d!764020))

(declare-fun lt!940825 () Bool)

(declare-fun d!764022 () Bool)

(assert (=> d!764022 (= lt!940825 (isEmpty!17563 (list!11587 (_2!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)))))))))

(assert (=> d!764022 (= lt!940825 (isEmpty!17569 (c!430458 (_2!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152)))))))))

(assert (=> d!764022 (= (isEmpty!17562 (_2!17632 (lex!1925 thiss!14116 rules!1712 (print!1663 thiss!14116 (singletonSeq!2082 separatorToken!152))))) lt!940825)))

(declare-fun bs!479527 () Bool)

(assert (= bs!479527 d!764022))

(declare-fun m!3037703 () Bool)

(assert (=> bs!479527 m!3037703))

(assert (=> bs!479527 m!3037703))

(declare-fun m!3037705 () Bool)

(assert (=> bs!479527 m!3037705))

(declare-fun m!3037707 () Bool)

(assert (=> bs!479527 m!3037707))

(assert (=> b!2670543 d!764022))

(assert (=> b!2670543 d!763922))

(assert (=> b!2670543 d!763920))

(assert (=> b!2670543 d!763948))

(declare-fun bs!479528 () Bool)

(declare-fun d!764024 () Bool)

(assert (= bs!479528 (and d!764024 d!763694)))

(declare-fun lambda!99757 () Int)

(assert (=> bs!479528 (= lambda!99757 lambda!99716)))

(declare-fun bs!479529 () Bool)

(assert (= bs!479529 (and d!764024 d!763864)))

(assert (=> bs!479529 (= lambda!99757 lambda!99744)))

(assert (=> d!764024 true))

(declare-fun lt!940845 () Bool)

(assert (=> d!764024 (= lt!940845 (rulesValidInductive!1629 thiss!14116 rules!1712))))

(assert (=> d!764024 (= lt!940845 (forall!6498 rules!1712 lambda!99757))))

(assert (=> d!764024 (= (rulesValid!1746 thiss!14116 rules!1712) lt!940845)))

(declare-fun bs!479530 () Bool)

(assert (= bs!479530 d!764024))

(assert (=> bs!479530 m!3036521))

(declare-fun m!3037753 () Bool)

(assert (=> bs!479530 m!3037753))

(assert (=> d!763684 d!764024))

(declare-fun d!764026 () Bool)

(assert (=> d!764026 (= (list!11587 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))) (list!11591 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))))))

(declare-fun bs!479531 () Bool)

(assert (= bs!479531 d!764026))

(declare-fun m!3037761 () Bool)

(assert (=> bs!479531 m!3037761))

(assert (=> b!2670718 d!764026))

(declare-fun d!764028 () Bool)

(declare-fun lt!940846 () Bool)

(assert (=> d!764028 (= lt!940846 (select (content!4358 (t!223171 l!4335)) (h!36122 l!4335)))))

(declare-fun e!1683568 () Bool)

(assert (=> d!764028 (= lt!940846 e!1683568)))

(declare-fun res!1123119 () Bool)

(assert (=> d!764028 (=> (not res!1123119) (not e!1683568))))

(assert (=> d!764028 (= res!1123119 ((_ is Cons!30702) (t!223171 l!4335)))))

(assert (=> d!764028 (= (contains!5891 (t!223171 l!4335) (h!36122 l!4335)) lt!940846)))

(declare-fun b!2671248 () Bool)

(declare-fun e!1683569 () Bool)

(assert (=> b!2671248 (= e!1683568 e!1683569)))

(declare-fun res!1123118 () Bool)

(assert (=> b!2671248 (=> res!1123118 e!1683569)))

(assert (=> b!2671248 (= res!1123118 (= (h!36122 (t!223171 l!4335)) (h!36122 l!4335)))))

(declare-fun b!2671249 () Bool)

(assert (=> b!2671249 (= e!1683569 (contains!5891 (t!223171 (t!223171 l!4335)) (h!36122 l!4335)))))

(assert (= (and d!764028 res!1123119) b!2671248))

(assert (= (and b!2671248 (not res!1123118)) b!2671249))

(assert (=> d!764028 m!3037691))

(declare-fun m!3037767 () Bool)

(assert (=> d!764028 m!3037767))

(declare-fun m!3037769 () Bool)

(assert (=> b!2671249 m!3037769))

(assert (=> b!2670552 d!764028))

(declare-fun d!764032 () Bool)

(declare-fun c!430610 () Bool)

(assert (=> d!764032 (= c!430610 ((_ is Nil!30700) lt!940526))))

(declare-fun e!1683574 () (InoxSet C!15812))

(assert (=> d!764032 (= (content!4359 lt!940526) e!1683574)))

(declare-fun b!2671260 () Bool)

(assert (=> b!2671260 (= e!1683574 ((as const (Array C!15812 Bool)) false))))

(declare-fun b!2671261 () Bool)

(assert (=> b!2671261 (= e!1683574 ((_ map or) (store ((as const (Array C!15812 Bool)) false) (h!36120 lt!940526) true) (content!4359 (t!223169 lt!940526))))))

(assert (= (and d!764032 c!430610) b!2671260))

(assert (= (and d!764032 (not c!430610)) b!2671261))

(declare-fun m!3037773 () Bool)

(assert (=> b!2671261 m!3037773))

(declare-fun m!3037775 () Bool)

(assert (=> b!2671261 m!3037775))

(assert (=> d!763690 d!764032))

(declare-fun d!764034 () Bool)

(declare-fun c!430611 () Bool)

(assert (=> d!764034 (= c!430611 ((_ is Nil!30700) (list!11587 (charsOf!2948 (h!36122 l!4335)))))))

(declare-fun e!1683577 () (InoxSet C!15812))

(assert (=> d!764034 (= (content!4359 (list!11587 (charsOf!2948 (h!36122 l!4335)))) e!1683577)))

(declare-fun b!2671264 () Bool)

(assert (=> b!2671264 (= e!1683577 ((as const (Array C!15812 Bool)) false))))

(declare-fun b!2671265 () Bool)

(assert (=> b!2671265 (= e!1683577 ((_ map or) (store ((as const (Array C!15812 Bool)) false) (h!36120 (list!11587 (charsOf!2948 (h!36122 l!4335)))) true) (content!4359 (t!223169 (list!11587 (charsOf!2948 (h!36122 l!4335)))))))))

(assert (= (and d!764034 c!430611) b!2671264))

(assert (= (and d!764034 (not c!430611)) b!2671265))

(declare-fun m!3037777 () Bool)

(assert (=> b!2671265 m!3037777))

(assert (=> b!2671265 m!3037239))

(assert (=> d!763690 d!764034))

(declare-fun c!430612 () Bool)

(declare-fun d!764036 () Bool)

(assert (=> d!764036 (= c!430612 ((_ is Nil!30700) (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))

(declare-fun e!1683578 () (InoxSet C!15812))

(assert (=> d!764036 (= (content!4359 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)) e!1683578)))

(declare-fun b!2671266 () Bool)

(assert (=> b!2671266 (= e!1683578 ((as const (Array C!15812 Bool)) false))))

(declare-fun b!2671267 () Bool)

(assert (=> b!2671267 (= e!1683578 ((_ map or) (store ((as const (Array C!15812 Bool)) false) (h!36120 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)) true) (content!4359 (t!223169 (printWithSeparatorTokenWhenNeededList!676 thiss!14116 rules!1712 (t!223171 l!4335) separatorToken!152)))))))

(assert (= (and d!764036 c!430612) b!2671266))

(assert (= (and d!764036 (not c!430612)) b!2671267))

(declare-fun m!3037779 () Bool)

(assert (=> b!2671267 m!3037779))

(declare-fun m!3037781 () Bool)

(assert (=> b!2671267 m!3037781))

(assert (=> d!763690 d!764036))

(assert (=> b!2670751 d!763888))

(declare-fun b!2671268 () Bool)

(declare-fun e!1683579 () Bool)

(assert (=> b!2671268 (= e!1683579 tp_is_empty!13809)))

(declare-fun b!2671269 () Bool)

(declare-fun tp!844378 () Bool)

(declare-fun tp!844381 () Bool)

(assert (=> b!2671269 (= e!1683579 (and tp!844378 tp!844381))))

(assert (=> b!2670801 (= tp!844349 e!1683579)))

(declare-fun b!2671270 () Bool)

(declare-fun tp!844380 () Bool)

(assert (=> b!2671270 (= e!1683579 tp!844380)))

(declare-fun b!2671271 () Bool)

(declare-fun tp!844379 () Bool)

(declare-fun tp!844377 () Bool)

(assert (=> b!2671271 (= e!1683579 (and tp!844379 tp!844377))))

(assert (= (and b!2670801 ((_ is ElementMatch!7827) (regOne!16167 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671268))

(assert (= (and b!2670801 ((_ is Concat!12733) (regOne!16167 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671269))

(assert (= (and b!2670801 ((_ is Star!7827) (regOne!16167 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671270))

(assert (= (and b!2670801 ((_ is Union!7827) (regOne!16167 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671271))

(declare-fun b!2671275 () Bool)

(declare-fun e!1683582 () Bool)

(assert (=> b!2671275 (= e!1683582 tp_is_empty!13809)))

(declare-fun b!2671276 () Bool)

(declare-fun tp!844386 () Bool)

(declare-fun tp!844389 () Bool)

(assert (=> b!2671276 (= e!1683582 (and tp!844386 tp!844389))))

(assert (=> b!2670801 (= tp!844347 e!1683582)))

(declare-fun b!2671277 () Bool)

(declare-fun tp!844388 () Bool)

(assert (=> b!2671277 (= e!1683582 tp!844388)))

(declare-fun b!2671278 () Bool)

(declare-fun tp!844387 () Bool)

(declare-fun tp!844385 () Bool)

(assert (=> b!2671278 (= e!1683582 (and tp!844387 tp!844385))))

(assert (= (and b!2670801 ((_ is ElementMatch!7827) (regTwo!16167 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671275))

(assert (= (and b!2670801 ((_ is Concat!12733) (regTwo!16167 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671276))

(assert (= (and b!2670801 ((_ is Star!7827) (regTwo!16167 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671277))

(assert (= (and b!2670801 ((_ is Union!7827) (regTwo!16167 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671278))

(declare-fun b!2671281 () Bool)

(declare-fun e!1683584 () Bool)

(declare-fun tp!844395 () Bool)

(assert (=> b!2671281 (= e!1683584 (and tp_is_empty!13809 tp!844395))))

(assert (=> b!2670793 (= tp!844341 e!1683584)))

(assert (= (and b!2670793 ((_ is Cons!30700) (t!223169 (originalCharacters!5449 (h!36122 l!4335))))) b!2671281))

(declare-fun b!2671286 () Bool)

(declare-fun e!1683587 () Bool)

(assert (=> b!2671286 (= e!1683587 true)))

(declare-fun b!2671285 () Bool)

(declare-fun e!1683586 () Bool)

(assert (=> b!2671285 (= e!1683586 e!1683587)))

(declare-fun b!2671284 () Bool)

(declare-fun e!1683585 () Bool)

(assert (=> b!2671284 (= e!1683585 e!1683586)))

(assert (=> b!2670785 e!1683585))

(assert (= b!2671285 b!2671286))

(assert (= b!2671284 b!2671285))

(assert (= (and b!2670785 ((_ is Cons!30701) (t!223170 (t!223170 rules!1712)))) b!2671284))

(assert (=> b!2671286 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712)))))) (dynLambda!13285 order!16841 lambda!99708))))

(assert (=> b!2671286 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712)))))) (dynLambda!13285 order!16841 lambda!99708))))

(declare-fun b!2671294 () Bool)

(declare-fun b_free!75085 () Bool)

(declare-fun b_next!75789 () Bool)

(assert (=> b!2671294 (= b_free!75085 (not b_next!75789))))

(declare-fun tp!844405 () Bool)

(declare-fun b_and!197213 () Bool)

(assert (=> b!2671294 (= tp!844405 b_and!197213)))

(declare-fun b_free!75087 () Bool)

(declare-fun b_next!75791 () Bool)

(assert (=> b!2671294 (= b_free!75087 (not b_next!75791))))

(declare-fun t!223269 () Bool)

(declare-fun tb!149697 () Bool)

(assert (=> (and b!2671294 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 (t!223171 l!4335)))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) t!223269) tb!149697))

(declare-fun result!184898 () Bool)

(assert (= result!184898 result!184866))

(assert (=> b!2670975 t!223269))

(assert (=> d!763978 t!223269))

(declare-fun tb!149699 () Bool)

(declare-fun t!223271 () Bool)

(assert (=> (and b!2671294 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 (t!223171 l!4335)))))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) t!223271) tb!149699))

(declare-fun result!184900 () Bool)

(assert (= result!184900 result!184834))

(assert (=> b!2670718 t!223271))

(declare-fun t!223273 () Bool)

(declare-fun tb!149701 () Bool)

(assert (=> (and b!2671294 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 (t!223171 l!4335)))))) (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))) t!223273) tb!149701))

(declare-fun result!184902 () Bool)

(assert (= result!184902 result!184886))

(assert (=> d!763970 t!223273))

(declare-fun t!223275 () Bool)

(declare-fun tb!149703 () Bool)

(assert (=> (and b!2671294 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 (t!223171 l!4335)))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335))))) t!223275) tb!149703))

(declare-fun result!184904 () Bool)

(assert (= result!184904 result!184810))

(assert (=> d!763688 t!223275))

(assert (=> b!2670758 t!223275))

(declare-fun b_and!197215 () Bool)

(declare-fun tp!844402 () Bool)

(assert (=> b!2671294 (= tp!844402 (and (=> t!223271 result!184900) (=> t!223269 result!184898) (=> t!223275 result!184904) (=> t!223273 result!184902) b_and!197215))))

(declare-fun tp!844401 () Bool)

(declare-fun e!1683589 () Bool)

(declare-fun b!2671291 () Bool)

(declare-fun e!1683593 () Bool)

(assert (=> b!2671291 (= e!1683589 (and (inv!41705 (h!36122 (t!223171 (t!223171 l!4335)))) e!1683593 tp!844401))))

(declare-fun e!1683592 () Bool)

(assert (=> b!2671294 (= e!1683592 (and tp!844405 tp!844402))))

(declare-fun b!2671293 () Bool)

(declare-fun tp!844404 () Bool)

(declare-fun e!1683590 () Bool)

(assert (=> b!2671293 (= e!1683590 (and tp!844404 (inv!41701 (tag!5185 (rule!7089 (h!36122 (t!223171 (t!223171 l!4335)))))) (inv!41704 (transformation!4683 (rule!7089 (h!36122 (t!223171 (t!223171 l!4335)))))) e!1683592))))

(assert (=> b!2670812 (= tp!844362 e!1683589)))

(declare-fun tp!844403 () Bool)

(declare-fun b!2671292 () Bool)

(assert (=> b!2671292 (= e!1683593 (and (inv!21 (value!151070 (h!36122 (t!223171 (t!223171 l!4335))))) e!1683590 tp!844403))))

(assert (= b!2671293 b!2671294))

(assert (= b!2671292 b!2671293))

(assert (= b!2671291 b!2671292))

(assert (= (and b!2670812 ((_ is Cons!30702) (t!223171 (t!223171 l!4335)))) b!2671291))

(declare-fun m!3037789 () Bool)

(assert (=> b!2671291 m!3037789))

(declare-fun m!3037791 () Bool)

(assert (=> b!2671293 m!3037791))

(declare-fun m!3037793 () Bool)

(assert (=> b!2671293 m!3037793))

(declare-fun m!3037795 () Bool)

(assert (=> b!2671292 m!3037795))

(declare-fun b!2671304 () Bool)

(declare-fun e!1683603 () Bool)

(declare-fun tp!844417 () Bool)

(assert (=> b!2671304 (= e!1683603 (and tp_is_empty!13809 tp!844417))))

(assert (=> b!2670813 (= tp!844364 e!1683603)))

(assert (= (and b!2670813 ((_ is Cons!30700) (originalCharacters!5449 (h!36122 (t!223171 l!4335))))) b!2671304))

(declare-fun b!2671305 () Bool)

(declare-fun e!1683604 () Bool)

(assert (=> b!2671305 (= e!1683604 tp_is_empty!13809)))

(declare-fun b!2671306 () Bool)

(declare-fun tp!844419 () Bool)

(declare-fun tp!844422 () Bool)

(assert (=> b!2671306 (= e!1683604 (and tp!844419 tp!844422))))

(assert (=> b!2670814 (= tp!844365 e!1683604)))

(declare-fun b!2671307 () Bool)

(declare-fun tp!844421 () Bool)

(assert (=> b!2671307 (= e!1683604 tp!844421)))

(declare-fun b!2671308 () Bool)

(declare-fun tp!844420 () Bool)

(declare-fun tp!844418 () Bool)

(assert (=> b!2671308 (= e!1683604 (and tp!844420 tp!844418))))

(assert (= (and b!2670814 ((_ is ElementMatch!7827) (regex!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) b!2671305))

(assert (= (and b!2670814 ((_ is Concat!12733) (regex!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) b!2671306))

(assert (= (and b!2670814 ((_ is Star!7827) (regex!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) b!2671307))

(assert (= (and b!2670814 ((_ is Union!7827) (regex!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) b!2671308))

(declare-fun tp!844450 () Bool)

(declare-fun b!2671334 () Bool)

(declare-fun tp!844451 () Bool)

(declare-fun e!1683619 () Bool)

(assert (=> b!2671334 (= e!1683619 (and (inv!41708 (left!23742 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))))) tp!844451 (inv!41708 (right!24072 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))))) tp!844450))))

(declare-fun b!2671336 () Bool)

(declare-fun e!1683618 () Bool)

(declare-fun tp!844452 () Bool)

(assert (=> b!2671336 (= e!1683618 tp!844452)))

(declare-fun b!2671335 () Bool)

(declare-fun inv!41715 (IArray!19199) Bool)

(assert (=> b!2671335 (= e!1683619 (and (inv!41715 (xs!12627 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))))) e!1683618))))

(assert (=> b!2670720 (= tp!844310 (and (inv!41708 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152)))) e!1683619))))

(assert (= (and b!2670720 ((_ is Node!9597) (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))))) b!2671334))

(assert (= b!2671335 b!2671336))

(assert (= (and b!2670720 ((_ is Leaf!14679) (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (value!151070 separatorToken!152))))) b!2671335))

(declare-fun m!3037805 () Bool)

(assert (=> b!2671334 m!3037805))

(declare-fun m!3037809 () Bool)

(assert (=> b!2671334 m!3037809))

(declare-fun m!3037813 () Bool)

(assert (=> b!2671335 m!3037813))

(assert (=> b!2670720 m!3036815))

(declare-fun b!2671341 () Bool)

(declare-fun e!1683621 () Bool)

(assert (=> b!2671341 (= e!1683621 tp_is_empty!13809)))

(declare-fun b!2671342 () Bool)

(declare-fun tp!844459 () Bool)

(declare-fun tp!844462 () Bool)

(assert (=> b!2671342 (= e!1683621 (and tp!844459 tp!844462))))

(assert (=> b!2670795 (= tp!844343 e!1683621)))

(declare-fun b!2671343 () Bool)

(declare-fun tp!844461 () Bool)

(assert (=> b!2671343 (= e!1683621 tp!844461)))

(declare-fun b!2671344 () Bool)

(declare-fun tp!844460 () Bool)

(declare-fun tp!844458 () Bool)

(assert (=> b!2671344 (= e!1683621 (and tp!844460 tp!844458))))

(assert (= (and b!2670795 ((_ is ElementMatch!7827) (regOne!16166 (regex!4683 (rule!7089 separatorToken!152))))) b!2671341))

(assert (= (and b!2670795 ((_ is Concat!12733) (regOne!16166 (regex!4683 (rule!7089 separatorToken!152))))) b!2671342))

(assert (= (and b!2670795 ((_ is Star!7827) (regOne!16166 (regex!4683 (rule!7089 separatorToken!152))))) b!2671343))

(assert (= (and b!2670795 ((_ is Union!7827) (regOne!16166 (regex!4683 (rule!7089 separatorToken!152))))) b!2671344))

(declare-fun b!2671349 () Bool)

(declare-fun e!1683623 () Bool)

(assert (=> b!2671349 (= e!1683623 tp_is_empty!13809)))

(declare-fun b!2671350 () Bool)

(declare-fun tp!844469 () Bool)

(declare-fun tp!844472 () Bool)

(assert (=> b!2671350 (= e!1683623 (and tp!844469 tp!844472))))

(assert (=> b!2670795 (= tp!844346 e!1683623)))

(declare-fun b!2671351 () Bool)

(declare-fun tp!844471 () Bool)

(assert (=> b!2671351 (= e!1683623 tp!844471)))

(declare-fun b!2671352 () Bool)

(declare-fun tp!844470 () Bool)

(declare-fun tp!844468 () Bool)

(assert (=> b!2671352 (= e!1683623 (and tp!844470 tp!844468))))

(assert (= (and b!2670795 ((_ is ElementMatch!7827) (regTwo!16166 (regex!4683 (rule!7089 separatorToken!152))))) b!2671349))

(assert (= (and b!2670795 ((_ is Concat!12733) (regTwo!16166 (regex!4683 (rule!7089 separatorToken!152))))) b!2671350))

(assert (= (and b!2670795 ((_ is Star!7827) (regTwo!16166 (regex!4683 (rule!7089 separatorToken!152))))) b!2671351))

(assert (= (and b!2670795 ((_ is Union!7827) (regTwo!16166 (regex!4683 (rule!7089 separatorToken!152))))) b!2671352))

(declare-fun b!2671359 () Bool)

(declare-fun e!1683627 () Bool)

(assert (=> b!2671359 (= e!1683627 true)))

(declare-fun b!2671358 () Bool)

(declare-fun e!1683626 () Bool)

(assert (=> b!2671358 (= e!1683626 e!1683627)))

(declare-fun b!2671357 () Bool)

(declare-fun e!1683625 () Bool)

(assert (=> b!2671357 (= e!1683625 e!1683626)))

(assert (=> b!2670711 e!1683625))

(assert (= b!2671358 b!2671359))

(assert (= b!2671357 b!2671358))

(assert (= (and b!2670711 ((_ is Cons!30701) (t!223170 rules!1712))) b!2671357))

(assert (=> b!2671359 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 (t!223170 rules!1712))))) (dynLambda!13285 order!16841 lambda!99723))))

(assert (=> b!2671359 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712))))) (dynLambda!13285 order!16841 lambda!99723))))

(declare-fun b!2671366 () Bool)

(declare-fun e!1683631 () Bool)

(assert (=> b!2671366 (= e!1683631 true)))

(declare-fun b!2671365 () Bool)

(declare-fun e!1683630 () Bool)

(assert (=> b!2671365 (= e!1683630 e!1683631)))

(declare-fun b!2671364 () Bool)

(declare-fun e!1683629 () Bool)

(assert (=> b!2671364 (= e!1683629 e!1683630)))

(assert (=> b!2670753 e!1683629))

(assert (= b!2671365 b!2671366))

(assert (= b!2671364 b!2671365))

(assert (= (and b!2670753 ((_ is Cons!30701) (t!223170 rules!1712))) b!2671364))

(assert (=> b!2671366 (< (dynLambda!13284 order!16839 (toValue!6621 (transformation!4683 (h!36121 (t!223170 rules!1712))))) (dynLambda!13285 order!16841 lambda!99726))))

(assert (=> b!2671366 (< (dynLambda!13286 order!16843 (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712))))) (dynLambda!13285 order!16841 lambda!99726))))

(declare-fun b!2671371 () Bool)

(declare-fun e!1683633 () Bool)

(assert (=> b!2671371 (= e!1683633 tp_is_empty!13809)))

(declare-fun b!2671372 () Bool)

(declare-fun tp!844489 () Bool)

(declare-fun tp!844492 () Bool)

(assert (=> b!2671372 (= e!1683633 (and tp!844489 tp!844492))))

(assert (=> b!2670796 (= tp!844345 e!1683633)))

(declare-fun b!2671373 () Bool)

(declare-fun tp!844491 () Bool)

(assert (=> b!2671373 (= e!1683633 tp!844491)))

(declare-fun b!2671374 () Bool)

(declare-fun tp!844490 () Bool)

(declare-fun tp!844488 () Bool)

(assert (=> b!2671374 (= e!1683633 (and tp!844490 tp!844488))))

(assert (= (and b!2670796 ((_ is ElementMatch!7827) (reg!8156 (regex!4683 (rule!7089 separatorToken!152))))) b!2671371))

(assert (= (and b!2670796 ((_ is Concat!12733) (reg!8156 (regex!4683 (rule!7089 separatorToken!152))))) b!2671372))

(assert (= (and b!2670796 ((_ is Star!7827) (reg!8156 (regex!4683 (rule!7089 separatorToken!152))))) b!2671373))

(assert (= (and b!2670796 ((_ is Union!7827) (reg!8156 (regex!4683 (rule!7089 separatorToken!152))))) b!2671374))

(declare-fun b!2671379 () Bool)

(declare-fun e!1683635 () Bool)

(assert (=> b!2671379 (= e!1683635 tp_is_empty!13809)))

(declare-fun b!2671380 () Bool)

(declare-fun tp!844499 () Bool)

(declare-fun tp!844502 () Bool)

(assert (=> b!2671380 (= e!1683635 (and tp!844499 tp!844502))))

(assert (=> b!2670797 (= tp!844344 e!1683635)))

(declare-fun b!2671381 () Bool)

(declare-fun tp!844501 () Bool)

(assert (=> b!2671381 (= e!1683635 tp!844501)))

(declare-fun b!2671382 () Bool)

(declare-fun tp!844500 () Bool)

(declare-fun tp!844498 () Bool)

(assert (=> b!2671382 (= e!1683635 (and tp!844500 tp!844498))))

(assert (= (and b!2670797 ((_ is ElementMatch!7827) (regOne!16167 (regex!4683 (rule!7089 separatorToken!152))))) b!2671379))

(assert (= (and b!2670797 ((_ is Concat!12733) (regOne!16167 (regex!4683 (rule!7089 separatorToken!152))))) b!2671380))

(assert (= (and b!2670797 ((_ is Star!7827) (regOne!16167 (regex!4683 (rule!7089 separatorToken!152))))) b!2671381))

(assert (= (and b!2670797 ((_ is Union!7827) (regOne!16167 (regex!4683 (rule!7089 separatorToken!152))))) b!2671382))

(declare-fun b!2671386 () Bool)

(declare-fun e!1683639 () Bool)

(assert (=> b!2671386 (= e!1683639 tp_is_empty!13809)))

(declare-fun b!2671387 () Bool)

(declare-fun tp!844504 () Bool)

(declare-fun tp!844507 () Bool)

(assert (=> b!2671387 (= e!1683639 (and tp!844504 tp!844507))))

(assert (=> b!2670797 (= tp!844342 e!1683639)))

(declare-fun b!2671388 () Bool)

(declare-fun tp!844506 () Bool)

(assert (=> b!2671388 (= e!1683639 tp!844506)))

(declare-fun b!2671389 () Bool)

(declare-fun tp!844505 () Bool)

(declare-fun tp!844503 () Bool)

(assert (=> b!2671389 (= e!1683639 (and tp!844505 tp!844503))))

(assert (= (and b!2670797 ((_ is ElementMatch!7827) (regTwo!16167 (regex!4683 (rule!7089 separatorToken!152))))) b!2671386))

(assert (= (and b!2670797 ((_ is Concat!12733) (regTwo!16167 (regex!4683 (rule!7089 separatorToken!152))))) b!2671387))

(assert (= (and b!2670797 ((_ is Star!7827) (regTwo!16167 (regex!4683 (rule!7089 separatorToken!152))))) b!2671388))

(assert (= (and b!2670797 ((_ is Union!7827) (regTwo!16167 (regex!4683 (rule!7089 separatorToken!152))))) b!2671389))

(declare-fun tp!844513 () Bool)

(declare-fun tp!844514 () Bool)

(declare-fun e!1683642 () Bool)

(declare-fun b!2671394 () Bool)

(assert (=> b!2671394 (= e!1683642 (and (inv!41708 (left!23742 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))))) tp!844514 (inv!41708 (right!24072 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))))) tp!844513))))

(declare-fun b!2671396 () Bool)

(declare-fun e!1683641 () Bool)

(declare-fun tp!844515 () Bool)

(assert (=> b!2671396 (= e!1683641 tp!844515)))

(declare-fun b!2671395 () Bool)

(assert (=> b!2671395 (= e!1683642 (and (inv!41715 (xs!12627 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))))) e!1683641))))

(assert (=> b!2670557 (= tp!844253 (and (inv!41708 (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335))))) e!1683642))))

(assert (= (and b!2670557 ((_ is Node!9597) (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))))) b!2671394))

(assert (= b!2671395 b!2671396))

(assert (= (and b!2670557 ((_ is Leaf!14679) (c!430458 (dynLambda!13289 (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (value!151070 (h!36122 l!4335)))))) b!2671395))

(declare-fun m!3037815 () Bool)

(assert (=> b!2671394 m!3037815))

(declare-fun m!3037817 () Bool)

(assert (=> b!2671394 m!3037817))

(declare-fun m!3037819 () Bool)

(assert (=> b!2671395 m!3037819))

(assert (=> b!2670557 m!3036691))

(declare-fun b!2671407 () Bool)

(declare-fun b_free!75097 () Bool)

(declare-fun b_next!75801 () Bool)

(assert (=> b!2671407 (= b_free!75097 (not b_next!75801))))

(declare-fun tp!844528 () Bool)

(declare-fun b_and!197225 () Bool)

(assert (=> b!2671407 (= tp!844528 b_and!197225)))

(declare-fun b_free!75099 () Bool)

(declare-fun b_next!75803 () Bool)

(assert (=> b!2671407 (= b_free!75099 (not b_next!75803))))

(declare-fun t!223293 () Bool)

(declare-fun tb!149721 () Bool)

(assert (=> (and b!2671407 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335)))))) t!223293) tb!149721))

(declare-fun result!184924 () Bool)

(assert (= result!184924 result!184866))

(assert (=> b!2670975 t!223293))

(assert (=> d!763978 t!223293))

(declare-fun t!223295 () Bool)

(declare-fun tb!149723 () Bool)

(assert (=> (and b!2671407 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712))))) (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152)))) t!223295) tb!149723))

(declare-fun result!184926 () Bool)

(assert (= result!184926 result!184834))

(assert (=> b!2670718 t!223295))

(declare-fun t!223297 () Bool)

(declare-fun tb!149725 () Bool)

(assert (=> (and b!2671407 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712))))) (toChars!6480 (transformation!4683 (rule!7089 (ite c!430497 separatorToken!152 (h!36122 (t!223171 l!4335))))))) t!223297) tb!149725))

(declare-fun result!184928 () Bool)

(assert (= result!184928 result!184886))

(assert (=> d!763970 t!223297))

(declare-fun tb!149727 () Bool)

(declare-fun t!223299 () Bool)

(assert (=> (and b!2671407 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335))))) t!223299) tb!149727))

(declare-fun result!184930 () Bool)

(assert (= result!184930 result!184810))

(assert (=> d!763688 t!223299))

(assert (=> b!2670758 t!223299))

(declare-fun b_and!197227 () Bool)

(declare-fun tp!844527 () Bool)

(assert (=> b!2671407 (= tp!844527 (and (=> t!223295 result!184926) (=> t!223293 result!184924) (=> t!223299 result!184930) (=> t!223297 result!184928) b_and!197227))))

(declare-fun e!1683648 () Bool)

(assert (=> b!2671407 (= e!1683648 (and tp!844528 tp!844527))))

(declare-fun e!1683646 () Bool)

(declare-fun tp!844526 () Bool)

(declare-fun b!2671406 () Bool)

(assert (=> b!2671406 (= e!1683646 (and tp!844526 (inv!41701 (tag!5185 (h!36121 (t!223170 (t!223170 rules!1712))))) (inv!41704 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712))))) e!1683648))))

(declare-fun b!2671405 () Bool)

(declare-fun e!1683645 () Bool)

(declare-fun tp!844529 () Bool)

(assert (=> b!2671405 (= e!1683645 (and e!1683646 tp!844529))))

(assert (=> b!2670768 (= tp!844322 e!1683645)))

(assert (= b!2671406 b!2671407))

(assert (= b!2671405 b!2671406))

(assert (= (and b!2670768 ((_ is Cons!30701) (t!223170 (t!223170 rules!1712)))) b!2671405))

(declare-fun m!3037821 () Bool)

(assert (=> b!2671406 m!3037821))

(declare-fun m!3037823 () Bool)

(assert (=> b!2671406 m!3037823))

(declare-fun b!2671422 () Bool)

(declare-fun e!1683657 () Bool)

(assert (=> b!2671422 (= e!1683657 tp_is_empty!13809)))

(declare-fun b!2671423 () Bool)

(declare-fun tp!844541 () Bool)

(declare-fun tp!844544 () Bool)

(assert (=> b!2671423 (= e!1683657 (and tp!844541 tp!844544))))

(assert (=> b!2670769 (= tp!844319 e!1683657)))

(declare-fun b!2671424 () Bool)

(declare-fun tp!844543 () Bool)

(assert (=> b!2671424 (= e!1683657 tp!844543)))

(declare-fun b!2671425 () Bool)

(declare-fun tp!844542 () Bool)

(declare-fun tp!844540 () Bool)

(assert (=> b!2671425 (= e!1683657 (and tp!844542 tp!844540))))

(assert (= (and b!2670769 ((_ is ElementMatch!7827) (regex!4683 (h!36121 (t!223170 rules!1712))))) b!2671422))

(assert (= (and b!2670769 ((_ is Concat!12733) (regex!4683 (h!36121 (t!223170 rules!1712))))) b!2671423))

(assert (= (and b!2670769 ((_ is Star!7827) (regex!4683 (h!36121 (t!223170 rules!1712))))) b!2671424))

(assert (= (and b!2670769 ((_ is Union!7827) (regex!4683 (h!36121 (t!223170 rules!1712))))) b!2671425))

(declare-fun b!2671429 () Bool)

(declare-fun e!1683660 () Bool)

(assert (=> b!2671429 (= e!1683660 tp_is_empty!13809)))

(declare-fun b!2671430 () Bool)

(declare-fun tp!844549 () Bool)

(declare-fun tp!844552 () Bool)

(assert (=> b!2671430 (= e!1683660 (and tp!844549 tp!844552))))

(assert (=> b!2670783 (= tp!844336 e!1683660)))

(declare-fun b!2671431 () Bool)

(declare-fun tp!844551 () Bool)

(assert (=> b!2671431 (= e!1683660 tp!844551)))

(declare-fun b!2671432 () Bool)

(declare-fun tp!844550 () Bool)

(declare-fun tp!844548 () Bool)

(assert (=> b!2671432 (= e!1683660 (and tp!844550 tp!844548))))

(assert (= (and b!2670783 ((_ is ElementMatch!7827) (reg!8156 (regex!4683 (h!36121 rules!1712))))) b!2671429))

(assert (= (and b!2670783 ((_ is Concat!12733) (reg!8156 (regex!4683 (h!36121 rules!1712))))) b!2671430))

(assert (= (and b!2670783 ((_ is Star!7827) (reg!8156 (regex!4683 (h!36121 rules!1712))))) b!2671431))

(assert (= (and b!2670783 ((_ is Union!7827) (reg!8156 (regex!4683 (h!36121 rules!1712))))) b!2671432))

(declare-fun b!2671433 () Bool)

(declare-fun e!1683661 () Bool)

(assert (=> b!2671433 (= e!1683661 tp_is_empty!13809)))

(declare-fun b!2671434 () Bool)

(declare-fun tp!844554 () Bool)

(declare-fun tp!844557 () Bool)

(assert (=> b!2671434 (= e!1683661 (and tp!844554 tp!844557))))

(assert (=> b!2670782 (= tp!844334 e!1683661)))

(declare-fun b!2671435 () Bool)

(declare-fun tp!844556 () Bool)

(assert (=> b!2671435 (= e!1683661 tp!844556)))

(declare-fun b!2671436 () Bool)

(declare-fun tp!844555 () Bool)

(declare-fun tp!844553 () Bool)

(assert (=> b!2671436 (= e!1683661 (and tp!844555 tp!844553))))

(assert (= (and b!2670782 ((_ is ElementMatch!7827) (regOne!16166 (regex!4683 (h!36121 rules!1712))))) b!2671433))

(assert (= (and b!2670782 ((_ is Concat!12733) (regOne!16166 (regex!4683 (h!36121 rules!1712))))) b!2671434))

(assert (= (and b!2670782 ((_ is Star!7827) (regOne!16166 (regex!4683 (h!36121 rules!1712))))) b!2671435))

(assert (= (and b!2670782 ((_ is Union!7827) (regOne!16166 (regex!4683 (h!36121 rules!1712))))) b!2671436))

(declare-fun b!2671437 () Bool)

(declare-fun e!1683662 () Bool)

(assert (=> b!2671437 (= e!1683662 tp_is_empty!13809)))

(declare-fun b!2671438 () Bool)

(declare-fun tp!844559 () Bool)

(declare-fun tp!844562 () Bool)

(assert (=> b!2671438 (= e!1683662 (and tp!844559 tp!844562))))

(assert (=> b!2670782 (= tp!844337 e!1683662)))

(declare-fun b!2671439 () Bool)

(declare-fun tp!844561 () Bool)

(assert (=> b!2671439 (= e!1683662 tp!844561)))

(declare-fun b!2671440 () Bool)

(declare-fun tp!844560 () Bool)

(declare-fun tp!844558 () Bool)

(assert (=> b!2671440 (= e!1683662 (and tp!844560 tp!844558))))

(assert (= (and b!2670782 ((_ is ElementMatch!7827) (regTwo!16166 (regex!4683 (h!36121 rules!1712))))) b!2671437))

(assert (= (and b!2670782 ((_ is Concat!12733) (regTwo!16166 (regex!4683 (h!36121 rules!1712))))) b!2671438))

(assert (= (and b!2670782 ((_ is Star!7827) (regTwo!16166 (regex!4683 (h!36121 rules!1712))))) b!2671439))

(assert (= (and b!2670782 ((_ is Union!7827) (regTwo!16166 (regex!4683 (h!36121 rules!1712))))) b!2671440))

(declare-fun b!2671441 () Bool)

(declare-fun e!1683663 () Bool)

(assert (=> b!2671441 (= e!1683663 tp_is_empty!13809)))

(declare-fun b!2671442 () Bool)

(declare-fun tp!844564 () Bool)

(declare-fun tp!844567 () Bool)

(assert (=> b!2671442 (= e!1683663 (and tp!844564 tp!844567))))

(assert (=> b!2670784 (= tp!844335 e!1683663)))

(declare-fun b!2671443 () Bool)

(declare-fun tp!844566 () Bool)

(assert (=> b!2671443 (= e!1683663 tp!844566)))

(declare-fun b!2671444 () Bool)

(declare-fun tp!844565 () Bool)

(declare-fun tp!844563 () Bool)

(assert (=> b!2671444 (= e!1683663 (and tp!844565 tp!844563))))

(assert (= (and b!2670784 ((_ is ElementMatch!7827) (regOne!16167 (regex!4683 (h!36121 rules!1712))))) b!2671441))

(assert (= (and b!2670784 ((_ is Concat!12733) (regOne!16167 (regex!4683 (h!36121 rules!1712))))) b!2671442))

(assert (= (and b!2670784 ((_ is Star!7827) (regOne!16167 (regex!4683 (h!36121 rules!1712))))) b!2671443))

(assert (= (and b!2670784 ((_ is Union!7827) (regOne!16167 (regex!4683 (h!36121 rules!1712))))) b!2671444))

(declare-fun b!2671445 () Bool)

(declare-fun e!1683664 () Bool)

(assert (=> b!2671445 (= e!1683664 tp_is_empty!13809)))

(declare-fun b!2671446 () Bool)

(declare-fun tp!844569 () Bool)

(declare-fun tp!844572 () Bool)

(assert (=> b!2671446 (= e!1683664 (and tp!844569 tp!844572))))

(assert (=> b!2670784 (= tp!844333 e!1683664)))

(declare-fun b!2671447 () Bool)

(declare-fun tp!844571 () Bool)

(assert (=> b!2671447 (= e!1683664 tp!844571)))

(declare-fun b!2671448 () Bool)

(declare-fun tp!844570 () Bool)

(declare-fun tp!844568 () Bool)

(assert (=> b!2671448 (= e!1683664 (and tp!844570 tp!844568))))

(assert (= (and b!2670784 ((_ is ElementMatch!7827) (regTwo!16167 (regex!4683 (h!36121 rules!1712))))) b!2671445))

(assert (= (and b!2670784 ((_ is Concat!12733) (regTwo!16167 (regex!4683 (h!36121 rules!1712))))) b!2671446))

(assert (= (and b!2670784 ((_ is Star!7827) (regTwo!16167 (regex!4683 (h!36121 rules!1712))))) b!2671447))

(assert (= (and b!2670784 ((_ is Union!7827) (regTwo!16167 (regex!4683 (h!36121 rules!1712))))) b!2671448))

(declare-fun b!2671449 () Bool)

(declare-fun e!1683665 () Bool)

(assert (=> b!2671449 (= e!1683665 tp_is_empty!13809)))

(declare-fun b!2671450 () Bool)

(declare-fun tp!844574 () Bool)

(declare-fun tp!844577 () Bool)

(assert (=> b!2671450 (= e!1683665 (and tp!844574 tp!844577))))

(assert (=> b!2670800 (= tp!844350 e!1683665)))

(declare-fun b!2671451 () Bool)

(declare-fun tp!844576 () Bool)

(assert (=> b!2671451 (= e!1683665 tp!844576)))

(declare-fun b!2671452 () Bool)

(declare-fun tp!844575 () Bool)

(declare-fun tp!844573 () Bool)

(assert (=> b!2671452 (= e!1683665 (and tp!844575 tp!844573))))

(assert (= (and b!2670800 ((_ is ElementMatch!7827) (reg!8156 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671449))

(assert (= (and b!2670800 ((_ is Concat!12733) (reg!8156 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671450))

(assert (= (and b!2670800 ((_ is Star!7827) (reg!8156 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671451))

(assert (= (and b!2670800 ((_ is Union!7827) (reg!8156 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671452))

(declare-fun b!2671453 () Bool)

(declare-fun e!1683666 () Bool)

(assert (=> b!2671453 (= e!1683666 tp_is_empty!13809)))

(declare-fun b!2671454 () Bool)

(declare-fun tp!844579 () Bool)

(declare-fun tp!844582 () Bool)

(assert (=> b!2671454 (= e!1683666 (and tp!844579 tp!844582))))

(assert (=> b!2670799 (= tp!844348 e!1683666)))

(declare-fun b!2671455 () Bool)

(declare-fun tp!844581 () Bool)

(assert (=> b!2671455 (= e!1683666 tp!844581)))

(declare-fun b!2671456 () Bool)

(declare-fun tp!844580 () Bool)

(declare-fun tp!844578 () Bool)

(assert (=> b!2671456 (= e!1683666 (and tp!844580 tp!844578))))

(assert (= (and b!2670799 ((_ is ElementMatch!7827) (regOne!16166 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671453))

(assert (= (and b!2670799 ((_ is Concat!12733) (regOne!16166 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671454))

(assert (= (and b!2670799 ((_ is Star!7827) (regOne!16166 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671455))

(assert (= (and b!2670799 ((_ is Union!7827) (regOne!16166 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671456))

(declare-fun b!2671457 () Bool)

(declare-fun e!1683667 () Bool)

(assert (=> b!2671457 (= e!1683667 tp_is_empty!13809)))

(declare-fun b!2671458 () Bool)

(declare-fun tp!844584 () Bool)

(declare-fun tp!844587 () Bool)

(assert (=> b!2671458 (= e!1683667 (and tp!844584 tp!844587))))

(assert (=> b!2670799 (= tp!844351 e!1683667)))

(declare-fun b!2671459 () Bool)

(declare-fun tp!844586 () Bool)

(assert (=> b!2671459 (= e!1683667 tp!844586)))

(declare-fun b!2671460 () Bool)

(declare-fun tp!844585 () Bool)

(declare-fun tp!844583 () Bool)

(assert (=> b!2671460 (= e!1683667 (and tp!844585 tp!844583))))

(assert (= (and b!2670799 ((_ is ElementMatch!7827) (regTwo!16166 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671457))

(assert (= (and b!2670799 ((_ is Concat!12733) (regTwo!16166 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671458))

(assert (= (and b!2670799 ((_ is Star!7827) (regTwo!16166 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671459))

(assert (= (and b!2670799 ((_ is Union!7827) (regTwo!16166 (regex!4683 (rule!7089 (h!36122 l!4335)))))) b!2671460))

(declare-fun b!2671461 () Bool)

(declare-fun e!1683668 () Bool)

(declare-fun tp!844588 () Bool)

(assert (=> b!2671461 (= e!1683668 (and tp_is_empty!13809 tp!844588))))

(assert (=> b!2670792 (= tp!844340 e!1683668)))

(assert (= (and b!2670792 ((_ is Cons!30700) (t!223169 (originalCharacters!5449 separatorToken!152)))) b!2671461))

(declare-fun b_lambda!81387 () Bool)

(assert (= b_lambda!81359 (or b!2670710 b_lambda!81387)))

(declare-fun bs!479539 () Bool)

(declare-fun d!764046 () Bool)

(assert (= bs!479539 (and d!764046 b!2670710)))

(assert (=> bs!479539 (= (dynLambda!13290 lambda!99723 (h!36122 (t!223171 l!4335))) (rulesProduceIndividualToken!1992 thiss!14116 rules!1712 (h!36122 (t!223171 l!4335))))))

(assert (=> bs!479539 m!3036877))

(assert (=> d!763974 d!764046))

(declare-fun b_lambda!81389 () Bool)

(assert (= b_lambda!81363 (or b!2670409 b_lambda!81389)))

(assert (=> d!763990 d!763732))

(declare-fun b_lambda!81391 () Bool)

(assert (= b_lambda!81365 (or b!2670409 b_lambda!81391)))

(assert (=> b!2671199 d!763732))

(declare-fun b_lambda!81393 () Bool)

(assert (= b_lambda!81361 (or (and b!2671407 b_free!75099 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2670770 b_free!75079 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2671294 b_free!75087 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 (t!223171 l!4335)))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2670424 b_free!75059 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2670419 b_free!75067 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2670815 b_free!75083) (and b!2670415 b_free!75063 (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) b_lambda!81393)))

(declare-fun b_lambda!81395 () Bool)

(assert (= b_lambda!81349 (or (and b!2671407 b_free!75099 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 (t!223170 rules!1712))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2670770 b_free!75079 (= (toChars!6480 (transformation!4683 (h!36121 (t!223170 rules!1712)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2671294 b_free!75087 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 (t!223171 l!4335)))))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2670424 b_free!75059 (= (toChars!6480 (transformation!4683 (rule!7089 (h!36122 l!4335)))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2670419 b_free!75067 (= (toChars!6480 (transformation!4683 (h!36121 rules!1712))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) (and b!2670815 b_free!75083) (and b!2670415 b_free!75063 (= (toChars!6480 (transformation!4683 (rule!7089 separatorToken!152))) (toChars!6480 (transformation!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))) b_lambda!81395)))

(declare-fun b_lambda!81397 () Bool)

(assert (= b_lambda!81347 (or d!763718 b_lambda!81397)))

(declare-fun bs!479540 () Bool)

(declare-fun d!764048 () Bool)

(assert (= bs!479540 (and d!764048 d!763718)))

(assert (=> bs!479540 (= (dynLambda!13290 lambda!99726 (h!36122 l!4335)) (rulesProduceIndividualToken!1992 thiss!14116 rules!1712 (h!36122 l!4335)))))

(assert (=> bs!479540 m!3036845))

(assert (=> b!2670969 d!764048))

(declare-fun b_lambda!81399 () Bool)

(assert (= b_lambda!81367 (or d!763694 b_lambda!81399)))

(declare-fun bs!479541 () Bool)

(declare-fun d!764050 () Bool)

(assert (= bs!479541 (and d!764050 d!763694)))

(assert (=> bs!479541 (= (dynLambda!13296 lambda!99716 (h!36121 rules!1712)) (ruleValid!1551 thiss!14116 (h!36121 rules!1712)))))

(assert (=> bs!479541 m!3036721))

(assert (=> b!2671223 d!764050))

(declare-fun b_lambda!81401 () Bool)

(assert (= b_lambda!81369 (or b!2670413 b_lambda!81401)))

(declare-fun bs!479542 () Bool)

(declare-fun d!764052 () Bool)

(assert (= bs!479542 (and d!764052 b!2670413)))

(assert (=> bs!479542 (= (dynLambda!13290 lambda!99707 (h!36122 (t!223171 l!4335))) (not (isSeparator!4683 (rule!7089 (h!36122 (t!223171 l!4335))))))))

(assert (=> b!2671231 d!764052))

(check-sat (not tb!149687) (not b!2671406) (not b!2671304) (not d!763876) (not d!763754) (not b!2670970) (not b!2671243) (not b!2671210) b_and!197207 (not b_lambda!81393) (not b_next!75803) (not b_lambda!81395) (not d!763966) (not b!2670816) (not d!763956) (not b!2671017) (not b!2671423) (not bm!172465) (not b!2671140) (not bm!172467) (not b!2671382) (not b!2671136) (not b!2671461) (not b_next!75769) (not b!2671278) (not b_lambda!81401) (not b!2671389) (not b!2671405) (not bm!172464) (not b!2671216) (not b!2671451) (not b!2671447) b_and!197225 (not b!2671434) (not b!2671178) (not b!2670817) (not b!2671146) b_and!197215 (not b!2671455) (not b_lambda!81399) b_and!197145 (not b!2670886) (not bs!479539) (not b!2671200) (not b!2671388) (not b!2670990) (not d!763948) (not b_lambda!81325) (not b!2671265) (not b!2671173) (not b!2671267) (not b!2671198) (not b!2671043) (not b!2671135) (not b!2671132) (not b!2671381) (not b!2671436) (not d!763738) (not b!2671336) (not d!763870) (not b!2670965) (not b!2671372) (not b!2671215) (not b!2671269) (not b!2671249) (not b_next!75801) (not b!2671432) (not b!2671395) (not b!2671046) (not b!2671171) (not b!2671039) (not d!764018) (not d!763920) b_and!197211 (not b!2670983) (not b!2671459) (not b_next!75783) (not b!2671396) (not b!2670862) (not d!763854) (not b!2671175) (not d!763954) tp_is_empty!13809 b_and!197093 (not b!2671271) (not b_next!75763) (not b!2670720) (not b!2670966) (not b_next!75791) (not b_next!75781) (not b!2671454) (not b!2671373) (not d!763978) (not b!2671364) (not b!2671307) (not b_lambda!81397) (not tb!149667) (not b!2671182) (not d!763888) (not b!2671212) (not b!2671134) (not b!2671435) (not b!2671431) (not b!2671041) (not d!763856) (not d!763910) (not b!2671224) (not b!2671458) (not b!2671277) (not d!764012) (not b!2671292) (not b!2671138) (not b!2671169) b_and!197203 (not b!2671342) (not d!763996) (not b!2671205) (not d!764020) (not b!2671077) (not b!2671343) (not d!763970) (not b!2671218) (not b!2671357) (not b_next!75765) (not d!763736) (not b!2671078) (not b!2671344) (not b!2670818) (not b!2671230) (not d!763902) (not b!2671293) (not b!2671448) (not b!2671184) (not d!763980) (not b!2671166) (not d!764010) b_and!197097 (not b!2671167) (not b_next!75767) (not d!763912) (not d!763758) (not b_next!75789) (not b!2670967) (not b!2671335) (not b!2671168) (not b!2671207) (not b!2671170) (not b!2671380) (not b!2671452) (not b_lambda!81357) (not b_lambda!81331) (not b_next!75771) b_and!197205 (not b!2671197) (not b!2671213) (not b!2671281) (not b!2671387) (not b!2671137) (not b!2671208) (not d!763972) (not b!2671425) (not b!2671446) (not b_lambda!81389) (not d!763952) (not b!2670982) (not b_lambda!81333) (not d!763922) (not b!2670976) (not b!2671308) (not d!763850) (not bs!479540) (not b!2670979) (not b_next!75787) (not b!2671350) (not b!2671440) (not b!2671073) (not b!2671424) (not b!2671047) (not b_lambda!81329) b_and!197213 (not b!2671232) (not d!764028) (not b!2670978) (not b!2671444) (not b!2670975) b_and!197149 (not b!2670989) (not b!2671430) b_and!197227 (not d!763964) (not b!2671443) b_and!197089 (not b!2671261) (not d!763874) (not b_next!75785) (not b!2671442) (not d!763862) (not b!2671450) (not b!2670977) (not b!2671141) (not b!2671165) (not d!763864) (not d!763852) (not b_lambda!81327) (not b_lambda!81387) (not b!2671086) (not d!763772) b_and!197209 (not b!2671439) (not b!2671394) (not d!763858) (not b!2671456) (not b!2671045) (not b!2671374) (not b!2670888) (not d!763976) (not b!2671352) (not b_next!75761) (not d!763884) (not d!763958) (not b!2671276) (not bm!172466) (not d!763986) (not bm!172455) (not b!2671334) (not b!2671144) (not d!764006) (not d!764022) (not d!764024) (not d!763974) (not d!763866) (not d!764026) (not b!2671075) (not b!2671270) (not b!2671438) (not b!2670557) (not b!2671087) (not b!2671306) (not bm!172468) (not b!2671291) (not d!763994) (not b!2671183) (not b!2671460) (not b!2671284) (not bs!479541) (not b_lambda!81391) (not b!2670980) (not d!763962) (not b!2671143) (not d!763950) (not b!2671351))
(check-sat (not b_next!75769) b_and!197225 (not b_next!75801) b_and!197211 (not b_next!75783) b_and!197203 (not b_next!75765) b_and!197097 (not b_next!75787) b_and!197209 (not b_next!75761) b_and!197207 (not b_next!75803) b_and!197145 b_and!197215 (not b_next!75763) b_and!197093 (not b_next!75791) (not b_next!75781) (not b_next!75767) (not b_next!75789) (not b_next!75771) b_and!197205 b_and!197227 b_and!197213 b_and!197149 b_and!197089 (not b_next!75785))
