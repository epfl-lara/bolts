; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!29768 () Bool)

(assert start!29768)

(declare-fun b!275626 () Bool)

(declare-fun b_free!10173 () Bool)

(declare-fun b_next!10173 () Bool)

(assert (=> b!275626 (= b_free!10173 (not b_next!10173))))

(declare-fun tp!103512 () Bool)

(declare-fun b_and!22121 () Bool)

(assert (=> b!275626 (= tp!103512 b_and!22121)))

(declare-fun b_free!10175 () Bool)

(declare-fun b_next!10175 () Bool)

(assert (=> b!275626 (= b_free!10175 (not b_next!10175))))

(declare-fun tp!103502 () Bool)

(declare-fun b_and!22123 () Bool)

(assert (=> b!275626 (= tp!103502 b_and!22123)))

(declare-fun b!275607 () Bool)

(declare-fun b_free!10177 () Bool)

(declare-fun b_next!10177 () Bool)

(assert (=> b!275607 (= b_free!10177 (not b_next!10177))))

(declare-fun tp!103506 () Bool)

(declare-fun b_and!22125 () Bool)

(assert (=> b!275607 (= tp!103506 b_and!22125)))

(declare-fun b_free!10179 () Bool)

(declare-fun b_next!10179 () Bool)

(assert (=> b!275607 (= b_free!10179 (not b_next!10179))))

(declare-fun tp!103507 () Bool)

(declare-fun b_and!22127 () Bool)

(assert (=> b!275607 (= tp!103507 b_and!22127)))

(declare-fun b!275628 () Bool)

(declare-fun b_free!10181 () Bool)

(declare-fun b_next!10181 () Bool)

(assert (=> b!275628 (= b_free!10181 (not b_next!10181))))

(declare-fun tp!103504 () Bool)

(declare-fun b_and!22129 () Bool)

(assert (=> b!275628 (= tp!103504 b_and!22129)))

(declare-fun b_free!10183 () Bool)

(declare-fun b_next!10183 () Bool)

(assert (=> b!275628 (= b_free!10183 (not b_next!10183))))

(declare-fun tp!103505 () Bool)

(declare-fun b_and!22131 () Bool)

(assert (=> b!275628 (= tp!103505 b_and!22131)))

(declare-fun bs!30939 () Bool)

(declare-fun b!275610 () Bool)

(declare-fun b!275633 () Bool)

(assert (= bs!30939 (and b!275610 b!275633)))

(declare-fun lambda!9366 () Int)

(declare-fun lambda!9365 () Int)

(assert (=> bs!30939 (not (= lambda!9366 lambda!9365))))

(declare-fun b!275651 () Bool)

(declare-fun e!171333 () Bool)

(assert (=> b!275651 (= e!171333 true)))

(declare-fun b!275650 () Bool)

(declare-fun e!171332 () Bool)

(assert (=> b!275650 (= e!171332 e!171333)))

(declare-fun b!275649 () Bool)

(declare-fun e!171331 () Bool)

(assert (=> b!275649 (= e!171331 e!171332)))

(assert (=> b!275610 e!171331))

(assert (= b!275650 b!275651))

(assert (= b!275649 b!275650))

(declare-datatypes ((List!3863 0))(
  ( (Nil!3853) (Cons!3853 (h!9250 (_ BitVec 16)) (t!39019 List!3863)) )
))
(declare-datatypes ((TokenValue!758 0))(
  ( (FloatLiteralValue!1516 (text!5751 List!3863)) (TokenValueExt!757 (__x!3003 Int)) (Broken!3790 (value!25267 List!3863)) (Object!767) (End!758) (Def!758) (Underscore!758) (Match!758) (Else!758) (Error!758) (Case!758) (If!758) (Extends!758) (Abstract!758) (Class!758) (Val!758) (DelimiterValue!1516 (del!818 List!3863)) (KeywordValue!764 (value!25268 List!3863)) (CommentValue!1516 (value!25269 List!3863)) (WhitespaceValue!1516 (value!25270 List!3863)) (IndentationValue!758 (value!25271 List!3863)) (String!4871) (Int32!758) (Broken!3791 (value!25272 List!3863)) (Boolean!759) (Unit!5038) (OperatorValue!761 (op!818 List!3863)) (IdentifierValue!1516 (value!25273 List!3863)) (IdentifierValue!1517 (value!25274 List!3863)) (WhitespaceValue!1517 (value!25275 List!3863)) (True!1516) (False!1516) (Broken!3792 (value!25276 List!3863)) (Broken!3793 (value!25277 List!3863)) (True!1517) (RightBrace!758) (RightBracket!758) (Colon!758) (Null!758) (Comma!758) (LeftBracket!758) (False!1517) (LeftBrace!758) (ImaginaryLiteralValue!758 (text!5752 List!3863)) (StringLiteralValue!2274 (value!25278 List!3863)) (EOFValue!758 (value!25279 List!3863)) (IdentValue!758 (value!25280 List!3863)) (DelimiterValue!1517 (value!25281 List!3863)) (DedentValue!758 (value!25282 List!3863)) (NewLineValue!758 (value!25283 List!3863)) (IntegerValue!2274 (value!25284 (_ BitVec 32)) (text!5753 List!3863)) (IntegerValue!2275 (value!25285 Int) (text!5754 List!3863)) (Times!758) (Or!758) (Equal!758) (Minus!758) (Broken!3794 (value!25286 List!3863)) (And!758) (Div!758) (LessEqual!758) (Mod!758) (Concat!1718) (Not!758) (Plus!758) (SpaceValue!758 (value!25287 List!3863)) (IntegerValue!2276 (value!25288 Int) (text!5755 List!3863)) (StringLiteralValue!2275 (text!5756 List!3863)) (FloatLiteralValue!1517 (text!5757 List!3863)) (BytesLiteralValue!758 (value!25289 List!3863)) (CommentValue!1517 (value!25290 List!3863)) (StringLiteralValue!2276 (value!25291 List!3863)) (ErrorTokenValue!758 (msg!819 List!3863)) )
))
(declare-datatypes ((C!2842 0))(
  ( (C!2843 (val!1307 Int)) )
))
(declare-datatypes ((List!3864 0))(
  ( (Nil!3854) (Cons!3854 (h!9251 C!2842) (t!39020 List!3864)) )
))
(declare-datatypes ((IArray!2589 0))(
  ( (IArray!2590 (innerList!1352 List!3864)) )
))
(declare-datatypes ((Conc!1294 0))(
  ( (Node!1294 (left!3175 Conc!1294) (right!3505 Conc!1294) (csize!2818 Int) (cheight!1505 Int)) (Leaf!2002 (xs!3893 IArray!2589) (csize!2819 Int)) (Empty!1294) )
))
(declare-datatypes ((BalanceConc!2596 0))(
  ( (BalanceConc!2597 (c!52184 Conc!1294)) )
))
(declare-datatypes ((Regex!960 0))(
  ( (ElementMatch!960 (c!52185 C!2842)) (Concat!1719 (regOne!2432 Regex!960) (regTwo!2432 Regex!960)) (EmptyExpr!960) (Star!960 (reg!1289 Regex!960)) (EmptyLang!960) (Union!960 (regOne!2433 Regex!960) (regTwo!2433 Regex!960)) )
))
(declare-datatypes ((String!4872 0))(
  ( (String!4873 (value!25292 String)) )
))
(declare-datatypes ((TokenValueInjection!1288 0))(
  ( (TokenValueInjection!1289 (toValue!1479 Int) (toChars!1338 Int)) )
))
(declare-datatypes ((Rule!1272 0))(
  ( (Rule!1273 (regex!736 Regex!960) (tag!946 String!4872) (isSeparator!736 Bool) (transformation!736 TokenValueInjection!1288)) )
))
(declare-datatypes ((List!3865 0))(
  ( (Nil!3855) (Cons!3855 (h!9252 Rule!1272) (t!39021 List!3865)) )
))
(declare-fun rules!1920 () List!3865)

(assert (= (and b!275610 (is-Cons!3855 rules!1920)) b!275649))

(declare-fun order!2991 () Int)

(declare-fun order!2993 () Int)

(declare-fun dynLambda!1998 (Int Int) Int)

(declare-fun dynLambda!1999 (Int Int) Int)

