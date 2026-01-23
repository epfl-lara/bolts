; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191820 () Bool)

(assert start!191820)

(declare-fun b!1912483 () Bool)

(declare-fun b_free!54041 () Bool)

(declare-fun b_next!54745 () Bool)

(assert (=> b!1912483 (= b_free!54041 (not b_next!54745))))

(declare-fun tp!545893 () Bool)

(declare-fun b_and!149055 () Bool)

(assert (=> b!1912483 (= tp!545893 b_and!149055)))

(declare-fun b_free!54043 () Bool)

(declare-fun b_next!54747 () Bool)

(assert (=> b!1912483 (= b_free!54043 (not b_next!54747))))

(declare-fun tp!545885 () Bool)

(declare-fun b_and!149057 () Bool)

(assert (=> b!1912483 (= tp!545885 b_and!149057)))

(declare-fun b!1912484 () Bool)

(declare-fun b_free!54045 () Bool)

(declare-fun b_next!54749 () Bool)

(assert (=> b!1912484 (= b_free!54045 (not b_next!54749))))

(declare-fun tp!545894 () Bool)

(declare-fun b_and!149059 () Bool)

(assert (=> b!1912484 (= tp!545894 b_and!149059)))

(declare-fun b_free!54047 () Bool)

(declare-fun b_next!54751 () Bool)

(assert (=> b!1912484 (= b_free!54047 (not b_next!54751))))

(declare-fun tp!545882 () Bool)

(declare-fun b_and!149061 () Bool)

(assert (=> b!1912484 (= tp!545882 b_and!149061)))

(declare-fun b!1912450 () Bool)

(declare-fun b_free!54049 () Bool)

(declare-fun b_next!54753 () Bool)

(assert (=> b!1912450 (= b_free!54049 (not b_next!54753))))

(declare-fun tp!545883 () Bool)

(declare-fun b_and!149063 () Bool)

(assert (=> b!1912450 (= tp!545883 b_and!149063)))

(declare-fun b_free!54051 () Bool)

(declare-fun b_next!54755 () Bool)

(assert (=> b!1912450 (= b_free!54051 (not b_next!54755))))

(declare-fun tp!545890 () Bool)

(declare-fun b_and!149065 () Bool)

(assert (=> b!1912450 (= tp!545890 b_and!149065)))

(declare-fun e!1221719 () Bool)

(assert (=> b!1912450 (= e!1221719 (and tp!545883 tp!545890))))

(declare-fun b!1912451 () Bool)

(declare-fun tp!545887 () Bool)

(declare-datatypes ((List!21656 0))(
  ( (Nil!21574) (Cons!21574 (h!26975 (_ BitVec 16)) (t!178225 List!21656)) )
))
(declare-datatypes ((TokenValue!3984 0))(
  ( (FloatLiteralValue!7968 (text!28333 List!21656)) (TokenValueExt!3983 (__x!13466 Int)) (Broken!19920 (value!121233 List!21656)) (Object!4065) (End!3984) (Def!3984) (Underscore!3984) (Match!3984) (Else!3984) (Error!3984) (Case!3984) (If!3984) (Extends!3984) (Abstract!3984) (Class!3984) (Val!3984) (DelimiterValue!7968 (del!4044 List!21656)) (KeywordValue!3990 (value!121234 List!21656)) (CommentValue!7968 (value!121235 List!21656)) (WhitespaceValue!7968 (value!121236 List!21656)) (IndentationValue!3984 (value!121237 List!21656)) (String!25037) (Int32!3984) (Broken!19921 (value!121238 List!21656)) (Boolean!3985) (Unit!35945) (OperatorValue!3987 (op!4044 List!21656)) (IdentifierValue!7968 (value!121239 List!21656)) (IdentifierValue!7969 (value!121240 List!21656)) (WhitespaceValue!7969 (value!121241 List!21656)) (True!7968) (False!7968) (Broken!19922 (value!121242 List!21656)) (Broken!19923 (value!121243 List!21656)) (True!7969) (RightBrace!3984) (RightBracket!3984) (Colon!3984) (Null!3984) (Comma!3984) (LeftBracket!3984) (False!7969) (LeftBrace!3984) (ImaginaryLiteralValue!3984 (text!28334 List!21656)) (StringLiteralValue!11952 (value!121244 List!21656)) (EOFValue!3984 (value!121245 List!21656)) (IdentValue!3984 (value!121246 List!21656)) (DelimiterValue!7969 (value!121247 List!21656)) (DedentValue!3984 (value!121248 List!21656)) (NewLineValue!3984 (value!121249 List!21656)) (IntegerValue!11952 (value!121250 (_ BitVec 32)) (text!28335 List!21656)) (IntegerValue!11953 (value!121251 Int) (text!28336 List!21656)) (Times!3984) (Or!3984) (Equal!3984) (Minus!3984) (Broken!19924 (value!121252 List!21656)) (And!3984) (Div!3984) (LessEqual!3984) (Mod!3984) (Concat!9257) (Not!3984) (Plus!3984) (SpaceValue!3984 (value!121253 List!21656)) (IntegerValue!11954 (value!121254 Int) (text!28337 List!21656)) (StringLiteralValue!11953 (text!28338 List!21656)) (FloatLiteralValue!7969 (text!28339 List!21656)) (BytesLiteralValue!3984 (value!121255 List!21656)) (CommentValue!7969 (value!121256 List!21656)) (StringLiteralValue!11954 (value!121257 List!21656)) (ErrorTokenValue!3984 (msg!4045 List!21656)) )
))
(declare-datatypes ((C!10692 0))(
  ( (C!10693 (val!6298 Int)) )
))
(declare-datatypes ((List!21657 0))(
  ( (Nil!21575) (Cons!21575 (h!26976 C!10692) (t!178226 List!21657)) )
))
(declare-datatypes ((IArray!14381 0))(
  ( (IArray!14382 (innerList!7248 List!21657)) )
))
(declare-datatypes ((Conc!7188 0))(
  ( (Node!7188 (left!17238 Conc!7188) (right!17568 Conc!7188) (csize!14606 Int) (cheight!7399 Int)) (Leaf!10575 (xs!10082 IArray!14381) (csize!14607 Int)) (Empty!7188) )
))
(declare-datatypes ((BalanceConc!14192 0))(
  ( (BalanceConc!14193 (c!311514 Conc!7188)) )
))
(declare-datatypes ((TokenValueInjection!7552 0))(
  ( (TokenValueInjection!7553 (toValue!5477 Int) (toChars!5336 Int)) )
))
(declare-datatypes ((String!25038 0))(
  ( (String!25039 (value!121258 String)) )
))
(declare-datatypes ((Regex!5273 0))(
  ( (ElementMatch!5273 (c!311515 C!10692)) (Concat!9258 (regOne!11058 Regex!5273) (regTwo!11058 Regex!5273)) (EmptyExpr!5273) (Star!5273 (reg!5602 Regex!5273)) (EmptyLang!5273) (Union!5273 (regOne!11059 Regex!5273) (regTwo!11059 Regex!5273)) )
))
(declare-datatypes ((Rule!7496 0))(
  ( (Rule!7497 (regex!3848 Regex!5273) (tag!4284 String!25038) (isSeparator!3848 Bool) (transformation!3848 TokenValueInjection!7552)) )
))
(declare-datatypes ((List!21658 0))(
  ( (Nil!21576) (Cons!21576 (h!26977 Rule!7496) (t!178227 List!21658)) )
))
(declare-fun rules!3198 () List!21658)

