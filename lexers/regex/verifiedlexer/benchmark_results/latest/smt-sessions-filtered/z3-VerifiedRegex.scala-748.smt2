; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38490 () Bool)

(assert start!38490)

(declare-fun b!385498 () Bool)

(declare-fun b_free!11873 () Bool)

(declare-fun b_next!11873 () Bool)

(assert (=> b!385498 (= b_free!11873 (not b_next!11873))))

(declare-fun tp!118497 () Bool)

(declare-fun b_and!38705 () Bool)

(assert (=> b!385498 (= tp!118497 b_and!38705)))

(declare-fun b_free!11875 () Bool)

(declare-fun b_next!11875 () Bool)

(assert (=> b!385498 (= b_free!11875 (not b_next!11875))))

(declare-fun tp!118491 () Bool)

(declare-fun b_and!38707 () Bool)

(assert (=> b!385498 (= tp!118491 b_and!38707)))

(declare-fun b!385499 () Bool)

(declare-fun b_free!11877 () Bool)

(declare-fun b_next!11877 () Bool)

(assert (=> b!385499 (= b_free!11877 (not b_next!11877))))

(declare-fun tp!118503 () Bool)

(declare-fun b_and!38709 () Bool)

(assert (=> b!385499 (= tp!118503 b_and!38709)))

(declare-fun b_free!11879 () Bool)

(declare-fun b_next!11879 () Bool)

(assert (=> b!385499 (= b_free!11879 (not b_next!11879))))

(declare-fun tp!118500 () Bool)

(declare-fun b_and!38711 () Bool)

(assert (=> b!385499 (= tp!118500 b_and!38711)))

(declare-fun b!385493 () Bool)

(declare-fun b_free!11881 () Bool)

(declare-fun b_next!11881 () Bool)

(assert (=> b!385493 (= b_free!11881 (not b_next!11881))))

(declare-fun tp!118496 () Bool)

(declare-fun b_and!38713 () Bool)

(assert (=> b!385493 (= tp!118496 b_and!38713)))

(declare-fun b_free!11883 () Bool)

(declare-fun b_next!11883 () Bool)

(assert (=> b!385493 (= b_free!11883 (not b_next!11883))))

(declare-fun tp!118492 () Bool)

(declare-fun b_and!38715 () Bool)

(assert (=> b!385493 (= tp!118492 b_and!38715)))

(declare-fun bs!46866 () Bool)

(declare-fun b!385517 () Bool)

(declare-fun b!385522 () Bool)

(assert (= bs!46866 (and b!385517 b!385522)))

(declare-fun lambda!11984 () Int)

(declare-fun lambda!11983 () Int)

(assert (=> bs!46866 (not (= lambda!11984 lambda!11983))))

(declare-fun b!385552 () Bool)

(declare-fun e!237231 () Bool)

(assert (=> b!385552 (= e!237231 true)))

(declare-fun b!385551 () Bool)

(declare-fun e!237230 () Bool)

(assert (=> b!385551 (= e!237230 e!237231)))

(declare-fun b!385550 () Bool)

(declare-fun e!237229 () Bool)

(assert (=> b!385550 (= e!237229 e!237230)))

(assert (=> b!385517 e!237229))

(assert (= b!385551 b!385552))

(assert (= b!385550 b!385551))

(declare-datatypes ((List!4248 0))(
  ( (Nil!4238) (Cons!4238 (h!9635 (_ BitVec 16)) (t!58838 List!4248)) )
))
(declare-datatypes ((TokenValue!841 0))(
  ( (FloatLiteralValue!1682 (text!6332 List!4248)) (TokenValueExt!840 (__x!3169 Int)) (Broken!4205 (value!27631 List!4248)) (Object!850) (End!841) (Def!841) (Underscore!841) (Match!841) (Else!841) (Error!841) (Case!841) (If!841) (Extends!841) (Abstract!841) (Class!841) (Val!841) (DelimiterValue!1682 (del!901 List!4248)) (KeywordValue!847 (value!27632 List!4248)) (CommentValue!1682 (value!27633 List!4248)) (WhitespaceValue!1682 (value!27634 List!4248)) (IndentationValue!841 (value!27635 List!4248)) (String!5284) (Int32!841) (Broken!4206 (value!27636 List!4248)) (Boolean!842) (Unit!6895) (OperatorValue!844 (op!901 List!4248)) (IdentifierValue!1682 (value!27637 List!4248)) (IdentifierValue!1683 (value!27638 List!4248)) (WhitespaceValue!1683 (value!27639 List!4248)) (True!1682) (False!1682) (Broken!4207 (value!27640 List!4248)) (Broken!4208 (value!27641 List!4248)) (True!1683) (RightBrace!841) (RightBracket!841) (Colon!841) (Null!841) (Comma!841) (LeftBracket!841) (False!1683) (LeftBrace!841) (ImaginaryLiteralValue!841 (text!6333 List!4248)) (StringLiteralValue!2523 (value!27642 List!4248)) (EOFValue!841 (value!27643 List!4248)) (IdentValue!841 (value!27644 List!4248)) (DelimiterValue!1683 (value!27645 List!4248)) (DedentValue!841 (value!27646 List!4248)) (NewLineValue!841 (value!27647 List!4248)) (IntegerValue!2523 (value!27648 (_ BitVec 32)) (text!6334 List!4248)) (IntegerValue!2524 (value!27649 Int) (text!6335 List!4248)) (Times!841) (Or!841) (Equal!841) (Minus!841) (Broken!4209 (value!27650 List!4248)) (And!841) (Div!841) (LessEqual!841) (Mod!841) (Concat!1884) (Not!841) (Plus!841) (SpaceValue!841 (value!27651 List!4248)) (IntegerValue!2525 (value!27652 Int) (text!6336 List!4248)) (StringLiteralValue!2524 (text!6337 List!4248)) (FloatLiteralValue!1683 (text!6338 List!4248)) (BytesLiteralValue!841 (value!27653 List!4248)) (CommentValue!1683 (value!27654 List!4248)) (StringLiteralValue!2525 (value!27655 List!4248)) (ErrorTokenValue!841 (msg!902 List!4248)) )
))
(declare-datatypes ((C!3008 0))(
  ( (C!3009 (val!1390 Int)) )
))
(declare-datatypes ((List!4249 0))(
  ( (Nil!4239) (Cons!4239 (h!9636 C!3008) (t!58839 List!4249)) )
))
(declare-datatypes ((IArray!2921 0))(
  ( (IArray!2922 (innerList!1518 List!4249)) )
))
(declare-datatypes ((Conc!1460 0))(
  ( (Node!1460 (left!3548 Conc!1460) (right!3878 Conc!1460) (csize!3150 Int) (cheight!1671 Int)) (Leaf!2209 (xs!4079 IArray!2921) (csize!3151 Int)) (Empty!1460) )
))
(declare-datatypes ((BalanceConc!2928 0))(
  ( (BalanceConc!2929 (c!75903 Conc!1460)) )
))
(declare-datatypes ((TokenValueInjection!1454 0))(
  ( (TokenValueInjection!1455 (toValue!1610 Int) (toChars!1469 Int)) )
))
(declare-datatypes ((String!5285 0))(
  ( (String!5286 (value!27656 String)) )
))
(declare-datatypes ((Regex!1043 0))(
  ( (ElementMatch!1043 (c!75904 C!3008)) (Concat!1885 (regOne!2598 Regex!1043) (regTwo!2598 Regex!1043)) (EmptyExpr!1043) (Star!1043 (reg!1372 Regex!1043)) (EmptyLang!1043) (Union!1043 (regOne!2599 Regex!1043) (regTwo!2599 Regex!1043)) )
))
(declare-datatypes ((Rule!1438 0))(
  ( (Rule!1439 (regex!819 Regex!1043) (tag!1059 String!5285) (isSeparator!819 Bool) (transformation!819 TokenValueInjection!1454)) )
))
(declare-datatypes ((List!4250 0))(
  ( (Nil!4240) (Cons!4240 (h!9637 Rule!1438) (t!58840 List!4250)) )
))
(declare-fun rules!1920 () List!4250)

(get-info :version)

(assert (= (and b!385517 ((_ is Cons!4240) rules!1920)) b!385550))

(declare-fun order!3605 () Int)

(declare-fun order!3607 () Int)

(declare-fun dynLambda!2457 (Int Int) Int)

(declare-fun dynLambda!2458 (Int Int) Int)

(assert (=> b!385552 (< (dynLambda!2457 order!3605 (toValue!1610 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!11984))))

(declare-fun order!3609 () Int)

(declare-fun dynLambda!2459 (Int Int) Int)

(assert (=> b!385552 (< (dynLambda!2459 order!3609 (toChars!1469 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!11984))))

(assert (=> b!385517 true))

(declare-fun e!237220 () Bool)

(assert (=> b!385493 (= e!237220 (and tp!118496 tp!118492))))

(declare-fun res!172818 () Bool)

(declare-fun e!237194 () Bool)

(assert (=> start!38490 (=> (not res!172818) (not e!237194))))

(declare-datatypes ((LexerInterface!705 0))(
  ( (LexerInterfaceExt!702 (__x!3170 Int)) (Lexer!703) )
))
(declare-fun thiss!17480 () LexerInterface!705)

(assert (=> start!38490 (= res!172818 ((_ is Lexer!703) thiss!17480))))

(assert (=> start!38490 e!237194))

(assert (=> start!38490 true))

(declare-fun e!237212 () Bool)

(assert (=> start!38490 e!237212))

(declare-datatypes ((Token!1382 0))(
  ( (Token!1383 (value!27657 TokenValue!841) (rule!1472 Rule!1438) (size!3444 Int) (originalCharacters!862 List!4249)) )
))
(declare-fun separatorToken!170 () Token!1382)

(declare-fun e!237193 () Bool)

(declare-fun inv!5264 (Token!1382) Bool)

(assert (=> start!38490 (and (inv!5264 separatorToken!170) e!237193)))

(declare-fun e!237208 () Bool)

(assert (=> start!38490 e!237208))

(declare-fun b!385494 () Bool)

(declare-fun res!172819 () Bool)

(declare-fun e!237221 () Bool)

(assert (=> b!385494 (=> (not res!172819) (not e!237221))))

(assert (=> b!385494 (= res!172819 (isSeparator!819 (rule!1472 separatorToken!170)))))

(declare-fun b!385495 () Bool)

(declare-fun e!237198 () Bool)

(declare-fun e!237219 () Bool)

(assert (=> b!385495 (= e!237198 e!237219)))

(declare-fun res!172816 () Bool)

(assert (=> b!385495 (=> res!172816 e!237219)))

(declare-fun contains!896 (List!4250 Rule!1438) Bool)

(assert (=> b!385495 (= res!172816 (not (contains!896 rules!1920 (rule!1472 separatorToken!170))))))

(declare-datatypes ((Unit!6896 0))(
  ( (Unit!6897) )
))
(declare-fun lt!169390 () Unit!6896)

(declare-fun e!237209 () Unit!6896)

(assert (=> b!385495 (= lt!169390 e!237209)))

(declare-fun c!75902 () Bool)

(declare-fun lt!169385 () C!3008)

(declare-fun contains!897 (List!4249 C!3008) Bool)

(declare-fun usedCharacters!120 (Regex!1043) List!4249)

(assert (=> b!385495 (= c!75902 (contains!897 (usedCharacters!120 (regex!819 (rule!1472 separatorToken!170))) lt!169385))))

(declare-fun lt!169372 () List!4249)

(declare-fun head!1039 (List!4249) C!3008)

(assert (=> b!385495 (= lt!169385 (head!1039 lt!169372))))

(declare-fun lt!169382 () Unit!6896)

(declare-fun e!237210 () Unit!6896)

(assert (=> b!385495 (= lt!169382 e!237210)))

(declare-fun c!75901 () Bool)

(declare-fun lt!169355 () Token!1382)

(declare-fun lt!169373 () C!3008)

(assert (=> b!385495 (= c!75901 (not (contains!897 (usedCharacters!120 (regex!819 (rule!1472 lt!169355))) lt!169373)))))

(declare-fun lt!169381 () List!4249)

(assert (=> b!385495 (= lt!169373 (head!1039 lt!169381))))

(declare-fun e!237211 () Bool)

(assert (=> b!385495 e!237211))

(declare-fun res!172820 () Bool)

(assert (=> b!385495 (=> (not res!172820) (not e!237211))))

(declare-datatypes ((Option!1039 0))(
  ( (None!1038) (Some!1038 (v!15215 Rule!1438)) )
))
(declare-fun lt!169354 () Option!1039)

(declare-fun isDefined!878 (Option!1039) Bool)

(assert (=> b!385495 (= res!172820 (isDefined!878 lt!169354))))

(declare-fun getRuleFromTag!178 (LexerInterface!705 List!4250 String!5285) Option!1039)

(assert (=> b!385495 (= lt!169354 (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 lt!169355))))))

(declare-fun lt!169359 () Unit!6896)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!178 (LexerInterface!705 List!4250 List!4249 Token!1382) Unit!6896)

(assert (=> b!385495 (= lt!169359 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!178 thiss!17480 rules!1920 lt!169381 lt!169355))))

(declare-fun list!1843 (BalanceConc!2928) List!4249)

(declare-fun charsOf!462 (Token!1382) BalanceConc!2928)

(assert (=> b!385495 (= lt!169381 (list!1843 (charsOf!462 lt!169355)))))

(declare-fun lt!169358 () Unit!6896)

(declare-datatypes ((List!4251 0))(
  ( (Nil!4241) (Cons!4241 (h!9638 Token!1382) (t!58841 List!4251)) )
))
(declare-fun tokens!465 () List!4251)

(declare-fun forallContained!372 (List!4251 Int Token!1382) Unit!6896)

(assert (=> b!385495 (= lt!169358 (forallContained!372 tokens!465 lambda!11984 lt!169355))))

(declare-fun e!237202 () Bool)

(assert (=> b!385495 e!237202))

(declare-fun res!172822 () Bool)

(assert (=> b!385495 (=> (not res!172822) (not e!237202))))

(declare-datatypes ((IArray!2923 0))(
  ( (IArray!2924 (innerList!1519 List!4251)) )
))
(declare-datatypes ((Conc!1461 0))(
  ( (Node!1461 (left!3549 Conc!1461) (right!3879 Conc!1461) (csize!3152 Int) (cheight!1672 Int)) (Leaf!2210 (xs!4080 IArray!2923) (csize!3153 Int)) (Empty!1461) )
))
(declare-datatypes ((BalanceConc!2930 0))(
  ( (BalanceConc!2931 (c!75905 Conc!1461)) )
))
(declare-datatypes ((tuple2!5034 0))(
  ( (tuple2!5035 (_1!2733 BalanceConc!2930) (_2!2733 BalanceConc!2928)) )
))
(declare-fun lt!169361 () tuple2!5034)

(declare-fun size!3445 (BalanceConc!2930) Int)

(assert (=> b!385495 (= res!172822 (= (size!3445 (_1!2733 lt!169361)) 1))))

(declare-fun lt!169377 () BalanceConc!2928)

(declare-fun lex!497 (LexerInterface!705 List!4250 BalanceConc!2928) tuple2!5034)

(assert (=> b!385495 (= lt!169361 (lex!497 thiss!17480 rules!1920 lt!169377))))

(declare-fun lt!169365 () BalanceConc!2930)

(declare-fun printTailRec!391 (LexerInterface!705 BalanceConc!2930 Int BalanceConc!2928) BalanceConc!2928)

(assert (=> b!385495 (= lt!169377 (printTailRec!391 thiss!17480 lt!169365 0 (BalanceConc!2929 Empty!1460)))))

(declare-fun print!430 (LexerInterface!705 BalanceConc!2930) BalanceConc!2928)

(assert (=> b!385495 (= lt!169377 (print!430 thiss!17480 lt!169365))))

(declare-fun singletonSeq!365 (Token!1382) BalanceConc!2930)

(assert (=> b!385495 (= lt!169365 (singletonSeq!365 lt!169355))))

(declare-fun e!237191 () Bool)

(assert (=> b!385495 e!237191))

(declare-fun res!172826 () Bool)

(assert (=> b!385495 (=> (not res!172826) (not e!237191))))

(declare-fun lt!169370 () Option!1039)

(assert (=> b!385495 (= res!172826 (isDefined!878 lt!169370))))

(assert (=> b!385495 (= lt!169370 (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 separatorToken!170))))))

(declare-fun lt!169344 () List!4249)

(declare-fun lt!169349 () Unit!6896)

(assert (=> b!385495 (= lt!169349 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!178 thiss!17480 rules!1920 lt!169344 separatorToken!170))))

(declare-fun e!237217 () Bool)

(assert (=> b!385495 e!237217))

(declare-fun res!172824 () Bool)

(assert (=> b!385495 (=> (not res!172824) (not e!237217))))

(declare-fun lt!169362 () tuple2!5034)

(assert (=> b!385495 (= res!172824 (= (size!3445 (_1!2733 lt!169362)) 1))))

(declare-fun lt!169345 () BalanceConc!2928)

(assert (=> b!385495 (= lt!169362 (lex!497 thiss!17480 rules!1920 lt!169345))))

(declare-fun lt!169360 () BalanceConc!2930)

(assert (=> b!385495 (= lt!169345 (printTailRec!391 thiss!17480 lt!169360 0 (BalanceConc!2929 Empty!1460)))))

(assert (=> b!385495 (= lt!169345 (print!430 thiss!17480 lt!169360))))

(assert (=> b!385495 (= lt!169360 (singletonSeq!365 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!454 (LexerInterface!705 List!4250 Token!1382) Bool)

(assert (=> b!385495 (rulesProduceIndividualToken!454 thiss!17480 rules!1920 lt!169355)))

(declare-fun lt!169387 () Unit!6896)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!168 (LexerInterface!705 List!4250 List!4251 Token!1382) Unit!6896)

(assert (=> b!385495 (= lt!169387 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!168 thiss!17480 rules!1920 tokens!465 lt!169355))))

(declare-fun head!1040 (List!4251) Token!1382)

(assert (=> b!385495 (= lt!169355 (head!1040 (t!58841 tokens!465)))))

(declare-fun lt!169353 () Unit!6896)

(declare-fun e!237190 () Unit!6896)

(assert (=> b!385495 (= lt!169353 e!237190)))

(declare-fun c!75900 () Bool)

(declare-fun isEmpty!3090 (List!4251) Bool)

(assert (=> b!385495 (= c!75900 (isEmpty!3090 (t!58841 tokens!465)))))

(declare-datatypes ((tuple2!5036 0))(
  ( (tuple2!5037 (_1!2734 Token!1382) (_2!2734 List!4249)) )
))
(declare-datatypes ((Option!1040 0))(
  ( (None!1039) (Some!1039 (v!15216 tuple2!5036)) )
))
(declare-fun lt!169348 () Option!1040)

(declare-fun lt!169364 () List!4249)

(declare-fun maxPrefix!421 (LexerInterface!705 List!4250 List!4249) Option!1040)

(assert (=> b!385495 (= lt!169348 (maxPrefix!421 thiss!17480 rules!1920 lt!169364))))

(declare-fun lt!169369 () tuple2!5036)

(assert (=> b!385495 (= lt!169364 (_2!2734 lt!169369))))

(declare-fun lt!169367 () Unit!6896)

(declare-fun lt!169375 () List!4249)

(declare-fun lt!169347 () List!4249)

(declare-fun lemmaSamePrefixThenSameSuffix!264 (List!4249 List!4249 List!4249 List!4249 List!4249) Unit!6896)

(assert (=> b!385495 (= lt!169367 (lemmaSamePrefixThenSameSuffix!264 lt!169347 lt!169364 lt!169347 (_2!2734 lt!169369) lt!169375))))

(declare-fun get!1506 (Option!1040) tuple2!5036)

(assert (=> b!385495 (= lt!169369 (get!1506 (maxPrefix!421 thiss!17480 rules!1920 lt!169375)))))

(declare-fun lt!169379 () List!4249)

(declare-fun isPrefix!479 (List!4249 List!4249) Bool)

(assert (=> b!385495 (isPrefix!479 lt!169347 lt!169379)))

(declare-fun lt!169389 () Unit!6896)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!370 (List!4249 List!4249) Unit!6896)

(assert (=> b!385495 (= lt!169389 (lemmaConcatTwoListThenFirstIsPrefix!370 lt!169347 lt!169364))))

(declare-fun e!237197 () Bool)

(assert (=> b!385495 e!237197))

(declare-fun res!172827 () Bool)

(assert (=> b!385495 (=> res!172827 e!237197)))

(assert (=> b!385495 (= res!172827 (isEmpty!3090 tokens!465))))

(declare-fun lt!169350 () Unit!6896)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!226 (LexerInterface!705 List!4250 List!4251 Token!1382) Unit!6896)

(assert (=> b!385495 (= lt!169350 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!226 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!385496 () Bool)

(declare-fun isEmpty!3091 (BalanceConc!2928) Bool)

(assert (=> b!385496 (= e!237202 (isEmpty!3091 (_2!2733 lt!169361)))))

(declare-fun b!385497 () Bool)

(declare-fun e!237207 () Bool)

(assert (=> b!385497 (= e!237197 e!237207)))

(declare-fun res!172817 () Bool)

(assert (=> b!385497 (=> (not res!172817) (not e!237207))))

(declare-fun lt!169378 () Option!1040)

(declare-fun isDefined!879 (Option!1040) Bool)

(assert (=> b!385497 (= res!172817 (isDefined!879 lt!169378))))

(assert (=> b!385497 (= lt!169378 (maxPrefix!421 thiss!17480 rules!1920 lt!169375))))

(declare-fun e!237205 () Bool)

(assert (=> b!385498 (= e!237205 (and tp!118497 tp!118491))))

(declare-fun e!237200 () Bool)

(assert (=> b!385499 (= e!237200 (and tp!118503 tp!118500))))

(declare-fun b!385500 () Bool)

(declare-fun e!237213 () Bool)

(assert (=> b!385500 (= e!237211 e!237213)))

(declare-fun res!172812 () Bool)

(assert (=> b!385500 (=> (not res!172812) (not e!237213))))

(declare-fun lt!169376 () Rule!1438)

(declare-fun matchR!361 (Regex!1043 List!4249) Bool)

(assert (=> b!385500 (= res!172812 (matchR!361 (regex!819 lt!169376) lt!169381))))

(declare-fun get!1507 (Option!1039) Rule!1438)

(assert (=> b!385500 (= lt!169376 (get!1507 lt!169354))))

(declare-fun b!385501 () Bool)

(declare-fun res!172842 () Bool)

(assert (=> b!385501 (=> (not res!172842) (not e!237221))))

(assert (=> b!385501 (= res!172842 ((_ is Cons!4241) tokens!465))))

(declare-fun e!237215 () Bool)

(declare-fun b!385502 () Bool)

(declare-fun ++!1198 (List!4249 List!4249) List!4249)

(assert (=> b!385502 (= e!237215 (not (= lt!169375 (++!1198 lt!169347 lt!169372))))))

(declare-fun b!385503 () Bool)

(declare-fun res!172844 () Bool)

(assert (=> b!385503 (=> (not res!172844) (not e!237202))))

(declare-fun apply!1018 (BalanceConc!2930 Int) Token!1382)

(assert (=> b!385503 (= res!172844 (= (apply!1018 (_1!2733 lt!169361) 0) lt!169355))))

(declare-fun b!385504 () Bool)

(assert (=> b!385504 (= e!237213 (= (rule!1472 lt!169355) lt!169376))))

(declare-fun b!385505 () Bool)

(declare-fun e!237218 () Bool)

(assert (=> b!385505 (= e!237218 false)))

(declare-fun b!385506 () Bool)

(declare-fun res!172837 () Bool)

(declare-fun e!237185 () Bool)

(assert (=> b!385506 (=> res!172837 e!237185)))

(assert (=> b!385506 (= res!172837 (not (rulesProduceIndividualToken!454 thiss!17480 rules!1920 (h!9638 tokens!465))))))

(declare-fun b!385507 () Bool)

(declare-fun res!172835 () Bool)

(assert (=> b!385507 (=> (not res!172835) (not e!237221))))

(declare-fun sepAndNonSepRulesDisjointChars!408 (List!4250 List!4250) Bool)

(assert (=> b!385507 (= res!172835 (sepAndNonSepRulesDisjointChars!408 rules!1920 rules!1920))))

(declare-fun b!385508 () Bool)

(declare-fun res!172840 () Bool)

(assert (=> b!385508 (=> (not res!172840) (not e!237217))))

(assert (=> b!385508 (= res!172840 (= (apply!1018 (_1!2733 lt!169362) 0) separatorToken!170))))

(declare-fun b!385509 () Bool)

(assert (=> b!385509 (= e!237194 e!237221)))

(declare-fun res!172836 () Bool)

(assert (=> b!385509 (=> (not res!172836) (not e!237221))))

(declare-fun lt!169368 () BalanceConc!2930)

(declare-fun rulesProduceEachTokenIndividually!497 (LexerInterface!705 List!4250 BalanceConc!2930) Bool)

(assert (=> b!385509 (= res!172836 (rulesProduceEachTokenIndividually!497 thiss!17480 rules!1920 lt!169368))))

(declare-fun seqFromList!1003 (List!4251) BalanceConc!2930)

(assert (=> b!385509 (= lt!169368 (seqFromList!1003 tokens!465))))

(declare-fun b!385510 () Bool)

(declare-fun e!237201 () Bool)

(assert (=> b!385510 (= e!237201 e!237198)))

(declare-fun res!172830 () Bool)

(assert (=> b!385510 (=> res!172830 e!237198)))

(declare-fun lt!169356 () Bool)

(assert (=> b!385510 (= res!172830 (not lt!169356))))

(declare-fun e!237204 () Bool)

(assert (=> b!385510 e!237204))

(declare-fun res!172813 () Bool)

(assert (=> b!385510 (=> (not res!172813) (not e!237204))))

(declare-fun lt!169384 () tuple2!5036)

(assert (=> b!385510 (= res!172813 (= (_1!2734 lt!169384) (h!9638 tokens!465)))))

(declare-fun lt!169351 () Option!1040)

(assert (=> b!385510 (= lt!169384 (get!1506 lt!169351))))

(assert (=> b!385510 (isDefined!879 lt!169351)))

(assert (=> b!385510 (= lt!169351 (maxPrefix!421 thiss!17480 rules!1920 lt!169347))))

(declare-fun b!385511 () Bool)

(declare-fun Unit!6898 () Unit!6896)

(assert (=> b!385511 (= e!237210 Unit!6898)))

(declare-fun b!385512 () Bool)

(declare-fun Unit!6899 () Unit!6896)

(assert (=> b!385512 (= e!237210 Unit!6899)))

(declare-fun lt!169357 () Unit!6896)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!98 (Regex!1043 List!4249 C!3008) Unit!6896)

(assert (=> b!385512 (= lt!169357 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!98 (regex!819 (rule!1472 lt!169355)) lt!169381 lt!169373))))

(declare-fun res!172843 () Bool)

(assert (=> b!385512 (= res!172843 (not (matchR!361 (regex!819 (rule!1472 lt!169355)) lt!169381)))))

(assert (=> b!385512 (=> (not res!172843) (not e!237218))))

(assert (=> b!385512 e!237218))

(declare-fun b!385513 () Bool)

(declare-fun e!237188 () Bool)

(declare-fun lt!169363 () Rule!1438)

(assert (=> b!385513 (= e!237188 (= (rule!1472 separatorToken!170) lt!169363))))

(declare-fun e!237199 () Bool)

(declare-fun e!237216 () Bool)

(declare-fun b!385514 () Bool)

(declare-fun tp!118502 () Bool)

(declare-fun inv!21 (TokenValue!841) Bool)

(assert (=> b!385514 (= e!237199 (and (inv!21 (value!27657 (h!9638 tokens!465))) e!237216 tp!118502))))

(declare-fun b!385515 () Bool)

(declare-fun e!237189 () Bool)

(declare-fun e!237222 () Bool)

(assert (=> b!385515 (= e!237189 (not e!237222))))

(declare-fun res!172829 () Bool)

(assert (=> b!385515 (=> res!172829 e!237222)))

(declare-fun printWithSeparatorTokenWhenNeededRec!378 (LexerInterface!705 List!4250 BalanceConc!2930 Token!1382 Int) BalanceConc!2928)

