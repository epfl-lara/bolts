; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275882 () Bool)

(assert start!275882)

(declare-fun b!2836427 () Bool)

(declare-fun b_free!81749 () Bool)

(declare-fun b_next!82453 () Bool)

(assert (=> b!2836427 (= b_free!81749 (not b_next!82453))))

(declare-fun tp!907430 () Bool)

(declare-fun b_and!207603 () Bool)

(assert (=> b!2836427 (= tp!907430 b_and!207603)))

(declare-fun b_free!81751 () Bool)

(declare-fun b_next!82455 () Bool)

(assert (=> b!2836427 (= b_free!81751 (not b_next!82455))))

(declare-fun tp!907423 () Bool)

(declare-fun b_and!207605 () Bool)

(assert (=> b!2836427 (= tp!907423 b_and!207605)))

(declare-fun b!2836424 () Bool)

(declare-fun b_free!81753 () Bool)

(declare-fun b_next!82457 () Bool)

(assert (=> b!2836424 (= b_free!81753 (not b_next!82457))))

(declare-fun tp!907425 () Bool)

(declare-fun b_and!207607 () Bool)

(assert (=> b!2836424 (= tp!907425 b_and!207607)))

(declare-fun b_free!81755 () Bool)

(declare-fun b_next!82459 () Bool)

(assert (=> b!2836424 (= b_free!81755 (not b_next!82459))))

(declare-fun tp!907427 () Bool)

(declare-fun b_and!207609 () Bool)

(assert (=> b!2836424 (= tp!907427 b_and!207609)))

(declare-fun b!2836421 () Bool)

(declare-fun res!1180326 () Bool)

(declare-fun e!1795961 () Bool)

(assert (=> b!2836421 (=> (not res!1180326) (not e!1795961))))

(declare-datatypes ((LexerInterface!4613 0))(
  ( (LexerInterfaceExt!4610 (__x!22244 Int)) (Lexer!4611) )
))
(declare-fun thiss!11007 () LexerInterface!4613)

(declare-datatypes ((List!33596 0))(
  ( (Nil!33472) (Cons!33472 (h!38892 (_ BitVec 16)) (t!231925 List!33596)) )
))
(declare-datatypes ((TokenValue!5253 0))(
  ( (FloatLiteralValue!10506 (text!37216 List!33596)) (TokenValueExt!5252 (__x!22245 Int)) (Broken!26265 (value!161500 List!33596)) (Object!5376) (End!5253) (Def!5253) (Underscore!5253) (Match!5253) (Else!5253) (Error!5253) (Case!5253) (If!5253) (Extends!5253) (Abstract!5253) (Class!5253) (Val!5253) (DelimiterValue!10506 (del!5313 List!33596)) (KeywordValue!5259 (value!161501 List!33596)) (CommentValue!10506 (value!161502 List!33596)) (WhitespaceValue!10506 (value!161503 List!33596)) (IndentationValue!5253 (value!161504 List!33596)) (String!36788) (Int32!5253) (Broken!26266 (value!161505 List!33596)) (Boolean!5254) (Unit!47421) (OperatorValue!5256 (op!5313 List!33596)) (IdentifierValue!10506 (value!161506 List!33596)) (IdentifierValue!10507 (value!161507 List!33596)) (WhitespaceValue!10507 (value!161508 List!33596)) (True!10506) (False!10506) (Broken!26267 (value!161509 List!33596)) (Broken!26268 (value!161510 List!33596)) (True!10507) (RightBrace!5253) (RightBracket!5253) (Colon!5253) (Null!5253) (Comma!5253) (LeftBracket!5253) (False!10507) (LeftBrace!5253) (ImaginaryLiteralValue!5253 (text!37217 List!33596)) (StringLiteralValue!15759 (value!161511 List!33596)) (EOFValue!5253 (value!161512 List!33596)) (IdentValue!5253 (value!161513 List!33596)) (DelimiterValue!10507 (value!161514 List!33596)) (DedentValue!5253 (value!161515 List!33596)) (NewLineValue!5253 (value!161516 List!33596)) (IntegerValue!15759 (value!161517 (_ BitVec 32)) (text!37218 List!33596)) (IntegerValue!15760 (value!161518 Int) (text!37219 List!33596)) (Times!5253) (Or!5253) (Equal!5253) (Minus!5253) (Broken!26269 (value!161519 List!33596)) (And!5253) (Div!5253) (LessEqual!5253) (Mod!5253) (Concat!13667) (Not!5253) (Plus!5253) (SpaceValue!5253 (value!161520 List!33596)) (IntegerValue!15761 (value!161521 Int) (text!37220 List!33596)) (StringLiteralValue!15760 (text!37221 List!33596)) (FloatLiteralValue!10507 (text!37222 List!33596)) (BytesLiteralValue!5253 (value!161522 List!33596)) (CommentValue!10507 (value!161523 List!33596)) (StringLiteralValue!15761 (value!161524 List!33596)) (ErrorTokenValue!5253 (msg!5314 List!33596)) )
))
(declare-datatypes ((C!17010 0))(
  ( (C!17011 (val!10517 Int)) )
))
(declare-datatypes ((Regex!8414 0))(
  ( (ElementMatch!8414 (c!458363 C!17010)) (Concat!13668 (regOne!17340 Regex!8414) (regTwo!17340 Regex!8414)) (EmptyExpr!8414) (Star!8414 (reg!8743 Regex!8414)) (EmptyLang!8414) (Union!8414 (regOne!17341 Regex!8414) (regTwo!17341 Regex!8414)) )
))
(declare-datatypes ((String!36789 0))(
  ( (String!36790 (value!161525 String)) )
))
(declare-datatypes ((List!33597 0))(
  ( (Nil!33473) (Cons!33473 (h!38893 C!17010) (t!231926 List!33597)) )
))
(declare-datatypes ((IArray!20807 0))(
  ( (IArray!20808 (innerList!10461 List!33597)) )
))
(declare-datatypes ((Conc!10401 0))(
  ( (Node!10401 (left!25260 Conc!10401) (right!25590 Conc!10401) (csize!21032 Int) (cheight!10612 Int)) (Leaf!15821 (xs!13513 IArray!20807) (csize!21033 Int)) (Empty!10401) )
))
(declare-datatypes ((BalanceConc!20440 0))(
  ( (BalanceConc!20441 (c!458364 Conc!10401)) )
))
(declare-datatypes ((TokenValueInjection!9934 0))(
  ( (TokenValueInjection!9935 (toValue!7065 Int) (toChars!6924 Int)) )
))
(declare-datatypes ((Rule!9846 0))(
  ( (Rule!9847 (regex!5023 Regex!8414) (tag!5527 String!36789) (isSeparator!5023 Bool) (transformation!5023 TokenValueInjection!9934)) )
))
(declare-datatypes ((List!33598 0))(
  ( (Nil!33474) (Cons!33474 (h!38894 Rule!9846) (t!231927 List!33598)) )
))
(declare-fun rules!1047 () List!33598)

(declare-fun rulesInvariant!4029 (LexerInterface!4613 List!33598) Bool)

(assert (=> b!2836421 (= res!1180326 (rulesInvariant!4029 thiss!11007 rules!1047))))

(declare-fun b!2836422 () Bool)

(declare-fun e!1795963 () Bool)

(declare-fun e!1795956 () Bool)

(declare-fun tp!907426 () Bool)

(assert (=> b!2836422 (= e!1795963 (and e!1795956 tp!907426))))

(declare-fun b!2836423 () Bool)

(declare-fun e!1795958 () Bool)

(declare-datatypes ((Token!9448 0))(
  ( (Token!9449 (value!161526 TokenValue!5253) (rule!7451 Rule!9846) (size!26048 Int) (originalCharacters!5755 List!33597)) )
))
(declare-datatypes ((List!33599 0))(
  ( (Nil!33475) (Cons!33475 (h!38895 Token!9448) (t!231928 List!33599)) )
))
(declare-fun l!4019 () List!33599)

(declare-fun size!26049 (BalanceConc!20440) Int)

(declare-fun charsOf!3109 (Token!9448) BalanceConc!20440)

(assert (=> b!2836423 (= e!1795958 (> (size!26049 (charsOf!3109 (h!38895 (t!231928 l!4019)))) 0))))

(declare-fun e!1795962 () Bool)

(assert (=> b!2836424 (= e!1795962 (and tp!907425 tp!907427))))

