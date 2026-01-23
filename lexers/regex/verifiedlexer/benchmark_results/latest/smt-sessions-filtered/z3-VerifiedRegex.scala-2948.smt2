; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!173770 () Bool)

(assert start!173770)

(declare-fun b!1758249 () Bool)

(declare-fun b_free!48583 () Bool)

(declare-fun b_next!49287 () Bool)

(assert (=> b!1758249 (= b_free!48583 (not b_next!49287))))

(declare-fun tp!499697 () Bool)

(declare-fun b_and!132311 () Bool)

(assert (=> b!1758249 (= tp!499697 b_and!132311)))

(declare-fun b_free!48585 () Bool)

(declare-fun b_next!49289 () Bool)

(assert (=> b!1758249 (= b_free!48585 (not b_next!49289))))

(declare-fun tp!499691 () Bool)

(declare-fun b_and!132313 () Bool)

(assert (=> b!1758249 (= tp!499691 b_and!132313)))

(declare-fun b!1758241 () Bool)

(declare-fun b_free!48587 () Bool)

(declare-fun b_next!49291 () Bool)

(assert (=> b!1758241 (= b_free!48587 (not b_next!49291))))

(declare-fun tp!499693 () Bool)

(declare-fun b_and!132315 () Bool)

(assert (=> b!1758241 (= tp!499693 b_and!132315)))

(declare-fun b_free!48589 () Bool)

(declare-fun b_next!49293 () Bool)

(assert (=> b!1758241 (= b_free!48589 (not b_next!49293))))

(declare-fun tp!499687 () Bool)

(declare-fun b_and!132317 () Bool)

(assert (=> b!1758241 (= tp!499687 b_and!132317)))

(declare-fun b!1758248 () Bool)

(declare-fun b_free!48591 () Bool)

(declare-fun b_next!49295 () Bool)

(assert (=> b!1758248 (= b_free!48591 (not b_next!49295))))

(declare-fun tp!499688 () Bool)

(declare-fun b_and!132319 () Bool)

(assert (=> b!1758248 (= tp!499688 b_and!132319)))

(declare-fun b_free!48593 () Bool)

(declare-fun b_next!49297 () Bool)

(assert (=> b!1758248 (= b_free!48593 (not b_next!49297))))

(declare-fun tp!499696 () Bool)

(declare-fun b_and!132321 () Bool)

(assert (=> b!1758248 (= tp!499696 b_and!132321)))

(declare-fun b!1758272 () Bool)

(declare-fun e!1125305 () Bool)

(assert (=> b!1758272 (= e!1125305 true)))

(declare-fun b!1758271 () Bool)

(declare-fun e!1125304 () Bool)

(assert (=> b!1758271 (= e!1125304 e!1125305)))

(declare-fun b!1758270 () Bool)

(declare-fun e!1125303 () Bool)

(assert (=> b!1758270 (= e!1125303 e!1125304)))

(declare-fun b!1758245 () Bool)

(assert (=> b!1758245 e!1125303))

(assert (= b!1758271 b!1758272))

(assert (= b!1758270 b!1758271))

(assert (= b!1758245 b!1758270))

(declare-fun order!12239 () Int)

(declare-fun order!12241 () Int)

(declare-fun lambda!70078 () Int)

