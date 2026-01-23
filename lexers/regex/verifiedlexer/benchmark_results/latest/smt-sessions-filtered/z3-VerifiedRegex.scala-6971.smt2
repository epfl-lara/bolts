; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!369632 () Bool)

(assert start!369632)

(declare-fun b!3937685 () Bool)

(declare-fun b_free!107573 () Bool)

(declare-fun b_next!108277 () Bool)

(assert (=> b!3937685 (= b_free!107573 (not b_next!108277))))

(declare-fun tp!1198214 () Bool)

(declare-fun b_and!300743 () Bool)

(assert (=> b!3937685 (= tp!1198214 b_and!300743)))

(declare-fun b_free!107575 () Bool)

(declare-fun b_next!108279 () Bool)

(assert (=> b!3937685 (= b_free!107575 (not b_next!108279))))

(declare-fun tp!1198212 () Bool)

(declare-fun b_and!300745 () Bool)

(assert (=> b!3937685 (= tp!1198212 b_and!300745)))

(declare-fun b!3937699 () Bool)

(declare-fun b_free!107577 () Bool)

(declare-fun b_next!108281 () Bool)

(assert (=> b!3937699 (= b_free!107577 (not b_next!108281))))

(declare-fun tp!1198215 () Bool)

(declare-fun b_and!300747 () Bool)

(assert (=> b!3937699 (= tp!1198215 b_and!300747)))

(declare-fun b_free!107579 () Bool)

(declare-fun b_next!108283 () Bool)

(assert (=> b!3937699 (= b_free!107579 (not b_next!108283))))

(declare-fun tp!1198219 () Bool)

(declare-fun b_and!300749 () Bool)

(assert (=> b!3937699 (= tp!1198219 b_and!300749)))

(declare-fun b!3937716 () Bool)

(declare-fun b_free!107581 () Bool)

(declare-fun b_next!108285 () Bool)

(assert (=> b!3937716 (= b_free!107581 (not b_next!108285))))

(declare-fun tp!1198220 () Bool)

(declare-fun b_and!300751 () Bool)

(assert (=> b!3937716 (= tp!1198220 b_and!300751)))

(declare-fun b_free!107583 () Bool)

(declare-fun b_next!108287 () Bool)

(assert (=> b!3937716 (= b_free!107583 (not b_next!108287))))

(declare-fun tp!1198205 () Bool)

(declare-fun b_and!300753 () Bool)

(assert (=> b!3937716 (= tp!1198205 b_and!300753)))

(declare-fun e!2436207 () Bool)

(declare-datatypes ((List!41925 0))(
  ( (Nil!41801) (Cons!41801 (h!47221 (_ BitVec 16)) (t!326504 List!41925)) )
))
(declare-datatypes ((TokenValue!6760 0))(
  ( (FloatLiteralValue!13520 (text!47765 List!41925)) (TokenValueExt!6759 (__x!25737 Int)) (Broken!33800 (value!206713 List!41925)) (Object!6883) (End!6760) (Def!6760) (Underscore!6760) (Match!6760) (Else!6760) (Error!6760) (Case!6760) (If!6760) (Extends!6760) (Abstract!6760) (Class!6760) (Val!6760) (DelimiterValue!13520 (del!6820 List!41925)) (KeywordValue!6766 (value!206714 List!41925)) (CommentValue!13520 (value!206715 List!41925)) (WhitespaceValue!13520 (value!206716 List!41925)) (IndentationValue!6760 (value!206717 List!41925)) (String!47517) (Int32!6760) (Broken!33801 (value!206718 List!41925)) (Boolean!6761) (Unit!60326) (OperatorValue!6763 (op!6820 List!41925)) (IdentifierValue!13520 (value!206719 List!41925)) (IdentifierValue!13521 (value!206720 List!41925)) (WhitespaceValue!13521 (value!206721 List!41925)) (True!13520) (False!13520) (Broken!33802 (value!206722 List!41925)) (Broken!33803 (value!206723 List!41925)) (True!13521) (RightBrace!6760) (RightBracket!6760) (Colon!6760) (Null!6760) (Comma!6760) (LeftBracket!6760) (False!13521) (LeftBrace!6760) (ImaginaryLiteralValue!6760 (text!47766 List!41925)) (StringLiteralValue!20280 (value!206724 List!41925)) (EOFValue!6760 (value!206725 List!41925)) (IdentValue!6760 (value!206726 List!41925)) (DelimiterValue!13521 (value!206727 List!41925)) (DedentValue!6760 (value!206728 List!41925)) (NewLineValue!6760 (value!206729 List!41925)) (IntegerValue!20280 (value!206730 (_ BitVec 32)) (text!47767 List!41925)) (IntegerValue!20281 (value!206731 Int) (text!47768 List!41925)) (Times!6760) (Or!6760) (Equal!6760) (Minus!6760) (Broken!33804 (value!206732 List!41925)) (And!6760) (Div!6760) (LessEqual!6760) (Mod!6760) (Concat!18195) (Not!6760) (Plus!6760) (SpaceValue!6760 (value!206733 List!41925)) (IntegerValue!20282 (value!206734 Int) (text!47769 List!41925)) (StringLiteralValue!20281 (text!47770 List!41925)) (FloatLiteralValue!13521 (text!47771 List!41925)) (BytesLiteralValue!6760 (value!206735 List!41925)) (CommentValue!13521 (value!206736 List!41925)) (StringLiteralValue!20282 (value!206737 List!41925)) (ErrorTokenValue!6760 (msg!6821 List!41925)) )
))
(declare-datatypes ((C!23056 0))(
  ( (C!23057 (val!13622 Int)) )
))
(declare-datatypes ((Regex!11435 0))(
  ( (ElementMatch!11435 (c!684204 C!23056)) (Concat!18196 (regOne!23382 Regex!11435) (regTwo!23382 Regex!11435)) (EmptyExpr!11435) (Star!11435 (reg!11764 Regex!11435)) (EmptyLang!11435) (Union!11435 (regOne!23383 Regex!11435) (regTwo!23383 Regex!11435)) )
))
(declare-datatypes ((String!47518 0))(
  ( (String!47519 (value!206738 String)) )
))
(declare-datatypes ((List!41926 0))(
  ( (Nil!41802) (Cons!41802 (h!47222 C!23056) (t!326505 List!41926)) )
))
(declare-datatypes ((IArray!25487 0))(
  ( (IArray!25488 (innerList!12801 List!41926)) )
))
(declare-datatypes ((Conc!12741 0))(
  ( (Node!12741 (left!31864 Conc!12741) (right!32194 Conc!12741) (csize!25712 Int) (cheight!12952 Int)) (Leaf!19713 (xs!16047 IArray!25487) (csize!25713 Int)) (Empty!12741) )
))
(declare-datatypes ((BalanceConc!25076 0))(
  ( (BalanceConc!25077 (c!684205 Conc!12741)) )
))
(declare-datatypes ((TokenValueInjection!12948 0))(
  ( (TokenValueInjection!12949 (toValue!8990 Int) (toChars!8849 Int)) )
))
(declare-datatypes ((Rule!12860 0))(
  ( (Rule!12861 (regex!6530 Regex!11435) (tag!7390 String!47518) (isSeparator!6530 Bool) (transformation!6530 TokenValueInjection!12948)) )
))
(declare-datatypes ((Token!12198 0))(
  ( (Token!12199 (value!206739 TokenValue!6760) (rule!9484 Rule!12860) (size!31360 Int) (originalCharacters!7130 List!41926)) )
))
(declare-datatypes ((List!41927 0))(
  ( (Nil!41803) (Cons!41803 (h!47223 Token!12198) (t!326506 List!41927)) )
))
(declare-fun suffixTokens!72 () List!41927)

(declare-fun b!3937669 () Bool)

(declare-fun tp!1198216 () Bool)

(declare-fun e!2436218 () Bool)

(declare-fun inv!56003 (Token!12198) Bool)

(assert (=> b!3937669 (= e!2436207 (and (inv!56003 (h!47223 suffixTokens!72)) e!2436218 tp!1198216))))

(declare-fun b!3937670 () Bool)

(declare-fun e!2436193 () Bool)

(declare-fun tp_is_empty!19841 () Bool)

(declare-fun tp!1198206 () Bool)

(assert (=> b!3937670 (= e!2436193 (and tp_is_empty!19841 tp!1198206))))

(declare-fun b!3937671 () Bool)

(declare-fun e!2436210 () Bool)

(declare-fun e!2436213 () Bool)

(declare-fun prefixTokens!80 () List!41927)

(declare-fun tp!1198209 () Bool)

(assert (=> b!3937671 (= e!2436213 (and (inv!56003 (h!47223 prefixTokens!80)) e!2436210 tp!1198209))))

(declare-fun b!3937672 () Bool)

(declare-fun res!1593449 () Bool)

(declare-fun e!2436206 () Bool)

(assert (=> b!3937672 (=> (not res!1593449) (not e!2436206))))

(declare-datatypes ((List!41928 0))(
  ( (Nil!41804) (Cons!41804 (h!47224 Rule!12860) (t!326507 List!41928)) )
))
(declare-fun rules!2768 () List!41928)

(declare-fun isEmpty!24930 (List!41928) Bool)

(assert (=> b!3937672 (= res!1593449 (not (isEmpty!24930 rules!2768)))))

(declare-fun b!3937673 () Bool)

(declare-fun e!2436190 () Bool)

(declare-fun e!2436198 () Bool)

(assert (=> b!3937673 (= e!2436190 e!2436198)))

(declare-fun res!1593469 () Bool)

(assert (=> b!3937673 (=> (not res!1593469) (not e!2436198))))

(declare-datatypes ((tuple2!41086 0))(
  ( (tuple2!41087 (_1!23677 Token!12198) (_2!23677 List!41926)) )
))
(declare-datatypes ((Option!8950 0))(
  ( (None!8949) (Some!8949 (v!39279 tuple2!41086)) )
))
(declare-fun lt!1376994 () Option!8950)

(get-info :version)

(assert (=> b!3937673 (= res!1593469 ((_ is Some!8949) lt!1376994))))

(declare-fun lt!1376995 () List!41926)

(declare-datatypes ((LexerInterface!6119 0))(
  ( (LexerInterfaceExt!6116 (__x!25738 Int)) (Lexer!6117) )
))
(declare-fun thiss!20629 () LexerInterface!6119)

(declare-fun maxPrefix!3423 (LexerInterface!6119 List!41928 List!41926) Option!8950)

(assert (=> b!3937673 (= lt!1376994 (maxPrefix!3423 thiss!20629 rules!2768 lt!1376995))))

(declare-fun b!3937674 () Bool)

(declare-fun e!2436212 () Bool)

(declare-fun e!2436197 () Bool)

(assert (=> b!3937674 (= e!2436212 e!2436197)))

(declare-fun res!1593459 () Bool)

(assert (=> b!3937674 (=> res!1593459 e!2436197)))

(declare-fun lt!1376981 () List!41926)

(declare-fun lt!1376997 () List!41926)

(assert (=> b!3937674 (= res!1593459 (or (not (= lt!1376997 lt!1376995)) (not (= lt!1376997 lt!1376981))))))

(declare-fun lt!1376966 () List!41926)

(declare-fun suffix!1176 () List!41926)

(declare-fun ++!10817 (List!41926 List!41926) List!41926)

(assert (=> b!3937674 (= lt!1376997 (++!10817 lt!1376966 suffix!1176))))

(declare-fun b!3937675 () Bool)

(declare-fun e!2436181 () Bool)

(declare-fun e!2436196 () Bool)

(assert (=> b!3937675 (= e!2436181 e!2436196)))

(declare-fun res!1593453 () Bool)

(assert (=> b!3937675 (=> res!1593453 e!2436196)))

(assert (=> b!3937675 (= res!1593453 (not (= lt!1376994 (Some!8949 (tuple2!41087 (_1!23677 (v!39279 lt!1376994)) (_2!23677 (v!39279 lt!1376994)))))))))

(declare-fun lt!1377016 () List!41926)

(declare-fun lt!1377005 () List!41927)

(declare-datatypes ((tuple2!41088 0))(
  ( (tuple2!41089 (_1!23678 List!41927) (_2!23678 List!41926)) )
))
(declare-fun lexList!1887 (LexerInterface!6119 List!41928 List!41926) tuple2!41088)

(assert (=> b!3937675 (= (lexList!1887 thiss!20629 rules!2768 lt!1377016) (tuple2!41089 lt!1377005 Nil!41802))))

(declare-fun suffixResult!91 () List!41926)

(declare-datatypes ((Unit!60327 0))(
  ( (Unit!60328) )
))
(declare-fun lt!1376998 () Unit!60327)

(declare-fun lemmaLexThenLexPrefix!615 (LexerInterface!6119 List!41928 List!41926 List!41926 List!41927 List!41927 List!41926) Unit!60327)

(assert (=> b!3937675 (= lt!1376998 (lemmaLexThenLexPrefix!615 thiss!20629 rules!2768 lt!1377016 suffix!1176 lt!1377005 suffixTokens!72 suffixResult!91))))

(declare-fun b!3937677 () Bool)

(declare-fun res!1593456 () Bool)

(assert (=> b!3937677 (=> (not res!1593456) (not e!2436206))))

(declare-fun prefix!426 () List!41926)

(declare-fun isEmpty!24931 (List!41926) Bool)

(assert (=> b!3937677 (= res!1593456 (not (isEmpty!24931 prefix!426)))))

(declare-fun e!2436201 () Bool)

(declare-fun tp!1198207 () Bool)

(declare-fun b!3937678 () Bool)

(declare-fun inv!21 (TokenValue!6760) Bool)

(assert (=> b!3937678 (= e!2436210 (and (inv!21 (value!206739 (h!47223 prefixTokens!80))) e!2436201 tp!1198207))))

(declare-fun e!2436204 () Bool)

(declare-fun tp!1198204 () Bool)

(declare-fun e!2436185 () Bool)

(declare-fun b!3937679 () Bool)

(declare-fun inv!56000 (String!47518) Bool)

(declare-fun inv!56004 (TokenValueInjection!12948) Bool)

(assert (=> b!3937679 (= e!2436204 (and tp!1198204 (inv!56000 (tag!7390 (rule!9484 (h!47223 suffixTokens!72)))) (inv!56004 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) e!2436185))))

(declare-fun b!3937680 () Bool)

(declare-fun tp!1198213 () Bool)

(declare-fun e!2436216 () Bool)

(assert (=> b!3937680 (= e!2436201 (and tp!1198213 (inv!56000 (tag!7390 (rule!9484 (h!47223 prefixTokens!80)))) (inv!56004 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) e!2436216))))

(declare-fun b!3937681 () Bool)

(declare-fun e!2436214 () Unit!60327)

(declare-fun Unit!60329 () Unit!60327)

(assert (=> b!3937681 (= e!2436214 Unit!60329)))

(declare-fun b!3937682 () Bool)

(declare-fun e!2436211 () Bool)

(assert (=> b!3937682 (= e!2436211 e!2436212)))

(declare-fun res!1593457 () Bool)

(assert (=> b!3937682 (=> res!1593457 e!2436212)))

(assert (=> b!3937682 (= res!1593457 (not (= lt!1376966 prefix!426)))))

(declare-fun lt!1377003 () List!41926)

(assert (=> b!3937682 (= lt!1376966 (++!10817 lt!1377003 lt!1377016))))

(declare-fun getSuffix!2080 (List!41926 List!41926) List!41926)

(assert (=> b!3937682 (= lt!1377016 (getSuffix!2080 prefix!426 lt!1377003))))

(declare-fun b!3937683 () Bool)

(declare-fun res!1593461 () Bool)

(assert (=> b!3937683 (=> (not res!1593461) (not e!2436206))))

(declare-fun isEmpty!24932 (List!41927) Bool)

(assert (=> b!3937683 (= res!1593461 (not (isEmpty!24932 prefixTokens!80)))))

(declare-fun e!2436192 () Bool)

(declare-fun e!2436217 () Bool)

(declare-fun tp!1198211 () Bool)

(declare-fun b!3937684 () Bool)

(assert (=> b!3937684 (= e!2436217 (and tp!1198211 (inv!56000 (tag!7390 (h!47224 rules!2768))) (inv!56004 (transformation!6530 (h!47224 rules!2768))) e!2436192))))

(assert (=> b!3937685 (= e!2436185 (and tp!1198214 tp!1198212))))

(declare-fun b!3937686 () Bool)

(declare-fun e!2436184 () Bool)

(assert (=> b!3937686 (= e!2436198 (not e!2436184))))

(declare-fun res!1593474 () Bool)

(assert (=> b!3937686 (=> res!1593474 e!2436184)))

(assert (=> b!3937686 (= res!1593474 (not (= lt!1376981 lt!1376995)))))

(declare-fun lt!1376980 () tuple2!41088)

(assert (=> b!3937686 (= lt!1376980 (lexList!1887 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1376994))))))

(declare-fun lt!1376999 () List!41926)

(declare-fun lt!1377013 () TokenValue!6760)

(declare-fun lt!1376988 () Int)

(assert (=> b!3937686 (and (= (size!31360 (_1!23677 (v!39279 lt!1376994))) lt!1376988) (= (originalCharacters!7130 (_1!23677 (v!39279 lt!1376994))) lt!1377003) (= (tuple2!41087 (_1!23677 (v!39279 lt!1376994)) (_2!23677 (v!39279 lt!1376994))) (tuple2!41087 (Token!12199 lt!1377013 (rule!9484 (_1!23677 (v!39279 lt!1376994))) lt!1376988 lt!1377003) lt!1376999)))))

(declare-fun size!31361 (List!41926) Int)

(assert (=> b!3937686 (= lt!1376988 (size!31361 lt!1377003))))

(declare-fun e!2436186 () Bool)

(assert (=> b!3937686 e!2436186))

(declare-fun res!1593452 () Bool)

(assert (=> b!3937686 (=> (not res!1593452) (not e!2436186))))

(assert (=> b!3937686 (= res!1593452 (= (value!206739 (_1!23677 (v!39279 lt!1376994))) lt!1377013))))

(declare-fun apply!9769 (TokenValueInjection!12948 BalanceConc!25076) TokenValue!6760)

(declare-fun seqFromList!4797 (List!41926) BalanceConc!25076)

(assert (=> b!3937686 (= lt!1377013 (apply!9769 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) (seqFromList!4797 lt!1377003)))))

(assert (=> b!3937686 (= (_2!23677 (v!39279 lt!1376994)) lt!1376999)))

(declare-fun lt!1377004 () Unit!60327)

(declare-fun lemmaSamePrefixThenSameSuffix!1846 (List!41926 List!41926 List!41926 List!41926 List!41926) Unit!60327)

(assert (=> b!3937686 (= lt!1377004 (lemmaSamePrefixThenSameSuffix!1846 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 lt!1376999 lt!1376995))))

(assert (=> b!3937686 (= lt!1376999 (getSuffix!2080 lt!1376995 lt!1377003))))

(declare-fun isPrefix!3625 (List!41926 List!41926) Bool)

(assert (=> b!3937686 (isPrefix!3625 lt!1377003 lt!1376981)))

(assert (=> b!3937686 (= lt!1376981 (++!10817 lt!1377003 (_2!23677 (v!39279 lt!1376994))))))

(declare-fun lt!1376974 () Unit!60327)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2488 (List!41926 List!41926) Unit!60327)

(assert (=> b!3937686 (= lt!1376974 (lemmaConcatTwoListThenFirstIsPrefix!2488 lt!1377003 (_2!23677 (v!39279 lt!1376994))))))

(declare-fun list!15532 (BalanceConc!25076) List!41926)

(declare-fun charsOf!4354 (Token!12198) BalanceConc!25076)

(assert (=> b!3937686 (= lt!1377003 (list!15532 (charsOf!4354 (_1!23677 (v!39279 lt!1376994)))))))

(declare-fun ruleValid!2478 (LexerInterface!6119 Rule!12860) Bool)

(assert (=> b!3937686 (ruleValid!2478 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))))))

(declare-fun lt!1376989 () Unit!60327)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1558 (LexerInterface!6119 Rule!12860 List!41928) Unit!60327)

(assert (=> b!3937686 (= lt!1376989 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1558 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))) rules!2768))))

(declare-fun lt!1376992 () Unit!60327)

(declare-fun lemmaCharactersSize!1187 (Token!12198) Unit!60327)

(assert (=> b!3937686 (= lt!1376992 (lemmaCharactersSize!1187 (_1!23677 (v!39279 lt!1376994))))))

(declare-fun b!3937687 () Bool)

(declare-fun e!2436188 () Bool)

(assert (=> b!3937687 (= e!2436197 e!2436188)))

(declare-fun res!1593470 () Bool)

(assert (=> b!3937687 (=> res!1593470 e!2436188)))

(declare-fun lt!1376996 () List!41926)

(assert (=> b!3937687 (= res!1593470 (or (not (= lt!1376995 lt!1376997)) (not (= lt!1376995 lt!1376996)) (not (= lt!1376981 lt!1376996))))))

(assert (=> b!3937687 (= lt!1376997 lt!1376996)))

(declare-fun lt!1376973 () List!41926)

(assert (=> b!3937687 (= lt!1376996 (++!10817 lt!1377003 lt!1376973))))

(assert (=> b!3937687 (= lt!1376973 (++!10817 lt!1377016 suffix!1176))))

(declare-fun lt!1376971 () Unit!60327)

(declare-fun lemmaConcatAssociativity!2347 (List!41926 List!41926 List!41926) Unit!60327)

(assert (=> b!3937687 (= lt!1376971 (lemmaConcatAssociativity!2347 lt!1377003 lt!1377016 suffix!1176))))

(declare-fun b!3937688 () Bool)

(declare-fun e!2436180 () Unit!60327)

(declare-fun Unit!60330 () Unit!60327)

(assert (=> b!3937688 (= e!2436180 Unit!60330)))

(declare-fun b!3937689 () Bool)

(declare-fun e!2436199 () Bool)

(declare-fun e!2436191 () Bool)

(assert (=> b!3937689 (= e!2436199 e!2436191)))

(declare-fun res!1593458 () Bool)

(assert (=> b!3937689 (=> res!1593458 e!2436191)))

(declare-fun lt!1377008 () Int)

(declare-fun lt!1376984 () Int)

(assert (=> b!3937689 (= res!1593458 (<= lt!1377008 lt!1376984))))

(declare-fun lt!1376970 () Unit!60327)

(assert (=> b!3937689 (= lt!1376970 e!2436180)))

(declare-fun c!684199 () Bool)

(assert (=> b!3937689 (= c!684199 (= lt!1377008 lt!1376984))))

(declare-fun lt!1376987 () Unit!60327)

(assert (=> b!3937689 (= lt!1376987 e!2436214)))

(declare-fun c!684200 () Bool)

(assert (=> b!3937689 (= c!684200 (< lt!1377008 lt!1376984))))

(assert (=> b!3937689 (= lt!1376984 (size!31361 suffix!1176))))

(assert (=> b!3937689 (= lt!1377008 (size!31361 (_2!23677 (v!39279 lt!1376994))))))

(declare-fun b!3937690 () Bool)

(declare-fun e!2436205 () Bool)

(declare-fun tp!1198210 () Bool)

(assert (=> b!3937690 (= e!2436205 (and tp_is_empty!19841 tp!1198210))))

(declare-fun lt!1377011 () tuple2!41086)

(declare-fun call!285018 () tuple2!41088)

(declare-fun bm!285013 () Bool)

(assert (=> bm!285013 (= call!285018 (lexList!1887 thiss!20629 rules!2768 (_2!23677 lt!1377011)))))

(declare-fun b!3937691 () Bool)

(declare-fun e!2436189 () Bool)

(declare-fun e!2436220 () Bool)

(assert (=> b!3937691 (= e!2436189 e!2436220)))

(declare-fun res!1593468 () Bool)

(assert (=> b!3937691 (=> res!1593468 e!2436220)))

(declare-fun lt!1376972 () tuple2!41088)

(assert (=> b!3937691 (= res!1593468 (not (= lt!1376980 lt!1376972)))))

(declare-fun lt!1377002 () List!41927)

(assert (=> b!3937691 (= lt!1376972 (tuple2!41089 lt!1377002 suffixResult!91))))

(declare-fun ++!10818 (List!41927 List!41927) List!41927)

(assert (=> b!3937691 (= lt!1377002 (++!10818 lt!1377005 suffixTokens!72))))

(declare-fun tail!6091 (List!41927) List!41927)

(assert (=> b!3937691 (= lt!1377005 (tail!6091 prefixTokens!80))))

(assert (=> b!3937691 (isPrefix!3625 lt!1377016 lt!1376973)))

(declare-fun lt!1376991 () Unit!60327)

(assert (=> b!3937691 (= lt!1376991 (lemmaConcatTwoListThenFirstIsPrefix!2488 lt!1377016 suffix!1176))))

(declare-fun b!3937692 () Bool)

(assert (=> b!3937692 (= e!2436186 (= (size!31360 (_1!23677 (v!39279 lt!1376994))) (size!31361 (originalCharacters!7130 (_1!23677 (v!39279 lt!1376994))))))))

(declare-fun b!3937693 () Bool)

(declare-fun e!2436221 () Unit!60327)

(declare-fun Unit!60331 () Unit!60327)

(assert (=> b!3937693 (= e!2436221 Unit!60331)))

(declare-fun lt!1376983 () Unit!60327)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!130 (LexerInterface!6119 List!41928 List!41926 List!41926 List!41927 List!41926) Unit!60327)

(assert (=> b!3937693 (= lt!1376983 (lemmaLexWithSmallerInputCannotProduceSameResults!130 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1376994)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3937693 false))

(declare-fun b!3937694 () Bool)

(declare-fun e!2436187 () Bool)

(declare-fun tp!1198217 () Bool)

(assert (=> b!3937694 (= e!2436187 (and tp_is_empty!19841 tp!1198217))))

(declare-fun b!3937695 () Bool)

(declare-fun Unit!60332 () Unit!60327)

(assert (=> b!3937695 (= e!2436221 Unit!60332)))

(declare-fun b!3937696 () Bool)

(declare-fun e!2436182 () Bool)

(assert (=> b!3937696 (= e!2436182 false)))

(declare-fun b!3937697 () Bool)

(declare-fun res!1593454 () Bool)

(assert (=> b!3937697 (=> res!1593454 e!2436181)))

(assert (=> b!3937697 (= res!1593454 (not (= (lexList!1887 thiss!20629 rules!2768 lt!1376973) lt!1376972)))))

(declare-fun b!3937698 () Bool)

(assert (=> b!3937698 (= e!2436188 e!2436189)))

(declare-fun res!1593446 () Bool)

(assert (=> b!3937698 (=> res!1593446 e!2436189)))

(assert (=> b!3937698 (= res!1593446 (not (= lt!1376973 (_2!23677 (v!39279 lt!1376994)))))))

(assert (=> b!3937698 (= (_2!23677 (v!39279 lt!1376994)) lt!1376973)))

(declare-fun lt!1376969 () Unit!60327)

(assert (=> b!3937698 (= lt!1376969 (lemmaSamePrefixThenSameSuffix!1846 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 lt!1376973 lt!1376995))))

(assert (=> b!3937698 (isPrefix!3625 lt!1377003 lt!1376996)))

(declare-fun lt!1376975 () Unit!60327)

(assert (=> b!3937698 (= lt!1376975 (lemmaConcatTwoListThenFirstIsPrefix!2488 lt!1377003 lt!1376973))))

(assert (=> b!3937699 (= e!2436216 (and tp!1198215 tp!1198219))))

(declare-fun b!3937700 () Bool)

(declare-fun c!684203 () Bool)

(declare-fun lt!1376985 () List!41927)

(assert (=> b!3937700 (= c!684203 (isEmpty!24932 lt!1376985))))

(assert (=> b!3937700 (= lt!1376985 (tail!6091 prefixTokens!80))))

(declare-fun e!2436209 () Unit!60327)

(declare-fun e!2436202 () Unit!60327)

(assert (=> b!3937700 (= e!2436209 e!2436202)))

(declare-fun b!3937701 () Bool)

(declare-fun e!2436222 () Bool)

(assert (=> b!3937701 (= e!2436222 (= lt!1376966 (++!10817 prefix!426 Nil!41802)))))

(declare-fun b!3937702 () Bool)

(declare-fun Unit!60333 () Unit!60327)

(assert (=> b!3937702 (= e!2436202 Unit!60333)))

(declare-fun lt!1376990 () Unit!60327)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!130 (LexerInterface!6119 List!41928 List!41926 List!41926 List!41927 List!41926 List!41927) Unit!60327)

(assert (=> b!3937702 (= lt!1376990 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!130 thiss!20629 rules!2768 suffix!1176 (_2!23677 lt!1377011) suffixTokens!72 suffixResult!91 lt!1376985))))

(declare-fun res!1593451 () Bool)