(declare-fun b!2836425 () Bool)

(declare-fun e!1795957 () Bool)

(declare-fun ListPrimitiveSize!222 (List!33599) Int)

(assert (=> b!2836425 (= e!1795957 (< (ListPrimitiveSize!222 (t!231928 l!4019)) (ListPrimitiveSize!222 l!4019)))))

(declare-fun b!2836426 () Bool)

(assert (=> b!2836426 (= e!1795961 (not e!1795957))))

(declare-fun res!1180327 () Bool)

(assert (=> b!2836426 (=> res!1180327 e!1795957)))

(declare-fun separableTokensPredicate!920 (LexerInterface!4613 Token!9448 Token!9448 List!33598) Bool)

(assert (=> b!2836426 (= res!1180327 (not (separableTokensPredicate!920 thiss!11007 (h!38895 l!4019) (h!38895 (t!231928 l!4019)) rules!1047)))))

(assert (=> b!2836426 e!1795958))

(declare-fun res!1180332 () Bool)

(assert (=> b!2836426 (=> (not res!1180332) (not e!1795958))))

(declare-fun rulesProduceIndividualToken!2143 (LexerInterface!4613 List!33598 Token!9448) Bool)

(assert (=> b!2836426 (= res!1180332 (rulesProduceIndividualToken!2143 thiss!11007 rules!1047 (h!38895 (t!231928 l!4019))))))

(declare-datatypes ((Unit!47422 0))(
  ( (Unit!47423) )
))
(declare-fun lt!1011387 () Unit!47422)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!757 (LexerInterface!4613 List!33598 List!33599 Token!9448) Unit!47422)

(assert (=> b!2836426 (= lt!1011387 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!757 thiss!11007 rules!1047 l!4019 (h!38895 (t!231928 l!4019))))))

(assert (=> b!2836426 (rulesProduceIndividualToken!2143 thiss!11007 rules!1047 (h!38895 l!4019))))

(declare-fun lt!1011386 () Unit!47422)

(assert (=> b!2836426 (= lt!1011386 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!757 thiss!11007 rules!1047 l!4019 (h!38895 l!4019)))))

(declare-fun e!1795960 () Bool)

(assert (=> b!2836427 (= e!1795960 (and tp!907430 tp!907423))))

(declare-fun b!2836428 () Bool)

(declare-fun res!1180328 () Bool)

(assert (=> b!2836428 (=> (not res!1180328) (not e!1795961))))

(assert (=> b!2836428 (= res!1180328 (and (is-Cons!33475 l!4019) (is-Cons!33475 (t!231928 l!4019))))))

(declare-fun b!2836429 () Bool)

(declare-fun res!1180331 () Bool)

(assert (=> b!2836429 (=> (not res!1180331) (not e!1795961))))

(declare-fun rulesProduceEachTokenIndividuallyList!1656 (LexerInterface!4613 List!33598 List!33599) Bool)

(assert (=> b!2836429 (= res!1180331 (rulesProduceEachTokenIndividuallyList!1656 thiss!11007 rules!1047 l!4019))))

(declare-fun e!1795964 () Bool)

(declare-fun tp!907424 () Bool)

(declare-fun b!2836430 () Bool)

(declare-fun e!1795952 () Bool)

(declare-fun inv!45448 (Token!9448) Bool)

(assert (=> b!2836430 (= e!1795964 (and (inv!45448 (h!38895 l!4019)) e!1795952 tp!907424))))

(declare-fun b!2836431 () Bool)

(declare-fun res!1180330 () Bool)

(assert (=> b!2836431 (=> (not res!1180330) (not e!1795961))))

(declare-fun isEmpty!18464 (List!33598) Bool)

(assert (=> b!2836431 (= res!1180330 (not (isEmpty!18464 rules!1047)))))

(declare-fun b!2836432 () Bool)

(declare-fun tp!907429 () Bool)

(declare-fun inv!45445 (String!36789) Bool)

(declare-fun inv!45449 (TokenValueInjection!9934) Bool)

(assert (=> b!2836432 (= e!1795956 (and tp!907429 (inv!45445 (tag!5527 (h!38894 rules!1047))) (inv!45449 (transformation!5023 (h!38894 rules!1047))) e!1795960))))

(declare-fun tp!907431 () Bool)

(declare-fun b!2836433 () Bool)

(declare-fun e!1795955 () Bool)

(declare-fun inv!21 (TokenValue!5253) Bool)

(assert (=> b!2836433 (= e!1795952 (and (inv!21 (value!161526 (h!38895 l!4019))) e!1795955 tp!907431))))

(declare-fun b!2836434 () Bool)

(declare-fun res!1180325 () Bool)

(assert (=> b!2836434 (=> (not res!1180325) (not e!1795961))))

(declare-datatypes ((IArray!20809 0))(
  ( (IArray!20810 (innerList!10462 List!33599)) )
))
(declare-datatypes ((Conc!10402 0))(
  ( (Node!10402 (left!25261 Conc!10402) (right!25591 Conc!10402) (csize!21034 Int) (cheight!10613 Int)) (Leaf!15822 (xs!13514 IArray!20809) (csize!21035 Int)) (Empty!10402) )
))
(declare-datatypes ((BalanceConc!20442 0))(
  ( (BalanceConc!20443 (c!458365 Conc!10402)) )
))
(declare-fun rulesProduceEachTokenIndividually!1129 (LexerInterface!4613 List!33598 BalanceConc!20442) Bool)

(declare-fun seqFromList!3269 (List!33599) BalanceConc!20442)

(assert (=> b!2836434 (= res!1180325 (rulesProduceEachTokenIndividually!1129 thiss!11007 rules!1047 (seqFromList!3269 l!4019)))))

(declare-fun b!2836435 () Bool)

(declare-fun tp!907428 () Bool)

(assert (=> b!2836435 (= e!1795955 (and tp!907428 (inv!45445 (tag!5527 (rule!7451 (h!38895 l!4019)))) (inv!45449 (transformation!5023 (rule!7451 (h!38895 l!4019)))) e!1795962))))

(declare-fun res!1180329 () Bool)

(assert (=> start!275882 (=> (not res!1180329) (not e!1795961))))

(assert (=> start!275882 (= res!1180329 (is-Lexer!4611 thiss!11007))))

(assert (=> start!275882 e!1795961))

(assert (=> start!275882 true))

(assert (=> start!275882 e!1795963))

(assert (=> start!275882 e!1795964))

(assert (= (and start!275882 res!1180329) b!2836431))

(assert (= (and b!2836431 res!1180330) b!2836421))

(assert (= (and b!2836421 res!1180326) b!2836429))

(assert (= (and b!2836429 res!1180331) b!2836434))

(assert (= (and b!2836434 res!1180325) b!2836428))

(assert (= (and b!2836428 res!1180328) b!2836426))

(assert (= (and b!2836426 res!1180332) b!2836423))

(assert (= (and b!2836426 (not res!1180327)) b!2836425))

(assert (= b!2836432 b!2836427))

(assert (= b!2836422 b!2836432))

(assert (= (and start!275882 (is-Cons!33474 rules!1047)) b!2836422))

(assert (= b!2836435 b!2836424))

(assert (= b!2836433 b!2836435))

(assert (= b!2836430 b!2836433))

(assert (= (and start!275882 (is-Cons!33475 l!4019)) b!2836430))

(declare-fun m!3266271 () Bool)

(assert (=> b!2836433 m!3266271))

(declare-fun m!3266273 () Bool)

(assert (=> b!2836435 m!3266273))

(declare-fun m!3266275 () Bool)

(assert (=> b!2836435 m!3266275))

(declare-fun m!3266277 () Bool)

(assert (=> b!2836425 m!3266277))

(declare-fun m!3266279 () Bool)

(assert (=> b!2836425 m!3266279))

(declare-fun m!3266281 () Bool)

(assert (=> b!2836429 m!3266281))

(declare-fun m!3266283 () Bool)

(assert (=> b!2836421 m!3266283))

(declare-fun m!3266285 () Bool)

(assert (=> b!2836434 m!3266285))

(assert (=> b!2836434 m!3266285))

(declare-fun m!3266287 () Bool)

(assert (=> b!2836434 m!3266287))

(declare-fun m!3266289 () Bool)

(assert (=> b!2836426 m!3266289))

(declare-fun m!3266291 () Bool)

(assert (=> b!2836426 m!3266291))

