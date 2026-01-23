; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229900 () Bool)

(assert start!229900)

(declare-fun b!2328338 () Bool)

(declare-fun b_free!70237 () Bool)

(declare-fun b_next!70941 () Bool)

(assert (=> b!2328338 (= b_free!70237 (not b_next!70941))))

(declare-fun tp!737743 () Bool)

(declare-fun b_and!185149 () Bool)

(assert (=> b!2328338 (= tp!737743 b_and!185149)))

(declare-fun b_free!70239 () Bool)

(declare-fun b_next!70943 () Bool)

(assert (=> b!2328338 (= b_free!70239 (not b_next!70943))))

(declare-fun tp!737746 () Bool)

(declare-fun b_and!185151 () Bool)

(assert (=> b!2328338 (= tp!737746 b_and!185151)))

(declare-fun b!2328334 () Bool)

(declare-fun e!1491810 () Bool)

(declare-datatypes ((List!27864 0))(
  ( (Nil!27766) (Cons!27766 (h!33167 (_ BitVec 16)) (t!207598 List!27864)) )
))
(declare-datatypes ((TokenValue!4598 0))(
  ( (FloatLiteralValue!9196 (text!32631 List!27864)) (TokenValueExt!4597 (__x!18355 Int)) (Broken!22990 (value!140429 List!27864)) (Object!4695) (End!4598) (Def!4598) (Underscore!4598) (Match!4598) (Else!4598) (Error!4598) (Case!4598) (If!4598) (Extends!4598) (Abstract!4598) (Class!4598) (Val!4598) (DelimiterValue!9196 (del!4658 List!27864)) (KeywordValue!4604 (value!140430 List!27864)) (CommentValue!9196 (value!140431 List!27864)) (WhitespaceValue!9196 (value!140432 List!27864)) (IndentationValue!4598 (value!140433 List!27864)) (String!30359) (Int32!4598) (Broken!22991 (value!140434 List!27864)) (Boolean!4599) (Unit!40570) (OperatorValue!4601 (op!4658 List!27864)) (IdentifierValue!9196 (value!140435 List!27864)) (IdentifierValue!9197 (value!140436 List!27864)) (WhitespaceValue!9197 (value!140437 List!27864)) (True!9196) (False!9196) (Broken!22992 (value!140438 List!27864)) (Broken!22993 (value!140439 List!27864)) (True!9197) (RightBrace!4598) (RightBracket!4598) (Colon!4598) (Null!4598) (Comma!4598) (LeftBracket!4598) (False!9197) (LeftBrace!4598) (ImaginaryLiteralValue!4598 (text!32632 List!27864)) (StringLiteralValue!13794 (value!140440 List!27864)) (EOFValue!4598 (value!140441 List!27864)) (IdentValue!4598 (value!140442 List!27864)) (DelimiterValue!9197 (value!140443 List!27864)) (DedentValue!4598 (value!140444 List!27864)) (NewLineValue!4598 (value!140445 List!27864)) (IntegerValue!13794 (value!140446 (_ BitVec 32)) (text!32633 List!27864)) (IntegerValue!13795 (value!140447 Int) (text!32634 List!27864)) (Times!4598) (Or!4598) (Equal!4598) (Minus!4598) (Broken!22994 (value!140448 List!27864)) (And!4598) (Div!4598) (LessEqual!4598) (Mod!4598) (Concat!11402) (Not!4598) (Plus!4598) (SpaceValue!4598 (value!140449 List!27864)) (IntegerValue!13796 (value!140450 Int) (text!32635 List!27864)) (StringLiteralValue!13795 (text!32636 List!27864)) (FloatLiteralValue!9197 (text!32637 List!27864)) (BytesLiteralValue!4598 (value!140451 List!27864)) (CommentValue!9197 (value!140452 List!27864)) (StringLiteralValue!13796 (value!140453 List!27864)) (ErrorTokenValue!4598 (msg!4659 List!27864)) )
))
(declare-datatypes ((C!13766 0))(
  ( (C!13767 (val!8039 Int)) )
))
(declare-datatypes ((Regex!6804 0))(
  ( (ElementMatch!6804 (c!369906 C!13766)) (Concat!11403 (regOne!14120 Regex!6804) (regTwo!14120 Regex!6804)) (EmptyExpr!6804) (Star!6804 (reg!7133 Regex!6804)) (EmptyLang!6804) (Union!6804 (regOne!14121 Regex!6804) (regTwo!14121 Regex!6804)) )
))
(declare-datatypes ((String!30360 0))(
  ( (String!30361 (value!140454 String)) )
))
(declare-datatypes ((List!27865 0))(
  ( (Nil!27767) (Cons!27767 (h!33168 C!13766) (t!207599 List!27865)) )
))
(declare-datatypes ((IArray!18209 0))(
  ( (IArray!18210 (innerList!9162 List!27865)) )
))
(declare-datatypes ((Conc!9102 0))(
  ( (Node!9102 (left!21069 Conc!9102) (right!21399 Conc!9102) (csize!18434 Int) (cheight!9313 Int)) (Leaf!13378 (xs!12082 IArray!18209) (csize!18435 Int)) (Empty!9102) )
))
(declare-datatypes ((BalanceConc!17816 0))(
  ( (BalanceConc!17817 (c!369907 Conc!9102)) )
))
(declare-datatypes ((TokenValueInjection!8716 0))(
  ( (TokenValueInjection!8717 (toValue!6252 Int) (toChars!6111 Int)) )
))
(declare-datatypes ((Rule!8648 0))(
  ( (Rule!8649 (regex!4424 Regex!6804) (tag!4914 String!30360) (isSeparator!4424 Bool) (transformation!4424 TokenValueInjection!8716)) )
))
(declare-datatypes ((Token!8326 0))(
  ( (Token!8327 (value!140455 TokenValue!4598) (rule!6780 Rule!8648) (size!22007 Int) (originalCharacters!5194 List!27865)) )
))
(declare-datatypes ((List!27866 0))(
  ( (Nil!27768) (Cons!27768 (h!33169 Token!8326) (t!207600 List!27866)) )
))
(declare-datatypes ((IArray!18211 0))(
  ( (IArray!18212 (innerList!9163 List!27866)) )
))
(declare-datatypes ((Conc!9103 0))(
  ( (Node!9103 (left!21070 Conc!9103) (right!21400 Conc!9103) (csize!18436 Int) (cheight!9314 Int)) (Leaf!13379 (xs!12083 IArray!18211) (csize!18437 Int)) (Empty!9103) )
))
(declare-datatypes ((List!27867 0))(
  ( (Nil!27769) (Cons!27769 (h!33170 Rule!8648) (t!207601 List!27867)) )
))
(declare-datatypes ((BalanceConc!17818 0))(
  ( (BalanceConc!17819 (c!369908 Conc!9103)) )
))
(declare-datatypes ((PrintableTokens!1270 0))(
  ( (PrintableTokens!1271 (rules!16498 List!27867) (tokens!2469 BalanceConc!17818)) )
))
(declare-datatypes ((Option!5420 0))(
  ( (None!5419) (Some!5419 (v!30665 PrintableTokens!1270)) )
))
(declare-fun lt!862018 () Option!5420)