(declare-fun e!1221725 () Bool)

(declare-fun e!1221722 () Bool)

(declare-fun inv!28675 (String!25038) Bool)

(declare-fun inv!28678 (TokenValueInjection!7552) Bool)

(assert (=> b!1912451 (= e!1221722 (and tp!545887 (inv!28675 (tag!4284 (h!26977 rules!3198))) (inv!28678 (transformation!3848 (h!26977 rules!3198))) e!1221725))))

(declare-datatypes ((Token!7248 0))(
  ( (Token!7249 (value!121259 TokenValue!3984) (rule!6047 Rule!7496) (size!16982 Int) (originalCharacters!4655 List!21657)) )
))
(declare-fun separatorToken!354 () Token!7248)

(declare-fun e!1221739 () Bool)

(declare-fun tp!545884 () Bool)

(declare-fun b!1912452 () Bool)

(declare-fun e!1221735 () Bool)

(declare-fun inv!21 (TokenValue!3984) Bool)

(assert (=> b!1912452 (= e!1221735 (and (inv!21 (value!121259 separatorToken!354)) e!1221739 tp!545884))))

(declare-fun b!1912453 () Bool)

(declare-fun res!854196 () Bool)

(declare-fun e!1221721 () Bool)

(assert (=> b!1912453 (=> res!854196 e!1221721)))

(declare-datatypes ((tuple2!20302 0))(
  ( (tuple2!20303 (_1!11620 Token!7248) (_2!11620 List!21657)) )
))
(declare-fun lt!731940 () tuple2!20302)

(declare-fun isEmpty!13255 (List!21657) Bool)

(assert (=> b!1912453 (= res!854196 (not (isEmpty!13255 (_2!11620 lt!731940))))))

(declare-fun b!1912454 () Bool)

(declare-fun res!854211 () Bool)

(declare-fun e!1221736 () Bool)

(assert (=> b!1912454 (=> (not res!854211) (not e!1221736))))

(declare-fun isEmpty!13256 (List!21658) Bool)

(assert (=> b!1912454 (= res!854211 (not (isEmpty!13256 rules!3198)))))

(declare-fun b!1912455 () Bool)

(declare-fun res!854209 () Bool)

(assert (=> b!1912455 (=> (not res!854209) (not e!1221736))))

(declare-datatypes ((LexerInterface!3461 0))(
  ( (LexerInterfaceExt!3458 (__x!13467 Int)) (Lexer!3459) )
))
(declare-fun thiss!23328 () LexerInterface!3461)

(declare-fun rulesProduceIndividualToken!1633 (LexerInterface!3461 List!21658 Token!7248) Bool)