(declare-fun m!3266293 () Bool)

(assert (=> b!2836426 m!3266293))

(declare-fun m!3266295 () Bool)

(assert (=> b!2836426 m!3266295))

(declare-fun m!3266297 () Bool)

(assert (=> b!2836426 m!3266297))

(declare-fun m!3266299 () Bool)

(assert (=> b!2836423 m!3266299))

(assert (=> b!2836423 m!3266299))

(declare-fun m!3266301 () Bool)

(assert (=> b!2836423 m!3266301))

(declare-fun m!3266303 () Bool)

(assert (=> b!2836430 m!3266303))

(declare-fun m!3266305 () Bool)

(assert (=> b!2836431 m!3266305))

(declare-fun m!3266307 () Bool)

(assert (=> b!2836432 m!3266307))

(declare-fun m!3266309 () Bool)

(assert (=> b!2836432 m!3266309))

(push 1)

(assert b_and!207607)

(assert (not b!2836431))

(assert (not b!2836430))

(assert b_and!207603)

(assert (not b!2836421))

(assert b_and!207605)

(assert (not b!2836426))

(assert (not b!2836422))

(assert (not b!2836429))

(assert (not b_next!82455))

(assert b_and!207609)

(assert (not b!2836434))

(assert (not b!2836433))

(assert (not b!2836425))

(assert (not b!2836435))

(assert (not b_next!82457))

(assert (not b_next!82453))

(assert (not b!2836432))

(assert (not b!2836423))

(assert (not b_next!82459))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82455))

(assert b_and!207607)

(assert b_and!207603)

(assert b_and!207609)

(assert b_and!207605)

(assert (not b_next!82457))

(assert (not b_next!82453))

(assert (not b_next!82459))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2836511 () Bool)

(declare-fun e!1796028 () Bool)

(assert (=> b!2836511 (= e!1796028 true)))

(declare-fun b!2836510 () Bool)

(declare-fun e!1796027 () Bool)

(assert (=> b!2836510 (= e!1796027 e!1796028)))

(declare-fun b!2836509 () Bool)

(declare-fun e!1796026 () Bool)

(assert (=> b!2836509 (= e!1796026 e!1796027)))

(declare-fun d!823162 () Bool)

(assert (=> d!823162 e!1796026))

(assert (= b!2836510 b!2836511))

(assert (= b!2836509 b!2836510))

(assert (= (and d!823162 (is-Cons!33474 rules!1047)) b!2836509))

(declare-fun order!17881 () Int)

(declare-fun order!17883 () Int)

(declare-fun lambda!104164 () Int)

(declare-fun dynLambda!14084 (Int Int) Int)

(declare-fun dynLambda!14085 (Int Int) Int)

(assert (=> b!2836511 (< (dynLambda!14084 order!17881 (toValue!7065 (transformation!5023 (h!38894 rules!1047)))) (dynLambda!14085 order!17883 lambda!104164))))

(declare-fun order!17885 () Int)

(declare-fun dynLambda!14086 (Int Int) Int)

(assert (=> b!2836511 (< (dynLambda!14086 order!17885 (toChars!6924 (transformation!5023 (h!38894 rules!1047)))) (dynLambda!14085 order!17883 lambda!104164))))

(assert (=> d!823162 true))

(declare-fun e!1796017 () Bool)

(assert (=> d!823162 e!1796017))

(declare-fun res!1180381 () Bool)

(assert (=> d!823162 (=> (not res!1180381) (not e!1796017))))

(declare-fun lt!1011408 () Bool)

(declare-fun forall!6894 (List!33599 Int) Bool)

(declare-fun list!12517 (BalanceConc!20442) List!33599)

(assert (=> d!823162 (= res!1180381 (= lt!1011408 (forall!6894 (list!12517 (seqFromList!3269 l!4019)) lambda!104164)))))

(declare-fun forall!6895 (BalanceConc!20442 Int) Bool)

(assert (=> d!823162 (= lt!1011408 (forall!6895 (seqFromList!3269 l!4019) lambda!104164))))

(assert (=> d!823162 (not (isEmpty!18464 rules!1047))))

(assert (=> d!823162 (= (rulesProduceEachTokenIndividually!1129 thiss!11007 rules!1047 (seqFromList!3269 l!4019)) lt!1011408)))

(declare-fun b!2836498 () Bool)

(assert (=> b!2836498 (= e!1796017 (= lt!1011408 (rulesProduceEachTokenIndividuallyList!1656 thiss!11007 rules!1047 (list!12517 (seqFromList!3269 l!4019)))))))

(assert (= (and d!823162 res!1180381) b!2836498))

(assert (=> d!823162 m!3266285))

(declare-fun m!3266411 () Bool)

(assert (=> d!823162 m!3266411))

(assert (=> d!823162 m!3266411))

(declare-fun m!3266413 () Bool)

(assert (=> d!823162 m!3266413))

(assert (=> d!823162 m!3266285))

(declare-fun m!3266415 () Bool)

(assert (=> d!823162 m!3266415))

(assert (=> d!823162 m!3266305))

(assert (=> b!2836498 m!3266285))

(assert (=> b!2836498 m!3266411))

(assert (=> b!2836498 m!3266411))

(declare-fun m!3266417 () Bool)

(assert (=> b!2836498 m!3266417))

(assert (=> b!2836434 d!823162))

(declare-fun d!823184 () Bool)

(declare-fun fromListB!1481 (List!33599) BalanceConc!20442)

(assert (=> d!823184 (= (seqFromList!3269 l!4019) (fromListB!1481 l!4019))))

(declare-fun bs!518813 () Bool)

(assert (= bs!518813 d!823184))

(declare-fun m!3266423 () Bool)

(assert (=> bs!518813 m!3266423))

(assert (=> b!2836434 d!823184))

(declare-fun d!823194 () Bool)

(declare-fun lt!1011415 () Int)

(declare-fun size!26052 (List!33597) Int)

(declare-fun list!12518 (BalanceConc!20440) List!33597)

(assert (=> d!823194 (= lt!1011415 (size!26052 (list!12518 (charsOf!3109 (h!38895 (t!231928 l!4019))))))))

(declare-fun size!26053 (Conc!10401) Int)

(assert (=> d!823194 (= lt!1011415 (size!26053 (c!458364 (charsOf!3109 (h!38895 (t!231928 l!4019))))))))

(assert (=> d!823194 (= (size!26049 (charsOf!3109 (h!38895 (t!231928 l!4019)))) lt!1011415)))

(declare-fun bs!518814 () Bool)

(assert (= bs!518814 d!823194))

(assert (=> bs!518814 m!3266299))

(declare-fun m!3266427 () Bool)

(assert (=> bs!518814 m!3266427))

(assert (=> bs!518814 m!3266427))

(declare-fun m!3266429 () Bool)

(assert (=> bs!518814 m!3266429))

(declare-fun m!3266431 () Bool)

(assert (=> bs!518814 m!3266431))

(assert (=> b!2836423 d!823194))

(declare-fun d!823196 () Bool)

(declare-fun lt!1011418 () BalanceConc!20440)

(assert (=> d!823196 (= (list!12518 lt!1011418) (originalCharacters!5755 (h!38895 (t!231928 l!4019))))))

(declare-fun dynLambda!14087 (Int TokenValue!5253) BalanceConc!20440)

(assert (=> d!823196 (= lt!1011418 (dynLambda!14087 (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))) (value!161526 (h!38895 (t!231928 l!4019)))))))

(assert (=> d!823196 (= (charsOf!3109 (h!38895 (t!231928 l!4019))) lt!1011418)))

(declare-fun b_lambda!85263 () Bool)

(assert (=> (not b_lambda!85263) (not d!823196)))

(declare-fun t!231940 () Bool)

(declare-fun tb!154485 () Bool)

(assert (=> (and b!2836427 (= (toChars!6924 (transformation!5023 (h!38894 rules!1047))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019)))))) t!231940) tb!154485))

(declare-fun b!2836528 () Bool)

(declare-fun e!1796037 () Bool)

(declare-fun tp!907461 () Bool)

(declare-fun inv!45452 (Conc!10401) Bool)

(assert (=> b!2836528 (= e!1796037 (and (inv!45452 (c!458364 (dynLambda!14087 (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))) (value!161526 (h!38895 (t!231928 l!4019)))))) tp!907461))))

(declare-fun result!192650 () Bool)