(assert (=> b!385515 (= res!172829 (not (= lt!169372 (list!1843 (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 (seqFromList!1003 (t!58841 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!169383 () List!4249)

(assert (=> b!385515 (= lt!169383 lt!169379)))

(assert (=> b!385515 (= lt!169379 (++!1198 lt!169347 lt!169364))))

(assert (=> b!385515 (= lt!169383 (++!1198 (++!1198 lt!169347 lt!169344) lt!169372))))

(declare-fun lt!169388 () Unit!6896)

(declare-fun lemmaConcatAssociativity!542 (List!4249 List!4249 List!4249) Unit!6896)

(assert (=> b!385515 (= lt!169388 (lemmaConcatAssociativity!542 lt!169347 lt!169344 lt!169372))))

(assert (=> b!385515 (= lt!169347 (list!1843 (charsOf!462 (h!9638 tokens!465))))))

(assert (=> b!385515 (= lt!169364 (++!1198 lt!169344 lt!169372))))

(declare-fun printWithSeparatorTokenWhenNeededList!386 (LexerInterface!705 List!4250 List!4251 Token!1382) List!4249)

(assert (=> b!385515 (= lt!169372 (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 (t!58841 tokens!465) separatorToken!170))))

(assert (=> b!385515 (= lt!169344 (list!1843 (charsOf!462 separatorToken!170)))))

(declare-fun b!385516 () Bool)

(assert (=> b!385516 (= e!237207 (= (_1!2734 (get!1506 lt!169378)) (head!1040 tokens!465)))))

(assert (=> b!385517 (= e!237185 e!237201)))

(declare-fun res!172841 () Bool)

(assert (=> b!385517 (=> res!172841 e!237201)))

(declare-datatypes ((tuple2!5038 0))(
  ( (tuple2!5039 (_1!2735 Token!1382) (_2!2735 BalanceConc!2928)) )
))
(declare-datatypes ((Option!1041 0))(
  ( (None!1040) (Some!1040 (v!15217 tuple2!5038)) )
))
(declare-fun isDefined!880 (Option!1041) Bool)

(declare-fun maxPrefixZipperSequence!384 (LexerInterface!705 List!4250 BalanceConc!2928) Option!1041)

(declare-fun seqFromList!1004 (List!4249) BalanceConc!2928)

(assert (=> b!385517 (= res!172841 (not (isDefined!880 (maxPrefixZipperSequence!384 thiss!17480 rules!1920 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))))

(declare-fun lt!169386 () Unit!6896)

(assert (=> b!385517 (= lt!169386 (forallContained!372 tokens!465 lambda!11984 (h!9638 tokens!465)))))

(assert (=> b!385517 (= lt!169347 (originalCharacters!862 (h!9638 tokens!465)))))

(declare-fun b!385518 () Bool)

(declare-fun res!172832 () Bool)

(assert (=> b!385518 (=> (not res!172832) (not e!237221))))

(assert (=> b!385518 (= res!172832 (rulesProduceIndividualToken!454 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!385519 () Bool)

(declare-fun e!237203 () Bool)

(assert (=> b!385519 (= e!237222 e!237203)))

(declare-fun res!172833 () Bool)

(assert (=> b!385519 (=> res!172833 e!237203)))

(assert (=> b!385519 (= res!172833 e!237215)))

(declare-fun res!172814 () Bool)

(assert (=> b!385519 (=> (not res!172814) (not e!237215))))

(assert (=> b!385519 (= res!172814 (not lt!169356))))

(assert (=> b!385519 (= lt!169356 (= lt!169375 lt!169379))))

(declare-fun b!385520 () Bool)

(declare-fun res!172828 () Bool)

(assert (=> b!385520 (=> (not res!172828) (not e!237204))))

(declare-fun isEmpty!3092 (List!4249) Bool)

(assert (=> b!385520 (= res!172828 (isEmpty!3092 (_2!2734 lt!169384)))))

(declare-fun b!385521 () Bool)

(declare-fun res!172834 () Bool)

(assert (=> b!385521 (=> (not res!172834) (not e!237189))))

(declare-fun lt!169380 () List!4249)

(assert (=> b!385521 (= res!172834 (= (list!1843 (seqFromList!1004 lt!169375)) lt!169380))))

(declare-fun res!172815 () Bool)

(assert (=> b!385522 (=> (not res!172815) (not e!237221))))

(declare-fun forall!1184 (List!4251 Int) Bool)

(assert (=> b!385522 (= res!172815 (forall!1184 tokens!465 lambda!11983))))

(declare-fun b!385523 () Bool)

(declare-fun e!237187 () Bool)

(declare-fun tp!118495 () Bool)

(assert (=> b!385523 (= e!237212 (and e!237187 tp!118495))))

(declare-fun b!385524 () Bool)

(declare-fun res!172823 () Bool)

(assert (=> b!385524 (=> (not res!172823) (not e!237194))))

(declare-fun rulesInvariant!671 (LexerInterface!705 List!4250) Bool)

(assert (=> b!385524 (= res!172823 (rulesInvariant!671 thiss!17480 rules!1920))))

(declare-fun b!385525 () Bool)

(assert (=> b!385525 (= e!237203 e!237185)))

(declare-fun res!172839 () Bool)

(assert (=> b!385525 (=> res!172839 e!237185)))

(declare-fun lt!169371 () List!4249)

(declare-fun lt!169366 () List!4249)

(assert (=> b!385525 (= res!172839 (or (not (= lt!169371 lt!169366)) (not (= lt!169366 lt!169347)) (not (= lt!169371 lt!169347))))))

(declare-fun printList!379 (LexerInterface!705 List!4251) List!4249)

(assert (=> b!385525 (= lt!169366 (printList!379 thiss!17480 (Cons!4241 (h!9638 tokens!465) Nil!4241)))))

(declare-fun lt!169374 () BalanceConc!2928)

(assert (=> b!385525 (= lt!169371 (list!1843 lt!169374))))

(declare-fun lt!169346 () BalanceConc!2930)

(assert (=> b!385525 (= lt!169374 (printTailRec!391 thiss!17480 lt!169346 0 (BalanceConc!2929 Empty!1460)))))

(assert (=> b!385525 (= lt!169374 (print!430 thiss!17480 lt!169346))))

(assert (=> b!385525 (= lt!169346 (singletonSeq!365 (h!9638 tokens!465)))))

(declare-fun b!385526 () Bool)

(declare-fun res!172825 () Bool)

(assert (=> b!385526 (=> (not res!172825) (not e!237194))))

(declare-fun isEmpty!3093 (List!4250) Bool)

(assert (=> b!385526 (= res!172825 (not (isEmpty!3093 rules!1920)))))

(declare-fun b!385527 () Bool)

(declare-fun Unit!6900 () Unit!6896)

(assert (=> b!385527 (= e!237209 Unit!6900)))

(declare-fun lt!169352 () Unit!6896)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!78 (LexerInterface!705 List!4250 List!4250 Rule!1438 Rule!1438 C!3008) Unit!6896)

(assert (=> b!385527 (= lt!169352 (lemmaSepRuleNotContainsCharContainedInANonSepRule!78 thiss!17480 rules!1920 rules!1920 (rule!1472 lt!169355) (rule!1472 separatorToken!170) lt!169385))))

(assert (=> b!385527 false))

(declare-fun b!385528 () Bool)

(declare-fun tp!118494 () Bool)

(declare-fun inv!5261 (String!5285) Bool)

(declare-fun inv!5265 (TokenValueInjection!1454) Bool)

(assert (=> b!385528 (= e!237187 (and tp!118494 (inv!5261 (tag!1059 (h!9637 rules!1920))) (inv!5265 (transformation!819 (h!9637 rules!1920))) e!237200))))

(declare-fun b!385529 () Bool)

(assert (=> b!385529 (= e!237191 e!237188)))

(declare-fun res!172831 () Bool)

(assert (=> b!385529 (=> (not res!172831) (not e!237188))))

(assert (=> b!385529 (= res!172831 (matchR!361 (regex!819 lt!169363) lt!169344))))

(assert (=> b!385529 (= lt!169363 (get!1507 lt!169370))))

(declare-fun b!385530 () Bool)

(assert (=> b!385530 (= e!237217 (isEmpty!3091 (_2!2733 lt!169362)))))

(declare-fun b!385531 () Bool)

(assert (=> b!385531 (= e!237219 (contains!896 rules!1920 (rule!1472 lt!169355)))))

(declare-fun tp!118498 () Bool)

(declare-fun b!385532 () Bool)

(assert (=> b!385532 (= e!237216 (and tp!118498 (inv!5261 (tag!1059 (rule!1472 (h!9638 tokens!465)))) (inv!5265 (transformation!819 (rule!1472 (h!9638 tokens!465)))) e!237220))))

(declare-fun b!385533 () Bool)

(assert (=> b!385533 (= e!237221 e!237189)))

(declare-fun res!172838 () Bool)

(assert (=> b!385533 (=> (not res!172838) (not e!237189))))

(assert (=> b!385533 (= res!172838 (= lt!169375 lt!169380))))

(assert (=> b!385533 (= lt!169380 (list!1843 (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 lt!169368 separatorToken!170 0)))))

(assert (=> b!385533 (= lt!169375 (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!385534 () Bool)

(declare-fun Unit!6901 () Unit!6896)

(assert (=> b!385534 (= e!237190 Unit!6901)))

(declare-fun b!385535 () Bool)

(declare-fun Unit!6902 () Unit!6896)

(assert (=> b!385535 (= e!237209 Unit!6902)))

(declare-fun b!385536 () Bool)

(declare-fun e!237186 () Bool)

(declare-fun tp!118501 () Bool)

(assert (=> b!385536 (= e!237186 (and tp!118501 (inv!5261 (tag!1059 (rule!1472 separatorToken!170))) (inv!5265 (transformation!819 (rule!1472 separatorToken!170))) e!237205))))

(declare-fun b!385537 () Bool)

(declare-fun tp!118493 () Bool)

(assert (=> b!385537 (= e!237208 (and (inv!5264 (h!9638 tokens!465)) e!237199 tp!118493))))

(declare-fun b!385538 () Bool)

(declare-fun Unit!6903 () Unit!6896)

(assert (=> b!385538 (= e!237190 Unit!6903)))

(assert (=> b!385538 false))

(declare-fun b!385539 () Bool)

(assert (=> b!385539 (= e!237204 (matchR!361 (regex!819 (rule!1472 (h!9638 tokens!465))) lt!169347))))

(declare-fun tp!118499 () Bool)

(declare-fun b!385540 () Bool)

(assert (=> b!385540 (= e!237193 (and (inv!21 (value!27657 separatorToken!170)) e!237186 tp!118499))))

(declare-fun b!385541 () Bool)

(declare-fun res!172821 () Bool)

(assert (=> b!385541 (=> res!172821 e!237185)))

(declare-fun isEmpty!3094 (BalanceConc!2930) Bool)

(assert (=> b!385541 (= res!172821 (isEmpty!3094 (_1!2733 (lex!497 thiss!17480 rules!1920 (seqFromList!1004 lt!169347)))))))

(assert (= (and start!38490 res!172818) b!385526))

(assert (= (and b!385526 res!172825) b!385524))

(assert (= (and b!385524 res!172823) b!385509))

(assert (= (and b!385509 res!172836) b!385518))

(assert (= (and b!385518 res!172832) b!385494))

(assert (= (and b!385494 res!172819) b!385522))

(assert (= (and b!385522 res!172815) b!385507))

(assert (= (and b!385507 res!172835) b!385501))

(assert (= (and b!385501 res!172842) b!385533))

(assert (= (and b!385533 res!172838) b!385521))

(assert (= (and b!385521 res!172834) b!385515))

(assert (= (and b!385515 (not res!172829)) b!385519))

(assert (= (and b!385519 res!172814) b!385502))

(assert (= (and b!385519 (not res!172833)) b!385525))

(assert (= (and b!385525 (not res!172839)) b!385506))

(assert (= (and b!385506 (not res!172837)) b!385541))

(assert (= (and b!385541 (not res!172821)) b!385517))

(assert (= (and b!385517 (not res!172841)) b!385510))

(assert (= (and b!385510 res!172813) b!385520))

(assert (= (and b!385520 res!172828) b!385539))

(assert (= (and b!385510 (not res!172830)) b!385495))

(assert (= (and b!385495 (not res!172827)) b!385497))

(assert (= (and b!385497 res!172817) b!385516))

(assert (= (and b!385495 c!75900) b!385538))

(assert (= (and b!385495 (not c!75900)) b!385534))

(assert (= (and b!385495 res!172824) b!385508))

(assert (= (and b!385508 res!172840) b!385530))

(assert (= (and b!385495 res!172826) b!385529))

(assert (= (and b!385529 res!172831) b!385513))

(assert (= (and b!385495 res!172822) b!385503))

(assert (= (and b!385503 res!172844) b!385496))

(assert (= (and b!385495 res!172820) b!385500))

(assert (= (and b!385500 res!172812) b!385504))

(assert (= (and b!385495 c!75901) b!385512))

(assert (= (and b!385495 (not c!75901)) b!385511))

(assert (= (and b!385512 res!172843) b!385505))

(assert (= (and b!385495 c!75902) b!385527))

(assert (= (and b!385495 (not c!75902)) b!385535))

(assert (= (and b!385495 (not res!172816)) b!385531))

(assert (= b!385528 b!385499))

(assert (= b!385523 b!385528))

(assert (= (and start!38490 ((_ is Cons!4240) rules!1920)) b!385523))

(assert (= b!385536 b!385498))

(assert (= b!385540 b!385536))

(assert (= start!38490 b!385540))

(assert (= b!385532 b!385493))

(assert (= b!385514 b!385532))

(assert (= b!385537 b!385514))

(assert (= (and start!38490 ((_ is Cons!4241) tokens!465)) b!385537))

(declare-fun m!577029 () Bool)

(assert (=> b!385522 m!577029))

(declare-fun m!577031 () Bool)

(assert (=> b!385528 m!577031))

(declare-fun m!577033 () Bool)

(assert (=> b!385528 m!577033))

(declare-fun m!577035 () Bool)

(assert (=> b!385529 m!577035))

(declare-fun m!577037 () Bool)

(assert (=> b!385529 m!577037))

(declare-fun m!577039 () Bool)

(assert (=> b!385512 m!577039))

(declare-fun m!577041 () Bool)

(assert (=> b!385512 m!577041))

(declare-fun m!577043 () Bool)

(assert (=> b!385514 m!577043))

(declare-fun m!577045 () Bool)

(assert (=> b!385506 m!577045))

(declare-fun m!577047 () Bool)

(assert (=> b!385517 m!577047))

(assert (=> b!385517 m!577047))

(declare-fun m!577049 () Bool)

(assert (=> b!385517 m!577049))

(assert (=> b!385517 m!577049))

(declare-fun m!577051 () Bool)

(assert (=> b!385517 m!577051))

(declare-fun m!577053 () Bool)

(assert (=> b!385517 m!577053))

(declare-fun m!577055 () Bool)

(assert (=> b!385527 m!577055))

(declare-fun m!577057 () Bool)

(assert (=> b!385524 m!577057))

(declare-fun m!577059 () Bool)

(assert (=> b!385515 m!577059))

(declare-fun m!577061 () Bool)

(assert (=> b!385515 m!577061))

(declare-fun m!577063 () Bool)

(assert (=> b!385515 m!577063))

(declare-fun m!577065 () Bool)

(assert (=> b!385515 m!577065))

(declare-fun m!577067 () Bool)

(assert (=> b!385515 m!577067))

(assert (=> b!385515 m!577065))

(declare-fun m!577069 () Bool)

(assert (=> b!385515 m!577069))

(declare-fun m!577071 () Bool)

(assert (=> b!385515 m!577071))

(declare-fun m!577073 () Bool)

(assert (=> b!385515 m!577073))

(declare-fun m!577075 () Bool)

(assert (=> b!385515 m!577075))

(assert (=> b!385515 m!577075))

(declare-fun m!577077 () Bool)

(assert (=> b!385515 m!577077))

(declare-fun m!577079 () Bool)

(assert (=> b!385515 m!577079))

(declare-fun m!577081 () Bool)

(assert (=> b!385515 m!577081))

(assert (=> b!385515 m!577059))

(assert (=> b!385515 m!577079))

(assert (=> b!385515 m!577069))

(declare-fun m!577083 () Bool)

(assert (=> b!385515 m!577083))

(declare-fun m!577085 () Bool)

(assert (=> b!385503 m!577085))

(declare-fun m!577087 () Bool)

(assert (=> b!385531 m!577087))

(declare-fun m!577089 () Bool)

(assert (=> b!385502 m!577089))

(declare-fun m!577091 () Bool)

(assert (=> b!385520 m!577091))

(declare-fun m!577093 () Bool)

(assert (=> b!385541 m!577093))

(assert (=> b!385541 m!577093))

(declare-fun m!577095 () Bool)

(assert (=> b!385541 m!577095))

(declare-fun m!577097 () Bool)

(assert (=> b!385541 m!577097))

(declare-fun m!577099 () Bool)

(assert (=> b!385536 m!577099))

(declare-fun m!577101 () Bool)

(assert (=> b!385536 m!577101))

(declare-fun m!577103 () Bool)

(assert (=> b!385496 m!577103))

(declare-fun m!577105 () Bool)

(assert (=> b!385518 m!577105))

(declare-fun m!577107 () Bool)

(assert (=> b!385509 m!577107))

(declare-fun m!577109 () Bool)

(assert (=> b!385509 m!577109))

(declare-fun m!577111 () Bool)

(assert (=> b!385526 m!577111))

(declare-fun m!577113 () Bool)

(assert (=> b!385521 m!577113))

(assert (=> b!385521 m!577113))

(declare-fun m!577115 () Bool)

(assert (=> b!385521 m!577115))

(declare-fun m!577117 () Bool)

(assert (=> b!385507 m!577117))

(declare-fun m!577119 () Bool)

(assert (=> b!385540 m!577119))

(declare-fun m!577121 () Bool)

(assert (=> b!385525 m!577121))

(declare-fun m!577123 () Bool)

(assert (=> b!385525 m!577123))

(declare-fun m!577125 () Bool)

(assert (=> b!385525 m!577125))

(declare-fun m!577127 () Bool)

(assert (=> b!385525 m!577127))

(declare-fun m!577129 () Bool)

(assert (=> b!385525 m!577129))

(declare-fun m!577131 () Bool)

(assert (=> b!385495 m!577131))

(declare-fun m!577133 () Bool)

(assert (=> b!385495 m!577133))

(declare-fun m!577135 () Bool)

(assert (=> b!385495 m!577135))

(declare-fun m!577137 () Bool)

(assert (=> b!385495 m!577137))

(declare-fun m!577139 () Bool)

(assert (=> b!385495 m!577139))

(declare-fun m!577141 () Bool)

(assert (=> b!385495 m!577141))

(declare-fun m!577143 () Bool)

(assert (=> b!385495 m!577143))

(declare-fun m!577145 () Bool)

(assert (=> b!385495 m!577145))

(declare-fun m!577147 () Bool)

(assert (=> b!385495 m!577147))

(declare-fun m!577149 () Bool)

(assert (=> b!385495 m!577149))

(declare-fun m!577151 () Bool)

(assert (=> b!385495 m!577151))

(declare-fun m!577153 () Bool)

(assert (=> b!385495 m!577153))

(assert (=> b!385495 m!577141))

(declare-fun m!577155 () Bool)

(assert (=> b!385495 m!577155))

(declare-fun m!577157 () Bool)

(assert (=> b!385495 m!577157))

(declare-fun m!577159 () Bool)

(assert (=> b!385495 m!577159))

(declare-fun m!577161 () Bool)

(assert (=> b!385495 m!577161))

(declare-fun m!577163 () Bool)

(assert (=> b!385495 m!577163))

(declare-fun m!577165 () Bool)

(assert (=> b!385495 m!577165))

(declare-fun m!577167 () Bool)

(assert (=> b!385495 m!577167))

(declare-fun m!577169 () Bool)

(assert (=> b!385495 m!577169))

(declare-fun m!577171 () Bool)

(assert (=> b!385495 m!577171))

(declare-fun m!577173 () Bool)

(assert (=> b!385495 m!577173))

(declare-fun m!577175 () Bool)

(assert (=> b!385495 m!577175))

(declare-fun m!577177 () Bool)

(assert (=> b!385495 m!577177))

(declare-fun m!577179 () Bool)

(assert (=> b!385495 m!577179))

(declare-fun m!577181 () Bool)

(assert (=> b!385495 m!577181))

(declare-fun m!577183 () Bool)

(assert (=> b!385495 m!577183))

(declare-fun m!577185 () Bool)

(assert (=> b!385495 m!577185))

(assert (=> b!385495 m!577163))

(declare-fun m!577187 () Bool)

(assert (=> b!385495 m!577187))

(declare-fun m!577189 () Bool)

(assert (=> b!385495 m!577189))

(declare-fun m!577191 () Bool)

(assert (=> b!385495 m!577191))

(declare-fun m!577193 () Bool)

(assert (=> b!385495 m!577193))

(declare-fun m!577195 () Bool)

(assert (=> b!385495 m!577195))

(declare-fun m!577197 () Bool)

(assert (=> b!385495 m!577197))

(declare-fun m!577199 () Bool)

(assert (=> b!385495 m!577199))

(assert (=> b!385495 m!577193))

(declare-fun m!577201 () Bool)

(assert (=> b!385495 m!577201))

(declare-fun m!577203 () Bool)

(assert (=> b!385495 m!577203))

(assert (=> b!385495 m!577169))

(declare-fun m!577205 () Bool)

(assert (=> b!385495 m!577205))

(declare-fun m!577207 () Bool)

(assert (=> b!385530 m!577207))

(declare-fun m!577209 () Bool)

(assert (=> b!385516 m!577209))

(declare-fun m!577211 () Bool)

(assert (=> b!385516 m!577211))

(declare-fun m!577213 () Bool)

(assert (=> start!38490 m!577213))

(declare-fun m!577215 () Bool)

(assert (=> b!385532 m!577215))

(declare-fun m!577217 () Bool)

(assert (=> b!385532 m!577217))

(declare-fun m!577219 () Bool)

(assert (=> b!385497 m!577219))

(assert (=> b!385497 m!577163))

(declare-fun m!577221 () Bool)

(assert (=> b!385508 m!577221))

(declare-fun m!577223 () Bool)

(assert (=> b!385500 m!577223))

(declare-fun m!577225 () Bool)

(assert (=> b!385500 m!577225))

(declare-fun m!577227 () Bool)

(assert (=> b!385510 m!577227))

(declare-fun m!577229 () Bool)

(assert (=> b!385510 m!577229))

(declare-fun m!577231 () Bool)

(assert (=> b!385510 m!577231))

(declare-fun m!577233 () Bool)

(assert (=> b!385533 m!577233))

(assert (=> b!385533 m!577233))

(declare-fun m!577235 () Bool)

(assert (=> b!385533 m!577235))

(declare-fun m!577237 () Bool)

(assert (=> b!385533 m!577237))

(declare-fun m!577239 () Bool)

(assert (=> b!385537 m!577239))

(declare-fun m!577241 () Bool)

(assert (=> b!385539 m!577241))

(check-sat (not b!385515) (not b!385532) (not b!385510) (not b_next!11875) (not b!385514) (not b!385530) (not b!385526) (not b_next!11881) (not b!385529) (not b!385541) (not b!385537) (not b!385539) b_and!38715 b_and!38705 b_and!38707 b_and!38711 (not b!385520) (not b!385523) (not b!385528) (not b!385518) (not b!385500) b_and!38709 (not b!385509) (not b!385512) (not b!385521) (not start!38490) (not b!385517) (not b!385502) (not b!385496) (not b!385525) (not b!385533) (not b_next!11879) (not b!385550) (not b!385524) (not b!385495) (not b!385516) (not b_next!11873) (not b!385503) (not b!385508) b_and!38713 (not b!385497) (not b!385527) (not b!385522) (not b!385536) (not b!385507) (not b!385531) (not b!385540) (not b!385506) (not b_next!11883) (not b_next!11877))
(check-sat b_and!38709 (not b_next!11879) (not b_next!11875) (not b_next!11873) b_and!38713 (not b_next!11881) b_and!38715 b_and!38705 b_and!38707 b_and!38711 (not b_next!11883) (not b_next!11877))
(get-model)

(declare-fun d!136705 () Bool)

(assert (=> d!136705 (= (get!1506 lt!169378) (v!15216 lt!169378))))

(assert (=> b!385516 d!136705))

(declare-fun d!136707 () Bool)

(assert (=> d!136707 (= (head!1040 tokens!465) (h!9638 tokens!465))))

(assert (=> b!385516 d!136707))

(declare-fun d!136711 () Bool)

(declare-fun dynLambda!2461 (Int Token!1382) Bool)

(assert (=> d!136711 (dynLambda!2461 lambda!11984 lt!169355)))

(declare-fun lt!169405 () Unit!6896)

(declare-fun choose!3078 (List!4251 Int Token!1382) Unit!6896)

(assert (=> d!136711 (= lt!169405 (choose!3078 tokens!465 lambda!11984 lt!169355))))

(declare-fun e!237246 () Bool)

(assert (=> d!136711 e!237246))

(declare-fun res!172874 () Bool)

(assert (=> d!136711 (=> (not res!172874) (not e!237246))))

(assert (=> d!136711 (= res!172874 (forall!1184 tokens!465 lambda!11984))))

(assert (=> d!136711 (= (forallContained!372 tokens!465 lambda!11984 lt!169355) lt!169405)))

(declare-fun b!385575 () Bool)

(declare-fun contains!898 (List!4251 Token!1382) Bool)

(assert (=> b!385575 (= e!237246 (contains!898 tokens!465 lt!169355))))

(assert (= (and d!136711 res!172874) b!385575))

(declare-fun b_lambda!15195 () Bool)

(assert (=> (not b_lambda!15195) (not d!136711)))

(declare-fun m!577281 () Bool)

(assert (=> d!136711 m!577281))

(declare-fun m!577283 () Bool)

(assert (=> d!136711 m!577283))

(declare-fun m!577285 () Bool)

(assert (=> d!136711 m!577285))

(declare-fun m!577287 () Bool)

(assert (=> b!385575 m!577287))

(assert (=> b!385495 d!136711))

(declare-fun d!136715 () Bool)

(declare-fun e!237249 () Bool)

(assert (=> d!136715 e!237249))

(declare-fun res!172879 () Bool)

(assert (=> d!136715 (=> (not res!172879) (not e!237249))))

(assert (=> d!136715 (= res!172879 (isDefined!878 (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 separatorToken!170)))))))

(declare-fun lt!169408 () Unit!6896)

(declare-fun choose!3079 (LexerInterface!705 List!4250 List!4249 Token!1382) Unit!6896)

(assert (=> d!136715 (= lt!169408 (choose!3079 thiss!17480 rules!1920 lt!169344 separatorToken!170))))

(assert (=> d!136715 (rulesInvariant!671 thiss!17480 rules!1920)))

(assert (=> d!136715 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!178 thiss!17480 rules!1920 lt!169344 separatorToken!170) lt!169408)))

(declare-fun b!385580 () Bool)

(declare-fun res!172880 () Bool)

(assert (=> b!385580 (=> (not res!172880) (not e!237249))))

(assert (=> b!385580 (= res!172880 (matchR!361 (regex!819 (get!1507 (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 separatorToken!170))))) (list!1843 (charsOf!462 separatorToken!170))))))

(declare-fun b!385581 () Bool)

(assert (=> b!385581 (= e!237249 (= (rule!1472 separatorToken!170) (get!1507 (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 separatorToken!170))))))))

(assert (= (and d!136715 res!172879) b!385580))

(assert (= (and b!385580 res!172880) b!385581))

(assert (=> d!136715 m!577167))

(assert (=> d!136715 m!577167))

(declare-fun m!577289 () Bool)

(assert (=> d!136715 m!577289))

(declare-fun m!577291 () Bool)

(assert (=> d!136715 m!577291))

(assert (=> d!136715 m!577057))

(assert (=> b!385580 m!577167))

(declare-fun m!577293 () Bool)

(assert (=> b!385580 m!577293))

(assert (=> b!385580 m!577065))

(assert (=> b!385580 m!577067))

(declare-fun m!577295 () Bool)

(assert (=> b!385580 m!577295))

(assert (=> b!385580 m!577065))

(assert (=> b!385580 m!577067))

(assert (=> b!385580 m!577167))

(assert (=> b!385581 m!577167))

(assert (=> b!385581 m!577167))

(assert (=> b!385581 m!577293))

(assert (=> b!385495 d!136715))

(declare-fun d!136717 () Bool)

(declare-fun lt!169424 () BalanceConc!2928)

(declare-fun printListTailRec!186 (LexerInterface!705 List!4251 List!4249) List!4249)

(declare-fun dropList!221 (BalanceConc!2930 Int) List!4251)

(assert (=> d!136717 (= (list!1843 lt!169424) (printListTailRec!186 thiss!17480 (dropList!221 lt!169360 0) (list!1843 (BalanceConc!2929 Empty!1460))))))

(declare-fun e!237255 () BalanceConc!2928)

(assert (=> d!136717 (= lt!169424 e!237255)))

(declare-fun c!75911 () Bool)

(assert (=> d!136717 (= c!75911 (>= 0 (size!3445 lt!169360)))))

(declare-fun e!237254 () Bool)

(assert (=> d!136717 e!237254))

(declare-fun res!172883 () Bool)

(assert (=> d!136717 (=> (not res!172883) (not e!237254))))

(assert (=> d!136717 (= res!172883 (>= 0 0))))

(assert (=> d!136717 (= (printTailRec!391 thiss!17480 lt!169360 0 (BalanceConc!2929 Empty!1460)) lt!169424)))

(declare-fun b!385588 () Bool)

(assert (=> b!385588 (= e!237254 (<= 0 (size!3445 lt!169360)))))

(declare-fun b!385589 () Bool)

(assert (=> b!385589 (= e!237255 (BalanceConc!2929 Empty!1460))))

(declare-fun b!385590 () Bool)

(declare-fun ++!1199 (BalanceConc!2928 BalanceConc!2928) BalanceConc!2928)

(assert (=> b!385590 (= e!237255 (printTailRec!391 thiss!17480 lt!169360 (+ 0 1) (++!1199 (BalanceConc!2929 Empty!1460) (charsOf!462 (apply!1018 lt!169360 0)))))))

(declare-fun lt!169426 () List!4251)

(declare-fun list!1845 (BalanceConc!2930) List!4251)

(assert (=> b!385590 (= lt!169426 (list!1845 lt!169360))))

(declare-fun lt!169425 () Unit!6896)

(declare-fun lemmaDropApply!261 (List!4251 Int) Unit!6896)

(assert (=> b!385590 (= lt!169425 (lemmaDropApply!261 lt!169426 0))))

(declare-fun drop!284 (List!4251 Int) List!4251)

(declare-fun apply!1022 (List!4251 Int) Token!1382)

(assert (=> b!385590 (= (head!1040 (drop!284 lt!169426 0)) (apply!1022 lt!169426 0))))

(declare-fun lt!169428 () Unit!6896)

(assert (=> b!385590 (= lt!169428 lt!169425)))

(declare-fun lt!169423 () List!4251)

(assert (=> b!385590 (= lt!169423 (list!1845 lt!169360))))

(declare-fun lt!169427 () Unit!6896)

(declare-fun lemmaDropTail!253 (List!4251 Int) Unit!6896)

(assert (=> b!385590 (= lt!169427 (lemmaDropTail!253 lt!169423 0))))

(declare-fun tail!592 (List!4251) List!4251)

(assert (=> b!385590 (= (tail!592 (drop!284 lt!169423 0)) (drop!284 lt!169423 (+ 0 1)))))

(declare-fun lt!169429 () Unit!6896)

(assert (=> b!385590 (= lt!169429 lt!169427)))

(assert (= (and d!136717 res!172883) b!385588))

(assert (= (and d!136717 c!75911) b!385589))

(assert (= (and d!136717 (not c!75911)) b!385590))

(declare-fun m!577297 () Bool)

(assert (=> d!136717 m!577297))

(declare-fun m!577299 () Bool)

(assert (=> d!136717 m!577299))

(assert (=> d!136717 m!577297))

(declare-fun m!577301 () Bool)

(assert (=> d!136717 m!577301))

(declare-fun m!577303 () Bool)

(assert (=> d!136717 m!577303))

(assert (=> d!136717 m!577299))

(declare-fun m!577305 () Bool)

(assert (=> d!136717 m!577305))

(assert (=> b!385588 m!577305))

(declare-fun m!577307 () Bool)

(assert (=> b!385590 m!577307))

(declare-fun m!577309 () Bool)

(assert (=> b!385590 m!577309))

(declare-fun m!577311 () Bool)

(assert (=> b!385590 m!577311))

(declare-fun m!577313 () Bool)

(assert (=> b!385590 m!577313))

(declare-fun m!577315 () Bool)

(assert (=> b!385590 m!577315))

(declare-fun m!577317 () Bool)

(assert (=> b!385590 m!577317))

(assert (=> b!385590 m!577307))

(declare-fun m!577319 () Bool)

(assert (=> b!385590 m!577319))

(assert (=> b!385590 m!577309))

(declare-fun m!577321 () Bool)

(assert (=> b!385590 m!577321))

(assert (=> b!385590 m!577321))

(declare-fun m!577323 () Bool)

(assert (=> b!385590 m!577323))

(declare-fun m!577325 () Bool)

(assert (=> b!385590 m!577325))

(declare-fun m!577327 () Bool)

(assert (=> b!385590 m!577327))

(declare-fun m!577329 () Bool)

(assert (=> b!385590 m!577329))

(assert (=> b!385590 m!577311))

(assert (=> b!385590 m!577315))

(declare-fun m!577331 () Bool)

(assert (=> b!385590 m!577331))

(assert (=> b!385495 d!136717))

(declare-fun d!136719 () Bool)

(assert (=> d!136719 (isPrefix!479 lt!169347 (++!1198 lt!169347 lt!169364))))

(declare-fun lt!169432 () Unit!6896)

(declare-fun choose!3080 (List!4249 List!4249) Unit!6896)

(assert (=> d!136719 (= lt!169432 (choose!3080 lt!169347 lt!169364))))

(assert (=> d!136719 (= (lemmaConcatTwoListThenFirstIsPrefix!370 lt!169347 lt!169364) lt!169432)))

(declare-fun bs!46870 () Bool)

(assert (= bs!46870 d!136719))

(assert (=> bs!46870 m!577073))

(assert (=> bs!46870 m!577073))

(declare-fun m!577333 () Bool)

(assert (=> bs!46870 m!577333))

(declare-fun m!577335 () Bool)

(assert (=> bs!46870 m!577335))

(assert (=> b!385495 d!136719))

(declare-fun b!385601 () Bool)

(declare-fun e!237263 () Bool)

(declare-fun tail!593 (List!4249) List!4249)

(assert (=> b!385601 (= e!237263 (isPrefix!479 (tail!593 lt!169347) (tail!593 lt!169379)))))

(declare-fun b!385599 () Bool)

(declare-fun e!237264 () Bool)

(assert (=> b!385599 (= e!237264 e!237263)))

(declare-fun res!172893 () Bool)

(assert (=> b!385599 (=> (not res!172893) (not e!237263))))

(assert (=> b!385599 (= res!172893 (not ((_ is Nil!4239) lt!169379)))))

(declare-fun b!385600 () Bool)

(declare-fun res!172895 () Bool)

(assert (=> b!385600 (=> (not res!172895) (not e!237263))))

(assert (=> b!385600 (= res!172895 (= (head!1039 lt!169347) (head!1039 lt!169379)))))

(declare-fun d!136721 () Bool)

(declare-fun e!237262 () Bool)

(assert (=> d!136721 e!237262))

(declare-fun res!172892 () Bool)

(assert (=> d!136721 (=> res!172892 e!237262)))

(declare-fun lt!169435 () Bool)

(assert (=> d!136721 (= res!172892 (not lt!169435))))

(assert (=> d!136721 (= lt!169435 e!237264)))

(declare-fun res!172894 () Bool)

(assert (=> d!136721 (=> res!172894 e!237264)))

(assert (=> d!136721 (= res!172894 ((_ is Nil!4239) lt!169347))))

(assert (=> d!136721 (= (isPrefix!479 lt!169347 lt!169379) lt!169435)))

(declare-fun b!385602 () Bool)

(declare-fun size!3448 (List!4249) Int)

(assert (=> b!385602 (= e!237262 (>= (size!3448 lt!169379) (size!3448 lt!169347)))))

(assert (= (and d!136721 (not res!172894)) b!385599))

(assert (= (and b!385599 res!172893) b!385600))

(assert (= (and b!385600 res!172895) b!385601))

(assert (= (and d!136721 (not res!172892)) b!385602))

(declare-fun m!577337 () Bool)

(assert (=> b!385601 m!577337))

(declare-fun m!577339 () Bool)

(assert (=> b!385601 m!577339))

(assert (=> b!385601 m!577337))

(assert (=> b!385601 m!577339))

(declare-fun m!577341 () Bool)

(assert (=> b!385601 m!577341))

(declare-fun m!577343 () Bool)

(assert (=> b!385600 m!577343))

(declare-fun m!577345 () Bool)

(assert (=> b!385600 m!577345))

(declare-fun m!577347 () Bool)

(assert (=> b!385602 m!577347))

(declare-fun m!577349 () Bool)

(assert (=> b!385602 m!577349))

(assert (=> b!385495 d!136721))

(declare-fun d!136723 () Bool)

(assert (=> d!136723 (= (isEmpty!3090 (t!58841 tokens!465)) ((_ is Nil!4241) (t!58841 tokens!465)))))

(assert (=> b!385495 d!136723))

(declare-fun d!136725 () Bool)

(declare-fun list!1846 (Conc!1460) List!4249)

(assert (=> d!136725 (= (list!1843 (charsOf!462 lt!169355)) (list!1846 (c!75903 (charsOf!462 lt!169355))))))

(declare-fun bs!46871 () Bool)

(assert (= bs!46871 d!136725))

(declare-fun m!577351 () Bool)

(assert (=> bs!46871 m!577351))

(assert (=> b!385495 d!136725))

(declare-fun b!385621 () Bool)

(declare-fun res!172917 () Bool)

(declare-fun e!237274 () Bool)

(assert (=> b!385621 (=> (not res!172917) (not e!237274))))

(declare-fun lt!169449 () Option!1040)

(assert (=> b!385621 (= res!172917 (matchR!361 (regex!819 (rule!1472 (_1!2734 (get!1506 lt!169449)))) (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169449))))))))

(declare-fun b!385622 () Bool)

(declare-fun res!172916 () Bool)

(assert (=> b!385622 (=> (not res!172916) (not e!237274))))

(declare-fun apply!1023 (TokenValueInjection!1454 BalanceConc!2928) TokenValue!841)

(assert (=> b!385622 (= res!172916 (= (value!27657 (_1!2734 (get!1506 lt!169449))) (apply!1023 (transformation!819 (rule!1472 (_1!2734 (get!1506 lt!169449)))) (seqFromList!1004 (originalCharacters!862 (_1!2734 (get!1506 lt!169449)))))))))

(declare-fun b!385623 () Bool)

(declare-fun e!237273 () Option!1040)

(declare-fun call!24787 () Option!1040)

(assert (=> b!385623 (= e!237273 call!24787)))

(declare-fun b!385624 () Bool)

(declare-fun res!172914 () Bool)

(assert (=> b!385624 (=> (not res!172914) (not e!237274))))

(assert (=> b!385624 (= res!172914 (< (size!3448 (_2!2734 (get!1506 lt!169449))) (size!3448 lt!169375)))))

(declare-fun b!385625 () Bool)

(declare-fun e!237275 () Bool)

(assert (=> b!385625 (= e!237275 e!237274)))

(declare-fun res!172913 () Bool)

(assert (=> b!385625 (=> (not res!172913) (not e!237274))))

(assert (=> b!385625 (= res!172913 (isDefined!879 lt!169449))))

(declare-fun d!136727 () Bool)

(assert (=> d!136727 e!237275))

(declare-fun res!172915 () Bool)

(assert (=> d!136727 (=> res!172915 e!237275)))

(declare-fun isEmpty!3098 (Option!1040) Bool)

(assert (=> d!136727 (= res!172915 (isEmpty!3098 lt!169449))))

(assert (=> d!136727 (= lt!169449 e!237273)))

(declare-fun c!75914 () Bool)

(assert (=> d!136727 (= c!75914 (and ((_ is Cons!4240) rules!1920) ((_ is Nil!4240) (t!58840 rules!1920))))))

(declare-fun lt!169451 () Unit!6896)

(declare-fun lt!169452 () Unit!6896)

(assert (=> d!136727 (= lt!169451 lt!169452)))

(assert (=> d!136727 (isPrefix!479 lt!169375 lt!169375)))

(declare-fun lemmaIsPrefixRefl!265 (List!4249 List!4249) Unit!6896)

(assert (=> d!136727 (= lt!169452 (lemmaIsPrefixRefl!265 lt!169375 lt!169375))))

(declare-fun rulesValidInductive!260 (LexerInterface!705 List!4250) Bool)

(assert (=> d!136727 (rulesValidInductive!260 thiss!17480 rules!1920)))

(assert (=> d!136727 (= (maxPrefix!421 thiss!17480 rules!1920 lt!169375) lt!169449)))

(declare-fun bm!24782 () Bool)

(declare-fun maxPrefixOneRule!199 (LexerInterface!705 Rule!1438 List!4249) Option!1040)

(assert (=> bm!24782 (= call!24787 (maxPrefixOneRule!199 thiss!17480 (h!9637 rules!1920) lt!169375))))

(declare-fun b!385626 () Bool)

(declare-fun res!172918 () Bool)

(assert (=> b!385626 (=> (not res!172918) (not e!237274))))

(assert (=> b!385626 (= res!172918 (= (++!1198 (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169449)))) (_2!2734 (get!1506 lt!169449))) lt!169375))))

(declare-fun b!385627 () Bool)

(assert (=> b!385627 (= e!237274 (contains!896 rules!1920 (rule!1472 (_1!2734 (get!1506 lt!169449)))))))

(declare-fun b!385628 () Bool)

(declare-fun res!172912 () Bool)

(assert (=> b!385628 (=> (not res!172912) (not e!237274))))

(assert (=> b!385628 (= res!172912 (= (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169449)))) (originalCharacters!862 (_1!2734 (get!1506 lt!169449)))))))

(declare-fun b!385629 () Bool)

(declare-fun lt!169450 () Option!1040)

(declare-fun lt!169448 () Option!1040)

(assert (=> b!385629 (= e!237273 (ite (and ((_ is None!1039) lt!169450) ((_ is None!1039) lt!169448)) None!1039 (ite ((_ is None!1039) lt!169448) lt!169450 (ite ((_ is None!1039) lt!169450) lt!169448 (ite (>= (size!3444 (_1!2734 (v!15216 lt!169450))) (size!3444 (_1!2734 (v!15216 lt!169448)))) lt!169450 lt!169448)))))))

(assert (=> b!385629 (= lt!169450 call!24787)))

(assert (=> b!385629 (= lt!169448 (maxPrefix!421 thiss!17480 (t!58840 rules!1920) lt!169375))))

(assert (= (and d!136727 c!75914) b!385623))

(assert (= (and d!136727 (not c!75914)) b!385629))

(assert (= (or b!385623 b!385629) bm!24782))

(assert (= (and d!136727 (not res!172915)) b!385625))

(assert (= (and b!385625 res!172913) b!385628))

(assert (= (and b!385628 res!172912) b!385624))

(assert (= (and b!385624 res!172914) b!385626))

(assert (= (and b!385626 res!172918) b!385622))

(assert (= (and b!385622 res!172916) b!385621))

(assert (= (and b!385621 res!172917) b!385627))

(declare-fun m!577353 () Bool)

(assert (=> b!385625 m!577353))

(declare-fun m!577355 () Bool)

(assert (=> b!385626 m!577355))

(declare-fun m!577357 () Bool)

(assert (=> b!385626 m!577357))

(assert (=> b!385626 m!577357))

(declare-fun m!577359 () Bool)

(assert (=> b!385626 m!577359))

(assert (=> b!385626 m!577359))

(declare-fun m!577361 () Bool)

(assert (=> b!385626 m!577361))

(declare-fun m!577363 () Bool)

(assert (=> d!136727 m!577363))

(declare-fun m!577365 () Bool)

(assert (=> d!136727 m!577365))

(declare-fun m!577367 () Bool)

(assert (=> d!136727 m!577367))

(declare-fun m!577369 () Bool)

(assert (=> d!136727 m!577369))

(assert (=> b!385622 m!577355))

(declare-fun m!577371 () Bool)

(assert (=> b!385622 m!577371))

(assert (=> b!385622 m!577371))

(declare-fun m!577373 () Bool)

(assert (=> b!385622 m!577373))

(declare-fun m!577375 () Bool)

(assert (=> b!385629 m!577375))

(assert (=> b!385628 m!577355))

(assert (=> b!385628 m!577357))

(assert (=> b!385628 m!577357))

(assert (=> b!385628 m!577359))

(assert (=> b!385621 m!577355))

(assert (=> b!385621 m!577357))

(assert (=> b!385621 m!577357))

(assert (=> b!385621 m!577359))

(assert (=> b!385621 m!577359))

(declare-fun m!577377 () Bool)

(assert (=> b!385621 m!577377))

(assert (=> b!385627 m!577355))

(declare-fun m!577379 () Bool)

(assert (=> b!385627 m!577379))

(declare-fun m!577381 () Bool)

(assert (=> bm!24782 m!577381))

(assert (=> b!385624 m!577355))

(declare-fun m!577383 () Bool)

(assert (=> b!385624 m!577383))

(declare-fun m!577385 () Bool)

(assert (=> b!385624 m!577385))

(assert (=> b!385495 d!136727))

(declare-fun d!136729 () Bool)

(declare-fun isEmpty!3099 (Option!1039) Bool)

(assert (=> d!136729 (= (isDefined!878 lt!169370) (not (isEmpty!3099 lt!169370)))))

(declare-fun bs!46872 () Bool)

(assert (= bs!46872 d!136729))

(declare-fun m!577387 () Bool)

(assert (=> bs!46872 m!577387))

(assert (=> b!385495 d!136729))

(declare-fun d!136731 () Bool)

(declare-fun lt!169456 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!680 (List!4249) (InoxSet C!3008))

(assert (=> d!136731 (= lt!169456 (select (content!680 (usedCharacters!120 (regex!819 (rule!1472 separatorToken!170)))) lt!169385))))

(declare-fun e!237285 () Bool)

(assert (=> d!136731 (= lt!169456 e!237285)))

(declare-fun res!172925 () Bool)

(assert (=> d!136731 (=> (not res!172925) (not e!237285))))

(assert (=> d!136731 (= res!172925 ((_ is Cons!4239) (usedCharacters!120 (regex!819 (rule!1472 separatorToken!170)))))))

(assert (=> d!136731 (= (contains!897 (usedCharacters!120 (regex!819 (rule!1472 separatorToken!170))) lt!169385) lt!169456)))

(declare-fun b!385640 () Bool)

(declare-fun e!237284 () Bool)

(assert (=> b!385640 (= e!237285 e!237284)))

(declare-fun res!172924 () Bool)

(assert (=> b!385640 (=> res!172924 e!237284)))

(assert (=> b!385640 (= res!172924 (= (h!9636 (usedCharacters!120 (regex!819 (rule!1472 separatorToken!170)))) lt!169385))))

(declare-fun b!385641 () Bool)

(assert (=> b!385641 (= e!237284 (contains!897 (t!58839 (usedCharacters!120 (regex!819 (rule!1472 separatorToken!170)))) lt!169385))))

(assert (= (and d!136731 res!172925) b!385640))

(assert (= (and b!385640 (not res!172924)) b!385641))

(assert (=> d!136731 m!577169))

(declare-fun m!577397 () Bool)

(assert (=> d!136731 m!577397))

(declare-fun m!577399 () Bool)

(assert (=> d!136731 m!577399))

(declare-fun m!577401 () Bool)

(assert (=> b!385641 m!577401))

(assert (=> b!385495 d!136731))

(declare-fun d!136735 () Bool)

(assert (=> d!136735 (= (head!1039 lt!169372) (h!9636 lt!169372))))

(assert (=> b!385495 d!136735))

(declare-fun b!385642 () Bool)

(declare-fun res!172931 () Bool)

(declare-fun e!237287 () Bool)

(assert (=> b!385642 (=> (not res!172931) (not e!237287))))

(declare-fun lt!169458 () Option!1040)

(assert (=> b!385642 (= res!172931 (matchR!361 (regex!819 (rule!1472 (_1!2734 (get!1506 lt!169458)))) (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169458))))))))

(declare-fun b!385643 () Bool)

(declare-fun res!172930 () Bool)

(assert (=> b!385643 (=> (not res!172930) (not e!237287))))

(assert (=> b!385643 (= res!172930 (= (value!27657 (_1!2734 (get!1506 lt!169458))) (apply!1023 (transformation!819 (rule!1472 (_1!2734 (get!1506 lt!169458)))) (seqFromList!1004 (originalCharacters!862 (_1!2734 (get!1506 lt!169458)))))))))

(declare-fun b!385644 () Bool)

(declare-fun e!237286 () Option!1040)

(declare-fun call!24788 () Option!1040)

(assert (=> b!385644 (= e!237286 call!24788)))

(declare-fun b!385645 () Bool)

(declare-fun res!172928 () Bool)

(assert (=> b!385645 (=> (not res!172928) (not e!237287))))

(assert (=> b!385645 (= res!172928 (< (size!3448 (_2!2734 (get!1506 lt!169458))) (size!3448 lt!169364)))))

(declare-fun b!385646 () Bool)

(declare-fun e!237288 () Bool)

(assert (=> b!385646 (= e!237288 e!237287)))

(declare-fun res!172927 () Bool)

(assert (=> b!385646 (=> (not res!172927) (not e!237287))))

(assert (=> b!385646 (= res!172927 (isDefined!879 lt!169458))))

(declare-fun d!136739 () Bool)

(assert (=> d!136739 e!237288))

(declare-fun res!172929 () Bool)

(assert (=> d!136739 (=> res!172929 e!237288)))

(assert (=> d!136739 (= res!172929 (isEmpty!3098 lt!169458))))

(assert (=> d!136739 (= lt!169458 e!237286)))

(declare-fun c!75915 () Bool)

(assert (=> d!136739 (= c!75915 (and ((_ is Cons!4240) rules!1920) ((_ is Nil!4240) (t!58840 rules!1920))))))

(declare-fun lt!169460 () Unit!6896)

(declare-fun lt!169461 () Unit!6896)

(assert (=> d!136739 (= lt!169460 lt!169461)))

(assert (=> d!136739 (isPrefix!479 lt!169364 lt!169364)))

(assert (=> d!136739 (= lt!169461 (lemmaIsPrefixRefl!265 lt!169364 lt!169364))))

(assert (=> d!136739 (rulesValidInductive!260 thiss!17480 rules!1920)))