(assert (=> b!1912455 (= res!854209 (rulesProduceIndividualToken!1633 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1221731 () Bool)

(declare-fun e!1221742 () Bool)

(declare-fun b!1912456 () Bool)

(declare-fun tp!545888 () Bool)

(declare-datatypes ((List!21659 0))(
  ( (Nil!21577) (Cons!21577 (h!26978 Token!7248) (t!178228 List!21659)) )
))
(declare-fun tokens!598 () List!21659)

(declare-fun inv!28679 (Token!7248) Bool)

(assert (=> b!1912456 (= e!1221742 (and (inv!28679 (h!26978 tokens!598)) e!1221731 tp!545888))))

(declare-fun b!1912457 () Bool)

(declare-fun e!1221737 () Bool)

(declare-fun e!1221729 () Bool)

(assert (=> b!1912457 (= e!1221737 e!1221729)))

(declare-fun res!854195 () Bool)

(assert (=> b!1912457 (=> res!854195 e!1221729)))

(declare-fun isEmpty!13257 (List!21659) Bool)

(assert (=> b!1912457 (= res!854195 (isEmpty!13257 tokens!598))))

(declare-fun lt!731943 () List!21657)

(declare-fun lt!731938 () List!21657)

(declare-datatypes ((Option!4401 0))(
  ( (None!4400) (Some!4400 (v!26457 tuple2!20302)) )
))
(declare-fun maxPrefix!1907 (LexerInterface!3461 List!21658 List!21657) Option!4401)

(assert (=> b!1912457 (= (maxPrefix!1907 thiss!23328 rules!3198 lt!731938) (Some!4400 (tuple2!20303 (h!26978 tokens!598) lt!731943)))))

(declare-datatypes ((Unit!35946 0))(
  ( (Unit!35947) )
))
(declare-fun lt!731933 () Unit!35946)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!84 (LexerInterface!3461 List!21658 Token!7248 Rule!7496 List!21657 Rule!7496) Unit!35946)

(assert (=> b!1912457 (= lt!731933 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!84 thiss!23328 rules!3198 (h!26978 tokens!598) (rule!6047 (h!26978 tokens!598)) lt!731943 (rule!6047 separatorToken!354)))))

(declare-fun b!1912458 () Bool)

(declare-fun res!854214 () Bool)

(assert (=> b!1912458 (=> (not res!854214) (not e!1221736))))

(declare-fun sepAndNonSepRulesDisjointChars!946 (List!21658 List!21658) Bool)

(assert (=> b!1912458 (= res!854214 (sepAndNonSepRulesDisjointChars!946 rules!3198 rules!3198))))

(declare-fun b!1912459 () Bool)

(declare-fun res!854199 () Bool)

(declare-fun e!1221733 () Bool)

(assert (=> b!1912459 (=> res!854199 e!1221733)))

(assert (=> b!1912459 (= res!854199 (isEmpty!13255 lt!731943))))

(declare-fun b!1912460 () Bool)

(declare-fun res!854201 () Bool)

(assert (=> b!1912460 (=> (not res!854201) (not e!1221736))))

(declare-fun rulesProduceEachTokenIndividuallyList!1192 (LexerInterface!3461 List!21658 List!21659) Bool)

(assert (=> b!1912460 (= res!854201 (rulesProduceEachTokenIndividuallyList!1192 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1912461 () Bool)

(declare-fun e!1221732 () Bool)

(declare-fun tp!545891 () Bool)

(assert (=> b!1912461 (= e!1221732 (and e!1221722 tp!545891))))

(declare-fun b!1912462 () Bool)

(declare-fun e!1221724 () Bool)

(declare-fun lt!731926 () Rule!7496)

(assert (=> b!1912462 (= e!1221724 (= (rule!6047 (h!26978 tokens!598)) lt!731926))))

(declare-fun b!1912463 () Bool)

(declare-fun res!854189 () Bool)

(assert (=> b!1912463 (=> res!854189 e!1221737)))

(declare-fun lt!731920 () List!21657)

(declare-fun lt!731947 () C!10692)

(declare-fun contains!3900 (List!21657 C!10692) Bool)

(assert (=> b!1912463 (= res!854189 (not (contains!3900 lt!731920 lt!731947)))))

(declare-fun b!1912464 () Bool)

(declare-fun e!1221738 () Bool)

(assert (=> b!1912464 (= e!1221738 e!1221721)))

(declare-fun res!854210 () Bool)

(assert (=> b!1912464 (=> res!854210 e!1221721)))

(declare-fun lt!731918 () List!21657)

(declare-fun lt!731944 () List!21657)

(declare-fun lt!731941 () List!21657)

(assert (=> b!1912464 (= res!854210 (or (not (= lt!731918 lt!731944)) (not (= lt!731944 lt!731941)) (not (= lt!731918 lt!731941))))))

(declare-fun printList!1044 (LexerInterface!3461 List!21659) List!21657)

(assert (=> b!1912464 (= lt!731944 (printList!1044 thiss!23328 (Cons!21577 (h!26978 tokens!598) Nil!21577)))))

(declare-fun lt!731921 () BalanceConc!14192)

(declare-fun list!8772 (BalanceConc!14192) List!21657)

(assert (=> b!1912464 (= lt!731918 (list!8772 lt!731921))))

(declare-datatypes ((IArray!14383 0))(
  ( (IArray!14384 (innerList!7249 List!21659)) )
))
(declare-datatypes ((Conc!7189 0))(
  ( (Node!7189 (left!17239 Conc!7189) (right!17569 Conc!7189) (csize!14608 Int) (cheight!7400 Int)) (Leaf!10576 (xs!10083 IArray!14383) (csize!14609 Int)) (Empty!7189) )
))
(declare-datatypes ((BalanceConc!14194 0))(
  ( (BalanceConc!14195 (c!311516 Conc!7189)) )
))
(declare-fun lt!731950 () BalanceConc!14194)

(declare-fun printTailRec!978 (LexerInterface!3461 BalanceConc!14194 Int BalanceConc!14192) BalanceConc!14192)

(assert (=> b!1912464 (= lt!731921 (printTailRec!978 thiss!23328 lt!731950 0 (BalanceConc!14193 Empty!7188)))))

(declare-fun print!1471 (LexerInterface!3461 BalanceConc!14194) BalanceConc!14192)

(assert (=> b!1912464 (= lt!731921 (print!1471 thiss!23328 lt!731950))))

(declare-fun singletonSeq!1871 (Token!7248) BalanceConc!14194)

(assert (=> b!1912464 (= lt!731950 (singletonSeq!1871 (h!26978 tokens!598)))))

(declare-fun lt!731923 () List!21657)

(declare-fun lt!731935 () C!10692)

(assert (=> b!1912464 (not (contains!3900 lt!731923 lt!731935))))

(declare-fun usedCharacters!356 (Regex!5273) List!21657)

(assert (=> b!1912464 (= lt!731923 (usedCharacters!356 (regex!3848 (rule!6047 (h!26978 tokens!598)))))))

(declare-fun lt!731931 () Unit!35946)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!52 (LexerInterface!3461 List!21658 List!21658 Rule!7496 Rule!7496 C!10692) Unit!35946)

(assert (=> b!1912464 (= lt!731931 (lemmaNonSepRuleNotContainsCharContainedInASepRule!52 thiss!23328 rules!3198 rules!3198 (rule!6047 (h!26978 tokens!598)) (rule!6047 separatorToken!354) lt!731935))))

(declare-fun lt!731928 () Unit!35946)

(declare-fun e!1221734 () Unit!35946)

(assert (=> b!1912464 (= lt!731928 e!1221734)))

(declare-fun c!311513 () Bool)

(assert (=> b!1912464 (= c!311513 (not (contains!3900 lt!731920 lt!731935)))))

(declare-fun lt!731939 () List!21657)

(declare-fun head!4454 (List!21657) C!10692)

(assert (=> b!1912464 (= lt!731935 (head!4454 lt!731939))))

(assert (=> b!1912464 (= lt!731920 (usedCharacters!356 (regex!3848 (rule!6047 separatorToken!354))))))

(declare-fun lt!731919 () List!21657)

(assert (=> b!1912464 (= lt!731919 lt!731938)))

(declare-fun ++!5799 (List!21657 List!21657) List!21657)

(assert (=> b!1912464 (= lt!731938 (++!5799 lt!731941 lt!731943))))

(declare-fun lt!731937 () List!21657)

(declare-fun lt!731946 () List!21657)

(assert (=> b!1912464 (= lt!731919 (++!5799 lt!731937 lt!731946))))

(assert (=> b!1912464 (= lt!731943 (++!5799 lt!731939 lt!731946))))

(assert (=> b!1912464 (= lt!731937 (++!5799 lt!731941 lt!731939))))

(declare-fun lt!731948 () Unit!35946)

(declare-fun lemmaConcatAssociativity!1163 (List!21657 List!21657 List!21657) Unit!35946)

(assert (=> b!1912464 (= lt!731948 (lemmaConcatAssociativity!1163 lt!731941 lt!731939 lt!731946))))

(declare-fun b!1912465 () Bool)

(assert (=> b!1912465 (= e!1221733 e!1221737)))

(declare-fun res!854206 () Bool)

(assert (=> b!1912465 (=> res!854206 e!1221737)))

(assert (=> b!1912465 (= res!854206 (contains!3900 lt!731923 lt!731947))))

(assert (=> b!1912465 (= lt!731947 (head!4454 lt!731943))))

(declare-fun b!1912466 () Bool)

(declare-fun Unit!35948 () Unit!35946)

(assert (=> b!1912466 (= e!1221734 Unit!35948)))

(declare-fun b!1912467 () Bool)

(declare-fun tp!545886 () Bool)

(declare-fun e!1221740 () Bool)

(assert (=> b!1912467 (= e!1221739 (and tp!545886 (inv!28675 (tag!4284 (rule!6047 separatorToken!354))) (inv!28678 (transformation!3848 (rule!6047 separatorToken!354))) e!1221740))))

(declare-fun b!1912468 () Bool)

(assert (=> b!1912468 (= e!1221736 (not e!1221738))))

(declare-fun res!854188 () Bool)

(assert (=> b!1912468 (=> res!854188 e!1221738)))

(declare-fun lt!731927 () Option!4401)

(declare-fun lt!731934 () Bool)

(assert (=> b!1912468 (= res!854188 (or (and (not lt!731934) (= (_1!11620 (v!26457 lt!731927)) (h!26978 tokens!598))) lt!731934 (= (_1!11620 (v!26457 lt!731927)) (h!26978 tokens!598))))))

(get-info :version)

(assert (=> b!1912468 (= lt!731934 (not ((_ is Some!4400) lt!731927)))))

(assert (=> b!1912468 (= lt!731927 (maxPrefix!1907 thiss!23328 rules!3198 (++!5799 lt!731941 lt!731946)))))

(declare-fun printWithSeparatorTokenWhenNeededList!504 (LexerInterface!3461 List!21658 List!21659 Token!7248) List!21657)

(assert (=> b!1912468 (= lt!731946 (printWithSeparatorTokenWhenNeededList!504 thiss!23328 rules!3198 (t!178228 tokens!598) separatorToken!354))))

(declare-fun e!1221717 () Bool)

(assert (=> b!1912468 e!1221717))

(declare-fun res!854200 () Bool)

(assert (=> b!1912468 (=> (not res!854200) (not e!1221717))))

(declare-datatypes ((Option!4402 0))(
  ( (None!4401) (Some!4401 (v!26458 Rule!7496)) )
))
(declare-fun lt!731936 () Option!4402)

(declare-fun isDefined!3699 (Option!4402) Bool)

(assert (=> b!1912468 (= res!854200 (isDefined!3699 lt!731936))))

(declare-fun getRuleFromTag!691 (LexerInterface!3461 List!21658 String!25038) Option!4402)

(assert (=> b!1912468 (= lt!731936 (getRuleFromTag!691 thiss!23328 rules!3198 (tag!4284 (rule!6047 (h!26978 tokens!598)))))))

(declare-fun lt!731949 () Unit!35946)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!691 (LexerInterface!3461 List!21658 List!21657 Token!7248) Unit!35946)

(assert (=> b!1912468 (= lt!731949 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!691 thiss!23328 rules!3198 lt!731941 (h!26978 tokens!598)))))

(assert (=> b!1912468 (= (_1!11620 lt!731940) (h!26978 tokens!598))))

(declare-fun lt!731930 () Option!4401)

(declare-fun get!6732 (Option!4401) tuple2!20302)

(assert (=> b!1912468 (= lt!731940 (get!6732 lt!731930))))

(declare-fun isDefined!3700 (Option!4401) Bool)

(assert (=> b!1912468 (isDefined!3700 lt!731930)))

(assert (=> b!1912468 (= lt!731930 (maxPrefix!1907 thiss!23328 rules!3198 lt!731941))))

(declare-fun lt!731922 () BalanceConc!14192)

(assert (=> b!1912468 (= lt!731941 (list!8772 lt!731922))))

(declare-fun e!1221723 () Bool)

(assert (=> b!1912468 e!1221723))

(declare-fun res!854204 () Bool)

(assert (=> b!1912468 (=> (not res!854204) (not e!1221723))))

(declare-fun lt!731942 () Option!4402)

(assert (=> b!1912468 (= res!854204 (isDefined!3699 lt!731942))))

(assert (=> b!1912468 (= lt!731942 (getRuleFromTag!691 thiss!23328 rules!3198 (tag!4284 (rule!6047 separatorToken!354))))))

(declare-fun lt!731917 () Unit!35946)

(assert (=> b!1912468 (= lt!731917 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!691 thiss!23328 rules!3198 lt!731939 separatorToken!354))))