(declare-datatypes ((List!19421 0))(
  ( (Nil!19351) (Cons!19351 (h!24752 (_ BitVec 16)) (t!163776 List!19421)) )
))
(declare-datatypes ((TokenValue!3547 0))(
  ( (FloatLiteralValue!7094 (text!25274 List!19421)) (TokenValueExt!3546 (__x!12396 Int)) (Broken!17735 (value!108171 List!19421)) (Object!3616) (End!3547) (Def!3547) (Underscore!3547) (Match!3547) (Else!3547) (Error!3547) (Case!3547) (If!3547) (Extends!3547) (Abstract!3547) (Class!3547) (Val!3547) (DelimiterValue!7094 (del!3607 List!19421)) (KeywordValue!3553 (value!108172 List!19421)) (CommentValue!7094 (value!108173 List!19421)) (WhitespaceValue!7094 (value!108174 List!19421)) (IndentationValue!3547 (value!108175 List!19421)) (String!22066) (Int32!3547) (Broken!17736 (value!108176 List!19421)) (Boolean!3548) (Unit!33520) (OperatorValue!3550 (op!3607 List!19421)) (IdentifierValue!7094 (value!108177 List!19421)) (IdentifierValue!7095 (value!108178 List!19421)) (WhitespaceValue!7095 (value!108179 List!19421)) (True!7094) (False!7094) (Broken!17737 (value!108180 List!19421)) (Broken!17738 (value!108181 List!19421)) (True!7095) (RightBrace!3547) (RightBracket!3547) (Colon!3547) (Null!3547) (Comma!3547) (LeftBracket!3547) (False!7095) (LeftBrace!3547) (ImaginaryLiteralValue!3547 (text!25275 List!19421)) (StringLiteralValue!10641 (value!108182 List!19421)) (EOFValue!3547 (value!108183 List!19421)) (IdentValue!3547 (value!108184 List!19421)) (DelimiterValue!7095 (value!108185 List!19421)) (DedentValue!3547 (value!108186 List!19421)) (NewLineValue!3547 (value!108187 List!19421)) (IntegerValue!10641 (value!108188 (_ BitVec 32)) (text!25276 List!19421)) (IntegerValue!10642 (value!108189 Int) (text!25277 List!19421)) (Times!3547) (Or!3547) (Equal!3547) (Minus!3547) (Broken!17739 (value!108190 List!19421)) (And!3547) (Div!3547) (LessEqual!3547) (Mod!3547) (Concat!8332) (Not!3547) (Plus!3547) (SpaceValue!3547 (value!108191 List!19421)) (IntegerValue!10643 (value!108192 Int) (text!25278 List!19421)) (StringLiteralValue!10642 (text!25279 List!19421)) (FloatLiteralValue!7095 (text!25280 List!19421)) (BytesLiteralValue!3547 (value!108193 List!19421)) (CommentValue!7095 (value!108194 List!19421)) (StringLiteralValue!10643 (value!108195 List!19421)) (ErrorTokenValue!3547 (msg!3608 List!19421)) )
))
(declare-datatypes ((C!9744 0))(
  ( (C!9745 (val!5468 Int)) )
))
(declare-datatypes ((List!19422 0))(
  ( (Nil!19352) (Cons!19352 (h!24753 C!9744) (t!163777 List!19422)) )
))
(declare-datatypes ((Regex!4785 0))(
  ( (ElementMatch!4785 (c!286518 C!9744)) (Concat!8333 (regOne!10082 Regex!4785) (regTwo!10082 Regex!4785)) (EmptyExpr!4785) (Star!4785 (reg!5114 Regex!4785)) (EmptyLang!4785) (Union!4785 (regOne!10083 Regex!4785) (regTwo!10083 Regex!4785)) )
))
(declare-datatypes ((String!22067 0))(
  ( (String!22068 (value!108196 String)) )
))
(declare-datatypes ((IArray!12879 0))(
  ( (IArray!12880 (innerList!6497 List!19422)) )
))
(declare-datatypes ((Conc!6437 0))(
  ( (Node!6437 (left!15491 Conc!6437) (right!15821 Conc!6437) (csize!13104 Int) (cheight!6648 Int)) (Leaf!9386 (xs!9313 IArray!12879) (csize!13105 Int)) (Empty!6437) )
))
(declare-datatypes ((BalanceConc!12818 0))(
  ( (BalanceConc!12819 (c!286519 Conc!6437)) )
))
(declare-datatypes ((TokenValueInjection!6754 0))(
  ( (TokenValueInjection!6755 (toValue!4976 Int) (toChars!4835 Int)) )
))
(declare-datatypes ((Rule!6714 0))(
  ( (Rule!6715 (regex!3457 Regex!4785) (tag!3819 String!22067) (isSeparator!3457 Bool) (transformation!3457 TokenValueInjection!6754)) )
))
(declare-datatypes ((Token!6480 0))(
  ( (Token!6481 (value!108197 TokenValue!3547) (rule!5471 Rule!6714) (size!15371 Int) (originalCharacters!4271 List!19422)) )
))
(declare-datatypes ((tuple2!18962 0))(
  ( (tuple2!18963 (_1!10883 Token!6480) (_2!10883 List!19422)) )
))
(declare-fun lt!679348 () tuple2!18962)

(declare-fun dynLambda!9295 (Int Int) Int)

(declare-fun dynLambda!9296 (Int Int) Int)