(declare-fun isDefined!4261 (Option!5420) Bool)

(assert (=> b!2328334 (= e!1491810 (not (isDefined!4261 lt!862018)))))

(declare-fun b!2328336 () Bool)

(declare-fun res!994112 () Bool)

(declare-fun e!1491805 () Bool)

(assert (=> b!2328336 (=> (not res!994112) (not e!1491805))))

(declare-fun rules!853 () List!27867)

(declare-fun tokens!300 () BalanceConc!17818)

(declare-datatypes ((LexerInterface!4021 0))(
  ( (LexerInterfaceExt!4018 (__x!18356 Int)) (Lexer!4019) )
))
(declare-fun rulesProduceEachTokenIndividually!929 (LexerInterface!4021 List!27867 BalanceConc!17818) Bool)

(assert (=> b!2328336 (= res!994112 (rulesProduceEachTokenIndividually!929 Lexer!4019 rules!853 tokens!300))))

(declare-fun b!2328337 () Bool)

(declare-fun res!994108 () Bool)

(assert (=> b!2328337 (=> (not res!994108) (not e!1491810))))

(declare-fun get!8376 (Option!5420) PrintableTokens!1270)

(assert (=> b!2328337 (= res!994108 (= (rules!16498 (get!8376 lt!862018)) rules!853))))

(declare-fun e!1491809 () Bool)

