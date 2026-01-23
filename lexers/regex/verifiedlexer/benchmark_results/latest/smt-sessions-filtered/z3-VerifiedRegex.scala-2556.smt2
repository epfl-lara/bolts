; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137362 () Bool)

(assert start!137362)

(declare-fun b!1467995 () Bool)

(declare-fun b_free!36855 () Bool)

(declare-fun b_next!37559 () Bool)

(assert (=> b!1467995 (= b_free!36855 (not b_next!37559))))

(declare-fun tp!413434 () Bool)

(declare-fun b_and!100401 () Bool)

(assert (=> b!1467995 (= tp!413434 b_and!100401)))

(declare-fun b_free!36857 () Bool)

(declare-fun b_next!37561 () Bool)

(assert (=> b!1467995 (= b_free!36857 (not b_next!37561))))

(declare-fun tp!413431 () Bool)

(declare-fun b_and!100403 () Bool)

(assert (=> b!1467995 (= tp!413431 b_and!100403)))

(declare-fun b!1467992 () Bool)

(declare-fun b_free!36859 () Bool)

(declare-fun b_next!37563 () Bool)

(assert (=> b!1467992 (= b_free!36859 (not b_next!37563))))

(declare-fun tp!413432 () Bool)

(declare-fun b_and!100405 () Bool)

(assert (=> b!1467992 (= tp!413432 b_and!100405)))

(declare-fun b_free!36861 () Bool)

(declare-fun b_next!37565 () Bool)

(assert (=> b!1467992 (= b_free!36861 (not b_next!37565))))

(declare-fun tp!413433 () Bool)

(declare-fun b_and!100407 () Bool)

(assert (=> b!1467992 (= tp!413433 b_and!100407)))

(declare-fun b!1467985 () Bool)

(declare-fun e!936968 () Bool)

(declare-datatypes ((C!8228 0))(
  ( (C!8229 (val!4684 Int)) )
))
(declare-datatypes ((List!15371 0))(
  ( (Nil!15305) (Cons!15305 (h!20706 C!8228) (t!135194 List!15371)) )
))
(declare-fun lt!511016 () List!15371)

(assert (=> b!1467985 (= e!936968 (= lt!511016 Nil!15305))))

(declare-fun b!1467986 () Bool)

(declare-fun res!664169 () Bool)

(declare-fun e!936955 () Bool)

(assert (=> b!1467986 (=> (not res!664169) (not e!936955))))

(declare-datatypes ((List!15372 0))(
  ( (Nil!15306) (Cons!15306 (h!20707 (_ BitVec 16)) (t!135195 List!15372)) )
))
(declare-datatypes ((TokenValue!2801 0))(
  ( (FloatLiteralValue!5602 (text!20052 List!15372)) (TokenValueExt!2800 (__x!9392 Int)) (Broken!14005 (value!86885 List!15372)) (Object!2866) (End!2801) (Def!2801) (Underscore!2801) (Match!2801) (Else!2801) (Error!2801) (Case!2801) (If!2801) (Extends!2801) (Abstract!2801) (Class!2801) (Val!2801) (DelimiterValue!5602 (del!2861 List!15372)) (KeywordValue!2807 (value!86886 List!15372)) (CommentValue!5602 (value!86887 List!15372)) (WhitespaceValue!5602 (value!86888 List!15372)) (IndentationValue!2801 (value!86889 List!15372)) (String!18260) (Int32!2801) (Broken!14006 (value!86890 List!15372)) (Boolean!2802) (Unit!25066) (OperatorValue!2804 (op!2861 List!15372)) (IdentifierValue!5602 (value!86891 List!15372)) (IdentifierValue!5603 (value!86892 List!15372)) (WhitespaceValue!5603 (value!86893 List!15372)) (True!5602) (False!5602) (Broken!14007 (value!86894 List!15372)) (Broken!14008 (value!86895 List!15372)) (True!5603) (RightBrace!2801) (RightBracket!2801) (Colon!2801) (Null!2801) (Comma!2801) (LeftBracket!2801) (False!5603) (LeftBrace!2801) (ImaginaryLiteralValue!2801 (text!20053 List!15372)) (StringLiteralValue!8403 (value!86896 List!15372)) (EOFValue!2801 (value!86897 List!15372)) (IdentValue!2801 (value!86898 List!15372)) (DelimiterValue!5603 (value!86899 List!15372)) (DedentValue!2801 (value!86900 List!15372)) (NewLineValue!2801 (value!86901 List!15372)) (IntegerValue!8403 (value!86902 (_ BitVec 32)) (text!20054 List!15372)) (IntegerValue!8404 (value!86903 Int) (text!20055 List!15372)) (Times!2801) (Or!2801) (Equal!2801) (Minus!2801) (Broken!14009 (value!86904 List!15372)) (And!2801) (Div!2801) (LessEqual!2801) (Mod!2801) (Concat!6826) (Not!2801) (Plus!2801) (SpaceValue!2801 (value!86905 List!15372)) (IntegerValue!8405 (value!86906 Int) (text!20056 List!15372)) (StringLiteralValue!8404 (text!20057 List!15372)) (FloatLiteralValue!5603 (text!20058 List!15372)) (BytesLiteralValue!2801 (value!86907 List!15372)) (CommentValue!5603 (value!86908 List!15372)) (StringLiteralValue!8405 (value!86909 List!15372)) (ErrorTokenValue!2801 (msg!2862 List!15372)) )
))
(declare-datatypes ((IArray!10439 0))(
  ( (IArray!10440 (innerList!5277 List!15371)) )
))
(declare-datatypes ((Conc!5217 0))(
  ( (Node!5217 (left!12979 Conc!5217) (right!13309 Conc!5217) (csize!10664 Int) (cheight!5428 Int)) (Leaf!7774 (xs!7972 IArray!10439) (csize!10665 Int)) (Empty!5217) )
))
(declare-datatypes ((BalanceConc!10374 0))(
  ( (BalanceConc!10375 (c!241969 Conc!5217)) )
))
(declare-datatypes ((TokenValueInjection!5262 0))(
  ( (TokenValueInjection!5263 (toValue!4030 Int) (toChars!3889 Int)) )
))
(declare-datatypes ((Regex!4025 0))(
  ( (ElementMatch!4025 (c!241970 C!8228)) (Concat!6827 (regOne!8562 Regex!4025) (regTwo!8562 Regex!4025)) (EmptyExpr!4025) (Star!4025 (reg!4354 Regex!4025)) (EmptyLang!4025) (Union!4025 (regOne!8563 Regex!4025) (regTwo!8563 Regex!4025)) )
))
(declare-datatypes ((String!18261 0))(
  ( (String!18262 (value!86910 String)) )
))
(declare-datatypes ((Rule!5222 0))(
  ( (Rule!5223 (regex!2711 Regex!4025) (tag!2975 String!18261) (isSeparator!2711 Bool) (transformation!2711 TokenValueInjection!5262)) )
))
(declare-datatypes ((Token!5084 0))(
  ( (Token!5085 (value!86911 TokenValue!2801) (rule!4488 Rule!5222) (size!12483 Int) (originalCharacters!3573 List!15371)) )
))
(declare-datatypes ((List!15373 0))(
  ( (Nil!15307) (Cons!15307 (h!20708 Token!5084) (t!135196 List!15373)) )
))
(declare-fun tokens1!47 () List!15373)

(declare-fun isEmpty!9597 (List!15373) Bool)

(assert (=> b!1467986 (= res!664169 (not (isEmpty!9597 (t!135196 tokens1!47))))))

(declare-fun lt!511019 () List!15373)

(declare-fun b!1467987 () Bool)

(declare-datatypes ((LexerInterface!2367 0))(
  ( (LexerInterfaceExt!2364 (__x!9393 Int)) (Lexer!2365) )
))
(declare-fun thiss!20360 () LexerInterface!2367)

(declare-fun ++!4166 (List!15371 List!15371) List!15371)

(declare-fun list!6137 (BalanceConc!10374) List!15371)

(declare-fun charsOf!1566 (Token!5084) BalanceConc!10374)

(declare-fun printList!759 (LexerInterface!2367 List!15373) List!15371)

(assert (=> b!1467987 (= e!936968 (= lt!511016 (++!4166 (list!6137 (charsOf!1566 (h!20708 lt!511019))) (printList!759 thiss!20360 (t!135196 lt!511019)))))))

(declare-fun e!936966 () Bool)

(declare-fun lt!511014 () List!15371)

(declare-fun b!1467988 () Bool)

(declare-fun lt!511022 () List!15371)

(assert (=> b!1467988 (= e!936966 (= lt!511016 (++!4166 lt!511014 lt!511022)))))

(declare-fun b!1467989 () Bool)

(declare-fun e!936959 () Bool)

(declare-fun tokens2!49 () List!15373)

(declare-fun e!936954 () Bool)

(declare-fun tp!413426 () Bool)

(declare-fun inv!21 (TokenValue!2801) Bool)

(assert (=> b!1467989 (= e!936954 (and (inv!21 (value!86911 (h!20708 tokens2!49))) e!936959 tp!413426))))

(declare-fun tp!413429 () Bool)

(declare-fun b!1467990 () Bool)

(declare-fun e!936960 () Bool)

(declare-fun inv!20471 (Token!5084) Bool)

(assert (=> b!1467990 (= e!936960 (and (inv!20471 (h!20708 tokens2!49)) e!936954 tp!413429))))

(declare-fun tp!413430 () Bool)

(declare-fun e!936963 () Bool)

(declare-fun e!936964 () Bool)

