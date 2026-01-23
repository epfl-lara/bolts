; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197600 () Bool)

(assert start!197600)

(declare-fun b!2010175 () Bool)

(declare-fun b_free!56041 () Bool)

(declare-fun b_next!56745 () Bool)

(assert (=> b!2010175 (= b_free!56041 (not b_next!56745))))

(declare-fun tp!599570 () Bool)

(declare-fun b_and!158877 () Bool)

(assert (=> b!2010175 (= tp!599570 b_and!158877)))

(declare-fun b_free!56043 () Bool)

(declare-fun b_next!56747 () Bool)

(assert (=> b!2010175 (= b_free!56043 (not b_next!56747))))

(declare-fun tp!599566 () Bool)

(declare-fun b_and!158879 () Bool)

(assert (=> b!2010175 (= tp!599566 b_and!158879)))

(declare-fun b!2010176 () Bool)

(declare-fun b_free!56045 () Bool)

(declare-fun b_next!56749 () Bool)

(assert (=> b!2010176 (= b_free!56045 (not b_next!56749))))

(declare-fun tp!599569 () Bool)

(declare-fun b_and!158881 () Bool)

(assert (=> b!2010176 (= tp!599569 b_and!158881)))

(declare-fun b_free!56047 () Bool)

(declare-fun b_next!56751 () Bool)

(assert (=> b!2010176 (= b_free!56047 (not b_next!56751))))

(declare-fun tp!599565 () Bool)

(declare-fun b_and!158883 () Bool)

(assert (=> b!2010176 (= tp!599565 b_and!158883)))

(declare-fun b!2010188 () Bool)

(declare-fun b_free!56049 () Bool)

(declare-fun b_next!56753 () Bool)

(assert (=> b!2010188 (= b_free!56049 (not b_next!56753))))

(declare-fun tp!599562 () Bool)

(declare-fun b_and!158885 () Bool)

(assert (=> b!2010188 (= tp!599562 b_and!158885)))

(declare-fun b_free!56051 () Bool)

(declare-fun b_next!56755 () Bool)

(assert (=> b!2010188 (= b_free!56051 (not b_next!56755))))

(declare-fun tp!599567 () Bool)

(declare-fun b_and!158887 () Bool)

(assert (=> b!2010188 (= tp!599567 b_and!158887)))

(declare-fun b!2010163 () Bool)

(declare-fun e!1270090 () Bool)