(assert (=> b!1758272 (< (dynLambda!9295 order!12239 (toValue!4976 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) (dynLambda!9296 order!12241 lambda!70078))))

(declare-fun order!12243 () Int)

(declare-fun dynLambda!9297 (Int Int) Int)

(assert (=> b!1758272 (< (dynLambda!9297 order!12243 (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) (dynLambda!9296 order!12241 lambda!70078))))

(declare-fun b!1758234 () Bool)

(declare-fun e!1125287 () Bool)

(declare-fun e!1125288 () Bool)

(assert (=> b!1758234 (= e!1125287 e!1125288)))

(declare-fun res!791180 () Bool)

(assert (=> b!1758234 (=> (not res!791180) (not e!1125288))))

(declare-fun lt!679351 () tuple2!18962)

(declare-fun token!523 () Token!6480)

(assert (=> b!1758234 (= res!791180 (= (_1!10883 lt!679351) token!523))))

(declare-datatypes ((Option!3936 0))(
  ( (None!3935) (Some!3935 (v!25392 tuple2!18962)) )
))
(declare-fun lt!679342 () Option!3936)

(declare-fun get!5882 (Option!3936) tuple2!18962)

(assert (=> b!1758234 (= lt!679351 (get!5882 lt!679342))))

(declare-fun b!1758235 () Bool)

(declare-fun res!791175 () Bool)

(assert (=> b!1758235 (=> (not res!791175) (not e!1125288))))

(declare-fun isEmpty!12206 (List!19422) Bool)

(assert (=> b!1758235 (= res!791175 (isEmpty!12206 (_2!10883 lt!679351)))))

(declare-fun b!1758236 () Bool)

(declare-fun e!1125295 () Bool)

(assert (=> b!1758236 (= e!1125288 (not e!1125295))))

(declare-fun res!791188 () Bool)

(assert (=> b!1758236 (=> res!791188 e!1125295)))

(declare-fun rule!422 () Rule!6714)

(declare-fun lt!679336 () List!19422)

(declare-fun matchR!2258 (Regex!4785 List!19422) Bool)

(assert (=> b!1758236 (= res!791188 (not (matchR!2258 (regex!3457 rule!422) lt!679336)))))

(declare-datatypes ((LexerInterface!3086 0))(
  ( (LexerInterfaceExt!3083 (__x!12397 Int)) (Lexer!3084) )
))
(declare-fun thiss!24550 () LexerInterface!3086)

(declare-fun ruleValid!955 (LexerInterface!3086 Rule!6714) Bool)

(assert (=> b!1758236 (ruleValid!955 thiss!24550 rule!422)))

(declare-datatypes ((Unit!33521 0))(
  ( (Unit!33522) )
))
(declare-fun lt!679350 () Unit!33521)

(declare-datatypes ((List!19423 0))(
  ( (Nil!19353) (Cons!19353 (h!24754 Rule!6714) (t!163778 List!19423)) )
))
(declare-fun rules!3447 () List!19423)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!478 (LexerInterface!3086 Rule!6714 List!19423) Unit!33521)

(assert (=> b!1758236 (= lt!679350 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!478 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1758238 () Bool)

(declare-fun e!1125278 () Bool)

(declare-fun lt!679344 () Rule!6714)

(assert (=> b!1758238 (= e!1125278 (= (rule!5471 (_1!10883 lt!679348)) lt!679344))))

(declare-fun b!1758239 () Bool)

(declare-fun res!791184 () Bool)

(declare-fun e!1125285 () Bool)

(assert (=> b!1758239 (=> (not res!791184) (not e!1125285))))

(declare-fun contains!3485 (List!19423 Rule!6714) Bool)

(assert (=> b!1758239 (= res!791184 (contains!3485 rules!3447 rule!422))))

(declare-fun b!1758240 () Bool)

(declare-fun res!791183 () Bool)

(assert (=> b!1758240 (=> (not res!791183) (not e!1125288))))

(assert (=> b!1758240 (= res!791183 (= (rule!5471 token!523) rule!422))))

(declare-fun e!1125274 () Bool)

(assert (=> b!1758241 (= e!1125274 (and tp!499693 tp!499687))))

(declare-fun b!1758242 () Bool)

(declare-fun e!1125292 () Bool)

(declare-fun e!1125293 () Bool)

(assert (=> b!1758242 (= e!1125292 e!1125293)))

(declare-fun res!791186 () Bool)

(assert (=> b!1758242 (=> res!791186 e!1125293)))

(declare-fun lt!679345 () Option!3936)

(declare-fun lt!679355 () BalanceConc!12818)

(declare-fun lt!679354 () List!19422)

(declare-fun apply!5257 (TokenValueInjection!6754 BalanceConc!12818) TokenValue!3547)

(declare-fun size!15372 (BalanceConc!12818) Int)

(assert (=> b!1758242 (= res!791186 (not (= lt!679345 (Some!3935 (tuple2!18963 (Token!6481 (apply!5257 (transformation!3457 (rule!5471 (_1!10883 lt!679348))) lt!679355) (rule!5471 (_1!10883 lt!679348)) (size!15372 lt!679355) lt!679354) (_2!10883 lt!679348))))))))

(declare-fun lt!679352 () Unit!33521)

(declare-fun lemmaCharactersSize!515 (Token!6480) Unit!33521)

(assert (=> b!1758242 (= lt!679352 (lemmaCharactersSize!515 (_1!10883 lt!679348)))))

(declare-fun lt!679337 () Unit!33521)

(declare-fun lemmaEqSameImage!368 (TokenValueInjection!6754 BalanceConc!12818 BalanceConc!12818) Unit!33521)

(declare-fun seqFromList!2426 (List!19422) BalanceConc!12818)

(assert (=> b!1758242 (= lt!679337 (lemmaEqSameImage!368 (transformation!3457 (rule!5471 (_1!10883 lt!679348))) lt!679355 (seqFromList!2426 (originalCharacters!4271 (_1!10883 lt!679348)))))))

(declare-fun tp!499692 () Bool)

(declare-fun e!1125277 () Bool)

(declare-fun e!1125286 () Bool)

(declare-fun b!1758243 () Bool)

(declare-fun inv!21 (TokenValue!3547) Bool)

(assert (=> b!1758243 (= e!1125277 (and (inv!21 (value!108197 token!523)) e!1125286 tp!499692))))

(declare-fun b!1758244 () Bool)

(declare-fun e!1125290 () Bool)

(assert (=> b!1758244 (= e!1125290 e!1125292)))

(declare-fun res!791178 () Bool)

(assert (=> b!1758244 (=> res!791178 e!1125292)))

(declare-fun list!7847 (BalanceConc!12818) List!19422)

(declare-fun dynLambda!9298 (Int TokenValue!3547) BalanceConc!12818)

(declare-fun dynLambda!9299 (Int BalanceConc!12818) TokenValue!3547)

(assert (=> b!1758244 (= res!791178 (not (= (list!7847 (dynLambda!9298 (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) (dynLambda!9299 (toValue!4976 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) lt!679355))) lt!679354)))))

(declare-fun lt!679356 () Unit!33521)

(declare-fun lemmaSemiInverse!595 (TokenValueInjection!6754 BalanceConc!12818) Unit!33521)

(assert (=> b!1758244 (= lt!679356 (lemmaSemiInverse!595 (transformation!3457 (rule!5471 (_1!10883 lt!679348))) lt!679355))))

(declare-fun e!1125284 () Bool)

(assert (=> b!1758245 (= e!1125284 e!1125290)))

(declare-fun res!791173 () Bool)

(assert (=> b!1758245 (=> res!791173 e!1125290)))

(declare-fun Forall!824 (Int) Bool)

(assert (=> b!1758245 (= res!791173 (not (Forall!824 lambda!70078)))))

(declare-fun lt!679349 () Unit!33521)

(declare-fun lemmaInv!656 (TokenValueInjection!6754) Unit!33521)

(assert (=> b!1758245 (= lt!679349 (lemmaInv!656 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))))))

(declare-fun b!1758246 () Bool)

(declare-fun e!1125283 () Bool)

(declare-fun tp_is_empty!7813 () Bool)

(declare-fun tp!499694 () Bool)

(assert (=> b!1758246 (= e!1125283 (and tp_is_empty!7813 tp!499694))))

(declare-fun b!1758247 () Bool)

(declare-fun res!791185 () Bool)

(assert (=> b!1758247 (=> (not res!791185) (not e!1125285))))

(declare-fun rulesInvariant!2755 (LexerInterface!3086 List!19423) Bool)

(assert (=> b!1758247 (= res!791185 (rulesInvariant!2755 thiss!24550 rules!3447))))

(declare-fun e!1125294 () Bool)

(assert (=> b!1758248 (= e!1125294 (and tp!499688 tp!499696))))

(declare-fun e!1125281 () Bool)

(assert (=> b!1758249 (= e!1125281 (and tp!499697 tp!499691))))

(declare-fun b!1758250 () Bool)

(assert (=> b!1758250 (= e!1125295 e!1125284)))

(declare-fun res!791179 () Bool)

(assert (=> b!1758250 (=> res!791179 e!1125284)))

(declare-fun lt!679347 () List!19422)

(declare-fun isPrefix!1697 (List!19422 List!19422) Bool)

(assert (=> b!1758250 (= res!791179 (not (isPrefix!1697 lt!679354 lt!679347)))))

(declare-fun ++!5281 (List!19422 List!19422) List!19422)

(assert (=> b!1758250 (isPrefix!1697 lt!679354 (++!5281 lt!679354 (_2!10883 lt!679348)))))

(declare-fun lt!679341 () Unit!33521)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1206 (List!19422 List!19422) Unit!33521)