(declare-fun b!1467991 () Bool)

(declare-fun inv!20468 (String!18261) Bool)

(declare-fun inv!20472 (TokenValueInjection!5262) Bool)

(assert (=> b!1467991 (= e!936964 (and tp!413430 (inv!20468 (tag!2975 (rule!4488 (h!20708 tokens1!47)))) (inv!20472 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) e!936963))))

(assert (=> b!1467992 (= e!936963 (and tp!413432 tp!413433))))

(declare-fun b!1467984 () Bool)

(declare-fun tp!413427 () Bool)

(declare-fun e!936958 () Bool)

(declare-fun e!936967 () Bool)

(assert (=> b!1467984 (= e!936967 (and (inv!20471 (h!20708 tokens1!47)) e!936958 tp!413427))))

(declare-fun res!664167 () Bool)

(assert (=> start!137362 (=> (not res!664167) (not e!936955))))

(get-info :version)

(assert (=> start!137362 (= res!664167 (and ((_ is Lexer!2365) thiss!20360) ((_ is Cons!15307) tokens1!47)))))

(assert (=> start!137362 e!936955))

(assert (=> start!137362 true))

(assert (=> start!137362 e!936967))

(assert (=> start!137362 e!936960))

(declare-fun b!1467993 () Bool)

(assert (=> b!1467993 (= e!936955 (not e!936966))))

(declare-fun res!664168 () Bool)

(assert (=> b!1467993 (=> res!664168 e!936966)))

(declare-fun lt!511021 () List!15371)

(assert (=> b!1467993 (= res!664168 (not (= (printList!759 thiss!20360 tokens1!47) lt!511021)))))

(assert (=> b!1467993 e!936968))

(declare-fun c!241968 () Bool)

(assert (=> b!1467993 (= c!241968 ((_ is Cons!15307) lt!511019))))

(assert (=> b!1467993 (= lt!511016 (printList!759 thiss!20360 lt!511019))))

(declare-fun ++!4167 (List!15373 List!15373) List!15373)

(assert (=> b!1467993 (= lt!511019 (++!4167 tokens1!47 tokens2!49))))

(declare-fun lt!511015 () List!15371)

(assert (=> b!1467993 (= lt!511015 lt!511021)))

(declare-fun lt!511020 () List!15371)

(assert (=> b!1467993 (= lt!511021 (++!4166 lt!511014 lt!511020))))

(assert (=> b!1467993 (= lt!511015 (printList!759 thiss!20360 tokens1!47))))

(assert (=> b!1467993 (= lt!511014 (list!6137 (charsOf!1566 (h!20708 tokens1!47))))))

(declare-fun lt!511023 () List!15371)

(assert (=> b!1467993 (= lt!511022 (++!4166 lt!511020 lt!511023))))

(declare-fun lt!511018 () List!15373)

(assert (=> b!1467993 (= lt!511022 (printList!759 thiss!20360 lt!511018))))

(assert (=> b!1467993 (= lt!511023 (printList!759 thiss!20360 tokens2!49))))

(assert (=> b!1467993 (= lt!511020 (printList!759 thiss!20360 (t!135196 tokens1!47)))))

(assert (=> b!1467993 (= lt!511018 (++!4167 (t!135196 tokens1!47) tokens2!49))))

(declare-datatypes ((Unit!25067 0))(
  ( (Unit!25068) )
))
(declare-fun lt!511017 () Unit!25067)

(declare-fun lemmaPrintConcatSameAsConcatPrint!96 (LexerInterface!2367 List!15373 List!15373) Unit!25067)

(assert (=> b!1467993 (= lt!511017 (lemmaPrintConcatSameAsConcatPrint!96 thiss!20360 (t!135196 tokens1!47) tokens2!49))))

(declare-fun e!936961 () Bool)

(declare-fun tp!413425 () Bool)

(declare-fun b!1467994 () Bool)

(assert (=> b!1467994 (= e!936959 (and tp!413425 (inv!20468 (tag!2975 (rule!4488 (h!20708 tokens2!49)))) (inv!20472 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) e!936961))))

(assert (=> b!1467995 (= e!936961 (and tp!413434 tp!413431))))

(declare-fun tp!413428 () Bool)

(declare-fun b!1467996 () Bool)

(assert (=> b!1467996 (= e!936958 (and (inv!21 (value!86911 (h!20708 tokens1!47))) e!936964 tp!413428))))

(assert (= (and start!137362 res!664167) b!1467986))

(assert (= (and b!1467986 res!664169) b!1467993))

(assert (= (and b!1467993 c!241968) b!1467987))

(assert (= (and b!1467993 (not c!241968)) b!1467985))

(assert (= (and b!1467993 (not res!664168)) b!1467988))

(assert (= b!1467991 b!1467992))

(assert (= b!1467996 b!1467991))

(assert (= b!1467984 b!1467996))

(assert (= (and start!137362 ((_ is Cons!15307) tokens1!47)) b!1467984))

(assert (= b!1467994 b!1467995))

(assert (= b!1467989 b!1467994))

(assert (= b!1467990 b!1467989))

(assert (= (and start!137362 ((_ is Cons!15307) tokens2!49)) b!1467990))

(declare-fun m!1712569 () Bool)

(assert (=> b!1467991 m!1712569))

(declare-fun m!1712571 () Bool)

(assert (=> b!1467991 m!1712571))

(declare-fun m!1712573 () Bool)

(assert (=> b!1467988 m!1712573))

(declare-fun m!1712575 () Bool)

(assert (=> b!1467990 m!1712575))

(declare-fun m!1712577 () Bool)

(assert (=> b!1467989 m!1712577))

(declare-fun m!1712579 () Bool)

(assert (=> b!1467993 m!1712579))

(declare-fun m!1712581 () Bool)

(assert (=> b!1467993 m!1712581))

(declare-fun m!1712583 () Bool)

(assert (=> b!1467993 m!1712583))

(declare-fun m!1712585 () Bool)

(assert (=> b!1467993 m!1712585))

(declare-fun m!1712587 () Bool)

(assert (=> b!1467993 m!1712587))

(declare-fun m!1712589 () Bool)

(assert (=> b!1467993 m!1712589))

(assert (=> b!1467993 m!1712579))

(declare-fun m!1712591 () Bool)

(assert (=> b!1467993 m!1712591))

(declare-fun m!1712593 () Bool)

(assert (=> b!1467993 m!1712593))

(declare-fun m!1712595 () Bool)

(assert (=> b!1467993 m!1712595))

(declare-fun m!1712597 () Bool)

(assert (=> b!1467993 m!1712597))

(declare-fun m!1712599 () Bool)

(assert (=> b!1467993 m!1712599))

(declare-fun m!1712601 () Bool)

(assert (=> b!1467993 m!1712601))

(declare-fun m!1712603 () Bool)

(assert (=> b!1467996 m!1712603))

(declare-fun m!1712605 () Bool)

(assert (=> b!1467986 m!1712605))

(declare-fun m!1712607 () Bool)

(assert (=> b!1467987 m!1712607))

(assert (=> b!1467987 m!1712607))

(declare-fun m!1712609 () Bool)

(assert (=> b!1467987 m!1712609))

(declare-fun m!1712611 () Bool)

(assert (=> b!1467987 m!1712611))

(assert (=> b!1467987 m!1712609))

(assert (=> b!1467987 m!1712611))

(declare-fun m!1712613 () Bool)

(assert (=> b!1467987 m!1712613))

(declare-fun m!1712615 () Bool)

(assert (=> b!1467994 m!1712615))

(declare-fun m!1712617 () Bool)

(assert (=> b!1467994 m!1712617))

(declare-fun m!1712619 () Bool)

(assert (=> b!1467984 m!1712619))

(check-sat b_and!100401 b_and!100405 (not b_next!37563) (not b!1467988) (not b!1467993) (not b!1467991) (not b!1467996) (not b!1467984) (not b_next!37565) (not b!1467990) (not b!1467989) (not b_next!37561) (not b!1467987) b_and!100403 (not b_next!37559) b_and!100407 (not b!1467986) (not b!1467994))
(check-sat b_and!100401 b_and!100405 (not b_next!37563) (not b_next!37561) b_and!100403 (not b_next!37565) (not b_next!37559) b_and!100407)
(get-model)

(declare-fun d!430709 () Bool)

(declare-fun res!664179 () Bool)

(declare-fun e!936971 () Bool)

(assert (=> d!430709 (=> (not res!664179) (not e!936971))))

(declare-fun isEmpty!9598 (List!15371) Bool)

(assert (=> d!430709 (= res!664179 (not (isEmpty!9598 (originalCharacters!3573 (h!20708 tokens2!49)))))))

(assert (=> d!430709 (= (inv!20471 (h!20708 tokens2!49)) e!936971)))

(declare-fun b!1468001 () Bool)

(declare-fun res!664180 () Bool)

(assert (=> b!1468001 (=> (not res!664180) (not e!936971))))

(declare-fun dynLambda!6967 (Int TokenValue!2801) BalanceConc!10374)

(assert (=> b!1468001 (= res!664180 (= (originalCharacters!3573 (h!20708 tokens2!49)) (list!6137 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (value!86911 (h!20708 tokens2!49))))))))

(declare-fun b!1468002 () Bool)

(declare-fun size!12486 (List!15371) Int)

(assert (=> b!1468002 (= e!936971 (= (size!12483 (h!20708 tokens2!49)) (size!12486 (originalCharacters!3573 (h!20708 tokens2!49)))))))

(assert (= (and d!430709 res!664179) b!1468001))