(declare-datatypes ((List!22152 0))(
  ( (Nil!22070) (Cons!22070 (h!27471 (_ BitVec 16)) (t!187651 List!22152)) )
))
(declare-datatypes ((TokenValue!4098 0))(
  ( (FloatLiteralValue!8196 (text!29131 List!22152)) (TokenValueExt!4097 (__x!13694 Int)) (Broken!20490 (value!124482 List!22152)) (Object!4179) (End!4098) (Def!4098) (Underscore!4098) (Match!4098) (Else!4098) (Error!4098) (Case!4098) (If!4098) (Extends!4098) (Abstract!4098) (Class!4098) (Val!4098) (DelimiterValue!8196 (del!4158 List!22152)) (KeywordValue!4104 (value!124483 List!22152)) (CommentValue!8196 (value!124484 List!22152)) (WhitespaceValue!8196 (value!124485 List!22152)) (IndentationValue!4098 (value!124486 List!22152)) (String!25607) (Int32!4098) (Broken!20491 (value!124487 List!22152)) (Boolean!4099) (Unit!36637) (OperatorValue!4101 (op!4158 List!22152)) (IdentifierValue!8196 (value!124488 List!22152)) (IdentifierValue!8197 (value!124489 List!22152)) (WhitespaceValue!8197 (value!124490 List!22152)) (True!8196) (False!8196) (Broken!20492 (value!124491 List!22152)) (Broken!20493 (value!124492 List!22152)) (True!8197) (RightBrace!4098) (RightBracket!4098) (Colon!4098) (Null!4098) (Comma!4098) (LeftBracket!4098) (False!8197) (LeftBrace!4098) (ImaginaryLiteralValue!4098 (text!29132 List!22152)) (StringLiteralValue!12294 (value!124493 List!22152)) (EOFValue!4098 (value!124494 List!22152)) (IdentValue!4098 (value!124495 List!22152)) (DelimiterValue!8197 (value!124496 List!22152)) (DedentValue!4098 (value!124497 List!22152)) (NewLineValue!4098 (value!124498 List!22152)) (IntegerValue!12294 (value!124499 (_ BitVec 32)) (text!29133 List!22152)) (IntegerValue!12295 (value!124500 Int) (text!29134 List!22152)) (Times!4098) (Or!4098) (Equal!4098) (Minus!4098) (Broken!20494 (value!124501 List!22152)) (And!4098) (Div!4098) (LessEqual!4098) (Mod!4098) (Concat!9485) (Not!4098) (Plus!4098) (SpaceValue!4098 (value!124502 List!22152)) (IntegerValue!12296 (value!124503 Int) (text!29135 List!22152)) (StringLiteralValue!12295 (text!29136 List!22152)) (FloatLiteralValue!8197 (text!29137 List!22152)) (BytesLiteralValue!4098 (value!124504 List!22152)) (CommentValue!8197 (value!124505 List!22152)) (StringLiteralValue!12296 (value!124506 List!22152)) (ErrorTokenValue!4098 (msg!4159 List!22152)) )
))
(declare-datatypes ((C!10920 0))(
  ( (C!10921 (val!6412 Int)) )
))
(declare-datatypes ((List!22153 0))(
  ( (Nil!22071) (Cons!22071 (h!27472 C!10920) (t!187652 List!22153)) )
))
(declare-datatypes ((Regex!5387 0))(
  ( (ElementMatch!5387 (c!324733 C!10920)) (Concat!9486 (regOne!11286 Regex!5387) (regTwo!11286 Regex!5387)) (EmptyExpr!5387) (Star!5387 (reg!5716 Regex!5387)) (EmptyLang!5387) (Union!5387 (regOne!11287 Regex!5387) (regTwo!11287 Regex!5387)) )
))
(declare-datatypes ((String!25608 0))(
  ( (String!25609 (value!124507 String)) )
))
(declare-datatypes ((IArray!14755 0))(
  ( (IArray!14756 (innerList!7435 List!22153)) )
))
(declare-datatypes ((Conc!7375 0))(
  ( (Node!7375 (left!17562 Conc!7375) (right!17892 Conc!7375) (csize!14980 Int) (cheight!7586 Int)) (Leaf!10819 (xs!10273 IArray!14755) (csize!14981 Int)) (Empty!7375) )
))
(declare-datatypes ((BalanceConc!14566 0))(
  ( (BalanceConc!14567 (c!324734 Conc!7375)) )
))
(declare-datatypes ((TokenValueInjection!7780 0))(
  ( (TokenValueInjection!7781 (toValue!5631 Int) (toChars!5490 Int)) )
))
(declare-datatypes ((Rule!7724 0))(
  ( (Rule!7725 (regex!3962 Regex!5387) (tag!4428 String!25608) (isSeparator!3962 Bool) (transformation!3962 TokenValueInjection!7780)) )
))
(declare-datatypes ((Token!7476 0))(
  ( (Token!7477 (value!124508 TokenValue!4098) (rule!6189 Rule!7724) (size!17258 Int) (originalCharacters!4769 List!22153)) )
))
(declare-datatypes ((List!22154 0))(
  ( (Nil!22072) (Cons!22072 (h!27473 Token!7476) (t!187653 List!22154)) )
))
(declare-fun tokens!598 () List!22154)

(declare-fun lt!754764 () Rule!7724)