(assert (=> d!136739 (= (maxPrefix!421 thiss!17480 rules!1920 lt!169364) lt!169458)))

(declare-fun bm!24783 () Bool)

(assert (=> bm!24783 (= call!24788 (maxPrefixOneRule!199 thiss!17480 (h!9637 rules!1920) lt!169364))))

(declare-fun b!385647 () Bool)

(declare-fun res!172932 () Bool)

(assert (=> b!385647 (=> (not res!172932) (not e!237287))))

(assert (=> b!385647 (= res!172932 (= (++!1198 (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169458)))) (_2!2734 (get!1506 lt!169458))) lt!169364))))

(declare-fun b!385648 () Bool)

(assert (=> b!385648 (= e!237287 (contains!896 rules!1920 (rule!1472 (_1!2734 (get!1506 lt!169458)))))))

(declare-fun b!385649 () Bool)

(declare-fun res!172926 () Bool)

(assert (=> b!385649 (=> (not res!172926) (not e!237287))))

(assert (=> b!385649 (= res!172926 (= (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169458)))) (originalCharacters!862 (_1!2734 (get!1506 lt!169458)))))))

(declare-fun b!385650 () Bool)

(declare-fun lt!169459 () Option!1040)

(declare-fun lt!169457 () Option!1040)

(assert (=> b!385650 (= e!237286 (ite (and ((_ is None!1039) lt!169459) ((_ is None!1039) lt!169457)) None!1039 (ite ((_ is None!1039) lt!169457) lt!169459 (ite ((_ is None!1039) lt!169459) lt!169457 (ite (>= (size!3444 (_1!2734 (v!15216 lt!169459))) (size!3444 (_1!2734 (v!15216 lt!169457)))) lt!169459 lt!169457)))))))

(assert (=> b!385650 (= lt!169459 call!24788)))

(assert (=> b!385650 (= lt!169457 (maxPrefix!421 thiss!17480 (t!58840 rules!1920) lt!169364))))

(assert (= (and d!136739 c!75915) b!385644))

(assert (= (and d!136739 (not c!75915)) b!385650))

(assert (= (or b!385644 b!385650) bm!24783))

(assert (= (and d!136739 (not res!172929)) b!385646))

(assert (= (and b!385646 res!172927) b!385649))

(assert (= (and b!385649 res!172926) b!385645))

(assert (= (and b!385645 res!172928) b!385647))

(assert (= (and b!385647 res!172932) b!385643))

(assert (= (and b!385643 res!172930) b!385642))

(assert (= (and b!385642 res!172931) b!385648))

(declare-fun m!577405 () Bool)

(assert (=> b!385646 m!577405))

(declare-fun m!577407 () Bool)

(assert (=> b!385647 m!577407))

(declare-fun m!577409 () Bool)

(assert (=> b!385647 m!577409))

(assert (=> b!385647 m!577409))

(declare-fun m!577411 () Bool)

(assert (=> b!385647 m!577411))

(assert (=> b!385647 m!577411))

(declare-fun m!577413 () Bool)

(assert (=> b!385647 m!577413))

(declare-fun m!577415 () Bool)

(assert (=> d!136739 m!577415))

(declare-fun m!577417 () Bool)

(assert (=> d!136739 m!577417))

(declare-fun m!577419 () Bool)

(assert (=> d!136739 m!577419))

(assert (=> d!136739 m!577369))

(assert (=> b!385643 m!577407))

(declare-fun m!577421 () Bool)

(assert (=> b!385643 m!577421))

(assert (=> b!385643 m!577421))

(declare-fun m!577423 () Bool)

(assert (=> b!385643 m!577423))

(declare-fun m!577425 () Bool)

(assert (=> b!385650 m!577425))

(assert (=> b!385649 m!577407))

(assert (=> b!385649 m!577409))

(assert (=> b!385649 m!577409))

(assert (=> b!385649 m!577411))

(assert (=> b!385642 m!577407))

(assert (=> b!385642 m!577409))

(assert (=> b!385642 m!577409))

(assert (=> b!385642 m!577411))

(assert (=> b!385642 m!577411))

(declare-fun m!577427 () Bool)

(assert (=> b!385642 m!577427))

(assert (=> b!385648 m!577407))

(declare-fun m!577429 () Bool)

(assert (=> b!385648 m!577429))

(declare-fun m!577431 () Bool)

(assert (=> bm!24783 m!577431))

(assert (=> b!385645 m!577407))

(declare-fun m!577433 () Bool)

(assert (=> b!385645 m!577433))

(declare-fun m!577435 () Bool)

(assert (=> b!385645 m!577435))

(assert (=> b!385495 d!136739))

(declare-fun d!136741 () Bool)

(assert (=> d!136741 (= (head!1039 lt!169381) (h!9636 lt!169381))))

(assert (=> b!385495 d!136741))

(declare-fun d!136743 () Bool)

(declare-fun e!237297 () Bool)

(assert (=> d!136743 e!237297))

(declare-fun res!172941 () Bool)

(assert (=> d!136743 (=> (not res!172941) (not e!237297))))

(declare-fun lt!169464 () BalanceConc!2930)

(assert (=> d!136743 (= res!172941 (= (list!1845 lt!169464) (Cons!4241 lt!169355 Nil!4241)))))

(declare-fun singleton!171 (Token!1382) BalanceConc!2930)

(assert (=> d!136743 (= lt!169464 (singleton!171 lt!169355))))

(assert (=> d!136743 (= (singletonSeq!365 lt!169355) lt!169464)))

(declare-fun b!385664 () Bool)

(declare-fun isBalanced!436 (Conc!1461) Bool)

(assert (=> b!385664 (= e!237297 (isBalanced!436 (c!75905 lt!169464)))))

(assert (= (and d!136743 res!172941) b!385664))

(declare-fun m!577451 () Bool)

(assert (=> d!136743 m!577451))

(declare-fun m!577453 () Bool)

(assert (=> d!136743 m!577453))

(declare-fun m!577455 () Bool)

(assert (=> b!385664 m!577455))

(assert (=> b!385495 d!136743))

(declare-fun d!136749 () Bool)

(assert (=> d!136749 (rulesProduceIndividualToken!454 thiss!17480 rules!1920 lt!169355)))

(declare-fun lt!169488 () Unit!6896)

(declare-fun choose!3082 (LexerInterface!705 List!4250 List!4251 Token!1382) Unit!6896)

(assert (=> d!136749 (= lt!169488 (choose!3082 thiss!17480 rules!1920 tokens!465 lt!169355))))

(assert (=> d!136749 (not (isEmpty!3093 rules!1920))))

(assert (=> d!136749 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!168 thiss!17480 rules!1920 tokens!465 lt!169355) lt!169488)))

(declare-fun bs!46880 () Bool)

(assert (= bs!46880 d!136749))

(assert (=> bs!46880 m!577203))

(declare-fun m!577525 () Bool)

(assert (=> bs!46880 m!577525))

(assert (=> bs!46880 m!577111))

(assert (=> b!385495 d!136749))

(declare-fun b!385758 () Bool)

(declare-fun e!237350 () Option!1039)

(assert (=> b!385758 (= e!237350 (Some!1038 (h!9637 rules!1920)))))

(declare-fun d!136771 () Bool)

(declare-fun e!237349 () Bool)

(assert (=> d!136771 e!237349))

(declare-fun res!173003 () Bool)

(assert (=> d!136771 (=> res!173003 e!237349)))

(declare-fun lt!169497 () Option!1039)

(assert (=> d!136771 (= res!173003 (isEmpty!3099 lt!169497))))

(assert (=> d!136771 (= lt!169497 e!237350)))

(declare-fun c!75933 () Bool)

(assert (=> d!136771 (= c!75933 (and ((_ is Cons!4240) rules!1920) (= (tag!1059 (h!9637 rules!1920)) (tag!1059 (rule!1472 lt!169355)))))))

(assert (=> d!136771 (rulesInvariant!671 thiss!17480 rules!1920)))

(assert (=> d!136771 (= (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 lt!169355))) lt!169497)))

(declare-fun b!385759 () Bool)

(declare-fun lt!169496 () Unit!6896)

(declare-fun lt!169495 () Unit!6896)

(assert (=> b!385759 (= lt!169496 lt!169495)))

(assert (=> b!385759 (rulesInvariant!671 thiss!17480 (t!58840 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!63 (LexerInterface!705 Rule!1438 List!4250) Unit!6896)

(assert (=> b!385759 (= lt!169495 (lemmaInvariantOnRulesThenOnTail!63 thiss!17480 (h!9637 rules!1920) (t!58840 rules!1920)))))

(declare-fun e!237348 () Option!1039)

(assert (=> b!385759 (= e!237348 (getRuleFromTag!178 thiss!17480 (t!58840 rules!1920) (tag!1059 (rule!1472 lt!169355))))))

(declare-fun b!385760 () Bool)

(declare-fun e!237351 () Bool)

(assert (=> b!385760 (= e!237351 (= (tag!1059 (get!1507 lt!169497)) (tag!1059 (rule!1472 lt!169355))))))

(declare-fun b!385761 () Bool)

(assert (=> b!385761 (= e!237350 e!237348)))

(declare-fun c!75934 () Bool)

(assert (=> b!385761 (= c!75934 (and ((_ is Cons!4240) rules!1920) (not (= (tag!1059 (h!9637 rules!1920)) (tag!1059 (rule!1472 lt!169355))))))))

(declare-fun b!385762 () Bool)

(assert (=> b!385762 (= e!237349 e!237351)))

(declare-fun res!173004 () Bool)

(assert (=> b!385762 (=> (not res!173004) (not e!237351))))

(assert (=> b!385762 (= res!173004 (contains!896 rules!1920 (get!1507 lt!169497)))))

(declare-fun b!385763 () Bool)

(assert (=> b!385763 (= e!237348 None!1038)))

(assert (= (and d!136771 c!75933) b!385758))

(assert (= (and d!136771 (not c!75933)) b!385761))

(assert (= (and b!385761 c!75934) b!385759))

(assert (= (and b!385761 (not c!75934)) b!385763))

(assert (= (and d!136771 (not res!173003)) b!385762))

(assert (= (and b!385762 res!173004) b!385760))

(declare-fun m!577527 () Bool)

(assert (=> d!136771 m!577527))

(assert (=> d!136771 m!577057))

(declare-fun m!577529 () Bool)

(assert (=> b!385759 m!577529))

(declare-fun m!577531 () Bool)

(assert (=> b!385759 m!577531))

(declare-fun m!577533 () Bool)

(assert (=> b!385759 m!577533))

(declare-fun m!577535 () Bool)

(assert (=> b!385760 m!577535))

(assert (=> b!385762 m!577535))

(assert (=> b!385762 m!577535))

(declare-fun m!577537 () Bool)

(assert (=> b!385762 m!577537))

(assert (=> b!385495 d!136771))

(declare-fun b!385810 () Bool)

(declare-fun e!237385 () Bool)

(declare-fun lt!169519 () tuple2!5034)

(assert (=> b!385810 (= e!237385 (= (_2!2733 lt!169519) lt!169345))))

(declare-fun d!136773 () Bool)

(declare-fun e!237384 () Bool)

(assert (=> d!136773 e!237384))

(declare-fun res!173041 () Bool)

(assert (=> d!136773 (=> (not res!173041) (not e!237384))))

(assert (=> d!136773 (= res!173041 e!237385)))

(declare-fun c!75940 () Bool)

(assert (=> d!136773 (= c!75940 (> (size!3445 (_1!2733 lt!169519)) 0))))

(declare-fun lexTailRecV2!234 (LexerInterface!705 List!4250 BalanceConc!2928 BalanceConc!2928 BalanceConc!2928 BalanceConc!2930) tuple2!5034)

(assert (=> d!136773 (= lt!169519 (lexTailRecV2!234 thiss!17480 rules!1920 lt!169345 (BalanceConc!2929 Empty!1460) lt!169345 (BalanceConc!2931 Empty!1461)))))

(assert (=> d!136773 (= (lex!497 thiss!17480 rules!1920 lt!169345) lt!169519)))

(declare-fun b!385811 () Bool)

(declare-fun res!173040 () Bool)

(assert (=> b!385811 (=> (not res!173040) (not e!237384))))

(declare-datatypes ((tuple2!5042 0))(
  ( (tuple2!5043 (_1!2737 List!4251) (_2!2737 List!4249)) )
))
(declare-fun lexList!267 (LexerInterface!705 List!4250 List!4249) tuple2!5042)

(assert (=> b!385811 (= res!173040 (= (list!1845 (_1!2733 lt!169519)) (_1!2737 (lexList!267 thiss!17480 rules!1920 (list!1843 lt!169345)))))))

(declare-fun b!385812 () Bool)

(assert (=> b!385812 (= e!237384 (= (list!1843 (_2!2733 lt!169519)) (_2!2737 (lexList!267 thiss!17480 rules!1920 (list!1843 lt!169345)))))))

(declare-fun b!385813 () Bool)

(declare-fun e!237383 () Bool)

(assert (=> b!385813 (= e!237383 (not (isEmpty!3094 (_1!2733 lt!169519))))))

(declare-fun b!385814 () Bool)

(assert (=> b!385814 (= e!237385 e!237383)))

(declare-fun res!173042 () Bool)

(declare-fun size!3449 (BalanceConc!2928) Int)

(assert (=> b!385814 (= res!173042 (< (size!3449 (_2!2733 lt!169519)) (size!3449 lt!169345)))))

(assert (=> b!385814 (=> (not res!173042) (not e!237383))))

(assert (= (and d!136773 c!75940) b!385814))

(assert (= (and d!136773 (not c!75940)) b!385810))

(assert (= (and b!385814 res!173042) b!385813))

(assert (= (and d!136773 res!173041) b!385811))

(assert (= (and b!385811 res!173040) b!385812))

(declare-fun m!577615 () Bool)

(assert (=> b!385812 m!577615))

(declare-fun m!577617 () Bool)

(assert (=> b!385812 m!577617))

(assert (=> b!385812 m!577617))

(declare-fun m!577619 () Bool)

(assert (=> b!385812 m!577619))

(declare-fun m!577621 () Bool)

(assert (=> b!385814 m!577621))

(declare-fun m!577623 () Bool)

(assert (=> b!385814 m!577623))

(declare-fun m!577625 () Bool)

(assert (=> b!385811 m!577625))

(assert (=> b!385811 m!577617))

(assert (=> b!385811 m!577617))

(assert (=> b!385811 m!577619))

(declare-fun m!577627 () Bool)

(assert (=> b!385813 m!577627))

(declare-fun m!577629 () Bool)

(assert (=> d!136773 m!577629))

(declare-fun m!577631 () Bool)

(assert (=> d!136773 m!577631))

(assert (=> b!385495 d!136773))

(declare-fun d!136795 () Bool)

(declare-fun e!237386 () Bool)

(assert (=> d!136795 e!237386))

(declare-fun res!173043 () Bool)

(assert (=> d!136795 (=> (not res!173043) (not e!237386))))

(declare-fun lt!169520 () BalanceConc!2930)

(assert (=> d!136795 (= res!173043 (= (list!1845 lt!169520) (Cons!4241 separatorToken!170 Nil!4241)))))

(assert (=> d!136795 (= lt!169520 (singleton!171 separatorToken!170))))

(assert (=> d!136795 (= (singletonSeq!365 separatorToken!170) lt!169520)))

(declare-fun b!385815 () Bool)

(assert (=> b!385815 (= e!237386 (isBalanced!436 (c!75905 lt!169520)))))

(assert (= (and d!136795 res!173043) b!385815))

(declare-fun m!577633 () Bool)

(assert (=> d!136795 m!577633))

(declare-fun m!577635 () Bool)

(assert (=> d!136795 m!577635))

(declare-fun m!577637 () Bool)

(assert (=> b!385815 m!577637))

(assert (=> b!385495 d!136795))

(declare-fun d!136797 () Bool)

(declare-fun lt!169529 () BalanceConc!2928)

(assert (=> d!136797 (= (list!1843 lt!169529) (originalCharacters!862 lt!169355))))

(declare-fun dynLambda!2463 (Int TokenValue!841) BalanceConc!2928)

(assert (=> d!136797 (= lt!169529 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 lt!169355))) (value!27657 lt!169355)))))

(assert (=> d!136797 (= (charsOf!462 lt!169355) lt!169529)))

(declare-fun b_lambda!15205 () Bool)

(assert (=> (not b_lambda!15205) (not d!136797)))

(declare-fun tb!34033 () Bool)

(declare-fun t!58862 () Bool)

(assert (=> (and b!385498 (= (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (toChars!1469 (transformation!819 (rule!1472 lt!169355)))) t!58862) tb!34033))

(declare-fun b!385832 () Bool)

(declare-fun e!237397 () Bool)

(declare-fun tp!118510 () Bool)

(declare-fun inv!5268 (Conc!1460) Bool)

(assert (=> b!385832 (= e!237397 (and (inv!5268 (c!75903 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 lt!169355))) (value!27657 lt!169355)))) tp!118510))))

(declare-fun result!38342 () Bool)

(declare-fun inv!5269 (BalanceConc!2928) Bool)

(assert (=> tb!34033 (= result!38342 (and (inv!5269 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 lt!169355))) (value!27657 lt!169355))) e!237397))))

(assert (= tb!34033 b!385832))

(declare-fun m!577639 () Bool)

(assert (=> b!385832 m!577639))

(declare-fun m!577641 () Bool)

(assert (=> tb!34033 m!577641))

(assert (=> d!136797 t!58862))

(declare-fun b_and!38729 () Bool)

(assert (= b_and!38707 (and (=> t!58862 result!38342) b_and!38729)))

(declare-fun tb!34035 () Bool)

(declare-fun t!58864 () Bool)

(assert (=> (and b!385499 (= (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toChars!1469 (transformation!819 (rule!1472 lt!169355)))) t!58864) tb!34035))

(declare-fun result!38346 () Bool)

(assert (= result!38346 result!38342))

(assert (=> d!136797 t!58864))

(declare-fun b_and!38731 () Bool)

(assert (= b_and!38711 (and (=> t!58864 result!38346) b_and!38731)))

(declare-fun t!58866 () Bool)

(declare-fun tb!34037 () Bool)

(assert (=> (and b!385493 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (toChars!1469 (transformation!819 (rule!1472 lt!169355)))) t!58866) tb!34037))

(declare-fun result!38348 () Bool)

(assert (= result!38348 result!38342))

(assert (=> d!136797 t!58866))

(declare-fun b_and!38733 () Bool)

(assert (= b_and!38715 (and (=> t!58866 result!38348) b_and!38733)))

(declare-fun m!577643 () Bool)

(assert (=> d!136797 m!577643))

(declare-fun m!577645 () Bool)

(assert (=> d!136797 m!577645))

(assert (=> b!385495 d!136797))

(declare-fun bm!24799 () Bool)

(declare-fun call!24804 () List!4249)

(declare-fun call!24806 () List!4249)

(declare-fun call!24805 () List!4249)

(assert (=> bm!24799 (= call!24804 (++!1198 call!24806 call!24805))))

(declare-fun d!136799 () Bool)

(declare-fun c!75955 () Bool)

(assert (=> d!136799 (= c!75955 (or ((_ is EmptyExpr!1043) (regex!819 (rule!1472 lt!169355))) ((_ is EmptyLang!1043) (regex!819 (rule!1472 lt!169355)))))))

(declare-fun e!237411 () List!4249)

(assert (=> d!136799 (= (usedCharacters!120 (regex!819 (rule!1472 lt!169355))) e!237411)))

(declare-fun bm!24800 () Bool)

(declare-fun c!75958 () Bool)

(assert (=> bm!24800 (= call!24806 (usedCharacters!120 (ite c!75958 (regOne!2599 (regex!819 (rule!1472 lt!169355))) (regOne!2598 (regex!819 (rule!1472 lt!169355))))))))

(declare-fun b!385855 () Bool)

(declare-fun e!237412 () List!4249)

(assert (=> b!385855 (= e!237411 e!237412)))

(declare-fun c!75957 () Bool)

(assert (=> b!385855 (= c!75957 ((_ is ElementMatch!1043) (regex!819 (rule!1472 lt!169355))))))

(declare-fun b!385856 () Bool)

(declare-fun e!237413 () List!4249)

(declare-fun e!237410 () List!4249)

(assert (=> b!385856 (= e!237413 e!237410)))

(assert (=> b!385856 (= c!75958 ((_ is Union!1043) (regex!819 (rule!1472 lt!169355))))))

(declare-fun bm!24801 () Bool)

(declare-fun c!75956 () Bool)

(declare-fun call!24807 () List!4249)

(assert (=> bm!24801 (= call!24807 (usedCharacters!120 (ite c!75956 (reg!1372 (regex!819 (rule!1472 lt!169355))) (ite c!75958 (regTwo!2599 (regex!819 (rule!1472 lt!169355))) (regTwo!2598 (regex!819 (rule!1472 lt!169355)))))))))

(declare-fun b!385857 () Bool)

(assert (=> b!385857 (= e!237410 call!24804)))

(declare-fun b!385858 () Bool)

(assert (=> b!385858 (= c!75956 ((_ is Star!1043) (regex!819 (rule!1472 lt!169355))))))

(assert (=> b!385858 (= e!237412 e!237413)))

(declare-fun b!385859 () Bool)

(assert (=> b!385859 (= e!237411 Nil!4239)))

(declare-fun b!385860 () Bool)

(assert (=> b!385860 (= e!237413 call!24807)))

(declare-fun bm!24802 () Bool)

(assert (=> bm!24802 (= call!24805 call!24807)))

(declare-fun b!385861 () Bool)

(assert (=> b!385861 (= e!237412 (Cons!4239 (c!75904 (regex!819 (rule!1472 lt!169355))) Nil!4239))))

(declare-fun b!385862 () Bool)

(assert (=> b!385862 (= e!237410 call!24804)))

(assert (= (and d!136799 c!75955) b!385859))

(assert (= (and d!136799 (not c!75955)) b!385855))

(assert (= (and b!385855 c!75957) b!385861))

(assert (= (and b!385855 (not c!75957)) b!385858))

(assert (= (and b!385858 c!75956) b!385860))

(assert (= (and b!385858 (not c!75956)) b!385856))

(assert (= (and b!385856 c!75958) b!385862))

(assert (= (and b!385856 (not c!75958)) b!385857))

(assert (= (or b!385862 b!385857) bm!24800))

(assert (= (or b!385862 b!385857) bm!24802))

(assert (= (or b!385862 b!385857) bm!24799))

(assert (= (or b!385860 bm!24802) bm!24801))

(declare-fun m!577665 () Bool)

(assert (=> bm!24799 m!577665))

(declare-fun m!577669 () Bool)

(assert (=> bm!24800 m!577669))

(declare-fun m!577671 () Bool)

(assert (=> bm!24801 m!577671))

(assert (=> b!385495 d!136799))

(declare-fun d!136807 () Bool)

(declare-fun lt!169544 () BalanceConc!2928)

(assert (=> d!136807 (= (list!1843 lt!169544) (printList!379 thiss!17480 (list!1845 lt!169365)))))

(assert (=> d!136807 (= lt!169544 (printTailRec!391 thiss!17480 lt!169365 0 (BalanceConc!2929 Empty!1460)))))

(assert (=> d!136807 (= (print!430 thiss!17480 lt!169365) lt!169544)))

(declare-fun bs!46885 () Bool)

(assert (= bs!46885 d!136807))

(declare-fun m!577679 () Bool)

(assert (=> bs!46885 m!577679))

(declare-fun m!577681 () Bool)

(assert (=> bs!46885 m!577681))

(assert (=> bs!46885 m!577681))

(declare-fun m!577683 () Bool)

(assert (=> bs!46885 m!577683))

(assert (=> bs!46885 m!577177))

(assert (=> b!385495 d!136807))

(declare-fun d!136811 () Bool)

(declare-fun lt!169548 () BalanceConc!2928)

(assert (=> d!136811 (= (list!1843 lt!169548) (printList!379 thiss!17480 (list!1845 lt!169360)))))

(assert (=> d!136811 (= lt!169548 (printTailRec!391 thiss!17480 lt!169360 0 (BalanceConc!2929 Empty!1460)))))

(assert (=> d!136811 (= (print!430 thiss!17480 lt!169360) lt!169548)))

(declare-fun bs!46886 () Bool)

(assert (= bs!46886 d!136811))

(declare-fun m!577685 () Bool)

(assert (=> bs!46886 m!577685))

(assert (=> bs!46886 m!577331))

(assert (=> bs!46886 m!577331))

(declare-fun m!577687 () Bool)

(assert (=> bs!46886 m!577687))

(assert (=> bs!46886 m!577155))

(assert (=> b!385495 d!136811))

(declare-fun d!136813 () Bool)

(declare-fun lt!169549 () Bool)

(assert (=> d!136813 (= lt!169549 (select (content!680 (usedCharacters!120 (regex!819 (rule!1472 lt!169355)))) lt!169373))))

(declare-fun e!237419 () Bool)

(assert (=> d!136813 (= lt!169549 e!237419)))

(declare-fun res!173053 () Bool)

(assert (=> d!136813 (=> (not res!173053) (not e!237419))))

(assert (=> d!136813 (= res!173053 ((_ is Cons!4239) (usedCharacters!120 (regex!819 (rule!1472 lt!169355)))))))

(assert (=> d!136813 (= (contains!897 (usedCharacters!120 (regex!819 (rule!1472 lt!169355))) lt!169373) lt!169549)))

(declare-fun b!385869 () Bool)

(declare-fun e!237418 () Bool)

(assert (=> b!385869 (= e!237419 e!237418)))

(declare-fun res!173052 () Bool)

(assert (=> b!385869 (=> res!173052 e!237418)))

(assert (=> b!385869 (= res!173052 (= (h!9636 (usedCharacters!120 (regex!819 (rule!1472 lt!169355)))) lt!169373))))

(declare-fun b!385870 () Bool)

(assert (=> b!385870 (= e!237418 (contains!897 (t!58839 (usedCharacters!120 (regex!819 (rule!1472 lt!169355)))) lt!169373))))

(assert (= (and d!136813 res!173053) b!385869))

(assert (= (and b!385869 (not res!173052)) b!385870))

(assert (=> d!136813 m!577141))

(declare-fun m!577693 () Bool)

(assert (=> d!136813 m!577693))

(declare-fun m!577695 () Bool)

(assert (=> d!136813 m!577695))

(declare-fun m!577699 () Bool)

(assert (=> b!385870 m!577699))

(assert (=> b!385495 d!136813))

(declare-fun d!136815 () Bool)

(assert (=> d!136815 (= (isEmpty!3090 tokens!465) ((_ is Nil!4241) tokens!465))))

(assert (=> b!385495 d!136815))

(declare-fun b!385871 () Bool)

(declare-fun e!237422 () Bool)

(declare-fun lt!169550 () tuple2!5034)

(assert (=> b!385871 (= e!237422 (= (_2!2733 lt!169550) lt!169377))))

(declare-fun d!136817 () Bool)

(declare-fun e!237421 () Bool)

(assert (=> d!136817 e!237421))

(declare-fun res!173055 () Bool)

(assert (=> d!136817 (=> (not res!173055) (not e!237421))))

(assert (=> d!136817 (= res!173055 e!237422)))

(declare-fun c!75961 () Bool)

(assert (=> d!136817 (= c!75961 (> (size!3445 (_1!2733 lt!169550)) 0))))

(assert (=> d!136817 (= lt!169550 (lexTailRecV2!234 thiss!17480 rules!1920 lt!169377 (BalanceConc!2929 Empty!1460) lt!169377 (BalanceConc!2931 Empty!1461)))))

(assert (=> d!136817 (= (lex!497 thiss!17480 rules!1920 lt!169377) lt!169550)))

(declare-fun b!385872 () Bool)

(declare-fun res!173054 () Bool)

(assert (=> b!385872 (=> (not res!173054) (not e!237421))))

(assert (=> b!385872 (= res!173054 (= (list!1845 (_1!2733 lt!169550)) (_1!2737 (lexList!267 thiss!17480 rules!1920 (list!1843 lt!169377)))))))

(declare-fun b!385873 () Bool)

(assert (=> b!385873 (= e!237421 (= (list!1843 (_2!2733 lt!169550)) (_2!2737 (lexList!267 thiss!17480 rules!1920 (list!1843 lt!169377)))))))

(declare-fun b!385874 () Bool)

(declare-fun e!237420 () Bool)

(assert (=> b!385874 (= e!237420 (not (isEmpty!3094 (_1!2733 lt!169550))))))

(declare-fun b!385875 () Bool)

(assert (=> b!385875 (= e!237422 e!237420)))

(declare-fun res!173056 () Bool)

(assert (=> b!385875 (= res!173056 (< (size!3449 (_2!2733 lt!169550)) (size!3449 lt!169377)))))

(assert (=> b!385875 (=> (not res!173056) (not e!237420))))

(assert (= (and d!136817 c!75961) b!385875))

(assert (= (and d!136817 (not c!75961)) b!385871))

(assert (= (and b!385875 res!173056) b!385874))

(assert (= (and d!136817 res!173055) b!385872))

(assert (= (and b!385872 res!173054) b!385873))

(declare-fun m!577705 () Bool)

(assert (=> b!385873 m!577705))

(declare-fun m!577707 () Bool)

(assert (=> b!385873 m!577707))

(assert (=> b!385873 m!577707))

(declare-fun m!577709 () Bool)

(assert (=> b!385873 m!577709))

(declare-fun m!577713 () Bool)

(assert (=> b!385875 m!577713))

(declare-fun m!577717 () Bool)

(assert (=> b!385875 m!577717))

(declare-fun m!577719 () Bool)

(assert (=> b!385872 m!577719))

(assert (=> b!385872 m!577707))

(assert (=> b!385872 m!577707))

(assert (=> b!385872 m!577709))

(declare-fun m!577723 () Bool)

(assert (=> b!385874 m!577723))

(declare-fun m!577727 () Bool)

(assert (=> d!136817 m!577727))

(declare-fun m!577731 () Bool)

(assert (=> d!136817 m!577731))

(assert (=> b!385495 d!136817))

(declare-fun d!136821 () Bool)

(assert (=> d!136821 (= lt!169364 (_2!2734 lt!169369))))

(declare-fun lt!169555 () Unit!6896)

(declare-fun choose!3086 (List!4249 List!4249 List!4249 List!4249 List!4249) Unit!6896)

(assert (=> d!136821 (= lt!169555 (choose!3086 lt!169347 lt!169364 lt!169347 (_2!2734 lt!169369) lt!169375))))

(assert (=> d!136821 (isPrefix!479 lt!169347 lt!169375)))

(assert (=> d!136821 (= (lemmaSamePrefixThenSameSuffix!264 lt!169347 lt!169364 lt!169347 (_2!2734 lt!169369) lt!169375) lt!169555)))

(declare-fun bs!46887 () Bool)

(assert (= bs!46887 d!136821))

(declare-fun m!577737 () Bool)

(assert (=> bs!46887 m!577737))

(declare-fun m!577739 () Bool)

(assert (=> bs!46887 m!577739))

(assert (=> b!385495 d!136821))

(declare-fun b!385879 () Bool)

(declare-fun e!237427 () Option!1039)

(assert (=> b!385879 (= e!237427 (Some!1038 (h!9637 rules!1920)))))

(declare-fun d!136825 () Bool)

(declare-fun e!237426 () Bool)

(assert (=> d!136825 e!237426))

(declare-fun res!173060 () Bool)

(assert (=> d!136825 (=> res!173060 e!237426)))

(declare-fun lt!169558 () Option!1039)

(assert (=> d!136825 (= res!173060 (isEmpty!3099 lt!169558))))

(assert (=> d!136825 (= lt!169558 e!237427)))

(declare-fun c!75962 () Bool)

(assert (=> d!136825 (= c!75962 (and ((_ is Cons!4240) rules!1920) (= (tag!1059 (h!9637 rules!1920)) (tag!1059 (rule!1472 separatorToken!170)))))))

(assert (=> d!136825 (rulesInvariant!671 thiss!17480 rules!1920)))

(assert (=> d!136825 (= (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 separatorToken!170))) lt!169558)))

(declare-fun b!385880 () Bool)

(declare-fun lt!169557 () Unit!6896)

(declare-fun lt!169556 () Unit!6896)

(assert (=> b!385880 (= lt!169557 lt!169556)))

(assert (=> b!385880 (rulesInvariant!671 thiss!17480 (t!58840 rules!1920))))

(assert (=> b!385880 (= lt!169556 (lemmaInvariantOnRulesThenOnTail!63 thiss!17480 (h!9637 rules!1920) (t!58840 rules!1920)))))

(declare-fun e!237425 () Option!1039)

(assert (=> b!385880 (= e!237425 (getRuleFromTag!178 thiss!17480 (t!58840 rules!1920) (tag!1059 (rule!1472 separatorToken!170))))))

(declare-fun b!385881 () Bool)

(declare-fun e!237428 () Bool)

(assert (=> b!385881 (= e!237428 (= (tag!1059 (get!1507 lt!169558)) (tag!1059 (rule!1472 separatorToken!170))))))

(declare-fun b!385882 () Bool)

(assert (=> b!385882 (= e!237427 e!237425)))

(declare-fun c!75963 () Bool)

(assert (=> b!385882 (= c!75963 (and ((_ is Cons!4240) rules!1920) (not (= (tag!1059 (h!9637 rules!1920)) (tag!1059 (rule!1472 separatorToken!170))))))))

(declare-fun b!385883 () Bool)

(assert (=> b!385883 (= e!237426 e!237428)))

(declare-fun res!173061 () Bool)

(assert (=> b!385883 (=> (not res!173061) (not e!237428))))

(assert (=> b!385883 (= res!173061 (contains!896 rules!1920 (get!1507 lt!169558)))))

(declare-fun b!385884 () Bool)

(assert (=> b!385884 (= e!237425 None!1038)))

(assert (= (and d!136825 c!75962) b!385879))

(assert (= (and d!136825 (not c!75962)) b!385882))

(assert (= (and b!385882 c!75963) b!385880))

(assert (= (and b!385882 (not c!75963)) b!385884))

(assert (= (and d!136825 (not res!173060)) b!385883))

(assert (= (and b!385883 res!173061) b!385881))

(declare-fun m!577741 () Bool)

(assert (=> d!136825 m!577741))

(assert (=> d!136825 m!577057))

(assert (=> b!385880 m!577529))

(assert (=> b!385880 m!577531))

(declare-fun m!577743 () Bool)

(assert (=> b!385880 m!577743))

(declare-fun m!577745 () Bool)

(assert (=> b!385881 m!577745))

(assert (=> b!385883 m!577745))

(assert (=> b!385883 m!577745))

(declare-fun m!577747 () Bool)

(assert (=> b!385883 m!577747))

(assert (=> b!385495 d!136825))

(declare-fun d!136827 () Bool)

(declare-fun lt!169561 () Int)

(declare-fun size!3452 (List!4251) Int)

(assert (=> d!136827 (= lt!169561 (size!3452 (list!1845 (_1!2733 lt!169361))))))

(declare-fun size!3453 (Conc!1461) Int)

(assert (=> d!136827 (= lt!169561 (size!3453 (c!75905 (_1!2733 lt!169361))))))

(assert (=> d!136827 (= (size!3445 (_1!2733 lt!169361)) lt!169561)))

(declare-fun bs!46888 () Bool)

(assert (= bs!46888 d!136827))

(declare-fun m!577749 () Bool)

(assert (=> bs!46888 m!577749))

(assert (=> bs!46888 m!577749))

(declare-fun m!577751 () Bool)

(assert (=> bs!46888 m!577751))

(declare-fun m!577753 () Bool)

(assert (=> bs!46888 m!577753))

(assert (=> b!385495 d!136827))

(declare-fun d!136829 () Bool)

(declare-fun lt!169563 () BalanceConc!2928)

(assert (=> d!136829 (= (list!1843 lt!169563) (printListTailRec!186 thiss!17480 (dropList!221 lt!169365 0) (list!1843 (BalanceConc!2929 Empty!1460))))))

(declare-fun e!237430 () BalanceConc!2928)

(assert (=> d!136829 (= lt!169563 e!237430)))

(declare-fun c!75964 () Bool)

(assert (=> d!136829 (= c!75964 (>= 0 (size!3445 lt!169365)))))

(declare-fun e!237429 () Bool)

(assert (=> d!136829 e!237429))

(declare-fun res!173062 () Bool)

(assert (=> d!136829 (=> (not res!173062) (not e!237429))))

(assert (=> d!136829 (= res!173062 (>= 0 0))))

(assert (=> d!136829 (= (printTailRec!391 thiss!17480 lt!169365 0 (BalanceConc!2929 Empty!1460)) lt!169563)))

(declare-fun b!385885 () Bool)

(assert (=> b!385885 (= e!237429 (<= 0 (size!3445 lt!169365)))))

(declare-fun b!385886 () Bool)

(assert (=> b!385886 (= e!237430 (BalanceConc!2929 Empty!1460))))

(declare-fun b!385887 () Bool)

(assert (=> b!385887 (= e!237430 (printTailRec!391 thiss!17480 lt!169365 (+ 0 1) (++!1199 (BalanceConc!2929 Empty!1460) (charsOf!462 (apply!1018 lt!169365 0)))))))

(declare-fun lt!169565 () List!4251)

(assert (=> b!385887 (= lt!169565 (list!1845 lt!169365))))

(declare-fun lt!169564 () Unit!6896)

(assert (=> b!385887 (= lt!169564 (lemmaDropApply!261 lt!169565 0))))

(assert (=> b!385887 (= (head!1040 (drop!284 lt!169565 0)) (apply!1022 lt!169565 0))))

(declare-fun lt!169567 () Unit!6896)

(assert (=> b!385887 (= lt!169567 lt!169564)))

(declare-fun lt!169562 () List!4251)

(assert (=> b!385887 (= lt!169562 (list!1845 lt!169365))))

(declare-fun lt!169566 () Unit!6896)

(assert (=> b!385887 (= lt!169566 (lemmaDropTail!253 lt!169562 0))))

(assert (=> b!385887 (= (tail!592 (drop!284 lt!169562 0)) (drop!284 lt!169562 (+ 0 1)))))

(declare-fun lt!169568 () Unit!6896)

(assert (=> b!385887 (= lt!169568 lt!169566)))

(assert (= (and d!136829 res!173062) b!385885))

(assert (= (and d!136829 c!75964) b!385886))

(assert (= (and d!136829 (not c!75964)) b!385887))

(assert (=> d!136829 m!577297))

(declare-fun m!577755 () Bool)

(assert (=> d!136829 m!577755))

(assert (=> d!136829 m!577297))

(declare-fun m!577757 () Bool)

(assert (=> d!136829 m!577757))

(declare-fun m!577759 () Bool)

(assert (=> d!136829 m!577759))

(assert (=> d!136829 m!577755))

(declare-fun m!577761 () Bool)

(assert (=> d!136829 m!577761))

(assert (=> b!385885 m!577761))

(declare-fun m!577763 () Bool)

(assert (=> b!385887 m!577763))

(declare-fun m!577765 () Bool)

(assert (=> b!385887 m!577765))

(declare-fun m!577767 () Bool)

(assert (=> b!385887 m!577767))

(declare-fun m!577769 () Bool)

(assert (=> b!385887 m!577769))

(declare-fun m!577771 () Bool)

(assert (=> b!385887 m!577771))

(declare-fun m!577773 () Bool)

(assert (=> b!385887 m!577773))

(assert (=> b!385887 m!577763))

(declare-fun m!577775 () Bool)

(assert (=> b!385887 m!577775))

(assert (=> b!385887 m!577765))

(declare-fun m!577777 () Bool)