(assert (= (and b!1468001 res!664180) b!1468002))

(declare-fun b_lambda!45771 () Bool)

(assert (=> (not b_lambda!45771) (not b!1468001)))

(declare-fun t!135198 () Bool)

(declare-fun tb!83033 () Bool)

(assert (=> (and b!1467995 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49))))) t!135198) tb!83033))

(declare-fun b!1468007 () Bool)

(declare-fun e!936974 () Bool)

(declare-fun tp!413437 () Bool)

(declare-fun inv!20475 (Conc!5217) Bool)

(assert (=> b!1468007 (= e!936974 (and (inv!20475 (c!241969 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (value!86911 (h!20708 tokens2!49))))) tp!413437))))

(declare-fun result!99742 () Bool)

(declare-fun inv!20476 (BalanceConc!10374) Bool)

(assert (=> tb!83033 (= result!99742 (and (inv!20476 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (value!86911 (h!20708 tokens2!49)))) e!936974))))

(assert (= tb!83033 b!1468007))

(declare-fun m!1712621 () Bool)

(assert (=> b!1468007 m!1712621))

(declare-fun m!1712623 () Bool)

(assert (=> tb!83033 m!1712623))

(assert (=> b!1468001 t!135198))

(declare-fun b_and!100409 () Bool)

(assert (= b_and!100403 (and (=> t!135198 result!99742) b_and!100409)))

(declare-fun tb!83035 () Bool)

(declare-fun t!135200 () Bool)

(assert (=> (and b!1467992 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49))))) t!135200) tb!83035))

(declare-fun result!99746 () Bool)

(assert (= result!99746 result!99742))

(assert (=> b!1468001 t!135200))

(declare-fun b_and!100411 () Bool)

(assert (= b_and!100407 (and (=> t!135200 result!99746) b_and!100411)))

(declare-fun m!1712625 () Bool)

(assert (=> d!430709 m!1712625))

(declare-fun m!1712627 () Bool)

(assert (=> b!1468001 m!1712627))

(assert (=> b!1468001 m!1712627))

(declare-fun m!1712629 () Bool)

(assert (=> b!1468001 m!1712629))

(declare-fun m!1712631 () Bool)

(assert (=> b!1468002 m!1712631))

(assert (=> b!1467990 d!430709))

(declare-fun b!1468034 () Bool)

(declare-fun e!936991 () Bool)

(declare-fun inv!16 (TokenValue!2801) Bool)

(assert (=> b!1468034 (= e!936991 (inv!16 (value!86911 (h!20708 tokens2!49))))))

(declare-fun b!1468035 () Bool)

(declare-fun e!936989 () Bool)

(assert (=> b!1468035 (= e!936991 e!936989)))

(declare-fun c!241980 () Bool)

(assert (=> b!1468035 (= c!241980 ((_ is IntegerValue!8404) (value!86911 (h!20708 tokens2!49))))))

(declare-fun b!1468036 () Bool)

(declare-fun res!664191 () Bool)

(declare-fun e!936990 () Bool)

(assert (=> b!1468036 (=> res!664191 e!936990)))

(assert (=> b!1468036 (= res!664191 (not ((_ is IntegerValue!8405) (value!86911 (h!20708 tokens2!49)))))))

(assert (=> b!1468036 (= e!936989 e!936990)))

(declare-fun b!1468037 () Bool)

(declare-fun inv!17 (TokenValue!2801) Bool)

(assert (=> b!1468037 (= e!936989 (inv!17 (value!86911 (h!20708 tokens2!49))))))

(declare-fun b!1468038 () Bool)

(declare-fun inv!15 (TokenValue!2801) Bool)

(assert (=> b!1468038 (= e!936990 (inv!15 (value!86911 (h!20708 tokens2!49))))))

(declare-fun d!430713 () Bool)

(declare-fun c!241979 () Bool)

(assert (=> d!430713 (= c!241979 ((_ is IntegerValue!8403) (value!86911 (h!20708 tokens2!49))))))

(assert (=> d!430713 (= (inv!21 (value!86911 (h!20708 tokens2!49))) e!936991)))

(assert (= (and d!430713 c!241979) b!1468034))

(assert (= (and d!430713 (not c!241979)) b!1468035))

(assert (= (and b!1468035 c!241980) b!1468037))

(assert (= (and b!1468035 (not c!241980)) b!1468036))

(assert (= (and b!1468036 (not res!664191)) b!1468038))

(declare-fun m!1712661 () Bool)

(assert (=> b!1468034 m!1712661))

(declare-fun m!1712663 () Bool)

(assert (=> b!1468037 m!1712663))

(declare-fun m!1712665 () Bool)

(assert (=> b!1468038 m!1712665))

(assert (=> b!1467989 d!430713))

(declare-fun d!430719 () Bool)

(declare-fun res!664192 () Bool)

(declare-fun e!936992 () Bool)

(assert (=> d!430719 (=> (not res!664192) (not e!936992))))

(assert (=> d!430719 (= res!664192 (not (isEmpty!9598 (originalCharacters!3573 (h!20708 tokens1!47)))))))

(assert (=> d!430719 (= (inv!20471 (h!20708 tokens1!47)) e!936992)))

(declare-fun b!1468039 () Bool)

(declare-fun res!664193 () Bool)

(assert (=> b!1468039 (=> (not res!664193) (not e!936992))))

(assert (=> b!1468039 (= res!664193 (= (originalCharacters!3573 (h!20708 tokens1!47)) (list!6137 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (value!86911 (h!20708 tokens1!47))))))))

(declare-fun b!1468040 () Bool)

(assert (=> b!1468040 (= e!936992 (= (size!12483 (h!20708 tokens1!47)) (size!12486 (originalCharacters!3573 (h!20708 tokens1!47)))))))

(assert (= (and d!430719 res!664192) b!1468039))

(assert (= (and b!1468039 res!664193) b!1468040))

(declare-fun b_lambda!45773 () Bool)

(assert (=> (not b_lambda!45773) (not b!1468039)))

(declare-fun tb!83037 () Bool)

(declare-fun t!135202 () Bool)

(assert (=> (and b!1467995 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47))))) t!135202) tb!83037))

(declare-fun b!1468041 () Bool)

(declare-fun e!936993 () Bool)

(declare-fun tp!413438 () Bool)

(assert (=> b!1468041 (= e!936993 (and (inv!20475 (c!241969 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (value!86911 (h!20708 tokens1!47))))) tp!413438))))

(declare-fun result!99748 () Bool)

(assert (=> tb!83037 (= result!99748 (and (inv!20476 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (value!86911 (h!20708 tokens1!47)))) e!936993))))

(assert (= tb!83037 b!1468041))

(declare-fun m!1712669 () Bool)

(assert (=> b!1468041 m!1712669))

(declare-fun m!1712671 () Bool)

(assert (=> tb!83037 m!1712671))

(assert (=> b!1468039 t!135202))

(declare-fun b_and!100413 () Bool)

(assert (= b_and!100409 (and (=> t!135202 result!99748) b_and!100413)))

(declare-fun t!135204 () Bool)

(declare-fun tb!83039 () Bool)

(assert (=> (and b!1467992 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47))))) t!135204) tb!83039))

(declare-fun result!99750 () Bool)

(assert (= result!99750 result!99748))

(assert (=> b!1468039 t!135204))

(declare-fun b_and!100415 () Bool)

(assert (= b_and!100411 (and (=> t!135204 result!99750) b_and!100415)))

(declare-fun m!1712673 () Bool)

(assert (=> d!430719 m!1712673))

(declare-fun m!1712675 () Bool)

(assert (=> b!1468039 m!1712675))

(assert (=> b!1468039 m!1712675))

(declare-fun m!1712677 () Bool)

(assert (=> b!1468039 m!1712677))

(declare-fun m!1712679 () Bool)

(assert (=> b!1468040 m!1712679))

(assert (=> b!1467984 d!430719))

(declare-fun d!430723 () Bool)

(assert (=> d!430723 (= (inv!20468 (tag!2975 (rule!4488 (h!20708 tokens1!47)))) (= (mod (str.len (value!86910 (tag!2975 (rule!4488 (h!20708 tokens1!47))))) 2) 0))))

(assert (=> b!1467991 d!430723))

(declare-fun d!430725 () Bool)

(declare-fun res!664196 () Bool)

(declare-fun e!936999 () Bool)

(assert (=> d!430725 (=> (not res!664196) (not e!936999))))

(declare-fun semiInverseModEq!1015 (Int Int) Bool)

(assert (=> d!430725 (= res!664196 (semiInverseModEq!1015 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (toValue!4030 (transformation!2711 (rule!4488 (h!20708 tokens1!47))))))))

(assert (=> d!430725 (= (inv!20472 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) e!936999)))

(declare-fun b!1468049 () Bool)

(declare-fun equivClasses!974 (Int Int) Bool)

(assert (=> b!1468049 (= e!936999 (equivClasses!974 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (toValue!4030 (transformation!2711 (rule!4488 (h!20708 tokens1!47))))))))

(assert (= (and d!430725 res!664196) b!1468049))

(declare-fun m!1712689 () Bool)

(assert (=> d!430725 m!1712689))

(declare-fun m!1712691 () Bool)

(assert (=> b!1468049 m!1712691))

(assert (=> b!1467991 d!430725))

(declare-fun d!430729 () Bool)

(assert (=> d!430729 (= (isEmpty!9597 (t!135196 tokens1!47)) ((_ is Nil!15307) (t!135196 tokens1!47)))))

(assert (=> b!1467986 d!430729))

(declare-fun b!1468054 () Bool)

