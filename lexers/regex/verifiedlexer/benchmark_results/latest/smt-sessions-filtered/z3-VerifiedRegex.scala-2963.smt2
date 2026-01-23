; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!175906 () Bool)

(assert start!175906)

(declare-fun b!1772299 () Bool)

(declare-fun b_free!49039 () Bool)

(declare-fun b_next!49743 () Bool)

(assert (=> b!1772299 (= b_free!49039 (not b_next!49743))))

(declare-fun tp!502409 () Bool)

(declare-fun b_and!134867 () Bool)

(assert (=> b!1772299 (= tp!502409 b_and!134867)))

(declare-fun b_free!49041 () Bool)

(declare-fun b_next!49745 () Bool)

(assert (=> b!1772299 (= b_free!49041 (not b_next!49745))))

(declare-fun tp!502408 () Bool)

(declare-fun b_and!134869 () Bool)

(assert (=> b!1772299 (= tp!502408 b_and!134869)))

(declare-fun b!1772285 () Bool)

(declare-fun b_free!49043 () Bool)

(declare-fun b_next!49747 () Bool)

(assert (=> b!1772285 (= b_free!49043 (not b_next!49747))))

(declare-fun tp!502400 () Bool)

(declare-fun b_and!134871 () Bool)

(assert (=> b!1772285 (= tp!502400 b_and!134871)))

(declare-fun b_free!49045 () Bool)

(declare-fun b_next!49749 () Bool)

(assert (=> b!1772285 (= b_free!49045 (not b_next!49749))))

(declare-fun tp!502399 () Bool)

(declare-fun b_and!134873 () Bool)

(assert (=> b!1772285 (= tp!502399 b_and!134873)))

(declare-fun b!1772272 () Bool)

(declare-fun b_free!49047 () Bool)

(declare-fun b_next!49751 () Bool)

(assert (=> b!1772272 (= b_free!49047 (not b_next!49751))))

(declare-fun tp!502407 () Bool)

(declare-fun b_and!134875 () Bool)

(assert (=> b!1772272 (= tp!502407 b_and!134875)))

(declare-fun b_free!49049 () Bool)

(declare-fun b_next!49753 () Bool)

(assert (=> b!1772272 (= b_free!49049 (not b_next!49753))))

(declare-fun tp!502405 () Bool)

(declare-fun b_and!134877 () Bool)

(assert (=> b!1772272 (= tp!502405 b_and!134877)))

(declare-fun b!1772312 () Bool)

(declare-fun e!1134019 () Bool)

(assert (=> b!1772312 (= e!1134019 true)))

(declare-fun b!1772311 () Bool)

(declare-fun e!1134018 () Bool)

(assert (=> b!1772311 (= e!1134018 e!1134019)))

(declare-fun b!1772310 () Bool)

(declare-fun e!1134017 () Bool)

(assert (=> b!1772310 (= e!1134017 e!1134018)))

(declare-fun b!1772289 () Bool)

(assert (=> b!1772289 e!1134017))

(assert (= b!1772311 b!1772312))

(assert (= b!1772310 b!1772311))

(assert (= b!1772289 b!1772310))

(declare-fun lambda!70460 () Int)

(declare-fun order!12459 () Int)

(declare-fun order!12461 () Int)

(declare-datatypes ((List!19571 0))(
  ( (Nil!19501) (Cons!19501 (h!24902 (_ BitVec 16)) (t!165486 List!19571)) )
))
(declare-datatypes ((TokenValue!3577 0))(
  ( (FloatLiteralValue!7154 (text!25484 List!19571)) (TokenValueExt!3576 (__x!12456 Int)) (Broken!17885 (value!109026 List!19571)) (Object!3646) (End!3577) (Def!3577) (Underscore!3577) (Match!3577) (Else!3577) (Error!3577) (Case!3577) (If!3577) (Extends!3577) (Abstract!3577) (Class!3577) (Val!3577) (DelimiterValue!7154 (del!3637 List!19571)) (KeywordValue!3583 (value!109027 List!19571)) (CommentValue!7154 (value!109028 List!19571)) (WhitespaceValue!7154 (value!109029 List!19571)) (IndentationValue!3577 (value!109030 List!19571)) (String!22216) (Int32!3577) (Broken!17886 (value!109031 List!19571)) (Boolean!3578) (Unit!33709) (OperatorValue!3580 (op!3637 List!19571)) (IdentifierValue!7154 (value!109032 List!19571)) (IdentifierValue!7155 (value!109033 List!19571)) (WhitespaceValue!7155 (value!109034 List!19571)) (True!7154) (False!7154) (Broken!17887 (value!109035 List!19571)) (Broken!17888 (value!109036 List!19571)) (True!7155) (RightBrace!3577) (RightBracket!3577) (Colon!3577) (Null!3577) (Comma!3577) (LeftBracket!3577) (False!7155) (LeftBrace!3577) (ImaginaryLiteralValue!3577 (text!25485 List!19571)) (StringLiteralValue!10731 (value!109037 List!19571)) (EOFValue!3577 (value!109038 List!19571)) (IdentValue!3577 (value!109039 List!19571)) (DelimiterValue!7155 (value!109040 List!19571)) (DedentValue!3577 (value!109041 List!19571)) (NewLineValue!3577 (value!109042 List!19571)) (IntegerValue!10731 (value!109043 (_ BitVec 32)) (text!25486 List!19571)) (IntegerValue!10732 (value!109044 Int) (text!25487 List!19571)) (Times!3577) (Or!3577) (Equal!3577) (Minus!3577) (Broken!17889 (value!109045 List!19571)) (And!3577) (Div!3577) (LessEqual!3577) (Mod!3577) (Concat!8392) (Not!3577) (Plus!3577) (SpaceValue!3577 (value!109046 List!19571)) (IntegerValue!10733 (value!109047 Int) (text!25488 List!19571)) (StringLiteralValue!10732 (text!25489 List!19571)) (FloatLiteralValue!7155 (text!25490 List!19571)) (BytesLiteralValue!3577 (value!109048 List!19571)) (CommentValue!7155 (value!109049 List!19571)) (StringLiteralValue!10733 (value!109050 List!19571)) (ErrorTokenValue!3577 (msg!3638 List!19571)) )
))
(declare-datatypes ((C!9804 0))(
  ( (C!9805 (val!5498 Int)) )
))
(declare-datatypes ((List!19572 0))(
  ( (Nil!19502) (Cons!19502 (h!24903 C!9804) (t!165487 List!19572)) )
))
(declare-datatypes ((String!22217 0))(
  ( (String!22218 (value!109051 String)) )
))
(declare-datatypes ((Regex!4815 0))(
  ( (ElementMatch!4815 (c!288660 C!9804)) (Concat!8393 (regOne!10142 Regex!4815) (regTwo!10142 Regex!4815)) (EmptyExpr!4815) (Star!4815 (reg!5144 Regex!4815)) (EmptyLang!4815) (Union!4815 (regOne!10143 Regex!4815) (regTwo!10143 Regex!4815)) )
))
(declare-datatypes ((IArray!12979 0))(
  ( (IArray!12980 (innerList!6547 List!19572)) )
))
(declare-datatypes ((Conc!6487 0))(
  ( (Node!6487 (left!15616 Conc!6487) (right!15946 Conc!6487) (csize!13204 Int) (cheight!6698 Int)) (Leaf!9451 (xs!9363 IArray!12979) (csize!13205 Int)) (Empty!6487) )
))
(declare-datatypes ((BalanceConc!12918 0))(
  ( (BalanceConc!12919 (c!288661 Conc!6487)) )
))
(declare-datatypes ((TokenValueInjection!6814 0))(
  ( (TokenValueInjection!6815 (toValue!5014 Int) (toChars!4873 Int)) )
))
(declare-datatypes ((Rule!6774 0))(
  ( (Rule!6775 (regex!3487 Regex!4815) (tag!3869 String!22217) (isSeparator!3487 Bool) (transformation!3487 TokenValueInjection!6814)) )
))
(declare-datatypes ((Token!6540 0))(
  ( (Token!6541 (value!109052 TokenValue!3577) (rule!5535 Rule!6774) (size!15492 Int) (originalCharacters!4301 List!19572)) )
))
(declare-datatypes ((tuple2!19110 0))(
  ( (tuple2!19111 (_1!10957 Token!6540) (_2!10957 List!19572)) )
))
(declare-fun lt!686207 () tuple2!19110)

(declare-fun dynLambda!9476 (Int Int) Int)

(declare-fun dynLambda!9477 (Int Int) Int)

(assert (=> b!1772312 (< (dynLambda!9476 order!12459 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) (dynLambda!9477 order!12461 lambda!70460))))

(declare-fun order!12463 () Int)

(declare-fun dynLambda!9478 (Int Int) Int)

(assert (=> b!1772312 (< (dynLambda!9478 order!12463 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) (dynLambda!9477 order!12461 lambda!70460))))

(declare-fun b!1772270 () Bool)

(declare-fun e!1133998 () Bool)

(declare-fun e!1133985 () Bool)

(assert (=> b!1772270 (= e!1133998 e!1133985)))

(declare-fun res!798142 () Bool)

(assert (=> b!1772270 (=> (not res!798142) (not e!1133985))))

(declare-datatypes ((Option!3996 0))(
  ( (None!3995) (Some!3995 (v!25472 tuple2!19110)) )
))
(declare-fun lt!686189 () Option!3996)

(declare-fun isDefined!3339 (Option!3996) Bool)

(assert (=> b!1772270 (= res!798142 (isDefined!3339 lt!686189))))

(declare-datatypes ((LexerInterface!3116 0))(
  ( (LexerInterfaceExt!3113 (__x!12457 Int)) (Lexer!3114) )
))
(declare-fun thiss!24550 () LexerInterface!3116)

(declare-fun lt!686202 () List!19572)

(declare-datatypes ((List!19573 0))(
  ( (Nil!19503) (Cons!19503 (h!24904 Rule!6774) (t!165488 List!19573)) )
))
(declare-fun rules!3447 () List!19573)

(declare-fun maxPrefix!1670 (LexerInterface!3116 List!19573 List!19572) Option!3996)

(assert (=> b!1772270 (= lt!686189 (maxPrefix!1670 thiss!24550 rules!3447 lt!686202))))

(declare-fun lt!686193 () BalanceConc!12918)

(declare-fun list!7925 (BalanceConc!12918) List!19572)

(assert (=> b!1772270 (= lt!686202 (list!7925 lt!686193))))

(declare-fun token!523 () Token!6540)

(declare-fun charsOf!2136 (Token!6540) BalanceConc!12918)

(assert (=> b!1772270 (= lt!686193 (charsOf!2136 token!523))))

(declare-fun b!1772271 () Bool)

(declare-fun e!1133991 () Bool)

(declare-fun e!1133996 () Bool)

(assert (=> b!1772271 (= e!1133991 e!1133996)))

(declare-fun res!798151 () Bool)

(assert (=> b!1772271 (=> res!798151 e!1133996)))

(declare-fun lt!686218 () Int)

(declare-fun size!15493 (BalanceConc!12918) Int)

(assert (=> b!1772271 (= res!798151 (<= lt!686218 (size!15493 lt!686193)))))

(declare-fun lt!686201 () Regex!4815)

(declare-fun matchR!2288 (Regex!4815 List!19572) Bool)

(assert (=> b!1772271 (matchR!2288 lt!686201 lt!686202)))

(declare-fun rule!422 () Rule!6774)

(declare-datatypes ((Unit!33710 0))(
  ( (Unit!33711) )
))
(declare-fun lt!686191 () Unit!33710)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!194 (LexerInterface!3116 List!19573 List!19572 Token!6540 Rule!6774 List!19572) Unit!33710)

(assert (=> b!1772271 (= lt!686191 (lemmaMaxPrefixThenMatchesRulesRegex!194 thiss!24550 rules!3447 lt!686202 token!523 rule!422 Nil!19502))))

(declare-fun e!1134010 () Bool)

(assert (=> b!1772272 (= e!1134010 (and tp!502407 tp!502405))))

(declare-fun b!1772273 () Bool)

(declare-fun e!1134005 () Bool)

(declare-fun e!1134006 () Bool)

(assert (=> b!1772273 (= e!1134005 e!1134006)))

(declare-fun res!798143 () Bool)

(assert (=> b!1772273 (=> (not res!798143) (not e!1134006))))

(declare-fun lt!686197 () Rule!6774)

(assert (=> b!1772273 (= res!798143 (matchR!2288 (regex!3487 lt!686197) (list!7925 (charsOf!2136 (_1!10957 lt!686207)))))))

(declare-datatypes ((Option!3997 0))(
  ( (None!3996) (Some!3996 (v!25473 Rule!6774)) )
))
(declare-fun lt!686199 () Option!3997)

(declare-fun get!5957 (Option!3997) Rule!6774)

(assert (=> b!1772273 (= lt!686197 (get!5957 lt!686199))))

(declare-fun b!1772274 () Bool)

(declare-fun e!1133993 () Bool)

(declare-fun tp!502404 () Bool)

(declare-fun e!1133992 () Bool)

(declare-fun inv!25342 (String!22217) Bool)

(declare-fun inv!25347 (TokenValueInjection!6814) Bool)

(assert (=> b!1772274 (= e!1133992 (and tp!502404 (inv!25342 (tag!3869 (rule!5535 token!523))) (inv!25347 (transformation!3487 (rule!5535 token!523))) e!1133993))))

(declare-fun b!1772275 () Bool)

(declare-fun e!1133989 () Bool)

(declare-fun e!1133986 () Bool)

(assert (=> b!1772275 (= e!1133989 e!1133986)))

(declare-fun res!798148 () Bool)

(assert (=> b!1772275 (=> res!798148 e!1133986)))

(declare-fun lt!686223 () BalanceConc!12918)

(declare-fun lt!686206 () List!19572)

(declare-fun dynLambda!9479 (Int TokenValue!3577) BalanceConc!12918)

(declare-fun dynLambda!9480 (Int BalanceConc!12918) TokenValue!3577)

(assert (=> b!1772275 (= res!798148 (not (= (list!7925 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))) lt!686206)))))

(declare-fun lt!686220 () Unit!33710)

(declare-fun lemmaSemiInverse!625 (TokenValueInjection!6814 BalanceConc!12918) Unit!33710)

(assert (=> b!1772275 (= lt!686220 (lemmaSemiInverse!625 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) lt!686223))))

(declare-fun b!1772276 () Bool)

(declare-fun e!1133994 () Bool)

(declare-fun validRegex!1951 (Regex!4815) Bool)

(assert (=> b!1772276 (= e!1133994 (validRegex!1951 lt!686201))))

(declare-fun lt!686203 () List!19572)

(declare-fun isPrefix!1727 (List!19572 List!19572) Bool)

(assert (=> b!1772276 (isPrefix!1727 lt!686203 lt!686206)))

(declare-fun lt!686222 () List!19572)

(declare-fun lt!686216 () Unit!33710)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!135 (List!19572 List!19572 List!19572) Unit!33710)

(assert (=> b!1772276 (= lt!686216 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!135 lt!686206 lt!686203 lt!686222))))

(declare-fun b!1772277 () Bool)

(declare-fun e!1133987 () Bool)

(assert (=> b!1772277 (= e!1133987 e!1133994)))

(declare-fun res!798156 () Bool)

(assert (=> b!1772277 (=> res!798156 e!1133994)))

(assert (=> b!1772277 (= res!798156 (not (isPrefix!1727 lt!686203 lt!686222)))))

(declare-fun lt!686190 () List!19572)

(declare-fun ++!5311 (List!19572 List!19572) List!19572)

(declare-fun head!4120 (List!19572) C!9804)

(assert (=> b!1772277 (isPrefix!1727 (++!5311 lt!686202 (Cons!19502 (head!4120 lt!686190) Nil!19502)) lt!686222)))

(declare-fun lt!686212 () Unit!33710)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!263 (List!19572 List!19572) Unit!33710)

(assert (=> b!1772277 (= lt!686212 (lemmaAddHeadSuffixToPrefixStillPrefix!263 lt!686202 lt!686222))))

(declare-fun b!1772279 () Bool)

(declare-fun e!1134002 () Bool)

(declare-fun e!1134000 () Bool)

(declare-fun tp!502401 () Bool)

(assert (=> b!1772279 (= e!1134002 (and tp!502401 (inv!25342 (tag!3869 (h!24904 rules!3447))) (inv!25347 (transformation!3487 (h!24904 rules!3447))) e!1134000))))

(declare-fun b!1772280 () Bool)

(declare-fun e!1133999 () Bool)

(assert (=> b!1772280 (= e!1133986 e!1133999)))

(declare-fun res!798160 () Bool)

(assert (=> b!1772280 (=> res!798160 e!1133999)))

(declare-fun lt!686194 () TokenValue!3577)

(declare-fun lt!686198 () Option!3996)

(assert (=> b!1772280 (= res!798160 (not (= lt!686198 (Some!3995 (tuple2!19111 (Token!6541 lt!686194 (rule!5535 (_1!10957 lt!686207)) lt!686218 lt!686206) (_2!10957 lt!686207))))))))

(assert (=> b!1772280 (= lt!686218 (size!15493 lt!686223))))

(declare-fun apply!5287 (TokenValueInjection!6814 BalanceConc!12918) TokenValue!3577)

(assert (=> b!1772280 (= lt!686194 (apply!5287 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) lt!686223))))

(declare-fun lt!686221 () Unit!33710)

(declare-fun lemmaCharactersSize!545 (Token!6540) Unit!33710)

(assert (=> b!1772280 (= lt!686221 (lemmaCharactersSize!545 (_1!10957 lt!686207)))))

(declare-fun lt!686211 () Unit!33710)

(declare-fun lemmaEqSameImage!398 (TokenValueInjection!6814 BalanceConc!12918 BalanceConc!12918) Unit!33710)

(declare-fun seqFromList!2456 (List!19572) BalanceConc!12918)

(assert (=> b!1772280 (= lt!686211 (lemmaEqSameImage!398 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) lt!686223 (seqFromList!2456 (originalCharacters!4301 (_1!10957 lt!686207)))))))

(declare-fun b!1772281 () Bool)

(declare-fun e!1133984 () Bool)

(declare-fun e!1133995 () Bool)

(assert (=> b!1772281 (= e!1133984 e!1133995)))

(declare-fun res!798147 () Bool)

(assert (=> b!1772281 (=> res!798147 e!1133995)))

(assert (=> b!1772281 (= res!798147 (not (isPrefix!1727 lt!686206 lt!686222)))))

(assert (=> b!1772281 (isPrefix!1727 lt!686206 (++!5311 lt!686206 (_2!10957 lt!686207)))))

(declare-fun lt!686209 () Unit!33710)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1236 (List!19572 List!19572) Unit!33710)

(assert (=> b!1772281 (= lt!686209 (lemmaConcatTwoListThenFirstIsPrefix!1236 lt!686206 (_2!10957 lt!686207)))))

(assert (=> b!1772281 (= lt!686206 (list!7925 lt!686223))))

(assert (=> b!1772281 (= lt!686223 (charsOf!2136 (_1!10957 lt!686207)))))

(assert (=> b!1772281 e!1134005))

(declare-fun res!798145 () Bool)

(assert (=> b!1772281 (=> (not res!798145) (not e!1134005))))

(declare-fun isDefined!3340 (Option!3997) Bool)

(assert (=> b!1772281 (= res!798145 (isDefined!3340 lt!686199))))

(declare-fun getRuleFromTag!535 (LexerInterface!3116 List!19573 String!22217) Option!3997)

(assert (=> b!1772281 (= lt!686199 (getRuleFromTag!535 thiss!24550 rules!3447 (tag!3869 (rule!5535 (_1!10957 lt!686207)))))))

(declare-fun lt!686192 () Unit!33710)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!535 (LexerInterface!3116 List!19573 List!19572 Token!6540) Unit!33710)

(assert (=> b!1772281 (= lt!686192 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!535 thiss!24550 rules!3447 lt!686222 (_1!10957 lt!686207)))))

(declare-fun get!5958 (Option!3996) tuple2!19110)

(assert (=> b!1772281 (= lt!686207 (get!5958 lt!686198))))

(declare-fun suffix!1421 () List!19572)

(declare-fun lt!686214 () Unit!33710)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!638 (LexerInterface!3116 List!19573 List!19572 List!19572) Unit!33710)

(assert (=> b!1772281 (= lt!686214 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!638 thiss!24550 rules!3447 lt!686202 suffix!1421))))

(assert (=> b!1772281 (= lt!686198 (maxPrefix!1670 thiss!24550 rules!3447 lt!686222))))

(assert (=> b!1772281 (isPrefix!1727 lt!686202 lt!686222)))

(declare-fun lt!686215 () Unit!33710)

(assert (=> b!1772281 (= lt!686215 (lemmaConcatTwoListThenFirstIsPrefix!1236 lt!686202 suffix!1421))))

(assert (=> b!1772281 (= lt!686222 (++!5311 lt!686202 suffix!1421))))

(declare-fun b!1772282 () Bool)

(assert (=> b!1772282 (= e!1133996 e!1133987)))

(declare-fun res!798150 () Bool)

(assert (=> b!1772282 (=> res!798150 e!1133987)))

(assert (=> b!1772282 (= res!798150 (not (= lt!686190 suffix!1421)))))

(assert (=> b!1772282 (= suffix!1421 lt!686190)))

(declare-fun lt!686205 () Unit!33710)

(declare-fun lemmaSamePrefixThenSameSuffix!838 (List!19572 List!19572 List!19572 List!19572 List!19572) Unit!33710)

(assert (=> b!1772282 (= lt!686205 (lemmaSamePrefixThenSameSuffix!838 lt!686202 suffix!1421 lt!686202 lt!686190 lt!686222))))

(declare-fun getSuffix!894 (List!19572 List!19572) List!19572)

(assert (=> b!1772282 (= lt!686190 (getSuffix!894 lt!686222 lt!686202))))

(assert (=> b!1772282 (matchR!2288 lt!686201 lt!686206)))

(declare-fun lt!686196 () Unit!33710)

(assert (=> b!1772282 (= lt!686196 (lemmaMaxPrefixThenMatchesRulesRegex!194 thiss!24550 rules!3447 lt!686222 (_1!10957 lt!686207) (rule!5535 (_1!10957 lt!686207)) (_2!10957 lt!686207)))))

(declare-fun b!1772283 () Bool)

(declare-fun res!798162 () Bool)

(assert (=> b!1772283 (=> (not res!798162) (not e!1133998))))

(declare-fun isEmpty!12318 (List!19573) Bool)

(assert (=> b!1772283 (= res!798162 (not (isEmpty!12318 rules!3447)))))

(declare-fun b!1772284 () Bool)

(declare-fun e!1133990 () Bool)

(declare-fun tp!502406 () Bool)

(assert (=> b!1772284 (= e!1133990 (and tp!502406 (inv!25342 (tag!3869 rule!422)) (inv!25347 (transformation!3487 rule!422)) e!1134010))))

(assert (=> b!1772285 (= e!1133993 (and tp!502400 tp!502399))))

(declare-fun b!1772286 () Bool)

(declare-fun res!798153 () Bool)

(assert (=> b!1772286 (=> (not res!798153) (not e!1133998))))

(declare-fun rulesInvariant!2785 (LexerInterface!3116 List!19573) Bool)

(assert (=> b!1772286 (= res!798153 (rulesInvariant!2785 thiss!24550 rules!3447))))

(declare-fun b!1772287 () Bool)

(declare-fun res!798154 () Bool)

(assert (=> b!1772287 (=> res!798154 e!1133986)))

(assert (=> b!1772287 (= res!798154 (not (= lt!686223 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))))))

(declare-fun b!1772288 () Bool)

(declare-fun res!798155 () Bool)

(assert (=> b!1772288 (=> (not res!798155) (not e!1133998))))

(declare-fun contains!3519 (List!19573 Rule!6774) Bool)

(assert (=> b!1772288 (= res!798155 (contains!3519 rules!3447 rule!422))))

(assert (=> b!1772289 (= e!1133995 e!1133989)))

(declare-fun res!798149 () Bool)

(assert (=> b!1772289 (=> res!798149 e!1133989)))

(declare-fun Forall!854 (Int) Bool)

(assert (=> b!1772289 (= res!798149 (not (Forall!854 lambda!70460)))))

(declare-fun lt!686210 () Unit!33710)

(declare-fun lemmaInv!686 (TokenValueInjection!6814) Unit!33710)

(assert (=> b!1772289 (= lt!686210 (lemmaInv!686 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))))

(declare-fun b!1772290 () Bool)

(declare-fun res!798144 () Bool)

(declare-fun e!1134008 () Bool)

(assert (=> b!1772290 (=> (not res!798144) (not e!1134008))))

(declare-fun lt!686208 () tuple2!19110)

(declare-fun isEmpty!12319 (List!19572) Bool)

(assert (=> b!1772290 (= res!798144 (isEmpty!12319 (_2!10957 lt!686208)))))

(declare-fun b!1772291 () Bool)

(assert (=> b!1772291 (= e!1133999 e!1133991)))

(declare-fun res!798152 () Bool)

(assert (=> b!1772291 (=> res!798152 e!1133991)))

(declare-fun lt!686213 () List!19572)

(declare-fun lt!686217 () Option!3996)

(assert (=> b!1772291 (= res!798152 (or (not (= lt!686213 (_2!10957 lt!686207))) (not (= lt!686217 (Some!3995 (tuple2!19111 (_1!10957 lt!686207) lt!686213))))))))

(assert (=> b!1772291 (= (_2!10957 lt!686207) lt!686213)))

(declare-fun lt!686219 () Unit!33710)

(assert (=> b!1772291 (= lt!686219 (lemmaSamePrefixThenSameSuffix!838 lt!686206 (_2!10957 lt!686207) lt!686206 lt!686213 lt!686222))))

(assert (=> b!1772291 (= lt!686213 (getSuffix!894 lt!686222 lt!686206))))

(declare-fun lt!686200 () Int)

(declare-fun lt!686204 () TokenValue!3577)

(assert (=> b!1772291 (= lt!686217 (Some!3995 (tuple2!19111 (Token!6541 lt!686204 (rule!5535 (_1!10957 lt!686207)) lt!686200 lt!686206) (_2!10957 lt!686207))))))

(declare-fun maxPrefixOneRule!1039 (LexerInterface!3116 Rule!6774 List!19572) Option!3996)

(assert (=> b!1772291 (= lt!686217 (maxPrefixOneRule!1039 thiss!24550 (rule!5535 (_1!10957 lt!686207)) lt!686222))))

(declare-fun size!15494 (List!19572) Int)

(assert (=> b!1772291 (= lt!686200 (size!15494 lt!686206))))

(assert (=> b!1772291 (= lt!686204 (apply!5287 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) (seqFromList!2456 lt!686206)))))

(declare-fun lt!686224 () Unit!33710)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!417 (LexerInterface!3116 List!19573 List!19572 List!19572 List!19572 Rule!6774) Unit!33710)

(assert (=> b!1772291 (= lt!686224 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!417 thiss!24550 rules!3447 lt!686206 lt!686222 (_2!10957 lt!686207) (rule!5535 (_1!10957 lt!686207))))))

(declare-fun b!1772292 () Bool)

(declare-fun e!1133997 () Bool)

(declare-fun tp_is_empty!7873 () Bool)

(declare-fun tp!502403 () Bool)

(assert (=> b!1772292 (= e!1133997 (and tp_is_empty!7873 tp!502403))))

(declare-fun b!1772293 () Bool)

(declare-fun e!1134003 () Bool)

(assert (=> b!1772293 (= e!1134003 e!1133984)))

(declare-fun res!798158 () Bool)

(assert (=> b!1772293 (=> res!798158 e!1133984)))

(declare-fun prefixMatch!698 (Regex!4815 List!19572) Bool)

(assert (=> b!1772293 (= res!798158 (prefixMatch!698 lt!686201 lt!686203))))

(assert (=> b!1772293 (= lt!686203 (++!5311 lt!686202 (Cons!19502 (head!4120 suffix!1421) Nil!19502)))))

(declare-fun rulesRegex!843 (LexerInterface!3116 List!19573) Regex!4815)

(assert (=> b!1772293 (= lt!686201 (rulesRegex!843 thiss!24550 rules!3447))))

(declare-fun b!1772294 () Bool)

(assert (=> b!1772294 (= e!1134008 (not e!1134003))))

(declare-fun res!798159 () Bool)

(assert (=> b!1772294 (=> res!798159 e!1134003)))

(assert (=> b!1772294 (= res!798159 (not (matchR!2288 (regex!3487 rule!422) lt!686202)))))

(declare-fun ruleValid!985 (LexerInterface!3116 Rule!6774) Bool)

(assert (=> b!1772294 (ruleValid!985 thiss!24550 rule!422)))

(declare-fun lt!686195 () Unit!33710)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!508 (LexerInterface!3116 Rule!6774 List!19573) Unit!33710)