(assert (=> b!3937702 (= res!1593451 (not (= call!285018 (tuple2!41089 (++!10818 lt!1376985 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3937702 (=> (not res!1593451) (not e!2436182))))

(assert (=> b!3937702 e!2436182))

(declare-fun b!3937703 () Bool)

(assert (=> b!3937703 (= e!2436196 e!2436222)))

(declare-fun res!1593462 () Bool)

(assert (=> b!3937703 (=> res!1593462 e!2436222)))

(assert (=> b!3937703 (= res!1593462 (not (isPrefix!3625 Nil!41802 suffix!1176)))))

(assert (=> b!3937703 (isPrefix!3625 Nil!41802 (++!10817 Nil!41802 suffix!1176))))

(declare-fun lt!1377009 () Unit!60327)

(assert (=> b!3937703 (= lt!1377009 (lemmaConcatTwoListThenFirstIsPrefix!2488 Nil!41802 suffix!1176))))

(declare-fun b!3937704 () Bool)

(declare-fun Unit!60334 () Unit!60327)

(assert (=> b!3937704 (= e!2436214 Unit!60334)))

(declare-fun lt!1377017 () Int)

(assert (=> b!3937704 (= lt!1377017 (size!31361 lt!1376995))))

(declare-fun lt!1377014 () Unit!60327)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1361 (LexerInterface!6119 List!41928 List!41926 List!41926 List!41926 Rule!12860) Unit!60327)

(assert (=> b!3937704 (= lt!1377014 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1361 thiss!20629 rules!2768 lt!1377003 lt!1376995 (_2!23677 (v!39279 lt!1376994)) (rule!9484 (_1!23677 (v!39279 lt!1376994)))))))

(declare-fun maxPrefixOneRule!2493 (LexerInterface!6119 Rule!12860 List!41926) Option!8950)

(assert (=> b!3937704 (= (maxPrefixOneRule!2493 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))) lt!1376995) (Some!8949 (tuple2!41087 (Token!12199 lt!1377013 (rule!9484 (_1!23677 (v!39279 lt!1376994))) lt!1376988 lt!1377003) (_2!23677 (v!39279 lt!1376994)))))))

(declare-fun get!13815 (Option!8950) tuple2!41086)

(assert (=> b!3937704 (= lt!1377011 (get!13815 lt!1376994))))

(declare-fun c!684201 () Bool)

(assert (=> b!3937704 (= c!684201 (< (size!31361 (_2!23677 lt!1377011)) lt!1376984))))

(declare-fun lt!1376978 () Unit!60327)

(assert (=> b!3937704 (= lt!1376978 e!2436209)))

(assert (=> b!3937704 false))

(declare-fun b!3937705 () Bool)

(declare-fun res!1593455 () Bool)

(assert (=> b!3937705 (=> (not res!1593455) (not e!2436206))))

(declare-fun rulesInvariant!5462 (LexerInterface!6119 List!41928) Bool)

(assert (=> b!3937705 (= res!1593455 (rulesInvariant!5462 thiss!20629 rules!2768))))

(declare-fun b!3937706 () Bool)

(declare-fun res!1593465 () Bool)

(assert (=> b!3937706 (=> res!1593465 e!2436222)))

(declare-fun lt!1377006 () Int)

(assert (=> b!3937706 (= res!1593465 (<= lt!1377006 lt!1376988))))

(declare-fun b!3937707 () Bool)

(declare-fun res!1593473 () Bool)

(assert (=> b!3937707 (=> res!1593473 e!2436199)))

(assert (=> b!3937707 (= res!1593473 (or (not (= lt!1376980 (tuple2!41089 (_1!23678 lt!1376980) (_2!23678 lt!1376980)))) (= (_2!23677 (v!39279 lt!1376994)) suffix!1176)))))

(declare-fun b!3937708 () Bool)

(declare-fun res!1593464 () Bool)

(assert (=> b!3937708 (=> res!1593464 e!2436191)))

(declare-fun head!8365 (List!41927) Token!12198)

(assert (=> b!3937708 (= res!1593464 (not (= (head!8365 prefixTokens!80) (_1!23677 (v!39279 lt!1376994)))))))

(declare-fun b!3937709 () Bool)

(declare-fun Unit!60335 () Unit!60327)

(assert (=> b!3937709 (= e!2436209 Unit!60335)))

(declare-fun b!3937710 () Bool)

(declare-fun Unit!60336 () Unit!60327)

(assert (=> b!3937710 (= e!2436202 Unit!60336)))

(declare-fun lt!1376967 () Unit!60327)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!578 (List!41926 List!41926 List!41926 List!41926) Unit!60327)

(assert (=> b!3937710 (= lt!1376967 (lemmaConcatSameAndSameSizesThenSameLists!578 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 (_2!23677 lt!1377011)))))

(assert (=> b!3937710 (= (_2!23677 (v!39279 lt!1376994)) (_2!23677 lt!1377011))))

(declare-fun lt!1377007 () Unit!60327)

(assert (=> b!3937710 (= lt!1377007 (lemmaLexWithSmallerInputCannotProduceSameResults!130 thiss!20629 rules!2768 suffix!1176 (_2!23677 lt!1377011) suffixTokens!72 suffixResult!91))))

(declare-fun res!1593448 () Bool)

(declare-fun lt!1376976 () tuple2!41088)

(assert (=> b!3937710 (= res!1593448 (not (= call!285018 lt!1376976)))))

(declare-fun e!2436195 () Bool)

(assert (=> b!3937710 (=> (not res!1593448) (not e!2436195))))

(assert (=> b!3937710 e!2436195))

(declare-fun b!3937711 () Bool)

(declare-fun res!1593472 () Bool)

(assert (=> b!3937711 (=> res!1593472 e!2436196)))

(assert (=> b!3937711 (= res!1593472 (not (isPrefix!3625 lt!1377016 (_2!23677 (v!39279 lt!1376994)))))))

(declare-fun b!3937712 () Bool)

(declare-fun Unit!60337 () Unit!60327)

(assert (=> b!3937712 (= e!2436180 Unit!60337)))

(declare-fun lt!1376977 () Unit!60327)

(assert (=> b!3937712 (= lt!1376977 (lemmaConcatTwoListThenFirstIsPrefix!2488 prefix!426 suffix!1176))))

(assert (=> b!3937712 (isPrefix!3625 prefix!426 lt!1376995)))

(declare-fun lt!1376982 () Unit!60327)

(declare-fun lemmaIsPrefixSameLengthThenSameList!821 (List!41926 List!41926 List!41926) Unit!60327)

(assert (=> b!3937712 (= lt!1376982 (lemmaIsPrefixSameLengthThenSameList!821 lt!1377003 prefix!426 lt!1376995))))

(assert (=> b!3937712 (= lt!1377003 prefix!426)))

(declare-fun lt!1376993 () Unit!60327)

(assert (=> b!3937712 (= lt!1376993 (lemmaSamePrefixThenSameSuffix!1846 lt!1377003 (_2!23677 (v!39279 lt!1376994)) prefix!426 suffix!1176 lt!1376995))))

(assert (=> b!3937712 false))

(declare-fun tp!1198218 () Bool)

(declare-fun b!3937713 () Bool)

(assert (=> b!3937713 (= e!2436218 (and (inv!21 (value!206739 (h!47223 suffixTokens!72))) e!2436204 tp!1198218))))

(declare-fun b!3937676 () Bool)

(assert (=> b!3937676 (= e!2436184 e!2436199)))

(declare-fun res!1593471 () Bool)

(assert (=> b!3937676 (=> res!1593471 e!2436199)))

(declare-fun lt!1376968 () List!41927)

(declare-fun lt!1376986 () tuple2!41088)

(assert (=> b!3937676 (= res!1593471 (not (= lt!1376986 (tuple2!41089 (++!10818 lt!1376968 (_1!23678 lt!1376980)) (_2!23678 lt!1376980)))))))

(assert (=> b!3937676 (= lt!1376968 (Cons!41803 (_1!23677 (v!39279 lt!1376994)) Nil!41803))))

(declare-fun res!1593475 () Bool)

(assert (=> start!369632 (=> (not res!1593475) (not e!2436206))))

(assert (=> start!369632 (= res!1593475 ((_ is Lexer!6117) thiss!20629))))

(assert (=> start!369632 e!2436206))

(assert (=> start!369632 e!2436187))

(assert (=> start!369632 true))

(assert (=> start!369632 e!2436193))

(declare-fun e!2436200 () Bool)

(assert (=> start!369632 e!2436200))

(assert (=> start!369632 e!2436213))

(assert (=> start!369632 e!2436207))

(assert (=> start!369632 e!2436205))

(declare-fun b!3937714 () Bool)

(assert (=> b!3937714 (= e!2436220 e!2436181)))

(declare-fun res!1593466 () Bool)

(assert (=> b!3937714 (=> res!1593466 e!2436181)))

(declare-fun lt!1377015 () List!41927)

(declare-fun lt!1377010 () List!41927)

(assert (=> b!3937714 (= res!1593466 (not (= lt!1377015 lt!1377010)))))

(assert (=> b!3937714 (= lt!1377015 (++!10818 lt!1376968 lt!1377002))))

(assert (=> b!3937714 (= lt!1377015 (++!10818 (++!10818 lt!1376968 lt!1377005) suffixTokens!72))))

(declare-fun lt!1377001 () Unit!60327)

(declare-fun lemmaConcatAssociativity!2348 (List!41927 List!41927 List!41927) Unit!60327)

(assert (=> b!3937714 (= lt!1377001 (lemmaConcatAssociativity!2348 lt!1376968 lt!1377005 suffixTokens!72))))

(declare-fun lt!1377012 () Unit!60327)

(assert (=> b!3937714 (= lt!1377012 e!2436221)))

(declare-fun c!684202 () Bool)

(assert (=> b!3937714 (= c!684202 (isEmpty!24932 lt!1377005))))

(declare-fun b!3937715 () Bool)

(assert (=> b!3937715 (= e!2436191 e!2436211)))

(declare-fun res!1593463 () Bool)

(assert (=> b!3937715 (=> res!1593463 e!2436211)))

(assert (=> b!3937715 (= res!1593463 (>= lt!1376988 lt!1377006))))

(assert (=> b!3937715 (= lt!1377006 (size!31361 prefix!426))))

(assert (=> b!3937715 (isPrefix!3625 lt!1377003 prefix!426)))

(declare-fun lt!1377000 () Unit!60327)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!303 (List!41926 List!41926 List!41926) Unit!60327)

(assert (=> b!3937715 (= lt!1377000 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!303 prefix!426 lt!1377003 lt!1376995))))

(assert (=> b!3937715 (isPrefix!3625 prefix!426 lt!1376995)))

(declare-fun lt!1376979 () Unit!60327)

(assert (=> b!3937715 (= lt!1376979 (lemmaConcatTwoListThenFirstIsPrefix!2488 prefix!426 suffix!1176))))

(assert (=> b!3937716 (= e!2436192 (and tp!1198220 tp!1198205))))

(declare-fun b!3937717 () Bool)

(declare-fun tp!1198208 () Bool)

(assert (=> b!3937717 (= e!2436200 (and e!2436217 tp!1198208))))

(declare-fun b!3937718 () Bool)

(declare-fun e!2436194 () Bool)

(assert (=> b!3937718 (= e!2436194 e!2436190)))

(declare-fun res!1593450 () Bool)

(assert (=> b!3937718 (=> (not res!1593450) (not e!2436190))))

(assert (=> b!3937718 (= res!1593450 (= (lexList!1887 thiss!20629 rules!2768 suffix!1176) lt!1376976))))

(assert (=> b!3937718 (= lt!1376976 (tuple2!41089 suffixTokens!72 suffixResult!91))))

(declare-fun b!3937719 () Bool)

(assert (=> b!3937719 (= e!2436195 false)))

(declare-fun b!3937720 () Bool)

(declare-fun res!1593467 () Bool)

(assert (=> b!3937720 (=> res!1593467 e!2436196)))

(assert (=> b!3937720 (= res!1593467 (<= lt!1376984 (size!31361 Nil!41802)))))

(declare-fun b!3937721 () Bool)

(declare-fun res!1593447 () Bool)

(assert (=> b!3937721 (=> res!1593447 e!2436196)))

(assert (=> b!3937721 (= res!1593447 (isEmpty!24931 suffix!1176))))

(declare-fun b!3937722 () Bool)

(assert (=> b!3937722 (= e!2436206 e!2436194)))

(declare-fun res!1593460 () Bool)

(assert (=> b!3937722 (=> (not res!1593460) (not e!2436194))))

(assert (=> b!3937722 (= res!1593460 (= lt!1376986 (tuple2!41089 lt!1377010 suffixResult!91)))))

(assert (=> b!3937722 (= lt!1376986 (lexList!1887 thiss!20629 rules!2768 lt!1376995))))

(assert (=> b!3937722 (= lt!1377010 (++!10818 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3937722 (= lt!1376995 (++!10817 prefix!426 suffix!1176))))

(assert (= (and start!369632 res!1593475) b!3937672))

(assert (= (and b!3937672 res!1593449) b!3937705))

(assert (= (and b!3937705 res!1593455) b!3937683))

(assert (= (and b!3937683 res!1593461) b!3937677))

(assert (= (and b!3937677 res!1593456) b!3937722))

(assert (= (and b!3937722 res!1593460) b!3937718))

(assert (= (and b!3937718 res!1593450) b!3937673))

(assert (= (and b!3937673 res!1593469) b!3937686))

(assert (= (and b!3937686 res!1593452) b!3937692))

(assert (= (and b!3937686 (not res!1593474)) b!3937676))

(assert (= (and b!3937676 (not res!1593471)) b!3937707))

(assert (= (and b!3937707 (not res!1593473)) b!3937689))

(assert (= (and b!3937689 c!684200) b!3937704))

(assert (= (and b!3937689 (not c!684200)) b!3937681))

(assert (= (and b!3937704 c!684201) b!3937700))

(assert (= (and b!3937704 (not c!684201)) b!3937709))

(assert (= (and b!3937700 c!684203) b!3937710))

(assert (= (and b!3937700 (not c!684203)) b!3937702))

(assert (= (and b!3937710 res!1593448) b!3937719))

(assert (= (and b!3937702 res!1593451) b!3937696))

(assert (= (or b!3937710 b!3937702) bm!285013))

(assert (= (and b!3937689 c!684199) b!3937712))

(assert (= (and b!3937689 (not c!684199)) b!3937688))

(assert (= (and b!3937689 (not res!1593458)) b!3937708))

(assert (= (and b!3937708 (not res!1593464)) b!3937715))

(assert (= (and b!3937715 (not res!1593463)) b!3937682))

(assert (= (and b!3937682 (not res!1593457)) b!3937674))

(assert (= (and b!3937674 (not res!1593459)) b!3937687))

(assert (= (and b!3937687 (not res!1593470)) b!3937698))

(assert (= (and b!3937698 (not res!1593446)) b!3937691))

(assert (= (and b!3937691 (not res!1593468)) b!3937714))

(assert (= (and b!3937714 c!684202) b!3937693))

(assert (= (and b!3937714 (not c!684202)) b!3937695))

(assert (= (and b!3937714 (not res!1593466)) b!3937697))

(assert (= (and b!3937697 (not res!1593454)) b!3937675))

(assert (= (and b!3937675 (not res!1593453)) b!3937721))

(assert (= (and b!3937721 (not res!1593447)) b!3937711))

(assert (= (and b!3937711 (not res!1593472)) b!3937720))

(assert (= (and b!3937720 (not res!1593467)) b!3937703))

(assert (= (and b!3937703 (not res!1593462)) b!3937706))

(assert (= (and b!3937706 (not res!1593465)) b!3937701))

(assert (= (and start!369632 ((_ is Cons!41802) suffixResult!91)) b!3937694))

(assert (= (and start!369632 ((_ is Cons!41802) suffix!1176)) b!3937670))

(assert (= b!3937684 b!3937716))

(assert (= b!3937717 b!3937684))

(assert (= (and start!369632 ((_ is Cons!41804) rules!2768)) b!3937717))

(assert (= b!3937680 b!3937699))

(assert (= b!3937678 b!3937680))

(assert (= b!3937671 b!3937678))

(assert (= (and start!369632 ((_ is Cons!41803) prefixTokens!80)) b!3937671))

(assert (= b!3937679 b!3937685))

(assert (= b!3937713 b!3937679))

(assert (= b!3937669 b!3937713))

(assert (= (and start!369632 ((_ is Cons!41803) suffixTokens!72)) b!3937669))

(assert (= (and start!369632 ((_ is Cons!41802) prefix!426)) b!3937690))

(declare-fun m!4505669 () Bool)

(assert (=> b!3937701 m!4505669))

(declare-fun m!4505671 () Bool)

(assert (=> b!3937677 m!4505671))

(declare-fun m!4505673 () Bool)

(assert (=> b!3937672 m!4505673))

(declare-fun m!4505675 () Bool)

(assert (=> b!3937692 m!4505675))

(declare-fun m!4505677 () Bool)

(assert (=> b!3937674 m!4505677))

(declare-fun m!4505679 () Bool)

(assert (=> b!3937684 m!4505679))

(declare-fun m!4505681 () Bool)

(assert (=> b!3937684 m!4505681))

(declare-fun m!4505683 () Bool)

(assert (=> b!3937687 m!4505683))

(declare-fun m!4505685 () Bool)

(assert (=> b!3937687 m!4505685))

(declare-fun m!4505687 () Bool)

(assert (=> b!3937687 m!4505687))

(declare-fun m!4505689 () Bool)

(assert (=> b!3937720 m!4505689))

(declare-fun m!4505691 () Bool)

(assert (=> b!3937683 m!4505691))

(declare-fun m!4505693 () Bool)

(assert (=> b!3937675 m!4505693))

(declare-fun m!4505695 () Bool)

(assert (=> b!3937675 m!4505695))

(declare-fun m!4505697 () Bool)

(assert (=> b!3937682 m!4505697))

(declare-fun m!4505699 () Bool)

(assert (=> b!3937682 m!4505699))

(declare-fun m!4505701 () Bool)

(assert (=> b!3937698 m!4505701))

(declare-fun m!4505703 () Bool)

(assert (=> b!3937698 m!4505703))

(declare-fun m!4505705 () Bool)

(assert (=> b!3937698 m!4505705))

(declare-fun m!4505707 () Bool)

(assert (=> b!3937710 m!4505707))

(declare-fun m!4505709 () Bool)

(assert (=> b!3937710 m!4505709))

(declare-fun m!4505711 () Bool)

(assert (=> b!3937714 m!4505711))

(declare-fun m!4505713 () Bool)

(assert (=> b!3937714 m!4505713))

(declare-fun m!4505715 () Bool)

(assert (=> b!3937714 m!4505715))

(declare-fun m!4505717 () Bool)

(assert (=> b!3937714 m!4505717))

(assert (=> b!3937714 m!4505715))

(declare-fun m!4505719 () Bool)

(assert (=> b!3937714 m!4505719))

(declare-fun m!4505721 () Bool)

(assert (=> b!3937705 m!4505721))

(declare-fun m!4505723 () Bool)

(assert (=> b!3937689 m!4505723))

(declare-fun m!4505725 () Bool)

(assert (=> b!3937689 m!4505725))

(declare-fun m!4505727 () Bool)

(assert (=> b!3937697 m!4505727))

(declare-fun m!4505729 () Bool)

(assert (=> b!3937671 m!4505729))

(declare-fun m!4505731 () Bool)

(assert (=> b!3937686 m!4505731))

(declare-fun m!4505733 () Bool)

(assert (=> b!3937686 m!4505733))

(declare-fun m!4505735 () Bool)

(assert (=> b!3937686 m!4505735))

(declare-fun m!4505737 () Bool)

(assert (=> b!3937686 m!4505737))

(declare-fun m!4505739 () Bool)

(assert (=> b!3937686 m!4505739))

(assert (=> b!3937686 m!4505737))

(declare-fun m!4505741 () Bool)

(assert (=> b!3937686 m!4505741))

(declare-fun m!4505743 () Bool)

(assert (=> b!3937686 m!4505743))

(declare-fun m!4505745 () Bool)

(assert (=> b!3937686 m!4505745))

(declare-fun m!4505747 () Bool)

(assert (=> b!3937686 m!4505747))

(declare-fun m!4505749 () Bool)

(assert (=> b!3937686 m!4505749))

(declare-fun m!4505751 () Bool)

(assert (=> b!3937686 m!4505751))

(declare-fun m!4505753 () Bool)

(assert (=> b!3937686 m!4505753))

(declare-fun m!4505755 () Bool)

(assert (=> b!3937686 m!4505755))

(assert (=> b!3937686 m!4505751))

(declare-fun m!4505757 () Bool)

(assert (=> b!3937686 m!4505757))

(declare-fun m!4505759 () Bool)

(assert (=> b!3937673 m!4505759))

(declare-fun m!4505761 () Bool)

(assert (=> b!3937678 m!4505761))

(declare-fun m!4505763 () Bool)

(assert (=> b!3937669 m!4505763))

(declare-fun m!4505765 () Bool)

(assert (=> bm!285013 m!4505765))

(declare-fun m!4505767 () Bool)

(assert (=> b!3937691 m!4505767))

(declare-fun m!4505769 () Bool)

(assert (=> b!3937691 m!4505769))

(declare-fun m!4505771 () Bool)

(assert (=> b!3937691 m!4505771))

(declare-fun m!4505773 () Bool)

(assert (=> b!3937691 m!4505773))

(declare-fun m!4505775 () Bool)

(assert (=> b!3937680 m!4505775))

(declare-fun m!4505777 () Bool)

(assert (=> b!3937680 m!4505777))

(declare-fun m!4505779 () Bool)

(assert (=> b!3937676 m!4505779))

(declare-fun m!4505781 () Bool)

(assert (=> b!3937702 m!4505781))

(declare-fun m!4505783 () Bool)

(assert (=> b!3937702 m!4505783))

(declare-fun m!4505785 () Bool)

(assert (=> b!3937700 m!4505785))

(assert (=> b!3937700 m!4505769))

(declare-fun m!4505787 () Bool)

(assert (=> b!3937693 m!4505787))

(declare-fun m!4505789 () Bool)

(assert (=> b!3937703 m!4505789))

(declare-fun m!4505791 () Bool)

(assert (=> b!3937703 m!4505791))

(assert (=> b!3937703 m!4505791))

(declare-fun m!4505793 () Bool)

(assert (=> b!3937703 m!4505793))

(declare-fun m!4505795 () Bool)

(assert (=> b!3937703 m!4505795))

(declare-fun m!4505797 () Bool)

(assert (=> b!3937721 m!4505797))

(declare-fun m!4505799 () Bool)

(assert (=> b!3937704 m!4505799))

(declare-fun m!4505801 () Bool)

(assert (=> b!3937704 m!4505801))

(declare-fun m!4505803 () Bool)

(assert (=> b!3937704 m!4505803))

(declare-fun m!4505805 () Bool)

(assert (=> b!3937704 m!4505805))

(declare-fun m!4505807 () Bool)

(assert (=> b!3937704 m!4505807))

(declare-fun m!4505809 () Bool)

(assert (=> b!3937722 m!4505809))

(declare-fun m!4505811 () Bool)

(assert (=> b!3937722 m!4505811))

(declare-fun m!4505813 () Bool)

(assert (=> b!3937722 m!4505813))

(declare-fun m!4505815 () Bool)

(assert (=> b!3937718 m!4505815))

(declare-fun m!4505817 () Bool)

(assert (=> b!3937715 m!4505817))

(declare-fun m!4505819 () Bool)

(assert (=> b!3937715 m!4505819))

(declare-fun m!4505821 () Bool)

(assert (=> b!3937715 m!4505821))

(declare-fun m!4505823 () Bool)

(assert (=> b!3937715 m!4505823))

(declare-fun m!4505825 () Bool)

(assert (=> b!3937715 m!4505825))

(declare-fun m!4505827 () Bool)

(assert (=> b!3937708 m!4505827))

(assert (=> b!3937712 m!4505823))

(assert (=> b!3937712 m!4505817))

(declare-fun m!4505829 () Bool)

(assert (=> b!3937712 m!4505829))

(declare-fun m!4505831 () Bool)

(assert (=> b!3937712 m!4505831))

(declare-fun m!4505833 () Bool)

(assert (=> b!3937711 m!4505833))

(declare-fun m!4505835 () Bool)

(assert (=> b!3937713 m!4505835))

(declare-fun m!4505837 () Bool)

(assert (=> b!3937679 m!4505837))

(declare-fun m!4505839 () Bool)

(assert (=> b!3937679 m!4505839))

(check-sat (not b!3937692) (not b!3937701) (not b_next!108287) (not b!3937710) (not b!3937671) b_and!300745 (not b!3937717) (not b!3937715) b_and!300743 (not b!3937679) (not b!3937682) (not b!3937674) (not bm!285013) (not b!3937684) (not b!3937722) (not b!3937683) (not b!3937678) (not b!3937720) (not b!3937703) (not b!3937669) (not b!3937675) (not b!3937686) (not b!3937677) (not b!3937711) (not b!3937698) (not b!3937718) (not b_next!108277) (not b!3937673) (not b_next!108285) b_and!300751 (not b!3937693) b_and!300749 (not b!3937721) (not b!3937712) (not b!3937676) (not b!3937713) b_and!300753 (not b!3937680) (not b!3937670) (not b!3937691) (not b!3937708) (not b!3937672) b_and!300747 (not b!3937714) (not b!3937704) (not b!3937687) (not b!3937689) (not b!3937702) (not b!3937700) (not b!3937697) (not b!3937705) (not b_next!108281) (not b!3937690) (not b!3937694) (not b_next!108283) (not b_next!108279) tp_is_empty!19841)
(check-sat b_and!300743 (not b_next!108277) (not b_next!108285) (not b_next!108287) b_and!300753 b_and!300747 b_and!300745 (not b_next!108281) b_and!300751 b_and!300749 (not b_next!108283) (not b_next!108279))
(get-model)

(declare-fun d!1167984 () Bool)

(assert (=> d!1167984 (= (isEmpty!24932 prefixTokens!80) ((_ is Nil!41803) prefixTokens!80))))

(assert (=> b!3937683 d!1167984))

(declare-fun d!1167986 () Bool)

(assert (=> d!1167986 (= (maxPrefixOneRule!2493 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))) lt!1376995) (Some!8949 (tuple2!41087 (Token!12199 (apply!9769 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) (seqFromList!4797 lt!1377003)) (rule!9484 (_1!23677 (v!39279 lt!1376994))) (size!31361 lt!1377003) lt!1377003) (_2!23677 (v!39279 lt!1376994)))))))

(declare-fun lt!1377020 () Unit!60327)

(declare-fun choose!23476 (LexerInterface!6119 List!41928 List!41926 List!41926 List!41926 Rule!12860) Unit!60327)

(assert (=> d!1167986 (= lt!1377020 (choose!23476 thiss!20629 rules!2768 lt!1377003 lt!1376995 (_2!23677 (v!39279 lt!1376994)) (rule!9484 (_1!23677 (v!39279 lt!1376994)))))))

(assert (=> d!1167986 (not (isEmpty!24930 rules!2768))))

(assert (=> d!1167986 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1361 thiss!20629 rules!2768 lt!1377003 lt!1376995 (_2!23677 (v!39279 lt!1376994)) (rule!9484 (_1!23677 (v!39279 lt!1376994)))) lt!1377020)))

(declare-fun bs!586527 () Bool)

(assert (= bs!586527 d!1167986))

(assert (=> bs!586527 m!4505803))

(assert (=> bs!586527 m!4505751))

(assert (=> bs!586527 m!4505757))

(assert (=> bs!586527 m!4505751))

(declare-fun m!4505841 () Bool)

(assert (=> bs!586527 m!4505841))

(assert (=> bs!586527 m!4505673))

(assert (=> bs!586527 m!4505743))

(assert (=> b!3937704 d!1167986))

(declare-fun d!1167988 () Bool)

(assert (=> d!1167988 (= (get!13815 lt!1376994) (v!39279 lt!1376994))))

(assert (=> b!3937704 d!1167988))

(declare-fun b!3937817 () Bool)

(declare-fun e!2436280 () Bool)

(declare-fun e!2436277 () Bool)

(assert (=> b!3937817 (= e!2436280 e!2436277)))

(declare-fun res!1593536 () Bool)

(assert (=> b!3937817 (=> (not res!1593536) (not e!2436277))))

(declare-fun lt!1377074 () Option!8950)

(declare-fun matchR!5489 (Regex!11435 List!41926) Bool)

(assert (=> b!3937817 (= res!1593536 (matchR!5489 (regex!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) (list!15532 (charsOf!4354 (_1!23677 (get!13815 lt!1377074))))))))

(declare-fun b!3937818 () Bool)

(declare-fun e!2436278 () Option!8950)

(assert (=> b!3937818 (= e!2436278 None!8949)))

(declare-fun b!3937819 () Bool)

(declare-fun e!2436279 () Bool)

(declare-datatypes ((tuple2!41090 0))(
  ( (tuple2!41091 (_1!23679 List!41926) (_2!23679 List!41926)) )
))
(declare-fun findLongestMatchInner!1269 (Regex!11435 List!41926 Int List!41926 List!41926 Int) tuple2!41090)

(assert (=> b!3937819 (= e!2436279 (matchR!5489 (regex!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) (_1!23679 (findLongestMatchInner!1269 (regex!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) Nil!41802 (size!31361 Nil!41802) lt!1376995 lt!1376995 (size!31361 lt!1376995)))))))

(declare-fun d!1167990 () Bool)

(assert (=> d!1167990 e!2436280))

(declare-fun res!1593533 () Bool)

(assert (=> d!1167990 (=> res!1593533 e!2436280)))

(declare-fun isEmpty!24933 (Option!8950) Bool)

(assert (=> d!1167990 (= res!1593533 (isEmpty!24933 lt!1377074))))

(assert (=> d!1167990 (= lt!1377074 e!2436278)))

(declare-fun c!684230 () Bool)

(declare-fun lt!1377073 () tuple2!41090)

(assert (=> d!1167990 (= c!684230 (isEmpty!24931 (_1!23679 lt!1377073)))))

(declare-fun findLongestMatch!1182 (Regex!11435 List!41926) tuple2!41090)

(assert (=> d!1167990 (= lt!1377073 (findLongestMatch!1182 (regex!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) lt!1376995))))