(declare-fun inv!45453 (BalanceConc!20440) Bool)

(assert (=> tb!154485 (= result!192650 (and (inv!45453 (dynLambda!14087 (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))) (value!161526 (h!38895 (t!231928 l!4019))))) e!1796037))))

(assert (= tb!154485 b!2836528))

(declare-fun m!3266433 () Bool)

(assert (=> b!2836528 m!3266433))

(declare-fun m!3266435 () Bool)

(assert (=> tb!154485 m!3266435))

(assert (=> d!823196 t!231940))

(declare-fun b_and!207619 () Bool)

(assert (= b_and!207605 (and (=> t!231940 result!192650) b_and!207619)))

(declare-fun t!231942 () Bool)

(declare-fun tb!154487 () Bool)

(assert (=> (and b!2836424 (= (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019)))))) t!231942) tb!154487))

(declare-fun result!192654 () Bool)

(assert (= result!192654 result!192650))

(assert (=> d!823196 t!231942))

(declare-fun b_and!207621 () Bool)

(assert (= b_and!207609 (and (=> t!231942 result!192654) b_and!207621)))

(declare-fun m!3266437 () Bool)

(assert (=> d!823196 m!3266437))

(declare-fun m!3266439 () Bool)

(assert (=> d!823196 m!3266439))

(assert (=> b!2836423 d!823196))

(declare-fun b!2836539 () Bool)

(declare-fun e!1796045 () Bool)

(declare-fun inv!15 (TokenValue!5253) Bool)

(assert (=> b!2836539 (= e!1796045 (inv!15 (value!161526 (h!38895 l!4019))))))

(declare-fun b!2836540 () Bool)

(declare-fun e!1796046 () Bool)

(declare-fun e!1796044 () Bool)

(assert (=> b!2836540 (= e!1796046 e!1796044)))

(declare-fun c!458379 () Bool)

(assert (=> b!2836540 (= c!458379 (is-IntegerValue!15760 (value!161526 (h!38895 l!4019))))))

(declare-fun b!2836541 () Bool)

(declare-fun inv!17 (TokenValue!5253) Bool)

(assert (=> b!2836541 (= e!1796044 (inv!17 (value!161526 (h!38895 l!4019))))))

(declare-fun b!2836543 () Bool)

(declare-fun res!1180388 () Bool)

(assert (=> b!2836543 (=> res!1180388 e!1796045)))

(assert (=> b!2836543 (= res!1180388 (not (is-IntegerValue!15761 (value!161526 (h!38895 l!4019)))))))

(assert (=> b!2836543 (= e!1796044 e!1796045)))

(declare-fun b!2836542 () Bool)

(declare-fun inv!16 (TokenValue!5253) Bool)

(assert (=> b!2836542 (= e!1796046 (inv!16 (value!161526 (h!38895 l!4019))))))

(declare-fun d!823198 () Bool)

(declare-fun c!458378 () Bool)

(assert (=> d!823198 (= c!458378 (is-IntegerValue!15759 (value!161526 (h!38895 l!4019))))))

(assert (=> d!823198 (= (inv!21 (value!161526 (h!38895 l!4019))) e!1796046)))

(assert (= (and d!823198 c!458378) b!2836542))

(assert (= (and d!823198 (not c!458378)) b!2836540))

(assert (= (and b!2836540 c!458379) b!2836541))

(assert (= (and b!2836540 (not c!458379)) b!2836543))

(assert (= (and b!2836543 (not res!1180388)) b!2836539))

(declare-fun m!3266441 () Bool)

(assert (=> b!2836539 m!3266441))

(declare-fun m!3266443 () Bool)

(assert (=> b!2836541 m!3266443))

(declare-fun m!3266445 () Bool)

(assert (=> b!2836542 m!3266445))

(assert (=> b!2836433 d!823198))

(declare-fun d!823200 () Bool)

(declare-fun res!1180393 () Bool)

(declare-fun e!1796049 () Bool)

(assert (=> d!823200 (=> (not res!1180393) (not e!1796049))))

(declare-fun isEmpty!18466 (List!33597) Bool)

(assert (=> d!823200 (= res!1180393 (not (isEmpty!18466 (originalCharacters!5755 (h!38895 l!4019)))))))

(assert (=> d!823200 (= (inv!45448 (h!38895 l!4019)) e!1796049)))

(declare-fun b!2836548 () Bool)

(declare-fun res!1180394 () Bool)

(assert (=> b!2836548 (=> (not res!1180394) (not e!1796049))))

(assert (=> b!2836548 (= res!1180394 (= (originalCharacters!5755 (h!38895 l!4019)) (list!12518 (dynLambda!14087 (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))) (value!161526 (h!38895 l!4019))))))))

(declare-fun b!2836549 () Bool)

(assert (=> b!2836549 (= e!1796049 (= (size!26048 (h!38895 l!4019)) (size!26052 (originalCharacters!5755 (h!38895 l!4019)))))))

(assert (= (and d!823200 res!1180393) b!2836548))

(assert (= (and b!2836548 res!1180394) b!2836549))

(declare-fun b_lambda!85265 () Bool)

(assert (=> (not b_lambda!85265) (not b!2836548)))

(declare-fun t!231944 () Bool)

(declare-fun tb!154489 () Bool)

(assert (=> (and b!2836427 (= (toChars!6924 (transformation!5023 (h!38894 rules!1047))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019))))) t!231944) tb!154489))

(declare-fun b!2836550 () Bool)

(declare-fun e!1796050 () Bool)

(declare-fun tp!907462 () Bool)

(assert (=> b!2836550 (= e!1796050 (and (inv!45452 (c!458364 (dynLambda!14087 (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))) (value!161526 (h!38895 l!4019))))) tp!907462))))

(declare-fun result!192656 () Bool)

(assert (=> tb!154489 (= result!192656 (and (inv!45453 (dynLambda!14087 (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))) (value!161526 (h!38895 l!4019)))) e!1796050))))

(assert (= tb!154489 b!2836550))

(declare-fun m!3266447 () Bool)

(assert (=> b!2836550 m!3266447))

(declare-fun m!3266449 () Bool)

(assert (=> tb!154489 m!3266449))

(assert (=> b!2836548 t!231944))

(declare-fun b_and!207623 () Bool)

(assert (= b_and!207619 (and (=> t!231944 result!192656) b_and!207623)))

(declare-fun t!231946 () Bool)

(declare-fun tb!154491 () Bool)

(assert (=> (and b!2836424 (= (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019))))) t!231946) tb!154491))

(declare-fun result!192658 () Bool)

(assert (= result!192658 result!192656))

(assert (=> b!2836548 t!231946))

(declare-fun b_and!207625 () Bool)

(assert (= b_and!207621 (and (=> t!231946 result!192658) b_and!207625)))

(declare-fun m!3266451 () Bool)

(assert (=> d!823200 m!3266451))

(declare-fun m!3266453 () Bool)

(assert (=> b!2836548 m!3266453))

(assert (=> b!2836548 m!3266453))

(declare-fun m!3266455 () Bool)

(assert (=> b!2836548 m!3266455))

(declare-fun m!3266457 () Bool)

(assert (=> b!2836549 m!3266457))

(assert (=> b!2836430 d!823200))

(declare-fun d!823202 () Bool)

(assert (=> d!823202 (= (inv!45445 (tag!5527 (rule!7451 (h!38895 l!4019)))) (= (mod (str.len (value!161525 (tag!5527 (rule!7451 (h!38895 l!4019))))) 2) 0))))

(assert (=> b!2836435 d!823202))

(declare-fun d!823204 () Bool)

(declare-fun res!1180397 () Bool)

(declare-fun e!1796053 () Bool)

(assert (=> d!823204 (=> (not res!1180397) (not e!1796053))))

(declare-fun semiInverseModEq!2090 (Int Int) Bool)

(assert (=> d!823204 (= res!1180397 (semiInverseModEq!2090 (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))) (toValue!7065 (transformation!5023 (rule!7451 (h!38895 l!4019))))))))

(assert (=> d!823204 (= (inv!45449 (transformation!5023 (rule!7451 (h!38895 l!4019)))) e!1796053)))

(declare-fun b!2836553 () Bool)

(declare-fun equivClasses!1989 (Int Int) Bool)

(assert (=> b!2836553 (= e!1796053 (equivClasses!1989 (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))) (toValue!7065 (transformation!5023 (rule!7451 (h!38895 l!4019))))))))