(declare-fun charsOf!2404 (Token!7248) BalanceConc!14192)

(assert (=> b!1912468 (= lt!731939 (list!8772 (charsOf!2404 separatorToken!354)))))

(declare-fun lt!731925 () Unit!35946)

(declare-fun lemmaEqSameImage!556 (TokenValueInjection!7552 BalanceConc!14192 BalanceConc!14192) Unit!35946)

(declare-fun seqFromList!2720 (List!21657) BalanceConc!14192)

(assert (=> b!1912468 (= lt!731925 (lemmaEqSameImage!556 (transformation!3848 (rule!6047 (h!26978 tokens!598))) lt!731922 (seqFromList!2720 (originalCharacters!4655 (h!26978 tokens!598)))))))

(declare-fun lt!731932 () Unit!35946)

(declare-fun lemmaSemiInverse!827 (TokenValueInjection!7552 BalanceConc!14192) Unit!35946)

(assert (=> b!1912468 (= lt!731932 (lemmaSemiInverse!827 (transformation!3848 (rule!6047 (h!26978 tokens!598))) lt!731922))))

(assert (=> b!1912468 (= lt!731922 (charsOf!2404 (h!26978 tokens!598)))))

(declare-fun b!1912469 () Bool)

(declare-fun e!1221720 () Bool)

