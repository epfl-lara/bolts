; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197864 () Bool)

(assert start!197864)

(declare-fun b!2012392 () Bool)

(declare-fun b_free!56169 () Bool)

(declare-fun b_next!56873 () Bool)

(assert (=> b!2012392 (= b_free!56169 (not b_next!56873))))

(declare-fun tp!600120 () Bool)

(declare-fun b_and!159197 () Bool)

(assert (=> b!2012392 (= tp!600120 b_and!159197)))

(declare-fun b_free!56171 () Bool)

(declare-fun b_next!56875 () Bool)

(assert (=> b!2012392 (= b_free!56171 (not b_next!56875))))

(declare-fun tp!600124 () Bool)

(declare-fun b_and!159199 () Bool)

(assert (=> b!2012392 (= tp!600124 b_and!159199)))

(declare-fun b!2012384 () Bool)

(declare-fun b_free!56173 () Bool)

(declare-fun b_next!56877 () Bool)

(assert (=> b!2012384 (= b_free!56173 (not b_next!56877))))

(declare-fun tp!600127 () Bool)

(declare-fun b_and!159201 () Bool)

(assert (=> b!2012384 (= tp!600127 b_and!159201)))

(declare-fun b_free!56175 () Bool)

(declare-fun b_next!56879 () Bool)

(assert (=> b!2012384 (= b_free!56175 (not b_next!56879))))

(declare-fun tp!600130 () Bool)

(declare-fun b_and!159203 () Bool)

(assert (=> b!2012384 (= tp!600130 b_and!159203)))

(declare-fun b!2012393 () Bool)

(declare-fun b_free!56177 () Bool)

(declare-fun b_next!56881 () Bool)

(assert (=> b!2012393 (= b_free!56177 (not b_next!56881))))

(declare-fun tp!600129 () Bool)

(declare-fun b_and!159205 () Bool)

(assert (=> b!2012393 (= tp!600129 b_and!159205)))

(declare-fun b_free!56179 () Bool)

(declare-fun b_next!56883 () Bool)

(assert (=> b!2012393 (= b_free!56179 (not b_next!56883))))

(declare-fun tp!600128 () Bool)

(declare-fun b_and!159207 () Bool)

(assert (=> b!2012393 (= tp!600128 b_and!159207)))

(declare-fun b!2012369 () Bool)

(declare-fun res!882623 () Bool)

(declare-fun e!1271621 () Bool)

(assert (=> b!2012369 (=> (not res!882623) (not e!1271621))))

(declare-datatypes ((LexerInterface!3583 0))(
  ( (LexerInterfaceExt!3580 (__x!13710 Int)) (Lexer!3581) )
))
(declare-fun thiss!23328 () LexerInterface!3583)

(declare-datatypes ((C!10936 0))(
  ( (C!10937 (val!6420 Int)) )
))
(declare-datatypes ((List!22188 0))(
  ( (Nil!22106) (Cons!22106 (h!27507 C!10936) (t!187907 List!22188)) )
))
(declare-datatypes ((List!22189 0))(
  ( (Nil!22107) (Cons!22107 (h!27508 (_ BitVec 16)) (t!187908 List!22189)) )
))
(declare-datatypes ((TokenValue!4106 0))(
  ( (FloatLiteralValue!8212 (text!29187 List!22189)) (TokenValueExt!4105 (__x!13711 Int)) (Broken!20530 (value!124710 List!22189)) (Object!4187) (End!4106) (Def!4106) (Underscore!4106) (Match!4106) (Else!4106) (Error!4106) (Case!4106) (If!4106) (Extends!4106) (Abstract!4106) (Class!4106) (Val!4106) (DelimiterValue!8212 (del!4166 List!22189)) (KeywordValue!4112 (value!124711 List!22189)) (CommentValue!8212 (value!124712 List!22189)) (WhitespaceValue!8212 (value!124713 List!22189)) (IndentationValue!4106 (value!124714 List!22189)) (String!25647) (Int32!4106) (Broken!20531 (value!124715 List!22189)) (Boolean!4107) (Unit!36683) (OperatorValue!4109 (op!4166 List!22189)) (IdentifierValue!8212 (value!124716 List!22189)) (IdentifierValue!8213 (value!124717 List!22189)) (WhitespaceValue!8213 (value!124718 List!22189)) (True!8212) (False!8212) (Broken!20532 (value!124719 List!22189)) (Broken!20533 (value!124720 List!22189)) (True!8213) (RightBrace!4106) (RightBracket!4106) (Colon!4106) (Null!4106) (Comma!4106) (LeftBracket!4106) (False!8213) (LeftBrace!4106) (ImaginaryLiteralValue!4106 (text!29188 List!22189)) (StringLiteralValue!12318 (value!124721 List!22189)) (EOFValue!4106 (value!124722 List!22189)) (IdentValue!4106 (value!124723 List!22189)) (DelimiterValue!8213 (value!124724 List!22189)) (DedentValue!4106 (value!124725 List!22189)) (NewLineValue!4106 (value!124726 List!22189)) (IntegerValue!12318 (value!124727 (_ BitVec 32)) (text!29189 List!22189)) (IntegerValue!12319 (value!124728 Int) (text!29190 List!22189)) (Times!4106) (Or!4106) (Equal!4106) (Minus!4106) (Broken!20534 (value!124729 List!22189)) (And!4106) (Div!4106) (LessEqual!4106) (Mod!4106) (Concat!9501) (Not!4106) (Plus!4106) (SpaceValue!4106 (value!124730 List!22189)) (IntegerValue!12320 (value!124731 Int) (text!29191 List!22189)) (StringLiteralValue!12319 (text!29192 List!22189)) (FloatLiteralValue!8213 (text!29193 List!22189)) (BytesLiteralValue!4106 (value!124732 List!22189)) (CommentValue!8213 (value!124733 List!22189)) (StringLiteralValue!12320 (value!124734 List!22189)) (ErrorTokenValue!4106 (msg!4167 List!22189)) )
))
(declare-datatypes ((IArray!14779 0))(
  ( (IArray!14780 (innerList!7447 List!22188)) )
))
(declare-datatypes ((Conc!7387 0))(
  ( (Node!7387 (left!17586 Conc!7387) (right!17916 Conc!7387) (csize!15004 Int) (cheight!7598 Int)) (Leaf!10835 (xs!10285 IArray!14779) (csize!15005 Int)) (Empty!7387) )
))
(declare-datatypes ((BalanceConc!14590 0))(
  ( (BalanceConc!14591 (c!325057 Conc!7387)) )
))
(declare-datatypes ((TokenValueInjection!7796 0))(
  ( (TokenValueInjection!7797 (toValue!5639 Int) (toChars!5498 Int)) )
))
(declare-datatypes ((String!25648 0))(
  ( (String!25649 (value!124735 String)) )
))
(declare-datatypes ((Regex!5395 0))(
  ( (ElementMatch!5395 (c!325058 C!10936)) (Concat!9502 (regOne!11302 Regex!5395) (regTwo!11302 Regex!5395)) (EmptyExpr!5395) (Star!5395 (reg!5724 Regex!5395)) (EmptyLang!5395) (Union!5395 (regOne!11303 Regex!5395) (regTwo!11303 Regex!5395)) )
))
(declare-datatypes ((Rule!7740 0))(
  ( (Rule!7741 (regex!3970 Regex!5395) (tag!4440 String!25648) (isSeparator!3970 Bool) (transformation!3970 TokenValueInjection!7796)) )
))
(declare-datatypes ((List!22190 0))(
  ( (Nil!22108) (Cons!22108 (h!27509 Rule!7740) (t!187909 List!22190)) )
))
(declare-fun rules!3198 () List!22190)

(declare-fun rulesInvariant!3190 (LexerInterface!3583 List!22190) Bool)

(assert (=> b!2012369 (= res!882623 (rulesInvariant!3190 thiss!23328 rules!3198))))

(declare-fun b!2012370 () Bool)

(declare-fun res!882622 () Bool)

(assert (=> b!2012370 (=> (not res!882622) (not e!1271621))))

(declare-datatypes ((Token!7492 0))(
  ( (Token!7493 (value!124736 TokenValue!4106) (rule!6197 Rule!7740) (size!17274 Int) (originalCharacters!4777 List!22188)) )
))
(declare-datatypes ((List!22191 0))(
  ( (Nil!22109) (Cons!22109 (h!27510 Token!7492) (t!187910 List!22191)) )
))
(declare-fun tokens!598 () List!22191)

(declare-fun lambda!76159 () Int)

(declare-fun forall!4698 (List!22191 Int) Bool)

(assert (=> b!2012370 (= res!882622 (forall!4698 tokens!598 lambda!76159))))

(declare-fun b!2012371 () Bool)

(declare-datatypes ((Unit!36684 0))(
  ( (Unit!36685) )
))
(declare-fun e!1271612 () Unit!36684)

(declare-fun Unit!36686 () Unit!36684)

(assert (=> b!2012371 (= e!1271612 Unit!36686)))

(declare-fun lt!755614 () C!10936)

(declare-fun separatorToken!354 () Token!7492)

(declare-fun lt!755604 () Unit!36684)

(declare-fun lt!755602 () List!22188)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!296 (Regex!5395 List!22188 C!10936) Unit!36684)

(assert (=> b!2012371 (= lt!755604 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!296 (regex!3970 (rule!6197 separatorToken!354)) lt!755602 lt!755614))))

(declare-fun res!882631 () Bool)

(declare-fun matchR!2661 (Regex!5395 List!22188) Bool)

(assert (=> b!2012371 (= res!882631 (not (matchR!2661 (regex!3970 (rule!6197 separatorToken!354)) lt!755602)))))

(declare-fun e!1271609 () Bool)

(assert (=> b!2012371 (=> (not res!882631) (not e!1271609))))

(assert (=> b!2012371 e!1271609))

(declare-fun res!882627 () Bool)

(assert (=> start!197864 (=> (not res!882627) (not e!1271621))))

(get-info :version)

(assert (=> start!197864 (= res!882627 ((_ is Lexer!3581) thiss!23328))))

(assert (=> start!197864 e!1271621))

(assert (=> start!197864 true))

(declare-fun e!1271605 () Bool)

(assert (=> start!197864 e!1271605))

(declare-fun e!1271618 () Bool)

(assert (=> start!197864 e!1271618))

(declare-fun e!1271603 () Bool)

(declare-fun inv!29272 (Token!7492) Bool)

(assert (=> start!197864 (and (inv!29272 separatorToken!354) e!1271603)))

(declare-fun b!2012372 () Bool)

(declare-fun e!1271607 () Bool)

(declare-fun e!1271626 () Bool)

(assert (=> b!2012372 (= e!1271607 e!1271626)))

(declare-fun res!882616 () Bool)

(assert (=> b!2012372 (=> (not res!882616) (not e!1271626))))

(declare-fun lt!755605 () Rule!7740)

(declare-fun lt!755601 () List!22188)

(assert (=> b!2012372 (= res!882616 (matchR!2661 (regex!3970 lt!755605) lt!755601))))

(declare-datatypes ((Option!4621 0))(
  ( (None!4620) (Some!4620 (v!26873 Rule!7740)) )
))
(declare-fun lt!755613 () Option!4621)

(declare-fun get!6997 (Option!4621) Rule!7740)

(assert (=> b!2012372 (= lt!755605 (get!6997 lt!755613))))

(declare-fun e!1271602 () Bool)

(declare-fun tp!600122 () Bool)

(declare-fun b!2012373 () Bool)

(assert (=> b!2012373 (= e!1271618 (and (inv!29272 (h!27510 tokens!598)) e!1271602 tp!600122))))

(declare-fun b!2012374 () Bool)

(assert (=> b!2012374 (= e!1271609 false)))

(declare-fun b!2012375 () Bool)

(declare-fun e!1271625 () Bool)

(declare-datatypes ((tuple2!20770 0))(
  ( (tuple2!20771 (_1!11854 Token!7492) (_2!11854 List!22188)) )
))
(declare-datatypes ((Option!4622 0))(
  ( (None!4621) (Some!4621 (v!26874 tuple2!20770)) )
))
(declare-fun lt!755615 () Option!4622)

(declare-fun get!6998 (Option!4622) tuple2!20770)

(assert (=> b!2012375 (= e!1271625 (= (_1!11854 (get!6998 lt!755615)) (h!27510 tokens!598)))))

(declare-fun b!2012376 () Bool)

(declare-fun res!882629 () Bool)

(assert (=> b!2012376 (=> (not res!882629) (not e!1271621))))

(declare-fun isEmpty!13718 (List!22190) Bool)

(assert (=> b!2012376 (= res!882629 (not (isEmpty!13718 rules!3198)))))

(declare-fun b!2012377 () Bool)

(declare-fun res!882632 () Bool)

(assert (=> b!2012377 (=> (not res!882632) (not e!1271621))))

(declare-fun rulesProduceEachTokenIndividuallyList!1314 (LexerInterface!3583 List!22190 List!22191) Bool)

(assert (=> b!2012377 (= res!882632 (rulesProduceEachTokenIndividuallyList!1314 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2012378 () Bool)

(declare-fun res!882626 () Bool)

(assert (=> b!2012378 (=> (not res!882626) (not e!1271621))))

(assert (=> b!2012378 (= res!882626 ((_ is Cons!22109) tokens!598))))

(declare-fun b!2012379 () Bool)

(declare-fun e!1271617 () Bool)

(declare-fun e!1271619 () Bool)

(assert (=> b!2012379 (= e!1271617 e!1271619)))

(declare-fun res!882617 () Bool)

(assert (=> b!2012379 (=> (not res!882617) (not e!1271619))))

(declare-fun lt!755603 () Rule!7740)

(assert (=> b!2012379 (= res!882617 (matchR!2661 (regex!3970 lt!755603) lt!755602))))

(declare-fun lt!755617 () Option!4621)

(assert (=> b!2012379 (= lt!755603 (get!6997 lt!755617))))

(declare-fun b!2012380 () Bool)

(declare-fun e!1271613 () Bool)

(declare-fun e!1271614 () Bool)

(assert (=> b!2012380 (= e!1271613 e!1271614)))

(declare-fun res!882620 () Bool)

(assert (=> b!2012380 (=> res!882620 e!1271614)))

(declare-fun contains!4051 (List!22190 Rule!7740) Bool)

(assert (=> b!2012380 (= res!882620 (not (contains!4051 rules!3198 (rule!6197 separatorToken!354))))))

(declare-fun lt!755618 () Unit!36684)

(assert (=> b!2012380 (= lt!755618 e!1271612)))

(declare-fun c!325056 () Bool)

(declare-fun contains!4052 (List!22188 C!10936) Bool)

(declare-fun usedCharacters!408 (Regex!5395) List!22188)

(assert (=> b!2012380 (= c!325056 (not (contains!4052 (usedCharacters!408 (regex!3970 (rule!6197 separatorToken!354))) lt!755614)))))

(declare-fun head!4548 (List!22188) C!10936)

(assert (=> b!2012380 (= lt!755614 (head!4548 lt!755602))))

(declare-fun lt!755610 () List!22188)

(declare-fun ++!5965 (List!22188 List!22188) List!22188)

(assert (=> b!2012380 (= (++!5965 (++!5965 lt!755601 lt!755602) lt!755610) (++!5965 lt!755601 (++!5965 lt!755602 lt!755610)))))

(declare-fun lt!755607 () Unit!36684)

(declare-fun lemmaConcatAssociativity!1233 (List!22188 List!22188 List!22188) Unit!36684)

(assert (=> b!2012380 (= lt!755607 (lemmaConcatAssociativity!1233 lt!755601 lt!755602 lt!755610))))

(declare-fun b!2012381 () Bool)

(assert (=> b!2012381 (= e!1271626 (= (rule!6197 (h!27510 tokens!598)) lt!755605))))

(declare-fun b!2012382 () Bool)

(assert (=> b!2012382 (= e!1271619 (= (rule!6197 separatorToken!354) lt!755603))))

(declare-fun b!2012383 () Bool)

(assert (=> b!2012383 (= e!1271621 (not e!1271613))))

(declare-fun res!882618 () Bool)

(assert (=> b!2012383 (=> res!882618 e!1271613)))

(declare-fun lt!755608 () Option!4622)

(declare-fun lt!755616 () Bool)

(assert (=> b!2012383 (= res!882618 (or (and (not lt!755616) (= (_1!11854 (v!26874 lt!755608)) (h!27510 tokens!598))) lt!755616 (= (_1!11854 (v!26874 lt!755608)) (h!27510 tokens!598))))))

(assert (=> b!2012383 (= lt!755616 (not ((_ is Some!4621) lt!755608)))))

(declare-fun maxPrefix!2019 (LexerInterface!3583 List!22190 List!22188) Option!4622)

(assert (=> b!2012383 (= lt!755608 (maxPrefix!2019 thiss!23328 rules!3198 (++!5965 lt!755601 lt!755610)))))

(declare-fun printWithSeparatorTokenWhenNeededList!612 (LexerInterface!3583 List!22190 List!22191 Token!7492) List!22188)

(assert (=> b!2012383 (= lt!755610 (printWithSeparatorTokenWhenNeededList!612 thiss!23328 rules!3198 (t!187910 tokens!598) separatorToken!354))))

(assert (=> b!2012383 e!1271607))

(declare-fun res!882633 () Bool)

(assert (=> b!2012383 (=> (not res!882633) (not e!1271607))))

(declare-fun isDefined!3909 (Option!4621) Bool)

(assert (=> b!2012383 (= res!882633 (isDefined!3909 lt!755613))))

(declare-fun getRuleFromTag!785 (LexerInterface!3583 List!22190 String!25648) Option!4621)

(assert (=> b!2012383 (= lt!755613 (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 (h!27510 tokens!598)))))))

(declare-fun lt!755611 () Unit!36684)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!785 (LexerInterface!3583 List!22190 List!22188 Token!7492) Unit!36684)

(assert (=> b!2012383 (= lt!755611 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!785 thiss!23328 rules!3198 lt!755601 (h!27510 tokens!598)))))

(assert (=> b!2012383 e!1271625))

(declare-fun res!882625 () Bool)

(assert (=> b!2012383 (=> (not res!882625) (not e!1271625))))

(declare-fun isDefined!3910 (Option!4622) Bool)

(assert (=> b!2012383 (= res!882625 (isDefined!3910 lt!755615))))

(assert (=> b!2012383 (= lt!755615 (maxPrefix!2019 thiss!23328 rules!3198 lt!755601))))

(declare-fun lt!755606 () BalanceConc!14590)

(declare-fun list!9007 (BalanceConc!14590) List!22188)

(assert (=> b!2012383 (= lt!755601 (list!9007 lt!755606))))

(assert (=> b!2012383 e!1271617))

(declare-fun res!882621 () Bool)

(assert (=> b!2012383 (=> (not res!882621) (not e!1271617))))

(assert (=> b!2012383 (= res!882621 (isDefined!3909 lt!755617))))

(assert (=> b!2012383 (= lt!755617 (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 separatorToken!354))))))

(declare-fun lt!755600 () Unit!36684)

(assert (=> b!2012383 (= lt!755600 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!785 thiss!23328 rules!3198 lt!755602 separatorToken!354))))

(declare-fun charsOf!2510 (Token!7492) BalanceConc!14590)

(assert (=> b!2012383 (= lt!755602 (list!9007 (charsOf!2510 separatorToken!354)))))

(declare-fun lt!755609 () Unit!36684)

(declare-fun lemmaEqSameImage!656 (TokenValueInjection!7796 BalanceConc!14590 BalanceConc!14590) Unit!36684)

(declare-fun seqFromList!2824 (List!22188) BalanceConc!14590)

(assert (=> b!2012383 (= lt!755609 (lemmaEqSameImage!656 (transformation!3970 (rule!6197 (h!27510 tokens!598))) lt!755606 (seqFromList!2824 (originalCharacters!4777 (h!27510 tokens!598)))))))

(declare-fun lt!755612 () Unit!36684)

(declare-fun lemmaSemiInverse!927 (TokenValueInjection!7796 BalanceConc!14590) Unit!36684)

(assert (=> b!2012383 (= lt!755612 (lemmaSemiInverse!927 (transformation!3970 (rule!6197 (h!27510 tokens!598))) lt!755606))))

(assert (=> b!2012383 (= lt!755606 (charsOf!2510 (h!27510 tokens!598)))))

(declare-fun e!1271611 () Bool)

(assert (=> b!2012384 (= e!1271611 (and tp!600127 tp!600130))))

(declare-fun b!2012385 () Bool)

(declare-fun res!882619 () Bool)

(assert (=> b!2012385 (=> (not res!882619) (not e!1271621))))

(declare-fun rulesProduceIndividualToken!1755 (LexerInterface!3583 List!22190 Token!7492) Bool)