(assert (=> b!275651 (< (dynLambda!1998 order!2991 (toValue!1479 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9366))))

(declare-fun order!2995 () Int)

(declare-fun dynLambda!2000 (Int Int) Int)

(assert (=> b!275651 (< (dynLambda!2000 order!2995 (toChars!1338 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9366))))

(assert (=> b!275610 true))

(declare-fun b!275605 () Bool)

(declare-fun e!171318 () Bool)

(declare-fun e!171307 () Bool)

(assert (=> b!275605 (= e!171318 e!171307)))

(declare-fun res!125813 () Bool)

(assert (=> b!275605 (=> res!125813 e!171307)))

(declare-fun lt!114367 () List!3864)

(declare-fun lt!114372 () List!3864)

(declare-fun lt!114364 () List!3864)

(assert (=> b!275605 (= res!125813 (or (not (= lt!114372 lt!114367)) (not (= lt!114367 lt!114364)) (not (= lt!114372 lt!114364))))))

(declare-datatypes ((LexerInterface!622 0))(
  ( (LexerInterfaceExt!619 (__x!3004 Int)) (Lexer!620) )
))
(declare-fun thiss!17480 () LexerInterface!622)

(declare-datatypes ((Token!1216 0))(
  ( (Token!1217 (value!25293 TokenValue!758) (rule!1323 Rule!1272) (size!3080 Int) (originalCharacters!779 List!3864)) )
))
(declare-datatypes ((List!3866 0))(
  ( (Nil!3856) (Cons!3856 (h!9253 Token!1216) (t!39022 List!3866)) )
))
(declare-fun lt!114366 () List!3866)

(declare-fun printList!298 (LexerInterface!622 List!3866) List!3864)

(assert (=> b!275605 (= lt!114367 (printList!298 thiss!17480 lt!114366))))

(declare-fun lt!114363 () BalanceConc!2596)

(declare-fun list!1588 (BalanceConc!2596) List!3864)

(assert (=> b!275605 (= lt!114372 (list!1588 lt!114363))))

(declare-fun tokens!465 () List!3866)

(assert (=> b!275605 (= lt!114366 (Cons!3856 (h!9253 tokens!465) Nil!3856))))

(declare-datatypes ((IArray!2591 0))(
  ( (IArray!2592 (innerList!1353 List!3866)) )
))
(declare-datatypes ((Conc!1295 0))(
  ( (Node!1295 (left!3176 Conc!1295) (right!3506 Conc!1295) (csize!2820 Int) (cheight!1506 Int)) (Leaf!2003 (xs!3894 IArray!2591) (csize!2821 Int)) (Empty!1295) )
))
(declare-datatypes ((BalanceConc!2598 0))(
  ( (BalanceConc!2599 (c!52186 Conc!1295)) )
))
(declare-fun lt!114376 () BalanceConc!2598)

(declare-fun printTailRec!310 (LexerInterface!622 BalanceConc!2598 Int BalanceConc!2596) BalanceConc!2596)

(assert (=> b!275605 (= lt!114363 (printTailRec!310 thiss!17480 lt!114376 0 (BalanceConc!2597 Empty!1294)))))

(declare-fun print!347 (LexerInterface!622 BalanceConc!2598) BalanceConc!2596)

(assert (=> b!275605 (= lt!114363 (print!347 thiss!17480 lt!114376))))

(declare-fun singletonSeq!282 (Token!1216) BalanceConc!2598)

(assert (=> b!275605 (= lt!114376 (singletonSeq!282 (h!9253 tokens!465)))))

(declare-fun b!275606 () Bool)

(declare-fun res!125803 () Bool)

(declare-fun e!171311 () Bool)

(assert (=> b!275606 (=> (not res!125803) (not e!171311))))

(declare-datatypes ((tuple2!4344 0))(
  ( (tuple2!4345 (_1!2388 Token!1216) (_2!2388 List!3864)) )
))
(declare-fun lt!114377 () tuple2!4344)

(declare-fun isEmpty!2477 (List!3864) Bool)

(assert (=> b!275606 (= res!125803 (isEmpty!2477 (_2!2388 lt!114377)))))

(declare-fun e!171298 () Bool)

(assert (=> b!275607 (= e!171298 (and tp!103506 tp!103507))))

(declare-fun b!275608 () Bool)

(declare-fun res!125811 () Bool)

(assert (=> b!275608 (=> res!125811 e!171307)))

(declare-fun rulesProduceIndividualToken!371 (LexerInterface!622 List!3865 Token!1216) Bool)

(assert (=> b!275608 (= res!125811 (not (rulesProduceIndividualToken!371 thiss!17480 rules!1920 (h!9253 tokens!465))))))

(declare-fun res!125802 () Bool)

(declare-fun e!171320 () Bool)

(assert (=> start!29768 (=> (not res!125802) (not e!171320))))

(assert (=> start!29768 (= res!125802 (is-Lexer!620 thiss!17480))))

(assert (=> start!29768 e!171320))

(assert (=> start!29768 true))

(declare-fun e!171312 () Bool)

(assert (=> start!29768 e!171312))

(declare-fun separatorToken!170 () Token!1216)

(declare-fun e!171315 () Bool)

(declare-fun inv!4775 (Token!1216) Bool)

(assert (=> start!29768 (and (inv!4775 separatorToken!170) e!171315)))

(declare-fun e!171306 () Bool)

(assert (=> start!29768 e!171306))

(declare-fun b!275609 () Bool)

(declare-fun e!171302 () Bool)

(declare-fun e!171309 () Bool)

(declare-fun tp!103503 () Bool)

(declare-fun inv!4772 (String!4872) Bool)

(declare-fun inv!4776 (TokenValueInjection!1288) Bool)

(assert (=> b!275609 (= e!171302 (and tp!103503 (inv!4772 (tag!946 (h!9252 rules!1920))) (inv!4776 (transformation!736 (h!9252 rules!1920))) e!171309))))

(declare-fun e!171310 () Bool)

(assert (=> b!275610 (= e!171307 e!171310)))

(declare-fun res!125804 () Bool)

(assert (=> b!275610 (=> res!125804 e!171310)))

(declare-datatypes ((tuple2!4346 0))(
  ( (tuple2!4347 (_1!2389 Token!1216) (_2!2389 BalanceConc!2596)) )
))
(declare-datatypes ((Option!826 0))(
  ( (None!825) (Some!825 (v!14714 tuple2!4346)) )
))
(declare-fun isDefined!669 (Option!826) Bool)

(declare-fun maxPrefixZipperSequence!303 (LexerInterface!622 List!3865 BalanceConc!2596) Option!826)

(declare-fun seqFromList!839 (List!3864) BalanceConc!2596)

(assert (=> b!275610 (= res!125804 (not (isDefined!669 (maxPrefixZipperSequence!303 thiss!17480 rules!1920 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))))

(declare-datatypes ((Unit!5039 0))(
  ( (Unit!5040) )
))
(declare-fun lt!114361 () Unit!5039)

(declare-fun forallContained!291 (List!3866 Int Token!1216) Unit!5039)

(assert (=> b!275610 (= lt!114361 (forallContained!291 tokens!465 lambda!9366 (h!9253 tokens!465)))))

(assert (=> b!275610 (= lt!114364 (originalCharacters!779 (h!9253 tokens!465)))))

(declare-fun b!275611 () Bool)

(declare-fun res!125822 () Bool)

(declare-fun e!171299 () Bool)

(assert (=> b!275611 (=> (not res!125822) (not e!171299))))

(assert (=> b!275611 (= res!125822 (is-Cons!3856 tokens!465))))

(declare-fun b!275612 () Bool)

(declare-fun res!125801 () Bool)

(assert (=> b!275612 (=> (not res!125801) (not e!171320))))

(declare-fun rulesInvariant!588 (LexerInterface!622 List!3865) Bool)

(assert (=> b!275612 (= res!125801 (rulesInvariant!588 thiss!17480 rules!1920))))

(declare-fun tp!103510 () Bool)

(declare-fun e!171300 () Bool)

(declare-fun b!275613 () Bool)

(assert (=> b!275613 (= e!171300 (and tp!103510 (inv!4772 (tag!946 (rule!1323 (h!9253 tokens!465)))) (inv!4776 (transformation!736 (rule!1323 (h!9253 tokens!465)))) e!171298))))

(declare-fun b!275614 () Bool)

(declare-fun res!125817 () Bool)

(assert (=> b!275614 (=> (not res!125817) (not e!171299))))

(assert (=> b!275614 (= res!125817 (rulesProduceIndividualToken!371 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!275615 () Bool)

(declare-fun e!171319 () Bool)

(declare-fun e!171305 () Bool)

(assert (=> b!275615 (= e!171319 (not e!171305))))

(declare-fun res!125805 () Bool)

(assert (=> b!275615 (=> res!125805 e!171305)))

(declare-fun lt!114362 () List!3864)

(declare-fun printWithSeparatorTokenWhenNeededRec!297 (LexerInterface!622 List!3865 BalanceConc!2598 Token!1216 Int) BalanceConc!2596)

(declare-fun seqFromList!840 (List!3866) BalanceConc!2598)

(assert (=> b!275615 (= res!125805 (not (= lt!114362 (list!1588 (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 (seqFromList!840 (t!39022 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!114373 () List!3864)

(declare-fun lt!114371 () List!3864)

(assert (=> b!275615 (= lt!114373 lt!114371)))

(declare-fun lt!114360 () List!3864)

(declare-fun ++!1017 (List!3864 List!3864) List!3864)

(assert (=> b!275615 (= lt!114371 (++!1017 lt!114364 lt!114360))))

(declare-fun lt!114354 () List!3864)

(assert (=> b!275615 (= lt!114373 (++!1017 (++!1017 lt!114364 lt!114354) lt!114362))))

(declare-fun lt!114353 () Unit!5039)

(declare-fun lemmaConcatAssociativity!437 (List!3864 List!3864 List!3864) Unit!5039)

(assert (=> b!275615 (= lt!114353 (lemmaConcatAssociativity!437 lt!114364 lt!114354 lt!114362))))

(declare-fun charsOf!381 (Token!1216) BalanceConc!2596)

(assert (=> b!275615 (= lt!114364 (list!1588 (charsOf!381 (h!9253 tokens!465))))))

(assert (=> b!275615 (= lt!114360 (++!1017 lt!114354 lt!114362))))

(declare-fun printWithSeparatorTokenWhenNeededList!305 (LexerInterface!622 List!3865 List!3866 Token!1216) List!3864)

(assert (=> b!275615 (= lt!114362 (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 (t!39022 tokens!465) separatorToken!170))))

(assert (=> b!275615 (= lt!114354 (list!1588 (charsOf!381 separatorToken!170)))))

(declare-fun b!275616 () Bool)

(declare-fun res!125825 () Bool)

(assert (=> b!275616 (=> (not res!125825) (not e!171299))))

(assert (=> b!275616 (= res!125825 (isSeparator!736 (rule!1323 separatorToken!170)))))

(declare-fun b!275617 () Bool)

(assert (=> b!275617 (= e!171305 e!171318)))

(declare-fun res!125824 () Bool)

(assert (=> b!275617 (=> res!125824 e!171318)))

(declare-fun e!171321 () Bool)

(assert (=> b!275617 (= res!125824 e!171321)))

(declare-fun res!125818 () Bool)

(assert (=> b!275617 (=> (not res!125818) (not e!171321))))

(declare-fun lt!114356 () Bool)

(assert (=> b!275617 (= res!125818 (not lt!114356))))

(declare-fun lt!114374 () List!3864)

(assert (=> b!275617 (= lt!114356 (= lt!114374 lt!114371))))

(declare-fun b!275618 () Bool)

(declare-fun e!171303 () Bool)

(declare-fun e!171304 () Bool)

(assert (=> b!275618 (= e!171303 e!171304)))

(declare-fun res!125800 () Bool)

(assert (=> b!275618 (=> res!125800 e!171304)))

(declare-fun isEmpty!2478 (List!3866) Bool)

(assert (=> b!275618 (= res!125800 (not (isEmpty!2478 (t!39022 tokens!465))))))

(declare-datatypes ((Option!827 0))(
  ( (None!826) (Some!826 (v!14715 tuple2!4344)) )
))
(declare-fun lt!114369 () Option!827)

(declare-fun maxPrefix!340 (LexerInterface!622 List!3865 List!3864) Option!827)

(assert (=> b!275618 (= lt!114369 (maxPrefix!340 thiss!17480 rules!1920 lt!114360))))

(declare-fun lt!114365 () tuple2!4344)

(assert (=> b!275618 (= lt!114360 (_2!2388 lt!114365))))

(declare-fun lt!114355 () Unit!5039)

(declare-fun lemmaSamePrefixThenSameSuffix!205 (List!3864 List!3864 List!3864 List!3864 List!3864) Unit!5039)

(assert (=> b!275618 (= lt!114355 (lemmaSamePrefixThenSameSuffix!205 lt!114364 lt!114360 lt!114364 (_2!2388 lt!114365) lt!114374))))

(declare-fun get!1285 (Option!827) tuple2!4344)

(assert (=> b!275618 (= lt!114365 (get!1285 (maxPrefix!340 thiss!17480 rules!1920 lt!114374)))))

(declare-fun isPrefix!404 (List!3864 List!3864) Bool)

(assert (=> b!275618 (isPrefix!404 lt!114364 lt!114371)))

(declare-fun lt!114375 () Unit!5039)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!299 (List!3864 List!3864) Unit!5039)

(assert (=> b!275618 (= lt!114375 (lemmaConcatTwoListThenFirstIsPrefix!299 lt!114364 lt!114360))))

(declare-fun e!171308 () Bool)

(assert (=> b!275618 e!171308))

(declare-fun res!125809 () Bool)

(assert (=> b!275618 (=> res!125809 e!171308)))

(assert (=> b!275618 (= res!125809 (isEmpty!2478 tokens!465))))

(declare-fun lt!114370 () Unit!5039)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!161 (LexerInterface!622 List!3865 List!3866 Token!1216) Unit!5039)

(assert (=> b!275618 (= lt!114370 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!161 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!275619 () Bool)

(declare-fun matchR!282 (Regex!960 List!3864) Bool)

(assert (=> b!275619 (= e!171311 (matchR!282 (regex!736 (rule!1323 (h!9253 tokens!465))) lt!114364))))

(declare-fun b!275620 () Bool)

(declare-fun tp!103509 () Bool)

(declare-fun e!171314 () Bool)

(assert (=> b!275620 (= e!171306 (and (inv!4775 (h!9253 tokens!465)) e!171314 tp!103509))))

(declare-fun b!275621 () Bool)

(assert (=> b!275621 (= e!171299 e!171319)))

(declare-fun res!125812 () Bool)

(assert (=> b!275621 (=> (not res!125812) (not e!171319))))

(declare-fun lt!114368 () List!3864)

(assert (=> b!275621 (= res!125812 (= lt!114374 lt!114368))))

(declare-fun lt!114358 () BalanceConc!2598)

(assert (=> b!275621 (= lt!114368 (list!1588 (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 lt!114358 separatorToken!170 0)))))

(assert (=> b!275621 (= lt!114374 (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!275622 () Bool)

(declare-fun tp!103508 () Bool)

(declare-fun inv!21 (TokenValue!758) Bool)

(assert (=> b!275622 (= e!171314 (and (inv!21 (value!25293 (h!9253 tokens!465))) e!171300 tp!103508))))

(declare-fun e!171324 () Bool)

(declare-fun b!275623 () Bool)

(declare-fun tp!103511 () Bool)

(assert (=> b!275623 (= e!171315 (and (inv!21 (value!25293 separatorToken!170)) e!171324 tp!103511))))

(declare-fun b!275624 () Bool)

(assert (=> b!275624 (= e!171320 e!171299)))

(declare-fun res!125820 () Bool)

(assert (=> b!275624 (=> (not res!125820) (not e!171299))))

(declare-fun rulesProduceEachTokenIndividually!414 (LexerInterface!622 List!3865 BalanceConc!2598) Bool)

(assert (=> b!275624 (= res!125820 (rulesProduceEachTokenIndividually!414 thiss!17480 rules!1920 lt!114358))))

(assert (=> b!275624 (= lt!114358 (seqFromList!840 tokens!465))))

(declare-fun b!275625 () Bool)

(declare-fun e!171313 () Bool)

(declare-fun lt!114357 () Option!827)

(declare-fun head!899 (List!3866) Token!1216)

(assert (=> b!275625 (= e!171313 (= (_1!2388 (get!1285 lt!114357)) (head!899 tokens!465)))))

(assert (=> b!275626 (= e!171309 (and tp!103512 tp!103502))))

(declare-fun b!275627 () Bool)

(declare-fun res!125821 () Bool)

(assert (=> b!275627 (=> res!125821 e!171304)))

(assert (=> b!275627 (= res!125821 (not (isEmpty!2477 lt!114362)))))

(declare-fun e!171297 () Bool)

(assert (=> b!275628 (= e!171297 (and tp!103504 tp!103505))))

(declare-fun b!275629 () Bool)

(declare-fun res!125819 () Bool)

(assert (=> b!275629 (=> (not res!125819) (not e!171299))))

(declare-fun sepAndNonSepRulesDisjointChars!325 (List!3865 List!3865) Bool)

(assert (=> b!275629 (= res!125819 (sepAndNonSepRulesDisjointChars!325 rules!1920 rules!1920))))

(declare-fun b!275630 () Bool)

(assert (=> b!275630 (= e!171308 e!171313)))

(declare-fun res!125815 () Bool)

(assert (=> b!275630 (=> (not res!125815) (not e!171313))))

(declare-fun isDefined!670 (Option!827) Bool)

(assert (=> b!275630 (= res!125815 (isDefined!670 lt!114357))))

(assert (=> b!275630 (= lt!114357 (maxPrefix!340 thiss!17480 rules!1920 lt!114374))))

(declare-fun tp!103501 () Bool)

(declare-fun b!275631 () Bool)

(assert (=> b!275631 (= e!171324 (and tp!103501 (inv!4772 (tag!946 (rule!1323 separatorToken!170))) (inv!4776 (transformation!736 (rule!1323 separatorToken!170))) e!171297))))

(declare-fun b!275632 () Bool)

(declare-fun res!125816 () Bool)

(assert (=> b!275632 (=> (not res!125816) (not e!171319))))

(assert (=> b!275632 (= res!125816 (= (list!1588 (seqFromList!839 lt!114374)) lt!114368))))

(declare-fun res!125814 () Bool)

(assert (=> b!275633 (=> (not res!125814) (not e!171299))))

(declare-fun forall!979 (List!3866 Int) Bool)

(assert (=> b!275633 (= res!125814 (forall!979 tokens!465 lambda!9365))))

(declare-fun b!275634 () Bool)

(declare-fun res!125806 () Bool)

(assert (=> b!275634 (=> (not res!125806) (not e!171320))))

(declare-fun isEmpty!2479 (List!3865) Bool)

(assert (=> b!275634 (= res!125806 (not (isEmpty!2479 rules!1920)))))

(declare-fun b!275635 () Bool)

(assert (=> b!275635 (= e!171310 e!171303)))

(declare-fun res!125807 () Bool)

(assert (=> b!275635 (=> res!125807 e!171303)))

(assert (=> b!275635 (= res!125807 (not lt!114356))))

(assert (=> b!275635 e!171311))

(declare-fun res!125810 () Bool)

(assert (=> b!275635 (=> (not res!125810) (not e!171311))))

(assert (=> b!275635 (= res!125810 (= (_1!2388 lt!114377) (h!9253 tokens!465)))))

(declare-fun lt!114359 () Option!827)

(assert (=> b!275635 (= lt!114377 (get!1285 lt!114359))))

(assert (=> b!275635 (isDefined!670 lt!114359)))

(assert (=> b!275635 (= lt!114359 (maxPrefix!340 thiss!17480 rules!1920 lt!114364))))

(declare-fun b!275636 () Bool)

(declare-fun res!125823 () Bool)

(assert (=> b!275636 (=> res!125823 e!171307)))

(declare-fun isEmpty!2480 (BalanceConc!2598) Bool)

(declare-datatypes ((tuple2!4348 0))(
  ( (tuple2!4349 (_1!2390 BalanceConc!2598) (_2!2390 BalanceConc!2596)) )
))
(declare-fun lex!414 (LexerInterface!622 List!3865 BalanceConc!2596) tuple2!4348)

(assert (=> b!275636 (= res!125823 (isEmpty!2480 (_1!2390 (lex!414 thiss!17480 rules!1920 (seqFromList!839 lt!114364)))))))

(declare-fun b!275637 () Bool)

(assert (=> b!275637 (= e!171321 (not (= lt!114374 (++!1017 lt!114364 lt!114362))))))

(declare-fun b!275638 () Bool)

(assert (=> b!275638 (= e!171304 (= lt!114374 lt!114364))))

(declare-fun b!275639 () Bool)

(declare-fun res!125808 () Bool)

(assert (=> b!275639 (=> res!125808 e!171304)))

(assert (=> b!275639 (= res!125808 (not (= tokens!465 lt!114366)))))

(declare-fun b!275640 () Bool)

(declare-fun tp!103500 () Bool)

(assert (=> b!275640 (= e!171312 (and e!171302 tp!103500))))

(assert (= (and start!29768 res!125802) b!275634))

(assert (= (and b!275634 res!125806) b!275612))

(assert (= (and b!275612 res!125801) b!275624))

(assert (= (and b!275624 res!125820) b!275614))

(assert (= (and b!275614 res!125817) b!275616))

(assert (= (and b!275616 res!125825) b!275633))

(assert (= (and b!275633 res!125814) b!275629))

(assert (= (and b!275629 res!125819) b!275611))

(assert (= (and b!275611 res!125822) b!275621))

(assert (= (and b!275621 res!125812) b!275632))

(assert (= (and b!275632 res!125816) b!275615))

(assert (= (and b!275615 (not res!125805)) b!275617))

(assert (= (and b!275617 res!125818) b!275637))

(assert (= (and b!275617 (not res!125824)) b!275605))

(assert (= (and b!275605 (not res!125813)) b!275608))

(assert (= (and b!275608 (not res!125811)) b!275636))

(assert (= (and b!275636 (not res!125823)) b!275610))

(assert (= (and b!275610 (not res!125804)) b!275635))

(assert (= (and b!275635 res!125810) b!275606))

(assert (= (and b!275606 res!125803) b!275619))

(assert (= (and b!275635 (not res!125807)) b!275618))

(assert (= (and b!275618 (not res!125809)) b!275630))

(assert (= (and b!275630 res!125815) b!275625))

(assert (= (and b!275618 (not res!125800)) b!275639))

(assert (= (and b!275639 (not res!125808)) b!275627))

(assert (= (and b!275627 (not res!125821)) b!275638))

(assert (= b!275609 b!275626))

(assert (= b!275640 b!275609))

(assert (= (and start!29768 (is-Cons!3855 rules!1920)) b!275640))

(assert (= b!275631 b!275628))

(assert (= b!275623 b!275631))

(assert (= start!29768 b!275623))

(assert (= b!275613 b!275607))

(assert (= b!275622 b!275613))

(assert (= b!275620 b!275622))

(assert (= (and start!29768 (is-Cons!3856 tokens!465)) b!275620))

(declare-fun m!351651 () Bool)

(assert (=> b!275633 m!351651))

(declare-fun m!351653 () Bool)

(assert (=> b!275615 m!351653))

(declare-fun m!351655 () Bool)

(assert (=> b!275615 m!351655))

(declare-fun m!351657 () Bool)

(assert (=> b!275615 m!351657))

(declare-fun m!351659 () Bool)

(assert (=> b!275615 m!351659))

(assert (=> b!275615 m!351653))

(declare-fun m!351661 () Bool)

(assert (=> b!275615 m!351661))

(declare-fun m!351663 () Bool)

(assert (=> b!275615 m!351663))

(declare-fun m!351665 () Bool)

(assert (=> b!275615 m!351665))

(declare-fun m!351667 () Bool)

(assert (=> b!275615 m!351667))

(declare-fun m!351669 () Bool)

(assert (=> b!275615 m!351669))

(assert (=> b!275615 m!351665))

(declare-fun m!351671 () Bool)

(assert (=> b!275615 m!351671))

(assert (=> b!275615 m!351659))

(declare-fun m!351673 () Bool)

(assert (=> b!275615 m!351673))

(assert (=> b!275615 m!351663))

(declare-fun m!351675 () Bool)

(assert (=> b!275615 m!351675))

(assert (=> b!275615 m!351661))

(declare-fun m!351677 () Bool)

(assert (=> b!275615 m!351677))

(declare-fun m!351679 () Bool)

(assert (=> b!275613 m!351679))

(declare-fun m!351681 () Bool)

(assert (=> b!275613 m!351681))

(declare-fun m!351683 () Bool)

(assert (=> b!275630 m!351683))

(declare-fun m!351685 () Bool)

(assert (=> b!275630 m!351685))

(declare-fun m!351687 () Bool)

(assert (=> b!275623 m!351687))

(declare-fun m!351689 () Bool)

(assert (=> b!275631 m!351689))

(declare-fun m!351691 () Bool)

(assert (=> b!275631 m!351691))

(declare-fun m!351693 () Bool)

(assert (=> b!275622 m!351693))

(declare-fun m!351695 () Bool)

(assert (=> b!275608 m!351695))

(declare-fun m!351697 () Bool)

(assert (=> start!29768 m!351697))

(declare-fun m!351699 () Bool)

(assert (=> b!275614 m!351699))

(declare-fun m!351701 () Bool)

(assert (=> b!275610 m!351701))

(assert (=> b!275610 m!351701))

(declare-fun m!351703 () Bool)

(assert (=> b!275610 m!351703))

(assert (=> b!275610 m!351703))

(declare-fun m!351705 () Bool)

(assert (=> b!275610 m!351705))

(declare-fun m!351707 () Bool)

(assert (=> b!275610 m!351707))

(declare-fun m!351709 () Bool)

(assert (=> b!275637 m!351709))

(declare-fun m!351711 () Bool)

(assert (=> b!275620 m!351711))

(declare-fun m!351713 () Bool)

(assert (=> b!275635 m!351713))

(declare-fun m!351715 () Bool)

(assert (=> b!275635 m!351715))

(declare-fun m!351717 () Bool)

(assert (=> b!275635 m!351717))

(declare-fun m!351719 () Bool)

(assert (=> b!275621 m!351719))

(assert (=> b!275621 m!351719))

(declare-fun m!351721 () Bool)

(assert (=> b!275621 m!351721))

(declare-fun m!351723 () Bool)

(assert (=> b!275621 m!351723))

(declare-fun m!351725 () Bool)

(assert (=> b!275606 m!351725))

(declare-fun m!351727 () Bool)

(assert (=> b!275634 m!351727))

(declare-fun m!351729 () Bool)

(assert (=> b!275629 m!351729))

(declare-fun m!351731 () Bool)

(assert (=> b!275609 m!351731))

(declare-fun m!351733 () Bool)

(assert (=> b!275609 m!351733))

(declare-fun m!351735 () Bool)

(assert (=> b!275618 m!351735))

(declare-fun m!351737 () Bool)

(assert (=> b!275618 m!351737))

(declare-fun m!351739 () Bool)

(assert (=> b!275618 m!351739))

(declare-fun m!351741 () Bool)

(assert (=> b!275618 m!351741))

(declare-fun m!351743 () Bool)

(assert (=> b!275618 m!351743))

(assert (=> b!275618 m!351685))

(assert (=> b!275618 m!351685))

(declare-fun m!351745 () Bool)

(assert (=> b!275618 m!351745))

(declare-fun m!351747 () Bool)

(assert (=> b!275618 m!351747))

(declare-fun m!351749 () Bool)

(assert (=> b!275618 m!351749))

(declare-fun m!351751 () Bool)

(assert (=> b!275636 m!351751))

(assert (=> b!275636 m!351751))

(declare-fun m!351753 () Bool)

(assert (=> b!275636 m!351753))

(declare-fun m!351755 () Bool)

(assert (=> b!275636 m!351755))

(declare-fun m!351757 () Bool)

(assert (=> b!275605 m!351757))

(declare-fun m!351759 () Bool)

(assert (=> b!275605 m!351759))

(declare-fun m!351761 () Bool)

(assert (=> b!275605 m!351761))

(declare-fun m!351763 () Bool)

(assert (=> b!275605 m!351763))

(declare-fun m!351765 () Bool)

(assert (=> b!275605 m!351765))

(declare-fun m!351767 () Bool)

(assert (=> b!275624 m!351767))

(declare-fun m!351769 () Bool)

(assert (=> b!275624 m!351769))

(declare-fun m!351771 () Bool)

(assert (=> b!275612 m!351771))

(declare-fun m!351773 () Bool)

(assert (=> b!275627 m!351773))

(declare-fun m!351775 () Bool)

(assert (=> b!275625 m!351775))

(declare-fun m!351777 () Bool)

(assert (=> b!275625 m!351777))

(declare-fun m!351779 () Bool)

(assert (=> b!275619 m!351779))

(declare-fun m!351781 () Bool)

(assert (=> b!275632 m!351781))

(assert (=> b!275632 m!351781))

(declare-fun m!351783 () Bool)

(assert (=> b!275632 m!351783))

(push 1)

(assert (not b_next!10181))

(assert (not b!275621))

(assert (not b!275624))

(assert (not b!275612))

(assert (not b!275620))

(assert (not b!275636))

(assert (not start!29768))

(assert (not b_next!10183))

(assert (not b!275623))

(assert (not b!275631))

(assert (not b!275618))

(assert b_and!22121)

(assert (not b!275605))

(assert (not b!275610))

(assert (not b!275634))

(assert (not b!275615))

(assert (not b!275633))

(assert (not b!275622))

(assert (not b!275627))

(assert (not b!275608))

(assert (not b!275629))

(assert (not b!275619))

(assert (not b!275635))

(assert (not b!275613))

(assert b_and!22125)

(assert (not b_next!10177))

(assert (not b_next!10175))

(assert b_and!22127)

(assert b_and!22123)

(assert b_and!22129)

(assert (not b!275632))

(assert (not b_next!10173))

(assert (not b!275606))

(assert (not b!275625))

(assert (not b!275630))

(assert (not b!275614))

(assert b_and!22131)

(assert (not b!275637))

(assert (not b!275649))

(assert (not b_next!10179))

(assert (not b!275609))

(assert (not b!275640))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!10181))

(assert b_and!22125)

(assert (not b_next!10183))

(assert b_and!22131)

(assert b_and!22121)

(assert (not b_next!10179))

(assert (not b_next!10177))

(assert (not b_next!10175))

(assert b_and!22127)

(assert b_and!22123)

(assert b_and!22129)

(assert (not b_next!10173))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!275785 () Bool)

(declare-fun e!171435 () Bool)

(declare-fun inv!17 (TokenValue!758) Bool)

(assert (=> b!275785 (= e!171435 (inv!17 (value!25293 (h!9253 tokens!465))))))

(declare-fun b!275786 () Bool)

(declare-fun e!171434 () Bool)

(declare-fun inv!15 (TokenValue!758) Bool)

(assert (=> b!275786 (= e!171434 (inv!15 (value!25293 (h!9253 tokens!465))))))

(declare-fun b!275787 () Bool)

(declare-fun e!171433 () Bool)

(assert (=> b!275787 (= e!171433 e!171435)))

(declare-fun c!52195 () Bool)

(assert (=> b!275787 (= c!52195 (is-IntegerValue!2275 (value!25293 (h!9253 tokens!465))))))

(declare-fun b!275788 () Bool)

(declare-fun inv!16 (TokenValue!758) Bool)

(assert (=> b!275788 (= e!171433 (inv!16 (value!25293 (h!9253 tokens!465))))))

(declare-fun b!275789 () Bool)

(declare-fun res!125910 () Bool)

(assert (=> b!275789 (=> res!125910 e!171434)))

(assert (=> b!275789 (= res!125910 (not (is-IntegerValue!2276 (value!25293 (h!9253 tokens!465)))))))

(assert (=> b!275789 (= e!171435 e!171434)))

(declare-fun d!80736 () Bool)

(declare-fun c!52196 () Bool)

(assert (=> d!80736 (= c!52196 (is-IntegerValue!2274 (value!25293 (h!9253 tokens!465))))))

(assert (=> d!80736 (= (inv!21 (value!25293 (h!9253 tokens!465))) e!171433)))

(assert (= (and d!80736 c!52196) b!275788))

(assert (= (and d!80736 (not c!52196)) b!275787))

(assert (= (and b!275787 c!52195) b!275785))

(assert (= (and b!275787 (not c!52195)) b!275789))

(assert (= (and b!275789 (not res!125910)) b!275786))

(declare-fun m!351919 () Bool)

(assert (=> b!275785 m!351919))

(declare-fun m!351921 () Bool)

(assert (=> b!275786 m!351921))

(declare-fun m!351923 () Bool)

(assert (=> b!275788 m!351923))

(assert (=> b!275622 d!80736))

(declare-fun b!275790 () Bool)

(declare-fun e!171438 () Bool)

(assert (=> b!275790 (= e!171438 (inv!17 (value!25293 separatorToken!170)))))

(declare-fun b!275791 () Bool)

(declare-fun e!171437 () Bool)

(assert (=> b!275791 (= e!171437 (inv!15 (value!25293 separatorToken!170)))))

(declare-fun b!275792 () Bool)

(declare-fun e!171436 () Bool)

(assert (=> b!275792 (= e!171436 e!171438)))

(declare-fun c!52197 () Bool)

(assert (=> b!275792 (= c!52197 (is-IntegerValue!2275 (value!25293 separatorToken!170)))))

(declare-fun b!275793 () Bool)

(assert (=> b!275793 (= e!171436 (inv!16 (value!25293 separatorToken!170)))))

(declare-fun b!275794 () Bool)

(declare-fun res!125911 () Bool)

(assert (=> b!275794 (=> res!125911 e!171437)))

(assert (=> b!275794 (= res!125911 (not (is-IntegerValue!2276 (value!25293 separatorToken!170))))))

(assert (=> b!275794 (= e!171438 e!171437)))

(declare-fun d!80738 () Bool)

(declare-fun c!52198 () Bool)

(assert (=> d!80738 (= c!52198 (is-IntegerValue!2274 (value!25293 separatorToken!170)))))

(assert (=> d!80738 (= (inv!21 (value!25293 separatorToken!170)) e!171436)))

(assert (= (and d!80738 c!52198) b!275793))

(assert (= (and d!80738 (not c!52198)) b!275792))

(assert (= (and b!275792 c!52197) b!275790))

(assert (= (and b!275792 (not c!52197)) b!275794))

(assert (= (and b!275794 (not res!125911)) b!275791))

(declare-fun m!351925 () Bool)

(assert (=> b!275790 m!351925))

(declare-fun m!351927 () Bool)

(assert (=> b!275791 m!351927))

(declare-fun m!351929 () Bool)

(assert (=> b!275793 m!351929))

(assert (=> b!275623 d!80738))

(declare-fun d!80740 () Bool)

(declare-fun res!125916 () Bool)

(declare-fun e!171441 () Bool)

(assert (=> d!80740 (=> (not res!125916) (not e!171441))))

(assert (=> d!80740 (= res!125916 (not (isEmpty!2477 (originalCharacters!779 separatorToken!170))))))

(assert (=> d!80740 (= (inv!4775 separatorToken!170) e!171441)))

(declare-fun b!275799 () Bool)

(declare-fun res!125917 () Bool)

(assert (=> b!275799 (=> (not res!125917) (not e!171441))))

(declare-fun dynLambda!2004 (Int TokenValue!758) BalanceConc!2596)

(assert (=> b!275799 (= res!125917 (= (originalCharacters!779 separatorToken!170) (list!1588 (dynLambda!2004 (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (value!25293 separatorToken!170)))))))

(declare-fun b!275800 () Bool)

(declare-fun size!3082 (List!3864) Int)

(assert (=> b!275800 (= e!171441 (= (size!3080 separatorToken!170) (size!3082 (originalCharacters!779 separatorToken!170))))))

(assert (= (and d!80740 res!125916) b!275799))

(assert (= (and b!275799 res!125917) b!275800))

(declare-fun b_lambda!8887 () Bool)

(assert (=> (not b_lambda!8887) (not b!275799)))

(declare-fun t!39030 () Bool)

(declare-fun tb!15781 () Bool)

(assert (=> (and b!275626 (= (toChars!1338 (transformation!736 (h!9252 rules!1920))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170)))) t!39030) tb!15781))

(declare-fun b!275805 () Bool)

(declare-fun e!171444 () Bool)

(declare-fun tp!103554 () Bool)

(declare-fun inv!4779 (Conc!1294) Bool)

(assert (=> b!275805 (= e!171444 (and (inv!4779 (c!52184 (dynLambda!2004 (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (value!25293 separatorToken!170)))) tp!103554))))

(declare-fun result!19452 () Bool)

(declare-fun inv!4780 (BalanceConc!2596) Bool)

(assert (=> tb!15781 (= result!19452 (and (inv!4780 (dynLambda!2004 (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (value!25293 separatorToken!170))) e!171444))))

(assert (= tb!15781 b!275805))

(declare-fun m!351931 () Bool)

(assert (=> b!275805 m!351931))

(declare-fun m!351933 () Bool)

(assert (=> tb!15781 m!351933))

(assert (=> b!275799 t!39030))

(declare-fun b_and!22145 () Bool)

(assert (= b_and!22123 (and (=> t!39030 result!19452) b_and!22145)))

(declare-fun t!39032 () Bool)

(declare-fun tb!15783 () Bool)

(assert (=> (and b!275607 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170)))) t!39032) tb!15783))

(declare-fun result!19456 () Bool)

(assert (= result!19456 result!19452))

(assert (=> b!275799 t!39032))

(declare-fun b_and!22147 () Bool)

(assert (= b_and!22127 (and (=> t!39032 result!19456) b_and!22147)))

(declare-fun t!39034 () Bool)

(declare-fun tb!15785 () Bool)

(assert (=> (and b!275628 (= (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170)))) t!39034) tb!15785))

(declare-fun result!19458 () Bool)

(assert (= result!19458 result!19452))

(assert (=> b!275799 t!39034))

(declare-fun b_and!22149 () Bool)

(assert (= b_and!22131 (and (=> t!39034 result!19458) b_and!22149)))

(declare-fun m!351935 () Bool)

(assert (=> d!80740 m!351935))

(declare-fun m!351937 () Bool)

(assert (=> b!275799 m!351937))

(assert (=> b!275799 m!351937))

(declare-fun m!351939 () Bool)

(assert (=> b!275799 m!351939))

(declare-fun m!351941 () Bool)

(assert (=> b!275800 m!351941))

(assert (=> start!29768 d!80740))

(declare-fun bs!30941 () Bool)

(declare-fun d!80742 () Bool)

(assert (= bs!30941 (and d!80742 b!275633)))

(declare-fun lambda!9377 () Int)

(assert (=> bs!30941 (not (= lambda!9377 lambda!9365))))

(declare-fun bs!30942 () Bool)

(assert (= bs!30942 (and d!80742 b!275610)))

(assert (=> bs!30942 (= lambda!9377 lambda!9366)))

(declare-fun b!275811 () Bool)

(declare-fun e!171450 () Bool)

(assert (=> b!275811 (= e!171450 true)))

(declare-fun b!275810 () Bool)

(declare-fun e!171449 () Bool)

(assert (=> b!275810 (= e!171449 e!171450)))

(declare-fun b!275809 () Bool)

(declare-fun e!171448 () Bool)

(assert (=> b!275809 (= e!171448 e!171449)))

(assert (=> d!80742 e!171448))

(assert (= b!275810 b!275811))

(assert (= b!275809 b!275810))

(assert (= (and d!80742 (is-Cons!3855 rules!1920)) b!275809))

(assert (=> b!275811 (< (dynLambda!1998 order!2991 (toValue!1479 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9377))))

(assert (=> b!275811 (< (dynLambda!2000 order!2995 (toChars!1338 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9377))))

(assert (=> d!80742 true))

(declare-fun e!171447 () Bool)

(assert (=> d!80742 e!171447))

(declare-fun res!125927 () Bool)

(assert (=> d!80742 (=> (not res!125927) (not e!171447))))

(declare-fun lt!114455 () Bool)

(declare-fun list!1590 (BalanceConc!2598) List!3866)

(assert (=> d!80742 (= res!125927 (= lt!114455 (forall!979 (list!1590 lt!114358) lambda!9377)))))

(declare-fun forall!981 (BalanceConc!2598 Int) Bool)

(assert (=> d!80742 (= lt!114455 (forall!981 lt!114358 lambda!9377))))

(assert (=> d!80742 (not (isEmpty!2479 rules!1920))))

(assert (=> d!80742 (= (rulesProduceEachTokenIndividually!414 thiss!17480 rules!1920 lt!114358) lt!114455)))

(declare-fun b!275808 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!234 (LexerInterface!622 List!3865 List!3866) Bool)

(assert (=> b!275808 (= e!171447 (= lt!114455 (rulesProduceEachTokenIndividuallyList!234 thiss!17480 rules!1920 (list!1590 lt!114358))))))

(assert (= (and d!80742 res!125927) b!275808))

(declare-fun m!351943 () Bool)

(assert (=> d!80742 m!351943))

(assert (=> d!80742 m!351943))

(declare-fun m!351945 () Bool)

(assert (=> d!80742 m!351945))

(declare-fun m!351947 () Bool)

(assert (=> d!80742 m!351947))

(assert (=> d!80742 m!351727))

(assert (=> b!275808 m!351943))

(assert (=> b!275808 m!351943))

(declare-fun m!351949 () Bool)

(assert (=> b!275808 m!351949))

(assert (=> b!275624 d!80742))

(declare-fun d!80744 () Bool)

(declare-fun fromListB!330 (List!3866) BalanceConc!2598)

(assert (=> d!80744 (= (seqFromList!840 tokens!465) (fromListB!330 tokens!465))))

(declare-fun bs!30943 () Bool)

(assert (= bs!30943 d!80744))

(declare-fun m!351951 () Bool)

(assert (=> bs!30943 m!351951))

(assert (=> b!275624 d!80744))

(declare-fun d!80746 () Bool)

(declare-fun res!125928 () Bool)

(declare-fun e!171451 () Bool)

(assert (=> d!80746 (=> (not res!125928) (not e!171451))))

(assert (=> d!80746 (= res!125928 (not (isEmpty!2477 (originalCharacters!779 (h!9253 tokens!465)))))))

(assert (=> d!80746 (= (inv!4775 (h!9253 tokens!465)) e!171451)))

(declare-fun b!275812 () Bool)

(declare-fun res!125929 () Bool)

(assert (=> b!275812 (=> (not res!125929) (not e!171451))))

(assert (=> b!275812 (= res!125929 (= (originalCharacters!779 (h!9253 tokens!465)) (list!1588 (dynLambda!2004 (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (value!25293 (h!9253 tokens!465))))))))

(declare-fun b!275813 () Bool)

(assert (=> b!275813 (= e!171451 (= (size!3080 (h!9253 tokens!465)) (size!3082 (originalCharacters!779 (h!9253 tokens!465)))))))

(assert (= (and d!80746 res!125928) b!275812))

(assert (= (and b!275812 res!125929) b!275813))

(declare-fun b_lambda!8889 () Bool)

(assert (=> (not b_lambda!8889) (not b!275812)))

(declare-fun t!39040 () Bool)

(declare-fun tb!15787 () Bool)

(assert (=> (and b!275626 (= (toChars!1338 (transformation!736 (h!9252 rules!1920))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465))))) t!39040) tb!15787))

(declare-fun b!275814 () Bool)

(declare-fun e!171452 () Bool)

(declare-fun tp!103555 () Bool)

(assert (=> b!275814 (= e!171452 (and (inv!4779 (c!52184 (dynLambda!2004 (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (value!25293 (h!9253 tokens!465))))) tp!103555))))

(declare-fun result!19460 () Bool)

(assert (=> tb!15787 (= result!19460 (and (inv!4780 (dynLambda!2004 (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (value!25293 (h!9253 tokens!465)))) e!171452))))

(assert (= tb!15787 b!275814))

(declare-fun m!351953 () Bool)

(assert (=> b!275814 m!351953))

(declare-fun m!351955 () Bool)

(assert (=> tb!15787 m!351955))

(assert (=> b!275812 t!39040))

(declare-fun b_and!22151 () Bool)

(assert (= b_and!22145 (and (=> t!39040 result!19460) b_and!22151)))

(declare-fun t!39042 () Bool)

(declare-fun tb!15789 () Bool)

(assert (=> (and b!275607 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465))))) t!39042) tb!15789))

(declare-fun result!19462 () Bool)

(assert (= result!19462 result!19460))

(assert (=> b!275812 t!39042))

(declare-fun b_and!22153 () Bool)

(assert (= b_and!22147 (and (=> t!39042 result!19462) b_and!22153)))

(declare-fun tb!15791 () Bool)

(declare-fun t!39044 () Bool)

(assert (=> (and b!275628 (= (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465))))) t!39044) tb!15791))

(declare-fun result!19464 () Bool)

(assert (= result!19464 result!19460))

(assert (=> b!275812 t!39044))

(declare-fun b_and!22155 () Bool)

(assert (= b_and!22149 (and (=> t!39044 result!19464) b_and!22155)))

(declare-fun m!351957 () Bool)

(assert (=> d!80746 m!351957))

(declare-fun m!351959 () Bool)

(assert (=> b!275812 m!351959))

(assert (=> b!275812 m!351959))

(declare-fun m!351961 () Bool)

(assert (=> b!275812 m!351961))

(declare-fun m!351963 () Bool)

(assert (=> b!275813 m!351963))

(assert (=> b!275620 d!80746))

(declare-fun d!80748 () Bool)

(declare-fun list!1591 (Conc!1294) List!3864)

(assert (=> d!80748 (= (list!1588 (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 lt!114358 separatorToken!170 0)) (list!1591 (c!52184 (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 lt!114358 separatorToken!170 0))))))

(declare-fun bs!30944 () Bool)

(assert (= bs!30944 d!80748))

(declare-fun m!351965 () Bool)

(assert (=> bs!30944 m!351965))

(assert (=> b!275621 d!80748))

(declare-fun bs!30948 () Bool)

(declare-fun d!80750 () Bool)

(assert (= bs!30948 (and d!80750 b!275633)))

(declare-fun lambda!9382 () Int)

(assert (=> bs!30948 (= lambda!9382 lambda!9365)))

(declare-fun bs!30949 () Bool)

(assert (= bs!30949 (and d!80750 b!275610)))

(assert (=> bs!30949 (not (= lambda!9382 lambda!9366))))

(declare-fun bs!30950 () Bool)

(assert (= bs!30950 (and d!80750 d!80742)))

(assert (=> bs!30950 (not (= lambda!9382 lambda!9377))))

(declare-fun bs!30951 () Bool)

(declare-fun b!275844 () Bool)

(assert (= bs!30951 (and b!275844 b!275633)))

(declare-fun lambda!9383 () Int)

(assert (=> bs!30951 (not (= lambda!9383 lambda!9365))))

(declare-fun bs!30952 () Bool)

(assert (= bs!30952 (and b!275844 b!275610)))

(assert (=> bs!30952 (= lambda!9383 lambda!9366)))

(declare-fun bs!30953 () Bool)

(assert (= bs!30953 (and b!275844 d!80742)))

(assert (=> bs!30953 (= lambda!9383 lambda!9377)))

(declare-fun bs!30954 () Bool)

(assert (= bs!30954 (and b!275844 d!80750)))

(assert (=> bs!30954 (not (= lambda!9383 lambda!9382))))

(declare-fun b!275847 () Bool)

(declare-fun e!171476 () Bool)

(assert (=> b!275847 (= e!171476 true)))

(declare-fun b!275846 () Bool)

(declare-fun e!171475 () Bool)

(assert (=> b!275846 (= e!171475 e!171476)))

(declare-fun b!275845 () Bool)

(declare-fun e!171474 () Bool)

(assert (=> b!275845 (= e!171474 e!171475)))

(assert (=> b!275844 e!171474))

(assert (= b!275846 b!275847))

(assert (= b!275845 b!275846))

(assert (= (and b!275844 (is-Cons!3855 rules!1920)) b!275845))

(assert (=> b!275847 (< (dynLambda!1998 order!2991 (toValue!1479 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9383))))

(assert (=> b!275847 (< (dynLambda!2000 order!2995 (toChars!1338 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9383))))

(assert (=> b!275844 true))

(declare-fun b!275836 () Bool)

(declare-fun e!171470 () BalanceConc!2596)

(declare-fun call!15209 () BalanceConc!2596)

(declare-fun lt!114496 () BalanceConc!2596)

(declare-fun ++!1019 (BalanceConc!2596 BalanceConc!2596) BalanceConc!2596)

(assert (=> b!275836 (= e!171470 (++!1019 call!15209 lt!114496))))

(declare-fun b!275837 () Bool)

(assert (=> b!275837 (= e!171470 (BalanceConc!2597 Empty!1294))))

(declare-fun call!15207 () Token!1216)

(assert (=> b!275837 (= (print!347 thiss!17480 (singletonSeq!282 call!15207)) (printTailRec!310 thiss!17480 (singletonSeq!282 call!15207) 0 (BalanceConc!2597 Empty!1294)))))

(declare-fun lt!114491 () Unit!5039)

(declare-fun Unit!5044 () Unit!5039)

(assert (=> b!275837 (= lt!114491 Unit!5044)))

(declare-fun call!15211 () BalanceConc!2596)

(declare-fun lt!114494 () Unit!5039)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!117 (LexerInterface!622 List!3865 List!3864 List!3864) Unit!5039)

(assert (=> b!275837 (= lt!114494 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!117 thiss!17480 rules!1920 (list!1588 call!15211) (list!1588 lt!114496)))))

(assert (=> b!275837 false))

(declare-fun lt!114487 () Unit!5039)

(declare-fun Unit!5045 () Unit!5039)

(assert (=> b!275837 (= lt!114487 Unit!5045)))

(declare-fun b!275838 () Bool)

(declare-fun e!171469 () Bool)

(declare-fun lt!114490 () Option!826)

(declare-fun apply!791 (BalanceConc!2598 Int) Token!1216)

(assert (=> b!275838 (= e!171469 (= (_1!2389 (v!14714 lt!114490)) (apply!791 lt!114358 0)))))

(declare-fun b!275839 () Bool)

(declare-fun e!171472 () BalanceConc!2596)

(assert (=> b!275839 (= e!171472 call!15209)))

(declare-fun b!275840 () Bool)

(declare-fun e!171473 () BalanceConc!2596)

(assert (=> b!275840 (= e!171473 (BalanceConc!2597 Empty!1294))))

(declare-fun b!275841 () Bool)

(declare-fun e!171471 () Bool)

(declare-fun size!3083 (BalanceConc!2598) Int)

(assert (=> b!275841 (= e!171471 (<= 0 (size!3083 lt!114358)))))

(declare-fun bm!15202 () Bool)

(declare-fun call!15208 () Token!1216)

(assert (=> bm!15202 (= call!15207 call!15208)))

(declare-fun bm!15203 () Bool)

(declare-fun call!15210 () BalanceConc!2596)

(declare-fun c!52207 () Bool)

(assert (=> bm!15203 (= call!15210 (charsOf!381 (ite c!52207 call!15208 call!15207)))))

(declare-fun lt!114492 () BalanceConc!2596)

(declare-fun dropList!169 (BalanceConc!2598 Int) List!3866)

(assert (=> d!80750 (= (list!1588 lt!114492) (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 (dropList!169 lt!114358 0) separatorToken!170))))

(assert (=> d!80750 (= lt!114492 e!171473)))

(declare-fun c!52205 () Bool)

(assert (=> d!80750 (= c!52205 (>= 0 (size!3083 lt!114358)))))

(declare-fun lt!114497 () Unit!5039)

(declare-fun lemmaContentSubsetPreservesForall!113 (List!3866 List!3866 Int) Unit!5039)

(assert (=> d!80750 (= lt!114497 (lemmaContentSubsetPreservesForall!113 (list!1590 lt!114358) (dropList!169 lt!114358 0) lambda!9382))))

(assert (=> d!80750 e!171471))

(declare-fun res!125940 () Bool)

(assert (=> d!80750 (=> (not res!125940) (not e!171471))))

(assert (=> d!80750 (= res!125940 (>= 0 0))))

(assert (=> d!80750 (= (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 lt!114358 separatorToken!170 0) lt!114492)))

(declare-fun b!275842 () Bool)

(declare-fun c!52206 () Bool)

(declare-fun e!171468 () Bool)

(assert (=> b!275842 (= c!52206 e!171468)))

(declare-fun res!125939 () Bool)

(assert (=> b!275842 (=> (not res!125939) (not e!171468))))

(assert (=> b!275842 (= res!125939 (is-Some!825 lt!114490))))

(assert (=> b!275842 (= e!171472 e!171470)))

(declare-fun b!275843 () Bool)

(assert (=> b!275843 (= e!171468 (not (= (_1!2389 (v!14714 lt!114490)) call!15208)))))

(declare-fun bm!15204 () Bool)

(assert (=> bm!15204 (= call!15208 (apply!791 lt!114358 0))))

(assert (=> b!275844 (= e!171473 e!171472)))

(declare-fun lt!114493 () List!3866)

(assert (=> b!275844 (= lt!114493 (list!1590 lt!114358))))

(declare-fun lt!114486 () Unit!5039)

(declare-fun lemmaDropApply!209 (List!3866 Int) Unit!5039)

(assert (=> b!275844 (= lt!114486 (lemmaDropApply!209 lt!114493 0))))

(declare-fun drop!222 (List!3866 Int) List!3866)

(declare-fun apply!792 (List!3866 Int) Token!1216)

(assert (=> b!275844 (= (head!899 (drop!222 lt!114493 0)) (apply!792 lt!114493 0))))

(declare-fun lt!114489 () Unit!5039)

(assert (=> b!275844 (= lt!114489 lt!114486)))

(declare-fun lt!114484 () List!3866)

(assert (=> b!275844 (= lt!114484 (list!1590 lt!114358))))

(declare-fun lt!114495 () Unit!5039)

(declare-fun lemmaDropTail!201 (List!3866 Int) Unit!5039)

(assert (=> b!275844 (= lt!114495 (lemmaDropTail!201 lt!114484 0))))

(declare-fun tail!489 (List!3866) List!3866)

(assert (=> b!275844 (= (tail!489 (drop!222 lt!114484 0)) (drop!222 lt!114484 (+ 0 1)))))

(declare-fun lt!114488 () Unit!5039)

(assert (=> b!275844 (= lt!114488 lt!114495)))

(declare-fun lt!114485 () Unit!5039)

(assert (=> b!275844 (= lt!114485 (forallContained!291 (list!1590 lt!114358) lambda!9383 (apply!791 lt!114358 0)))))

(assert (=> b!275844 (= lt!114496 (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 lt!114358 separatorToken!170 (+ 0 1)))))

(assert (=> b!275844 (= lt!114490 (maxPrefixZipperSequence!303 thiss!17480 rules!1920 (++!1019 (charsOf!381 (apply!791 lt!114358 0)) lt!114496)))))

(declare-fun res!125941 () Bool)

(assert (=> b!275844 (= res!125941 (is-Some!825 lt!114490))))

(assert (=> b!275844 (=> (not res!125941) (not e!171469))))

(assert (=> b!275844 (= c!52207 e!171469)))

(declare-fun bm!15205 () Bool)

(assert (=> bm!15205 (= call!15211 (charsOf!381 (ite c!52206 separatorToken!170 call!15207)))))

(declare-fun bm!15206 () Bool)

(assert (=> bm!15206 (= call!15209 (++!1019 call!15210 (ite c!52207 lt!114496 call!15211)))))

(assert (= (and d!80750 res!125940) b!275841))

(assert (= (and d!80750 c!52205) b!275840))

(assert (= (and d!80750 (not c!52205)) b!275844))

(assert (= (and b!275844 res!125941) b!275838))

(assert (= (and b!275844 c!52207) b!275839))

(assert (= (and b!275844 (not c!52207)) b!275842))

(assert (= (and b!275842 res!125939) b!275843))

(assert (= (and b!275842 c!52206) b!275836))

(assert (= (and b!275842 (not c!52206)) b!275837))

(assert (= (or b!275836 b!275837) bm!15202))

(assert (= (or b!275836 b!275837) bm!15205))

(assert (= (or b!275839 bm!15202 b!275843) bm!15204))

(assert (= (or b!275839 b!275836) bm!15203))

(assert (= (or b!275839 b!275836) bm!15206))

(declare-fun m!351977 () Bool)

(assert (=> b!275836 m!351977))

(declare-fun m!351979 () Bool)

(assert (=> bm!15206 m!351979))

(declare-fun m!351981 () Bool)

(assert (=> bm!15204 m!351981))

(declare-fun m!351983 () Bool)

(assert (=> b!275837 m!351983))

(declare-fun m!351985 () Bool)

(assert (=> b!275837 m!351985))

(declare-fun m!351987 () Bool)

(assert (=> b!275837 m!351987))

(declare-fun m!351989 () Bool)

(assert (=> b!275837 m!351989))

(assert (=> b!275837 m!351983))

(assert (=> b!275837 m!351989))

(declare-fun m!351991 () Bool)

(assert (=> b!275837 m!351991))

(assert (=> b!275837 m!351985))

(assert (=> b!275837 m!351985))

(declare-fun m!351993 () Bool)

(assert (=> b!275837 m!351993))

(assert (=> b!275838 m!351981))

(declare-fun m!351995 () Bool)

(assert (=> bm!15205 m!351995))

(declare-fun m!351997 () Bool)

(assert (=> d!80750 m!351997))

(assert (=> d!80750 m!351943))

(declare-fun m!351999 () Bool)

(assert (=> d!80750 m!351999))

(declare-fun m!352001 () Bool)

(assert (=> d!80750 m!352001))

(declare-fun m!352003 () Bool)

(assert (=> d!80750 m!352003))

(assert (=> d!80750 m!351943))

(assert (=> d!80750 m!351999))

(assert (=> d!80750 m!351999))

(declare-fun m!352005 () Bool)

(assert (=> d!80750 m!352005))

(assert (=> b!275841 m!352003))

(declare-fun m!352007 () Bool)

(assert (=> b!275844 m!352007))

(declare-fun m!352009 () Bool)

(assert (=> b!275844 m!352009))

(declare-fun m!352011 () Bool)

(assert (=> b!275844 m!352011))

(declare-fun m!352013 () Bool)

(assert (=> b!275844 m!352013))

(declare-fun m!352015 () Bool)

(assert (=> b!275844 m!352015))

(assert (=> b!275844 m!351943))

(assert (=> b!275844 m!351981))

(declare-fun m!352017 () Bool)

(assert (=> b!275844 m!352017))

(assert (=> b!275844 m!352007))

(assert (=> b!275844 m!352015))

(declare-fun m!352019 () Bool)

(assert (=> b!275844 m!352019))

(declare-fun m!352021 () Bool)

(assert (=> b!275844 m!352021))

(declare-fun m!352023 () Bool)

(assert (=> b!275844 m!352023))

(assert (=> b!275844 m!351981))

(assert (=> b!275844 m!351981))

(assert (=> b!275844 m!352013))

(declare-fun m!352025 () Bool)

(assert (=> b!275844 m!352025))

(declare-fun m!352027 () Bool)

(assert (=> b!275844 m!352027))

(assert (=> b!275844 m!352023))

(declare-fun m!352029 () Bool)

(assert (=> b!275844 m!352029))

(assert (=> b!275844 m!351943))

(declare-fun m!352031 () Bool)

(assert (=> b!275844 m!352031))

(declare-fun m!352033 () Bool)

(assert (=> bm!15203 m!352033))

(assert (=> b!275621 d!80750))

(declare-fun bs!30959 () Bool)

(declare-fun b!275934 () Bool)

(assert (= bs!30959 (and b!275934 b!275844)))

(declare-fun lambda!9389 () Int)

(assert (=> bs!30959 (= lambda!9389 lambda!9383)))

(declare-fun bs!30960 () Bool)

(assert (= bs!30960 (and b!275934 d!80750)))

(assert (=> bs!30960 (not (= lambda!9389 lambda!9382))))

(declare-fun bs!30961 () Bool)

(assert (= bs!30961 (and b!275934 d!80742)))

(assert (=> bs!30961 (= lambda!9389 lambda!9377)))

(declare-fun bs!30962 () Bool)

(assert (= bs!30962 (and b!275934 b!275610)))

(assert (=> bs!30962 (= lambda!9389 lambda!9366)))

(declare-fun bs!30963 () Bool)

(assert (= bs!30963 (and b!275934 b!275633)))

(assert (=> bs!30963 (not (= lambda!9389 lambda!9365))))

(declare-fun b!275937 () Bool)

(declare-fun e!171525 () Bool)

(assert (=> b!275937 (= e!171525 true)))

(declare-fun b!275936 () Bool)

(declare-fun e!171524 () Bool)

(assert (=> b!275936 (= e!171524 e!171525)))

(declare-fun b!275935 () Bool)

(declare-fun e!171523 () Bool)

(assert (=> b!275935 (= e!171523 e!171524)))

(assert (=> b!275934 e!171523))

(assert (= b!275936 b!275937))

(assert (= b!275935 b!275936))

(assert (= (and b!275934 (is-Cons!3855 rules!1920)) b!275935))

(assert (=> b!275937 (< (dynLambda!1998 order!2991 (toValue!1479 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9389))))

(assert (=> b!275937 (< (dynLambda!2000 order!2995 (toChars!1338 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9389))))

(assert (=> b!275934 true))

(declare-fun b!275925 () Bool)

(declare-fun c!52239 () Bool)

(declare-fun lt!114543 () Option!827)

(assert (=> b!275925 (= c!52239 (and (is-Some!826 lt!114543) (not (= (_1!2388 (v!14715 lt!114543)) (h!9253 tokens!465)))))))

(declare-fun e!171521 () List!3864)

(declare-fun e!171522 () List!3864)

(assert (=> b!275925 (= e!171521 e!171522)))

(declare-fun bm!15232 () Bool)

(declare-fun call!15238 () BalanceConc!2596)

(assert (=> bm!15232 (= call!15238 (charsOf!381 (h!9253 tokens!465)))))

(declare-fun bm!15233 () Bool)

(declare-fun c!52236 () Bool)

(declare-fun c!52237 () Bool)

(assert (=> bm!15233 (= c!52236 c!52237)))

(declare-fun lt!114545 () List!3864)

(declare-fun call!15240 () List!3864)

(declare-fun e!171520 () List!3864)

(declare-fun call!15237 () List!3864)

(assert (=> bm!15233 (= call!15240 (++!1017 e!171520 (ite c!52237 lt!114545 call!15237)))))

(declare-fun b!275926 () Bool)

(assert (=> b!275926 (= e!171522 Nil!3854)))

(assert (=> b!275926 (= (print!347 thiss!17480 (singletonSeq!282 (h!9253 tokens!465))) (printTailRec!310 thiss!17480 (singletonSeq!282 (h!9253 tokens!465)) 0 (BalanceConc!2597 Empty!1294)))))

(declare-fun lt!114542 () Unit!5039)

(declare-fun Unit!5046 () Unit!5039)

(assert (=> b!275926 (= lt!114542 Unit!5046)))

(declare-fun lt!114546 () Unit!5039)

(assert (=> b!275926 (= lt!114546 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!117 thiss!17480 rules!1920 call!15237 lt!114545))))

(assert (=> b!275926 false))

(declare-fun lt!114544 () Unit!5039)

(declare-fun Unit!5047 () Unit!5039)

(assert (=> b!275926 (= lt!114544 Unit!5047)))

(declare-fun b!275927 () Bool)

(declare-fun e!171519 () BalanceConc!2596)

(declare-fun call!15239 () BalanceConc!2596)

(assert (=> b!275927 (= e!171519 call!15239)))

(declare-fun b!275928 () Bool)

(assert (=> b!275928 (= e!171522 (++!1017 call!15240 lt!114545))))

(declare-fun b!275929 () Bool)

(assert (=> b!275929 (= e!171519 (charsOf!381 separatorToken!170))))

(declare-fun bm!15234 () Bool)

(declare-fun call!15241 () List!3864)

(assert (=> bm!15234 (= call!15241 (list!1588 (ite c!52237 call!15238 e!171519)))))

(declare-fun b!275930 () Bool)

(assert (=> b!275930 (= e!171520 (list!1588 call!15239))))

(declare-fun b!275931 () Bool)

(assert (=> b!275931 (= e!171520 call!15241)))

(declare-fun bm!15235 () Bool)

(assert (=> bm!15235 (= call!15239 call!15238)))

(declare-fun bm!15236 () Bool)

(assert (=> bm!15236 (= call!15237 call!15241)))

(declare-fun c!52238 () Bool)

(assert (=> bm!15236 (= c!52238 c!52239)))

(declare-fun d!80764 () Bool)

(declare-fun c!52240 () Bool)

(assert (=> d!80764 (= c!52240 (is-Cons!3856 tokens!465))))

(declare-fun e!171518 () List!3864)

(assert (=> d!80764 (= (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!171518)))

(declare-fun b!275932 () Bool)

(assert (=> b!275932 (= e!171518 Nil!3854)))

(declare-fun b!275933 () Bool)

(assert (=> b!275933 (= e!171521 call!15240)))

(assert (=> b!275934 (= e!171518 e!171521)))

(declare-fun lt!114541 () Unit!5039)

(assert (=> b!275934 (= lt!114541 (forallContained!291 tokens!465 lambda!9389 (h!9253 tokens!465)))))

(assert (=> b!275934 (= lt!114545 (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 (t!39022 tokens!465) separatorToken!170))))

(assert (=> b!275934 (= lt!114543 (maxPrefix!340 thiss!17480 rules!1920 (++!1017 (list!1588 (charsOf!381 (h!9253 tokens!465))) lt!114545)))))

(assert (=> b!275934 (= c!52237 (and (is-Some!826 lt!114543) (= (_1!2388 (v!14715 lt!114543)) (h!9253 tokens!465))))))

(assert (= (and d!80764 c!52240) b!275934))

(assert (= (and d!80764 (not c!52240)) b!275932))

(assert (= (and b!275934 c!52237) b!275933))

(assert (= (and b!275934 (not c!52237)) b!275925))

(assert (= (and b!275925 c!52239) b!275928))

(assert (= (and b!275925 (not c!52239)) b!275926))

(assert (= (or b!275928 b!275926) bm!15235))

(assert (= (or b!275928 b!275926) bm!15236))

(assert (= (and bm!15236 c!52238) b!275929))

(assert (= (and bm!15236 (not c!52238)) b!275927))

(assert (= (or b!275933 bm!15235) bm!15232))

(assert (= (or b!275933 bm!15236) bm!15234))

(assert (= (or b!275933 b!275928) bm!15233))

(assert (= (and bm!15233 c!52236) b!275931))

(assert (= (and bm!15233 (not c!52236)) b!275930))

(assert (=> b!275929 m!351659))

(declare-fun m!352129 () Bool)

(assert (=> b!275934 m!352129))

(declare-fun m!352131 () Bool)

(assert (=> b!275934 m!352131))

(declare-fun m!352133 () Bool)

(assert (=> b!275934 m!352133))

(assert (=> b!275934 m!351663))

(assert (=> b!275934 m!351675))

(assert (=> b!275934 m!351663))

(assert (=> b!275934 m!351675))

(assert (=> b!275934 m!352129))

(assert (=> b!275934 m!351669))

(declare-fun m!352135 () Bool)

(assert (=> b!275930 m!352135))

(assert (=> bm!15232 m!351663))

(declare-fun m!352137 () Bool)

(assert (=> bm!15233 m!352137))

(declare-fun m!352139 () Bool)

(assert (=> b!275928 m!352139))

(declare-fun m!352141 () Bool)

(assert (=> bm!15234 m!352141))

(assert (=> b!275926 m!351765))

(assert (=> b!275926 m!351765))

(declare-fun m!352143 () Bool)

(assert (=> b!275926 m!352143))

(assert (=> b!275926 m!351765))

(declare-fun m!352145 () Bool)

(assert (=> b!275926 m!352145))

(declare-fun m!352147 () Bool)

(assert (=> b!275926 m!352147))

(assert (=> b!275621 d!80764))

(declare-fun b!275956 () Bool)

(declare-fun res!125972 () Bool)

(declare-fun e!171532 () Bool)

(assert (=> b!275956 (=> (not res!125972) (not e!171532))))

(declare-fun lt!114561 () Option!827)

(assert (=> b!275956 (= res!125972 (= (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114561)))) (originalCharacters!779 (_1!2388 (get!1285 lt!114561)))))))

(declare-fun b!275957 () Bool)

(declare-fun res!125973 () Bool)

(assert (=> b!275957 (=> (not res!125973) (not e!171532))))

(assert (=> b!275957 (= res!125973 (= (++!1017 (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114561)))) (_2!2388 (get!1285 lt!114561))) lt!114374))))