(assert (=> d!1167990 (ruleValid!2478 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))))))

(assert (=> d!1167990 (= (maxPrefixOneRule!2493 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))) lt!1376995) lt!1377074)))

(declare-fun b!3937820 () Bool)

(declare-fun res!1593531 () Bool)

(assert (=> b!3937820 (=> (not res!1593531) (not e!2436277))))

(assert (=> b!3937820 (= res!1593531 (= (rule!9484 (_1!23677 (get!13815 lt!1377074))) (rule!9484 (_1!23677 (v!39279 lt!1376994)))))))

(declare-fun b!3937821 () Bool)

(assert (=> b!3937821 (= e!2436277 (= (size!31360 (_1!23677 (get!13815 lt!1377074))) (size!31361 (originalCharacters!7130 (_1!23677 (get!13815 lt!1377074))))))))

(declare-fun b!3937822 () Bool)

(declare-fun res!1593530 () Bool)

(assert (=> b!3937822 (=> (not res!1593530) (not e!2436277))))

(assert (=> b!3937822 (= res!1593530 (= (++!10817 (list!15532 (charsOf!4354 (_1!23677 (get!13815 lt!1377074)))) (_2!23677 (get!13815 lt!1377074))) lt!1376995))))

(declare-fun b!3937823 () Bool)

(declare-fun res!1593535 () Bool)

(assert (=> b!3937823 (=> (not res!1593535) (not e!2436277))))

(assert (=> b!3937823 (= res!1593535 (= (value!206739 (_1!23677 (get!13815 lt!1377074))) (apply!9769 (transformation!6530 (rule!9484 (_1!23677 (get!13815 lt!1377074)))) (seqFromList!4797 (originalCharacters!7130 (_1!23677 (get!13815 lt!1377074)))))))))

(declare-fun b!3937824 () Bool)

(declare-fun size!31363 (BalanceConc!25076) Int)

(assert (=> b!3937824 (= e!2436278 (Some!8949 (tuple2!41087 (Token!12199 (apply!9769 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) (seqFromList!4797 (_1!23679 lt!1377073))) (rule!9484 (_1!23677 (v!39279 lt!1376994))) (size!31363 (seqFromList!4797 (_1!23679 lt!1377073))) (_1!23679 lt!1377073)) (_2!23679 lt!1377073))))))

(declare-fun lt!1377075 () Unit!60327)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1242 (Regex!11435 List!41926) Unit!60327)

(assert (=> b!3937824 (= lt!1377075 (longestMatchIsAcceptedByMatchOrIsEmpty!1242 (regex!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) lt!1376995))))

(declare-fun res!1593534 () Bool)

(assert (=> b!3937824 (= res!1593534 (isEmpty!24931 (_1!23679 (findLongestMatchInner!1269 (regex!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) Nil!41802 (size!31361 Nil!41802) lt!1376995 lt!1376995 (size!31361 lt!1376995)))))))

(assert (=> b!3937824 (=> res!1593534 e!2436279)))

(assert (=> b!3937824 e!2436279))

(declare-fun lt!1377071 () Unit!60327)

(assert (=> b!3937824 (= lt!1377071 lt!1377075)))

(declare-fun lt!1377072 () Unit!60327)

(declare-fun lemmaSemiInverse!1775 (TokenValueInjection!12948 BalanceConc!25076) Unit!60327)

(assert (=> b!3937824 (= lt!1377072 (lemmaSemiInverse!1775 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) (seqFromList!4797 (_1!23679 lt!1377073))))))

(declare-fun b!3937825 () Bool)

(declare-fun res!1593532 () Bool)

(assert (=> b!3937825 (=> (not res!1593532) (not e!2436277))))

(assert (=> b!3937825 (= res!1593532 (< (size!31361 (_2!23677 (get!13815 lt!1377074))) (size!31361 lt!1376995)))))

(assert (= (and d!1167990 c!684230) b!3937818))

(assert (= (and d!1167990 (not c!684230)) b!3937824))

(assert (= (and b!3937824 (not res!1593534)) b!3937819))

(assert (= (and d!1167990 (not res!1593533)) b!3937817))

(assert (= (and b!3937817 res!1593536) b!3937822))

(assert (= (and b!3937822 res!1593530) b!3937825))

(assert (= (and b!3937825 res!1593532) b!3937820))

(assert (= (and b!3937820 res!1593531) b!3937823))

(assert (= (and b!3937823 res!1593535) b!3937821))

(declare-fun m!4505931 () Bool)

(assert (=> b!3937824 m!4505931))

(declare-fun m!4505933 () Bool)

(assert (=> b!3937824 m!4505933))

(assert (=> b!3937824 m!4505931))

(declare-fun m!4505935 () Bool)

(assert (=> b!3937824 m!4505935))

(assert (=> b!3937824 m!4505805))

(assert (=> b!3937824 m!4505689))

(assert (=> b!3937824 m!4505689))

(assert (=> b!3937824 m!4505805))

(declare-fun m!4505937 () Bool)

(assert (=> b!3937824 m!4505937))

(declare-fun m!4505939 () Bool)

(assert (=> b!3937824 m!4505939))

(assert (=> b!3937824 m!4505931))

(declare-fun m!4505941 () Bool)

(assert (=> b!3937824 m!4505941))

(assert (=> b!3937824 m!4505931))

(declare-fun m!4505943 () Bool)

(assert (=> b!3937824 m!4505943))

(declare-fun m!4505945 () Bool)

(assert (=> b!3937821 m!4505945))

(declare-fun m!4505947 () Bool)

(assert (=> b!3937821 m!4505947))

(assert (=> b!3937823 m!4505945))

(declare-fun m!4505949 () Bool)

(assert (=> b!3937823 m!4505949))

(assert (=> b!3937823 m!4505949))

(declare-fun m!4505951 () Bool)

(assert (=> b!3937823 m!4505951))

(assert (=> b!3937820 m!4505945))

(declare-fun m!4505953 () Bool)

(assert (=> d!1167990 m!4505953))

(declare-fun m!4505955 () Bool)

(assert (=> d!1167990 m!4505955))

(declare-fun m!4505957 () Bool)

(assert (=> d!1167990 m!4505957))

(assert (=> d!1167990 m!4505749))

(assert (=> b!3937822 m!4505945))

(declare-fun m!4505959 () Bool)

(assert (=> b!3937822 m!4505959))

(assert (=> b!3937822 m!4505959))

(declare-fun m!4505961 () Bool)

(assert (=> b!3937822 m!4505961))

(assert (=> b!3937822 m!4505961))

(declare-fun m!4505963 () Bool)

(assert (=> b!3937822 m!4505963))

(assert (=> b!3937825 m!4505945))

(declare-fun m!4505965 () Bool)

(assert (=> b!3937825 m!4505965))

(assert (=> b!3937825 m!4505805))

(assert (=> b!3937817 m!4505945))

(assert (=> b!3937817 m!4505959))

(assert (=> b!3937817 m!4505959))

(assert (=> b!3937817 m!4505961))

(assert (=> b!3937817 m!4505961))

(declare-fun m!4505967 () Bool)

(assert (=> b!3937817 m!4505967))

(assert (=> b!3937819 m!4505689))

(assert (=> b!3937819 m!4505805))

(assert (=> b!3937819 m!4505689))

(assert (=> b!3937819 m!4505805))

(assert (=> b!3937819 m!4505937))

(declare-fun m!4505969 () Bool)

(assert (=> b!3937819 m!4505969))

(assert (=> b!3937704 d!1167990))

(declare-fun d!1168036 () Bool)

(declare-fun lt!1377078 () Int)

(assert (=> d!1168036 (>= lt!1377078 0)))

(declare-fun e!2436283 () Int)

(assert (=> d!1168036 (= lt!1377078 e!2436283)))

(declare-fun c!684233 () Bool)

(assert (=> d!1168036 (= c!684233 ((_ is Nil!41802) (_2!23677 lt!1377011)))))

(assert (=> d!1168036 (= (size!31361 (_2!23677 lt!1377011)) lt!1377078)))

(declare-fun b!3937830 () Bool)

(assert (=> b!3937830 (= e!2436283 0)))

(declare-fun b!3937831 () Bool)

(assert (=> b!3937831 (= e!2436283 (+ 1 (size!31361 (t!326505 (_2!23677 lt!1377011)))))))

(assert (= (and d!1168036 c!684233) b!3937830))

(assert (= (and d!1168036 (not c!684233)) b!3937831))

(declare-fun m!4505971 () Bool)

(assert (=> b!3937831 m!4505971))

(assert (=> b!3937704 d!1168036))

(declare-fun d!1168038 () Bool)

(declare-fun lt!1377079 () Int)

(assert (=> d!1168038 (>= lt!1377079 0)))

(declare-fun e!2436284 () Int)

(assert (=> d!1168038 (= lt!1377079 e!2436284)))

(declare-fun c!684234 () Bool)

(assert (=> d!1168038 (= c!684234 ((_ is Nil!41802) lt!1376995))))

(assert (=> d!1168038 (= (size!31361 lt!1376995) lt!1377079)))

(declare-fun b!3937832 () Bool)

(assert (=> b!3937832 (= e!2436284 0)))

(declare-fun b!3937833 () Bool)

(assert (=> b!3937833 (= e!2436284 (+ 1 (size!31361 (t!326505 lt!1376995))))))

(assert (= (and d!1168038 c!684234) b!3937832))

(assert (= (and d!1168038 (not c!684234)) b!3937833))

(declare-fun m!4505973 () Bool)

(assert (=> b!3937833 m!4505973))

(assert (=> b!3937704 d!1168038))

(declare-fun d!1168040 () Bool)

(assert (=> d!1168040 (= (inv!56000 (tag!7390 (h!47224 rules!2768))) (= (mod (str.len (value!206738 (tag!7390 (h!47224 rules!2768)))) 2) 0))))

(assert (=> b!3937684 d!1168040))

(declare-fun d!1168042 () Bool)

(declare-fun res!1593539 () Bool)

(declare-fun e!2436287 () Bool)

(assert (=> d!1168042 (=> (not res!1593539) (not e!2436287))))

(declare-fun semiInverseModEq!2808 (Int Int) Bool)

(assert (=> d!1168042 (= res!1593539 (semiInverseModEq!2808 (toChars!8849 (transformation!6530 (h!47224 rules!2768))) (toValue!8990 (transformation!6530 (h!47224 rules!2768)))))))

(assert (=> d!1168042 (= (inv!56004 (transformation!6530 (h!47224 rules!2768))) e!2436287)))

(declare-fun b!3937836 () Bool)

(declare-fun equivClasses!2707 (Int Int) Bool)

(assert (=> b!3937836 (= e!2436287 (equivClasses!2707 (toChars!8849 (transformation!6530 (h!47224 rules!2768))) (toValue!8990 (transformation!6530 (h!47224 rules!2768)))))))

(assert (= (and d!1168042 res!1593539) b!3937836))

(declare-fun m!4505975 () Bool)

(assert (=> d!1168042 m!4505975))

(declare-fun m!4505977 () Bool)

(assert (=> b!3937836 m!4505977))

(assert (=> b!3937684 d!1168042))

(declare-fun d!1168044 () Bool)

(declare-fun res!1593542 () Bool)

(declare-fun e!2436290 () Bool)

(assert (=> d!1168044 (=> (not res!1593542) (not e!2436290))))

(declare-fun rulesValid!2542 (LexerInterface!6119 List!41928) Bool)

(assert (=> d!1168044 (= res!1593542 (rulesValid!2542 thiss!20629 rules!2768))))

(assert (=> d!1168044 (= (rulesInvariant!5462 thiss!20629 rules!2768) e!2436290)))

(declare-fun b!3937839 () Bool)

(declare-datatypes ((List!41929 0))(
  ( (Nil!41805) (Cons!41805 (h!47225 String!47518) (t!326604 List!41929)) )
))
(declare-fun noDuplicateTag!2543 (LexerInterface!6119 List!41928 List!41929) Bool)

(assert (=> b!3937839 (= e!2436290 (noDuplicateTag!2543 thiss!20629 rules!2768 Nil!41805))))

(assert (= (and d!1168044 res!1593542) b!3937839))

(declare-fun m!4505979 () Bool)

(assert (=> d!1168044 m!4505979))

(declare-fun m!4505981 () Bool)

(assert (=> b!3937839 m!4505981))

(assert (=> b!3937705 d!1168044))

(declare-fun d!1168046 () Bool)

(declare-fun res!1593547 () Bool)

(declare-fun e!2436293 () Bool)

(assert (=> d!1168046 (=> (not res!1593547) (not e!2436293))))

(declare-fun validRegex!5207 (Regex!11435) Bool)

(assert (=> d!1168046 (= res!1593547 (validRegex!5207 (regex!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994))))))))

(assert (=> d!1168046 (= (ruleValid!2478 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) e!2436293)))

(declare-fun b!3937844 () Bool)

(declare-fun res!1593548 () Bool)

(assert (=> b!3937844 (=> (not res!1593548) (not e!2436293))))

(declare-fun nullable!4008 (Regex!11435) Bool)

(assert (=> b!3937844 (= res!1593548 (not (nullable!4008 (regex!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))))))

(declare-fun b!3937845 () Bool)

(assert (=> b!3937845 (= e!2436293 (not (= (tag!7390 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) (String!47519 ""))))))

(assert (= (and d!1168046 res!1593547) b!3937844))

(assert (= (and b!3937844 res!1593548) b!3937845))

(declare-fun m!4505983 () Bool)

(assert (=> d!1168046 m!4505983))

(declare-fun m!4505985 () Bool)

(assert (=> b!3937844 m!4505985))

(assert (=> b!3937686 d!1168046))

(declare-fun d!1168048 () Bool)

(declare-fun lt!1377082 () BalanceConc!25076)

(assert (=> d!1168048 (= (list!15532 lt!1377082) (originalCharacters!7130 (_1!23677 (v!39279 lt!1376994))))))

(declare-fun dynLambda!17907 (Int TokenValue!6760) BalanceConc!25076)

(assert (=> d!1168048 (= lt!1377082 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994))))) (value!206739 (_1!23677 (v!39279 lt!1376994)))))))

(assert (=> d!1168048 (= (charsOf!4354 (_1!23677 (v!39279 lt!1376994))) lt!1377082)))

(declare-fun b_lambda!115167 () Bool)

(assert (=> (not b_lambda!115167) (not d!1168048)))

(declare-fun t!326509 () Bool)

(declare-fun tb!235853 () Bool)

(assert (=> (and b!3937685 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326509) tb!235853))

(declare-fun b!3937850 () Bool)

(declare-fun e!2436296 () Bool)

(declare-fun tp!1198223 () Bool)

(declare-fun inv!56005 (Conc!12741) Bool)

(assert (=> b!3937850 (= e!2436296 (and (inv!56005 (c!684205 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994))))) (value!206739 (_1!23677 (v!39279 lt!1376994)))))) tp!1198223))))

(declare-fun result!285702 () Bool)

(declare-fun inv!56006 (BalanceConc!25076) Bool)

(assert (=> tb!235853 (= result!285702 (and (inv!56006 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994))))) (value!206739 (_1!23677 (v!39279 lt!1376994))))) e!2436296))))

(assert (= tb!235853 b!3937850))

(declare-fun m!4505987 () Bool)

(assert (=> b!3937850 m!4505987))

(declare-fun m!4505989 () Bool)

(assert (=> tb!235853 m!4505989))

(assert (=> d!1168048 t!326509))

(declare-fun b_and!300755 () Bool)

(assert (= b_and!300745 (and (=> t!326509 result!285702) b_and!300755)))

(declare-fun t!326511 () Bool)

(declare-fun tb!235855 () Bool)

(assert (=> (and b!3937699 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326511) tb!235855))

(declare-fun result!285706 () Bool)

(assert (= result!285706 result!285702))

(assert (=> d!1168048 t!326511))

(declare-fun b_and!300757 () Bool)

(assert (= b_and!300749 (and (=> t!326511 result!285706) b_and!300757)))

(declare-fun t!326513 () Bool)

(declare-fun tb!235857 () Bool)

(assert (=> (and b!3937716 (= (toChars!8849 (transformation!6530 (h!47224 rules!2768))) (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326513) tb!235857))

(declare-fun result!285708 () Bool)

(assert (= result!285708 result!285702))

(assert (=> d!1168048 t!326513))

(declare-fun b_and!300759 () Bool)

(assert (= b_and!300753 (and (=> t!326513 result!285708) b_and!300759)))

(declare-fun m!4505991 () Bool)

(assert (=> d!1168048 m!4505991))

(declare-fun m!4505993 () Bool)

(assert (=> d!1168048 m!4505993))

(assert (=> b!3937686 d!1168048))

(declare-fun d!1168050 () Bool)

(declare-fun lt!1377083 () Int)

(assert (=> d!1168050 (>= lt!1377083 0)))

(declare-fun e!2436297 () Int)

(assert (=> d!1168050 (= lt!1377083 e!2436297)))

(declare-fun c!684235 () Bool)

(assert (=> d!1168050 (= c!684235 ((_ is Nil!41802) lt!1377003))))

(assert (=> d!1168050 (= (size!31361 lt!1377003) lt!1377083)))

(declare-fun b!3937851 () Bool)

(assert (=> b!3937851 (= e!2436297 0)))

(declare-fun b!3937852 () Bool)

(assert (=> b!3937852 (= e!2436297 (+ 1 (size!31361 (t!326505 lt!1377003))))))

(assert (= (and d!1168050 c!684235) b!3937851))

(assert (= (and d!1168050 (not c!684235)) b!3937852))

(declare-fun m!4505995 () Bool)

(assert (=> b!3937852 m!4505995))

(assert (=> b!3937686 d!1168050))

(declare-fun d!1168052 () Bool)

(assert (=> d!1168052 (= (size!31360 (_1!23677 (v!39279 lt!1376994))) (size!31361 (originalCharacters!7130 (_1!23677 (v!39279 lt!1376994)))))))

(declare-fun Unit!60338 () Unit!60327)

(assert (=> d!1168052 (= (lemmaCharactersSize!1187 (_1!23677 (v!39279 lt!1376994))) Unit!60338)))

(declare-fun bs!586534 () Bool)

(assert (= bs!586534 d!1168052))

(assert (=> bs!586534 m!4505675))

(assert (=> b!3937686 d!1168052))

(declare-fun d!1168054 () Bool)

(assert (=> d!1168054 (ruleValid!2478 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))))))

(declare-fun lt!1377086 () Unit!60327)

(declare-fun choose!23480 (LexerInterface!6119 Rule!12860 List!41928) Unit!60327)

(assert (=> d!1168054 (= lt!1377086 (choose!23480 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))) rules!2768))))

(declare-fun contains!8374 (List!41928 Rule!12860) Bool)

(assert (=> d!1168054 (contains!8374 rules!2768 (rule!9484 (_1!23677 (v!39279 lt!1376994))))))

(assert (=> d!1168054 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1558 thiss!20629 (rule!9484 (_1!23677 (v!39279 lt!1376994))) rules!2768) lt!1377086)))

(declare-fun bs!586535 () Bool)

(assert (= bs!586535 d!1168054))

(assert (=> bs!586535 m!4505749))

(declare-fun m!4505997 () Bool)

(assert (=> bs!586535 m!4505997))

(declare-fun m!4505999 () Bool)

(assert (=> bs!586535 m!4505999))

(assert (=> b!3937686 d!1168054))

(declare-fun b!3937879 () Bool)

(declare-fun e!2436312 () Bool)

(declare-fun e!2436314 () Bool)

(assert (=> b!3937879 (= e!2436312 e!2436314)))

(declare-fun res!1593574 () Bool)

(assert (=> b!3937879 (=> (not res!1593574) (not e!2436314))))

(assert (=> b!3937879 (= res!1593574 (not ((_ is Nil!41802) lt!1376981)))))

(declare-fun b!3937880 () Bool)

(declare-fun res!1593573 () Bool)

(assert (=> b!3937880 (=> (not res!1593573) (not e!2436314))))

(declare-fun head!8367 (List!41926) C!23056)

(assert (=> b!3937880 (= res!1593573 (= (head!8367 lt!1377003) (head!8367 lt!1376981)))))

(declare-fun d!1168056 () Bool)

(declare-fun e!2436313 () Bool)

(assert (=> d!1168056 e!2436313))

(declare-fun res!1593571 () Bool)

(assert (=> d!1168056 (=> res!1593571 e!2436313)))

(declare-fun lt!1377099 () Bool)

(assert (=> d!1168056 (= res!1593571 (not lt!1377099))))

(assert (=> d!1168056 (= lt!1377099 e!2436312)))

(declare-fun res!1593572 () Bool)

(assert (=> d!1168056 (=> res!1593572 e!2436312)))

(assert (=> d!1168056 (= res!1593572 ((_ is Nil!41802) lt!1377003))))

(assert (=> d!1168056 (= (isPrefix!3625 lt!1377003 lt!1376981) lt!1377099)))

(declare-fun b!3937882 () Bool)

(assert (=> b!3937882 (= e!2436313 (>= (size!31361 lt!1376981) (size!31361 lt!1377003)))))

(declare-fun b!3937881 () Bool)

(declare-fun tail!6093 (List!41926) List!41926)

(assert (=> b!3937881 (= e!2436314 (isPrefix!3625 (tail!6093 lt!1377003) (tail!6093 lt!1376981)))))

(assert (= (and d!1168056 (not res!1593572)) b!3937879))

(assert (= (and b!3937879 res!1593574) b!3937880))

(assert (= (and b!3937880 res!1593573) b!3937881))

(assert (= (and d!1168056 (not res!1593571)) b!3937882))

(declare-fun m!4506001 () Bool)

(assert (=> b!3937880 m!4506001))

(declare-fun m!4506003 () Bool)

(assert (=> b!3937880 m!4506003))

(declare-fun m!4506005 () Bool)

(assert (=> b!3937882 m!4506005))

(assert (=> b!3937882 m!4505743))

(declare-fun m!4506007 () Bool)

(assert (=> b!3937881 m!4506007))

(declare-fun m!4506009 () Bool)

(assert (=> b!3937881 m!4506009))

(assert (=> b!3937881 m!4506007))

(assert (=> b!3937881 m!4506009))

(declare-fun m!4506011 () Bool)

(assert (=> b!3937881 m!4506011))

(assert (=> b!3937686 d!1168056))

(declare-fun d!1168058 () Bool)

(declare-fun fromListB!2217 (List!41926) BalanceConc!25076)

(assert (=> d!1168058 (= (seqFromList!4797 lt!1377003) (fromListB!2217 lt!1377003))))

(declare-fun bs!586536 () Bool)

(assert (= bs!586536 d!1168058))

(declare-fun m!4506013 () Bool)

(assert (=> bs!586536 m!4506013))

(assert (=> b!3937686 d!1168058))

(declare-fun d!1168060 () Bool)

(declare-fun list!15533 (Conc!12741) List!41926)

(assert (=> d!1168060 (= (list!15532 (charsOf!4354 (_1!23677 (v!39279 lt!1376994)))) (list!15533 (c!684205 (charsOf!4354 (_1!23677 (v!39279 lt!1376994))))))))

(declare-fun bs!586537 () Bool)

(assert (= bs!586537 d!1168060))

(declare-fun m!4506015 () Bool)

(assert (=> bs!586537 m!4506015))

(assert (=> b!3937686 d!1168060))

(declare-fun d!1168062 () Bool)

(declare-fun lt!1377107 () List!41926)

(assert (=> d!1168062 (= (++!10817 lt!1377003 lt!1377107) lt!1376995)))

(declare-fun e!2436321 () List!41926)

(assert (=> d!1168062 (= lt!1377107 e!2436321)))

(declare-fun c!684241 () Bool)

(assert (=> d!1168062 (= c!684241 ((_ is Cons!41802) lt!1377003))))

(assert (=> d!1168062 (>= (size!31361 lt!1376995) (size!31361 lt!1377003))))

(assert (=> d!1168062 (= (getSuffix!2080 lt!1376995 lt!1377003) lt!1377107)))

(declare-fun b!3937896 () Bool)

(assert (=> b!3937896 (= e!2436321 (getSuffix!2080 (tail!6093 lt!1376995) (t!326505 lt!1377003)))))

(declare-fun b!3937897 () Bool)

(assert (=> b!3937897 (= e!2436321 lt!1376995)))

(assert (= (and d!1168062 c!684241) b!3937896))

(assert (= (and d!1168062 (not c!684241)) b!3937897))

(declare-fun m!4506017 () Bool)

(assert (=> d!1168062 m!4506017))

(assert (=> d!1168062 m!4505805))

(assert (=> d!1168062 m!4505743))

(declare-fun m!4506019 () Bool)

(assert (=> b!3937896 m!4506019))

(assert (=> b!3937896 m!4506019))

(declare-fun m!4506021 () Bool)

(assert (=> b!3937896 m!4506021))

(assert (=> b!3937686 d!1168062))

(declare-fun lt!1377112 () List!41926)

(declare-fun b!3937917 () Bool)

(declare-fun e!2436333 () Bool)

(assert (=> b!3937917 (= e!2436333 (or (not (= (_2!23677 (v!39279 lt!1376994)) Nil!41802)) (= lt!1377112 lt!1377003)))))

(declare-fun b!3937916 () Bool)

(declare-fun res!1593595 () Bool)

(assert (=> b!3937916 (=> (not res!1593595) (not e!2436333))))

(assert (=> b!3937916 (= res!1593595 (= (size!31361 lt!1377112) (+ (size!31361 lt!1377003) (size!31361 (_2!23677 (v!39279 lt!1376994))))))))

(declare-fun b!3937915 () Bool)

(declare-fun e!2436332 () List!41926)

(assert (=> b!3937915 (= e!2436332 (Cons!41802 (h!47222 lt!1377003) (++!10817 (t!326505 lt!1377003) (_2!23677 (v!39279 lt!1376994)))))))

(declare-fun d!1168064 () Bool)

(assert (=> d!1168064 e!2436333))

(declare-fun res!1593594 () Bool)

(assert (=> d!1168064 (=> (not res!1593594) (not e!2436333))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6305 (List!41926) (InoxSet C!23056))

(assert (=> d!1168064 (= res!1593594 (= (content!6305 lt!1377112) ((_ map or) (content!6305 lt!1377003) (content!6305 (_2!23677 (v!39279 lt!1376994))))))))

(assert (=> d!1168064 (= lt!1377112 e!2436332)))

(declare-fun c!684244 () Bool)

(assert (=> d!1168064 (= c!684244 ((_ is Nil!41802) lt!1377003))))

(assert (=> d!1168064 (= (++!10817 lt!1377003 (_2!23677 (v!39279 lt!1376994))) lt!1377112)))

(declare-fun b!3937914 () Bool)

(assert (=> b!3937914 (= e!2436332 (_2!23677 (v!39279 lt!1376994)))))

(assert (= (and d!1168064 c!684244) b!3937914))

(assert (= (and d!1168064 (not c!684244)) b!3937915))

(assert (= (and d!1168064 res!1593594) b!3937916))

(assert (= (and b!3937916 res!1593595) b!3937917))

(declare-fun m!4506081 () Bool)

(assert (=> b!3937916 m!4506081))

(assert (=> b!3937916 m!4505743))

(assert (=> b!3937916 m!4505725))

(declare-fun m!4506083 () Bool)

(assert (=> b!3937915 m!4506083))

(declare-fun m!4506085 () Bool)

(assert (=> d!1168064 m!4506085))

(declare-fun m!4506087 () Bool)

(assert (=> d!1168064 m!4506087))

(declare-fun m!4506089 () Bool)

(assert (=> d!1168064 m!4506089))

(assert (=> b!3937686 d!1168064))

(declare-fun d!1168072 () Bool)

(declare-fun dynLambda!17908 (Int BalanceConc!25076) TokenValue!6760)

(assert (=> d!1168072 (= (apply!9769 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))) (seqFromList!4797 lt!1377003)) (dynLambda!17908 (toValue!8990 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994))))) (seqFromList!4797 lt!1377003)))))

(declare-fun b_lambda!115169 () Bool)

(assert (=> (not b_lambda!115169) (not d!1168072)))

(declare-fun t!326515 () Bool)

(declare-fun tb!235859 () Bool)

(assert (=> (and b!3937685 (= (toValue!8990 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (toValue!8990 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326515) tb!235859))

(declare-fun result!285710 () Bool)

(assert (=> tb!235859 (= result!285710 (inv!21 (dynLambda!17908 (toValue!8990 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994))))) (seqFromList!4797 lt!1377003))))))

(declare-fun m!4506091 () Bool)

(assert (=> tb!235859 m!4506091))

(assert (=> d!1168072 t!326515))

(declare-fun b_and!300761 () Bool)

(assert (= b_and!300743 (and (=> t!326515 result!285710) b_and!300761)))

(declare-fun tb!235861 () Bool)

(declare-fun t!326517 () Bool)