(assert (=> b!2012385 (= res!882619 (rulesProduceIndividualToken!1755 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2012386 () Bool)

(declare-fun res!882624 () Bool)

(assert (=> b!2012386 (=> (not res!882624) (not e!1271621))))

(declare-fun sepAndNonSepRulesDisjointChars!1068 (List!22190 List!22190) Bool)

(assert (=> b!2012386 (= res!882624 (sepAndNonSepRulesDisjointChars!1068 rules!3198 rules!3198))))

(declare-fun b!2012387 () Bool)

(assert (=> b!2012387 (= e!1271614 (not (isSeparator!3970 (rule!6197 (h!27510 tokens!598)))))))

(declare-fun e!1271604 () Bool)

(declare-fun tp!600118 () Bool)

(declare-fun b!2012388 () Bool)

(declare-fun inv!21 (TokenValue!4106) Bool)

(assert (=> b!2012388 (= e!1271603 (and (inv!21 (value!124736 separatorToken!354)) e!1271604 tp!600118))))

(declare-fun b!2012389 () Bool)

(declare-fun res!882628 () Bool)

(assert (=> b!2012389 (=> res!882628 e!1271614)))

(assert (=> b!2012389 (= res!882628 (not (contains!4051 rules!3198 (rule!6197 (h!27510 tokens!598)))))))

(declare-fun b!2012390 () Bool)

(declare-fun Unit!36687 () Unit!36684)

(assert (=> b!2012390 (= e!1271612 Unit!36687)))

(declare-fun b!2012391 () Bool)

(declare-fun res!882630 () Bool)

(assert (=> b!2012391 (=> (not res!882630) (not e!1271621))))

(assert (=> b!2012391 (= res!882630 (isSeparator!3970 (rule!6197 separatorToken!354)))))

(declare-fun e!1271622 () Bool)

(assert (=> b!2012392 (= e!1271622 (and tp!600120 tp!600124))))

(declare-fun e!1271610 () Bool)

(assert (=> b!2012393 (= e!1271610 (and tp!600129 tp!600128))))

(declare-fun e!1271624 () Bool)

(declare-fun b!2012394 () Bool)

(declare-fun tp!600126 () Bool)

(declare-fun inv!29269 (String!25648) Bool)

(declare-fun inv!29273 (TokenValueInjection!7796) Bool)

(assert (=> b!2012394 (= e!1271624 (and tp!600126 (inv!29269 (tag!4440 (rule!6197 (h!27510 tokens!598)))) (inv!29273 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) e!1271610))))

(declare-fun tp!600125 () Bool)

(declare-fun b!2012395 () Bool)

(declare-fun e!1271623 () Bool)

(assert (=> b!2012395 (= e!1271623 (and tp!600125 (inv!29269 (tag!4440 (h!27509 rules!3198))) (inv!29273 (transformation!3970 (h!27509 rules!3198))) e!1271622))))

(declare-fun tp!600119 () Bool)

(declare-fun b!2012396 () Bool)

(assert (=> b!2012396 (= e!1271602 (and (inv!21 (value!124736 (h!27510 tokens!598))) e!1271624 tp!600119))))

(declare-fun b!2012397 () Bool)

(declare-fun tp!600121 () Bool)

(assert (=> b!2012397 (= e!1271605 (and e!1271623 tp!600121))))

(declare-fun tp!600123 () Bool)

(declare-fun b!2012398 () Bool)

(assert (=> b!2012398 (= e!1271604 (and tp!600123 (inv!29269 (tag!4440 (rule!6197 separatorToken!354))) (inv!29273 (transformation!3970 (rule!6197 separatorToken!354))) e!1271611))))

(assert (= (and start!197864 res!882627) b!2012376))

(assert (= (and b!2012376 res!882629) b!2012369))

(assert (= (and b!2012369 res!882623) b!2012377))

(assert (= (and b!2012377 res!882632) b!2012385))

(assert (= (and b!2012385 res!882619) b!2012391))

(assert (= (and b!2012391 res!882630) b!2012370))

(assert (= (and b!2012370 res!882622) b!2012386))

(assert (= (and b!2012386 res!882624) b!2012378))

(assert (= (and b!2012378 res!882626) b!2012383))

(assert (= (and b!2012383 res!882621) b!2012379))

(assert (= (and b!2012379 res!882617) b!2012382))

(assert (= (and b!2012383 res!882625) b!2012375))

(assert (= (and b!2012383 res!882633) b!2012372))

(assert (= (and b!2012372 res!882616) b!2012381))

(assert (= (and b!2012383 (not res!882618)) b!2012380))

(assert (= (and b!2012380 c!325056) b!2012371))

(assert (= (and b!2012380 (not c!325056)) b!2012390))

(assert (= (and b!2012371 res!882631) b!2012374))

(assert (= (and b!2012380 (not res!882620)) b!2012389))

(assert (= (and b!2012389 (not res!882628)) b!2012387))

(assert (= b!2012395 b!2012392))

(assert (= b!2012397 b!2012395))

(assert (= (and start!197864 ((_ is Cons!22108) rules!3198)) b!2012397))

(assert (= b!2012394 b!2012393))

(assert (= b!2012396 b!2012394))

(assert (= b!2012373 b!2012396))

(assert (= (and start!197864 ((_ is Cons!22109) tokens!598)) b!2012373))

(assert (= b!2012398 b!2012384))

(assert (= b!2012388 b!2012398))

(assert (= start!197864 b!2012388))

(declare-fun m!2445245 () Bool)

(assert (=> b!2012395 m!2445245))

(declare-fun m!2445247 () Bool)

(assert (=> b!2012395 m!2445247))

(declare-fun m!2445249 () Bool)

(assert (=> start!197864 m!2445249))

(declare-fun m!2445251 () Bool)

(assert (=> b!2012370 m!2445251))

(declare-fun m!2445253 () Bool)

(assert (=> b!2012398 m!2445253))

(declare-fun m!2445255 () Bool)

(assert (=> b!2012398 m!2445255))

(declare-fun m!2445257 () Bool)

(assert (=> b!2012371 m!2445257))

(declare-fun m!2445259 () Bool)

(assert (=> b!2012371 m!2445259))

(declare-fun m!2445261 () Bool)

(assert (=> b!2012386 m!2445261))

(declare-fun m!2445263 () Bool)

(assert (=> b!2012376 m!2445263))

(declare-fun m!2445265 () Bool)

(assert (=> b!2012375 m!2445265))

(declare-fun m!2445267 () Bool)

(assert (=> b!2012380 m!2445267))

(declare-fun m!2445269 () Bool)

(assert (=> b!2012380 m!2445269))

(declare-fun m!2445271 () Bool)

(assert (=> b!2012380 m!2445271))

(declare-fun m!2445273 () Bool)

(assert (=> b!2012380 m!2445273))

(declare-fun m!2445275 () Bool)

(assert (=> b!2012380 m!2445275))

(declare-fun m!2445277 () Bool)

(assert (=> b!2012380 m!2445277))

(assert (=> b!2012380 m!2445269))

(assert (=> b!2012380 m!2445275))

(assert (=> b!2012380 m!2445273))

(declare-fun m!2445279 () Bool)

(assert (=> b!2012380 m!2445279))

(declare-fun m!2445281 () Bool)

(assert (=> b!2012380 m!2445281))

(declare-fun m!2445283 () Bool)

(assert (=> b!2012380 m!2445283))

(declare-fun m!2445285 () Bool)

(assert (=> b!2012383 m!2445285))

(declare-fun m!2445287 () Bool)

(assert (=> b!2012383 m!2445287))

(declare-fun m!2445289 () Bool)

(assert (=> b!2012383 m!2445289))

(declare-fun m!2445291 () Bool)

(assert (=> b!2012383 m!2445291))

(declare-fun m!2445293 () Bool)

(assert (=> b!2012383 m!2445293))

(declare-fun m!2445295 () Bool)

(assert (=> b!2012383 m!2445295))

(declare-fun m!2445297 () Bool)

(assert (=> b!2012383 m!2445297))

(declare-fun m!2445299 () Bool)

(assert (=> b!2012383 m!2445299))

(declare-fun m!2445301 () Bool)

(assert (=> b!2012383 m!2445301))

(declare-fun m!2445303 () Bool)

(assert (=> b!2012383 m!2445303))

(declare-fun m!2445305 () Bool)

(assert (=> b!2012383 m!2445305))

(declare-fun m!2445307 () Bool)

(assert (=> b!2012383 m!2445307))

(declare-fun m!2445309 () Bool)

(assert (=> b!2012383 m!2445309))

(declare-fun m!2445311 () Bool)

(assert (=> b!2012383 m!2445311))

(assert (=> b!2012383 m!2445285))

(declare-fun m!2445313 () Bool)

(assert (=> b!2012383 m!2445313))

(declare-fun m!2445315 () Bool)

(assert (=> b!2012383 m!2445315))

(assert (=> b!2012383 m!2445299))

(declare-fun m!2445317 () Bool)

(assert (=> b!2012383 m!2445317))

(assert (=> b!2012383 m!2445303))

(declare-fun m!2445319 () Bool)

(assert (=> b!2012383 m!2445319))

(declare-fun m!2445321 () Bool)

(assert (=> b!2012385 m!2445321))

(declare-fun m!2445323 () Bool)

(assert (=> b!2012372 m!2445323))

(declare-fun m!2445325 () Bool)

(assert (=> b!2012372 m!2445325))

(declare-fun m!2445327 () Bool)

(assert (=> b!2012389 m!2445327))

(declare-fun m!2445329 () Bool)

(assert (=> b!2012388 m!2445329))

(declare-fun m!2445331 () Bool)

(assert (=> b!2012394 m!2445331))

(declare-fun m!2445333 () Bool)

(assert (=> b!2012394 m!2445333))

(declare-fun m!2445335 () Bool)

(assert (=> b!2012379 m!2445335))

(declare-fun m!2445337 () Bool)

(assert (=> b!2012379 m!2445337))

(declare-fun m!2445339 () Bool)

(assert (=> b!2012373 m!2445339))

(declare-fun m!2445341 () Bool)

(assert (=> b!2012369 m!2445341))

(declare-fun m!2445343 () Bool)

(assert (=> b!2012377 m!2445343))

(declare-fun m!2445345 () Bool)

(assert (=> b!2012396 m!2445345))

(check-sat (not b!2012395) (not b!2012376) b_and!159201 (not b!2012396) (not b_next!56875) b_and!159205 b_and!159203 (not b!2012397) (not b!2012372) (not b!2012377) (not b_next!56881) (not start!197864) (not b_next!56883) (not b!2012389) (not b!2012385) (not b!2012398) (not b!2012388) (not b_next!56877) (not b!2012371) b_and!159199 (not b!2012386) b_and!159207 b_and!159197 (not b!2012380) (not b_next!56873) (not b_next!56879) (not b!2012383) (not b!2012375) (not b!2012370) (not b!2012394) (not b!2012373) (not b!2012369) (not b!2012379))
(check-sat (not b_next!56881) (not b_next!56883) b_and!159207 b_and!159201 (not b_next!56875) b_and!159197 b_and!159205 b_and!159203 (not b_next!56877) b_and!159199 (not b_next!56873) (not b_next!56879))
(get-model)

(declare-fun d!614420 () Bool)

(assert (=> d!614420 (not (matchR!2661 (regex!3970 (rule!6197 separatorToken!354)) lt!755602))))

(declare-fun lt!755627 () Unit!36684)

(declare-fun choose!12258 (Regex!5395 List!22188 C!10936) Unit!36684)

(assert (=> d!614420 (= lt!755627 (choose!12258 (regex!3970 (rule!6197 separatorToken!354)) lt!755602 lt!755614))))

(declare-fun validRegex!2163 (Regex!5395) Bool)

(assert (=> d!614420 (validRegex!2163 (regex!3970 (rule!6197 separatorToken!354)))))

(assert (=> d!614420 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!296 (regex!3970 (rule!6197 separatorToken!354)) lt!755602 lt!755614) lt!755627)))

(declare-fun bs!419843 () Bool)

(assert (= bs!419843 d!614420))

(assert (=> bs!419843 m!2445259))

(declare-fun m!2445371 () Bool)

(assert (=> bs!419843 m!2445371))

(declare-fun m!2445373 () Bool)

(assert (=> bs!419843 m!2445373))

(assert (=> b!2012371 d!614420))

(declare-fun b!2012481 () Bool)

(declare-fun e!1271674 () Bool)

(declare-fun derivativeStep!1396 (Regex!5395 C!10936) Regex!5395)

(declare-fun tail!3030 (List!22188) List!22188)

(assert (=> b!2012481 (= e!1271674 (matchR!2661 (derivativeStep!1396 (regex!3970 (rule!6197 separatorToken!354)) (head!4548 lt!755602)) (tail!3030 lt!755602)))))

(declare-fun b!2012482 () Bool)

(declare-fun e!1271675 () Bool)

(declare-fun lt!755630 () Bool)

(declare-fun call!123088 () Bool)

(assert (=> b!2012482 (= e!1271675 (= lt!755630 call!123088))))

(declare-fun b!2012483 () Bool)

(declare-fun res!882703 () Bool)

(declare-fun e!1271678 () Bool)

(assert (=> b!2012483 (=> (not res!882703) (not e!1271678))))

(declare-fun isEmpty!13721 (List!22188) Bool)

(assert (=> b!2012483 (= res!882703 (isEmpty!13721 (tail!3030 lt!755602)))))

(declare-fun b!2012484 () Bool)

(assert (=> b!2012484 (= e!1271678 (= (head!4548 lt!755602) (c!325058 (regex!3970 (rule!6197 separatorToken!354)))))))

(declare-fun b!2012485 () Bool)

(declare-fun res!882700 () Bool)

(declare-fun e!1271679 () Bool)

(assert (=> b!2012485 (=> res!882700 e!1271679)))

(assert (=> b!2012485 (= res!882700 (not (isEmpty!13721 (tail!3030 lt!755602))))))

(declare-fun b!2012486 () Bool)

(declare-fun res!882698 () Bool)

(declare-fun e!1271676 () Bool)

(assert (=> b!2012486 (=> res!882698 e!1271676)))

(assert (=> b!2012486 (= res!882698 e!1271678)))

(declare-fun res!882696 () Bool)

(assert (=> b!2012486 (=> (not res!882696) (not e!1271678))))

(assert (=> b!2012486 (= res!882696 lt!755630)))

(declare-fun b!2012487 () Bool)

(assert (=> b!2012487 (= e!1271679 (not (= (head!4548 lt!755602) (c!325058 (regex!3970 (rule!6197 separatorToken!354))))))))

(declare-fun d!614422 () Bool)

(assert (=> d!614422 e!1271675))

(declare-fun c!325076 () Bool)

(assert (=> d!614422 (= c!325076 ((_ is EmptyExpr!5395) (regex!3970 (rule!6197 separatorToken!354))))))

(assert (=> d!614422 (= lt!755630 e!1271674)))

(declare-fun c!325077 () Bool)

(assert (=> d!614422 (= c!325077 (isEmpty!13721 lt!755602))))

(assert (=> d!614422 (validRegex!2163 (regex!3970 (rule!6197 separatorToken!354)))))

(assert (=> d!614422 (= (matchR!2661 (regex!3970 (rule!6197 separatorToken!354)) lt!755602) lt!755630)))

(declare-fun bm!123083 () Bool)

(assert (=> bm!123083 (= call!123088 (isEmpty!13721 lt!755602))))

(declare-fun b!2012488 () Bool)

(declare-fun res!882697 () Bool)

(assert (=> b!2012488 (=> res!882697 e!1271676)))

(assert (=> b!2012488 (= res!882697 (not ((_ is ElementMatch!5395) (regex!3970 (rule!6197 separatorToken!354)))))))

(declare-fun e!1271680 () Bool)

(assert (=> b!2012488 (= e!1271680 e!1271676)))

(declare-fun b!2012489 () Bool)

(declare-fun res!882699 () Bool)

(assert (=> b!2012489 (=> (not res!882699) (not e!1271678))))

(assert (=> b!2012489 (= res!882699 (not call!123088))))

(declare-fun b!2012490 () Bool)

(declare-fun nullable!1637 (Regex!5395) Bool)

(assert (=> b!2012490 (= e!1271674 (nullable!1637 (regex!3970 (rule!6197 separatorToken!354))))))

(declare-fun b!2012491 () Bool)

(declare-fun e!1271677 () Bool)

(assert (=> b!2012491 (= e!1271676 e!1271677)))

(declare-fun res!882702 () Bool)

(assert (=> b!2012491 (=> (not res!882702) (not e!1271677))))

(assert (=> b!2012491 (= res!882702 (not lt!755630))))

(declare-fun b!2012492 () Bool)

(assert (=> b!2012492 (= e!1271677 e!1271679)))

(declare-fun res!882701 () Bool)

(assert (=> b!2012492 (=> res!882701 e!1271679)))

(assert (=> b!2012492 (= res!882701 call!123088)))

(declare-fun b!2012493 () Bool)

(assert (=> b!2012493 (= e!1271675 e!1271680)))

(declare-fun c!325075 () Bool)

(assert (=> b!2012493 (= c!325075 ((_ is EmptyLang!5395) (regex!3970 (rule!6197 separatorToken!354))))))

(declare-fun b!2012494 () Bool)

(assert (=> b!2012494 (= e!1271680 (not lt!755630))))

(assert (= (and d!614422 c!325077) b!2012490))

(assert (= (and d!614422 (not c!325077)) b!2012481))

(assert (= (and d!614422 c!325076) b!2012482))

(assert (= (and d!614422 (not c!325076)) b!2012493))

(assert (= (and b!2012493 c!325075) b!2012494))

(assert (= (and b!2012493 (not c!325075)) b!2012488))

(assert (= (and b!2012488 (not res!882697)) b!2012486))

(assert (= (and b!2012486 res!882696) b!2012489))

(assert (= (and b!2012489 res!882699) b!2012483))

(assert (= (and b!2012483 res!882703) b!2012484))

(assert (= (and b!2012486 (not res!882698)) b!2012491))

(assert (= (and b!2012491 res!882702) b!2012492))

(assert (= (and b!2012492 (not res!882701)) b!2012485))

(assert (= (and b!2012485 (not res!882700)) b!2012487))

(assert (= (or b!2012482 b!2012489 b!2012492) bm!123083))

(declare-fun m!2445375 () Bool)

(assert (=> b!2012483 m!2445375))

(assert (=> b!2012483 m!2445375))

(declare-fun m!2445377 () Bool)

(assert (=> b!2012483 m!2445377))

(assert (=> b!2012487 m!2445283))

(assert (=> b!2012484 m!2445283))

(declare-fun m!2445379 () Bool)

(assert (=> b!2012490 m!2445379))

(assert (=> b!2012481 m!2445283))

(assert (=> b!2012481 m!2445283))

(declare-fun m!2445381 () Bool)

(assert (=> b!2012481 m!2445381))

(assert (=> b!2012481 m!2445375))

(assert (=> b!2012481 m!2445381))

(assert (=> b!2012481 m!2445375))

(declare-fun m!2445383 () Bool)

(assert (=> b!2012481 m!2445383))

(declare-fun m!2445385 () Bool)

(assert (=> d!614422 m!2445385))

(assert (=> d!614422 m!2445373))

(assert (=> bm!123083 m!2445385))

(assert (=> b!2012485 m!2445375))

(assert (=> b!2012485 m!2445375))

(assert (=> b!2012485 m!2445377))

(assert (=> b!2012371 d!614422))

(declare-fun d!614424 () Bool)

(declare-fun res!882708 () Bool)

(declare-fun e!1271685 () Bool)

(assert (=> d!614424 (=> res!882708 e!1271685)))

(assert (=> d!614424 (= res!882708 ((_ is Nil!22109) tokens!598))))

(assert (=> d!614424 (= (forall!4698 tokens!598 lambda!76159) e!1271685)))

(declare-fun b!2012499 () Bool)

(declare-fun e!1271686 () Bool)

(assert (=> b!2012499 (= e!1271685 e!1271686)))

(declare-fun res!882709 () Bool)

(assert (=> b!2012499 (=> (not res!882709) (not e!1271686))))

(declare-fun dynLambda!10905 (Int Token!7492) Bool)

(assert (=> b!2012499 (= res!882709 (dynLambda!10905 lambda!76159 (h!27510 tokens!598)))))

(declare-fun b!2012500 () Bool)

(assert (=> b!2012500 (= e!1271686 (forall!4698 (t!187910 tokens!598) lambda!76159))))

(assert (= (and d!614424 (not res!882708)) b!2012499))

(assert (= (and b!2012499 res!882709) b!2012500))

(declare-fun b_lambda!67279 () Bool)

(assert (=> (not b_lambda!67279) (not b!2012499)))

(declare-fun m!2445387 () Bool)

(assert (=> b!2012499 m!2445387))

(declare-fun m!2445389 () Bool)

(assert (=> b!2012500 m!2445389))

(assert (=> b!2012370 d!614424))

(declare-fun d!614426 () Bool)

(declare-fun res!882714 () Bool)

(declare-fun e!1271689 () Bool)

(assert (=> d!614426 (=> (not res!882714) (not e!1271689))))

(assert (=> d!614426 (= res!882714 (not (isEmpty!13721 (originalCharacters!4777 separatorToken!354))))))

(assert (=> d!614426 (= (inv!29272 separatorToken!354) e!1271689)))

(declare-fun b!2012505 () Bool)

(declare-fun res!882715 () Bool)

(assert (=> b!2012505 (=> (not res!882715) (not e!1271689))))

(declare-fun dynLambda!10906 (Int TokenValue!4106) BalanceConc!14590)

(assert (=> b!2012505 (= res!882715 (= (originalCharacters!4777 separatorToken!354) (list!9007 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (value!124736 separatorToken!354)))))))

(declare-fun b!2012506 () Bool)

(declare-fun size!17276 (List!22188) Int)

(assert (=> b!2012506 (= e!1271689 (= (size!17274 separatorToken!354) (size!17276 (originalCharacters!4777 separatorToken!354))))))

(assert (= (and d!614426 res!882714) b!2012505))

(assert (= (and b!2012505 res!882715) b!2012506))

(declare-fun b_lambda!67281 () Bool)

(assert (=> (not b_lambda!67281) (not b!2012505)))

(declare-fun t!187912 () Bool)

(declare-fun tb!125845 () Bool)

(assert (=> (and b!2012392 (= (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354)))) t!187912) tb!125845))

(declare-fun b!2012511 () Bool)

(declare-fun e!1271692 () Bool)

(declare-fun tp!600133 () Bool)

(declare-fun inv!29274 (Conc!7387) Bool)

(assert (=> b!2012511 (= e!1271692 (and (inv!29274 (c!325057 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (value!124736 separatorToken!354)))) tp!600133))))

(declare-fun result!150788 () Bool)

(declare-fun inv!29275 (BalanceConc!14590) Bool)

(assert (=> tb!125845 (= result!150788 (and (inv!29275 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (value!124736 separatorToken!354))) e!1271692))))

(assert (= tb!125845 b!2012511))

(declare-fun m!2445391 () Bool)

(assert (=> b!2012511 m!2445391))

(declare-fun m!2445393 () Bool)

(assert (=> tb!125845 m!2445393))

(assert (=> b!2012505 t!187912))

(declare-fun b_and!159209 () Bool)

(assert (= b_and!159199 (and (=> t!187912 result!150788) b_and!159209)))

(declare-fun t!187914 () Bool)

(declare-fun tb!125847 () Bool)

(assert (=> (and b!2012384 (= (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354)))) t!187914) tb!125847))

(declare-fun result!150792 () Bool)

(assert (= result!150792 result!150788))

(assert (=> b!2012505 t!187914))

(declare-fun b_and!159211 () Bool)

(assert (= b_and!159203 (and (=> t!187914 result!150792) b_and!159211)))

(declare-fun tb!125849 () Bool)

(declare-fun t!187916 () Bool)

(assert (=> (and b!2012393 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354)))) t!187916) tb!125849))

(declare-fun result!150794 () Bool)

(assert (= result!150794 result!150788))

(assert (=> b!2012505 t!187916))

(declare-fun b_and!159213 () Bool)

(assert (= b_and!159207 (and (=> t!187916 result!150794) b_and!159213)))

(declare-fun m!2445395 () Bool)

(assert (=> d!614426 m!2445395))

(declare-fun m!2445397 () Bool)

(assert (=> b!2012505 m!2445397))

(assert (=> b!2012505 m!2445397))

(declare-fun m!2445399 () Bool)

(assert (=> b!2012505 m!2445399))

(declare-fun m!2445401 () Bool)

(assert (=> b!2012506 m!2445401))