(declare-fun b!275958 () Bool)

(declare-fun e!171533 () Option!827)

(declare-fun lt!114559 () Option!827)

(declare-fun lt!114558 () Option!827)

(assert (=> b!275958 (= e!171533 (ite (and (is-None!826 lt!114559) (is-None!826 lt!114558)) None!826 (ite (is-None!826 lt!114558) lt!114559 (ite (is-None!826 lt!114559) lt!114558 (ite (>= (size!3080 (_1!2388 (v!14715 lt!114559))) (size!3080 (_1!2388 (v!14715 lt!114558)))) lt!114559 lt!114558)))))))

(declare-fun call!15244 () Option!827)

(assert (=> b!275958 (= lt!114559 call!15244)))

(assert (=> b!275958 (= lt!114558 (maxPrefix!340 thiss!17480 (t!39021 rules!1920) lt!114374))))

(declare-fun b!275959 () Bool)

(declare-fun res!125971 () Bool)

(assert (=> b!275959 (=> (not res!125971) (not e!171532))))

(assert (=> b!275959 (= res!125971 (< (size!3082 (_2!2388 (get!1285 lt!114561))) (size!3082 lt!114374)))))

(declare-fun b!275960 () Bool)

(declare-fun contains!736 (List!3865 Rule!1272) Bool)

(assert (=> b!275960 (= e!171532 (contains!736 rules!1920 (rule!1323 (_1!2388 (get!1285 lt!114561)))))))

(declare-fun b!275961 () Bool)

(assert (=> b!275961 (= e!171533 call!15244)))

(declare-fun b!275962 () Bool)

(declare-fun res!125968 () Bool)

(assert (=> b!275962 (=> (not res!125968) (not e!171532))))

(assert (=> b!275962 (= res!125968 (matchR!282 (regex!736 (rule!1323 (_1!2388 (get!1285 lt!114561)))) (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114561))))))))

(declare-fun b!275963 () Bool)

(declare-fun e!171534 () Bool)

(assert (=> b!275963 (= e!171534 e!171532)))

(declare-fun res!125970 () Bool)

(assert (=> b!275963 (=> (not res!125970) (not e!171532))))

(assert (=> b!275963 (= res!125970 (isDefined!670 lt!114561))))

(declare-fun b!275964 () Bool)

(declare-fun res!125974 () Bool)

(assert (=> b!275964 (=> (not res!125974) (not e!171532))))

(declare-fun apply!793 (TokenValueInjection!1288 BalanceConc!2596) TokenValue!758)

(assert (=> b!275964 (= res!125974 (= (value!25293 (_1!2388 (get!1285 lt!114561))) (apply!793 (transformation!736 (rule!1323 (_1!2388 (get!1285 lt!114561)))) (seqFromList!839 (originalCharacters!779 (_1!2388 (get!1285 lt!114561)))))))))

(declare-fun d!80784 () Bool)

(assert (=> d!80784 e!171534))

(declare-fun res!125969 () Bool)

(assert (=> d!80784 (=> res!125969 e!171534)))

(declare-fun isEmpty!2485 (Option!827) Bool)

(assert (=> d!80784 (= res!125969 (isEmpty!2485 lt!114561))))

(assert (=> d!80784 (= lt!114561 e!171533)))

(declare-fun c!52243 () Bool)

(assert (=> d!80784 (= c!52243 (and (is-Cons!3855 rules!1920) (is-Nil!3855 (t!39021 rules!1920))))))

(declare-fun lt!114557 () Unit!5039)

(declare-fun lt!114560 () Unit!5039)

(assert (=> d!80784 (= lt!114557 lt!114560)))

(assert (=> d!80784 (isPrefix!404 lt!114374 lt!114374)))

(declare-fun lemmaIsPrefixRefl!214 (List!3864 List!3864) Unit!5039)

(assert (=> d!80784 (= lt!114560 (lemmaIsPrefixRefl!214 lt!114374 lt!114374))))

(declare-fun rulesValidInductive!209 (LexerInterface!622 List!3865) Bool)

(assert (=> d!80784 (rulesValidInductive!209 thiss!17480 rules!1920)))

(assert (=> d!80784 (= (maxPrefix!340 thiss!17480 rules!1920 lt!114374) lt!114561)))

(declare-fun bm!15239 () Bool)

(declare-fun maxPrefixOneRule!148 (LexerInterface!622 Rule!1272 List!3864) Option!827)

(assert (=> bm!15239 (= call!15244 (maxPrefixOneRule!148 thiss!17480 (h!9252 rules!1920) lt!114374))))

(assert (= (and d!80784 c!52243) b!275961))

(assert (= (and d!80784 (not c!52243)) b!275958))

(assert (= (or b!275961 b!275958) bm!15239))

(assert (= (and d!80784 (not res!125969)) b!275963))

(assert (= (and b!275963 res!125970) b!275956))

(assert (= (and b!275956 res!125972) b!275959))

(assert (= (and b!275959 res!125971) b!275957))

(assert (= (and b!275957 res!125973) b!275964))