(assert (=> (and b!3937699 (= (toValue!8990 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (toValue!8990 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326517) tb!235861))

(declare-fun result!285714 () Bool)

(assert (= result!285714 result!285710))

(assert (=> d!1168072 t!326517))

(declare-fun b_and!300763 () Bool)

(assert (= b_and!300747 (and (=> t!326517 result!285714) b_and!300763)))

(declare-fun tb!235863 () Bool)

(declare-fun t!326519 () Bool)

(assert (=> (and b!3937716 (= (toValue!8990 (transformation!6530 (h!47224 rules!2768))) (toValue!8990 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326519) tb!235863))

(declare-fun result!285716 () Bool)

(assert (= result!285716 result!285710))

(assert (=> d!1168072 t!326519))

(declare-fun b_and!300765 () Bool)

(assert (= b_and!300751 (and (=> t!326519 result!285716) b_and!300765)))

(assert (=> d!1168072 m!4505751))

(declare-fun m!4506093 () Bool)

(assert (=> d!1168072 m!4506093))

(assert (=> b!3937686 d!1168072))

(declare-fun b!3937963 () Bool)

(declare-fun e!2436363 () Bool)

(declare-fun lt!1377126 () tuple2!41088)

(assert (=> b!3937963 (= e!2436363 (= (_2!23678 lt!1377126) (_2!23677 (v!39279 lt!1376994))))))

(declare-fun b!3937964 () Bool)

(declare-fun e!2436362 () Bool)

(assert (=> b!3937964 (= e!2436362 (not (isEmpty!24932 (_1!23678 lt!1377126))))))

(declare-fun b!3937965 () Bool)

(assert (=> b!3937965 (= e!2436363 e!2436362)))

(declare-fun res!1593616 () Bool)

(assert (=> b!3937965 (= res!1593616 (< (size!31361 (_2!23678 lt!1377126)) (size!31361 (_2!23677 (v!39279 lt!1376994)))))))

(assert (=> b!3937965 (=> (not res!1593616) (not e!2436362))))

(declare-fun b!3937966 () Bool)

(declare-fun e!2436364 () tuple2!41088)

(declare-fun lt!1377125 () Option!8950)

(declare-fun lt!1377127 () tuple2!41088)

(assert (=> b!3937966 (= e!2436364 (tuple2!41089 (Cons!41803 (_1!23677 (v!39279 lt!1377125)) (_1!23678 lt!1377127)) (_2!23678 lt!1377127)))))

(assert (=> b!3937966 (= lt!1377127 (lexList!1887 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1377125))))))

(declare-fun d!1168074 () Bool)

(assert (=> d!1168074 e!2436363))

(declare-fun c!684254 () Bool)

(declare-fun size!31365 (List!41927) Int)

(assert (=> d!1168074 (= c!684254 (> (size!31365 (_1!23678 lt!1377126)) 0))))

(assert (=> d!1168074 (= lt!1377126 e!2436364)))

(declare-fun c!684255 () Bool)

(assert (=> d!1168074 (= c!684255 ((_ is Some!8949) lt!1377125))))

(assert (=> d!1168074 (= lt!1377125 (maxPrefix!3423 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1376994))))))

(assert (=> d!1168074 (= (lexList!1887 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1376994))) lt!1377126)))

(declare-fun b!3937967 () Bool)

(assert (=> b!3937967 (= e!2436364 (tuple2!41089 Nil!41803 (_2!23677 (v!39279 lt!1376994))))))

(assert (= (and d!1168074 c!684255) b!3937966))

(assert (= (and d!1168074 (not c!684255)) b!3937967))

(assert (= (and d!1168074 c!684254) b!3937965))

(assert (= (and d!1168074 (not c!684254)) b!3937963))

(assert (= (and b!3937965 res!1593616) b!3937964))

(declare-fun m!4506143 () Bool)

(assert (=> b!3937964 m!4506143))

(declare-fun m!4506145 () Bool)

(assert (=> b!3937965 m!4506145))

(assert (=> b!3937965 m!4505725))

(declare-fun m!4506147 () Bool)

(assert (=> b!3937966 m!4506147))

(declare-fun m!4506149 () Bool)

(assert (=> d!1168074 m!4506149))

(declare-fun m!4506151 () Bool)

(assert (=> d!1168074 m!4506151))

(assert (=> b!3937686 d!1168074))

(declare-fun d!1168098 () Bool)

(assert (=> d!1168098 (isPrefix!3625 lt!1377003 (++!10817 lt!1377003 (_2!23677 (v!39279 lt!1376994))))))

(declare-fun lt!1377130 () Unit!60327)

(declare-fun choose!23481 (List!41926 List!41926) Unit!60327)

(assert (=> d!1168098 (= lt!1377130 (choose!23481 lt!1377003 (_2!23677 (v!39279 lt!1376994))))))

(assert (=> d!1168098 (= (lemmaConcatTwoListThenFirstIsPrefix!2488 lt!1377003 (_2!23677 (v!39279 lt!1376994))) lt!1377130)))

(declare-fun bs!586539 () Bool)

(assert (= bs!586539 d!1168098))

(assert (=> bs!586539 m!4505753))

(assert (=> bs!586539 m!4505753))

(declare-fun m!4506153 () Bool)

(assert (=> bs!586539 m!4506153))

(declare-fun m!4506155 () Bool)

(assert (=> bs!586539 m!4506155))

(assert (=> b!3937686 d!1168098))

(declare-fun d!1168100 () Bool)

(assert (=> d!1168100 (= (_2!23677 (v!39279 lt!1376994)) lt!1376999)))

(declare-fun lt!1377133 () Unit!60327)

(declare-fun choose!23482 (List!41926 List!41926 List!41926 List!41926 List!41926) Unit!60327)

(assert (=> d!1168100 (= lt!1377133 (choose!23482 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 lt!1376999 lt!1376995))))

(assert (=> d!1168100 (isPrefix!3625 lt!1377003 lt!1376995)))

(assert (=> d!1168100 (= (lemmaSamePrefixThenSameSuffix!1846 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 lt!1376999 lt!1376995) lt!1377133)))

(declare-fun bs!586540 () Bool)

(assert (= bs!586540 d!1168100))

(declare-fun m!4506157 () Bool)

(assert (=> bs!586540 m!4506157))

(declare-fun m!4506159 () Bool)

(assert (=> bs!586540 m!4506159))

(assert (=> b!3937686 d!1168100))

(declare-fun lt!1377134 () List!41926)

(declare-fun b!3937971 () Bool)

(declare-fun e!2436366 () Bool)

(assert (=> b!3937971 (= e!2436366 (or (not (= lt!1376973 Nil!41802)) (= lt!1377134 lt!1377003)))))

(declare-fun b!3937970 () Bool)

(declare-fun res!1593618 () Bool)

(assert (=> b!3937970 (=> (not res!1593618) (not e!2436366))))

(assert (=> b!3937970 (= res!1593618 (= (size!31361 lt!1377134) (+ (size!31361 lt!1377003) (size!31361 lt!1376973))))))

(declare-fun b!3937969 () Bool)

(declare-fun e!2436365 () List!41926)

(assert (=> b!3937969 (= e!2436365 (Cons!41802 (h!47222 lt!1377003) (++!10817 (t!326505 lt!1377003) lt!1376973)))))

(declare-fun d!1168102 () Bool)

(assert (=> d!1168102 e!2436366))

(declare-fun res!1593617 () Bool)

(assert (=> d!1168102 (=> (not res!1593617) (not e!2436366))))

(assert (=> d!1168102 (= res!1593617 (= (content!6305 lt!1377134) ((_ map or) (content!6305 lt!1377003) (content!6305 lt!1376973))))))

(assert (=> d!1168102 (= lt!1377134 e!2436365)))

(declare-fun c!684256 () Bool)

(assert (=> d!1168102 (= c!684256 ((_ is Nil!41802) lt!1377003))))

(assert (=> d!1168102 (= (++!10817 lt!1377003 lt!1376973) lt!1377134)))

(declare-fun b!3937968 () Bool)

(assert (=> b!3937968 (= e!2436365 lt!1376973)))

(assert (= (and d!1168102 c!684256) b!3937968))

(assert (= (and d!1168102 (not c!684256)) b!3937969))

(assert (= (and d!1168102 res!1593617) b!3937970))

(assert (= (and b!3937970 res!1593618) b!3937971))

(declare-fun m!4506161 () Bool)

(assert (=> b!3937970 m!4506161))

(assert (=> b!3937970 m!4505743))

(declare-fun m!4506163 () Bool)

(assert (=> b!3937970 m!4506163))

(declare-fun m!4506165 () Bool)

(assert (=> b!3937969 m!4506165))

(declare-fun m!4506167 () Bool)

(assert (=> d!1168102 m!4506167))

(assert (=> d!1168102 m!4506087))

(declare-fun m!4506169 () Bool)

(assert (=> d!1168102 m!4506169))

(assert (=> b!3937687 d!1168102))

(declare-fun lt!1377135 () List!41926)

(declare-fun b!3937975 () Bool)

(declare-fun e!2436368 () Bool)

(assert (=> b!3937975 (= e!2436368 (or (not (= suffix!1176 Nil!41802)) (= lt!1377135 lt!1377016)))))

(declare-fun b!3937974 () Bool)

(declare-fun res!1593620 () Bool)

(assert (=> b!3937974 (=> (not res!1593620) (not e!2436368))))

(assert (=> b!3937974 (= res!1593620 (= (size!31361 lt!1377135) (+ (size!31361 lt!1377016) (size!31361 suffix!1176))))))

(declare-fun b!3937973 () Bool)

(declare-fun e!2436367 () List!41926)

(assert (=> b!3937973 (= e!2436367 (Cons!41802 (h!47222 lt!1377016) (++!10817 (t!326505 lt!1377016) suffix!1176)))))

(declare-fun d!1168104 () Bool)

(assert (=> d!1168104 e!2436368))

(declare-fun res!1593619 () Bool)

(assert (=> d!1168104 (=> (not res!1593619) (not e!2436368))))

(assert (=> d!1168104 (= res!1593619 (= (content!6305 lt!1377135) ((_ map or) (content!6305 lt!1377016) (content!6305 suffix!1176))))))

(assert (=> d!1168104 (= lt!1377135 e!2436367)))

(declare-fun c!684257 () Bool)

(assert (=> d!1168104 (= c!684257 ((_ is Nil!41802) lt!1377016))))

(assert (=> d!1168104 (= (++!10817 lt!1377016 suffix!1176) lt!1377135)))

(declare-fun b!3937972 () Bool)

(assert (=> b!3937972 (= e!2436367 suffix!1176)))

(assert (= (and d!1168104 c!684257) b!3937972))

(assert (= (and d!1168104 (not c!684257)) b!3937973))

(assert (= (and d!1168104 res!1593619) b!3937974))

(assert (= (and b!3937974 res!1593620) b!3937975))

(declare-fun m!4506171 () Bool)

(assert (=> b!3937974 m!4506171))

(declare-fun m!4506173 () Bool)

(assert (=> b!3937974 m!4506173))

(assert (=> b!3937974 m!4505723))

(declare-fun m!4506175 () Bool)

(assert (=> b!3937973 m!4506175))

(declare-fun m!4506177 () Bool)

(assert (=> d!1168104 m!4506177))

(declare-fun m!4506179 () Bool)

(assert (=> d!1168104 m!4506179))

(declare-fun m!4506181 () Bool)

(assert (=> d!1168104 m!4506181))

(assert (=> b!3937687 d!1168104))

(declare-fun d!1168106 () Bool)

(assert (=> d!1168106 (= (++!10817 (++!10817 lt!1377003 lt!1377016) suffix!1176) (++!10817 lt!1377003 (++!10817 lt!1377016 suffix!1176)))))

(declare-fun lt!1377138 () Unit!60327)

(declare-fun choose!23483 (List!41926 List!41926 List!41926) Unit!60327)

(assert (=> d!1168106 (= lt!1377138 (choose!23483 lt!1377003 lt!1377016 suffix!1176))))

(assert (=> d!1168106 (= (lemmaConcatAssociativity!2347 lt!1377003 lt!1377016 suffix!1176) lt!1377138)))

(declare-fun bs!586541 () Bool)

(assert (= bs!586541 d!1168106))

(assert (=> bs!586541 m!4505685))

(assert (=> bs!586541 m!4505685))

(declare-fun m!4506183 () Bool)

(assert (=> bs!586541 m!4506183))

(declare-fun m!4506185 () Bool)

(assert (=> bs!586541 m!4506185))

(assert (=> bs!586541 m!4505697))

(assert (=> bs!586541 m!4505697))

(declare-fun m!4506187 () Bool)

(assert (=> bs!586541 m!4506187))

(assert (=> b!3937687 d!1168106))

(declare-fun d!1168108 () Bool)

(assert (=> d!1168108 (= (head!8365 prefixTokens!80) (h!47223 prefixTokens!80))))

(assert (=> b!3937708 d!1168108))

(declare-fun d!1168110 () Bool)

(declare-fun lt!1377139 () Int)

(assert (=> d!1168110 (>= lt!1377139 0)))

(declare-fun e!2436369 () Int)

(assert (=> d!1168110 (= lt!1377139 e!2436369)))

(declare-fun c!684258 () Bool)

(assert (=> d!1168110 (= c!684258 ((_ is Nil!41802) suffix!1176))))

(assert (=> d!1168110 (= (size!31361 suffix!1176) lt!1377139)))

(declare-fun b!3937976 () Bool)

(assert (=> b!3937976 (= e!2436369 0)))

(declare-fun b!3937977 () Bool)

(assert (=> b!3937977 (= e!2436369 (+ 1 (size!31361 (t!326505 suffix!1176))))))

(assert (= (and d!1168110 c!684258) b!3937976))

(assert (= (and d!1168110 (not c!684258)) b!3937977))

(declare-fun m!4506189 () Bool)

(assert (=> b!3937977 m!4506189))

(assert (=> b!3937689 d!1168110))

(declare-fun d!1168112 () Bool)

(declare-fun lt!1377140 () Int)

(assert (=> d!1168112 (>= lt!1377140 0)))

(declare-fun e!2436370 () Int)

(assert (=> d!1168112 (= lt!1377140 e!2436370)))

(declare-fun c!684259 () Bool)

(assert (=> d!1168112 (= c!684259 ((_ is Nil!41802) (_2!23677 (v!39279 lt!1376994))))))

(assert (=> d!1168112 (= (size!31361 (_2!23677 (v!39279 lt!1376994))) lt!1377140)))

(declare-fun b!3937978 () Bool)

(assert (=> b!3937978 (= e!2436370 0)))

(declare-fun b!3937979 () Bool)

(assert (=> b!3937979 (= e!2436370 (+ 1 (size!31361 (t!326505 (_2!23677 (v!39279 lt!1376994))))))))

(assert (= (and d!1168112 c!684259) b!3937978))

(assert (= (and d!1168112 (not c!684259)) b!3937979))

(declare-fun m!4506191 () Bool)

(assert (=> b!3937979 m!4506191))

(assert (=> b!3937689 d!1168112))

(declare-fun d!1168114 () Bool)

(assert (=> d!1168114 (and (= lt!1377003 lt!1377003) (= (_2!23677 (v!39279 lt!1376994)) (_2!23677 lt!1377011)))))

(declare-fun lt!1377143 () Unit!60327)

(declare-fun choose!23484 (List!41926 List!41926 List!41926 List!41926) Unit!60327)

(assert (=> d!1168114 (= lt!1377143 (choose!23484 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 (_2!23677 lt!1377011)))))

(assert (=> d!1168114 (= (++!10817 lt!1377003 (_2!23677 (v!39279 lt!1376994))) (++!10817 lt!1377003 (_2!23677 lt!1377011)))))

(assert (=> d!1168114 (= (lemmaConcatSameAndSameSizesThenSameLists!578 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 (_2!23677 lt!1377011)) lt!1377143)))

(declare-fun bs!586542 () Bool)

(assert (= bs!586542 d!1168114))

(declare-fun m!4506193 () Bool)

(assert (=> bs!586542 m!4506193))

(assert (=> bs!586542 m!4505753))

(declare-fun m!4506195 () Bool)

(assert (=> bs!586542 m!4506195))

(assert (=> b!3937710 d!1168114))

(declare-fun d!1168116 () Bool)

(assert (=> d!1168116 (not (= (lexList!1887 thiss!20629 rules!2768 (_2!23677 lt!1377011)) (tuple2!41089 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1377161 () Unit!60327)

(declare-fun choose!23485 (LexerInterface!6119 List!41928 List!41926 List!41926 List!41927 List!41926) Unit!60327)

(assert (=> d!1168116 (= lt!1377161 (choose!23485 thiss!20629 rules!2768 suffix!1176 (_2!23677 lt!1377011) suffixTokens!72 suffixResult!91))))

(assert (=> d!1168116 (not (isEmpty!24930 rules!2768))))

(assert (=> d!1168116 (= (lemmaLexWithSmallerInputCannotProduceSameResults!130 thiss!20629 rules!2768 suffix!1176 (_2!23677 lt!1377011) suffixTokens!72 suffixResult!91) lt!1377161)))

(declare-fun bs!586543 () Bool)

(assert (= bs!586543 d!1168116))

(assert (=> bs!586543 m!4505765))

(declare-fun m!4506227 () Bool)

(assert (=> bs!586543 m!4506227))

(assert (=> bs!586543 m!4505673))

(assert (=> b!3937710 d!1168116))

(declare-fun d!1168118 () Bool)

(declare-fun res!1593652 () Bool)

(declare-fun e!2436387 () Bool)

(assert (=> d!1168118 (=> (not res!1593652) (not e!2436387))))

(assert (=> d!1168118 (= res!1593652 (not (isEmpty!24931 (originalCharacters!7130 (h!47223 suffixTokens!72)))))))

(assert (=> d!1168118 (= (inv!56003 (h!47223 suffixTokens!72)) e!2436387)))

(declare-fun b!3938019 () Bool)

(declare-fun res!1593653 () Bool)

(assert (=> b!3938019 (=> (not res!1593653) (not e!2436387))))

(assert (=> b!3938019 (= res!1593653 (= (originalCharacters!7130 (h!47223 suffixTokens!72)) (list!15532 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (value!206739 (h!47223 suffixTokens!72))))))))

(declare-fun b!3938020 () Bool)

(assert (=> b!3938020 (= e!2436387 (= (size!31360 (h!47223 suffixTokens!72)) (size!31361 (originalCharacters!7130 (h!47223 suffixTokens!72)))))))

(assert (= (and d!1168118 res!1593652) b!3938019))

(assert (= (and b!3938019 res!1593653) b!3938020))

(declare-fun b_lambda!115173 () Bool)

(assert (=> (not b_lambda!115173) (not b!3938019)))

(declare-fun t!326527 () Bool)

(declare-fun tb!235871 () Bool)

(assert (=> (and b!3937685 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72))))) t!326527) tb!235871))

(declare-fun b!3938021 () Bool)

(declare-fun e!2436388 () Bool)

(declare-fun tp!1198227 () Bool)

(assert (=> b!3938021 (= e!2436388 (and (inv!56005 (c!684205 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (value!206739 (h!47223 suffixTokens!72))))) tp!1198227))))

(declare-fun result!285726 () Bool)

(assert (=> tb!235871 (= result!285726 (and (inv!56006 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (value!206739 (h!47223 suffixTokens!72)))) e!2436388))))

(assert (= tb!235871 b!3938021))

(declare-fun m!4506249 () Bool)

(assert (=> b!3938021 m!4506249))

(declare-fun m!4506251 () Bool)

(assert (=> tb!235871 m!4506251))

(assert (=> b!3938019 t!326527))

(declare-fun b_and!300773 () Bool)

(assert (= b_and!300755 (and (=> t!326527 result!285726) b_and!300773)))

(declare-fun tb!235873 () Bool)

(declare-fun t!326529 () Bool)

(assert (=> (and b!3937699 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72))))) t!326529) tb!235873))

(declare-fun result!285728 () Bool)

(assert (= result!285728 result!285726))

(assert (=> b!3938019 t!326529))

(declare-fun b_and!300775 () Bool)

(assert (= b_and!300757 (and (=> t!326529 result!285728) b_and!300775)))

(declare-fun t!326533 () Bool)

(declare-fun tb!235877 () Bool)

(assert (=> (and b!3937716 (= (toChars!8849 (transformation!6530 (h!47224 rules!2768))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72))))) t!326533) tb!235877))

(declare-fun result!285732 () Bool)

(assert (= result!285732 result!285726))

(assert (=> b!3938019 t!326533))

(declare-fun b_and!300777 () Bool)

(assert (= b_and!300759 (and (=> t!326533 result!285732) b_and!300777)))

(declare-fun m!4506253 () Bool)

(assert (=> d!1168118 m!4506253))

(declare-fun m!4506255 () Bool)

(assert (=> b!3938019 m!4506255))

(assert (=> b!3938019 m!4506255))

(declare-fun m!4506257 () Bool)

(assert (=> b!3938019 m!4506257))

(declare-fun m!4506261 () Bool)

(assert (=> b!3938020 m!4506261))

(assert (=> b!3937669 d!1168118))

(declare-fun b!3938023 () Bool)

(declare-fun e!2436390 () Bool)

(declare-fun e!2436392 () Bool)

(assert (=> b!3938023 (= e!2436390 e!2436392)))

(declare-fun res!1593657 () Bool)

(assert (=> b!3938023 (=> (not res!1593657) (not e!2436392))))

(assert (=> b!3938023 (= res!1593657 (not ((_ is Nil!41802) (_2!23677 (v!39279 lt!1376994)))))))

(declare-fun b!3938024 () Bool)

(declare-fun res!1593656 () Bool)

(assert (=> b!3938024 (=> (not res!1593656) (not e!2436392))))

(assert (=> b!3938024 (= res!1593656 (= (head!8367 lt!1377016) (head!8367 (_2!23677 (v!39279 lt!1376994)))))))

(declare-fun d!1168126 () Bool)

(declare-fun e!2436391 () Bool)

(assert (=> d!1168126 e!2436391))

(declare-fun res!1593654 () Bool)

(assert (=> d!1168126 (=> res!1593654 e!2436391)))

(declare-fun lt!1377167 () Bool)

(assert (=> d!1168126 (= res!1593654 (not lt!1377167))))

(assert (=> d!1168126 (= lt!1377167 e!2436390)))

(declare-fun res!1593655 () Bool)

(assert (=> d!1168126 (=> res!1593655 e!2436390)))

(assert (=> d!1168126 (= res!1593655 ((_ is Nil!41802) lt!1377016))))

(assert (=> d!1168126 (= (isPrefix!3625 lt!1377016 (_2!23677 (v!39279 lt!1376994))) lt!1377167)))

(declare-fun b!3938026 () Bool)

(assert (=> b!3938026 (= e!2436391 (>= (size!31361 (_2!23677 (v!39279 lt!1376994))) (size!31361 lt!1377016)))))

(declare-fun b!3938025 () Bool)

(assert (=> b!3938025 (= e!2436392 (isPrefix!3625 (tail!6093 lt!1377016) (tail!6093 (_2!23677 (v!39279 lt!1376994)))))))

(assert (= (and d!1168126 (not res!1593655)) b!3938023))

(assert (= (and b!3938023 res!1593657) b!3938024))

(assert (= (and b!3938024 res!1593656) b!3938025))

(assert (= (and d!1168126 (not res!1593654)) b!3938026))

(declare-fun m!4506269 () Bool)

(assert (=> b!3938024 m!4506269))

(declare-fun m!4506273 () Bool)

(assert (=> b!3938024 m!4506273))

(assert (=> b!3938026 m!4505725))

(assert (=> b!3938026 m!4506173))

(declare-fun m!4506275 () Bool)

(assert (=> b!3938025 m!4506275))

(declare-fun m!4506277 () Bool)

(assert (=> b!3938025 m!4506277))

(assert (=> b!3938025 m!4506275))

(assert (=> b!3938025 m!4506277))

(declare-fun m!4506279 () Bool)

(assert (=> b!3938025 m!4506279))

(assert (=> b!3937711 d!1168126))

(declare-fun b!3938029 () Bool)

(declare-fun e!2436395 () Bool)

(declare-fun lt!1377170 () tuple2!41088)

(assert (=> b!3938029 (= e!2436395 (= (_2!23678 lt!1377170) (_2!23677 lt!1377011)))))

(declare-fun b!3938030 () Bool)

(declare-fun e!2436394 () Bool)

(assert (=> b!3938030 (= e!2436394 (not (isEmpty!24932 (_1!23678 lt!1377170))))))

(declare-fun b!3938031 () Bool)

(assert (=> b!3938031 (= e!2436395 e!2436394)))

(declare-fun res!1593658 () Bool)

(assert (=> b!3938031 (= res!1593658 (< (size!31361 (_2!23678 lt!1377170)) (size!31361 (_2!23677 lt!1377011))))))

(assert (=> b!3938031 (=> (not res!1593658) (not e!2436394))))

(declare-fun b!3938032 () Bool)

(declare-fun e!2436396 () tuple2!41088)

(declare-fun lt!1377169 () Option!8950)

(declare-fun lt!1377171 () tuple2!41088)

(assert (=> b!3938032 (= e!2436396 (tuple2!41089 (Cons!41803 (_1!23677 (v!39279 lt!1377169)) (_1!23678 lt!1377171)) (_2!23678 lt!1377171)))))

(assert (=> b!3938032 (= lt!1377171 (lexList!1887 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1377169))))))

(declare-fun d!1168132 () Bool)

(assert (=> d!1168132 e!2436395))

(declare-fun c!684265 () Bool)

(assert (=> d!1168132 (= c!684265 (> (size!31365 (_1!23678 lt!1377170)) 0))))

(assert (=> d!1168132 (= lt!1377170 e!2436396)))

(declare-fun c!684266 () Bool)

(assert (=> d!1168132 (= c!684266 ((_ is Some!8949) lt!1377169))))

(assert (=> d!1168132 (= lt!1377169 (maxPrefix!3423 thiss!20629 rules!2768 (_2!23677 lt!1377011)))))

(assert (=> d!1168132 (= (lexList!1887 thiss!20629 rules!2768 (_2!23677 lt!1377011)) lt!1377170)))

(declare-fun b!3938033 () Bool)

(assert (=> b!3938033 (= e!2436396 (tuple2!41089 Nil!41803 (_2!23677 lt!1377011)))))

(assert (= (and d!1168132 c!684266) b!3938032))

(assert (= (and d!1168132 (not c!684266)) b!3938033))

(assert (= (and d!1168132 c!684265) b!3938031))

(assert (= (and d!1168132 (not c!684265)) b!3938029))

(assert (= (and b!3938031 res!1593658) b!3938030))

(declare-fun m!4506281 () Bool)

(assert (=> b!3938030 m!4506281))

(declare-fun m!4506283 () Bool)

(assert (=> b!3938031 m!4506283))

(assert (=> b!3938031 m!4505801))

(declare-fun m!4506285 () Bool)

(assert (=> b!3938032 m!4506285))

(declare-fun m!4506287 () Bool)

(assert (=> d!1168132 m!4506287))

(declare-fun m!4506289 () Bool)

(assert (=> d!1168132 m!4506289))

(assert (=> bm!285013 d!1168132))

(declare-fun d!1168134 () Bool)

(assert (=> d!1168134 (isPrefix!3625 prefix!426 (++!10817 prefix!426 suffix!1176))))

(declare-fun lt!1377172 () Unit!60327)

(assert (=> d!1168134 (= lt!1377172 (choose!23481 prefix!426 suffix!1176))))

(assert (=> d!1168134 (= (lemmaConcatTwoListThenFirstIsPrefix!2488 prefix!426 suffix!1176) lt!1377172)))

(declare-fun bs!586544 () Bool)

(assert (= bs!586544 d!1168134))

(assert (=> bs!586544 m!4505813))

(assert (=> bs!586544 m!4505813))

(declare-fun m!4506291 () Bool)

(assert (=> bs!586544 m!4506291))

(declare-fun m!4506293 () Bool)

(assert (=> bs!586544 m!4506293))

(assert (=> b!3937712 d!1168134))

(declare-fun b!3938036 () Bool)

(declare-fun e!2436399 () Bool)

(declare-fun e!2436401 () Bool)

(assert (=> b!3938036 (= e!2436399 e!2436401)))

(declare-fun res!1593662 () Bool)

(assert (=> b!3938036 (=> (not res!1593662) (not e!2436401))))

(assert (=> b!3938036 (= res!1593662 (not ((_ is Nil!41802) lt!1376995)))))

(declare-fun b!3938037 () Bool)

(declare-fun res!1593661 () Bool)

(assert (=> b!3938037 (=> (not res!1593661) (not e!2436401))))

(assert (=> b!3938037 (= res!1593661 (= (head!8367 prefix!426) (head!8367 lt!1376995)))))

(declare-fun d!1168136 () Bool)

(declare-fun e!2436400 () Bool)

(assert (=> d!1168136 e!2436400))

(declare-fun res!1593659 () Bool)

(assert (=> d!1168136 (=> res!1593659 e!2436400)))

(declare-fun lt!1377173 () Bool)

(assert (=> d!1168136 (= res!1593659 (not lt!1377173))))

(assert (=> d!1168136 (= lt!1377173 e!2436399)))

(declare-fun res!1593660 () Bool)

(assert (=> d!1168136 (=> res!1593660 e!2436399)))

(assert (=> d!1168136 (= res!1593660 ((_ is Nil!41802) prefix!426))))

(assert (=> d!1168136 (= (isPrefix!3625 prefix!426 lt!1376995) lt!1377173)))

(declare-fun b!3938039 () Bool)

(assert (=> b!3938039 (= e!2436400 (>= (size!31361 lt!1376995) (size!31361 prefix!426)))))

(declare-fun b!3938038 () Bool)

(assert (=> b!3938038 (= e!2436401 (isPrefix!3625 (tail!6093 prefix!426) (tail!6093 lt!1376995)))))

(assert (= (and d!1168136 (not res!1593660)) b!3938036))

(assert (= (and b!3938036 res!1593662) b!3938037))

(assert (= (and b!3938037 res!1593661) b!3938038))

(assert (= (and d!1168136 (not res!1593659)) b!3938039))

(declare-fun m!4506297 () Bool)

(assert (=> b!3938037 m!4506297))