(declare-fun e!937004 () Bool)

(assert (=> b!1468054 (= e!937004 (inv!16 (value!86911 (h!20708 tokens1!47))))))

(declare-fun b!1468055 () Bool)

(declare-fun e!937002 () Bool)

(assert (=> b!1468055 (= e!937004 e!937002)))

(declare-fun c!241984 () Bool)

(assert (=> b!1468055 (= c!241984 ((_ is IntegerValue!8404) (value!86911 (h!20708 tokens1!47))))))

(declare-fun b!1468056 () Bool)

(declare-fun res!664197 () Bool)

(declare-fun e!937003 () Bool)

(assert (=> b!1468056 (=> res!664197 e!937003)))

(assert (=> b!1468056 (= res!664197 (not ((_ is IntegerValue!8405) (value!86911 (h!20708 tokens1!47)))))))

(assert (=> b!1468056 (= e!937002 e!937003)))

(declare-fun b!1468057 () Bool)

(assert (=> b!1468057 (= e!937002 (inv!17 (value!86911 (h!20708 tokens1!47))))))

(declare-fun b!1468058 () Bool)

(assert (=> b!1468058 (= e!937003 (inv!15 (value!86911 (h!20708 tokens1!47))))))

(declare-fun d!430731 () Bool)

(declare-fun c!241983 () Bool)

(assert (=> d!430731 (= c!241983 ((_ is IntegerValue!8403) (value!86911 (h!20708 tokens1!47))))))

(assert (=> d!430731 (= (inv!21 (value!86911 (h!20708 tokens1!47))) e!937004)))

(assert (= (and d!430731 c!241983) b!1468054))

(assert (= (and d!430731 (not c!241983)) b!1468055))

(assert (= (and b!1468055 c!241984) b!1468057))

(assert (= (and b!1468055 (not c!241984)) b!1468056))

(assert (= (and b!1468056 (not res!664197)) b!1468058))

(declare-fun m!1712693 () Bool)

(assert (=> b!1468054 m!1712693))

(declare-fun m!1712695 () Bool)

(assert (=> b!1468057 m!1712695))

(declare-fun m!1712697 () Bool)

(assert (=> b!1468058 m!1712697))

(assert (=> b!1467996 d!430731))

(declare-fun b!1468182 () Bool)

(declare-fun lt!511043 () List!15371)

(declare-fun e!937081 () Bool)

(assert (=> b!1468182 (= e!937081 (or (not (= (printList!759 thiss!20360 (t!135196 lt!511019)) Nil!15305)) (= lt!511043 (list!6137 (charsOf!1566 (h!20708 lt!511019))))))))

(declare-fun b!1468179 () Bool)

(declare-fun e!937082 () List!15371)

(assert (=> b!1468179 (= e!937082 (printList!759 thiss!20360 (t!135196 lt!511019)))))

(declare-fun b!1468180 () Bool)

(assert (=> b!1468180 (= e!937082 (Cons!15305 (h!20706 (list!6137 (charsOf!1566 (h!20708 lt!511019)))) (++!4166 (t!135194 (list!6137 (charsOf!1566 (h!20708 lt!511019)))) (printList!759 thiss!20360 (t!135196 lt!511019)))))))

(declare-fun d!430733 () Bool)

(assert (=> d!430733 e!937081))

(declare-fun res!664231 () Bool)

(assert (=> d!430733 (=> (not res!664231) (not e!937081))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2260 (List!15371) (InoxSet C!8228))

(assert (=> d!430733 (= res!664231 (= (content!2260 lt!511043) ((_ map or) (content!2260 (list!6137 (charsOf!1566 (h!20708 lt!511019)))) (content!2260 (printList!759 thiss!20360 (t!135196 lt!511019))))))))

(assert (=> d!430733 (= lt!511043 e!937082)))

(declare-fun c!242007 () Bool)

(assert (=> d!430733 (= c!242007 ((_ is Nil!15305) (list!6137 (charsOf!1566 (h!20708 lt!511019)))))))

(assert (=> d!430733 (= (++!4166 (list!6137 (charsOf!1566 (h!20708 lt!511019))) (printList!759 thiss!20360 (t!135196 lt!511019))) lt!511043)))

(declare-fun b!1468181 () Bool)

(declare-fun res!664230 () Bool)

(assert (=> b!1468181 (=> (not res!664230) (not e!937081))))

(assert (=> b!1468181 (= res!664230 (= (size!12486 lt!511043) (+ (size!12486 (list!6137 (charsOf!1566 (h!20708 lt!511019)))) (size!12486 (printList!759 thiss!20360 (t!135196 lt!511019))))))))

(assert (= (and d!430733 c!242007) b!1468179))

(assert (= (and d!430733 (not c!242007)) b!1468180))

(assert (= (and d!430733 res!664231) b!1468181))

(assert (= (and b!1468181 res!664230) b!1468182))

(assert (=> b!1468180 m!1712611))

(declare-fun m!1712845 () Bool)

(assert (=> b!1468180 m!1712845))

(declare-fun m!1712847 () Bool)

(assert (=> d!430733 m!1712847))

(assert (=> d!430733 m!1712609))

(declare-fun m!1712849 () Bool)

(assert (=> d!430733 m!1712849))

(assert (=> d!430733 m!1712611))

(declare-fun m!1712851 () Bool)

(assert (=> d!430733 m!1712851))

(declare-fun m!1712853 () Bool)

(assert (=> b!1468181 m!1712853))

(assert (=> b!1468181 m!1712609))

(declare-fun m!1712855 () Bool)

(assert (=> b!1468181 m!1712855))

(assert (=> b!1468181 m!1712611))

(declare-fun m!1712857 () Bool)

(assert (=> b!1468181 m!1712857))

(assert (=> b!1467987 d!430733))

(declare-fun d!430777 () Bool)

(declare-fun list!6139 (Conc!5217) List!15371)

(assert (=> d!430777 (= (list!6137 (charsOf!1566 (h!20708 lt!511019))) (list!6139 (c!241969 (charsOf!1566 (h!20708 lt!511019)))))))

(declare-fun bs!344921 () Bool)

(assert (= bs!344921 d!430777))

(declare-fun m!1712859 () Bool)

(assert (=> bs!344921 m!1712859))

(assert (=> b!1467987 d!430777))

(declare-fun d!430779 () Bool)

(declare-fun lt!511046 () BalanceConc!10374)

(assert (=> d!430779 (= (list!6137 lt!511046) (originalCharacters!3573 (h!20708 lt!511019)))))

(assert (=> d!430779 (= lt!511046 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 lt!511019)))) (value!86911 (h!20708 lt!511019))))))

(assert (=> d!430779 (= (charsOf!1566 (h!20708 lt!511019)) lt!511046)))

(declare-fun b_lambda!45789 () Bool)

(assert (=> (not b_lambda!45789) (not d!430779)))

(declare-fun t!135230 () Bool)

(declare-fun tb!83065 () Bool)

(assert (=> (and b!1467995 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 lt!511019))))) t!135230) tb!83065))

(declare-fun b!1468183 () Bool)

(declare-fun e!937083 () Bool)

(declare-fun tp!413488 () Bool)

(assert (=> b!1468183 (= e!937083 (and (inv!20475 (c!241969 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 lt!511019)))) (value!86911 (h!20708 lt!511019))))) tp!413488))))

(declare-fun result!99784 () Bool)

(assert (=> tb!83065 (= result!99784 (and (inv!20476 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 lt!511019)))) (value!86911 (h!20708 lt!511019)))) e!937083))))

(assert (= tb!83065 b!1468183))

(declare-fun m!1712861 () Bool)

(assert (=> b!1468183 m!1712861))

(declare-fun m!1712863 () Bool)

(assert (=> tb!83065 m!1712863))

(assert (=> d!430779 t!135230))

(declare-fun b_and!100441 () Bool)

(assert (= b_and!100413 (and (=> t!135230 result!99784) b_and!100441)))

(declare-fun tb!83067 () Bool)

(declare-fun t!135232 () Bool)

(assert (=> (and b!1467992 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 lt!511019))))) t!135232) tb!83067))

(declare-fun result!99786 () Bool)

(assert (= result!99786 result!99784))

(assert (=> d!430779 t!135232))

(declare-fun b_and!100443 () Bool)

(assert (= b_and!100415 (and (=> t!135232 result!99786) b_and!100443)))

(declare-fun m!1712865 () Bool)

(assert (=> d!430779 m!1712865))

(declare-fun m!1712867 () Bool)

(assert (=> d!430779 m!1712867))

(assert (=> b!1467987 d!430779))

(declare-fun d!430781 () Bool)

(declare-fun c!242010 () Bool)

(assert (=> d!430781 (= c!242010 ((_ is Cons!15307) (t!135196 lt!511019)))))

(declare-fun e!937086 () List!15371)

(assert (=> d!430781 (= (printList!759 thiss!20360 (t!135196 lt!511019)) e!937086)))

(declare-fun b!1468188 () Bool)

(assert (=> b!1468188 (= e!937086 (++!4166 (list!6137 (charsOf!1566 (h!20708 (t!135196 lt!511019)))) (printList!759 thiss!20360 (t!135196 (t!135196 lt!511019)))))))

(declare-fun b!1468189 () Bool)

(assert (=> b!1468189 (= e!937086 Nil!15305)))

(assert (= (and d!430781 c!242010) b!1468188))

(assert (= (and d!430781 (not c!242010)) b!1468189))

(declare-fun m!1712869 () Bool)

(assert (=> b!1468188 m!1712869))

