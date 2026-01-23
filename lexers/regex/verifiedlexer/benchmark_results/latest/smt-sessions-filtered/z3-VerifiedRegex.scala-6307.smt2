; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!316918 () Bool)

(assert start!316918)

(declare-fun b!3396341 () Bool)

(declare-fun b_free!88897 () Bool)

(declare-fun b_next!89601 () Bool)

(assert (=> b!3396341 (= b_free!88897 (not b_next!89601))))

(declare-fun tp!1060157 () Bool)

(declare-fun b_and!236763 () Bool)

(assert (=> b!3396341 (= tp!1060157 b_and!236763)))

(declare-fun b_free!88899 () Bool)

(declare-fun b_next!89603 () Bool)

(assert (=> b!3396341 (= b_free!88899 (not b_next!89603))))

(declare-fun tp!1060150 () Bool)

(declare-fun b_and!236765 () Bool)

(assert (=> b!3396341 (= tp!1060150 b_and!236765)))

(declare-fun b!3396347 () Bool)

(declare-fun b_free!88901 () Bool)

(declare-fun b_next!89605 () Bool)

(assert (=> b!3396347 (= b_free!88901 (not b_next!89605))))

(declare-fun tp!1060154 () Bool)

(declare-fun b_and!236767 () Bool)

(assert (=> b!3396347 (= tp!1060154 b_and!236767)))

(declare-fun b_free!88903 () Bool)

(declare-fun b_next!89607 () Bool)

(assert (=> b!3396347 (= b_free!88903 (not b_next!89607))))

(declare-fun tp!1060155 () Bool)

(declare-fun b_and!236769 () Bool)

(assert (=> b!3396347 (= tp!1060155 b_and!236769)))

(declare-fun b!3396349 () Bool)

(declare-fun b_free!88905 () Bool)

(declare-fun b_next!89609 () Bool)

(assert (=> b!3396349 (= b_free!88905 (not b_next!89609))))

(declare-fun tp!1060158 () Bool)

(declare-fun b_and!236771 () Bool)

(assert (=> b!3396349 (= tp!1060158 b_and!236771)))

(declare-fun b_free!88907 () Bool)

(declare-fun b_next!89611 () Bool)

(assert (=> b!3396349 (= b_free!88907 (not b_next!89611))))

(declare-fun tp!1060152 () Bool)

(declare-fun b_and!236773 () Bool)

(assert (=> b!3396349 (= tp!1060152 b_and!236773)))

(declare-fun b!3396335 () Bool)

(declare-fun res!1374215 () Bool)

(declare-fun e!2108290 () Bool)

(assert (=> b!3396335 (=> res!1374215 e!2108290)))

(declare-datatypes ((String!41453 0))(
  ( (String!41454 (value!174163 String)) )
))
(declare-datatypes ((C!20492 0))(
  ( (C!20493 (val!12294 Int)) )
))
(declare-datatypes ((Regex!10153 0))(
  ( (ElementMatch!10153 (c!578880 C!20492)) (Concat!15777 (regOne!20818 Regex!10153) (regTwo!20818 Regex!10153)) (EmptyExpr!10153) (Star!10153 (reg!10482 Regex!10153)) (EmptyLang!10153) (Union!10153 (regOne!20819 Regex!10153) (regTwo!20819 Regex!10153)) )
))
(declare-datatypes ((List!37078 0))(
  ( (Nil!36954) (Cons!36954 (h!42374 (_ BitVec 16)) (t!265287 List!37078)) )
))
(declare-datatypes ((TokenValue!5624 0))(
  ( (FloatLiteralValue!11248 (text!39813 List!37078)) (TokenValueExt!5623 (__x!23465 Int)) (Broken!28120 (value!174164 List!37078)) (Object!5747) (End!5624) (Def!5624) (Underscore!5624) (Match!5624) (Else!5624) (Error!5624) (Case!5624) (If!5624) (Extends!5624) (Abstract!5624) (Class!5624) (Val!5624) (DelimiterValue!11248 (del!5684 List!37078)) (KeywordValue!5630 (value!174165 List!37078)) (CommentValue!11248 (value!174166 List!37078)) (WhitespaceValue!11248 (value!174167 List!37078)) (IndentationValue!5624 (value!174168 List!37078)) (String!41455) (Int32!5624) (Broken!28121 (value!174169 List!37078)) (Boolean!5625) (Unit!52121) (OperatorValue!5627 (op!5684 List!37078)) (IdentifierValue!11248 (value!174170 List!37078)) (IdentifierValue!11249 (value!174171 List!37078)) (WhitespaceValue!11249 (value!174172 List!37078)) (True!11248) (False!11248) (Broken!28122 (value!174173 List!37078)) (Broken!28123 (value!174174 List!37078)) (True!11249) (RightBrace!5624) (RightBracket!5624) (Colon!5624) (Null!5624) (Comma!5624) (LeftBracket!5624) (False!11249) (LeftBrace!5624) (ImaginaryLiteralValue!5624 (text!39814 List!37078)) (StringLiteralValue!16872 (value!174175 List!37078)) (EOFValue!5624 (value!174176 List!37078)) (IdentValue!5624 (value!174177 List!37078)) (DelimiterValue!11249 (value!174178 List!37078)) (DedentValue!5624 (value!174179 List!37078)) (NewLineValue!5624 (value!174180 List!37078)) (IntegerValue!16872 (value!174181 (_ BitVec 32)) (text!39815 List!37078)) (IntegerValue!16873 (value!174182 Int) (text!39816 List!37078)) (Times!5624) (Or!5624) (Equal!5624) (Minus!5624) (Broken!28124 (value!174183 List!37078)) (And!5624) (Div!5624) (LessEqual!5624) (Mod!5624) (Concat!15778) (Not!5624) (Plus!5624) (SpaceValue!5624 (value!174184 List!37078)) (IntegerValue!16874 (value!174185 Int) (text!39817 List!37078)) (StringLiteralValue!16873 (text!39818 List!37078)) (FloatLiteralValue!11249 (text!39819 List!37078)) (BytesLiteralValue!5624 (value!174186 List!37078)) (CommentValue!11249 (value!174187 List!37078)) (StringLiteralValue!16874 (value!174188 List!37078)) (ErrorTokenValue!5624 (msg!5685 List!37078)) )
))
(declare-datatypes ((List!37079 0))(
  ( (Nil!36955) (Cons!36955 (h!42375 C!20492) (t!265288 List!37079)) )
))
(declare-datatypes ((IArray!22331 0))(
  ( (IArray!22332 (innerList!11223 List!37079)) )
))
(declare-datatypes ((Conc!11163 0))(
  ( (Node!11163 (left!28810 Conc!11163) (right!29140 Conc!11163) (csize!22556 Int) (cheight!11374 Int)) (Leaf!17471 (xs!14321 IArray!22331) (csize!22557 Int)) (Empty!11163) )
))
(declare-datatypes ((BalanceConc!21940 0))(
  ( (BalanceConc!21941 (c!578881 Conc!11163)) )
))
(declare-datatypes ((TokenValueInjection!10676 0))(
  ( (TokenValueInjection!10677 (toValue!7590 Int) (toChars!7449 Int)) )
))
(declare-datatypes ((Rule!10588 0))(
  ( (Rule!10589 (regex!5394 Regex!10153) (tag!5978 String!41453) (isSeparator!5394 Bool) (transformation!5394 TokenValueInjection!10676)) )
))
(declare-datatypes ((Token!10154 0))(
  ( (Token!10155 (value!174189 TokenValue!5624) (rule!7954 Rule!10588) (size!27969 Int) (originalCharacters!6108 List!37079)) )
))
(declare-datatypes ((List!37080 0))(
  ( (Nil!36956) (Cons!36956 (h!42376 Token!10154) (t!265289 List!37080)) )
))
(declare-fun tokens!494 () List!37080)

(declare-fun contains!6785 (List!37080 Token!10154) Bool)

(assert (=> b!3396335 (= res!1374215 (not (contains!6785 tokens!494 (h!42376 tokens!494))))))

(declare-datatypes ((LexerInterface!4983 0))(
  ( (LexerInterfaceExt!4980 (__x!23466 Int)) (Lexer!4981) )
))
(declare-fun thiss!18206 () LexerInterface!4983)

(declare-fun b!3396336 () Bool)

(declare-datatypes ((List!37081 0))(
  ( (Nil!36957) (Cons!36957 (h!42377 Rule!10588) (t!265290 List!37081)) )
))
(declare-fun rules!2135 () List!37081)

(declare-fun rulesProduceEachTokenIndividuallyList!1825 (LexerInterface!4983 List!37081 List!37080) Bool)

(assert (=> b!3396336 (= e!2108290 (rulesProduceEachTokenIndividuallyList!1825 thiss!18206 rules!2135 tokens!494))))

(declare-fun b!3396337 () Bool)

(declare-fun e!2108278 () Bool)

(declare-fun e!2108281 () Bool)

(assert (=> b!3396337 (= e!2108278 e!2108281)))

(declare-fun res!1374205 () Bool)

(assert (=> b!3396337 (=> res!1374205 e!2108281)))

(declare-fun lt!1154548 () List!37079)

(declare-fun separatorToken!241 () Token!10154)

(declare-fun lt!1154543 () List!37079)

(declare-fun ++!9051 (List!37079 List!37079) List!37079)

(declare-fun list!13387 (BalanceConc!21940) List!37079)

(declare-fun charsOf!3408 (Token!10154) BalanceConc!21940)

(declare-fun printWithSeparatorTokenList!270 (LexerInterface!4983 List!37080 Token!10154) List!37079)

(assert (=> b!3396337 (= res!1374205 (not (= lt!1154548 (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1154546 () List!37079)

(assert (=> b!3396337 (= lt!1154546 (++!9051 lt!1154543 lt!1154548))))

(assert (=> b!3396337 (= lt!1154543 (list!13387 (charsOf!3408 separatorToken!241)))))

(assert (=> b!3396337 (= lt!1154548 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241))))

(declare-fun lt!1154551 () List!37079)

(assert (=> b!3396337 (= lt!1154551 (printWithSeparatorTokenList!270 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2108294 () Bool)

(declare-fun e!2108276 () Bool)

(declare-fun tp!1060153 () Bool)

(declare-fun b!3396338 () Bool)

(declare-fun inv!50044 (String!41453) Bool)

(declare-fun inv!50047 (TokenValueInjection!10676) Bool)

(assert (=> b!3396338 (= e!2108276 (and tp!1060153 (inv!50044 (tag!5978 (h!42377 rules!2135))) (inv!50047 (transformation!5394 (h!42377 rules!2135))) e!2108294))))

(declare-fun e!2108285 () Bool)

(declare-fun e!2108288 () Bool)

(declare-fun tp!1060159 () Bool)

(declare-fun b!3396339 () Bool)

(assert (=> b!3396339 (= e!2108288 (and tp!1060159 (inv!50044 (tag!5978 (rule!7954 separatorToken!241))) (inv!50047 (transformation!5394 (rule!7954 separatorToken!241))) e!2108285))))

(declare-fun b!3396340 () Bool)

(declare-fun e!2108280 () Bool)

(assert (=> b!3396340 (= e!2108280 e!2108278)))

(declare-fun res!1374203 () Bool)

(assert (=> b!3396340 (=> res!1374203 e!2108278)))

(assert (=> b!3396340 (= res!1374203 (or (isSeparator!5394 (rule!7954 (h!42376 tokens!494))) (isSeparator!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))))

(declare-datatypes ((Unit!52122 0))(
  ( (Unit!52123) )
))
(declare-fun lt!1154552 () Unit!52122)

(declare-fun lambda!120825 () Int)

(declare-fun forallContained!1341 (List!37080 Int Token!10154) Unit!52122)

(assert (=> b!3396340 (= lt!1154552 (forallContained!1341 tokens!494 lambda!120825 (h!42376 (t!265289 tokens!494))))))

(declare-fun lt!1154547 () Unit!52122)

(assert (=> b!3396340 (= lt!1154547 (forallContained!1341 tokens!494 lambda!120825 (h!42376 tokens!494)))))

(declare-fun e!2108291 () Bool)

(assert (=> b!3396341 (= e!2108291 (and tp!1060157 tp!1060150))))

(declare-fun b!3396342 () Bool)

(declare-fun e!2108289 () Bool)

(declare-fun tp!1060161 () Bool)

(declare-fun inv!21 (TokenValue!5624) Bool)

(assert (=> b!3396342 (= e!2108289 (and (inv!21 (value!174189 separatorToken!241)) e!2108288 tp!1060161))))

(declare-fun b!3396343 () Bool)

(declare-fun res!1374210 () Bool)

(declare-fun e!2108287 () Bool)

(assert (=> b!3396343 (=> (not res!1374210) (not e!2108287))))

(declare-fun rulesProduceIndividualToken!2475 (LexerInterface!4983 List!37081 Token!10154) Bool)

(assert (=> b!3396343 (= res!1374210 (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3396344 () Bool)

(declare-fun e!2108274 () Bool)

(assert (=> b!3396344 (= e!2108287 (not e!2108274))))

(declare-fun res!1374217 () Bool)

(assert (=> b!3396344 (=> res!1374217 e!2108274)))

(declare-fun lt!1154545 () List!37079)

(declare-fun lt!1154541 () List!37079)

(assert (=> b!3396344 (= res!1374217 (not (= lt!1154545 lt!1154541)))))

(declare-fun printList!1531 (LexerInterface!4983 List!37080) List!37079)

(assert (=> b!3396344 (= lt!1154541 (printList!1531 thiss!18206 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))

(declare-fun lt!1154549 () BalanceConc!21940)

(assert (=> b!3396344 (= lt!1154545 (list!13387 lt!1154549))))

(declare-datatypes ((IArray!22333 0))(
  ( (IArray!22334 (innerList!11224 List!37080)) )
))
(declare-datatypes ((Conc!11164 0))(
  ( (Node!11164 (left!28811 Conc!11164) (right!29141 Conc!11164) (csize!22558 Int) (cheight!11375 Int)) (Leaf!17472 (xs!14322 IArray!22333) (csize!22559 Int)) (Empty!11164) )
))
(declare-datatypes ((BalanceConc!21942 0))(
  ( (BalanceConc!21943 (c!578882 Conc!11164)) )
))
(declare-fun lt!1154539 () BalanceConc!21942)

(declare-fun printTailRec!1478 (LexerInterface!4983 BalanceConc!21942 Int BalanceConc!21940) BalanceConc!21940)

(assert (=> b!3396344 (= lt!1154549 (printTailRec!1478 thiss!18206 lt!1154539 0 (BalanceConc!21941 Empty!11163)))))

(declare-fun print!2048 (LexerInterface!4983 BalanceConc!21942) BalanceConc!21940)

(assert (=> b!3396344 (= lt!1154549 (print!2048 thiss!18206 lt!1154539))))

(declare-fun singletonSeq!2490 (Token!10154) BalanceConc!21942)

(assert (=> b!3396344 (= lt!1154539 (singletonSeq!2490 (h!42376 tokens!494)))))

(declare-fun b!3396345 () Bool)

(declare-fun res!1374213 () Bool)

(assert (=> b!3396345 (=> res!1374213 e!2108280)))

(declare-fun lt!1154540 () List!37079)

(declare-fun isEmpty!21214 (BalanceConc!21942) Bool)

(declare-datatypes ((tuple2!36574 0))(
  ( (tuple2!36575 (_1!21421 BalanceConc!21942) (_2!21421 BalanceConc!21940)) )
))
(declare-fun lex!2309 (LexerInterface!4983 List!37081 BalanceConc!21940) tuple2!36574)

(declare-fun seqFromList!3841 (List!37079) BalanceConc!21940)

(assert (=> b!3396345 (= res!1374213 (isEmpty!21214 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540)))))))

(declare-fun b!3396346 () Bool)

(declare-fun res!1374208 () Bool)

(assert (=> b!3396346 (=> (not res!1374208) (not e!2108287))))

(get-info :version)

(assert (=> b!3396346 (= res!1374208 (and (not ((_ is Nil!36956) tokens!494)) (not ((_ is Nil!36956) (t!265289 tokens!494)))))))

(declare-fun b!3396348 () Bool)

(declare-fun res!1374207 () Bool)

(assert (=> b!3396348 (=> (not res!1374207) (not e!2108287))))

(declare-fun rulesInvariant!4380 (LexerInterface!4983 List!37081) Bool)

(assert (=> b!3396348 (= res!1374207 (rulesInvariant!4380 thiss!18206 rules!2135))))

(assert (=> b!3396349 (= e!2108285 (and tp!1060158 tp!1060152))))

(declare-fun b!3396350 () Bool)

(declare-fun res!1374216 () Bool)

(assert (=> b!3396350 (=> (not res!1374216) (not e!2108287))))

(declare-fun sepAndNonSepRulesDisjointChars!1588 (List!37081 List!37081) Bool)

(assert (=> b!3396350 (= res!1374216 (sepAndNonSepRulesDisjointChars!1588 rules!2135 rules!2135))))

(declare-fun b!3396351 () Bool)

(assert (=> b!3396351 (= e!2108274 e!2108280)))

(declare-fun res!1374218 () Bool)

(assert (=> b!3396351 (=> res!1374218 e!2108280)))

(assert (=> b!3396351 (= res!1374218 (or (not (= lt!1154541 lt!1154540)) (not (= lt!1154545 lt!1154540))))))

(assert (=> b!3396351 (= lt!1154540 (list!13387 (charsOf!3408 (h!42376 tokens!494))))))

(declare-fun b!3396352 () Bool)

(declare-fun e!2108283 () Bool)

(assert (=> b!3396352 (= e!2108281 e!2108283)))

(declare-fun res!1374219 () Bool)

(assert (=> b!3396352 (=> res!1374219 e!2108283)))

(declare-fun lt!1154542 () List!37079)

(assert (=> b!3396352 (= res!1374219 (not (= lt!1154551 lt!1154542)))))

(assert (=> b!3396352 (= lt!1154542 (++!9051 (++!9051 lt!1154540 lt!1154543) lt!1154548))))

(declare-fun b!3396353 () Bool)

(declare-fun res!1374214 () Bool)

(assert (=> b!3396353 (=> (not res!1374214) (not e!2108287))))

(declare-fun rulesProduceEachTokenIndividually!1434 (LexerInterface!4983 List!37081 BalanceConc!21942) Bool)

(declare-fun seqFromList!3842 (List!37080) BalanceConc!21942)

(assert (=> b!3396353 (= res!1374214 (rulesProduceEachTokenIndividually!1434 thiss!18206 rules!2135 (seqFromList!3842 tokens!494)))))

(declare-fun tp!1060160 () Bool)

(declare-fun b!3396354 () Bool)

(declare-fun e!2108277 () Bool)

(assert (=> b!3396354 (= e!2108277 (and tp!1060160 (inv!50044 (tag!5978 (rule!7954 (h!42376 tokens!494)))) (inv!50047 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) e!2108291))))

(declare-fun b!3396355 () Bool)

(declare-fun e!2108275 () Bool)

(declare-fun tp!1060156 () Bool)

(assert (=> b!3396355 (= e!2108275 (and e!2108276 tp!1060156))))

(declare-fun b!3396356 () Bool)

(declare-fun res!1374202 () Bool)

(assert (=> b!3396356 (=> (not res!1374202) (not e!2108287))))

(declare-fun isEmpty!21215 (List!37081) Bool)

(assert (=> b!3396356 (= res!1374202 (not (isEmpty!21215 rules!2135)))))

(declare-fun b!3396357 () Bool)

(declare-fun res!1374209 () Bool)

(assert (=> b!3396357 (=> (not res!1374209) (not e!2108287))))

(declare-fun forall!7803 (List!37080 Int) Bool)

(assert (=> b!3396357 (= res!1374209 (forall!7803 tokens!494 lambda!120825))))

(declare-fun b!3396358 () Bool)

(assert (=> b!3396358 (= e!2108283 e!2108290)))

(declare-fun res!1374212 () Bool)

(assert (=> b!3396358 (=> res!1374212 e!2108290)))

(declare-fun lt!1154544 () List!37079)

(assert (=> b!3396358 (= res!1374212 (not (= lt!1154551 lt!1154544)))))

(assert (=> b!3396358 (= lt!1154542 lt!1154544)))

(assert (=> b!3396358 (= lt!1154544 (++!9051 lt!1154540 lt!1154546))))

(declare-fun lt!1154550 () Unit!52122)

(declare-fun lemmaConcatAssociativity!1894 (List!37079 List!37079 List!37079) Unit!52122)

(assert (=> b!3396358 (= lt!1154550 (lemmaConcatAssociativity!1894 lt!1154540 lt!1154543 lt!1154548))))

(declare-fun b!3396359 () Bool)

(declare-fun res!1374204 () Bool)

(assert (=> b!3396359 (=> (not res!1374204) (not e!2108287))))

(assert (=> b!3396359 (= res!1374204 (isSeparator!5394 (rule!7954 separatorToken!241)))))

(declare-fun b!3396360 () Bool)

(declare-fun res!1374206 () Bool)

(assert (=> b!3396360 (=> res!1374206 e!2108280)))

(assert (=> b!3396360 (= res!1374206 (not (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 (h!42376 tokens!494))))))

(declare-fun res!1374211 () Bool)

(assert (=> start!316918 (=> (not res!1374211) (not e!2108287))))

(assert (=> start!316918 (= res!1374211 ((_ is Lexer!4981) thiss!18206))))

(assert (=> start!316918 e!2108287))

(assert (=> start!316918 true))

(assert (=> start!316918 e!2108275))

(declare-fun e!2108292 () Bool)

(assert (=> start!316918 e!2108292))

(declare-fun inv!50048 (Token!10154) Bool)

(assert (=> start!316918 (and (inv!50048 separatorToken!241) e!2108289)))

(assert (=> b!3396347 (= e!2108294 (and tp!1060154 tp!1060155))))

(declare-fun e!2108279 () Bool)

(declare-fun tp!1060151 () Bool)

(declare-fun b!3396361 () Bool)

(assert (=> b!3396361 (= e!2108279 (and (inv!21 (value!174189 (h!42376 tokens!494))) e!2108277 tp!1060151))))

(declare-fun b!3396362 () Bool)

(declare-fun tp!1060162 () Bool)

(assert (=> b!3396362 (= e!2108292 (and (inv!50048 (h!42376 tokens!494)) e!2108279 tp!1060162))))

(assert (= (and start!316918 res!1374211) b!3396356))

(assert (= (and b!3396356 res!1374202) b!3396348))

(assert (= (and b!3396348 res!1374207) b!3396353))

(assert (= (and b!3396353 res!1374214) b!3396343))

(assert (= (and b!3396343 res!1374210) b!3396359))

(assert (= (and b!3396359 res!1374204) b!3396357))

(assert (= (and b!3396357 res!1374209) b!3396350))

(assert (= (and b!3396350 res!1374216) b!3396346))

(assert (= (and b!3396346 res!1374208) b!3396344))

(assert (= (and b!3396344 (not res!1374217)) b!3396351))

(assert (= (and b!3396351 (not res!1374218)) b!3396360))

(assert (= (and b!3396360 (not res!1374206)) b!3396345))

(assert (= (and b!3396345 (not res!1374213)) b!3396340))

(assert (= (and b!3396340 (not res!1374203)) b!3396337))

(assert (= (and b!3396337 (not res!1374205)) b!3396352))

(assert (= (and b!3396352 (not res!1374219)) b!3396358))

(assert (= (and b!3396358 (not res!1374212)) b!3396335))

(assert (= (and b!3396335 (not res!1374215)) b!3396336))

(assert (= b!3396338 b!3396347))

(assert (= b!3396355 b!3396338))

(assert (= (and start!316918 ((_ is Cons!36957) rules!2135)) b!3396355))

(assert (= b!3396354 b!3396341))

(assert (= b!3396361 b!3396354))

(assert (= b!3396362 b!3396361))

(assert (= (and start!316918 ((_ is Cons!36956) tokens!494)) b!3396362))

(assert (= b!3396339 b!3396349))

(assert (= b!3396342 b!3396339))

(assert (= start!316918 b!3396342))

(declare-fun m!3766493 () Bool)

(assert (=> b!3396360 m!3766493))

(declare-fun m!3766495 () Bool)

(assert (=> b!3396356 m!3766495))

(declare-fun m!3766497 () Bool)

(assert (=> b!3396357 m!3766497))

(declare-fun m!3766499 () Bool)

(assert (=> b!3396361 m!3766499))

(declare-fun m!3766501 () Bool)

(assert (=> b!3396335 m!3766501))

(declare-fun m!3766503 () Bool)

(assert (=> b!3396342 m!3766503))

(declare-fun m!3766505 () Bool)

(assert (=> b!3396362 m!3766505))

(declare-fun m!3766507 () Bool)

(assert (=> b!3396351 m!3766507))

(assert (=> b!3396351 m!3766507))

(declare-fun m!3766509 () Bool)

(assert (=> b!3396351 m!3766509))

(declare-fun m!3766511 () Bool)

(assert (=> b!3396348 m!3766511))

(declare-fun m!3766513 () Bool)

(assert (=> start!316918 m!3766513))

(declare-fun m!3766515 () Bool)

(assert (=> b!3396339 m!3766515))

(declare-fun m!3766517 () Bool)

(assert (=> b!3396339 m!3766517))

(declare-fun m!3766519 () Bool)

(assert (=> b!3396350 m!3766519))

(declare-fun m!3766521 () Bool)

(assert (=> b!3396354 m!3766521))

(declare-fun m!3766523 () Bool)

(assert (=> b!3396354 m!3766523))

(declare-fun m!3766525 () Bool)

(assert (=> b!3396344 m!3766525))

(declare-fun m!3766527 () Bool)

(assert (=> b!3396344 m!3766527))

(declare-fun m!3766529 () Bool)

(assert (=> b!3396344 m!3766529))

(declare-fun m!3766531 () Bool)

(assert (=> b!3396344 m!3766531))

(declare-fun m!3766533 () Bool)

(assert (=> b!3396344 m!3766533))

(declare-fun m!3766535 () Bool)

(assert (=> b!3396338 m!3766535))

(declare-fun m!3766537 () Bool)

(assert (=> b!3396338 m!3766537))

(declare-fun m!3766539 () Bool)

(assert (=> b!3396340 m!3766539))

(declare-fun m!3766541 () Bool)

(assert (=> b!3396340 m!3766541))

(declare-fun m!3766543 () Bool)

(assert (=> b!3396358 m!3766543))

(declare-fun m!3766545 () Bool)

(assert (=> b!3396358 m!3766545))

(declare-fun m!3766547 () Bool)

(assert (=> b!3396343 m!3766547))

(declare-fun m!3766549 () Bool)

(assert (=> b!3396345 m!3766549))

(assert (=> b!3396345 m!3766549))

(declare-fun m!3766551 () Bool)

(assert (=> b!3396345 m!3766551))

(declare-fun m!3766553 () Bool)

(assert (=> b!3396345 m!3766553))

(declare-fun m!3766555 () Bool)

(assert (=> b!3396353 m!3766555))

(assert (=> b!3396353 m!3766555))

(declare-fun m!3766557 () Bool)

(assert (=> b!3396353 m!3766557))

(declare-fun m!3766559 () Bool)

(assert (=> b!3396336 m!3766559))

(declare-fun m!3766561 () Bool)

(assert (=> b!3396337 m!3766561))

(declare-fun m!3766563 () Bool)

(assert (=> b!3396337 m!3766563))

(declare-fun m!3766565 () Bool)

(assert (=> b!3396337 m!3766565))

(declare-fun m!3766567 () Bool)

(assert (=> b!3396337 m!3766567))

(assert (=> b!3396337 m!3766563))

(declare-fun m!3766569 () Bool)

(assert (=> b!3396337 m!3766569))

(declare-fun m!3766571 () Bool)

(assert (=> b!3396337 m!3766571))

(declare-fun m!3766573 () Bool)

(assert (=> b!3396337 m!3766573))

(declare-fun m!3766575 () Bool)

(assert (=> b!3396337 m!3766575))

(assert (=> b!3396337 m!3766569))

(declare-fun m!3766577 () Bool)

(assert (=> b!3396337 m!3766577))

(assert (=> b!3396337 m!3766577))

(assert (=> b!3396337 m!3766571))

(declare-fun m!3766579 () Bool)

(assert (=> b!3396337 m!3766579))

(assert (=> b!3396337 m!3766573))

(declare-fun m!3766581 () Bool)

(assert (=> b!3396352 m!3766581))

(assert (=> b!3396352 m!3766581))

(declare-fun m!3766583 () Bool)

(assert (=> b!3396352 m!3766583))

(check-sat (not b!3396360) (not b!3396352) (not b_next!89611) b_and!236773 (not b!3396343) (not start!316918) (not b!3396337) (not b!3396336) (not b!3396353) (not b!3396351) (not b!3396344) (not b!3396338) (not b!3396356) (not b!3396357) (not b!3396348) (not b_next!89609) (not b!3396355) (not b!3396358) (not b!3396342) (not b_next!89603) b_and!236765 (not b_next!89607) b_and!236771 (not b_next!89605) b_and!236763 b_and!236769 (not b!3396350) (not b!3396340) (not b!3396354) (not b!3396345) b_and!236767 (not b!3396339) (not b!3396362) (not b_next!89601) (not b!3396361) (not b!3396335))
(check-sat (not b_next!89609) (not b_next!89611) b_and!236773 b_and!236767 (not b_next!89601) (not b_next!89603) b_and!236765 (not b_next!89607) b_and!236771 (not b_next!89605) b_and!236763 b_and!236769)
(get-model)

(declare-fun b!3396373 () Bool)

(declare-fun res!1374236 () Bool)

(declare-fun e!2108299 () Bool)

(assert (=> b!3396373 (=> (not res!1374236) (not e!2108299))))

(declare-fun lt!1154555 () List!37079)

(declare-fun size!27973 (List!37079) Int)

(assert (=> b!3396373 (= res!1374236 (= (size!27973 lt!1154555) (+ (size!27973 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) (size!27973 lt!1154543))))))

(declare-fun b!3396374 () Bool)

(assert (=> b!3396374 (= e!2108299 (or (not (= lt!1154543 Nil!36955)) (= lt!1154555 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))))))

(declare-fun b!3396372 () Bool)

(declare-fun e!2108300 () List!37079)

(assert (=> b!3396372 (= e!2108300 (Cons!36955 (h!42375 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) (++!9051 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) lt!1154543)))))

(declare-fun b!3396371 () Bool)

(assert (=> b!3396371 (= e!2108300 lt!1154543)))

(declare-fun d!965346 () Bool)

(assert (=> d!965346 e!2108299))

(declare-fun res!1374235 () Bool)

(assert (=> d!965346 (=> (not res!1374235) (not e!2108299))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5108 (List!37079) (InoxSet C!20492))

(assert (=> d!965346 (= res!1374235 (= (content!5108 lt!1154555) ((_ map or) (content!5108 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) (content!5108 lt!1154543))))))

(assert (=> d!965346 (= lt!1154555 e!2108300)))

(declare-fun c!578885 () Bool)

(assert (=> d!965346 (= c!578885 ((_ is Nil!36955) (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))

(assert (=> d!965346 (= (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543) lt!1154555)))

(assert (= (and d!965346 c!578885) b!3396371))

(assert (= (and d!965346 (not c!578885)) b!3396372))

(assert (= (and d!965346 res!1374235) b!3396373))

(assert (= (and b!3396373 res!1374236) b!3396374))

(declare-fun m!3766585 () Bool)

(assert (=> b!3396373 m!3766585))

(assert (=> b!3396373 m!3766569))

(declare-fun m!3766587 () Bool)

(assert (=> b!3396373 m!3766587))

(declare-fun m!3766589 () Bool)

(assert (=> b!3396373 m!3766589))

(declare-fun m!3766591 () Bool)

(assert (=> b!3396372 m!3766591))

(declare-fun m!3766593 () Bool)

(assert (=> d!965346 m!3766593))

(assert (=> d!965346 m!3766569))

(declare-fun m!3766595 () Bool)

(assert (=> d!965346 m!3766595))

(declare-fun m!3766597 () Bool)

(assert (=> d!965346 m!3766597))

(assert (=> b!3396337 d!965346))

(declare-fun d!965348 () Bool)

(declare-fun c!578888 () Bool)

(assert (=> d!965348 (= c!578888 ((_ is Cons!36956) tokens!494))))

(declare-fun e!2108303 () List!37079)

(assert (=> d!965348 (= (printWithSeparatorTokenList!270 thiss!18206 tokens!494 separatorToken!241) e!2108303)))

(declare-fun b!3396379 () Bool)

(assert (=> b!3396379 (= e!2108303 (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241)))))

(declare-fun b!3396380 () Bool)

(assert (=> b!3396380 (= e!2108303 Nil!36955)))

(assert (= (and d!965348 c!578888) b!3396379))

(assert (= (and d!965348 (not c!578888)) b!3396380))

(assert (=> b!3396379 m!3766507))

(assert (=> b!3396379 m!3766509))

(assert (=> b!3396379 m!3766575))

(declare-fun m!3766599 () Bool)

(assert (=> b!3396379 m!3766599))

(assert (=> b!3396379 m!3766599))

(assert (=> b!3396379 m!3766567))

(declare-fun m!3766601 () Bool)

(assert (=> b!3396379 m!3766601))

(assert (=> b!3396379 m!3766573))

(assert (=> b!3396379 m!3766575))

(assert (=> b!3396379 m!3766567))

(assert (=> b!3396379 m!3766507))

(assert (=> b!3396379 m!3766509))

(assert (=> b!3396379 m!3766573))

(assert (=> b!3396337 d!965348))

(declare-fun b!3396383 () Bool)

(declare-fun res!1374238 () Bool)

(declare-fun e!2108304 () Bool)

(assert (=> b!3396383 (=> (not res!1374238) (not e!2108304))))

(declare-fun lt!1154556 () List!37079)

(assert (=> b!3396383 (= res!1374238 (= (size!27973 lt!1154556) (+ (size!27973 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)) (size!27973 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(declare-fun b!3396384 () Bool)

(assert (=> b!3396384 (= e!2108304 (or (not (= (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241) Nil!36955)) (= lt!1154556 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543))))))

(declare-fun e!2108305 () List!37079)

(declare-fun b!3396382 () Bool)

(assert (=> b!3396382 (= e!2108305 (Cons!36955 (h!42375 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)) (++!9051 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241))))))

(declare-fun b!3396381 () Bool)

(assert (=> b!3396381 (= e!2108305 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241))))

(declare-fun d!965350 () Bool)

(assert (=> d!965350 e!2108304))

(declare-fun res!1374237 () Bool)

(assert (=> d!965350 (=> (not res!1374237) (not e!2108304))))

(assert (=> d!965350 (= res!1374237 (= (content!5108 lt!1154556) ((_ map or) (content!5108 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)) (content!5108 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(assert (=> d!965350 (= lt!1154556 e!2108305)))

(declare-fun c!578889 () Bool)

(assert (=> d!965350 (= c!578889 ((_ is Nil!36955) (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)))))

(assert (=> d!965350 (= (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)) lt!1154556)))

(assert (= (and d!965350 c!578889) b!3396381))

(assert (= (and d!965350 (not c!578889)) b!3396382))

(assert (= (and d!965350 res!1374237) b!3396383))

(assert (= (and b!3396383 res!1374238) b!3396384))

(declare-fun m!3766603 () Bool)

(assert (=> b!3396383 m!3766603))

(assert (=> b!3396383 m!3766577))

(declare-fun m!3766605 () Bool)

(assert (=> b!3396383 m!3766605))

(assert (=> b!3396383 m!3766571))

(declare-fun m!3766607 () Bool)

(assert (=> b!3396383 m!3766607))

(assert (=> b!3396382 m!3766571))

(declare-fun m!3766609 () Bool)

(assert (=> b!3396382 m!3766609))

(declare-fun m!3766611 () Bool)

(assert (=> d!965350 m!3766611))

(assert (=> d!965350 m!3766577))

(declare-fun m!3766613 () Bool)

(assert (=> d!965350 m!3766613))

(assert (=> d!965350 m!3766571))

(declare-fun m!3766615 () Bool)

(assert (=> d!965350 m!3766615))

(assert (=> b!3396337 d!965350))

(declare-fun d!965352 () Bool)

(declare-fun lt!1154565 () BalanceConc!21940)

(assert (=> d!965352 (= (list!13387 lt!1154565) (originalCharacters!6108 separatorToken!241))))

(declare-fun dynLambda!15410 (Int TokenValue!5624) BalanceConc!21940)

(assert (=> d!965352 (= lt!1154565 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))))

(assert (=> d!965352 (= (charsOf!3408 separatorToken!241) lt!1154565)))

(declare-fun b_lambda!96707 () Bool)

(assert (=> (not b_lambda!96707) (not d!965352)))

(declare-fun t!265293 () Bool)

(declare-fun tb!181819 () Bool)

(assert (=> (and b!3396341 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241)))) t!265293) tb!181819))

(declare-fun b!3396398 () Bool)

(declare-fun e!2108314 () Bool)

(declare-fun tp!1060165 () Bool)

(declare-fun inv!50051 (Conc!11163) Bool)

(assert (=> b!3396398 (= e!2108314 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))) tp!1060165))))

(declare-fun result!225400 () Bool)

(declare-fun inv!50052 (BalanceConc!21940) Bool)

(assert (=> tb!181819 (= result!225400 (and (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))) e!2108314))))

(assert (= tb!181819 b!3396398))

(declare-fun m!3766633 () Bool)

(assert (=> b!3396398 m!3766633))

(declare-fun m!3766635 () Bool)

(assert (=> tb!181819 m!3766635))

(assert (=> d!965352 t!265293))

(declare-fun b_and!236775 () Bool)

(assert (= b_and!236765 (and (=> t!265293 result!225400) b_and!236775)))

(declare-fun t!265295 () Bool)

(declare-fun tb!181821 () Bool)

(assert (=> (and b!3396347 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241)))) t!265295) tb!181821))

(declare-fun result!225404 () Bool)

(assert (= result!225404 result!225400))

(assert (=> d!965352 t!265295))

(declare-fun b_and!236777 () Bool)

(assert (= b_and!236769 (and (=> t!265295 result!225404) b_and!236777)))

(declare-fun t!265297 () Bool)

(declare-fun tb!181823 () Bool)

(assert (=> (and b!3396349 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241)))) t!265297) tb!181823))

(declare-fun result!225406 () Bool)

(assert (= result!225406 result!225400))

(assert (=> d!965352 t!265297))

(declare-fun b_and!236779 () Bool)

(assert (= b_and!236773 (and (=> t!265297 result!225406) b_and!236779)))

(declare-fun m!3766637 () Bool)

(assert (=> d!965352 m!3766637))

(declare-fun m!3766639 () Bool)

(assert (=> d!965352 m!3766639))

(assert (=> b!3396337 d!965352))

(declare-fun d!965356 () Bool)

(declare-fun list!13390 (Conc!11163) List!37079)

(assert (=> d!965356 (= (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13390 (c!578881 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))

(declare-fun bs!555834 () Bool)

(assert (= bs!555834 d!965356))

(declare-fun m!3766641 () Bool)

(assert (=> bs!555834 m!3766641))

(assert (=> b!3396337 d!965356))

(declare-fun b!3396401 () Bool)

(declare-fun res!1374249 () Bool)

(declare-fun e!2108315 () Bool)

(assert (=> b!3396401 (=> (not res!1374249) (not e!2108315))))

(declare-fun lt!1154566 () List!37079)

(assert (=> b!3396401 (= res!1374249 (= (size!27973 lt!1154566) (+ (size!27973 lt!1154543) (size!27973 lt!1154548))))))

(declare-fun b!3396402 () Bool)

(assert (=> b!3396402 (= e!2108315 (or (not (= lt!1154548 Nil!36955)) (= lt!1154566 lt!1154543)))))

(declare-fun b!3396400 () Bool)

(declare-fun e!2108316 () List!37079)

(assert (=> b!3396400 (= e!2108316 (Cons!36955 (h!42375 lt!1154543) (++!9051 (t!265288 lt!1154543) lt!1154548)))))

(declare-fun b!3396399 () Bool)

(assert (=> b!3396399 (= e!2108316 lt!1154548)))

(declare-fun d!965358 () Bool)

(assert (=> d!965358 e!2108315))

(declare-fun res!1374248 () Bool)

(assert (=> d!965358 (=> (not res!1374248) (not e!2108315))))

(assert (=> d!965358 (= res!1374248 (= (content!5108 lt!1154566) ((_ map or) (content!5108 lt!1154543) (content!5108 lt!1154548))))))

(assert (=> d!965358 (= lt!1154566 e!2108316)))

(declare-fun c!578890 () Bool)

(assert (=> d!965358 (= c!578890 ((_ is Nil!36955) lt!1154543))))

(assert (=> d!965358 (= (++!9051 lt!1154543 lt!1154548) lt!1154566)))

(assert (= (and d!965358 c!578890) b!3396399))

(assert (= (and d!965358 (not c!578890)) b!3396400))

(assert (= (and d!965358 res!1374248) b!3396401))

(assert (= (and b!3396401 res!1374249) b!3396402))

(declare-fun m!3766643 () Bool)

(assert (=> b!3396401 m!3766643))

(assert (=> b!3396401 m!3766589))

(declare-fun m!3766645 () Bool)

(assert (=> b!3396401 m!3766645))

(declare-fun m!3766647 () Bool)

(assert (=> b!3396400 m!3766647))

(declare-fun m!3766649 () Bool)

(assert (=> d!965358 m!3766649))

(assert (=> d!965358 m!3766597))

(declare-fun m!3766651 () Bool)

(assert (=> d!965358 m!3766651))

(assert (=> b!3396337 d!965358))

(declare-fun d!965360 () Bool)

(declare-fun c!578891 () Bool)

(assert (=> d!965360 (= c!578891 ((_ is Cons!36956) (t!265289 (t!265289 tokens!494))))))

(declare-fun e!2108317 () List!37079)

(assert (=> d!965360 (= (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241) e!2108317)))

(declare-fun b!3396403 () Bool)

(assert (=> b!3396403 (= e!2108317 (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 tokens!494))) separatorToken!241)))))

(declare-fun b!3396404 () Bool)

(assert (=> b!3396404 (= e!2108317 Nil!36955)))

(assert (= (and d!965360 c!578891) b!3396403))

(assert (= (and d!965360 (not c!578891)) b!3396404))

(declare-fun m!3766653 () Bool)

(assert (=> b!3396403 m!3766653))

(declare-fun m!3766655 () Bool)

(assert (=> b!3396403 m!3766655))

(assert (=> b!3396403 m!3766575))

(declare-fun m!3766657 () Bool)

(assert (=> b!3396403 m!3766657))

(assert (=> b!3396403 m!3766657))

(declare-fun m!3766659 () Bool)

(assert (=> b!3396403 m!3766659))

(declare-fun m!3766661 () Bool)

(assert (=> b!3396403 m!3766661))

(assert (=> b!3396403 m!3766573))

(assert (=> b!3396403 m!3766575))

(assert (=> b!3396403 m!3766659))

(assert (=> b!3396403 m!3766653))

(assert (=> b!3396403 m!3766655))

(assert (=> b!3396403 m!3766573))

(assert (=> b!3396337 d!965360))

(declare-fun d!965362 () Bool)

(declare-fun c!578892 () Bool)

(assert (=> d!965362 (= c!578892 ((_ is Cons!36956) (t!265289 tokens!494)))))

(declare-fun e!2108318 () List!37079)

(assert (=> d!965362 (= (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241) e!2108318)))

(declare-fun b!3396405 () Bool)

(assert (=> b!3396405 (= e!2108318 (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))

(declare-fun b!3396406 () Bool)

(assert (=> b!3396406 (= e!2108318 Nil!36955)))

(assert (= (and d!965362 c!578892) b!3396405))

(assert (= (and d!965362 (not c!578892)) b!3396406))

(assert (=> b!3396405 m!3766563))

(assert (=> b!3396405 m!3766569))

(assert (=> b!3396405 m!3766575))

(declare-fun m!3766663 () Bool)

(assert (=> b!3396405 m!3766663))

(assert (=> b!3396405 m!3766663))

(assert (=> b!3396405 m!3766571))

(declare-fun m!3766665 () Bool)

(assert (=> b!3396405 m!3766665))

(assert (=> b!3396405 m!3766573))

(assert (=> b!3396405 m!3766575))

(assert (=> b!3396405 m!3766571))

(assert (=> b!3396405 m!3766563))

(assert (=> b!3396405 m!3766569))

(assert (=> b!3396405 m!3766573))

(assert (=> b!3396337 d!965362))

(declare-fun d!965364 () Bool)

(assert (=> d!965364 (= (list!13387 (charsOf!3408 separatorToken!241)) (list!13390 (c!578881 (charsOf!3408 separatorToken!241))))))

(declare-fun bs!555835 () Bool)

(assert (= bs!555835 d!965364))

(declare-fun m!3766667 () Bool)

(assert (=> bs!555835 m!3766667))

(assert (=> b!3396337 d!965364))

(declare-fun d!965366 () Bool)

(declare-fun lt!1154567 () BalanceConc!21940)

(assert (=> d!965366 (= (list!13387 lt!1154567) (originalCharacters!6108 (h!42376 (t!265289 tokens!494))))))

(assert (=> d!965366 (= lt!1154567 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))))

(assert (=> d!965366 (= (charsOf!3408 (h!42376 (t!265289 tokens!494))) lt!1154567)))

(declare-fun b_lambda!96709 () Bool)

(assert (=> (not b_lambda!96709) (not d!965366)))

(declare-fun t!265299 () Bool)

(declare-fun tb!181825 () Bool)

(assert (=> (and b!3396341 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) t!265299) tb!181825))

(declare-fun b!3396407 () Bool)

(declare-fun e!2108319 () Bool)

(declare-fun tp!1060166 () Bool)

(assert (=> b!3396407 (= e!2108319 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))) tp!1060166))))

(declare-fun result!225408 () Bool)

(assert (=> tb!181825 (= result!225408 (and (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494))))) e!2108319))))

(assert (= tb!181825 b!3396407))

(declare-fun m!3766669 () Bool)

(assert (=> b!3396407 m!3766669))

(declare-fun m!3766671 () Bool)

(assert (=> tb!181825 m!3766671))

(assert (=> d!965366 t!265299))

(declare-fun b_and!236781 () Bool)

(assert (= b_and!236775 (and (=> t!265299 result!225408) b_and!236781)))

(declare-fun tb!181827 () Bool)

(declare-fun t!265301 () Bool)

(assert (=> (and b!3396347 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) t!265301) tb!181827))

(declare-fun result!225410 () Bool)

(assert (= result!225410 result!225408))

(assert (=> d!965366 t!265301))

(declare-fun b_and!236783 () Bool)

(assert (= b_and!236777 (and (=> t!265301 result!225410) b_and!236783)))

(declare-fun tb!181829 () Bool)

(declare-fun t!265303 () Bool)

(assert (=> (and b!3396349 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) t!265303) tb!181829))

(declare-fun result!225412 () Bool)

(assert (= result!225412 result!225408))

(assert (=> d!965366 t!265303))

(declare-fun b_and!236785 () Bool)

(assert (= b_and!236779 (and (=> t!265303 result!225412) b_and!236785)))

(declare-fun m!3766673 () Bool)

(assert (=> d!965366 m!3766673))

(declare-fun m!3766675 () Bool)

(assert (=> d!965366 m!3766675))

(assert (=> b!3396337 d!965366))

(declare-fun b!3396410 () Bool)

(declare-fun res!1374251 () Bool)

(declare-fun e!2108320 () Bool)

(assert (=> b!3396410 (=> (not res!1374251) (not e!2108320))))

(declare-fun lt!1154568 () List!37079)

(assert (=> b!3396410 (= res!1374251 (= (size!27973 lt!1154568) (+ (size!27973 lt!1154540) (size!27973 lt!1154546))))))

(declare-fun b!3396411 () Bool)

(assert (=> b!3396411 (= e!2108320 (or (not (= lt!1154546 Nil!36955)) (= lt!1154568 lt!1154540)))))

(declare-fun b!3396409 () Bool)

(declare-fun e!2108321 () List!37079)

(assert (=> b!3396409 (= e!2108321 (Cons!36955 (h!42375 lt!1154540) (++!9051 (t!265288 lt!1154540) lt!1154546)))))

(declare-fun b!3396408 () Bool)

(assert (=> b!3396408 (= e!2108321 lt!1154546)))

(declare-fun d!965368 () Bool)

(assert (=> d!965368 e!2108320))

(declare-fun res!1374250 () Bool)

(assert (=> d!965368 (=> (not res!1374250) (not e!2108320))))

(assert (=> d!965368 (= res!1374250 (= (content!5108 lt!1154568) ((_ map or) (content!5108 lt!1154540) (content!5108 lt!1154546))))))

(assert (=> d!965368 (= lt!1154568 e!2108321)))

(declare-fun c!578893 () Bool)

(assert (=> d!965368 (= c!578893 ((_ is Nil!36955) lt!1154540))))

(assert (=> d!965368 (= (++!9051 lt!1154540 lt!1154546) lt!1154568)))

(assert (= (and d!965368 c!578893) b!3396408))

(assert (= (and d!965368 (not c!578893)) b!3396409))

(assert (= (and d!965368 res!1374250) b!3396410))

(assert (= (and b!3396410 res!1374251) b!3396411))

(declare-fun m!3766677 () Bool)

(assert (=> b!3396410 m!3766677))

(declare-fun m!3766679 () Bool)

(assert (=> b!3396410 m!3766679))

(declare-fun m!3766681 () Bool)

(assert (=> b!3396410 m!3766681))

(declare-fun m!3766683 () Bool)

(assert (=> b!3396409 m!3766683))

(declare-fun m!3766685 () Bool)

(assert (=> d!965368 m!3766685))

(declare-fun m!3766687 () Bool)

(assert (=> d!965368 m!3766687))

(declare-fun m!3766689 () Bool)

(assert (=> d!965368 m!3766689))

(assert (=> b!3396358 d!965368))

(declare-fun d!965370 () Bool)

(assert (=> d!965370 (= (++!9051 (++!9051 lt!1154540 lt!1154543) lt!1154548) (++!9051 lt!1154540 (++!9051 lt!1154543 lt!1154548)))))

(declare-fun lt!1154571 () Unit!52122)

(declare-fun choose!19695 (List!37079 List!37079 List!37079) Unit!52122)

(assert (=> d!965370 (= lt!1154571 (choose!19695 lt!1154540 lt!1154543 lt!1154548))))

(assert (=> d!965370 (= (lemmaConcatAssociativity!1894 lt!1154540 lt!1154543 lt!1154548) lt!1154571)))

(declare-fun bs!555836 () Bool)

(assert (= bs!555836 d!965370))

(assert (=> bs!555836 m!3766581))

(assert (=> bs!555836 m!3766583))

(declare-fun m!3766691 () Bool)

(assert (=> bs!555836 m!3766691))

(assert (=> bs!555836 m!3766561))

(declare-fun m!3766693 () Bool)

(assert (=> bs!555836 m!3766693))

(assert (=> bs!555836 m!3766561))

(assert (=> bs!555836 m!3766581))

(assert (=> b!3396358 d!965370))

(declare-fun d!965372 () Bool)

(declare-fun res!1374254 () Bool)

(declare-fun e!2108324 () Bool)

(assert (=> d!965372 (=> (not res!1374254) (not e!2108324))))

(declare-fun rulesValid!2013 (LexerInterface!4983 List!37081) Bool)

(assert (=> d!965372 (= res!1374254 (rulesValid!2013 thiss!18206 rules!2135))))

(assert (=> d!965372 (= (rulesInvariant!4380 thiss!18206 rules!2135) e!2108324)))

(declare-fun b!3396414 () Bool)

(declare-datatypes ((List!37083 0))(
  ( (Nil!36959) (Cons!36959 (h!42379 String!41453) (t!265368 List!37083)) )
))
(declare-fun noDuplicateTag!2009 (LexerInterface!4983 List!37081 List!37083) Bool)

(assert (=> b!3396414 (= e!2108324 (noDuplicateTag!2009 thiss!18206 rules!2135 Nil!36959))))

(assert (= (and d!965372 res!1374254) b!3396414))

(declare-fun m!3766695 () Bool)

(assert (=> d!965372 m!3766695))

(declare-fun m!3766697 () Bool)

(assert (=> b!3396414 m!3766697))

(assert (=> b!3396348 d!965372))

(declare-fun d!965374 () Bool)

(declare-fun res!1374259 () Bool)

(declare-fun e!2108329 () Bool)

(assert (=> d!965374 (=> res!1374259 e!2108329)))

(assert (=> d!965374 (= res!1374259 ((_ is Nil!36956) tokens!494))))

(assert (=> d!965374 (= (forall!7803 tokens!494 lambda!120825) e!2108329)))

(declare-fun b!3396419 () Bool)

(declare-fun e!2108330 () Bool)

(assert (=> b!3396419 (= e!2108329 e!2108330)))

(declare-fun res!1374260 () Bool)

(assert (=> b!3396419 (=> (not res!1374260) (not e!2108330))))

(declare-fun dynLambda!15411 (Int Token!10154) Bool)

(assert (=> b!3396419 (= res!1374260 (dynLambda!15411 lambda!120825 (h!42376 tokens!494)))))

(declare-fun b!3396420 () Bool)

(assert (=> b!3396420 (= e!2108330 (forall!7803 (t!265289 tokens!494) lambda!120825))))

(assert (= (and d!965374 (not res!1374259)) b!3396419))

(assert (= (and b!3396419 res!1374260) b!3396420))

(declare-fun b_lambda!96711 () Bool)

(assert (=> (not b_lambda!96711) (not b!3396419)))

(declare-fun m!3766699 () Bool)

(assert (=> b!3396419 m!3766699))

(declare-fun m!3766701 () Bool)

(assert (=> b!3396420 m!3766701))

(assert (=> b!3396357 d!965374))

(declare-fun d!965376 () Bool)

(declare-fun res!1374265 () Bool)

(declare-fun e!2108333 () Bool)

(assert (=> d!965376 (=> (not res!1374265) (not e!2108333))))

(declare-fun isEmpty!21220 (List!37079) Bool)

(assert (=> d!965376 (= res!1374265 (not (isEmpty!21220 (originalCharacters!6108 separatorToken!241))))))

(assert (=> d!965376 (= (inv!50048 separatorToken!241) e!2108333)))

(declare-fun b!3396425 () Bool)

(declare-fun res!1374266 () Bool)

(assert (=> b!3396425 (=> (not res!1374266) (not e!2108333))))

(assert (=> b!3396425 (= res!1374266 (= (originalCharacters!6108 separatorToken!241) (list!13387 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))))))

(declare-fun b!3396426 () Bool)

(assert (=> b!3396426 (= e!2108333 (= (size!27969 separatorToken!241) (size!27973 (originalCharacters!6108 separatorToken!241))))))

(assert (= (and d!965376 res!1374265) b!3396425))

(assert (= (and b!3396425 res!1374266) b!3396426))

(declare-fun b_lambda!96713 () Bool)

(assert (=> (not b_lambda!96713) (not b!3396425)))

(assert (=> b!3396425 t!265293))

(declare-fun b_and!236787 () Bool)

(assert (= b_and!236781 (and (=> t!265293 result!225400) b_and!236787)))

(assert (=> b!3396425 t!265295))

(declare-fun b_and!236789 () Bool)

(assert (= b_and!236783 (and (=> t!265295 result!225404) b_and!236789)))

(assert (=> b!3396425 t!265297))

(declare-fun b_and!236791 () Bool)

(assert (= b_and!236785 (and (=> t!265297 result!225406) b_and!236791)))

(declare-fun m!3766703 () Bool)

(assert (=> d!965376 m!3766703))

(assert (=> b!3396425 m!3766639))

(assert (=> b!3396425 m!3766639))

(declare-fun m!3766705 () Bool)

(assert (=> b!3396425 m!3766705))

(declare-fun m!3766707 () Bool)

(assert (=> b!3396426 m!3766707))

(assert (=> start!316918 d!965376))

(declare-fun bs!555843 () Bool)

(declare-fun d!965378 () Bool)

(assert (= bs!555843 (and d!965378 b!3396357)))

(declare-fun lambda!120833 () Int)

(assert (=> bs!555843 (not (= lambda!120833 lambda!120825))))

(declare-fun b!3396533 () Bool)

(declare-fun e!2108410 () Bool)

(assert (=> b!3396533 (= e!2108410 true)))

(declare-fun b!3396532 () Bool)

(declare-fun e!2108409 () Bool)

(assert (=> b!3396532 (= e!2108409 e!2108410)))

(declare-fun b!3396531 () Bool)

(declare-fun e!2108408 () Bool)

(assert (=> b!3396531 (= e!2108408 e!2108409)))

(assert (=> d!965378 e!2108408))

(assert (= b!3396532 b!3396533))

(assert (= b!3396531 b!3396532))

(assert (= (and d!965378 ((_ is Cons!36957) rules!2135)) b!3396531))

(declare-fun order!19501 () Int)

(declare-fun order!19503 () Int)

(declare-fun dynLambda!15412 (Int Int) Int)

(declare-fun dynLambda!15413 (Int Int) Int)

(assert (=> b!3396533 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15413 order!19503 lambda!120833))))

(declare-fun order!19505 () Int)

(declare-fun dynLambda!15414 (Int Int) Int)

(assert (=> b!3396533 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15413 order!19503 lambda!120833))))

(assert (=> d!965378 true))

(declare-fun lt!1154619 () Bool)

(assert (=> d!965378 (= lt!1154619 (forall!7803 tokens!494 lambda!120833))))

(declare-fun e!2108401 () Bool)

(assert (=> d!965378 (= lt!1154619 e!2108401)))

(declare-fun res!1374311 () Bool)

(assert (=> d!965378 (=> res!1374311 e!2108401)))

(assert (=> d!965378 (= res!1374311 (not ((_ is Cons!36956) tokens!494)))))

(assert (=> d!965378 (not (isEmpty!21215 rules!2135))))

(assert (=> d!965378 (= (rulesProduceEachTokenIndividuallyList!1825 thiss!18206 rules!2135 tokens!494) lt!1154619)))

(declare-fun b!3396521 () Bool)

(declare-fun e!2108400 () Bool)

(assert (=> b!3396521 (= e!2108401 e!2108400)))

(declare-fun res!1374310 () Bool)

(assert (=> b!3396521 (=> (not res!1374310) (not e!2108400))))

(assert (=> b!3396521 (= res!1374310 (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 (h!42376 tokens!494)))))

(declare-fun b!3396522 () Bool)

(assert (=> b!3396522 (= e!2108400 (rulesProduceEachTokenIndividuallyList!1825 thiss!18206 rules!2135 (t!265289 tokens!494)))))

(assert (= (and d!965378 (not res!1374311)) b!3396521))

(assert (= (and b!3396521 res!1374310) b!3396522))

(declare-fun m!3766893 () Bool)

(assert (=> d!965378 m!3766893))

(assert (=> d!965378 m!3766495))

(assert (=> b!3396521 m!3766493))

(declare-fun m!3766895 () Bool)

(assert (=> b!3396522 m!3766895))

(assert (=> b!3396336 d!965378))

(declare-fun b!3396546 () Bool)

(declare-fun e!2108418 () Bool)

(declare-fun e!2108417 () Bool)

(assert (=> b!3396546 (= e!2108418 e!2108417)))

(declare-fun c!578915 () Bool)

(assert (=> b!3396546 (= c!578915 ((_ is IntegerValue!16873) (value!174189 (h!42376 tokens!494))))))

(declare-fun b!3396547 () Bool)

(declare-fun inv!17 (TokenValue!5624) Bool)

(assert (=> b!3396547 (= e!2108417 (inv!17 (value!174189 (h!42376 tokens!494))))))

(declare-fun b!3396548 () Bool)

(declare-fun res!1374314 () Bool)

(declare-fun e!2108419 () Bool)

(assert (=> b!3396548 (=> res!1374314 e!2108419)))

(assert (=> b!3396548 (= res!1374314 (not ((_ is IntegerValue!16874) (value!174189 (h!42376 tokens!494)))))))

(assert (=> b!3396548 (= e!2108417 e!2108419)))

(declare-fun d!965432 () Bool)

(declare-fun c!578914 () Bool)

(assert (=> d!965432 (= c!578914 ((_ is IntegerValue!16872) (value!174189 (h!42376 tokens!494))))))

(assert (=> d!965432 (= (inv!21 (value!174189 (h!42376 tokens!494))) e!2108418)))

(declare-fun b!3396549 () Bool)

(declare-fun inv!16 (TokenValue!5624) Bool)

(assert (=> b!3396549 (= e!2108418 (inv!16 (value!174189 (h!42376 tokens!494))))))

(declare-fun b!3396550 () Bool)

(declare-fun inv!15 (TokenValue!5624) Bool)

(assert (=> b!3396550 (= e!2108419 (inv!15 (value!174189 (h!42376 tokens!494))))))

(assert (= (and d!965432 c!578914) b!3396549))

(assert (= (and d!965432 (not c!578914)) b!3396546))

(assert (= (and b!3396546 c!578915) b!3396547))

(assert (= (and b!3396546 (not c!578915)) b!3396548))

(assert (= (and b!3396548 (not res!1374314)) b!3396550))

(declare-fun m!3766897 () Bool)

(assert (=> b!3396547 m!3766897))

(declare-fun m!3766899 () Bool)

(assert (=> b!3396549 m!3766899))

(declare-fun m!3766901 () Bool)

(assert (=> b!3396550 m!3766901))

(assert (=> b!3396361 d!965432))

(declare-fun d!965434 () Bool)

(declare-fun res!1374319 () Bool)

(declare-fun e!2108424 () Bool)

(assert (=> d!965434 (=> res!1374319 e!2108424)))

(assert (=> d!965434 (= res!1374319 (not ((_ is Cons!36957) rules!2135)))))

(assert (=> d!965434 (= (sepAndNonSepRulesDisjointChars!1588 rules!2135 rules!2135) e!2108424)))

(declare-fun b!3396555 () Bool)

(declare-fun e!2108425 () Bool)

(assert (=> b!3396555 (= e!2108424 e!2108425)))

(declare-fun res!1374320 () Bool)

(assert (=> b!3396555 (=> (not res!1374320) (not e!2108425))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!689 (Rule!10588 List!37081) Bool)

(assert (=> b!3396555 (= res!1374320 (ruleDisjointCharsFromAllFromOtherType!689 (h!42377 rules!2135) rules!2135))))

(declare-fun b!3396556 () Bool)

(assert (=> b!3396556 (= e!2108425 (sepAndNonSepRulesDisjointChars!1588 rules!2135 (t!265290 rules!2135)))))

(assert (= (and d!965434 (not res!1374319)) b!3396555))

(assert (= (and b!3396555 res!1374320) b!3396556))

(declare-fun m!3766903 () Bool)

(assert (=> b!3396555 m!3766903))

(declare-fun m!3766905 () Bool)

(assert (=> b!3396556 m!3766905))

(assert (=> b!3396350 d!965434))

(declare-fun d!965436 () Bool)

(assert (=> d!965436 (= (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13390 (c!578881 (charsOf!3408 (h!42376 tokens!494)))))))

(declare-fun bs!555844 () Bool)

(assert (= bs!555844 d!965436))

(declare-fun m!3766907 () Bool)

(assert (=> bs!555844 m!3766907))

(assert (=> b!3396351 d!965436))

(declare-fun d!965438 () Bool)

(declare-fun lt!1154620 () BalanceConc!21940)

(assert (=> d!965438 (= (list!13387 lt!1154620) (originalCharacters!6108 (h!42376 tokens!494)))))

(assert (=> d!965438 (= lt!1154620 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))))

(assert (=> d!965438 (= (charsOf!3408 (h!42376 tokens!494)) lt!1154620)))

(declare-fun b_lambda!96725 () Bool)

(assert (=> (not b_lambda!96725) (not d!965438)))

(declare-fun t!265324 () Bool)

(declare-fun tb!181843 () Bool)

(assert (=> (and b!3396341 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) t!265324) tb!181843))

(declare-fun b!3396557 () Bool)

(declare-fun e!2108426 () Bool)

(declare-fun tp!1060171 () Bool)

(assert (=> b!3396557 (= e!2108426 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))) tp!1060171))))

(declare-fun result!225428 () Bool)

(assert (=> tb!181843 (= result!225428 (and (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))) e!2108426))))

(assert (= tb!181843 b!3396557))

(declare-fun m!3766909 () Bool)

(assert (=> b!3396557 m!3766909))

(declare-fun m!3766911 () Bool)

(assert (=> tb!181843 m!3766911))

(assert (=> d!965438 t!265324))

(declare-fun b_and!236805 () Bool)

(assert (= b_and!236787 (and (=> t!265324 result!225428) b_and!236805)))

(declare-fun tb!181845 () Bool)

(declare-fun t!265326 () Bool)

(assert (=> (and b!3396347 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) t!265326) tb!181845))

(declare-fun result!225430 () Bool)

(assert (= result!225430 result!225428))

(assert (=> d!965438 t!265326))

(declare-fun b_and!236807 () Bool)

(assert (= b_and!236789 (and (=> t!265326 result!225430) b_and!236807)))

(declare-fun tb!181847 () Bool)

(declare-fun t!265328 () Bool)

(assert (=> (and b!3396349 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) t!265328) tb!181847))

(declare-fun result!225432 () Bool)

(assert (= result!225432 result!225428))

(assert (=> d!965438 t!265328))

(declare-fun b_and!236809 () Bool)

(assert (= b_and!236791 (and (=> t!265328 result!225432) b_and!236809)))

(declare-fun m!3766913 () Bool)

(assert (=> d!965438 m!3766913))

(declare-fun m!3766915 () Bool)

(assert (=> d!965438 m!3766915))

(assert (=> b!3396351 d!965438))

(declare-fun d!965440 () Bool)

(assert (=> d!965440 (dynLambda!15411 lambda!120825 (h!42376 (t!265289 tokens!494)))))

(declare-fun lt!1154623 () Unit!52122)

(declare-fun choose!19696 (List!37080 Int Token!10154) Unit!52122)

(assert (=> d!965440 (= lt!1154623 (choose!19696 tokens!494 lambda!120825 (h!42376 (t!265289 tokens!494))))))

(declare-fun e!2108429 () Bool)

(assert (=> d!965440 e!2108429))

(declare-fun res!1374323 () Bool)

(assert (=> d!965440 (=> (not res!1374323) (not e!2108429))))

(assert (=> d!965440 (= res!1374323 (forall!7803 tokens!494 lambda!120825))))

(assert (=> d!965440 (= (forallContained!1341 tokens!494 lambda!120825 (h!42376 (t!265289 tokens!494))) lt!1154623)))

(declare-fun b!3396560 () Bool)

(assert (=> b!3396560 (= e!2108429 (contains!6785 tokens!494 (h!42376 (t!265289 tokens!494))))))

(assert (= (and d!965440 res!1374323) b!3396560))

(declare-fun b_lambda!96727 () Bool)

(assert (=> (not b_lambda!96727) (not d!965440)))

(declare-fun m!3766917 () Bool)

(assert (=> d!965440 m!3766917))

(declare-fun m!3766919 () Bool)

(assert (=> d!965440 m!3766919))

(assert (=> d!965440 m!3766497))

(declare-fun m!3766921 () Bool)

(assert (=> b!3396560 m!3766921))

(assert (=> b!3396340 d!965440))

(declare-fun d!965442 () Bool)

(assert (=> d!965442 (dynLambda!15411 lambda!120825 (h!42376 tokens!494))))

(declare-fun lt!1154624 () Unit!52122)

(assert (=> d!965442 (= lt!1154624 (choose!19696 tokens!494 lambda!120825 (h!42376 tokens!494)))))

(declare-fun e!2108430 () Bool)

(assert (=> d!965442 e!2108430))

(declare-fun res!1374324 () Bool)

(assert (=> d!965442 (=> (not res!1374324) (not e!2108430))))

(assert (=> d!965442 (= res!1374324 (forall!7803 tokens!494 lambda!120825))))

(assert (=> d!965442 (= (forallContained!1341 tokens!494 lambda!120825 (h!42376 tokens!494)) lt!1154624)))

(declare-fun b!3396561 () Bool)

(assert (=> b!3396561 (= e!2108430 (contains!6785 tokens!494 (h!42376 tokens!494)))))

(assert (= (and d!965442 res!1374324) b!3396561))

(declare-fun b_lambda!96729 () Bool)

(assert (=> (not b_lambda!96729) (not d!965442)))

(assert (=> d!965442 m!3766699))

(declare-fun m!3766923 () Bool)

(assert (=> d!965442 m!3766923))

(assert (=> d!965442 m!3766497))

(assert (=> b!3396561 m!3766501))

(assert (=> b!3396340 d!965442))

(declare-fun d!965444 () Bool)

(assert (=> d!965444 (= (inv!50044 (tag!5978 (h!42377 rules!2135))) (= (mod (str.len (value!174163 (tag!5978 (h!42377 rules!2135)))) 2) 0))))

(assert (=> b!3396338 d!965444))

(declare-fun d!965446 () Bool)

(declare-fun res!1374327 () Bool)

(declare-fun e!2108433 () Bool)

(assert (=> d!965446 (=> (not res!1374327) (not e!2108433))))

(declare-fun semiInverseModEq!2253 (Int Int) Bool)

(assert (=> d!965446 (= res!1374327 (semiInverseModEq!2253 (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toValue!7590 (transformation!5394 (h!42377 rules!2135)))))))

(assert (=> d!965446 (= (inv!50047 (transformation!5394 (h!42377 rules!2135))) e!2108433)))

(declare-fun b!3396564 () Bool)

(declare-fun equivClasses!2152 (Int Int) Bool)

(assert (=> b!3396564 (= e!2108433 (equivClasses!2152 (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toValue!7590 (transformation!5394 (h!42377 rules!2135)))))))

(assert (= (and d!965446 res!1374327) b!3396564))

(declare-fun m!3766925 () Bool)

(assert (=> d!965446 m!3766925))

(declare-fun m!3766927 () Bool)

(assert (=> b!3396564 m!3766927))

(assert (=> b!3396338 d!965446))

(declare-fun d!965448 () Bool)

(assert (=> d!965448 (= (inv!50044 (tag!5978 (rule!7954 separatorToken!241))) (= (mod (str.len (value!174163 (tag!5978 (rule!7954 separatorToken!241)))) 2) 0))))

(assert (=> b!3396339 d!965448))

(declare-fun d!965450 () Bool)

(declare-fun res!1374328 () Bool)

(declare-fun e!2108434 () Bool)

(assert (=> d!965450 (=> (not res!1374328) (not e!2108434))))

(assert (=> d!965450 (= res!1374328 (semiInverseModEq!2253 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241)))))))

(assert (=> d!965450 (= (inv!50047 (transformation!5394 (rule!7954 separatorToken!241))) e!2108434)))

(declare-fun b!3396565 () Bool)

(assert (=> b!3396565 (= e!2108434 (equivClasses!2152 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241)))))))

(assert (= (and d!965450 res!1374328) b!3396565))

(declare-fun m!3766929 () Bool)

(assert (=> d!965450 m!3766929))

(declare-fun m!3766931 () Bool)

(assert (=> b!3396565 m!3766931))

(assert (=> b!3396339 d!965450))

(declare-fun d!965452 () Bool)

(declare-fun lt!1154640 () Bool)

(declare-fun e!2108466 () Bool)

(assert (=> d!965452 (= lt!1154640 e!2108466)))

(declare-fun res!1374362 () Bool)

(assert (=> d!965452 (=> (not res!1374362) (not e!2108466))))

(declare-fun list!13391 (BalanceConc!21942) List!37080)

(assert (=> d!965452 (= res!1374362 (= (list!13391 (_1!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494)))))) (list!13391 (singletonSeq!2490 (h!42376 tokens!494)))))))

(declare-fun e!2108467 () Bool)

(assert (=> d!965452 (= lt!1154640 e!2108467)))

(declare-fun res!1374364 () Bool)

(assert (=> d!965452 (=> (not res!1374364) (not e!2108467))))

(declare-fun lt!1154639 () tuple2!36574)

(declare-fun size!27974 (BalanceConc!21942) Int)

(assert (=> d!965452 (= res!1374364 (= (size!27974 (_1!21421 lt!1154639)) 1))))

(assert (=> d!965452 (= lt!1154639 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494)))))))

(assert (=> d!965452 (not (isEmpty!21215 rules!2135))))

(assert (=> d!965452 (= (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 (h!42376 tokens!494)) lt!1154640)))

(declare-fun b!3396603 () Bool)

(declare-fun res!1374363 () Bool)

(assert (=> b!3396603 (=> (not res!1374363) (not e!2108467))))

(declare-fun apply!8618 (BalanceConc!21942 Int) Token!10154)

(assert (=> b!3396603 (= res!1374363 (= (apply!8618 (_1!21421 lt!1154639) 0) (h!42376 tokens!494)))))

(declare-fun b!3396604 () Bool)

(declare-fun isEmpty!21221 (BalanceConc!21940) Bool)

(assert (=> b!3396604 (= e!2108467 (isEmpty!21221 (_2!21421 lt!1154639)))))

(declare-fun b!3396605 () Bool)

(assert (=> b!3396605 (= e!2108466 (isEmpty!21221 (_2!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494)))))))))

(assert (= (and d!965452 res!1374364) b!3396603))

(assert (= (and b!3396603 res!1374363) b!3396604))

(assert (= (and d!965452 res!1374362) b!3396605))

(assert (=> d!965452 m!3766527))

(declare-fun m!3766979 () Bool)

(assert (=> d!965452 m!3766979))

(declare-fun m!3766981 () Bool)

(assert (=> d!965452 m!3766981))

(declare-fun m!3766983 () Bool)

(assert (=> d!965452 m!3766983))

(declare-fun m!3766985 () Bool)

(assert (=> d!965452 m!3766985))

(assert (=> d!965452 m!3766495))

(assert (=> d!965452 m!3766527))

(assert (=> d!965452 m!3766527))

(assert (=> d!965452 m!3766983))

(declare-fun m!3766987 () Bool)

(assert (=> d!965452 m!3766987))

(declare-fun m!3766989 () Bool)

(assert (=> b!3396603 m!3766989))

(declare-fun m!3766991 () Bool)

(assert (=> b!3396604 m!3766991))

(assert (=> b!3396605 m!3766527))

(assert (=> b!3396605 m!3766527))

(assert (=> b!3396605 m!3766983))

(assert (=> b!3396605 m!3766983))

(assert (=> b!3396605 m!3766985))

(declare-fun m!3766993 () Bool)

(assert (=> b!3396605 m!3766993))

(assert (=> b!3396360 d!965452))

(declare-fun bs!555853 () Bool)

(declare-fun d!965474 () Bool)

(assert (= bs!555853 (and d!965474 b!3396357)))

(declare-fun lambda!120841 () Int)

(assert (=> bs!555853 (not (= lambda!120841 lambda!120825))))

(declare-fun bs!555854 () Bool)

(assert (= bs!555854 (and d!965474 d!965378)))

(assert (=> bs!555854 (= lambda!120841 lambda!120833)))

(declare-fun b!3396711 () Bool)

(declare-fun e!2108539 () Bool)

(assert (=> b!3396711 (= e!2108539 true)))

(declare-fun b!3396710 () Bool)

(declare-fun e!2108538 () Bool)

(assert (=> b!3396710 (= e!2108538 e!2108539)))

(declare-fun b!3396709 () Bool)

(declare-fun e!2108537 () Bool)

(assert (=> b!3396709 (= e!2108537 e!2108538)))

(assert (=> d!965474 e!2108537))

(assert (= b!3396710 b!3396711))

(assert (= b!3396709 b!3396710))

(assert (= (and d!965474 ((_ is Cons!36957) rules!2135)) b!3396709))

(assert (=> b!3396711 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15413 order!19503 lambda!120841))))

(assert (=> b!3396711 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15413 order!19503 lambda!120841))))

(assert (=> d!965474 true))

(declare-fun e!2108536 () Bool)

(assert (=> d!965474 e!2108536))

(declare-fun res!1374386 () Bool)

(assert (=> d!965474 (=> (not res!1374386) (not e!2108536))))

(declare-fun lt!1154652 () Bool)

(assert (=> d!965474 (= res!1374386 (= lt!1154652 (forall!7803 (list!13391 (seqFromList!3842 tokens!494)) lambda!120841)))))

(declare-fun forall!7805 (BalanceConc!21942 Int) Bool)

(assert (=> d!965474 (= lt!1154652 (forall!7805 (seqFromList!3842 tokens!494) lambda!120841))))

(assert (=> d!965474 (not (isEmpty!21215 rules!2135))))

(assert (=> d!965474 (= (rulesProduceEachTokenIndividually!1434 thiss!18206 rules!2135 (seqFromList!3842 tokens!494)) lt!1154652)))

(declare-fun b!3396708 () Bool)

(assert (=> b!3396708 (= e!2108536 (= lt!1154652 (rulesProduceEachTokenIndividuallyList!1825 thiss!18206 rules!2135 (list!13391 (seqFromList!3842 tokens!494)))))))

(assert (= (and d!965474 res!1374386) b!3396708))

(assert (=> d!965474 m!3766555))

(declare-fun m!3767073 () Bool)

(assert (=> d!965474 m!3767073))

(assert (=> d!965474 m!3767073))

(declare-fun m!3767075 () Bool)

(assert (=> d!965474 m!3767075))

(assert (=> d!965474 m!3766555))

(declare-fun m!3767077 () Bool)

(assert (=> d!965474 m!3767077))

(assert (=> d!965474 m!3766495))

(assert (=> b!3396708 m!3766555))

(assert (=> b!3396708 m!3767073))

(assert (=> b!3396708 m!3767073))

(declare-fun m!3767079 () Bool)

(assert (=> b!3396708 m!3767079))

(assert (=> b!3396353 d!965474))

(declare-fun d!965494 () Bool)

(declare-fun fromListB!1722 (List!37080) BalanceConc!21942)

(assert (=> d!965494 (= (seqFromList!3842 tokens!494) (fromListB!1722 tokens!494))))

(declare-fun bs!555855 () Bool)

(assert (= bs!555855 d!965494))

(declare-fun m!3767081 () Bool)

(assert (=> bs!555855 m!3767081))

(assert (=> b!3396353 d!965494))

(declare-fun b!3396712 () Bool)

(declare-fun e!2108541 () Bool)

(declare-fun e!2108540 () Bool)

(assert (=> b!3396712 (= e!2108541 e!2108540)))

(declare-fun c!578931 () Bool)

(assert (=> b!3396712 (= c!578931 ((_ is IntegerValue!16873) (value!174189 separatorToken!241)))))

(declare-fun b!3396713 () Bool)

(assert (=> b!3396713 (= e!2108540 (inv!17 (value!174189 separatorToken!241)))))

(declare-fun b!3396714 () Bool)

(declare-fun res!1374387 () Bool)

(declare-fun e!2108542 () Bool)

(assert (=> b!3396714 (=> res!1374387 e!2108542)))

(assert (=> b!3396714 (= res!1374387 (not ((_ is IntegerValue!16874) (value!174189 separatorToken!241))))))

(assert (=> b!3396714 (= e!2108540 e!2108542)))

(declare-fun d!965496 () Bool)

(declare-fun c!578930 () Bool)

(assert (=> d!965496 (= c!578930 ((_ is IntegerValue!16872) (value!174189 separatorToken!241)))))

(assert (=> d!965496 (= (inv!21 (value!174189 separatorToken!241)) e!2108541)))

(declare-fun b!3396715 () Bool)

(assert (=> b!3396715 (= e!2108541 (inv!16 (value!174189 separatorToken!241)))))

(declare-fun b!3396716 () Bool)

(assert (=> b!3396716 (= e!2108542 (inv!15 (value!174189 separatorToken!241)))))

(assert (= (and d!965496 c!578930) b!3396715))

(assert (= (and d!965496 (not c!578930)) b!3396712))

(assert (= (and b!3396712 c!578931) b!3396713))

(assert (= (and b!3396712 (not c!578931)) b!3396714))

(assert (= (and b!3396714 (not res!1374387)) b!3396716))

(declare-fun m!3767083 () Bool)

(assert (=> b!3396713 m!3767083))

(declare-fun m!3767085 () Bool)

(assert (=> b!3396715 m!3767085))

(declare-fun m!3767087 () Bool)

(assert (=> b!3396716 m!3767087))

(assert (=> b!3396342 d!965496))

(declare-fun d!965498 () Bool)

(declare-fun lt!1154654 () Bool)

(declare-fun e!2108543 () Bool)

(assert (=> d!965498 (= lt!1154654 e!2108543)))

(declare-fun res!1374388 () Bool)

(assert (=> d!965498 (=> (not res!1374388) (not e!2108543))))

(assert (=> d!965498 (= res!1374388 (= (list!13391 (_1!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241))))) (list!13391 (singletonSeq!2490 separatorToken!241))))))

(declare-fun e!2108544 () Bool)

(assert (=> d!965498 (= lt!1154654 e!2108544)))

(declare-fun res!1374390 () Bool)

(assert (=> d!965498 (=> (not res!1374390) (not e!2108544))))

(declare-fun lt!1154653 () tuple2!36574)

(assert (=> d!965498 (= res!1374390 (= (size!27974 (_1!21421 lt!1154653)) 1))))

(assert (=> d!965498 (= lt!1154653 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241))))))

(assert (=> d!965498 (not (isEmpty!21215 rules!2135))))

(assert (=> d!965498 (= (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 separatorToken!241) lt!1154654)))

(declare-fun b!3396717 () Bool)

(declare-fun res!1374389 () Bool)

(assert (=> b!3396717 (=> (not res!1374389) (not e!2108544))))

(assert (=> b!3396717 (= res!1374389 (= (apply!8618 (_1!21421 lt!1154653) 0) separatorToken!241))))

(declare-fun b!3396718 () Bool)

(assert (=> b!3396718 (= e!2108544 (isEmpty!21221 (_2!21421 lt!1154653)))))

(declare-fun b!3396719 () Bool)

(assert (=> b!3396719 (= e!2108543 (isEmpty!21221 (_2!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241))))))))

(assert (= (and d!965498 res!1374390) b!3396717))

(assert (= (and b!3396717 res!1374389) b!3396718))

(assert (= (and d!965498 res!1374388) b!3396719))

(declare-fun m!3767089 () Bool)

(assert (=> d!965498 m!3767089))

(declare-fun m!3767091 () Bool)

(assert (=> d!965498 m!3767091))

(declare-fun m!3767093 () Bool)

(assert (=> d!965498 m!3767093))

(declare-fun m!3767095 () Bool)

(assert (=> d!965498 m!3767095))

(declare-fun m!3767097 () Bool)

(assert (=> d!965498 m!3767097))

(assert (=> d!965498 m!3766495))

(assert (=> d!965498 m!3767089))

(assert (=> d!965498 m!3767089))

(assert (=> d!965498 m!3767095))

(declare-fun m!3767099 () Bool)

(assert (=> d!965498 m!3767099))

(declare-fun m!3767101 () Bool)

(assert (=> b!3396717 m!3767101))

(declare-fun m!3767103 () Bool)

(assert (=> b!3396718 m!3767103))

(assert (=> b!3396719 m!3767089))

(assert (=> b!3396719 m!3767089))

(assert (=> b!3396719 m!3767095))

(assert (=> b!3396719 m!3767095))

(assert (=> b!3396719 m!3767097))

(declare-fun m!3767105 () Bool)

(assert (=> b!3396719 m!3767105))

(assert (=> b!3396343 d!965498))

(declare-fun d!965500 () Bool)

(declare-fun res!1374391 () Bool)

(declare-fun e!2108545 () Bool)

(assert (=> d!965500 (=> (not res!1374391) (not e!2108545))))

(assert (=> d!965500 (= res!1374391 (not (isEmpty!21220 (originalCharacters!6108 (h!42376 tokens!494)))))))

(assert (=> d!965500 (= (inv!50048 (h!42376 tokens!494)) e!2108545)))

(declare-fun b!3396720 () Bool)

(declare-fun res!1374392 () Bool)

(assert (=> b!3396720 (=> (not res!1374392) (not e!2108545))))

(assert (=> b!3396720 (= res!1374392 (= (originalCharacters!6108 (h!42376 tokens!494)) (list!13387 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))))))

(declare-fun b!3396721 () Bool)

(assert (=> b!3396721 (= e!2108545 (= (size!27969 (h!42376 tokens!494)) (size!27973 (originalCharacters!6108 (h!42376 tokens!494)))))))

(assert (= (and d!965500 res!1374391) b!3396720))

(assert (= (and b!3396720 res!1374392) b!3396721))

(declare-fun b_lambda!96753 () Bool)

(assert (=> (not b_lambda!96753) (not b!3396720)))

(assert (=> b!3396720 t!265324))

(declare-fun b_and!236837 () Bool)

(assert (= b_and!236805 (and (=> t!265324 result!225428) b_and!236837)))

(assert (=> b!3396720 t!265326))

(declare-fun b_and!236839 () Bool)

(assert (= b_and!236807 (and (=> t!265326 result!225430) b_and!236839)))

(assert (=> b!3396720 t!265328))

(declare-fun b_and!236841 () Bool)

(assert (= b_and!236809 (and (=> t!265328 result!225432) b_and!236841)))

(declare-fun m!3767107 () Bool)

(assert (=> d!965500 m!3767107))

(assert (=> b!3396720 m!3766915))

(assert (=> b!3396720 m!3766915))

(declare-fun m!3767109 () Bool)

(assert (=> b!3396720 m!3767109))

(declare-fun m!3767111 () Bool)

(assert (=> b!3396721 m!3767111))

(assert (=> b!3396362 d!965500))

(declare-fun b!3396724 () Bool)

(declare-fun res!1374394 () Bool)

(declare-fun e!2108546 () Bool)

(assert (=> b!3396724 (=> (not res!1374394) (not e!2108546))))

(declare-fun lt!1154655 () List!37079)

(assert (=> b!3396724 (= res!1374394 (= (size!27973 lt!1154655) (+ (size!27973 (++!9051 lt!1154540 lt!1154543)) (size!27973 lt!1154548))))))

(declare-fun b!3396725 () Bool)

(assert (=> b!3396725 (= e!2108546 (or (not (= lt!1154548 Nil!36955)) (= lt!1154655 (++!9051 lt!1154540 lt!1154543))))))

(declare-fun e!2108547 () List!37079)

(declare-fun b!3396723 () Bool)

(assert (=> b!3396723 (= e!2108547 (Cons!36955 (h!42375 (++!9051 lt!1154540 lt!1154543)) (++!9051 (t!265288 (++!9051 lt!1154540 lt!1154543)) lt!1154548)))))

(declare-fun b!3396722 () Bool)

(assert (=> b!3396722 (= e!2108547 lt!1154548)))

(declare-fun d!965502 () Bool)

(assert (=> d!965502 e!2108546))

(declare-fun res!1374393 () Bool)

(assert (=> d!965502 (=> (not res!1374393) (not e!2108546))))

(assert (=> d!965502 (= res!1374393 (= (content!5108 lt!1154655) ((_ map or) (content!5108 (++!9051 lt!1154540 lt!1154543)) (content!5108 lt!1154548))))))

(assert (=> d!965502 (= lt!1154655 e!2108547)))

(declare-fun c!578932 () Bool)

(assert (=> d!965502 (= c!578932 ((_ is Nil!36955) (++!9051 lt!1154540 lt!1154543)))))

(assert (=> d!965502 (= (++!9051 (++!9051 lt!1154540 lt!1154543) lt!1154548) lt!1154655)))

(assert (= (and d!965502 c!578932) b!3396722))

(assert (= (and d!965502 (not c!578932)) b!3396723))

(assert (= (and d!965502 res!1374393) b!3396724))

(assert (= (and b!3396724 res!1374394) b!3396725))

(declare-fun m!3767113 () Bool)

(assert (=> b!3396724 m!3767113))

(assert (=> b!3396724 m!3766581))

(declare-fun m!3767115 () Bool)

(assert (=> b!3396724 m!3767115))

(assert (=> b!3396724 m!3766645))

(declare-fun m!3767117 () Bool)

(assert (=> b!3396723 m!3767117))

(declare-fun m!3767119 () Bool)

(assert (=> d!965502 m!3767119))

(assert (=> d!965502 m!3766581))

(declare-fun m!3767121 () Bool)

(assert (=> d!965502 m!3767121))

(assert (=> d!965502 m!3766651))

(assert (=> b!3396352 d!965502))

(declare-fun b!3396728 () Bool)

(declare-fun res!1374396 () Bool)

(declare-fun e!2108548 () Bool)

(assert (=> b!3396728 (=> (not res!1374396) (not e!2108548))))

(declare-fun lt!1154656 () List!37079)

(assert (=> b!3396728 (= res!1374396 (= (size!27973 lt!1154656) (+ (size!27973 lt!1154540) (size!27973 lt!1154543))))))

(declare-fun b!3396729 () Bool)

(assert (=> b!3396729 (= e!2108548 (or (not (= lt!1154543 Nil!36955)) (= lt!1154656 lt!1154540)))))

(declare-fun b!3396727 () Bool)

(declare-fun e!2108549 () List!37079)

(assert (=> b!3396727 (= e!2108549 (Cons!36955 (h!42375 lt!1154540) (++!9051 (t!265288 lt!1154540) lt!1154543)))))

(declare-fun b!3396726 () Bool)

(assert (=> b!3396726 (= e!2108549 lt!1154543)))

(declare-fun d!965504 () Bool)

(assert (=> d!965504 e!2108548))

(declare-fun res!1374395 () Bool)

(assert (=> d!965504 (=> (not res!1374395) (not e!2108548))))

(assert (=> d!965504 (= res!1374395 (= (content!5108 lt!1154656) ((_ map or) (content!5108 lt!1154540) (content!5108 lt!1154543))))))

(assert (=> d!965504 (= lt!1154656 e!2108549)))

(declare-fun c!578933 () Bool)

(assert (=> d!965504 (= c!578933 ((_ is Nil!36955) lt!1154540))))

(assert (=> d!965504 (= (++!9051 lt!1154540 lt!1154543) lt!1154656)))

(assert (= (and d!965504 c!578933) b!3396726))

(assert (= (and d!965504 (not c!578933)) b!3396727))

(assert (= (and d!965504 res!1374395) b!3396728))

(assert (= (and b!3396728 res!1374396) b!3396729))

(declare-fun m!3767123 () Bool)

(assert (=> b!3396728 m!3767123))

(assert (=> b!3396728 m!3766679))

(assert (=> b!3396728 m!3766589))

(declare-fun m!3767125 () Bool)

(assert (=> b!3396727 m!3767125))

(declare-fun m!3767127 () Bool)

(assert (=> d!965504 m!3767127))

(assert (=> d!965504 m!3766687))

(assert (=> d!965504 m!3766597))

(assert (=> b!3396352 d!965504))

(declare-fun d!965506 () Bool)

(declare-fun lt!1154659 () Bool)

(declare-fun isEmpty!21222 (List!37080) Bool)

(assert (=> d!965506 (= lt!1154659 (isEmpty!21222 (list!13391 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))))))

(declare-fun isEmpty!21223 (Conc!11164) Bool)

(assert (=> d!965506 (= lt!1154659 (isEmpty!21223 (c!578882 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))))))

(assert (=> d!965506 (= (isEmpty!21214 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540)))) lt!1154659)))

(declare-fun bs!555856 () Bool)

(assert (= bs!555856 d!965506))

(declare-fun m!3767129 () Bool)

(assert (=> bs!555856 m!3767129))

(assert (=> bs!555856 m!3767129))

(declare-fun m!3767131 () Bool)

(assert (=> bs!555856 m!3767131))

(declare-fun m!3767133 () Bool)

(assert (=> bs!555856 m!3767133))

(assert (=> b!3396345 d!965506))

(declare-fun b!3396740 () Bool)

(declare-fun e!2108556 () Bool)

(declare-fun lt!1154662 () tuple2!36574)

(assert (=> b!3396740 (= e!2108556 (not (isEmpty!21214 (_1!21421 lt!1154662))))))

(declare-fun b!3396741 () Bool)

(declare-fun res!1374404 () Bool)

(declare-fun e!2108557 () Bool)

(assert (=> b!3396741 (=> (not res!1374404) (not e!2108557))))

(declare-datatypes ((tuple2!36578 0))(
  ( (tuple2!36579 (_1!21423 List!37080) (_2!21423 List!37079)) )
))
(declare-fun lexList!1418 (LexerInterface!4983 List!37081 List!37079) tuple2!36578)

(assert (=> b!3396741 (= res!1374404 (= (list!13391 (_1!21421 lt!1154662)) (_1!21423 (lexList!1418 thiss!18206 rules!2135 (list!13387 (seqFromList!3841 lt!1154540))))))))

(declare-fun d!965508 () Bool)

(assert (=> d!965508 e!2108557))

(declare-fun res!1374403 () Bool)

(assert (=> d!965508 (=> (not res!1374403) (not e!2108557))))

(declare-fun e!2108558 () Bool)

(assert (=> d!965508 (= res!1374403 e!2108558)))

(declare-fun c!578936 () Bool)

(assert (=> d!965508 (= c!578936 (> (size!27974 (_1!21421 lt!1154662)) 0))))

(declare-fun lexTailRecV2!1026 (LexerInterface!4983 List!37081 BalanceConc!21940 BalanceConc!21940 BalanceConc!21940 BalanceConc!21942) tuple2!36574)

(assert (=> d!965508 (= lt!1154662 (lexTailRecV2!1026 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540) (BalanceConc!21941 Empty!11163) (seqFromList!3841 lt!1154540) (BalanceConc!21943 Empty!11164)))))

(assert (=> d!965508 (= (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540)) lt!1154662)))

(declare-fun b!3396742 () Bool)

(assert (=> b!3396742 (= e!2108558 e!2108556)))

(declare-fun res!1374405 () Bool)

(declare-fun size!27975 (BalanceConc!21940) Int)

(assert (=> b!3396742 (= res!1374405 (< (size!27975 (_2!21421 lt!1154662)) (size!27975 (seqFromList!3841 lt!1154540))))))

(assert (=> b!3396742 (=> (not res!1374405) (not e!2108556))))

(declare-fun b!3396743 () Bool)

(assert (=> b!3396743 (= e!2108558 (= (_2!21421 lt!1154662) (seqFromList!3841 lt!1154540)))))

(declare-fun b!3396744 () Bool)

(assert (=> b!3396744 (= e!2108557 (= (list!13387 (_2!21421 lt!1154662)) (_2!21423 (lexList!1418 thiss!18206 rules!2135 (list!13387 (seqFromList!3841 lt!1154540))))))))

(assert (= (and d!965508 c!578936) b!3396742))

(assert (= (and d!965508 (not c!578936)) b!3396743))

(assert (= (and b!3396742 res!1374405) b!3396740))

(assert (= (and d!965508 res!1374403) b!3396741))

(assert (= (and b!3396741 res!1374404) b!3396744))

(declare-fun m!3767135 () Bool)

(assert (=> b!3396740 m!3767135))

(declare-fun m!3767137 () Bool)

(assert (=> b!3396744 m!3767137))

(assert (=> b!3396744 m!3766549))

(declare-fun m!3767139 () Bool)

(assert (=> b!3396744 m!3767139))

(assert (=> b!3396744 m!3767139))

(declare-fun m!3767141 () Bool)

(assert (=> b!3396744 m!3767141))

(declare-fun m!3767143 () Bool)

(assert (=> d!965508 m!3767143))

(assert (=> d!965508 m!3766549))

(assert (=> d!965508 m!3766549))

(declare-fun m!3767145 () Bool)

(assert (=> d!965508 m!3767145))

(declare-fun m!3767147 () Bool)

(assert (=> b!3396741 m!3767147))

(assert (=> b!3396741 m!3766549))

(assert (=> b!3396741 m!3767139))

(assert (=> b!3396741 m!3767139))

(assert (=> b!3396741 m!3767141))

(declare-fun m!3767149 () Bool)

(assert (=> b!3396742 m!3767149))

(assert (=> b!3396742 m!3766549))

(declare-fun m!3767151 () Bool)

(assert (=> b!3396742 m!3767151))

(assert (=> b!3396345 d!965508))

(declare-fun d!965510 () Bool)

(declare-fun fromListB!1723 (List!37079) BalanceConc!21940)

(assert (=> d!965510 (= (seqFromList!3841 lt!1154540) (fromListB!1723 lt!1154540))))

(declare-fun bs!555857 () Bool)

(assert (= bs!555857 d!965510))

(declare-fun m!3767153 () Bool)

(assert (=> bs!555857 m!3767153))

(assert (=> b!3396345 d!965510))

(declare-fun d!965512 () Bool)

(declare-fun lt!1154665 () Bool)

(declare-fun content!5109 (List!37080) (InoxSet Token!10154))

(assert (=> d!965512 (= lt!1154665 (select (content!5109 tokens!494) (h!42376 tokens!494)))))

(declare-fun e!2108563 () Bool)

(assert (=> d!965512 (= lt!1154665 e!2108563)))

(declare-fun res!1374410 () Bool)

(assert (=> d!965512 (=> (not res!1374410) (not e!2108563))))

(assert (=> d!965512 (= res!1374410 ((_ is Cons!36956) tokens!494))))

(assert (=> d!965512 (= (contains!6785 tokens!494 (h!42376 tokens!494)) lt!1154665)))

(declare-fun b!3396749 () Bool)

(declare-fun e!2108564 () Bool)

(assert (=> b!3396749 (= e!2108563 e!2108564)))

(declare-fun res!1374411 () Bool)

(assert (=> b!3396749 (=> res!1374411 e!2108564)))

(assert (=> b!3396749 (= res!1374411 (= (h!42376 tokens!494) (h!42376 tokens!494)))))

(declare-fun b!3396750 () Bool)

(assert (=> b!3396750 (= e!2108564 (contains!6785 (t!265289 tokens!494) (h!42376 tokens!494)))))

(assert (= (and d!965512 res!1374410) b!3396749))

(assert (= (and b!3396749 (not res!1374411)) b!3396750))

(declare-fun m!3767155 () Bool)

(assert (=> d!965512 m!3767155))

(declare-fun m!3767157 () Bool)

(assert (=> d!965512 m!3767157))

(declare-fun m!3767159 () Bool)

(assert (=> b!3396750 m!3767159))

(assert (=> b!3396335 d!965512))

(declare-fun d!965514 () Bool)

(assert (=> d!965514 (= (isEmpty!21215 rules!2135) ((_ is Nil!36957) rules!2135))))

(assert (=> b!3396356 d!965514))

(declare-fun d!965516 () Bool)

(assert (=> d!965516 (= (inv!50044 (tag!5978 (rule!7954 (h!42376 tokens!494)))) (= (mod (str.len (value!174163 (tag!5978 (rule!7954 (h!42376 tokens!494))))) 2) 0))))

(assert (=> b!3396354 d!965516))

(declare-fun d!965518 () Bool)

(declare-fun res!1374412 () Bool)

(declare-fun e!2108565 () Bool)

(assert (=> d!965518 (=> (not res!1374412) (not e!2108565))))

(assert (=> d!965518 (= res!1374412 (semiInverseModEq!2253 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494))))))))

(assert (=> d!965518 (= (inv!50047 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) e!2108565)))

(declare-fun b!3396751 () Bool)

(assert (=> b!3396751 (= e!2108565 (equivClasses!2152 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494))))))))

(assert (= (and d!965518 res!1374412) b!3396751))

(declare-fun m!3767161 () Bool)

(assert (=> d!965518 m!3767161))

(declare-fun m!3767163 () Bool)

(assert (=> b!3396751 m!3767163))

(assert (=> b!3396354 d!965518))

(declare-fun d!965520 () Bool)

(assert (=> d!965520 (= (list!13387 lt!1154549) (list!13390 (c!578881 lt!1154549)))))

(declare-fun bs!555858 () Bool)

(assert (= bs!555858 d!965520))

(declare-fun m!3767165 () Bool)

(assert (=> bs!555858 m!3767165))

(assert (=> b!3396344 d!965520))

(declare-fun d!965522 () Bool)

(declare-fun lt!1154685 () BalanceConc!21940)

(declare-fun printListTailRec!658 (LexerInterface!4983 List!37080 List!37079) List!37079)

(declare-fun dropList!1175 (BalanceConc!21942 Int) List!37080)

(assert (=> d!965522 (= (list!13387 lt!1154685) (printListTailRec!658 thiss!18206 (dropList!1175 lt!1154539 0) (list!13387 (BalanceConc!21941 Empty!11163))))))

(declare-fun e!2108570 () BalanceConc!21940)

(assert (=> d!965522 (= lt!1154685 e!2108570)))

(declare-fun c!578939 () Bool)

(assert (=> d!965522 (= c!578939 (>= 0 (size!27974 lt!1154539)))))

(declare-fun e!2108571 () Bool)

(assert (=> d!965522 e!2108571))

(declare-fun res!1374415 () Bool)

(assert (=> d!965522 (=> (not res!1374415) (not e!2108571))))

(assert (=> d!965522 (= res!1374415 (>= 0 0))))

(assert (=> d!965522 (= (printTailRec!1478 thiss!18206 lt!1154539 0 (BalanceConc!21941 Empty!11163)) lt!1154685)))

(declare-fun b!3396758 () Bool)

(assert (=> b!3396758 (= e!2108571 (<= 0 (size!27974 lt!1154539)))))

(declare-fun b!3396759 () Bool)

(assert (=> b!3396759 (= e!2108570 (BalanceConc!21941 Empty!11163))))

(declare-fun b!3396760 () Bool)

(declare-fun ++!9053 (BalanceConc!21940 BalanceConc!21940) BalanceConc!21940)

(assert (=> b!3396760 (= e!2108570 (printTailRec!1478 thiss!18206 lt!1154539 (+ 0 1) (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (apply!8618 lt!1154539 0)))))))

(declare-fun lt!1154686 () List!37080)

(assert (=> b!3396760 (= lt!1154686 (list!13391 lt!1154539))))

(declare-fun lt!1154680 () Unit!52122)

(declare-fun lemmaDropApply!1133 (List!37080 Int) Unit!52122)

(assert (=> b!3396760 (= lt!1154680 (lemmaDropApply!1133 lt!1154686 0))))

(declare-fun head!7251 (List!37080) Token!10154)

(declare-fun drop!1975 (List!37080 Int) List!37080)

(declare-fun apply!8619 (List!37080 Int) Token!10154)

(assert (=> b!3396760 (= (head!7251 (drop!1975 lt!1154686 0)) (apply!8619 lt!1154686 0))))

(declare-fun lt!1154682 () Unit!52122)

(assert (=> b!3396760 (= lt!1154682 lt!1154680)))

(declare-fun lt!1154684 () List!37080)

(assert (=> b!3396760 (= lt!1154684 (list!13391 lt!1154539))))

(declare-fun lt!1154681 () Unit!52122)

(declare-fun lemmaDropTail!1017 (List!37080 Int) Unit!52122)

(assert (=> b!3396760 (= lt!1154681 (lemmaDropTail!1017 lt!1154684 0))))

(declare-fun tail!5373 (List!37080) List!37080)

(assert (=> b!3396760 (= (tail!5373 (drop!1975 lt!1154684 0)) (drop!1975 lt!1154684 (+ 0 1)))))

(declare-fun lt!1154683 () Unit!52122)

(assert (=> b!3396760 (= lt!1154683 lt!1154681)))

(assert (= (and d!965522 res!1374415) b!3396758))

(assert (= (and d!965522 c!578939) b!3396759))

(assert (= (and d!965522 (not c!578939)) b!3396760))

(declare-fun m!3767167 () Bool)

(assert (=> d!965522 m!3767167))

(declare-fun m!3767169 () Bool)

(assert (=> d!965522 m!3767169))

(declare-fun m!3767171 () Bool)

(assert (=> d!965522 m!3767171))

(assert (=> d!965522 m!3767169))

(declare-fun m!3767173 () Bool)

(assert (=> d!965522 m!3767173))

(assert (=> d!965522 m!3767171))

(declare-fun m!3767175 () Bool)

(assert (=> d!965522 m!3767175))

(assert (=> b!3396758 m!3767175))

(declare-fun m!3767177 () Bool)

(assert (=> b!3396760 m!3767177))

(declare-fun m!3767179 () Bool)

(assert (=> b!3396760 m!3767179))

(declare-fun m!3767181 () Bool)

(assert (=> b!3396760 m!3767181))

(declare-fun m!3767183 () Bool)

(assert (=> b!3396760 m!3767183))

(declare-fun m!3767185 () Bool)

(assert (=> b!3396760 m!3767185))

(declare-fun m!3767187 () Bool)

(assert (=> b!3396760 m!3767187))

(declare-fun m!3767189 () Bool)

(assert (=> b!3396760 m!3767189))

(assert (=> b!3396760 m!3767189))

(declare-fun m!3767191 () Bool)

(assert (=> b!3396760 m!3767191))

(declare-fun m!3767193 () Bool)

(assert (=> b!3396760 m!3767193))

(declare-fun m!3767195 () Bool)

(assert (=> b!3396760 m!3767195))

(declare-fun m!3767197 () Bool)

(assert (=> b!3396760 m!3767197))

(assert (=> b!3396760 m!3767183))

(declare-fun m!3767199 () Bool)

(assert (=> b!3396760 m!3767199))

(declare-fun m!3767201 () Bool)

(assert (=> b!3396760 m!3767201))

(assert (=> b!3396760 m!3767177))

(assert (=> b!3396760 m!3767185))

(assert (=> b!3396760 m!3767193))

(assert (=> b!3396344 d!965522))

(declare-fun d!965524 () Bool)

(declare-fun e!2108574 () Bool)

(assert (=> d!965524 e!2108574))

(declare-fun res!1374418 () Bool)

(assert (=> d!965524 (=> (not res!1374418) (not e!2108574))))

(declare-fun lt!1154689 () BalanceConc!21942)

(assert (=> d!965524 (= res!1374418 (= (list!13391 lt!1154689) (Cons!36956 (h!42376 tokens!494) Nil!36956)))))

(declare-fun singleton!1090 (Token!10154) BalanceConc!21942)

(assert (=> d!965524 (= lt!1154689 (singleton!1090 (h!42376 tokens!494)))))

(assert (=> d!965524 (= (singletonSeq!2490 (h!42376 tokens!494)) lt!1154689)))

(declare-fun b!3396763 () Bool)

(declare-fun isBalanced!3369 (Conc!11164) Bool)

(assert (=> b!3396763 (= e!2108574 (isBalanced!3369 (c!578882 lt!1154689)))))

(assert (= (and d!965524 res!1374418) b!3396763))

(declare-fun m!3767203 () Bool)

(assert (=> d!965524 m!3767203))

(declare-fun m!3767205 () Bool)

(assert (=> d!965524 m!3767205))

(declare-fun m!3767207 () Bool)

(assert (=> b!3396763 m!3767207))

(assert (=> b!3396344 d!965524))

(declare-fun d!965526 () Bool)

(declare-fun c!578942 () Bool)

(assert (=> d!965526 (= c!578942 ((_ is Cons!36956) (Cons!36956 (h!42376 tokens!494) Nil!36956)))))

(declare-fun e!2108577 () List!37079)

(assert (=> d!965526 (= (printList!1531 thiss!18206 (Cons!36956 (h!42376 tokens!494) Nil!36956)) e!2108577)))

(declare-fun b!3396768 () Bool)

(assert (=> b!3396768 (= e!2108577 (++!9051 (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))) (printList!1531 thiss!18206 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))))

(declare-fun b!3396769 () Bool)

(assert (=> b!3396769 (= e!2108577 Nil!36955)))

(assert (= (and d!965526 c!578942) b!3396768))

(assert (= (and d!965526 (not c!578942)) b!3396769))

(declare-fun m!3767209 () Bool)

(assert (=> b!3396768 m!3767209))

(assert (=> b!3396768 m!3767209))

(declare-fun m!3767211 () Bool)

(assert (=> b!3396768 m!3767211))

(declare-fun m!3767213 () Bool)

(assert (=> b!3396768 m!3767213))

(assert (=> b!3396768 m!3767211))

(assert (=> b!3396768 m!3767213))

(declare-fun m!3767215 () Bool)

(assert (=> b!3396768 m!3767215))

(assert (=> b!3396344 d!965526))

(declare-fun d!965528 () Bool)

(declare-fun lt!1154692 () BalanceConc!21940)

(assert (=> d!965528 (= (list!13387 lt!1154692) (printList!1531 thiss!18206 (list!13391 lt!1154539)))))

(assert (=> d!965528 (= lt!1154692 (printTailRec!1478 thiss!18206 lt!1154539 0 (BalanceConc!21941 Empty!11163)))))

(assert (=> d!965528 (= (print!2048 thiss!18206 lt!1154539) lt!1154692)))

(declare-fun bs!555859 () Bool)

(assert (= bs!555859 d!965528))

(declare-fun m!3767217 () Bool)

(assert (=> bs!555859 m!3767217))

(assert (=> bs!555859 m!3767181))

(assert (=> bs!555859 m!3767181))

(declare-fun m!3767219 () Bool)

(assert (=> bs!555859 m!3767219))

(assert (=> bs!555859 m!3766531))

(assert (=> b!3396344 d!965528))

(declare-fun b!3396774 () Bool)

(declare-fun e!2108580 () Bool)

(declare-fun tp_is_empty!17497 () Bool)

(declare-fun tp!1060231 () Bool)

(assert (=> b!3396774 (= e!2108580 (and tp_is_empty!17497 tp!1060231))))

(assert (=> b!3396361 (= tp!1060151 e!2108580)))

(assert (= (and b!3396361 ((_ is Cons!36955) (originalCharacters!6108 (h!42376 tokens!494)))) b!3396774))

(declare-fun b!3396785 () Bool)

(declare-fun e!2108583 () Bool)

(assert (=> b!3396785 (= e!2108583 tp_is_empty!17497)))

(declare-fun b!3396786 () Bool)

(declare-fun tp!1060246 () Bool)

(declare-fun tp!1060242 () Bool)

(assert (=> b!3396786 (= e!2108583 (and tp!1060246 tp!1060242))))

(assert (=> b!3396338 (= tp!1060153 e!2108583)))

(declare-fun b!3396788 () Bool)

(declare-fun tp!1060245 () Bool)

(declare-fun tp!1060243 () Bool)

(assert (=> b!3396788 (= e!2108583 (and tp!1060245 tp!1060243))))

(declare-fun b!3396787 () Bool)

(declare-fun tp!1060244 () Bool)

(assert (=> b!3396787 (= e!2108583 tp!1060244)))

(assert (= (and b!3396338 ((_ is ElementMatch!10153) (regex!5394 (h!42377 rules!2135)))) b!3396785))

(assert (= (and b!3396338 ((_ is Concat!15777) (regex!5394 (h!42377 rules!2135)))) b!3396786))

(assert (= (and b!3396338 ((_ is Star!10153) (regex!5394 (h!42377 rules!2135)))) b!3396787))

(assert (= (and b!3396338 ((_ is Union!10153) (regex!5394 (h!42377 rules!2135)))) b!3396788))

(declare-fun b!3396789 () Bool)

(declare-fun e!2108584 () Bool)

(assert (=> b!3396789 (= e!2108584 tp_is_empty!17497)))

(declare-fun b!3396790 () Bool)

(declare-fun tp!1060251 () Bool)

(declare-fun tp!1060247 () Bool)

(assert (=> b!3396790 (= e!2108584 (and tp!1060251 tp!1060247))))

(assert (=> b!3396339 (= tp!1060159 e!2108584)))

(declare-fun b!3396792 () Bool)

(declare-fun tp!1060250 () Bool)

(declare-fun tp!1060248 () Bool)

(assert (=> b!3396792 (= e!2108584 (and tp!1060250 tp!1060248))))

(declare-fun b!3396791 () Bool)

(declare-fun tp!1060249 () Bool)

(assert (=> b!3396791 (= e!2108584 tp!1060249)))

(assert (= (and b!3396339 ((_ is ElementMatch!10153) (regex!5394 (rule!7954 separatorToken!241)))) b!3396789))

(assert (= (and b!3396339 ((_ is Concat!15777) (regex!5394 (rule!7954 separatorToken!241)))) b!3396790))

(assert (= (and b!3396339 ((_ is Star!10153) (regex!5394 (rule!7954 separatorToken!241)))) b!3396791))

(assert (= (and b!3396339 ((_ is Union!10153) (regex!5394 (rule!7954 separatorToken!241)))) b!3396792))

(declare-fun b!3396793 () Bool)

(declare-fun e!2108585 () Bool)

(declare-fun tp!1060252 () Bool)

(assert (=> b!3396793 (= e!2108585 (and tp_is_empty!17497 tp!1060252))))

(assert (=> b!3396342 (= tp!1060161 e!2108585)))

(assert (= (and b!3396342 ((_ is Cons!36955) (originalCharacters!6108 separatorToken!241))) b!3396793))

(declare-fun b!3396807 () Bool)

(declare-fun b_free!88917 () Bool)

(declare-fun b_next!89621 () Bool)

(assert (=> b!3396807 (= b_free!88917 (not b_next!89621))))

(declare-fun tp!1060267 () Bool)

(declare-fun b_and!236843 () Bool)

(assert (=> b!3396807 (= tp!1060267 b_and!236843)))

(declare-fun b_free!88919 () Bool)

(declare-fun b_next!89623 () Bool)

(assert (=> b!3396807 (= b_free!88919 (not b_next!89623))))

(declare-fun t!265357 () Bool)

(declare-fun tb!181867 () Bool)

(assert (=> (and b!3396807 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) t!265357) tb!181867))

(declare-fun result!225466 () Bool)

(assert (= result!225466 result!225428))

(assert (=> d!965438 t!265357))

(declare-fun tb!181869 () Bool)

(declare-fun t!265359 () Bool)

(assert (=> (and b!3396807 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241)))) t!265359) tb!181869))

(declare-fun result!225468 () Bool)

(assert (= result!225468 result!225400))

(assert (=> b!3396425 t!265359))

(assert (=> d!965352 t!265359))

(assert (=> b!3396720 t!265357))

(declare-fun t!265361 () Bool)

(declare-fun tb!181871 () Bool)

(assert (=> (and b!3396807 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) t!265361) tb!181871))

(declare-fun result!225470 () Bool)

(assert (= result!225470 result!225408))

(assert (=> d!965366 t!265361))

(declare-fun b_and!236845 () Bool)

(declare-fun tp!1060265 () Bool)

(assert (=> b!3396807 (= tp!1060265 (and (=> t!265357 result!225466) (=> t!265359 result!225468) (=> t!265361 result!225470) b_and!236845))))

(declare-fun e!2108601 () Bool)

(assert (=> b!3396807 (= e!2108601 (and tp!1060267 tp!1060265))))

(declare-fun e!2108603 () Bool)

(declare-fun tp!1060264 () Bool)

(declare-fun b!3396805 () Bool)

(declare-fun e!2108600 () Bool)

(assert (=> b!3396805 (= e!2108603 (and (inv!21 (value!174189 (h!42376 (t!265289 tokens!494)))) e!2108600 tp!1060264))))

(declare-fun e!2108599 () Bool)

(assert (=> b!3396362 (= tp!1060162 e!2108599)))

(declare-fun b!3396806 () Bool)

(declare-fun tp!1060266 () Bool)

(assert (=> b!3396806 (= e!2108600 (and tp!1060266 (inv!50044 (tag!5978 (rule!7954 (h!42376 (t!265289 tokens!494))))) (inv!50047 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) e!2108601))))

(declare-fun b!3396804 () Bool)

(declare-fun tp!1060263 () Bool)

(assert (=> b!3396804 (= e!2108599 (and (inv!50048 (h!42376 (t!265289 tokens!494))) e!2108603 tp!1060263))))

(assert (= b!3396806 b!3396807))

(assert (= b!3396805 b!3396806))

(assert (= b!3396804 b!3396805))

(assert (= (and b!3396362 ((_ is Cons!36956) (t!265289 tokens!494))) b!3396804))

(declare-fun m!3767221 () Bool)

(assert (=> b!3396805 m!3767221))

(declare-fun m!3767223 () Bool)

(assert (=> b!3396806 m!3767223))

(declare-fun m!3767225 () Bool)

(assert (=> b!3396806 m!3767225))

(declare-fun m!3767227 () Bool)

(assert (=> b!3396804 m!3767227))

(declare-fun b!3396808 () Bool)

(declare-fun e!2108604 () Bool)

(assert (=> b!3396808 (= e!2108604 tp_is_empty!17497)))

(declare-fun b!3396809 () Bool)

(declare-fun tp!1060272 () Bool)

(declare-fun tp!1060268 () Bool)

(assert (=> b!3396809 (= e!2108604 (and tp!1060272 tp!1060268))))

(assert (=> b!3396354 (= tp!1060160 e!2108604)))

(declare-fun b!3396811 () Bool)

(declare-fun tp!1060271 () Bool)

(declare-fun tp!1060269 () Bool)

(assert (=> b!3396811 (= e!2108604 (and tp!1060271 tp!1060269))))

(declare-fun b!3396810 () Bool)

(declare-fun tp!1060270 () Bool)

(assert (=> b!3396810 (= e!2108604 tp!1060270)))

(assert (= (and b!3396354 ((_ is ElementMatch!10153) (regex!5394 (rule!7954 (h!42376 tokens!494))))) b!3396808))

(assert (= (and b!3396354 ((_ is Concat!15777) (regex!5394 (rule!7954 (h!42376 tokens!494))))) b!3396809))

(assert (= (and b!3396354 ((_ is Star!10153) (regex!5394 (rule!7954 (h!42376 tokens!494))))) b!3396810))

(assert (= (and b!3396354 ((_ is Union!10153) (regex!5394 (rule!7954 (h!42376 tokens!494))))) b!3396811))

(declare-fun b!3396822 () Bool)

(declare-fun b_free!88921 () Bool)

(declare-fun b_next!89625 () Bool)

(assert (=> b!3396822 (= b_free!88921 (not b_next!89625))))

(declare-fun tp!1060283 () Bool)

(declare-fun b_and!236847 () Bool)

(assert (=> b!3396822 (= tp!1060283 b_and!236847)))

(declare-fun b_free!88923 () Bool)

(declare-fun b_next!89627 () Bool)

(assert (=> b!3396822 (= b_free!88923 (not b_next!89627))))

(declare-fun tb!181873 () Bool)

(declare-fun t!265363 () Bool)

(assert (=> (and b!3396822 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) t!265363) tb!181873))

(declare-fun result!225474 () Bool)

(assert (= result!225474 result!225428))

(assert (=> d!965438 t!265363))

(declare-fun tb!181875 () Bool)

(declare-fun t!265365 () Bool)

(assert (=> (and b!3396822 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241)))) t!265365) tb!181875))

(declare-fun result!225476 () Bool)

(assert (= result!225476 result!225400))

(assert (=> b!3396425 t!265365))

(assert (=> d!965352 t!265365))

(assert (=> b!3396720 t!265363))

(declare-fun tb!181877 () Bool)

(declare-fun t!265367 () Bool)

(assert (=> (and b!3396822 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) t!265367) tb!181877))

(declare-fun result!225478 () Bool)

(assert (= result!225478 result!225408))

(assert (=> d!965366 t!265367))

(declare-fun b_and!236849 () Bool)

(declare-fun tp!1060284 () Bool)

(assert (=> b!3396822 (= tp!1060284 (and (=> t!265365 result!225476) (=> t!265367 result!225478) (=> t!265363 result!225474) b_and!236849))))

(declare-fun e!2108614 () Bool)

(assert (=> b!3396822 (= e!2108614 (and tp!1060283 tp!1060284))))

(declare-fun e!2108615 () Bool)

(declare-fun b!3396821 () Bool)

(declare-fun tp!1060281 () Bool)

(assert (=> b!3396821 (= e!2108615 (and tp!1060281 (inv!50044 (tag!5978 (h!42377 (t!265290 rules!2135)))) (inv!50047 (transformation!5394 (h!42377 (t!265290 rules!2135)))) e!2108614))))

(declare-fun b!3396820 () Bool)

(declare-fun e!2108616 () Bool)

(declare-fun tp!1060282 () Bool)

(assert (=> b!3396820 (= e!2108616 (and e!2108615 tp!1060282))))

(assert (=> b!3396355 (= tp!1060156 e!2108616)))

(assert (= b!3396821 b!3396822))

(assert (= b!3396820 b!3396821))

(assert (= (and b!3396355 ((_ is Cons!36957) (t!265290 rules!2135))) b!3396820))

(declare-fun m!3767229 () Bool)

(assert (=> b!3396821 m!3767229))

(declare-fun m!3767231 () Bool)

(assert (=> b!3396821 m!3767231))

(declare-fun b_lambda!96755 () Bool)

(assert (= b_lambda!96729 (or b!3396357 b_lambda!96755)))

(declare-fun bs!555860 () Bool)

(declare-fun d!965530 () Bool)

(assert (= bs!555860 (and d!965530 b!3396357)))

(assert (=> bs!555860 (= (dynLambda!15411 lambda!120825 (h!42376 tokens!494)) (not (isSeparator!5394 (rule!7954 (h!42376 tokens!494)))))))

(assert (=> d!965442 d!965530))

(declare-fun b_lambda!96757 () Bool)

(assert (= b_lambda!96725 (or (and b!3396347 b_free!88903 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) (and b!3396341 b_free!88899) (and b!3396822 b_free!88923 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) (and b!3396349 b_free!88907 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) (and b!3396807 b_free!88919 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) b_lambda!96757)))

(declare-fun b_lambda!96759 () Bool)

(assert (= b_lambda!96709 (or (and b!3396349 b_free!88907 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) (and b!3396347 b_free!88903 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) (and b!3396807 b_free!88919) (and b!3396822 b_free!88923 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) (and b!3396341 b_free!88899 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) b_lambda!96759)))

(declare-fun b_lambda!96761 () Bool)

(assert (= b_lambda!96713 (or (and b!3396807 b_free!88919 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))))) (and b!3396341 b_free!88899 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))))) (and b!3396349 b_free!88907) (and b!3396822 b_free!88923 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))))) (and b!3396347 b_free!88903 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))))) b_lambda!96761)))

(declare-fun b_lambda!96763 () Bool)

(assert (= b_lambda!96753 (or (and b!3396347 b_free!88903 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) (and b!3396341 b_free!88899) (and b!3396822 b_free!88923 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) (and b!3396349 b_free!88907 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) (and b!3396807 b_free!88919 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) b_lambda!96763)))

(declare-fun b_lambda!96765 () Bool)

(assert (= b_lambda!96711 (or b!3396357 b_lambda!96765)))

(assert (=> b!3396419 d!965530))

(declare-fun b_lambda!96767 () Bool)

(assert (= b_lambda!96727 (or b!3396357 b_lambda!96767)))

(declare-fun bs!555861 () Bool)

(declare-fun d!965532 () Bool)

(assert (= bs!555861 (and d!965532 b!3396357)))

(assert (=> bs!555861 (= (dynLambda!15411 lambda!120825 (h!42376 (t!265289 tokens!494))) (not (isSeparator!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))))

(assert (=> d!965440 d!965532))

(declare-fun b_lambda!96769 () Bool)

(assert (= b_lambda!96707 (or (and b!3396807 b_free!88919 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))))) (and b!3396341 b_free!88899 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))))) (and b!3396349 b_free!88907) (and b!3396822 b_free!88923 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))))) (and b!3396347 b_free!88903 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))))) b_lambda!96769)))

(check-sat (not b!3396605) (not b_lambda!96763) (not b!3396717) (not b!3396603) (not b!3396821) (not b!3396405) (not b!3396792) (not b!3396718) (not d!965450) (not b!3396409) (not b!3396806) (not b!3396565) (not b!3396741) (not b!3396728) (not b!3396414) (not d!965350) (not b!3396805) (not b!3396740) (not b_next!89609) (not b!3396403) (not b!3396425) (not b!3396820) (not d!965500) (not b!3396400) (not b!3396744) (not d!965502) (not d!965368) (not tb!181825) (not b!3396719) (not b_next!89621) (not b!3396556) (not b_next!89611) (not d!965522) (not b_lambda!96755) (not b!3396555) (not d!965508) (not b!3396774) b_and!236839 (not b!3396561) b_and!236849 (not b_next!89607) (not b_next!89603) (not b!3396742) (not d!965364) (not b!3396763) (not tb!181819) (not d!965494) (not b!3396751) (not b!3396790) b_and!236771 (not b!3396398) (not b_next!89605) (not d!965452) (not b!3396401) (not b!3396521) (not b!3396810) (not b!3396372) (not b!3396721) b_and!236763 (not b!3396373) (not b!3396383) (not b!3396715) (not b!3396426) (not b!3396708) (not b!3396604) (not d!965352) (not b_lambda!96767) (not b!3396786) (not b!3396758) (not b!3396549) (not b!3396410) (not b_lambda!96761) (not b!3396804) (not b!3396379) (not b!3396811) (not b_lambda!96769) (not b!3396407) b_and!236767 (not d!965436) (not d!965358) (not b_lambda!96759) (not d!965378) (not b!3396709) (not d!965438) (not b_lambda!96757) (not d!965370) (not b!3396382) (not d!965446) (not d!965356) (not b_lambda!96765) (not d!965346) (not b!3396547) (not b!3396560) (not b!3396791) (not b!3396768) tp_is_empty!17497 (not b_next!89601) (not d!965524) (not b!3396420) b_and!236837 (not b!3396522) (not d!965372) (not b!3396564) (not d!965506) (not b!3396723) (not b_next!89623) b_and!236845 (not b!3396724) (not d!965440) (not tb!181843) (not b!3396531) (not b!3396809) b_and!236843 (not d!965366) (not b!3396727) (not b!3396788) (not d!965510) (not b!3396557) (not b!3396716) (not d!965518) (not d!965520) (not b!3396550) (not d!965474) (not b_next!89625) (not b!3396793) b_and!236841 (not d!965498) (not d!965442) (not b!3396760) (not b!3396750) (not d!965528) (not d!965376) b_and!236847 (not b!3396713) (not d!965504) (not d!965512) (not b_next!89627) (not b!3396720) (not b!3396787))
(check-sat (not b_next!89609) b_and!236763 b_and!236767 (not b_next!89601) b_and!236837 b_and!236843 (not b_next!89621) (not b_next!89611) b_and!236839 (not b_next!89603) b_and!236849 (not b_next!89607) b_and!236771 (not b_next!89605) (not b_next!89623) b_and!236845 (not b_next!89625) b_and!236841 b_and!236847 (not b_next!89627))
(get-model)

(declare-fun d!965626 () Bool)

(assert (=> d!965626 (= (list!13387 lt!1154565) (list!13390 (c!578881 lt!1154565)))))

(declare-fun bs!555878 () Bool)

(assert (= bs!555878 d!965626))

(declare-fun m!3767459 () Bool)

(assert (=> bs!555878 m!3767459))

(assert (=> d!965352 d!965626))

(declare-fun d!965628 () Bool)

(assert (=> d!965628 true))

(declare-fun order!19509 () Int)

(declare-fun lambda!120848 () Int)

(declare-fun dynLambda!15416 (Int Int) Int)

(assert (=> d!965628 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) (dynLambda!15416 order!19509 lambda!120848))))

(declare-fun Forall2!919 (Int) Bool)

(assert (=> d!965628 (= (equivClasses!2152 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) (Forall2!919 lambda!120848))))

(declare-fun bs!555879 () Bool)

(assert (= bs!555879 d!965628))

(declare-fun m!3767461 () Bool)

(assert (=> bs!555879 m!3767461))

(assert (=> b!3396751 d!965628))

(declare-fun d!965630 () Bool)

(assert (=> d!965630 (= (list!13387 lt!1154620) (list!13390 (c!578881 lt!1154620)))))

(declare-fun bs!555880 () Bool)

(assert (= bs!555880 d!965630))

(declare-fun m!3767463 () Bool)

(assert (=> bs!555880 m!3767463))

(assert (=> d!965438 d!965630))

(declare-fun d!965632 () Bool)

(declare-fun charsToInt!0 (List!37078) (_ BitVec 32))

(assert (=> d!965632 (= (inv!16 (value!174189 (h!42376 tokens!494))) (= (charsToInt!0 (text!39815 (value!174189 (h!42376 tokens!494)))) (value!174181 (value!174189 (h!42376 tokens!494)))))))

(declare-fun bs!555881 () Bool)

(assert (= bs!555881 d!965632))

(declare-fun m!3767465 () Bool)

(assert (=> bs!555881 m!3767465))

(assert (=> b!3396549 d!965632))

(declare-fun bs!555882 () Bool)

(declare-fun d!965634 () Bool)

(assert (= bs!555882 (and d!965634 d!965628)))

(declare-fun lambda!120849 () Int)

(assert (=> bs!555882 (= (= (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) (= lambda!120849 lambda!120848))))

(assert (=> d!965634 true))

(assert (=> d!965634 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241)))) (dynLambda!15416 order!19509 lambda!120849))))

(assert (=> d!965634 (= (equivClasses!2152 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241)))) (Forall2!919 lambda!120849))))

(declare-fun bs!555883 () Bool)

(assert (= bs!555883 d!965634))

(declare-fun m!3767477 () Bool)

(assert (=> bs!555883 m!3767477))

(assert (=> b!3396565 d!965634))

(declare-fun d!965638 () Bool)

(declare-fun lt!1154753 () Int)

(assert (=> d!965638 (>= lt!1154753 0)))

(declare-fun e!2108721 () Int)

(assert (=> d!965638 (= lt!1154753 e!2108721)))

(declare-fun c!579000 () Bool)

(assert (=> d!965638 (= c!579000 ((_ is Nil!36955) lt!1154556))))

(assert (=> d!965638 (= (size!27973 lt!1154556) lt!1154753)))

(declare-fun b!3397006 () Bool)

(assert (=> b!3397006 (= e!2108721 0)))

(declare-fun b!3397007 () Bool)

(assert (=> b!3397007 (= e!2108721 (+ 1 (size!27973 (t!265288 lt!1154556))))))

(assert (= (and d!965638 c!579000) b!3397006))

(assert (= (and d!965638 (not c!579000)) b!3397007))

(declare-fun m!3767479 () Bool)

(assert (=> b!3397007 m!3767479))

(assert (=> b!3396383 d!965638))

(declare-fun d!965642 () Bool)

(declare-fun lt!1154756 () Int)

(assert (=> d!965642 (>= lt!1154756 0)))

(declare-fun e!2108724 () Int)

(assert (=> d!965642 (= lt!1154756 e!2108724)))

(declare-fun c!579001 () Bool)

(assert (=> d!965642 (= c!579001 ((_ is Nil!36955) (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)))))

(assert (=> d!965642 (= (size!27973 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)) lt!1154756)))

(declare-fun b!3397010 () Bool)

(assert (=> b!3397010 (= e!2108724 0)))

(declare-fun b!3397011 () Bool)

(assert (=> b!3397011 (= e!2108724 (+ 1 (size!27973 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)))))))

(assert (= (and d!965642 c!579001) b!3397010))

(assert (= (and d!965642 (not c!579001)) b!3397011))

(declare-fun m!3767481 () Bool)

(assert (=> b!3397011 m!3767481))

(assert (=> b!3396383 d!965642))

(declare-fun d!965644 () Bool)

(declare-fun lt!1154757 () Int)

(assert (=> d!965644 (>= lt!1154757 0)))

(declare-fun e!2108725 () Int)

(assert (=> d!965644 (= lt!1154757 e!2108725)))

(declare-fun c!579002 () Bool)

(assert (=> d!965644 (= c!579002 ((_ is Nil!36955) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))

(assert (=> d!965644 (= (size!27973 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)) lt!1154757)))

(declare-fun b!3397012 () Bool)

(assert (=> b!3397012 (= e!2108725 0)))

(declare-fun b!3397013 () Bool)

(assert (=> b!3397013 (= e!2108725 (+ 1 (size!27973 (t!265288 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(assert (= (and d!965644 c!579002) b!3397012))

(assert (= (and d!965644 (not c!579002)) b!3397013))

(declare-fun m!3767483 () Bool)

(assert (=> b!3397013 m!3767483))

(assert (=> b!3396383 d!965644))

(declare-fun d!965646 () Bool)

(declare-fun res!1374491 () Bool)

(declare-fun e!2108726 () Bool)

(assert (=> d!965646 (=> (not res!1374491) (not e!2108726))))

(assert (=> d!965646 (= res!1374491 (not (isEmpty!21220 (originalCharacters!6108 (h!42376 (t!265289 tokens!494))))))))

(assert (=> d!965646 (= (inv!50048 (h!42376 (t!265289 tokens!494))) e!2108726)))

(declare-fun b!3397014 () Bool)

(declare-fun res!1374492 () Bool)

(assert (=> b!3397014 (=> (not res!1374492) (not e!2108726))))

(assert (=> b!3397014 (= res!1374492 (= (originalCharacters!6108 (h!42376 (t!265289 tokens!494))) (list!13387 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))))))

(declare-fun b!3397015 () Bool)

(assert (=> b!3397015 (= e!2108726 (= (size!27969 (h!42376 (t!265289 tokens!494))) (size!27973 (originalCharacters!6108 (h!42376 (t!265289 tokens!494))))))))

(assert (= (and d!965646 res!1374491) b!3397014))

(assert (= (and b!3397014 res!1374492) b!3397015))

(declare-fun b_lambda!96773 () Bool)

(assert (=> (not b_lambda!96773) (not b!3397014)))

(assert (=> b!3397014 t!265301))

(declare-fun b_and!236851 () Bool)

(assert (= b_and!236839 (and (=> t!265301 result!225410) b_and!236851)))

(assert (=> b!3397014 t!265361))

(declare-fun b_and!236853 () Bool)

(assert (= b_and!236845 (and (=> t!265361 result!225470) b_and!236853)))

(assert (=> b!3397014 t!265367))

(declare-fun b_and!236855 () Bool)

(assert (= b_and!236849 (and (=> t!265367 result!225478) b_and!236855)))

(assert (=> b!3397014 t!265303))

(declare-fun b_and!236857 () Bool)

(assert (= b_and!236841 (and (=> t!265303 result!225412) b_and!236857)))

(assert (=> b!3397014 t!265299))

(declare-fun b_and!236859 () Bool)

(assert (= b_and!236837 (and (=> t!265299 result!225408) b_and!236859)))

(declare-fun m!3767485 () Bool)

(assert (=> d!965646 m!3767485))

(assert (=> b!3397014 m!3766675))

(assert (=> b!3397014 m!3766675))

(declare-fun m!3767489 () Bool)

(assert (=> b!3397014 m!3767489))

(declare-fun m!3767491 () Bool)

(assert (=> b!3397015 m!3767491))

(assert (=> b!3396804 d!965646))

(declare-fun d!965650 () Bool)

(assert (=> d!965650 (dynLambda!15411 lambda!120825 (h!42376 tokens!494))))

(assert (=> d!965650 true))

(declare-fun _$7!1236 () Unit!52122)

(assert (=> d!965650 (= (choose!19696 tokens!494 lambda!120825 (h!42376 tokens!494)) _$7!1236)))

(declare-fun b_lambda!96775 () Bool)

(assert (=> (not b_lambda!96775) (not d!965650)))

(declare-fun bs!555884 () Bool)

(assert (= bs!555884 d!965650))

(assert (=> bs!555884 m!3766699))

(assert (=> d!965442 d!965650))

(assert (=> d!965442 d!965374))

(declare-fun b!3397028 () Bool)

(declare-fun res!1374496 () Bool)

(declare-fun e!2108733 () Bool)

(assert (=> b!3397028 (=> (not res!1374496) (not e!2108733))))

(declare-fun lt!1154760 () List!37079)

(assert (=> b!3397028 (= res!1374496 (= (size!27973 lt!1154760) (+ (size!27973 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) (size!27973 (list!13387 (charsOf!3408 separatorToken!241))))))))

(declare-fun b!3397029 () Bool)

(assert (=> b!3397029 (= e!2108733 (or (not (= (list!13387 (charsOf!3408 separatorToken!241)) Nil!36955)) (= lt!1154760 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))))))

(declare-fun b!3397027 () Bool)

(declare-fun e!2108734 () List!37079)

(assert (=> b!3397027 (= e!2108734 (Cons!36955 (h!42375 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) (++!9051 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241)))))))

(declare-fun b!3397026 () Bool)

(assert (=> b!3397026 (= e!2108734 (list!13387 (charsOf!3408 separatorToken!241)))))

(declare-fun d!965654 () Bool)

(assert (=> d!965654 e!2108733))

(declare-fun res!1374495 () Bool)

(assert (=> d!965654 (=> (not res!1374495) (not e!2108733))))

(assert (=> d!965654 (= res!1374495 (= (content!5108 lt!1154760) ((_ map or) (content!5108 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) (content!5108 (list!13387 (charsOf!3408 separatorToken!241))))))))

(assert (=> d!965654 (= lt!1154760 e!2108734)))

(declare-fun c!579007 () Bool)

(assert (=> d!965654 (= c!579007 ((_ is Nil!36955) (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))

(assert (=> d!965654 (= (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241))) lt!1154760)))

(assert (= (and d!965654 c!579007) b!3397026))

(assert (= (and d!965654 (not c!579007)) b!3397027))

(assert (= (and d!965654 res!1374495) b!3397028))

(assert (= (and b!3397028 res!1374496) b!3397029))

(declare-fun m!3767499 () Bool)

(assert (=> b!3397028 m!3767499))

(assert (=> b!3397028 m!3766569))

(assert (=> b!3397028 m!3766587))

(assert (=> b!3397028 m!3766575))

(declare-fun m!3767501 () Bool)

(assert (=> b!3397028 m!3767501))

(assert (=> b!3397027 m!3766575))

(declare-fun m!3767503 () Bool)

(assert (=> b!3397027 m!3767503))

(declare-fun m!3767505 () Bool)

(assert (=> d!965654 m!3767505))

(assert (=> d!965654 m!3766569))

(assert (=> d!965654 m!3766595))

(assert (=> d!965654 m!3766575))

(declare-fun m!3767507 () Bool)

(assert (=> d!965654 m!3767507))

(assert (=> b!3396405 d!965654))

(assert (=> b!3396405 d!965360))

(assert (=> b!3396405 d!965352))

(assert (=> b!3396405 d!965356))

(declare-fun b!3397032 () Bool)

(declare-fun res!1374498 () Bool)

(declare-fun e!2108735 () Bool)

(assert (=> b!3397032 (=> (not res!1374498) (not e!2108735))))

(declare-fun lt!1154761 () List!37079)

(assert (=> b!3397032 (= res!1374498 (= (size!27973 lt!1154761) (+ (size!27973 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241)))) (size!27973 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(declare-fun b!3397033 () Bool)

(assert (=> b!3397033 (= e!2108735 (or (not (= (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241) Nil!36955)) (= lt!1154761 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241))))))))

(declare-fun e!2108736 () List!37079)

(declare-fun b!3397031 () Bool)

(assert (=> b!3397031 (= e!2108736 (Cons!36955 (h!42375 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241)))) (++!9051 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241)))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241))))))

(declare-fun b!3397030 () Bool)

(assert (=> b!3397030 (= e!2108736 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241))))

(declare-fun d!965656 () Bool)

(assert (=> d!965656 e!2108735))

(declare-fun res!1374497 () Bool)

(assert (=> d!965656 (=> (not res!1374497) (not e!2108735))))

(assert (=> d!965656 (= res!1374497 (= (content!5108 lt!1154761) ((_ map or) (content!5108 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241)))) (content!5108 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(assert (=> d!965656 (= lt!1154761 e!2108736)))

(declare-fun c!579008 () Bool)

(assert (=> d!965656 (= c!579008 ((_ is Nil!36955) (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241)))))))

(assert (=> d!965656 (= (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)) lt!1154761)))

(assert (= (and d!965656 c!579008) b!3397030))

(assert (= (and d!965656 (not c!579008)) b!3397031))

(assert (= (and d!965656 res!1374497) b!3397032))

(assert (= (and b!3397032 res!1374498) b!3397033))

(declare-fun m!3767509 () Bool)

(assert (=> b!3397032 m!3767509))

(assert (=> b!3397032 m!3766663))

(declare-fun m!3767511 () Bool)

(assert (=> b!3397032 m!3767511))

(assert (=> b!3397032 m!3766571))

(assert (=> b!3397032 m!3766607))

(assert (=> b!3397031 m!3766571))

(declare-fun m!3767513 () Bool)

(assert (=> b!3397031 m!3767513))

(declare-fun m!3767515 () Bool)

(assert (=> d!965656 m!3767515))

(assert (=> d!965656 m!3766663))

(declare-fun m!3767517 () Bool)

(assert (=> d!965656 m!3767517))

(assert (=> d!965656 m!3766571))

(assert (=> d!965656 m!3766615))

(assert (=> b!3396405 d!965656))

(assert (=> b!3396405 d!965364))

(assert (=> b!3396405 d!965366))

(assert (=> b!3396561 d!965512))

(declare-fun d!965658 () Bool)

(declare-fun lt!1154762 () Int)

(assert (=> d!965658 (>= lt!1154762 0)))

(declare-fun e!2108739 () Int)

(assert (=> d!965658 (= lt!1154762 e!2108739)))

(declare-fun c!579009 () Bool)

(assert (=> d!965658 (= c!579009 ((_ is Nil!36955) lt!1154656))))

(assert (=> d!965658 (= (size!27973 lt!1154656) lt!1154762)))

(declare-fun b!3397034 () Bool)

(assert (=> b!3397034 (= e!2108739 0)))

(declare-fun b!3397035 () Bool)

(assert (=> b!3397035 (= e!2108739 (+ 1 (size!27973 (t!265288 lt!1154656))))))

(assert (= (and d!965658 c!579009) b!3397034))

(assert (= (and d!965658 (not c!579009)) b!3397035))

(declare-fun m!3767519 () Bool)

(assert (=> b!3397035 m!3767519))

(assert (=> b!3396728 d!965658))

(declare-fun d!965660 () Bool)

(declare-fun lt!1154765 () Int)

(assert (=> d!965660 (>= lt!1154765 0)))

(declare-fun e!2108742 () Int)

(assert (=> d!965660 (= lt!1154765 e!2108742)))

(declare-fun c!579012 () Bool)

(assert (=> d!965660 (= c!579012 ((_ is Nil!36955) lt!1154540))))

(assert (=> d!965660 (= (size!27973 lt!1154540) lt!1154765)))

(declare-fun b!3397042 () Bool)

(assert (=> b!3397042 (= e!2108742 0)))

(declare-fun b!3397043 () Bool)

(assert (=> b!3397043 (= e!2108742 (+ 1 (size!27973 (t!265288 lt!1154540))))))

(assert (= (and d!965660 c!579012) b!3397042))

(assert (= (and d!965660 (not c!579012)) b!3397043))

(declare-fun m!3767521 () Bool)

(assert (=> b!3397043 m!3767521))

(assert (=> b!3396728 d!965660))

(declare-fun d!965662 () Bool)

(declare-fun lt!1154766 () Int)

(assert (=> d!965662 (>= lt!1154766 0)))

(declare-fun e!2108743 () Int)

(assert (=> d!965662 (= lt!1154766 e!2108743)))

(declare-fun c!579013 () Bool)

(assert (=> d!965662 (= c!579013 ((_ is Nil!36955) lt!1154543))))

(assert (=> d!965662 (= (size!27973 lt!1154543) lt!1154766)))

(declare-fun b!3397044 () Bool)

(assert (=> b!3397044 (= e!2108743 0)))

(declare-fun b!3397045 () Bool)

(assert (=> b!3397045 (= e!2108743 (+ 1 (size!27973 (t!265288 lt!1154543))))))

(assert (= (and d!965662 c!579013) b!3397044))

(assert (= (and d!965662 (not c!579013)) b!3397045))

(declare-fun m!3767523 () Bool)

(assert (=> b!3397045 m!3767523))

(assert (=> b!3396728 d!965662))

(declare-fun d!965664 () Bool)

(declare-fun c!579017 () Bool)

(assert (=> d!965664 (= c!579017 ((_ is Nil!36955) lt!1154556))))

(declare-fun e!2108748 () (InoxSet C!20492))

(assert (=> d!965664 (= (content!5108 lt!1154556) e!2108748)))

(declare-fun b!3397053 () Bool)

(assert (=> b!3397053 (= e!2108748 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397054 () Bool)

(assert (=> b!3397054 (= e!2108748 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154556) true) (content!5108 (t!265288 lt!1154556))))))

(assert (= (and d!965664 c!579017) b!3397053))

(assert (= (and d!965664 (not c!579017)) b!3397054))

(declare-fun m!3767535 () Bool)

(assert (=> b!3397054 m!3767535))

(declare-fun m!3767537 () Bool)

(assert (=> b!3397054 m!3767537))

(assert (=> d!965350 d!965664))

(declare-fun d!965668 () Bool)

(declare-fun c!579018 () Bool)

(assert (=> d!965668 (= c!579018 ((_ is Nil!36955) (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)))))

(declare-fun e!2108749 () (InoxSet C!20492))

(assert (=> d!965668 (= (content!5108 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)) e!2108749)))

(declare-fun b!3397055 () Bool)

(assert (=> b!3397055 (= e!2108749 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397056 () Bool)

(assert (=> b!3397056 (= e!2108749 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)) true) (content!5108 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)))))))

(assert (= (and d!965668 c!579018) b!3397055))

(assert (= (and d!965668 (not c!579018)) b!3397056))

(declare-fun m!3767539 () Bool)

(assert (=> b!3397056 m!3767539))

(declare-fun m!3767541 () Bool)

(assert (=> b!3397056 m!3767541))

(assert (=> d!965350 d!965668))

(declare-fun d!965670 () Bool)

(declare-fun c!579019 () Bool)

(assert (=> d!965670 (= c!579019 ((_ is Nil!36955) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))

(declare-fun e!2108751 () (InoxSet C!20492))

(assert (=> d!965670 (= (content!5108 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)) e!2108751)))

(declare-fun b!3397058 () Bool)

(assert (=> b!3397058 (= e!2108751 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397059 () Bool)

(assert (=> b!3397059 (= e!2108751 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)) true) (content!5108 (t!265288 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(assert (= (and d!965670 c!579019) b!3397058))

(assert (= (and d!965670 (not c!579019)) b!3397059))

(declare-fun m!3767547 () Bool)

(assert (=> b!3397059 m!3767547))

(declare-fun m!3767549 () Bool)

(assert (=> b!3397059 m!3767549))

(assert (=> d!965350 d!965670))

(declare-fun d!965672 () Bool)

(declare-fun e!2108759 () Bool)

(assert (=> d!965672 e!2108759))

(declare-fun res!1374505 () Bool)

(assert (=> d!965672 (=> (not res!1374505) (not e!2108759))))

(declare-fun lt!1154772 () BalanceConc!21940)

(assert (=> d!965672 (= res!1374505 (= (list!13387 lt!1154772) lt!1154540))))

(declare-fun fromList!715 (List!37079) Conc!11163)

(assert (=> d!965672 (= lt!1154772 (BalanceConc!21941 (fromList!715 lt!1154540)))))

(assert (=> d!965672 (= (fromListB!1723 lt!1154540) lt!1154772)))

(declare-fun b!3397071 () Bool)

(declare-fun isBalanced!3371 (Conc!11163) Bool)

(assert (=> b!3397071 (= e!2108759 (isBalanced!3371 (fromList!715 lt!1154540)))))

(assert (= (and d!965672 res!1374505) b!3397071))

(declare-fun m!3767563 () Bool)

(assert (=> d!965672 m!3767563))

(declare-fun m!3767565 () Bool)

(assert (=> d!965672 m!3767565))

(assert (=> b!3397071 m!3767565))

(assert (=> b!3397071 m!3767565))

(declare-fun m!3767567 () Bool)

(assert (=> b!3397071 m!3767567))

(assert (=> d!965510 d!965672))

(declare-fun d!965680 () Bool)

(declare-fun res!1374506 () Bool)

(declare-fun e!2108760 () Bool)

(assert (=> d!965680 (=> res!1374506 e!2108760)))

(assert (=> d!965680 (= res!1374506 ((_ is Nil!36956) tokens!494))))

(assert (=> d!965680 (= (forall!7803 tokens!494 lambda!120833) e!2108760)))

(declare-fun b!3397072 () Bool)

(declare-fun e!2108761 () Bool)

(assert (=> b!3397072 (= e!2108760 e!2108761)))

(declare-fun res!1374507 () Bool)

(assert (=> b!3397072 (=> (not res!1374507) (not e!2108761))))

(assert (=> b!3397072 (= res!1374507 (dynLambda!15411 lambda!120833 (h!42376 tokens!494)))))

(declare-fun b!3397073 () Bool)

(assert (=> b!3397073 (= e!2108761 (forall!7803 (t!265289 tokens!494) lambda!120833))))

(assert (= (and d!965680 (not res!1374506)) b!3397072))

(assert (= (and b!3397072 res!1374507) b!3397073))

(declare-fun b_lambda!96779 () Bool)

(assert (=> (not b_lambda!96779) (not b!3397072)))

(declare-fun m!3767569 () Bool)

(assert (=> b!3397072 m!3767569))

(declare-fun m!3767571 () Bool)

(assert (=> b!3397073 m!3767571))

(assert (=> d!965378 d!965680))

(assert (=> d!965378 d!965514))

(declare-fun d!965682 () Bool)

(declare-fun res!1374510 () Bool)

(declare-fun e!2108764 () Bool)

(assert (=> d!965682 (=> res!1374510 e!2108764)))

(assert (=> d!965682 (= res!1374510 ((_ is Nil!36956) (t!265289 tokens!494)))))

(assert (=> d!965682 (= (forall!7803 (t!265289 tokens!494) lambda!120825) e!2108764)))

(declare-fun b!3397076 () Bool)

(declare-fun e!2108765 () Bool)

(assert (=> b!3397076 (= e!2108764 e!2108765)))

(declare-fun res!1374511 () Bool)

(assert (=> b!3397076 (=> (not res!1374511) (not e!2108765))))

(assert (=> b!3397076 (= res!1374511 (dynLambda!15411 lambda!120825 (h!42376 (t!265289 tokens!494))))))

(declare-fun b!3397077 () Bool)

(assert (=> b!3397077 (= e!2108765 (forall!7803 (t!265289 (t!265289 tokens!494)) lambda!120825))))

(assert (= (and d!965682 (not res!1374510)) b!3397076))

(assert (= (and b!3397076 res!1374511) b!3397077))

(declare-fun b_lambda!96781 () Bool)

(assert (=> (not b_lambda!96781) (not b!3397076)))

(assert (=> b!3397076 m!3766917))

(declare-fun m!3767573 () Bool)

(assert (=> b!3397077 m!3767573))

(assert (=> b!3396420 d!965682))

(declare-fun d!965684 () Bool)

(assert (=> d!965684 (= (list!13387 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))) (list!13390 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))))))

(declare-fun bs!555885 () Bool)

(assert (= bs!555885 d!965684))

(declare-fun m!3767575 () Bool)

(assert (=> bs!555885 m!3767575))

(assert (=> b!3396425 d!965684))

(declare-fun d!965686 () Bool)

(declare-fun list!13394 (Conc!11164) List!37080)

(assert (=> d!965686 (= (list!13391 lt!1154689) (list!13394 (c!578882 lt!1154689)))))

(declare-fun bs!555886 () Bool)

(assert (= bs!555886 d!965686))

(declare-fun m!3767579 () Bool)

(assert (=> bs!555886 m!3767579))

(assert (=> d!965524 d!965686))

(declare-fun d!965690 () Bool)

(declare-fun e!2108772 () Bool)

(assert (=> d!965690 e!2108772))

(declare-fun res!1374517 () Bool)

(assert (=> d!965690 (=> (not res!1374517) (not e!2108772))))

(declare-fun lt!1154786 () BalanceConc!21942)

(assert (=> d!965690 (= res!1374517 (= (list!13391 lt!1154786) (Cons!36956 (h!42376 tokens!494) Nil!36956)))))

(declare-fun choose!19697 (Token!10154) BalanceConc!21942)

(assert (=> d!965690 (= lt!1154786 (choose!19697 (h!42376 tokens!494)))))

(assert (=> d!965690 (= (singleton!1090 (h!42376 tokens!494)) lt!1154786)))

(declare-fun b!3397085 () Bool)

(assert (=> b!3397085 (= e!2108772 (isBalanced!3369 (c!578882 lt!1154786)))))

(assert (= (and d!965690 res!1374517) b!3397085))

(declare-fun m!3767617 () Bool)

(assert (=> d!965690 m!3767617))

(declare-fun m!3767619 () Bool)

(assert (=> d!965690 m!3767619))

(declare-fun m!3767621 () Bool)

(assert (=> b!3397085 m!3767621))

(assert (=> d!965524 d!965690))

(declare-fun d!965698 () Bool)

(declare-fun res!1374518 () Bool)

(declare-fun e!2108773 () Bool)

(assert (=> d!965698 (=> res!1374518 e!2108773)))

(assert (=> d!965698 (= res!1374518 ((_ is Nil!36956) (list!13391 (seqFromList!3842 tokens!494))))))

(assert (=> d!965698 (= (forall!7803 (list!13391 (seqFromList!3842 tokens!494)) lambda!120841) e!2108773)))

(declare-fun b!3397086 () Bool)

(declare-fun e!2108774 () Bool)

(assert (=> b!3397086 (= e!2108773 e!2108774)))

(declare-fun res!1374519 () Bool)

(assert (=> b!3397086 (=> (not res!1374519) (not e!2108774))))

(assert (=> b!3397086 (= res!1374519 (dynLambda!15411 lambda!120841 (h!42376 (list!13391 (seqFromList!3842 tokens!494)))))))

(declare-fun b!3397087 () Bool)

(assert (=> b!3397087 (= e!2108774 (forall!7803 (t!265289 (list!13391 (seqFromList!3842 tokens!494))) lambda!120841))))

(assert (= (and d!965698 (not res!1374518)) b!3397086))

(assert (= (and b!3397086 res!1374519) b!3397087))

(declare-fun b_lambda!96783 () Bool)

(assert (=> (not b_lambda!96783) (not b!3397086)))

(declare-fun m!3767623 () Bool)

(assert (=> b!3397086 m!3767623))

(declare-fun m!3767625 () Bool)

(assert (=> b!3397087 m!3767625))

(assert (=> d!965474 d!965698))

(declare-fun d!965700 () Bool)

(assert (=> d!965700 (= (list!13391 (seqFromList!3842 tokens!494)) (list!13394 (c!578882 (seqFromList!3842 tokens!494))))))

(declare-fun bs!555888 () Bool)

(assert (= bs!555888 d!965700))

(declare-fun m!3767627 () Bool)

(assert (=> bs!555888 m!3767627))

(assert (=> d!965474 d!965700))

(declare-fun d!965702 () Bool)

(declare-fun lt!1154789 () Bool)

(assert (=> d!965702 (= lt!1154789 (forall!7803 (list!13391 (seqFromList!3842 tokens!494)) lambda!120841))))

(declare-fun forall!7806 (Conc!11164 Int) Bool)

(assert (=> d!965702 (= lt!1154789 (forall!7806 (c!578882 (seqFromList!3842 tokens!494)) lambda!120841))))

(assert (=> d!965702 (= (forall!7805 (seqFromList!3842 tokens!494) lambda!120841) lt!1154789)))

(declare-fun bs!555889 () Bool)

(assert (= bs!555889 d!965702))

(assert (=> bs!555889 m!3766555))

(assert (=> bs!555889 m!3767073))

(assert (=> bs!555889 m!3767073))

(assert (=> bs!555889 m!3767075))

(declare-fun m!3767629 () Bool)

(assert (=> bs!555889 m!3767629))

(assert (=> d!965474 d!965702))

(assert (=> d!965474 d!965514))

(declare-fun d!965704 () Bool)

(declare-fun c!579031 () Bool)

(assert (=> d!965704 (= c!579031 ((_ is Node!11163) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))))))

(declare-fun e!2108781 () Bool)

(assert (=> d!965704 (= (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))) e!2108781)))

(declare-fun b!3397102 () Bool)

(declare-fun inv!50055 (Conc!11163) Bool)

(assert (=> b!3397102 (= e!2108781 (inv!50055 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))))))

(declare-fun b!3397103 () Bool)

(declare-fun e!2108782 () Bool)

(assert (=> b!3397103 (= e!2108781 e!2108782)))

(declare-fun res!1374530 () Bool)

(assert (=> b!3397103 (= res!1374530 (not ((_ is Leaf!17471) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))))))))

(assert (=> b!3397103 (=> res!1374530 e!2108782)))

(declare-fun b!3397104 () Bool)

(declare-fun inv!50056 (Conc!11163) Bool)

(assert (=> b!3397104 (= e!2108782 (inv!50056 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))))))

(assert (= (and d!965704 c!579031) b!3397102))

(assert (= (and d!965704 (not c!579031)) b!3397103))

(assert (= (and b!3397103 (not res!1374530)) b!3397104))

(declare-fun m!3767631 () Bool)

(assert (=> b!3397102 m!3767631))

(declare-fun m!3767633 () Bool)

(assert (=> b!3397104 m!3767633))

(assert (=> b!3396557 d!965704))

(declare-fun d!965706 () Bool)

(assert (=> d!965706 (= (list!13387 lt!1154567) (list!13390 (c!578881 lt!1154567)))))

(declare-fun bs!555890 () Bool)

(assert (= bs!555890 d!965706))

(declare-fun m!3767635 () Bool)

(assert (=> bs!555890 m!3767635))

(assert (=> d!965366 d!965706))

(declare-fun b!3397119 () Bool)

(declare-fun e!2108789 () List!37079)

(declare-fun list!13395 (IArray!22331) List!37079)

(assert (=> b!3397119 (= e!2108789 (list!13395 (xs!14321 (c!578881 (charsOf!3408 (h!42376 tokens!494))))))))

(declare-fun b!3397117 () Bool)

(declare-fun e!2108788 () List!37079)

(assert (=> b!3397117 (= e!2108788 Nil!36955)))

(declare-fun d!965708 () Bool)

(declare-fun c!579036 () Bool)

(assert (=> d!965708 (= c!579036 ((_ is Empty!11163) (c!578881 (charsOf!3408 (h!42376 tokens!494)))))))

(assert (=> d!965708 (= (list!13390 (c!578881 (charsOf!3408 (h!42376 tokens!494)))) e!2108788)))

(declare-fun b!3397118 () Bool)

(assert (=> b!3397118 (= e!2108788 e!2108789)))

(declare-fun c!579037 () Bool)

(assert (=> b!3397118 (= c!579037 ((_ is Leaf!17471) (c!578881 (charsOf!3408 (h!42376 tokens!494)))))))

(declare-fun b!3397120 () Bool)

(assert (=> b!3397120 (= e!2108789 (++!9051 (list!13390 (left!28810 (c!578881 (charsOf!3408 (h!42376 tokens!494))))) (list!13390 (right!29140 (c!578881 (charsOf!3408 (h!42376 tokens!494)))))))))

(assert (= (and d!965708 c!579036) b!3397117))

(assert (= (and d!965708 (not c!579036)) b!3397118))

(assert (= (and b!3397118 c!579037) b!3397119))

(assert (= (and b!3397118 (not c!579037)) b!3397120))

(declare-fun m!3767653 () Bool)

(assert (=> b!3397119 m!3767653))

(declare-fun m!3767657 () Bool)

(assert (=> b!3397120 m!3767657))

(declare-fun m!3767659 () Bool)

(assert (=> b!3397120 m!3767659))

(assert (=> b!3397120 m!3767657))

(assert (=> b!3397120 m!3767659))

(declare-fun m!3767663 () Bool)

(assert (=> b!3397120 m!3767663))

(assert (=> d!965436 d!965708))

(declare-fun b!3397123 () Bool)

(declare-fun res!1374536 () Bool)

(declare-fun e!2108790 () Bool)

(assert (=> b!3397123 (=> (not res!1374536) (not e!2108790))))

(declare-fun lt!1154793 () List!37079)

(assert (=> b!3397123 (= res!1374536 (= (size!27973 lt!1154793) (+ (size!27973 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543))) (size!27973 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(declare-fun b!3397124 () Bool)

(assert (=> b!3397124 (= e!2108790 (or (not (= (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241) Nil!36955)) (= lt!1154793 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)))))))

(declare-fun e!2108791 () List!37079)

(declare-fun b!3397122 () Bool)

(assert (=> b!3397122 (= e!2108791 (Cons!36955 (h!42375 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543))) (++!9051 (t!265288 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241))))))

(declare-fun b!3397121 () Bool)

(assert (=> b!3397121 (= e!2108791 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241))))

(declare-fun d!965710 () Bool)

(assert (=> d!965710 e!2108790))

(declare-fun res!1374535 () Bool)

(assert (=> d!965710 (=> (not res!1374535) (not e!2108790))))

(assert (=> d!965710 (= res!1374535 (= (content!5108 lt!1154793) ((_ map or) (content!5108 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543))) (content!5108 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)))))))

(assert (=> d!965710 (= lt!1154793 e!2108791)))

(declare-fun c!579038 () Bool)

(assert (=> d!965710 (= c!579038 ((_ is Nil!36955) (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543))))))

(assert (=> d!965710 (= (++!9051 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))) lt!1154543)) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 tokens!494)) separatorToken!241)) lt!1154793)))

(assert (= (and d!965710 c!579038) b!3397121))

(assert (= (and d!965710 (not c!579038)) b!3397122))

(assert (= (and d!965710 res!1374535) b!3397123))

(assert (= (and b!3397123 res!1374536) b!3397124))

(declare-fun m!3767665 () Bool)

(assert (=> b!3397123 m!3767665))

(assert (=> b!3397123 m!3767481))

(assert (=> b!3397123 m!3766571))

(assert (=> b!3397123 m!3766607))

(assert (=> b!3397122 m!3766571))

(declare-fun m!3767667 () Bool)

(assert (=> b!3397122 m!3767667))

(declare-fun m!3767669 () Bool)

(assert (=> d!965710 m!3767669))

(assert (=> d!965710 m!3767541))

(assert (=> d!965710 m!3766571))

(assert (=> d!965710 m!3766615))

(assert (=> b!3396382 d!965710))

(declare-fun bs!555891 () Bool)

(declare-fun d!965714 () Bool)

(assert (= bs!555891 (and d!965714 b!3396357)))

(declare-fun lambda!120850 () Int)

(assert (=> bs!555891 (not (= lambda!120850 lambda!120825))))

(declare-fun bs!555892 () Bool)

(assert (= bs!555892 (and d!965714 d!965378)))

(assert (=> bs!555892 (= lambda!120850 lambda!120833)))

(declare-fun bs!555893 () Bool)

(assert (= bs!555893 (and d!965714 d!965474)))

(assert (=> bs!555893 (= lambda!120850 lambda!120841)))

(declare-fun b!3397129 () Bool)

(declare-fun e!2108796 () Bool)

(assert (=> b!3397129 (= e!2108796 true)))

(declare-fun b!3397128 () Bool)

(declare-fun e!2108795 () Bool)

(assert (=> b!3397128 (= e!2108795 e!2108796)))

(declare-fun b!3397127 () Bool)

(declare-fun e!2108794 () Bool)

(assert (=> b!3397127 (= e!2108794 e!2108795)))

(assert (=> d!965714 e!2108794))

(assert (= b!3397128 b!3397129))

(assert (= b!3397127 b!3397128))

(assert (= (and d!965714 ((_ is Cons!36957) rules!2135)) b!3397127))

(assert (=> b!3397129 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15413 order!19503 lambda!120850))))

(assert (=> b!3397129 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15413 order!19503 lambda!120850))))

(assert (=> d!965714 true))

(declare-fun lt!1154794 () Bool)

(assert (=> d!965714 (= lt!1154794 (forall!7803 (t!265289 tokens!494) lambda!120850))))

(declare-fun e!2108793 () Bool)

(assert (=> d!965714 (= lt!1154794 e!2108793)))

(declare-fun res!1374538 () Bool)

(assert (=> d!965714 (=> res!1374538 e!2108793)))

(assert (=> d!965714 (= res!1374538 (not ((_ is Cons!36956) (t!265289 tokens!494))))))

(assert (=> d!965714 (not (isEmpty!21215 rules!2135))))

(assert (=> d!965714 (= (rulesProduceEachTokenIndividuallyList!1825 thiss!18206 rules!2135 (t!265289 tokens!494)) lt!1154794)))

(declare-fun b!3397125 () Bool)

(declare-fun e!2108792 () Bool)

(assert (=> b!3397125 (= e!2108793 e!2108792)))

(declare-fun res!1374537 () Bool)

(assert (=> b!3397125 (=> (not res!1374537) (not e!2108792))))

(assert (=> b!3397125 (= res!1374537 (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 (h!42376 (t!265289 tokens!494))))))

(declare-fun b!3397126 () Bool)

(assert (=> b!3397126 (= e!2108792 (rulesProduceEachTokenIndividuallyList!1825 thiss!18206 rules!2135 (t!265289 (t!265289 tokens!494))))))

(assert (= (and d!965714 (not res!1374538)) b!3397125))

(assert (= (and b!3397125 res!1374537) b!3397126))

(declare-fun m!3767671 () Bool)

(assert (=> d!965714 m!3767671))

(assert (=> d!965714 m!3766495))

(declare-fun m!3767673 () Bool)

(assert (=> b!3397125 m!3767673))

(declare-fun m!3767675 () Bool)

(assert (=> b!3397126 m!3767675))

(assert (=> b!3396522 d!965714))

(declare-fun d!965716 () Bool)

(declare-fun c!579041 () Bool)

(assert (=> d!965716 (= c!579041 ((_ is Nil!36956) tokens!494))))

(declare-fun e!2108801 () (InoxSet Token!10154))

(assert (=> d!965716 (= (content!5109 tokens!494) e!2108801)))

(declare-fun b!3397136 () Bool)

(assert (=> b!3397136 (= e!2108801 ((as const (Array Token!10154 Bool)) false))))

(declare-fun b!3397137 () Bool)

(assert (=> b!3397137 (= e!2108801 ((_ map or) (store ((as const (Array Token!10154 Bool)) false) (h!42376 tokens!494) true) (content!5109 (t!265289 tokens!494))))))

(assert (= (and d!965716 c!579041) b!3397136))

(assert (= (and d!965716 (not c!579041)) b!3397137))

(declare-fun m!3767677 () Bool)

(assert (=> b!3397137 m!3767677))

(declare-fun m!3767679 () Bool)

(assert (=> b!3397137 m!3767679))

(assert (=> d!965512 d!965716))

(declare-fun d!965718 () Bool)

(assert (=> d!965718 (= (list!13387 lt!1154692) (list!13390 (c!578881 lt!1154692)))))

(declare-fun bs!555894 () Bool)

(assert (= bs!555894 d!965718))

(declare-fun m!3767681 () Bool)

(assert (=> bs!555894 m!3767681))

(assert (=> d!965528 d!965718))

(declare-fun d!965720 () Bool)

(declare-fun c!579042 () Bool)

(assert (=> d!965720 (= c!579042 ((_ is Cons!36956) (list!13391 lt!1154539)))))

(declare-fun e!2108802 () List!37079)

(assert (=> d!965720 (= (printList!1531 thiss!18206 (list!13391 lt!1154539)) e!2108802)))

(declare-fun b!3397138 () Bool)

(assert (=> b!3397138 (= e!2108802 (++!9051 (list!13387 (charsOf!3408 (h!42376 (list!13391 lt!1154539)))) (printList!1531 thiss!18206 (t!265289 (list!13391 lt!1154539)))))))

(declare-fun b!3397139 () Bool)

(assert (=> b!3397139 (= e!2108802 Nil!36955)))

(assert (= (and d!965720 c!579042) b!3397138))

(assert (= (and d!965720 (not c!579042)) b!3397139))

(declare-fun m!3767683 () Bool)

(assert (=> b!3397138 m!3767683))

(assert (=> b!3397138 m!3767683))

(declare-fun m!3767685 () Bool)

(assert (=> b!3397138 m!3767685))

(declare-fun m!3767687 () Bool)

(assert (=> b!3397138 m!3767687))

(assert (=> b!3397138 m!3767685))

(assert (=> b!3397138 m!3767687))

(declare-fun m!3767689 () Bool)

(assert (=> b!3397138 m!3767689))

(assert (=> d!965528 d!965720))

(declare-fun d!965722 () Bool)

(assert (=> d!965722 (= (list!13391 lt!1154539) (list!13394 (c!578882 lt!1154539)))))

(declare-fun bs!555895 () Bool)

(assert (= bs!555895 d!965722))

(declare-fun m!3767691 () Bool)

(assert (=> bs!555895 m!3767691))

(assert (=> d!965528 d!965722))

(assert (=> d!965528 d!965522))

(declare-fun d!965726 () Bool)

(assert (=> d!965726 (= (isEmpty!21220 (originalCharacters!6108 separatorToken!241)) ((_ is Nil!36955) (originalCharacters!6108 separatorToken!241)))))

(assert (=> d!965376 d!965726))

(declare-fun d!965730 () Bool)

(declare-fun c!579043 () Bool)

(assert (=> d!965730 (= c!579043 ((_ is Nil!36955) lt!1154656))))

(declare-fun e!2108803 () (InoxSet C!20492))

(assert (=> d!965730 (= (content!5108 lt!1154656) e!2108803)))

(declare-fun b!3397142 () Bool)

(assert (=> b!3397142 (= e!2108803 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397143 () Bool)

(assert (=> b!3397143 (= e!2108803 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154656) true) (content!5108 (t!265288 lt!1154656))))))

(assert (= (and d!965730 c!579043) b!3397142))

(assert (= (and d!965730 (not c!579043)) b!3397143))

(declare-fun m!3767697 () Bool)

(assert (=> b!3397143 m!3767697))

(declare-fun m!3767699 () Bool)

(assert (=> b!3397143 m!3767699))

(assert (=> d!965504 d!965730))

(declare-fun d!965732 () Bool)

(declare-fun c!579044 () Bool)

(assert (=> d!965732 (= c!579044 ((_ is Nil!36955) lt!1154540))))

(declare-fun e!2108804 () (InoxSet C!20492))

(assert (=> d!965732 (= (content!5108 lt!1154540) e!2108804)))

(declare-fun b!3397144 () Bool)

(assert (=> b!3397144 (= e!2108804 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397145 () Bool)

(assert (=> b!3397145 (= e!2108804 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154540) true) (content!5108 (t!265288 lt!1154540))))))

(assert (= (and d!965732 c!579044) b!3397144))

(assert (= (and d!965732 (not c!579044)) b!3397145))

(declare-fun m!3767701 () Bool)

(assert (=> b!3397145 m!3767701))

(declare-fun m!3767703 () Bool)

(assert (=> b!3397145 m!3767703))

(assert (=> d!965504 d!965732))

(declare-fun d!965734 () Bool)

(declare-fun c!579045 () Bool)

(assert (=> d!965734 (= c!579045 ((_ is Nil!36955) lt!1154543))))

(declare-fun e!2108805 () (InoxSet C!20492))

(assert (=> d!965734 (= (content!5108 lt!1154543) e!2108805)))

(declare-fun b!3397146 () Bool)

(assert (=> b!3397146 (= e!2108805 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397147 () Bool)

(assert (=> b!3397147 (= e!2108805 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154543) true) (content!5108 (t!265288 lt!1154543))))))

(assert (= (and d!965734 c!579045) b!3397146))

(assert (= (and d!965734 (not c!579045)) b!3397147))

(declare-fun m!3767705 () Bool)

(assert (=> b!3397147 m!3767705))

(declare-fun m!3767707 () Bool)

(assert (=> b!3397147 m!3767707))

(assert (=> d!965504 d!965734))

(declare-fun d!965738 () Bool)

(declare-fun lt!1154795 () Bool)

(assert (=> d!965738 (= lt!1154795 (select (content!5109 (t!265289 tokens!494)) (h!42376 tokens!494)))))

(declare-fun e!2108806 () Bool)

(assert (=> d!965738 (= lt!1154795 e!2108806)))

(declare-fun res!1374541 () Bool)

(assert (=> d!965738 (=> (not res!1374541) (not e!2108806))))

(assert (=> d!965738 (= res!1374541 ((_ is Cons!36956) (t!265289 tokens!494)))))

(assert (=> d!965738 (= (contains!6785 (t!265289 tokens!494) (h!42376 tokens!494)) lt!1154795)))

(declare-fun b!3397148 () Bool)

(declare-fun e!2108807 () Bool)

(assert (=> b!3397148 (= e!2108806 e!2108807)))

(declare-fun res!1374542 () Bool)

(assert (=> b!3397148 (=> res!1374542 e!2108807)))

(assert (=> b!3397148 (= res!1374542 (= (h!42376 (t!265289 tokens!494)) (h!42376 tokens!494)))))

(declare-fun b!3397149 () Bool)

(assert (=> b!3397149 (= e!2108807 (contains!6785 (t!265289 (t!265289 tokens!494)) (h!42376 tokens!494)))))

(assert (= (and d!965738 res!1374541) b!3397148))

(assert (= (and b!3397148 (not res!1374542)) b!3397149))

(assert (=> d!965738 m!3767679))

(declare-fun m!3767709 () Bool)

(assert (=> d!965738 m!3767709))

(declare-fun m!3767711 () Bool)

(assert (=> b!3397149 m!3767711))

(assert (=> b!3396750 d!965738))

(declare-fun d!965740 () Bool)

(declare-fun charsToBigInt!1 (List!37078) Int)

(assert (=> d!965740 (= (inv!17 (value!174189 separatorToken!241)) (= (charsToBigInt!1 (text!39816 (value!174189 separatorToken!241))) (value!174182 (value!174189 separatorToken!241))))))

(declare-fun bs!555899 () Bool)

(assert (= bs!555899 d!965740))

(declare-fun m!3767713 () Bool)

(assert (=> bs!555899 m!3767713))

(assert (=> b!3396713 d!965740))

(declare-fun lt!1154802 () Bool)

(declare-fun d!965742 () Bool)

(assert (=> d!965742 (= lt!1154802 (isEmpty!21220 (list!13387 (_2!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)))))))))

(declare-fun isEmpty!21225 (Conc!11163) Bool)

(assert (=> d!965742 (= lt!1154802 (isEmpty!21225 (c!578881 (_2!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)))))))))

(assert (=> d!965742 (= (isEmpty!21221 (_2!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241))))) lt!1154802)))

(declare-fun bs!555901 () Bool)

(assert (= bs!555901 d!965742))

(declare-fun m!3767719 () Bool)

(assert (=> bs!555901 m!3767719))

(assert (=> bs!555901 m!3767719))

(declare-fun m!3767721 () Bool)

(assert (=> bs!555901 m!3767721))

(declare-fun m!3767723 () Bool)

(assert (=> bs!555901 m!3767723))

(assert (=> b!3396719 d!965742))

(declare-fun b!3397156 () Bool)

(declare-fun e!2108810 () Bool)

(declare-fun lt!1154803 () tuple2!36574)

(assert (=> b!3397156 (= e!2108810 (not (isEmpty!21214 (_1!21421 lt!1154803))))))

(declare-fun b!3397157 () Bool)

(declare-fun res!1374546 () Bool)

(declare-fun e!2108811 () Bool)

(assert (=> b!3397157 (=> (not res!1374546) (not e!2108811))))

(assert (=> b!3397157 (= res!1374546 (= (list!13391 (_1!21421 lt!1154803)) (_1!21423 (lexList!1418 thiss!18206 rules!2135 (list!13387 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)))))))))

(declare-fun d!965746 () Bool)

(assert (=> d!965746 e!2108811))

(declare-fun res!1374545 () Bool)

(assert (=> d!965746 (=> (not res!1374545) (not e!2108811))))

(declare-fun e!2108812 () Bool)

(assert (=> d!965746 (= res!1374545 e!2108812)))

(declare-fun c!579047 () Bool)

(assert (=> d!965746 (= c!579047 (> (size!27974 (_1!21421 lt!1154803)) 0))))

(assert (=> d!965746 (= lt!1154803 (lexTailRecV2!1026 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)) (BalanceConc!21941 Empty!11163) (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)) (BalanceConc!21943 Empty!11164)))))

(assert (=> d!965746 (= (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241))) lt!1154803)))

(declare-fun b!3397158 () Bool)

(assert (=> b!3397158 (= e!2108812 e!2108810)))

(declare-fun res!1374547 () Bool)

(assert (=> b!3397158 (= res!1374547 (< (size!27975 (_2!21421 lt!1154803)) (size!27975 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)))))))

(assert (=> b!3397158 (=> (not res!1374547) (not e!2108810))))

(declare-fun b!3397159 () Bool)

(assert (=> b!3397159 (= e!2108812 (= (_2!21421 lt!1154803) (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241))))))

(declare-fun b!3397160 () Bool)

(assert (=> b!3397160 (= e!2108811 (= (list!13387 (_2!21421 lt!1154803)) (_2!21423 (lexList!1418 thiss!18206 rules!2135 (list!13387 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)))))))))

(assert (= (and d!965746 c!579047) b!3397158))

(assert (= (and d!965746 (not c!579047)) b!3397159))

(assert (= (and b!3397158 res!1374547) b!3397156))

(assert (= (and d!965746 res!1374545) b!3397157))

(assert (= (and b!3397157 res!1374546) b!3397160))

(declare-fun m!3767739 () Bool)

(assert (=> b!3397156 m!3767739))

(declare-fun m!3767741 () Bool)

(assert (=> b!3397160 m!3767741))

(assert (=> b!3397160 m!3767095))

(declare-fun m!3767745 () Bool)

(assert (=> b!3397160 m!3767745))

(assert (=> b!3397160 m!3767745))

(declare-fun m!3767747 () Bool)

(assert (=> b!3397160 m!3767747))

(declare-fun m!3767749 () Bool)

(assert (=> d!965746 m!3767749))

(assert (=> d!965746 m!3767095))

(assert (=> d!965746 m!3767095))

(declare-fun m!3767753 () Bool)

(assert (=> d!965746 m!3767753))

(declare-fun m!3767759 () Bool)

(assert (=> b!3397157 m!3767759))

(assert (=> b!3397157 m!3767095))

(assert (=> b!3397157 m!3767745))

(assert (=> b!3397157 m!3767745))

(assert (=> b!3397157 m!3767747))

(declare-fun m!3767763 () Bool)

(assert (=> b!3397158 m!3767763))

(assert (=> b!3397158 m!3767095))

(declare-fun m!3767765 () Bool)

(assert (=> b!3397158 m!3767765))

(assert (=> b!3396719 d!965746))

(declare-fun d!965752 () Bool)

(declare-fun lt!1154806 () BalanceConc!21940)

(assert (=> d!965752 (= (list!13387 lt!1154806) (printList!1531 thiss!18206 (list!13391 (singletonSeq!2490 separatorToken!241))))))

(assert (=> d!965752 (= lt!1154806 (printTailRec!1478 thiss!18206 (singletonSeq!2490 separatorToken!241) 0 (BalanceConc!21941 Empty!11163)))))

(assert (=> d!965752 (= (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)) lt!1154806)))

(declare-fun bs!555902 () Bool)

(assert (= bs!555902 d!965752))

(declare-fun m!3767767 () Bool)

(assert (=> bs!555902 m!3767767))

(assert (=> bs!555902 m!3767089))

(assert (=> bs!555902 m!3767091))

(assert (=> bs!555902 m!3767091))

(declare-fun m!3767769 () Bool)

(assert (=> bs!555902 m!3767769))

(assert (=> bs!555902 m!3767089))

(declare-fun m!3767771 () Bool)

(assert (=> bs!555902 m!3767771))

(assert (=> b!3396719 d!965752))

(declare-fun d!965754 () Bool)

(declare-fun e!2108817 () Bool)

(assert (=> d!965754 e!2108817))

(declare-fun res!1374552 () Bool)

(assert (=> d!965754 (=> (not res!1374552) (not e!2108817))))

(declare-fun lt!1154807 () BalanceConc!21942)

(assert (=> d!965754 (= res!1374552 (= (list!13391 lt!1154807) (Cons!36956 separatorToken!241 Nil!36956)))))

(assert (=> d!965754 (= lt!1154807 (singleton!1090 separatorToken!241))))

(assert (=> d!965754 (= (singletonSeq!2490 separatorToken!241) lt!1154807)))

(declare-fun b!3397169 () Bool)

(assert (=> b!3397169 (= e!2108817 (isBalanced!3369 (c!578882 lt!1154807)))))

(assert (= (and d!965754 res!1374552) b!3397169))

(declare-fun m!3767783 () Bool)

(assert (=> d!965754 m!3767783))

(declare-fun m!3767785 () Bool)

(assert (=> d!965754 m!3767785))

(declare-fun m!3767787 () Bool)

(assert (=> b!3397169 m!3767787))

(assert (=> b!3396719 d!965754))

(declare-fun d!965758 () Bool)

(declare-fun lt!1154808 () Int)

(assert (=> d!965758 (>= lt!1154808 0)))

(declare-fun e!2108818 () Int)

(assert (=> d!965758 (= lt!1154808 e!2108818)))

(declare-fun c!579050 () Bool)

(assert (=> d!965758 (= c!579050 ((_ is Nil!36955) (originalCharacters!6108 (h!42376 tokens!494))))))

(assert (=> d!965758 (= (size!27973 (originalCharacters!6108 (h!42376 tokens!494))) lt!1154808)))

(declare-fun b!3397170 () Bool)

(assert (=> b!3397170 (= e!2108818 0)))

(declare-fun b!3397171 () Bool)

(assert (=> b!3397171 (= e!2108818 (+ 1 (size!27973 (t!265288 (originalCharacters!6108 (h!42376 tokens!494))))))))

(assert (= (and d!965758 c!579050) b!3397170))

(assert (= (and d!965758 (not c!579050)) b!3397171))

(declare-fun m!3767789 () Bool)

(assert (=> b!3397171 m!3767789))

(assert (=> b!3396721 d!965758))

(declare-fun d!965760 () Bool)

(declare-fun e!2108825 () Bool)

(assert (=> d!965760 e!2108825))

(declare-fun res!1374558 () Bool)

(assert (=> d!965760 (=> (not res!1374558) (not e!2108825))))

(declare-fun lt!1154811 () BalanceConc!21942)

(assert (=> d!965760 (= res!1374558 (= (list!13391 lt!1154811) tokens!494))))

(declare-fun fromList!716 (List!37080) Conc!11164)

(assert (=> d!965760 (= lt!1154811 (BalanceConc!21943 (fromList!716 tokens!494)))))

(assert (=> d!965760 (= (fromListB!1722 tokens!494) lt!1154811)))

(declare-fun b!3397179 () Bool)

(assert (=> b!3397179 (= e!2108825 (isBalanced!3369 (fromList!716 tokens!494)))))

(assert (= (and d!965760 res!1374558) b!3397179))

(declare-fun m!3767799 () Bool)

(assert (=> d!965760 m!3767799))

(declare-fun m!3767801 () Bool)

(assert (=> d!965760 m!3767801))

(assert (=> b!3397179 m!3767801))

(assert (=> b!3397179 m!3767801))

(declare-fun m!3767803 () Bool)

(assert (=> b!3397179 m!3767803))

(assert (=> d!965494 d!965760))

(declare-fun d!965768 () Bool)

(declare-fun lt!1154812 () Int)

(assert (=> d!965768 (>= lt!1154812 0)))

(declare-fun e!2108826 () Int)

(assert (=> d!965768 (= lt!1154812 e!2108826)))

(declare-fun c!579053 () Bool)

(assert (=> d!965768 (= c!579053 ((_ is Nil!36955) lt!1154655))))

(assert (=> d!965768 (= (size!27973 lt!1154655) lt!1154812)))

(declare-fun b!3397180 () Bool)

(assert (=> b!3397180 (= e!2108826 0)))

(declare-fun b!3397181 () Bool)

(assert (=> b!3397181 (= e!2108826 (+ 1 (size!27973 (t!265288 lt!1154655))))))

(assert (= (and d!965768 c!579053) b!3397180))

(assert (= (and d!965768 (not c!579053)) b!3397181))

(declare-fun m!3767805 () Bool)

(assert (=> b!3397181 m!3767805))

(assert (=> b!3396724 d!965768))

(declare-fun d!965770 () Bool)

(declare-fun lt!1154813 () Int)

(assert (=> d!965770 (>= lt!1154813 0)))

(declare-fun e!2108827 () Int)

(assert (=> d!965770 (= lt!1154813 e!2108827)))

(declare-fun c!579054 () Bool)

(assert (=> d!965770 (= c!579054 ((_ is Nil!36955) (++!9051 lt!1154540 lt!1154543)))))

(assert (=> d!965770 (= (size!27973 (++!9051 lt!1154540 lt!1154543)) lt!1154813)))

(declare-fun b!3397182 () Bool)

(assert (=> b!3397182 (= e!2108827 0)))

(declare-fun b!3397183 () Bool)

(assert (=> b!3397183 (= e!2108827 (+ 1 (size!27973 (t!265288 (++!9051 lt!1154540 lt!1154543)))))))

(assert (= (and d!965770 c!579054) b!3397182))

(assert (= (and d!965770 (not c!579054)) b!3397183))

(declare-fun m!3767807 () Bool)

(assert (=> b!3397183 m!3767807))

(assert (=> b!3396724 d!965770))

(declare-fun d!965772 () Bool)

(declare-fun lt!1154814 () Int)

(assert (=> d!965772 (>= lt!1154814 0)))

(declare-fun e!2108828 () Int)

(assert (=> d!965772 (= lt!1154814 e!2108828)))

(declare-fun c!579055 () Bool)

(assert (=> d!965772 (= c!579055 ((_ is Nil!36955) lt!1154548))))

(assert (=> d!965772 (= (size!27973 lt!1154548) lt!1154814)))

(declare-fun b!3397184 () Bool)

(assert (=> b!3397184 (= e!2108828 0)))

(declare-fun b!3397185 () Bool)

(assert (=> b!3397185 (= e!2108828 (+ 1 (size!27973 (t!265288 lt!1154548))))))

(assert (= (and d!965772 c!579055) b!3397184))

(assert (= (and d!965772 (not c!579055)) b!3397185))

(declare-fun m!3767809 () Bool)

(assert (=> b!3397185 m!3767809))

(assert (=> b!3396724 d!965772))

(declare-fun b!3397188 () Bool)

(declare-fun res!1374560 () Bool)

(declare-fun e!2108829 () Bool)

(assert (=> b!3397188 (=> (not res!1374560) (not e!2108829))))

(declare-fun lt!1154815 () List!37079)

(assert (=> b!3397188 (= res!1374560 (= (size!27973 lt!1154815) (+ (size!27973 (t!265288 lt!1154540)) (size!27973 lt!1154543))))))

(declare-fun b!3397189 () Bool)

(assert (=> b!3397189 (= e!2108829 (or (not (= lt!1154543 Nil!36955)) (= lt!1154815 (t!265288 lt!1154540))))))

(declare-fun b!3397187 () Bool)

(declare-fun e!2108830 () List!37079)

(assert (=> b!3397187 (= e!2108830 (Cons!36955 (h!42375 (t!265288 lt!1154540)) (++!9051 (t!265288 (t!265288 lt!1154540)) lt!1154543)))))

(declare-fun b!3397186 () Bool)

(assert (=> b!3397186 (= e!2108830 lt!1154543)))

(declare-fun d!965774 () Bool)

(assert (=> d!965774 e!2108829))

(declare-fun res!1374559 () Bool)

(assert (=> d!965774 (=> (not res!1374559) (not e!2108829))))

(assert (=> d!965774 (= res!1374559 (= (content!5108 lt!1154815) ((_ map or) (content!5108 (t!265288 lt!1154540)) (content!5108 lt!1154543))))))

(assert (=> d!965774 (= lt!1154815 e!2108830)))

(declare-fun c!579056 () Bool)

(assert (=> d!965774 (= c!579056 ((_ is Nil!36955) (t!265288 lt!1154540)))))

(assert (=> d!965774 (= (++!9051 (t!265288 lt!1154540) lt!1154543) lt!1154815)))

(assert (= (and d!965774 c!579056) b!3397186))

(assert (= (and d!965774 (not c!579056)) b!3397187))

(assert (= (and d!965774 res!1374559) b!3397188))

(assert (= (and b!3397188 res!1374560) b!3397189))

(declare-fun m!3767811 () Bool)

(assert (=> b!3397188 m!3767811))

(assert (=> b!3397188 m!3767521))

(assert (=> b!3397188 m!3766589))

(declare-fun m!3767813 () Bool)

(assert (=> b!3397187 m!3767813))

(declare-fun m!3767815 () Bool)

(assert (=> d!965774 m!3767815))

(assert (=> d!965774 m!3767703))

(assert (=> d!965774 m!3766597))

(assert (=> b!3396727 d!965774))

(declare-fun b!3397218 () Bool)

(declare-fun res!1374582 () Bool)

(declare-fun e!2108845 () Bool)

(assert (=> b!3397218 (=> (not res!1374582) (not e!2108845))))

(declare-fun height!1667 (Conc!11164) Int)

(assert (=> b!3397218 (= res!1374582 (<= (- (height!1667 (left!28811 (c!578882 lt!1154689))) (height!1667 (right!29141 (c!578882 lt!1154689)))) 1))))

(declare-fun b!3397219 () Bool)

(declare-fun res!1374577 () Bool)

(assert (=> b!3397219 (=> (not res!1374577) (not e!2108845))))

(assert (=> b!3397219 (= res!1374577 (isBalanced!3369 (left!28811 (c!578882 lt!1154689))))))

(declare-fun b!3397220 () Bool)

(declare-fun e!2108844 () Bool)

(assert (=> b!3397220 (= e!2108844 e!2108845)))

(declare-fun res!1374580 () Bool)

(assert (=> b!3397220 (=> (not res!1374580) (not e!2108845))))

(assert (=> b!3397220 (= res!1374580 (<= (- 1) (- (height!1667 (left!28811 (c!578882 lt!1154689))) (height!1667 (right!29141 (c!578882 lt!1154689))))))))

(declare-fun d!965776 () Bool)

(declare-fun res!1374578 () Bool)

(assert (=> d!965776 (=> res!1374578 e!2108844)))

(assert (=> d!965776 (= res!1374578 (not ((_ is Node!11164) (c!578882 lt!1154689))))))

(assert (=> d!965776 (= (isBalanced!3369 (c!578882 lt!1154689)) e!2108844)))

(declare-fun b!3397221 () Bool)

(declare-fun res!1374581 () Bool)

(assert (=> b!3397221 (=> (not res!1374581) (not e!2108845))))

(assert (=> b!3397221 (= res!1374581 (not (isEmpty!21223 (left!28811 (c!578882 lt!1154689)))))))

(declare-fun b!3397222 () Bool)

(declare-fun res!1374579 () Bool)

(assert (=> b!3397222 (=> (not res!1374579) (not e!2108845))))

(assert (=> b!3397222 (= res!1374579 (isBalanced!3369 (right!29141 (c!578882 lt!1154689))))))

(declare-fun b!3397223 () Bool)

(assert (=> b!3397223 (= e!2108845 (not (isEmpty!21223 (right!29141 (c!578882 lt!1154689)))))))

(assert (= (and d!965776 (not res!1374578)) b!3397220))

(assert (= (and b!3397220 res!1374580) b!3397218))

(assert (= (and b!3397218 res!1374582) b!3397219))

(assert (= (and b!3397219 res!1374577) b!3397222))

(assert (= (and b!3397222 res!1374579) b!3397221))

(assert (= (and b!3397221 res!1374581) b!3397223))

(declare-fun m!3767849 () Bool)

(assert (=> b!3397220 m!3767849))

(declare-fun m!3767851 () Bool)

(assert (=> b!3397220 m!3767851))

(declare-fun m!3767853 () Bool)

(assert (=> b!3397221 m!3767853))

(declare-fun m!3767855 () Bool)

(assert (=> b!3397219 m!3767855))

(assert (=> b!3397218 m!3767849))

(assert (=> b!3397218 m!3767851))

(declare-fun m!3767857 () Bool)

(assert (=> b!3397222 m!3767857))

(declare-fun m!3767859 () Bool)

(assert (=> b!3397223 m!3767859))

(assert (=> b!3396763 d!965776))

(declare-fun d!965790 () Bool)

(declare-fun c!579064 () Bool)

(assert (=> d!965790 (= c!579064 ((_ is Node!11163) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))))))

(declare-fun e!2108847 () Bool)

(assert (=> d!965790 (= (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))) e!2108847)))

(declare-fun b!3397225 () Bool)

(assert (=> b!3397225 (= e!2108847 (inv!50055 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))))))

(declare-fun b!3397226 () Bool)

(declare-fun e!2108848 () Bool)

(assert (=> b!3397226 (= e!2108847 e!2108848)))

(declare-fun res!1374584 () Bool)

(assert (=> b!3397226 (= res!1374584 (not ((_ is Leaf!17471) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494))))))))))

(assert (=> b!3397226 (=> res!1374584 e!2108848)))

(declare-fun b!3397227 () Bool)

(assert (=> b!3397227 (= e!2108848 (inv!50056 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))))))

(assert (= (and d!965790 c!579064) b!3397225))

(assert (= (and d!965790 (not c!579064)) b!3397226))

(assert (= (and b!3397226 (not res!1374584)) b!3397227))

(declare-fun m!3767867 () Bool)

(assert (=> b!3397225 m!3767867))

(declare-fun m!3767869 () Bool)

(assert (=> b!3397227 m!3767869))

(assert (=> b!3396407 d!965790))

(declare-fun d!965794 () Bool)

(assert (=> d!965794 (= (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))) (isBalanced!3371 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))))))

(declare-fun bs!555906 () Bool)

(assert (= bs!555906 d!965794))

(declare-fun m!3767873 () Bool)

(assert (=> bs!555906 m!3767873))

(assert (=> tb!181843 d!965794))

(declare-fun d!965800 () Bool)

(assert (=> d!965800 (= (dropList!1175 lt!1154539 0) (drop!1975 (list!13394 (c!578882 lt!1154539)) 0))))

(declare-fun bs!555909 () Bool)

(assert (= bs!555909 d!965800))

(assert (=> bs!555909 m!3767691))

(assert (=> bs!555909 m!3767691))

(declare-fun m!3767879 () Bool)

(assert (=> bs!555909 m!3767879))

(assert (=> d!965522 d!965800))

(declare-fun d!965804 () Bool)

(assert (=> d!965804 (= (list!13387 (BalanceConc!21941 Empty!11163)) (list!13390 (c!578881 (BalanceConc!21941 Empty!11163))))))

(declare-fun bs!555911 () Bool)

(assert (= bs!555911 d!965804))

(declare-fun m!3767883 () Bool)

(assert (=> bs!555911 m!3767883))

(assert (=> d!965522 d!965804))

(declare-fun d!965808 () Bool)

(assert (=> d!965808 (= (list!13387 lt!1154685) (list!13390 (c!578881 lt!1154685)))))

(declare-fun bs!555912 () Bool)

(assert (= bs!555912 d!965808))

(declare-fun m!3767889 () Bool)

(assert (=> bs!555912 m!3767889))

(assert (=> d!965522 d!965808))

(declare-fun d!965810 () Bool)

(declare-fun lt!1154839 () List!37079)

(assert (=> d!965810 (= lt!1154839 (++!9051 (list!13387 (BalanceConc!21941 Empty!11163)) (printList!1531 thiss!18206 (dropList!1175 lt!1154539 0))))))

(declare-fun e!2108853 () List!37079)

(assert (=> d!965810 (= lt!1154839 e!2108853)))

(declare-fun c!579067 () Bool)

(assert (=> d!965810 (= c!579067 ((_ is Cons!36956) (dropList!1175 lt!1154539 0)))))

(assert (=> d!965810 (= (printListTailRec!658 thiss!18206 (dropList!1175 lt!1154539 0) (list!13387 (BalanceConc!21941 Empty!11163))) lt!1154839)))

(declare-fun b!3397234 () Bool)

(assert (=> b!3397234 (= e!2108853 (printListTailRec!658 thiss!18206 (t!265289 (dropList!1175 lt!1154539 0)) (++!9051 (list!13387 (BalanceConc!21941 Empty!11163)) (list!13387 (charsOf!3408 (h!42376 (dropList!1175 lt!1154539 0)))))))))

(declare-fun lt!1154835 () List!37079)

(assert (=> b!3397234 (= lt!1154835 (list!13387 (charsOf!3408 (h!42376 (dropList!1175 lt!1154539 0)))))))

(declare-fun lt!1154836 () List!37079)

(assert (=> b!3397234 (= lt!1154836 (printList!1531 thiss!18206 (t!265289 (dropList!1175 lt!1154539 0))))))

(declare-fun lt!1154838 () Unit!52122)

(assert (=> b!3397234 (= lt!1154838 (lemmaConcatAssociativity!1894 (list!13387 (BalanceConc!21941 Empty!11163)) lt!1154835 lt!1154836))))

(assert (=> b!3397234 (= (++!9051 (++!9051 (list!13387 (BalanceConc!21941 Empty!11163)) lt!1154835) lt!1154836) (++!9051 (list!13387 (BalanceConc!21941 Empty!11163)) (++!9051 lt!1154835 lt!1154836)))))

(declare-fun lt!1154837 () Unit!52122)

(assert (=> b!3397234 (= lt!1154837 lt!1154838)))

(declare-fun b!3397235 () Bool)

(assert (=> b!3397235 (= e!2108853 (list!13387 (BalanceConc!21941 Empty!11163)))))

(assert (= (and d!965810 c!579067) b!3397234))

(assert (= (and d!965810 (not c!579067)) b!3397235))

(assert (=> d!965810 m!3767171))

(declare-fun m!3767891 () Bool)

(assert (=> d!965810 m!3767891))

(assert (=> d!965810 m!3767169))

(assert (=> d!965810 m!3767891))

(declare-fun m!3767893 () Bool)

(assert (=> d!965810 m!3767893))

(declare-fun m!3767895 () Bool)

(assert (=> b!3397234 m!3767895))

(declare-fun m!3767897 () Bool)

(assert (=> b!3397234 m!3767897))

(declare-fun m!3767899 () Bool)

(assert (=> b!3397234 m!3767899))

(declare-fun m!3767901 () Bool)

(assert (=> b!3397234 m!3767901))

(declare-fun m!3767903 () Bool)

(assert (=> b!3397234 m!3767903))

(declare-fun m!3767905 () Bool)

(assert (=> b!3397234 m!3767905))

(declare-fun m!3767907 () Bool)

(assert (=> b!3397234 m!3767907))

(declare-fun m!3767909 () Bool)

(assert (=> b!3397234 m!3767909))

(assert (=> b!3397234 m!3767169))

(assert (=> b!3397234 m!3767895))

(assert (=> b!3397234 m!3767169))

(assert (=> b!3397234 m!3767901))

(declare-fun m!3767911 () Bool)

(assert (=> b!3397234 m!3767911))

(assert (=> b!3397234 m!3767903))

(assert (=> b!3397234 m!3767169))

(assert (=> b!3397234 m!3767905))

(assert (=> b!3397234 m!3767907))

(assert (=> b!3397234 m!3767169))

(declare-fun m!3767913 () Bool)

(assert (=> b!3397234 m!3767913))

(assert (=> d!965522 d!965810))

(declare-fun d!965812 () Bool)

(declare-fun lt!1154842 () Int)

(declare-fun size!27978 (List!37080) Int)

(assert (=> d!965812 (= lt!1154842 (size!27978 (list!13391 lt!1154539)))))

(declare-fun size!27979 (Conc!11164) Int)

(assert (=> d!965812 (= lt!1154842 (size!27979 (c!578882 lt!1154539)))))

(assert (=> d!965812 (= (size!27974 lt!1154539) lt!1154842)))

(declare-fun bs!555913 () Bool)

(assert (= bs!555913 d!965812))

(assert (=> bs!555913 m!3767181))

(assert (=> bs!555913 m!3767181))

(declare-fun m!3767915 () Bool)

(assert (=> bs!555913 m!3767915))

(declare-fun m!3767917 () Bool)

(assert (=> bs!555913 m!3767917))

(assert (=> d!965522 d!965812))

(declare-fun b!3397238 () Bool)

(declare-fun e!2108855 () List!37079)

(assert (=> b!3397238 (= e!2108855 (list!13395 (xs!14321 (c!578881 (charsOf!3408 separatorToken!241)))))))

(declare-fun b!3397236 () Bool)

(declare-fun e!2108854 () List!37079)

(assert (=> b!3397236 (= e!2108854 Nil!36955)))

(declare-fun d!965814 () Bool)

(declare-fun c!579068 () Bool)

(assert (=> d!965814 (= c!579068 ((_ is Empty!11163) (c!578881 (charsOf!3408 separatorToken!241))))))

(assert (=> d!965814 (= (list!13390 (c!578881 (charsOf!3408 separatorToken!241))) e!2108854)))

(declare-fun b!3397237 () Bool)

(assert (=> b!3397237 (= e!2108854 e!2108855)))

(declare-fun c!579069 () Bool)

(assert (=> b!3397237 (= c!579069 ((_ is Leaf!17471) (c!578881 (charsOf!3408 separatorToken!241))))))

(declare-fun b!3397239 () Bool)

(assert (=> b!3397239 (= e!2108855 (++!9051 (list!13390 (left!28810 (c!578881 (charsOf!3408 separatorToken!241)))) (list!13390 (right!29140 (c!578881 (charsOf!3408 separatorToken!241))))))))

(assert (= (and d!965814 c!579068) b!3397236))

(assert (= (and d!965814 (not c!579068)) b!3397237))

(assert (= (and b!3397237 c!579069) b!3397238))

(assert (= (and b!3397237 (not c!579069)) b!3397239))

(declare-fun m!3767919 () Bool)

(assert (=> b!3397238 m!3767919))

(declare-fun m!3767921 () Bool)

(assert (=> b!3397239 m!3767921))

(declare-fun m!3767923 () Bool)

(assert (=> b!3397239 m!3767923))

(assert (=> b!3397239 m!3767921))

(assert (=> b!3397239 m!3767923))

(declare-fun m!3767925 () Bool)

(assert (=> b!3397239 m!3767925))

(assert (=> d!965364 d!965814))

(declare-fun d!965816 () Bool)

(declare-fun lt!1154845 () Int)

(assert (=> d!965816 (= lt!1154845 (size!27973 (list!13387 (_2!21421 lt!1154662))))))

(declare-fun size!27980 (Conc!11163) Int)

(assert (=> d!965816 (= lt!1154845 (size!27980 (c!578881 (_2!21421 lt!1154662))))))

(assert (=> d!965816 (= (size!27975 (_2!21421 lt!1154662)) lt!1154845)))

(declare-fun bs!555914 () Bool)

(assert (= bs!555914 d!965816))

(assert (=> bs!555914 m!3767137))

(assert (=> bs!555914 m!3767137))

(declare-fun m!3767927 () Bool)

(assert (=> bs!555914 m!3767927))

(declare-fun m!3767929 () Bool)

(assert (=> bs!555914 m!3767929))

(assert (=> b!3396742 d!965816))

(declare-fun d!965818 () Bool)

(declare-fun lt!1154846 () Int)

(assert (=> d!965818 (= lt!1154846 (size!27973 (list!13387 (seqFromList!3841 lt!1154540))))))

(assert (=> d!965818 (= lt!1154846 (size!27980 (c!578881 (seqFromList!3841 lt!1154540))))))

(assert (=> d!965818 (= (size!27975 (seqFromList!3841 lt!1154540)) lt!1154846)))

(declare-fun bs!555915 () Bool)

(assert (= bs!555915 d!965818))

(assert (=> bs!555915 m!3766549))

(assert (=> bs!555915 m!3767139))

(assert (=> bs!555915 m!3767139))

(declare-fun m!3767931 () Bool)

(assert (=> bs!555915 m!3767931))

(declare-fun m!3767933 () Bool)

(assert (=> bs!555915 m!3767933))

(assert (=> b!3396742 d!965818))

(declare-fun d!965820 () Bool)

(declare-fun lt!1154847 () Int)

(assert (=> d!965820 (= lt!1154847 (size!27978 (list!13391 (_1!21421 lt!1154662))))))

(assert (=> d!965820 (= lt!1154847 (size!27979 (c!578882 (_1!21421 lt!1154662))))))

(assert (=> d!965820 (= (size!27974 (_1!21421 lt!1154662)) lt!1154847)))

(declare-fun bs!555916 () Bool)

(assert (= bs!555916 d!965820))

(assert (=> bs!555916 m!3767147))

(assert (=> bs!555916 m!3767147))

(declare-fun m!3767935 () Bool)

(assert (=> bs!555916 m!3767935))

(declare-fun m!3767937 () Bool)

(assert (=> bs!555916 m!3767937))

(assert (=> d!965508 d!965820))

(declare-fun b!3397341 () Bool)

(declare-fun e!2108914 () tuple2!36574)

(declare-fun lt!1154949 () BalanceConc!21940)

(assert (=> b!3397341 (= e!2108914 (tuple2!36575 (BalanceConc!21943 Empty!11164) lt!1154949))))

(declare-fun b!3397342 () Bool)

(declare-fun e!2108916 () tuple2!36574)

(assert (=> b!3397342 (= e!2108916 (tuple2!36575 (BalanceConc!21943 Empty!11164) (seqFromList!3841 lt!1154540)))))

(declare-fun b!3397343 () Bool)

(declare-datatypes ((tuple2!36582 0))(
  ( (tuple2!36583 (_1!21425 Token!10154) (_2!21425 BalanceConc!21940)) )
))
(declare-datatypes ((Option!7432 0))(
  ( (None!7431) (Some!7431 (v!36595 tuple2!36582)) )
))
(declare-fun lt!1154976 () Option!7432)

(declare-fun lt!1154977 () tuple2!36574)

(declare-fun lexRec!734 (LexerInterface!4983 List!37081 BalanceConc!21940) tuple2!36574)

(assert (=> b!3397343 (= lt!1154977 (lexRec!734 thiss!18206 rules!2135 (_2!21425 (v!36595 lt!1154976))))))

(declare-fun prepend!1240 (BalanceConc!21942 Token!10154) BalanceConc!21942)

(assert (=> b!3397343 (= e!2108914 (tuple2!36575 (prepend!1240 (_1!21421 lt!1154977) (_1!21425 (v!36595 lt!1154976))) (_2!21421 lt!1154977)))))

(declare-fun b!3397344 () Bool)

(declare-fun lt!1154956 () BalanceConc!21940)

(declare-fun lt!1154974 () Option!7432)

(declare-fun e!2108915 () tuple2!36574)

(declare-fun append!940 (BalanceConc!21942 Token!10154) BalanceConc!21942)

(assert (=> b!3397344 (= e!2108915 (lexTailRecV2!1026 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540) lt!1154956 (_2!21425 (v!36595 lt!1154974)) (append!940 (BalanceConc!21943 Empty!11164) (_1!21425 (v!36595 lt!1154974)))))))

(declare-fun lt!1154975 () tuple2!36574)

(assert (=> b!3397344 (= lt!1154975 (lexRec!734 thiss!18206 rules!2135 (_2!21425 (v!36595 lt!1154974))))))

(declare-fun lt!1154953 () List!37079)

(assert (=> b!3397344 (= lt!1154953 (list!13387 (BalanceConc!21941 Empty!11163)))))

(declare-fun lt!1154961 () List!37079)

(assert (=> b!3397344 (= lt!1154961 (list!13387 (charsOf!3408 (_1!21425 (v!36595 lt!1154974)))))))

(declare-fun lt!1154971 () List!37079)

(assert (=> b!3397344 (= lt!1154971 (list!13387 (_2!21425 (v!36595 lt!1154974))))))

(declare-fun lt!1154957 () Unit!52122)

(assert (=> b!3397344 (= lt!1154957 (lemmaConcatAssociativity!1894 lt!1154953 lt!1154961 lt!1154971))))

(assert (=> b!3397344 (= (++!9051 (++!9051 lt!1154953 lt!1154961) lt!1154971) (++!9051 lt!1154953 (++!9051 lt!1154961 lt!1154971)))))

(declare-fun lt!1154967 () Unit!52122)

(assert (=> b!3397344 (= lt!1154967 lt!1154957)))

(declare-fun lt!1154952 () Option!7432)

(declare-fun maxPrefixZipperSequence!1127 (LexerInterface!4983 List!37081 BalanceConc!21940) Option!7432)

(assert (=> b!3397344 (= lt!1154952 (maxPrefixZipperSequence!1127 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540)))))

(declare-fun c!579108 () Bool)

(assert (=> b!3397344 (= c!579108 ((_ is Some!7431) lt!1154952))))

(assert (=> b!3397344 (= (lexRec!734 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540)) e!2108916)))

(declare-fun lt!1154979 () Unit!52122)

(declare-fun Unit!52124 () Unit!52122)

(assert (=> b!3397344 (= lt!1154979 Unit!52124)))

(declare-fun lt!1154954 () List!37080)

(assert (=> b!3397344 (= lt!1154954 (list!13391 (BalanceConc!21943 Empty!11164)))))

(declare-fun lt!1154950 () List!37080)

(assert (=> b!3397344 (= lt!1154950 (Cons!36956 (_1!21425 (v!36595 lt!1154974)) Nil!36956))))

(declare-fun lt!1154964 () List!37080)

(assert (=> b!3397344 (= lt!1154964 (list!13391 (_1!21421 lt!1154975)))))

(declare-fun lt!1154965 () Unit!52122)

(declare-fun lemmaConcatAssociativity!1895 (List!37080 List!37080 List!37080) Unit!52122)

(assert (=> b!3397344 (= lt!1154965 (lemmaConcatAssociativity!1895 lt!1154954 lt!1154950 lt!1154964))))

(declare-fun ++!9055 (List!37080 List!37080) List!37080)

(assert (=> b!3397344 (= (++!9055 (++!9055 lt!1154954 lt!1154950) lt!1154964) (++!9055 lt!1154954 (++!9055 lt!1154950 lt!1154964)))))

(declare-fun lt!1154963 () Unit!52122)

(assert (=> b!3397344 (= lt!1154963 lt!1154965)))

(declare-fun lt!1154968 () List!37079)

(assert (=> b!3397344 (= lt!1154968 (++!9051 (list!13387 (BalanceConc!21941 Empty!11163)) (list!13387 (charsOf!3408 (_1!21425 (v!36595 lt!1154974))))))))

(declare-fun lt!1154973 () List!37079)

(assert (=> b!3397344 (= lt!1154973 (list!13387 (_2!21425 (v!36595 lt!1154974))))))

(declare-fun lt!1154972 () List!37080)

(assert (=> b!3397344 (= lt!1154972 (list!13391 (append!940 (BalanceConc!21943 Empty!11164) (_1!21425 (v!36595 lt!1154974)))))))

(declare-fun lt!1154946 () Unit!52122)

(declare-fun lemmaLexThenLexPrefix!499 (LexerInterface!4983 List!37081 List!37079 List!37079 List!37080 List!37080 List!37079) Unit!52122)

(assert (=> b!3397344 (= lt!1154946 (lemmaLexThenLexPrefix!499 thiss!18206 rules!2135 lt!1154968 lt!1154973 lt!1154972 (list!13391 (_1!21421 lt!1154975)) (list!13387 (_2!21421 lt!1154975))))))

(assert (=> b!3397344 (= (lexList!1418 thiss!18206 rules!2135 lt!1154968) (tuple2!36579 lt!1154972 Nil!36955))))

(declare-fun lt!1154960 () Unit!52122)

(assert (=> b!3397344 (= lt!1154960 lt!1154946)))

(assert (=> b!3397344 (= lt!1154949 (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (_1!21425 (v!36595 lt!1154974)))))))

(assert (=> b!3397344 (= lt!1154976 (maxPrefixZipperSequence!1127 thiss!18206 rules!2135 lt!1154949))))

(declare-fun c!579109 () Bool)

(assert (=> b!3397344 (= c!579109 ((_ is Some!7431) lt!1154976))))

(assert (=> b!3397344 (= (lexRec!734 thiss!18206 rules!2135 (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (_1!21425 (v!36595 lt!1154974))))) e!2108914)))

(declare-fun lt!1154970 () Unit!52122)

(declare-fun Unit!52125 () Unit!52122)

(assert (=> b!3397344 (= lt!1154970 Unit!52125)))

(assert (=> b!3397344 (= lt!1154956 (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (_1!21425 (v!36595 lt!1154974)))))))

(declare-fun lt!1154969 () List!37079)

(assert (=> b!3397344 (= lt!1154969 (list!13387 lt!1154956))))

(declare-fun lt!1154962 () List!37079)

(assert (=> b!3397344 (= lt!1154962 (list!13387 (_2!21425 (v!36595 lt!1154974))))))

(declare-fun lt!1154959 () Unit!52122)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!581 (List!37079 List!37079) Unit!52122)

(assert (=> b!3397344 (= lt!1154959 (lemmaConcatTwoListThenFSndIsSuffix!581 lt!1154969 lt!1154962))))

(declare-fun isSuffix!896 (List!37079 List!37079) Bool)

(assert (=> b!3397344 (isSuffix!896 lt!1154962 (++!9051 lt!1154969 lt!1154962))))

(declare-fun lt!1154947 () Unit!52122)

(assert (=> b!3397344 (= lt!1154947 lt!1154959)))

(declare-fun lt!1154951 () tuple2!36574)

(declare-fun b!3397345 () Bool)

(assert (=> b!3397345 (= lt!1154951 (lexRec!734 thiss!18206 rules!2135 (_2!21425 (v!36595 lt!1154952))))))

(assert (=> b!3397345 (= e!2108916 (tuple2!36575 (prepend!1240 (_1!21421 lt!1154951) (_1!21425 (v!36595 lt!1154952))) (_2!21421 lt!1154951)))))

(declare-fun b!3397346 () Bool)

(assert (=> b!3397346 (= e!2108915 (tuple2!36575 (BalanceConc!21943 Empty!11164) (seqFromList!3841 lt!1154540)))))

(declare-fun b!3397347 () Bool)

(declare-fun e!2108913 () Bool)

(declare-fun lt!1154958 () tuple2!36574)

(assert (=> b!3397347 (= e!2108913 (= (list!13387 (_2!21421 lt!1154958)) (list!13387 (_2!21421 (lexRec!734 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))))))

(declare-fun d!965822 () Bool)

(assert (=> d!965822 e!2108913))

(declare-fun res!1374612 () Bool)

(assert (=> d!965822 (=> (not res!1374612) (not e!2108913))))

(assert (=> d!965822 (= res!1374612 (= (list!13391 (_1!21421 lt!1154958)) (list!13391 (_1!21421 (lexRec!734 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))))))

(assert (=> d!965822 (= lt!1154958 e!2108915)))

(declare-fun c!579107 () Bool)

(assert (=> d!965822 (= c!579107 ((_ is Some!7431) lt!1154974))))

(declare-fun maxPrefixZipperSequenceV2!521 (LexerInterface!4983 List!37081 BalanceConc!21940 BalanceConc!21940) Option!7432)

(assert (=> d!965822 (= lt!1154974 (maxPrefixZipperSequenceV2!521 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540) (seqFromList!3841 lt!1154540)))))

(declare-fun lt!1154955 () Unit!52122)

(declare-fun lt!1154948 () Unit!52122)

(assert (=> d!965822 (= lt!1154955 lt!1154948)))

(declare-fun lt!1154966 () List!37079)

(declare-fun lt!1154978 () List!37079)

(assert (=> d!965822 (isSuffix!896 lt!1154966 (++!9051 lt!1154978 lt!1154966))))

(assert (=> d!965822 (= lt!1154948 (lemmaConcatTwoListThenFSndIsSuffix!581 lt!1154978 lt!1154966))))

(assert (=> d!965822 (= lt!1154966 (list!13387 (seqFromList!3841 lt!1154540)))))

(assert (=> d!965822 (= lt!1154978 (list!13387 (BalanceConc!21941 Empty!11163)))))

(assert (=> d!965822 (= (lexTailRecV2!1026 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540) (BalanceConc!21941 Empty!11163) (seqFromList!3841 lt!1154540) (BalanceConc!21943 Empty!11164)) lt!1154958)))

(assert (= (and d!965822 c!579107) b!3397344))

(assert (= (and d!965822 (not c!579107)) b!3397346))

(assert (= (and b!3397344 c!579108) b!3397345))

(assert (= (and b!3397344 (not c!579108)) b!3397342))

(assert (= (and b!3397344 c!579109) b!3397343))

(assert (= (and b!3397344 (not c!579109)) b!3397341))

(assert (= (and d!965822 res!1374612) b!3397347))

(declare-fun m!3768197 () Bool)

(assert (=> b!3397343 m!3768197))

(declare-fun m!3768199 () Bool)

(assert (=> b!3397343 m!3768199))

(declare-fun m!3768201 () Bool)

(assert (=> d!965822 m!3768201))

(assert (=> d!965822 m!3766549))

(assert (=> d!965822 m!3767139))

(declare-fun m!3768203 () Bool)

(assert (=> d!965822 m!3768203))

(declare-fun m!3768205 () Bool)

(assert (=> d!965822 m!3768205))

(declare-fun m!3768207 () Bool)

(assert (=> d!965822 m!3768207))

(assert (=> d!965822 m!3768205))

(assert (=> d!965822 m!3766549))

(assert (=> d!965822 m!3766549))

(declare-fun m!3768209 () Bool)

(assert (=> d!965822 m!3768209))

(assert (=> d!965822 m!3767169))

(declare-fun m!3768211 () Bool)

(assert (=> d!965822 m!3768211))

(assert (=> d!965822 m!3766549))

(declare-fun m!3768213 () Bool)

(assert (=> d!965822 m!3768213))

(declare-fun m!3768215 () Bool)

(assert (=> b!3397344 m!3768215))

(declare-fun m!3768217 () Bool)

(assert (=> b!3397344 m!3768217))

(declare-fun m!3768219 () Bool)

(assert (=> b!3397344 m!3768219))

(declare-fun m!3768221 () Bool)

(assert (=> b!3397344 m!3768221))

(assert (=> b!3397344 m!3766549))

(declare-fun m!3768223 () Bool)

(assert (=> b!3397344 m!3768223))

(declare-fun m!3768225 () Bool)

(assert (=> b!3397344 m!3768225))

(declare-fun m!3768227 () Bool)

(assert (=> b!3397344 m!3768227))

(declare-fun m!3768229 () Bool)

(assert (=> b!3397344 m!3768229))

(assert (=> b!3397344 m!3768229))

(declare-fun m!3768231 () Bool)

(assert (=> b!3397344 m!3768231))

(declare-fun m!3768233 () Bool)

(assert (=> b!3397344 m!3768233))

(declare-fun m!3768235 () Bool)

(assert (=> b!3397344 m!3768235))

(declare-fun m!3768237 () Bool)

(assert (=> b!3397344 m!3768237))

(declare-fun m!3768239 () Bool)

(assert (=> b!3397344 m!3768239))

(declare-fun m!3768241 () Bool)

(assert (=> b!3397344 m!3768241))

(declare-fun m!3768243 () Bool)

(assert (=> b!3397344 m!3768243))

(declare-fun m!3768245 () Bool)

(assert (=> b!3397344 m!3768245))

(assert (=> b!3397344 m!3768237))

(assert (=> b!3397344 m!3768229))

(declare-fun m!3768247 () Bool)

(assert (=> b!3397344 m!3768247))

(declare-fun m!3768249 () Bool)

(assert (=> b!3397344 m!3768249))

(assert (=> b!3397344 m!3767169))

(declare-fun m!3768251 () Bool)

(assert (=> b!3397344 m!3768251))

(assert (=> b!3397344 m!3768251))

(declare-fun m!3768253 () Bool)

(assert (=> b!3397344 m!3768253))

(declare-fun m!3768255 () Bool)

(assert (=> b!3397344 m!3768255))

(declare-fun m!3768257 () Bool)

(assert (=> b!3397344 m!3768257))

(assert (=> b!3397344 m!3768223))

(declare-fun m!3768259 () Bool)

(assert (=> b!3397344 m!3768259))

(assert (=> b!3397344 m!3768217))

(declare-fun m!3768261 () Bool)

(assert (=> b!3397344 m!3768261))

(assert (=> b!3397344 m!3768223))

(declare-fun m!3768263 () Bool)

(assert (=> b!3397344 m!3768263))

(assert (=> b!3397344 m!3768241))

(assert (=> b!3397344 m!3768255))

(declare-fun m!3768265 () Bool)

(assert (=> b!3397344 m!3768265))

(assert (=> b!3397344 m!3767169))

(assert (=> b!3397344 m!3768247))

(declare-fun m!3768267 () Bool)

(assert (=> b!3397344 m!3768267))

(assert (=> b!3397344 m!3768231))

(declare-fun m!3768269 () Bool)

(assert (=> b!3397344 m!3768269))

(assert (=> b!3397344 m!3768219))

(declare-fun m!3768271 () Bool)

(assert (=> b!3397344 m!3768271))

(assert (=> b!3397344 m!3766549))

(assert (=> b!3397344 m!3768213))

(assert (=> b!3397344 m!3766549))

(declare-fun m!3768273 () Bool)

(assert (=> b!3397344 m!3768273))

(assert (=> b!3397344 m!3768257))

(declare-fun m!3768275 () Bool)

(assert (=> b!3397344 m!3768275))

(declare-fun m!3768277 () Bool)

(assert (=> b!3397347 m!3768277))

(assert (=> b!3397347 m!3766549))

(assert (=> b!3397347 m!3768213))

(declare-fun m!3768279 () Bool)

(assert (=> b!3397347 m!3768279))

(declare-fun m!3768281 () Bool)

(assert (=> b!3397345 m!3768281))

(declare-fun m!3768283 () Bool)

(assert (=> b!3397345 m!3768283))

(assert (=> d!965508 d!965822))

(declare-fun d!965946 () Bool)

(declare-fun c!579110 () Bool)

(assert (=> d!965946 (= c!579110 ((_ is Node!11163) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))))))

(declare-fun e!2108917 () Bool)

(assert (=> d!965946 (= (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))) e!2108917)))

(declare-fun b!3397348 () Bool)

(assert (=> b!3397348 (= e!2108917 (inv!50055 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))))))

(declare-fun b!3397349 () Bool)

(declare-fun e!2108918 () Bool)

(assert (=> b!3397349 (= e!2108917 e!2108918)))

(declare-fun res!1374613 () Bool)

(assert (=> b!3397349 (= res!1374613 (not ((_ is Leaf!17471) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))))))))

(assert (=> b!3397349 (=> res!1374613 e!2108918)))

(declare-fun b!3397350 () Bool)

(assert (=> b!3397350 (= e!2108918 (inv!50056 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))))))

(assert (= (and d!965946 c!579110) b!3397348))

(assert (= (and d!965946 (not c!579110)) b!3397349))

(assert (= (and b!3397349 (not res!1374613)) b!3397350))

(declare-fun m!3768285 () Bool)

(assert (=> b!3397348 m!3768285))

(declare-fun m!3768287 () Bool)

(assert (=> b!3397350 m!3768287))

(assert (=> b!3396398 d!965946))

(declare-fun d!965948 () Bool)

(assert (=> d!965948 (= (head!7251 (drop!1975 lt!1154686 0)) (h!42376 (drop!1975 lt!1154686 0)))))

(assert (=> b!3396760 d!965948))

(declare-fun b!3397381 () Bool)

(declare-fun e!2108938 () List!37080)

(declare-fun e!2108936 () List!37080)

(assert (=> b!3397381 (= e!2108938 e!2108936)))

(declare-fun c!579126 () Bool)

(assert (=> b!3397381 (= c!579126 (<= 0 0))))

(declare-fun b!3397382 () Bool)

(assert (=> b!3397382 (= e!2108936 (drop!1975 (t!265289 lt!1154686) (- 0 1)))))

(declare-fun d!965950 () Bool)

(declare-fun e!2108939 () Bool)

(assert (=> d!965950 e!2108939))

(declare-fun res!1374616 () Bool)

(assert (=> d!965950 (=> (not res!1374616) (not e!2108939))))

(declare-fun lt!1155040 () List!37080)

(assert (=> d!965950 (= res!1374616 (= ((_ map implies) (content!5109 lt!1155040) (content!5109 lt!1154686)) ((as const (InoxSet Token!10154)) true)))))

(assert (=> d!965950 (= lt!1155040 e!2108938)))

(declare-fun c!579128 () Bool)

(assert (=> d!965950 (= c!579128 ((_ is Nil!36956) lt!1154686))))

(assert (=> d!965950 (= (drop!1975 lt!1154686 0) lt!1155040)))

(declare-fun bm!245790 () Bool)

(declare-fun call!245795 () Int)

(assert (=> bm!245790 (= call!245795 (size!27978 lt!1154686))))

(declare-fun b!3397383 () Bool)

(declare-fun e!2108935 () Int)

(assert (=> b!3397383 (= e!2108939 (= (size!27978 lt!1155040) e!2108935))))

(declare-fun c!579127 () Bool)

(assert (=> b!3397383 (= c!579127 (<= 0 0))))

(declare-fun b!3397384 () Bool)

(assert (=> b!3397384 (= e!2108935 call!245795)))

(declare-fun b!3397385 () Bool)

(declare-fun e!2108937 () Int)

(assert (=> b!3397385 (= e!2108937 (- call!245795 0))))

(declare-fun b!3397386 () Bool)

(assert (=> b!3397386 (= e!2108936 lt!1154686)))

(declare-fun b!3397387 () Bool)

(assert (=> b!3397387 (= e!2108935 e!2108937)))

(declare-fun c!579125 () Bool)

(assert (=> b!3397387 (= c!579125 (>= 0 call!245795))))

(declare-fun b!3397388 () Bool)

(assert (=> b!3397388 (= e!2108937 0)))

(declare-fun b!3397389 () Bool)

(assert (=> b!3397389 (= e!2108938 Nil!36956)))

(assert (= (and d!965950 c!579128) b!3397389))

(assert (= (and d!965950 (not c!579128)) b!3397381))

(assert (= (and b!3397381 c!579126) b!3397386))

(assert (= (and b!3397381 (not c!579126)) b!3397382))

(assert (= (and d!965950 res!1374616) b!3397383))

(assert (= (and b!3397383 c!579127) b!3397384))

(assert (= (and b!3397383 (not c!579127)) b!3397387))

(assert (= (and b!3397387 c!579125) b!3397388))

(assert (= (and b!3397387 (not c!579125)) b!3397385))

(assert (= (or b!3397384 b!3397387 b!3397385) bm!245790))

(declare-fun m!3768289 () Bool)

(assert (=> b!3397382 m!3768289))

(declare-fun m!3768291 () Bool)

(assert (=> d!965950 m!3768291))

(declare-fun m!3768293 () Bool)

(assert (=> d!965950 m!3768293))

(declare-fun m!3768295 () Bool)

(assert (=> bm!245790 m!3768295))

(declare-fun m!3768297 () Bool)

(assert (=> b!3397383 m!3768297))

(assert (=> b!3396760 d!965950))

(declare-fun d!965952 () Bool)

(declare-fun lt!1155053 () Token!10154)

(assert (=> d!965952 (= lt!1155053 (apply!8619 (list!13391 lt!1154539) 0))))

(declare-fun apply!8621 (Conc!11164 Int) Token!10154)

(assert (=> d!965952 (= lt!1155053 (apply!8621 (c!578882 lt!1154539) 0))))

(declare-fun e!2108944 () Bool)

(assert (=> d!965952 e!2108944))

(declare-fun res!1374621 () Bool)

(assert (=> d!965952 (=> (not res!1374621) (not e!2108944))))

(assert (=> d!965952 (= res!1374621 (<= 0 0))))

(assert (=> d!965952 (= (apply!8618 lt!1154539 0) lt!1155053)))

(declare-fun b!3397394 () Bool)

(assert (=> b!3397394 (= e!2108944 (< 0 (size!27974 lt!1154539)))))

(assert (= (and d!965952 res!1374621) b!3397394))

(assert (=> d!965952 m!3767181))

(assert (=> d!965952 m!3767181))

(declare-fun m!3768299 () Bool)

(assert (=> d!965952 m!3768299))

(declare-fun m!3768301 () Bool)

(assert (=> d!965952 m!3768301))

(assert (=> b!3397394 m!3767175))

(assert (=> b!3396760 d!965952))

(declare-fun d!965954 () Bool)

(declare-fun lt!1155059 () BalanceConc!21940)

(assert (=> d!965954 (= (list!13387 lt!1155059) (printListTailRec!658 thiss!18206 (dropList!1175 lt!1154539 (+ 0 1)) (list!13387 (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (apply!8618 lt!1154539 0))))))))

(declare-fun e!2108945 () BalanceConc!21940)

(assert (=> d!965954 (= lt!1155059 e!2108945)))

(declare-fun c!579129 () Bool)

(assert (=> d!965954 (= c!579129 (>= (+ 0 1) (size!27974 lt!1154539)))))

(declare-fun e!2108946 () Bool)

(assert (=> d!965954 e!2108946))

(declare-fun res!1374622 () Bool)

(assert (=> d!965954 (=> (not res!1374622) (not e!2108946))))

(assert (=> d!965954 (= res!1374622 (>= (+ 0 1) 0))))

(assert (=> d!965954 (= (printTailRec!1478 thiss!18206 lt!1154539 (+ 0 1) (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (apply!8618 lt!1154539 0)))) lt!1155059)))

(declare-fun b!3397395 () Bool)

(assert (=> b!3397395 (= e!2108946 (<= (+ 0 1) (size!27974 lt!1154539)))))

(declare-fun b!3397396 () Bool)

(assert (=> b!3397396 (= e!2108945 (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (apply!8618 lt!1154539 0))))))

(declare-fun b!3397397 () Bool)

(assert (=> b!3397397 (= e!2108945 (printTailRec!1478 thiss!18206 lt!1154539 (+ 0 1 1) (++!9053 (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (apply!8618 lt!1154539 0))) (charsOf!3408 (apply!8618 lt!1154539 (+ 0 1))))))))

(declare-fun lt!1155060 () List!37080)

(assert (=> b!3397397 (= lt!1155060 (list!13391 lt!1154539))))

(declare-fun lt!1155054 () Unit!52122)

(assert (=> b!3397397 (= lt!1155054 (lemmaDropApply!1133 lt!1155060 (+ 0 1)))))

(assert (=> b!3397397 (= (head!7251 (drop!1975 lt!1155060 (+ 0 1))) (apply!8619 lt!1155060 (+ 0 1)))))

(declare-fun lt!1155056 () Unit!52122)

(assert (=> b!3397397 (= lt!1155056 lt!1155054)))

(declare-fun lt!1155058 () List!37080)

(assert (=> b!3397397 (= lt!1155058 (list!13391 lt!1154539))))

(declare-fun lt!1155055 () Unit!52122)

(assert (=> b!3397397 (= lt!1155055 (lemmaDropTail!1017 lt!1155058 (+ 0 1)))))

(assert (=> b!3397397 (= (tail!5373 (drop!1975 lt!1155058 (+ 0 1))) (drop!1975 lt!1155058 (+ 0 1 1)))))

(declare-fun lt!1155057 () Unit!52122)

(assert (=> b!3397397 (= lt!1155057 lt!1155055)))

(assert (= (and d!965954 res!1374622) b!3397395))

(assert (= (and d!965954 c!579129) b!3397396))

(assert (= (and d!965954 (not c!579129)) b!3397397))

(declare-fun m!3768303 () Bool)

(assert (=> d!965954 m!3768303))

(assert (=> d!965954 m!3767193))

(declare-fun m!3768305 () Bool)

(assert (=> d!965954 m!3768305))

(declare-fun m!3768307 () Bool)

(assert (=> d!965954 m!3768307))

(assert (=> d!965954 m!3768305))

(declare-fun m!3768309 () Bool)

(assert (=> d!965954 m!3768309))

(assert (=> d!965954 m!3768307))

(assert (=> d!965954 m!3767175))

(assert (=> b!3397395 m!3767175))

(declare-fun m!3768311 () Bool)

(assert (=> b!3397397 m!3768311))

(declare-fun m!3768313 () Bool)

(assert (=> b!3397397 m!3768313))

(assert (=> b!3397397 m!3767181))

(declare-fun m!3768315 () Bool)

(assert (=> b!3397397 m!3768315))

(declare-fun m!3768317 () Bool)

(assert (=> b!3397397 m!3768317))

(declare-fun m!3768319 () Bool)

(assert (=> b!3397397 m!3768319))

(declare-fun m!3768321 () Bool)

(assert (=> b!3397397 m!3768321))

(assert (=> b!3397397 m!3768321))

(declare-fun m!3768323 () Bool)

(assert (=> b!3397397 m!3768323))

(declare-fun m!3768325 () Bool)

(assert (=> b!3397397 m!3768325))

(declare-fun m!3768327 () Bool)

(assert (=> b!3397397 m!3768327))

(declare-fun m!3768329 () Bool)

(assert (=> b!3397397 m!3768329))

(assert (=> b!3397397 m!3768315))

(declare-fun m!3768331 () Bool)

(assert (=> b!3397397 m!3768331))

(declare-fun m!3768333 () Bool)

(assert (=> b!3397397 m!3768333))

(assert (=> b!3397397 m!3768311))

(assert (=> b!3397397 m!3767193))

(assert (=> b!3397397 m!3768317))

(assert (=> b!3397397 m!3768325))

(assert (=> b!3396760 d!965954))

(declare-fun d!965956 () Bool)

(assert (=> d!965956 (= (head!7251 (drop!1975 lt!1154686 0)) (apply!8619 lt!1154686 0))))

(declare-fun lt!1155063 () Unit!52122)

(declare-fun choose!19700 (List!37080 Int) Unit!52122)

(assert (=> d!965956 (= lt!1155063 (choose!19700 lt!1154686 0))))

(declare-fun e!2108949 () Bool)

(assert (=> d!965956 e!2108949))

(declare-fun res!1374625 () Bool)

(assert (=> d!965956 (=> (not res!1374625) (not e!2108949))))

(assert (=> d!965956 (= res!1374625 (>= 0 0))))

(assert (=> d!965956 (= (lemmaDropApply!1133 lt!1154686 0) lt!1155063)))

(declare-fun b!3397400 () Bool)

(assert (=> b!3397400 (= e!2108949 (< 0 (size!27978 lt!1154686)))))

(assert (= (and d!965956 res!1374625) b!3397400))

(assert (=> d!965956 m!3767177))

(assert (=> d!965956 m!3767177))

(assert (=> d!965956 m!3767179))

(assert (=> d!965956 m!3767199))

(declare-fun m!3768335 () Bool)

(assert (=> d!965956 m!3768335))

(assert (=> b!3397400 m!3768295))

(assert (=> b!3396760 d!965956))

(declare-fun d!965958 () Bool)

(declare-fun lt!1155064 () BalanceConc!21940)

(assert (=> d!965958 (= (list!13387 lt!1155064) (originalCharacters!6108 (apply!8618 lt!1154539 0)))))

(assert (=> d!965958 (= lt!1155064 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0)))) (value!174189 (apply!8618 lt!1154539 0))))))

(assert (=> d!965958 (= (charsOf!3408 (apply!8618 lt!1154539 0)) lt!1155064)))

(declare-fun b_lambda!96795 () Bool)

(assert (=> (not b_lambda!96795) (not d!965958)))

(declare-fun t!265406 () Bool)

(declare-fun tb!181909 () Bool)

(assert (=> (and b!3396822 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0))))) t!265406) tb!181909))

(declare-fun b!3397408 () Bool)

(declare-fun e!2108954 () Bool)

(declare-fun tp!1060288 () Bool)

(assert (=> b!3397408 (= e!2108954 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0)))) (value!174189 (apply!8618 lt!1154539 0))))) tp!1060288))))

(declare-fun result!225510 () Bool)

(assert (=> tb!181909 (= result!225510 (and (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0)))) (value!174189 (apply!8618 lt!1154539 0)))) e!2108954))))

(assert (= tb!181909 b!3397408))

(declare-fun m!3768337 () Bool)

(assert (=> b!3397408 m!3768337))

(declare-fun m!3768339 () Bool)

(assert (=> tb!181909 m!3768339))

(assert (=> d!965958 t!265406))

(declare-fun b_and!236901 () Bool)

(assert (= b_and!236855 (and (=> t!265406 result!225510) b_and!236901)))

(declare-fun t!265408 () Bool)

(declare-fun tb!181911 () Bool)

(assert (=> (and b!3396341 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0))))) t!265408) tb!181911))

(declare-fun result!225512 () Bool)

(assert (= result!225512 result!225510))

(assert (=> d!965958 t!265408))

(declare-fun b_and!236903 () Bool)

(assert (= b_and!236859 (and (=> t!265408 result!225512) b_and!236903)))

(declare-fun tb!181913 () Bool)

(declare-fun t!265410 () Bool)

(assert (=> (and b!3396349 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0))))) t!265410) tb!181913))

(declare-fun result!225514 () Bool)

(assert (= result!225514 result!225510))

(assert (=> d!965958 t!265410))

(declare-fun b_and!236905 () Bool)

(assert (= b_and!236857 (and (=> t!265410 result!225514) b_and!236905)))

(declare-fun tb!181915 () Bool)

(declare-fun t!265412 () Bool)

(assert (=> (and b!3396807 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0))))) t!265412) tb!181915))

(declare-fun result!225516 () Bool)

(assert (= result!225516 result!225510))

(assert (=> d!965958 t!265412))

(declare-fun b_and!236907 () Bool)

(assert (= b_and!236853 (and (=> t!265412 result!225516) b_and!236907)))

(declare-fun tb!181917 () Bool)

(declare-fun t!265414 () Bool)

(assert (=> (and b!3396347 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0))))) t!265414) tb!181917))

(declare-fun result!225518 () Bool)

(assert (= result!225518 result!225510))

(assert (=> d!965958 t!265414))

(declare-fun b_and!236909 () Bool)

(assert (= b_and!236851 (and (=> t!265414 result!225518) b_and!236909)))

(declare-fun m!3768341 () Bool)

(assert (=> d!965958 m!3768341))

(declare-fun m!3768343 () Bool)

(assert (=> d!965958 m!3768343))

(assert (=> b!3396760 d!965958))

(declare-fun b!3397409 () Bool)

(declare-fun e!2108958 () List!37080)

(declare-fun e!2108956 () List!37080)

(assert (=> b!3397409 (= e!2108958 e!2108956)))

(declare-fun c!579134 () Bool)

(assert (=> b!3397409 (= c!579134 (<= (+ 0 1) 0))))

(declare-fun b!3397410 () Bool)

(assert (=> b!3397410 (= e!2108956 (drop!1975 (t!265289 lt!1154684) (- (+ 0 1) 1)))))

(declare-fun d!965960 () Bool)

(declare-fun e!2108959 () Bool)

(assert (=> d!965960 e!2108959))

(declare-fun res!1374627 () Bool)

(assert (=> d!965960 (=> (not res!1374627) (not e!2108959))))

(declare-fun lt!1155099 () List!37080)

(assert (=> d!965960 (= res!1374627 (= ((_ map implies) (content!5109 lt!1155099) (content!5109 lt!1154684)) ((as const (InoxSet Token!10154)) true)))))

(assert (=> d!965960 (= lt!1155099 e!2108958)))

(declare-fun c!579136 () Bool)

(assert (=> d!965960 (= c!579136 ((_ is Nil!36956) lt!1154684))))

(assert (=> d!965960 (= (drop!1975 lt!1154684 (+ 0 1)) lt!1155099)))

(declare-fun bm!245791 () Bool)

(declare-fun call!245796 () Int)

(assert (=> bm!245791 (= call!245796 (size!27978 lt!1154684))))

(declare-fun b!3397411 () Bool)

(declare-fun e!2108955 () Int)

(assert (=> b!3397411 (= e!2108959 (= (size!27978 lt!1155099) e!2108955))))

(declare-fun c!579135 () Bool)

(assert (=> b!3397411 (= c!579135 (<= (+ 0 1) 0))))

(declare-fun b!3397412 () Bool)

(assert (=> b!3397412 (= e!2108955 call!245796)))

(declare-fun b!3397413 () Bool)

(declare-fun e!2108957 () Int)

(assert (=> b!3397413 (= e!2108957 (- call!245796 (+ 0 1)))))

(declare-fun b!3397414 () Bool)

(assert (=> b!3397414 (= e!2108956 lt!1154684)))

(declare-fun b!3397415 () Bool)

(assert (=> b!3397415 (= e!2108955 e!2108957)))

(declare-fun c!579133 () Bool)

(assert (=> b!3397415 (= c!579133 (>= (+ 0 1) call!245796))))

(declare-fun b!3397416 () Bool)

(assert (=> b!3397416 (= e!2108957 0)))

(declare-fun b!3397417 () Bool)

(assert (=> b!3397417 (= e!2108958 Nil!36956)))

(assert (= (and d!965960 c!579136) b!3397417))

(assert (= (and d!965960 (not c!579136)) b!3397409))

(assert (= (and b!3397409 c!579134) b!3397414))

(assert (= (and b!3397409 (not c!579134)) b!3397410))

(assert (= (and d!965960 res!1374627) b!3397411))

(assert (= (and b!3397411 c!579135) b!3397412))

(assert (= (and b!3397411 (not c!579135)) b!3397415))

(assert (= (and b!3397415 c!579133) b!3397416))

(assert (= (and b!3397415 (not c!579133)) b!3397413))

(assert (= (or b!3397412 b!3397415 b!3397413) bm!245791))

(declare-fun m!3768345 () Bool)

(assert (=> b!3397410 m!3768345))

(declare-fun m!3768347 () Bool)

(assert (=> d!965960 m!3768347))

(declare-fun m!3768349 () Bool)

(assert (=> d!965960 m!3768349))

(declare-fun m!3768351 () Bool)

(assert (=> bm!245791 m!3768351))

(declare-fun m!3768353 () Bool)

(assert (=> b!3397411 m!3768353))

(assert (=> b!3396760 d!965960))

(declare-fun d!965962 () Bool)

(assert (=> d!965962 (= (tail!5373 (drop!1975 lt!1154684 0)) (t!265289 (drop!1975 lt!1154684 0)))))

(assert (=> b!3396760 d!965962))

(declare-fun d!965964 () Bool)

(declare-fun e!2108974 () Bool)

(assert (=> d!965964 e!2108974))

(declare-fun res!1374645 () Bool)

(assert (=> d!965964 (=> (not res!1374645) (not e!2108974))))

(declare-fun appendAssocInst!789 (Conc!11163 Conc!11163) Bool)

(assert (=> d!965964 (= res!1374645 (appendAssocInst!789 (c!578881 (BalanceConc!21941 Empty!11163)) (c!578881 (charsOf!3408 (apply!8618 lt!1154539 0)))))))

(declare-fun lt!1155107 () BalanceConc!21940)

(declare-fun ++!9056 (Conc!11163 Conc!11163) Conc!11163)

(assert (=> d!965964 (= lt!1155107 (BalanceConc!21941 (++!9056 (c!578881 (BalanceConc!21941 Empty!11163)) (c!578881 (charsOf!3408 (apply!8618 lt!1154539 0))))))))

(assert (=> d!965964 (= (++!9053 (BalanceConc!21941 Empty!11163) (charsOf!3408 (apply!8618 lt!1154539 0))) lt!1155107)))

(declare-fun b!3397446 () Bool)

(assert (=> b!3397446 (= e!2108974 (= (list!13387 lt!1155107) (++!9051 (list!13387 (BalanceConc!21941 Empty!11163)) (list!13387 (charsOf!3408 (apply!8618 lt!1154539 0))))))))

(declare-fun b!3397445 () Bool)

(declare-fun res!1374648 () Bool)

(assert (=> b!3397445 (=> (not res!1374648) (not e!2108974))))

(declare-fun height!1668 (Conc!11163) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3397445 (= res!1374648 (>= (height!1668 (++!9056 (c!578881 (BalanceConc!21941 Empty!11163)) (c!578881 (charsOf!3408 (apply!8618 lt!1154539 0))))) (max!0 (height!1668 (c!578881 (BalanceConc!21941 Empty!11163))) (height!1668 (c!578881 (charsOf!3408 (apply!8618 lt!1154539 0)))))))))

(declare-fun b!3397444 () Bool)

(declare-fun res!1374647 () Bool)

(assert (=> b!3397444 (=> (not res!1374647) (not e!2108974))))

(assert (=> b!3397444 (= res!1374647 (<= (height!1668 (++!9056 (c!578881 (BalanceConc!21941 Empty!11163)) (c!578881 (charsOf!3408 (apply!8618 lt!1154539 0))))) (+ (max!0 (height!1668 (c!578881 (BalanceConc!21941 Empty!11163))) (height!1668 (c!578881 (charsOf!3408 (apply!8618 lt!1154539 0))))) 1)))))

(declare-fun b!3397443 () Bool)

(declare-fun res!1374646 () Bool)

(assert (=> b!3397443 (=> (not res!1374646) (not e!2108974))))

(assert (=> b!3397443 (= res!1374646 (isBalanced!3371 (++!9056 (c!578881 (BalanceConc!21941 Empty!11163)) (c!578881 (charsOf!3408 (apply!8618 lt!1154539 0))))))))

(assert (= (and d!965964 res!1374645) b!3397443))

(assert (= (and b!3397443 res!1374646) b!3397444))

(assert (= (and b!3397444 res!1374647) b!3397445))

(assert (= (and b!3397445 res!1374648) b!3397446))

(declare-fun m!3768487 () Bool)

(assert (=> b!3397444 m!3768487))

(declare-fun m!3768489 () Bool)

(assert (=> b!3397444 m!3768489))

(declare-fun m!3768491 () Bool)

(assert (=> b!3397444 m!3768491))

(assert (=> b!3397444 m!3768487))

(declare-fun m!3768493 () Bool)

(assert (=> b!3397444 m!3768493))

(assert (=> b!3397444 m!3768489))

(assert (=> b!3397444 m!3768493))

(declare-fun m!3768495 () Bool)

(assert (=> b!3397444 m!3768495))

(assert (=> b!3397443 m!3768493))

(assert (=> b!3397443 m!3768493))

(declare-fun m!3768497 () Bool)

(assert (=> b!3397443 m!3768497))

(declare-fun m!3768499 () Bool)

(assert (=> b!3397446 m!3768499))

(assert (=> b!3397446 m!3767169))

(assert (=> b!3397446 m!3767185))

(declare-fun m!3768501 () Bool)

(assert (=> b!3397446 m!3768501))

(assert (=> b!3397446 m!3767169))

(assert (=> b!3397446 m!3768501))

(declare-fun m!3768503 () Bool)

(assert (=> b!3397446 m!3768503))

(assert (=> b!3397445 m!3768487))

(assert (=> b!3397445 m!3768489))

(assert (=> b!3397445 m!3768491))

(assert (=> b!3397445 m!3768487))

(assert (=> b!3397445 m!3768493))

(assert (=> b!3397445 m!3768489))

(assert (=> b!3397445 m!3768493))

(assert (=> b!3397445 m!3768495))

(declare-fun m!3768511 () Bool)

(assert (=> d!965964 m!3768511))

(assert (=> d!965964 m!3768493))

(assert (=> b!3396760 d!965964))

(assert (=> b!3396760 d!965722))

(declare-fun d!965996 () Bool)

(assert (=> d!965996 (= (tail!5373 (drop!1975 lt!1154684 0)) (drop!1975 lt!1154684 (+ 0 1)))))

(declare-fun lt!1155111 () Unit!52122)

(declare-fun choose!19701 (List!37080 Int) Unit!52122)

(assert (=> d!965996 (= lt!1155111 (choose!19701 lt!1154684 0))))

(declare-fun e!2108996 () Bool)

(assert (=> d!965996 e!2108996))

(declare-fun res!1374653 () Bool)

(assert (=> d!965996 (=> (not res!1374653) (not e!2108996))))

(assert (=> d!965996 (= res!1374653 (>= 0 0))))

(assert (=> d!965996 (= (lemmaDropTail!1017 lt!1154684 0) lt!1155111)))

(declare-fun b!3397482 () Bool)

(assert (=> b!3397482 (= e!2108996 (< 0 (size!27978 lt!1154684)))))

(assert (= (and d!965996 res!1374653) b!3397482))

(assert (=> d!965996 m!3767189))

(assert (=> d!965996 m!3767189))

(assert (=> d!965996 m!3767191))

(assert (=> d!965996 m!3767201))

(declare-fun m!3768525 () Bool)

(assert (=> d!965996 m!3768525))

(assert (=> b!3397482 m!3768351))

(assert (=> b!3396760 d!965996))

(declare-fun b!3397492 () Bool)

(declare-fun e!2109002 () List!37080)

(declare-fun e!2109000 () List!37080)

(assert (=> b!3397492 (= e!2109002 e!2109000)))

(declare-fun c!579145 () Bool)

(assert (=> b!3397492 (= c!579145 (<= 0 0))))

(declare-fun b!3397493 () Bool)

(assert (=> b!3397493 (= e!2109000 (drop!1975 (t!265289 lt!1154684) (- 0 1)))))

(declare-fun d!965998 () Bool)

(declare-fun e!2109003 () Bool)

(assert (=> d!965998 e!2109003))

(declare-fun res!1374654 () Bool)

(assert (=> d!965998 (=> (not res!1374654) (not e!2109003))))

(declare-fun lt!1155112 () List!37080)

(assert (=> d!965998 (= res!1374654 (= ((_ map implies) (content!5109 lt!1155112) (content!5109 lt!1154684)) ((as const (InoxSet Token!10154)) true)))))

(assert (=> d!965998 (= lt!1155112 e!2109002)))

(declare-fun c!579147 () Bool)

(assert (=> d!965998 (= c!579147 ((_ is Nil!36956) lt!1154684))))

(assert (=> d!965998 (= (drop!1975 lt!1154684 0) lt!1155112)))

(declare-fun bm!245792 () Bool)

(declare-fun call!245797 () Int)

(assert (=> bm!245792 (= call!245797 (size!27978 lt!1154684))))

(declare-fun b!3397494 () Bool)

(declare-fun e!2108999 () Int)

(assert (=> b!3397494 (= e!2109003 (= (size!27978 lt!1155112) e!2108999))))

(declare-fun c!579146 () Bool)

(assert (=> b!3397494 (= c!579146 (<= 0 0))))

(declare-fun b!3397495 () Bool)

(assert (=> b!3397495 (= e!2108999 call!245797)))

(declare-fun b!3397496 () Bool)

(declare-fun e!2109001 () Int)

(assert (=> b!3397496 (= e!2109001 (- call!245797 0))))

(declare-fun b!3397497 () Bool)

(assert (=> b!3397497 (= e!2109000 lt!1154684)))

(declare-fun b!3397498 () Bool)

(assert (=> b!3397498 (= e!2108999 e!2109001)))

(declare-fun c!579144 () Bool)

(assert (=> b!3397498 (= c!579144 (>= 0 call!245797))))

(declare-fun b!3397499 () Bool)

(assert (=> b!3397499 (= e!2109001 0)))

(declare-fun b!3397500 () Bool)

(assert (=> b!3397500 (= e!2109002 Nil!36956)))

(assert (= (and d!965998 c!579147) b!3397500))

(assert (= (and d!965998 (not c!579147)) b!3397492))

(assert (= (and b!3397492 c!579145) b!3397497))

(assert (= (and b!3397492 (not c!579145)) b!3397493))

(assert (= (and d!965998 res!1374654) b!3397494))

(assert (= (and b!3397494 c!579146) b!3397495))

(assert (= (and b!3397494 (not c!579146)) b!3397498))

(assert (= (and b!3397498 c!579144) b!3397499))

(assert (= (and b!3397498 (not c!579144)) b!3397496))

(assert (= (or b!3397495 b!3397498 b!3397496) bm!245792))

(declare-fun m!3768533 () Bool)

(assert (=> b!3397493 m!3768533))

(declare-fun m!3768535 () Bool)

(assert (=> d!965998 m!3768535))

(assert (=> d!965998 m!3768349))

(assert (=> bm!245792 m!3768351))

(declare-fun m!3768537 () Bool)

(assert (=> b!3397494 m!3768537))

(assert (=> b!3396760 d!965998))

(declare-fun d!966000 () Bool)

(declare-fun lt!1155115 () Token!10154)

(assert (=> d!966000 (contains!6785 lt!1154686 lt!1155115)))

(declare-fun e!2109032 () Token!10154)

(assert (=> d!966000 (= lt!1155115 e!2109032)))

(declare-fun c!579150 () Bool)

(assert (=> d!966000 (= c!579150 (= 0 0))))

(declare-fun e!2109031 () Bool)

(assert (=> d!966000 e!2109031))

(declare-fun res!1374657 () Bool)

(assert (=> d!966000 (=> (not res!1374657) (not e!2109031))))

(assert (=> d!966000 (= res!1374657 (<= 0 0))))

(assert (=> d!966000 (= (apply!8619 lt!1154686 0) lt!1155115)))

(declare-fun b!3397546 () Bool)

(assert (=> b!3397546 (= e!2109031 (< 0 (size!27978 lt!1154686)))))

(declare-fun b!3397547 () Bool)

(assert (=> b!3397547 (= e!2109032 (head!7251 lt!1154686))))

(declare-fun b!3397548 () Bool)

(assert (=> b!3397548 (= e!2109032 (apply!8619 (tail!5373 lt!1154686) (- 0 1)))))

(assert (= (and d!966000 res!1374657) b!3397546))

(assert (= (and d!966000 c!579150) b!3397547))

(assert (= (and d!966000 (not c!579150)) b!3397548))

(declare-fun m!3768551 () Bool)

(assert (=> d!966000 m!3768551))

(assert (=> b!3397546 m!3768295))

(declare-fun m!3768553 () Bool)

(assert (=> b!3397547 m!3768553))

(declare-fun m!3768555 () Bool)

(assert (=> b!3397548 m!3768555))

(assert (=> b!3397548 m!3768555))

(declare-fun m!3768557 () Bool)

(assert (=> b!3397548 m!3768557))

(assert (=> b!3396760 d!966000))

(declare-fun d!966002 () Bool)

(assert (=> d!966002 (= (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))) (isBalanced!3371 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))))))

(declare-fun bs!555959 () Bool)

(assert (= bs!555959 d!966002))

(declare-fun m!3768559 () Bool)

(assert (=> bs!555959 m!3768559))

(assert (=> tb!181819 d!966002))

(declare-fun d!966004 () Bool)

(declare-fun lt!1155116 () Bool)

(assert (=> d!966004 (= lt!1155116 (select (content!5109 tokens!494) (h!42376 (t!265289 tokens!494))))))

(declare-fun e!2109037 () Bool)

(assert (=> d!966004 (= lt!1155116 e!2109037)))

(declare-fun res!1374658 () Bool)

(assert (=> d!966004 (=> (not res!1374658) (not e!2109037))))

(assert (=> d!966004 (= res!1374658 ((_ is Cons!36956) tokens!494))))

(assert (=> d!966004 (= (contains!6785 tokens!494 (h!42376 (t!265289 tokens!494))) lt!1155116)))

(declare-fun b!3397562 () Bool)

(declare-fun e!2109038 () Bool)

(assert (=> b!3397562 (= e!2109037 e!2109038)))

(declare-fun res!1374659 () Bool)

(assert (=> b!3397562 (=> res!1374659 e!2109038)))

(assert (=> b!3397562 (= res!1374659 (= (h!42376 tokens!494) (h!42376 (t!265289 tokens!494))))))

(declare-fun b!3397563 () Bool)

(assert (=> b!3397563 (= e!2109038 (contains!6785 (t!265289 tokens!494) (h!42376 (t!265289 tokens!494))))))

(assert (= (and d!966004 res!1374658) b!3397562))

(assert (= (and b!3397562 (not res!1374659)) b!3397563))

(assert (=> d!966004 m!3767155))

(declare-fun m!3768561 () Bool)

(assert (=> d!966004 m!3768561))

(declare-fun m!3768563 () Bool)

(assert (=> b!3397563 m!3768563))

(assert (=> b!3396560 d!966004))

(declare-fun d!966006 () Bool)

(assert (=> d!966006 (dynLambda!15411 lambda!120825 (h!42376 (t!265289 tokens!494)))))

(assert (=> d!966006 true))

(declare-fun _$7!1241 () Unit!52122)

(assert (=> d!966006 (= (choose!19696 tokens!494 lambda!120825 (h!42376 (t!265289 tokens!494))) _$7!1241)))

(declare-fun b_lambda!96801 () Bool)

(assert (=> (not b_lambda!96801) (not d!966006)))

(declare-fun bs!555960 () Bool)

(assert (= bs!555960 d!966006))

(assert (=> bs!555960 m!3766917))

(assert (=> d!965440 d!966006))

(assert (=> d!965440 d!965374))

(declare-fun lt!1155117 () Bool)

(declare-fun d!966008 () Bool)

(assert (=> d!966008 (= lt!1155117 (isEmpty!21220 (list!13387 (_2!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))))))))))

(assert (=> d!966008 (= lt!1155117 (isEmpty!21225 (c!578881 (_2!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))))))))))

(assert (=> d!966008 (= (isEmpty!21221 (_2!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494)))))) lt!1155117)))

(declare-fun bs!555961 () Bool)

(assert (= bs!555961 d!966008))

(declare-fun m!3768565 () Bool)

(assert (=> bs!555961 m!3768565))

(assert (=> bs!555961 m!3768565))

(declare-fun m!3768567 () Bool)

(assert (=> bs!555961 m!3768567))

(declare-fun m!3768569 () Bool)

(assert (=> bs!555961 m!3768569))

(assert (=> b!3396605 d!966008))

(declare-fun b!3397576 () Bool)

(declare-fun e!2109042 () Bool)

(declare-fun lt!1155118 () tuple2!36574)

(assert (=> b!3397576 (= e!2109042 (not (isEmpty!21214 (_1!21421 lt!1155118))))))

(declare-fun b!3397577 () Bool)

(declare-fun res!1374661 () Bool)

(declare-fun e!2109043 () Bool)

(assert (=> b!3397577 (=> (not res!1374661) (not e!2109043))))

(assert (=> b!3397577 (= res!1374661 (= (list!13391 (_1!21421 lt!1155118)) (_1!21423 (lexList!1418 thiss!18206 rules!2135 (list!13387 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))))))))))

(declare-fun d!966012 () Bool)

(assert (=> d!966012 e!2109043))

(declare-fun res!1374660 () Bool)

(assert (=> d!966012 (=> (not res!1374660) (not e!2109043))))

(declare-fun e!2109044 () Bool)

(assert (=> d!966012 (= res!1374660 e!2109044)))

(declare-fun c!579151 () Bool)

(assert (=> d!966012 (= c!579151 (> (size!27974 (_1!21421 lt!1155118)) 0))))

(assert (=> d!966012 (= lt!1155118 (lexTailRecV2!1026 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))) (BalanceConc!21941 Empty!11163) (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))) (BalanceConc!21943 Empty!11164)))))

(assert (=> d!966012 (= (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494)))) lt!1155118)))

(declare-fun b!3397578 () Bool)

(assert (=> b!3397578 (= e!2109044 e!2109042)))

(declare-fun res!1374662 () Bool)

(assert (=> b!3397578 (= res!1374662 (< (size!27975 (_2!21421 lt!1155118)) (size!27975 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))))))))

(assert (=> b!3397578 (=> (not res!1374662) (not e!2109042))))

(declare-fun b!3397579 () Bool)

(assert (=> b!3397579 (= e!2109044 (= (_2!21421 lt!1155118) (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494)))))))

(declare-fun b!3397580 () Bool)

(assert (=> b!3397580 (= e!2109043 (= (list!13387 (_2!21421 lt!1155118)) (_2!21423 (lexList!1418 thiss!18206 rules!2135 (list!13387 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))))))))))

(assert (= (and d!966012 c!579151) b!3397578))

(assert (= (and d!966012 (not c!579151)) b!3397579))

(assert (= (and b!3397578 res!1374662) b!3397576))

(assert (= (and d!966012 res!1374660) b!3397577))

(assert (= (and b!3397577 res!1374661) b!3397580))

(declare-fun m!3768571 () Bool)

(assert (=> b!3397576 m!3768571))

(declare-fun m!3768573 () Bool)

(assert (=> b!3397580 m!3768573))

(assert (=> b!3397580 m!3766983))

(declare-fun m!3768575 () Bool)

(assert (=> b!3397580 m!3768575))

(assert (=> b!3397580 m!3768575))

(declare-fun m!3768577 () Bool)

(assert (=> b!3397580 m!3768577))

(declare-fun m!3768579 () Bool)

(assert (=> d!966012 m!3768579))

(assert (=> d!966012 m!3766983))

(assert (=> d!966012 m!3766983))

(declare-fun m!3768581 () Bool)

(assert (=> d!966012 m!3768581))

(declare-fun m!3768583 () Bool)

(assert (=> b!3397577 m!3768583))

(assert (=> b!3397577 m!3766983))

(assert (=> b!3397577 m!3768575))

(assert (=> b!3397577 m!3768575))

(assert (=> b!3397577 m!3768577))

(declare-fun m!3768585 () Bool)

(assert (=> b!3397578 m!3768585))

(assert (=> b!3397578 m!3766983))

(declare-fun m!3768587 () Bool)

(assert (=> b!3397578 m!3768587))

(assert (=> b!3396605 d!966012))

(declare-fun d!966016 () Bool)

(declare-fun lt!1155119 () BalanceConc!21940)

(assert (=> d!966016 (= (list!13387 lt!1155119) (printList!1531 thiss!18206 (list!13391 (singletonSeq!2490 (h!42376 tokens!494)))))))

(assert (=> d!966016 (= lt!1155119 (printTailRec!1478 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494)) 0 (BalanceConc!21941 Empty!11163)))))

(assert (=> d!966016 (= (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))) lt!1155119)))

(declare-fun bs!555964 () Bool)

(assert (= bs!555964 d!966016))

(declare-fun m!3768589 () Bool)

(assert (=> bs!555964 m!3768589))

(assert (=> bs!555964 m!3766527))

(assert (=> bs!555964 m!3766979))

(assert (=> bs!555964 m!3766979))

(declare-fun m!3768591 () Bool)

(assert (=> bs!555964 m!3768591))

(assert (=> bs!555964 m!3766527))

(declare-fun m!3768593 () Bool)

(assert (=> bs!555964 m!3768593))

(assert (=> b!3396605 d!966016))

(assert (=> b!3396605 d!965524))

(declare-fun d!966018 () Bool)

(declare-fun c!579152 () Bool)

(assert (=> d!966018 (= c!579152 ((_ is Nil!36955) lt!1154655))))

(declare-fun e!2109045 () (InoxSet C!20492))

(assert (=> d!966018 (= (content!5108 lt!1154655) e!2109045)))

(declare-fun b!3397581 () Bool)

(assert (=> b!3397581 (= e!2109045 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397582 () Bool)

(assert (=> b!3397582 (= e!2109045 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154655) true) (content!5108 (t!265288 lt!1154655))))))

(assert (= (and d!966018 c!579152) b!3397581))

(assert (= (and d!966018 (not c!579152)) b!3397582))

(declare-fun m!3768595 () Bool)

(assert (=> b!3397582 m!3768595))

(declare-fun m!3768597 () Bool)

(assert (=> b!3397582 m!3768597))

(assert (=> d!965502 d!966018))

(declare-fun d!966020 () Bool)

(declare-fun c!579153 () Bool)

(assert (=> d!966020 (= c!579153 ((_ is Nil!36955) (++!9051 lt!1154540 lt!1154543)))))

(declare-fun e!2109046 () (InoxSet C!20492))

(assert (=> d!966020 (= (content!5108 (++!9051 lt!1154540 lt!1154543)) e!2109046)))

(declare-fun b!3397583 () Bool)

(assert (=> b!3397583 (= e!2109046 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397584 () Bool)

(assert (=> b!3397584 (= e!2109046 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 (++!9051 lt!1154540 lt!1154543)) true) (content!5108 (t!265288 (++!9051 lt!1154540 lt!1154543)))))))

(assert (= (and d!966020 c!579153) b!3397583))

(assert (= (and d!966020 (not c!579153)) b!3397584))

(declare-fun m!3768599 () Bool)

(assert (=> b!3397584 m!3768599))

(declare-fun m!3768601 () Bool)

(assert (=> b!3397584 m!3768601))

(assert (=> d!965502 d!966020))

(declare-fun d!966022 () Bool)

(declare-fun c!579154 () Bool)

(assert (=> d!966022 (= c!579154 ((_ is Nil!36955) lt!1154548))))

(declare-fun e!2109047 () (InoxSet C!20492))

(assert (=> d!966022 (= (content!5108 lt!1154548) e!2109047)))

(declare-fun b!3397585 () Bool)

(assert (=> b!3397585 (= e!2109047 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397586 () Bool)

(assert (=> b!3397586 (= e!2109047 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154548) true) (content!5108 (t!265288 lt!1154548))))))

(assert (= (and d!966022 c!579154) b!3397585))

(assert (= (and d!966022 (not c!579154)) b!3397586))

(declare-fun m!3768603 () Bool)

(assert (=> b!3397586 m!3768603))

(declare-fun m!3768605 () Bool)

(assert (=> b!3397586 m!3768605))

(assert (=> d!965502 d!966022))

(assert (=> b!3396521 d!965452))

(assert (=> d!965370 d!965502))

(assert (=> d!965370 d!965504))

(assert (=> d!965370 d!965358))

(declare-fun b!3397589 () Bool)

(declare-fun res!1374664 () Bool)

(declare-fun e!2109048 () Bool)

(assert (=> b!3397589 (=> (not res!1374664) (not e!2109048))))

(declare-fun lt!1155120 () List!37079)

(assert (=> b!3397589 (= res!1374664 (= (size!27973 lt!1155120) (+ (size!27973 lt!1154540) (size!27973 (++!9051 lt!1154543 lt!1154548)))))))

(declare-fun b!3397590 () Bool)

(assert (=> b!3397590 (= e!2109048 (or (not (= (++!9051 lt!1154543 lt!1154548) Nil!36955)) (= lt!1155120 lt!1154540)))))

(declare-fun b!3397588 () Bool)

(declare-fun e!2109049 () List!37079)

(assert (=> b!3397588 (= e!2109049 (Cons!36955 (h!42375 lt!1154540) (++!9051 (t!265288 lt!1154540) (++!9051 lt!1154543 lt!1154548))))))

(declare-fun b!3397587 () Bool)

(assert (=> b!3397587 (= e!2109049 (++!9051 lt!1154543 lt!1154548))))

(declare-fun d!966024 () Bool)

(assert (=> d!966024 e!2109048))

(declare-fun res!1374663 () Bool)

(assert (=> d!966024 (=> (not res!1374663) (not e!2109048))))

(assert (=> d!966024 (= res!1374663 (= (content!5108 lt!1155120) ((_ map or) (content!5108 lt!1154540) (content!5108 (++!9051 lt!1154543 lt!1154548)))))))

(assert (=> d!966024 (= lt!1155120 e!2109049)))

(declare-fun c!579155 () Bool)

(assert (=> d!966024 (= c!579155 ((_ is Nil!36955) lt!1154540))))

(assert (=> d!966024 (= (++!9051 lt!1154540 (++!9051 lt!1154543 lt!1154548)) lt!1155120)))

(assert (= (and d!966024 c!579155) b!3397587))

(assert (= (and d!966024 (not c!579155)) b!3397588))

(assert (= (and d!966024 res!1374663) b!3397589))

(assert (= (and b!3397589 res!1374664) b!3397590))

(declare-fun m!3768607 () Bool)

(assert (=> b!3397589 m!3768607))

(assert (=> b!3397589 m!3766679))

(assert (=> b!3397589 m!3766561))

(declare-fun m!3768609 () Bool)

(assert (=> b!3397589 m!3768609))

(assert (=> b!3397588 m!3766561))

(declare-fun m!3768611 () Bool)

(assert (=> b!3397588 m!3768611))

(declare-fun m!3768613 () Bool)

(assert (=> d!966024 m!3768613))

(assert (=> d!966024 m!3766687))

(assert (=> d!966024 m!3766561))

(declare-fun m!3768615 () Bool)

(assert (=> d!966024 m!3768615))

(assert (=> d!965370 d!966024))

(declare-fun d!966026 () Bool)

(assert (=> d!966026 (= (++!9051 (++!9051 lt!1154540 lt!1154543) lt!1154548) (++!9051 lt!1154540 (++!9051 lt!1154543 lt!1154548)))))

(assert (=> d!966026 true))

(declare-fun _$52!1794 () Unit!52122)

(assert (=> d!966026 (= (choose!19695 lt!1154540 lt!1154543 lt!1154548) _$52!1794)))

(declare-fun bs!555965 () Bool)

(assert (= bs!555965 d!966026))

(assert (=> bs!555965 m!3766581))

(assert (=> bs!555965 m!3766581))

(assert (=> bs!555965 m!3766583))

(assert (=> bs!555965 m!3766561))

(assert (=> bs!555965 m!3766561))

(assert (=> bs!555965 m!3766693))

(assert (=> d!965370 d!966026))

(declare-fun d!966028 () Bool)

(assert (=> d!966028 true))

(declare-fun order!19513 () Int)

(declare-fun lambda!120864 () Int)

(declare-fun dynLambda!15418 (Int Int) Int)

(assert (=> d!966028 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15418 order!19513 lambda!120864))))

(assert (=> d!966028 true))

(assert (=> d!966028 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15418 order!19513 lambda!120864))))

(declare-fun Forall!1323 (Int) Bool)

(assert (=> d!966028 (= (semiInverseModEq!2253 (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toValue!7590 (transformation!5394 (h!42377 rules!2135)))) (Forall!1323 lambda!120864))))

(declare-fun bs!555966 () Bool)

(assert (= bs!555966 d!966028))

(declare-fun m!3768617 () Bool)

(assert (=> bs!555966 m!3768617))

(assert (=> d!965446 d!966028))

(declare-fun d!966030 () Bool)

(declare-fun lt!1155121 () Int)

(assert (=> d!966030 (>= lt!1155121 0)))

(declare-fun e!2109050 () Int)

(assert (=> d!966030 (= lt!1155121 e!2109050)))

(declare-fun c!579156 () Bool)

(assert (=> d!966030 (= c!579156 ((_ is Nil!36955) lt!1154568))))

(assert (=> d!966030 (= (size!27973 lt!1154568) lt!1155121)))

(declare-fun b!3397595 () Bool)

(assert (=> b!3397595 (= e!2109050 0)))

(declare-fun b!3397596 () Bool)

(assert (=> b!3397596 (= e!2109050 (+ 1 (size!27973 (t!265288 lt!1154568))))))

(assert (= (and d!966030 c!579156) b!3397595))

(assert (= (and d!966030 (not c!579156)) b!3397596))

(declare-fun m!3768619 () Bool)

(assert (=> b!3397596 m!3768619))

(assert (=> b!3396410 d!966030))

(assert (=> b!3396410 d!965660))

(declare-fun d!966032 () Bool)

(declare-fun lt!1155122 () Int)

(assert (=> d!966032 (>= lt!1155122 0)))

(declare-fun e!2109051 () Int)

(assert (=> d!966032 (= lt!1155122 e!2109051)))

(declare-fun c!579157 () Bool)

(assert (=> d!966032 (= c!579157 ((_ is Nil!36955) lt!1154546))))

(assert (=> d!966032 (= (size!27973 lt!1154546) lt!1155122)))

(declare-fun b!3397597 () Bool)

(assert (=> b!3397597 (= e!2109051 0)))

(declare-fun b!3397598 () Bool)

(assert (=> b!3397598 (= e!2109051 (+ 1 (size!27973 (t!265288 lt!1154546))))))

(assert (= (and d!966032 c!579157) b!3397597))

(assert (= (and d!966032 (not c!579157)) b!3397598))

(declare-fun m!3768621 () Bool)

(assert (=> b!3397598 m!3768621))

(assert (=> b!3396410 d!966032))

(declare-fun d!966034 () Bool)

(declare-fun lt!1155123 () Bool)

(assert (=> d!966034 (= lt!1155123 (isEmpty!21220 (list!13387 (_2!21421 lt!1154653))))))

(assert (=> d!966034 (= lt!1155123 (isEmpty!21225 (c!578881 (_2!21421 lt!1154653))))))

(assert (=> d!966034 (= (isEmpty!21221 (_2!21421 lt!1154653)) lt!1155123)))

(declare-fun bs!555967 () Bool)

(assert (= bs!555967 d!966034))

(declare-fun m!3768623 () Bool)

(assert (=> bs!555967 m!3768623))

(assert (=> bs!555967 m!3768623))

(declare-fun m!3768625 () Bool)

(assert (=> bs!555967 m!3768625))

(declare-fun m!3768627 () Bool)

(assert (=> bs!555967 m!3768627))

(assert (=> b!3396718 d!966034))

(declare-fun d!966036 () Bool)

(assert (=> d!966036 (= (isEmpty!21220 (originalCharacters!6108 (h!42376 tokens!494))) ((_ is Nil!36955) (originalCharacters!6108 (h!42376 tokens!494))))))

(assert (=> d!965500 d!966036))

(declare-fun d!966038 () Bool)

(assert (=> d!966038 (= (inv!17 (value!174189 (h!42376 tokens!494))) (= (charsToBigInt!1 (text!39816 (value!174189 (h!42376 tokens!494)))) (value!174182 (value!174189 (h!42376 tokens!494)))))))

(declare-fun bs!555968 () Bool)

(assert (= bs!555968 d!966038))

(declare-fun m!3768629 () Bool)

(assert (=> bs!555968 m!3768629))

(assert (=> b!3396547 d!966038))

(declare-fun d!966040 () Bool)

(assert (=> d!966040 (= (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494))))) (isBalanced!3371 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))))))

(declare-fun bs!555969 () Bool)

(assert (= bs!555969 d!966040))

(declare-fun m!3768631 () Bool)

(assert (=> bs!555969 m!3768631))

(assert (=> tb!181825 d!966040))

(declare-fun d!966042 () Bool)

(declare-fun charsToBigInt!0 (List!37078 Int) Int)

(assert (=> d!966042 (= (inv!15 (value!174189 separatorToken!241)) (= (charsToBigInt!0 (text!39817 (value!174189 separatorToken!241)) 0) (value!174185 (value!174189 separatorToken!241))))))

(declare-fun bs!555970 () Bool)

(assert (= bs!555970 d!966042))

(declare-fun m!3768633 () Bool)

(assert (=> bs!555970 m!3768633))

(assert (=> b!3396716 d!966042))

(declare-fun b!3397601 () Bool)

(declare-fun e!2109053 () List!37079)

(assert (=> b!3397601 (= e!2109053 (list!13395 (xs!14321 (c!578881 lt!1154549))))))

(declare-fun b!3397599 () Bool)

(declare-fun e!2109052 () List!37079)

(assert (=> b!3397599 (= e!2109052 Nil!36955)))

(declare-fun d!966044 () Bool)

(declare-fun c!579158 () Bool)

(assert (=> d!966044 (= c!579158 ((_ is Empty!11163) (c!578881 lt!1154549)))))

(assert (=> d!966044 (= (list!13390 (c!578881 lt!1154549)) e!2109052)))

(declare-fun b!3397600 () Bool)

(assert (=> b!3397600 (= e!2109052 e!2109053)))

(declare-fun c!579159 () Bool)

(assert (=> b!3397600 (= c!579159 ((_ is Leaf!17471) (c!578881 lt!1154549)))))

(declare-fun b!3397602 () Bool)

(assert (=> b!3397602 (= e!2109053 (++!9051 (list!13390 (left!28810 (c!578881 lt!1154549))) (list!13390 (right!29140 (c!578881 lt!1154549)))))))

(assert (= (and d!966044 c!579158) b!3397599))

(assert (= (and d!966044 (not c!579158)) b!3397600))

(assert (= (and b!3397600 c!579159) b!3397601))

(assert (= (and b!3397600 (not c!579159)) b!3397602))

(declare-fun m!3768635 () Bool)

(assert (=> b!3397601 m!3768635))

(declare-fun m!3768637 () Bool)

(assert (=> b!3397602 m!3768637))

(declare-fun m!3768639 () Bool)

(assert (=> b!3397602 m!3768639))

(assert (=> b!3397602 m!3768637))

(assert (=> b!3397602 m!3768639))

(declare-fun m!3768641 () Bool)

(assert (=> b!3397602 m!3768641))

(assert (=> d!965520 d!966044))

(declare-fun d!966046 () Bool)

(declare-fun c!579160 () Bool)

(assert (=> d!966046 (= c!579160 ((_ is Nil!36955) lt!1154555))))

(declare-fun e!2109054 () (InoxSet C!20492))

(assert (=> d!966046 (= (content!5108 lt!1154555) e!2109054)))

(declare-fun b!3397603 () Bool)

(assert (=> b!3397603 (= e!2109054 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397604 () Bool)

(assert (=> b!3397604 (= e!2109054 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154555) true) (content!5108 (t!265288 lt!1154555))))))

(assert (= (and d!966046 c!579160) b!3397603))

(assert (= (and d!966046 (not c!579160)) b!3397604))

(declare-fun m!3768643 () Bool)

(assert (=> b!3397604 m!3768643))

(declare-fun m!3768645 () Bool)

(assert (=> b!3397604 m!3768645))

(assert (=> d!965346 d!966046))

(declare-fun d!966048 () Bool)

(declare-fun c!579161 () Bool)

(assert (=> d!966048 (= c!579161 ((_ is Nil!36955) (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))

(declare-fun e!2109055 () (InoxSet C!20492))

(assert (=> d!966048 (= (content!5108 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) e!2109055)))

(declare-fun b!3397605 () Bool)

(assert (=> b!3397605 (= e!2109055 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397606 () Bool)

(assert (=> b!3397606 (= e!2109055 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) true) (content!5108 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))))

(assert (= (and d!966048 c!579161) b!3397605))

(assert (= (and d!966048 (not c!579161)) b!3397606))

(declare-fun m!3768647 () Bool)

(assert (=> b!3397606 m!3768647))

(declare-fun m!3768649 () Bool)

(assert (=> b!3397606 m!3768649))

(assert (=> d!965346 d!966048))

(assert (=> d!965346 d!965734))

(declare-fun d!966050 () Bool)

(assert (=> d!966050 (= (list!13387 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))) (list!13390 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))))))

(declare-fun bs!555971 () Bool)

(assert (= bs!555971 d!966050))

(declare-fun m!3768651 () Bool)

(assert (=> bs!555971 m!3768651))

(assert (=> b!3396720 d!966050))

(declare-fun d!966052 () Bool)

(assert (=> d!966052 (= (inv!50044 (tag!5978 (rule!7954 (h!42376 (t!265289 tokens!494))))) (= (mod (str.len (value!174163 (tag!5978 (rule!7954 (h!42376 (t!265289 tokens!494)))))) 2) 0))))

(assert (=> b!3396806 d!966052))

(declare-fun d!966054 () Bool)

(declare-fun res!1374665 () Bool)

(declare-fun e!2109056 () Bool)

(assert (=> d!966054 (=> (not res!1374665) (not e!2109056))))

(assert (=> d!966054 (= res!1374665 (semiInverseModEq!2253 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))))))

(assert (=> d!966054 (= (inv!50047 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) e!2109056)))

(declare-fun b!3397607 () Bool)

(assert (=> b!3397607 (= e!2109056 (equivClasses!2152 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))))))

(assert (= (and d!966054 res!1374665) b!3397607))

(declare-fun m!3768653 () Bool)

(assert (=> d!966054 m!3768653))

(declare-fun m!3768655 () Bool)

(assert (=> b!3397607 m!3768655))

(assert (=> b!3396806 d!966054))

(declare-fun b!3397610 () Bool)

(declare-fun res!1374667 () Bool)

(declare-fun e!2109057 () Bool)

(assert (=> b!3397610 (=> (not res!1374667) (not e!2109057))))

(declare-fun lt!1155124 () List!37079)

(assert (=> b!3397610 (= res!1374667 (= (size!27973 lt!1155124) (+ (size!27973 (t!265288 (++!9051 lt!1154540 lt!1154543))) (size!27973 lt!1154548))))))

(declare-fun b!3397611 () Bool)

(assert (=> b!3397611 (= e!2109057 (or (not (= lt!1154548 Nil!36955)) (= lt!1155124 (t!265288 (++!9051 lt!1154540 lt!1154543)))))))

(declare-fun b!3397609 () Bool)

(declare-fun e!2109058 () List!37079)

(assert (=> b!3397609 (= e!2109058 (Cons!36955 (h!42375 (t!265288 (++!9051 lt!1154540 lt!1154543))) (++!9051 (t!265288 (t!265288 (++!9051 lt!1154540 lt!1154543))) lt!1154548)))))

(declare-fun b!3397608 () Bool)

(assert (=> b!3397608 (= e!2109058 lt!1154548)))

(declare-fun d!966056 () Bool)

(assert (=> d!966056 e!2109057))

(declare-fun res!1374666 () Bool)

(assert (=> d!966056 (=> (not res!1374666) (not e!2109057))))

(assert (=> d!966056 (= res!1374666 (= (content!5108 lt!1155124) ((_ map or) (content!5108 (t!265288 (++!9051 lt!1154540 lt!1154543))) (content!5108 lt!1154548))))))

(assert (=> d!966056 (= lt!1155124 e!2109058)))

(declare-fun c!579162 () Bool)

(assert (=> d!966056 (= c!579162 ((_ is Nil!36955) (t!265288 (++!9051 lt!1154540 lt!1154543))))))

(assert (=> d!966056 (= (++!9051 (t!265288 (++!9051 lt!1154540 lt!1154543)) lt!1154548) lt!1155124)))

(assert (= (and d!966056 c!579162) b!3397608))

(assert (= (and d!966056 (not c!579162)) b!3397609))

(assert (= (and d!966056 res!1374666) b!3397610))

(assert (= (and b!3397610 res!1374667) b!3397611))

(declare-fun m!3768657 () Bool)

(assert (=> b!3397610 m!3768657))

(assert (=> b!3397610 m!3767807))

(assert (=> b!3397610 m!3766645))

(declare-fun m!3768659 () Bool)

(assert (=> b!3397609 m!3768659))

(declare-fun m!3768661 () Bool)

(assert (=> d!966056 m!3768661))

(assert (=> d!966056 m!3768601))

(assert (=> d!966056 m!3766651))

(assert (=> b!3396723 d!966056))

(declare-fun d!966058 () Bool)

(assert (=> d!966058 (= (list!13391 (_1!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494)))))) (list!13394 (c!578882 (_1!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 (h!42376 tokens!494))))))))))

(declare-fun bs!555972 () Bool)

(assert (= bs!555972 d!966058))

(declare-fun m!3768663 () Bool)

(assert (=> bs!555972 m!3768663))

(assert (=> d!965452 d!966058))

(assert (=> d!965452 d!966012))

(assert (=> d!965452 d!966016))

(declare-fun d!966060 () Bool)

(assert (=> d!966060 (= (list!13391 (singletonSeq!2490 (h!42376 tokens!494))) (list!13394 (c!578882 (singletonSeq!2490 (h!42376 tokens!494)))))))

(declare-fun bs!555973 () Bool)

(assert (= bs!555973 d!966060))

(declare-fun m!3768665 () Bool)

(assert (=> bs!555973 m!3768665))

(assert (=> d!965452 d!966060))

(assert (=> d!965452 d!965524))

(declare-fun d!966062 () Bool)

(declare-fun lt!1155125 () Int)

(assert (=> d!966062 (= lt!1155125 (size!27978 (list!13391 (_1!21421 lt!1154639))))))

(assert (=> d!966062 (= lt!1155125 (size!27979 (c!578882 (_1!21421 lt!1154639))))))

(assert (=> d!966062 (= (size!27974 (_1!21421 lt!1154639)) lt!1155125)))

(declare-fun bs!555974 () Bool)

(assert (= bs!555974 d!966062))

(declare-fun m!3768667 () Bool)

(assert (=> bs!555974 m!3768667))

(assert (=> bs!555974 m!3768667))

(declare-fun m!3768669 () Bool)

(assert (=> bs!555974 m!3768669))

(declare-fun m!3768671 () Bool)

(assert (=> bs!555974 m!3768671))

(assert (=> d!965452 d!966062))

(assert (=> d!965452 d!965514))

(declare-fun d!966064 () Bool)

(assert (=> d!966064 (= (inv!50044 (tag!5978 (h!42377 (t!265290 rules!2135)))) (= (mod (str.len (value!174163 (tag!5978 (h!42377 (t!265290 rules!2135))))) 2) 0))))

(assert (=> b!3396821 d!966064))

(declare-fun d!966066 () Bool)

(declare-fun res!1374668 () Bool)

(declare-fun e!2109059 () Bool)

(assert (=> d!966066 (=> (not res!1374668) (not e!2109059))))

(assert (=> d!966066 (= res!1374668 (semiInverseModEq!2253 (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toValue!7590 (transformation!5394 (h!42377 (t!265290 rules!2135))))))))

(assert (=> d!966066 (= (inv!50047 (transformation!5394 (h!42377 (t!265290 rules!2135)))) e!2109059)))

(declare-fun b!3397612 () Bool)

(assert (=> b!3397612 (= e!2109059 (equivClasses!2152 (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toValue!7590 (transformation!5394 (h!42377 (t!265290 rules!2135))))))))

(assert (= (and d!966066 res!1374668) b!3397612))

(declare-fun m!3768673 () Bool)

(assert (=> d!966066 m!3768673))

(declare-fun m!3768675 () Bool)

(assert (=> b!3397612 m!3768675))

(assert (=> b!3396821 d!966066))

(declare-fun bs!555975 () Bool)

(declare-fun d!966068 () Bool)

(assert (= bs!555975 (and d!966068 d!965628)))

(declare-fun lambda!120865 () Int)

(assert (=> bs!555975 (= (= (toValue!7590 (transformation!5394 (h!42377 rules!2135))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) (= lambda!120865 lambda!120848))))

(declare-fun bs!555976 () Bool)

(assert (= bs!555976 (and d!966068 d!965634)))

(assert (=> bs!555976 (= (= (toValue!7590 (transformation!5394 (h!42377 rules!2135))) (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241)))) (= lambda!120865 lambda!120849))))

(assert (=> d!966068 true))

(assert (=> d!966068 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15416 order!19509 lambda!120865))))

(assert (=> d!966068 (= (equivClasses!2152 (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toValue!7590 (transformation!5394 (h!42377 rules!2135)))) (Forall2!919 lambda!120865))))

(declare-fun bs!555977 () Bool)

(assert (= bs!555977 d!966068))

(declare-fun m!3768677 () Bool)

(assert (=> bs!555977 m!3768677))

(assert (=> b!3396564 d!966068))

(declare-fun d!966070 () Bool)

(assert (=> d!966070 (= (list!13391 (_1!21421 lt!1154662)) (list!13394 (c!578882 (_1!21421 lt!1154662))))))

(declare-fun bs!555978 () Bool)

(assert (= bs!555978 d!966070))

(declare-fun m!3768679 () Bool)

(assert (=> bs!555978 m!3768679))

(assert (=> b!3396741 d!966070))

(declare-fun d!966072 () Bool)

(declare-fun e!2109067 () Bool)

(assert (=> d!966072 e!2109067))

(declare-fun c!579167 () Bool)

(declare-fun lt!1155132 () tuple2!36578)

(assert (=> d!966072 (= c!579167 (> (size!27978 (_1!21423 lt!1155132)) 0))))

(declare-fun e!2109066 () tuple2!36578)

(assert (=> d!966072 (= lt!1155132 e!2109066)))

(declare-fun c!579168 () Bool)

(declare-datatypes ((tuple2!36584 0))(
  ( (tuple2!36585 (_1!21426 Token!10154) (_2!21426 List!37079)) )
))
(declare-datatypes ((Option!7433 0))(
  ( (None!7432) (Some!7432 (v!36596 tuple2!36584)) )
))
(declare-fun lt!1155133 () Option!7433)

(assert (=> d!966072 (= c!579168 ((_ is Some!7432) lt!1155133))))

(declare-fun maxPrefix!2551 (LexerInterface!4983 List!37081 List!37079) Option!7433)

(assert (=> d!966072 (= lt!1155133 (maxPrefix!2551 thiss!18206 rules!2135 (list!13387 (seqFromList!3841 lt!1154540))))))

(assert (=> d!966072 (= (lexList!1418 thiss!18206 rules!2135 (list!13387 (seqFromList!3841 lt!1154540))) lt!1155132)))

(declare-fun b!3397623 () Bool)

(assert (=> b!3397623 (= e!2109066 (tuple2!36579 Nil!36956 (list!13387 (seqFromList!3841 lt!1154540))))))

(declare-fun b!3397624 () Bool)

(declare-fun e!2109068 () Bool)

(assert (=> b!3397624 (= e!2109068 (not (isEmpty!21222 (_1!21423 lt!1155132))))))

(declare-fun b!3397625 () Bool)

(assert (=> b!3397625 (= e!2109067 (= (_2!21423 lt!1155132) (list!13387 (seqFromList!3841 lt!1154540))))))

(declare-fun b!3397626 () Bool)

(assert (=> b!3397626 (= e!2109067 e!2109068)))

(declare-fun res!1374671 () Bool)

(assert (=> b!3397626 (= res!1374671 (< (size!27973 (_2!21423 lt!1155132)) (size!27973 (list!13387 (seqFromList!3841 lt!1154540)))))))

(assert (=> b!3397626 (=> (not res!1374671) (not e!2109068))))

(declare-fun b!3397627 () Bool)

(declare-fun lt!1155134 () tuple2!36578)

(assert (=> b!3397627 (= e!2109066 (tuple2!36579 (Cons!36956 (_1!21426 (v!36596 lt!1155133)) (_1!21423 lt!1155134)) (_2!21423 lt!1155134)))))

(assert (=> b!3397627 (= lt!1155134 (lexList!1418 thiss!18206 rules!2135 (_2!21426 (v!36596 lt!1155133))))))

(assert (= (and d!966072 c!579168) b!3397627))

(assert (= (and d!966072 (not c!579168)) b!3397623))

(assert (= (and d!966072 c!579167) b!3397626))

(assert (= (and d!966072 (not c!579167)) b!3397625))

(assert (= (and b!3397626 res!1374671) b!3397624))

(declare-fun m!3768681 () Bool)

(assert (=> d!966072 m!3768681))

(assert (=> d!966072 m!3767139))

(declare-fun m!3768683 () Bool)

(assert (=> d!966072 m!3768683))

(declare-fun m!3768685 () Bool)

(assert (=> b!3397624 m!3768685))

(declare-fun m!3768687 () Bool)

(assert (=> b!3397626 m!3768687))

(assert (=> b!3397626 m!3767139))

(assert (=> b!3397626 m!3767931))

(declare-fun m!3768689 () Bool)

(assert (=> b!3397627 m!3768689))

(assert (=> b!3396741 d!966072))

(declare-fun d!966074 () Bool)

(assert (=> d!966074 (= (list!13387 (seqFromList!3841 lt!1154540)) (list!13390 (c!578881 (seqFromList!3841 lt!1154540))))))

(declare-fun bs!555979 () Bool)

(assert (= bs!555979 d!966074))

(declare-fun m!3768691 () Bool)

(assert (=> bs!555979 m!3768691))

(assert (=> b!3396741 d!966074))

(declare-fun d!966076 () Bool)

(declare-fun res!1374672 () Bool)

(declare-fun e!2109069 () Bool)

(assert (=> d!966076 (=> res!1374672 e!2109069)))

(assert (=> d!966076 (= res!1374672 (not ((_ is Cons!36957) (t!265290 rules!2135))))))

(assert (=> d!966076 (= (sepAndNonSepRulesDisjointChars!1588 rules!2135 (t!265290 rules!2135)) e!2109069)))

(declare-fun b!3397628 () Bool)

(declare-fun e!2109070 () Bool)

(assert (=> b!3397628 (= e!2109069 e!2109070)))

(declare-fun res!1374673 () Bool)

(assert (=> b!3397628 (=> (not res!1374673) (not e!2109070))))

(assert (=> b!3397628 (= res!1374673 (ruleDisjointCharsFromAllFromOtherType!689 (h!42377 (t!265290 rules!2135)) rules!2135))))

(declare-fun b!3397629 () Bool)

(assert (=> b!3397629 (= e!2109070 (sepAndNonSepRulesDisjointChars!1588 rules!2135 (t!265290 (t!265290 rules!2135))))))

(assert (= (and d!966076 (not res!1374672)) b!3397628))

(assert (= (and b!3397628 res!1374673) b!3397629))

(declare-fun m!3768693 () Bool)

(assert (=> b!3397628 m!3768693))

(declare-fun m!3768695 () Bool)

(assert (=> b!3397629 m!3768695))

(assert (=> b!3396556 d!966076))

(declare-fun d!966078 () Bool)

(assert (=> d!966078 (= (list!13391 (_1!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241))))) (list!13394 (c!578882 (_1!21421 (lex!2309 thiss!18206 rules!2135 (print!2048 thiss!18206 (singletonSeq!2490 separatorToken!241)))))))))

(declare-fun bs!555980 () Bool)

(assert (= bs!555980 d!966078))

(declare-fun m!3768697 () Bool)

(assert (=> bs!555980 m!3768697))

(assert (=> d!965498 d!966078))

(assert (=> d!965498 d!965754))

(assert (=> d!965498 d!965752))

(assert (=> d!965498 d!965514))

(assert (=> d!965498 d!965746))

(declare-fun d!966080 () Bool)

(assert (=> d!966080 (= (list!13391 (singletonSeq!2490 separatorToken!241)) (list!13394 (c!578882 (singletonSeq!2490 separatorToken!241))))))

(declare-fun bs!555981 () Bool)

(assert (= bs!555981 d!966080))

(declare-fun m!3768699 () Bool)

(assert (=> bs!555981 m!3768699))

(assert (=> d!965498 d!966080))

(declare-fun d!966082 () Bool)

(declare-fun lt!1155135 () Int)

(assert (=> d!966082 (= lt!1155135 (size!27978 (list!13391 (_1!21421 lt!1154653))))))

(assert (=> d!966082 (= lt!1155135 (size!27979 (c!578882 (_1!21421 lt!1154653))))))

(assert (=> d!966082 (= (size!27974 (_1!21421 lt!1154653)) lt!1155135)))

(declare-fun bs!555982 () Bool)

(assert (= bs!555982 d!966082))

(declare-fun m!3768701 () Bool)

(assert (=> bs!555982 m!3768701))

(assert (=> bs!555982 m!3768701))

(declare-fun m!3768703 () Bool)

(assert (=> bs!555982 m!3768703))

(declare-fun m!3768705 () Bool)

(assert (=> bs!555982 m!3768705))

(assert (=> d!965498 d!966082))

(declare-fun d!966084 () Bool)

(declare-fun lt!1155136 () Int)

(assert (=> d!966084 (>= lt!1155136 0)))

(declare-fun e!2109071 () Int)

(assert (=> d!966084 (= lt!1155136 e!2109071)))

(declare-fun c!579169 () Bool)

(assert (=> d!966084 (= c!579169 ((_ is Nil!36955) lt!1154555))))

(assert (=> d!966084 (= (size!27973 lt!1154555) lt!1155136)))

(declare-fun b!3397630 () Bool)

(assert (=> b!3397630 (= e!2109071 0)))

(declare-fun b!3397631 () Bool)

(assert (=> b!3397631 (= e!2109071 (+ 1 (size!27973 (t!265288 lt!1154555))))))

(assert (= (and d!966084 c!579169) b!3397630))

(assert (= (and d!966084 (not c!579169)) b!3397631))

(declare-fun m!3768707 () Bool)

(assert (=> b!3397631 m!3768707))

(assert (=> b!3396373 d!966084))

(declare-fun d!966086 () Bool)

(declare-fun lt!1155137 () Int)

(assert (=> d!966086 (>= lt!1155137 0)))

(declare-fun e!2109072 () Int)

(assert (=> d!966086 (= lt!1155137 e!2109072)))

(declare-fun c!579170 () Bool)

(assert (=> d!966086 (= c!579170 ((_ is Nil!36955) (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))

(assert (=> d!966086 (= (size!27973 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) lt!1155137)))

(declare-fun b!3397632 () Bool)

(assert (=> b!3397632 (= e!2109072 0)))

(declare-fun b!3397633 () Bool)

(assert (=> b!3397633 (= e!2109072 (+ 1 (size!27973 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))))

(assert (= (and d!966086 c!579170) b!3397632))

(assert (= (and d!966086 (not c!579170)) b!3397633))

(declare-fun m!3768709 () Bool)

(assert (=> b!3397633 m!3768709))

(assert (=> b!3396373 d!966086))

(assert (=> b!3396373 d!965662))

(declare-fun d!966088 () Bool)

(declare-fun c!579171 () Bool)

(assert (=> d!966088 (= c!579171 ((_ is Nil!36955) lt!1154568))))

(declare-fun e!2109073 () (InoxSet C!20492))

(assert (=> d!966088 (= (content!5108 lt!1154568) e!2109073)))

(declare-fun b!3397634 () Bool)

(assert (=> b!3397634 (= e!2109073 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397635 () Bool)

(assert (=> b!3397635 (= e!2109073 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154568) true) (content!5108 (t!265288 lt!1154568))))))

(assert (= (and d!966088 c!579171) b!3397634))

(assert (= (and d!966088 (not c!579171)) b!3397635))

(declare-fun m!3768711 () Bool)

(assert (=> b!3397635 m!3768711))

(declare-fun m!3768713 () Bool)

(assert (=> b!3397635 m!3768713))

(assert (=> d!965368 d!966088))

(assert (=> d!965368 d!965732))

(declare-fun d!966090 () Bool)

(declare-fun c!579172 () Bool)

(assert (=> d!966090 (= c!579172 ((_ is Nil!36955) lt!1154546))))

(declare-fun e!2109074 () (InoxSet C!20492))

(assert (=> d!966090 (= (content!5108 lt!1154546) e!2109074)))

(declare-fun b!3397636 () Bool)

(assert (=> b!3397636 (= e!2109074 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397637 () Bool)

(assert (=> b!3397637 (= e!2109074 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154546) true) (content!5108 (t!265288 lt!1154546))))))

(assert (= (and d!966090 c!579172) b!3397636))

(assert (= (and d!966090 (not c!579172)) b!3397637))

(declare-fun m!3768715 () Bool)

(assert (=> b!3397637 m!3768715))

(declare-fun m!3768717 () Bool)

(assert (=> b!3397637 m!3768717))

(assert (=> d!965368 d!966090))

(declare-fun bs!555983 () Bool)

(declare-fun d!966092 () Bool)

(assert (= bs!555983 (and d!966092 d!966028)))

(declare-fun lambda!120866 () Int)

(assert (=> bs!555983 (= (and (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (h!42377 rules!2135)))) (= (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toValue!7590 (transformation!5394 (h!42377 rules!2135))))) (= lambda!120866 lambda!120864))))

(assert (=> d!966092 true))

(assert (=> d!966092 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) (dynLambda!15418 order!19513 lambda!120866))))

(assert (=> d!966092 true))

(assert (=> d!966092 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) (dynLambda!15418 order!19513 lambda!120866))))

(assert (=> d!966092 (= (semiInverseModEq!2253 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) (Forall!1323 lambda!120866))))

(declare-fun bs!555984 () Bool)

(assert (= bs!555984 d!966092))

(declare-fun m!3768719 () Bool)

(assert (=> bs!555984 m!3768719))

(assert (=> d!965518 d!966092))

(declare-fun bs!555985 () Bool)

(declare-fun d!966094 () Bool)

(assert (= bs!555985 (and d!966094 d!966028)))

(declare-fun lambda!120867 () Int)

(assert (=> bs!555985 (= (and (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (h!42377 rules!2135)))) (= (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241))) (toValue!7590 (transformation!5394 (h!42377 rules!2135))))) (= lambda!120867 lambda!120864))))

(declare-fun bs!555986 () Bool)

(assert (= bs!555986 (and d!966094 d!966092)))

(assert (=> bs!555986 (= (and (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) (= (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241))) (toValue!7590 (transformation!5394 (rule!7954 (h!42376 tokens!494)))))) (= lambda!120867 lambda!120866))))

(assert (=> d!966094 true))

(assert (=> d!966094 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241)))) (dynLambda!15418 order!19513 lambda!120867))))

(assert (=> d!966094 true))

(assert (=> d!966094 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241)))) (dynLambda!15418 order!19513 lambda!120867))))

(assert (=> d!966094 (= (semiInverseModEq!2253 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toValue!7590 (transformation!5394 (rule!7954 separatorToken!241)))) (Forall!1323 lambda!120867))))

(declare-fun bs!555987 () Bool)

(assert (= bs!555987 d!966094))

(declare-fun m!3768721 () Bool)

(assert (=> bs!555987 m!3768721))

(assert (=> d!965450 d!966094))

(declare-fun d!966096 () Bool)

(declare-fun lt!1155138 () Int)

(assert (=> d!966096 (>= lt!1155138 0)))

(declare-fun e!2109075 () Int)

(assert (=> d!966096 (= lt!1155138 e!2109075)))

(declare-fun c!579173 () Bool)

(assert (=> d!966096 (= c!579173 ((_ is Nil!36955) lt!1154566))))

(assert (=> d!966096 (= (size!27973 lt!1154566) lt!1155138)))

(declare-fun b!3397638 () Bool)

(assert (=> b!3397638 (= e!2109075 0)))

(declare-fun b!3397639 () Bool)

(assert (=> b!3397639 (= e!2109075 (+ 1 (size!27973 (t!265288 lt!1154566))))))

(assert (= (and d!966096 c!579173) b!3397638))

(assert (= (and d!966096 (not c!579173)) b!3397639))

(declare-fun m!3768723 () Bool)

(assert (=> b!3397639 m!3768723))

(assert (=> b!3396401 d!966096))

(assert (=> b!3396401 d!965662))

(assert (=> b!3396401 d!965772))

(declare-fun d!966098 () Bool)

(declare-fun lt!1155139 () Bool)

(assert (=> d!966098 (= lt!1155139 (isEmpty!21220 (list!13387 (_2!21421 lt!1154639))))))

(assert (=> d!966098 (= lt!1155139 (isEmpty!21225 (c!578881 (_2!21421 lt!1154639))))))

(assert (=> d!966098 (= (isEmpty!21221 (_2!21421 lt!1154639)) lt!1155139)))

(declare-fun bs!555988 () Bool)

(assert (= bs!555988 d!966098))

(declare-fun m!3768725 () Bool)

(assert (=> bs!555988 m!3768725))

(assert (=> bs!555988 m!3768725))

(declare-fun m!3768727 () Bool)

(assert (=> bs!555988 m!3768727))

(declare-fun m!3768729 () Bool)

(assert (=> bs!555988 m!3768729))

(assert (=> b!3396604 d!966098))

(declare-fun b!3397642 () Bool)

(declare-fun e!2109077 () List!37079)

(assert (=> b!3397642 (= e!2109077 (list!13395 (xs!14321 (c!578881 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))))))

(declare-fun b!3397640 () Bool)

(declare-fun e!2109076 () List!37079)

(assert (=> b!3397640 (= e!2109076 Nil!36955)))

(declare-fun d!966100 () Bool)

(declare-fun c!579174 () Bool)

(assert (=> d!966100 (= c!579174 ((_ is Empty!11163) (c!578881 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))

(assert (=> d!966100 (= (list!13390 (c!578881 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) e!2109076)))

(declare-fun b!3397641 () Bool)

(assert (=> b!3397641 (= e!2109076 e!2109077)))

(declare-fun c!579175 () Bool)

(assert (=> b!3397641 (= c!579175 ((_ is Leaf!17471) (c!578881 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))

(declare-fun b!3397643 () Bool)

(assert (=> b!3397643 (= e!2109077 (++!9051 (list!13390 (left!28810 (c!578881 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))) (list!13390 (right!29140 (c!578881 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))))

(assert (= (and d!966100 c!579174) b!3397640))

(assert (= (and d!966100 (not c!579174)) b!3397641))

(assert (= (and b!3397641 c!579175) b!3397642))

(assert (= (and b!3397641 (not c!579175)) b!3397643))

(declare-fun m!3768731 () Bool)

(assert (=> b!3397642 m!3768731))

(declare-fun m!3768733 () Bool)

(assert (=> b!3397643 m!3768733))

(declare-fun m!3768735 () Bool)

(assert (=> b!3397643 m!3768735))

(assert (=> b!3397643 m!3768733))

(assert (=> b!3397643 m!3768735))

(declare-fun m!3768737 () Bool)

(assert (=> b!3397643 m!3768737))

(assert (=> d!965356 d!966100))

(declare-fun d!966102 () Bool)

(declare-fun lt!1155140 () Token!10154)

(assert (=> d!966102 (= lt!1155140 (apply!8619 (list!13391 (_1!21421 lt!1154653)) 0))))

(assert (=> d!966102 (= lt!1155140 (apply!8621 (c!578882 (_1!21421 lt!1154653)) 0))))

(declare-fun e!2109078 () Bool)

(assert (=> d!966102 e!2109078))

(declare-fun res!1374674 () Bool)

(assert (=> d!966102 (=> (not res!1374674) (not e!2109078))))

(assert (=> d!966102 (= res!1374674 (<= 0 0))))

(assert (=> d!966102 (= (apply!8618 (_1!21421 lt!1154653) 0) lt!1155140)))

(declare-fun b!3397644 () Bool)

(assert (=> b!3397644 (= e!2109078 (< 0 (size!27974 (_1!21421 lt!1154653))))))

(assert (= (and d!966102 res!1374674) b!3397644))

(assert (=> d!966102 m!3768701))

(assert (=> d!966102 m!3768701))

(declare-fun m!3768739 () Bool)

(assert (=> d!966102 m!3768739))

(declare-fun m!3768741 () Bool)

(assert (=> d!966102 m!3768741))

(assert (=> b!3397644 m!3767099))

(assert (=> b!3396717 d!966102))

(declare-fun b!3397647 () Bool)

(declare-fun res!1374676 () Bool)

(declare-fun e!2109079 () Bool)

(assert (=> b!3397647 (=> (not res!1374676) (not e!2109079))))

(declare-fun lt!1155141 () List!37079)

(assert (=> b!3397647 (= res!1374676 (= (size!27973 lt!1155141) (+ (size!27973 (t!265288 lt!1154540)) (size!27973 lt!1154546))))))

(declare-fun b!3397648 () Bool)

(assert (=> b!3397648 (= e!2109079 (or (not (= lt!1154546 Nil!36955)) (= lt!1155141 (t!265288 lt!1154540))))))

(declare-fun b!3397646 () Bool)

(declare-fun e!2109080 () List!37079)

(assert (=> b!3397646 (= e!2109080 (Cons!36955 (h!42375 (t!265288 lt!1154540)) (++!9051 (t!265288 (t!265288 lt!1154540)) lt!1154546)))))

(declare-fun b!3397645 () Bool)

(assert (=> b!3397645 (= e!2109080 lt!1154546)))

(declare-fun d!966104 () Bool)

(assert (=> d!966104 e!2109079))

(declare-fun res!1374675 () Bool)

(assert (=> d!966104 (=> (not res!1374675) (not e!2109079))))

(assert (=> d!966104 (= res!1374675 (= (content!5108 lt!1155141) ((_ map or) (content!5108 (t!265288 lt!1154540)) (content!5108 lt!1154546))))))

(assert (=> d!966104 (= lt!1155141 e!2109080)))

(declare-fun c!579176 () Bool)

(assert (=> d!966104 (= c!579176 ((_ is Nil!36955) (t!265288 lt!1154540)))))

(assert (=> d!966104 (= (++!9051 (t!265288 lt!1154540) lt!1154546) lt!1155141)))

(assert (= (and d!966104 c!579176) b!3397645))

(assert (= (and d!966104 (not c!579176)) b!3397646))

(assert (= (and d!966104 res!1374675) b!3397647))

(assert (= (and b!3397647 res!1374676) b!3397648))

(declare-fun m!3768743 () Bool)

(assert (=> b!3397647 m!3768743))

(assert (=> b!3397647 m!3767521))

(assert (=> b!3397647 m!3766681))

(declare-fun m!3768745 () Bool)

(assert (=> b!3397646 m!3768745))

(declare-fun m!3768747 () Bool)

(assert (=> d!966104 m!3768747))

(assert (=> d!966104 m!3767703))

(assert (=> d!966104 m!3766689))

(assert (=> b!3396409 d!966104))

(declare-fun d!966106 () Bool)

(assert (=> d!966106 (= (inv!16 (value!174189 separatorToken!241)) (= (charsToInt!0 (text!39815 (value!174189 separatorToken!241))) (value!174181 (value!174189 separatorToken!241))))))

(declare-fun bs!555989 () Bool)

(assert (= bs!555989 d!966106))

(declare-fun m!3768749 () Bool)

(assert (=> bs!555989 m!3768749))

(assert (=> b!3396715 d!966106))

(declare-fun b!3397649 () Bool)

(declare-fun e!2109082 () Bool)

(declare-fun e!2109081 () Bool)

(assert (=> b!3397649 (= e!2109082 e!2109081)))

(declare-fun c!579178 () Bool)

(assert (=> b!3397649 (= c!579178 ((_ is IntegerValue!16873) (value!174189 (h!42376 (t!265289 tokens!494)))))))

(declare-fun b!3397650 () Bool)

(assert (=> b!3397650 (= e!2109081 (inv!17 (value!174189 (h!42376 (t!265289 tokens!494)))))))

(declare-fun b!3397651 () Bool)

(declare-fun res!1374677 () Bool)

(declare-fun e!2109083 () Bool)

(assert (=> b!3397651 (=> res!1374677 e!2109083)))

(assert (=> b!3397651 (= res!1374677 (not ((_ is IntegerValue!16874) (value!174189 (h!42376 (t!265289 tokens!494))))))))

(assert (=> b!3397651 (= e!2109081 e!2109083)))

(declare-fun d!966108 () Bool)

(declare-fun c!579177 () Bool)

(assert (=> d!966108 (= c!579177 ((_ is IntegerValue!16872) (value!174189 (h!42376 (t!265289 tokens!494)))))))

(assert (=> d!966108 (= (inv!21 (value!174189 (h!42376 (t!265289 tokens!494)))) e!2109082)))

(declare-fun b!3397652 () Bool)

(assert (=> b!3397652 (= e!2109082 (inv!16 (value!174189 (h!42376 (t!265289 tokens!494)))))))

(declare-fun b!3397653 () Bool)

(assert (=> b!3397653 (= e!2109083 (inv!15 (value!174189 (h!42376 (t!265289 tokens!494)))))))

(assert (= (and d!966108 c!579177) b!3397652))

(assert (= (and d!966108 (not c!579177)) b!3397649))

(assert (= (and b!3397649 c!579178) b!3397650))

(assert (= (and b!3397649 (not c!579178)) b!3397651))

(assert (= (and b!3397651 (not res!1374677)) b!3397653))

(declare-fun m!3768751 () Bool)

(assert (=> b!3397650 m!3768751))

(declare-fun m!3768753 () Bool)

(assert (=> b!3397652 m!3768753))

(declare-fun m!3768755 () Bool)

(assert (=> b!3397653 m!3768755))

(assert (=> b!3396805 d!966108))

(declare-fun d!966110 () Bool)

(declare-fun res!1374682 () Bool)

(declare-fun e!2109088 () Bool)

(assert (=> d!966110 (=> res!1374682 e!2109088)))

(assert (=> d!966110 (= res!1374682 ((_ is Nil!36957) rules!2135))))

(assert (=> d!966110 (= (noDuplicateTag!2009 thiss!18206 rules!2135 Nil!36959) e!2109088)))

(declare-fun b!3397658 () Bool)

(declare-fun e!2109089 () Bool)

(assert (=> b!3397658 (= e!2109088 e!2109089)))

(declare-fun res!1374683 () Bool)

(assert (=> b!3397658 (=> (not res!1374683) (not e!2109089))))

(declare-fun contains!6787 (List!37083 String!41453) Bool)

(assert (=> b!3397658 (= res!1374683 (not (contains!6787 Nil!36959 (tag!5978 (h!42377 rules!2135)))))))

(declare-fun b!3397659 () Bool)

(assert (=> b!3397659 (= e!2109089 (noDuplicateTag!2009 thiss!18206 (t!265290 rules!2135) (Cons!36959 (tag!5978 (h!42377 rules!2135)) Nil!36959)))))

(assert (= (and d!966110 (not res!1374682)) b!3397658))

(assert (= (and b!3397658 res!1374683) b!3397659))

(declare-fun m!3768757 () Bool)

(assert (=> b!3397658 m!3768757))

(declare-fun m!3768759 () Bool)

(assert (=> b!3397659 m!3768759))

(assert (=> b!3396414 d!966110))

(declare-fun d!966112 () Bool)

(assert (=> d!966112 (= (inv!15 (value!174189 (h!42376 tokens!494))) (= (charsToBigInt!0 (text!39817 (value!174189 (h!42376 tokens!494))) 0) (value!174185 (value!174189 (h!42376 tokens!494)))))))

(declare-fun bs!555990 () Bool)

(assert (= bs!555990 d!966112))

(declare-fun m!3768761 () Bool)

(assert (=> bs!555990 m!3768761))

(assert (=> b!3396550 d!966112))

(declare-fun d!966114 () Bool)

(declare-fun c!579179 () Bool)

(assert (=> d!966114 (= c!579179 ((_ is Nil!36955) lt!1154566))))

(declare-fun e!2109090 () (InoxSet C!20492))

(assert (=> d!966114 (= (content!5108 lt!1154566) e!2109090)))

(declare-fun b!3397660 () Bool)

(assert (=> b!3397660 (= e!2109090 ((as const (Array C!20492 Bool)) false))))

(declare-fun b!3397661 () Bool)

(assert (=> b!3397661 (= e!2109090 ((_ map or) (store ((as const (Array C!20492 Bool)) false) (h!42375 lt!1154566) true) (content!5108 (t!265288 lt!1154566))))))

(assert (= (and d!966114 c!579179) b!3397660))

(assert (= (and d!966114 (not c!579179)) b!3397661))

(declare-fun m!3768763 () Bool)

(assert (=> b!3397661 m!3768763))

(declare-fun m!3768765 () Bool)

(assert (=> b!3397661 m!3768765))

(assert (=> d!965358 d!966114))

(assert (=> d!965358 d!965734))

(assert (=> d!965358 d!966022))

(assert (=> b!3396379 d!965438))

(assert (=> b!3396379 d!965436))

(declare-fun b!3397664 () Bool)

(declare-fun res!1374685 () Bool)

(declare-fun e!2109091 () Bool)

(assert (=> b!3397664 (=> (not res!1374685) (not e!2109091))))

(declare-fun lt!1155142 () List!37079)

(assert (=> b!3397664 (= res!1374685 (= (size!27973 lt!1155142) (+ (size!27973 (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241)))) (size!27973 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241)))))))

(declare-fun b!3397665 () Bool)

(assert (=> b!3397665 (= e!2109091 (or (not (= (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241) Nil!36955)) (= lt!1155142 (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241))))))))

(declare-fun e!2109092 () List!37079)

(declare-fun b!3397663 () Bool)

(assert (=> b!3397663 (= e!2109092 (Cons!36955 (h!42375 (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241)))) (++!9051 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241)))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241))))))

(declare-fun b!3397662 () Bool)

(assert (=> b!3397662 (= e!2109092 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241))))

(declare-fun d!966116 () Bool)

(assert (=> d!966116 e!2109091))

(declare-fun res!1374684 () Bool)

(assert (=> d!966116 (=> (not res!1374684) (not e!2109091))))

(assert (=> d!966116 (= res!1374684 (= (content!5108 lt!1155142) ((_ map or) (content!5108 (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241)))) (content!5108 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241)))))))

(assert (=> d!966116 (= lt!1155142 e!2109092)))

(declare-fun c!579180 () Bool)

(assert (=> d!966116 (= c!579180 ((_ is Nil!36955) (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241)))))))

(assert (=> d!966116 (= (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 tokens!494) separatorToken!241)) lt!1155142)))

(assert (= (and d!966116 c!579180) b!3397662))

(assert (= (and d!966116 (not c!579180)) b!3397663))

(assert (= (and d!966116 res!1374684) b!3397664))

(assert (= (and b!3397664 res!1374685) b!3397665))

(declare-fun m!3768767 () Bool)

(assert (=> b!3397664 m!3768767))

(assert (=> b!3397664 m!3766599))

(declare-fun m!3768769 () Bool)

(assert (=> b!3397664 m!3768769))

(assert (=> b!3397664 m!3766567))

(declare-fun m!3768771 () Bool)

(assert (=> b!3397664 m!3768771))

(assert (=> b!3397663 m!3766567))

(declare-fun m!3768773 () Bool)

(assert (=> b!3397663 m!3768773))

(declare-fun m!3768775 () Bool)

(assert (=> d!966116 m!3768775))

(assert (=> d!966116 m!3766599))

(declare-fun m!3768777 () Bool)

(assert (=> d!966116 m!3768777))

(assert (=> d!966116 m!3766567))

(declare-fun m!3768779 () Bool)

(assert (=> d!966116 m!3768779))

(assert (=> b!3396379 d!966116))

(assert (=> b!3396379 d!965352))

(assert (=> b!3396379 d!965364))

(declare-fun b!3397668 () Bool)

(declare-fun res!1374687 () Bool)

(declare-fun e!2109093 () Bool)

(assert (=> b!3397668 (=> (not res!1374687) (not e!2109093))))

(declare-fun lt!1155143 () List!37079)

(assert (=> b!3397668 (= res!1374687 (= (size!27973 lt!1155143) (+ (size!27973 (list!13387 (charsOf!3408 (h!42376 tokens!494)))) (size!27973 (list!13387 (charsOf!3408 separatorToken!241))))))))

(declare-fun b!3397669 () Bool)

(assert (=> b!3397669 (= e!2109093 (or (not (= (list!13387 (charsOf!3408 separatorToken!241)) Nil!36955)) (= lt!1155143 (list!13387 (charsOf!3408 (h!42376 tokens!494))))))))

(declare-fun b!3397667 () Bool)

(declare-fun e!2109094 () List!37079)

(assert (=> b!3397667 (= e!2109094 (Cons!36955 (h!42375 (list!13387 (charsOf!3408 (h!42376 tokens!494)))) (++!9051 (t!265288 (list!13387 (charsOf!3408 (h!42376 tokens!494)))) (list!13387 (charsOf!3408 separatorToken!241)))))))

(declare-fun b!3397666 () Bool)

(assert (=> b!3397666 (= e!2109094 (list!13387 (charsOf!3408 separatorToken!241)))))

(declare-fun d!966118 () Bool)

(assert (=> d!966118 e!2109093))

(declare-fun res!1374686 () Bool)

(assert (=> d!966118 (=> (not res!1374686) (not e!2109093))))

(assert (=> d!966118 (= res!1374686 (= (content!5108 lt!1155143) ((_ map or) (content!5108 (list!13387 (charsOf!3408 (h!42376 tokens!494)))) (content!5108 (list!13387 (charsOf!3408 separatorToken!241))))))))

(assert (=> d!966118 (= lt!1155143 e!2109094)))

(declare-fun c!579181 () Bool)

(assert (=> d!966118 (= c!579181 ((_ is Nil!36955) (list!13387 (charsOf!3408 (h!42376 tokens!494)))))))

(assert (=> d!966118 (= (++!9051 (list!13387 (charsOf!3408 (h!42376 tokens!494))) (list!13387 (charsOf!3408 separatorToken!241))) lt!1155143)))

(assert (= (and d!966118 c!579181) b!3397666))

(assert (= (and d!966118 (not c!579181)) b!3397667))

(assert (= (and d!966118 res!1374686) b!3397668))

(assert (= (and b!3397668 res!1374687) b!3397669))

(declare-fun m!3768781 () Bool)

(assert (=> b!3397668 m!3768781))

(assert (=> b!3397668 m!3766509))

(declare-fun m!3768783 () Bool)

(assert (=> b!3397668 m!3768783))

(assert (=> b!3397668 m!3766575))

(assert (=> b!3397668 m!3767501))

(assert (=> b!3397667 m!3766575))

(declare-fun m!3768785 () Bool)

(assert (=> b!3397667 m!3768785))

(declare-fun m!3768787 () Bool)

(assert (=> d!966118 m!3768787))

(assert (=> d!966118 m!3766509))

(declare-fun m!3768789 () Bool)

(assert (=> d!966118 m!3768789))

(assert (=> d!966118 m!3766575))

(assert (=> d!966118 m!3767507))

(assert (=> b!3396379 d!966118))

(assert (=> b!3396379 d!965362))

(declare-fun d!966120 () Bool)

(declare-fun lt!1155144 () Bool)

(assert (=> d!966120 (= lt!1155144 (isEmpty!21222 (list!13391 (_1!21421 lt!1154662))))))

(assert (=> d!966120 (= lt!1155144 (isEmpty!21223 (c!578882 (_1!21421 lt!1154662))))))

(assert (=> d!966120 (= (isEmpty!21214 (_1!21421 lt!1154662)) lt!1155144)))

(declare-fun bs!555991 () Bool)

(assert (= bs!555991 d!966120))

(assert (=> bs!555991 m!3767147))

(assert (=> bs!555991 m!3767147))

(declare-fun m!3768791 () Bool)

(assert (=> bs!555991 m!3768791))

(declare-fun m!3768793 () Bool)

(assert (=> bs!555991 m!3768793))

(assert (=> b!3396740 d!966120))

(declare-fun bs!555992 () Bool)

(declare-fun d!966122 () Bool)

(assert (= bs!555992 (and d!966122 b!3396357)))

(declare-fun lambda!120868 () Int)

(assert (=> bs!555992 (not (= lambda!120868 lambda!120825))))

(declare-fun bs!555993 () Bool)

(assert (= bs!555993 (and d!966122 d!965378)))

(assert (=> bs!555993 (= lambda!120868 lambda!120833)))

(declare-fun bs!555994 () Bool)

(assert (= bs!555994 (and d!966122 d!965474)))

(assert (=> bs!555994 (= lambda!120868 lambda!120841)))

(declare-fun bs!555995 () Bool)

(assert (= bs!555995 (and d!966122 d!965714)))

(assert (=> bs!555995 (= lambda!120868 lambda!120850)))

(declare-fun b!3397674 () Bool)

(declare-fun e!2109099 () Bool)

(assert (=> b!3397674 (= e!2109099 true)))

(declare-fun b!3397673 () Bool)

(declare-fun e!2109098 () Bool)

(assert (=> b!3397673 (= e!2109098 e!2109099)))

(declare-fun b!3397672 () Bool)

(declare-fun e!2109097 () Bool)

(assert (=> b!3397672 (= e!2109097 e!2109098)))

(assert (=> d!966122 e!2109097))

(assert (= b!3397673 b!3397674))

(assert (= b!3397672 b!3397673))

(assert (= (and d!966122 ((_ is Cons!36957) rules!2135)) b!3397672))

(assert (=> b!3397674 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15413 order!19503 lambda!120868))))

(assert (=> b!3397674 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (h!42377 rules!2135)))) (dynLambda!15413 order!19503 lambda!120868))))

(assert (=> d!966122 true))

(declare-fun lt!1155145 () Bool)

(assert (=> d!966122 (= lt!1155145 (forall!7803 (list!13391 (seqFromList!3842 tokens!494)) lambda!120868))))

(declare-fun e!2109096 () Bool)

(assert (=> d!966122 (= lt!1155145 e!2109096)))

(declare-fun res!1374689 () Bool)

(assert (=> d!966122 (=> res!1374689 e!2109096)))

(assert (=> d!966122 (= res!1374689 (not ((_ is Cons!36956) (list!13391 (seqFromList!3842 tokens!494)))))))

(assert (=> d!966122 (not (isEmpty!21215 rules!2135))))

(assert (=> d!966122 (= (rulesProduceEachTokenIndividuallyList!1825 thiss!18206 rules!2135 (list!13391 (seqFromList!3842 tokens!494))) lt!1155145)))

(declare-fun b!3397670 () Bool)

(declare-fun e!2109095 () Bool)

(assert (=> b!3397670 (= e!2109096 e!2109095)))

(declare-fun res!1374688 () Bool)

(assert (=> b!3397670 (=> (not res!1374688) (not e!2109095))))

(assert (=> b!3397670 (= res!1374688 (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 (h!42376 (list!13391 (seqFromList!3842 tokens!494)))))))

(declare-fun b!3397671 () Bool)

(assert (=> b!3397671 (= e!2109095 (rulesProduceEachTokenIndividuallyList!1825 thiss!18206 rules!2135 (t!265289 (list!13391 (seqFromList!3842 tokens!494)))))))

(assert (= (and d!966122 (not res!1374689)) b!3397670))

(assert (= (and b!3397670 res!1374688) b!3397671))

(assert (=> d!966122 m!3767073))

(declare-fun m!3768795 () Bool)

(assert (=> d!966122 m!3768795))

(assert (=> d!966122 m!3766495))

(declare-fun m!3768797 () Bool)

(assert (=> b!3397670 m!3768797))

(declare-fun m!3768799 () Bool)

(assert (=> b!3397671 m!3768799))

(assert (=> b!3396708 d!966122))

(assert (=> b!3396708 d!965700))

(declare-fun b!3397677 () Bool)

(declare-fun res!1374691 () Bool)

(declare-fun e!2109100 () Bool)

(assert (=> b!3397677 (=> (not res!1374691) (not e!2109100))))

(declare-fun lt!1155146 () List!37079)

(assert (=> b!3397677 (= res!1374691 (= (size!27973 lt!1155146) (+ (size!27973 (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) (size!27973 (printList!1531 thiss!18206 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))))))

(declare-fun b!3397678 () Bool)

(assert (=> b!3397678 (= e!2109100 (or (not (= (printList!1531 thiss!18206 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956))) Nil!36955)) (= lt!1155146 (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))))))

(declare-fun b!3397676 () Bool)

(declare-fun e!2109101 () List!37079)

(assert (=> b!3397676 (= e!2109101 (Cons!36955 (h!42375 (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) (++!9051 (t!265288 (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) (printList!1531 thiss!18206 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956))))))))

(declare-fun b!3397675 () Bool)

(assert (=> b!3397675 (= e!2109101 (printList!1531 thiss!18206 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956))))))

(declare-fun d!966124 () Bool)

(assert (=> d!966124 e!2109100))

(declare-fun res!1374690 () Bool)

(assert (=> d!966124 (=> (not res!1374690) (not e!2109100))))

(assert (=> d!966124 (= res!1374690 (= (content!5108 lt!1155146) ((_ map or) (content!5108 (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) (content!5108 (printList!1531 thiss!18206 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))))))

(assert (=> d!966124 (= lt!1155146 e!2109101)))

(declare-fun c!579182 () Bool)

(assert (=> d!966124 (= c!579182 ((_ is Nil!36955) (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))))))

(assert (=> d!966124 (= (++!9051 (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))) (printList!1531 thiss!18206 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956)))) lt!1155146)))

(assert (= (and d!966124 c!579182) b!3397675))

(assert (= (and d!966124 (not c!579182)) b!3397676))

(assert (= (and d!966124 res!1374690) b!3397677))

(assert (= (and b!3397677 res!1374691) b!3397678))

(declare-fun m!3768801 () Bool)

(assert (=> b!3397677 m!3768801))

(assert (=> b!3397677 m!3767211))

(declare-fun m!3768803 () Bool)

(assert (=> b!3397677 m!3768803))

(assert (=> b!3397677 m!3767213))

(declare-fun m!3768805 () Bool)

(assert (=> b!3397677 m!3768805))

(assert (=> b!3397676 m!3767213))

(declare-fun m!3768807 () Bool)

(assert (=> b!3397676 m!3768807))

(declare-fun m!3768809 () Bool)

(assert (=> d!966124 m!3768809))

(assert (=> d!966124 m!3767211))

(declare-fun m!3768811 () Bool)

(assert (=> d!966124 m!3768811))

(assert (=> d!966124 m!3767213))

(declare-fun m!3768813 () Bool)

(assert (=> d!966124 m!3768813))

(assert (=> b!3396768 d!966124))

(declare-fun d!966126 () Bool)

(assert (=> d!966126 (= (list!13387 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))) (list!13390 (c!578881 (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))))))

(declare-fun bs!555996 () Bool)

(assert (= bs!555996 d!966126))

(declare-fun m!3768815 () Bool)

(assert (=> bs!555996 m!3768815))

(assert (=> b!3396768 d!966126))

(declare-fun d!966128 () Bool)

(declare-fun lt!1155147 () BalanceConc!21940)

(assert (=> d!966128 (= (list!13387 lt!1155147) (originalCharacters!6108 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))))

(assert (=> d!966128 (= lt!1155147 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) (value!174189 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))))

(assert (=> d!966128 (= (charsOf!3408 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))) lt!1155147)))

(declare-fun b_lambda!96817 () Bool)

(assert (=> (not b_lambda!96817) (not d!966128)))

(declare-fun tb!181943 () Bool)

(declare-fun t!265441 () Bool)

(assert (=> (and b!3396347 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))) t!265441) tb!181943))

(declare-fun b!3397679 () Bool)

(declare-fun e!2109102 () Bool)

(declare-fun tp!1060401 () Bool)

(assert (=> b!3397679 (= e!2109102 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) (value!174189 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))) tp!1060401))))

(declare-fun result!225546 () Bool)

(assert (=> tb!181943 (= result!225546 (and (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) (value!174189 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) e!2109102))))

(assert (= tb!181943 b!3397679))

(declare-fun m!3768817 () Bool)

(assert (=> b!3397679 m!3768817))

(declare-fun m!3768819 () Bool)

(assert (=> tb!181943 m!3768819))

(assert (=> d!966128 t!265441))

(declare-fun b_and!236919 () Bool)

(assert (= b_and!236909 (and (=> t!265441 result!225546) b_and!236919)))

(declare-fun tb!181945 () Bool)

(declare-fun t!265443 () Bool)

(assert (=> (and b!3396349 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))) t!265443) tb!181945))

(declare-fun result!225548 () Bool)

(assert (= result!225548 result!225546))

(assert (=> d!966128 t!265443))

(declare-fun b_and!236921 () Bool)

(assert (= b_and!236905 (and (=> t!265443 result!225548) b_and!236921)))

(declare-fun t!265445 () Bool)

(declare-fun tb!181947 () Bool)

(assert (=> (and b!3396807 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))) t!265445) tb!181947))

(declare-fun result!225550 () Bool)

(assert (= result!225550 result!225546))

(assert (=> d!966128 t!265445))

(declare-fun b_and!236923 () Bool)

(assert (= b_and!236907 (and (=> t!265445 result!225550) b_and!236923)))

(declare-fun t!265447 () Bool)

(declare-fun tb!181949 () Bool)

(assert (=> (and b!3396341 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))) t!265447) tb!181949))

(declare-fun result!225552 () Bool)

(assert (= result!225552 result!225546))

(assert (=> d!966128 t!265447))

(declare-fun b_and!236925 () Bool)

(assert (= b_and!236903 (and (=> t!265447 result!225552) b_and!236925)))

(declare-fun tb!181951 () Bool)

(declare-fun t!265449 () Bool)

(assert (=> (and b!3396822 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))) t!265449) tb!181951))

(declare-fun result!225554 () Bool)

(assert (= result!225554 result!225546))

(assert (=> d!966128 t!265449))

(declare-fun b_and!236927 () Bool)

(assert (= b_and!236901 (and (=> t!265449 result!225554) b_and!236927)))

(declare-fun m!3768821 () Bool)

(assert (=> d!966128 m!3768821))

(declare-fun m!3768823 () Bool)

(assert (=> d!966128 m!3768823))

(assert (=> b!3396768 d!966128))

(declare-fun d!966130 () Bool)

(declare-fun c!579183 () Bool)

(assert (=> d!966130 (= c!579183 ((_ is Cons!36956) (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956))))))

(declare-fun e!2109103 () List!37079)

(assert (=> d!966130 (= (printList!1531 thiss!18206 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956))) e!2109103)))

(declare-fun b!3397680 () Bool)

(assert (=> b!3397680 (= e!2109103 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956))))) (printList!1531 thiss!18206 (t!265289 (t!265289 (Cons!36956 (h!42376 tokens!494) Nil!36956))))))))

(declare-fun b!3397681 () Bool)

(assert (=> b!3397681 (= e!2109103 Nil!36955)))

(assert (= (and d!966130 c!579183) b!3397680))

(assert (= (and d!966130 (not c!579183)) b!3397681))

(declare-fun m!3768825 () Bool)

(assert (=> b!3397680 m!3768825))

(assert (=> b!3397680 m!3768825))

(declare-fun m!3768827 () Bool)

(assert (=> b!3397680 m!3768827))

(declare-fun m!3768829 () Bool)

(assert (=> b!3397680 m!3768829))

(assert (=> b!3397680 m!3768827))

(assert (=> b!3397680 m!3768829))

(declare-fun m!3768831 () Bool)

(assert (=> b!3397680 m!3768831))

(assert (=> b!3396768 d!966130))

(declare-fun d!966132 () Bool)

(assert (=> d!966132 true))

(declare-fun lt!1155150 () Bool)

(declare-fun rulesValidInductive!1839 (LexerInterface!4983 List!37081) Bool)

(assert (=> d!966132 (= lt!1155150 (rulesValidInductive!1839 thiss!18206 rules!2135))))

(declare-fun lambda!120871 () Int)

(declare-fun forall!7809 (List!37081 Int) Bool)

(assert (=> d!966132 (= lt!1155150 (forall!7809 rules!2135 lambda!120871))))

(assert (=> d!966132 (= (rulesValid!2013 thiss!18206 rules!2135) lt!1155150)))

(declare-fun bs!555997 () Bool)

(assert (= bs!555997 d!966132))

(declare-fun m!3768833 () Bool)

(assert (=> bs!555997 m!3768833))

(declare-fun m!3768835 () Bool)

(assert (=> bs!555997 m!3768835))

(assert (=> d!965372 d!966132))

(declare-fun d!966134 () Bool)

(assert (=> d!966134 (= (list!13387 (_2!21421 lt!1154662)) (list!13390 (c!578881 (_2!21421 lt!1154662))))))

(declare-fun bs!555998 () Bool)

(assert (= bs!555998 d!966134))

(declare-fun m!3768837 () Bool)

(assert (=> bs!555998 m!3768837))

(assert (=> b!3396744 d!966134))

(assert (=> b!3396744 d!966072))

(assert (=> b!3396744 d!966074))

(declare-fun d!966136 () Bool)

(declare-fun lt!1155151 () BalanceConc!21940)

(assert (=> d!966136 (= (list!13387 lt!1155151) (originalCharacters!6108 (h!42376 (t!265289 (t!265289 tokens!494)))))))

(assert (=> d!966136 (= lt!1155151 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (value!174189 (h!42376 (t!265289 (t!265289 tokens!494))))))))

(assert (=> d!966136 (= (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494)))) lt!1155151)))

(declare-fun b_lambda!96819 () Bool)

(assert (=> (not b_lambda!96819) (not d!966136)))

(declare-fun t!265451 () Bool)

(declare-fun tb!181953 () Bool)

(assert (=> (and b!3396347 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494))))))) t!265451) tb!181953))

(declare-fun b!3397684 () Bool)

(declare-fun e!2109104 () Bool)

(declare-fun tp!1060402 () Bool)

(assert (=> b!3397684 (= e!2109104 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (value!174189 (h!42376 (t!265289 (t!265289 tokens!494))))))) tp!1060402))))

(declare-fun result!225556 () Bool)

(assert (=> tb!181953 (= result!225556 (and (inv!50052 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (value!174189 (h!42376 (t!265289 (t!265289 tokens!494)))))) e!2109104))))

(assert (= tb!181953 b!3397684))

(declare-fun m!3768839 () Bool)

(assert (=> b!3397684 m!3768839))

(declare-fun m!3768841 () Bool)

(assert (=> tb!181953 m!3768841))

(assert (=> d!966136 t!265451))

(declare-fun b_and!236929 () Bool)

(assert (= b_and!236919 (and (=> t!265451 result!225556) b_and!236929)))

(declare-fun tb!181955 () Bool)

(declare-fun t!265453 () Bool)

(assert (=> (and b!3396822 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494))))))) t!265453) tb!181955))

(declare-fun result!225558 () Bool)

(assert (= result!225558 result!225556))

(assert (=> d!966136 t!265453))

(declare-fun b_and!236931 () Bool)

(assert (= b_and!236927 (and (=> t!265453 result!225558) b_and!236931)))

(declare-fun tb!181957 () Bool)

(declare-fun t!265455 () Bool)

(assert (=> (and b!3396349 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494))))))) t!265455) tb!181957))

(declare-fun result!225560 () Bool)

(assert (= result!225560 result!225556))

(assert (=> d!966136 t!265455))

(declare-fun b_and!236933 () Bool)

(assert (= b_and!236921 (and (=> t!265455 result!225560) b_and!236933)))

(declare-fun t!265457 () Bool)

(declare-fun tb!181959 () Bool)

(assert (=> (and b!3396807 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494))))))) t!265457) tb!181959))

(declare-fun result!225562 () Bool)

(assert (= result!225562 result!225556))

(assert (=> d!966136 t!265457))

(declare-fun b_and!236935 () Bool)

(assert (= b_and!236923 (and (=> t!265457 result!225562) b_and!236935)))

(declare-fun t!265459 () Bool)

(declare-fun tb!181961 () Bool)

(assert (=> (and b!3396341 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494))))))) t!265459) tb!181961))

(declare-fun result!225564 () Bool)

(assert (= result!225564 result!225556))

(assert (=> d!966136 t!265459))

(declare-fun b_and!236937 () Bool)

(assert (= b_and!236925 (and (=> t!265459 result!225564) b_and!236937)))

(declare-fun m!3768843 () Bool)

(assert (=> d!966136 m!3768843))

(declare-fun m!3768845 () Bool)

(assert (=> d!966136 m!3768845))

(assert (=> b!3396403 d!966136))

(declare-fun d!966138 () Bool)

(assert (=> d!966138 (= (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13390 (c!578881 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494)))))))))

(declare-fun bs!555999 () Bool)

(assert (= bs!555999 d!966138))

(declare-fun m!3768847 () Bool)

(assert (=> bs!555999 m!3768847))

(assert (=> b!3396403 d!966138))

(declare-fun d!966140 () Bool)

(declare-fun c!579184 () Bool)

(assert (=> d!966140 (= c!579184 ((_ is Cons!36956) (t!265289 (t!265289 (t!265289 tokens!494)))))))

(declare-fun e!2109105 () List!37079)

(assert (=> d!966140 (= (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 tokens!494))) separatorToken!241) e!2109105)))

(declare-fun b!3397685 () Bool)

(assert (=> b!3397685 (= e!2109105 (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 (t!265289 tokens!494)))))) (list!13387 (charsOf!3408 separatorToken!241))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 (t!265289 tokens!494)))) separatorToken!241)))))

(declare-fun b!3397686 () Bool)

(assert (=> b!3397686 (= e!2109105 Nil!36955)))

(assert (= (and d!966140 c!579184) b!3397685))

(assert (= (and d!966140 (not c!579184)) b!3397686))

(declare-fun m!3768849 () Bool)

(assert (=> b!3397685 m!3768849))

(declare-fun m!3768851 () Bool)

(assert (=> b!3397685 m!3768851))

(assert (=> b!3397685 m!3766575))

(declare-fun m!3768853 () Bool)

(assert (=> b!3397685 m!3768853))

(assert (=> b!3397685 m!3768853))

(declare-fun m!3768855 () Bool)

(assert (=> b!3397685 m!3768855))

(declare-fun m!3768857 () Bool)

(assert (=> b!3397685 m!3768857))

(assert (=> b!3397685 m!3766573))

(assert (=> b!3397685 m!3766575))

(assert (=> b!3397685 m!3768855))

(assert (=> b!3397685 m!3768849))

(assert (=> b!3397685 m!3768851))

(assert (=> b!3397685 m!3766573))

(assert (=> b!3396403 d!966140))

(declare-fun b!3397689 () Bool)

(declare-fun res!1374693 () Bool)

(declare-fun e!2109106 () Bool)

(assert (=> b!3397689 (=> (not res!1374693) (not e!2109106))))

(declare-fun lt!1155152 () List!37079)

(assert (=> b!3397689 (= res!1374693 (= (size!27973 lt!1155152) (+ (size!27973 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494)))))) (size!27973 (list!13387 (charsOf!3408 separatorToken!241))))))))

(declare-fun b!3397690 () Bool)

(assert (=> b!3397690 (= e!2109106 (or (not (= (list!13387 (charsOf!3408 separatorToken!241)) Nil!36955)) (= lt!1155152 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))))))))

(declare-fun b!3397688 () Bool)

(declare-fun e!2109107 () List!37079)

(assert (=> b!3397688 (= e!2109107 (Cons!36955 (h!42375 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494)))))) (++!9051 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494)))))) (list!13387 (charsOf!3408 separatorToken!241)))))))

(declare-fun b!3397687 () Bool)

(assert (=> b!3397687 (= e!2109107 (list!13387 (charsOf!3408 separatorToken!241)))))

(declare-fun d!966142 () Bool)

(assert (=> d!966142 e!2109106))

(declare-fun res!1374692 () Bool)

(assert (=> d!966142 (=> (not res!1374692) (not e!2109106))))

(assert (=> d!966142 (= res!1374692 (= (content!5108 lt!1155152) ((_ map or) (content!5108 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494)))))) (content!5108 (list!13387 (charsOf!3408 separatorToken!241))))))))

(assert (=> d!966142 (= lt!1155152 e!2109107)))

(declare-fun c!579185 () Bool)

(assert (=> d!966142 (= c!579185 ((_ is Nil!36955) (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494)))))))))

(assert (=> d!966142 (= (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241))) lt!1155152)))

(assert (= (and d!966142 c!579185) b!3397687))

(assert (= (and d!966142 (not c!579185)) b!3397688))

(assert (= (and d!966142 res!1374692) b!3397689))

(assert (= (and b!3397689 res!1374693) b!3397690))

(declare-fun m!3768859 () Bool)

(assert (=> b!3397689 m!3768859))

(assert (=> b!3397689 m!3766655))

(declare-fun m!3768861 () Bool)

(assert (=> b!3397689 m!3768861))

(assert (=> b!3397689 m!3766575))

(assert (=> b!3397689 m!3767501))

(assert (=> b!3397688 m!3766575))

(declare-fun m!3768863 () Bool)

(assert (=> b!3397688 m!3768863))

(declare-fun m!3768865 () Bool)

(assert (=> d!966142 m!3768865))

(assert (=> d!966142 m!3766655))

(declare-fun m!3768867 () Bool)

(assert (=> d!966142 m!3768867))

(assert (=> d!966142 m!3766575))

(assert (=> d!966142 m!3767507))

(assert (=> b!3396403 d!966142))

(assert (=> b!3396403 d!965352))

(assert (=> b!3396403 d!965364))

(declare-fun b!3397693 () Bool)

(declare-fun res!1374695 () Bool)

(declare-fun e!2109108 () Bool)

(assert (=> b!3397693 (=> (not res!1374695) (not e!2109108))))

(declare-fun lt!1155153 () List!37079)

(assert (=> b!3397693 (= res!1374695 (= (size!27973 lt!1155153) (+ (size!27973 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241)))) (size!27973 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 tokens!494))) separatorToken!241)))))))

(declare-fun b!3397694 () Bool)

(assert (=> b!3397694 (= e!2109108 (or (not (= (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 tokens!494))) separatorToken!241) Nil!36955)) (= lt!1155153 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241))))))))

(declare-fun e!2109109 () List!37079)

(declare-fun b!3397692 () Bool)

(assert (=> b!3397692 (= e!2109109 (Cons!36955 (h!42375 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241)))) (++!9051 (t!265288 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241)))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 tokens!494))) separatorToken!241))))))

(declare-fun b!3397691 () Bool)

(assert (=> b!3397691 (= e!2109109 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 tokens!494))) separatorToken!241))))

(declare-fun d!966144 () Bool)

(assert (=> d!966144 e!2109108))

(declare-fun res!1374694 () Bool)

(assert (=> d!966144 (=> (not res!1374694) (not e!2109108))))

(assert (=> d!966144 (= res!1374694 (= (content!5108 lt!1155153) ((_ map or) (content!5108 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241)))) (content!5108 (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 tokens!494))) separatorToken!241)))))))

(assert (=> d!966144 (= lt!1155153 e!2109109)))

(declare-fun c!579186 () Bool)

(assert (=> d!966144 (= c!579186 ((_ is Nil!36955) (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241)))))))

(assert (=> d!966144 (= (++!9051 (++!9051 (list!13387 (charsOf!3408 (h!42376 (t!265289 (t!265289 tokens!494))))) (list!13387 (charsOf!3408 separatorToken!241))) (printWithSeparatorTokenList!270 thiss!18206 (t!265289 (t!265289 (t!265289 tokens!494))) separatorToken!241)) lt!1155153)))

(assert (= (and d!966144 c!579186) b!3397691))

(assert (= (and d!966144 (not c!579186)) b!3397692))

(assert (= (and d!966144 res!1374694) b!3397693))

(assert (= (and b!3397693 res!1374695) b!3397694))

(declare-fun m!3768869 () Bool)

(assert (=> b!3397693 m!3768869))

(assert (=> b!3397693 m!3766657))

(declare-fun m!3768871 () Bool)

(assert (=> b!3397693 m!3768871))

(assert (=> b!3397693 m!3766659))

(declare-fun m!3768873 () Bool)

(assert (=> b!3397693 m!3768873))

(assert (=> b!3397692 m!3766659))

(declare-fun m!3768875 () Bool)

(assert (=> b!3397692 m!3768875))

(declare-fun m!3768877 () Bool)

(assert (=> d!966144 m!3768877))

(assert (=> d!966144 m!3766657))

(declare-fun m!3768879 () Bool)

(assert (=> d!966144 m!3768879))

(assert (=> d!966144 m!3766659))

(declare-fun m!3768881 () Bool)

(assert (=> d!966144 m!3768881))

(assert (=> b!3396403 d!966144))

(declare-fun b!3397703 () Bool)

(declare-fun e!2109116 () Bool)

(declare-fun e!2109118 () Bool)

(assert (=> b!3397703 (= e!2109116 e!2109118)))

(declare-fun res!1374700 () Bool)

(declare-fun rulesUseDisjointChars!327 (Rule!10588 Rule!10588) Bool)

(assert (=> b!3397703 (= res!1374700 (rulesUseDisjointChars!327 (h!42377 rules!2135) (h!42377 rules!2135)))))

(assert (=> b!3397703 (=> (not res!1374700) (not e!2109118))))

(declare-fun b!3397704 () Bool)

(declare-fun call!245800 () Bool)

(assert (=> b!3397704 (= e!2109118 call!245800)))

(declare-fun b!3397705 () Bool)

(declare-fun e!2109117 () Bool)

(assert (=> b!3397705 (= e!2109117 call!245800)))

(declare-fun d!966146 () Bool)

(declare-fun c!579189 () Bool)

(assert (=> d!966146 (= c!579189 (and ((_ is Cons!36957) rules!2135) (not (= (isSeparator!5394 (h!42377 rules!2135)) (isSeparator!5394 (h!42377 rules!2135))))))))

(assert (=> d!966146 (= (ruleDisjointCharsFromAllFromOtherType!689 (h!42377 rules!2135) rules!2135) e!2109116)))

(declare-fun bm!245795 () Bool)

(assert (=> bm!245795 (= call!245800 (ruleDisjointCharsFromAllFromOtherType!689 (h!42377 rules!2135) (t!265290 rules!2135)))))

(declare-fun b!3397706 () Bool)

(assert (=> b!3397706 (= e!2109116 e!2109117)))

(declare-fun res!1374701 () Bool)

(assert (=> b!3397706 (= res!1374701 (not ((_ is Cons!36957) rules!2135)))))

(assert (=> b!3397706 (=> res!1374701 e!2109117)))

(assert (= (and d!966146 c!579189) b!3397703))

(assert (= (and d!966146 (not c!579189)) b!3397706))

(assert (= (and b!3397703 res!1374700) b!3397704))

(assert (= (and b!3397706 (not res!1374701)) b!3397705))

(assert (= (or b!3397704 b!3397705) bm!245795))

(declare-fun m!3768883 () Bool)

(assert (=> b!3397703 m!3768883))

(declare-fun m!3768885 () Bool)

(assert (=> bm!245795 m!3768885))

(assert (=> b!3396555 d!966146))

(declare-fun b!3397709 () Bool)

(declare-fun res!1374703 () Bool)

(declare-fun e!2109119 () Bool)

(assert (=> b!3397709 (=> (not res!1374703) (not e!2109119))))

(declare-fun lt!1155154 () List!37079)

(assert (=> b!3397709 (= res!1374703 (= (size!27973 lt!1155154) (+ (size!27973 (t!265288 lt!1154543)) (size!27973 lt!1154548))))))

(declare-fun b!3397710 () Bool)

(assert (=> b!3397710 (= e!2109119 (or (not (= lt!1154548 Nil!36955)) (= lt!1155154 (t!265288 lt!1154543))))))

(declare-fun b!3397708 () Bool)

(declare-fun e!2109120 () List!37079)

(assert (=> b!3397708 (= e!2109120 (Cons!36955 (h!42375 (t!265288 lt!1154543)) (++!9051 (t!265288 (t!265288 lt!1154543)) lt!1154548)))))

(declare-fun b!3397707 () Bool)

(assert (=> b!3397707 (= e!2109120 lt!1154548)))

(declare-fun d!966148 () Bool)

(assert (=> d!966148 e!2109119))

(declare-fun res!1374702 () Bool)

(assert (=> d!966148 (=> (not res!1374702) (not e!2109119))))

(assert (=> d!966148 (= res!1374702 (= (content!5108 lt!1155154) ((_ map or) (content!5108 (t!265288 lt!1154543)) (content!5108 lt!1154548))))))

(assert (=> d!966148 (= lt!1155154 e!2109120)))

(declare-fun c!579190 () Bool)

(assert (=> d!966148 (= c!579190 ((_ is Nil!36955) (t!265288 lt!1154543)))))

(assert (=> d!966148 (= (++!9051 (t!265288 lt!1154543) lt!1154548) lt!1155154)))

(assert (= (and d!966148 c!579190) b!3397707))

(assert (= (and d!966148 (not c!579190)) b!3397708))

(assert (= (and d!966148 res!1374702) b!3397709))

(assert (= (and b!3397709 res!1374703) b!3397710))

(declare-fun m!3768887 () Bool)

(assert (=> b!3397709 m!3768887))

(assert (=> b!3397709 m!3767523))

(assert (=> b!3397709 m!3766645))

(declare-fun m!3768889 () Bool)

(assert (=> b!3397708 m!3768889))

(declare-fun m!3768891 () Bool)

(assert (=> d!966148 m!3768891))

(assert (=> d!966148 m!3767707))

(assert (=> d!966148 m!3766651))

(assert (=> b!3396400 d!966148))

(declare-fun b!3397713 () Bool)

(declare-fun res!1374705 () Bool)

(declare-fun e!2109121 () Bool)

(assert (=> b!3397713 (=> (not res!1374705) (not e!2109121))))

(declare-fun lt!1155155 () List!37079)

(assert (=> b!3397713 (= res!1374705 (= (size!27973 lt!1155155) (+ (size!27973 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))) (size!27973 lt!1154543))))))

(declare-fun b!3397714 () Bool)

(assert (=> b!3397714 (= e!2109121 (or (not (= lt!1154543 Nil!36955)) (= lt!1155155 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))))))))

(declare-fun b!3397712 () Bool)

(declare-fun e!2109122 () List!37079)

(assert (=> b!3397712 (= e!2109122 (Cons!36955 (h!42375 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))) (++!9051 (t!265288 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))) lt!1154543)))))

(declare-fun b!3397711 () Bool)

(assert (=> b!3397711 (= e!2109122 lt!1154543)))

(declare-fun d!966150 () Bool)

(assert (=> d!966150 e!2109121))

(declare-fun res!1374704 () Bool)

(assert (=> d!966150 (=> (not res!1374704) (not e!2109121))))

(assert (=> d!966150 (= res!1374704 (= (content!5108 lt!1155155) ((_ map or) (content!5108 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))) (content!5108 lt!1154543))))))

(assert (=> d!966150 (= lt!1155155 e!2109122)))

(declare-fun c!579191 () Bool)

(assert (=> d!966150 (= c!579191 ((_ is Nil!36955) (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494)))))))))

(assert (=> d!966150 (= (++!9051 (t!265288 (list!13387 (charsOf!3408 (h!42376 (t!265289 tokens!494))))) lt!1154543) lt!1155155)))

(assert (= (and d!966150 c!579191) b!3397711))

(assert (= (and d!966150 (not c!579191)) b!3397712))

(assert (= (and d!966150 res!1374704) b!3397713))

(assert (= (and b!3397713 res!1374705) b!3397714))

(declare-fun m!3768893 () Bool)

(assert (=> b!3397713 m!3768893))

(assert (=> b!3397713 m!3768709))

(assert (=> b!3397713 m!3766589))

(declare-fun m!3768895 () Bool)

(assert (=> b!3397712 m!3768895))

(declare-fun m!3768897 () Bool)

(assert (=> d!966150 m!3768897))

(assert (=> d!966150 m!3768649))

(assert (=> d!966150 m!3766597))

(assert (=> b!3396372 d!966150))

(assert (=> b!3396758 d!965812))

(declare-fun d!966152 () Bool)

(declare-fun lt!1155156 () Token!10154)

(assert (=> d!966152 (= lt!1155156 (apply!8619 (list!13391 (_1!21421 lt!1154639)) 0))))

(assert (=> d!966152 (= lt!1155156 (apply!8621 (c!578882 (_1!21421 lt!1154639)) 0))))

(declare-fun e!2109123 () Bool)

(assert (=> d!966152 e!2109123))

(declare-fun res!1374706 () Bool)

(assert (=> d!966152 (=> (not res!1374706) (not e!2109123))))

(assert (=> d!966152 (= res!1374706 (<= 0 0))))

(assert (=> d!966152 (= (apply!8618 (_1!21421 lt!1154639) 0) lt!1155156)))

(declare-fun b!3397715 () Bool)

(assert (=> b!3397715 (= e!2109123 (< 0 (size!27974 (_1!21421 lt!1154639))))))

(assert (= (and d!966152 res!1374706) b!3397715))

(assert (=> d!966152 m!3768667))

(assert (=> d!966152 m!3768667))

(declare-fun m!3768899 () Bool)

(assert (=> d!966152 m!3768899))

(declare-fun m!3768901 () Bool)

(assert (=> d!966152 m!3768901))

(assert (=> b!3397715 m!3766987))

(assert (=> b!3396603 d!966152))

(declare-fun d!966154 () Bool)

(declare-fun lt!1155157 () Int)

(assert (=> d!966154 (>= lt!1155157 0)))

(declare-fun e!2109124 () Int)

(assert (=> d!966154 (= lt!1155157 e!2109124)))

(declare-fun c!579192 () Bool)

(assert (=> d!966154 (= c!579192 ((_ is Nil!36955) (originalCharacters!6108 separatorToken!241)))))

(assert (=> d!966154 (= (size!27973 (originalCharacters!6108 separatorToken!241)) lt!1155157)))

(declare-fun b!3397716 () Bool)

(assert (=> b!3397716 (= e!2109124 0)))

(declare-fun b!3397717 () Bool)

(assert (=> b!3397717 (= e!2109124 (+ 1 (size!27973 (t!265288 (originalCharacters!6108 separatorToken!241)))))))

(assert (= (and d!966154 c!579192) b!3397716))

(assert (= (and d!966154 (not c!579192)) b!3397717))

(declare-fun m!3768903 () Bool)

(assert (=> b!3397717 m!3768903))

(assert (=> b!3396426 d!966154))

(declare-fun d!966156 () Bool)

(assert (=> d!966156 (= (isEmpty!21222 (list!13391 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))) ((_ is Nil!36956) (list!13391 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))))))

(assert (=> d!965506 d!966156))

(declare-fun d!966158 () Bool)

(assert (=> d!966158 (= (list!13391 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540)))) (list!13394 (c!578882 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))))))

(declare-fun bs!556000 () Bool)

(assert (= bs!556000 d!966158))

(declare-fun m!3768905 () Bool)

(assert (=> bs!556000 m!3768905))

(assert (=> d!965506 d!966158))

(declare-fun lt!1155160 () Bool)

(declare-fun d!966160 () Bool)

(assert (=> d!966160 (= lt!1155160 (isEmpty!21222 (list!13394 (c!578882 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540)))))))))

(assert (=> d!966160 (= lt!1155160 (= (size!27979 (c!578882 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))) 0))))

(assert (=> d!966160 (= (isEmpty!21223 (c!578882 (_1!21421 (lex!2309 thiss!18206 rules!2135 (seqFromList!3841 lt!1154540))))) lt!1155160)))

(declare-fun bs!556001 () Bool)

(assert (= bs!556001 d!966160))

(assert (=> bs!556001 m!3768905))

(assert (=> bs!556001 m!3768905))

(declare-fun m!3768907 () Bool)

(assert (=> bs!556001 m!3768907))

(declare-fun m!3768909 () Bool)

(assert (=> bs!556001 m!3768909))

(assert (=> d!965506 d!966160))

(declare-fun b!3397721 () Bool)

(declare-fun b_free!88933 () Bool)

(declare-fun b_next!89637 () Bool)

(assert (=> b!3397721 (= b_free!88933 (not b_next!89637))))

(declare-fun tp!1060407 () Bool)

(declare-fun b_and!236939 () Bool)

(assert (=> b!3397721 (= tp!1060407 b_and!236939)))

(declare-fun b_free!88935 () Bool)

(declare-fun b_next!89639 () Bool)

(assert (=> b!3397721 (= b_free!88935 (not b_next!89639))))

(declare-fun t!265462 () Bool)

(declare-fun tb!181963 () Bool)

(assert (=> (and b!3397721 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) t!265462) tb!181963))

(declare-fun result!225566 () Bool)

(assert (= result!225566 result!225428))

(assert (=> d!965438 t!265462))

(declare-fun t!265464 () Bool)

(declare-fun tb!181965 () Bool)

(assert (=> (and b!3397721 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241)))) t!265464) tb!181965))

(declare-fun result!225568 () Bool)

(assert (= result!225568 result!225400))

(assert (=> b!3396425 t!265464))

(declare-fun t!265466 () Bool)

(declare-fun tb!181967 () Bool)

(assert (=> (and b!3397721 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494))))))) t!265466) tb!181967))

(declare-fun result!225570 () Bool)

(assert (= result!225570 result!225556))

(assert (=> d!966136 t!265466))

(declare-fun tb!181969 () Bool)

(declare-fun t!265468 () Bool)

(assert (=> (and b!3397721 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0))))) t!265468) tb!181969))

(declare-fun result!225572 () Bool)

(assert (= result!225572 result!225510))

(assert (=> d!965958 t!265468))

(declare-fun t!265470 () Bool)

(declare-fun tb!181971 () Bool)

(assert (=> (and b!3397721 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))) t!265470) tb!181971))

(declare-fun result!225574 () Bool)

(assert (= result!225574 result!225546))

(assert (=> d!966128 t!265470))

(assert (=> b!3396720 t!265462))

(declare-fun t!265472 () Bool)

(declare-fun tb!181973 () Bool)

(assert (=> (and b!3397721 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) t!265472) tb!181973))

(declare-fun result!225576 () Bool)

(assert (= result!225576 result!225408))

(assert (=> d!965366 t!265472))

(assert (=> b!3397014 t!265472))

(assert (=> d!965352 t!265464))

(declare-fun tp!1060405 () Bool)

(declare-fun b_and!236941 () Bool)

(assert (=> b!3397721 (= tp!1060405 (and (=> t!265470 result!225574) (=> t!265462 result!225566) (=> t!265464 result!225568) (=> t!265472 result!225576) (=> t!265468 result!225572) (=> t!265466 result!225570) b_and!236941))))

(declare-fun e!2109128 () Bool)

(assert (=> b!3397721 (= e!2109128 (and tp!1060407 tp!1060405))))

(declare-fun e!2109127 () Bool)

(declare-fun tp!1060404 () Bool)

(declare-fun b!3397719 () Bool)

(declare-fun e!2109130 () Bool)

(assert (=> b!3397719 (= e!2109130 (and (inv!21 (value!174189 (h!42376 (t!265289 (t!265289 tokens!494))))) e!2109127 tp!1060404))))

(declare-fun e!2109126 () Bool)

(assert (=> b!3396804 (= tp!1060263 e!2109126)))

(declare-fun tp!1060406 () Bool)

(declare-fun b!3397720 () Bool)

(assert (=> b!3397720 (= e!2109127 (and tp!1060406 (inv!50044 (tag!5978 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (inv!50047 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) e!2109128))))

(declare-fun b!3397718 () Bool)

(declare-fun tp!1060403 () Bool)

(assert (=> b!3397718 (= e!2109126 (and (inv!50048 (h!42376 (t!265289 (t!265289 tokens!494)))) e!2109130 tp!1060403))))

(assert (= b!3397720 b!3397721))

(assert (= b!3397719 b!3397720))

(assert (= b!3397718 b!3397719))

(assert (= (and b!3396804 ((_ is Cons!36956) (t!265289 (t!265289 tokens!494)))) b!3397718))

(declare-fun m!3768911 () Bool)

(assert (=> b!3397719 m!3768911))

(declare-fun m!3768913 () Bool)

(assert (=> b!3397720 m!3768913))

(declare-fun m!3768915 () Bool)

(assert (=> b!3397720 m!3768915))

(declare-fun m!3768917 () Bool)

(assert (=> b!3397718 m!3768917))

(declare-fun b!3397722 () Bool)

(declare-fun e!2109131 () Bool)

(assert (=> b!3397722 (= e!2109131 tp_is_empty!17497)))

(declare-fun b!3397723 () Bool)

(declare-fun tp!1060412 () Bool)

(declare-fun tp!1060408 () Bool)

(assert (=> b!3397723 (= e!2109131 (and tp!1060412 tp!1060408))))

(assert (=> b!3396787 (= tp!1060244 e!2109131)))

(declare-fun b!3397725 () Bool)

(declare-fun tp!1060411 () Bool)

(declare-fun tp!1060409 () Bool)

(assert (=> b!3397725 (= e!2109131 (and tp!1060411 tp!1060409))))

(declare-fun b!3397724 () Bool)

(declare-fun tp!1060410 () Bool)

(assert (=> b!3397724 (= e!2109131 tp!1060410)))

(assert (= (and b!3396787 ((_ is ElementMatch!10153) (reg!10482 (regex!5394 (h!42377 rules!2135))))) b!3397722))

(assert (= (and b!3396787 ((_ is Concat!15777) (reg!10482 (regex!5394 (h!42377 rules!2135))))) b!3397723))

(assert (= (and b!3396787 ((_ is Star!10153) (reg!10482 (regex!5394 (h!42377 rules!2135))))) b!3397724))

(assert (= (and b!3396787 ((_ is Union!10153) (reg!10482 (regex!5394 (h!42377 rules!2135))))) b!3397725))

(declare-fun b!3397726 () Bool)

(declare-fun e!2109132 () Bool)

(assert (=> b!3397726 (= e!2109132 tp_is_empty!17497)))

(declare-fun b!3397727 () Bool)

(declare-fun tp!1060417 () Bool)

(declare-fun tp!1060413 () Bool)

(assert (=> b!3397727 (= e!2109132 (and tp!1060417 tp!1060413))))

(assert (=> b!3396786 (= tp!1060246 e!2109132)))

(declare-fun b!3397729 () Bool)

(declare-fun tp!1060416 () Bool)

(declare-fun tp!1060414 () Bool)

(assert (=> b!3397729 (= e!2109132 (and tp!1060416 tp!1060414))))

(declare-fun b!3397728 () Bool)

(declare-fun tp!1060415 () Bool)

(assert (=> b!3397728 (= e!2109132 tp!1060415)))

(assert (= (and b!3396786 ((_ is ElementMatch!10153) (regOne!20818 (regex!5394 (h!42377 rules!2135))))) b!3397726))

(assert (= (and b!3396786 ((_ is Concat!15777) (regOne!20818 (regex!5394 (h!42377 rules!2135))))) b!3397727))

(assert (= (and b!3396786 ((_ is Star!10153) (regOne!20818 (regex!5394 (h!42377 rules!2135))))) b!3397728))

(assert (= (and b!3396786 ((_ is Union!10153) (regOne!20818 (regex!5394 (h!42377 rules!2135))))) b!3397729))

(declare-fun b!3397730 () Bool)

(declare-fun e!2109133 () Bool)

(assert (=> b!3397730 (= e!2109133 tp_is_empty!17497)))

(declare-fun b!3397731 () Bool)

(declare-fun tp!1060422 () Bool)

(declare-fun tp!1060418 () Bool)

(assert (=> b!3397731 (= e!2109133 (and tp!1060422 tp!1060418))))

(assert (=> b!3396786 (= tp!1060242 e!2109133)))

(declare-fun b!3397733 () Bool)

(declare-fun tp!1060421 () Bool)

(declare-fun tp!1060419 () Bool)

(assert (=> b!3397733 (= e!2109133 (and tp!1060421 tp!1060419))))

(declare-fun b!3397732 () Bool)

(declare-fun tp!1060420 () Bool)

(assert (=> b!3397732 (= e!2109133 tp!1060420)))

(assert (= (and b!3396786 ((_ is ElementMatch!10153) (regTwo!20818 (regex!5394 (h!42377 rules!2135))))) b!3397730))

(assert (= (and b!3396786 ((_ is Concat!15777) (regTwo!20818 (regex!5394 (h!42377 rules!2135))))) b!3397731))

(assert (= (and b!3396786 ((_ is Star!10153) (regTwo!20818 (regex!5394 (h!42377 rules!2135))))) b!3397732))

(assert (= (and b!3396786 ((_ is Union!10153) (regTwo!20818 (regex!5394 (h!42377 rules!2135))))) b!3397733))

(declare-fun b!3397734 () Bool)

(declare-fun e!2109134 () Bool)

(declare-fun tp!1060423 () Bool)

(assert (=> b!3397734 (= e!2109134 (and tp_is_empty!17497 tp!1060423))))

(assert (=> b!3396805 (= tp!1060264 e!2109134)))

(assert (= (and b!3396805 ((_ is Cons!36955) (originalCharacters!6108 (h!42376 (t!265289 tokens!494))))) b!3397734))

(declare-fun b!3397735 () Bool)

(declare-fun e!2109135 () Bool)

(assert (=> b!3397735 (= e!2109135 tp_is_empty!17497)))

(declare-fun b!3397736 () Bool)

(declare-fun tp!1060428 () Bool)

(declare-fun tp!1060424 () Bool)

(assert (=> b!3397736 (= e!2109135 (and tp!1060428 tp!1060424))))

(assert (=> b!3396788 (= tp!1060245 e!2109135)))

(declare-fun b!3397738 () Bool)

(declare-fun tp!1060427 () Bool)

(declare-fun tp!1060425 () Bool)

(assert (=> b!3397738 (= e!2109135 (and tp!1060427 tp!1060425))))

(declare-fun b!3397737 () Bool)

(declare-fun tp!1060426 () Bool)

(assert (=> b!3397737 (= e!2109135 tp!1060426)))

(assert (= (and b!3396788 ((_ is ElementMatch!10153) (regOne!20819 (regex!5394 (h!42377 rules!2135))))) b!3397735))

(assert (= (and b!3396788 ((_ is Concat!15777) (regOne!20819 (regex!5394 (h!42377 rules!2135))))) b!3397736))

(assert (= (and b!3396788 ((_ is Star!10153) (regOne!20819 (regex!5394 (h!42377 rules!2135))))) b!3397737))

(assert (= (and b!3396788 ((_ is Union!10153) (regOne!20819 (regex!5394 (h!42377 rules!2135))))) b!3397738))

(declare-fun b!3397739 () Bool)

(declare-fun e!2109136 () Bool)

(assert (=> b!3397739 (= e!2109136 tp_is_empty!17497)))

(declare-fun b!3397740 () Bool)

(declare-fun tp!1060433 () Bool)

(declare-fun tp!1060429 () Bool)

(assert (=> b!3397740 (= e!2109136 (and tp!1060433 tp!1060429))))

(assert (=> b!3396788 (= tp!1060243 e!2109136)))

(declare-fun b!3397742 () Bool)

(declare-fun tp!1060432 () Bool)

(declare-fun tp!1060430 () Bool)

(assert (=> b!3397742 (= e!2109136 (and tp!1060432 tp!1060430))))

(declare-fun b!3397741 () Bool)

(declare-fun tp!1060431 () Bool)

(assert (=> b!3397741 (= e!2109136 tp!1060431)))

(assert (= (and b!3396788 ((_ is ElementMatch!10153) (regTwo!20819 (regex!5394 (h!42377 rules!2135))))) b!3397739))

(assert (= (and b!3396788 ((_ is Concat!15777) (regTwo!20819 (regex!5394 (h!42377 rules!2135))))) b!3397740))

(assert (= (and b!3396788 ((_ is Star!10153) (regTwo!20819 (regex!5394 (h!42377 rules!2135))))) b!3397741))

(assert (= (and b!3396788 ((_ is Union!10153) (regTwo!20819 (regex!5394 (h!42377 rules!2135))))) b!3397742))

(declare-fun b!3397743 () Bool)

(declare-fun e!2109137 () Bool)

(assert (=> b!3397743 (= e!2109137 tp_is_empty!17497)))

(declare-fun b!3397744 () Bool)

(declare-fun tp!1060438 () Bool)

(declare-fun tp!1060434 () Bool)

(assert (=> b!3397744 (= e!2109137 (and tp!1060438 tp!1060434))))

(assert (=> b!3396806 (= tp!1060266 e!2109137)))

(declare-fun b!3397746 () Bool)

(declare-fun tp!1060437 () Bool)

(declare-fun tp!1060435 () Bool)

(assert (=> b!3397746 (= e!2109137 (and tp!1060437 tp!1060435))))

(declare-fun b!3397745 () Bool)

(declare-fun tp!1060436 () Bool)

(assert (=> b!3397745 (= e!2109137 tp!1060436)))

(assert (= (and b!3396806 ((_ is ElementMatch!10153) (regex!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) b!3397743))

(assert (= (and b!3396806 ((_ is Concat!15777) (regex!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) b!3397744))

(assert (= (and b!3396806 ((_ is Star!10153) (regex!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) b!3397745))

(assert (= (and b!3396806 ((_ is Union!10153) (regex!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) b!3397746))

(declare-fun b!3397749 () Bool)

(declare-fun b_free!88937 () Bool)

(declare-fun b_next!89641 () Bool)

(assert (=> b!3397749 (= b_free!88937 (not b_next!89641))))

(declare-fun tp!1060441 () Bool)

(declare-fun b_and!236943 () Bool)

(assert (=> b!3397749 (= tp!1060441 b_and!236943)))

(declare-fun b_free!88939 () Bool)

(declare-fun b_next!89643 () Bool)

(assert (=> b!3397749 (= b_free!88939 (not b_next!89643))))

(declare-fun tb!181975 () Bool)

(declare-fun t!265474 () Bool)

(assert (=> (and b!3397749 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494))))) t!265474) tb!181975))

(declare-fun result!225578 () Bool)

(assert (= result!225578 result!225428))

(assert (=> d!965438 t!265474))

(declare-fun tb!181977 () Bool)

(declare-fun t!265476 () Bool)

(assert (=> (and b!3397749 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241)))) t!265476) tb!181977))

(declare-fun result!225580 () Bool)

(assert (= result!225580 result!225400))

(assert (=> b!3396425 t!265476))

(declare-fun tb!181979 () Bool)

(declare-fun t!265478 () Bool)

(assert (=> (and b!3397749 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494))))))) t!265478) tb!181979))

(declare-fun result!225582 () Bool)

(assert (= result!225582 result!225556))

(assert (=> d!966136 t!265478))

(declare-fun tb!181981 () Bool)

(declare-fun t!265480 () Bool)

(assert (=> (and b!3397749 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) (toChars!7449 (transformation!5394 (rule!7954 (apply!8618 lt!1154539 0))))) t!265480) tb!181981))

(declare-fun result!225584 () Bool)

(assert (= result!225584 result!225510))

(assert (=> d!965958 t!265480))

(declare-fun t!265482 () Bool)

(declare-fun tb!181983 () Bool)

(assert (=> (and b!3397749 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (Cons!36956 (h!42376 tokens!494) Nil!36956)))))) t!265482) tb!181983))

(declare-fun result!225586 () Bool)

(assert (= result!225586 result!225546))

(assert (=> d!966128 t!265482))

(assert (=> b!3396720 t!265474))

(declare-fun t!265484 () Bool)

(declare-fun tb!181985 () Bool)

(assert (=> (and b!3397749 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494)))))) t!265484) tb!181985))

(declare-fun result!225588 () Bool)

(assert (= result!225588 result!225408))

(assert (=> d!965366 t!265484))

(assert (=> b!3397014 t!265484))

(assert (=> d!965352 t!265476))

(declare-fun tp!1060442 () Bool)

(declare-fun b_and!236945 () Bool)

(assert (=> b!3397749 (= tp!1060442 (and (=> t!265478 result!225582) (=> t!265480 result!225584) (=> t!265484 result!225588) (=> t!265476 result!225580) (=> t!265482 result!225586) (=> t!265474 result!225578) b_and!236945))))

(declare-fun e!2109139 () Bool)

(assert (=> b!3397749 (= e!2109139 (and tp!1060441 tp!1060442))))

(declare-fun e!2109140 () Bool)

(declare-fun tp!1060439 () Bool)

(declare-fun b!3397748 () Bool)

(assert (=> b!3397748 (= e!2109140 (and tp!1060439 (inv!50044 (tag!5978 (h!42377 (t!265290 (t!265290 rules!2135))))) (inv!50047 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) e!2109139))))

(declare-fun b!3397747 () Bool)

(declare-fun e!2109141 () Bool)

(declare-fun tp!1060440 () Bool)

(assert (=> b!3397747 (= e!2109141 (and e!2109140 tp!1060440))))

(assert (=> b!3396820 (= tp!1060282 e!2109141)))

(assert (= b!3397748 b!3397749))

(assert (= b!3397747 b!3397748))

(assert (= (and b!3396820 ((_ is Cons!36957) (t!265290 (t!265290 rules!2135)))) b!3397747))

(declare-fun m!3768919 () Bool)

(assert (=> b!3397748 m!3768919))

(declare-fun m!3768921 () Bool)

(assert (=> b!3397748 m!3768921))

(declare-fun b!3397750 () Bool)

(declare-fun e!2109142 () Bool)

(assert (=> b!3397750 (= e!2109142 tp_is_empty!17497)))

(declare-fun b!3397751 () Bool)

(declare-fun tp!1060447 () Bool)

(declare-fun tp!1060443 () Bool)

(assert (=> b!3397751 (= e!2109142 (and tp!1060447 tp!1060443))))

(assert (=> b!3396821 (= tp!1060281 e!2109142)))

(declare-fun b!3397753 () Bool)

(declare-fun tp!1060446 () Bool)

(declare-fun tp!1060444 () Bool)

(assert (=> b!3397753 (= e!2109142 (and tp!1060446 tp!1060444))))

(declare-fun b!3397752 () Bool)

(declare-fun tp!1060445 () Bool)

(assert (=> b!3397752 (= e!2109142 tp!1060445)))

(assert (= (and b!3396821 ((_ is ElementMatch!10153) (regex!5394 (h!42377 (t!265290 rules!2135))))) b!3397750))

(assert (= (and b!3396821 ((_ is Concat!15777) (regex!5394 (h!42377 (t!265290 rules!2135))))) b!3397751))

(assert (= (and b!3396821 ((_ is Star!10153) (regex!5394 (h!42377 (t!265290 rules!2135))))) b!3397752))

(assert (= (and b!3396821 ((_ is Union!10153) (regex!5394 (h!42377 (t!265290 rules!2135))))) b!3397753))

(declare-fun b!3397754 () Bool)

(declare-fun e!2109143 () Bool)

(assert (=> b!3397754 (= e!2109143 tp_is_empty!17497)))

(declare-fun b!3397755 () Bool)

(declare-fun tp!1060452 () Bool)

(declare-fun tp!1060448 () Bool)

(assert (=> b!3397755 (= e!2109143 (and tp!1060452 tp!1060448))))

(assert (=> b!3396809 (= tp!1060272 e!2109143)))

(declare-fun b!3397757 () Bool)

(declare-fun tp!1060451 () Bool)

(declare-fun tp!1060449 () Bool)

(assert (=> b!3397757 (= e!2109143 (and tp!1060451 tp!1060449))))

(declare-fun b!3397756 () Bool)

(declare-fun tp!1060450 () Bool)

(assert (=> b!3397756 (= e!2109143 tp!1060450)))

(assert (= (and b!3396809 ((_ is ElementMatch!10153) (regOne!20818 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397754))

(assert (= (and b!3396809 ((_ is Concat!15777) (regOne!20818 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397755))

(assert (= (and b!3396809 ((_ is Star!10153) (regOne!20818 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397756))

(assert (= (and b!3396809 ((_ is Union!10153) (regOne!20818 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397757))

(declare-fun b!3397758 () Bool)

(declare-fun e!2109144 () Bool)

(assert (=> b!3397758 (= e!2109144 tp_is_empty!17497)))

(declare-fun b!3397759 () Bool)

(declare-fun tp!1060457 () Bool)

(declare-fun tp!1060453 () Bool)

(assert (=> b!3397759 (= e!2109144 (and tp!1060457 tp!1060453))))

(assert (=> b!3396809 (= tp!1060268 e!2109144)))

(declare-fun b!3397761 () Bool)

(declare-fun tp!1060456 () Bool)

(declare-fun tp!1060454 () Bool)

(assert (=> b!3397761 (= e!2109144 (and tp!1060456 tp!1060454))))

(declare-fun b!3397760 () Bool)

(declare-fun tp!1060455 () Bool)

(assert (=> b!3397760 (= e!2109144 tp!1060455)))

(assert (= (and b!3396809 ((_ is ElementMatch!10153) (regTwo!20818 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397758))

(assert (= (and b!3396809 ((_ is Concat!15777) (regTwo!20818 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397759))

(assert (= (and b!3396809 ((_ is Star!10153) (regTwo!20818 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397760))

(assert (= (and b!3396809 ((_ is Union!10153) (regTwo!20818 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397761))

(declare-fun b!3397762 () Bool)

(declare-fun e!2109145 () Bool)

(declare-fun tp!1060458 () Bool)

(assert (=> b!3397762 (= e!2109145 (and tp_is_empty!17497 tp!1060458))))

(assert (=> b!3396774 (= tp!1060231 e!2109145)))

(assert (= (and b!3396774 ((_ is Cons!36955) (t!265288 (originalCharacters!6108 (h!42376 tokens!494))))) b!3397762))

(declare-fun e!2109151 () Bool)

(declare-fun tp!1060466 () Bool)

(declare-fun b!3397771 () Bool)

(declare-fun tp!1060465 () Bool)

(assert (=> b!3397771 (= e!2109151 (and (inv!50051 (left!28810 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494))))))) tp!1060466 (inv!50051 (right!29140 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494))))))) tp!1060465))))

(declare-fun b!3397773 () Bool)

(declare-fun e!2109150 () Bool)

(declare-fun tp!1060467 () Bool)

(assert (=> b!3397773 (= e!2109150 tp!1060467)))

(declare-fun b!3397772 () Bool)

(declare-fun inv!50058 (IArray!22331) Bool)

(assert (=> b!3397772 (= e!2109151 (and (inv!50058 (xs!14321 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494))))))) e!2109150))))

(assert (=> b!3396407 (= tp!1060166 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494)))))) e!2109151))))

(assert (= (and b!3396407 ((_ is Node!11163) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494))))))) b!3397771))

(assert (= b!3397772 b!3397773))

(assert (= (and b!3396407 ((_ is Leaf!17471) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (value!174189 (h!42376 (t!265289 tokens!494))))))) b!3397772))

(declare-fun m!3768923 () Bool)

(assert (=> b!3397771 m!3768923))

(declare-fun m!3768925 () Bool)

(assert (=> b!3397771 m!3768925))

(declare-fun m!3768927 () Bool)

(assert (=> b!3397772 m!3768927))

(assert (=> b!3396407 m!3766669))

(declare-fun b!3397774 () Bool)

(declare-fun e!2109152 () Bool)

(assert (=> b!3397774 (= e!2109152 tp_is_empty!17497)))

(declare-fun b!3397775 () Bool)

(declare-fun tp!1060472 () Bool)

(declare-fun tp!1060468 () Bool)

(assert (=> b!3397775 (= e!2109152 (and tp!1060472 tp!1060468))))

(assert (=> b!3396810 (= tp!1060270 e!2109152)))

(declare-fun b!3397777 () Bool)

(declare-fun tp!1060471 () Bool)

(declare-fun tp!1060469 () Bool)

(assert (=> b!3397777 (= e!2109152 (and tp!1060471 tp!1060469))))

(declare-fun b!3397776 () Bool)

(declare-fun tp!1060470 () Bool)

(assert (=> b!3397776 (= e!2109152 tp!1060470)))

(assert (= (and b!3396810 ((_ is ElementMatch!10153) (reg!10482 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397774))

(assert (= (and b!3396810 ((_ is Concat!15777) (reg!10482 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397775))

(assert (= (and b!3396810 ((_ is Star!10153) (reg!10482 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397776))

(assert (= (and b!3396810 ((_ is Union!10153) (reg!10482 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397777))

(declare-fun b!3397778 () Bool)

(declare-fun e!2109153 () Bool)

(assert (=> b!3397778 (= e!2109153 tp_is_empty!17497)))

(declare-fun b!3397779 () Bool)

(declare-fun tp!1060477 () Bool)

(declare-fun tp!1060473 () Bool)

(assert (=> b!3397779 (= e!2109153 (and tp!1060477 tp!1060473))))

(assert (=> b!3396790 (= tp!1060251 e!2109153)))

(declare-fun b!3397781 () Bool)

(declare-fun tp!1060476 () Bool)

(declare-fun tp!1060474 () Bool)

(assert (=> b!3397781 (= e!2109153 (and tp!1060476 tp!1060474))))

(declare-fun b!3397780 () Bool)

(declare-fun tp!1060475 () Bool)

(assert (=> b!3397780 (= e!2109153 tp!1060475)))

(assert (= (and b!3396790 ((_ is ElementMatch!10153) (regOne!20818 (regex!5394 (rule!7954 separatorToken!241))))) b!3397778))

(assert (= (and b!3396790 ((_ is Concat!15777) (regOne!20818 (regex!5394 (rule!7954 separatorToken!241))))) b!3397779))

(assert (= (and b!3396790 ((_ is Star!10153) (regOne!20818 (regex!5394 (rule!7954 separatorToken!241))))) b!3397780))

(assert (= (and b!3396790 ((_ is Union!10153) (regOne!20818 (regex!5394 (rule!7954 separatorToken!241))))) b!3397781))

(declare-fun b!3397782 () Bool)

(declare-fun e!2109154 () Bool)

(assert (=> b!3397782 (= e!2109154 tp_is_empty!17497)))

(declare-fun b!3397783 () Bool)

(declare-fun tp!1060482 () Bool)

(declare-fun tp!1060478 () Bool)

(assert (=> b!3397783 (= e!2109154 (and tp!1060482 tp!1060478))))

(assert (=> b!3396790 (= tp!1060247 e!2109154)))

(declare-fun b!3397785 () Bool)

(declare-fun tp!1060481 () Bool)

(declare-fun tp!1060479 () Bool)

(assert (=> b!3397785 (= e!2109154 (and tp!1060481 tp!1060479))))

(declare-fun b!3397784 () Bool)

(declare-fun tp!1060480 () Bool)

(assert (=> b!3397784 (= e!2109154 tp!1060480)))

(assert (= (and b!3396790 ((_ is ElementMatch!10153) (regTwo!20818 (regex!5394 (rule!7954 separatorToken!241))))) b!3397782))

(assert (= (and b!3396790 ((_ is Concat!15777) (regTwo!20818 (regex!5394 (rule!7954 separatorToken!241))))) b!3397783))

(assert (= (and b!3396790 ((_ is Star!10153) (regTwo!20818 (regex!5394 (rule!7954 separatorToken!241))))) b!3397784))

(assert (= (and b!3396790 ((_ is Union!10153) (regTwo!20818 (regex!5394 (rule!7954 separatorToken!241))))) b!3397785))

(declare-fun b!3397786 () Bool)

(declare-fun e!2109155 () Bool)

(assert (=> b!3397786 (= e!2109155 tp_is_empty!17497)))

(declare-fun b!3397787 () Bool)

(declare-fun tp!1060487 () Bool)

(declare-fun tp!1060483 () Bool)

(assert (=> b!3397787 (= e!2109155 (and tp!1060487 tp!1060483))))

(assert (=> b!3396811 (= tp!1060271 e!2109155)))

(declare-fun b!3397789 () Bool)

(declare-fun tp!1060486 () Bool)

(declare-fun tp!1060484 () Bool)

(assert (=> b!3397789 (= e!2109155 (and tp!1060486 tp!1060484))))

(declare-fun b!3397788 () Bool)

(declare-fun tp!1060485 () Bool)

(assert (=> b!3397788 (= e!2109155 tp!1060485)))

(assert (= (and b!3396811 ((_ is ElementMatch!10153) (regOne!20819 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397786))

(assert (= (and b!3396811 ((_ is Concat!15777) (regOne!20819 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397787))

(assert (= (and b!3396811 ((_ is Star!10153) (regOne!20819 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397788))

(assert (= (and b!3396811 ((_ is Union!10153) (regOne!20819 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397789))

(declare-fun b!3397790 () Bool)

(declare-fun e!2109156 () Bool)

(assert (=> b!3397790 (= e!2109156 tp_is_empty!17497)))

(declare-fun b!3397791 () Bool)

(declare-fun tp!1060492 () Bool)

(declare-fun tp!1060488 () Bool)

(assert (=> b!3397791 (= e!2109156 (and tp!1060492 tp!1060488))))

(assert (=> b!3396811 (= tp!1060269 e!2109156)))

(declare-fun b!3397793 () Bool)

(declare-fun tp!1060491 () Bool)

(declare-fun tp!1060489 () Bool)

(assert (=> b!3397793 (= e!2109156 (and tp!1060491 tp!1060489))))

(declare-fun b!3397792 () Bool)

(declare-fun tp!1060490 () Bool)

(assert (=> b!3397792 (= e!2109156 tp!1060490)))

(assert (= (and b!3396811 ((_ is ElementMatch!10153) (regTwo!20819 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397790))

(assert (= (and b!3396811 ((_ is Concat!15777) (regTwo!20819 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397791))

(assert (= (and b!3396811 ((_ is Star!10153) (regTwo!20819 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397792))

(assert (= (and b!3396811 ((_ is Union!10153) (regTwo!20819 (regex!5394 (rule!7954 (h!42376 tokens!494)))))) b!3397793))

(declare-fun b!3397794 () Bool)

(declare-fun e!2109157 () Bool)

(assert (=> b!3397794 (= e!2109157 tp_is_empty!17497)))

(declare-fun b!3397795 () Bool)

(declare-fun tp!1060497 () Bool)

(declare-fun tp!1060493 () Bool)

(assert (=> b!3397795 (= e!2109157 (and tp!1060497 tp!1060493))))

(assert (=> b!3396791 (= tp!1060249 e!2109157)))

(declare-fun b!3397797 () Bool)

(declare-fun tp!1060496 () Bool)

(declare-fun tp!1060494 () Bool)

(assert (=> b!3397797 (= e!2109157 (and tp!1060496 tp!1060494))))

(declare-fun b!3397796 () Bool)

(declare-fun tp!1060495 () Bool)

(assert (=> b!3397796 (= e!2109157 tp!1060495)))

(assert (= (and b!3396791 ((_ is ElementMatch!10153) (reg!10482 (regex!5394 (rule!7954 separatorToken!241))))) b!3397794))

(assert (= (and b!3396791 ((_ is Concat!15777) (reg!10482 (regex!5394 (rule!7954 separatorToken!241))))) b!3397795))

(assert (= (and b!3396791 ((_ is Star!10153) (reg!10482 (regex!5394 (rule!7954 separatorToken!241))))) b!3397796))

(assert (= (and b!3396791 ((_ is Union!10153) (reg!10482 (regex!5394 (rule!7954 separatorToken!241))))) b!3397797))

(declare-fun b!3397798 () Bool)

(declare-fun e!2109158 () Bool)

(assert (=> b!3397798 (= e!2109158 tp_is_empty!17497)))

(declare-fun b!3397799 () Bool)

(declare-fun tp!1060502 () Bool)

(declare-fun tp!1060498 () Bool)

(assert (=> b!3397799 (= e!2109158 (and tp!1060502 tp!1060498))))

(assert (=> b!3396792 (= tp!1060250 e!2109158)))

(declare-fun b!3397801 () Bool)

(declare-fun tp!1060501 () Bool)

(declare-fun tp!1060499 () Bool)

(assert (=> b!3397801 (= e!2109158 (and tp!1060501 tp!1060499))))

(declare-fun b!3397800 () Bool)

(declare-fun tp!1060500 () Bool)

(assert (=> b!3397800 (= e!2109158 tp!1060500)))

(assert (= (and b!3396792 ((_ is ElementMatch!10153) (regOne!20819 (regex!5394 (rule!7954 separatorToken!241))))) b!3397798))

(assert (= (and b!3396792 ((_ is Concat!15777) (regOne!20819 (regex!5394 (rule!7954 separatorToken!241))))) b!3397799))

(assert (= (and b!3396792 ((_ is Star!10153) (regOne!20819 (regex!5394 (rule!7954 separatorToken!241))))) b!3397800))

(assert (= (and b!3396792 ((_ is Union!10153) (regOne!20819 (regex!5394 (rule!7954 separatorToken!241))))) b!3397801))

(declare-fun b!3397802 () Bool)

(declare-fun e!2109159 () Bool)

(assert (=> b!3397802 (= e!2109159 tp_is_empty!17497)))

(declare-fun b!3397803 () Bool)

(declare-fun tp!1060507 () Bool)

(declare-fun tp!1060503 () Bool)

(assert (=> b!3397803 (= e!2109159 (and tp!1060507 tp!1060503))))

(assert (=> b!3396792 (= tp!1060248 e!2109159)))

(declare-fun b!3397805 () Bool)

(declare-fun tp!1060506 () Bool)

(declare-fun tp!1060504 () Bool)

(assert (=> b!3397805 (= e!2109159 (and tp!1060506 tp!1060504))))

(declare-fun b!3397804 () Bool)

(declare-fun tp!1060505 () Bool)

(assert (=> b!3397804 (= e!2109159 tp!1060505)))

(assert (= (and b!3396792 ((_ is ElementMatch!10153) (regTwo!20819 (regex!5394 (rule!7954 separatorToken!241))))) b!3397802))

(assert (= (and b!3396792 ((_ is Concat!15777) (regTwo!20819 (regex!5394 (rule!7954 separatorToken!241))))) b!3397803))

(assert (= (and b!3396792 ((_ is Star!10153) (regTwo!20819 (regex!5394 (rule!7954 separatorToken!241))))) b!3397804))

(assert (= (and b!3396792 ((_ is Union!10153) (regTwo!20819 (regex!5394 (rule!7954 separatorToken!241))))) b!3397805))

(declare-fun b!3397808 () Bool)

(declare-fun e!2109162 () Bool)

(assert (=> b!3397808 (= e!2109162 true)))

(declare-fun b!3397807 () Bool)

(declare-fun e!2109161 () Bool)

(assert (=> b!3397807 (= e!2109161 e!2109162)))

(declare-fun b!3397806 () Bool)

(declare-fun e!2109160 () Bool)

(assert (=> b!3397806 (= e!2109160 e!2109161)))

(assert (=> b!3396709 e!2109160))

(assert (= b!3397807 b!3397808))

(assert (= b!3397806 b!3397807))

(assert (= (and b!3396709 ((_ is Cons!36957) (t!265290 rules!2135))) b!3397806))

(assert (=> b!3397808 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (h!42377 (t!265290 rules!2135))))) (dynLambda!15413 order!19503 lambda!120841))))

(assert (=> b!3397808 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135))))) (dynLambda!15413 order!19503 lambda!120841))))

(declare-fun e!2109164 () Bool)

(declare-fun tp!1060509 () Bool)

(declare-fun tp!1060508 () Bool)

(declare-fun b!3397809 () Bool)

(assert (=> b!3397809 (= e!2109164 (and (inv!50051 (left!28810 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))))) tp!1060509 (inv!50051 (right!29140 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))))) tp!1060508))))

(declare-fun b!3397811 () Bool)

(declare-fun e!2109163 () Bool)

(declare-fun tp!1060510 () Bool)

(assert (=> b!3397811 (= e!2109163 tp!1060510)))

(declare-fun b!3397810 () Bool)

(assert (=> b!3397810 (= e!2109164 (and (inv!50058 (xs!14321 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))))) e!2109163))))

(assert (=> b!3396398 (= tp!1060165 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241)))) e!2109164))))

(assert (= (and b!3396398 ((_ is Node!11163) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))))) b!3397809))

(assert (= b!3397810 b!3397811))

(assert (= (and b!3396398 ((_ is Leaf!17471) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (value!174189 separatorToken!241))))) b!3397810))

(declare-fun m!3768929 () Bool)

(assert (=> b!3397809 m!3768929))

(declare-fun m!3768931 () Bool)

(assert (=> b!3397809 m!3768931))

(declare-fun m!3768933 () Bool)

(assert (=> b!3397810 m!3768933))

(assert (=> b!3396398 m!3766633))

(declare-fun tp!1060511 () Bool)

(declare-fun b!3397812 () Bool)

(declare-fun e!2109166 () Bool)

(declare-fun tp!1060512 () Bool)

(assert (=> b!3397812 (= e!2109166 (and (inv!50051 (left!28810 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))))) tp!1060512 (inv!50051 (right!29140 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))))) tp!1060511))))

(declare-fun b!3397814 () Bool)

(declare-fun e!2109165 () Bool)

(declare-fun tp!1060513 () Bool)

(assert (=> b!3397814 (= e!2109165 tp!1060513)))

(declare-fun b!3397813 () Bool)

(assert (=> b!3397813 (= e!2109166 (and (inv!50058 (xs!14321 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))))) e!2109165))))

(assert (=> b!3396557 (= tp!1060171 (and (inv!50051 (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494))))) e!2109166))))

(assert (= (and b!3396557 ((_ is Node!11163) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))))) b!3397812))

(assert (= b!3397813 b!3397814))

(assert (= (and b!3396557 ((_ is Leaf!17471) (c!578881 (dynLambda!15410 (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (value!174189 (h!42376 tokens!494)))))) b!3397813))

(declare-fun m!3768935 () Bool)

(assert (=> b!3397812 m!3768935))

(declare-fun m!3768937 () Bool)

(assert (=> b!3397812 m!3768937))

(declare-fun m!3768939 () Bool)

(assert (=> b!3397813 m!3768939))

(assert (=> b!3396557 m!3766909))

(declare-fun b!3397815 () Bool)

(declare-fun e!2109167 () Bool)

(declare-fun tp!1060514 () Bool)

(assert (=> b!3397815 (= e!2109167 (and tp_is_empty!17497 tp!1060514))))

(assert (=> b!3396793 (= tp!1060252 e!2109167)))

(assert (= (and b!3396793 ((_ is Cons!36955) (t!265288 (originalCharacters!6108 separatorToken!241)))) b!3397815))

(declare-fun b!3397818 () Bool)

(declare-fun e!2109170 () Bool)

(assert (=> b!3397818 (= e!2109170 true)))

(declare-fun b!3397817 () Bool)

(declare-fun e!2109169 () Bool)

(assert (=> b!3397817 (= e!2109169 e!2109170)))

(declare-fun b!3397816 () Bool)

(declare-fun e!2109168 () Bool)

(assert (=> b!3397816 (= e!2109168 e!2109169)))

(assert (=> b!3396531 e!2109168))

(assert (= b!3397817 b!3397818))

(assert (= b!3397816 b!3397817))

(assert (= (and b!3396531 ((_ is Cons!36957) (t!265290 rules!2135))) b!3397816))

(assert (=> b!3397818 (< (dynLambda!15412 order!19501 (toValue!7590 (transformation!5394 (h!42377 (t!265290 rules!2135))))) (dynLambda!15413 order!19503 lambda!120833))))

(assert (=> b!3397818 (< (dynLambda!15414 order!19505 (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135))))) (dynLambda!15413 order!19503 lambda!120833))))

(declare-fun b_lambda!96821 () Bool)

(assert (= b_lambda!96801 (or b!3396357 b_lambda!96821)))

(assert (=> d!966006 d!965532))

(declare-fun b_lambda!96823 () Bool)

(assert (= b_lambda!96775 (or b!3396357 b_lambda!96823)))

(assert (=> d!965650 d!965530))

(declare-fun b_lambda!96825 () Bool)

(assert (= b_lambda!96783 (or d!965474 b_lambda!96825)))

(declare-fun bs!556002 () Bool)

(declare-fun d!966162 () Bool)

(assert (= bs!556002 (and d!966162 d!965474)))

(assert (=> bs!556002 (= (dynLambda!15411 lambda!120841 (h!42376 (list!13391 (seqFromList!3842 tokens!494)))) (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 (h!42376 (list!13391 (seqFromList!3842 tokens!494)))))))

(assert (=> bs!556002 m!3768797))

(assert (=> b!3397086 d!966162))

(declare-fun b_lambda!96827 () Bool)

(assert (= b_lambda!96819 (or (and b!3396349 b_free!88907 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))))) (and b!3396807 b_free!88919 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))))) (and b!3396822 b_free!88923 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))))) (and b!3396347 b_free!88903 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))))) (and b!3397749 b_free!88939 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))))) (and b!3396341 b_free!88899 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))))) (and b!3397721 b_free!88935) b_lambda!96827)))

(declare-fun b_lambda!96829 () Bool)

(assert (= b_lambda!96773 (or (and b!3397749 b_free!88939 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 (t!265290 rules!2135))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) (and b!3397721 b_free!88935 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 (t!265289 tokens!494)))))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) (and b!3396349 b_free!88907 (= (toChars!7449 (transformation!5394 (rule!7954 separatorToken!241))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) (and b!3396347 b_free!88903 (= (toChars!7449 (transformation!5394 (h!42377 rules!2135))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) (and b!3396807 b_free!88919) (and b!3396822 b_free!88923 (= (toChars!7449 (transformation!5394 (h!42377 (t!265290 rules!2135)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) (and b!3396341 b_free!88899 (= (toChars!7449 (transformation!5394 (rule!7954 (h!42376 tokens!494)))) (toChars!7449 (transformation!5394 (rule!7954 (h!42376 (t!265289 tokens!494))))))) b_lambda!96829)))

(declare-fun b_lambda!96831 () Bool)

(assert (= b_lambda!96779 (or d!965378 b_lambda!96831)))

(declare-fun bs!556003 () Bool)

(declare-fun d!966164 () Bool)

(assert (= bs!556003 (and d!966164 d!965378)))

(assert (=> bs!556003 (= (dynLambda!15411 lambda!120833 (h!42376 tokens!494)) (rulesProduceIndividualToken!2475 thiss!18206 rules!2135 (h!42376 tokens!494)))))

(assert (=> bs!556003 m!3766493))

(assert (=> b!3397072 d!966164))

(declare-fun b_lambda!96833 () Bool)

(assert (= b_lambda!96781 (or b!3396357 b_lambda!96833)))

(assert (=> b!3397076 d!965532))

(check-sat (not b!3397347) b_and!236933 (not b!3397727) (not b_lambda!96763) (not b!3397692) (not b!3397653) (not b!3397744) (not b!3397795) (not b!3397126) (not b!3397805) (not b!3397793) (not b!3397631) (not b!3397578) (not b!3397238) (not b!3397395) (not b!3397688) (not b!3397755) (not b!3397225) (not b!3397725) (not d!966012) (not d!966138) (not b!3397780) (not d!966082) (not d!965752) (not b!3397803) (not b!3397087) (not d!966124) (not b!3397546) (not b!3397680) (not b!3397218) (not d!965740) (not b!3397629) (not b_next!89609) (not b!3397344) (not b!3397785) (not b!3397343) (not d!966056) (not b!3397741) (not d!965816) (not d!966002) (not b!3397806) (not b!3397013) (not b!3397787) (not d!965950) (not d!966072) (not b_lambda!96831) (not b!3397811) (not b!3397796) (not d!966058) (not d!966024) (not d!966098) (not b!3397032) (not b!3397667) (not b!3397077) (not b!3397647) (not b_lambda!96825) (not b!3397588) (not b!3397685) (not d!965718) (not d!965804) (not b!3397643) (not b!3397059) (not b!3397724) (not d!966120) (not b!3397814) (not d!966042) (not b!3397607) (not d!965800) (not b_next!89621) (not b!3397800) (not b_next!89611) (not d!966142) (not b!3397624) (not b!3397728) (not b_lambda!96755) (not b!3397035) (not b!3397085) (not b!3397171) (not d!966158) (not b!3397776) (not b!3397771) (not d!966080) (not b!3397160) (not b!3397709) (not b!3397187) (not b!3397812) (not d!966106) (not b_next!89603) (not b!3397143) (not b!3397815) (not b!3397147) (not d!965760) (not d!965754) (not b!3397639) (not b_next!89607) (not d!966122) (not b!3397761) (not b!3397628) (not d!965818) (not b!3397548) (not d!966134) (not b!3397637) (not d!965954) (not b!3397816) (not d!966132) (not d!965656) (not b!3397626) (not b!3397350) (not b!3397746) (not d!965822) (not b!3397779) (not b_lambda!96821) (not b!3397677) (not b!3397642) (not b!3397014) (not d!965634) (not b!3397071) b_and!236771 (not b!3396398) (not d!965700) (not b!3397015) (not tb!181909) (not d!966094) (not d!965998) (not b!3397635) (not b!3397576) (not b_next!89605) (not d!966000) (not b!3397222) (not b!3397644) (not b!3397801) (not d!965672) (not d!965820) (not b!3397188) (not d!966074) (not b!3397689) (not b!3397658) (not b!3397718) (not b!3397185) (not d!966092) (not b!3397809) (not d!966112) (not b!3397753) (not d!966128) b_and!236763 (not b!3397715) (not d!965686) b_and!236945 (not b!3397747) (not b!3397577) (not b!3397604) (not b!3397708) (not b!3397410) (not d!966160) (not b!3397679) (not b!3397444) (not b!3397813) (not b!3397633) (not b!3397742) (not b!3397443) (not b!3397011) (not d!965808) (not b!3397719) (not b!3397757) (not d!965812) (not b!3397158) (not b!3397797) (not b_lambda!96767) (not d!966016) (not d!965722) (not b!3397223) (not b!3397156) (not b!3397661) (not b!3397732) (not d!966104) (not b!3397119) (not b!3397740) (not b!3397751) (not b!3397745) (not b!3397670) (not b!3397563) (not b!3397773) (not b!3397720) (not b!3397411) (not b!3397149) (not b_lambda!96769) (not b_lambda!96761) (not b_next!89643) (not b!3397137) (not b!3397183) (not d!965956) (not b!3397157) b_and!236935 (not b!3397397) (not d!966126) (not b!3397007) (not b!3397031) (not d!966070) (not b!3397056) (not b!3397781) (not b!3397799) (not d!966068) (not d!966102) (not bs!556002) (not b!3397736) (not b!3397609) (not d!966152) b_and!236941 (not b!3396407) (not bm!245791) (not d!966050) (not b!3397772) (not b!3397181) (not b!3397589) b_and!236937 (not b!3397494) b_and!236767 (not d!966150) (not b!3397737) (not b!3397610) (not b!3397788) (not d!965646) (not b!3397220) (not d!966144) (not d!965706) (not b_lambda!96759) (not b!3397729) (not b!3397383) (not b!3397733) (not d!965742) (not b!3397028) b_and!236939 (not b_lambda!96757) (not b!3397676) (not b!3397652) (not b!3397646) (not b!3397672) (not b!3397234) (not b!3397606) (not b!3397446) (not d!965654) (not b!3397777) (not d!966136) (not d!966054) (not b_lambda!96765) (not d!966008) (not b!3397784) (not b_lambda!96795) (not b!3397122) (not b!3397713) (not b_next!89601) (not b!3397054) (not b!3397668) (not b!3397717) tp_is_empty!17497 (not tb!181943) (not b!3397602) (not b_lambda!96827) (not b!3397756) (not b!3397169) (not b!3397650) (not b_next!89639) (not b!3397125) (not b!3397693) (not b!3397792) (not d!965702) (not b!3397760) (not b!3397445) (not b!3397547) (not b!3397138) (not b!3397221) (not b!3397783) (not b!3397493) (not d!966026) (not b!3397586) (not b!3397734) (not b!3397759) (not b_lambda!96817) (not b!3397127) (not b!3397227) (not d!965746) (not b!3397775) (not b!3397627) (not b!3397684) (not d!965964) (not b_lambda!96829) (not b!3397659) (not b!3397723) (not b!3397348) (not b!3397731) (not d!965810) (not b_next!89623) (not d!965714) (not b!3397102) (not b!3397400) (not b_next!89637) (not tb!181953) (not b!3397408) (not b!3397612) (not b!3397073) (not d!965958) (not b!3397598) (not d!966028) (not b!3397671) b_and!236929 (not bm!245795) (not b!3397027) (not d!965960) (not b_next!89641) (not b!3397664) (not b!3397580) (not d!965710) (not b!3397345) (not b!3397804) (not b!3397219) (not b!3397789) (not d!965630) (not b!3397239) (not b!3397145) (not d!966062) (not b!3397738) (not d!966060) (not b!3396557) (not b!3397394) (not b!3397582) (not b!3397482) (not b!3397752) b_and!236843 (not d!965774) (not d!966078) (not d!966034) (not b!3397762) (not b!3397601) (not d!965996) (not b!3397120) (not d!966116) (not b_lambda!96823) (not b!3397663) (not b!3397179) (not b!3397791) (not b!3397748) (not b!3397382) (not d!966066) (not d!966148) (not d!966040) (not d!965952) (not b!3397123) (not b_next!89625) (not d!965684) (not d!965690) (not b!3397712) (not d!965632) (not b!3397810) b_and!236847 (not d!966004) (not d!965794) (not b!3397104) (not b!3397703) (not b_next!89627) (not d!966118) (not d!965738) (not d!965626) (not b!3397043) (not b!3397584) (not b!3397045) (not d!966038) (not b!3397596) (not bm!245790) (not bm!245792) (not d!965628) (not bs!556003) b_and!236931 b_and!236943 (not b_lambda!96833))
(check-sat b_and!236933 (not b_next!89609) b_and!236939 (not b_next!89601) (not b_next!89639) (not b_next!89623) b_and!236843 (not b_next!89625) (not b_next!89621) (not b_next!89611) (not b_next!89603) (not b_next!89607) b_and!236771 (not b_next!89605) b_and!236763 b_and!236945 (not b_next!89643) b_and!236935 b_and!236937 b_and!236941 b_and!236767 (not b_next!89637) b_and!236929 (not b_next!89641) b_and!236847 (not b_next!89627) b_and!236931 b_and!236943)
