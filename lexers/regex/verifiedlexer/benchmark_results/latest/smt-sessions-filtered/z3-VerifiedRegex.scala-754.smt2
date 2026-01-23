; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41238 () Bool)

(assert start!41238)

(declare-fun b!437683 () Bool)

(declare-fun b_free!12209 () Bool)

(declare-fun b_next!12209 () Bool)

(assert (=> b!437683 (= b_free!12209 (not b_next!12209))))

(declare-fun tp!123985 () Bool)

(declare-fun b_and!47213 () Bool)

(assert (=> b!437683 (= tp!123985 b_and!47213)))

(declare-fun b_free!12211 () Bool)

(declare-fun b_next!12211 () Bool)

(assert (=> b!437683 (= b_free!12211 (not b_next!12211))))

(declare-fun tp!123987 () Bool)

(declare-fun b_and!47215 () Bool)

(assert (=> b!437683 (= tp!123987 b_and!47215)))

(declare-fun b!437674 () Bool)

(declare-fun b_free!12213 () Bool)

(declare-fun b_next!12213 () Bool)

(assert (=> b!437674 (= b_free!12213 (not b_next!12213))))

(declare-fun tp!123988 () Bool)

(declare-fun b_and!47217 () Bool)

(assert (=> b!437674 (= tp!123988 b_and!47217)))

(declare-fun b_free!12215 () Bool)

(declare-fun b_next!12215 () Bool)

(assert (=> b!437674 (= b_free!12215 (not b_next!12215))))

(declare-fun tp!123990 () Bool)

(declare-fun b_and!47219 () Bool)

(assert (=> b!437674 (= tp!123990 b_and!47219)))

(declare-fun b!437666 () Bool)

(declare-fun b_free!12217 () Bool)

(declare-fun b_next!12217 () Bool)

(assert (=> b!437666 (= b_free!12217 (not b_next!12217))))

(declare-fun tp!123992 () Bool)

(declare-fun b_and!47221 () Bool)

(assert (=> b!437666 (= tp!123992 b_and!47221)))

(declare-fun b_free!12219 () Bool)

(declare-fun b_next!12219 () Bool)

(assert (=> b!437666 (= b_free!12219 (not b_next!12219))))

(declare-fun tp!123989 () Bool)

(declare-fun b_and!47223 () Bool)

(assert (=> b!437666 (= tp!123989 b_and!47223)))

(declare-fun bs!54090 () Bool)

(declare-fun b!437660 () Bool)

(declare-fun b!437675 () Bool)

(assert (= bs!54090 (and b!437660 b!437675)))

(declare-fun lambda!12696 () Int)

(declare-fun lambda!12695 () Int)

(assert (=> bs!54090 (not (= lambda!12696 lambda!12695))))

(declare-fun b!437712 () Bool)

(declare-fun e!267328 () Bool)

(assert (=> b!437712 (= e!267328 true)))

(declare-fun b!437711 () Bool)

(declare-fun e!267327 () Bool)

(assert (=> b!437711 (= e!267327 e!267328)))

(declare-fun b!437710 () Bool)

(declare-fun e!267326 () Bool)

(assert (=> b!437710 (= e!267326 e!267327)))

(assert (=> b!437660 e!267326))

(assert (= b!437711 b!437712))

(assert (= b!437710 b!437711))

(declare-datatypes ((List!4306 0))(
  ( (Nil!4296) (Cons!4296 (h!9693 (_ BitVec 16)) (t!69320 List!4306)) )
))
(declare-datatypes ((TokenValue!853 0))(
  ( (FloatLiteralValue!1706 (text!6416 List!4306)) (TokenValueExt!852 (__x!3193 Int)) (Broken!4265 (value!27973 List!4306)) (Object!862) (End!853) (Def!853) (Underscore!853) (Match!853) (Else!853) (Error!853) (Case!853) (If!853) (Extends!853) (Abstract!853) (Class!853) (Val!853) (DelimiterValue!1706 (del!913 List!4306)) (KeywordValue!859 (value!27974 List!4306)) (CommentValue!1706 (value!27975 List!4306)) (WhitespaceValue!1706 (value!27976 List!4306)) (IndentationValue!853 (value!27977 List!4306)) (String!5344) (Int32!853) (Broken!4266 (value!27978 List!4306)) (Boolean!854) (Unit!7570) (OperatorValue!856 (op!913 List!4306)) (IdentifierValue!1706 (value!27979 List!4306)) (IdentifierValue!1707 (value!27980 List!4306)) (WhitespaceValue!1707 (value!27981 List!4306)) (True!1706) (False!1706) (Broken!4267 (value!27982 List!4306)) (Broken!4268 (value!27983 List!4306)) (True!1707) (RightBrace!853) (RightBracket!853) (Colon!853) (Null!853) (Comma!853) (LeftBracket!853) (False!1707) (LeftBrace!853) (ImaginaryLiteralValue!853 (text!6417 List!4306)) (StringLiteralValue!2559 (value!27984 List!4306)) (EOFValue!853 (value!27985 List!4306)) (IdentValue!853 (value!27986 List!4306)) (DelimiterValue!1707 (value!27987 List!4306)) (DedentValue!853 (value!27988 List!4306)) (NewLineValue!853 (value!27989 List!4306)) (IntegerValue!2559 (value!27990 (_ BitVec 32)) (text!6418 List!4306)) (IntegerValue!2560 (value!27991 Int) (text!6419 List!4306)) (Times!853) (Or!853) (Equal!853) (Minus!853) (Broken!4269 (value!27992 List!4306)) (And!853) (Div!853) (LessEqual!853) (Mod!853) (Concat!1908) (Not!853) (Plus!853) (SpaceValue!853 (value!27993 List!4306)) (IntegerValue!2561 (value!27994 Int) (text!6420 List!4306)) (StringLiteralValue!2560 (text!6421 List!4306)) (FloatLiteralValue!1707 (text!6422 List!4306)) (BytesLiteralValue!853 (value!27995 List!4306)) (CommentValue!1707 (value!27996 List!4306)) (StringLiteralValue!2561 (value!27997 List!4306)) (ErrorTokenValue!853 (msg!914 List!4306)) )
))
(declare-datatypes ((C!3032 0))(
  ( (C!3033 (val!1402 Int)) )
))
(declare-datatypes ((List!4307 0))(
  ( (Nil!4297) (Cons!4297 (h!9694 C!3032) (t!69321 List!4307)) )
))
(declare-datatypes ((IArray!2969 0))(
  ( (IArray!2970 (innerList!1542 List!4307)) )
))
(declare-datatypes ((Conc!1484 0))(
  ( (Node!1484 (left!3602 Conc!1484) (right!3932 Conc!1484) (csize!3198 Int) (cheight!1695 Int)) (Leaf!2239 (xs!4115 IArray!2969) (csize!3199 Int)) (Empty!1484) )
))
(declare-datatypes ((BalanceConc!2976 0))(
  ( (BalanceConc!2977 (c!88684 Conc!1484)) )
))
(declare-datatypes ((TokenValueInjection!1478 0))(
  ( (TokenValueInjection!1479 (toValue!1638 Int) (toChars!1497 Int)) )
))
(declare-datatypes ((String!5345 0))(
  ( (String!5346 (value!27998 String)) )
))
(declare-datatypes ((Regex!1055 0))(
  ( (ElementMatch!1055 (c!88685 C!3032)) (Concat!1909 (regOne!2622 Regex!1055) (regTwo!2622 Regex!1055)) (EmptyExpr!1055) (Star!1055 (reg!1384 Regex!1055)) (EmptyLang!1055) (Union!1055 (regOne!2623 Regex!1055) (regTwo!2623 Regex!1055)) )
))
(declare-datatypes ((Rule!1462 0))(
  ( (Rule!1463 (regex!831 Regex!1055) (tag!1081 String!5345) (isSeparator!831 Bool) (transformation!831 TokenValueInjection!1478)) )
))
(declare-datatypes ((List!4308 0))(
  ( (Nil!4298) (Cons!4298 (h!9695 Rule!1462) (t!69322 List!4308)) )
))
(declare-fun rules!1920 () List!4308)