(assert (=> b!1468188 m!1712869))

(declare-fun m!1712871 () Bool)

(assert (=> b!1468188 m!1712871))

(declare-fun m!1712873 () Bool)

(assert (=> b!1468188 m!1712873))

(assert (=> b!1468188 m!1712871))

(assert (=> b!1468188 m!1712873))

(declare-fun m!1712875 () Bool)

(assert (=> b!1468188 m!1712875))

(assert (=> b!1467987 d!430781))

(declare-fun d!430783 () Bool)

(assert (=> d!430783 (= (inv!20468 (tag!2975 (rule!4488 (h!20708 tokens2!49)))) (= (mod (str.len (value!86910 (tag!2975 (rule!4488 (h!20708 tokens2!49))))) 2) 0))))

(assert (=> b!1467994 d!430783))

(declare-fun d!430785 () Bool)

(declare-fun res!664232 () Bool)

(declare-fun e!937087 () Bool)

(assert (=> d!430785 (=> (not res!664232) (not e!937087))))

(assert (=> d!430785 (= res!664232 (semiInverseModEq!1015 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (toValue!4030 (transformation!2711 (rule!4488 (h!20708 tokens2!49))))))))

(assert (=> d!430785 (= (inv!20472 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) e!937087)))

(declare-fun b!1468190 () Bool)

(assert (=> b!1468190 (= e!937087 (equivClasses!974 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (toValue!4030 (transformation!2711 (rule!4488 (h!20708 tokens2!49))))))))

(assert (= (and d!430785 res!664232) b!1468190))

(declare-fun m!1712877 () Bool)

(assert (=> d!430785 m!1712877))

(declare-fun m!1712879 () Bool)

(assert (=> b!1468190 m!1712879))

(assert (=> b!1467994 d!430785))

(declare-fun d!430787 () Bool)

(declare-fun c!242011 () Bool)

(assert (=> d!430787 (= c!242011 ((_ is Cons!15307) lt!511019))))

(declare-fun e!937088 () List!15371)

(assert (=> d!430787 (= (printList!759 thiss!20360 lt!511019) e!937088)))

(declare-fun b!1468191 () Bool)

(assert (=> b!1468191 (= e!937088 (++!4166 (list!6137 (charsOf!1566 (h!20708 lt!511019))) (printList!759 thiss!20360 (t!135196 lt!511019))))))

(declare-fun b!1468192 () Bool)

(assert (=> b!1468192 (= e!937088 Nil!15305)))

(assert (= (and d!430787 c!242011) b!1468191))

(assert (= (and d!430787 (not c!242011)) b!1468192))

(assert (=> b!1468191 m!1712607))

(assert (=> b!1468191 m!1712607))

(assert (=> b!1468191 m!1712609))

(assert (=> b!1468191 m!1712611))

(assert (=> b!1468191 m!1712609))

(assert (=> b!1468191 m!1712611))

(assert (=> b!1468191 m!1712613))

(assert (=> b!1467993 d!430787))

(declare-fun d!430789 () Bool)

(assert (=> d!430789 (= (list!6137 (charsOf!1566 (h!20708 tokens1!47))) (list!6139 (c!241969 (charsOf!1566 (h!20708 tokens1!47)))))))

(declare-fun bs!344922 () Bool)

(assert (= bs!344922 d!430789))

(declare-fun m!1712881 () Bool)

(assert (=> bs!344922 m!1712881))

(assert (=> b!1467993 d!430789))

(declare-fun d!430791 () Bool)

(declare-fun c!242012 () Bool)

(assert (=> d!430791 (= c!242012 ((_ is Cons!15307) tokens2!49))))

(declare-fun e!937089 () List!15371)

(assert (=> d!430791 (= (printList!759 thiss!20360 tokens2!49) e!937089)))

(declare-fun b!1468193 () Bool)

(assert (=> b!1468193 (= e!937089 (++!4166 (list!6137 (charsOf!1566 (h!20708 tokens2!49))) (printList!759 thiss!20360 (t!135196 tokens2!49))))))

(declare-fun b!1468194 () Bool)

(assert (=> b!1468194 (= e!937089 Nil!15305)))

(assert (= (and d!430791 c!242012) b!1468193))

(assert (= (and d!430791 (not c!242012)) b!1468194))

(declare-fun m!1712883 () Bool)

(assert (=> b!1468193 m!1712883))

(assert (=> b!1468193 m!1712883))

(declare-fun m!1712885 () Bool)

(assert (=> b!1468193 m!1712885))

(declare-fun m!1712887 () Bool)

(assert (=> b!1468193 m!1712887))

(assert (=> b!1468193 m!1712885))

(assert (=> b!1468193 m!1712887))

(declare-fun m!1712889 () Bool)

(assert (=> b!1468193 m!1712889))

(assert (=> b!1467993 d!430791))

(declare-fun d!430793 () Bool)

(declare-fun c!242013 () Bool)

(assert (=> d!430793 (= c!242013 ((_ is Cons!15307) tokens1!47))))

(declare-fun e!937090 () List!15371)

(assert (=> d!430793 (= (printList!759 thiss!20360 tokens1!47) e!937090)))

(declare-fun b!1468195 () Bool)

(assert (=> b!1468195 (= e!937090 (++!4166 (list!6137 (charsOf!1566 (h!20708 tokens1!47))) (printList!759 thiss!20360 (t!135196 tokens1!47))))))

(declare-fun b!1468196 () Bool)

(assert (=> b!1468196 (= e!937090 Nil!15305)))

(assert (= (and d!430793 c!242013) b!1468195))

(assert (= (and d!430793 (not c!242013)) b!1468196))

(assert (=> b!1468195 m!1712579))

(assert (=> b!1468195 m!1712579))

(assert (=> b!1468195 m!1712581))

(assert (=> b!1468195 m!1712595))

(assert (=> b!1468195 m!1712581))

(assert (=> b!1468195 m!1712595))

(declare-fun m!1712891 () Bool)

(assert (=> b!1468195 m!1712891))

(assert (=> b!1467993 d!430793))

(declare-fun d!430795 () Bool)

(declare-fun e!937096 () Bool)

(assert (=> d!430795 e!937096))

(declare-fun res!664238 () Bool)

(assert (=> d!430795 (=> (not res!664238) (not e!937096))))

(declare-fun lt!511049 () List!15373)

(declare-fun content!2261 (List!15373) (InoxSet Token!5084))

(assert (=> d!430795 (= res!664238 (= (content!2261 lt!511049) ((_ map or) (content!2261 (t!135196 tokens1!47)) (content!2261 tokens2!49))))))

(declare-fun e!937095 () List!15373)

(assert (=> d!430795 (= lt!511049 e!937095)))

(declare-fun c!242016 () Bool)

(assert (=> d!430795 (= c!242016 ((_ is Nil!15307) (t!135196 tokens1!47)))))

(assert (=> d!430795 (= (++!4167 (t!135196 tokens1!47) tokens2!49) lt!511049)))

(declare-fun b!1468207 () Bool)

(declare-fun res!664237 () Bool)

(assert (=> b!1468207 (=> (not res!664237) (not e!937096))))

(declare-fun size!12487 (List!15373) Int)

(assert (=> b!1468207 (= res!664237 (= (size!12487 lt!511049) (+ (size!12487 (t!135196 tokens1!47)) (size!12487 tokens2!49))))))

(declare-fun b!1468206 () Bool)

(assert (=> b!1468206 (= e!937095 (Cons!15307 (h!20708 (t!135196 tokens1!47)) (++!4167 (t!135196 (t!135196 tokens1!47)) tokens2!49)))))

(declare-fun b!1468205 () Bool)

(assert (=> b!1468205 (= e!937095 tokens2!49)))

(declare-fun b!1468208 () Bool)

(assert (=> b!1468208 (= e!937096 (or (not (= tokens2!49 Nil!15307)) (= lt!511049 (t!135196 tokens1!47))))))

(assert (= (and d!430795 c!242016) b!1468205))

(assert (= (and d!430795 (not c!242016)) b!1468206))

(assert (= (and d!430795 res!664238) b!1468207))

(assert (= (and b!1468207 res!664237) b!1468208))

(declare-fun m!1712893 () Bool)

(assert (=> d!430795 m!1712893))

(declare-fun m!1712895 () Bool)

(assert (=> d!430795 m!1712895))

(declare-fun m!1712897 () Bool)

(assert (=> d!430795 m!1712897))

(declare-fun m!1712899 () Bool)

(assert (=> b!1468207 m!1712899))

(declare-fun m!1712901 () Bool)

(assert (=> b!1468207 m!1712901))

(declare-fun m!1712903 () Bool)

(assert (=> b!1468207 m!1712903))

(declare-fun m!1712905 () Bool)

(assert (=> b!1468206 m!1712905))

(assert (=> b!1467993 d!430795))

(declare-fun b!1468212 () Bool)

(declare-fun lt!511050 () List!15371)

(declare-fun e!937097 () Bool)

(assert (=> b!1468212 (= e!937097 (or (not (= lt!511023 Nil!15305)) (= lt!511050 lt!511020)))))

(declare-fun b!1468209 () Bool)

(declare-fun e!937098 () List!15371)

(assert (=> b!1468209 (= e!937098 lt!511023)))

(declare-fun b!1468210 () Bool)

(assert (=> b!1468210 (= e!937098 (Cons!15305 (h!20706 lt!511020) (++!4166 (t!135194 lt!511020) lt!511023)))))

(declare-fun d!430797 () Bool)

(assert (=> d!430797 e!937097))

(declare-fun res!664240 () Bool)