(assert (=> b!1772294 (= lt!686195 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!508 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1772295 () Bool)

(declare-fun res!798161 () Bool)

(assert (=> b!1772295 (=> res!798161 e!1134003)))

(assert (=> b!1772295 (= res!798161 (isEmpty!12319 suffix!1421))))

(declare-fun b!1772278 () Bool)

(declare-fun res!798140 () Bool)

(assert (=> b!1772278 (=> (not res!798140) (not e!1134008))))

(assert (=> b!1772278 (= res!798140 (= (rule!5535 token!523) rule!422))))

(declare-fun res!798157 () Bool)

(assert (=> start!175906 (=> (not res!798157) (not e!1133998))))

(get-info :version)

(assert (=> start!175906 (= res!798157 ((_ is Lexer!3114) thiss!24550))))

(assert (=> start!175906 e!1133998))

(assert (=> start!175906 e!1133997))

(assert (=> start!175906 e!1133990))

(assert (=> start!175906 true))

(declare-fun e!1134009 () Bool)

(declare-fun inv!25348 (Token!6540) Bool)

(assert (=> start!175906 (and (inv!25348 token!523) e!1134009)))

(declare-fun e!1134001 () Bool)

(assert (=> start!175906 e!1134001))

(declare-fun b!1772296 () Bool)

(declare-fun res!798146 () Bool)

(assert (=> b!1772296 (=> res!798146 e!1133995)))

(assert (=> b!1772296 (= res!798146 (not (matchR!2288 (regex!3487 (rule!5535 (_1!10957 lt!686207))) lt!686206)))))

(declare-fun b!1772297 () Bool)

(declare-fun tp!502402 () Bool)

(declare-fun inv!21 (TokenValue!3577) Bool)

(assert (=> b!1772297 (= e!1134009 (and (inv!21 (value!109052 token!523)) e!1133992 tp!502402))))

(declare-fun b!1772298 () Bool)

(declare-fun tp!502410 () Bool)

(assert (=> b!1772298 (= e!1134001 (and e!1134002 tp!502410))))

(assert (=> b!1772299 (= e!1134000 (and tp!502409 tp!502408))))

(declare-fun b!1772300 () Bool)

(assert (=> b!1772300 (= e!1134006 (= (rule!5535 (_1!10957 lt!686207)) lt!686197))))

(declare-fun b!1772301 () Bool)

(assert (=> b!1772301 (= e!1133985 e!1134008)))

(declare-fun res!798141 () Bool)

(assert (=> b!1772301 (=> (not res!798141) (not e!1134008))))

(assert (=> b!1772301 (= res!798141 (= (_1!10957 lt!686208) token!523))))

(assert (=> b!1772301 (= lt!686208 (get!5958 lt!686189))))

(assert (= (and start!175906 res!798157) b!1772283))

(assert (= (and b!1772283 res!798162) b!1772286))

(assert (= (and b!1772286 res!798153) b!1772288))

(assert (= (and b!1772288 res!798155) b!1772270))

(assert (= (and b!1772270 res!798142) b!1772301))

(assert (= (and b!1772301 res!798141) b!1772290))

(assert (= (and b!1772290 res!798144) b!1772278))

(assert (= (and b!1772278 res!798140) b!1772294))

(assert (= (and b!1772294 (not res!798159)) b!1772295))

(assert (= (and b!1772295 (not res!798161)) b!1772293))

(assert (= (and b!1772293 (not res!798158)) b!1772281))

(assert (= (and b!1772281 res!798145) b!1772273))

(assert (= (and b!1772273 res!798143) b!1772300))

(assert (= (and b!1772281 (not res!798147)) b!1772296))

(assert (= (and b!1772296 (not res!798146)) b!1772289))

(assert (= (and b!1772289 (not res!798149)) b!1772275))

(assert (= (and b!1772275 (not res!798148)) b!1772287))

(assert (= (and b!1772287 (not res!798154)) b!1772280))

(assert (= (and b!1772280 (not res!798160)) b!1772291))

(assert (= (and b!1772291 (not res!798152)) b!1772271))

(assert (= (and b!1772271 (not res!798151)) b!1772282))

(assert (= (and b!1772282 (not res!798150)) b!1772277))

(assert (= (and b!1772277 (not res!798156)) b!1772276))

(assert (= (and start!175906 ((_ is Cons!19502) suffix!1421)) b!1772292))

(assert (= b!1772284 b!1772272))

(assert (= start!175906 b!1772284))

(assert (= b!1772274 b!1772285))

(assert (= b!1772297 b!1772274))

(assert (= start!175906 b!1772297))

(assert (= b!1772279 b!1772299))

(assert (= b!1772298 b!1772279))

(assert (= (and start!175906 ((_ is Cons!19503) rules!3447)) b!1772298))

(declare-fun b_lambda!57751 () Bool)

(assert (=> (not b_lambda!57751) (not b!1772275)))

(declare-fun tb!107307 () Bool)

(declare-fun t!165469 () Bool)

(assert (=> (and b!1772299 (= (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165469) tb!107307))

(declare-fun b!1772317 () Bool)

(declare-fun tp!502413 () Bool)

(declare-fun e!1134022 () Bool)

(declare-fun inv!25349 (Conc!6487) Bool)

(assert (=> b!1772317 (= e!1134022 (and (inv!25349 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))) tp!502413))))

(declare-fun result!129070 () Bool)

(declare-fun inv!25350 (BalanceConc!12918) Bool)

(assert (=> tb!107307 (= result!129070 (and (inv!25350 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))) e!1134022))))

(assert (= tb!107307 b!1772317))

(declare-fun m!2191587 () Bool)

(assert (=> b!1772317 m!2191587))

(declare-fun m!2191589 () Bool)

(assert (=> tb!107307 m!2191589))

(assert (=> b!1772275 t!165469))

(declare-fun b_and!134879 () Bool)

(assert (= b_and!134869 (and (=> t!165469 result!129070) b_and!134879)))

(declare-fun tb!107309 () Bool)

(declare-fun t!165471 () Bool)

(assert (=> (and b!1772285 (= (toChars!4873 (transformation!3487 (rule!5535 token!523))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165471) tb!107309))

(declare-fun result!129074 () Bool)

(assert (= result!129074 result!129070))

(assert (=> b!1772275 t!165471))

(declare-fun b_and!134881 () Bool)

(assert (= b_and!134873 (and (=> t!165471 result!129074) b_and!134881)))

(declare-fun tb!107311 () Bool)

(declare-fun t!165473 () Bool)

(assert (=> (and b!1772272 (= (toChars!4873 (transformation!3487 rule!422)) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165473) tb!107311))

(declare-fun result!129076 () Bool)

(assert (= result!129076 result!129070))

(assert (=> b!1772275 t!165473))

(declare-fun b_and!134883 () Bool)

(assert (= b_and!134877 (and (=> t!165473 result!129076) b_and!134883)))

(declare-fun b_lambda!57753 () Bool)

(assert (=> (not b_lambda!57753) (not b!1772275)))

(declare-fun tb!107313 () Bool)

(declare-fun t!165475 () Bool)

(assert (=> (and b!1772299 (= (toValue!5014 (transformation!3487 (h!24904 rules!3447))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165475) tb!107313))

(declare-fun result!129078 () Bool)

(assert (=> tb!107313 (= result!129078 (inv!21 (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))

(declare-fun m!2191591 () Bool)

(assert (=> tb!107313 m!2191591))

(assert (=> b!1772275 t!165475))

(declare-fun b_and!134885 () Bool)

(assert (= b_and!134867 (and (=> t!165475 result!129078) b_and!134885)))

(declare-fun tb!107315 () Bool)

(declare-fun t!165477 () Bool)

(assert (=> (and b!1772285 (= (toValue!5014 (transformation!3487 (rule!5535 token!523))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165477) tb!107315))

(declare-fun result!129082 () Bool)

(assert (= result!129082 result!129078))

(assert (=> b!1772275 t!165477))

(declare-fun b_and!134887 () Bool)

(assert (= b_and!134871 (and (=> t!165477 result!129082) b_and!134887)))

(declare-fun t!165479 () Bool)

(declare-fun tb!107317 () Bool)

(assert (=> (and b!1772272 (= (toValue!5014 (transformation!3487 rule!422)) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165479) tb!107317))

(declare-fun result!129084 () Bool)

(assert (= result!129084 result!129078))

(assert (=> b!1772275 t!165479))

(declare-fun b_and!134889 () Bool)

(assert (= b_and!134875 (and (=> t!165479 result!129084) b_and!134889)))

(declare-fun b_lambda!57755 () Bool)

(assert (=> (not b_lambda!57755) (not b!1772287)))

(declare-fun tb!107319 () Bool)

(declare-fun t!165481 () Bool)

(assert (=> (and b!1772299 (= (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165481) tb!107319))

(declare-fun b!1772320 () Bool)

(declare-fun e!1134026 () Bool)

(declare-fun tp!502414 () Bool)

(assert (=> b!1772320 (= e!1134026 (and (inv!25349 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))) tp!502414))))

(declare-fun result!129086 () Bool)

(assert (=> tb!107319 (= result!129086 (and (inv!25350 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207)))) e!1134026))))

(assert (= tb!107319 b!1772320))

(declare-fun m!2191593 () Bool)

(assert (=> b!1772320 m!2191593))

(declare-fun m!2191595 () Bool)

(assert (=> tb!107319 m!2191595))

(assert (=> b!1772287 t!165481))

(declare-fun b_and!134891 () Bool)

(assert (= b_and!134879 (and (=> t!165481 result!129086) b_and!134891)))

(declare-fun t!165483 () Bool)

(declare-fun tb!107321 () Bool)

(assert (=> (and b!1772285 (= (toChars!4873 (transformation!3487 (rule!5535 token!523))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165483) tb!107321))

(declare-fun result!129088 () Bool)

(assert (= result!129088 result!129086))

(assert (=> b!1772287 t!165483))

(declare-fun b_and!134893 () Bool)

(assert (= b_and!134881 (and (=> t!165483 result!129088) b_and!134893)))

(declare-fun tb!107323 () Bool)

(declare-fun t!165485 () Bool)

(assert (=> (and b!1772272 (= (toChars!4873 (transformation!3487 rule!422)) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165485) tb!107323))

(declare-fun result!129090 () Bool)

(assert (= result!129090 result!129086))

(assert (=> b!1772287 t!165485))

(declare-fun b_and!134895 () Bool)

(assert (= b_and!134883 (and (=> t!165485 result!129090) b_and!134895)))

(declare-fun m!2191597 () Bool)

(assert (=> b!1772271 m!2191597))

(declare-fun m!2191599 () Bool)

(assert (=> b!1772271 m!2191599))

(declare-fun m!2191601 () Bool)

(assert (=> b!1772271 m!2191601))

(declare-fun m!2191603 () Bool)

(assert (=> b!1772291 m!2191603))

(declare-fun m!2191605 () Bool)

(assert (=> b!1772291 m!2191605))

(declare-fun m!2191607 () Bool)

(assert (=> b!1772291 m!2191607))

(declare-fun m!2191609 () Bool)

(assert (=> b!1772291 m!2191609))

(declare-fun m!2191611 () Bool)

(assert (=> b!1772291 m!2191611))

(assert (=> b!1772291 m!2191607))

(declare-fun m!2191613 () Bool)

(assert (=> b!1772291 m!2191613))

(declare-fun m!2191615 () Bool)

(assert (=> b!1772291 m!2191615))

(declare-fun m!2191617 () Bool)

(assert (=> b!1772270 m!2191617))

(declare-fun m!2191619 () Bool)

(assert (=> b!1772270 m!2191619))

(declare-fun m!2191621 () Bool)

(assert (=> b!1772270 m!2191621))

(declare-fun m!2191623 () Bool)

(assert (=> b!1772270 m!2191623))

(declare-fun m!2191625 () Bool)

(assert (=> start!175906 m!2191625))

(declare-fun m!2191627 () Bool)

(assert (=> b!1772286 m!2191627))

(declare-fun m!2191629 () Bool)

(assert (=> b!1772283 m!2191629))

(declare-fun m!2191631 () Bool)

(assert (=> b!1772296 m!2191631))

(declare-fun m!2191633 () Bool)

(assert (=> b!1772287 m!2191633))

(declare-fun m!2191635 () Bool)

(assert (=> b!1772294 m!2191635))

(declare-fun m!2191637 () Bool)

(assert (=> b!1772294 m!2191637))

(declare-fun m!2191639 () Bool)

(assert (=> b!1772294 m!2191639))

(declare-fun m!2191641 () Bool)

(assert (=> b!1772273 m!2191641))

(assert (=> b!1772273 m!2191641))

(declare-fun m!2191643 () Bool)

(assert (=> b!1772273 m!2191643))

(assert (=> b!1772273 m!2191643))

(declare-fun m!2191645 () Bool)

(assert (=> b!1772273 m!2191645))

(declare-fun m!2191647 () Bool)

(assert (=> b!1772273 m!2191647))

(declare-fun m!2191649 () Bool)

(assert (=> b!1772279 m!2191649))

(declare-fun m!2191651 () Bool)

(assert (=> b!1772279 m!2191651))

(declare-fun m!2191653 () Bool)

(assert (=> b!1772297 m!2191653))

(declare-fun m!2191655 () Bool)

(assert (=> b!1772288 m!2191655))

(declare-fun m!2191657 () Bool)

(assert (=> b!1772290 m!2191657))

(declare-fun m!2191659 () Bool)

(assert (=> b!1772282 m!2191659))

(declare-fun m!2191661 () Bool)

(assert (=> b!1772282 m!2191661))

(declare-fun m!2191663 () Bool)

(assert (=> b!1772282 m!2191663))

(declare-fun m!2191665 () Bool)

(assert (=> b!1772282 m!2191665))

(declare-fun m!2191667 () Bool)

(assert (=> b!1772274 m!2191667))

(declare-fun m!2191669 () Bool)

(assert (=> b!1772274 m!2191669))

(declare-fun m!2191671 () Bool)

(assert (=> b!1772301 m!2191671))

(declare-fun m!2191673 () Bool)

(assert (=> b!1772281 m!2191673))

(assert (=> b!1772281 m!2191641))

(declare-fun m!2191675 () Bool)

(assert (=> b!1772281 m!2191675))

(declare-fun m!2191677 () Bool)

(assert (=> b!1772281 m!2191677))

(declare-fun m!2191679 () Bool)

(assert (=> b!1772281 m!2191679))

(declare-fun m!2191681 () Bool)

(assert (=> b!1772281 m!2191681))

(declare-fun m!2191683 () Bool)

(assert (=> b!1772281 m!2191683))

(declare-fun m!2191685 () Bool)

(assert (=> b!1772281 m!2191685))

(declare-fun m!2191687 () Bool)

(assert (=> b!1772281 m!2191687))

(declare-fun m!2191689 () Bool)

(assert (=> b!1772281 m!2191689))

(declare-fun m!2191691 () Bool)

(assert (=> b!1772281 m!2191691))

(declare-fun m!2191693 () Bool)

(assert (=> b!1772281 m!2191693))

(declare-fun m!2191695 () Bool)

(assert (=> b!1772281 m!2191695))

(assert (=> b!1772281 m!2191687))

(declare-fun m!2191697 () Bool)

(assert (=> b!1772281 m!2191697))

(declare-fun m!2191699 () Bool)

(assert (=> b!1772281 m!2191699))

(declare-fun m!2191701 () Bool)

(assert (=> b!1772284 m!2191701))

(declare-fun m!2191703 () Bool)

(assert (=> b!1772284 m!2191703))

(declare-fun m!2191705 () Bool)

(assert (=> b!1772295 m!2191705))

(declare-fun m!2191707 () Bool)

(assert (=> b!1772289 m!2191707))

(declare-fun m!2191709 () Bool)

(assert (=> b!1772289 m!2191709))

(declare-fun m!2191711 () Bool)

(assert (=> b!1772280 m!2191711))

(declare-fun m!2191713 () Bool)

(assert (=> b!1772280 m!2191713))

(declare-fun m!2191715 () Bool)

(assert (=> b!1772280 m!2191715))

(declare-fun m!2191717 () Bool)

(assert (=> b!1772280 m!2191717))

(assert (=> b!1772280 m!2191711))

(declare-fun m!2191719 () Bool)

(assert (=> b!1772280 m!2191719))

(declare-fun m!2191721 () Bool)

(assert (=> b!1772293 m!2191721))

(declare-fun m!2191723 () Bool)

(assert (=> b!1772293 m!2191723))

(declare-fun m!2191725 () Bool)

(assert (=> b!1772293 m!2191725))

(declare-fun m!2191727 () Bool)

(assert (=> b!1772293 m!2191727))

(declare-fun m!2191729 () Bool)

(assert (=> b!1772276 m!2191729))

(declare-fun m!2191731 () Bool)

(assert (=> b!1772276 m!2191731))

(declare-fun m!2191733 () Bool)

(assert (=> b!1772276 m!2191733))

(declare-fun m!2191735 () Bool)

(assert (=> b!1772277 m!2191735))

(declare-fun m!2191737 () Bool)

(assert (=> b!1772277 m!2191737))

(assert (=> b!1772277 m!2191737))

(declare-fun m!2191739 () Bool)

(assert (=> b!1772277 m!2191739))

(declare-fun m!2191741 () Bool)

(assert (=> b!1772277 m!2191741))

(declare-fun m!2191743 () Bool)

(assert (=> b!1772277 m!2191743))

(declare-fun m!2191745 () Bool)

(assert (=> b!1772275 m!2191745))

(assert (=> b!1772275 m!2191745))

(declare-fun m!2191747 () Bool)

(assert (=> b!1772275 m!2191747))

(assert (=> b!1772275 m!2191747))

(declare-fun m!2191749 () Bool)

(assert (=> b!1772275 m!2191749))

(declare-fun m!2191751 () Bool)

(assert (=> b!1772275 m!2191751))

(check-sat b_and!134895 (not b!1772273) (not b!1772320) b_and!134885 (not start!175906) (not b!1772297) (not b!1772277) (not b!1772296) (not b_lambda!57753) (not b!1772283) (not b_next!49743) (not b_next!49751) (not b_lambda!57755) (not b!1772271) (not b_next!49747) (not b!1772270) (not b!1772298) (not tb!107313) (not b_next!49745) (not b!1772293) (not b!1772295) (not tb!107307) (not b!1772280) (not b_lambda!57751) (not b!1772284) (not b!1772290) (not b!1772288) tp_is_empty!7873 (not b!1772294) (not b!1772291) (not b!1772281) (not b_next!49753) (not b_next!49749) (not b!1772282) (not b!1772301) (not b!1772317) b_and!134889 (not b!1772286) b_and!134891 (not b!1772279) b_and!134893 b_and!134887 (not b!1772276) (not tb!107319) (not b!1772274) (not b!1772292) (not b!1772275) (not b!1772289))
(check-sat (not b_next!49747) (not b_next!49745) b_and!134895 b_and!134885 b_and!134889 b_and!134891 (not b_next!49743) (not b_next!49751) (not b_next!49753) (not b_next!49749) b_and!134893 b_and!134887)
(get-model)

(declare-fun d!541678 () Bool)

(declare-fun res!798167 () Bool)

(declare-fun e!1134029 () Bool)

(assert (=> d!541678 (=> (not res!798167) (not e!1134029))))

(assert (=> d!541678 (= res!798167 (not (isEmpty!12319 (originalCharacters!4301 token!523))))))

(assert (=> d!541678 (= (inv!25348 token!523) e!1134029)))

(declare-fun b!1772325 () Bool)

(declare-fun res!798168 () Bool)

(assert (=> b!1772325 (=> (not res!798168) (not e!1134029))))

(assert (=> b!1772325 (= res!798168 (= (originalCharacters!4301 token!523) (list!7925 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 token!523))) (value!109052 token!523)))))))

(declare-fun b!1772326 () Bool)

(assert (=> b!1772326 (= e!1134029 (= (size!15492 token!523) (size!15494 (originalCharacters!4301 token!523))))))

(assert (= (and d!541678 res!798167) b!1772325))

(assert (= (and b!1772325 res!798168) b!1772326))

(declare-fun b_lambda!57757 () Bool)

(assert (=> (not b_lambda!57757) (not b!1772325)))

(declare-fun tb!107325 () Bool)

(declare-fun t!165490 () Bool)

(assert (=> (and b!1772299 (= (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toChars!4873 (transformation!3487 (rule!5535 token!523)))) t!165490) tb!107325))

(declare-fun b!1772327 () Bool)

(declare-fun e!1134030 () Bool)

(declare-fun tp!502415 () Bool)

(assert (=> b!1772327 (= e!1134030 (and (inv!25349 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 token!523))) (value!109052 token!523)))) tp!502415))))

(declare-fun result!129092 () Bool)

(assert (=> tb!107325 (= result!129092 (and (inv!25350 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 token!523))) (value!109052 token!523))) e!1134030))))

(assert (= tb!107325 b!1772327))

(declare-fun m!2191753 () Bool)

(assert (=> b!1772327 m!2191753))

(declare-fun m!2191755 () Bool)

(assert (=> tb!107325 m!2191755))

(assert (=> b!1772325 t!165490))

(declare-fun b_and!134897 () Bool)

(assert (= b_and!134891 (and (=> t!165490 result!129092) b_and!134897)))

(declare-fun t!165492 () Bool)

(declare-fun tb!107327 () Bool)

(assert (=> (and b!1772285 (= (toChars!4873 (transformation!3487 (rule!5535 token!523))) (toChars!4873 (transformation!3487 (rule!5535 token!523)))) t!165492) tb!107327))

(declare-fun result!129094 () Bool)

(assert (= result!129094 result!129092))

(assert (=> b!1772325 t!165492))

(declare-fun b_and!134899 () Bool)

(assert (= b_and!134893 (and (=> t!165492 result!129094) b_and!134899)))

(declare-fun t!165494 () Bool)

(declare-fun tb!107329 () Bool)

(assert (=> (and b!1772272 (= (toChars!4873 (transformation!3487 rule!422)) (toChars!4873 (transformation!3487 (rule!5535 token!523)))) t!165494) tb!107329))

(declare-fun result!129096 () Bool)

(assert (= result!129096 result!129092))

(assert (=> b!1772325 t!165494))

(declare-fun b_and!134901 () Bool)

(assert (= b_and!134895 (and (=> t!165494 result!129096) b_and!134901)))

(declare-fun m!2191757 () Bool)

(assert (=> d!541678 m!2191757))

(declare-fun m!2191759 () Bool)

(assert (=> b!1772325 m!2191759))

(assert (=> b!1772325 m!2191759))

(declare-fun m!2191761 () Bool)

(assert (=> b!1772325 m!2191761))

(declare-fun m!2191763 () Bool)

(assert (=> b!1772326 m!2191763))

(assert (=> start!175906 d!541678))

(declare-fun d!541680 () Bool)

(declare-fun isBalanced!2029 (Conc!6487) Bool)

(assert (=> d!541680 (= (inv!25350 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))) (isBalanced!2029 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))))

(declare-fun bs!404768 () Bool)

(assert (= bs!404768 d!541680))

(declare-fun m!2191765 () Bool)

(assert (=> bs!404768 m!2191765))

(assert (=> tb!107307 d!541680))

(declare-fun d!541682 () Bool)

(assert (=> d!541682 (isPrefix!1727 (++!5311 lt!686202 (Cons!19502 (head!4120 (getSuffix!894 lt!686222 lt!686202)) Nil!19502)) lt!686222)))

(declare-fun lt!686229 () Unit!33710)

(declare-fun choose!11035 (List!19572 List!19572) Unit!33710)

(assert (=> d!541682 (= lt!686229 (choose!11035 lt!686202 lt!686222))))

(assert (=> d!541682 (isPrefix!1727 lt!686202 lt!686222)))

(assert (=> d!541682 (= (lemmaAddHeadSuffixToPrefixStillPrefix!263 lt!686202 lt!686222) lt!686229)))

(declare-fun bs!404769 () Bool)

(assert (= bs!404769 d!541682))

(assert (=> bs!404769 m!2191691))

(declare-fun m!2191767 () Bool)

(assert (=> bs!404769 m!2191767))

(assert (=> bs!404769 m!2191767))

(declare-fun m!2191769 () Bool)

(assert (=> bs!404769 m!2191769))

(declare-fun m!2191771 () Bool)

(assert (=> bs!404769 m!2191771))

(assert (=> bs!404769 m!2191661))

(declare-fun m!2191775 () Bool)

(assert (=> bs!404769 m!2191775))

(assert (=> bs!404769 m!2191661))

(assert (=> b!1772277 d!541682))

(declare-fun d!541688 () Bool)

(declare-fun e!1134045 () Bool)

(assert (=> d!541688 e!1134045))

(declare-fun res!798183 () Bool)

(assert (=> d!541688 (=> res!798183 e!1134045)))

(declare-fun lt!686239 () Bool)

(assert (=> d!541688 (= res!798183 (not lt!686239))))

(declare-fun e!1134044 () Bool)

(assert (=> d!541688 (= lt!686239 e!1134044)))

(declare-fun res!798185 () Bool)

(assert (=> d!541688 (=> res!798185 e!1134044)))

(assert (=> d!541688 (= res!798185 ((_ is Nil!19502) (++!5311 lt!686202 (Cons!19502 (head!4120 lt!686190) Nil!19502))))))

(assert (=> d!541688 (= (isPrefix!1727 (++!5311 lt!686202 (Cons!19502 (head!4120 lt!686190) Nil!19502)) lt!686222) lt!686239)))

(declare-fun b!1772351 () Bool)

(assert (=> b!1772351 (= e!1134045 (>= (size!15494 lt!686222) (size!15494 (++!5311 lt!686202 (Cons!19502 (head!4120 lt!686190) Nil!19502)))))))

(declare-fun b!1772348 () Bool)

(declare-fun e!1134043 () Bool)

(assert (=> b!1772348 (= e!1134044 e!1134043)))

(declare-fun res!798186 () Bool)

(assert (=> b!1772348 (=> (not res!798186) (not e!1134043))))

(assert (=> b!1772348 (= res!798186 (not ((_ is Nil!19502) lt!686222)))))

(declare-fun b!1772350 () Bool)

(declare-fun tail!2653 (List!19572) List!19572)

(assert (=> b!1772350 (= e!1134043 (isPrefix!1727 (tail!2653 (++!5311 lt!686202 (Cons!19502 (head!4120 lt!686190) Nil!19502))) (tail!2653 lt!686222)))))

(declare-fun b!1772349 () Bool)

(declare-fun res!798184 () Bool)

(assert (=> b!1772349 (=> (not res!798184) (not e!1134043))))

(assert (=> b!1772349 (= res!798184 (= (head!4120 (++!5311 lt!686202 (Cons!19502 (head!4120 lt!686190) Nil!19502))) (head!4120 lt!686222)))))

(assert (= (and d!541688 (not res!798185)) b!1772348))

(assert (= (and b!1772348 res!798186) b!1772349))

(assert (= (and b!1772349 res!798184) b!1772350))

(assert (= (and d!541688 (not res!798183)) b!1772351))

(declare-fun m!2191795 () Bool)

(assert (=> b!1772351 m!2191795))

(assert (=> b!1772351 m!2191737))

(declare-fun m!2191797 () Bool)

(assert (=> b!1772351 m!2191797))

(assert (=> b!1772350 m!2191737))

(declare-fun m!2191799 () Bool)

(assert (=> b!1772350 m!2191799))

(declare-fun m!2191801 () Bool)

(assert (=> b!1772350 m!2191801))

(assert (=> b!1772350 m!2191799))

(assert (=> b!1772350 m!2191801))

(declare-fun m!2191803 () Bool)

(assert (=> b!1772350 m!2191803))

(assert (=> b!1772349 m!2191737))

(declare-fun m!2191805 () Bool)

(assert (=> b!1772349 m!2191805))

(declare-fun m!2191807 () Bool)

(assert (=> b!1772349 m!2191807))

(assert (=> b!1772277 d!541688))

(declare-fun d!541696 () Bool)

(assert (=> d!541696 (= (head!4120 lt!686190) (h!24903 lt!686190))))

(assert (=> b!1772277 d!541696))

(declare-fun d!541698 () Bool)

(declare-fun e!1134057 () Bool)

(assert (=> d!541698 e!1134057))

(declare-fun res!798199 () Bool)

(assert (=> d!541698 (=> res!798199 e!1134057)))

(declare-fun lt!686243 () Bool)

(assert (=> d!541698 (= res!798199 (not lt!686243))))

(declare-fun e!1134056 () Bool)

(assert (=> d!541698 (= lt!686243 e!1134056)))

(declare-fun res!798201 () Bool)

(assert (=> d!541698 (=> res!798201 e!1134056)))

(assert (=> d!541698 (= res!798201 ((_ is Nil!19502) lt!686203))))

(assert (=> d!541698 (= (isPrefix!1727 lt!686203 lt!686222) lt!686243)))

(declare-fun b!1772367 () Bool)

(assert (=> b!1772367 (= e!1134057 (>= (size!15494 lt!686222) (size!15494 lt!686203)))))

(declare-fun b!1772364 () Bool)

(declare-fun e!1134055 () Bool)

(assert (=> b!1772364 (= e!1134056 e!1134055)))

(declare-fun res!798202 () Bool)

(assert (=> b!1772364 (=> (not res!798202) (not e!1134055))))

(assert (=> b!1772364 (= res!798202 (not ((_ is Nil!19502) lt!686222)))))

(declare-fun b!1772366 () Bool)

(assert (=> b!1772366 (= e!1134055 (isPrefix!1727 (tail!2653 lt!686203) (tail!2653 lt!686222)))))

(declare-fun b!1772365 () Bool)

(declare-fun res!798200 () Bool)

(assert (=> b!1772365 (=> (not res!798200) (not e!1134055))))

(assert (=> b!1772365 (= res!798200 (= (head!4120 lt!686203) (head!4120 lt!686222)))))

