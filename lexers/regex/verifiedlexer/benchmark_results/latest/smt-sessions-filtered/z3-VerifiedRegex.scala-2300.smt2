; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112642 () Bool)

(assert start!112642)

(declare-fun b!1287143 () Bool)

(declare-fun b_free!30299 () Bool)

(declare-fun b_next!31003 () Bool)

(assert (=> b!1287143 (= b_free!30299 (not b_next!31003))))

(declare-fun tp!374956 () Bool)

(declare-fun b_and!85575 () Bool)

(assert (=> b!1287143 (= tp!374956 b_and!85575)))

(declare-fun b_free!30301 () Bool)

(declare-fun b_next!31005 () Bool)

(assert (=> b!1287143 (= b_free!30301 (not b_next!31005))))

(declare-fun tp!374955 () Bool)

(declare-fun b_and!85577 () Bool)

(assert (=> b!1287143 (= tp!374955 b_and!85577)))

(declare-fun b!1287144 () Bool)

(declare-fun b_free!30303 () Bool)

(declare-fun b_next!31007 () Bool)

(assert (=> b!1287144 (= b_free!30303 (not b_next!31007))))

(declare-fun tp!374958 () Bool)

(declare-fun b_and!85579 () Bool)

(assert (=> b!1287144 (= tp!374958 b_and!85579)))

(declare-fun b_free!30305 () Bool)

(declare-fun b_next!31009 () Bool)

(assert (=> b!1287144 (= b_free!30305 (not b_next!31009))))

(declare-fun tp!374950 () Bool)

(declare-fun b_and!85581 () Bool)

(assert (=> b!1287144 (= tp!374950 b_and!85581)))

(declare-fun b!1287137 () Bool)

(declare-fun b_free!30307 () Bool)

(declare-fun b_next!31011 () Bool)

(assert (=> b!1287137 (= b_free!30307 (not b_next!31011))))

(declare-fun tp!374951 () Bool)

(declare-fun b_and!85583 () Bool)

(assert (=> b!1287137 (= tp!374951 b_and!85583)))

(declare-fun b_free!30309 () Bool)

(declare-fun b_next!31013 () Bool)

(assert (=> b!1287137 (= b_free!30309 (not b_next!31013))))

(declare-fun tp!374948 () Bool)

(declare-fun b_and!85585 () Bool)

(assert (=> b!1287137 (= tp!374948 b_and!85585)))

(declare-fun b!1287138 () Bool)

(declare-fun res!577090 () Bool)

(declare-fun e!825481 () Bool)

(assert (=> b!1287138 (=> (not res!577090) (not e!825481))))

(declare-datatypes ((List!12897 0))(
  ( (Nil!12831) (Cons!12831 (h!18232 (_ BitVec 16)) (t!116896 List!12897)) )
))
(declare-datatypes ((TokenValue!2299 0))(
  ( (FloatLiteralValue!4598 (text!16538 List!12897)) (TokenValueExt!2298 (__x!8427 Int)) (Broken!11495 (value!72563 List!12897)) (Object!2364) (End!2299) (Def!2299) (Underscore!2299) (Match!2299) (Else!2299) (Error!2299) (Case!2299) (If!2299) (Extends!2299) (Abstract!2299) (Class!2299) (Val!2299) (DelimiterValue!4598 (del!2359 List!12897)) (KeywordValue!2305 (value!72564 List!12897)) (CommentValue!4598 (value!72565 List!12897)) (WhitespaceValue!4598 (value!72566 List!12897)) (IndentationValue!2299 (value!72567 List!12897)) (String!15730) (Int32!2299) (Broken!11496 (value!72568 List!12897)) (Boolean!2300) (Unit!19011) (OperatorValue!2302 (op!2359 List!12897)) (IdentifierValue!4598 (value!72569 List!12897)) (IdentifierValue!4599 (value!72570 List!12897)) (WhitespaceValue!4599 (value!72571 List!12897)) (True!4598) (False!4598) (Broken!11497 (value!72572 List!12897)) (Broken!11498 (value!72573 List!12897)) (True!4599) (RightBrace!2299) (RightBracket!2299) (Colon!2299) (Null!2299) (Comma!2299) (LeftBracket!2299) (False!4599) (LeftBrace!2299) (ImaginaryLiteralValue!2299 (text!16539 List!12897)) (StringLiteralValue!6897 (value!72574 List!12897)) (EOFValue!2299 (value!72575 List!12897)) (IdentValue!2299 (value!72576 List!12897)) (DelimiterValue!4599 (value!72577 List!12897)) (DedentValue!2299 (value!72578 List!12897)) (NewLineValue!2299 (value!72579 List!12897)) (IntegerValue!6897 (value!72580 (_ BitVec 32)) (text!16540 List!12897)) (IntegerValue!6898 (value!72581 Int) (text!16541 List!12897)) (Times!2299) (Or!2299) (Equal!2299) (Minus!2299) (Broken!11499 (value!72582 List!12897)) (And!2299) (Div!2299) (LessEqual!2299) (Mod!2299) (Concat!5822) (Not!2299) (Plus!2299) (SpaceValue!2299 (value!72583 List!12897)) (IntegerValue!6899 (value!72584 Int) (text!16542 List!12897)) (StringLiteralValue!6898 (text!16543 List!12897)) (FloatLiteralValue!4599 (text!16544 List!12897)) (BytesLiteralValue!2299 (value!72585 List!12897)) (CommentValue!4599 (value!72586 List!12897)) (StringLiteralValue!6899 (value!72587 List!12897)) (ErrorTokenValue!2299 (msg!2360 List!12897)) )
))
(declare-datatypes ((C!7336 0))(
  ( (C!7337 (val!4228 Int)) )
))
(declare-datatypes ((List!12898 0))(
  ( (Nil!12832) (Cons!12832 (h!18233 C!7336) (t!116897 List!12898)) )
))
(declare-datatypes ((IArray!8439 0))(
  ( (IArray!8440 (innerList!4277 List!12898)) )
))
(declare-datatypes ((Conc!4217 0))(
  ( (Node!4217 (left!11047 Conc!4217) (right!11377 Conc!4217) (csize!8664 Int) (cheight!4428 Int)) (Leaf!6518 (xs!6928 IArray!8439) (csize!8665 Int)) (Empty!4217) )
))
(declare-datatypes ((BalanceConc!8374 0))(
  ( (BalanceConc!8375 (c!211853 Conc!4217)) )
))
(declare-datatypes ((Regex!3523 0))(
  ( (ElementMatch!3523 (c!211854 C!7336)) (Concat!5823 (regOne!7558 Regex!3523) (regTwo!7558 Regex!3523)) (EmptyExpr!3523) (Star!3523 (reg!3852 Regex!3523)) (EmptyLang!3523) (Union!3523 (regOne!7559 Regex!3523) (regTwo!7559 Regex!3523)) )
))
(declare-datatypes ((String!15731 0))(
  ( (String!15732 (value!72588 String)) )
))
(declare-datatypes ((TokenValueInjection!4258 0))(
  ( (TokenValueInjection!4259 (toValue!3396 Int) (toChars!3255 Int)) )
))
(declare-datatypes ((Rule!4218 0))(
  ( (Rule!4219 (regex!2209 Regex!3523) (tag!2471 String!15731) (isSeparator!2209 Bool) (transformation!2209 TokenValueInjection!4258)) )
))
(declare-datatypes ((List!12899 0))(
  ( (Nil!12833) (Cons!12833 (h!18234 Rule!4218) (t!116898 List!12899)) )
))
(declare-fun rules!2550 () List!12899)

(declare-fun isEmpty!7612 (List!12899) Bool)

(assert (=> b!1287138 (= res!577090 (not (isEmpty!7612 rules!2550)))))

(declare-fun b!1287139 () Bool)

(declare-fun res!577086 () Bool)

(assert (=> b!1287139 (=> (not res!577086) (not e!825481))))

(declare-datatypes ((Token!4080 0))(
  ( (Token!4081 (value!72589 TokenValue!2299) (rule!3948 Rule!4218) (size!10457 Int) (originalCharacters!3071 List!12898)) )
))
(declare-fun t1!34 () Token!4080)

(declare-datatypes ((LexerInterface!1904 0))(
  ( (LexerInterfaceExt!1901 (__x!8428 Int)) (Lexer!1902) )
))
(declare-fun thiss!19762 () LexerInterface!1904)

(declare-fun rulesProduceIndividualToken!873 (LexerInterface!1904 List!12899 Token!4080) Bool)

(assert (=> b!1287139 (= res!577086 (rulesProduceIndividualToken!873 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1287140 () Bool)

(declare-fun e!825487 () Bool)

(declare-fun e!825490 () Bool)

(declare-fun tp!374947 () Bool)

(assert (=> b!1287140 (= e!825487 (and e!825490 tp!374947))))

(declare-fun e!825494 () Bool)

(declare-fun tp!374957 () Bool)

(declare-fun e!825479 () Bool)

(declare-fun b!1287141 () Bool)

(declare-fun t2!34 () Token!4080)

(declare-fun inv!21 (TokenValue!2299) Bool)

(assert (=> b!1287141 (= e!825479 (and (inv!21 (value!72589 t2!34)) e!825494 tp!374957))))

(declare-fun b!1287142 () Bool)

(declare-fun res!577095 () Bool)

(declare-fun e!825489 () Bool)

(assert (=> b!1287142 (=> (not res!577095) (not e!825489))))

(declare-fun lt!424094 () BalanceConc!8374)

(declare-fun prefixMatch!36 (Regex!3523 List!12898) Bool)

(declare-fun rulesRegex!94 (LexerInterface!1904 List!12899) Regex!3523)

(declare-fun ++!3241 (List!12898 List!12898) List!12898)

(declare-fun list!4773 (BalanceConc!8374) List!12898)

(declare-fun charsOf!1181 (Token!4080) BalanceConc!8374)

(declare-fun apply!2759 (BalanceConc!8374 Int) C!7336)

(assert (=> b!1287142 (= res!577095 (prefixMatch!36 (rulesRegex!94 thiss!19762 rules!2550) (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))))

(declare-fun e!825493 () Bool)

(assert (=> b!1287143 (= e!825493 (and tp!374956 tp!374955))))

(declare-fun e!825482 () Bool)

(assert (=> b!1287144 (= e!825482 (and tp!374958 tp!374950))))

(declare-fun b!1287145 () Bool)

(declare-fun res!577092 () Bool)

(assert (=> b!1287145 (=> (not res!577092) (not e!825489))))

(declare-fun sepAndNonSepRulesDisjointChars!582 (List!12899 List!12899) Bool)

(assert (=> b!1287145 (= res!577092 (sepAndNonSepRulesDisjointChars!582 rules!2550 rules!2550))))

(declare-fun b!1287146 () Bool)

(declare-fun tp!374954 () Bool)

(declare-fun e!825491 () Bool)

(declare-fun inv!17242 (String!15731) Bool)

(declare-fun inv!17245 (TokenValueInjection!4258) Bool)

(assert (=> b!1287146 (= e!825491 (and tp!374954 (inv!17242 (tag!2471 (rule!3948 t1!34))) (inv!17245 (transformation!2209 (rule!3948 t1!34))) e!825493))))

(declare-fun tp!374952 () Bool)

(declare-fun e!825488 () Bool)

(declare-fun b!1287147 () Bool)

(assert (=> b!1287147 (= e!825490 (and tp!374952 (inv!17242 (tag!2471 (h!18234 rules!2550))) (inv!17245 (transformation!2209 (h!18234 rules!2550))) e!825488))))

(declare-fun b!1287148 () Bool)

(declare-fun res!577094 () Bool)

(assert (=> b!1287148 (=> (not res!577094) (not e!825481))))

(assert (=> b!1287148 (= res!577094 (rulesProduceIndividualToken!873 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1287149 () Bool)

(declare-fun res!577093 () Bool)

(assert (=> b!1287149 (=> (not res!577093) (not e!825481))))

(declare-fun rulesInvariant!1774 (LexerInterface!1904 List!12899) Bool)

(assert (=> b!1287149 (= res!577093 (rulesInvariant!1774 thiss!19762 rules!2550))))

(declare-fun res!577087 () Bool)

(assert (=> start!112642 (=> (not res!577087) (not e!825481))))

(get-info :version)

(assert (=> start!112642 (= res!577087 ((_ is Lexer!1902) thiss!19762))))

(assert (=> start!112642 e!825481))

(assert (=> start!112642 true))

(assert (=> start!112642 e!825487))

(declare-fun e!825492 () Bool)

(declare-fun inv!17246 (Token!4080) Bool)

(assert (=> start!112642 (and (inv!17246 t1!34) e!825492)))

(assert (=> start!112642 (and (inv!17246 t2!34) e!825479)))

(assert (=> b!1287137 (= e!825488 (and tp!374951 tp!374948))))

(declare-fun b!1287150 () Bool)

(declare-fun tp!374953 () Bool)

(assert (=> b!1287150 (= e!825494 (and tp!374953 (inv!17242 (tag!2471 (rule!3948 t2!34))) (inv!17245 (transformation!2209 (rule!3948 t2!34))) e!825482))))

(declare-fun b!1287151 () Bool)

(declare-fun res!577088 () Bool)

(assert (=> b!1287151 (=> (not res!577088) (not e!825481))))

(assert (=> b!1287151 (= res!577088 (not (= (isSeparator!2209 (rule!3948 t1!34)) (isSeparator!2209 (rule!3948 t2!34)))))))

(declare-fun b!1287152 () Bool)

(declare-fun res!577089 () Bool)

(assert (=> b!1287152 (=> (not res!577089) (not e!825489))))

(declare-fun separableTokensPredicate!187 (LexerInterface!1904 Token!4080 Token!4080 List!12899) Bool)

(assert (=> b!1287152 (= res!577089 (not (separableTokensPredicate!187 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1287153 () Bool)

(declare-fun tp!374949 () Bool)

(assert (=> b!1287153 (= e!825492 (and (inv!21 (value!72589 t1!34)) e!825491 tp!374949))))

(declare-fun b!1287154 () Bool)

(assert (=> b!1287154 (= e!825481 e!825489)))

(declare-fun res!577091 () Bool)

(assert (=> b!1287154 (=> (not res!577091) (not e!825489))))

(declare-fun size!10458 (BalanceConc!8374) Int)

(assert (=> b!1287154 (= res!577091 (> (size!10458 lt!424094) 0))))

(assert (=> b!1287154 (= lt!424094 (charsOf!1181 t2!34))))

(declare-fun b!1287155 () Bool)

(declare-fun rulesValidInductive!698 (LexerInterface!1904 List!12899) Bool)

(assert (=> b!1287155 (= e!825489 (not (rulesValidInductive!698 thiss!19762 rules!2550)))))

(assert (= (and start!112642 res!577087) b!1287138))

(assert (= (and b!1287138 res!577090) b!1287149))

(assert (= (and b!1287149 res!577093) b!1287139))

(assert (= (and b!1287139 res!577086) b!1287148))

(assert (= (and b!1287148 res!577094) b!1287151))

(assert (= (and b!1287151 res!577088) b!1287154))

(assert (= (and b!1287154 res!577091) b!1287145))

(assert (= (and b!1287145 res!577092) b!1287152))

(assert (= (and b!1287152 res!577089) b!1287142))

(assert (= (and b!1287142 res!577095) b!1287155))

(assert (= b!1287147 b!1287137))

(assert (= b!1287140 b!1287147))

(assert (= (and start!112642 ((_ is Cons!12833) rules!2550)) b!1287140))

(assert (= b!1287146 b!1287143))

(assert (= b!1287153 b!1287146))

(assert (= start!112642 b!1287153))

(assert (= b!1287150 b!1287144))

(assert (= b!1287141 b!1287150))

(assert (= start!112642 b!1287141))

(declare-fun m!1437513 () Bool)

(assert (=> b!1287139 m!1437513))

(declare-fun m!1437515 () Bool)

(assert (=> b!1287155 m!1437515))

(declare-fun m!1437517 () Bool)

(assert (=> b!1287148 m!1437517))

(declare-fun m!1437519 () Bool)

(assert (=> b!1287152 m!1437519))

(declare-fun m!1437521 () Bool)

(assert (=> b!1287154 m!1437521))

(declare-fun m!1437523 () Bool)

(assert (=> b!1287154 m!1437523))

(declare-fun m!1437525 () Bool)

(assert (=> b!1287153 m!1437525))

(declare-fun m!1437527 () Bool)

(assert (=> b!1287146 m!1437527))

(declare-fun m!1437529 () Bool)

(assert (=> b!1287146 m!1437529))

(declare-fun m!1437531 () Bool)

(assert (=> b!1287147 m!1437531))

(declare-fun m!1437533 () Bool)

(assert (=> b!1287147 m!1437533))

(declare-fun m!1437535 () Bool)

(assert (=> start!112642 m!1437535))

(declare-fun m!1437537 () Bool)

(assert (=> start!112642 m!1437537))

(declare-fun m!1437539 () Bool)

(assert (=> b!1287149 m!1437539))

(declare-fun m!1437541 () Bool)

(assert (=> b!1287150 m!1437541))

(declare-fun m!1437543 () Bool)

(assert (=> b!1287150 m!1437543))

(declare-fun m!1437545 () Bool)

(assert (=> b!1287138 m!1437545))

(declare-fun m!1437547 () Bool)

(assert (=> b!1287145 m!1437547))

(declare-fun m!1437549 () Bool)

(assert (=> b!1287141 m!1437549))

(declare-fun m!1437551 () Bool)

(assert (=> b!1287142 m!1437551))

(assert (=> b!1287142 m!1437551))

(declare-fun m!1437553 () Bool)

(assert (=> b!1287142 m!1437553))

(declare-fun m!1437555 () Bool)

(assert (=> b!1287142 m!1437555))

(declare-fun m!1437557 () Bool)

(assert (=> b!1287142 m!1437557))

(assert (=> b!1287142 m!1437553))

(declare-fun m!1437559 () Bool)

(assert (=> b!1287142 m!1437559))

(assert (=> b!1287142 m!1437557))

(assert (=> b!1287142 m!1437559))

(declare-fun m!1437561 () Bool)

(assert (=> b!1287142 m!1437561))

(check-sat (not b_next!31003) (not b_next!31009) (not b!1287142) b_and!85581 (not b!1287149) b_and!85579 (not b!1287150) (not b!1287155) (not b!1287141) (not b!1287139) (not b_next!31013) (not b_next!31005) (not b!1287152) (not b!1287153) (not b!1287147) b_and!85583 (not b!1287145) (not b!1287154) b_and!85585 (not start!112642) (not b_next!31007) (not b!1287148) b_and!85577 (not b_next!31011) (not b!1287140) (not b!1287146) b_and!85575 (not b!1287138))
(check-sat (not b_next!31013) (not b_next!31005) (not b_next!31003) (not b_next!31009) b_and!85583 b_and!85581 b_and!85579 b_and!85585 b_and!85575 (not b_next!31007) b_and!85577 (not b_next!31011))
(get-model)

(declare-fun d!362581 () Bool)

(declare-fun res!577108 () Bool)

(declare-fun e!825500 () Bool)

(assert (=> d!362581 (=> (not res!577108) (not e!825500))))

(declare-fun isEmpty!7615 (List!12898) Bool)

(assert (=> d!362581 (= res!577108 (not (isEmpty!7615 (originalCharacters!3071 t1!34))))))

(assert (=> d!362581 (= (inv!17246 t1!34) e!825500)))

(declare-fun b!1287165 () Bool)

(declare-fun res!577109 () Bool)

(assert (=> b!1287165 (=> (not res!577109) (not e!825500))))

(declare-fun dynLambda!5592 (Int TokenValue!2299) BalanceConc!8374)

(assert (=> b!1287165 (= res!577109 (= (originalCharacters!3071 t1!34) (list!4773 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))))))

(declare-fun b!1287166 () Bool)

(declare-fun size!10462 (List!12898) Int)

(assert (=> b!1287166 (= e!825500 (= (size!10457 t1!34) (size!10462 (originalCharacters!3071 t1!34))))))

(assert (= (and d!362581 res!577108) b!1287165))

(assert (= (and b!1287165 res!577109) b!1287166))

(declare-fun b_lambda!36689 () Bool)

(assert (=> (not b_lambda!36689) (not b!1287165)))

(declare-fun t!116906 () Bool)

(declare-fun tb!69175 () Bool)

(assert (=> (and b!1287143 (= (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toChars!3255 (transformation!2209 (rule!3948 t1!34)))) t!116906) tb!69175))

(declare-fun b!1287176 () Bool)

(declare-fun e!825506 () Bool)

(declare-fun tp!374964 () Bool)

(declare-fun inv!17249 (Conc!4217) Bool)

(assert (=> b!1287176 (= e!825506 (and (inv!17249 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))) tp!374964))))

(declare-fun result!83782 () Bool)

(declare-fun inv!17250 (BalanceConc!8374) Bool)

(assert (=> tb!69175 (= result!83782 (and (inv!17250 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))) e!825506))))

(assert (= tb!69175 b!1287176))

(declare-fun m!1437589 () Bool)

(assert (=> b!1287176 m!1437589))

(declare-fun m!1437591 () Bool)

(assert (=> tb!69175 m!1437591))

(assert (=> b!1287165 t!116906))

(declare-fun b_and!85593 () Bool)

(assert (= b_and!85577 (and (=> t!116906 result!83782) b_and!85593)))

(declare-fun t!116908 () Bool)

(declare-fun tb!69177 () Bool)

(assert (=> (and b!1287144 (= (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toChars!3255 (transformation!2209 (rule!3948 t1!34)))) t!116908) tb!69177))

(declare-fun result!83786 () Bool)

(assert (= result!83786 result!83782))

(assert (=> b!1287165 t!116908))

(declare-fun b_and!85595 () Bool)

(assert (= b_and!85581 (and (=> t!116908 result!83786) b_and!85595)))

(declare-fun t!116910 () Bool)

(declare-fun tb!69179 () Bool)

(assert (=> (and b!1287137 (= (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toChars!3255 (transformation!2209 (rule!3948 t1!34)))) t!116910) tb!69179))

(declare-fun result!83788 () Bool)

(assert (= result!83788 result!83782))

(assert (=> b!1287165 t!116910))

(declare-fun b_and!85597 () Bool)

(assert (= b_and!85585 (and (=> t!116910 result!83788) b_and!85597)))

(declare-fun m!1437593 () Bool)

(assert (=> d!362581 m!1437593))

(declare-fun m!1437595 () Bool)

(assert (=> b!1287165 m!1437595))

(assert (=> b!1287165 m!1437595))

(declare-fun m!1437597 () Bool)

(assert (=> b!1287165 m!1437597))

(declare-fun m!1437599 () Bool)

(assert (=> b!1287166 m!1437599))

(assert (=> start!112642 d!362581))

(declare-fun d!362593 () Bool)

(declare-fun res!577115 () Bool)

(declare-fun e!825513 () Bool)

(assert (=> d!362593 (=> (not res!577115) (not e!825513))))

(assert (=> d!362593 (= res!577115 (not (isEmpty!7615 (originalCharacters!3071 t2!34))))))

(assert (=> d!362593 (= (inv!17246 t2!34) e!825513)))

(declare-fun b!1287185 () Bool)

(declare-fun res!577116 () Bool)

(assert (=> b!1287185 (=> (not res!577116) (not e!825513))))

(assert (=> b!1287185 (= res!577116 (= (originalCharacters!3071 t2!34) (list!4773 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))))))

(declare-fun b!1287186 () Bool)

(assert (=> b!1287186 (= e!825513 (= (size!10457 t2!34) (size!10462 (originalCharacters!3071 t2!34))))))

(assert (= (and d!362593 res!577115) b!1287185))

(assert (= (and b!1287185 res!577116) b!1287186))

(declare-fun b_lambda!36691 () Bool)

(assert (=> (not b_lambda!36691) (not b!1287185)))

(declare-fun t!116912 () Bool)

(declare-fun tb!69181 () Bool)

(assert (=> (and b!1287143 (= (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toChars!3255 (transformation!2209 (rule!3948 t2!34)))) t!116912) tb!69181))

(declare-fun b!1287198 () Bool)

(declare-fun e!825521 () Bool)

(declare-fun tp!374965 () Bool)

(assert (=> b!1287198 (= e!825521 (and (inv!17249 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))) tp!374965))))

(declare-fun result!83790 () Bool)

(assert (=> tb!69181 (= result!83790 (and (inv!17250 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))) e!825521))))

(assert (= tb!69181 b!1287198))

(declare-fun m!1437617 () Bool)

(assert (=> b!1287198 m!1437617))

(declare-fun m!1437619 () Bool)

(assert (=> tb!69181 m!1437619))

(assert (=> b!1287185 t!116912))

(declare-fun b_and!85599 () Bool)

(assert (= b_and!85593 (and (=> t!116912 result!83790) b_and!85599)))

(declare-fun t!116914 () Bool)

(declare-fun tb!69183 () Bool)

(assert (=> (and b!1287144 (= (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toChars!3255 (transformation!2209 (rule!3948 t2!34)))) t!116914) tb!69183))

(declare-fun result!83792 () Bool)

(assert (= result!83792 result!83790))

(assert (=> b!1287185 t!116914))

(declare-fun b_and!85601 () Bool)

(assert (= b_and!85595 (and (=> t!116914 result!83792) b_and!85601)))

(declare-fun tb!69185 () Bool)

(declare-fun t!116916 () Bool)

(assert (=> (and b!1287137 (= (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toChars!3255 (transformation!2209 (rule!3948 t2!34)))) t!116916) tb!69185))

(declare-fun result!83794 () Bool)

(assert (= result!83794 result!83790))

(assert (=> b!1287185 t!116916))

(declare-fun b_and!85603 () Bool)

(assert (= b_and!85597 (and (=> t!116916 result!83794) b_and!85603)))

(declare-fun m!1437621 () Bool)

(assert (=> d!362593 m!1437621))

(declare-fun m!1437623 () Bool)

(assert (=> b!1287185 m!1437623))

(assert (=> b!1287185 m!1437623))

(declare-fun m!1437625 () Bool)

(assert (=> b!1287185 m!1437625))

(declare-fun m!1437627 () Bool)

(assert (=> b!1287186 m!1437627))

(assert (=> start!112642 d!362593))

(declare-fun b!1287225 () Bool)

(declare-fun res!577138 () Bool)

(declare-fun e!825541 () Bool)

(assert (=> b!1287225 (=> res!577138 e!825541)))

(assert (=> b!1287225 (= res!577138 (not ((_ is IntegerValue!6899) (value!72589 t2!34))))))

(declare-fun e!825542 () Bool)

(assert (=> b!1287225 (= e!825542 e!825541)))

(declare-fun d!362603 () Bool)

(declare-fun c!211867 () Bool)

(assert (=> d!362603 (= c!211867 ((_ is IntegerValue!6897) (value!72589 t2!34)))))

(declare-fun e!825543 () Bool)

(assert (=> d!362603 (= (inv!21 (value!72589 t2!34)) e!825543)))

(declare-fun b!1287226 () Bool)

(declare-fun inv!17 (TokenValue!2299) Bool)

(assert (=> b!1287226 (= e!825542 (inv!17 (value!72589 t2!34)))))

(declare-fun b!1287227 () Bool)

(assert (=> b!1287227 (= e!825543 e!825542)))

(declare-fun c!211868 () Bool)

(assert (=> b!1287227 (= c!211868 ((_ is IntegerValue!6898) (value!72589 t2!34)))))

(declare-fun b!1287228 () Bool)

(declare-fun inv!15 (TokenValue!2299) Bool)

(assert (=> b!1287228 (= e!825541 (inv!15 (value!72589 t2!34)))))

(declare-fun b!1287229 () Bool)

(declare-fun inv!16 (TokenValue!2299) Bool)

(assert (=> b!1287229 (= e!825543 (inv!16 (value!72589 t2!34)))))

(assert (= (and d!362603 c!211867) b!1287229))

(assert (= (and d!362603 (not c!211867)) b!1287227))

(assert (= (and b!1287227 c!211868) b!1287226))

(assert (= (and b!1287227 (not c!211868)) b!1287225))

(assert (= (and b!1287225 (not res!577138)) b!1287228))

(declare-fun m!1437645 () Bool)

(assert (=> b!1287226 m!1437645))

(declare-fun m!1437647 () Bool)

(assert (=> b!1287228 m!1437647))

(declare-fun m!1437651 () Bool)

(assert (=> b!1287229 m!1437651))

(assert (=> b!1287141 d!362603))

(declare-fun d!362613 () Bool)

(declare-fun lt!424126 () Bool)

(declare-fun e!825575 () Bool)

(assert (=> d!362613 (= lt!424126 e!825575)))

(declare-fun res!577174 () Bool)

(assert (=> d!362613 (=> (not res!577174) (not e!825575))))

(declare-datatypes ((List!12903 0))(
  ( (Nil!12837) (Cons!12837 (h!18238 Token!4080) (t!116936 List!12903)) )
))
(declare-datatypes ((IArray!8443 0))(
  ( (IArray!8444 (innerList!4279 List!12903)) )
))
(declare-datatypes ((Conc!4219 0))(
  ( (Node!4219 (left!11053 Conc!4219) (right!11383 Conc!4219) (csize!8668 Int) (cheight!4430 Int)) (Leaf!6520 (xs!6930 IArray!8443) (csize!8669 Int)) (Empty!4219) )
))
(declare-datatypes ((BalanceConc!8378 0))(
  ( (BalanceConc!8379 (c!211884 Conc!4219)) )
))
(declare-fun list!4776 (BalanceConc!8378) List!12903)

(declare-datatypes ((tuple2!12638 0))(
  ( (tuple2!12639 (_1!7205 BalanceConc!8378) (_2!7205 BalanceConc!8374)) )
))
(declare-fun lex!773 (LexerInterface!1904 List!12899 BalanceConc!8374) tuple2!12638)

(declare-fun print!710 (LexerInterface!1904 BalanceConc!8378) BalanceConc!8374)

(declare-fun singletonSeq!786 (Token!4080) BalanceConc!8378)

(assert (=> d!362613 (= res!577174 (= (list!4776 (_1!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34))))) (list!4776 (singletonSeq!786 t1!34))))))