(assert (=> b!1758250 (= lt!679341 (lemmaConcatTwoListThenFirstIsPrefix!1206 lt!679354 (_2!10883 lt!679348)))))

(assert (=> b!1758250 (= lt!679354 (list!7847 lt!679355))))

(declare-fun charsOf!2106 (Token!6480) BalanceConc!12818)

(assert (=> b!1758250 (= lt!679355 (charsOf!2106 (_1!10883 lt!679348)))))

(declare-fun e!1125282 () Bool)

(assert (=> b!1758250 e!1125282))

(declare-fun res!791172 () Bool)

(assert (=> b!1758250 (=> (not res!791172) (not e!1125282))))

(declare-datatypes ((Option!3937 0))(
  ( (None!3936) (Some!3936 (v!25393 Rule!6714)) )
))
(declare-fun lt!679340 () Option!3937)

(declare-fun isDefined!3279 (Option!3937) Bool)

(assert (=> b!1758250 (= res!791172 (isDefined!3279 lt!679340))))

(declare-fun getRuleFromTag!505 (LexerInterface!3086 List!19423 String!22067) Option!3937)

(assert (=> b!1758250 (= lt!679340 (getRuleFromTag!505 thiss!24550 rules!3447 (tag!3819 (rule!5471 (_1!10883 lt!679348)))))))

(declare-fun lt!679346 () Unit!33521)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!505 (LexerInterface!3086 List!19423 List!19422 Token!6480) Unit!33521)

(assert (=> b!1758250 (= lt!679346 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!505 thiss!24550 rules!3447 lt!679347 (_1!10883 lt!679348)))))

(assert (=> b!1758250 (= lt!679348 (get!5882 lt!679345))))

(declare-fun suffix!1421 () List!19422)

(declare-fun lt!679338 () Unit!33521)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!608 (LexerInterface!3086 List!19423 List!19422 List!19422) Unit!33521)

(assert (=> b!1758250 (= lt!679338 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!608 thiss!24550 rules!3447 lt!679336 suffix!1421))))

(declare-fun maxPrefix!1640 (LexerInterface!3086 List!19423 List!19422) Option!3936)

(assert (=> b!1758250 (= lt!679345 (maxPrefix!1640 thiss!24550 rules!3447 lt!679347))))

(assert (=> b!1758250 (isPrefix!1697 lt!679336 lt!679347)))

(declare-fun lt!679353 () Unit!33521)

(assert (=> b!1758250 (= lt!679353 (lemmaConcatTwoListThenFirstIsPrefix!1206 lt!679336 suffix!1421))))

(assert (=> b!1758250 (= lt!679347 (++!5281 lt!679336 suffix!1421))))

(declare-fun res!791187 () Bool)

(assert (=> start!173770 (=> (not res!791187) (not e!1125285))))

(get-info :version)

(assert (=> start!173770 (= res!791187 ((_ is Lexer!3084) thiss!24550))))

(assert (=> start!173770 e!1125285))

(assert (=> start!173770 e!1125283))

(declare-fun e!1125296 () Bool)

(assert (=> start!173770 e!1125296))

(assert (=> start!173770 true))

(declare-fun inv!25124 (Token!6480) Bool)

(assert (=> start!173770 (and (inv!25124 token!523) e!1125277)))