(declare-fun lt!731929 () Rule!7496)

(assert (=> b!1912469 (= e!1221720 (= (rule!6047 separatorToken!354) lt!731929))))

(declare-fun tp!545892 () Bool)

(declare-fun b!1912470 () Bool)

(declare-fun e!1221726 () Bool)

(assert (=> b!1912470 (= e!1221731 (and (inv!21 (value!121259 (h!26978 tokens!598))) e!1221726 tp!545892))))

(declare-fun b!1912471 () Bool)

(declare-fun res!854194 () Bool)

(assert (=> b!1912471 (=> res!854194 e!1221721)))

(declare-fun contains!3901 (List!21658 Rule!7496) Bool)

(assert (=> b!1912471 (= res!854194 (not (contains!3901 rules!3198 (rule!6047 (h!26978 tokens!598)))))))

(declare-fun b!1912472 () Bool)

(declare-fun Unit!35949 () Unit!35946)

(assert (=> b!1912472 (= e!1221734 Unit!35949)))

(declare-fun lt!731945 () Unit!35946)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!256 (Regex!5273 List!21657 C!10692) Unit!35946)

(assert (=> b!1912472 (= lt!731945 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!256 (regex!3848 (rule!6047 separatorToken!354)) lt!731939 lt!731935))))

(declare-fun res!854207 () Bool)

(declare-fun matchR!2559 (Regex!5273 List!21657) Bool)

(assert (=> b!1912472 (= res!854207 (not (matchR!2559 (regex!3848 (rule!6047 separatorToken!354)) lt!731939)))))

(declare-fun e!1221730 () Bool)

(assert (=> b!1912472 (=> (not res!854207) (not e!1221730))))

(assert (=> b!1912472 e!1221730))

(declare-fun b!1912473 () Bool)

(assert (=> b!1912473 (= e!1221717 e!1221724)))

(declare-fun res!854212 () Bool)

(assert (=> b!1912473 (=> (not res!854212) (not e!1221724))))