(declare-fun e!825574 () Bool)

(assert (=> d!362613 (= lt!424126 e!825574)))

(declare-fun res!577172 () Bool)

(assert (=> d!362613 (=> (not res!577172) (not e!825574))))

(declare-fun lt!424125 () tuple2!12638)

(declare-fun size!10463 (BalanceConc!8378) Int)

(assert (=> d!362613 (= res!577172 (= (size!10463 (_1!7205 lt!424125)) 1))))

(assert (=> d!362613 (= lt!424125 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34))))))

(assert (=> d!362613 (not (isEmpty!7612 rules!2550))))

(assert (=> d!362613 (= (rulesProduceIndividualToken!873 thiss!19762 rules!2550 t1!34) lt!424126)))

(declare-fun b!1287276 () Bool)

(declare-fun res!577173 () Bool)

(assert (=> b!1287276 (=> (not res!577173) (not e!825574))))

(declare-fun apply!2763 (BalanceConc!8378 Int) Token!4080)

(assert (=> b!1287276 (= res!577173 (= (apply!2763 (_1!7205 lt!424125) 0) t1!34))))

(declare-fun b!1287277 () Bool)

(declare-fun isEmpty!7616 (BalanceConc!8374) Bool)

(assert (=> b!1287277 (= e!825574 (isEmpty!7616 (_2!7205 lt!424125)))))

(declare-fun b!1287278 () Bool)

(assert (=> b!1287278 (= e!825575 (isEmpty!7616 (_2!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34))))))))

(assert (= (and d!362613 res!577172) b!1287276))

(assert (= (and b!1287276 res!577173) b!1287277))

(assert (= (and d!362613 res!577174) b!1287278))

(declare-fun m!1437741 () Bool)

(assert (=> d!362613 m!1437741))

(declare-fun m!1437743 () Bool)

(assert (=> d!362613 m!1437743))

(declare-fun m!1437745 () Bool)

(assert (=> d!362613 m!1437745))

(declare-fun m!1437747 () Bool)

(assert (=> d!362613 m!1437747))

(assert (=> d!362613 m!1437745))

(declare-fun m!1437749 () Bool)

(assert (=> d!362613 m!1437749))

(assert (=> d!362613 m!1437545))

(declare-fun m!1437751 () Bool)

(assert (=> d!362613 m!1437751))

(assert (=> d!362613 m!1437745))

(assert (=> d!362613 m!1437741))

(declare-fun m!1437753 () Bool)

(assert (=> b!1287276 m!1437753))

(declare-fun m!1437755 () Bool)

(assert (=> b!1287277 m!1437755))

(assert (=> b!1287278 m!1437745))

(assert (=> b!1287278 m!1437745))

(assert (=> b!1287278 m!1437741))

(assert (=> b!1287278 m!1437741))

(assert (=> b!1287278 m!1437743))

(declare-fun m!1437757 () Bool)

(assert (=> b!1287278 m!1437757))

(assert (=> b!1287139 d!362613))

(declare-fun d!362635 () Bool)

(assert (=> d!362635 (= (inv!17242 (tag!2471 (rule!3948 t2!34))) (= (mod (str.len (value!72588 (tag!2471 (rule!3948 t2!34)))) 2) 0))))

(assert (=> b!1287150 d!362635))

(declare-fun d!362637 () Bool)

(declare-fun res!577177 () Bool)

(declare-fun e!825578 () Bool)

(assert (=> d!362637 (=> (not res!577177) (not e!825578))))

(declare-fun semiInverseModEq!834 (Int Int) Bool)

(assert (=> d!362637 (= res!577177 (semiInverseModEq!834 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toValue!3396 (transformation!2209 (rule!3948 t2!34)))))))

(assert (=> d!362637 (= (inv!17245 (transformation!2209 (rule!3948 t2!34))) e!825578)))

(declare-fun b!1287281 () Bool)

(declare-fun equivClasses!793 (Int Int) Bool)

(assert (=> b!1287281 (= e!825578 (equivClasses!793 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toValue!3396 (transformation!2209 (rule!3948 t2!34)))))))

(assert (= (and d!362637 res!577177) b!1287281))

(declare-fun m!1437759 () Bool)

(assert (=> d!362637 m!1437759))

(declare-fun m!1437761 () Bool)

(assert (=> b!1287281 m!1437761))

(assert (=> b!1287150 d!362637))

(declare-fun d!362639 () Bool)

(declare-fun lt!424128 () Bool)

(declare-fun e!825580 () Bool)

(assert (=> d!362639 (= lt!424128 e!825580)))

(declare-fun res!577180 () Bool)

(assert (=> d!362639 (=> (not res!577180) (not e!825580))))

(assert (=> d!362639 (= res!577180 (= (list!4776 (_1!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34))))) (list!4776 (singletonSeq!786 t2!34))))))

(declare-fun e!825579 () Bool)

(assert (=> d!362639 (= lt!424128 e!825579)))

(declare-fun res!577178 () Bool)

(assert (=> d!362639 (=> (not res!577178) (not e!825579))))

(declare-fun lt!424127 () tuple2!12638)

(assert (=> d!362639 (= res!577178 (= (size!10463 (_1!7205 lt!424127)) 1))))

(assert (=> d!362639 (= lt!424127 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34))))))

(assert (=> d!362639 (not (isEmpty!7612 rules!2550))))

(assert (=> d!362639 (= (rulesProduceIndividualToken!873 thiss!19762 rules!2550 t2!34) lt!424128)))

(declare-fun b!1287282 () Bool)

(declare-fun res!577179 () Bool)

(assert (=> b!1287282 (=> (not res!577179) (not e!825579))))

(assert (=> b!1287282 (= res!577179 (= (apply!2763 (_1!7205 lt!424127) 0) t2!34))))

(declare-fun b!1287283 () Bool)

(assert (=> b!1287283 (= e!825579 (isEmpty!7616 (_2!7205 lt!424127)))))

(declare-fun b!1287284 () Bool)

(assert (=> b!1287284 (= e!825580 (isEmpty!7616 (_2!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34))))))))

(assert (= (and d!362639 res!577178) b!1287282))

(assert (= (and b!1287282 res!577179) b!1287283))

(assert (= (and d!362639 res!577180) b!1287284))

(declare-fun m!1437763 () Bool)

(assert (=> d!362639 m!1437763))

(declare-fun m!1437765 () Bool)

(assert (=> d!362639 m!1437765))

(declare-fun m!1437767 () Bool)

(assert (=> d!362639 m!1437767))

(declare-fun m!1437769 () Bool)

(assert (=> d!362639 m!1437769))

(assert (=> d!362639 m!1437767))

(declare-fun m!1437771 () Bool)

(assert (=> d!362639 m!1437771))

(assert (=> d!362639 m!1437545))

(declare-fun m!1437773 () Bool)

(assert (=> d!362639 m!1437773))

(assert (=> d!362639 m!1437767))

(assert (=> d!362639 m!1437763))

(declare-fun m!1437775 () Bool)

(assert (=> b!1287282 m!1437775))

(declare-fun m!1437777 () Bool)

(assert (=> b!1287283 m!1437777))

(assert (=> b!1287284 m!1437767))

(assert (=> b!1287284 m!1437767))

(assert (=> b!1287284 m!1437763))

(assert (=> b!1287284 m!1437763))

(assert (=> b!1287284 m!1437765))

(declare-fun m!1437779 () Bool)

(assert (=> b!1287284 m!1437779))

(assert (=> b!1287148 d!362639))

(declare-fun d!362641 () Bool)

(declare-fun res!577183 () Bool)

(declare-fun e!825583 () Bool)

(assert (=> d!362641 (=> (not res!577183) (not e!825583))))

(declare-fun rulesValid!804 (LexerInterface!1904 List!12899) Bool)

(assert (=> d!362641 (= res!577183 (rulesValid!804 thiss!19762 rules!2550))))

(assert (=> d!362641 (= (rulesInvariant!1774 thiss!19762 rules!2550) e!825583)))

(declare-fun b!1287287 () Bool)

(declare-datatypes ((List!12904 0))(
  ( (Nil!12838) (Cons!12838 (h!18239 String!15731) (t!116937 List!12904)) )
))
(declare-fun noDuplicateTag!804 (LexerInterface!1904 List!12899 List!12904) Bool)

(assert (=> b!1287287 (= e!825583 (noDuplicateTag!804 thiss!19762 rules!2550 Nil!12838))))

(assert (= (and d!362641 res!577183) b!1287287))

(declare-fun m!1437781 () Bool)

(assert (=> d!362641 m!1437781))

(declare-fun m!1437783 () Bool)

(assert (=> b!1287287 m!1437783))

(assert (=> b!1287149 d!362641))

(declare-fun d!362643 () Bool)

(assert (=> d!362643 (= (isEmpty!7612 rules!2550) ((_ is Nil!12833) rules!2550))))

(assert (=> b!1287138 d!362643))

(declare-fun d!362645 () Bool)

(assert (=> d!362645 (= (inv!17242 (tag!2471 (h!18234 rules!2550))) (= (mod (str.len (value!72588 (tag!2471 (h!18234 rules!2550)))) 2) 0))))

(assert (=> b!1287147 d!362645))

(declare-fun d!362647 () Bool)

(declare-fun res!577184 () Bool)

(declare-fun e!825584 () Bool)

(assert (=> d!362647 (=> (not res!577184) (not e!825584))))

(assert (=> d!362647 (= res!577184 (semiInverseModEq!834 (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toValue!3396 (transformation!2209 (h!18234 rules!2550)))))))

(assert (=> d!362647 (= (inv!17245 (transformation!2209 (h!18234 rules!2550))) e!825584)))

(declare-fun b!1287288 () Bool)

(assert (=> b!1287288 (= e!825584 (equivClasses!793 (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toValue!3396 (transformation!2209 (h!18234 rules!2550)))))))

(assert (= (and d!362647 res!577184) b!1287288))

(declare-fun m!1437785 () Bool)

(assert (=> d!362647 m!1437785))

(declare-fun m!1437787 () Bool)

(assert (=> b!1287288 m!1437787))

(assert (=> b!1287147 d!362647))

(declare-fun d!362649 () Bool)

(assert (=> d!362649 (= (inv!17242 (tag!2471 (rule!3948 t1!34))) (= (mod (str.len (value!72588 (tag!2471 (rule!3948 t1!34)))) 2) 0))))

(assert (=> b!1287146 d!362649))

(declare-fun d!362651 () Bool)

(declare-fun res!577185 () Bool)

(declare-fun e!825585 () Bool)

(assert (=> d!362651 (=> (not res!577185) (not e!825585))))

(assert (=> d!362651 (= res!577185 (semiInverseModEq!834 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toValue!3396 (transformation!2209 (rule!3948 t1!34)))))))

(assert (=> d!362651 (= (inv!17245 (transformation!2209 (rule!3948 t1!34))) e!825585)))

(declare-fun b!1287289 () Bool)

(assert (=> b!1287289 (= e!825585 (equivClasses!793 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toValue!3396 (transformation!2209 (rule!3948 t1!34)))))))

(assert (= (and d!362651 res!577185) b!1287289))

(declare-fun m!1437789 () Bool)

(assert (=> d!362651 m!1437789))

(declare-fun m!1437791 () Bool)

(assert (=> b!1287289 m!1437791))

(assert (=> b!1287146 d!362651))

(declare-fun d!362653 () Bool)

(assert (=> d!362653 true))

(declare-fun lt!424132 () Bool)

(declare-fun lambda!50472 () Int)

(declare-fun forall!3239 (List!12899 Int) Bool)

(assert (=> d!362653 (= lt!424132 (forall!3239 rules!2550 lambda!50472))))

(declare-fun e!825614 () Bool)

(assert (=> d!362653 (= lt!424132 e!825614)))

(declare-fun res!577193 () Bool)

(assert (=> d!362653 (=> res!577193 e!825614)))

(assert (=> d!362653 (= res!577193 (not ((_ is Cons!12833) rules!2550)))))

(assert (=> d!362653 (= (rulesValidInductive!698 thiss!19762 rules!2550) lt!424132)))

(declare-fun b!1287337 () Bool)

(declare-fun e!825613 () Bool)

(assert (=> b!1287337 (= e!825614 e!825613)))

(declare-fun res!577192 () Bool)

(assert (=> b!1287337 (=> (not res!577192) (not e!825613))))

(declare-fun ruleValid!541 (LexerInterface!1904 Rule!4218) Bool)

(assert (=> b!1287337 (= res!577192 (ruleValid!541 thiss!19762 (h!18234 rules!2550)))))

(declare-fun b!1287338 () Bool)

(assert (=> b!1287338 (= e!825613 (rulesValidInductive!698 thiss!19762 (t!116898 rules!2550)))))

(assert (= (and d!362653 (not res!577193)) b!1287337))

(assert (= (and b!1287337 res!577192) b!1287338))

(declare-fun m!1437803 () Bool)

(assert (=> d!362653 m!1437803))

(declare-fun m!1437805 () Bool)

(assert (=> b!1287337 m!1437805))

(declare-fun m!1437807 () Bool)

(assert (=> b!1287338 m!1437807))

(assert (=> b!1287155 d!362653))

(declare-fun d!362655 () Bool)

(declare-fun res!577198 () Bool)

(declare-fun e!825619 () Bool)

(assert (=> d!362655 (=> res!577198 e!825619)))

(assert (=> d!362655 (= res!577198 (not ((_ is Cons!12833) rules!2550)))))

(assert (=> d!362655 (= (sepAndNonSepRulesDisjointChars!582 rules!2550 rules!2550) e!825619)))

(declare-fun b!1287345 () Bool)

(declare-fun e!825620 () Bool)

(assert (=> b!1287345 (= e!825619 e!825620)))

(declare-fun res!577199 () Bool)

(assert (=> b!1287345 (=> (not res!577199) (not e!825620))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!278 (Rule!4218 List!12899) Bool)

(assert (=> b!1287345 (= res!577199 (ruleDisjointCharsFromAllFromOtherType!278 (h!18234 rules!2550) rules!2550))))

(declare-fun b!1287346 () Bool)

(assert (=> b!1287346 (= e!825620 (sepAndNonSepRulesDisjointChars!582 rules!2550 (t!116898 rules!2550)))))

(assert (= (and d!362655 (not res!577198)) b!1287345))

(assert (= (and b!1287345 res!577199) b!1287346))

(declare-fun m!1437809 () Bool)

(assert (=> b!1287345 m!1437809))

(declare-fun m!1437811 () Bool)

(assert (=> b!1287346 m!1437811))

(assert (=> b!1287145 d!362655))

(declare-fun d!362657 () Bool)

(declare-fun lt!424135 () Int)

(assert (=> d!362657 (= lt!424135 (size!10462 (list!4773 lt!424094)))))

(declare-fun size!10464 (Conc!4217) Int)

(assert (=> d!362657 (= lt!424135 (size!10464 (c!211853 lt!424094)))))

(assert (=> d!362657 (= (size!10458 lt!424094) lt!424135)))

(declare-fun bs!328197 () Bool)

(assert (= bs!328197 d!362657))

(declare-fun m!1437813 () Bool)

(assert (=> bs!328197 m!1437813))

(assert (=> bs!328197 m!1437813))

(declare-fun m!1437815 () Bool)

(assert (=> bs!328197 m!1437815))

(declare-fun m!1437817 () Bool)

(assert (=> bs!328197 m!1437817))

(assert (=> b!1287154 d!362657))

(declare-fun d!362659 () Bool)

(declare-fun lt!424138 () BalanceConc!8374)

(assert (=> d!362659 (= (list!4773 lt!424138) (originalCharacters!3071 t2!34))))

(assert (=> d!362659 (= lt!424138 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))))

(assert (=> d!362659 (= (charsOf!1181 t2!34) lt!424138)))

(declare-fun b_lambda!36707 () Bool)

(assert (=> (not b_lambda!36707) (not d!362659)))

(assert (=> d!362659 t!116912))

(declare-fun b_and!85627 () Bool)

(assert (= b_and!85599 (and (=> t!116912 result!83790) b_and!85627)))

(assert (=> d!362659 t!116914))

(declare-fun b_and!85629 () Bool)

(assert (= b_and!85601 (and (=> t!116914 result!83792) b_and!85629)))

(assert (=> d!362659 t!116916))

(declare-fun b_and!85631 () Bool)

(assert (= b_and!85603 (and (=> t!116916 result!83794) b_and!85631)))

(declare-fun m!1437819 () Bool)

(assert (=> d!362659 m!1437819))

(assert (=> d!362659 m!1437623))

(assert (=> b!1287154 d!362659))

(declare-fun d!362661 () Bool)

(declare-fun prefixMatchZipperSequence!125 (Regex!3523 BalanceConc!8374) Bool)

(declare-fun ++!3243 (BalanceConc!8374 BalanceConc!8374) BalanceConc!8374)

(declare-fun singletonSeq!787 (C!7336) BalanceConc!8374)

(assert (=> d!362661 (= (separableTokensPredicate!187 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!125 (rulesRegex!94 thiss!19762 rules!2550) (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))))))))

(declare-fun bs!328198 () Bool)

(assert (= bs!328198 d!362661))

(assert (=> bs!328198 m!1437523))

(declare-fun m!1437821 () Bool)

(assert (=> bs!328198 m!1437821))

(declare-fun m!1437823 () Bool)

(assert (=> bs!328198 m!1437823))

(assert (=> bs!328198 m!1437557))

(declare-fun m!1437825 () Bool)

(assert (=> bs!328198 m!1437825))

(declare-fun m!1437827 () Bool)

(assert (=> bs!328198 m!1437827))

(assert (=> bs!328198 m!1437557))

(assert (=> bs!328198 m!1437551))

(assert (=> bs!328198 m!1437823))

(assert (=> bs!328198 m!1437825))

(assert (=> bs!328198 m!1437523))

(assert (=> bs!328198 m!1437821))

(assert (=> bs!328198 m!1437551))

(assert (=> b!1287152 d!362661))

(declare-fun b!1287347 () Bool)

(declare-fun res!577200 () Bool)

(declare-fun e!825621 () Bool)

(assert (=> b!1287347 (=> res!577200 e!825621)))

(assert (=> b!1287347 (= res!577200 (not ((_ is IntegerValue!6899) (value!72589 t1!34))))))

(declare-fun e!825622 () Bool)

(assert (=> b!1287347 (= e!825622 e!825621)))

(declare-fun d!362663 () Bool)

(declare-fun c!211876 () Bool)

(assert (=> d!362663 (= c!211876 ((_ is IntegerValue!6897) (value!72589 t1!34)))))

(declare-fun e!825623 () Bool)

(assert (=> d!362663 (= (inv!21 (value!72589 t1!34)) e!825623)))

(declare-fun b!1287348 () Bool)

(assert (=> b!1287348 (= e!825622 (inv!17 (value!72589 t1!34)))))

(declare-fun b!1287349 () Bool)

(assert (=> b!1287349 (= e!825623 e!825622)))

(declare-fun c!211877 () Bool)

(assert (=> b!1287349 (= c!211877 ((_ is IntegerValue!6898) (value!72589 t1!34)))))

(declare-fun b!1287350 () Bool)

(assert (=> b!1287350 (= e!825621 (inv!15 (value!72589 t1!34)))))

(declare-fun b!1287351 () Bool)

(assert (=> b!1287351 (= e!825623 (inv!16 (value!72589 t1!34)))))

(assert (= (and d!362663 c!211876) b!1287351))

(assert (= (and d!362663 (not c!211876)) b!1287349))

(assert (= (and b!1287349 c!211877) b!1287348))

(assert (= (and b!1287349 (not c!211877)) b!1287347))

(assert (= (and b!1287347 (not res!577200)) b!1287350))

(declare-fun m!1437829 () Bool)

(assert (=> b!1287348 m!1437829))

(declare-fun m!1437831 () Bool)

(assert (=> b!1287350 m!1437831))

(declare-fun m!1437833 () Bool)

(assert (=> b!1287351 m!1437833))

(assert (=> b!1287153 d!362663))

(declare-fun b!1287362 () Bool)

(declare-fun res!577205 () Bool)

(declare-fun e!825628 () Bool)

(assert (=> b!1287362 (=> (not res!577205) (not e!825628))))

(declare-fun lt!424141 () List!12898)