(assert (= (and d!541698 (not res!798201)) b!1772364))

(assert (= (and b!1772364 res!798202) b!1772365))

(assert (= (and b!1772365 res!798200) b!1772366))

(assert (= (and d!541698 (not res!798199)) b!1772367))

(assert (=> b!1772367 m!2191795))

(declare-fun m!2191821 () Bool)

(assert (=> b!1772367 m!2191821))

(declare-fun m!2191825 () Bool)

(assert (=> b!1772366 m!2191825))

(assert (=> b!1772366 m!2191801))

(assert (=> b!1772366 m!2191825))

(assert (=> b!1772366 m!2191801))

(declare-fun m!2191831 () Bool)

(assert (=> b!1772366 m!2191831))

(declare-fun m!2191833 () Bool)

(assert (=> b!1772365 m!2191833))

(assert (=> b!1772365 m!2191807))

(assert (=> b!1772277 d!541698))

(declare-fun d!541704 () Bool)

(declare-fun e!1134068 () Bool)

(assert (=> d!541704 e!1134068))

(declare-fun res!798214 () Bool)

(assert (=> d!541704 (=> (not res!798214) (not e!1134068))))

(declare-fun lt!686248 () List!19572)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2830 (List!19572) (InoxSet C!9804))

(assert (=> d!541704 (= res!798214 (= (content!2830 lt!686248) ((_ map or) (content!2830 lt!686202) (content!2830 (Cons!19502 (head!4120 lt!686190) Nil!19502)))))))

(declare-fun e!1134067 () List!19572)

(assert (=> d!541704 (= lt!686248 e!1134067)))

(declare-fun c!288668 () Bool)

(assert (=> d!541704 (= c!288668 ((_ is Nil!19502) lt!686202))))

(assert (=> d!541704 (= (++!5311 lt!686202 (Cons!19502 (head!4120 lt!686190) Nil!19502)) lt!686248)))

(declare-fun b!1772384 () Bool)

(assert (=> b!1772384 (= e!1134067 (Cons!19502 (head!4120 lt!686190) Nil!19502))))

(declare-fun b!1772386 () Bool)

(declare-fun res!798213 () Bool)

(assert (=> b!1772386 (=> (not res!798213) (not e!1134068))))

(assert (=> b!1772386 (= res!798213 (= (size!15494 lt!686248) (+ (size!15494 lt!686202) (size!15494 (Cons!19502 (head!4120 lt!686190) Nil!19502)))))))

(declare-fun b!1772385 () Bool)

(assert (=> b!1772385 (= e!1134067 (Cons!19502 (h!24903 lt!686202) (++!5311 (t!165487 lt!686202) (Cons!19502 (head!4120 lt!686190) Nil!19502))))))

(declare-fun b!1772387 () Bool)

(assert (=> b!1772387 (= e!1134068 (or (not (= (Cons!19502 (head!4120 lt!686190) Nil!19502) Nil!19502)) (= lt!686248 lt!686202)))))

(assert (= (and d!541704 c!288668) b!1772384))

(assert (= (and d!541704 (not c!288668)) b!1772385))

(assert (= (and d!541704 res!798214) b!1772386))

(assert (= (and b!1772386 res!798213) b!1772387))

(declare-fun m!2191849 () Bool)

(assert (=> d!541704 m!2191849))

(declare-fun m!2191851 () Bool)

(assert (=> d!541704 m!2191851))

(declare-fun m!2191853 () Bool)

(assert (=> d!541704 m!2191853))

(declare-fun m!2191855 () Bool)

(assert (=> b!1772386 m!2191855))

(declare-fun m!2191857 () Bool)

(assert (=> b!1772386 m!2191857))

(declare-fun m!2191859 () Bool)

(assert (=> b!1772386 m!2191859))

(declare-fun m!2191861 () Bool)

(assert (=> b!1772385 m!2191861))

(assert (=> b!1772277 d!541704))

(declare-fun b!1772406 () Bool)

(declare-fun res!798228 () Bool)

(declare-fun e!1134089 () Bool)

(assert (=> b!1772406 (=> res!798228 e!1134089)))

(assert (=> b!1772406 (= res!798228 (not ((_ is Concat!8393) lt!686201)))))

(declare-fun e!1134087 () Bool)

(assert (=> b!1772406 (= e!1134087 e!1134089)))

(declare-fun b!1772407 () Bool)

(declare-fun e!1134084 () Bool)

(assert (=> b!1772407 (= e!1134089 e!1134084)))

(declare-fun res!798229 () Bool)

(assert (=> b!1772407 (=> (not res!798229) (not e!1134084))))

(declare-fun call!111132 () Bool)

(assert (=> b!1772407 (= res!798229 call!111132)))

(declare-fun b!1772408 () Bool)

(declare-fun e!1134086 () Bool)

(assert (=> b!1772408 (= e!1134086 call!111132)))

(declare-fun b!1772409 () Bool)

(declare-fun call!111133 () Bool)

(assert (=> b!1772409 (= e!1134084 call!111133)))

(declare-fun b!1772411 () Bool)

(declare-fun e!1134088 () Bool)

(assert (=> b!1772411 (= e!1134088 e!1134087)))

(declare-fun c!288674 () Bool)

(assert (=> b!1772411 (= c!288674 ((_ is Union!4815) lt!686201))))

(declare-fun b!1772412 () Bool)

(declare-fun e!1134085 () Bool)

(declare-fun call!111131 () Bool)

(assert (=> b!1772412 (= e!1134085 call!111131)))

(declare-fun bm!111126 () Bool)

(assert (=> bm!111126 (= call!111132 call!111131)))

(declare-fun bm!111127 () Bool)

(assert (=> bm!111127 (= call!111133 (validRegex!1951 (ite c!288674 (regOne!10143 lt!686201) (regTwo!10142 lt!686201))))))

(declare-fun bm!111128 () Bool)

(declare-fun c!288673 () Bool)

(assert (=> bm!111128 (= call!111131 (validRegex!1951 (ite c!288673 (reg!5144 lt!686201) (ite c!288674 (regTwo!10143 lt!686201) (regOne!10142 lt!686201)))))))

(declare-fun b!1772413 () Bool)

(declare-fun res!798225 () Bool)

(assert (=> b!1772413 (=> (not res!798225) (not e!1134086))))

(assert (=> b!1772413 (= res!798225 call!111133)))

(assert (=> b!1772413 (= e!1134087 e!1134086)))

(declare-fun b!1772414 () Bool)

(declare-fun e!1134083 () Bool)

(assert (=> b!1772414 (= e!1134083 e!1134088)))

(assert (=> b!1772414 (= c!288673 ((_ is Star!4815) lt!686201))))

(declare-fun b!1772410 () Bool)

(assert (=> b!1772410 (= e!1134088 e!1134085)))

(declare-fun res!798227 () Bool)

(declare-fun nullable!1476 (Regex!4815) Bool)

(assert (=> b!1772410 (= res!798227 (not (nullable!1476 (reg!5144 lt!686201))))))

(assert (=> b!1772410 (=> (not res!798227) (not e!1134085))))

(declare-fun d!541710 () Bool)

(declare-fun res!798226 () Bool)

(assert (=> d!541710 (=> res!798226 e!1134083)))

(assert (=> d!541710 (= res!798226 ((_ is ElementMatch!4815) lt!686201))))

(assert (=> d!541710 (= (validRegex!1951 lt!686201) e!1134083)))

(assert (= (and d!541710 (not res!798226)) b!1772414))

(assert (= (and b!1772414 c!288673) b!1772410))

(assert (= (and b!1772414 (not c!288673)) b!1772411))

(assert (= (and b!1772410 res!798227) b!1772412))

(assert (= (and b!1772411 c!288674) b!1772413))

(assert (= (and b!1772411 (not c!288674)) b!1772406))

(assert (= (and b!1772413 res!798225) b!1772408))

(assert (= (and b!1772406 (not res!798228)) b!1772407))

(assert (= (and b!1772407 res!798229) b!1772409))

(assert (= (or b!1772413 b!1772409) bm!111127))

(assert (= (or b!1772408 b!1772407) bm!111126))

(assert (= (or b!1772412 bm!111126) bm!111128))

(declare-fun m!2191863 () Bool)

(assert (=> bm!111127 m!2191863))

(declare-fun m!2191865 () Bool)

(assert (=> bm!111128 m!2191865))

(declare-fun m!2191867 () Bool)

(assert (=> b!1772410 m!2191867))

(assert (=> b!1772276 d!541710))

(declare-fun d!541712 () Bool)

(declare-fun e!1134092 () Bool)

(assert (=> d!541712 e!1134092))

(declare-fun res!798230 () Bool)

(assert (=> d!541712 (=> res!798230 e!1134092)))

(declare-fun lt!686249 () Bool)

(assert (=> d!541712 (= res!798230 (not lt!686249))))

(declare-fun e!1134091 () Bool)

(assert (=> d!541712 (= lt!686249 e!1134091)))

(declare-fun res!798232 () Bool)

(assert (=> d!541712 (=> res!798232 e!1134091)))

(assert (=> d!541712 (= res!798232 ((_ is Nil!19502) lt!686203))))

(assert (=> d!541712 (= (isPrefix!1727 lt!686203 lt!686206) lt!686249)))

(declare-fun b!1772418 () Bool)

(assert (=> b!1772418 (= e!1134092 (>= (size!15494 lt!686206) (size!15494 lt!686203)))))

(declare-fun b!1772415 () Bool)

(declare-fun e!1134090 () Bool)

(assert (=> b!1772415 (= e!1134091 e!1134090)))

(declare-fun res!798233 () Bool)

(assert (=> b!1772415 (=> (not res!798233) (not e!1134090))))

(assert (=> b!1772415 (= res!798233 (not ((_ is Nil!19502) lt!686206)))))

(declare-fun b!1772417 () Bool)

(assert (=> b!1772417 (= e!1134090 (isPrefix!1727 (tail!2653 lt!686203) (tail!2653 lt!686206)))))

(declare-fun b!1772416 () Bool)

(declare-fun res!798231 () Bool)

(assert (=> b!1772416 (=> (not res!798231) (not e!1134090))))

(assert (=> b!1772416 (= res!798231 (= (head!4120 lt!686203) (head!4120 lt!686206)))))

(assert (= (and d!541712 (not res!798232)) b!1772415))

(assert (= (and b!1772415 res!798233) b!1772416))

(assert (= (and b!1772416 res!798231) b!1772417))

(assert (= (and d!541712 (not res!798230)) b!1772418))

(assert (=> b!1772418 m!2191613))

(assert (=> b!1772418 m!2191821))

(assert (=> b!1772417 m!2191825))

(declare-fun m!2191869 () Bool)

(assert (=> b!1772417 m!2191869))

(assert (=> b!1772417 m!2191825))

(assert (=> b!1772417 m!2191869))

(declare-fun m!2191871 () Bool)

(assert (=> b!1772417 m!2191871))

(assert (=> b!1772416 m!2191833))

(declare-fun m!2191873 () Bool)

(assert (=> b!1772416 m!2191873))

(assert (=> b!1772276 d!541712))

(declare-fun d!541714 () Bool)

(assert (=> d!541714 (isPrefix!1727 lt!686203 lt!686206)))

(declare-fun lt!686252 () Unit!33710)

(declare-fun choose!11036 (List!19572 List!19572 List!19572) Unit!33710)

(assert (=> d!541714 (= lt!686252 (choose!11036 lt!686206 lt!686203 lt!686222))))

(assert (=> d!541714 (isPrefix!1727 lt!686206 lt!686222)))

(assert (=> d!541714 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!135 lt!686206 lt!686203 lt!686222) lt!686252)))

(declare-fun bs!404773 () Bool)

(assert (= bs!404773 d!541714))

(assert (=> bs!404773 m!2191731))

(declare-fun m!2191875 () Bool)

(assert (=> bs!404773 m!2191875))

(assert (=> bs!404773 m!2191683))

(assert (=> b!1772276 d!541714))

(declare-fun d!541716 () Bool)

(declare-fun c!288679 () Bool)

(assert (=> d!541716 (= c!288679 ((_ is IntegerValue!10731) (value!109052 token!523)))))

(declare-fun e!1134099 () Bool)

(assert (=> d!541716 (= (inv!21 (value!109052 token!523)) e!1134099)))

(declare-fun b!1772429 () Bool)

(declare-fun res!798236 () Bool)

(declare-fun e!1134101 () Bool)

(assert (=> b!1772429 (=> res!798236 e!1134101)))

(assert (=> b!1772429 (= res!798236 (not ((_ is IntegerValue!10733) (value!109052 token!523))))))

(declare-fun e!1134100 () Bool)

(assert (=> b!1772429 (= e!1134100 e!1134101)))

(declare-fun b!1772430 () Bool)

(declare-fun inv!17 (TokenValue!3577) Bool)

(assert (=> b!1772430 (= e!1134100 (inv!17 (value!109052 token!523)))))

(declare-fun b!1772431 () Bool)

(declare-fun inv!16 (TokenValue!3577) Bool)

(assert (=> b!1772431 (= e!1134099 (inv!16 (value!109052 token!523)))))

(declare-fun b!1772432 () Bool)

(declare-fun inv!15 (TokenValue!3577) Bool)

(assert (=> b!1772432 (= e!1134101 (inv!15 (value!109052 token!523)))))

(declare-fun b!1772433 () Bool)

(assert (=> b!1772433 (= e!1134099 e!1134100)))

(declare-fun c!288680 () Bool)

(assert (=> b!1772433 (= c!288680 ((_ is IntegerValue!10732) (value!109052 token!523)))))

(assert (= (and d!541716 c!288679) b!1772431))

(assert (= (and d!541716 (not c!288679)) b!1772433))

(assert (= (and b!1772433 c!288680) b!1772430))

(assert (= (and b!1772433 (not c!288680)) b!1772429))

(assert (= (and b!1772429 (not res!798236)) b!1772432))

(declare-fun m!2191877 () Bool)

(assert (=> b!1772430 m!2191877))

(declare-fun m!2191879 () Bool)

(assert (=> b!1772431 m!2191879))

(declare-fun m!2191881 () Bool)

(assert (=> b!1772432 m!2191881))

(assert (=> b!1772297 d!541716))

(declare-fun d!541718 () Bool)

(declare-fun list!7928 (Conc!6487) List!19572)

(assert (=> d!541718 (= (list!7925 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))) (list!7928 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))))

(declare-fun bs!404774 () Bool)

(assert (= bs!404774 d!541718))

(declare-fun m!2191883 () Bool)

(assert (=> bs!404774 m!2191883))

(assert (=> b!1772275 d!541718))

(declare-fun bs!404775 () Bool)

(declare-fun d!541720 () Bool)

(assert (= bs!404775 (and d!541720 b!1772289)))

(declare-fun lambda!70463 () Int)

(assert (=> bs!404775 (= lambda!70463 lambda!70460)))

(declare-fun b!1772438 () Bool)

(declare-fun e!1134104 () Bool)

(assert (=> b!1772438 (= e!1134104 true)))

(assert (=> d!541720 e!1134104))

(assert (= d!541720 b!1772438))

(assert (=> b!1772438 (< (dynLambda!9476 order!12459 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) (dynLambda!9477 order!12461 lambda!70463))))

(assert (=> b!1772438 (< (dynLambda!9478 order!12463 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) (dynLambda!9477 order!12461 lambda!70463))))

(assert (=> d!541720 (= (list!7925 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))) (list!7925 lt!686223))))

(declare-fun lt!686255 () Unit!33710)

(declare-fun ForallOf!329 (Int BalanceConc!12918) Unit!33710)

(assert (=> d!541720 (= lt!686255 (ForallOf!329 lambda!70463 lt!686223))))

(assert (=> d!541720 (= (lemmaSemiInverse!625 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) lt!686223) lt!686255)))

(declare-fun b_lambda!57761 () Bool)

(assert (=> (not b_lambda!57761) (not d!541720)))

(assert (=> d!541720 t!165469))

(declare-fun b_and!134909 () Bool)

(assert (= b_and!134897 (and (=> t!165469 result!129070) b_and!134909)))

(assert (=> d!541720 t!165471))

(declare-fun b_and!134911 () Bool)

(assert (= b_and!134899 (and (=> t!165471 result!129074) b_and!134911)))

(assert (=> d!541720 t!165473))

(declare-fun b_and!134913 () Bool)

(assert (= b_and!134901 (and (=> t!165473 result!129076) b_and!134913)))

(declare-fun b_lambda!57763 () Bool)

(assert (=> (not b_lambda!57763) (not d!541720)))

(assert (=> d!541720 t!165475))

(declare-fun b_and!134915 () Bool)

(assert (= b_and!134885 (and (=> t!165475 result!129078) b_and!134915)))

(assert (=> d!541720 t!165477))

(declare-fun b_and!134917 () Bool)

(assert (= b_and!134887 (and (=> t!165477 result!129082) b_and!134917)))

(assert (=> d!541720 t!165479))

(declare-fun b_and!134919 () Bool)

(assert (= b_and!134889 (and (=> t!165479 result!129084) b_and!134919)))

(declare-fun m!2191885 () Bool)

(assert (=> d!541720 m!2191885))

(assert (=> d!541720 m!2191745))

(assert (=> d!541720 m!2191747))

(assert (=> d!541720 m!2191747))

(assert (=> d!541720 m!2191749))

(assert (=> d!541720 m!2191745))

(assert (=> d!541720 m!2191675))

(assert (=> b!1772275 d!541720))

(declare-fun b!1772467 () Bool)

(declare-fun res!798253 () Bool)

(declare-fun e!1134123 () Bool)

(assert (=> b!1772467 (=> res!798253 e!1134123)))

(assert (=> b!1772467 (= res!798253 (not (isEmpty!12319 (tail!2653 lt!686206))))))

(declare-fun d!541722 () Bool)

(declare-fun e!1134122 () Bool)

(assert (=> d!541722 e!1134122))

(declare-fun c!288690 () Bool)

(assert (=> d!541722 (= c!288690 ((_ is EmptyExpr!4815) (regex!3487 (rule!5535 (_1!10957 lt!686207)))))))

(declare-fun lt!686258 () Bool)

(declare-fun e!1134120 () Bool)

(assert (=> d!541722 (= lt!686258 e!1134120)))

(declare-fun c!288689 () Bool)

(assert (=> d!541722 (= c!288689 (isEmpty!12319 lt!686206))))

(assert (=> d!541722 (validRegex!1951 (regex!3487 (rule!5535 (_1!10957 lt!686207))))))

(assert (=> d!541722 (= (matchR!2288 (regex!3487 (rule!5535 (_1!10957 lt!686207))) lt!686206) lt!686258)))

(declare-fun b!1772468 () Bool)

(declare-fun res!798258 () Bool)

(declare-fun e!1134125 () Bool)

(assert (=> b!1772468 (=> (not res!798258) (not e!1134125))))

(declare-fun call!111136 () Bool)

(assert (=> b!1772468 (= res!798258 (not call!111136))))

(declare-fun b!1772469 () Bool)

(declare-fun e!1134124 () Bool)

(declare-fun e!1134121 () Bool)

(assert (=> b!1772469 (= e!1134124 e!1134121)))

(declare-fun res!798257 () Bool)

(assert (=> b!1772469 (=> (not res!798257) (not e!1134121))))

(assert (=> b!1772469 (= res!798257 (not lt!686258))))

(declare-fun b!1772470 () Bool)

(declare-fun derivativeStep!1245 (Regex!4815 C!9804) Regex!4815)

(assert (=> b!1772470 (= e!1134120 (matchR!2288 (derivativeStep!1245 (regex!3487 (rule!5535 (_1!10957 lt!686207))) (head!4120 lt!686206)) (tail!2653 lt!686206)))))

(declare-fun b!1772471 () Bool)

(declare-fun e!1134119 () Bool)

(assert (=> b!1772471 (= e!1134122 e!1134119)))

(declare-fun c!288688 () Bool)

(assert (=> b!1772471 (= c!288688 ((_ is EmptyLang!4815) (regex!3487 (rule!5535 (_1!10957 lt!686207)))))))

(declare-fun b!1772472 () Bool)

(declare-fun res!798260 () Bool)

(assert (=> b!1772472 (=> (not res!798260) (not e!1134125))))

(assert (=> b!1772472 (= res!798260 (isEmpty!12319 (tail!2653 lt!686206)))))

(declare-fun b!1772473 () Bool)

(assert (=> b!1772473 (= e!1134122 (= lt!686258 call!111136))))

(declare-fun b!1772474 () Bool)

(assert (=> b!1772474 (= e!1134123 (not (= (head!4120 lt!686206) (c!288660 (regex!3487 (rule!5535 (_1!10957 lt!686207)))))))))

(declare-fun b!1772475 () Bool)

(declare-fun res!798254 () Bool)

(assert (=> b!1772475 (=> res!798254 e!1134124)))

(assert (=> b!1772475 (= res!798254 e!1134125)))

(declare-fun res!798256 () Bool)

(assert (=> b!1772475 (=> (not res!798256) (not e!1134125))))

(assert (=> b!1772475 (= res!798256 lt!686258)))

(declare-fun b!1772476 () Bool)

(assert (=> b!1772476 (= e!1134121 e!1134123)))

(declare-fun res!798255 () Bool)

(assert (=> b!1772476 (=> res!798255 e!1134123)))

(assert (=> b!1772476 (= res!798255 call!111136)))

(declare-fun bm!111131 () Bool)

(assert (=> bm!111131 (= call!111136 (isEmpty!12319 lt!686206))))

(declare-fun b!1772477 () Bool)

(assert (=> b!1772477 (= e!1134119 (not lt!686258))))

(declare-fun b!1772478 () Bool)

(declare-fun res!798259 () Bool)

(assert (=> b!1772478 (=> res!798259 e!1134124)))

(assert (=> b!1772478 (= res!798259 (not ((_ is ElementMatch!4815) (regex!3487 (rule!5535 (_1!10957 lt!686207))))))))

(assert (=> b!1772478 (= e!1134119 e!1134124)))

(declare-fun b!1772479 () Bool)

(assert (=> b!1772479 (= e!1134120 (nullable!1476 (regex!3487 (rule!5535 (_1!10957 lt!686207)))))))

(declare-fun b!1772480 () Bool)

(assert (=> b!1772480 (= e!1134125 (= (head!4120 lt!686206) (c!288660 (regex!3487 (rule!5535 (_1!10957 lt!686207))))))))

(assert (= (and d!541722 c!288689) b!1772479))

(assert (= (and d!541722 (not c!288689)) b!1772470))

(assert (= (and d!541722 c!288690) b!1772473))

(assert (= (and d!541722 (not c!288690)) b!1772471))

(assert (= (and b!1772471 c!288688) b!1772477))

(assert (= (and b!1772471 (not c!288688)) b!1772478))

(assert (= (and b!1772478 (not res!798259)) b!1772475))

(assert (= (and b!1772475 res!798256) b!1772468))

(assert (= (and b!1772468 res!798258) b!1772472))

(assert (= (and b!1772472 res!798260) b!1772480))

(assert (= (and b!1772475 (not res!798254)) b!1772469))

(assert (= (and b!1772469 res!798257) b!1772476))

(assert (= (and b!1772476 (not res!798255)) b!1772467))

(assert (= (and b!1772467 (not res!798253)) b!1772474))

(assert (= (or b!1772473 b!1772468 b!1772476) bm!111131))

(assert (=> b!1772474 m!2191873))

(assert (=> b!1772470 m!2191873))

(assert (=> b!1772470 m!2191873))

(declare-fun m!2191887 () Bool)

(assert (=> b!1772470 m!2191887))

(assert (=> b!1772470 m!2191869))

(assert (=> b!1772470 m!2191887))

(assert (=> b!1772470 m!2191869))

(declare-fun m!2191889 () Bool)

(assert (=> b!1772470 m!2191889))

(assert (=> b!1772472 m!2191869))

(assert (=> b!1772472 m!2191869))

(declare-fun m!2191891 () Bool)

(assert (=> b!1772472 m!2191891))

(assert (=> b!1772480 m!2191873))

(declare-fun m!2191893 () Bool)

(assert (=> bm!111131 m!2191893))

(assert (=> b!1772467 m!2191869))

(assert (=> b!1772467 m!2191869))

(assert (=> b!1772467 m!2191891))

(assert (=> d!541722 m!2191893))

(declare-fun m!2191895 () Bool)

(assert (=> d!541722 m!2191895))

(declare-fun m!2191897 () Bool)

(assert (=> b!1772479 m!2191897))

(assert (=> b!1772296 d!541722))

(declare-fun d!541724 () Bool)

(assert (=> d!541724 (= (inv!25342 (tag!3869 (rule!5535 token!523))) (= (mod (str.len (value!109051 (tag!3869 (rule!5535 token!523)))) 2) 0))))

(assert (=> b!1772274 d!541724))

(declare-fun d!541726 () Bool)

(declare-fun res!798263 () Bool)

(declare-fun e!1134128 () Bool)

(assert (=> d!541726 (=> (not res!798263) (not e!1134128))))

(declare-fun semiInverseModEq!1391 (Int Int) Bool)

(assert (=> d!541726 (= res!798263 (semiInverseModEq!1391 (toChars!4873 (transformation!3487 (rule!5535 token!523))) (toValue!5014 (transformation!3487 (rule!5535 token!523)))))))

(assert (=> d!541726 (= (inv!25347 (transformation!3487 (rule!5535 token!523))) e!1134128)))

(declare-fun b!1772483 () Bool)

(declare-fun equivClasses!1332 (Int Int) Bool)

(assert (=> b!1772483 (= e!1134128 (equivClasses!1332 (toChars!4873 (transformation!3487 (rule!5535 token!523))) (toValue!5014 (transformation!3487 (rule!5535 token!523)))))))

(assert (= (and d!541726 res!798263) b!1772483))

(declare-fun m!2191899 () Bool)

(assert (=> d!541726 m!2191899))

(declare-fun m!2191901 () Bool)

(assert (=> b!1772483 m!2191901))

(assert (=> b!1772274 d!541726))

(declare-fun d!541728 () Bool)

(assert (=> d!541728 (= (inv!25350 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207)))) (isBalanced!2029 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))))))

(declare-fun bs!404776 () Bool)

(assert (= bs!404776 d!541728))

(declare-fun m!2191903 () Bool)

(assert (=> bs!404776 m!2191903))

(assert (=> tb!107319 d!541728))

(declare-fun d!541730 () Bool)

(assert (=> d!541730 (= (isEmpty!12319 suffix!1421) ((_ is Nil!19502) suffix!1421))))

(assert (=> b!1772295 d!541730))

(declare-fun d!541732 () Bool)

(assert (=> d!541732 (= (inv!25342 (tag!3869 rule!422)) (= (mod (str.len (value!109051 (tag!3869 rule!422))) 2) 0))))

(assert (=> b!1772284 d!541732))

(declare-fun d!541734 () Bool)

(declare-fun res!798264 () Bool)

(declare-fun e!1134129 () Bool)

(assert (=> d!541734 (=> (not res!798264) (not e!1134129))))

(assert (=> d!541734 (= res!798264 (semiInverseModEq!1391 (toChars!4873 (transformation!3487 rule!422)) (toValue!5014 (transformation!3487 rule!422))))))

(assert (=> d!541734 (= (inv!25347 (transformation!3487 rule!422)) e!1134129)))

(declare-fun b!1772484 () Bool)

(assert (=> b!1772484 (= e!1134129 (equivClasses!1332 (toChars!4873 (transformation!3487 rule!422)) (toValue!5014 (transformation!3487 rule!422))))))

(assert (= (and d!541734 res!798264) b!1772484))

(declare-fun m!2191905 () Bool)

(assert (=> d!541734 m!2191905))

(declare-fun m!2191907 () Bool)

(assert (=> b!1772484 m!2191907))

(assert (=> b!1772284 d!541734))

(declare-fun d!541736 () Bool)

(assert (=> d!541736 (= (isEmpty!12318 rules!3447) ((_ is Nil!19503) rules!3447))))

(assert (=> b!1772283 d!541736))

(declare-fun d!541738 () Bool)

(assert (=> d!541738 (= suffix!1421 lt!686190)))

(declare-fun lt!686261 () Unit!33710)

(declare-fun choose!11038 (List!19572 List!19572 List!19572 List!19572 List!19572) Unit!33710)

(assert (=> d!541738 (= lt!686261 (choose!11038 lt!686202 suffix!1421 lt!686202 lt!686190 lt!686222))))

(assert (=> d!541738 (isPrefix!1727 lt!686202 lt!686222)))

(assert (=> d!541738 (= (lemmaSamePrefixThenSameSuffix!838 lt!686202 suffix!1421 lt!686202 lt!686190 lt!686222) lt!686261)))

(declare-fun bs!404777 () Bool)

(assert (= bs!404777 d!541738))

(declare-fun m!2191909 () Bool)

(assert (=> bs!404777 m!2191909))

(assert (=> bs!404777 m!2191691))

(assert (=> b!1772282 d!541738))

(declare-fun d!541740 () Bool)

(declare-fun lt!686264 () List!19572)

(assert (=> d!541740 (= (++!5311 lt!686202 lt!686264) lt!686222)))

(declare-fun e!1134132 () List!19572)

(assert (=> d!541740 (= lt!686264 e!1134132)))

(declare-fun c!288693 () Bool)