(assert (=> b!2328338 (= e!1491809 (and tp!737743 tp!737746))))

(declare-fun e!1491806 () Bool)

(declare-fun tp!737742 () Bool)

(declare-fun b!2328339 () Bool)

(declare-fun inv!37808 (String!30360) Bool)

(declare-fun inv!37811 (TokenValueInjection!8716) Bool)

(assert (=> b!2328339 (= e!1491806 (and tp!737742 (inv!37808 (tag!4914 (h!33170 rules!853))) (inv!37811 (transformation!4424 (h!33170 rules!853))) e!1491809))))

(declare-fun b!2328340 () Bool)

(declare-fun res!994109 () Bool)

(assert (=> b!2328340 (=> (not res!994109) (not e!1491805))))

(declare-fun separableTokens!298 (LexerInterface!4021 BalanceConc!17818 List!27867) Bool)

(assert (=> b!2328340 (= res!994109 (separableTokens!298 Lexer!4019 tokens!300 rules!853))))

(declare-fun b!2328341 () Bool)

(declare-fun res!994113 () Bool)

(assert (=> b!2328341 (=> (not res!994113) (not e!1491805))))

(declare-fun rulesProduceEachTokenIndividuallyList!1351 (LexerInterface!4021 List!27867 List!27866) Bool)

(declare-fun list!11039 (BalanceConc!17818) List!27866)

(assert (=> b!2328341 (= res!994113 (rulesProduceEachTokenIndividuallyList!1351 Lexer!4019 rules!853 (list!11039 tokens!300)))))

(declare-fun b!2328342 () Bool)

(declare-fun e!1491808 () Bool)

(declare-fun tp!737744 () Bool)

(declare-fun inv!37812 (Conc!9103) Bool)

(assert (=> b!2328342 (= e!1491808 (and (inv!37812 (c!369908 tokens!300)) tp!737744))))

(declare-fun res!994111 () Bool)

(assert (=> start!229900 (=> (not res!994111) (not e!1491805))))

(declare-fun isEmpty!15825 (List!27867) Bool)

(assert (=> start!229900 (= res!994111 (not (isEmpty!15825 rules!853)))))

(assert (=> start!229900 e!1491805))

(declare-fun e!1491807 () Bool)

(assert (=> start!229900 e!1491807))

(declare-fun inv!37813 (BalanceConc!17818) Bool)

(assert (=> start!229900 (and (inv!37813 tokens!300) e!1491808)))

(declare-fun b!2328335 () Bool)

(declare-fun res!994110 () Bool)

(assert (=> b!2328335 (=> (not res!994110) (not e!1491805))))

(declare-fun rulesInvariant!3521 (LexerInterface!4021 List!27867) Bool)

(assert (=> b!2328335 (= res!994110 (rulesInvariant!3521 Lexer!4019 rules!853))))

(declare-fun b!2328343 () Bool)

(assert (=> b!2328343 (= e!1491805 e!1491810)))

(declare-fun res!994107 () Bool)

(assert (=> b!2328343 (=> (not res!994107) (not e!1491810))))

(declare-fun isEmpty!15826 (Option!5420) Bool)

(assert (=> b!2328343 (= res!994107 (not (isEmpty!15826 lt!862018)))))

(assert (=> b!2328343 (= lt!862018 (Some!5419 (PrintableTokens!1271 rules!853 tokens!300)))))

(declare-fun b!2328344 () Bool)

(declare-fun tp!737745 () Bool)

(assert (=> b!2328344 (= e!1491807 (and e!1491806 tp!737745))))

(assert (= (and start!229900 res!994111) b!2328335))

(assert (= (and b!2328335 res!994110) b!2328341))

(assert (= (and b!2328341 res!994113) b!2328336))

(assert (= (and b!2328336 res!994112) b!2328340))

(assert (= (and b!2328340 res!994109) b!2328343))

(assert (= (and b!2328343 res!994107) b!2328337))

(assert (= (and b!2328337 res!994108) b!2328334))

(assert (= b!2328339 b!2328338))

(assert (= b!2328344 b!2328339))

(assert (= (and start!229900 (is-Cons!27769 rules!853)) b!2328344))

(assert (= start!229900 b!2328342))

(declare-fun m!2758955 () Bool)

(assert (=> b!2328339 m!2758955))