(declare-fun e!1125291 () Bool)

(assert (=> start!173770 e!1125291))

(declare-fun b!1758237 () Bool)

(declare-fun e!1125276 () Bool)

(declare-fun tp!499695 () Bool)

(assert (=> b!1758237 (= e!1125291 (and e!1125276 tp!499695))))

(declare-fun b!1758251 () Bool)

(assert (=> b!1758251 (= e!1125282 e!1125278)))

(declare-fun res!791190 () Bool)

(assert (=> b!1758251 (=> (not res!791190) (not e!1125278))))

(assert (=> b!1758251 (= res!791190 (matchR!2258 (regex!3457 lt!679344) (list!7847 (charsOf!2106 (_1!10883 lt!679348)))))))

(declare-fun get!5883 (Option!3937) Rule!6714)

(assert (=> b!1758251 (= lt!679344 (get!5883 lt!679340))))

(declare-fun b!1758252 () Bool)

(assert (=> b!1758252 (= e!1125293 true)))

(declare-fun lt!679343 () List!19422)

(declare-fun getSuffix!864 (List!19422 List!19422) List!19422)

(assert (=> b!1758252 (= lt!679343 (getSuffix!864 lt!679347 lt!679354))))

(declare-fun maxPrefixOneRule!1009 (LexerInterface!3086 Rule!6714 List!19422) Option!3936)

(declare-fun size!15373 (List!19422) Int)

(assert (=> b!1758252 (= (maxPrefixOneRule!1009 thiss!24550 (rule!5471 (_1!10883 lt!679348)) lt!679347) (Some!3935 (tuple2!18963 (Token!6481 (apply!5257 (transformation!3457 (rule!5471 (_1!10883 lt!679348))) (seqFromList!2426 lt!679354)) (rule!5471 (_1!10883 lt!679348)) (size!15373 lt!679354) lt!679354) (_2!10883 lt!679348))))))

(declare-fun lt!679339 () Unit!33521)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!387 (LexerInterface!3086 List!19423 List!19422 List!19422 List!19422 Rule!6714) Unit!33521)

(assert (=> b!1758252 (= lt!679339 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!387 thiss!24550 rules!3447 lt!679354 lt!679347 (_2!10883 lt!679348) (rule!5471 (_1!10883 lt!679348))))))

(declare-fun tp!499690 () Bool)

(declare-fun b!1758253 () Bool)

(declare-fun inv!25119 (String!22067) Bool)

(declare-fun inv!25125 (TokenValueInjection!6754) Bool)

(assert (=> b!1758253 (= e!1125296 (and tp!499690 (inv!25119 (tag!3819 rule!422)) (inv!25125 (transformation!3457 rule!422)) e!1125274))))

(declare-fun b!1758254 () Bool)

(declare-fun res!791174 () Bool)

(assert (=> b!1758254 (=> res!791174 e!1125284)))

(assert (=> b!1758254 (= res!791174 (not (matchR!2258 (regex!3457 (rule!5471 (_1!10883 lt!679348))) lt!679354)))))

(declare-fun b!1758255 () Bool)

(assert (=> b!1758255 (= e!1125285 e!1125287)))

(declare-fun res!791176 () Bool)

(assert (=> b!1758255 (=> (not res!791176) (not e!1125287))))

(declare-fun isDefined!3280 (Option!3936) Bool)

(assert (=> b!1758255 (= res!791176 (isDefined!3280 lt!679342))))

(assert (=> b!1758255 (= lt!679342 (maxPrefix!1640 thiss!24550 rules!3447 lt!679336))))

(assert (=> b!1758255 (= lt!679336 (list!7847 (charsOf!2106 token!523)))))

(declare-fun b!1758256 () Bool)

(declare-fun res!791182 () Bool)

(assert (=> b!1758256 (=> res!791182 e!1125292)))

(assert (=> b!1758256 (= res!791182 (not (= lt!679355 (dynLambda!9298 (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) (value!108197 (_1!10883 lt!679348))))))))

(declare-fun b!1758257 () Bool)

(declare-fun res!791181 () Bool)

(assert (=> b!1758257 (=> (not res!791181) (not e!1125285))))

(declare-fun isEmpty!12207 (List!19423) Bool)

(assert (=> b!1758257 (= res!791181 (not (isEmpty!12207 rules!3447)))))

(declare-fun b!1758258 () Bool)

(declare-fun tp!499689 () Bool)

(assert (=> b!1758258 (= e!1125286 (and tp!499689 (inv!25119 (tag!3819 (rule!5471 token!523))) (inv!25125 (transformation!3457 (rule!5471 token!523))) e!1125294))))

(declare-fun b!1758259 () Bool)

(declare-fun res!791177 () Bool)

(assert (=> b!1758259 (=> res!791177 e!1125295)))

(declare-fun prefixMatch!668 (Regex!4785 List!19422) Bool)

(declare-fun rulesRegex!813 (LexerInterface!3086 List!19423) Regex!4785)

(declare-fun head!4066 (List!19422) C!9744)

(assert (=> b!1758259 (= res!791177 (prefixMatch!668 (rulesRegex!813 thiss!24550 rules!3447) (++!5281 lt!679336 (Cons!19352 (head!4066 suffix!1421) Nil!19352))))))

(declare-fun b!1758260 () Bool)

(declare-fun res!791189 () Bool)

(assert (=> b!1758260 (=> res!791189 e!1125295)))