(assert (=> d!541740 (= c!288693 ((_ is Cons!19502) lt!686202))))

(assert (=> d!541740 (>= (size!15494 lt!686222) (size!15494 lt!686202))))

(assert (=> d!541740 (= (getSuffix!894 lt!686222 lt!686202) lt!686264)))

(declare-fun b!1772489 () Bool)

(assert (=> b!1772489 (= e!1134132 (getSuffix!894 (tail!2653 lt!686222) (t!165487 lt!686202)))))

(declare-fun b!1772490 () Bool)

(assert (=> b!1772490 (= e!1134132 lt!686222)))

(assert (= (and d!541740 c!288693) b!1772489))

(assert (= (and d!541740 (not c!288693)) b!1772490))

(declare-fun m!2191911 () Bool)

(assert (=> d!541740 m!2191911))

(assert (=> d!541740 m!2191795))

(assert (=> d!541740 m!2191857))

(assert (=> b!1772489 m!2191801))

(assert (=> b!1772489 m!2191801))

(declare-fun m!2191913 () Bool)

(assert (=> b!1772489 m!2191913))

(assert (=> b!1772282 d!541740))

(declare-fun b!1772491 () Bool)

(declare-fun res!798265 () Bool)

(declare-fun e!1134137 () Bool)

(assert (=> b!1772491 (=> res!798265 e!1134137)))

(assert (=> b!1772491 (= res!798265 (not (isEmpty!12319 (tail!2653 lt!686206))))))

(declare-fun d!541742 () Bool)

(declare-fun e!1134136 () Bool)

(assert (=> d!541742 e!1134136))

(declare-fun c!288696 () Bool)

(assert (=> d!541742 (= c!288696 ((_ is EmptyExpr!4815) lt!686201))))

(declare-fun lt!686265 () Bool)

(declare-fun e!1134134 () Bool)

(assert (=> d!541742 (= lt!686265 e!1134134)))

(declare-fun c!288695 () Bool)

(assert (=> d!541742 (= c!288695 (isEmpty!12319 lt!686206))))

(assert (=> d!541742 (validRegex!1951 lt!686201)))

(assert (=> d!541742 (= (matchR!2288 lt!686201 lt!686206) lt!686265)))

(declare-fun b!1772492 () Bool)

(declare-fun res!798270 () Bool)

(declare-fun e!1134139 () Bool)

(assert (=> b!1772492 (=> (not res!798270) (not e!1134139))))

(declare-fun call!111137 () Bool)

(assert (=> b!1772492 (= res!798270 (not call!111137))))

(declare-fun b!1772493 () Bool)

(declare-fun e!1134138 () Bool)

(declare-fun e!1134135 () Bool)

(assert (=> b!1772493 (= e!1134138 e!1134135)))

(declare-fun res!798269 () Bool)

(assert (=> b!1772493 (=> (not res!798269) (not e!1134135))))

(assert (=> b!1772493 (= res!798269 (not lt!686265))))

(declare-fun b!1772494 () Bool)

(assert (=> b!1772494 (= e!1134134 (matchR!2288 (derivativeStep!1245 lt!686201 (head!4120 lt!686206)) (tail!2653 lt!686206)))))

(declare-fun b!1772495 () Bool)

(declare-fun e!1134133 () Bool)

(assert (=> b!1772495 (= e!1134136 e!1134133)))

(declare-fun c!288694 () Bool)

(assert (=> b!1772495 (= c!288694 ((_ is EmptyLang!4815) lt!686201))))

(declare-fun b!1772496 () Bool)

(declare-fun res!798272 () Bool)

(assert (=> b!1772496 (=> (not res!798272) (not e!1134139))))

(assert (=> b!1772496 (= res!798272 (isEmpty!12319 (tail!2653 lt!686206)))))

(declare-fun b!1772497 () Bool)

(assert (=> b!1772497 (= e!1134136 (= lt!686265 call!111137))))

(declare-fun b!1772498 () Bool)

(assert (=> b!1772498 (= e!1134137 (not (= (head!4120 lt!686206) (c!288660 lt!686201))))))

(declare-fun b!1772499 () Bool)

(declare-fun res!798266 () Bool)

(assert (=> b!1772499 (=> res!798266 e!1134138)))

(assert (=> b!1772499 (= res!798266 e!1134139)))

(declare-fun res!798268 () Bool)

(assert (=> b!1772499 (=> (not res!798268) (not e!1134139))))

(assert (=> b!1772499 (= res!798268 lt!686265)))

(declare-fun b!1772500 () Bool)

(assert (=> b!1772500 (= e!1134135 e!1134137)))

(declare-fun res!798267 () Bool)

(assert (=> b!1772500 (=> res!798267 e!1134137)))

(assert (=> b!1772500 (= res!798267 call!111137)))

(declare-fun bm!111132 () Bool)

(assert (=> bm!111132 (= call!111137 (isEmpty!12319 lt!686206))))

(declare-fun b!1772501 () Bool)

(assert (=> b!1772501 (= e!1134133 (not lt!686265))))

(declare-fun b!1772502 () Bool)

(declare-fun res!798271 () Bool)

(assert (=> b!1772502 (=> res!798271 e!1134138)))

(assert (=> b!1772502 (= res!798271 (not ((_ is ElementMatch!4815) lt!686201)))))

(assert (=> b!1772502 (= e!1134133 e!1134138)))

(declare-fun b!1772503 () Bool)

(assert (=> b!1772503 (= e!1134134 (nullable!1476 lt!686201))))

(declare-fun b!1772504 () Bool)

(assert (=> b!1772504 (= e!1134139 (= (head!4120 lt!686206) (c!288660 lt!686201)))))

(assert (= (and d!541742 c!288695) b!1772503))

(assert (= (and d!541742 (not c!288695)) b!1772494))

(assert (= (and d!541742 c!288696) b!1772497))

(assert (= (and d!541742 (not c!288696)) b!1772495))

(assert (= (and b!1772495 c!288694) b!1772501))

(assert (= (and b!1772495 (not c!288694)) b!1772502))

(assert (= (and b!1772502 (not res!798271)) b!1772499))

(assert (= (and b!1772499 res!798268) b!1772492))

(assert (= (and b!1772492 res!798270) b!1772496))

(assert (= (and b!1772496 res!798272) b!1772504))

(assert (= (and b!1772499 (not res!798266)) b!1772493))

(assert (= (and b!1772493 res!798269) b!1772500))

(assert (= (and b!1772500 (not res!798267)) b!1772491))

(assert (= (and b!1772491 (not res!798265)) b!1772498))

(assert (= (or b!1772497 b!1772492 b!1772500) bm!111132))

(assert (=> b!1772498 m!2191873))

(assert (=> b!1772494 m!2191873))

(assert (=> b!1772494 m!2191873))

(declare-fun m!2191915 () Bool)

(assert (=> b!1772494 m!2191915))

(assert (=> b!1772494 m!2191869))

(assert (=> b!1772494 m!2191915))

(assert (=> b!1772494 m!2191869))

(declare-fun m!2191917 () Bool)

(assert (=> b!1772494 m!2191917))

(assert (=> b!1772496 m!2191869))

(assert (=> b!1772496 m!2191869))

(assert (=> b!1772496 m!2191891))

(assert (=> b!1772504 m!2191873))

(assert (=> bm!111132 m!2191893))

(assert (=> b!1772491 m!2191869))

(assert (=> b!1772491 m!2191869))

(assert (=> b!1772491 m!2191891))

(assert (=> d!541742 m!2191893))

(assert (=> d!541742 m!2191729))

(declare-fun m!2191919 () Bool)

(assert (=> b!1772503 m!2191919))

(assert (=> b!1772282 d!541742))

(declare-fun d!541744 () Bool)

(assert (=> d!541744 (matchR!2288 (rulesRegex!843 thiss!24550 rules!3447) (list!7925 (charsOf!2136 (_1!10957 lt!686207))))))

(declare-fun lt!686268 () Unit!33710)

(declare-fun choose!11039 (LexerInterface!3116 List!19573 List!19572 Token!6540 Rule!6774 List!19572) Unit!33710)

(assert (=> d!541744 (= lt!686268 (choose!11039 thiss!24550 rules!3447 lt!686222 (_1!10957 lt!686207) (rule!5535 (_1!10957 lt!686207)) (_2!10957 lt!686207)))))

(assert (=> d!541744 (not (isEmpty!12318 rules!3447))))

(assert (=> d!541744 (= (lemmaMaxPrefixThenMatchesRulesRegex!194 thiss!24550 rules!3447 lt!686222 (_1!10957 lt!686207) (rule!5535 (_1!10957 lt!686207)) (_2!10957 lt!686207)) lt!686268)))

(declare-fun bs!404778 () Bool)

(assert (= bs!404778 d!541744))

(assert (=> bs!404778 m!2191727))

(assert (=> bs!404778 m!2191643))

(declare-fun m!2191921 () Bool)

(assert (=> bs!404778 m!2191921))

(declare-fun m!2191923 () Bool)

(assert (=> bs!404778 m!2191923))

(assert (=> bs!404778 m!2191641))

(assert (=> bs!404778 m!2191643))

(assert (=> bs!404778 m!2191727))

(assert (=> bs!404778 m!2191641))

(assert (=> bs!404778 m!2191629))

(assert (=> b!1772282 d!541744))

(declare-fun d!541746 () Bool)

(declare-fun e!1134142 () Bool)

(assert (=> d!541746 e!1134142))

(declare-fun res!798273 () Bool)

(assert (=> d!541746 (=> res!798273 e!1134142)))

(declare-fun lt!686269 () Bool)

(assert (=> d!541746 (= res!798273 (not lt!686269))))

(declare-fun e!1134141 () Bool)

(assert (=> d!541746 (= lt!686269 e!1134141)))

(declare-fun res!798275 () Bool)

(assert (=> d!541746 (=> res!798275 e!1134141)))

(assert (=> d!541746 (= res!798275 ((_ is Nil!19502) lt!686202))))

(assert (=> d!541746 (= (isPrefix!1727 lt!686202 lt!686222) lt!686269)))

(declare-fun b!1772508 () Bool)

(assert (=> b!1772508 (= e!1134142 (>= (size!15494 lt!686222) (size!15494 lt!686202)))))

(declare-fun b!1772505 () Bool)

(declare-fun e!1134140 () Bool)

(assert (=> b!1772505 (= e!1134141 e!1134140)))

(declare-fun res!798276 () Bool)

(assert (=> b!1772505 (=> (not res!798276) (not e!1134140))))

(assert (=> b!1772505 (= res!798276 (not ((_ is Nil!19502) lt!686222)))))

(declare-fun b!1772507 () Bool)

(assert (=> b!1772507 (= e!1134140 (isPrefix!1727 (tail!2653 lt!686202) (tail!2653 lt!686222)))))

(declare-fun b!1772506 () Bool)

(declare-fun res!798274 () Bool)

(assert (=> b!1772506 (=> (not res!798274) (not e!1134140))))

(assert (=> b!1772506 (= res!798274 (= (head!4120 lt!686202) (head!4120 lt!686222)))))

(assert (= (and d!541746 (not res!798275)) b!1772505))

(assert (= (and b!1772505 res!798276) b!1772506))

(assert (= (and b!1772506 res!798274) b!1772507))

(assert (= (and d!541746 (not res!798273)) b!1772508))

(assert (=> b!1772508 m!2191795))

(assert (=> b!1772508 m!2191857))

(declare-fun m!2191925 () Bool)

(assert (=> b!1772507 m!2191925))

(assert (=> b!1772507 m!2191801))

(assert (=> b!1772507 m!2191925))

(assert (=> b!1772507 m!2191801))

(declare-fun m!2191927 () Bool)

(assert (=> b!1772507 m!2191927))

(declare-fun m!2191929 () Bool)

(assert (=> b!1772506 m!2191929))

(assert (=> b!1772506 m!2191807))

(assert (=> b!1772281 d!541746))

(declare-fun d!541748 () Bool)

(declare-fun e!1134145 () Bool)

(assert (=> d!541748 e!1134145))

(declare-fun res!798277 () Bool)

(assert (=> d!541748 (=> res!798277 e!1134145)))

(declare-fun lt!686270 () Bool)

(assert (=> d!541748 (= res!798277 (not lt!686270))))

(declare-fun e!1134144 () Bool)

(assert (=> d!541748 (= lt!686270 e!1134144)))

(declare-fun res!798279 () Bool)

(assert (=> d!541748 (=> res!798279 e!1134144)))

(assert (=> d!541748 (= res!798279 ((_ is Nil!19502) lt!686206))))

(assert (=> d!541748 (= (isPrefix!1727 lt!686206 lt!686222) lt!686270)))

(declare-fun b!1772512 () Bool)

(assert (=> b!1772512 (= e!1134145 (>= (size!15494 lt!686222) (size!15494 lt!686206)))))

(declare-fun b!1772509 () Bool)

(declare-fun e!1134143 () Bool)

(assert (=> b!1772509 (= e!1134144 e!1134143)))

(declare-fun res!798280 () Bool)

(assert (=> b!1772509 (=> (not res!798280) (not e!1134143))))

(assert (=> b!1772509 (= res!798280 (not ((_ is Nil!19502) lt!686222)))))

(declare-fun b!1772511 () Bool)

(assert (=> b!1772511 (= e!1134143 (isPrefix!1727 (tail!2653 lt!686206) (tail!2653 lt!686222)))))

(declare-fun b!1772510 () Bool)

(declare-fun res!798278 () Bool)

(assert (=> b!1772510 (=> (not res!798278) (not e!1134143))))

(assert (=> b!1772510 (= res!798278 (= (head!4120 lt!686206) (head!4120 lt!686222)))))

(assert (= (and d!541748 (not res!798279)) b!1772509))

(assert (= (and b!1772509 res!798280) b!1772510))

(assert (= (and b!1772510 res!798278) b!1772511))

(assert (= (and d!541748 (not res!798277)) b!1772512))

(assert (=> b!1772512 m!2191795))

(assert (=> b!1772512 m!2191613))

(assert (=> b!1772511 m!2191869))

(assert (=> b!1772511 m!2191801))

(assert (=> b!1772511 m!2191869))

(assert (=> b!1772511 m!2191801))

(declare-fun m!2191931 () Bool)

(assert (=> b!1772511 m!2191931))

(assert (=> b!1772510 m!2191873))

(assert (=> b!1772510 m!2191807))

(assert (=> b!1772281 d!541748))

(declare-fun d!541750 () Bool)

(declare-fun e!1134147 () Bool)

(assert (=> d!541750 e!1134147))

(declare-fun res!798282 () Bool)

(assert (=> d!541750 (=> (not res!798282) (not e!1134147))))

(declare-fun lt!686271 () List!19572)

(assert (=> d!541750 (= res!798282 (= (content!2830 lt!686271) ((_ map or) (content!2830 lt!686202) (content!2830 suffix!1421))))))

(declare-fun e!1134146 () List!19572)

(assert (=> d!541750 (= lt!686271 e!1134146)))

(declare-fun c!288697 () Bool)

(assert (=> d!541750 (= c!288697 ((_ is Nil!19502) lt!686202))))

(assert (=> d!541750 (= (++!5311 lt!686202 suffix!1421) lt!686271)))

(declare-fun b!1772513 () Bool)

(assert (=> b!1772513 (= e!1134146 suffix!1421)))

(declare-fun b!1772515 () Bool)

(declare-fun res!798281 () Bool)

(assert (=> b!1772515 (=> (not res!798281) (not e!1134147))))

(assert (=> b!1772515 (= res!798281 (= (size!15494 lt!686271) (+ (size!15494 lt!686202) (size!15494 suffix!1421))))))

(declare-fun b!1772514 () Bool)

(assert (=> b!1772514 (= e!1134146 (Cons!19502 (h!24903 lt!686202) (++!5311 (t!165487 lt!686202) suffix!1421)))))

(declare-fun b!1772516 () Bool)

(assert (=> b!1772516 (= e!1134147 (or (not (= suffix!1421 Nil!19502)) (= lt!686271 lt!686202)))))

(assert (= (and d!541750 c!288697) b!1772513))

(assert (= (and d!541750 (not c!288697)) b!1772514))

(assert (= (and d!541750 res!798282) b!1772515))

(assert (= (and b!1772515 res!798281) b!1772516))

(declare-fun m!2191933 () Bool)

(assert (=> d!541750 m!2191933))

(assert (=> d!541750 m!2191851))

(declare-fun m!2191935 () Bool)

(assert (=> d!541750 m!2191935))

(declare-fun m!2191937 () Bool)

(assert (=> b!1772515 m!2191937))

(assert (=> b!1772515 m!2191857))

(declare-fun m!2191939 () Bool)

(assert (=> b!1772515 m!2191939))

(declare-fun m!2191941 () Bool)

(assert (=> b!1772514 m!2191941))

(assert (=> b!1772281 d!541750))

(declare-fun b!1772537 () Bool)

(declare-fun e!1134158 () Option!3997)

(assert (=> b!1772537 (= e!1134158 None!3996)))

(declare-fun b!1772538 () Bool)

(declare-fun lt!686301 () Unit!33710)

(declare-fun lt!686302 () Unit!33710)

(assert (=> b!1772538 (= lt!686301 lt!686302)))

(assert (=> b!1772538 (rulesInvariant!2785 thiss!24550 (t!165488 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!206 (LexerInterface!3116 Rule!6774 List!19573) Unit!33710)

(assert (=> b!1772538 (= lt!686302 (lemmaInvariantOnRulesThenOnTail!206 thiss!24550 (h!24904 rules!3447) (t!165488 rules!3447)))))

(assert (=> b!1772538 (= e!1134158 (getRuleFromTag!535 thiss!24550 (t!165488 rules!3447) (tag!3869 (rule!5535 (_1!10957 lt!686207)))))))

(declare-fun b!1772539 () Bool)

(declare-fun e!1134163 () Bool)

(declare-fun lt!686300 () Option!3997)

(assert (=> b!1772539 (= e!1134163 (= (tag!3869 (get!5957 lt!686300)) (tag!3869 (rule!5535 (_1!10957 lt!686207)))))))

(declare-fun b!1772540 () Bool)

(declare-fun e!1134160 () Option!3997)

(assert (=> b!1772540 (= e!1134160 e!1134158)))

(declare-fun c!288704 () Bool)

(assert (=> b!1772540 (= c!288704 (and ((_ is Cons!19503) rules!3447) (not (= (tag!3869 (h!24904 rules!3447)) (tag!3869 (rule!5535 (_1!10957 lt!686207)))))))))

(declare-fun b!1772541 () Bool)

(assert (=> b!1772541 (= e!1134160 (Some!3996 (h!24904 rules!3447)))))

(declare-fun d!541752 () Bool)

(declare-fun e!1134162 () Bool)

(assert (=> d!541752 e!1134162))

(declare-fun res!798291 () Bool)

(assert (=> d!541752 (=> res!798291 e!1134162)))

(declare-fun isEmpty!12322 (Option!3997) Bool)

(assert (=> d!541752 (= res!798291 (isEmpty!12322 lt!686300))))

(assert (=> d!541752 (= lt!686300 e!1134160)))

(declare-fun c!288702 () Bool)

(assert (=> d!541752 (= c!288702 (and ((_ is Cons!19503) rules!3447) (= (tag!3869 (h!24904 rules!3447)) (tag!3869 (rule!5535 (_1!10957 lt!686207))))))))

(assert (=> d!541752 (rulesInvariant!2785 thiss!24550 rules!3447)))

(assert (=> d!541752 (= (getRuleFromTag!535 thiss!24550 rules!3447 (tag!3869 (rule!5535 (_1!10957 lt!686207)))) lt!686300)))

(declare-fun b!1772542 () Bool)

(assert (=> b!1772542 (= e!1134162 e!1134163)))

(declare-fun res!798292 () Bool)

(assert (=> b!1772542 (=> (not res!798292) (not e!1134163))))

(assert (=> b!1772542 (= res!798292 (contains!3519 rules!3447 (get!5957 lt!686300)))))

(assert (= (and d!541752 c!288702) b!1772541))

(assert (= (and d!541752 (not c!288702)) b!1772540))

(assert (= (and b!1772540 c!288704) b!1772538))

(assert (= (and b!1772540 (not c!288704)) b!1772537))

(assert (= (and d!541752 (not res!798291)) b!1772542))

(assert (= (and b!1772542 res!798292) b!1772539))

(declare-fun m!2191943 () Bool)

(assert (=> b!1772538 m!2191943))

(declare-fun m!2191945 () Bool)

(assert (=> b!1772538 m!2191945))

(declare-fun m!2191947 () Bool)

(assert (=> b!1772538 m!2191947))

(declare-fun m!2191949 () Bool)

(assert (=> b!1772539 m!2191949))

(declare-fun m!2191951 () Bool)

(assert (=> d!541752 m!2191951))

(assert (=> d!541752 m!2191627))

(assert (=> b!1772542 m!2191949))

(assert (=> b!1772542 m!2191949))

(declare-fun m!2191953 () Bool)

(assert (=> b!1772542 m!2191953))

(assert (=> b!1772281 d!541752))

(declare-fun d!541754 () Bool)

(declare-fun lt!686317 () BalanceConc!12918)

(assert (=> d!541754 (= (list!7925 lt!686317) (originalCharacters!4301 (_1!10957 lt!686207)))))

(assert (=> d!541754 (= lt!686317 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))))

(assert (=> d!541754 (= (charsOf!2136 (_1!10957 lt!686207)) lt!686317)))

(declare-fun b_lambda!57765 () Bool)

(assert (=> (not b_lambda!57765) (not d!541754)))

(assert (=> d!541754 t!165481))

(declare-fun b_and!134921 () Bool)

(assert (= b_and!134909 (and (=> t!165481 result!129086) b_and!134921)))

(assert (=> d!541754 t!165483))

(declare-fun b_and!134923 () Bool)

(assert (= b_and!134911 (and (=> t!165483 result!129088) b_and!134923)))

(assert (=> d!541754 t!165485))

(declare-fun b_and!134925 () Bool)

(assert (= b_and!134913 (and (=> t!165485 result!129090) b_and!134925)))

(declare-fun m!2191955 () Bool)

(assert (=> d!541754 m!2191955))

(assert (=> d!541754 m!2191633))

(assert (=> b!1772281 d!541754))

(declare-fun d!541756 () Bool)

(assert (=> d!541756 (isPrefix!1727 lt!686206 (++!5311 lt!686206 (_2!10957 lt!686207)))))

(declare-fun lt!686320 () Unit!33710)

(declare-fun choose!11040 (List!19572 List!19572) Unit!33710)

(assert (=> d!541756 (= lt!686320 (choose!11040 lt!686206 (_2!10957 lt!686207)))))

(assert (=> d!541756 (= (lemmaConcatTwoListThenFirstIsPrefix!1236 lt!686206 (_2!10957 lt!686207)) lt!686320)))

(declare-fun bs!404779 () Bool)

(assert (= bs!404779 d!541756))

(assert (=> bs!404779 m!2191687))

(assert (=> bs!404779 m!2191687))

(assert (=> bs!404779 m!2191689))

(declare-fun m!2191957 () Bool)

(assert (=> bs!404779 m!2191957))

(assert (=> b!1772281 d!541756))

(declare-fun d!541758 () Bool)

(assert (=> d!541758 (= (list!7925 lt!686223) (list!7928 (c!288661 lt!686223)))))

(declare-fun bs!404780 () Bool)

(assert (= bs!404780 d!541758))

(declare-fun m!2191959 () Bool)

(assert (=> bs!404780 m!2191959))

(assert (=> b!1772281 d!541758))

(declare-fun d!541760 () Bool)

(assert (=> d!541760 (isPrefix!1727 lt!686202 (++!5311 lt!686202 suffix!1421))))

(declare-fun lt!686321 () Unit!33710)

(assert (=> d!541760 (= lt!686321 (choose!11040 lt!686202 suffix!1421))))

(assert (=> d!541760 (= (lemmaConcatTwoListThenFirstIsPrefix!1236 lt!686202 suffix!1421) lt!686321)))

(declare-fun bs!404781 () Bool)

(assert (= bs!404781 d!541760))

(assert (=> bs!404781 m!2191695))

(assert (=> bs!404781 m!2191695))

(declare-fun m!2191961 () Bool)

(assert (=> bs!404781 m!2191961))

(declare-fun m!2191963 () Bool)

(assert (=> bs!404781 m!2191963))

(assert (=> b!1772281 d!541760))

(declare-fun b!1772583 () Bool)

(declare-fun res!798328 () Bool)

(declare-fun e!1134178 () Bool)

(assert (=> b!1772583 (=> (not res!798328) (not e!1134178))))

(declare-fun lt!686359 () Option!3996)

(assert (=> b!1772583 (= res!798328 (= (value!109052 (_1!10957 (get!5958 lt!686359))) (apply!5287 (transformation!3487 (rule!5535 (_1!10957 (get!5958 lt!686359)))) (seqFromList!2456 (originalCharacters!4301 (_1!10957 (get!5958 lt!686359)))))))))

(declare-fun b!1772584 () Bool)

(declare-fun res!798329 () Bool)

(assert (=> b!1772584 (=> (not res!798329) (not e!1134178))))

(assert (=> b!1772584 (= res!798329 (< (size!15494 (_2!10957 (get!5958 lt!686359))) (size!15494 lt!686222)))))

(declare-fun d!541762 () Bool)

(declare-fun e!1134179 () Bool)

(assert (=> d!541762 e!1134179))

(declare-fun res!798324 () Bool)

(assert (=> d!541762 (=> res!798324 e!1134179)))

(declare-fun isEmpty!12323 (Option!3996) Bool)

(assert (=> d!541762 (= res!798324 (isEmpty!12323 lt!686359))))

(declare-fun e!1134180 () Option!3996)

(assert (=> d!541762 (= lt!686359 e!1134180)))

(declare-fun c!288711 () Bool)

(assert (=> d!541762 (= c!288711 (and ((_ is Cons!19503) rules!3447) ((_ is Nil!19503) (t!165488 rules!3447))))))

(declare-fun lt!686363 () Unit!33710)

(declare-fun lt!686360 () Unit!33710)

(assert (=> d!541762 (= lt!686363 lt!686360)))

(assert (=> d!541762 (isPrefix!1727 lt!686222 lt!686222)))

(declare-fun lemmaIsPrefixRefl!1144 (List!19572 List!19572) Unit!33710)

(assert (=> d!541762 (= lt!686360 (lemmaIsPrefixRefl!1144 lt!686222 lt!686222))))

(declare-fun rulesValidInductive!1182 (LexerInterface!3116 List!19573) Bool)

(assert (=> d!541762 (rulesValidInductive!1182 thiss!24550 rules!3447)))

(assert (=> d!541762 (= (maxPrefix!1670 thiss!24550 rules!3447 lt!686222) lt!686359)))

(declare-fun b!1772585 () Bool)

(declare-fun call!111142 () Option!3996)

(assert (=> b!1772585 (= e!1134180 call!111142)))

(declare-fun b!1772586 () Bool)

(declare-fun res!798327 () Bool)

(assert (=> b!1772586 (=> (not res!798327) (not e!1134178))))

(assert (=> b!1772586 (= res!798327 (= (list!7925 (charsOf!2136 (_1!10957 (get!5958 lt!686359)))) (originalCharacters!4301 (_1!10957 (get!5958 lt!686359)))))))

(declare-fun b!1772587 () Bool)

(declare-fun res!798326 () Bool)

(assert (=> b!1772587 (=> (not res!798326) (not e!1134178))))

(assert (=> b!1772587 (= res!798326 (matchR!2288 (regex!3487 (rule!5535 (_1!10957 (get!5958 lt!686359)))) (list!7925 (charsOf!2136 (_1!10957 (get!5958 lt!686359))))))))

(declare-fun b!1772588 () Bool)

(assert (=> b!1772588 (= e!1134178 (contains!3519 rules!3447 (rule!5535 (_1!10957 (get!5958 lt!686359)))))))

(declare-fun b!1772589 () Bool)

(declare-fun res!798325 () Bool)

(assert (=> b!1772589 (=> (not res!798325) (not e!1134178))))

(assert (=> b!1772589 (= res!798325 (= (++!5311 (list!7925 (charsOf!2136 (_1!10957 (get!5958 lt!686359)))) (_2!10957 (get!5958 lt!686359))) lt!686222))))

(declare-fun b!1772590 () Bool)

(declare-fun lt!686361 () Option!3996)

(declare-fun lt!686362 () Option!3996)

(assert (=> b!1772590 (= e!1134180 (ite (and ((_ is None!3995) lt!686361) ((_ is None!3995) lt!686362)) None!3995 (ite ((_ is None!3995) lt!686362) lt!686361 (ite ((_ is None!3995) lt!686361) lt!686362 (ite (>= (size!15492 (_1!10957 (v!25472 lt!686361))) (size!15492 (_1!10957 (v!25472 lt!686362)))) lt!686361 lt!686362)))))))

(assert (=> b!1772590 (= lt!686361 call!111142)))

(assert (=> b!1772590 (= lt!686362 (maxPrefix!1670 thiss!24550 (t!165488 rules!3447) lt!686222))))

(declare-fun bm!111137 () Bool)

(assert (=> bm!111137 (= call!111142 (maxPrefixOneRule!1039 thiss!24550 (h!24904 rules!3447) lt!686222))))

(declare-fun b!1772591 () Bool)

(assert (=> b!1772591 (= e!1134179 e!1134178)))

(declare-fun res!798323 () Bool)

(assert (=> b!1772591 (=> (not res!798323) (not e!1134178))))

(assert (=> b!1772591 (= res!798323 (isDefined!3339 lt!686359))))

(assert (= (and d!541762 c!288711) b!1772585))

(assert (= (and d!541762 (not c!288711)) b!1772590))

(assert (= (or b!1772585 b!1772590) bm!111137))

(assert (= (and d!541762 (not res!798324)) b!1772591))

(assert (= (and b!1772591 res!798323) b!1772586))

(assert (= (and b!1772586 res!798327) b!1772584))

(assert (= (and b!1772584 res!798329) b!1772589))

(assert (= (and b!1772589 res!798325) b!1772583))

(assert (= (and b!1772583 res!798328) b!1772587))

(assert (= (and b!1772587 res!798326) b!1772588))

(declare-fun m!2192015 () Bool)

(assert (=> bm!111137 m!2192015))

(declare-fun m!2192017 () Bool)

(assert (=> b!1772588 m!2192017))

(declare-fun m!2192019 () Bool)

(assert (=> b!1772588 m!2192019))

(assert (=> b!1772587 m!2192017))

(declare-fun m!2192021 () Bool)

(assert (=> b!1772587 m!2192021))

(assert (=> b!1772587 m!2192021))

(declare-fun m!2192023 () Bool)

(assert (=> b!1772587 m!2192023))

(assert (=> b!1772587 m!2192023))

(declare-fun m!2192025 () Bool)

(assert (=> b!1772587 m!2192025))

(assert (=> b!1772583 m!2192017))

(declare-fun m!2192027 () Bool)

(assert (=> b!1772583 m!2192027))

(assert (=> b!1772583 m!2192027))

(declare-fun m!2192029 () Bool)

(assert (=> b!1772583 m!2192029))

(assert (=> b!1772584 m!2192017))

(declare-fun m!2192031 () Bool)

(assert (=> b!1772584 m!2192031))

(assert (=> b!1772584 m!2191795))

(declare-fun m!2192033 () Bool)

(assert (=> d!541762 m!2192033))

(declare-fun m!2192035 () Bool)

(assert (=> d!541762 m!2192035))

(declare-fun m!2192037 () Bool)

(assert (=> d!541762 m!2192037))

(declare-fun m!2192039 () Bool)

(assert (=> d!541762 m!2192039))

(declare-fun m!2192041 () Bool)

(assert (=> b!1772591 m!2192041))

(declare-fun m!2192043 () Bool)

(assert (=> b!1772590 m!2192043))

(assert (=> b!1772586 m!2192017))

(assert (=> b!1772586 m!2192021))

(assert (=> b!1772586 m!2192021))

(assert (=> b!1772586 m!2192023))

(assert (=> b!1772589 m!2192017))

(assert (=> b!1772589 m!2192021))

(assert (=> b!1772589 m!2192021))

(assert (=> b!1772589 m!2192023))

(assert (=> b!1772589 m!2192023))

(declare-fun m!2192045 () Bool)

(assert (=> b!1772589 m!2192045))

(assert (=> b!1772281 d!541762))

(declare-fun d!541766 () Bool)

(declare-fun e!1134186 () Bool)

(assert (=> d!541766 e!1134186))

(declare-fun res!798337 () Bool)

(assert (=> d!541766 (=> res!798337 e!1134186)))

(declare-fun lt!686369 () Bool)

(assert (=> d!541766 (= res!798337 (not lt!686369))))

(declare-fun e!1134185 () Bool)

(assert (=> d!541766 (= lt!686369 e!1134185)))

(declare-fun res!798339 () Bool)

(assert (=> d!541766 (=> res!798339 e!1134185)))

(assert (=> d!541766 (= res!798339 ((_ is Nil!19502) lt!686206))))

(assert (=> d!541766 (= (isPrefix!1727 lt!686206 (++!5311 lt!686206 (_2!10957 lt!686207))) lt!686369)))

(declare-fun b!1772604 () Bool)

(assert (=> b!1772604 (= e!1134186 (>= (size!15494 (++!5311 lt!686206 (_2!10957 lt!686207))) (size!15494 lt!686206)))))

(declare-fun b!1772601 () Bool)

(declare-fun e!1134184 () Bool)

(assert (=> b!1772601 (= e!1134185 e!1134184)))

(declare-fun res!798340 () Bool)

(assert (=> b!1772601 (=> (not res!798340) (not e!1134184))))

(assert (=> b!1772601 (= res!798340 (not ((_ is Nil!19502) (++!5311 lt!686206 (_2!10957 lt!686207)))))))

(declare-fun b!1772603 () Bool)

(assert (=> b!1772603 (= e!1134184 (isPrefix!1727 (tail!2653 lt!686206) (tail!2653 (++!5311 lt!686206 (_2!10957 lt!686207)))))))

(declare-fun b!1772602 () Bool)

(declare-fun res!798338 () Bool)

(assert (=> b!1772602 (=> (not res!798338) (not e!1134184))))

(assert (=> b!1772602 (= res!798338 (= (head!4120 lt!686206) (head!4120 (++!5311 lt!686206 (_2!10957 lt!686207)))))))

(assert (= (and d!541766 (not res!798339)) b!1772601))

(assert (= (and b!1772601 res!798340) b!1772602))

(assert (= (and b!1772602 res!798338) b!1772603))

(assert (= (and d!541766 (not res!798337)) b!1772604))

(assert (=> b!1772604 m!2191687))

(declare-fun m!2192047 () Bool)

(assert (=> b!1772604 m!2192047))

(assert (=> b!1772604 m!2191613))

(assert (=> b!1772603 m!2191869))

(assert (=> b!1772603 m!2191687))

(declare-fun m!2192049 () Bool)

(assert (=> b!1772603 m!2192049))

(assert (=> b!1772603 m!2191869))

(assert (=> b!1772603 m!2192049))

(declare-fun m!2192051 () Bool)

(assert (=> b!1772603 m!2192051))

(assert (=> b!1772602 m!2191873))

(assert (=> b!1772602 m!2191687))

(declare-fun m!2192053 () Bool)

(assert (=> b!1772602 m!2192053))

(assert (=> b!1772281 d!541766))

(declare-fun lt!686459 () Token!6540)

(declare-fun e!1134287 () Bool)

(declare-fun b!1772770 () Bool)

(assert (=> b!1772770 (= e!1134287 (= (rule!5535 lt!686459) (get!5957 (getRuleFromTag!535 thiss!24550 rules!3447 (tag!3869 (rule!5535 lt!686459))))))))

(declare-fun d!541768 () Bool)

(assert (=> d!541768 (isDefined!3339 (maxPrefix!1670 thiss!24550 rules!3447 (++!5311 lt!686202 suffix!1421)))))

(declare-fun lt!686452 () Unit!33710)

(declare-fun e!1134286 () Unit!33710)

(assert (=> d!541768 (= lt!686452 e!1134286)))

(declare-fun c!288746 () Bool)

(assert (=> d!541768 (= c!288746 (isEmpty!12323 (maxPrefix!1670 thiss!24550 rules!3447 (++!5311 lt!686202 suffix!1421))))))

(declare-fun lt!686460 () Unit!33710)

(declare-fun lt!686450 () Unit!33710)

(assert (=> d!541768 (= lt!686460 lt!686450)))

(assert (=> d!541768 e!1134287))

(declare-fun res!798433 () Bool)

(assert (=> d!541768 (=> (not res!798433) (not e!1134287))))

(assert (=> d!541768 (= res!798433 (isDefined!3340 (getRuleFromTag!535 thiss!24550 rules!3447 (tag!3869 (rule!5535 lt!686459)))))))

(assert (=> d!541768 (= lt!686450 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!535 thiss!24550 rules!3447 lt!686202 lt!686459))))

(declare-fun lt!686461 () Unit!33710)

(declare-fun lt!686457 () Unit!33710)

(assert (=> d!541768 (= lt!686461 lt!686457)))

(declare-fun lt!686463 () List!19572)

(assert (=> d!541768 (isPrefix!1727 lt!686463 (++!5311 lt!686202 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!327 (List!19572 List!19572 List!19572) Unit!33710)

(assert (=> d!541768 (= lt!686457 (lemmaPrefixStaysPrefixWhenAddingToSuffix!327 lt!686463 lt!686202 suffix!1421))))

(assert (=> d!541768 (= lt!686463 (list!7925 (charsOf!2136 lt!686459)))))

(declare-fun lt!686464 () Unit!33710)

(declare-fun lt!686448 () Unit!33710)

(assert (=> d!541768 (= lt!686464 lt!686448)))

(declare-fun lt!686451 () List!19572)

(declare-fun lt!686456 () List!19572)

(assert (=> d!541768 (isPrefix!1727 lt!686451 (++!5311 lt!686451 lt!686456))))

(assert (=> d!541768 (= lt!686448 (lemmaConcatTwoListThenFirstIsPrefix!1236 lt!686451 lt!686456))))

(assert (=> d!541768 (= lt!686456 (_2!10957 (get!5958 (maxPrefix!1670 thiss!24550 rules!3447 lt!686202))))))

(assert (=> d!541768 (= lt!686451 (list!7925 (charsOf!2136 lt!686459)))))

(declare-datatypes ((List!19575 0))(
  ( (Nil!19505) (Cons!19505 (h!24906 Token!6540) (t!165550 List!19575)) )
))
(declare-fun head!4122 (List!19575) Token!6540)

(declare-datatypes ((IArray!12983 0))(
  ( (IArray!12984 (innerList!6549 List!19575)) )
))
(declare-datatypes ((Conc!6489 0))(
  ( (Node!6489 (left!15618 Conc!6489) (right!15948 Conc!6489) (csize!13208 Int) (cheight!6700 Int)) (Leaf!9453 (xs!9365 IArray!12983) (csize!13209 Int)) (Empty!6489) )
))
(declare-datatypes ((BalanceConc!12922 0))(
  ( (BalanceConc!12923 (c!288807 Conc!6489)) )
))
(declare-fun list!7929 (BalanceConc!12922) List!19575)

(declare-datatypes ((tuple2!19114 0))(
  ( (tuple2!19115 (_1!10959 BalanceConc!12922) (_2!10959 BalanceConc!12918)) )
))
(declare-fun lex!1466 (LexerInterface!3116 List!19573 BalanceConc!12918) tuple2!19114)

(assert (=> d!541768 (= lt!686459 (head!4122 (list!7929 (_1!10959 (lex!1466 thiss!24550 rules!3447 (seqFromList!2456 lt!686202))))))))

(assert (=> d!541768 (not (isEmpty!12318 rules!3447))))

(assert (=> d!541768 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!638 thiss!24550 rules!3447 lt!686202 suffix!1421) lt!686452)))

(declare-fun b!1772769 () Bool)

(declare-fun res!798434 () Bool)

(assert (=> b!1772769 (=> (not res!798434) (not e!1134287))))

(assert (=> b!1772769 (= res!798434 (matchR!2288 (regex!3487 (get!5957 (getRuleFromTag!535 thiss!24550 rules!3447 (tag!3869 (rule!5535 lt!686459))))) (list!7925 (charsOf!2136 lt!686459))))))

(declare-fun b!1772772 () Bool)

(declare-fun Unit!33715 () Unit!33710)

(assert (=> b!1772772 (= e!1134286 Unit!33715)))

(declare-fun b!1772771 () Bool)

(declare-fun Unit!33716 () Unit!33710)

(assert (=> b!1772771 (= e!1134286 Unit!33716)))

(declare-fun lt!686455 () List!19572)

(assert (=> b!1772771 (= lt!686455 (++!5311 lt!686202 suffix!1421))))

(declare-fun lt!686458 () Unit!33710)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!335 (LexerInterface!3116 Rule!6774 List!19573 List!19572) Unit!33710)

(assert (=> b!1772771 (= lt!686458 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!335 thiss!24550 (rule!5535 lt!686459) rules!3447 lt!686455))))