(assert (=> start!197864 d!614426))

(declare-fun d!614428 () Bool)

(declare-fun e!1271702 () Bool)

(assert (=> d!614428 e!1271702))

(declare-fun res!882727 () Bool)

(assert (=> d!614428 (=> (not res!882727) (not e!1271702))))

(declare-fun lt!755637 () List!22188)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3243 (List!22188) (InoxSet C!10936))

(assert (=> d!614428 (= res!882727 (= (content!3243 lt!755637) ((_ map or) (content!3243 lt!755601) (content!3243 lt!755602))))))

(declare-fun e!1271701 () List!22188)

(assert (=> d!614428 (= lt!755637 e!1271701)))

(declare-fun c!325080 () Bool)

(assert (=> d!614428 (= c!325080 ((_ is Nil!22106) lt!755601))))

(assert (=> d!614428 (= (++!5965 lt!755601 lt!755602) lt!755637)))

(declare-fun b!2012529 () Bool)

(assert (=> b!2012529 (= e!1271702 (or (not (= lt!755602 Nil!22106)) (= lt!755637 lt!755601)))))

(declare-fun b!2012528 () Bool)

(declare-fun res!882726 () Bool)

(assert (=> b!2012528 (=> (not res!882726) (not e!1271702))))

(assert (=> b!2012528 (= res!882726 (= (size!17276 lt!755637) (+ (size!17276 lt!755601) (size!17276 lt!755602))))))

(declare-fun b!2012527 () Bool)

(assert (=> b!2012527 (= e!1271701 (Cons!22106 (h!27507 lt!755601) (++!5965 (t!187907 lt!755601) lt!755602)))))

(declare-fun b!2012526 () Bool)

(assert (=> b!2012526 (= e!1271701 lt!755602)))

(assert (= (and d!614428 c!325080) b!2012526))

(assert (= (and d!614428 (not c!325080)) b!2012527))

(assert (= (and d!614428 res!882727) b!2012528))

(assert (= (and b!2012528 res!882726) b!2012529))

(declare-fun m!2445403 () Bool)

(assert (=> d!614428 m!2445403))

(declare-fun m!2445405 () Bool)

(assert (=> d!614428 m!2445405))

(declare-fun m!2445407 () Bool)

(assert (=> d!614428 m!2445407))

(declare-fun m!2445409 () Bool)

(assert (=> b!2012528 m!2445409))

(declare-fun m!2445411 () Bool)

(assert (=> b!2012528 m!2445411))

(declare-fun m!2445413 () Bool)

(assert (=> b!2012528 m!2445413))

(declare-fun m!2445415 () Bool)

(assert (=> b!2012527 m!2445415))

(assert (=> b!2012380 d!614428))

(declare-fun b!2012578 () Bool)

(declare-fun e!1271731 () List!22188)

(declare-fun call!123098 () List!22188)

(assert (=> b!2012578 (= e!1271731 call!123098)))

(declare-fun call!123099 () List!22188)

(declare-fun c!325101 () Bool)

(declare-fun call!123100 () List!22188)

(declare-fun bm!123093 () Bool)

(assert (=> bm!123093 (= call!123098 (++!5965 (ite c!325101 call!123100 call!123099) (ite c!325101 call!123099 call!123100)))))

(declare-fun call!123101 () List!22188)

(declare-fun bm!123094 () Bool)

(declare-fun c!325102 () Bool)

(assert (=> bm!123094 (= call!123101 (usedCharacters!408 (ite c!325102 (reg!5724 (regex!3970 (rule!6197 separatorToken!354))) (ite c!325101 (regOne!11303 (regex!3970 (rule!6197 separatorToken!354))) (regTwo!11302 (regex!3970 (rule!6197 separatorToken!354)))))))))

(declare-fun b!2012579 () Bool)

(declare-fun e!1271730 () List!22188)

(assert (=> b!2012579 (= e!1271730 e!1271731)))

(assert (=> b!2012579 (= c!325101 ((_ is Union!5395) (regex!3970 (rule!6197 separatorToken!354))))))

(declare-fun bm!123095 () Bool)

(assert (=> bm!123095 (= call!123099 (usedCharacters!408 (ite c!325101 (regTwo!11303 (regex!3970 (rule!6197 separatorToken!354))) (regOne!11302 (regex!3970 (rule!6197 separatorToken!354))))))))

(declare-fun b!2012580 () Bool)

(declare-fun e!1271729 () List!22188)

(assert (=> b!2012580 (= e!1271729 Nil!22106)))

(declare-fun bm!123096 () Bool)

(assert (=> bm!123096 (= call!123100 call!123101)))

(declare-fun d!614430 () Bool)

(declare-fun c!325099 () Bool)

(assert (=> d!614430 (= c!325099 (or ((_ is EmptyExpr!5395) (regex!3970 (rule!6197 separatorToken!354))) ((_ is EmptyLang!5395) (regex!3970 (rule!6197 separatorToken!354)))))))

(assert (=> d!614430 (= (usedCharacters!408 (regex!3970 (rule!6197 separatorToken!354))) e!1271729)))

(declare-fun b!2012581 () Bool)

(assert (=> b!2012581 (= c!325102 ((_ is Star!5395) (regex!3970 (rule!6197 separatorToken!354))))))

(declare-fun e!1271732 () List!22188)

(assert (=> b!2012581 (= e!1271732 e!1271730)))

(declare-fun b!2012582 () Bool)

(assert (=> b!2012582 (= e!1271732 (Cons!22106 (c!325058 (regex!3970 (rule!6197 separatorToken!354))) Nil!22106))))

(declare-fun b!2012583 () Bool)

(assert (=> b!2012583 (= e!1271731 call!123098)))

(declare-fun b!2012584 () Bool)

(assert (=> b!2012584 (= e!1271730 call!123101)))

(declare-fun b!2012585 () Bool)

(assert (=> b!2012585 (= e!1271729 e!1271732)))

(declare-fun c!325100 () Bool)

(assert (=> b!2012585 (= c!325100 ((_ is ElementMatch!5395) (regex!3970 (rule!6197 separatorToken!354))))))

(assert (= (and d!614430 c!325099) b!2012580))

(assert (= (and d!614430 (not c!325099)) b!2012585))

(assert (= (and b!2012585 c!325100) b!2012582))

(assert (= (and b!2012585 (not c!325100)) b!2012581))

(assert (= (and b!2012581 c!325102) b!2012584))

(assert (= (and b!2012581 (not c!325102)) b!2012579))

(assert (= (and b!2012579 c!325101) b!2012583))

(assert (= (and b!2012579 (not c!325101)) b!2012578))

(assert (= (or b!2012583 b!2012578) bm!123096))

(assert (= (or b!2012583 b!2012578) bm!123095))

(assert (= (or b!2012583 b!2012578) bm!123093))

(assert (= (or b!2012584 bm!123096) bm!123094))

(declare-fun m!2445451 () Bool)

(assert (=> bm!123093 m!2445451))

(declare-fun m!2445453 () Bool)

(assert (=> bm!123094 m!2445453))

(declare-fun m!2445455 () Bool)

(assert (=> bm!123095 m!2445455))

(assert (=> b!2012380 d!614430))

(declare-fun d!614442 () Bool)

(declare-fun e!1271736 () Bool)

(assert (=> d!614442 e!1271736))

(declare-fun res!882745 () Bool)

(assert (=> d!614442 (=> (not res!882745) (not e!1271736))))

(declare-fun lt!755644 () List!22188)

(assert (=> d!614442 (= res!882745 (= (content!3243 lt!755644) ((_ map or) (content!3243 (++!5965 lt!755601 lt!755602)) (content!3243 lt!755610))))))

(declare-fun e!1271735 () List!22188)

(assert (=> d!614442 (= lt!755644 e!1271735)))

(declare-fun c!325103 () Bool)

(assert (=> d!614442 (= c!325103 ((_ is Nil!22106) (++!5965 lt!755601 lt!755602)))))

(assert (=> d!614442 (= (++!5965 (++!5965 lt!755601 lt!755602) lt!755610) lt!755644)))

(declare-fun b!2012591 () Bool)

(assert (=> b!2012591 (= e!1271736 (or (not (= lt!755610 Nil!22106)) (= lt!755644 (++!5965 lt!755601 lt!755602))))))

(declare-fun b!2012590 () Bool)

(declare-fun res!882744 () Bool)

(assert (=> b!2012590 (=> (not res!882744) (not e!1271736))))

(assert (=> b!2012590 (= res!882744 (= (size!17276 lt!755644) (+ (size!17276 (++!5965 lt!755601 lt!755602)) (size!17276 lt!755610))))))

(declare-fun b!2012589 () Bool)

(assert (=> b!2012589 (= e!1271735 (Cons!22106 (h!27507 (++!5965 lt!755601 lt!755602)) (++!5965 (t!187907 (++!5965 lt!755601 lt!755602)) lt!755610)))))

(declare-fun b!2012588 () Bool)

(assert (=> b!2012588 (= e!1271735 lt!755610)))

(assert (= (and d!614442 c!325103) b!2012588))

(assert (= (and d!614442 (not c!325103)) b!2012589))

(assert (= (and d!614442 res!882745) b!2012590))

(assert (= (and b!2012590 res!882744) b!2012591))

(declare-fun m!2445457 () Bool)

(assert (=> d!614442 m!2445457))

(assert (=> d!614442 m!2445275))

(declare-fun m!2445459 () Bool)

(assert (=> d!614442 m!2445459))

(declare-fun m!2445461 () Bool)

(assert (=> d!614442 m!2445461))

(declare-fun m!2445463 () Bool)

(assert (=> b!2012590 m!2445463))

(assert (=> b!2012590 m!2445275))

(declare-fun m!2445465 () Bool)

(assert (=> b!2012590 m!2445465))

(declare-fun m!2445467 () Bool)

(assert (=> b!2012590 m!2445467))

(declare-fun m!2445469 () Bool)

(assert (=> b!2012589 m!2445469))

(assert (=> b!2012380 d!614442))

(declare-fun d!614444 () Bool)

(assert (=> d!614444 (= (head!4548 lt!755602) (h!27507 lt!755602))))

(assert (=> b!2012380 d!614444))

(declare-fun d!614450 () Bool)

(declare-fun e!1271739 () Bool)

(assert (=> d!614450 e!1271739))

(declare-fun res!882748 () Bool)

(assert (=> d!614450 (=> (not res!882748) (not e!1271739))))

(declare-fun lt!755645 () List!22188)

(assert (=> d!614450 (= res!882748 (= (content!3243 lt!755645) ((_ map or) (content!3243 lt!755601) (content!3243 (++!5965 lt!755602 lt!755610)))))))

(declare-fun e!1271738 () List!22188)

(assert (=> d!614450 (= lt!755645 e!1271738)))

(declare-fun c!325104 () Bool)

(assert (=> d!614450 (= c!325104 ((_ is Nil!22106) lt!755601))))

(assert (=> d!614450 (= (++!5965 lt!755601 (++!5965 lt!755602 lt!755610)) lt!755645)))

(declare-fun b!2012596 () Bool)

(assert (=> b!2012596 (= e!1271739 (or (not (= (++!5965 lt!755602 lt!755610) Nil!22106)) (= lt!755645 lt!755601)))))

(declare-fun b!2012595 () Bool)

(declare-fun res!882747 () Bool)

(assert (=> b!2012595 (=> (not res!882747) (not e!1271739))))

(assert (=> b!2012595 (= res!882747 (= (size!17276 lt!755645) (+ (size!17276 lt!755601) (size!17276 (++!5965 lt!755602 lt!755610)))))))

(declare-fun b!2012594 () Bool)

(assert (=> b!2012594 (= e!1271738 (Cons!22106 (h!27507 lt!755601) (++!5965 (t!187907 lt!755601) (++!5965 lt!755602 lt!755610))))))

(declare-fun b!2012593 () Bool)

(assert (=> b!2012593 (= e!1271738 (++!5965 lt!755602 lt!755610))))

(assert (= (and d!614450 c!325104) b!2012593))

(assert (= (and d!614450 (not c!325104)) b!2012594))

(assert (= (and d!614450 res!882748) b!2012595))

(assert (= (and b!2012595 res!882747) b!2012596))

(declare-fun m!2445475 () Bool)

(assert (=> d!614450 m!2445475))

(assert (=> d!614450 m!2445405))

(assert (=> d!614450 m!2445273))

(declare-fun m!2445477 () Bool)

(assert (=> d!614450 m!2445477))

(declare-fun m!2445479 () Bool)

(assert (=> b!2012595 m!2445479))

(assert (=> b!2012595 m!2445411))

(assert (=> b!2012595 m!2445273))

(declare-fun m!2445481 () Bool)

(assert (=> b!2012595 m!2445481))

(assert (=> b!2012594 m!2445273))

(declare-fun m!2445483 () Bool)

(assert (=> b!2012594 m!2445483))

(assert (=> b!2012380 d!614450))

(declare-fun d!614452 () Bool)

(declare-fun lt!755648 () Bool)

(declare-fun content!3244 (List!22190) (InoxSet Rule!7740))

(assert (=> d!614452 (= lt!755648 (select (content!3244 rules!3198) (rule!6197 separatorToken!354)))))

(declare-fun e!1271744 () Bool)

(assert (=> d!614452 (= lt!755648 e!1271744)))

(declare-fun res!882754 () Bool)

(assert (=> d!614452 (=> (not res!882754) (not e!1271744))))

(assert (=> d!614452 (= res!882754 ((_ is Cons!22108) rules!3198))))

(assert (=> d!614452 (= (contains!4051 rules!3198 (rule!6197 separatorToken!354)) lt!755648)))

(declare-fun b!2012601 () Bool)

(declare-fun e!1271745 () Bool)

(assert (=> b!2012601 (= e!1271744 e!1271745)))

(declare-fun res!882753 () Bool)

(assert (=> b!2012601 (=> res!882753 e!1271745)))

(assert (=> b!2012601 (= res!882753 (= (h!27509 rules!3198) (rule!6197 separatorToken!354)))))

(declare-fun b!2012602 () Bool)

(assert (=> b!2012602 (= e!1271745 (contains!4051 (t!187909 rules!3198) (rule!6197 separatorToken!354)))))

(assert (= (and d!614452 res!882754) b!2012601))

(assert (= (and b!2012601 (not res!882753)) b!2012602))

(declare-fun m!2445485 () Bool)

(assert (=> d!614452 m!2445485))

(declare-fun m!2445487 () Bool)

(assert (=> d!614452 m!2445487))

(declare-fun m!2445489 () Bool)

(assert (=> b!2012602 m!2445489))

(assert (=> b!2012380 d!614452))

(declare-fun d!614454 () Bool)

(declare-fun lt!755651 () Bool)

(assert (=> d!614454 (= lt!755651 (select (content!3243 (usedCharacters!408 (regex!3970 (rule!6197 separatorToken!354)))) lt!755614))))

(declare-fun e!1271750 () Bool)

(assert (=> d!614454 (= lt!755651 e!1271750)))

(declare-fun res!882759 () Bool)

(assert (=> d!614454 (=> (not res!882759) (not e!1271750))))

(assert (=> d!614454 (= res!882759 ((_ is Cons!22106) (usedCharacters!408 (regex!3970 (rule!6197 separatorToken!354)))))))

(assert (=> d!614454 (= (contains!4052 (usedCharacters!408 (regex!3970 (rule!6197 separatorToken!354))) lt!755614) lt!755651)))

(declare-fun b!2012607 () Bool)

(declare-fun e!1271751 () Bool)

(assert (=> b!2012607 (= e!1271750 e!1271751)))

(declare-fun res!882760 () Bool)

(assert (=> b!2012607 (=> res!882760 e!1271751)))

(assert (=> b!2012607 (= res!882760 (= (h!27507 (usedCharacters!408 (regex!3970 (rule!6197 separatorToken!354)))) lt!755614))))

(declare-fun b!2012608 () Bool)

(assert (=> b!2012608 (= e!1271751 (contains!4052 (t!187907 (usedCharacters!408 (regex!3970 (rule!6197 separatorToken!354)))) lt!755614))))

(assert (= (and d!614454 res!882759) b!2012607))

(assert (= (and b!2012607 (not res!882760)) b!2012608))

(assert (=> d!614454 m!2445269))

(declare-fun m!2445491 () Bool)

(assert (=> d!614454 m!2445491))

(declare-fun m!2445493 () Bool)

(assert (=> d!614454 m!2445493))

(declare-fun m!2445495 () Bool)

(assert (=> b!2012608 m!2445495))

(assert (=> b!2012380 d!614454))

(declare-fun d!614456 () Bool)

(assert (=> d!614456 (= (++!5965 (++!5965 lt!755601 lt!755602) lt!755610) (++!5965 lt!755601 (++!5965 lt!755602 lt!755610)))))

(declare-fun lt!755654 () Unit!36684)

(declare-fun choose!12260 (List!22188 List!22188 List!22188) Unit!36684)

(assert (=> d!614456 (= lt!755654 (choose!12260 lt!755601 lt!755602 lt!755610))))

(assert (=> d!614456 (= (lemmaConcatAssociativity!1233 lt!755601 lt!755602 lt!755610) lt!755654)))

(declare-fun bs!419845 () Bool)

(assert (= bs!419845 d!614456))

(assert (=> bs!419845 m!2445275))

(assert (=> bs!419845 m!2445277))

(assert (=> bs!419845 m!2445273))

(assert (=> bs!419845 m!2445279))

(assert (=> bs!419845 m!2445275))

(assert (=> bs!419845 m!2445273))

(declare-fun m!2445497 () Bool)

(assert (=> bs!419845 m!2445497))

(assert (=> b!2012380 d!614456))

(declare-fun d!614458 () Bool)

(declare-fun e!1271753 () Bool)

(assert (=> d!614458 e!1271753))

(declare-fun res!882762 () Bool)

(assert (=> d!614458 (=> (not res!882762) (not e!1271753))))

(declare-fun lt!755655 () List!22188)

(assert (=> d!614458 (= res!882762 (= (content!3243 lt!755655) ((_ map or) (content!3243 lt!755602) (content!3243 lt!755610))))))

(declare-fun e!1271752 () List!22188)

(assert (=> d!614458 (= lt!755655 e!1271752)))

(declare-fun c!325105 () Bool)

(assert (=> d!614458 (= c!325105 ((_ is Nil!22106) lt!755602))))

(assert (=> d!614458 (= (++!5965 lt!755602 lt!755610) lt!755655)))

(declare-fun b!2012612 () Bool)

(assert (=> b!2012612 (= e!1271753 (or (not (= lt!755610 Nil!22106)) (= lt!755655 lt!755602)))))

(declare-fun b!2012611 () Bool)

(declare-fun res!882761 () Bool)

(assert (=> b!2012611 (=> (not res!882761) (not e!1271753))))

(assert (=> b!2012611 (= res!882761 (= (size!17276 lt!755655) (+ (size!17276 lt!755602) (size!17276 lt!755610))))))

(declare-fun b!2012610 () Bool)

(assert (=> b!2012610 (= e!1271752 (Cons!22106 (h!27507 lt!755602) (++!5965 (t!187907 lt!755602) lt!755610)))))

(declare-fun b!2012609 () Bool)

(assert (=> b!2012609 (= e!1271752 lt!755610)))

(assert (= (and d!614458 c!325105) b!2012609))

(assert (= (and d!614458 (not c!325105)) b!2012610))

(assert (= (and d!614458 res!882762) b!2012611))

(assert (= (and b!2012611 res!882761) b!2012612))

(declare-fun m!2445499 () Bool)

(assert (=> d!614458 m!2445499))

(assert (=> d!614458 m!2445407))

(assert (=> d!614458 m!2445461))

(declare-fun m!2445501 () Bool)

(assert (=> b!2012611 m!2445501))

(assert (=> b!2012611 m!2445413))

(assert (=> b!2012611 m!2445467))

(declare-fun m!2445503 () Bool)

(assert (=> b!2012610 m!2445503))

(assert (=> b!2012380 d!614458))

(declare-fun d!614460 () Bool)

(declare-fun res!882765 () Bool)

(declare-fun e!1271756 () Bool)

(assert (=> d!614460 (=> (not res!882765) (not e!1271756))))

(declare-fun rulesValid!1479 (LexerInterface!3583 List!22190) Bool)

(assert (=> d!614460 (= res!882765 (rulesValid!1479 thiss!23328 rules!3198))))

(assert (=> d!614460 (= (rulesInvariant!3190 thiss!23328 rules!3198) e!1271756)))

(declare-fun b!2012615 () Bool)

(declare-datatypes ((List!22192 0))(
  ( (Nil!22110) (Cons!22110 (h!27511 String!25648) (t!188021 List!22192)) )
))
(declare-fun noDuplicateTag!1477 (LexerInterface!3583 List!22190 List!22192) Bool)

(assert (=> b!2012615 (= e!1271756 (noDuplicateTag!1477 thiss!23328 rules!3198 Nil!22110))))

(assert (= (and d!614460 res!882765) b!2012615))

(declare-fun m!2445505 () Bool)

(assert (=> d!614460 m!2445505))

(declare-fun m!2445507 () Bool)

(assert (=> b!2012615 m!2445507))

(assert (=> b!2012369 d!614460))

(declare-fun d!614462 () Bool)

(assert (=> d!614462 (= (inv!29269 (tag!4440 (h!27509 rules!3198))) (= (mod (str.len (value!124735 (tag!4440 (h!27509 rules!3198)))) 2) 0))))

(assert (=> b!2012395 d!614462))

(declare-fun d!614464 () Bool)

(declare-fun res!882768 () Bool)

(declare-fun e!1271759 () Bool)

(assert (=> d!614464 (=> (not res!882768) (not e!1271759))))

(declare-fun semiInverseModEq!1593 (Int Int) Bool)

(assert (=> d!614464 (= res!882768 (semiInverseModEq!1593 (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toValue!5639 (transformation!3970 (h!27509 rules!3198)))))))

(assert (=> d!614464 (= (inv!29273 (transformation!3970 (h!27509 rules!3198))) e!1271759)))

(declare-fun b!2012618 () Bool)

(declare-fun equivClasses!1520 (Int Int) Bool)

(assert (=> b!2012618 (= e!1271759 (equivClasses!1520 (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toValue!5639 (transformation!3970 (h!27509 rules!3198)))))))

(assert (= (and d!614464 res!882768) b!2012618))

(declare-fun m!2445509 () Bool)

(assert (=> d!614464 m!2445509))

(declare-fun m!2445511 () Bool)

(assert (=> b!2012618 m!2445511))

(assert (=> b!2012395 d!614464))

(declare-fun d!614466 () Bool)

(declare-fun res!882769 () Bool)

(declare-fun e!1271760 () Bool)