(assert (=> b!385887 m!577777))

(assert (=> b!385887 m!577777))

(declare-fun m!577779 () Bool)

(assert (=> b!385887 m!577779))

(declare-fun m!577781 () Bool)

(assert (=> b!385887 m!577781))

(declare-fun m!577783 () Bool)

(assert (=> b!385887 m!577783))

(declare-fun m!577785 () Bool)

(assert (=> b!385887 m!577785))

(assert (=> b!385887 m!577767))

(assert (=> b!385887 m!577771))

(assert (=> b!385887 m!577681))

(assert (=> b!385495 d!136829))

(declare-fun d!136831 () Bool)

(assert (=> d!136831 (= (get!1506 (maxPrefix!421 thiss!17480 rules!1920 lt!169375)) (v!15216 (maxPrefix!421 thiss!17480 rules!1920 lt!169375)))))

(assert (=> b!385495 d!136831))

(declare-fun d!136833 () Bool)

(assert (=> d!136833 (= (head!1040 (t!58841 tokens!465)) (h!9638 (t!58841 tokens!465)))))

(assert (=> b!385495 d!136833))

(declare-fun d!136835 () Bool)

(declare-fun e!237476 () Bool)

(assert (=> d!136835 e!237476))

(declare-fun res!173102 () Bool)

(assert (=> d!136835 (=> res!173102 e!237476)))

(assert (=> d!136835 (= res!173102 (isEmpty!3090 tokens!465))))

(declare-fun lt!169611 () Unit!6896)

(declare-fun choose!3087 (LexerInterface!705 List!4250 List!4251 Token!1382) Unit!6896)

(assert (=> d!136835 (= lt!169611 (choose!3087 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!136835 (not (isEmpty!3093 rules!1920))))

(assert (=> d!136835 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!226 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!169611)))

(declare-fun b!385961 () Bool)

(declare-fun e!237475 () Bool)

(assert (=> b!385961 (= e!237476 e!237475)))

(declare-fun res!173103 () Bool)

(assert (=> b!385961 (=> (not res!173103) (not e!237475))))

(assert (=> b!385961 (= res!173103 (isDefined!879 (maxPrefix!421 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!385962 () Bool)

(assert (=> b!385962 (= e!237475 (= (_1!2734 (get!1506 (maxPrefix!421 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1040 tokens!465)))))

(assert (= (and d!136835 (not res!173102)) b!385961))

(assert (= (and b!385961 res!173103) b!385962))

(assert (=> d!136835 m!577131))

(declare-fun m!577919 () Bool)

(assert (=> d!136835 m!577919))

(assert (=> d!136835 m!577111))

(assert (=> b!385961 m!577237))

(assert (=> b!385961 m!577237))

(declare-fun m!577921 () Bool)

(assert (=> b!385961 m!577921))

(assert (=> b!385961 m!577921))

(declare-fun m!577923 () Bool)

(assert (=> b!385961 m!577923))

(assert (=> b!385962 m!577237))

(assert (=> b!385962 m!577237))

(assert (=> b!385962 m!577921))

(assert (=> b!385962 m!577921))

(declare-fun m!577925 () Bool)

(assert (=> b!385962 m!577925))

(assert (=> b!385962 m!577211))

(assert (=> b!385495 d!136835))

(declare-fun d!136867 () Bool)

(declare-fun lt!169612 () Int)

(assert (=> d!136867 (= lt!169612 (size!3452 (list!1845 (_1!2733 lt!169362))))))

(assert (=> d!136867 (= lt!169612 (size!3453 (c!75905 (_1!2733 lt!169362))))))

(assert (=> d!136867 (= (size!3445 (_1!2733 lt!169362)) lt!169612)))

(declare-fun bs!46892 () Bool)

(assert (= bs!46892 d!136867))

(declare-fun m!577927 () Bool)

(assert (=> bs!46892 m!577927))

(assert (=> bs!46892 m!577927))

(declare-fun m!577929 () Bool)

(assert (=> bs!46892 m!577929))

(declare-fun m!577931 () Bool)

(assert (=> bs!46892 m!577931))

(assert (=> b!385495 d!136867))

(declare-fun d!136869 () Bool)

(assert (=> d!136869 (= (isDefined!878 lt!169354) (not (isEmpty!3099 lt!169354)))))

(declare-fun bs!46893 () Bool)

(assert (= bs!46893 d!136869))

(declare-fun m!577933 () Bool)

(assert (=> bs!46893 m!577933))

(assert (=> b!385495 d!136869))

(declare-fun d!136871 () Bool)

(declare-fun lt!169615 () Bool)

(declare-fun content!682 (List!4250) (InoxSet Rule!1438))

(assert (=> d!136871 (= lt!169615 (select (content!682 rules!1920) (rule!1472 separatorToken!170)))))

(declare-fun e!237481 () Bool)

(assert (=> d!136871 (= lt!169615 e!237481)))

(declare-fun res!173109 () Bool)

(assert (=> d!136871 (=> (not res!173109) (not e!237481))))

(assert (=> d!136871 (= res!173109 ((_ is Cons!4240) rules!1920))))

(assert (=> d!136871 (= (contains!896 rules!1920 (rule!1472 separatorToken!170)) lt!169615)))

(declare-fun b!385967 () Bool)

(declare-fun e!237482 () Bool)

(assert (=> b!385967 (= e!237481 e!237482)))

(declare-fun res!173108 () Bool)

(assert (=> b!385967 (=> res!173108 e!237482)))

(assert (=> b!385967 (= res!173108 (= (h!9637 rules!1920) (rule!1472 separatorToken!170)))))

(declare-fun b!385968 () Bool)

(assert (=> b!385968 (= e!237482 (contains!896 (t!58840 rules!1920) (rule!1472 separatorToken!170)))))

(assert (= (and d!136871 res!173109) b!385967))

(assert (= (and b!385967 (not res!173108)) b!385968))

(declare-fun m!577935 () Bool)

(assert (=> d!136871 m!577935))

(declare-fun m!577937 () Bool)

(assert (=> d!136871 m!577937))

(declare-fun m!577939 () Bool)

(assert (=> b!385968 m!577939))

(assert (=> b!385495 d!136871))

(declare-fun bm!24816 () Bool)

(declare-fun call!24821 () List!4249)

(declare-fun call!24823 () List!4249)

(declare-fun call!24822 () List!4249)

(assert (=> bm!24816 (= call!24821 (++!1198 call!24823 call!24822))))

(declare-fun d!136873 () Bool)

(declare-fun c!75982 () Bool)

(assert (=> d!136873 (= c!75982 (or ((_ is EmptyExpr!1043) (regex!819 (rule!1472 separatorToken!170))) ((_ is EmptyLang!1043) (regex!819 (rule!1472 separatorToken!170)))))))

(declare-fun e!237484 () List!4249)

(assert (=> d!136873 (= (usedCharacters!120 (regex!819 (rule!1472 separatorToken!170))) e!237484)))

(declare-fun bm!24817 () Bool)

(declare-fun c!75985 () Bool)

(assert (=> bm!24817 (= call!24823 (usedCharacters!120 (ite c!75985 (regOne!2599 (regex!819 (rule!1472 separatorToken!170))) (regOne!2598 (regex!819 (rule!1472 separatorToken!170))))))))

(declare-fun b!385969 () Bool)

(declare-fun e!237485 () List!4249)

(assert (=> b!385969 (= e!237484 e!237485)))

(declare-fun c!75984 () Bool)

(assert (=> b!385969 (= c!75984 ((_ is ElementMatch!1043) (regex!819 (rule!1472 separatorToken!170))))))

(declare-fun b!385970 () Bool)

(declare-fun e!237486 () List!4249)

(declare-fun e!237483 () List!4249)

(assert (=> b!385970 (= e!237486 e!237483)))

(assert (=> b!385970 (= c!75985 ((_ is Union!1043) (regex!819 (rule!1472 separatorToken!170))))))

(declare-fun call!24824 () List!4249)

(declare-fun bm!24818 () Bool)

(declare-fun c!75983 () Bool)

(assert (=> bm!24818 (= call!24824 (usedCharacters!120 (ite c!75983 (reg!1372 (regex!819 (rule!1472 separatorToken!170))) (ite c!75985 (regTwo!2599 (regex!819 (rule!1472 separatorToken!170))) (regTwo!2598 (regex!819 (rule!1472 separatorToken!170)))))))))

(declare-fun b!385971 () Bool)

(assert (=> b!385971 (= e!237483 call!24821)))

(declare-fun b!385972 () Bool)

(assert (=> b!385972 (= c!75983 ((_ is Star!1043) (regex!819 (rule!1472 separatorToken!170))))))

(assert (=> b!385972 (= e!237485 e!237486)))

(declare-fun b!385973 () Bool)

(assert (=> b!385973 (= e!237484 Nil!4239)))

(declare-fun b!385974 () Bool)

(assert (=> b!385974 (= e!237486 call!24824)))

(declare-fun bm!24819 () Bool)

(assert (=> bm!24819 (= call!24822 call!24824)))

(declare-fun b!385975 () Bool)

(assert (=> b!385975 (= e!237485 (Cons!4239 (c!75904 (regex!819 (rule!1472 separatorToken!170))) Nil!4239))))

(declare-fun b!385976 () Bool)

(assert (=> b!385976 (= e!237483 call!24821)))

(assert (= (and d!136873 c!75982) b!385973))

(assert (= (and d!136873 (not c!75982)) b!385969))

(assert (= (and b!385969 c!75984) b!385975))

(assert (= (and b!385969 (not c!75984)) b!385972))

(assert (= (and b!385972 c!75983) b!385974))

(assert (= (and b!385972 (not c!75983)) b!385970))

(assert (= (and b!385970 c!75985) b!385976))

(assert (= (and b!385970 (not c!75985)) b!385971))

(assert (= (or b!385976 b!385971) bm!24817))

(assert (= (or b!385976 b!385971) bm!24819))

(assert (= (or b!385976 b!385971) bm!24816))

(assert (= (or b!385974 bm!24819) bm!24818))

(declare-fun m!577941 () Bool)

(assert (=> bm!24816 m!577941))

(declare-fun m!577943 () Bool)

(assert (=> bm!24817 m!577943))

(declare-fun m!577945 () Bool)

(assert (=> bm!24818 m!577945))

(assert (=> b!385495 d!136873))

(declare-fun d!136875 () Bool)

(declare-fun e!237487 () Bool)

(assert (=> d!136875 e!237487))

(declare-fun res!173110 () Bool)

(assert (=> d!136875 (=> (not res!173110) (not e!237487))))

(assert (=> d!136875 (= res!173110 (isDefined!878 (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 lt!169355)))))))

(declare-fun lt!169616 () Unit!6896)

(assert (=> d!136875 (= lt!169616 (choose!3079 thiss!17480 rules!1920 lt!169381 lt!169355))))

(assert (=> d!136875 (rulesInvariant!671 thiss!17480 rules!1920)))

(assert (=> d!136875 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!178 thiss!17480 rules!1920 lt!169381 lt!169355) lt!169616)))

(declare-fun b!385977 () Bool)

(declare-fun res!173111 () Bool)

(assert (=> b!385977 (=> (not res!173111) (not e!237487))))

(assert (=> b!385977 (= res!173111 (matchR!361 (regex!819 (get!1507 (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 lt!169355))))) (list!1843 (charsOf!462 lt!169355))))))

(declare-fun b!385978 () Bool)

(assert (=> b!385978 (= e!237487 (= (rule!1472 lt!169355) (get!1507 (getRuleFromTag!178 thiss!17480 rules!1920 (tag!1059 (rule!1472 lt!169355))))))))

(assert (= (and d!136875 res!173110) b!385977))

(assert (= (and b!385977 res!173111) b!385978))

(assert (=> d!136875 m!577181))

(assert (=> d!136875 m!577181))

(declare-fun m!577947 () Bool)

(assert (=> d!136875 m!577947))

(declare-fun m!577949 () Bool)

(assert (=> d!136875 m!577949))

(assert (=> d!136875 m!577057))

(assert (=> b!385977 m!577181))

(declare-fun m!577951 () Bool)

(assert (=> b!385977 m!577951))

(assert (=> b!385977 m!577193))

(assert (=> b!385977 m!577201))

(declare-fun m!577953 () Bool)

(assert (=> b!385977 m!577953))

(assert (=> b!385977 m!577193))

(assert (=> b!385977 m!577201))

(assert (=> b!385977 m!577181))

(assert (=> b!385978 m!577181))

(assert (=> b!385978 m!577181))

(assert (=> b!385978 m!577951))

(assert (=> b!385495 d!136875))

(declare-fun d!136877 () Bool)

(declare-fun lt!169631 () Bool)

(declare-fun e!237511 () Bool)

(assert (=> d!136877 (= lt!169631 e!237511)))

(declare-fun res!173132 () Bool)

(assert (=> d!136877 (=> (not res!173132) (not e!237511))))

(assert (=> d!136877 (= res!173132 (= (list!1845 (_1!2733 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 lt!169355))))) (list!1845 (singletonSeq!365 lt!169355))))))

(declare-fun e!237510 () Bool)

(assert (=> d!136877 (= lt!169631 e!237510)))

(declare-fun res!173133 () Bool)

(assert (=> d!136877 (=> (not res!173133) (not e!237510))))

(declare-fun lt!169630 () tuple2!5034)

(assert (=> d!136877 (= res!173133 (= (size!3445 (_1!2733 lt!169630)) 1))))

(assert (=> d!136877 (= lt!169630 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 lt!169355))))))

(assert (=> d!136877 (not (isEmpty!3093 rules!1920))))

(assert (=> d!136877 (= (rulesProduceIndividualToken!454 thiss!17480 rules!1920 lt!169355) lt!169631)))

(declare-fun b!386007 () Bool)

(declare-fun res!173134 () Bool)

(assert (=> b!386007 (=> (not res!173134) (not e!237510))))

(assert (=> b!386007 (= res!173134 (= (apply!1018 (_1!2733 lt!169630) 0) lt!169355))))

(declare-fun b!386008 () Bool)

(assert (=> b!386008 (= e!237510 (isEmpty!3091 (_2!2733 lt!169630)))))

(declare-fun b!386009 () Bool)

(assert (=> b!386009 (= e!237511 (isEmpty!3091 (_2!2733 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 lt!169355))))))))

(assert (= (and d!136877 res!173133) b!386007))

(assert (= (and b!386007 res!173134) b!386008))

(assert (= (and d!136877 res!173132) b!386009))

(declare-fun m!577989 () Bool)

(assert (=> d!136877 m!577989))

(declare-fun m!577991 () Bool)

(assert (=> d!136877 m!577991))

(assert (=> d!136877 m!577111))

(assert (=> d!136877 m!577165))

(assert (=> d!136877 m!577989))

(declare-fun m!577993 () Bool)

(assert (=> d!136877 m!577993))

(declare-fun m!577995 () Bool)

(assert (=> d!136877 m!577995))

(assert (=> d!136877 m!577165))

(declare-fun m!577997 () Bool)

(assert (=> d!136877 m!577997))

(assert (=> d!136877 m!577165))

(declare-fun m!577999 () Bool)

(assert (=> b!386007 m!577999))

(declare-fun m!578001 () Bool)

(assert (=> b!386008 m!578001))

(assert (=> b!386009 m!577165))

(assert (=> b!386009 m!577165))

(assert (=> b!386009 m!577989))

(assert (=> b!386009 m!577989))

(assert (=> b!386009 m!577991))

(declare-fun m!578003 () Bool)

(assert (=> b!386009 m!578003))

(assert (=> b!385495 d!136877))

(declare-fun d!136895 () Bool)

(declare-fun res!173139 () Bool)

(declare-fun e!237514 () Bool)

(assert (=> d!136895 (=> (not res!173139) (not e!237514))))

(assert (=> d!136895 (= res!173139 (not (isEmpty!3092 (originalCharacters!862 (h!9638 tokens!465)))))))

(assert (=> d!136895 (= (inv!5264 (h!9638 tokens!465)) e!237514)))

(declare-fun b!386014 () Bool)

(declare-fun res!173140 () Bool)

(assert (=> b!386014 (=> (not res!173140) (not e!237514))))

(assert (=> b!386014 (= res!173140 (= (originalCharacters!862 (h!9638 tokens!465)) (list!1843 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (value!27657 (h!9638 tokens!465))))))))

(declare-fun b!386015 () Bool)

(assert (=> b!386015 (= e!237514 (= (size!3444 (h!9638 tokens!465)) (size!3448 (originalCharacters!862 (h!9638 tokens!465)))))))

(assert (= (and d!136895 res!173139) b!386014))

(assert (= (and b!386014 res!173140) b!386015))

(declare-fun b_lambda!15207 () Bool)

(assert (=> (not b_lambda!15207) (not b!386014)))

(declare-fun tb!34039 () Bool)

(declare-fun t!58870 () Bool)

(assert (=> (and b!385498 (= (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465))))) t!58870) tb!34039))

(declare-fun b!386016 () Bool)

(declare-fun e!237515 () Bool)

(declare-fun tp!118511 () Bool)

(assert (=> b!386016 (= e!237515 (and (inv!5268 (c!75903 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (value!27657 (h!9638 tokens!465))))) tp!118511))))

(declare-fun result!38350 () Bool)

(assert (=> tb!34039 (= result!38350 (and (inv!5269 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (value!27657 (h!9638 tokens!465)))) e!237515))))

(assert (= tb!34039 b!386016))

(declare-fun m!578005 () Bool)

(assert (=> b!386016 m!578005))

(declare-fun m!578007 () Bool)

(assert (=> tb!34039 m!578007))

(assert (=> b!386014 t!58870))

(declare-fun b_and!38735 () Bool)

(assert (= b_and!38729 (and (=> t!58870 result!38350) b_and!38735)))

(declare-fun tb!34041 () Bool)

(declare-fun t!58872 () Bool)

(assert (=> (and b!385499 (= (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465))))) t!58872) tb!34041))

(declare-fun result!38352 () Bool)

(assert (= result!38352 result!38350))

(assert (=> b!386014 t!58872))

(declare-fun b_and!38737 () Bool)

(assert (= b_and!38731 (and (=> t!58872 result!38352) b_and!38737)))

(declare-fun t!58874 () Bool)

(declare-fun tb!34043 () Bool)

(assert (=> (and b!385493 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465))))) t!58874) tb!34043))

(declare-fun result!38354 () Bool)

(assert (= result!38354 result!38350))

(assert (=> b!386014 t!58874))

(declare-fun b_and!38739 () Bool)

(assert (= b_and!38733 (and (=> t!58874 result!38354) b_and!38739)))

(declare-fun m!578009 () Bool)

(assert (=> d!136895 m!578009))

(declare-fun m!578011 () Bool)

(assert (=> b!386014 m!578011))

(assert (=> b!386014 m!578011))

(declare-fun m!578013 () Bool)

(assert (=> b!386014 m!578013))

(declare-fun m!578015 () Bool)

(assert (=> b!386015 m!578015))

(assert (=> b!385537 d!136895))

(declare-fun d!136897 () Bool)

(declare-fun lt!169634 () Bool)

(assert (=> d!136897 (= lt!169634 (isEmpty!3092 (list!1843 (_2!2733 lt!169361))))))

(declare-fun isEmpty!3101 (Conc!1460) Bool)

(assert (=> d!136897 (= lt!169634 (isEmpty!3101 (c!75903 (_2!2733 lt!169361))))))

(assert (=> d!136897 (= (isEmpty!3091 (_2!2733 lt!169361)) lt!169634)))

(declare-fun bs!46897 () Bool)

(assert (= bs!46897 d!136897))

(declare-fun m!578017 () Bool)

(assert (=> bs!46897 m!578017))

(assert (=> bs!46897 m!578017))

(declare-fun m!578019 () Bool)

(assert (=> bs!46897 m!578019))

(declare-fun m!578021 () Bool)

(assert (=> bs!46897 m!578021))

(assert (=> b!385496 d!136897))

(declare-fun b!386045 () Bool)

(declare-fun e!237532 () Bool)

(assert (=> b!386045 (= e!237532 (not (= (head!1039 lt!169347) (c!75904 (regex!819 (rule!1472 (h!9638 tokens!465)))))))))

(declare-fun b!386046 () Bool)

(declare-fun e!237536 () Bool)

(declare-fun nullable!222 (Regex!1043) Bool)

(assert (=> b!386046 (= e!237536 (nullable!222 (regex!819 (rule!1472 (h!9638 tokens!465)))))))

(declare-fun b!386047 () Bool)

(declare-fun res!173162 () Bool)

(declare-fun e!237533 () Bool)

(assert (=> b!386047 (=> res!173162 e!237533)))

(assert (=> b!386047 (= res!173162 (not ((_ is ElementMatch!1043) (regex!819 (rule!1472 (h!9638 tokens!465))))))))

(declare-fun e!237535 () Bool)

(assert (=> b!386047 (= e!237535 e!237533)))

(declare-fun d!136899 () Bool)

(declare-fun e!237530 () Bool)

(assert (=> d!136899 e!237530))

(declare-fun c!75997 () Bool)

(assert (=> d!136899 (= c!75997 ((_ is EmptyExpr!1043) (regex!819 (rule!1472 (h!9638 tokens!465)))))))

(declare-fun lt!169637 () Bool)

(assert (=> d!136899 (= lt!169637 e!237536)))

(declare-fun c!75996 () Bool)

(assert (=> d!136899 (= c!75996 (isEmpty!3092 lt!169347))))

(declare-fun validRegex!297 (Regex!1043) Bool)

(assert (=> d!136899 (validRegex!297 (regex!819 (rule!1472 (h!9638 tokens!465))))))

(assert (=> d!136899 (= (matchR!361 (regex!819 (rule!1472 (h!9638 tokens!465))) lt!169347) lt!169637)))

(declare-fun b!386048 () Bool)

(assert (=> b!386048 (= e!237535 (not lt!169637))))

(declare-fun b!386049 () Bool)

(declare-fun e!237531 () Bool)

(assert (=> b!386049 (= e!237531 e!237532)))

(declare-fun res!173158 () Bool)

(assert (=> b!386049 (=> res!173158 e!237532)))

(declare-fun call!24831 () Bool)

(assert (=> b!386049 (= res!173158 call!24831)))

(declare-fun b!386050 () Bool)

(assert (=> b!386050 (= e!237530 (= lt!169637 call!24831))))

(declare-fun b!386051 () Bool)

(assert (=> b!386051 (= e!237533 e!237531)))

(declare-fun res!173164 () Bool)

(assert (=> b!386051 (=> (not res!173164) (not e!237531))))

(assert (=> b!386051 (= res!173164 (not lt!169637))))

(declare-fun b!386052 () Bool)

(declare-fun e!237534 () Bool)

(assert (=> b!386052 (= e!237534 (= (head!1039 lt!169347) (c!75904 (regex!819 (rule!1472 (h!9638 tokens!465))))))))

(declare-fun b!386053 () Bool)

(declare-fun res!173161 () Bool)

(assert (=> b!386053 (=> (not res!173161) (not e!237534))))

(assert (=> b!386053 (= res!173161 (not call!24831))))

(declare-fun b!386054 () Bool)

(declare-fun res!173163 () Bool)

(assert (=> b!386054 (=> res!173163 e!237532)))

(assert (=> b!386054 (= res!173163 (not (isEmpty!3092 (tail!593 lt!169347))))))

(declare-fun b!386055 () Bool)

(declare-fun derivativeStep!188 (Regex!1043 C!3008) Regex!1043)

(assert (=> b!386055 (= e!237536 (matchR!361 (derivativeStep!188 (regex!819 (rule!1472 (h!9638 tokens!465))) (head!1039 lt!169347)) (tail!593 lt!169347)))))

(declare-fun bm!24826 () Bool)

(assert (=> bm!24826 (= call!24831 (isEmpty!3092 lt!169347))))

(declare-fun b!386056 () Bool)

(declare-fun res!173157 () Bool)

(assert (=> b!386056 (=> (not res!173157) (not e!237534))))

(assert (=> b!386056 (= res!173157 (isEmpty!3092 (tail!593 lt!169347)))))

(declare-fun b!386057 () Bool)

(assert (=> b!386057 (= e!237530 e!237535)))

(declare-fun c!75998 () Bool)

(assert (=> b!386057 (= c!75998 ((_ is EmptyLang!1043) (regex!819 (rule!1472 (h!9638 tokens!465)))))))

(declare-fun b!386058 () Bool)

(declare-fun res!173160 () Bool)

(assert (=> b!386058 (=> res!173160 e!237533)))

(assert (=> b!386058 (= res!173160 e!237534)))

(declare-fun res!173159 () Bool)

(assert (=> b!386058 (=> (not res!173159) (not e!237534))))

(assert (=> b!386058 (= res!173159 lt!169637)))

(assert (= (and d!136899 c!75996) b!386046))

(assert (= (and d!136899 (not c!75996)) b!386055))

(assert (= (and d!136899 c!75997) b!386050))

(assert (= (and d!136899 (not c!75997)) b!386057))

(assert (= (and b!386057 c!75998) b!386048))

(assert (= (and b!386057 (not c!75998)) b!386047))

(assert (= (and b!386047 (not res!173162)) b!386058))

(assert (= (and b!386058 res!173159) b!386053))

(assert (= (and b!386053 res!173161) b!386056))

(assert (= (and b!386056 res!173157) b!386052))

(assert (= (and b!386058 (not res!173160)) b!386051))

(assert (= (and b!386051 res!173164) b!386049))

(assert (= (and b!386049 (not res!173158)) b!386054))

(assert (= (and b!386054 (not res!173163)) b!386045))

(assert (= (or b!386050 b!386049 b!386053) bm!24826))

(assert (=> b!386055 m!577343))

(assert (=> b!386055 m!577343))

(declare-fun m!578023 () Bool)

(assert (=> b!386055 m!578023))

(assert (=> b!386055 m!577337))

(assert (=> b!386055 m!578023))

(assert (=> b!386055 m!577337))

(declare-fun m!578025 () Bool)

(assert (=> b!386055 m!578025))

(assert (=> b!386054 m!577337))

(assert (=> b!386054 m!577337))

(declare-fun m!578027 () Bool)

(assert (=> b!386054 m!578027))

(declare-fun m!578029 () Bool)

(assert (=> d!136899 m!578029))

(declare-fun m!578031 () Bool)

(assert (=> d!136899 m!578031))

(assert (=> bm!24826 m!578029))

(assert (=> b!386056 m!577337))

(assert (=> b!386056 m!577337))

(assert (=> b!386056 m!578027))

(assert (=> b!386045 m!577343))

(declare-fun m!578033 () Bool)

(assert (=> b!386046 m!578033))

(assert (=> b!386052 m!577343))

(assert (=> b!385539 d!136899))

(declare-fun d!136901 () Bool)

(declare-fun isEmpty!3102 (Option!1041) Bool)

(assert (=> d!136901 (= (isDefined!880 (maxPrefixZipperSequence!384 thiss!17480 rules!1920 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465))))) (not (isEmpty!3102 (maxPrefixZipperSequence!384 thiss!17480 rules!1920 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))))

(declare-fun bs!46898 () Bool)

(assert (= bs!46898 d!136901))

(assert (=> bs!46898 m!577049))

(declare-fun m!578035 () Bool)

(assert (=> bs!46898 m!578035))

(assert (=> b!385517 d!136901))

(declare-fun b!386115 () Bool)

(declare-fun res!173197 () Bool)

(declare-fun e!237572 () Bool)

(assert (=> b!386115 (=> (not res!173197) (not e!237572))))

(declare-fun e!237575 () Bool)

(assert (=> b!386115 (= res!173197 e!237575)))

(declare-fun res!173202 () Bool)

(assert (=> b!386115 (=> res!173202 e!237575)))

(declare-fun lt!169679 () Option!1041)

(assert (=> b!386115 (= res!173202 (not (isDefined!880 lt!169679)))))

(declare-fun b!386116 () Bool)

(declare-fun e!237577 () Option!1041)

(declare-fun lt!169680 () Option!1041)

(declare-fun lt!169683 () Option!1041)

(assert (=> b!386116 (= e!237577 (ite (and ((_ is None!1040) lt!169680) ((_ is None!1040) lt!169683)) None!1040 (ite ((_ is None!1040) lt!169683) lt!169680 (ite ((_ is None!1040) lt!169680) lt!169683 (ite (>= (size!3444 (_1!2735 (v!15217 lt!169680))) (size!3444 (_1!2735 (v!15217 lt!169683)))) lt!169680 lt!169683)))))))

(declare-fun call!24835 () Option!1041)

(assert (=> b!386116 (= lt!169680 call!24835)))