(assert (=> b!1772771 (isEmpty!12323 (maxPrefixOneRule!1039 thiss!24550 (rule!5535 lt!686459) lt!686455))))

(declare-fun lt!686462 () Unit!33710)

(assert (=> b!1772771 (= lt!686462 lt!686458)))

(declare-fun lt!686449 () List!19572)

(assert (=> b!1772771 (= lt!686449 (list!7925 (charsOf!2136 lt!686459)))))

(declare-fun lt!686453 () Unit!33710)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!331 (LexerInterface!3116 Rule!6774 List!19572 List!19572) Unit!33710)

(assert (=> b!1772771 (= lt!686453 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!331 thiss!24550 (rule!5535 lt!686459) lt!686449 (++!5311 lt!686202 suffix!1421)))))

(assert (=> b!1772771 (not (matchR!2288 (regex!3487 (rule!5535 lt!686459)) lt!686449))))

(declare-fun lt!686454 () Unit!33710)

(assert (=> b!1772771 (= lt!686454 lt!686453)))

(assert (=> b!1772771 false))

(assert (= (and d!541768 res!798433) b!1772769))

(assert (= (and b!1772769 res!798434) b!1772770))

(assert (= (and d!541768 c!288746) b!1772771))

(assert (= (and d!541768 (not c!288746)) b!1772772))

(declare-fun m!2192249 () Bool)

(assert (=> b!1772770 m!2192249))

(assert (=> b!1772770 m!2192249))

(declare-fun m!2192251 () Bool)

(assert (=> b!1772770 m!2192251))

(declare-fun m!2192253 () Bool)

(assert (=> d!541768 m!2192253))

(declare-fun m!2192255 () Bool)

(assert (=> d!541768 m!2192255))

(assert (=> d!541768 m!2192249))

(declare-fun m!2192257 () Bool)

(assert (=> d!541768 m!2192257))

(assert (=> d!541768 m!2191695))

(assert (=> d!541768 m!2191619))

(declare-fun m!2192259 () Bool)

(assert (=> d!541768 m!2192259))

(assert (=> d!541768 m!2191619))

(declare-fun m!2192261 () Bool)

(assert (=> d!541768 m!2192261))

(declare-fun m!2192263 () Bool)

(assert (=> d!541768 m!2192263))

(declare-fun m!2192265 () Bool)

(assert (=> d!541768 m!2192265))

(declare-fun m!2192267 () Bool)

(assert (=> d!541768 m!2192267))

(declare-fun m!2192269 () Bool)

(assert (=> d!541768 m!2192269))

(declare-fun m!2192271 () Bool)

(assert (=> d!541768 m!2192271))

(assert (=> d!541768 m!2191695))

(declare-fun m!2192273 () Bool)

(assert (=> d!541768 m!2192273))

(assert (=> d!541768 m!2192267))

(declare-fun m!2192275 () Bool)

(assert (=> d!541768 m!2192275))

(assert (=> d!541768 m!2192249))

(assert (=> d!541768 m!2191695))

(assert (=> d!541768 m!2192267))

(declare-fun m!2192277 () Bool)

(assert (=> d!541768 m!2192277))

(assert (=> d!541768 m!2192253))

(declare-fun m!2192279 () Bool)

(assert (=> d!541768 m!2192279))

(declare-fun m!2192281 () Bool)

(assert (=> d!541768 m!2192281))

(assert (=> d!541768 m!2191629))

(assert (=> d!541768 m!2192265))

(declare-fun m!2192283 () Bool)

(assert (=> d!541768 m!2192283))

(assert (=> d!541768 m!2192279))

(assert (=> d!541768 m!2192261))

(declare-fun m!2192285 () Bool)

(assert (=> d!541768 m!2192285))

(assert (=> b!1772769 m!2192253))

(assert (=> b!1772769 m!2192255))

(assert (=> b!1772769 m!2192249))

(assert (=> b!1772769 m!2192249))

(assert (=> b!1772769 m!2192251))

(assert (=> b!1772769 m!2192253))

(assert (=> b!1772769 m!2192255))

(declare-fun m!2192287 () Bool)

(assert (=> b!1772769 m!2192287))

(assert (=> b!1772771 m!2192253))

(assert (=> b!1772771 m!2192255))

(assert (=> b!1772771 m!2191695))

(declare-fun m!2192289 () Bool)

(assert (=> b!1772771 m!2192289))

(assert (=> b!1772771 m!2191695))

(declare-fun m!2192291 () Bool)

(assert (=> b!1772771 m!2192291))

(assert (=> b!1772771 m!2192253))

(declare-fun m!2192293 () Bool)

(assert (=> b!1772771 m!2192293))

(declare-fun m!2192295 () Bool)

(assert (=> b!1772771 m!2192295))

(assert (=> b!1772771 m!2192289))

(declare-fun m!2192297 () Bool)

(assert (=> b!1772771 m!2192297))

(assert (=> b!1772281 d!541768))

(declare-fun d!541834 () Bool)

(declare-fun e!1134289 () Bool)

(assert (=> d!541834 e!1134289))

(declare-fun res!798436 () Bool)

(assert (=> d!541834 (=> (not res!798436) (not e!1134289))))

(declare-fun lt!686465 () List!19572)

(assert (=> d!541834 (= res!798436 (= (content!2830 lt!686465) ((_ map or) (content!2830 lt!686206) (content!2830 (_2!10957 lt!686207)))))))

(declare-fun e!1134288 () List!19572)

(assert (=> d!541834 (= lt!686465 e!1134288)))

(declare-fun c!288747 () Bool)

(assert (=> d!541834 (= c!288747 ((_ is Nil!19502) lt!686206))))

(assert (=> d!541834 (= (++!5311 lt!686206 (_2!10957 lt!686207)) lt!686465)))

(declare-fun b!1772773 () Bool)

(assert (=> b!1772773 (= e!1134288 (_2!10957 lt!686207))))

(declare-fun b!1772775 () Bool)

(declare-fun res!798435 () Bool)

(assert (=> b!1772775 (=> (not res!798435) (not e!1134289))))

(assert (=> b!1772775 (= res!798435 (= (size!15494 lt!686465) (+ (size!15494 lt!686206) (size!15494 (_2!10957 lt!686207)))))))

(declare-fun b!1772774 () Bool)

(assert (=> b!1772774 (= e!1134288 (Cons!19502 (h!24903 lt!686206) (++!5311 (t!165487 lt!686206) (_2!10957 lt!686207))))))

(declare-fun b!1772776 () Bool)

(assert (=> b!1772776 (= e!1134289 (or (not (= (_2!10957 lt!686207) Nil!19502)) (= lt!686465 lt!686206)))))

(assert (= (and d!541834 c!288747) b!1772773))

(assert (= (and d!541834 (not c!288747)) b!1772774))

(assert (= (and d!541834 res!798436) b!1772775))

(assert (= (and b!1772775 res!798435) b!1772776))

(declare-fun m!2192299 () Bool)

(assert (=> d!541834 m!2192299))

(declare-fun m!2192301 () Bool)

(assert (=> d!541834 m!2192301))

(declare-fun m!2192303 () Bool)

(assert (=> d!541834 m!2192303))

(declare-fun m!2192305 () Bool)

(assert (=> b!1772775 m!2192305))

(assert (=> b!1772775 m!2191613))

(declare-fun m!2192307 () Bool)

(assert (=> b!1772775 m!2192307))

(declare-fun m!2192309 () Bool)

(assert (=> b!1772774 m!2192309))

(assert (=> b!1772281 d!541834))

(declare-fun d!541836 () Bool)

(assert (=> d!541836 (= (get!5958 lt!686198) (v!25472 lt!686198))))

(assert (=> b!1772281 d!541836))

(declare-fun d!541838 () Bool)

(assert (=> d!541838 (= (isDefined!3340 lt!686199) (not (isEmpty!12322 lt!686199)))))

(declare-fun bs!404794 () Bool)

(assert (= bs!404794 d!541838))

(declare-fun m!2192311 () Bool)

(assert (=> bs!404794 m!2192311))

(assert (=> b!1772281 d!541838))

(declare-fun d!541840 () Bool)

(declare-fun e!1134292 () Bool)

(assert (=> d!541840 e!1134292))

(declare-fun res!798441 () Bool)

(assert (=> d!541840 (=> (not res!798441) (not e!1134292))))

(assert (=> d!541840 (= res!798441 (isDefined!3340 (getRuleFromTag!535 thiss!24550 rules!3447 (tag!3869 (rule!5535 (_1!10957 lt!686207))))))))

(declare-fun lt!686468 () Unit!33710)

(declare-fun choose!11044 (LexerInterface!3116 List!19573 List!19572 Token!6540) Unit!33710)

(assert (=> d!541840 (= lt!686468 (choose!11044 thiss!24550 rules!3447 lt!686222 (_1!10957 lt!686207)))))

(assert (=> d!541840 (rulesInvariant!2785 thiss!24550 rules!3447)))

(assert (=> d!541840 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!535 thiss!24550 rules!3447 lt!686222 (_1!10957 lt!686207)) lt!686468)))

(declare-fun b!1772781 () Bool)

(declare-fun res!798442 () Bool)

(assert (=> b!1772781 (=> (not res!798442) (not e!1134292))))

(assert (=> b!1772781 (= res!798442 (matchR!2288 (regex!3487 (get!5957 (getRuleFromTag!535 thiss!24550 rules!3447 (tag!3869 (rule!5535 (_1!10957 lt!686207)))))) (list!7925 (charsOf!2136 (_1!10957 lt!686207)))))))

(declare-fun b!1772782 () Bool)

(assert (=> b!1772782 (= e!1134292 (= (rule!5535 (_1!10957 lt!686207)) (get!5957 (getRuleFromTag!535 thiss!24550 rules!3447 (tag!3869 (rule!5535 (_1!10957 lt!686207)))))))))

(assert (= (and d!541840 res!798441) b!1772781))

(assert (= (and b!1772781 res!798442) b!1772782))

(assert (=> d!541840 m!2191673))

(assert (=> d!541840 m!2191673))

(declare-fun m!2192313 () Bool)

(assert (=> d!541840 m!2192313))

(declare-fun m!2192315 () Bool)

(assert (=> d!541840 m!2192315))

(assert (=> d!541840 m!2191627))

(assert (=> b!1772781 m!2191673))

(assert (=> b!1772781 m!2191673))

(declare-fun m!2192317 () Bool)

(assert (=> b!1772781 m!2192317))

(assert (=> b!1772781 m!2191643))

(declare-fun m!2192319 () Bool)

(assert (=> b!1772781 m!2192319))

(assert (=> b!1772781 m!2191641))

(assert (=> b!1772781 m!2191641))

(assert (=> b!1772781 m!2191643))

(assert (=> b!1772782 m!2191673))

(assert (=> b!1772782 m!2191673))

(assert (=> b!1772782 m!2192317))

(assert (=> b!1772281 d!541840))

(declare-fun d!541842 () Bool)

(assert (=> d!541842 (= (apply!5287 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) lt!686223) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))))

(declare-fun b_lambda!57777 () Bool)

(assert (=> (not b_lambda!57777) (not d!541842)))

(assert (=> d!541842 t!165475))

(declare-fun b_and!134957 () Bool)

(assert (= b_and!134915 (and (=> t!165475 result!129078) b_and!134957)))

(assert (=> d!541842 t!165477))

(declare-fun b_and!134959 () Bool)

(assert (= b_and!134917 (and (=> t!165477 result!129082) b_and!134959)))

(assert (=> d!541842 t!165479))

(declare-fun b_and!134961 () Bool)

(assert (= b_and!134919 (and (=> t!165479 result!129084) b_and!134961)))

(assert (=> d!541842 m!2191745))

(assert (=> b!1772280 d!541842))

(declare-fun d!541844 () Bool)

(declare-fun lt!686471 () Int)

(assert (=> d!541844 (= lt!686471 (size!15494 (list!7925 lt!686223)))))

(declare-fun size!15496 (Conc!6487) Int)

(assert (=> d!541844 (= lt!686471 (size!15496 (c!288661 lt!686223)))))

(assert (=> d!541844 (= (size!15493 lt!686223) lt!686471)))

(declare-fun bs!404795 () Bool)

(assert (= bs!404795 d!541844))

(assert (=> bs!404795 m!2191675))

(assert (=> bs!404795 m!2191675))

(declare-fun m!2192321 () Bool)

(assert (=> bs!404795 m!2192321))

(declare-fun m!2192323 () Bool)

(assert (=> bs!404795 m!2192323))

(assert (=> b!1772280 d!541844))

(declare-fun d!541846 () Bool)

(assert (=> d!541846 (= (size!15492 (_1!10957 lt!686207)) (size!15494 (originalCharacters!4301 (_1!10957 lt!686207))))))

(declare-fun Unit!33717 () Unit!33710)

(assert (=> d!541846 (= (lemmaCharactersSize!545 (_1!10957 lt!686207)) Unit!33717)))

(declare-fun bs!404796 () Bool)

(assert (= bs!404796 d!541846))

(declare-fun m!2192325 () Bool)

(assert (=> bs!404796 m!2192325))

(assert (=> b!1772280 d!541846))

(declare-fun b!1772807 () Bool)

(declare-fun e!1134305 () Bool)

(assert (=> b!1772807 (= e!1134305 true)))

(declare-fun d!541848 () Bool)

(assert (=> d!541848 e!1134305))

(assert (= d!541848 b!1772807))

(declare-fun lambda!70469 () Int)

(declare-fun order!12467 () Int)

(declare-fun dynLambda!9482 (Int Int) Int)

(assert (=> b!1772807 (< (dynLambda!9476 order!12459 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) (dynLambda!9482 order!12467 lambda!70469))))

(assert (=> b!1772807 (< (dynLambda!9478 order!12463 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) (dynLambda!9482 order!12467 lambda!70469))))

(assert (=> d!541848 (= (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (seqFromList!2456 (originalCharacters!4301 (_1!10957 lt!686207)))))))

(declare-fun lt!686484 () Unit!33710)

(declare-fun Forall2of!138 (Int BalanceConc!12918 BalanceConc!12918) Unit!33710)

(assert (=> d!541848 (= lt!686484 (Forall2of!138 lambda!70469 lt!686223 (seqFromList!2456 (originalCharacters!4301 (_1!10957 lt!686207)))))))

(assert (=> d!541848 (= (list!7925 lt!686223) (list!7925 (seqFromList!2456 (originalCharacters!4301 (_1!10957 lt!686207)))))))

(assert (=> d!541848 (= (lemmaEqSameImage!398 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) lt!686223 (seqFromList!2456 (originalCharacters!4301 (_1!10957 lt!686207)))) lt!686484)))

(declare-fun b_lambda!57779 () Bool)

(assert (=> (not b_lambda!57779) (not d!541848)))

(assert (=> d!541848 t!165475))

(declare-fun b_and!134963 () Bool)

(assert (= b_and!134957 (and (=> t!165475 result!129078) b_and!134963)))

(assert (=> d!541848 t!165477))

(declare-fun b_and!134965 () Bool)

(assert (= b_and!134959 (and (=> t!165477 result!129082) b_and!134965)))

(assert (=> d!541848 t!165479))

(declare-fun b_and!134967 () Bool)

(assert (= b_and!134961 (and (=> t!165479 result!129084) b_and!134967)))

(declare-fun b_lambda!57781 () Bool)

(assert (=> (not b_lambda!57781) (not d!541848)))

(declare-fun tb!107343 () Bool)

(declare-fun t!165508 () Bool)