(assert (=> d!614466 (=> (not res!882769) (not e!1271760))))

(assert (=> d!614466 (= res!882769 (not (isEmpty!13721 (originalCharacters!4777 (h!27510 tokens!598)))))))

(assert (=> d!614466 (= (inv!29272 (h!27510 tokens!598)) e!1271760)))

(declare-fun b!2012619 () Bool)

(declare-fun res!882770 () Bool)

(assert (=> b!2012619 (=> (not res!882770) (not e!1271760))))

(assert (=> b!2012619 (= res!882770 (= (originalCharacters!4777 (h!27510 tokens!598)) (list!9007 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (value!124736 (h!27510 tokens!598))))))))

(declare-fun b!2012620 () Bool)

(assert (=> b!2012620 (= e!1271760 (= (size!17274 (h!27510 tokens!598)) (size!17276 (originalCharacters!4777 (h!27510 tokens!598)))))))

(assert (= (and d!614466 res!882769) b!2012619))

(assert (= (and b!2012619 res!882770) b!2012620))

(declare-fun b_lambda!67283 () Bool)

(assert (=> (not b_lambda!67283) (not b!2012619)))

(declare-fun t!187919 () Bool)

(declare-fun tb!125851 () Bool)

(assert (=> (and b!2012392 (= (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187919) tb!125851))

(declare-fun b!2012621 () Bool)

(declare-fun e!1271761 () Bool)

(declare-fun tp!600134 () Bool)

(assert (=> b!2012621 (= e!1271761 (and (inv!29274 (c!325057 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (value!124736 (h!27510 tokens!598))))) tp!600134))))

(declare-fun result!150796 () Bool)

(assert (=> tb!125851 (= result!150796 (and (inv!29275 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (value!124736 (h!27510 tokens!598)))) e!1271761))))

(assert (= tb!125851 b!2012621))

(declare-fun m!2445513 () Bool)

(assert (=> b!2012621 m!2445513))

(declare-fun m!2445515 () Bool)

(assert (=> tb!125851 m!2445515))

(assert (=> b!2012619 t!187919))

(declare-fun b_and!159215 () Bool)

(assert (= b_and!159209 (and (=> t!187919 result!150796) b_and!159215)))

(declare-fun t!187921 () Bool)

(declare-fun tb!125853 () Bool)

(assert (=> (and b!2012384 (= (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187921) tb!125853))

(declare-fun result!150798 () Bool)

(assert (= result!150798 result!150796))

(assert (=> b!2012619 t!187921))

(declare-fun b_and!159217 () Bool)

(assert (= b_and!159211 (and (=> t!187921 result!150798) b_and!159217)))

(declare-fun t!187923 () Bool)

(declare-fun tb!125855 () Bool)

(assert (=> (and b!2012393 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187923) tb!125855))

(declare-fun result!150800 () Bool)

(assert (= result!150800 result!150796))

(assert (=> b!2012619 t!187923))

(declare-fun b_and!159219 () Bool)

(assert (= b_and!159213 (and (=> t!187923 result!150800) b_and!159219)))

(declare-fun m!2445517 () Bool)

(assert (=> d!614466 m!2445517))

(declare-fun m!2445519 () Bool)

(assert (=> b!2012619 m!2445519))

(assert (=> b!2012619 m!2445519))

(declare-fun m!2445521 () Bool)

(assert (=> b!2012619 m!2445521))

(declare-fun m!2445523 () Bool)

(assert (=> b!2012620 m!2445523))

(assert (=> b!2012373 d!614466))

(declare-fun d!614468 () Bool)

(assert (=> d!614468 (= (inv!29269 (tag!4440 (rule!6197 (h!27510 tokens!598)))) (= (mod (str.len (value!124735 (tag!4440 (rule!6197 (h!27510 tokens!598))))) 2) 0))))

(assert (=> b!2012394 d!614468))

(declare-fun d!614470 () Bool)

(declare-fun res!882771 () Bool)

(declare-fun e!1271762 () Bool)

(assert (=> d!614470 (=> (not res!882771) (not e!1271762))))

(assert (=> d!614470 (= res!882771 (semiInverseModEq!1593 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))))))

(assert (=> d!614470 (= (inv!29273 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) e!1271762)))

(declare-fun b!2012622 () Bool)

(assert (=> b!2012622 (= e!1271762 (equivClasses!1520 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))))))

(assert (= (and d!614470 res!882771) b!2012622))

(declare-fun m!2445525 () Bool)

(assert (=> d!614470 m!2445525))

(declare-fun m!2445527 () Bool)

(assert (=> b!2012622 m!2445527))

(assert (=> b!2012394 d!614470))

(declare-fun d!614472 () Bool)

(declare-fun isEmpty!13723 (Option!4622) Bool)

(assert (=> d!614472 (= (isDefined!3910 lt!755615) (not (isEmpty!13723 lt!755615)))))

(declare-fun bs!419846 () Bool)

(assert (= bs!419846 d!614472))

(declare-fun m!2445529 () Bool)

(assert (=> bs!419846 m!2445529))

(assert (=> b!2012383 d!614472))

(declare-fun d!614474 () Bool)

(declare-fun e!1271765 () Bool)

(assert (=> d!614474 e!1271765))

(declare-fun res!882776 () Bool)

(assert (=> d!614474 (=> (not res!882776) (not e!1271765))))

(assert (=> d!614474 (= res!882776 (isDefined!3909 (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 separatorToken!354)))))))

(declare-fun lt!755658 () Unit!36684)

(declare-fun choose!12261 (LexerInterface!3583 List!22190 List!22188 Token!7492) Unit!36684)

(assert (=> d!614474 (= lt!755658 (choose!12261 thiss!23328 rules!3198 lt!755602 separatorToken!354))))

(assert (=> d!614474 (rulesInvariant!3190 thiss!23328 rules!3198)))

(assert (=> d!614474 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!785 thiss!23328 rules!3198 lt!755602 separatorToken!354) lt!755658)))

(declare-fun b!2012627 () Bool)

(declare-fun res!882777 () Bool)

(assert (=> b!2012627 (=> (not res!882777) (not e!1271765))))

(assert (=> b!2012627 (= res!882777 (matchR!2661 (regex!3970 (get!6997 (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 separatorToken!354))))) (list!9007 (charsOf!2510 separatorToken!354))))))

(declare-fun b!2012628 () Bool)

(assert (=> b!2012628 (= e!1271765 (= (rule!6197 separatorToken!354) (get!6997 (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 separatorToken!354))))))))

(assert (= (and d!614474 res!882776) b!2012627))

(assert (= (and b!2012627 res!882777) b!2012628))

(assert (=> d!614474 m!2445315))

(assert (=> d!614474 m!2445315))

(declare-fun m!2445531 () Bool)

(assert (=> d!614474 m!2445531))

(declare-fun m!2445533 () Bool)

(assert (=> d!614474 m!2445533))

(assert (=> d!614474 m!2445341))

(assert (=> b!2012627 m!2445319))

(declare-fun m!2445535 () Bool)

(assert (=> b!2012627 m!2445535))

(assert (=> b!2012627 m!2445315))

(declare-fun m!2445537 () Bool)

(assert (=> b!2012627 m!2445537))

(assert (=> b!2012627 m!2445303))

(assert (=> b!2012627 m!2445319))

(assert (=> b!2012627 m!2445315))

(assert (=> b!2012627 m!2445303))

(assert (=> b!2012628 m!2445315))

(assert (=> b!2012628 m!2445315))

(assert (=> b!2012628 m!2445537))

(assert (=> b!2012383 d!614474))

(declare-fun b!2012647 () Bool)

(declare-fun res!882797 () Bool)

(declare-fun e!1271772 () Bool)

(assert (=> b!2012647 (=> (not res!882797) (not e!1271772))))

(declare-fun lt!755671 () Option!4622)

(assert (=> b!2012647 (= res!882797 (= (++!5965 (list!9007 (charsOf!2510 (_1!11854 (get!6998 lt!755671)))) (_2!11854 (get!6998 lt!755671))) (++!5965 lt!755601 lt!755610)))))

(declare-fun b!2012648 () Bool)

(declare-fun e!1271774 () Option!4622)

(declare-fun call!123104 () Option!4622)

(assert (=> b!2012648 (= e!1271774 call!123104)))

(declare-fun b!2012649 () Bool)

(declare-fun lt!755673 () Option!4622)

(declare-fun lt!755670 () Option!4622)

(assert (=> b!2012649 (= e!1271774 (ite (and ((_ is None!4621) lt!755673) ((_ is None!4621) lt!755670)) None!4621 (ite ((_ is None!4621) lt!755670) lt!755673 (ite ((_ is None!4621) lt!755673) lt!755670 (ite (>= (size!17274 (_1!11854 (v!26874 lt!755673))) (size!17274 (_1!11854 (v!26874 lt!755670)))) lt!755673 lt!755670)))))))

(assert (=> b!2012649 (= lt!755673 call!123104)))

(assert (=> b!2012649 (= lt!755670 (maxPrefix!2019 thiss!23328 (t!187909 rules!3198) (++!5965 lt!755601 lt!755610)))))

(declare-fun b!2012651 () Bool)

(assert (=> b!2012651 (= e!1271772 (contains!4051 rules!3198 (rule!6197 (_1!11854 (get!6998 lt!755671)))))))

(declare-fun b!2012652 () Bool)

(declare-fun res!882796 () Bool)

(assert (=> b!2012652 (=> (not res!882796) (not e!1271772))))

(assert (=> b!2012652 (= res!882796 (matchR!2661 (regex!3970 (rule!6197 (_1!11854 (get!6998 lt!755671)))) (list!9007 (charsOf!2510 (_1!11854 (get!6998 lt!755671))))))))

(declare-fun bm!123099 () Bool)

(declare-fun maxPrefixOneRule!1250 (LexerInterface!3583 Rule!7740 List!22188) Option!4622)

(assert (=> bm!123099 (= call!123104 (maxPrefixOneRule!1250 thiss!23328 (h!27509 rules!3198) (++!5965 lt!755601 lt!755610)))))

(declare-fun b!2012653 () Bool)

(declare-fun res!882793 () Bool)

(assert (=> b!2012653 (=> (not res!882793) (not e!1271772))))

(declare-fun apply!5798 (TokenValueInjection!7796 BalanceConc!14590) TokenValue!4106)

(assert (=> b!2012653 (= res!882793 (= (value!124736 (_1!11854 (get!6998 lt!755671))) (apply!5798 (transformation!3970 (rule!6197 (_1!11854 (get!6998 lt!755671)))) (seqFromList!2824 (originalCharacters!4777 (_1!11854 (get!6998 lt!755671)))))))))

(declare-fun b!2012654 () Bool)

(declare-fun e!1271773 () Bool)

(assert (=> b!2012654 (= e!1271773 e!1271772)))

(declare-fun res!882798 () Bool)

(assert (=> b!2012654 (=> (not res!882798) (not e!1271772))))

(assert (=> b!2012654 (= res!882798 (isDefined!3910 lt!755671))))

(declare-fun b!2012655 () Bool)

(declare-fun res!882794 () Bool)

(assert (=> b!2012655 (=> (not res!882794) (not e!1271772))))

(assert (=> b!2012655 (= res!882794 (< (size!17276 (_2!11854 (get!6998 lt!755671))) (size!17276 (++!5965 lt!755601 lt!755610))))))

(declare-fun d!614476 () Bool)

(assert (=> d!614476 e!1271773))

(declare-fun res!882795 () Bool)

(assert (=> d!614476 (=> res!882795 e!1271773)))

(assert (=> d!614476 (= res!882795 (isEmpty!13723 lt!755671))))

(assert (=> d!614476 (= lt!755671 e!1271774)))

(declare-fun c!325108 () Bool)

(assert (=> d!614476 (= c!325108 (and ((_ is Cons!22108) rules!3198) ((_ is Nil!22108) (t!187909 rules!3198))))))

(declare-fun lt!755672 () Unit!36684)

(declare-fun lt!755669 () Unit!36684)

(assert (=> d!614476 (= lt!755672 lt!755669)))

(declare-fun isPrefix!1969 (List!22188 List!22188) Bool)

(assert (=> d!614476 (isPrefix!1969 (++!5965 lt!755601 lt!755610) (++!5965 lt!755601 lt!755610))))

(declare-fun lemmaIsPrefixRefl!1287 (List!22188 List!22188) Unit!36684)

(assert (=> d!614476 (= lt!755669 (lemmaIsPrefixRefl!1287 (++!5965 lt!755601 lt!755610) (++!5965 lt!755601 lt!755610)))))

(declare-fun rulesValidInductive!1368 (LexerInterface!3583 List!22190) Bool)

(assert (=> d!614476 (rulesValidInductive!1368 thiss!23328 rules!3198)))

(assert (=> d!614476 (= (maxPrefix!2019 thiss!23328 rules!3198 (++!5965 lt!755601 lt!755610)) lt!755671)))

(declare-fun b!2012650 () Bool)

(declare-fun res!882792 () Bool)

(assert (=> b!2012650 (=> (not res!882792) (not e!1271772))))

(assert (=> b!2012650 (= res!882792 (= (list!9007 (charsOf!2510 (_1!11854 (get!6998 lt!755671)))) (originalCharacters!4777 (_1!11854 (get!6998 lt!755671)))))))

(assert (= (and d!614476 c!325108) b!2012648))

(assert (= (and d!614476 (not c!325108)) b!2012649))

(assert (= (or b!2012648 b!2012649) bm!123099))

(assert (= (and d!614476 (not res!882795)) b!2012654))

(assert (= (and b!2012654 res!882798) b!2012650))

(assert (= (and b!2012650 res!882792) b!2012655))

(assert (= (and b!2012655 res!882794) b!2012647))

(assert (= (and b!2012647 res!882797) b!2012653))

(assert (= (and b!2012653 res!882793) b!2012652))

(assert (= (and b!2012652 res!882796) b!2012651))

(declare-fun m!2445539 () Bool)

(assert (=> b!2012652 m!2445539))

(declare-fun m!2445541 () Bool)

(assert (=> b!2012652 m!2445541))

(assert (=> b!2012652 m!2445541))

(declare-fun m!2445543 () Bool)

(assert (=> b!2012652 m!2445543))

(assert (=> b!2012652 m!2445543))

(declare-fun m!2445545 () Bool)

(assert (=> b!2012652 m!2445545))

(assert (=> b!2012650 m!2445539))

(assert (=> b!2012650 m!2445541))

(assert (=> b!2012650 m!2445541))

(assert (=> b!2012650 m!2445543))

(assert (=> b!2012653 m!2445539))

(declare-fun m!2445547 () Bool)

(assert (=> b!2012653 m!2445547))

(assert (=> b!2012653 m!2445547))

(declare-fun m!2445549 () Bool)

(assert (=> b!2012653 m!2445549))

(assert (=> b!2012647 m!2445539))

(assert (=> b!2012647 m!2445541))

(assert (=> b!2012647 m!2445541))

(assert (=> b!2012647 m!2445543))

(assert (=> b!2012647 m!2445543))

(declare-fun m!2445551 () Bool)

(assert (=> b!2012647 m!2445551))

(declare-fun m!2445553 () Bool)

(assert (=> d!614476 m!2445553))

(assert (=> d!614476 m!2445299))

(assert (=> d!614476 m!2445299))

(declare-fun m!2445555 () Bool)

(assert (=> d!614476 m!2445555))

(assert (=> d!614476 m!2445299))

(assert (=> d!614476 m!2445299))

(declare-fun m!2445557 () Bool)

(assert (=> d!614476 m!2445557))

(declare-fun m!2445559 () Bool)

(assert (=> d!614476 m!2445559))

(declare-fun m!2445561 () Bool)

(assert (=> b!2012654 m!2445561))

(assert (=> bm!123099 m!2445299))

(declare-fun m!2445563 () Bool)

(assert (=> bm!123099 m!2445563))

(assert (=> b!2012649 m!2445299))

(declare-fun m!2445565 () Bool)

(assert (=> b!2012649 m!2445565))

(assert (=> b!2012655 m!2445539))

(declare-fun m!2445567 () Bool)

(assert (=> b!2012655 m!2445567))

(assert (=> b!2012655 m!2445299))

(declare-fun m!2445569 () Bool)

(assert (=> b!2012655 m!2445569))

(assert (=> b!2012651 m!2445539))

(declare-fun m!2445571 () Bool)

(assert (=> b!2012651 m!2445571))

(assert (=> b!2012383 d!614476))

(declare-fun b!2012656 () Bool)

(declare-fun res!882804 () Bool)

(declare-fun e!1271775 () Bool)

(assert (=> b!2012656 (=> (not res!882804) (not e!1271775))))

(declare-fun lt!755676 () Option!4622)

(assert (=> b!2012656 (= res!882804 (= (++!5965 (list!9007 (charsOf!2510 (_1!11854 (get!6998 lt!755676)))) (_2!11854 (get!6998 lt!755676))) lt!755601))))

(declare-fun b!2012657 () Bool)

(declare-fun e!1271777 () Option!4622)

(declare-fun call!123105 () Option!4622)

(assert (=> b!2012657 (= e!1271777 call!123105)))

(declare-fun b!2012658 () Bool)

(declare-fun lt!755678 () Option!4622)

(declare-fun lt!755675 () Option!4622)

(assert (=> b!2012658 (= e!1271777 (ite (and ((_ is None!4621) lt!755678) ((_ is None!4621) lt!755675)) None!4621 (ite ((_ is None!4621) lt!755675) lt!755678 (ite ((_ is None!4621) lt!755678) lt!755675 (ite (>= (size!17274 (_1!11854 (v!26874 lt!755678))) (size!17274 (_1!11854 (v!26874 lt!755675)))) lt!755678 lt!755675)))))))

(assert (=> b!2012658 (= lt!755678 call!123105)))

(assert (=> b!2012658 (= lt!755675 (maxPrefix!2019 thiss!23328 (t!187909 rules!3198) lt!755601))))

(declare-fun b!2012660 () Bool)

(assert (=> b!2012660 (= e!1271775 (contains!4051 rules!3198 (rule!6197 (_1!11854 (get!6998 lt!755676)))))))

(declare-fun b!2012661 () Bool)

(declare-fun res!882803 () Bool)

(assert (=> b!2012661 (=> (not res!882803) (not e!1271775))))

(assert (=> b!2012661 (= res!882803 (matchR!2661 (regex!3970 (rule!6197 (_1!11854 (get!6998 lt!755676)))) (list!9007 (charsOf!2510 (_1!11854 (get!6998 lt!755676))))))))

(declare-fun bm!123100 () Bool)

(assert (=> bm!123100 (= call!123105 (maxPrefixOneRule!1250 thiss!23328 (h!27509 rules!3198) lt!755601))))

(declare-fun b!2012662 () Bool)

(declare-fun res!882800 () Bool)

(assert (=> b!2012662 (=> (not res!882800) (not e!1271775))))

(assert (=> b!2012662 (= res!882800 (= (value!124736 (_1!11854 (get!6998 lt!755676))) (apply!5798 (transformation!3970 (rule!6197 (_1!11854 (get!6998 lt!755676)))) (seqFromList!2824 (originalCharacters!4777 (_1!11854 (get!6998 lt!755676)))))))))

(declare-fun b!2012663 () Bool)

(declare-fun e!1271776 () Bool)

(assert (=> b!2012663 (= e!1271776 e!1271775)))

(declare-fun res!882805 () Bool)

(assert (=> b!2012663 (=> (not res!882805) (not e!1271775))))

(assert (=> b!2012663 (= res!882805 (isDefined!3910 lt!755676))))

(declare-fun b!2012664 () Bool)

(declare-fun res!882801 () Bool)

(assert (=> b!2012664 (=> (not res!882801) (not e!1271775))))

(assert (=> b!2012664 (= res!882801 (< (size!17276 (_2!11854 (get!6998 lt!755676))) (size!17276 lt!755601)))))

(declare-fun d!614478 () Bool)

(assert (=> d!614478 e!1271776))

(declare-fun res!882802 () Bool)

(assert (=> d!614478 (=> res!882802 e!1271776)))

(assert (=> d!614478 (= res!882802 (isEmpty!13723 lt!755676))))

(assert (=> d!614478 (= lt!755676 e!1271777)))

(declare-fun c!325109 () Bool)

(assert (=> d!614478 (= c!325109 (and ((_ is Cons!22108) rules!3198) ((_ is Nil!22108) (t!187909 rules!3198))))))

(declare-fun lt!755677 () Unit!36684)

(declare-fun lt!755674 () Unit!36684)

(assert (=> d!614478 (= lt!755677 lt!755674)))

(assert (=> d!614478 (isPrefix!1969 lt!755601 lt!755601)))

(assert (=> d!614478 (= lt!755674 (lemmaIsPrefixRefl!1287 lt!755601 lt!755601))))

(assert (=> d!614478 (rulesValidInductive!1368 thiss!23328 rules!3198)))

(assert (=> d!614478 (= (maxPrefix!2019 thiss!23328 rules!3198 lt!755601) lt!755676)))

(declare-fun b!2012659 () Bool)

(declare-fun res!882799 () Bool)

(assert (=> b!2012659 (=> (not res!882799) (not e!1271775))))

(assert (=> b!2012659 (= res!882799 (= (list!9007 (charsOf!2510 (_1!11854 (get!6998 lt!755676)))) (originalCharacters!4777 (_1!11854 (get!6998 lt!755676)))))))

(assert (= (and d!614478 c!325109) b!2012657))

(assert (= (and d!614478 (not c!325109)) b!2012658))

(assert (= (or b!2012657 b!2012658) bm!123100))

(assert (= (and d!614478 (not res!882802)) b!2012663))

(assert (= (and b!2012663 res!882805) b!2012659))

(assert (= (and b!2012659 res!882799) b!2012664))

(assert (= (and b!2012664 res!882801) b!2012656))

(assert (= (and b!2012656 res!882804) b!2012662))

(assert (= (and b!2012662 res!882800) b!2012661))

(assert (= (and b!2012661 res!882803) b!2012660))

(declare-fun m!2445573 () Bool)

(assert (=> b!2012661 m!2445573))

(declare-fun m!2445575 () Bool)

(assert (=> b!2012661 m!2445575))

(assert (=> b!2012661 m!2445575))

(declare-fun m!2445577 () Bool)

(assert (=> b!2012661 m!2445577))

(assert (=> b!2012661 m!2445577))

(declare-fun m!2445579 () Bool)

(assert (=> b!2012661 m!2445579))

(assert (=> b!2012659 m!2445573))

(assert (=> b!2012659 m!2445575))

(assert (=> b!2012659 m!2445575))

(assert (=> b!2012659 m!2445577))

(assert (=> b!2012662 m!2445573))