(get-info :version)

(assert (= (and b!437660 ((_ is Cons!4298) rules!1920)) b!437710))

(declare-fun order!3723 () Int)

(declare-fun order!3721 () Int)

(declare-fun dynLambda!2554 (Int Int) Int)

(declare-fun dynLambda!2555 (Int Int) Int)

(assert (=> b!437712 (< (dynLambda!2554 order!3721 (toValue!1638 (transformation!831 (h!9695 rules!1920)))) (dynLambda!2555 order!3723 lambda!12696))))

(declare-fun order!3725 () Int)

(declare-fun dynLambda!2556 (Int Int) Int)

(assert (=> b!437712 (< (dynLambda!2556 order!3725 (toChars!1497 (transformation!831 (h!9695 rules!1920)))) (dynLambda!2555 order!3723 lambda!12696))))

(assert (=> b!437660 true))

(declare-fun b!437648 () Bool)

(declare-datatypes ((Unit!7571 0))(
  ( (Unit!7572) )
))
(declare-fun e!267310 () Unit!7571)

(declare-fun Unit!7573 () Unit!7571)

(assert (=> b!437648 (= e!267310 Unit!7573)))

(declare-fun b!437650 () Bool)

(declare-fun e!267295 () Bool)

(declare-fun e!267301 () Bool)

(assert (=> b!437650 (= e!267295 (not e!267301))))

(declare-fun res!193940 () Bool)

(assert (=> b!437650 (=> res!193940 e!267301)))

(declare-datatypes ((Token!1406 0))(
  ( (Token!1407 (value!27999 TokenValue!853) (rule!1506 Rule!1462) (size!3522 Int) (originalCharacters!874 List!4307)) )
))
(declare-fun separatorToken!170 () Token!1406)

(declare-datatypes ((List!4309 0))(
  ( (Nil!4299) (Cons!4299 (h!9696 Token!1406) (t!69323 List!4309)) )
))
(declare-fun tokens!465 () List!4309)

(declare-fun lt!192362 () List!4307)

(declare-datatypes ((LexerInterface!717 0))(
  ( (LexerInterfaceExt!714 (__x!3194 Int)) (Lexer!715) )
))
(declare-fun thiss!17480 () LexerInterface!717)

(declare-fun list!1897 (BalanceConc!2976) List!4307)