(assert (= (and d!823204 res!1180397) b!2836553))

(declare-fun m!3266459 () Bool)

(assert (=> d!823204 m!3266459))

(declare-fun m!3266461 () Bool)

(assert (=> b!2836553 m!3266461))

(assert (=> b!2836435 d!823204))

(declare-fun bs!518815 () Bool)

(declare-fun d!823206 () Bool)

(assert (= bs!518815 (and d!823206 d!823162)))

(declare-fun lambda!104167 () Int)

(assert (=> bs!518815 (= lambda!104167 lambda!104164)))

(declare-fun b!2836562 () Bool)

(declare-fun e!1796062 () Bool)

(assert (=> b!2836562 (= e!1796062 true)))

(declare-fun b!2836561 () Bool)

(declare-fun e!1796061 () Bool)

(assert (=> b!2836561 (= e!1796061 e!1796062)))

(declare-fun b!2836560 () Bool)

(declare-fun e!1796060 () Bool)

(assert (=> b!2836560 (= e!1796060 e!1796061)))

(assert (=> d!823206 e!1796060))

(assert (= b!2836561 b!2836562))

(assert (= b!2836560 b!2836561))

(assert (= (and d!823206 (is-Cons!33474 rules!1047)) b!2836560))

(assert (=> b!2836562 (< (dynLambda!14084 order!17881 (toValue!7065 (transformation!5023 (h!38894 rules!1047)))) (dynLambda!14085 order!17883 lambda!104167))))

(assert (=> b!2836562 (< (dynLambda!14086 order!17885 (toChars!6924 (transformation!5023 (h!38894 rules!1047)))) (dynLambda!14085 order!17883 lambda!104167))))

(assert (=> d!823206 true))

(declare-fun lt!1011423 () Bool)

(assert (=> d!823206 (= lt!1011423 (forall!6894 l!4019 lambda!104167))))

(declare-fun e!1796058 () Bool)

(assert (=> d!823206 (= lt!1011423 e!1796058)))

(declare-fun res!1180402 () Bool)

(assert (=> d!823206 (=> res!1180402 e!1796058)))

(assert (=> d!823206 (= res!1180402 (not (is-Cons!33475 l!4019)))))

(assert (=> d!823206 (not (isEmpty!18464 rules!1047))))

(assert (=> d!823206 (= (rulesProduceEachTokenIndividuallyList!1656 thiss!11007 rules!1047 l!4019) lt!1011423)))

(declare-fun b!2836558 () Bool)

(declare-fun e!1796059 () Bool)

(assert (=> b!2836558 (= e!1796058 e!1796059)))

(declare-fun res!1180403 () Bool)

(assert (=> b!2836558 (=> (not res!1180403) (not e!1796059))))

(assert (=> b!2836558 (= res!1180403 (rulesProduceIndividualToken!2143 thiss!11007 rules!1047 (h!38895 l!4019)))))

(declare-fun b!2836559 () Bool)

(assert (=> b!2836559 (= e!1796059 (rulesProduceEachTokenIndividuallyList!1656 thiss!11007 rules!1047 (t!231928 l!4019)))))

(assert (= (and d!823206 (not res!1180402)) b!2836558))

(assert (= (and b!2836558 res!1180403) b!2836559))

(declare-fun m!3266463 () Bool)

(assert (=> d!823206 m!3266463))

(assert (=> d!823206 m!3266305))

(assert (=> b!2836558 m!3266295))

(declare-fun m!3266465 () Bool)

(assert (=> b!2836559 m!3266465))

(assert (=> b!2836429 d!823206))

(declare-fun d!823208 () Bool)

(declare-fun prefixMatchZipperSequence!743 (Regex!8414 BalanceConc!20440) Bool)

(declare-fun rulesRegex!999 (LexerInterface!4613 List!33598) Regex!8414)

(declare-fun ++!8113 (BalanceConc!20440 BalanceConc!20440) BalanceConc!20440)

(declare-fun singletonSeq!2174 (C!17010) BalanceConc!20440)

(declare-fun apply!7824 (BalanceConc!20440 Int) C!17010)

(assert (=> d!823208 (= (separableTokensPredicate!920 thiss!11007 (h!38895 l!4019) (h!38895 (t!231928 l!4019)) rules!1047) (not (prefixMatchZipperSequence!743 (rulesRegex!999 thiss!11007 rules!1047) (++!8113 (charsOf!3109 (h!38895 l!4019)) (singletonSeq!2174 (apply!7824 (charsOf!3109 (h!38895 (t!231928 l!4019))) 0))))))))

(declare-fun bs!518816 () Bool)

(assert (= bs!518816 d!823208))

(declare-fun m!3266467 () Bool)

(assert (=> bs!518816 m!3266467))

(assert (=> bs!518816 m!3266299))

(declare-fun m!3266469 () Bool)

(assert (=> bs!518816 m!3266469))

(declare-fun m!3266471 () Bool)

(assert (=> bs!518816 m!3266471))

(declare-fun m!3266473 () Bool)

(assert (=> bs!518816 m!3266473))

(assert (=> bs!518816 m!3266467))

(assert (=> bs!518816 m!3266471))

(declare-fun m!3266475 () Bool)

(assert (=> bs!518816 m!3266475))

(assert (=> bs!518816 m!3266299))

(assert (=> bs!518816 m!3266469))

(assert (=> bs!518816 m!3266473))

(assert (=> bs!518816 m!3266475))

(declare-fun m!3266477 () Bool)

(assert (=> bs!518816 m!3266477))

(assert (=> b!2836426 d!823208))

(declare-fun d!823210 () Bool)

(assert (=> d!823210 (rulesProduceIndividualToken!2143 thiss!11007 rules!1047 (h!38895 (t!231928 l!4019)))))

(declare-fun lt!1011426 () Unit!47422)

(declare-fun choose!16737 (LexerInterface!4613 List!33598 List!33599 Token!9448) Unit!47422)

(assert (=> d!823210 (= lt!1011426 (choose!16737 thiss!11007 rules!1047 l!4019 (h!38895 (t!231928 l!4019))))))

(assert (=> d!823210 (not (isEmpty!18464 rules!1047))))

(assert (=> d!823210 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!757 thiss!11007 rules!1047 l!4019 (h!38895 (t!231928 l!4019))) lt!1011426)))

(declare-fun bs!518817 () Bool)

(assert (= bs!518817 d!823210))

(assert (=> bs!518817 m!3266297))

(declare-fun m!3266479 () Bool)

(assert (=> bs!518817 m!3266479))

(assert (=> bs!518817 m!3266305))

(assert (=> b!2836426 d!823210))

(declare-fun d!823212 () Bool)

(declare-fun lt!1011431 () Bool)

(declare-fun e!1796067 () Bool)

(assert (=> d!823212 (= lt!1011431 e!1796067)))

(declare-fun res!1180411 () Bool)

(assert (=> d!823212 (=> (not res!1180411) (not e!1796067))))

(declare-datatypes ((tuple2!33550 0))(
  ( (tuple2!33551 (_1!19887 BalanceConc!20442) (_2!19887 BalanceConc!20440)) )
))
(declare-fun lex!2023 (LexerInterface!4613 List!33598 BalanceConc!20440) tuple2!33550)

(declare-fun print!1742 (LexerInterface!4613 BalanceConc!20442) BalanceConc!20440)

(declare-fun singletonSeq!2175 (Token!9448) BalanceConc!20442)

(assert (=> d!823212 (= res!1180411 (= (list!12517 (_1!19887 (lex!2023 thiss!11007 rules!1047 (print!1742 thiss!11007 (singletonSeq!2175 (h!38895 l!4019)))))) (list!12517 (singletonSeq!2175 (h!38895 l!4019)))))))

(declare-fun e!1796068 () Bool)

(assert (=> d!823212 (= lt!1011431 e!1796068)))

(declare-fun res!1180412 () Bool)

(assert (=> d!823212 (=> (not res!1180412) (not e!1796068))))

(declare-fun lt!1011432 () tuple2!33550)

(declare-fun size!26054 (BalanceConc!20442) Int)

(assert (=> d!823212 (= res!1180412 (= (size!26054 (_1!19887 lt!1011432)) 1))))

(assert (=> d!823212 (= lt!1011432 (lex!2023 thiss!11007 rules!1047 (print!1742 thiss!11007 (singletonSeq!2175 (h!38895 l!4019)))))))