(declare-fun m!2445581 () Bool)

(assert (=> b!2012662 m!2445581))

(assert (=> b!2012662 m!2445581))

(declare-fun m!2445583 () Bool)

(assert (=> b!2012662 m!2445583))

(assert (=> b!2012656 m!2445573))

(assert (=> b!2012656 m!2445575))

(assert (=> b!2012656 m!2445575))

(assert (=> b!2012656 m!2445577))

(assert (=> b!2012656 m!2445577))

(declare-fun m!2445585 () Bool)

(assert (=> b!2012656 m!2445585))

(declare-fun m!2445587 () Bool)

(assert (=> d!614478 m!2445587))

(declare-fun m!2445589 () Bool)

(assert (=> d!614478 m!2445589))

(declare-fun m!2445591 () Bool)

(assert (=> d!614478 m!2445591))

(assert (=> d!614478 m!2445559))

(declare-fun m!2445593 () Bool)

(assert (=> b!2012663 m!2445593))

(declare-fun m!2445595 () Bool)

(assert (=> bm!123100 m!2445595))

(declare-fun m!2445597 () Bool)

(assert (=> b!2012658 m!2445597))

(assert (=> b!2012664 m!2445573))

(declare-fun m!2445599 () Bool)

(assert (=> b!2012664 m!2445599))

(assert (=> b!2012664 m!2445411))

(assert (=> b!2012660 m!2445573))

(declare-fun m!2445601 () Bool)

(assert (=> b!2012660 m!2445601))

(assert (=> b!2012383 d!614478))

(declare-fun bs!419852 () Bool)

(declare-fun b!2012820 () Bool)

(assert (= bs!419852 (and b!2012820 b!2012370)))

(declare-fun lambda!76171 () Int)

(assert (=> bs!419852 (not (= lambda!76171 lambda!76159))))

(declare-fun b!2012831 () Bool)

(declare-fun e!1271880 () Bool)

(assert (=> b!2012831 (= e!1271880 true)))

(declare-fun b!2012830 () Bool)

(declare-fun e!1271879 () Bool)

(assert (=> b!2012830 (= e!1271879 e!1271880)))

(declare-fun b!2012829 () Bool)

(declare-fun e!1271878 () Bool)

(assert (=> b!2012829 (= e!1271878 e!1271879)))

(assert (=> b!2012820 e!1271878))

(assert (= b!2012830 b!2012831))

(assert (= b!2012829 b!2012830))

(assert (= (and b!2012820 ((_ is Cons!22108) rules!3198)) b!2012829))

(declare-fun order!14065 () Int)

(declare-fun order!14063 () Int)

(declare-fun dynLambda!10911 (Int Int) Int)

(declare-fun dynLambda!10912 (Int Int) Int)

(assert (=> b!2012831 (< (dynLambda!10911 order!14063 (toValue!5639 (transformation!3970 (h!27509 rules!3198)))) (dynLambda!10912 order!14065 lambda!76171))))

(declare-fun order!14067 () Int)

(declare-fun dynLambda!10913 (Int Int) Int)

(assert (=> b!2012831 (< (dynLambda!10913 order!14067 (toChars!5498 (transformation!3970 (h!27509 rules!3198)))) (dynLambda!10912 order!14065 lambda!76171))))

(assert (=> b!2012820 true))

(declare-fun b!2012813 () Bool)

(declare-fun e!1271868 () List!22188)

(declare-fun call!123122 () List!22188)

(declare-fun lt!755736 () List!22188)

(assert (=> b!2012813 (= e!1271868 (++!5965 call!123122 lt!755736))))

(declare-fun b!2012814 () Bool)

(declare-fun e!1271870 () List!22188)

(assert (=> b!2012814 (= e!1271870 Nil!22106)))

(declare-fun call!123124 () List!22188)

(declare-fun bm!123115 () Bool)

(declare-fun call!123120 () BalanceConc!14590)

(declare-fun c!325137 () Bool)

(declare-fun call!123123 () BalanceConc!14590)

(assert (=> bm!123115 (= call!123124 (list!9007 (ite c!325137 call!123120 call!123123)))))

(declare-fun bm!123116 () Bool)

(declare-fun call!123121 () List!22188)

(assert (=> bm!123116 (= call!123121 call!123124)))

(declare-fun b!2012815 () Bool)

(declare-fun c!325135 () Bool)

(declare-fun lt!755738 () Option!4622)

(assert (=> b!2012815 (= c!325135 (and ((_ is Some!4621) lt!755738) (not (= (_1!11854 (v!26874 lt!755738)) (h!27510 (t!187910 tokens!598))))))))

(declare-fun e!1271871 () List!22188)

(assert (=> b!2012815 (= e!1271871 e!1271868)))

(declare-fun b!2012816 () Bool)

(declare-fun e!1271869 () List!22188)

(assert (=> b!2012816 (= e!1271869 (list!9007 call!123120))))

(declare-fun b!2012817 () Bool)

(assert (=> b!2012817 (= e!1271869 call!123124)))

(declare-fun bm!123117 () Bool)

(declare-fun c!325138 () Bool)

(assert (=> bm!123117 (= c!325138 c!325137)))

(assert (=> bm!123117 (= call!123122 (++!5965 e!1271869 (ite c!325137 lt!755736 call!123121)))))

(declare-fun b!2012818 () Bool)

(assert (=> b!2012818 (= e!1271868 Nil!22106)))

(declare-datatypes ((IArray!14783 0))(
  ( (IArray!14784 (innerList!7449 List!22191)) )
))
(declare-datatypes ((Conc!7389 0))(
  ( (Node!7389 (left!17592 Conc!7389) (right!17922 Conc!7389) (csize!15008 Int) (cheight!7600 Int)) (Leaf!10837 (xs!10287 IArray!14783) (csize!15009 Int)) (Empty!7389) )
))
(declare-datatypes ((BalanceConc!14594 0))(
  ( (BalanceConc!14595 (c!325196 Conc!7389)) )
))
(declare-fun print!1547 (LexerInterface!3583 BalanceConc!14594) BalanceConc!14590)

(declare-fun singletonSeq!1948 (Token!7492) BalanceConc!14594)

(declare-fun printTailRec!1052 (LexerInterface!3583 BalanceConc!14594 Int BalanceConc!14590) BalanceConc!14590)

(assert (=> b!2012818 (= (print!1547 thiss!23328 (singletonSeq!1948 (h!27510 (t!187910 tokens!598)))) (printTailRec!1052 thiss!23328 (singletonSeq!1948 (h!27510 (t!187910 tokens!598))) 0 (BalanceConc!14591 Empty!7387)))))

(declare-fun lt!755735 () Unit!36684)

(declare-fun Unit!36688 () Unit!36684)

(assert (=> b!2012818 (= lt!755735 Unit!36688)))

(declare-fun lt!755740 () Unit!36684)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!762 (LexerInterface!3583 List!22190 List!22188 List!22188) Unit!36684)

(assert (=> b!2012818 (= lt!755740 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!762 thiss!23328 rules!3198 call!123121 lt!755736))))

(assert (=> b!2012818 false))

(declare-fun lt!755739 () Unit!36684)

(declare-fun Unit!36689 () Unit!36684)

(assert (=> b!2012818 (= lt!755739 Unit!36689)))

(declare-fun bm!123118 () Bool)

(assert (=> bm!123118 (= call!123120 (charsOf!2510 (h!27510 (t!187910 tokens!598))))))

(declare-fun d!614480 () Bool)

(declare-fun c!325136 () Bool)

(assert (=> d!614480 (= c!325136 ((_ is Cons!22109) (t!187910 tokens!598)))))

(assert (=> d!614480 (= (printWithSeparatorTokenWhenNeededList!612 thiss!23328 rules!3198 (t!187910 tokens!598) separatorToken!354) e!1271870)))

(declare-fun b!2012819 () Bool)

(assert (=> b!2012819 (= e!1271871 call!123122)))

(declare-fun bm!123119 () Bool)

(assert (=> bm!123119 (= call!123123 (charsOf!2510 (ite c!325135 separatorToken!354 (h!27510 (t!187910 tokens!598)))))))

(assert (=> b!2012820 (= e!1271870 e!1271871)))

(declare-fun lt!755737 () Unit!36684)

(declare-fun forallContained!731 (List!22191 Int Token!7492) Unit!36684)

(assert (=> b!2012820 (= lt!755737 (forallContained!731 (t!187910 tokens!598) lambda!76171 (h!27510 (t!187910 tokens!598))))))

(assert (=> b!2012820 (= lt!755736 (printWithSeparatorTokenWhenNeededList!612 thiss!23328 rules!3198 (t!187910 (t!187910 tokens!598)) separatorToken!354))))

(assert (=> b!2012820 (= lt!755738 (maxPrefix!2019 thiss!23328 rules!3198 (++!5965 (list!9007 (charsOf!2510 (h!27510 (t!187910 tokens!598)))) lt!755736)))))

(assert (=> b!2012820 (= c!325137 (and ((_ is Some!4621) lt!755738) (= (_1!11854 (v!26874 lt!755738)) (h!27510 (t!187910 tokens!598)))))))

(assert (= (and d!614480 c!325136) b!2012820))

(assert (= (and d!614480 (not c!325136)) b!2012814))

(assert (= (and b!2012820 c!325137) b!2012819))

(assert (= (and b!2012820 (not c!325137)) b!2012815))

(assert (= (and b!2012815 c!325135) b!2012813))

(assert (= (and b!2012815 (not c!325135)) b!2012818))

(assert (= (or b!2012813 b!2012818) bm!123119))

(assert (= (or b!2012813 b!2012818) bm!123116))

(assert (= (or b!2012819 b!2012813) bm!123118))

(assert (= (or b!2012819 bm!123116) bm!123115))

(assert (= (or b!2012819 b!2012813) bm!123117))

(assert (= (and bm!123117 c!325138) b!2012817))

(assert (= (and bm!123117 (not c!325138)) b!2012816))

(declare-fun m!2445765 () Bool)

(assert (=> b!2012813 m!2445765))

(declare-fun m!2445767 () Bool)

(assert (=> b!2012818 m!2445767))

(assert (=> b!2012818 m!2445767))

(declare-fun m!2445769 () Bool)

(assert (=> b!2012818 m!2445769))

(assert (=> b!2012818 m!2445767))

(declare-fun m!2445771 () Bool)

(assert (=> b!2012818 m!2445771))

(declare-fun m!2445773 () Bool)

(assert (=> b!2012818 m!2445773))

(declare-fun m!2445775 () Bool)

(assert (=> bm!123119 m!2445775))

(declare-fun m!2445777 () Bool)

(assert (=> bm!123118 m!2445777))

(assert (=> b!2012820 m!2445777))

(assert (=> b!2012820 m!2445777))

(declare-fun m!2445779 () Bool)

(assert (=> b!2012820 m!2445779))

(assert (=> b!2012820 m!2445779))

(declare-fun m!2445781 () Bool)

(assert (=> b!2012820 m!2445781))

(declare-fun m!2445783 () Bool)

(assert (=> b!2012820 m!2445783))

(assert (=> b!2012820 m!2445781))

(declare-fun m!2445785 () Bool)

(assert (=> b!2012820 m!2445785))

(declare-fun m!2445787 () Bool)

(assert (=> b!2012820 m!2445787))

(declare-fun m!2445789 () Bool)

(assert (=> bm!123115 m!2445789))

(declare-fun m!2445791 () Bool)

(assert (=> b!2012816 m!2445791))

(declare-fun m!2445793 () Bool)

(assert (=> bm!123117 m!2445793))

(assert (=> b!2012383 d!614480))

(declare-fun d!614526 () Bool)

(declare-fun list!9010 (Conc!7387) List!22188)

(assert (=> d!614526 (= (list!9007 (charsOf!2510 separatorToken!354)) (list!9010 (c!325057 (charsOf!2510 separatorToken!354))))))

(declare-fun bs!419853 () Bool)

(assert (= bs!419853 d!614526))

(declare-fun m!2445795 () Bool)

(assert (=> bs!419853 m!2445795))

(assert (=> b!2012383 d!614526))

(declare-fun d!614528 () Bool)

(assert (=> d!614528 (= (list!9007 lt!755606) (list!9010 (c!325057 lt!755606)))))

(declare-fun bs!419854 () Bool)

(assert (= bs!419854 d!614528))

(declare-fun m!2445797 () Bool)

(assert (=> bs!419854 m!2445797))

(assert (=> b!2012383 d!614528))

(declare-fun d!614530 () Bool)

(declare-fun isEmpty!13725 (Option!4621) Bool)

(assert (=> d!614530 (= (isDefined!3909 lt!755617) (not (isEmpty!13725 lt!755617)))))

(declare-fun bs!419855 () Bool)

(assert (= bs!419855 d!614530))

(declare-fun m!2445799 () Bool)

(assert (=> bs!419855 m!2445799))

(assert (=> b!2012383 d!614530))

(declare-fun b!2012846 () Bool)

(declare-fun e!1271890 () Bool)

(declare-fun e!1271889 () Bool)

(assert (=> b!2012846 (= e!1271890 e!1271889)))

(declare-fun res!882878 () Bool)

(assert (=> b!2012846 (=> (not res!882878) (not e!1271889))))

(declare-fun lt!755748 () Option!4621)

(assert (=> b!2012846 (= res!882878 (contains!4051 rules!3198 (get!6997 lt!755748)))))

(declare-fun b!2012847 () Bool)

(declare-fun e!1271892 () Option!4621)

(assert (=> b!2012847 (= e!1271892 (Some!4620 (h!27509 rules!3198)))))

(declare-fun b!2012848 () Bool)

(declare-fun lt!755747 () Unit!36684)

(declare-fun lt!755749 () Unit!36684)

(assert (=> b!2012848 (= lt!755747 lt!755749)))

(assert (=> b!2012848 (rulesInvariant!3190 thiss!23328 (t!187909 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!294 (LexerInterface!3583 Rule!7740 List!22190) Unit!36684)

(assert (=> b!2012848 (= lt!755749 (lemmaInvariantOnRulesThenOnTail!294 thiss!23328 (h!27509 rules!3198) (t!187909 rules!3198)))))

(declare-fun e!1271891 () Option!4621)

(assert (=> b!2012848 (= e!1271891 (getRuleFromTag!785 thiss!23328 (t!187909 rules!3198) (tag!4440 (rule!6197 separatorToken!354))))))

(declare-fun d!614532 () Bool)

(assert (=> d!614532 e!1271890))

(declare-fun res!882879 () Bool)

(assert (=> d!614532 (=> res!882879 e!1271890)))

(assert (=> d!614532 (= res!882879 (isEmpty!13725 lt!755748))))

(assert (=> d!614532 (= lt!755748 e!1271892)))

(declare-fun c!325143 () Bool)

(assert (=> d!614532 (= c!325143 (and ((_ is Cons!22108) rules!3198) (= (tag!4440 (h!27509 rules!3198)) (tag!4440 (rule!6197 separatorToken!354)))))))

(assert (=> d!614532 (rulesInvariant!3190 thiss!23328 rules!3198)))

(assert (=> d!614532 (= (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 separatorToken!354))) lt!755748)))

(declare-fun b!2012849 () Bool)

(assert (=> b!2012849 (= e!1271891 None!4620)))

(declare-fun b!2012850 () Bool)

(assert (=> b!2012850 (= e!1271892 e!1271891)))

(declare-fun c!325144 () Bool)

(assert (=> b!2012850 (= c!325144 (and ((_ is Cons!22108) rules!3198) (not (= (tag!4440 (h!27509 rules!3198)) (tag!4440 (rule!6197 separatorToken!354))))))))

(declare-fun b!2012851 () Bool)

(assert (=> b!2012851 (= e!1271889 (= (tag!4440 (get!6997 lt!755748)) (tag!4440 (rule!6197 separatorToken!354))))))

(assert (= (and d!614532 c!325143) b!2012847))

(assert (= (and d!614532 (not c!325143)) b!2012850))

(assert (= (and b!2012850 c!325144) b!2012848))

(assert (= (and b!2012850 (not c!325144)) b!2012849))

(assert (= (and d!614532 (not res!882879)) b!2012846))

(assert (= (and b!2012846 res!882878) b!2012851))

(declare-fun m!2445801 () Bool)

(assert (=> b!2012846 m!2445801))

(assert (=> b!2012846 m!2445801))

(declare-fun m!2445803 () Bool)

(assert (=> b!2012846 m!2445803))

(declare-fun m!2445805 () Bool)

(assert (=> b!2012848 m!2445805))

(declare-fun m!2445807 () Bool)

(assert (=> b!2012848 m!2445807))

(declare-fun m!2445809 () Bool)

(assert (=> b!2012848 m!2445809))

(declare-fun m!2445811 () Bool)

(assert (=> d!614532 m!2445811))

(assert (=> d!614532 m!2445341))

(assert (=> b!2012851 m!2445801))

(assert (=> b!2012383 d!614532))

(declare-fun b!2012852 () Bool)

(declare-fun e!1271894 () Bool)

(declare-fun e!1271893 () Bool)

(assert (=> b!2012852 (= e!1271894 e!1271893)))

(declare-fun res!882880 () Bool)

(assert (=> b!2012852 (=> (not res!882880) (not e!1271893))))

(declare-fun lt!755751 () Option!4621)

(assert (=> b!2012852 (= res!882880 (contains!4051 rules!3198 (get!6997 lt!755751)))))

(declare-fun b!2012853 () Bool)

(declare-fun e!1271896 () Option!4621)

(assert (=> b!2012853 (= e!1271896 (Some!4620 (h!27509 rules!3198)))))

(declare-fun b!2012854 () Bool)

(declare-fun lt!755750 () Unit!36684)

(declare-fun lt!755752 () Unit!36684)

(assert (=> b!2012854 (= lt!755750 lt!755752)))

(assert (=> b!2012854 (rulesInvariant!3190 thiss!23328 (t!187909 rules!3198))))

(assert (=> b!2012854 (= lt!755752 (lemmaInvariantOnRulesThenOnTail!294 thiss!23328 (h!27509 rules!3198) (t!187909 rules!3198)))))

(declare-fun e!1271895 () Option!4621)

(assert (=> b!2012854 (= e!1271895 (getRuleFromTag!785 thiss!23328 (t!187909 rules!3198) (tag!4440 (rule!6197 (h!27510 tokens!598)))))))

(declare-fun d!614534 () Bool)

(assert (=> d!614534 e!1271894))

(declare-fun res!882881 () Bool)

(assert (=> d!614534 (=> res!882881 e!1271894)))

(assert (=> d!614534 (= res!882881 (isEmpty!13725 lt!755751))))

(assert (=> d!614534 (= lt!755751 e!1271896)))

(declare-fun c!325145 () Bool)

(assert (=> d!614534 (= c!325145 (and ((_ is Cons!22108) rules!3198) (= (tag!4440 (h!27509 rules!3198)) (tag!4440 (rule!6197 (h!27510 tokens!598))))))))

(assert (=> d!614534 (rulesInvariant!3190 thiss!23328 rules!3198)))

(assert (=> d!614534 (= (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 (h!27510 tokens!598)))) lt!755751)))

(declare-fun b!2012855 () Bool)

(assert (=> b!2012855 (= e!1271895 None!4620)))

(declare-fun b!2012856 () Bool)

(assert (=> b!2012856 (= e!1271896 e!1271895)))

(declare-fun c!325146 () Bool)

(assert (=> b!2012856 (= c!325146 (and ((_ is Cons!22108) rules!3198) (not (= (tag!4440 (h!27509 rules!3198)) (tag!4440 (rule!6197 (h!27510 tokens!598)))))))))

(declare-fun b!2012857 () Bool)

(assert (=> b!2012857 (= e!1271893 (= (tag!4440 (get!6997 lt!755751)) (tag!4440 (rule!6197 (h!27510 tokens!598)))))))

(assert (= (and d!614534 c!325145) b!2012853))

(assert (= (and d!614534 (not c!325145)) b!2012856))

(assert (= (and b!2012856 c!325146) b!2012854))

(assert (= (and b!2012856 (not c!325146)) b!2012855))

(assert (= (and d!614534 (not res!882881)) b!2012852))

(assert (= (and b!2012852 res!882880) b!2012857))

(declare-fun m!2445813 () Bool)

(assert (=> b!2012852 m!2445813))

(assert (=> b!2012852 m!2445813))

(declare-fun m!2445815 () Bool)

(assert (=> b!2012852 m!2445815))

(assert (=> b!2012854 m!2445805))

(assert (=> b!2012854 m!2445807))

(declare-fun m!2445817 () Bool)

(assert (=> b!2012854 m!2445817))

(declare-fun m!2445819 () Bool)

(assert (=> d!614534 m!2445819))

(assert (=> d!614534 m!2445341))

(assert (=> b!2012857 m!2445813))

(assert (=> b!2012383 d!614534))

(declare-fun d!614536 () Bool)

(declare-fun e!1271898 () Bool)

(assert (=> d!614536 e!1271898))

(declare-fun res!882883 () Bool)

(assert (=> d!614536 (=> (not res!882883) (not e!1271898))))

(declare-fun lt!755753 () List!22188)

(assert (=> d!614536 (= res!882883 (= (content!3243 lt!755753) ((_ map or) (content!3243 lt!755601) (content!3243 lt!755610))))))

(declare-fun e!1271897 () List!22188)

(assert (=> d!614536 (= lt!755753 e!1271897)))

(declare-fun c!325147 () Bool)

(assert (=> d!614536 (= c!325147 ((_ is Nil!22106) lt!755601))))

(assert (=> d!614536 (= (++!5965 lt!755601 lt!755610) lt!755753)))

(declare-fun b!2012861 () Bool)

(assert (=> b!2012861 (= e!1271898 (or (not (= lt!755610 Nil!22106)) (= lt!755753 lt!755601)))))

(declare-fun b!2012860 () Bool)

(declare-fun res!882882 () Bool)

(assert (=> b!2012860 (=> (not res!882882) (not e!1271898))))

(assert (=> b!2012860 (= res!882882 (= (size!17276 lt!755753) (+ (size!17276 lt!755601) (size!17276 lt!755610))))))

(declare-fun b!2012859 () Bool)

(assert (=> b!2012859 (= e!1271897 (Cons!22106 (h!27507 lt!755601) (++!5965 (t!187907 lt!755601) lt!755610)))))

(declare-fun b!2012858 () Bool)

(assert (=> b!2012858 (= e!1271897 lt!755610)))

(assert (= (and d!614536 c!325147) b!2012858))

(assert (= (and d!614536 (not c!325147)) b!2012859))

(assert (= (and d!614536 res!882883) b!2012860))

(assert (= (and b!2012860 res!882882) b!2012861))

(declare-fun m!2445821 () Bool)