(declare-fun m!4506299 () Bool)

(assert (=> b!3938037 m!4506299))

(assert (=> b!3938039 m!4505805))

(assert (=> b!3938039 m!4505821))

(declare-fun m!4506301 () Bool)

(assert (=> b!3938038 m!4506301))

(assert (=> b!3938038 m!4506019))

(assert (=> b!3938038 m!4506301))

(assert (=> b!3938038 m!4506019))

(declare-fun m!4506303 () Bool)

(assert (=> b!3938038 m!4506303))

(assert (=> b!3937712 d!1168136))

(declare-fun d!1168138 () Bool)

(assert (=> d!1168138 (= lt!1377003 prefix!426)))

(declare-fun lt!1377180 () Unit!60327)

(declare-fun choose!23486 (List!41926 List!41926 List!41926) Unit!60327)

(assert (=> d!1168138 (= lt!1377180 (choose!23486 lt!1377003 prefix!426 lt!1376995))))

(assert (=> d!1168138 (isPrefix!3625 lt!1377003 lt!1376995)))

(assert (=> d!1168138 (= (lemmaIsPrefixSameLengthThenSameList!821 lt!1377003 prefix!426 lt!1376995) lt!1377180)))

(declare-fun bs!586547 () Bool)

(assert (= bs!586547 d!1168138))

(declare-fun m!4506311 () Bool)

(assert (=> bs!586547 m!4506311))

(assert (=> bs!586547 m!4506159))

(assert (=> b!3937712 d!1168138))

(declare-fun d!1168146 () Bool)

(assert (=> d!1168146 (= (_2!23677 (v!39279 lt!1376994)) suffix!1176)))

(declare-fun lt!1377181 () Unit!60327)

(assert (=> d!1168146 (= lt!1377181 (choose!23482 lt!1377003 (_2!23677 (v!39279 lt!1376994)) prefix!426 suffix!1176 lt!1376995))))

(assert (=> d!1168146 (isPrefix!3625 lt!1377003 lt!1376995)))

(assert (=> d!1168146 (= (lemmaSamePrefixThenSameSuffix!1846 lt!1377003 (_2!23677 (v!39279 lt!1376994)) prefix!426 suffix!1176 lt!1376995) lt!1377181)))

(declare-fun bs!586548 () Bool)

(assert (= bs!586548 d!1168146))

(declare-fun m!4506313 () Bool)

(assert (=> bs!586548 m!4506313))

(assert (=> bs!586548 m!4506159))

(assert (=> b!3937712 d!1168146))

(declare-fun d!1168148 () Bool)

(declare-fun e!2436413 () Bool)

(assert (=> d!1168148 e!2436413))

(declare-fun res!1593668 () Bool)

(assert (=> d!1168148 (=> (not res!1593668) (not e!2436413))))

(declare-fun lt!1377189 () List!41927)

(declare-fun content!6307 (List!41927) (InoxSet Token!12198))

(assert (=> d!1168148 (= res!1593668 (= (content!6307 lt!1377189) ((_ map or) (content!6307 lt!1377005) (content!6307 suffixTokens!72))))))

(declare-fun e!2436412 () List!41927)

(assert (=> d!1168148 (= lt!1377189 e!2436412)))

(declare-fun c!684273 () Bool)

(assert (=> d!1168148 (= c!684273 ((_ is Nil!41803) lt!1377005))))

(assert (=> d!1168148 (= (++!10818 lt!1377005 suffixTokens!72) lt!1377189)))

(declare-fun b!3938057 () Bool)

(assert (=> b!3938057 (= e!2436412 suffixTokens!72)))

(declare-fun b!3938058 () Bool)

(assert (=> b!3938058 (= e!2436412 (Cons!41803 (h!47223 lt!1377005) (++!10818 (t!326506 lt!1377005) suffixTokens!72)))))

(declare-fun b!3938060 () Bool)

(assert (=> b!3938060 (= e!2436413 (or (not (= suffixTokens!72 Nil!41803)) (= lt!1377189 lt!1377005)))))

(declare-fun b!3938059 () Bool)

(declare-fun res!1593669 () Bool)

(assert (=> b!3938059 (=> (not res!1593669) (not e!2436413))))

(assert (=> b!3938059 (= res!1593669 (= (size!31365 lt!1377189) (+ (size!31365 lt!1377005) (size!31365 suffixTokens!72))))))

(assert (= (and d!1168148 c!684273) b!3938057))

(assert (= (and d!1168148 (not c!684273)) b!3938058))

(assert (= (and d!1168148 res!1593668) b!3938059))

(assert (= (and b!3938059 res!1593669) b!3938060))

(declare-fun m!4506329 () Bool)

(assert (=> d!1168148 m!4506329))

(declare-fun m!4506331 () Bool)

(assert (=> d!1168148 m!4506331))

(declare-fun m!4506333 () Bool)

(assert (=> d!1168148 m!4506333))

(declare-fun m!4506335 () Bool)

(assert (=> b!3938058 m!4506335))

(declare-fun m!4506337 () Bool)

(assert (=> b!3938059 m!4506337))

(declare-fun m!4506339 () Bool)

(assert (=> b!3938059 m!4506339))

(declare-fun m!4506341 () Bool)

(assert (=> b!3938059 m!4506341))

(assert (=> b!3937691 d!1168148))

(declare-fun d!1168154 () Bool)

(assert (=> d!1168154 (= (tail!6091 prefixTokens!80) (t!326506 prefixTokens!80))))

(assert (=> b!3937691 d!1168154))

(declare-fun b!3938063 () Bool)

(declare-fun e!2436415 () Bool)

(declare-fun e!2436417 () Bool)

(assert (=> b!3938063 (= e!2436415 e!2436417)))

(declare-fun res!1593673 () Bool)

(assert (=> b!3938063 (=> (not res!1593673) (not e!2436417))))

(assert (=> b!3938063 (= res!1593673 (not ((_ is Nil!41802) lt!1376973)))))

(declare-fun b!3938064 () Bool)

(declare-fun res!1593672 () Bool)

(assert (=> b!3938064 (=> (not res!1593672) (not e!2436417))))

(assert (=> b!3938064 (= res!1593672 (= (head!8367 lt!1377016) (head!8367 lt!1376973)))))

(declare-fun d!1168156 () Bool)

(declare-fun e!2436416 () Bool)

(assert (=> d!1168156 e!2436416))

(declare-fun res!1593670 () Bool)

(assert (=> d!1168156 (=> res!1593670 e!2436416)))

(declare-fun lt!1377191 () Bool)

(assert (=> d!1168156 (= res!1593670 (not lt!1377191))))

(assert (=> d!1168156 (= lt!1377191 e!2436415)))

(declare-fun res!1593671 () Bool)

(assert (=> d!1168156 (=> res!1593671 e!2436415)))

(assert (=> d!1168156 (= res!1593671 ((_ is Nil!41802) lt!1377016))))

(assert (=> d!1168156 (= (isPrefix!3625 lt!1377016 lt!1376973) lt!1377191)))

(declare-fun b!3938066 () Bool)

(assert (=> b!3938066 (= e!2436416 (>= (size!31361 lt!1376973) (size!31361 lt!1377016)))))

(declare-fun b!3938065 () Bool)

(assert (=> b!3938065 (= e!2436417 (isPrefix!3625 (tail!6093 lt!1377016) (tail!6093 lt!1376973)))))

(assert (= (and d!1168156 (not res!1593671)) b!3938063))

(assert (= (and b!3938063 res!1593673) b!3938064))

(assert (= (and b!3938064 res!1593672) b!3938065))

(assert (= (and d!1168156 (not res!1593670)) b!3938066))

(assert (=> b!3938064 m!4506269))

(declare-fun m!4506347 () Bool)

(assert (=> b!3938064 m!4506347))

(assert (=> b!3938066 m!4506163))

(assert (=> b!3938066 m!4506173))

(assert (=> b!3938065 m!4506275))

(declare-fun m!4506349 () Bool)

(assert (=> b!3938065 m!4506349))

(assert (=> b!3938065 m!4506275))

(assert (=> b!3938065 m!4506349))

(declare-fun m!4506351 () Bool)

(assert (=> b!3938065 m!4506351))

(assert (=> b!3937691 d!1168156))

(declare-fun d!1168160 () Bool)

(assert (=> d!1168160 (isPrefix!3625 lt!1377016 (++!10817 lt!1377016 suffix!1176))))

(declare-fun lt!1377192 () Unit!60327)

(assert (=> d!1168160 (= lt!1377192 (choose!23481 lt!1377016 suffix!1176))))

(assert (=> d!1168160 (= (lemmaConcatTwoListThenFirstIsPrefix!2488 lt!1377016 suffix!1176) lt!1377192)))

(declare-fun bs!586550 () Bool)

(assert (= bs!586550 d!1168160))

(assert (=> bs!586550 m!4505685))

(assert (=> bs!586550 m!4505685))

(declare-fun m!4506353 () Bool)

(assert (=> bs!586550 m!4506353))

(declare-fun m!4506355 () Bool)

(assert (=> bs!586550 m!4506355))

(assert (=> b!3937691 d!1168160))

(declare-fun d!1168162 () Bool)

(declare-fun res!1593674 () Bool)

(declare-fun e!2436418 () Bool)

(assert (=> d!1168162 (=> (not res!1593674) (not e!2436418))))

(assert (=> d!1168162 (= res!1593674 (not (isEmpty!24931 (originalCharacters!7130 (h!47223 prefixTokens!80)))))))

(assert (=> d!1168162 (= (inv!56003 (h!47223 prefixTokens!80)) e!2436418)))

(declare-fun b!3938067 () Bool)

(declare-fun res!1593675 () Bool)

(assert (=> b!3938067 (=> (not res!1593675) (not e!2436418))))

(assert (=> b!3938067 (= res!1593675 (= (originalCharacters!7130 (h!47223 prefixTokens!80)) (list!15532 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (value!206739 (h!47223 prefixTokens!80))))))))

(declare-fun b!3938068 () Bool)

(assert (=> b!3938068 (= e!2436418 (= (size!31360 (h!47223 prefixTokens!80)) (size!31361 (originalCharacters!7130 (h!47223 prefixTokens!80)))))))

(assert (= (and d!1168162 res!1593674) b!3938067))

(assert (= (and b!3938067 res!1593675) b!3938068))

(declare-fun b_lambda!115179 () Bool)

(assert (=> (not b_lambda!115179) (not b!3938067)))

(declare-fun tb!235889 () Bool)

(declare-fun t!326545 () Bool)

(assert (=> (and b!3937685 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80))))) t!326545) tb!235889))

(declare-fun b!3938069 () Bool)

(declare-fun e!2436419 () Bool)

(declare-fun tp!1198229 () Bool)

(assert (=> b!3938069 (= e!2436419 (and (inv!56005 (c!684205 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (value!206739 (h!47223 prefixTokens!80))))) tp!1198229))))

(declare-fun result!285746 () Bool)

(assert (=> tb!235889 (= result!285746 (and (inv!56006 (dynLambda!17907 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (value!206739 (h!47223 prefixTokens!80)))) e!2436419))))

(assert (= tb!235889 b!3938069))

(declare-fun m!4506357 () Bool)

(assert (=> b!3938069 m!4506357))

(declare-fun m!4506359 () Bool)

(assert (=> tb!235889 m!4506359))

(assert (=> b!3938067 t!326545))

(declare-fun b_and!300791 () Bool)

(assert (= b_and!300773 (and (=> t!326545 result!285746) b_and!300791)))

(declare-fun t!326547 () Bool)

(declare-fun tb!235891 () Bool)

(assert (=> (and b!3937699 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80))))) t!326547) tb!235891))

(declare-fun result!285748 () Bool)

(assert (= result!285748 result!285746))

(assert (=> b!3938067 t!326547))

(declare-fun b_and!300793 () Bool)

(assert (= b_and!300775 (and (=> t!326547 result!285748) b_and!300793)))

(declare-fun tb!235893 () Bool)

(declare-fun t!326549 () Bool)

(assert (=> (and b!3937716 (= (toChars!8849 (transformation!6530 (h!47224 rules!2768))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80))))) t!326549) tb!235893))

(declare-fun result!285750 () Bool)

(assert (= result!285750 result!285746))

(assert (=> b!3938067 t!326549))

(declare-fun b_and!300795 () Bool)

(assert (= b_and!300777 (and (=> t!326549 result!285750) b_and!300795)))

(declare-fun m!4506361 () Bool)

(assert (=> d!1168162 m!4506361))

(declare-fun m!4506363 () Bool)

(assert (=> b!3938067 m!4506363))

(assert (=> b!3938067 m!4506363))

(declare-fun m!4506365 () Bool)

(assert (=> b!3938067 m!4506365))

(declare-fun m!4506367 () Bool)

(assert (=> b!3938068 m!4506367))

(assert (=> b!3937671 d!1168162))

(declare-fun b!3938080 () Bool)

(declare-fun e!2436426 () Bool)

(declare-fun inv!15 (TokenValue!6760) Bool)

(assert (=> b!3938080 (= e!2436426 (inv!15 (value!206739 (h!47223 suffixTokens!72))))))

(declare-fun b!3938081 () Bool)

(declare-fun res!1593678 () Bool)

(assert (=> b!3938081 (=> res!1593678 e!2436426)))

(assert (=> b!3938081 (= res!1593678 (not ((_ is IntegerValue!20282) (value!206739 (h!47223 suffixTokens!72)))))))

(declare-fun e!2436428 () Bool)

(assert (=> b!3938081 (= e!2436428 e!2436426)))

(declare-fun d!1168164 () Bool)

(declare-fun c!684280 () Bool)

(assert (=> d!1168164 (= c!684280 ((_ is IntegerValue!20280) (value!206739 (h!47223 suffixTokens!72))))))

(declare-fun e!2436427 () Bool)

(assert (=> d!1168164 (= (inv!21 (value!206739 (h!47223 suffixTokens!72))) e!2436427)))

(declare-fun b!3938082 () Bool)

(declare-fun inv!17 (TokenValue!6760) Bool)

(assert (=> b!3938082 (= e!2436428 (inv!17 (value!206739 (h!47223 suffixTokens!72))))))

(declare-fun b!3938083 () Bool)

(declare-fun inv!16 (TokenValue!6760) Bool)

(assert (=> b!3938083 (= e!2436427 (inv!16 (value!206739 (h!47223 suffixTokens!72))))))

(declare-fun b!3938084 () Bool)

(assert (=> b!3938084 (= e!2436427 e!2436428)))

(declare-fun c!684279 () Bool)

(assert (=> b!3938084 (= c!684279 ((_ is IntegerValue!20281) (value!206739 (h!47223 suffixTokens!72))))))

(assert (= (and d!1168164 c!684280) b!3938083))

(assert (= (and d!1168164 (not c!684280)) b!3938084))

(assert (= (and b!3938084 c!684279) b!3938082))

(assert (= (and b!3938084 (not c!684279)) b!3938081))

(assert (= (and b!3938081 (not res!1593678)) b!3938080))

(declare-fun m!4506377 () Bool)

(assert (=> b!3938080 m!4506377))

(declare-fun m!4506379 () Bool)

(assert (=> b!3938082 m!4506379))

(declare-fun m!4506381 () Bool)

(assert (=> b!3938083 m!4506381))

(assert (=> b!3937713 d!1168164))

(declare-fun d!1168172 () Bool)

(declare-fun lt!1377196 () Int)

(assert (=> d!1168172 (>= lt!1377196 0)))

(declare-fun e!2436429 () Int)

(assert (=> d!1168172 (= lt!1377196 e!2436429)))

(declare-fun c!684281 () Bool)

(assert (=> d!1168172 (= c!684281 ((_ is Nil!41802) (originalCharacters!7130 (_1!23677 (v!39279 lt!1376994)))))))

(assert (=> d!1168172 (= (size!31361 (originalCharacters!7130 (_1!23677 (v!39279 lt!1376994)))) lt!1377196)))

(declare-fun b!3938085 () Bool)

(assert (=> b!3938085 (= e!2436429 0)))

(declare-fun b!3938086 () Bool)

(assert (=> b!3938086 (= e!2436429 (+ 1 (size!31361 (t!326505 (originalCharacters!7130 (_1!23677 (v!39279 lt!1376994)))))))))

(assert (= (and d!1168172 c!684281) b!3938085))

(assert (= (and d!1168172 (not c!684281)) b!3938086))

(declare-fun m!4506383 () Bool)

(assert (=> b!3938086 m!4506383))

(assert (=> b!3937692 d!1168172))

(declare-fun d!1168174 () Bool)

(assert (=> d!1168174 (= (isEmpty!24930 rules!2768) ((_ is Nil!41804) rules!2768))))

(assert (=> b!3937672 d!1168174))

(declare-fun d!1168176 () Bool)

(declare-fun e!2436433 () Bool)

(assert (=> d!1168176 e!2436433))

(declare-fun res!1593683 () Bool)

(assert (=> d!1168176 (=> (not res!1593683) (not e!2436433))))

(declare-fun lt!1377197 () List!41927)

(assert (=> d!1168176 (= res!1593683 (= (content!6307 lt!1377197) ((_ map or) (content!6307 lt!1376968) (content!6307 lt!1377005))))))

(declare-fun e!2436432 () List!41927)

(assert (=> d!1168176 (= lt!1377197 e!2436432)))

(declare-fun c!684282 () Bool)

(assert (=> d!1168176 (= c!684282 ((_ is Nil!41803) lt!1376968))))

(assert (=> d!1168176 (= (++!10818 lt!1376968 lt!1377005) lt!1377197)))

(declare-fun b!3938091 () Bool)

(assert (=> b!3938091 (= e!2436432 lt!1377005)))

(declare-fun b!3938092 () Bool)

(assert (=> b!3938092 (= e!2436432 (Cons!41803 (h!47223 lt!1376968) (++!10818 (t!326506 lt!1376968) lt!1377005)))))

(declare-fun b!3938094 () Bool)

(assert (=> b!3938094 (= e!2436433 (or (not (= lt!1377005 Nil!41803)) (= lt!1377197 lt!1376968)))))

(declare-fun b!3938093 () Bool)

(declare-fun res!1593684 () Bool)

(assert (=> b!3938093 (=> (not res!1593684) (not e!2436433))))

(assert (=> b!3938093 (= res!1593684 (= (size!31365 lt!1377197) (+ (size!31365 lt!1376968) (size!31365 lt!1377005))))))

(assert (= (and d!1168176 c!684282) b!3938091))

(assert (= (and d!1168176 (not c!684282)) b!3938092))

(assert (= (and d!1168176 res!1593683) b!3938093))

(assert (= (and b!3938093 res!1593684) b!3938094))

(declare-fun m!4506385 () Bool)

(assert (=> d!1168176 m!4506385))

(declare-fun m!4506387 () Bool)

(assert (=> d!1168176 m!4506387))

(assert (=> d!1168176 m!4506331))

(declare-fun m!4506389 () Bool)

(assert (=> b!3938092 m!4506389))

(declare-fun m!4506391 () Bool)

(assert (=> b!3938093 m!4506391))

(declare-fun m!4506393 () Bool)

(assert (=> b!3938093 m!4506393))

(assert (=> b!3938093 m!4506339))

(assert (=> b!3937714 d!1168176))

(declare-fun d!1168178 () Bool)

(assert (=> d!1168178 (= (++!10818 (++!10818 lt!1376968 lt!1377005) suffixTokens!72) (++!10818 lt!1376968 (++!10818 lt!1377005 suffixTokens!72)))))

(declare-fun lt!1377200 () Unit!60327)

(declare-fun choose!23489 (List!41927 List!41927 List!41927) Unit!60327)

(assert (=> d!1168178 (= lt!1377200 (choose!23489 lt!1376968 lt!1377005 suffixTokens!72))))

(assert (=> d!1168178 (= (lemmaConcatAssociativity!2348 lt!1376968 lt!1377005 suffixTokens!72) lt!1377200)))

(declare-fun bs!586554 () Bool)

(assert (= bs!586554 d!1168178))

(declare-fun m!4506417 () Bool)

(assert (=> bs!586554 m!4506417))

(assert (=> bs!586554 m!4505767))

(declare-fun m!4506419 () Bool)

(assert (=> bs!586554 m!4506419))

(assert (=> bs!586554 m!4505767))

(assert (=> bs!586554 m!4505715))

(assert (=> bs!586554 m!4505715))

(assert (=> bs!586554 m!4505719))

(assert (=> b!3937714 d!1168178))

(declare-fun d!1168186 () Bool)

(declare-fun e!2436443 () Bool)

(assert (=> d!1168186 e!2436443))

(declare-fun res!1593692 () Bool)

(assert (=> d!1168186 (=> (not res!1593692) (not e!2436443))))

(declare-fun lt!1377202 () List!41927)

(assert (=> d!1168186 (= res!1593692 (= (content!6307 lt!1377202) ((_ map or) (content!6307 (++!10818 lt!1376968 lt!1377005)) (content!6307 suffixTokens!72))))))

(declare-fun e!2436442 () List!41927)

(assert (=> d!1168186 (= lt!1377202 e!2436442)))

(declare-fun c!684286 () Bool)

(assert (=> d!1168186 (= c!684286 ((_ is Nil!41803) (++!10818 lt!1376968 lt!1377005)))))

(assert (=> d!1168186 (= (++!10818 (++!10818 lt!1376968 lt!1377005) suffixTokens!72) lt!1377202)))

(declare-fun b!3938109 () Bool)

(assert (=> b!3938109 (= e!2436442 suffixTokens!72)))

(declare-fun b!3938110 () Bool)

(assert (=> b!3938110 (= e!2436442 (Cons!41803 (h!47223 (++!10818 lt!1376968 lt!1377005)) (++!10818 (t!326506 (++!10818 lt!1376968 lt!1377005)) suffixTokens!72)))))

(declare-fun b!3938112 () Bool)

(assert (=> b!3938112 (= e!2436443 (or (not (= suffixTokens!72 Nil!41803)) (= lt!1377202 (++!10818 lt!1376968 lt!1377005))))))

(declare-fun b!3938111 () Bool)

(declare-fun res!1593693 () Bool)

(assert (=> b!3938111 (=> (not res!1593693) (not e!2436443))))

(assert (=> b!3938111 (= res!1593693 (= (size!31365 lt!1377202) (+ (size!31365 (++!10818 lt!1376968 lt!1377005)) (size!31365 suffixTokens!72))))))

(assert (= (and d!1168186 c!684286) b!3938109))

(assert (= (and d!1168186 (not c!684286)) b!3938110))

(assert (= (and d!1168186 res!1593692) b!3938111))

(assert (= (and b!3938111 res!1593693) b!3938112))

(declare-fun m!4506433 () Bool)

(assert (=> d!1168186 m!4506433))

(assert (=> d!1168186 m!4505715))

(declare-fun m!4506437 () Bool)

(assert (=> d!1168186 m!4506437))

(assert (=> d!1168186 m!4506333))

(declare-fun m!4506443 () Bool)

(assert (=> b!3938110 m!4506443))

(declare-fun m!4506445 () Bool)

(assert (=> b!3938111 m!4506445))

(assert (=> b!3938111 m!4505715))

(declare-fun m!4506447 () Bool)

(assert (=> b!3938111 m!4506447))

(assert (=> b!3938111 m!4506341))

(assert (=> b!3937714 d!1168186))

(declare-fun d!1168192 () Bool)

(declare-fun e!2436449 () Bool)

(assert (=> d!1168192 e!2436449))

(declare-fun res!1593698 () Bool)

(assert (=> d!1168192 (=> (not res!1593698) (not e!2436449))))

(declare-fun lt!1377205 () List!41927)

(assert (=> d!1168192 (= res!1593698 (= (content!6307 lt!1377205) ((_ map or) (content!6307 lt!1376968) (content!6307 lt!1377002))))))

(declare-fun e!2436448 () List!41927)

(assert (=> d!1168192 (= lt!1377205 e!2436448)))

(declare-fun c!684289 () Bool)

(assert (=> d!1168192 (= c!684289 ((_ is Nil!41803) lt!1376968))))

(assert (=> d!1168192 (= (++!10818 lt!1376968 lt!1377002) lt!1377205)))

(declare-fun b!3938121 () Bool)

(assert (=> b!3938121 (= e!2436448 lt!1377002)))

(declare-fun b!3938122 () Bool)

(assert (=> b!3938122 (= e!2436448 (Cons!41803 (h!47223 lt!1376968) (++!10818 (t!326506 lt!1376968) lt!1377002)))))

(declare-fun b!3938124 () Bool)

(assert (=> b!3938124 (= e!2436449 (or (not (= lt!1377002 Nil!41803)) (= lt!1377205 lt!1376968)))))

(declare-fun b!3938123 () Bool)

(declare-fun res!1593699 () Bool)

(assert (=> b!3938123 (=> (not res!1593699) (not e!2436449))))

(assert (=> b!3938123 (= res!1593699 (= (size!31365 lt!1377205) (+ (size!31365 lt!1376968) (size!31365 lt!1377002))))))

(assert (= (and d!1168192 c!684289) b!3938121))

(assert (= (and d!1168192 (not c!684289)) b!3938122))

(assert (= (and d!1168192 res!1593698) b!3938123))

(assert (= (and b!3938123 res!1593699) b!3938124))

(declare-fun m!4506457 () Bool)

(assert (=> d!1168192 m!4506457))

(assert (=> d!1168192 m!4506387))

(declare-fun m!4506459 () Bool)

(assert (=> d!1168192 m!4506459))

(declare-fun m!4506461 () Bool)

(assert (=> b!3938122 m!4506461))

(declare-fun m!4506463 () Bool)

(assert (=> b!3938123 m!4506463))

(assert (=> b!3938123 m!4506393))

(declare-fun m!4506465 () Bool)

(assert (=> b!3938123 m!4506465))

(assert (=> b!3937714 d!1168192))

(declare-fun d!1168196 () Bool)

(assert (=> d!1168196 (= (isEmpty!24932 lt!1377005) ((_ is Nil!41803) lt!1377005))))

(assert (=> b!3937714 d!1168196))

(declare-fun d!1168198 () Bool)