(assert (=> d!823212 (not (isEmpty!18464 rules!1047))))

(assert (=> d!823212 (= (rulesProduceIndividualToken!2143 thiss!11007 rules!1047 (h!38895 l!4019)) lt!1011431)))

(declare-fun b!2836569 () Bool)

(declare-fun res!1180410 () Bool)

(assert (=> b!2836569 (=> (not res!1180410) (not e!1796068))))

(declare-fun apply!7825 (BalanceConc!20442 Int) Token!9448)

(assert (=> b!2836569 (= res!1180410 (= (apply!7825 (_1!19887 lt!1011432) 0) (h!38895 l!4019)))))

(declare-fun b!2836570 () Bool)

(declare-fun isEmpty!18467 (BalanceConc!20440) Bool)

(assert (=> b!2836570 (= e!1796068 (isEmpty!18467 (_2!19887 lt!1011432)))))

(declare-fun b!2836571 () Bool)

(assert (=> b!2836571 (= e!1796067 (isEmpty!18467 (_2!19887 (lex!2023 thiss!11007 rules!1047 (print!1742 thiss!11007 (singletonSeq!2175 (h!38895 l!4019)))))))))

(assert (= (and d!823212 res!1180412) b!2836569))

(assert (= (and b!2836569 res!1180410) b!2836570))

(assert (= (and d!823212 res!1180411) b!2836571))

(assert (=> d!823212 m!3266305))

(declare-fun m!3266481 () Bool)

(assert (=> d!823212 m!3266481))

(declare-fun m!3266483 () Bool)

(assert (=> d!823212 m!3266483))

(declare-fun m!3266485 () Bool)

(assert (=> d!823212 m!3266485))

(declare-fun m!3266487 () Bool)

(assert (=> d!823212 m!3266487))

(assert (=> d!823212 m!3266481))

(declare-fun m!3266489 () Bool)

(assert (=> d!823212 m!3266489))

(declare-fun m!3266491 () Bool)

(assert (=> d!823212 m!3266491))

(assert (=> d!823212 m!3266481))

(assert (=> d!823212 m!3266483))

(declare-fun m!3266493 () Bool)

(assert (=> b!2836569 m!3266493))

(declare-fun m!3266495 () Bool)

(assert (=> b!2836570 m!3266495))

(assert (=> b!2836571 m!3266481))

(assert (=> b!2836571 m!3266481))

(assert (=> b!2836571 m!3266483))

(assert (=> b!2836571 m!3266483))

(assert (=> b!2836571 m!3266485))

(declare-fun m!3266497 () Bool)

(assert (=> b!2836571 m!3266497))

(assert (=> b!2836426 d!823212))

(declare-fun d!823214 () Bool)

(assert (=> d!823214 (rulesProduceIndividualToken!2143 thiss!11007 rules!1047 (h!38895 l!4019))))

(declare-fun lt!1011433 () Unit!47422)

(assert (=> d!823214 (= lt!1011433 (choose!16737 thiss!11007 rules!1047 l!4019 (h!38895 l!4019)))))

(assert (=> d!823214 (not (isEmpty!18464 rules!1047))))

(assert (=> d!823214 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!757 thiss!11007 rules!1047 l!4019 (h!38895 l!4019)) lt!1011433)))

(declare-fun bs!518818 () Bool)

(assert (= bs!518818 d!823214))

(assert (=> bs!518818 m!3266295))

(declare-fun m!3266499 () Bool)

(assert (=> bs!518818 m!3266499))

(assert (=> bs!518818 m!3266305))

(assert (=> b!2836426 d!823214))

(declare-fun d!823216 () Bool)

(declare-fun lt!1011434 () Bool)

(declare-fun e!1796069 () Bool)

(assert (=> d!823216 (= lt!1011434 e!1796069)))

(declare-fun res!1180414 () Bool)

(assert (=> d!823216 (=> (not res!1180414) (not e!1796069))))

(assert (=> d!823216 (= res!1180414 (= (list!12517 (_1!19887 (lex!2023 thiss!11007 rules!1047 (print!1742 thiss!11007 (singletonSeq!2175 (h!38895 (t!231928 l!4019))))))) (list!12517 (singletonSeq!2175 (h!38895 (t!231928 l!4019))))))))

(declare-fun e!1796070 () Bool)

(assert (=> d!823216 (= lt!1011434 e!1796070)))

(declare-fun res!1180415 () Bool)

(assert (=> d!823216 (=> (not res!1180415) (not e!1796070))))

(declare-fun lt!1011435 () tuple2!33550)

(assert (=> d!823216 (= res!1180415 (= (size!26054 (_1!19887 lt!1011435)) 1))))

(assert (=> d!823216 (= lt!1011435 (lex!2023 thiss!11007 rules!1047 (print!1742 thiss!11007 (singletonSeq!2175 (h!38895 (t!231928 l!4019))))))))

(assert (=> d!823216 (not (isEmpty!18464 rules!1047))))

(assert (=> d!823216 (= (rulesProduceIndividualToken!2143 thiss!11007 rules!1047 (h!38895 (t!231928 l!4019))) lt!1011434)))

(declare-fun b!2836572 () Bool)

(declare-fun res!1180413 () Bool)

(assert (=> b!2836572 (=> (not res!1180413) (not e!1796070))))

(assert (=> b!2836572 (= res!1180413 (= (apply!7825 (_1!19887 lt!1011435) 0) (h!38895 (t!231928 l!4019))))))

(declare-fun b!2836573 () Bool)

(assert (=> b!2836573 (= e!1796070 (isEmpty!18467 (_2!19887 lt!1011435)))))

(declare-fun b!2836574 () Bool)

(assert (=> b!2836574 (= e!1796069 (isEmpty!18467 (_2!19887 (lex!2023 thiss!11007 rules!1047 (print!1742 thiss!11007 (singletonSeq!2175 (h!38895 (t!231928 l!4019))))))))))

(assert (= (and d!823216 res!1180415) b!2836572))

(assert (= (and b!2836572 res!1180413) b!2836573))

(assert (= (and d!823216 res!1180414) b!2836574))

(assert (=> d!823216 m!3266305))

(declare-fun m!3266501 () Bool)

(assert (=> d!823216 m!3266501))

(declare-fun m!3266503 () Bool)

(assert (=> d!823216 m!3266503))

(declare-fun m!3266505 () Bool)

(assert (=> d!823216 m!3266505))

(declare-fun m!3266507 () Bool)

(assert (=> d!823216 m!3266507))

(assert (=> d!823216 m!3266501))

(declare-fun m!3266509 () Bool)

(assert (=> d!823216 m!3266509))

(declare-fun m!3266511 () Bool)

(assert (=> d!823216 m!3266511))

(assert (=> d!823216 m!3266501))

(assert (=> d!823216 m!3266503))

(declare-fun m!3266513 () Bool)

(assert (=> b!2836572 m!3266513))

(declare-fun m!3266515 () Bool)

(assert (=> b!2836573 m!3266515))

(assert (=> b!2836574 m!3266501))

(assert (=> b!2836574 m!3266501))

(assert (=> b!2836574 m!3266503))

(assert (=> b!2836574 m!3266503))

(assert (=> b!2836574 m!3266505))

(declare-fun m!3266517 () Bool)

(assert (=> b!2836574 m!3266517))

(assert (=> b!2836426 d!823216))

(declare-fun d!823218 () Bool)

(assert (=> d!823218 (= (isEmpty!18464 rules!1047) (is-Nil!33474 rules!1047))))

(assert (=> b!2836431 d!823218))

(declare-fun d!823220 () Bool)

(declare-fun lt!1011438 () Int)

(assert (=> d!823220 (>= lt!1011438 0)))

(declare-fun e!1796073 () Int)

(assert (=> d!823220 (= lt!1011438 e!1796073)))

(declare-fun c!458382 () Bool)

(assert (=> d!823220 (= c!458382 (is-Nil!33475 (t!231928 l!4019)))))

(assert (=> d!823220 (= (ListPrimitiveSize!222 (t!231928 l!4019)) lt!1011438)))

(declare-fun b!2836579 () Bool)

(assert (=> b!2836579 (= e!1796073 0)))

(declare-fun b!2836580 () Bool)

(assert (=> b!2836580 (= e!1796073 (+ 1 (ListPrimitiveSize!222 (t!231928 (t!231928 l!4019)))))))