(assert (= (and b!275964 res!125974) b!275962))

(assert (= (and b!275962 res!125968) b!275960))

(declare-fun m!352149 () Bool)

(assert (=> b!275962 m!352149))

(declare-fun m!352151 () Bool)

(assert (=> b!275962 m!352151))

(assert (=> b!275962 m!352151))

(declare-fun m!352153 () Bool)

(assert (=> b!275962 m!352153))

(assert (=> b!275962 m!352153))

(declare-fun m!352155 () Bool)

(assert (=> b!275962 m!352155))

(declare-fun m!352157 () Bool)

(assert (=> b!275958 m!352157))

(assert (=> b!275960 m!352149))

(declare-fun m!352159 () Bool)

(assert (=> b!275960 m!352159))

(declare-fun m!352161 () Bool)

(assert (=> d!80784 m!352161))

(declare-fun m!352163 () Bool)

(assert (=> d!80784 m!352163))

(declare-fun m!352165 () Bool)

(assert (=> d!80784 m!352165))

(declare-fun m!352167 () Bool)

(assert (=> d!80784 m!352167))

(assert (=> b!275957 m!352149))

(assert (=> b!275957 m!352151))

(assert (=> b!275957 m!352151))

(assert (=> b!275957 m!352153))

(assert (=> b!275957 m!352153))

(declare-fun m!352169 () Bool)

(assert (=> b!275957 m!352169))

(assert (=> b!275959 m!352149))

(declare-fun m!352171 () Bool)

(assert (=> b!275959 m!352171))

(declare-fun m!352173 () Bool)

(assert (=> b!275959 m!352173))

(assert (=> b!275956 m!352149))

(assert (=> b!275956 m!352151))

(assert (=> b!275956 m!352151))

(assert (=> b!275956 m!352153))

(assert (=> b!275964 m!352149))

(declare-fun m!352175 () Bool)

(assert (=> b!275964 m!352175))

(assert (=> b!275964 m!352175))

(declare-fun m!352177 () Bool)

(assert (=> b!275964 m!352177))

(declare-fun m!352179 () Bool)

(assert (=> bm!15239 m!352179))

(declare-fun m!352181 () Bool)

(assert (=> b!275963 m!352181))

(assert (=> b!275618 d!80784))

(declare-fun d!80786 () Bool)

(assert (=> d!80786 (= (isEmpty!2478 (t!39022 tokens!465)) (is-Nil!3856 (t!39022 tokens!465)))))

(assert (=> b!275618 d!80786))

(declare-fun d!80788 () Bool)

(assert (=> d!80788 (isPrefix!404 lt!114364 (++!1017 lt!114364 lt!114360))))

(declare-fun lt!114564 () Unit!5039)

(declare-fun choose!2492 (List!3864 List!3864) Unit!5039)

(assert (=> d!80788 (= lt!114564 (choose!2492 lt!114364 lt!114360))))

(assert (=> d!80788 (= (lemmaConcatTwoListThenFirstIsPrefix!299 lt!114364 lt!114360) lt!114564)))

(declare-fun bs!30964 () Bool)

(assert (= bs!30964 d!80788))

(assert (=> bs!30964 m!351657))

(assert (=> bs!30964 m!351657))

(declare-fun m!352183 () Bool)

(assert (=> bs!30964 m!352183))

(declare-fun m!352185 () Bool)

(assert (=> bs!30964 m!352185))

(assert (=> b!275618 d!80788))

(declare-fun d!80790 () Bool)

(assert (=> d!80790 (= lt!114360 (_2!2388 lt!114365))))

(declare-fun lt!114567 () Unit!5039)

(declare-fun choose!2493 (List!3864 List!3864 List!3864 List!3864 List!3864) Unit!5039)

(assert (=> d!80790 (= lt!114567 (choose!2493 lt!114364 lt!114360 lt!114364 (_2!2388 lt!114365) lt!114374))))

(assert (=> d!80790 (isPrefix!404 lt!114364 lt!114374)))

(assert (=> d!80790 (= (lemmaSamePrefixThenSameSuffix!205 lt!114364 lt!114360 lt!114364 (_2!2388 lt!114365) lt!114374) lt!114567)))

(declare-fun bs!30965 () Bool)

(assert (= bs!30965 d!80790))

(declare-fun m!352187 () Bool)

(assert (=> bs!30965 m!352187))

(declare-fun m!352189 () Bool)

(assert (=> bs!30965 m!352189))

(assert (=> b!275618 d!80790))

(declare-fun d!80792 () Bool)

(assert (=> d!80792 (= (isEmpty!2478 tokens!465) (is-Nil!3856 tokens!465))))

(assert (=> b!275618 d!80792))

(declare-fun d!80794 () Bool)

(assert (=> d!80794 (= (get!1285 (maxPrefix!340 thiss!17480 rules!1920 lt!114374)) (v!14715 (maxPrefix!340 thiss!17480 rules!1920 lt!114374)))))

(assert (=> b!275618 d!80794))

(declare-fun b!275973 () Bool)

(declare-fun e!171543 () Bool)

(declare-fun e!171542 () Bool)

(assert (=> b!275973 (= e!171543 e!171542)))

(declare-fun res!125984 () Bool)

(assert (=> b!275973 (=> (not res!125984) (not e!171542))))

(assert (=> b!275973 (= res!125984 (not (is-Nil!3854 lt!114371)))))

(declare-fun b!275974 () Bool)

(declare-fun res!125985 () Bool)

(assert (=> b!275974 (=> (not res!125985) (not e!171542))))

(declare-fun head!901 (List!3864) C!2842)

(assert (=> b!275974 (= res!125985 (= (head!901 lt!114364) (head!901 lt!114371)))))

(declare-fun b!275976 () Bool)

(declare-fun e!171541 () Bool)

(assert (=> b!275976 (= e!171541 (>= (size!3082 lt!114371) (size!3082 lt!114364)))))

(declare-fun b!275975 () Bool)

(declare-fun tail!490 (List!3864) List!3864)

(assert (=> b!275975 (= e!171542 (isPrefix!404 (tail!490 lt!114364) (tail!490 lt!114371)))))

(declare-fun d!80796 () Bool)

(assert (=> d!80796 e!171541))

(declare-fun res!125986 () Bool)

(assert (=> d!80796 (=> res!125986 e!171541)))

(declare-fun lt!114570 () Bool)

(assert (=> d!80796 (= res!125986 (not lt!114570))))

(assert (=> d!80796 (= lt!114570 e!171543)))

(declare-fun res!125983 () Bool)

(assert (=> d!80796 (=> res!125983 e!171543)))

(assert (=> d!80796 (= res!125983 (is-Nil!3854 lt!114364))))

(assert (=> d!80796 (= (isPrefix!404 lt!114364 lt!114371) lt!114570)))

(assert (= (and d!80796 (not res!125983)) b!275973))

(assert (= (and b!275973 res!125984) b!275974))

(assert (= (and b!275974 res!125985) b!275975))

(assert (= (and d!80796 (not res!125986)) b!275976))

(declare-fun m!352191 () Bool)

(assert (=> b!275974 m!352191))

(declare-fun m!352193 () Bool)

(assert (=> b!275974 m!352193))

(declare-fun m!352195 () Bool)

(assert (=> b!275976 m!352195))

(declare-fun m!352197 () Bool)

(assert (=> b!275976 m!352197))

(declare-fun m!352199 () Bool)

(assert (=> b!275975 m!352199))

(declare-fun m!352201 () Bool)

(assert (=> b!275975 m!352201))

(assert (=> b!275975 m!352199))

(assert (=> b!275975 m!352201))

(declare-fun m!352203 () Bool)

(assert (=> b!275975 m!352203))

(assert (=> b!275618 d!80796))

(declare-fun b!275977 () Bool)

(declare-fun res!125991 () Bool)

(declare-fun e!171544 () Bool)

(assert (=> b!275977 (=> (not res!125991) (not e!171544))))

(declare-fun lt!114575 () Option!827)

(assert (=> b!275977 (= res!125991 (= (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114575)))) (originalCharacters!779 (_1!2388 (get!1285 lt!114575)))))))

(declare-fun b!275978 () Bool)

(declare-fun res!125992 () Bool)

(assert (=> b!275978 (=> (not res!125992) (not e!171544))))

(assert (=> b!275978 (= res!125992 (= (++!1017 (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114575)))) (_2!2388 (get!1285 lt!114575))) lt!114360))))

(declare-fun b!275979 () Bool)

(declare-fun e!171545 () Option!827)

(declare-fun lt!114573 () Option!827)

(declare-fun lt!114572 () Option!827)

(assert (=> b!275979 (= e!171545 (ite (and (is-None!826 lt!114573) (is-None!826 lt!114572)) None!826 (ite (is-None!826 lt!114572) lt!114573 (ite (is-None!826 lt!114573) lt!114572 (ite (>= (size!3080 (_1!2388 (v!14715 lt!114573))) (size!3080 (_1!2388 (v!14715 lt!114572)))) lt!114573 lt!114572)))))))

(declare-fun call!15245 () Option!827)

(assert (=> b!275979 (= lt!114573 call!15245)))

(assert (=> b!275979 (= lt!114572 (maxPrefix!340 thiss!17480 (t!39021 rules!1920) lt!114360))))

(declare-fun b!275980 () Bool)

(declare-fun res!125990 () Bool)

(assert (=> b!275980 (=> (not res!125990) (not e!171544))))

(assert (=> b!275980 (= res!125990 (< (size!3082 (_2!2388 (get!1285 lt!114575))) (size!3082 lt!114360)))))

(declare-fun b!275981 () Bool)

(assert (=> b!275981 (= e!171544 (contains!736 rules!1920 (rule!1323 (_1!2388 (get!1285 lt!114575)))))))

(declare-fun b!275982 () Bool)

(assert (=> b!275982 (= e!171545 call!15245)))

(declare-fun b!275983 () Bool)

(declare-fun res!125987 () Bool)

(assert (=> b!275983 (=> (not res!125987) (not e!171544))))

(assert (=> b!275983 (= res!125987 (matchR!282 (regex!736 (rule!1323 (_1!2388 (get!1285 lt!114575)))) (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114575))))))))

(declare-fun b!275984 () Bool)

(declare-fun e!171546 () Bool)

(assert (=> b!275984 (= e!171546 e!171544)))

(declare-fun res!125989 () Bool)

(assert (=> b!275984 (=> (not res!125989) (not e!171544))))

(assert (=> b!275984 (= res!125989 (isDefined!670 lt!114575))))

(declare-fun b!275985 () Bool)

(declare-fun res!125993 () Bool)

(assert (=> b!275985 (=> (not res!125993) (not e!171544))))

(assert (=> b!275985 (= res!125993 (= (value!25293 (_1!2388 (get!1285 lt!114575))) (apply!793 (transformation!736 (rule!1323 (_1!2388 (get!1285 lt!114575)))) (seqFromList!839 (originalCharacters!779 (_1!2388 (get!1285 lt!114575)))))))))

(declare-fun d!80798 () Bool)

(assert (=> d!80798 e!171546))

(declare-fun res!125988 () Bool)

(assert (=> d!80798 (=> res!125988 e!171546)))

(assert (=> d!80798 (= res!125988 (isEmpty!2485 lt!114575))))

(assert (=> d!80798 (= lt!114575 e!171545)))

(declare-fun c!52244 () Bool)

(assert (=> d!80798 (= c!52244 (and (is-Cons!3855 rules!1920) (is-Nil!3855 (t!39021 rules!1920))))))

(declare-fun lt!114571 () Unit!5039)

(declare-fun lt!114574 () Unit!5039)

(assert (=> d!80798 (= lt!114571 lt!114574)))

(assert (=> d!80798 (isPrefix!404 lt!114360 lt!114360)))

(assert (=> d!80798 (= lt!114574 (lemmaIsPrefixRefl!214 lt!114360 lt!114360))))

(assert (=> d!80798 (rulesValidInductive!209 thiss!17480 rules!1920)))

(assert (=> d!80798 (= (maxPrefix!340 thiss!17480 rules!1920 lt!114360) lt!114575)))

(declare-fun bm!15240 () Bool)

(assert (=> bm!15240 (= call!15245 (maxPrefixOneRule!148 thiss!17480 (h!9252 rules!1920) lt!114360))))

(assert (= (and d!80798 c!52244) b!275982))

(assert (= (and d!80798 (not c!52244)) b!275979))

(assert (= (or b!275982 b!275979) bm!15240))

(assert (= (and d!80798 (not res!125988)) b!275984))

(assert (= (and b!275984 res!125989) b!275977))

(assert (= (and b!275977 res!125991) b!275980))

(assert (= (and b!275980 res!125990) b!275978))

(assert (= (and b!275978 res!125992) b!275985))

(assert (= (and b!275985 res!125993) b!275983))

(assert (= (and b!275983 res!125987) b!275981))

(declare-fun m!352205 () Bool)

(assert (=> b!275983 m!352205))

(declare-fun m!352207 () Bool)

(assert (=> b!275983 m!352207))

(assert (=> b!275983 m!352207))

(declare-fun m!352209 () Bool)

(assert (=> b!275983 m!352209))

(assert (=> b!275983 m!352209))

(declare-fun m!352211 () Bool)

(assert (=> b!275983 m!352211))

(declare-fun m!352213 () Bool)

(assert (=> b!275979 m!352213))

(assert (=> b!275981 m!352205))

(declare-fun m!352215 () Bool)

(assert (=> b!275981 m!352215))

(declare-fun m!352217 () Bool)

(assert (=> d!80798 m!352217))

(declare-fun m!352219 () Bool)

(assert (=> d!80798 m!352219))

(declare-fun m!352221 () Bool)

(assert (=> d!80798 m!352221))

(assert (=> d!80798 m!352167))

(assert (=> b!275978 m!352205))

(assert (=> b!275978 m!352207))

(assert (=> b!275978 m!352207))

(assert (=> b!275978 m!352209))

(assert (=> b!275978 m!352209))

(declare-fun m!352223 () Bool)

(assert (=> b!275978 m!352223))

(assert (=> b!275980 m!352205))

(declare-fun m!352225 () Bool)

(assert (=> b!275980 m!352225))

(declare-fun m!352227 () Bool)

(assert (=> b!275980 m!352227))

(assert (=> b!275977 m!352205))

(assert (=> b!275977 m!352207))

(assert (=> b!275977 m!352207))

(assert (=> b!275977 m!352209))

(assert (=> b!275985 m!352205))

(declare-fun m!352229 () Bool)

(assert (=> b!275985 m!352229))

(assert (=> b!275985 m!352229))

(declare-fun m!352231 () Bool)

(assert (=> b!275985 m!352231))

(declare-fun m!352233 () Bool)

(assert (=> bm!15240 m!352233))

(declare-fun m!352235 () Bool)

(assert (=> b!275984 m!352235))

(assert (=> b!275618 d!80798))

(declare-fun d!80800 () Bool)

(declare-fun e!171577 () Bool)

(assert (=> d!80800 e!171577))

(declare-fun res!126009 () Bool)

(assert (=> d!80800 (=> res!126009 e!171577)))

(assert (=> d!80800 (= res!126009 (isEmpty!2478 tokens!465))))

(declare-fun lt!114620 () Unit!5039)

(declare-fun choose!2494 (LexerInterface!622 List!3865 List!3866 Token!1216) Unit!5039)