(assert (=> d!430797 (=> (not res!664240) (not e!937097))))

(assert (=> d!430797 (= res!664240 (= (content!2260 lt!511050) ((_ map or) (content!2260 lt!511020) (content!2260 lt!511023))))))

(assert (=> d!430797 (= lt!511050 e!937098)))

(declare-fun c!242017 () Bool)

(assert (=> d!430797 (= c!242017 ((_ is Nil!15305) lt!511020))))

(assert (=> d!430797 (= (++!4166 lt!511020 lt!511023) lt!511050)))

(declare-fun b!1468211 () Bool)

(declare-fun res!664239 () Bool)

(assert (=> b!1468211 (=> (not res!664239) (not e!937097))))

(assert (=> b!1468211 (= res!664239 (= (size!12486 lt!511050) (+ (size!12486 lt!511020) (size!12486 lt!511023))))))

(assert (= (and d!430797 c!242017) b!1468209))

(assert (= (and d!430797 (not c!242017)) b!1468210))

(assert (= (and d!430797 res!664240) b!1468211))

(assert (= (and b!1468211 res!664239) b!1468212))

(declare-fun m!1712907 () Bool)

(assert (=> b!1468210 m!1712907))

(declare-fun m!1712909 () Bool)

(assert (=> d!430797 m!1712909))

(declare-fun m!1712911 () Bool)

(assert (=> d!430797 m!1712911))

(declare-fun m!1712913 () Bool)

(assert (=> d!430797 m!1712913))

(declare-fun m!1712915 () Bool)

(assert (=> b!1468211 m!1712915))

(declare-fun m!1712917 () Bool)

(assert (=> b!1468211 m!1712917))

(declare-fun m!1712919 () Bool)

(assert (=> b!1468211 m!1712919))

(assert (=> b!1467993 d!430797))

(declare-fun d!430799 () Bool)

(declare-fun e!937100 () Bool)

(assert (=> d!430799 e!937100))

(declare-fun res!664242 () Bool)

(assert (=> d!430799 (=> (not res!664242) (not e!937100))))

(declare-fun lt!511051 () List!15373)

(assert (=> d!430799 (= res!664242 (= (content!2261 lt!511051) ((_ map or) (content!2261 tokens1!47) (content!2261 tokens2!49))))))

(declare-fun e!937099 () List!15373)

(assert (=> d!430799 (= lt!511051 e!937099)))

(declare-fun c!242018 () Bool)

(assert (=> d!430799 (= c!242018 ((_ is Nil!15307) tokens1!47))))

(assert (=> d!430799 (= (++!4167 tokens1!47 tokens2!49) lt!511051)))

(declare-fun b!1468215 () Bool)

(declare-fun res!664241 () Bool)

(assert (=> b!1468215 (=> (not res!664241) (not e!937100))))

(assert (=> b!1468215 (= res!664241 (= (size!12487 lt!511051) (+ (size!12487 tokens1!47) (size!12487 tokens2!49))))))

(declare-fun b!1468214 () Bool)

(assert (=> b!1468214 (= e!937099 (Cons!15307 (h!20708 tokens1!47) (++!4167 (t!135196 tokens1!47) tokens2!49)))))

(declare-fun b!1468213 () Bool)

(assert (=> b!1468213 (= e!937099 tokens2!49)))

(declare-fun b!1468216 () Bool)

(assert (=> b!1468216 (= e!937100 (or (not (= tokens2!49 Nil!15307)) (= lt!511051 tokens1!47)))))

(assert (= (and d!430799 c!242018) b!1468213))

(assert (= (and d!430799 (not c!242018)) b!1468214))

(assert (= (and d!430799 res!664242) b!1468215))

(assert (= (and b!1468215 res!664241) b!1468216))

(declare-fun m!1712921 () Bool)

(assert (=> d!430799 m!1712921))

(declare-fun m!1712923 () Bool)

(assert (=> d!430799 m!1712923))

(assert (=> d!430799 m!1712897))

(declare-fun m!1712925 () Bool)

(assert (=> b!1468215 m!1712925))

(declare-fun m!1712927 () Bool)

(assert (=> b!1468215 m!1712927))

(assert (=> b!1468215 m!1712903))

(assert (=> b!1468214 m!1712585))

(assert (=> b!1467993 d!430799))

(declare-fun b!1468220 () Bool)

(declare-fun lt!511052 () List!15371)

(declare-fun e!937101 () Bool)

(assert (=> b!1468220 (= e!937101 (or (not (= lt!511020 Nil!15305)) (= lt!511052 lt!511014)))))

(declare-fun b!1468217 () Bool)

(declare-fun e!937102 () List!15371)

(assert (=> b!1468217 (= e!937102 lt!511020)))

(declare-fun b!1468218 () Bool)

(assert (=> b!1468218 (= e!937102 (Cons!15305 (h!20706 lt!511014) (++!4166 (t!135194 lt!511014) lt!511020)))))

(declare-fun d!430801 () Bool)

(assert (=> d!430801 e!937101))

(declare-fun res!664244 () Bool)

(assert (=> d!430801 (=> (not res!664244) (not e!937101))))

(assert (=> d!430801 (= res!664244 (= (content!2260 lt!511052) ((_ map or) (content!2260 lt!511014) (content!2260 lt!511020))))))

(assert (=> d!430801 (= lt!511052 e!937102)))

(declare-fun c!242019 () Bool)

(assert (=> d!430801 (= c!242019 ((_ is Nil!15305) lt!511014))))

(assert (=> d!430801 (= (++!4166 lt!511014 lt!511020) lt!511052)))

(declare-fun b!1468219 () Bool)

(declare-fun res!664243 () Bool)

(assert (=> b!1468219 (=> (not res!664243) (not e!937101))))

(assert (=> b!1468219 (= res!664243 (= (size!12486 lt!511052) (+ (size!12486 lt!511014) (size!12486 lt!511020))))))

(assert (= (and d!430801 c!242019) b!1468217))

(assert (= (and d!430801 (not c!242019)) b!1468218))

(assert (= (and d!430801 res!664244) b!1468219))

(assert (= (and b!1468219 res!664243) b!1468220))

(declare-fun m!1712929 () Bool)

(assert (=> b!1468218 m!1712929))

(declare-fun m!1712931 () Bool)

(assert (=> d!430801 m!1712931))

(declare-fun m!1712933 () Bool)

(assert (=> d!430801 m!1712933))

(assert (=> d!430801 m!1712911))

(declare-fun m!1712935 () Bool)

(assert (=> b!1468219 m!1712935))

(declare-fun m!1712937 () Bool)

(assert (=> b!1468219 m!1712937))

(assert (=> b!1468219 m!1712917))

(assert (=> b!1467993 d!430801))

(declare-fun d!430803 () Bool)

(declare-fun lt!511053 () BalanceConc!10374)

(assert (=> d!430803 (= (list!6137 lt!511053) (originalCharacters!3573 (h!20708 tokens1!47)))))