(assert (=> (and b!1772299 (= (toValue!5014 (transformation!3487 (h!24904 rules!3447))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165508) tb!107343))

(declare-fun result!129110 () Bool)

(assert (=> tb!107343 (= result!129110 (inv!21 (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (seqFromList!2456 (originalCharacters!4301 (_1!10957 lt!686207))))))))

(declare-fun m!2192327 () Bool)

(assert (=> tb!107343 m!2192327))

(assert (=> d!541848 t!165508))

(declare-fun b_and!134969 () Bool)

(assert (= b_and!134963 (and (=> t!165508 result!129110) b_and!134969)))

(declare-fun t!165510 () Bool)

(declare-fun tb!107345 () Bool)

(assert (=> (and b!1772285 (= (toValue!5014 (transformation!3487 (rule!5535 token!523))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165510) tb!107345))

(declare-fun result!129112 () Bool)

(assert (= result!129112 result!129110))

(assert (=> d!541848 t!165510))

(declare-fun b_and!134971 () Bool)

(assert (= b_and!134965 (and (=> t!165510 result!129112) b_and!134971)))

(declare-fun t!165512 () Bool)

(declare-fun tb!107347 () Bool)

(assert (=> (and b!1772272 (= (toValue!5014 (transformation!3487 rule!422)) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165512) tb!107347))

(declare-fun result!129114 () Bool)

(assert (= result!129114 result!129110))

(assert (=> d!541848 t!165512))

(declare-fun b_and!134973 () Bool)

(assert (= b_and!134967 (and (=> t!165512 result!129114) b_and!134973)))

(assert (=> d!541848 m!2191745))

(assert (=> d!541848 m!2191711))

(declare-fun m!2192329 () Bool)

(assert (=> d!541848 m!2192329))

(assert (=> d!541848 m!2191711))

(declare-fun m!2192331 () Bool)

(assert (=> d!541848 m!2192331))

(assert (=> d!541848 m!2191711))

(declare-fun m!2192333 () Bool)

(assert (=> d!541848 m!2192333))

(assert (=> d!541848 m!2191675))

(assert (=> b!1772280 d!541848))

(declare-fun d!541850 () Bool)

(declare-fun fromListB!1126 (List!19572) BalanceConc!12918)

(assert (=> d!541850 (= (seqFromList!2456 (originalCharacters!4301 (_1!10957 lt!686207))) (fromListB!1126 (originalCharacters!4301 (_1!10957 lt!686207))))))

(declare-fun bs!404797 () Bool)

(assert (= bs!404797 d!541850))

(declare-fun m!2192335 () Bool)

(assert (=> bs!404797 m!2192335))

(assert (=> b!1772280 d!541850))

(declare-fun d!541852 () Bool)

(assert (=> d!541852 (= (get!5958 lt!686189) (v!25472 lt!686189))))

(assert (=> b!1772301 d!541852))

(declare-fun d!541854 () Bool)

(declare-fun c!288750 () Bool)

(assert (=> d!541854 (= c!288750 ((_ is IntegerValue!10731) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))

(declare-fun e!1134307 () Bool)

(assert (=> d!541854 (= (inv!21 (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)) e!1134307)))

(declare-fun b!1772808 () Bool)

(declare-fun res!798459 () Bool)

(declare-fun e!1134309 () Bool)

(assert (=> b!1772808 (=> res!798459 e!1134309)))

(assert (=> b!1772808 (= res!798459 (not ((_ is IntegerValue!10733) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))))))

(declare-fun e!1134308 () Bool)

(assert (=> b!1772808 (= e!1134308 e!1134309)))

(declare-fun b!1772809 () Bool)

(assert (=> b!1772809 (= e!1134308 (inv!17 (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))

(declare-fun b!1772810 () Bool)

(assert (=> b!1772810 (= e!1134307 (inv!16 (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))

(declare-fun b!1772811 () Bool)

(assert (=> b!1772811 (= e!1134309 (inv!15 (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))

(declare-fun b!1772812 () Bool)

(assert (=> b!1772812 (= e!1134307 e!1134308)))

(declare-fun c!288751 () Bool)

(assert (=> b!1772812 (= c!288751 ((_ is IntegerValue!10732) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))

(assert (= (and d!541854 c!288750) b!1772810))

(assert (= (and d!541854 (not c!288750)) b!1772812))

(assert (= (and b!1772812 c!288751) b!1772809))

(assert (= (and b!1772812 (not c!288751)) b!1772808))

(assert (= (and b!1772808 (not res!798459)) b!1772811))

(declare-fun m!2192337 () Bool)

(assert (=> b!1772809 m!2192337))

(declare-fun m!2192339 () Bool)

(assert (=> b!1772810 m!2192339))

(declare-fun m!2192341 () Bool)

(assert (=> b!1772811 m!2192341))

(assert (=> tb!107313 d!541854))

(declare-fun d!541856 () Bool)

(assert (=> d!541856 (= (inv!25342 (tag!3869 (h!24904 rules!3447))) (= (mod (str.len (value!109051 (tag!3869 (h!24904 rules!3447)))) 2) 0))))

(assert (=> b!1772279 d!541856))

(declare-fun d!541858 () Bool)

(declare-fun res!798460 () Bool)

(declare-fun e!1134310 () Bool)

(assert (=> d!541858 (=> (not res!798460) (not e!1134310))))

(assert (=> d!541858 (= res!798460 (semiInverseModEq!1391 (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toValue!5014 (transformation!3487 (h!24904 rules!3447)))))))

(assert (=> d!541858 (= (inv!25347 (transformation!3487 (h!24904 rules!3447))) e!1134310)))

(declare-fun b!1772813 () Bool)

(assert (=> b!1772813 (= e!1134310 (equivClasses!1332 (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toValue!5014 (transformation!3487 (h!24904 rules!3447)))))))

(assert (= (and d!541858 res!798460) b!1772813))

(declare-fun m!2192343 () Bool)

(assert (=> d!541858 m!2192343))

(declare-fun m!2192345 () Bool)

(assert (=> b!1772813 m!2192345))

(assert (=> b!1772279 d!541858))

(declare-fun d!541860 () Bool)

(declare-fun c!288755 () Bool)

(assert (=> d!541860 (= c!288755 ((_ is Node!6487) (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))))))

(declare-fun e!1134319 () Bool)

(assert (=> d!541860 (= (inv!25349 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))) e!1134319)))

(declare-fun b!1772829 () Bool)

(declare-fun inv!25351 (Conc!6487) Bool)

(assert (=> b!1772829 (= e!1134319 (inv!25351 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))))))

(declare-fun b!1772830 () Bool)

(declare-fun e!1134320 () Bool)

(assert (=> b!1772830 (= e!1134319 e!1134320)))

(declare-fun res!798470 () Bool)

(assert (=> b!1772830 (= res!798470 (not ((_ is Leaf!9451) (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207)))))))))

(assert (=> b!1772830 (=> res!798470 e!1134320)))

(declare-fun b!1772831 () Bool)

(declare-fun inv!25352 (Conc!6487) Bool)

(assert (=> b!1772831 (= e!1134320 (inv!25352 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))))))

(assert (= (and d!541860 c!288755) b!1772829))

(assert (= (and d!541860 (not c!288755)) b!1772830))

(assert (= (and b!1772830 (not res!798470)) b!1772831))

(declare-fun m!2192381 () Bool)

(assert (=> b!1772829 m!2192381))

(declare-fun m!2192383 () Bool)

(assert (=> b!1772831 m!2192383))

(assert (=> b!1772320 d!541860))

(declare-fun d!541862 () Bool)

(declare-fun choose!11045 (Int) Bool)

(assert (=> d!541862 (= (Forall!854 lambda!70460) (choose!11045 lambda!70460))))

(declare-fun bs!404798 () Bool)

(assert (= bs!404798 d!541862))

(declare-fun m!2192395 () Bool)

(assert (=> bs!404798 m!2192395))

(assert (=> b!1772289 d!541862))

(declare-fun d!541866 () Bool)

(declare-fun e!1134327 () Bool)

(assert (=> d!541866 e!1134327))

(declare-fun res!798473 () Bool)

(assert (=> d!541866 (=> (not res!798473) (not e!1134327))))

(assert (=> d!541866 (= res!798473 (semiInverseModEq!1391 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))))))

(declare-fun Unit!33718 () Unit!33710)

(assert (=> d!541866 (= (lemmaInv!686 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) Unit!33718)))

(declare-fun b!1772840 () Bool)

(assert (=> b!1772840 (= e!1134327 (equivClasses!1332 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))))))

(assert (= (and d!541866 res!798473) b!1772840))

(declare-fun m!2192405 () Bool)

(assert (=> d!541866 m!2192405))

(declare-fun m!2192407 () Bool)

(assert (=> b!1772840 m!2192407))

(assert (=> b!1772289 d!541866))

(declare-fun d!541872 () Bool)

(declare-fun lt!686496 () Bool)

(declare-fun content!2831 (List!19573) (InoxSet Rule!6774))

(assert (=> d!541872 (= lt!686496 (select (content!2831 rules!3447) rule!422))))

(declare-fun e!1134333 () Bool)

(assert (=> d!541872 (= lt!686496 e!1134333)))

(declare-fun res!798478 () Bool)

(assert (=> d!541872 (=> (not res!798478) (not e!1134333))))

(assert (=> d!541872 (= res!798478 ((_ is Cons!19503) rules!3447))))

(assert (=> d!541872 (= (contains!3519 rules!3447 rule!422) lt!686496)))

(declare-fun b!1772847 () Bool)

(declare-fun e!1134334 () Bool)

(assert (=> b!1772847 (= e!1134333 e!1134334)))

(declare-fun res!798479 () Bool)

(assert (=> b!1772847 (=> res!798479 e!1134334)))

(assert (=> b!1772847 (= res!798479 (= (h!24904 rules!3447) rule!422))))

(declare-fun b!1772848 () Bool)

(assert (=> b!1772848 (= e!1134334 (contains!3519 (t!165488 rules!3447) rule!422))))

(assert (= (and d!541872 res!798478) b!1772847))

(assert (= (and b!1772847 (not res!798479)) b!1772848))

(declare-fun m!2192413 () Bool)

(assert (=> d!541872 m!2192413))

(declare-fun m!2192415 () Bool)

(assert (=> d!541872 m!2192415))

(declare-fun m!2192417 () Bool)

(assert (=> b!1772848 m!2192417))

(assert (=> b!1772288 d!541872))

(declare-fun d!541878 () Bool)

(declare-fun res!798482 () Bool)

(declare-fun e!1134337 () Bool)

(assert (=> d!541878 (=> (not res!798482) (not e!1134337))))

(declare-fun rulesValid!1317 (LexerInterface!3116 List!19573) Bool)

(assert (=> d!541878 (= res!798482 (rulesValid!1317 thiss!24550 rules!3447))))

(assert (=> d!541878 (= (rulesInvariant!2785 thiss!24550 rules!3447) e!1134337)))

(declare-fun b!1772851 () Bool)

(declare-datatypes ((List!19576 0))(
  ( (Nil!19506) (Cons!19506 (h!24907 String!22217) (t!165551 List!19576)) )
))
(declare-fun noDuplicateTag!1317 (LexerInterface!3116 List!19573 List!19576) Bool)

(assert (=> b!1772851 (= e!1134337 (noDuplicateTag!1317 thiss!24550 rules!3447 Nil!19506))))

(assert (= (and d!541878 res!798482) b!1772851))

(declare-fun m!2192419 () Bool)

(assert (=> d!541878 m!2192419))

(declare-fun m!2192421 () Bool)

(assert (=> b!1772851 m!2192421))

(assert (=> b!1772286 d!541878))

(declare-fun b!1772852 () Bool)

(declare-fun res!798483 () Bool)

(declare-fun e!1134342 () Bool)

(assert (=> b!1772852 (=> res!798483 e!1134342)))

(assert (=> b!1772852 (= res!798483 (not (isEmpty!12319 (tail!2653 (list!7925 (charsOf!2136 (_1!10957 lt!686207)))))))))

(declare-fun d!541880 () Bool)

(declare-fun e!1134341 () Bool)

(assert (=> d!541880 e!1134341))

(declare-fun c!288762 () Bool)

(assert (=> d!541880 (= c!288762 ((_ is EmptyExpr!4815) (regex!3487 lt!686197)))))

(declare-fun lt!686497 () Bool)

(declare-fun e!1134339 () Bool)

(assert (=> d!541880 (= lt!686497 e!1134339)))

(declare-fun c!288761 () Bool)

(assert (=> d!541880 (= c!288761 (isEmpty!12319 (list!7925 (charsOf!2136 (_1!10957 lt!686207)))))))

(assert (=> d!541880 (validRegex!1951 (regex!3487 lt!686197))))

(assert (=> d!541880 (= (matchR!2288 (regex!3487 lt!686197) (list!7925 (charsOf!2136 (_1!10957 lt!686207)))) lt!686497)))

(declare-fun b!1772853 () Bool)

(declare-fun res!798488 () Bool)

(declare-fun e!1134344 () Bool)

(assert (=> b!1772853 (=> (not res!798488) (not e!1134344))))

(declare-fun call!111158 () Bool)

(assert (=> b!1772853 (= res!798488 (not call!111158))))

(declare-fun b!1772854 () Bool)

(declare-fun e!1134343 () Bool)

(declare-fun e!1134340 () Bool)

(assert (=> b!1772854 (= e!1134343 e!1134340)))

(declare-fun res!798487 () Bool)

(assert (=> b!1772854 (=> (not res!798487) (not e!1134340))))

(assert (=> b!1772854 (= res!798487 (not lt!686497))))

(declare-fun b!1772855 () Bool)

(assert (=> b!1772855 (= e!1134339 (matchR!2288 (derivativeStep!1245 (regex!3487 lt!686197) (head!4120 (list!7925 (charsOf!2136 (_1!10957 lt!686207))))) (tail!2653 (list!7925 (charsOf!2136 (_1!10957 lt!686207))))))))

(declare-fun b!1772856 () Bool)

(declare-fun e!1134338 () Bool)

(assert (=> b!1772856 (= e!1134341 e!1134338)))

(declare-fun c!288760 () Bool)

(assert (=> b!1772856 (= c!288760 ((_ is EmptyLang!4815) (regex!3487 lt!686197)))))

(declare-fun b!1772857 () Bool)

(declare-fun res!798490 () Bool)

(assert (=> b!1772857 (=> (not res!798490) (not e!1134344))))

(assert (=> b!1772857 (= res!798490 (isEmpty!12319 (tail!2653 (list!7925 (charsOf!2136 (_1!10957 lt!686207))))))))

(declare-fun b!1772858 () Bool)

(assert (=> b!1772858 (= e!1134341 (= lt!686497 call!111158))))

(declare-fun b!1772859 () Bool)

(assert (=> b!1772859 (= e!1134342 (not (= (head!4120 (list!7925 (charsOf!2136 (_1!10957 lt!686207)))) (c!288660 (regex!3487 lt!686197)))))))

(declare-fun b!1772860 () Bool)

(declare-fun res!798484 () Bool)

(assert (=> b!1772860 (=> res!798484 e!1134343)))

(assert (=> b!1772860 (= res!798484 e!1134344)))

(declare-fun res!798486 () Bool)

(assert (=> b!1772860 (=> (not res!798486) (not e!1134344))))

(assert (=> b!1772860 (= res!798486 lt!686497)))

(declare-fun b!1772861 () Bool)

(assert (=> b!1772861 (= e!1134340 e!1134342)))

(declare-fun res!798485 () Bool)

(assert (=> b!1772861 (=> res!798485 e!1134342)))

(assert (=> b!1772861 (= res!798485 call!111158)))

(declare-fun bm!111153 () Bool)

(assert (=> bm!111153 (= call!111158 (isEmpty!12319 (list!7925 (charsOf!2136 (_1!10957 lt!686207)))))))

(declare-fun b!1772862 () Bool)

(assert (=> b!1772862 (= e!1134338 (not lt!686497))))

(declare-fun b!1772863 () Bool)

(declare-fun res!798489 () Bool)

(assert (=> b!1772863 (=> res!798489 e!1134343)))

(assert (=> b!1772863 (= res!798489 (not ((_ is ElementMatch!4815) (regex!3487 lt!686197))))))

(assert (=> b!1772863 (= e!1134338 e!1134343)))

(declare-fun b!1772864 () Bool)

(assert (=> b!1772864 (= e!1134339 (nullable!1476 (regex!3487 lt!686197)))))

(declare-fun b!1772865 () Bool)

(assert (=> b!1772865 (= e!1134344 (= (head!4120 (list!7925 (charsOf!2136 (_1!10957 lt!686207)))) (c!288660 (regex!3487 lt!686197))))))

(assert (= (and d!541880 c!288761) b!1772864))

(assert (= (and d!541880 (not c!288761)) b!1772855))

(assert (= (and d!541880 c!288762) b!1772858))

(assert (= (and d!541880 (not c!288762)) b!1772856))

(assert (= (and b!1772856 c!288760) b!1772862))

(assert (= (and b!1772856 (not c!288760)) b!1772863))

(assert (= (and b!1772863 (not res!798489)) b!1772860))

(assert (= (and b!1772860 res!798486) b!1772853))

(assert (= (and b!1772853 res!798488) b!1772857))

(assert (= (and b!1772857 res!798490) b!1772865))

(assert (= (and b!1772860 (not res!798484)) b!1772854))

(assert (= (and b!1772854 res!798487) b!1772861))

(assert (= (and b!1772861 (not res!798485)) b!1772852))

(assert (= (and b!1772852 (not res!798483)) b!1772859))

(assert (= (or b!1772858 b!1772853 b!1772861) bm!111153))

(assert (=> b!1772859 m!2191643))

(declare-fun m!2192423 () Bool)

(assert (=> b!1772859 m!2192423))

(assert (=> b!1772855 m!2191643))

(assert (=> b!1772855 m!2192423))

(assert (=> b!1772855 m!2192423))

(declare-fun m!2192425 () Bool)

(assert (=> b!1772855 m!2192425))

(assert (=> b!1772855 m!2191643))

(declare-fun m!2192427 () Bool)

(assert (=> b!1772855 m!2192427))

(assert (=> b!1772855 m!2192425))

(assert (=> b!1772855 m!2192427))

(declare-fun m!2192429 () Bool)

(assert (=> b!1772855 m!2192429))

(assert (=> b!1772857 m!2191643))

(assert (=> b!1772857 m!2192427))

(assert (=> b!1772857 m!2192427))

(declare-fun m!2192431 () Bool)

(assert (=> b!1772857 m!2192431))

(assert (=> b!1772865 m!2191643))

(assert (=> b!1772865 m!2192423))

(assert (=> bm!111153 m!2191643))

(declare-fun m!2192433 () Bool)

(assert (=> bm!111153 m!2192433))

(assert (=> b!1772852 m!2191643))

(assert (=> b!1772852 m!2192427))

(assert (=> b!1772852 m!2192427))

(assert (=> b!1772852 m!2192431))

(assert (=> d!541880 m!2191643))

(assert (=> d!541880 m!2192433))

(declare-fun m!2192435 () Bool)

(assert (=> d!541880 m!2192435))

(declare-fun m!2192437 () Bool)

(assert (=> b!1772864 m!2192437))

(assert (=> b!1772273 d!541880))

(declare-fun d!541882 () Bool)

(assert (=> d!541882 (= (list!7925 (charsOf!2136 (_1!10957 lt!686207))) (list!7928 (c!288661 (charsOf!2136 (_1!10957 lt!686207)))))))

(declare-fun bs!404800 () Bool)

(assert (= bs!404800 d!541882))

(declare-fun m!2192439 () Bool)

(assert (=> bs!404800 m!2192439))

(assert (=> b!1772273 d!541882))

(assert (=> b!1772273 d!541754))

(declare-fun d!541884 () Bool)

(assert (=> d!541884 (= (get!5957 lt!686199) (v!25473 lt!686199))))

(assert (=> b!1772273 d!541884))

(declare-fun d!541886 () Bool)

(declare-fun c!288763 () Bool)

(assert (=> d!541886 (= c!288763 ((_ is Node!6487) (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))))

(declare-fun e!1134345 () Bool)

(assert (=> d!541886 (= (inv!25349 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))) e!1134345)))

(declare-fun b!1772866 () Bool)

(assert (=> b!1772866 (= e!1134345 (inv!25351 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))))

(declare-fun b!1772867 () Bool)

(declare-fun e!1134346 () Bool)

(assert (=> b!1772867 (= e!1134345 e!1134346)))

(declare-fun res!798491 () Bool)

(assert (=> b!1772867 (= res!798491 (not ((_ is Leaf!9451) (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))))))))

(assert (=> b!1772867 (=> res!798491 e!1134346)))

(declare-fun b!1772868 () Bool)

(assert (=> b!1772868 (= e!1134346 (inv!25352 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))))))

(assert (= (and d!541886 c!288763) b!1772866))

(assert (= (and d!541886 (not c!288763)) b!1772867))

(assert (= (and b!1772867 (not res!798491)) b!1772868))

(declare-fun m!2192441 () Bool)

(assert (=> b!1772866 m!2192441))

(declare-fun m!2192443 () Bool)

(assert (=> b!1772868 m!2192443))

(assert (=> b!1772317 d!541886))

(declare-fun b!1772869 () Bool)

(declare-fun res!798492 () Bool)

(declare-fun e!1134351 () Bool)

(assert (=> b!1772869 (=> res!798492 e!1134351)))

(assert (=> b!1772869 (= res!798492 (not (isEmpty!12319 (tail!2653 lt!686202))))))

(declare-fun d!541888 () Bool)

(declare-fun e!1134350 () Bool)

(assert (=> d!541888 e!1134350))

(declare-fun c!288766 () Bool)

(assert (=> d!541888 (= c!288766 ((_ is EmptyExpr!4815) (regex!3487 rule!422)))))

(declare-fun lt!686498 () Bool)

(declare-fun e!1134348 () Bool)

(assert (=> d!541888 (= lt!686498 e!1134348)))

(declare-fun c!288765 () Bool)

(assert (=> d!541888 (= c!288765 (isEmpty!12319 lt!686202))))

(assert (=> d!541888 (validRegex!1951 (regex!3487 rule!422))))

(assert (=> d!541888 (= (matchR!2288 (regex!3487 rule!422) lt!686202) lt!686498)))

(declare-fun b!1772870 () Bool)

(declare-fun res!798497 () Bool)

(declare-fun e!1134353 () Bool)

(assert (=> b!1772870 (=> (not res!798497) (not e!1134353))))

(declare-fun call!111159 () Bool)

(assert (=> b!1772870 (= res!798497 (not call!111159))))

(declare-fun b!1772871 () Bool)

(declare-fun e!1134352 () Bool)

(declare-fun e!1134349 () Bool)

(assert (=> b!1772871 (= e!1134352 e!1134349)))

(declare-fun res!798496 () Bool)

(assert (=> b!1772871 (=> (not res!798496) (not e!1134349))))

(assert (=> b!1772871 (= res!798496 (not lt!686498))))

(declare-fun b!1772872 () Bool)

(assert (=> b!1772872 (= e!1134348 (matchR!2288 (derivativeStep!1245 (regex!3487 rule!422) (head!4120 lt!686202)) (tail!2653 lt!686202)))))

(declare-fun b!1772873 () Bool)

(declare-fun e!1134347 () Bool)

(assert (=> b!1772873 (= e!1134350 e!1134347)))

(declare-fun c!288764 () Bool)

(assert (=> b!1772873 (= c!288764 ((_ is EmptyLang!4815) (regex!3487 rule!422)))))

(declare-fun b!1772874 () Bool)

(declare-fun res!798499 () Bool)

(assert (=> b!1772874 (=> (not res!798499) (not e!1134353))))

(assert (=> b!1772874 (= res!798499 (isEmpty!12319 (tail!2653 lt!686202)))))

(declare-fun b!1772875 () Bool)

(assert (=> b!1772875 (= e!1134350 (= lt!686498 call!111159))))

(declare-fun b!1772876 () Bool)

(assert (=> b!1772876 (= e!1134351 (not (= (head!4120 lt!686202) (c!288660 (regex!3487 rule!422)))))))

(declare-fun b!1772877 () Bool)

(declare-fun res!798493 () Bool)

(assert (=> b!1772877 (=> res!798493 e!1134352)))

(assert (=> b!1772877 (= res!798493 e!1134353)))

(declare-fun res!798495 () Bool)

(assert (=> b!1772877 (=> (not res!798495) (not e!1134353))))

(assert (=> b!1772877 (= res!798495 lt!686498)))

(declare-fun b!1772878 () Bool)

(assert (=> b!1772878 (= e!1134349 e!1134351)))

(declare-fun res!798494 () Bool)

(assert (=> b!1772878 (=> res!798494 e!1134351)))

(assert (=> b!1772878 (= res!798494 call!111159)))

(declare-fun bm!111154 () Bool)

(assert (=> bm!111154 (= call!111159 (isEmpty!12319 lt!686202))))

(declare-fun b!1772879 () Bool)

(assert (=> b!1772879 (= e!1134347 (not lt!686498))))

(declare-fun b!1772880 () Bool)

(declare-fun res!798498 () Bool)

(assert (=> b!1772880 (=> res!798498 e!1134352)))

(assert (=> b!1772880 (= res!798498 (not ((_ is ElementMatch!4815) (regex!3487 rule!422))))))

(assert (=> b!1772880 (= e!1134347 e!1134352)))

(declare-fun b!1772881 () Bool)

(assert (=> b!1772881 (= e!1134348 (nullable!1476 (regex!3487 rule!422)))))

(declare-fun b!1772882 () Bool)

(assert (=> b!1772882 (= e!1134353 (= (head!4120 lt!686202) (c!288660 (regex!3487 rule!422))))))

(assert (= (and d!541888 c!288765) b!1772881))

(assert (= (and d!541888 (not c!288765)) b!1772872))

(assert (= (and d!541888 c!288766) b!1772875))

(assert (= (and d!541888 (not c!288766)) b!1772873))

(assert (= (and b!1772873 c!288764) b!1772879))

(assert (= (and b!1772873 (not c!288764)) b!1772880))

(assert (= (and b!1772880 (not res!798498)) b!1772877))

(assert (= (and b!1772877 res!798495) b!1772870))

(assert (= (and b!1772870 res!798497) b!1772874))

(assert (= (and b!1772874 res!798499) b!1772882))

(assert (= (and b!1772877 (not res!798493)) b!1772871))

(assert (= (and b!1772871 res!798496) b!1772878))

(assert (= (and b!1772878 (not res!798494)) b!1772869))

(assert (= (and b!1772869 (not res!798492)) b!1772876))

(assert (= (or b!1772875 b!1772870 b!1772878) bm!111154))

(assert (=> b!1772876 m!2191929))

(assert (=> b!1772872 m!2191929))

(assert (=> b!1772872 m!2191929))

(declare-fun m!2192445 () Bool)

(assert (=> b!1772872 m!2192445))

(assert (=> b!1772872 m!2191925))

(assert (=> b!1772872 m!2192445))

(assert (=> b!1772872 m!2191925))

(declare-fun m!2192447 () Bool)

(assert (=> b!1772872 m!2192447))

(assert (=> b!1772874 m!2191925))

(assert (=> b!1772874 m!2191925))

(declare-fun m!2192449 () Bool)

(assert (=> b!1772874 m!2192449))

(assert (=> b!1772882 m!2191929))

(declare-fun m!2192451 () Bool)

(assert (=> bm!111154 m!2192451))

(assert (=> b!1772869 m!2191925))

(assert (=> b!1772869 m!2191925))

(assert (=> b!1772869 m!2192449))

(assert (=> d!541888 m!2192451))

(declare-fun m!2192453 () Bool)

(assert (=> d!541888 m!2192453))

(declare-fun m!2192455 () Bool)

(assert (=> b!1772881 m!2192455))

(assert (=> b!1772294 d!541888))

(declare-fun d!541890 () Bool)

(declare-fun res!798504 () Bool)

(declare-fun e!1134356 () Bool)

(assert (=> d!541890 (=> (not res!798504) (not e!1134356))))

(assert (=> d!541890 (= res!798504 (validRegex!1951 (regex!3487 rule!422)))))

(assert (=> d!541890 (= (ruleValid!985 thiss!24550 rule!422) e!1134356)))

(declare-fun b!1772887 () Bool)

(declare-fun res!798505 () Bool)

(assert (=> b!1772887 (=> (not res!798505) (not e!1134356))))

(assert (=> b!1772887 (= res!798505 (not (nullable!1476 (regex!3487 rule!422))))))

(declare-fun b!1772888 () Bool)

(assert (=> b!1772888 (= e!1134356 (not (= (tag!3869 rule!422) (String!22218 ""))))))

(assert (= (and d!541890 res!798504) b!1772887))

(assert (= (and b!1772887 res!798505) b!1772888))

(assert (=> d!541890 m!2192453))

(assert (=> b!1772887 m!2192455))

(assert (=> b!1772294 d!541890))

(declare-fun d!541892 () Bool)

(assert (=> d!541892 (ruleValid!985 thiss!24550 rule!422)))

(declare-fun lt!686504 () Unit!33710)

(declare-fun choose!11046 (LexerInterface!3116 Rule!6774 List!19573) Unit!33710)

(assert (=> d!541892 (= lt!686504 (choose!11046 thiss!24550 rule!422 rules!3447))))

(assert (=> d!541892 (contains!3519 rules!3447 rule!422)))

(assert (=> d!541892 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!508 thiss!24550 rule!422 rules!3447) lt!686504)))

(declare-fun bs!404802 () Bool)

(assert (= bs!404802 d!541892))

(assert (=> bs!404802 m!2191637))

(declare-fun m!2192459 () Bool)

(assert (=> bs!404802 m!2192459))

(assert (=> bs!404802 m!2191655))

(assert (=> b!1772294 d!541892))

(declare-fun d!541896 () Bool)

(declare-fun c!288772 () Bool)

(assert (=> d!541896 (= c!288772 (isEmpty!12319 lt!686203))))

(declare-fun e!1134370 () Bool)

(assert (=> d!541896 (= (prefixMatch!698 lt!686201 lt!686203) e!1134370)))

(declare-fun b!1772911 () Bool)

(declare-fun lostCause!587 (Regex!4815) Bool)

(assert (=> b!1772911 (= e!1134370 (not (lostCause!587 lt!686201)))))

(declare-fun b!1772912 () Bool)

(assert (=> b!1772912 (= e!1134370 (prefixMatch!698 (derivativeStep!1245 lt!686201 (head!4120 lt!686203)) (tail!2653 lt!686203)))))

(assert (= (and d!541896 c!288772) b!1772911))

(assert (= (and d!541896 (not c!288772)) b!1772912))

(declare-fun m!2192469 () Bool)

(assert (=> d!541896 m!2192469))

(declare-fun m!2192471 () Bool)

(assert (=> b!1772911 m!2192471))

(assert (=> b!1772912 m!2191833))

(assert (=> b!1772912 m!2191833))

(declare-fun m!2192473 () Bool)

(assert (=> b!1772912 m!2192473))

(assert (=> b!1772912 m!2191825))

(assert (=> b!1772912 m!2192473))

(assert (=> b!1772912 m!2191825))

(declare-fun m!2192475 () Bool)

(assert (=> b!1772912 m!2192475))

(assert (=> b!1772293 d!541896))

(declare-fun d!541904 () Bool)

(declare-fun e!1134372 () Bool)

(assert (=> d!541904 e!1134372))

(declare-fun res!798519 () Bool)