(assert (=> b!386116 (= lt!169683 (maxPrefixZipperSequence!384 thiss!17480 (t!58840 rules!1920) (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))

(declare-fun b!386117 () Bool)

(declare-fun e!237573 () Bool)

(assert (=> b!386117 (= e!237575 e!237573)))

(declare-fun res!173200 () Bool)

(assert (=> b!386117 (=> (not res!173200) (not e!237573))))

(declare-fun get!1508 (Option!1041) tuple2!5038)

(declare-fun maxPrefixZipper!168 (LexerInterface!705 List!4250 List!4249) Option!1040)

(assert (=> b!386117 (= res!173200 (= (_1!2735 (get!1508 lt!169679)) (_1!2734 (get!1506 (maxPrefixZipper!168 thiss!17480 rules!1920 (list!1843 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))))))

(declare-fun d!136903 () Bool)

(assert (=> d!136903 e!237572))

(declare-fun res!173199 () Bool)

(assert (=> d!136903 (=> (not res!173199) (not e!237572))))

(assert (=> d!136903 (= res!173199 (= (isDefined!880 lt!169679) (isDefined!879 (maxPrefixZipper!168 thiss!17480 rules!1920 (list!1843 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465))))))))))

(assert (=> d!136903 (= lt!169679 e!237577)))

(declare-fun c!76011 () Bool)

(assert (=> d!136903 (= c!76011 (and ((_ is Cons!4240) rules!1920) ((_ is Nil!4240) (t!58840 rules!1920))))))

(declare-fun lt!169681 () Unit!6896)

(declare-fun lt!169684 () Unit!6896)

(assert (=> d!136903 (= lt!169681 lt!169684)))

(declare-fun lt!169678 () List!4249)

(declare-fun lt!169682 () List!4249)

(assert (=> d!136903 (isPrefix!479 lt!169678 lt!169682)))

(assert (=> d!136903 (= lt!169684 (lemmaIsPrefixRefl!265 lt!169678 lt!169682))))

(assert (=> d!136903 (= lt!169682 (list!1843 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))

(assert (=> d!136903 (= lt!169678 (list!1843 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))

(assert (=> d!136903 (rulesValidInductive!260 thiss!17480 rules!1920)))

(assert (=> d!136903 (= (maxPrefixZipperSequence!384 thiss!17480 rules!1920 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))) lt!169679)))

(declare-fun b!386118 () Bool)

(declare-fun e!237576 () Bool)

(declare-fun e!237574 () Bool)

(assert (=> b!386118 (= e!237576 e!237574)))

(declare-fun res!173201 () Bool)

(assert (=> b!386118 (=> (not res!173201) (not e!237574))))

(assert (=> b!386118 (= res!173201 (= (_1!2735 (get!1508 lt!169679)) (_1!2734 (get!1506 (maxPrefix!421 thiss!17480 rules!1920 (list!1843 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))))))

(declare-fun b!386119 () Bool)

(assert (=> b!386119 (= e!237572 e!237576)))

(declare-fun res!173198 () Bool)

(assert (=> b!386119 (=> res!173198 e!237576)))

(assert (=> b!386119 (= res!173198 (not (isDefined!880 lt!169679)))))

(declare-fun bm!24830 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!169 (LexerInterface!705 Rule!1438 BalanceConc!2928) Option!1041)

(assert (=> bm!24830 (= call!24835 (maxPrefixOneRuleZipperSequence!169 thiss!17480 (h!9637 rules!1920) (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))

(declare-fun b!386120 () Bool)

(assert (=> b!386120 (= e!237574 (= (list!1843 (_2!2735 (get!1508 lt!169679))) (_2!2734 (get!1506 (maxPrefix!421 thiss!17480 rules!1920 (list!1843 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))))))

(declare-fun b!386121 () Bool)

(assert (=> b!386121 (= e!237577 call!24835)))

(declare-fun b!386122 () Bool)

(assert (=> b!386122 (= e!237573 (= (list!1843 (_2!2735 (get!1508 lt!169679))) (_2!2734 (get!1506 (maxPrefixZipper!168 thiss!17480 rules!1920 (list!1843 (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465)))))))))))

(assert (= (and d!136903 c!76011) b!386121))

(assert (= (and d!136903 (not c!76011)) b!386116))

(assert (= (or b!386121 b!386116) bm!24830))

(assert (= (and d!136903 res!173199) b!386115))

(assert (= (and b!386115 (not res!173202)) b!386117))

(assert (= (and b!386117 res!173200) b!386122))

(assert (= (and b!386115 res!173197) b!386119))

(assert (= (and b!386119 (not res!173198)) b!386118))

(assert (= (and b!386118 res!173201) b!386120))

(assert (=> bm!24830 m!577047))

(declare-fun m!578181 () Bool)

(assert (=> bm!24830 m!578181))

(declare-fun m!578183 () Bool)

(assert (=> d!136903 m!578183))

(declare-fun m!578185 () Bool)

(assert (=> d!136903 m!578185))

(declare-fun m!578187 () Bool)

(assert (=> d!136903 m!578187))

(declare-fun m!578189 () Bool)

(assert (=> d!136903 m!578189))

(assert (=> d!136903 m!577369))

(declare-fun m!578191 () Bool)

(assert (=> d!136903 m!578191))

(assert (=> d!136903 m!578187))

(declare-fun m!578193 () Bool)

(assert (=> d!136903 m!578193))

(assert (=> d!136903 m!577047))

(assert (=> d!136903 m!578185))

(declare-fun m!578195 () Bool)

(assert (=> b!386122 m!578195))

(assert (=> b!386122 m!578185))

(assert (=> b!386122 m!578187))

(assert (=> b!386122 m!578187))

(declare-fun m!578197 () Bool)

(assert (=> b!386122 m!578197))

(declare-fun m!578199 () Bool)

(assert (=> b!386122 m!578199))

(assert (=> b!386122 m!577047))

(assert (=> b!386122 m!578185))

(assert (=> b!386115 m!578189))

(assert (=> b!386120 m!578195))

(assert (=> b!386120 m!578185))

(declare-fun m!578201 () Bool)

(assert (=> b!386120 m!578201))

(assert (=> b!386120 m!578201))

(declare-fun m!578203 () Bool)

(assert (=> b!386120 m!578203))

(assert (=> b!386120 m!578199))

(assert (=> b!386120 m!577047))

(assert (=> b!386120 m!578185))

(assert (=> b!386116 m!577047))

(declare-fun m!578205 () Bool)

(assert (=> b!386116 m!578205))

(assert (=> b!386118 m!578195))

(assert (=> b!386118 m!577047))

(assert (=> b!386118 m!578185))

(assert (=> b!386118 m!578185))

(assert (=> b!386118 m!578201))

(assert (=> b!386118 m!578201))

(assert (=> b!386118 m!578203))

(assert (=> b!386119 m!578189))

(assert (=> b!386117 m!578195))

(assert (=> b!386117 m!577047))

(assert (=> b!386117 m!578185))

(assert (=> b!386117 m!578185))

(assert (=> b!386117 m!578187))

(assert (=> b!386117 m!578187))

(assert (=> b!386117 m!578197))

(assert (=> b!385517 d!136903))

(declare-fun d!136929 () Bool)

(declare-fun fromListB!438 (List!4249) BalanceConc!2928)

(assert (=> d!136929 (= (seqFromList!1004 (originalCharacters!862 (h!9638 tokens!465))) (fromListB!438 (originalCharacters!862 (h!9638 tokens!465))))))

(declare-fun bs!46901 () Bool)

(assert (= bs!46901 d!136929))

(declare-fun m!578207 () Bool)

(assert (=> bs!46901 m!578207))

(assert (=> b!385517 d!136929))

(declare-fun d!136931 () Bool)

(assert (=> d!136931 (dynLambda!2461 lambda!11984 (h!9638 tokens!465))))

(declare-fun lt!169685 () Unit!6896)

(assert (=> d!136931 (= lt!169685 (choose!3078 tokens!465 lambda!11984 (h!9638 tokens!465)))))

(declare-fun e!237578 () Bool)

(assert (=> d!136931 e!237578))

(declare-fun res!173203 () Bool)

(assert (=> d!136931 (=> (not res!173203) (not e!237578))))

(assert (=> d!136931 (= res!173203 (forall!1184 tokens!465 lambda!11984))))

(assert (=> d!136931 (= (forallContained!372 tokens!465 lambda!11984 (h!9638 tokens!465)) lt!169685)))

(declare-fun b!386123 () Bool)

(assert (=> b!386123 (= e!237578 (contains!898 tokens!465 (h!9638 tokens!465)))))

(assert (= (and d!136931 res!173203) b!386123))

(declare-fun b_lambda!15209 () Bool)

(assert (=> (not b_lambda!15209) (not d!136931)))

(declare-fun m!578209 () Bool)

(assert (=> d!136931 m!578209))

(declare-fun m!578211 () Bool)

(assert (=> d!136931 m!578211))

(assert (=> d!136931 m!577285))

(declare-fun m!578213 () Bool)

(assert (=> b!386123 m!578213))

(assert (=> b!385517 d!136931))

(declare-fun d!136933 () Bool)

(assert (=> d!136933 (= (inv!5261 (tag!1059 (rule!1472 separatorToken!170))) (= (mod (str.len (value!27656 (tag!1059 (rule!1472 separatorToken!170)))) 2) 0))))

(assert (=> b!385536 d!136933))

(declare-fun d!136935 () Bool)

(declare-fun res!173206 () Bool)

(declare-fun e!237583 () Bool)

(assert (=> d!136935 (=> (not res!173206) (not e!237583))))

(declare-fun semiInverseModEq!319 (Int Int) Bool)

(assert (=> d!136935 (= res!173206 (semiInverseModEq!319 (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (toValue!1610 (transformation!819 (rule!1472 separatorToken!170)))))))

(assert (=> d!136935 (= (inv!5265 (transformation!819 (rule!1472 separatorToken!170))) e!237583)))

(declare-fun b!386130 () Bool)

(declare-fun equivClasses!302 (Int Int) Bool)

(assert (=> b!386130 (= e!237583 (equivClasses!302 (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (toValue!1610 (transformation!819 (rule!1472 separatorToken!170)))))))

(assert (= (and d!136935 res!173206) b!386130))

(declare-fun m!578215 () Bool)

(assert (=> d!136935 m!578215))

(declare-fun m!578217 () Bool)

(assert (=> b!386130 m!578217))

(assert (=> b!385536 d!136935))

(declare-fun d!136937 () Bool)

(declare-fun fromListB!439 (List!4251) BalanceConc!2930)

(assert (=> d!136937 (= (seqFromList!1003 (t!58841 tokens!465)) (fromListB!439 (t!58841 tokens!465)))))

(declare-fun bs!46904 () Bool)

(assert (= bs!46904 d!136937))

(declare-fun m!578233 () Bool)

(assert (=> bs!46904 m!578233))

(assert (=> b!385515 d!136937))

(declare-fun b!386141 () Bool)

(declare-fun e!237590 () List!4249)

(assert (=> b!386141 (= e!237590 lt!169364)))

(declare-fun b!386142 () Bool)

(assert (=> b!386142 (= e!237590 (Cons!4239 (h!9636 lt!169347) (++!1198 (t!58839 lt!169347) lt!169364)))))

(declare-fun b!386143 () Bool)

(declare-fun res!173211 () Bool)

(declare-fun e!237589 () Bool)

(assert (=> b!386143 (=> (not res!173211) (not e!237589))))

(declare-fun lt!169689 () List!4249)

(assert (=> b!386143 (= res!173211 (= (size!3448 lt!169689) (+ (size!3448 lt!169347) (size!3448 lt!169364))))))

(declare-fun d!136945 () Bool)

(assert (=> d!136945 e!237589))

(declare-fun res!173212 () Bool)

(assert (=> d!136945 (=> (not res!173212) (not e!237589))))

(assert (=> d!136945 (= res!173212 (= (content!680 lt!169689) ((_ map or) (content!680 lt!169347) (content!680 lt!169364))))))

(assert (=> d!136945 (= lt!169689 e!237590)))

(declare-fun c!76017 () Bool)

(assert (=> d!136945 (= c!76017 ((_ is Nil!4239) lt!169347))))

(assert (=> d!136945 (= (++!1198 lt!169347 lt!169364) lt!169689)))

(declare-fun b!386144 () Bool)

(assert (=> b!386144 (= e!237589 (or (not (= lt!169364 Nil!4239)) (= lt!169689 lt!169347)))))

(assert (= (and d!136945 c!76017) b!386141))

(assert (= (and d!136945 (not c!76017)) b!386142))

(assert (= (and d!136945 res!173212) b!386143))

(assert (= (and b!386143 res!173211) b!386144))

(declare-fun m!578237 () Bool)

(assert (=> b!386142 m!578237))

(declare-fun m!578239 () Bool)

(assert (=> b!386143 m!578239))

(assert (=> b!386143 m!577349))

(assert (=> b!386143 m!577435))

(declare-fun m!578241 () Bool)

(assert (=> d!136945 m!578241))

(declare-fun m!578243 () Bool)

(assert (=> d!136945 m!578243))

(declare-fun m!578245 () Bool)

(assert (=> d!136945 m!578245))

(assert (=> b!385515 d!136945))

(declare-fun d!136949 () Bool)

(assert (=> d!136949 (= (list!1843 (charsOf!462 separatorToken!170)) (list!1846 (c!75903 (charsOf!462 separatorToken!170))))))

(declare-fun bs!46906 () Bool)

(assert (= bs!46906 d!136949))

(declare-fun m!578247 () Bool)

(assert (=> bs!46906 m!578247))

(assert (=> b!385515 d!136949))

(declare-fun d!136951 () Bool)

(assert (=> d!136951 (= (list!1843 (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 (seqFromList!1003 (t!58841 tokens!465)) separatorToken!170 0)) (list!1846 (c!75903 (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 (seqFromList!1003 (t!58841 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!46907 () Bool)

(assert (= bs!46907 d!136951))

(declare-fun m!578249 () Bool)

(assert (=> bs!46907 m!578249))

(assert (=> b!385515 d!136951))

(declare-fun b!386145 () Bool)

(declare-fun e!237592 () List!4249)

(assert (=> b!386145 (= e!237592 lt!169344)))

(declare-fun b!386146 () Bool)

(assert (=> b!386146 (= e!237592 (Cons!4239 (h!9636 lt!169347) (++!1198 (t!58839 lt!169347) lt!169344)))))

(declare-fun b!386147 () Bool)

(declare-fun res!173213 () Bool)

(declare-fun e!237591 () Bool)

(assert (=> b!386147 (=> (not res!173213) (not e!237591))))

(declare-fun lt!169690 () List!4249)

(assert (=> b!386147 (= res!173213 (= (size!3448 lt!169690) (+ (size!3448 lt!169347) (size!3448 lt!169344))))))

(declare-fun d!136953 () Bool)

(assert (=> d!136953 e!237591))

(declare-fun res!173214 () Bool)

(assert (=> d!136953 (=> (not res!173214) (not e!237591))))

(assert (=> d!136953 (= res!173214 (= (content!680 lt!169690) ((_ map or) (content!680 lt!169347) (content!680 lt!169344))))))

(assert (=> d!136953 (= lt!169690 e!237592)))

(declare-fun c!76018 () Bool)

(assert (=> d!136953 (= c!76018 ((_ is Nil!4239) lt!169347))))

(assert (=> d!136953 (= (++!1198 lt!169347 lt!169344) lt!169690)))

(declare-fun b!386148 () Bool)

(assert (=> b!386148 (= e!237591 (or (not (= lt!169344 Nil!4239)) (= lt!169690 lt!169347)))))

(assert (= (and d!136953 c!76018) b!386145))

(assert (= (and d!136953 (not c!76018)) b!386146))

(assert (= (and d!136953 res!173214) b!386147))

(assert (= (and b!386147 res!173213) b!386148))

(declare-fun m!578251 () Bool)

(assert (=> b!386146 m!578251))

(declare-fun m!578253 () Bool)

(assert (=> b!386147 m!578253))

(assert (=> b!386147 m!577349))

(declare-fun m!578255 () Bool)

(assert (=> b!386147 m!578255))

(declare-fun m!578257 () Bool)

(assert (=> d!136953 m!578257))

(assert (=> d!136953 m!578243))

(declare-fun m!578259 () Bool)

(assert (=> d!136953 m!578259))

(assert (=> b!385515 d!136953))

(declare-fun b!386149 () Bool)

(declare-fun e!237594 () List!4249)

(assert (=> b!386149 (= e!237594 lt!169372)))

(declare-fun b!386150 () Bool)

(assert (=> b!386150 (= e!237594 (Cons!4239 (h!9636 (++!1198 lt!169347 lt!169344)) (++!1198 (t!58839 (++!1198 lt!169347 lt!169344)) lt!169372)))))

(declare-fun b!386151 () Bool)

(declare-fun res!173215 () Bool)

(declare-fun e!237593 () Bool)

(assert (=> b!386151 (=> (not res!173215) (not e!237593))))

(declare-fun lt!169691 () List!4249)

(assert (=> b!386151 (= res!173215 (= (size!3448 lt!169691) (+ (size!3448 (++!1198 lt!169347 lt!169344)) (size!3448 lt!169372))))))

(declare-fun d!136955 () Bool)

(assert (=> d!136955 e!237593))

(declare-fun res!173216 () Bool)

(assert (=> d!136955 (=> (not res!173216) (not e!237593))))

(assert (=> d!136955 (= res!173216 (= (content!680 lt!169691) ((_ map or) (content!680 (++!1198 lt!169347 lt!169344)) (content!680 lt!169372))))))

(assert (=> d!136955 (= lt!169691 e!237594)))

(declare-fun c!76019 () Bool)

(assert (=> d!136955 (= c!76019 ((_ is Nil!4239) (++!1198 lt!169347 lt!169344)))))

(assert (=> d!136955 (= (++!1198 (++!1198 lt!169347 lt!169344) lt!169372) lt!169691)))

(declare-fun b!386152 () Bool)

(assert (=> b!386152 (= e!237593 (or (not (= lt!169372 Nil!4239)) (= lt!169691 (++!1198 lt!169347 lt!169344))))))

(assert (= (and d!136955 c!76019) b!386149))

(assert (= (and d!136955 (not c!76019)) b!386150))

(assert (= (and d!136955 res!173216) b!386151))

(assert (= (and b!386151 res!173215) b!386152))

(declare-fun m!578261 () Bool)

(assert (=> b!386150 m!578261))

(declare-fun m!578263 () Bool)

(assert (=> b!386151 m!578263))

(assert (=> b!386151 m!577069))

(declare-fun m!578265 () Bool)

(assert (=> b!386151 m!578265))

(declare-fun m!578267 () Bool)

(assert (=> b!386151 m!578267))

(declare-fun m!578269 () Bool)

(assert (=> d!136955 m!578269))

(assert (=> d!136955 m!577069))

(declare-fun m!578271 () Bool)

(assert (=> d!136955 m!578271))

(declare-fun m!578273 () Bool)

(assert (=> d!136955 m!578273))

(assert (=> b!385515 d!136955))

(declare-fun bs!46911 () Bool)

(declare-fun b!386240 () Bool)

(assert (= bs!46911 (and b!386240 b!385522)))

(declare-fun lambda!11992 () Int)

(assert (=> bs!46911 (not (= lambda!11992 lambda!11983))))

(declare-fun bs!46912 () Bool)

(assert (= bs!46912 (and b!386240 b!385517)))

(assert (=> bs!46912 (= lambda!11992 lambda!11984)))

(declare-fun b!386250 () Bool)

(declare-fun e!237652 () Bool)

(assert (=> b!386250 (= e!237652 true)))

(declare-fun b!386249 () Bool)

(declare-fun e!237651 () Bool)

(assert (=> b!386249 (= e!237651 e!237652)))

(declare-fun b!386248 () Bool)

(declare-fun e!237650 () Bool)

(assert (=> b!386248 (= e!237650 e!237651)))

(assert (=> b!386240 e!237650))

(assert (= b!386249 b!386250))

(assert (= b!386248 b!386249))

(assert (= (and b!386240 ((_ is Cons!4240) rules!1920)) b!386248))

(assert (=> b!386250 (< (dynLambda!2457 order!3605 (toValue!1610 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!11992))))

(assert (=> b!386250 (< (dynLambda!2459 order!3609 (toChars!1469 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!11992))))

(assert (=> b!386240 true))

(declare-fun call!24851 () BalanceConc!2928)

(declare-fun c!76045 () Bool)

(declare-fun bm!24846 () Bool)

(declare-fun call!24854 () List!4249)

(declare-fun call!24852 () BalanceConc!2928)

(assert (=> bm!24846 (= call!24854 (list!1843 (ite c!76045 call!24852 call!24851)))))

(declare-fun bm!24847 () Bool)

(assert (=> bm!24847 (= call!24851 call!24852)))

(declare-fun e!237648 () List!4249)

(declare-fun e!237649 () List!4249)

(assert (=> b!386240 (= e!237648 e!237649)))

(declare-fun lt!169737 () Unit!6896)

(assert (=> b!386240 (= lt!169737 (forallContained!372 (t!58841 tokens!465) lambda!11992 (h!9638 (t!58841 tokens!465))))))

(declare-fun lt!169738 () List!4249)

(assert (=> b!386240 (= lt!169738 (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 (t!58841 (t!58841 tokens!465)) separatorToken!170))))

(declare-fun lt!169736 () Option!1040)

(assert (=> b!386240 (= lt!169736 (maxPrefix!421 thiss!17480 rules!1920 (++!1198 (list!1843 (charsOf!462 (h!9638 (t!58841 tokens!465)))) lt!169738)))))

(assert (=> b!386240 (= c!76045 (and ((_ is Some!1039) lt!169736) (= (_1!2734 (v!15216 lt!169736)) (h!9638 (t!58841 tokens!465)))))))

(declare-fun b!386241 () Bool)

(declare-fun e!237647 () BalanceConc!2928)

(assert (=> b!386241 (= e!237647 (charsOf!462 separatorToken!170))))

(declare-fun d!136957 () Bool)

(declare-fun c!76046 () Bool)

(assert (=> d!136957 (= c!76046 ((_ is Cons!4241) (t!58841 tokens!465)))))

(assert (=> d!136957 (= (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 (t!58841 tokens!465) separatorToken!170) e!237648)))

(declare-fun bm!24848 () Bool)

(declare-fun call!24853 () List!4249)

(assert (=> bm!24848 (= call!24853 (list!1843 e!237647))))

(declare-fun c!76043 () Bool)

(declare-fun c!76044 () Bool)

(assert (=> bm!24848 (= c!76043 c!76044)))

(declare-fun b!386242 () Bool)

(assert (=> b!386242 (= e!237647 call!24851)))

(declare-fun b!386243 () Bool)

(assert (=> b!386243 (= e!237648 Nil!4239)))

(declare-fun b!386244 () Bool)

(assert (=> b!386244 (= c!76044 (and ((_ is Some!1039) lt!169736) (not (= (_1!2734 (v!15216 lt!169736)) (h!9638 (t!58841 tokens!465))))))))

(declare-fun e!237646 () List!4249)

(assert (=> b!386244 (= e!237649 e!237646)))

(declare-fun call!24855 () List!4249)

(declare-fun bm!24849 () Bool)

(assert (=> bm!24849 (= call!24855 (++!1198 call!24854 (ite c!76045 lt!169738 call!24853)))))

(declare-fun b!386245 () Bool)

(assert (=> b!386245 (= e!237646 Nil!4239)))

(assert (=> b!386245 (= (print!430 thiss!17480 (singletonSeq!365 (h!9638 (t!58841 tokens!465)))) (printTailRec!391 thiss!17480 (singletonSeq!365 (h!9638 (t!58841 tokens!465))) 0 (BalanceConc!2929 Empty!1460)))))

(declare-fun lt!169735 () Unit!6896)

(declare-fun Unit!6904 () Unit!6896)

(assert (=> b!386245 (= lt!169735 Unit!6904)))

(declare-fun lt!169739 () Unit!6896)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!169 (LexerInterface!705 List!4250 List!4249 List!4249) Unit!6896)

(assert (=> b!386245 (= lt!169739 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!169 thiss!17480 rules!1920 call!24853 lt!169738))))

(assert (=> b!386245 false))

(declare-fun lt!169734 () Unit!6896)

(declare-fun Unit!6905 () Unit!6896)

(assert (=> b!386245 (= lt!169734 Unit!6905)))

(declare-fun b!386246 () Bool)

(assert (=> b!386246 (= e!237649 call!24855)))

(declare-fun b!386247 () Bool)

(assert (=> b!386247 (= e!237646 (++!1198 call!24855 lt!169738))))

(declare-fun bm!24850 () Bool)

(assert (=> bm!24850 (= call!24852 (charsOf!462 (h!9638 (t!58841 tokens!465))))))

(assert (= (and d!136957 c!76046) b!386240))

(assert (= (and d!136957 (not c!76046)) b!386243))

(assert (= (and b!386240 c!76045) b!386246))

(assert (= (and b!386240 (not c!76045)) b!386244))

(assert (= (and b!386244 c!76044) b!386247))

(assert (= (and b!386244 (not c!76044)) b!386245))

(assert (= (or b!386247 b!386245) bm!24847))

(assert (= (or b!386247 b!386245) bm!24848))

(assert (= (and bm!24848 c!76043) b!386241))

(assert (= (and bm!24848 (not c!76043)) b!386242))

(assert (= (or b!386246 bm!24847) bm!24850))

(assert (= (or b!386246 b!386247) bm!24846))

(assert (= (or b!386246 b!386247) bm!24849))

(assert (=> b!386241 m!577065))

(declare-fun m!578357 () Bool)

(assert (=> bm!24849 m!578357))

(declare-fun m!578359 () Bool)

(assert (=> bm!24848 m!578359))

(declare-fun m!578361 () Bool)

(assert (=> bm!24846 m!578361))

(declare-fun m!578363 () Bool)

(assert (=> b!386245 m!578363))

(assert (=> b!386245 m!578363))

(declare-fun m!578365 () Bool)

(assert (=> b!386245 m!578365))

(assert (=> b!386245 m!578363))

(declare-fun m!578367 () Bool)

(assert (=> b!386245 m!578367))

(declare-fun m!578369 () Bool)

(assert (=> b!386245 m!578369))

(declare-fun m!578371 () Bool)

(assert (=> b!386247 m!578371))

(declare-fun m!578373 () Bool)

(assert (=> b!386240 m!578373))

(declare-fun m!578375 () Bool)

(assert (=> b!386240 m!578375))

(declare-fun m!578377 () Bool)

(assert (=> b!386240 m!578377))

(declare-fun m!578379 () Bool)

(assert (=> b!386240 m!578379))

(assert (=> b!386240 m!578375))

(declare-fun m!578381 () Bool)

(assert (=> b!386240 m!578381))

(assert (=> b!386240 m!578379))

(assert (=> b!386240 m!578377))

(declare-fun m!578383 () Bool)

(assert (=> b!386240 m!578383))

(assert (=> bm!24850 m!578379))

(assert (=> b!385515 d!136957))

(declare-fun bs!46920 () Bool)

(declare-fun d!136983 () Bool)

(assert (= bs!46920 (and d!136983 b!385522)))

(declare-fun lambda!12003 () Int)

(assert (=> bs!46920 (= lambda!12003 lambda!11983)))

(declare-fun bs!46921 () Bool)

(assert (= bs!46921 (and d!136983 b!385517)))

(assert (=> bs!46921 (not (= lambda!12003 lambda!11984))))

(declare-fun bs!46922 () Bool)

(assert (= bs!46922 (and d!136983 b!386240)))

(assert (=> bs!46922 (not (= lambda!12003 lambda!11992))))

(declare-fun bs!46923 () Bool)

(declare-fun b!386304 () Bool)

(assert (= bs!46923 (and b!386304 b!385522)))

(declare-fun lambda!12004 () Int)

(assert (=> bs!46923 (not (= lambda!12004 lambda!11983))))

(declare-fun bs!46924 () Bool)

(assert (= bs!46924 (and b!386304 b!385517)))

(assert (=> bs!46924 (= lambda!12004 lambda!11984)))

(declare-fun bs!46925 () Bool)

(assert (= bs!46925 (and b!386304 b!386240)))

(assert (=> bs!46925 (= lambda!12004 lambda!11992)))

(declare-fun bs!46926 () Bool)

(assert (= bs!46926 (and b!386304 d!136983)))

(assert (=> bs!46926 (not (= lambda!12004 lambda!12003))))

(declare-fun b!386316 () Bool)

(declare-fun e!237697 () Bool)

(assert (=> b!386316 (= e!237697 true)))

(declare-fun b!386315 () Bool)

(declare-fun e!237696 () Bool)

(assert (=> b!386315 (= e!237696 e!237697)))

(declare-fun b!386314 () Bool)

(declare-fun e!237695 () Bool)

(assert (=> b!386314 (= e!237695 e!237696)))

(assert (=> b!386304 e!237695))

(assert (= b!386315 b!386316))

(assert (= b!386314 b!386315))

(assert (= (and b!386304 ((_ is Cons!4240) rules!1920)) b!386314))

(assert (=> b!386316 (< (dynLambda!2457 order!3605 (toValue!1610 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!12004))))

(assert (=> b!386316 (< (dynLambda!2459 order!3609 (toChars!1469 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!12004))))

(assert (=> b!386304 true))

(declare-fun b!386303 () Bool)

(declare-fun e!237694 () BalanceConc!2928)

(assert (=> b!386303 (= e!237694 (BalanceConc!2929 Empty!1460))))

(declare-fun bm!24876 () Bool)

(declare-fun call!24885 () Token!1382)

(declare-fun call!24882 () Token!1382)

(assert (=> bm!24876 (= call!24885 call!24882)))

(declare-fun e!237689 () BalanceConc!2928)

(assert (=> b!386304 (= e!237694 e!237689)))

(declare-fun lt!169823 () List!4251)

(assert (=> b!386304 (= lt!169823 (list!1845 (seqFromList!1003 (t!58841 tokens!465))))))

(declare-fun lt!169817 () Unit!6896)

(assert (=> b!386304 (= lt!169817 (lemmaDropApply!261 lt!169823 0))))

(assert (=> b!386304 (= (head!1040 (drop!284 lt!169823 0)) (apply!1022 lt!169823 0))))

(declare-fun lt!169810 () Unit!6896)

(assert (=> b!386304 (= lt!169810 lt!169817)))

(declare-fun lt!169819 () List!4251)

(assert (=> b!386304 (= lt!169819 (list!1845 (seqFromList!1003 (t!58841 tokens!465))))))

(declare-fun lt!169822 () Unit!6896)

(assert (=> b!386304 (= lt!169822 (lemmaDropTail!253 lt!169819 0))))

(assert (=> b!386304 (= (tail!592 (drop!284 lt!169819 0)) (drop!284 lt!169819 (+ 0 1)))))

(declare-fun lt!169814 () Unit!6896)

(assert (=> b!386304 (= lt!169814 lt!169822)))

(declare-fun lt!169816 () Unit!6896)

(assert (=> b!386304 (= lt!169816 (forallContained!372 (list!1845 (seqFromList!1003 (t!58841 tokens!465))) lambda!12004 (apply!1018 (seqFromList!1003 (t!58841 tokens!465)) 0)))))

(declare-fun lt!169821 () BalanceConc!2928)

(assert (=> b!386304 (= lt!169821 (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 (seqFromList!1003 (t!58841 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!169812 () Option!1041)

(assert (=> b!386304 (= lt!169812 (maxPrefixZipperSequence!384 thiss!17480 rules!1920 (++!1199 (charsOf!462 (apply!1018 (seqFromList!1003 (t!58841 tokens!465)) 0)) lt!169821)))))

(declare-fun res!173276 () Bool)

(assert (=> b!386304 (= res!173276 ((_ is Some!1040) lt!169812))))

(declare-fun e!237688 () Bool)

(assert (=> b!386304 (=> (not res!173276) (not e!237688))))

(declare-fun c!76064 () Bool)

(assert (=> b!386304 (= c!76064 e!237688)))

(declare-fun call!24884 () BalanceConc!2928)

(declare-fun bm!24877 () Bool)

(declare-fun c!76066 () Bool)

(assert (=> bm!24877 (= call!24884 (charsOf!462 (ite c!76064 call!24882 (ite c!76066 separatorToken!170 call!24885))))))

(declare-fun b!386305 () Bool)

(declare-fun e!237690 () BalanceConc!2928)

(assert (=> b!386305 (= e!237690 (charsOf!462 call!24885))))

(declare-fun bm!24878 () Bool)

(assert (=> bm!24878 (= call!24882 (apply!1018 (seqFromList!1003 (t!58841 tokens!465)) 0))))

(declare-fun bm!24879 () Bool)

(declare-fun c!76067 () Bool)

(assert (=> bm!24879 (= c!76067 c!76064)))

(declare-fun call!24883 () BalanceConc!2928)

(declare-fun call!24881 () BalanceConc!2928)

(assert (=> bm!24879 (= call!24881 (++!1199 e!237690 (ite c!76064 lt!169821 call!24883)))))

(declare-fun b!386307 () Bool)

(assert (=> b!386307 (= e!237688 (= (_1!2735 (v!15217 lt!169812)) (apply!1018 (seqFromList!1003 (t!58841 tokens!465)) 0)))))

(declare-fun bm!24880 () Bool)

(assert (=> bm!24880 (= call!24883 call!24884)))

(declare-fun b!386308 () Bool)

(declare-fun e!237692 () Bool)

(assert (=> b!386308 (= c!76066 e!237692)))

(declare-fun res!173275 () Bool)

(assert (=> b!386308 (=> (not res!173275) (not e!237692))))

(assert (=> b!386308 (= res!173275 ((_ is Some!1040) lt!169812))))

(declare-fun e!237691 () BalanceConc!2928)

(assert (=> b!386308 (= e!237689 e!237691)))

(declare-fun b!386309 () Bool)

(assert (=> b!386309 (= e!237690 call!24884)))

(declare-fun b!386310 () Bool)

(assert (=> b!386310 (= e!237691 (BalanceConc!2929 Empty!1460))))

(assert (=> b!386310 (= (print!430 thiss!17480 (singletonSeq!365 call!24885)) (printTailRec!391 thiss!17480 (singletonSeq!365 call!24885) 0 (BalanceConc!2929 Empty!1460)))))

(declare-fun lt!169815 () Unit!6896)

(declare-fun Unit!6906 () Unit!6896)

(assert (=> b!386310 (= lt!169815 Unit!6906)))

(declare-fun lt!169818 () Unit!6896)

(assert (=> b!386310 (= lt!169818 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!169 thiss!17480 rules!1920 (list!1843 call!24883) (list!1843 lt!169821)))))

(assert (=> b!386310 false))

(declare-fun lt!169811 () Unit!6896)

(declare-fun Unit!6907 () Unit!6896)

(assert (=> b!386310 (= lt!169811 Unit!6907)))

(declare-fun b!386311 () Bool)

(declare-fun e!237693 () Bool)

(assert (=> b!386311 (= e!237693 (<= 0 (size!3445 (seqFromList!1003 (t!58841 tokens!465)))))))

(declare-fun b!386312 () Bool)

(assert (=> b!386312 (= e!237692 (not (= (_1!2735 (v!15217 lt!169812)) call!24882)))))

(declare-fun b!386313 () Bool)

(assert (=> b!386313 (= e!237689 call!24881)))

(declare-fun b!386306 () Bool)

(assert (=> b!386306 (= e!237691 (++!1199 call!24881 lt!169821))))

(declare-fun lt!169813 () BalanceConc!2928)

(assert (=> d!136983 (= (list!1843 lt!169813) (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 (dropList!221 (seqFromList!1003 (t!58841 tokens!465)) 0) separatorToken!170))))

(assert (=> d!136983 (= lt!169813 e!237694)))

(declare-fun c!76065 () Bool)

(assert (=> d!136983 (= c!76065 (>= 0 (size!3445 (seqFromList!1003 (t!58841 tokens!465)))))))

(declare-fun lt!169820 () Unit!6896)

(declare-fun lemmaContentSubsetPreservesForall!165 (List!4251 List!4251 Int) Unit!6896)

(assert (=> d!136983 (= lt!169820 (lemmaContentSubsetPreservesForall!165 (list!1845 (seqFromList!1003 (t!58841 tokens!465))) (dropList!221 (seqFromList!1003 (t!58841 tokens!465)) 0) lambda!12003))))

(assert (=> d!136983 e!237693))

(declare-fun res!173277 () Bool)

(assert (=> d!136983 (=> (not res!173277) (not e!237693))))

(assert (=> d!136983 (= res!173277 (>= 0 0))))

(assert (=> d!136983 (= (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 (seqFromList!1003 (t!58841 tokens!465)) separatorToken!170 0) lt!169813)))

(assert (= (and d!136983 res!173277) b!386311))

(assert (= (and d!136983 c!76065) b!386303))

(assert (= (and d!136983 (not c!76065)) b!386304))

(assert (= (and b!386304 res!173276) b!386307))

(assert (= (and b!386304 c!76064) b!386313))

(assert (= (and b!386304 (not c!76064)) b!386308))

(assert (= (and b!386308 res!173275) b!386312))

(assert (= (and b!386308 c!76066) b!386306))

(assert (= (and b!386308 (not c!76066)) b!386310))

(assert (= (or b!386306 b!386310) bm!24876))

(assert (= (or b!386306 b!386310) bm!24880))

(assert (= (or b!386313 bm!24876 b!386312) bm!24878))

(assert (= (or b!386313 bm!24880) bm!24877))

(assert (= (or b!386313 b!386306) bm!24879))

(assert (= (and bm!24879 c!76067) b!386309))

(assert (= (and bm!24879 (not c!76067)) b!386305))

(assert (=> b!386307 m!577059))

(declare-fun m!578443 () Bool)

(assert (=> b!386307 m!578443))

(declare-fun m!578445 () Bool)

(assert (=> b!386306 m!578445))

(declare-fun m!578447 () Bool)

(assert (=> bm!24877 m!578447))

(declare-fun m!578449 () Bool)

(assert (=> b!386305 m!578449))

(assert (=> b!386311 m!577059))

(declare-fun m!578451 () Bool)

(assert (=> b!386311 m!578451))

(declare-fun m!578453 () Bool)

(assert (=> b!386304 m!578453))

(declare-fun m!578455 () Bool)

(assert (=> b!386304 m!578455))

(assert (=> b!386304 m!577059))

(declare-fun m!578457 () Bool)

(assert (=> b!386304 m!578457))

(declare-fun m!578459 () Bool)

(assert (=> b!386304 m!578459))

(assert (=> b!386304 m!578457))

(assert (=> b!386304 m!578443))

(declare-fun m!578461 () Bool)

(assert (=> b!386304 m!578461))

(assert (=> b!386304 m!577059))

(declare-fun m!578463 () Bool)

(assert (=> b!386304 m!578463))

(assert (=> b!386304 m!578459))

(declare-fun m!578465 () Bool)

(assert (=> b!386304 m!578465))

(declare-fun m!578467 () Bool)

(assert (=> b!386304 m!578467))

(declare-fun m!578469 () Bool)

(assert (=> b!386304 m!578469))

(declare-fun m!578471 () Bool)

(assert (=> b!386304 m!578471))

(declare-fun m!578473 () Bool)

(assert (=> b!386304 m!578473))

(assert (=> b!386304 m!577059))

(assert (=> b!386304 m!578443))

(declare-fun m!578475 () Bool)

(assert (=> b!386304 m!578475))

(assert (=> b!386304 m!578469))

(declare-fun m!578477 () Bool)

(assert (=> b!386304 m!578477))

(assert (=> b!386304 m!578471))

(assert (=> b!386304 m!578443))

(assert (=> b!386304 m!578467))

(declare-fun m!578479 () Bool)

(assert (=> b!386304 m!578479))

(assert (=> bm!24878 m!577059))

(assert (=> bm!24878 m!578443))

(assert (=> d!136983 m!577059))

(declare-fun m!578481 () Bool)

(assert (=> d!136983 m!578481))

(assert (=> d!136983 m!577059))

(assert (=> d!136983 m!578457))

(assert (=> d!136983 m!578481))

(declare-fun m!578483 () Bool)

(assert (=> d!136983 m!578483))

(assert (=> d!136983 m!577059))

(assert (=> d!136983 m!578451))

(declare-fun m!578485 () Bool)

(assert (=> d!136983 m!578485))

(assert (=> d!136983 m!578457))

(assert (=> d!136983 m!578481))

(declare-fun m!578487 () Bool)

(assert (=> d!136983 m!578487))

(declare-fun m!578489 () Bool)

(assert (=> b!386310 m!578489))

(declare-fun m!578491 () Bool)

(assert (=> b!386310 m!578491))

(declare-fun m!578493 () Bool)

(assert (=> b!386310 m!578493))

(declare-fun m!578495 () Bool)

(assert (=> b!386310 m!578495))

(assert (=> b!386310 m!578489))

(assert (=> b!386310 m!578491))

(declare-fun m!578497 () Bool)

(assert (=> b!386310 m!578497))

(assert (=> b!386310 m!578493))

(declare-fun m!578499 () Bool)

(assert (=> b!386310 m!578499))

(assert (=> b!386310 m!578493))

(declare-fun m!578501 () Bool)

(assert (=> bm!24879 m!578501))

(assert (=> b!385515 d!136983))

(declare-fun d!136987 () Bool)

(declare-fun lt!169824 () BalanceConc!2928)

(assert (=> d!136987 (= (list!1843 lt!169824) (originalCharacters!862 separatorToken!170))))

(assert (=> d!136987 (= lt!169824 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (value!27657 separatorToken!170)))))

(assert (=> d!136987 (= (charsOf!462 separatorToken!170) lt!169824)))

(declare-fun b_lambda!15213 () Bool)

(assert (=> (not b_lambda!15213) (not d!136987)))

(declare-fun t!58887 () Bool)

(declare-fun tb!34045 () Bool)

(assert (=> (and b!385498 (= (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170)))) t!58887) tb!34045))

(declare-fun b!386317 () Bool)

(declare-fun e!237698 () Bool)

(declare-fun tp!118512 () Bool)

(assert (=> b!386317 (= e!237698 (and (inv!5268 (c!75903 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (value!27657 separatorToken!170)))) tp!118512))))

(declare-fun result!38356 () Bool)

(assert (=> tb!34045 (= result!38356 (and (inv!5269 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (value!27657 separatorToken!170))) e!237698))))

(assert (= tb!34045 b!386317))

(declare-fun m!578503 () Bool)

(assert (=> b!386317 m!578503))

(declare-fun m!578505 () Bool)

(assert (=> tb!34045 m!578505))

(assert (=> d!136987 t!58887))

(declare-fun b_and!38741 () Bool)

(assert (= b_and!38735 (and (=> t!58887 result!38356) b_and!38741)))

(declare-fun tb!34047 () Bool)

(declare-fun t!58889 () Bool)

(assert (=> (and b!385499 (= (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170)))) t!58889) tb!34047))

(declare-fun result!38358 () Bool)

(assert (= result!38358 result!38356))

(assert (=> d!136987 t!58889))

(declare-fun b_and!38743 () Bool)

(assert (= b_and!38737 (and (=> t!58889 result!38358) b_and!38743)))

(declare-fun tb!34049 () Bool)

(declare-fun t!58891 () Bool)

(assert (=> (and b!385493 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170)))) t!58891) tb!34049))

(declare-fun result!38360 () Bool)

(assert (= result!38360 result!38356))

(assert (=> d!136987 t!58891))

(declare-fun b_and!38745 () Bool)

(assert (= b_and!38739 (and (=> t!58891 result!38360) b_and!38745)))

(declare-fun m!578507 () Bool)

(assert (=> d!136987 m!578507))

(declare-fun m!578509 () Bool)

(assert (=> d!136987 m!578509))

(assert (=> b!385515 d!136987))

(declare-fun b!386318 () Bool)

(declare-fun e!237700 () List!4249)

(assert (=> b!386318 (= e!237700 lt!169372)))

(declare-fun b!386319 () Bool)

(assert (=> b!386319 (= e!237700 (Cons!4239 (h!9636 lt!169344) (++!1198 (t!58839 lt!169344) lt!169372)))))

(declare-fun b!386320 () Bool)

(declare-fun res!173278 () Bool)

(declare-fun e!237699 () Bool)

(assert (=> b!386320 (=> (not res!173278) (not e!237699))))

(declare-fun lt!169825 () List!4249)

(assert (=> b!386320 (= res!173278 (= (size!3448 lt!169825) (+ (size!3448 lt!169344) (size!3448 lt!169372))))))

(declare-fun d!136989 () Bool)

(assert (=> d!136989 e!237699))

(declare-fun res!173279 () Bool)

(assert (=> d!136989 (=> (not res!173279) (not e!237699))))

(assert (=> d!136989 (= res!173279 (= (content!680 lt!169825) ((_ map or) (content!680 lt!169344) (content!680 lt!169372))))))

(assert (=> d!136989 (= lt!169825 e!237700)))

(declare-fun c!76068 () Bool)

(assert (=> d!136989 (= c!76068 ((_ is Nil!4239) lt!169344))))

(assert (=> d!136989 (= (++!1198 lt!169344 lt!169372) lt!169825)))

(declare-fun b!386321 () Bool)

(assert (=> b!386321 (= e!237699 (or (not (= lt!169372 Nil!4239)) (= lt!169825 lt!169344)))))

(assert (= (and d!136989 c!76068) b!386318))

(assert (= (and d!136989 (not c!76068)) b!386319))

(assert (= (and d!136989 res!173279) b!386320))

(assert (= (and b!386320 res!173278) b!386321))

(declare-fun m!578511 () Bool)

(assert (=> b!386319 m!578511))

(declare-fun m!578513 () Bool)

(assert (=> b!386320 m!578513))

(assert (=> b!386320 m!578255))

(assert (=> b!386320 m!578267))

(declare-fun m!578515 () Bool)

(assert (=> d!136989 m!578515))

(assert (=> d!136989 m!578259))

(assert (=> d!136989 m!578273))

(assert (=> b!385515 d!136989))

(declare-fun d!136991 () Bool)

(assert (=> d!136991 (= (list!1843 (charsOf!462 (h!9638 tokens!465))) (list!1846 (c!75903 (charsOf!462 (h!9638 tokens!465)))))))

(declare-fun bs!46927 () Bool)

(assert (= bs!46927 d!136991))

(declare-fun m!578517 () Bool)

(assert (=> bs!46927 m!578517))

(assert (=> b!385515 d!136991))

(declare-fun d!136993 () Bool)

(declare-fun lt!169826 () BalanceConc!2928)

(assert (=> d!136993 (= (list!1843 lt!169826) (originalCharacters!862 (h!9638 tokens!465)))))

(assert (=> d!136993 (= lt!169826 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (value!27657 (h!9638 tokens!465))))))

(assert (=> d!136993 (= (charsOf!462 (h!9638 tokens!465)) lt!169826)))

(declare-fun b_lambda!15215 () Bool)

(assert (=> (not b_lambda!15215) (not d!136993)))

(assert (=> d!136993 t!58870))

(declare-fun b_and!38747 () Bool)

(assert (= b_and!38741 (and (=> t!58870 result!38350) b_and!38747)))

(assert (=> d!136993 t!58872))

(declare-fun b_and!38749 () Bool)

(assert (= b_and!38743 (and (=> t!58872 result!38352) b_and!38749)))

(assert (=> d!136993 t!58874))

(declare-fun b_and!38751 () Bool)

(assert (= b_and!38745 (and (=> t!58874 result!38354) b_and!38751)))

(declare-fun m!578519 () Bool)

(assert (=> d!136993 m!578519))

(assert (=> d!136993 m!578011))

(assert (=> b!385515 d!136993))

(declare-fun d!136995 () Bool)

(assert (=> d!136995 (= (++!1198 (++!1198 lt!169347 lt!169344) lt!169372) (++!1198 lt!169347 (++!1198 lt!169344 lt!169372)))))

(declare-fun lt!169829 () Unit!6896)

(declare-fun choose!3092 (List!4249 List!4249 List!4249) Unit!6896)

(assert (=> d!136995 (= lt!169829 (choose!3092 lt!169347 lt!169344 lt!169372))))

(assert (=> d!136995 (= (lemmaConcatAssociativity!542 lt!169347 lt!169344 lt!169372) lt!169829)))

(declare-fun bs!46928 () Bool)

(assert (= bs!46928 d!136995))

(assert (=> bs!46928 m!577071))

(declare-fun m!578521 () Bool)

(assert (=> bs!46928 m!578521))

(assert (=> bs!46928 m!577069))

(assert (=> bs!46928 m!577083))

(declare-fun m!578523 () Bool)

(assert (=> bs!46928 m!578523))

(assert (=> bs!46928 m!577069))

(assert (=> bs!46928 m!577071))

(assert (=> b!385515 d!136995))

(declare-fun b!386332 () Bool)

(declare-fun res!173282 () Bool)

(declare-fun e!237707 () Bool)

(assert (=> b!386332 (=> res!173282 e!237707)))

(assert (=> b!386332 (= res!173282 (not ((_ is IntegerValue!2525) (value!27657 (h!9638 tokens!465)))))))

(declare-fun e!237709 () Bool)

(assert (=> b!386332 (= e!237709 e!237707)))

(declare-fun b!386333 () Bool)

(declare-fun inv!15 (TokenValue!841) Bool)

(assert (=> b!386333 (= e!237707 (inv!15 (value!27657 (h!9638 tokens!465))))))

(declare-fun d!136997 () Bool)

(declare-fun c!76073 () Bool)

(assert (=> d!136997 (= c!76073 ((_ is IntegerValue!2523) (value!27657 (h!9638 tokens!465))))))

(declare-fun e!237708 () Bool)

(assert (=> d!136997 (= (inv!21 (value!27657 (h!9638 tokens!465))) e!237708)))

(declare-fun b!386334 () Bool)

(assert (=> b!386334 (= e!237708 e!237709)))

(declare-fun c!76074 () Bool)

(assert (=> b!386334 (= c!76074 ((_ is IntegerValue!2524) (value!27657 (h!9638 tokens!465))))))

(declare-fun b!386335 () Bool)

(declare-fun inv!17 (TokenValue!841) Bool)

(assert (=> b!386335 (= e!237709 (inv!17 (value!27657 (h!9638 tokens!465))))))

(declare-fun b!386336 () Bool)

(declare-fun inv!16 (TokenValue!841) Bool)

(assert (=> b!386336 (= e!237708 (inv!16 (value!27657 (h!9638 tokens!465))))))

(assert (= (and d!136997 c!76073) b!386336))

(assert (= (and d!136997 (not c!76073)) b!386334))

(assert (= (and b!386334 c!76074) b!386335))

(assert (= (and b!386334 (not c!76074)) b!386332))

(assert (= (and b!386332 (not res!173282)) b!386333))

(declare-fun m!578525 () Bool)

(assert (=> b!386333 m!578525))

(declare-fun m!578527 () Bool)

(assert (=> b!386335 m!578527))

(declare-fun m!578529 () Bool)

(assert (=> b!386336 m!578529))

(assert (=> b!385514 d!136997))

(declare-fun b!386337 () Bool)

(declare-fun e!237712 () Bool)

(assert (=> b!386337 (= e!237712 (not (= (head!1039 lt!169381) (c!75904 (regex!819 lt!169376)))))))

(declare-fun b!386338 () Bool)

(declare-fun e!237716 () Bool)

(assert (=> b!386338 (= e!237716 (nullable!222 (regex!819 lt!169376)))))

(declare-fun b!386339 () Bool)

(declare-fun res!173288 () Bool)

(declare-fun e!237713 () Bool)

(assert (=> b!386339 (=> res!173288 e!237713)))

(assert (=> b!386339 (= res!173288 (not ((_ is ElementMatch!1043) (regex!819 lt!169376))))))

(declare-fun e!237715 () Bool)

(assert (=> b!386339 (= e!237715 e!237713)))

(declare-fun d!136999 () Bool)

(declare-fun e!237710 () Bool)

(assert (=> d!136999 e!237710))

(declare-fun c!76076 () Bool)

(assert (=> d!136999 (= c!76076 ((_ is EmptyExpr!1043) (regex!819 lt!169376)))))

(declare-fun lt!169830 () Bool)

(assert (=> d!136999 (= lt!169830 e!237716)))

(declare-fun c!76075 () Bool)

(assert (=> d!136999 (= c!76075 (isEmpty!3092 lt!169381))))

(assert (=> d!136999 (validRegex!297 (regex!819 lt!169376))))

(assert (=> d!136999 (= (matchR!361 (regex!819 lt!169376) lt!169381) lt!169830)))

(declare-fun b!386340 () Bool)

(assert (=> b!386340 (= e!237715 (not lt!169830))))

(declare-fun b!386341 () Bool)

(declare-fun e!237711 () Bool)

(assert (=> b!386341 (= e!237711 e!237712)))

(declare-fun res!173284 () Bool)

(assert (=> b!386341 (=> res!173284 e!237712)))

(declare-fun call!24886 () Bool)

(assert (=> b!386341 (= res!173284 call!24886)))

(declare-fun b!386342 () Bool)

(assert (=> b!386342 (= e!237710 (= lt!169830 call!24886))))

(declare-fun b!386343 () Bool)

(assert (=> b!386343 (= e!237713 e!237711)))

(declare-fun res!173290 () Bool)

(assert (=> b!386343 (=> (not res!173290) (not e!237711))))

(assert (=> b!386343 (= res!173290 (not lt!169830))))

(declare-fun b!386344 () Bool)

(declare-fun e!237714 () Bool)

(assert (=> b!386344 (= e!237714 (= (head!1039 lt!169381) (c!75904 (regex!819 lt!169376))))))

(declare-fun b!386345 () Bool)

(declare-fun res!173287 () Bool)

(assert (=> b!386345 (=> (not res!173287) (not e!237714))))

(assert (=> b!386345 (= res!173287 (not call!24886))))

(declare-fun b!386346 () Bool)

(declare-fun res!173289 () Bool)

(assert (=> b!386346 (=> res!173289 e!237712)))

(assert (=> b!386346 (= res!173289 (not (isEmpty!3092 (tail!593 lt!169381))))))

(declare-fun b!386347 () Bool)

(assert (=> b!386347 (= e!237716 (matchR!361 (derivativeStep!188 (regex!819 lt!169376) (head!1039 lt!169381)) (tail!593 lt!169381)))))

(declare-fun bm!24881 () Bool)

(assert (=> bm!24881 (= call!24886 (isEmpty!3092 lt!169381))))

(declare-fun b!386348 () Bool)

(declare-fun res!173283 () Bool)

(assert (=> b!386348 (=> (not res!173283) (not e!237714))))

(assert (=> b!386348 (= res!173283 (isEmpty!3092 (tail!593 lt!169381)))))

(declare-fun b!386349 () Bool)

(assert (=> b!386349 (= e!237710 e!237715)))

(declare-fun c!76077 () Bool)

(assert (=> b!386349 (= c!76077 ((_ is EmptyLang!1043) (regex!819 lt!169376)))))

(declare-fun b!386350 () Bool)

(declare-fun res!173286 () Bool)

(assert (=> b!386350 (=> res!173286 e!237713)))

(assert (=> b!386350 (= res!173286 e!237714)))

(declare-fun res!173285 () Bool)

(assert (=> b!386350 (=> (not res!173285) (not e!237714))))

(assert (=> b!386350 (= res!173285 lt!169830)))

(assert (= (and d!136999 c!76075) b!386338))

(assert (= (and d!136999 (not c!76075)) b!386347))

(assert (= (and d!136999 c!76076) b!386342))

(assert (= (and d!136999 (not c!76076)) b!386349))

(assert (= (and b!386349 c!76077) b!386340))

(assert (= (and b!386349 (not c!76077)) b!386339))

(assert (= (and b!386339 (not res!173288)) b!386350))

(assert (= (and b!386350 res!173285) b!386345))

(assert (= (and b!386345 res!173287) b!386348))

(assert (= (and b!386348 res!173283) b!386344))

(assert (= (and b!386350 (not res!173286)) b!386343))

(assert (= (and b!386343 res!173290) b!386341))

(assert (= (and b!386341 (not res!173284)) b!386346))

(assert (= (and b!386346 (not res!173289)) b!386337))

(assert (= (or b!386342 b!386341 b!386345) bm!24881))

(assert (=> b!386347 m!577175))

(assert (=> b!386347 m!577175))

(declare-fun m!578531 () Bool)

(assert (=> b!386347 m!578531))

(declare-fun m!578533 () Bool)

(assert (=> b!386347 m!578533))

(assert (=> b!386347 m!578531))

(assert (=> b!386347 m!578533))

(declare-fun m!578535 () Bool)

(assert (=> b!386347 m!578535))

(assert (=> b!386346 m!578533))

(assert (=> b!386346 m!578533))

(declare-fun m!578537 () Bool)

(assert (=> b!386346 m!578537))

(declare-fun m!578539 () Bool)

(assert (=> d!136999 m!578539))

(declare-fun m!578541 () Bool)

(assert (=> d!136999 m!578541))

(assert (=> bm!24881 m!578539))

(assert (=> b!386348 m!578533))

(assert (=> b!386348 m!578533))

(assert (=> b!386348 m!578537))

(assert (=> b!386337 m!577175))

(declare-fun m!578543 () Bool)

(assert (=> b!386338 m!578543))

(assert (=> b!386344 m!577175))

(assert (=> b!385500 d!136999))

(declare-fun d!137001 () Bool)

(assert (=> d!137001 (= (get!1507 lt!169354) (v!15215 lt!169354))))

(assert (=> b!385500 d!137001))

(declare-fun d!137003 () Bool)

(assert (=> d!137003 (= (list!1843 (seqFromList!1004 lt!169375)) (list!1846 (c!75903 (seqFromList!1004 lt!169375))))))

(declare-fun bs!46929 () Bool)

(assert (= bs!46929 d!137003))

(declare-fun m!578545 () Bool)

(assert (=> bs!46929 m!578545))

(assert (=> b!385521 d!137003))

(declare-fun d!137005 () Bool)

(assert (=> d!137005 (= (seqFromList!1004 lt!169375) (fromListB!438 lt!169375))))

(declare-fun bs!46930 () Bool)

(assert (= bs!46930 d!137005))

(declare-fun m!578547 () Bool)

(assert (=> bs!46930 m!578547))

(assert (=> b!385521 d!137005))

(declare-fun d!137007 () Bool)

(declare-fun res!173295 () Bool)

(declare-fun e!237721 () Bool)

(assert (=> d!137007 (=> res!173295 e!237721)))

(assert (=> d!137007 (= res!173295 ((_ is Nil!4241) tokens!465))))

(assert (=> d!137007 (= (forall!1184 tokens!465 lambda!11983) e!237721)))

(declare-fun b!386355 () Bool)

(declare-fun e!237722 () Bool)

(assert (=> b!386355 (= e!237721 e!237722)))

(declare-fun res!173296 () Bool)

(assert (=> b!386355 (=> (not res!173296) (not e!237722))))

(assert (=> b!386355 (= res!173296 (dynLambda!2461 lambda!11983 (h!9638 tokens!465)))))

(declare-fun b!386356 () Bool)

(assert (=> b!386356 (= e!237722 (forall!1184 (t!58841 tokens!465) lambda!11983))))

(assert (= (and d!137007 (not res!173295)) b!386355))

(assert (= (and b!386355 res!173296) b!386356))

(declare-fun b_lambda!15217 () Bool)

(assert (=> (not b_lambda!15217) (not b!386355)))

(declare-fun m!578549 () Bool)

(assert (=> b!386355 m!578549))

(declare-fun m!578551 () Bool)

(assert (=> b!386356 m!578551))

(assert (=> b!385522 d!137007))

(declare-fun b!386357 () Bool)

(declare-fun res!173297 () Bool)

(declare-fun e!237723 () Bool)

(assert (=> b!386357 (=> res!173297 e!237723)))

(assert (=> b!386357 (= res!173297 (not ((_ is IntegerValue!2525) (value!27657 separatorToken!170))))))

(declare-fun e!237725 () Bool)

(assert (=> b!386357 (= e!237725 e!237723)))

(declare-fun b!386358 () Bool)

(assert (=> b!386358 (= e!237723 (inv!15 (value!27657 separatorToken!170)))))

(declare-fun d!137009 () Bool)

(declare-fun c!76078 () Bool)

(assert (=> d!137009 (= c!76078 ((_ is IntegerValue!2523) (value!27657 separatorToken!170)))))

(declare-fun e!237724 () Bool)

(assert (=> d!137009 (= (inv!21 (value!27657 separatorToken!170)) e!237724)))

(declare-fun b!386359 () Bool)

(assert (=> b!386359 (= e!237724 e!237725)))

(declare-fun c!76079 () Bool)

(assert (=> b!386359 (= c!76079 ((_ is IntegerValue!2524) (value!27657 separatorToken!170)))))

(declare-fun b!386360 () Bool)

(assert (=> b!386360 (= e!237725 (inv!17 (value!27657 separatorToken!170)))))

(declare-fun b!386361 () Bool)

(assert (=> b!386361 (= e!237724 (inv!16 (value!27657 separatorToken!170)))))

(assert (= (and d!137009 c!76078) b!386361))

(assert (= (and d!137009 (not c!76078)) b!386359))

(assert (= (and b!386359 c!76079) b!386360))

(assert (= (and b!386359 (not c!76079)) b!386357))

(assert (= (and b!386357 (not res!173297)) b!386358))

(declare-fun m!578553 () Bool)

(assert (=> b!386358 m!578553))

(declare-fun m!578555 () Bool)

(assert (=> b!386360 m!578555))

(declare-fun m!578557 () Bool)

(assert (=> b!386361 m!578557))

(assert (=> b!385540 d!137009))

(declare-fun d!137011 () Bool)

(declare-fun lt!169832 () Bool)

(declare-fun e!237727 () Bool)

(assert (=> d!137011 (= lt!169832 e!237727)))

(declare-fun res!173298 () Bool)

(assert (=> d!137011 (=> (not res!173298) (not e!237727))))

(assert (=> d!137011 (= res!173298 (= (list!1845 (_1!2733 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 separatorToken!170))))) (list!1845 (singletonSeq!365 separatorToken!170))))))

(declare-fun e!237726 () Bool)

(assert (=> d!137011 (= lt!169832 e!237726)))

(declare-fun res!173299 () Bool)

(assert (=> d!137011 (=> (not res!173299) (not e!237726))))

(declare-fun lt!169831 () tuple2!5034)

(assert (=> d!137011 (= res!173299 (= (size!3445 (_1!2733 lt!169831)) 1))))

(assert (=> d!137011 (= lt!169831 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 separatorToken!170))))))

(assert (=> d!137011 (not (isEmpty!3093 rules!1920))))

(assert (=> d!137011 (= (rulesProduceIndividualToken!454 thiss!17480 rules!1920 separatorToken!170) lt!169832)))

(declare-fun b!386362 () Bool)

(declare-fun res!173300 () Bool)

(assert (=> b!386362 (=> (not res!173300) (not e!237726))))

(assert (=> b!386362 (= res!173300 (= (apply!1018 (_1!2733 lt!169831) 0) separatorToken!170))))

(declare-fun b!386363 () Bool)

(assert (=> b!386363 (= e!237726 (isEmpty!3091 (_2!2733 lt!169831)))))

(declare-fun b!386364 () Bool)

(assert (=> b!386364 (= e!237727 (isEmpty!3091 (_2!2733 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 separatorToken!170))))))))

(assert (= (and d!137011 res!173299) b!386362))

(assert (= (and b!386362 res!173300) b!386363))

(assert (= (and d!137011 res!173298) b!386364))

(declare-fun m!578559 () Bool)

(assert (=> d!137011 m!578559))

(declare-fun m!578561 () Bool)

(assert (=> d!137011 m!578561))

(assert (=> d!137011 m!577111))

(assert (=> d!137011 m!577191))

(assert (=> d!137011 m!578559))

(declare-fun m!578563 () Bool)

(assert (=> d!137011 m!578563))

(declare-fun m!578565 () Bool)

(assert (=> d!137011 m!578565))

(assert (=> d!137011 m!577191))

(declare-fun m!578567 () Bool)

(assert (=> d!137011 m!578567))

(assert (=> d!137011 m!577191))

(declare-fun m!578569 () Bool)

(assert (=> b!386362 m!578569))

(declare-fun m!578571 () Bool)

(assert (=> b!386363 m!578571))

(assert (=> b!386364 m!577191))

(assert (=> b!386364 m!577191))

(assert (=> b!386364 m!578559))

(assert (=> b!386364 m!578559))

(assert (=> b!386364 m!578561))

(declare-fun m!578573 () Bool)

(assert (=> b!386364 m!578573))

(assert (=> b!385518 d!137011))

(declare-fun d!137013 () Bool)

(assert (=> d!137013 (= (isDefined!879 lt!169378) (not (isEmpty!3098 lt!169378)))))

(declare-fun bs!46931 () Bool)

(assert (= bs!46931 d!137013))

(declare-fun m!578575 () Bool)

(assert (=> bs!46931 m!578575))

(assert (=> b!385497 d!137013))

(assert (=> b!385497 d!136727))

(declare-fun d!137015 () Bool)

(assert (=> d!137015 (= (isEmpty!3092 (_2!2734 lt!169384)) ((_ is Nil!4239) (_2!2734 lt!169384)))))

(assert (=> b!385520 d!137015))

(declare-fun d!137017 () Bool)

(declare-fun res!173301 () Bool)

(declare-fun e!237728 () Bool)

(assert (=> d!137017 (=> (not res!173301) (not e!237728))))

(assert (=> d!137017 (= res!173301 (not (isEmpty!3092 (originalCharacters!862 separatorToken!170))))))

(assert (=> d!137017 (= (inv!5264 separatorToken!170) e!237728)))

(declare-fun b!386365 () Bool)

(declare-fun res!173302 () Bool)

(assert (=> b!386365 (=> (not res!173302) (not e!237728))))

(assert (=> b!386365 (= res!173302 (= (originalCharacters!862 separatorToken!170) (list!1843 (dynLambda!2463 (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (value!27657 separatorToken!170)))))))

(declare-fun b!386366 () Bool)

(assert (=> b!386366 (= e!237728 (= (size!3444 separatorToken!170) (size!3448 (originalCharacters!862 separatorToken!170))))))

(assert (= (and d!137017 res!173301) b!386365))

(assert (= (and b!386365 res!173302) b!386366))

(declare-fun b_lambda!15219 () Bool)

(assert (=> (not b_lambda!15219) (not b!386365)))

(assert (=> b!386365 t!58887))

(declare-fun b_and!38753 () Bool)

(assert (= b_and!38747 (and (=> t!58887 result!38356) b_and!38753)))

(assert (=> b!386365 t!58889))

(declare-fun b_and!38755 () Bool)

(assert (= b_and!38749 (and (=> t!58889 result!38358) b_and!38755)))

(assert (=> b!386365 t!58891))

(declare-fun b_and!38757 () Bool)

(assert (= b_and!38751 (and (=> t!58891 result!38360) b_and!38757)))

(declare-fun m!578577 () Bool)

(assert (=> d!137017 m!578577))

(assert (=> b!386365 m!578509))

(assert (=> b!386365 m!578509))

(declare-fun m!578579 () Bool)

(assert (=> b!386365 m!578579))

(declare-fun m!578581 () Bool)

(assert (=> b!386366 m!578581))

(assert (=> start!38490 d!137017))

(declare-fun d!137019 () Bool)

(declare-fun lt!169835 () Bool)

(assert (=> d!137019 (= lt!169835 (isEmpty!3090 (list!1845 (_1!2733 (lex!497 thiss!17480 rules!1920 (seqFromList!1004 lt!169347))))))))

(declare-fun isEmpty!3104 (Conc!1461) Bool)

(assert (=> d!137019 (= lt!169835 (isEmpty!3104 (c!75905 (_1!2733 (lex!497 thiss!17480 rules!1920 (seqFromList!1004 lt!169347))))))))

(assert (=> d!137019 (= (isEmpty!3094 (_1!2733 (lex!497 thiss!17480 rules!1920 (seqFromList!1004 lt!169347)))) lt!169835)))

(declare-fun bs!46932 () Bool)

(assert (= bs!46932 d!137019))

(declare-fun m!578583 () Bool)

(assert (=> bs!46932 m!578583))

(assert (=> bs!46932 m!578583))

(declare-fun m!578585 () Bool)

(assert (=> bs!46932 m!578585))

(declare-fun m!578587 () Bool)

(assert (=> bs!46932 m!578587))

(assert (=> b!385541 d!137019))

(declare-fun b!386367 () Bool)

(declare-fun e!237731 () Bool)

(declare-fun lt!169836 () tuple2!5034)

(assert (=> b!386367 (= e!237731 (= (_2!2733 lt!169836) (seqFromList!1004 lt!169347)))))

(declare-fun d!137021 () Bool)

(declare-fun e!237730 () Bool)

(assert (=> d!137021 e!237730))

(declare-fun res!173304 () Bool)

(assert (=> d!137021 (=> (not res!173304) (not e!237730))))

(assert (=> d!137021 (= res!173304 e!237731)))

(declare-fun c!76080 () Bool)

(assert (=> d!137021 (= c!76080 (> (size!3445 (_1!2733 lt!169836)) 0))))

(assert (=> d!137021 (= lt!169836 (lexTailRecV2!234 thiss!17480 rules!1920 (seqFromList!1004 lt!169347) (BalanceConc!2929 Empty!1460) (seqFromList!1004 lt!169347) (BalanceConc!2931 Empty!1461)))))

(assert (=> d!137021 (= (lex!497 thiss!17480 rules!1920 (seqFromList!1004 lt!169347)) lt!169836)))

(declare-fun b!386368 () Bool)

(declare-fun res!173303 () Bool)

(assert (=> b!386368 (=> (not res!173303) (not e!237730))))

(assert (=> b!386368 (= res!173303 (= (list!1845 (_1!2733 lt!169836)) (_1!2737 (lexList!267 thiss!17480 rules!1920 (list!1843 (seqFromList!1004 lt!169347))))))))

(declare-fun b!386369 () Bool)

(assert (=> b!386369 (= e!237730 (= (list!1843 (_2!2733 lt!169836)) (_2!2737 (lexList!267 thiss!17480 rules!1920 (list!1843 (seqFromList!1004 lt!169347))))))))

(declare-fun b!386370 () Bool)

(declare-fun e!237729 () Bool)

(assert (=> b!386370 (= e!237729 (not (isEmpty!3094 (_1!2733 lt!169836))))))

(declare-fun b!386371 () Bool)

(assert (=> b!386371 (= e!237731 e!237729)))

(declare-fun res!173305 () Bool)

(assert (=> b!386371 (= res!173305 (< (size!3449 (_2!2733 lt!169836)) (size!3449 (seqFromList!1004 lt!169347))))))

(assert (=> b!386371 (=> (not res!173305) (not e!237729))))

(assert (= (and d!137021 c!76080) b!386371))

(assert (= (and d!137021 (not c!76080)) b!386367))

(assert (= (and b!386371 res!173305) b!386370))

(assert (= (and d!137021 res!173304) b!386368))

(assert (= (and b!386368 res!173303) b!386369))

(declare-fun m!578589 () Bool)

(assert (=> b!386369 m!578589))

(assert (=> b!386369 m!577093))

(declare-fun m!578591 () Bool)

(assert (=> b!386369 m!578591))

(assert (=> b!386369 m!578591))

(declare-fun m!578593 () Bool)

(assert (=> b!386369 m!578593))

(declare-fun m!578595 () Bool)

(assert (=> b!386371 m!578595))

(assert (=> b!386371 m!577093))

(declare-fun m!578597 () Bool)

(assert (=> b!386371 m!578597))

(declare-fun m!578599 () Bool)

(assert (=> b!386368 m!578599))

(assert (=> b!386368 m!577093))

(assert (=> b!386368 m!578591))

(assert (=> b!386368 m!578591))

(assert (=> b!386368 m!578593))

(declare-fun m!578601 () Bool)

(assert (=> b!386370 m!578601))

(declare-fun m!578603 () Bool)

(assert (=> d!137021 m!578603))

(assert (=> d!137021 m!577093))

(assert (=> d!137021 m!577093))

(declare-fun m!578605 () Bool)

(assert (=> d!137021 m!578605))

(assert (=> b!385541 d!137021))

(declare-fun d!137023 () Bool)

(assert (=> d!137023 (= (seqFromList!1004 lt!169347) (fromListB!438 lt!169347))))

(declare-fun bs!46933 () Bool)

(assert (= bs!46933 d!137023))

(declare-fun m!578607 () Bool)

(assert (=> bs!46933 m!578607))

(assert (=> b!385541 d!137023))

(declare-fun d!137025 () Bool)

(assert (=> d!137025 (not (contains!897 (usedCharacters!120 (regex!819 (rule!1472 separatorToken!170))) lt!169385))))

(declare-fun lt!169839 () Unit!6896)

(declare-fun choose!3093 (LexerInterface!705 List!4250 List!4250 Rule!1438 Rule!1438 C!3008) Unit!6896)

(assert (=> d!137025 (= lt!169839 (choose!3093 thiss!17480 rules!1920 rules!1920 (rule!1472 lt!169355) (rule!1472 separatorToken!170) lt!169385))))

(assert (=> d!137025 (rulesInvariant!671 thiss!17480 rules!1920)))

(assert (=> d!137025 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!78 thiss!17480 rules!1920 rules!1920 (rule!1472 lt!169355) (rule!1472 separatorToken!170) lt!169385) lt!169839)))

(declare-fun bs!46934 () Bool)

(assert (= bs!46934 d!137025))

(assert (=> bs!46934 m!577169))

(assert (=> bs!46934 m!577169))

(assert (=> bs!46934 m!577171))

(declare-fun m!578609 () Bool)

(assert (=> bs!46934 m!578609))

(assert (=> bs!46934 m!577057))

(assert (=> b!385527 d!137025))

(declare-fun d!137027 () Bool)

(assert (=> d!137027 (= (isEmpty!3093 rules!1920) ((_ is Nil!4240) rules!1920))))

(assert (=> b!385526 d!137027))

(declare-fun d!137029 () Bool)

(assert (=> d!137029 (= (inv!5261 (tag!1059 (h!9637 rules!1920))) (= (mod (str.len (value!27656 (tag!1059 (h!9637 rules!1920)))) 2) 0))))

(assert (=> b!385528 d!137029))

(declare-fun d!137031 () Bool)

(declare-fun res!173306 () Bool)

(declare-fun e!237732 () Bool)

(assert (=> d!137031 (=> (not res!173306) (not e!237732))))

(assert (=> d!137031 (= res!173306 (semiInverseModEq!319 (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toValue!1610 (transformation!819 (h!9637 rules!1920)))))))

(assert (=> d!137031 (= (inv!5265 (transformation!819 (h!9637 rules!1920))) e!237732)))

(declare-fun b!386372 () Bool)

(assert (=> b!386372 (= e!237732 (equivClasses!302 (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toValue!1610 (transformation!819 (h!9637 rules!1920)))))))

(assert (= (and d!137031 res!173306) b!386372))

(declare-fun m!578611 () Bool)

(assert (=> d!137031 m!578611))

(declare-fun m!578613 () Bool)

(assert (=> b!386372 m!578613))

(assert (=> b!385528 d!137031))

(declare-fun d!137033 () Bool)

(declare-fun res!173311 () Bool)

(declare-fun e!237737 () Bool)

(assert (=> d!137033 (=> res!173311 e!237737)))

(assert (=> d!137033 (= res!173311 (not ((_ is Cons!4240) rules!1920)))))

(assert (=> d!137033 (= (sepAndNonSepRulesDisjointChars!408 rules!1920 rules!1920) e!237737)))

(declare-fun b!386377 () Bool)

(declare-fun e!237738 () Bool)

(assert (=> b!386377 (= e!237737 e!237738)))

(declare-fun res!173312 () Bool)

(assert (=> b!386377 (=> (not res!173312) (not e!237738))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!176 (Rule!1438 List!4250) Bool)

(assert (=> b!386377 (= res!173312 (ruleDisjointCharsFromAllFromOtherType!176 (h!9637 rules!1920) rules!1920))))

(declare-fun b!386378 () Bool)

(assert (=> b!386378 (= e!237738 (sepAndNonSepRulesDisjointChars!408 rules!1920 (t!58840 rules!1920)))))

(assert (= (and d!137033 (not res!173311)) b!386377))

(assert (= (and b!386377 res!173312) b!386378))

(declare-fun m!578615 () Bool)

(assert (=> b!386377 m!578615))

(declare-fun m!578617 () Bool)

(assert (=> b!386378 m!578617))

(assert (=> b!385507 d!137033))

(declare-fun d!137035 () Bool)

(declare-fun lt!169841 () Bool)

(declare-fun e!237740 () Bool)

(assert (=> d!137035 (= lt!169841 e!237740)))

(declare-fun res!173313 () Bool)

(assert (=> d!137035 (=> (not res!173313) (not e!237740))))

(assert (=> d!137035 (= res!173313 (= (list!1845 (_1!2733 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 (h!9638 tokens!465)))))) (list!1845 (singletonSeq!365 (h!9638 tokens!465)))))))