(assert (=> b!1287362 (= res!577205 (= (size!10462 lt!424141) (+ (size!10462 (list!4773 (charsOf!1181 t1!34))) (size!10462 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(declare-fun d!362665 () Bool)

(assert (=> d!362665 e!825628))

(declare-fun res!577206 () Bool)

(assert (=> d!362665 (=> (not res!577206) (not e!825628))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1815 (List!12898) (InoxSet C!7336))

(assert (=> d!362665 (= res!577206 (= (content!1815 lt!424141) ((_ map or) (content!1815 (list!4773 (charsOf!1181 t1!34))) (content!1815 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(declare-fun e!825629 () List!12898)

(assert (=> d!362665 (= lt!424141 e!825629)))

(declare-fun c!211880 () Bool)

(assert (=> d!362665 (= c!211880 ((_ is Nil!12832) (list!4773 (charsOf!1181 t1!34))))))

(assert (=> d!362665 (= (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)) lt!424141)))

(declare-fun b!1287363 () Bool)

(assert (=> b!1287363 (= e!825628 (or (not (= (Cons!12832 (apply!2759 lt!424094 0) Nil!12832) Nil!12832)) (= lt!424141 (list!4773 (charsOf!1181 t1!34)))))))

(declare-fun b!1287361 () Bool)

(assert (=> b!1287361 (= e!825629 (Cons!12832 (h!18233 (list!4773 (charsOf!1181 t1!34))) (++!3241 (t!116897 (list!4773 (charsOf!1181 t1!34))) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))))

(declare-fun b!1287360 () Bool)

(assert (=> b!1287360 (= e!825629 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))

(assert (= (and d!362665 c!211880) b!1287360))

(assert (= (and d!362665 (not c!211880)) b!1287361))

(assert (= (and d!362665 res!577206) b!1287362))

(assert (= (and b!1287362 res!577205) b!1287363))

(declare-fun m!1437835 () Bool)

(assert (=> b!1287362 m!1437835))

(assert (=> b!1287362 m!1437553))

(declare-fun m!1437837 () Bool)

(assert (=> b!1287362 m!1437837))

(declare-fun m!1437839 () Bool)

(assert (=> b!1287362 m!1437839))

(declare-fun m!1437841 () Bool)

(assert (=> d!362665 m!1437841))

(assert (=> d!362665 m!1437553))

(declare-fun m!1437843 () Bool)

(assert (=> d!362665 m!1437843))

(declare-fun m!1437845 () Bool)

(assert (=> d!362665 m!1437845))

(declare-fun m!1437847 () Bool)

(assert (=> b!1287361 m!1437847))

(assert (=> b!1287142 d!362665))

(declare-fun d!362667 () Bool)

(declare-fun c!211883 () Bool)

(assert (=> d!362667 (= c!211883 (isEmpty!7615 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))))

(declare-fun e!825632 () Bool)

(assert (=> d!362667 (= (prefixMatch!36 (rulesRegex!94 thiss!19762 rules!2550) (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))) e!825632)))

(declare-fun b!1287368 () Bool)

(declare-fun lostCause!242 (Regex!3523) Bool)

(assert (=> b!1287368 (= e!825632 (not (lostCause!242 (rulesRegex!94 thiss!19762 rules!2550))))))

(declare-fun b!1287369 () Bool)

(declare-fun derivativeStep!865 (Regex!3523 C!7336) Regex!3523)

(declare-fun head!2199 (List!12898) C!7336)

(declare-fun tail!1827 (List!12898) List!12898)

(assert (=> b!1287369 (= e!825632 (prefixMatch!36 (derivativeStep!865 (rulesRegex!94 thiss!19762 rules!2550) (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))) (tail!1827 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(assert (= (and d!362667 c!211883) b!1287368))

(assert (= (and d!362667 (not c!211883)) b!1287369))

(assert (=> d!362667 m!1437559))

(declare-fun m!1437849 () Bool)

(assert (=> d!362667 m!1437849))

(assert (=> b!1287368 m!1437557))

(declare-fun m!1437851 () Bool)

(assert (=> b!1287368 m!1437851))

(assert (=> b!1287369 m!1437559))

(declare-fun m!1437853 () Bool)

(assert (=> b!1287369 m!1437853))

(assert (=> b!1287369 m!1437557))

(assert (=> b!1287369 m!1437853))

(declare-fun m!1437855 () Bool)

(assert (=> b!1287369 m!1437855))

(assert (=> b!1287369 m!1437559))

(declare-fun m!1437857 () Bool)

(assert (=> b!1287369 m!1437857))

(assert (=> b!1287369 m!1437855))

(assert (=> b!1287369 m!1437857))

(declare-fun m!1437859 () Bool)

(assert (=> b!1287369 m!1437859))

(assert (=> b!1287142 d!362667))

(declare-fun d!362669 () Bool)

(declare-fun lt!424144 () C!7336)

(declare-fun apply!2764 (List!12898 Int) C!7336)

(assert (=> d!362669 (= lt!424144 (apply!2764 (list!4773 lt!424094) 0))))

(declare-fun apply!2765 (Conc!4217 Int) C!7336)

(assert (=> d!362669 (= lt!424144 (apply!2765 (c!211853 lt!424094) 0))))

(declare-fun e!825635 () Bool)

(assert (=> d!362669 e!825635))

(declare-fun res!577209 () Bool)

(assert (=> d!362669 (=> (not res!577209) (not e!825635))))

(assert (=> d!362669 (= res!577209 (<= 0 0))))

(assert (=> d!362669 (= (apply!2759 lt!424094 0) lt!424144)))

(declare-fun b!1287372 () Bool)

(assert (=> b!1287372 (= e!825635 (< 0 (size!10458 lt!424094)))))

(assert (= (and d!362669 res!577209) b!1287372))

(assert (=> d!362669 m!1437813))

(assert (=> d!362669 m!1437813))

(declare-fun m!1437861 () Bool)

(assert (=> d!362669 m!1437861))

(declare-fun m!1437863 () Bool)

(assert (=> d!362669 m!1437863))

(assert (=> b!1287372 m!1437521))

(assert (=> b!1287142 d!362669))

(declare-fun d!362671 () Bool)

(declare-fun list!4777 (Conc!4217) List!12898)

(assert (=> d!362671 (= (list!4773 (charsOf!1181 t1!34)) (list!4777 (c!211853 (charsOf!1181 t1!34))))))

(declare-fun bs!328199 () Bool)

(assert (= bs!328199 d!362671))

(declare-fun m!1437865 () Bool)

(assert (=> bs!328199 m!1437865))

(assert (=> b!1287142 d!362671))

(declare-fun d!362673 () Bool)

(declare-fun lt!424145 () BalanceConc!8374)

(assert (=> d!362673 (= (list!4773 lt!424145) (originalCharacters!3071 t1!34))))

(assert (=> d!362673 (= lt!424145 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))))

(assert (=> d!362673 (= (charsOf!1181 t1!34) lt!424145)))

(declare-fun b_lambda!36709 () Bool)

(assert (=> (not b_lambda!36709) (not d!362673)))

(assert (=> d!362673 t!116906))

(declare-fun b_and!85633 () Bool)

(assert (= b_and!85627 (and (=> t!116906 result!83782) b_and!85633)))

(assert (=> d!362673 t!116908))

(declare-fun b_and!85635 () Bool)

(assert (= b_and!85629 (and (=> t!116908 result!83786) b_and!85635)))

(assert (=> d!362673 t!116910))

(declare-fun b_and!85637 () Bool)

(assert (= b_and!85631 (and (=> t!116910 result!83788) b_and!85637)))

(declare-fun m!1437867 () Bool)

(assert (=> d!362673 m!1437867))

(assert (=> d!362673 m!1437595))

(assert (=> b!1287142 d!362673))

(declare-fun d!362675 () Bool)

(declare-datatypes ((Unit!19014 0))(
  ( (Unit!19015) )
))
(declare-fun lt!424148 () Unit!19014)

(declare-fun lemma!36 (List!12899 LexerInterface!1904 List!12899) Unit!19014)

(assert (=> d!362675 (= lt!424148 (lemma!36 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50475 () Int)

(declare-datatypes ((List!12905 0))(
  ( (Nil!12839) (Cons!12839 (h!18240 Regex!3523) (t!116938 List!12905)) )
))
(declare-fun generalisedUnion!40 (List!12905) Regex!3523)

(declare-fun map!2794 (List!12899 Int) List!12905)

(assert (=> d!362675 (= (rulesRegex!94 thiss!19762 rules!2550) (generalisedUnion!40 (map!2794 rules!2550 lambda!50475)))))

(declare-fun bs!328200 () Bool)

(assert (= bs!328200 d!362675))

(declare-fun m!1437869 () Bool)

(assert (=> bs!328200 m!1437869))

(declare-fun m!1437871 () Bool)

(assert (=> bs!328200 m!1437871))

(assert (=> bs!328200 m!1437871))

(declare-fun m!1437873 () Bool)

(assert (=> bs!328200 m!1437873))

(assert (=> b!1287142 d!362675))

(declare-fun b!1287383 () Bool)

(declare-fun b_free!30315 () Bool)

(declare-fun b_next!31019 () Bool)

(assert (=> b!1287383 (= b_free!30315 (not b_next!31019))))

(declare-fun tp!375016 () Bool)

(declare-fun b_and!85639 () Bool)

(assert (=> b!1287383 (= tp!375016 b_and!85639)))

(declare-fun b_free!30317 () Bool)

(declare-fun b_next!31021 () Bool)

(assert (=> b!1287383 (= b_free!30317 (not b_next!31021))))

(declare-fun tb!69197 () Bool)

(declare-fun t!116933 () Bool)

(assert (=> (and b!1287383 (= (toChars!3255 (transformation!2209 (h!18234 (t!116898 rules!2550)))) (toChars!3255 (transformation!2209 (rule!3948 t1!34)))) t!116933) tb!69197))

(declare-fun result!83814 () Bool)

(assert (= result!83814 result!83782))

(assert (=> b!1287165 t!116933))

(declare-fun tb!69199 () Bool)

(declare-fun t!116935 () Bool)

(assert (=> (and b!1287383 (= (toChars!3255 (transformation!2209 (h!18234 (t!116898 rules!2550)))) (toChars!3255 (transformation!2209 (rule!3948 t2!34)))) t!116935) tb!69199))

(declare-fun result!83816 () Bool)

(assert (= result!83816 result!83790))

(assert (=> b!1287185 t!116935))

(assert (=> d!362659 t!116935))

(assert (=> d!362673 t!116933))

(declare-fun b_and!85641 () Bool)

(declare-fun tp!375018 () Bool)

(assert (=> b!1287383 (= tp!375018 (and (=> t!116933 result!83814) (=> t!116935 result!83816) b_and!85641))))

(declare-fun e!825645 () Bool)

(assert (=> b!1287383 (= e!825645 (and tp!375016 tp!375018))))

(declare-fun e!825646 () Bool)

(declare-fun b!1287382 () Bool)

(declare-fun tp!375019 () Bool)

(assert (=> b!1287382 (= e!825646 (and tp!375019 (inv!17242 (tag!2471 (h!18234 (t!116898 rules!2550)))) (inv!17245 (transformation!2209 (h!18234 (t!116898 rules!2550)))) e!825645))))

(declare-fun b!1287381 () Bool)

(declare-fun e!825647 () Bool)

(declare-fun tp!375017 () Bool)

(assert (=> b!1287381 (= e!825647 (and e!825646 tp!375017))))

(assert (=> b!1287140 (= tp!374947 e!825647)))

(assert (= b!1287382 b!1287383))

(assert (= b!1287381 b!1287382))

(assert (= (and b!1287140 ((_ is Cons!12833) (t!116898 rules!2550))) b!1287381))

(declare-fun m!1437875 () Bool)

(assert (=> b!1287382 m!1437875))

(declare-fun m!1437877 () Bool)

(assert (=> b!1287382 m!1437877))

(declare-fun b!1287388 () Bool)

(declare-fun e!825650 () Bool)

(declare-fun tp_is_empty!6551 () Bool)

(declare-fun tp!375022 () Bool)

(assert (=> b!1287388 (= e!825650 (and tp_is_empty!6551 tp!375022))))

(assert (=> b!1287141 (= tp!374957 e!825650)))

(assert (= (and b!1287141 ((_ is Cons!12832) (originalCharacters!3071 t2!34))) b!1287388))

(declare-fun e!825653 () Bool)

(assert (=> b!1287146 (= tp!374954 e!825653)))

(declare-fun b!1287399 () Bool)

(assert (=> b!1287399 (= e!825653 tp_is_empty!6551)))

(declare-fun b!1287401 () Bool)

(declare-fun tp!375034 () Bool)

(assert (=> b!1287401 (= e!825653 tp!375034)))

(declare-fun b!1287402 () Bool)

(declare-fun tp!375033 () Bool)

(declare-fun tp!375037 () Bool)

(assert (=> b!1287402 (= e!825653 (and tp!375033 tp!375037))))

(declare-fun b!1287400 () Bool)

(declare-fun tp!375035 () Bool)

(declare-fun tp!375036 () Bool)

(assert (=> b!1287400 (= e!825653 (and tp!375035 tp!375036))))

(assert (= (and b!1287146 ((_ is ElementMatch!3523) (regex!2209 (rule!3948 t1!34)))) b!1287399))

(assert (= (and b!1287146 ((_ is Concat!5823) (regex!2209 (rule!3948 t1!34)))) b!1287400))

(assert (= (and b!1287146 ((_ is Star!3523) (regex!2209 (rule!3948 t1!34)))) b!1287401))

(assert (= (and b!1287146 ((_ is Union!3523) (regex!2209 (rule!3948 t1!34)))) b!1287402))

(declare-fun e!825654 () Bool)

(assert (=> b!1287150 (= tp!374953 e!825654)))

(declare-fun b!1287403 () Bool)

(assert (=> b!1287403 (= e!825654 tp_is_empty!6551)))

(declare-fun b!1287405 () Bool)

(declare-fun tp!375039 () Bool)

(assert (=> b!1287405 (= e!825654 tp!375039)))

(declare-fun b!1287406 () Bool)

(declare-fun tp!375038 () Bool)

(declare-fun tp!375042 () Bool)

(assert (=> b!1287406 (= e!825654 (and tp!375038 tp!375042))))

(declare-fun b!1287404 () Bool)

(declare-fun tp!375040 () Bool)

(declare-fun tp!375041 () Bool)

(assert (=> b!1287404 (= e!825654 (and tp!375040 tp!375041))))

(assert (= (and b!1287150 ((_ is ElementMatch!3523) (regex!2209 (rule!3948 t2!34)))) b!1287403))

(assert (= (and b!1287150 ((_ is Concat!5823) (regex!2209 (rule!3948 t2!34)))) b!1287404))

(assert (= (and b!1287150 ((_ is Star!3523) (regex!2209 (rule!3948 t2!34)))) b!1287405))

(assert (= (and b!1287150 ((_ is Union!3523) (regex!2209 (rule!3948 t2!34)))) b!1287406))

(declare-fun e!825655 () Bool)

(assert (=> b!1287147 (= tp!374952 e!825655)))

(declare-fun b!1287407 () Bool)

(assert (=> b!1287407 (= e!825655 tp_is_empty!6551)))

(declare-fun b!1287409 () Bool)

(declare-fun tp!375044 () Bool)

(assert (=> b!1287409 (= e!825655 tp!375044)))

(declare-fun b!1287410 () Bool)

(declare-fun tp!375043 () Bool)

(declare-fun tp!375047 () Bool)

(assert (=> b!1287410 (= e!825655 (and tp!375043 tp!375047))))

(declare-fun b!1287408 () Bool)

(declare-fun tp!375045 () Bool)

(declare-fun tp!375046 () Bool)

(assert (=> b!1287408 (= e!825655 (and tp!375045 tp!375046))))

(assert (= (and b!1287147 ((_ is ElementMatch!3523) (regex!2209 (h!18234 rules!2550)))) b!1287407))

(assert (= (and b!1287147 ((_ is Concat!5823) (regex!2209 (h!18234 rules!2550)))) b!1287408))

(assert (= (and b!1287147 ((_ is Star!3523) (regex!2209 (h!18234 rules!2550)))) b!1287409))

(assert (= (and b!1287147 ((_ is Union!3523) (regex!2209 (h!18234 rules!2550)))) b!1287410))

(declare-fun b!1287411 () Bool)

(declare-fun e!825656 () Bool)

(declare-fun tp!375048 () Bool)

(assert (=> b!1287411 (= e!825656 (and tp_is_empty!6551 tp!375048))))

(assert (=> b!1287153 (= tp!374949 e!825656)))

(assert (= (and b!1287153 ((_ is Cons!12832) (originalCharacters!3071 t1!34))) b!1287411))

(declare-fun b_lambda!36711 () Bool)

(assert (= b_lambda!36707 (or (and b!1287143 b_free!30301 (= (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toChars!3255 (transformation!2209 (rule!3948 t2!34))))) (and b!1287144 b_free!30305) (and b!1287137 b_free!30309 (= (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toChars!3255 (transformation!2209 (rule!3948 t2!34))))) (and b!1287383 b_free!30317 (= (toChars!3255 (transformation!2209 (h!18234 (t!116898 rules!2550)))) (toChars!3255 (transformation!2209 (rule!3948 t2!34))))) b_lambda!36711)))

(declare-fun b_lambda!36713 () Bool)

(assert (= b_lambda!36691 (or (and b!1287143 b_free!30301 (= (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toChars!3255 (transformation!2209 (rule!3948 t2!34))))) (and b!1287144 b_free!30305) (and b!1287137 b_free!30309 (= (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toChars!3255 (transformation!2209 (rule!3948 t2!34))))) (and b!1287383 b_free!30317 (= (toChars!3255 (transformation!2209 (h!18234 (t!116898 rules!2550)))) (toChars!3255 (transformation!2209 (rule!3948 t2!34))))) b_lambda!36713)))

(declare-fun b_lambda!36715 () Bool)

(assert (= b_lambda!36689 (or (and b!1287143 b_free!30301) (and b!1287144 b_free!30305 (= (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toChars!3255 (transformation!2209 (rule!3948 t1!34))))) (and b!1287137 b_free!30309 (= (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toChars!3255 (transformation!2209 (rule!3948 t1!34))))) (and b!1287383 b_free!30317 (= (toChars!3255 (transformation!2209 (h!18234 (t!116898 rules!2550)))) (toChars!3255 (transformation!2209 (rule!3948 t1!34))))) b_lambda!36715)))

(declare-fun b_lambda!36717 () Bool)

(assert (= b_lambda!36709 (or (and b!1287143 b_free!30301) (and b!1287144 b_free!30305 (= (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toChars!3255 (transformation!2209 (rule!3948 t1!34))))) (and b!1287137 b_free!30309 (= (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toChars!3255 (transformation!2209 (rule!3948 t1!34))))) (and b!1287383 b_free!30317 (= (toChars!3255 (transformation!2209 (h!18234 (t!116898 rules!2550)))) (toChars!3255 (transformation!2209 (rule!3948 t1!34))))) b_lambda!36717)))

(check-sat b_and!85639 (not d!362661) (not b_next!31021) (not b!1287404) b_and!85637 (not b_next!31019) (not b!1287278) (not b_next!31013) (not d!362669) (not d!362651) (not b!1287351) (not d!362653) (not b_lambda!36713) (not b!1287337) (not d!362675) (not b!1287388) (not b!1287372) (not b!1287198) (not b_next!31005) (not b!1287282) (not d!362665) (not b_next!31003) (not b_lambda!36715) b_and!85633 (not b!1287287) (not b_next!31009) (not b!1287186) (not b!1287350) (not d!362647) (not d!362657) (not d!362641) (not b!1287401) (not d!362639) (not b_lambda!36711) (not b!1287288) (not b!1287289) b_and!85583 (not b!1287408) (not b!1287368) (not b!1287277) (not d!362673) (not b!1287402) (not b!1287276) (not b!1287362) (not b!1287348) (not b!1287226) (not b!1287176) (not b!1287409) (not b!1287400) b_and!85579 (not b!1287338) (not b!1287281) (not b_lambda!36717) (not b!1287381) (not b!1287382) (not d!362659) (not d!362581) (not b!1287406) (not tb!69181) (not b!1287284) (not b!1287405) (not b!1287165) (not b!1287166) (not b_next!31007) (not d!362637) (not b_next!31011) (not b!1287361) (not b!1287185) (not d!362667) b_and!85641 (not d!362593) (not b!1287345) (not b!1287229) b_and!85635 (not b!1287411) (not d!362613) (not b!1287283) (not b!1287410) (not b!1287346) (not tb!69175) tp_is_empty!6551 (not b!1287228) (not b!1287369) b_and!85575 (not d!362671))
(check-sat (not b_next!31005) (not b_next!31003) b_and!85639 b_and!85583 (not b_next!31021) b_and!85637 b_and!85579 b_and!85641 b_and!85635 b_and!85575 (not b_next!31019) (not b_next!31013) b_and!85633 (not b_next!31009) (not b_next!31007) (not b_next!31011))
(get-model)

(declare-fun d!362709 () Bool)

(declare-fun lt!424166 () Int)

(assert (=> d!362709 (>= lt!424166 0)))

(declare-fun e!825682 () Int)

(assert (=> d!362709 (= lt!424166 e!825682)))

(declare-fun c!211898 () Bool)

(assert (=> d!362709 (= c!211898 ((_ is Nil!12832) (originalCharacters!3071 t1!34)))))

(assert (=> d!362709 (= (size!10462 (originalCharacters!3071 t1!34)) lt!424166)))

(declare-fun b!1287462 () Bool)

(assert (=> b!1287462 (= e!825682 0)))

(declare-fun b!1287463 () Bool)

(assert (=> b!1287463 (= e!825682 (+ 1 (size!10462 (t!116897 (originalCharacters!3071 t1!34)))))))

(assert (= (and d!362709 c!211898) b!1287462))

(assert (= (and d!362709 (not c!211898)) b!1287463))

(declare-fun m!1437937 () Bool)

(assert (=> b!1287463 m!1437937))

(assert (=> b!1287166 d!362709))

(declare-fun d!362711 () Bool)

(assert (=> d!362711 (= (list!4773 lt!424145) (list!4777 (c!211853 lt!424145)))))

(declare-fun bs!328208 () Bool)

(assert (= bs!328208 d!362711))

(declare-fun m!1437939 () Bool)

(assert (=> bs!328208 m!1437939))

(assert (=> d!362673 d!362711))

(declare-fun d!362713 () Bool)

(declare-fun lt!424167 () Int)

(assert (=> d!362713 (>= lt!424167 0)))

(declare-fun e!825683 () Int)

(assert (=> d!362713 (= lt!424167 e!825683)))

(declare-fun c!211899 () Bool)

(assert (=> d!362713 (= c!211899 ((_ is Nil!12832) (originalCharacters!3071 t2!34)))))

(assert (=> d!362713 (= (size!10462 (originalCharacters!3071 t2!34)) lt!424167)))

(declare-fun b!1287464 () Bool)

(assert (=> b!1287464 (= e!825683 0)))

(declare-fun b!1287465 () Bool)

(assert (=> b!1287465 (= e!825683 (+ 1 (size!10462 (t!116897 (originalCharacters!3071 t2!34)))))))

(assert (= (and d!362713 c!211899) b!1287464))

(assert (= (and d!362713 (not c!211899)) b!1287465))

(declare-fun m!1437941 () Bool)

(assert (=> b!1287465 m!1437941))

(assert (=> b!1287186 d!362713))

(declare-fun d!362715 () Bool)

(assert (=> d!362715 true))

(declare-fun lambda!50485 () Int)

(declare-fun order!7821 () Int)

(declare-fun order!7819 () Int)

(declare-fun dynLambda!5597 (Int Int) Int)

(declare-fun dynLambda!5598 (Int Int) Int)

(assert (=> d!362715 (< (dynLambda!5597 order!7819 (toChars!3255 (transformation!2209 (h!18234 rules!2550)))) (dynLambda!5598 order!7821 lambda!50485))))

(assert (=> d!362715 true))

(declare-fun order!7823 () Int)

(declare-fun dynLambda!5599 (Int Int) Int)

(assert (=> d!362715 (< (dynLambda!5599 order!7823 (toValue!3396 (transformation!2209 (h!18234 rules!2550)))) (dynLambda!5598 order!7821 lambda!50485))))

(declare-fun Forall!499 (Int) Bool)

(assert (=> d!362715 (= (semiInverseModEq!834 (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toValue!3396 (transformation!2209 (h!18234 rules!2550)))) (Forall!499 lambda!50485))))

(declare-fun bs!328209 () Bool)

(assert (= bs!328209 d!362715))

(declare-fun m!1437943 () Bool)

(assert (=> bs!328209 m!1437943))

(assert (=> d!362647 d!362715))

(declare-fun d!362717 () Bool)

(assert (=> d!362717 (= (list!4773 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))) (list!4777 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))))))

(declare-fun bs!328210 () Bool)

(assert (= bs!328210 d!362717))

(declare-fun m!1437945 () Bool)

(assert (=> bs!328210 m!1437945))

(assert (=> b!1287185 d!362717))

(declare-fun d!362719 () Bool)

(declare-fun c!211900 () Bool)

(assert (=> d!362719 (= c!211900 (isEmpty!7615 (tail!1827 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(declare-fun e!825684 () Bool)

(assert (=> d!362719 (= (prefixMatch!36 (derivativeStep!865 (rulesRegex!94 thiss!19762 rules!2550) (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))) (tail!1827 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))) e!825684)))

(declare-fun b!1287470 () Bool)

(assert (=> b!1287470 (= e!825684 (not (lostCause!242 (derivativeStep!865 (rulesRegex!94 thiss!19762 rules!2550) (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))))

(declare-fun b!1287471 () Bool)

(assert (=> b!1287471 (= e!825684 (prefixMatch!36 (derivativeStep!865 (derivativeStep!865 (rulesRegex!94 thiss!19762 rules!2550) (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))) (head!2199 (tail!1827 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))) (tail!1827 (tail!1827 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))))))

(assert (= (and d!362719 c!211900) b!1287470))

(assert (= (and d!362719 (not c!211900)) b!1287471))

(assert (=> d!362719 m!1437857))

(declare-fun m!1437947 () Bool)

(assert (=> d!362719 m!1437947))

(assert (=> b!1287470 m!1437855))

(declare-fun m!1437949 () Bool)

(assert (=> b!1287470 m!1437949))

(assert (=> b!1287471 m!1437857))

(declare-fun m!1437951 () Bool)

(assert (=> b!1287471 m!1437951))

(assert (=> b!1287471 m!1437855))

(assert (=> b!1287471 m!1437951))

(declare-fun m!1437953 () Bool)

(assert (=> b!1287471 m!1437953))

(assert (=> b!1287471 m!1437857))

(declare-fun m!1437955 () Bool)

(assert (=> b!1287471 m!1437955))

(assert (=> b!1287471 m!1437953))

(assert (=> b!1287471 m!1437955))

(declare-fun m!1437957 () Bool)

(assert (=> b!1287471 m!1437957))

(assert (=> b!1287369 d!362719))

(declare-fun call!88496 () Regex!3523)

(declare-fun c!211912 () Bool)

(declare-fun bm!88491 () Bool)

(assert (=> bm!88491 (= call!88496 (derivativeStep!865 (ite c!211912 (regOne!7559 (rulesRegex!94 thiss!19762 rules!2550)) (regOne!7558 (rulesRegex!94 thiss!19762 rules!2550))) (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(declare-fun b!1287492 () Bool)

(declare-fun e!825698 () Regex!3523)

(declare-fun call!88499 () Regex!3523)

(assert (=> b!1287492 (= e!825698 (Union!3523 call!88496 call!88499))))

(declare-fun b!1287493 () Bool)

(declare-fun c!211913 () Bool)

(declare-fun nullable!1116 (Regex!3523) Bool)

(assert (=> b!1287493 (= c!211913 (nullable!1116 (regOne!7558 (rulesRegex!94 thiss!19762 rules!2550))))))

(declare-fun e!825697 () Regex!3523)

(declare-fun e!825696 () Regex!3523)

(assert (=> b!1287493 (= e!825697 e!825696)))

(declare-fun b!1287494 () Bool)

(assert (=> b!1287494 (= c!211912 ((_ is Union!3523) (rulesRegex!94 thiss!19762 rules!2550)))))

(declare-fun e!825695 () Regex!3523)

(assert (=> b!1287494 (= e!825695 e!825698)))

(declare-fun b!1287495 () Bool)

(declare-fun e!825699 () Regex!3523)

(assert (=> b!1287495 (= e!825699 e!825695)))

(declare-fun c!211915 () Bool)

(assert (=> b!1287495 (= c!211915 ((_ is ElementMatch!3523) (rulesRegex!94 thiss!19762 rules!2550)))))

(declare-fun b!1287496 () Bool)

(declare-fun call!88498 () Regex!3523)

(assert (=> b!1287496 (= e!825696 (Union!3523 (Concat!5823 call!88496 (regTwo!7558 (rulesRegex!94 thiss!19762 rules!2550))) call!88498))))

(declare-fun b!1287497 () Bool)

(assert (=> b!1287497 (= e!825699 EmptyLang!3523)))

(declare-fun d!362721 () Bool)

(declare-fun lt!424170 () Regex!3523)

(declare-fun validRegex!1514 (Regex!3523) Bool)

(assert (=> d!362721 (validRegex!1514 lt!424170)))

(assert (=> d!362721 (= lt!424170 e!825699)))

(declare-fun c!211911 () Bool)

(assert (=> d!362721 (= c!211911 (or ((_ is EmptyExpr!3523) (rulesRegex!94 thiss!19762 rules!2550)) ((_ is EmptyLang!3523) (rulesRegex!94 thiss!19762 rules!2550))))))

(assert (=> d!362721 (validRegex!1514 (rulesRegex!94 thiss!19762 rules!2550))))

(assert (=> d!362721 (= (derivativeStep!865 (rulesRegex!94 thiss!19762 rules!2550) (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))) lt!424170)))

(declare-fun b!1287498 () Bool)

(declare-fun call!88497 () Regex!3523)

(assert (=> b!1287498 (= e!825697 (Concat!5823 call!88497 (rulesRegex!94 thiss!19762 rules!2550)))))

(declare-fun b!1287499 () Bool)

(assert (=> b!1287499 (= e!825698 e!825697)))

(declare-fun c!211914 () Bool)

(assert (=> b!1287499 (= c!211914 ((_ is Star!3523) (rulesRegex!94 thiss!19762 rules!2550)))))

(declare-fun bm!88492 () Bool)

(assert (=> bm!88492 (= call!88497 call!88499)))

(declare-fun bm!88493 () Bool)

(assert (=> bm!88493 (= call!88498 call!88497)))

(declare-fun b!1287500 () Bool)

(assert (=> b!1287500 (= e!825696 (Union!3523 (Concat!5823 call!88498 (regTwo!7558 (rulesRegex!94 thiss!19762 rules!2550))) EmptyLang!3523))))

(declare-fun b!1287501 () Bool)

(assert (=> b!1287501 (= e!825695 (ite (= (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))) (c!211854 (rulesRegex!94 thiss!19762 rules!2550))) EmptyExpr!3523 EmptyLang!3523))))

(declare-fun bm!88494 () Bool)

(assert (=> bm!88494 (= call!88499 (derivativeStep!865 (ite c!211912 (regTwo!7559 (rulesRegex!94 thiss!19762 rules!2550)) (ite c!211914 (reg!3852 (rulesRegex!94 thiss!19762 rules!2550)) (ite c!211913 (regTwo!7558 (rulesRegex!94 thiss!19762 rules!2550)) (regOne!7558 (rulesRegex!94 thiss!19762 rules!2550))))) (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(assert (= (and d!362721 c!211911) b!1287497))

(assert (= (and d!362721 (not c!211911)) b!1287495))

(assert (= (and b!1287495 c!211915) b!1287501))

(assert (= (and b!1287495 (not c!211915)) b!1287494))

(assert (= (and b!1287494 c!211912) b!1287492))

(assert (= (and b!1287494 (not c!211912)) b!1287499))

(assert (= (and b!1287499 c!211914) b!1287498))

(assert (= (and b!1287499 (not c!211914)) b!1287493))

(assert (= (and b!1287493 c!211913) b!1287496))

(assert (= (and b!1287493 (not c!211913)) b!1287500))

(assert (= (or b!1287496 b!1287500) bm!88493))

(assert (= (or b!1287498 bm!88493) bm!88492))

(assert (= (or b!1287492 b!1287496) bm!88491))

(assert (= (or b!1287492 bm!88492) bm!88494))

(assert (=> bm!88491 m!1437853))

(declare-fun m!1437959 () Bool)

(assert (=> bm!88491 m!1437959))

(declare-fun m!1437961 () Bool)

(assert (=> b!1287493 m!1437961))

(declare-fun m!1437963 () Bool)

(assert (=> d!362721 m!1437963))

(assert (=> d!362721 m!1437557))

(declare-fun m!1437965 () Bool)

(assert (=> d!362721 m!1437965))

(assert (=> bm!88494 m!1437853))

(declare-fun m!1437967 () Bool)

(assert (=> bm!88494 m!1437967))

(assert (=> b!1287369 d!362721))

(declare-fun d!362723 () Bool)

(assert (=> d!362723 (= (head!2199 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))) (h!18233 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))))

(assert (=> b!1287369 d!362723))

(declare-fun d!362725 () Bool)

(assert (=> d!362725 (= (tail!1827 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))) (t!116897 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))))

(assert (=> b!1287369 d!362725))

(declare-fun d!362727 () Bool)

(declare-fun lt!424171 () Int)

(assert (=> d!362727 (>= lt!424171 0)))

(declare-fun e!825700 () Int)

(assert (=> d!362727 (= lt!424171 e!825700)))

(declare-fun c!211916 () Bool)

(assert (=> d!362727 (= c!211916 ((_ is Nil!12832) (list!4773 lt!424094)))))

(assert (=> d!362727 (= (size!10462 (list!4773 lt!424094)) lt!424171)))

(declare-fun b!1287502 () Bool)

(assert (=> b!1287502 (= e!825700 0)))

(declare-fun b!1287503 () Bool)

(assert (=> b!1287503 (= e!825700 (+ 1 (size!10462 (t!116897 (list!4773 lt!424094)))))))

(assert (= (and d!362727 c!211916) b!1287502))

(assert (= (and d!362727 (not c!211916)) b!1287503))

(declare-fun m!1437969 () Bool)

(assert (=> b!1287503 m!1437969))

(assert (=> d!362657 d!362727))

(declare-fun d!362729 () Bool)

(assert (=> d!362729 (= (list!4773 lt!424094) (list!4777 (c!211853 lt!424094)))))

(declare-fun bs!328211 () Bool)

(assert (= bs!328211 d!362729))

(declare-fun m!1437971 () Bool)

(assert (=> bs!328211 m!1437971))

(assert (=> d!362657 d!362729))

(declare-fun d!362731 () Bool)

(declare-fun lt!424174 () Int)

(assert (=> d!362731 (= lt!424174 (size!10462 (list!4777 (c!211853 lt!424094))))))

(assert (=> d!362731 (= lt!424174 (ite ((_ is Empty!4217) (c!211853 lt!424094)) 0 (ite ((_ is Leaf!6518) (c!211853 lt!424094)) (csize!8665 (c!211853 lt!424094)) (csize!8664 (c!211853 lt!424094)))))))

(assert (=> d!362731 (= (size!10464 (c!211853 lt!424094)) lt!424174)))

(declare-fun bs!328212 () Bool)

(assert (= bs!328212 d!362731))

(assert (=> bs!328212 m!1437971))

(assert (=> bs!328212 m!1437971))

(declare-fun m!1437973 () Bool)

(assert (=> bs!328212 m!1437973))

(assert (=> d!362657 d!362731))

(declare-fun d!362733 () Bool)

(declare-fun c!211919 () Bool)

(assert (=> d!362733 (= c!211919 ((_ is Node!4217) (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))))))

(declare-fun e!825705 () Bool)

(assert (=> d!362733 (= (inv!17249 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))) e!825705)))

(declare-fun b!1287510 () Bool)

(declare-fun inv!17253 (Conc!4217) Bool)

(assert (=> b!1287510 (= e!825705 (inv!17253 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))))))

(declare-fun b!1287511 () Bool)

(declare-fun e!825706 () Bool)

(assert (=> b!1287511 (= e!825705 e!825706)))

(declare-fun res!577241 () Bool)

(assert (=> b!1287511 (= res!577241 (not ((_ is Leaf!6518) (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))))))))

(assert (=> b!1287511 (=> res!577241 e!825706)))

(declare-fun b!1287512 () Bool)

(declare-fun inv!17254 (Conc!4217) Bool)

(assert (=> b!1287512 (= e!825706 (inv!17254 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))))))

(assert (= (and d!362733 c!211919) b!1287510))

(assert (= (and d!362733 (not c!211919)) b!1287511))

(assert (= (and b!1287511 (not res!577241)) b!1287512))

(declare-fun m!1437975 () Bool)

(assert (=> b!1287510 m!1437975))

(declare-fun m!1437977 () Bool)

(assert (=> b!1287512 m!1437977))

(assert (=> b!1287198 d!362733))

(declare-fun d!362735 () Bool)

(declare-fun charsToBigInt!1 (List!12897) Int)

(assert (=> d!362735 (= (inv!17 (value!72589 t2!34)) (= (charsToBigInt!1 (text!16541 (value!72589 t2!34))) (value!72581 (value!72589 t2!34))))))

(declare-fun bs!328214 () Bool)

(assert (= bs!328214 d!362735))

(declare-fun m!1438005 () Bool)

(assert (=> bs!328214 m!1438005))

(assert (=> b!1287226 d!362735))

(declare-fun d!362739 () Bool)

(declare-fun lt!424207 () Bool)

(assert (=> d!362739 (= lt!424207 (isEmpty!7615 (list!4773 (_2!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34)))))))))

(declare-fun isEmpty!7617 (Conc!4217) Bool)

(assert (=> d!362739 (= lt!424207 (isEmpty!7617 (c!211853 (_2!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34)))))))))

(assert (=> d!362739 (= (isEmpty!7616 (_2!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34))))) lt!424207)))

(declare-fun bs!328215 () Bool)

(assert (= bs!328215 d!362739))

(declare-fun m!1438007 () Bool)

(assert (=> bs!328215 m!1438007))

(assert (=> bs!328215 m!1438007))

(declare-fun m!1438009 () Bool)

(assert (=> bs!328215 m!1438009))

(declare-fun m!1438011 () Bool)

(assert (=> bs!328215 m!1438011))

(assert (=> b!1287278 d!362739))

(declare-fun d!362741 () Bool)

(declare-fun e!825720 () Bool)

(assert (=> d!362741 e!825720))

(declare-fun res!577253 () Bool)

(assert (=> d!362741 (=> (not res!577253) (not e!825720))))

(declare-fun e!825721 () Bool)

(assert (=> d!362741 (= res!577253 e!825721)))

(declare-fun c!211927 () Bool)

(declare-fun lt!424220 () tuple2!12638)

(assert (=> d!362741 (= c!211927 (> (size!10463 (_1!7205 lt!424220)) 0))))

(declare-fun lexTailRecV2!340 (LexerInterface!1904 List!12899 BalanceConc!8374 BalanceConc!8374 BalanceConc!8374 BalanceConc!8378) tuple2!12638)

(assert (=> d!362741 (= lt!424220 (lexTailRecV2!340 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34)) (BalanceConc!8375 Empty!4217) (print!710 thiss!19762 (singletonSeq!786 t1!34)) (BalanceConc!8379 Empty!4219)))))

(assert (=> d!362741 (= (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34))) lt!424220)))

(declare-fun b!1287533 () Bool)

(declare-fun e!825722 () Bool)

(assert (=> b!1287533 (= e!825721 e!825722)))

(declare-fun res!577254 () Bool)

(assert (=> b!1287533 (= res!577254 (< (size!10458 (_2!7205 lt!424220)) (size!10458 (print!710 thiss!19762 (singletonSeq!786 t1!34)))))))

(assert (=> b!1287533 (=> (not res!577254) (not e!825722))))

(declare-fun b!1287534 () Bool)

(declare-fun isEmpty!7619 (BalanceConc!8378) Bool)

(assert (=> b!1287534 (= e!825722 (not (isEmpty!7619 (_1!7205 lt!424220))))))

(declare-fun b!1287535 () Bool)

(declare-datatypes ((tuple2!12640 0))(
  ( (tuple2!12641 (_1!7206 List!12903) (_2!7206 List!12898)) )
))
(declare-fun lexList!491 (LexerInterface!1904 List!12899 List!12898) tuple2!12640)

(assert (=> b!1287535 (= e!825720 (= (list!4773 (_2!7205 lt!424220)) (_2!7206 (lexList!491 thiss!19762 rules!2550 (list!4773 (print!710 thiss!19762 (singletonSeq!786 t1!34)))))))))

(declare-fun b!1287536 () Bool)

(declare-fun res!577252 () Bool)

(assert (=> b!1287536 (=> (not res!577252) (not e!825720))))

(assert (=> b!1287536 (= res!577252 (= (list!4776 (_1!7205 lt!424220)) (_1!7206 (lexList!491 thiss!19762 rules!2550 (list!4773 (print!710 thiss!19762 (singletonSeq!786 t1!34)))))))))

(declare-fun b!1287537 () Bool)

(assert (=> b!1287537 (= e!825721 (= (_2!7205 lt!424220) (print!710 thiss!19762 (singletonSeq!786 t1!34))))))

(assert (= (and d!362741 c!211927) b!1287533))

(assert (= (and d!362741 (not c!211927)) b!1287537))

(assert (= (and b!1287533 res!577254) b!1287534))

(assert (= (and d!362741 res!577253) b!1287536))

(assert (= (and b!1287536 res!577252) b!1287535))

(declare-fun m!1438041 () Bool)

(assert (=> b!1287536 m!1438041))

(assert (=> b!1287536 m!1437741))

(declare-fun m!1438043 () Bool)

(assert (=> b!1287536 m!1438043))

(assert (=> b!1287536 m!1438043))

(declare-fun m!1438045 () Bool)

(assert (=> b!1287536 m!1438045))

(declare-fun m!1438047 () Bool)

(assert (=> d!362741 m!1438047))

(assert (=> d!362741 m!1437741))

(assert (=> d!362741 m!1437741))

(declare-fun m!1438049 () Bool)

(assert (=> d!362741 m!1438049))

(declare-fun m!1438051 () Bool)

(assert (=> b!1287533 m!1438051))

(assert (=> b!1287533 m!1437741))

(declare-fun m!1438053 () Bool)

(assert (=> b!1287533 m!1438053))

(declare-fun m!1438055 () Bool)

(assert (=> b!1287534 m!1438055))

(declare-fun m!1438057 () Bool)

(assert (=> b!1287535 m!1438057))

(assert (=> b!1287535 m!1437741))

(assert (=> b!1287535 m!1438043))

(assert (=> b!1287535 m!1438043))

(assert (=> b!1287535 m!1438045))

(assert (=> b!1287278 d!362741))

(declare-fun d!362757 () Bool)

(declare-fun lt!424226 () BalanceConc!8374)

(declare-fun printList!535 (LexerInterface!1904 List!12903) List!12898)

(assert (=> d!362757 (= (list!4773 lt!424226) (printList!535 thiss!19762 (list!4776 (singletonSeq!786 t1!34))))))

(declare-fun printTailRec!517 (LexerInterface!1904 BalanceConc!8378 Int BalanceConc!8374) BalanceConc!8374)

(assert (=> d!362757 (= lt!424226 (printTailRec!517 thiss!19762 (singletonSeq!786 t1!34) 0 (BalanceConc!8375 Empty!4217)))))

(assert (=> d!362757 (= (print!710 thiss!19762 (singletonSeq!786 t1!34)) lt!424226)))

(declare-fun bs!328218 () Bool)

(assert (= bs!328218 d!362757))

(declare-fun m!1438077 () Bool)

(assert (=> bs!328218 m!1438077))

(assert (=> bs!328218 m!1437745))

(assert (=> bs!328218 m!1437747))

(assert (=> bs!328218 m!1437747))

(declare-fun m!1438079 () Bool)

(assert (=> bs!328218 m!1438079))

(assert (=> bs!328218 m!1437745))

(declare-fun m!1438081 () Bool)

(assert (=> bs!328218 m!1438081))

(assert (=> b!1287278 d!362757))

(declare-fun d!362761 () Bool)

(declare-fun e!825734 () Bool)

(assert (=> d!362761 e!825734))

(declare-fun res!577266 () Bool)

(assert (=> d!362761 (=> (not res!577266) (not e!825734))))

(declare-fun lt!424229 () BalanceConc!8378)

(assert (=> d!362761 (= res!577266 (= (list!4776 lt!424229) (Cons!12837 t1!34 Nil!12837)))))

(declare-fun singleton!340 (Token!4080) BalanceConc!8378)

(assert (=> d!362761 (= lt!424229 (singleton!340 t1!34))))

(assert (=> d!362761 (= (singletonSeq!786 t1!34) lt!424229)))

(declare-fun b!1287555 () Bool)

(declare-fun isBalanced!1234 (Conc!4219) Bool)

(assert (=> b!1287555 (= e!825734 (isBalanced!1234 (c!211884 lt!424229)))))

(assert (= (and d!362761 res!577266) b!1287555))

(declare-fun m!1438083 () Bool)

(assert (=> d!362761 m!1438083))

(declare-fun m!1438085 () Bool)

(assert (=> d!362761 m!1438085))

(declare-fun m!1438087 () Bool)

(assert (=> b!1287555 m!1438087))

(assert (=> b!1287278 d!362761))

(declare-fun d!362763 () Bool)

(declare-fun charsToInt!0 (List!12897) (_ BitVec 32))

(assert (=> d!362763 (= (inv!16 (value!72589 t1!34)) (= (charsToInt!0 (text!16540 (value!72589 t1!34))) (value!72580 (value!72589 t1!34))))))

(declare-fun bs!328219 () Bool)

(assert (= bs!328219 d!362763))

(declare-fun m!1438089 () Bool)

(assert (=> bs!328219 m!1438089))

(assert (=> b!1287351 d!362763))

(declare-fun d!362765 () Bool)

(declare-fun res!577271 () Bool)

(declare-fun e!825739 () Bool)

(assert (=> d!362765 (=> res!577271 e!825739)))

(assert (=> d!362765 (= res!577271 ((_ is Nil!12833) rules!2550))))

(assert (=> d!362765 (= (noDuplicateTag!804 thiss!19762 rules!2550 Nil!12838) e!825739)))

(declare-fun b!1287560 () Bool)

(declare-fun e!825740 () Bool)

(assert (=> b!1287560 (= e!825739 e!825740)))

(declare-fun res!577272 () Bool)

(assert (=> b!1287560 (=> (not res!577272) (not e!825740))))

(declare-fun contains!2144 (List!12904 String!15731) Bool)

(assert (=> b!1287560 (= res!577272 (not (contains!2144 Nil!12838 (tag!2471 (h!18234 rules!2550)))))))

(declare-fun b!1287561 () Bool)

(assert (=> b!1287561 (= e!825740 (noDuplicateTag!804 thiss!19762 (t!116898 rules!2550) (Cons!12838 (tag!2471 (h!18234 rules!2550)) Nil!12838)))))

(assert (= (and d!362765 (not res!577271)) b!1287560))

(assert (= (and b!1287560 res!577272) b!1287561))

(declare-fun m!1438097 () Bool)

(assert (=> b!1287560 m!1438097))

(declare-fun m!1438099 () Bool)

(assert (=> b!1287561 m!1438099))

(assert (=> b!1287287 d!362765))

(declare-fun b!1287566 () Bool)

(declare-fun res!577275 () Bool)

(declare-fun e!825743 () Bool)

(assert (=> b!1287566 (=> (not res!577275) (not e!825743))))

(declare-fun lt!424235 () List!12898)

(assert (=> b!1287566 (= res!577275 (= (size!10462 lt!424235) (+ (size!10462 (t!116897 (list!4773 (charsOf!1181 t1!34)))) (size!10462 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(declare-fun d!362769 () Bool)

(assert (=> d!362769 e!825743))

(declare-fun res!577276 () Bool)

(assert (=> d!362769 (=> (not res!577276) (not e!825743))))

(assert (=> d!362769 (= res!577276 (= (content!1815 lt!424235) ((_ map or) (content!1815 (t!116897 (list!4773 (charsOf!1181 t1!34)))) (content!1815 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(declare-fun e!825744 () List!12898)

(assert (=> d!362769 (= lt!424235 e!825744)))

(declare-fun c!211931 () Bool)

(assert (=> d!362769 (= c!211931 ((_ is Nil!12832) (t!116897 (list!4773 (charsOf!1181 t1!34)))))))

(assert (=> d!362769 (= (++!3241 (t!116897 (list!4773 (charsOf!1181 t1!34))) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)) lt!424235)))

(declare-fun b!1287567 () Bool)

(assert (=> b!1287567 (= e!825743 (or (not (= (Cons!12832 (apply!2759 lt!424094 0) Nil!12832) Nil!12832)) (= lt!424235 (t!116897 (list!4773 (charsOf!1181 t1!34))))))))

(declare-fun b!1287565 () Bool)

(assert (=> b!1287565 (= e!825744 (Cons!12832 (h!18233 (t!116897 (list!4773 (charsOf!1181 t1!34)))) (++!3241 (t!116897 (t!116897 (list!4773 (charsOf!1181 t1!34)))) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))))

(declare-fun b!1287564 () Bool)

(assert (=> b!1287564 (= e!825744 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))

(assert (= (and d!362769 c!211931) b!1287564))

(assert (= (and d!362769 (not c!211931)) b!1287565))

(assert (= (and d!362769 res!577276) b!1287566))

(assert (= (and b!1287566 res!577275) b!1287567))

(declare-fun m!1438101 () Bool)

(assert (=> b!1287566 m!1438101))

(declare-fun m!1438103 () Bool)

(assert (=> b!1287566 m!1438103))

(assert (=> b!1287566 m!1437839))

(declare-fun m!1438105 () Bool)

(assert (=> d!362769 m!1438105))

(declare-fun m!1438107 () Bool)

(assert (=> d!362769 m!1438107))

(assert (=> d!362769 m!1437845))

(declare-fun m!1438109 () Bool)

(assert (=> b!1287565 m!1438109))

(assert (=> b!1287361 d!362769))

(declare-fun d!362771 () Bool)

(declare-fun c!211932 () Bool)

(assert (=> d!362771 (= c!211932 ((_ is Node!4217) (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))))))

(declare-fun e!825746 () Bool)

(assert (=> d!362771 (= (inv!17249 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))) e!825746)))

(declare-fun b!1287569 () Bool)

(assert (=> b!1287569 (= e!825746 (inv!17253 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))))))

(declare-fun b!1287570 () Bool)

(declare-fun e!825747 () Bool)

(assert (=> b!1287570 (= e!825746 e!825747)))

(declare-fun res!577278 () Bool)

(assert (=> b!1287570 (= res!577278 (not ((_ is Leaf!6518) (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))))))))

(assert (=> b!1287570 (=> res!577278 e!825747)))

(declare-fun b!1287571 () Bool)

(assert (=> b!1287571 (= e!825747 (inv!17254 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))))))

(assert (= (and d!362771 c!211932) b!1287569))

(assert (= (and d!362771 (not c!211932)) b!1287570))

(assert (= (and b!1287570 (not res!577278)) b!1287571))

(declare-fun m!1438117 () Bool)

(assert (=> b!1287569 m!1438117))

(declare-fun m!1438119 () Bool)

(assert (=> b!1287571 m!1438119))

(assert (=> b!1287176 d!362771))

(declare-fun d!362775 () Bool)

(declare-fun lt!424241 () Token!4080)

(declare-fun apply!2768 (List!12903 Int) Token!4080)

(assert (=> d!362775 (= lt!424241 (apply!2768 (list!4776 (_1!7205 lt!424125)) 0))))

(declare-fun apply!2769 (Conc!4219 Int) Token!4080)

(assert (=> d!362775 (= lt!424241 (apply!2769 (c!211884 (_1!7205 lt!424125)) 0))))

(declare-fun e!825754 () Bool)

(assert (=> d!362775 e!825754))

(declare-fun res!577283 () Bool)

(assert (=> d!362775 (=> (not res!577283) (not e!825754))))

(assert (=> d!362775 (= res!577283 (<= 0 0))))

(assert (=> d!362775 (= (apply!2763 (_1!7205 lt!424125) 0) lt!424241)))

(declare-fun b!1287580 () Bool)

(assert (=> b!1287580 (= e!825754 (< 0 (size!10463 (_1!7205 lt!424125))))))

(assert (= (and d!362775 res!577283) b!1287580))

(declare-fun m!1438125 () Bool)

(assert (=> d!362775 m!1438125))

(assert (=> d!362775 m!1438125))

(declare-fun m!1438127 () Bool)

(assert (=> d!362775 m!1438127))

(declare-fun m!1438129 () Bool)

(assert (=> d!362775 m!1438129))

(assert (=> b!1287580 m!1437751))

(assert (=> b!1287276 d!362775))

(declare-fun d!362781 () Bool)

(declare-fun e!825767 () Bool)

(assert (=> d!362781 e!825767))

(declare-fun res!577297 () Bool)

(assert (=> d!362781 (=> (not res!577297) (not e!825767))))

(declare-fun appendAssocInst!241 (Conc!4217 Conc!4217) Bool)

(assert (=> d!362781 (= res!577297 (appendAssocInst!241 (c!211853 (charsOf!1181 t1!34)) (c!211853 (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0)))))))

(declare-fun lt!424249 () BalanceConc!8374)

(declare-fun ++!3245 (Conc!4217 Conc!4217) Conc!4217)

(assert (=> d!362781 (= lt!424249 (BalanceConc!8375 (++!3245 (c!211853 (charsOf!1181 t1!34)) (c!211853 (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))))))))

(assert (=> d!362781 (= (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))) lt!424249)))

(declare-fun b!1287606 () Bool)

(declare-fun res!577295 () Bool)

(assert (=> b!1287606 (=> (not res!577295) (not e!825767))))

(declare-fun isBalanced!1236 (Conc!4217) Bool)

(assert (=> b!1287606 (= res!577295 (isBalanced!1236 (++!3245 (c!211853 (charsOf!1181 t1!34)) (c!211853 (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))))))))