(assert (=> b!1912473 (= res!854212 (matchR!2559 (regex!3848 lt!731926) lt!731941))))

(declare-fun get!6733 (Option!4402) Rule!7496)

(assert (=> b!1912473 (= lt!731926 (get!6733 lt!731936))))

(declare-fun b!1912474 () Bool)

(declare-fun res!854202 () Bool)

(assert (=> b!1912474 (=> res!854202 e!1221721)))

(declare-fun isEmpty!13258 (BalanceConc!14194) Bool)

(declare-datatypes ((tuple2!20304 0))(
  ( (tuple2!20305 (_1!11621 BalanceConc!14194) (_2!11621 BalanceConc!14192)) )
))
(declare-fun lex!1536 (LexerInterface!3461 List!21658 BalanceConc!14192) tuple2!20304)

(assert (=> b!1912474 (= res!854202 (isEmpty!13258 (_1!11621 (lex!1536 thiss!23328 rules!3198 (seqFromList!2720 lt!731941)))))))

(declare-fun b!1912475 () Bool)

(assert (=> b!1912475 (= e!1221721 e!1221733)))

(declare-fun res!854213 () Bool)

(assert (=> b!1912475 (=> res!854213 e!1221733)))

(assert (=> b!1912475 (= res!854213 (not (matchR!2559 (regex!3848 (rule!6047 (h!26978 tokens!598))) lt!731941)))))

(declare-fun ruleValid!1167 (LexerInterface!3461 Rule!7496) Bool)

(assert (=> b!1912475 (ruleValid!1167 thiss!23328 (rule!6047 (h!26978 tokens!598)))))

(declare-fun lt!731924 () Unit!35946)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!664 (LexerInterface!3461 Rule!7496 List!21658) Unit!35946)

(assert (=> b!1912475 (= lt!731924 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!664 thiss!23328 (rule!6047 (h!26978 tokens!598)) rules!3198))))

(declare-fun b!1912476 () Bool)

(assert (=> b!1912476 (= e!1221730 false)))

(declare-fun b!1912477 () Bool)

(declare-fun res!854190 () Bool)

(assert (=> b!1912477 (=> (not res!854190) (not e!1221736))))

(assert (=> b!1912477 (= res!854190 ((_ is Cons!21577) tokens!598))))

(declare-fun b!1912478 () Bool)

(declare-fun res!854205 () Bool)

(assert (=> b!1912478 (=> res!854205 e!1221721)))

(assert (=> b!1912478 (= res!854205 (isSeparator!3848 (rule!6047 (h!26978 tokens!598))))))

(declare-fun b!1912479 () Bool)

(declare-fun res!854197 () Bool)

(assert (=> b!1912479 (=> res!854197 e!1221721)))

(assert (=> b!1912479 (= res!854197 (not (contains!3901 rules!3198 (rule!6047 separatorToken!354))))))

(declare-fun b!1912480 () Bool)

(declare-fun tp!545889 () Bool)

(assert (=> b!1912480 (= e!1221726 (and tp!545889 (inv!28675 (tag!4284 (rule!6047 (h!26978 tokens!598)))) (inv!28678 (transformation!3848 (rule!6047 (h!26978 tokens!598)))) e!1221719))))

(declare-fun b!1912481 () Bool)

(declare-fun res!854191 () Bool)

(assert (=> b!1912481 (=> (not res!854191) (not e!1221736))))

(declare-fun rulesInvariant!3068 (LexerInterface!3461 List!21658) Bool)

(assert (=> b!1912481 (= res!854191 (rulesInvariant!3068 thiss!23328 rules!3198))))

(declare-fun b!1912482 () Bool)

(declare-fun res!854198 () Bool)

(assert (=> b!1912482 (=> (not res!854198) (not e!1221736))))

(assert (=> b!1912482 (= res!854198 (isSeparator!3848 (rule!6047 separatorToken!354)))))

(assert (=> b!1912483 (= e!1221740 (and tp!545893 tp!545885))))

(assert (=> b!1912484 (= e!1221725 (and tp!545894 tp!545882))))

(declare-fun b!1912485 () Bool)

(declare-fun res!854193 () Bool)

(assert (=> b!1912485 (=> res!854193 e!1221721)))

(assert (=> b!1912485 (= res!854193 (not (rulesProduceIndividualToken!1633 thiss!23328 rules!3198 (h!26978 tokens!598))))))

(declare-fun b!1912486 () Bool)

(declare-fun res!854203 () Bool)

(assert (=> b!1912486 (=> (not res!854203) (not e!1221736))))

(declare-fun lambda!74675 () Int)

(declare-fun forall!4540 (List!21659 Int) Bool)

(assert (=> b!1912486 (= res!854203 (forall!4540 tokens!598 lambda!74675))))

(declare-fun b!1912487 () Bool)

(assert (=> b!1912487 (= e!1221723 e!1221720)))

(declare-fun res!854192 () Bool)

(assert (=> b!1912487 (=> (not res!854192) (not e!1221720))))

(assert (=> b!1912487 (= res!854192 (matchR!2559 (regex!3848 lt!731929) lt!731939))))

(assert (=> b!1912487 (= lt!731929 (get!6733 lt!731942))))

(declare-fun res!854208 () Bool)

(assert (=> start!191820 (=> (not res!854208) (not e!1221736))))

(assert (=> start!191820 (= res!854208 ((_ is Lexer!3459) thiss!23328))))

(assert (=> start!191820 e!1221736))

(assert (=> start!191820 true))

(assert (=> start!191820 e!1221732))