(assert (=> b!2010163 (= e!1270090 (= (rule!6189 (h!27473 tokens!598)) lt!754764))))

(declare-datatypes ((List!22155 0))(
  ( (Nil!22073) (Cons!22073 (h!27474 Rule!7724) (t!187654 List!22155)) )
))
(declare-fun rules!3198 () List!22155)

(declare-fun e!1270101 () Bool)

(declare-fun tp!599572 () Bool)

(declare-fun e!1270098 () Bool)

(declare-fun b!2010164 () Bool)

(declare-fun inv!29233 (String!25608) Bool)

(declare-fun inv!29236 (TokenValueInjection!7780) Bool)

(assert (=> b!2010164 (= e!1270098 (and tp!599572 (inv!29233 (tag!4428 (h!27474 rules!3198))) (inv!29236 (transformation!3962 (h!27474 rules!3198))) e!1270101))))

(declare-fun b!2010165 () Bool)

(declare-fun e!1270092 () Bool)

(declare-fun e!1270099 () Bool)

(assert (=> b!2010165 (= e!1270092 (not e!1270099))))

(declare-fun res!881556 () Bool)

(assert (=> b!2010165 (=> res!881556 e!1270099)))

(declare-fun lt!754766 () Bool)

(declare-datatypes ((tuple2!20746 0))(
  ( (tuple2!20747 (_1!11842 Token!7476) (_2!11842 List!22153)) )
))
(declare-datatypes ((Option!4605 0))(
  ( (None!4604) (Some!4604 (v!26849 tuple2!20746)) )
))
(declare-fun lt!754768 () Option!4605)

(assert (=> b!2010165 (= res!881556 (or (and (not lt!754766) (= (_1!11842 (v!26849 lt!754768)) (h!27473 tokens!598))) lt!754766 (= (_1!11842 (v!26849 lt!754768)) (h!27473 tokens!598))))))

(get-info :version)

(assert (=> b!2010165 (= lt!754766 (not ((_ is Some!4604) lt!754768)))))

(declare-datatypes ((LexerInterface!3575 0))(
  ( (LexerInterfaceExt!3572 (__x!13695 Int)) (Lexer!3573) )
))
(declare-fun thiss!23328 () LexerInterface!3575)

(declare-fun lt!754760 () List!22153)

(declare-fun lt!754762 () List!22153)

(declare-fun maxPrefix!2011 (LexerInterface!3575 List!22155 List!22153) Option!4605)

(declare-fun ++!5957 (List!22153 List!22153) List!22153)

(assert (=> b!2010165 (= lt!754768 (maxPrefix!2011 thiss!23328 rules!3198 (++!5957 lt!754762 lt!754760)))))

(declare-fun separatorToken!354 () Token!7476)

(declare-fun printWithSeparatorTokenWhenNeededList!604 (LexerInterface!3575 List!22155 List!22154 Token!7476) List!22153)

(assert (=> b!2010165 (= lt!754760 (printWithSeparatorTokenWhenNeededList!604 thiss!23328 rules!3198 (t!187653 tokens!598) separatorToken!354))))

(declare-fun e!1270095 () Bool)

(assert (=> b!2010165 e!1270095))

(declare-fun res!881566 () Bool)

(assert (=> b!2010165 (=> (not res!881566) (not e!1270095))))

(declare-datatypes ((Option!4606 0))(
  ( (None!4605) (Some!4605 (v!26850 Rule!7724)) )
))
(declare-fun lt!754765 () Option!4606)

(declare-fun isDefined!3893 (Option!4606) Bool)

(assert (=> b!2010165 (= res!881566 (isDefined!3893 lt!754765))))

(declare-fun getRuleFromTag!777 (LexerInterface!3575 List!22155 String!25608) Option!4606)

(assert (=> b!2010165 (= lt!754765 (getRuleFromTag!777 thiss!23328 rules!3198 (tag!4428 (rule!6189 (h!27473 tokens!598)))))))