(declare-fun b!1287608 () Bool)

(declare-fun res!577298 () Bool)

(assert (=> b!1287608 (=> (not res!577298) (not e!825767))))

(declare-fun height!601 (Conc!4217) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1287608 (= res!577298 (>= (height!601 (++!3245 (c!211853 (charsOf!1181 t1!34)) (c!211853 (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))))) (max!0 (height!601 (c!211853 (charsOf!1181 t1!34))) (height!601 (c!211853 (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0)))))))))

(declare-fun b!1287609 () Bool)

(assert (=> b!1287609 (= e!825767 (= (list!4773 lt!424249) (++!3241 (list!4773 (charsOf!1181 t1!34)) (list!4773 (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))))))))

(declare-fun b!1287607 () Bool)

(declare-fun res!577296 () Bool)

(assert (=> b!1287607 (=> (not res!577296) (not e!825767))))

(assert (=> b!1287607 (= res!577296 (<= (height!601 (++!3245 (c!211853 (charsOf!1181 t1!34)) (c!211853 (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))))) (+ (max!0 (height!601 (c!211853 (charsOf!1181 t1!34))) (height!601 (c!211853 (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))))) 1)))))

(assert (= (and d!362781 res!577297) b!1287606))

(assert (= (and b!1287606 res!577295) b!1287607))