(assert (= (and d!823220 c!458382) b!2836579))

(assert (= (and d!823220 (not c!458382)) b!2836580))

(declare-fun m!3266519 () Bool)

(assert (=> b!2836580 m!3266519))

(assert (=> b!2836425 d!823220))

(declare-fun d!823222 () Bool)

(declare-fun lt!1011439 () Int)

(assert (=> d!823222 (>= lt!1011439 0)))

(declare-fun e!1796074 () Int)

(assert (=> d!823222 (= lt!1011439 e!1796074)))

(declare-fun c!458383 () Bool)

(assert (=> d!823222 (= c!458383 (is-Nil!33475 l!4019))))

(assert (=> d!823222 (= (ListPrimitiveSize!222 l!4019) lt!1011439)))

(declare-fun b!2836581 () Bool)

(assert (=> b!2836581 (= e!1796074 0)))

(declare-fun b!2836582 () Bool)

(assert (=> b!2836582 (= e!1796074 (+ 1 (ListPrimitiveSize!222 (t!231928 l!4019))))))

(assert (= (and d!823222 c!458383) b!2836581))

(assert (= (and d!823222 (not c!458383)) b!2836582))

(assert (=> b!2836582 m!3266277))

(assert (=> b!2836425 d!823222))

(declare-fun d!823224 () Bool)

(assert (=> d!823224 (= (inv!45445 (tag!5527 (h!38894 rules!1047))) (= (mod (str.len (value!161525 (tag!5527 (h!38894 rules!1047)))) 2) 0))))

(assert (=> b!2836432 d!823224))

(declare-fun d!823226 () Bool)

(declare-fun res!1180416 () Bool)

(declare-fun e!1796075 () Bool)

(assert (=> d!823226 (=> (not res!1180416) (not e!1796075))))

(assert (=> d!823226 (= res!1180416 (semiInverseModEq!2090 (toChars!6924 (transformation!5023 (h!38894 rules!1047))) (toValue!7065 (transformation!5023 (h!38894 rules!1047)))))))

(assert (=> d!823226 (= (inv!45449 (transformation!5023 (h!38894 rules!1047))) e!1796075)))

(declare-fun b!2836583 () Bool)

(assert (=> b!2836583 (= e!1796075 (equivClasses!1989 (toChars!6924 (transformation!5023 (h!38894 rules!1047))) (toValue!7065 (transformation!5023 (h!38894 rules!1047)))))))

(assert (= (and d!823226 res!1180416) b!2836583))

(declare-fun m!3266521 () Bool)

(assert (=> d!823226 m!3266521))

(declare-fun m!3266523 () Bool)

(assert (=> b!2836583 m!3266523))

(assert (=> b!2836432 d!823226))

(declare-fun d!823228 () Bool)

(declare-fun res!1180421 () Bool)

(declare-fun e!1796080 () Bool)

(assert (=> d!823228 (=> (not res!1180421) (not e!1796080))))

(declare-fun rulesValid!1860 (LexerInterface!4613 List!33598) Bool)

(assert (=> d!823228 (= res!1180421 (rulesValid!1860 thiss!11007 rules!1047))))

(assert (=> d!823228 (= (rulesInvariant!4029 thiss!11007 rules!1047) e!1796080)))

(declare-fun b!2836586 () Bool)

(declare-datatypes ((List!33604 0))(
  ( (Nil!33480) (Cons!33480 (h!38900 String!36789) (t!231969 List!33604)) )
))
(declare-fun noDuplicateTag!1856 (LexerInterface!4613 List!33598 List!33604) Bool)

(assert (=> b!2836586 (= e!1796080 (noDuplicateTag!1856 thiss!11007 rules!1047 Nil!33480))))

(assert (= (and d!823228 res!1180421) b!2836586))

(declare-fun m!3266525 () Bool)

(assert (=> d!823228 m!3266525))

(declare-fun m!3266527 () Bool)

(assert (=> b!2836586 m!3266527))

(assert (=> b!2836421 d!823228))

(declare-fun b!2836591 () Bool)

(declare-fun e!1796083 () Bool)

(declare-fun tp_is_empty!14593 () Bool)

(declare-fun tp!907465 () Bool)

(assert (=> b!2836591 (= e!1796083 (and tp_is_empty!14593 tp!907465))))

(assert (=> b!2836433 (= tp!907431 e!1796083)))

(assert (= (and b!2836433 (is-Cons!33473 (originalCharacters!5755 (h!38895 l!4019)))) b!2836591))

(declare-fun b!2836616 () Bool)

(declare-fun b_free!81765 () Bool)

(declare-fun b_next!82469 () Bool)

(assert (=> b!2836616 (= b_free!81765 (not b_next!82469))))

(declare-fun tp!907480 () Bool)

(declare-fun b_and!207627 () Bool)

(assert (=> b!2836616 (= tp!907480 b_and!207627)))

(declare-fun b_free!81767 () Bool)

(declare-fun b_next!82471 () Bool)

(assert (=> b!2836616 (= b_free!81767 (not b_next!82471))))

(declare-fun t!231956 () Bool)

(declare-fun tb!154493 () Bool)

(assert (=> (and b!2836616 (= (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019)))))) t!231956) tb!154493))

(declare-fun result!192664 () Bool)

(assert (= result!192664 result!192650))

(assert (=> d!823196 t!231956))

(declare-fun t!231958 () Bool)

(declare-fun tb!154495 () Bool)

(assert (=> (and b!2836616 (= (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019))))) t!231958) tb!154495))

(declare-fun result!192666 () Bool)

(assert (= result!192666 result!192656))

(assert (=> b!2836548 t!231958))

(declare-fun tp!907478 () Bool)

(declare-fun b_and!207629 () Bool)

(assert (=> b!2836616 (= tp!907478 (and (=> t!231956 result!192664) (=> t!231958 result!192666) b_and!207629))))

(declare-fun e!1796106 () Bool)

(assert (=> b!2836616 (= e!1796106 (and tp!907480 tp!907478))))

(declare-fun e!1796105 () Bool)

(declare-fun b!2836614 () Bool)

(declare-fun e!1796108 () Bool)

(declare-fun tp!907479 () Bool)

(assert (=> b!2836614 (= e!1796105 (and (inv!21 (value!161526 (h!38895 (t!231928 l!4019)))) e!1796108 tp!907479))))

(declare-fun e!1796107 () Bool)

(assert (=> b!2836430 (= tp!907424 e!1796107)))

(declare-fun b!2836613 () Bool)

(declare-fun tp!907477 () Bool)

(assert (=> b!2836613 (= e!1796107 (and (inv!45448 (h!38895 (t!231928 l!4019))) e!1796105 tp!907477))))

(declare-fun tp!907476 () Bool)

(declare-fun b!2836615 () Bool)

(assert (=> b!2836615 (= e!1796108 (and tp!907476 (inv!45445 (tag!5527 (rule!7451 (h!38895 (t!231928 l!4019))))) (inv!45449 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))) e!1796106))))

(assert (= b!2836615 b!2836616))

(assert (= b!2836614 b!2836615))

(assert (= b!2836613 b!2836614))

(assert (= (and b!2836430 (is-Cons!33475 (t!231928 l!4019))) b!2836613))

(declare-fun m!3266529 () Bool)

(assert (=> b!2836614 m!3266529))

(declare-fun m!3266531 () Bool)

(assert (=> b!2836613 m!3266531))

(declare-fun m!3266533 () Bool)

(assert (=> b!2836615 m!3266533))

(declare-fun m!3266535 () Bool)

(assert (=> b!2836615 m!3266535))

(declare-fun b!2836635 () Bool)

(declare-fun e!1796114 () Bool)

(declare-fun tp!907492 () Bool)

(declare-fun tp!907491 () Bool)

(assert (=> b!2836635 (= e!1796114 (and tp!907492 tp!907491))))

(declare-fun b!2836632 () Bool)

(assert (=> b!2836632 (= e!1796114 tp_is_empty!14593)))

(assert (=> b!2836435 (= tp!907428 e!1796114)))

(declare-fun b!2836634 () Bool)

(declare-fun tp!907494 () Bool)

(assert (=> b!2836634 (= e!1796114 tp!907494)))

(declare-fun b!2836633 () Bool)

(declare-fun tp!907493 () Bool)

(declare-fun tp!907495 () Bool)

(assert (=> b!2836633 (= e!1796114 (and tp!907493 tp!907495))))