(assert (=> b!1758260 (= res!791189 (isEmpty!12206 suffix!1421))))

(declare-fun tp!499698 () Bool)

(declare-fun b!1758261 () Bool)

(assert (=> b!1758261 (= e!1125276 (and tp!499698 (inv!25119 (tag!3819 (h!24754 rules!3447))) (inv!25125 (transformation!3457 (h!24754 rules!3447))) e!1125281))))

(assert (= (and start!173770 res!791187) b!1758257))

(assert (= (and b!1758257 res!791181) b!1758247))

(assert (= (and b!1758247 res!791185) b!1758239))

(assert (= (and b!1758239 res!791184) b!1758255))

(assert (= (and b!1758255 res!791176) b!1758234))

(assert (= (and b!1758234 res!791180) b!1758235))

(assert (= (and b!1758235 res!791175) b!1758240))

(assert (= (and b!1758240 res!791183) b!1758236))

(assert (= (and b!1758236 (not res!791188)) b!1758260))

(assert (= (and b!1758260 (not res!791189)) b!1758259))

(assert (= (and b!1758259 (not res!791177)) b!1758250))

(assert (= (and b!1758250 res!791172) b!1758251))

(assert (= (and b!1758251 res!791190) b!1758238))

(assert (= (and b!1758250 (not res!791179)) b!1758254))

(assert (= (and b!1758254 (not res!791174)) b!1758245))

(assert (= (and b!1758245 (not res!791173)) b!1758244))

(assert (= (and b!1758244 (not res!791178)) b!1758256))

(assert (= (and b!1758256 (not res!791182)) b!1758242))

(assert (= (and b!1758242 (not res!791186)) b!1758252))

(assert (= (and start!173770 ((_ is Cons!19352) suffix!1421)) b!1758246))

(assert (= b!1758253 b!1758241))

(assert (= start!173770 b!1758253))

(assert (= b!1758258 b!1758248))

(assert (= b!1758243 b!1758258))

(assert (= start!173770 b!1758243))

(assert (= b!1758261 b!1758249))

(assert (= b!1758237 b!1758261))

(assert (= (and start!173770 ((_ is Cons!19353) rules!3447)) b!1758237))

(declare-fun b_lambda!56795 () Bool)

(assert (=> (not b_lambda!56795) (not b!1758244)))

(declare-fun tb!105759 () Bool)

(declare-fun t!163759 () Bool)