(assert (=> d!80800 (= lt!114620 (choose!2494 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!80800 (not (isEmpty!2479 rules!1920))))

(assert (=> d!80800 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!161 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!114620)))

(declare-fun b!276027 () Bool)

(declare-fun e!171576 () Bool)

(assert (=> b!276027 (= e!171577 e!171576)))

(declare-fun res!126008 () Bool)

(assert (=> b!276027 (=> (not res!126008) (not e!171576))))

(assert (=> b!276027 (= res!126008 (isDefined!670 (maxPrefix!340 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!276028 () Bool)

(assert (=> b!276028 (= e!171576 (= (_1!2388 (get!1285 (maxPrefix!340 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!899 tokens!465)))))

(assert (= (and d!80800 (not res!126009)) b!276027))

(assert (= (and b!276027 res!126008) b!276028))

(assert (=> d!80800 m!351735))

(declare-fun m!352303 () Bool)

(assert (=> d!80800 m!352303))

(assert (=> d!80800 m!351727))

(assert (=> b!276027 m!351723))

(assert (=> b!276027 m!351723))

(declare-fun m!352305 () Bool)

(assert (=> b!276027 m!352305))

(assert (=> b!276027 m!352305))

(declare-fun m!352307 () Bool)

(assert (=> b!276027 m!352307))

(assert (=> b!276028 m!351723))

(assert (=> b!276028 m!351723))

(assert (=> b!276028 m!352305))

(assert (=> b!276028 m!352305))

(declare-fun m!352309 () Bool)

(assert (=> b!276028 m!352309))

(assert (=> b!276028 m!351777))

(assert (=> b!275618 d!80800))

(declare-fun b!276075 () Bool)

(declare-fun e!171602 () Bool)

(declare-fun lt!114633 () Bool)

(declare-fun call!15265 () Bool)

(assert (=> b!276075 (= e!171602 (= lt!114633 call!15265))))

(declare-fun b!276076 () Bool)

(declare-fun res!126044 () Bool)

(declare-fun e!171599 () Bool)

(assert (=> b!276076 (=> res!126044 e!171599)))

(assert (=> b!276076 (= res!126044 (not (is-ElementMatch!960 (regex!736 (rule!1323 (h!9253 tokens!465))))))))

(declare-fun e!171600 () Bool)

(assert (=> b!276076 (= e!171600 e!171599)))

(declare-fun b!276077 () Bool)

(declare-fun e!171598 () Bool)

(assert (=> b!276077 (= e!171598 (= (head!901 lt!114364) (c!52185 (regex!736 (rule!1323 (h!9253 tokens!465))))))))

(declare-fun b!276078 () Bool)

(declare-fun e!171603 () Bool)

(declare-fun e!171601 () Bool)

(assert (=> b!276078 (= e!171603 e!171601)))

(declare-fun res!126041 () Bool)

(assert (=> b!276078 (=> res!126041 e!171601)))

(assert (=> b!276078 (= res!126041 call!15265)))

(declare-fun b!276079 () Bool)

(assert (=> b!276079 (= e!171600 (not lt!114633))))

(declare-fun bm!15260 () Bool)

(assert (=> bm!15260 (= call!15265 (isEmpty!2477 lt!114364))))

(declare-fun b!276080 () Bool)

(declare-fun res!126046 () Bool)

(assert (=> b!276080 (=> res!126046 e!171599)))

(assert (=> b!276080 (= res!126046 e!171598)))

(declare-fun res!126042 () Bool)

(assert (=> b!276080 (=> (not res!126042) (not e!171598))))

(assert (=> b!276080 (= res!126042 lt!114633)))

(declare-fun b!276081 () Bool)

(assert (=> b!276081 (= e!171601 (not (= (head!901 lt!114364) (c!52185 (regex!736 (rule!1323 (h!9253 tokens!465)))))))))

(declare-fun b!276082 () Bool)

(declare-fun e!171604 () Bool)

(declare-fun nullable!171 (Regex!960) Bool)

(assert (=> b!276082 (= e!171604 (nullable!171 (regex!736 (rule!1323 (h!9253 tokens!465)))))))

(declare-fun d!80812 () Bool)

(assert (=> d!80812 e!171602))

(declare-fun c!52266 () Bool)

(assert (=> d!80812 (= c!52266 (is-EmptyExpr!960 (regex!736 (rule!1323 (h!9253 tokens!465)))))))

(assert (=> d!80812 (= lt!114633 e!171604)))

(declare-fun c!52265 () Bool)

(assert (=> d!80812 (= c!52265 (isEmpty!2477 lt!114364))))

(declare-fun validRegex!246 (Regex!960) Bool)

(assert (=> d!80812 (validRegex!246 (regex!736 (rule!1323 (h!9253 tokens!465))))))

(assert (=> d!80812 (= (matchR!282 (regex!736 (rule!1323 (h!9253 tokens!465))) lt!114364) lt!114633)))

(declare-fun b!276083 () Bool)

(declare-fun res!126047 () Bool)

(assert (=> b!276083 (=> res!126047 e!171601)))

(assert (=> b!276083 (= res!126047 (not (isEmpty!2477 (tail!490 lt!114364))))))

(declare-fun b!276084 () Bool)

(declare-fun res!126043 () Bool)

(assert (=> b!276084 (=> (not res!126043) (not e!171598))))

(assert (=> b!276084 (= res!126043 (isEmpty!2477 (tail!490 lt!114364)))))

(declare-fun b!276085 () Bool)

(declare-fun res!126045 () Bool)

(assert (=> b!276085 (=> (not res!126045) (not e!171598))))

(assert (=> b!276085 (= res!126045 (not call!15265))))

(declare-fun b!276086 () Bool)

(assert (=> b!276086 (= e!171602 e!171600)))

(declare-fun c!52267 () Bool)

(assert (=> b!276086 (= c!52267 (is-EmptyLang!960 (regex!736 (rule!1323 (h!9253 tokens!465)))))))

(declare-fun b!276087 () Bool)

(assert (=> b!276087 (= e!171599 e!171603)))

(declare-fun res!126040 () Bool)

(assert (=> b!276087 (=> (not res!126040) (not e!171603))))

(assert (=> b!276087 (= res!126040 (not lt!114633))))

(declare-fun b!276088 () Bool)

(declare-fun derivativeStep!137 (Regex!960 C!2842) Regex!960)

(assert (=> b!276088 (= e!171604 (matchR!282 (derivativeStep!137 (regex!736 (rule!1323 (h!9253 tokens!465))) (head!901 lt!114364)) (tail!490 lt!114364)))))

(assert (= (and d!80812 c!52265) b!276082))

(assert (= (and d!80812 (not c!52265)) b!276088))

(assert (= (and d!80812 c!52266) b!276075))

(assert (= (and d!80812 (not c!52266)) b!276086))

(assert (= (and b!276086 c!52267) b!276079))

(assert (= (and b!276086 (not c!52267)) b!276076))

(assert (= (and b!276076 (not res!126044)) b!276080))

(assert (= (and b!276080 res!126042) b!276085))

(assert (= (and b!276085 res!126045) b!276084))

(assert (= (and b!276084 res!126043) b!276077))

(assert (= (and b!276080 (not res!126046)) b!276087))

(assert (= (and b!276087 res!126040) b!276078))

(assert (= (and b!276078 (not res!126041)) b!276083))

(assert (= (and b!276083 (not res!126047)) b!276081))

(assert (= (or b!276075 b!276078 b!276085) bm!15260))

(declare-fun m!352311 () Bool)

(assert (=> d!80812 m!352311))

(declare-fun m!352313 () Bool)

(assert (=> d!80812 m!352313))

(assert (=> b!276083 m!352199))

(assert (=> b!276083 m!352199))

(declare-fun m!352315 () Bool)

(assert (=> b!276083 m!352315))

(assert (=> b!276084 m!352199))

(assert (=> b!276084 m!352199))

(assert (=> b!276084 m!352315))

(assert (=> b!276081 m!352191))

(assert (=> b!276088 m!352191))

(assert (=> b!276088 m!352191))

(declare-fun m!352317 () Bool)

(assert (=> b!276088 m!352317))

(assert (=> b!276088 m!352199))

(assert (=> b!276088 m!352317))

(assert (=> b!276088 m!352199))

(declare-fun m!352319 () Bool)

(assert (=> b!276088 m!352319))

(assert (=> bm!15260 m!352311))

(assert (=> b!276077 m!352191))

(declare-fun m!352321 () Bool)

(assert (=> b!276082 m!352321))

(assert (=> b!275619 d!80812))

(declare-fun d!80814 () Bool)

(declare-fun lt!114672 () Bool)

(declare-fun e!171653 () Bool)

(assert (=> d!80814 (= lt!114672 e!171653)))

(declare-fun res!126095 () Bool)

(assert (=> d!80814 (=> (not res!126095) (not e!171653))))

(assert (=> d!80814 (= res!126095 (= (list!1590 (_1!2390 (lex!414 thiss!17480 rules!1920 (print!347 thiss!17480 (singletonSeq!282 separatorToken!170))))) (list!1590 (singletonSeq!282 separatorToken!170))))))

(declare-fun e!171654 () Bool)

(assert (=> d!80814 (= lt!114672 e!171654)))

(declare-fun res!126097 () Bool)

(assert (=> d!80814 (=> (not res!126097) (not e!171654))))

(declare-fun lt!114671 () tuple2!4348)

(assert (=> d!80814 (= res!126097 (= (size!3083 (_1!2390 lt!114671)) 1))))

(assert (=> d!80814 (= lt!114671 (lex!414 thiss!17480 rules!1920 (print!347 thiss!17480 (singletonSeq!282 separatorToken!170))))))

(assert (=> d!80814 (not (isEmpty!2479 rules!1920))))

(assert (=> d!80814 (= (rulesProduceIndividualToken!371 thiss!17480 rules!1920 separatorToken!170) lt!114672)))

(declare-fun b!276180 () Bool)

(declare-fun res!126096 () Bool)

(assert (=> b!276180 (=> (not res!126096) (not e!171654))))

(assert (=> b!276180 (= res!126096 (= (apply!791 (_1!2390 lt!114671) 0) separatorToken!170))))

(declare-fun b!276181 () Bool)

(declare-fun isEmpty!2486 (BalanceConc!2596) Bool)

(assert (=> b!276181 (= e!171654 (isEmpty!2486 (_2!2390 lt!114671)))))

(declare-fun b!276182 () Bool)

(assert (=> b!276182 (= e!171653 (isEmpty!2486 (_2!2390 (lex!414 thiss!17480 rules!1920 (print!347 thiss!17480 (singletonSeq!282 separatorToken!170))))))))

(assert (= (and d!80814 res!126097) b!276180))

(assert (= (and b!276180 res!126096) b!276181))

(assert (= (and d!80814 res!126095) b!276182))

(declare-fun m!352487 () Bool)

(assert (=> d!80814 m!352487))

(declare-fun m!352489 () Bool)

(assert (=> d!80814 m!352489))

(declare-fun m!352491 () Bool)

(assert (=> d!80814 m!352491))

(assert (=> d!80814 m!351727))

(declare-fun m!352493 () Bool)

(assert (=> d!80814 m!352493))

(declare-fun m!352495 () Bool)

(assert (=> d!80814 m!352495))

(assert (=> d!80814 m!352487))

(assert (=> d!80814 m!352495))

(declare-fun m!352497 () Bool)

(assert (=> d!80814 m!352497))

(assert (=> d!80814 m!352495))

(declare-fun m!352499 () Bool)

(assert (=> b!276180 m!352499))

(declare-fun m!352501 () Bool)

(assert (=> b!276181 m!352501))

(assert (=> b!276182 m!352495))

(assert (=> b!276182 m!352495))

(assert (=> b!276182 m!352487))

(assert (=> b!276182 m!352487))

(assert (=> b!276182 m!352489))

(declare-fun m!352503 () Bool)

(assert (=> b!276182 m!352503))

(assert (=> b!275614 d!80814))

(declare-fun d!80830 () Bool)

(assert (=> d!80830 (= (seqFromList!840 (t!39022 tokens!465)) (fromListB!330 (t!39022 tokens!465)))))

(declare-fun bs!30994 () Bool)

(assert (= bs!30994 d!80830))

(declare-fun m!352505 () Bool)

(assert (=> bs!30994 m!352505))

(assert (=> b!275615 d!80830))

(declare-fun d!80832 () Bool)

(assert (=> d!80832 (= (list!1588 (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 (seqFromList!840 (t!39022 tokens!465)) separatorToken!170 0)) (list!1591 (c!52184 (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 (seqFromList!840 (t!39022 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!30995 () Bool)

(assert (= bs!30995 d!80832))

(declare-fun m!352507 () Bool)

(assert (=> bs!30995 m!352507))

(assert (=> b!275615 d!80832))

(declare-fun b!276191 () Bool)

(declare-fun e!171659 () List!3864)

(assert (=> b!276191 (= e!171659 lt!114354)))

(declare-fun lt!114675 () List!3864)

(declare-fun e!171660 () Bool)

(declare-fun b!276194 () Bool)

(assert (=> b!276194 (= e!171660 (or (not (= lt!114354 Nil!3854)) (= lt!114675 lt!114364)))))

(declare-fun b!276193 () Bool)

(declare-fun res!126103 () Bool)

(assert (=> b!276193 (=> (not res!126103) (not e!171660))))

(assert (=> b!276193 (= res!126103 (= (size!3082 lt!114675) (+ (size!3082 lt!114364) (size!3082 lt!114354))))))

(declare-fun b!276192 () Bool)

(assert (=> b!276192 (= e!171659 (Cons!3854 (h!9251 lt!114364) (++!1017 (t!39020 lt!114364) lt!114354)))))

(declare-fun d!80834 () Bool)

(assert (=> d!80834 e!171660))

(declare-fun res!126102 () Bool)

(assert (=> d!80834 (=> (not res!126102) (not e!171660))))

(declare-fun content!558 (List!3864) (Set C!2842))

(assert (=> d!80834 (= res!126102 (= (content!558 lt!114675) (set.union (content!558 lt!114364) (content!558 lt!114354))))))

(assert (=> d!80834 (= lt!114675 e!171659)))

(declare-fun c!52289 () Bool)

(assert (=> d!80834 (= c!52289 (is-Nil!3854 lt!114364))))

(assert (=> d!80834 (= (++!1017 lt!114364 lt!114354) lt!114675)))

(assert (= (and d!80834 c!52289) b!276191))

(assert (= (and d!80834 (not c!52289)) b!276192))

(assert (= (and d!80834 res!126102) b!276193))

(assert (= (and b!276193 res!126103) b!276194))

(declare-fun m!352509 () Bool)

(assert (=> b!276193 m!352509))

(assert (=> b!276193 m!352197))

(declare-fun m!352511 () Bool)

(assert (=> b!276193 m!352511))

(declare-fun m!352513 () Bool)

(assert (=> b!276192 m!352513))

(declare-fun m!352515 () Bool)

(assert (=> d!80834 m!352515))

(declare-fun m!352517 () Bool)

(assert (=> d!80834 m!352517))

(declare-fun m!352519 () Bool)

(assert (=> d!80834 m!352519))

(assert (=> b!275615 d!80834))

(declare-fun bs!30996 () Bool)

(declare-fun b!276204 () Bool)

(assert (= bs!30996 (and b!276204 b!275844)))

(declare-fun lambda!9399 () Int)

(assert (=> bs!30996 (= lambda!9399 lambda!9383)))

(declare-fun bs!30997 () Bool)

(assert (= bs!30997 (and b!276204 d!80750)))

(assert (=> bs!30997 (not (= lambda!9399 lambda!9382))))

(declare-fun bs!30998 () Bool)

(assert (= bs!30998 (and b!276204 d!80742)))

(assert (=> bs!30998 (= lambda!9399 lambda!9377)))

(declare-fun bs!30999 () Bool)

(assert (= bs!30999 (and b!276204 b!275610)))

(assert (=> bs!30999 (= lambda!9399 lambda!9366)))

(declare-fun bs!31000 () Bool)

(assert (= bs!31000 (and b!276204 b!275633)))

(assert (=> bs!31000 (not (= lambda!9399 lambda!9365))))

(declare-fun bs!31001 () Bool)

(assert (= bs!31001 (and b!276204 b!275934)))

(assert (=> bs!31001 (= lambda!9399 lambda!9389)))

(declare-fun b!276207 () Bool)

(declare-fun e!171668 () Bool)

(assert (=> b!276207 (= e!171668 true)))

(declare-fun b!276206 () Bool)

(declare-fun e!171667 () Bool)

(assert (=> b!276206 (= e!171667 e!171668)))

(declare-fun b!276205 () Bool)

(declare-fun e!171666 () Bool)

(assert (=> b!276205 (= e!171666 e!171667)))

(assert (=> b!276204 e!171666))

(assert (= b!276206 b!276207))

(assert (= b!276205 b!276206))

(assert (= (and b!276204 (is-Cons!3855 rules!1920)) b!276205))

(assert (=> b!276207 (< (dynLambda!1998 order!2991 (toValue!1479 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9399))))

(assert (=> b!276207 (< (dynLambda!2000 order!2995 (toChars!1338 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9399))))

(assert (=> b!276204 true))

(declare-fun b!276195 () Bool)

(declare-fun c!52293 () Bool)

(declare-fun lt!114678 () Option!827)

(assert (=> b!276195 (= c!52293 (and (is-Some!826 lt!114678) (not (= (_1!2388 (v!14715 lt!114678)) (h!9253 (t!39022 tokens!465))))))))

(declare-fun e!171664 () List!3864)

(declare-fun e!171665 () List!3864)

(assert (=> b!276195 (= e!171664 e!171665)))

(declare-fun bm!15276 () Bool)

(declare-fun call!15282 () BalanceConc!2596)

(assert (=> bm!15276 (= call!15282 (charsOf!381 (h!9253 (t!39022 tokens!465))))))

(declare-fun bm!15277 () Bool)

(declare-fun c!52290 () Bool)

(declare-fun c!52291 () Bool)

(assert (=> bm!15277 (= c!52290 c!52291)))

(declare-fun lt!114680 () List!3864)

(declare-fun call!15281 () List!3864)

(declare-fun call!15284 () List!3864)

(declare-fun e!171663 () List!3864)

(assert (=> bm!15277 (= call!15284 (++!1017 e!171663 (ite c!52291 lt!114680 call!15281)))))

(declare-fun b!276196 () Bool)

(assert (=> b!276196 (= e!171665 Nil!3854)))

(assert (=> b!276196 (= (print!347 thiss!17480 (singletonSeq!282 (h!9253 (t!39022 tokens!465)))) (printTailRec!310 thiss!17480 (singletonSeq!282 (h!9253 (t!39022 tokens!465))) 0 (BalanceConc!2597 Empty!1294)))))

(declare-fun lt!114677 () Unit!5039)

(declare-fun Unit!5048 () Unit!5039)

(assert (=> b!276196 (= lt!114677 Unit!5048)))

(declare-fun lt!114681 () Unit!5039)

(assert (=> b!276196 (= lt!114681 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!117 thiss!17480 rules!1920 call!15281 lt!114680))))

(assert (=> b!276196 false))

(declare-fun lt!114679 () Unit!5039)

(declare-fun Unit!5049 () Unit!5039)

(assert (=> b!276196 (= lt!114679 Unit!5049)))

(declare-fun b!276197 () Bool)

(declare-fun e!171662 () BalanceConc!2596)

(declare-fun call!15283 () BalanceConc!2596)

(assert (=> b!276197 (= e!171662 call!15283)))

(declare-fun b!276198 () Bool)

(assert (=> b!276198 (= e!171665 (++!1017 call!15284 lt!114680))))

(declare-fun b!276199 () Bool)

(assert (=> b!276199 (= e!171662 (charsOf!381 separatorToken!170))))

(declare-fun call!15285 () List!3864)

(declare-fun bm!15278 () Bool)

(assert (=> bm!15278 (= call!15285 (list!1588 (ite c!52291 call!15282 e!171662)))))

(declare-fun b!276200 () Bool)

(assert (=> b!276200 (= e!171663 (list!1588 call!15283))))

(declare-fun b!276201 () Bool)

(assert (=> b!276201 (= e!171663 call!15285)))

(declare-fun bm!15279 () Bool)

(assert (=> bm!15279 (= call!15283 call!15282)))

(declare-fun bm!15280 () Bool)

(assert (=> bm!15280 (= call!15281 call!15285)))

(declare-fun c!52292 () Bool)

(assert (=> bm!15280 (= c!52292 c!52293)))

(declare-fun d!80836 () Bool)

(declare-fun c!52294 () Bool)

(assert (=> d!80836 (= c!52294 (is-Cons!3856 (t!39022 tokens!465)))))

(declare-fun e!171661 () List!3864)

(assert (=> d!80836 (= (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 (t!39022 tokens!465) separatorToken!170) e!171661)))

(declare-fun b!276202 () Bool)

(assert (=> b!276202 (= e!171661 Nil!3854)))

(declare-fun b!276203 () Bool)

(assert (=> b!276203 (= e!171664 call!15284)))

(assert (=> b!276204 (= e!171661 e!171664)))

(declare-fun lt!114676 () Unit!5039)

(assert (=> b!276204 (= lt!114676 (forallContained!291 (t!39022 tokens!465) lambda!9399 (h!9253 (t!39022 tokens!465))))))

(assert (=> b!276204 (= lt!114680 (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 (t!39022 (t!39022 tokens!465)) separatorToken!170))))

(assert (=> b!276204 (= lt!114678 (maxPrefix!340 thiss!17480 rules!1920 (++!1017 (list!1588 (charsOf!381 (h!9253 (t!39022 tokens!465)))) lt!114680)))))

(assert (=> b!276204 (= c!52291 (and (is-Some!826 lt!114678) (= (_1!2388 (v!14715 lt!114678)) (h!9253 (t!39022 tokens!465)))))))

(assert (= (and d!80836 c!52294) b!276204))

(assert (= (and d!80836 (not c!52294)) b!276202))

(assert (= (and b!276204 c!52291) b!276203))

(assert (= (and b!276204 (not c!52291)) b!276195))

(assert (= (and b!276195 c!52293) b!276198))

(assert (= (and b!276195 (not c!52293)) b!276196))

(assert (= (or b!276198 b!276196) bm!15279))

(assert (= (or b!276198 b!276196) bm!15280))

(assert (= (and bm!15280 c!52292) b!276199))

(assert (= (and bm!15280 (not c!52292)) b!276197))

(assert (= (or b!276203 bm!15279) bm!15276))

(assert (= (or b!276203 bm!15280) bm!15278))

(assert (= (or b!276203 b!276198) bm!15277))

(assert (= (and bm!15277 c!52290) b!276201))

(assert (= (and bm!15277 (not c!52290)) b!276200))

(assert (=> b!276199 m!351659))

(declare-fun m!352521 () Bool)

(assert (=> b!276204 m!352521))

(declare-fun m!352523 () Bool)

(assert (=> b!276204 m!352523))

(declare-fun m!352525 () Bool)

(assert (=> b!276204 m!352525))

(declare-fun m!352527 () Bool)

(assert (=> b!276204 m!352527))

(declare-fun m!352529 () Bool)

(assert (=> b!276204 m!352529))

(assert (=> b!276204 m!352527))

(assert (=> b!276204 m!352529))

(assert (=> b!276204 m!352521))

(declare-fun m!352531 () Bool)

(assert (=> b!276204 m!352531))

(declare-fun m!352533 () Bool)

(assert (=> b!276200 m!352533))

(assert (=> bm!15276 m!352527))

(declare-fun m!352535 () Bool)

(assert (=> bm!15277 m!352535))

(declare-fun m!352537 () Bool)

(assert (=> b!276198 m!352537))

(declare-fun m!352539 () Bool)

(assert (=> bm!15278 m!352539))

(declare-fun m!352541 () Bool)

(assert (=> b!276196 m!352541))

(assert (=> b!276196 m!352541))

(declare-fun m!352543 () Bool)

(assert (=> b!276196 m!352543))

(assert (=> b!276196 m!352541))

(declare-fun m!352545 () Bool)

(assert (=> b!276196 m!352545))

(declare-fun m!352547 () Bool)

(assert (=> b!276196 m!352547))

(assert (=> b!275615 d!80836))

(declare-fun bs!31002 () Bool)

(declare-fun d!80838 () Bool)

(assert (= bs!31002 (and d!80838 b!275844)))

(declare-fun lambda!9400 () Int)

(assert (=> bs!31002 (not (= lambda!9400 lambda!9383))))

(declare-fun bs!31003 () Bool)

(assert (= bs!31003 (and d!80838 d!80750)))

(assert (=> bs!31003 (= lambda!9400 lambda!9382)))

(declare-fun bs!31004 () Bool)

(assert (= bs!31004 (and d!80838 d!80742)))

(assert (=> bs!31004 (not (= lambda!9400 lambda!9377))))

(declare-fun bs!31005 () Bool)

(assert (= bs!31005 (and d!80838 b!276204)))

(assert (=> bs!31005 (not (= lambda!9400 lambda!9399))))

(declare-fun bs!31006 () Bool)

(assert (= bs!31006 (and d!80838 b!275610)))

(assert (=> bs!31006 (not (= lambda!9400 lambda!9366))))

(declare-fun bs!31007 () Bool)

(assert (= bs!31007 (and d!80838 b!275633)))

(assert (=> bs!31007 (= lambda!9400 lambda!9365)))

(declare-fun bs!31008 () Bool)

(assert (= bs!31008 (and d!80838 b!275934)))

(assert (=> bs!31008 (not (= lambda!9400 lambda!9389))))

(declare-fun bs!31009 () Bool)

(declare-fun b!276216 () Bool)

(assert (= bs!31009 (and b!276216 b!275844)))

(declare-fun lambda!9401 () Int)

(assert (=> bs!31009 (= lambda!9401 lambda!9383)))

(declare-fun bs!31010 () Bool)

(assert (= bs!31010 (and b!276216 d!80838)))

(assert (=> bs!31010 (not (= lambda!9401 lambda!9400))))

(declare-fun bs!31011 () Bool)

(assert (= bs!31011 (and b!276216 d!80750)))

(assert (=> bs!31011 (not (= lambda!9401 lambda!9382))))

(declare-fun bs!31012 () Bool)

(assert (= bs!31012 (and b!276216 d!80742)))

(assert (=> bs!31012 (= lambda!9401 lambda!9377)))

(declare-fun bs!31013 () Bool)

(assert (= bs!31013 (and b!276216 b!276204)))

(assert (=> bs!31013 (= lambda!9401 lambda!9399)))

(declare-fun bs!31014 () Bool)

(assert (= bs!31014 (and b!276216 b!275610)))

(assert (=> bs!31014 (= lambda!9401 lambda!9366)))

(declare-fun bs!31015 () Bool)

(assert (= bs!31015 (and b!276216 b!275633)))

(assert (=> bs!31015 (not (= lambda!9401 lambda!9365))))

(declare-fun bs!31016 () Bool)

(assert (= bs!31016 (and b!276216 b!275934)))

(assert (=> bs!31016 (= lambda!9401 lambda!9389)))

(declare-fun b!276219 () Bool)

(declare-fun e!171677 () Bool)

(assert (=> b!276219 (= e!171677 true)))

(declare-fun b!276218 () Bool)

(declare-fun e!171676 () Bool)

(assert (=> b!276218 (= e!171676 e!171677)))

(declare-fun b!276217 () Bool)

(declare-fun e!171675 () Bool)

(assert (=> b!276217 (= e!171675 e!171676)))

(assert (=> b!276216 e!171675))

(assert (= b!276218 b!276219))

(assert (= b!276217 b!276218))

(assert (= (and b!276216 (is-Cons!3855 rules!1920)) b!276217))

(assert (=> b!276219 (< (dynLambda!1998 order!2991 (toValue!1479 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9401))))

(assert (=> b!276219 (< (dynLambda!2000 order!2995 (toChars!1338 (transformation!736 (h!9252 rules!1920)))) (dynLambda!1999 order!2993 lambda!9401))))

(assert (=> b!276216 true))

(declare-fun b!276208 () Bool)

(declare-fun e!171671 () BalanceConc!2596)

(declare-fun call!15288 () BalanceConc!2596)

(declare-fun lt!114694 () BalanceConc!2596)

(assert (=> b!276208 (= e!171671 (++!1019 call!15288 lt!114694))))

(declare-fun b!276209 () Bool)

(assert (=> b!276209 (= e!171671 (BalanceConc!2597 Empty!1294))))

(declare-fun call!15286 () Token!1216)

(assert (=> b!276209 (= (print!347 thiss!17480 (singletonSeq!282 call!15286)) (printTailRec!310 thiss!17480 (singletonSeq!282 call!15286) 0 (BalanceConc!2597 Empty!1294)))))

(declare-fun lt!114689 () Unit!5039)

(declare-fun Unit!5050 () Unit!5039)

(assert (=> b!276209 (= lt!114689 Unit!5050)))

(declare-fun call!15290 () BalanceConc!2596)

(declare-fun lt!114692 () Unit!5039)

(assert (=> b!276209 (= lt!114692 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!117 thiss!17480 rules!1920 (list!1588 call!15290) (list!1588 lt!114694)))))

(assert (=> b!276209 false))

(declare-fun lt!114685 () Unit!5039)

(declare-fun Unit!5051 () Unit!5039)

(assert (=> b!276209 (= lt!114685 Unit!5051)))

(declare-fun b!276210 () Bool)

(declare-fun e!171670 () Bool)

(declare-fun lt!114688 () Option!826)

(assert (=> b!276210 (= e!171670 (= (_1!2389 (v!14714 lt!114688)) (apply!791 (seqFromList!840 (t!39022 tokens!465)) 0)))))

(declare-fun b!276211 () Bool)

(declare-fun e!171673 () BalanceConc!2596)

(assert (=> b!276211 (= e!171673 call!15288)))

(declare-fun b!276212 () Bool)

(declare-fun e!171674 () BalanceConc!2596)

(assert (=> b!276212 (= e!171674 (BalanceConc!2597 Empty!1294))))

(declare-fun b!276213 () Bool)

(declare-fun e!171672 () Bool)

(assert (=> b!276213 (= e!171672 (<= 0 (size!3083 (seqFromList!840 (t!39022 tokens!465)))))))

(declare-fun bm!15281 () Bool)

(declare-fun call!15287 () Token!1216)

(assert (=> bm!15281 (= call!15286 call!15287)))

(declare-fun call!15289 () BalanceConc!2596)

(declare-fun bm!15282 () Bool)

(declare-fun c!52297 () Bool)

(assert (=> bm!15282 (= call!15289 (charsOf!381 (ite c!52297 call!15287 call!15286)))))

(declare-fun lt!114690 () BalanceConc!2596)

(assert (=> d!80838 (= (list!1588 lt!114690) (printWithSeparatorTokenWhenNeededList!305 thiss!17480 rules!1920 (dropList!169 (seqFromList!840 (t!39022 tokens!465)) 0) separatorToken!170))))

(assert (=> d!80838 (= lt!114690 e!171674)))

(declare-fun c!52295 () Bool)

(assert (=> d!80838 (= c!52295 (>= 0 (size!3083 (seqFromList!840 (t!39022 tokens!465)))))))

(declare-fun lt!114695 () Unit!5039)

(assert (=> d!80838 (= lt!114695 (lemmaContentSubsetPreservesForall!113 (list!1590 (seqFromList!840 (t!39022 tokens!465))) (dropList!169 (seqFromList!840 (t!39022 tokens!465)) 0) lambda!9400))))

(assert (=> d!80838 e!171672))

(declare-fun res!126105 () Bool)

(assert (=> d!80838 (=> (not res!126105) (not e!171672))))

(assert (=> d!80838 (= res!126105 (>= 0 0))))

(assert (=> d!80838 (= (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 (seqFromList!840 (t!39022 tokens!465)) separatorToken!170 0) lt!114690)))

(declare-fun b!276214 () Bool)

(declare-fun c!52296 () Bool)

(declare-fun e!171669 () Bool)

(assert (=> b!276214 (= c!52296 e!171669)))

(declare-fun res!126104 () Bool)

(assert (=> b!276214 (=> (not res!126104) (not e!171669))))

(assert (=> b!276214 (= res!126104 (is-Some!825 lt!114688))))

(assert (=> b!276214 (= e!171673 e!171671)))

(declare-fun b!276215 () Bool)

(assert (=> b!276215 (= e!171669 (not (= (_1!2389 (v!14714 lt!114688)) call!15287)))))

(declare-fun bm!15283 () Bool)

(assert (=> bm!15283 (= call!15287 (apply!791 (seqFromList!840 (t!39022 tokens!465)) 0))))

(assert (=> b!276216 (= e!171674 e!171673)))

(declare-fun lt!114691 () List!3866)

(assert (=> b!276216 (= lt!114691 (list!1590 (seqFromList!840 (t!39022 tokens!465))))))

(declare-fun lt!114684 () Unit!5039)

(assert (=> b!276216 (= lt!114684 (lemmaDropApply!209 lt!114691 0))))

(assert (=> b!276216 (= (head!899 (drop!222 lt!114691 0)) (apply!792 lt!114691 0))))

(declare-fun lt!114687 () Unit!5039)

(assert (=> b!276216 (= lt!114687 lt!114684)))

(declare-fun lt!114682 () List!3866)

(assert (=> b!276216 (= lt!114682 (list!1590 (seqFromList!840 (t!39022 tokens!465))))))

(declare-fun lt!114693 () Unit!5039)

(assert (=> b!276216 (= lt!114693 (lemmaDropTail!201 lt!114682 0))))

(assert (=> b!276216 (= (tail!489 (drop!222 lt!114682 0)) (drop!222 lt!114682 (+ 0 1)))))

(declare-fun lt!114686 () Unit!5039)

(assert (=> b!276216 (= lt!114686 lt!114693)))

(declare-fun lt!114683 () Unit!5039)

(assert (=> b!276216 (= lt!114683 (forallContained!291 (list!1590 (seqFromList!840 (t!39022 tokens!465))) lambda!9401 (apply!791 (seqFromList!840 (t!39022 tokens!465)) 0)))))

(assert (=> b!276216 (= lt!114694 (printWithSeparatorTokenWhenNeededRec!297 thiss!17480 rules!1920 (seqFromList!840 (t!39022 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!276216 (= lt!114688 (maxPrefixZipperSequence!303 thiss!17480 rules!1920 (++!1019 (charsOf!381 (apply!791 (seqFromList!840 (t!39022 tokens!465)) 0)) lt!114694)))))

(declare-fun res!126106 () Bool)

(assert (=> b!276216 (= res!126106 (is-Some!825 lt!114688))))

(assert (=> b!276216 (=> (not res!126106) (not e!171670))))

(assert (=> b!276216 (= c!52297 e!171670)))

(declare-fun bm!15284 () Bool)

(assert (=> bm!15284 (= call!15290 (charsOf!381 (ite c!52296 separatorToken!170 call!15286)))))

(declare-fun bm!15285 () Bool)

(assert (=> bm!15285 (= call!15288 (++!1019 call!15289 (ite c!52297 lt!114694 call!15290)))))

(assert (= (and d!80838 res!126105) b!276213))

(assert (= (and d!80838 c!52295) b!276212))

(assert (= (and d!80838 (not c!52295)) b!276216))

(assert (= (and b!276216 res!126106) b!276210))

(assert (= (and b!276216 c!52297) b!276211))

(assert (= (and b!276216 (not c!52297)) b!276214))

(assert (= (and b!276214 res!126104) b!276215))

(assert (= (and b!276214 c!52296) b!276208))

(assert (= (and b!276214 (not c!52296)) b!276209))

(assert (= (or b!276208 b!276209) bm!15281))

(assert (= (or b!276208 b!276209) bm!15284))

(assert (= (or b!276211 bm!15281 b!276215) bm!15283))

(assert (= (or b!276211 b!276208) bm!15282))

(assert (= (or b!276211 b!276208) bm!15285))

(declare-fun m!352549 () Bool)

(assert (=> b!276208 m!352549))

(declare-fun m!352551 () Bool)

(assert (=> bm!15285 m!352551))

(assert (=> bm!15283 m!351653))

(declare-fun m!352553 () Bool)

(assert (=> bm!15283 m!352553))

(declare-fun m!352555 () Bool)

(assert (=> b!276209 m!352555))

(declare-fun m!352557 () Bool)

(assert (=> b!276209 m!352557))

(declare-fun m!352559 () Bool)

(assert (=> b!276209 m!352559))

(declare-fun m!352561 () Bool)

(assert (=> b!276209 m!352561))

(assert (=> b!276209 m!352555))

(assert (=> b!276209 m!352561))

(declare-fun m!352563 () Bool)

(assert (=> b!276209 m!352563))

(assert (=> b!276209 m!352557))

(assert (=> b!276209 m!352557))

(declare-fun m!352565 () Bool)

(assert (=> b!276209 m!352565))

(assert (=> b!276210 m!351653))

(assert (=> b!276210 m!352553))

(declare-fun m!352567 () Bool)

(assert (=> bm!15284 m!352567))

(declare-fun m!352569 () Bool)

(assert (=> d!80838 m!352569))

(declare-fun m!352571 () Bool)

(assert (=> d!80838 m!352571))

(declare-fun m!352573 () Bool)

(assert (=> d!80838 m!352573))

(declare-fun m!352575 () Bool)

(assert (=> d!80838 m!352575))

(assert (=> d!80838 m!351653))

(declare-fun m!352577 () Bool)

(assert (=> d!80838 m!352577))

(assert (=> d!80838 m!351653))

(assert (=> d!80838 m!352571))

(assert (=> d!80838 m!351653))

(assert (=> d!80838 m!352573))

(assert (=> d!80838 m!352573))

(declare-fun m!352579 () Bool)

(assert (=> d!80838 m!352579))

(assert (=> b!276213 m!351653))

(assert (=> b!276213 m!352577))

(declare-fun m!352581 () Bool)

(assert (=> b!276216 m!352581))

(declare-fun m!352583 () Bool)

(assert (=> b!276216 m!352583))

(declare-fun m!352585 () Bool)

(assert (=> b!276216 m!352585))

(declare-fun m!352587 () Bool)

(assert (=> b!276216 m!352587))

(declare-fun m!352589 () Bool)

(assert (=> b!276216 m!352589))

(assert (=> b!276216 m!352571))

(assert (=> b!276216 m!352553))

(declare-fun m!352591 () Bool)

(assert (=> b!276216 m!352591))

(assert (=> b!276216 m!352581))

(assert (=> b!276216 m!352589))

(declare-fun m!352593 () Bool)

(assert (=> b!276216 m!352593))

(declare-fun m!352595 () Bool)

(assert (=> b!276216 m!352595))

(declare-fun m!352597 () Bool)

(assert (=> b!276216 m!352597))

(assert (=> b!276216 m!351653))

(assert (=> b!276216 m!352553))

(assert (=> b!276216 m!352553))

(assert (=> b!276216 m!352587))

(assert (=> b!276216 m!351653))

(declare-fun m!352599 () Bool)

(assert (=> b!276216 m!352599))

(declare-fun m!352601 () Bool)

(assert (=> b!276216 m!352601))

(assert (=> b!276216 m!352597))

(declare-fun m!352603 () Bool)

(assert (=> b!276216 m!352603))

(assert (=> b!276216 m!351653))

(assert (=> b!276216 m!352571))

(declare-fun m!352605 () Bool)

(assert (=> b!276216 m!352605))

(declare-fun m!352607 () Bool)

(assert (=> bm!15282 m!352607))

(assert (=> b!275615 d!80838))

(declare-fun d!80840 () Bool)

(declare-fun lt!114698 () BalanceConc!2596)

(assert (=> d!80840 (= (list!1588 lt!114698) (originalCharacters!779 separatorToken!170))))

(assert (=> d!80840 (= lt!114698 (dynLambda!2004 (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (value!25293 separatorToken!170)))))

(assert (=> d!80840 (= (charsOf!381 separatorToken!170) lt!114698)))

(declare-fun b_lambda!8895 () Bool)

(assert (=> (not b_lambda!8895) (not d!80840)))

(assert (=> d!80840 t!39030))

(declare-fun b_and!22169 () Bool)

(assert (= b_and!22151 (and (=> t!39030 result!19452) b_and!22169)))

(assert (=> d!80840 t!39032))

(declare-fun b_and!22171 () Bool)

(assert (= b_and!22153 (and (=> t!39032 result!19456) b_and!22171)))

(assert (=> d!80840 t!39034))

(declare-fun b_and!22173 () Bool)

(assert (= b_and!22155 (and (=> t!39034 result!19458) b_and!22173)))

(declare-fun m!352609 () Bool)

(assert (=> d!80840 m!352609))

(assert (=> d!80840 m!351937))

(assert (=> b!275615 d!80840))

(declare-fun d!80842 () Bool)

(assert (=> d!80842 (= (++!1017 (++!1017 lt!114364 lt!114354) lt!114362) (++!1017 lt!114364 (++!1017 lt!114354 lt!114362)))))

(declare-fun lt!114701 () Unit!5039)

(declare-fun choose!2495 (List!3864 List!3864 List!3864) Unit!5039)

(assert (=> d!80842 (= lt!114701 (choose!2495 lt!114364 lt!114354 lt!114362))))

(assert (=> d!80842 (= (lemmaConcatAssociativity!437 lt!114364 lt!114354 lt!114362) lt!114701)))

(declare-fun bs!31017 () Bool)

(assert (= bs!31017 d!80842))

(assert (=> bs!31017 m!351665))

(assert (=> bs!31017 m!351671))

(assert (=> bs!31017 m!351665))

(assert (=> bs!31017 m!351667))

(declare-fun m!352611 () Bool)

(assert (=> bs!31017 m!352611))

(assert (=> bs!31017 m!351667))

(declare-fun m!352613 () Bool)

(assert (=> bs!31017 m!352613))

(assert (=> b!275615 d!80842))

(declare-fun b!276220 () Bool)

(declare-fun e!171678 () List!3864)

(assert (=> b!276220 (= e!171678 lt!114360)))

(declare-fun lt!114702 () List!3864)

(declare-fun e!171679 () Bool)

(declare-fun b!276223 () Bool)

(assert (=> b!276223 (= e!171679 (or (not (= lt!114360 Nil!3854)) (= lt!114702 lt!114364)))))

(declare-fun b!276222 () Bool)

(declare-fun res!126108 () Bool)

(assert (=> b!276222 (=> (not res!126108) (not e!171679))))

(assert (=> b!276222 (= res!126108 (= (size!3082 lt!114702) (+ (size!3082 lt!114364) (size!3082 lt!114360))))))

(declare-fun b!276221 () Bool)

(assert (=> b!276221 (= e!171678 (Cons!3854 (h!9251 lt!114364) (++!1017 (t!39020 lt!114364) lt!114360)))))

(declare-fun d!80844 () Bool)

(assert (=> d!80844 e!171679))

(declare-fun res!126107 () Bool)

(assert (=> d!80844 (=> (not res!126107) (not e!171679))))

(assert (=> d!80844 (= res!126107 (= (content!558 lt!114702) (set.union (content!558 lt!114364) (content!558 lt!114360))))))

(assert (=> d!80844 (= lt!114702 e!171678)))

(declare-fun c!52298 () Bool)

(assert (=> d!80844 (= c!52298 (is-Nil!3854 lt!114364))))

(assert (=> d!80844 (= (++!1017 lt!114364 lt!114360) lt!114702)))

(assert (= (and d!80844 c!52298) b!276220))

(assert (= (and d!80844 (not c!52298)) b!276221))

(assert (= (and d!80844 res!126107) b!276222))

(assert (= (and b!276222 res!126108) b!276223))

(declare-fun m!352615 () Bool)

(assert (=> b!276222 m!352615))

(assert (=> b!276222 m!352197))

(assert (=> b!276222 m!352227))

(declare-fun m!352617 () Bool)

(assert (=> b!276221 m!352617))

(declare-fun m!352619 () Bool)

(assert (=> d!80844 m!352619))

(assert (=> d!80844 m!352517))

(declare-fun m!352621 () Bool)

(assert (=> d!80844 m!352621))

(assert (=> b!275615 d!80844))

(declare-fun d!80846 () Bool)

(assert (=> d!80846 (= (list!1588 (charsOf!381 (h!9253 tokens!465))) (list!1591 (c!52184 (charsOf!381 (h!9253 tokens!465)))))))

(declare-fun bs!31018 () Bool)

(assert (= bs!31018 d!80846))

(declare-fun m!352623 () Bool)

(assert (=> bs!31018 m!352623))

(assert (=> b!275615 d!80846))

(declare-fun d!80848 () Bool)

(declare-fun lt!114703 () BalanceConc!2596)

(assert (=> d!80848 (= (list!1588 lt!114703) (originalCharacters!779 (h!9253 tokens!465)))))

(assert (=> d!80848 (= lt!114703 (dynLambda!2004 (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (value!25293 (h!9253 tokens!465))))))

(assert (=> d!80848 (= (charsOf!381 (h!9253 tokens!465)) lt!114703)))

(declare-fun b_lambda!8897 () Bool)

(assert (=> (not b_lambda!8897) (not d!80848)))

(assert (=> d!80848 t!39040))

(declare-fun b_and!22175 () Bool)

(assert (= b_and!22169 (and (=> t!39040 result!19460) b_and!22175)))

(assert (=> d!80848 t!39042))

(declare-fun b_and!22177 () Bool)

(assert (= b_and!22171 (and (=> t!39042 result!19462) b_and!22177)))

(assert (=> d!80848 t!39044))

(declare-fun b_and!22179 () Bool)

(assert (= b_and!22173 (and (=> t!39044 result!19464) b_and!22179)))

(declare-fun m!352625 () Bool)

(assert (=> d!80848 m!352625))

(assert (=> d!80848 m!351959))

(assert (=> b!275615 d!80848))

(declare-fun b!276224 () Bool)

(declare-fun e!171680 () List!3864)

(assert (=> b!276224 (= e!171680 lt!114362)))

(declare-fun b!276227 () Bool)

(declare-fun lt!114704 () List!3864)

(declare-fun e!171681 () Bool)

(assert (=> b!276227 (= e!171681 (or (not (= lt!114362 Nil!3854)) (= lt!114704 (++!1017 lt!114364 lt!114354))))))

(declare-fun b!276226 () Bool)

(declare-fun res!126110 () Bool)

(assert (=> b!276226 (=> (not res!126110) (not e!171681))))

(assert (=> b!276226 (= res!126110 (= (size!3082 lt!114704) (+ (size!3082 (++!1017 lt!114364 lt!114354)) (size!3082 lt!114362))))))

(declare-fun b!276225 () Bool)

(assert (=> b!276225 (= e!171680 (Cons!3854 (h!9251 (++!1017 lt!114364 lt!114354)) (++!1017 (t!39020 (++!1017 lt!114364 lt!114354)) lt!114362)))))

(declare-fun d!80850 () Bool)

(assert (=> d!80850 e!171681))

(declare-fun res!126109 () Bool)

(assert (=> d!80850 (=> (not res!126109) (not e!171681))))

(assert (=> d!80850 (= res!126109 (= (content!558 lt!114704) (set.union (content!558 (++!1017 lt!114364 lt!114354)) (content!558 lt!114362))))))

(assert (=> d!80850 (= lt!114704 e!171680)))

(declare-fun c!52299 () Bool)

(assert (=> d!80850 (= c!52299 (is-Nil!3854 (++!1017 lt!114364 lt!114354)))))

(assert (=> d!80850 (= (++!1017 (++!1017 lt!114364 lt!114354) lt!114362) lt!114704)))

(assert (= (and d!80850 c!52299) b!276224))

(assert (= (and d!80850 (not c!52299)) b!276225))

(assert (= (and d!80850 res!126109) b!276226))

(assert (= (and b!276226 res!126110) b!276227))

(declare-fun m!352627 () Bool)

(assert (=> b!276226 m!352627))

(assert (=> b!276226 m!351665))

(declare-fun m!352629 () Bool)

(assert (=> b!276226 m!352629))

(declare-fun m!352631 () Bool)

(assert (=> b!276226 m!352631))

(declare-fun m!352633 () Bool)

(assert (=> b!276225 m!352633))

(declare-fun m!352635 () Bool)

(assert (=> d!80850 m!352635))

(assert (=> d!80850 m!351665))

(declare-fun m!352637 () Bool)

(assert (=> d!80850 m!352637))

(declare-fun m!352639 () Bool)

(assert (=> d!80850 m!352639))

(assert (=> b!275615 d!80850))

(declare-fun d!80852 () Bool)

(assert (=> d!80852 (= (list!1588 (charsOf!381 separatorToken!170)) (list!1591 (c!52184 (charsOf!381 separatorToken!170))))))

(declare-fun bs!31019 () Bool)

(assert (= bs!31019 d!80852))

(declare-fun m!352641 () Bool)

(assert (=> bs!31019 m!352641))

(assert (=> b!275615 d!80852))

(declare-fun b!276228 () Bool)

(declare-fun e!171682 () List!3864)

(assert (=> b!276228 (= e!171682 lt!114362)))

(declare-fun b!276231 () Bool)

(declare-fun e!171683 () Bool)

(declare-fun lt!114705 () List!3864)

(assert (=> b!276231 (= e!171683 (or (not (= lt!114362 Nil!3854)) (= lt!114705 lt!114354)))))

(declare-fun b!276230 () Bool)

(declare-fun res!126112 () Bool)

(assert (=> b!276230 (=> (not res!126112) (not e!171683))))

(assert (=> b!276230 (= res!126112 (= (size!3082 lt!114705) (+ (size!3082 lt!114354) (size!3082 lt!114362))))))

(declare-fun b!276229 () Bool)

(assert (=> b!276229 (= e!171682 (Cons!3854 (h!9251 lt!114354) (++!1017 (t!39020 lt!114354) lt!114362)))))

(declare-fun d!80854 () Bool)

(assert (=> d!80854 e!171683))

(declare-fun res!126111 () Bool)

(assert (=> d!80854 (=> (not res!126111) (not e!171683))))

(assert (=> d!80854 (= res!126111 (= (content!558 lt!114705) (set.union (content!558 lt!114354) (content!558 lt!114362))))))

(assert (=> d!80854 (= lt!114705 e!171682)))

(declare-fun c!52300 () Bool)

(assert (=> d!80854 (= c!52300 (is-Nil!3854 lt!114354))))

(assert (=> d!80854 (= (++!1017 lt!114354 lt!114362) lt!114705)))

(assert (= (and d!80854 c!52300) b!276228))

(assert (= (and d!80854 (not c!52300)) b!276229))

(assert (= (and d!80854 res!126111) b!276230))

(assert (= (and b!276230 res!126112) b!276231))

(declare-fun m!352643 () Bool)

(assert (=> b!276230 m!352643))

(assert (=> b!276230 m!352511))

(assert (=> b!276230 m!352631))

(declare-fun m!352645 () Bool)

(assert (=> b!276229 m!352645))

(declare-fun m!352647 () Bool)

(assert (=> d!80854 m!352647))

(assert (=> d!80854 m!352519))

(assert (=> d!80854 m!352639))

(assert (=> b!275615 d!80854))

(declare-fun d!80856 () Bool)

(declare-fun lt!114708 () Bool)

(assert (=> d!80856 (= lt!114708 (isEmpty!2478 (list!1590 (_1!2390 (lex!414 thiss!17480 rules!1920 (seqFromList!839 lt!114364))))))))

(declare-fun isEmpty!2487 (Conc!1295) Bool)

(assert (=> d!80856 (= lt!114708 (isEmpty!2487 (c!52186 (_1!2390 (lex!414 thiss!17480 rules!1920 (seqFromList!839 lt!114364))))))))

(assert (=> d!80856 (= (isEmpty!2480 (_1!2390 (lex!414 thiss!17480 rules!1920 (seqFromList!839 lt!114364)))) lt!114708)))

(declare-fun bs!31020 () Bool)

(assert (= bs!31020 d!80856))

(declare-fun m!352649 () Bool)

(assert (=> bs!31020 m!352649))

(assert (=> bs!31020 m!352649))

(declare-fun m!352651 () Bool)

(assert (=> bs!31020 m!352651))

(declare-fun m!352653 () Bool)

(assert (=> bs!31020 m!352653))

(assert (=> b!275636 d!80856))

(declare-fun b!276279 () Bool)

(declare-fun res!126136 () Bool)

(declare-fun e!171717 () Bool)

(assert (=> b!276279 (=> (not res!126136) (not e!171717))))

(declare-fun lt!114718 () tuple2!4348)

(declare-datatypes ((tuple2!4356 0))(
  ( (tuple2!4357 (_1!2394 List!3866) (_2!2394 List!3864)) )
))
(declare-fun lexList!214 (LexerInterface!622 List!3865 List!3864) tuple2!4356)

(assert (=> b!276279 (= res!126136 (= (list!1590 (_1!2390 lt!114718)) (_1!2394 (lexList!214 thiss!17480 rules!1920 (list!1588 (seqFromList!839 lt!114364))))))))

(declare-fun b!276280 () Bool)

(assert (=> b!276280 (= e!171717 (= (list!1588 (_2!2390 lt!114718)) (_2!2394 (lexList!214 thiss!17480 rules!1920 (list!1588 (seqFromList!839 lt!114364))))))))

(declare-fun b!276281 () Bool)

(declare-fun e!171718 () Bool)

(assert (=> b!276281 (= e!171718 (not (isEmpty!2480 (_1!2390 lt!114718))))))

(declare-fun b!276282 () Bool)

(declare-fun e!171719 () Bool)

(assert (=> b!276282 (= e!171719 (= (_2!2390 lt!114718) (seqFromList!839 lt!114364)))))

(declare-fun b!276283 () Bool)

(assert (=> b!276283 (= e!171719 e!171718)))

(declare-fun res!126135 () Bool)

(declare-fun size!3084 (BalanceConc!2596) Int)

(assert (=> b!276283 (= res!126135 (< (size!3084 (_2!2390 lt!114718)) (size!3084 (seqFromList!839 lt!114364))))))

(assert (=> b!276283 (=> (not res!126135) (not e!171718))))

(declare-fun d!80858 () Bool)

(assert (=> d!80858 e!171717))

(declare-fun res!126137 () Bool)

(assert (=> d!80858 (=> (not res!126137) (not e!171717))))

(assert (=> d!80858 (= res!126137 e!171719)))

(declare-fun c!52312 () Bool)

(assert (=> d!80858 (= c!52312 (> (size!3083 (_1!2390 lt!114718)) 0))))

(declare-fun lexTailRecV2!181 (LexerInterface!622 List!3865 BalanceConc!2596 BalanceConc!2596 BalanceConc!2596 BalanceConc!2598) tuple2!4348)

(assert (=> d!80858 (= lt!114718 (lexTailRecV2!181 thiss!17480 rules!1920 (seqFromList!839 lt!114364) (BalanceConc!2597 Empty!1294) (seqFromList!839 lt!114364) (BalanceConc!2599 Empty!1295)))))

(assert (=> d!80858 (= (lex!414 thiss!17480 rules!1920 (seqFromList!839 lt!114364)) lt!114718)))

(assert (= (and d!80858 c!52312) b!276283))

(assert (= (and d!80858 (not c!52312)) b!276282))

(assert (= (and b!276283 res!126135) b!276281))

(assert (= (and d!80858 res!126137) b!276279))

(assert (= (and b!276279 res!126136) b!276280))

(declare-fun m!352695 () Bool)

(assert (=> b!276279 m!352695))

(assert (=> b!276279 m!351751))

(declare-fun m!352697 () Bool)

(assert (=> b!276279 m!352697))

(assert (=> b!276279 m!352697))

(declare-fun m!352699 () Bool)

(assert (=> b!276279 m!352699))

(declare-fun m!352701 () Bool)

(assert (=> b!276280 m!352701))

(assert (=> b!276280 m!351751))

(assert (=> b!276280 m!352697))

(assert (=> b!276280 m!352697))

(assert (=> b!276280 m!352699))

(declare-fun m!352703 () Bool)

(assert (=> b!276283 m!352703))

(assert (=> b!276283 m!351751))

(declare-fun m!352705 () Bool)

(assert (=> b!276283 m!352705))

(declare-fun m!352707 () Bool)

(assert (=> b!276281 m!352707))

(declare-fun m!352709 () Bool)

(assert (=> d!80858 m!352709))

(assert (=> d!80858 m!351751))

(assert (=> d!80858 m!351751))

(declare-fun m!352711 () Bool)

(assert (=> d!80858 m!352711))

(assert (=> b!275636 d!80858))

(declare-fun d!80882 () Bool)

(declare-fun fromListB!332 (List!3864) BalanceConc!2596)

(assert (=> d!80882 (= (seqFromList!839 lt!114364) (fromListB!332 lt!114364))))

(declare-fun bs!31031 () Bool)

(assert (= bs!31031 d!80882))

(declare-fun m!352713 () Bool)

(assert (=> bs!31031 m!352713))

(assert (=> b!275636 d!80882))

(declare-fun b!276284 () Bool)

(declare-fun e!171720 () List!3864)

(assert (=> b!276284 (= e!171720 lt!114362)))

(declare-fun lt!114719 () List!3864)

(declare-fun e!171721 () Bool)

(declare-fun b!276287 () Bool)

(assert (=> b!276287 (= e!171721 (or (not (= lt!114362 Nil!3854)) (= lt!114719 lt!114364)))))

(declare-fun b!276286 () Bool)

(declare-fun res!126139 () Bool)

(assert (=> b!276286 (=> (not res!126139) (not e!171721))))

(assert (=> b!276286 (= res!126139 (= (size!3082 lt!114719) (+ (size!3082 lt!114364) (size!3082 lt!114362))))))

(declare-fun b!276285 () Bool)

(assert (=> b!276285 (= e!171720 (Cons!3854 (h!9251 lt!114364) (++!1017 (t!39020 lt!114364) lt!114362)))))

(declare-fun d!80884 () Bool)

(assert (=> d!80884 e!171721))

(declare-fun res!126138 () Bool)

(assert (=> d!80884 (=> (not res!126138) (not e!171721))))

(assert (=> d!80884 (= res!126138 (= (content!558 lt!114719) (set.union (content!558 lt!114364) (content!558 lt!114362))))))

(assert (=> d!80884 (= lt!114719 e!171720)))

(declare-fun c!52313 () Bool)

(assert (=> d!80884 (= c!52313 (is-Nil!3854 lt!114364))))

(assert (=> d!80884 (= (++!1017 lt!114364 lt!114362) lt!114719)))

(assert (= (and d!80884 c!52313) b!276284))

(assert (= (and d!80884 (not c!52313)) b!276285))

(assert (= (and d!80884 res!126138) b!276286))

(assert (= (and b!276286 res!126139) b!276287))

(declare-fun m!352715 () Bool)

(assert (=> b!276286 m!352715))

(assert (=> b!276286 m!352197))

(assert (=> b!276286 m!352631))

(declare-fun m!352717 () Bool)

(assert (=> b!276285 m!352717))

(declare-fun m!352719 () Bool)

(assert (=> d!80884 m!352719))

(assert (=> d!80884 m!352517))

(assert (=> d!80884 m!352639))

(assert (=> b!275637 d!80884))

(declare-fun d!80886 () Bool)

(declare-fun res!126144 () Bool)

(declare-fun e!171726 () Bool)

(assert (=> d!80886 (=> res!126144 e!171726)))

(assert (=> d!80886 (= res!126144 (is-Nil!3856 tokens!465))))

(assert (=> d!80886 (= (forall!979 tokens!465 lambda!9365) e!171726)))

(declare-fun b!276292 () Bool)

(declare-fun e!171727 () Bool)

(assert (=> b!276292 (= e!171726 e!171727)))

(declare-fun res!126145 () Bool)

(assert (=> b!276292 (=> (not res!126145) (not e!171727))))

(declare-fun dynLambda!2006 (Int Token!1216) Bool)

(assert (=> b!276292 (= res!126145 (dynLambda!2006 lambda!9365 (h!9253 tokens!465)))))

(declare-fun b!276293 () Bool)

(assert (=> b!276293 (= e!171727 (forall!979 (t!39022 tokens!465) lambda!9365))))

(assert (= (and d!80886 (not res!126144)) b!276292))

(assert (= (and b!276292 res!126145) b!276293))

(declare-fun b_lambda!8901 () Bool)

(assert (=> (not b_lambda!8901) (not b!276292)))

(declare-fun m!352721 () Bool)

(assert (=> b!276292 m!352721))

(declare-fun m!352723 () Bool)

(assert (=> b!276293 m!352723))

(assert (=> b!275633 d!80886))

(declare-fun d!80888 () Bool)

(declare-fun res!126148 () Bool)

(declare-fun e!171730 () Bool)

(assert (=> d!80888 (=> (not res!126148) (not e!171730))))

(declare-fun rulesValid!230 (LexerInterface!622 List!3865) Bool)

(assert (=> d!80888 (= res!126148 (rulesValid!230 thiss!17480 rules!1920))))

(assert (=> d!80888 (= (rulesInvariant!588 thiss!17480 rules!1920) e!171730)))

(declare-fun b!276296 () Bool)

(declare-datatypes ((List!3871 0))(
  ( (Nil!3861) (Cons!3861 (h!9258 String!4872) (t!39093 List!3871)) )
))
(declare-fun noDuplicateTag!230 (LexerInterface!622 List!3865 List!3871) Bool)

(assert (=> b!276296 (= e!171730 (noDuplicateTag!230 thiss!17480 rules!1920 Nil!3861))))

(assert (= (and d!80888 res!126148) b!276296))

(declare-fun m!352725 () Bool)

(assert (=> d!80888 m!352725))

(declare-fun m!352727 () Bool)

(assert (=> b!276296 m!352727))

(assert (=> b!275612 d!80888))

(declare-fun d!80890 () Bool)

(assert (=> d!80890 (= (inv!4772 (tag!946 (rule!1323 (h!9253 tokens!465)))) (= (mod (str.len (value!25292 (tag!946 (rule!1323 (h!9253 tokens!465))))) 2) 0))))

(assert (=> b!275613 d!80890))

(declare-fun d!80892 () Bool)

(declare-fun res!126151 () Bool)

(declare-fun e!171733 () Bool)

(assert (=> d!80892 (=> (not res!126151) (not e!171733))))

(declare-fun semiInverseModEq!265 (Int Int) Bool)

(assert (=> d!80892 (= res!126151 (semiInverseModEq!265 (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (toValue!1479 (transformation!736 (rule!1323 (h!9253 tokens!465))))))))

(assert (=> d!80892 (= (inv!4776 (transformation!736 (rule!1323 (h!9253 tokens!465)))) e!171733)))

(declare-fun b!276299 () Bool)

(declare-fun equivClasses!248 (Int Int) Bool)

(assert (=> b!276299 (= e!171733 (equivClasses!248 (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (toValue!1479 (transformation!736 (rule!1323 (h!9253 tokens!465))))))))

(assert (= (and d!80892 res!126151) b!276299))

(declare-fun m!352729 () Bool)

(assert (=> d!80892 m!352729))

(declare-fun m!352731 () Bool)

(assert (=> b!276299 m!352731))

(assert (=> b!275613 d!80892))

(declare-fun d!80894 () Bool)

(assert (=> d!80894 (= (isEmpty!2479 rules!1920) (is-Nil!3855 rules!1920))))

(assert (=> b!275634 d!80894))

(declare-fun d!80896 () Bool)

(assert (=> d!80896 (= (get!1285 lt!114359) (v!14715 lt!114359))))

(assert (=> b!275635 d!80896))

(declare-fun d!80898 () Bool)

(assert (=> d!80898 (= (isDefined!670 lt!114359) (not (isEmpty!2485 lt!114359)))))

(declare-fun bs!31032 () Bool)

(assert (= bs!31032 d!80898))

(declare-fun m!352733 () Bool)

(assert (=> bs!31032 m!352733))

(assert (=> b!275635 d!80898))

(declare-fun b!276300 () Bool)

(declare-fun res!126156 () Bool)

(declare-fun e!171734 () Bool)

(assert (=> b!276300 (=> (not res!126156) (not e!171734))))

(declare-fun lt!114724 () Option!827)

(assert (=> b!276300 (= res!126156 (= (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114724)))) (originalCharacters!779 (_1!2388 (get!1285 lt!114724)))))))

(declare-fun b!276301 () Bool)

(declare-fun res!126157 () Bool)

(assert (=> b!276301 (=> (not res!126157) (not e!171734))))

(assert (=> b!276301 (= res!126157 (= (++!1017 (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114724)))) (_2!2388 (get!1285 lt!114724))) lt!114364))))

(declare-fun b!276302 () Bool)

(declare-fun e!171735 () Option!827)

(declare-fun lt!114722 () Option!827)

(declare-fun lt!114721 () Option!827)

(assert (=> b!276302 (= e!171735 (ite (and (is-None!826 lt!114722) (is-None!826 lt!114721)) None!826 (ite (is-None!826 lt!114721) lt!114722 (ite (is-None!826 lt!114722) lt!114721 (ite (>= (size!3080 (_1!2388 (v!14715 lt!114722))) (size!3080 (_1!2388 (v!14715 lt!114721)))) lt!114722 lt!114721)))))))

(declare-fun call!15291 () Option!827)

(assert (=> b!276302 (= lt!114722 call!15291)))

(assert (=> b!276302 (= lt!114721 (maxPrefix!340 thiss!17480 (t!39021 rules!1920) lt!114364))))

(declare-fun b!276303 () Bool)

(declare-fun res!126155 () Bool)

(assert (=> b!276303 (=> (not res!126155) (not e!171734))))

(assert (=> b!276303 (= res!126155 (< (size!3082 (_2!2388 (get!1285 lt!114724))) (size!3082 lt!114364)))))

(declare-fun b!276304 () Bool)

(assert (=> b!276304 (= e!171734 (contains!736 rules!1920 (rule!1323 (_1!2388 (get!1285 lt!114724)))))))

(declare-fun b!276305 () Bool)

(assert (=> b!276305 (= e!171735 call!15291)))

(declare-fun b!276306 () Bool)

(declare-fun res!126152 () Bool)

(assert (=> b!276306 (=> (not res!126152) (not e!171734))))

(assert (=> b!276306 (= res!126152 (matchR!282 (regex!736 (rule!1323 (_1!2388 (get!1285 lt!114724)))) (list!1588 (charsOf!381 (_1!2388 (get!1285 lt!114724))))))))

(declare-fun b!276307 () Bool)

(declare-fun e!171736 () Bool)

(assert (=> b!276307 (= e!171736 e!171734)))

(declare-fun res!126154 () Bool)

(assert (=> b!276307 (=> (not res!126154) (not e!171734))))

(assert (=> b!276307 (= res!126154 (isDefined!670 lt!114724))))

(declare-fun b!276308 () Bool)

(declare-fun res!126158 () Bool)

(assert (=> b!276308 (=> (not res!126158) (not e!171734))))

(assert (=> b!276308 (= res!126158 (= (value!25293 (_1!2388 (get!1285 lt!114724))) (apply!793 (transformation!736 (rule!1323 (_1!2388 (get!1285 lt!114724)))) (seqFromList!839 (originalCharacters!779 (_1!2388 (get!1285 lt!114724)))))))))

(declare-fun d!80900 () Bool)

(assert (=> d!80900 e!171736))

(declare-fun res!126153 () Bool)

(assert (=> d!80900 (=> res!126153 e!171736)))

(assert (=> d!80900 (= res!126153 (isEmpty!2485 lt!114724))))

(assert (=> d!80900 (= lt!114724 e!171735)))

(declare-fun c!52314 () Bool)

(assert (=> d!80900 (= c!52314 (and (is-Cons!3855 rules!1920) (is-Nil!3855 (t!39021 rules!1920))))))

(declare-fun lt!114720 () Unit!5039)

(declare-fun lt!114723 () Unit!5039)

(assert (=> d!80900 (= lt!114720 lt!114723)))

(assert (=> d!80900 (isPrefix!404 lt!114364 lt!114364)))

(assert (=> d!80900 (= lt!114723 (lemmaIsPrefixRefl!214 lt!114364 lt!114364))))

(assert (=> d!80900 (rulesValidInductive!209 thiss!17480 rules!1920)))

(assert (=> d!80900 (= (maxPrefix!340 thiss!17480 rules!1920 lt!114364) lt!114724)))

(declare-fun bm!15286 () Bool)

(assert (=> bm!15286 (= call!15291 (maxPrefixOneRule!148 thiss!17480 (h!9252 rules!1920) lt!114364))))

(assert (= (and d!80900 c!52314) b!276305))

(assert (= (and d!80900 (not c!52314)) b!276302))

(assert (= (or b!276305 b!276302) bm!15286))

(assert (= (and d!80900 (not res!126153)) b!276307))

(assert (= (and b!276307 res!126154) b!276300))

(assert (= (and b!276300 res!126156) b!276303))

(assert (= (and b!276303 res!126155) b!276301))

(assert (= (and b!276301 res!126157) b!276308))

(assert (= (and b!276308 res!126158) b!276306))

(assert (= (and b!276306 res!126152) b!276304))

(declare-fun m!352735 () Bool)

(assert (=> b!276306 m!352735))

(declare-fun m!352737 () Bool)

(assert (=> b!276306 m!352737))

(assert (=> b!276306 m!352737))

(declare-fun m!352739 () Bool)

(assert (=> b!276306 m!352739))

(assert (=> b!276306 m!352739))

(declare-fun m!352741 () Bool)

(assert (=> b!276306 m!352741))

(declare-fun m!352743 () Bool)

(assert (=> b!276302 m!352743))

(assert (=> b!276304 m!352735))

(declare-fun m!352745 () Bool)

(assert (=> b!276304 m!352745))

(declare-fun m!352747 () Bool)

(assert (=> d!80900 m!352747))

(declare-fun m!352749 () Bool)

(assert (=> d!80900 m!352749))

(declare-fun m!352751 () Bool)

(assert (=> d!80900 m!352751))

(assert (=> d!80900 m!352167))

(assert (=> b!276301 m!352735))

(assert (=> b!276301 m!352737))

(assert (=> b!276301 m!352737))

(assert (=> b!276301 m!352739))

(assert (=> b!276301 m!352739))

(declare-fun m!352753 () Bool)

(assert (=> b!276301 m!352753))

(assert (=> b!276303 m!352735))

(declare-fun m!352755 () Bool)

(assert (=> b!276303 m!352755))

(assert (=> b!276303 m!352197))

(assert (=> b!276300 m!352735))

(assert (=> b!276300 m!352737))

(assert (=> b!276300 m!352737))

(assert (=> b!276300 m!352739))

(assert (=> b!276308 m!352735))

(declare-fun m!352757 () Bool)

(assert (=> b!276308 m!352757))

(assert (=> b!276308 m!352757))

(declare-fun m!352759 () Bool)

(assert (=> b!276308 m!352759))

(declare-fun m!352761 () Bool)

(assert (=> bm!15286 m!352761))

(declare-fun m!352763 () Bool)

(assert (=> b!276307 m!352763))

(assert (=> b!275635 d!80900))

(declare-fun d!80902 () Bool)

(assert (=> d!80902 (= (inv!4772 (tag!946 (h!9252 rules!1920))) (= (mod (str.len (value!25292 (tag!946 (h!9252 rules!1920)))) 2) 0))))

(assert (=> b!275609 d!80902))

(declare-fun d!80904 () Bool)

(declare-fun res!126159 () Bool)

(declare-fun e!171737 () Bool)

(assert (=> d!80904 (=> (not res!126159) (not e!171737))))

(assert (=> d!80904 (= res!126159 (semiInverseModEq!265 (toChars!1338 (transformation!736 (h!9252 rules!1920))) (toValue!1479 (transformation!736 (h!9252 rules!1920)))))))

(assert (=> d!80904 (= (inv!4776 (transformation!736 (h!9252 rules!1920))) e!171737)))

(declare-fun b!276309 () Bool)

(assert (=> b!276309 (= e!171737 (equivClasses!248 (toChars!1338 (transformation!736 (h!9252 rules!1920))) (toValue!1479 (transformation!736 (h!9252 rules!1920)))))))

(assert (= (and d!80904 res!126159) b!276309))

(declare-fun m!352765 () Bool)

(assert (=> d!80904 m!352765))

(declare-fun m!352767 () Bool)

(assert (=> b!276309 m!352767))

(assert (=> b!275609 d!80904))

(declare-fun d!80906 () Bool)

(assert (=> d!80906 (= (isDefined!670 lt!114357) (not (isEmpty!2485 lt!114357)))))

(declare-fun bs!31033 () Bool)

(assert (= bs!31033 d!80906))

(declare-fun m!352769 () Bool)

(assert (=> bs!31033 m!352769))

(assert (=> b!275630 d!80906))

(assert (=> b!275630 d!80784))

(declare-fun d!80908 () Bool)

(assert (=> d!80908 (= (inv!4772 (tag!946 (rule!1323 separatorToken!170))) (= (mod (str.len (value!25292 (tag!946 (rule!1323 separatorToken!170)))) 2) 0))))

(assert (=> b!275631 d!80908))

(declare-fun d!80910 () Bool)

(declare-fun res!126160 () Bool)

(declare-fun e!171738 () Bool)

(assert (=> d!80910 (=> (not res!126160) (not e!171738))))

(assert (=> d!80910 (= res!126160 (semiInverseModEq!265 (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (toValue!1479 (transformation!736 (rule!1323 separatorToken!170)))))))

(assert (=> d!80910 (= (inv!4776 (transformation!736 (rule!1323 separatorToken!170))) e!171738)))

(declare-fun b!276310 () Bool)

(assert (=> b!276310 (= e!171738 (equivClasses!248 (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (toValue!1479 (transformation!736 (rule!1323 separatorToken!170)))))))

(assert (= (and d!80910 res!126160) b!276310))

(declare-fun m!352771 () Bool)

(assert (=> d!80910 m!352771))

(declare-fun m!352773 () Bool)

(assert (=> b!276310 m!352773))

(assert (=> b!275631 d!80910))

(declare-fun d!80912 () Bool)

(declare-fun isEmpty!2488 (Option!826) Bool)

(assert (=> d!80912 (= (isDefined!669 (maxPrefixZipperSequence!303 thiss!17480 rules!1920 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465))))) (not (isEmpty!2488 (maxPrefixZipperSequence!303 thiss!17480 rules!1920 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))))

(declare-fun bs!31034 () Bool)

(assert (= bs!31034 d!80912))

(assert (=> bs!31034 m!351703))

(declare-fun m!352775 () Bool)

(assert (=> bs!31034 m!352775))

(assert (=> b!275610 d!80912))

(declare-fun e!171760 () Bool)

(declare-fun lt!114746 () Option!826)

(declare-fun b!276342 () Bool)

(declare-fun get!1287 (Option!826) tuple2!4346)

(declare-fun maxPrefixZipper!118 (LexerInterface!622 List!3865 List!3864) Option!827)

(assert (=> b!276342 (= e!171760 (= (list!1588 (_2!2389 (get!1287 lt!114746))) (_2!2388 (get!1285 (maxPrefixZipper!118 thiss!17480 rules!1920 (list!1588 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))))))

(declare-fun b!276343 () Bool)

(declare-fun e!171762 () Option!826)

(declare-fun lt!114745 () Option!826)

(declare-fun lt!114747 () Option!826)

(assert (=> b!276343 (= e!171762 (ite (and (is-None!825 lt!114745) (is-None!825 lt!114747)) None!825 (ite (is-None!825 lt!114747) lt!114745 (ite (is-None!825 lt!114745) lt!114747 (ite (>= (size!3080 (_1!2389 (v!14714 lt!114745))) (size!3080 (_1!2389 (v!14714 lt!114747)))) lt!114745 lt!114747)))))))

(declare-fun call!15294 () Option!826)

(assert (=> b!276343 (= lt!114745 call!15294)))

(assert (=> b!276343 (= lt!114747 (maxPrefixZipperSequence!303 thiss!17480 (t!39021 rules!1920) (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))

(declare-fun b!276344 () Bool)

(assert (=> b!276344 (= e!171762 call!15294)))

(declare-fun b!276345 () Bool)

(declare-fun res!126187 () Bool)

(declare-fun e!171761 () Bool)

(assert (=> b!276345 (=> (not res!126187) (not e!171761))))

(declare-fun e!171765 () Bool)

(assert (=> b!276345 (= res!126187 e!171765)))

(declare-fun res!126183 () Bool)

(assert (=> b!276345 (=> res!126183 e!171765)))

(assert (=> b!276345 (= res!126183 (not (isDefined!669 lt!114746)))))

(declare-fun d!80914 () Bool)

(assert (=> d!80914 e!171761))

(declare-fun res!126182 () Bool)

(assert (=> d!80914 (=> (not res!126182) (not e!171761))))

(assert (=> d!80914 (= res!126182 (= (isDefined!669 lt!114746) (isDefined!670 (maxPrefixZipper!118 thiss!17480 rules!1920 (list!1588 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465))))))))))

(assert (=> d!80914 (= lt!114746 e!171762)))

(declare-fun c!52320 () Bool)

(assert (=> d!80914 (= c!52320 (and (is-Cons!3855 rules!1920) (is-Nil!3855 (t!39021 rules!1920))))))

(declare-fun lt!114743 () Unit!5039)

(declare-fun lt!114742 () Unit!5039)

(assert (=> d!80914 (= lt!114743 lt!114742)))

(declare-fun lt!114748 () List!3864)

(declare-fun lt!114744 () List!3864)

(assert (=> d!80914 (isPrefix!404 lt!114748 lt!114744)))

(assert (=> d!80914 (= lt!114742 (lemmaIsPrefixRefl!214 lt!114748 lt!114744))))

(assert (=> d!80914 (= lt!114744 (list!1588 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))

(assert (=> d!80914 (= lt!114748 (list!1588 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))

(assert (=> d!80914 (rulesValidInductive!209 thiss!17480 rules!1920)))

(assert (=> d!80914 (= (maxPrefixZipperSequence!303 thiss!17480 rules!1920 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))) lt!114746)))

(declare-fun b!276346 () Bool)

(assert (=> b!276346 (= e!171765 e!171760)))

(declare-fun res!126185 () Bool)

(assert (=> b!276346 (=> (not res!126185) (not e!171760))))

(assert (=> b!276346 (= res!126185 (= (_1!2389 (get!1287 lt!114746)) (_1!2388 (get!1285 (maxPrefixZipper!118 thiss!17480 rules!1920 (list!1588 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))))))

(declare-fun bm!15289 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!119 (LexerInterface!622 Rule!1272 BalanceConc!2596) Option!826)

(assert (=> bm!15289 (= call!15294 (maxPrefixOneRuleZipperSequence!119 thiss!17480 (h!9252 rules!1920) (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))

(declare-fun b!276347 () Bool)

(declare-fun e!171764 () Bool)

(assert (=> b!276347 (= e!171761 e!171764)))

(declare-fun res!126186 () Bool)

(assert (=> b!276347 (=> res!126186 e!171764)))

(assert (=> b!276347 (= res!126186 (not (isDefined!669 lt!114746)))))

(declare-fun b!276348 () Bool)

(declare-fun e!171763 () Bool)

(assert (=> b!276348 (= e!171763 (= (list!1588 (_2!2389 (get!1287 lt!114746))) (_2!2388 (get!1285 (maxPrefix!340 thiss!17480 rules!1920 (list!1588 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))))))

(declare-fun b!276349 () Bool)

(assert (=> b!276349 (= e!171764 e!171763)))

(declare-fun res!126184 () Bool)

(assert (=> b!276349 (=> (not res!126184) (not e!171763))))

(assert (=> b!276349 (= res!126184 (= (_1!2389 (get!1287 lt!114746)) (_1!2388 (get!1285 (maxPrefix!340 thiss!17480 rules!1920 (list!1588 (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465)))))))))))

(assert (= (and d!80914 c!52320) b!276344))

(assert (= (and d!80914 (not c!52320)) b!276343))

(assert (= (or b!276344 b!276343) bm!15289))

(assert (= (and d!80914 res!126182) b!276345))

(assert (= (and b!276345 (not res!126183)) b!276346))

(assert (= (and b!276346 res!126185) b!276342))

(assert (= (and b!276345 res!126187) b!276347))

(assert (= (and b!276347 (not res!126186)) b!276349))

(assert (= (and b!276349 res!126184) b!276348))

(assert (=> b!276342 m!351701))

(declare-fun m!352797 () Bool)

(assert (=> b!276342 m!352797))

(declare-fun m!352799 () Bool)

(assert (=> b!276342 m!352799))

(declare-fun m!352801 () Bool)

(assert (=> b!276342 m!352801))

(declare-fun m!352803 () Bool)

(assert (=> b!276342 m!352803))

(declare-fun m!352805 () Bool)

(assert (=> b!276342 m!352805))

(assert (=> b!276342 m!352797))

(assert (=> b!276342 m!352801))

(declare-fun m!352807 () Bool)

(assert (=> d!80914 m!352807))

(assert (=> d!80914 m!351701))

(assert (=> d!80914 m!352797))

(declare-fun m!352809 () Bool)

(assert (=> d!80914 m!352809))

(assert (=> d!80914 m!352167))

(assert (=> d!80914 m!352801))

(declare-fun m!352811 () Bool)

(assert (=> d!80914 m!352811))

(declare-fun m!352813 () Bool)

(assert (=> d!80914 m!352813))

(assert (=> d!80914 m!352797))

(assert (=> d!80914 m!352801))

(assert (=> b!276347 m!352813))

(assert (=> b!276346 m!352799))

(assert (=> b!276346 m!351701))

(assert (=> b!276346 m!352797))

(assert (=> b!276346 m!352797))

(assert (=> b!276346 m!352801))

(assert (=> b!276346 m!352801))

(assert (=> b!276346 m!352803))

(assert (=> b!276348 m!351701))

(assert (=> b!276348 m!352797))

(declare-fun m!352815 () Bool)

(assert (=> b!276348 m!352815))

(declare-fun m!352817 () Bool)

(assert (=> b!276348 m!352817))

(assert (=> b!276348 m!352799))

(assert (=> b!276348 m!352805))

(assert (=> b!276348 m!352797))

(assert (=> b!276348 m!352815))

(assert (=> b!276349 m!352799))

(assert (=> b!276349 m!351701))

(assert (=> b!276349 m!352797))

(assert (=> b!276349 m!352797))

(assert (=> b!276349 m!352815))

(assert (=> b!276349 m!352815))

(assert (=> b!276349 m!352817))

(assert (=> b!276343 m!351701))

(declare-fun m!352819 () Bool)

(assert (=> b!276343 m!352819))

(assert (=> bm!15289 m!351701))

(declare-fun m!352821 () Bool)

(assert (=> bm!15289 m!352821))

(assert (=> b!276345 m!352813))

(assert (=> b!275610 d!80914))

(declare-fun d!80920 () Bool)

(assert (=> d!80920 (= (seqFromList!839 (originalCharacters!779 (h!9253 tokens!465))) (fromListB!332 (originalCharacters!779 (h!9253 tokens!465))))))

(declare-fun bs!31036 () Bool)

(assert (= bs!31036 d!80920))

(declare-fun m!352823 () Bool)

(assert (=> bs!31036 m!352823))

(assert (=> b!275610 d!80920))

(declare-fun d!80922 () Bool)

(assert (=> d!80922 (dynLambda!2006 lambda!9366 (h!9253 tokens!465))))

(declare-fun lt!114751 () Unit!5039)

(declare-fun choose!2497 (List!3866 Int Token!1216) Unit!5039)

(assert (=> d!80922 (= lt!114751 (choose!2497 tokens!465 lambda!9366 (h!9253 tokens!465)))))

(declare-fun e!171768 () Bool)

(assert (=> d!80922 e!171768))

(declare-fun res!126190 () Bool)

(assert (=> d!80922 (=> (not res!126190) (not e!171768))))

(assert (=> d!80922 (= res!126190 (forall!979 tokens!465 lambda!9366))))

(assert (=> d!80922 (= (forallContained!291 tokens!465 lambda!9366 (h!9253 tokens!465)) lt!114751)))

(declare-fun b!276352 () Bool)

(declare-fun contains!737 (List!3866 Token!1216) Bool)

(assert (=> b!276352 (= e!171768 (contains!737 tokens!465 (h!9253 tokens!465)))))

(assert (= (and d!80922 res!126190) b!276352))

(declare-fun b_lambda!8903 () Bool)

(assert (=> (not b_lambda!8903) (not d!80922)))

(declare-fun m!352825 () Bool)

(assert (=> d!80922 m!352825))

(declare-fun m!352827 () Bool)

(assert (=> d!80922 m!352827))

(declare-fun m!352829 () Bool)

(assert (=> d!80922 m!352829))

(declare-fun m!352831 () Bool)

(assert (=> b!276352 m!352831))

(assert (=> b!275610 d!80922))

(declare-fun d!80924 () Bool)

(assert (=> d!80924 (= (list!1588 (seqFromList!839 lt!114374)) (list!1591 (c!52184 (seqFromList!839 lt!114374))))))

(declare-fun bs!31037 () Bool)

(assert (= bs!31037 d!80924))

(declare-fun m!352833 () Bool)

(assert (=> bs!31037 m!352833))

(assert (=> b!275632 d!80924))

(declare-fun d!80926 () Bool)

(assert (=> d!80926 (= (seqFromList!839 lt!114374) (fromListB!332 lt!114374))))

(declare-fun bs!31038 () Bool)

(assert (= bs!31038 d!80926))

(declare-fun m!352835 () Bool)

(assert (=> bs!31038 m!352835))

(assert (=> b!275632 d!80926))

(declare-fun d!80928 () Bool)

(assert (=> d!80928 (= (isEmpty!2477 (_2!2388 lt!114377)) (is-Nil!3854 (_2!2388 lt!114377)))))

(assert (=> b!275606 d!80928))

(declare-fun d!80930 () Bool)

(declare-fun res!126195 () Bool)

(declare-fun e!171773 () Bool)

(assert (=> d!80930 (=> res!126195 e!171773)))

(assert (=> d!80930 (= res!126195 (not (is-Cons!3855 rules!1920)))))

(assert (=> d!80930 (= (sepAndNonSepRulesDisjointChars!325 rules!1920 rules!1920) e!171773)))

(declare-fun b!276357 () Bool)

(declare-fun e!171774 () Bool)

(assert (=> b!276357 (= e!171773 e!171774)))

(declare-fun res!126196 () Bool)

(assert (=> b!276357 (=> (not res!126196) (not e!171774))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!123 (Rule!1272 List!3865) Bool)

(assert (=> b!276357 (= res!126196 (ruleDisjointCharsFromAllFromOtherType!123 (h!9252 rules!1920) rules!1920))))

(declare-fun b!276358 () Bool)

(assert (=> b!276358 (= e!171774 (sepAndNonSepRulesDisjointChars!325 rules!1920 (t!39021 rules!1920)))))

(assert (= (and d!80930 (not res!126195)) b!276357))

(assert (= (and b!276357 res!126196) b!276358))

(declare-fun m!352837 () Bool)

(assert (=> b!276357 m!352837))

(declare-fun m!352839 () Bool)

(assert (=> b!276358 m!352839))

(assert (=> b!275629 d!80930))

(declare-fun d!80932 () Bool)

(declare-fun lt!114753 () Bool)

(declare-fun e!171775 () Bool)

(assert (=> d!80932 (= lt!114753 e!171775)))

(declare-fun res!126197 () Bool)

(assert (=> d!80932 (=> (not res!126197) (not e!171775))))

(assert (=> d!80932 (= res!126197 (= (list!1590 (_1!2390 (lex!414 thiss!17480 rules!1920 (print!347 thiss!17480 (singletonSeq!282 (h!9253 tokens!465)))))) (list!1590 (singletonSeq!282 (h!9253 tokens!465)))))))

(declare-fun e!171776 () Bool)

(assert (=> d!80932 (= lt!114753 e!171776)))

(declare-fun res!126199 () Bool)

(assert (=> d!80932 (=> (not res!126199) (not e!171776))))

(declare-fun lt!114752 () tuple2!4348)

(assert (=> d!80932 (= res!126199 (= (size!3083 (_1!2390 lt!114752)) 1))))

(assert (=> d!80932 (= lt!114752 (lex!414 thiss!17480 rules!1920 (print!347 thiss!17480 (singletonSeq!282 (h!9253 tokens!465)))))))

(assert (=> d!80932 (not (isEmpty!2479 rules!1920))))

(assert (=> d!80932 (= (rulesProduceIndividualToken!371 thiss!17480 rules!1920 (h!9253 tokens!465)) lt!114753)))

(declare-fun b!276359 () Bool)

(declare-fun res!126198 () Bool)

(assert (=> b!276359 (=> (not res!126198) (not e!171776))))

(assert (=> b!276359 (= res!126198 (= (apply!791 (_1!2390 lt!114752) 0) (h!9253 tokens!465)))))

(declare-fun b!276360 () Bool)

(assert (=> b!276360 (= e!171776 (isEmpty!2486 (_2!2390 lt!114752)))))

(declare-fun b!276361 () Bool)

(assert (=> b!276361 (= e!171775 (isEmpty!2486 (_2!2390 (lex!414 thiss!17480 rules!1920 (print!347 thiss!17480 (singletonSeq!282 (h!9253 tokens!465)))))))))

(assert (= (and d!80932 res!126199) b!276359))

(assert (= (and b!276359 res!126198) b!276360))

(assert (= (and d!80932 res!126197) b!276361))

(assert (=> d!80932 m!352143))

(declare-fun m!352841 () Bool)

(assert (=> d!80932 m!352841))

(declare-fun m!352843 () Bool)

(assert (=> d!80932 m!352843))

(assert (=> d!80932 m!351727))

(declare-fun m!352845 () Bool)

(assert (=> d!80932 m!352845))

(assert (=> d!80932 m!351765))

(assert (=> d!80932 m!352143))

(assert (=> d!80932 m!351765))

(declare-fun m!352847 () Bool)

(assert (=> d!80932 m!352847))

(assert (=> d!80932 m!351765))

(declare-fun m!352849 () Bool)

(assert (=> b!276359 m!352849))

(declare-fun m!352851 () Bool)

(assert (=> b!276360 m!352851))

(assert (=> b!276361 m!351765))

(assert (=> b!276361 m!351765))

(assert (=> b!276361 m!352143))

(assert (=> b!276361 m!352143))

(assert (=> b!276361 m!352841))

(declare-fun m!352853 () Bool)

(assert (=> b!276361 m!352853))

(assert (=> b!275608 d!80932))

(declare-fun d!80934 () Bool)

(assert (=> d!80934 (= (get!1285 lt!114357) (v!14715 lt!114357))))

(assert (=> b!275625 d!80934))

(declare-fun d!80936 () Bool)

(assert (=> d!80936 (= (head!899 tokens!465) (h!9253 tokens!465))))

(assert (=> b!275625 d!80936))

(declare-fun d!80938 () Bool)

(declare-fun e!171779 () Bool)

(assert (=> d!80938 e!171779))

(declare-fun res!126202 () Bool)

(assert (=> d!80938 (=> (not res!126202) (not e!171779))))

(declare-fun lt!114756 () BalanceConc!2598)

(assert (=> d!80938 (= res!126202 (= (list!1590 lt!114756) (Cons!3856 (h!9253 tokens!465) Nil!3856)))))

(declare-fun singleton!119 (Token!1216) BalanceConc!2598)

(assert (=> d!80938 (= lt!114756 (singleton!119 (h!9253 tokens!465)))))

(assert (=> d!80938 (= (singletonSeq!282 (h!9253 tokens!465)) lt!114756)))

(declare-fun b!276364 () Bool)

(declare-fun isBalanced!360 (Conc!1295) Bool)

(assert (=> b!276364 (= e!171779 (isBalanced!360 (c!52186 lt!114756)))))

(assert (= (and d!80938 res!126202) b!276364))

(declare-fun m!352855 () Bool)

(assert (=> d!80938 m!352855))

(declare-fun m!352857 () Bool)

(assert (=> d!80938 m!352857))

(declare-fun m!352859 () Bool)

(assert (=> b!276364 m!352859))

(assert (=> b!275605 d!80938))

(declare-fun d!80940 () Bool)

(declare-fun lt!114765 () BalanceConc!2596)

(assert (=> d!80940 (= (list!1588 lt!114765) (printList!298 thiss!17480 (list!1590 lt!114376)))))

(assert (=> d!80940 (= lt!114765 (printTailRec!310 thiss!17480 lt!114376 0 (BalanceConc!2597 Empty!1294)))))

(assert (=> d!80940 (= (print!347 thiss!17480 lt!114376) lt!114765)))

(declare-fun bs!31039 () Bool)

(assert (= bs!31039 d!80940))

(declare-fun m!352879 () Bool)

(assert (=> bs!31039 m!352879))

(declare-fun m!352881 () Bool)

(assert (=> bs!31039 m!352881))

(assert (=> bs!31039 m!352881))

(declare-fun m!352883 () Bool)

(assert (=> bs!31039 m!352883))

(assert (=> bs!31039 m!351761))

(assert (=> b!275605 d!80940))

(declare-fun d!80946 () Bool)

(declare-fun c!52323 () Bool)

(assert (=> d!80946 (= c!52323 (is-Cons!3856 lt!114366))))

(declare-fun e!171790 () List!3864)

(assert (=> d!80946 (= (printList!298 thiss!17480 lt!114366) e!171790)))

(declare-fun b!276382 () Bool)

(assert (=> b!276382 (= e!171790 (++!1017 (list!1588 (charsOf!381 (h!9253 lt!114366))) (printList!298 thiss!17480 (t!39022 lt!114366))))))

(declare-fun b!276383 () Bool)

(assert (=> b!276383 (= e!171790 Nil!3854)))

(assert (= (and d!80946 c!52323) b!276382))

(assert (= (and d!80946 (not c!52323)) b!276383))

(declare-fun m!352885 () Bool)

(assert (=> b!276382 m!352885))

(assert (=> b!276382 m!352885))

(declare-fun m!352887 () Bool)

(assert (=> b!276382 m!352887))

(declare-fun m!352889 () Bool)

(assert (=> b!276382 m!352889))

(assert (=> b!276382 m!352887))

(assert (=> b!276382 m!352889))

(declare-fun m!352891 () Bool)

(assert (=> b!276382 m!352891))

(assert (=> b!275605 d!80946))

(declare-fun d!80952 () Bool)

(assert (=> d!80952 (= (list!1588 lt!114363) (list!1591 (c!52184 lt!114363)))))

(declare-fun bs!31040 () Bool)

(assert (= bs!31040 d!80952))

(declare-fun m!352893 () Bool)

(assert (=> bs!31040 m!352893))

(assert (=> b!275605 d!80952))

(declare-fun d!80954 () Bool)

(declare-fun lt!114798 () BalanceConc!2596)

(declare-fun printListTailRec!135 (LexerInterface!622 List!3866 List!3864) List!3864)

(assert (=> d!80954 (= (list!1588 lt!114798) (printListTailRec!135 thiss!17480 (dropList!169 lt!114376 0) (list!1588 (BalanceConc!2597 Empty!1294))))))

(declare-fun e!171800 () BalanceConc!2596)

(assert (=> d!80954 (= lt!114798 e!171800)))

(declare-fun c!52328 () Bool)

(assert (=> d!80954 (= c!52328 (>= 0 (size!3083 lt!114376)))))

(declare-fun e!171801 () Bool)

(assert (=> d!80954 e!171801))

(declare-fun res!126222 () Bool)

(assert (=> d!80954 (=> (not res!126222) (not e!171801))))

(assert (=> d!80954 (= res!126222 (>= 0 0))))

(assert (=> d!80954 (= (printTailRec!310 thiss!17480 lt!114376 0 (BalanceConc!2597 Empty!1294)) lt!114798)))

(declare-fun b!276398 () Bool)

(assert (=> b!276398 (= e!171801 (<= 0 (size!3083 lt!114376)))))

(declare-fun b!276399 () Bool)

(assert (=> b!276399 (= e!171800 (BalanceConc!2597 Empty!1294))))

(declare-fun b!276400 () Bool)

(assert (=> b!276400 (= e!171800 (printTailRec!310 thiss!17480 lt!114376 (+ 0 1) (++!1019 (BalanceConc!2597 Empty!1294) (charsOf!381 (apply!791 lt!114376 0)))))))

(declare-fun lt!114797 () List!3866)

(assert (=> b!276400 (= lt!114797 (list!1590 lt!114376))))

(declare-fun lt!114796 () Unit!5039)

(assert (=> b!276400 (= lt!114796 (lemmaDropApply!209 lt!114797 0))))

(assert (=> b!276400 (= (head!899 (drop!222 lt!114797 0)) (apply!792 lt!114797 0))))

(declare-fun lt!114800 () Unit!5039)

(assert (=> b!276400 (= lt!114800 lt!114796)))

(declare-fun lt!114799 () List!3866)

(assert (=> b!276400 (= lt!114799 (list!1590 lt!114376))))

(declare-fun lt!114795 () Unit!5039)

(assert (=> b!276400 (= lt!114795 (lemmaDropTail!201 lt!114799 0))))

(assert (=> b!276400 (= (tail!489 (drop!222 lt!114799 0)) (drop!222 lt!114799 (+ 0 1)))))

(declare-fun lt!114794 () Unit!5039)

(assert (=> b!276400 (= lt!114794 lt!114795)))

(assert (= (and d!80954 res!126222) b!276398))

(assert (= (and d!80954 c!52328) b!276399))

(assert (= (and d!80954 (not c!52328)) b!276400))

(declare-fun m!352903 () Bool)

(assert (=> d!80954 m!352903))

(declare-fun m!352905 () Bool)

(assert (=> d!80954 m!352905))

(assert (=> d!80954 m!352905))

(assert (=> d!80954 m!352903))

(declare-fun m!352907 () Bool)

(assert (=> d!80954 m!352907))

(declare-fun m!352909 () Bool)

(assert (=> d!80954 m!352909))

(declare-fun m!352911 () Bool)

(assert (=> d!80954 m!352911))

(assert (=> b!276398 m!352909))

(declare-fun m!352913 () Bool)

(assert (=> b!276400 m!352913))

(declare-fun m!352915 () Bool)

(assert (=> b!276400 m!352915))

(declare-fun m!352917 () Bool)

(assert (=> b!276400 m!352917))

(declare-fun m!352919 () Bool)

(assert (=> b!276400 m!352919))

(declare-fun m!352921 () Bool)

(assert (=> b!276400 m!352921))

(assert (=> b!276400 m!352921))

(declare-fun m!352923 () Bool)

(assert (=> b!276400 m!352923))

(assert (=> b!276400 m!352919))

(declare-fun m!352925 () Bool)

(assert (=> b!276400 m!352925))

(declare-fun m!352927 () Bool)

(assert (=> b!276400 m!352927))

(assert (=> b!276400 m!352917))

(assert (=> b!276400 m!352927))

(declare-fun m!352929 () Bool)

(assert (=> b!276400 m!352929))

(assert (=> b!276400 m!352881))

(declare-fun m!352931 () Bool)

(assert (=> b!276400 m!352931))

(declare-fun m!352933 () Bool)

(assert (=> b!276400 m!352933))

(assert (=> b!276400 m!352913))

(declare-fun m!352935 () Bool)

(assert (=> b!276400 m!352935))

(assert (=> b!275605 d!80954))

(declare-fun d!80960 () Bool)

(assert (=> d!80960 (= (isEmpty!2477 lt!114362) (is-Nil!3854 lt!114362))))

(assert (=> b!275627 d!80960))

(declare-fun b!276408 () Bool)

(declare-fun e!171806 () Bool)

(declare-fun tp_is_empty!1825 () Bool)

(declare-fun tp!103562 () Bool)

(assert (=> b!276408 (= e!171806 (and tp_is_empty!1825 tp!103562))))

(assert (=> b!275622 (= tp!103508 e!171806)))

(assert (= (and b!275622 (is-Cons!3854 (originalCharacters!779 (h!9253 tokens!465)))) b!276408))

(declare-fun b!276409 () Bool)

(declare-fun e!171807 () Bool)

(declare-fun tp!103563 () Bool)

(assert (=> b!276409 (= e!171807 (and tp_is_empty!1825 tp!103563))))

(assert (=> b!275623 (= tp!103511 e!171807)))

(assert (= (and b!275623 (is-Cons!3854 (originalCharacters!779 separatorToken!170))) b!276409))

(declare-fun b!276422 () Bool)

(declare-fun e!171810 () Bool)

(declare-fun tp!103577 () Bool)

(assert (=> b!276422 (= e!171810 tp!103577)))

(declare-fun b!276421 () Bool)

(declare-fun tp!103578 () Bool)

(declare-fun tp!103574 () Bool)

(assert (=> b!276421 (= e!171810 (and tp!103578 tp!103574))))

(declare-fun b!276420 () Bool)

(assert (=> b!276420 (= e!171810 tp_is_empty!1825)))

(declare-fun b!276423 () Bool)

(declare-fun tp!103575 () Bool)

(declare-fun tp!103576 () Bool)

(assert (=> b!276423 (= e!171810 (and tp!103575 tp!103576))))

(assert (=> b!275613 (= tp!103510 e!171810)))

(assert (= (and b!275613 (is-ElementMatch!960 (regex!736 (rule!1323 (h!9253 tokens!465))))) b!276420))

(assert (= (and b!275613 (is-Concat!1719 (regex!736 (rule!1323 (h!9253 tokens!465))))) b!276421))

(assert (= (and b!275613 (is-Star!960 (regex!736 (rule!1323 (h!9253 tokens!465))))) b!276422))

(assert (= (and b!275613 (is-Union!960 (regex!736 (rule!1323 (h!9253 tokens!465))))) b!276423))

(declare-fun b!276426 () Bool)

(declare-fun e!171811 () Bool)

(declare-fun tp!103582 () Bool)

(assert (=> b!276426 (= e!171811 tp!103582)))

(declare-fun b!276425 () Bool)

(declare-fun tp!103583 () Bool)

(declare-fun tp!103579 () Bool)

(assert (=> b!276425 (= e!171811 (and tp!103583 tp!103579))))

(declare-fun b!276424 () Bool)

(assert (=> b!276424 (= e!171811 tp_is_empty!1825)))

(declare-fun b!276427 () Bool)

(declare-fun tp!103580 () Bool)

(declare-fun tp!103581 () Bool)

(assert (=> b!276427 (= e!171811 (and tp!103580 tp!103581))))

(assert (=> b!275609 (= tp!103503 e!171811)))

(assert (= (and b!275609 (is-ElementMatch!960 (regex!736 (h!9252 rules!1920)))) b!276424))

(assert (= (and b!275609 (is-Concat!1719 (regex!736 (h!9252 rules!1920)))) b!276425))

(assert (= (and b!275609 (is-Star!960 (regex!736 (h!9252 rules!1920)))) b!276426))

(assert (= (and b!275609 (is-Union!960 (regex!736 (h!9252 rules!1920)))) b!276427))

(declare-fun b!276430 () Bool)

(declare-fun e!171812 () Bool)

(declare-fun tp!103587 () Bool)

(assert (=> b!276430 (= e!171812 tp!103587)))

(declare-fun b!276429 () Bool)

(declare-fun tp!103588 () Bool)

(declare-fun tp!103584 () Bool)

(assert (=> b!276429 (= e!171812 (and tp!103588 tp!103584))))

(declare-fun b!276428 () Bool)

(assert (=> b!276428 (= e!171812 tp_is_empty!1825)))

(declare-fun b!276431 () Bool)

(declare-fun tp!103585 () Bool)

(declare-fun tp!103586 () Bool)

(assert (=> b!276431 (= e!171812 (and tp!103585 tp!103586))))

(assert (=> b!275631 (= tp!103501 e!171812)))

(assert (= (and b!275631 (is-ElementMatch!960 (regex!736 (rule!1323 separatorToken!170)))) b!276428))

(assert (= (and b!275631 (is-Concat!1719 (regex!736 (rule!1323 separatorToken!170)))) b!276429))

(assert (= (and b!275631 (is-Star!960 (regex!736 (rule!1323 separatorToken!170)))) b!276430))

(assert (= (and b!275631 (is-Union!960 (regex!736 (rule!1323 separatorToken!170)))) b!276431))

(declare-fun b!276434 () Bool)

(declare-fun e!171815 () Bool)

(assert (=> b!276434 (= e!171815 true)))

(declare-fun b!276433 () Bool)

(declare-fun e!171814 () Bool)

(assert (=> b!276433 (= e!171814 e!171815)))

(declare-fun b!276432 () Bool)

(declare-fun e!171813 () Bool)

(assert (=> b!276432 (= e!171813 e!171814)))

(assert (=> b!275649 e!171813))

(assert (= b!276433 b!276434))

(assert (= b!276432 b!276433))

(assert (= (and b!275649 (is-Cons!3855 (t!39021 rules!1920))) b!276432))

(assert (=> b!276434 (< (dynLambda!1998 order!2991 (toValue!1479 (transformation!736 (h!9252 (t!39021 rules!1920))))) (dynLambda!1999 order!2993 lambda!9366))))

(assert (=> b!276434 (< (dynLambda!2000 order!2995 (toChars!1338 (transformation!736 (h!9252 (t!39021 rules!1920))))) (dynLambda!1999 order!2993 lambda!9366))))

(declare-fun b!276448 () Bool)

(declare-fun b_free!10197 () Bool)

(declare-fun b_next!10197 () Bool)

(assert (=> b!276448 (= b_free!10197 (not b_next!10197))))

(declare-fun tp!103603 () Bool)

(declare-fun b_and!22187 () Bool)

(assert (=> b!276448 (= tp!103603 b_and!22187)))

(declare-fun b_free!10199 () Bool)

(declare-fun b_next!10199 () Bool)

(assert (=> b!276448 (= b_free!10199 (not b_next!10199))))

(declare-fun t!39077 () Bool)

(declare-fun tb!15805 () Bool)

(assert (=> (and b!276448 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 (t!39022 tokens!465))))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170)))) t!39077) tb!15805))

(declare-fun result!19486 () Bool)

(assert (= result!19486 result!19452))

(assert (=> b!275799 t!39077))

(declare-fun t!39079 () Bool)

(declare-fun tb!15807 () Bool)

(assert (=> (and b!276448 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 (t!39022 tokens!465))))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465))))) t!39079) tb!15807))

(declare-fun result!19488 () Bool)

(assert (= result!19488 result!19460))

(assert (=> b!275812 t!39079))

(assert (=> d!80840 t!39077))

(assert (=> d!80848 t!39079))

(declare-fun b_and!22189 () Bool)

(declare-fun tp!103599 () Bool)

(assert (=> b!276448 (= tp!103599 (and (=> t!39077 result!19486) (=> t!39079 result!19488) b_and!22189))))

(declare-fun b!276446 () Bool)

(declare-fun tp!103600 () Bool)

(declare-fun e!171829 () Bool)

(declare-fun e!171832 () Bool)

(assert (=> b!276446 (= e!171829 (and (inv!21 (value!25293 (h!9253 (t!39022 tokens!465)))) e!171832 tp!103600))))

(declare-fun e!171830 () Bool)

(assert (=> b!275620 (= tp!103509 e!171830)))

(declare-fun e!171833 () Bool)

(declare-fun tp!103602 () Bool)

(declare-fun b!276447 () Bool)

(assert (=> b!276447 (= e!171832 (and tp!103602 (inv!4772 (tag!946 (rule!1323 (h!9253 (t!39022 tokens!465))))) (inv!4776 (transformation!736 (rule!1323 (h!9253 (t!39022 tokens!465))))) e!171833))))

(declare-fun b!276445 () Bool)

(declare-fun tp!103601 () Bool)

(assert (=> b!276445 (= e!171830 (and (inv!4775 (h!9253 (t!39022 tokens!465))) e!171829 tp!103601))))

(assert (=> b!276448 (= e!171833 (and tp!103603 tp!103599))))

(assert (= b!276447 b!276448))

(assert (= b!276446 b!276447))

(assert (= b!276445 b!276446))

(assert (= (and b!275620 (is-Cons!3856 (t!39022 tokens!465))) b!276445))

(declare-fun m!352973 () Bool)

(assert (=> b!276446 m!352973))

(declare-fun m!352975 () Bool)

(assert (=> b!276447 m!352975))

(declare-fun m!352977 () Bool)

(assert (=> b!276447 m!352977))

(declare-fun m!352979 () Bool)

(assert (=> b!276445 m!352979))

(declare-fun b!276459 () Bool)

(declare-fun b_free!10201 () Bool)

(declare-fun b_next!10201 () Bool)

(assert (=> b!276459 (= b_free!10201 (not b_next!10201))))

(declare-fun tp!103615 () Bool)

(declare-fun b_and!22191 () Bool)

(assert (=> b!276459 (= tp!103615 b_and!22191)))

(declare-fun b_free!10203 () Bool)

(declare-fun b_next!10203 () Bool)

(assert (=> b!276459 (= b_free!10203 (not b_next!10203))))

(declare-fun t!39081 () Bool)

(declare-fun tb!15809 () Bool)

(assert (=> (and b!276459 (= (toChars!1338 (transformation!736 (h!9252 (t!39021 rules!1920)))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170)))) t!39081) tb!15809))

(declare-fun result!19492 () Bool)

(assert (= result!19492 result!19452))

(assert (=> b!275799 t!39081))

(declare-fun t!39083 () Bool)

(declare-fun tb!15811 () Bool)

(assert (=> (and b!276459 (= (toChars!1338 (transformation!736 (h!9252 (t!39021 rules!1920)))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465))))) t!39083) tb!15811))

(declare-fun result!19494 () Bool)

(assert (= result!19494 result!19460))

(assert (=> b!275812 t!39083))

(assert (=> d!80840 t!39081))

(assert (=> d!80848 t!39083))

(declare-fun b_and!22193 () Bool)

(declare-fun tp!103614 () Bool)

(assert (=> b!276459 (= tp!103614 (and (=> t!39081 result!19492) (=> t!39083 result!19494) b_and!22193))))

(declare-fun e!171844 () Bool)

(assert (=> b!276459 (= e!171844 (and tp!103615 tp!103614))))

(declare-fun b!276458 () Bool)

(declare-fun e!171845 () Bool)

(declare-fun tp!103613 () Bool)

(assert (=> b!276458 (= e!171845 (and tp!103613 (inv!4772 (tag!946 (h!9252 (t!39021 rules!1920)))) (inv!4776 (transformation!736 (h!9252 (t!39021 rules!1920)))) e!171844))))

(declare-fun b!276457 () Bool)

(declare-fun e!171843 () Bool)

(declare-fun tp!103612 () Bool)

(assert (=> b!276457 (= e!171843 (and e!171845 tp!103612))))

(assert (=> b!275640 (= tp!103500 e!171843)))

(assert (= b!276458 b!276459))

(assert (= b!276457 b!276458))

(assert (= (and b!275640 (is-Cons!3855 (t!39021 rules!1920))) b!276457))

(declare-fun m!352981 () Bool)

(assert (=> b!276458 m!352981))

(declare-fun m!352983 () Bool)

(assert (=> b!276458 m!352983))

(declare-fun b_lambda!8907 () Bool)

(assert (= b_lambda!8889 (or (and b!275628 b_free!10183 (= (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))))) (and b!275607 b_free!10179) (and b!276448 b_free!10199 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 (t!39022 tokens!465))))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))))) (and b!276459 b_free!10203 (= (toChars!1338 (transformation!736 (h!9252 (t!39021 rules!1920)))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))))) (and b!275626 b_free!10175 (= (toChars!1338 (transformation!736 (h!9252 rules!1920))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))))) b_lambda!8907)))