(assert (=> d!541904 (=> (not res!798519) (not e!1134372))))

(declare-fun lt!686506 () List!19572)

(assert (=> d!541904 (= res!798519 (= (content!2830 lt!686506) ((_ map or) (content!2830 lt!686202) (content!2830 (Cons!19502 (head!4120 suffix!1421) Nil!19502)))))))

(declare-fun e!1134371 () List!19572)

(assert (=> d!541904 (= lt!686506 e!1134371)))

(declare-fun c!288773 () Bool)

(assert (=> d!541904 (= c!288773 ((_ is Nil!19502) lt!686202))))

(assert (=> d!541904 (= (++!5311 lt!686202 (Cons!19502 (head!4120 suffix!1421) Nil!19502)) lt!686506)))

(declare-fun b!1772913 () Bool)

(assert (=> b!1772913 (= e!1134371 (Cons!19502 (head!4120 suffix!1421) Nil!19502))))

(declare-fun b!1772915 () Bool)

(declare-fun res!798518 () Bool)

(assert (=> b!1772915 (=> (not res!798518) (not e!1134372))))

(assert (=> b!1772915 (= res!798518 (= (size!15494 lt!686506) (+ (size!15494 lt!686202) (size!15494 (Cons!19502 (head!4120 suffix!1421) Nil!19502)))))))

(declare-fun b!1772914 () Bool)

(assert (=> b!1772914 (= e!1134371 (Cons!19502 (h!24903 lt!686202) (++!5311 (t!165487 lt!686202) (Cons!19502 (head!4120 suffix!1421) Nil!19502))))))

(declare-fun b!1772916 () Bool)

(assert (=> b!1772916 (= e!1134372 (or (not (= (Cons!19502 (head!4120 suffix!1421) Nil!19502) Nil!19502)) (= lt!686506 lt!686202)))))

(assert (= (and d!541904 c!288773) b!1772913))

(assert (= (and d!541904 (not c!288773)) b!1772914))

(assert (= (and d!541904 res!798519) b!1772915))

(assert (= (and b!1772915 res!798518) b!1772916))

(declare-fun m!2192489 () Bool)

(assert (=> d!541904 m!2192489))

(assert (=> d!541904 m!2191851))

(declare-fun m!2192491 () Bool)

(assert (=> d!541904 m!2192491))

(declare-fun m!2192493 () Bool)

(assert (=> b!1772915 m!2192493))

(assert (=> b!1772915 m!2191857))

(declare-fun m!2192495 () Bool)

(assert (=> b!1772915 m!2192495))

(declare-fun m!2192497 () Bool)

(assert (=> b!1772914 m!2192497))

(assert (=> b!1772293 d!541904))

(declare-fun d!541908 () Bool)

(assert (=> d!541908 (= (head!4120 suffix!1421) (h!24903 suffix!1421))))

(assert (=> b!1772293 d!541908))

(declare-fun d!541910 () Bool)

(declare-fun lt!686509 () Unit!33710)

(declare-fun lemma!400 (List!19573 LexerInterface!3116 List!19573) Unit!33710)

(assert (=> d!541910 (= lt!686509 (lemma!400 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70472 () Int)

(declare-datatypes ((List!19577 0))(
  ( (Nil!19507) (Cons!19507 (h!24908 Regex!4815) (t!165552 List!19577)) )
))
(declare-fun generalisedUnion!408 (List!19577) Regex!4815)

(declare-fun map!4023 (List!19573 Int) List!19577)

(assert (=> d!541910 (= (rulesRegex!843 thiss!24550 rules!3447) (generalisedUnion!408 (map!4023 rules!3447 lambda!70472)))))

(declare-fun bs!404803 () Bool)

(assert (= bs!404803 d!541910))

(declare-fun m!2192499 () Bool)

(assert (=> bs!404803 m!2192499))

(declare-fun m!2192501 () Bool)

(assert (=> bs!404803 m!2192501))

(assert (=> bs!404803 m!2192501))

(declare-fun m!2192503 () Bool)

(assert (=> bs!404803 m!2192503))

(assert (=> b!1772293 d!541910))

(declare-fun d!541914 () Bool)

(declare-fun lt!686512 () Int)

(assert (=> d!541914 (= lt!686512 (size!15494 (list!7925 lt!686193)))))

(assert (=> d!541914 (= lt!686512 (size!15496 (c!288661 lt!686193)))))

(assert (=> d!541914 (= (size!15493 lt!686193) lt!686512)))

(declare-fun bs!404804 () Bool)

(assert (= bs!404804 d!541914))

(assert (=> bs!404804 m!2191621))

(assert (=> bs!404804 m!2191621))

(declare-fun m!2192505 () Bool)

(assert (=> bs!404804 m!2192505))

(declare-fun m!2192507 () Bool)

(assert (=> bs!404804 m!2192507))

(assert (=> b!1772271 d!541914))

(declare-fun b!1772923 () Bool)

(declare-fun res!798526 () Bool)

(declare-fun e!1134380 () Bool)

(assert (=> b!1772923 (=> res!798526 e!1134380)))

(assert (=> b!1772923 (= res!798526 (not (isEmpty!12319 (tail!2653 lt!686202))))))

(declare-fun d!541916 () Bool)

(declare-fun e!1134379 () Bool)

(assert (=> d!541916 e!1134379))

(declare-fun c!288776 () Bool)

(assert (=> d!541916 (= c!288776 ((_ is EmptyExpr!4815) lt!686201))))

(declare-fun lt!686513 () Bool)

(declare-fun e!1134377 () Bool)

(assert (=> d!541916 (= lt!686513 e!1134377)))

(declare-fun c!288775 () Bool)

(assert (=> d!541916 (= c!288775 (isEmpty!12319 lt!686202))))

(assert (=> d!541916 (validRegex!1951 lt!686201)))

(assert (=> d!541916 (= (matchR!2288 lt!686201 lt!686202) lt!686513)))

(declare-fun b!1772924 () Bool)

(declare-fun res!798531 () Bool)

(declare-fun e!1134382 () Bool)

(assert (=> b!1772924 (=> (not res!798531) (not e!1134382))))

(declare-fun call!111161 () Bool)

(assert (=> b!1772924 (= res!798531 (not call!111161))))

(declare-fun b!1772925 () Bool)

(declare-fun e!1134381 () Bool)

(declare-fun e!1134378 () Bool)

(assert (=> b!1772925 (= e!1134381 e!1134378)))

(declare-fun res!798530 () Bool)

(assert (=> b!1772925 (=> (not res!798530) (not e!1134378))))

(assert (=> b!1772925 (= res!798530 (not lt!686513))))

(declare-fun b!1772926 () Bool)

(assert (=> b!1772926 (= e!1134377 (matchR!2288 (derivativeStep!1245 lt!686201 (head!4120 lt!686202)) (tail!2653 lt!686202)))))

(declare-fun b!1772927 () Bool)

(declare-fun e!1134376 () Bool)

(assert (=> b!1772927 (= e!1134379 e!1134376)))

(declare-fun c!288774 () Bool)

(assert (=> b!1772927 (= c!288774 ((_ is EmptyLang!4815) lt!686201))))

(declare-fun b!1772928 () Bool)

(declare-fun res!798533 () Bool)

(assert (=> b!1772928 (=> (not res!798533) (not e!1134382))))

(assert (=> b!1772928 (= res!798533 (isEmpty!12319 (tail!2653 lt!686202)))))

(declare-fun b!1772929 () Bool)

(assert (=> b!1772929 (= e!1134379 (= lt!686513 call!111161))))

(declare-fun b!1772930 () Bool)

(assert (=> b!1772930 (= e!1134380 (not (= (head!4120 lt!686202) (c!288660 lt!686201))))))

(declare-fun b!1772931 () Bool)

(declare-fun res!798527 () Bool)

(assert (=> b!1772931 (=> res!798527 e!1134381)))

(assert (=> b!1772931 (= res!798527 e!1134382)))

(declare-fun res!798529 () Bool)

(assert (=> b!1772931 (=> (not res!798529) (not e!1134382))))

(assert (=> b!1772931 (= res!798529 lt!686513)))

(declare-fun b!1772932 () Bool)

(assert (=> b!1772932 (= e!1134378 e!1134380)))

(declare-fun res!798528 () Bool)

(assert (=> b!1772932 (=> res!798528 e!1134380)))

(assert (=> b!1772932 (= res!798528 call!111161)))

(declare-fun bm!111156 () Bool)

(assert (=> bm!111156 (= call!111161 (isEmpty!12319 lt!686202))))

(declare-fun b!1772933 () Bool)

(assert (=> b!1772933 (= e!1134376 (not lt!686513))))

(declare-fun b!1772934 () Bool)

(declare-fun res!798532 () Bool)

(assert (=> b!1772934 (=> res!798532 e!1134381)))

(assert (=> b!1772934 (= res!798532 (not ((_ is ElementMatch!4815) lt!686201)))))

(assert (=> b!1772934 (= e!1134376 e!1134381)))

(declare-fun b!1772935 () Bool)

(assert (=> b!1772935 (= e!1134377 (nullable!1476 lt!686201))))

(declare-fun b!1772936 () Bool)

(assert (=> b!1772936 (= e!1134382 (= (head!4120 lt!686202) (c!288660 lt!686201)))))

(assert (= (and d!541916 c!288775) b!1772935))

(assert (= (and d!541916 (not c!288775)) b!1772926))

(assert (= (and d!541916 c!288776) b!1772929))

(assert (= (and d!541916 (not c!288776)) b!1772927))

(assert (= (and b!1772927 c!288774) b!1772933))

(assert (= (and b!1772927 (not c!288774)) b!1772934))

(assert (= (and b!1772934 (not res!798532)) b!1772931))

(assert (= (and b!1772931 res!798529) b!1772924))

(assert (= (and b!1772924 res!798531) b!1772928))

(assert (= (and b!1772928 res!798533) b!1772936))

(assert (= (and b!1772931 (not res!798527)) b!1772925))

(assert (= (and b!1772925 res!798530) b!1772932))

(assert (= (and b!1772932 (not res!798528)) b!1772923))

(assert (= (and b!1772923 (not res!798526)) b!1772930))

(assert (= (or b!1772929 b!1772924 b!1772932) bm!111156))

(assert (=> b!1772930 m!2191929))

(assert (=> b!1772926 m!2191929))

(assert (=> b!1772926 m!2191929))

(declare-fun m!2192515 () Bool)

(assert (=> b!1772926 m!2192515))

(assert (=> b!1772926 m!2191925))

(assert (=> b!1772926 m!2192515))

(assert (=> b!1772926 m!2191925))

(declare-fun m!2192517 () Bool)

(assert (=> b!1772926 m!2192517))

(assert (=> b!1772928 m!2191925))

(assert (=> b!1772928 m!2191925))

(assert (=> b!1772928 m!2192449))

(assert (=> b!1772936 m!2191929))

(assert (=> bm!111156 m!2192451))

(assert (=> b!1772923 m!2191925))

(assert (=> b!1772923 m!2191925))

(assert (=> b!1772923 m!2192449))

(assert (=> d!541916 m!2192451))

(assert (=> d!541916 m!2191729))

(assert (=> b!1772935 m!2191919))

(assert (=> b!1772271 d!541916))

(declare-fun d!541924 () Bool)

(assert (=> d!541924 (matchR!2288 (rulesRegex!843 thiss!24550 rules!3447) (list!7925 (charsOf!2136 token!523)))))

(declare-fun lt!686515 () Unit!33710)

(assert (=> d!541924 (= lt!686515 (choose!11039 thiss!24550 rules!3447 lt!686202 token!523 rule!422 Nil!19502))))

(assert (=> d!541924 (not (isEmpty!12318 rules!3447))))

(assert (=> d!541924 (= (lemmaMaxPrefixThenMatchesRulesRegex!194 thiss!24550 rules!3447 lt!686202 token!523 rule!422 Nil!19502) lt!686515)))

(declare-fun bs!404807 () Bool)

(assert (= bs!404807 d!541924))

(assert (=> bs!404807 m!2191727))

(declare-fun m!2192521 () Bool)

(assert (=> bs!404807 m!2192521))

(declare-fun m!2192523 () Bool)

(assert (=> bs!404807 m!2192523))

(declare-fun m!2192525 () Bool)

(assert (=> bs!404807 m!2192525))

(assert (=> bs!404807 m!2191623))

(assert (=> bs!404807 m!2192521))

(assert (=> bs!404807 m!2191727))

(assert (=> bs!404807 m!2191623))

(assert (=> bs!404807 m!2191629))

(assert (=> b!1772271 d!541924))

(declare-fun d!541928 () Bool)

(assert (=> d!541928 (= (isDefined!3339 lt!686189) (not (isEmpty!12323 lt!686189)))))

(declare-fun bs!404808 () Bool)

(assert (= bs!404808 d!541928))

(declare-fun m!2192527 () Bool)

(assert (=> bs!404808 m!2192527))

(assert (=> b!1772270 d!541928))

(declare-fun b!1772940 () Bool)

(declare-fun res!798540 () Bool)

(declare-fun e!1134385 () Bool)

(assert (=> b!1772940 (=> (not res!798540) (not e!1134385))))

(declare-fun lt!686516 () Option!3996)

(assert (=> b!1772940 (= res!798540 (= (value!109052 (_1!10957 (get!5958 lt!686516))) (apply!5287 (transformation!3487 (rule!5535 (_1!10957 (get!5958 lt!686516)))) (seqFromList!2456 (originalCharacters!4301 (_1!10957 (get!5958 lt!686516)))))))))

(declare-fun b!1772941 () Bool)

(declare-fun res!798541 () Bool)

(assert (=> b!1772941 (=> (not res!798541) (not e!1134385))))

(assert (=> b!1772941 (= res!798541 (< (size!15494 (_2!10957 (get!5958 lt!686516))) (size!15494 lt!686202)))))

(declare-fun d!541930 () Bool)

(declare-fun e!1134386 () Bool)

(assert (=> d!541930 e!1134386))

(declare-fun res!798536 () Bool)

(assert (=> d!541930 (=> res!798536 e!1134386)))

(assert (=> d!541930 (= res!798536 (isEmpty!12323 lt!686516))))

(declare-fun e!1134387 () Option!3996)

(assert (=> d!541930 (= lt!686516 e!1134387)))

(declare-fun c!288778 () Bool)

(assert (=> d!541930 (= c!288778 (and ((_ is Cons!19503) rules!3447) ((_ is Nil!19503) (t!165488 rules!3447))))))

(declare-fun lt!686520 () Unit!33710)

(declare-fun lt!686517 () Unit!33710)

(assert (=> d!541930 (= lt!686520 lt!686517)))

(assert (=> d!541930 (isPrefix!1727 lt!686202 lt!686202)))

(assert (=> d!541930 (= lt!686517 (lemmaIsPrefixRefl!1144 lt!686202 lt!686202))))

(assert (=> d!541930 (rulesValidInductive!1182 thiss!24550 rules!3447)))

(assert (=> d!541930 (= (maxPrefix!1670 thiss!24550 rules!3447 lt!686202) lt!686516)))

(declare-fun b!1772942 () Bool)

(declare-fun call!111162 () Option!3996)

(assert (=> b!1772942 (= e!1134387 call!111162)))

(declare-fun b!1772943 () Bool)

(declare-fun res!798539 () Bool)

(assert (=> b!1772943 (=> (not res!798539) (not e!1134385))))

(assert (=> b!1772943 (= res!798539 (= (list!7925 (charsOf!2136 (_1!10957 (get!5958 lt!686516)))) (originalCharacters!4301 (_1!10957 (get!5958 lt!686516)))))))

(declare-fun b!1772944 () Bool)

(declare-fun res!798538 () Bool)

(assert (=> b!1772944 (=> (not res!798538) (not e!1134385))))

(assert (=> b!1772944 (= res!798538 (matchR!2288 (regex!3487 (rule!5535 (_1!10957 (get!5958 lt!686516)))) (list!7925 (charsOf!2136 (_1!10957 (get!5958 lt!686516))))))))

(declare-fun b!1772945 () Bool)

(assert (=> b!1772945 (= e!1134385 (contains!3519 rules!3447 (rule!5535 (_1!10957 (get!5958 lt!686516)))))))

(declare-fun b!1772946 () Bool)

(declare-fun res!798537 () Bool)

(assert (=> b!1772946 (=> (not res!798537) (not e!1134385))))

(assert (=> b!1772946 (= res!798537 (= (++!5311 (list!7925 (charsOf!2136 (_1!10957 (get!5958 lt!686516)))) (_2!10957 (get!5958 lt!686516))) lt!686202))))

(declare-fun b!1772947 () Bool)

(declare-fun lt!686518 () Option!3996)

(declare-fun lt!686519 () Option!3996)

(assert (=> b!1772947 (= e!1134387 (ite (and ((_ is None!3995) lt!686518) ((_ is None!3995) lt!686519)) None!3995 (ite ((_ is None!3995) lt!686519) lt!686518 (ite ((_ is None!3995) lt!686518) lt!686519 (ite (>= (size!15492 (_1!10957 (v!25472 lt!686518))) (size!15492 (_1!10957 (v!25472 lt!686519)))) lt!686518 lt!686519)))))))

(assert (=> b!1772947 (= lt!686518 call!111162)))

(assert (=> b!1772947 (= lt!686519 (maxPrefix!1670 thiss!24550 (t!165488 rules!3447) lt!686202))))

(declare-fun bm!111157 () Bool)

(assert (=> bm!111157 (= call!111162 (maxPrefixOneRule!1039 thiss!24550 (h!24904 rules!3447) lt!686202))))

(declare-fun b!1772948 () Bool)

(assert (=> b!1772948 (= e!1134386 e!1134385)))

(declare-fun res!798535 () Bool)

(assert (=> b!1772948 (=> (not res!798535) (not e!1134385))))

(assert (=> b!1772948 (= res!798535 (isDefined!3339 lt!686516))))

(assert (= (and d!541930 c!288778) b!1772942))

(assert (= (and d!541930 (not c!288778)) b!1772947))

(assert (= (or b!1772942 b!1772947) bm!111157))

(assert (= (and d!541930 (not res!798536)) b!1772948))

(assert (= (and b!1772948 res!798535) b!1772943))

(assert (= (and b!1772943 res!798539) b!1772941))

(assert (= (and b!1772941 res!798541) b!1772946))

(assert (= (and b!1772946 res!798537) b!1772940))

(assert (= (and b!1772940 res!798540) b!1772944))

(assert (= (and b!1772944 res!798538) b!1772945))

(declare-fun m!2192535 () Bool)

(assert (=> bm!111157 m!2192535))

(declare-fun m!2192537 () Bool)

(assert (=> b!1772945 m!2192537))

(declare-fun m!2192539 () Bool)

(assert (=> b!1772945 m!2192539))

(assert (=> b!1772944 m!2192537))

(declare-fun m!2192541 () Bool)

(assert (=> b!1772944 m!2192541))

(assert (=> b!1772944 m!2192541))

(declare-fun m!2192543 () Bool)

(assert (=> b!1772944 m!2192543))

(assert (=> b!1772944 m!2192543))

(declare-fun m!2192545 () Bool)

(assert (=> b!1772944 m!2192545))

(assert (=> b!1772940 m!2192537))

(declare-fun m!2192547 () Bool)

(assert (=> b!1772940 m!2192547))

(assert (=> b!1772940 m!2192547))

(declare-fun m!2192549 () Bool)

(assert (=> b!1772940 m!2192549))

(assert (=> b!1772941 m!2192537))

(declare-fun m!2192551 () Bool)

(assert (=> b!1772941 m!2192551))

(assert (=> b!1772941 m!2191857))

(declare-fun m!2192553 () Bool)

(assert (=> d!541930 m!2192553))

(declare-fun m!2192555 () Bool)

(assert (=> d!541930 m!2192555))

(declare-fun m!2192557 () Bool)

(assert (=> d!541930 m!2192557))

(assert (=> d!541930 m!2192039))

(declare-fun m!2192559 () Bool)

(assert (=> b!1772948 m!2192559))

(declare-fun m!2192561 () Bool)

(assert (=> b!1772947 m!2192561))

(assert (=> b!1772943 m!2192537))

(assert (=> b!1772943 m!2192541))

(assert (=> b!1772943 m!2192541))

(assert (=> b!1772943 m!2192543))

(assert (=> b!1772946 m!2192537))

(assert (=> b!1772946 m!2192541))

(assert (=> b!1772946 m!2192541))

(assert (=> b!1772946 m!2192543))

(assert (=> b!1772946 m!2192543))

(declare-fun m!2192563 () Bool)

(assert (=> b!1772946 m!2192563))

(assert (=> b!1772270 d!541930))

(declare-fun d!541940 () Bool)

(assert (=> d!541940 (= (list!7925 lt!686193) (list!7928 (c!288661 lt!686193)))))

(declare-fun bs!404810 () Bool)

(assert (= bs!404810 d!541940))

(declare-fun m!2192565 () Bool)

(assert (=> bs!404810 m!2192565))

(assert (=> b!1772270 d!541940))

(declare-fun d!541942 () Bool)

(declare-fun lt!686522 () BalanceConc!12918)

(assert (=> d!541942 (= (list!7925 lt!686522) (originalCharacters!4301 token!523))))

(assert (=> d!541942 (= lt!686522 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 token!523))) (value!109052 token!523)))))

(assert (=> d!541942 (= (charsOf!2136 token!523) lt!686522)))

(declare-fun b_lambda!57785 () Bool)

(assert (=> (not b_lambda!57785) (not d!541942)))

(assert (=> d!541942 t!165490))

(declare-fun b_and!134981 () Bool)

(assert (= b_and!134921 (and (=> t!165490 result!129092) b_and!134981)))

(assert (=> d!541942 t!165492))

(declare-fun b_and!134983 () Bool)

(assert (= b_and!134923 (and (=> t!165492 result!129094) b_and!134983)))

(assert (=> d!541942 t!165494))

(declare-fun b_and!134985 () Bool)

(assert (= b_and!134925 (and (=> t!165494 result!129096) b_and!134985)))

(declare-fun m!2192575 () Bool)

(assert (=> d!541942 m!2192575))

(assert (=> d!541942 m!2191759))

(assert (=> b!1772270 d!541942))

(declare-fun d!541944 () Bool)

(assert (=> d!541944 (= (apply!5287 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) (seqFromList!2456 lt!686206)) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (seqFromList!2456 lt!686206)))))

(declare-fun b_lambda!57787 () Bool)

(assert (=> (not b_lambda!57787) (not d!541944)))

(declare-fun t!165520 () Bool)

(declare-fun tb!107355 () Bool)