(assert (=> d!430803 (= lt!511053 (dynLambda!6967 (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (value!86911 (h!20708 tokens1!47))))))

(assert (=> d!430803 (= (charsOf!1566 (h!20708 tokens1!47)) lt!511053)))

(declare-fun b_lambda!45791 () Bool)

(assert (=> (not b_lambda!45791) (not d!430803)))

(assert (=> d!430803 t!135202))

(declare-fun b_and!100445 () Bool)

(assert (= b_and!100441 (and (=> t!135202 result!99748) b_and!100445)))

(assert (=> d!430803 t!135204))

(declare-fun b_and!100447 () Bool)

(assert (= b_and!100443 (and (=> t!135204 result!99750) b_and!100447)))

(declare-fun m!1712939 () Bool)

(assert (=> d!430803 m!1712939))

(assert (=> d!430803 m!1712675))

(assert (=> b!1467993 d!430803))

(declare-fun d!430805 () Bool)

(assert (=> d!430805 (= (printList!759 thiss!20360 (++!4167 (t!135196 tokens1!47) tokens2!49)) (++!4166 (printList!759 thiss!20360 (t!135196 tokens1!47)) (printList!759 thiss!20360 tokens2!49)))))

(declare-fun lt!511056 () Unit!25067)

(declare-fun choose!9026 (LexerInterface!2367 List!15373 List!15373) Unit!25067)

(assert (=> d!430805 (= lt!511056 (choose!9026 thiss!20360 (t!135196 tokens1!47) tokens2!49))))

(assert (=> d!430805 (= (lemmaPrintConcatSameAsConcatPrint!96 thiss!20360 (t!135196 tokens1!47) tokens2!49) lt!511056)))

(declare-fun bs!344923 () Bool)

(assert (= bs!344923 d!430805))

(assert (=> bs!344923 m!1712595))

(assert (=> bs!344923 m!1712595))

(assert (=> bs!344923 m!1712597))

(declare-fun m!1712941 () Bool)

(assert (=> bs!344923 m!1712941))

(assert (=> bs!344923 m!1712585))

(declare-fun m!1712943 () Bool)

(assert (=> bs!344923 m!1712943))

(assert (=> bs!344923 m!1712585))

(declare-fun m!1712945 () Bool)

(assert (=> bs!344923 m!1712945))

(assert (=> bs!344923 m!1712597))

(assert (=> b!1467993 d!430805))

(declare-fun d!430807 () Bool)

(declare-fun c!242020 () Bool)

(assert (=> d!430807 (= c!242020 ((_ is Cons!15307) (t!135196 tokens1!47)))))

(declare-fun e!937103 () List!15371)

(assert (=> d!430807 (= (printList!759 thiss!20360 (t!135196 tokens1!47)) e!937103)))

(declare-fun b!1468221 () Bool)

(assert (=> b!1468221 (= e!937103 (++!4166 (list!6137 (charsOf!1566 (h!20708 (t!135196 tokens1!47)))) (printList!759 thiss!20360 (t!135196 (t!135196 tokens1!47)))))))

(declare-fun b!1468222 () Bool)

(assert (=> b!1468222 (= e!937103 Nil!15305)))

(assert (= (and d!430807 c!242020) b!1468221))

(assert (= (and d!430807 (not c!242020)) b!1468222))

(declare-fun m!1712947 () Bool)

(assert (=> b!1468221 m!1712947))

(assert (=> b!1468221 m!1712947))

(declare-fun m!1712949 () Bool)

(assert (=> b!1468221 m!1712949))

(declare-fun m!1712951 () Bool)

(assert (=> b!1468221 m!1712951))

(assert (=> b!1468221 m!1712949))

(assert (=> b!1468221 m!1712951))

(declare-fun m!1712953 () Bool)

(assert (=> b!1468221 m!1712953))

(assert (=> b!1467993 d!430807))

(declare-fun d!430809 () Bool)

(declare-fun c!242021 () Bool)

(assert (=> d!430809 (= c!242021 ((_ is Cons!15307) lt!511018))))

(declare-fun e!937104 () List!15371)

(assert (=> d!430809 (= (printList!759 thiss!20360 lt!511018) e!937104)))

(declare-fun b!1468223 () Bool)

(assert (=> b!1468223 (= e!937104 (++!4166 (list!6137 (charsOf!1566 (h!20708 lt!511018))) (printList!759 thiss!20360 (t!135196 lt!511018))))))

(declare-fun b!1468224 () Bool)

(assert (=> b!1468224 (= e!937104 Nil!15305)))

(assert (= (and d!430809 c!242021) b!1468223))

(assert (= (and d!430809 (not c!242021)) b!1468224))

(declare-fun m!1712955 () Bool)

(assert (=> b!1468223 m!1712955))

(assert (=> b!1468223 m!1712955))

(declare-fun m!1712957 () Bool)

(assert (=> b!1468223 m!1712957))

(declare-fun m!1712959 () Bool)

(assert (=> b!1468223 m!1712959))

(assert (=> b!1468223 m!1712957))

(assert (=> b!1468223 m!1712959))

(declare-fun m!1712961 () Bool)

(assert (=> b!1468223 m!1712961))

(assert (=> b!1467993 d!430809))

(declare-fun e!937105 () Bool)

(declare-fun b!1468228 () Bool)

(declare-fun lt!511057 () List!15371)

(assert (=> b!1468228 (= e!937105 (or (not (= lt!511022 Nil!15305)) (= lt!511057 lt!511014)))))

(declare-fun b!1468225 () Bool)

(declare-fun e!937106 () List!15371)

(assert (=> b!1468225 (= e!937106 lt!511022)))

(declare-fun b!1468226 () Bool)

(assert (=> b!1468226 (= e!937106 (Cons!15305 (h!20706 lt!511014) (++!4166 (t!135194 lt!511014) lt!511022)))))

(declare-fun d!430811 () Bool)

(assert (=> d!430811 e!937105))

(declare-fun res!664246 () Bool)

(assert (=> d!430811 (=> (not res!664246) (not e!937105))))

(assert (=> d!430811 (= res!664246 (= (content!2260 lt!511057) ((_ map or) (content!2260 lt!511014) (content!2260 lt!511022))))))

(assert (=> d!430811 (= lt!511057 e!937106)))

(declare-fun c!242022 () Bool)

(assert (=> d!430811 (= c!242022 ((_ is Nil!15305) lt!511014))))

(assert (=> d!430811 (= (++!4166 lt!511014 lt!511022) lt!511057)))

(declare-fun b!1468227 () Bool)

(declare-fun res!664245 () Bool)

(assert (=> b!1468227 (=> (not res!664245) (not e!937105))))

(assert (=> b!1468227 (= res!664245 (= (size!12486 lt!511057) (+ (size!12486 lt!511014) (size!12486 lt!511022))))))

(assert (= (and d!430811 c!242022) b!1468225))

(assert (= (and d!430811 (not c!242022)) b!1468226))

(assert (= (and d!430811 res!664246) b!1468227))

(assert (= (and b!1468227 res!664245) b!1468228))

(declare-fun m!1712963 () Bool)

(assert (=> b!1468226 m!1712963))

(declare-fun m!1712965 () Bool)

(assert (=> d!430811 m!1712965))

(assert (=> d!430811 m!1712933))

(declare-fun m!1712967 () Bool)

(assert (=> d!430811 m!1712967))

(declare-fun m!1712969 () Bool)

(assert (=> b!1468227 m!1712969))

(assert (=> b!1468227 m!1712937))

(declare-fun m!1712971 () Bool)

(assert (=> b!1468227 m!1712971))

(assert (=> b!1467988 d!430811))

(declare-fun b!1468242 () Bool)

(declare-fun b_free!36871 () Bool)

(declare-fun b_next!37575 () Bool)

(assert (=> b!1468242 (= b_free!36871 (not b_next!37575))))

(declare-fun tp!413502 () Bool)

(declare-fun b_and!100449 () Bool)

(assert (=> b!1468242 (= tp!413502 b_and!100449)))

(declare-fun b_free!36873 () Bool)

(declare-fun b_next!37577 () Bool)

(assert (=> b!1468242 (= b_free!36873 (not b_next!37577))))

(declare-fun t!135234 () Bool)

(declare-fun tb!83069 () Bool)

(assert (=> (and b!1468242 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens2!49))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49))))) t!135234) tb!83069))

(declare-fun result!99790 () Bool)

(assert (= result!99790 result!99742))

(assert (=> b!1468001 t!135234))

(declare-fun t!135236 () Bool)

(declare-fun tb!83071 () Bool)

(assert (=> (and b!1468242 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens2!49))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47))))) t!135236) tb!83071))

(declare-fun result!99792 () Bool)

(assert (= result!99792 result!99748))

(assert (=> b!1468039 t!135236))

(declare-fun tb!83073 () Bool)

(declare-fun t!135238 () Bool)

(assert (=> (and b!1468242 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens2!49))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 lt!511019))))) t!135238) tb!83073))

(declare-fun result!99794 () Bool)

(assert (= result!99794 result!99784))

(assert (=> d!430779 t!135238))

(assert (=> d!430803 t!135236))

(declare-fun b_and!100451 () Bool)

(declare-fun tp!413500 () Bool)

(assert (=> b!1468242 (= tp!413500 (and (=> t!135234 result!99790) (=> t!135236 result!99792) (=> t!135238 result!99794) b_and!100451))))

(declare-fun e!937121 () Bool)

(declare-fun tp!413503 () Bool)

(declare-fun e!937123 () Bool)

(declare-fun b!1468239 () Bool)

(assert (=> b!1468239 (= e!937123 (and (inv!20471 (h!20708 (t!135196 tokens2!49))) e!937121 tp!413503))))

(declare-fun e!937119 () Bool)

(declare-fun e!937124 () Bool)

(declare-fun tp!413499 () Bool)

(declare-fun b!1468241 () Bool)

(assert (=> b!1468241 (= e!937124 (and tp!413499 (inv!20468 (tag!2975 (rule!4488 (h!20708 (t!135196 tokens2!49))))) (inv!20472 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens2!49))))) e!937119))))

(assert (=> b!1467990 (= tp!413429 e!937123)))

(assert (=> b!1468242 (= e!937119 (and tp!413502 tp!413500))))

(declare-fun tp!413501 () Bool)

(declare-fun b!1468240 () Bool)

(assert (=> b!1468240 (= e!937121 (and (inv!21 (value!86911 (h!20708 (t!135196 tokens2!49)))) e!937124 tp!413501))))

(assert (= b!1468241 b!1468242))

(assert (= b!1468240 b!1468241))

(assert (= b!1468239 b!1468240))

(assert (= (and b!1467990 ((_ is Cons!15307) (t!135196 tokens2!49))) b!1468239))

(declare-fun m!1712973 () Bool)

(assert (=> b!1468239 m!1712973))

(declare-fun m!1712975 () Bool)

(assert (=> b!1468241 m!1712975))

(declare-fun m!1712977 () Bool)

(assert (=> b!1468241 m!1712977))

(declare-fun m!1712979 () Bool)

(assert (=> b!1468240 m!1712979))

(declare-fun b!1468247 () Bool)

(declare-fun e!937127 () Bool)

(declare-fun tp_is_empty!6899 () Bool)

(declare-fun tp!413506 () Bool)

(assert (=> b!1468247 (= e!937127 (and tp_is_empty!6899 tp!413506))))

(assert (=> b!1467989 (= tp!413426 e!937127)))

(assert (= (and b!1467989 ((_ is Cons!15305) (originalCharacters!3573 (h!20708 tokens2!49)))) b!1468247))

(declare-fun b!1468251 () Bool)

(declare-fun b_free!36875 () Bool)

(declare-fun b_next!37579 () Bool)

(assert (=> b!1468251 (= b_free!36875 (not b_next!37579))))

(declare-fun tp!413510 () Bool)

(declare-fun b_and!100453 () Bool)

(assert (=> b!1468251 (= tp!413510 b_and!100453)))

(declare-fun b_free!36877 () Bool)

(declare-fun b_next!37581 () Bool)

(assert (=> b!1468251 (= b_free!36877 (not b_next!37581))))