(assert (=> d!1168198 (not (= (lexList!1887 thiss!20629 rules!2768 suffix!1176) (tuple2!41089 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1377206 () Unit!60327)

(assert (=> d!1168198 (= lt!1377206 (choose!23485 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1376994)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1168198 (not (isEmpty!24930 rules!2768))))

(assert (=> d!1168198 (= (lemmaLexWithSmallerInputCannotProduceSameResults!130 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1376994)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1377206)))

(declare-fun bs!586555 () Bool)

(assert (= bs!586555 d!1168198))

(assert (=> bs!586555 m!4505815))

(declare-fun m!4506467 () Bool)

(assert (=> bs!586555 m!4506467))

(assert (=> bs!586555 m!4505673))

(assert (=> b!3937693 d!1168198))

(declare-fun b!3938168 () Bool)

(declare-fun e!2436471 () Bool)

(declare-fun lt!1377236 () Option!8950)

(assert (=> b!3938168 (= e!2436471 (contains!8374 rules!2768 (rule!9484 (_1!23677 (get!13815 lt!1377236)))))))

(declare-fun b!3938169 () Bool)

(declare-fun res!1593729 () Bool)

(assert (=> b!3938169 (=> (not res!1593729) (not e!2436471))))

(assert (=> b!3938169 (= res!1593729 (= (++!10817 (list!15532 (charsOf!4354 (_1!23677 (get!13815 lt!1377236)))) (_2!23677 (get!13815 lt!1377236))) lt!1376995))))

(declare-fun b!3938170 () Bool)

(declare-fun res!1593732 () Bool)

(assert (=> b!3938170 (=> (not res!1593732) (not e!2436471))))

(assert (=> b!3938170 (= res!1593732 (= (list!15532 (charsOf!4354 (_1!23677 (get!13815 lt!1377236)))) (originalCharacters!7130 (_1!23677 (get!13815 lt!1377236)))))))

(declare-fun b!3938171 () Bool)

(declare-fun e!2436470 () Bool)

(assert (=> b!3938171 (= e!2436470 e!2436471)))

(declare-fun res!1593727 () Bool)

(assert (=> b!3938171 (=> (not res!1593727) (not e!2436471))))

(declare-fun isDefined!6957 (Option!8950) Bool)

(assert (=> b!3938171 (= res!1593727 (isDefined!6957 lt!1377236))))

(declare-fun b!3938172 () Bool)

(declare-fun e!2436472 () Option!8950)

(declare-fun lt!1377237 () Option!8950)

(declare-fun lt!1377235 () Option!8950)

(assert (=> b!3938172 (= e!2436472 (ite (and ((_ is None!8949) lt!1377237) ((_ is None!8949) lt!1377235)) None!8949 (ite ((_ is None!8949) lt!1377235) lt!1377237 (ite ((_ is None!8949) lt!1377237) lt!1377235 (ite (>= (size!31360 (_1!23677 (v!39279 lt!1377237))) (size!31360 (_1!23677 (v!39279 lt!1377235)))) lt!1377237 lt!1377235)))))))

(declare-fun call!285024 () Option!8950)

(assert (=> b!3938172 (= lt!1377237 call!285024)))

(assert (=> b!3938172 (= lt!1377235 (maxPrefix!3423 thiss!20629 (t!326507 rules!2768) lt!1376995))))

(declare-fun b!3938173 () Bool)

(declare-fun res!1593728 () Bool)

(assert (=> b!3938173 (=> (not res!1593728) (not e!2436471))))

(assert (=> b!3938173 (= res!1593728 (< (size!31361 (_2!23677 (get!13815 lt!1377236))) (size!31361 lt!1376995)))))

(declare-fun b!3938174 () Bool)

(declare-fun res!1593730 () Bool)

(assert (=> b!3938174 (=> (not res!1593730) (not e!2436471))))

(assert (=> b!3938174 (= res!1593730 (matchR!5489 (regex!6530 (rule!9484 (_1!23677 (get!13815 lt!1377236)))) (list!15532 (charsOf!4354 (_1!23677 (get!13815 lt!1377236))))))))

(declare-fun b!3938175 () Bool)

(declare-fun res!1593733 () Bool)

(assert (=> b!3938175 (=> (not res!1593733) (not e!2436471))))

(assert (=> b!3938175 (= res!1593733 (= (value!206739 (_1!23677 (get!13815 lt!1377236))) (apply!9769 (transformation!6530 (rule!9484 (_1!23677 (get!13815 lt!1377236)))) (seqFromList!4797 (originalCharacters!7130 (_1!23677 (get!13815 lt!1377236)))))))))

(declare-fun d!1168200 () Bool)

(assert (=> d!1168200 e!2436470))

(declare-fun res!1593731 () Bool)

(assert (=> d!1168200 (=> res!1593731 e!2436470)))

(assert (=> d!1168200 (= res!1593731 (isEmpty!24933 lt!1377236))))

(assert (=> d!1168200 (= lt!1377236 e!2436472)))

(declare-fun c!684298 () Bool)

(assert (=> d!1168200 (= c!684298 (and ((_ is Cons!41804) rules!2768) ((_ is Nil!41804) (t!326507 rules!2768))))))

(declare-fun lt!1377238 () Unit!60327)

(declare-fun lt!1377234 () Unit!60327)

(assert (=> d!1168200 (= lt!1377238 lt!1377234)))

(assert (=> d!1168200 (isPrefix!3625 lt!1376995 lt!1376995)))

(declare-fun lemmaIsPrefixRefl!2288 (List!41926 List!41926) Unit!60327)

(assert (=> d!1168200 (= lt!1377234 (lemmaIsPrefixRefl!2288 lt!1376995 lt!1376995))))

(declare-fun rulesValidInductive!2358 (LexerInterface!6119 List!41928) Bool)

(assert (=> d!1168200 (rulesValidInductive!2358 thiss!20629 rules!2768)))

(assert (=> d!1168200 (= (maxPrefix!3423 thiss!20629 rules!2768 lt!1376995) lt!1377236)))

(declare-fun b!3938176 () Bool)

(assert (=> b!3938176 (= e!2436472 call!285024)))

(declare-fun bm!285019 () Bool)

(assert (=> bm!285019 (= call!285024 (maxPrefixOneRule!2493 thiss!20629 (h!47224 rules!2768) lt!1376995))))

(assert (= (and d!1168200 c!684298) b!3938176))

(assert (= (and d!1168200 (not c!684298)) b!3938172))

(assert (= (or b!3938176 b!3938172) bm!285019))

(assert (= (and d!1168200 (not res!1593731)) b!3938171))

(assert (= (and b!3938171 res!1593727) b!3938170))

(assert (= (and b!3938170 res!1593732) b!3938173))

(assert (= (and b!3938173 res!1593728) b!3938169))

(assert (= (and b!3938169 res!1593729) b!3938175))

(assert (= (and b!3938175 res!1593733) b!3938174))

(assert (= (and b!3938174 res!1593730) b!3938168))

(declare-fun m!4506533 () Bool)

(assert (=> b!3938173 m!4506533))

(declare-fun m!4506535 () Bool)

(assert (=> b!3938173 m!4506535))

(assert (=> b!3938173 m!4505805))

(declare-fun m!4506537 () Bool)

(assert (=> bm!285019 m!4506537))

(assert (=> b!3938175 m!4506533))

(declare-fun m!4506539 () Bool)

(assert (=> b!3938175 m!4506539))

(assert (=> b!3938175 m!4506539))

(declare-fun m!4506541 () Bool)

(assert (=> b!3938175 m!4506541))

(assert (=> b!3938174 m!4506533))

(declare-fun m!4506543 () Bool)

(assert (=> b!3938174 m!4506543))

(assert (=> b!3938174 m!4506543))

(declare-fun m!4506545 () Bool)

(assert (=> b!3938174 m!4506545))

(assert (=> b!3938174 m!4506545))

(declare-fun m!4506547 () Bool)

(assert (=> b!3938174 m!4506547))

(assert (=> b!3938169 m!4506533))

(assert (=> b!3938169 m!4506543))

(assert (=> b!3938169 m!4506543))

(assert (=> b!3938169 m!4506545))

(assert (=> b!3938169 m!4506545))

(declare-fun m!4506549 () Bool)

(assert (=> b!3938169 m!4506549))

(declare-fun m!4506551 () Bool)

(assert (=> b!3938171 m!4506551))

(assert (=> b!3938170 m!4506533))

(assert (=> b!3938170 m!4506543))

(assert (=> b!3938170 m!4506543))

(assert (=> b!3938170 m!4506545))

(assert (=> b!3938168 m!4506533))

(declare-fun m!4506553 () Bool)

(assert (=> b!3938168 m!4506553))

(declare-fun m!4506555 () Bool)

(assert (=> b!3938172 m!4506555))

(declare-fun m!4506557 () Bool)

(assert (=> d!1168200 m!4506557))

(declare-fun m!4506559 () Bool)

(assert (=> d!1168200 m!4506559))

(declare-fun m!4506561 () Bool)

(assert (=> d!1168200 m!4506561))

(declare-fun m!4506563 () Bool)

(assert (=> d!1168200 m!4506563))

(assert (=> b!3937673 d!1168200))

(declare-fun d!1168224 () Bool)

(assert (=> d!1168224 (isPrefix!3625 lt!1377003 prefix!426)))

(declare-fun lt!1377241 () Unit!60327)

(declare-fun choose!23490 (List!41926 List!41926 List!41926) Unit!60327)

(assert (=> d!1168224 (= lt!1377241 (choose!23490 prefix!426 lt!1377003 lt!1376995))))

(assert (=> d!1168224 (isPrefix!3625 prefix!426 lt!1376995)))

(assert (=> d!1168224 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!303 prefix!426 lt!1377003 lt!1376995) lt!1377241)))

(declare-fun bs!586559 () Bool)

(assert (= bs!586559 d!1168224))

(assert (=> bs!586559 m!4505819))

(declare-fun m!4506565 () Bool)

(assert (=> bs!586559 m!4506565))

(assert (=> bs!586559 m!4505817))

(assert (=> b!3937715 d!1168224))

(assert (=> b!3937715 d!1168136))

(assert (=> b!3937715 d!1168134))

(declare-fun b!3938177 () Bool)

(declare-fun e!2436473 () Bool)

(declare-fun e!2436475 () Bool)

(assert (=> b!3938177 (= e!2436473 e!2436475)))

(declare-fun res!1593737 () Bool)

(assert (=> b!3938177 (=> (not res!1593737) (not e!2436475))))

(assert (=> b!3938177 (= res!1593737 (not ((_ is Nil!41802) prefix!426)))))

(declare-fun b!3938178 () Bool)

(declare-fun res!1593736 () Bool)

(assert (=> b!3938178 (=> (not res!1593736) (not e!2436475))))

(assert (=> b!3938178 (= res!1593736 (= (head!8367 lt!1377003) (head!8367 prefix!426)))))

(declare-fun d!1168226 () Bool)

(declare-fun e!2436474 () Bool)

(assert (=> d!1168226 e!2436474))

(declare-fun res!1593734 () Bool)

(assert (=> d!1168226 (=> res!1593734 e!2436474)))

(declare-fun lt!1377242 () Bool)

(assert (=> d!1168226 (= res!1593734 (not lt!1377242))))

(assert (=> d!1168226 (= lt!1377242 e!2436473)))

(declare-fun res!1593735 () Bool)

(assert (=> d!1168226 (=> res!1593735 e!2436473)))

(assert (=> d!1168226 (= res!1593735 ((_ is Nil!41802) lt!1377003))))

(assert (=> d!1168226 (= (isPrefix!3625 lt!1377003 prefix!426) lt!1377242)))

(declare-fun b!3938180 () Bool)

(assert (=> b!3938180 (= e!2436474 (>= (size!31361 prefix!426) (size!31361 lt!1377003)))))

(declare-fun b!3938179 () Bool)

(assert (=> b!3938179 (= e!2436475 (isPrefix!3625 (tail!6093 lt!1377003) (tail!6093 prefix!426)))))

(assert (= (and d!1168226 (not res!1593735)) b!3938177))

(assert (= (and b!3938177 res!1593737) b!3938178))

(assert (= (and b!3938178 res!1593736) b!3938179))

(assert (= (and d!1168226 (not res!1593734)) b!3938180))

(assert (=> b!3938178 m!4506001))

(assert (=> b!3938178 m!4506297))

(assert (=> b!3938180 m!4505821))

(assert (=> b!3938180 m!4505743))

(assert (=> b!3938179 m!4506007))

(assert (=> b!3938179 m!4506301))

(assert (=> b!3938179 m!4506007))

(assert (=> b!3938179 m!4506301))

(declare-fun m!4506567 () Bool)

(assert (=> b!3938179 m!4506567))

(assert (=> b!3937715 d!1168226))

(declare-fun d!1168228 () Bool)

(declare-fun lt!1377243 () Int)

(assert (=> d!1168228 (>= lt!1377243 0)))

(declare-fun e!2436476 () Int)

(assert (=> d!1168228 (= lt!1377243 e!2436476)))

(declare-fun c!684299 () Bool)

(assert (=> d!1168228 (= c!684299 ((_ is Nil!41802) prefix!426))))

(assert (=> d!1168228 (= (size!31361 prefix!426) lt!1377243)))

(declare-fun b!3938181 () Bool)

(assert (=> b!3938181 (= e!2436476 0)))

(declare-fun b!3938182 () Bool)

(assert (=> b!3938182 (= e!2436476 (+ 1 (size!31361 (t!326505 prefix!426))))))

(assert (= (and d!1168228 c!684299) b!3938181))

(assert (= (and d!1168228 (not c!684299)) b!3938182))

(declare-fun m!4506569 () Bool)

(assert (=> b!3938182 m!4506569))

(assert (=> b!3937715 d!1168228))

(declare-fun b!3938186 () Bool)

(declare-fun lt!1377244 () List!41926)

(declare-fun e!2436478 () Bool)

(assert (=> b!3938186 (= e!2436478 (or (not (= suffix!1176 Nil!41802)) (= lt!1377244 lt!1376966)))))

(declare-fun b!3938185 () Bool)

(declare-fun res!1593739 () Bool)

(assert (=> b!3938185 (=> (not res!1593739) (not e!2436478))))

(assert (=> b!3938185 (= res!1593739 (= (size!31361 lt!1377244) (+ (size!31361 lt!1376966) (size!31361 suffix!1176))))))

(declare-fun b!3938184 () Bool)

(declare-fun e!2436477 () List!41926)

(assert (=> b!3938184 (= e!2436477 (Cons!41802 (h!47222 lt!1376966) (++!10817 (t!326505 lt!1376966) suffix!1176)))))

(declare-fun d!1168230 () Bool)

(assert (=> d!1168230 e!2436478))

(declare-fun res!1593738 () Bool)

(assert (=> d!1168230 (=> (not res!1593738) (not e!2436478))))

(assert (=> d!1168230 (= res!1593738 (= (content!6305 lt!1377244) ((_ map or) (content!6305 lt!1376966) (content!6305 suffix!1176))))))

(assert (=> d!1168230 (= lt!1377244 e!2436477)))

(declare-fun c!684300 () Bool)

(assert (=> d!1168230 (= c!684300 ((_ is Nil!41802) lt!1376966))))

(assert (=> d!1168230 (= (++!10817 lt!1376966 suffix!1176) lt!1377244)))

(declare-fun b!3938183 () Bool)

(assert (=> b!3938183 (= e!2436477 suffix!1176)))

(assert (= (and d!1168230 c!684300) b!3938183))

(assert (= (and d!1168230 (not c!684300)) b!3938184))

(assert (= (and d!1168230 res!1593738) b!3938185))

(assert (= (and b!3938185 res!1593739) b!3938186))

(declare-fun m!4506571 () Bool)

(assert (=> b!3938185 m!4506571))

(declare-fun m!4506573 () Bool)

(assert (=> b!3938185 m!4506573))

(assert (=> b!3938185 m!4505723))

(declare-fun m!4506575 () Bool)

(assert (=> b!3938184 m!4506575))

(declare-fun m!4506577 () Bool)

(assert (=> d!1168230 m!4506577))

(declare-fun m!4506579 () Bool)

(assert (=> d!1168230 m!4506579))

(assert (=> d!1168230 m!4506181))

(assert (=> b!3937674 d!1168230))

(declare-fun b!3938187 () Bool)

(declare-fun e!2436480 () Bool)

(declare-fun lt!1377246 () tuple2!41088)

(assert (=> b!3938187 (= e!2436480 (= (_2!23678 lt!1377246) lt!1377016))))

(declare-fun b!3938188 () Bool)

(declare-fun e!2436479 () Bool)

(assert (=> b!3938188 (= e!2436479 (not (isEmpty!24932 (_1!23678 lt!1377246))))))

(declare-fun b!3938189 () Bool)

(assert (=> b!3938189 (= e!2436480 e!2436479)))

(declare-fun res!1593740 () Bool)

(assert (=> b!3938189 (= res!1593740 (< (size!31361 (_2!23678 lt!1377246)) (size!31361 lt!1377016)))))

(assert (=> b!3938189 (=> (not res!1593740) (not e!2436479))))

(declare-fun b!3938190 () Bool)

(declare-fun e!2436481 () tuple2!41088)

(declare-fun lt!1377245 () Option!8950)

(declare-fun lt!1377247 () tuple2!41088)

(assert (=> b!3938190 (= e!2436481 (tuple2!41089 (Cons!41803 (_1!23677 (v!39279 lt!1377245)) (_1!23678 lt!1377247)) (_2!23678 lt!1377247)))))

(assert (=> b!3938190 (= lt!1377247 (lexList!1887 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1377245))))))

(declare-fun d!1168232 () Bool)

(assert (=> d!1168232 e!2436480))

(declare-fun c!684301 () Bool)

(assert (=> d!1168232 (= c!684301 (> (size!31365 (_1!23678 lt!1377246)) 0))))

(assert (=> d!1168232 (= lt!1377246 e!2436481)))

(declare-fun c!684302 () Bool)

(assert (=> d!1168232 (= c!684302 ((_ is Some!8949) lt!1377245))))

(assert (=> d!1168232 (= lt!1377245 (maxPrefix!3423 thiss!20629 rules!2768 lt!1377016))))

(assert (=> d!1168232 (= (lexList!1887 thiss!20629 rules!2768 lt!1377016) lt!1377246)))

(declare-fun b!3938191 () Bool)

(assert (=> b!3938191 (= e!2436481 (tuple2!41089 Nil!41803 lt!1377016))))

(assert (= (and d!1168232 c!684302) b!3938190))

(assert (= (and d!1168232 (not c!684302)) b!3938191))

(assert (= (and d!1168232 c!684301) b!3938189))

(assert (= (and d!1168232 (not c!684301)) b!3938187))

(assert (= (and b!3938189 res!1593740) b!3938188))

(declare-fun m!4506581 () Bool)

(assert (=> b!3938188 m!4506581))

(declare-fun m!4506583 () Bool)

(assert (=> b!3938189 m!4506583))

(assert (=> b!3938189 m!4506173))

(declare-fun m!4506585 () Bool)

(assert (=> b!3938190 m!4506585))

(declare-fun m!4506587 () Bool)

(assert (=> d!1168232 m!4506587))

(declare-fun m!4506589 () Bool)

(assert (=> d!1168232 m!4506589))

(assert (=> b!3937675 d!1168232))

(declare-fun d!1168234 () Bool)

(assert (=> d!1168234 (= (lexList!1887 thiss!20629 rules!2768 lt!1377016) (tuple2!41089 lt!1377005 Nil!41802))))

(declare-fun lt!1377276 () Unit!60327)

(declare-fun choose!23493 (LexerInterface!6119 List!41928 List!41926 List!41926 List!41927 List!41927 List!41926) Unit!60327)

(assert (=> d!1168234 (= lt!1377276 (choose!23493 thiss!20629 rules!2768 lt!1377016 suffix!1176 lt!1377005 suffixTokens!72 suffixResult!91))))

(assert (=> d!1168234 (not (isEmpty!24930 rules!2768))))

(assert (=> d!1168234 (= (lemmaLexThenLexPrefix!615 thiss!20629 rules!2768 lt!1377016 suffix!1176 lt!1377005 suffixTokens!72 suffixResult!91) lt!1377276)))

(declare-fun bs!586566 () Bool)

(assert (= bs!586566 d!1168234))

(assert (=> bs!586566 m!4505693))

(declare-fun m!4506685 () Bool)

(assert (=> bs!586566 m!4506685))

(assert (=> bs!586566 m!4505673))

(assert (=> b!3937675 d!1168234))

(declare-fun d!1168274 () Bool)

(declare-fun e!2436521 () Bool)

(assert (=> d!1168274 e!2436521))

(declare-fun res!1593760 () Bool)

(assert (=> d!1168274 (=> (not res!1593760) (not e!2436521))))

(declare-fun lt!1377277 () List!41927)

(assert (=> d!1168274 (= res!1593760 (= (content!6307 lt!1377277) ((_ map or) (content!6307 lt!1376968) (content!6307 (_1!23678 lt!1376980)))))))

(declare-fun e!2436520 () List!41927)

(assert (=> d!1168274 (= lt!1377277 e!2436520)))

(declare-fun c!684315 () Bool)

(assert (=> d!1168274 (= c!684315 ((_ is Nil!41803) lt!1376968))))

(assert (=> d!1168274 (= (++!10818 lt!1376968 (_1!23678 lt!1376980)) lt!1377277)))

(declare-fun b!3938245 () Bool)

(assert (=> b!3938245 (= e!2436520 (_1!23678 lt!1376980))))

(declare-fun b!3938246 () Bool)

(assert (=> b!3938246 (= e!2436520 (Cons!41803 (h!47223 lt!1376968) (++!10818 (t!326506 lt!1376968) (_1!23678 lt!1376980))))))

(declare-fun b!3938248 () Bool)

(assert (=> b!3938248 (= e!2436521 (or (not (= (_1!23678 lt!1376980) Nil!41803)) (= lt!1377277 lt!1376968)))))

(declare-fun b!3938247 () Bool)

(declare-fun res!1593761 () Bool)

(assert (=> b!3938247 (=> (not res!1593761) (not e!2436521))))

(assert (=> b!3938247 (= res!1593761 (= (size!31365 lt!1377277) (+ (size!31365 lt!1376968) (size!31365 (_1!23678 lt!1376980)))))))

(assert (= (and d!1168274 c!684315) b!3938245))

(assert (= (and d!1168274 (not c!684315)) b!3938246))

(assert (= (and d!1168274 res!1593760) b!3938247))

(assert (= (and b!3938247 res!1593761) b!3938248))

(declare-fun m!4506687 () Bool)

(assert (=> d!1168274 m!4506687))

(assert (=> d!1168274 m!4506387))

(declare-fun m!4506689 () Bool)

(assert (=> d!1168274 m!4506689))

(declare-fun m!4506691 () Bool)

(assert (=> b!3938246 m!4506691))

(declare-fun m!4506693 () Bool)

(assert (=> b!3938247 m!4506693))

(assert (=> b!3938247 m!4506393))

(declare-fun m!4506695 () Bool)

(assert (=> b!3938247 m!4506695))

(assert (=> b!3937676 d!1168274))

(declare-fun b!3938249 () Bool)

(declare-fun e!2436523 () Bool)

(declare-fun lt!1377279 () tuple2!41088)

(assert (=> b!3938249 (= e!2436523 (= (_2!23678 lt!1377279) suffix!1176))))

(declare-fun b!3938250 () Bool)

(declare-fun e!2436522 () Bool)

(assert (=> b!3938250 (= e!2436522 (not (isEmpty!24932 (_1!23678 lt!1377279))))))

(declare-fun b!3938251 () Bool)

(assert (=> b!3938251 (= e!2436523 e!2436522)))

(declare-fun res!1593762 () Bool)

(assert (=> b!3938251 (= res!1593762 (< (size!31361 (_2!23678 lt!1377279)) (size!31361 suffix!1176)))))

(assert (=> b!3938251 (=> (not res!1593762) (not e!2436522))))

(declare-fun b!3938252 () Bool)

(declare-fun e!2436524 () tuple2!41088)

(declare-fun lt!1377278 () Option!8950)

(declare-fun lt!1377280 () tuple2!41088)

(assert (=> b!3938252 (= e!2436524 (tuple2!41089 (Cons!41803 (_1!23677 (v!39279 lt!1377278)) (_1!23678 lt!1377280)) (_2!23678 lt!1377280)))))

(assert (=> b!3938252 (= lt!1377280 (lexList!1887 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1377278))))))

(declare-fun d!1168276 () Bool)

(assert (=> d!1168276 e!2436523))

(declare-fun c!684316 () Bool)

(assert (=> d!1168276 (= c!684316 (> (size!31365 (_1!23678 lt!1377279)) 0))))

(assert (=> d!1168276 (= lt!1377279 e!2436524)))

(declare-fun c!684317 () Bool)

(assert (=> d!1168276 (= c!684317 ((_ is Some!8949) lt!1377278))))

(assert (=> d!1168276 (= lt!1377278 (maxPrefix!3423 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1168276 (= (lexList!1887 thiss!20629 rules!2768 suffix!1176) lt!1377279)))

(declare-fun b!3938253 () Bool)

(assert (=> b!3938253 (= e!2436524 (tuple2!41089 Nil!41803 suffix!1176))))

(assert (= (and d!1168276 c!684317) b!3938252))

(assert (= (and d!1168276 (not c!684317)) b!3938253))

(assert (= (and d!1168276 c!684316) b!3938251))

(assert (= (and d!1168276 (not c!684316)) b!3938249))

(assert (= (and b!3938251 res!1593762) b!3938250))

(declare-fun m!4506697 () Bool)

(assert (=> b!3938250 m!4506697))

(declare-fun m!4506699 () Bool)

(assert (=> b!3938251 m!4506699))

(assert (=> b!3938251 m!4505723))

(declare-fun m!4506701 () Bool)

(assert (=> b!3938252 m!4506701))

(declare-fun m!4506703 () Bool)

(assert (=> d!1168276 m!4506703))

(declare-fun m!4506705 () Bool)

(assert (=> d!1168276 m!4506705))

(assert (=> b!3937718 d!1168276))

(declare-fun b!3938258 () Bool)

(declare-fun e!2436532 () Bool)

(declare-fun lt!1377282 () tuple2!41088)

(assert (=> b!3938258 (= e!2436532 (= (_2!23678 lt!1377282) lt!1376973))))

(declare-fun b!3938259 () Bool)

(declare-fun e!2436531 () Bool)

(assert (=> b!3938259 (= e!2436531 (not (isEmpty!24932 (_1!23678 lt!1377282))))))

(declare-fun b!3938260 () Bool)

(assert (=> b!3938260 (= e!2436532 e!2436531)))

(declare-fun res!1593763 () Bool)

(assert (=> b!3938260 (= res!1593763 (< (size!31361 (_2!23678 lt!1377282)) (size!31361 lt!1376973)))))

(assert (=> b!3938260 (=> (not res!1593763) (not e!2436531))))

(declare-fun b!3938261 () Bool)

(declare-fun e!2436533 () tuple2!41088)

(declare-fun lt!1377281 () Option!8950)

(declare-fun lt!1377283 () tuple2!41088)

(assert (=> b!3938261 (= e!2436533 (tuple2!41089 (Cons!41803 (_1!23677 (v!39279 lt!1377281)) (_1!23678 lt!1377283)) (_2!23678 lt!1377283)))))

(assert (=> b!3938261 (= lt!1377283 (lexList!1887 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1377281))))))

(declare-fun d!1168278 () Bool)

(assert (=> d!1168278 e!2436532))

(declare-fun c!684318 () Bool)

(assert (=> d!1168278 (= c!684318 (> (size!31365 (_1!23678 lt!1377282)) 0))))

(assert (=> d!1168278 (= lt!1377282 e!2436533)))

(declare-fun c!684319 () Bool)

(assert (=> d!1168278 (= c!684319 ((_ is Some!8949) lt!1377281))))

(assert (=> d!1168278 (= lt!1377281 (maxPrefix!3423 thiss!20629 rules!2768 lt!1376973))))

(assert (=> d!1168278 (= (lexList!1887 thiss!20629 rules!2768 lt!1376973) lt!1377282)))

(declare-fun b!3938262 () Bool)

(assert (=> b!3938262 (= e!2436533 (tuple2!41089 Nil!41803 lt!1376973))))

(assert (= (and d!1168278 c!684319) b!3938261))

(assert (= (and d!1168278 (not c!684319)) b!3938262))

(assert (= (and d!1168278 c!684318) b!3938260))

(assert (= (and d!1168278 (not c!684318)) b!3938258))

(assert (= (and b!3938260 res!1593763) b!3938259))

(declare-fun m!4506713 () Bool)

(assert (=> b!3938259 m!4506713))

(declare-fun m!4506717 () Bool)

(assert (=> b!3938260 m!4506717))

(assert (=> b!3938260 m!4506163))

(declare-fun m!4506719 () Bool)

(assert (=> b!3938261 m!4506719))

(declare-fun m!4506721 () Bool)

(assert (=> d!1168278 m!4506721))

(declare-fun m!4506723 () Bool)

(assert (=> d!1168278 m!4506723))

(assert (=> b!3937697 d!1168278))

(declare-fun d!1168280 () Bool)

(assert (=> d!1168280 (= (isEmpty!24931 prefix!426) ((_ is Nil!41802) prefix!426))))

(assert (=> b!3937677 d!1168280))

(declare-fun d!1168282 () Bool)

(assert (=> d!1168282 (= (_2!23677 (v!39279 lt!1376994)) lt!1376973)))

(declare-fun lt!1377284 () Unit!60327)

(assert (=> d!1168282 (= lt!1377284 (choose!23482 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 lt!1376973 lt!1376995))))

(assert (=> d!1168282 (isPrefix!3625 lt!1377003 lt!1376995)))

(assert (=> d!1168282 (= (lemmaSamePrefixThenSameSuffix!1846 lt!1377003 (_2!23677 (v!39279 lt!1376994)) lt!1377003 lt!1376973 lt!1376995) lt!1377284)))

(declare-fun bs!586567 () Bool)

(assert (= bs!586567 d!1168282))

(declare-fun m!4506725 () Bool)

(assert (=> bs!586567 m!4506725))

(assert (=> bs!586567 m!4506159))

(assert (=> b!3937698 d!1168282))

(declare-fun b!3938273 () Bool)

(declare-fun e!2436544 () Bool)

(declare-fun e!2436546 () Bool)

(assert (=> b!3938273 (= e!2436544 e!2436546)))

(declare-fun res!1593767 () Bool)

(assert (=> b!3938273 (=> (not res!1593767) (not e!2436546))))

(assert (=> b!3938273 (= res!1593767 (not ((_ is Nil!41802) lt!1376996)))))

(declare-fun b!3938274 () Bool)

(declare-fun res!1593766 () Bool)

(assert (=> b!3938274 (=> (not res!1593766) (not e!2436546))))

(assert (=> b!3938274 (= res!1593766 (= (head!8367 lt!1377003) (head!8367 lt!1376996)))))

(declare-fun d!1168284 () Bool)

(declare-fun e!2436545 () Bool)

(assert (=> d!1168284 e!2436545))

(declare-fun res!1593764 () Bool)

(assert (=> d!1168284 (=> res!1593764 e!2436545)))

(declare-fun lt!1377285 () Bool)

(assert (=> d!1168284 (= res!1593764 (not lt!1377285))))

(assert (=> d!1168284 (= lt!1377285 e!2436544)))

(declare-fun res!1593765 () Bool)

(assert (=> d!1168284 (=> res!1593765 e!2436544)))

(assert (=> d!1168284 (= res!1593765 ((_ is Nil!41802) lt!1377003))))

(assert (=> d!1168284 (= (isPrefix!3625 lt!1377003 lt!1376996) lt!1377285)))

(declare-fun b!3938276 () Bool)

(assert (=> b!3938276 (= e!2436545 (>= (size!31361 lt!1376996) (size!31361 lt!1377003)))))

(declare-fun b!3938275 () Bool)

(assert (=> b!3938275 (= e!2436546 (isPrefix!3625 (tail!6093 lt!1377003) (tail!6093 lt!1376996)))))

(assert (= (and d!1168284 (not res!1593765)) b!3938273))

(assert (= (and b!3938273 res!1593767) b!3938274))

(assert (= (and b!3938274 res!1593766) b!3938275))

(assert (= (and d!1168284 (not res!1593764)) b!3938276))

(assert (=> b!3938274 m!4506001))

(declare-fun m!4506727 () Bool)

(assert (=> b!3938274 m!4506727))

(declare-fun m!4506729 () Bool)

(assert (=> b!3938276 m!4506729))

(assert (=> b!3938276 m!4505743))

(assert (=> b!3938275 m!4506007))

(declare-fun m!4506731 () Bool)

(assert (=> b!3938275 m!4506731))

(assert (=> b!3938275 m!4506007))

(assert (=> b!3938275 m!4506731))

(declare-fun m!4506733 () Bool)

(assert (=> b!3938275 m!4506733))

(assert (=> b!3937698 d!1168284))