(declare-fun m!2758957 () Bool)

(assert (=> b!2328339 m!2758957))

(declare-fun m!2758959 () Bool)

(assert (=> start!229900 m!2758959))

(declare-fun m!2758961 () Bool)

(assert (=> start!229900 m!2758961))

(declare-fun m!2758963 () Bool)

(assert (=> b!2328336 m!2758963))

(declare-fun m!2758965 () Bool)

(assert (=> b!2328337 m!2758965))

(declare-fun m!2758967 () Bool)

(assert (=> b!2328334 m!2758967))

(declare-fun m!2758969 () Bool)

(assert (=> b!2328341 m!2758969))

(assert (=> b!2328341 m!2758969))

(declare-fun m!2758971 () Bool)

(assert (=> b!2328341 m!2758971))

(declare-fun m!2758973 () Bool)

(assert (=> b!2328340 m!2758973))

(declare-fun m!2758975 () Bool)

(assert (=> b!2328343 m!2758975))

(declare-fun m!2758977 () Bool)

(assert (=> b!2328335 m!2758977))

(declare-fun m!2758979 () Bool)

(assert (=> b!2328342 m!2758979))

(push 1)

(assert (not b!2328343))

(assert b_and!185151)

(assert (not b!2328339))

(assert b_and!185149)

(assert (not b!2328336))

(assert (not b!2328344))

(assert (not b!2328335))

(assert (not b_next!70941))

(assert (not b_next!70943))

(assert (not b!2328337))

(assert (not b!2328341))

(assert (not b!2328340))

(assert (not start!229900))

(assert (not b!2328334))

(assert (not b!2328342))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185149)

(assert b_and!185151)

(assert (not b_next!70943))

(assert (not b_next!70941))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2328409 () Bool)

(declare-fun e!1491858 () Bool)

(assert (=> b!2328409 (= e!1491858 true)))

(declare-fun b!2328408 () Bool)

(declare-fun e!1491857 () Bool)

(assert (=> b!2328408 (= e!1491857 e!1491858)))

(declare-fun b!2328407 () Bool)

(declare-fun e!1491856 () Bool)

(assert (=> b!2328407 (= e!1491856 e!1491857)))

(declare-fun d!689366 () Bool)

(assert (=> d!689366 e!1491856))

(assert (= b!2328408 b!2328409))

(assert (= b!2328407 b!2328408))

(assert (= (and d!689366 (is-Cons!27769 rules!853)) b!2328407))

(declare-fun lambda!86394 () Int)

(declare-fun order!15369 () Int)

(declare-fun order!15371 () Int)

(declare-fun dynLambda!11988 (Int Int) Int)

(declare-fun dynLambda!11989 (Int Int) Int)

(assert (=> b!2328409 (< (dynLambda!11988 order!15369 (toValue!6252 (transformation!4424 (h!33170 rules!853)))) (dynLambda!11989 order!15371 lambda!86394))))

(declare-fun order!15373 () Int)

(declare-fun dynLambda!11990 (Int Int) Int)

(assert (=> b!2328409 (< (dynLambda!11990 order!15373 (toChars!6111 (transformation!4424 (h!33170 rules!853)))) (dynLambda!11989 order!15371 lambda!86394))))

(assert (=> d!689366 true))

(declare-fun lt!862024 () Bool)

(declare-fun forall!5522 (List!27866 Int) Bool)

(assert (=> d!689366 (= lt!862024 (forall!5522 (list!11039 tokens!300) lambda!86394))))

(declare-fun e!1491849 () Bool)

(assert (=> d!689366 (= lt!862024 e!1491849)))

(declare-fun res!994148 () Bool)

(assert (=> d!689366 (=> res!994148 e!1491849)))

(assert (=> d!689366 (= res!994148 (not (is-Cons!27768 (list!11039 tokens!300))))))

(assert (=> d!689366 (not (isEmpty!15825 rules!853))))

(assert (=> d!689366 (= (rulesProduceEachTokenIndividuallyList!1351 Lexer!4019 rules!853 (list!11039 tokens!300)) lt!862024)))

(declare-fun b!2328397 () Bool)

(declare-fun e!1491848 () Bool)

(assert (=> b!2328397 (= e!1491849 e!1491848)))

(declare-fun res!994149 () Bool)

(assert (=> b!2328397 (=> (not res!994149) (not e!1491848))))