(declare-fun e!237739 () Bool)

(assert (=> d!137035 (= lt!169841 e!237739)))

(declare-fun res!173314 () Bool)

(assert (=> d!137035 (=> (not res!173314) (not e!237739))))

(declare-fun lt!169840 () tuple2!5034)

(assert (=> d!137035 (= res!173314 (= (size!3445 (_1!2733 lt!169840)) 1))))

(assert (=> d!137035 (= lt!169840 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 (h!9638 tokens!465)))))))

(assert (=> d!137035 (not (isEmpty!3093 rules!1920))))

(assert (=> d!137035 (= (rulesProduceIndividualToken!454 thiss!17480 rules!1920 (h!9638 tokens!465)) lt!169841)))

(declare-fun b!386379 () Bool)

(declare-fun res!173315 () Bool)

(assert (=> b!386379 (=> (not res!173315) (not e!237739))))

(assert (=> b!386379 (= res!173315 (= (apply!1018 (_1!2733 lt!169840) 0) (h!9638 tokens!465)))))

(declare-fun b!386380 () Bool)

(assert (=> b!386380 (= e!237739 (isEmpty!3091 (_2!2733 lt!169840)))))

(declare-fun b!386381 () Bool)

(assert (=> b!386381 (= e!237740 (isEmpty!3091 (_2!2733 (lex!497 thiss!17480 rules!1920 (print!430 thiss!17480 (singletonSeq!365 (h!9638 tokens!465)))))))))

(assert (= (and d!137035 res!173314) b!386379))

(assert (= (and b!386379 res!173315) b!386380))

(assert (= (and d!137035 res!173313) b!386381))

(declare-fun m!578619 () Bool)

(assert (=> d!137035 m!578619))

(declare-fun m!578621 () Bool)

(assert (=> d!137035 m!578621))

(assert (=> d!137035 m!577111))

(assert (=> d!137035 m!577125))

(assert (=> d!137035 m!578619))

(declare-fun m!578623 () Bool)

(assert (=> d!137035 m!578623))

(declare-fun m!578625 () Bool)

(assert (=> d!137035 m!578625))

(assert (=> d!137035 m!577125))

(declare-fun m!578627 () Bool)

(assert (=> d!137035 m!578627))

(assert (=> d!137035 m!577125))

(declare-fun m!578629 () Bool)

(assert (=> b!386379 m!578629))

(declare-fun m!578631 () Bool)

(assert (=> b!386380 m!578631))

(assert (=> b!386381 m!577125))

(assert (=> b!386381 m!577125))

(assert (=> b!386381 m!578619))

(assert (=> b!386381 m!578619))

(assert (=> b!386381 m!578621))

(declare-fun m!578633 () Bool)

(assert (=> b!386381 m!578633))

(assert (=> b!385506 d!137035))

(declare-fun d!137037 () Bool)

(declare-fun res!173318 () Bool)

(declare-fun e!237743 () Bool)

(assert (=> d!137037 (=> (not res!173318) (not e!237743))))

(declare-fun rulesValid!284 (LexerInterface!705 List!4250) Bool)

(assert (=> d!137037 (= res!173318 (rulesValid!284 thiss!17480 rules!1920))))

(assert (=> d!137037 (= (rulesInvariant!671 thiss!17480 rules!1920) e!237743)))

(declare-fun b!386384 () Bool)

(declare-datatypes ((List!4253 0))(
  ( (Nil!4243) (Cons!4243 (h!9640 String!5285) (t!58929 List!4253)) )
))
(declare-fun noDuplicateTag!284 (LexerInterface!705 List!4250 List!4253) Bool)

(assert (=> b!386384 (= e!237743 (noDuplicateTag!284 thiss!17480 rules!1920 Nil!4243))))

(assert (= (and d!137037 res!173318) b!386384))

(declare-fun m!578635 () Bool)

(assert (=> d!137037 m!578635))

(declare-fun m!578637 () Bool)

(assert (=> b!386384 m!578637))

(assert (=> b!385524 d!137037))

(declare-fun d!137039 () Bool)

(declare-fun lt!169844 () Token!1382)

(assert (=> d!137039 (= lt!169844 (apply!1022 (list!1845 (_1!2733 lt!169361)) 0))))

(declare-fun apply!1024 (Conc!1461 Int) Token!1382)

(assert (=> d!137039 (= lt!169844 (apply!1024 (c!75905 (_1!2733 lt!169361)) 0))))

(declare-fun e!237746 () Bool)

(assert (=> d!137039 e!237746))

(declare-fun res!173321 () Bool)

(assert (=> d!137039 (=> (not res!173321) (not e!237746))))

(assert (=> d!137039 (= res!173321 (<= 0 0))))

(assert (=> d!137039 (= (apply!1018 (_1!2733 lt!169361) 0) lt!169844)))

(declare-fun b!386387 () Bool)

(assert (=> b!386387 (= e!237746 (< 0 (size!3445 (_1!2733 lt!169361))))))

(assert (= (and d!137039 res!173321) b!386387))

(assert (=> d!137039 m!577749))

(assert (=> d!137039 m!577749))

(declare-fun m!578639 () Bool)

(assert (=> d!137039 m!578639))

(declare-fun m!578641 () Bool)

(assert (=> d!137039 m!578641))

(assert (=> b!386387 m!577147))

(assert (=> b!385503 d!137039))

(declare-fun b!386388 () Bool)

(declare-fun e!237748 () List!4249)

(assert (=> b!386388 (= e!237748 lt!169372)))

(declare-fun b!386389 () Bool)

(assert (=> b!386389 (= e!237748 (Cons!4239 (h!9636 lt!169347) (++!1198 (t!58839 lt!169347) lt!169372)))))

(declare-fun b!386390 () Bool)

(declare-fun res!173322 () Bool)

(declare-fun e!237747 () Bool)

(assert (=> b!386390 (=> (not res!173322) (not e!237747))))

(declare-fun lt!169845 () List!4249)

(assert (=> b!386390 (= res!173322 (= (size!3448 lt!169845) (+ (size!3448 lt!169347) (size!3448 lt!169372))))))

(declare-fun d!137041 () Bool)

(assert (=> d!137041 e!237747))

(declare-fun res!173323 () Bool)

(assert (=> d!137041 (=> (not res!173323) (not e!237747))))

(assert (=> d!137041 (= res!173323 (= (content!680 lt!169845) ((_ map or) (content!680 lt!169347) (content!680 lt!169372))))))

(assert (=> d!137041 (= lt!169845 e!237748)))

(declare-fun c!76082 () Bool)

(assert (=> d!137041 (= c!76082 ((_ is Nil!4239) lt!169347))))

(assert (=> d!137041 (= (++!1198 lt!169347 lt!169372) lt!169845)))

(declare-fun b!386391 () Bool)

(assert (=> b!386391 (= e!237747 (or (not (= lt!169372 Nil!4239)) (= lt!169845 lt!169347)))))

(assert (= (and d!137041 c!76082) b!386388))

(assert (= (and d!137041 (not c!76082)) b!386389))

(assert (= (and d!137041 res!173323) b!386390))

(assert (= (and b!386390 res!173322) b!386391))

(declare-fun m!578643 () Bool)

(assert (=> b!386389 m!578643))

(declare-fun m!578645 () Bool)

(assert (=> b!386390 m!578645))

(assert (=> b!386390 m!577349))

(assert (=> b!386390 m!578267))

(declare-fun m!578647 () Bool)

(assert (=> d!137041 m!578647))

(assert (=> d!137041 m!578243))

(assert (=> d!137041 m!578273))

(assert (=> b!385502 d!137041))

(declare-fun d!137043 () Bool)

(assert (=> d!137043 (= (list!1843 lt!169374) (list!1846 (c!75903 lt!169374)))))

(declare-fun bs!46935 () Bool)

(assert (= bs!46935 d!137043))

(declare-fun m!578649 () Bool)

(assert (=> bs!46935 m!578649))

(assert (=> b!385525 d!137043))

(declare-fun d!137045 () Bool)

(declare-fun lt!169847 () BalanceConc!2928)

(assert (=> d!137045 (= (list!1843 lt!169847) (printListTailRec!186 thiss!17480 (dropList!221 lt!169346 0) (list!1843 (BalanceConc!2929 Empty!1460))))))

(declare-fun e!237750 () BalanceConc!2928)

(assert (=> d!137045 (= lt!169847 e!237750)))

(declare-fun c!76083 () Bool)

(assert (=> d!137045 (= c!76083 (>= 0 (size!3445 lt!169346)))))

(declare-fun e!237749 () Bool)

(assert (=> d!137045 e!237749))

(declare-fun res!173324 () Bool)

(assert (=> d!137045 (=> (not res!173324) (not e!237749))))

(assert (=> d!137045 (= res!173324 (>= 0 0))))

(assert (=> d!137045 (= (printTailRec!391 thiss!17480 lt!169346 0 (BalanceConc!2929 Empty!1460)) lt!169847)))

(declare-fun b!386392 () Bool)

(assert (=> b!386392 (= e!237749 (<= 0 (size!3445 lt!169346)))))

(declare-fun b!386393 () Bool)

(assert (=> b!386393 (= e!237750 (BalanceConc!2929 Empty!1460))))

(declare-fun b!386394 () Bool)

(assert (=> b!386394 (= e!237750 (printTailRec!391 thiss!17480 lt!169346 (+ 0 1) (++!1199 (BalanceConc!2929 Empty!1460) (charsOf!462 (apply!1018 lt!169346 0)))))))

(declare-fun lt!169849 () List!4251)

(assert (=> b!386394 (= lt!169849 (list!1845 lt!169346))))

(declare-fun lt!169848 () Unit!6896)

(assert (=> b!386394 (= lt!169848 (lemmaDropApply!261 lt!169849 0))))

(assert (=> b!386394 (= (head!1040 (drop!284 lt!169849 0)) (apply!1022 lt!169849 0))))

(declare-fun lt!169851 () Unit!6896)

(assert (=> b!386394 (= lt!169851 lt!169848)))

(declare-fun lt!169846 () List!4251)

(assert (=> b!386394 (= lt!169846 (list!1845 lt!169346))))

(declare-fun lt!169850 () Unit!6896)

(assert (=> b!386394 (= lt!169850 (lemmaDropTail!253 lt!169846 0))))

(assert (=> b!386394 (= (tail!592 (drop!284 lt!169846 0)) (drop!284 lt!169846 (+ 0 1)))))

(declare-fun lt!169852 () Unit!6896)

(assert (=> b!386394 (= lt!169852 lt!169850)))

(assert (= (and d!137045 res!173324) b!386392))

(assert (= (and d!137045 c!76083) b!386393))

(assert (= (and d!137045 (not c!76083)) b!386394))

(assert (=> d!137045 m!577297))

(declare-fun m!578651 () Bool)

(assert (=> d!137045 m!578651))

(assert (=> d!137045 m!577297))

(declare-fun m!578653 () Bool)

(assert (=> d!137045 m!578653))

(declare-fun m!578655 () Bool)

(assert (=> d!137045 m!578655))

(assert (=> d!137045 m!578651))

(declare-fun m!578657 () Bool)

(assert (=> d!137045 m!578657))

(assert (=> b!386392 m!578657))

(declare-fun m!578659 () Bool)

(assert (=> b!386394 m!578659))

(declare-fun m!578661 () Bool)

(assert (=> b!386394 m!578661))

(declare-fun m!578663 () Bool)

(assert (=> b!386394 m!578663))

(declare-fun m!578665 () Bool)

(assert (=> b!386394 m!578665))

(declare-fun m!578667 () Bool)

(assert (=> b!386394 m!578667))

(declare-fun m!578669 () Bool)

(assert (=> b!386394 m!578669))

(assert (=> b!386394 m!578659))

(declare-fun m!578671 () Bool)

(assert (=> b!386394 m!578671))

(assert (=> b!386394 m!578661))

(declare-fun m!578673 () Bool)

(assert (=> b!386394 m!578673))

(assert (=> b!386394 m!578673))

(declare-fun m!578675 () Bool)

(assert (=> b!386394 m!578675))

(declare-fun m!578677 () Bool)

(assert (=> b!386394 m!578677))

(declare-fun m!578679 () Bool)

(assert (=> b!386394 m!578679))

(declare-fun m!578681 () Bool)

(assert (=> b!386394 m!578681))

(assert (=> b!386394 m!578663))

(assert (=> b!386394 m!578667))

(declare-fun m!578683 () Bool)

(assert (=> b!386394 m!578683))

(assert (=> b!385525 d!137045))

(declare-fun d!137047 () Bool)

(declare-fun lt!169853 () BalanceConc!2928)

(assert (=> d!137047 (= (list!1843 lt!169853) (printList!379 thiss!17480 (list!1845 lt!169346)))))

(assert (=> d!137047 (= lt!169853 (printTailRec!391 thiss!17480 lt!169346 0 (BalanceConc!2929 Empty!1460)))))

(assert (=> d!137047 (= (print!430 thiss!17480 lt!169346) lt!169853)))

(declare-fun bs!46936 () Bool)

(assert (= bs!46936 d!137047))

(declare-fun m!578685 () Bool)

(assert (=> bs!46936 m!578685))

(assert (=> bs!46936 m!578683))

(assert (=> bs!46936 m!578683))