(assert (=> d!614536 m!2445821))

(assert (=> d!614536 m!2445405))

(assert (=> d!614536 m!2445461))

(declare-fun m!2445823 () Bool)

(assert (=> b!2012860 m!2445823))

(assert (=> b!2012860 m!2445411))

(assert (=> b!2012860 m!2445467))

(declare-fun m!2445825 () Bool)

(assert (=> b!2012859 m!2445825))

(assert (=> b!2012383 d!614536))

(declare-fun b!2012866 () Bool)

(declare-fun e!1271901 () Bool)

(assert (=> b!2012866 (= e!1271901 true)))

(declare-fun d!614538 () Bool)

(assert (=> d!614538 e!1271901))

(assert (= d!614538 b!2012866))

(declare-fun lambda!76174 () Int)

(declare-fun order!14069 () Int)

(declare-fun dynLambda!10914 (Int Int) Int)

(assert (=> b!2012866 (< (dynLambda!10911 order!14063 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) (dynLambda!10914 order!14069 lambda!76174))))

(assert (=> b!2012866 (< (dynLambda!10913 order!14067 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) (dynLambda!10914 order!14069 lambda!76174))))

(declare-fun dynLambda!10915 (Int BalanceConc!14590) TokenValue!4106)

(assert (=> d!614538 (= (list!9007 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (dynLambda!10915 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) lt!755606))) (list!9007 lt!755606))))

(declare-fun lt!755756 () Unit!36684)

(declare-fun ForallOf!433 (Int BalanceConc!14590) Unit!36684)

(assert (=> d!614538 (= lt!755756 (ForallOf!433 lambda!76174 lt!755606))))

(assert (=> d!614538 (= (lemmaSemiInverse!927 (transformation!3970 (rule!6197 (h!27510 tokens!598))) lt!755606) lt!755756)))

(declare-fun b_lambda!67297 () Bool)

(assert (=> (not b_lambda!67297) (not d!614538)))

(declare-fun tb!125887 () Bool)

(declare-fun t!187959 () Bool)

(assert (=> (and b!2012392 (= (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187959) tb!125887))

(declare-fun b!2012867 () Bool)

(declare-fun tp!600140 () Bool)

(declare-fun e!1271902 () Bool)

(assert (=> b!2012867 (= e!1271902 (and (inv!29274 (c!325057 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (dynLambda!10915 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) lt!755606)))) tp!600140))))

(declare-fun result!150836 () Bool)

(assert (=> tb!125887 (= result!150836 (and (inv!29275 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (dynLambda!10915 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) lt!755606))) e!1271902))))

(assert (= tb!125887 b!2012867))

(declare-fun m!2445827 () Bool)

(assert (=> b!2012867 m!2445827))

(declare-fun m!2445829 () Bool)

(assert (=> tb!125887 m!2445829))

(assert (=> d!614538 t!187959))

(declare-fun b_and!159257 () Bool)

(assert (= b_and!159215 (and (=> t!187959 result!150836) b_and!159257)))

(declare-fun tb!125889 () Bool)

(declare-fun t!187961 () Bool)