(declare-datatypes ((Unit!36638 0))(
  ( (Unit!36639) )
))
(declare-fun lt!754755 () Unit!36638)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!777 (LexerInterface!3575 List!22155 List!22153 Token!7476) Unit!36638)

(assert (=> b!2010165 (= lt!754755 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!777 thiss!23328 rules!3198 lt!754762 (h!27473 tokens!598)))))

(declare-fun e!1270081 () Bool)

(assert (=> b!2010165 e!1270081))

(declare-fun res!881557 () Bool)

(assert (=> b!2010165 (=> (not res!881557) (not e!1270081))))

(declare-fun lt!754758 () Option!4605)

(declare-fun isDefined!3894 (Option!4605) Bool)

(assert (=> b!2010165 (= res!881557 (isDefined!3894 lt!754758))))

(assert (=> b!2010165 (= lt!754758 (maxPrefix!2011 thiss!23328 rules!3198 lt!754762))))

(declare-fun lt!754771 () BalanceConc!14566)

(declare-fun list!8991 (BalanceConc!14566) List!22153)

(assert (=> b!2010165 (= lt!754762 (list!8991 lt!754771))))

(declare-fun e!1270093 () Bool)

(assert (=> b!2010165 e!1270093))

(declare-fun res!881562 () Bool)

(assert (=> b!2010165 (=> (not res!881562) (not e!1270093))))

(declare-fun lt!754759 () Option!4606)

(assert (=> b!2010165 (= res!881562 (isDefined!3893 lt!754759))))

(assert (=> b!2010165 (= lt!754759 (getRuleFromTag!777 thiss!23328 rules!3198 (tag!4428 (rule!6189 separatorToken!354))))))

(declare-fun lt!754757 () List!22153)

(declare-fun lt!754769 () Unit!36638)

(assert (=> b!2010165 (= lt!754769 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!777 thiss!23328 rules!3198 lt!754757 separatorToken!354))))

(declare-fun charsOf!2502 (Token!7476) BalanceConc!14566)

(assert (=> b!2010165 (= lt!754757 (list!8991 (charsOf!2502 separatorToken!354)))))

(declare-fun lt!754770 () Unit!36638)

(declare-fun lemmaEqSameImage!648 (TokenValueInjection!7780 BalanceConc!14566 BalanceConc!14566) Unit!36638)

(declare-fun seqFromList!2816 (List!22153) BalanceConc!14566)

(assert (=> b!2010165 (= lt!754770 (lemmaEqSameImage!648 (transformation!3962 (rule!6189 (h!27473 tokens!598))) lt!754771 (seqFromList!2816 (originalCharacters!4769 (h!27473 tokens!598)))))))

(declare-fun lt!754767 () Unit!36638)

(declare-fun lemmaSemiInverse!919 (TokenValueInjection!7780 BalanceConc!14566) Unit!36638)

(assert (=> b!2010165 (= lt!754767 (lemmaSemiInverse!919 (transformation!3962 (rule!6189 (h!27473 tokens!598))) lt!754771))))

(assert (=> b!2010165 (= lt!754771 (charsOf!2502 (h!27473 tokens!598)))))

(declare-fun b!2010166 () Bool)

(declare-fun e!1270100 () Bool)

(assert (=> b!2010166 (= e!1270099 e!1270100)))

(declare-fun res!881564 () Bool)

(assert (=> b!2010166 (=> res!881564 e!1270100)))

(declare-fun lt!754756 () C!10920)

(declare-fun contains!4038 (List!22153 C!10920) Bool)

(declare-fun usedCharacters!400 (Regex!5387) List!22153)

(assert (=> b!2010166 (= res!881564 (contains!4038 (usedCharacters!400 (regex!3962 (rule!6189 separatorToken!354))) lt!754756))))

(declare-fun head!4540 (List!22153) C!10920)

(assert (=> b!2010166 (= lt!754756 (head!4540 lt!754757))))