(assert (= (and b!1287607 res!577296) b!1287608))

(assert (= (and b!1287608 res!577298) b!1287609))

(declare-fun m!1438139 () Bool)

(assert (=> b!1287607 m!1438139))

(declare-fun m!1438141 () Bool)

(assert (=> b!1287607 m!1438141))

(declare-fun m!1438143 () Bool)

(assert (=> b!1287607 m!1438143))

(declare-fun m!1438145 () Bool)

(assert (=> b!1287607 m!1438145))

(declare-fun m!1438147 () Bool)

(assert (=> b!1287607 m!1438147))

(assert (=> b!1287607 m!1438145))

(assert (=> b!1287607 m!1438143))

(assert (=> b!1287607 m!1438139))

(declare-fun m!1438149 () Bool)

(assert (=> b!1287609 m!1438149))

(assert (=> b!1287609 m!1437551))

(assert (=> b!1287609 m!1437553))

(assert (=> b!1287609 m!1437823))

(declare-fun m!1438151 () Bool)

(assert (=> b!1287609 m!1438151))

(assert (=> b!1287609 m!1437553))

(assert (=> b!1287609 m!1438151))

(declare-fun m!1438153 () Bool)

(assert (=> b!1287609 m!1438153))

(assert (=> b!1287606 m!1438139))

(assert (=> b!1287606 m!1438139))

(declare-fun m!1438155 () Bool)

(assert (=> b!1287606 m!1438155))

(declare-fun m!1438157 () Bool)

(assert (=> d!362781 m!1438157))

(assert (=> d!362781 m!1438139))

(assert (=> b!1287608 m!1438139))

(assert (=> b!1287608 m!1438141))

(assert (=> b!1287608 m!1438143))

(assert (=> b!1287608 m!1438145))

(assert (=> b!1287608 m!1438147))

(assert (=> b!1287608 m!1438145))

(assert (=> b!1287608 m!1438143))

(assert (=> b!1287608 m!1438139))

(assert (=> d!362661 d!362781))

(declare-fun d!362785 () Bool)

(declare-fun lt!424288 () Bool)

(assert (=> d!362785 (= lt!424288 (prefixMatch!36 (rulesRegex!94 thiss!19762 rules!2550) (list!4773 (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))))))))

(declare-datatypes ((Context!1126 0))(
  ( (Context!1127 (exprs!1063 List!12905)) )
))
(declare-fun prefixMatchZipperSequence!127 ((InoxSet Context!1126) BalanceConc!8374 Int) Bool)

(declare-fun focus!54 (Regex!3523) (InoxSet Context!1126))

(assert (=> d!362785 (= lt!424288 (prefixMatchZipperSequence!127 (focus!54 (rulesRegex!94 thiss!19762 rules!2550)) (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))) 0))))

(declare-fun lt!424282 () Unit!19014)

(declare-fun lt!424287 () Unit!19014)

(assert (=> d!362785 (= lt!424282 lt!424287)))

(declare-fun lt!424283 () List!12898)

(declare-fun lt!424284 () (InoxSet Context!1126))

(declare-fun prefixMatchZipper!34 ((InoxSet Context!1126) List!12898) Bool)

(assert (=> d!362785 (= (prefixMatch!36 (rulesRegex!94 thiss!19762 rules!2550) lt!424283) (prefixMatchZipper!34 lt!424284 lt!424283))))

(declare-datatypes ((List!12907 0))(
  ( (Nil!12841) (Cons!12841 (h!18242 Context!1126) (t!116958 List!12907)) )
))
(declare-fun lt!424285 () List!12907)

(declare-fun prefixMatchZipperRegexEquiv!34 ((InoxSet Context!1126) List!12907 Regex!3523 List!12898) Unit!19014)

(assert (=> d!362785 (= lt!424287 (prefixMatchZipperRegexEquiv!34 lt!424284 lt!424285 (rulesRegex!94 thiss!19762 rules!2550) lt!424283))))

(assert (=> d!362785 (= lt!424283 (list!4773 (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0)))))))

(declare-fun toList!718 ((InoxSet Context!1126)) List!12907)

(assert (=> d!362785 (= lt!424285 (toList!718 (focus!54 (rulesRegex!94 thiss!19762 rules!2550))))))

(assert (=> d!362785 (= lt!424284 (focus!54 (rulesRegex!94 thiss!19762 rules!2550)))))

(declare-fun lt!424286 () Unit!19014)

(declare-fun lt!424279 () Unit!19014)

(assert (=> d!362785 (= lt!424286 lt!424279)))

(declare-fun lt!424281 () Int)

(declare-fun lt!424280 () (InoxSet Context!1126))

(declare-fun dropList!344 (BalanceConc!8374 Int) List!12898)

(assert (=> d!362785 (= (prefixMatchZipper!34 lt!424280 (dropList!344 (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))) lt!424281)) (prefixMatchZipperSequence!127 lt!424280 (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))) lt!424281))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!34 ((InoxSet Context!1126) BalanceConc!8374 Int) Unit!19014)

(assert (=> d!362785 (= lt!424279 (lemmaprefixMatchZipperSequenceEquivalent!34 lt!424280 (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0))) lt!424281))))

(assert (=> d!362785 (= lt!424281 0)))

(assert (=> d!362785 (= lt!424280 (focus!54 (rulesRegex!94 thiss!19762 rules!2550)))))

(assert (=> d!362785 (validRegex!1514 (rulesRegex!94 thiss!19762 rules!2550))))

(assert (=> d!362785 (= (prefixMatchZipperSequence!125 (rulesRegex!94 thiss!19762 rules!2550) (++!3243 (charsOf!1181 t1!34) (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0)))) lt!424288)))

(declare-fun bs!328240 () Bool)

(assert (= bs!328240 d!362785))

(assert (=> bs!328240 m!1437557))

(declare-fun m!1438229 () Bool)

(assert (=> bs!328240 m!1438229))

(declare-fun m!1438233 () Bool)

(assert (=> bs!328240 m!1438233))

(assert (=> bs!328240 m!1437557))

(assert (=> bs!328240 m!1437965))

(assert (=> bs!328240 m!1437825))

(assert (=> bs!328240 m!1438229))

(declare-fun m!1438235 () Bool)

(assert (=> bs!328240 m!1438235))

(assert (=> bs!328240 m!1437825))

(declare-fun m!1438237 () Bool)

(assert (=> bs!328240 m!1438237))

(assert (=> bs!328240 m!1437825))

(declare-fun m!1438241 () Bool)

(assert (=> bs!328240 m!1438241))

(declare-fun m!1438247 () Bool)

(assert (=> bs!328240 m!1438247))

(declare-fun m!1438249 () Bool)

(assert (=> bs!328240 m!1438249))

(assert (=> bs!328240 m!1437557))

(assert (=> bs!328240 m!1438247))

(assert (=> bs!328240 m!1438241))

(declare-fun m!1438251 () Bool)

(assert (=> bs!328240 m!1438251))

(assert (=> bs!328240 m!1437557))

(declare-fun m!1438253 () Bool)

(assert (=> bs!328240 m!1438253))

(assert (=> bs!328240 m!1438247))

(assert (=> bs!328240 m!1437825))

(declare-fun m!1438255 () Bool)

(assert (=> bs!328240 m!1438255))

(assert (=> bs!328240 m!1437825))

(declare-fun m!1438257 () Bool)

(assert (=> bs!328240 m!1438257))

(assert (=> bs!328240 m!1437557))

(declare-fun m!1438259 () Bool)

(assert (=> bs!328240 m!1438259))

(assert (=> d!362661 d!362785))

(declare-fun d!362829 () Bool)

(declare-fun e!825804 () Bool)

(assert (=> d!362829 e!825804))

(declare-fun res!577315 () Bool)

(assert (=> d!362829 (=> (not res!577315) (not e!825804))))

(declare-fun lt!424298 () BalanceConc!8374)

(assert (=> d!362829 (= res!577315 (= (list!4773 lt!424298) (Cons!12832 (apply!2759 (charsOf!1181 t2!34) 0) Nil!12832)))))

(declare-fun singleton!342 (C!7336) BalanceConc!8374)

(assert (=> d!362829 (= lt!424298 (singleton!342 (apply!2759 (charsOf!1181 t2!34) 0)))))

(assert (=> d!362829 (= (singletonSeq!787 (apply!2759 (charsOf!1181 t2!34) 0)) lt!424298)))

(declare-fun b!1287670 () Bool)

(assert (=> b!1287670 (= e!825804 (isBalanced!1236 (c!211853 lt!424298)))))

(assert (= (and d!362829 res!577315) b!1287670))

(declare-fun m!1438287 () Bool)

(assert (=> d!362829 m!1438287))

(assert (=> d!362829 m!1437821))

(declare-fun m!1438289 () Bool)

(assert (=> d!362829 m!1438289))

(declare-fun m!1438291 () Bool)

(assert (=> b!1287670 m!1438291))

(assert (=> d!362661 d!362829))

(assert (=> d!362661 d!362675))

(declare-fun d!362837 () Bool)

(declare-fun lt!424299 () C!7336)

(assert (=> d!362837 (= lt!424299 (apply!2764 (list!4773 (charsOf!1181 t2!34)) 0))))

(assert (=> d!362837 (= lt!424299 (apply!2765 (c!211853 (charsOf!1181 t2!34)) 0))))

(declare-fun e!825805 () Bool)

(assert (=> d!362837 e!825805))

(declare-fun res!577316 () Bool)

(assert (=> d!362837 (=> (not res!577316) (not e!825805))))

(assert (=> d!362837 (= res!577316 (<= 0 0))))

(assert (=> d!362837 (= (apply!2759 (charsOf!1181 t2!34) 0) lt!424299)))

(declare-fun b!1287671 () Bool)

(assert (=> b!1287671 (= e!825805 (< 0 (size!10458 (charsOf!1181 t2!34))))))

(assert (= (and d!362837 res!577316) b!1287671))

(assert (=> d!362837 m!1437523))

(declare-fun m!1438303 () Bool)

(assert (=> d!362837 m!1438303))

(assert (=> d!362837 m!1438303))

(declare-fun m!1438309 () Bool)

(assert (=> d!362837 m!1438309))

(declare-fun m!1438311 () Bool)

(assert (=> d!362837 m!1438311))

(assert (=> b!1287671 m!1437523))

(declare-fun m!1438313 () Bool)

(assert (=> b!1287671 m!1438313))

(assert (=> d!362661 d!362837))

(assert (=> d!362661 d!362673))

(assert (=> d!362661 d!362659))

(assert (=> d!362613 d!362741))

(assert (=> d!362613 d!362757))

(declare-fun d!362843 () Bool)

(declare-fun lt!424303 () Int)

(declare-fun size!10465 (List!12903) Int)

(assert (=> d!362843 (= lt!424303 (size!10465 (list!4776 (_1!7205 lt!424125))))))

(declare-fun size!10466 (Conc!4219) Int)

(assert (=> d!362843 (= lt!424303 (size!10466 (c!211884 (_1!7205 lt!424125))))))

(assert (=> d!362843 (= (size!10463 (_1!7205 lt!424125)) lt!424303)))

(declare-fun bs!328245 () Bool)

(assert (= bs!328245 d!362843))

(assert (=> bs!328245 m!1438125))

(assert (=> bs!328245 m!1438125))

(declare-fun m!1438317 () Bool)

(assert (=> bs!328245 m!1438317))

(declare-fun m!1438319 () Bool)

(assert (=> bs!328245 m!1438319))

(assert (=> d!362613 d!362843))

(assert (=> d!362613 d!362761))

(declare-fun d!362847 () Bool)

(declare-fun list!4778 (Conc!4219) List!12903)

(assert (=> d!362847 (= (list!4776 (_1!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34))))) (list!4778 (c!211884 (_1!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t1!34)))))))))

(declare-fun bs!328246 () Bool)

(assert (= bs!328246 d!362847))

(declare-fun m!1438321 () Bool)

(assert (=> bs!328246 m!1438321))

(assert (=> d!362613 d!362847))

(declare-fun d!362849 () Bool)

(assert (=> d!362849 (= (list!4776 (singletonSeq!786 t1!34)) (list!4778 (c!211884 (singletonSeq!786 t1!34))))))

(declare-fun bs!328247 () Bool)

(assert (= bs!328247 d!362849))

(declare-fun m!1438323 () Bool)

(assert (=> bs!328247 m!1438323))

(assert (=> d!362613 d!362849))

(assert (=> d!362613 d!362643))

(declare-fun b!1287699 () Bool)

(declare-fun e!825825 () Bool)

(declare-fun call!88520 () Bool)

(assert (=> b!1287699 (= e!825825 call!88520)))

(declare-fun b!1287700 () Bool)

(declare-fun e!825826 () Bool)

(assert (=> b!1287700 (= e!825826 e!825825)))

(declare-fun res!577335 () Bool)

(assert (=> b!1287700 (= res!577335 (not ((_ is Cons!12833) rules!2550)))))

(assert (=> b!1287700 (=> res!577335 e!825825)))

(declare-fun b!1287701 () Bool)

(declare-fun e!825827 () Bool)

(assert (=> b!1287701 (= e!825826 e!825827)))

(declare-fun res!577334 () Bool)

(declare-fun rulesUseDisjointChars!141 (Rule!4218 Rule!4218) Bool)

(assert (=> b!1287701 (= res!577334 (rulesUseDisjointChars!141 (h!18234 rules!2550) (h!18234 rules!2550)))))

(assert (=> b!1287701 (=> (not res!577334) (not e!825827))))

(declare-fun b!1287702 () Bool)

(assert (=> b!1287702 (= e!825827 call!88520)))

(declare-fun bm!88515 () Bool)

(assert (=> bm!88515 (= call!88520 (ruleDisjointCharsFromAllFromOtherType!278 (h!18234 rules!2550) (t!116898 rules!2550)))))

(declare-fun d!362851 () Bool)

(declare-fun c!211972 () Bool)

(assert (=> d!362851 (= c!211972 (and ((_ is Cons!12833) rules!2550) (not (= (isSeparator!2209 (h!18234 rules!2550)) (isSeparator!2209 (h!18234 rules!2550))))))))

(assert (=> d!362851 (= (ruleDisjointCharsFromAllFromOtherType!278 (h!18234 rules!2550) rules!2550) e!825826)))

(assert (= (and d!362851 c!211972) b!1287701))

(assert (= (and d!362851 (not c!211972)) b!1287700))

(assert (= (and b!1287701 res!577334) b!1287702))

(assert (= (and b!1287700 (not res!577335)) b!1287699))

(assert (= (or b!1287702 b!1287699) bm!88515))

(declare-fun m!1438337 () Bool)

(assert (=> b!1287701 m!1438337))

(declare-fun m!1438339 () Bool)

(assert (=> bm!88515 m!1438339))

(assert (=> b!1287345 d!362851))

(declare-fun bs!328251 () Bool)

(declare-fun d!362861 () Bool)

(assert (= bs!328251 (and d!362861 d!362715)))

(declare-fun lambda!50493 () Int)

(assert (=> bs!328251 (= (and (= (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toChars!3255 (transformation!2209 (h!18234 rules!2550)))) (= (toValue!3396 (transformation!2209 (rule!3948 t2!34))) (toValue!3396 (transformation!2209 (h!18234 rules!2550))))) (= lambda!50493 lambda!50485))))

(assert (=> d!362861 true))

(assert (=> d!362861 (< (dynLambda!5597 order!7819 (toChars!3255 (transformation!2209 (rule!3948 t2!34)))) (dynLambda!5598 order!7821 lambda!50493))))

(assert (=> d!362861 true))

(assert (=> d!362861 (< (dynLambda!5599 order!7823 (toValue!3396 (transformation!2209 (rule!3948 t2!34)))) (dynLambda!5598 order!7821 lambda!50493))))

(assert (=> d!362861 (= (semiInverseModEq!834 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toValue!3396 (transformation!2209 (rule!3948 t2!34)))) (Forall!499 lambda!50493))))

(declare-fun bs!328252 () Bool)

(assert (= bs!328252 d!362861))

(declare-fun m!1438343 () Bool)

(assert (=> bs!328252 m!1438343))

(assert (=> d!362637 d!362861))

(declare-fun bs!328253 () Bool)

(declare-fun d!362865 () Bool)

(assert (= bs!328253 (and d!362865 d!362653)))

(declare-fun lambda!50494 () Int)

(assert (=> bs!328253 (= lambda!50494 lambda!50472)))

(assert (=> d!362865 true))

(declare-fun lt!424304 () Bool)

(assert (=> d!362865 (= lt!424304 (forall!3239 (t!116898 rules!2550) lambda!50494))))

(declare-fun e!825829 () Bool)

(assert (=> d!362865 (= lt!424304 e!825829)))

(declare-fun res!577337 () Bool)

(assert (=> d!362865 (=> res!577337 e!825829)))

(assert (=> d!362865 (= res!577337 (not ((_ is Cons!12833) (t!116898 rules!2550))))))

(assert (=> d!362865 (= (rulesValidInductive!698 thiss!19762 (t!116898 rules!2550)) lt!424304)))

(declare-fun b!1287703 () Bool)

(declare-fun e!825828 () Bool)

(assert (=> b!1287703 (= e!825829 e!825828)))

(declare-fun res!577336 () Bool)

(assert (=> b!1287703 (=> (not res!577336) (not e!825828))))

(assert (=> b!1287703 (= res!577336 (ruleValid!541 thiss!19762 (h!18234 (t!116898 rules!2550))))))

(declare-fun b!1287704 () Bool)

(assert (=> b!1287704 (= e!825828 (rulesValidInductive!698 thiss!19762 (t!116898 (t!116898 rules!2550))))))

(assert (= (and d!362865 (not res!577337)) b!1287703))

(assert (= (and b!1287703 res!577336) b!1287704))

(declare-fun m!1438345 () Bool)

(assert (=> d!362865 m!1438345))

(declare-fun m!1438347 () Bool)

(assert (=> b!1287703 m!1438347))

(declare-fun m!1438349 () Bool)

(assert (=> b!1287704 m!1438349))

(assert (=> b!1287338 d!362865))

(declare-fun d!362867 () Bool)

(declare-fun lt!424307 () C!7336)

(declare-fun contains!2146 (List!12898 C!7336) Bool)

(assert (=> d!362867 (contains!2146 (list!4773 lt!424094) lt!424307)))

(declare-fun e!825840 () C!7336)

(assert (=> d!362867 (= lt!424307 e!825840)))

(declare-fun c!211981 () Bool)

(assert (=> d!362867 (= c!211981 (= 0 0))))

(declare-fun e!825841 () Bool)

(assert (=> d!362867 e!825841))

(declare-fun res!577340 () Bool)

(assert (=> d!362867 (=> (not res!577340) (not e!825841))))

(assert (=> d!362867 (= res!577340 (<= 0 0))))

(assert (=> d!362867 (= (apply!2764 (list!4773 lt!424094) 0) lt!424307)))

(declare-fun b!1287723 () Bool)

(assert (=> b!1287723 (= e!825841 (< 0 (size!10462 (list!4773 lt!424094))))))

(declare-fun b!1287724 () Bool)

(assert (=> b!1287724 (= e!825840 (head!2199 (list!4773 lt!424094)))))

(declare-fun b!1287725 () Bool)

(assert (=> b!1287725 (= e!825840 (apply!2764 (tail!1827 (list!4773 lt!424094)) (- 0 1)))))

(assert (= (and d!362867 res!577340) b!1287723))

(assert (= (and d!362867 c!211981) b!1287724))

(assert (= (and d!362867 (not c!211981)) b!1287725))

(assert (=> d!362867 m!1437813))

(declare-fun m!1438361 () Bool)

(assert (=> d!362867 m!1438361))

(assert (=> b!1287723 m!1437813))

(assert (=> b!1287723 m!1437815))

(assert (=> b!1287724 m!1437813))

(declare-fun m!1438363 () Bool)

(assert (=> b!1287724 m!1438363))

(assert (=> b!1287725 m!1437813))

(declare-fun m!1438365 () Bool)

(assert (=> b!1287725 m!1438365))

(assert (=> b!1287725 m!1438365))

(declare-fun m!1438367 () Bool)

(assert (=> b!1287725 m!1438367))

(assert (=> d!362669 d!362867))

(assert (=> d!362669 d!362729))

(declare-fun b!1287766 () Bool)

(declare-fun e!825866 () C!7336)

(declare-fun apply!2771 (IArray!8439 Int) C!7336)

(assert (=> b!1287766 (= e!825866 (apply!2771 (xs!6928 (c!211853 lt!424094)) 0))))

(declare-fun b!1287767 () Bool)

(declare-fun e!825868 () C!7336)

(declare-fun call!88523 () C!7336)

(assert (=> b!1287767 (= e!825868 call!88523)))

(declare-fun b!1287768 () Bool)

(declare-fun e!825867 () Bool)

(assert (=> b!1287768 (= e!825867 (< 0 (size!10464 (c!211853 lt!424094))))))

(declare-fun b!1287769 () Bool)

(declare-fun e!825865 () Int)

(assert (=> b!1287769 (= e!825865 (- 0 (size!10464 (left!11047 (c!211853 lt!424094)))))))

(declare-fun b!1287770 () Bool)

(assert (=> b!1287770 (= e!825865 0)))

(declare-fun b!1287771 () Bool)

(assert (=> b!1287771 (= e!825866 e!825868)))

(declare-fun lt!424320 () Bool)

(declare-fun appendIndex!121 (List!12898 List!12898 Int) Bool)

(assert (=> b!1287771 (= lt!424320 (appendIndex!121 (list!4777 (left!11047 (c!211853 lt!424094))) (list!4777 (right!11377 (c!211853 lt!424094))) 0))))

(declare-fun c!212001 () Bool)

(assert (=> b!1287771 (= c!212001 (< 0 (size!10464 (left!11047 (c!211853 lt!424094)))))))

(declare-fun b!1287772 () Bool)

(assert (=> b!1287772 (= e!825868 call!88523)))

(declare-fun d!362873 () Bool)

(declare-fun lt!424321 () C!7336)

(assert (=> d!362873 (= lt!424321 (apply!2764 (list!4777 (c!211853 lt!424094)) 0))))

(assert (=> d!362873 (= lt!424321 e!825866)))

(declare-fun c!212000 () Bool)

(assert (=> d!362873 (= c!212000 ((_ is Leaf!6518) (c!211853 lt!424094)))))

(assert (=> d!362873 e!825867))

(declare-fun res!577347 () Bool)

(assert (=> d!362873 (=> (not res!577347) (not e!825867))))

(assert (=> d!362873 (= res!577347 (<= 0 0))))

(assert (=> d!362873 (= (apply!2765 (c!211853 lt!424094) 0) lt!424321)))

(declare-fun bm!88518 () Bool)

(declare-fun c!211999 () Bool)

(assert (=> bm!88518 (= c!211999 c!212001)))

(assert (=> bm!88518 (= call!88523 (apply!2765 (ite c!212001 (left!11047 (c!211853 lt!424094)) (right!11377 (c!211853 lt!424094))) e!825865))))

(assert (= (and d!362873 res!577347) b!1287768))

(assert (= (and d!362873 c!212000) b!1287766))

(assert (= (and d!362873 (not c!212000)) b!1287771))

(assert (= (and b!1287771 c!212001) b!1287767))

(assert (= (and b!1287771 (not c!212001)) b!1287772))

(assert (= (or b!1287767 b!1287772) bm!88518))

(assert (= (and bm!88518 c!211999) b!1287770))

(assert (= (and bm!88518 (not c!211999)) b!1287769))

(declare-fun m!1438375 () Bool)

(assert (=> b!1287766 m!1438375))

(declare-fun m!1438377 () Bool)

(assert (=> bm!88518 m!1438377))

(declare-fun m!1438379 () Bool)

(assert (=> b!1287771 m!1438379))

(declare-fun m!1438381 () Bool)

(assert (=> b!1287771 m!1438381))

(assert (=> b!1287771 m!1438379))

(assert (=> b!1287771 m!1438381))

(declare-fun m!1438383 () Bool)

(assert (=> b!1287771 m!1438383))

(declare-fun m!1438385 () Bool)

(assert (=> b!1287771 m!1438385))

(assert (=> b!1287769 m!1438385))

(assert (=> b!1287768 m!1437817))

(assert (=> d!362873 m!1437971))

(assert (=> d!362873 m!1437971))

(declare-fun m!1438387 () Bool)

(assert (=> d!362873 m!1438387))

(assert (=> d!362669 d!362873))

(declare-fun d!362877 () Bool)

(declare-fun charsToBigInt!0 (List!12897 Int) Int)

(assert (=> d!362877 (= (inv!15 (value!72589 t2!34)) (= (charsToBigInt!0 (text!16542 (value!72589 t2!34)) 0) (value!72584 (value!72589 t2!34))))))

(declare-fun bs!328257 () Bool)

(assert (= bs!328257 d!362877))

(declare-fun m!1438389 () Bool)

(assert (=> bs!328257 m!1438389))

(assert (=> b!1287228 d!362877))

(declare-fun d!362879 () Bool)

(declare-fun lostCauseFct!94 (Regex!3523) Bool)

(assert (=> d!362879 (= (lostCause!242 (rulesRegex!94 thiss!19762 rules!2550)) (lostCauseFct!94 (rulesRegex!94 thiss!19762 rules!2550)))))

(declare-fun bs!328258 () Bool)

(assert (= bs!328258 d!362879))

(assert (=> bs!328258 m!1437557))

(declare-fun m!1438411 () Bool)

(assert (=> bs!328258 m!1438411))

(assert (=> b!1287368 d!362879))

(declare-fun bs!328259 () Bool)

(declare-fun d!362883 () Bool)

(assert (= bs!328259 (and d!362883 d!362653)))

(declare-fun lambda!50506 () Int)

(assert (=> bs!328259 (= lambda!50506 lambda!50472)))

(declare-fun bs!328260 () Bool)

(assert (= bs!328260 (and d!362883 d!362865)))

(assert (=> bs!328260 (= lambda!50506 lambda!50494)))

(assert (=> d!362883 true))

(declare-fun lt!424327 () Bool)

(assert (=> d!362883 (= lt!424327 (rulesValidInductive!698 thiss!19762 rules!2550))))