(declare-fun m!578687 () Bool)

(assert (=> bs!46936 m!578687))

(assert (=> bs!46936 m!577129))

(assert (=> b!385525 d!137047))

(declare-fun d!137049 () Bool)

(declare-fun e!237751 () Bool)

(assert (=> d!137049 e!237751))

(declare-fun res!173325 () Bool)

(assert (=> d!137049 (=> (not res!173325) (not e!237751))))

(declare-fun lt!169854 () BalanceConc!2930)

(assert (=> d!137049 (= res!173325 (= (list!1845 lt!169854) (Cons!4241 (h!9638 tokens!465) Nil!4241)))))

(assert (=> d!137049 (= lt!169854 (singleton!171 (h!9638 tokens!465)))))

(assert (=> d!137049 (= (singletonSeq!365 (h!9638 tokens!465)) lt!169854)))

(declare-fun b!386395 () Bool)

(assert (=> b!386395 (= e!237751 (isBalanced!436 (c!75905 lt!169854)))))

(assert (= (and d!137049 res!173325) b!386395))

(declare-fun m!578689 () Bool)

(assert (=> d!137049 m!578689))

(declare-fun m!578691 () Bool)

(assert (=> d!137049 m!578691))

(declare-fun m!578693 () Bool)

(assert (=> b!386395 m!578693))

(assert (=> b!385525 d!137049))

(declare-fun d!137051 () Bool)

(declare-fun c!76086 () Bool)

(assert (=> d!137051 (= c!76086 ((_ is Cons!4241) (Cons!4241 (h!9638 tokens!465) Nil!4241)))))

(declare-fun e!237754 () List!4249)

(assert (=> d!137051 (= (printList!379 thiss!17480 (Cons!4241 (h!9638 tokens!465) Nil!4241)) e!237754)))

(declare-fun b!386400 () Bool)

(assert (=> b!386400 (= e!237754 (++!1198 (list!1843 (charsOf!462 (h!9638 (Cons!4241 (h!9638 tokens!465) Nil!4241)))) (printList!379 thiss!17480 (t!58841 (Cons!4241 (h!9638 tokens!465) Nil!4241)))))))

(declare-fun b!386401 () Bool)

(assert (=> b!386401 (= e!237754 Nil!4239)))

(assert (= (and d!137051 c!76086) b!386400))

(assert (= (and d!137051 (not c!76086)) b!386401))

(declare-fun m!578695 () Bool)

(assert (=> b!386400 m!578695))

(assert (=> b!386400 m!578695))

(declare-fun m!578697 () Bool)

(assert (=> b!386400 m!578697))

(declare-fun m!578699 () Bool)

(assert (=> b!386400 m!578699))

(assert (=> b!386400 m!578697))

(assert (=> b!386400 m!578699))

(declare-fun m!578701 () Bool)

(assert (=> b!386400 m!578701))

(assert (=> b!385525 d!137051))

(declare-fun d!137053 () Bool)

(assert (=> d!137053 (= (inv!5261 (tag!1059 (rule!1472 (h!9638 tokens!465)))) (= (mod (str.len (value!27656 (tag!1059 (rule!1472 (h!9638 tokens!465))))) 2) 0))))

(assert (=> b!385532 d!137053))

(declare-fun d!137055 () Bool)

(declare-fun res!173326 () Bool)

(declare-fun e!237755 () Bool)

(assert (=> d!137055 (=> (not res!173326) (not e!237755))))

(assert (=> d!137055 (= res!173326 (semiInverseModEq!319 (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (toValue!1610 (transformation!819 (rule!1472 (h!9638 tokens!465))))))))

(assert (=> d!137055 (= (inv!5265 (transformation!819 (rule!1472 (h!9638 tokens!465)))) e!237755)))

(declare-fun b!386402 () Bool)

(assert (=> b!386402 (= e!237755 (equivClasses!302 (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (toValue!1610 (transformation!819 (rule!1472 (h!9638 tokens!465))))))))

(assert (= (and d!137055 res!173326) b!386402))

(declare-fun m!578703 () Bool)

(assert (=> d!137055 m!578703))

(declare-fun m!578705 () Bool)

(assert (=> b!386402 m!578705))

(assert (=> b!385532 d!137055))

(declare-fun d!137057 () Bool)

(assert (=> d!137057 (= (get!1506 lt!169351) (v!15216 lt!169351))))

(assert (=> b!385510 d!137057))

(declare-fun d!137059 () Bool)

(assert (=> d!137059 (= (isDefined!879 lt!169351) (not (isEmpty!3098 lt!169351)))))

(declare-fun bs!46937 () Bool)

(assert (= bs!46937 d!137059))

(declare-fun m!578707 () Bool)

(assert (=> bs!46937 m!578707))

(assert (=> b!385510 d!137059))

(declare-fun b!386403 () Bool)

(declare-fun res!173332 () Bool)

(declare-fun e!237757 () Bool)

(assert (=> b!386403 (=> (not res!173332) (not e!237757))))

(declare-fun lt!169856 () Option!1040)

(assert (=> b!386403 (= res!173332 (matchR!361 (regex!819 (rule!1472 (_1!2734 (get!1506 lt!169856)))) (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169856))))))))

(declare-fun b!386404 () Bool)

(declare-fun res!173331 () Bool)

(assert (=> b!386404 (=> (not res!173331) (not e!237757))))

(assert (=> b!386404 (= res!173331 (= (value!27657 (_1!2734 (get!1506 lt!169856))) (apply!1023 (transformation!819 (rule!1472 (_1!2734 (get!1506 lt!169856)))) (seqFromList!1004 (originalCharacters!862 (_1!2734 (get!1506 lt!169856)))))))))

(declare-fun b!386405 () Bool)

(declare-fun e!237756 () Option!1040)

(declare-fun call!24887 () Option!1040)

(assert (=> b!386405 (= e!237756 call!24887)))

(declare-fun b!386406 () Bool)

(declare-fun res!173329 () Bool)

(assert (=> b!386406 (=> (not res!173329) (not e!237757))))

(assert (=> b!386406 (= res!173329 (< (size!3448 (_2!2734 (get!1506 lt!169856))) (size!3448 lt!169347)))))

(declare-fun b!386407 () Bool)

(declare-fun e!237758 () Bool)

(assert (=> b!386407 (= e!237758 e!237757)))

(declare-fun res!173328 () Bool)

(assert (=> b!386407 (=> (not res!173328) (not e!237757))))

(assert (=> b!386407 (= res!173328 (isDefined!879 lt!169856))))

(declare-fun d!137061 () Bool)

(assert (=> d!137061 e!237758))

(declare-fun res!173330 () Bool)

(assert (=> d!137061 (=> res!173330 e!237758)))

(assert (=> d!137061 (= res!173330 (isEmpty!3098 lt!169856))))

(assert (=> d!137061 (= lt!169856 e!237756)))

(declare-fun c!76087 () Bool)

(assert (=> d!137061 (= c!76087 (and ((_ is Cons!4240) rules!1920) ((_ is Nil!4240) (t!58840 rules!1920))))))

(declare-fun lt!169858 () Unit!6896)

(declare-fun lt!169859 () Unit!6896)

(assert (=> d!137061 (= lt!169858 lt!169859)))

(assert (=> d!137061 (isPrefix!479 lt!169347 lt!169347)))

(assert (=> d!137061 (= lt!169859 (lemmaIsPrefixRefl!265 lt!169347 lt!169347))))

(assert (=> d!137061 (rulesValidInductive!260 thiss!17480 rules!1920)))

(assert (=> d!137061 (= (maxPrefix!421 thiss!17480 rules!1920 lt!169347) lt!169856)))

(declare-fun bm!24882 () Bool)

(assert (=> bm!24882 (= call!24887 (maxPrefixOneRule!199 thiss!17480 (h!9637 rules!1920) lt!169347))))

(declare-fun b!386408 () Bool)

(declare-fun res!173333 () Bool)

(assert (=> b!386408 (=> (not res!173333) (not e!237757))))

(assert (=> b!386408 (= res!173333 (= (++!1198 (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169856)))) (_2!2734 (get!1506 lt!169856))) lt!169347))))

(declare-fun b!386409 () Bool)

(assert (=> b!386409 (= e!237757 (contains!896 rules!1920 (rule!1472 (_1!2734 (get!1506 lt!169856)))))))

(declare-fun b!386410 () Bool)

(declare-fun res!173327 () Bool)

(assert (=> b!386410 (=> (not res!173327) (not e!237757))))

(assert (=> b!386410 (= res!173327 (= (list!1843 (charsOf!462 (_1!2734 (get!1506 lt!169856)))) (originalCharacters!862 (_1!2734 (get!1506 lt!169856)))))))

(declare-fun b!386411 () Bool)

(declare-fun lt!169857 () Option!1040)

(declare-fun lt!169855 () Option!1040)

(assert (=> b!386411 (= e!237756 (ite (and ((_ is None!1039) lt!169857) ((_ is None!1039) lt!169855)) None!1039 (ite ((_ is None!1039) lt!169855) lt!169857 (ite ((_ is None!1039) lt!169857) lt!169855 (ite (>= (size!3444 (_1!2734 (v!15216 lt!169857))) (size!3444 (_1!2734 (v!15216 lt!169855)))) lt!169857 lt!169855)))))))

(assert (=> b!386411 (= lt!169857 call!24887)))

(assert (=> b!386411 (= lt!169855 (maxPrefix!421 thiss!17480 (t!58840 rules!1920) lt!169347))))

(assert (= (and d!137061 c!76087) b!386405))

(assert (= (and d!137061 (not c!76087)) b!386411))

(assert (= (or b!386405 b!386411) bm!24882))

(assert (= (and d!137061 (not res!173330)) b!386407))

(assert (= (and b!386407 res!173328) b!386410))

(assert (= (and b!386410 res!173327) b!386406))

(assert (= (and b!386406 res!173329) b!386408))

(assert (= (and b!386408 res!173333) b!386404))

(assert (= (and b!386404 res!173331) b!386403))

(assert (= (and b!386403 res!173332) b!386409))

(declare-fun m!578709 () Bool)

(assert (=> b!386407 m!578709))

(declare-fun m!578711 () Bool)

(assert (=> b!386408 m!578711))

(declare-fun m!578713 () Bool)

(assert (=> b!386408 m!578713))

(assert (=> b!386408 m!578713))

(declare-fun m!578715 () Bool)

(assert (=> b!386408 m!578715))

(assert (=> b!386408 m!578715))

(declare-fun m!578717 () Bool)

(assert (=> b!386408 m!578717))

(declare-fun m!578719 () Bool)

(assert (=> d!137061 m!578719))

(declare-fun m!578721 () Bool)

(assert (=> d!137061 m!578721))

(declare-fun m!578723 () Bool)

(assert (=> d!137061 m!578723))

(assert (=> d!137061 m!577369))

(assert (=> b!386404 m!578711))

(declare-fun m!578725 () Bool)

(assert (=> b!386404 m!578725))

(assert (=> b!386404 m!578725))

(declare-fun m!578727 () Bool)

(assert (=> b!386404 m!578727))

(declare-fun m!578729 () Bool)

(assert (=> b!386411 m!578729))

(assert (=> b!386410 m!578711))

(assert (=> b!386410 m!578713))

(assert (=> b!386410 m!578713))

(assert (=> b!386410 m!578715))

(assert (=> b!386403 m!578711))

(assert (=> b!386403 m!578713))

(assert (=> b!386403 m!578713))

(assert (=> b!386403 m!578715))

(assert (=> b!386403 m!578715))

(declare-fun m!578731 () Bool)

(assert (=> b!386403 m!578731))

(assert (=> b!386409 m!578711))

(declare-fun m!578733 () Bool)

(assert (=> b!386409 m!578733))

(declare-fun m!578735 () Bool)

(assert (=> bm!24882 m!578735))

(assert (=> b!386406 m!578711))

(declare-fun m!578737 () Bool)

(assert (=> b!386406 m!578737))

(assert (=> b!386406 m!577349))

(assert (=> b!385510 d!137061))

(declare-fun d!137063 () Bool)

(assert (=> d!137063 (not (matchR!361 (regex!819 (rule!1472 lt!169355)) lt!169381))))

(declare-fun lt!169862 () Unit!6896)

(declare-fun choose!3095 (Regex!1043 List!4249 C!3008) Unit!6896)

(assert (=> d!137063 (= lt!169862 (choose!3095 (regex!819 (rule!1472 lt!169355)) lt!169381 lt!169373))))

(assert (=> d!137063 (validRegex!297 (regex!819 (rule!1472 lt!169355)))))

(assert (=> d!137063 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!98 (regex!819 (rule!1472 lt!169355)) lt!169381 lt!169373) lt!169862)))

(declare-fun bs!46938 () Bool)

(assert (= bs!46938 d!137063))

(assert (=> bs!46938 m!577041))

(declare-fun m!578739 () Bool)

(assert (=> bs!46938 m!578739))

(declare-fun m!578741 () Bool)

(assert (=> bs!46938 m!578741))

(assert (=> b!385512 d!137063))

(declare-fun b!386412 () Bool)

(declare-fun e!237761 () Bool)

(assert (=> b!386412 (= e!237761 (not (= (head!1039 lt!169381) (c!75904 (regex!819 (rule!1472 lt!169355))))))))

(declare-fun b!386413 () Bool)

(declare-fun e!237765 () Bool)

(assert (=> b!386413 (= e!237765 (nullable!222 (regex!819 (rule!1472 lt!169355))))))

(declare-fun b!386414 () Bool)

(declare-fun res!173339 () Bool)

(declare-fun e!237762 () Bool)

(assert (=> b!386414 (=> res!173339 e!237762)))

(assert (=> b!386414 (= res!173339 (not ((_ is ElementMatch!1043) (regex!819 (rule!1472 lt!169355)))))))

(declare-fun e!237764 () Bool)

(assert (=> b!386414 (= e!237764 e!237762)))

(declare-fun d!137065 () Bool)

(declare-fun e!237759 () Bool)

(assert (=> d!137065 e!237759))

(declare-fun c!76090 () Bool)

(assert (=> d!137065 (= c!76090 ((_ is EmptyExpr!1043) (regex!819 (rule!1472 lt!169355))))))

(declare-fun lt!169863 () Bool)

(assert (=> d!137065 (= lt!169863 e!237765)))

(declare-fun c!76089 () Bool)

(assert (=> d!137065 (= c!76089 (isEmpty!3092 lt!169381))))

(assert (=> d!137065 (validRegex!297 (regex!819 (rule!1472 lt!169355)))))

(assert (=> d!137065 (= (matchR!361 (regex!819 (rule!1472 lt!169355)) lt!169381) lt!169863)))

(declare-fun b!386415 () Bool)

(assert (=> b!386415 (= e!237764 (not lt!169863))))

(declare-fun b!386416 () Bool)

(declare-fun e!237760 () Bool)

(assert (=> b!386416 (= e!237760 e!237761)))

(declare-fun res!173335 () Bool)

(assert (=> b!386416 (=> res!173335 e!237761)))

(declare-fun call!24888 () Bool)

(assert (=> b!386416 (= res!173335 call!24888)))

(declare-fun b!386417 () Bool)

(assert (=> b!386417 (= e!237759 (= lt!169863 call!24888))))

(declare-fun b!386418 () Bool)

(assert (=> b!386418 (= e!237762 e!237760)))

(declare-fun res!173341 () Bool)

(assert (=> b!386418 (=> (not res!173341) (not e!237760))))

(assert (=> b!386418 (= res!173341 (not lt!169863))))

(declare-fun b!386419 () Bool)

(declare-fun e!237763 () Bool)

(assert (=> b!386419 (= e!237763 (= (head!1039 lt!169381) (c!75904 (regex!819 (rule!1472 lt!169355)))))))

(declare-fun b!386420 () Bool)

(declare-fun res!173338 () Bool)

(assert (=> b!386420 (=> (not res!173338) (not e!237763))))

(assert (=> b!386420 (= res!173338 (not call!24888))))

(declare-fun b!386421 () Bool)

(declare-fun res!173340 () Bool)

(assert (=> b!386421 (=> res!173340 e!237761)))

(assert (=> b!386421 (= res!173340 (not (isEmpty!3092 (tail!593 lt!169381))))))

(declare-fun b!386422 () Bool)

(assert (=> b!386422 (= e!237765 (matchR!361 (derivativeStep!188 (regex!819 (rule!1472 lt!169355)) (head!1039 lt!169381)) (tail!593 lt!169381)))))

(declare-fun bm!24883 () Bool)

(assert (=> bm!24883 (= call!24888 (isEmpty!3092 lt!169381))))

(declare-fun b!386423 () Bool)

(declare-fun res!173334 () Bool)

(assert (=> b!386423 (=> (not res!173334) (not e!237763))))

(assert (=> b!386423 (= res!173334 (isEmpty!3092 (tail!593 lt!169381)))))

(declare-fun b!386424 () Bool)

(assert (=> b!386424 (= e!237759 e!237764)))

(declare-fun c!76091 () Bool)

(assert (=> b!386424 (= c!76091 ((_ is EmptyLang!1043) (regex!819 (rule!1472 lt!169355))))))

(declare-fun b!386425 () Bool)

(declare-fun res!173337 () Bool)

(assert (=> b!386425 (=> res!173337 e!237762)))

(assert (=> b!386425 (= res!173337 e!237763)))

(declare-fun res!173336 () Bool)

(assert (=> b!386425 (=> (not res!173336) (not e!237763))))

(assert (=> b!386425 (= res!173336 lt!169863)))

(assert (= (and d!137065 c!76089) b!386413))

(assert (= (and d!137065 (not c!76089)) b!386422))

(assert (= (and d!137065 c!76090) b!386417))

(assert (= (and d!137065 (not c!76090)) b!386424))

(assert (= (and b!386424 c!76091) b!386415))

(assert (= (and b!386424 (not c!76091)) b!386414))

(assert (= (and b!386414 (not res!173339)) b!386425))

(assert (= (and b!386425 res!173336) b!386420))

(assert (= (and b!386420 res!173338) b!386423))

(assert (= (and b!386423 res!173334) b!386419))

(assert (= (and b!386425 (not res!173337)) b!386418))

(assert (= (and b!386418 res!173341) b!386416))

(assert (= (and b!386416 (not res!173335)) b!386421))

(assert (= (and b!386421 (not res!173340)) b!386412))

(assert (= (or b!386417 b!386416 b!386420) bm!24883))

(assert (=> b!386422 m!577175))

(assert (=> b!386422 m!577175))

(declare-fun m!578743 () Bool)

(assert (=> b!386422 m!578743))

(assert (=> b!386422 m!578533))

(assert (=> b!386422 m!578743))

(assert (=> b!386422 m!578533))

(declare-fun m!578745 () Bool)

(assert (=> b!386422 m!578745))

(assert (=> b!386421 m!578533))

(assert (=> b!386421 m!578533))

(assert (=> b!386421 m!578537))

(assert (=> d!137065 m!578539))

(assert (=> d!137065 m!578741))

(assert (=> bm!24883 m!578539))

(assert (=> b!386423 m!578533))

(assert (=> b!386423 m!578533))

(assert (=> b!386423 m!578537))

(assert (=> b!386412 m!577175))

(declare-fun m!578747 () Bool)

(assert (=> b!386413 m!578747))

(assert (=> b!386419 m!577175))

(assert (=> b!385512 d!137065))

(declare-fun d!137067 () Bool)

(assert (=> d!137067 (= (list!1843 (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 lt!169368 separatorToken!170 0)) (list!1846 (c!75903 (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 lt!169368 separatorToken!170 0))))))

(declare-fun bs!46939 () Bool)

(assert (= bs!46939 d!137067))

(declare-fun m!578749 () Bool)

(assert (=> bs!46939 m!578749))

(assert (=> b!385533 d!137067))

(declare-fun bs!46940 () Bool)

(declare-fun d!137069 () Bool)

(assert (= bs!46940 (and d!137069 b!385517)))

(declare-fun lambda!12005 () Int)

(assert (=> bs!46940 (not (= lambda!12005 lambda!11984))))

(declare-fun bs!46941 () Bool)

(assert (= bs!46941 (and d!137069 b!386304)))

(assert (=> bs!46941 (not (= lambda!12005 lambda!12004))))

(declare-fun bs!46942 () Bool)

(assert (= bs!46942 (and d!137069 d!136983)))

(assert (=> bs!46942 (= lambda!12005 lambda!12003)))

(declare-fun bs!46943 () Bool)

(assert (= bs!46943 (and d!137069 b!385522)))

(assert (=> bs!46943 (= lambda!12005 lambda!11983)))

(declare-fun bs!46944 () Bool)

(assert (= bs!46944 (and d!137069 b!386240)))

(assert (=> bs!46944 (not (= lambda!12005 lambda!11992))))

(declare-fun bs!46945 () Bool)

(declare-fun b!386427 () Bool)

(assert (= bs!46945 (and b!386427 b!385517)))

(declare-fun lambda!12006 () Int)

(assert (=> bs!46945 (= lambda!12006 lambda!11984)))

(declare-fun bs!46946 () Bool)

(assert (= bs!46946 (and b!386427 b!386304)))

(assert (=> bs!46946 (= lambda!12006 lambda!12004)))

(declare-fun bs!46947 () Bool)

(assert (= bs!46947 (and b!386427 d!136983)))

(assert (=> bs!46947 (not (= lambda!12006 lambda!12003))))

(declare-fun bs!46948 () Bool)

(assert (= bs!46948 (and b!386427 d!137069)))

(assert (=> bs!46948 (not (= lambda!12006 lambda!12005))))

(declare-fun bs!46949 () Bool)

(assert (= bs!46949 (and b!386427 b!385522)))

(assert (=> bs!46949 (not (= lambda!12006 lambda!11983))))

(declare-fun bs!46950 () Bool)

(assert (= bs!46950 (and b!386427 b!386240)))

(assert (=> bs!46950 (= lambda!12006 lambda!11992)))

(declare-fun b!386439 () Bool)

(declare-fun e!237775 () Bool)

(assert (=> b!386439 (= e!237775 true)))

(declare-fun b!386438 () Bool)

(declare-fun e!237774 () Bool)

(assert (=> b!386438 (= e!237774 e!237775)))

(declare-fun b!386437 () Bool)

(declare-fun e!237773 () Bool)

(assert (=> b!386437 (= e!237773 e!237774)))

(assert (=> b!386427 e!237773))

(assert (= b!386438 b!386439))

(assert (= b!386437 b!386438))

(assert (= (and b!386427 ((_ is Cons!4240) rules!1920)) b!386437))