(declare-fun b_lambda!8909 () Bool)

(assert (= b_lambda!8903 (or b!275610 b_lambda!8909)))

(declare-fun bs!31042 () Bool)

(declare-fun d!80964 () Bool)

(assert (= bs!31042 (and d!80964 b!275610)))

(assert (=> bs!31042 (= (dynLambda!2006 lambda!9366 (h!9253 tokens!465)) (rulesProduceIndividualToken!371 thiss!17480 rules!1920 (h!9253 tokens!465)))))

(assert (=> bs!31042 m!351695))

(assert (=> d!80922 d!80964))

(declare-fun b_lambda!8911 () Bool)

(assert (= b_lambda!8887 (or (and b!275628 b_free!10183) (and b!276459 b_free!10203 (= (toChars!1338 (transformation!736 (h!9252 (t!39021 rules!1920)))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))))) (and b!275607 b_free!10179 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))))) (and b!275626 b_free!10175 (= (toChars!1338 (transformation!736 (h!9252 rules!1920))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))))) (and b!276448 b_free!10199 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 (t!39022 tokens!465))))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))))) b_lambda!8911)))

(declare-fun b_lambda!8913 () Bool)

(assert (= b_lambda!8901 (or b!275633 b_lambda!8913)))

(declare-fun bs!31044 () Bool)