(assert (=> (and b!1772299 (= (toValue!5014 (transformation!3487 (h!24904 rules!3447))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165520) tb!107355))

(declare-fun result!129122 () Bool)

(assert (=> tb!107355 (= result!129122 (inv!21 (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (seqFromList!2456 lt!686206))))))

(declare-fun m!2192577 () Bool)

(assert (=> tb!107355 m!2192577))

(assert (=> d!541944 t!165520))

(declare-fun b_and!134987 () Bool)

(assert (= b_and!134969 (and (=> t!165520 result!129122) b_and!134987)))

(declare-fun tb!107357 () Bool)

(declare-fun t!165522 () Bool)

(assert (=> (and b!1772285 (= (toValue!5014 (transformation!3487 (rule!5535 token!523))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165522) tb!107357))

(declare-fun result!129124 () Bool)

(assert (= result!129124 result!129122))

(assert (=> d!541944 t!165522))

(declare-fun b_and!134989 () Bool)

(assert (= b_and!134971 (and (=> t!165522 result!129124) b_and!134989)))

(declare-fun t!165524 () Bool)

(declare-fun tb!107359 () Bool)

(assert (=> (and b!1772272 (= (toValue!5014 (transformation!3487 rule!422)) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165524) tb!107359))

(declare-fun result!129126 () Bool)

(assert (= result!129126 result!129122))

(assert (=> d!541944 t!165524))

(declare-fun b_and!134991 () Bool)

(assert (= b_and!134973 (and (=> t!165524 result!129126) b_and!134991)))

(assert (=> d!541944 m!2191607))

(declare-fun m!2192579 () Bool)

(assert (=> d!541944 m!2192579))

(assert (=> b!1772291 d!541944))

(declare-fun b!1773105 () Bool)

(declare-fun e!1134478 () Option!3996)

(assert (=> b!1773105 (= e!1134478 None!3995)))

(declare-fun d!541948 () Bool)

(declare-fun e!1134481 () Bool)

(assert (=> d!541948 e!1134481))

(declare-fun res!798601 () Bool)

(assert (=> d!541948 (=> res!798601 e!1134481)))

(declare-fun lt!686555 () Option!3996)

(assert (=> d!541948 (= res!798601 (isEmpty!12323 lt!686555))))

(assert (=> d!541948 (= lt!686555 e!1134478)))

(declare-fun c!288801 () Bool)

(declare-datatypes ((tuple2!19118 0))(
  ( (tuple2!19119 (_1!10961 List!19572) (_2!10961 List!19572)) )
))
(declare-fun lt!686552 () tuple2!19118)

(assert (=> d!541948 (= c!288801 (isEmpty!12319 (_1!10961 lt!686552)))))

(declare-fun findLongestMatch!382 (Regex!4815 List!19572) tuple2!19118)

(assert (=> d!541948 (= lt!686552 (findLongestMatch!382 (regex!3487 (rule!5535 (_1!10957 lt!686207))) lt!686222))))

(assert (=> d!541948 (ruleValid!985 thiss!24550 (rule!5535 (_1!10957 lt!686207)))))

(assert (=> d!541948 (= (maxPrefixOneRule!1039 thiss!24550 (rule!5535 (_1!10957 lt!686207)) lt!686222) lt!686555)))

(declare-fun b!1773106 () Bool)

(declare-fun e!1134480 () Bool)

(declare-fun findLongestMatchInner!455 (Regex!4815 List!19572 Int List!19572 List!19572 Int) tuple2!19118)

(assert (=> b!1773106 (= e!1134480 (matchR!2288 (regex!3487 (rule!5535 (_1!10957 lt!686207))) (_1!10961 (findLongestMatchInner!455 (regex!3487 (rule!5535 (_1!10957 lt!686207))) Nil!19502 (size!15494 Nil!19502) lt!686222 lt!686222 (size!15494 lt!686222)))))))

(declare-fun b!1773107 () Bool)

(assert (=> b!1773107 (= e!1134478 (Some!3995 (tuple2!19111 (Token!6541 (apply!5287 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) (seqFromList!2456 (_1!10961 lt!686552))) (rule!5535 (_1!10957 lt!686207)) (size!15493 (seqFromList!2456 (_1!10961 lt!686552))) (_1!10961 lt!686552)) (_2!10961 lt!686552))))))

(declare-fun lt!686556 () Unit!33710)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!439 (Regex!4815 List!19572) Unit!33710)

(assert (=> b!1773107 (= lt!686556 (longestMatchIsAcceptedByMatchOrIsEmpty!439 (regex!3487 (rule!5535 (_1!10957 lt!686207))) lt!686222))))

(declare-fun res!798598 () Bool)

(assert (=> b!1773107 (= res!798598 (isEmpty!12319 (_1!10961 (findLongestMatchInner!455 (regex!3487 (rule!5535 (_1!10957 lt!686207))) Nil!19502 (size!15494 Nil!19502) lt!686222 lt!686222 (size!15494 lt!686222)))))))

(assert (=> b!1773107 (=> res!798598 e!1134480)))

(assert (=> b!1773107 e!1134480))

(declare-fun lt!686554 () Unit!33710)

(assert (=> b!1773107 (= lt!686554 lt!686556)))

(declare-fun lt!686553 () Unit!33710)

(assert (=> b!1773107 (= lt!686553 (lemmaSemiInverse!625 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) (seqFromList!2456 (_1!10961 lt!686552))))))

(declare-fun b!1773108 () Bool)

(declare-fun res!798604 () Bool)

(declare-fun e!1134479 () Bool)

(assert (=> b!1773108 (=> (not res!798604) (not e!1134479))))

(assert (=> b!1773108 (= res!798604 (< (size!15494 (_2!10957 (get!5958 lt!686555))) (size!15494 lt!686222)))))

(declare-fun b!1773109 () Bool)

(assert (=> b!1773109 (= e!1134479 (= (size!15492 (_1!10957 (get!5958 lt!686555))) (size!15494 (originalCharacters!4301 (_1!10957 (get!5958 lt!686555))))))))

(declare-fun b!1773110 () Bool)

(declare-fun res!798602 () Bool)

(assert (=> b!1773110 (=> (not res!798602) (not e!1134479))))

(assert (=> b!1773110 (= res!798602 (= (value!109052 (_1!10957 (get!5958 lt!686555))) (apply!5287 (transformation!3487 (rule!5535 (_1!10957 (get!5958 lt!686555)))) (seqFromList!2456 (originalCharacters!4301 (_1!10957 (get!5958 lt!686555)))))))))

(declare-fun b!1773111 () Bool)

(assert (=> b!1773111 (= e!1134481 e!1134479)))

(declare-fun res!798600 () Bool)

(assert (=> b!1773111 (=> (not res!798600) (not e!1134479))))

(assert (=> b!1773111 (= res!798600 (matchR!2288 (regex!3487 (rule!5535 (_1!10957 lt!686207))) (list!7925 (charsOf!2136 (_1!10957 (get!5958 lt!686555))))))))

(declare-fun b!1773112 () Bool)

(declare-fun res!798603 () Bool)

(assert (=> b!1773112 (=> (not res!798603) (not e!1134479))))

(assert (=> b!1773112 (= res!798603 (= (++!5311 (list!7925 (charsOf!2136 (_1!10957 (get!5958 lt!686555)))) (_2!10957 (get!5958 lt!686555))) lt!686222))))

(declare-fun b!1773113 () Bool)

(declare-fun res!798599 () Bool)

(assert (=> b!1773113 (=> (not res!798599) (not e!1134479))))

(assert (=> b!1773113 (= res!798599 (= (rule!5535 (_1!10957 (get!5958 lt!686555))) (rule!5535 (_1!10957 lt!686207))))))

(assert (= (and d!541948 c!288801) b!1773105))

(assert (= (and d!541948 (not c!288801)) b!1773107))

(assert (= (and b!1773107 (not res!798598)) b!1773106))

(assert (= (and d!541948 (not res!798601)) b!1773111))

(assert (= (and b!1773111 res!798600) b!1773112))

(assert (= (and b!1773112 res!798603) b!1773108))

(assert (= (and b!1773108 res!798604) b!1773113))

(assert (= (and b!1773113 res!798599) b!1773110))

(assert (= (and b!1773110 res!798602) b!1773109))

(declare-fun m!2192689 () Bool)

(assert (=> b!1773111 m!2192689))

(declare-fun m!2192691 () Bool)

(assert (=> b!1773111 m!2192691))

(assert (=> b!1773111 m!2192691))

(declare-fun m!2192693 () Bool)

(assert (=> b!1773111 m!2192693))

(assert (=> b!1773111 m!2192693))

(declare-fun m!2192695 () Bool)

(assert (=> b!1773111 m!2192695))

(declare-fun m!2192697 () Bool)

(assert (=> b!1773106 m!2192697))

(assert (=> b!1773106 m!2191795))

(assert (=> b!1773106 m!2192697))

(assert (=> b!1773106 m!2191795))

(declare-fun m!2192699 () Bool)

(assert (=> b!1773106 m!2192699))

(declare-fun m!2192701 () Bool)

(assert (=> b!1773106 m!2192701))

(assert (=> b!1773110 m!2192689))

(declare-fun m!2192703 () Bool)

(assert (=> b!1773110 m!2192703))

(assert (=> b!1773110 m!2192703))

(declare-fun m!2192705 () Bool)

(assert (=> b!1773110 m!2192705))

(declare-fun m!2192707 () Bool)

(assert (=> b!1773107 m!2192707))

(declare-fun m!2192709 () Bool)

(assert (=> b!1773107 m!2192709))

(assert (=> b!1773107 m!2192697))

(assert (=> b!1773107 m!2191795))

(assert (=> b!1773107 m!2192699))

(assert (=> b!1773107 m!2191795))

(assert (=> b!1773107 m!2192707))

(assert (=> b!1773107 m!2192697))

(declare-fun m!2192711 () Bool)

(assert (=> b!1773107 m!2192711))

(declare-fun m!2192713 () Bool)

(assert (=> b!1773107 m!2192713))

(assert (=> b!1773107 m!2192707))

(declare-fun m!2192715 () Bool)

(assert (=> b!1773107 m!2192715))

(assert (=> b!1773107 m!2192707))

(declare-fun m!2192717 () Bool)

(assert (=> b!1773107 m!2192717))

(assert (=> b!1773112 m!2192689))

(assert (=> b!1773112 m!2192691))

(assert (=> b!1773112 m!2192691))

(assert (=> b!1773112 m!2192693))

(assert (=> b!1773112 m!2192693))

(declare-fun m!2192719 () Bool)

(assert (=> b!1773112 m!2192719))

(assert (=> b!1773109 m!2192689))

(declare-fun m!2192721 () Bool)

(assert (=> b!1773109 m!2192721))

(assert (=> b!1773113 m!2192689))

(declare-fun m!2192723 () Bool)

(assert (=> d!541948 m!2192723))

(declare-fun m!2192725 () Bool)

(assert (=> d!541948 m!2192725))

(declare-fun m!2192727 () Bool)

(assert (=> d!541948 m!2192727))

(declare-fun m!2192729 () Bool)

(assert (=> d!541948 m!2192729))

(assert (=> b!1773108 m!2192689))

(declare-fun m!2192731 () Bool)

(assert (=> b!1773108 m!2192731))

(assert (=> b!1773108 m!2191795))

(assert (=> b!1772291 d!541948))

(declare-fun d!541986 () Bool)

(assert (=> d!541986 (= (_2!10957 lt!686207) lt!686213)))

(declare-fun lt!686557 () Unit!33710)

(assert (=> d!541986 (= lt!686557 (choose!11038 lt!686206 (_2!10957 lt!686207) lt!686206 lt!686213 lt!686222))))

(assert (=> d!541986 (isPrefix!1727 lt!686206 lt!686222)))

(assert (=> d!541986 (= (lemmaSamePrefixThenSameSuffix!838 lt!686206 (_2!10957 lt!686207) lt!686206 lt!686213 lt!686222) lt!686557)))

(declare-fun bs!404817 () Bool)

(assert (= bs!404817 d!541986))

(declare-fun m!2192733 () Bool)

(assert (=> bs!404817 m!2192733))

(assert (=> bs!404817 m!2191683))

(assert (=> b!1772291 d!541986))

(declare-fun d!541988 () Bool)

(declare-fun lt!686558 () List!19572)

(assert (=> d!541988 (= (++!5311 lt!686206 lt!686558) lt!686222)))

(declare-fun e!1134482 () List!19572)

(assert (=> d!541988 (= lt!686558 e!1134482)))

(declare-fun c!288802 () Bool)

(assert (=> d!541988 (= c!288802 ((_ is Cons!19502) lt!686206))))

(assert (=> d!541988 (>= (size!15494 lt!686222) (size!15494 lt!686206))))

(assert (=> d!541988 (= (getSuffix!894 lt!686222 lt!686206) lt!686558)))

(declare-fun b!1773114 () Bool)

(assert (=> b!1773114 (= e!1134482 (getSuffix!894 (tail!2653 lt!686222) (t!165487 lt!686206)))))

(declare-fun b!1773115 () Bool)

(assert (=> b!1773115 (= e!1134482 lt!686222)))

(assert (= (and d!541988 c!288802) b!1773114))

(assert (= (and d!541988 (not c!288802)) b!1773115))

(declare-fun m!2192735 () Bool)

(assert (=> d!541988 m!2192735))

(assert (=> d!541988 m!2191795))

(assert (=> d!541988 m!2191613))

(assert (=> b!1773114 m!2191801))

(assert (=> b!1773114 m!2191801))

(declare-fun m!2192737 () Bool)

(assert (=> b!1773114 m!2192737))

(assert (=> b!1772291 d!541988))

(declare-fun d!541990 () Bool)

(assert (=> d!541990 (= (seqFromList!2456 lt!686206) (fromListB!1126 lt!686206))))

(declare-fun bs!404818 () Bool)

(assert (= bs!404818 d!541990))

(declare-fun m!2192739 () Bool)

(assert (=> bs!404818 m!2192739))

(assert (=> b!1772291 d!541990))

(declare-fun d!541992 () Bool)

(declare-fun lt!686561 () Int)

(assert (=> d!541992 (>= lt!686561 0)))

(declare-fun e!1134485 () Int)

(assert (=> d!541992 (= lt!686561 e!1134485)))

(declare-fun c!288805 () Bool)

(assert (=> d!541992 (= c!288805 ((_ is Nil!19502) lt!686206))))

(assert (=> d!541992 (= (size!15494 lt!686206) lt!686561)))

(declare-fun b!1773120 () Bool)

(assert (=> b!1773120 (= e!1134485 0)))

(declare-fun b!1773121 () Bool)

(assert (=> b!1773121 (= e!1134485 (+ 1 (size!15494 (t!165487 lt!686206))))))

(assert (= (and d!541992 c!288805) b!1773120))

(assert (= (and d!541992 (not c!288805)) b!1773121))

(declare-fun m!2192741 () Bool)

(assert (=> b!1773121 m!2192741))

(assert (=> b!1772291 d!541992))

(declare-fun d!541994 () Bool)

(assert (=> d!541994 (= (maxPrefixOneRule!1039 thiss!24550 (rule!5535 (_1!10957 lt!686207)) lt!686222) (Some!3995 (tuple2!19111 (Token!6541 (apply!5287 (transformation!3487 (rule!5535 (_1!10957 lt!686207))) (seqFromList!2456 lt!686206)) (rule!5535 (_1!10957 lt!686207)) (size!15494 lt!686206) lt!686206) (_2!10957 lt!686207))))))

(declare-fun lt!686564 () Unit!33710)

(declare-fun choose!11050 (LexerInterface!3116 List!19573 List!19572 List!19572 List!19572 Rule!6774) Unit!33710)

(assert (=> d!541994 (= lt!686564 (choose!11050 thiss!24550 rules!3447 lt!686206 lt!686222 (_2!10957 lt!686207) (rule!5535 (_1!10957 lt!686207))))))

(assert (=> d!541994 (not (isEmpty!12318 rules!3447))))

(assert (=> d!541994 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!417 thiss!24550 rules!3447 lt!686206 lt!686222 (_2!10957 lt!686207) (rule!5535 (_1!10957 lt!686207))) lt!686564)))

(declare-fun bs!404819 () Bool)

(assert (= bs!404819 d!541994))

(assert (=> bs!404819 m!2191607))

(declare-fun m!2192743 () Bool)

(assert (=> bs!404819 m!2192743))

(assert (=> bs!404819 m!2191607))

(assert (=> bs!404819 m!2191609))

(assert (=> bs!404819 m!2191629))

(assert (=> bs!404819 m!2191613))

(assert (=> bs!404819 m!2191611))

(assert (=> b!1772291 d!541994))

(declare-fun d!541996 () Bool)

(assert (=> d!541996 (= (isEmpty!12319 (_2!10957 lt!686208)) ((_ is Nil!19502) (_2!10957 lt!686208)))))

(assert (=> b!1772290 d!541996))

(declare-fun b!1773133 () Bool)

(declare-fun e!1134488 () Bool)

(declare-fun tp!502481 () Bool)

(declare-fun tp!502483 () Bool)

(assert (=> b!1773133 (= e!1134488 (and tp!502481 tp!502483))))

(declare-fun b!1773135 () Bool)

(declare-fun tp!502480 () Bool)

(declare-fun tp!502484 () Bool)

(assert (=> b!1773135 (= e!1134488 (and tp!502480 tp!502484))))

(declare-fun b!1773134 () Bool)

(declare-fun tp!502482 () Bool)

(assert (=> b!1773134 (= e!1134488 tp!502482)))

(declare-fun b!1773132 () Bool)

(assert (=> b!1773132 (= e!1134488 tp_is_empty!7873)))

(assert (=> b!1772284 (= tp!502406 e!1134488)))

(assert (= (and b!1772284 ((_ is ElementMatch!4815) (regex!3487 rule!422))) b!1773132))

(assert (= (and b!1772284 ((_ is Concat!8393) (regex!3487 rule!422))) b!1773133))

(assert (= (and b!1772284 ((_ is Star!4815) (regex!3487 rule!422))) b!1773134))

(assert (= (and b!1772284 ((_ is Union!4815) (regex!3487 rule!422))) b!1773135))

(declare-fun e!1134494 () Bool)

(declare-fun tp!502493 () Bool)

(declare-fun tp!502492 () Bool)

(declare-fun b!1773144 () Bool)

(assert (=> b!1773144 (= e!1134494 (and (inv!25349 (left!15616 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))))) tp!502493 (inv!25349 (right!15946 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))))) tp!502492))))

(declare-fun b!1773146 () Bool)

(declare-fun e!1134493 () Bool)

(declare-fun tp!502491 () Bool)

(assert (=> b!1773146 (= e!1134493 tp!502491)))

(declare-fun b!1773145 () Bool)

(declare-fun inv!25355 (IArray!12979) Bool)

(assert (=> b!1773145 (= e!1134494 (and (inv!25355 (xs!9363 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))))) e!1134493))))

(assert (=> b!1772317 (= tp!502413 (and (inv!25349 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223)))) e!1134494))))

(assert (= (and b!1772317 ((_ is Node!6487) (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))))) b!1773144))

(assert (= b!1773145 b!1773146))

(assert (= (and b!1772317 ((_ is Leaf!9451) (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (dynLambda!9480 (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) lt!686223))))) b!1773145))

(declare-fun m!2192745 () Bool)

(assert (=> b!1773144 m!2192745))

(declare-fun m!2192747 () Bool)

(assert (=> b!1773144 m!2192747))

(declare-fun m!2192749 () Bool)

(assert (=> b!1773145 m!2192749))

(assert (=> b!1772317 m!2191587))

(declare-fun b!1773157 () Bool)

(declare-fun b_free!49055 () Bool)

(declare-fun b_next!49759 () Bool)

(assert (=> b!1773157 (= b_free!49055 (not b_next!49759))))

(declare-fun t!165538 () Bool)

(declare-fun tb!107373 () Bool)

(assert (=> (and b!1773157 (= (toValue!5014 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165538) tb!107373))

(declare-fun result!129154 () Bool)

(assert (= result!129154 result!129122))

(assert (=> d!541944 t!165538))

(declare-fun t!165540 () Bool)

(declare-fun tb!107375 () Bool)

(assert (=> (and b!1773157 (= (toValue!5014 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165540) tb!107375))

(declare-fun result!129156 () Bool)

(assert (= result!129156 result!129078))

(assert (=> d!541842 t!165540))

(assert (=> d!541720 t!165540))

(assert (=> b!1772275 t!165540))

(declare-fun t!165542 () Bool)

(declare-fun tb!107377 () Bool)

(assert (=> (and b!1773157 (= (toValue!5014 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165542) tb!107377))

(declare-fun result!129158 () Bool)

(assert (= result!129158 result!129110))

(assert (=> d!541848 t!165542))

(assert (=> d!541848 t!165540))

(declare-fun tp!502505 () Bool)

(declare-fun b_and!135009 () Bool)

(assert (=> b!1773157 (= tp!502505 (and (=> t!165542 result!129158) (=> t!165540 result!129156) (=> t!165538 result!129154) b_and!135009))))

(declare-fun b_free!49057 () Bool)

(declare-fun b_next!49761 () Bool)

(assert (=> b!1773157 (= b_free!49057 (not b_next!49761))))

(declare-fun t!165544 () Bool)

(declare-fun tb!107379 () Bool)

(assert (=> (and b!1773157 (= (toChars!4873 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165544) tb!107379))

(declare-fun result!129160 () Bool)

(assert (= result!129160 result!129070))

(assert (=> d!541720 t!165544))

(declare-fun tb!107381 () Bool)

(declare-fun t!165546 () Bool)

(assert (=> (and b!1773157 (= (toChars!4873 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207))))) t!165546) tb!107381))

(declare-fun result!129162 () Bool)

(assert (= result!129162 result!129086))

(assert (=> d!541754 t!165546))

(declare-fun tb!107383 () Bool)

(declare-fun t!165548 () Bool)

(assert (=> (and b!1773157 (= (toChars!4873 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toChars!4873 (transformation!3487 (rule!5535 token!523)))) t!165548) tb!107383))

(declare-fun result!129164 () Bool)

(assert (= result!129164 result!129092))

(assert (=> b!1772325 t!165548))

(assert (=> d!541942 t!165548))

(assert (=> b!1772275 t!165544))

(assert (=> b!1772287 t!165546))

(declare-fun tp!502504 () Bool)

(declare-fun b_and!135011 () Bool)

(assert (=> b!1773157 (= tp!502504 (and (=> t!165546 result!129162) (=> t!165548 result!129164) (=> t!165544 result!129160) b_and!135011))))

(declare-fun e!1134505 () Bool)

(assert (=> b!1773157 (= e!1134505 (and tp!502505 tp!502504))))

(declare-fun e!1134503 () Bool)

(declare-fun b!1773156 () Bool)

(declare-fun tp!502502 () Bool)

(assert (=> b!1773156 (= e!1134503 (and tp!502502 (inv!25342 (tag!3869 (h!24904 (t!165488 rules!3447)))) (inv!25347 (transformation!3487 (h!24904 (t!165488 rules!3447)))) e!1134505))))

(declare-fun b!1773155 () Bool)

(declare-fun e!1134506 () Bool)

(declare-fun tp!502503 () Bool)

(assert (=> b!1773155 (= e!1134506 (and e!1134503 tp!502503))))

(assert (=> b!1772298 (= tp!502410 e!1134506)))

(assert (= b!1773156 b!1773157))

(assert (= b!1773155 b!1773156))

(assert (= (and b!1772298 ((_ is Cons!19503) (t!165488 rules!3447))) b!1773155))

(declare-fun m!2192751 () Bool)

(assert (=> b!1773156 m!2192751))

(declare-fun m!2192753 () Bool)

(assert (=> b!1773156 m!2192753))

(declare-fun b!1773162 () Bool)

(declare-fun e!1134509 () Bool)

(declare-fun tp!502508 () Bool)

(assert (=> b!1773162 (= e!1134509 (and tp_is_empty!7873 tp!502508))))

(assert (=> b!1772292 (= tp!502403 e!1134509)))

(assert (= (and b!1772292 ((_ is Cons!19502) (t!165487 suffix!1421))) b!1773162))

(declare-fun b!1773163 () Bool)

(declare-fun e!1134510 () Bool)

(declare-fun tp!502509 () Bool)

(assert (=> b!1773163 (= e!1134510 (and tp_is_empty!7873 tp!502509))))

(assert (=> b!1772297 (= tp!502402 e!1134510)))

(assert (= (and b!1772297 ((_ is Cons!19502) (originalCharacters!4301 token!523))) b!1773163))

(declare-fun b!1773165 () Bool)

(declare-fun e!1134511 () Bool)

(declare-fun tp!502511 () Bool)

(declare-fun tp!502513 () Bool)

(assert (=> b!1773165 (= e!1134511 (and tp!502511 tp!502513))))

(declare-fun b!1773167 () Bool)

(declare-fun tp!502510 () Bool)

(declare-fun tp!502514 () Bool)

(assert (=> b!1773167 (= e!1134511 (and tp!502510 tp!502514))))

(declare-fun b!1773166 () Bool)

(declare-fun tp!502512 () Bool)

(assert (=> b!1773166 (= e!1134511 tp!502512)))

(declare-fun b!1773164 () Bool)

(assert (=> b!1773164 (= e!1134511 tp_is_empty!7873)))

(assert (=> b!1772274 (= tp!502404 e!1134511)))

(assert (= (and b!1772274 ((_ is ElementMatch!4815) (regex!3487 (rule!5535 token!523)))) b!1773164))

(assert (= (and b!1772274 ((_ is Concat!8393) (regex!3487 (rule!5535 token!523)))) b!1773165))

(assert (= (and b!1772274 ((_ is Star!4815) (regex!3487 (rule!5535 token!523)))) b!1773166))

(assert (= (and b!1772274 ((_ is Union!4815) (regex!3487 (rule!5535 token!523)))) b!1773167))

(declare-fun b!1773169 () Bool)

(declare-fun e!1134512 () Bool)

(declare-fun tp!502516 () Bool)

(declare-fun tp!502518 () Bool)

(assert (=> b!1773169 (= e!1134512 (and tp!502516 tp!502518))))

(declare-fun b!1773171 () Bool)

(declare-fun tp!502515 () Bool)

(declare-fun tp!502519 () Bool)

(assert (=> b!1773171 (= e!1134512 (and tp!502515 tp!502519))))

(declare-fun b!1773170 () Bool)

(declare-fun tp!502517 () Bool)

(assert (=> b!1773170 (= e!1134512 tp!502517)))

(declare-fun b!1773168 () Bool)

(assert (=> b!1773168 (= e!1134512 tp_is_empty!7873)))

(assert (=> b!1772279 (= tp!502401 e!1134512)))

(assert (= (and b!1772279 ((_ is ElementMatch!4815) (regex!3487 (h!24904 rules!3447)))) b!1773168))

(assert (= (and b!1772279 ((_ is Concat!8393) (regex!3487 (h!24904 rules!3447)))) b!1773169))

(assert (= (and b!1772279 ((_ is Star!4815) (regex!3487 (h!24904 rules!3447)))) b!1773170))

(assert (= (and b!1772279 ((_ is Union!4815) (regex!3487 (h!24904 rules!3447)))) b!1773171))

(declare-fun tp!502522 () Bool)

(declare-fun b!1773172 () Bool)

(declare-fun tp!502521 () Bool)

(declare-fun e!1134514 () Bool)

(assert (=> b!1773172 (= e!1134514 (and (inv!25349 (left!15616 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207)))))) tp!502522 (inv!25349 (right!15946 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207)))))) tp!502521))))

(declare-fun b!1773174 () Bool)

(declare-fun e!1134513 () Bool)

(declare-fun tp!502520 () Bool)

(assert (=> b!1773174 (= e!1134513 tp!502520)))

(declare-fun b!1773173 () Bool)

(assert (=> b!1773173 (= e!1134514 (and (inv!25355 (xs!9363 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207)))))) e!1134513))))

(assert (=> b!1772320 (= tp!502414 (and (inv!25349 (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207))))) e!1134514))))

(assert (= (and b!1772320 ((_ is Node!6487) (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207)))))) b!1773172))

(assert (= b!1773173 b!1773174))

(assert (= (and b!1772320 ((_ is Leaf!9451) (c!288661 (dynLambda!9479 (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))) (value!109052 (_1!10957 lt!686207)))))) b!1773173))

(declare-fun m!2192755 () Bool)

(assert (=> b!1773172 m!2192755))

(declare-fun m!2192757 () Bool)

(assert (=> b!1773172 m!2192757))

(declare-fun m!2192759 () Bool)

(assert (=> b!1773173 m!2192759))

(assert (=> b!1772320 m!2191593))

(declare-fun b_lambda!57803 () Bool)

(assert (= b_lambda!57751 (or (and b!1772299 b_free!49041 (= (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1772285 b_free!49045 (= (toChars!4873 (transformation!3487 (rule!5535 token!523))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1772272 b_free!49049 (= (toChars!4873 (transformation!3487 rule!422)) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1773157 b_free!49057 (= (toChars!4873 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) b_lambda!57803)))

(declare-fun b_lambda!57805 () Bool)

(assert (= b_lambda!57785 (or (and b!1772299 b_free!49041 (= (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toChars!4873 (transformation!3487 (rule!5535 token!523))))) (and b!1772285 b_free!49045) (and b!1772272 b_free!49049 (= (toChars!4873 (transformation!3487 rule!422)) (toChars!4873 (transformation!3487 (rule!5535 token!523))))) (and b!1773157 b_free!49057 (= (toChars!4873 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toChars!4873 (transformation!3487 (rule!5535 token!523))))) b_lambda!57805)))

(declare-fun b_lambda!57807 () Bool)

(assert (= b_lambda!57753 (or (and b!1772299 b_free!49039 (= (toValue!5014 (transformation!3487 (h!24904 rules!3447))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1772285 b_free!49043 (= (toValue!5014 (transformation!3487 (rule!5535 token!523))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1772272 b_free!49047 (= (toValue!5014 (transformation!3487 rule!422)) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1773157 b_free!49055 (= (toValue!5014 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toValue!5014 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) b_lambda!57807)))

(declare-fun b_lambda!57809 () Bool)

(assert (= b_lambda!57757 (or (and b!1772299 b_free!49041 (= (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toChars!4873 (transformation!3487 (rule!5535 token!523))))) (and b!1772285 b_free!49045) (and b!1772272 b_free!49049 (= (toChars!4873 (transformation!3487 rule!422)) (toChars!4873 (transformation!3487 (rule!5535 token!523))))) (and b!1773157 b_free!49057 (= (toChars!4873 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toChars!4873 (transformation!3487 (rule!5535 token!523))))) b_lambda!57809)))

(declare-fun b_lambda!57811 () Bool)

(assert (= b_lambda!57755 (or (and b!1772299 b_free!49041 (= (toChars!4873 (transformation!3487 (h!24904 rules!3447))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1772285 b_free!49045 (= (toChars!4873 (transformation!3487 (rule!5535 token!523))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1772272 b_free!49049 (= (toChars!4873 (transformation!3487 rule!422)) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) (and b!1773157 b_free!49057 (= (toChars!4873 (transformation!3487 (h!24904 (t!165488 rules!3447)))) (toChars!4873 (transformation!3487 (rule!5535 (_1!10957 lt!686207)))))) b_lambda!57811)))

(check-sat (not b!1772948) (not d!541848) (not b!1773106) (not b!1772859) (not b!1772855) (not b!1772947) (not b!1772781) (not b_next!49747) (not d!541930) (not b!1772809) (not d!541846) (not b!1772489) (not tb!107355) (not b!1773111) (not b!1772928) b_and!134985 (not d!541850) (not bm!111157) (not b!1773113) (not bm!111127) (not b_next!49745) (not d!541740) (not b!1773163) (not b!1772591) (not d!541988) (not b!1773174) (not d!541862) (not d!541878) (not b!1773145) (not b!1772926) (not b!1773114) (not b!1772498) (not b!1772483) (not bm!111156) (not d!541872) (not d!541728) (not b!1772584) (not b!1773169) (not d!541890) (not d!541704) (not b!1773133) (not b!1772840) (not b!1773166) (not b!1772810) (not d!541840) (not d!541768) (not b!1772325) (not b_next!49759) (not b!1772813) (not b!1772936) (not b_lambda!57809) (not d!541948) (not b!1772874) (not b!1772386) (not b!1772542) (not b!1772320) (not b!1772587) (not b_lambda!57805) (not b!1772515) tp_is_empty!7873 (not b!1773135) (not b!1772887) (not b!1772474) (not b!1773109) (not b!1772506) (not b!1772604) (not b!1772945) (not b!1772367) (not b!1772866) (not d!541750) (not d!541838) (not d!541928) (not b!1772470) (not b!1772504) (not d!541718) (not b!1773170) b_and!135011 (not b!1772775) (not b!1772326) (not d!541834) (not bm!111131) b_and!135009 (not b!1772603) (not b!1772935) b_and!134989 (not d!541866) (not d!541892) (not b!1772327) (not b!1772944) (not b!1772881) (not b!1772912) (not b_lambda!57779) (not b!1772417) (not b!1772930) (not b!1772943) (not b_lambda!57803) (not tb!107325) (not b!1773162) (not d!541678) (not b!1772602) (not d!541758) (not d!541760) (not b!1772590) (not b!1772418) (not b!1773165) (not b!1772511) (not d!541896) (not b_lambda!57781) (not b!1772480) (not b!1772349) (not d!541940) (not b!1772851) (not b!1772869) (not b!1772432) (not d!541726) (not b_next!49749) (not b!1773156) (not b!1773146) (not b!1772770) (not b_next!49753) (not b!1773108) b_and!134991 (not b!1773144) (not b!1772317) (not b!1772385) (not d!541734) (not b!1772496) (not b!1772872) (not d!541744) (not bm!111153) (not b!1772472) (not b!1772512) (not b_lambda!57787) (not b!1773112) (not d!541880) (not d!541682) (not b!1773121) (not d!541756) (not d!541942) b_and!134981 (not tb!107343) (not b!1772430) (not b!1772365) (not b!1773155) (not b!1772507) (not b!1772351) (not b!1772503) (not b!1772583) (not b_lambda!57807) (not b!1772864) (not b!1772771) (not d!541904) (not d!541924) (not b!1772829) (not bm!111128) (not b!1772876) (not d!541916) (not d!541720) (not b!1772946) (not b!1772350) (not b!1772491) (not b!1772538) (not b!1772831) (not b_lambda!57761) (not b!1772431) b_and!134983 (not d!541742) (not b_lambda!57811) (not b!1772914) (not bm!111137) (not b!1772586) (not b_next!49761) (not d!541914) (not b!1772514) (not b!1772769) (not d!541990) (not b!1772539) (not d!541844) (not b_lambda!57763) (not b!1772510) (not b!1772852) (not b!1772848) (not bm!111154) (not b!1772857) (not b!1773172) b_and!134987 (not b!1772588) (not b!1773134) (not b!1772865) (not d!541762) (not b!1772467) (not b!1772882) (not b!1772484) (not b_lambda!57777) (not b!1772366) (not b!1772479) (not b!1772782) (not b!1772915) (not b!1772941) (not b!1773167) (not b!1772410) (not b!1772811) (not d!541994) (not b!1772494) (not b!1773173) (not d!541752) (not d!541888) (not d!541680) (not b_next!49743) (not b!1773171) (not bm!111132) (not b!1772911) (not b!1772416) (not b!1772868) (not b!1772940) (not b!1772774) (not b!1772589) (not d!541738) (not b!1773107) (not b!1772923) (not b_lambda!57765) (not d!541986) (not b_next!49751) (not d!541910) (not d!541754) (not b!1773110) (not d!541882) (not d!541722) (not b!1772508) (not d!541714) (not d!541858))
(check-sat (not b_next!49747) b_and!134985 (not b_next!49745) (not b_next!49759) b_and!134981 b_and!134983 (not b_next!49761) b_and!134987 (not b_next!49743) (not b_next!49751) b_and!135009 b_and!135011 b_and!134989 (not b_next!49753) (not b_next!49749) b_and!134991)