(assert (=> d!362883 (= lt!424327 (forall!3239 rules!2550 lambda!50506))))

(assert (=> d!362883 (= (rulesValid!804 thiss!19762 rules!2550) lt!424327)))

(declare-fun bs!328261 () Bool)

(assert (= bs!328261 d!362883))

(assert (=> bs!328261 m!1437515))

(declare-fun m!1438413 () Bool)

(assert (=> bs!328261 m!1438413))

(assert (=> d!362641 d!362883))

(declare-fun d!362885 () Bool)

(declare-fun lt!424329 () Bool)

(assert (=> d!362885 (= lt!424329 (isEmpty!7615 (list!4773 (_2!7205 lt!424127))))))

(assert (=> d!362885 (= lt!424329 (isEmpty!7617 (c!211853 (_2!7205 lt!424127))))))

(assert (=> d!362885 (= (isEmpty!7616 (_2!7205 lt!424127)) lt!424329)))

(declare-fun bs!328262 () Bool)

(assert (= bs!328262 d!362885))

(declare-fun m!1438421 () Bool)

(assert (=> bs!328262 m!1438421))

(assert (=> bs!328262 m!1438421))

(declare-fun m!1438425 () Bool)

(assert (=> bs!328262 m!1438425))

(declare-fun m!1438427 () Bool)

(assert (=> bs!328262 m!1438427))

(assert (=> b!1287283 d!362885))

(declare-fun d!362887 () Bool)

(declare-fun c!212011 () Bool)

(assert (=> d!362887 (= c!212011 ((_ is Nil!12832) lt!424141))))

(declare-fun e!825880 () (InoxSet C!7336))

(assert (=> d!362887 (= (content!1815 lt!424141) e!825880)))

(declare-fun b!1287793 () Bool)

(assert (=> b!1287793 (= e!825880 ((as const (Array C!7336 Bool)) false))))

(declare-fun b!1287794 () Bool)

(assert (=> b!1287794 (= e!825880 ((_ map or) (store ((as const (Array C!7336 Bool)) false) (h!18233 lt!424141) true) (content!1815 (t!116897 lt!424141))))))

(assert (= (and d!362887 c!212011) b!1287793))

(assert (= (and d!362887 (not c!212011)) b!1287794))

(declare-fun m!1438437 () Bool)

(assert (=> b!1287794 m!1438437))

(declare-fun m!1438439 () Bool)

(assert (=> b!1287794 m!1438439))

(assert (=> d!362665 d!362887))

(declare-fun d!362893 () Bool)

(declare-fun c!212012 () Bool)

(assert (=> d!362893 (= c!212012 ((_ is Nil!12832) (list!4773 (charsOf!1181 t1!34))))))

(declare-fun e!825881 () (InoxSet C!7336))

(assert (=> d!362893 (= (content!1815 (list!4773 (charsOf!1181 t1!34))) e!825881)))

(declare-fun b!1287795 () Bool)

(assert (=> b!1287795 (= e!825881 ((as const (Array C!7336 Bool)) false))))

(declare-fun b!1287796 () Bool)

(assert (=> b!1287796 (= e!825881 ((_ map or) (store ((as const (Array C!7336 Bool)) false) (h!18233 (list!4773 (charsOf!1181 t1!34))) true) (content!1815 (t!116897 (list!4773 (charsOf!1181 t1!34))))))))

(assert (= (and d!362893 c!212012) b!1287795))

(assert (= (and d!362893 (not c!212012)) b!1287796))

(declare-fun m!1438441 () Bool)

(assert (=> b!1287796 m!1438441))

(assert (=> b!1287796 m!1438107))

(assert (=> d!362665 d!362893))

(declare-fun d!362895 () Bool)

(declare-fun c!212013 () Bool)

(assert (=> d!362895 (= c!212013 ((_ is Nil!12832) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))

(declare-fun e!825886 () (InoxSet C!7336))

(assert (=> d!362895 (= (content!1815 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)) e!825886)))

(declare-fun b!1287801 () Bool)

(assert (=> b!1287801 (= e!825886 ((as const (Array C!7336 Bool)) false))))

(declare-fun b!1287802 () Bool)

(assert (=> b!1287802 (= e!825886 ((_ map or) (store ((as const (Array C!7336 Bool)) false) (h!18233 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)) true) (content!1815 (t!116897 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(assert (= (and d!362895 c!212013) b!1287801))

(assert (= (and d!362895 (not c!212013)) b!1287802))

(declare-fun m!1438443 () Bool)

(assert (=> b!1287802 m!1438443))

(declare-fun m!1438445 () Bool)

(assert (=> b!1287802 m!1438445))

(assert (=> d!362665 d!362895))

(declare-fun d!362897 () Bool)

(assert (=> d!362897 true))

(declare-fun lambda!50509 () Int)

(declare-fun order!7825 () Int)

(declare-fun dynLambda!5601 (Int Int) Int)

(assert (=> d!362897 (< (dynLambda!5599 order!7823 (toValue!3396 (transformation!2209 (rule!3948 t1!34)))) (dynLambda!5601 order!7825 lambda!50509))))

(declare-fun Forall2!401 (Int) Bool)

(assert (=> d!362897 (= (equivClasses!793 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toValue!3396 (transformation!2209 (rule!3948 t1!34)))) (Forall2!401 lambda!50509))))

(declare-fun bs!328267 () Bool)

(assert (= bs!328267 d!362897))

(declare-fun m!1438469 () Bool)

(assert (=> bs!328267 m!1438469))

(assert (=> b!1287289 d!362897))

(declare-fun d!362913 () Bool)

(assert (=> d!362913 (= (isEmpty!7615 (originalCharacters!3071 t2!34)) ((_ is Nil!12832) (originalCharacters!3071 t2!34)))))

(assert (=> d!362593 d!362913))

(declare-fun d!362915 () Bool)

(assert (=> d!362915 (= (list!4773 lt!424138) (list!4777 (c!211853 lt!424138)))))

(declare-fun bs!328268 () Bool)

(assert (= bs!328268 d!362915))

(declare-fun m!1438471 () Bool)

(assert (=> bs!328268 m!1438471))

(assert (=> d!362659 d!362915))

(declare-fun bs!328271 () Bool)

(declare-fun d!362917 () Bool)

(assert (= bs!328271 (and d!362917 d!362897)))

(declare-fun lambda!50510 () Int)

(assert (=> bs!328271 (= (= (toValue!3396 (transformation!2209 (rule!3948 t2!34))) (toValue!3396 (transformation!2209 (rule!3948 t1!34)))) (= lambda!50510 lambda!50509))))

(assert (=> d!362917 true))

(assert (=> d!362917 (< (dynLambda!5599 order!7823 (toValue!3396 (transformation!2209 (rule!3948 t2!34)))) (dynLambda!5601 order!7825 lambda!50510))))

(assert (=> d!362917 (= (equivClasses!793 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (toValue!3396 (transformation!2209 (rule!3948 t2!34)))) (Forall2!401 lambda!50510))))

(declare-fun bs!328272 () Bool)

(assert (= bs!328272 d!362917))

(declare-fun m!1438477 () Bool)

(assert (=> bs!328272 m!1438477))

(assert (=> b!1287281 d!362917))

(declare-fun d!362923 () Bool)

(assert (=> d!362923 (= (isEmpty!7615 (originalCharacters!3071 t1!34)) ((_ is Nil!12832) (originalCharacters!3071 t1!34)))))

(assert (=> d!362581 d!362923))

(declare-fun d!362925 () Bool)

(assert (=> d!362925 (= (inv!17250 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))) (isBalanced!1236 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))))))

(declare-fun bs!328273 () Bool)

(assert (= bs!328273 d!362925))

(declare-fun m!1438483 () Bool)

(assert (=> bs!328273 m!1438483))

(assert (=> tb!69181 d!362925))

(declare-fun bs!328274 () Bool)

(declare-fun d!362927 () Bool)

(assert (= bs!328274 (and d!362927 d!362897)))

(declare-fun lambda!50511 () Int)

(assert (=> bs!328274 (= (= (toValue!3396 (transformation!2209 (h!18234 rules!2550))) (toValue!3396 (transformation!2209 (rule!3948 t1!34)))) (= lambda!50511 lambda!50509))))

(declare-fun bs!328275 () Bool)

(assert (= bs!328275 (and d!362927 d!362917)))

(assert (=> bs!328275 (= (= (toValue!3396 (transformation!2209 (h!18234 rules!2550))) (toValue!3396 (transformation!2209 (rule!3948 t2!34)))) (= lambda!50511 lambda!50510))))

(assert (=> d!362927 true))

(assert (=> d!362927 (< (dynLambda!5599 order!7823 (toValue!3396 (transformation!2209 (h!18234 rules!2550)))) (dynLambda!5601 order!7825 lambda!50511))))

(assert (=> d!362927 (= (equivClasses!793 (toChars!3255 (transformation!2209 (h!18234 rules!2550))) (toValue!3396 (transformation!2209 (h!18234 rules!2550)))) (Forall2!401 lambda!50511))))

(declare-fun bs!328276 () Bool)

(assert (= bs!328276 d!362927))

(declare-fun m!1438485 () Bool)

(assert (=> bs!328276 m!1438485))

(assert (=> b!1287288 d!362927))

(declare-fun d!362929 () Bool)

(assert (=> d!362929 (= (list!4773 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))) (list!4777 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))))))

(declare-fun bs!328277 () Bool)

(assert (= bs!328277 d!362929))

(declare-fun m!1438487 () Bool)

(assert (=> bs!328277 m!1438487))

(assert (=> b!1287165 d!362929))

(declare-fun d!362931 () Bool)

(declare-fun res!577363 () Bool)

(declare-fun e!825918 () Bool)

(assert (=> d!362931 (=> res!577363 e!825918)))

(assert (=> d!362931 (= res!577363 ((_ is Nil!12833) rules!2550))))

(assert (=> d!362931 (= (forall!3239 rules!2550 lambda!50472) e!825918)))

(declare-fun b!1287873 () Bool)

(declare-fun e!825919 () Bool)

(assert (=> b!1287873 (= e!825918 e!825919)))

(declare-fun res!577364 () Bool)

(assert (=> b!1287873 (=> (not res!577364) (not e!825919))))

(declare-fun dynLambda!5602 (Int Rule!4218) Bool)

(assert (=> b!1287873 (= res!577364 (dynLambda!5602 lambda!50472 (h!18234 rules!2550)))))

(declare-fun b!1287874 () Bool)

(assert (=> b!1287874 (= e!825919 (forall!3239 (t!116898 rules!2550) lambda!50472))))

(assert (= (and d!362931 (not res!577363)) b!1287873))

(assert (= (and b!1287873 res!577364) b!1287874))

(declare-fun b_lambda!36723 () Bool)

(assert (=> (not b_lambda!36723) (not b!1287873)))

(declare-fun m!1438499 () Bool)

(assert (=> b!1287873 m!1438499))

(declare-fun m!1438503 () Bool)

(assert (=> b!1287874 m!1438503))

(assert (=> d!362653 d!362931))

(declare-fun d!362933 () Bool)

(assert (=> d!362933 (= (list!4776 (_1!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34))))) (list!4778 (c!211884 (_1!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34)))))))))

(declare-fun bs!328278 () Bool)

(assert (= bs!328278 d!362933))

(declare-fun m!1438505 () Bool)

(assert (=> bs!328278 m!1438505))

(assert (=> d!362639 d!362933))

(declare-fun d!362935 () Bool)

(declare-fun lt!424333 () Int)

(assert (=> d!362935 (= lt!424333 (size!10465 (list!4776 (_1!7205 lt!424127))))))

(assert (=> d!362935 (= lt!424333 (size!10466 (c!211884 (_1!7205 lt!424127))))))

(assert (=> d!362935 (= (size!10463 (_1!7205 lt!424127)) lt!424333)))

(declare-fun bs!328279 () Bool)

(assert (= bs!328279 d!362935))

(declare-fun m!1438507 () Bool)

(assert (=> bs!328279 m!1438507))

(assert (=> bs!328279 m!1438507))

(declare-fun m!1438509 () Bool)

(assert (=> bs!328279 m!1438509))

(declare-fun m!1438511 () Bool)

(assert (=> bs!328279 m!1438511))

(assert (=> d!362639 d!362935))

(declare-fun d!362937 () Bool)

(declare-fun lt!424334 () BalanceConc!8374)

(assert (=> d!362937 (= (list!4773 lt!424334) (printList!535 thiss!19762 (list!4776 (singletonSeq!786 t2!34))))))

(assert (=> d!362937 (= lt!424334 (printTailRec!517 thiss!19762 (singletonSeq!786 t2!34) 0 (BalanceConc!8375 Empty!4217)))))

(assert (=> d!362937 (= (print!710 thiss!19762 (singletonSeq!786 t2!34)) lt!424334)))

(declare-fun bs!328280 () Bool)

(assert (= bs!328280 d!362937))

(declare-fun m!1438513 () Bool)

(assert (=> bs!328280 m!1438513))

(assert (=> bs!328280 m!1437767))

(assert (=> bs!328280 m!1437769))

(assert (=> bs!328280 m!1437769))

(declare-fun m!1438515 () Bool)

(assert (=> bs!328280 m!1438515))

(assert (=> bs!328280 m!1437767))

(declare-fun m!1438517 () Bool)

(assert (=> bs!328280 m!1438517))

(assert (=> d!362639 d!362937))

(declare-fun d!362939 () Bool)

(declare-fun e!825930 () Bool)

(assert (=> d!362939 e!825930))

(declare-fun res!577365 () Bool)

(assert (=> d!362939 (=> (not res!577365) (not e!825930))))

(declare-fun lt!424335 () BalanceConc!8378)

(assert (=> d!362939 (= res!577365 (= (list!4776 lt!424335) (Cons!12837 t2!34 Nil!12837)))))

(assert (=> d!362939 (= lt!424335 (singleton!340 t2!34))))

(assert (=> d!362939 (= (singletonSeq!786 t2!34) lt!424335)))

(declare-fun b!1287896 () Bool)

(assert (=> b!1287896 (= e!825930 (isBalanced!1234 (c!211884 lt!424335)))))

(assert (= (and d!362939 res!577365) b!1287896))

(declare-fun m!1438519 () Bool)

(assert (=> d!362939 m!1438519))

(declare-fun m!1438521 () Bool)

(assert (=> d!362939 m!1438521))

(declare-fun m!1438523 () Bool)

(assert (=> b!1287896 m!1438523))

(assert (=> d!362639 d!362939))

(assert (=> d!362639 d!362643))

(declare-fun d!362941 () Bool)

(declare-fun e!825931 () Bool)

(assert (=> d!362941 e!825931))

(declare-fun res!577367 () Bool)

(assert (=> d!362941 (=> (not res!577367) (not e!825931))))

(declare-fun e!825932 () Bool)

(assert (=> d!362941 (= res!577367 e!825932)))

(declare-fun c!212019 () Bool)

(declare-fun lt!424336 () tuple2!12638)

(assert (=> d!362941 (= c!212019 (> (size!10463 (_1!7205 lt!424336)) 0))))

(assert (=> d!362941 (= lt!424336 (lexTailRecV2!340 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34)) (BalanceConc!8375 Empty!4217) (print!710 thiss!19762 (singletonSeq!786 t2!34)) (BalanceConc!8379 Empty!4219)))))

(assert (=> d!362941 (= (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34))) lt!424336)))

(declare-fun b!1287898 () Bool)

(declare-fun e!825933 () Bool)

(assert (=> b!1287898 (= e!825932 e!825933)))

(declare-fun res!577368 () Bool)

(assert (=> b!1287898 (= res!577368 (< (size!10458 (_2!7205 lt!424336)) (size!10458 (print!710 thiss!19762 (singletonSeq!786 t2!34)))))))

(assert (=> b!1287898 (=> (not res!577368) (not e!825933))))

(declare-fun b!1287899 () Bool)

(assert (=> b!1287899 (= e!825933 (not (isEmpty!7619 (_1!7205 lt!424336))))))

(declare-fun b!1287900 () Bool)

(assert (=> b!1287900 (= e!825931 (= (list!4773 (_2!7205 lt!424336)) (_2!7206 (lexList!491 thiss!19762 rules!2550 (list!4773 (print!710 thiss!19762 (singletonSeq!786 t2!34)))))))))

(declare-fun b!1287901 () Bool)

(declare-fun res!577366 () Bool)

(assert (=> b!1287901 (=> (not res!577366) (not e!825931))))

(assert (=> b!1287901 (= res!577366 (= (list!4776 (_1!7205 lt!424336)) (_1!7206 (lexList!491 thiss!19762 rules!2550 (list!4773 (print!710 thiss!19762 (singletonSeq!786 t2!34)))))))))

(declare-fun b!1287902 () Bool)

(assert (=> b!1287902 (= e!825932 (= (_2!7205 lt!424336) (print!710 thiss!19762 (singletonSeq!786 t2!34))))))

(assert (= (and d!362941 c!212019) b!1287898))

(assert (= (and d!362941 (not c!212019)) b!1287902))

(assert (= (and b!1287898 res!577368) b!1287899))

(assert (= (and d!362941 res!577367) b!1287901))

(assert (= (and b!1287901 res!577366) b!1287900))

(declare-fun m!1438529 () Bool)

(assert (=> b!1287901 m!1438529))

(assert (=> b!1287901 m!1437763))

(declare-fun m!1438531 () Bool)

(assert (=> b!1287901 m!1438531))

(assert (=> b!1287901 m!1438531))

(declare-fun m!1438533 () Bool)

(assert (=> b!1287901 m!1438533))

(declare-fun m!1438535 () Bool)

(assert (=> d!362941 m!1438535))

(assert (=> d!362941 m!1437763))

(assert (=> d!362941 m!1437763))

(declare-fun m!1438537 () Bool)

(assert (=> d!362941 m!1438537))

(declare-fun m!1438539 () Bool)

(assert (=> b!1287898 m!1438539))

(assert (=> b!1287898 m!1437763))

(declare-fun m!1438541 () Bool)

(assert (=> b!1287898 m!1438541))

(declare-fun m!1438543 () Bool)

(assert (=> b!1287899 m!1438543))

(declare-fun m!1438545 () Bool)

(assert (=> b!1287900 m!1438545))

(assert (=> b!1287900 m!1437763))

(assert (=> b!1287900 m!1438531))

(assert (=> b!1287900 m!1438531))

(assert (=> b!1287900 m!1438533))

(assert (=> d!362639 d!362941))

(declare-fun d!362943 () Bool)

(assert (=> d!362943 (= (list!4776 (singletonSeq!786 t2!34)) (list!4778 (c!211884 (singletonSeq!786 t2!34))))))

(declare-fun bs!328281 () Bool)

(assert (= bs!328281 d!362943))

(declare-fun m!1438547 () Bool)

(assert (=> bs!328281 m!1438547))

(assert (=> d!362639 d!362943))

(declare-fun d!362947 () Bool)

(declare-fun lt!424337 () Int)

(assert (=> d!362947 (>= lt!424337 0)))

(declare-fun e!825937 () Int)

(assert (=> d!362947 (= lt!424337 e!825937)))

(declare-fun c!212020 () Bool)

(assert (=> d!362947 (= c!212020 ((_ is Nil!12832) lt!424141))))

(assert (=> d!362947 (= (size!10462 lt!424141) lt!424337)))

(declare-fun b!1287915 () Bool)

(assert (=> b!1287915 (= e!825937 0)))

(declare-fun b!1287916 () Bool)

(assert (=> b!1287916 (= e!825937 (+ 1 (size!10462 (t!116897 lt!424141))))))

(assert (= (and d!362947 c!212020) b!1287915))

(assert (= (and d!362947 (not c!212020)) b!1287916))

(declare-fun m!1438549 () Bool)

(assert (=> b!1287916 m!1438549))

(assert (=> b!1287362 d!362947))

(declare-fun d!362951 () Bool)

(declare-fun lt!424338 () Int)

(assert (=> d!362951 (>= lt!424338 0)))

(declare-fun e!825938 () Int)

(assert (=> d!362951 (= lt!424338 e!825938)))

(declare-fun c!212021 () Bool)

(assert (=> d!362951 (= c!212021 ((_ is Nil!12832) (list!4773 (charsOf!1181 t1!34))))))

(assert (=> d!362951 (= (size!10462 (list!4773 (charsOf!1181 t1!34))) lt!424338)))

(declare-fun b!1287917 () Bool)

(assert (=> b!1287917 (= e!825938 0)))

(declare-fun b!1287918 () Bool)

(assert (=> b!1287918 (= e!825938 (+ 1 (size!10462 (t!116897 (list!4773 (charsOf!1181 t1!34))))))))

(assert (= (and d!362951 c!212021) b!1287917))

(assert (= (and d!362951 (not c!212021)) b!1287918))

(assert (=> b!1287918 m!1438103))

(assert (=> b!1287362 d!362951))

(declare-fun d!362953 () Bool)

(declare-fun lt!424339 () Int)

(assert (=> d!362953 (>= lt!424339 0)))

(declare-fun e!825939 () Int)

(assert (=> d!362953 (= lt!424339 e!825939)))

(declare-fun c!212022 () Bool)

(assert (=> d!362953 (= c!212022 ((_ is Nil!12832) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))

(assert (=> d!362953 (= (size!10462 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)) lt!424339)))

(declare-fun b!1287919 () Bool)

(assert (=> b!1287919 (= e!825939 0)))

(declare-fun b!1287920 () Bool)

(assert (=> b!1287920 (= e!825939 (+ 1 (size!10462 (t!116897 (Cons!12832 (apply!2759 lt!424094 0) Nil!12832)))))))

(assert (= (and d!362953 c!212022) b!1287919))

(assert (= (and d!362953 (not c!212022)) b!1287920))

(declare-fun m!1438551 () Bool)

(assert (=> b!1287920 m!1438551))

(assert (=> b!1287362 d!362953))

(declare-fun d!362955 () Bool)

(declare-fun lt!424340 () Bool)

(assert (=> d!362955 (= lt!424340 (isEmpty!7615 (list!4773 (_2!7205 lt!424125))))))

(assert (=> d!362955 (= lt!424340 (isEmpty!7617 (c!211853 (_2!7205 lt!424125))))))

(assert (=> d!362955 (= (isEmpty!7616 (_2!7205 lt!424125)) lt!424340)))

(declare-fun bs!328284 () Bool)

(assert (= bs!328284 d!362955))

(declare-fun m!1438553 () Bool)

(assert (=> bs!328284 m!1438553))

(assert (=> bs!328284 m!1438553))

(declare-fun m!1438555 () Bool)

(assert (=> bs!328284 m!1438555))

(declare-fun m!1438557 () Bool)

(assert (=> bs!328284 m!1438557))

(assert (=> b!1287277 d!362955))

(declare-fun d!362957 () Bool)

(assert (=> d!362957 (= (inv!15 (value!72589 t1!34)) (= (charsToBigInt!0 (text!16542 (value!72589 t1!34)) 0) (value!72584 (value!72589 t1!34))))))

(declare-fun bs!328285 () Bool)

(assert (= bs!328285 d!362957))

(declare-fun m!1438559 () Bool)

(assert (=> bs!328285 m!1438559))

(assert (=> b!1287350 d!362957))

(assert (=> b!1287372 d!362657))

(declare-fun d!362959 () Bool)

(assert (=> d!362959 (= (inv!17 (value!72589 t1!34)) (= (charsToBigInt!1 (text!16541 (value!72589 t1!34))) (value!72581 (value!72589 t1!34))))))

(declare-fun bs!328286 () Bool)

(assert (= bs!328286 d!362959))

(declare-fun m!1438561 () Bool)

(assert (=> bs!328286 m!1438561))

(assert (=> b!1287348 d!362959))

(declare-fun d!362961 () Bool)

(assert (=> d!362961 (= (isEmpty!7615 (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))) ((_ is Nil!12832) (++!3241 (list!4773 (charsOf!1181 t1!34)) (Cons!12832 (apply!2759 lt!424094 0) Nil!12832))))))

(assert (=> d!362667 d!362961))

(declare-fun bs!328287 () Bool)

(declare-fun d!362963 () Bool)

(assert (= bs!328287 (and d!362963 d!362675)))

(declare-fun lambda!50516 () Int)

(assert (=> bs!328287 (= lambda!50516 lambda!50475)))

(declare-fun lambda!50517 () Int)

(declare-fun forall!3241 (List!12905 Int) Bool)

(assert (=> d!362963 (forall!3241 (map!2794 rules!2550 lambda!50516) lambda!50517)))

(declare-fun lt!424345 () Unit!19014)

(declare-fun e!825942 () Unit!19014)

(assert (=> d!362963 (= lt!424345 e!825942)))

(declare-fun c!212025 () Bool)

(assert (=> d!362963 (= c!212025 ((_ is Nil!12833) rules!2550))))

(assert (=> d!362963 (rulesValidInductive!698 thiss!19762 rules!2550)))

(assert (=> d!362963 (= (lemma!36 rules!2550 thiss!19762 rules!2550) lt!424345)))

(declare-fun b!1287925 () Bool)

(declare-fun Unit!19018 () Unit!19014)

(assert (=> b!1287925 (= e!825942 Unit!19018)))

(declare-fun b!1287926 () Bool)

(declare-fun Unit!19019 () Unit!19014)

(assert (=> b!1287926 (= e!825942 Unit!19019)))

(declare-fun lt!424346 () Unit!19014)

(assert (=> b!1287926 (= lt!424346 (lemma!36 rules!2550 thiss!19762 (t!116898 rules!2550)))))

(assert (= (and d!362963 c!212025) b!1287925))

(assert (= (and d!362963 (not c!212025)) b!1287926))

(declare-fun m!1438563 () Bool)

(assert (=> d!362963 m!1438563))

(assert (=> d!362963 m!1438563))

(declare-fun m!1438565 () Bool)

(assert (=> d!362963 m!1438565))

(assert (=> d!362963 m!1437515))

(declare-fun m!1438567 () Bool)

(assert (=> b!1287926 m!1438567))

(assert (=> d!362675 d!362963))

(declare-fun bs!328288 () Bool)

(declare-fun d!362965 () Bool)

(assert (= bs!328288 (and d!362965 d!362963)))

(declare-fun lambda!50520 () Int)

(assert (=> bs!328288 (= lambda!50520 lambda!50517)))

(declare-fun b!1287948 () Bool)

(declare-fun e!825955 () Bool)

(declare-fun lt!424349 () Regex!3523)

(declare-fun isEmptyLang!6 (Regex!3523) Bool)