(declare-datatypes ((IArray!2971 0))(
  ( (IArray!2972 (innerList!1543 List!4309)) )
))
(declare-datatypes ((Conc!1485 0))(
  ( (Node!1485 (left!3603 Conc!1485) (right!3933 Conc!1485) (csize!3200 Int) (cheight!1696 Int)) (Leaf!2240 (xs!4116 IArray!2971) (csize!3201 Int)) (Empty!1485) )
))
(declare-datatypes ((BalanceConc!2978 0))(
  ( (BalanceConc!2979 (c!88686 Conc!1485)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!390 (LexerInterface!717 List!4308 BalanceConc!2978 Token!1406 Int) BalanceConc!2976)

(declare-fun seqFromList!1027 (List!4309) BalanceConc!2978)

(assert (=> b!437650 (= res!193940 (not (= lt!192362 (list!1897 (printWithSeparatorTokenWhenNeededRec!390 thiss!17480 rules!1920 (seqFromList!1027 (t!69323 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!192339 () List!4307)

(declare-fun lt!192379 () List!4307)

(assert (=> b!437650 (= lt!192339 lt!192379)))

(declare-fun lt!192372 () List!4307)

(declare-fun lt!192346 () List!4307)

(declare-fun ++!1236 (List!4307 List!4307) List!4307)

(assert (=> b!437650 (= lt!192379 (++!1236 lt!192372 lt!192346))))

(declare-fun lt!192364 () List!4307)

(assert (=> b!437650 (= lt!192339 (++!1236 (++!1236 lt!192372 lt!192364) lt!192362))))

(declare-fun lt!192344 () Unit!7571)

(declare-fun lemmaConcatAssociativity!562 (List!4307 List!4307 List!4307) Unit!7571)

(assert (=> b!437650 (= lt!192344 (lemmaConcatAssociativity!562 lt!192372 lt!192364 lt!192362))))

(declare-fun charsOf!474 (Token!1406) BalanceConc!2976)

(assert (=> b!437650 (= lt!192372 (list!1897 (charsOf!474 (h!9696 tokens!465))))))

(assert (=> b!437650 (= lt!192346 (++!1236 lt!192364 lt!192362))))

(declare-fun printWithSeparatorTokenWhenNeededList!398 (LexerInterface!717 List!4308 List!4309 Token!1406) List!4307)

(assert (=> b!437650 (= lt!192362 (printWithSeparatorTokenWhenNeededList!398 thiss!17480 rules!1920 (t!69323 tokens!465) separatorToken!170))))

(assert (=> b!437650 (= lt!192364 (list!1897 (charsOf!474 separatorToken!170)))))

(declare-fun b!437651 () Bool)

(declare-fun e!267305 () Bool)

(declare-fun matchR!373 (Regex!1055 List!4307) Bool)

(assert (=> b!437651 (= e!267305 (matchR!373 (regex!831 (rule!1506 separatorToken!170)) lt!192364))))

(declare-fun ruleValid!124 (LexerInterface!717 Rule!1462) Bool)

(assert (=> b!437651 (ruleValid!124 thiss!17480 (rule!1506 separatorToken!170))))

(declare-fun lt!192378 () Unit!7571)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!4 (LexerInterface!717 Rule!1462 List!4308) Unit!7571)

(assert (=> b!437651 (= lt!192378 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!4 thiss!17480 (rule!1506 separatorToken!170) rules!1920))))

(declare-fun e!267316 () Bool)

(declare-fun e!267290 () Bool)

(declare-fun b!437652 () Bool)

(declare-fun tp!123991 () Bool)

(declare-fun inv!5359 (String!5345) Bool)

(declare-fun inv!5362 (TokenValueInjection!1478) Bool)

(assert (=> b!437652 (= e!267316 (and tp!123991 (inv!5359 (tag!1081 (h!9695 rules!1920))) (inv!5362 (transformation!831 (h!9695 rules!1920))) e!267290))))

(declare-fun b!437653 () Bool)

(declare-fun res!193936 () Bool)

(declare-fun e!267318 () Bool)

(assert (=> b!437653 (=> res!193936 e!267318)))

(declare-fun isEmpty!3200 (BalanceConc!2978) Bool)

(declare-datatypes ((tuple2!5158 0))(
  ( (tuple2!5159 (_1!2795 BalanceConc!2978) (_2!2795 BalanceConc!2976)) )
))
(declare-fun lex!509 (LexerInterface!717 List!4308 BalanceConc!2976) tuple2!5158)

(declare-fun seqFromList!1028 (List!4307) BalanceConc!2976)

(assert (=> b!437653 (= res!193936 (isEmpty!3200 (_1!2795 (lex!509 thiss!17480 rules!1920 (seqFromList!1028 lt!192372)))))))

(declare-fun b!437654 () Bool)

(declare-fun res!193933 () Bool)

(declare-fun e!267296 () Bool)

(assert (=> b!437654 (=> (not res!193933) (not e!267296))))

(declare-fun lt!192349 () tuple2!5158)

(declare-fun lt!192360 () Token!1406)

(declare-fun apply!1068 (BalanceConc!2978 Int) Token!1406)

(assert (=> b!437654 (= res!193933 (= (apply!1068 (_1!2795 lt!192349) 0) lt!192360))))

(declare-fun b!437655 () Bool)

(declare-fun e!267280 () Bool)

(declare-fun e!267312 () Bool)

(assert (=> b!437655 (= e!267280 e!267312)))

(declare-fun res!193925 () Bool)

(assert (=> b!437655 (=> (not res!193925) (not e!267312))))

(declare-datatypes ((tuple2!5160 0))(
  ( (tuple2!5161 (_1!2796 Token!1406) (_2!2796 List!4307)) )
))
(declare-datatypes ((Option!1075 0))(
  ( (None!1074) (Some!1074 (v!15339 tuple2!5160)) )
))
(declare-fun lt!192353 () Option!1075)

(declare-fun isDefined!914 (Option!1075) Bool)

(assert (=> b!437655 (= res!193925 (isDefined!914 lt!192353))))

(declare-fun lt!192358 () List!4307)

(declare-fun maxPrefix!433 (LexerInterface!717 List!4308 List!4307) Option!1075)

(assert (=> b!437655 (= lt!192353 (maxPrefix!433 thiss!17480 rules!1920 lt!192358))))

(declare-fun b!437656 () Bool)

(declare-fun e!267297 () Bool)

(declare-fun lt!192334 () tuple2!5158)

(declare-fun isEmpty!3201 (BalanceConc!2976) Bool)

(assert (=> b!437656 (= e!267297 (isEmpty!3201 (_2!2795 lt!192334)))))

(declare-fun b!437657 () Bool)

(declare-fun get!1546 (Option!1075) tuple2!5160)

(declare-fun head!1063 (List!4309) Token!1406)

(assert (=> b!437657 (= e!267312 (= (_1!2796 (get!1546 lt!192353)) (head!1063 tokens!465)))))

(declare-fun b!437658 () Bool)

(declare-fun e!267281 () Bool)

(declare-fun e!267292 () Bool)

(assert (=> b!437658 (= e!267281 e!267292)))

(declare-fun res!193938 () Bool)

(assert (=> b!437658 (=> res!193938 e!267292)))

(declare-fun contains!938 (List!4308 Rule!1462) Bool)

(assert (=> b!437658 (= res!193938 (not (contains!938 rules!1920 (rule!1506 separatorToken!170))))))

(declare-fun lt!192335 () Unit!7571)

(assert (=> b!437658 (= lt!192335 e!267310)))

(declare-fun c!88681 () Bool)

(declare-fun lt!192341 () C!3032)

(declare-fun contains!939 (List!4307 C!3032) Bool)

(declare-fun usedCharacters!132 (Regex!1055) List!4307)

(assert (=> b!437658 (= c!88681 (contains!939 (usedCharacters!132 (regex!831 (rule!1506 separatorToken!170))) lt!192341))))

(declare-fun head!1064 (List!4307) C!3032)

(assert (=> b!437658 (= lt!192341 (head!1064 lt!192362))))

(declare-fun lt!192374 () Unit!7571)

(declare-fun e!267302 () Unit!7571)

(assert (=> b!437658 (= lt!192374 e!267302)))

(declare-fun c!88682 () Bool)

(declare-fun lt!192382 () C!3032)

(assert (=> b!437658 (= c!88682 (not (contains!939 (usedCharacters!132 (regex!831 (rule!1506 lt!192360))) lt!192382)))))

(declare-fun lt!192355 () List!4307)

(assert (=> b!437658 (= lt!192382 (head!1064 lt!192355))))

(declare-fun e!267307 () Bool)

(assert (=> b!437658 e!267307))

(declare-fun res!193911 () Bool)

(assert (=> b!437658 (=> (not res!193911) (not e!267307))))

(declare-datatypes ((Option!1076 0))(
  ( (None!1075) (Some!1075 (v!15340 Rule!1462)) )
))
(declare-fun lt!192342 () Option!1076)

(declare-fun isDefined!915 (Option!1076) Bool)

(assert (=> b!437658 (= res!193911 (isDefined!915 lt!192342))))

(declare-fun getRuleFromTag!190 (LexerInterface!717 List!4308 String!5345) Option!1076)

(assert (=> b!437658 (= lt!192342 (getRuleFromTag!190 thiss!17480 rules!1920 (tag!1081 (rule!1506 lt!192360))))))

(declare-fun lt!192350 () Unit!7571)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!190 (LexerInterface!717 List!4308 List!4307 Token!1406) Unit!7571)

(assert (=> b!437658 (= lt!192350 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!190 thiss!17480 rules!1920 lt!192355 lt!192360))))

(assert (=> b!437658 (= lt!192355 (list!1897 (charsOf!474 lt!192360)))))

(declare-fun lt!192375 () Unit!7571)

(declare-fun forallContained!384 (List!4309 Int Token!1406) Unit!7571)

(assert (=> b!437658 (= lt!192375 (forallContained!384 tokens!465 lambda!12696 lt!192360))))

(assert (=> b!437658 e!267296))

(declare-fun res!193932 () Bool)

(assert (=> b!437658 (=> (not res!193932) (not e!267296))))

(declare-fun size!3523 (BalanceConc!2978) Int)

(assert (=> b!437658 (= res!193932 (= (size!3523 (_1!2795 lt!192349)) 1))))

(declare-fun lt!192365 () BalanceConc!2976)

(assert (=> b!437658 (= lt!192349 (lex!509 thiss!17480 rules!1920 lt!192365))))

(declare-fun lt!192351 () BalanceConc!2978)

(declare-fun printTailRec!403 (LexerInterface!717 BalanceConc!2978 Int BalanceConc!2976) BalanceConc!2976)

(assert (=> b!437658 (= lt!192365 (printTailRec!403 thiss!17480 lt!192351 0 (BalanceConc!2977 Empty!1484)))))

(declare-fun print!442 (LexerInterface!717 BalanceConc!2978) BalanceConc!2976)

(assert (=> b!437658 (= lt!192365 (print!442 thiss!17480 lt!192351))))

(declare-fun singletonSeq!377 (Token!1406) BalanceConc!2978)

(assert (=> b!437658 (= lt!192351 (singletonSeq!377 lt!192360))))

(declare-fun e!267319 () Bool)

(assert (=> b!437658 e!267319))

(declare-fun res!193931 () Bool)

(assert (=> b!437658 (=> (not res!193931) (not e!267319))))

(declare-fun lt!192337 () Option!1076)

(assert (=> b!437658 (= res!193931 (isDefined!915 lt!192337))))

(assert (=> b!437658 (= lt!192337 (getRuleFromTag!190 thiss!17480 rules!1920 (tag!1081 (rule!1506 separatorToken!170))))))

(declare-fun lt!192348 () Unit!7571)

(assert (=> b!437658 (= lt!192348 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!190 thiss!17480 rules!1920 lt!192364 separatorToken!170))))

(assert (=> b!437658 e!267297))

(declare-fun res!193913 () Bool)

(assert (=> b!437658 (=> (not res!193913) (not e!267297))))

(assert (=> b!437658 (= res!193913 (= (size!3523 (_1!2795 lt!192334)) 1))))

(declare-fun lt!192333 () BalanceConc!2976)

(assert (=> b!437658 (= lt!192334 (lex!509 thiss!17480 rules!1920 lt!192333))))

(declare-fun lt!192369 () BalanceConc!2978)

(assert (=> b!437658 (= lt!192333 (printTailRec!403 thiss!17480 lt!192369 0 (BalanceConc!2977 Empty!1484)))))

(assert (=> b!437658 (= lt!192333 (print!442 thiss!17480 lt!192369))))

(assert (=> b!437658 (= lt!192369 (singletonSeq!377 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!466 (LexerInterface!717 List!4308 Token!1406) Bool)

(assert (=> b!437658 (rulesProduceIndividualToken!466 thiss!17480 rules!1920 lt!192360)))

(declare-fun lt!192352 () Unit!7571)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!180 (LexerInterface!717 List!4308 List!4309 Token!1406) Unit!7571)

(assert (=> b!437658 (= lt!192352 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!180 thiss!17480 rules!1920 tokens!465 lt!192360))))

(assert (=> b!437658 (= lt!192360 (head!1063 (t!69323 tokens!465)))))

(declare-fun lt!192359 () Unit!7571)

(declare-fun e!267294 () Unit!7571)

(assert (=> b!437658 (= lt!192359 e!267294)))

(declare-fun c!88683 () Bool)

(declare-fun isEmpty!3202 (List!4309) Bool)

(assert (=> b!437658 (= c!88683 (isEmpty!3202 (t!69323 tokens!465)))))

(declare-fun lt!192363 () Option!1075)

(assert (=> b!437658 (= lt!192363 (maxPrefix!433 thiss!17480 rules!1920 lt!192346))))

(declare-fun lt!192371 () tuple2!5160)

(assert (=> b!437658 (= lt!192346 (_2!2796 lt!192371))))

(declare-fun lt!192366 () Unit!7571)

(declare-fun lemmaSamePrefixThenSameSuffix!276 (List!4307 List!4307 List!4307 List!4307 List!4307) Unit!7571)

(assert (=> b!437658 (= lt!192366 (lemmaSamePrefixThenSameSuffix!276 lt!192372 lt!192346 lt!192372 (_2!2796 lt!192371) lt!192358))))

(assert (=> b!437658 (= lt!192371 (get!1546 (maxPrefix!433 thiss!17480 rules!1920 lt!192358)))))

(declare-fun isPrefix!491 (List!4307 List!4307) Bool)

(assert (=> b!437658 (isPrefix!491 lt!192372 lt!192379)))

(declare-fun lt!192380 () Unit!7571)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!382 (List!4307 List!4307) Unit!7571)

(assert (=> b!437658 (= lt!192380 (lemmaConcatTwoListThenFirstIsPrefix!382 lt!192372 lt!192346))))

(assert (=> b!437658 e!267280))

(declare-fun res!193929 () Bool)

(assert (=> b!437658 (=> res!193929 e!267280)))

(assert (=> b!437658 (= res!193929 (isEmpty!3202 tokens!465))))

(declare-fun lt!192377 () Unit!7571)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!238 (LexerInterface!717 List!4308 List!4309 Token!1406) Unit!7571)

(assert (=> b!437658 (= lt!192377 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!238 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!437659 () Bool)

(declare-fun e!267309 () Bool)

(declare-fun tp!123993 () Bool)

(assert (=> b!437659 (= e!267309 (and e!267316 tp!123993))))

(declare-fun e!267313 () Bool)

(assert (=> b!437660 (= e!267318 e!267313)))

(declare-fun res!193908 () Bool)

(assert (=> b!437660 (=> res!193908 e!267313)))

(declare-datatypes ((tuple2!5162 0))(
  ( (tuple2!5163 (_1!2797 Token!1406) (_2!2797 BalanceConc!2976)) )
))
(declare-datatypes ((Option!1077 0))(
  ( (None!1076) (Some!1076 (v!15341 tuple2!5162)) )
))
(declare-fun isDefined!916 (Option!1077) Bool)

(declare-fun maxPrefixZipperSequence!396 (LexerInterface!717 List!4308 BalanceConc!2976) Option!1077)

(assert (=> b!437660 (= res!193908 (not (isDefined!916 (maxPrefixZipperSequence!396 thiss!17480 rules!1920 (seqFromList!1028 (originalCharacters!874 (h!9696 tokens!465)))))))))

(declare-fun lt!192370 () Unit!7571)

(assert (=> b!437660 (= lt!192370 (forallContained!384 tokens!465 lambda!12696 (h!9696 tokens!465)))))

(assert (=> b!437660 (= lt!192372 (originalCharacters!874 (h!9696 tokens!465)))))

(declare-fun b!437661 () Bool)

(declare-fun e!267299 () Bool)

(assert (=> b!437661 (= e!267299 e!267305)))

(declare-fun res!193935 () Bool)

(assert (=> b!437661 (=> res!193935 e!267305)))

(declare-fun lt!192357 () tuple2!5160)

(assert (=> b!437661 (= res!193935 (not (= (_1!2796 lt!192357) separatorToken!170)))))

(declare-fun lt!192381 () Option!1075)

(assert (=> b!437661 (= lt!192357 (get!1546 lt!192381))))

(declare-fun e!267303 () Bool)

(declare-fun b!437662 () Bool)

(declare-fun e!267314 () Bool)

(declare-fun tp!123995 () Bool)

(declare-fun inv!5363 (Token!1406) Bool)

(assert (=> b!437662 (= e!267303 (and (inv!5363 (h!9696 tokens!465)) e!267314 tp!123995))))

(declare-fun b!437663 () Bool)

(declare-fun res!193937 () Bool)

(declare-fun e!267298 () Bool)

(assert (=> b!437663 (=> (not res!193937) (not e!267298))))

(declare-fun rulesInvariant!683 (LexerInterface!717 List!4308) Bool)

(assert (=> b!437663 (= res!193937 (rulesInvariant!683 thiss!17480 rules!1920))))

(declare-fun b!437664 () Bool)

(declare-fun res!193915 () Bool)

(assert (=> b!437664 (=> res!193915 e!267292)))

(assert (=> b!437664 (= res!193915 (isSeparator!831 (rule!1506 lt!192360)))))

(declare-fun tp!123997 () Bool)

(declare-fun b!437665 () Bool)

(declare-fun e!267311 () Bool)

(declare-fun e!267289 () Bool)

(declare-fun inv!21 (TokenValue!853) Bool)

(assert (=> b!437665 (= e!267311 (and (inv!21 (value!27999 separatorToken!170)) e!267289 tp!123997))))

(declare-fun res!193920 () Bool)

(assert (=> start!41238 (=> (not res!193920) (not e!267298))))

(assert (=> start!41238 (= res!193920 ((_ is Lexer!715) thiss!17480))))

(assert (=> start!41238 e!267298))

(assert (=> start!41238 true))

(assert (=> start!41238 e!267309))

(assert (=> start!41238 (and (inv!5363 separatorToken!170) e!267311)))

(assert (=> start!41238 e!267303))

(declare-fun b!437649 () Bool)

(declare-fun res!193922 () Bool)

(declare-fun e!267286 () Bool)

(assert (=> b!437649 (=> (not res!193922) (not e!267286))))

(assert (=> b!437649 (= res!193922 ((_ is Cons!4299) tokens!465))))

(declare-fun e!267283 () Bool)

(assert (=> b!437666 (= e!267283 (and tp!123992 tp!123989))))

(declare-fun b!437667 () Bool)

(declare-fun e!267287 () Bool)

(assert (=> b!437667 (= e!267301 e!267287)))

(declare-fun res!193914 () Bool)

(assert (=> b!437667 (=> res!193914 e!267287)))

(declare-fun e!267285 () Bool)

(assert (=> b!437667 (= res!193914 e!267285)))

(declare-fun res!193921 () Bool)

(assert (=> b!437667 (=> (not res!193921) (not e!267285))))

(declare-fun lt!192340 () Bool)

(assert (=> b!437667 (= res!193921 (not lt!192340))))

(assert (=> b!437667 (= lt!192340 (= lt!192358 lt!192379))))

(declare-fun e!267300 () Bool)

(declare-fun tp!123994 () Bool)

(declare-fun b!437668 () Bool)

(assert (=> b!437668 (= e!267289 (and tp!123994 (inv!5359 (tag!1081 (rule!1506 separatorToken!170))) (inv!5362 (transformation!831 (rule!1506 separatorToken!170))) e!267300))))

(declare-fun b!437669 () Bool)

(declare-fun res!193910 () Bool)

(assert (=> b!437669 (=> (not res!193910) (not e!267298))))

(declare-fun isEmpty!3203 (List!4308) Bool)

(assert (=> b!437669 (= res!193910 (not (isEmpty!3203 rules!1920)))))

(declare-fun b!437670 () Bool)

(declare-fun res!193923 () Bool)

(assert (=> b!437670 (=> res!193923 e!267305)))

(declare-fun isEmpty!3204 (List!4307) Bool)

(assert (=> b!437670 (= res!193923 (not (isEmpty!3204 (_2!2796 lt!192357))))))

(declare-fun b!437671 () Bool)

(assert (=> b!437671 (= e!267298 e!267286)))

(declare-fun res!193941 () Bool)

(assert (=> b!437671 (=> (not res!193941) (not e!267286))))

(declare-fun lt!192376 () BalanceConc!2978)

(declare-fun rulesProduceEachTokenIndividually!509 (LexerInterface!717 List!4308 BalanceConc!2978) Bool)

(assert (=> b!437671 (= res!193941 (rulesProduceEachTokenIndividually!509 thiss!17480 rules!1920 lt!192376))))

(assert (=> b!437671 (= lt!192376 (seqFromList!1027 tokens!465))))

(declare-fun b!437672 () Bool)

(assert (=> b!437672 (= e!267285 (not (= lt!192358 (++!1236 lt!192372 lt!192362))))))

(declare-fun b!437673 () Bool)

(declare-fun res!193934 () Bool)

(assert (=> b!437673 (=> (not res!193934) (not e!267297))))

(assert (=> b!437673 (= res!193934 (= (apply!1068 (_1!2795 lt!192334) 0) separatorToken!170))))

(assert (=> b!437674 (= e!267300 (and tp!123988 tp!123990))))

(declare-fun res!193916 () Bool)

(assert (=> b!437675 (=> (not res!193916) (not e!267286))))

(declare-fun forall!1232 (List!4309 Int) Bool)

(assert (=> b!437675 (= res!193916 (forall!1232 tokens!465 lambda!12695))))

(declare-fun b!437676 () Bool)

(declare-fun res!193939 () Bool)

(assert (=> b!437676 (=> res!193939 e!267318)))

(assert (=> b!437676 (= res!193939 (not (rulesProduceIndividualToken!466 thiss!17480 rules!1920 (h!9696 tokens!465))))))

(declare-fun b!437677 () Bool)

(declare-fun e!267317 () Bool)

(assert (=> b!437677 (= e!267317 (matchR!373 (regex!831 (rule!1506 (h!9696 tokens!465))) lt!192372))))

(declare-fun b!437678 () Bool)

(declare-fun Unit!7574 () Unit!7571)

(assert (=> b!437678 (= e!267294 Unit!7574)))

(assert (=> b!437678 false))

(declare-fun b!437679 () Bool)

(assert (=> b!437679 (= e!267296 (isEmpty!3201 (_2!2795 lt!192349)))))

(declare-fun b!437680 () Bool)

(assert (=> b!437680 (= e!267292 e!267299)))

(declare-fun res!193919 () Bool)

(assert (=> b!437680 (=> res!193919 e!267299)))

(assert (=> b!437680 (= res!193919 (not (isDefined!914 lt!192381)))))

(assert (=> b!437680 (= lt!192381 (maxPrefix!433 thiss!17480 rules!1920 lt!192364))))

(declare-fun b!437681 () Bool)

(declare-fun e!267315 () Bool)

(assert (=> b!437681 (= e!267319 e!267315)))

(declare-fun res!193918 () Bool)

(assert (=> b!437681 (=> (not res!193918) (not e!267315))))

(declare-fun lt!192368 () Rule!1462)

(assert (=> b!437681 (= res!193918 (matchR!373 (regex!831 lt!192368) lt!192364))))

(declare-fun get!1547 (Option!1076) Rule!1462)

(assert (=> b!437681 (= lt!192368 (get!1547 lt!192337))))

(declare-fun b!437682 () Bool)

(declare-fun Unit!7575 () Unit!7571)

(assert (=> b!437682 (= e!267310 Unit!7575)))

(declare-fun lt!192345 () Unit!7571)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!90 (LexerInterface!717 List!4308 List!4308 Rule!1462 Rule!1462 C!3032) Unit!7571)

(assert (=> b!437682 (= lt!192345 (lemmaSepRuleNotContainsCharContainedInANonSepRule!90 thiss!17480 rules!1920 rules!1920 (rule!1506 lt!192360) (rule!1506 separatorToken!170) lt!192341))))

(assert (=> b!437682 false))

(assert (=> b!437683 (= e!267290 (and tp!123985 tp!123987))))

(declare-fun b!437684 () Bool)

(declare-fun res!193927 () Bool)

(assert (=> b!437684 (=> (not res!193927) (not e!267286))))

(declare-fun sepAndNonSepRulesDisjointChars!420 (List!4308 List!4308) Bool)

(assert (=> b!437684 (= res!193927 (sepAndNonSepRulesDisjointChars!420 rules!1920 rules!1920))))

(declare-fun b!437685 () Bool)

(declare-fun e!267304 () Bool)

(assert (=> b!437685 (= e!267304 false)))

(declare-fun b!437686 () Bool)

(declare-fun e!267288 () Bool)

(assert (=> b!437686 (= e!267307 e!267288)))

(declare-fun res!193912 () Bool)

(assert (=> b!437686 (=> (not res!193912) (not e!267288))))

(declare-fun lt!192338 () Rule!1462)

(assert (=> b!437686 (= res!193912 (matchR!373 (regex!831 lt!192338) lt!192355))))

(assert (=> b!437686 (= lt!192338 (get!1547 lt!192342))))

(declare-fun b!437687 () Bool)

(assert (=> b!437687 (= e!267288 (= (rule!1506 lt!192360) lt!192338))))

(declare-fun b!437688 () Bool)

(declare-fun res!193930 () Bool)

(assert (=> b!437688 (=> (not res!193930) (not e!267286))))

(assert (=> b!437688 (= res!193930 (rulesProduceIndividualToken!466 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!437689 () Bool)

(assert (=> b!437689 (= e!267313 e!267281)))

(declare-fun res!193905 () Bool)

(assert (=> b!437689 (=> res!193905 e!267281)))

(assert (=> b!437689 (= res!193905 (not lt!192340))))

(assert (=> b!437689 e!267317))

(declare-fun res!193924 () Bool)

(assert (=> b!437689 (=> (not res!193924) (not e!267317))))

(declare-fun lt!192347 () tuple2!5160)

(assert (=> b!437689 (= res!193924 (= (_1!2796 lt!192347) (h!9696 tokens!465)))))

(declare-fun lt!192343 () Option!1075)

(assert (=> b!437689 (= lt!192347 (get!1546 lt!192343))))

(assert (=> b!437689 (isDefined!914 lt!192343)))

(assert (=> b!437689 (= lt!192343 (maxPrefix!433 thiss!17480 rules!1920 lt!192372))))

(declare-fun b!437690 () Bool)

(declare-fun res!193907 () Bool)

(assert (=> b!437690 (=> (not res!193907) (not e!267317))))

(assert (=> b!437690 (= res!193907 (isEmpty!3204 (_2!2796 lt!192347)))))

(declare-fun b!437691 () Bool)

(assert (=> b!437691 (= e!267287 e!267318)))

(declare-fun res!193928 () Bool)

(assert (=> b!437691 (=> res!193928 e!267318)))

(declare-fun lt!192367 () List!4307)

(declare-fun lt!192336 () List!4307)

(assert (=> b!437691 (= res!193928 (or (not (= lt!192367 lt!192336)) (not (= lt!192336 lt!192372)) (not (= lt!192367 lt!192372))))))

(declare-fun printList!391 (LexerInterface!717 List!4309) List!4307)

(assert (=> b!437691 (= lt!192336 (printList!391 thiss!17480 (Cons!4299 (h!9696 tokens!465) Nil!4299)))))

(declare-fun lt!192361 () BalanceConc!2976)

(assert (=> b!437691 (= lt!192367 (list!1897 lt!192361))))

(declare-fun lt!192373 () BalanceConc!2978)

(assert (=> b!437691 (= lt!192361 (printTailRec!403 thiss!17480 lt!192373 0 (BalanceConc!2977 Empty!1484)))))

(assert (=> b!437691 (= lt!192361 (print!442 thiss!17480 lt!192373))))

(assert (=> b!437691 (= lt!192373 (singletonSeq!377 (h!9696 tokens!465)))))

(declare-fun b!437692 () Bool)

(declare-fun Unit!7576 () Unit!7571)

(assert (=> b!437692 (= e!267294 Unit!7576)))

(declare-fun tp!123996 () Bool)

(declare-fun b!437693 () Bool)

(declare-fun e!267284 () Bool)

(assert (=> b!437693 (= e!267284 (and tp!123996 (inv!5359 (tag!1081 (rule!1506 (h!9696 tokens!465)))) (inv!5362 (transformation!831 (rule!1506 (h!9696 tokens!465)))) e!267283))))

(declare-fun b!437694 () Bool)

(declare-fun Unit!7577 () Unit!7571)

(assert (=> b!437694 (= e!267302 Unit!7577)))

(declare-fun b!437695 () Bool)

(declare-fun tp!123986 () Bool)

(assert (=> b!437695 (= e!267314 (and (inv!21 (value!27999 (h!9696 tokens!465))) e!267284 tp!123986))))

(declare-fun b!437696 () Bool)

(declare-fun res!193904 () Bool)

(assert (=> b!437696 (=> (not res!193904) (not e!267286))))

(assert (=> b!437696 (= res!193904 (isSeparator!831 (rule!1506 separatorToken!170)))))

(declare-fun b!437697 () Bool)

(declare-fun Unit!7578 () Unit!7571)

(assert (=> b!437697 (= e!267302 Unit!7578)))

(declare-fun lt!192354 () Unit!7571)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!110 (Regex!1055 List!4307 C!3032) Unit!7571)

(assert (=> b!437697 (= lt!192354 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!110 (regex!831 (rule!1506 lt!192360)) lt!192355 lt!192382))))

(declare-fun res!193909 () Bool)

(assert (=> b!437697 (= res!193909 (not (matchR!373 (regex!831 (rule!1506 lt!192360)) lt!192355)))))

(assert (=> b!437697 (=> (not res!193909) (not e!267304))))

(assert (=> b!437697 e!267304))

(declare-fun b!437698 () Bool)

(declare-fun res!193917 () Bool)

(assert (=> b!437698 (=> res!193917 e!267292)))

(assert (=> b!437698 (= res!193917 (not (contains!938 rules!1920 (rule!1506 lt!192360))))))

(declare-fun b!437699 () Bool)

(declare-fun res!193906 () Bool)

(assert (=> b!437699 (=> (not res!193906) (not e!267295))))

(declare-fun lt!192356 () List!4307)

(assert (=> b!437699 (= res!193906 (= (list!1897 (seqFromList!1028 lt!192358)) lt!192356))))

(declare-fun b!437700 () Bool)

(assert (=> b!437700 (= e!267315 (= (rule!1506 separatorToken!170) lt!192368))))

(declare-fun b!437701 () Bool)

(assert (=> b!437701 (= e!267286 e!267295)))

(declare-fun res!193926 () Bool)

(assert (=> b!437701 (=> (not res!193926) (not e!267295))))

(assert (=> b!437701 (= res!193926 (= lt!192358 lt!192356))))

(assert (=> b!437701 (= lt!192356 (list!1897 (printWithSeparatorTokenWhenNeededRec!390 thiss!17480 rules!1920 lt!192376 separatorToken!170 0)))))

(assert (=> b!437701 (= lt!192358 (printWithSeparatorTokenWhenNeededList!398 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (= (and start!41238 res!193920) b!437669))

(assert (= (and b!437669 res!193910) b!437663))

(assert (= (and b!437663 res!193937) b!437671))

(assert (= (and b!437671 res!193941) b!437688))

(assert (= (and b!437688 res!193930) b!437696))

(assert (= (and b!437696 res!193904) b!437675))

(assert (= (and b!437675 res!193916) b!437684))

(assert (= (and b!437684 res!193927) b!437649))

(assert (= (and b!437649 res!193922) b!437701))

(assert (= (and b!437701 res!193926) b!437699))

(assert (= (and b!437699 res!193906) b!437650))

(assert (= (and b!437650 (not res!193940)) b!437667))

(assert (= (and b!437667 res!193921) b!437672))

(assert (= (and b!437667 (not res!193914)) b!437691))

(assert (= (and b!437691 (not res!193928)) b!437676))

(assert (= (and b!437676 (not res!193939)) b!437653))

(assert (= (and b!437653 (not res!193936)) b!437660))

(assert (= (and b!437660 (not res!193908)) b!437689))

(assert (= (and b!437689 res!193924) b!437690))

(assert (= (and b!437690 res!193907) b!437677))

(assert (= (and b!437689 (not res!193905)) b!437658))

(assert (= (and b!437658 (not res!193929)) b!437655))

(assert (= (and b!437655 res!193925) b!437657))

(assert (= (and b!437658 c!88683) b!437678))

(assert (= (and b!437658 (not c!88683)) b!437692))

(assert (= (and b!437658 res!193913) b!437673))

(assert (= (and b!437673 res!193934) b!437656))

(assert (= (and b!437658 res!193931) b!437681))

(assert (= (and b!437681 res!193918) b!437700))

(assert (= (and b!437658 res!193932) b!437654))

(assert (= (and b!437654 res!193933) b!437679))

(assert (= (and b!437658 res!193911) b!437686))

(assert (= (and b!437686 res!193912) b!437687))

(assert (= (and b!437658 c!88682) b!437697))

(assert (= (and b!437658 (not c!88682)) b!437694))

(assert (= (and b!437697 res!193909) b!437685))

(assert (= (and b!437658 c!88681) b!437682))

(assert (= (and b!437658 (not c!88681)) b!437648))

(assert (= (and b!437658 (not res!193938)) b!437698))

(assert (= (and b!437698 (not res!193917)) b!437664))

(assert (= (and b!437664 (not res!193915)) b!437680))

(assert (= (and b!437680 (not res!193919)) b!437661))

(assert (= (and b!437661 (not res!193935)) b!437670))

(assert (= (and b!437670 (not res!193923)) b!437651))

(assert (= b!437652 b!437683))

(assert (= b!437659 b!437652))

(assert (= (and start!41238 ((_ is Cons!4298) rules!1920)) b!437659))

(assert (= b!437668 b!437674))

(assert (= b!437665 b!437668))

(assert (= start!41238 b!437665))

(assert (= b!437693 b!437666))

(assert (= b!437695 b!437693))

(assert (= b!437662 b!437695))

(assert (= (and start!41238 ((_ is Cons!4299) tokens!465)) b!437662))

(declare-fun m!688887 () Bool)

(assert (=> b!437691 m!688887))

(declare-fun m!688889 () Bool)

(assert (=> b!437691 m!688889))

(declare-fun m!688891 () Bool)

(assert (=> b!437691 m!688891))

(declare-fun m!688893 () Bool)

(assert (=> b!437691 m!688893))

(declare-fun m!688895 () Bool)

(assert (=> b!437691 m!688895))

(declare-fun m!688897 () Bool)

(assert (=> b!437657 m!688897))

(declare-fun m!688899 () Bool)

(assert (=> b!437657 m!688899))

(declare-fun m!688901 () Bool)

(assert (=> b!437693 m!688901))

(declare-fun m!688903 () Bool)

(assert (=> b!437693 m!688903))

(declare-fun m!688905 () Bool)

(assert (=> b!437653 m!688905))

(assert (=> b!437653 m!688905))

(declare-fun m!688907 () Bool)

(assert (=> b!437653 m!688907))

(declare-fun m!688909 () Bool)

(assert (=> b!437653 m!688909))

(declare-fun m!688911 () Bool)

(assert (=> b!437658 m!688911))

(declare-fun m!688913 () Bool)

(assert (=> b!437658 m!688913))

(declare-fun m!688915 () Bool)

(assert (=> b!437658 m!688915))

(declare-fun m!688917 () Bool)

(assert (=> b!437658 m!688917))

(declare-fun m!688919 () Bool)

(assert (=> b!437658 m!688919))

(declare-fun m!688921 () Bool)

(assert (=> b!437658 m!688921))

(declare-fun m!688923 () Bool)

(assert (=> b!437658 m!688923))

(declare-fun m!688925 () Bool)

(assert (=> b!437658 m!688925))

(declare-fun m!688927 () Bool)

(assert (=> b!437658 m!688927))

(declare-fun m!688929 () Bool)

(assert (=> b!437658 m!688929))

(declare-fun m!688931 () Bool)

(assert (=> b!437658 m!688931))

(declare-fun m!688933 () Bool)

(assert (=> b!437658 m!688933))

(declare-fun m!688935 () Bool)

(assert (=> b!437658 m!688935))

(declare-fun m!688937 () Bool)

(assert (=> b!437658 m!688937))

(declare-fun m!688939 () Bool)

(assert (=> b!437658 m!688939))

(declare-fun m!688941 () Bool)

(assert (=> b!437658 m!688941))

(declare-fun m!688943 () Bool)

(assert (=> b!437658 m!688943))

(declare-fun m!688945 () Bool)

(assert (=> b!437658 m!688945))

(declare-fun m!688947 () Bool)

(assert (=> b!437658 m!688947))

(declare-fun m!688949 () Bool)

(assert (=> b!437658 m!688949))

(declare-fun m!688951 () Bool)

(assert (=> b!437658 m!688951))

(declare-fun m!688953 () Bool)

(assert (=> b!437658 m!688953))

(declare-fun m!688955 () Bool)

(assert (=> b!437658 m!688955))

(assert (=> b!437658 m!688951))

(declare-fun m!688957 () Bool)

(assert (=> b!437658 m!688957))

(declare-fun m!688959 () Bool)

(assert (=> b!437658 m!688959))

(declare-fun m!688961 () Bool)

(assert (=> b!437658 m!688961))

(declare-fun m!688963 () Bool)

(assert (=> b!437658 m!688963))

(declare-fun m!688965 () Bool)

(assert (=> b!437658 m!688965))

(declare-fun m!688967 () Bool)

(assert (=> b!437658 m!688967))

(declare-fun m!688969 () Bool)

(assert (=> b!437658 m!688969))

(declare-fun m!688971 () Bool)

(assert (=> b!437658 m!688971))

(assert (=> b!437658 m!688917))

(declare-fun m!688973 () Bool)

(assert (=> b!437658 m!688973))

(declare-fun m!688975 () Bool)

(assert (=> b!437658 m!688975))

(declare-fun m!688977 () Bool)

(assert (=> b!437658 m!688977))

(assert (=> b!437658 m!688947))

(assert (=> b!437658 m!688943))

(declare-fun m!688979 () Bool)

(assert (=> b!437658 m!688979))

(declare-fun m!688981 () Bool)

(assert (=> b!437658 m!688981))

(declare-fun m!688983 () Bool)

(assert (=> b!437658 m!688983))

(declare-fun m!688985 () Bool)

(assert (=> b!437658 m!688985))

(declare-fun m!688987 () Bool)

(assert (=> b!437676 m!688987))

(declare-fun m!688989 () Bool)

(assert (=> b!437672 m!688989))

(declare-fun m!688991 () Bool)

(assert (=> b!437697 m!688991))

(declare-fun m!688993 () Bool)

(assert (=> b!437697 m!688993))

(declare-fun m!688995 () Bool)

(assert (=> b!437665 m!688995))

(declare-fun m!688997 () Bool)

(assert (=> b!437652 m!688997))

(declare-fun m!688999 () Bool)

(assert (=> b!437652 m!688999))

(declare-fun m!689001 () Bool)

(assert (=> b!437684 m!689001))

(declare-fun m!689003 () Bool)

(assert (=> b!437661 m!689003))

(declare-fun m!689005 () Bool)

(assert (=> b!437677 m!689005))

(declare-fun m!689007 () Bool)

(assert (=> b!437690 m!689007))

(declare-fun m!689009 () Bool)

(assert (=> b!437695 m!689009))

(declare-fun m!689011 () Bool)

(assert (=> b!437656 m!689011))

(declare-fun m!689013 () Bool)

(assert (=> b!437701 m!689013))

(assert (=> b!437701 m!689013))

(declare-fun m!689015 () Bool)

(assert (=> b!437701 m!689015))

(declare-fun m!689017 () Bool)

(assert (=> b!437701 m!689017))

(declare-fun m!689019 () Bool)

(assert (=> b!437660 m!689019))

(assert (=> b!437660 m!689019))

(declare-fun m!689021 () Bool)

(assert (=> b!437660 m!689021))

(assert (=> b!437660 m!689021))

(declare-fun m!689023 () Bool)

(assert (=> b!437660 m!689023))

(declare-fun m!689025 () Bool)

(assert (=> b!437660 m!689025))

(declare-fun m!689027 () Bool)

(assert (=> b!437651 m!689027))

(declare-fun m!689029 () Bool)

(assert (=> b!437651 m!689029))

(declare-fun m!689031 () Bool)

(assert (=> b!437651 m!689031))

(declare-fun m!689033 () Bool)

(assert (=> b!437654 m!689033))

(declare-fun m!689035 () Bool)

(assert (=> b!437689 m!689035))

(declare-fun m!689037 () Bool)

(assert (=> b!437689 m!689037))

(declare-fun m!689039 () Bool)

(assert (=> b!437689 m!689039))

(declare-fun m!689041 () Bool)

(assert (=> b!437673 m!689041))

(declare-fun m!689043 () Bool)

(assert (=> b!437669 m!689043))

(declare-fun m!689045 () Bool)

(assert (=> b!437686 m!689045))

(declare-fun m!689047 () Bool)

(assert (=> b!437686 m!689047))

(declare-fun m!689049 () Bool)

(assert (=> b!437680 m!689049))

(declare-fun m!689051 () Bool)

(assert (=> b!437680 m!689051))

(declare-fun m!689053 () Bool)

(assert (=> b!437650 m!689053))

(declare-fun m!689055 () Bool)

(assert (=> b!437650 m!689055))

(declare-fun m!689057 () Bool)

(assert (=> b!437650 m!689057))

(assert (=> b!437650 m!689053))

(declare-fun m!689059 () Bool)

(assert (=> b!437650 m!689059))

(assert (=> b!437650 m!689055))

(declare-fun m!689061 () Bool)

(assert (=> b!437650 m!689061))

(declare-fun m!689063 () Bool)

(assert (=> b!437650 m!689063))

(declare-fun m!689065 () Bool)

(assert (=> b!437650 m!689065))

(declare-fun m!689067 () Bool)

(assert (=> b!437650 m!689067))

(declare-fun m!689069 () Bool)

(assert (=> b!437650 m!689069))

(assert (=> b!437650 m!689061))

(declare-fun m!689071 () Bool)

(assert (=> b!437650 m!689071))

(declare-fun m!689073 () Bool)

(assert (=> b!437650 m!689073))

(declare-fun m!689075 () Bool)

(assert (=> b!437650 m!689075))

(assert (=> b!437650 m!689065))

(assert (=> b!437650 m!689073))

(declare-fun m!689077 () Bool)

(assert (=> b!437650 m!689077))

(declare-fun m!689079 () Bool)

(assert (=> b!437699 m!689079))

(assert (=> b!437699 m!689079))

(declare-fun m!689081 () Bool)

(assert (=> b!437699 m!689081))

(declare-fun m!689083 () Bool)

(assert (=> b!437668 m!689083))

(declare-fun m!689085 () Bool)

(assert (=> b!437668 m!689085))

(declare-fun m!689087 () Bool)

(assert (=> start!41238 m!689087))

(declare-fun m!689089 () Bool)

(assert (=> b!437681 m!689089))

(declare-fun m!689091 () Bool)

(assert (=> b!437681 m!689091))

(declare-fun m!689093 () Bool)

(assert (=> b!437682 m!689093))

(declare-fun m!689095 () Bool)

(assert (=> b!437671 m!689095))

(declare-fun m!689097 () Bool)

(assert (=> b!437671 m!689097))

(declare-fun m!689099 () Bool)

(assert (=> b!437662 m!689099))

(declare-fun m!689101 () Bool)

(assert (=> b!437670 m!689101))

(declare-fun m!689103 () Bool)

(assert (=> b!437679 m!689103))

(declare-fun m!689105 () Bool)

(assert (=> b!437675 m!689105))

(declare-fun m!689107 () Bool)

(assert (=> b!437688 m!689107))

(declare-fun m!689109 () Bool)

(assert (=> b!437655 m!689109))

(assert (=> b!437655 m!688917))

(declare-fun m!689111 () Bool)

(assert (=> b!437698 m!689111))

(declare-fun m!689113 () Bool)

(assert (=> b!437663 m!689113))

(check-sat (not b!437659) (not b!437690) b_and!47213 (not b_next!12219) (not b!437695) (not b_next!12217) (not b!437672) (not b!437660) (not b!437693) (not b!437698) (not b!437710) (not b!437697) (not b!437677) (not b!437689) (not b!437686) (not b!437673) (not b!437656) (not b!437691) (not b!437651) b_and!47215 b_and!47223 (not b!437684) (not b!437701) (not b!437670) (not b!437675) (not b!437654) (not b!437681) (not b!437655) (not b_next!12215) (not b!437682) (not b!437688) (not b!437669) (not b!437671) (not b!437658) (not b!437668) (not b!437653) (not b!437665) (not b!437661) (not b!437663) (not b_next!12213) (not b!437650) (not b!437679) (not b!437657) b_and!47219 (not b!437662) (not b!437699) (not b_next!12209) (not b!437680) (not b!437676) (not b!437652) (not start!41238) (not b_next!12211) b_and!47217 b_and!47221)
(check-sat b_and!47215 b_and!47213 b_and!47223 (not b_next!12219) (not b_next!12215) (not b_next!12217) (not b_next!12213) b_and!47219 (not b_next!12209) (not b_next!12211) b_and!47217 b_and!47221)