(assert (=> b!2010166 (= (++!5957 (++!5957 lt!754762 lt!754757) lt!754760) (++!5957 lt!754762 (++!5957 lt!754757 lt!754760)))))

(declare-fun lt!754763 () Unit!36638)

(declare-fun lemmaConcatAssociativity!1225 (List!22153 List!22153 List!22153) Unit!36638)

(assert (=> b!2010166 (= lt!754763 (lemmaConcatAssociativity!1225 lt!754762 lt!754757 lt!754760))))

(declare-fun e!1270083 () Bool)

(declare-fun tp!599571 () Bool)

(declare-fun e!1270087 () Bool)

(declare-fun b!2010167 () Bool)

(declare-fun inv!29237 (Token!7476) Bool)

(assert (=> b!2010167 (= e!1270083 (and (inv!29237 (h!27473 tokens!598)) e!1270087 tp!599571))))

(declare-fun b!2010168 () Bool)

(declare-fun e!1270102 () Bool)

(assert (=> b!2010168 (= e!1270093 e!1270102)))

(declare-fun res!881559 () Bool)

(assert (=> b!2010168 (=> (not res!881559) (not e!1270102))))

(declare-fun lt!754772 () Rule!7724)

(declare-fun matchR!2653 (Regex!5387 List!22153) Bool)

(assert (=> b!2010168 (= res!881559 (matchR!2653 (regex!3962 lt!754772) lt!754757))))

(declare-fun get!6977 (Option!4606) Rule!7724)

(assert (=> b!2010168 (= lt!754772 (get!6977 lt!754759))))

(declare-fun b!2010169 () Bool)

(declare-fun res!881561 () Bool)

(assert (=> b!2010169 (=> (not res!881561) (not e!1270092))))

(declare-fun rulesProduceEachTokenIndividuallyList!1306 (LexerInterface!3575 List!22155 List!22154) Bool)