(declare-fun d!80966 () Bool)

(assert (= bs!31044 (and d!80966 b!275633)))

(assert (=> bs!31044 (= (dynLambda!2006 lambda!9365 (h!9253 tokens!465)) (not (isSeparator!736 (rule!1323 (h!9253 tokens!465)))))))

(assert (=> b!276292 d!80966))

(declare-fun b_lambda!8915 () Bool)

(assert (= b_lambda!8895 (or (and b!275628 b_free!10183) (and b!276459 b_free!10203 (= (toChars!1338 (transformation!736 (h!9252 (t!39021 rules!1920)))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))))) (and b!275607 b_free!10179 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))))) (and b!275626 b_free!10175 (= (toChars!1338 (transformation!736 (h!9252 rules!1920))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))))) (and b!276448 b_free!10199 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 (t!39022 tokens!465))))) (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))))) b_lambda!8915)))

(declare-fun b_lambda!8917 () Bool)

(assert (= b_lambda!8897 (or (and b!275628 b_free!10183 (= (toChars!1338 (transformation!736 (rule!1323 separatorToken!170))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))))) (and b!275607 b_free!10179) (and b!276448 b_free!10199 (= (toChars!1338 (transformation!736 (rule!1323 (h!9253 (t!39022 tokens!465))))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))))) (and b!276459 b_free!10203 (= (toChars!1338 (transformation!736 (h!9252 (t!39021 rules!1920)))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))))) (and b!275626 b_free!10175 (= (toChars!1338 (transformation!736 (h!9252 rules!1920))) (toChars!1338 (transformation!736 (rule!1323 (h!9253 tokens!465)))))) b_lambda!8917)))