(assert (=> (and b!1758249 (= (toChars!4835 (transformation!3457 (h!24754 rules!3447))) (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163759) tb!105759))

(declare-fun b!1758277 () Bool)

(declare-fun tp!499701 () Bool)

(declare-fun e!1125308 () Bool)

(declare-fun inv!25126 (Conc!6437) Bool)

(assert (=> b!1758277 (= e!1125308 (and (inv!25126 (c!286519 (dynLambda!9298 (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) (dynLambda!9299 (toValue!4976 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) lt!679355)))) tp!499701))))

(declare-fun result!127242 () Bool)

(declare-fun inv!25127 (BalanceConc!12818) Bool)

(assert (=> tb!105759 (= result!127242 (and (inv!25127 (dynLambda!9298 (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) (dynLambda!9299 (toValue!4976 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) lt!679355))) e!1125308))))

(assert (= tb!105759 b!1758277))

(declare-fun m!2173415 () Bool)

(assert (=> b!1758277 m!2173415))

(declare-fun m!2173417 () Bool)

(assert (=> tb!105759 m!2173417))

(assert (=> b!1758244 t!163759))

(declare-fun b_and!132323 () Bool)

(assert (= b_and!132313 (and (=> t!163759 result!127242) b_and!132323)))

(declare-fun t!163761 () Bool)

(declare-fun tb!105761 () Bool)

(assert (=> (and b!1758241 (= (toChars!4835 (transformation!3457 rule!422)) (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163761) tb!105761))

(declare-fun result!127246 () Bool)

(assert (= result!127246 result!127242))

(assert (=> b!1758244 t!163761))

(declare-fun b_and!132325 () Bool)

(assert (= b_and!132317 (and (=> t!163761 result!127246) b_and!132325)))

(declare-fun t!163763 () Bool)

(declare-fun tb!105763 () Bool)

(assert (=> (and b!1758248 (= (toChars!4835 (transformation!3457 (rule!5471 token!523))) (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163763) tb!105763))

(declare-fun result!127248 () Bool)

(assert (= result!127248 result!127242))

(assert (=> b!1758244 t!163763))

(declare-fun b_and!132327 () Bool)

(assert (= b_and!132321 (and (=> t!163763 result!127248) b_and!132327)))

(declare-fun b_lambda!56797 () Bool)

(assert (=> (not b_lambda!56797) (not b!1758244)))

(declare-fun t!163765 () Bool)

(declare-fun tb!105765 () Bool)

(assert (=> (and b!1758249 (= (toValue!4976 (transformation!3457 (h!24754 rules!3447))) (toValue!4976 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163765) tb!105765))

(declare-fun result!127250 () Bool)

(assert (=> tb!105765 (= result!127250 (inv!21 (dynLambda!9299 (toValue!4976 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) lt!679355)))))

(declare-fun m!2173419 () Bool)

(assert (=> tb!105765 m!2173419))

(assert (=> b!1758244 t!163765))

(declare-fun b_and!132329 () Bool)

(assert (= b_and!132311 (and (=> t!163765 result!127250) b_and!132329)))

(declare-fun t!163767 () Bool)

(declare-fun tb!105767 () Bool)

(assert (=> (and b!1758241 (= (toValue!4976 (transformation!3457 rule!422)) (toValue!4976 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163767) tb!105767))

(declare-fun result!127254 () Bool)

(assert (= result!127254 result!127250))

(assert (=> b!1758244 t!163767))

(declare-fun b_and!132331 () Bool)

(assert (= b_and!132315 (and (=> t!163767 result!127254) b_and!132331)))

(declare-fun tb!105769 () Bool)

(declare-fun t!163769 () Bool)

(assert (=> (and b!1758248 (= (toValue!4976 (transformation!3457 (rule!5471 token!523))) (toValue!4976 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163769) tb!105769))

(declare-fun result!127256 () Bool)

(assert (= result!127256 result!127250))

(assert (=> b!1758244 t!163769))

(declare-fun b_and!132333 () Bool)

(assert (= b_and!132319 (and (=> t!163769 result!127256) b_and!132333)))

(declare-fun b_lambda!56799 () Bool)

(assert (=> (not b_lambda!56799) (not b!1758256)))

(declare-fun t!163771 () Bool)

(declare-fun tb!105771 () Bool)

(assert (=> (and b!1758249 (= (toChars!4835 (transformation!3457 (h!24754 rules!3447))) (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163771) tb!105771))

(declare-fun b!1758280 () Bool)

(declare-fun e!1125312 () Bool)

(declare-fun tp!499702 () Bool)

(assert (=> b!1758280 (= e!1125312 (and (inv!25126 (c!286519 (dynLambda!9298 (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) (value!108197 (_1!10883 lt!679348))))) tp!499702))))

(declare-fun result!127258 () Bool)

(assert (=> tb!105771 (= result!127258 (and (inv!25127 (dynLambda!9298 (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348)))) (value!108197 (_1!10883 lt!679348)))) e!1125312))))

(assert (= tb!105771 b!1758280))

(declare-fun m!2173421 () Bool)

(assert (=> b!1758280 m!2173421))

(declare-fun m!2173423 () Bool)

(assert (=> tb!105771 m!2173423))

(assert (=> b!1758256 t!163771))

(declare-fun b_and!132335 () Bool)

(assert (= b_and!132323 (and (=> t!163771 result!127258) b_and!132335)))

(declare-fun t!163773 () Bool)

(declare-fun tb!105773 () Bool)

(assert (=> (and b!1758241 (= (toChars!4835 (transformation!3457 rule!422)) (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163773) tb!105773))

(declare-fun result!127260 () Bool)

(assert (= result!127260 result!127258))

(assert (=> b!1758256 t!163773))

(declare-fun b_and!132337 () Bool)

(assert (= b_and!132325 (and (=> t!163773 result!127260) b_and!132337)))

(declare-fun t!163775 () Bool)

(declare-fun tb!105775 () Bool)

(assert (=> (and b!1758248 (= (toChars!4835 (transformation!3457 (rule!5471 token!523))) (toChars!4835 (transformation!3457 (rule!5471 (_1!10883 lt!679348))))) t!163775) tb!105775))

(declare-fun result!127262 () Bool)

(assert (= result!127262 result!127258))

(assert (=> b!1758256 t!163775))

(declare-fun b_and!132339 () Bool)

(assert (= b_and!132327 (and (=> t!163775 result!127262) b_and!132339)))

(declare-fun m!2173425 () Bool)

(assert (=> b!1758235 m!2173425))

(declare-fun m!2173427 () Bool)

(assert (=> b!1758257 m!2173427))

(declare-fun m!2173429 () Bool)

(assert (=> b!1758260 m!2173429))

(declare-fun m!2173431 () Bool)

(assert (=> b!1758234 m!2173431))

(declare-fun m!2173433 () Bool)

(assert (=> b!1758258 m!2173433))

(declare-fun m!2173435 () Bool)

(assert (=> b!1758258 m!2173435))

(declare-fun m!2173437 () Bool)

(assert (=> b!1758244 m!2173437))

(assert (=> b!1758244 m!2173437))

(declare-fun m!2173439 () Bool)

(assert (=> b!1758244 m!2173439))

(assert (=> b!1758244 m!2173439))

(declare-fun m!2173441 () Bool)

(assert (=> b!1758244 m!2173441))

(declare-fun m!2173443 () Bool)

(assert (=> b!1758244 m!2173443))

(declare-fun m!2173445 () Bool)

(assert (=> start!173770 m!2173445))

(declare-fun m!2173447 () Bool)

(assert (=> b!1758245 m!2173447))

(declare-fun m!2173449 () Bool)

(assert (=> b!1758245 m!2173449))

(declare-fun m!2173451 () Bool)

(assert (=> b!1758259 m!2173451))

(declare-fun m!2173453 () Bool)

(assert (=> b!1758259 m!2173453))

(declare-fun m!2173455 () Bool)

(assert (=> b!1758259 m!2173455))

(assert (=> b!1758259 m!2173451))

(assert (=> b!1758259 m!2173455))

(declare-fun m!2173457 () Bool)

(assert (=> b!1758259 m!2173457))

(declare-fun m!2173459 () Bool)

(assert (=> b!1758239 m!2173459))

(declare-fun m!2173461 () Bool)

(assert (=> b!1758252 m!2173461))

(declare-fun m!2173463 () Bool)

(assert (=> b!1758252 m!2173463))

(assert (=> b!1758252 m!2173461))

(declare-fun m!2173465 () Bool)

(assert (=> b!1758252 m!2173465))

(declare-fun m!2173467 () Bool)

(assert (=> b!1758252 m!2173467))

(declare-fun m!2173469 () Bool)

(assert (=> b!1758252 m!2173469))

(declare-fun m!2173471 () Bool)

(assert (=> b!1758252 m!2173471))

(declare-fun m!2173473 () Bool)

(assert (=> b!1758242 m!2173473))

(declare-fun m!2173475 () Bool)

(assert (=> b!1758242 m!2173475))

(declare-fun m!2173477 () Bool)

(assert (=> b!1758242 m!2173477))

(declare-fun m!2173479 () Bool)

(assert (=> b!1758242 m!2173479))

(assert (=> b!1758242 m!2173479))

(declare-fun m!2173481 () Bool)

(assert (=> b!1758242 m!2173481))

(declare-fun m!2173483 () Bool)

(assert (=> b!1758253 m!2173483))

(declare-fun m!2173485 () Bool)

(assert (=> b!1758253 m!2173485))

(declare-fun m!2173487 () Bool)

(assert (=> b!1758254 m!2173487))

(declare-fun m!2173489 () Bool)

(assert (=> b!1758236 m!2173489))

(declare-fun m!2173491 () Bool)

(assert (=> b!1758236 m!2173491))

(declare-fun m!2173493 () Bool)

(assert (=> b!1758236 m!2173493))

(declare-fun m!2173495 () Bool)

(assert (=> b!1758243 m!2173495))

(declare-fun m!2173497 () Bool)

(assert (=> b!1758250 m!2173497))

(declare-fun m!2173499 () Bool)

(assert (=> b!1758250 m!2173499))

(declare-fun m!2173501 () Bool)

(assert (=> b!1758250 m!2173501))

(declare-fun m!2173503 () Bool)

(assert (=> b!1758250 m!2173503))

(declare-fun m!2173505 () Bool)

(assert (=> b!1758250 m!2173505))

(declare-fun m!2173507 () Bool)

(assert (=> b!1758250 m!2173507))

(declare-fun m!2173509 () Bool)

(assert (=> b!1758250 m!2173509))

(declare-fun m!2173511 () Bool)

(assert (=> b!1758250 m!2173511))

(declare-fun m!2173513 () Bool)

(assert (=> b!1758250 m!2173513))

(declare-fun m!2173515 () Bool)

(assert (=> b!1758250 m!2173515))

(declare-fun m!2173517 () Bool)

(assert (=> b!1758250 m!2173517))

(assert (=> b!1758250 m!2173501))

(declare-fun m!2173519 () Bool)

(assert (=> b!1758250 m!2173519))

(declare-fun m!2173521 () Bool)

(assert (=> b!1758250 m!2173521))

(declare-fun m!2173523 () Bool)

(assert (=> b!1758250 m!2173523))

(declare-fun m!2173525 () Bool)

(assert (=> b!1758250 m!2173525))

(declare-fun m!2173527 () Bool)

(assert (=> b!1758255 m!2173527))

(declare-fun m!2173529 () Bool)

(assert (=> b!1758255 m!2173529))

(declare-fun m!2173531 () Bool)

(assert (=> b!1758255 m!2173531))

(assert (=> b!1758255 m!2173531))

(declare-fun m!2173533 () Bool)

(assert (=> b!1758255 m!2173533))

(assert (=> b!1758251 m!2173513))

(assert (=> b!1758251 m!2173513))

(declare-fun m!2173535 () Bool)

(assert (=> b!1758251 m!2173535))

(assert (=> b!1758251 m!2173535))

(declare-fun m!2173537 () Bool)

(assert (=> b!1758251 m!2173537))

(declare-fun m!2173539 () Bool)

(assert (=> b!1758251 m!2173539))

(declare-fun m!2173541 () Bool)

(assert (=> b!1758247 m!2173541))

(declare-fun m!2173543 () Bool)

(assert (=> b!1758256 m!2173543))

(declare-fun m!2173545 () Bool)

(assert (=> b!1758261 m!2173545))

(declare-fun m!2173547 () Bool)

(assert (=> b!1758261 m!2173547))

(check-sat tp_is_empty!7813 (not b!1758254) (not b!1758261) b_and!132339 (not b!1758251) (not b_next!49293) (not b!1758235) (not tb!105759) (not b!1758260) b_and!132333 (not b!1758250) (not b!1758257) b_and!132335 (not b_next!49295) (not b_next!49291) (not b!1758247) (not b_lambda!56795) (not b!1758244) (not b!1758258) (not b!1758236) (not b!1758246) b_and!132329 (not b!1758245) (not start!173770) (not b!1758259) (not b!1758242) (not b!1758243) (not b_next!49287) (not b!1758234) (not b!1758280) b_and!132337 (not b_next!49289) (not b!1758277) (not tb!105765) (not b_lambda!56797) (not b!1758255) (not b!1758253) (not b_lambda!56799) (not b!1758239) (not b!1758252) (not tb!105771) (not b_next!49297) b_and!132331 (not b!1758237))
(check-sat b_and!132333 b_and!132329 (not b_next!49287) b_and!132339 (not b_next!49293) b_and!132335 (not b_next!49295) (not b_next!49291) b_and!132337 (not b_next!49289) (not b_next!49297) b_and!132331)