(assert (=> b!1287948 (= e!825955 (isEmptyLang!6 lt!424349))))

(declare-fun b!1287949 () Bool)

(declare-fun e!825957 () Bool)

(declare-fun head!2201 (List!12905) Regex!3523)

(assert (=> b!1287949 (= e!825957 (= lt!424349 (head!2201 (map!2794 rules!2550 lambda!50475))))))

(declare-fun b!1287950 () Bool)

(declare-fun e!825959 () Regex!3523)

(assert (=> b!1287950 (= e!825959 (Union!3523 (h!18240 (map!2794 rules!2550 lambda!50475)) (generalisedUnion!40 (t!116938 (map!2794 rules!2550 lambda!50475)))))))

(declare-fun b!1287951 () Bool)

(declare-fun e!825958 () Regex!3523)

(assert (=> b!1287951 (= e!825958 (h!18240 (map!2794 rules!2550 lambda!50475)))))

(declare-fun b!1287952 () Bool)

(assert (=> b!1287952 (= e!825959 EmptyLang!3523)))

(declare-fun b!1287953 () Bool)

(assert (=> b!1287953 (= e!825958 e!825959)))

(declare-fun c!212035 () Bool)

(assert (=> b!1287953 (= c!212035 ((_ is Cons!12839) (map!2794 rules!2550 lambda!50475)))))

(declare-fun b!1287954 () Bool)

(declare-fun isUnion!6 (Regex!3523) Bool)

(assert (=> b!1287954 (= e!825957 (isUnion!6 lt!424349))))

(declare-fun e!825956 () Bool)

(assert (=> d!362965 e!825956))

(declare-fun res!577374 () Bool)

(assert (=> d!362965 (=> (not res!577374) (not e!825956))))

(assert (=> d!362965 (= res!577374 (validRegex!1514 lt!424349))))

(assert (=> d!362965 (= lt!424349 e!825958)))

(declare-fun c!212034 () Bool)

(declare-fun e!825960 () Bool)

(assert (=> d!362965 (= c!212034 e!825960)))

(declare-fun res!577373 () Bool)

(assert (=> d!362965 (=> (not res!577373) (not e!825960))))

(assert (=> d!362965 (= res!577373 ((_ is Cons!12839) (map!2794 rules!2550 lambda!50475)))))

(assert (=> d!362965 (forall!3241 (map!2794 rules!2550 lambda!50475) lambda!50520)))

(assert (=> d!362965 (= (generalisedUnion!40 (map!2794 rules!2550 lambda!50475)) lt!424349)))

(declare-fun b!1287947 () Bool)

(assert (=> b!1287947 (= e!825955 e!825957)))

(declare-fun c!212036 () Bool)

(declare-fun isEmpty!7622 (List!12905) Bool)

(declare-fun tail!1829 (List!12905) List!12905)

(assert (=> b!1287947 (= c!212036 (isEmpty!7622 (tail!1829 (map!2794 rules!2550 lambda!50475))))))

(declare-fun b!1287955 () Bool)

(assert (=> b!1287955 (= e!825960 (isEmpty!7622 (t!116938 (map!2794 rules!2550 lambda!50475))))))

(declare-fun b!1287956 () Bool)

(assert (=> b!1287956 (= e!825956 e!825955)))

(declare-fun c!212037 () Bool)

(assert (=> b!1287956 (= c!212037 (isEmpty!7622 (map!2794 rules!2550 lambda!50475)))))

(assert (= (and d!362965 res!577373) b!1287955))

(assert (= (and d!362965 c!212034) b!1287951))

(assert (= (and d!362965 (not c!212034)) b!1287953))

(assert (= (and b!1287953 c!212035) b!1287950))

(assert (= (and b!1287953 (not c!212035)) b!1287952))

(assert (= (and d!362965 res!577374) b!1287956))

(assert (= (and b!1287956 c!212037) b!1287948))

(assert (= (and b!1287956 (not c!212037)) b!1287947))

(assert (= (and b!1287947 c!212036) b!1287949))

(assert (= (and b!1287947 (not c!212036)) b!1287954))

(declare-fun m!1438569 () Bool)

(assert (=> b!1287950 m!1438569))

(declare-fun m!1438571 () Bool)

(assert (=> b!1287955 m!1438571))

(assert (=> b!1287947 m!1437871))

(declare-fun m!1438573 () Bool)

(assert (=> b!1287947 m!1438573))

(assert (=> b!1287947 m!1438573))

(declare-fun m!1438575 () Bool)

(assert (=> b!1287947 m!1438575))

(declare-fun m!1438577 () Bool)

(assert (=> b!1287954 m!1438577))

(declare-fun m!1438579 () Bool)

(assert (=> b!1287948 m!1438579))

(declare-fun m!1438581 () Bool)

(assert (=> d!362965 m!1438581))

(assert (=> d!362965 m!1437871))

(declare-fun m!1438583 () Bool)

(assert (=> d!362965 m!1438583))

(assert (=> b!1287956 m!1437871))

(declare-fun m!1438585 () Bool)

(assert (=> b!1287956 m!1438585))

(assert (=> b!1287949 m!1437871))

(declare-fun m!1438587 () Bool)

(assert (=> b!1287949 m!1438587))

(assert (=> d!362675 d!362965))

(declare-fun d!362967 () Bool)

(declare-fun lt!424352 () List!12905)

(declare-fun size!10471 (List!12905) Int)

(declare-fun size!10472 (List!12899) Int)

(assert (=> d!362967 (= (size!10471 lt!424352) (size!10472 rules!2550))))

(declare-fun e!825963 () List!12905)

(assert (=> d!362967 (= lt!424352 e!825963)))

(declare-fun c!212040 () Bool)

(assert (=> d!362967 (= c!212040 ((_ is Nil!12833) rules!2550))))

(assert (=> d!362967 (= (map!2794 rules!2550 lambda!50475) lt!424352)))

(declare-fun b!1287961 () Bool)

(assert (=> b!1287961 (= e!825963 Nil!12839)))

(declare-fun b!1287962 () Bool)

(declare-fun $colon$colon!128 (List!12905 Regex!3523) List!12905)

(declare-fun dynLambda!5604 (Int Rule!4218) Regex!3523)

(assert (=> b!1287962 (= e!825963 ($colon$colon!128 (map!2794 (t!116898 rules!2550) lambda!50475) (dynLambda!5604 lambda!50475 (h!18234 rules!2550))))))

(assert (= (and d!362967 c!212040) b!1287961))

(assert (= (and d!362967 (not c!212040)) b!1287962))

(declare-fun b_lambda!36729 () Bool)

(assert (=> (not b_lambda!36729) (not b!1287962)))

(declare-fun m!1438589 () Bool)

(assert (=> d!362967 m!1438589))

(declare-fun m!1438591 () Bool)

(assert (=> d!362967 m!1438591))

(declare-fun m!1438593 () Bool)

(assert (=> b!1287962 m!1438593))

(declare-fun m!1438595 () Bool)

(assert (=> b!1287962 m!1438595))

(assert (=> b!1287962 m!1438593))

(assert (=> b!1287962 m!1438595))

(declare-fun m!1438597 () Bool)

(assert (=> b!1287962 m!1438597))

(assert (=> d!362675 d!362967))

(declare-fun b!1287974 () Bool)

(declare-fun e!825969 () List!12898)

(assert (=> b!1287974 (= e!825969 (++!3241 (list!4777 (left!11047 (c!211853 (charsOf!1181 t1!34)))) (list!4777 (right!11377 (c!211853 (charsOf!1181 t1!34))))))))

(declare-fun b!1287972 () Bool)

(declare-fun e!825968 () List!12898)

(assert (=> b!1287972 (= e!825968 e!825969)))

(declare-fun c!212046 () Bool)

(assert (=> b!1287972 (= c!212046 ((_ is Leaf!6518) (c!211853 (charsOf!1181 t1!34))))))

(declare-fun d!362969 () Bool)

(declare-fun c!212045 () Bool)

(assert (=> d!362969 (= c!212045 ((_ is Empty!4217) (c!211853 (charsOf!1181 t1!34))))))

(assert (=> d!362969 (= (list!4777 (c!211853 (charsOf!1181 t1!34))) e!825968)))

(declare-fun b!1287973 () Bool)

(declare-fun list!4781 (IArray!8439) List!12898)

(assert (=> b!1287973 (= e!825969 (list!4781 (xs!6928 (c!211853 (charsOf!1181 t1!34)))))))

(declare-fun b!1287971 () Bool)

(assert (=> b!1287971 (= e!825968 Nil!12832)))

(assert (= (and d!362969 c!212045) b!1287971))

(assert (= (and d!362969 (not c!212045)) b!1287972))

(assert (= (and b!1287972 c!212046) b!1287973))

(assert (= (and b!1287972 (not c!212046)) b!1287974))

(declare-fun m!1438599 () Bool)

(assert (=> b!1287974 m!1438599))

(declare-fun m!1438601 () Bool)

(assert (=> b!1287974 m!1438601))

(assert (=> b!1287974 m!1438599))

(assert (=> b!1287974 m!1438601))

(declare-fun m!1438603 () Bool)

(assert (=> b!1287974 m!1438603))

(declare-fun m!1438605 () Bool)

(assert (=> b!1287973 m!1438605))

(assert (=> d!362671 d!362969))

(declare-fun d!362971 () Bool)

(assert (=> d!362971 (= (inv!16 (value!72589 t2!34)) (= (charsToInt!0 (text!16540 (value!72589 t2!34))) (value!72580 (value!72589 t2!34))))))

(declare-fun bs!328289 () Bool)

(assert (= bs!328289 d!362971))

(declare-fun m!1438607 () Bool)

(assert (=> bs!328289 m!1438607))

(assert (=> b!1287229 d!362971))

(declare-fun bs!328290 () Bool)

(declare-fun d!362973 () Bool)

(assert (= bs!328290 (and d!362973 d!362715)))

(declare-fun lambda!50521 () Int)

(assert (=> bs!328290 (= (and (= (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toChars!3255 (transformation!2209 (h!18234 rules!2550)))) (= (toValue!3396 (transformation!2209 (rule!3948 t1!34))) (toValue!3396 (transformation!2209 (h!18234 rules!2550))))) (= lambda!50521 lambda!50485))))

(declare-fun bs!328291 () Bool)

(assert (= bs!328291 (and d!362973 d!362861)))

(assert (=> bs!328291 (= (and (= (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toChars!3255 (transformation!2209 (rule!3948 t2!34)))) (= (toValue!3396 (transformation!2209 (rule!3948 t1!34))) (toValue!3396 (transformation!2209 (rule!3948 t2!34))))) (= lambda!50521 lambda!50493))))

(assert (=> d!362973 true))

(assert (=> d!362973 (< (dynLambda!5597 order!7819 (toChars!3255 (transformation!2209 (rule!3948 t1!34)))) (dynLambda!5598 order!7821 lambda!50521))))

(assert (=> d!362973 true))

(assert (=> d!362973 (< (dynLambda!5599 order!7823 (toValue!3396 (transformation!2209 (rule!3948 t1!34)))) (dynLambda!5598 order!7821 lambda!50521))))

(assert (=> d!362973 (= (semiInverseModEq!834 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (toValue!3396 (transformation!2209 (rule!3948 t1!34)))) (Forall!499 lambda!50521))))

(declare-fun bs!328292 () Bool)

(assert (= bs!328292 d!362973))

(declare-fun m!1438609 () Bool)

(assert (=> bs!328292 m!1438609))

(assert (=> d!362651 d!362973))

(declare-fun d!362975 () Bool)

(declare-fun res!577379 () Bool)

(declare-fun e!825972 () Bool)

(assert (=> d!362975 (=> (not res!577379) (not e!825972))))

(assert (=> d!362975 (= res!577379 (validRegex!1514 (regex!2209 (h!18234 rules!2550))))))

(assert (=> d!362975 (= (ruleValid!541 thiss!19762 (h!18234 rules!2550)) e!825972)))

(declare-fun b!1287979 () Bool)

(declare-fun res!577380 () Bool)

(assert (=> b!1287979 (=> (not res!577380) (not e!825972))))

(assert (=> b!1287979 (= res!577380 (not (nullable!1116 (regex!2209 (h!18234 rules!2550)))))))

(declare-fun b!1287980 () Bool)

(assert (=> b!1287980 (= e!825972 (not (= (tag!2471 (h!18234 rules!2550)) (String!15732 ""))))))

(assert (= (and d!362975 res!577379) b!1287979))

(assert (= (and b!1287979 res!577380) b!1287980))

(declare-fun m!1438611 () Bool)

(assert (=> d!362975 m!1438611))

(declare-fun m!1438613 () Bool)

(assert (=> b!1287979 m!1438613))

(assert (=> b!1287337 d!362975))

(declare-fun d!362977 () Bool)

(assert (=> d!362977 (= (inv!17242 (tag!2471 (h!18234 (t!116898 rules!2550)))) (= (mod (str.len (value!72588 (tag!2471 (h!18234 (t!116898 rules!2550))))) 2) 0))))

(assert (=> b!1287382 d!362977))

(declare-fun d!362979 () Bool)

(declare-fun res!577381 () Bool)

(declare-fun e!825973 () Bool)

(assert (=> d!362979 (=> (not res!577381) (not e!825973))))

(assert (=> d!362979 (= res!577381 (semiInverseModEq!834 (toChars!3255 (transformation!2209 (h!18234 (t!116898 rules!2550)))) (toValue!3396 (transformation!2209 (h!18234 (t!116898 rules!2550))))))))

(assert (=> d!362979 (= (inv!17245 (transformation!2209 (h!18234 (t!116898 rules!2550)))) e!825973)))

(declare-fun b!1287981 () Bool)

(assert (=> b!1287981 (= e!825973 (equivClasses!793 (toChars!3255 (transformation!2209 (h!18234 (t!116898 rules!2550)))) (toValue!3396 (transformation!2209 (h!18234 (t!116898 rules!2550))))))))

(assert (= (and d!362979 res!577381) b!1287981))

(declare-fun m!1438615 () Bool)

(assert (=> d!362979 m!1438615))

(declare-fun m!1438617 () Bool)

(assert (=> b!1287981 m!1438617))

(assert (=> b!1287382 d!362979))

(declare-fun d!362981 () Bool)

(declare-fun lt!424353 () Bool)

(assert (=> d!362981 (= lt!424353 (isEmpty!7615 (list!4773 (_2!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34)))))))))

(assert (=> d!362981 (= lt!424353 (isEmpty!7617 (c!211853 (_2!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34)))))))))

(assert (=> d!362981 (= (isEmpty!7616 (_2!7205 (lex!773 thiss!19762 rules!2550 (print!710 thiss!19762 (singletonSeq!786 t2!34))))) lt!424353)))

(declare-fun bs!328293 () Bool)

(assert (= bs!328293 d!362981))

(declare-fun m!1438619 () Bool)

(assert (=> bs!328293 m!1438619))

(assert (=> bs!328293 m!1438619))

(declare-fun m!1438621 () Bool)

(assert (=> bs!328293 m!1438621))

(declare-fun m!1438623 () Bool)

(assert (=> bs!328293 m!1438623))

(assert (=> b!1287284 d!362981))

(assert (=> b!1287284 d!362941))

(assert (=> b!1287284 d!362937))

(assert (=> b!1287284 d!362939))

(declare-fun d!362983 () Bool)

(assert (=> d!362983 (= (inv!17250 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))) (isBalanced!1236 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))))))

(declare-fun bs!328294 () Bool)

(assert (= bs!328294 d!362983))

(declare-fun m!1438625 () Bool)

(assert (=> bs!328294 m!1438625))

(assert (=> tb!69175 d!362983))

(declare-fun d!362985 () Bool)

(declare-fun lt!424354 () Token!4080)

(assert (=> d!362985 (= lt!424354 (apply!2768 (list!4776 (_1!7205 lt!424127)) 0))))

(assert (=> d!362985 (= lt!424354 (apply!2769 (c!211884 (_1!7205 lt!424127)) 0))))

(declare-fun e!825974 () Bool)

(assert (=> d!362985 e!825974))

(declare-fun res!577382 () Bool)

(assert (=> d!362985 (=> (not res!577382) (not e!825974))))

(assert (=> d!362985 (= res!577382 (<= 0 0))))

(assert (=> d!362985 (= (apply!2763 (_1!7205 lt!424127) 0) lt!424354)))

(declare-fun b!1287982 () Bool)

(assert (=> b!1287982 (= e!825974 (< 0 (size!10463 (_1!7205 lt!424127))))))

(assert (= (and d!362985 res!577382) b!1287982))

(assert (=> d!362985 m!1438507))

(assert (=> d!362985 m!1438507))

(declare-fun m!1438627 () Bool)

(assert (=> d!362985 m!1438627))

(declare-fun m!1438629 () Bool)

(assert (=> d!362985 m!1438629))

(assert (=> b!1287982 m!1437773))

(assert (=> b!1287282 d!362985))

(declare-fun d!362987 () Bool)

(declare-fun res!577383 () Bool)

(declare-fun e!825975 () Bool)

(assert (=> d!362987 (=> res!577383 e!825975)))

(assert (=> d!362987 (= res!577383 (not ((_ is Cons!12833) (t!116898 rules!2550))))))

(assert (=> d!362987 (= (sepAndNonSepRulesDisjointChars!582 rules!2550 (t!116898 rules!2550)) e!825975)))

(declare-fun b!1287983 () Bool)

(declare-fun e!825976 () Bool)

(assert (=> b!1287983 (= e!825975 e!825976)))

(declare-fun res!577384 () Bool)

(assert (=> b!1287983 (=> (not res!577384) (not e!825976))))

(assert (=> b!1287983 (= res!577384 (ruleDisjointCharsFromAllFromOtherType!278 (h!18234 (t!116898 rules!2550)) rules!2550))))

(declare-fun b!1287984 () Bool)

(assert (=> b!1287984 (= e!825976 (sepAndNonSepRulesDisjointChars!582 rules!2550 (t!116898 (t!116898 rules!2550))))))

(assert (= (and d!362987 (not res!577383)) b!1287983))

(assert (= (and b!1287983 res!577384) b!1287984))

(declare-fun m!1438631 () Bool)

(assert (=> b!1287983 m!1438631))

(declare-fun m!1438633 () Bool)

(assert (=> b!1287984 m!1438633))

(assert (=> b!1287346 d!362987))

(declare-fun b!1287985 () Bool)

(declare-fun e!825977 () Bool)

(declare-fun tp!375147 () Bool)

(assert (=> b!1287985 (= e!825977 (and tp_is_empty!6551 tp!375147))))

(assert (=> b!1287388 (= tp!375022 e!825977)))

(assert (= (and b!1287388 ((_ is Cons!12832) (t!116897 (originalCharacters!3071 t2!34)))) b!1287985))

(declare-fun e!825978 () Bool)

(assert (=> b!1287408 (= tp!375045 e!825978)))

(declare-fun b!1287986 () Bool)

(assert (=> b!1287986 (= e!825978 tp_is_empty!6551)))

(declare-fun b!1287988 () Bool)

(declare-fun tp!375149 () Bool)

(assert (=> b!1287988 (= e!825978 tp!375149)))

(declare-fun b!1287989 () Bool)

(declare-fun tp!375148 () Bool)

(declare-fun tp!375152 () Bool)

(assert (=> b!1287989 (= e!825978 (and tp!375148 tp!375152))))

(declare-fun b!1287987 () Bool)

(declare-fun tp!375150 () Bool)

(declare-fun tp!375151 () Bool)

(assert (=> b!1287987 (= e!825978 (and tp!375150 tp!375151))))

(assert (= (and b!1287408 ((_ is ElementMatch!3523) (regOne!7558 (regex!2209 (h!18234 rules!2550))))) b!1287986))

(assert (= (and b!1287408 ((_ is Concat!5823) (regOne!7558 (regex!2209 (h!18234 rules!2550))))) b!1287987))

(assert (= (and b!1287408 ((_ is Star!3523) (regOne!7558 (regex!2209 (h!18234 rules!2550))))) b!1287988))

(assert (= (and b!1287408 ((_ is Union!3523) (regOne!7558 (regex!2209 (h!18234 rules!2550))))) b!1287989))

(declare-fun e!825979 () Bool)

(assert (=> b!1287408 (= tp!375046 e!825979)))

(declare-fun b!1287990 () Bool)

(assert (=> b!1287990 (= e!825979 tp_is_empty!6551)))

(declare-fun b!1287992 () Bool)

(declare-fun tp!375154 () Bool)

(assert (=> b!1287992 (= e!825979 tp!375154)))

(declare-fun b!1287993 () Bool)

(declare-fun tp!375153 () Bool)

(declare-fun tp!375157 () Bool)

(assert (=> b!1287993 (= e!825979 (and tp!375153 tp!375157))))

(declare-fun b!1287991 () Bool)

(declare-fun tp!375155 () Bool)

(declare-fun tp!375156 () Bool)

(assert (=> b!1287991 (= e!825979 (and tp!375155 tp!375156))))

(assert (= (and b!1287408 ((_ is ElementMatch!3523) (regTwo!7558 (regex!2209 (h!18234 rules!2550))))) b!1287990))

(assert (= (and b!1287408 ((_ is Concat!5823) (regTwo!7558 (regex!2209 (h!18234 rules!2550))))) b!1287991))

(assert (= (and b!1287408 ((_ is Star!3523) (regTwo!7558 (regex!2209 (h!18234 rules!2550))))) b!1287992))

(assert (= (and b!1287408 ((_ is Union!3523) (regTwo!7558 (regex!2209 (h!18234 rules!2550))))) b!1287993))

(declare-fun b!1287996 () Bool)

(declare-fun b_free!30323 () Bool)

(declare-fun b_next!31027 () Bool)

(assert (=> b!1287996 (= b_free!30323 (not b_next!31027))))

(declare-fun tp!375158 () Bool)

(declare-fun b_and!85647 () Bool)

(assert (=> b!1287996 (= tp!375158 b_and!85647)))

(declare-fun b_free!30325 () Bool)

(declare-fun b_next!31029 () Bool)

(assert (=> b!1287996 (= b_free!30325 (not b_next!31029))))

(declare-fun tb!69205 () Bool)

(declare-fun t!116954 () Bool)

(assert (=> (and b!1287996 (= (toChars!3255 (transformation!2209 (h!18234 (t!116898 (t!116898 rules!2550))))) (toChars!3255 (transformation!2209 (rule!3948 t1!34)))) t!116954) tb!69205))

(declare-fun result!83828 () Bool)

(assert (= result!83828 result!83782))

(assert (=> b!1287165 t!116954))

(declare-fun tb!69207 () Bool)

(declare-fun t!116956 () Bool)

(assert (=> (and b!1287996 (= (toChars!3255 (transformation!2209 (h!18234 (t!116898 (t!116898 rules!2550))))) (toChars!3255 (transformation!2209 (rule!3948 t2!34)))) t!116956) tb!69207))

(declare-fun result!83830 () Bool)

(assert (= result!83830 result!83790))

(assert (=> b!1287185 t!116956))

(assert (=> d!362659 t!116956))

(assert (=> d!362673 t!116954))

(declare-fun tp!375160 () Bool)

(declare-fun b_and!85649 () Bool)

(assert (=> b!1287996 (= tp!375160 (and (=> t!116954 result!83828) (=> t!116956 result!83830) b_and!85649))))

(declare-fun e!825981 () Bool)

(assert (=> b!1287996 (= e!825981 (and tp!375158 tp!375160))))

(declare-fun tp!375161 () Bool)

(declare-fun b!1287995 () Bool)

(declare-fun e!825982 () Bool)

(assert (=> b!1287995 (= e!825982 (and tp!375161 (inv!17242 (tag!2471 (h!18234 (t!116898 (t!116898 rules!2550))))) (inv!17245 (transformation!2209 (h!18234 (t!116898 (t!116898 rules!2550))))) e!825981))))

(declare-fun b!1287994 () Bool)

(declare-fun e!825983 () Bool)

(declare-fun tp!375159 () Bool)

(assert (=> b!1287994 (= e!825983 (and e!825982 tp!375159))))

(assert (=> b!1287381 (= tp!375017 e!825983)))

(assert (= b!1287995 b!1287996))

(assert (= b!1287994 b!1287995))

(assert (= (and b!1287381 ((_ is Cons!12833) (t!116898 (t!116898 rules!2550)))) b!1287994))

(declare-fun m!1438635 () Bool)

(assert (=> b!1287995 m!1438635))

(declare-fun m!1438637 () Bool)

(assert (=> b!1287995 m!1438637))

(declare-fun e!825984 () Bool)

(assert (=> b!1287382 (= tp!375019 e!825984)))

(declare-fun b!1287997 () Bool)

(assert (=> b!1287997 (= e!825984 tp_is_empty!6551)))

(declare-fun b!1287999 () Bool)

(declare-fun tp!375163 () Bool)

(assert (=> b!1287999 (= e!825984 tp!375163)))

(declare-fun b!1288000 () Bool)

(declare-fun tp!375162 () Bool)

(declare-fun tp!375166 () Bool)

(assert (=> b!1288000 (= e!825984 (and tp!375162 tp!375166))))

(declare-fun b!1287998 () Bool)

(declare-fun tp!375164 () Bool)

(declare-fun tp!375165 () Bool)

(assert (=> b!1287998 (= e!825984 (and tp!375164 tp!375165))))

(assert (= (and b!1287382 ((_ is ElementMatch!3523) (regex!2209 (h!18234 (t!116898 rules!2550))))) b!1287997))

(assert (= (and b!1287382 ((_ is Concat!5823) (regex!2209 (h!18234 (t!116898 rules!2550))))) b!1287998))

(assert (= (and b!1287382 ((_ is Star!3523) (regex!2209 (h!18234 (t!116898 rules!2550))))) b!1287999))

(assert (= (and b!1287382 ((_ is Union!3523) (regex!2209 (h!18234 (t!116898 rules!2550))))) b!1288000))

(declare-fun b!1288009 () Bool)

(declare-fun tp!375173 () Bool)

(declare-fun tp!375175 () Bool)

(declare-fun e!825989 () Bool)

(assert (=> b!1288009 (= e!825989 (and (inv!17249 (left!11047 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))))) tp!375175 (inv!17249 (right!11377 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))))) tp!375173))))

(declare-fun b!1288011 () Bool)

(declare-fun e!825990 () Bool)

(declare-fun tp!375174 () Bool)

(assert (=> b!1288011 (= e!825990 tp!375174)))

(declare-fun b!1288010 () Bool)

(declare-fun inv!17256 (IArray!8439) Bool)