(declare-fun d!1168286 () Bool)

(assert (=> d!1168286 (isPrefix!3625 lt!1377003 (++!10817 lt!1377003 lt!1376973))))

(declare-fun lt!1377286 () Unit!60327)

(assert (=> d!1168286 (= lt!1377286 (choose!23481 lt!1377003 lt!1376973))))

(assert (=> d!1168286 (= (lemmaConcatTwoListThenFirstIsPrefix!2488 lt!1377003 lt!1376973) lt!1377286)))

(declare-fun bs!586568 () Bool)

(assert (= bs!586568 d!1168286))

(assert (=> bs!586568 m!4505683))

(assert (=> bs!586568 m!4505683))

(declare-fun m!4506743 () Bool)

(assert (=> bs!586568 m!4506743))

(declare-fun m!4506745 () Bool)

(assert (=> bs!586568 m!4506745))

(assert (=> b!3937698 d!1168286))

(declare-fun b!3938279 () Bool)

(declare-fun e!2436548 () Bool)

(assert (=> b!3938279 (= e!2436548 (inv!15 (value!206739 (h!47223 prefixTokens!80))))))

(declare-fun b!3938280 () Bool)

(declare-fun res!1593768 () Bool)

(assert (=> b!3938280 (=> res!1593768 e!2436548)))

(assert (=> b!3938280 (= res!1593768 (not ((_ is IntegerValue!20282) (value!206739 (h!47223 prefixTokens!80)))))))

(declare-fun e!2436551 () Bool)

(assert (=> b!3938280 (= e!2436551 e!2436548)))

(declare-fun d!1168288 () Bool)

(declare-fun c!684321 () Bool)

(assert (=> d!1168288 (= c!684321 ((_ is IntegerValue!20280) (value!206739 (h!47223 prefixTokens!80))))))

(declare-fun e!2436550 () Bool)

(assert (=> d!1168288 (= (inv!21 (value!206739 (h!47223 prefixTokens!80))) e!2436550)))

(declare-fun b!3938281 () Bool)

(assert (=> b!3938281 (= e!2436551 (inv!17 (value!206739 (h!47223 prefixTokens!80))))))

(declare-fun b!3938282 () Bool)

(assert (=> b!3938282 (= e!2436550 (inv!16 (value!206739 (h!47223 prefixTokens!80))))))

(declare-fun b!3938283 () Bool)

(assert (=> b!3938283 (= e!2436550 e!2436551)))

(declare-fun c!684320 () Bool)

(assert (=> b!3938283 (= c!684320 ((_ is IntegerValue!20281) (value!206739 (h!47223 prefixTokens!80))))))

(assert (= (and d!1168288 c!684321) b!3938282))

(assert (= (and d!1168288 (not c!684321)) b!3938283))

(assert (= (and b!3938283 c!684320) b!3938281))

(assert (= (and b!3938283 (not c!684320)) b!3938280))

(assert (= (and b!3938280 (not res!1593768)) b!3938279))

(declare-fun m!4506747 () Bool)

(assert (=> b!3938279 m!4506747))

(declare-fun m!4506749 () Bool)

(assert (=> b!3938281 m!4506749))

(declare-fun m!4506751 () Bool)

(assert (=> b!3938282 m!4506751))

(assert (=> b!3937678 d!1168288))

(declare-fun d!1168290 () Bool)

(declare-fun lt!1377287 () Int)

(assert (=> d!1168290 (>= lt!1377287 0)))

(declare-fun e!2436554 () Int)

(assert (=> d!1168290 (= lt!1377287 e!2436554)))

(declare-fun c!684322 () Bool)

(assert (=> d!1168290 (= c!684322 ((_ is Nil!41802) Nil!41802))))

(assert (=> d!1168290 (= (size!31361 Nil!41802) lt!1377287)))

(declare-fun b!3938294 () Bool)

(assert (=> b!3938294 (= e!2436554 0)))

(declare-fun b!3938295 () Bool)

(assert (=> b!3938295 (= e!2436554 (+ 1 (size!31361 (t!326505 Nil!41802))))))

(assert (= (and d!1168290 c!684322) b!3938294))

(assert (= (and d!1168290 (not c!684322)) b!3938295))

(declare-fun m!4506753 () Bool)

(assert (=> b!3938295 m!4506753))

(assert (=> b!3937720 d!1168290))

(declare-fun d!1168292 () Bool)

(assert (=> d!1168292 (= (inv!56000 (tag!7390 (rule!9484 (h!47223 suffixTokens!72)))) (= (mod (str.len (value!206738 (tag!7390 (rule!9484 (h!47223 suffixTokens!72))))) 2) 0))))

(assert (=> b!3937679 d!1168292))

(declare-fun d!1168294 () Bool)

(declare-fun res!1593769 () Bool)

(declare-fun e!2436555 () Bool)

(assert (=> d!1168294 (=> (not res!1593769) (not e!2436555))))

(assert (=> d!1168294 (= res!1593769 (semiInverseModEq!2808 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (toValue!8990 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72))))))))

(assert (=> d!1168294 (= (inv!56004 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) e!2436555)))

(declare-fun b!3938296 () Bool)

(assert (=> b!3938296 (= e!2436555 (equivClasses!2707 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (toValue!8990 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72))))))))

(assert (= (and d!1168294 res!1593769) b!3938296))

(declare-fun m!4506755 () Bool)

(assert (=> d!1168294 m!4506755))

(declare-fun m!4506757 () Bool)

(assert (=> b!3938296 m!4506757))

(assert (=> b!3937679 d!1168294))

(declare-fun d!1168296 () Bool)

(assert (=> d!1168296 (= (isEmpty!24931 suffix!1176) ((_ is Nil!41802) suffix!1176))))

(assert (=> b!3937721 d!1168296))

(declare-fun d!1168298 () Bool)

(assert (=> d!1168298 (= (isEmpty!24932 lt!1376985) ((_ is Nil!41803) lt!1376985))))

(assert (=> b!3937700 d!1168298))

(assert (=> b!3937700 d!1168154))

(declare-fun d!1168300 () Bool)

(assert (=> d!1168300 (= (inv!56000 (tag!7390 (rule!9484 (h!47223 prefixTokens!80)))) (= (mod (str.len (value!206738 (tag!7390 (rule!9484 (h!47223 prefixTokens!80))))) 2) 0))))

(assert (=> b!3937680 d!1168300))

(declare-fun d!1168302 () Bool)

(declare-fun res!1593770 () Bool)

(declare-fun e!2436558 () Bool)

(assert (=> d!1168302 (=> (not res!1593770) (not e!2436558))))

(assert (=> d!1168302 (= res!1593770 (semiInverseModEq!2808 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (toValue!8990 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80))))))))

(assert (=> d!1168302 (= (inv!56004 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) e!2436558)))

(declare-fun b!3938305 () Bool)

(assert (=> b!3938305 (= e!2436558 (equivClasses!2707 (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (toValue!8990 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80))))))))

(assert (= (and d!1168302 res!1593770) b!3938305))

(declare-fun m!4506759 () Bool)

(assert (=> d!1168302 m!4506759))

(declare-fun m!4506761 () Bool)

(assert (=> b!3938305 m!4506761))

(assert (=> b!3937680 d!1168302))

(declare-fun b!3938314 () Bool)

(declare-fun e!2436563 () Bool)

(declare-fun lt!1377289 () tuple2!41088)

(assert (=> b!3938314 (= e!2436563 (= (_2!23678 lt!1377289) lt!1376995))))

(declare-fun b!3938315 () Bool)

(declare-fun e!2436562 () Bool)

(assert (=> b!3938315 (= e!2436562 (not (isEmpty!24932 (_1!23678 lt!1377289))))))

(declare-fun b!3938316 () Bool)

(assert (=> b!3938316 (= e!2436563 e!2436562)))

(declare-fun res!1593771 () Bool)

(assert (=> b!3938316 (= res!1593771 (< (size!31361 (_2!23678 lt!1377289)) (size!31361 lt!1376995)))))

(assert (=> b!3938316 (=> (not res!1593771) (not e!2436562))))

(declare-fun b!3938317 () Bool)

(declare-fun e!2436564 () tuple2!41088)

(declare-fun lt!1377288 () Option!8950)

(declare-fun lt!1377290 () tuple2!41088)

(assert (=> b!3938317 (= e!2436564 (tuple2!41089 (Cons!41803 (_1!23677 (v!39279 lt!1377288)) (_1!23678 lt!1377290)) (_2!23678 lt!1377290)))))

(assert (=> b!3938317 (= lt!1377290 (lexList!1887 thiss!20629 rules!2768 (_2!23677 (v!39279 lt!1377288))))))

(declare-fun d!1168304 () Bool)

(assert (=> d!1168304 e!2436563))

(declare-fun c!684323 () Bool)

(assert (=> d!1168304 (= c!684323 (> (size!31365 (_1!23678 lt!1377289)) 0))))

(assert (=> d!1168304 (= lt!1377289 e!2436564)))

(declare-fun c!684324 () Bool)

(assert (=> d!1168304 (= c!684324 ((_ is Some!8949) lt!1377288))))

(assert (=> d!1168304 (= lt!1377288 (maxPrefix!3423 thiss!20629 rules!2768 lt!1376995))))

(assert (=> d!1168304 (= (lexList!1887 thiss!20629 rules!2768 lt!1376995) lt!1377289)))

(declare-fun b!3938318 () Bool)

(assert (=> b!3938318 (= e!2436564 (tuple2!41089 Nil!41803 lt!1376995))))

(assert (= (and d!1168304 c!684324) b!3938317))

(assert (= (and d!1168304 (not c!684324)) b!3938318))

(assert (= (and d!1168304 c!684323) b!3938316))

(assert (= (and d!1168304 (not c!684323)) b!3938314))

(assert (= (and b!3938316 res!1593771) b!3938315))

(declare-fun m!4506763 () Bool)

(assert (=> b!3938315 m!4506763))

(declare-fun m!4506765 () Bool)

(assert (=> b!3938316 m!4506765))

(assert (=> b!3938316 m!4505805))

(declare-fun m!4506767 () Bool)

(assert (=> b!3938317 m!4506767))

(declare-fun m!4506769 () Bool)

(assert (=> d!1168304 m!4506769))

(assert (=> d!1168304 m!4505759))

(assert (=> b!3937722 d!1168304))

(declare-fun d!1168306 () Bool)

(declare-fun e!2436572 () Bool)

(assert (=> d!1168306 e!2436572))

(declare-fun res!1593772 () Bool)

(assert (=> d!1168306 (=> (not res!1593772) (not e!2436572))))

(declare-fun lt!1377291 () List!41927)

(assert (=> d!1168306 (= res!1593772 (= (content!6307 lt!1377291) ((_ map or) (content!6307 prefixTokens!80) (content!6307 suffixTokens!72))))))

(declare-fun e!2436571 () List!41927)

(assert (=> d!1168306 (= lt!1377291 e!2436571)))

(declare-fun c!684325 () Bool)

(assert (=> d!1168306 (= c!684325 ((_ is Nil!41803) prefixTokens!80))))

(assert (=> d!1168306 (= (++!10818 prefixTokens!80 suffixTokens!72) lt!1377291)))

(declare-fun b!3938323 () Bool)

(assert (=> b!3938323 (= e!2436571 suffixTokens!72)))

(declare-fun b!3938324 () Bool)

(assert (=> b!3938324 (= e!2436571 (Cons!41803 (h!47223 prefixTokens!80) (++!10818 (t!326506 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3938326 () Bool)

(assert (=> b!3938326 (= e!2436572 (or (not (= suffixTokens!72 Nil!41803)) (= lt!1377291 prefixTokens!80)))))

(declare-fun b!3938325 () Bool)

(declare-fun res!1593773 () Bool)

(assert (=> b!3938325 (=> (not res!1593773) (not e!2436572))))

(assert (=> b!3938325 (= res!1593773 (= (size!31365 lt!1377291) (+ (size!31365 prefixTokens!80) (size!31365 suffixTokens!72))))))

(assert (= (and d!1168306 c!684325) b!3938323))

(assert (= (and d!1168306 (not c!684325)) b!3938324))

(assert (= (and d!1168306 res!1593772) b!3938325))

(assert (= (and b!3938325 res!1593773) b!3938326))

(declare-fun m!4506771 () Bool)

(assert (=> d!1168306 m!4506771))

(declare-fun m!4506773 () Bool)

(assert (=> d!1168306 m!4506773))

(assert (=> d!1168306 m!4506333))

(declare-fun m!4506775 () Bool)

(assert (=> b!3938324 m!4506775))

(declare-fun m!4506777 () Bool)

(assert (=> b!3938325 m!4506777))

(declare-fun m!4506779 () Bool)

(assert (=> b!3938325 m!4506779))

(assert (=> b!3938325 m!4506341))

(assert (=> b!3937722 d!1168306))

(declare-fun b!3938330 () Bool)

(declare-fun e!2436574 () Bool)

(declare-fun lt!1377292 () List!41926)

(assert (=> b!3938330 (= e!2436574 (or (not (= suffix!1176 Nil!41802)) (= lt!1377292 prefix!426)))))

(declare-fun b!3938329 () Bool)

(declare-fun res!1593775 () Bool)

(assert (=> b!3938329 (=> (not res!1593775) (not e!2436574))))

(assert (=> b!3938329 (= res!1593775 (= (size!31361 lt!1377292) (+ (size!31361 prefix!426) (size!31361 suffix!1176))))))

(declare-fun b!3938328 () Bool)

(declare-fun e!2436573 () List!41926)

(assert (=> b!3938328 (= e!2436573 (Cons!41802 (h!47222 prefix!426) (++!10817 (t!326505 prefix!426) suffix!1176)))))

(declare-fun d!1168308 () Bool)

(assert (=> d!1168308 e!2436574))

(declare-fun res!1593774 () Bool)

(assert (=> d!1168308 (=> (not res!1593774) (not e!2436574))))

(assert (=> d!1168308 (= res!1593774 (= (content!6305 lt!1377292) ((_ map or) (content!6305 prefix!426) (content!6305 suffix!1176))))))

(assert (=> d!1168308 (= lt!1377292 e!2436573)))

(declare-fun c!684326 () Bool)

(assert (=> d!1168308 (= c!684326 ((_ is Nil!41802) prefix!426))))

(assert (=> d!1168308 (= (++!10817 prefix!426 suffix!1176) lt!1377292)))

(declare-fun b!3938327 () Bool)

(assert (=> b!3938327 (= e!2436573 suffix!1176)))

(assert (= (and d!1168308 c!684326) b!3938327))

(assert (= (and d!1168308 (not c!684326)) b!3938328))

(assert (= (and d!1168308 res!1593774) b!3938329))

(assert (= (and b!3938329 res!1593775) b!3938330))

(declare-fun m!4506781 () Bool)

(assert (=> b!3938329 m!4506781))

(assert (=> b!3938329 m!4505821))

(assert (=> b!3938329 m!4505723))

(declare-fun m!4506783 () Bool)

(assert (=> b!3938328 m!4506783))

(declare-fun m!4506785 () Bool)

(assert (=> d!1168308 m!4506785))

(declare-fun m!4506787 () Bool)

(assert (=> d!1168308 m!4506787))

(assert (=> d!1168308 m!4506181))

(assert (=> b!3937722 d!1168308))

(declare-fun b!3938337 () Bool)

(declare-fun e!2436580 () Bool)

(declare-fun lt!1377293 () List!41926)

(assert (=> b!3938337 (= e!2436580 (or (not (= Nil!41802 Nil!41802)) (= lt!1377293 prefix!426)))))

(declare-fun b!3938336 () Bool)

(declare-fun res!1593777 () Bool)

(assert (=> b!3938336 (=> (not res!1593777) (not e!2436580))))

(assert (=> b!3938336 (= res!1593777 (= (size!31361 lt!1377293) (+ (size!31361 prefix!426) (size!31361 Nil!41802))))))

(declare-fun b!3938335 () Bool)

(declare-fun e!2436579 () List!41926)

(assert (=> b!3938335 (= e!2436579 (Cons!41802 (h!47222 prefix!426) (++!10817 (t!326505 prefix!426) Nil!41802)))))

(declare-fun d!1168310 () Bool)

(assert (=> d!1168310 e!2436580))

(declare-fun res!1593776 () Bool)

(assert (=> d!1168310 (=> (not res!1593776) (not e!2436580))))

(assert (=> d!1168310 (= res!1593776 (= (content!6305 lt!1377293) ((_ map or) (content!6305 prefix!426) (content!6305 Nil!41802))))))

(assert (=> d!1168310 (= lt!1377293 e!2436579)))

(declare-fun c!684327 () Bool)

(assert (=> d!1168310 (= c!684327 ((_ is Nil!41802) prefix!426))))

(assert (=> d!1168310 (= (++!10817 prefix!426 Nil!41802) lt!1377293)))

(declare-fun b!3938334 () Bool)

(assert (=> b!3938334 (= e!2436579 Nil!41802)))

(assert (= (and d!1168310 c!684327) b!3938334))

(assert (= (and d!1168310 (not c!684327)) b!3938335))

(assert (= (and d!1168310 res!1593776) b!3938336))

(assert (= (and b!3938336 res!1593777) b!3938337))

(declare-fun m!4506789 () Bool)

(assert (=> b!3938336 m!4506789))

(assert (=> b!3938336 m!4505821))

(assert (=> b!3938336 m!4505689))

(declare-fun m!4506791 () Bool)

(assert (=> b!3938335 m!4506791))

(declare-fun m!4506793 () Bool)

(assert (=> d!1168310 m!4506793))

(assert (=> d!1168310 m!4506787))

(declare-fun m!4506795 () Bool)

(assert (=> d!1168310 m!4506795))

(assert (=> b!3937701 d!1168310))

(declare-fun d!1168312 () Bool)

(assert (=> d!1168312 (not (= (lexList!1887 thiss!20629 rules!2768 (_2!23677 lt!1377011)) (tuple2!41089 (++!10818 lt!1376985 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1377296 () Unit!60327)

(declare-fun choose!23496 (LexerInterface!6119 List!41928 List!41926 List!41926 List!41927 List!41926 List!41927) Unit!60327)

(assert (=> d!1168312 (= lt!1377296 (choose!23496 thiss!20629 rules!2768 suffix!1176 (_2!23677 lt!1377011) suffixTokens!72 suffixResult!91 lt!1376985))))

(assert (=> d!1168312 (not (isEmpty!24930 rules!2768))))

(assert (=> d!1168312 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!130 thiss!20629 rules!2768 suffix!1176 (_2!23677 lt!1377011) suffixTokens!72 suffixResult!91 lt!1376985) lt!1377296)))

(declare-fun bs!586569 () Bool)

(assert (= bs!586569 d!1168312))

(assert (=> bs!586569 m!4505765))

(assert (=> bs!586569 m!4505783))

(declare-fun m!4506801 () Bool)

(assert (=> bs!586569 m!4506801))

(assert (=> bs!586569 m!4505673))

(assert (=> b!3937702 d!1168312))

(declare-fun d!1168314 () Bool)

(declare-fun e!2436583 () Bool)

(assert (=> d!1168314 e!2436583))

(declare-fun res!1593778 () Bool)

(assert (=> d!1168314 (=> (not res!1593778) (not e!2436583))))

(declare-fun lt!1377297 () List!41927)

(assert (=> d!1168314 (= res!1593778 (= (content!6307 lt!1377297) ((_ map or) (content!6307 lt!1376985) (content!6307 suffixTokens!72))))))

(declare-fun e!2436582 () List!41927)

(assert (=> d!1168314 (= lt!1377297 e!2436582)))

(declare-fun c!684328 () Bool)

(assert (=> d!1168314 (= c!684328 ((_ is Nil!41803) lt!1376985))))

(assert (=> d!1168314 (= (++!10818 lt!1376985 suffixTokens!72) lt!1377297)))

(declare-fun b!3938339 () Bool)

(assert (=> b!3938339 (= e!2436582 suffixTokens!72)))

(declare-fun b!3938340 () Bool)

(assert (=> b!3938340 (= e!2436582 (Cons!41803 (h!47223 lt!1376985) (++!10818 (t!326506 lt!1376985) suffixTokens!72)))))

(declare-fun b!3938342 () Bool)

(assert (=> b!3938342 (= e!2436583 (or (not (= suffixTokens!72 Nil!41803)) (= lt!1377297 lt!1376985)))))

(declare-fun b!3938341 () Bool)

(declare-fun res!1593779 () Bool)

(assert (=> b!3938341 (=> (not res!1593779) (not e!2436583))))

(assert (=> b!3938341 (= res!1593779 (= (size!31365 lt!1377297) (+ (size!31365 lt!1376985) (size!31365 suffixTokens!72))))))

(assert (= (and d!1168314 c!684328) b!3938339))

(assert (= (and d!1168314 (not c!684328)) b!3938340))

(assert (= (and d!1168314 res!1593778) b!3938341))

(assert (= (and b!3938341 res!1593779) b!3938342))

(declare-fun m!4506803 () Bool)

(assert (=> d!1168314 m!4506803))

(declare-fun m!4506805 () Bool)

(assert (=> d!1168314 m!4506805))

(assert (=> d!1168314 m!4506333))

(declare-fun m!4506807 () Bool)

(assert (=> b!3938340 m!4506807))

(declare-fun m!4506809 () Bool)

(assert (=> b!3938341 m!4506809))

(declare-fun m!4506811 () Bool)

(assert (=> b!3938341 m!4506811))

(assert (=> b!3938341 m!4506341))

(assert (=> b!3937702 d!1168314))

(declare-fun e!2436585 () Bool)

(declare-fun lt!1377298 () List!41926)

(declare-fun b!3938346 () Bool)

(assert (=> b!3938346 (= e!2436585 (or (not (= lt!1377016 Nil!41802)) (= lt!1377298 lt!1377003)))))

(declare-fun b!3938345 () Bool)

(declare-fun res!1593781 () Bool)

(assert (=> b!3938345 (=> (not res!1593781) (not e!2436585))))

(assert (=> b!3938345 (= res!1593781 (= (size!31361 lt!1377298) (+ (size!31361 lt!1377003) (size!31361 lt!1377016))))))

(declare-fun b!3938344 () Bool)

(declare-fun e!2436584 () List!41926)

(assert (=> b!3938344 (= e!2436584 (Cons!41802 (h!47222 lt!1377003) (++!10817 (t!326505 lt!1377003) lt!1377016)))))

(declare-fun d!1168316 () Bool)

(assert (=> d!1168316 e!2436585))

(declare-fun res!1593780 () Bool)

(assert (=> d!1168316 (=> (not res!1593780) (not e!2436585))))

(assert (=> d!1168316 (= res!1593780 (= (content!6305 lt!1377298) ((_ map or) (content!6305 lt!1377003) (content!6305 lt!1377016))))))

(assert (=> d!1168316 (= lt!1377298 e!2436584)))

(declare-fun c!684329 () Bool)

(assert (=> d!1168316 (= c!684329 ((_ is Nil!41802) lt!1377003))))

(assert (=> d!1168316 (= (++!10817 lt!1377003 lt!1377016) lt!1377298)))

(declare-fun b!3938343 () Bool)

(assert (=> b!3938343 (= e!2436584 lt!1377016)))

(assert (= (and d!1168316 c!684329) b!3938343))

(assert (= (and d!1168316 (not c!684329)) b!3938344))

(assert (= (and d!1168316 res!1593780) b!3938345))

(assert (= (and b!3938345 res!1593781) b!3938346))

(declare-fun m!4506813 () Bool)

(assert (=> b!3938345 m!4506813))

(assert (=> b!3938345 m!4505743))

(assert (=> b!3938345 m!4506173))

(declare-fun m!4506815 () Bool)

(assert (=> b!3938344 m!4506815))

(declare-fun m!4506817 () Bool)

(assert (=> d!1168316 m!4506817))

(assert (=> d!1168316 m!4506087))

(assert (=> d!1168316 m!4506179))

(assert (=> b!3937682 d!1168316))

(declare-fun d!1168318 () Bool)

(declare-fun lt!1377299 () List!41926)

(assert (=> d!1168318 (= (++!10817 lt!1377003 lt!1377299) prefix!426)))

(declare-fun e!2436586 () List!41926)

(assert (=> d!1168318 (= lt!1377299 e!2436586)))

(declare-fun c!684330 () Bool)

(assert (=> d!1168318 (= c!684330 ((_ is Cons!41802) lt!1377003))))

(assert (=> d!1168318 (>= (size!31361 prefix!426) (size!31361 lt!1377003))))

(assert (=> d!1168318 (= (getSuffix!2080 prefix!426 lt!1377003) lt!1377299)))

(declare-fun b!3938347 () Bool)

(assert (=> b!3938347 (= e!2436586 (getSuffix!2080 (tail!6093 prefix!426) (t!326505 lt!1377003)))))

(declare-fun b!3938348 () Bool)

(assert (=> b!3938348 (= e!2436586 prefix!426)))

(assert (= (and d!1168318 c!684330) b!3938347))

(assert (= (and d!1168318 (not c!684330)) b!3938348))

(declare-fun m!4506819 () Bool)

(assert (=> d!1168318 m!4506819))

(assert (=> d!1168318 m!4505821))

(assert (=> d!1168318 m!4505743))

(assert (=> b!3938347 m!4506301))

(assert (=> b!3938347 m!4506301))

(declare-fun m!4506821 () Bool)

(assert (=> b!3938347 m!4506821))

(assert (=> b!3937682 d!1168318))

(declare-fun b!3938349 () Bool)

(declare-fun e!2436587 () Bool)

(declare-fun e!2436589 () Bool)

(assert (=> b!3938349 (= e!2436587 e!2436589)))

(declare-fun res!1593785 () Bool)

(assert (=> b!3938349 (=> (not res!1593785) (not e!2436589))))

(assert (=> b!3938349 (= res!1593785 (not ((_ is Nil!41802) suffix!1176)))))

(declare-fun b!3938350 () Bool)

(declare-fun res!1593784 () Bool)

(assert (=> b!3938350 (=> (not res!1593784) (not e!2436589))))

(assert (=> b!3938350 (= res!1593784 (= (head!8367 Nil!41802) (head!8367 suffix!1176)))))

(declare-fun d!1168320 () Bool)

(declare-fun e!2436588 () Bool)

(assert (=> d!1168320 e!2436588))

(declare-fun res!1593782 () Bool)

(assert (=> d!1168320 (=> res!1593782 e!2436588)))

(declare-fun lt!1377300 () Bool)

(assert (=> d!1168320 (= res!1593782 (not lt!1377300))))

(assert (=> d!1168320 (= lt!1377300 e!2436587)))

(declare-fun res!1593783 () Bool)

(assert (=> d!1168320 (=> res!1593783 e!2436587)))

(assert (=> d!1168320 (= res!1593783 ((_ is Nil!41802) Nil!41802))))

(assert (=> d!1168320 (= (isPrefix!3625 Nil!41802 suffix!1176) lt!1377300)))

(declare-fun b!3938352 () Bool)

(assert (=> b!3938352 (= e!2436588 (>= (size!31361 suffix!1176) (size!31361 Nil!41802)))))

(declare-fun b!3938351 () Bool)

(assert (=> b!3938351 (= e!2436589 (isPrefix!3625 (tail!6093 Nil!41802) (tail!6093 suffix!1176)))))

(assert (= (and d!1168320 (not res!1593783)) b!3938349))

(assert (= (and b!3938349 res!1593785) b!3938350))

(assert (= (and b!3938350 res!1593784) b!3938351))

(assert (= (and d!1168320 (not res!1593782)) b!3938352))

(declare-fun m!4506823 () Bool)

(assert (=> b!3938350 m!4506823))

(declare-fun m!4506825 () Bool)

(assert (=> b!3938350 m!4506825))

(assert (=> b!3938352 m!4505723))

(assert (=> b!3938352 m!4505689))

(declare-fun m!4506827 () Bool)

(assert (=> b!3938351 m!4506827))

(declare-fun m!4506829 () Bool)

(assert (=> b!3938351 m!4506829))

(assert (=> b!3938351 m!4506827))

(assert (=> b!3938351 m!4506829))

(declare-fun m!4506831 () Bool)

(assert (=> b!3938351 m!4506831))

(assert (=> b!3937703 d!1168320))

(declare-fun b!3938353 () Bool)

(declare-fun e!2436590 () Bool)

(declare-fun e!2436592 () Bool)

(assert (=> b!3938353 (= e!2436590 e!2436592)))

(declare-fun res!1593789 () Bool)

(assert (=> b!3938353 (=> (not res!1593789) (not e!2436592))))

(assert (=> b!3938353 (= res!1593789 (not ((_ is Nil!41802) (++!10817 Nil!41802 suffix!1176))))))

(declare-fun b!3938354 () Bool)

(declare-fun res!1593788 () Bool)

(assert (=> b!3938354 (=> (not res!1593788) (not e!2436592))))

(assert (=> b!3938354 (= res!1593788 (= (head!8367 Nil!41802) (head!8367 (++!10817 Nil!41802 suffix!1176))))))

(declare-fun d!1168322 () Bool)

(declare-fun e!2436591 () Bool)

(assert (=> d!1168322 e!2436591))

(declare-fun res!1593786 () Bool)

(assert (=> d!1168322 (=> res!1593786 e!2436591)))

(declare-fun lt!1377301 () Bool)

(assert (=> d!1168322 (= res!1593786 (not lt!1377301))))

(assert (=> d!1168322 (= lt!1377301 e!2436590)))

(declare-fun res!1593787 () Bool)

(assert (=> d!1168322 (=> res!1593787 e!2436590)))

(assert (=> d!1168322 (= res!1593787 ((_ is Nil!41802) Nil!41802))))

(assert (=> d!1168322 (= (isPrefix!3625 Nil!41802 (++!10817 Nil!41802 suffix!1176)) lt!1377301)))

(declare-fun b!3938356 () Bool)

(assert (=> b!3938356 (= e!2436591 (>= (size!31361 (++!10817 Nil!41802 suffix!1176)) (size!31361 Nil!41802)))))

(declare-fun b!3938355 () Bool)

(assert (=> b!3938355 (= e!2436592 (isPrefix!3625 (tail!6093 Nil!41802) (tail!6093 (++!10817 Nil!41802 suffix!1176))))))

(assert (= (and d!1168322 (not res!1593787)) b!3938353))

(assert (= (and b!3938353 res!1593789) b!3938354))

(assert (= (and b!3938354 res!1593788) b!3938355))

(assert (= (and d!1168322 (not res!1593786)) b!3938356))

(assert (=> b!3938354 m!4506823))

(assert (=> b!3938354 m!4505791))

(declare-fun m!4506833 () Bool)

(assert (=> b!3938354 m!4506833))

(assert (=> b!3938356 m!4505791))

(declare-fun m!4506835 () Bool)

(assert (=> b!3938356 m!4506835))

(assert (=> b!3938356 m!4505689))

(assert (=> b!3938355 m!4506827))

(assert (=> b!3938355 m!4505791))

(declare-fun m!4506837 () Bool)

(assert (=> b!3938355 m!4506837))

(assert (=> b!3938355 m!4506827))

(assert (=> b!3938355 m!4506837))

(declare-fun m!4506839 () Bool)

(assert (=> b!3938355 m!4506839))

(assert (=> b!3937703 d!1168322))

(declare-fun b!3938360 () Bool)

(declare-fun e!2436594 () Bool)

(declare-fun lt!1377302 () List!41926)

(assert (=> b!3938360 (= e!2436594 (or (not (= suffix!1176 Nil!41802)) (= lt!1377302 Nil!41802)))))

(declare-fun b!3938359 () Bool)

(declare-fun res!1593791 () Bool)

(assert (=> b!3938359 (=> (not res!1593791) (not e!2436594))))

(assert (=> b!3938359 (= res!1593791 (= (size!31361 lt!1377302) (+ (size!31361 Nil!41802) (size!31361 suffix!1176))))))

(declare-fun b!3938358 () Bool)

(declare-fun e!2436593 () List!41926)

(assert (=> b!3938358 (= e!2436593 (Cons!41802 (h!47222 Nil!41802) (++!10817 (t!326505 Nil!41802) suffix!1176)))))

(declare-fun d!1168324 () Bool)

(assert (=> d!1168324 e!2436594))

(declare-fun res!1593790 () Bool)

(assert (=> d!1168324 (=> (not res!1593790) (not e!2436594))))

(assert (=> d!1168324 (= res!1593790 (= (content!6305 lt!1377302) ((_ map or) (content!6305 Nil!41802) (content!6305 suffix!1176))))))

(assert (=> d!1168324 (= lt!1377302 e!2436593)))

(declare-fun c!684331 () Bool)

(assert (=> d!1168324 (= c!684331 ((_ is Nil!41802) Nil!41802))))

(assert (=> d!1168324 (= (++!10817 Nil!41802 suffix!1176) lt!1377302)))

(declare-fun b!3938357 () Bool)

(assert (=> b!3938357 (= e!2436593 suffix!1176)))

(assert (= (and d!1168324 c!684331) b!3938357))

(assert (= (and d!1168324 (not c!684331)) b!3938358))

(assert (= (and d!1168324 res!1593790) b!3938359))

(assert (= (and b!3938359 res!1593791) b!3938360))

(declare-fun m!4506841 () Bool)

(assert (=> b!3938359 m!4506841))

(assert (=> b!3938359 m!4505689))

(assert (=> b!3938359 m!4505723))

(declare-fun m!4506843 () Bool)

(assert (=> b!3938358 m!4506843))

(declare-fun m!4506845 () Bool)

(assert (=> d!1168324 m!4506845))

(assert (=> d!1168324 m!4506795))

(assert (=> d!1168324 m!4506181))

(assert (=> b!3937703 d!1168324))

(declare-fun d!1168326 () Bool)

(assert (=> d!1168326 (isPrefix!3625 Nil!41802 (++!10817 Nil!41802 suffix!1176))))

(declare-fun lt!1377303 () Unit!60327)

(assert (=> d!1168326 (= lt!1377303 (choose!23481 Nil!41802 suffix!1176))))

(assert (=> d!1168326 (= (lemmaConcatTwoListThenFirstIsPrefix!2488 Nil!41802 suffix!1176) lt!1377303)))

(declare-fun bs!586570 () Bool)

(assert (= bs!586570 d!1168326))

(assert (=> bs!586570 m!4505791))

(assert (=> bs!586570 m!4505791))

(assert (=> bs!586570 m!4505793))

(declare-fun m!4506847 () Bool)

(assert (=> bs!586570 m!4506847))

(assert (=> b!3937703 d!1168326))

(declare-fun e!2436597 () Bool)

(assert (=> b!3937684 (= tp!1198211 e!2436597)))

(declare-fun b!3938372 () Bool)

(declare-fun tp!1198308 () Bool)

(declare-fun tp!1198309 () Bool)

(assert (=> b!3938372 (= e!2436597 (and tp!1198308 tp!1198309))))

(declare-fun b!3938373 () Bool)

(declare-fun tp!1198306 () Bool)

(assert (=> b!3938373 (= e!2436597 tp!1198306)))

(declare-fun b!3938374 () Bool)

(declare-fun tp!1198307 () Bool)

(declare-fun tp!1198305 () Bool)

(assert (=> b!3938374 (= e!2436597 (and tp!1198307 tp!1198305))))

(declare-fun b!3938371 () Bool)

(assert (=> b!3938371 (= e!2436597 tp_is_empty!19841)))

(assert (= (and b!3937684 ((_ is ElementMatch!11435) (regex!6530 (h!47224 rules!2768)))) b!3938371))

(assert (= (and b!3937684 ((_ is Concat!18196) (regex!6530 (h!47224 rules!2768)))) b!3938372))

(assert (= (and b!3937684 ((_ is Star!11435) (regex!6530 (h!47224 rules!2768)))) b!3938373))

(assert (= (and b!3937684 ((_ is Union!11435) (regex!6530 (h!47224 rules!2768)))) b!3938374))

(declare-fun b!3938379 () Bool)

(declare-fun e!2436600 () Bool)

(declare-fun tp!1198312 () Bool)

(assert (=> b!3938379 (= e!2436600 (and tp_is_empty!19841 tp!1198312))))

(assert (=> b!3937694 (= tp!1198217 e!2436600)))

(assert (= (and b!3937694 ((_ is Cons!41802) (t!326505 suffixResult!91))) b!3938379))

(declare-fun b!3938390 () Bool)

(declare-fun b_free!107597 () Bool)

(declare-fun b_next!108301 () Bool)

(assert (=> b!3938390 (= b_free!107597 (not b_next!108301))))

(declare-fun t!326581 () Bool)

(declare-fun tb!235925 () Bool)

(assert (=> (and b!3938390 (= (toValue!8990 (transformation!6530 (h!47224 (t!326507 rules!2768)))) (toValue!8990 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326581) tb!235925))

(declare-fun result!285796 () Bool)

(assert (= result!285796 result!285710))

(assert (=> d!1168072 t!326581))

(declare-fun tp!1198324 () Bool)

(declare-fun b_and!300815 () Bool)

(assert (=> b!3938390 (= tp!1198324 (and (=> t!326581 result!285796) b_and!300815))))

(declare-fun b_free!107599 () Bool)

(declare-fun b_next!108303 () Bool)

(assert (=> b!3938390 (= b_free!107599 (not b_next!108303))))

(declare-fun tb!235927 () Bool)

(declare-fun t!326583 () Bool)

(assert (=> (and b!3938390 (= (toChars!8849 (transformation!6530 (h!47224 (t!326507 rules!2768)))) (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326583) tb!235927))

(declare-fun result!285798 () Bool)

(assert (= result!285798 result!285702))

(assert (=> d!1168048 t!326583))

(declare-fun tb!235929 () Bool)

(declare-fun t!326585 () Bool)

(assert (=> (and b!3938390 (= (toChars!8849 (transformation!6530 (h!47224 (t!326507 rules!2768)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72))))) t!326585) tb!235929))

(declare-fun result!285800 () Bool)

(assert (= result!285800 result!285726))

(assert (=> b!3938019 t!326585))

(declare-fun tb!235931 () Bool)

(declare-fun t!326587 () Bool)

(assert (=> (and b!3938390 (= (toChars!8849 (transformation!6530 (h!47224 (t!326507 rules!2768)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80))))) t!326587) tb!235931))

(declare-fun result!285802 () Bool)

(assert (= result!285802 result!285746))

(assert (=> b!3938067 t!326587))

(declare-fun b_and!300817 () Bool)

(declare-fun tp!1198322 () Bool)

(assert (=> b!3938390 (= tp!1198322 (and (=> t!326583 result!285798) (=> t!326585 result!285800) (=> t!326587 result!285802) b_and!300817))))

(declare-fun e!2436611 () Bool)

(assert (=> b!3938390 (= e!2436611 (and tp!1198324 tp!1198322))))

(declare-fun e!2436609 () Bool)

(declare-fun tp!1198321 () Bool)

(declare-fun b!3938389 () Bool)

(assert (=> b!3938389 (= e!2436609 (and tp!1198321 (inv!56000 (tag!7390 (h!47224 (t!326507 rules!2768)))) (inv!56004 (transformation!6530 (h!47224 (t!326507 rules!2768)))) e!2436611))))

(declare-fun b!3938388 () Bool)

(declare-fun e!2436612 () Bool)

(declare-fun tp!1198323 () Bool)

(assert (=> b!3938388 (= e!2436612 (and e!2436609 tp!1198323))))

(assert (=> b!3937717 (= tp!1198208 e!2436612)))

(assert (= b!3938389 b!3938390))

(assert (= b!3938388 b!3938389))

(assert (= (and b!3937717 ((_ is Cons!41804) (t!326507 rules!2768))) b!3938388))

(declare-fun m!4506849 () Bool)

(assert (=> b!3938389 m!4506849))

(declare-fun m!4506851 () Bool)

(assert (=> b!3938389 m!4506851))

(declare-fun b!3938391 () Bool)

(declare-fun e!2436613 () Bool)

(declare-fun tp!1198325 () Bool)

(assert (=> b!3938391 (= e!2436613 (and tp_is_empty!19841 tp!1198325))))

(assert (=> b!3937678 (= tp!1198207 e!2436613)))

(assert (= (and b!3937678 ((_ is Cons!41802) (originalCharacters!7130 (h!47223 prefixTokens!80)))) b!3938391))

(declare-fun e!2436614 () Bool)

(assert (=> b!3937679 (= tp!1198204 e!2436614)))

(declare-fun b!3938393 () Bool)

(declare-fun tp!1198329 () Bool)

(declare-fun tp!1198330 () Bool)

(assert (=> b!3938393 (= e!2436614 (and tp!1198329 tp!1198330))))

(declare-fun b!3938394 () Bool)

(declare-fun tp!1198327 () Bool)

(assert (=> b!3938394 (= e!2436614 tp!1198327)))

(declare-fun b!3938395 () Bool)

(declare-fun tp!1198328 () Bool)

(declare-fun tp!1198326 () Bool)

(assert (=> b!3938395 (= e!2436614 (and tp!1198328 tp!1198326))))

(declare-fun b!3938392 () Bool)

(assert (=> b!3938392 (= e!2436614 tp_is_empty!19841)))

(assert (= (and b!3937679 ((_ is ElementMatch!11435) (regex!6530 (rule!9484 (h!47223 suffixTokens!72))))) b!3938392))

(assert (= (and b!3937679 ((_ is Concat!18196) (regex!6530 (rule!9484 (h!47223 suffixTokens!72))))) b!3938393))

(assert (= (and b!3937679 ((_ is Star!11435) (regex!6530 (rule!9484 (h!47223 suffixTokens!72))))) b!3938394))

(assert (= (and b!3937679 ((_ is Union!11435) (regex!6530 (rule!9484 (h!47223 suffixTokens!72))))) b!3938395))

(declare-fun b!3938396 () Bool)

(declare-fun e!2436615 () Bool)

(declare-fun tp!1198331 () Bool)

(assert (=> b!3938396 (= e!2436615 (and tp_is_empty!19841 tp!1198331))))

(assert (=> b!3937690 (= tp!1198210 e!2436615)))

(assert (= (and b!3937690 ((_ is Cons!41802) (t!326505 prefix!426))) b!3938396))

(declare-fun b!3938410 () Bool)

(declare-fun b_free!107601 () Bool)

(declare-fun b_next!108305 () Bool)

(assert (=> b!3938410 (= b_free!107601 (not b_next!108305))))

(declare-fun t!326589 () Bool)

(declare-fun tb!235933 () Bool)

(assert (=> (and b!3938410 (= (toValue!8990 (transformation!6530 (rule!9484 (h!47223 (t!326506 suffixTokens!72))))) (toValue!8990 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326589) tb!235933))

(declare-fun result!285806 () Bool)

(assert (= result!285806 result!285710))

(assert (=> d!1168072 t!326589))

(declare-fun b_and!300819 () Bool)

(declare-fun tp!1198344 () Bool)

(assert (=> b!3938410 (= tp!1198344 (and (=> t!326589 result!285806) b_and!300819))))

(declare-fun b_free!107603 () Bool)

(declare-fun b_next!108307 () Bool)

(assert (=> b!3938410 (= b_free!107603 (not b_next!108307))))

(declare-fun t!326591 () Bool)

(declare-fun tb!235935 () Bool)

(assert (=> (and b!3938410 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 suffixTokens!72))))) (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326591) tb!235935))

(declare-fun result!285808 () Bool)

(assert (= result!285808 result!285702))

(assert (=> d!1168048 t!326591))

(declare-fun t!326593 () Bool)

(declare-fun tb!235937 () Bool)

(assert (=> (and b!3938410 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 suffixTokens!72))))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72))))) t!326593) tb!235937))