(assert (=> start!191820 e!1221742))

(assert (=> start!191820 (and (inv!28679 separatorToken!354) e!1221735)))

(declare-fun b!1912488 () Bool)

(assert (=> b!1912488 (= e!1221729 (forall!4540 tokens!598 lambda!74675))))

(assert (= (and start!191820 res!854208) b!1912454))

(assert (= (and b!1912454 res!854211) b!1912481))

(assert (= (and b!1912481 res!854191) b!1912460))

(assert (= (and b!1912460 res!854201) b!1912455))

(assert (= (and b!1912455 res!854209) b!1912482))

(assert (= (and b!1912482 res!854198) b!1912486))

(assert (= (and b!1912486 res!854203) b!1912458))

(assert (= (and b!1912458 res!854214) b!1912477))

(assert (= (and b!1912477 res!854190) b!1912468))

(assert (= (and b!1912468 res!854204) b!1912487))

(assert (= (and b!1912487 res!854192) b!1912469))

(assert (= (and b!1912468 res!854200) b!1912473))

(assert (= (and b!1912473 res!854212) b!1912462))

(assert (= (and b!1912468 (not res!854188)) b!1912464))

(assert (= (and b!1912464 c!311513) b!1912472))

(assert (= (and b!1912464 (not c!311513)) b!1912466))

(assert (= (and b!1912472 res!854207) b!1912476))

(assert (= (and b!1912464 (not res!854210)) b!1912485))

(assert (= (and b!1912485 (not res!854193)) b!1912474))

(assert (= (and b!1912474 (not res!854202)) b!1912471))

(assert (= (and b!1912471 (not res!854194)) b!1912479))

(assert (= (and b!1912479 (not res!854197)) b!1912478))

(assert (= (and b!1912478 (not res!854205)) b!1912453))

(assert (= (and b!1912453 (not res!854196)) b!1912475))

(assert (= (and b!1912475 (not res!854213)) b!1912459))

(assert (= (and b!1912459 (not res!854199)) b!1912465))

(assert (= (and b!1912465 (not res!854206)) b!1912463))

(assert (= (and b!1912463 (not res!854189)) b!1912457))

(assert (= (and b!1912457 (not res!854195)) b!1912488))

(assert (= b!1912451 b!1912484))

(assert (= b!1912461 b!1912451))

(assert (= (and start!191820 ((_ is Cons!21576) rules!3198)) b!1912461))

(assert (= b!1912480 b!1912450))

(assert (= b!1912470 b!1912480))

(assert (= b!1912456 b!1912470))

(assert (= (and start!191820 ((_ is Cons!21577) tokens!598)) b!1912456))

(assert (= b!1912467 b!1912483))

(assert (= b!1912452 b!1912467))

(assert (= start!191820 b!1912452))

(declare-fun m!2346499 () Bool)

(assert (=> b!1912463 m!2346499))

(declare-fun m!2346501 () Bool)

(assert (=> b!1912452 m!2346501))

(declare-fun m!2346503 () Bool)

(assert (=> b!1912488 m!2346503))

(declare-fun m!2346505 () Bool)

(assert (=> b!1912473 m!2346505))

(declare-fun m!2346507 () Bool)

(assert (=> b!1912473 m!2346507))

(declare-fun m!2346509 () Bool)

(assert (=> b!1912451 m!2346509))

(declare-fun m!2346511 () Bool)

(assert (=> b!1912451 m!2346511))

(declare-fun m!2346513 () Bool)

(assert (=> b!1912455 m!2346513))

(declare-fun m!2346515 () Bool)

(assert (=> b!1912487 m!2346515))

(declare-fun m!2346517 () Bool)

(assert (=> b!1912487 m!2346517))

(declare-fun m!2346519 () Bool)

(assert (=> b!1912468 m!2346519))

(declare-fun m!2346521 () Bool)

(assert (=> b!1912468 m!2346521))

(declare-fun m!2346523 () Bool)

(assert (=> b!1912468 m!2346523))

(declare-fun m!2346525 () Bool)

(assert (=> b!1912468 m!2346525))

(declare-fun m!2346527 () Bool)

(assert (=> b!1912468 m!2346527))

(declare-fun m!2346529 () Bool)

(assert (=> b!1912468 m!2346529))

(assert (=> b!1912468 m!2346527))

(declare-fun m!2346531 () Bool)

(assert (=> b!1912468 m!2346531))

(declare-fun m!2346533 () Bool)

(assert (=> b!1912468 m!2346533))

(declare-fun m!2346535 () Bool)

(assert (=> b!1912468 m!2346535))

(declare-fun m!2346537 () Bool)

(assert (=> b!1912468 m!2346537))

(declare-fun m!2346539 () Bool)

(assert (=> b!1912468 m!2346539))

(assert (=> b!1912468 m!2346525))

(declare-fun m!2346541 () Bool)

(assert (=> b!1912468 m!2346541))

(declare-fun m!2346543 () Bool)

(assert (=> b!1912468 m!2346543))

(declare-fun m!2346545 () Bool)

(assert (=> b!1912468 m!2346545))

(declare-fun m!2346547 () Bool)

(assert (=> b!1912468 m!2346547))

(declare-fun m!2346549 () Bool)

(assert (=> b!1912468 m!2346549))

(declare-fun m!2346551 () Bool)

(assert (=> b!1912468 m!2346551))

(declare-fun m!2346553 () Bool)

(assert (=> b!1912468 m!2346553))

(assert (=> b!1912468 m!2346547))