(declare-fun rulesProduceIndividualToken!1787 (LexerInterface!4021 List!27867 Token!8326) Bool)

(assert (=> b!2328397 (= res!994149 (rulesProduceIndividualToken!1787 Lexer!4019 rules!853 (h!33169 (list!11039 tokens!300))))))

(declare-fun b!2328398 () Bool)

(assert (=> b!2328398 (= e!1491848 (rulesProduceEachTokenIndividuallyList!1351 Lexer!4019 rules!853 (t!207600 (list!11039 tokens!300))))))

(assert (= (and d!689366 (not res!994148)) b!2328397))

(assert (= (and b!2328397 res!994149) b!2328398))

(assert (=> d!689366 m!2758969))

(declare-fun m!2759023 () Bool)

(assert (=> d!689366 m!2759023))

(assert (=> d!689366 m!2758959))

(declare-fun m!2759025 () Bool)

(assert (=> b!2328397 m!2759025))

(declare-fun m!2759027 () Bool)

(assert (=> b!2328398 m!2759027))

(assert (=> b!2328341 d!689366))

(declare-fun d!689386 () Bool)

(declare-fun list!11041 (Conc!9103) List!27866)

(assert (=> d!689386 (= (list!11039 tokens!300) (list!11041 (c!369908 tokens!300)))))

(declare-fun bs!459361 () Bool)

(assert (= bs!459361 d!689386))

(declare-fun m!2759029 () Bool)

(assert (=> bs!459361 m!2759029))

(assert (=> b!2328341 d!689386))

(declare-fun bs!459362 () Bool)

(declare-fun d!689388 () Bool)

(assert (= bs!459362 (and d!689388 d!689366)))

(declare-fun lambda!86399 () Int)

(assert (=> bs!459362 (= lambda!86399 lambda!86394)))

(declare-fun b!2328417 () Bool)

(declare-fun e!1491864 () Bool)

(assert (=> b!2328417 (= e!1491864 true)))

(declare-fun b!2328416 () Bool)

(declare-fun e!1491863 () Bool)

(assert (=> b!2328416 (= e!1491863 e!1491864)))

(declare-fun b!2328415 () Bool)

(declare-fun e!1491862 () Bool)

(assert (=> b!2328415 (= e!1491862 e!1491863)))

(assert (=> d!689388 e!1491862))

(assert (= b!2328416 b!2328417))

(assert (= b!2328415 b!2328416))

(assert (= (and d!689388 (is-Cons!27769 rules!853)) b!2328415))

(assert (=> b!2328417 (< (dynLambda!11988 order!15369 (toValue!6252 (transformation!4424 (h!33170 rules!853)))) (dynLambda!11989 order!15371 lambda!86399))))

(assert (=> b!2328417 (< (dynLambda!11990 order!15373 (toChars!6111 (transformation!4424 (h!33170 rules!853)))) (dynLambda!11989 order!15371 lambda!86399))))

(assert (=> d!689388 true))

(declare-fun e!1491861 () Bool)

(assert (=> d!689388 e!1491861))

(declare-fun res!994152 () Bool)

(assert (=> d!689388 (=> (not res!994152) (not e!1491861))))

(declare-fun lt!862029 () Bool)

(assert (=> d!689388 (= res!994152 (= lt!862029 (forall!5522 (list!11039 tokens!300) lambda!86399)))))

(declare-fun forall!5523 (BalanceConc!17818 Int) Bool)

(assert (=> d!689388 (= lt!862029 (forall!5523 tokens!300 lambda!86399))))

(assert (=> d!689388 (not (isEmpty!15825 rules!853))))

(assert (=> d!689388 (= (rulesProduceEachTokenIndividually!929 Lexer!4019 rules!853 tokens!300) lt!862029)))

(declare-fun b!2328414 () Bool)

(assert (=> b!2328414 (= e!1491861 (= lt!862029 (rulesProduceEachTokenIndividuallyList!1351 Lexer!4019 rules!853 (list!11039 tokens!300))))))

(assert (= (and d!689388 res!994152) b!2328414))

(assert (=> d!689388 m!2758969))

(assert (=> d!689388 m!2758969))

(declare-fun m!2759031 () Bool)

(assert (=> d!689388 m!2759031))

(declare-fun m!2759033 () Bool)