(declare-fun t!135240 () Bool)

(declare-fun tb!83075 () Bool)

(assert (=> (and b!1468251 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens1!47))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49))))) t!135240) tb!83075))

(declare-fun result!99798 () Bool)

(assert (= result!99798 result!99742))

(assert (=> b!1468001 t!135240))

(declare-fun t!135242 () Bool)

(declare-fun tb!83077 () Bool)

(assert (=> (and b!1468251 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens1!47))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47))))) t!135242) tb!83077))

(declare-fun result!99800 () Bool)

(assert (= result!99800 result!99748))

(assert (=> b!1468039 t!135242))

(declare-fun tb!83079 () Bool)

(declare-fun t!135244 () Bool)

(assert (=> (and b!1468251 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens1!47))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 lt!511019))))) t!135244) tb!83079))

(declare-fun result!99802 () Bool)

(assert (= result!99802 result!99784))

(assert (=> d!430779 t!135244))

(assert (=> d!430803 t!135242))

(declare-fun b_and!100455 () Bool)

(declare-fun tp!413508 () Bool)

(assert (=> b!1468251 (= tp!413508 (and (=> t!135240 result!99798) (=> t!135242 result!99800) (=> t!135244 result!99802) b_and!100455))))

(declare-fun tp!413511 () Bool)

(declare-fun e!937132 () Bool)

(declare-fun b!1468248 () Bool)

(declare-fun e!937130 () Bool)

(assert (=> b!1468248 (= e!937132 (and (inv!20471 (h!20708 (t!135196 tokens1!47))) e!937130 tp!413511))))

(declare-fun e!937128 () Bool)

(declare-fun tp!413507 () Bool)

(declare-fun e!937133 () Bool)

(declare-fun b!1468250 () Bool)

(assert (=> b!1468250 (= e!937133 (and tp!413507 (inv!20468 (tag!2975 (rule!4488 (h!20708 (t!135196 tokens1!47))))) (inv!20472 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens1!47))))) e!937128))))

(assert (=> b!1467984 (= tp!413427 e!937132)))

(assert (=> b!1468251 (= e!937128 (and tp!413510 tp!413508))))

(declare-fun tp!413509 () Bool)

(declare-fun b!1468249 () Bool)

(assert (=> b!1468249 (= e!937130 (and (inv!21 (value!86911 (h!20708 (t!135196 tokens1!47)))) e!937133 tp!413509))))

(assert (= b!1468250 b!1468251))

(assert (= b!1468249 b!1468250))

(assert (= b!1468248 b!1468249))

(assert (= (and b!1467984 ((_ is Cons!15307) (t!135196 tokens1!47))) b!1468248))

(declare-fun m!1712981 () Bool)

(assert (=> b!1468248 m!1712981))

(declare-fun m!1712983 () Bool)

(assert (=> b!1468250 m!1712983))

(declare-fun m!1712985 () Bool)

(assert (=> b!1468250 m!1712985))

(declare-fun m!1712987 () Bool)

(assert (=> b!1468249 m!1712987))

(declare-fun b!1468263 () Bool)

(declare-fun e!937136 () Bool)

(declare-fun tp!413523 () Bool)

(declare-fun tp!413526 () Bool)

(assert (=> b!1468263 (= e!937136 (and tp!413523 tp!413526))))

(declare-fun b!1468262 () Bool)

(assert (=> b!1468262 (= e!937136 tp_is_empty!6899)))

(declare-fun b!1468264 () Bool)

(declare-fun tp!413525 () Bool)

(assert (=> b!1468264 (= e!937136 tp!413525)))

(declare-fun b!1468265 () Bool)

(declare-fun tp!413524 () Bool)

(declare-fun tp!413522 () Bool)

(assert (=> b!1468265 (= e!937136 (and tp!413524 tp!413522))))

(assert (=> b!1467991 (= tp!413430 e!937136)))

(assert (= (and b!1467991 ((_ is ElementMatch!4025) (regex!2711 (rule!4488 (h!20708 tokens1!47))))) b!1468262))

(assert (= (and b!1467991 ((_ is Concat!6827) (regex!2711 (rule!4488 (h!20708 tokens1!47))))) b!1468263))

(assert (= (and b!1467991 ((_ is Star!4025) (regex!2711 (rule!4488 (h!20708 tokens1!47))))) b!1468264))

(assert (= (and b!1467991 ((_ is Union!4025) (regex!2711 (rule!4488 (h!20708 tokens1!47))))) b!1468265))

(declare-fun b!1468266 () Bool)

(declare-fun e!937137 () Bool)

(declare-fun tp!413527 () Bool)

(assert (=> b!1468266 (= e!937137 (and tp_is_empty!6899 tp!413527))))

(assert (=> b!1467996 (= tp!413428 e!937137)))

(assert (= (and b!1467996 ((_ is Cons!15305) (originalCharacters!3573 (h!20708 tokens1!47)))) b!1468266))

(declare-fun b!1468268 () Bool)

(declare-fun e!937138 () Bool)

(declare-fun tp!413529 () Bool)

(declare-fun tp!413532 () Bool)

(assert (=> b!1468268 (= e!937138 (and tp!413529 tp!413532))))

(declare-fun b!1468267 () Bool)

(assert (=> b!1468267 (= e!937138 tp_is_empty!6899)))

(declare-fun b!1468269 () Bool)

(declare-fun tp!413531 () Bool)

(assert (=> b!1468269 (= e!937138 tp!413531)))

(declare-fun b!1468270 () Bool)

(declare-fun tp!413530 () Bool)

(declare-fun tp!413528 () Bool)

(assert (=> b!1468270 (= e!937138 (and tp!413530 tp!413528))))

(assert (=> b!1467994 (= tp!413425 e!937138)))

(assert (= (and b!1467994 ((_ is ElementMatch!4025) (regex!2711 (rule!4488 (h!20708 tokens2!49))))) b!1468267))

(assert (= (and b!1467994 ((_ is Concat!6827) (regex!2711 (rule!4488 (h!20708 tokens2!49))))) b!1468268))

(assert (= (and b!1467994 ((_ is Star!4025) (regex!2711 (rule!4488 (h!20708 tokens2!49))))) b!1468269))

(assert (= (and b!1467994 ((_ is Union!4025) (regex!2711 (rule!4488 (h!20708 tokens2!49))))) b!1468270))

(declare-fun b_lambda!45793 () Bool)

(assert (= b_lambda!45773 (or (and b!1467995 b_free!36857 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))))) (and b!1467992 b_free!36861) (and b!1468242 b_free!36873 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens2!49))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))))) (and b!1468251 b_free!36877 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens1!47))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))))) b_lambda!45793)))

(declare-fun b_lambda!45795 () Bool)

(assert (= b_lambda!45791 (or (and b!1467995 b_free!36857 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))))) (and b!1467992 b_free!36861) (and b!1468242 b_free!36873 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens2!49))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))))) (and b!1468251 b_free!36877 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens1!47))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))))) b_lambda!45795)))

(declare-fun b_lambda!45797 () Bool)

(assert (= b_lambda!45771 (or (and b!1467995 b_free!36857) (and b!1467992 b_free!36861 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens1!47)))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))))) (and b!1468242 b_free!36873 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens2!49))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))))) (and b!1468251 b_free!36877 (= (toChars!3889 (transformation!2711 (rule!4488 (h!20708 (t!135196 tokens1!47))))) (toChars!3889 (transformation!2711 (rule!4488 (h!20708 tokens2!49)))))) b_lambda!45797)))

(check-sat (not b!1468054) (not b!1468188) (not d!430789) (not b!1468040) tp_is_empty!6899 (not d!430725) (not b_next!37575) b_and!100401 (not d!430719) b_and!100405 b_and!100445 (not b!1468002) (not b_next!37563) (not b!1468007) (not b!1468037) b_and!100453 (not b_lambda!45797) (not b_next!37561) (not tb!83065) b_and!100455 (not b!1468180) (not b!1468206) (not b!1468207) (not b!1468227) (not b!1468250) (not d!430777) (not b!1468057) (not b!1468193) (not d!430805) (not b!1468265) (not b!1468195) (not b!1468240) (not d!430803) (not b!1468226) (not b!1468270) (not b!1468049) (not b!1468247) (not d!430779) (not b!1468223) (not b!1468264) (not b!1468211) (not d!430799) (not d!430797) (not b!1468190) (not b!1468034) (not d!430709) (not b_lambda!45795) (not tb!83033) (not b!1468269) (not b_next!37581) (not b!1468263) (not d!430785) (not b_next!37559) (not b!1468001) (not b!1468058) (not b_lambda!45793) (not b!1468266) (not b_next!37577) (not b!1468268) (not b!1468239) (not b!1468241) (not b!1468248) (not d!430801) (not d!430733) b_and!100447 (not b_lambda!45789) (not b!1468249) b_and!100449 (not b_next!37579) (not b!1468221) (not b!1468038) b_and!100451 (not b!1468041) (not tb!83037) (not b!1468039) (not b!1468214) (not b_next!37565) (not b!1468219) (not d!430811) (not b!1468181) (not b!1468218) (not b!1468183) (not b!1468210) (not d!430795) (not b!1468191) (not b!1468215))
(check-sat (not b_next!37563) b_and!100453 (not b_next!37561) b_and!100455 (not b_next!37581) (not b_next!37559) (not b_next!37577) b_and!100447 b_and!100451 (not b_next!37565) (not b_next!37575) b_and!100401 b_and!100405 b_and!100445 b_and!100449 (not b_next!37579))