(push 1)

(assert (not bm!15276))

(assert (not b!275958))

(assert (not b!276088))

(assert (not d!80830))

(assert (not bm!15239))

(assert (not d!80812))

(assert (not d!80784))

(assert (not d!80790))

(assert b_and!22191)

(assert (not b_lambda!8913))

(assert (not b_next!10181))

(assert (not b!276347))

(assert (not bm!15278))

(assert (not b!276192))

(assert (not d!80952))

(assert (not b_next!10197))

(assert (not b!275809))

(assert (not b_next!10203))

(assert (not b!275808))

(assert (not b!276209))

(assert (not b!275838))

(assert (not d!80932))

(assert (not b!275956))

(assert (not d!80892))

(assert (not b!276302))

(assert (not b!276286))

(assert (not bm!15260))

(assert (not b_lambda!8907))

(assert (not b!276084))

(assert (not b!275983))

(assert (not d!80848))

(assert (not d!80832))

(assert (not b!275963))

(assert (not b_lambda!8909))

(assert (not b!276303))

(assert (not b!276352))

(assert (not b!276346))

(assert (not b!276458))

(assert (not b!276222))

(assert (not b!276446))

(assert (not b!276349))

(assert (not d!80854))

(assert (not b!275788))

(assert b_and!22179)

(assert (not b!276230))

(assert (not d!80834))

(assert (not b!276221))

(assert (not b!276299))

(assert (not d!80940))

(assert (not b!276364))

(assert (not bm!15205))

(assert (not b!276426))

(assert (not b!275934))

(assert (not bs!31042))

(assert (not b!276382))

(assert b_and!22189)

(assert (not bm!15285))

(assert (not b!276432))

(assert (not d!80740))

(assert (not b_lambda!8915))

(assert (not d!80746))

(assert (not d!80954))

(assert (not d!80938))

(assert (not b!276348))

(assert b_and!22187)

(assert (not b!276310))

(assert (not b!276205))

(assert (not d!80904))

(assert (not b!276296))

(assert (not b!276422))

(assert (not b!275841))

(assert (not b!276358))

(assert b_and!22175)

(assert (not bm!15277))

(assert (not b!276421))

(assert (not b!275959))

(assert (not d!80920))

(assert b_and!22193)

(assert (not b!276217))

(assert (not bm!15289))

(assert (not b!276199))

(assert (not b!276081))

(assert (not b!276182))

(assert (not b!276398))

(assert (not b!275812))

(assert (not b!275793))

(assert (not b_next!10199))

(assert (not b!275837))

(assert (not tb!15781))

(assert (not b!276077))

(assert (not b!276204))

(assert (not bm!15206))

(assert (not d!80900))

(assert (not b!276308))

(assert (not d!80926))

(assert (not b!276285))

(assert (not b!275980))

(assert (not b!275929))

(assert (not bm!15284))

(assert (not b!276181))

(assert (not b!276301))

(assert (not b!276198))

(assert (not b!276429))

(assert (not b!276445))

(assert (not b!276307))

(assert (not b!276213))

(assert (not d!80924))

(assert (not b!275813))

(assert b_and!22125)

(assert (not b!275930))

(assert (not b_next!10175))

(assert (not b!276409))

(assert (not b!276281))

(assert (not b_next!10177))

(assert (not b!275799))

(assert (not b!275957))

(assert (not b!276425))

(assert (not b!275962))

(assert (not b!275985))

(assert (not b_next!10183))

(assert (not d!80838))

(assert (not d!80882))

(assert (not d!80922))

(assert (not b!276357))

(assert (not d!80788))

(assert (not b!276309))

(assert (not b!276028))

(assert (not d!80852))

(assert (not d!80906))

(assert b_and!22129)

(assert (not b!275785))

(assert (not b!276193))

(assert (not d!80750))

(assert (not b!276359))

(assert (not b!275800))

(assert (not b_next!10173))

(assert (not b!275844))

(assert (not d!80850))

(assert (not b!276300))

(assert (not d!80846))

(assert (not b!276360))

(assert (not b!276361))

(assert (not d!80910))

(assert tp_is_empty!1825)

(assert (not b!275964))

(assert (not b!275928))

(assert (not b!276208))

(assert (not b!276431))

(assert (not b!276180))

(assert (not b!276342))

(assert (not d!80914))

(assert (not d!80898))

(assert (not d!80814))

(assert b_and!22177)

(assert (not b!276083))

(assert (not b!275974))

(assert (not b!276210))

(assert (not d!80842))

(assert (not b!275960))

(assert (not b!275836))

(assert (not b!276200))

(assert (not bm!15203))

(assert (not tb!15787))

(assert (not b!276216))

(assert (not d!80798))

(assert (not b!276306))

(assert (not b!276343))

(assert (not b_lambda!8917))

(assert (not b!276027))

(assert (not b!275984))

(assert (not b!276447))

(assert (not d!80840))

(assert (not d!80888))

(assert (not b!275935))

(assert (not b!276280))

(assert (not b!275981))

(assert (not bm!15282))

(assert (not b!275976))

(assert (not d!80858))

(assert (not b!275975))

(assert (not b!276430))

(assert (not b!276196))

(assert (not bm!15286))

(assert (not bm!15240))

(assert (not b!276304))

(assert (not bm!15234))

(assert (not b!275814))

(assert (not b!276283))

(assert (not d!80884))

(assert (not b!275845))

(assert (not d!80856))

(assert (not b!276279))

(assert (not d!80844))

(assert (not b!275786))

(assert (not b!276229))

(assert (not d!80800))

(assert (not b_lambda!8911))

(assert (not b!276427))

(assert (not b!275926))

(assert (not bm!15233))

(assert (not b!276225))

(assert (not b!276400))

(assert (not b!275791))

(assert (not b!276423))

(assert (not d!80912))

(assert (not d!80742))

(assert (not b!275977))

(assert b_and!22121)

(assert (not b_next!10201))

(assert (not b!275805))

(assert (not b!276082))

(assert (not bm!15283))

(assert (not b!276457))

(assert (not b!276408))

(assert (not b!275979))

(assert (not d!80744))

(assert (not b_next!10179))

(assert (not d!80748))

(assert (not b!276345))

(assert (not bm!15204))

(assert (not b!275978))

(assert (not b!275790))

(assert (not bm!15232))

(assert (not b!276293))

(assert (not b!276226))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!10197))

(assert (not b_next!10203))

(assert b_and!22179)

(assert (not b_next!10199))

(assert b_and!22125)

(assert (not b_next!10183))

(assert b_and!22177)

(assert (not b_next!10179))

(assert b_and!22191)

(assert (not b_next!10181))

(assert b_and!22189)

(assert b_and!22187)

(assert b_and!22175)

(assert b_and!22193)

(assert (not b_next!10175))

(assert (not b_next!10177))

(assert b_and!22129)

(assert (not b_next!10173))

(assert b_and!22121)

(assert (not b_next!10201))

(check-sat)

(pop 1)