(assert (=> (and b!2012384 (= (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187961) tb!125889))

(declare-fun result!150838 () Bool)

(assert (= result!150838 result!150836))

(assert (=> d!614538 t!187961))

(declare-fun b_and!159259 () Bool)

(assert (= b_and!159217 (and (=> t!187961 result!150838) b_and!159259)))

(declare-fun t!187963 () Bool)

(declare-fun tb!125891 () Bool)

(assert (=> (and b!2012393 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187963) tb!125891))

(declare-fun result!150840 () Bool)

(assert (= result!150840 result!150836))

(assert (=> d!614538 t!187963))

(declare-fun b_and!159261 () Bool)

(assert (= b_and!159219 (and (=> t!187963 result!150840) b_and!159261)))

(declare-fun b_lambda!67299 () Bool)

(assert (=> (not b_lambda!67299) (not d!614538)))

(declare-fun tb!125893 () Bool)

(declare-fun t!187965 () Bool)

(assert (=> (and b!2012392 (= (toValue!5639 (transformation!3970 (h!27509 rules!3198))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187965) tb!125893))

(declare-fun result!150842 () Bool)

(assert (=> tb!125893 (= result!150842 (inv!21 (dynLambda!10915 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) lt!755606)))))

(declare-fun m!2445831 () Bool)

(assert (=> tb!125893 m!2445831))

(assert (=> d!614538 t!187965))

(declare-fun b_and!159263 () Bool)

(assert (= b_and!159197 (and (=> t!187965 result!150842) b_and!159263)))

(declare-fun tb!125895 () Bool)

(declare-fun t!187967 () Bool)

(assert (=> (and b!2012384 (= (toValue!5639 (transformation!3970 (rule!6197 separatorToken!354))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187967) tb!125895))

(declare-fun result!150846 () Bool)

(assert (= result!150846 result!150842))

(assert (=> d!614538 t!187967))

(declare-fun b_and!159265 () Bool)

(assert (= b_and!159201 (and (=> t!187967 result!150846) b_and!159265)))

(declare-fun t!187969 () Bool)

(declare-fun tb!125897 () Bool)

(assert (=> (and b!2012393 (= (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187969) tb!125897))

(declare-fun result!150848 () Bool)

(assert (= result!150848 result!150842))

(assert (=> d!614538 t!187969))

(declare-fun b_and!159267 () Bool)

(assert (= b_and!159205 (and (=> t!187969 result!150848) b_and!159267)))

(declare-fun m!2445833 () Bool)

(assert (=> d!614538 m!2445833))

(assert (=> d!614538 m!2445833))

(declare-fun m!2445835 () Bool)

(assert (=> d!614538 m!2445835))

(declare-fun m!2445837 () Bool)

(assert (=> d!614538 m!2445837))

(assert (=> d!614538 m!2445309))

(assert (=> d!614538 m!2445835))

(declare-fun m!2445839 () Bool)

(assert (=> d!614538 m!2445839))

(assert (=> b!2012383 d!614538))

(declare-fun d!614540 () Bool)

(assert (=> d!614540 (= (isDefined!3909 lt!755613) (not (isEmpty!13725 lt!755613)))))

(declare-fun bs!419856 () Bool)

(assert (= bs!419856 d!614540))

(declare-fun m!2445841 () Bool)

(assert (=> bs!419856 m!2445841))

(assert (=> b!2012383 d!614540))

(declare-fun b!2012876 () Bool)

(declare-fun e!1271910 () Bool)

(assert (=> b!2012876 (= e!1271910 true)))

(declare-fun d!614542 () Bool)

(assert (=> d!614542 e!1271910))

(assert (= d!614542 b!2012876))

(declare-fun lambda!76177 () Int)

(declare-fun order!14071 () Int)

(declare-fun dynLambda!10916 (Int Int) Int)

(assert (=> b!2012876 (< (dynLambda!10911 order!14063 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) (dynLambda!10916 order!14071 lambda!76177))))

(assert (=> b!2012876 (< (dynLambda!10913 order!14067 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) (dynLambda!10916 order!14071 lambda!76177))))

(assert (=> d!614542 (= (dynLambda!10915 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) lt!755606) (dynLambda!10915 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (seqFromList!2824 (originalCharacters!4777 (h!27510 tokens!598)))))))

(declare-fun lt!755759 () Unit!36684)

(declare-fun Forall2of!229 (Int BalanceConc!14590 BalanceConc!14590) Unit!36684)

(assert (=> d!614542 (= lt!755759 (Forall2of!229 lambda!76177 lt!755606 (seqFromList!2824 (originalCharacters!4777 (h!27510 tokens!598)))))))

(assert (=> d!614542 (= (list!9007 lt!755606) (list!9007 (seqFromList!2824 (originalCharacters!4777 (h!27510 tokens!598)))))))

(assert (=> d!614542 (= (lemmaEqSameImage!656 (transformation!3970 (rule!6197 (h!27510 tokens!598))) lt!755606 (seqFromList!2824 (originalCharacters!4777 (h!27510 tokens!598)))) lt!755759)))

(declare-fun b_lambda!67301 () Bool)

(assert (=> (not b_lambda!67301) (not d!614542)))

(assert (=> d!614542 t!187965))

(declare-fun b_and!159269 () Bool)

(assert (= b_and!159263 (and (=> t!187965 result!150842) b_and!159269)))

(assert (=> d!614542 t!187967))

(declare-fun b_and!159271 () Bool)

(assert (= b_and!159265 (and (=> t!187967 result!150846) b_and!159271)))

(assert (=> d!614542 t!187969))

(declare-fun b_and!159273 () Bool)

(assert (= b_and!159267 (and (=> t!187969 result!150848) b_and!159273)))

(declare-fun b_lambda!67303 () Bool)

(assert (=> (not b_lambda!67303) (not d!614542)))

(declare-fun t!187971 () Bool)

(declare-fun tb!125899 () Bool)

(assert (=> (and b!2012392 (= (toValue!5639 (transformation!3970 (h!27509 rules!3198))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187971) tb!125899))

(declare-fun result!150850 () Bool)

(assert (=> tb!125899 (= result!150850 (inv!21 (dynLambda!10915 (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (seqFromList!2824 (originalCharacters!4777 (h!27510 tokens!598))))))))

(declare-fun m!2445843 () Bool)

(assert (=> tb!125899 m!2445843))

(assert (=> d!614542 t!187971))

(declare-fun b_and!159275 () Bool)

(assert (= b_and!159269 (and (=> t!187971 result!150850) b_and!159275)))

(declare-fun tb!125901 () Bool)

(declare-fun t!187973 () Bool)

(assert (=> (and b!2012384 (= (toValue!5639 (transformation!3970 (rule!6197 separatorToken!354))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187973) tb!125901))

(declare-fun result!150852 () Bool)

(assert (= result!150852 result!150850))

(assert (=> d!614542 t!187973))

(declare-fun b_and!159277 () Bool)

(assert (= b_and!159271 (and (=> t!187973 result!150852) b_and!159277)))

(declare-fun t!187975 () Bool)

(declare-fun tb!125903 () Bool)

(assert (=> (and b!2012393 (= (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!187975) tb!125903))

(declare-fun result!150854 () Bool)

(assert (= result!150854 result!150850))

(assert (=> d!614542 t!187975))

(declare-fun b_and!159279 () Bool)

(assert (= b_and!159273 (and (=> t!187975 result!150854) b_and!159279)))

(assert (=> d!614542 m!2445833))

(assert (=> d!614542 m!2445285))

(declare-fun m!2445845 () Bool)

(assert (=> d!614542 m!2445845))

(assert (=> d!614542 m!2445285))

(declare-fun m!2445847 () Bool)

(assert (=> d!614542 m!2445847))

(assert (=> d!614542 m!2445285))

(declare-fun m!2445849 () Bool)

(assert (=> d!614542 m!2445849))

(assert (=> d!614542 m!2445309))

(assert (=> b!2012383 d!614542))

(declare-fun d!614544 () Bool)

(declare-fun lt!755762 () BalanceConc!14590)

(assert (=> d!614544 (= (list!9007 lt!755762) (originalCharacters!4777 (h!27510 tokens!598)))))

(assert (=> d!614544 (= lt!755762 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (value!124736 (h!27510 tokens!598))))))

(assert (=> d!614544 (= (charsOf!2510 (h!27510 tokens!598)) lt!755762)))

(declare-fun b_lambda!67305 () Bool)

(assert (=> (not b_lambda!67305) (not d!614544)))

(assert (=> d!614544 t!187919))

(declare-fun b_and!159281 () Bool)

(assert (= b_and!159257 (and (=> t!187919 result!150796) b_and!159281)))

(assert (=> d!614544 t!187921))

(declare-fun b_and!159283 () Bool)

(assert (= b_and!159259 (and (=> t!187921 result!150798) b_and!159283)))

(assert (=> d!614544 t!187923))

(declare-fun b_and!159285 () Bool)

(assert (= b_and!159261 (and (=> t!187923 result!150800) b_and!159285)))

(declare-fun m!2445851 () Bool)

(assert (=> d!614544 m!2445851))

(assert (=> d!614544 m!2445519))

(assert (=> b!2012383 d!614544))

(declare-fun d!614546 () Bool)

(declare-fun fromListB!1266 (List!22188) BalanceConc!14590)

(assert (=> d!614546 (= (seqFromList!2824 (originalCharacters!4777 (h!27510 tokens!598))) (fromListB!1266 (originalCharacters!4777 (h!27510 tokens!598))))))

(declare-fun bs!419857 () Bool)

(assert (= bs!419857 d!614546))

(declare-fun m!2445853 () Bool)

(assert (=> bs!419857 m!2445853))

(assert (=> b!2012383 d!614546))

(declare-fun d!614548 () Bool)

(declare-fun e!1271912 () Bool)

(assert (=> d!614548 e!1271912))

(declare-fun res!882886 () Bool)

(assert (=> d!614548 (=> (not res!882886) (not e!1271912))))

(assert (=> d!614548 (= res!882886 (isDefined!3909 (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 (h!27510 tokens!598))))))))

(declare-fun lt!755763 () Unit!36684)

(assert (=> d!614548 (= lt!755763 (choose!12261 thiss!23328 rules!3198 lt!755601 (h!27510 tokens!598)))))

(assert (=> d!614548 (rulesInvariant!3190 thiss!23328 rules!3198)))

(assert (=> d!614548 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!785 thiss!23328 rules!3198 lt!755601 (h!27510 tokens!598)) lt!755763)))

(declare-fun b!2012877 () Bool)

(declare-fun res!882887 () Bool)

(assert (=> b!2012877 (=> (not res!882887) (not e!1271912))))

(assert (=> b!2012877 (= res!882887 (matchR!2661 (regex!3970 (get!6997 (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 (h!27510 tokens!598)))))) (list!9007 (charsOf!2510 (h!27510 tokens!598)))))))

(declare-fun b!2012878 () Bool)

(assert (=> b!2012878 (= e!1271912 (= (rule!6197 (h!27510 tokens!598)) (get!6997 (getRuleFromTag!785 thiss!23328 rules!3198 (tag!4440 (rule!6197 (h!27510 tokens!598)))))))))

(assert (= (and d!614548 res!882886) b!2012877))

(assert (= (and b!2012877 res!882887) b!2012878))

(assert (=> d!614548 m!2445307))

(assert (=> d!614548 m!2445307))

(declare-fun m!2445855 () Bool)

(assert (=> d!614548 m!2445855))

(declare-fun m!2445857 () Bool)

(assert (=> d!614548 m!2445857))

(assert (=> d!614548 m!2445341))

(declare-fun m!2445859 () Bool)

(assert (=> b!2012877 m!2445859))

(declare-fun m!2445861 () Bool)

(assert (=> b!2012877 m!2445861))

(assert (=> b!2012877 m!2445307))

(declare-fun m!2445863 () Bool)

(assert (=> b!2012877 m!2445863))

(assert (=> b!2012877 m!2445305))

(assert (=> b!2012877 m!2445859))

(assert (=> b!2012877 m!2445307))

(assert (=> b!2012877 m!2445305))

(assert (=> b!2012878 m!2445307))

(assert (=> b!2012878 m!2445307))

(assert (=> b!2012878 m!2445863))

(assert (=> b!2012383 d!614548))

(declare-fun d!614550 () Bool)

(declare-fun lt!755764 () BalanceConc!14590)

(assert (=> d!614550 (= (list!9007 lt!755764) (originalCharacters!4777 separatorToken!354))))

(assert (=> d!614550 (= lt!755764 (dynLambda!10906 (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (value!124736 separatorToken!354)))))

(assert (=> d!614550 (= (charsOf!2510 separatorToken!354) lt!755764)))

(declare-fun b_lambda!67307 () Bool)

(assert (=> (not b_lambda!67307) (not d!614550)))

(assert (=> d!614550 t!187912))

(declare-fun b_and!159287 () Bool)

(assert (= b_and!159281 (and (=> t!187912 result!150788) b_and!159287)))

(assert (=> d!614550 t!187914))

(declare-fun b_and!159289 () Bool)

(assert (= b_and!159283 (and (=> t!187914 result!150792) b_and!159289)))

(assert (=> d!614550 t!187916))

(declare-fun b_and!159291 () Bool)

(assert (= b_and!159285 (and (=> t!187916 result!150794) b_and!159291)))

(declare-fun m!2445865 () Bool)

(assert (=> d!614550 m!2445865))

(assert (=> d!614550 m!2445397))

(assert (=> b!2012383 d!614550))

(declare-fun b!2012879 () Bool)

(declare-fun e!1271913 () Bool)

(assert (=> b!2012879 (= e!1271913 (matchR!2661 (derivativeStep!1396 (regex!3970 lt!755605) (head!4548 lt!755601)) (tail!3030 lt!755601)))))

(declare-fun b!2012880 () Bool)

(declare-fun e!1271914 () Bool)

(declare-fun lt!755765 () Bool)

(declare-fun call!123125 () Bool)

(assert (=> b!2012880 (= e!1271914 (= lt!755765 call!123125))))

(declare-fun b!2012881 () Bool)

(declare-fun res!882895 () Bool)

(declare-fun e!1271917 () Bool)

(assert (=> b!2012881 (=> (not res!882895) (not e!1271917))))

(assert (=> b!2012881 (= res!882895 (isEmpty!13721 (tail!3030 lt!755601)))))

(declare-fun b!2012882 () Bool)

(assert (=> b!2012882 (= e!1271917 (= (head!4548 lt!755601) (c!325058 (regex!3970 lt!755605))))))

(declare-fun b!2012883 () Bool)

(declare-fun res!882892 () Bool)

(declare-fun e!1271918 () Bool)

(assert (=> b!2012883 (=> res!882892 e!1271918)))

(assert (=> b!2012883 (= res!882892 (not (isEmpty!13721 (tail!3030 lt!755601))))))

(declare-fun b!2012884 () Bool)

(declare-fun res!882890 () Bool)

(declare-fun e!1271915 () Bool)

(assert (=> b!2012884 (=> res!882890 e!1271915)))

(assert (=> b!2012884 (= res!882890 e!1271917)))

(declare-fun res!882888 () Bool)

(assert (=> b!2012884 (=> (not res!882888) (not e!1271917))))

(assert (=> b!2012884 (= res!882888 lt!755765)))

(declare-fun b!2012885 () Bool)

(assert (=> b!2012885 (= e!1271918 (not (= (head!4548 lt!755601) (c!325058 (regex!3970 lt!755605)))))))

(declare-fun d!614552 () Bool)

(assert (=> d!614552 e!1271914))

(declare-fun c!325150 () Bool)

(assert (=> d!614552 (= c!325150 ((_ is EmptyExpr!5395) (regex!3970 lt!755605)))))

(assert (=> d!614552 (= lt!755765 e!1271913)))

(declare-fun c!325151 () Bool)

(assert (=> d!614552 (= c!325151 (isEmpty!13721 lt!755601))))

(assert (=> d!614552 (validRegex!2163 (regex!3970 lt!755605))))

(assert (=> d!614552 (= (matchR!2661 (regex!3970 lt!755605) lt!755601) lt!755765)))

(declare-fun bm!123120 () Bool)

(assert (=> bm!123120 (= call!123125 (isEmpty!13721 lt!755601))))

(declare-fun b!2012886 () Bool)

(declare-fun res!882889 () Bool)

(assert (=> b!2012886 (=> res!882889 e!1271915)))

(assert (=> b!2012886 (= res!882889 (not ((_ is ElementMatch!5395) (regex!3970 lt!755605))))))

(declare-fun e!1271919 () Bool)

(assert (=> b!2012886 (= e!1271919 e!1271915)))

(declare-fun b!2012887 () Bool)

(declare-fun res!882891 () Bool)

(assert (=> b!2012887 (=> (not res!882891) (not e!1271917))))

(assert (=> b!2012887 (= res!882891 (not call!123125))))

(declare-fun b!2012888 () Bool)

(assert (=> b!2012888 (= e!1271913 (nullable!1637 (regex!3970 lt!755605)))))

(declare-fun b!2012889 () Bool)

(declare-fun e!1271916 () Bool)

(assert (=> b!2012889 (= e!1271915 e!1271916)))

(declare-fun res!882894 () Bool)

(assert (=> b!2012889 (=> (not res!882894) (not e!1271916))))

(assert (=> b!2012889 (= res!882894 (not lt!755765))))

(declare-fun b!2012890 () Bool)

(assert (=> b!2012890 (= e!1271916 e!1271918)))

(declare-fun res!882893 () Bool)

(assert (=> b!2012890 (=> res!882893 e!1271918)))

(assert (=> b!2012890 (= res!882893 call!123125)))

(declare-fun b!2012891 () Bool)

(assert (=> b!2012891 (= e!1271914 e!1271919)))

(declare-fun c!325149 () Bool)

(assert (=> b!2012891 (= c!325149 ((_ is EmptyLang!5395) (regex!3970 lt!755605)))))

(declare-fun b!2012892 () Bool)

(assert (=> b!2012892 (= e!1271919 (not lt!755765))))

(assert (= (and d!614552 c!325151) b!2012888))

(assert (= (and d!614552 (not c!325151)) b!2012879))

(assert (= (and d!614552 c!325150) b!2012880))

(assert (= (and d!614552 (not c!325150)) b!2012891))

(assert (= (and b!2012891 c!325149) b!2012892))

(assert (= (and b!2012891 (not c!325149)) b!2012886))

(assert (= (and b!2012886 (not res!882889)) b!2012884))

(assert (= (and b!2012884 res!882888) b!2012887))

(assert (= (and b!2012887 res!882891) b!2012881))

(assert (= (and b!2012881 res!882895) b!2012882))

(assert (= (and b!2012884 (not res!882890)) b!2012889))

(assert (= (and b!2012889 res!882894) b!2012890))

(assert (= (and b!2012890 (not res!882893)) b!2012883))

(assert (= (and b!2012883 (not res!882892)) b!2012885))

(assert (= (or b!2012880 b!2012887 b!2012890) bm!123120))

(declare-fun m!2445867 () Bool)

(assert (=> b!2012881 m!2445867))

(assert (=> b!2012881 m!2445867))

(declare-fun m!2445869 () Bool)

(assert (=> b!2012881 m!2445869))

(declare-fun m!2445871 () Bool)

(assert (=> b!2012885 m!2445871))

(assert (=> b!2012882 m!2445871))

(declare-fun m!2445873 () Bool)

(assert (=> b!2012888 m!2445873))

(assert (=> b!2012879 m!2445871))

(assert (=> b!2012879 m!2445871))

(declare-fun m!2445875 () Bool)

(assert (=> b!2012879 m!2445875))

(assert (=> b!2012879 m!2445867))

(assert (=> b!2012879 m!2445875))

(assert (=> b!2012879 m!2445867))

(declare-fun m!2445877 () Bool)

(assert (=> b!2012879 m!2445877))

(declare-fun m!2445879 () Bool)

(assert (=> d!614552 m!2445879))

(declare-fun m!2445881 () Bool)

(assert (=> d!614552 m!2445881))

(assert (=> bm!123120 m!2445879))

(assert (=> b!2012883 m!2445867))

(assert (=> b!2012883 m!2445867))

(assert (=> b!2012883 m!2445869))

(assert (=> b!2012372 d!614552))

(declare-fun d!614554 () Bool)

(assert (=> d!614554 (= (get!6997 lt!755613) (v!26873 lt!755613))))

(assert (=> b!2012372 d!614554))

(declare-fun d!614556 () Bool)

(assert (=> d!614556 (= (inv!29269 (tag!4440 (rule!6197 separatorToken!354))) (= (mod (str.len (value!124735 (tag!4440 (rule!6197 separatorToken!354)))) 2) 0))))

(assert (=> b!2012398 d!614556))

(declare-fun d!614558 () Bool)

(declare-fun res!882896 () Bool)

(declare-fun e!1271920 () Bool)

(assert (=> d!614558 (=> (not res!882896) (not e!1271920))))

(assert (=> d!614558 (= res!882896 (semiInverseModEq!1593 (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (toValue!5639 (transformation!3970 (rule!6197 separatorToken!354)))))))

(assert (=> d!614558 (= (inv!29273 (transformation!3970 (rule!6197 separatorToken!354))) e!1271920)))

(declare-fun b!2012893 () Bool)

(assert (=> b!2012893 (= e!1271920 (equivClasses!1520 (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (toValue!5639 (transformation!3970 (rule!6197 separatorToken!354)))))))

(assert (= (and d!614558 res!882896) b!2012893))

(declare-fun m!2445883 () Bool)

(assert (=> d!614558 m!2445883))

(declare-fun m!2445885 () Bool)

(assert (=> b!2012893 m!2445885))

(assert (=> b!2012398 d!614558))

(declare-fun d!614560 () Bool)

(assert (=> d!614560 (= (isEmpty!13718 rules!3198) ((_ is Nil!22108) rules!3198))))

(assert (=> b!2012376 d!614560))

(declare-fun d!614562 () Bool)

(declare-fun res!882901 () Bool)

(declare-fun e!1271925 () Bool)

(assert (=> d!614562 (=> res!882901 e!1271925)))

(assert (=> d!614562 (= res!882901 (not ((_ is Cons!22108) rules!3198)))))

(assert (=> d!614562 (= (sepAndNonSepRulesDisjointChars!1068 rules!3198 rules!3198) e!1271925)))

(declare-fun b!2012898 () Bool)

(declare-fun e!1271926 () Bool)

(assert (=> b!2012898 (= e!1271925 e!1271926)))

(declare-fun res!882902 () Bool)

(assert (=> b!2012898 (=> (not res!882902) (not e!1271926))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!477 (Rule!7740 List!22190) Bool)

(assert (=> b!2012898 (= res!882902 (ruleDisjointCharsFromAllFromOtherType!477 (h!27509 rules!3198) rules!3198))))

(declare-fun b!2012899 () Bool)

(assert (=> b!2012899 (= e!1271926 (sepAndNonSepRulesDisjointChars!1068 rules!3198 (t!187909 rules!3198)))))

(assert (= (and d!614562 (not res!882901)) b!2012898))

(assert (= (and b!2012898 res!882902) b!2012899))

(declare-fun m!2445887 () Bool)

(assert (=> b!2012898 m!2445887))

(declare-fun m!2445889 () Bool)

(assert (=> b!2012899 m!2445889))

(assert (=> b!2012386 d!614562))

(declare-fun d!614564 () Bool)

(assert (=> d!614564 (= (get!6998 lt!755615) (v!26874 lt!755615))))

(assert (=> b!2012375 d!614564))

(declare-fun b!2012910 () Bool)

(declare-fun e!1271934 () Bool)

(declare-fun inv!17 (TokenValue!4106) Bool)

(assert (=> b!2012910 (= e!1271934 (inv!17 (value!124736 (h!27510 tokens!598))))))

(declare-fun b!2012911 () Bool)

(declare-fun e!1271933 () Bool)

(declare-fun inv!16 (TokenValue!4106) Bool)

(assert (=> b!2012911 (= e!1271933 (inv!16 (value!124736 (h!27510 tokens!598))))))

(declare-fun b!2012912 () Bool)

(declare-fun res!882905 () Bool)

(declare-fun e!1271935 () Bool)

(assert (=> b!2012912 (=> res!882905 e!1271935)))

(assert (=> b!2012912 (= res!882905 (not ((_ is IntegerValue!12320) (value!124736 (h!27510 tokens!598)))))))

(assert (=> b!2012912 (= e!1271934 e!1271935)))

(declare-fun d!614566 () Bool)

(declare-fun c!325157 () Bool)

(assert (=> d!614566 (= c!325157 ((_ is IntegerValue!12318) (value!124736 (h!27510 tokens!598))))))

(assert (=> d!614566 (= (inv!21 (value!124736 (h!27510 tokens!598))) e!1271933)))

(declare-fun b!2012913 () Bool)

(assert (=> b!2012913 (= e!1271933 e!1271934)))

(declare-fun c!325156 () Bool)

(assert (=> b!2012913 (= c!325156 ((_ is IntegerValue!12319) (value!124736 (h!27510 tokens!598))))))

(declare-fun b!2012914 () Bool)

(declare-fun inv!15 (TokenValue!4106) Bool)

(assert (=> b!2012914 (= e!1271935 (inv!15 (value!124736 (h!27510 tokens!598))))))

(assert (= (and d!614566 c!325157) b!2012911))

(assert (= (and d!614566 (not c!325157)) b!2012913))

(assert (= (and b!2012913 c!325156) b!2012910))

(assert (= (and b!2012913 (not c!325156)) b!2012912))

(assert (= (and b!2012912 (not res!882905)) b!2012914))

(declare-fun m!2445891 () Bool)

(assert (=> b!2012910 m!2445891))

(declare-fun m!2445893 () Bool)

(assert (=> b!2012911 m!2445893))

(declare-fun m!2445895 () Bool)

(assert (=> b!2012914 m!2445895))

(assert (=> b!2012396 d!614566))

(declare-fun d!614568 () Bool)

(declare-fun lt!755799 () Bool)

(declare-fun e!1271975 () Bool)

(assert (=> d!614568 (= lt!755799 e!1271975)))

(declare-fun res!882929 () Bool)

(assert (=> d!614568 (=> (not res!882929) (not e!1271975))))

(declare-fun list!9011 (BalanceConc!14594) List!22191)

(declare-datatypes ((tuple2!20774 0))(
  ( (tuple2!20775 (_1!11856 BalanceConc!14594) (_2!11856 BalanceConc!14590)) )
))
(declare-fun lex!1601 (LexerInterface!3583 List!22190 BalanceConc!14590) tuple2!20774)

(assert (=> d!614568 (= res!882929 (= (list!9011 (_1!11856 (lex!1601 thiss!23328 rules!3198 (print!1547 thiss!23328 (singletonSeq!1948 separatorToken!354))))) (list!9011 (singletonSeq!1948 separatorToken!354))))))

(declare-fun e!1271974 () Bool)

(assert (=> d!614568 (= lt!755799 e!1271974)))

(declare-fun res!882927 () Bool)

(assert (=> d!614568 (=> (not res!882927) (not e!1271974))))

(declare-fun lt!755798 () tuple2!20774)

(declare-fun size!17278 (BalanceConc!14594) Int)

(assert (=> d!614568 (= res!882927 (= (size!17278 (_1!11856 lt!755798)) 1))))

(assert (=> d!614568 (= lt!755798 (lex!1601 thiss!23328 rules!3198 (print!1547 thiss!23328 (singletonSeq!1948 separatorToken!354))))))

(assert (=> d!614568 (not (isEmpty!13718 rules!3198))))

(assert (=> d!614568 (= (rulesProduceIndividualToken!1755 thiss!23328 rules!3198 separatorToken!354) lt!755799)))

(declare-fun b!2012989 () Bool)

(declare-fun res!882928 () Bool)

(assert (=> b!2012989 (=> (not res!882928) (not e!1271974))))

(declare-fun apply!5799 (BalanceConc!14594 Int) Token!7492)

(assert (=> b!2012989 (= res!882928 (= (apply!5799 (_1!11856 lt!755798) 0) separatorToken!354))))

(declare-fun b!2012990 () Bool)

(declare-fun isEmpty!13726 (BalanceConc!14590) Bool)

(assert (=> b!2012990 (= e!1271974 (isEmpty!13726 (_2!11856 lt!755798)))))

(declare-fun b!2012991 () Bool)

(assert (=> b!2012991 (= e!1271975 (isEmpty!13726 (_2!11856 (lex!1601 thiss!23328 rules!3198 (print!1547 thiss!23328 (singletonSeq!1948 separatorToken!354))))))))

(assert (= (and d!614568 res!882927) b!2012989))

(assert (= (and b!2012989 res!882928) b!2012990))

(assert (= (and d!614568 res!882929) b!2012991))

(declare-fun m!2445985 () Bool)

(assert (=> d!614568 m!2445985))

(assert (=> d!614568 m!2445985))

(declare-fun m!2445987 () Bool)

(assert (=> d!614568 m!2445987))

(declare-fun m!2445989 () Bool)

(assert (=> d!614568 m!2445989))

(assert (=> d!614568 m!2445263))

(assert (=> d!614568 m!2445985))

(declare-fun m!2445991 () Bool)

(assert (=> d!614568 m!2445991))

(declare-fun m!2445993 () Bool)

(assert (=> d!614568 m!2445993))

(assert (=> d!614568 m!2445991))

(declare-fun m!2445995 () Bool)

(assert (=> d!614568 m!2445995))

(declare-fun m!2445997 () Bool)

(assert (=> b!2012989 m!2445997))

(declare-fun m!2445999 () Bool)

(assert (=> b!2012990 m!2445999))

(assert (=> b!2012991 m!2445985))

(assert (=> b!2012991 m!2445985))

(assert (=> b!2012991 m!2445991))

(assert (=> b!2012991 m!2445991))

(assert (=> b!2012991 m!2445995))

(declare-fun m!2446001 () Bool)

(assert (=> b!2012991 m!2446001))

(assert (=> b!2012385 d!614568))

(declare-fun b!2012992 () Bool)

(declare-fun e!1271976 () Bool)

(assert (=> b!2012992 (= e!1271976 (matchR!2661 (derivativeStep!1396 (regex!3970 lt!755603) (head!4548 lt!755602)) (tail!3030 lt!755602)))))

(declare-fun b!2012993 () Bool)

(declare-fun e!1271977 () Bool)

(declare-fun lt!755800 () Bool)

(declare-fun call!123150 () Bool)

(assert (=> b!2012993 (= e!1271977 (= lt!755800 call!123150))))

(declare-fun b!2012994 () Bool)

(declare-fun res!882937 () Bool)

(declare-fun e!1271980 () Bool)

(assert (=> b!2012994 (=> (not res!882937) (not e!1271980))))

(assert (=> b!2012994 (= res!882937 (isEmpty!13721 (tail!3030 lt!755602)))))

(declare-fun b!2012995 () Bool)

(assert (=> b!2012995 (= e!1271980 (= (head!4548 lt!755602) (c!325058 (regex!3970 lt!755603))))))

(declare-fun b!2012996 () Bool)

(declare-fun res!882934 () Bool)

(declare-fun e!1271981 () Bool)

(assert (=> b!2012996 (=> res!882934 e!1271981)))

(assert (=> b!2012996 (= res!882934 (not (isEmpty!13721 (tail!3030 lt!755602))))))

(declare-fun b!2012997 () Bool)

(declare-fun res!882932 () Bool)

(declare-fun e!1271978 () Bool)

(assert (=> b!2012997 (=> res!882932 e!1271978)))

(assert (=> b!2012997 (= res!882932 e!1271980)))

(declare-fun res!882930 () Bool)

(assert (=> b!2012997 (=> (not res!882930) (not e!1271980))))

(assert (=> b!2012997 (= res!882930 lt!755800)))

(declare-fun b!2012998 () Bool)

(assert (=> b!2012998 (= e!1271981 (not (= (head!4548 lt!755602) (c!325058 (regex!3970 lt!755603)))))))

(declare-fun d!614584 () Bool)

(assert (=> d!614584 e!1271977))

(declare-fun c!325184 () Bool)

(assert (=> d!614584 (= c!325184 ((_ is EmptyExpr!5395) (regex!3970 lt!755603)))))

(assert (=> d!614584 (= lt!755800 e!1271976)))

(declare-fun c!325185 () Bool)

(assert (=> d!614584 (= c!325185 (isEmpty!13721 lt!755602))))

(assert (=> d!614584 (validRegex!2163 (regex!3970 lt!755603))))

(assert (=> d!614584 (= (matchR!2661 (regex!3970 lt!755603) lt!755602) lt!755800)))

(declare-fun bm!123145 () Bool)

(assert (=> bm!123145 (= call!123150 (isEmpty!13721 lt!755602))))

(declare-fun b!2012999 () Bool)

(declare-fun res!882931 () Bool)

(assert (=> b!2012999 (=> res!882931 e!1271978)))

(assert (=> b!2012999 (= res!882931 (not ((_ is ElementMatch!5395) (regex!3970 lt!755603))))))

(declare-fun e!1271982 () Bool)

(assert (=> b!2012999 (= e!1271982 e!1271978)))

(declare-fun b!2013000 () Bool)

(declare-fun res!882933 () Bool)

(assert (=> b!2013000 (=> (not res!882933) (not e!1271980))))

(assert (=> b!2013000 (= res!882933 (not call!123150))))

(declare-fun b!2013001 () Bool)

(assert (=> b!2013001 (= e!1271976 (nullable!1637 (regex!3970 lt!755603)))))

(declare-fun b!2013002 () Bool)

(declare-fun e!1271979 () Bool)

(assert (=> b!2013002 (= e!1271978 e!1271979)))

(declare-fun res!882936 () Bool)

(assert (=> b!2013002 (=> (not res!882936) (not e!1271979))))

(assert (=> b!2013002 (= res!882936 (not lt!755800))))

(declare-fun b!2013003 () Bool)

(assert (=> b!2013003 (= e!1271979 e!1271981)))

(declare-fun res!882935 () Bool)

(assert (=> b!2013003 (=> res!882935 e!1271981)))

(assert (=> b!2013003 (= res!882935 call!123150)))

(declare-fun b!2013004 () Bool)

(assert (=> b!2013004 (= e!1271977 e!1271982)))

(declare-fun c!325183 () Bool)

(assert (=> b!2013004 (= c!325183 ((_ is EmptyLang!5395) (regex!3970 lt!755603)))))

(declare-fun b!2013005 () Bool)

(assert (=> b!2013005 (= e!1271982 (not lt!755800))))

(assert (= (and d!614584 c!325185) b!2013001))

(assert (= (and d!614584 (not c!325185)) b!2012992))

(assert (= (and d!614584 c!325184) b!2012993))

(assert (= (and d!614584 (not c!325184)) b!2013004))

(assert (= (and b!2013004 c!325183) b!2013005))

(assert (= (and b!2013004 (not c!325183)) b!2012999))

(assert (= (and b!2012999 (not res!882931)) b!2012997))

(assert (= (and b!2012997 res!882930) b!2013000))

(assert (= (and b!2013000 res!882933) b!2012994))

(assert (= (and b!2012994 res!882937) b!2012995))

(assert (= (and b!2012997 (not res!882932)) b!2013002))

(assert (= (and b!2013002 res!882936) b!2013003))

(assert (= (and b!2013003 (not res!882935)) b!2012996))

(assert (= (and b!2012996 (not res!882934)) b!2012998))

(assert (= (or b!2012993 b!2013000 b!2013003) bm!123145))

(assert (=> b!2012994 m!2445375))

(assert (=> b!2012994 m!2445375))

(assert (=> b!2012994 m!2445377))

(assert (=> b!2012998 m!2445283))

(assert (=> b!2012995 m!2445283))

(declare-fun m!2446003 () Bool)

(assert (=> b!2013001 m!2446003))

(assert (=> b!2012992 m!2445283))

(assert (=> b!2012992 m!2445283))

(declare-fun m!2446005 () Bool)

(assert (=> b!2012992 m!2446005))

(assert (=> b!2012992 m!2445375))

(assert (=> b!2012992 m!2446005))

(assert (=> b!2012992 m!2445375))

(declare-fun m!2446007 () Bool)

(assert (=> b!2012992 m!2446007))

(assert (=> d!614584 m!2445385))

(declare-fun m!2446009 () Bool)

(assert (=> d!614584 m!2446009))

(assert (=> bm!123145 m!2445385))

(assert (=> b!2012996 m!2445375))

(assert (=> b!2012996 m!2445375))

(assert (=> b!2012996 m!2445377))

(assert (=> b!2012379 d!614584))

(declare-fun d!614586 () Bool)

(assert (=> d!614586 (= (get!6997 lt!755617) (v!26873 lt!755617))))

(assert (=> b!2012379 d!614586))

(declare-fun d!614588 () Bool)

(declare-fun lt!755801 () Bool)

(assert (=> d!614588 (= lt!755801 (select (content!3244 rules!3198) (rule!6197 (h!27510 tokens!598))))))

(declare-fun e!1271987 () Bool)

(assert (=> d!614588 (= lt!755801 e!1271987)))

(declare-fun res!882939 () Bool)

(assert (=> d!614588 (=> (not res!882939) (not e!1271987))))

(assert (=> d!614588 (= res!882939 ((_ is Cons!22108) rules!3198))))

(assert (=> d!614588 (= (contains!4051 rules!3198 (rule!6197 (h!27510 tokens!598))) lt!755801)))

(declare-fun b!2013014 () Bool)

(declare-fun e!1271988 () Bool)

(assert (=> b!2013014 (= e!1271987 e!1271988)))

(declare-fun res!882938 () Bool)

(assert (=> b!2013014 (=> res!882938 e!1271988)))

(assert (=> b!2013014 (= res!882938 (= (h!27509 rules!3198) (rule!6197 (h!27510 tokens!598))))))

(declare-fun b!2013015 () Bool)

(assert (=> b!2013015 (= e!1271988 (contains!4051 (t!187909 rules!3198) (rule!6197 (h!27510 tokens!598))))))

(assert (= (and d!614588 res!882939) b!2013014))

(assert (= (and b!2013014 (not res!882938)) b!2013015))

(assert (=> d!614588 m!2445485))

(declare-fun m!2446011 () Bool)

(assert (=> d!614588 m!2446011))

(declare-fun m!2446013 () Bool)

(assert (=> b!2013015 m!2446013))

(assert (=> b!2012389 d!614588))

(declare-fun b!2013016 () Bool)

(declare-fun e!1271990 () Bool)

(assert (=> b!2013016 (= e!1271990 (inv!17 (value!124736 separatorToken!354)))))

(declare-fun b!2013017 () Bool)

(declare-fun e!1271989 () Bool)

(assert (=> b!2013017 (= e!1271989 (inv!16 (value!124736 separatorToken!354)))))

(declare-fun b!2013018 () Bool)

(declare-fun res!882940 () Bool)

(declare-fun e!1271991 () Bool)

(assert (=> b!2013018 (=> res!882940 e!1271991)))

(assert (=> b!2013018 (= res!882940 (not ((_ is IntegerValue!12320) (value!124736 separatorToken!354))))))

(assert (=> b!2013018 (= e!1271990 e!1271991)))

(declare-fun d!614590 () Bool)

(declare-fun c!325191 () Bool)

(assert (=> d!614590 (= c!325191 ((_ is IntegerValue!12318) (value!124736 separatorToken!354)))))

(assert (=> d!614590 (= (inv!21 (value!124736 separatorToken!354)) e!1271989)))

(declare-fun b!2013019 () Bool)

(assert (=> b!2013019 (= e!1271989 e!1271990)))

(declare-fun c!325190 () Bool)

(assert (=> b!2013019 (= c!325190 ((_ is IntegerValue!12319) (value!124736 separatorToken!354)))))

(declare-fun b!2013020 () Bool)

(assert (=> b!2013020 (= e!1271991 (inv!15 (value!124736 separatorToken!354)))))

(assert (= (and d!614590 c!325191) b!2013017))

(assert (= (and d!614590 (not c!325191)) b!2013019))

(assert (= (and b!2013019 c!325190) b!2013016))

(assert (= (and b!2013019 (not c!325190)) b!2013018))

(assert (= (and b!2013018 (not res!882940)) b!2013020))

(declare-fun m!2446021 () Bool)

(assert (=> b!2013016 m!2446021))

(declare-fun m!2446023 () Bool)

(assert (=> b!2013017 m!2446023))

(declare-fun m!2446025 () Bool)

(assert (=> b!2013020 m!2446025))

(assert (=> b!2012388 d!614590))

(declare-fun bs!419864 () Bool)

(declare-fun d!614594 () Bool)

(assert (= bs!419864 (and d!614594 b!2012370)))

(declare-fun lambda!76183 () Int)

(assert (=> bs!419864 (not (= lambda!76183 lambda!76159))))

(declare-fun bs!419865 () Bool)

(assert (= bs!419865 (and d!614594 b!2012820)))

(assert (=> bs!419865 (= lambda!76183 lambda!76171)))

(declare-fun b!2013107 () Bool)

(declare-fun e!1272057 () Bool)

(assert (=> b!2013107 (= e!1272057 true)))

(declare-fun b!2013106 () Bool)

(declare-fun e!1272056 () Bool)

(assert (=> b!2013106 (= e!1272056 e!1272057)))

(declare-fun b!2013105 () Bool)

(declare-fun e!1272055 () Bool)

(assert (=> b!2013105 (= e!1272055 e!1272056)))

(assert (=> d!614594 e!1272055))

(assert (= b!2013106 b!2013107))

(assert (= b!2013105 b!2013106))

(assert (= (and d!614594 ((_ is Cons!22108) rules!3198)) b!2013105))

(assert (=> b!2013107 (< (dynLambda!10911 order!14063 (toValue!5639 (transformation!3970 (h!27509 rules!3198)))) (dynLambda!10912 order!14065 lambda!76183))))

(assert (=> b!2013107 (< (dynLambda!10913 order!14067 (toChars!5498 (transformation!3970 (h!27509 rules!3198)))) (dynLambda!10912 order!14065 lambda!76183))))

(assert (=> d!614594 true))

(declare-fun lt!755814 () Bool)

(assert (=> d!614594 (= lt!755814 (forall!4698 tokens!598 lambda!76183))))

(declare-fun e!1272053 () Bool)

(assert (=> d!614594 (= lt!755814 e!1272053)))

(declare-fun res!882965 () Bool)

(assert (=> d!614594 (=> res!882965 e!1272053)))

(assert (=> d!614594 (= res!882965 (not ((_ is Cons!22109) tokens!598)))))

(assert (=> d!614594 (not (isEmpty!13718 rules!3198))))

(assert (=> d!614594 (= (rulesProduceEachTokenIndividuallyList!1314 thiss!23328 rules!3198 tokens!598) lt!755814)))

(declare-fun b!2013103 () Bool)

(declare-fun e!1272054 () Bool)

(assert (=> b!2013103 (= e!1272053 e!1272054)))

(declare-fun res!882964 () Bool)

(assert (=> b!2013103 (=> (not res!882964) (not e!1272054))))

(assert (=> b!2013103 (= res!882964 (rulesProduceIndividualToken!1755 thiss!23328 rules!3198 (h!27510 tokens!598)))))

(declare-fun b!2013104 () Bool)

(assert (=> b!2013104 (= e!1272054 (rulesProduceEachTokenIndividuallyList!1314 thiss!23328 rules!3198 (t!187910 tokens!598)))))

(assert (= (and d!614594 (not res!882965)) b!2013103))

(assert (= (and b!2013103 res!882964) b!2013104))

(declare-fun m!2446087 () Bool)

(assert (=> d!614594 m!2446087))

(assert (=> d!614594 m!2445263))

(declare-fun m!2446089 () Bool)

(assert (=> b!2013103 m!2446089))

(declare-fun m!2446091 () Bool)

(assert (=> b!2013104 m!2446091))

(assert (=> b!2012377 d!614594))

(declare-fun b!2013121 () Bool)

(declare-fun e!1272060 () Bool)

(declare-fun tp!600207 () Bool)

(declare-fun tp!600208 () Bool)

(assert (=> b!2013121 (= e!1272060 (and tp!600207 tp!600208))))

(declare-fun b!2013118 () Bool)

(declare-fun tp_is_empty!9193 () Bool)

(assert (=> b!2013118 (= e!1272060 tp_is_empty!9193)))

(assert (=> b!2012395 (= tp!600125 e!1272060)))

(declare-fun b!2013120 () Bool)

(declare-fun tp!600211 () Bool)

(assert (=> b!2013120 (= e!1272060 tp!600211)))

(declare-fun b!2013119 () Bool)

(declare-fun tp!600209 () Bool)

(declare-fun tp!600210 () Bool)

(assert (=> b!2013119 (= e!1272060 (and tp!600209 tp!600210))))

(assert (= (and b!2012395 ((_ is ElementMatch!5395) (regex!3970 (h!27509 rules!3198)))) b!2013118))

(assert (= (and b!2012395 ((_ is Concat!9502) (regex!3970 (h!27509 rules!3198)))) b!2013119))

(assert (= (and b!2012395 ((_ is Star!5395) (regex!3970 (h!27509 rules!3198)))) b!2013120))

(assert (= (and b!2012395 ((_ is Union!5395) (regex!3970 (h!27509 rules!3198)))) b!2013121))

(declare-fun b!2013135 () Bool)

(declare-fun b_free!56189 () Bool)

(declare-fun b_next!56893 () Bool)

(assert (=> b!2013135 (= b_free!56189 (not b_next!56893))))

(declare-fun t!188002 () Bool)

(declare-fun tb!125925 () Bool)

(assert (=> (and b!2013135 (= (toValue!5639 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!188002) tb!125925))

(declare-fun result!150888 () Bool)

(assert (= result!150888 result!150842))

(assert (=> d!614538 t!188002))

(assert (=> d!614542 t!188002))

(declare-fun t!188004 () Bool)

(declare-fun tb!125927 () Bool)

(assert (=> (and b!2013135 (= (toValue!5639 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!188004) tb!125927))

(declare-fun result!150890 () Bool)

(assert (= result!150890 result!150850))

(assert (=> d!614542 t!188004))

(declare-fun b_and!159313 () Bool)

(declare-fun tp!600223 () Bool)

(assert (=> b!2013135 (= tp!600223 (and (=> t!188002 result!150888) (=> t!188004 result!150890) b_and!159313))))

(declare-fun b_free!56191 () Bool)

(declare-fun b_next!56895 () Bool)

(assert (=> b!2013135 (= b_free!56191 (not b_next!56895))))

(declare-fun tb!125929 () Bool)

(declare-fun t!188006 () Bool)

(assert (=> (and b!2013135 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354)))) t!188006) tb!125929))

(declare-fun result!150892 () Bool)

(assert (= result!150892 result!150788))

(assert (=> d!614550 t!188006))

(declare-fun t!188008 () Bool)

(declare-fun tb!125931 () Bool)

(assert (=> (and b!2013135 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!188008) tb!125931))

(declare-fun result!150894 () Bool)

(assert (= result!150894 result!150836))

(assert (=> d!614538 t!188008))

(declare-fun t!188010 () Bool)

(declare-fun tb!125933 () Bool)

(assert (=> (and b!2013135 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!188010) tb!125933))

(declare-fun result!150896 () Bool)

(assert (= result!150896 result!150796))

(assert (=> b!2012619 t!188010))

(assert (=> d!614544 t!188010))

(assert (=> b!2012505 t!188006))

(declare-fun tp!600225 () Bool)

(declare-fun b_and!159315 () Bool)

(assert (=> b!2013135 (= tp!600225 (and (=> t!188008 result!150894) (=> t!188006 result!150892) (=> t!188010 result!150896) b_and!159315))))

(declare-fun e!1272074 () Bool)

(declare-fun b!2013134 () Bool)

(declare-fun tp!600222 () Bool)

(declare-fun e!1272075 () Bool)

(assert (=> b!2013134 (= e!1272074 (and tp!600222 (inv!29269 (tag!4440 (rule!6197 (h!27510 (t!187910 tokens!598))))) (inv!29273 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) e!1272075))))

(declare-fun e!1272078 () Bool)

(assert (=> b!2012373 (= tp!600122 e!1272078)))

(assert (=> b!2013135 (= e!1272075 (and tp!600223 tp!600225))))

(declare-fun b!2013132 () Bool)

(declare-fun e!1272073 () Bool)

(declare-fun tp!600226 () Bool)

(assert (=> b!2013132 (= e!1272078 (and (inv!29272 (h!27510 (t!187910 tokens!598))) e!1272073 tp!600226))))

(declare-fun b!2013133 () Bool)

(declare-fun tp!600224 () Bool)

(assert (=> b!2013133 (= e!1272073 (and (inv!21 (value!124736 (h!27510 (t!187910 tokens!598)))) e!1272074 tp!600224))))

(assert (= b!2013134 b!2013135))

(assert (= b!2013133 b!2013134))

(assert (= b!2013132 b!2013133))

(assert (= (and b!2012373 ((_ is Cons!22109) (t!187910 tokens!598))) b!2013132))

(declare-fun m!2446093 () Bool)

(assert (=> b!2013134 m!2446093))

(declare-fun m!2446095 () Bool)

(assert (=> b!2013134 m!2446095))

(declare-fun m!2446097 () Bool)

(assert (=> b!2013132 m!2446097))

(declare-fun m!2446099 () Bool)

(assert (=> b!2013133 m!2446099))

(declare-fun b!2013139 () Bool)

(declare-fun e!1272079 () Bool)

(declare-fun tp!600227 () Bool)

(declare-fun tp!600228 () Bool)

(assert (=> b!2013139 (= e!1272079 (and tp!600227 tp!600228))))

(declare-fun b!2013136 () Bool)

(assert (=> b!2013136 (= e!1272079 tp_is_empty!9193)))

(assert (=> b!2012394 (= tp!600126 e!1272079)))

(declare-fun b!2013138 () Bool)

(declare-fun tp!600231 () Bool)

(assert (=> b!2013138 (= e!1272079 tp!600231)))

(declare-fun b!2013137 () Bool)

(declare-fun tp!600229 () Bool)

(declare-fun tp!600230 () Bool)

(assert (=> b!2013137 (= e!1272079 (and tp!600229 tp!600230))))

(assert (= (and b!2012394 ((_ is ElementMatch!5395) (regex!3970 (rule!6197 (h!27510 tokens!598))))) b!2013136))

(assert (= (and b!2012394 ((_ is Concat!9502) (regex!3970 (rule!6197 (h!27510 tokens!598))))) b!2013137))

(assert (= (and b!2012394 ((_ is Star!5395) (regex!3970 (rule!6197 (h!27510 tokens!598))))) b!2013138))

(assert (= (and b!2012394 ((_ is Union!5395) (regex!3970 (rule!6197 (h!27510 tokens!598))))) b!2013139))

(declare-fun b!2013143 () Bool)

(declare-fun e!1272080 () Bool)

(declare-fun tp!600232 () Bool)

(declare-fun tp!600233 () Bool)

(assert (=> b!2013143 (= e!1272080 (and tp!600232 tp!600233))))

(declare-fun b!2013140 () Bool)

(assert (=> b!2013140 (= e!1272080 tp_is_empty!9193)))

(assert (=> b!2012398 (= tp!600123 e!1272080)))

(declare-fun b!2013142 () Bool)

(declare-fun tp!600236 () Bool)

(assert (=> b!2013142 (= e!1272080 tp!600236)))

(declare-fun b!2013141 () Bool)

(declare-fun tp!600234 () Bool)

(declare-fun tp!600235 () Bool)

(assert (=> b!2013141 (= e!1272080 (and tp!600234 tp!600235))))

(assert (= (and b!2012398 ((_ is ElementMatch!5395) (regex!3970 (rule!6197 separatorToken!354)))) b!2013140))

(assert (= (and b!2012398 ((_ is Concat!9502) (regex!3970 (rule!6197 separatorToken!354)))) b!2013141))

(assert (= (and b!2012398 ((_ is Star!5395) (regex!3970 (rule!6197 separatorToken!354)))) b!2013142))

(assert (= (and b!2012398 ((_ is Union!5395) (regex!3970 (rule!6197 separatorToken!354)))) b!2013143))

(declare-fun b!2013154 () Bool)

(declare-fun b_free!56193 () Bool)

(declare-fun b_next!56897 () Bool)

(assert (=> b!2013154 (= b_free!56193 (not b_next!56897))))

(declare-fun tb!125935 () Bool)

(declare-fun t!188012 () Bool)

(assert (=> (and b!2013154 (= (toValue!5639 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!188012) tb!125935))

(declare-fun result!150900 () Bool)

(assert (= result!150900 result!150842))

(assert (=> d!614538 t!188012))

(assert (=> d!614542 t!188012))

(declare-fun tb!125937 () Bool)

(declare-fun t!188014 () Bool)

(assert (=> (and b!2013154 (= (toValue!5639 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!188014) tb!125937))

(declare-fun result!150902 () Bool)

(assert (= result!150902 result!150850))

(assert (=> d!614542 t!188014))

(declare-fun tp!600246 () Bool)

(declare-fun b_and!159317 () Bool)

(assert (=> b!2013154 (= tp!600246 (and (=> t!188012 result!150900) (=> t!188014 result!150902) b_and!159317))))

(declare-fun b_free!56195 () Bool)

(declare-fun b_next!56899 () Bool)

(assert (=> b!2013154 (= b_free!56195 (not b_next!56899))))

(declare-fun t!188016 () Bool)

(declare-fun tb!125939 () Bool)

(assert (=> (and b!2013154 (= (toChars!5498 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354)))) t!188016) tb!125939))

(declare-fun result!150904 () Bool)

(assert (= result!150904 result!150788))

(assert (=> d!614550 t!188016))

(declare-fun t!188018 () Bool)

(declare-fun tb!125941 () Bool)

(assert (=> (and b!2013154 (= (toChars!5498 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!188018) tb!125941))

(declare-fun result!150906 () Bool)

(assert (= result!150906 result!150836))

(assert (=> d!614538 t!188018))

(declare-fun tb!125943 () Bool)

(declare-fun t!188020 () Bool)

(assert (=> (and b!2013154 (= (toChars!5498 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598))))) t!188020) tb!125943))

(declare-fun result!150908 () Bool)

(assert (= result!150908 result!150796))

(assert (=> b!2012619 t!188020))

(assert (=> d!614544 t!188020))

(assert (=> b!2012505 t!188016))

(declare-fun b_and!159319 () Bool)

(declare-fun tp!600245 () Bool)

(assert (=> b!2013154 (= tp!600245 (and (=> t!188018 result!150906) (=> t!188020 result!150908) (=> t!188016 result!150904) b_and!159319))))

(declare-fun e!1272091 () Bool)

(assert (=> b!2013154 (= e!1272091 (and tp!600246 tp!600245))))

(declare-fun b!2013153 () Bool)

(declare-fun tp!600248 () Bool)

(declare-fun e!1272089 () Bool)

(assert (=> b!2013153 (= e!1272089 (and tp!600248 (inv!29269 (tag!4440 (h!27509 (t!187909 rules!3198)))) (inv!29273 (transformation!3970 (h!27509 (t!187909 rules!3198)))) e!1272091))))

(declare-fun b!2013152 () Bool)

(declare-fun e!1272090 () Bool)

(declare-fun tp!600247 () Bool)

(assert (=> b!2013152 (= e!1272090 (and e!1272089 tp!600247))))

(assert (=> b!2012397 (= tp!600121 e!1272090)))

(assert (= b!2013153 b!2013154))

(assert (= b!2013152 b!2013153))

(assert (= (and b!2012397 ((_ is Cons!22108) (t!187909 rules!3198))) b!2013152))

(declare-fun m!2446101 () Bool)

(assert (=> b!2013153 m!2446101))

(declare-fun m!2446103 () Bool)

(assert (=> b!2013153 m!2446103))

(declare-fun b!2013159 () Bool)

(declare-fun e!1272095 () Bool)

(declare-fun tp!600251 () Bool)

(assert (=> b!2013159 (= e!1272095 (and tp_is_empty!9193 tp!600251))))

(assert (=> b!2012396 (= tp!600119 e!1272095)))

(assert (= (and b!2012396 ((_ is Cons!22106) (originalCharacters!4777 (h!27510 tokens!598)))) b!2013159))

(declare-fun b!2013160 () Bool)

(declare-fun e!1272096 () Bool)

(declare-fun tp!600252 () Bool)

(assert (=> b!2013160 (= e!1272096 (and tp_is_empty!9193 tp!600252))))

(assert (=> b!2012388 (= tp!600118 e!1272096)))

(assert (= (and b!2012388 ((_ is Cons!22106) (originalCharacters!4777 separatorToken!354))) b!2013160))

(declare-fun b_lambda!67331 () Bool)

(assert (= b_lambda!67301 (or (and b!2013154 b_free!56193 (= (toValue!5639 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2013135 b_free!56189 (= (toValue!5639 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012393 b_free!56177) (and b!2012384 b_free!56173 (= (toValue!5639 (transformation!3970 (rule!6197 separatorToken!354))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012392 b_free!56169 (= (toValue!5639 (transformation!3970 (h!27509 rules!3198))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) b_lambda!67331)))

(declare-fun b_lambda!67333 () Bool)

(assert (= b_lambda!67283 (or (and b!2013135 b_free!56191 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012384 b_free!56175 (= (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2013154 b_free!56195 (= (toChars!5498 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012392 b_free!56171 (= (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012393 b_free!56179) b_lambda!67333)))

(declare-fun b_lambda!67335 () Bool)

(assert (= b_lambda!67281 (or (and b!2013154 b_free!56195 (= (toChars!5498 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))))) (and b!2012392 b_free!56171 (= (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))))) (and b!2012384 b_free!56175) (and b!2013135 b_free!56191 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))))) (and b!2012393 b_free!56179 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))))) b_lambda!67335)))

(declare-fun b_lambda!67337 () Bool)

(assert (= b_lambda!67279 (or b!2012370 b_lambda!67337)))

(declare-fun bs!419866 () Bool)

(declare-fun d!614614 () Bool)

(assert (= bs!419866 (and d!614614 b!2012370)))

(assert (=> bs!419866 (= (dynLambda!10905 lambda!76159 (h!27510 tokens!598)) (not (isSeparator!3970 (rule!6197 (h!27510 tokens!598)))))))

(assert (=> b!2012499 d!614614))

(declare-fun b_lambda!67339 () Bool)

(assert (= b_lambda!67303 (or (and b!2013154 b_free!56193 (= (toValue!5639 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2013135 b_free!56189 (= (toValue!5639 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012393 b_free!56177) (and b!2012384 b_free!56173 (= (toValue!5639 (transformation!3970 (rule!6197 separatorToken!354))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012392 b_free!56169 (= (toValue!5639 (transformation!3970 (h!27509 rules!3198))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) b_lambda!67339)))

(declare-fun b_lambda!67341 () Bool)

(assert (= b_lambda!67299 (or (and b!2013154 b_free!56193 (= (toValue!5639 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2013135 b_free!56189 (= (toValue!5639 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012393 b_free!56177) (and b!2012384 b_free!56173 (= (toValue!5639 (transformation!3970 (rule!6197 separatorToken!354))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012392 b_free!56169 (= (toValue!5639 (transformation!3970 (h!27509 rules!3198))) (toValue!5639 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) b_lambda!67341)))

(declare-fun b_lambda!67343 () Bool)

(assert (= b_lambda!67305 (or (and b!2013135 b_free!56191 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012384 b_free!56175 (= (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2013154 b_free!56195 (= (toChars!5498 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012392 b_free!56171 (= (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012393 b_free!56179) b_lambda!67343)))

(declare-fun b_lambda!67345 () Bool)

(assert (= b_lambda!67307 (or (and b!2013154 b_free!56195 (= (toChars!5498 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))))) (and b!2012392 b_free!56171 (= (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))))) (and b!2012384 b_free!56175) (and b!2013135 b_free!56191 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))))) (and b!2012393 b_free!56179 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))) (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))))) b_lambda!67345)))

(declare-fun b_lambda!67347 () Bool)

(assert (= b_lambda!67297 (or (and b!2013135 b_free!56191 (= (toChars!5498 (transformation!3970 (rule!6197 (h!27510 (t!187910 tokens!598))))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012384 b_free!56175 (= (toChars!5498 (transformation!3970 (rule!6197 separatorToken!354))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2013154 b_free!56195 (= (toChars!5498 (transformation!3970 (h!27509 (t!187909 rules!3198)))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012392 b_free!56171 (= (toChars!5498 (transformation!3970 (h!27509 rules!3198))) (toChars!5498 (transformation!3970 (rule!6197 (h!27510 tokens!598)))))) (and b!2012393 b_free!56179) b_lambda!67347)))

(check-sat (not b!2012846) (not tb!125899) (not bm!123120) (not b_next!56897) (not d!614452) (not b!2012594) (not b!2012893) (not d!614594) (not b!2012877) (not d!614540) (not b!2012910) (not b!2012990) (not b_lambda!67343) (not b!2012589) (not b!2012852) (not b!2012829) (not d!614456) (not b!2012816) (not b_next!56881) (not b_next!56899) (not d!614528) (not b_next!56883) (not d!614588) (not d!614530) (not b!2012664) (not b!2013143) (not b!2012661) (not b!2012602) (not d!614544) (not b!2012487) tp_is_empty!9193 (not b!2013138) b_and!159319 (not d!614552) (not d!614460) (not b!2012883) (not b!2012628) (not b!2013139) (not b!2012481) (not b!2012506) (not b!2012654) b_and!159289 (not b_lambda!67341) (not b!2012611) (not b!2012888) (not b!2012650) (not bm!123145) (not b!2013017) (not d!614526) (not tb!125851) (not b!2013134) (not tb!125887) (not b!2012485) (not b_next!56877) (not d!614474) (not tb!125845) (not b!2012619) b_and!159315 (not b!2013160) b_and!159313 (not d!614472) (not d!614584) (not b!2012655) (not b!2012618) (not d!614422) (not b!2013020) (not b!2012857) (not d!614542) (not b!2012656) (not b!2013137) (not d!614476) (not b!2012899) (not b!2012994) (not b!2013119) (not d!614464) (not b!2012882) (not b_next!56875) (not b!2012996) (not d!614548) b_and!159275 (not b!2012885) (not d!614538) (not b!2012651) (not b!2012610) (not b!2012653) (not b!2012608) (not b!2012991) (not b!2013121) b_and!159317 (not bm!123083) (not b_lambda!67333) (not b_lambda!67335) (not bm!123093) (not b!2012848) (not b!2012627) (not b!2012658) (not b!2012662) (not b!2012914) (not d!614420) (not b!2012660) (not b!2013153) (not b_lambda!67339) (not b!2012528) (not b!2012590) (not b!2012851) (not bm!123119) (not b!2012867) (not b!2013133) (not b!2012911) (not b!2012490) (not b!2012647) (not b!2012859) (not bm!123095) (not b!2012989) (not b!2013016) (not b_lambda!67345) (not b!2012622) (not d!614478) (not b!2012511) (not b_lambda!67337) (not tb!125893) (not b!2012621) (not b!2013132) (not b!2012995) (not d!614442) (not d!614532) (not b_next!56893) (not b_lambda!67331) b_and!159279 (not b!2013141) (not b_next!56873) (not b!2013142) (not b_lambda!67347) (not bm!123094) (not b_next!56879) (not d!614534) (not b!2012879) (not b!2012483) (not bm!123099) (not b!2012663) (not d!614428) (not b!2012992) (not d!614546) (not b!2012527) (not b!2013120) (not b!2013103) (not b!2012813) (not b!2012878) (not b!2012500) (not b!2012854) (not b!2012659) (not b!2013105) (not bm!123115) (not b!2012595) (not b!2012860) (not b!2013159) (not d!614450) (not bm!123100) (not b!2012820) (not b!2013104) (not d!614470) (not bm!123118) (not d!614568) (not d!614466) (not b!2012620) (not b!2013015) (not b!2012818) (not d!614558) (not b!2012615) (not d!614536) (not d!614426) (not b!2012898) (not b!2012881) (not d!614454) (not b!2012998) (not b!2013001) b_and!159287 (not d!614550) b_and!159277 (not b!2013152) (not bm!123117) (not b!2012649) (not b!2012505) (not d!614458) b_and!159291 (not b!2012484) (not b_next!56895) (not b!2012652))
(check-sat (not b_next!56897) (not b_next!56883) b_and!159319 b_and!159289 (not b_next!56877) b_and!159317 (not b_next!56899) (not b_next!56881) b_and!159313 b_and!159315 (not b_next!56875) b_and!159275 (not b_next!56893) b_and!159279 (not b_next!56873) (not b_next!56879) b_and!159287 b_and!159277 (not b_next!56895) b_and!159291)