(declare-fun result!285810 () Bool)

(assert (= result!285810 result!285726))

(assert (=> b!3938019 t!326593))

(declare-fun tb!235939 () Bool)

(declare-fun t!326595 () Bool)

(assert (=> (and b!3938410 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 suffixTokens!72))))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80))))) t!326595) tb!235939))

(declare-fun result!285812 () Bool)

(assert (= result!285812 result!285746))

(assert (=> b!3938067 t!326595))

(declare-fun tp!1198342 () Bool)

(declare-fun b_and!300821 () Bool)

(assert (=> b!3938410 (= tp!1198342 (and (=> t!326591 result!285808) (=> t!326593 result!285810) (=> t!326595 result!285812) b_and!300821))))

(declare-fun e!2436628 () Bool)

(declare-fun b!3938409 () Bool)

(declare-fun e!2436629 () Bool)

(declare-fun tp!1198343 () Bool)

(assert (=> b!3938409 (= e!2436628 (and tp!1198343 (inv!56000 (tag!7390 (rule!9484 (h!47223 (t!326506 suffixTokens!72))))) (inv!56004 (transformation!6530 (rule!9484 (h!47223 (t!326506 suffixTokens!72))))) e!2436629))))

(declare-fun e!2436631 () Bool)

(assert (=> b!3937669 (= tp!1198216 e!2436631)))

(declare-fun tp!1198346 () Bool)

(declare-fun b!3938407 () Bool)

(declare-fun e!2436633 () Bool)

(assert (=> b!3938407 (= e!2436631 (and (inv!56003 (h!47223 (t!326506 suffixTokens!72))) e!2436633 tp!1198346))))

(assert (=> b!3938410 (= e!2436629 (and tp!1198344 tp!1198342))))

(declare-fun b!3938408 () Bool)

(declare-fun tp!1198345 () Bool)

(assert (=> b!3938408 (= e!2436633 (and (inv!21 (value!206739 (h!47223 (t!326506 suffixTokens!72)))) e!2436628 tp!1198345))))

(assert (= b!3938409 b!3938410))

(assert (= b!3938408 b!3938409))

(assert (= b!3938407 b!3938408))

(assert (= (and b!3937669 ((_ is Cons!41803) (t!326506 suffixTokens!72))) b!3938407))

(declare-fun m!4506853 () Bool)

(assert (=> b!3938409 m!4506853))

(declare-fun m!4506855 () Bool)

(assert (=> b!3938409 m!4506855))

(declare-fun m!4506857 () Bool)

(assert (=> b!3938407 m!4506857))

(declare-fun m!4506859 () Bool)

(assert (=> b!3938408 m!4506859))

(declare-fun e!2436634 () Bool)

(assert (=> b!3937680 (= tp!1198213 e!2436634)))

(declare-fun b!3938412 () Bool)

(declare-fun tp!1198350 () Bool)

(declare-fun tp!1198351 () Bool)

(assert (=> b!3938412 (= e!2436634 (and tp!1198350 tp!1198351))))

(declare-fun b!3938413 () Bool)

(declare-fun tp!1198348 () Bool)

(assert (=> b!3938413 (= e!2436634 tp!1198348)))

(declare-fun b!3938414 () Bool)

(declare-fun tp!1198349 () Bool)

(declare-fun tp!1198347 () Bool)

(assert (=> b!3938414 (= e!2436634 (and tp!1198349 tp!1198347))))

(declare-fun b!3938411 () Bool)

(assert (=> b!3938411 (= e!2436634 tp_is_empty!19841)))

(assert (= (and b!3937680 ((_ is ElementMatch!11435) (regex!6530 (rule!9484 (h!47223 prefixTokens!80))))) b!3938411))

(assert (= (and b!3937680 ((_ is Concat!18196) (regex!6530 (rule!9484 (h!47223 prefixTokens!80))))) b!3938412))

(assert (= (and b!3937680 ((_ is Star!11435) (regex!6530 (rule!9484 (h!47223 prefixTokens!80))))) b!3938413))

(assert (= (and b!3937680 ((_ is Union!11435) (regex!6530 (rule!9484 (h!47223 prefixTokens!80))))) b!3938414))

(declare-fun b!3938415 () Bool)

(declare-fun e!2436635 () Bool)

(declare-fun tp!1198352 () Bool)

(assert (=> b!3938415 (= e!2436635 (and tp_is_empty!19841 tp!1198352))))

(assert (=> b!3937670 (= tp!1198206 e!2436635)))

(assert (= (and b!3937670 ((_ is Cons!41802) (t!326505 suffix!1176))) b!3938415))

(declare-fun b!3938419 () Bool)

(declare-fun b_free!107605 () Bool)

(declare-fun b_next!108309 () Bool)

(assert (=> b!3938419 (= b_free!107605 (not b_next!108309))))

(declare-fun t!326597 () Bool)

(declare-fun tb!235941 () Bool)

(assert (=> (and b!3938419 (= (toValue!8990 (transformation!6530 (rule!9484 (h!47223 (t!326506 prefixTokens!80))))) (toValue!8990 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326597) tb!235941))

(declare-fun result!285814 () Bool)

(assert (= result!285814 result!285710))

(assert (=> d!1168072 t!326597))

(declare-fun b_and!300823 () Bool)

(declare-fun tp!1198355 () Bool)

(assert (=> b!3938419 (= tp!1198355 (and (=> t!326597 result!285814) b_and!300823))))

(declare-fun b_free!107607 () Bool)

(declare-fun b_next!108311 () Bool)

(assert (=> b!3938419 (= b_free!107607 (not b_next!108311))))

(declare-fun tb!235943 () Bool)

(declare-fun t!326599 () Bool)

(assert (=> (and b!3938419 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 prefixTokens!80))))) (toChars!8849 (transformation!6530 (rule!9484 (_1!23677 (v!39279 lt!1376994)))))) t!326599) tb!235943))

(declare-fun result!285816 () Bool)

(assert (= result!285816 result!285702))

(assert (=> d!1168048 t!326599))

(declare-fun tb!235945 () Bool)

(declare-fun t!326601 () Bool)

(assert (=> (and b!3938419 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 prefixTokens!80))))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72))))) t!326601) tb!235945))

(declare-fun result!285818 () Bool)

(assert (= result!285818 result!285726))

(assert (=> b!3938019 t!326601))

(declare-fun t!326603 () Bool)

(declare-fun tb!235947 () Bool)

(assert (=> (and b!3938419 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 prefixTokens!80))))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80))))) t!326603) tb!235947))

(declare-fun result!285820 () Bool)

(assert (= result!285820 result!285746))

(assert (=> b!3938067 t!326603))

(declare-fun b_and!300825 () Bool)

(declare-fun tp!1198353 () Bool)

(assert (=> b!3938419 (= tp!1198353 (and (=> t!326599 result!285816) (=> t!326601 result!285818) (=> t!326603 result!285820) b_and!300825))))

(declare-fun tp!1198354 () Bool)

(declare-fun e!2436636 () Bool)

(declare-fun e!2436637 () Bool)

(declare-fun b!3938418 () Bool)

(assert (=> b!3938418 (= e!2436636 (and tp!1198354 (inv!56000 (tag!7390 (rule!9484 (h!47223 (t!326506 prefixTokens!80))))) (inv!56004 (transformation!6530 (rule!9484 (h!47223 (t!326506 prefixTokens!80))))) e!2436637))))

(declare-fun e!2436639 () Bool)

(assert (=> b!3937671 (= tp!1198209 e!2436639)))

(declare-fun b!3938416 () Bool)

(declare-fun tp!1198357 () Bool)

(declare-fun e!2436641 () Bool)

(assert (=> b!3938416 (= e!2436639 (and (inv!56003 (h!47223 (t!326506 prefixTokens!80))) e!2436641 tp!1198357))))

(assert (=> b!3938419 (= e!2436637 (and tp!1198355 tp!1198353))))

(declare-fun tp!1198356 () Bool)

(declare-fun b!3938417 () Bool)

(assert (=> b!3938417 (= e!2436641 (and (inv!21 (value!206739 (h!47223 (t!326506 prefixTokens!80)))) e!2436636 tp!1198356))))

(assert (= b!3938418 b!3938419))

(assert (= b!3938417 b!3938418))

(assert (= b!3938416 b!3938417))

(assert (= (and b!3937671 ((_ is Cons!41803) (t!326506 prefixTokens!80))) b!3938416))

(declare-fun m!4506861 () Bool)

(assert (=> b!3938418 m!4506861))

(declare-fun m!4506863 () Bool)

(assert (=> b!3938418 m!4506863))

(declare-fun m!4506865 () Bool)

(assert (=> b!3938416 m!4506865))

(declare-fun m!4506867 () Bool)

(assert (=> b!3938417 m!4506867))

(declare-fun b!3938420 () Bool)

(declare-fun e!2436642 () Bool)

(declare-fun tp!1198358 () Bool)

(assert (=> b!3938420 (= e!2436642 (and tp_is_empty!19841 tp!1198358))))

(assert (=> b!3937713 (= tp!1198218 e!2436642)))

(assert (= (and b!3937713 ((_ is Cons!41802) (originalCharacters!7130 (h!47223 suffixTokens!72)))) b!3938420))

(declare-fun b_lambda!115187 () Bool)

(assert (= b_lambda!115179 (or (and b!3938410 b_free!107603 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 suffixTokens!72))))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))))) (and b!3937685 b_free!107575 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))))) (and b!3938390 b_free!107599 (= (toChars!8849 (transformation!6530 (h!47224 (t!326507 rules!2768)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))))) (and b!3937716 b_free!107583 (= (toChars!8849 (transformation!6530 (h!47224 rules!2768))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))))) (and b!3937699 b_free!107579) (and b!3938419 b_free!107607 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 prefixTokens!80))))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))))) b_lambda!115187)))

(declare-fun b_lambda!115189 () Bool)

(assert (= b_lambda!115173 (or (and b!3938390 b_free!107599 (= (toChars!8849 (transformation!6530 (h!47224 (t!326507 rules!2768)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))))) (and b!3937685 b_free!107575) (and b!3938410 b_free!107603 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 suffixTokens!72))))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))))) (and b!3937716 b_free!107583 (= (toChars!8849 (transformation!6530 (h!47224 rules!2768))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))))) (and b!3937699 b_free!107579 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 prefixTokens!80)))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))))) (and b!3938419 b_free!107607 (= (toChars!8849 (transformation!6530 (rule!9484 (h!47223 (t!326506 prefixTokens!80))))) (toChars!8849 (transformation!6530 (rule!9484 (h!47223 suffixTokens!72)))))) b_lambda!115189)))

(check-sat (not b!3938259) (not b!3938274) (not b!3937977) (not b!3938252) (not b!3938190) b_and!300819 (not b!3937974) (not b!3937915) (not b!3938068) (not b!3938415) (not d!1168106) (not b!3937979) (not b!3938189) (not b!3938355) (not b!3937825) (not d!1168324) (not d!1168100) b_and!300795 (not b!3938296) (not b!3938324) (not d!1168278) (not d!1168178) (not d!1168304) (not d!1168116) (not b!3938388) (not b!3938393) (not d!1168104) (not b!3938372) (not b!3938418) (not b_next!108309) (not d!1168060) (not b!3937966) (not b!3938251) (not b!3938315) (not d!1168200) b_and!300823 (not b!3938025) (not b!3938083) (not b!3938316) (not b_lambda!115167) (not b!3938021) (not b!3938168) b_and!300763 (not d!1168186) (not b!3938066) (not b!3938182) (not b!3938347) (not b!3938329) (not b!3938020) (not b!3938123) (not d!1168318) (not b!3938394) (not b!3938417) (not d!1168160) (not b!3938082) (not b!3937831) (not b!3938325) (not b!3938178) (not b!3938356) (not b!3938173) (not d!1168230) (not b!3938345) (not d!1168274) (not b!3938344) (not b!3938414) (not b!3938413) (not b_next!108303) (not b!3938341) (not b!3937823) (not b!3938409) (not d!1168192) (not b!3937965) (not b!3938276) (not b!3938279) b_and!300765 (not bm!285019) (not b!3938379) (not b!3938261) (not b!3938247) (not b!3938086) (not b!3938031) (not b_next!108277) (not b!3938064) (not b!3938030) (not b!3938351) (not b_next!108285) (not b!3938092) (not b!3937916) (not b!3937970) (not b_lambda!115187) (not b!3938111) (not d!1168102) (not b!3938281) (not d!1168306) (not b!3938328) (not d!1168054) (not d!1167986) (not b!3938396) (not b_lambda!115189) (not b!3938373) (not tb!235853) (not b!3937973) (not b!3937852) (not d!1168316) (not b!3938039) b_and!300817 (not b!3938407) (not b!3938359) (not b!3938354) (not b!3938412) b_and!300761 (not b!3937820) (not b!3938250) (not d!1168074) (not b!3938172) (not b!3938065) (not b!3938032) (not b!3938260) (not b!3938246) (not b!3938122) (not b!3938080) (not b!3938374) (not d!1168310) (not b!3937844) (not b_next!108287) (not d!1168294) (not b!3937964) b_and!300825 (not b!3938408) (not b!3938171) (not b!3938175) (not tb!235859) (not d!1168146) (not d!1168042) (not b!3938026) (not b!3938391) (not d!1168062) (not b!3938174) (not b!3937850) (not b!3938335) (not d!1168148) (not d!1168276) (not b!3938420) (not d!1168064) (not b!3938024) (not b!3938358) (not b!3937822) (not b!3938093) (not b!3938059) (not b!3938352) (not b_lambda!115169) (not b_next!108301) (not b!3937833) (not b!3938317) (not d!1168286) (not d!1168232) (not d!1168312) (not b!3938180) (not d!1168224) (not b!3938282) (not b!3938416) (not d!1168198) (not b!3938019) (not b!3938179) (not d!1168138) (not b!3938038) (not b_next!108307) (not tb!235889) (not b!3938295) (not b!3938336) (not b!3938389) (not b!3937817) (not b!3938188) (not b!3938169) (not d!1168234) (not d!1168044) (not b!3938110) (not d!1168058) (not b!3938058) (not b!3938037) (not b!3938067) (not b!3938184) (not b_next!108305) (not b!3937821) (not b!3938395) (not b!3937882) (not b!3938305) (not b!3938340) (not d!1168162) b_and!300821 (not b!3938350) (not d!1168052) (not d!1168282) (not b!3937824) (not b!3938275) (not d!1168046) (not b_next!108311) (not d!1168176) (not d!1168048) b_and!300791 (not d!1168326) (not d!1168118) (not d!1168302) (not d!1168308) (not b!3938170) (not d!1168134) (not b!3937836) (not d!1168114) (not b_next!108281) (not b!3937881) (not d!1168314) b_and!300793 (not b!3937819) (not tb!235871) (not b!3937880) (not b!3937969) (not d!1168098) tp_is_empty!19841 (not b!3938069) (not d!1167990) b_and!300815 (not d!1168132) (not b!3938185) (not b!3937896) (not b_next!108283) (not b!3937839) (not b_next!108279))
(check-sat b_and!300819 b_and!300795 (not b_next!108309) b_and!300823 b_and!300763 (not b_next!108277) (not b_next!108285) b_and!300817 b_and!300761 (not b_next!108287) b_and!300825 (not b_next!108301) (not b_next!108307) (not b_next!108305) b_and!300821 (not b_next!108281) b_and!300793 (not b_next!108303) b_and!300765 (not b_next!108311) b_and!300791 b_and!300815 (not b_next!108283) (not b_next!108279))