(assert (=> b!2010169 (= res!881561 (rulesProduceEachTokenIndividuallyList!1306 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2010170 () Bool)

(declare-fun res!881569 () Bool)

(assert (=> b!2010170 (=> (not res!881569) (not e!1270092))))

(declare-fun lambda!76087 () Int)

(declare-fun forall!4690 (List!22154 Int) Bool)

(assert (=> b!2010170 (= res!881569 (forall!4690 tokens!598 lambda!76087))))

(declare-fun e!1270080 () Bool)

(declare-fun e!1270096 () Bool)

(declare-fun tp!599574 () Bool)

(declare-fun b!2010171 () Bool)

(declare-fun inv!21 (TokenValue!4098) Bool)

(assert (=> b!2010171 (= e!1270080 (and (inv!21 (value!124508 separatorToken!354)) e!1270096 tp!599574))))

(declare-fun res!881560 () Bool)

(assert (=> start!197600 (=> (not res!881560) (not e!1270092))))

(assert (=> start!197600 (= res!881560 ((_ is Lexer!3573) thiss!23328))))

(assert (=> start!197600 e!1270092))

(assert (=> start!197600 true))

(declare-fun e!1270094 () Bool)

(assert (=> start!197600 e!1270094))

(assert (=> start!197600 e!1270083))

(assert (=> start!197600 (and (inv!29237 separatorToken!354) e!1270080)))

(declare-fun b!2010172 () Bool)

(declare-fun tp!599564 () Bool)

(assert (=> b!2010172 (= e!1270094 (and e!1270098 tp!599564))))

(declare-fun b!2010173 () Bool)

(assert (=> b!2010173 (= e!1270102 (= (rule!6189 separatorToken!354) lt!754772))))

(declare-fun b!2010174 () Bool)

(declare-fun res!881565 () Bool)

(assert (=> b!2010174 (=> (not res!881565) (not e!1270092))))

(declare-fun rulesInvariant!3182 (LexerInterface!3575 List!22155) Bool)

(assert (=> b!2010174 (= res!881565 (rulesInvariant!3182 thiss!23328 rules!3198))))

(declare-fun e!1270088 () Bool)

(assert (=> b!2010175 (= e!1270088 (and tp!599570 tp!599566))))

(assert (=> b!2010176 (= e!1270101 (and tp!599569 tp!599565))))

(declare-fun b!2010177 () Bool)

(declare-fun res!881558 () Bool)

(assert (=> b!2010177 (=> (not res!881558) (not e!1270092))))

(declare-fun rulesProduceIndividualToken!1747 (LexerInterface!3575 List!22155 Token!7476) Bool)

(assert (=> b!2010177 (= res!881558 (rulesProduceIndividualToken!1747 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2010178 () Bool)

(declare-fun res!881563 () Bool)

(assert (=> b!2010178 (=> (not res!881563) (not e!1270092))))

(assert (=> b!2010178 (= res!881563 ((_ is Cons!22072) tokens!598))))

(declare-fun b!2010179 () Bool)

(declare-fun tp!599568 () Bool)

(assert (=> b!2010179 (= e!1270096 (and tp!599568 (inv!29233 (tag!4428 (rule!6189 separatorToken!354))) (inv!29236 (transformation!3962 (rule!6189 separatorToken!354))) e!1270088))))

(declare-fun tp!599573 () Bool)

(declare-fun b!2010180 () Bool)

(declare-fun e!1270084 () Bool)

(assert (=> b!2010180 (= e!1270087 (and (inv!21 (value!124508 (h!27473 tokens!598))) e!1270084 tp!599573))))

(declare-fun b!2010181 () Bool)

(assert (=> b!2010181 (= e!1270100 false)))

(assert (=> b!2010181 (not (matchR!2653 (regex!3962 (rule!6189 separatorToken!354)) lt!754757))))

(declare-fun lt!754761 () Unit!36638)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!288 (Regex!5387 List!22153 C!10920) Unit!36638)

(assert (=> b!2010181 (= lt!754761 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!288 (regex!3962 (rule!6189 separatorToken!354)) lt!754757 lt!754756))))

(declare-fun b!2010182 () Bool)

(declare-fun res!881568 () Bool)

(assert (=> b!2010182 (=> (not res!881568) (not e!1270092))))

(declare-fun sepAndNonSepRulesDisjointChars!1060 (List!22155 List!22155) Bool)

(assert (=> b!2010182 (= res!881568 (sepAndNonSepRulesDisjointChars!1060 rules!3198 rules!3198))))

(declare-fun b!2010183 () Bool)

(declare-fun res!881570 () Bool)

(assert (=> b!2010183 (=> (not res!881570) (not e!1270092))))

(assert (=> b!2010183 (= res!881570 (isSeparator!3962 (rule!6189 separatorToken!354)))))

(declare-fun tp!599563 () Bool)

(declare-fun b!2010184 () Bool)

(declare-fun e!1270086 () Bool)

(assert (=> b!2010184 (= e!1270084 (and tp!599563 (inv!29233 (tag!4428 (rule!6189 (h!27473 tokens!598)))) (inv!29236 (transformation!3962 (rule!6189 (h!27473 tokens!598)))) e!1270086))))

(declare-fun b!2010185 () Bool)

(declare-fun res!881571 () Bool)

(assert (=> b!2010185 (=> (not res!881571) (not e!1270092))))

(declare-fun isEmpty!13694 (List!22155) Bool)

(assert (=> b!2010185 (= res!881571 (not (isEmpty!13694 rules!3198)))))

(declare-fun b!2010186 () Bool)

(assert (=> b!2010186 (= e!1270095 e!1270090)))

(declare-fun res!881567 () Bool)

(assert (=> b!2010186 (=> (not res!881567) (not e!1270090))))

(assert (=> b!2010186 (= res!881567 (matchR!2653 (regex!3962 lt!754764) lt!754762))))

(assert (=> b!2010186 (= lt!754764 (get!6977 lt!754765))))

(declare-fun b!2010187 () Bool)

(declare-fun get!6978 (Option!4605) tuple2!20746)

(assert (=> b!2010187 (= e!1270081 (= (_1!11842 (get!6978 lt!754758)) (h!27473 tokens!598)))))

(assert (=> b!2010188 (= e!1270086 (and tp!599562 tp!599567))))

(assert (= (and start!197600 res!881560) b!2010185))

(assert (= (and b!2010185 res!881571) b!2010174))

(assert (= (and b!2010174 res!881565) b!2010169))

(assert (= (and b!2010169 res!881561) b!2010177))

(assert (= (and b!2010177 res!881558) b!2010183))

(assert (= (and b!2010183 res!881570) b!2010170))

(assert (= (and b!2010170 res!881569) b!2010182))

(assert (= (and b!2010182 res!881568) b!2010178))

(assert (= (and b!2010178 res!881563) b!2010165))

(assert (= (and b!2010165 res!881562) b!2010168))

(assert (= (and b!2010168 res!881559) b!2010173))

(assert (= (and b!2010165 res!881557) b!2010187))

(assert (= (and b!2010165 res!881566) b!2010186))

(assert (= (and b!2010186 res!881567) b!2010163))

(assert (= (and b!2010165 (not res!881556)) b!2010166))

(assert (= (and b!2010166 (not res!881564)) b!2010181))

(assert (= b!2010164 b!2010176))

(assert (= b!2010172 b!2010164))

(assert (= (and start!197600 ((_ is Cons!22073) rules!3198)) b!2010172))

(assert (= b!2010184 b!2010188))

(assert (= b!2010180 b!2010184))

(assert (= b!2010167 b!2010180))

(assert (= (and start!197600 ((_ is Cons!22072) tokens!598)) b!2010167))

(assert (= b!2010179 b!2010175))

(assert (= b!2010171 b!2010179))

(assert (= start!197600 b!2010171))

(declare-fun m!2442941 () Bool)

(assert (=> start!197600 m!2442941))

(declare-fun m!2442943 () Bool)

(assert (=> b!2010164 m!2442943))

(declare-fun m!2442945 () Bool)

(assert (=> b!2010164 m!2442945))

(declare-fun m!2442947 () Bool)

(assert (=> b!2010179 m!2442947))

(declare-fun m!2442949 () Bool)

(assert (=> b!2010179 m!2442949))

(declare-fun m!2442951 () Bool)

(assert (=> b!2010184 m!2442951))

(declare-fun m!2442953 () Bool)

(assert (=> b!2010184 m!2442953))

(declare-fun m!2442955 () Bool)

(assert (=> b!2010182 m!2442955))

(declare-fun m!2442957 () Bool)

(assert (=> b!2010177 m!2442957))

(declare-fun m!2442959 () Bool)

(assert (=> b!2010187 m!2442959))

(declare-fun m!2442961 () Bool)

(assert (=> b!2010167 m!2442961))

(declare-fun m!2442963 () Bool)

(assert (=> b!2010185 m!2442963))

(declare-fun m!2442965 () Bool)

(assert (=> b!2010166 m!2442965))

(declare-fun m!2442967 () Bool)

(assert (=> b!2010166 m!2442967))

(declare-fun m!2442969 () Bool)

(assert (=> b!2010166 m!2442969))

(declare-fun m!2442971 () Bool)

(assert (=> b!2010166 m!2442971))

(assert (=> b!2010166 m!2442965))

(declare-fun m!2442973 () Bool)

(assert (=> b!2010166 m!2442973))

(declare-fun m!2442975 () Bool)

(assert (=> b!2010166 m!2442975))

(assert (=> b!2010166 m!2442967))

(declare-fun m!2442977 () Bool)

(assert (=> b!2010166 m!2442977))

(assert (=> b!2010166 m!2442971))

(declare-fun m!2442979 () Bool)

(assert (=> b!2010166 m!2442979))

(declare-fun m!2442981 () Bool)

(assert (=> b!2010169 m!2442981))

(declare-fun m!2442983 () Bool)

(assert (=> b!2010171 m!2442983))

(declare-fun m!2442985 () Bool)

(assert (=> b!2010165 m!2442985))

(declare-fun m!2442987 () Bool)

(assert (=> b!2010165 m!2442987))

(declare-fun m!2442989 () Bool)

(assert (=> b!2010165 m!2442989))

(declare-fun m!2442991 () Bool)

(assert (=> b!2010165 m!2442991))

(declare-fun m!2442993 () Bool)

(assert (=> b!2010165 m!2442993))

(declare-fun m!2442995 () Bool)

(assert (=> b!2010165 m!2442995))

(declare-fun m!2442997 () Bool)

(assert (=> b!2010165 m!2442997))

(declare-fun m!2442999 () Bool)

(assert (=> b!2010165 m!2442999))

(assert (=> b!2010165 m!2442997))

(declare-fun m!2443001 () Bool)

(assert (=> b!2010165 m!2443001))

(assert (=> b!2010165 m!2442989))

(declare-fun m!2443003 () Bool)

(assert (=> b!2010165 m!2443003))

(declare-fun m!2443005 () Bool)

(assert (=> b!2010165 m!2443005))

(declare-fun m!2443007 () Bool)

(assert (=> b!2010165 m!2443007))

(declare-fun m!2443009 () Bool)

(assert (=> b!2010165 m!2443009))

(declare-fun m!2443011 () Bool)

(assert (=> b!2010165 m!2443011))

(declare-fun m!2443013 () Bool)

(assert (=> b!2010165 m!2443013))

(declare-fun m!2443015 () Bool)

(assert (=> b!2010165 m!2443015))

(declare-fun m!2443017 () Bool)

(assert (=> b!2010165 m!2443017))

(assert (=> b!2010165 m!2443005))

(declare-fun m!2443019 () Bool)

(assert (=> b!2010165 m!2443019))

(declare-fun m!2443021 () Bool)

(assert (=> b!2010181 m!2443021))

(declare-fun m!2443023 () Bool)

(assert (=> b!2010181 m!2443023))

(declare-fun m!2443025 () Bool)

(assert (=> b!2010186 m!2443025))

(declare-fun m!2443027 () Bool)

(assert (=> b!2010186 m!2443027))

(declare-fun m!2443029 () Bool)

(assert (=> b!2010170 m!2443029))

(declare-fun m!2443031 () Bool)

(assert (=> b!2010168 m!2443031))

(declare-fun m!2443033 () Bool)

(assert (=> b!2010168 m!2443033))

(declare-fun m!2443035 () Bool)

(assert (=> b!2010180 m!2443035))

(declare-fun m!2443037 () Bool)

(assert (=> b!2010174 m!2443037))

(check-sat (not b_next!56745) (not b!2010177) b_and!158885 (not b!2010164) (not b_next!56747) (not b_next!56755) b_and!158887 (not b!2010171) (not b!2010179) (not b!2010185) (not start!197600) (not b!2010182) (not b!2010174) b_and!158883 (not b_next!56749) (not b!2010166) b_and!158877 (not b!2010184) (not b_next!56751) (not b!2010165) (not b!2010181) (not b!2010167) (not b!2010180) (not b!2010172) b_and!158881 (not b!2010170) (not b!2010168) (not b!2010169) (not b!2010186) (not b_next!56753) b_and!158879 (not b!2010187))
(check-sat (not b_next!56745) b_and!158885 (not b_next!56749) (not b_next!56747) b_and!158877 (not b_next!56751) (not b_next!56755) b_and!158887 b_and!158881 b_and!158883 (not b_next!56753) b_and!158879)