(assert (=> b!1288010 (= e!825989 (and (inv!17256 (xs!6928 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))))) e!825990))))

(assert (=> b!1287198 (= tp!374965 (and (inv!17249 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34)))) e!825989))))

(assert (= (and b!1287198 ((_ is Node!4217) (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))))) b!1288009))

(assert (= b!1288010 b!1288011))

(assert (= (and b!1287198 ((_ is Leaf!6518) (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t2!34))) (value!72589 t2!34))))) b!1288010))

(declare-fun m!1438639 () Bool)

(assert (=> b!1288009 m!1438639))

(declare-fun m!1438641 () Bool)

(assert (=> b!1288009 m!1438641))

(declare-fun m!1438643 () Bool)

(assert (=> b!1288010 m!1438643))

(assert (=> b!1287198 m!1437617))

(declare-fun e!825991 () Bool)

(assert (=> b!1287402 (= tp!375033 e!825991)))

(declare-fun b!1288012 () Bool)

(assert (=> b!1288012 (= e!825991 tp_is_empty!6551)))

(declare-fun b!1288014 () Bool)

(declare-fun tp!375177 () Bool)

(assert (=> b!1288014 (= e!825991 tp!375177)))

(declare-fun b!1288015 () Bool)

(declare-fun tp!375176 () Bool)

(declare-fun tp!375180 () Bool)

(assert (=> b!1288015 (= e!825991 (and tp!375176 tp!375180))))

(declare-fun b!1288013 () Bool)

(declare-fun tp!375178 () Bool)

(declare-fun tp!375179 () Bool)

(assert (=> b!1288013 (= e!825991 (and tp!375178 tp!375179))))

(assert (= (and b!1287402 ((_ is ElementMatch!3523) (regOne!7559 (regex!2209 (rule!3948 t1!34))))) b!1288012))

(assert (= (and b!1287402 ((_ is Concat!5823) (regOne!7559 (regex!2209 (rule!3948 t1!34))))) b!1288013))

(assert (= (and b!1287402 ((_ is Star!3523) (regOne!7559 (regex!2209 (rule!3948 t1!34))))) b!1288014))

(assert (= (and b!1287402 ((_ is Union!3523) (regOne!7559 (regex!2209 (rule!3948 t1!34))))) b!1288015))

(declare-fun e!825992 () Bool)

(assert (=> b!1287402 (= tp!375037 e!825992)))

(declare-fun b!1288016 () Bool)

(assert (=> b!1288016 (= e!825992 tp_is_empty!6551)))

(declare-fun b!1288018 () Bool)

(declare-fun tp!375182 () Bool)

(assert (=> b!1288018 (= e!825992 tp!375182)))

(declare-fun b!1288019 () Bool)

(declare-fun tp!375181 () Bool)

(declare-fun tp!375185 () Bool)

(assert (=> b!1288019 (= e!825992 (and tp!375181 tp!375185))))

(declare-fun b!1288017 () Bool)

(declare-fun tp!375183 () Bool)

(declare-fun tp!375184 () Bool)

(assert (=> b!1288017 (= e!825992 (and tp!375183 tp!375184))))

(assert (= (and b!1287402 ((_ is ElementMatch!3523) (regTwo!7559 (regex!2209 (rule!3948 t1!34))))) b!1288016))

(assert (= (and b!1287402 ((_ is Concat!5823) (regTwo!7559 (regex!2209 (rule!3948 t1!34))))) b!1288017))

(assert (= (and b!1287402 ((_ is Star!3523) (regTwo!7559 (regex!2209 (rule!3948 t1!34))))) b!1288018))

(assert (= (and b!1287402 ((_ is Union!3523) (regTwo!7559 (regex!2209 (rule!3948 t1!34))))) b!1288019))

(declare-fun b!1288020 () Bool)

(declare-fun e!825993 () Bool)

(declare-fun tp!375186 () Bool)

(assert (=> b!1288020 (= e!825993 (and tp_is_empty!6551 tp!375186))))

(assert (=> b!1287411 (= tp!375048 e!825993)))

(assert (= (and b!1287411 ((_ is Cons!12832) (t!116897 (originalCharacters!3071 t1!34)))) b!1288020))

(declare-fun e!825994 () Bool)

(assert (=> b!1287400 (= tp!375035 e!825994)))

(declare-fun b!1288021 () Bool)

(assert (=> b!1288021 (= e!825994 tp_is_empty!6551)))

(declare-fun b!1288023 () Bool)

(declare-fun tp!375188 () Bool)

(assert (=> b!1288023 (= e!825994 tp!375188)))

(declare-fun b!1288024 () Bool)

(declare-fun tp!375187 () Bool)

(declare-fun tp!375191 () Bool)

(assert (=> b!1288024 (= e!825994 (and tp!375187 tp!375191))))

(declare-fun b!1288022 () Bool)

(declare-fun tp!375189 () Bool)

(declare-fun tp!375190 () Bool)

(assert (=> b!1288022 (= e!825994 (and tp!375189 tp!375190))))

(assert (= (and b!1287400 ((_ is ElementMatch!3523) (regOne!7558 (regex!2209 (rule!3948 t1!34))))) b!1288021))

(assert (= (and b!1287400 ((_ is Concat!5823) (regOne!7558 (regex!2209 (rule!3948 t1!34))))) b!1288022))

(assert (= (and b!1287400 ((_ is Star!3523) (regOne!7558 (regex!2209 (rule!3948 t1!34))))) b!1288023))

(assert (= (and b!1287400 ((_ is Union!3523) (regOne!7558 (regex!2209 (rule!3948 t1!34))))) b!1288024))

(declare-fun e!825995 () Bool)

(assert (=> b!1287400 (= tp!375036 e!825995)))

(declare-fun b!1288025 () Bool)

(assert (=> b!1288025 (= e!825995 tp_is_empty!6551)))

(declare-fun b!1288027 () Bool)

(declare-fun tp!375193 () Bool)

(assert (=> b!1288027 (= e!825995 tp!375193)))

(declare-fun b!1288028 () Bool)

(declare-fun tp!375192 () Bool)

(declare-fun tp!375196 () Bool)

(assert (=> b!1288028 (= e!825995 (and tp!375192 tp!375196))))

(declare-fun b!1288026 () Bool)

(declare-fun tp!375194 () Bool)

(declare-fun tp!375195 () Bool)

(assert (=> b!1288026 (= e!825995 (and tp!375194 tp!375195))))

(assert (= (and b!1287400 ((_ is ElementMatch!3523) (regTwo!7558 (regex!2209 (rule!3948 t1!34))))) b!1288025))

(assert (= (and b!1287400 ((_ is Concat!5823) (regTwo!7558 (regex!2209 (rule!3948 t1!34))))) b!1288026))

(assert (= (and b!1287400 ((_ is Star!3523) (regTwo!7558 (regex!2209 (rule!3948 t1!34))))) b!1288027))

(assert (= (and b!1287400 ((_ is Union!3523) (regTwo!7558 (regex!2209 (rule!3948 t1!34))))) b!1288028))

(declare-fun e!825996 () Bool)

(assert (=> b!1287409 (= tp!375044 e!825996)))

(declare-fun b!1288029 () Bool)

(assert (=> b!1288029 (= e!825996 tp_is_empty!6551)))

(declare-fun b!1288031 () Bool)

(declare-fun tp!375198 () Bool)

(assert (=> b!1288031 (= e!825996 tp!375198)))

(declare-fun b!1288032 () Bool)

(declare-fun tp!375197 () Bool)

(declare-fun tp!375201 () Bool)

(assert (=> b!1288032 (= e!825996 (and tp!375197 tp!375201))))

(declare-fun b!1288030 () Bool)

(declare-fun tp!375199 () Bool)

(declare-fun tp!375200 () Bool)

(assert (=> b!1288030 (= e!825996 (and tp!375199 tp!375200))))

(assert (= (and b!1287409 ((_ is ElementMatch!3523) (reg!3852 (regex!2209 (h!18234 rules!2550))))) b!1288029))

(assert (= (and b!1287409 ((_ is Concat!5823) (reg!3852 (regex!2209 (h!18234 rules!2550))))) b!1288030))

(assert (= (and b!1287409 ((_ is Star!3523) (reg!3852 (regex!2209 (h!18234 rules!2550))))) b!1288031))

(assert (= (and b!1287409 ((_ is Union!3523) (reg!3852 (regex!2209 (h!18234 rules!2550))))) b!1288032))

(declare-fun e!825997 () Bool)

(assert (=> b!1287404 (= tp!375040 e!825997)))

(declare-fun b!1288033 () Bool)

(assert (=> b!1288033 (= e!825997 tp_is_empty!6551)))

(declare-fun b!1288035 () Bool)

(declare-fun tp!375203 () Bool)

(assert (=> b!1288035 (= e!825997 tp!375203)))

(declare-fun b!1288036 () Bool)

(declare-fun tp!375202 () Bool)

(declare-fun tp!375206 () Bool)

(assert (=> b!1288036 (= e!825997 (and tp!375202 tp!375206))))

(declare-fun b!1288034 () Bool)

(declare-fun tp!375204 () Bool)

(declare-fun tp!375205 () Bool)

(assert (=> b!1288034 (= e!825997 (and tp!375204 tp!375205))))

(assert (= (and b!1287404 ((_ is ElementMatch!3523) (regOne!7558 (regex!2209 (rule!3948 t2!34))))) b!1288033))

(assert (= (and b!1287404 ((_ is Concat!5823) (regOne!7558 (regex!2209 (rule!3948 t2!34))))) b!1288034))

(assert (= (and b!1287404 ((_ is Star!3523) (regOne!7558 (regex!2209 (rule!3948 t2!34))))) b!1288035))

(assert (= (and b!1287404 ((_ is Union!3523) (regOne!7558 (regex!2209 (rule!3948 t2!34))))) b!1288036))

(declare-fun e!825998 () Bool)

(assert (=> b!1287404 (= tp!375041 e!825998)))

(declare-fun b!1288037 () Bool)

(assert (=> b!1288037 (= e!825998 tp_is_empty!6551)))

(declare-fun b!1288039 () Bool)

(declare-fun tp!375208 () Bool)

(assert (=> b!1288039 (= e!825998 tp!375208)))

(declare-fun b!1288040 () Bool)

(declare-fun tp!375207 () Bool)

(declare-fun tp!375211 () Bool)

(assert (=> b!1288040 (= e!825998 (and tp!375207 tp!375211))))

(declare-fun b!1288038 () Bool)

(declare-fun tp!375209 () Bool)

(declare-fun tp!375210 () Bool)

(assert (=> b!1288038 (= e!825998 (and tp!375209 tp!375210))))

(assert (= (and b!1287404 ((_ is ElementMatch!3523) (regTwo!7558 (regex!2209 (rule!3948 t2!34))))) b!1288037))

(assert (= (and b!1287404 ((_ is Concat!5823) (regTwo!7558 (regex!2209 (rule!3948 t2!34))))) b!1288038))

(assert (= (and b!1287404 ((_ is Star!3523) (regTwo!7558 (regex!2209 (rule!3948 t2!34))))) b!1288039))

(assert (= (and b!1287404 ((_ is Union!3523) (regTwo!7558 (regex!2209 (rule!3948 t2!34))))) b!1288040))

(declare-fun tp!375212 () Bool)

(declare-fun e!825999 () Bool)

(declare-fun b!1288041 () Bool)

(declare-fun tp!375214 () Bool)

(assert (=> b!1288041 (= e!825999 (and (inv!17249 (left!11047 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))))) tp!375214 (inv!17249 (right!11377 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))))) tp!375212))))

(declare-fun b!1288043 () Bool)

(declare-fun e!826000 () Bool)

(declare-fun tp!375213 () Bool)

(assert (=> b!1288043 (= e!826000 tp!375213)))

(declare-fun b!1288042 () Bool)

(assert (=> b!1288042 (= e!825999 (and (inv!17256 (xs!6928 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))))) e!826000))))

(assert (=> b!1287176 (= tp!374964 (and (inv!17249 (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34)))) e!825999))))

(assert (= (and b!1287176 ((_ is Node!4217) (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))))) b!1288041))

(assert (= b!1288042 b!1288043))

(assert (= (and b!1287176 ((_ is Leaf!6518) (c!211853 (dynLambda!5592 (toChars!3255 (transformation!2209 (rule!3948 t1!34))) (value!72589 t1!34))))) b!1288042))

(declare-fun m!1438645 () Bool)

(assert (=> b!1288041 m!1438645))

(declare-fun m!1438647 () Bool)

(assert (=> b!1288041 m!1438647))

(declare-fun m!1438649 () Bool)

(assert (=> b!1288042 m!1438649))

(assert (=> b!1287176 m!1437589))

(declare-fun e!826001 () Bool)

(assert (=> b!1287406 (= tp!375038 e!826001)))

(declare-fun b!1288044 () Bool)

(assert (=> b!1288044 (= e!826001 tp_is_empty!6551)))

(declare-fun b!1288046 () Bool)

(declare-fun tp!375216 () Bool)

(assert (=> b!1288046 (= e!826001 tp!375216)))

(declare-fun b!1288047 () Bool)

(declare-fun tp!375215 () Bool)

(declare-fun tp!375219 () Bool)

(assert (=> b!1288047 (= e!826001 (and tp!375215 tp!375219))))

(declare-fun b!1288045 () Bool)

(declare-fun tp!375217 () Bool)

(declare-fun tp!375218 () Bool)

(assert (=> b!1288045 (= e!826001 (and tp!375217 tp!375218))))

(assert (= (and b!1287406 ((_ is ElementMatch!3523) (regOne!7559 (regex!2209 (rule!3948 t2!34))))) b!1288044))

(assert (= (and b!1287406 ((_ is Concat!5823) (regOne!7559 (regex!2209 (rule!3948 t2!34))))) b!1288045))

(assert (= (and b!1287406 ((_ is Star!3523) (regOne!7559 (regex!2209 (rule!3948 t2!34))))) b!1288046))

(assert (= (and b!1287406 ((_ is Union!3523) (regOne!7559 (regex!2209 (rule!3948 t2!34))))) b!1288047))

(declare-fun e!826002 () Bool)

(assert (=> b!1287406 (= tp!375042 e!826002)))

(declare-fun b!1288048 () Bool)

(assert (=> b!1288048 (= e!826002 tp_is_empty!6551)))

(declare-fun b!1288050 () Bool)

(declare-fun tp!375221 () Bool)

(assert (=> b!1288050 (= e!826002 tp!375221)))

(declare-fun b!1288051 () Bool)

(declare-fun tp!375220 () Bool)

(declare-fun tp!375224 () Bool)

(assert (=> b!1288051 (= e!826002 (and tp!375220 tp!375224))))

(declare-fun b!1288049 () Bool)

(declare-fun tp!375222 () Bool)

(declare-fun tp!375223 () Bool)

(assert (=> b!1288049 (= e!826002 (and tp!375222 tp!375223))))

(assert (= (and b!1287406 ((_ is ElementMatch!3523) (regTwo!7559 (regex!2209 (rule!3948 t2!34))))) b!1288048))

(assert (= (and b!1287406 ((_ is Concat!5823) (regTwo!7559 (regex!2209 (rule!3948 t2!34))))) b!1288049))

(assert (= (and b!1287406 ((_ is Star!3523) (regTwo!7559 (regex!2209 (rule!3948 t2!34))))) b!1288050))

(assert (= (and b!1287406 ((_ is Union!3523) (regTwo!7559 (regex!2209 (rule!3948 t2!34))))) b!1288051))

(declare-fun e!826003 () Bool)

(assert (=> b!1287401 (= tp!375034 e!826003)))

(declare-fun b!1288052 () Bool)

(assert (=> b!1288052 (= e!826003 tp_is_empty!6551)))

(declare-fun b!1288054 () Bool)

(declare-fun tp!375226 () Bool)

(assert (=> b!1288054 (= e!826003 tp!375226)))

(declare-fun b!1288055 () Bool)

(declare-fun tp!375225 () Bool)

(declare-fun tp!375229 () Bool)

(assert (=> b!1288055 (= e!826003 (and tp!375225 tp!375229))))

(declare-fun b!1288053 () Bool)

(declare-fun tp!375227 () Bool)

(declare-fun tp!375228 () Bool)

(assert (=> b!1288053 (= e!826003 (and tp!375227 tp!375228))))

(assert (= (and b!1287401 ((_ is ElementMatch!3523) (reg!3852 (regex!2209 (rule!3948 t1!34))))) b!1288052))

(assert (= (and b!1287401 ((_ is Concat!5823) (reg!3852 (regex!2209 (rule!3948 t1!34))))) b!1288053))

(assert (= (and b!1287401 ((_ is Star!3523) (reg!3852 (regex!2209 (rule!3948 t1!34))))) b!1288054))

(assert (= (and b!1287401 ((_ is Union!3523) (reg!3852 (regex!2209 (rule!3948 t1!34))))) b!1288055))

(declare-fun e!826004 () Bool)

(assert (=> b!1287410 (= tp!375043 e!826004)))

(declare-fun b!1288056 () Bool)

(assert (=> b!1288056 (= e!826004 tp_is_empty!6551)))

(declare-fun b!1288058 () Bool)

(declare-fun tp!375231 () Bool)

(assert (=> b!1288058 (= e!826004 tp!375231)))

(declare-fun b!1288059 () Bool)

(declare-fun tp!375230 () Bool)

(declare-fun tp!375234 () Bool)

(assert (=> b!1288059 (= e!826004 (and tp!375230 tp!375234))))

(declare-fun b!1288057 () Bool)

(declare-fun tp!375232 () Bool)

(declare-fun tp!375233 () Bool)

(assert (=> b!1288057 (= e!826004 (and tp!375232 tp!375233))))

(assert (= (and b!1287410 ((_ is ElementMatch!3523) (regOne!7559 (regex!2209 (h!18234 rules!2550))))) b!1288056))

(assert (= (and b!1287410 ((_ is Concat!5823) (regOne!7559 (regex!2209 (h!18234 rules!2550))))) b!1288057))

(assert (= (and b!1287410 ((_ is Star!3523) (regOne!7559 (regex!2209 (h!18234 rules!2550))))) b!1288058))

(assert (= (and b!1287410 ((_ is Union!3523) (regOne!7559 (regex!2209 (h!18234 rules!2550))))) b!1288059))

(declare-fun e!826005 () Bool)

(assert (=> b!1287410 (= tp!375047 e!826005)))

(declare-fun b!1288060 () Bool)

(assert (=> b!1288060 (= e!826005 tp_is_empty!6551)))

(declare-fun b!1288062 () Bool)

(declare-fun tp!375236 () Bool)

(assert (=> b!1288062 (= e!826005 tp!375236)))

(declare-fun b!1288063 () Bool)

(declare-fun tp!375235 () Bool)

(declare-fun tp!375239 () Bool)

(assert (=> b!1288063 (= e!826005 (and tp!375235 tp!375239))))

(declare-fun b!1288061 () Bool)

(declare-fun tp!375237 () Bool)

(declare-fun tp!375238 () Bool)

(assert (=> b!1288061 (= e!826005 (and tp!375237 tp!375238))))

(assert (= (and b!1287410 ((_ is ElementMatch!3523) (regTwo!7559 (regex!2209 (h!18234 rules!2550))))) b!1288060))

(assert (= (and b!1287410 ((_ is Concat!5823) (regTwo!7559 (regex!2209 (h!18234 rules!2550))))) b!1288061))

(assert (= (and b!1287410 ((_ is Star!3523) (regTwo!7559 (regex!2209 (h!18234 rules!2550))))) b!1288062))

(assert (= (and b!1287410 ((_ is Union!3523) (regTwo!7559 (regex!2209 (h!18234 rules!2550))))) b!1288063))

(declare-fun e!826006 () Bool)

(assert (=> b!1287405 (= tp!375039 e!826006)))

(declare-fun b!1288064 () Bool)

(assert (=> b!1288064 (= e!826006 tp_is_empty!6551)))

(declare-fun b!1288066 () Bool)

(declare-fun tp!375241 () Bool)

(assert (=> b!1288066 (= e!826006 tp!375241)))

(declare-fun b!1288067 () Bool)

(declare-fun tp!375240 () Bool)

(declare-fun tp!375244 () Bool)

(assert (=> b!1288067 (= e!826006 (and tp!375240 tp!375244))))

(declare-fun b!1288065 () Bool)

(declare-fun tp!375242 () Bool)

(declare-fun tp!375243 () Bool)

(assert (=> b!1288065 (= e!826006 (and tp!375242 tp!375243))))

(assert (= (and b!1287405 ((_ is ElementMatch!3523) (reg!3852 (regex!2209 (rule!3948 t2!34))))) b!1288064))

(assert (= (and b!1287405 ((_ is Concat!5823) (reg!3852 (regex!2209 (rule!3948 t2!34))))) b!1288065))

(assert (= (and b!1287405 ((_ is Star!3523) (reg!3852 (regex!2209 (rule!3948 t2!34))))) b!1288066))

(assert (= (and b!1287405 ((_ is Union!3523) (reg!3852 (regex!2209 (rule!3948 t2!34))))) b!1288067))

(declare-fun b_lambda!36731 () Bool)

(assert (= b_lambda!36723 (or d!362653 b_lambda!36731)))

(declare-fun bs!328295 () Bool)

(declare-fun d!362989 () Bool)

(assert (= bs!328295 (and d!362989 d!362653)))

(assert (=> bs!328295 (= (dynLambda!5602 lambda!50472 (h!18234 rules!2550)) (ruleValid!541 thiss!19762 (h!18234 rules!2550)))))

(assert (=> bs!328295 m!1437805))

(assert (=> b!1287873 d!362989))

(declare-fun b_lambda!36733 () Bool)

(assert (= b_lambda!36729 (or d!362675 b_lambda!36733)))

(declare-fun bs!328296 () Bool)

(declare-fun d!362991 () Bool)

(assert (= bs!328296 (and d!362991 d!362675)))

(assert (=> bs!328296 (= (dynLambda!5604 lambda!50475 (h!18234 rules!2550)) (regex!2209 (h!18234 rules!2550)))))

(assert (=> b!1287962 d!362991))

(check-sat (not b!1287465) (not b!1287984) (not b_next!31019) (not b!1288055) (not b_next!31013) (not d!362775) (not b!1287768) (not bm!88515) (not b_lambda!36713) (not b!1288011) (not d!362715) (not b!1288063) (not b!1288047) (not b!1287926) (not d!362973) (not d!362717) (not d!362781) (not b!1287534) (not b!1287463) (not b!1287962) (not b!1287536) (not b!1288053) (not b!1287769) (not b!1287471) (not b!1287999) (not b!1287947) (not b_lambda!36731) (not bm!88491) (not d!362963) (not b!1287198) (not b!1287671) (not b_next!31005) (not b!1287724) (not d!362829) (not d!362865) (not b!1287920) (not d!362915) (not d!362929) (not b!1287503) (not b!1288013) (not b!1287510) (not b_next!31003) (not d!362711) (not b_lambda!36715) (not bm!88494) (not d!362883) (not b!1287979) (not b!1288034) (not d!362837) b_and!85639 (not d!362925) (not d!362933) (not b!1287606) (not b!1287949) (not b!1287992) b_and!85633 (not b!1288022) (not b!1287973) (not b!1288058) (not b_next!31009) (not b!1287874) (not b!1288039) (not d!362719) (not d!362939) (not d!362721) (not d!362959) (not b!1287955) (not b!1288017) (not b!1287670) (not bs!328295) (not d!362935) (not b!1287898) (not b!1287989) (not d!362729) (not b!1288018) (not b_lambda!36711) (not b!1287998) (not d!362785) (not b!1288043) (not b!1287918) b_and!85583 (not b!1287802) (not b!1288062) (not b!1288066) (not d!362761) (not b!1288061) (not d!362769) (not b!1287900) (not d!362955) (not d!362965) (not b!1288054) (not d!362763) (not b!1288030) (not d!362849) (not b!1287608) (not b!1288023) (not b!1287566) (not b!1287607) (not d!362731) (not b!1288020) (not d!362897) (not b!1287796) (not b!1288038) (not d!362975) (not b!1288014) (not d!362979) (not b!1287535) (not d!362937) (not b!1287493) (not b!1287985) (not b!1287896) (not b!1288032) (not d!362867) (not d!362847) (not b_next!31021) (not b!1287954) (not d!362943) (not d!362971) (not b!1288067) (not b!1288028) (not d!362843) (not b!1288036) (not b!1287609) (not b!1287176) (not b!1287950) (not d!362985) (not d!362741) (not b!1288045) (not b_next!31027) (not b!1288049) (not b!1288010) (not b!1288009) (not b!1288046) (not d!362941) (not d!362957) b_and!85637 (not b!1288042) (not d!362861) (not b!1287987) (not b!1288041) (not b!1287533) b_and!85579 (not b!1288057) (not b!1287983) (not b!1288059) (not b!1288027) (not b!1287571) (not d!362757) (not b_lambda!36717) (not b!1287569) (not b!1287916) (not b!1287948) (not b!1288026) (not b!1288035) (not b_next!31029) (not d!362873) (not bm!88518) (not b!1288031) (not d!362981) (not b!1288050) (not d!362983) (not b!1287565) (not d!362927) (not b!1287512) (not b!1287982) (not b!1288040) (not b_next!31007) (not b!1287956) (not d!362967) (not b!1287555) b_and!85647 (not b!1287995) (not b_next!31011) (not b!1288065) (not b!1287725) (not b!1287561) (not b!1287974) (not b!1287470) (not b!1287994) (not d!362877) b_and!85641 (not b!1287704) (not b!1287981) (not b!1287901) (not b!1288024) (not b!1287771) (not b!1287701) (not d!362739) b_and!85635 (not b_lambda!36733) (not d!362885) (not d!362917) (not b!1288019) (not b!1287899) (not d!362879) (not b!1287703) (not b!1287766) (not b!1287988) (not b!1288051) (not b!1287723) (not b!1288015) tp_is_empty!6551 b_and!85649 (not d!362735) (not b!1288000) b_and!85575 (not b!1287794) (not b!1287560) (not b!1287580) (not b!1287991) (not b!1287993))
(check-sat (not b_next!31005) (not b_next!31003) b_and!85639 b_and!85583 (not b_next!31021) (not b_next!31027) b_and!85637 b_and!85579 (not b_next!31029) b_and!85641 b_and!85635 b_and!85649 b_and!85575 (not b_next!31019) (not b_next!31013) b_and!85633 (not b_next!31009) (not b_next!31007) b_and!85647 (not b_next!31011))