(assert (=> b!386439 (< (dynLambda!2457 order!3605 (toValue!1610 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!12006))))

(assert (=> b!386439 (< (dynLambda!2459 order!3609 (toChars!1469 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!12006))))

(assert (=> b!386427 true))

(declare-fun b!386426 () Bool)

(declare-fun e!237772 () BalanceConc!2928)

(assert (=> b!386426 (= e!237772 (BalanceConc!2929 Empty!1460))))

(declare-fun bm!24884 () Bool)

(declare-fun call!24893 () Token!1382)

(declare-fun call!24890 () Token!1382)

(assert (=> bm!24884 (= call!24893 call!24890)))

(declare-fun e!237767 () BalanceConc!2928)

(assert (=> b!386427 (= e!237772 e!237767)))

(declare-fun lt!169877 () List!4251)

(assert (=> b!386427 (= lt!169877 (list!1845 lt!169368))))

(declare-fun lt!169871 () Unit!6896)

(assert (=> b!386427 (= lt!169871 (lemmaDropApply!261 lt!169877 0))))

(assert (=> b!386427 (= (head!1040 (drop!284 lt!169877 0)) (apply!1022 lt!169877 0))))

(declare-fun lt!169864 () Unit!6896)

(assert (=> b!386427 (= lt!169864 lt!169871)))

(declare-fun lt!169873 () List!4251)

(assert (=> b!386427 (= lt!169873 (list!1845 lt!169368))))

(declare-fun lt!169876 () Unit!6896)

(assert (=> b!386427 (= lt!169876 (lemmaDropTail!253 lt!169873 0))))

(assert (=> b!386427 (= (tail!592 (drop!284 lt!169873 0)) (drop!284 lt!169873 (+ 0 1)))))

(declare-fun lt!169868 () Unit!6896)

(assert (=> b!386427 (= lt!169868 lt!169876)))

(declare-fun lt!169870 () Unit!6896)

(assert (=> b!386427 (= lt!169870 (forallContained!372 (list!1845 lt!169368) lambda!12006 (apply!1018 lt!169368 0)))))

(declare-fun lt!169875 () BalanceConc!2928)

(assert (=> b!386427 (= lt!169875 (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 lt!169368 separatorToken!170 (+ 0 1)))))

(declare-fun lt!169866 () Option!1041)

(assert (=> b!386427 (= lt!169866 (maxPrefixZipperSequence!384 thiss!17480 rules!1920 (++!1199 (charsOf!462 (apply!1018 lt!169368 0)) lt!169875)))))

(declare-fun res!173343 () Bool)

(assert (=> b!386427 (= res!173343 ((_ is Some!1040) lt!169866))))

(declare-fun e!237766 () Bool)

(assert (=> b!386427 (=> (not res!173343) (not e!237766))))

(declare-fun c!76092 () Bool)

(assert (=> b!386427 (= c!76092 e!237766)))

(declare-fun call!24892 () BalanceConc!2928)

(declare-fun c!76094 () Bool)

(declare-fun bm!24885 () Bool)

(assert (=> bm!24885 (= call!24892 (charsOf!462 (ite c!76092 call!24890 (ite c!76094 separatorToken!170 call!24893))))))

(declare-fun b!386428 () Bool)

(declare-fun e!237768 () BalanceConc!2928)

(assert (=> b!386428 (= e!237768 (charsOf!462 call!24893))))

(declare-fun bm!24886 () Bool)

(assert (=> bm!24886 (= call!24890 (apply!1018 lt!169368 0))))

(declare-fun bm!24887 () Bool)

(declare-fun c!76095 () Bool)

(assert (=> bm!24887 (= c!76095 c!76092)))

(declare-fun call!24889 () BalanceConc!2928)

(declare-fun call!24891 () BalanceConc!2928)

(assert (=> bm!24887 (= call!24889 (++!1199 e!237768 (ite c!76092 lt!169875 call!24891)))))

(declare-fun b!386430 () Bool)

(assert (=> b!386430 (= e!237766 (= (_1!2735 (v!15217 lt!169866)) (apply!1018 lt!169368 0)))))

(declare-fun bm!24888 () Bool)

(assert (=> bm!24888 (= call!24891 call!24892)))

(declare-fun b!386431 () Bool)

(declare-fun e!237770 () Bool)

(assert (=> b!386431 (= c!76094 e!237770)))

(declare-fun res!173342 () Bool)

(assert (=> b!386431 (=> (not res!173342) (not e!237770))))

(assert (=> b!386431 (= res!173342 ((_ is Some!1040) lt!169866))))

(declare-fun e!237769 () BalanceConc!2928)

(assert (=> b!386431 (= e!237767 e!237769)))

(declare-fun b!386432 () Bool)

(assert (=> b!386432 (= e!237768 call!24892)))

(declare-fun b!386433 () Bool)

(assert (=> b!386433 (= e!237769 (BalanceConc!2929 Empty!1460))))

(assert (=> b!386433 (= (print!430 thiss!17480 (singletonSeq!365 call!24893)) (printTailRec!391 thiss!17480 (singletonSeq!365 call!24893) 0 (BalanceConc!2929 Empty!1460)))))

(declare-fun lt!169869 () Unit!6896)

(declare-fun Unit!6914 () Unit!6896)

(assert (=> b!386433 (= lt!169869 Unit!6914)))

(declare-fun lt!169872 () Unit!6896)

(assert (=> b!386433 (= lt!169872 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!169 thiss!17480 rules!1920 (list!1843 call!24891) (list!1843 lt!169875)))))

(assert (=> b!386433 false))

(declare-fun lt!169865 () Unit!6896)

(declare-fun Unit!6915 () Unit!6896)

(assert (=> b!386433 (= lt!169865 Unit!6915)))

(declare-fun b!386434 () Bool)

(declare-fun e!237771 () Bool)

(assert (=> b!386434 (= e!237771 (<= 0 (size!3445 lt!169368)))))

(declare-fun b!386435 () Bool)

(assert (=> b!386435 (= e!237770 (not (= (_1!2735 (v!15217 lt!169866)) call!24890)))))

(declare-fun b!386436 () Bool)

(assert (=> b!386436 (= e!237767 call!24889)))

(declare-fun b!386429 () Bool)

(assert (=> b!386429 (= e!237769 (++!1199 call!24889 lt!169875))))

(declare-fun lt!169867 () BalanceConc!2928)

(assert (=> d!137069 (= (list!1843 lt!169867) (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 (dropList!221 lt!169368 0) separatorToken!170))))

(assert (=> d!137069 (= lt!169867 e!237772)))

(declare-fun c!76093 () Bool)

(assert (=> d!137069 (= c!76093 (>= 0 (size!3445 lt!169368)))))

(declare-fun lt!169874 () Unit!6896)

(assert (=> d!137069 (= lt!169874 (lemmaContentSubsetPreservesForall!165 (list!1845 lt!169368) (dropList!221 lt!169368 0) lambda!12005))))

(assert (=> d!137069 e!237771))

(declare-fun res!173344 () Bool)

(assert (=> d!137069 (=> (not res!173344) (not e!237771))))

(assert (=> d!137069 (= res!173344 (>= 0 0))))

(assert (=> d!137069 (= (printWithSeparatorTokenWhenNeededRec!378 thiss!17480 rules!1920 lt!169368 separatorToken!170 0) lt!169867)))

(assert (= (and d!137069 res!173344) b!386434))

(assert (= (and d!137069 c!76093) b!386426))

(assert (= (and d!137069 (not c!76093)) b!386427))

(assert (= (and b!386427 res!173343) b!386430))

(assert (= (and b!386427 c!76092) b!386436))

(assert (= (and b!386427 (not c!76092)) b!386431))

(assert (= (and b!386431 res!173342) b!386435))

(assert (= (and b!386431 c!76094) b!386429))

(assert (= (and b!386431 (not c!76094)) b!386433))

(assert (= (or b!386429 b!386433) bm!24884))

(assert (= (or b!386429 b!386433) bm!24888))

(assert (= (or b!386436 bm!24884 b!386435) bm!24886))

(assert (= (or b!386436 bm!24888) bm!24885))

(assert (= (or b!386436 b!386429) bm!24887))

(assert (= (and bm!24887 c!76095) b!386432))

(assert (= (and bm!24887 (not c!76095)) b!386428))

(declare-fun m!578751 () Bool)

(assert (=> b!386430 m!578751))

(declare-fun m!578753 () Bool)

(assert (=> b!386429 m!578753))

(declare-fun m!578755 () Bool)

(assert (=> bm!24885 m!578755))

(declare-fun m!578757 () Bool)

(assert (=> b!386428 m!578757))

(declare-fun m!578759 () Bool)

(assert (=> b!386434 m!578759))

(declare-fun m!578761 () Bool)

(assert (=> b!386427 m!578761))

(declare-fun m!578763 () Bool)

(assert (=> b!386427 m!578763))

(declare-fun m!578765 () Bool)

(assert (=> b!386427 m!578765))

(declare-fun m!578767 () Bool)

(assert (=> b!386427 m!578767))

(assert (=> b!386427 m!578765))

(assert (=> b!386427 m!578751))

(declare-fun m!578769 () Bool)

(assert (=> b!386427 m!578769))

(declare-fun m!578771 () Bool)

(assert (=> b!386427 m!578771))

(assert (=> b!386427 m!578767))

(declare-fun m!578773 () Bool)

(assert (=> b!386427 m!578773))

(declare-fun m!578775 () Bool)

(assert (=> b!386427 m!578775))

(declare-fun m!578777 () Bool)

(assert (=> b!386427 m!578777))

(declare-fun m!578779 () Bool)

(assert (=> b!386427 m!578779))

(declare-fun m!578781 () Bool)

(assert (=> b!386427 m!578781))

(assert (=> b!386427 m!578751))

(declare-fun m!578783 () Bool)

(assert (=> b!386427 m!578783))

(assert (=> b!386427 m!578777))

(declare-fun m!578785 () Bool)

(assert (=> b!386427 m!578785))

(assert (=> b!386427 m!578779))

(assert (=> b!386427 m!578751))

(assert (=> b!386427 m!578775))

(declare-fun m!578787 () Bool)

(assert (=> b!386427 m!578787))

(assert (=> bm!24886 m!578751))

(declare-fun m!578789 () Bool)

(assert (=> d!137069 m!578789))

(assert (=> d!137069 m!578765))

(assert (=> d!137069 m!578789))

(declare-fun m!578791 () Bool)

(assert (=> d!137069 m!578791))

(assert (=> d!137069 m!578759))

(declare-fun m!578793 () Bool)

(assert (=> d!137069 m!578793))

(assert (=> d!137069 m!578765))

(assert (=> d!137069 m!578789))

(declare-fun m!578795 () Bool)

(assert (=> d!137069 m!578795))

(declare-fun m!578797 () Bool)

(assert (=> b!386433 m!578797))

(declare-fun m!578799 () Bool)

(assert (=> b!386433 m!578799))

(declare-fun m!578801 () Bool)

(assert (=> b!386433 m!578801))

(declare-fun m!578803 () Bool)

(assert (=> b!386433 m!578803))

(assert (=> b!386433 m!578797))

(assert (=> b!386433 m!578799))

(declare-fun m!578805 () Bool)

(assert (=> b!386433 m!578805))

(assert (=> b!386433 m!578801))

(declare-fun m!578807 () Bool)

(assert (=> b!386433 m!578807))

(assert (=> b!386433 m!578801))

(declare-fun m!578809 () Bool)

(assert (=> bm!24887 m!578809))

(assert (=> b!385533 d!137069))

(declare-fun bs!46951 () Bool)

(declare-fun b!386444 () Bool)

(assert (= bs!46951 (and b!386444 b!385517)))

(declare-fun lambda!12007 () Int)

(assert (=> bs!46951 (= lambda!12007 lambda!11984)))

(declare-fun bs!46952 () Bool)

(assert (= bs!46952 (and b!386444 b!386304)))

(assert (=> bs!46952 (= lambda!12007 lambda!12004)))

(declare-fun bs!46953 () Bool)

(assert (= bs!46953 (and b!386444 b!386427)))

(assert (=> bs!46953 (= lambda!12007 lambda!12006)))

(declare-fun bs!46954 () Bool)

(assert (= bs!46954 (and b!386444 d!136983)))

(assert (=> bs!46954 (not (= lambda!12007 lambda!12003))))

(declare-fun bs!46955 () Bool)

(assert (= bs!46955 (and b!386444 d!137069)))

(assert (=> bs!46955 (not (= lambda!12007 lambda!12005))))

(declare-fun bs!46956 () Bool)

(assert (= bs!46956 (and b!386444 b!385522)))

(assert (=> bs!46956 (not (= lambda!12007 lambda!11983))))

(declare-fun bs!46957 () Bool)

(assert (= bs!46957 (and b!386444 b!386240)))

(assert (=> bs!46957 (= lambda!12007 lambda!11992)))

(declare-fun b!386454 () Bool)

(declare-fun e!237784 () Bool)

(assert (=> b!386454 (= e!237784 true)))

(declare-fun b!386453 () Bool)

(declare-fun e!237783 () Bool)

(assert (=> b!386453 (= e!237783 e!237784)))

(declare-fun b!386452 () Bool)

(declare-fun e!237782 () Bool)

(assert (=> b!386452 (= e!237782 e!237783)))

(assert (=> b!386444 e!237782))

(assert (= b!386453 b!386454))

(assert (= b!386452 b!386453))

(assert (= (and b!386444 ((_ is Cons!4240) rules!1920)) b!386452))

(assert (=> b!386454 (< (dynLambda!2457 order!3605 (toValue!1610 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!12007))))

(assert (=> b!386454 (< (dynLambda!2459 order!3609 (toChars!1469 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!12007))))

(assert (=> b!386444 true))

(declare-fun call!24895 () BalanceConc!2928)

(declare-fun c!76100 () Bool)

(declare-fun bm!24889 () Bool)

(declare-fun call!24894 () BalanceConc!2928)

(declare-fun call!24897 () List!4249)

(assert (=> bm!24889 (= call!24897 (list!1843 (ite c!76100 call!24895 call!24894)))))

(declare-fun bm!24890 () Bool)

(assert (=> bm!24890 (= call!24894 call!24895)))

(declare-fun e!237780 () List!4249)

(declare-fun e!237781 () List!4249)

(assert (=> b!386444 (= e!237780 e!237781)))

(declare-fun lt!169883 () Unit!6896)

(assert (=> b!386444 (= lt!169883 (forallContained!372 tokens!465 lambda!12007 (h!9638 tokens!465)))))

(declare-fun lt!169884 () List!4249)

(assert (=> b!386444 (= lt!169884 (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 (t!58841 tokens!465) separatorToken!170))))

(declare-fun lt!169882 () Option!1040)

(assert (=> b!386444 (= lt!169882 (maxPrefix!421 thiss!17480 rules!1920 (++!1198 (list!1843 (charsOf!462 (h!9638 tokens!465))) lt!169884)))))

(assert (=> b!386444 (= c!76100 (and ((_ is Some!1039) lt!169882) (= (_1!2734 (v!15216 lt!169882)) (h!9638 tokens!465))))))

(declare-fun b!386445 () Bool)

(declare-fun e!237779 () BalanceConc!2928)

(assert (=> b!386445 (= e!237779 (charsOf!462 separatorToken!170))))

(declare-fun d!137071 () Bool)

(declare-fun c!76101 () Bool)

(assert (=> d!137071 (= c!76101 ((_ is Cons!4241) tokens!465))))

(assert (=> d!137071 (= (printWithSeparatorTokenWhenNeededList!386 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!237780)))

(declare-fun bm!24891 () Bool)

(declare-fun call!24896 () List!4249)

(assert (=> bm!24891 (= call!24896 (list!1843 e!237779))))

(declare-fun c!76098 () Bool)

(declare-fun c!76099 () Bool)

(assert (=> bm!24891 (= c!76098 c!76099)))

(declare-fun b!386446 () Bool)

(assert (=> b!386446 (= e!237779 call!24894)))

(declare-fun b!386447 () Bool)

(assert (=> b!386447 (= e!237780 Nil!4239)))

(declare-fun b!386448 () Bool)

(assert (=> b!386448 (= c!76099 (and ((_ is Some!1039) lt!169882) (not (= (_1!2734 (v!15216 lt!169882)) (h!9638 tokens!465)))))))

(declare-fun e!237778 () List!4249)

(assert (=> b!386448 (= e!237781 e!237778)))

(declare-fun call!24898 () List!4249)

(declare-fun bm!24892 () Bool)

(assert (=> bm!24892 (= call!24898 (++!1198 call!24897 (ite c!76100 lt!169884 call!24896)))))

(declare-fun b!386449 () Bool)

(assert (=> b!386449 (= e!237778 Nil!4239)))

(assert (=> b!386449 (= (print!430 thiss!17480 (singletonSeq!365 (h!9638 tokens!465))) (printTailRec!391 thiss!17480 (singletonSeq!365 (h!9638 tokens!465)) 0 (BalanceConc!2929 Empty!1460)))))

(declare-fun lt!169881 () Unit!6896)

(declare-fun Unit!6918 () Unit!6896)

(assert (=> b!386449 (= lt!169881 Unit!6918)))

(declare-fun lt!169885 () Unit!6896)

(assert (=> b!386449 (= lt!169885 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!169 thiss!17480 rules!1920 call!24896 lt!169884))))

(assert (=> b!386449 false))

(declare-fun lt!169880 () Unit!6896)

(declare-fun Unit!6919 () Unit!6896)

(assert (=> b!386449 (= lt!169880 Unit!6919)))

(declare-fun b!386450 () Bool)

(assert (=> b!386450 (= e!237781 call!24898)))

(declare-fun b!386451 () Bool)

(assert (=> b!386451 (= e!237778 (++!1198 call!24898 lt!169884))))

(declare-fun bm!24893 () Bool)

(assert (=> bm!24893 (= call!24895 (charsOf!462 (h!9638 tokens!465)))))

(assert (= (and d!137071 c!76101) b!386444))

(assert (= (and d!137071 (not c!76101)) b!386447))

(assert (= (and b!386444 c!76100) b!386450))

(assert (= (and b!386444 (not c!76100)) b!386448))

(assert (= (and b!386448 c!76099) b!386451))

(assert (= (and b!386448 (not c!76099)) b!386449))

(assert (= (or b!386451 b!386449) bm!24890))

(assert (= (or b!386451 b!386449) bm!24891))

(assert (= (and bm!24891 c!76098) b!386445))

(assert (= (and bm!24891 (not c!76098)) b!386446))

(assert (= (or b!386450 bm!24890) bm!24893))

(assert (= (or b!386450 b!386451) bm!24889))

(assert (= (or b!386450 b!386451) bm!24892))

(assert (=> b!386445 m!577065))

(declare-fun m!578811 () Bool)

(assert (=> bm!24892 m!578811))

(declare-fun m!578813 () Bool)

(assert (=> bm!24891 m!578813))

(declare-fun m!578815 () Bool)

(assert (=> bm!24889 m!578815))

(assert (=> b!386449 m!577125))

(assert (=> b!386449 m!577125))

(assert (=> b!386449 m!578619))

(assert (=> b!386449 m!577125))

(declare-fun m!578817 () Bool)

(assert (=> b!386449 m!578817))

(declare-fun m!578819 () Bool)

(assert (=> b!386449 m!578819))

(declare-fun m!578821 () Bool)

(assert (=> b!386451 m!578821))

(declare-fun m!578823 () Bool)

(assert (=> b!386444 m!578823))

(assert (=> b!386444 m!577077))

(declare-fun m!578825 () Bool)

(assert (=> b!386444 m!578825))

(assert (=> b!386444 m!577075))

(assert (=> b!386444 m!577077))

(assert (=> b!386444 m!577063))

(assert (=> b!386444 m!577075))

(assert (=> b!386444 m!578825))

(declare-fun m!578827 () Bool)

(assert (=> b!386444 m!578827))

(assert (=> bm!24893 m!577075))

(assert (=> b!385533 d!137071))

(declare-fun d!137073 () Bool)

(declare-fun lt!169896 () Token!1382)

(assert (=> d!137073 (= lt!169896 (apply!1022 (list!1845 (_1!2733 lt!169362)) 0))))

(assert (=> d!137073 (= lt!169896 (apply!1024 (c!75905 (_1!2733 lt!169362)) 0))))

(declare-fun e!237789 () Bool)

(assert (=> d!137073 e!237789))

(declare-fun res!173345 () Bool)

(assert (=> d!137073 (=> (not res!173345) (not e!237789))))

(assert (=> d!137073 (= res!173345 (<= 0 0))))

(assert (=> d!137073 (= (apply!1018 (_1!2733 lt!169362) 0) lt!169896)))

(declare-fun b!386465 () Bool)

(assert (=> b!386465 (= e!237789 (< 0 (size!3445 (_1!2733 lt!169362))))))

(assert (= (and d!137073 res!173345) b!386465))

(assert (=> d!137073 m!577927))

(assert (=> d!137073 m!577927))

(declare-fun m!578829 () Bool)

(assert (=> d!137073 m!578829))

(declare-fun m!578831 () Bool)

(assert (=> d!137073 m!578831))

(assert (=> b!386465 m!577149))

(assert (=> b!385508 d!137073))

(declare-fun b!386468 () Bool)

(declare-fun e!237794 () Bool)

(assert (=> b!386468 (= e!237794 (not (= (head!1039 lt!169344) (c!75904 (regex!819 lt!169363)))))))

(declare-fun b!386469 () Bool)

(declare-fun e!237798 () Bool)

(assert (=> b!386469 (= e!237798 (nullable!222 (regex!819 lt!169363)))))

(declare-fun b!386470 () Bool)

(declare-fun res!173351 () Bool)

(declare-fun e!237795 () Bool)

(assert (=> b!386470 (=> res!173351 e!237795)))

(assert (=> b!386470 (= res!173351 (not ((_ is ElementMatch!1043) (regex!819 lt!169363))))))

(declare-fun e!237797 () Bool)

(assert (=> b!386470 (= e!237797 e!237795)))

(declare-fun d!137075 () Bool)

(declare-fun e!237792 () Bool)

(assert (=> d!137075 e!237792))

(declare-fun c!76109 () Bool)

(assert (=> d!137075 (= c!76109 ((_ is EmptyExpr!1043) (regex!819 lt!169363)))))

(declare-fun lt!169897 () Bool)

(assert (=> d!137075 (= lt!169897 e!237798)))

(declare-fun c!76108 () Bool)

(assert (=> d!137075 (= c!76108 (isEmpty!3092 lt!169344))))

(assert (=> d!137075 (validRegex!297 (regex!819 lt!169363))))

(assert (=> d!137075 (= (matchR!361 (regex!819 lt!169363) lt!169344) lt!169897)))

(declare-fun b!386471 () Bool)

(assert (=> b!386471 (= e!237797 (not lt!169897))))

(declare-fun b!386472 () Bool)

(declare-fun e!237793 () Bool)

(assert (=> b!386472 (= e!237793 e!237794)))

(declare-fun res!173347 () Bool)

(assert (=> b!386472 (=> res!173347 e!237794)))

(declare-fun call!24903 () Bool)

(assert (=> b!386472 (= res!173347 call!24903)))

(declare-fun b!386473 () Bool)

(assert (=> b!386473 (= e!237792 (= lt!169897 call!24903))))

(declare-fun b!386474 () Bool)

(assert (=> b!386474 (= e!237795 e!237793)))

(declare-fun res!173353 () Bool)

(assert (=> b!386474 (=> (not res!173353) (not e!237793))))

(assert (=> b!386474 (= res!173353 (not lt!169897))))

(declare-fun b!386475 () Bool)

(declare-fun e!237796 () Bool)

(assert (=> b!386475 (= e!237796 (= (head!1039 lt!169344) (c!75904 (regex!819 lt!169363))))))

(declare-fun b!386476 () Bool)

(declare-fun res!173350 () Bool)

(assert (=> b!386476 (=> (not res!173350) (not e!237796))))

(assert (=> b!386476 (= res!173350 (not call!24903))))

(declare-fun b!386477 () Bool)

(declare-fun res!173352 () Bool)

(assert (=> b!386477 (=> res!173352 e!237794)))

(assert (=> b!386477 (= res!173352 (not (isEmpty!3092 (tail!593 lt!169344))))))

(declare-fun b!386478 () Bool)

(assert (=> b!386478 (= e!237798 (matchR!361 (derivativeStep!188 (regex!819 lt!169363) (head!1039 lt!169344)) (tail!593 lt!169344)))))

(declare-fun bm!24898 () Bool)

(assert (=> bm!24898 (= call!24903 (isEmpty!3092 lt!169344))))

(declare-fun b!386479 () Bool)

(declare-fun res!173346 () Bool)

(assert (=> b!386479 (=> (not res!173346) (not e!237796))))

(assert (=> b!386479 (= res!173346 (isEmpty!3092 (tail!593 lt!169344)))))

(declare-fun b!386480 () Bool)

(assert (=> b!386480 (= e!237792 e!237797)))

(declare-fun c!76110 () Bool)

(assert (=> b!386480 (= c!76110 ((_ is EmptyLang!1043) (regex!819 lt!169363)))))

(declare-fun b!386481 () Bool)

(declare-fun res!173349 () Bool)

(assert (=> b!386481 (=> res!173349 e!237795)))

(assert (=> b!386481 (= res!173349 e!237796)))

(declare-fun res!173348 () Bool)

(assert (=> b!386481 (=> (not res!173348) (not e!237796))))

(assert (=> b!386481 (= res!173348 lt!169897)))

(assert (= (and d!137075 c!76108) b!386469))

(assert (= (and d!137075 (not c!76108)) b!386478))

(assert (= (and d!137075 c!76109) b!386473))

(assert (= (and d!137075 (not c!76109)) b!386480))

(assert (= (and b!386480 c!76110) b!386471))

(assert (= (and b!386480 (not c!76110)) b!386470))

(assert (= (and b!386470 (not res!173351)) b!386481))

(assert (= (and b!386481 res!173348) b!386476))

(assert (= (and b!386476 res!173350) b!386479))

(assert (= (and b!386479 res!173346) b!386475))

(assert (= (and b!386481 (not res!173349)) b!386474))

(assert (= (and b!386474 res!173353) b!386472))

(assert (= (and b!386472 (not res!173347)) b!386477))

(assert (= (and b!386477 (not res!173352)) b!386468))

(assert (= (or b!386473 b!386472 b!386476) bm!24898))

(declare-fun m!578833 () Bool)

(assert (=> b!386478 m!578833))

(assert (=> b!386478 m!578833))

(declare-fun m!578835 () Bool)

(assert (=> b!386478 m!578835))

(declare-fun m!578837 () Bool)

(assert (=> b!386478 m!578837))

(assert (=> b!386478 m!578835))

(assert (=> b!386478 m!578837))

(declare-fun m!578839 () Bool)

(assert (=> b!386478 m!578839))

(assert (=> b!386477 m!578837))

(assert (=> b!386477 m!578837))

(declare-fun m!578841 () Bool)

(assert (=> b!386477 m!578841))

(declare-fun m!578843 () Bool)

(assert (=> d!137075 m!578843))

(declare-fun m!578845 () Bool)

(assert (=> d!137075 m!578845))

(assert (=> bm!24898 m!578843))

(assert (=> b!386479 m!578837))

(assert (=> b!386479 m!578837))

(assert (=> b!386479 m!578841))

(assert (=> b!386468 m!578833))

(declare-fun m!578847 () Bool)

(assert (=> b!386469 m!578847))

(assert (=> b!386475 m!578833))

(assert (=> b!385529 d!137075))

(declare-fun d!137077 () Bool)

(assert (=> d!137077 (= (get!1507 lt!169370) (v!15215 lt!169370))))

(assert (=> b!385529 d!137077))

(declare-fun d!137079 () Bool)

(declare-fun lt!169898 () Bool)

(assert (=> d!137079 (= lt!169898 (select (content!682 rules!1920) (rule!1472 lt!169355)))))

(declare-fun e!237801 () Bool)

(assert (=> d!137079 (= lt!169898 e!237801)))

(declare-fun res!173355 () Bool)

(assert (=> d!137079 (=> (not res!173355) (not e!237801))))

(assert (=> d!137079 (= res!173355 ((_ is Cons!4240) rules!1920))))

(assert (=> d!137079 (= (contains!896 rules!1920 (rule!1472 lt!169355)) lt!169898)))

(declare-fun b!386486 () Bool)

(declare-fun e!237802 () Bool)

(assert (=> b!386486 (= e!237801 e!237802)))

(declare-fun res!173354 () Bool)

(assert (=> b!386486 (=> res!173354 e!237802)))

(assert (=> b!386486 (= res!173354 (= (h!9637 rules!1920) (rule!1472 lt!169355)))))

(declare-fun b!386487 () Bool)

(assert (=> b!386487 (= e!237802 (contains!896 (t!58840 rules!1920) (rule!1472 lt!169355)))))

(assert (= (and d!137079 res!173355) b!386486))

(assert (= (and b!386486 (not res!173354)) b!386487))

(assert (=> d!137079 m!577935))

(declare-fun m!578849 () Bool)

(assert (=> d!137079 m!578849))

(declare-fun m!578851 () Bool)

(assert (=> b!386487 m!578851))

(assert (=> b!385531 d!137079))

(declare-fun d!137081 () Bool)

(declare-fun lt!169899 () Bool)

(assert (=> d!137081 (= lt!169899 (isEmpty!3092 (list!1843 (_2!2733 lt!169362))))))

(assert (=> d!137081 (= lt!169899 (isEmpty!3101 (c!75903 (_2!2733 lt!169362))))))

(assert (=> d!137081 (= (isEmpty!3091 (_2!2733 lt!169362)) lt!169899)))

(declare-fun bs!46958 () Bool)

(assert (= bs!46958 d!137081))

(declare-fun m!578853 () Bool)

(assert (=> bs!46958 m!578853))

(assert (=> bs!46958 m!578853))

(declare-fun m!578855 () Bool)

(assert (=> bs!46958 m!578855))

(declare-fun m!578857 () Bool)

(assert (=> bs!46958 m!578857))

(assert (=> b!385530 d!137081))

(declare-fun bs!46993 () Bool)

(declare-fun d!137083 () Bool)

(assert (= bs!46993 (and d!137083 b!386444)))

(declare-fun lambda!12018 () Int)

(assert (=> bs!46993 (= lambda!12018 lambda!12007)))

(declare-fun bs!46994 () Bool)

(assert (= bs!46994 (and d!137083 b!385517)))

(assert (=> bs!46994 (= lambda!12018 lambda!11984)))

(declare-fun bs!46995 () Bool)

(assert (= bs!46995 (and d!137083 b!386304)))

(assert (=> bs!46995 (= lambda!12018 lambda!12004)))

(declare-fun bs!46996 () Bool)

(assert (= bs!46996 (and d!137083 b!386427)))

(assert (=> bs!46996 (= lambda!12018 lambda!12006)))

(declare-fun bs!46997 () Bool)

(assert (= bs!46997 (and d!137083 d!136983)))

(assert (=> bs!46997 (not (= lambda!12018 lambda!12003))))

(declare-fun bs!46998 () Bool)

(assert (= bs!46998 (and d!137083 d!137069)))

(assert (=> bs!46998 (not (= lambda!12018 lambda!12005))))

(declare-fun bs!46999 () Bool)

(assert (= bs!46999 (and d!137083 b!385522)))

(assert (=> bs!46999 (not (= lambda!12018 lambda!11983))))

(declare-fun bs!47000 () Bool)

(assert (= bs!47000 (and d!137083 b!386240)))

(assert (=> bs!47000 (= lambda!12018 lambda!11992)))

(declare-fun b!386614 () Bool)

(declare-fun e!237893 () Bool)

(assert (=> b!386614 (= e!237893 true)))

(declare-fun b!386613 () Bool)

(declare-fun e!237892 () Bool)

(assert (=> b!386613 (= e!237892 e!237893)))

(declare-fun b!386612 () Bool)

(declare-fun e!237891 () Bool)

(assert (=> b!386612 (= e!237891 e!237892)))

(assert (=> d!137083 e!237891))

(assert (= b!386613 b!386614))

(assert (= b!386612 b!386613))

(assert (= (and d!137083 ((_ is Cons!4240) rules!1920)) b!386612))

(assert (=> b!386614 (< (dynLambda!2457 order!3605 (toValue!1610 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!12018))))

(assert (=> b!386614 (< (dynLambda!2459 order!3609 (toChars!1469 (transformation!819 (h!9637 rules!1920)))) (dynLambda!2458 order!3607 lambda!12018))))

(assert (=> d!137083 true))

(declare-fun e!237890 () Bool)

(assert (=> d!137083 e!237890))

(declare-fun res!173379 () Bool)

(assert (=> d!137083 (=> (not res!173379) (not e!237890))))

(declare-fun lt!169938 () Bool)

(assert (=> d!137083 (= res!173379 (= lt!169938 (forall!1184 (list!1845 lt!169368) lambda!12018)))))

(declare-fun forall!1186 (BalanceConc!2930 Int) Bool)

(assert (=> d!137083 (= lt!169938 (forall!1186 lt!169368 lambda!12018))))

(assert (=> d!137083 (not (isEmpty!3093 rules!1920))))

(assert (=> d!137083 (= (rulesProduceEachTokenIndividually!497 thiss!17480 rules!1920 lt!169368) lt!169938)))

(declare-fun b!386611 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!293 (LexerInterface!705 List!4250 List!4251) Bool)

(assert (=> b!386611 (= e!237890 (= lt!169938 (rulesProduceEachTokenIndividuallyList!293 thiss!17480 rules!1920 (list!1845 lt!169368))))))

(assert (= (and d!137083 res!173379) b!386611))

(assert (=> d!137083 m!578765))

(assert (=> d!137083 m!578765))

(declare-fun m!579051 () Bool)

(assert (=> d!137083 m!579051))

(declare-fun m!579053 () Bool)

(assert (=> d!137083 m!579053))

(assert (=> d!137083 m!577111))

(assert (=> b!386611 m!578765))

(assert (=> b!386611 m!578765))

(declare-fun m!579055 () Bool)

(assert (=> b!386611 m!579055))

(assert (=> b!385509 d!137083))

(declare-fun d!137129 () Bool)

(assert (=> d!137129 (= (seqFromList!1003 tokens!465) (fromListB!439 tokens!465))))

(declare-fun bs!47001 () Bool)

(assert (= bs!47001 d!137129))

(declare-fun m!579057 () Bool)

(assert (=> bs!47001 m!579057))

(assert (=> b!385509 d!137129))

(declare-fun b!386628 () Bool)

(declare-fun b_free!11893 () Bool)

(declare-fun b_next!11893 () Bool)

(assert (=> b!386628 (= b_free!11893 (not b_next!11893))))

(declare-fun tp!118582 () Bool)

(declare-fun b_and!38785 () Bool)

(assert (=> b!386628 (= tp!118582 b_and!38785)))

(declare-fun b_free!11895 () Bool)

(declare-fun b_next!11895 () Bool)

(assert (=> b!386628 (= b_free!11895 (not b_next!11895))))

(declare-fun t!58917 () Bool)

(declare-fun tb!34069 () Bool)

(assert (=> (and b!386628 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 (t!58841 tokens!465))))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170)))) t!58917) tb!34069))

(declare-fun result!38390 () Bool)

(assert (= result!38390 result!38356))

(assert (=> d!136987 t!58917))

(declare-fun t!58919 () Bool)

(declare-fun tb!34071 () Bool)

(assert (=> (and b!386628 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 (t!58841 tokens!465))))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465))))) t!58919) tb!34071))

(declare-fun result!38392 () Bool)

(assert (= result!38392 result!38350))

(assert (=> d!136993 t!58919))

(assert (=> b!386365 t!58917))

(assert (=> b!386014 t!58919))

(declare-fun tb!34073 () Bool)

(declare-fun t!58921 () Bool)

(assert (=> (and b!386628 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 (t!58841 tokens!465))))) (toChars!1469 (transformation!819 (rule!1472 lt!169355)))) t!58921) tb!34073))

(declare-fun result!38394 () Bool)

(assert (= result!38394 result!38342))

(assert (=> d!136797 t!58921))

(declare-fun tp!118580 () Bool)

(declare-fun b_and!38787 () Bool)

(assert (=> b!386628 (= tp!118580 (and (=> t!58921 result!38394) (=> t!58919 result!38392) (=> t!58917 result!38390) b_and!38787))))

(declare-fun b!386625 () Bool)

(declare-fun tp!118584 () Bool)

(declare-fun e!237908 () Bool)

(declare-fun e!237906 () Bool)

(assert (=> b!386625 (= e!237908 (and (inv!5264 (h!9638 (t!58841 tokens!465))) e!237906 tp!118584))))

(assert (=> b!385537 (= tp!118493 e!237908)))

(declare-fun b!386627 () Bool)

(declare-fun e!237910 () Bool)

(declare-fun e!237909 () Bool)

(declare-fun tp!118583 () Bool)

(assert (=> b!386627 (= e!237909 (and tp!118583 (inv!5261 (tag!1059 (rule!1472 (h!9638 (t!58841 tokens!465))))) (inv!5265 (transformation!819 (rule!1472 (h!9638 (t!58841 tokens!465))))) e!237910))))

(assert (=> b!386628 (= e!237910 (and tp!118582 tp!118580))))

(declare-fun tp!118581 () Bool)

(declare-fun b!386626 () Bool)

(assert (=> b!386626 (= e!237906 (and (inv!21 (value!27657 (h!9638 (t!58841 tokens!465)))) e!237909 tp!118581))))

(assert (= b!386627 b!386628))

(assert (= b!386626 b!386627))

(assert (= b!386625 b!386626))

(assert (= (and b!385537 ((_ is Cons!4241) (t!58841 tokens!465))) b!386625))

(declare-fun m!579059 () Bool)

(assert (=> b!386625 m!579059))

(declare-fun m!579061 () Bool)

(assert (=> b!386627 m!579061))

(declare-fun m!579063 () Bool)

(assert (=> b!386627 m!579063))

(declare-fun m!579065 () Bool)

(assert (=> b!386626 m!579065))

(declare-fun b!386639 () Bool)

(declare-fun e!237914 () Bool)

(declare-fun tp_is_empty!1935 () Bool)

(assert (=> b!386639 (= e!237914 tp_is_empty!1935)))

(declare-fun b!386642 () Bool)

(declare-fun tp!118597 () Bool)

(declare-fun tp!118599 () Bool)

(assert (=> b!386642 (= e!237914 (and tp!118597 tp!118599))))

(declare-fun b!386640 () Bool)

(declare-fun tp!118596 () Bool)

(declare-fun tp!118598 () Bool)

(assert (=> b!386640 (= e!237914 (and tp!118596 tp!118598))))

(declare-fun b!386641 () Bool)

(declare-fun tp!118595 () Bool)

(assert (=> b!386641 (= e!237914 tp!118595)))

(assert (=> b!385528 (= tp!118494 e!237914)))

(assert (= (and b!385528 ((_ is ElementMatch!1043) (regex!819 (h!9637 rules!1920)))) b!386639))

(assert (= (and b!385528 ((_ is Concat!1885) (regex!819 (h!9637 rules!1920)))) b!386640))

(assert (= (and b!385528 ((_ is Star!1043) (regex!819 (h!9637 rules!1920)))) b!386641))

(assert (= (and b!385528 ((_ is Union!1043) (regex!819 (h!9637 rules!1920)))) b!386642))

(declare-fun b!386643 () Bool)

(declare-fun e!237915 () Bool)

(assert (=> b!386643 (= e!237915 tp_is_empty!1935)))

(declare-fun b!386646 () Bool)

(declare-fun tp!118602 () Bool)

(declare-fun tp!118604 () Bool)

(assert (=> b!386646 (= e!237915 (and tp!118602 tp!118604))))

(declare-fun b!386644 () Bool)

(declare-fun tp!118601 () Bool)

(declare-fun tp!118603 () Bool)

(assert (=> b!386644 (= e!237915 (and tp!118601 tp!118603))))

(declare-fun b!386645 () Bool)

(declare-fun tp!118600 () Bool)

(assert (=> b!386645 (= e!237915 tp!118600)))

(assert (=> b!385536 (= tp!118501 e!237915)))

(assert (= (and b!385536 ((_ is ElementMatch!1043) (regex!819 (rule!1472 separatorToken!170)))) b!386643))

(assert (= (and b!385536 ((_ is Concat!1885) (regex!819 (rule!1472 separatorToken!170)))) b!386644))

(assert (= (and b!385536 ((_ is Star!1043) (regex!819 (rule!1472 separatorToken!170)))) b!386645))

(assert (= (and b!385536 ((_ is Union!1043) (regex!819 (rule!1472 separatorToken!170)))) b!386646))

(declare-fun b!386651 () Bool)

(declare-fun e!237918 () Bool)

(declare-fun tp!118607 () Bool)

(assert (=> b!386651 (= e!237918 (and tp_is_empty!1935 tp!118607))))

(assert (=> b!385514 (= tp!118502 e!237918)))

(assert (= (and b!385514 ((_ is Cons!4239) (originalCharacters!862 (h!9638 tokens!465)))) b!386651))

(declare-fun b!386652 () Bool)

(declare-fun e!237919 () Bool)

(assert (=> b!386652 (= e!237919 tp_is_empty!1935)))

(declare-fun b!386655 () Bool)

(declare-fun tp!118610 () Bool)

(declare-fun tp!118612 () Bool)

(assert (=> b!386655 (= e!237919 (and tp!118610 tp!118612))))

(declare-fun b!386653 () Bool)

(declare-fun tp!118609 () Bool)

(declare-fun tp!118611 () Bool)

(assert (=> b!386653 (= e!237919 (and tp!118609 tp!118611))))

(declare-fun b!386654 () Bool)

(declare-fun tp!118608 () Bool)

(assert (=> b!386654 (= e!237919 tp!118608)))

(assert (=> b!385532 (= tp!118498 e!237919)))

(assert (= (and b!385532 ((_ is ElementMatch!1043) (regex!819 (rule!1472 (h!9638 tokens!465))))) b!386652))

(assert (= (and b!385532 ((_ is Concat!1885) (regex!819 (rule!1472 (h!9638 tokens!465))))) b!386653))

(assert (= (and b!385532 ((_ is Star!1043) (regex!819 (rule!1472 (h!9638 tokens!465))))) b!386654))

(assert (= (and b!385532 ((_ is Union!1043) (regex!819 (rule!1472 (h!9638 tokens!465))))) b!386655))

(declare-fun b!386658 () Bool)

(declare-fun e!237922 () Bool)

(assert (=> b!386658 (= e!237922 true)))

(declare-fun b!386657 () Bool)

(declare-fun e!237921 () Bool)

(assert (=> b!386657 (= e!237921 e!237922)))

(declare-fun b!386656 () Bool)

(declare-fun e!237920 () Bool)

(assert (=> b!386656 (= e!237920 e!237921)))

(assert (=> b!385550 e!237920))

(assert (= b!386657 b!386658))

(assert (= b!386656 b!386657))

(assert (= (and b!385550 ((_ is Cons!4240) (t!58840 rules!1920))) b!386656))

(assert (=> b!386658 (< (dynLambda!2457 order!3605 (toValue!1610 (transformation!819 (h!9637 (t!58840 rules!1920))))) (dynLambda!2458 order!3607 lambda!11984))))

(assert (=> b!386658 (< (dynLambda!2459 order!3609 (toChars!1469 (transformation!819 (h!9637 (t!58840 rules!1920))))) (dynLambda!2458 order!3607 lambda!11984))))

(declare-fun b!386669 () Bool)

(declare-fun b_free!11897 () Bool)

(declare-fun b_next!11897 () Bool)

(assert (=> b!386669 (= b_free!11897 (not b_next!11897))))

(declare-fun tp!118621 () Bool)

(declare-fun b_and!38789 () Bool)

(assert (=> b!386669 (= tp!118621 b_and!38789)))

(declare-fun b_free!11899 () Bool)

(declare-fun b_next!11899 () Bool)

(assert (=> b!386669 (= b_free!11899 (not b_next!11899))))

(declare-fun t!58923 () Bool)

(declare-fun tb!34075 () Bool)

(assert (=> (and b!386669 (= (toChars!1469 (transformation!819 (h!9637 (t!58840 rules!1920)))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170)))) t!58923) tb!34075))

(declare-fun result!38402 () Bool)

(assert (= result!38402 result!38356))

(assert (=> d!136987 t!58923))

(declare-fun t!58925 () Bool)

(declare-fun tb!34077 () Bool)

(assert (=> (and b!386669 (= (toChars!1469 (transformation!819 (h!9637 (t!58840 rules!1920)))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465))))) t!58925) tb!34077))

(declare-fun result!38404 () Bool)

(assert (= result!38404 result!38350))

(assert (=> d!136993 t!58925))

(assert (=> b!386365 t!58923))

(assert (=> b!386014 t!58925))

(declare-fun t!58927 () Bool)

(declare-fun tb!34079 () Bool)

(assert (=> (and b!386669 (= (toChars!1469 (transformation!819 (h!9637 (t!58840 rules!1920)))) (toChars!1469 (transformation!819 (rule!1472 lt!169355)))) t!58927) tb!34079))

(declare-fun result!38406 () Bool)

(assert (= result!38406 result!38342))

(assert (=> d!136797 t!58927))

(declare-fun tp!118623 () Bool)

(declare-fun b_and!38791 () Bool)

(assert (=> b!386669 (= tp!118623 (and (=> t!58925 result!38404) (=> t!58923 result!38402) (=> t!58927 result!38406) b_and!38791))))

(declare-fun e!237933 () Bool)

(assert (=> b!386669 (= e!237933 (and tp!118621 tp!118623))))

(declare-fun e!237932 () Bool)

(declare-fun b!386668 () Bool)

(declare-fun tp!118622 () Bool)

(assert (=> b!386668 (= e!237932 (and tp!118622 (inv!5261 (tag!1059 (h!9637 (t!58840 rules!1920)))) (inv!5265 (transformation!819 (h!9637 (t!58840 rules!1920)))) e!237933))))

(declare-fun b!386667 () Bool)

(declare-fun e!237934 () Bool)

(declare-fun tp!118624 () Bool)

(assert (=> b!386667 (= e!237934 (and e!237932 tp!118624))))

(assert (=> b!385523 (= tp!118495 e!237934)))

(assert (= b!386668 b!386669))

(assert (= b!386667 b!386668))

(assert (= (and b!385523 ((_ is Cons!4240) (t!58840 rules!1920))) b!386667))

(declare-fun m!579067 () Bool)

(assert (=> b!386668 m!579067))

(declare-fun m!579069 () Bool)

(assert (=> b!386668 m!579069))

(declare-fun b!386670 () Bool)

(declare-fun e!237935 () Bool)

(declare-fun tp!118625 () Bool)

(assert (=> b!386670 (= e!237935 (and tp_is_empty!1935 tp!118625))))

(assert (=> b!385540 (= tp!118499 e!237935)))

(assert (= (and b!385540 ((_ is Cons!4239) (originalCharacters!862 separatorToken!170))) b!386670))

(declare-fun b_lambda!15241 () Bool)

(assert (= b_lambda!15195 (or b!385517 b_lambda!15241)))

(declare-fun bs!47002 () Bool)

(declare-fun d!137131 () Bool)

(assert (= bs!47002 (and d!137131 b!385517)))

(assert (=> bs!47002 (= (dynLambda!2461 lambda!11984 lt!169355) (rulesProduceIndividualToken!454 thiss!17480 rules!1920 lt!169355))))

(assert (=> bs!47002 m!577203))

(assert (=> d!136711 d!137131))

(declare-fun b_lambda!15243 () Bool)

(assert (= b_lambda!15209 (or b!385517 b_lambda!15243)))

(declare-fun bs!47003 () Bool)

(declare-fun d!137133 () Bool)

(assert (= bs!47003 (and d!137133 b!385517)))

(assert (=> bs!47003 (= (dynLambda!2461 lambda!11984 (h!9638 tokens!465)) (rulesProduceIndividualToken!454 thiss!17480 rules!1920 (h!9638 tokens!465)))))

(assert (=> bs!47003 m!577045))

(assert (=> d!136931 d!137133))

(declare-fun b_lambda!15245 () Bool)

(assert (= b_lambda!15207 (or (and b!385499 b_free!11879 (= (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))))) (and b!385498 b_free!11875 (= (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))))) (and b!385493 b_free!11883) (and b!386669 b_free!11899 (= (toChars!1469 (transformation!819 (h!9637 (t!58840 rules!1920)))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))))) (and b!386628 b_free!11895 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 (t!58841 tokens!465))))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))))) b_lambda!15245)))

(declare-fun b_lambda!15247 () Bool)

(assert (= b_lambda!15219 (or (and b!385493 b_free!11883 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))))) (and b!385499 b_free!11879 (= (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))))) (and b!385498 b_free!11875) (and b!386628 b_free!11895 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 (t!58841 tokens!465))))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))))) (and b!386669 b_free!11899 (= (toChars!1469 (transformation!819 (h!9637 (t!58840 rules!1920)))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))))) b_lambda!15247)))

(declare-fun b_lambda!15249 () Bool)

(assert (= b_lambda!15215 (or (and b!385499 b_free!11879 (= (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))))) (and b!385498 b_free!11875 (= (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))))) (and b!385493 b_free!11883) (and b!386669 b_free!11899 (= (toChars!1469 (transformation!819 (h!9637 (t!58840 rules!1920)))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))))) (and b!386628 b_free!11895 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 (t!58841 tokens!465))))) (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))))) b_lambda!15249)))

(declare-fun b_lambda!15251 () Bool)

(assert (= b_lambda!15217 (or b!385522 b_lambda!15251)))

(declare-fun bs!47004 () Bool)

(declare-fun d!137135 () Bool)

(assert (= bs!47004 (and d!137135 b!385522)))

(assert (=> bs!47004 (= (dynLambda!2461 lambda!11983 (h!9638 tokens!465)) (not (isSeparator!819 (rule!1472 (h!9638 tokens!465)))))))

(assert (=> b!386355 d!137135))

(declare-fun b_lambda!15253 () Bool)

(assert (= b_lambda!15213 (or (and b!385493 b_free!11883 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 tokens!465)))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))))) (and b!385499 b_free!11879 (= (toChars!1469 (transformation!819 (h!9637 rules!1920))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))))) (and b!385498 b_free!11875) (and b!386628 b_free!11895 (= (toChars!1469 (transformation!819 (rule!1472 (h!9638 (t!58841 tokens!465))))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))))) (and b!386669 b_free!11899 (= (toChars!1469 (transformation!819 (h!9637 (t!58840 rules!1920)))) (toChars!1469 (transformation!819 (rule!1472 separatorToken!170))))) b_lambda!15253)))

(check-sat (not b!385881) (not b!386427) (not bm!24883) (not b!386668) (not b!386360) (not b!386670) (not b!386248) b_and!38705 (not b!385832) (not bm!24799) (not d!136899) (not d!137059) (not b!386320) (not d!136835) (not b!386365) (not d!136797) (not d!136989) (not b!385646) (not b!385762) (not b_lambda!15241) (not b!385962) (not d!136951) (not b!386421) (not b!386469) (not b!385870) (not b!386409) (not b!385648) (not b!385647) (not d!136711) b_and!38709 (not b_lambda!15243) (not b!386151) (not d!137075) (not d!137083) (not d!137065) (not b!385872) b_and!38753 (not bm!24881) (not d!137045) (not b!385626) (not bm!24783) (not b!385815) (not b!386406) (not b!386611) (not b!386310) (not b!386346) (not b!386241) (not d!137129) (not d!136871) (not b!386381) (not b!386404) (not b!386387) (not b!386394) (not b!386120) (not bm!24887) (not b!386245) (not b!386117) (not bm!24849) (not b!386307) (not b!386465) (not bs!47002) (not b!386363) (not d!136875) (not b!386437) (not d!136995) (not b!386429) (not b!386314) (not bm!24879) (not bm!24877) (not d!136867) (not b!386130) (not b!385580) (not d!137063) (not b!386626) (not d!136983) (not d!136715) (not b!386015) (not b!386344) (not d!136807) (not b!385643) (not d!137043) (not b_next!11879) (not b!385649) (not d!137037) (not b_lambda!15253) (not d!137067) (not b!386356) (not d!136877) (not d!136953) (not bm!24889) (not b_lambda!15205) (not bm!24818) (not d!137011) b_and!38789 (not d!137035) (not b!386348) (not d!137079) (not d!137017) (not d!136743) (not b!386147) (not b!386656) (not d!136749) (not b!386412) (not bm!24878) (not b_next!11899) (not b!386654) (not b!386653) b_and!38755 (not d!136813) (not d!136949) (not b!386369) (not b!386377) (not b!386392) (not b_next!11875) b_and!38757 (not d!136901) (not b!386240) (not b_next!11873) (not b!385875) (not b!386372) (not bm!24892) (not b!386123) b_and!38787 (not b!386014) (not d!136993) (not b!385627) (not b!385625) (not b!385575) (not b!386422) (not b!386143) (not b!385588) (not b!386146) (not bm!24882) (not d!136725) (not b!386336) (not bm!24846) (not b!386008) (not d!137025) (not b!386640) (not d!137023) (not b!386335) (not bm!24830) (not d!137073) (not d!137005) (not b_lambda!15249) (not d!136955) (not b!386016) (not b!385642) (not b!385978) (not bm!24800) (not bs!47003) (not b!386366) (not d!137049) (not bm!24850) (not b!386122) (not d!137039) (not b!386645) (not b!386119) (not tb!34045) (not d!136827) (not b!386644) (not b!385641) (not b!386451) (not b!386389) (not d!136719) (not d!136931) b_and!38713 (not b!386368) (not bm!24826) (not b!385883) (not b!385961) (not b!385629) (not d!136727) (not b_next!11893) (not b!385968) (not d!136937) (not b!386358) (not b!386627) (not b!386384) (not b!385621) (not b!386479) (not b!386468) (not b!386430) (not bm!24893) (not b!386305) (not d!137055) (not bm!24885) (not b!386478) (not d!136935) (not b!385624) (not b!386319) (not bm!24886) (not b!386304) (not b!385628) (not b!386115) (not b!386379) (not bm!24816) (not b_next!11881) (not b!385581) (not b!386419) b_and!38785 (not b!386371) (not b!386009) (not b!386487) (not bm!24817) (not d!136771) (not b_next!11897) (not d!137041) (not d!136903) (not b!385664) (not d!137021) (not tb!34039) (not b!385977) (not b_next!11895) (not b!386477) (not b!385880) (not b!386311) (not b!386400) (not b!386452) (not b!385811) (not b!386449) (not b!386116) (not b!386646) (not b!386413) (not b!386370) (not d!137061) (not b!386641) (not d!136817) (not b!386364) (not b!386407) (not b_lambda!15245) (not d!137003) tp_is_empty!1935 (not b!386333) (not d!137047) (not b!385874) (not b!386390) (not d!137081) (not b!385887) (not b!386403) (not b!386150) (not d!137069) (not b!386055) (not b!386651) (not d!136795) (not b!386338) (not bm!24848) (not b!386625) (not tb!34033) (not b!385813) b_and!38791 (not b!385590) (not d!136929) (not d!137031) (not b!386361) (not bm!24891) (not b!386045) (not d!136829) (not b_lambda!15247) (not b!386306) (not b!386410) (not b!385645) (not b!386142) (not bm!24898) (not b!386247) (not bm!24801) (not d!136821) (not d!137013) (not b!386380) (not b!386444) (not b!386408) (not d!136811) (not b!385759) (not b!386118) (not b_lambda!15251) (not d!136731) (not d!137019) (not b!386433) (not b!386642) (not b!386612) (not d!136773) (not b!386667) (not d!136897) (not d!136999) (not b!386007) (not b!386423) (not b!385873) (not b!386046) (not b!385601) (not b!386475) (not b!386445) (not b!386434) (not b!385600) (not d!136991) (not d!136987) (not b!386347) (not b!386411) (not b_next!11883) (not b!386378) (not b!385622) (not d!136739) (not b_next!11877) (not d!136825) (not b!385602) (not b!386054) (not bm!24782) (not b!386402) (not d!136729) (not b!385812) (not b!386056) (not d!136717) (not b!386317) (not b!386362) (not b!386655) (not b!385885) (not b!386052) (not b!385760) (not b!386428) (not b!385650) (not b!385814) (not d!136895) (not b!386395) (not d!136869) (not b!386337) (not d!136945))
(check-sat b_and!38705 b_and!38709 b_and!38753 (not b_next!11879) b_and!38789 (not b_next!11881) (not b_next!11895) b_and!38791 (not b_next!11899) b_and!38755 (not b_next!11875) b_and!38757 (not b_next!11873) b_and!38787 (not b_next!11893) b_and!38713 b_and!38785 (not b_next!11897) (not b_next!11883) (not b_next!11877))