(assert (=> d!689388 m!2759033))

(assert (=> d!689388 m!2758959))

(assert (=> b!2328414 m!2758969))

(assert (=> b!2328414 m!2758969))

(assert (=> b!2328414 m!2758971))

(assert (=> b!2328336 d!689388))

(declare-fun d!689390 () Bool)

(assert (=> d!689390 (= (isEmpty!15825 rules!853) (is-Nil!27769 rules!853))))

(assert (=> start!229900 d!689390))

(declare-fun d!689392 () Bool)

(declare-fun isBalanced!2777 (Conc!9103) Bool)

(assert (=> d!689392 (= (inv!37813 tokens!300) (isBalanced!2777 (c!369908 tokens!300)))))

(declare-fun bs!459363 () Bool)

(assert (= bs!459363 d!689392))

(declare-fun m!2759035 () Bool)

(assert (=> bs!459363 m!2759035))

(assert (=> start!229900 d!689392))

(declare-fun d!689394 () Bool)

(declare-fun c!369917 () Bool)

(assert (=> d!689394 (= c!369917 (is-Node!9103 (c!369908 tokens!300)))))

(declare-fun e!1491869 () Bool)

(assert (=> d!689394 (= (inv!37812 (c!369908 tokens!300)) e!1491869)))

(declare-fun b!2328424 () Bool)

(declare-fun inv!37817 (Conc!9103) Bool)

(assert (=> b!2328424 (= e!1491869 (inv!37817 (c!369908 tokens!300)))))

(declare-fun b!2328425 () Bool)

(declare-fun e!1491870 () Bool)

(assert (=> b!2328425 (= e!1491869 e!1491870)))

(declare-fun res!994155 () Bool)

(assert (=> b!2328425 (= res!994155 (not (is-Leaf!13379 (c!369908 tokens!300))))))

(assert (=> b!2328425 (=> res!994155 e!1491870)))

(declare-fun b!2328426 () Bool)

(declare-fun inv!37818 (Conc!9103) Bool)

(assert (=> b!2328426 (= e!1491870 (inv!37818 (c!369908 tokens!300)))))

(assert (= (and d!689394 c!369917) b!2328424))

(assert (= (and d!689394 (not c!369917)) b!2328425))

(assert (= (and b!2328425 (not res!994155)) b!2328426))

(declare-fun m!2759037 () Bool)

(assert (=> b!2328424 m!2759037))

(declare-fun m!2759039 () Bool)

(assert (=> b!2328426 m!2759039))

(assert (=> b!2328342 d!689394))

(declare-fun d!689396 () Bool)

(assert (=> d!689396 (= (get!8376 lt!862018) (v!30665 lt!862018))))

(assert (=> b!2328337 d!689396))

(declare-fun d!689398 () Bool)

(assert (=> d!689398 (= (isEmpty!15826 lt!862018) (not (is-Some!5419 lt!862018)))))

(assert (=> b!2328343 d!689398))

(declare-fun d!689400 () Bool)

(assert (=> d!689400 (= (inv!37808 (tag!4914 (h!33170 rules!853))) (= (mod (str.len (value!140454 (tag!4914 (h!33170 rules!853)))) 2) 0))))

(assert (=> b!2328339 d!689400))

(declare-fun d!689402 () Bool)

(declare-fun res!994158 () Bool)

(declare-fun e!1491873 () Bool)

(assert (=> d!689402 (=> (not res!994158) (not e!1491873))))

(declare-fun semiInverseModEq!1810 (Int Int) Bool)

(assert (=> d!689402 (= res!994158 (semiInverseModEq!1810 (toChars!6111 (transformation!4424 (h!33170 rules!853))) (toValue!6252 (transformation!4424 (h!33170 rules!853)))))))

(assert (=> d!689402 (= (inv!37811 (transformation!4424 (h!33170 rules!853))) e!1491873)))

(declare-fun b!2328429 () Bool)

(declare-fun equivClasses!1725 (Int Int) Bool)

(assert (=> b!2328429 (= e!1491873 (equivClasses!1725 (toChars!6111 (transformation!4424 (h!33170 rules!853))) (toValue!6252 (transformation!4424 (h!33170 rules!853)))))))

(assert (= (and d!689402 res!994158) b!2328429))

(declare-fun m!2759041 () Bool)