(declare-fun m!2346555 () Bool)

(assert (=> b!1912468 m!2346555))

(declare-fun m!2346557 () Bool)

(assert (=> b!1912464 m!2346557))

(declare-fun m!2346559 () Bool)

(assert (=> b!1912464 m!2346559))

(declare-fun m!2346561 () Bool)

(assert (=> b!1912464 m!2346561))

(declare-fun m!2346563 () Bool)

(assert (=> b!1912464 m!2346563))

(declare-fun m!2346565 () Bool)

(assert (=> b!1912464 m!2346565))

(declare-fun m!2346567 () Bool)

(assert (=> b!1912464 m!2346567))

(declare-fun m!2346569 () Bool)

(assert (=> b!1912464 m!2346569))

(declare-fun m!2346571 () Bool)

(assert (=> b!1912464 m!2346571))

(declare-fun m!2346573 () Bool)

(assert (=> b!1912464 m!2346573))

(declare-fun m!2346575 () Bool)

(assert (=> b!1912464 m!2346575))

(declare-fun m!2346577 () Bool)

(assert (=> b!1912464 m!2346577))

(declare-fun m!2346579 () Bool)

(assert (=> b!1912464 m!2346579))

(declare-fun m!2346581 () Bool)

(assert (=> b!1912464 m!2346581))

(declare-fun m!2346583 () Bool)

(assert (=> b!1912464 m!2346583))

(declare-fun m!2346585 () Bool)

(assert (=> b!1912464 m!2346585))

(declare-fun m!2346587 () Bool)

(assert (=> b!1912464 m!2346587))

(declare-fun m!2346589 () Bool)

(assert (=> b!1912453 m!2346589))

(declare-fun m!2346591 () Bool)

(assert (=> b!1912475 m!2346591))

(declare-fun m!2346593 () Bool)

(assert (=> b!1912475 m!2346593))

(declare-fun m!2346595 () Bool)

(assert (=> b!1912475 m!2346595))

(declare-fun m!2346597 () Bool)

(assert (=> b!1912480 m!2346597))

(declare-fun m!2346599 () Bool)

(assert (=> b!1912480 m!2346599))

(declare-fun m!2346601 () Bool)

(assert (=> b!1912457 m!2346601))

(declare-fun m!2346603 () Bool)

(assert (=> b!1912457 m!2346603))

(declare-fun m!2346605 () Bool)

(assert (=> b!1912457 m!2346605))

(declare-fun m!2346607 () Bool)

(assert (=> b!1912454 m!2346607))

(declare-fun m!2346609 () Bool)

(assert (=> b!1912458 m!2346609))

(declare-fun m!2346611 () Bool)

(assert (=> b!1912465 m!2346611))

(declare-fun m!2346613 () Bool)

(assert (=> b!1912465 m!2346613))

(declare-fun m!2346615 () Bool)

(assert (=> b!1912459 m!2346615))

(declare-fun m!2346617 () Bool)

(assert (=> b!1912472 m!2346617))

(declare-fun m!2346619 () Bool)

(assert (=> b!1912472 m!2346619))

(declare-fun m!2346621 () Bool)

(assert (=> b!1912471 m!2346621))

(declare-fun m!2346623 () Bool)

(assert (=> b!1912479 m!2346623))

(declare-fun m!2346625 () Bool)

(assert (=> start!191820 m!2346625))

(declare-fun m!2346627 () Bool)

(assert (=> b!1912474 m!2346627))

(assert (=> b!1912474 m!2346627))

(declare-fun m!2346629 () Bool)

(assert (=> b!1912474 m!2346629))

(declare-fun m!2346631 () Bool)

(assert (=> b!1912474 m!2346631))

(declare-fun m!2346633 () Bool)

(assert (=> b!1912467 m!2346633))

(declare-fun m!2346635 () Bool)

(assert (=> b!1912467 m!2346635))

(declare-fun m!2346637 () Bool)

(assert (=> b!1912485 m!2346637))

(assert (=> b!1912486 m!2346503))

(declare-fun m!2346639 () Bool)

(assert (=> b!1912481 m!2346639))

(declare-fun m!2346641 () Bool)

(assert (=> b!1912460 m!2346641))

(declare-fun m!2346643 () Bool)

(assert (=> b!1912470 m!2346643))

(declare-fun m!2346645 () Bool)

(assert (=> b!1912456 m!2346645))

(check-sat (not b_next!54747) (not b!1912463) b_and!149063 (not b!1912453) (not b!1912488) (not b!1912452) (not b!1912454) (not b_next!54755) (not b!1912465) (not b!1912468) (not b!1912458) (not b!1912471) (not b_next!54751) (not b!1912451) (not b!1912474) (not b!1912470) b_and!149061 (not b!1912485) (not b!1912472) (not b!1912475) (not b!1912455) (not b!1912459) b_and!149059 (not b!1912487) (not b!1912486) (not b_next!54745) (not b!1912460) b_and!149055 (not b!1912461) (not b!1912467) (not b!1912481) (not start!191820) (not b!1912456) (not b!1912464) (not b_next!54749) (not b_next!54753) b_and!149057 (not b!1912457) (not b!1912480) (not b!1912479) b_and!149065 (not b!1912473))
(check-sat b_and!149061 (not b_next!54747) b_and!149059 b_and!149063 (not b_next!54745) b_and!149055 (not b_next!54755) b_and!149057 b_and!149065 (not b_next!54751) (not b_next!54749) (not b_next!54753))