(assert (= (and b!2836435 (is-ElementMatch!8414 (regex!5023 (rule!7451 (h!38895 l!4019))))) b!2836632))

(assert (= (and b!2836435 (is-Concat!13668 (regex!5023 (rule!7451 (h!38895 l!4019))))) b!2836633))

(assert (= (and b!2836435 (is-Star!8414 (regex!5023 (rule!7451 (h!38895 l!4019))))) b!2836634))

(assert (= (and b!2836435 (is-Union!8414 (regex!5023 (rule!7451 (h!38895 l!4019))))) b!2836635))

(declare-fun b!2836646 () Bool)

(declare-fun b_free!81769 () Bool)

(declare-fun b_next!82473 () Bool)

(assert (=> b!2836646 (= b_free!81769 (not b_next!82473))))

(declare-fun tp!907504 () Bool)

(declare-fun b_and!207631 () Bool)

(assert (=> b!2836646 (= tp!907504 b_and!207631)))

(declare-fun b_free!81771 () Bool)

(declare-fun b_next!82475 () Bool)

(assert (=> b!2836646 (= b_free!81771 (not b_next!82475))))

(declare-fun tb!154497 () Bool)

(declare-fun t!231960 () Bool)

(assert (=> (and b!2836646 (= (toChars!6924 (transformation!5023 (h!38894 (t!231927 rules!1047)))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019)))))) t!231960) tb!154497))

(declare-fun result!192672 () Bool)

(assert (= result!192672 result!192650))

(assert (=> d!823196 t!231960))

(declare-fun t!231962 () Bool)

(declare-fun tb!154499 () Bool)

(assert (=> (and b!2836646 (= (toChars!6924 (transformation!5023 (h!38894 (t!231927 rules!1047)))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019))))) t!231962) tb!154499))

(declare-fun result!192674 () Bool)

(assert (= result!192674 result!192656))

(assert (=> b!2836548 t!231962))

(declare-fun b_and!207633 () Bool)

(declare-fun tp!907506 () Bool)

(assert (=> b!2836646 (= tp!907506 (and (=> t!231960 result!192672) (=> t!231962 result!192674) b_and!207633))))

(declare-fun e!1796123 () Bool)

(assert (=> b!2836646 (= e!1796123 (and tp!907504 tp!907506))))

(declare-fun tp!907507 () Bool)

(declare-fun b!2836645 () Bool)

(declare-fun e!1796124 () Bool)

(assert (=> b!2836645 (= e!1796124 (and tp!907507 (inv!45445 (tag!5527 (h!38894 (t!231927 rules!1047)))) (inv!45449 (transformation!5023 (h!38894 (t!231927 rules!1047)))) e!1796123))))

(declare-fun b!2836644 () Bool)

(declare-fun e!1796126 () Bool)

(declare-fun tp!907505 () Bool)

(assert (=> b!2836644 (= e!1796126 (and e!1796124 tp!907505))))

(assert (=> b!2836422 (= tp!907426 e!1796126)))

(assert (= b!2836645 b!2836646))

(assert (= b!2836644 b!2836645))

(assert (= (and b!2836422 (is-Cons!33474 (t!231927 rules!1047))) b!2836644))

(declare-fun m!3266547 () Bool)

(assert (=> b!2836645 m!3266547))

(declare-fun m!3266549 () Bool)

(assert (=> b!2836645 m!3266549))

(declare-fun b!2836650 () Bool)

(declare-fun e!1796127 () Bool)

(declare-fun tp!907509 () Bool)

(declare-fun tp!907508 () Bool)

(assert (=> b!2836650 (= e!1796127 (and tp!907509 tp!907508))))

(declare-fun b!2836647 () Bool)

(assert (=> b!2836647 (= e!1796127 tp_is_empty!14593)))

(assert (=> b!2836432 (= tp!907429 e!1796127)))

(declare-fun b!2836649 () Bool)

(declare-fun tp!907511 () Bool)

(assert (=> b!2836649 (= e!1796127 tp!907511)))

(declare-fun b!2836648 () Bool)

(declare-fun tp!907510 () Bool)

(declare-fun tp!907512 () Bool)

(assert (=> b!2836648 (= e!1796127 (and tp!907510 tp!907512))))

(assert (= (and b!2836432 (is-ElementMatch!8414 (regex!5023 (h!38894 rules!1047)))) b!2836647))

(assert (= (and b!2836432 (is-Concat!13668 (regex!5023 (h!38894 rules!1047)))) b!2836648))

(assert (= (and b!2836432 (is-Star!8414 (regex!5023 (h!38894 rules!1047)))) b!2836649))

(assert (= (and b!2836432 (is-Union!8414 (regex!5023 (h!38894 rules!1047)))) b!2836650))

(declare-fun b_lambda!85267 () Bool)

(assert (= b_lambda!85263 (or (and b!2836427 b_free!81751 (= (toChars!6924 (transformation!5023 (h!38894 rules!1047))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))))) (and b!2836424 b_free!81755 (= (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))))) (and b!2836616 b_free!81767) (and b!2836646 b_free!81771 (= (toChars!6924 (transformation!5023 (h!38894 (t!231927 rules!1047)))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))))) b_lambda!85267)))

(declare-fun b_lambda!85269 () Bool)

(assert (= b_lambda!85265 (or (and b!2836427 b_free!81751 (= (toChars!6924 (transformation!5023 (h!38894 rules!1047))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))))) (and b!2836424 b_free!81755) (and b!2836616 b_free!81767 (= (toChars!6924 (transformation!5023 (rule!7451 (h!38895 (t!231928 l!4019))))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))))) (and b!2836646 b_free!81771 (= (toChars!6924 (transformation!5023 (h!38894 (t!231927 rules!1047)))) (toChars!6924 (transformation!5023 (rule!7451 (h!38895 l!4019)))))) b_lambda!85269)))

(push 1)

(assert b_and!207607)

(assert b_and!207623)

(assert b_and!207633)

(assert (not b!2836586))

(assert (not b!2836548))

(assert (not b!2836634))

(assert (not b_next!82469))

(assert (not b!2836569))

(assert (not b!2836580))

(assert (not d!823184))

(assert (not b!2836541))

(assert (not b!2836553))

(assert (not b_next!82455))

(assert (not d!823216))

(assert (not b!2836550))

(assert tp_is_empty!14593)

(assert (not b!2836560))

(assert (not d!823228))

(assert (not b!2836614))

(assert (not b_next!82471))

(assert b_and!207631)

(assert (not b_next!82473))

(assert (not b!2836583))

(assert (not d!823206))

(assert (not tb!154485))

(assert (not b!2836635))

(assert (not b_lambda!85267))

(assert (not d!823162))

(assert (not d!823226))

(assert (not d!823194))

(assert (not b!2836528))

(assert (not b!2836615))

(assert b_and!207603)

(assert (not b!2836542))

(assert (not b!2836648))

(assert (not b!2836549))

(assert (not b!2836650))

(assert b_and!207625)

(assert (not b!2836571))

(assert (not b!2836509))

(assert (not d!823212))

(assert (not b!2836570))

(assert (not b!2836574))

(assert (not b!2836573))

(assert (not b!2836649))

(assert (not d!823204))

(assert (not b!2836644))

(assert b_and!207629)

(assert (not d!823200))

(assert (not d!823210))

(assert (not b!2836558))

(assert (not b_lambda!85269))

(assert b_and!207627)

(assert (not b!2836498))

(assert (not d!823208))

(assert (not b!2836591))

(assert (not b_next!82457))

(assert (not b_next!82475))

(assert (not b!2836539))

(assert (not d!823214))

(assert (not b!2836572))

(assert (not b!2836613))

(assert (not b!2836582))

(assert (not tb!154489))

(assert (not b_next!82453))

(assert (not b!2836633))

(assert (not b_next!82459))

(assert (not b!2836559))

(assert (not d!823196))

(assert (not b!2836645))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82455))

(assert b_and!207607)

(assert b_and!207623)

(assert b_and!207633)

(assert b_and!207603)

(assert (not b_next!82469))

(assert b_and!207625)

(assert b_and!207629)

(assert b_and!207627)

(assert (not b_next!82471))

(assert (not b_next!82473))

(assert b_and!207631)

(assert (not b_next!82457))

(assert (not b_next!82475))

(assert (not b_next!82453))

(assert (not b_next!82459))

(check-sat)

(pop 1)