(assert (=> d!689402 m!2759041))

(declare-fun m!2759043 () Bool)

(assert (=> b!2328429 m!2759043))

(assert (=> b!2328339 d!689402))

(declare-fun d!689404 () Bool)

(assert (=> d!689404 (= (isDefined!4261 lt!862018) (not (isEmpty!15826 lt!862018)))))

(declare-fun bs!459364 () Bool)

(assert (= bs!459364 d!689404))

(assert (=> bs!459364 m!2758975))

(assert (=> b!2328334 d!689404))

(declare-fun d!689406 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!155 (LexerInterface!4021 BalanceConc!17818 Int List!27867) Bool)

(assert (=> d!689406 (= (separableTokens!298 Lexer!4019 tokens!300 rules!853) (tokensListTwoByTwoPredicateSeparable!155 Lexer!4019 tokens!300 0 rules!853))))

(declare-fun bs!459365 () Bool)

(assert (= bs!459365 d!689406))

(declare-fun m!2759045 () Bool)

(assert (=> bs!459365 m!2759045))

(assert (=> b!2328340 d!689406))

(declare-fun d!689408 () Bool)

(declare-fun res!994161 () Bool)

(declare-fun e!1491876 () Bool)

(assert (=> d!689408 (=> (not res!994161) (not e!1491876))))

(declare-fun rulesValid!1643 (LexerInterface!4021 List!27867) Bool)

(assert (=> d!689408 (= res!994161 (rulesValid!1643 Lexer!4019 rules!853))))

(assert (=> d!689408 (= (rulesInvariant!3521 Lexer!4019 rules!853) e!1491876)))

(declare-fun b!2328432 () Bool)

(declare-datatypes ((List!27872 0))(
  ( (Nil!27774) (Cons!27774 (h!33175 String!30360) (t!207616 List!27872)) )
))
(declare-fun noDuplicateTag!1641 (LexerInterface!4021 List!27867 List!27872) Bool)

(assert (=> b!2328432 (= e!1491876 (noDuplicateTag!1641 Lexer!4019 rules!853 Nil!27774))))

(assert (= (and d!689408 res!994161) b!2328432))

(declare-fun m!2759047 () Bool)

(assert (=> d!689408 m!2759047))

(declare-fun m!2759049 () Bool)

(assert (=> b!2328432 m!2759049))

(assert (=> b!2328335 d!689408))

(declare-fun e!1491881 () Bool)

(declare-fun tp!737769 () Bool)

(declare-fun b!2328441 () Bool)

(declare-fun tp!737770 () Bool)

(assert (=> b!2328441 (= e!1491881 (and (inv!37812 (left!21070 (c!369908 tokens!300))) tp!737769 (inv!37812 (right!21400 (c!369908 tokens!300))) tp!737770))))

(declare-fun b!2328443 () Bool)

(declare-fun e!1491882 () Bool)

(declare-fun tp!737768 () Bool)

(assert (=> b!2328443 (= e!1491882 tp!737768)))

(declare-fun b!2328442 () Bool)

(declare-fun inv!37819 (IArray!18211) Bool)

(assert (=> b!2328442 (= e!1491881 (and (inv!37819 (xs!12083 (c!369908 tokens!300))) e!1491882))))

(assert (=> b!2328342 (= tp!737744 (and (inv!37812 (c!369908 tokens!300)) e!1491881))))

(assert (= (and b!2328342 (is-Node!9103 (c!369908 tokens!300))) b!2328441))

(assert (= b!2328442 b!2328443))

(assert (= (and b!2328342 (is-Leaf!13379 (c!369908 tokens!300))) b!2328442))

(declare-fun m!2759051 () Bool)

(assert (=> b!2328441 m!2759051))

(declare-fun m!2759053 () Bool)

(assert (=> b!2328441 m!2759053))

(declare-fun m!2759055 () Bool)

(assert (=> b!2328442 m!2759055))

(assert (=> b!2328342 m!2758979))

(declare-fun b!2328454 () Bool)

(declare-fun b_free!70245 () Bool)

(declare-fun b_next!70949 () Bool)

(assert (=> b!2328454 (= b_free!70245 (not b_next!70949))))

(declare-fun tp!737782 () Bool)

(declare-fun b_and!185157 () Bool)

(assert (=> b!2328454 (= tp!737782 b_and!185157)))

(declare-fun b_free!70247 () Bool)

(declare-fun b_next!70951 () Bool)

(assert (=> b!2328454 (= b_free!70247 (not b_next!70951))))

(declare-fun tp!737780 () Bool)

(declare-fun b_and!185159 () Bool)

(assert (=> b!2328454 (= tp!737780 b_and!185159)))

(declare-fun e!1491892 () Bool)

(assert (=> b!2328454 (= e!1491892 (and tp!737782 tp!737780))))

(declare-fun tp!737779 () Bool)

(declare-fun e!1491893 () Bool)

(declare-fun b!2328453 () Bool)

(assert (=> b!2328453 (= e!1491893 (and tp!737779 (inv!37808 (tag!4914 (h!33170 (t!207601 rules!853)))) (inv!37811 (transformation!4424 (h!33170 (t!207601 rules!853)))) e!1491892))))

(declare-fun b!2328452 () Bool)

(declare-fun e!1491894 () Bool)

(declare-fun tp!737781 () Bool)

(assert (=> b!2328452 (= e!1491894 (and e!1491893 tp!737781))))

(assert (=> b!2328344 (= tp!737745 e!1491894)))

(assert (= b!2328453 b!2328454))

(assert (= b!2328452 b!2328453))

(assert (= (and b!2328344 (is-Cons!27769 (t!207601 rules!853))) b!2328452))

(declare-fun m!2759057 () Bool)

(assert (=> b!2328453 m!2759057))

(declare-fun m!2759059 () Bool)

(assert (=> b!2328453 m!2759059))

(declare-fun b!2328466 () Bool)

(declare-fun e!1491897 () Bool)

(declare-fun tp!737794 () Bool)

(declare-fun tp!737797 () Bool)

(assert (=> b!2328466 (= e!1491897 (and tp!737794 tp!737797))))

(declare-fun b!2328468 () Bool)

(declare-fun tp!737796 () Bool)

(declare-fun tp!737795 () Bool)

(assert (=> b!2328468 (= e!1491897 (and tp!737796 tp!737795))))

(declare-fun b!2328467 () Bool)

(declare-fun tp!737793 () Bool)

(assert (=> b!2328467 (= e!1491897 tp!737793)))

(assert (=> b!2328339 (= tp!737742 e!1491897)))

(declare-fun b!2328465 () Bool)

(declare-fun tp_is_empty!10923 () Bool)

(assert (=> b!2328465 (= e!1491897 tp_is_empty!10923)))

(assert (= (and b!2328339 (is-ElementMatch!6804 (regex!4424 (h!33170 rules!853)))) b!2328465))

(assert (= (and b!2328339 (is-Concat!11403 (regex!4424 (h!33170 rules!853)))) b!2328466))

(assert (= (and b!2328339 (is-Star!6804 (regex!4424 (h!33170 rules!853)))) b!2328467))

(assert (= (and b!2328339 (is-Union!6804 (regex!4424 (h!33170 rules!853)))) b!2328468))

(push 1)

(assert (not b!2328432))

(assert b_and!185157)

(assert (not d!689366))

(assert (not b!2328441))

(assert tp_is_empty!10923)

(assert (not b_next!70949))

(assert (not b!2328467))

(assert (not d!689392))

(assert (not b!2328426))

(assert (not b!2328398))

(assert (not d!689386))

(assert (not b!2328414))

(assert b_and!185151)

(assert (not b!2328453))

(assert (not d!689406))

(assert (not b!2328397))

(assert (not b!2328452))

(assert b_and!185149)

(assert (not b!2328407))

(assert (not b_next!70951))

(assert (not b!2328468))

(assert (not d!689402))

(assert (not b!2328415))

(assert (not b!2328443))

(assert (not b_next!70941))

(assert (not b!2328429))

(assert (not b!2328466))

(assert (not b_next!70943))

(assert (not b!2328342))

(assert (not d!689388))

(assert b_and!185159)

(assert (not d!689408))

(assert (not d!689404))

(assert (not b!2328442))

(assert (not b!2328424))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185151)

(assert b_and!185157)

(assert b_and!185149)

(assert (not b_next!70951))

(assert (not b_next!70941))

(assert (not b_next!70943))

(assert (not b_next!70949))

(assert b_and!185159)

(check-sat)

(pop 1)

