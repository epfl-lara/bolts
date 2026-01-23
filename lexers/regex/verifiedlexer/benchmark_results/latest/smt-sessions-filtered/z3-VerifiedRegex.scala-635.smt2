; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20522 () Bool)

(assert start!20522)

(declare-fun b!190916 () Bool)

(declare-fun b_free!7641 () Bool)

(declare-fun b_next!7641 () Bool)

(assert (=> b!190916 (= b_free!7641 (not b_next!7641))))

(declare-fun tp!88769 () Bool)

(declare-fun b_and!13245 () Bool)

(assert (=> b!190916 (= tp!88769 b_and!13245)))

(declare-fun b_free!7643 () Bool)

(declare-fun b_next!7643 () Bool)

(assert (=> b!190916 (= b_free!7643 (not b_next!7643))))

(declare-fun tp!88771 () Bool)

(declare-fun b_and!13247 () Bool)

(assert (=> b!190916 (= tp!88771 b_and!13247)))

(declare-fun b!190938 () Bool)

(declare-fun b_free!7645 () Bool)

(declare-fun b_next!7645 () Bool)

(assert (=> b!190938 (= b_free!7645 (not b_next!7645))))

(declare-fun tp!88781 () Bool)

(declare-fun b_and!13249 () Bool)

(assert (=> b!190938 (= tp!88781 b_and!13249)))

(declare-fun b_free!7647 () Bool)

(declare-fun b_next!7647 () Bool)

(assert (=> b!190938 (= b_free!7647 (not b_next!7647))))

(declare-fun tp!88772 () Bool)

(declare-fun b_and!13251 () Bool)

(assert (=> b!190938 (= tp!88772 b_and!13251)))

(declare-fun b!190906 () Bool)

(declare-fun b_free!7649 () Bool)

(declare-fun b_next!7649 () Bool)

(assert (=> b!190906 (= b_free!7649 (not b_next!7649))))

(declare-fun tp!88780 () Bool)

(declare-fun b_and!13253 () Bool)

(assert (=> b!190906 (= tp!88780 b_and!13253)))

(declare-fun b_free!7651 () Bool)

(declare-fun b_next!7651 () Bool)

(assert (=> b!190906 (= b_free!7651 (not b_next!7651))))

(declare-fun tp!88775 () Bool)

(declare-fun b_and!13255 () Bool)

(assert (=> b!190906 (= tp!88775 b_and!13255)))

(declare-fun bs!18778 () Bool)

(declare-fun b!190910 () Bool)

(declare-fun b!190918 () Bool)

(assert (= bs!18778 (and b!190910 b!190918)))

(declare-fun lambda!5840 () Int)

(declare-fun lambda!5839 () Int)

(assert (=> bs!18778 (not (= lambda!5840 lambda!5839))))

(declare-fun b!190958 () Bool)

(declare-fun e!117391 () Bool)

(assert (=> b!190958 (= e!117391 true)))

(declare-fun b!190957 () Bool)

(declare-fun e!117390 () Bool)

(assert (=> b!190957 (= e!117390 e!117391)))

(declare-fun b!190956 () Bool)

(declare-fun e!117389 () Bool)

(assert (=> b!190956 (= e!117389 e!117390)))

(assert (=> b!190910 e!117389))

(assert (= b!190957 b!190958))

(assert (= b!190956 b!190957))

(declare-datatypes ((List!3227 0))(
  ( (Nil!3217) (Cons!3217 (h!8614 (_ BitVec 16)) (t!28929 List!3227)) )
))
(declare-datatypes ((TokenValue!615 0))(
  ( (FloatLiteralValue!1230 (text!4750 List!3227)) (TokenValueExt!614 (__x!2717 Int)) (Broken!3075 (value!21190 List!3227)) (Object!624) (End!615) (Def!615) (Underscore!615) (Match!615) (Else!615) (Error!615) (Case!615) (If!615) (Extends!615) (Abstract!615) (Class!615) (Val!615) (DelimiterValue!1230 (del!675 List!3227)) (KeywordValue!621 (value!21191 List!3227)) (CommentValue!1230 (value!21192 List!3227)) (WhitespaceValue!1230 (value!21193 List!3227)) (IndentationValue!615 (value!21194 List!3227)) (String!4154) (Int32!615) (Broken!3076 (value!21195 List!3227)) (Boolean!616) (Unit!3035) (OperatorValue!618 (op!675 List!3227)) (IdentifierValue!1230 (value!21196 List!3227)) (IdentifierValue!1231 (value!21197 List!3227)) (WhitespaceValue!1231 (value!21198 List!3227)) (True!1230) (False!1230) (Broken!3077 (value!21199 List!3227)) (Broken!3078 (value!21200 List!3227)) (True!1231) (RightBrace!615) (RightBracket!615) (Colon!615) (Null!615) (Comma!615) (LeftBracket!615) (False!1231) (LeftBrace!615) (ImaginaryLiteralValue!615 (text!4751 List!3227)) (StringLiteralValue!1845 (value!21201 List!3227)) (EOFValue!615 (value!21202 List!3227)) (IdentValue!615 (value!21203 List!3227)) (DelimiterValue!1231 (value!21204 List!3227)) (DedentValue!615 (value!21205 List!3227)) (NewLineValue!615 (value!21206 List!3227)) (IntegerValue!1845 (value!21207 (_ BitVec 32)) (text!4752 List!3227)) (IntegerValue!1846 (value!21208 Int) (text!4753 List!3227)) (Times!615) (Or!615) (Equal!615) (Minus!615) (Broken!3079 (value!21209 List!3227)) (And!615) (Div!615) (LessEqual!615) (Mod!615) (Concat!1432) (Not!615) (Plus!615) (SpaceValue!615 (value!21210 List!3227)) (IntegerValue!1847 (value!21211 Int) (text!4754 List!3227)) (StringLiteralValue!1846 (text!4755 List!3227)) (FloatLiteralValue!1231 (text!4756 List!3227)) (BytesLiteralValue!615 (value!21212 List!3227)) (CommentValue!1231 (value!21213 List!3227)) (StringLiteralValue!1847 (value!21214 List!3227)) (ErrorTokenValue!615 (msg!676 List!3227)) )
))
(declare-datatypes ((C!2556 0))(
  ( (C!2557 (val!1164 Int)) )
))
(declare-datatypes ((List!3228 0))(
  ( (Nil!3218) (Cons!3218 (h!8615 C!2556) (t!28930 List!3228)) )
))
(declare-datatypes ((IArray!2017 0))(
  ( (IArray!2018 (innerList!1066 List!3228)) )
))
(declare-datatypes ((Conc!1008 0))(
  ( (Node!1008 (left!2547 Conc!1008) (right!2877 Conc!1008) (csize!2246 Int) (cheight!1219 Int)) (Leaf!1644 (xs!3603 IArray!2017) (csize!2247 Int)) (Empty!1008) )
))
(declare-datatypes ((BalanceConc!2024 0))(
  ( (BalanceConc!2025 (c!36425 Conc!1008)) )
))
(declare-datatypes ((TokenValueInjection!1002 0))(
  ( (TokenValueInjection!1003 (toValue!1264 Int) (toChars!1123 Int)) )
))
(declare-datatypes ((Regex!817 0))(
  ( (ElementMatch!817 (c!36426 C!2556)) (Concat!1433 (regOne!2146 Regex!817) (regTwo!2146 Regex!817)) (EmptyExpr!817) (Star!817 (reg!1146 Regex!817)) (EmptyLang!817) (Union!817 (regOne!2147 Regex!817) (regTwo!2147 Regex!817)) )
))
(declare-datatypes ((String!4155 0))(
  ( (String!4156 (value!21215 String)) )
))
(declare-datatypes ((Rule!986 0))(
  ( (Rule!987 (regex!593 Regex!817) (tag!771 String!4155) (isSeparator!593 Bool) (transformation!593 TokenValueInjection!1002)) )
))
(declare-datatypes ((List!3229 0))(
  ( (Nil!3219) (Cons!3219 (h!8616 Rule!986) (t!28931 List!3229)) )
))
(declare-fun rules!1920 () List!3229)

(get-info :version)

(assert (= (and b!190910 ((_ is Cons!3219) rules!1920)) b!190956))

(declare-fun order!2033 () Int)

(declare-fun order!2035 () Int)

(declare-fun dynLambda!1369 (Int Int) Int)

(declare-fun dynLambda!1370 (Int Int) Int)

(assert (=> b!190958 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5840))))

(declare-fun order!2037 () Int)

(declare-fun dynLambda!1371 (Int Int) Int)

(assert (=> b!190958 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5840))))

(assert (=> b!190910 true))

(declare-fun e!117373 () Bool)

(assert (=> b!190906 (= e!117373 (and tp!88780 tp!88775))))

(declare-fun b!190907 () Bool)

(declare-fun res!87516 () Bool)

(declare-fun e!117365 () Bool)

(assert (=> b!190907 (=> (not res!87516) (not e!117365))))

(declare-datatypes ((Token!930 0))(
  ( (Token!931 (value!21216 TokenValue!615) (rule!1108 Rule!986) (size!2562 Int) (originalCharacters!636 List!3228)) )
))
(declare-datatypes ((List!3230 0))(
  ( (Nil!3220) (Cons!3220 (h!8617 Token!930) (t!28932 List!3230)) )
))
(declare-datatypes ((IArray!2019 0))(
  ( (IArray!2020 (innerList!1067 List!3230)) )
))
(declare-datatypes ((Conc!1009 0))(
  ( (Node!1009 (left!2548 Conc!1009) (right!2878 Conc!1009) (csize!2248 Int) (cheight!1220 Int)) (Leaf!1645 (xs!3604 IArray!2019) (csize!2249 Int)) (Empty!1009) )
))
(declare-datatypes ((BalanceConc!2026 0))(
  ( (BalanceConc!2027 (c!36427 Conc!1009)) )
))
(declare-datatypes ((tuple2!3302 0))(
  ( (tuple2!3303 (_1!1867 BalanceConc!2026) (_2!1867 BalanceConc!2024)) )
))
(declare-fun lt!65414 () tuple2!3302)

(declare-fun lt!65439 () Token!930)

(declare-fun apply!492 (BalanceConc!2026 Int) Token!930)

(assert (=> b!190907 (= res!87516 (= (apply!492 (_1!1867 lt!65414) 0) lt!65439))))

(declare-fun b!190908 () Bool)

(declare-fun e!117357 () Bool)

(declare-fun e!117360 () Bool)

(assert (=> b!190908 (= e!117357 e!117360)))

(declare-fun res!87523 () Bool)

(assert (=> b!190908 (=> res!87523 e!117360)))

(declare-fun lt!65408 () List!3228)

(declare-fun lt!65421 () List!3228)

(declare-fun lt!65413 () List!3228)

(assert (=> b!190908 (= res!87523 (or (not (= lt!65408 lt!65421)) (not (= lt!65421 lt!65413)) (not (= lt!65408 lt!65413))))))

(declare-datatypes ((LexerInterface!479 0))(
  ( (LexerInterfaceExt!476 (__x!2718 Int)) (Lexer!477) )
))
(declare-fun thiss!17480 () LexerInterface!479)

(declare-fun tokens!465 () List!3230)

(declare-fun printList!163 (LexerInterface!479 List!3230) List!3228)

(assert (=> b!190908 (= lt!65421 (printList!163 thiss!17480 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))

(declare-fun lt!65410 () BalanceConc!2024)

(declare-fun list!1179 (BalanceConc!2024) List!3228)

(assert (=> b!190908 (= lt!65408 (list!1179 lt!65410))))

(declare-fun lt!65419 () BalanceConc!2026)

(declare-fun printTailRec!173 (LexerInterface!479 BalanceConc!2026 Int BalanceConc!2024) BalanceConc!2024)

(assert (=> b!190908 (= lt!65410 (printTailRec!173 thiss!17480 lt!65419 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun print!210 (LexerInterface!479 BalanceConc!2026) BalanceConc!2024)

(assert (=> b!190908 (= lt!65410 (print!210 thiss!17480 lt!65419))))

(declare-fun singletonSeq!145 (Token!930) BalanceConc!2026)

(assert (=> b!190908 (= lt!65419 (singletonSeq!145 (h!8617 tokens!465)))))

(declare-fun b!190909 () Bool)

(declare-datatypes ((Unit!3036 0))(
  ( (Unit!3037) )
))
(declare-fun e!117354 () Unit!3036)

(declare-fun Unit!3038 () Unit!3036)

(assert (=> b!190909 (= e!117354 Unit!3038)))

(assert (=> b!190909 false))

(declare-fun e!117351 () Bool)

(assert (=> b!190910 (= e!117360 e!117351)))

(declare-fun res!87531 () Bool)

(assert (=> b!190910 (=> res!87531 e!117351)))

(declare-datatypes ((tuple2!3304 0))(
  ( (tuple2!3305 (_1!1868 Token!930) (_2!1868 BalanceConc!2024)) )
))
(declare-datatypes ((Option!471 0))(
  ( (None!470) (Some!470 (v!13981 tuple2!3304)) )
))
(declare-fun isDefined!322 (Option!471) Bool)

(declare-fun maxPrefixZipperSequence!172 (LexerInterface!479 List!3229 BalanceConc!2024) Option!471)

(declare-fun seqFromList!563 (List!3228) BalanceConc!2024)

(assert (=> b!190910 (= res!87531 (not (isDefined!322 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))

(declare-fun lt!65434 () Unit!3036)

(declare-fun forallContained!160 (List!3230 Int Token!930) Unit!3036)

(assert (=> b!190910 (= lt!65434 (forallContained!160 tokens!465 lambda!5840 (h!8617 tokens!465)))))

(assert (=> b!190910 (= lt!65413 (originalCharacters!636 (h!8617 tokens!465)))))

(declare-fun b!190911 () Bool)

(declare-fun e!117382 () Bool)

(declare-fun matchR!155 (Regex!817 List!3228) Bool)

(assert (=> b!190911 (= e!117382 (matchR!155 (regex!593 (rule!1108 (h!8617 tokens!465))) lt!65413))))

(declare-fun b!190912 () Bool)

(declare-fun isEmpty!1608 (BalanceConc!2024) Bool)

(assert (=> b!190912 (= e!117365 (isEmpty!1608 (_2!1867 lt!65414)))))

(declare-fun b!190913 () Bool)

(declare-fun e!117364 () Bool)

(declare-fun e!117368 () Bool)

(assert (=> b!190913 (= e!117364 (not e!117368))))

(declare-fun res!87507 () Bool)

(assert (=> b!190913 (=> res!87507 e!117368)))

(declare-fun separatorToken!170 () Token!930)

(declare-fun lt!65427 () List!3228)

(declare-fun printWithSeparatorTokenWhenNeededRec!162 (LexerInterface!479 List!3229 BalanceConc!2026 Token!930 Int) BalanceConc!2024)

(declare-fun seqFromList!564 (List!3230) BalanceConc!2026)

(assert (=> b!190913 (= res!87507 (not (= lt!65427 (list!1179 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!65432 () List!3228)

(declare-fun lt!65405 () List!3228)

(assert (=> b!190913 (= lt!65432 lt!65405)))

(declare-fun lt!65412 () List!3228)

(declare-fun ++!768 (List!3228 List!3228) List!3228)

(assert (=> b!190913 (= lt!65405 (++!768 lt!65413 lt!65412))))

(declare-fun lt!65438 () List!3228)

(assert (=> b!190913 (= lt!65432 (++!768 (++!768 lt!65413 lt!65438) lt!65427))))

(declare-fun lt!65407 () Unit!3036)

(declare-fun lemmaConcatAssociativity!282 (List!3228 List!3228 List!3228) Unit!3036)

(assert (=> b!190913 (= lt!65407 (lemmaConcatAssociativity!282 lt!65413 lt!65438 lt!65427))))

(declare-fun charsOf!248 (Token!930) BalanceConc!2024)

(assert (=> b!190913 (= lt!65413 (list!1179 (charsOf!248 (h!8617 tokens!465))))))

(assert (=> b!190913 (= lt!65412 (++!768 lt!65438 lt!65427))))

(declare-fun printWithSeparatorTokenWhenNeededList!172 (LexerInterface!479 List!3229 List!3230 Token!930) List!3228)

(assert (=> b!190913 (= lt!65427 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (t!28932 tokens!465) separatorToken!170))))

(assert (=> b!190913 (= lt!65438 (list!1179 (charsOf!248 separatorToken!170)))))

(declare-fun b!190914 () Bool)

(declare-fun res!87511 () Bool)

(declare-fun e!117355 () Bool)

(assert (=> b!190914 (=> (not res!87511) (not e!117355))))

(declare-fun rulesProduceIndividualToken!228 (LexerInterface!479 List!3229 Token!930) Bool)

(assert (=> b!190914 (= res!87511 (rulesProduceIndividualToken!228 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!117363 () Bool)

(declare-fun b!190915 () Bool)

(declare-fun tp!88779 () Bool)

(declare-fun e!117359 () Bool)

(declare-fun inv!4037 (String!4155) Bool)

(declare-fun inv!4040 (TokenValueInjection!1002) Bool)

(assert (=> b!190915 (= e!117359 (and tp!88779 (inv!4037 (tag!771 (h!8616 rules!1920))) (inv!4040 (transformation!593 (h!8616 rules!1920))) e!117363))))

(declare-fun e!117356 () Bool)

(assert (=> b!190916 (= e!117356 (and tp!88769 tp!88771))))

(declare-fun tp!88773 () Bool)

(declare-fun e!117378 () Bool)

(declare-fun e!117352 () Bool)

(declare-fun b!190917 () Bool)

(declare-fun inv!21 (TokenValue!615) Bool)

(assert (=> b!190917 (= e!117352 (and (inv!21 (value!21216 (h!8617 tokens!465))) e!117378 tp!88773))))

(declare-fun res!87512 () Bool)

(assert (=> b!190918 (=> (not res!87512) (not e!117355))))

(declare-fun forall!675 (List!3230 Int) Bool)

(assert (=> b!190918 (= res!87512 (forall!675 tokens!465 lambda!5839))))

(declare-fun res!87527 () Bool)

(declare-fun e!117361 () Bool)

(assert (=> start!20522 (=> (not res!87527) (not e!117361))))

(assert (=> start!20522 (= res!87527 ((_ is Lexer!477) thiss!17480))))

(assert (=> start!20522 e!117361))

(assert (=> start!20522 true))

(declare-fun e!117375 () Bool)

(assert (=> start!20522 e!117375))

(declare-fun e!117376 () Bool)

(declare-fun inv!4041 (Token!930) Bool)

(assert (=> start!20522 (and (inv!4041 separatorToken!170) e!117376)))

(declare-fun e!117374 () Bool)

(assert (=> start!20522 e!117374))

(declare-fun b!190919 () Bool)

(declare-fun e!117367 () Bool)

(declare-fun tp!88778 () Bool)

(assert (=> b!190919 (= e!117367 (and tp!88778 (inv!4037 (tag!771 (rule!1108 separatorToken!170))) (inv!4040 (transformation!593 (rule!1108 separatorToken!170))) e!117356))))

(declare-fun b!190920 () Bool)

(declare-fun res!87529 () Bool)

(assert (=> b!190920 (=> (not res!87529) (not e!117382))))

(declare-datatypes ((tuple2!3306 0))(
  ( (tuple2!3307 (_1!1869 Token!930) (_2!1869 List!3228)) )
))
(declare-fun lt!65417 () tuple2!3306)

(declare-fun isEmpty!1609 (List!3228) Bool)

(assert (=> b!190920 (= res!87529 (isEmpty!1609 (_2!1869 lt!65417)))))

(declare-fun b!190921 () Bool)

(declare-fun res!87513 () Bool)

(assert (=> b!190921 (=> (not res!87513) (not e!117361))))

(declare-fun isEmpty!1610 (List!3229) Bool)

(assert (=> b!190921 (= res!87513 (not (isEmpty!1610 rules!1920)))))

(declare-fun b!190922 () Bool)

(declare-fun tp!88774 () Bool)

(assert (=> b!190922 (= e!117378 (and tp!88774 (inv!4037 (tag!771 (rule!1108 (h!8617 tokens!465)))) (inv!4040 (transformation!593 (rule!1108 (h!8617 tokens!465)))) e!117373))))

(declare-fun b!190923 () Bool)

(declare-fun tp!88770 () Bool)

(assert (=> b!190923 (= e!117376 (and (inv!21 (value!21216 separatorToken!170)) e!117367 tp!88770))))

(declare-fun b!190924 () Bool)

(declare-fun res!87534 () Bool)

(declare-fun e!117362 () Bool)

(assert (=> b!190924 (=> (not res!87534) (not e!117362))))

(declare-fun lt!65406 () tuple2!3302)

(assert (=> b!190924 (= res!87534 (= (apply!492 (_1!1867 lt!65406) 0) separatorToken!170))))

(declare-fun b!190925 () Bool)

(declare-fun res!87528 () Bool)

(assert (=> b!190925 (=> res!87528 e!117360)))

(assert (=> b!190925 (= res!87528 (not (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (h!8617 tokens!465))))))

(declare-fun b!190926 () Bool)

(declare-fun e!117350 () Bool)

(declare-fun e!117369 () Bool)

(assert (=> b!190926 (= e!117350 e!117369)))

(declare-fun res!87533 () Bool)

(assert (=> b!190926 (=> (not res!87533) (not e!117369))))

(declare-fun lt!65423 () Rule!986)

(assert (=> b!190926 (= res!87533 (matchR!155 (regex!593 lt!65423) lt!65438))))

(declare-datatypes ((Option!472 0))(
  ( (None!471) (Some!471 (v!13982 Rule!986)) )
))
(declare-fun lt!65435 () Option!472)

(declare-fun get!937 (Option!472) Rule!986)

(assert (=> b!190926 (= lt!65423 (get!937 lt!65435))))

(declare-fun b!190927 () Bool)

(assert (=> b!190927 (= e!117355 e!117364)))

(declare-fun res!87510 () Bool)

(assert (=> b!190927 (=> (not res!87510) (not e!117364))))

(declare-fun lt!65430 () List!3228)

(declare-fun lt!65431 () List!3228)

(assert (=> b!190927 (= res!87510 (= lt!65430 lt!65431))))

(declare-fun lt!65415 () BalanceConc!2026)

(assert (=> b!190927 (= lt!65431 (list!1179 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0)))))

(assert (=> b!190927 (= lt!65430 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!190928 () Bool)

(assert (=> b!190928 (= e!117361 e!117355)))

(declare-fun res!87519 () Bool)

(assert (=> b!190928 (=> (not res!87519) (not e!117355))))

(declare-fun rulesProduceEachTokenIndividually!271 (LexerInterface!479 List!3229 BalanceConc!2026) Bool)

(assert (=> b!190928 (= res!87519 (rulesProduceEachTokenIndividually!271 thiss!17480 rules!1920 lt!65415))))

(assert (=> b!190928 (= lt!65415 (seqFromList!564 tokens!465))))

(declare-fun b!190929 () Bool)

(declare-fun tp!88777 () Bool)

(assert (=> b!190929 (= e!117375 (and e!117359 tp!88777))))

(declare-fun b!190930 () Bool)

(declare-fun res!87526 () Bool)

(assert (=> b!190930 (=> res!87526 e!117360)))

(declare-fun isEmpty!1611 (BalanceConc!2026) Bool)

(declare-fun lex!279 (LexerInterface!479 List!3229 BalanceConc!2024) tuple2!3302)

(assert (=> b!190930 (= res!87526 (isEmpty!1611 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413)))))))

(declare-fun b!190931 () Bool)

(declare-fun res!87525 () Bool)

(assert (=> b!190931 (=> (not res!87525) (not e!117355))))

(assert (=> b!190931 (= res!87525 (isSeparator!593 (rule!1108 separatorToken!170)))))

(declare-fun b!190932 () Bool)

(declare-fun e!117370 () Bool)

(assert (=> b!190932 (= e!117370 (not (= lt!65430 (++!768 lt!65413 lt!65427))))))

(declare-fun b!190933 () Bool)

(declare-fun e!117353 () Bool)

(declare-fun e!117366 () Bool)

(assert (=> b!190933 (= e!117353 e!117366)))

(declare-fun res!87518 () Bool)

(assert (=> b!190933 (=> (not res!87518) (not e!117366))))

(declare-datatypes ((Option!473 0))(
  ( (None!472) (Some!472 (v!13983 tuple2!3306)) )
))
(declare-fun lt!65429 () Option!473)

(declare-fun isDefined!323 (Option!473) Bool)

(assert (=> b!190933 (= res!87518 (isDefined!323 lt!65429))))

(declare-fun maxPrefix!209 (LexerInterface!479 List!3229 List!3228) Option!473)

(assert (=> b!190933 (= lt!65429 (maxPrefix!209 thiss!17480 rules!1920 lt!65430))))

(declare-fun b!190934 () Bool)

(declare-fun get!938 (Option!473) tuple2!3306)

(declare-fun head!682 (List!3230) Token!930)

(assert (=> b!190934 (= e!117366 (= (_1!1869 (get!938 lt!65429)) (head!682 tokens!465)))))

(declare-fun tp!88776 () Bool)

(declare-fun b!190935 () Bool)

(assert (=> b!190935 (= e!117374 (and (inv!4041 (h!8617 tokens!465)) e!117352 tp!88776))))

(declare-fun b!190936 () Bool)

(assert (=> b!190936 (= e!117369 (= (rule!1108 separatorToken!170) lt!65423))))

(declare-fun b!190937 () Bool)

(declare-fun res!87522 () Bool)

(assert (=> b!190937 (=> (not res!87522) (not e!117355))))

(assert (=> b!190937 (= res!87522 ((_ is Cons!3220) tokens!465))))

(assert (=> b!190938 (= e!117363 (and tp!88781 tp!88772))))

(declare-fun b!190939 () Bool)

(assert (=> b!190939 (= e!117368 e!117357)))

(declare-fun res!87524 () Bool)

(assert (=> b!190939 (=> res!87524 e!117357)))

(assert (=> b!190939 (= res!87524 e!117370)))

(declare-fun res!87514 () Bool)

(assert (=> b!190939 (=> (not res!87514) (not e!117370))))

(declare-fun lt!65437 () Bool)

(assert (=> b!190939 (= res!87514 (not lt!65437))))

(assert (=> b!190939 (= lt!65437 (= lt!65430 lt!65405))))

(declare-fun b!190940 () Bool)

(assert (=> b!190940 (= e!117362 (isEmpty!1608 (_2!1867 lt!65406)))))

(declare-fun b!190941 () Bool)

(declare-fun e!117379 () Bool)

(declare-fun e!117372 () Bool)

(assert (=> b!190941 (= e!117379 e!117372)))

(declare-fun res!87535 () Bool)

(assert (=> b!190941 (=> (not res!87535) (not e!117372))))

(assert (=> b!190941 (= res!87535 (forall!675 tokens!465 lambda!5840))))

(assert (=> b!190941 e!117365))

(declare-fun res!87508 () Bool)

(assert (=> b!190941 (=> (not res!87508) (not e!117365))))

(declare-fun size!2563 (BalanceConc!2026) Int)

(assert (=> b!190941 (= res!87508 (= (size!2563 (_1!1867 lt!65414)) 1))))

(declare-fun lt!65426 () BalanceConc!2024)

(assert (=> b!190941 (= lt!65414 (lex!279 thiss!17480 rules!1920 lt!65426))))

(declare-fun lt!65440 () BalanceConc!2026)

(assert (=> b!190941 (= lt!65426 (printTailRec!173 thiss!17480 lt!65440 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> b!190941 (= lt!65426 (print!210 thiss!17480 lt!65440))))

(assert (=> b!190941 (= lt!65440 (singletonSeq!145 lt!65439))))

(assert (=> b!190941 e!117350))

(declare-fun res!87520 () Bool)

(assert (=> b!190941 (=> (not res!87520) (not e!117350))))

(declare-fun isDefined!324 (Option!472) Bool)

(assert (=> b!190941 (= res!87520 (isDefined!324 lt!65435))))

(declare-fun getRuleFromTag!34 (LexerInterface!479 List!3229 String!4155) Option!472)

(assert (=> b!190941 (= lt!65435 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))))

(declare-fun lt!65409 () Unit!3036)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!34 (LexerInterface!479 List!3229 List!3228 Token!930) Unit!3036)

(assert (=> b!190941 (= lt!65409 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!34 thiss!17480 rules!1920 lt!65438 separatorToken!170))))

(assert (=> b!190941 e!117362))

(declare-fun res!87515 () Bool)

(assert (=> b!190941 (=> (not res!87515) (not e!117362))))

(assert (=> b!190941 (= res!87515 (= (size!2563 (_1!1867 lt!65406)) 1))))

(declare-fun lt!65411 () BalanceConc!2024)

(assert (=> b!190941 (= lt!65406 (lex!279 thiss!17480 rules!1920 lt!65411))))

(declare-fun lt!65418 () BalanceConc!2026)

(assert (=> b!190941 (= lt!65411 (printTailRec!173 thiss!17480 lt!65418 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> b!190941 (= lt!65411 (print!210 thiss!17480 lt!65418))))

(assert (=> b!190941 (= lt!65418 (singletonSeq!145 separatorToken!170))))

(assert (=> b!190941 (rulesProduceIndividualToken!228 thiss!17480 rules!1920 lt!65439)))

(declare-fun lt!65425 () Unit!3036)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!46 (LexerInterface!479 List!3229 List!3230 Token!930) Unit!3036)

(assert (=> b!190941 (= lt!65425 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!46 thiss!17480 rules!1920 tokens!465 lt!65439))))

(assert (=> b!190941 (= lt!65439 (head!682 (t!28932 tokens!465)))))

(declare-fun lt!65424 () Unit!3036)

(assert (=> b!190941 (= lt!65424 e!117354)))

(declare-fun c!36424 () Bool)

(declare-fun isEmpty!1612 (List!3230) Bool)

(assert (=> b!190941 (= c!36424 (isEmpty!1612 (t!28932 tokens!465)))))

(declare-fun lt!65422 () Option!473)

(assert (=> b!190941 (= lt!65422 (maxPrefix!209 thiss!17480 rules!1920 lt!65412))))

(declare-fun lt!65428 () tuple2!3306)

(assert (=> b!190941 (= lt!65412 (_2!1869 lt!65428))))

(declare-fun lt!65416 () Unit!3036)

(declare-fun lemmaSamePrefixThenSameSuffix!114 (List!3228 List!3228 List!3228 List!3228 List!3228) Unit!3036)

(assert (=> b!190941 (= lt!65416 (lemmaSamePrefixThenSameSuffix!114 lt!65413 lt!65412 lt!65413 (_2!1869 lt!65428) lt!65430))))

(assert (=> b!190941 (= lt!65428 (get!938 (maxPrefix!209 thiss!17480 rules!1920 lt!65430)))))

(declare-fun isPrefix!289 (List!3228 List!3228) Bool)

(assert (=> b!190941 (isPrefix!289 lt!65413 lt!65405)))

(declare-fun lt!65436 () Unit!3036)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!184 (List!3228 List!3228) Unit!3036)

(assert (=> b!190941 (= lt!65436 (lemmaConcatTwoListThenFirstIsPrefix!184 lt!65413 lt!65412))))

(assert (=> b!190941 e!117353))

(declare-fun res!87521 () Bool)

(assert (=> b!190941 (=> res!87521 e!117353)))

(assert (=> b!190941 (= res!87521 (isEmpty!1612 tokens!465))))

(declare-fun lt!65433 () Unit!3036)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!54 (LexerInterface!479 List!3229 List!3230 Token!930) Unit!3036)

(assert (=> b!190941 (= lt!65433 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!54 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!190942 () Bool)

(declare-fun res!87506 () Bool)

(assert (=> b!190942 (=> (not res!87506) (not e!117364))))

(assert (=> b!190942 (= res!87506 (= (list!1179 (seqFromList!563 lt!65430)) lt!65431))))

(declare-fun b!190943 () Bool)

(assert (=> b!190943 (= e!117351 e!117379)))

(declare-fun res!87532 () Bool)

(assert (=> b!190943 (=> res!87532 e!117379)))

(assert (=> b!190943 (= res!87532 (not lt!65437))))

(assert (=> b!190943 e!117382))

(declare-fun res!87517 () Bool)

(assert (=> b!190943 (=> (not res!87517) (not e!117382))))

(assert (=> b!190943 (= res!87517 (= (_1!1869 lt!65417) (h!8617 tokens!465)))))

(declare-fun lt!65420 () Option!473)

(assert (=> b!190943 (= lt!65417 (get!938 lt!65420))))

(assert (=> b!190943 (isDefined!323 lt!65420)))

(assert (=> b!190943 (= lt!65420 (maxPrefix!209 thiss!17480 rules!1920 lt!65413))))

(declare-fun b!190944 () Bool)

(declare-fun Unit!3039 () Unit!3036)

(assert (=> b!190944 (= e!117354 Unit!3039)))

(declare-fun b!190945 () Bool)

(declare-fun res!87530 () Bool)

(assert (=> b!190945 (=> (not res!87530) (not e!117355))))

(declare-fun sepAndNonSepRulesDisjointChars!182 (List!3229 List!3229) Bool)

(assert (=> b!190945 (= res!87530 (sepAndNonSepRulesDisjointChars!182 rules!1920 rules!1920))))

(declare-fun b!190946 () Bool)

(declare-fun contains!514 (List!3230 Token!930) Bool)

(assert (=> b!190946 (= e!117372 (contains!514 tokens!465 lt!65439))))

(declare-fun b!190947 () Bool)

(declare-fun res!87509 () Bool)

(assert (=> b!190947 (=> (not res!87509) (not e!117361))))

(declare-fun rulesInvariant!445 (LexerInterface!479 List!3229) Bool)

(assert (=> b!190947 (= res!87509 (rulesInvariant!445 thiss!17480 rules!1920))))

(assert (= (and start!20522 res!87527) b!190921))

(assert (= (and b!190921 res!87513) b!190947))

(assert (= (and b!190947 res!87509) b!190928))

(assert (= (and b!190928 res!87519) b!190914))

(assert (= (and b!190914 res!87511) b!190931))

(assert (= (and b!190931 res!87525) b!190918))

(assert (= (and b!190918 res!87512) b!190945))

(assert (= (and b!190945 res!87530) b!190937))

(assert (= (and b!190937 res!87522) b!190927))

(assert (= (and b!190927 res!87510) b!190942))

(assert (= (and b!190942 res!87506) b!190913))

(assert (= (and b!190913 (not res!87507)) b!190939))

(assert (= (and b!190939 res!87514) b!190932))

(assert (= (and b!190939 (not res!87524)) b!190908))

(assert (= (and b!190908 (not res!87523)) b!190925))

(assert (= (and b!190925 (not res!87528)) b!190930))

(assert (= (and b!190930 (not res!87526)) b!190910))

(assert (= (and b!190910 (not res!87531)) b!190943))

(assert (= (and b!190943 res!87517) b!190920))

(assert (= (and b!190920 res!87529) b!190911))

(assert (= (and b!190943 (not res!87532)) b!190941))

(assert (= (and b!190941 (not res!87521)) b!190933))

(assert (= (and b!190933 res!87518) b!190934))

(assert (= (and b!190941 c!36424) b!190909))

(assert (= (and b!190941 (not c!36424)) b!190944))

(assert (= (and b!190941 res!87515) b!190924))

(assert (= (and b!190924 res!87534) b!190940))

(assert (= (and b!190941 res!87520) b!190926))

(assert (= (and b!190926 res!87533) b!190936))

(assert (= (and b!190941 res!87508) b!190907))

(assert (= (and b!190907 res!87516) b!190912))

(assert (= (and b!190941 res!87535) b!190946))

(assert (= b!190915 b!190938))

(assert (= b!190929 b!190915))

(assert (= (and start!20522 ((_ is Cons!3219) rules!1920)) b!190929))

(assert (= b!190919 b!190916))

(assert (= b!190923 b!190919))

(assert (= start!20522 b!190923))

(assert (= b!190922 b!190906))

(assert (= b!190917 b!190922))

(assert (= b!190935 b!190917))

(assert (= (and start!20522 ((_ is Cons!3220) tokens!465)) b!190935))

(declare-fun m!196403 () Bool)

(assert (=> b!190933 m!196403))

(declare-fun m!196405 () Bool)

(assert (=> b!190933 m!196405))

(declare-fun m!196407 () Bool)

(assert (=> b!190934 m!196407))

(declare-fun m!196409 () Bool)

(assert (=> b!190934 m!196409))

(declare-fun m!196411 () Bool)

(assert (=> b!190932 m!196411))

(declare-fun m!196413 () Bool)

(assert (=> b!190927 m!196413))

(assert (=> b!190927 m!196413))

(declare-fun m!196415 () Bool)

(assert (=> b!190927 m!196415))

(declare-fun m!196417 () Bool)

(assert (=> b!190927 m!196417))

(declare-fun m!196419 () Bool)

(assert (=> b!190920 m!196419))

(declare-fun m!196421 () Bool)

(assert (=> b!190915 m!196421))

(declare-fun m!196423 () Bool)

(assert (=> b!190915 m!196423))

(declare-fun m!196425 () Bool)

(assert (=> b!190926 m!196425))

(declare-fun m!196427 () Bool)

(assert (=> b!190926 m!196427))

(declare-fun m!196429 () Bool)

(assert (=> b!190917 m!196429))

(declare-fun m!196431 () Bool)

(assert (=> b!190945 m!196431))

(declare-fun m!196433 () Bool)

(assert (=> b!190921 m!196433))

(declare-fun m!196435 () Bool)

(assert (=> b!190913 m!196435))

(declare-fun m!196437 () Bool)

(assert (=> b!190913 m!196437))

(declare-fun m!196439 () Bool)

(assert (=> b!190913 m!196439))

(declare-fun m!196441 () Bool)

(assert (=> b!190913 m!196441))

(declare-fun m!196443 () Bool)

(assert (=> b!190913 m!196443))

(declare-fun m!196445 () Bool)

(assert (=> b!190913 m!196445))

(declare-fun m!196447 () Bool)

(assert (=> b!190913 m!196447))

(declare-fun m!196449 () Bool)

(assert (=> b!190913 m!196449))

(declare-fun m!196451 () Bool)

(assert (=> b!190913 m!196451))

(declare-fun m!196453 () Bool)

(assert (=> b!190913 m!196453))

(assert (=> b!190913 m!196439))

(assert (=> b!190913 m!196449))

(declare-fun m!196455 () Bool)

(assert (=> b!190913 m!196455))

(declare-fun m!196457 () Bool)

(assert (=> b!190913 m!196457))

(declare-fun m!196459 () Bool)

(assert (=> b!190913 m!196459))

(assert (=> b!190913 m!196443))

(assert (=> b!190913 m!196435))

(assert (=> b!190913 m!196457))

(declare-fun m!196461 () Bool)

(assert (=> b!190919 m!196461))

(declare-fun m!196463 () Bool)

(assert (=> b!190919 m!196463))

(declare-fun m!196465 () Bool)

(assert (=> b!190922 m!196465))

(declare-fun m!196467 () Bool)

(assert (=> b!190922 m!196467))

(declare-fun m!196469 () Bool)

(assert (=> b!190930 m!196469))

(assert (=> b!190930 m!196469))

(declare-fun m!196471 () Bool)

(assert (=> b!190930 m!196471))

(declare-fun m!196473 () Bool)

(assert (=> b!190930 m!196473))

(declare-fun m!196475 () Bool)

(assert (=> b!190914 m!196475))

(declare-fun m!196477 () Bool)

(assert (=> b!190943 m!196477))

(declare-fun m!196479 () Bool)

(assert (=> b!190943 m!196479))

(declare-fun m!196481 () Bool)

(assert (=> b!190943 m!196481))

(declare-fun m!196483 () Bool)

(assert (=> b!190935 m!196483))

(declare-fun m!196485 () Bool)

(assert (=> b!190940 m!196485))

(declare-fun m!196487 () Bool)

(assert (=> b!190907 m!196487))

(declare-fun m!196489 () Bool)

(assert (=> b!190908 m!196489))

(declare-fun m!196491 () Bool)

(assert (=> b!190908 m!196491))

(declare-fun m!196493 () Bool)

(assert (=> b!190908 m!196493))

(declare-fun m!196495 () Bool)

(assert (=> b!190908 m!196495))

(declare-fun m!196497 () Bool)

(assert (=> b!190908 m!196497))

(declare-fun m!196499 () Bool)

(assert (=> b!190941 m!196499))

(declare-fun m!196501 () Bool)

(assert (=> b!190941 m!196501))

(declare-fun m!196503 () Bool)

(assert (=> b!190941 m!196503))

(declare-fun m!196505 () Bool)

(assert (=> b!190941 m!196505))

(declare-fun m!196507 () Bool)

(assert (=> b!190941 m!196507))

(declare-fun m!196509 () Bool)

(assert (=> b!190941 m!196509))

(declare-fun m!196511 () Bool)

(assert (=> b!190941 m!196511))

(declare-fun m!196513 () Bool)

(assert (=> b!190941 m!196513))

(declare-fun m!196515 () Bool)

(assert (=> b!190941 m!196515))

(declare-fun m!196517 () Bool)

(assert (=> b!190941 m!196517))

(declare-fun m!196519 () Bool)

(assert (=> b!190941 m!196519))

(declare-fun m!196521 () Bool)

(assert (=> b!190941 m!196521))

(declare-fun m!196523 () Bool)

(assert (=> b!190941 m!196523))

(declare-fun m!196525 () Bool)

(assert (=> b!190941 m!196525))

(assert (=> b!190941 m!196405))

(declare-fun m!196527 () Bool)

(assert (=> b!190941 m!196527))

(declare-fun m!196529 () Bool)

(assert (=> b!190941 m!196529))

(declare-fun m!196531 () Bool)

(assert (=> b!190941 m!196531))

(declare-fun m!196533 () Bool)

(assert (=> b!190941 m!196533))

(declare-fun m!196535 () Bool)

(assert (=> b!190941 m!196535))

(assert (=> b!190941 m!196405))

(declare-fun m!196537 () Bool)

(assert (=> b!190941 m!196537))

(declare-fun m!196539 () Bool)

(assert (=> b!190941 m!196539))

(declare-fun m!196541 () Bool)

(assert (=> b!190941 m!196541))

(declare-fun m!196543 () Bool)

(assert (=> b!190941 m!196543))

(declare-fun m!196545 () Bool)

(assert (=> b!190941 m!196545))

(declare-fun m!196547 () Bool)

(assert (=> b!190941 m!196547))

(declare-fun m!196549 () Bool)

(assert (=> b!190924 m!196549))

(declare-fun m!196551 () Bool)

(assert (=> b!190942 m!196551))

(assert (=> b!190942 m!196551))

(declare-fun m!196553 () Bool)

(assert (=> b!190942 m!196553))

(declare-fun m!196555 () Bool)

(assert (=> b!190947 m!196555))

(declare-fun m!196557 () Bool)

(assert (=> b!190923 m!196557))

(declare-fun m!196559 () Bool)

(assert (=> b!190912 m!196559))

(declare-fun m!196561 () Bool)

(assert (=> start!20522 m!196561))

(declare-fun m!196563 () Bool)

(assert (=> b!190910 m!196563))

(assert (=> b!190910 m!196563))

(declare-fun m!196565 () Bool)

(assert (=> b!190910 m!196565))

(assert (=> b!190910 m!196565))

(declare-fun m!196567 () Bool)

(assert (=> b!190910 m!196567))

(declare-fun m!196569 () Bool)

(assert (=> b!190910 m!196569))

(declare-fun m!196571 () Bool)

(assert (=> b!190918 m!196571))

(declare-fun m!196573 () Bool)

(assert (=> b!190925 m!196573))

(declare-fun m!196575 () Bool)

(assert (=> b!190928 m!196575))

(declare-fun m!196577 () Bool)

(assert (=> b!190928 m!196577))

(declare-fun m!196579 () Bool)

(assert (=> b!190946 m!196579))

(declare-fun m!196581 () Bool)

(assert (=> b!190911 m!196581))

(check-sat (not b!190910) (not start!20522) (not b!190928) b_and!13247 (not b_next!7645) (not b!190930) (not b_next!7647) (not b_next!7641) (not b!190945) (not b!190946) (not b!190927) (not b!190929) (not b_next!7643) (not b!190934) (not b!190925) (not b!190915) (not b!190943) (not b!190912) b_and!13245 (not b!190918) (not b!190956) (not b!190911) (not b!190926) (not b!190913) (not b!190917) (not b!190940) (not b!190941) b_and!13255 (not b!190907) (not b!190921) (not b_next!7651) (not b!190920) (not b_next!7649) (not b!190908) (not b!190923) (not b!190922) (not b!190942) (not b!190914) (not b!190933) (not b!190919) (not b!190924) (not b!190935) b_and!13253 b_and!13249 b_and!13251 (not b!190947) (not b!190932))
(check-sat (not b_next!7643) b_and!13245 b_and!13247 (not b_next!7645) (not b_next!7647) b_and!13255 (not b_next!7641) b_and!13253 (not b_next!7651) (not b_next!7649) b_and!13249 b_and!13251)
(get-model)

(declare-fun d!47406 () Bool)

(assert (=> d!47406 (= (get!938 lt!65429) (v!13983 lt!65429))))

(assert (=> b!190934 d!47406))

(declare-fun d!47408 () Bool)

(assert (=> d!47408 (= (head!682 tokens!465) (h!8617 tokens!465))))

(assert (=> b!190934 d!47408))

(declare-fun d!47410 () Bool)

(declare-fun lt!65454 () Bool)

(assert (=> d!47410 (= lt!65454 (isEmpty!1609 (list!1179 (_2!1867 lt!65414))))))

(declare-fun isEmpty!1616 (Conc!1008) Bool)

(assert (=> d!47410 (= lt!65454 (isEmpty!1616 (c!36425 (_2!1867 lt!65414))))))

(assert (=> d!47410 (= (isEmpty!1608 (_2!1867 lt!65414)) lt!65454)))

(declare-fun bs!18780 () Bool)

(assert (= bs!18780 d!47410))

(declare-fun m!196629 () Bool)

(assert (=> bs!18780 m!196629))

(assert (=> bs!18780 m!196629))

(declare-fun m!196637 () Bool)

(assert (=> bs!18780 m!196637))

(declare-fun m!196639 () Bool)

(assert (=> bs!18780 m!196639))

(assert (=> b!190912 d!47410))

(declare-fun d!47416 () Bool)

(declare-fun isEmpty!1617 (Option!473) Bool)

(assert (=> d!47416 (= (isDefined!323 lt!65429) (not (isEmpty!1617 lt!65429)))))

(declare-fun bs!18781 () Bool)

(assert (= bs!18781 d!47416))

(declare-fun m!196643 () Bool)

(assert (=> bs!18781 m!196643))

(assert (=> b!190933 d!47416))

(declare-fun b!191053 () Bool)

(declare-fun e!117439 () Bool)

(declare-fun lt!65493 () Option!473)

(declare-fun contains!516 (List!3229 Rule!986) Bool)

(assert (=> b!191053 (= e!117439 (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!65493)))))))

(declare-fun b!191054 () Bool)

(declare-fun res!87623 () Bool)

(assert (=> b!191054 (=> (not res!87623) (not e!117439))))

(assert (=> b!191054 (= res!87623 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493)))) (originalCharacters!636 (_1!1869 (get!938 lt!65493)))))))

(declare-fun b!191055 () Bool)

(declare-fun e!117440 () Option!473)

(declare-fun lt!65491 () Option!473)

(declare-fun lt!65489 () Option!473)

(assert (=> b!191055 (= e!117440 (ite (and ((_ is None!472) lt!65491) ((_ is None!472) lt!65489)) None!472 (ite ((_ is None!472) lt!65489) lt!65491 (ite ((_ is None!472) lt!65491) lt!65489 (ite (>= (size!2562 (_1!1869 (v!13983 lt!65491))) (size!2562 (_1!1869 (v!13983 lt!65489)))) lt!65491 lt!65489)))))))

(declare-fun call!8734 () Option!473)

(assert (=> b!191055 (= lt!65491 call!8734)))

(assert (=> b!191055 (= lt!65489 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) lt!65430))))

(declare-fun b!191057 () Bool)

(declare-fun res!87621 () Bool)

(assert (=> b!191057 (=> (not res!87621) (not e!117439))))

(declare-fun apply!496 (TokenValueInjection!1002 BalanceConc!2024) TokenValue!615)

(assert (=> b!191057 (= res!87621 (= (value!21216 (_1!1869 (get!938 lt!65493))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65493)))))))))

(declare-fun bm!8729 () Bool)

(declare-fun maxPrefixOneRule!93 (LexerInterface!479 Rule!986 List!3228) Option!473)

(assert (=> bm!8729 (= call!8734 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) lt!65430))))

(declare-fun b!191058 () Bool)

(declare-fun res!87619 () Bool)

(assert (=> b!191058 (=> (not res!87619) (not e!117439))))

(assert (=> b!191058 (= res!87619 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))))))

(declare-fun b!191059 () Bool)

(declare-fun res!87618 () Bool)

(assert (=> b!191059 (=> (not res!87618) (not e!117439))))

(assert (=> b!191059 (= res!87618 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493)))) (_2!1869 (get!938 lt!65493))) lt!65430))))

(declare-fun d!47422 () Bool)

(declare-fun e!117441 () Bool)

(assert (=> d!47422 e!117441))

(declare-fun res!87622 () Bool)

(assert (=> d!47422 (=> res!87622 e!117441)))

(assert (=> d!47422 (= res!87622 (isEmpty!1617 lt!65493))))

(assert (=> d!47422 (= lt!65493 e!117440)))

(declare-fun c!36436 () Bool)

(assert (=> d!47422 (= c!36436 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!65490 () Unit!3036)

(declare-fun lt!65492 () Unit!3036)

(assert (=> d!47422 (= lt!65490 lt!65492)))

(assert (=> d!47422 (isPrefix!289 lt!65430 lt!65430)))

(declare-fun lemmaIsPrefixRefl!159 (List!3228 List!3228) Unit!3036)

(assert (=> d!47422 (= lt!65492 (lemmaIsPrefixRefl!159 lt!65430 lt!65430))))

(declare-fun rulesValidInductive!148 (LexerInterface!479 List!3229) Bool)

(assert (=> d!47422 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!47422 (= (maxPrefix!209 thiss!17480 rules!1920 lt!65430) lt!65493)))

(declare-fun b!191056 () Bool)

(assert (=> b!191056 (= e!117441 e!117439)))

(declare-fun res!87620 () Bool)

(assert (=> b!191056 (=> (not res!87620) (not e!117439))))

(assert (=> b!191056 (= res!87620 (isDefined!323 lt!65493))))

(declare-fun b!191060 () Bool)

(assert (=> b!191060 (= e!117440 call!8734)))

(declare-fun b!191061 () Bool)

(declare-fun res!87624 () Bool)

(assert (=> b!191061 (=> (not res!87624) (not e!117439))))

(declare-fun size!2566 (List!3228) Int)

(assert (=> b!191061 (= res!87624 (< (size!2566 (_2!1869 (get!938 lt!65493))) (size!2566 lt!65430)))))

(assert (= (and d!47422 c!36436) b!191060))

(assert (= (and d!47422 (not c!36436)) b!191055))

(assert (= (or b!191060 b!191055) bm!8729))

(assert (= (and d!47422 (not res!87622)) b!191056))

(assert (= (and b!191056 res!87620) b!191054))

(assert (= (and b!191054 res!87623) b!191061))

(assert (= (and b!191061 res!87624) b!191059))

(assert (= (and b!191059 res!87618) b!191057))

(assert (= (and b!191057 res!87621) b!191058))

(assert (= (and b!191058 res!87619) b!191053))

(declare-fun m!196709 () Bool)

(assert (=> b!191059 m!196709))

(declare-fun m!196711 () Bool)

(assert (=> b!191059 m!196711))

(assert (=> b!191059 m!196711))

(declare-fun m!196713 () Bool)

(assert (=> b!191059 m!196713))

(assert (=> b!191059 m!196713))

(declare-fun m!196715 () Bool)

(assert (=> b!191059 m!196715))

(declare-fun m!196717 () Bool)

(assert (=> bm!8729 m!196717))

(declare-fun m!196719 () Bool)

(assert (=> b!191056 m!196719))

(assert (=> b!191054 m!196709))

(assert (=> b!191054 m!196711))

(assert (=> b!191054 m!196711))

(assert (=> b!191054 m!196713))

(assert (=> b!191053 m!196709))

(declare-fun m!196721 () Bool)

(assert (=> b!191053 m!196721))

(assert (=> b!191058 m!196709))

(assert (=> b!191058 m!196711))

(assert (=> b!191058 m!196711))

(assert (=> b!191058 m!196713))

(assert (=> b!191058 m!196713))

(declare-fun m!196723 () Bool)

(assert (=> b!191058 m!196723))

(assert (=> b!191057 m!196709))

(declare-fun m!196725 () Bool)

(assert (=> b!191057 m!196725))

(assert (=> b!191057 m!196725))

(declare-fun m!196727 () Bool)

(assert (=> b!191057 m!196727))

(declare-fun m!196729 () Bool)

(assert (=> d!47422 m!196729))

(declare-fun m!196731 () Bool)

(assert (=> d!47422 m!196731))

(declare-fun m!196733 () Bool)

(assert (=> d!47422 m!196733))

(declare-fun m!196735 () Bool)

(assert (=> d!47422 m!196735))

(assert (=> b!191061 m!196709))

(declare-fun m!196737 () Bool)

(assert (=> b!191061 m!196737))

(declare-fun m!196739 () Bool)

(assert (=> b!191061 m!196739))

(declare-fun m!196741 () Bool)

(assert (=> b!191055 m!196741))

(assert (=> b!190933 d!47422))

(declare-fun d!47436 () Bool)

(declare-fun lt!65506 () Bool)

(declare-fun e!117475 () Bool)

(assert (=> d!47436 (= lt!65506 e!117475)))

(declare-fun res!87655 () Bool)

(assert (=> d!47436 (=> (not res!87655) (not e!117475))))

(declare-fun list!1182 (BalanceConc!2026) List!3230)

(assert (=> d!47436 (= res!87655 (= (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170))))) (list!1182 (singletonSeq!145 separatorToken!170))))))

(declare-fun e!117476 () Bool)

(assert (=> d!47436 (= lt!65506 e!117476)))

(declare-fun res!87656 () Bool)

(assert (=> d!47436 (=> (not res!87656) (not e!117476))))

(declare-fun lt!65505 () tuple2!3302)

(assert (=> d!47436 (= res!87656 (= (size!2563 (_1!1867 lt!65505)) 1))))

(assert (=> d!47436 (= lt!65505 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170))))))

(assert (=> d!47436 (not (isEmpty!1610 rules!1920))))

(assert (=> d!47436 (= (rulesProduceIndividualToken!228 thiss!17480 rules!1920 separatorToken!170) lt!65506)))

(declare-fun b!191110 () Bool)

(declare-fun res!87654 () Bool)

(assert (=> b!191110 (=> (not res!87654) (not e!117476))))

(assert (=> b!191110 (= res!87654 (= (apply!492 (_1!1867 lt!65505) 0) separatorToken!170))))

(declare-fun b!191111 () Bool)

(assert (=> b!191111 (= e!117476 (isEmpty!1608 (_2!1867 lt!65505)))))

(declare-fun b!191112 () Bool)

(assert (=> b!191112 (= e!117475 (isEmpty!1608 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170))))))))

(assert (= (and d!47436 res!87656) b!191110))

(assert (= (and b!191110 res!87654) b!191111))

(assert (= (and d!47436 res!87655) b!191112))

(declare-fun m!196797 () Bool)

(assert (=> d!47436 m!196797))

(assert (=> d!47436 m!196433))

(assert (=> d!47436 m!196525))

(declare-fun m!196799 () Bool)

(assert (=> d!47436 m!196799))

(assert (=> d!47436 m!196525))

(assert (=> d!47436 m!196525))

(declare-fun m!196801 () Bool)

(assert (=> d!47436 m!196801))

(declare-fun m!196803 () Bool)

(assert (=> d!47436 m!196803))

(assert (=> d!47436 m!196799))

(declare-fun m!196805 () Bool)

(assert (=> d!47436 m!196805))

(declare-fun m!196807 () Bool)

(assert (=> b!191110 m!196807))

(declare-fun m!196809 () Bool)

(assert (=> b!191111 m!196809))

(assert (=> b!191112 m!196525))

(assert (=> b!191112 m!196525))

(assert (=> b!191112 m!196799))

(assert (=> b!191112 m!196799))

(assert (=> b!191112 m!196805))

(declare-fun m!196811 () Bool)

(assert (=> b!191112 m!196811))

(assert (=> b!190914 d!47436))

(declare-fun d!47454 () Bool)

(declare-fun res!87663 () Bool)

(declare-fun e!117483 () Bool)

(assert (=> d!47454 (=> (not res!87663) (not e!117483))))

(assert (=> d!47454 (= res!87663 (not (isEmpty!1609 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!47454 (= (inv!4041 (h!8617 tokens!465)) e!117483)))

(declare-fun b!191123 () Bool)

(declare-fun res!87664 () Bool)

(assert (=> b!191123 (=> (not res!87664) (not e!117483))))

(declare-fun dynLambda!1373 (Int TokenValue!615) BalanceConc!2024)

(assert (=> b!191123 (= res!87664 (= (originalCharacters!636 (h!8617 tokens!465)) (list!1179 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))))))

(declare-fun b!191124 () Bool)

(assert (=> b!191124 (= e!117483 (= (size!2562 (h!8617 tokens!465)) (size!2566 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (= (and d!47454 res!87663) b!191123))

(assert (= (and b!191123 res!87664) b!191124))

(declare-fun b_lambda!4611 () Bool)

(assert (=> (not b_lambda!4611) (not b!191123)))

(declare-fun tb!7789 () Bool)

(declare-fun t!28948 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) t!28948) tb!7789))

(declare-fun b!191129 () Bool)

(declare-fun e!117486 () Bool)

(declare-fun tp!88788 () Bool)

(declare-fun inv!4044 (Conc!1008) Bool)

(assert (=> b!191129 (= e!117486 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))) tp!88788))))

(declare-fun result!10710 () Bool)

(declare-fun inv!4045 (BalanceConc!2024) Bool)

(assert (=> tb!7789 (= result!10710 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))) e!117486))))

(assert (= tb!7789 b!191129))

(declare-fun m!196813 () Bool)

(assert (=> b!191129 m!196813))

(declare-fun m!196815 () Bool)

(assert (=> tb!7789 m!196815))

(assert (=> b!191123 t!28948))

(declare-fun b_and!13269 () Bool)

(assert (= b_and!13247 (and (=> t!28948 result!10710) b_and!13269)))

(declare-fun t!28950 () Bool)

(declare-fun tb!7791 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) t!28950) tb!7791))

(declare-fun result!10714 () Bool)

(assert (= result!10714 result!10710))

(assert (=> b!191123 t!28950))

(declare-fun b_and!13271 () Bool)

(assert (= b_and!13251 (and (=> t!28950 result!10714) b_and!13271)))

(declare-fun t!28952 () Bool)

(declare-fun tb!7793 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) t!28952) tb!7793))

(declare-fun result!10716 () Bool)

(assert (= result!10716 result!10710))

(assert (=> b!191123 t!28952))

(declare-fun b_and!13273 () Bool)

(assert (= b_and!13255 (and (=> t!28952 result!10716) b_and!13273)))

(declare-fun m!196817 () Bool)

(assert (=> d!47454 m!196817))

(declare-fun m!196819 () Bool)

(assert (=> b!191123 m!196819))

(assert (=> b!191123 m!196819))

(declare-fun m!196821 () Bool)

(assert (=> b!191123 m!196821))

(declare-fun m!196823 () Bool)

(assert (=> b!191124 m!196823))

(assert (=> b!190935 d!47454))

(declare-fun bs!18792 () Bool)

(declare-fun d!47456 () Bool)

(assert (= bs!18792 (and d!47456 b!190918)))

(declare-fun lambda!5845 () Int)

(assert (=> bs!18792 (= lambda!5845 lambda!5839)))

(declare-fun bs!18793 () Bool)

(assert (= bs!18793 (and d!47456 b!190910)))

(assert (=> bs!18793 (not (= lambda!5845 lambda!5840))))

(declare-fun bs!18794 () Bool)

(declare-fun b!191262 () Bool)

(assert (= bs!18794 (and b!191262 b!190918)))

(declare-fun lambda!5846 () Int)

(assert (=> bs!18794 (not (= lambda!5846 lambda!5839))))

(declare-fun bs!18795 () Bool)

(assert (= bs!18795 (and b!191262 b!190910)))

(assert (=> bs!18795 (= lambda!5846 lambda!5840)))

(declare-fun bs!18796 () Bool)

(assert (= bs!18796 (and b!191262 d!47456)))

(assert (=> bs!18796 (not (= lambda!5846 lambda!5845))))

(declare-fun b!191277 () Bool)

(declare-fun e!117574 () Bool)

(assert (=> b!191277 (= e!117574 true)))

(declare-fun b!191276 () Bool)

(declare-fun e!117573 () Bool)

(assert (=> b!191276 (= e!117573 e!117574)))

(declare-fun b!191275 () Bool)

(declare-fun e!117572 () Bool)

(assert (=> b!191275 (= e!117572 e!117573)))

(assert (=> b!191262 e!117572))

(assert (= b!191276 b!191277))

(assert (= b!191275 b!191276))

(assert (= (and b!191262 ((_ is Cons!3219) rules!1920)) b!191275))

(assert (=> b!191277 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5846))))

(assert (=> b!191277 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5846))))

(assert (=> b!191262 true))

(declare-fun bm!8745 () Bool)

(declare-fun call!8750 () BalanceConc!2024)

(declare-fun call!8752 () BalanceConc!2024)

(assert (=> bm!8745 (= call!8750 call!8752)))

(declare-fun b!191256 () Bool)

(declare-fun e!117567 () BalanceConc!2024)

(assert (=> b!191256 (= e!117567 (BalanceConc!2025 Empty!1008))))

(declare-fun b!191257 () Bool)

(declare-fun e!117566 () BalanceConc!2024)

(declare-fun call!8753 () BalanceConc!2024)

(declare-fun lt!65604 () BalanceConc!2024)

(declare-fun ++!770 (BalanceConc!2024 BalanceConc!2024) BalanceConc!2024)

(assert (=> b!191257 (= e!117566 (++!770 call!8753 lt!65604))))

(declare-fun b!191258 () Bool)

(declare-fun e!117562 () Bool)

(declare-fun lt!65600 () Option!471)

(assert (=> b!191258 (= e!117562 (= (_1!1868 (v!13981 lt!65600)) (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))))

(declare-fun b!191259 () Bool)

(assert (=> b!191259 (= e!117566 (BalanceConc!2025 Empty!1008))))

(declare-fun call!8754 () Token!930)

(assert (=> b!191259 (= (print!210 thiss!17480 (singletonSeq!145 call!8754)) (printTailRec!173 thiss!17480 (singletonSeq!145 call!8754) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!65594 () Unit!3036)

(declare-fun Unit!3040 () Unit!3036)

(assert (=> b!191259 (= lt!65594 Unit!3040)))

(declare-fun lt!65592 () Unit!3036)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 (LexerInterface!479 List!3229 List!3228 List!3228) Unit!3036)

(assert (=> b!191259 (= lt!65592 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 (list!1179 call!8750) (list!1179 lt!65604)))))

(assert (=> b!191259 false))

(declare-fun lt!65602 () Unit!3036)

(declare-fun Unit!3041 () Unit!3036)

(assert (=> b!191259 (= lt!65602 Unit!3041)))

(declare-fun b!191260 () Bool)

(declare-fun e!117563 () BalanceConc!2024)

(assert (=> b!191260 (= e!117563 call!8752)))

(declare-fun bm!8746 () Bool)

(declare-fun call!8751 () Token!930)

(assert (=> bm!8746 (= call!8751 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))

(declare-fun bm!8747 () Bool)

(assert (=> bm!8747 (= call!8754 call!8751)))

(declare-fun b!191261 () Bool)

(declare-fun e!117565 () Bool)

(assert (=> b!191261 (= e!117565 (<= 0 (size!2563 (seqFromList!564 (t!28932 tokens!465)))))))

(declare-fun e!117564 () BalanceConc!2024)

(assert (=> b!191262 (= e!117567 e!117564)))

(declare-fun lt!65595 () List!3230)

(assert (=> b!191262 (= lt!65595 (list!1182 (seqFromList!564 (t!28932 tokens!465))))))

(declare-fun lt!65601 () Unit!3036)

(declare-fun lemmaDropApply!150 (List!3230 Int) Unit!3036)

(assert (=> b!191262 (= lt!65601 (lemmaDropApply!150 lt!65595 0))))

(declare-fun drop!163 (List!3230 Int) List!3230)

(declare-fun apply!497 (List!3230 Int) Token!930)

(assert (=> b!191262 (= (head!682 (drop!163 lt!65595 0)) (apply!497 lt!65595 0))))

(declare-fun lt!65598 () Unit!3036)

(assert (=> b!191262 (= lt!65598 lt!65601)))

(declare-fun lt!65599 () List!3230)

(assert (=> b!191262 (= lt!65599 (list!1182 (seqFromList!564 (t!28932 tokens!465))))))

(declare-fun lt!65596 () Unit!3036)

(declare-fun lemmaDropTail!142 (List!3230 Int) Unit!3036)

(assert (=> b!191262 (= lt!65596 (lemmaDropTail!142 lt!65599 0))))

(declare-fun tail!385 (List!3230) List!3230)

(assert (=> b!191262 (= (tail!385 (drop!163 lt!65599 0)) (drop!163 lt!65599 (+ 0 1)))))

(declare-fun lt!65593 () Unit!3036)

(assert (=> b!191262 (= lt!65593 lt!65596)))

(declare-fun lt!65591 () Unit!3036)

(assert (=> b!191262 (= lt!65591 (forallContained!160 (list!1182 (seqFromList!564 (t!28932 tokens!465))) lambda!5846 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))))

(assert (=> b!191262 (= lt!65604 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!191262 (= lt!65600 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))

(declare-fun res!87737 () Bool)

(assert (=> b!191262 (= res!87737 ((_ is Some!470) lt!65600))))

(assert (=> b!191262 (=> (not res!87737) (not e!117562))))

(declare-fun c!36475 () Bool)

(assert (=> b!191262 (= c!36475 e!117562)))

(declare-fun bm!8749 () Bool)

(declare-fun c!36476 () Bool)

(assert (=> bm!8749 (= c!36476 c!36475)))

(assert (=> bm!8749 (= call!8753 (++!770 e!117563 (ite c!36475 lt!65604 call!8750)))))

(declare-fun b!191263 () Bool)

(declare-fun c!36477 () Bool)

(declare-fun e!117561 () Bool)

(assert (=> b!191263 (= c!36477 e!117561)))

(declare-fun res!87739 () Bool)

(assert (=> b!191263 (=> (not res!87739) (not e!117561))))

(assert (=> b!191263 (= res!87739 ((_ is Some!470) lt!65600))))

(assert (=> b!191263 (= e!117564 e!117566)))

(declare-fun b!191264 () Bool)

(assert (=> b!191264 (= e!117564 call!8753)))

(declare-fun b!191265 () Bool)

(assert (=> b!191265 (= e!117563 (charsOf!248 call!8754))))

(declare-fun b!191266 () Bool)

(assert (=> b!191266 (= e!117561 (not (= (_1!1868 (v!13981 lt!65600)) call!8751)))))

(declare-fun bm!8748 () Bool)

(assert (=> bm!8748 (= call!8752 (charsOf!248 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754))))))

(declare-fun lt!65597 () BalanceConc!2024)

(declare-fun dropList!110 (BalanceConc!2026 Int) List!3230)

(assert (=> d!47456 (= (list!1179 lt!65597) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0) separatorToken!170))))

(assert (=> d!47456 (= lt!65597 e!117567)))

(declare-fun c!36478 () Bool)

(assert (=> d!47456 (= c!36478 (>= 0 (size!2563 (seqFromList!564 (t!28932 tokens!465)))))))

(declare-fun lt!65603 () Unit!3036)

(declare-fun lemmaContentSubsetPreservesForall!53 (List!3230 List!3230 Int) Unit!3036)

(assert (=> d!47456 (= lt!65603 (lemmaContentSubsetPreservesForall!53 (list!1182 (seqFromList!564 (t!28932 tokens!465))) (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0) lambda!5845))))

(assert (=> d!47456 e!117565))

(declare-fun res!87738 () Bool)

(assert (=> d!47456 (=> (not res!87738) (not e!117565))))

(assert (=> d!47456 (= res!87738 (>= 0 0))))

(assert (=> d!47456 (= (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0) lt!65597)))

(assert (= (and d!47456 res!87738) b!191261))

(assert (= (and d!47456 c!36478) b!191256))

(assert (= (and d!47456 (not c!36478)) b!191262))

(assert (= (and b!191262 res!87737) b!191258))

(assert (= (and b!191262 c!36475) b!191264))

(assert (= (and b!191262 (not c!36475)) b!191263))

(assert (= (and b!191263 res!87739) b!191266))

(assert (= (and b!191263 c!36477) b!191257))

(assert (= (and b!191263 (not c!36477)) b!191259))

(assert (= (or b!191257 b!191259) bm!8747))

(assert (= (or b!191257 b!191259) bm!8745))

(assert (= (or b!191264 bm!8747 b!191266) bm!8746))

(assert (= (or b!191264 bm!8745) bm!8748))

(assert (= (or b!191264 b!191257) bm!8749))

(assert (= (and bm!8749 c!36476) b!191260))

(assert (= (and bm!8749 (not c!36476)) b!191265))

(declare-fun m!197025 () Bool)

(assert (=> d!47456 m!197025))

(declare-fun m!197027 () Bool)

(assert (=> d!47456 m!197027))

(declare-fun m!197029 () Bool)

(assert (=> d!47456 m!197029))

(declare-fun m!197031 () Bool)

(assert (=> d!47456 m!197031))

(assert (=> d!47456 m!196435))

(assert (=> d!47456 m!197025))

(assert (=> d!47456 m!196435))

(declare-fun m!197033 () Bool)

(assert (=> d!47456 m!197033))

(assert (=> d!47456 m!197027))

(declare-fun m!197035 () Bool)

(assert (=> d!47456 m!197035))

(assert (=> d!47456 m!196435))

(assert (=> d!47456 m!197027))

(declare-fun m!197037 () Bool)

(assert (=> b!191265 m!197037))

(assert (=> b!191261 m!196435))

(assert (=> b!191261 m!197033))

(declare-fun m!197039 () Bool)

(assert (=> b!191257 m!197039))

(assert (=> bm!8746 m!196435))

(declare-fun m!197041 () Bool)

(assert (=> bm!8746 m!197041))

(declare-fun m!197043 () Bool)

(assert (=> b!191262 m!197043))

(assert (=> b!191262 m!196435))

(assert (=> b!191262 m!197025))

(declare-fun m!197045 () Bool)

(assert (=> b!191262 m!197045))

(assert (=> b!191262 m!197041))

(declare-fun m!197047 () Bool)

(assert (=> b!191262 m!197047))

(assert (=> b!191262 m!196435))

(assert (=> b!191262 m!197041))

(assert (=> b!191262 m!197025))

(assert (=> b!191262 m!197041))

(declare-fun m!197049 () Bool)

(assert (=> b!191262 m!197049))

(declare-fun m!197051 () Bool)

(assert (=> b!191262 m!197051))

(declare-fun m!197053 () Bool)

(assert (=> b!191262 m!197053))

(assert (=> b!191262 m!197047))

(declare-fun m!197055 () Bool)

(assert (=> b!191262 m!197055))

(declare-fun m!197057 () Bool)

(assert (=> b!191262 m!197057))

(declare-fun m!197059 () Bool)

(assert (=> b!191262 m!197059))

(assert (=> b!191262 m!197051))

(declare-fun m!197061 () Bool)

(assert (=> b!191262 m!197061))

(assert (=> b!191262 m!197059))

(declare-fun m!197063 () Bool)

(assert (=> b!191262 m!197063))

(assert (=> b!191262 m!196435))

(declare-fun m!197065 () Bool)

(assert (=> b!191262 m!197065))

(assert (=> b!191262 m!197055))

(declare-fun m!197067 () Bool)

(assert (=> b!191262 m!197067))

(declare-fun m!197069 () Bool)

(assert (=> bm!8749 m!197069))

(declare-fun m!197071 () Bool)

(assert (=> bm!8748 m!197071))

(assert (=> b!191258 m!196435))

(assert (=> b!191258 m!197041))

(declare-fun m!197075 () Bool)

(assert (=> b!191259 m!197075))

(declare-fun m!197077 () Bool)

(assert (=> b!191259 m!197077))

(assert (=> b!191259 m!197075))

(declare-fun m!197081 () Bool)

(assert (=> b!191259 m!197081))

(declare-fun m!197085 () Bool)

(assert (=> b!191259 m!197085))

(declare-fun m!197087 () Bool)

(assert (=> b!191259 m!197087))

(assert (=> b!191259 m!197085))

(declare-fun m!197091 () Bool)

(assert (=> b!191259 m!197091))

(assert (=> b!191259 m!197087))

(assert (=> b!191259 m!197075))

(assert (=> b!190913 d!47456))

(declare-fun d!47500 () Bool)

(declare-fun lt!65619 () BalanceConc!2024)

(assert (=> d!47500 (= (list!1179 lt!65619) (originalCharacters!636 separatorToken!170))))

(assert (=> d!47500 (= lt!65619 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))))

(assert (=> d!47500 (= (charsOf!248 separatorToken!170) lt!65619)))

(declare-fun b_lambda!4615 () Bool)

(assert (=> (not b_lambda!4615) (not d!47500)))

(declare-fun t!28960 () Bool)

(declare-fun tb!7795 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170)))) t!28960) tb!7795))

(declare-fun b!191291 () Bool)

(declare-fun e!117585 () Bool)

(declare-fun tp!88789 () Bool)

(assert (=> b!191291 (= e!117585 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))) tp!88789))))

(declare-fun result!10718 () Bool)

(assert (=> tb!7795 (= result!10718 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))) e!117585))))

(assert (= tb!7795 b!191291))

(declare-fun m!197101 () Bool)

(assert (=> b!191291 m!197101))

(declare-fun m!197103 () Bool)

(assert (=> tb!7795 m!197103))

(assert (=> d!47500 t!28960))

(declare-fun b_and!13275 () Bool)

(assert (= b_and!13269 (and (=> t!28960 result!10718) b_and!13275)))

(declare-fun tb!7797 () Bool)

(declare-fun t!28962 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170)))) t!28962) tb!7797))

(declare-fun result!10720 () Bool)

(assert (= result!10720 result!10718))

(assert (=> d!47500 t!28962))

(declare-fun b_and!13277 () Bool)

(assert (= b_and!13271 (and (=> t!28962 result!10720) b_and!13277)))

(declare-fun tb!7799 () Bool)

(declare-fun t!28964 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170)))) t!28964) tb!7799))

(declare-fun result!10722 () Bool)

(assert (= result!10722 result!10718))

(assert (=> d!47500 t!28964))

(declare-fun b_and!13279 () Bool)

(assert (= b_and!13273 (and (=> t!28964 result!10722) b_and!13279)))

(declare-fun m!197113 () Bool)

(assert (=> d!47500 m!197113))

(declare-fun m!197117 () Bool)

(assert (=> d!47500 m!197117))

(assert (=> b!190913 d!47500))

(declare-fun d!47506 () Bool)

(declare-fun e!117591 () Bool)

(assert (=> d!47506 e!117591))

(declare-fun res!87754 () Bool)

(assert (=> d!47506 (=> (not res!87754) (not e!117591))))

(declare-fun lt!65625 () List!3228)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!430 (List!3228) (InoxSet C!2556))

(assert (=> d!47506 (= res!87754 (= (content!430 lt!65625) ((_ map or) (content!430 (++!768 lt!65413 lt!65438)) (content!430 lt!65427))))))

(declare-fun e!117592 () List!3228)

(assert (=> d!47506 (= lt!65625 e!117592)))

(declare-fun c!36487 () Bool)

(assert (=> d!47506 (= c!36487 ((_ is Nil!3218) (++!768 lt!65413 lt!65438)))))

(assert (=> d!47506 (= (++!768 (++!768 lt!65413 lt!65438) lt!65427) lt!65625)))

(declare-fun b!191301 () Bool)

(assert (=> b!191301 (= e!117592 lt!65427)))

(declare-fun b!191303 () Bool)

(declare-fun res!87755 () Bool)

(assert (=> b!191303 (=> (not res!87755) (not e!117591))))

(assert (=> b!191303 (= res!87755 (= (size!2566 lt!65625) (+ (size!2566 (++!768 lt!65413 lt!65438)) (size!2566 lt!65427))))))

(declare-fun b!191302 () Bool)

(assert (=> b!191302 (= e!117592 (Cons!3218 (h!8615 (++!768 lt!65413 lt!65438)) (++!768 (t!28930 (++!768 lt!65413 lt!65438)) lt!65427)))))

(declare-fun b!191304 () Bool)

(assert (=> b!191304 (= e!117591 (or (not (= lt!65427 Nil!3218)) (= lt!65625 (++!768 lt!65413 lt!65438))))))

(assert (= (and d!47506 c!36487) b!191301))

(assert (= (and d!47506 (not c!36487)) b!191302))

(assert (= (and d!47506 res!87754) b!191303))

(assert (= (and b!191303 res!87755) b!191304))

(declare-fun m!197131 () Bool)

(assert (=> d!47506 m!197131))

(assert (=> d!47506 m!196443))

(declare-fun m!197133 () Bool)

(assert (=> d!47506 m!197133))

(declare-fun m!197135 () Bool)

(assert (=> d!47506 m!197135))

(declare-fun m!197137 () Bool)

(assert (=> b!191303 m!197137))

(assert (=> b!191303 m!196443))

(declare-fun m!197139 () Bool)

(assert (=> b!191303 m!197139))

(declare-fun m!197141 () Bool)

(assert (=> b!191303 m!197141))

(declare-fun m!197143 () Bool)

(assert (=> b!191302 m!197143))

(assert (=> b!190913 d!47506))

(declare-fun d!47512 () Bool)

(declare-fun list!1183 (Conc!1008) List!3228)

(assert (=> d!47512 (= (list!1179 (charsOf!248 (h!8617 tokens!465))) (list!1183 (c!36425 (charsOf!248 (h!8617 tokens!465)))))))

(declare-fun bs!18798 () Bool)

(assert (= bs!18798 d!47512))

(declare-fun m!197145 () Bool)

(assert (=> bs!18798 m!197145))

(assert (=> b!190913 d!47512))

(declare-fun d!47514 () Bool)

(declare-fun lt!65626 () BalanceConc!2024)

(assert (=> d!47514 (= (list!1179 lt!65626) (originalCharacters!636 (h!8617 tokens!465)))))

(assert (=> d!47514 (= lt!65626 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))))

(assert (=> d!47514 (= (charsOf!248 (h!8617 tokens!465)) lt!65626)))

(declare-fun b_lambda!4617 () Bool)

(assert (=> (not b_lambda!4617) (not d!47514)))

(assert (=> d!47514 t!28948))

(declare-fun b_and!13281 () Bool)

(assert (= b_and!13275 (and (=> t!28948 result!10710) b_and!13281)))

(assert (=> d!47514 t!28950))

(declare-fun b_and!13283 () Bool)

(assert (= b_and!13277 (and (=> t!28950 result!10714) b_and!13283)))

(assert (=> d!47514 t!28952))

(declare-fun b_and!13285 () Bool)

(assert (= b_and!13279 (and (=> t!28952 result!10716) b_and!13285)))

(declare-fun m!197147 () Bool)

(assert (=> d!47514 m!197147))

(assert (=> d!47514 m!196819))

(assert (=> b!190913 d!47514))

(declare-fun d!47516 () Bool)

(declare-fun fromListB!207 (List!3230) BalanceConc!2026)

(assert (=> d!47516 (= (seqFromList!564 (t!28932 tokens!465)) (fromListB!207 (t!28932 tokens!465)))))

(declare-fun bs!18799 () Bool)

(assert (= bs!18799 d!47516))

(declare-fun m!197149 () Bool)

(assert (=> bs!18799 m!197149))

(assert (=> b!190913 d!47516))

(declare-fun d!47518 () Bool)

(declare-fun e!117596 () Bool)

(assert (=> d!47518 e!117596))

(declare-fun res!87762 () Bool)

(assert (=> d!47518 (=> (not res!87762) (not e!117596))))

(declare-fun lt!65630 () List!3228)

(assert (=> d!47518 (= res!87762 (= (content!430 lt!65630) ((_ map or) (content!430 lt!65413) (content!430 lt!65438))))))

(declare-fun e!117597 () List!3228)

(assert (=> d!47518 (= lt!65630 e!117597)))

(declare-fun c!36488 () Bool)

(assert (=> d!47518 (= c!36488 ((_ is Nil!3218) lt!65413))))

(assert (=> d!47518 (= (++!768 lt!65413 lt!65438) lt!65630)))

(declare-fun b!191311 () Bool)

(assert (=> b!191311 (= e!117597 lt!65438)))

(declare-fun b!191313 () Bool)

(declare-fun res!87763 () Bool)

(assert (=> b!191313 (=> (not res!87763) (not e!117596))))

(assert (=> b!191313 (= res!87763 (= (size!2566 lt!65630) (+ (size!2566 lt!65413) (size!2566 lt!65438))))))

(declare-fun b!191312 () Bool)

(assert (=> b!191312 (= e!117597 (Cons!3218 (h!8615 lt!65413) (++!768 (t!28930 lt!65413) lt!65438)))))

(declare-fun b!191314 () Bool)

(assert (=> b!191314 (= e!117596 (or (not (= lt!65438 Nil!3218)) (= lt!65630 lt!65413)))))

(assert (= (and d!47518 c!36488) b!191311))

(assert (= (and d!47518 (not c!36488)) b!191312))

(assert (= (and d!47518 res!87762) b!191313))

(assert (= (and b!191313 res!87763) b!191314))

(declare-fun m!197151 () Bool)

(assert (=> d!47518 m!197151))

(declare-fun m!197153 () Bool)

(assert (=> d!47518 m!197153))

(declare-fun m!197157 () Bool)

(assert (=> d!47518 m!197157))

(declare-fun m!197159 () Bool)

(assert (=> b!191313 m!197159))

(declare-fun m!197161 () Bool)

(assert (=> b!191313 m!197161))

(declare-fun m!197165 () Bool)

(assert (=> b!191313 m!197165))

(declare-fun m!197167 () Bool)

(assert (=> b!191312 m!197167))

(assert (=> b!190913 d!47518))

(declare-fun d!47520 () Bool)

(assert (=> d!47520 (= (list!1179 (charsOf!248 separatorToken!170)) (list!1183 (c!36425 (charsOf!248 separatorToken!170))))))

(declare-fun bs!18800 () Bool)

(assert (= bs!18800 d!47520))

(declare-fun m!197169 () Bool)

(assert (=> bs!18800 m!197169))

(assert (=> b!190913 d!47520))

(declare-fun d!47522 () Bool)

(assert (=> d!47522 (= (++!768 (++!768 lt!65413 lt!65438) lt!65427) (++!768 lt!65413 (++!768 lt!65438 lt!65427)))))

(declare-fun lt!65635 () Unit!3036)

(declare-fun choose!1931 (List!3228 List!3228 List!3228) Unit!3036)

(assert (=> d!47522 (= lt!65635 (choose!1931 lt!65413 lt!65438 lt!65427))))

(assert (=> d!47522 (= (lemmaConcatAssociativity!282 lt!65413 lt!65438 lt!65427) lt!65635)))

(declare-fun bs!18802 () Bool)

(assert (= bs!18802 d!47522))

(assert (=> bs!18802 m!196443))

(assert (=> bs!18802 m!196447))

(declare-fun m!197185 () Bool)

(assert (=> bs!18802 m!197185))

(assert (=> bs!18802 m!196447))

(assert (=> bs!18802 m!196443))

(assert (=> bs!18802 m!196445))

(declare-fun m!197187 () Bool)

(assert (=> bs!18802 m!197187))

(assert (=> b!190913 d!47522))

(declare-fun d!47536 () Bool)

(assert (=> d!47536 (= (list!1179 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0)) (list!1183 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!18803 () Bool)

(assert (= bs!18803 d!47536))

(declare-fun m!197189 () Bool)

(assert (=> bs!18803 m!197189))

(assert (=> b!190913 d!47536))

(declare-fun d!47538 () Bool)

(declare-fun e!117599 () Bool)

(assert (=> d!47538 e!117599))

(declare-fun res!87765 () Bool)

(assert (=> d!47538 (=> (not res!87765) (not e!117599))))

(declare-fun lt!65636 () List!3228)

(assert (=> d!47538 (= res!87765 (= (content!430 lt!65636) ((_ map or) (content!430 lt!65438) (content!430 lt!65427))))))

(declare-fun e!117600 () List!3228)

(assert (=> d!47538 (= lt!65636 e!117600)))

(declare-fun c!36489 () Bool)

(assert (=> d!47538 (= c!36489 ((_ is Nil!3218) lt!65438))))

(assert (=> d!47538 (= (++!768 lt!65438 lt!65427) lt!65636)))

(declare-fun b!191316 () Bool)

(assert (=> b!191316 (= e!117600 lt!65427)))

(declare-fun b!191318 () Bool)

(declare-fun res!87766 () Bool)

(assert (=> b!191318 (=> (not res!87766) (not e!117599))))

(assert (=> b!191318 (= res!87766 (= (size!2566 lt!65636) (+ (size!2566 lt!65438) (size!2566 lt!65427))))))

(declare-fun b!191317 () Bool)

(assert (=> b!191317 (= e!117600 (Cons!3218 (h!8615 lt!65438) (++!768 (t!28930 lt!65438) lt!65427)))))

(declare-fun b!191319 () Bool)

(assert (=> b!191319 (= e!117599 (or (not (= lt!65427 Nil!3218)) (= lt!65636 lt!65438)))))

(assert (= (and d!47538 c!36489) b!191316))

(assert (= (and d!47538 (not c!36489)) b!191317))

(assert (= (and d!47538 res!87765) b!191318))

(assert (= (and b!191318 res!87766) b!191319))

(declare-fun m!197191 () Bool)

(assert (=> d!47538 m!197191))

(assert (=> d!47538 m!197157))

(assert (=> d!47538 m!197135))

(declare-fun m!197193 () Bool)

(assert (=> b!191318 m!197193))

(assert (=> b!191318 m!197165))

(assert (=> b!191318 m!197141))

(declare-fun m!197195 () Bool)

(assert (=> b!191317 m!197195))

(assert (=> b!190913 d!47538))

(declare-fun bs!18807 () Bool)

(declare-fun b!191371 () Bool)

(assert (= bs!18807 (and b!191371 b!190918)))

(declare-fun lambda!5849 () Int)

(assert (=> bs!18807 (not (= lambda!5849 lambda!5839))))

(declare-fun bs!18808 () Bool)

(assert (= bs!18808 (and b!191371 b!190910)))

(assert (=> bs!18808 (= lambda!5849 lambda!5840)))

(declare-fun bs!18809 () Bool)

(assert (= bs!18809 (and b!191371 d!47456)))

(assert (=> bs!18809 (not (= lambda!5849 lambda!5845))))

(declare-fun bs!18810 () Bool)

(assert (= bs!18810 (and b!191371 b!191262)))

(assert (=> bs!18810 (= lambda!5849 lambda!5846)))

(declare-fun b!191377 () Bool)

(declare-fun e!117634 () Bool)

(assert (=> b!191377 (= e!117634 true)))

(declare-fun b!191376 () Bool)

(declare-fun e!117633 () Bool)

(assert (=> b!191376 (= e!117633 e!117634)))

(declare-fun b!191375 () Bool)

(declare-fun e!117632 () Bool)

(assert (=> b!191375 (= e!117632 e!117633)))

(assert (=> b!191371 e!117632))

(assert (= b!191376 b!191377))

(assert (= b!191375 b!191376))

(assert (= (and b!191371 ((_ is Cons!3219) rules!1920)) b!191375))

(assert (=> b!191377 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5849))))

(assert (=> b!191377 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5849))))

(assert (=> b!191371 true))

(declare-fun d!47540 () Bool)

(declare-fun c!36507 () Bool)

(assert (=> d!47540 (= c!36507 ((_ is Cons!3220) (t!28932 tokens!465)))))

(declare-fun e!117630 () List!3228)

(assert (=> d!47540 (= (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (t!28932 tokens!465) separatorToken!170) e!117630)))

(declare-fun bm!8761 () Bool)

(declare-fun call!8766 () BalanceConc!2024)

(assert (=> bm!8761 (= call!8766 (charsOf!248 (h!8617 (t!28932 tokens!465))))))

(declare-fun b!191365 () Bool)

(declare-fun c!36506 () Bool)

(declare-fun lt!65669 () Option!473)

(assert (=> b!191365 (= c!36506 (and ((_ is Some!472) lt!65669) (not (= (_1!1869 (v!13983 lt!65669)) (h!8617 (t!28932 tokens!465))))))))

(declare-fun e!117629 () List!3228)

(declare-fun e!117628 () List!3228)

(assert (=> b!191365 (= e!117629 e!117628)))

(declare-fun bm!8762 () Bool)

(declare-fun call!8769 () BalanceConc!2024)

(assert (=> bm!8762 (= call!8769 call!8766)))

(declare-fun b!191366 () Bool)

(declare-fun e!117627 () BalanceConc!2024)

(assert (=> b!191366 (= e!117627 call!8769)))

(declare-fun b!191367 () Bool)

(assert (=> b!191367 (= e!117628 Nil!3218)))

(assert (=> b!191367 (= (print!210 thiss!17480 (singletonSeq!145 (h!8617 (t!28932 tokens!465)))) (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 (t!28932 tokens!465))) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!65668 () Unit!3036)

(declare-fun Unit!3042 () Unit!3036)

(assert (=> b!191367 (= lt!65668 Unit!3042)))

(declare-fun lt!65671 () List!3228)

(declare-fun lt!65670 () Unit!3036)

(declare-fun call!8770 () List!3228)

(assert (=> b!191367 (= lt!65670 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 call!8770 lt!65671))))

(assert (=> b!191367 false))

(declare-fun lt!65672 () Unit!3036)

(declare-fun Unit!3043 () Unit!3036)

(assert (=> b!191367 (= lt!65672 Unit!3043)))

(declare-fun b!191368 () Bool)

(declare-fun call!8767 () List!3228)

(assert (=> b!191368 (= e!117628 (++!768 call!8767 lt!65671))))

(declare-fun c!36503 () Bool)

(declare-fun call!8768 () List!3228)

(declare-fun bm!8763 () Bool)

(assert (=> bm!8763 (= call!8768 (list!1179 (ite c!36503 call!8766 e!117627)))))

(declare-fun bm!8764 () Bool)

(assert (=> bm!8764 (= call!8770 call!8768)))

(declare-fun c!36504 () Bool)

(assert (=> bm!8764 (= c!36504 c!36506)))

(declare-fun b!191369 () Bool)

(assert (=> b!191369 (= e!117629 call!8767)))

(declare-fun b!191370 () Bool)

(declare-fun e!117631 () List!3228)

(assert (=> b!191370 (= e!117631 (list!1179 call!8769))))

(declare-fun bm!8765 () Bool)

(declare-fun c!36505 () Bool)

(assert (=> bm!8765 (= c!36505 c!36503)))

(assert (=> bm!8765 (= call!8767 (++!768 e!117631 (ite c!36503 lt!65671 call!8770)))))

(assert (=> b!191371 (= e!117630 e!117629)))

(declare-fun lt!65667 () Unit!3036)

(assert (=> b!191371 (= lt!65667 (forallContained!160 (t!28932 tokens!465) lambda!5849 (h!8617 (t!28932 tokens!465))))))

(assert (=> b!191371 (= lt!65671 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (t!28932 (t!28932 tokens!465)) separatorToken!170))))

(assert (=> b!191371 (= lt!65669 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671)))))

(assert (=> b!191371 (= c!36503 (and ((_ is Some!472) lt!65669) (= (_1!1869 (v!13983 lt!65669)) (h!8617 (t!28932 tokens!465)))))))

(declare-fun b!191372 () Bool)

(assert (=> b!191372 (= e!117627 (charsOf!248 separatorToken!170))))

(declare-fun b!191373 () Bool)

(assert (=> b!191373 (= e!117631 call!8768)))

(declare-fun b!191374 () Bool)

(assert (=> b!191374 (= e!117630 Nil!3218)))

(assert (= (and d!47540 c!36507) b!191371))

(assert (= (and d!47540 (not c!36507)) b!191374))

(assert (= (and b!191371 c!36503) b!191369))

(assert (= (and b!191371 (not c!36503)) b!191365))

(assert (= (and b!191365 c!36506) b!191368))

(assert (= (and b!191365 (not c!36506)) b!191367))

(assert (= (or b!191368 b!191367) bm!8762))

(assert (= (or b!191368 b!191367) bm!8764))

(assert (= (and bm!8764 c!36504) b!191372))

(assert (= (and bm!8764 (not c!36504)) b!191366))

(assert (= (or b!191369 bm!8762) bm!8761))

(assert (= (or b!191369 bm!8764) bm!8763))

(assert (= (or b!191369 b!191368) bm!8765))

(assert (= (and bm!8765 c!36505) b!191373))

(assert (= (and bm!8765 (not c!36505)) b!191370))

(declare-fun m!197305 () Bool)

(assert (=> b!191370 m!197305))

(declare-fun m!197307 () Bool)

(assert (=> b!191368 m!197307))

(assert (=> b!191372 m!196439))

(declare-fun m!197309 () Bool)

(assert (=> bm!8765 m!197309))

(declare-fun m!197311 () Bool)

(assert (=> b!191371 m!197311))

(declare-fun m!197313 () Bool)

(assert (=> b!191371 m!197313))

(declare-fun m!197315 () Bool)

(assert (=> b!191371 m!197315))

(declare-fun m!197317 () Bool)

(assert (=> b!191371 m!197317))

(assert (=> b!191371 m!197313))

(declare-fun m!197319 () Bool)

(assert (=> b!191371 m!197319))

(assert (=> b!191371 m!197317))

(assert (=> b!191371 m!197315))

(declare-fun m!197321 () Bool)

(assert (=> b!191371 m!197321))

(assert (=> bm!8761 m!197317))

(declare-fun m!197323 () Bool)

(assert (=> b!191367 m!197323))

(assert (=> b!191367 m!197323))

(declare-fun m!197325 () Bool)

(assert (=> b!191367 m!197325))

(assert (=> b!191367 m!197323))

(declare-fun m!197327 () Bool)

(assert (=> b!191367 m!197327))

(declare-fun m!197329 () Bool)

(assert (=> b!191367 m!197329))

(declare-fun m!197331 () Bool)

(assert (=> bm!8763 m!197331))

(assert (=> b!190913 d!47540))

(declare-fun d!47558 () Bool)

(declare-fun e!117635 () Bool)

(assert (=> d!47558 e!117635))

(declare-fun res!87786 () Bool)

(assert (=> d!47558 (=> (not res!87786) (not e!117635))))

(declare-fun lt!65673 () List!3228)

(assert (=> d!47558 (= res!87786 (= (content!430 lt!65673) ((_ map or) (content!430 lt!65413) (content!430 lt!65412))))))

(declare-fun e!117636 () List!3228)

(assert (=> d!47558 (= lt!65673 e!117636)))

(declare-fun c!36508 () Bool)

(assert (=> d!47558 (= c!36508 ((_ is Nil!3218) lt!65413))))

(assert (=> d!47558 (= (++!768 lt!65413 lt!65412) lt!65673)))

(declare-fun b!191378 () Bool)

(assert (=> b!191378 (= e!117636 lt!65412)))

(declare-fun b!191380 () Bool)

(declare-fun res!87787 () Bool)

(assert (=> b!191380 (=> (not res!87787) (not e!117635))))

(assert (=> b!191380 (= res!87787 (= (size!2566 lt!65673) (+ (size!2566 lt!65413) (size!2566 lt!65412))))))

(declare-fun b!191379 () Bool)

(assert (=> b!191379 (= e!117636 (Cons!3218 (h!8615 lt!65413) (++!768 (t!28930 lt!65413) lt!65412)))))

(declare-fun b!191381 () Bool)

(assert (=> b!191381 (= e!117635 (or (not (= lt!65412 Nil!3218)) (= lt!65673 lt!65413)))))

(assert (= (and d!47558 c!36508) b!191378))

(assert (= (and d!47558 (not c!36508)) b!191379))

(assert (= (and d!47558 res!87786) b!191380))

(assert (= (and b!191380 res!87787) b!191381))

(declare-fun m!197333 () Bool)

(assert (=> d!47558 m!197333))

(assert (=> d!47558 m!197153))

(declare-fun m!197335 () Bool)

(assert (=> d!47558 m!197335))

(declare-fun m!197337 () Bool)

(assert (=> b!191380 m!197337))

(assert (=> b!191380 m!197161))

(declare-fun m!197339 () Bool)

(assert (=> b!191380 m!197339))

(declare-fun m!197341 () Bool)

(assert (=> b!191379 m!197341))

(assert (=> b!190913 d!47558))

(declare-fun d!47560 () Bool)

(declare-fun isEmpty!1619 (Option!471) Bool)

(assert (=> d!47560 (= (isDefined!322 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))) (not (isEmpty!1619 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))

(declare-fun bs!18811 () Bool)

(assert (= bs!18811 d!47560))

(assert (=> bs!18811 m!196565))

(declare-fun m!197343 () Bool)

(assert (=> bs!18811 m!197343))

(assert (=> b!190910 d!47560))

(declare-fun e!117678 () Bool)

(declare-fun lt!65712 () Option!471)

(declare-fun b!191430 () Bool)

(declare-fun get!939 (Option!471) tuple2!3304)

(declare-fun maxPrefixZipper!62 (LexerInterface!479 List!3229 List!3228) Option!473)

(assert (=> b!191430 (= e!117678 (= (list!1179 (_2!1868 (get!939 lt!65712))) (_2!1869 (get!938 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun b!191431 () Bool)

(declare-fun e!117677 () Bool)

(assert (=> b!191431 (= e!117677 (= (list!1179 (_2!1868 (get!939 lt!65712))) (_2!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun b!191432 () Bool)

(declare-fun e!117674 () Bool)

(assert (=> b!191432 (= e!117674 e!117678)))

(declare-fun res!87827 () Bool)

(assert (=> b!191432 (=> (not res!87827) (not e!117678))))

(assert (=> b!191432 (= res!87827 (= (_1!1868 (get!939 lt!65712)) (_1!1869 (get!938 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun b!191433 () Bool)

(declare-fun e!117676 () Bool)

(declare-fun e!117675 () Bool)

(assert (=> b!191433 (= e!117676 e!117675)))

(declare-fun res!87825 () Bool)

(assert (=> b!191433 (=> res!87825 e!117675)))

(assert (=> b!191433 (= res!87825 (not (isDefined!322 lt!65712)))))

(declare-fun b!191434 () Bool)

(assert (=> b!191434 (= e!117675 e!117677)))

(declare-fun res!87826 () Bool)

(assert (=> b!191434 (=> (not res!87826) (not e!117677))))

(assert (=> b!191434 (= res!87826 (= (_1!1868 (get!939 lt!65712)) (_1!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun d!47562 () Bool)

(assert (=> d!47562 e!117676))

(declare-fun res!87823 () Bool)

(assert (=> d!47562 (=> (not res!87823) (not e!117676))))

(assert (=> d!47562 (= res!87823 (= (isDefined!322 lt!65712) (isDefined!323 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))))

(declare-fun e!117673 () Option!471)

(assert (=> d!47562 (= lt!65712 e!117673)))

(declare-fun c!36516 () Bool)

(assert (=> d!47562 (= c!36516 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!65715 () Unit!3036)

(declare-fun lt!65718 () Unit!3036)

(assert (=> d!47562 (= lt!65715 lt!65718)))

(declare-fun lt!65713 () List!3228)

(declare-fun lt!65714 () List!3228)

(assert (=> d!47562 (isPrefix!289 lt!65713 lt!65714)))

(assert (=> d!47562 (= lt!65718 (lemmaIsPrefixRefl!159 lt!65713 lt!65714))))

(assert (=> d!47562 (= lt!65714 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!47562 (= lt!65713 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!47562 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!47562 (= (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))) lt!65712)))

(declare-fun b!191435 () Bool)

(declare-fun lt!65716 () Option!471)

(declare-fun lt!65717 () Option!471)

(assert (=> b!191435 (= e!117673 (ite (and ((_ is None!470) lt!65716) ((_ is None!470) lt!65717)) None!470 (ite ((_ is None!470) lt!65717) lt!65716 (ite ((_ is None!470) lt!65716) lt!65717 (ite (>= (size!2562 (_1!1868 (v!13981 lt!65716))) (size!2562 (_1!1868 (v!13981 lt!65717)))) lt!65716 lt!65717)))))))

(declare-fun call!8776 () Option!471)

(assert (=> b!191435 (= lt!65716 call!8776)))

(assert (=> b!191435 (= lt!65717 (maxPrefixZipperSequence!172 thiss!17480 (t!28931 rules!1920) (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(declare-fun b!191436 () Bool)

(assert (=> b!191436 (= e!117673 call!8776)))

(declare-fun bm!8771 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!63 (LexerInterface!479 Rule!986 BalanceConc!2024) Option!471)

(assert (=> bm!8771 (= call!8776 (maxPrefixOneRuleZipperSequence!63 thiss!17480 (h!8616 rules!1920) (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(declare-fun b!191437 () Bool)

(declare-fun res!87824 () Bool)

(assert (=> b!191437 (=> (not res!87824) (not e!117676))))

(assert (=> b!191437 (= res!87824 e!117674)))

(declare-fun res!87822 () Bool)

(assert (=> b!191437 (=> res!87822 e!117674)))

(assert (=> b!191437 (= res!87822 (not (isDefined!322 lt!65712)))))

(assert (= (and d!47562 c!36516) b!191436))

(assert (= (and d!47562 (not c!36516)) b!191435))

(assert (= (or b!191436 b!191435) bm!8771))

(assert (= (and d!47562 res!87823) b!191437))

(assert (= (and b!191437 (not res!87822)) b!191432))

(assert (= (and b!191432 res!87827) b!191430))

(assert (= (and b!191437 res!87824) b!191433))

(assert (= (and b!191433 (not res!87825)) b!191434))

(assert (= (and b!191434 res!87826) b!191431))

(declare-fun m!197383 () Bool)

(assert (=> b!191434 m!197383))

(assert (=> b!191434 m!196563))

(declare-fun m!197385 () Bool)

(assert (=> b!191434 m!197385))

(assert (=> b!191434 m!197385))

(declare-fun m!197387 () Bool)

(assert (=> b!191434 m!197387))

(assert (=> b!191434 m!197387))

(declare-fun m!197389 () Bool)

(assert (=> b!191434 m!197389))

(assert (=> d!47562 m!197385))

(declare-fun m!197391 () Bool)

(assert (=> d!47562 m!197391))

(declare-fun m!197393 () Bool)

(assert (=> d!47562 m!197393))

(assert (=> d!47562 m!196735))

(declare-fun m!197395 () Bool)

(assert (=> d!47562 m!197395))

(assert (=> d!47562 m!197391))

(declare-fun m!197397 () Bool)

(assert (=> d!47562 m!197397))

(assert (=> d!47562 m!196563))

(assert (=> d!47562 m!197385))

(declare-fun m!197399 () Bool)

(assert (=> d!47562 m!197399))

(assert (=> b!191435 m!196563))

(declare-fun m!197401 () Bool)

(assert (=> b!191435 m!197401))

(assert (=> bm!8771 m!196563))

(declare-fun m!197403 () Bool)

(assert (=> bm!8771 m!197403))

(assert (=> b!191430 m!197385))

(assert (=> b!191430 m!197391))

(assert (=> b!191430 m!197391))

(declare-fun m!197405 () Bool)

(assert (=> b!191430 m!197405))

(declare-fun m!197407 () Bool)

(assert (=> b!191430 m!197407))

(assert (=> b!191430 m!197383))

(assert (=> b!191430 m!196563))

(assert (=> b!191430 m!197385))

(assert (=> b!191437 m!197393))

(assert (=> b!191432 m!197383))

(assert (=> b!191432 m!196563))

(assert (=> b!191432 m!197385))

(assert (=> b!191432 m!197385))

(assert (=> b!191432 m!197391))

(assert (=> b!191432 m!197391))

(assert (=> b!191432 m!197405))

(assert (=> b!191431 m!197387))

(assert (=> b!191431 m!197389))

(assert (=> b!191431 m!197407))

(assert (=> b!191431 m!197383))

(assert (=> b!191431 m!197385))

(assert (=> b!191431 m!197387))

(assert (=> b!191431 m!196563))

(assert (=> b!191431 m!197385))

(assert (=> b!191433 m!197393))

(assert (=> b!190910 d!47562))

(declare-fun d!47574 () Bool)

(declare-fun fromListB!208 (List!3228) BalanceConc!2024)

(assert (=> d!47574 (= (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))) (fromListB!208 (originalCharacters!636 (h!8617 tokens!465))))))

(declare-fun bs!18813 () Bool)

(assert (= bs!18813 d!47574))

(declare-fun m!197409 () Bool)

(assert (=> bs!18813 m!197409))

(assert (=> b!190910 d!47574))

(declare-fun d!47576 () Bool)

(declare-fun dynLambda!1375 (Int Token!930) Bool)

(assert (=> d!47576 (dynLambda!1375 lambda!5840 (h!8617 tokens!465))))

(declare-fun lt!65721 () Unit!3036)

(declare-fun choose!1935 (List!3230 Int Token!930) Unit!3036)

(assert (=> d!47576 (= lt!65721 (choose!1935 tokens!465 lambda!5840 (h!8617 tokens!465)))))

(declare-fun e!117681 () Bool)

(assert (=> d!47576 e!117681))

(declare-fun res!87830 () Bool)

(assert (=> d!47576 (=> (not res!87830) (not e!117681))))

(assert (=> d!47576 (= res!87830 (forall!675 tokens!465 lambda!5840))))

(assert (=> d!47576 (= (forallContained!160 tokens!465 lambda!5840 (h!8617 tokens!465)) lt!65721)))

(declare-fun b!191440 () Bool)

(assert (=> b!191440 (= e!117681 (contains!514 tokens!465 (h!8617 tokens!465)))))

(assert (= (and d!47576 res!87830) b!191440))

(declare-fun b_lambda!4623 () Bool)

(assert (=> (not b_lambda!4623) (not d!47576)))

(declare-fun m!197411 () Bool)

(assert (=> d!47576 m!197411))

(declare-fun m!197413 () Bool)

(assert (=> d!47576 m!197413))

(assert (=> d!47576 m!196547))

(declare-fun m!197415 () Bool)

(assert (=> b!191440 m!197415))

(assert (=> b!190910 d!47576))

(declare-fun b!191469 () Bool)

(declare-fun res!87849 () Bool)

(declare-fun e!117701 () Bool)

(assert (=> b!191469 (=> (not res!87849) (not e!117701))))

(declare-fun tail!386 (List!3228) List!3228)

(assert (=> b!191469 (= res!87849 (isEmpty!1609 (tail!386 lt!65413)))))

(declare-fun bm!8774 () Bool)

(declare-fun call!8779 () Bool)

(assert (=> bm!8774 (= call!8779 (isEmpty!1609 lt!65413))))

(declare-fun d!47578 () Bool)

(declare-fun e!117696 () Bool)

(assert (=> d!47578 e!117696))

(declare-fun c!36524 () Bool)

(assert (=> d!47578 (= c!36524 ((_ is EmptyExpr!817) (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun lt!65724 () Bool)

(declare-fun e!117697 () Bool)

(assert (=> d!47578 (= lt!65724 e!117697)))

(declare-fun c!36525 () Bool)

(assert (=> d!47578 (= c!36525 (isEmpty!1609 lt!65413))))

(declare-fun validRegex!201 (Regex!817) Bool)

(assert (=> d!47578 (validRegex!201 (regex!593 (rule!1108 (h!8617 tokens!465))))))

(assert (=> d!47578 (= (matchR!155 (regex!593 (rule!1108 (h!8617 tokens!465))) lt!65413) lt!65724)))

(declare-fun b!191470 () Bool)

(declare-fun nullable!128 (Regex!817) Bool)

(assert (=> b!191470 (= e!117697 (nullable!128 (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun b!191471 () Bool)

(declare-fun head!684 (List!3228) C!2556)

(assert (=> b!191471 (= e!117701 (= (head!684 lt!65413) (c!36426 (regex!593 (rule!1108 (h!8617 tokens!465))))))))

(declare-fun b!191472 () Bool)

(declare-fun e!117698 () Bool)

(assert (=> b!191472 (= e!117698 (not (= (head!684 lt!65413) (c!36426 (regex!593 (rule!1108 (h!8617 tokens!465)))))))))

(declare-fun b!191473 () Bool)

(declare-fun e!117700 () Bool)

(assert (=> b!191473 (= e!117696 e!117700)))

(declare-fun c!36523 () Bool)

(assert (=> b!191473 (= c!36523 ((_ is EmptyLang!817) (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun b!191474 () Bool)

(assert (=> b!191474 (= e!117696 (= lt!65724 call!8779))))

(declare-fun b!191475 () Bool)

(declare-fun e!117699 () Bool)

(declare-fun e!117702 () Bool)

(assert (=> b!191475 (= e!117699 e!117702)))

(declare-fun res!87848 () Bool)

(assert (=> b!191475 (=> (not res!87848) (not e!117702))))

(assert (=> b!191475 (= res!87848 (not lt!65724))))

(declare-fun b!191476 () Bool)

(assert (=> b!191476 (= e!117700 (not lt!65724))))

(declare-fun b!191477 () Bool)

(declare-fun res!87853 () Bool)

(assert (=> b!191477 (=> res!87853 e!117698)))

(assert (=> b!191477 (= res!87853 (not (isEmpty!1609 (tail!386 lt!65413))))))

(declare-fun b!191478 () Bool)

(declare-fun res!87850 () Bool)

(assert (=> b!191478 (=> res!87850 e!117699)))

(assert (=> b!191478 (= res!87850 (not ((_ is ElementMatch!817) (regex!593 (rule!1108 (h!8617 tokens!465))))))))

(assert (=> b!191478 (= e!117700 e!117699)))

(declare-fun b!191479 () Bool)

(declare-fun res!87854 () Bool)

(assert (=> b!191479 (=> res!87854 e!117699)))

(assert (=> b!191479 (= res!87854 e!117701)))

(declare-fun res!87847 () Bool)

(assert (=> b!191479 (=> (not res!87847) (not e!117701))))

(assert (=> b!191479 (= res!87847 lt!65724)))

(declare-fun b!191480 () Bool)

(declare-fun derivativeStep!94 (Regex!817 C!2556) Regex!817)

(assert (=> b!191480 (= e!117697 (matchR!155 (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413)) (tail!386 lt!65413)))))

(declare-fun b!191481 () Bool)

(assert (=> b!191481 (= e!117702 e!117698)))

(declare-fun res!87851 () Bool)

(assert (=> b!191481 (=> res!87851 e!117698)))

(assert (=> b!191481 (= res!87851 call!8779)))

(declare-fun b!191482 () Bool)

(declare-fun res!87852 () Bool)

(assert (=> b!191482 (=> (not res!87852) (not e!117701))))

(assert (=> b!191482 (= res!87852 (not call!8779))))

(assert (= (and d!47578 c!36525) b!191470))

(assert (= (and d!47578 (not c!36525)) b!191480))

(assert (= (and d!47578 c!36524) b!191474))

(assert (= (and d!47578 (not c!36524)) b!191473))

(assert (= (and b!191473 c!36523) b!191476))

(assert (= (and b!191473 (not c!36523)) b!191478))

(assert (= (and b!191478 (not res!87850)) b!191479))

(assert (= (and b!191479 res!87847) b!191482))

(assert (= (and b!191482 res!87852) b!191469))

(assert (= (and b!191469 res!87849) b!191471))

(assert (= (and b!191479 (not res!87854)) b!191475))

(assert (= (and b!191475 res!87848) b!191481))

(assert (= (and b!191481 (not res!87851)) b!191477))

(assert (= (and b!191477 (not res!87853)) b!191472))

(assert (= (or b!191474 b!191481 b!191482) bm!8774))

(declare-fun m!197417 () Bool)

(assert (=> bm!8774 m!197417))

(declare-fun m!197419 () Bool)

(assert (=> b!191480 m!197419))

(assert (=> b!191480 m!197419))

(declare-fun m!197421 () Bool)

(assert (=> b!191480 m!197421))

(declare-fun m!197423 () Bool)

(assert (=> b!191480 m!197423))

(assert (=> b!191480 m!197421))

(assert (=> b!191480 m!197423))

(declare-fun m!197425 () Bool)

(assert (=> b!191480 m!197425))

(assert (=> b!191469 m!197423))

(assert (=> b!191469 m!197423))

(declare-fun m!197427 () Bool)

(assert (=> b!191469 m!197427))

(assert (=> b!191471 m!197419))

(declare-fun m!197429 () Bool)

(assert (=> b!191470 m!197429))

(assert (=> b!191477 m!197423))

(assert (=> b!191477 m!197423))

(assert (=> b!191477 m!197427))

(assert (=> b!191472 m!197419))

(assert (=> d!47578 m!197417))

(declare-fun m!197431 () Bool)

(assert (=> d!47578 m!197431))

(assert (=> b!190911 d!47578))

(declare-fun d!47580 () Bool)

(declare-fun e!117703 () Bool)

(assert (=> d!47580 e!117703))

(declare-fun res!87855 () Bool)

(assert (=> d!47580 (=> (not res!87855) (not e!117703))))

(declare-fun lt!65725 () List!3228)

(assert (=> d!47580 (= res!87855 (= (content!430 lt!65725) ((_ map or) (content!430 lt!65413) (content!430 lt!65427))))))

(declare-fun e!117704 () List!3228)

(assert (=> d!47580 (= lt!65725 e!117704)))

(declare-fun c!36526 () Bool)

(assert (=> d!47580 (= c!36526 ((_ is Nil!3218) lt!65413))))

(assert (=> d!47580 (= (++!768 lt!65413 lt!65427) lt!65725)))

(declare-fun b!191483 () Bool)

(assert (=> b!191483 (= e!117704 lt!65427)))

(declare-fun b!191485 () Bool)

(declare-fun res!87856 () Bool)

(assert (=> b!191485 (=> (not res!87856) (not e!117703))))

(assert (=> b!191485 (= res!87856 (= (size!2566 lt!65725) (+ (size!2566 lt!65413) (size!2566 lt!65427))))))

(declare-fun b!191484 () Bool)

(assert (=> b!191484 (= e!117704 (Cons!3218 (h!8615 lt!65413) (++!768 (t!28930 lt!65413) lt!65427)))))

(declare-fun b!191486 () Bool)

(assert (=> b!191486 (= e!117703 (or (not (= lt!65427 Nil!3218)) (= lt!65725 lt!65413)))))

(assert (= (and d!47580 c!36526) b!191483))

(assert (= (and d!47580 (not c!36526)) b!191484))

(assert (= (and d!47580 res!87855) b!191485))

(assert (= (and b!191485 res!87856) b!191486))

(declare-fun m!197433 () Bool)

(assert (=> d!47580 m!197433))

(assert (=> d!47580 m!197153))

(assert (=> d!47580 m!197135))

(declare-fun m!197435 () Bool)

(assert (=> b!191485 m!197435))

(assert (=> b!191485 m!197161))

(assert (=> b!191485 m!197141))

(declare-fun m!197437 () Bool)

(assert (=> b!191484 m!197437))

(assert (=> b!190932 d!47580))

(declare-fun d!47582 () Bool)

(declare-fun lt!65728 () Token!930)

(assert (=> d!47582 (= lt!65728 (apply!497 (list!1182 (_1!1867 lt!65414)) 0))))

(declare-fun apply!498 (Conc!1009 Int) Token!930)

(assert (=> d!47582 (= lt!65728 (apply!498 (c!36427 (_1!1867 lt!65414)) 0))))

(declare-fun e!117707 () Bool)

(assert (=> d!47582 e!117707))

(declare-fun res!87859 () Bool)

(assert (=> d!47582 (=> (not res!87859) (not e!117707))))

(assert (=> d!47582 (= res!87859 (<= 0 0))))

(assert (=> d!47582 (= (apply!492 (_1!1867 lt!65414) 0) lt!65728)))

(declare-fun b!191489 () Bool)

(assert (=> b!191489 (= e!117707 (< 0 (size!2563 (_1!1867 lt!65414))))))

(assert (= (and d!47582 res!87859) b!191489))

(declare-fun m!197439 () Bool)

(assert (=> d!47582 m!197439))

(assert (=> d!47582 m!197439))

(declare-fun m!197441 () Bool)

(assert (=> d!47582 m!197441))

(declare-fun m!197443 () Bool)

(assert (=> d!47582 m!197443))

(assert (=> b!191489 m!196521))

(assert (=> b!190907 d!47582))

(declare-fun bs!18823 () Bool)

(declare-fun d!47584 () Bool)

(assert (= bs!18823 (and d!47584 d!47456)))

(declare-fun lambda!5859 () Int)

(assert (=> bs!18823 (not (= lambda!5859 lambda!5845))))

(declare-fun bs!18824 () Bool)

(assert (= bs!18824 (and d!47584 b!190910)))

(assert (=> bs!18824 (= lambda!5859 lambda!5840)))

(declare-fun bs!18825 () Bool)

(assert (= bs!18825 (and d!47584 b!190918)))

(assert (=> bs!18825 (not (= lambda!5859 lambda!5839))))

(declare-fun bs!18826 () Bool)

(assert (= bs!18826 (and d!47584 b!191371)))

(assert (=> bs!18826 (= lambda!5859 lambda!5849)))

(declare-fun bs!18827 () Bool)

(assert (= bs!18827 (and d!47584 b!191262)))

(assert (=> bs!18827 (= lambda!5859 lambda!5846)))

(declare-fun b!191501 () Bool)

(declare-fun e!117719 () Bool)

(assert (=> b!191501 (= e!117719 true)))

(declare-fun b!191500 () Bool)

(declare-fun e!117718 () Bool)

(assert (=> b!191500 (= e!117718 e!117719)))

(declare-fun b!191499 () Bool)

(declare-fun e!117717 () Bool)

(assert (=> b!191499 (= e!117717 e!117718)))

(assert (=> d!47584 e!117717))

(assert (= b!191500 b!191501))

(assert (= b!191499 b!191500))

(assert (= (and d!47584 ((_ is Cons!3219) rules!1920)) b!191499))

(assert (=> b!191501 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5859))))

(assert (=> b!191501 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5859))))

(assert (=> d!47584 true))

(declare-fun e!117716 () Bool)

(assert (=> d!47584 e!117716))

(declare-fun res!87865 () Bool)

(assert (=> d!47584 (=> (not res!87865) (not e!117716))))

(declare-fun lt!65734 () Bool)

(assert (=> d!47584 (= res!87865 (= lt!65734 (forall!675 (list!1182 lt!65415) lambda!5859)))))

(declare-fun forall!676 (BalanceConc!2026 Int) Bool)

(assert (=> d!47584 (= lt!65734 (forall!676 lt!65415 lambda!5859))))

(assert (=> d!47584 (not (isEmpty!1610 rules!1920))))

(assert (=> d!47584 (= (rulesProduceEachTokenIndividually!271 thiss!17480 rules!1920 lt!65415) lt!65734)))

(declare-fun b!191498 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!154 (LexerInterface!479 List!3229 List!3230) Bool)

(assert (=> b!191498 (= e!117716 (= lt!65734 (rulesProduceEachTokenIndividuallyList!154 thiss!17480 rules!1920 (list!1182 lt!65415))))))

(assert (= (and d!47584 res!87865) b!191498))

(declare-fun m!197467 () Bool)

(assert (=> d!47584 m!197467))

(assert (=> d!47584 m!197467))

(declare-fun m!197469 () Bool)

(assert (=> d!47584 m!197469))

(declare-fun m!197471 () Bool)

(assert (=> d!47584 m!197471))

(assert (=> d!47584 m!196433))

(assert (=> b!191498 m!197467))

(assert (=> b!191498 m!197467))

(declare-fun m!197473 () Bool)

(assert (=> b!191498 m!197473))

(assert (=> b!190928 d!47584))

(declare-fun d!47606 () Bool)

(assert (=> d!47606 (= (seqFromList!564 tokens!465) (fromListB!207 tokens!465))))

(declare-fun bs!18828 () Bool)

(assert (= bs!18828 d!47606))

(declare-fun m!197475 () Bool)

(assert (=> bs!18828 m!197475))

(assert (=> b!190928 d!47606))

(declare-fun d!47608 () Bool)

(declare-fun lt!65737 () Bool)

(assert (=> d!47608 (= lt!65737 (isEmpty!1612 (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))))))

(declare-fun isEmpty!1620 (Conc!1009) Bool)

(assert (=> d!47608 (= lt!65737 (isEmpty!1620 (c!36427 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))))))

(assert (=> d!47608 (= (isEmpty!1611 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413)))) lt!65737)))

(declare-fun bs!18829 () Bool)

(assert (= bs!18829 d!47608))

(declare-fun m!197477 () Bool)

(assert (=> bs!18829 m!197477))

(assert (=> bs!18829 m!197477))

(declare-fun m!197479 () Bool)

(assert (=> bs!18829 m!197479))

(declare-fun m!197481 () Bool)

(assert (=> bs!18829 m!197481))

(assert (=> b!190930 d!47608))

(declare-fun b!191512 () Bool)

(declare-fun e!117726 () Bool)

(declare-fun lt!65740 () tuple2!3302)

(declare-datatypes ((tuple2!3310 0))(
  ( (tuple2!3311 (_1!1871 List!3230) (_2!1871 List!3228)) )
))
(declare-fun lexList!135 (LexerInterface!479 List!3229 List!3228) tuple2!3310)

(assert (=> b!191512 (= e!117726 (= (list!1179 (_2!1867 lt!65740)) (_2!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 (seqFromList!563 lt!65413))))))))

(declare-fun d!47610 () Bool)

(assert (=> d!47610 e!117726))

(declare-fun res!87872 () Bool)

(assert (=> d!47610 (=> (not res!87872) (not e!117726))))

(declare-fun e!117728 () Bool)

(assert (=> d!47610 (= res!87872 e!117728)))

(declare-fun c!36529 () Bool)

(assert (=> d!47610 (= c!36529 (> (size!2563 (_1!1867 lt!65740)) 0))))

(declare-fun lexTailRecV2!122 (LexerInterface!479 List!3229 BalanceConc!2024 BalanceConc!2024 BalanceConc!2024 BalanceConc!2026) tuple2!3302)

(assert (=> d!47610 (= lt!65740 (lexTailRecV2!122 thiss!17480 rules!1920 (seqFromList!563 lt!65413) (BalanceConc!2025 Empty!1008) (seqFromList!563 lt!65413) (BalanceConc!2027 Empty!1009)))))

(assert (=> d!47610 (= (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413)) lt!65740)))

(declare-fun b!191513 () Bool)

(declare-fun res!87873 () Bool)

(assert (=> b!191513 (=> (not res!87873) (not e!117726))))

(assert (=> b!191513 (= res!87873 (= (list!1182 (_1!1867 lt!65740)) (_1!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 (seqFromList!563 lt!65413))))))))

(declare-fun b!191514 () Bool)

(declare-fun e!117727 () Bool)

(assert (=> b!191514 (= e!117727 (not (isEmpty!1611 (_1!1867 lt!65740))))))

(declare-fun b!191515 () Bool)

(assert (=> b!191515 (= e!117728 (= (_2!1867 lt!65740) (seqFromList!563 lt!65413)))))

(declare-fun b!191516 () Bool)

(assert (=> b!191516 (= e!117728 e!117727)))

(declare-fun res!87874 () Bool)

(declare-fun size!2569 (BalanceConc!2024) Int)

(assert (=> b!191516 (= res!87874 (< (size!2569 (_2!1867 lt!65740)) (size!2569 (seqFromList!563 lt!65413))))))

(assert (=> b!191516 (=> (not res!87874) (not e!117727))))

(assert (= (and d!47610 c!36529) b!191516))

(assert (= (and d!47610 (not c!36529)) b!191515))

(assert (= (and b!191516 res!87874) b!191514))

(assert (= (and d!47610 res!87872) b!191513))

(assert (= (and b!191513 res!87873) b!191512))

(declare-fun m!197483 () Bool)

(assert (=> d!47610 m!197483))

(assert (=> d!47610 m!196469))

(assert (=> d!47610 m!196469))

(declare-fun m!197485 () Bool)

(assert (=> d!47610 m!197485))

(declare-fun m!197487 () Bool)

(assert (=> b!191516 m!197487))

(assert (=> b!191516 m!196469))

(declare-fun m!197489 () Bool)

(assert (=> b!191516 m!197489))

(declare-fun m!197491 () Bool)

(assert (=> b!191514 m!197491))

(declare-fun m!197493 () Bool)

(assert (=> b!191513 m!197493))

(assert (=> b!191513 m!196469))

(declare-fun m!197495 () Bool)

(assert (=> b!191513 m!197495))

(assert (=> b!191513 m!197495))

(declare-fun m!197497 () Bool)

(assert (=> b!191513 m!197497))

(declare-fun m!197499 () Bool)

(assert (=> b!191512 m!197499))

(assert (=> b!191512 m!196469))

(assert (=> b!191512 m!197495))

(assert (=> b!191512 m!197495))

(assert (=> b!191512 m!197497))

(assert (=> b!190930 d!47610))

(declare-fun d!47612 () Bool)

(assert (=> d!47612 (= (seqFromList!563 lt!65413) (fromListB!208 lt!65413))))

(declare-fun bs!18830 () Bool)

(assert (= bs!18830 d!47612))

(declare-fun m!197501 () Bool)

(assert (=> bs!18830 m!197501))

(assert (=> b!190930 d!47612))

(declare-fun d!47614 () Bool)

(declare-fun lt!65743 () BalanceConc!2024)

(assert (=> d!47614 (= (list!1179 lt!65743) (printList!163 thiss!17480 (list!1182 lt!65419)))))

(assert (=> d!47614 (= lt!65743 (printTailRec!173 thiss!17480 lt!65419 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!47614 (= (print!210 thiss!17480 lt!65419) lt!65743)))

(declare-fun bs!18831 () Bool)

(assert (= bs!18831 d!47614))

(declare-fun m!197503 () Bool)

(assert (=> bs!18831 m!197503))

(declare-fun m!197505 () Bool)

(assert (=> bs!18831 m!197505))

(assert (=> bs!18831 m!197505))

(declare-fun m!197507 () Bool)

(assert (=> bs!18831 m!197507))

(assert (=> bs!18831 m!196489))

(assert (=> b!190908 d!47614))

(declare-fun d!47616 () Bool)

(declare-fun lt!65781 () BalanceConc!2024)

(declare-fun printListTailRec!78 (LexerInterface!479 List!3230 List!3228) List!3228)

(assert (=> d!47616 (= (list!1179 lt!65781) (printListTailRec!78 thiss!17480 (dropList!110 lt!65419 0) (list!1179 (BalanceConc!2025 Empty!1008))))))

(declare-fun e!117751 () BalanceConc!2024)

(assert (=> d!47616 (= lt!65781 e!117751)))

(declare-fun c!36547 () Bool)

(assert (=> d!47616 (= c!36547 (>= 0 (size!2563 lt!65419)))))

(declare-fun e!117752 () Bool)

(assert (=> d!47616 e!117752))

(declare-fun res!87877 () Bool)

(assert (=> d!47616 (=> (not res!87877) (not e!117752))))

(assert (=> d!47616 (= res!87877 (>= 0 0))))

(assert (=> d!47616 (= (printTailRec!173 thiss!17480 lt!65419 0 (BalanceConc!2025 Empty!1008)) lt!65781)))

(declare-fun b!191556 () Bool)

(assert (=> b!191556 (= e!117752 (<= 0 (size!2563 lt!65419)))))

(declare-fun b!191557 () Bool)

(assert (=> b!191557 (= e!117751 (BalanceConc!2025 Empty!1008))))

(declare-fun b!191558 () Bool)

(assert (=> b!191558 (= e!117751 (printTailRec!173 thiss!17480 lt!65419 (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65419 0)))))))

(declare-fun lt!65779 () List!3230)

(assert (=> b!191558 (= lt!65779 (list!1182 lt!65419))))

(declare-fun lt!65782 () Unit!3036)

(assert (=> b!191558 (= lt!65782 (lemmaDropApply!150 lt!65779 0))))

(assert (=> b!191558 (= (head!682 (drop!163 lt!65779 0)) (apply!497 lt!65779 0))))

(declare-fun lt!65778 () Unit!3036)

(assert (=> b!191558 (= lt!65778 lt!65782)))

(declare-fun lt!65777 () List!3230)

(assert (=> b!191558 (= lt!65777 (list!1182 lt!65419))))

(declare-fun lt!65780 () Unit!3036)

(assert (=> b!191558 (= lt!65780 (lemmaDropTail!142 lt!65777 0))))

(assert (=> b!191558 (= (tail!385 (drop!163 lt!65777 0)) (drop!163 lt!65777 (+ 0 1)))))

(declare-fun lt!65776 () Unit!3036)

(assert (=> b!191558 (= lt!65776 lt!65780)))

(assert (= (and d!47616 res!87877) b!191556))

(assert (= (and d!47616 c!36547) b!191557))

(assert (= (and d!47616 (not c!36547)) b!191558))

(declare-fun m!197537 () Bool)

(assert (=> d!47616 m!197537))

(declare-fun m!197539 () Bool)

(assert (=> d!47616 m!197539))

(declare-fun m!197541 () Bool)

(assert (=> d!47616 m!197541))

(assert (=> d!47616 m!197539))

(declare-fun m!197543 () Bool)

(assert (=> d!47616 m!197543))

(assert (=> d!47616 m!197541))

(declare-fun m!197545 () Bool)

(assert (=> d!47616 m!197545))

(assert (=> b!191556 m!197537))

(declare-fun m!197547 () Bool)

(assert (=> b!191558 m!197547))

(declare-fun m!197549 () Bool)

(assert (=> b!191558 m!197549))

(assert (=> b!191558 m!197505))

(declare-fun m!197551 () Bool)

(assert (=> b!191558 m!197551))

(declare-fun m!197553 () Bool)

(assert (=> b!191558 m!197553))

(declare-fun m!197555 () Bool)

(assert (=> b!191558 m!197555))

(declare-fun m!197557 () Bool)

(assert (=> b!191558 m!197557))

(assert (=> b!191558 m!197555))

(declare-fun m!197559 () Bool)

(assert (=> b!191558 m!197559))

(declare-fun m!197561 () Bool)

(assert (=> b!191558 m!197561))

(assert (=> b!191558 m!197557))

(assert (=> b!191558 m!197559))

(declare-fun m!197563 () Bool)

(assert (=> b!191558 m!197563))

(assert (=> b!191558 m!197547))

(declare-fun m!197565 () Bool)

(assert (=> b!191558 m!197565))

(declare-fun m!197567 () Bool)

(assert (=> b!191558 m!197567))

(assert (=> b!191558 m!197563))

(declare-fun m!197569 () Bool)

(assert (=> b!191558 m!197569))

(assert (=> b!190908 d!47616))

(declare-fun d!47620 () Bool)

(assert (=> d!47620 (= (list!1179 lt!65410) (list!1183 (c!36425 lt!65410)))))

(declare-fun bs!18835 () Bool)

(assert (= bs!18835 d!47620))

(declare-fun m!197571 () Bool)

(assert (=> bs!18835 m!197571))

(assert (=> b!190908 d!47620))

(declare-fun d!47622 () Bool)

(declare-fun e!117755 () Bool)

(assert (=> d!47622 e!117755))

(declare-fun res!87880 () Bool)

(assert (=> d!47622 (=> (not res!87880) (not e!117755))))

(declare-fun lt!65785 () BalanceConc!2026)

(assert (=> d!47622 (= res!87880 (= (list!1182 lt!65785) (Cons!3220 (h!8617 tokens!465) Nil!3220)))))

(declare-fun singleton!59 (Token!930) BalanceConc!2026)

(assert (=> d!47622 (= lt!65785 (singleton!59 (h!8617 tokens!465)))))

(assert (=> d!47622 (= (singletonSeq!145 (h!8617 tokens!465)) lt!65785)))

(declare-fun b!191561 () Bool)

(declare-fun isBalanced!264 (Conc!1009) Bool)

(assert (=> b!191561 (= e!117755 (isBalanced!264 (c!36427 lt!65785)))))

(assert (= (and d!47622 res!87880) b!191561))

(declare-fun m!197573 () Bool)

(assert (=> d!47622 m!197573))

(declare-fun m!197575 () Bool)

(assert (=> d!47622 m!197575))

(declare-fun m!197577 () Bool)

(assert (=> b!191561 m!197577))

(assert (=> b!190908 d!47622))

(declare-fun d!47624 () Bool)

(declare-fun c!36550 () Bool)

(assert (=> d!47624 (= c!36550 ((_ is Cons!3220) (Cons!3220 (h!8617 tokens!465) Nil!3220)))))

(declare-fun e!117758 () List!3228)

(assert (=> d!47624 (= (printList!163 thiss!17480 (Cons!3220 (h!8617 tokens!465) Nil!3220)) e!117758)))

(declare-fun b!191566 () Bool)

(assert (=> b!191566 (= e!117758 (++!768 (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))) (printList!163 thiss!17480 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))))

(declare-fun b!191567 () Bool)

(assert (=> b!191567 (= e!117758 Nil!3218)))

(assert (= (and d!47624 c!36550) b!191566))

(assert (= (and d!47624 (not c!36550)) b!191567))

(declare-fun m!197579 () Bool)

(assert (=> b!191566 m!197579))

(assert (=> b!191566 m!197579))

(declare-fun m!197581 () Bool)

(assert (=> b!191566 m!197581))

(declare-fun m!197583 () Bool)

(assert (=> b!191566 m!197583))

(assert (=> b!191566 m!197581))

(assert (=> b!191566 m!197583))

(declare-fun m!197585 () Bool)

(assert (=> b!191566 m!197585))

(assert (=> b!190908 d!47624))

(declare-fun b!191568 () Bool)

(declare-fun res!87883 () Bool)

(declare-fun e!117764 () Bool)

(assert (=> b!191568 (=> (not res!87883) (not e!117764))))

(assert (=> b!191568 (= res!87883 (isEmpty!1609 (tail!386 lt!65438)))))

(declare-fun bm!8790 () Bool)

(declare-fun call!8795 () Bool)

(assert (=> bm!8790 (= call!8795 (isEmpty!1609 lt!65438))))

(declare-fun d!47626 () Bool)

(declare-fun e!117759 () Bool)

(assert (=> d!47626 e!117759))

(declare-fun c!36552 () Bool)

(assert (=> d!47626 (= c!36552 ((_ is EmptyExpr!817) (regex!593 lt!65423)))))

(declare-fun lt!65786 () Bool)

(declare-fun e!117760 () Bool)

(assert (=> d!47626 (= lt!65786 e!117760)))

(declare-fun c!36553 () Bool)

(assert (=> d!47626 (= c!36553 (isEmpty!1609 lt!65438))))

(assert (=> d!47626 (validRegex!201 (regex!593 lt!65423))))

(assert (=> d!47626 (= (matchR!155 (regex!593 lt!65423) lt!65438) lt!65786)))

(declare-fun b!191569 () Bool)

(assert (=> b!191569 (= e!117760 (nullable!128 (regex!593 lt!65423)))))

(declare-fun b!191570 () Bool)

(assert (=> b!191570 (= e!117764 (= (head!684 lt!65438) (c!36426 (regex!593 lt!65423))))))

(declare-fun b!191571 () Bool)

(declare-fun e!117761 () Bool)

(assert (=> b!191571 (= e!117761 (not (= (head!684 lt!65438) (c!36426 (regex!593 lt!65423)))))))

(declare-fun b!191572 () Bool)

(declare-fun e!117763 () Bool)

(assert (=> b!191572 (= e!117759 e!117763)))

(declare-fun c!36551 () Bool)

(assert (=> b!191572 (= c!36551 ((_ is EmptyLang!817) (regex!593 lt!65423)))))

(declare-fun b!191573 () Bool)

(assert (=> b!191573 (= e!117759 (= lt!65786 call!8795))))

(declare-fun b!191574 () Bool)

(declare-fun e!117762 () Bool)

(declare-fun e!117765 () Bool)

(assert (=> b!191574 (= e!117762 e!117765)))

(declare-fun res!87882 () Bool)

(assert (=> b!191574 (=> (not res!87882) (not e!117765))))

(assert (=> b!191574 (= res!87882 (not lt!65786))))

(declare-fun b!191575 () Bool)

(assert (=> b!191575 (= e!117763 (not lt!65786))))

(declare-fun b!191576 () Bool)

(declare-fun res!87887 () Bool)

(assert (=> b!191576 (=> res!87887 e!117761)))

(assert (=> b!191576 (= res!87887 (not (isEmpty!1609 (tail!386 lt!65438))))))

(declare-fun b!191577 () Bool)

(declare-fun res!87884 () Bool)

(assert (=> b!191577 (=> res!87884 e!117762)))

(assert (=> b!191577 (= res!87884 (not ((_ is ElementMatch!817) (regex!593 lt!65423))))))

(assert (=> b!191577 (= e!117763 e!117762)))

(declare-fun b!191578 () Bool)

(declare-fun res!87888 () Bool)

(assert (=> b!191578 (=> res!87888 e!117762)))

(assert (=> b!191578 (= res!87888 e!117764)))

(declare-fun res!87881 () Bool)

(assert (=> b!191578 (=> (not res!87881) (not e!117764))))

(assert (=> b!191578 (= res!87881 lt!65786)))

(declare-fun b!191579 () Bool)

(assert (=> b!191579 (= e!117760 (matchR!155 (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438)) (tail!386 lt!65438)))))

(declare-fun b!191580 () Bool)

(assert (=> b!191580 (= e!117765 e!117761)))

(declare-fun res!87885 () Bool)

(assert (=> b!191580 (=> res!87885 e!117761)))

(assert (=> b!191580 (= res!87885 call!8795)))

(declare-fun b!191581 () Bool)

(declare-fun res!87886 () Bool)

(assert (=> b!191581 (=> (not res!87886) (not e!117764))))

(assert (=> b!191581 (= res!87886 (not call!8795))))

(assert (= (and d!47626 c!36553) b!191569))

(assert (= (and d!47626 (not c!36553)) b!191579))

(assert (= (and d!47626 c!36552) b!191573))

(assert (= (and d!47626 (not c!36552)) b!191572))

(assert (= (and b!191572 c!36551) b!191575))

(assert (= (and b!191572 (not c!36551)) b!191577))

(assert (= (and b!191577 (not res!87884)) b!191578))

(assert (= (and b!191578 res!87881) b!191581))

(assert (= (and b!191581 res!87886) b!191568))

(assert (= (and b!191568 res!87883) b!191570))

(assert (= (and b!191578 (not res!87888)) b!191574))

(assert (= (and b!191574 res!87882) b!191580))

(assert (= (and b!191580 (not res!87885)) b!191576))

(assert (= (and b!191576 (not res!87887)) b!191571))

(assert (= (or b!191573 b!191580 b!191581) bm!8790))

(declare-fun m!197587 () Bool)

(assert (=> bm!8790 m!197587))

(declare-fun m!197589 () Bool)

(assert (=> b!191579 m!197589))

(assert (=> b!191579 m!197589))

(declare-fun m!197591 () Bool)

(assert (=> b!191579 m!197591))

(declare-fun m!197593 () Bool)

(assert (=> b!191579 m!197593))

(assert (=> b!191579 m!197591))

(assert (=> b!191579 m!197593))

(declare-fun m!197595 () Bool)

(assert (=> b!191579 m!197595))

(assert (=> b!191568 m!197593))

(assert (=> b!191568 m!197593))

(declare-fun m!197597 () Bool)

(assert (=> b!191568 m!197597))

(assert (=> b!191570 m!197589))

(declare-fun m!197599 () Bool)

(assert (=> b!191569 m!197599))

(assert (=> b!191576 m!197593))

(assert (=> b!191576 m!197593))

(assert (=> b!191576 m!197597))

(assert (=> b!191571 m!197589))

(assert (=> d!47626 m!197587))

(declare-fun m!197601 () Bool)

(assert (=> d!47626 m!197601))

(assert (=> b!190926 d!47626))

(declare-fun d!47628 () Bool)

(assert (=> d!47628 (= (get!937 lt!65435) (v!13982 lt!65435))))

(assert (=> b!190926 d!47628))

(declare-fun d!47630 () Bool)

(declare-fun res!87891 () Bool)

(declare-fun e!117768 () Bool)

(assert (=> d!47630 (=> (not res!87891) (not e!117768))))

(declare-fun rulesValid!167 (LexerInterface!479 List!3229) Bool)

(assert (=> d!47630 (= res!87891 (rulesValid!167 thiss!17480 rules!1920))))

(assert (=> d!47630 (= (rulesInvariant!445 thiss!17480 rules!1920) e!117768)))

(declare-fun b!191584 () Bool)

(declare-datatypes ((List!3232 0))(
  ( (Nil!3222) (Cons!3222 (h!8619 String!4155) (t!29000 List!3232)) )
))
(declare-fun noDuplicateTag!167 (LexerInterface!479 List!3229 List!3232) Bool)

(assert (=> b!191584 (= e!117768 (noDuplicateTag!167 thiss!17480 rules!1920 Nil!3222))))

(assert (= (and d!47630 res!87891) b!191584))

(declare-fun m!197603 () Bool)

(assert (=> d!47630 m!197603))

(declare-fun m!197605 () Bool)

(assert (=> b!191584 m!197605))

(assert (=> b!190947 d!47630))

(declare-fun d!47632 () Bool)

(declare-fun lt!65788 () Bool)

(declare-fun e!117769 () Bool)

(assert (=> d!47632 (= lt!65788 e!117769)))

(declare-fun res!87893 () Bool)

(assert (=> d!47632 (=> (not res!87893) (not e!117769))))

(assert (=> d!47632 (= res!87893 (= (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)))))) (list!1182 (singletonSeq!145 (h!8617 tokens!465)))))))

(declare-fun e!117770 () Bool)

(assert (=> d!47632 (= lt!65788 e!117770)))

(declare-fun res!87894 () Bool)

(assert (=> d!47632 (=> (not res!87894) (not e!117770))))

(declare-fun lt!65787 () tuple2!3302)

(assert (=> d!47632 (= res!87894 (= (size!2563 (_1!1867 lt!65787)) 1))))

(assert (=> d!47632 (= lt!65787 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)))))))

(assert (=> d!47632 (not (isEmpty!1610 rules!1920))))

(assert (=> d!47632 (= (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (h!8617 tokens!465)) lt!65788)))

(declare-fun b!191585 () Bool)

(declare-fun res!87892 () Bool)

(assert (=> b!191585 (=> (not res!87892) (not e!117770))))

(assert (=> b!191585 (= res!87892 (= (apply!492 (_1!1867 lt!65787) 0) (h!8617 tokens!465)))))

(declare-fun b!191586 () Bool)

(assert (=> b!191586 (= e!117770 (isEmpty!1608 (_2!1867 lt!65787)))))

(declare-fun b!191587 () Bool)

(assert (=> b!191587 (= e!117769 (isEmpty!1608 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)))))))))

(assert (= (and d!47632 res!87894) b!191585))

(assert (= (and b!191585 res!87892) b!191586))

(assert (= (and d!47632 res!87893) b!191587))

(declare-fun m!197607 () Bool)

(assert (=> d!47632 m!197607))

(assert (=> d!47632 m!196433))

(assert (=> d!47632 m!196495))

(declare-fun m!197609 () Bool)

(assert (=> d!47632 m!197609))

(assert (=> d!47632 m!196495))

(assert (=> d!47632 m!196495))

(declare-fun m!197611 () Bool)

(assert (=> d!47632 m!197611))

(declare-fun m!197613 () Bool)

(assert (=> d!47632 m!197613))

(assert (=> d!47632 m!197609))

(declare-fun m!197615 () Bool)

(assert (=> d!47632 m!197615))

(declare-fun m!197617 () Bool)

(assert (=> b!191585 m!197617))

(declare-fun m!197619 () Bool)

(assert (=> b!191586 m!197619))

(assert (=> b!191587 m!196495))

(assert (=> b!191587 m!196495))

(assert (=> b!191587 m!197609))

(assert (=> b!191587 m!197609))

(assert (=> b!191587 m!197615))

(declare-fun m!197621 () Bool)

(assert (=> b!191587 m!197621))

(assert (=> b!190925 d!47632))

(declare-fun d!47634 () Bool)

(assert (=> d!47634 (= (list!1179 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0)) (list!1183 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0))))))

(declare-fun bs!18836 () Bool)

(assert (= bs!18836 d!47634))

(declare-fun m!197623 () Bool)

(assert (=> bs!18836 m!197623))

(assert (=> b!190927 d!47634))

(declare-fun bs!18837 () Bool)

(declare-fun d!47636 () Bool)

(assert (= bs!18837 (and d!47636 d!47584)))

(declare-fun lambda!5863 () Int)

(assert (=> bs!18837 (not (= lambda!5863 lambda!5859))))

(declare-fun bs!18838 () Bool)

(assert (= bs!18838 (and d!47636 d!47456)))

(assert (=> bs!18838 (= lambda!5863 lambda!5845)))

(declare-fun bs!18839 () Bool)

(assert (= bs!18839 (and d!47636 b!190910)))

(assert (=> bs!18839 (not (= lambda!5863 lambda!5840))))

(declare-fun bs!18840 () Bool)

(assert (= bs!18840 (and d!47636 b!190918)))

(assert (=> bs!18840 (= lambda!5863 lambda!5839)))

(declare-fun bs!18841 () Bool)

(assert (= bs!18841 (and d!47636 b!191371)))

(assert (=> bs!18841 (not (= lambda!5863 lambda!5849))))

(declare-fun bs!18842 () Bool)

(assert (= bs!18842 (and d!47636 b!191262)))

(assert (=> bs!18842 (not (= lambda!5863 lambda!5846))))

(declare-fun bs!18843 () Bool)

(declare-fun b!191594 () Bool)

(assert (= bs!18843 (and b!191594 d!47584)))

(declare-fun lambda!5864 () Int)

(assert (=> bs!18843 (= lambda!5864 lambda!5859)))

(declare-fun bs!18844 () Bool)

(assert (= bs!18844 (and b!191594 d!47456)))

(assert (=> bs!18844 (not (= lambda!5864 lambda!5845))))

(declare-fun bs!18845 () Bool)

(assert (= bs!18845 (and b!191594 b!190910)))

(assert (=> bs!18845 (= lambda!5864 lambda!5840)))

(declare-fun bs!18846 () Bool)

(assert (= bs!18846 (and b!191594 b!190918)))

(assert (=> bs!18846 (not (= lambda!5864 lambda!5839))))

(declare-fun bs!18847 () Bool)

(assert (= bs!18847 (and b!191594 b!191371)))

(assert (=> bs!18847 (= lambda!5864 lambda!5849)))

(declare-fun bs!18848 () Bool)

(assert (= bs!18848 (and b!191594 d!47636)))

(assert (=> bs!18848 (not (= lambda!5864 lambda!5863))))

(declare-fun bs!18849 () Bool)

(assert (= bs!18849 (and b!191594 b!191262)))

(assert (=> bs!18849 (= lambda!5864 lambda!5846)))

(declare-fun b!191601 () Bool)

(declare-fun e!117780 () Bool)

(assert (=> b!191601 (= e!117780 true)))

(declare-fun b!191600 () Bool)

(declare-fun e!117779 () Bool)

(assert (=> b!191600 (= e!117779 e!117780)))

(declare-fun b!191599 () Bool)

(declare-fun e!117778 () Bool)

(assert (=> b!191599 (= e!117778 e!117779)))

(assert (=> b!191594 e!117778))

(assert (= b!191600 b!191601))

(assert (= b!191599 b!191600))

(assert (= (and b!191594 ((_ is Cons!3219) rules!1920)) b!191599))

(assert (=> b!191601 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5864))))

(assert (=> b!191601 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5864))))

(assert (=> b!191594 true))

(declare-fun bm!8791 () Bool)

(declare-fun call!8796 () BalanceConc!2024)

(declare-fun call!8798 () BalanceConc!2024)

(assert (=> bm!8791 (= call!8796 call!8798)))

(declare-fun b!191588 () Bool)

(declare-fun e!117777 () BalanceConc!2024)

(assert (=> b!191588 (= e!117777 (BalanceConc!2025 Empty!1008))))

(declare-fun b!191589 () Bool)

(declare-fun e!117776 () BalanceConc!2024)

(declare-fun call!8799 () BalanceConc!2024)

(declare-fun lt!65802 () BalanceConc!2024)

(assert (=> b!191589 (= e!117776 (++!770 call!8799 lt!65802))))

(declare-fun b!191590 () Bool)

(declare-fun e!117772 () Bool)

(declare-fun lt!65798 () Option!471)

(assert (=> b!191590 (= e!117772 (= (_1!1868 (v!13981 lt!65798)) (apply!492 lt!65415 0)))))

(declare-fun b!191591 () Bool)

(assert (=> b!191591 (= e!117776 (BalanceConc!2025 Empty!1008))))

(declare-fun call!8800 () Token!930)

(assert (=> b!191591 (= (print!210 thiss!17480 (singletonSeq!145 call!8800)) (printTailRec!173 thiss!17480 (singletonSeq!145 call!8800) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!65792 () Unit!3036)

(declare-fun Unit!3046 () Unit!3036)

(assert (=> b!191591 (= lt!65792 Unit!3046)))

(declare-fun lt!65790 () Unit!3036)

(assert (=> b!191591 (= lt!65790 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 (list!1179 call!8796) (list!1179 lt!65802)))))

(assert (=> b!191591 false))

(declare-fun lt!65800 () Unit!3036)

(declare-fun Unit!3047 () Unit!3036)

(assert (=> b!191591 (= lt!65800 Unit!3047)))

(declare-fun b!191592 () Bool)

(declare-fun e!117773 () BalanceConc!2024)

(assert (=> b!191592 (= e!117773 call!8798)))

(declare-fun bm!8792 () Bool)

(declare-fun call!8797 () Token!930)

(assert (=> bm!8792 (= call!8797 (apply!492 lt!65415 0))))

(declare-fun bm!8793 () Bool)

(assert (=> bm!8793 (= call!8800 call!8797)))

(declare-fun b!191593 () Bool)

(declare-fun e!117775 () Bool)

(assert (=> b!191593 (= e!117775 (<= 0 (size!2563 lt!65415)))))

(declare-fun e!117774 () BalanceConc!2024)

(assert (=> b!191594 (= e!117777 e!117774)))

(declare-fun lt!65793 () List!3230)

(assert (=> b!191594 (= lt!65793 (list!1182 lt!65415))))

(declare-fun lt!65799 () Unit!3036)

(assert (=> b!191594 (= lt!65799 (lemmaDropApply!150 lt!65793 0))))

(assert (=> b!191594 (= (head!682 (drop!163 lt!65793 0)) (apply!497 lt!65793 0))))

(declare-fun lt!65796 () Unit!3036)

(assert (=> b!191594 (= lt!65796 lt!65799)))

(declare-fun lt!65797 () List!3230)

(assert (=> b!191594 (= lt!65797 (list!1182 lt!65415))))

(declare-fun lt!65794 () Unit!3036)

(assert (=> b!191594 (= lt!65794 (lemmaDropTail!142 lt!65797 0))))

(assert (=> b!191594 (= (tail!385 (drop!163 lt!65797 0)) (drop!163 lt!65797 (+ 0 1)))))

(declare-fun lt!65791 () Unit!3036)

(assert (=> b!191594 (= lt!65791 lt!65794)))

(declare-fun lt!65789 () Unit!3036)

(assert (=> b!191594 (= lt!65789 (forallContained!160 (list!1182 lt!65415) lambda!5864 (apply!492 lt!65415 0)))))

(assert (=> b!191594 (= lt!65802 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 (+ 0 1)))))

(assert (=> b!191594 (= lt!65798 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))

(declare-fun res!87895 () Bool)

(assert (=> b!191594 (= res!87895 ((_ is Some!470) lt!65798))))

(assert (=> b!191594 (=> (not res!87895) (not e!117772))))

(declare-fun c!36554 () Bool)

(assert (=> b!191594 (= c!36554 e!117772)))

(declare-fun bm!8795 () Bool)

(declare-fun c!36555 () Bool)

(assert (=> bm!8795 (= c!36555 c!36554)))

(assert (=> bm!8795 (= call!8799 (++!770 e!117773 (ite c!36554 lt!65802 call!8796)))))

(declare-fun b!191595 () Bool)

(declare-fun c!36556 () Bool)

(declare-fun e!117771 () Bool)

(assert (=> b!191595 (= c!36556 e!117771)))

(declare-fun res!87897 () Bool)

(assert (=> b!191595 (=> (not res!87897) (not e!117771))))

(assert (=> b!191595 (= res!87897 ((_ is Some!470) lt!65798))))

(assert (=> b!191595 (= e!117774 e!117776)))

(declare-fun b!191596 () Bool)

(assert (=> b!191596 (= e!117774 call!8799)))

(declare-fun b!191597 () Bool)

(assert (=> b!191597 (= e!117773 (charsOf!248 call!8800))))

(declare-fun b!191598 () Bool)

(assert (=> b!191598 (= e!117771 (not (= (_1!1868 (v!13981 lt!65798)) call!8797)))))

(declare-fun bm!8794 () Bool)

(assert (=> bm!8794 (= call!8798 (charsOf!248 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800))))))

(declare-fun lt!65795 () BalanceConc!2024)

(assert (=> d!47636 (= (list!1179 lt!65795) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (dropList!110 lt!65415 0) separatorToken!170))))

(assert (=> d!47636 (= lt!65795 e!117777)))

(declare-fun c!36557 () Bool)

(assert (=> d!47636 (= c!36557 (>= 0 (size!2563 lt!65415)))))

(declare-fun lt!65801 () Unit!3036)

(assert (=> d!47636 (= lt!65801 (lemmaContentSubsetPreservesForall!53 (list!1182 lt!65415) (dropList!110 lt!65415 0) lambda!5863))))

(assert (=> d!47636 e!117775))

(declare-fun res!87896 () Bool)

(assert (=> d!47636 (=> (not res!87896) (not e!117775))))

(assert (=> d!47636 (= res!87896 (>= 0 0))))

(assert (=> d!47636 (= (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0) lt!65795)))

(assert (= (and d!47636 res!87896) b!191593))

(assert (= (and d!47636 c!36557) b!191588))

(assert (= (and d!47636 (not c!36557)) b!191594))

(assert (= (and b!191594 res!87895) b!191590))

(assert (= (and b!191594 c!36554) b!191596))

(assert (= (and b!191594 (not c!36554)) b!191595))

(assert (= (and b!191595 res!87897) b!191598))

(assert (= (and b!191595 c!36556) b!191589))

(assert (= (and b!191595 (not c!36556)) b!191591))

(assert (= (or b!191589 b!191591) bm!8793))

(assert (= (or b!191589 b!191591) bm!8791))

(assert (= (or b!191596 bm!8793 b!191598) bm!8792))

(assert (= (or b!191596 bm!8791) bm!8794))

(assert (= (or b!191596 b!191589) bm!8795))

(assert (= (and bm!8795 c!36555) b!191592))

(assert (= (and bm!8795 (not c!36555)) b!191597))

(assert (=> d!47636 m!197467))

(declare-fun m!197625 () Bool)

(assert (=> d!47636 m!197625))

(declare-fun m!197627 () Bool)

(assert (=> d!47636 m!197627))

(declare-fun m!197629 () Bool)

(assert (=> d!47636 m!197629))

(assert (=> d!47636 m!197467))

(declare-fun m!197631 () Bool)

(assert (=> d!47636 m!197631))

(assert (=> d!47636 m!197625))

(declare-fun m!197633 () Bool)

(assert (=> d!47636 m!197633))

(assert (=> d!47636 m!197625))

(declare-fun m!197635 () Bool)

(assert (=> b!191597 m!197635))

(assert (=> b!191593 m!197631))

(declare-fun m!197637 () Bool)

(assert (=> b!191589 m!197637))

(declare-fun m!197639 () Bool)

(assert (=> bm!8792 m!197639))

(declare-fun m!197641 () Bool)

(assert (=> b!191594 m!197641))

(assert (=> b!191594 m!197467))

(declare-fun m!197643 () Bool)

(assert (=> b!191594 m!197643))

(assert (=> b!191594 m!197639))

(declare-fun m!197645 () Bool)

(assert (=> b!191594 m!197645))

(assert (=> b!191594 m!197639))

(assert (=> b!191594 m!197467))

(assert (=> b!191594 m!197639))

(declare-fun m!197647 () Bool)

(assert (=> b!191594 m!197647))

(declare-fun m!197649 () Bool)

(assert (=> b!191594 m!197649))

(declare-fun m!197651 () Bool)

(assert (=> b!191594 m!197651))

(assert (=> b!191594 m!197645))

(declare-fun m!197653 () Bool)

(assert (=> b!191594 m!197653))

(declare-fun m!197655 () Bool)

(assert (=> b!191594 m!197655))

(declare-fun m!197657 () Bool)

(assert (=> b!191594 m!197657))

(assert (=> b!191594 m!197649))

(declare-fun m!197659 () Bool)

(assert (=> b!191594 m!197659))

(assert (=> b!191594 m!197657))

(declare-fun m!197661 () Bool)

(assert (=> b!191594 m!197661))

(declare-fun m!197663 () Bool)

(assert (=> b!191594 m!197663))

(assert (=> b!191594 m!197653))

(declare-fun m!197665 () Bool)

(assert (=> b!191594 m!197665))

(declare-fun m!197667 () Bool)

(assert (=> bm!8795 m!197667))

(declare-fun m!197669 () Bool)

(assert (=> bm!8794 m!197669))

(assert (=> b!191590 m!197639))

(declare-fun m!197671 () Bool)

(assert (=> b!191591 m!197671))

(declare-fun m!197673 () Bool)

(assert (=> b!191591 m!197673))

(assert (=> b!191591 m!197671))

(declare-fun m!197675 () Bool)

(assert (=> b!191591 m!197675))

(declare-fun m!197677 () Bool)

(assert (=> b!191591 m!197677))

(declare-fun m!197679 () Bool)

(assert (=> b!191591 m!197679))

(assert (=> b!191591 m!197677))

(declare-fun m!197681 () Bool)

(assert (=> b!191591 m!197681))

(assert (=> b!191591 m!197679))

(assert (=> b!191591 m!197671))

(assert (=> b!190927 d!47636))

(declare-fun bs!18850 () Bool)

(declare-fun b!191608 () Bool)

(assert (= bs!18850 (and b!191608 d!47456)))

(declare-fun lambda!5865 () Int)

(assert (=> bs!18850 (not (= lambda!5865 lambda!5845))))

(declare-fun bs!18851 () Bool)

(assert (= bs!18851 (and b!191608 b!190910)))

(assert (=> bs!18851 (= lambda!5865 lambda!5840)))

(declare-fun bs!18852 () Bool)

(assert (= bs!18852 (and b!191608 b!190918)))

(assert (=> bs!18852 (not (= lambda!5865 lambda!5839))))

(declare-fun bs!18853 () Bool)

(assert (= bs!18853 (and b!191608 b!191371)))

(assert (=> bs!18853 (= lambda!5865 lambda!5849)))

(declare-fun bs!18854 () Bool)

(assert (= bs!18854 (and b!191608 d!47636)))

(assert (=> bs!18854 (not (= lambda!5865 lambda!5863))))

(declare-fun bs!18855 () Bool)

(assert (= bs!18855 (and b!191608 b!191262)))

(assert (=> bs!18855 (= lambda!5865 lambda!5846)))

(declare-fun bs!18856 () Bool)

(assert (= bs!18856 (and b!191608 d!47584)))

(assert (=> bs!18856 (= lambda!5865 lambda!5859)))

(declare-fun bs!18857 () Bool)

(assert (= bs!18857 (and b!191608 b!191594)))

(assert (=> bs!18857 (= lambda!5865 lambda!5864)))

(declare-fun b!191614 () Bool)

(declare-fun e!117788 () Bool)

(assert (=> b!191614 (= e!117788 true)))

(declare-fun b!191613 () Bool)

(declare-fun e!117787 () Bool)

(assert (=> b!191613 (= e!117787 e!117788)))

(declare-fun b!191612 () Bool)

(declare-fun e!117786 () Bool)

(assert (=> b!191612 (= e!117786 e!117787)))

(assert (=> b!191608 e!117786))

(assert (= b!191613 b!191614))

(assert (= b!191612 b!191613))

(assert (= (and b!191608 ((_ is Cons!3219) rules!1920)) b!191612))

(assert (=> b!191614 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5865))))

(assert (=> b!191614 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5865))))

(assert (=> b!191608 true))

(declare-fun d!47638 () Bool)

(declare-fun c!36562 () Bool)

(assert (=> d!47638 (= c!36562 ((_ is Cons!3220) tokens!465))))

(declare-fun e!117784 () List!3228)

(assert (=> d!47638 (= (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!117784)))

(declare-fun bm!8796 () Bool)

(declare-fun call!8801 () BalanceConc!2024)

(assert (=> bm!8796 (= call!8801 (charsOf!248 (h!8617 tokens!465)))))

(declare-fun b!191602 () Bool)

(declare-fun c!36561 () Bool)

(declare-fun lt!65805 () Option!473)

(assert (=> b!191602 (= c!36561 (and ((_ is Some!472) lt!65805) (not (= (_1!1869 (v!13983 lt!65805)) (h!8617 tokens!465)))))))

(declare-fun e!117783 () List!3228)

(declare-fun e!117782 () List!3228)

(assert (=> b!191602 (= e!117783 e!117782)))

(declare-fun bm!8797 () Bool)

(declare-fun call!8804 () BalanceConc!2024)

(assert (=> bm!8797 (= call!8804 call!8801)))

(declare-fun b!191603 () Bool)

(declare-fun e!117781 () BalanceConc!2024)

(assert (=> b!191603 (= e!117781 call!8804)))

(declare-fun b!191604 () Bool)

(assert (=> b!191604 (= e!117782 Nil!3218)))

(assert (=> b!191604 (= (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))) (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!65804 () Unit!3036)

(declare-fun Unit!3050 () Unit!3036)

(assert (=> b!191604 (= lt!65804 Unit!3050)))

(declare-fun lt!65807 () List!3228)

(declare-fun lt!65806 () Unit!3036)

(declare-fun call!8805 () List!3228)

(assert (=> b!191604 (= lt!65806 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 call!8805 lt!65807))))

(assert (=> b!191604 false))

(declare-fun lt!65808 () Unit!3036)

(declare-fun Unit!3051 () Unit!3036)

(assert (=> b!191604 (= lt!65808 Unit!3051)))

(declare-fun b!191605 () Bool)

(declare-fun call!8802 () List!3228)

(assert (=> b!191605 (= e!117782 (++!768 call!8802 lt!65807))))

(declare-fun c!36558 () Bool)

(declare-fun call!8803 () List!3228)

(declare-fun bm!8798 () Bool)

(assert (=> bm!8798 (= call!8803 (list!1179 (ite c!36558 call!8801 e!117781)))))

(declare-fun bm!8799 () Bool)

(assert (=> bm!8799 (= call!8805 call!8803)))

(declare-fun c!36559 () Bool)

(assert (=> bm!8799 (= c!36559 c!36561)))

(declare-fun b!191606 () Bool)

(assert (=> b!191606 (= e!117783 call!8802)))

(declare-fun b!191607 () Bool)

(declare-fun e!117785 () List!3228)

(assert (=> b!191607 (= e!117785 (list!1179 call!8804))))

(declare-fun bm!8800 () Bool)

(declare-fun c!36560 () Bool)

(assert (=> bm!8800 (= c!36560 c!36558)))

(assert (=> bm!8800 (= call!8802 (++!768 e!117785 (ite c!36558 lt!65807 call!8805)))))

(assert (=> b!191608 (= e!117784 e!117783)))

(declare-fun lt!65803 () Unit!3036)

(assert (=> b!191608 (= lt!65803 (forallContained!160 tokens!465 lambda!5865 (h!8617 tokens!465)))))

(assert (=> b!191608 (= lt!65807 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (t!28932 tokens!465) separatorToken!170))))

(assert (=> b!191608 (= lt!65805 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807)))))

(assert (=> b!191608 (= c!36558 (and ((_ is Some!472) lt!65805) (= (_1!1869 (v!13983 lt!65805)) (h!8617 tokens!465))))))

(declare-fun b!191609 () Bool)

(assert (=> b!191609 (= e!117781 (charsOf!248 separatorToken!170))))

(declare-fun b!191610 () Bool)

(assert (=> b!191610 (= e!117785 call!8803)))

(declare-fun b!191611 () Bool)

(assert (=> b!191611 (= e!117784 Nil!3218)))

(assert (= (and d!47638 c!36562) b!191608))

(assert (= (and d!47638 (not c!36562)) b!191611))

(assert (= (and b!191608 c!36558) b!191606))

(assert (= (and b!191608 (not c!36558)) b!191602))

(assert (= (and b!191602 c!36561) b!191605))

(assert (= (and b!191602 (not c!36561)) b!191604))

(assert (= (or b!191605 b!191604) bm!8797))

(assert (= (or b!191605 b!191604) bm!8799))

(assert (= (and bm!8799 c!36559) b!191609))

(assert (= (and bm!8799 (not c!36559)) b!191603))

(assert (= (or b!191606 bm!8797) bm!8796))

(assert (= (or b!191606 bm!8799) bm!8798))

(assert (= (or b!191606 b!191605) bm!8800))

(assert (= (and bm!8800 c!36560) b!191610))

(assert (= (and bm!8800 (not c!36560)) b!191607))

(declare-fun m!197683 () Bool)

(assert (=> b!191607 m!197683))

(declare-fun m!197685 () Bool)

(assert (=> b!191605 m!197685))

(assert (=> b!191609 m!196439))

(declare-fun m!197687 () Bool)

(assert (=> bm!8800 m!197687))

(assert (=> b!191608 m!196437))

(assert (=> b!191608 m!196455))

(declare-fun m!197689 () Bool)

(assert (=> b!191608 m!197689))

(assert (=> b!191608 m!196449))

(assert (=> b!191608 m!196455))

(declare-fun m!197691 () Bool)

(assert (=> b!191608 m!197691))

(assert (=> b!191608 m!196449))

(assert (=> b!191608 m!197689))

(declare-fun m!197693 () Bool)

(assert (=> b!191608 m!197693))

(assert (=> bm!8796 m!196449))

(assert (=> b!191604 m!196495))

(assert (=> b!191604 m!196495))

(assert (=> b!191604 m!197609))

(assert (=> b!191604 m!196495))

(declare-fun m!197695 () Bool)

(assert (=> b!191604 m!197695))

(declare-fun m!197697 () Bool)

(assert (=> b!191604 m!197697))

(declare-fun m!197699 () Bool)

(assert (=> bm!8798 m!197699))

(assert (=> b!190927 d!47638))

(declare-fun d!47640 () Bool)

(declare-fun c!36568 () Bool)

(assert (=> d!47640 (= c!36568 ((_ is IntegerValue!1845) (value!21216 separatorToken!170)))))

(declare-fun e!117795 () Bool)

(assert (=> d!47640 (= (inv!21 (value!21216 separatorToken!170)) e!117795)))

(declare-fun b!191625 () Bool)

(declare-fun e!117796 () Bool)

(declare-fun inv!15 (TokenValue!615) Bool)

(assert (=> b!191625 (= e!117796 (inv!15 (value!21216 separatorToken!170)))))

(declare-fun b!191626 () Bool)

(declare-fun e!117797 () Bool)

(declare-fun inv!17 (TokenValue!615) Bool)

(assert (=> b!191626 (= e!117797 (inv!17 (value!21216 separatorToken!170)))))

(declare-fun b!191627 () Bool)

(declare-fun inv!16 (TokenValue!615) Bool)

(assert (=> b!191627 (= e!117795 (inv!16 (value!21216 separatorToken!170)))))

(declare-fun b!191628 () Bool)

(declare-fun res!87900 () Bool)

(assert (=> b!191628 (=> res!87900 e!117796)))

(assert (=> b!191628 (= res!87900 (not ((_ is IntegerValue!1847) (value!21216 separatorToken!170))))))

(assert (=> b!191628 (= e!117797 e!117796)))

(declare-fun b!191629 () Bool)

(assert (=> b!191629 (= e!117795 e!117797)))

(declare-fun c!36567 () Bool)

(assert (=> b!191629 (= c!36567 ((_ is IntegerValue!1846) (value!21216 separatorToken!170)))))

(assert (= (and d!47640 c!36568) b!191627))

(assert (= (and d!47640 (not c!36568)) b!191629))

(assert (= (and b!191629 c!36567) b!191626))

(assert (= (and b!191629 (not c!36567)) b!191628))

(assert (= (and b!191628 (not res!87900)) b!191625))

(declare-fun m!197701 () Bool)

(assert (=> b!191625 m!197701))

(declare-fun m!197703 () Bool)

(assert (=> b!191626 m!197703))

(declare-fun m!197705 () Bool)

(assert (=> b!191627 m!197705))

(assert (=> b!190923 d!47640))

(declare-fun d!47642 () Bool)

(declare-fun res!87901 () Bool)

(declare-fun e!117798 () Bool)

(assert (=> d!47642 (=> (not res!87901) (not e!117798))))

(assert (=> d!47642 (= res!87901 (not (isEmpty!1609 (originalCharacters!636 separatorToken!170))))))

(assert (=> d!47642 (= (inv!4041 separatorToken!170) e!117798)))

(declare-fun b!191630 () Bool)

(declare-fun res!87902 () Bool)

(assert (=> b!191630 (=> (not res!87902) (not e!117798))))

(assert (=> b!191630 (= res!87902 (= (originalCharacters!636 separatorToken!170) (list!1179 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))))))

(declare-fun b!191631 () Bool)

(assert (=> b!191631 (= e!117798 (= (size!2562 separatorToken!170) (size!2566 (originalCharacters!636 separatorToken!170))))))

(assert (= (and d!47642 res!87901) b!191630))

(assert (= (and b!191630 res!87902) b!191631))

(declare-fun b_lambda!4625 () Bool)

(assert (=> (not b_lambda!4625) (not b!191630)))

(assert (=> b!191630 t!28960))

(declare-fun b_and!13287 () Bool)

(assert (= b_and!13281 (and (=> t!28960 result!10718) b_and!13287)))

(assert (=> b!191630 t!28962))

(declare-fun b_and!13289 () Bool)

(assert (= b_and!13283 (and (=> t!28962 result!10720) b_and!13289)))

(assert (=> b!191630 t!28964))

(declare-fun b_and!13291 () Bool)

(assert (= b_and!13285 (and (=> t!28964 result!10722) b_and!13291)))

(declare-fun m!197707 () Bool)

(assert (=> d!47642 m!197707))

(assert (=> b!191630 m!197117))

(assert (=> b!191630 m!197117))

(declare-fun m!197709 () Bool)

(assert (=> b!191630 m!197709))

(declare-fun m!197711 () Bool)

(assert (=> b!191631 m!197711))

(assert (=> start!20522 d!47642))

(declare-fun d!47644 () Bool)

(declare-fun lt!65811 () Bool)

(declare-fun content!431 (List!3230) (InoxSet Token!930))

(assert (=> d!47644 (= lt!65811 (select (content!431 tokens!465) lt!65439))))

(declare-fun e!117803 () Bool)

(assert (=> d!47644 (= lt!65811 e!117803)))

(declare-fun res!87908 () Bool)

(assert (=> d!47644 (=> (not res!87908) (not e!117803))))

(assert (=> d!47644 (= res!87908 ((_ is Cons!3220) tokens!465))))

(assert (=> d!47644 (= (contains!514 tokens!465 lt!65439) lt!65811)))

(declare-fun b!191636 () Bool)

(declare-fun e!117804 () Bool)

(assert (=> b!191636 (= e!117803 e!117804)))

(declare-fun res!87907 () Bool)

(assert (=> b!191636 (=> res!87907 e!117804)))

(assert (=> b!191636 (= res!87907 (= (h!8617 tokens!465) lt!65439))))

(declare-fun b!191637 () Bool)

(assert (=> b!191637 (= e!117804 (contains!514 (t!28932 tokens!465) lt!65439))))

(assert (= (and d!47644 res!87908) b!191636))

(assert (= (and b!191636 (not res!87907)) b!191637))

(declare-fun m!197713 () Bool)

(assert (=> d!47644 m!197713))

(declare-fun m!197715 () Bool)

(assert (=> d!47644 m!197715))

(declare-fun m!197717 () Bool)

(assert (=> b!191637 m!197717))

(assert (=> b!190946 d!47644))

(declare-fun d!47646 () Bool)

(declare-fun lt!65812 () Token!930)

(assert (=> d!47646 (= lt!65812 (apply!497 (list!1182 (_1!1867 lt!65406)) 0))))

(assert (=> d!47646 (= lt!65812 (apply!498 (c!36427 (_1!1867 lt!65406)) 0))))

(declare-fun e!117805 () Bool)

(assert (=> d!47646 e!117805))

(declare-fun res!87909 () Bool)

(assert (=> d!47646 (=> (not res!87909) (not e!117805))))

(assert (=> d!47646 (= res!87909 (<= 0 0))))

(assert (=> d!47646 (= (apply!492 (_1!1867 lt!65406) 0) lt!65812)))

(declare-fun b!191638 () Bool)

(assert (=> b!191638 (= e!117805 (< 0 (size!2563 (_1!1867 lt!65406))))))

(assert (= (and d!47646 res!87909) b!191638))

(declare-fun m!197719 () Bool)

(assert (=> d!47646 m!197719))

(assert (=> d!47646 m!197719))

(declare-fun m!197721 () Bool)

(assert (=> d!47646 m!197721))

(declare-fun m!197723 () Bool)

(assert (=> d!47646 m!197723))

(assert (=> b!191638 m!196545))

(assert (=> b!190924 d!47646))

(declare-fun d!47648 () Bool)

(declare-fun res!87914 () Bool)

(declare-fun e!117810 () Bool)

(assert (=> d!47648 (=> res!87914 e!117810)))

(assert (=> d!47648 (= res!87914 (not ((_ is Cons!3219) rules!1920)))))

(assert (=> d!47648 (= (sepAndNonSepRulesDisjointChars!182 rules!1920 rules!1920) e!117810)))

(declare-fun b!191643 () Bool)

(declare-fun e!117811 () Bool)

(assert (=> b!191643 (= e!117810 e!117811)))

(declare-fun res!87915 () Bool)

(assert (=> b!191643 (=> (not res!87915) (not e!117811))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!60 (Rule!986 List!3229) Bool)

(assert (=> b!191643 (= res!87915 (ruleDisjointCharsFromAllFromOtherType!60 (h!8616 rules!1920) rules!1920))))

(declare-fun b!191644 () Bool)

(assert (=> b!191644 (= e!117811 (sepAndNonSepRulesDisjointChars!182 rules!1920 (t!28931 rules!1920)))))

(assert (= (and d!47648 (not res!87914)) b!191643))

(assert (= (and b!191643 res!87915) b!191644))

(declare-fun m!197725 () Bool)

(assert (=> b!191643 m!197725))

(declare-fun m!197727 () Bool)

(assert (=> b!191644 m!197727))

(assert (=> b!190945 d!47648))

(declare-fun d!47650 () Bool)

(assert (=> d!47650 (= (list!1179 (seqFromList!563 lt!65430)) (list!1183 (c!36425 (seqFromList!563 lt!65430))))))

(declare-fun bs!18858 () Bool)

(assert (= bs!18858 d!47650))

(declare-fun m!197729 () Bool)

(assert (=> bs!18858 m!197729))

(assert (=> b!190942 d!47650))

(declare-fun d!47652 () Bool)

(assert (=> d!47652 (= (seqFromList!563 lt!65430) (fromListB!208 lt!65430))))

(declare-fun bs!18859 () Bool)

(assert (= bs!18859 d!47652))

(declare-fun m!197731 () Bool)

(assert (=> bs!18859 m!197731))

(assert (=> b!190942 d!47652))

(declare-fun d!47654 () Bool)

(assert (=> d!47654 (= (isEmpty!1609 (_2!1869 lt!65417)) ((_ is Nil!3218) (_2!1869 lt!65417)))))

(assert (=> b!190920 d!47654))

(declare-fun d!47656 () Bool)

(declare-fun isEmpty!1622 (Option!472) Bool)

(assert (=> d!47656 (= (isDefined!324 lt!65435) (not (isEmpty!1622 lt!65435)))))

(declare-fun bs!18860 () Bool)

(assert (= bs!18860 d!47656))

(declare-fun m!197733 () Bool)

(assert (=> bs!18860 m!197733))

(assert (=> b!190941 d!47656))

(declare-fun d!47658 () Bool)

(assert (=> d!47658 (= (isEmpty!1612 (t!28932 tokens!465)) ((_ is Nil!3220) (t!28932 tokens!465)))))

(assert (=> b!190941 d!47658))

(assert (=> b!190941 d!47422))

(declare-fun d!47660 () Bool)

(declare-fun e!117814 () Bool)

(assert (=> d!47660 e!117814))

(declare-fun res!87920 () Bool)

(assert (=> d!47660 (=> (not res!87920) (not e!117814))))

(assert (=> d!47660 (= res!87920 (isDefined!324 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))))))

(declare-fun lt!65815 () Unit!3036)

(declare-fun choose!1938 (LexerInterface!479 List!3229 List!3228 Token!930) Unit!3036)

(assert (=> d!47660 (= lt!65815 (choose!1938 thiss!17480 rules!1920 lt!65438 separatorToken!170))))

(assert (=> d!47660 (rulesInvariant!445 thiss!17480 rules!1920)))

(assert (=> d!47660 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!34 thiss!17480 rules!1920 lt!65438 separatorToken!170) lt!65815)))

(declare-fun b!191649 () Bool)

(declare-fun res!87921 () Bool)

(assert (=> b!191649 (=> (not res!87921) (not e!117814))))

(assert (=> b!191649 (= res!87921 (matchR!155 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))) (list!1179 (charsOf!248 separatorToken!170))))))

(declare-fun b!191650 () Bool)

(assert (=> b!191650 (= e!117814 (= (rule!1108 separatorToken!170) (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))))))

(assert (= (and d!47660 res!87920) b!191649))

(assert (= (and b!191649 res!87921) b!191650))

(assert (=> d!47660 m!196513))

(assert (=> d!47660 m!196513))

(declare-fun m!197735 () Bool)

(assert (=> d!47660 m!197735))

(declare-fun m!197737 () Bool)

(assert (=> d!47660 m!197737))

(assert (=> d!47660 m!196555))

(assert (=> b!191649 m!196439))

(assert (=> b!191649 m!196441))

(assert (=> b!191649 m!196513))

(declare-fun m!197739 () Bool)

(assert (=> b!191649 m!197739))

(assert (=> b!191649 m!196441))

(declare-fun m!197741 () Bool)

(assert (=> b!191649 m!197741))

(assert (=> b!191649 m!196513))

(assert (=> b!191649 m!196439))

(assert (=> b!191650 m!196513))

(assert (=> b!191650 m!196513))

(assert (=> b!191650 m!197739))

(assert (=> b!190941 d!47660))

(declare-fun d!47662 () Bool)

(assert (=> d!47662 (= (isEmpty!1612 tokens!465) ((_ is Nil!3220) tokens!465))))

(assert (=> b!190941 d!47662))

(declare-fun d!47664 () Bool)

(declare-fun lt!65817 () Bool)

(declare-fun e!117815 () Bool)

(assert (=> d!47664 (= lt!65817 e!117815)))

(declare-fun res!87923 () Bool)

(assert (=> d!47664 (=> (not res!87923) (not e!117815))))

(assert (=> d!47664 (= res!87923 (= (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439))))) (list!1182 (singletonSeq!145 lt!65439))))))

(declare-fun e!117816 () Bool)

(assert (=> d!47664 (= lt!65817 e!117816)))

(declare-fun res!87924 () Bool)

(assert (=> d!47664 (=> (not res!87924) (not e!117816))))

(declare-fun lt!65816 () tuple2!3302)

(assert (=> d!47664 (= res!87924 (= (size!2563 (_1!1867 lt!65816)) 1))))

(assert (=> d!47664 (= lt!65816 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439))))))

(assert (=> d!47664 (not (isEmpty!1610 rules!1920))))

(assert (=> d!47664 (= (rulesProduceIndividualToken!228 thiss!17480 rules!1920 lt!65439) lt!65817)))

(declare-fun b!191651 () Bool)

(declare-fun res!87922 () Bool)

(assert (=> b!191651 (=> (not res!87922) (not e!117816))))

(assert (=> b!191651 (= res!87922 (= (apply!492 (_1!1867 lt!65816) 0) lt!65439))))

(declare-fun b!191652 () Bool)

(assert (=> b!191652 (= e!117816 (isEmpty!1608 (_2!1867 lt!65816)))))

(declare-fun b!191653 () Bool)

(assert (=> b!191653 (= e!117815 (isEmpty!1608 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439))))))))

(assert (= (and d!47664 res!87924) b!191651))

(assert (= (and b!191651 res!87922) b!191652))

(assert (= (and d!47664 res!87923) b!191653))

(declare-fun m!197743 () Bool)

(assert (=> d!47664 m!197743))

(assert (=> d!47664 m!196433))

(assert (=> d!47664 m!196539))

(declare-fun m!197745 () Bool)

(assert (=> d!47664 m!197745))

(assert (=> d!47664 m!196539))

(assert (=> d!47664 m!196539))

(declare-fun m!197747 () Bool)

(assert (=> d!47664 m!197747))

(declare-fun m!197749 () Bool)

(assert (=> d!47664 m!197749))

(assert (=> d!47664 m!197745))

(declare-fun m!197751 () Bool)

(assert (=> d!47664 m!197751))

(declare-fun m!197753 () Bool)

(assert (=> b!191651 m!197753))

(declare-fun m!197755 () Bool)

(assert (=> b!191652 m!197755))

(assert (=> b!191653 m!196539))

(assert (=> b!191653 m!196539))

(assert (=> b!191653 m!197745))

(assert (=> b!191653 m!197745))

(assert (=> b!191653 m!197751))

(declare-fun m!197757 () Bool)

(assert (=> b!191653 m!197757))

(assert (=> b!190941 d!47664))

(declare-fun d!47666 () Bool)

(declare-fun lt!65823 () BalanceConc!2024)

(assert (=> d!47666 (= (list!1179 lt!65823) (printListTailRec!78 thiss!17480 (dropList!110 lt!65440 0) (list!1179 (BalanceConc!2025 Empty!1008))))))

(declare-fun e!117817 () BalanceConc!2024)

(assert (=> d!47666 (= lt!65823 e!117817)))

(declare-fun c!36569 () Bool)

(assert (=> d!47666 (= c!36569 (>= 0 (size!2563 lt!65440)))))

(declare-fun e!117818 () Bool)

(assert (=> d!47666 e!117818))

(declare-fun res!87925 () Bool)

(assert (=> d!47666 (=> (not res!87925) (not e!117818))))

(assert (=> d!47666 (= res!87925 (>= 0 0))))

(assert (=> d!47666 (= (printTailRec!173 thiss!17480 lt!65440 0 (BalanceConc!2025 Empty!1008)) lt!65823)))

(declare-fun b!191654 () Bool)

(assert (=> b!191654 (= e!117818 (<= 0 (size!2563 lt!65440)))))

(declare-fun b!191655 () Bool)

(assert (=> b!191655 (= e!117817 (BalanceConc!2025 Empty!1008))))

(declare-fun b!191656 () Bool)

(assert (=> b!191656 (= e!117817 (printTailRec!173 thiss!17480 lt!65440 (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65440 0)))))))

(declare-fun lt!65821 () List!3230)

(assert (=> b!191656 (= lt!65821 (list!1182 lt!65440))))

(declare-fun lt!65824 () Unit!3036)

(assert (=> b!191656 (= lt!65824 (lemmaDropApply!150 lt!65821 0))))

(assert (=> b!191656 (= (head!682 (drop!163 lt!65821 0)) (apply!497 lt!65821 0))))

(declare-fun lt!65820 () Unit!3036)

(assert (=> b!191656 (= lt!65820 lt!65824)))

(declare-fun lt!65819 () List!3230)

(assert (=> b!191656 (= lt!65819 (list!1182 lt!65440))))

(declare-fun lt!65822 () Unit!3036)

(assert (=> b!191656 (= lt!65822 (lemmaDropTail!142 lt!65819 0))))

(assert (=> b!191656 (= (tail!385 (drop!163 lt!65819 0)) (drop!163 lt!65819 (+ 0 1)))))

(declare-fun lt!65818 () Unit!3036)

(assert (=> b!191656 (= lt!65818 lt!65822)))

(assert (= (and d!47666 res!87925) b!191654))

(assert (= (and d!47666 c!36569) b!191655))

(assert (= (and d!47666 (not c!36569)) b!191656))

(declare-fun m!197759 () Bool)

(assert (=> d!47666 m!197759))

(assert (=> d!47666 m!197539))

(declare-fun m!197761 () Bool)

(assert (=> d!47666 m!197761))

(assert (=> d!47666 m!197539))

(declare-fun m!197763 () Bool)

(assert (=> d!47666 m!197763))

(assert (=> d!47666 m!197761))

(declare-fun m!197765 () Bool)

(assert (=> d!47666 m!197765))

(assert (=> b!191654 m!197759))

(declare-fun m!197767 () Bool)

(assert (=> b!191656 m!197767))

(declare-fun m!197769 () Bool)

(assert (=> b!191656 m!197769))

(declare-fun m!197771 () Bool)

(assert (=> b!191656 m!197771))

(declare-fun m!197773 () Bool)

(assert (=> b!191656 m!197773))

(declare-fun m!197775 () Bool)

(assert (=> b!191656 m!197775))

(declare-fun m!197777 () Bool)

(assert (=> b!191656 m!197777))

(declare-fun m!197779 () Bool)

(assert (=> b!191656 m!197779))

(assert (=> b!191656 m!197777))

(declare-fun m!197781 () Bool)

(assert (=> b!191656 m!197781))

(declare-fun m!197783 () Bool)

(assert (=> b!191656 m!197783))

(assert (=> b!191656 m!197779))

(assert (=> b!191656 m!197781))

(declare-fun m!197785 () Bool)

(assert (=> b!191656 m!197785))

(assert (=> b!191656 m!197767))

(declare-fun m!197787 () Bool)

(assert (=> b!191656 m!197787))

(declare-fun m!197789 () Bool)

(assert (=> b!191656 m!197789))

(assert (=> b!191656 m!197785))

(declare-fun m!197791 () Bool)

(assert (=> b!191656 m!197791))

(assert (=> b!190941 d!47666))

(declare-fun d!47668 () Bool)

(assert (=> d!47668 (rulesProduceIndividualToken!228 thiss!17480 rules!1920 lt!65439)))

(declare-fun lt!65869 () Unit!3036)

(declare-fun choose!1939 (LexerInterface!479 List!3229 List!3230 Token!930) Unit!3036)

(assert (=> d!47668 (= lt!65869 (choose!1939 thiss!17480 rules!1920 tokens!465 lt!65439))))

(assert (=> d!47668 (not (isEmpty!1610 rules!1920))))

(assert (=> d!47668 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!46 thiss!17480 rules!1920 tokens!465 lt!65439) lt!65869)))

(declare-fun bs!18870 () Bool)

(assert (= bs!18870 d!47668))

(assert (=> bs!18870 m!196543))

(declare-fun m!197833 () Bool)

(assert (=> bs!18870 m!197833))

(assert (=> bs!18870 m!196433))

(assert (=> b!190941 d!47668))

(declare-fun b!191687 () Bool)

(declare-fun e!117840 () Bool)

(declare-fun lt!65874 () Option!473)

(assert (=> b!191687 (= e!117840 (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!65874)))))))

(declare-fun b!191688 () Bool)

(declare-fun res!87940 () Bool)

(assert (=> b!191688 (=> (not res!87940) (not e!117840))))

(assert (=> b!191688 (= res!87940 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874)))) (originalCharacters!636 (_1!1869 (get!938 lt!65874)))))))

(declare-fun b!191689 () Bool)

(declare-fun e!117841 () Option!473)

(declare-fun lt!65872 () Option!473)

(declare-fun lt!65870 () Option!473)

(assert (=> b!191689 (= e!117841 (ite (and ((_ is None!472) lt!65872) ((_ is None!472) lt!65870)) None!472 (ite ((_ is None!472) lt!65870) lt!65872 (ite ((_ is None!472) lt!65872) lt!65870 (ite (>= (size!2562 (_1!1869 (v!13983 lt!65872))) (size!2562 (_1!1869 (v!13983 lt!65870)))) lt!65872 lt!65870)))))))

(declare-fun call!8821 () Option!473)

(assert (=> b!191689 (= lt!65872 call!8821)))

(assert (=> b!191689 (= lt!65870 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) lt!65412))))

(declare-fun b!191691 () Bool)

(declare-fun res!87938 () Bool)

(assert (=> b!191691 (=> (not res!87938) (not e!117840))))

(assert (=> b!191691 (= res!87938 (= (value!21216 (_1!1869 (get!938 lt!65874))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65874)))))))))

(declare-fun bm!8816 () Bool)

(assert (=> bm!8816 (= call!8821 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) lt!65412))))

(declare-fun b!191692 () Bool)

(declare-fun res!87936 () Bool)

(assert (=> b!191692 (=> (not res!87936) (not e!117840))))

(assert (=> b!191692 (= res!87936 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))))))

(declare-fun b!191693 () Bool)

(declare-fun res!87935 () Bool)

(assert (=> b!191693 (=> (not res!87935) (not e!117840))))

(assert (=> b!191693 (= res!87935 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874)))) (_2!1869 (get!938 lt!65874))) lt!65412))))

(declare-fun d!47670 () Bool)

(declare-fun e!117842 () Bool)

(assert (=> d!47670 e!117842))

(declare-fun res!87939 () Bool)

(assert (=> d!47670 (=> res!87939 e!117842)))

(assert (=> d!47670 (= res!87939 (isEmpty!1617 lt!65874))))

(assert (=> d!47670 (= lt!65874 e!117841)))

(declare-fun c!36579 () Bool)

(assert (=> d!47670 (= c!36579 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!65871 () Unit!3036)

(declare-fun lt!65873 () Unit!3036)

(assert (=> d!47670 (= lt!65871 lt!65873)))

(assert (=> d!47670 (isPrefix!289 lt!65412 lt!65412)))

(assert (=> d!47670 (= lt!65873 (lemmaIsPrefixRefl!159 lt!65412 lt!65412))))

(assert (=> d!47670 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!47670 (= (maxPrefix!209 thiss!17480 rules!1920 lt!65412) lt!65874)))

(declare-fun b!191690 () Bool)

(assert (=> b!191690 (= e!117842 e!117840)))

(declare-fun res!87937 () Bool)

(assert (=> b!191690 (=> (not res!87937) (not e!117840))))

(assert (=> b!191690 (= res!87937 (isDefined!323 lt!65874))))

(declare-fun b!191694 () Bool)

(assert (=> b!191694 (= e!117841 call!8821)))

(declare-fun b!191695 () Bool)

(declare-fun res!87941 () Bool)

(assert (=> b!191695 (=> (not res!87941) (not e!117840))))

(assert (=> b!191695 (= res!87941 (< (size!2566 (_2!1869 (get!938 lt!65874))) (size!2566 lt!65412)))))

(assert (= (and d!47670 c!36579) b!191694))

(assert (= (and d!47670 (not c!36579)) b!191689))

(assert (= (or b!191694 b!191689) bm!8816))

(assert (= (and d!47670 (not res!87939)) b!191690))

(assert (= (and b!191690 res!87937) b!191688))

(assert (= (and b!191688 res!87940) b!191695))

(assert (= (and b!191695 res!87941) b!191693))

(assert (= (and b!191693 res!87935) b!191691))

(assert (= (and b!191691 res!87938) b!191692))

(assert (= (and b!191692 res!87936) b!191687))

(declare-fun m!197855 () Bool)

(assert (=> b!191693 m!197855))

(declare-fun m!197857 () Bool)

(assert (=> b!191693 m!197857))

(assert (=> b!191693 m!197857))

(declare-fun m!197859 () Bool)

(assert (=> b!191693 m!197859))

(assert (=> b!191693 m!197859))

(declare-fun m!197861 () Bool)

(assert (=> b!191693 m!197861))

(declare-fun m!197863 () Bool)

(assert (=> bm!8816 m!197863))

(declare-fun m!197865 () Bool)

(assert (=> b!191690 m!197865))

(assert (=> b!191688 m!197855))

(assert (=> b!191688 m!197857))

(assert (=> b!191688 m!197857))

(assert (=> b!191688 m!197859))

(assert (=> b!191687 m!197855))

(declare-fun m!197867 () Bool)

(assert (=> b!191687 m!197867))

(assert (=> b!191692 m!197855))

(assert (=> b!191692 m!197857))

(assert (=> b!191692 m!197857))

(assert (=> b!191692 m!197859))

(assert (=> b!191692 m!197859))

(declare-fun m!197869 () Bool)

(assert (=> b!191692 m!197869))

(assert (=> b!191691 m!197855))

(declare-fun m!197871 () Bool)

(assert (=> b!191691 m!197871))

(assert (=> b!191691 m!197871))

(declare-fun m!197873 () Bool)

(assert (=> b!191691 m!197873))

(declare-fun m!197875 () Bool)

(assert (=> d!47670 m!197875))

(declare-fun m!197877 () Bool)

(assert (=> d!47670 m!197877))

(declare-fun m!197879 () Bool)

(assert (=> d!47670 m!197879))

(assert (=> d!47670 m!196735))

(assert (=> b!191695 m!197855))

(declare-fun m!197881 () Bool)

(assert (=> b!191695 m!197881))

(assert (=> b!191695 m!197339))

(declare-fun m!197883 () Bool)

(assert (=> b!191689 m!197883))

(assert (=> b!190941 d!47670))

(declare-fun b!191714 () Bool)

(declare-fun e!117853 () Bool)

(assert (=> b!191714 (= e!117853 (isPrefix!289 (tail!386 lt!65413) (tail!386 lt!65405)))))

(declare-fun b!191712 () Bool)

(declare-fun e!117855 () Bool)

(assert (=> b!191712 (= e!117855 e!117853)))

(declare-fun res!87957 () Bool)

(assert (=> b!191712 (=> (not res!87957) (not e!117853))))

(assert (=> b!191712 (= res!87957 (not ((_ is Nil!3218) lt!65405)))))

(declare-fun b!191715 () Bool)

(declare-fun e!117854 () Bool)

(assert (=> b!191715 (= e!117854 (>= (size!2566 lt!65405) (size!2566 lt!65413)))))

(declare-fun b!191713 () Bool)

(declare-fun res!87956 () Bool)

(assert (=> b!191713 (=> (not res!87956) (not e!117853))))

(assert (=> b!191713 (= res!87956 (= (head!684 lt!65413) (head!684 lt!65405)))))

(declare-fun d!47674 () Bool)

(assert (=> d!47674 e!117854))

(declare-fun res!87955 () Bool)

(assert (=> d!47674 (=> res!87955 e!117854)))

(declare-fun lt!65886 () Bool)

(assert (=> d!47674 (= res!87955 (not lt!65886))))

(assert (=> d!47674 (= lt!65886 e!117855)))

(declare-fun res!87954 () Bool)

(assert (=> d!47674 (=> res!87954 e!117855)))

(assert (=> d!47674 (= res!87954 ((_ is Nil!3218) lt!65413))))

(assert (=> d!47674 (= (isPrefix!289 lt!65413 lt!65405) lt!65886)))

(assert (= (and d!47674 (not res!87954)) b!191712))

(assert (= (and b!191712 res!87957) b!191713))

(assert (= (and b!191713 res!87956) b!191714))

(assert (= (and d!47674 (not res!87955)) b!191715))

(assert (=> b!191714 m!197423))

(declare-fun m!197913 () Bool)

(assert (=> b!191714 m!197913))

(assert (=> b!191714 m!197423))

(assert (=> b!191714 m!197913))

(declare-fun m!197915 () Bool)

(assert (=> b!191714 m!197915))

(declare-fun m!197917 () Bool)

(assert (=> b!191715 m!197917))

(assert (=> b!191715 m!197161))

(assert (=> b!191713 m!197419))

(declare-fun m!197919 () Bool)

(assert (=> b!191713 m!197919))

(assert (=> b!190941 d!47674))

(declare-fun d!47688 () Bool)

(declare-fun lt!65888 () BalanceConc!2024)

(assert (=> d!47688 (= (list!1179 lt!65888) (printList!163 thiss!17480 (list!1182 lt!65418)))))

(assert (=> d!47688 (= lt!65888 (printTailRec!173 thiss!17480 lt!65418 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!47688 (= (print!210 thiss!17480 lt!65418) lt!65888)))

(declare-fun bs!18873 () Bool)

(assert (= bs!18873 d!47688))

(declare-fun m!197922 () Bool)

(assert (=> bs!18873 m!197922))

(declare-fun m!197925 () Bool)

(assert (=> bs!18873 m!197925))

(assert (=> bs!18873 m!197925))

(declare-fun m!197931 () Bool)

(assert (=> bs!18873 m!197931))

(assert (=> bs!18873 m!196531))

(assert (=> b!190941 d!47688))

(declare-fun d!47692 () Bool)

(declare-fun e!117859 () Bool)

(assert (=> d!47692 e!117859))

(declare-fun res!87962 () Bool)

(assert (=> d!47692 (=> (not res!87962) (not e!117859))))

(declare-fun lt!65889 () BalanceConc!2026)

(assert (=> d!47692 (= res!87962 (= (list!1182 lt!65889) (Cons!3220 separatorToken!170 Nil!3220)))))

(assert (=> d!47692 (= lt!65889 (singleton!59 separatorToken!170))))

(assert (=> d!47692 (= (singletonSeq!145 separatorToken!170) lt!65889)))

(declare-fun b!191720 () Bool)

(assert (=> b!191720 (= e!117859 (isBalanced!264 (c!36427 lt!65889)))))

(assert (= (and d!47692 res!87962) b!191720))

(declare-fun m!197933 () Bool)

(assert (=> d!47692 m!197933))

(declare-fun m!197935 () Bool)

(assert (=> d!47692 m!197935))

(declare-fun m!197937 () Bool)

(assert (=> b!191720 m!197937))

(assert (=> b!190941 d!47692))

(declare-fun d!47694 () Bool)

(assert (=> d!47694 (= (get!938 (maxPrefix!209 thiss!17480 rules!1920 lt!65430)) (v!13983 (maxPrefix!209 thiss!17480 rules!1920 lt!65430)))))

(assert (=> b!190941 d!47694))

(declare-fun d!47696 () Bool)

(declare-fun lt!65907 () Int)

(declare-fun size!2570 (List!3230) Int)

(assert (=> d!47696 (= lt!65907 (size!2570 (list!1182 (_1!1867 lt!65414))))))

(declare-fun size!2571 (Conc!1009) Int)

(assert (=> d!47696 (= lt!65907 (size!2571 (c!36427 (_1!1867 lt!65414))))))

(assert (=> d!47696 (= (size!2563 (_1!1867 lt!65414)) lt!65907)))

(declare-fun bs!18883 () Bool)

(assert (= bs!18883 d!47696))

(assert (=> bs!18883 m!197439))

(assert (=> bs!18883 m!197439))

(declare-fun m!197951 () Bool)

(assert (=> bs!18883 m!197951))

(declare-fun m!197953 () Bool)

(assert (=> bs!18883 m!197953))

(assert (=> b!190941 d!47696))

(declare-fun d!47702 () Bool)

(declare-fun e!117870 () Bool)

(assert (=> d!47702 e!117870))

(declare-fun res!87966 () Bool)

(assert (=> d!47702 (=> (not res!87966) (not e!117870))))

(declare-fun lt!65908 () BalanceConc!2026)

(assert (=> d!47702 (= res!87966 (= (list!1182 lt!65908) (Cons!3220 lt!65439 Nil!3220)))))

(assert (=> d!47702 (= lt!65908 (singleton!59 lt!65439))))

(assert (=> d!47702 (= (singletonSeq!145 lt!65439) lt!65908)))

(declare-fun b!191737 () Bool)

(assert (=> b!191737 (= e!117870 (isBalanced!264 (c!36427 lt!65908)))))

(assert (= (and d!47702 res!87966) b!191737))

(declare-fun m!197955 () Bool)

(assert (=> d!47702 m!197955))

(declare-fun m!197957 () Bool)

(assert (=> d!47702 m!197957))

(declare-fun m!197959 () Bool)

(assert (=> b!191737 m!197959))

(assert (=> b!190941 d!47702))

(declare-fun d!47704 () Bool)

(declare-fun lt!65909 () Int)

(assert (=> d!47704 (= lt!65909 (size!2570 (list!1182 (_1!1867 lt!65406))))))

(assert (=> d!47704 (= lt!65909 (size!2571 (c!36427 (_1!1867 lt!65406))))))

(assert (=> d!47704 (= (size!2563 (_1!1867 lt!65406)) lt!65909)))

(declare-fun bs!18889 () Bool)

(assert (= bs!18889 d!47704))

(assert (=> bs!18889 m!197719))

(assert (=> bs!18889 m!197719))

(declare-fun m!197961 () Bool)

(assert (=> bs!18889 m!197961))

(declare-fun m!197963 () Bool)

(assert (=> bs!18889 m!197963))

(assert (=> b!190941 d!47704))

(declare-fun d!47706 () Bool)

(declare-fun lt!65915 () BalanceConc!2024)

(assert (=> d!47706 (= (list!1179 lt!65915) (printListTailRec!78 thiss!17480 (dropList!110 lt!65418 0) (list!1179 (BalanceConc!2025 Empty!1008))))))

(declare-fun e!117871 () BalanceConc!2024)

(assert (=> d!47706 (= lt!65915 e!117871)))

(declare-fun c!36587 () Bool)

(assert (=> d!47706 (= c!36587 (>= 0 (size!2563 lt!65418)))))

(declare-fun e!117872 () Bool)

(assert (=> d!47706 e!117872))

(declare-fun res!87967 () Bool)

(assert (=> d!47706 (=> (not res!87967) (not e!117872))))

(assert (=> d!47706 (= res!87967 (>= 0 0))))

(assert (=> d!47706 (= (printTailRec!173 thiss!17480 lt!65418 0 (BalanceConc!2025 Empty!1008)) lt!65915)))

(declare-fun b!191738 () Bool)

(assert (=> b!191738 (= e!117872 (<= 0 (size!2563 lt!65418)))))

(declare-fun b!191739 () Bool)

(assert (=> b!191739 (= e!117871 (BalanceConc!2025 Empty!1008))))

(declare-fun b!191740 () Bool)

(assert (=> b!191740 (= e!117871 (printTailRec!173 thiss!17480 lt!65418 (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65418 0)))))))

(declare-fun lt!65913 () List!3230)

(assert (=> b!191740 (= lt!65913 (list!1182 lt!65418))))

(declare-fun lt!65916 () Unit!3036)

(assert (=> b!191740 (= lt!65916 (lemmaDropApply!150 lt!65913 0))))

(assert (=> b!191740 (= (head!682 (drop!163 lt!65913 0)) (apply!497 lt!65913 0))))

(declare-fun lt!65912 () Unit!3036)

(assert (=> b!191740 (= lt!65912 lt!65916)))

(declare-fun lt!65911 () List!3230)

(assert (=> b!191740 (= lt!65911 (list!1182 lt!65418))))

(declare-fun lt!65914 () Unit!3036)

(assert (=> b!191740 (= lt!65914 (lemmaDropTail!142 lt!65911 0))))

(assert (=> b!191740 (= (tail!385 (drop!163 lt!65911 0)) (drop!163 lt!65911 (+ 0 1)))))

(declare-fun lt!65910 () Unit!3036)

(assert (=> b!191740 (= lt!65910 lt!65914)))

(assert (= (and d!47706 res!87967) b!191738))

(assert (= (and d!47706 c!36587) b!191739))

(assert (= (and d!47706 (not c!36587)) b!191740))

(declare-fun m!197965 () Bool)

(assert (=> d!47706 m!197965))

(assert (=> d!47706 m!197539))

(declare-fun m!197967 () Bool)

(assert (=> d!47706 m!197967))

(assert (=> d!47706 m!197539))

(declare-fun m!197969 () Bool)

(assert (=> d!47706 m!197969))

(assert (=> d!47706 m!197967))

(declare-fun m!197971 () Bool)

(assert (=> d!47706 m!197971))

(assert (=> b!191738 m!197965))

(declare-fun m!197975 () Bool)

(assert (=> b!191740 m!197975))

(declare-fun m!197979 () Bool)

(assert (=> b!191740 m!197979))

(assert (=> b!191740 m!197925))

(declare-fun m!197987 () Bool)

(assert (=> b!191740 m!197987))

(declare-fun m!197989 () Bool)

(assert (=> b!191740 m!197989))

(declare-fun m!197991 () Bool)

(assert (=> b!191740 m!197991))

(declare-fun m!197995 () Bool)

(assert (=> b!191740 m!197995))

(assert (=> b!191740 m!197991))

(declare-fun m!197999 () Bool)

(assert (=> b!191740 m!197999))

(declare-fun m!198005 () Bool)

(assert (=> b!191740 m!198005))

(assert (=> b!191740 m!197995))

(assert (=> b!191740 m!197999))

(declare-fun m!198013 () Bool)

(assert (=> b!191740 m!198013))

(assert (=> b!191740 m!197975))

(declare-fun m!198021 () Bool)

(assert (=> b!191740 m!198021))

(declare-fun m!198025 () Bool)

(assert (=> b!191740 m!198025))

(assert (=> b!191740 m!198013))

(declare-fun m!198029 () Bool)

(assert (=> b!191740 m!198029))

(assert (=> b!190941 d!47706))

(declare-fun b!191803 () Bool)

(declare-fun e!117912 () Bool)

(declare-fun e!117914 () Bool)

(assert (=> b!191803 (= e!117912 e!117914)))

(declare-fun res!87974 () Bool)

(assert (=> b!191803 (=> (not res!87974) (not e!117914))))

(declare-fun lt!65932 () Option!472)

(assert (=> b!191803 (= res!87974 (contains!516 rules!1920 (get!937 lt!65932)))))

(declare-fun d!47708 () Bool)

(assert (=> d!47708 e!117912))

(declare-fun res!87975 () Bool)

(assert (=> d!47708 (=> res!87975 e!117912)))

(assert (=> d!47708 (= res!87975 (isEmpty!1622 lt!65932))))

(declare-fun e!117911 () Option!472)

(assert (=> d!47708 (= lt!65932 e!117911)))

(declare-fun c!36597 () Bool)

(assert (=> d!47708 (= c!36597 (and ((_ is Cons!3219) rules!1920) (= (tag!771 (h!8616 rules!1920)) (tag!771 (rule!1108 separatorToken!170)))))))

(assert (=> d!47708 (rulesInvariant!445 thiss!17480 rules!1920)))

(assert (=> d!47708 (= (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))) lt!65932)))

(declare-fun b!191804 () Bool)

(declare-fun lt!65931 () Unit!3036)

(declare-fun lt!65930 () Unit!3036)

(assert (=> b!191804 (= lt!65931 lt!65930)))

(assert (=> b!191804 (rulesInvariant!445 thiss!17480 (t!28931 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!2 (LexerInterface!479 Rule!986 List!3229) Unit!3036)

(assert (=> b!191804 (= lt!65930 (lemmaInvariantOnRulesThenOnTail!2 thiss!17480 (h!8616 rules!1920) (t!28931 rules!1920)))))

(declare-fun e!117913 () Option!472)

(assert (=> b!191804 (= e!117913 (getRuleFromTag!34 thiss!17480 (t!28931 rules!1920) (tag!771 (rule!1108 separatorToken!170))))))

(declare-fun b!191805 () Bool)

(assert (=> b!191805 (= e!117911 (Some!471 (h!8616 rules!1920)))))

(declare-fun b!191806 () Bool)

(assert (=> b!191806 (= e!117911 e!117913)))

(declare-fun c!36598 () Bool)

(assert (=> b!191806 (= c!36598 (and ((_ is Cons!3219) rules!1920) (not (= (tag!771 (h!8616 rules!1920)) (tag!771 (rule!1108 separatorToken!170))))))))

(declare-fun b!191807 () Bool)

(assert (=> b!191807 (= e!117913 None!471)))

(declare-fun b!191808 () Bool)

(assert (=> b!191808 (= e!117914 (= (tag!771 (get!937 lt!65932)) (tag!771 (rule!1108 separatorToken!170))))))

(assert (= (and d!47708 c!36597) b!191805))

(assert (= (and d!47708 (not c!36597)) b!191806))

(assert (= (and b!191806 c!36598) b!191804))

(assert (= (and b!191806 (not c!36598)) b!191807))

(assert (= (and d!47708 (not res!87975)) b!191803))

(assert (= (and b!191803 res!87974) b!191808))

(declare-fun m!198085 () Bool)

(assert (=> b!191803 m!198085))

(assert (=> b!191803 m!198085))

(declare-fun m!198087 () Bool)

(assert (=> b!191803 m!198087))

(declare-fun m!198089 () Bool)

(assert (=> d!47708 m!198089))

(assert (=> d!47708 m!196555))

(declare-fun m!198091 () Bool)

(assert (=> b!191804 m!198091))

(declare-fun m!198093 () Bool)

(assert (=> b!191804 m!198093))

(declare-fun m!198095 () Bool)

(assert (=> b!191804 m!198095))

(assert (=> b!191808 m!198085))

(assert (=> b!190941 d!47708))

(declare-fun d!47718 () Bool)

(declare-fun res!87980 () Bool)

(declare-fun e!117931 () Bool)

(assert (=> d!47718 (=> res!87980 e!117931)))

(assert (=> d!47718 (= res!87980 ((_ is Nil!3220) tokens!465))))

(assert (=> d!47718 (= (forall!675 tokens!465 lambda!5840) e!117931)))

(declare-fun b!191823 () Bool)

(declare-fun e!117932 () Bool)

(assert (=> b!191823 (= e!117931 e!117932)))

(declare-fun res!87981 () Bool)

(assert (=> b!191823 (=> (not res!87981) (not e!117932))))

(assert (=> b!191823 (= res!87981 (dynLambda!1375 lambda!5840 (h!8617 tokens!465)))))

(declare-fun b!191824 () Bool)

(assert (=> b!191824 (= e!117932 (forall!675 (t!28932 tokens!465) lambda!5840))))

(assert (= (and d!47718 (not res!87980)) b!191823))

(assert (= (and b!191823 res!87981) b!191824))

(declare-fun b_lambda!4631 () Bool)

(assert (=> (not b_lambda!4631) (not b!191823)))

(assert (=> b!191823 m!197411))

(declare-fun m!198097 () Bool)

(assert (=> b!191824 m!198097))

(assert (=> b!190941 d!47718))

(declare-fun d!47720 () Bool)

(assert (=> d!47720 (= (head!682 (t!28932 tokens!465)) (h!8617 (t!28932 tokens!465)))))

(assert (=> b!190941 d!47720))

(declare-fun d!47722 () Bool)

(declare-fun e!117947 () Bool)

(assert (=> d!47722 e!117947))

(declare-fun res!87986 () Bool)

(assert (=> d!47722 (=> res!87986 e!117947)))

(assert (=> d!47722 (= res!87986 (isEmpty!1612 tokens!465))))

(declare-fun lt!65935 () Unit!3036)

(declare-fun choose!1940 (LexerInterface!479 List!3229 List!3230 Token!930) Unit!3036)

(assert (=> d!47722 (= lt!65935 (choose!1940 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!47722 (not (isEmpty!1610 rules!1920))))

(assert (=> d!47722 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!54 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!65935)))

(declare-fun b!191840 () Bool)

(declare-fun e!117948 () Bool)

(assert (=> b!191840 (= e!117947 e!117948)))

(declare-fun res!87987 () Bool)

(assert (=> b!191840 (=> (not res!87987) (not e!117948))))

(assert (=> b!191840 (= res!87987 (isDefined!323 (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!191841 () Bool)

(assert (=> b!191841 (= e!117948 (= (_1!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!682 tokens!465)))))

(assert (= (and d!47722 (not res!87986)) b!191840))

(assert (= (and b!191840 res!87987) b!191841))

(assert (=> d!47722 m!196499))

(declare-fun m!198107 () Bool)

(assert (=> d!47722 m!198107))

(assert (=> d!47722 m!196433))

(assert (=> b!191840 m!196417))

(assert (=> b!191840 m!196417))

(declare-fun m!198109 () Bool)

(assert (=> b!191840 m!198109))

(assert (=> b!191840 m!198109))

(declare-fun m!198111 () Bool)

(assert (=> b!191840 m!198111))

(assert (=> b!191841 m!196417))

(assert (=> b!191841 m!196417))

(assert (=> b!191841 m!198109))

(assert (=> b!191841 m!198109))

(declare-fun m!198113 () Bool)

(assert (=> b!191841 m!198113))

(assert (=> b!191841 m!196409))

(assert (=> b!190941 d!47722))

(declare-fun d!47728 () Bool)

(declare-fun lt!65936 () BalanceConc!2024)

(assert (=> d!47728 (= (list!1179 lt!65936) (printList!163 thiss!17480 (list!1182 lt!65440)))))

(assert (=> d!47728 (= lt!65936 (printTailRec!173 thiss!17480 lt!65440 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!47728 (= (print!210 thiss!17480 lt!65440) lt!65936)))

(declare-fun bs!18900 () Bool)

(assert (= bs!18900 d!47728))

(declare-fun m!198115 () Bool)

(assert (=> bs!18900 m!198115))

(assert (=> bs!18900 m!197771))

(assert (=> bs!18900 m!197771))

(declare-fun m!198117 () Bool)

(assert (=> bs!18900 m!198117))

(assert (=> bs!18900 m!196515))

(assert (=> b!190941 d!47728))

(declare-fun e!117949 () Bool)

(declare-fun lt!65937 () tuple2!3302)

(declare-fun b!191842 () Bool)

(assert (=> b!191842 (= e!117949 (= (list!1179 (_2!1867 lt!65937)) (_2!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 lt!65426)))))))

(declare-fun d!47730 () Bool)

(assert (=> d!47730 e!117949))

(declare-fun res!87988 () Bool)

(assert (=> d!47730 (=> (not res!87988) (not e!117949))))

(declare-fun e!117951 () Bool)

(assert (=> d!47730 (= res!87988 e!117951)))

(declare-fun c!36599 () Bool)

(assert (=> d!47730 (= c!36599 (> (size!2563 (_1!1867 lt!65937)) 0))))

(assert (=> d!47730 (= lt!65937 (lexTailRecV2!122 thiss!17480 rules!1920 lt!65426 (BalanceConc!2025 Empty!1008) lt!65426 (BalanceConc!2027 Empty!1009)))))

(assert (=> d!47730 (= (lex!279 thiss!17480 rules!1920 lt!65426) lt!65937)))

(declare-fun b!191843 () Bool)

(declare-fun res!87989 () Bool)

(assert (=> b!191843 (=> (not res!87989) (not e!117949))))

(assert (=> b!191843 (= res!87989 (= (list!1182 (_1!1867 lt!65937)) (_1!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 lt!65426)))))))

(declare-fun b!191844 () Bool)

(declare-fun e!117950 () Bool)

(assert (=> b!191844 (= e!117950 (not (isEmpty!1611 (_1!1867 lt!65937))))))

(declare-fun b!191845 () Bool)

(assert (=> b!191845 (= e!117951 (= (_2!1867 lt!65937) lt!65426))))

(declare-fun b!191846 () Bool)

(assert (=> b!191846 (= e!117951 e!117950)))

(declare-fun res!87990 () Bool)

(assert (=> b!191846 (= res!87990 (< (size!2569 (_2!1867 lt!65937)) (size!2569 lt!65426)))))

(assert (=> b!191846 (=> (not res!87990) (not e!117950))))

(assert (= (and d!47730 c!36599) b!191846))

(assert (= (and d!47730 (not c!36599)) b!191845))

(assert (= (and b!191846 res!87990) b!191844))

(assert (= (and d!47730 res!87988) b!191843))

(assert (= (and b!191843 res!87989) b!191842))

(declare-fun m!198119 () Bool)

(assert (=> d!47730 m!198119))

(declare-fun m!198121 () Bool)

(assert (=> d!47730 m!198121))

(declare-fun m!198123 () Bool)

(assert (=> b!191846 m!198123))

(declare-fun m!198125 () Bool)

(assert (=> b!191846 m!198125))

(declare-fun m!198127 () Bool)

(assert (=> b!191844 m!198127))

(declare-fun m!198129 () Bool)

(assert (=> b!191843 m!198129))

(declare-fun m!198131 () Bool)

(assert (=> b!191843 m!198131))

(assert (=> b!191843 m!198131))

(declare-fun m!198133 () Bool)

(assert (=> b!191843 m!198133))

(declare-fun m!198135 () Bool)

(assert (=> b!191842 m!198135))

(assert (=> b!191842 m!198131))

(assert (=> b!191842 m!198131))

(assert (=> b!191842 m!198133))

(assert (=> b!190941 d!47730))

(declare-fun e!117952 () Bool)

(declare-fun lt!65938 () tuple2!3302)

(declare-fun b!191847 () Bool)

(assert (=> b!191847 (= e!117952 (= (list!1179 (_2!1867 lt!65938)) (_2!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 lt!65411)))))))

(declare-fun d!47732 () Bool)

(assert (=> d!47732 e!117952))

(declare-fun res!87991 () Bool)

(assert (=> d!47732 (=> (not res!87991) (not e!117952))))

(declare-fun e!117954 () Bool)

(assert (=> d!47732 (= res!87991 e!117954)))

(declare-fun c!36600 () Bool)

(assert (=> d!47732 (= c!36600 (> (size!2563 (_1!1867 lt!65938)) 0))))

(assert (=> d!47732 (= lt!65938 (lexTailRecV2!122 thiss!17480 rules!1920 lt!65411 (BalanceConc!2025 Empty!1008) lt!65411 (BalanceConc!2027 Empty!1009)))))

(assert (=> d!47732 (= (lex!279 thiss!17480 rules!1920 lt!65411) lt!65938)))

(declare-fun b!191848 () Bool)

(declare-fun res!87992 () Bool)

(assert (=> b!191848 (=> (not res!87992) (not e!117952))))

(assert (=> b!191848 (= res!87992 (= (list!1182 (_1!1867 lt!65938)) (_1!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 lt!65411)))))))

(declare-fun b!191849 () Bool)

(declare-fun e!117953 () Bool)

(assert (=> b!191849 (= e!117953 (not (isEmpty!1611 (_1!1867 lt!65938))))))

(declare-fun b!191850 () Bool)

(assert (=> b!191850 (= e!117954 (= (_2!1867 lt!65938) lt!65411))))

(declare-fun b!191851 () Bool)

(assert (=> b!191851 (= e!117954 e!117953)))

(declare-fun res!87993 () Bool)

(assert (=> b!191851 (= res!87993 (< (size!2569 (_2!1867 lt!65938)) (size!2569 lt!65411)))))

(assert (=> b!191851 (=> (not res!87993) (not e!117953))))

(assert (= (and d!47732 c!36600) b!191851))

(assert (= (and d!47732 (not c!36600)) b!191850))

(assert (= (and b!191851 res!87993) b!191849))

(assert (= (and d!47732 res!87991) b!191848))

(assert (= (and b!191848 res!87992) b!191847))

(declare-fun m!198137 () Bool)

(assert (=> d!47732 m!198137))

(declare-fun m!198139 () Bool)

(assert (=> d!47732 m!198139))

(declare-fun m!198141 () Bool)

(assert (=> b!191851 m!198141))

(declare-fun m!198143 () Bool)

(assert (=> b!191851 m!198143))

(declare-fun m!198145 () Bool)

(assert (=> b!191849 m!198145))

(declare-fun m!198147 () Bool)

(assert (=> b!191848 m!198147))

(declare-fun m!198149 () Bool)

(assert (=> b!191848 m!198149))

(assert (=> b!191848 m!198149))

(declare-fun m!198151 () Bool)

(assert (=> b!191848 m!198151))

(declare-fun m!198153 () Bool)

(assert (=> b!191847 m!198153))

(assert (=> b!191847 m!198149))

(assert (=> b!191847 m!198149))

(assert (=> b!191847 m!198151))

(assert (=> b!190941 d!47732))

(declare-fun d!47734 () Bool)

(assert (=> d!47734 (= lt!65412 (_2!1869 lt!65428))))

(declare-fun lt!65941 () Unit!3036)

(declare-fun choose!1941 (List!3228 List!3228 List!3228 List!3228 List!3228) Unit!3036)

(assert (=> d!47734 (= lt!65941 (choose!1941 lt!65413 lt!65412 lt!65413 (_2!1869 lt!65428) lt!65430))))

(assert (=> d!47734 (isPrefix!289 lt!65413 lt!65430)))

(assert (=> d!47734 (= (lemmaSamePrefixThenSameSuffix!114 lt!65413 lt!65412 lt!65413 (_2!1869 lt!65428) lt!65430) lt!65941)))

(declare-fun bs!18901 () Bool)

(assert (= bs!18901 d!47734))

(declare-fun m!198155 () Bool)

(assert (=> bs!18901 m!198155))

(declare-fun m!198157 () Bool)

(assert (=> bs!18901 m!198157))

(assert (=> b!190941 d!47734))

(declare-fun d!47736 () Bool)

(assert (=> d!47736 (isPrefix!289 lt!65413 (++!768 lt!65413 lt!65412))))

(declare-fun lt!65944 () Unit!3036)

(declare-fun choose!1942 (List!3228 List!3228) Unit!3036)

(assert (=> d!47736 (= lt!65944 (choose!1942 lt!65413 lt!65412))))

(assert (=> d!47736 (= (lemmaConcatTwoListThenFirstIsPrefix!184 lt!65413 lt!65412) lt!65944)))

(declare-fun bs!18902 () Bool)

(assert (= bs!18902 d!47736))

(assert (=> bs!18902 m!196451))

(assert (=> bs!18902 m!196451))

(declare-fun m!198159 () Bool)

(assert (=> bs!18902 m!198159))

(declare-fun m!198161 () Bool)

(assert (=> bs!18902 m!198161))

(assert (=> b!190941 d!47736))

(declare-fun d!47738 () Bool)

(assert (=> d!47738 (= (inv!4037 (tag!771 (rule!1108 (h!8617 tokens!465)))) (= (mod (str.len (value!21215 (tag!771 (rule!1108 (h!8617 tokens!465))))) 2) 0))))

(assert (=> b!190922 d!47738))

(declare-fun d!47740 () Bool)

(declare-fun res!87996 () Bool)

(declare-fun e!117957 () Bool)

(assert (=> d!47740 (=> (not res!87996) (not e!117957))))

(declare-fun semiInverseModEq!201 (Int Int) Bool)

(assert (=> d!47740 (= res!87996 (semiInverseModEq!201 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465))))))))

(assert (=> d!47740 (= (inv!4040 (transformation!593 (rule!1108 (h!8617 tokens!465)))) e!117957)))

(declare-fun b!191854 () Bool)

(declare-fun equivClasses!184 (Int Int) Bool)

(assert (=> b!191854 (= e!117957 (equivClasses!184 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465))))))))

(assert (= (and d!47740 res!87996) b!191854))

(declare-fun m!198163 () Bool)

(assert (=> d!47740 m!198163))

(declare-fun m!198165 () Bool)

(assert (=> b!191854 m!198165))

(assert (=> b!190922 d!47740))

(declare-fun d!47742 () Bool)

(assert (=> d!47742 (= (get!938 lt!65420) (v!13983 lt!65420))))

(assert (=> b!190943 d!47742))

(declare-fun d!47744 () Bool)

(assert (=> d!47744 (= (isDefined!323 lt!65420) (not (isEmpty!1617 lt!65420)))))

(declare-fun bs!18903 () Bool)

(assert (= bs!18903 d!47744))

(declare-fun m!198167 () Bool)

(assert (=> bs!18903 m!198167))

(assert (=> b!190943 d!47744))

(declare-fun b!191855 () Bool)

(declare-fun e!117958 () Bool)

(declare-fun lt!65949 () Option!473)

(assert (=> b!191855 (= e!117958 (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!65949)))))))

(declare-fun b!191856 () Bool)

(declare-fun res!88002 () Bool)

(assert (=> b!191856 (=> (not res!88002) (not e!117958))))

(assert (=> b!191856 (= res!88002 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949)))) (originalCharacters!636 (_1!1869 (get!938 lt!65949)))))))

(declare-fun b!191857 () Bool)

(declare-fun e!117959 () Option!473)

(declare-fun lt!65947 () Option!473)

(declare-fun lt!65945 () Option!473)

(assert (=> b!191857 (= e!117959 (ite (and ((_ is None!472) lt!65947) ((_ is None!472) lt!65945)) None!472 (ite ((_ is None!472) lt!65945) lt!65947 (ite ((_ is None!472) lt!65947) lt!65945 (ite (>= (size!2562 (_1!1869 (v!13983 lt!65947))) (size!2562 (_1!1869 (v!13983 lt!65945)))) lt!65947 lt!65945)))))))

(declare-fun call!8832 () Option!473)

(assert (=> b!191857 (= lt!65947 call!8832)))

(assert (=> b!191857 (= lt!65945 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) lt!65413))))

(declare-fun b!191859 () Bool)

(declare-fun res!88000 () Bool)

(assert (=> b!191859 (=> (not res!88000) (not e!117958))))

(assert (=> b!191859 (= res!88000 (= (value!21216 (_1!1869 (get!938 lt!65949))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65949)))))))))

(declare-fun bm!8827 () Bool)

(assert (=> bm!8827 (= call!8832 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) lt!65413))))

(declare-fun b!191860 () Bool)

(declare-fun res!87998 () Bool)

(assert (=> b!191860 (=> (not res!87998) (not e!117958))))

(assert (=> b!191860 (= res!87998 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))))))

(declare-fun b!191861 () Bool)

(declare-fun res!87997 () Bool)

(assert (=> b!191861 (=> (not res!87997) (not e!117958))))

(assert (=> b!191861 (= res!87997 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949)))) (_2!1869 (get!938 lt!65949))) lt!65413))))

(declare-fun d!47746 () Bool)

(declare-fun e!117960 () Bool)

(assert (=> d!47746 e!117960))

(declare-fun res!88001 () Bool)

(assert (=> d!47746 (=> res!88001 e!117960)))

(assert (=> d!47746 (= res!88001 (isEmpty!1617 lt!65949))))

(assert (=> d!47746 (= lt!65949 e!117959)))

(declare-fun c!36601 () Bool)

(assert (=> d!47746 (= c!36601 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!65946 () Unit!3036)

(declare-fun lt!65948 () Unit!3036)

(assert (=> d!47746 (= lt!65946 lt!65948)))

(assert (=> d!47746 (isPrefix!289 lt!65413 lt!65413)))

(assert (=> d!47746 (= lt!65948 (lemmaIsPrefixRefl!159 lt!65413 lt!65413))))

(assert (=> d!47746 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!47746 (= (maxPrefix!209 thiss!17480 rules!1920 lt!65413) lt!65949)))

(declare-fun b!191858 () Bool)

(assert (=> b!191858 (= e!117960 e!117958)))

(declare-fun res!87999 () Bool)

(assert (=> b!191858 (=> (not res!87999) (not e!117958))))

(assert (=> b!191858 (= res!87999 (isDefined!323 lt!65949))))

(declare-fun b!191862 () Bool)

(assert (=> b!191862 (= e!117959 call!8832)))

(declare-fun b!191863 () Bool)

(declare-fun res!88003 () Bool)

(assert (=> b!191863 (=> (not res!88003) (not e!117958))))

(assert (=> b!191863 (= res!88003 (< (size!2566 (_2!1869 (get!938 lt!65949))) (size!2566 lt!65413)))))

(assert (= (and d!47746 c!36601) b!191862))

(assert (= (and d!47746 (not c!36601)) b!191857))

(assert (= (or b!191862 b!191857) bm!8827))

(assert (= (and d!47746 (not res!88001)) b!191858))

(assert (= (and b!191858 res!87999) b!191856))

(assert (= (and b!191856 res!88002) b!191863))

(assert (= (and b!191863 res!88003) b!191861))

(assert (= (and b!191861 res!87997) b!191859))

(assert (= (and b!191859 res!88000) b!191860))

(assert (= (and b!191860 res!87998) b!191855))

(declare-fun m!198169 () Bool)

(assert (=> b!191861 m!198169))

(declare-fun m!198171 () Bool)

(assert (=> b!191861 m!198171))

(assert (=> b!191861 m!198171))

(declare-fun m!198173 () Bool)

(assert (=> b!191861 m!198173))

(assert (=> b!191861 m!198173))

(declare-fun m!198175 () Bool)

(assert (=> b!191861 m!198175))

(declare-fun m!198177 () Bool)

(assert (=> bm!8827 m!198177))

(declare-fun m!198179 () Bool)

(assert (=> b!191858 m!198179))

(assert (=> b!191856 m!198169))

(assert (=> b!191856 m!198171))

(assert (=> b!191856 m!198171))

(assert (=> b!191856 m!198173))

(assert (=> b!191855 m!198169))

(declare-fun m!198181 () Bool)

(assert (=> b!191855 m!198181))

(assert (=> b!191860 m!198169))

(assert (=> b!191860 m!198171))

(assert (=> b!191860 m!198171))

(assert (=> b!191860 m!198173))

(assert (=> b!191860 m!198173))

(declare-fun m!198183 () Bool)

(assert (=> b!191860 m!198183))

(assert (=> b!191859 m!198169))

(declare-fun m!198185 () Bool)

(assert (=> b!191859 m!198185))

(assert (=> b!191859 m!198185))

(declare-fun m!198187 () Bool)

(assert (=> b!191859 m!198187))

(declare-fun m!198189 () Bool)

(assert (=> d!47746 m!198189))

(declare-fun m!198191 () Bool)

(assert (=> d!47746 m!198191))

(declare-fun m!198193 () Bool)

(assert (=> d!47746 m!198193))

(assert (=> d!47746 m!196735))

(assert (=> b!191863 m!198169))

(declare-fun m!198195 () Bool)

(assert (=> b!191863 m!198195))

(assert (=> b!191863 m!197161))

(declare-fun m!198197 () Bool)

(assert (=> b!191857 m!198197))

(assert (=> b!190943 d!47746))

(declare-fun d!47748 () Bool)

(assert (=> d!47748 (= (isEmpty!1610 rules!1920) ((_ is Nil!3219) rules!1920))))

(assert (=> b!190921 d!47748))

(declare-fun d!47750 () Bool)

(declare-fun res!88004 () Bool)

(declare-fun e!117961 () Bool)

(assert (=> d!47750 (=> res!88004 e!117961)))

(assert (=> d!47750 (= res!88004 ((_ is Nil!3220) tokens!465))))

(assert (=> d!47750 (= (forall!675 tokens!465 lambda!5839) e!117961)))

(declare-fun b!191864 () Bool)

(declare-fun e!117962 () Bool)

(assert (=> b!191864 (= e!117961 e!117962)))

(declare-fun res!88005 () Bool)

(assert (=> b!191864 (=> (not res!88005) (not e!117962))))

(assert (=> b!191864 (= res!88005 (dynLambda!1375 lambda!5839 (h!8617 tokens!465)))))

(declare-fun b!191865 () Bool)

(assert (=> b!191865 (= e!117962 (forall!675 (t!28932 tokens!465) lambda!5839))))

(assert (= (and d!47750 (not res!88004)) b!191864))

(assert (= (and b!191864 res!88005) b!191865))

(declare-fun b_lambda!4647 () Bool)

(assert (=> (not b_lambda!4647) (not b!191864)))

(declare-fun m!198199 () Bool)

(assert (=> b!191864 m!198199))

(declare-fun m!198201 () Bool)

(assert (=> b!191865 m!198201))

(assert (=> b!190918 d!47750))

(declare-fun d!47752 () Bool)

(declare-fun c!36603 () Bool)

(assert (=> d!47752 (= c!36603 ((_ is IntegerValue!1845) (value!21216 (h!8617 tokens!465))))))

(declare-fun e!117963 () Bool)

(assert (=> d!47752 (= (inv!21 (value!21216 (h!8617 tokens!465))) e!117963)))

(declare-fun b!191866 () Bool)

(declare-fun e!117964 () Bool)

(assert (=> b!191866 (= e!117964 (inv!15 (value!21216 (h!8617 tokens!465))))))

(declare-fun b!191867 () Bool)

(declare-fun e!117965 () Bool)

(assert (=> b!191867 (= e!117965 (inv!17 (value!21216 (h!8617 tokens!465))))))

(declare-fun b!191868 () Bool)

(assert (=> b!191868 (= e!117963 (inv!16 (value!21216 (h!8617 tokens!465))))))

(declare-fun b!191869 () Bool)

(declare-fun res!88006 () Bool)

(assert (=> b!191869 (=> res!88006 e!117964)))

(assert (=> b!191869 (= res!88006 (not ((_ is IntegerValue!1847) (value!21216 (h!8617 tokens!465)))))))

(assert (=> b!191869 (= e!117965 e!117964)))

(declare-fun b!191870 () Bool)

(assert (=> b!191870 (= e!117963 e!117965)))

(declare-fun c!36602 () Bool)

(assert (=> b!191870 (= c!36602 ((_ is IntegerValue!1846) (value!21216 (h!8617 tokens!465))))))

(assert (= (and d!47752 c!36603) b!191868))

(assert (= (and d!47752 (not c!36603)) b!191870))

(assert (= (and b!191870 c!36602) b!191867))

(assert (= (and b!191870 (not c!36602)) b!191869))

(assert (= (and b!191869 (not res!88006)) b!191866))

(declare-fun m!198203 () Bool)

(assert (=> b!191866 m!198203))

(declare-fun m!198205 () Bool)

(assert (=> b!191867 m!198205))

(declare-fun m!198207 () Bool)

(assert (=> b!191868 m!198207))

(assert (=> b!190917 d!47752))

(declare-fun d!47754 () Bool)

(assert (=> d!47754 (= (inv!4037 (tag!771 (rule!1108 separatorToken!170))) (= (mod (str.len (value!21215 (tag!771 (rule!1108 separatorToken!170)))) 2) 0))))

(assert (=> b!190919 d!47754))

(declare-fun d!47756 () Bool)

(declare-fun res!88007 () Bool)

(declare-fun e!117966 () Bool)

(assert (=> d!47756 (=> (not res!88007) (not e!117966))))

(assert (=> d!47756 (= res!88007 (semiInverseModEq!201 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 separatorToken!170)))))))

(assert (=> d!47756 (= (inv!4040 (transformation!593 (rule!1108 separatorToken!170))) e!117966)))

(declare-fun b!191871 () Bool)

(assert (=> b!191871 (= e!117966 (equivClasses!184 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 separatorToken!170)))))))

(assert (= (and d!47756 res!88007) b!191871))

(declare-fun m!198209 () Bool)

(assert (=> d!47756 m!198209))

(declare-fun m!198211 () Bool)

(assert (=> b!191871 m!198211))

(assert (=> b!190919 d!47756))

(declare-fun d!47758 () Bool)

(declare-fun lt!65950 () Bool)

(assert (=> d!47758 (= lt!65950 (isEmpty!1609 (list!1179 (_2!1867 lt!65406))))))

(assert (=> d!47758 (= lt!65950 (isEmpty!1616 (c!36425 (_2!1867 lt!65406))))))

(assert (=> d!47758 (= (isEmpty!1608 (_2!1867 lt!65406)) lt!65950)))

(declare-fun bs!18904 () Bool)

(assert (= bs!18904 d!47758))

(declare-fun m!198213 () Bool)

(assert (=> bs!18904 m!198213))

(assert (=> bs!18904 m!198213))

(declare-fun m!198215 () Bool)

(assert (=> bs!18904 m!198215))

(declare-fun m!198217 () Bool)

(assert (=> bs!18904 m!198217))

(assert (=> b!190940 d!47758))

(declare-fun d!47760 () Bool)

(assert (=> d!47760 (= (inv!4037 (tag!771 (h!8616 rules!1920))) (= (mod (str.len (value!21215 (tag!771 (h!8616 rules!1920)))) 2) 0))))

(assert (=> b!190915 d!47760))

(declare-fun d!47762 () Bool)

(declare-fun res!88008 () Bool)

(declare-fun e!117967 () Bool)

(assert (=> d!47762 (=> (not res!88008) (not e!117967))))

(assert (=> d!47762 (= res!88008 (semiInverseModEq!201 (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toValue!1264 (transformation!593 (h!8616 rules!1920)))))))

(assert (=> d!47762 (= (inv!4040 (transformation!593 (h!8616 rules!1920))) e!117967)))

(declare-fun b!191872 () Bool)

(assert (=> b!191872 (= e!117967 (equivClasses!184 (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toValue!1264 (transformation!593 (h!8616 rules!1920)))))))

(assert (= (and d!47762 res!88008) b!191872))

(declare-fun m!198219 () Bool)

(assert (=> d!47762 m!198219))

(declare-fun m!198221 () Bool)

(assert (=> b!191872 m!198221))

(assert (=> b!190915 d!47762))

(declare-fun b!191877 () Bool)

(declare-fun e!117970 () Bool)

(declare-fun tp_is_empty!1699 () Bool)

(declare-fun tp!88848 () Bool)

(assert (=> b!191877 (= e!117970 (and tp_is_empty!1699 tp!88848))))

(assert (=> b!190923 (= tp!88770 e!117970)))

(assert (= (and b!190923 ((_ is Cons!3218) (originalCharacters!636 separatorToken!170))) b!191877))

(declare-fun b!191891 () Bool)

(declare-fun b_free!7661 () Bool)

(declare-fun b_next!7661 () Bool)

(assert (=> b!191891 (= b_free!7661 (not b_next!7661))))

(declare-fun tp!88861 () Bool)

(declare-fun b_and!13313 () Bool)

(assert (=> b!191891 (= tp!88861 b_and!13313)))

(declare-fun b_free!7663 () Bool)

(declare-fun b_next!7663 () Bool)

(assert (=> b!191891 (= b_free!7663 (not b_next!7663))))

(declare-fun t!28993 () Bool)

(declare-fun tb!7809 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) t!28993) tb!7809))

(declare-fun result!10744 () Bool)

(assert (= result!10744 result!10710))

(assert (=> b!191123 t!28993))

(declare-fun tb!7811 () Bool)

(declare-fun t!28995 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170)))) t!28995) tb!7811))

(declare-fun result!10746 () Bool)

(assert (= result!10746 result!10718))

(assert (=> d!47500 t!28995))

(assert (=> d!47514 t!28993))

(assert (=> b!191630 t!28995))

(declare-fun tp!88860 () Bool)

(declare-fun b_and!13315 () Bool)

(assert (=> b!191891 (= tp!88860 (and (=> t!28993 result!10744) (=> t!28995 result!10746) b_and!13315))))

(declare-fun e!117987 () Bool)

(assert (=> b!191891 (= e!117987 (and tp!88861 tp!88860))))

(declare-fun tp!88863 () Bool)

(declare-fun e!117985 () Bool)

(declare-fun b!191889 () Bool)

(declare-fun e!117986 () Bool)

(assert (=> b!191889 (= e!117985 (and (inv!21 (value!21216 (h!8617 (t!28932 tokens!465)))) e!117986 tp!88863))))

(declare-fun b!191890 () Bool)

(declare-fun tp!88859 () Bool)

(assert (=> b!191890 (= e!117986 (and tp!88859 (inv!4037 (tag!771 (rule!1108 (h!8617 (t!28932 tokens!465))))) (inv!4040 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) e!117987))))

(declare-fun e!117983 () Bool)

(assert (=> b!190935 (= tp!88776 e!117983)))

(declare-fun tp!88862 () Bool)

(declare-fun b!191888 () Bool)

(assert (=> b!191888 (= e!117983 (and (inv!4041 (h!8617 (t!28932 tokens!465))) e!117985 tp!88862))))

(assert (= b!191890 b!191891))

(assert (= b!191889 b!191890))

(assert (= b!191888 b!191889))

(assert (= (and b!190935 ((_ is Cons!3220) (t!28932 tokens!465))) b!191888))

(declare-fun m!198223 () Bool)

(assert (=> b!191889 m!198223))

(declare-fun m!198225 () Bool)

(assert (=> b!191890 m!198225))

(declare-fun m!198227 () Bool)

(assert (=> b!191890 m!198227))

(declare-fun m!198229 () Bool)

(assert (=> b!191888 m!198229))

(declare-fun e!117991 () Bool)

(assert (=> b!190922 (= tp!88774 e!117991)))

(declare-fun b!191903 () Bool)

(declare-fun tp!88875 () Bool)

(declare-fun tp!88878 () Bool)

(assert (=> b!191903 (= e!117991 (and tp!88875 tp!88878))))

(declare-fun b!191905 () Bool)

(declare-fun tp!88876 () Bool)

(declare-fun tp!88874 () Bool)

(assert (=> b!191905 (= e!117991 (and tp!88876 tp!88874))))

(declare-fun b!191904 () Bool)

(declare-fun tp!88877 () Bool)

(assert (=> b!191904 (= e!117991 tp!88877)))

(declare-fun b!191902 () Bool)

(assert (=> b!191902 (= e!117991 tp_is_empty!1699)))

(assert (= (and b!190922 ((_ is ElementMatch!817) (regex!593 (rule!1108 (h!8617 tokens!465))))) b!191902))

(assert (= (and b!190922 ((_ is Concat!1433) (regex!593 (rule!1108 (h!8617 tokens!465))))) b!191903))

(assert (= (and b!190922 ((_ is Star!817) (regex!593 (rule!1108 (h!8617 tokens!465))))) b!191904))

(assert (= (and b!190922 ((_ is Union!817) (regex!593 (rule!1108 (h!8617 tokens!465))))) b!191905))

(declare-fun b!191906 () Bool)

(declare-fun e!117992 () Bool)

(declare-fun tp!88879 () Bool)

(assert (=> b!191906 (= e!117992 (and tp_is_empty!1699 tp!88879))))

(assert (=> b!190917 (= tp!88773 e!117992)))

(assert (= (and b!190917 ((_ is Cons!3218) (originalCharacters!636 (h!8617 tokens!465)))) b!191906))

(declare-fun e!117993 () Bool)

(assert (=> b!190919 (= tp!88778 e!117993)))

(declare-fun b!191908 () Bool)

(declare-fun tp!88881 () Bool)

(declare-fun tp!88884 () Bool)

(assert (=> b!191908 (= e!117993 (and tp!88881 tp!88884))))

(declare-fun b!191910 () Bool)

(declare-fun tp!88882 () Bool)

(declare-fun tp!88880 () Bool)

(assert (=> b!191910 (= e!117993 (and tp!88882 tp!88880))))

(declare-fun b!191909 () Bool)

(declare-fun tp!88883 () Bool)

(assert (=> b!191909 (= e!117993 tp!88883)))

(declare-fun b!191907 () Bool)

(assert (=> b!191907 (= e!117993 tp_is_empty!1699)))

(assert (= (and b!190919 ((_ is ElementMatch!817) (regex!593 (rule!1108 separatorToken!170)))) b!191907))

(assert (= (and b!190919 ((_ is Concat!1433) (regex!593 (rule!1108 separatorToken!170)))) b!191908))

(assert (= (and b!190919 ((_ is Star!817) (regex!593 (rule!1108 separatorToken!170)))) b!191909))

(assert (= (and b!190919 ((_ is Union!817) (regex!593 (rule!1108 separatorToken!170)))) b!191910))

(declare-fun b!191921 () Bool)

(declare-fun b_free!7665 () Bool)

(declare-fun b_next!7665 () Bool)

(assert (=> b!191921 (= b_free!7665 (not b_next!7665))))

(declare-fun tp!88895 () Bool)

(declare-fun b_and!13317 () Bool)

(assert (=> b!191921 (= tp!88895 b_and!13317)))

(declare-fun b_free!7667 () Bool)

(declare-fun b_next!7667 () Bool)

(assert (=> b!191921 (= b_free!7667 (not b_next!7667))))

(declare-fun t!28997 () Bool)

(declare-fun tb!7813 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) t!28997) tb!7813))

(declare-fun result!10752 () Bool)

(assert (= result!10752 result!10710))

(assert (=> b!191123 t!28997))

(declare-fun t!28999 () Bool)

(declare-fun tb!7815 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170)))) t!28999) tb!7815))

(declare-fun result!10754 () Bool)

(assert (= result!10754 result!10718))

(assert (=> d!47500 t!28999))

(assert (=> d!47514 t!28997))

(assert (=> b!191630 t!28999))

(declare-fun tp!88894 () Bool)

(declare-fun b_and!13319 () Bool)

(assert (=> b!191921 (= tp!88894 (and (=> t!28997 result!10752) (=> t!28999 result!10754) b_and!13319))))

(declare-fun e!118004 () Bool)

(assert (=> b!191921 (= e!118004 (and tp!88895 tp!88894))))

(declare-fun tp!88893 () Bool)

(declare-fun e!118002 () Bool)

(declare-fun b!191920 () Bool)

(assert (=> b!191920 (= e!118002 (and tp!88893 (inv!4037 (tag!771 (h!8616 (t!28931 rules!1920)))) (inv!4040 (transformation!593 (h!8616 (t!28931 rules!1920)))) e!118004))))

(declare-fun b!191919 () Bool)

(declare-fun e!118003 () Bool)

(declare-fun tp!88896 () Bool)

(assert (=> b!191919 (= e!118003 (and e!118002 tp!88896))))

(assert (=> b!190929 (= tp!88777 e!118003)))

(assert (= b!191920 b!191921))

(assert (= b!191919 b!191920))

(assert (= (and b!190929 ((_ is Cons!3219) (t!28931 rules!1920))) b!191919))

(declare-fun m!198231 () Bool)

(assert (=> b!191920 m!198231))

(declare-fun m!198233 () Bool)

(assert (=> b!191920 m!198233))

(declare-fun e!118006 () Bool)

(assert (=> b!190915 (= tp!88779 e!118006)))

(declare-fun b!191923 () Bool)

(declare-fun tp!88898 () Bool)

(declare-fun tp!88901 () Bool)

(assert (=> b!191923 (= e!118006 (and tp!88898 tp!88901))))

(declare-fun b!191925 () Bool)

(declare-fun tp!88899 () Bool)

(declare-fun tp!88897 () Bool)

(assert (=> b!191925 (= e!118006 (and tp!88899 tp!88897))))

(declare-fun b!191924 () Bool)

(declare-fun tp!88900 () Bool)

(assert (=> b!191924 (= e!118006 tp!88900)))

(declare-fun b!191922 () Bool)

(assert (=> b!191922 (= e!118006 tp_is_empty!1699)))

(assert (= (and b!190915 ((_ is ElementMatch!817) (regex!593 (h!8616 rules!1920)))) b!191922))

(assert (= (and b!190915 ((_ is Concat!1433) (regex!593 (h!8616 rules!1920)))) b!191923))

(assert (= (and b!190915 ((_ is Star!817) (regex!593 (h!8616 rules!1920)))) b!191924))

(assert (= (and b!190915 ((_ is Union!817) (regex!593 (h!8616 rules!1920)))) b!191925))

(declare-fun b!191928 () Bool)

(declare-fun e!118009 () Bool)

(assert (=> b!191928 (= e!118009 true)))

(declare-fun b!191927 () Bool)

(declare-fun e!118008 () Bool)

(assert (=> b!191927 (= e!118008 e!118009)))

(declare-fun b!191926 () Bool)

(declare-fun e!118007 () Bool)

(assert (=> b!191926 (= e!118007 e!118008)))

(assert (=> b!190956 e!118007))

(assert (= b!191927 b!191928))

(assert (= b!191926 b!191927))

(assert (= (and b!190956 ((_ is Cons!3219) (t!28931 rules!1920))) b!191926))

(assert (=> b!191928 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5840))))

(assert (=> b!191928 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5840))))

(declare-fun b_lambda!4649 () Bool)

(assert (= b_lambda!4625 (or (and b!190916 b_free!7643) (and b!190906 b_free!7651 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))))) (and b!191921 b_free!7667 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))))) (and b!190938 b_free!7647 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))))) (and b!191891 b_free!7663 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))))) b_lambda!4649)))

(declare-fun b_lambda!4651 () Bool)

(assert (= b_lambda!4623 (or b!190910 b_lambda!4651)))

(declare-fun bs!18905 () Bool)

(declare-fun d!47764 () Bool)

(assert (= bs!18905 (and d!47764 b!190910)))

(assert (=> bs!18905 (= (dynLambda!1375 lambda!5840 (h!8617 tokens!465)) (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (h!8617 tokens!465)))))

(assert (=> bs!18905 m!196573))

(assert (=> d!47576 d!47764))

(declare-fun b_lambda!4653 () Bool)

(assert (= b_lambda!4631 (or b!190910 b_lambda!4653)))

(assert (=> b!191823 d!47764))

(declare-fun b_lambda!4655 () Bool)

(assert (= b_lambda!4617 (or (and b!190916 b_free!7643 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) (and b!191891 b_free!7663 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) (and b!191921 b_free!7667 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) (and b!190906 b_free!7651) (and b!190938 b_free!7647 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) b_lambda!4655)))

(declare-fun b_lambda!4657 () Bool)

(assert (= b_lambda!4647 (or b!190918 b_lambda!4657)))

(declare-fun bs!18906 () Bool)

(declare-fun d!47766 () Bool)

(assert (= bs!18906 (and d!47766 b!190918)))

(assert (=> bs!18906 (= (dynLambda!1375 lambda!5839 (h!8617 tokens!465)) (not (isSeparator!593 (rule!1108 (h!8617 tokens!465)))))))

(assert (=> b!191864 d!47766))

(declare-fun b_lambda!4659 () Bool)

(assert (= b_lambda!4615 (or (and b!190916 b_free!7643) (and b!190906 b_free!7651 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))))) (and b!191921 b_free!7667 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))))) (and b!190938 b_free!7647 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))))) (and b!191891 b_free!7663 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))))) b_lambda!4659)))

(declare-fun b_lambda!4661 () Bool)

(assert (= b_lambda!4611 (or (and b!190916 b_free!7643 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) (and b!191891 b_free!7663 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) (and b!191921 b_free!7667 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) (and b!190906 b_free!7651) (and b!190938 b_free!7647 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) b_lambda!4661)))

(check-sat (not b!191630) (not b!191842) (not b!191650) (not bm!8746) (not b!191919) (not b!191589) (not b!191651) (not b!191855) (not d!47670) (not b!191715) (not b!191566) (not b!191597) (not b!191318) (not b!191851) (not d!47606) (not b!191558) (not b!191057) (not d!47702) (not b_lambda!4661) (not b!191472) (not b!191803) (not bm!8794) (not b!191061) (not b!191275) (not b!191585) (not b_next!7665) (not b!191865) (not b!191054) (not b_next!7643) (not b!191370) (not b!191489) (not d!47610) (not b!191863) (not d!47630) (not b!191302) (not b!191687) b_and!13317 (not b!191889) (not d!47560) (not d!47730) (not b!191570) (not b!191625) (not d!47758) tp_is_empty!1699 (not bm!8729) (not b!191259) (not b!191484) (not b!191590) (not bm!8763) (not b!191740) (not b!191599) (not b!191843) (not b!191498) (not b!191920) (not b!191871) (not d!47518) (not d!47574) (not b!191608) (not bm!8748) (not b!191866) (not d!47762) b_and!13245 (not d!47456) (not b!191923) (not b!191605) (not d!47454) (not b!191561) (not b!191432) (not bm!8774) (not b!191380) (not b!191631) (not d!47706) (not b!191649) (not b!191861) (not b!191844) (not bm!8816) (not b!191586) (not d!47646) (not b!191652) (not b!191058) (not b!191571) (not b_lambda!4651) (not b!191713) (not bm!8795) (not d!47656) (not b!191626) (not d!47740) (not bm!8800) (not b_next!7645) (not b!191513) (not b!191261) (not b!191265) (not b!191643) (not b!191368) (not b!191868) (not b!191499) (not b!191690) (not b!191471) (not b!191576) (not bm!8761) (not d!47616) (not tb!7795) (not b!191854) (not b!191437) (not d!47608) (not b!191908) (not bm!8792) (not b!191689) (not b!191055) (not d!47636) (not b!191804) (not b!191909) (not b_lambda!4657) (not b!191859) (not d!47582) (not b_next!7663) (not d!47576) (not d!47696) (not b_lambda!4659) (not d!47520) (not b!191808) (not b!191569) (not b!191654) (not b!191516) (not b!191514) (not d!47644) (not b!191644) (not d!47704) (not b!191257) (not b!191846) (not b_next!7647) (not b!191841) (not b!191480) (not d!47558) (not d!47734) (not b!191129) (not d!47632) (not d!47422) (not d!47666) (not b!191627) (not b!191856) (not b!191430) (not d!47622) (not d!47536) (not b!191375) (not d!47722) (not bm!8796) (not b!191512) (not b!191110) (not b!191888) (not d!47692) (not b_next!7667) (not d!47612) (not b!191435) (not b_next!7641) (not b!191926) (not b!191840) (not d!47512) (not b!191637) (not b!191112) (not b!191910) (not d!47584) (not d!47538) (not b!191609) (not b!191612) b_and!13313 (not b!191638) (not b!191556) (not b!191824) (not b!191693) (not b!191303) (not b!191591) (not d!47708) (not bm!8771) (not b_lambda!4653) (not b!191867) (not d!47688) (not d!47522) (not b!191653) (not b!191890) (not b!191905) (not b!191849) (not b!191872) (not b!191906) (not b!191692) (not b!191607) (not d!47664) (not b_next!7649) (not b!191312) (not b_next!7651) b_and!13319 (not d!47652) (not b!191593) (not b!191656) (not b!191695) (not d!47580) (not b!191587) (not b!191469) (not b!191925) (not b!191434) (not b!191738) (not b!191371) (not b!191604) (not bm!8790) (not d!47668) (not bm!8749) (not d!47578) (not b!191924) (not b!191262) (not b!191372) (not d!47436) (not b!191477) (not b!191440) (not b!191848) (not b!191379) (not b!191903) (not b!191431) (not d!47416) (not bs!18905) (not b!191313) (not b!191568) (not b!191053) (not b!191847) (not d!47634) (not b!191485) (not b!191857) (not d!47650) (not b!191688) (not bm!8798) b_and!13289 (not tb!7789) (not b!191124) (not d!47620) (not d!47756) (not d!47626) b_and!13287 (not d!47614) (not d!47728) (not b!191111) (not d!47660) (not b_lambda!4655) (not b!191877) (not d!47562) (not b!191579) b_and!13253 (not b!191291) (not b!191470) b_and!13291 (not d!47642) (not d!47736) b_and!13249 (not b!191258) (not d!47514) (not b!191714) (not b!191433) (not d!47732) (not b!191584) (not b!191860) (not bm!8827) (not b!191367) (not d!47744) (not d!47500) b_and!13315 (not d!47506) (not b!191123) (not b!191594) (not b!191056) (not b!191317) (not b_lambda!4649) (not b!191904) (not bm!8765) (not b!191858) (not d!47746) (not b!191720) (not b_next!7661) (not d!47516) (not b!191737) (not d!47410) (not b!191059) (not b!191691))
(check-sat (not b_next!7665) (not b_next!7643) b_and!13317 b_and!13245 (not b_next!7645) (not b_next!7663) (not b_next!7647) (not b_next!7667) (not b_next!7641) b_and!13313 b_and!13249 b_and!13315 (not b_next!7661) (not b_next!7651) b_and!13319 (not b_next!7649) b_and!13289 b_and!13287 b_and!13253 b_and!13291)
(get-model)

(declare-fun b!192329 () Bool)

(declare-fun res!88193 () Bool)

(declare-fun e!118246 () Bool)

(assert (=> b!192329 (=> (not res!88193) (not e!118246))))

(declare-fun height!101 (Conc!1008) Int)

(declare-fun ++!771 (Conc!1008 Conc!1008) Conc!1008)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!192329 (= res!88193 (<= (height!101 (++!771 (c!36425 e!117773) (c!36425 (ite c!36554 lt!65802 call!8796)))) (+ (max!0 (height!101 (c!36425 e!117773)) (height!101 (c!36425 (ite c!36554 lt!65802 call!8796)))) 1)))))

(declare-fun lt!66101 () BalanceConc!2024)

(declare-fun b!192331 () Bool)

(assert (=> b!192331 (= e!118246 (= (list!1179 lt!66101) (++!768 (list!1179 e!117773) (list!1179 (ite c!36554 lt!65802 call!8796)))))))

(declare-fun b!192330 () Bool)

(declare-fun res!88194 () Bool)

(assert (=> b!192330 (=> (not res!88194) (not e!118246))))

(assert (=> b!192330 (= res!88194 (>= (height!101 (++!771 (c!36425 e!117773) (c!36425 (ite c!36554 lt!65802 call!8796)))) (max!0 (height!101 (c!36425 e!117773)) (height!101 (c!36425 (ite c!36554 lt!65802 call!8796))))))))

(declare-fun d!47998 () Bool)

(assert (=> d!47998 e!118246))

(declare-fun res!88191 () Bool)

(assert (=> d!47998 (=> (not res!88191) (not e!118246))))

(declare-fun appendAssocInst!34 (Conc!1008 Conc!1008) Bool)

(assert (=> d!47998 (= res!88191 (appendAssocInst!34 (c!36425 e!117773) (c!36425 (ite c!36554 lt!65802 call!8796))))))

(assert (=> d!47998 (= lt!66101 (BalanceConc!2025 (++!771 (c!36425 e!117773) (c!36425 (ite c!36554 lt!65802 call!8796)))))))

(assert (=> d!47998 (= (++!770 e!117773 (ite c!36554 lt!65802 call!8796)) lt!66101)))

(declare-fun b!192328 () Bool)

(declare-fun res!88192 () Bool)

(assert (=> b!192328 (=> (not res!88192) (not e!118246))))

(declare-fun isBalanced!266 (Conc!1008) Bool)

(assert (=> b!192328 (= res!88192 (isBalanced!266 (++!771 (c!36425 e!117773) (c!36425 (ite c!36554 lt!65802 call!8796)))))))

(assert (= (and d!47998 res!88191) b!192328))

(assert (= (and b!192328 res!88192) b!192329))

(assert (= (and b!192329 res!88193) b!192330))

(assert (= (and b!192330 res!88194) b!192331))

(declare-fun m!198933 () Bool)

(assert (=> b!192331 m!198933))

(declare-fun m!198935 () Bool)

(assert (=> b!192331 m!198935))

(declare-fun m!198937 () Bool)

(assert (=> b!192331 m!198937))

(assert (=> b!192331 m!198935))

(assert (=> b!192331 m!198937))

(declare-fun m!198939 () Bool)

(assert (=> b!192331 m!198939))

(declare-fun m!198941 () Bool)

(assert (=> b!192328 m!198941))

(assert (=> b!192328 m!198941))

(declare-fun m!198943 () Bool)

(assert (=> b!192328 m!198943))

(declare-fun m!198945 () Bool)

(assert (=> b!192330 m!198945))

(declare-fun m!198947 () Bool)

(assert (=> b!192330 m!198947))

(declare-fun m!198949 () Bool)

(assert (=> b!192330 m!198949))

(assert (=> b!192330 m!198941))

(declare-fun m!198951 () Bool)

(assert (=> b!192330 m!198951))

(assert (=> b!192330 m!198945))

(assert (=> b!192330 m!198941))

(assert (=> b!192330 m!198947))

(assert (=> b!192329 m!198945))

(assert (=> b!192329 m!198947))

(assert (=> b!192329 m!198949))

(assert (=> b!192329 m!198941))

(assert (=> b!192329 m!198951))

(assert (=> b!192329 m!198945))

(assert (=> b!192329 m!198941))

(assert (=> b!192329 m!198947))

(declare-fun m!198953 () Bool)

(assert (=> d!47998 m!198953))

(assert (=> d!47998 m!198941))

(assert (=> bm!8795 d!47998))

(declare-fun b!192334 () Bool)

(declare-fun e!118247 () Bool)

(assert (=> b!192334 (= e!118247 (isPrefix!289 (tail!386 (tail!386 lt!65413)) (tail!386 (tail!386 lt!65405))))))

(declare-fun b!192332 () Bool)

(declare-fun e!118249 () Bool)

(assert (=> b!192332 (= e!118249 e!118247)))

(declare-fun res!88198 () Bool)

(assert (=> b!192332 (=> (not res!88198) (not e!118247))))

(assert (=> b!192332 (= res!88198 (not ((_ is Nil!3218) (tail!386 lt!65405))))))

(declare-fun b!192335 () Bool)

(declare-fun e!118248 () Bool)

(assert (=> b!192335 (= e!118248 (>= (size!2566 (tail!386 lt!65405)) (size!2566 (tail!386 lt!65413))))))

(declare-fun b!192333 () Bool)

(declare-fun res!88197 () Bool)

(assert (=> b!192333 (=> (not res!88197) (not e!118247))))

(assert (=> b!192333 (= res!88197 (= (head!684 (tail!386 lt!65413)) (head!684 (tail!386 lt!65405))))))

(declare-fun d!48008 () Bool)

(assert (=> d!48008 e!118248))

(declare-fun res!88196 () Bool)

(assert (=> d!48008 (=> res!88196 e!118248)))

(declare-fun lt!66102 () Bool)

(assert (=> d!48008 (= res!88196 (not lt!66102))))

(assert (=> d!48008 (= lt!66102 e!118249)))

(declare-fun res!88195 () Bool)

(assert (=> d!48008 (=> res!88195 e!118249)))

(assert (=> d!48008 (= res!88195 ((_ is Nil!3218) (tail!386 lt!65413)))))

(assert (=> d!48008 (= (isPrefix!289 (tail!386 lt!65413) (tail!386 lt!65405)) lt!66102)))

(assert (= (and d!48008 (not res!88195)) b!192332))

(assert (= (and b!192332 res!88198) b!192333))

(assert (= (and b!192333 res!88197) b!192334))

(assert (= (and d!48008 (not res!88196)) b!192335))

(assert (=> b!192334 m!197423))

(declare-fun m!198955 () Bool)

(assert (=> b!192334 m!198955))

(assert (=> b!192334 m!197913))

(declare-fun m!198957 () Bool)

(assert (=> b!192334 m!198957))

(assert (=> b!192334 m!198955))

(assert (=> b!192334 m!198957))

(declare-fun m!198959 () Bool)

(assert (=> b!192334 m!198959))

(assert (=> b!192335 m!197913))

(declare-fun m!198961 () Bool)

(assert (=> b!192335 m!198961))

(assert (=> b!192335 m!197423))

(declare-fun m!198963 () Bool)

(assert (=> b!192335 m!198963))

(assert (=> b!192333 m!197423))

(declare-fun m!198965 () Bool)

(assert (=> b!192333 m!198965))

(assert (=> b!192333 m!197913))

(declare-fun m!198967 () Bool)

(assert (=> b!192333 m!198967))

(assert (=> b!191714 d!48008))

(declare-fun d!48010 () Bool)

(assert (=> d!48010 (= (tail!386 lt!65413) (t!28930 lt!65413))))

(assert (=> b!191714 d!48010))

(declare-fun d!48012 () Bool)

(assert (=> d!48012 (= (tail!386 lt!65405) (t!28930 lt!65405))))

(assert (=> b!191714 d!48012))

(declare-fun d!48014 () Bool)

(declare-fun lt!66105 () Int)

(assert (=> d!48014 (>= lt!66105 0)))

(declare-fun e!118252 () Int)

(assert (=> d!48014 (= lt!66105 e!118252)))

(declare-fun c!36716 () Bool)

(assert (=> d!48014 (= c!36716 ((_ is Nil!3218) lt!65673))))

(assert (=> d!48014 (= (size!2566 lt!65673) lt!66105)))

(declare-fun b!192340 () Bool)

(assert (=> b!192340 (= e!118252 0)))

(declare-fun b!192341 () Bool)

(assert (=> b!192341 (= e!118252 (+ 1 (size!2566 (t!28930 lt!65673))))))

(assert (= (and d!48014 c!36716) b!192340))

(assert (= (and d!48014 (not c!36716)) b!192341))

(declare-fun m!198969 () Bool)

(assert (=> b!192341 m!198969))

(assert (=> b!191380 d!48014))

(declare-fun d!48016 () Bool)

(declare-fun lt!66106 () Int)

(assert (=> d!48016 (>= lt!66106 0)))

(declare-fun e!118253 () Int)

(assert (=> d!48016 (= lt!66106 e!118253)))

(declare-fun c!36717 () Bool)

(assert (=> d!48016 (= c!36717 ((_ is Nil!3218) lt!65413))))

(assert (=> d!48016 (= (size!2566 lt!65413) lt!66106)))

(declare-fun b!192342 () Bool)

(assert (=> b!192342 (= e!118253 0)))

(declare-fun b!192343 () Bool)

(assert (=> b!192343 (= e!118253 (+ 1 (size!2566 (t!28930 lt!65413))))))

(assert (= (and d!48016 c!36717) b!192342))

(assert (= (and d!48016 (not c!36717)) b!192343))

(declare-fun m!198971 () Bool)

(assert (=> b!192343 m!198971))

(assert (=> b!191380 d!48016))

(declare-fun d!48018 () Bool)

(declare-fun lt!66107 () Int)

(assert (=> d!48018 (>= lt!66107 0)))

(declare-fun e!118254 () Int)

(assert (=> d!48018 (= lt!66107 e!118254)))

(declare-fun c!36718 () Bool)

(assert (=> d!48018 (= c!36718 ((_ is Nil!3218) lt!65412))))

(assert (=> d!48018 (= (size!2566 lt!65412) lt!66107)))

(declare-fun b!192344 () Bool)

(assert (=> b!192344 (= e!118254 0)))

(declare-fun b!192345 () Bool)

(assert (=> b!192345 (= e!118254 (+ 1 (size!2566 (t!28930 lt!65412))))))

(assert (= (and d!48018 c!36718) b!192344))

(assert (= (and d!48018 (not c!36718)) b!192345))

(declare-fun m!198973 () Bool)

(assert (=> b!192345 m!198973))

(assert (=> b!191380 d!48018))

(declare-fun d!48020 () Bool)

(assert (=> d!48020 (= (isDefined!323 lt!65949) (not (isEmpty!1617 lt!65949)))))

(declare-fun bs!18989 () Bool)

(assert (= bs!18989 d!48020))

(assert (=> bs!18989 m!198189))

(assert (=> b!191858 d!48020))

(declare-fun lt!66108 () Bool)

(declare-fun d!48022 () Bool)

(assert (=> d!48022 (= lt!66108 (isEmpty!1609 (list!1179 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)))))))))

(assert (=> d!48022 (= lt!66108 (isEmpty!1616 (c!36425 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)))))))))

(assert (=> d!48022 (= (isEmpty!1608 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170))))) lt!66108)))

(declare-fun bs!18990 () Bool)

(assert (= bs!18990 d!48022))

(declare-fun m!198975 () Bool)

(assert (=> bs!18990 m!198975))

(assert (=> bs!18990 m!198975))

(declare-fun m!198977 () Bool)

(assert (=> bs!18990 m!198977))

(declare-fun m!198979 () Bool)

(assert (=> bs!18990 m!198979))

(assert (=> b!191112 d!48022))

(declare-fun b!192346 () Bool)

(declare-fun lt!66109 () tuple2!3302)

(declare-fun e!118255 () Bool)

(assert (=> b!192346 (= e!118255 (= (list!1179 (_2!1867 lt!66109)) (_2!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)))))))))

(declare-fun d!48024 () Bool)

(assert (=> d!48024 e!118255))

(declare-fun res!88199 () Bool)

(assert (=> d!48024 (=> (not res!88199) (not e!118255))))

(declare-fun e!118257 () Bool)

(assert (=> d!48024 (= res!88199 e!118257)))

(declare-fun c!36719 () Bool)

(assert (=> d!48024 (= c!36719 (> (size!2563 (_1!1867 lt!66109)) 0))))

(assert (=> d!48024 (= lt!66109 (lexTailRecV2!122 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)) (BalanceConc!2025 Empty!1008) (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)) (BalanceConc!2027 Empty!1009)))))

(assert (=> d!48024 (= (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170))) lt!66109)))

(declare-fun b!192347 () Bool)

(declare-fun res!88200 () Bool)

(assert (=> b!192347 (=> (not res!88200) (not e!118255))))

(assert (=> b!192347 (= res!88200 (= (list!1182 (_1!1867 lt!66109)) (_1!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)))))))))

(declare-fun b!192348 () Bool)

(declare-fun e!118256 () Bool)

(assert (=> b!192348 (= e!118256 (not (isEmpty!1611 (_1!1867 lt!66109))))))

(declare-fun b!192349 () Bool)

(assert (=> b!192349 (= e!118257 (= (_2!1867 lt!66109) (print!210 thiss!17480 (singletonSeq!145 separatorToken!170))))))

(declare-fun b!192350 () Bool)

(assert (=> b!192350 (= e!118257 e!118256)))

(declare-fun res!88201 () Bool)

(assert (=> b!192350 (= res!88201 (< (size!2569 (_2!1867 lt!66109)) (size!2569 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)))))))

(assert (=> b!192350 (=> (not res!88201) (not e!118256))))

(assert (= (and d!48024 c!36719) b!192350))

(assert (= (and d!48024 (not c!36719)) b!192349))

(assert (= (and b!192350 res!88201) b!192348))

(assert (= (and d!48024 res!88199) b!192347))

(assert (= (and b!192347 res!88200) b!192346))

(declare-fun m!198981 () Bool)

(assert (=> d!48024 m!198981))

(assert (=> d!48024 m!196799))

(assert (=> d!48024 m!196799))

(declare-fun m!198983 () Bool)

(assert (=> d!48024 m!198983))

(declare-fun m!198985 () Bool)

(assert (=> b!192350 m!198985))

(assert (=> b!192350 m!196799))

(declare-fun m!198987 () Bool)

(assert (=> b!192350 m!198987))

(declare-fun m!198989 () Bool)

(assert (=> b!192348 m!198989))

(declare-fun m!198991 () Bool)

(assert (=> b!192347 m!198991))

(assert (=> b!192347 m!196799))

(declare-fun m!198993 () Bool)

(assert (=> b!192347 m!198993))

(assert (=> b!192347 m!198993))

(declare-fun m!198995 () Bool)

(assert (=> b!192347 m!198995))

(declare-fun m!198997 () Bool)

(assert (=> b!192346 m!198997))

(assert (=> b!192346 m!196799))

(assert (=> b!192346 m!198993))

(assert (=> b!192346 m!198993))

(assert (=> b!192346 m!198995))

(assert (=> b!191112 d!48024))

(declare-fun d!48026 () Bool)

(declare-fun lt!66110 () BalanceConc!2024)

(assert (=> d!48026 (= (list!1179 lt!66110) (printList!163 thiss!17480 (list!1182 (singletonSeq!145 separatorToken!170))))))

(assert (=> d!48026 (= lt!66110 (printTailRec!173 thiss!17480 (singletonSeq!145 separatorToken!170) 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!48026 (= (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)) lt!66110)))

(declare-fun bs!18991 () Bool)

(assert (= bs!18991 d!48026))

(declare-fun m!198999 () Bool)

(assert (=> bs!18991 m!198999))

(assert (=> bs!18991 m!196525))

(assert (=> bs!18991 m!196801))

(assert (=> bs!18991 m!196801))

(declare-fun m!199001 () Bool)

(assert (=> bs!18991 m!199001))

(assert (=> bs!18991 m!196525))

(declare-fun m!199003 () Bool)

(assert (=> bs!18991 m!199003))

(assert (=> b!191112 d!48026))

(assert (=> b!191112 d!47692))

(declare-fun d!48028 () Bool)

(declare-fun e!118258 () Bool)

(assert (=> d!48028 e!118258))

(declare-fun res!88202 () Bool)

(assert (=> d!48028 (=> (not res!88202) (not e!118258))))

(declare-fun lt!66111 () List!3228)

(assert (=> d!48028 (= res!88202 (= (content!430 lt!66111) ((_ map or) (content!430 (t!28930 lt!65413)) (content!430 lt!65438))))))

(declare-fun e!118259 () List!3228)

(assert (=> d!48028 (= lt!66111 e!118259)))

(declare-fun c!36720 () Bool)

(assert (=> d!48028 (= c!36720 ((_ is Nil!3218) (t!28930 lt!65413)))))

(assert (=> d!48028 (= (++!768 (t!28930 lt!65413) lt!65438) lt!66111)))

(declare-fun b!192351 () Bool)

(assert (=> b!192351 (= e!118259 lt!65438)))

(declare-fun b!192353 () Bool)

(declare-fun res!88203 () Bool)

(assert (=> b!192353 (=> (not res!88203) (not e!118258))))

(assert (=> b!192353 (= res!88203 (= (size!2566 lt!66111) (+ (size!2566 (t!28930 lt!65413)) (size!2566 lt!65438))))))

(declare-fun b!192352 () Bool)

(assert (=> b!192352 (= e!118259 (Cons!3218 (h!8615 (t!28930 lt!65413)) (++!768 (t!28930 (t!28930 lt!65413)) lt!65438)))))

(declare-fun b!192354 () Bool)

(assert (=> b!192354 (= e!118258 (or (not (= lt!65438 Nil!3218)) (= lt!66111 (t!28930 lt!65413))))))

(assert (= (and d!48028 c!36720) b!192351))

(assert (= (and d!48028 (not c!36720)) b!192352))

(assert (= (and d!48028 res!88202) b!192353))

(assert (= (and b!192353 res!88203) b!192354))

(declare-fun m!199005 () Bool)

(assert (=> d!48028 m!199005))

(declare-fun m!199007 () Bool)

(assert (=> d!48028 m!199007))

(assert (=> d!48028 m!197157))

(declare-fun m!199009 () Bool)

(assert (=> b!192353 m!199009))

(assert (=> b!192353 m!198971))

(assert (=> b!192353 m!197165))

(declare-fun m!199011 () Bool)

(assert (=> b!192352 m!199011))

(assert (=> b!191312 d!48028))

(declare-fun d!48030 () Bool)

(declare-fun list!1186 (Conc!1009) List!3230)

(assert (=> d!48030 (= (dropList!110 lt!65440 0) (drop!163 (list!1186 (c!36427 lt!65440)) 0))))

(declare-fun bs!18992 () Bool)

(assert (= bs!18992 d!48030))

(declare-fun m!199013 () Bool)

(assert (=> bs!18992 m!199013))

(assert (=> bs!18992 m!199013))

(declare-fun m!199015 () Bool)

(assert (=> bs!18992 m!199015))

(assert (=> d!47666 d!48030))

(declare-fun d!48032 () Bool)

(assert (=> d!48032 (= (list!1179 lt!65823) (list!1183 (c!36425 lt!65823)))))

(declare-fun bs!18993 () Bool)

(assert (= bs!18993 d!48032))

(declare-fun m!199017 () Bool)

(assert (=> bs!18993 m!199017))

(assert (=> d!47666 d!48032))

(declare-fun d!48034 () Bool)

(declare-fun lt!66112 () Int)

(assert (=> d!48034 (= lt!66112 (size!2570 (list!1182 lt!65440)))))

(assert (=> d!48034 (= lt!66112 (size!2571 (c!36427 lt!65440)))))

(assert (=> d!48034 (= (size!2563 lt!65440) lt!66112)))

(declare-fun bs!18994 () Bool)

(assert (= bs!18994 d!48034))

(assert (=> bs!18994 m!197771))

(assert (=> bs!18994 m!197771))

(declare-fun m!199019 () Bool)

(assert (=> bs!18994 m!199019))

(declare-fun m!199021 () Bool)

(assert (=> bs!18994 m!199021))

(assert (=> d!47666 d!48034))

(declare-fun d!48036 () Bool)

(declare-fun lt!66127 () List!3228)

(assert (=> d!48036 (= lt!66127 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (printList!163 thiss!17480 (dropList!110 lt!65440 0))))))

(declare-fun e!118262 () List!3228)

(assert (=> d!48036 (= lt!66127 e!118262)))

(declare-fun c!36723 () Bool)

(assert (=> d!48036 (= c!36723 ((_ is Cons!3220) (dropList!110 lt!65440 0)))))

(assert (=> d!48036 (= (printListTailRec!78 thiss!17480 (dropList!110 lt!65440 0) (list!1179 (BalanceConc!2025 Empty!1008))) lt!66127)))

(declare-fun b!192359 () Bool)

(assert (=> b!192359 (= e!118262 (printListTailRec!78 thiss!17480 (t!28932 (dropList!110 lt!65440 0)) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (h!8617 (dropList!110 lt!65440 0)))))))))

(declare-fun lt!66123 () List!3228)

(assert (=> b!192359 (= lt!66123 (list!1179 (charsOf!248 (h!8617 (dropList!110 lt!65440 0)))))))

(declare-fun lt!66126 () List!3228)

(assert (=> b!192359 (= lt!66126 (printList!163 thiss!17480 (t!28932 (dropList!110 lt!65440 0))))))

(declare-fun lt!66125 () Unit!3036)

(assert (=> b!192359 (= lt!66125 (lemmaConcatAssociativity!282 (list!1179 (BalanceConc!2025 Empty!1008)) lt!66123 lt!66126))))

(assert (=> b!192359 (= (++!768 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) lt!66123) lt!66126) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (++!768 lt!66123 lt!66126)))))

(declare-fun lt!66124 () Unit!3036)

(assert (=> b!192359 (= lt!66124 lt!66125)))

(declare-fun b!192360 () Bool)

(assert (=> b!192360 (= e!118262 (list!1179 (BalanceConc!2025 Empty!1008)))))

(assert (= (and d!48036 c!36723) b!192359))

(assert (= (and d!48036 (not c!36723)) b!192360))

(assert (=> d!48036 m!197761))

(declare-fun m!199023 () Bool)

(assert (=> d!48036 m!199023))

(assert (=> d!48036 m!197539))

(assert (=> d!48036 m!199023))

(declare-fun m!199025 () Bool)

(assert (=> d!48036 m!199025))

(declare-fun m!199027 () Bool)

(assert (=> b!192359 m!199027))

(assert (=> b!192359 m!197539))

(declare-fun m!199029 () Bool)

(assert (=> b!192359 m!199029))

(declare-fun m!199031 () Bool)

(assert (=> b!192359 m!199031))

(declare-fun m!199033 () Bool)

(assert (=> b!192359 m!199033))

(assert (=> b!192359 m!197539))

(declare-fun m!199035 () Bool)

(assert (=> b!192359 m!199035))

(declare-fun m!199037 () Bool)

(assert (=> b!192359 m!199037))

(assert (=> b!192359 m!197539))

(declare-fun m!199039 () Bool)

(assert (=> b!192359 m!199039))

(assert (=> b!192359 m!197539))

(declare-fun m!199041 () Bool)

(assert (=> b!192359 m!199041))

(assert (=> b!192359 m!199035))

(assert (=> b!192359 m!199041))

(declare-fun m!199043 () Bool)

(assert (=> b!192359 m!199043))

(assert (=> b!192359 m!199031))

(declare-fun m!199045 () Bool)

(assert (=> b!192359 m!199045))

(assert (=> b!192359 m!199033))

(assert (=> b!192359 m!199029))

(assert (=> d!47666 d!48036))

(declare-fun d!48038 () Bool)

(assert (=> d!48038 (= (list!1179 (BalanceConc!2025 Empty!1008)) (list!1183 (c!36425 (BalanceConc!2025 Empty!1008))))))

(declare-fun bs!18995 () Bool)

(assert (= bs!18995 d!48038))

(declare-fun m!199047 () Bool)

(assert (=> bs!18995 m!199047))

(assert (=> d!47666 d!48038))

(declare-fun d!48040 () Bool)

(assert (=> d!48040 (= (tail!385 (drop!163 lt!65599 0)) (drop!163 lt!65599 (+ 0 1)))))

(declare-fun lt!66130 () Unit!3036)

(declare-fun choose!1944 (List!3230 Int) Unit!3036)

(assert (=> d!48040 (= lt!66130 (choose!1944 lt!65599 0))))

(declare-fun e!118265 () Bool)

(assert (=> d!48040 e!118265))

(declare-fun res!88206 () Bool)

(assert (=> d!48040 (=> (not res!88206) (not e!118265))))

(assert (=> d!48040 (= res!88206 (>= 0 0))))

(assert (=> d!48040 (= (lemmaDropTail!142 lt!65599 0) lt!66130)))

(declare-fun b!192363 () Bool)

(assert (=> b!192363 (= e!118265 (< 0 (size!2570 lt!65599)))))

(assert (= (and d!48040 res!88206) b!192363))

(assert (=> d!48040 m!197059))

(assert (=> d!48040 m!197059))

(assert (=> d!48040 m!197063))

(assert (=> d!48040 m!197045))

(declare-fun m!199049 () Bool)

(assert (=> d!48040 m!199049))

(declare-fun m!199051 () Bool)

(assert (=> b!192363 m!199051))

(assert (=> b!191262 d!48040))

(declare-fun lt!66131 () Option!471)

(declare-fun e!118271 () Bool)

(declare-fun b!192364 () Bool)

(assert (=> b!192364 (= e!118271 (= (list!1179 (_2!1868 (get!939 lt!66131))) (_2!1869 (get!938 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))))))

(declare-fun b!192365 () Bool)

(declare-fun e!118270 () Bool)

(assert (=> b!192365 (= e!118270 (= (list!1179 (_2!1868 (get!939 lt!66131))) (_2!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))))))

(declare-fun b!192366 () Bool)

(declare-fun e!118267 () Bool)

(assert (=> b!192366 (= e!118267 e!118271)))

(declare-fun res!88212 () Bool)

(assert (=> b!192366 (=> (not res!88212) (not e!118271))))

(assert (=> b!192366 (= res!88212 (= (_1!1868 (get!939 lt!66131)) (_1!1869 (get!938 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))))))

(declare-fun b!192367 () Bool)

(declare-fun e!118269 () Bool)

(declare-fun e!118268 () Bool)

(assert (=> b!192367 (= e!118269 e!118268)))

(declare-fun res!88210 () Bool)

(assert (=> b!192367 (=> res!88210 e!118268)))

(assert (=> b!192367 (= res!88210 (not (isDefined!322 lt!66131)))))

(declare-fun b!192368 () Bool)

(assert (=> b!192368 (= e!118268 e!118270)))

(declare-fun res!88211 () Bool)

(assert (=> b!192368 (=> (not res!88211) (not e!118270))))

(assert (=> b!192368 (= res!88211 (= (_1!1868 (get!939 lt!66131)) (_1!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))))))

(declare-fun d!48042 () Bool)

(assert (=> d!48042 e!118269))

(declare-fun res!88208 () Bool)

(assert (=> d!48042 (=> (not res!88208) (not e!118269))))

(assert (=> d!48042 (= res!88208 (= (isDefined!322 lt!66131) (isDefined!323 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604))))))))

(declare-fun e!118266 () Option!471)

(assert (=> d!48042 (= lt!66131 e!118266)))

(declare-fun c!36724 () Bool)

(assert (=> d!48042 (= c!36724 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!66134 () Unit!3036)

(declare-fun lt!66137 () Unit!3036)

(assert (=> d!48042 (= lt!66134 lt!66137)))

(declare-fun lt!66132 () List!3228)

(declare-fun lt!66133 () List!3228)

(assert (=> d!48042 (isPrefix!289 lt!66132 lt!66133)))

(assert (=> d!48042 (= lt!66137 (lemmaIsPrefixRefl!159 lt!66132 lt!66133))))

(assert (=> d!48042 (= lt!66133 (list!1179 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))

(assert (=> d!48042 (= lt!66132 (list!1179 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))

(assert (=> d!48042 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!48042 (= (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)) lt!66131)))

(declare-fun b!192369 () Bool)

(declare-fun lt!66135 () Option!471)

(declare-fun lt!66136 () Option!471)

(assert (=> b!192369 (= e!118266 (ite (and ((_ is None!470) lt!66135) ((_ is None!470) lt!66136)) None!470 (ite ((_ is None!470) lt!66136) lt!66135 (ite ((_ is None!470) lt!66135) lt!66136 (ite (>= (size!2562 (_1!1868 (v!13981 lt!66135))) (size!2562 (_1!1868 (v!13981 lt!66136)))) lt!66135 lt!66136)))))))

(declare-fun call!8882 () Option!471)

(assert (=> b!192369 (= lt!66135 call!8882)))

(assert (=> b!192369 (= lt!66136 (maxPrefixZipperSequence!172 thiss!17480 (t!28931 rules!1920) (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))

(declare-fun b!192370 () Bool)

(assert (=> b!192370 (= e!118266 call!8882)))

(declare-fun bm!8877 () Bool)

(assert (=> bm!8877 (= call!8882 (maxPrefixOneRuleZipperSequence!63 thiss!17480 (h!8616 rules!1920) (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604)))))

(declare-fun b!192371 () Bool)

(declare-fun res!88209 () Bool)

(assert (=> b!192371 (=> (not res!88209) (not e!118269))))

(assert (=> b!192371 (= res!88209 e!118267)))

(declare-fun res!88207 () Bool)

(assert (=> b!192371 (=> res!88207 e!118267)))

(assert (=> b!192371 (= res!88207 (not (isDefined!322 lt!66131)))))

(assert (= (and d!48042 c!36724) b!192370))

(assert (= (and d!48042 (not c!36724)) b!192369))

(assert (= (or b!192370 b!192369) bm!8877))

(assert (= (and d!48042 res!88208) b!192371))

(assert (= (and b!192371 (not res!88207)) b!192366))

(assert (= (and b!192366 res!88212) b!192364))

(assert (= (and b!192371 res!88209) b!192367))

(assert (= (and b!192367 (not res!88210)) b!192368))

(assert (= (and b!192368 res!88211) b!192365))

(declare-fun m!199053 () Bool)

(assert (=> b!192368 m!199053))

(assert (=> b!192368 m!197055))

(declare-fun m!199055 () Bool)

(assert (=> b!192368 m!199055))

(assert (=> b!192368 m!199055))

(declare-fun m!199057 () Bool)

(assert (=> b!192368 m!199057))

(assert (=> b!192368 m!199057))

(declare-fun m!199059 () Bool)

(assert (=> b!192368 m!199059))

(assert (=> d!48042 m!199055))

(declare-fun m!199061 () Bool)

(assert (=> d!48042 m!199061))

(declare-fun m!199063 () Bool)

(assert (=> d!48042 m!199063))

(assert (=> d!48042 m!196735))

(declare-fun m!199065 () Bool)

(assert (=> d!48042 m!199065))

(assert (=> d!48042 m!199061))

(declare-fun m!199067 () Bool)

(assert (=> d!48042 m!199067))

(assert (=> d!48042 m!197055))

(assert (=> d!48042 m!199055))

(declare-fun m!199069 () Bool)

(assert (=> d!48042 m!199069))

(assert (=> b!192369 m!197055))

(declare-fun m!199071 () Bool)

(assert (=> b!192369 m!199071))

(assert (=> bm!8877 m!197055))

(declare-fun m!199073 () Bool)

(assert (=> bm!8877 m!199073))

(assert (=> b!192364 m!199055))

(assert (=> b!192364 m!199061))

(assert (=> b!192364 m!199061))

(declare-fun m!199075 () Bool)

(assert (=> b!192364 m!199075))

(declare-fun m!199077 () Bool)

(assert (=> b!192364 m!199077))

(assert (=> b!192364 m!199053))

(assert (=> b!192364 m!197055))

(assert (=> b!192364 m!199055))

(assert (=> b!192371 m!199063))

(assert (=> b!192366 m!199053))

(assert (=> b!192366 m!197055))

(assert (=> b!192366 m!199055))

(assert (=> b!192366 m!199055))

(assert (=> b!192366 m!199061))

(assert (=> b!192366 m!199061))

(assert (=> b!192366 m!199075))

(assert (=> b!192365 m!199057))

(assert (=> b!192365 m!199059))

(assert (=> b!192365 m!199077))

(assert (=> b!192365 m!199053))

(assert (=> b!192365 m!199055))

(assert (=> b!192365 m!199057))

(assert (=> b!192365 m!197055))

(assert (=> b!192365 m!199055))

(assert (=> b!192367 m!199063))

(assert (=> b!191262 d!48042))

(declare-fun d!48044 () Bool)

(assert (=> d!48044 (= (head!682 (drop!163 lt!65595 0)) (h!8617 (drop!163 lt!65595 0)))))

(assert (=> b!191262 d!48044))

(declare-fun d!48046 () Bool)

(declare-fun lt!66140 () Token!930)

(assert (=> d!48046 (contains!514 lt!65595 lt!66140)))

(declare-fun e!118277 () Token!930)

(assert (=> d!48046 (= lt!66140 e!118277)))

(declare-fun c!36727 () Bool)

(assert (=> d!48046 (= c!36727 (= 0 0))))

(declare-fun e!118276 () Bool)

(assert (=> d!48046 e!118276))

(declare-fun res!88215 () Bool)

(assert (=> d!48046 (=> (not res!88215) (not e!118276))))

(assert (=> d!48046 (= res!88215 (<= 0 0))))

(assert (=> d!48046 (= (apply!497 lt!65595 0) lt!66140)))

(declare-fun b!192378 () Bool)

(assert (=> b!192378 (= e!118276 (< 0 (size!2570 lt!65595)))))

(declare-fun b!192379 () Bool)

(assert (=> b!192379 (= e!118277 (head!682 lt!65595))))

(declare-fun b!192380 () Bool)

(assert (=> b!192380 (= e!118277 (apply!497 (tail!385 lt!65595) (- 0 1)))))

(assert (= (and d!48046 res!88215) b!192378))

(assert (= (and d!48046 c!36727) b!192379))

(assert (= (and d!48046 (not c!36727)) b!192380))

(declare-fun m!199079 () Bool)

(assert (=> d!48046 m!199079))

(declare-fun m!199081 () Bool)

(assert (=> b!192378 m!199081))

(declare-fun m!199083 () Bool)

(assert (=> b!192379 m!199083))

(declare-fun m!199085 () Bool)

(assert (=> b!192380 m!199085))

(assert (=> b!192380 m!199085))

(declare-fun m!199087 () Bool)

(assert (=> b!192380 m!199087))

(assert (=> b!191262 d!48046))

(declare-fun d!48048 () Bool)

(assert (=> d!48048 (= (list!1182 (seqFromList!564 (t!28932 tokens!465))) (list!1186 (c!36427 (seqFromList!564 (t!28932 tokens!465)))))))

(declare-fun bs!18996 () Bool)

(assert (= bs!18996 d!48048))

(declare-fun m!199089 () Bool)

(assert (=> bs!18996 m!199089))

(assert (=> b!191262 d!48048))

(declare-fun d!48050 () Bool)

(assert (=> d!48050 (dynLambda!1375 lambda!5846 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))

(declare-fun lt!66141 () Unit!3036)

(assert (=> d!48050 (= lt!66141 (choose!1935 (list!1182 (seqFromList!564 (t!28932 tokens!465))) lambda!5846 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))))

(declare-fun e!118278 () Bool)

(assert (=> d!48050 e!118278))

(declare-fun res!88216 () Bool)

(assert (=> d!48050 (=> (not res!88216) (not e!118278))))

(assert (=> d!48050 (= res!88216 (forall!675 (list!1182 (seqFromList!564 (t!28932 tokens!465))) lambda!5846))))

(assert (=> d!48050 (= (forallContained!160 (list!1182 (seqFromList!564 (t!28932 tokens!465))) lambda!5846 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!66141)))

(declare-fun b!192381 () Bool)

(assert (=> b!192381 (= e!118278 (contains!514 (list!1182 (seqFromList!564 (t!28932 tokens!465))) (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))))

(assert (= (and d!48050 res!88216) b!192381))

(declare-fun b_lambda!4679 () Bool)

(assert (=> (not b_lambda!4679) (not d!48050)))

(assert (=> d!48050 m!197041))

(declare-fun m!199091 () Bool)

(assert (=> d!48050 m!199091))

(assert (=> d!48050 m!197025))

(assert (=> d!48050 m!197041))

(declare-fun m!199093 () Bool)

(assert (=> d!48050 m!199093))

(assert (=> d!48050 m!197025))

(declare-fun m!199095 () Bool)

(assert (=> d!48050 m!199095))

(assert (=> b!192381 m!197025))

(assert (=> b!192381 m!197041))

(declare-fun m!199097 () Bool)

(assert (=> b!192381 m!199097))

(assert (=> b!191262 d!48050))

(declare-fun bs!18997 () Bool)

(declare-fun d!48052 () Bool)

(assert (= bs!18997 (and d!48052 d!47456)))

(declare-fun lambda!5893 () Int)

(assert (=> bs!18997 (= lambda!5893 lambda!5845)))

(declare-fun bs!18998 () Bool)

(assert (= bs!18998 (and d!48052 b!190910)))

(assert (=> bs!18998 (not (= lambda!5893 lambda!5840))))

(declare-fun bs!18999 () Bool)

(assert (= bs!18999 (and d!48052 b!190918)))

(assert (=> bs!18999 (= lambda!5893 lambda!5839)))

(declare-fun bs!19000 () Bool)

(assert (= bs!19000 (and d!48052 b!191371)))

(assert (=> bs!19000 (not (= lambda!5893 lambda!5849))))

(declare-fun bs!19001 () Bool)

(assert (= bs!19001 (and d!48052 d!47636)))

(assert (=> bs!19001 (= lambda!5893 lambda!5863)))

(declare-fun bs!19002 () Bool)

(assert (= bs!19002 (and d!48052 b!191608)))

(assert (=> bs!19002 (not (= lambda!5893 lambda!5865))))

(declare-fun bs!19003 () Bool)

(assert (= bs!19003 (and d!48052 b!191262)))

(assert (=> bs!19003 (not (= lambda!5893 lambda!5846))))

(declare-fun bs!19004 () Bool)

(assert (= bs!19004 (and d!48052 d!47584)))

(assert (=> bs!19004 (not (= lambda!5893 lambda!5859))))

(declare-fun bs!19005 () Bool)

(assert (= bs!19005 (and d!48052 b!191594)))

(assert (=> bs!19005 (not (= lambda!5893 lambda!5864))))

(declare-fun bs!19006 () Bool)

(declare-fun b!192388 () Bool)

(assert (= bs!19006 (and b!192388 d!47456)))

(declare-fun lambda!5894 () Int)

(assert (=> bs!19006 (not (= lambda!5894 lambda!5845))))

(declare-fun bs!19007 () Bool)

(assert (= bs!19007 (and b!192388 b!190910)))

(assert (=> bs!19007 (= lambda!5894 lambda!5840)))

(declare-fun bs!19008 () Bool)

(assert (= bs!19008 (and b!192388 b!190918)))

(assert (=> bs!19008 (not (= lambda!5894 lambda!5839))))

(declare-fun bs!19009 () Bool)

(assert (= bs!19009 (and b!192388 b!191371)))

(assert (=> bs!19009 (= lambda!5894 lambda!5849)))

(declare-fun bs!19010 () Bool)

(assert (= bs!19010 (and b!192388 d!47636)))

(assert (=> bs!19010 (not (= lambda!5894 lambda!5863))))

(declare-fun bs!19011 () Bool)

(assert (= bs!19011 (and b!192388 b!191608)))

(assert (=> bs!19011 (= lambda!5894 lambda!5865)))

(declare-fun bs!19012 () Bool)

(assert (= bs!19012 (and b!192388 b!191262)))

(assert (=> bs!19012 (= lambda!5894 lambda!5846)))

(declare-fun bs!19013 () Bool)

(assert (= bs!19013 (and b!192388 d!48052)))

(assert (=> bs!19013 (not (= lambda!5894 lambda!5893))))

(declare-fun bs!19014 () Bool)

(assert (= bs!19014 (and b!192388 d!47584)))

(assert (=> bs!19014 (= lambda!5894 lambda!5859)))

(declare-fun bs!19015 () Bool)

(assert (= bs!19015 (and b!192388 b!191594)))

(assert (=> bs!19015 (= lambda!5894 lambda!5864)))

(declare-fun b!192395 () Bool)

(declare-fun e!118288 () Bool)

(assert (=> b!192395 (= e!118288 true)))

(declare-fun b!192394 () Bool)

(declare-fun e!118287 () Bool)

(assert (=> b!192394 (= e!118287 e!118288)))

(declare-fun b!192393 () Bool)

(declare-fun e!118286 () Bool)

(assert (=> b!192393 (= e!118286 e!118287)))

(assert (=> b!192388 e!118286))

(assert (= b!192394 b!192395))

(assert (= b!192393 b!192394))

(assert (= (and b!192388 ((_ is Cons!3219) rules!1920)) b!192393))

(assert (=> b!192395 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5894))))

(assert (=> b!192395 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5894))))

(assert (=> b!192388 true))

(declare-fun bm!8878 () Bool)

(declare-fun call!8883 () BalanceConc!2024)

(declare-fun call!8885 () BalanceConc!2024)

(assert (=> bm!8878 (= call!8883 call!8885)))

(declare-fun b!192382 () Bool)

(declare-fun e!118285 () BalanceConc!2024)

(assert (=> b!192382 (= e!118285 (BalanceConc!2025 Empty!1008))))

(declare-fun b!192383 () Bool)

(declare-fun e!118284 () BalanceConc!2024)

(declare-fun call!8886 () BalanceConc!2024)

(declare-fun lt!66155 () BalanceConc!2024)

(assert (=> b!192383 (= e!118284 (++!770 call!8886 lt!66155))))

(declare-fun b!192384 () Bool)

(declare-fun e!118280 () Bool)

(declare-fun lt!66151 () Option!471)

(assert (=> b!192384 (= e!118280 (= (_1!1868 (v!13981 lt!66151)) (apply!492 (seqFromList!564 (t!28932 tokens!465)) (+ 0 1))))))

(declare-fun b!192385 () Bool)

(assert (=> b!192385 (= e!118284 (BalanceConc!2025 Empty!1008))))

(declare-fun call!8887 () Token!930)

(assert (=> b!192385 (= (print!210 thiss!17480 (singletonSeq!145 call!8887)) (printTailRec!173 thiss!17480 (singletonSeq!145 call!8887) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!66145 () Unit!3036)

(declare-fun Unit!3058 () Unit!3036)

(assert (=> b!192385 (= lt!66145 Unit!3058)))

(declare-fun lt!66143 () Unit!3036)

(assert (=> b!192385 (= lt!66143 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 (list!1179 call!8883) (list!1179 lt!66155)))))

(assert (=> b!192385 false))

(declare-fun lt!66153 () Unit!3036)

(declare-fun Unit!3059 () Unit!3036)

(assert (=> b!192385 (= lt!66153 Unit!3059)))

(declare-fun b!192386 () Bool)

(declare-fun e!118281 () BalanceConc!2024)

(assert (=> b!192386 (= e!118281 call!8885)))

(declare-fun bm!8879 () Bool)

(declare-fun call!8884 () Token!930)

(assert (=> bm!8879 (= call!8884 (apply!492 (seqFromList!564 (t!28932 tokens!465)) (+ 0 1)))))

(declare-fun bm!8880 () Bool)

(assert (=> bm!8880 (= call!8887 call!8884)))

(declare-fun b!192387 () Bool)

(declare-fun e!118283 () Bool)

(assert (=> b!192387 (= e!118283 (<= (+ 0 1) (size!2563 (seqFromList!564 (t!28932 tokens!465)))))))

(declare-fun e!118282 () BalanceConc!2024)

(assert (=> b!192388 (= e!118285 e!118282)))

(declare-fun lt!66146 () List!3230)

(assert (=> b!192388 (= lt!66146 (list!1182 (seqFromList!564 (t!28932 tokens!465))))))

(declare-fun lt!66152 () Unit!3036)

(assert (=> b!192388 (= lt!66152 (lemmaDropApply!150 lt!66146 (+ 0 1)))))

(assert (=> b!192388 (= (head!682 (drop!163 lt!66146 (+ 0 1))) (apply!497 lt!66146 (+ 0 1)))))

(declare-fun lt!66149 () Unit!3036)

(assert (=> b!192388 (= lt!66149 lt!66152)))

(declare-fun lt!66150 () List!3230)

(assert (=> b!192388 (= lt!66150 (list!1182 (seqFromList!564 (t!28932 tokens!465))))))

(declare-fun lt!66147 () Unit!3036)

(assert (=> b!192388 (= lt!66147 (lemmaDropTail!142 lt!66150 (+ 0 1)))))

(assert (=> b!192388 (= (tail!385 (drop!163 lt!66150 (+ 0 1))) (drop!163 lt!66150 (+ 0 1 1)))))

(declare-fun lt!66144 () Unit!3036)

(assert (=> b!192388 (= lt!66144 lt!66147)))

(declare-fun lt!66142 () Unit!3036)

(assert (=> b!192388 (= lt!66142 (forallContained!160 (list!1182 (seqFromList!564 (t!28932 tokens!465))) lambda!5894 (apply!492 (seqFromList!564 (t!28932 tokens!465)) (+ 0 1))))))

(assert (=> b!192388 (= lt!66155 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!192388 (= lt!66151 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) (+ 0 1))) lt!66155)))))

(declare-fun res!88217 () Bool)

(assert (=> b!192388 (= res!88217 ((_ is Some!470) lt!66151))))

(assert (=> b!192388 (=> (not res!88217) (not e!118280))))

(declare-fun c!36728 () Bool)

(assert (=> b!192388 (= c!36728 e!118280)))

(declare-fun bm!8882 () Bool)

(declare-fun c!36729 () Bool)

(assert (=> bm!8882 (= c!36729 c!36728)))

(assert (=> bm!8882 (= call!8886 (++!770 e!118281 (ite c!36728 lt!66155 call!8883)))))

(declare-fun b!192389 () Bool)

(declare-fun c!36730 () Bool)

(declare-fun e!118279 () Bool)

(assert (=> b!192389 (= c!36730 e!118279)))

(declare-fun res!88219 () Bool)

(assert (=> b!192389 (=> (not res!88219) (not e!118279))))

(assert (=> b!192389 (= res!88219 ((_ is Some!470) lt!66151))))

(assert (=> b!192389 (= e!118282 e!118284)))

(declare-fun b!192390 () Bool)

(assert (=> b!192390 (= e!118282 call!8886)))

(declare-fun b!192391 () Bool)

(assert (=> b!192391 (= e!118281 (charsOf!248 call!8887))))

(declare-fun b!192392 () Bool)

(assert (=> b!192392 (= e!118279 (not (= (_1!1868 (v!13981 lt!66151)) call!8884)))))

(declare-fun bm!8881 () Bool)

(assert (=> bm!8881 (= call!8885 (charsOf!248 (ite c!36728 call!8884 (ite c!36730 separatorToken!170 call!8887))))))

(declare-fun lt!66148 () BalanceConc!2024)

(assert (=> d!48052 (= (list!1179 lt!66148) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) (+ 0 1)) separatorToken!170))))

(assert (=> d!48052 (= lt!66148 e!118285)))

(declare-fun c!36731 () Bool)

(assert (=> d!48052 (= c!36731 (>= (+ 0 1) (size!2563 (seqFromList!564 (t!28932 tokens!465)))))))

(declare-fun lt!66154 () Unit!3036)

(assert (=> d!48052 (= lt!66154 (lemmaContentSubsetPreservesForall!53 (list!1182 (seqFromList!564 (t!28932 tokens!465))) (dropList!110 (seqFromList!564 (t!28932 tokens!465)) (+ 0 1)) lambda!5893))))

(assert (=> d!48052 e!118283))

(declare-fun res!88218 () Bool)

(assert (=> d!48052 (=> (not res!88218) (not e!118283))))

(assert (=> d!48052 (= res!88218 (>= (+ 0 1) 0))))

(assert (=> d!48052 (= (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 (+ 0 1)) lt!66148)))

(assert (= (and d!48052 res!88218) b!192387))

(assert (= (and d!48052 c!36731) b!192382))

(assert (= (and d!48052 (not c!36731)) b!192388))

(assert (= (and b!192388 res!88217) b!192384))

(assert (= (and b!192388 c!36728) b!192390))

(assert (= (and b!192388 (not c!36728)) b!192389))

(assert (= (and b!192389 res!88219) b!192392))

(assert (= (and b!192389 c!36730) b!192383))

(assert (= (and b!192389 (not c!36730)) b!192385))

(assert (= (or b!192383 b!192385) bm!8880))

(assert (= (or b!192383 b!192385) bm!8878))

(assert (= (or b!192390 bm!8880 b!192392) bm!8879))

(assert (= (or b!192390 bm!8878) bm!8881))

(assert (= (or b!192390 b!192383) bm!8882))

(assert (= (and bm!8882 c!36729) b!192386))

(assert (= (and bm!8882 (not c!36729)) b!192391))

(assert (=> d!48052 m!197025))

(declare-fun m!199099 () Bool)

(assert (=> d!48052 m!199099))

(declare-fun m!199101 () Bool)

(assert (=> d!48052 m!199101))

(declare-fun m!199103 () Bool)

(assert (=> d!48052 m!199103))

(assert (=> d!48052 m!196435))

(assert (=> d!48052 m!197025))

(assert (=> d!48052 m!196435))

(assert (=> d!48052 m!197033))

(assert (=> d!48052 m!199099))

(declare-fun m!199105 () Bool)

(assert (=> d!48052 m!199105))

(assert (=> d!48052 m!196435))

(assert (=> d!48052 m!199099))

(declare-fun m!199107 () Bool)

(assert (=> b!192391 m!199107))

(assert (=> b!192387 m!196435))

(assert (=> b!192387 m!197033))

(declare-fun m!199109 () Bool)

(assert (=> b!192383 m!199109))

(assert (=> bm!8879 m!196435))

(declare-fun m!199111 () Bool)

(assert (=> bm!8879 m!199111))

(declare-fun m!199113 () Bool)

(assert (=> b!192388 m!199113))

(assert (=> b!192388 m!196435))

(assert (=> b!192388 m!197025))

(declare-fun m!199115 () Bool)

(assert (=> b!192388 m!199115))

(assert (=> b!192388 m!199111))

(declare-fun m!199117 () Bool)

(assert (=> b!192388 m!199117))

(assert (=> b!192388 m!196435))

(assert (=> b!192388 m!199111))

(assert (=> b!192388 m!197025))

(assert (=> b!192388 m!199111))

(declare-fun m!199119 () Bool)

(assert (=> b!192388 m!199119))

(declare-fun m!199121 () Bool)

(assert (=> b!192388 m!199121))

(declare-fun m!199123 () Bool)

(assert (=> b!192388 m!199123))

(assert (=> b!192388 m!199117))

(declare-fun m!199125 () Bool)

(assert (=> b!192388 m!199125))

(declare-fun m!199127 () Bool)

(assert (=> b!192388 m!199127))

(declare-fun m!199129 () Bool)

(assert (=> b!192388 m!199129))

(assert (=> b!192388 m!199121))

(declare-fun m!199131 () Bool)

(assert (=> b!192388 m!199131))

(assert (=> b!192388 m!199129))

(declare-fun m!199133 () Bool)

(assert (=> b!192388 m!199133))

(assert (=> b!192388 m!196435))

(declare-fun m!199135 () Bool)

(assert (=> b!192388 m!199135))

(assert (=> b!192388 m!199125))

(declare-fun m!199137 () Bool)

(assert (=> b!192388 m!199137))

(declare-fun m!199139 () Bool)

(assert (=> bm!8882 m!199139))

(declare-fun m!199141 () Bool)

(assert (=> bm!8881 m!199141))

(assert (=> b!192384 m!196435))

(assert (=> b!192384 m!199111))

(declare-fun m!199143 () Bool)

(assert (=> b!192385 m!199143))

(declare-fun m!199145 () Bool)

(assert (=> b!192385 m!199145))

(assert (=> b!192385 m!199143))

(declare-fun m!199147 () Bool)

(assert (=> b!192385 m!199147))

(declare-fun m!199149 () Bool)

(assert (=> b!192385 m!199149))

(declare-fun m!199151 () Bool)

(assert (=> b!192385 m!199151))

(assert (=> b!192385 m!199149))

(declare-fun m!199153 () Bool)

(assert (=> b!192385 m!199153))

(assert (=> b!192385 m!199151))

(assert (=> b!192385 m!199143))

(assert (=> b!191262 d!48052))

(declare-fun b!192414 () Bool)

(declare-fun e!118299 () Int)

(declare-fun call!8890 () Int)

(assert (=> b!192414 (= e!118299 call!8890)))

(declare-fun b!192415 () Bool)

(declare-fun e!118303 () Bool)

(declare-fun lt!66158 () List!3230)

(assert (=> b!192415 (= e!118303 (= (size!2570 lt!66158) e!118299))))

(declare-fun c!36743 () Bool)

(assert (=> b!192415 (= c!36743 (<= 0 0))))

(declare-fun bm!8885 () Bool)

(assert (=> bm!8885 (= call!8890 (size!2570 lt!65599))))

(declare-fun b!192416 () Bool)

(declare-fun e!118301 () Int)

(assert (=> b!192416 (= e!118301 0)))

(declare-fun d!48054 () Bool)

(assert (=> d!48054 e!118303))

(declare-fun res!88222 () Bool)

(assert (=> d!48054 (=> (not res!88222) (not e!118303))))

(assert (=> d!48054 (= res!88222 (= ((_ map implies) (content!431 lt!66158) (content!431 lt!65599)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118300 () List!3230)

(assert (=> d!48054 (= lt!66158 e!118300)))

(declare-fun c!36740 () Bool)

(assert (=> d!48054 (= c!36740 ((_ is Nil!3220) lt!65599))))

(assert (=> d!48054 (= (drop!163 lt!65599 0) lt!66158)))

(declare-fun b!192417 () Bool)

(assert (=> b!192417 (= e!118301 (- call!8890 0))))

(declare-fun b!192418 () Bool)

(declare-fun e!118302 () List!3230)

(assert (=> b!192418 (= e!118300 e!118302)))

(declare-fun c!36741 () Bool)

(assert (=> b!192418 (= c!36741 (<= 0 0))))

(declare-fun b!192419 () Bool)

(assert (=> b!192419 (= e!118299 e!118301)))

(declare-fun c!36742 () Bool)

(assert (=> b!192419 (= c!36742 (>= 0 call!8890))))

(declare-fun b!192420 () Bool)

(assert (=> b!192420 (= e!118300 Nil!3220)))

(declare-fun b!192421 () Bool)

(assert (=> b!192421 (= e!118302 lt!65599)))

(declare-fun b!192422 () Bool)

(assert (=> b!192422 (= e!118302 (drop!163 (t!28932 lt!65599) (- 0 1)))))

(assert (= (and d!48054 c!36740) b!192420))

(assert (= (and d!48054 (not c!36740)) b!192418))

(assert (= (and b!192418 c!36741) b!192421))

(assert (= (and b!192418 (not c!36741)) b!192422))

(assert (= (and d!48054 res!88222) b!192415))

(assert (= (and b!192415 c!36743) b!192414))

(assert (= (and b!192415 (not c!36743)) b!192419))

(assert (= (and b!192419 c!36742) b!192416))

(assert (= (and b!192419 (not c!36742)) b!192417))

(assert (= (or b!192414 b!192419 b!192417) bm!8885))

(declare-fun m!199155 () Bool)

(assert (=> b!192415 m!199155))

(assert (=> bm!8885 m!199051))

(declare-fun m!199157 () Bool)

(assert (=> d!48054 m!199157))

(declare-fun m!199159 () Bool)

(assert (=> d!48054 m!199159))

(declare-fun m!199161 () Bool)

(assert (=> b!192422 m!199161))

(assert (=> b!191262 d!48054))

(declare-fun b!192423 () Bool)

(declare-fun e!118304 () Int)

(declare-fun call!8891 () Int)

(assert (=> b!192423 (= e!118304 call!8891)))

(declare-fun b!192424 () Bool)

(declare-fun e!118308 () Bool)

(declare-fun lt!66159 () List!3230)

(assert (=> b!192424 (= e!118308 (= (size!2570 lt!66159) e!118304))))

(declare-fun c!36747 () Bool)

(assert (=> b!192424 (= c!36747 (<= 0 0))))

(declare-fun bm!8886 () Bool)

(assert (=> bm!8886 (= call!8891 (size!2570 lt!65595))))

(declare-fun b!192425 () Bool)

(declare-fun e!118306 () Int)

(assert (=> b!192425 (= e!118306 0)))

(declare-fun d!48056 () Bool)

(assert (=> d!48056 e!118308))

(declare-fun res!88223 () Bool)

(assert (=> d!48056 (=> (not res!88223) (not e!118308))))

(assert (=> d!48056 (= res!88223 (= ((_ map implies) (content!431 lt!66159) (content!431 lt!65595)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118305 () List!3230)

(assert (=> d!48056 (= lt!66159 e!118305)))

(declare-fun c!36744 () Bool)

(assert (=> d!48056 (= c!36744 ((_ is Nil!3220) lt!65595))))

(assert (=> d!48056 (= (drop!163 lt!65595 0) lt!66159)))

(declare-fun b!192426 () Bool)

(assert (=> b!192426 (= e!118306 (- call!8891 0))))

(declare-fun b!192427 () Bool)

(declare-fun e!118307 () List!3230)

(assert (=> b!192427 (= e!118305 e!118307)))

(declare-fun c!36745 () Bool)

(assert (=> b!192427 (= c!36745 (<= 0 0))))

(declare-fun b!192428 () Bool)

(assert (=> b!192428 (= e!118304 e!118306)))

(declare-fun c!36746 () Bool)

(assert (=> b!192428 (= c!36746 (>= 0 call!8891))))

(declare-fun b!192429 () Bool)

(assert (=> b!192429 (= e!118305 Nil!3220)))

(declare-fun b!192430 () Bool)

(assert (=> b!192430 (= e!118307 lt!65595)))

(declare-fun b!192431 () Bool)

(assert (=> b!192431 (= e!118307 (drop!163 (t!28932 lt!65595) (- 0 1)))))

(assert (= (and d!48056 c!36744) b!192429))

(assert (= (and d!48056 (not c!36744)) b!192427))

(assert (= (and b!192427 c!36745) b!192430))

(assert (= (and b!192427 (not c!36745)) b!192431))

(assert (= (and d!48056 res!88223) b!192424))

(assert (= (and b!192424 c!36747) b!192423))

(assert (= (and b!192424 (not c!36747)) b!192428))

(assert (= (and b!192428 c!36746) b!192425))

(assert (= (and b!192428 (not c!36746)) b!192426))

(assert (= (or b!192423 b!192428 b!192426) bm!8886))

(declare-fun m!199163 () Bool)

(assert (=> b!192424 m!199163))

(assert (=> bm!8886 m!199081))

(declare-fun m!199165 () Bool)

(assert (=> d!48056 m!199165))

(declare-fun m!199167 () Bool)

(assert (=> d!48056 m!199167))

(declare-fun m!199169 () Bool)

(assert (=> b!192431 m!199169))

(assert (=> b!191262 d!48056))

(declare-fun b!192433 () Bool)

(declare-fun res!88226 () Bool)

(declare-fun e!118309 () Bool)

(assert (=> b!192433 (=> (not res!88226) (not e!118309))))

(assert (=> b!192433 (= res!88226 (<= (height!101 (++!771 (c!36425 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))) (c!36425 lt!65604))) (+ (max!0 (height!101 (c!36425 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))) (height!101 (c!36425 lt!65604))) 1)))))

(declare-fun lt!66160 () BalanceConc!2024)

(declare-fun b!192435 () Bool)

(assert (=> b!192435 (= e!118309 (= (list!1179 lt!66160) (++!768 (list!1179 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))) (list!1179 lt!65604))))))

(declare-fun b!192434 () Bool)

(declare-fun res!88227 () Bool)

(assert (=> b!192434 (=> (not res!88227) (not e!118309))))

(assert (=> b!192434 (= res!88227 (>= (height!101 (++!771 (c!36425 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))) (c!36425 lt!65604))) (max!0 (height!101 (c!36425 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))) (height!101 (c!36425 lt!65604)))))))

(declare-fun d!48058 () Bool)

(assert (=> d!48058 e!118309))

(declare-fun res!88224 () Bool)

(assert (=> d!48058 (=> (not res!88224) (not e!118309))))

(assert (=> d!48058 (= res!88224 (appendAssocInst!34 (c!36425 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))) (c!36425 lt!65604)))))

(assert (=> d!48058 (= lt!66160 (BalanceConc!2025 (++!771 (c!36425 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))) (c!36425 lt!65604))))))

(assert (=> d!48058 (= (++!770 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!65604) lt!66160)))

(declare-fun b!192432 () Bool)

(declare-fun res!88225 () Bool)

(assert (=> b!192432 (=> (not res!88225) (not e!118309))))

(assert (=> b!192432 (= res!88225 (isBalanced!266 (++!771 (c!36425 (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))) (c!36425 lt!65604))))))

(assert (= (and d!48058 res!88224) b!192432))

(assert (= (and b!192432 res!88225) b!192433))

(assert (= (and b!192433 res!88226) b!192434))

(assert (= (and b!192434 res!88227) b!192435))

(declare-fun m!199171 () Bool)

(assert (=> b!192435 m!199171))

(assert (=> b!192435 m!197047))

(declare-fun m!199173 () Bool)

(assert (=> b!192435 m!199173))

(assert (=> b!192435 m!197085))

(assert (=> b!192435 m!199173))

(assert (=> b!192435 m!197085))

(declare-fun m!199175 () Bool)

(assert (=> b!192435 m!199175))

(declare-fun m!199177 () Bool)

(assert (=> b!192432 m!199177))

(assert (=> b!192432 m!199177))

(declare-fun m!199179 () Bool)

(assert (=> b!192432 m!199179))

(declare-fun m!199181 () Bool)

(assert (=> b!192434 m!199181))

(declare-fun m!199183 () Bool)

(assert (=> b!192434 m!199183))

(declare-fun m!199185 () Bool)

(assert (=> b!192434 m!199185))

(assert (=> b!192434 m!199177))

(declare-fun m!199187 () Bool)

(assert (=> b!192434 m!199187))

(assert (=> b!192434 m!199181))

(assert (=> b!192434 m!199177))

(assert (=> b!192434 m!199183))

(assert (=> b!192433 m!199181))

(assert (=> b!192433 m!199183))

(assert (=> b!192433 m!199185))

(assert (=> b!192433 m!199177))

(assert (=> b!192433 m!199187))

(assert (=> b!192433 m!199181))

(assert (=> b!192433 m!199177))

(assert (=> b!192433 m!199183))

(declare-fun m!199189 () Bool)

(assert (=> d!48058 m!199189))

(assert (=> d!48058 m!199177))

(assert (=> b!191262 d!48058))

(declare-fun d!48060 () Bool)

(assert (=> d!48060 (= (head!682 (drop!163 lt!65595 0)) (apply!497 lt!65595 0))))

(declare-fun lt!66163 () Unit!3036)

(declare-fun choose!1947 (List!3230 Int) Unit!3036)

(assert (=> d!48060 (= lt!66163 (choose!1947 lt!65595 0))))

(declare-fun e!118312 () Bool)

(assert (=> d!48060 e!118312))

(declare-fun res!88230 () Bool)

(assert (=> d!48060 (=> (not res!88230) (not e!118312))))

(assert (=> d!48060 (= res!88230 (>= 0 0))))

(assert (=> d!48060 (= (lemmaDropApply!150 lt!65595 0) lt!66163)))

(declare-fun b!192438 () Bool)

(assert (=> b!192438 (= e!118312 (< 0 (size!2570 lt!65595)))))

(assert (= (and d!48060 res!88230) b!192438))

(assert (=> d!48060 m!197051))

(assert (=> d!48060 m!197051))

(assert (=> d!48060 m!197061))

(assert (=> d!48060 m!197043))

(declare-fun m!199191 () Bool)

(assert (=> d!48060 m!199191))

(assert (=> b!192438 m!199081))

(assert (=> b!191262 d!48060))

(declare-fun d!48062 () Bool)

(assert (=> d!48062 (= (tail!385 (drop!163 lt!65599 0)) (t!28932 (drop!163 lt!65599 0)))))

(assert (=> b!191262 d!48062))

(declare-fun b!192439 () Bool)

(declare-fun e!118313 () Int)

(declare-fun call!8892 () Int)

(assert (=> b!192439 (= e!118313 call!8892)))

(declare-fun b!192440 () Bool)

(declare-fun e!118317 () Bool)

(declare-fun lt!66164 () List!3230)

(assert (=> b!192440 (= e!118317 (= (size!2570 lt!66164) e!118313))))

(declare-fun c!36751 () Bool)

(assert (=> b!192440 (= c!36751 (<= (+ 0 1) 0))))

(declare-fun bm!8887 () Bool)

(assert (=> bm!8887 (= call!8892 (size!2570 lt!65599))))

(declare-fun b!192441 () Bool)

(declare-fun e!118315 () Int)

(assert (=> b!192441 (= e!118315 0)))

(declare-fun d!48064 () Bool)

(assert (=> d!48064 e!118317))

(declare-fun res!88231 () Bool)

(assert (=> d!48064 (=> (not res!88231) (not e!118317))))

(assert (=> d!48064 (= res!88231 (= ((_ map implies) (content!431 lt!66164) (content!431 lt!65599)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118314 () List!3230)

(assert (=> d!48064 (= lt!66164 e!118314)))

(declare-fun c!36748 () Bool)

(assert (=> d!48064 (= c!36748 ((_ is Nil!3220) lt!65599))))

(assert (=> d!48064 (= (drop!163 lt!65599 (+ 0 1)) lt!66164)))

(declare-fun b!192442 () Bool)

(assert (=> b!192442 (= e!118315 (- call!8892 (+ 0 1)))))

(declare-fun b!192443 () Bool)

(declare-fun e!118316 () List!3230)

(assert (=> b!192443 (= e!118314 e!118316)))

(declare-fun c!36749 () Bool)

(assert (=> b!192443 (= c!36749 (<= (+ 0 1) 0))))

(declare-fun b!192444 () Bool)

(assert (=> b!192444 (= e!118313 e!118315)))

(declare-fun c!36750 () Bool)

(assert (=> b!192444 (= c!36750 (>= (+ 0 1) call!8892))))

(declare-fun b!192445 () Bool)

(assert (=> b!192445 (= e!118314 Nil!3220)))

(declare-fun b!192446 () Bool)

(assert (=> b!192446 (= e!118316 lt!65599)))

(declare-fun b!192447 () Bool)

(assert (=> b!192447 (= e!118316 (drop!163 (t!28932 lt!65599) (- (+ 0 1) 1)))))

(assert (= (and d!48064 c!36748) b!192445))

(assert (= (and d!48064 (not c!36748)) b!192443))

(assert (= (and b!192443 c!36749) b!192446))

(assert (= (and b!192443 (not c!36749)) b!192447))

(assert (= (and d!48064 res!88231) b!192440))

(assert (= (and b!192440 c!36751) b!192439))

(assert (= (and b!192440 (not c!36751)) b!192444))

(assert (= (and b!192444 c!36750) b!192441))

(assert (= (and b!192444 (not c!36750)) b!192442))

(assert (= (or b!192439 b!192444 b!192442) bm!8887))

(declare-fun m!199193 () Bool)

(assert (=> b!192440 m!199193))

(assert (=> bm!8887 m!199051))

(declare-fun m!199195 () Bool)

(assert (=> d!48064 m!199195))

(assert (=> d!48064 m!199159))

(declare-fun m!199197 () Bool)

(assert (=> b!192447 m!199197))

(assert (=> b!191262 d!48064))

(declare-fun d!48066 () Bool)

(declare-fun lt!66165 () Token!930)

(assert (=> d!48066 (= lt!66165 (apply!497 (list!1182 (seqFromList!564 (t!28932 tokens!465))) 0))))

(assert (=> d!48066 (= lt!66165 (apply!498 (c!36427 (seqFromList!564 (t!28932 tokens!465))) 0))))

(declare-fun e!118318 () Bool)

(assert (=> d!48066 e!118318))

(declare-fun res!88232 () Bool)

(assert (=> d!48066 (=> (not res!88232) (not e!118318))))

(assert (=> d!48066 (= res!88232 (<= 0 0))))

(assert (=> d!48066 (= (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0) lt!66165)))

(declare-fun b!192448 () Bool)

(assert (=> b!192448 (= e!118318 (< 0 (size!2563 (seqFromList!564 (t!28932 tokens!465)))))))

(assert (= (and d!48066 res!88232) b!192448))

(assert (=> d!48066 m!196435))

(assert (=> d!48066 m!197025))

(assert (=> d!48066 m!197025))

(declare-fun m!199199 () Bool)

(assert (=> d!48066 m!199199))

(declare-fun m!199201 () Bool)

(assert (=> d!48066 m!199201))

(assert (=> b!192448 m!196435))

(assert (=> b!192448 m!197033))

(assert (=> b!191262 d!48066))

(declare-fun d!48068 () Bool)

(declare-fun lt!66166 () BalanceConc!2024)

(assert (=> d!48068 (= (list!1179 lt!66166) (originalCharacters!636 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))))

(assert (=> d!48068 (= lt!66166 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))) (value!21216 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))))

(assert (=> d!48068 (= (charsOf!248 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) lt!66166)))

(declare-fun b_lambda!4681 () Bool)

(assert (=> (not b_lambda!4681) (not d!48068)))

(declare-fun tb!7877 () Bool)

(declare-fun t!29065 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))) t!29065) tb!7877))

(declare-fun b!192449 () Bool)

(declare-fun e!118319 () Bool)

(declare-fun tp!88907 () Bool)

(assert (=> b!192449 (= e!118319 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))) (value!21216 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))) tp!88907))))

(declare-fun result!10818 () Bool)

(assert (=> tb!7877 (= result!10818 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))) (value!21216 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))) e!118319))))

(assert (= tb!7877 b!192449))

(declare-fun m!199203 () Bool)

(assert (=> b!192449 m!199203))

(declare-fun m!199205 () Bool)

(assert (=> tb!7877 m!199205))

(assert (=> d!48068 t!29065))

(declare-fun b_and!13381 () Bool)

(assert (= b_and!13319 (and (=> t!29065 result!10818) b_and!13381)))

(declare-fun tb!7879 () Bool)

(declare-fun t!29067 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))) t!29067) tb!7879))

(declare-fun result!10820 () Bool)

(assert (= result!10820 result!10818))

(assert (=> d!48068 t!29067))

(declare-fun b_and!13383 () Bool)

(assert (= b_and!13287 (and (=> t!29067 result!10820) b_and!13383)))

(declare-fun t!29069 () Bool)

(declare-fun tb!7881 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))) t!29069) tb!7881))

(declare-fun result!10822 () Bool)

(assert (= result!10822 result!10818))

(assert (=> d!48068 t!29069))

(declare-fun b_and!13385 () Bool)

(assert (= b_and!13315 (and (=> t!29069 result!10822) b_and!13385)))

(declare-fun t!29071 () Bool)

(declare-fun tb!7883 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))) t!29071) tb!7883))

(declare-fun result!10824 () Bool)

(assert (= result!10824 result!10818))

(assert (=> d!48068 t!29071))

(declare-fun b_and!13387 () Bool)

(assert (= b_and!13291 (and (=> t!29071 result!10824) b_and!13387)))

(declare-fun tb!7885 () Bool)

(declare-fun t!29073 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))) t!29073) tb!7885))

(declare-fun result!10826 () Bool)

(assert (= result!10826 result!10818))

(assert (=> d!48068 t!29073))

(declare-fun b_and!13389 () Bool)

(assert (= b_and!13289 (and (=> t!29073 result!10826) b_and!13389)))

(declare-fun m!199207 () Bool)

(assert (=> d!48068 m!199207))

(declare-fun m!199209 () Bool)

(assert (=> d!48068 m!199209))

(assert (=> b!191262 d!48068))

(declare-fun d!48070 () Bool)

(declare-fun res!88237 () Bool)

(declare-fun e!118324 () Bool)

(assert (=> d!48070 (=> res!88237 e!118324)))

(assert (=> d!48070 (= res!88237 ((_ is Nil!3219) rules!1920))))

(assert (=> d!48070 (= (noDuplicateTag!167 thiss!17480 rules!1920 Nil!3222) e!118324)))

(declare-fun b!192454 () Bool)

(declare-fun e!118325 () Bool)

(assert (=> b!192454 (= e!118324 e!118325)))

(declare-fun res!88238 () Bool)

(assert (=> b!192454 (=> (not res!88238) (not e!118325))))

(declare-fun contains!517 (List!3232 String!4155) Bool)

(assert (=> b!192454 (= res!88238 (not (contains!517 Nil!3222 (tag!771 (h!8616 rules!1920)))))))

(declare-fun b!192455 () Bool)

(assert (=> b!192455 (= e!118325 (noDuplicateTag!167 thiss!17480 (t!28931 rules!1920) (Cons!3222 (tag!771 (h!8616 rules!1920)) Nil!3222)))))

(assert (= (and d!48070 (not res!88237)) b!192454))

(assert (= (and b!192454 res!88238) b!192455))

(declare-fun m!199211 () Bool)

(assert (=> b!192454 m!199211))

(declare-fun m!199213 () Bool)

(assert (=> b!192455 m!199213))

(assert (=> b!191584 d!48070))

(declare-fun b!192467 () Bool)

(declare-fun e!118331 () List!3228)

(assert (=> b!192467 (= e!118331 (++!768 (list!1183 (left!2547 (c!36425 (seqFromList!563 lt!65430)))) (list!1183 (right!2877 (c!36425 (seqFromList!563 lt!65430))))))))

(declare-fun d!48072 () Bool)

(declare-fun c!36756 () Bool)

(assert (=> d!48072 (= c!36756 ((_ is Empty!1008) (c!36425 (seqFromList!563 lt!65430))))))

(declare-fun e!118330 () List!3228)

(assert (=> d!48072 (= (list!1183 (c!36425 (seqFromList!563 lt!65430))) e!118330)))

(declare-fun b!192465 () Bool)

(assert (=> b!192465 (= e!118330 e!118331)))

(declare-fun c!36757 () Bool)

(assert (=> b!192465 (= c!36757 ((_ is Leaf!1644) (c!36425 (seqFromList!563 lt!65430))))))

(declare-fun b!192466 () Bool)

(declare-fun list!1187 (IArray!2017) List!3228)

(assert (=> b!192466 (= e!118331 (list!1187 (xs!3603 (c!36425 (seqFromList!563 lt!65430)))))))

(declare-fun b!192464 () Bool)

(assert (=> b!192464 (= e!118330 Nil!3218)))

(assert (= (and d!48072 c!36756) b!192464))

(assert (= (and d!48072 (not c!36756)) b!192465))

(assert (= (and b!192465 c!36757) b!192466))

(assert (= (and b!192465 (not c!36757)) b!192467))

(declare-fun m!199215 () Bool)

(assert (=> b!192467 m!199215))

(declare-fun m!199217 () Bool)

(assert (=> b!192467 m!199217))

(assert (=> b!192467 m!199215))

(assert (=> b!192467 m!199217))

(declare-fun m!199219 () Bool)

(assert (=> b!192467 m!199219))

(declare-fun m!199221 () Bool)

(assert (=> b!192466 m!199221))

(assert (=> d!47650 d!48072))

(declare-fun d!48074 () Bool)

(assert (=> d!48074 (= (isEmpty!1609 (tail!386 lt!65438)) ((_ is Nil!3218) (tail!386 lt!65438)))))

(assert (=> b!191568 d!48074))

(declare-fun d!48076 () Bool)

(assert (=> d!48076 (= (tail!386 lt!65438) (t!28930 lt!65438))))

(assert (=> b!191568 d!48076))

(declare-fun d!48078 () Bool)

(declare-fun lt!66167 () Int)

(assert (=> d!48078 (= lt!66167 (size!2570 (list!1182 (_1!1867 lt!65938))))))

(assert (=> d!48078 (= lt!66167 (size!2571 (c!36427 (_1!1867 lt!65938))))))

(assert (=> d!48078 (= (size!2563 (_1!1867 lt!65938)) lt!66167)))

(declare-fun bs!19016 () Bool)

(assert (= bs!19016 d!48078))

(assert (=> bs!19016 m!198147))

(assert (=> bs!19016 m!198147))

(declare-fun m!199223 () Bool)

(assert (=> bs!19016 m!199223))

(declare-fun m!199225 () Bool)

(assert (=> bs!19016 m!199225))

(assert (=> d!47732 d!48078))

(declare-fun b!192488 () Bool)

(declare-fun e!118347 () tuple2!3302)

(assert (=> b!192488 (= e!118347 (tuple2!3303 (BalanceConc!2027 Empty!1009) lt!65411))))

(declare-fun lt!66257 () tuple2!3302)

(declare-fun e!118349 () Bool)

(declare-fun b!192489 () Bool)

(declare-fun lexRec!69 (LexerInterface!479 List!3229 BalanceConc!2024) tuple2!3302)

(assert (=> b!192489 (= e!118349 (= (list!1179 (_2!1867 lt!66257)) (list!1179 (_2!1867 (lexRec!69 thiss!17480 rules!1920 lt!65411)))))))

(declare-fun b!192490 () Bool)

(declare-fun e!118346 () tuple2!3302)

(assert (=> b!192490 (= e!118346 (tuple2!3303 (BalanceConc!2027 Empty!1009) lt!65411))))

(declare-fun d!48080 () Bool)

(assert (=> d!48080 e!118349))

(declare-fun res!88247 () Bool)

(assert (=> d!48080 (=> (not res!88247) (not e!118349))))

(assert (=> d!48080 (= res!88247 (= (list!1182 (_1!1867 lt!66257)) (list!1182 (_1!1867 (lexRec!69 thiss!17480 rules!1920 lt!65411)))))))

(assert (=> d!48080 (= lt!66257 e!118346)))

(declare-fun c!36766 () Bool)

(declare-fun lt!66248 () Option!471)

(assert (=> d!48080 (= c!36766 ((_ is Some!470) lt!66248))))

(declare-fun maxPrefixZipperSequenceV2!54 (LexerInterface!479 List!3229 BalanceConc!2024 BalanceConc!2024) Option!471)

(assert (=> d!48080 (= lt!66248 (maxPrefixZipperSequenceV2!54 thiss!17480 rules!1920 lt!65411 lt!65411))))

(declare-fun lt!66250 () Unit!3036)

(declare-fun lt!66238 () Unit!3036)

(assert (=> d!48080 (= lt!66250 lt!66238)))

(declare-fun lt!66265 () List!3228)

(declare-fun lt!66267 () List!3228)

(declare-fun isSuffix!54 (List!3228 List!3228) Bool)

(assert (=> d!48080 (isSuffix!54 lt!66265 (++!768 lt!66267 lt!66265))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!54 (List!3228 List!3228) Unit!3036)

(assert (=> d!48080 (= lt!66238 (lemmaConcatTwoListThenFSndIsSuffix!54 lt!66267 lt!66265))))

(assert (=> d!48080 (= lt!66265 (list!1179 lt!65411))))

(assert (=> d!48080 (= lt!66267 (list!1179 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!48080 (= (lexTailRecV2!122 thiss!17480 rules!1920 lt!65411 (BalanceConc!2025 Empty!1008) lt!65411 (BalanceConc!2027 Empty!1009)) lt!66257)))

(declare-fun lt!66263 () Option!471)

(declare-fun b!192491 () Bool)

(declare-fun lt!66253 () tuple2!3302)

(assert (=> b!192491 (= lt!66253 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!66263))))))

(declare-fun e!118348 () tuple2!3302)

(declare-fun prepend!152 (BalanceConc!2026 Token!930) BalanceConc!2026)

(assert (=> b!192491 (= e!118348 (tuple2!3303 (prepend!152 (_1!1867 lt!66253) (_1!1868 (v!13981 lt!66263))) (_2!1867 lt!66253)))))

(declare-fun b!192492 () Bool)

(declare-fun lt!66239 () BalanceConc!2024)

(declare-fun append!74 (BalanceConc!2026 Token!930) BalanceConc!2026)

(assert (=> b!192492 (= e!118346 (lexTailRecV2!122 thiss!17480 rules!1920 lt!65411 lt!66239 (_2!1868 (v!13981 lt!66248)) (append!74 (BalanceConc!2027 Empty!1009) (_1!1868 (v!13981 lt!66248)))))))

(declare-fun lt!66258 () tuple2!3302)

(assert (=> b!192492 (= lt!66258 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!66248))))))

(declare-fun lt!66262 () List!3228)

(assert (=> b!192492 (= lt!66262 (list!1179 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!66246 () List!3228)

(assert (=> b!192492 (= lt!66246 (list!1179 (charsOf!248 (_1!1868 (v!13981 lt!66248)))))))

(declare-fun lt!66270 () List!3228)

(assert (=> b!192492 (= lt!66270 (list!1179 (_2!1868 (v!13981 lt!66248))))))

(declare-fun lt!66240 () Unit!3036)

(assert (=> b!192492 (= lt!66240 (lemmaConcatAssociativity!282 lt!66262 lt!66246 lt!66270))))

(assert (=> b!192492 (= (++!768 (++!768 lt!66262 lt!66246) lt!66270) (++!768 lt!66262 (++!768 lt!66246 lt!66270)))))

(declare-fun lt!66254 () Unit!3036)

(assert (=> b!192492 (= lt!66254 lt!66240)))

(declare-fun lt!66237 () Option!471)

(assert (=> b!192492 (= lt!66237 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 lt!65411))))

(declare-fun c!36765 () Bool)

(assert (=> b!192492 (= c!36765 ((_ is Some!470) lt!66237))))

(assert (=> b!192492 (= (lexRec!69 thiss!17480 rules!1920 lt!65411) e!118347)))

(declare-fun lt!66241 () Unit!3036)

(declare-fun Unit!3062 () Unit!3036)

(assert (=> b!192492 (= lt!66241 Unit!3062)))

(declare-fun lt!66255 () List!3230)

(assert (=> b!192492 (= lt!66255 (list!1182 (BalanceConc!2027 Empty!1009)))))

(declare-fun lt!66269 () List!3230)

(assert (=> b!192492 (= lt!66269 (Cons!3220 (_1!1868 (v!13981 lt!66248)) Nil!3220))))

(declare-fun lt!66244 () List!3230)

(assert (=> b!192492 (= lt!66244 (list!1182 (_1!1867 lt!66258)))))

(declare-fun lt!66260 () Unit!3036)

(declare-fun lemmaConcatAssociativity!283 (List!3230 List!3230 List!3230) Unit!3036)

(assert (=> b!192492 (= lt!66260 (lemmaConcatAssociativity!283 lt!66255 lt!66269 lt!66244))))

(declare-fun ++!773 (List!3230 List!3230) List!3230)

(assert (=> b!192492 (= (++!773 (++!773 lt!66255 lt!66269) lt!66244) (++!773 lt!66255 (++!773 lt!66269 lt!66244)))))

(declare-fun lt!66261 () Unit!3036)

(assert (=> b!192492 (= lt!66261 lt!66260)))

(declare-fun lt!66247 () List!3228)

(assert (=> b!192492 (= lt!66247 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (_1!1868 (v!13981 lt!66248))))))))

(declare-fun lt!66245 () List!3228)

(assert (=> b!192492 (= lt!66245 (list!1179 (_2!1868 (v!13981 lt!66248))))))

(declare-fun lt!66259 () List!3230)

(assert (=> b!192492 (= lt!66259 (list!1182 (append!74 (BalanceConc!2027 Empty!1009) (_1!1868 (v!13981 lt!66248)))))))

(declare-fun lt!66252 () Unit!3036)

(declare-fun lemmaLexThenLexPrefix!56 (LexerInterface!479 List!3229 List!3228 List!3228 List!3230 List!3230 List!3228) Unit!3036)

(assert (=> b!192492 (= lt!66252 (lemmaLexThenLexPrefix!56 thiss!17480 rules!1920 lt!66247 lt!66245 lt!66259 (list!1182 (_1!1867 lt!66258)) (list!1179 (_2!1867 lt!66258))))))

(assert (=> b!192492 (= (lexList!135 thiss!17480 rules!1920 lt!66247) (tuple2!3311 lt!66259 Nil!3218))))

(declare-fun lt!66268 () Unit!3036)

(assert (=> b!192492 (= lt!66268 lt!66252)))

(declare-fun lt!66266 () BalanceConc!2024)

(assert (=> b!192492 (= lt!66266 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!66248)))))))

(assert (=> b!192492 (= lt!66263 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 lt!66266))))

(declare-fun c!36764 () Bool)

(assert (=> b!192492 (= c!36764 ((_ is Some!470) lt!66263))))

(assert (=> b!192492 (= (lexRec!69 thiss!17480 rules!1920 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!66248))))) e!118348)))

(declare-fun lt!66242 () Unit!3036)

(declare-fun Unit!3063 () Unit!3036)

(assert (=> b!192492 (= lt!66242 Unit!3063)))

(assert (=> b!192492 (= lt!66239 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!66248)))))))

(declare-fun lt!66249 () List!3228)

(assert (=> b!192492 (= lt!66249 (list!1179 lt!66239))))

(declare-fun lt!66243 () List!3228)

(assert (=> b!192492 (= lt!66243 (list!1179 (_2!1868 (v!13981 lt!66248))))))

(declare-fun lt!66256 () Unit!3036)

(assert (=> b!192492 (= lt!66256 (lemmaConcatTwoListThenFSndIsSuffix!54 lt!66249 lt!66243))))

(assert (=> b!192492 (isSuffix!54 lt!66243 (++!768 lt!66249 lt!66243))))

(declare-fun lt!66264 () Unit!3036)

(assert (=> b!192492 (= lt!66264 lt!66256)))

(declare-fun b!192493 () Bool)

(declare-fun lt!66251 () tuple2!3302)

(assert (=> b!192493 (= lt!66251 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!66237))))))

(assert (=> b!192493 (= e!118347 (tuple2!3303 (prepend!152 (_1!1867 lt!66251) (_1!1868 (v!13981 lt!66237))) (_2!1867 lt!66251)))))

(declare-fun b!192494 () Bool)

(assert (=> b!192494 (= e!118348 (tuple2!3303 (BalanceConc!2027 Empty!1009) lt!66266))))

(assert (= (and d!48080 c!36766) b!192492))

(assert (= (and d!48080 (not c!36766)) b!192490))

(assert (= (and b!192492 c!36765) b!192493))

(assert (= (and b!192492 (not c!36765)) b!192488))

(assert (= (and b!192492 c!36764) b!192491))

(assert (= (and b!192492 (not c!36764)) b!192494))

(assert (= (and d!48080 res!88247) b!192489))

(declare-fun m!199231 () Bool)

(assert (=> b!192493 m!199231))

(declare-fun m!199233 () Bool)

(assert (=> b!192493 m!199233))

(assert (=> d!48080 m!197539))

(declare-fun m!199235 () Bool)

(assert (=> d!48080 m!199235))

(declare-fun m!199237 () Bool)

(assert (=> d!48080 m!199237))

(assert (=> d!48080 m!198149))

(declare-fun m!199239 () Bool)

(assert (=> d!48080 m!199239))

(assert (=> d!48080 m!199235))

(declare-fun m!199241 () Bool)

(assert (=> d!48080 m!199241))

(declare-fun m!199243 () Bool)

(assert (=> d!48080 m!199243))

(declare-fun m!199245 () Bool)

(assert (=> d!48080 m!199245))

(declare-fun m!199247 () Bool)

(assert (=> d!48080 m!199247))

(declare-fun m!199249 () Bool)

(assert (=> b!192491 m!199249))

(declare-fun m!199251 () Bool)

(assert (=> b!192491 m!199251))

(assert (=> b!192492 m!197539))

(declare-fun m!199253 () Bool)

(assert (=> b!192492 m!199253))

(declare-fun m!199255 () Bool)

(assert (=> b!192492 m!199255))

(assert (=> b!192492 m!199253))

(declare-fun m!199257 () Bool)

(assert (=> b!192492 m!199257))

(declare-fun m!199259 () Bool)

(assert (=> b!192492 m!199259))

(declare-fun m!199261 () Bool)

(assert (=> b!192492 m!199261))

(declare-fun m!199263 () Bool)

(assert (=> b!192492 m!199263))

(declare-fun m!199265 () Bool)

(assert (=> b!192492 m!199265))

(declare-fun m!199267 () Bool)

(assert (=> b!192492 m!199267))

(declare-fun m!199269 () Bool)

(assert (=> b!192492 m!199269))

(declare-fun m!199271 () Bool)

(assert (=> b!192492 m!199271))

(declare-fun m!199273 () Bool)

(assert (=> b!192492 m!199273))

(declare-fun m!199275 () Bool)

(assert (=> b!192492 m!199275))

(declare-fun m!199277 () Bool)

(assert (=> b!192492 m!199277))

(declare-fun m!199279 () Bool)

(assert (=> b!192492 m!199279))

(declare-fun m!199281 () Bool)

(assert (=> b!192492 m!199281))

(declare-fun m!199283 () Bool)

(assert (=> b!192492 m!199283))

(assert (=> b!192492 m!199271))

(declare-fun m!199285 () Bool)

(assert (=> b!192492 m!199285))

(declare-fun m!199287 () Bool)

(assert (=> b!192492 m!199287))

(declare-fun m!199289 () Bool)

(assert (=> b!192492 m!199289))

(declare-fun m!199291 () Bool)

(assert (=> b!192492 m!199291))

(assert (=> b!192492 m!199279))

(assert (=> b!192492 m!199283))

(declare-fun m!199293 () Bool)

(assert (=> b!192492 m!199293))

(declare-fun m!199295 () Bool)

(assert (=> b!192492 m!199295))

(declare-fun m!199297 () Bool)

(assert (=> b!192492 m!199297))

(declare-fun m!199299 () Bool)

(assert (=> b!192492 m!199299))

(declare-fun m!199301 () Bool)

(assert (=> b!192492 m!199301))

(assert (=> b!192492 m!199271))

(assert (=> b!192492 m!199269))

(declare-fun m!199303 () Bool)

(assert (=> b!192492 m!199303))

(assert (=> b!192492 m!199253))

(assert (=> b!192492 m!199299))

(declare-fun m!199305 () Bool)

(assert (=> b!192492 m!199305))

(declare-fun m!199307 () Bool)

(assert (=> b!192492 m!199307))

(declare-fun m!199309 () Bool)

(assert (=> b!192492 m!199309))

(assert (=> b!192492 m!199247))

(assert (=> b!192492 m!197539))

(assert (=> b!192492 m!199257))

(declare-fun m!199311 () Bool)

(assert (=> b!192492 m!199311))

(assert (=> b!192492 m!199263))

(assert (=> b!192492 m!199275))

(assert (=> b!192492 m!199267))

(declare-fun m!199313 () Bool)

(assert (=> b!192492 m!199313))

(assert (=> b!192492 m!199295))

(declare-fun m!199315 () Bool)

(assert (=> b!192489 m!199315))

(assert (=> b!192489 m!199247))

(declare-fun m!199317 () Bool)

(assert (=> b!192489 m!199317))

(assert (=> d!47732 d!48080))

(declare-fun d!48086 () Bool)

(assert (=> d!48086 (= (get!938 lt!65874) (v!13983 lt!65874))))

(assert (=> b!191691 d!48086))

(declare-fun d!48088 () Bool)

(declare-fun dynLambda!1379 (Int BalanceConc!2024) TokenValue!615)

(assert (=> d!48088 (= (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65874))))) (dynLambda!1379 (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874))))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65874))))))))

(declare-fun b_lambda!4683 () Bool)

(assert (=> (not b_lambda!4683) (not d!48088)))

(declare-fun tb!7887 () Bool)

(declare-fun t!29076 () Bool)

(assert (=> (and b!190916 (= (toValue!1264 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29076) tb!7887))

(declare-fun result!10828 () Bool)

(assert (=> tb!7887 (= result!10828 (inv!21 (dynLambda!1379 (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874))))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65874)))))))))

(declare-fun m!199319 () Bool)

(assert (=> tb!7887 m!199319))

(assert (=> d!48088 t!29076))

(declare-fun b_and!13391 () Bool)

(assert (= b_and!13245 (and (=> t!29076 result!10828) b_and!13391)))

(declare-fun tb!7889 () Bool)

(declare-fun t!29078 () Bool)

(assert (=> (and b!190938 (= (toValue!1264 (transformation!593 (h!8616 rules!1920))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29078) tb!7889))

(declare-fun result!10832 () Bool)

(assert (= result!10832 result!10828))

(assert (=> d!48088 t!29078))

(declare-fun b_and!13393 () Bool)

(assert (= b_and!13249 (and (=> t!29078 result!10832) b_and!13393)))

(declare-fun t!29080 () Bool)

(declare-fun tb!7891 () Bool)

(assert (=> (and b!191891 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29080) tb!7891))

(declare-fun result!10834 () Bool)

(assert (= result!10834 result!10828))

(assert (=> d!48088 t!29080))

(declare-fun b_and!13395 () Bool)

(assert (= b_and!13313 (and (=> t!29080 result!10834) b_and!13395)))

(declare-fun t!29082 () Bool)

(declare-fun tb!7893 () Bool)

(assert (=> (and b!191921 (= (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29082) tb!7893))

(declare-fun result!10836 () Bool)

(assert (= result!10836 result!10828))

(assert (=> d!48088 t!29082))

(declare-fun b_and!13397 () Bool)

(assert (= b_and!13317 (and (=> t!29082 result!10836) b_and!13397)))

(declare-fun tb!7895 () Bool)

(declare-fun t!29084 () Bool)

(assert (=> (and b!190906 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29084) tb!7895))

(declare-fun result!10838 () Bool)

(assert (= result!10838 result!10828))

(assert (=> d!48088 t!29084))

(declare-fun b_and!13399 () Bool)

(assert (= b_and!13253 (and (=> t!29084 result!10838) b_and!13399)))

(assert (=> d!48088 m!197871))

(declare-fun m!199321 () Bool)

(assert (=> d!48088 m!199321))

(assert (=> b!191691 d!48088))

(declare-fun d!48090 () Bool)

(assert (=> d!48090 (= (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65874)))) (fromListB!208 (originalCharacters!636 (_1!1869 (get!938 lt!65874)))))))

(declare-fun bs!19018 () Bool)

(assert (= bs!19018 d!48090))

(declare-fun m!199323 () Bool)

(assert (=> bs!19018 m!199323))

(assert (=> b!191691 d!48090))

(declare-fun d!48092 () Bool)

(assert (=> d!48092 (= (get!937 lt!65932) (v!13982 lt!65932))))

(assert (=> b!191808 d!48092))

(declare-fun b!192523 () Bool)

(declare-fun e!118365 () Bool)

(declare-fun e!118366 () Bool)

(assert (=> b!192523 (= e!118365 e!118366)))

(declare-fun res!88263 () Bool)

(assert (=> b!192523 (=> (not res!88263) (not e!118366))))

(declare-fun height!103 (Conc!1009) Int)

(assert (=> b!192523 (= res!88263 (<= (- 1) (- (height!103 (left!2548 (c!36427 lt!65908))) (height!103 (right!2878 (c!36427 lt!65908))))))))

(declare-fun d!48094 () Bool)

(declare-fun res!88267 () Bool)

(assert (=> d!48094 (=> res!88267 e!118365)))

(assert (=> d!48094 (= res!88267 (not ((_ is Node!1009) (c!36427 lt!65908))))))

(assert (=> d!48094 (= (isBalanced!264 (c!36427 lt!65908)) e!118365)))

(declare-fun b!192524 () Bool)

(declare-fun res!88262 () Bool)

(assert (=> b!192524 (=> (not res!88262) (not e!118366))))

(assert (=> b!192524 (= res!88262 (isBalanced!264 (left!2548 (c!36427 lt!65908))))))

(declare-fun b!192525 () Bool)

(declare-fun res!88265 () Bool)

(assert (=> b!192525 (=> (not res!88265) (not e!118366))))

(assert (=> b!192525 (= res!88265 (<= (- (height!103 (left!2548 (c!36427 lt!65908))) (height!103 (right!2878 (c!36427 lt!65908)))) 1))))

(declare-fun b!192526 () Bool)

(declare-fun res!88264 () Bool)

(assert (=> b!192526 (=> (not res!88264) (not e!118366))))

(assert (=> b!192526 (= res!88264 (isBalanced!264 (right!2878 (c!36427 lt!65908))))))

(declare-fun b!192527 () Bool)

(assert (=> b!192527 (= e!118366 (not (isEmpty!1620 (right!2878 (c!36427 lt!65908)))))))

(declare-fun b!192528 () Bool)

(declare-fun res!88266 () Bool)

(assert (=> b!192528 (=> (not res!88266) (not e!118366))))

(assert (=> b!192528 (= res!88266 (not (isEmpty!1620 (left!2548 (c!36427 lt!65908)))))))

(assert (= (and d!48094 (not res!88267)) b!192523))

(assert (= (and b!192523 res!88263) b!192525))

(assert (= (and b!192525 res!88265) b!192524))

(assert (= (and b!192524 res!88262) b!192526))

(assert (= (and b!192526 res!88264) b!192528))

(assert (= (and b!192528 res!88266) b!192527))

(declare-fun m!199325 () Bool)

(assert (=> b!192526 m!199325))

(declare-fun m!199327 () Bool)

(assert (=> b!192523 m!199327))

(declare-fun m!199329 () Bool)

(assert (=> b!192523 m!199329))

(declare-fun m!199331 () Bool)

(assert (=> b!192528 m!199331))

(declare-fun m!199333 () Bool)

(assert (=> b!192527 m!199333))

(declare-fun m!199335 () Bool)

(assert (=> b!192524 m!199335))

(assert (=> b!192525 m!199327))

(assert (=> b!192525 m!199329))

(assert (=> b!191737 d!48094))

(declare-fun b!192529 () Bool)

(declare-fun e!118367 () Bool)

(declare-fun lt!66343 () Option!473)

(assert (=> b!192529 (= e!118367 (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!66343)))))))

(declare-fun b!192530 () Bool)

(declare-fun res!88273 () Bool)

(assert (=> b!192530 (=> (not res!88273) (not e!118367))))

(assert (=> b!192530 (= res!88273 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66343)))) (originalCharacters!636 (_1!1869 (get!938 lt!66343)))))))

(declare-fun b!192531 () Bool)

(declare-fun e!118368 () Option!473)

(declare-fun lt!66341 () Option!473)

(declare-fun lt!66339 () Option!473)

(assert (=> b!192531 (= e!118368 (ite (and ((_ is None!472) lt!66341) ((_ is None!472) lt!66339)) None!472 (ite ((_ is None!472) lt!66339) lt!66341 (ite ((_ is None!472) lt!66341) lt!66339 (ite (>= (size!2562 (_1!1869 (v!13983 lt!66341))) (size!2562 (_1!1869 (v!13983 lt!66339)))) lt!66341 lt!66339)))))))

(declare-fun call!8893 () Option!473)

(assert (=> b!192531 (= lt!66341 call!8893)))

(assert (=> b!192531 (= lt!66339 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807)))))

(declare-fun b!192533 () Bool)

(declare-fun res!88271 () Bool)

(assert (=> b!192533 (=> (not res!88271) (not e!118367))))

(assert (=> b!192533 (= res!88271 (= (value!21216 (_1!1869 (get!938 lt!66343))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!66343)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!66343)))))))))

(declare-fun bm!8888 () Bool)

(assert (=> bm!8888 (= call!8893 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807)))))

(declare-fun b!192534 () Bool)

(declare-fun res!88269 () Bool)

(assert (=> b!192534 (=> (not res!88269) (not e!118367))))

(assert (=> b!192534 (= res!88269 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!66343)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66343))))))))

(declare-fun b!192535 () Bool)

(declare-fun res!88268 () Bool)

(assert (=> b!192535 (=> (not res!88268) (not e!118367))))

(assert (=> b!192535 (= res!88268 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66343)))) (_2!1869 (get!938 lt!66343))) (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807)))))

(declare-fun d!48096 () Bool)

(declare-fun e!118369 () Bool)

(assert (=> d!48096 e!118369))

(declare-fun res!88272 () Bool)

(assert (=> d!48096 (=> res!88272 e!118369)))

(assert (=> d!48096 (= res!88272 (isEmpty!1617 lt!66343))))

(assert (=> d!48096 (= lt!66343 e!118368)))

(declare-fun c!36773 () Bool)

(assert (=> d!48096 (= c!36773 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!66340 () Unit!3036)

(declare-fun lt!66342 () Unit!3036)

(assert (=> d!48096 (= lt!66340 lt!66342)))

(assert (=> d!48096 (isPrefix!289 (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807) (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807))))

(assert (=> d!48096 (= lt!66342 (lemmaIsPrefixRefl!159 (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807) (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807)))))

(assert (=> d!48096 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!48096 (= (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807)) lt!66343)))

(declare-fun b!192532 () Bool)

(assert (=> b!192532 (= e!118369 e!118367)))

(declare-fun res!88270 () Bool)

(assert (=> b!192532 (=> (not res!88270) (not e!118367))))

(assert (=> b!192532 (= res!88270 (isDefined!323 lt!66343))))

(declare-fun b!192536 () Bool)

(assert (=> b!192536 (= e!118368 call!8893)))

(declare-fun b!192537 () Bool)

(declare-fun res!88274 () Bool)

(assert (=> b!192537 (=> (not res!88274) (not e!118367))))

(assert (=> b!192537 (= res!88274 (< (size!2566 (_2!1869 (get!938 lt!66343))) (size!2566 (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807))))))

(assert (= (and d!48096 c!36773) b!192536))

(assert (= (and d!48096 (not c!36773)) b!192531))

(assert (= (or b!192536 b!192531) bm!8888))

(assert (= (and d!48096 (not res!88272)) b!192532))

(assert (= (and b!192532 res!88270) b!192530))

(assert (= (and b!192530 res!88273) b!192537))

(assert (= (and b!192537 res!88274) b!192535))

(assert (= (and b!192535 res!88268) b!192533))

(assert (= (and b!192533 res!88271) b!192534))

(assert (= (and b!192534 res!88269) b!192529))

(declare-fun m!199337 () Bool)

(assert (=> b!192535 m!199337))

(declare-fun m!199339 () Bool)

(assert (=> b!192535 m!199339))

(assert (=> b!192535 m!199339))

(declare-fun m!199341 () Bool)

(assert (=> b!192535 m!199341))

(assert (=> b!192535 m!199341))

(declare-fun m!199343 () Bool)

(assert (=> b!192535 m!199343))

(assert (=> bm!8888 m!197689))

(declare-fun m!199345 () Bool)

(assert (=> bm!8888 m!199345))

(declare-fun m!199347 () Bool)

(assert (=> b!192532 m!199347))

(assert (=> b!192530 m!199337))

(assert (=> b!192530 m!199339))

(assert (=> b!192530 m!199339))

(assert (=> b!192530 m!199341))

(assert (=> b!192529 m!199337))

(declare-fun m!199349 () Bool)

(assert (=> b!192529 m!199349))

(assert (=> b!192534 m!199337))

(assert (=> b!192534 m!199339))

(assert (=> b!192534 m!199339))

(assert (=> b!192534 m!199341))

(assert (=> b!192534 m!199341))

(declare-fun m!199351 () Bool)

(assert (=> b!192534 m!199351))

(assert (=> b!192533 m!199337))

(declare-fun m!199353 () Bool)

(assert (=> b!192533 m!199353))

(assert (=> b!192533 m!199353))

(declare-fun m!199355 () Bool)

(assert (=> b!192533 m!199355))

(declare-fun m!199357 () Bool)

(assert (=> d!48096 m!199357))

(assert (=> d!48096 m!197689))

(assert (=> d!48096 m!197689))

(declare-fun m!199359 () Bool)

(assert (=> d!48096 m!199359))

(assert (=> d!48096 m!197689))

(assert (=> d!48096 m!197689))

(declare-fun m!199361 () Bool)

(assert (=> d!48096 m!199361))

(assert (=> d!48096 m!196735))

(assert (=> b!192537 m!199337))

(declare-fun m!199363 () Bool)

(assert (=> b!192537 m!199363))

(assert (=> b!192537 m!197689))

(declare-fun m!199365 () Bool)

(assert (=> b!192537 m!199365))

(assert (=> b!192531 m!197689))

(declare-fun m!199367 () Bool)

(assert (=> b!192531 m!199367))

(assert (=> b!191608 d!48096))

(declare-fun d!48098 () Bool)

(assert (=> d!48098 (dynLambda!1375 lambda!5865 (h!8617 tokens!465))))

(declare-fun lt!66344 () Unit!3036)

(assert (=> d!48098 (= lt!66344 (choose!1935 tokens!465 lambda!5865 (h!8617 tokens!465)))))

(declare-fun e!118370 () Bool)

(assert (=> d!48098 e!118370))

(declare-fun res!88275 () Bool)

(assert (=> d!48098 (=> (not res!88275) (not e!118370))))

(assert (=> d!48098 (= res!88275 (forall!675 tokens!465 lambda!5865))))

(assert (=> d!48098 (= (forallContained!160 tokens!465 lambda!5865 (h!8617 tokens!465)) lt!66344)))

(declare-fun b!192538 () Bool)

(assert (=> b!192538 (= e!118370 (contains!514 tokens!465 (h!8617 tokens!465)))))

(assert (= (and d!48098 res!88275) b!192538))

(declare-fun b_lambda!4685 () Bool)

(assert (=> (not b_lambda!4685) (not d!48098)))

(declare-fun m!199369 () Bool)

(assert (=> d!48098 m!199369))

(declare-fun m!199371 () Bool)

(assert (=> d!48098 m!199371))

(declare-fun m!199373 () Bool)

(assert (=> d!48098 m!199373))

(assert (=> b!192538 m!197415))

(assert (=> b!191608 d!48098))

(assert (=> b!191608 d!47540))

(assert (=> b!191608 d!47514))

(declare-fun d!48100 () Bool)

(declare-fun e!118371 () Bool)

(assert (=> d!48100 e!118371))

(declare-fun res!88276 () Bool)

(assert (=> d!48100 (=> (not res!88276) (not e!118371))))

(declare-fun lt!66345 () List!3228)

(assert (=> d!48100 (= res!88276 (= (content!430 lt!66345) ((_ map or) (content!430 (list!1179 (charsOf!248 (h!8617 tokens!465)))) (content!430 lt!65807))))))

(declare-fun e!118372 () List!3228)

(assert (=> d!48100 (= lt!66345 e!118372)))

(declare-fun c!36774 () Bool)

(assert (=> d!48100 (= c!36774 ((_ is Nil!3218) (list!1179 (charsOf!248 (h!8617 tokens!465)))))))

(assert (=> d!48100 (= (++!768 (list!1179 (charsOf!248 (h!8617 tokens!465))) lt!65807) lt!66345)))

(declare-fun b!192539 () Bool)

(assert (=> b!192539 (= e!118372 lt!65807)))

(declare-fun b!192541 () Bool)

(declare-fun res!88277 () Bool)

(assert (=> b!192541 (=> (not res!88277) (not e!118371))))

(assert (=> b!192541 (= res!88277 (= (size!2566 lt!66345) (+ (size!2566 (list!1179 (charsOf!248 (h!8617 tokens!465)))) (size!2566 lt!65807))))))

(declare-fun b!192540 () Bool)

(assert (=> b!192540 (= e!118372 (Cons!3218 (h!8615 (list!1179 (charsOf!248 (h!8617 tokens!465)))) (++!768 (t!28930 (list!1179 (charsOf!248 (h!8617 tokens!465)))) lt!65807)))))

(declare-fun b!192542 () Bool)

(assert (=> b!192542 (= e!118371 (or (not (= lt!65807 Nil!3218)) (= lt!66345 (list!1179 (charsOf!248 (h!8617 tokens!465))))))))

(assert (= (and d!48100 c!36774) b!192539))

(assert (= (and d!48100 (not c!36774)) b!192540))

(assert (= (and d!48100 res!88276) b!192541))

(assert (= (and b!192541 res!88277) b!192542))

(declare-fun m!199375 () Bool)

(assert (=> d!48100 m!199375))

(assert (=> d!48100 m!196455))

(declare-fun m!199377 () Bool)

(assert (=> d!48100 m!199377))

(declare-fun m!199379 () Bool)

(assert (=> d!48100 m!199379))

(declare-fun m!199381 () Bool)

(assert (=> b!192541 m!199381))

(assert (=> b!192541 m!196455))

(declare-fun m!199383 () Bool)

(assert (=> b!192541 m!199383))

(declare-fun m!199385 () Bool)

(assert (=> b!192541 m!199385))

(declare-fun m!199387 () Bool)

(assert (=> b!192540 m!199387))

(assert (=> b!191608 d!48100))

(assert (=> b!191608 d!47512))

(declare-fun d!48102 () Bool)

(assert (=> d!48102 (= (list!1179 (_2!1868 (get!939 lt!65712))) (list!1183 (c!36425 (_2!1868 (get!939 lt!65712)))))))

(declare-fun bs!19019 () Bool)

(assert (= bs!19019 d!48102))

(declare-fun m!199389 () Bool)

(assert (=> bs!19019 m!199389))

(assert (=> b!191431 d!48102))

(declare-fun b!192543 () Bool)

(declare-fun e!118374 () Bool)

(declare-fun lt!66380 () Option!473)

(assert (=> b!192543 (= e!118374 (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!66380)))))))

(declare-fun b!192544 () Bool)

(declare-fun res!88284 () Bool)

(assert (=> b!192544 (=> (not res!88284) (not e!118374))))

(assert (=> b!192544 (= res!88284 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66380)))) (originalCharacters!636 (_1!1869 (get!938 lt!66380)))))))

(declare-fun b!192545 () Bool)

(declare-fun e!118375 () Option!473)

(declare-fun lt!66371 () Option!473)

(declare-fun lt!66368 () Option!473)

(assert (=> b!192545 (= e!118375 (ite (and ((_ is None!472) lt!66371) ((_ is None!472) lt!66368)) None!472 (ite ((_ is None!472) lt!66368) lt!66371 (ite ((_ is None!472) lt!66371) lt!66368 (ite (>= (size!2562 (_1!1869 (v!13983 lt!66371))) (size!2562 (_1!1869 (v!13983 lt!66368)))) lt!66371 lt!66368)))))))

(declare-fun call!8894 () Option!473)

(assert (=> b!192545 (= lt!66371 call!8894)))

(assert (=> b!192545 (= lt!66368 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(declare-fun b!192548 () Bool)

(declare-fun res!88281 () Bool)

(assert (=> b!192548 (=> (not res!88281) (not e!118374))))

(assert (=> b!192548 (= res!88281 (= (value!21216 (_1!1869 (get!938 lt!66380))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!66380)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!66380)))))))))

(declare-fun bm!8889 () Bool)

(assert (=> bm!8889 (= call!8894 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(declare-fun b!192551 () Bool)

(declare-fun res!88279 () Bool)

(assert (=> b!192551 (=> (not res!88279) (not e!118374))))

(assert (=> b!192551 (= res!88279 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!66380)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66380))))))))

(declare-fun b!192553 () Bool)

(declare-fun res!88278 () Bool)

(assert (=> b!192553 (=> (not res!88278) (not e!118374))))

(assert (=> b!192553 (= res!88278 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66380)))) (_2!1869 (get!938 lt!66380))) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(declare-fun d!48104 () Bool)

(declare-fun e!118378 () Bool)

(assert (=> d!48104 e!118378))

(declare-fun res!88282 () Bool)

(assert (=> d!48104 (=> res!88282 e!118378)))

(assert (=> d!48104 (= res!88282 (isEmpty!1617 lt!66380))))

(assert (=> d!48104 (= lt!66380 e!118375)))

(declare-fun c!36778 () Bool)

(assert (=> d!48104 (= c!36778 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!66370 () Unit!3036)

(declare-fun lt!66377 () Unit!3036)

(assert (=> d!48104 (= lt!66370 lt!66377)))

(assert (=> d!48104 (isPrefix!289 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!48104 (= lt!66377 (lemmaIsPrefixRefl!159 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(assert (=> d!48104 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!48104 (= (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))) lt!66380)))

(declare-fun b!192546 () Bool)

(assert (=> b!192546 (= e!118378 e!118374)))

(declare-fun res!88280 () Bool)

(assert (=> b!192546 (=> (not res!88280) (not e!118374))))

(assert (=> b!192546 (= res!88280 (isDefined!323 lt!66380))))

(declare-fun b!192555 () Bool)

(assert (=> b!192555 (= e!118375 call!8894)))

(declare-fun b!192557 () Bool)

(declare-fun res!88285 () Bool)

(assert (=> b!192557 (=> (not res!88285) (not e!118374))))

(assert (=> b!192557 (= res!88285 (< (size!2566 (_2!1869 (get!938 lt!66380))) (size!2566 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))

(assert (= (and d!48104 c!36778) b!192555))

(assert (= (and d!48104 (not c!36778)) b!192545))

(assert (= (or b!192555 b!192545) bm!8889))

(assert (= (and d!48104 (not res!88282)) b!192546))

(assert (= (and b!192546 res!88280) b!192544))

(assert (= (and b!192544 res!88284) b!192557))

(assert (= (and b!192557 res!88285) b!192553))

(assert (= (and b!192553 res!88278) b!192548))

(assert (= (and b!192548 res!88281) b!192551))

(assert (= (and b!192551 res!88279) b!192543))

(declare-fun m!199391 () Bool)

(assert (=> b!192553 m!199391))

(declare-fun m!199393 () Bool)

(assert (=> b!192553 m!199393))

(assert (=> b!192553 m!199393))

(declare-fun m!199395 () Bool)

(assert (=> b!192553 m!199395))

(assert (=> b!192553 m!199395))

(declare-fun m!199397 () Bool)

(assert (=> b!192553 m!199397))

(assert (=> bm!8889 m!197385))

(declare-fun m!199399 () Bool)

(assert (=> bm!8889 m!199399))

(declare-fun m!199401 () Bool)

(assert (=> b!192546 m!199401))

(assert (=> b!192544 m!199391))

(assert (=> b!192544 m!199393))

(assert (=> b!192544 m!199393))

(assert (=> b!192544 m!199395))

(assert (=> b!192543 m!199391))

(declare-fun m!199403 () Bool)

(assert (=> b!192543 m!199403))

(assert (=> b!192551 m!199391))

(assert (=> b!192551 m!199393))

(assert (=> b!192551 m!199393))

(assert (=> b!192551 m!199395))

(assert (=> b!192551 m!199395))

(declare-fun m!199405 () Bool)

(assert (=> b!192551 m!199405))

(assert (=> b!192548 m!199391))

(declare-fun m!199407 () Bool)

(assert (=> b!192548 m!199407))

(assert (=> b!192548 m!199407))

(declare-fun m!199409 () Bool)

(assert (=> b!192548 m!199409))

(declare-fun m!199411 () Bool)

(assert (=> d!48104 m!199411))

(assert (=> d!48104 m!197385))

(assert (=> d!48104 m!197385))

(declare-fun m!199413 () Bool)

(assert (=> d!48104 m!199413))

(assert (=> d!48104 m!197385))

(assert (=> d!48104 m!197385))

(declare-fun m!199417 () Bool)

(assert (=> d!48104 m!199417))

(assert (=> d!48104 m!196735))

(assert (=> b!192557 m!199391))

(declare-fun m!199421 () Bool)

(assert (=> b!192557 m!199421))

(assert (=> b!192557 m!197385))

(declare-fun m!199425 () Bool)

(assert (=> b!192557 m!199425))

(assert (=> b!192545 m!197385))

(declare-fun m!199431 () Bool)

(assert (=> b!192545 m!199431))

(assert (=> b!191431 d!48104))

(declare-fun d!48106 () Bool)

(assert (=> d!48106 (= (get!939 lt!65712) (v!13981 lt!65712))))

(assert (=> b!191431 d!48106))

(declare-fun d!48108 () Bool)

(assert (=> d!48108 (= (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))) (v!13983 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))

(assert (=> b!191431 d!48108))

(declare-fun d!48110 () Bool)

(assert (=> d!48110 (= (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))) (list!1183 (c!36425 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(declare-fun bs!19020 () Bool)

(assert (= bs!19020 d!48110))

(declare-fun m!199477 () Bool)

(assert (=> bs!19020 m!199477))

(assert (=> b!191431 d!48110))

(declare-fun d!48112 () Bool)

(declare-fun c!36781 () Bool)

(assert (=> d!48112 (= c!36781 ((_ is Nil!3218) lt!65630))))

(declare-fun e!118383 () (InoxSet C!2556))

(assert (=> d!48112 (= (content!430 lt!65630) e!118383)))

(declare-fun b!192567 () Bool)

(assert (=> b!192567 (= e!118383 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!192568 () Bool)

(assert (=> b!192568 (= e!118383 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65630) true) (content!430 (t!28930 lt!65630))))))

(assert (= (and d!48112 c!36781) b!192567))

(assert (= (and d!48112 (not c!36781)) b!192568))

(declare-fun m!199513 () Bool)

(assert (=> b!192568 m!199513))

(declare-fun m!199515 () Bool)

(assert (=> b!192568 m!199515))

(assert (=> d!47518 d!48112))

(declare-fun d!48116 () Bool)

(declare-fun c!36782 () Bool)

(assert (=> d!48116 (= c!36782 ((_ is Nil!3218) lt!65413))))

(declare-fun e!118384 () (InoxSet C!2556))

(assert (=> d!48116 (= (content!430 lt!65413) e!118384)))

(declare-fun b!192569 () Bool)

(assert (=> b!192569 (= e!118384 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!192570 () Bool)

(assert (=> b!192570 (= e!118384 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65413) true) (content!430 (t!28930 lt!65413))))))

(assert (= (and d!48116 c!36782) b!192569))

(assert (= (and d!48116 (not c!36782)) b!192570))

(declare-fun m!199517 () Bool)

(assert (=> b!192570 m!199517))

(assert (=> b!192570 m!199007))

(assert (=> d!47518 d!48116))

(declare-fun d!48118 () Bool)

(declare-fun c!36783 () Bool)

(assert (=> d!48118 (= c!36783 ((_ is Nil!3218) lt!65438))))

(declare-fun e!118385 () (InoxSet C!2556))

(assert (=> d!48118 (= (content!430 lt!65438) e!118385)))

(declare-fun b!192571 () Bool)

(assert (=> b!192571 (= e!118385 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!192572 () Bool)

(assert (=> b!192572 (= e!118385 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65438) true) (content!430 (t!28930 lt!65438))))))

(assert (= (and d!48118 c!36783) b!192571))

(assert (= (and d!48118 (not c!36783)) b!192572))

(declare-fun m!199519 () Bool)

(assert (=> b!192572 m!199519))

(declare-fun m!199521 () Bool)

(assert (=> b!192572 m!199521))

(assert (=> d!47518 d!48118))

(declare-fun d!48120 () Bool)

(assert (=> d!48120 (= (list!1182 (_1!1867 lt!65740)) (list!1186 (c!36427 (_1!1867 lt!65740))))))

(declare-fun bs!19021 () Bool)

(assert (= bs!19021 d!48120))

(declare-fun m!199523 () Bool)

(assert (=> bs!19021 m!199523))

(assert (=> b!191513 d!48120))

(declare-fun d!48122 () Bool)

(declare-fun e!118426 () Bool)

(assert (=> d!48122 e!118426))

(declare-fun c!36803 () Bool)

(declare-fun lt!66413 () tuple2!3310)

(assert (=> d!48122 (= c!36803 (> (size!2570 (_1!1871 lt!66413)) 0))))

(declare-fun e!118427 () tuple2!3310)

(assert (=> d!48122 (= lt!66413 e!118427)))

(declare-fun c!36802 () Bool)

(declare-fun lt!66410 () Option!473)

(assert (=> d!48122 (= c!36802 ((_ is Some!472) lt!66410))))

(assert (=> d!48122 (= lt!66410 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (seqFromList!563 lt!65413))))))

(assert (=> d!48122 (= (lexList!135 thiss!17480 rules!1920 (list!1179 (seqFromList!563 lt!65413))) lt!66413)))

(declare-fun b!192643 () Bool)

(declare-fun lt!66412 () tuple2!3310)

(assert (=> b!192643 (= e!118427 (tuple2!3311 (Cons!3220 (_1!1869 (v!13983 lt!66410)) (_1!1871 lt!66412)) (_2!1871 lt!66412)))))

(assert (=> b!192643 (= lt!66412 (lexList!135 thiss!17480 rules!1920 (_2!1869 (v!13983 lt!66410))))))

(declare-fun b!192644 () Bool)

(declare-fun e!118425 () Bool)

(assert (=> b!192644 (= e!118425 (not (isEmpty!1612 (_1!1871 lt!66413))))))

(declare-fun b!192645 () Bool)

(assert (=> b!192645 (= e!118426 e!118425)))

(declare-fun res!88322 () Bool)

(assert (=> b!192645 (= res!88322 (< (size!2566 (_2!1871 lt!66413)) (size!2566 (list!1179 (seqFromList!563 lt!65413)))))))

(assert (=> b!192645 (=> (not res!88322) (not e!118425))))

(declare-fun b!192646 () Bool)

(assert (=> b!192646 (= e!118427 (tuple2!3311 Nil!3220 (list!1179 (seqFromList!563 lt!65413))))))

(declare-fun b!192647 () Bool)

(assert (=> b!192647 (= e!118426 (= (_2!1871 lt!66413) (list!1179 (seqFromList!563 lt!65413))))))

(assert (= (and d!48122 c!36802) b!192643))

(assert (= (and d!48122 (not c!36802)) b!192646))

(assert (= (and d!48122 c!36803) b!192645))

(assert (= (and d!48122 (not c!36803)) b!192647))

(assert (= (and b!192645 res!88322) b!192644))

(declare-fun m!199669 () Bool)

(assert (=> d!48122 m!199669))

(assert (=> d!48122 m!197495))

(declare-fun m!199671 () Bool)

(assert (=> d!48122 m!199671))

(declare-fun m!199673 () Bool)

(assert (=> b!192643 m!199673))

(declare-fun m!199675 () Bool)

(assert (=> b!192644 m!199675))

(declare-fun m!199679 () Bool)

(assert (=> b!192645 m!199679))

(assert (=> b!192645 m!197495))

(declare-fun m!199683 () Bool)

(assert (=> b!192645 m!199683))

(assert (=> b!191513 d!48122))

(declare-fun d!48162 () Bool)

(assert (=> d!48162 (= (list!1179 (seqFromList!563 lt!65413)) (list!1183 (c!36425 (seqFromList!563 lt!65413))))))

(declare-fun bs!19026 () Bool)

(assert (= bs!19026 d!48162))

(declare-fun m!199689 () Bool)

(assert (=> bs!19026 m!199689))

(assert (=> b!191513 d!48162))

(declare-fun b!192654 () Bool)

(declare-fun e!118431 () List!3228)

(assert (=> b!192654 (= e!118431 (++!768 (list!1183 (left!2547 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0)))) (list!1183 (right!2877 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0))))))))

(declare-fun c!36805 () Bool)

(declare-fun d!48164 () Bool)

(assert (=> d!48164 (= c!36805 ((_ is Empty!1008) (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0))))))

(declare-fun e!118430 () List!3228)

(assert (=> d!48164 (= (list!1183 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0))) e!118430)))

(declare-fun b!192652 () Bool)

(assert (=> b!192652 (= e!118430 e!118431)))

(declare-fun c!36806 () Bool)

(assert (=> b!192652 (= c!36806 ((_ is Leaf!1644) (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0))))))

(declare-fun b!192653 () Bool)

(assert (=> b!192653 (= e!118431 (list!1187 (xs!3603 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 0)))))))

(declare-fun b!192651 () Bool)

(assert (=> b!192651 (= e!118430 Nil!3218)))

(assert (= (and d!48164 c!36805) b!192651))

(assert (= (and d!48164 (not c!36805)) b!192652))

(assert (= (and b!192652 c!36806) b!192653))

(assert (= (and b!192652 (not c!36806)) b!192654))

(declare-fun m!199713 () Bool)

(assert (=> b!192654 m!199713))

(declare-fun m!199717 () Bool)

(assert (=> b!192654 m!199717))

(assert (=> b!192654 m!199713))

(assert (=> b!192654 m!199717))

(declare-fun m!199719 () Bool)

(assert (=> b!192654 m!199719))

(declare-fun m!199721 () Bool)

(assert (=> b!192653 m!199721))

(assert (=> d!47634 d!48164))

(declare-fun d!48168 () Bool)

(assert (=> d!48168 (= (head!684 lt!65413) (h!8615 lt!65413))))

(assert (=> b!191471 d!48168))

(declare-fun d!48170 () Bool)

(assert (=> d!48170 (= (list!1179 (ite c!36503 call!8766 e!117627)) (list!1183 (c!36425 (ite c!36503 call!8766 e!117627))))))

(declare-fun bs!19027 () Bool)

(assert (= bs!19027 d!48170))

(declare-fun m!199723 () Bool)

(assert (=> bs!19027 m!199723))

(assert (=> bm!8763 d!48170))

(declare-fun d!48172 () Bool)

(declare-fun lt!66420 () Token!930)

(assert (=> d!48172 (= lt!66420 (apply!497 (list!1182 lt!65415) 0))))

(assert (=> d!48172 (= lt!66420 (apply!498 (c!36427 lt!65415) 0))))

(declare-fun e!118432 () Bool)

(assert (=> d!48172 e!118432))

(declare-fun res!88324 () Bool)

(assert (=> d!48172 (=> (not res!88324) (not e!118432))))

(assert (=> d!48172 (= res!88324 (<= 0 0))))

(assert (=> d!48172 (= (apply!492 lt!65415 0) lt!66420)))

(declare-fun b!192655 () Bool)

(assert (=> b!192655 (= e!118432 (< 0 (size!2563 lt!65415)))))

(assert (= (and d!48172 res!88324) b!192655))

(assert (=> d!48172 m!197467))

(assert (=> d!48172 m!197467))

(declare-fun m!199725 () Bool)

(assert (=> d!48172 m!199725))

(declare-fun m!199727 () Bool)

(assert (=> d!48172 m!199727))

(assert (=> b!192655 m!197631))

(assert (=> b!191590 d!48172))

(declare-fun d!48174 () Bool)

(assert (=> d!48174 (= (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))) (isBalanced!266 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))))))

(declare-fun bs!19028 () Bool)

(assert (= bs!19028 d!48174))

(declare-fun m!199729 () Bool)

(assert (=> bs!19028 m!199729))

(assert (=> tb!7789 d!48174))

(declare-fun d!48176 () Bool)

(declare-fun res!88325 () Bool)

(declare-fun e!118433 () Bool)

(assert (=> d!48176 (=> res!88325 e!118433)))

(assert (=> d!48176 (= res!88325 ((_ is Nil!3220) (t!28932 tokens!465)))))

(assert (=> d!48176 (= (forall!675 (t!28932 tokens!465) lambda!5840) e!118433)))

(declare-fun b!192656 () Bool)

(declare-fun e!118434 () Bool)

(assert (=> b!192656 (= e!118433 e!118434)))

(declare-fun res!88326 () Bool)

(assert (=> b!192656 (=> (not res!88326) (not e!118434))))

(assert (=> b!192656 (= res!88326 (dynLambda!1375 lambda!5840 (h!8617 (t!28932 tokens!465))))))

(declare-fun b!192657 () Bool)

(assert (=> b!192657 (= e!118434 (forall!675 (t!28932 (t!28932 tokens!465)) lambda!5840))))

(assert (= (and d!48176 (not res!88325)) b!192656))

(assert (= (and b!192656 res!88326) b!192657))

(declare-fun b_lambda!4691 () Bool)

(assert (=> (not b_lambda!4691) (not b!192656)))

(declare-fun m!199731 () Bool)

(assert (=> b!192656 m!199731))

(declare-fun m!199733 () Bool)

(assert (=> b!192657 m!199733))

(assert (=> b!191824 d!48176))

(declare-fun d!48178 () Bool)

(declare-fun c!36809 () Bool)

(assert (=> d!48178 (= c!36809 ((_ is Node!1008) (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))))))

(declare-fun e!118439 () Bool)

(assert (=> d!48178 (= (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))) e!118439)))

(declare-fun b!192664 () Bool)

(declare-fun inv!4046 (Conc!1008) Bool)

(assert (=> b!192664 (= e!118439 (inv!4046 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))))))

(declare-fun b!192665 () Bool)

(declare-fun e!118440 () Bool)

(assert (=> b!192665 (= e!118439 e!118440)))

(declare-fun res!88329 () Bool)

(assert (=> b!192665 (= res!88329 (not ((_ is Leaf!1644) (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))))))))

(assert (=> b!192665 (=> res!88329 e!118440)))

(declare-fun b!192666 () Bool)

(declare-fun inv!4047 (Conc!1008) Bool)

(assert (=> b!192666 (= e!118440 (inv!4047 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))))))

(assert (= (and d!48178 c!36809) b!192664))

(assert (= (and d!48178 (not c!36809)) b!192665))

(assert (= (and b!192665 (not res!88329)) b!192666))

(declare-fun m!199735 () Bool)

(assert (=> b!192664 m!199735))

(declare-fun m!199737 () Bool)

(assert (=> b!192666 m!199737))

(assert (=> b!191129 d!48178))

(declare-fun b!192667 () Bool)

(declare-fun res!88332 () Bool)

(declare-fun e!118446 () Bool)

(assert (=> b!192667 (=> (not res!88332) (not e!118446))))

(assert (=> b!192667 (= res!88332 (isEmpty!1609 (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493)))))))))

(declare-fun bm!8893 () Bool)

(declare-fun call!8898 () Bool)

(assert (=> bm!8893 (= call!8898 (isEmpty!1609 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))))))

(declare-fun d!48180 () Bool)

(declare-fun e!118441 () Bool)

(assert (=> d!48180 e!118441))

(declare-fun c!36811 () Bool)

(assert (=> d!48180 (= c!36811 ((_ is EmptyExpr!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493))))))))

(declare-fun lt!66421 () Bool)

(declare-fun e!118442 () Bool)

(assert (=> d!48180 (= lt!66421 e!118442)))

(declare-fun c!36812 () Bool)

(assert (=> d!48180 (= c!36812 (isEmpty!1609 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))))))

(assert (=> d!48180 (validRegex!201 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))))

(assert (=> d!48180 (= (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))) lt!66421)))

(declare-fun b!192668 () Bool)

(assert (=> b!192668 (= e!118442 (nullable!128 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493))))))))

(declare-fun b!192669 () Bool)

(assert (=> b!192669 (= e!118446 (= (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))) (c!36426 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))))))

(declare-fun b!192670 () Bool)

(declare-fun e!118443 () Bool)

(assert (=> b!192670 (= e!118443 (not (= (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))) (c!36426 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493))))))))))

(declare-fun b!192671 () Bool)

(declare-fun e!118445 () Bool)

(assert (=> b!192671 (= e!118441 e!118445)))

(declare-fun c!36810 () Bool)

(assert (=> b!192671 (= c!36810 ((_ is EmptyLang!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493))))))))

(declare-fun b!192672 () Bool)

(assert (=> b!192672 (= e!118441 (= lt!66421 call!8898))))

(declare-fun b!192673 () Bool)

(declare-fun e!118444 () Bool)

(declare-fun e!118447 () Bool)

(assert (=> b!192673 (= e!118444 e!118447)))

(declare-fun res!88331 () Bool)

(assert (=> b!192673 (=> (not res!88331) (not e!118447))))

(assert (=> b!192673 (= res!88331 (not lt!66421))))

(declare-fun b!192674 () Bool)

(assert (=> b!192674 (= e!118445 (not lt!66421))))

(declare-fun b!192675 () Bool)

(declare-fun res!88336 () Bool)

(assert (=> b!192675 (=> res!88336 e!118443)))

(assert (=> b!192675 (= res!88336 (not (isEmpty!1609 (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))))))))

(declare-fun b!192676 () Bool)

(declare-fun res!88333 () Bool)

(assert (=> b!192676 (=> res!88333 e!118444)))

(assert (=> b!192676 (= res!88333 (not ((_ is ElementMatch!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))))))

(assert (=> b!192676 (= e!118445 e!118444)))

(declare-fun b!192677 () Bool)

(declare-fun res!88337 () Bool)

(assert (=> b!192677 (=> res!88337 e!118444)))

(assert (=> b!192677 (= res!88337 e!118446)))

(declare-fun res!88330 () Bool)

(assert (=> b!192677 (=> (not res!88330) (not e!118446))))

(assert (=> b!192677 (= res!88330 lt!66421)))

(declare-fun b!192678 () Bool)

(assert (=> b!192678 (= e!118442 (matchR!155 (derivativeStep!94 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65493)))) (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493)))))) (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493)))))))))

(declare-fun b!192679 () Bool)

(assert (=> b!192679 (= e!118447 e!118443)))

(declare-fun res!88334 () Bool)

(assert (=> b!192679 (=> res!88334 e!118443)))

(assert (=> b!192679 (= res!88334 call!8898)))

(declare-fun b!192680 () Bool)

(declare-fun res!88335 () Bool)

(assert (=> b!192680 (=> (not res!88335) (not e!118446))))

(assert (=> b!192680 (= res!88335 (not call!8898))))

(assert (= (and d!48180 c!36812) b!192668))

(assert (= (and d!48180 (not c!36812)) b!192678))

(assert (= (and d!48180 c!36811) b!192672))

(assert (= (and d!48180 (not c!36811)) b!192671))

(assert (= (and b!192671 c!36810) b!192674))

(assert (= (and b!192671 (not c!36810)) b!192676))

(assert (= (and b!192676 (not res!88333)) b!192677))

(assert (= (and b!192677 res!88330) b!192680))

(assert (= (and b!192680 res!88335) b!192667))

(assert (= (and b!192667 res!88332) b!192669))

(assert (= (and b!192677 (not res!88337)) b!192673))

(assert (= (and b!192673 res!88331) b!192679))

(assert (= (and b!192679 (not res!88334)) b!192675))

(assert (= (and b!192675 (not res!88336)) b!192670))

(assert (= (or b!192672 b!192679 b!192680) bm!8893))

(assert (=> bm!8893 m!196713))

(declare-fun m!199739 () Bool)

(assert (=> bm!8893 m!199739))

(assert (=> b!192678 m!196713))

(declare-fun m!199741 () Bool)

(assert (=> b!192678 m!199741))

(assert (=> b!192678 m!199741))

(declare-fun m!199743 () Bool)

(assert (=> b!192678 m!199743))

(assert (=> b!192678 m!196713))

(declare-fun m!199745 () Bool)

(assert (=> b!192678 m!199745))

(assert (=> b!192678 m!199743))

(assert (=> b!192678 m!199745))

(declare-fun m!199747 () Bool)

(assert (=> b!192678 m!199747))

(assert (=> b!192667 m!196713))

(assert (=> b!192667 m!199745))

(assert (=> b!192667 m!199745))

(declare-fun m!199749 () Bool)

(assert (=> b!192667 m!199749))

(assert (=> b!192669 m!196713))

(assert (=> b!192669 m!199741))

(declare-fun m!199751 () Bool)

(assert (=> b!192668 m!199751))

(assert (=> b!192675 m!196713))

(assert (=> b!192675 m!199745))

(assert (=> b!192675 m!199745))

(assert (=> b!192675 m!199749))

(assert (=> b!192670 m!196713))

(assert (=> b!192670 m!199741))

(assert (=> d!48180 m!196713))

(assert (=> d!48180 m!199739))

(declare-fun m!199753 () Bool)

(assert (=> d!48180 m!199753))

(assert (=> b!191058 d!48180))

(declare-fun d!48182 () Bool)

(assert (=> d!48182 (= (get!938 lt!65493) (v!13983 lt!65493))))

(assert (=> b!191058 d!48182))

(declare-fun d!48184 () Bool)

(assert (=> d!48184 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493)))) (list!1183 (c!36425 (charsOf!248 (_1!1869 (get!938 lt!65493))))))))

(declare-fun bs!19029 () Bool)

(assert (= bs!19029 d!48184))

(declare-fun m!199755 () Bool)

(assert (=> bs!19029 m!199755))

(assert (=> b!191058 d!48184))

(declare-fun d!48186 () Bool)

(declare-fun lt!66422 () BalanceConc!2024)

(assert (=> d!48186 (= (list!1179 lt!66422) (originalCharacters!636 (_1!1869 (get!938 lt!65493))))))

(assert (=> d!48186 (= lt!66422 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493))))) (value!21216 (_1!1869 (get!938 lt!65493)))))))

(assert (=> d!48186 (= (charsOf!248 (_1!1869 (get!938 lt!65493))) lt!66422)))

(declare-fun b_lambda!4693 () Bool)

(assert (=> (not b_lambda!4693) (not d!48186)))

(declare-fun tb!7917 () Bool)

(declare-fun t!29108 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29108) tb!7917))

(declare-fun b!192681 () Bool)

(declare-fun e!118448 () Bool)

(declare-fun tp!88910 () Bool)

(assert (=> b!192681 (= e!118448 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493))))) (value!21216 (_1!1869 (get!938 lt!65493)))))) tp!88910))))

(declare-fun result!10860 () Bool)

(assert (=> tb!7917 (= result!10860 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493))))) (value!21216 (_1!1869 (get!938 lt!65493))))) e!118448))))

(assert (= tb!7917 b!192681))

(declare-fun m!199757 () Bool)

(assert (=> b!192681 m!199757))

(declare-fun m!199759 () Bool)

(assert (=> tb!7917 m!199759))

(assert (=> d!48186 t!29108))

(declare-fun b_and!13421 () Bool)

(assert (= b_and!13383 (and (=> t!29108 result!10860) b_and!13421)))

(declare-fun tb!7919 () Bool)

(declare-fun t!29110 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29110) tb!7919))

(declare-fun result!10862 () Bool)

(assert (= result!10862 result!10860))

(assert (=> d!48186 t!29110))

(declare-fun b_and!13423 () Bool)

(assert (= b_and!13385 (and (=> t!29110 result!10862) b_and!13423)))

(declare-fun tb!7921 () Bool)

(declare-fun t!29112 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29112) tb!7921))

(declare-fun result!10864 () Bool)

(assert (= result!10864 result!10860))

(assert (=> d!48186 t!29112))

(declare-fun b_and!13425 () Bool)

(assert (= b_and!13381 (and (=> t!29112 result!10864) b_and!13425)))

(declare-fun t!29114 () Bool)

(declare-fun tb!7923 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29114) tb!7923))

(declare-fun result!10866 () Bool)

(assert (= result!10866 result!10860))

(assert (=> d!48186 t!29114))

(declare-fun b_and!13427 () Bool)

(assert (= b_and!13389 (and (=> t!29114 result!10866) b_and!13427)))

(declare-fun tb!7925 () Bool)

(declare-fun t!29116 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29116) tb!7925))

(declare-fun result!10868 () Bool)

(assert (= result!10868 result!10860))

(assert (=> d!48186 t!29116))

(declare-fun b_and!13429 () Bool)

(assert (= b_and!13387 (and (=> t!29116 result!10868) b_and!13429)))

(declare-fun m!199761 () Bool)

(assert (=> d!48186 m!199761))

(declare-fun m!199763 () Bool)

(assert (=> d!48186 m!199763))

(assert (=> b!191058 d!48186))

(declare-fun b!192685 () Bool)

(declare-fun e!118450 () List!3228)

(assert (=> b!192685 (= e!118450 (++!768 (list!1183 (left!2547 (c!36425 lt!65410))) (list!1183 (right!2877 (c!36425 lt!65410)))))))

(declare-fun d!48188 () Bool)

(declare-fun c!36813 () Bool)

(assert (=> d!48188 (= c!36813 ((_ is Empty!1008) (c!36425 lt!65410)))))

(declare-fun e!118449 () List!3228)

(assert (=> d!48188 (= (list!1183 (c!36425 lt!65410)) e!118449)))

(declare-fun b!192683 () Bool)

(assert (=> b!192683 (= e!118449 e!118450)))

(declare-fun c!36814 () Bool)

(assert (=> b!192683 (= c!36814 ((_ is Leaf!1644) (c!36425 lt!65410)))))

(declare-fun b!192684 () Bool)

(assert (=> b!192684 (= e!118450 (list!1187 (xs!3603 (c!36425 lt!65410))))))

(declare-fun b!192682 () Bool)

(assert (=> b!192682 (= e!118449 Nil!3218)))

(assert (= (and d!48188 c!36813) b!192682))

(assert (= (and d!48188 (not c!36813)) b!192683))

(assert (= (and b!192683 c!36814) b!192684))

(assert (= (and b!192683 (not c!36814)) b!192685))

(declare-fun m!199765 () Bool)

(assert (=> b!192685 m!199765))

(declare-fun m!199767 () Bool)

(assert (=> b!192685 m!199767))

(assert (=> b!192685 m!199765))

(assert (=> b!192685 m!199767))

(declare-fun m!199769 () Bool)

(assert (=> b!192685 m!199769))

(declare-fun m!199771 () Bool)

(assert (=> b!192684 m!199771))

(assert (=> d!47620 d!48188))

(declare-fun b!192686 () Bool)

(declare-fun res!88340 () Bool)

(declare-fun e!118456 () Bool)

(assert (=> b!192686 (=> (not res!88340) (not e!118456))))

(assert (=> b!192686 (= res!88340 (isEmpty!1609 (tail!386 (list!1179 (charsOf!248 separatorToken!170)))))))

(declare-fun bm!8894 () Bool)

(declare-fun call!8899 () Bool)

(assert (=> bm!8894 (= call!8899 (isEmpty!1609 (list!1179 (charsOf!248 separatorToken!170))))))

(declare-fun d!48190 () Bool)

(declare-fun e!118451 () Bool)

(assert (=> d!48190 e!118451))

(declare-fun c!36816 () Bool)

(assert (=> d!48190 (= c!36816 ((_ is EmptyExpr!817) (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))))))))

(declare-fun lt!66423 () Bool)

(declare-fun e!118452 () Bool)

(assert (=> d!48190 (= lt!66423 e!118452)))

(declare-fun c!36817 () Bool)

(assert (=> d!48190 (= c!36817 (isEmpty!1609 (list!1179 (charsOf!248 separatorToken!170))))))

(assert (=> d!48190 (validRegex!201 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))))))

(assert (=> d!48190 (= (matchR!155 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))) (list!1179 (charsOf!248 separatorToken!170))) lt!66423)))

(declare-fun b!192687 () Bool)

(assert (=> b!192687 (= e!118452 (nullable!128 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))))))))

(declare-fun b!192688 () Bool)

(assert (=> b!192688 (= e!118456 (= (head!684 (list!1179 (charsOf!248 separatorToken!170))) (c!36426 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))))))))

(declare-fun e!118453 () Bool)

(declare-fun b!192689 () Bool)

(assert (=> b!192689 (= e!118453 (not (= (head!684 (list!1179 (charsOf!248 separatorToken!170))) (c!36426 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))))))))))

(declare-fun b!192690 () Bool)

(declare-fun e!118455 () Bool)

(assert (=> b!192690 (= e!118451 e!118455)))

(declare-fun c!36815 () Bool)

(assert (=> b!192690 (= c!36815 ((_ is EmptyLang!817) (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))))))))

(declare-fun b!192691 () Bool)

(assert (=> b!192691 (= e!118451 (= lt!66423 call!8899))))

(declare-fun b!192692 () Bool)

(declare-fun e!118454 () Bool)

(declare-fun e!118457 () Bool)

(assert (=> b!192692 (= e!118454 e!118457)))

(declare-fun res!88339 () Bool)

(assert (=> b!192692 (=> (not res!88339) (not e!118457))))

(assert (=> b!192692 (= res!88339 (not lt!66423))))

(declare-fun b!192693 () Bool)

(assert (=> b!192693 (= e!118455 (not lt!66423))))

(declare-fun b!192694 () Bool)

(declare-fun res!88344 () Bool)

(assert (=> b!192694 (=> res!88344 e!118453)))

(assert (=> b!192694 (= res!88344 (not (isEmpty!1609 (tail!386 (list!1179 (charsOf!248 separatorToken!170))))))))

(declare-fun b!192695 () Bool)

(declare-fun res!88341 () Bool)

(assert (=> b!192695 (=> res!88341 e!118454)))

(assert (=> b!192695 (= res!88341 (not ((_ is ElementMatch!817) (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))))))))

(assert (=> b!192695 (= e!118455 e!118454)))

(declare-fun b!192696 () Bool)

(declare-fun res!88345 () Bool)

(assert (=> b!192696 (=> res!88345 e!118454)))

(assert (=> b!192696 (= res!88345 e!118456)))

(declare-fun res!88338 () Bool)

(assert (=> b!192696 (=> (not res!88338) (not e!118456))))

(assert (=> b!192696 (= res!88338 lt!66423)))

(declare-fun b!192697 () Bool)

(assert (=> b!192697 (= e!118452 (matchR!155 (derivativeStep!94 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))) (head!684 (list!1179 (charsOf!248 separatorToken!170)))) (tail!386 (list!1179 (charsOf!248 separatorToken!170)))))))

(declare-fun b!192698 () Bool)

(assert (=> b!192698 (= e!118457 e!118453)))

(declare-fun res!88342 () Bool)

(assert (=> b!192698 (=> res!88342 e!118453)))

(assert (=> b!192698 (= res!88342 call!8899)))

(declare-fun b!192699 () Bool)

(declare-fun res!88343 () Bool)

(assert (=> b!192699 (=> (not res!88343) (not e!118456))))

(assert (=> b!192699 (= res!88343 (not call!8899))))

(assert (= (and d!48190 c!36817) b!192687))

(assert (= (and d!48190 (not c!36817)) b!192697))

(assert (= (and d!48190 c!36816) b!192691))

(assert (= (and d!48190 (not c!36816)) b!192690))

(assert (= (and b!192690 c!36815) b!192693))

(assert (= (and b!192690 (not c!36815)) b!192695))

(assert (= (and b!192695 (not res!88341)) b!192696))

(assert (= (and b!192696 res!88338) b!192699))

(assert (= (and b!192699 res!88343) b!192686))

(assert (= (and b!192686 res!88340) b!192688))

(assert (= (and b!192696 (not res!88345)) b!192692))

(assert (= (and b!192692 res!88339) b!192698))

(assert (= (and b!192698 (not res!88342)) b!192694))

(assert (= (and b!192694 (not res!88344)) b!192689))

(assert (= (or b!192691 b!192698 b!192699) bm!8894))

(assert (=> bm!8894 m!196441))

(declare-fun m!199773 () Bool)

(assert (=> bm!8894 m!199773))

(assert (=> b!192697 m!196441))

(declare-fun m!199775 () Bool)

(assert (=> b!192697 m!199775))

(assert (=> b!192697 m!199775))

(declare-fun m!199777 () Bool)

(assert (=> b!192697 m!199777))

(assert (=> b!192697 m!196441))

(declare-fun m!199779 () Bool)

(assert (=> b!192697 m!199779))

(assert (=> b!192697 m!199777))

(assert (=> b!192697 m!199779))

(declare-fun m!199781 () Bool)

(assert (=> b!192697 m!199781))

(assert (=> b!192686 m!196441))

(assert (=> b!192686 m!199779))

(assert (=> b!192686 m!199779))

(declare-fun m!199783 () Bool)

(assert (=> b!192686 m!199783))

(assert (=> b!192688 m!196441))

(assert (=> b!192688 m!199775))

(declare-fun m!199785 () Bool)

(assert (=> b!192687 m!199785))

(assert (=> b!192694 m!196441))

(assert (=> b!192694 m!199779))

(assert (=> b!192694 m!199779))

(assert (=> b!192694 m!199783))

(assert (=> b!192689 m!196441))

(assert (=> b!192689 m!199775))

(assert (=> d!48190 m!196441))

(assert (=> d!48190 m!199773))

(declare-fun m!199787 () Bool)

(assert (=> d!48190 m!199787))

(assert (=> b!191649 d!48190))

(assert (=> b!191649 d!47520))

(declare-fun d!48192 () Bool)

(assert (=> d!48192 (= (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))) (v!13982 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))))))

(assert (=> b!191649 d!48192))

(assert (=> b!191649 d!47500))

(assert (=> b!191649 d!47708))

(declare-fun d!48194 () Bool)

(assert (=> d!48194 (= (get!938 lt!65949) (v!13983 lt!65949))))

(assert (=> b!191859 d!48194))

(declare-fun d!48196 () Bool)

(assert (=> d!48196 (= (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65949))))) (dynLambda!1379 (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949))))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65949))))))))

(declare-fun b_lambda!4695 () Bool)

(assert (=> (not b_lambda!4695) (not d!48196)))

(declare-fun t!29118 () Bool)

(declare-fun tb!7927 () Bool)

(assert (=> (and b!190906 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29118) tb!7927))

(declare-fun result!10870 () Bool)

(assert (=> tb!7927 (= result!10870 (inv!21 (dynLambda!1379 (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949))))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65949)))))))))

(declare-fun m!199789 () Bool)

(assert (=> tb!7927 m!199789))

(assert (=> d!48196 t!29118))

(declare-fun b_and!13431 () Bool)

(assert (= b_and!13399 (and (=> t!29118 result!10870) b_and!13431)))

(declare-fun t!29120 () Bool)

(declare-fun tb!7929 () Bool)

(assert (=> (and b!190938 (= (toValue!1264 (transformation!593 (h!8616 rules!1920))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29120) tb!7929))

(declare-fun result!10872 () Bool)

(assert (= result!10872 result!10870))

(assert (=> d!48196 t!29120))

(declare-fun b_and!13433 () Bool)

(assert (= b_and!13393 (and (=> t!29120 result!10872) b_and!13433)))

(declare-fun t!29122 () Bool)

(declare-fun tb!7931 () Bool)

(assert (=> (and b!190916 (= (toValue!1264 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29122) tb!7931))

(declare-fun result!10874 () Bool)

(assert (= result!10874 result!10870))

(assert (=> d!48196 t!29122))

(declare-fun b_and!13435 () Bool)

(assert (= b_and!13391 (and (=> t!29122 result!10874) b_and!13435)))

(declare-fun tb!7933 () Bool)

(declare-fun t!29124 () Bool)

(assert (=> (and b!191921 (= (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29124) tb!7933))

(declare-fun result!10876 () Bool)

(assert (= result!10876 result!10870))

(assert (=> d!48196 t!29124))

(declare-fun b_and!13437 () Bool)

(assert (= b_and!13397 (and (=> t!29124 result!10876) b_and!13437)))

(declare-fun tb!7935 () Bool)

(declare-fun t!29126 () Bool)

(assert (=> (and b!191891 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29126) tb!7935))

(declare-fun result!10878 () Bool)

(assert (= result!10878 result!10870))

(assert (=> d!48196 t!29126))

(declare-fun b_and!13439 () Bool)

(assert (= b_and!13395 (and (=> t!29126 result!10878) b_and!13439)))

(assert (=> d!48196 m!198185))

(declare-fun m!199791 () Bool)

(assert (=> d!48196 m!199791))

(assert (=> b!191859 d!48196))

(declare-fun d!48198 () Bool)

(assert (=> d!48198 (= (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65949)))) (fromListB!208 (originalCharacters!636 (_1!1869 (get!938 lt!65949)))))))

(declare-fun bs!19030 () Bool)

(assert (= bs!19030 d!48198))

(declare-fun m!199793 () Bool)

(assert (=> bs!19030 m!199793))

(assert (=> b!191859 d!48198))

(declare-fun d!48200 () Bool)

(assert (=> d!48200 (= (tail!385 (drop!163 lt!65911 0)) (t!28932 (drop!163 lt!65911 0)))))

(assert (=> b!191740 d!48200))

(declare-fun d!48202 () Bool)

(declare-fun lt!66424 () BalanceConc!2024)

(assert (=> d!48202 (= (list!1179 lt!66424) (originalCharacters!636 (apply!492 lt!65418 0)))))

(assert (=> d!48202 (= lt!66424 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0)))) (value!21216 (apply!492 lt!65418 0))))))

(assert (=> d!48202 (= (charsOf!248 (apply!492 lt!65418 0)) lt!66424)))

(declare-fun b_lambda!4697 () Bool)

(assert (=> (not b_lambda!4697) (not d!48202)))

(declare-fun tb!7937 () Bool)

(declare-fun t!29128 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0))))) t!29128) tb!7937))

(declare-fun b!192700 () Bool)

(declare-fun e!118459 () Bool)

(declare-fun tp!88911 () Bool)

(assert (=> b!192700 (= e!118459 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0)))) (value!21216 (apply!492 lt!65418 0))))) tp!88911))))

(declare-fun result!10880 () Bool)

(assert (=> tb!7937 (= result!10880 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0)))) (value!21216 (apply!492 lt!65418 0)))) e!118459))))

(assert (= tb!7937 b!192700))

(declare-fun m!199795 () Bool)

(assert (=> b!192700 m!199795))

(declare-fun m!199797 () Bool)

(assert (=> tb!7937 m!199797))

(assert (=> d!48202 t!29128))

(declare-fun b_and!13441 () Bool)

(assert (= b_and!13421 (and (=> t!29128 result!10880) b_and!13441)))

(declare-fun t!29130 () Bool)

(declare-fun tb!7939 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0))))) t!29130) tb!7939))

(declare-fun result!10882 () Bool)

(assert (= result!10882 result!10880))

(assert (=> d!48202 t!29130))

(declare-fun b_and!13443 () Bool)

(assert (= b_and!13423 (and (=> t!29130 result!10882) b_and!13443)))

(declare-fun t!29132 () Bool)

(declare-fun tb!7941 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0))))) t!29132) tb!7941))

(declare-fun result!10884 () Bool)

(assert (= result!10884 result!10880))

(assert (=> d!48202 t!29132))

(declare-fun b_and!13445 () Bool)

(assert (= b_and!13427 (and (=> t!29132 result!10884) b_and!13445)))

(declare-fun t!29134 () Bool)

(declare-fun tb!7943 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0))))) t!29134) tb!7943))

(declare-fun result!10886 () Bool)

(assert (= result!10886 result!10880))

(assert (=> d!48202 t!29134))

(declare-fun b_and!13447 () Bool)

(assert (= b_and!13429 (and (=> t!29134 result!10886) b_and!13447)))

(declare-fun t!29136 () Bool)

(declare-fun tb!7945 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0))))) t!29136) tb!7945))

(declare-fun result!10888 () Bool)

(assert (= result!10888 result!10880))

(assert (=> d!48202 t!29136))

(declare-fun b_and!13449 () Bool)

(assert (= b_and!13425 (and (=> t!29136 result!10888) b_and!13449)))

(declare-fun m!199799 () Bool)

(assert (=> d!48202 m!199799))

(declare-fun m!199801 () Bool)

(assert (=> d!48202 m!199801))

(assert (=> b!191740 d!48202))

(declare-fun b!192701 () Bool)

(declare-fun e!118460 () Int)

(declare-fun call!8900 () Int)

(assert (=> b!192701 (= e!118460 call!8900)))

(declare-fun b!192702 () Bool)

(declare-fun e!118464 () Bool)

(declare-fun lt!66425 () List!3230)

(assert (=> b!192702 (= e!118464 (= (size!2570 lt!66425) e!118460))))

(declare-fun c!36821 () Bool)

(assert (=> b!192702 (= c!36821 (<= (+ 0 1) 0))))

(declare-fun bm!8895 () Bool)

(assert (=> bm!8895 (= call!8900 (size!2570 lt!65911))))

(declare-fun b!192703 () Bool)

(declare-fun e!118462 () Int)

(assert (=> b!192703 (= e!118462 0)))

(declare-fun d!48204 () Bool)

(assert (=> d!48204 e!118464))

(declare-fun res!88346 () Bool)

(assert (=> d!48204 (=> (not res!88346) (not e!118464))))

(assert (=> d!48204 (= res!88346 (= ((_ map implies) (content!431 lt!66425) (content!431 lt!65911)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118461 () List!3230)

(assert (=> d!48204 (= lt!66425 e!118461)))

(declare-fun c!36818 () Bool)

(assert (=> d!48204 (= c!36818 ((_ is Nil!3220) lt!65911))))

(assert (=> d!48204 (= (drop!163 lt!65911 (+ 0 1)) lt!66425)))

(declare-fun b!192704 () Bool)

(assert (=> b!192704 (= e!118462 (- call!8900 (+ 0 1)))))

(declare-fun b!192705 () Bool)

(declare-fun e!118463 () List!3230)

(assert (=> b!192705 (= e!118461 e!118463)))

(declare-fun c!36819 () Bool)

(assert (=> b!192705 (= c!36819 (<= (+ 0 1) 0))))

(declare-fun b!192706 () Bool)

(assert (=> b!192706 (= e!118460 e!118462)))

(declare-fun c!36820 () Bool)

(assert (=> b!192706 (= c!36820 (>= (+ 0 1) call!8900))))

(declare-fun b!192707 () Bool)

(assert (=> b!192707 (= e!118461 Nil!3220)))

(declare-fun b!192708 () Bool)

(assert (=> b!192708 (= e!118463 lt!65911)))

(declare-fun b!192709 () Bool)

(assert (=> b!192709 (= e!118463 (drop!163 (t!28932 lt!65911) (- (+ 0 1) 1)))))

(assert (= (and d!48204 c!36818) b!192707))

(assert (= (and d!48204 (not c!36818)) b!192705))

(assert (= (and b!192705 c!36819) b!192708))

(assert (= (and b!192705 (not c!36819)) b!192709))

(assert (= (and d!48204 res!88346) b!192702))

(assert (= (and b!192702 c!36821) b!192701))

(assert (= (and b!192702 (not c!36821)) b!192706))

(assert (= (and b!192706 c!36820) b!192703))

(assert (= (and b!192706 (not c!36820)) b!192704))

(assert (= (or b!192701 b!192706 b!192704) bm!8895))

(declare-fun m!199803 () Bool)

(assert (=> b!192702 m!199803))

(declare-fun m!199805 () Bool)

(assert (=> bm!8895 m!199805))

(declare-fun m!199807 () Bool)

(assert (=> d!48204 m!199807))

(declare-fun m!199809 () Bool)

(assert (=> d!48204 m!199809))

(declare-fun m!199811 () Bool)

(assert (=> b!192709 m!199811))

(assert (=> b!191740 d!48204))

(declare-fun d!48206 () Bool)

(assert (=> d!48206 (= (tail!385 (drop!163 lt!65911 0)) (drop!163 lt!65911 (+ 0 1)))))

(declare-fun lt!66426 () Unit!3036)

(assert (=> d!48206 (= lt!66426 (choose!1944 lt!65911 0))))

(declare-fun e!118465 () Bool)

(assert (=> d!48206 e!118465))

(declare-fun res!88347 () Bool)

(assert (=> d!48206 (=> (not res!88347) (not e!118465))))

(assert (=> d!48206 (= res!88347 (>= 0 0))))

(assert (=> d!48206 (= (lemmaDropTail!142 lt!65911 0) lt!66426)))

(declare-fun b!192710 () Bool)

(assert (=> b!192710 (= e!118465 (< 0 (size!2570 lt!65911)))))

(assert (= (and d!48206 res!88347) b!192710))

(assert (=> d!48206 m!198013))

(assert (=> d!48206 m!198013))

(assert (=> d!48206 m!198029))

(assert (=> d!48206 m!198021))

(declare-fun m!199813 () Bool)

(assert (=> d!48206 m!199813))

(assert (=> b!192710 m!199805))

(assert (=> b!191740 d!48206))

(declare-fun d!48208 () Bool)

(assert (=> d!48208 (= (head!682 (drop!163 lt!65913 0)) (h!8617 (drop!163 lt!65913 0)))))

(assert (=> b!191740 d!48208))

(declare-fun b!192711 () Bool)

(declare-fun e!118466 () Int)

(declare-fun call!8901 () Int)

(assert (=> b!192711 (= e!118466 call!8901)))

(declare-fun b!192712 () Bool)

(declare-fun e!118470 () Bool)

(declare-fun lt!66427 () List!3230)

(assert (=> b!192712 (= e!118470 (= (size!2570 lt!66427) e!118466))))

(declare-fun c!36825 () Bool)

(assert (=> b!192712 (= c!36825 (<= 0 0))))

(declare-fun bm!8896 () Bool)

(assert (=> bm!8896 (= call!8901 (size!2570 lt!65911))))

(declare-fun b!192713 () Bool)

(declare-fun e!118468 () Int)

(assert (=> b!192713 (= e!118468 0)))

(declare-fun d!48210 () Bool)

(assert (=> d!48210 e!118470))

(declare-fun res!88348 () Bool)

(assert (=> d!48210 (=> (not res!88348) (not e!118470))))

(assert (=> d!48210 (= res!88348 (= ((_ map implies) (content!431 lt!66427) (content!431 lt!65911)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118467 () List!3230)

(assert (=> d!48210 (= lt!66427 e!118467)))

(declare-fun c!36822 () Bool)

(assert (=> d!48210 (= c!36822 ((_ is Nil!3220) lt!65911))))

(assert (=> d!48210 (= (drop!163 lt!65911 0) lt!66427)))

(declare-fun b!192714 () Bool)

(assert (=> b!192714 (= e!118468 (- call!8901 0))))

(declare-fun b!192715 () Bool)

(declare-fun e!118469 () List!3230)

(assert (=> b!192715 (= e!118467 e!118469)))

(declare-fun c!36823 () Bool)

(assert (=> b!192715 (= c!36823 (<= 0 0))))

(declare-fun b!192716 () Bool)

(assert (=> b!192716 (= e!118466 e!118468)))

(declare-fun c!36824 () Bool)

(assert (=> b!192716 (= c!36824 (>= 0 call!8901))))

(declare-fun b!192717 () Bool)

(assert (=> b!192717 (= e!118467 Nil!3220)))

(declare-fun b!192718 () Bool)

(assert (=> b!192718 (= e!118469 lt!65911)))

(declare-fun b!192719 () Bool)

(assert (=> b!192719 (= e!118469 (drop!163 (t!28932 lt!65911) (- 0 1)))))

(assert (= (and d!48210 c!36822) b!192717))

(assert (= (and d!48210 (not c!36822)) b!192715))

(assert (= (and b!192715 c!36823) b!192718))

(assert (= (and b!192715 (not c!36823)) b!192719))

(assert (= (and d!48210 res!88348) b!192712))

(assert (= (and b!192712 c!36825) b!192711))

(assert (= (and b!192712 (not c!36825)) b!192716))

(assert (= (and b!192716 c!36824) b!192713))

(assert (= (and b!192716 (not c!36824)) b!192714))

(assert (= (or b!192711 b!192716 b!192714) bm!8896))

(declare-fun m!199815 () Bool)

(assert (=> b!192712 m!199815))

(assert (=> bm!8896 m!199805))

(declare-fun m!199817 () Bool)

(assert (=> d!48210 m!199817))

(assert (=> d!48210 m!199809))

(declare-fun m!199819 () Bool)

(assert (=> b!192719 m!199819))

(assert (=> b!191740 d!48210))

(declare-fun b!192720 () Bool)

(declare-fun e!118471 () Int)

(declare-fun call!8902 () Int)

(assert (=> b!192720 (= e!118471 call!8902)))

(declare-fun b!192721 () Bool)

(declare-fun e!118475 () Bool)

(declare-fun lt!66428 () List!3230)

(assert (=> b!192721 (= e!118475 (= (size!2570 lt!66428) e!118471))))

(declare-fun c!36829 () Bool)

(assert (=> b!192721 (= c!36829 (<= 0 0))))

(declare-fun bm!8897 () Bool)

(assert (=> bm!8897 (= call!8902 (size!2570 lt!65913))))

(declare-fun b!192722 () Bool)

(declare-fun e!118473 () Int)

(assert (=> b!192722 (= e!118473 0)))

(declare-fun d!48212 () Bool)

(assert (=> d!48212 e!118475))

(declare-fun res!88349 () Bool)

(assert (=> d!48212 (=> (not res!88349) (not e!118475))))

(assert (=> d!48212 (= res!88349 (= ((_ map implies) (content!431 lt!66428) (content!431 lt!65913)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118472 () List!3230)

(assert (=> d!48212 (= lt!66428 e!118472)))

(declare-fun c!36826 () Bool)

(assert (=> d!48212 (= c!36826 ((_ is Nil!3220) lt!65913))))

(assert (=> d!48212 (= (drop!163 lt!65913 0) lt!66428)))

(declare-fun b!192723 () Bool)

(assert (=> b!192723 (= e!118473 (- call!8902 0))))

(declare-fun b!192724 () Bool)

(declare-fun e!118474 () List!3230)

(assert (=> b!192724 (= e!118472 e!118474)))

(declare-fun c!36827 () Bool)

(assert (=> b!192724 (= c!36827 (<= 0 0))))

(declare-fun b!192725 () Bool)

(assert (=> b!192725 (= e!118471 e!118473)))

(declare-fun c!36828 () Bool)

(assert (=> b!192725 (= c!36828 (>= 0 call!8902))))

(declare-fun b!192726 () Bool)

(assert (=> b!192726 (= e!118472 Nil!3220)))

(declare-fun b!192727 () Bool)

(assert (=> b!192727 (= e!118474 lt!65913)))

(declare-fun b!192728 () Bool)

(assert (=> b!192728 (= e!118474 (drop!163 (t!28932 lt!65913) (- 0 1)))))

(assert (= (and d!48212 c!36826) b!192726))

(assert (= (and d!48212 (not c!36826)) b!192724))

(assert (= (and b!192724 c!36827) b!192727))

(assert (= (and b!192724 (not c!36827)) b!192728))

(assert (= (and d!48212 res!88349) b!192721))

(assert (= (and b!192721 c!36829) b!192720))

(assert (= (and b!192721 (not c!36829)) b!192725))

(assert (= (and b!192725 c!36828) b!192722))

(assert (= (and b!192725 (not c!36828)) b!192723))

(assert (= (or b!192720 b!192725 b!192723) bm!8897))

(declare-fun m!199821 () Bool)

(assert (=> b!192721 m!199821))

(declare-fun m!199823 () Bool)

(assert (=> bm!8897 m!199823))

(declare-fun m!199825 () Bool)

(assert (=> d!48212 m!199825))

(declare-fun m!199827 () Bool)

(assert (=> d!48212 m!199827))

(declare-fun m!199829 () Bool)

(assert (=> b!192728 m!199829))

(assert (=> b!191740 d!48212))

(declare-fun d!48214 () Bool)

(assert (=> d!48214 (= (list!1182 lt!65418) (list!1186 (c!36427 lt!65418)))))

(declare-fun bs!19031 () Bool)

(assert (= bs!19031 d!48214))

(declare-fun m!199831 () Bool)

(assert (=> bs!19031 m!199831))

(assert (=> b!191740 d!48214))

(declare-fun b!192730 () Bool)

(declare-fun res!88352 () Bool)

(declare-fun e!118476 () Bool)

(assert (=> b!192730 (=> (not res!88352) (not e!118476))))

(assert (=> b!192730 (= res!88352 (<= (height!101 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65418 0))))) (+ (max!0 (height!101 (c!36425 (BalanceConc!2025 Empty!1008))) (height!101 (c!36425 (charsOf!248 (apply!492 lt!65418 0))))) 1)))))

(declare-fun b!192732 () Bool)

(declare-fun lt!66429 () BalanceConc!2024)

(assert (=> b!192732 (= e!118476 (= (list!1179 lt!66429) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (apply!492 lt!65418 0))))))))

(declare-fun b!192731 () Bool)

(declare-fun res!88353 () Bool)

(assert (=> b!192731 (=> (not res!88353) (not e!118476))))

(assert (=> b!192731 (= res!88353 (>= (height!101 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65418 0))))) (max!0 (height!101 (c!36425 (BalanceConc!2025 Empty!1008))) (height!101 (c!36425 (charsOf!248 (apply!492 lt!65418 0)))))))))

(declare-fun d!48216 () Bool)

(assert (=> d!48216 e!118476))

(declare-fun res!88350 () Bool)

(assert (=> d!48216 (=> (not res!88350) (not e!118476))))

(assert (=> d!48216 (= res!88350 (appendAssocInst!34 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65418 0)))))))

(assert (=> d!48216 (= lt!66429 (BalanceConc!2025 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65418 0))))))))

(assert (=> d!48216 (= (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65418 0))) lt!66429)))

(declare-fun b!192729 () Bool)

(declare-fun res!88351 () Bool)

(assert (=> b!192729 (=> (not res!88351) (not e!118476))))

(assert (=> b!192729 (= res!88351 (isBalanced!266 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65418 0))))))))

(assert (= (and d!48216 res!88350) b!192729))

(assert (= (and b!192729 res!88351) b!192730))

(assert (= (and b!192730 res!88352) b!192731))

(assert (= (and b!192731 res!88353) b!192732))

(declare-fun m!199833 () Bool)

(assert (=> b!192732 m!199833))

(assert (=> b!192732 m!197539))

(assert (=> b!192732 m!197995))

(declare-fun m!199835 () Bool)

(assert (=> b!192732 m!199835))

(assert (=> b!192732 m!197539))

(assert (=> b!192732 m!199835))

(declare-fun m!199837 () Bool)

(assert (=> b!192732 m!199837))

(declare-fun m!199839 () Bool)

(assert (=> b!192729 m!199839))

(assert (=> b!192729 m!199839))

(declare-fun m!199841 () Bool)

(assert (=> b!192729 m!199841))

(declare-fun m!199843 () Bool)

(assert (=> b!192731 m!199843))

(declare-fun m!199845 () Bool)

(assert (=> b!192731 m!199845))

(declare-fun m!199847 () Bool)

(assert (=> b!192731 m!199847))

(assert (=> b!192731 m!199839))

(declare-fun m!199849 () Bool)

(assert (=> b!192731 m!199849))

(assert (=> b!192731 m!199843))

(assert (=> b!192731 m!199839))

(assert (=> b!192731 m!199845))

(assert (=> b!192730 m!199843))

(assert (=> b!192730 m!199845))

(assert (=> b!192730 m!199847))

(assert (=> b!192730 m!199839))

(assert (=> b!192730 m!199849))

(assert (=> b!192730 m!199843))

(assert (=> b!192730 m!199839))

(assert (=> b!192730 m!199845))

(declare-fun m!199851 () Bool)

(assert (=> d!48216 m!199851))

(assert (=> d!48216 m!199839))

(assert (=> b!191740 d!48216))

(declare-fun d!48218 () Bool)

(declare-fun lt!66430 () Token!930)

(assert (=> d!48218 (= lt!66430 (apply!497 (list!1182 lt!65418) 0))))

(assert (=> d!48218 (= lt!66430 (apply!498 (c!36427 lt!65418) 0))))

(declare-fun e!118477 () Bool)

(assert (=> d!48218 e!118477))

(declare-fun res!88354 () Bool)

(assert (=> d!48218 (=> (not res!88354) (not e!118477))))

(assert (=> d!48218 (= res!88354 (<= 0 0))))

(assert (=> d!48218 (= (apply!492 lt!65418 0) lt!66430)))

(declare-fun b!192733 () Bool)

(assert (=> b!192733 (= e!118477 (< 0 (size!2563 lt!65418)))))

(assert (= (and d!48218 res!88354) b!192733))

(assert (=> d!48218 m!197925))

(assert (=> d!48218 m!197925))

(declare-fun m!199853 () Bool)

(assert (=> d!48218 m!199853))

(declare-fun m!199855 () Bool)

(assert (=> d!48218 m!199855))

(assert (=> b!192733 m!197965))

(assert (=> b!191740 d!48218))

(declare-fun d!48220 () Bool)

(declare-fun lt!66431 () Token!930)

(assert (=> d!48220 (contains!514 lt!65913 lt!66431)))

(declare-fun e!118479 () Token!930)

(assert (=> d!48220 (= lt!66431 e!118479)))

(declare-fun c!36830 () Bool)

(assert (=> d!48220 (= c!36830 (= 0 0))))

(declare-fun e!118478 () Bool)

(assert (=> d!48220 e!118478))

(declare-fun res!88355 () Bool)

(assert (=> d!48220 (=> (not res!88355) (not e!118478))))

(assert (=> d!48220 (= res!88355 (<= 0 0))))

(assert (=> d!48220 (= (apply!497 lt!65913 0) lt!66431)))

(declare-fun b!192734 () Bool)

(assert (=> b!192734 (= e!118478 (< 0 (size!2570 lt!65913)))))

(declare-fun b!192735 () Bool)

(assert (=> b!192735 (= e!118479 (head!682 lt!65913))))

(declare-fun b!192736 () Bool)

(assert (=> b!192736 (= e!118479 (apply!497 (tail!385 lt!65913) (- 0 1)))))

(assert (= (and d!48220 res!88355) b!192734))

(assert (= (and d!48220 c!36830) b!192735))

(assert (= (and d!48220 (not c!36830)) b!192736))

(declare-fun m!199857 () Bool)

(assert (=> d!48220 m!199857))

(assert (=> b!192734 m!199823))

(declare-fun m!199859 () Bool)

(assert (=> b!192735 m!199859))

(declare-fun m!199861 () Bool)

(assert (=> b!192736 m!199861))

(assert (=> b!192736 m!199861))

(declare-fun m!199863 () Bool)

(assert (=> b!192736 m!199863))

(assert (=> b!191740 d!48220))

(declare-fun d!48222 () Bool)

(assert (=> d!48222 (= (head!682 (drop!163 lt!65913 0)) (apply!497 lt!65913 0))))

(declare-fun lt!66432 () Unit!3036)

(assert (=> d!48222 (= lt!66432 (choose!1947 lt!65913 0))))

(declare-fun e!118480 () Bool)

(assert (=> d!48222 e!118480))

(declare-fun res!88356 () Bool)

(assert (=> d!48222 (=> (not res!88356) (not e!118480))))

(assert (=> d!48222 (= res!88356 (>= 0 0))))

(assert (=> d!48222 (= (lemmaDropApply!150 lt!65913 0) lt!66432)))

(declare-fun b!192737 () Bool)

(assert (=> b!192737 (= e!118480 (< 0 (size!2570 lt!65913)))))

(assert (= (and d!48222 res!88356) b!192737))

(assert (=> d!48222 m!197975))

(assert (=> d!48222 m!197975))

(assert (=> d!48222 m!197979))

(assert (=> d!48222 m!198025))

(declare-fun m!199865 () Bool)

(assert (=> d!48222 m!199865))

(assert (=> b!192737 m!199823))

(assert (=> b!191740 d!48222))

(declare-fun d!48224 () Bool)

(declare-fun lt!66438 () BalanceConc!2024)

(assert (=> d!48224 (= (list!1179 lt!66438) (printListTailRec!78 thiss!17480 (dropList!110 lt!65418 (+ 0 1)) (list!1179 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65418 0))))))))

(declare-fun e!118481 () BalanceConc!2024)

(assert (=> d!48224 (= lt!66438 e!118481)))

(declare-fun c!36831 () Bool)

(assert (=> d!48224 (= c!36831 (>= (+ 0 1) (size!2563 lt!65418)))))

(declare-fun e!118482 () Bool)

(assert (=> d!48224 e!118482))

(declare-fun res!88357 () Bool)

(assert (=> d!48224 (=> (not res!88357) (not e!118482))))

(assert (=> d!48224 (= res!88357 (>= (+ 0 1) 0))))

(assert (=> d!48224 (= (printTailRec!173 thiss!17480 lt!65418 (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65418 0)))) lt!66438)))

(declare-fun b!192738 () Bool)

(assert (=> b!192738 (= e!118482 (<= (+ 0 1) (size!2563 lt!65418)))))

(declare-fun b!192739 () Bool)

(assert (=> b!192739 (= e!118481 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65418 0))))))

(declare-fun b!192740 () Bool)

(assert (=> b!192740 (= e!118481 (printTailRec!173 thiss!17480 lt!65418 (+ 0 1 1) (++!770 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65418 0))) (charsOf!248 (apply!492 lt!65418 (+ 0 1))))))))

(declare-fun lt!66436 () List!3230)

(assert (=> b!192740 (= lt!66436 (list!1182 lt!65418))))

(declare-fun lt!66439 () Unit!3036)

(assert (=> b!192740 (= lt!66439 (lemmaDropApply!150 lt!66436 (+ 0 1)))))

(assert (=> b!192740 (= (head!682 (drop!163 lt!66436 (+ 0 1))) (apply!497 lt!66436 (+ 0 1)))))

(declare-fun lt!66435 () Unit!3036)

(assert (=> b!192740 (= lt!66435 lt!66439)))

(declare-fun lt!66434 () List!3230)

(assert (=> b!192740 (= lt!66434 (list!1182 lt!65418))))

(declare-fun lt!66437 () Unit!3036)

(assert (=> b!192740 (= lt!66437 (lemmaDropTail!142 lt!66434 (+ 0 1)))))

(assert (=> b!192740 (= (tail!385 (drop!163 lt!66434 (+ 0 1))) (drop!163 lt!66434 (+ 0 1 1)))))

(declare-fun lt!66433 () Unit!3036)

(assert (=> b!192740 (= lt!66433 lt!66437)))

(assert (= (and d!48224 res!88357) b!192738))

(assert (= (and d!48224 c!36831) b!192739))

(assert (= (and d!48224 (not c!36831)) b!192740))

(assert (=> d!48224 m!197965))

(assert (=> d!48224 m!197999))

(declare-fun m!199867 () Bool)

(assert (=> d!48224 m!199867))

(declare-fun m!199869 () Bool)

(assert (=> d!48224 m!199869))

(assert (=> d!48224 m!199867))

(declare-fun m!199871 () Bool)

(assert (=> d!48224 m!199871))

(assert (=> d!48224 m!199869))

(declare-fun m!199873 () Bool)

(assert (=> d!48224 m!199873))

(assert (=> b!192738 m!197965))

(declare-fun m!199875 () Bool)

(assert (=> b!192740 m!199875))

(declare-fun m!199877 () Bool)

(assert (=> b!192740 m!199877))

(assert (=> b!192740 m!197925))

(declare-fun m!199879 () Bool)

(assert (=> b!192740 m!199879))

(declare-fun m!199881 () Bool)

(assert (=> b!192740 m!199881))

(declare-fun m!199883 () Bool)

(assert (=> b!192740 m!199883))

(declare-fun m!199885 () Bool)

(assert (=> b!192740 m!199885))

(assert (=> b!192740 m!199883))

(declare-fun m!199887 () Bool)

(assert (=> b!192740 m!199887))

(declare-fun m!199889 () Bool)

(assert (=> b!192740 m!199889))

(assert (=> b!192740 m!197999))

(assert (=> b!192740 m!199885))

(assert (=> b!192740 m!199887))

(declare-fun m!199891 () Bool)

(assert (=> b!192740 m!199891))

(assert (=> b!192740 m!199875))

(declare-fun m!199893 () Bool)

(assert (=> b!192740 m!199893))

(declare-fun m!199895 () Bool)

(assert (=> b!192740 m!199895))

(assert (=> b!192740 m!199891))

(declare-fun m!199897 () Bool)

(assert (=> b!192740 m!199897))

(assert (=> b!191740 d!48224))

(declare-fun d!48226 () Bool)

(declare-fun lt!66440 () BalanceConc!2024)

(assert (=> d!48226 (= (list!1179 lt!66440) (originalCharacters!636 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754))))))

(assert (=> d!48226 (= lt!66440 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754))))) (value!21216 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))))

(assert (=> d!48226 (= (charsOf!248 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754))) lt!66440)))

(declare-fun b_lambda!4699 () Bool)

(assert (=> (not b_lambda!4699) (not d!48226)))

(declare-fun t!29138 () Bool)

(declare-fun tb!7947 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))) t!29138) tb!7947))

(declare-fun b!192741 () Bool)

(declare-fun tp!88912 () Bool)

(declare-fun e!118483 () Bool)

(assert (=> b!192741 (= e!118483 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754))))) (value!21216 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))) tp!88912))))

(declare-fun result!10890 () Bool)

(assert (=> tb!7947 (= result!10890 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754))))) (value!21216 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754))))) e!118483))))

(assert (= tb!7947 b!192741))

(declare-fun m!199899 () Bool)

(assert (=> b!192741 m!199899))

(declare-fun m!199901 () Bool)

(assert (=> tb!7947 m!199901))

(assert (=> d!48226 t!29138))

(declare-fun b_and!13451 () Bool)

(assert (= b_and!13447 (and (=> t!29138 result!10890) b_and!13451)))

(declare-fun tb!7949 () Bool)

(declare-fun t!29140 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))) t!29140) tb!7949))

(declare-fun result!10892 () Bool)

(assert (= result!10892 result!10890))

(assert (=> d!48226 t!29140))

(declare-fun b_and!13453 () Bool)

(assert (= b_and!13449 (and (=> t!29140 result!10892) b_and!13453)))

(declare-fun tb!7951 () Bool)

(declare-fun t!29142 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))) t!29142) tb!7951))

(declare-fun result!10894 () Bool)

(assert (= result!10894 result!10890))

(assert (=> d!48226 t!29142))

(declare-fun b_and!13455 () Bool)

(assert (= b_and!13443 (and (=> t!29142 result!10894) b_and!13455)))

(declare-fun t!29144 () Bool)

(declare-fun tb!7953 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))) t!29144) tb!7953))

(declare-fun result!10896 () Bool)

(assert (= result!10896 result!10890))

(assert (=> d!48226 t!29144))

(declare-fun b_and!13457 () Bool)

(assert (= b_and!13445 (and (=> t!29144 result!10896) b_and!13457)))

(declare-fun t!29146 () Bool)

(declare-fun tb!7955 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))) t!29146) tb!7955))

(declare-fun result!10898 () Bool)

(assert (= result!10898 result!10890))

(assert (=> d!48226 t!29146))

(declare-fun b_and!13459 () Bool)

(assert (= b_and!13441 (and (=> t!29146 result!10898) b_and!13459)))

(declare-fun m!199903 () Bool)

(assert (=> d!48226 m!199903))

(declare-fun m!199905 () Bool)

(assert (=> d!48226 m!199905))

(assert (=> bm!8748 d!48226))

(declare-fun d!48228 () Bool)

(assert (=> d!48228 true))

(declare-fun order!2043 () Int)

(declare-fun lambda!5897 () Int)

(declare-fun dynLambda!1380 (Int Int) Int)

(assert (=> d!48228 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1380 order!2043 lambda!5897))))

(declare-fun Forall2!116 (Int) Bool)

(assert (=> d!48228 (= (equivClasses!184 (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (Forall2!116 lambda!5897))))

(declare-fun bs!19032 () Bool)

(assert (= bs!19032 d!48228))

(declare-fun m!199907 () Bool)

(assert (=> bs!19032 m!199907))

(assert (=> b!191872 d!48228))

(declare-fun d!48230 () Bool)

(declare-fun lt!66441 () Int)

(assert (=> d!48230 (>= lt!66441 0)))

(declare-fun e!118486 () Int)

(assert (=> d!48230 (= lt!66441 e!118486)))

(declare-fun c!36832 () Bool)

(assert (=> d!48230 (= c!36832 ((_ is Nil!3218) lt!65405))))

(assert (=> d!48230 (= (size!2566 lt!65405) lt!66441)))

(declare-fun b!192746 () Bool)

(assert (=> b!192746 (= e!118486 0)))

(declare-fun b!192747 () Bool)

(assert (=> b!192747 (= e!118486 (+ 1 (size!2566 (t!28930 lt!65405))))))

(assert (= (and d!48230 c!36832) b!192746))

(assert (= (and d!48230 (not c!36832)) b!192747))

(declare-fun m!199909 () Bool)

(assert (=> b!192747 m!199909))

(assert (=> b!191715 d!48230))

(assert (=> b!191715 d!48016))

(declare-fun d!48232 () Bool)

(declare-fun lt!66442 () Int)

(assert (=> d!48232 (= lt!66442 (size!2570 (list!1182 (_1!1867 lt!65937))))))

(assert (=> d!48232 (= lt!66442 (size!2571 (c!36427 (_1!1867 lt!65937))))))

(assert (=> d!48232 (= (size!2563 (_1!1867 lt!65937)) lt!66442)))

(declare-fun bs!19033 () Bool)

(assert (= bs!19033 d!48232))

(assert (=> bs!19033 m!198129))

(assert (=> bs!19033 m!198129))

(declare-fun m!199911 () Bool)

(assert (=> bs!19033 m!199911))

(declare-fun m!199913 () Bool)

(assert (=> bs!19033 m!199913))

(assert (=> d!47730 d!48232))

(declare-fun b!192748 () Bool)

(declare-fun e!118488 () tuple2!3302)

(assert (=> b!192748 (= e!118488 (tuple2!3303 (BalanceConc!2027 Empty!1009) lt!65426))))

(declare-fun e!118490 () Bool)

(declare-fun lt!66463 () tuple2!3302)

(declare-fun b!192749 () Bool)

(assert (=> b!192749 (= e!118490 (= (list!1179 (_2!1867 lt!66463)) (list!1179 (_2!1867 (lexRec!69 thiss!17480 rules!1920 lt!65426)))))))

(declare-fun b!192750 () Bool)

(declare-fun e!118487 () tuple2!3302)

(assert (=> b!192750 (= e!118487 (tuple2!3303 (BalanceConc!2027 Empty!1009) lt!65426))))

(declare-fun d!48234 () Bool)

(assert (=> d!48234 e!118490))

(declare-fun res!88360 () Bool)

(assert (=> d!48234 (=> (not res!88360) (not e!118490))))

(assert (=> d!48234 (= res!88360 (= (list!1182 (_1!1867 lt!66463)) (list!1182 (_1!1867 (lexRec!69 thiss!17480 rules!1920 lt!65426)))))))

(assert (=> d!48234 (= lt!66463 e!118487)))

(declare-fun c!36835 () Bool)

(declare-fun lt!66454 () Option!471)

(assert (=> d!48234 (= c!36835 ((_ is Some!470) lt!66454))))

(assert (=> d!48234 (= lt!66454 (maxPrefixZipperSequenceV2!54 thiss!17480 rules!1920 lt!65426 lt!65426))))

(declare-fun lt!66456 () Unit!3036)

(declare-fun lt!66444 () Unit!3036)

(assert (=> d!48234 (= lt!66456 lt!66444)))

(declare-fun lt!66471 () List!3228)

(declare-fun lt!66473 () List!3228)

(assert (=> d!48234 (isSuffix!54 lt!66471 (++!768 lt!66473 lt!66471))))

(assert (=> d!48234 (= lt!66444 (lemmaConcatTwoListThenFSndIsSuffix!54 lt!66473 lt!66471))))

(assert (=> d!48234 (= lt!66471 (list!1179 lt!65426))))

(assert (=> d!48234 (= lt!66473 (list!1179 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!48234 (= (lexTailRecV2!122 thiss!17480 rules!1920 lt!65426 (BalanceConc!2025 Empty!1008) lt!65426 (BalanceConc!2027 Empty!1009)) lt!66463)))

(declare-fun lt!66459 () tuple2!3302)

(declare-fun b!192751 () Bool)

(declare-fun lt!66469 () Option!471)

(assert (=> b!192751 (= lt!66459 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!66469))))))

(declare-fun e!118489 () tuple2!3302)

(assert (=> b!192751 (= e!118489 (tuple2!3303 (prepend!152 (_1!1867 lt!66459) (_1!1868 (v!13981 lt!66469))) (_2!1867 lt!66459)))))

(declare-fun b!192752 () Bool)

(declare-fun lt!66445 () BalanceConc!2024)

(assert (=> b!192752 (= e!118487 (lexTailRecV2!122 thiss!17480 rules!1920 lt!65426 lt!66445 (_2!1868 (v!13981 lt!66454)) (append!74 (BalanceConc!2027 Empty!1009) (_1!1868 (v!13981 lt!66454)))))))

(declare-fun lt!66464 () tuple2!3302)

(assert (=> b!192752 (= lt!66464 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!66454))))))

(declare-fun lt!66468 () List!3228)

(assert (=> b!192752 (= lt!66468 (list!1179 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!66452 () List!3228)

(assert (=> b!192752 (= lt!66452 (list!1179 (charsOf!248 (_1!1868 (v!13981 lt!66454)))))))

(declare-fun lt!66476 () List!3228)

(assert (=> b!192752 (= lt!66476 (list!1179 (_2!1868 (v!13981 lt!66454))))))

(declare-fun lt!66446 () Unit!3036)

(assert (=> b!192752 (= lt!66446 (lemmaConcatAssociativity!282 lt!66468 lt!66452 lt!66476))))

(assert (=> b!192752 (= (++!768 (++!768 lt!66468 lt!66452) lt!66476) (++!768 lt!66468 (++!768 lt!66452 lt!66476)))))

(declare-fun lt!66460 () Unit!3036)

(assert (=> b!192752 (= lt!66460 lt!66446)))

(declare-fun lt!66443 () Option!471)

(assert (=> b!192752 (= lt!66443 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 lt!65426))))

(declare-fun c!36834 () Bool)

(assert (=> b!192752 (= c!36834 ((_ is Some!470) lt!66443))))

(assert (=> b!192752 (= (lexRec!69 thiss!17480 rules!1920 lt!65426) e!118488)))

(declare-fun lt!66447 () Unit!3036)

(declare-fun Unit!3068 () Unit!3036)

(assert (=> b!192752 (= lt!66447 Unit!3068)))

(declare-fun lt!66461 () List!3230)

(assert (=> b!192752 (= lt!66461 (list!1182 (BalanceConc!2027 Empty!1009)))))

(declare-fun lt!66475 () List!3230)

(assert (=> b!192752 (= lt!66475 (Cons!3220 (_1!1868 (v!13981 lt!66454)) Nil!3220))))

(declare-fun lt!66450 () List!3230)

(assert (=> b!192752 (= lt!66450 (list!1182 (_1!1867 lt!66464)))))

(declare-fun lt!66466 () Unit!3036)

(assert (=> b!192752 (= lt!66466 (lemmaConcatAssociativity!283 lt!66461 lt!66475 lt!66450))))

(assert (=> b!192752 (= (++!773 (++!773 lt!66461 lt!66475) lt!66450) (++!773 lt!66461 (++!773 lt!66475 lt!66450)))))

(declare-fun lt!66467 () Unit!3036)

(assert (=> b!192752 (= lt!66467 lt!66466)))

(declare-fun lt!66453 () List!3228)

(assert (=> b!192752 (= lt!66453 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (_1!1868 (v!13981 lt!66454))))))))

(declare-fun lt!66451 () List!3228)

(assert (=> b!192752 (= lt!66451 (list!1179 (_2!1868 (v!13981 lt!66454))))))

(declare-fun lt!66465 () List!3230)

(assert (=> b!192752 (= lt!66465 (list!1182 (append!74 (BalanceConc!2027 Empty!1009) (_1!1868 (v!13981 lt!66454)))))))

(declare-fun lt!66458 () Unit!3036)

(assert (=> b!192752 (= lt!66458 (lemmaLexThenLexPrefix!56 thiss!17480 rules!1920 lt!66453 lt!66451 lt!66465 (list!1182 (_1!1867 lt!66464)) (list!1179 (_2!1867 lt!66464))))))

(assert (=> b!192752 (= (lexList!135 thiss!17480 rules!1920 lt!66453) (tuple2!3311 lt!66465 Nil!3218))))

(declare-fun lt!66474 () Unit!3036)

(assert (=> b!192752 (= lt!66474 lt!66458)))

(declare-fun lt!66472 () BalanceConc!2024)

(assert (=> b!192752 (= lt!66472 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!66454)))))))

(assert (=> b!192752 (= lt!66469 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 lt!66472))))

(declare-fun c!36833 () Bool)

(assert (=> b!192752 (= c!36833 ((_ is Some!470) lt!66469))))

(assert (=> b!192752 (= (lexRec!69 thiss!17480 rules!1920 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!66454))))) e!118489)))

(declare-fun lt!66448 () Unit!3036)

(declare-fun Unit!3069 () Unit!3036)

(assert (=> b!192752 (= lt!66448 Unit!3069)))

(assert (=> b!192752 (= lt!66445 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!66454)))))))

(declare-fun lt!66455 () List!3228)

(assert (=> b!192752 (= lt!66455 (list!1179 lt!66445))))

(declare-fun lt!66449 () List!3228)

(assert (=> b!192752 (= lt!66449 (list!1179 (_2!1868 (v!13981 lt!66454))))))

(declare-fun lt!66462 () Unit!3036)

(assert (=> b!192752 (= lt!66462 (lemmaConcatTwoListThenFSndIsSuffix!54 lt!66455 lt!66449))))

(assert (=> b!192752 (isSuffix!54 lt!66449 (++!768 lt!66455 lt!66449))))

(declare-fun lt!66470 () Unit!3036)

(assert (=> b!192752 (= lt!66470 lt!66462)))

(declare-fun b!192753 () Bool)

(declare-fun lt!66457 () tuple2!3302)

(assert (=> b!192753 (= lt!66457 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!66443))))))

(assert (=> b!192753 (= e!118488 (tuple2!3303 (prepend!152 (_1!1867 lt!66457) (_1!1868 (v!13981 lt!66443))) (_2!1867 lt!66457)))))

(declare-fun b!192754 () Bool)

(assert (=> b!192754 (= e!118489 (tuple2!3303 (BalanceConc!2027 Empty!1009) lt!66472))))

(assert (= (and d!48234 c!36835) b!192752))

(assert (= (and d!48234 (not c!36835)) b!192750))

(assert (= (and b!192752 c!36834) b!192753))

(assert (= (and b!192752 (not c!36834)) b!192748))

(assert (= (and b!192752 c!36833) b!192751))

(assert (= (and b!192752 (not c!36833)) b!192754))

(assert (= (and d!48234 res!88360) b!192749))

(declare-fun m!199915 () Bool)

(assert (=> b!192753 m!199915))

(declare-fun m!199917 () Bool)

(assert (=> b!192753 m!199917))

(assert (=> d!48234 m!197539))

(declare-fun m!199919 () Bool)

(assert (=> d!48234 m!199919))

(declare-fun m!199921 () Bool)

(assert (=> d!48234 m!199921))

(assert (=> d!48234 m!198131))

(declare-fun m!199923 () Bool)

(assert (=> d!48234 m!199923))

(assert (=> d!48234 m!199919))

(declare-fun m!199925 () Bool)

(assert (=> d!48234 m!199925))

(declare-fun m!199927 () Bool)

(assert (=> d!48234 m!199927))

(declare-fun m!199929 () Bool)

(assert (=> d!48234 m!199929))

(declare-fun m!199931 () Bool)

(assert (=> d!48234 m!199931))

(declare-fun m!199933 () Bool)

(assert (=> b!192751 m!199933))

(declare-fun m!199935 () Bool)

(assert (=> b!192751 m!199935))

(assert (=> b!192752 m!197539))

(declare-fun m!199937 () Bool)

(assert (=> b!192752 m!199937))

(declare-fun m!199939 () Bool)

(assert (=> b!192752 m!199939))

(assert (=> b!192752 m!199937))

(declare-fun m!199941 () Bool)

(assert (=> b!192752 m!199941))

(declare-fun m!199943 () Bool)

(assert (=> b!192752 m!199943))

(declare-fun m!199945 () Bool)

(assert (=> b!192752 m!199945))

(declare-fun m!199947 () Bool)

(assert (=> b!192752 m!199947))

(declare-fun m!199949 () Bool)

(assert (=> b!192752 m!199949))

(declare-fun m!199951 () Bool)

(assert (=> b!192752 m!199951))

(declare-fun m!199953 () Bool)

(assert (=> b!192752 m!199953))

(declare-fun m!199955 () Bool)

(assert (=> b!192752 m!199955))

(declare-fun m!199957 () Bool)

(assert (=> b!192752 m!199957))

(declare-fun m!199959 () Bool)

(assert (=> b!192752 m!199959))

(declare-fun m!199961 () Bool)

(assert (=> b!192752 m!199961))

(declare-fun m!199963 () Bool)

(assert (=> b!192752 m!199963))

(declare-fun m!199965 () Bool)

(assert (=> b!192752 m!199965))

(declare-fun m!199967 () Bool)

(assert (=> b!192752 m!199967))

(assert (=> b!192752 m!199955))

(declare-fun m!199969 () Bool)

(assert (=> b!192752 m!199969))

(declare-fun m!199971 () Bool)

(assert (=> b!192752 m!199971))

(declare-fun m!199973 () Bool)

(assert (=> b!192752 m!199973))

(declare-fun m!199975 () Bool)

(assert (=> b!192752 m!199975))

(assert (=> b!192752 m!199963))

(assert (=> b!192752 m!199967))

(declare-fun m!199977 () Bool)

(assert (=> b!192752 m!199977))

(declare-fun m!199979 () Bool)

(assert (=> b!192752 m!199979))

(declare-fun m!199981 () Bool)

(assert (=> b!192752 m!199981))

(declare-fun m!199983 () Bool)

(assert (=> b!192752 m!199983))

(declare-fun m!199985 () Bool)

(assert (=> b!192752 m!199985))

(assert (=> b!192752 m!199955))

(assert (=> b!192752 m!199953))

(declare-fun m!199987 () Bool)

(assert (=> b!192752 m!199987))

(assert (=> b!192752 m!199937))

(assert (=> b!192752 m!199983))

(assert (=> b!192752 m!199305))

(declare-fun m!199989 () Bool)

(assert (=> b!192752 m!199989))

(declare-fun m!199991 () Bool)

(assert (=> b!192752 m!199991))

(assert (=> b!192752 m!199931))

(assert (=> b!192752 m!197539))

(assert (=> b!192752 m!199941))

(declare-fun m!199993 () Bool)

(assert (=> b!192752 m!199993))

(assert (=> b!192752 m!199947))

(assert (=> b!192752 m!199959))

(assert (=> b!192752 m!199951))

(declare-fun m!199995 () Bool)

(assert (=> b!192752 m!199995))

(assert (=> b!192752 m!199979))

(declare-fun m!199997 () Bool)

(assert (=> b!192749 m!199997))

(assert (=> b!192749 m!199931))

(declare-fun m!199999 () Bool)

(assert (=> b!192749 m!199999))

(assert (=> d!47730 d!48234))

(assert (=> b!191576 d!48074))

(assert (=> b!191576 d!48076))

(declare-fun d!48236 () Bool)

(declare-fun lt!66477 () Int)

(assert (=> d!48236 (>= lt!66477 0)))

(declare-fun e!118491 () Int)

(assert (=> d!48236 (= lt!66477 e!118491)))

(declare-fun c!36836 () Bool)

(assert (=> d!48236 (= c!36836 ((_ is Nil!3218) lt!65630))))

(assert (=> d!48236 (= (size!2566 lt!65630) lt!66477)))

(declare-fun b!192755 () Bool)

(assert (=> b!192755 (= e!118491 0)))

(declare-fun b!192756 () Bool)

(assert (=> b!192756 (= e!118491 (+ 1 (size!2566 (t!28930 lt!65630))))))

(assert (= (and d!48236 c!36836) b!192755))

(assert (= (and d!48236 (not c!36836)) b!192756))

(declare-fun m!200001 () Bool)

(assert (=> b!192756 m!200001))

(assert (=> b!191313 d!48236))

(assert (=> b!191313 d!48016))

(declare-fun d!48238 () Bool)

(declare-fun lt!66478 () Int)

(assert (=> d!48238 (>= lt!66478 0)))

(declare-fun e!118492 () Int)

(assert (=> d!48238 (= lt!66478 e!118492)))

(declare-fun c!36837 () Bool)

(assert (=> d!48238 (= c!36837 ((_ is Nil!3218) lt!65438))))

(assert (=> d!48238 (= (size!2566 lt!65438) lt!66478)))

(declare-fun b!192757 () Bool)

(assert (=> b!192757 (= e!118492 0)))

(declare-fun b!192758 () Bool)

(assert (=> b!192758 (= e!118492 (+ 1 (size!2566 (t!28930 lt!65438))))))

(assert (= (and d!48238 c!36837) b!192757))

(assert (= (and d!48238 (not c!36837)) b!192758))

(declare-fun m!200003 () Bool)

(assert (=> b!192758 m!200003))

(assert (=> b!191313 d!48238))

(declare-fun d!48240 () Bool)

(assert (=> d!48240 (= (list!1179 (_2!1867 lt!65938)) (list!1183 (c!36425 (_2!1867 lt!65938))))))

(declare-fun bs!19034 () Bool)

(assert (= bs!19034 d!48240))

(declare-fun m!200005 () Bool)

(assert (=> bs!19034 m!200005))

(assert (=> b!191847 d!48240))

(declare-fun d!48242 () Bool)

(declare-fun e!118494 () Bool)

(assert (=> d!48242 e!118494))

(declare-fun c!36839 () Bool)

(declare-fun lt!66481 () tuple2!3310)

(assert (=> d!48242 (= c!36839 (> (size!2570 (_1!1871 lt!66481)) 0))))

(declare-fun e!118495 () tuple2!3310)

(assert (=> d!48242 (= lt!66481 e!118495)))

(declare-fun c!36838 () Bool)

(declare-fun lt!66479 () Option!473)

(assert (=> d!48242 (= c!36838 ((_ is Some!472) lt!66479))))

(assert (=> d!48242 (= lt!66479 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 lt!65411)))))

(assert (=> d!48242 (= (lexList!135 thiss!17480 rules!1920 (list!1179 lt!65411)) lt!66481)))

(declare-fun b!192759 () Bool)

(declare-fun lt!66480 () tuple2!3310)

(assert (=> b!192759 (= e!118495 (tuple2!3311 (Cons!3220 (_1!1869 (v!13983 lt!66479)) (_1!1871 lt!66480)) (_2!1871 lt!66480)))))

(assert (=> b!192759 (= lt!66480 (lexList!135 thiss!17480 rules!1920 (_2!1869 (v!13983 lt!66479))))))

(declare-fun b!192760 () Bool)

(declare-fun e!118493 () Bool)

(assert (=> b!192760 (= e!118493 (not (isEmpty!1612 (_1!1871 lt!66481))))))

(declare-fun b!192761 () Bool)

(assert (=> b!192761 (= e!118494 e!118493)))

(declare-fun res!88361 () Bool)

(assert (=> b!192761 (= res!88361 (< (size!2566 (_2!1871 lt!66481)) (size!2566 (list!1179 lt!65411))))))

(assert (=> b!192761 (=> (not res!88361) (not e!118493))))

(declare-fun b!192762 () Bool)

(assert (=> b!192762 (= e!118495 (tuple2!3311 Nil!3220 (list!1179 lt!65411)))))

(declare-fun b!192763 () Bool)

(assert (=> b!192763 (= e!118494 (= (_2!1871 lt!66481) (list!1179 lt!65411)))))

(assert (= (and d!48242 c!36838) b!192759))

(assert (= (and d!48242 (not c!36838)) b!192762))

(assert (= (and d!48242 c!36839) b!192761))

(assert (= (and d!48242 (not c!36839)) b!192763))

(assert (= (and b!192761 res!88361) b!192760))

(declare-fun m!200007 () Bool)

(assert (=> d!48242 m!200007))

(assert (=> d!48242 m!198149))

(declare-fun m!200009 () Bool)

(assert (=> d!48242 m!200009))

(declare-fun m!200011 () Bool)

(assert (=> b!192759 m!200011))

(declare-fun m!200013 () Bool)

(assert (=> b!192760 m!200013))

(declare-fun m!200015 () Bool)

(assert (=> b!192761 m!200015))

(assert (=> b!192761 m!198149))

(declare-fun m!200017 () Bool)

(assert (=> b!192761 m!200017))

(assert (=> b!191847 d!48242))

(declare-fun d!48244 () Bool)

(assert (=> d!48244 (= (list!1179 lt!65411) (list!1183 (c!36425 lt!65411)))))

(declare-fun bs!19035 () Bool)

(assert (= bs!19035 d!48244))

(declare-fun m!200019 () Bool)

(assert (=> bs!19035 m!200019))

(assert (=> b!191847 d!48244))

(declare-fun d!48246 () Bool)

(assert (=> d!48246 (= (list!1179 lt!65936) (list!1183 (c!36425 lt!65936)))))

(declare-fun bs!19036 () Bool)

(assert (= bs!19036 d!48246))

(declare-fun m!200021 () Bool)

(assert (=> bs!19036 m!200021))

(assert (=> d!47728 d!48246))

(declare-fun d!48248 () Bool)

(declare-fun c!36840 () Bool)

(assert (=> d!48248 (= c!36840 ((_ is Cons!3220) (list!1182 lt!65440)))))

(declare-fun e!118496 () List!3228)

(assert (=> d!48248 (= (printList!163 thiss!17480 (list!1182 lt!65440)) e!118496)))

(declare-fun b!192764 () Bool)

(assert (=> b!192764 (= e!118496 (++!768 (list!1179 (charsOf!248 (h!8617 (list!1182 lt!65440)))) (printList!163 thiss!17480 (t!28932 (list!1182 lt!65440)))))))

(declare-fun b!192765 () Bool)

(assert (=> b!192765 (= e!118496 Nil!3218)))

(assert (= (and d!48248 c!36840) b!192764))

(assert (= (and d!48248 (not c!36840)) b!192765))

(declare-fun m!200023 () Bool)

(assert (=> b!192764 m!200023))

(assert (=> b!192764 m!200023))

(declare-fun m!200025 () Bool)

(assert (=> b!192764 m!200025))

(declare-fun m!200027 () Bool)

(assert (=> b!192764 m!200027))

(assert (=> b!192764 m!200025))

(assert (=> b!192764 m!200027))

(declare-fun m!200029 () Bool)

(assert (=> b!192764 m!200029))

(assert (=> d!47728 d!48248))

(declare-fun d!48250 () Bool)

(assert (=> d!48250 (= (list!1182 lt!65440) (list!1186 (c!36427 lt!65440)))))

(declare-fun bs!19037 () Bool)

(assert (= bs!19037 d!48250))

(assert (=> bs!19037 m!199013))

(assert (=> d!47728 d!48250))

(assert (=> d!47728 d!47666))

(declare-fun d!48252 () Bool)

(assert (=> d!48252 (= (isEmpty!1609 lt!65438) ((_ is Nil!3218) lt!65438))))

(assert (=> bm!8790 d!48252))

(declare-fun b!192766 () Bool)

(declare-fun res!88364 () Bool)

(declare-fun e!118502 () Bool)

(assert (=> b!192766 (=> (not res!88364) (not e!118502))))

(assert (=> b!192766 (= res!88364 (isEmpty!1609 (tail!386 (tail!386 lt!65413))))))

(declare-fun bm!8898 () Bool)

(declare-fun call!8903 () Bool)

(assert (=> bm!8898 (= call!8903 (isEmpty!1609 (tail!386 lt!65413)))))

(declare-fun d!48254 () Bool)

(declare-fun e!118497 () Bool)

(assert (=> d!48254 e!118497))

(declare-fun c!36842 () Bool)

(assert (=> d!48254 (= c!36842 ((_ is EmptyExpr!817) (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413))))))

(declare-fun lt!66482 () Bool)

(declare-fun e!118498 () Bool)

(assert (=> d!48254 (= lt!66482 e!118498)))

(declare-fun c!36843 () Bool)

(assert (=> d!48254 (= c!36843 (isEmpty!1609 (tail!386 lt!65413)))))

(assert (=> d!48254 (validRegex!201 (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413)))))

(assert (=> d!48254 (= (matchR!155 (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413)) (tail!386 lt!65413)) lt!66482)))

(declare-fun b!192767 () Bool)

(assert (=> b!192767 (= e!118498 (nullable!128 (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413))))))

(declare-fun b!192768 () Bool)

(assert (=> b!192768 (= e!118502 (= (head!684 (tail!386 lt!65413)) (c!36426 (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413)))))))

(declare-fun b!192769 () Bool)

(declare-fun e!118499 () Bool)

(assert (=> b!192769 (= e!118499 (not (= (head!684 (tail!386 lt!65413)) (c!36426 (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413))))))))

(declare-fun b!192770 () Bool)

(declare-fun e!118501 () Bool)

(assert (=> b!192770 (= e!118497 e!118501)))

(declare-fun c!36841 () Bool)

(assert (=> b!192770 (= c!36841 ((_ is EmptyLang!817) (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413))))))

(declare-fun b!192771 () Bool)

(assert (=> b!192771 (= e!118497 (= lt!66482 call!8903))))

(declare-fun b!192772 () Bool)

(declare-fun e!118500 () Bool)

(declare-fun e!118503 () Bool)

(assert (=> b!192772 (= e!118500 e!118503)))

(declare-fun res!88363 () Bool)

(assert (=> b!192772 (=> (not res!88363) (not e!118503))))

(assert (=> b!192772 (= res!88363 (not lt!66482))))

(declare-fun b!192773 () Bool)

(assert (=> b!192773 (= e!118501 (not lt!66482))))

(declare-fun b!192774 () Bool)

(declare-fun res!88368 () Bool)

(assert (=> b!192774 (=> res!88368 e!118499)))

(assert (=> b!192774 (= res!88368 (not (isEmpty!1609 (tail!386 (tail!386 lt!65413)))))))

(declare-fun b!192775 () Bool)

(declare-fun res!88365 () Bool)

(assert (=> b!192775 (=> res!88365 e!118500)))

(assert (=> b!192775 (= res!88365 (not ((_ is ElementMatch!817) (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413)))))))

(assert (=> b!192775 (= e!118501 e!118500)))

(declare-fun b!192776 () Bool)

(declare-fun res!88369 () Bool)

(assert (=> b!192776 (=> res!88369 e!118500)))

(assert (=> b!192776 (= res!88369 e!118502)))

(declare-fun res!88362 () Bool)

(assert (=> b!192776 (=> (not res!88362) (not e!118502))))

(assert (=> b!192776 (= res!88362 lt!66482)))

(declare-fun b!192777 () Bool)

(assert (=> b!192777 (= e!118498 (matchR!155 (derivativeStep!94 (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413)) (head!684 (tail!386 lt!65413))) (tail!386 (tail!386 lt!65413))))))

(declare-fun b!192778 () Bool)

(assert (=> b!192778 (= e!118503 e!118499)))

(declare-fun res!88366 () Bool)

(assert (=> b!192778 (=> res!88366 e!118499)))

(assert (=> b!192778 (= res!88366 call!8903)))

(declare-fun b!192779 () Bool)

(declare-fun res!88367 () Bool)

(assert (=> b!192779 (=> (not res!88367) (not e!118502))))

(assert (=> b!192779 (= res!88367 (not call!8903))))

(assert (= (and d!48254 c!36843) b!192767))

(assert (= (and d!48254 (not c!36843)) b!192777))

(assert (= (and d!48254 c!36842) b!192771))

(assert (= (and d!48254 (not c!36842)) b!192770))

(assert (= (and b!192770 c!36841) b!192773))

(assert (= (and b!192770 (not c!36841)) b!192775))

(assert (= (and b!192775 (not res!88365)) b!192776))

(assert (= (and b!192776 res!88362) b!192779))

(assert (= (and b!192779 res!88367) b!192766))

(assert (= (and b!192766 res!88364) b!192768))

(assert (= (and b!192776 (not res!88369)) b!192772))

(assert (= (and b!192772 res!88363) b!192778))

(assert (= (and b!192778 (not res!88366)) b!192774))

(assert (= (and b!192774 (not res!88368)) b!192769))

(assert (= (or b!192771 b!192778 b!192779) bm!8898))

(assert (=> bm!8898 m!197423))

(assert (=> bm!8898 m!197427))

(assert (=> b!192777 m!197423))

(assert (=> b!192777 m!198965))

(assert (=> b!192777 m!197421))

(assert (=> b!192777 m!198965))

(declare-fun m!200031 () Bool)

(assert (=> b!192777 m!200031))

(assert (=> b!192777 m!197423))

(assert (=> b!192777 m!198955))

(assert (=> b!192777 m!200031))

(assert (=> b!192777 m!198955))

(declare-fun m!200033 () Bool)

(assert (=> b!192777 m!200033))

(assert (=> b!192766 m!197423))

(assert (=> b!192766 m!198955))

(assert (=> b!192766 m!198955))

(declare-fun m!200035 () Bool)

(assert (=> b!192766 m!200035))

(assert (=> b!192768 m!197423))

(assert (=> b!192768 m!198965))

(assert (=> b!192767 m!197421))

(declare-fun m!200037 () Bool)

(assert (=> b!192767 m!200037))

(assert (=> b!192774 m!197423))

(assert (=> b!192774 m!198955))

(assert (=> b!192774 m!198955))

(assert (=> b!192774 m!200035))

(assert (=> b!192769 m!197423))

(assert (=> b!192769 m!198965))

(assert (=> d!48254 m!197423))

(assert (=> d!48254 m!197427))

(assert (=> d!48254 m!197421))

(declare-fun m!200039 () Bool)

(assert (=> d!48254 m!200039))

(assert (=> b!191480 d!48254))

(declare-fun b!192800 () Bool)

(declare-fun c!36856 () Bool)

(assert (=> b!192800 (= c!36856 (nullable!128 (regOne!2146 (regex!593 (rule!1108 (h!8617 tokens!465))))))))

(declare-fun e!118516 () Regex!817)

(declare-fun e!118518 () Regex!817)

(assert (=> b!192800 (= e!118516 e!118518)))

(declare-fun c!36854 () Bool)

(declare-fun call!8915 () Regex!817)

(declare-fun bm!8907 () Bool)

(declare-fun c!36858 () Bool)

(assert (=> bm!8907 (= call!8915 (derivativeStep!94 (ite c!36854 (regOne!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))) (ite c!36858 (reg!1146 (regex!593 (rule!1108 (h!8617 tokens!465)))) (regOne!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) (head!684 lt!65413)))))

(declare-fun call!8914 () Regex!817)

(declare-fun b!192802 () Bool)

(declare-fun call!8913 () Regex!817)

(assert (=> b!192802 (= e!118518 (Union!817 (Concat!1433 call!8914 (regTwo!2146 (regex!593 (rule!1108 (h!8617 tokens!465))))) call!8913))))

(declare-fun bm!8908 () Bool)

(declare-fun call!8912 () Regex!817)

(assert (=> bm!8908 (= call!8912 call!8915)))

(declare-fun b!192803 () Bool)

(declare-fun e!118517 () Regex!817)

(assert (=> b!192803 (= e!118517 EmptyLang!817)))

(declare-fun bm!8909 () Bool)

(assert (=> bm!8909 (= call!8914 call!8912)))

(declare-fun b!192804 () Bool)

(assert (=> b!192804 (= e!118516 (Concat!1433 call!8912 (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun b!192805 () Bool)

(assert (=> b!192805 (= c!36854 ((_ is Union!817) (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun e!118515 () Regex!817)

(declare-fun e!118514 () Regex!817)

(assert (=> b!192805 (= e!118515 e!118514)))

(declare-fun b!192806 () Bool)

(assert (=> b!192806 (= e!118514 (Union!817 call!8915 call!8913))))

(declare-fun b!192807 () Bool)

(assert (=> b!192807 (= e!118518 (Union!817 (Concat!1433 call!8914 (regTwo!2146 (regex!593 (rule!1108 (h!8617 tokens!465))))) EmptyLang!817))))

(declare-fun b!192808 () Bool)

(assert (=> b!192808 (= e!118517 e!118515)))

(declare-fun c!36857 () Bool)

(assert (=> b!192808 (= c!36857 ((_ is ElementMatch!817) (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun bm!8910 () Bool)

(assert (=> bm!8910 (= call!8913 (derivativeStep!94 (ite c!36854 (regTwo!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))) (regTwo!2146 (regex!593 (rule!1108 (h!8617 tokens!465))))) (head!684 lt!65413)))))

(declare-fun b!192809 () Bool)

(assert (=> b!192809 (= e!118514 e!118516)))

(assert (=> b!192809 (= c!36858 ((_ is Star!817) (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun d!48256 () Bool)

(declare-fun lt!66485 () Regex!817)

(assert (=> d!48256 (validRegex!201 lt!66485)))

(assert (=> d!48256 (= lt!66485 e!118517)))

(declare-fun c!36855 () Bool)

(assert (=> d!48256 (= c!36855 (or ((_ is EmptyExpr!817) (regex!593 (rule!1108 (h!8617 tokens!465)))) ((_ is EmptyLang!817) (regex!593 (rule!1108 (h!8617 tokens!465))))))))

(assert (=> d!48256 (validRegex!201 (regex!593 (rule!1108 (h!8617 tokens!465))))))

(assert (=> d!48256 (= (derivativeStep!94 (regex!593 (rule!1108 (h!8617 tokens!465))) (head!684 lt!65413)) lt!66485)))

(declare-fun b!192801 () Bool)

(assert (=> b!192801 (= e!118515 (ite (= (head!684 lt!65413) (c!36426 (regex!593 (rule!1108 (h!8617 tokens!465))))) EmptyExpr!817 EmptyLang!817))))

(assert (= (and d!48256 c!36855) b!192803))

(assert (= (and d!48256 (not c!36855)) b!192808))

(assert (= (and b!192808 c!36857) b!192801))

(assert (= (and b!192808 (not c!36857)) b!192805))

(assert (= (and b!192805 c!36854) b!192806))

(assert (= (and b!192805 (not c!36854)) b!192809))

(assert (= (and b!192809 c!36858) b!192804))

(assert (= (and b!192809 (not c!36858)) b!192800))

(assert (= (and b!192800 c!36856) b!192802))

(assert (= (and b!192800 (not c!36856)) b!192807))

(assert (= (or b!192802 b!192807) bm!8909))

(assert (= (or b!192804 bm!8909) bm!8908))

(assert (= (or b!192806 b!192802) bm!8910))

(assert (= (or b!192806 bm!8908) bm!8907))

(declare-fun m!200041 () Bool)

(assert (=> b!192800 m!200041))

(assert (=> bm!8907 m!197419))

(declare-fun m!200043 () Bool)

(assert (=> bm!8907 m!200043))

(assert (=> bm!8910 m!197419))

(declare-fun m!200045 () Bool)

(assert (=> bm!8910 m!200045))

(declare-fun m!200047 () Bool)

(assert (=> d!48256 m!200047))

(assert (=> d!48256 m!197431))

(assert (=> b!191480 d!48256))

(assert (=> b!191480 d!48168))

(assert (=> b!191480 d!48010))

(declare-fun b!192836 () Bool)

(declare-fun e!118532 () Bool)

(declare-fun e!118533 () Bool)

(assert (=> b!192836 (= e!118532 e!118533)))

(declare-fun res!88391 () Bool)

(assert (=> b!192836 (=> (not res!88391) (not e!118533))))

(declare-fun lt!66532 () Option!473)

(assert (=> b!192836 (= res!88391 (matchR!155 (regex!593 (h!8616 rules!1920)) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66532))))))))

(declare-fun d!48258 () Bool)

(assert (=> d!48258 e!118532))

(declare-fun res!88394 () Bool)

(assert (=> d!48258 (=> res!88394 e!118532)))

(assert (=> d!48258 (= res!88394 (isEmpty!1617 lt!66532))))

(declare-fun e!118531 () Option!473)

(assert (=> d!48258 (= lt!66532 e!118531)))

(declare-fun c!36863 () Bool)

(declare-datatypes ((tuple2!3316 0))(
  ( (tuple2!3317 (_1!1874 List!3228) (_2!1874 List!3228)) )
))
(declare-fun lt!66530 () tuple2!3316)

(assert (=> d!48258 (= c!36863 (isEmpty!1609 (_1!1874 lt!66530)))))

(declare-fun findLongestMatch!37 (Regex!817 List!3228) tuple2!3316)

(assert (=> d!48258 (= lt!66530 (findLongestMatch!37 (regex!593 (h!8616 rules!1920)) lt!65412))))

(declare-fun ruleValid!66 (LexerInterface!479 Rule!986) Bool)

(assert (=> d!48258 (ruleValid!66 thiss!17480 (h!8616 rules!1920))))

(assert (=> d!48258 (= (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) lt!65412) lt!66532)))

(declare-fun b!192837 () Bool)

(declare-fun res!88389 () Bool)

(assert (=> b!192837 (=> (not res!88389) (not e!118533))))

(assert (=> b!192837 (= res!88389 (< (size!2566 (_2!1869 (get!938 lt!66532))) (size!2566 lt!65412)))))

(declare-fun b!192838 () Bool)

(assert (=> b!192838 (= e!118531 (Some!472 (tuple2!3307 (Token!931 (apply!496 (transformation!593 (h!8616 rules!1920)) (seqFromList!563 (_1!1874 lt!66530))) (h!8616 rules!1920) (size!2569 (seqFromList!563 (_1!1874 lt!66530))) (_1!1874 lt!66530)) (_2!1874 lt!66530))))))

(declare-fun lt!66533 () Unit!3036)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!40 (Regex!817 List!3228) Unit!3036)

(assert (=> b!192838 (= lt!66533 (longestMatchIsAcceptedByMatchOrIsEmpty!40 (regex!593 (h!8616 rules!1920)) lt!65412))))

(declare-fun res!88392 () Bool)

(declare-fun findLongestMatchInner!56 (Regex!817 List!3228 Int List!3228 List!3228 Int) tuple2!3316)

(assert (=> b!192838 (= res!88392 (isEmpty!1609 (_1!1874 (findLongestMatchInner!56 (regex!593 (h!8616 rules!1920)) Nil!3218 (size!2566 Nil!3218) lt!65412 lt!65412 (size!2566 lt!65412)))))))

(declare-fun e!118534 () Bool)

(assert (=> b!192838 (=> res!88392 e!118534)))

(assert (=> b!192838 e!118534))

(declare-fun lt!66531 () Unit!3036)

(assert (=> b!192838 (= lt!66531 lt!66533)))

(declare-fun lt!66534 () Unit!3036)

(declare-fun lemmaSemiInverse!35 (TokenValueInjection!1002 BalanceConc!2024) Unit!3036)

(assert (=> b!192838 (= lt!66534 (lemmaSemiInverse!35 (transformation!593 (h!8616 rules!1920)) (seqFromList!563 (_1!1874 lt!66530))))))

(declare-fun b!192839 () Bool)

(declare-fun res!88390 () Bool)

(assert (=> b!192839 (=> (not res!88390) (not e!118533))))

(assert (=> b!192839 (= res!88390 (= (value!21216 (_1!1869 (get!938 lt!66532))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!66532)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!66532)))))))))

(declare-fun b!192840 () Bool)

(assert (=> b!192840 (= e!118534 (matchR!155 (regex!593 (h!8616 rules!1920)) (_1!1874 (findLongestMatchInner!56 (regex!593 (h!8616 rules!1920)) Nil!3218 (size!2566 Nil!3218) lt!65412 lt!65412 (size!2566 lt!65412)))))))

(declare-fun b!192841 () Bool)

(assert (=> b!192841 (= e!118531 None!472)))

(declare-fun b!192842 () Bool)

(declare-fun res!88388 () Bool)

(assert (=> b!192842 (=> (not res!88388) (not e!118533))))

(assert (=> b!192842 (= res!88388 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66532)))) (_2!1869 (get!938 lt!66532))) lt!65412))))

(declare-fun b!192843 () Bool)

(declare-fun res!88393 () Bool)

(assert (=> b!192843 (=> (not res!88393) (not e!118533))))

(assert (=> b!192843 (= res!88393 (= (rule!1108 (_1!1869 (get!938 lt!66532))) (h!8616 rules!1920)))))

(declare-fun b!192844 () Bool)

(assert (=> b!192844 (= e!118533 (= (size!2562 (_1!1869 (get!938 lt!66532))) (size!2566 (originalCharacters!636 (_1!1869 (get!938 lt!66532))))))))

(assert (= (and d!48258 c!36863) b!192841))

(assert (= (and d!48258 (not c!36863)) b!192838))

(assert (= (and b!192838 (not res!88392)) b!192840))

(assert (= (and d!48258 (not res!88394)) b!192836))

(assert (= (and b!192836 res!88391) b!192842))

(assert (= (and b!192842 res!88388) b!192837))

(assert (= (and b!192837 res!88389) b!192843))

(assert (= (and b!192843 res!88393) b!192839))

(assert (= (and b!192839 res!88390) b!192844))

(declare-fun m!200049 () Bool)

(assert (=> b!192840 m!200049))

(assert (=> b!192840 m!197339))

(assert (=> b!192840 m!200049))

(assert (=> b!192840 m!197339))

(declare-fun m!200051 () Bool)

(assert (=> b!192840 m!200051))

(declare-fun m!200053 () Bool)

(assert (=> b!192840 m!200053))

(declare-fun m!200055 () Bool)

(assert (=> b!192837 m!200055))

(declare-fun m!200057 () Bool)

(assert (=> b!192837 m!200057))

(assert (=> b!192837 m!197339))

(assert (=> b!192842 m!200055))

(declare-fun m!200059 () Bool)

(assert (=> b!192842 m!200059))

(assert (=> b!192842 m!200059))

(declare-fun m!200061 () Bool)

(assert (=> b!192842 m!200061))

(assert (=> b!192842 m!200061))

(declare-fun m!200063 () Bool)

(assert (=> b!192842 m!200063))

(assert (=> b!192839 m!200055))

(declare-fun m!200065 () Bool)

(assert (=> b!192839 m!200065))

(assert (=> b!192839 m!200065))

(declare-fun m!200067 () Bool)

(assert (=> b!192839 m!200067))

(assert (=> b!192844 m!200055))

(declare-fun m!200069 () Bool)

(assert (=> b!192844 m!200069))

(assert (=> b!192838 m!200049))

(declare-fun m!200071 () Bool)

(assert (=> b!192838 m!200071))

(assert (=> b!192838 m!197339))

(declare-fun m!200073 () Bool)

(assert (=> b!192838 m!200073))

(declare-fun m!200075 () Bool)

(assert (=> b!192838 m!200075))

(assert (=> b!192838 m!200049))

(assert (=> b!192838 m!197339))

(assert (=> b!192838 m!200051))

(assert (=> b!192838 m!200073))

(declare-fun m!200077 () Bool)

(assert (=> b!192838 m!200077))

(assert (=> b!192838 m!200073))

(assert (=> b!192838 m!200073))

(declare-fun m!200081 () Bool)

(assert (=> b!192838 m!200081))

(declare-fun m!200085 () Bool)

(assert (=> b!192838 m!200085))

(assert (=> b!192836 m!200055))

(assert (=> b!192836 m!200059))

(assert (=> b!192836 m!200059))

(assert (=> b!192836 m!200061))

(assert (=> b!192836 m!200061))

(declare-fun m!200093 () Bool)

(assert (=> b!192836 m!200093))

(declare-fun m!200097 () Bool)

(assert (=> d!48258 m!200097))

(declare-fun m!200101 () Bool)

(assert (=> d!48258 m!200101))

(declare-fun m!200105 () Bool)

(assert (=> d!48258 m!200105))

(declare-fun m!200109 () Bool)

(assert (=> d!48258 m!200109))

(assert (=> b!192843 m!200055))

(assert (=> bm!8816 d!48258))

(declare-fun d!48260 () Bool)

(assert (=> d!48260 (= (list!1179 lt!65802) (list!1183 (c!36425 lt!65802)))))

(declare-fun bs!19038 () Bool)

(assert (= bs!19038 d!48260))

(declare-fun m!200119 () Bool)

(assert (=> bs!19038 m!200119))

(assert (=> b!191591 d!48260))

(declare-fun d!48262 () Bool)

(assert (=> d!48262 (= (list!1179 call!8796) (list!1183 (c!36425 call!8796)))))

(declare-fun bs!19039 () Bool)

(assert (= bs!19039 d!48262))

(declare-fun m!200127 () Bool)

(assert (=> bs!19039 m!200127))

(assert (=> b!191591 d!48262))

(declare-fun d!48264 () Bool)

(declare-fun lt!66552 () BalanceConc!2024)

(assert (=> d!48264 (= (list!1179 lt!66552) (printList!163 thiss!17480 (list!1182 (singletonSeq!145 call!8800))))))

(assert (=> d!48264 (= lt!66552 (printTailRec!173 thiss!17480 (singletonSeq!145 call!8800) 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!48264 (= (print!210 thiss!17480 (singletonSeq!145 call!8800)) lt!66552)))

(declare-fun bs!19040 () Bool)

(assert (= bs!19040 d!48264))

(declare-fun m!200139 () Bool)

(assert (=> bs!19040 m!200139))

(assert (=> bs!19040 m!197671))

(declare-fun m!200143 () Bool)

(assert (=> bs!19040 m!200143))

(assert (=> bs!19040 m!200143))

(declare-fun m!200145 () Bool)

(assert (=> bs!19040 m!200145))

(assert (=> bs!19040 m!197671))

(assert (=> bs!19040 m!197675))

(assert (=> b!191591 d!48264))

(declare-fun d!48266 () Bool)

(declare-fun lt!66558 () BalanceConc!2024)

(assert (=> d!48266 (= (list!1179 lt!66558) (printListTailRec!78 thiss!17480 (dropList!110 (singletonSeq!145 call!8800) 0) (list!1179 (BalanceConc!2025 Empty!1008))))))

(declare-fun e!118537 () BalanceConc!2024)

(assert (=> d!48266 (= lt!66558 e!118537)))

(declare-fun c!36865 () Bool)

(assert (=> d!48266 (= c!36865 (>= 0 (size!2563 (singletonSeq!145 call!8800))))))

(declare-fun e!118538 () Bool)

(assert (=> d!48266 e!118538))

(declare-fun res!88397 () Bool)

(assert (=> d!48266 (=> (not res!88397) (not e!118538))))

(assert (=> d!48266 (= res!88397 (>= 0 0))))

(assert (=> d!48266 (= (printTailRec!173 thiss!17480 (singletonSeq!145 call!8800) 0 (BalanceConc!2025 Empty!1008)) lt!66558)))

(declare-fun b!192849 () Bool)

(assert (=> b!192849 (= e!118538 (<= 0 (size!2563 (singletonSeq!145 call!8800))))))

(declare-fun b!192850 () Bool)

(assert (=> b!192850 (= e!118537 (BalanceConc!2025 Empty!1008))))

(declare-fun b!192851 () Bool)

(assert (=> b!192851 (= e!118537 (printTailRec!173 thiss!17480 (singletonSeq!145 call!8800) (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 (singletonSeq!145 call!8800) 0)))))))

(declare-fun lt!66556 () List!3230)

(assert (=> b!192851 (= lt!66556 (list!1182 (singletonSeq!145 call!8800)))))

(declare-fun lt!66559 () Unit!3036)

(assert (=> b!192851 (= lt!66559 (lemmaDropApply!150 lt!66556 0))))

(assert (=> b!192851 (= (head!682 (drop!163 lt!66556 0)) (apply!497 lt!66556 0))))

(declare-fun lt!66555 () Unit!3036)

(assert (=> b!192851 (= lt!66555 lt!66559)))

(declare-fun lt!66554 () List!3230)

(assert (=> b!192851 (= lt!66554 (list!1182 (singletonSeq!145 call!8800)))))

(declare-fun lt!66557 () Unit!3036)

(assert (=> b!192851 (= lt!66557 (lemmaDropTail!142 lt!66554 0))))

(assert (=> b!192851 (= (tail!385 (drop!163 lt!66554 0)) (drop!163 lt!66554 (+ 0 1)))))

(declare-fun lt!66553 () Unit!3036)

(assert (=> b!192851 (= lt!66553 lt!66557)))

(assert (= (and d!48266 res!88397) b!192849))

(assert (= (and d!48266 c!36865) b!192850))

(assert (= (and d!48266 (not c!36865)) b!192851))

(assert (=> d!48266 m!197671))

(declare-fun m!200159 () Bool)

(assert (=> d!48266 m!200159))

(assert (=> d!48266 m!197539))

(declare-fun m!200161 () Bool)

(assert (=> d!48266 m!200161))

(assert (=> d!48266 m!197539))

(declare-fun m!200163 () Bool)

(assert (=> d!48266 m!200163))

(assert (=> d!48266 m!197671))

(assert (=> d!48266 m!200161))

(declare-fun m!200165 () Bool)

(assert (=> d!48266 m!200165))

(assert (=> b!192849 m!197671))

(assert (=> b!192849 m!200159))

(declare-fun m!200167 () Bool)

(assert (=> b!192851 m!200167))

(declare-fun m!200169 () Bool)

(assert (=> b!192851 m!200169))

(assert (=> b!192851 m!197671))

(assert (=> b!192851 m!200143))

(declare-fun m!200171 () Bool)

(assert (=> b!192851 m!200171))

(declare-fun m!200173 () Bool)

(assert (=> b!192851 m!200173))

(declare-fun m!200175 () Bool)

(assert (=> b!192851 m!200175))

(declare-fun m!200177 () Bool)

(assert (=> b!192851 m!200177))

(assert (=> b!192851 m!197671))

(assert (=> b!192851 m!200175))

(assert (=> b!192851 m!197671))

(declare-fun m!200179 () Bool)

(assert (=> b!192851 m!200179))

(declare-fun m!200181 () Bool)

(assert (=> b!192851 m!200181))

(assert (=> b!192851 m!200177))

(assert (=> b!192851 m!200179))

(declare-fun m!200183 () Bool)

(assert (=> b!192851 m!200183))

(assert (=> b!192851 m!200167))

(declare-fun m!200185 () Bool)

(assert (=> b!192851 m!200185))

(declare-fun m!200187 () Bool)

(assert (=> b!192851 m!200187))

(assert (=> b!192851 m!200183))

(declare-fun m!200189 () Bool)

(assert (=> b!192851 m!200189))

(assert (=> b!191591 d!48266))

(declare-fun d!48274 () Bool)

(assert (=> d!48274 (isDefined!323 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 call!8796) (list!1179 lt!65802))))))

(declare-fun lt!66653 () Unit!3036)

(declare-fun e!118604 () Unit!3036)

(assert (=> d!48274 (= lt!66653 e!118604)))

(declare-fun c!36891 () Bool)

(assert (=> d!48274 (= c!36891 (isEmpty!1617 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 call!8796) (list!1179 lt!65802)))))))

(declare-fun lt!66651 () Unit!3036)

(declare-fun lt!66652 () Unit!3036)

(assert (=> d!48274 (= lt!66651 lt!66652)))

(declare-fun e!118603 () Bool)

(assert (=> d!48274 e!118603))

(declare-fun res!88440 () Bool)

(assert (=> d!48274 (=> (not res!88440) (not e!118603))))

(declare-fun lt!66661 () Token!930)

(assert (=> d!48274 (= res!88440 (isDefined!324 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!66661)))))))

(assert (=> d!48274 (= lt!66652 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!34 thiss!17480 rules!1920 (list!1179 call!8796) lt!66661))))

(declare-fun lt!66650 () Unit!3036)

(declare-fun lt!66662 () Unit!3036)

(assert (=> d!48274 (= lt!66650 lt!66662)))

(declare-fun lt!66646 () List!3228)

(assert (=> d!48274 (isPrefix!289 lt!66646 (++!768 (list!1179 call!8796) (list!1179 lt!65802)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!28 (List!3228 List!3228 List!3228) Unit!3036)

(assert (=> d!48274 (= lt!66662 (lemmaPrefixStaysPrefixWhenAddingToSuffix!28 lt!66646 (list!1179 call!8796) (list!1179 lt!65802)))))

(assert (=> d!48274 (= lt!66646 (list!1179 (charsOf!248 lt!66661)))))

(declare-fun lt!66657 () Unit!3036)

(declare-fun lt!66659 () Unit!3036)

(assert (=> d!48274 (= lt!66657 lt!66659)))

(declare-fun lt!66648 () List!3228)

(declare-fun lt!66658 () List!3228)

(assert (=> d!48274 (isPrefix!289 lt!66648 (++!768 lt!66648 lt!66658))))

(assert (=> d!48274 (= lt!66659 (lemmaConcatTwoListThenFirstIsPrefix!184 lt!66648 lt!66658))))

(assert (=> d!48274 (= lt!66658 (_2!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 call!8796)))))))

(assert (=> d!48274 (= lt!66648 (list!1179 (charsOf!248 lt!66661)))))

(assert (=> d!48274 (= lt!66661 (head!682 (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 (list!1179 call!8796)))))))))

(assert (=> d!48274 (not (isEmpty!1610 rules!1920))))

(assert (=> d!48274 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 (list!1179 call!8796) (list!1179 lt!65802)) lt!66653)))

(declare-fun b!192950 () Bool)

(declare-fun res!88441 () Bool)

(assert (=> b!192950 (=> (not res!88441) (not e!118603))))

(assert (=> b!192950 (= res!88441 (matchR!155 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!66661))))) (list!1179 (charsOf!248 lt!66661))))))

(declare-fun b!192951 () Bool)

(assert (=> b!192951 (= e!118603 (= (rule!1108 lt!66661) (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!66661))))))))

(declare-fun b!192952 () Bool)

(declare-fun Unit!3070 () Unit!3036)

(assert (=> b!192952 (= e!118604 Unit!3070)))

(declare-fun lt!66656 () List!3228)

(assert (=> b!192952 (= lt!66656 (++!768 (list!1179 call!8796) (list!1179 lt!65802)))))

(declare-fun lt!66647 () Unit!3036)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!28 (LexerInterface!479 Rule!986 List!3229 List!3228) Unit!3036)

(assert (=> b!192952 (= lt!66647 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!28 thiss!17480 (rule!1108 lt!66661) rules!1920 lt!66656))))

(assert (=> b!192952 (isEmpty!1617 (maxPrefixOneRule!93 thiss!17480 (rule!1108 lt!66661) lt!66656))))

(declare-fun lt!66655 () Unit!3036)

(assert (=> b!192952 (= lt!66655 lt!66647)))

(declare-fun lt!66654 () List!3228)

(assert (=> b!192952 (= lt!66654 (list!1179 (charsOf!248 lt!66661)))))

(declare-fun lt!66660 () Unit!3036)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!28 (LexerInterface!479 Rule!986 List!3228 List!3228) Unit!3036)

(assert (=> b!192952 (= lt!66660 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!28 thiss!17480 (rule!1108 lt!66661) lt!66654 (++!768 (list!1179 call!8796) (list!1179 lt!65802))))))

(assert (=> b!192952 (not (matchR!155 (regex!593 (rule!1108 lt!66661)) lt!66654))))

(declare-fun lt!66649 () Unit!3036)

(assert (=> b!192952 (= lt!66649 lt!66660)))

(assert (=> b!192952 false))

(declare-fun b!192953 () Bool)

(declare-fun Unit!3071 () Unit!3036)

(assert (=> b!192953 (= e!118604 Unit!3071)))

(assert (= (and d!48274 res!88440) b!192950))

(assert (= (and b!192950 res!88441) b!192951))

(assert (= (and d!48274 c!36891) b!192952))

(assert (= (and d!48274 (not c!36891)) b!192953))

(declare-fun m!200345 () Bool)

(assert (=> d!48274 m!200345))

(declare-fun m!200347 () Bool)

(assert (=> d!48274 m!200347))

(declare-fun m!200349 () Bool)

(assert (=> d!48274 m!200349))

(assert (=> d!48274 m!196433))

(declare-fun m!200351 () Bool)

(assert (=> d!48274 m!200351))

(declare-fun m!200353 () Bool)

(assert (=> d!48274 m!200353))

(declare-fun m!200355 () Bool)

(assert (=> d!48274 m!200355))

(assert (=> d!48274 m!197679))

(declare-fun m!200357 () Bool)

(assert (=> d!48274 m!200357))

(declare-fun m!200359 () Bool)

(assert (=> d!48274 m!200359))

(declare-fun m!200361 () Bool)

(assert (=> d!48274 m!200361))

(declare-fun m!200363 () Bool)

(assert (=> d!48274 m!200363))

(declare-fun m!200365 () Bool)

(assert (=> d!48274 m!200365))

(assert (=> d!48274 m!200355))

(declare-fun m!200367 () Bool)

(assert (=> d!48274 m!200367))

(declare-fun m!200369 () Bool)

(assert (=> d!48274 m!200369))

(declare-fun m!200371 () Bool)

(assert (=> d!48274 m!200371))

(declare-fun m!200373 () Bool)

(assert (=> d!48274 m!200373))

(declare-fun m!200375 () Bool)

(assert (=> d!48274 m!200375))

(assert (=> d!48274 m!197679))

(assert (=> d!48274 m!197677))

(assert (=> d!48274 m!200363))

(declare-fun m!200377 () Bool)

(assert (=> d!48274 m!200377))

(declare-fun m!200379 () Bool)

(assert (=> d!48274 m!200379))

(assert (=> d!48274 m!200369))

(assert (=> d!48274 m!197679))

(assert (=> d!48274 m!200373))

(assert (=> d!48274 m!200359))

(declare-fun m!200381 () Bool)

(assert (=> d!48274 m!200381))

(assert (=> d!48274 m!200377))

(assert (=> d!48274 m!197679))

(assert (=> d!48274 m!197677))

(declare-fun m!200383 () Bool)

(assert (=> d!48274 m!200383))

(assert (=> d!48274 m!200363))

(assert (=> d!48274 m!200359))

(assert (=> d!48274 m!200351))

(assert (=> d!48274 m!197679))

(assert (=> d!48274 m!200345))

(assert (=> b!192950 m!200371))

(declare-fun m!200385 () Bool)

(assert (=> b!192950 m!200385))

(assert (=> b!192950 m!200369))

(assert (=> b!192950 m!200371))

(assert (=> b!192950 m!200351))

(assert (=> b!192950 m!200351))

(declare-fun m!200387 () Bool)

(assert (=> b!192950 m!200387))

(assert (=> b!192950 m!200369))

(assert (=> b!192951 m!200351))

(assert (=> b!192951 m!200351))

(assert (=> b!192951 m!200387))

(assert (=> b!192952 m!200363))

(declare-fun m!200393 () Bool)

(assert (=> b!192952 m!200393))

(declare-fun m!200395 () Bool)

(assert (=> b!192952 m!200395))

(declare-fun m!200397 () Bool)

(assert (=> b!192952 m!200397))

(declare-fun m!200401 () Bool)

(assert (=> b!192952 m!200401))

(assert (=> b!192952 m!200397))

(assert (=> b!192952 m!197679))

(assert (=> b!192952 m!197677))

(assert (=> b!192952 m!200363))

(assert (=> b!192952 m!200369))

(declare-fun m!200405 () Bool)

(assert (=> b!192952 m!200405))

(assert (=> b!192952 m!200369))

(assert (=> b!192952 m!200371))

(assert (=> b!191591 d!48274))

(declare-fun d!48324 () Bool)

(declare-fun e!118608 () Bool)

(assert (=> d!48324 e!118608))

(declare-fun res!88442 () Bool)

(assert (=> d!48324 (=> (not res!88442) (not e!118608))))

(declare-fun lt!66668 () BalanceConc!2026)

(assert (=> d!48324 (= res!88442 (= (list!1182 lt!66668) (Cons!3220 call!8800 Nil!3220)))))

(assert (=> d!48324 (= lt!66668 (singleton!59 call!8800))))

(assert (=> d!48324 (= (singletonSeq!145 call!8800) lt!66668)))

(declare-fun b!192960 () Bool)

(assert (=> b!192960 (= e!118608 (isBalanced!264 (c!36427 lt!66668)))))

(assert (= (and d!48324 res!88442) b!192960))

(declare-fun m!200409 () Bool)

(assert (=> d!48324 m!200409))

(declare-fun m!200411 () Bool)

(assert (=> d!48324 m!200411))

(declare-fun m!200413 () Bool)

(assert (=> b!192960 m!200413))

(assert (=> b!191591 d!48324))

(declare-fun b!192962 () Bool)

(declare-fun res!88445 () Bool)

(declare-fun e!118609 () Bool)

(assert (=> b!192962 (=> (not res!88445) (not e!118609))))

(assert (=> b!192962 (= res!88445 (<= (height!101 (++!771 (c!36425 call!8753) (c!36425 lt!65604))) (+ (max!0 (height!101 (c!36425 call!8753)) (height!101 (c!36425 lt!65604))) 1)))))

(declare-fun lt!66669 () BalanceConc!2024)

(declare-fun b!192964 () Bool)

(assert (=> b!192964 (= e!118609 (= (list!1179 lt!66669) (++!768 (list!1179 call!8753) (list!1179 lt!65604))))))

(declare-fun b!192963 () Bool)

(declare-fun res!88446 () Bool)

(assert (=> b!192963 (=> (not res!88446) (not e!118609))))

(assert (=> b!192963 (= res!88446 (>= (height!101 (++!771 (c!36425 call!8753) (c!36425 lt!65604))) (max!0 (height!101 (c!36425 call!8753)) (height!101 (c!36425 lt!65604)))))))

(declare-fun d!48328 () Bool)

(assert (=> d!48328 e!118609))

(declare-fun res!88443 () Bool)

(assert (=> d!48328 (=> (not res!88443) (not e!118609))))

(assert (=> d!48328 (= res!88443 (appendAssocInst!34 (c!36425 call!8753) (c!36425 lt!65604)))))

(assert (=> d!48328 (= lt!66669 (BalanceConc!2025 (++!771 (c!36425 call!8753) (c!36425 lt!65604))))))

(assert (=> d!48328 (= (++!770 call!8753 lt!65604) lt!66669)))

(declare-fun b!192961 () Bool)

(declare-fun res!88444 () Bool)

(assert (=> b!192961 (=> (not res!88444) (not e!118609))))

(assert (=> b!192961 (= res!88444 (isBalanced!266 (++!771 (c!36425 call!8753) (c!36425 lt!65604))))))

(assert (= (and d!48328 res!88443) b!192961))

(assert (= (and b!192961 res!88444) b!192962))

(assert (= (and b!192962 res!88445) b!192963))

(assert (= (and b!192963 res!88446) b!192964))

(declare-fun m!200419 () Bool)

(assert (=> b!192964 m!200419))

(declare-fun m!200421 () Bool)

(assert (=> b!192964 m!200421))

(assert (=> b!192964 m!197085))

(assert (=> b!192964 m!200421))

(assert (=> b!192964 m!197085))

(declare-fun m!200423 () Bool)

(assert (=> b!192964 m!200423))

(declare-fun m!200425 () Bool)

(assert (=> b!192961 m!200425))

(assert (=> b!192961 m!200425))

(declare-fun m!200427 () Bool)

(assert (=> b!192961 m!200427))

(declare-fun m!200429 () Bool)

(assert (=> b!192963 m!200429))

(assert (=> b!192963 m!199183))

(declare-fun m!200431 () Bool)

(assert (=> b!192963 m!200431))

(assert (=> b!192963 m!200425))

(declare-fun m!200433 () Bool)

(assert (=> b!192963 m!200433))

(assert (=> b!192963 m!200429))

(assert (=> b!192963 m!200425))

(assert (=> b!192963 m!199183))

(assert (=> b!192962 m!200429))

(assert (=> b!192962 m!199183))

(assert (=> b!192962 m!200431))

(assert (=> b!192962 m!200425))

(assert (=> b!192962 m!200433))

(assert (=> b!192962 m!200429))

(assert (=> b!192962 m!200425))

(assert (=> b!192962 m!199183))

(declare-fun m!200439 () Bool)

(assert (=> d!48328 m!200439))

(assert (=> d!48328 m!200425))

(assert (=> b!191257 d!48328))

(declare-fun d!48332 () Bool)

(assert (=> d!48332 (= (isEmpty!1609 (originalCharacters!636 (h!8617 tokens!465))) ((_ is Nil!3218) (originalCharacters!636 (h!8617 tokens!465))))))

(assert (=> d!47454 d!48332))

(declare-fun e!118612 () List!3228)

(declare-fun b!192969 () Bool)

(assert (=> b!192969 (= e!118612 (++!768 (list!1183 (left!2547 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0)))) (list!1183 (right!2877 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0))))))))

(declare-fun c!36895 () Bool)

(declare-fun d!48334 () Bool)

(assert (=> d!48334 (= c!36895 ((_ is Empty!1008) (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0))))))

(declare-fun e!118611 () List!3228)

(assert (=> d!48334 (= (list!1183 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0))) e!118611)))

(declare-fun b!192967 () Bool)

(assert (=> b!192967 (= e!118611 e!118612)))

(declare-fun c!36896 () Bool)

(assert (=> b!192967 (= c!36896 ((_ is Leaf!1644) (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0))))))

(declare-fun b!192968 () Bool)

(assert (=> b!192968 (= e!118612 (list!1187 (xs!3603 (c!36425 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 (seqFromList!564 (t!28932 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!192966 () Bool)

(assert (=> b!192966 (= e!118611 Nil!3218)))

(assert (= (and d!48334 c!36895) b!192966))

(assert (= (and d!48334 (not c!36895)) b!192967))

(assert (= (and b!192967 c!36896) b!192968))

(assert (= (and b!192967 (not c!36896)) b!192969))

(declare-fun m!200441 () Bool)

(assert (=> b!192969 m!200441))

(declare-fun m!200443 () Bool)

(assert (=> b!192969 m!200443))

(assert (=> b!192969 m!200441))

(assert (=> b!192969 m!200443))

(declare-fun m!200445 () Bool)

(assert (=> b!192969 m!200445))

(declare-fun m!200449 () Bool)

(assert (=> b!192968 m!200449))

(assert (=> d!47536 d!48334))

(assert (=> d!47668 d!47664))

(declare-fun d!48336 () Bool)

(assert (=> d!48336 (rulesProduceIndividualToken!228 thiss!17480 rules!1920 lt!65439)))

(assert (=> d!48336 true))

(declare-fun _$77!369 () Unit!3036)

(assert (=> d!48336 (= (choose!1939 thiss!17480 rules!1920 tokens!465 lt!65439) _$77!369)))

(declare-fun bs!19100 () Bool)

(assert (= bs!19100 d!48336))

(assert (=> bs!19100 m!196543))

(assert (=> d!47668 d!48336))

(assert (=> d!47668 d!47748))

(declare-fun d!48468 () Bool)

(assert (=> d!48468 (dynLambda!1375 lambda!5840 (h!8617 tokens!465))))

(assert (=> d!48468 true))

(declare-fun _$7!271 () Unit!3036)

(assert (=> d!48468 (= (choose!1935 tokens!465 lambda!5840 (h!8617 tokens!465)) _$7!271)))

(declare-fun b_lambda!4711 () Bool)

(assert (=> (not b_lambda!4711) (not d!48468)))

(declare-fun bs!19101 () Bool)

(assert (= bs!19101 d!48468))

(assert (=> bs!19101 m!197411))

(assert (=> d!47576 d!48468))

(assert (=> d!47576 d!47718))

(assert (=> b!191432 d!48106))

(declare-fun d!48470 () Bool)

(assert (=> d!48470 (= (get!938 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))) (v!13983 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))

(assert (=> b!191432 d!48470))

(declare-fun lt!66752 () Option!473)

(declare-fun d!48472 () Bool)

(assert (=> d!48472 (= lt!66752 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(declare-fun e!118720 () Option!473)

(assert (=> d!48472 (= lt!66752 e!118720)))

(declare-fun c!36941 () Bool)

(assert (=> d!48472 (= c!36941 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!66753 () Unit!3036)

(declare-fun lt!66750 () Unit!3036)

(assert (=> d!48472 (= lt!66753 lt!66750)))

(assert (=> d!48472 (isPrefix!289 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!48472 (= lt!66750 (lemmaIsPrefixRefl!159 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(assert (=> d!48472 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!48472 (= (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))) lt!66752)))

(declare-fun call!8935 () Option!473)

(declare-fun bm!8930 () Bool)

(declare-fun maxPrefixOneRuleZipper!15 (LexerInterface!479 Rule!986 List!3228) Option!473)

(assert (=> bm!8930 (= call!8935 (maxPrefixOneRuleZipper!15 thiss!17480 (h!8616 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(declare-fun b!193155 () Bool)

(assert (=> b!193155 (= e!118720 call!8935)))

(declare-fun b!193156 () Bool)

(declare-fun lt!66751 () Option!473)

(declare-fun lt!66754 () Option!473)

(assert (=> b!193156 (= e!118720 (ite (and ((_ is None!472) lt!66751) ((_ is None!472) lt!66754)) None!472 (ite ((_ is None!472) lt!66754) lt!66751 (ite ((_ is None!472) lt!66751) lt!66754 (ite (>= (size!2562 (_1!1869 (v!13983 lt!66751))) (size!2562 (_1!1869 (v!13983 lt!66754)))) lt!66751 lt!66754)))))))

(assert (=> b!193156 (= lt!66751 call!8935)))

(assert (=> b!193156 (= lt!66754 (maxPrefixZipper!62 thiss!17480 (t!28931 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))

(assert (= (and d!48472 c!36941) b!193155))

(assert (= (and d!48472 (not c!36941)) b!193156))

(assert (= (or b!193155 b!193156) bm!8930))

(assert (=> d!48472 m!197385))

(assert (=> d!48472 m!197387))

(assert (=> d!48472 m!197385))

(assert (=> d!48472 m!197385))

(assert (=> d!48472 m!199413))

(assert (=> d!48472 m!197385))

(assert (=> d!48472 m!197385))

(assert (=> d!48472 m!199417))

(assert (=> d!48472 m!196735))

(assert (=> bm!8930 m!197385))

(declare-fun m!200885 () Bool)

(assert (=> bm!8930 m!200885))

(assert (=> b!193156 m!197385))

(declare-fun m!200887 () Bool)

(assert (=> b!193156 m!200887))

(assert (=> b!191432 d!48472))

(assert (=> b!191432 d!48110))

(declare-fun d!48484 () Bool)

(declare-fun lt!66755 () Bool)

(assert (=> d!48484 (= lt!66755 (isEmpty!1612 (list!1182 (_1!1867 lt!65740))))))

(assert (=> d!48484 (= lt!66755 (isEmpty!1620 (c!36427 (_1!1867 lt!65740))))))

(assert (=> d!48484 (= (isEmpty!1611 (_1!1867 lt!65740)) lt!66755)))

(declare-fun bs!19103 () Bool)

(assert (= bs!19103 d!48484))

(assert (=> bs!19103 m!197493))

(assert (=> bs!19103 m!197493))

(declare-fun m!200889 () Bool)

(assert (=> bs!19103 m!200889))

(declare-fun m!200891 () Bool)

(assert (=> bs!19103 m!200891))

(assert (=> b!191514 d!48484))

(declare-fun b!193165 () Bool)

(declare-fun e!118729 () Bool)

(declare-fun call!8938 () Bool)

(assert (=> b!193165 (= e!118729 call!8938)))

(declare-fun b!193166 () Bool)

(declare-fun e!118727 () Bool)

(declare-fun e!118728 () Bool)

(assert (=> b!193166 (= e!118727 e!118728)))

(declare-fun res!88544 () Bool)

(declare-fun rulesUseDisjointChars!30 (Rule!986 Rule!986) Bool)

(assert (=> b!193166 (= res!88544 (rulesUseDisjointChars!30 (h!8616 rules!1920) (h!8616 rules!1920)))))

(assert (=> b!193166 (=> (not res!88544) (not e!118728))))

(declare-fun b!193167 () Bool)

(assert (=> b!193167 (= e!118727 e!118729)))

(declare-fun res!88543 () Bool)

(assert (=> b!193167 (= res!88543 (not ((_ is Cons!3219) rules!1920)))))

(assert (=> b!193167 (=> res!88543 e!118729)))

(declare-fun b!193168 () Bool)

(assert (=> b!193168 (= e!118728 call!8938)))

(declare-fun bm!8933 () Bool)

(assert (=> bm!8933 (= call!8938 (ruleDisjointCharsFromAllFromOtherType!60 (h!8616 rules!1920) (t!28931 rules!1920)))))

(declare-fun d!48486 () Bool)

(declare-fun c!36944 () Bool)

(assert (=> d!48486 (= c!36944 (and ((_ is Cons!3219) rules!1920) (not (= (isSeparator!593 (h!8616 rules!1920)) (isSeparator!593 (h!8616 rules!1920))))))))

(assert (=> d!48486 (= (ruleDisjointCharsFromAllFromOtherType!60 (h!8616 rules!1920) rules!1920) e!118727)))

(assert (= (and d!48486 c!36944) b!193166))

(assert (= (and d!48486 (not c!36944)) b!193167))

(assert (= (and b!193166 res!88544) b!193168))

(assert (= (and b!193167 (not res!88543)) b!193165))

(assert (= (or b!193168 b!193165) bm!8933))

(declare-fun m!200893 () Bool)

(assert (=> b!193166 m!200893))

(declare-fun m!200895 () Bool)

(assert (=> bm!8933 m!200895))

(assert (=> b!191643 d!48486))

(declare-fun d!48488 () Bool)

(declare-fun e!118730 () Bool)

(assert (=> d!48488 e!118730))

(declare-fun res!88545 () Bool)

(assert (=> d!48488 (=> (not res!88545) (not e!118730))))

(declare-fun lt!66756 () List!3228)

(assert (=> d!48488 (= res!88545 (= (content!430 lt!66756) ((_ map or) (content!430 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))) (content!430 (_2!1869 (get!938 lt!65493))))))))

(declare-fun e!118731 () List!3228)

(assert (=> d!48488 (= lt!66756 e!118731)))

(declare-fun c!36945 () Bool)

(assert (=> d!48488 (= c!36945 ((_ is Nil!3218) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))))))

(assert (=> d!48488 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493)))) (_2!1869 (get!938 lt!65493))) lt!66756)))

(declare-fun b!193169 () Bool)

(assert (=> b!193169 (= e!118731 (_2!1869 (get!938 lt!65493)))))

(declare-fun b!193171 () Bool)

(declare-fun res!88546 () Bool)

(assert (=> b!193171 (=> (not res!88546) (not e!118730))))

(assert (=> b!193171 (= res!88546 (= (size!2566 lt!66756) (+ (size!2566 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))) (size!2566 (_2!1869 (get!938 lt!65493))))))))

(declare-fun b!193170 () Bool)

(assert (=> b!193170 (= e!118731 (Cons!3218 (h!8615 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))) (++!768 (t!28930 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493))))) (_2!1869 (get!938 lt!65493)))))))

(declare-fun b!193172 () Bool)

(assert (=> b!193172 (= e!118730 (or (not (= (_2!1869 (get!938 lt!65493)) Nil!3218)) (= lt!66756 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65493)))))))))

(assert (= (and d!48488 c!36945) b!193169))

(assert (= (and d!48488 (not c!36945)) b!193170))

(assert (= (and d!48488 res!88545) b!193171))

(assert (= (and b!193171 res!88546) b!193172))

(declare-fun m!200897 () Bool)

(assert (=> d!48488 m!200897))

(assert (=> d!48488 m!196713))

(declare-fun m!200899 () Bool)

(assert (=> d!48488 m!200899))

(declare-fun m!200901 () Bool)

(assert (=> d!48488 m!200901))

(declare-fun m!200903 () Bool)

(assert (=> b!193171 m!200903))

(assert (=> b!193171 m!196713))

(declare-fun m!200905 () Bool)

(assert (=> b!193171 m!200905))

(assert (=> b!193171 m!196737))

(declare-fun m!200907 () Bool)

(assert (=> b!193170 m!200907))

(assert (=> b!191059 d!48488))

(assert (=> b!191059 d!48184))

(assert (=> b!191059 d!48186))

(assert (=> b!191059 d!48182))

(declare-fun d!48490 () Bool)

(declare-fun lt!66757 () Int)

(assert (=> d!48490 (= lt!66757 (size!2570 (list!1182 lt!65418)))))

(assert (=> d!48490 (= lt!66757 (size!2571 (c!36427 lt!65418)))))

(assert (=> d!48490 (= (size!2563 lt!65418) lt!66757)))

(declare-fun bs!19104 () Bool)

(assert (= bs!19104 d!48490))

(assert (=> bs!19104 m!197925))

(assert (=> bs!19104 m!197925))

(declare-fun m!200909 () Bool)

(assert (=> bs!19104 m!200909))

(declare-fun m!200911 () Bool)

(assert (=> bs!19104 m!200911))

(assert (=> d!47706 d!48490))

(declare-fun d!48492 () Bool)

(assert (=> d!48492 (= (list!1179 lt!65915) (list!1183 (c!36425 lt!65915)))))

(declare-fun bs!19105 () Bool)

(assert (= bs!19105 d!48492))

(declare-fun m!200913 () Bool)

(assert (=> bs!19105 m!200913))

(assert (=> d!47706 d!48492))

(declare-fun d!48494 () Bool)

(declare-fun lt!66762 () List!3228)

(assert (=> d!48494 (= lt!66762 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (printList!163 thiss!17480 (dropList!110 lt!65418 0))))))

(declare-fun e!118732 () List!3228)

(assert (=> d!48494 (= lt!66762 e!118732)))

(declare-fun c!36946 () Bool)

(assert (=> d!48494 (= c!36946 ((_ is Cons!3220) (dropList!110 lt!65418 0)))))

(assert (=> d!48494 (= (printListTailRec!78 thiss!17480 (dropList!110 lt!65418 0) (list!1179 (BalanceConc!2025 Empty!1008))) lt!66762)))

(declare-fun b!193173 () Bool)

(assert (=> b!193173 (= e!118732 (printListTailRec!78 thiss!17480 (t!28932 (dropList!110 lt!65418 0)) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (h!8617 (dropList!110 lt!65418 0)))))))))

(declare-fun lt!66758 () List!3228)

(assert (=> b!193173 (= lt!66758 (list!1179 (charsOf!248 (h!8617 (dropList!110 lt!65418 0)))))))

(declare-fun lt!66761 () List!3228)

(assert (=> b!193173 (= lt!66761 (printList!163 thiss!17480 (t!28932 (dropList!110 lt!65418 0))))))

(declare-fun lt!66760 () Unit!3036)

(assert (=> b!193173 (= lt!66760 (lemmaConcatAssociativity!282 (list!1179 (BalanceConc!2025 Empty!1008)) lt!66758 lt!66761))))

(assert (=> b!193173 (= (++!768 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) lt!66758) lt!66761) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (++!768 lt!66758 lt!66761)))))

(declare-fun lt!66759 () Unit!3036)

(assert (=> b!193173 (= lt!66759 lt!66760)))

(declare-fun b!193174 () Bool)

(assert (=> b!193174 (= e!118732 (list!1179 (BalanceConc!2025 Empty!1008)))))

(assert (= (and d!48494 c!36946) b!193173))

(assert (= (and d!48494 (not c!36946)) b!193174))

(assert (=> d!48494 m!197967))

(declare-fun m!200915 () Bool)

(assert (=> d!48494 m!200915))

(assert (=> d!48494 m!197539))

(assert (=> d!48494 m!200915))

(declare-fun m!200917 () Bool)

(assert (=> d!48494 m!200917))

(declare-fun m!200919 () Bool)

(assert (=> b!193173 m!200919))

(assert (=> b!193173 m!197539))

(declare-fun m!200921 () Bool)

(assert (=> b!193173 m!200921))

(declare-fun m!200923 () Bool)

(assert (=> b!193173 m!200923))

(declare-fun m!200925 () Bool)

(assert (=> b!193173 m!200925))

(assert (=> b!193173 m!197539))

(declare-fun m!200927 () Bool)

(assert (=> b!193173 m!200927))

(declare-fun m!200929 () Bool)

(assert (=> b!193173 m!200929))

(assert (=> b!193173 m!197539))

(declare-fun m!200931 () Bool)

(assert (=> b!193173 m!200931))

(assert (=> b!193173 m!197539))

(declare-fun m!200933 () Bool)

(assert (=> b!193173 m!200933))

(assert (=> b!193173 m!200927))

(assert (=> b!193173 m!200933))

(declare-fun m!200935 () Bool)

(assert (=> b!193173 m!200935))

(assert (=> b!193173 m!200923))

(declare-fun m!200937 () Bool)

(assert (=> b!193173 m!200937))

(assert (=> b!193173 m!200925))

(assert (=> b!193173 m!200921))

(assert (=> d!47706 d!48494))

(declare-fun d!48496 () Bool)

(assert (=> d!48496 (= (dropList!110 lt!65418 0) (drop!163 (list!1186 (c!36427 lt!65418)) 0))))

(declare-fun bs!19106 () Bool)

(assert (= bs!19106 d!48496))

(assert (=> bs!19106 m!199831))

(assert (=> bs!19106 m!199831))

(declare-fun m!200939 () Bool)

(assert (=> bs!19106 m!200939))

(assert (=> d!47706 d!48496))

(assert (=> d!47706 d!48038))

(assert (=> b!191472 d!48168))

(declare-fun d!48498 () Bool)

(assert (=> d!48498 (= (isEmpty!1622 lt!65932) (not ((_ is Some!471) lt!65932)))))

(assert (=> d!47708 d!48498))

(assert (=> d!47708 d!47630))

(assert (=> b!191609 d!47500))

(declare-fun d!48500 () Bool)

(assert (=> d!48500 (= (list!1179 (_2!1867 lt!65937)) (list!1183 (c!36425 (_2!1867 lt!65937))))))

(declare-fun bs!19107 () Bool)

(assert (= bs!19107 d!48500))

(declare-fun m!200941 () Bool)

(assert (=> bs!19107 m!200941))

(assert (=> b!191842 d!48500))

(declare-fun d!48502 () Bool)

(declare-fun e!118734 () Bool)

(assert (=> d!48502 e!118734))

(declare-fun c!36948 () Bool)

(declare-fun lt!66765 () tuple2!3310)

(assert (=> d!48502 (= c!36948 (> (size!2570 (_1!1871 lt!66765)) 0))))

(declare-fun e!118735 () tuple2!3310)

(assert (=> d!48502 (= lt!66765 e!118735)))

(declare-fun c!36947 () Bool)

(declare-fun lt!66763 () Option!473)

(assert (=> d!48502 (= c!36947 ((_ is Some!472) lt!66763))))

(assert (=> d!48502 (= lt!66763 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 lt!65426)))))

(assert (=> d!48502 (= (lexList!135 thiss!17480 rules!1920 (list!1179 lt!65426)) lt!66765)))

(declare-fun b!193175 () Bool)

(declare-fun lt!66764 () tuple2!3310)

(assert (=> b!193175 (= e!118735 (tuple2!3311 (Cons!3220 (_1!1869 (v!13983 lt!66763)) (_1!1871 lt!66764)) (_2!1871 lt!66764)))))

(assert (=> b!193175 (= lt!66764 (lexList!135 thiss!17480 rules!1920 (_2!1869 (v!13983 lt!66763))))))

(declare-fun b!193176 () Bool)

(declare-fun e!118733 () Bool)

(assert (=> b!193176 (= e!118733 (not (isEmpty!1612 (_1!1871 lt!66765))))))

(declare-fun b!193177 () Bool)

(assert (=> b!193177 (= e!118734 e!118733)))

(declare-fun res!88547 () Bool)

(assert (=> b!193177 (= res!88547 (< (size!2566 (_2!1871 lt!66765)) (size!2566 (list!1179 lt!65426))))))

(assert (=> b!193177 (=> (not res!88547) (not e!118733))))

(declare-fun b!193178 () Bool)

(assert (=> b!193178 (= e!118735 (tuple2!3311 Nil!3220 (list!1179 lt!65426)))))

(declare-fun b!193179 () Bool)

(assert (=> b!193179 (= e!118734 (= (_2!1871 lt!66765) (list!1179 lt!65426)))))

(assert (= (and d!48502 c!36947) b!193175))

(assert (= (and d!48502 (not c!36947)) b!193178))

(assert (= (and d!48502 c!36948) b!193177))

(assert (= (and d!48502 (not c!36948)) b!193179))

(assert (= (and b!193177 res!88547) b!193176))

(declare-fun m!200943 () Bool)

(assert (=> d!48502 m!200943))

(assert (=> d!48502 m!198131))

(declare-fun m!200945 () Bool)

(assert (=> d!48502 m!200945))

(declare-fun m!200947 () Bool)

(assert (=> b!193175 m!200947))

(declare-fun m!200949 () Bool)

(assert (=> b!193176 m!200949))

(declare-fun m!200951 () Bool)

(assert (=> b!193177 m!200951))

(assert (=> b!193177 m!198131))

(declare-fun m!200953 () Bool)

(assert (=> b!193177 m!200953))

(assert (=> b!191842 d!48502))

(declare-fun d!48504 () Bool)

(assert (=> d!48504 (= (list!1179 lt!65426) (list!1183 (c!36425 lt!65426)))))

(declare-fun bs!19108 () Bool)

(assert (= bs!19108 d!48504))

(declare-fun m!200955 () Bool)

(assert (=> bs!19108 m!200955))

(assert (=> b!191842 d!48504))

(declare-fun d!48506 () Bool)

(declare-fun lt!66768 () Int)

(assert (=> d!48506 (>= lt!66768 0)))

(declare-fun e!118738 () Int)

(assert (=> d!48506 (= lt!66768 e!118738)))

(declare-fun c!36951 () Bool)

(assert (=> d!48506 (= c!36951 ((_ is Nil!3220) (list!1182 (_1!1867 lt!65406))))))

(assert (=> d!48506 (= (size!2570 (list!1182 (_1!1867 lt!65406))) lt!66768)))

(declare-fun b!193184 () Bool)

(assert (=> b!193184 (= e!118738 0)))

(declare-fun b!193185 () Bool)

(assert (=> b!193185 (= e!118738 (+ 1 (size!2570 (t!28932 (list!1182 (_1!1867 lt!65406))))))))

(assert (= (and d!48506 c!36951) b!193184))

(assert (= (and d!48506 (not c!36951)) b!193185))

(declare-fun m!200957 () Bool)

(assert (=> b!193185 m!200957))

(assert (=> d!47704 d!48506))

(declare-fun d!48508 () Bool)

(assert (=> d!48508 (= (list!1182 (_1!1867 lt!65406)) (list!1186 (c!36427 (_1!1867 lt!65406))))))

(declare-fun bs!19109 () Bool)

(assert (= bs!19109 d!48508))

(declare-fun m!200959 () Bool)

(assert (=> bs!19109 m!200959))

(assert (=> d!47704 d!48508))

(declare-fun d!48510 () Bool)

(declare-fun lt!66771 () Int)

(assert (=> d!48510 (= lt!66771 (size!2570 (list!1186 (c!36427 (_1!1867 lt!65406)))))))

(assert (=> d!48510 (= lt!66771 (ite ((_ is Empty!1009) (c!36427 (_1!1867 lt!65406))) 0 (ite ((_ is Leaf!1645) (c!36427 (_1!1867 lt!65406))) (csize!2249 (c!36427 (_1!1867 lt!65406))) (csize!2248 (c!36427 (_1!1867 lt!65406))))))))

(assert (=> d!48510 (= (size!2571 (c!36427 (_1!1867 lt!65406))) lt!66771)))

(declare-fun bs!19110 () Bool)

(assert (= bs!19110 d!48510))

(assert (=> bs!19110 m!200959))

(assert (=> bs!19110 m!200959))

(declare-fun m!200961 () Bool)

(assert (=> bs!19110 m!200961))

(assert (=> d!47704 d!48510))

(declare-fun b!193186 () Bool)

(declare-fun e!118740 () Bool)

(declare-fun e!118741 () Bool)

(assert (=> b!193186 (= e!118740 e!118741)))

(declare-fun res!88551 () Bool)

(assert (=> b!193186 (=> (not res!88551) (not e!118741))))

(declare-fun lt!66774 () Option!473)

(assert (=> b!193186 (= res!88551 (matchR!155 (regex!593 (h!8616 rules!1920)) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66774))))))))

(declare-fun d!48512 () Bool)

(assert (=> d!48512 e!118740))

(declare-fun res!88554 () Bool)

(assert (=> d!48512 (=> res!88554 e!118740)))

(assert (=> d!48512 (= res!88554 (isEmpty!1617 lt!66774))))

(declare-fun e!118739 () Option!473)

(assert (=> d!48512 (= lt!66774 e!118739)))

(declare-fun c!36952 () Bool)

(declare-fun lt!66772 () tuple2!3316)

(assert (=> d!48512 (= c!36952 (isEmpty!1609 (_1!1874 lt!66772)))))

(assert (=> d!48512 (= lt!66772 (findLongestMatch!37 (regex!593 (h!8616 rules!1920)) lt!65413))))

(assert (=> d!48512 (ruleValid!66 thiss!17480 (h!8616 rules!1920))))

(assert (=> d!48512 (= (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) lt!65413) lt!66774)))

(declare-fun b!193187 () Bool)

(declare-fun res!88549 () Bool)

(assert (=> b!193187 (=> (not res!88549) (not e!118741))))

(assert (=> b!193187 (= res!88549 (< (size!2566 (_2!1869 (get!938 lt!66774))) (size!2566 lt!65413)))))

(declare-fun b!193188 () Bool)

(assert (=> b!193188 (= e!118739 (Some!472 (tuple2!3307 (Token!931 (apply!496 (transformation!593 (h!8616 rules!1920)) (seqFromList!563 (_1!1874 lt!66772))) (h!8616 rules!1920) (size!2569 (seqFromList!563 (_1!1874 lt!66772))) (_1!1874 lt!66772)) (_2!1874 lt!66772))))))

(declare-fun lt!66775 () Unit!3036)

(assert (=> b!193188 (= lt!66775 (longestMatchIsAcceptedByMatchOrIsEmpty!40 (regex!593 (h!8616 rules!1920)) lt!65413))))

(declare-fun res!88552 () Bool)

(assert (=> b!193188 (= res!88552 (isEmpty!1609 (_1!1874 (findLongestMatchInner!56 (regex!593 (h!8616 rules!1920)) Nil!3218 (size!2566 Nil!3218) lt!65413 lt!65413 (size!2566 lt!65413)))))))

(declare-fun e!118742 () Bool)

(assert (=> b!193188 (=> res!88552 e!118742)))

(assert (=> b!193188 e!118742))

(declare-fun lt!66773 () Unit!3036)

(assert (=> b!193188 (= lt!66773 lt!66775)))

(declare-fun lt!66776 () Unit!3036)

(assert (=> b!193188 (= lt!66776 (lemmaSemiInverse!35 (transformation!593 (h!8616 rules!1920)) (seqFromList!563 (_1!1874 lt!66772))))))

(declare-fun b!193189 () Bool)

(declare-fun res!88550 () Bool)

(assert (=> b!193189 (=> (not res!88550) (not e!118741))))

(assert (=> b!193189 (= res!88550 (= (value!21216 (_1!1869 (get!938 lt!66774))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!66774)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!66774)))))))))

(declare-fun b!193190 () Bool)

(assert (=> b!193190 (= e!118742 (matchR!155 (regex!593 (h!8616 rules!1920)) (_1!1874 (findLongestMatchInner!56 (regex!593 (h!8616 rules!1920)) Nil!3218 (size!2566 Nil!3218) lt!65413 lt!65413 (size!2566 lt!65413)))))))

(declare-fun b!193191 () Bool)

(assert (=> b!193191 (= e!118739 None!472)))

(declare-fun b!193192 () Bool)

(declare-fun res!88548 () Bool)

(assert (=> b!193192 (=> (not res!88548) (not e!118741))))

(assert (=> b!193192 (= res!88548 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!66774)))) (_2!1869 (get!938 lt!66774))) lt!65413))))

(declare-fun b!193193 () Bool)

(declare-fun res!88553 () Bool)

(assert (=> b!193193 (=> (not res!88553) (not e!118741))))

(assert (=> b!193193 (= res!88553 (= (rule!1108 (_1!1869 (get!938 lt!66774))) (h!8616 rules!1920)))))

(declare-fun b!193194 () Bool)

(assert (=> b!193194 (= e!118741 (= (size!2562 (_1!1869 (get!938 lt!66774))) (size!2566 (originalCharacters!636 (_1!1869 (get!938 lt!66774))))))))

(assert (= (and d!48512 c!36952) b!193191))

(assert (= (and d!48512 (not c!36952)) b!193188))

(assert (= (and b!193188 (not res!88552)) b!193190))

(assert (= (and d!48512 (not res!88554)) b!193186))

(assert (= (and b!193186 res!88551) b!193192))

(assert (= (and b!193192 res!88548) b!193187))

(assert (= (and b!193187 res!88549) b!193193))

(assert (= (and b!193193 res!88553) b!193189))

(assert (= (and b!193189 res!88550) b!193194))

(assert (=> b!193190 m!200049))

(assert (=> b!193190 m!197161))

(assert (=> b!193190 m!200049))

(assert (=> b!193190 m!197161))

(declare-fun m!200963 () Bool)

(assert (=> b!193190 m!200963))

(declare-fun m!200965 () Bool)

(assert (=> b!193190 m!200965))

(declare-fun m!200967 () Bool)

(assert (=> b!193187 m!200967))

(declare-fun m!200969 () Bool)

(assert (=> b!193187 m!200969))

(assert (=> b!193187 m!197161))

(assert (=> b!193192 m!200967))

(declare-fun m!200971 () Bool)

(assert (=> b!193192 m!200971))

(assert (=> b!193192 m!200971))

(declare-fun m!200973 () Bool)

(assert (=> b!193192 m!200973))

(assert (=> b!193192 m!200973))

(declare-fun m!200975 () Bool)

(assert (=> b!193192 m!200975))

(assert (=> b!193189 m!200967))

(declare-fun m!200977 () Bool)

(assert (=> b!193189 m!200977))

(assert (=> b!193189 m!200977))

(declare-fun m!200979 () Bool)

(assert (=> b!193189 m!200979))

(assert (=> b!193194 m!200967))

(declare-fun m!200981 () Bool)

(assert (=> b!193194 m!200981))

(assert (=> b!193188 m!200049))

(declare-fun m!200983 () Bool)

(assert (=> b!193188 m!200983))

(assert (=> b!193188 m!197161))

(declare-fun m!200985 () Bool)

(assert (=> b!193188 m!200985))

(declare-fun m!200987 () Bool)

(assert (=> b!193188 m!200987))

(assert (=> b!193188 m!200049))

(assert (=> b!193188 m!197161))

(assert (=> b!193188 m!200963))

(assert (=> b!193188 m!200985))

(declare-fun m!200989 () Bool)

(assert (=> b!193188 m!200989))

(assert (=> b!193188 m!200985))

(assert (=> b!193188 m!200985))

(declare-fun m!200991 () Bool)

(assert (=> b!193188 m!200991))

(declare-fun m!200993 () Bool)

(assert (=> b!193188 m!200993))

(assert (=> b!193186 m!200967))

(assert (=> b!193186 m!200971))

(assert (=> b!193186 m!200971))

(assert (=> b!193186 m!200973))

(assert (=> b!193186 m!200973))

(declare-fun m!200995 () Bool)

(assert (=> b!193186 m!200995))

(declare-fun m!200997 () Bool)

(assert (=> d!48512 m!200997))

(declare-fun m!200999 () Bool)

(assert (=> d!48512 m!200999))

(declare-fun m!201001 () Bool)

(assert (=> d!48512 m!201001))

(assert (=> d!48512 m!200109))

(assert (=> b!193193 m!200967))

(assert (=> bm!8827 d!48512))

(assert (=> b!191650 d!48192))

(assert (=> b!191650 d!47708))

(declare-fun d!48514 () Bool)

(declare-fun e!118743 () Bool)

(assert (=> d!48514 e!118743))

(declare-fun res!88555 () Bool)

(assert (=> d!48514 (=> (not res!88555) (not e!118743))))

(declare-fun lt!66777 () List!3228)

(assert (=> d!48514 (= res!88555 (= (content!430 lt!66777) ((_ map or) (content!430 (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) (content!430 (printList!163 thiss!17480 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))))))

(declare-fun e!118744 () List!3228)

(assert (=> d!48514 (= lt!66777 e!118744)))

(declare-fun c!36953 () Bool)

(assert (=> d!48514 (= c!36953 ((_ is Nil!3218) (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))))))

(assert (=> d!48514 (= (++!768 (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))) (printList!163 thiss!17480 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220)))) lt!66777)))

(declare-fun b!193195 () Bool)

(assert (=> b!193195 (= e!118744 (printList!163 thiss!17480 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220))))))

(declare-fun b!193197 () Bool)

(declare-fun res!88556 () Bool)

(assert (=> b!193197 (=> (not res!88556) (not e!118743))))

(assert (=> b!193197 (= res!88556 (= (size!2566 lt!66777) (+ (size!2566 (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) (size!2566 (printList!163 thiss!17480 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))))))

(declare-fun b!193196 () Bool)

(assert (=> b!193196 (= e!118744 (Cons!3218 (h!8615 (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) (++!768 (t!28930 (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) (printList!163 thiss!17480 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220))))))))

(declare-fun b!193198 () Bool)

(assert (=> b!193198 (= e!118743 (or (not (= (printList!163 thiss!17480 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220))) Nil!3218)) (= lt!66777 (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))))))

(assert (= (and d!48514 c!36953) b!193195))

(assert (= (and d!48514 (not c!36953)) b!193196))

(assert (= (and d!48514 res!88555) b!193197))

(assert (= (and b!193197 res!88556) b!193198))

(declare-fun m!201003 () Bool)

(assert (=> d!48514 m!201003))

(assert (=> d!48514 m!197581))

(declare-fun m!201005 () Bool)

(assert (=> d!48514 m!201005))

(assert (=> d!48514 m!197583))

(declare-fun m!201007 () Bool)

(assert (=> d!48514 m!201007))

(declare-fun m!201009 () Bool)

(assert (=> b!193197 m!201009))

(assert (=> b!193197 m!197581))

(declare-fun m!201011 () Bool)

(assert (=> b!193197 m!201011))

(assert (=> b!193197 m!197583))

(declare-fun m!201013 () Bool)

(assert (=> b!193197 m!201013))

(assert (=> b!193196 m!197583))

(declare-fun m!201015 () Bool)

(assert (=> b!193196 m!201015))

(assert (=> b!191566 d!48514))

(declare-fun d!48516 () Bool)

(assert (=> d!48516 (= (list!1179 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))) (list!1183 (c!36425 (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))))))

(declare-fun bs!19111 () Bool)

(assert (= bs!19111 d!48516))

(declare-fun m!201017 () Bool)

(assert (=> bs!19111 m!201017))

(assert (=> b!191566 d!48516))

(declare-fun d!48518 () Bool)

(declare-fun lt!66778 () BalanceConc!2024)

(assert (=> d!48518 (= (list!1179 lt!66778) (originalCharacters!636 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))))

(assert (=> d!48518 (= lt!66778 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) (value!21216 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))))

(assert (=> d!48518 (= (charsOf!248 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))) lt!66778)))

(declare-fun b_lambda!4715 () Bool)

(assert (=> (not b_lambda!4715) (not d!48518)))

(declare-fun t!29193 () Bool)

(declare-fun tb!7997 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))) t!29193) tb!7997))

(declare-fun b!193199 () Bool)

(declare-fun e!118745 () Bool)

(declare-fun tp!88916 () Bool)

(assert (=> b!193199 (= e!118745 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) (value!21216 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))) tp!88916))))

(declare-fun result!10940 () Bool)

(assert (=> tb!7997 (= result!10940 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) (value!21216 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) e!118745))))

(assert (= tb!7997 b!193199))

(declare-fun m!201019 () Bool)

(assert (=> b!193199 m!201019))

(declare-fun m!201021 () Bool)

(assert (=> tb!7997 m!201021))

(assert (=> d!48518 t!29193))

(declare-fun b_and!13501 () Bool)

(assert (= b_and!13453 (and (=> t!29193 result!10940) b_and!13501)))

(declare-fun t!29195 () Bool)

(declare-fun tb!7999 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))) t!29195) tb!7999))

(declare-fun result!10942 () Bool)

(assert (= result!10942 result!10940))

(assert (=> d!48518 t!29195))

(declare-fun b_and!13503 () Bool)

(assert (= b_and!13451 (and (=> t!29195 result!10942) b_and!13503)))

(declare-fun t!29197 () Bool)

(declare-fun tb!8001 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))) t!29197) tb!8001))

(declare-fun result!10944 () Bool)

(assert (= result!10944 result!10940))

(assert (=> d!48518 t!29197))

(declare-fun b_and!13505 () Bool)

(assert (= b_and!13457 (and (=> t!29197 result!10944) b_and!13505)))

(declare-fun t!29199 () Bool)

(declare-fun tb!8003 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))) t!29199) tb!8003))

(declare-fun result!10946 () Bool)

(assert (= result!10946 result!10940))

(assert (=> d!48518 t!29199))

(declare-fun b_and!13507 () Bool)

(assert (= b_and!13459 (and (=> t!29199 result!10946) b_and!13507)))

(declare-fun t!29201 () Bool)

(declare-fun tb!8005 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))) t!29201) tb!8005))

(declare-fun result!10948 () Bool)

(assert (= result!10948 result!10940))

(assert (=> d!48518 t!29201))

(declare-fun b_and!13509 () Bool)

(assert (= b_and!13455 (and (=> t!29201 result!10948) b_and!13509)))

(declare-fun m!201023 () Bool)

(assert (=> d!48518 m!201023))

(declare-fun m!201025 () Bool)

(assert (=> d!48518 m!201025))

(assert (=> b!191566 d!48518))

(declare-fun d!48520 () Bool)

(declare-fun c!36954 () Bool)

(assert (=> d!48520 (= c!36954 ((_ is Cons!3220) (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220))))))

(declare-fun e!118746 () List!3228)

(assert (=> d!48520 (= (printList!163 thiss!17480 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220))) e!118746)))

(declare-fun b!193200 () Bool)

(assert (=> b!193200 (= e!118746 (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220))))) (printList!163 thiss!17480 (t!28932 (t!28932 (Cons!3220 (h!8617 tokens!465) Nil!3220))))))))

(declare-fun b!193201 () Bool)

(assert (=> b!193201 (= e!118746 Nil!3218)))

(assert (= (and d!48520 c!36954) b!193200))

(assert (= (and d!48520 (not c!36954)) b!193201))

(declare-fun m!201027 () Bool)

(assert (=> b!193200 m!201027))

(assert (=> b!193200 m!201027))

(declare-fun m!201029 () Bool)

(assert (=> b!193200 m!201029))

(declare-fun m!201031 () Bool)

(assert (=> b!193200 m!201031))

(assert (=> b!193200 m!201029))

(assert (=> b!193200 m!201031))

(declare-fun m!201033 () Bool)

(assert (=> b!193200 m!201033))

(assert (=> b!191566 d!48520))

(declare-fun d!48522 () Bool)

(declare-fun lt!66779 () Bool)

(assert (=> d!48522 (= lt!66779 (select (content!431 tokens!465) (h!8617 tokens!465)))))

(declare-fun e!118747 () Bool)

(assert (=> d!48522 (= lt!66779 e!118747)))

(declare-fun res!88558 () Bool)

(assert (=> d!48522 (=> (not res!88558) (not e!118747))))

(assert (=> d!48522 (= res!88558 ((_ is Cons!3220) tokens!465))))

(assert (=> d!48522 (= (contains!514 tokens!465 (h!8617 tokens!465)) lt!66779)))

(declare-fun b!193202 () Bool)

(declare-fun e!118748 () Bool)

(assert (=> b!193202 (= e!118747 e!118748)))

(declare-fun res!88557 () Bool)

(assert (=> b!193202 (=> res!88557 e!118748)))

(assert (=> b!193202 (= res!88557 (= (h!8617 tokens!465) (h!8617 tokens!465)))))

(declare-fun b!193203 () Bool)

(assert (=> b!193203 (= e!118748 (contains!514 (t!28932 tokens!465) (h!8617 tokens!465)))))

(assert (= (and d!48522 res!88558) b!193202))

(assert (= (and b!193202 (not res!88557)) b!193203))

(assert (=> d!48522 m!197713))

(declare-fun m!201035 () Bool)

(assert (=> d!48522 m!201035))

(declare-fun m!201037 () Bool)

(assert (=> b!193203 m!201037))

(assert (=> b!191440 d!48522))

(declare-fun d!48524 () Bool)

(declare-fun lt!66780 () BalanceConc!2024)

(assert (=> d!48524 (= (list!1179 lt!66780) (printList!163 thiss!17480 (list!1182 (singletonSeq!145 (h!8617 tokens!465)))))))

(assert (=> d!48524 (= lt!66780 (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)) 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!48524 (= (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))) lt!66780)))

(declare-fun bs!19112 () Bool)

(assert (= bs!19112 d!48524))

(declare-fun m!201039 () Bool)

(assert (=> bs!19112 m!201039))

(assert (=> bs!19112 m!196495))

(assert (=> bs!19112 m!197611))

(assert (=> bs!19112 m!197611))

(declare-fun m!201041 () Bool)

(assert (=> bs!19112 m!201041))

(assert (=> bs!19112 m!196495))

(assert (=> bs!19112 m!197695))

(assert (=> b!191604 d!48524))

(assert (=> b!191604 d!47622))

(declare-fun d!48526 () Bool)

(declare-fun lt!66786 () BalanceConc!2024)

(assert (=> d!48526 (= (list!1179 lt!66786) (printListTailRec!78 thiss!17480 (dropList!110 (singletonSeq!145 (h!8617 tokens!465)) 0) (list!1179 (BalanceConc!2025 Empty!1008))))))

(declare-fun e!118749 () BalanceConc!2024)

(assert (=> d!48526 (= lt!66786 e!118749)))

(declare-fun c!36955 () Bool)

(assert (=> d!48526 (= c!36955 (>= 0 (size!2563 (singletonSeq!145 (h!8617 tokens!465)))))))

(declare-fun e!118750 () Bool)

(assert (=> d!48526 e!118750))

(declare-fun res!88559 () Bool)

(assert (=> d!48526 (=> (not res!88559) (not e!118750))))

(assert (=> d!48526 (= res!88559 (>= 0 0))))

(assert (=> d!48526 (= (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)) 0 (BalanceConc!2025 Empty!1008)) lt!66786)))

(declare-fun b!193204 () Bool)

(assert (=> b!193204 (= e!118750 (<= 0 (size!2563 (singletonSeq!145 (h!8617 tokens!465)))))))

(declare-fun b!193205 () Bool)

(assert (=> b!193205 (= e!118749 (BalanceConc!2025 Empty!1008))))

(declare-fun b!193206 () Bool)

(assert (=> b!193206 (= e!118749 (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)) (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 (singletonSeq!145 (h!8617 tokens!465)) 0)))))))

(declare-fun lt!66784 () List!3230)

(assert (=> b!193206 (= lt!66784 (list!1182 (singletonSeq!145 (h!8617 tokens!465))))))

(declare-fun lt!66787 () Unit!3036)

(assert (=> b!193206 (= lt!66787 (lemmaDropApply!150 lt!66784 0))))

(assert (=> b!193206 (= (head!682 (drop!163 lt!66784 0)) (apply!497 lt!66784 0))))

(declare-fun lt!66783 () Unit!3036)

(assert (=> b!193206 (= lt!66783 lt!66787)))

(declare-fun lt!66782 () List!3230)

(assert (=> b!193206 (= lt!66782 (list!1182 (singletonSeq!145 (h!8617 tokens!465))))))

(declare-fun lt!66785 () Unit!3036)

(assert (=> b!193206 (= lt!66785 (lemmaDropTail!142 lt!66782 0))))

(assert (=> b!193206 (= (tail!385 (drop!163 lt!66782 0)) (drop!163 lt!66782 (+ 0 1)))))

(declare-fun lt!66781 () Unit!3036)

(assert (=> b!193206 (= lt!66781 lt!66785)))

(assert (= (and d!48526 res!88559) b!193204))

(assert (= (and d!48526 c!36955) b!193205))

(assert (= (and d!48526 (not c!36955)) b!193206))

(assert (=> d!48526 m!196495))

(declare-fun m!201043 () Bool)

(assert (=> d!48526 m!201043))

(assert (=> d!48526 m!197539))

(declare-fun m!201045 () Bool)

(assert (=> d!48526 m!201045))

(assert (=> d!48526 m!197539))

(declare-fun m!201047 () Bool)

(assert (=> d!48526 m!201047))

(assert (=> d!48526 m!196495))

(assert (=> d!48526 m!201045))

(declare-fun m!201049 () Bool)

(assert (=> d!48526 m!201049))

(assert (=> b!193204 m!196495))

(assert (=> b!193204 m!201043))

(declare-fun m!201051 () Bool)

(assert (=> b!193206 m!201051))

(declare-fun m!201053 () Bool)

(assert (=> b!193206 m!201053))

(assert (=> b!193206 m!196495))

(assert (=> b!193206 m!197611))

(declare-fun m!201055 () Bool)

(assert (=> b!193206 m!201055))

(declare-fun m!201057 () Bool)

(assert (=> b!193206 m!201057))

(declare-fun m!201059 () Bool)

(assert (=> b!193206 m!201059))

(declare-fun m!201061 () Bool)

(assert (=> b!193206 m!201061))

(assert (=> b!193206 m!196495))

(assert (=> b!193206 m!201059))

(assert (=> b!193206 m!196495))

(declare-fun m!201063 () Bool)

(assert (=> b!193206 m!201063))

(declare-fun m!201065 () Bool)

(assert (=> b!193206 m!201065))

(assert (=> b!193206 m!201061))

(assert (=> b!193206 m!201063))

(declare-fun m!201067 () Bool)

(assert (=> b!193206 m!201067))

(assert (=> b!193206 m!201051))

(declare-fun m!201069 () Bool)

(assert (=> b!193206 m!201069))

(declare-fun m!201071 () Bool)

(assert (=> b!193206 m!201071))

(assert (=> b!193206 m!201067))

(declare-fun m!201073 () Bool)

(assert (=> b!193206 m!201073))

(assert (=> b!191604 d!48526))

(declare-fun d!48528 () Bool)

(assert (=> d!48528 (isDefined!323 (maxPrefix!209 thiss!17480 rules!1920 (++!768 call!8805 lt!65807)))))

(declare-fun lt!66795 () Unit!3036)

(declare-fun e!118752 () Unit!3036)

(assert (=> d!48528 (= lt!66795 e!118752)))

(declare-fun c!36956 () Bool)

(assert (=> d!48528 (= c!36956 (isEmpty!1617 (maxPrefix!209 thiss!17480 rules!1920 (++!768 call!8805 lt!65807))))))

(declare-fun lt!66793 () Unit!3036)

(declare-fun lt!66794 () Unit!3036)

(assert (=> d!48528 (= lt!66793 lt!66794)))

(declare-fun e!118751 () Bool)

(assert (=> d!48528 e!118751))

(declare-fun res!88560 () Bool)

(assert (=> d!48528 (=> (not res!88560) (not e!118751))))

(declare-fun lt!66803 () Token!930)

(assert (=> d!48528 (= res!88560 (isDefined!324 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!66803)))))))

(assert (=> d!48528 (= lt!66794 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!34 thiss!17480 rules!1920 call!8805 lt!66803))))

(declare-fun lt!66792 () Unit!3036)

(declare-fun lt!66804 () Unit!3036)

(assert (=> d!48528 (= lt!66792 lt!66804)))

(declare-fun lt!66788 () List!3228)

(assert (=> d!48528 (isPrefix!289 lt!66788 (++!768 call!8805 lt!65807))))

(assert (=> d!48528 (= lt!66804 (lemmaPrefixStaysPrefixWhenAddingToSuffix!28 lt!66788 call!8805 lt!65807))))

(assert (=> d!48528 (= lt!66788 (list!1179 (charsOf!248 lt!66803)))))

(declare-fun lt!66799 () Unit!3036)

(declare-fun lt!66801 () Unit!3036)

(assert (=> d!48528 (= lt!66799 lt!66801)))

(declare-fun lt!66790 () List!3228)

(declare-fun lt!66800 () List!3228)

(assert (=> d!48528 (isPrefix!289 lt!66790 (++!768 lt!66790 lt!66800))))

(assert (=> d!48528 (= lt!66801 (lemmaConcatTwoListThenFirstIsPrefix!184 lt!66790 lt!66800))))

(assert (=> d!48528 (= lt!66800 (_2!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 call!8805))))))

(assert (=> d!48528 (= lt!66790 (list!1179 (charsOf!248 lt!66803)))))

(assert (=> d!48528 (= lt!66803 (head!682 (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 call!8805))))))))

(assert (=> d!48528 (not (isEmpty!1610 rules!1920))))

(assert (=> d!48528 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 call!8805 lt!65807) lt!66795)))

(declare-fun b!193207 () Bool)

(declare-fun res!88561 () Bool)

(assert (=> b!193207 (=> (not res!88561) (not e!118751))))

(assert (=> b!193207 (= res!88561 (matchR!155 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!66803))))) (list!1179 (charsOf!248 lt!66803))))))

(declare-fun b!193208 () Bool)

(assert (=> b!193208 (= e!118751 (= (rule!1108 lt!66803) (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!66803))))))))

(declare-fun b!193209 () Bool)

(declare-fun Unit!3074 () Unit!3036)

(assert (=> b!193209 (= e!118752 Unit!3074)))

(declare-fun lt!66798 () List!3228)

(assert (=> b!193209 (= lt!66798 (++!768 call!8805 lt!65807))))

(declare-fun lt!66789 () Unit!3036)

(assert (=> b!193209 (= lt!66789 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!28 thiss!17480 (rule!1108 lt!66803) rules!1920 lt!66798))))

(assert (=> b!193209 (isEmpty!1617 (maxPrefixOneRule!93 thiss!17480 (rule!1108 lt!66803) lt!66798))))

(declare-fun lt!66797 () Unit!3036)

(assert (=> b!193209 (= lt!66797 lt!66789)))

(declare-fun lt!66796 () List!3228)

(assert (=> b!193209 (= lt!66796 (list!1179 (charsOf!248 lt!66803)))))

(declare-fun lt!66802 () Unit!3036)

(assert (=> b!193209 (= lt!66802 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!28 thiss!17480 (rule!1108 lt!66803) lt!66796 (++!768 call!8805 lt!65807)))))

(assert (=> b!193209 (not (matchR!155 (regex!593 (rule!1108 lt!66803)) lt!66796))))

(declare-fun lt!66791 () Unit!3036)

(assert (=> b!193209 (= lt!66791 lt!66802)))

(assert (=> b!193209 false))

(declare-fun b!193210 () Bool)

(declare-fun Unit!3075 () Unit!3036)

(assert (=> b!193210 (= e!118752 Unit!3075)))

(assert (= (and d!48528 res!88560) b!193207))

(assert (= (and b!193207 res!88561) b!193208))

(assert (= (and d!48528 c!36956) b!193209))

(assert (= (and d!48528 (not c!36956)) b!193210))

(declare-fun m!201075 () Bool)

(assert (=> d!48528 m!201075))

(declare-fun m!201077 () Bool)

(assert (=> d!48528 m!201077))

(declare-fun m!201079 () Bool)

(assert (=> d!48528 m!201079))

(assert (=> d!48528 m!196433))

(declare-fun m!201081 () Bool)

(assert (=> d!48528 m!201081))

(declare-fun m!201083 () Bool)

(assert (=> d!48528 m!201083))

(declare-fun m!201085 () Bool)

(assert (=> d!48528 m!201085))

(declare-fun m!201087 () Bool)

(assert (=> d!48528 m!201087))

(declare-fun m!201089 () Bool)

(assert (=> d!48528 m!201089))

(declare-fun m!201091 () Bool)

(assert (=> d!48528 m!201091))

(declare-fun m!201093 () Bool)

(assert (=> d!48528 m!201093))

(declare-fun m!201095 () Bool)

(assert (=> d!48528 m!201095))

(assert (=> d!48528 m!201085))

(declare-fun m!201097 () Bool)

(assert (=> d!48528 m!201097))

(declare-fun m!201099 () Bool)

(assert (=> d!48528 m!201099))

(declare-fun m!201101 () Bool)

(assert (=> d!48528 m!201101))

(declare-fun m!201103 () Bool)

(assert (=> d!48528 m!201103))

(declare-fun m!201105 () Bool)

(assert (=> d!48528 m!201105))

(assert (=> d!48528 m!201093))

(declare-fun m!201107 () Bool)

(assert (=> d!48528 m!201107))

(declare-fun m!201109 () Bool)

(assert (=> d!48528 m!201109))

(assert (=> d!48528 m!201099))

(assert (=> d!48528 m!201103))

(assert (=> d!48528 m!201089))

(declare-fun m!201111 () Bool)

(assert (=> d!48528 m!201111))

(assert (=> d!48528 m!201107))

(declare-fun m!201113 () Bool)

(assert (=> d!48528 m!201113))

(assert (=> d!48528 m!201093))

(assert (=> d!48528 m!201089))

(assert (=> d!48528 m!201081))

(assert (=> d!48528 m!201075))

(assert (=> b!193207 m!201101))

(declare-fun m!201115 () Bool)

(assert (=> b!193207 m!201115))

(assert (=> b!193207 m!201099))

(assert (=> b!193207 m!201101))

(assert (=> b!193207 m!201081))

(assert (=> b!193207 m!201081))

(declare-fun m!201117 () Bool)

(assert (=> b!193207 m!201117))

(assert (=> b!193207 m!201099))

(assert (=> b!193208 m!201081))

(assert (=> b!193208 m!201081))

(assert (=> b!193208 m!201117))

(assert (=> b!193209 m!201093))

(declare-fun m!201119 () Bool)

(assert (=> b!193209 m!201119))

(declare-fun m!201121 () Bool)

(assert (=> b!193209 m!201121))

(declare-fun m!201123 () Bool)

(assert (=> b!193209 m!201123))

(declare-fun m!201125 () Bool)

(assert (=> b!193209 m!201125))

(assert (=> b!193209 m!201123))

(assert (=> b!193209 m!201093))

(assert (=> b!193209 m!201099))

(declare-fun m!201127 () Bool)

(assert (=> b!193209 m!201127))

(assert (=> b!193209 m!201099))

(assert (=> b!193209 m!201101))

(assert (=> b!191604 d!48528))

(assert (=> bs!18905 d!47632))

(declare-fun d!48530 () Bool)

(assert (=> d!48530 (= (list!1179 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))) (list!1183 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))))))

(declare-fun bs!19113 () Bool)

(assert (= bs!19113 d!48530))

(declare-fun m!201129 () Bool)

(assert (=> bs!19113 m!201129))

(assert (=> b!191123 d!48530))

(declare-fun d!48532 () Bool)

(declare-fun e!118755 () Bool)

(assert (=> d!48532 e!118755))

(declare-fun res!88564 () Bool)

(assert (=> d!48532 (=> (not res!88564) (not e!118755))))

(declare-fun lt!66807 () BalanceConc!2024)

(assert (=> d!48532 (= res!88564 (= (list!1179 lt!66807) (originalCharacters!636 (h!8617 tokens!465))))))

(declare-fun fromList!117 (List!3228) Conc!1008)

(assert (=> d!48532 (= lt!66807 (BalanceConc!2025 (fromList!117 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!48532 (= (fromListB!208 (originalCharacters!636 (h!8617 tokens!465))) lt!66807)))

(declare-fun b!193213 () Bool)

(assert (=> b!193213 (= e!118755 (isBalanced!266 (fromList!117 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (= (and d!48532 res!88564) b!193213))

(declare-fun m!201131 () Bool)

(assert (=> d!48532 m!201131))

(declare-fun m!201133 () Bool)

(assert (=> d!48532 m!201133))

(assert (=> b!193213 m!201133))

(assert (=> b!193213 m!201133))

(declare-fun m!201135 () Bool)

(assert (=> b!193213 m!201135))

(assert (=> d!47574 d!48532))

(assert (=> d!47522 d!47518))

(assert (=> d!47522 d!47538))

(assert (=> d!47522 d!47506))

(declare-fun d!48534 () Bool)

(assert (=> d!48534 (= (++!768 (++!768 lt!65413 lt!65438) lt!65427) (++!768 lt!65413 (++!768 lt!65438 lt!65427)))))

(assert (=> d!48534 true))

(declare-fun _$52!612 () Unit!3036)

(assert (=> d!48534 (= (choose!1931 lt!65413 lt!65438 lt!65427) _$52!612)))

(declare-fun bs!19114 () Bool)

(assert (= bs!19114 d!48534))

(assert (=> bs!19114 m!196443))

(assert (=> bs!19114 m!196443))

(assert (=> bs!19114 m!196445))

(assert (=> bs!19114 m!196447))

(assert (=> bs!19114 m!196447))

(assert (=> bs!19114 m!197185))

(assert (=> d!47522 d!48534))

(declare-fun d!48536 () Bool)

(declare-fun e!118756 () Bool)

(assert (=> d!48536 e!118756))

(declare-fun res!88565 () Bool)

(assert (=> d!48536 (=> (not res!88565) (not e!118756))))

(declare-fun lt!66808 () List!3228)

(assert (=> d!48536 (= res!88565 (= (content!430 lt!66808) ((_ map or) (content!430 lt!65413) (content!430 (++!768 lt!65438 lt!65427)))))))

(declare-fun e!118757 () List!3228)

(assert (=> d!48536 (= lt!66808 e!118757)))

(declare-fun c!36958 () Bool)

(assert (=> d!48536 (= c!36958 ((_ is Nil!3218) lt!65413))))

(assert (=> d!48536 (= (++!768 lt!65413 (++!768 lt!65438 lt!65427)) lt!66808)))

(declare-fun b!193214 () Bool)

(assert (=> b!193214 (= e!118757 (++!768 lt!65438 lt!65427))))

(declare-fun b!193216 () Bool)

(declare-fun res!88566 () Bool)

(assert (=> b!193216 (=> (not res!88566) (not e!118756))))

(assert (=> b!193216 (= res!88566 (= (size!2566 lt!66808) (+ (size!2566 lt!65413) (size!2566 (++!768 lt!65438 lt!65427)))))))

(declare-fun b!193215 () Bool)

(assert (=> b!193215 (= e!118757 (Cons!3218 (h!8615 lt!65413) (++!768 (t!28930 lt!65413) (++!768 lt!65438 lt!65427))))))

(declare-fun b!193217 () Bool)

(assert (=> b!193217 (= e!118756 (or (not (= (++!768 lt!65438 lt!65427) Nil!3218)) (= lt!66808 lt!65413)))))

(assert (= (and d!48536 c!36958) b!193214))

(assert (= (and d!48536 (not c!36958)) b!193215))

(assert (= (and d!48536 res!88565) b!193216))

(assert (= (and b!193216 res!88566) b!193217))

(declare-fun m!201137 () Bool)

(assert (=> d!48536 m!201137))

(assert (=> d!48536 m!197153))

(assert (=> d!48536 m!196447))

(declare-fun m!201139 () Bool)

(assert (=> d!48536 m!201139))

(declare-fun m!201141 () Bool)

(assert (=> b!193216 m!201141))

(assert (=> b!193216 m!197161))

(assert (=> b!193216 m!196447))

(declare-fun m!201143 () Bool)

(assert (=> b!193216 m!201143))

(assert (=> b!193215 m!196447))

(declare-fun m!201145 () Bool)

(assert (=> b!193215 m!201145))

(assert (=> d!47522 d!48536))

(assert (=> bm!8796 d!47514))

(declare-fun b!193221 () Bool)

(declare-fun e!118759 () List!3228)

(assert (=> b!193221 (= e!118759 (++!768 (list!1183 (left!2547 (c!36425 (charsOf!248 (h!8617 tokens!465))))) (list!1183 (right!2877 (c!36425 (charsOf!248 (h!8617 tokens!465)))))))))

(declare-fun d!48538 () Bool)

(declare-fun c!36959 () Bool)

(assert (=> d!48538 (= c!36959 ((_ is Empty!1008) (c!36425 (charsOf!248 (h!8617 tokens!465)))))))

(declare-fun e!118758 () List!3228)

(assert (=> d!48538 (= (list!1183 (c!36425 (charsOf!248 (h!8617 tokens!465)))) e!118758)))

(declare-fun b!193219 () Bool)

(assert (=> b!193219 (= e!118758 e!118759)))

(declare-fun c!36960 () Bool)

(assert (=> b!193219 (= c!36960 ((_ is Leaf!1644) (c!36425 (charsOf!248 (h!8617 tokens!465)))))))

(declare-fun b!193220 () Bool)

(assert (=> b!193220 (= e!118759 (list!1187 (xs!3603 (c!36425 (charsOf!248 (h!8617 tokens!465))))))))

(declare-fun b!193218 () Bool)

(assert (=> b!193218 (= e!118758 Nil!3218)))

(assert (= (and d!48538 c!36959) b!193218))

(assert (= (and d!48538 (not c!36959)) b!193219))

(assert (= (and b!193219 c!36960) b!193220))

(assert (= (and b!193219 (not c!36960)) b!193221))

(declare-fun m!201147 () Bool)

(assert (=> b!193221 m!201147))

(declare-fun m!201149 () Bool)

(assert (=> b!193221 m!201149))

(assert (=> b!193221 m!201147))

(assert (=> b!193221 m!201149))

(declare-fun m!201151 () Bool)

(assert (=> b!193221 m!201151))

(declare-fun m!201153 () Bool)

(assert (=> b!193220 m!201153))

(assert (=> d!47512 d!48538))

(assert (=> b!191638 d!47704))

(declare-fun d!48540 () Bool)

(assert (=> d!48540 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949)))) (list!1183 (c!36425 (charsOf!248 (_1!1869 (get!938 lt!65949))))))))

(declare-fun bs!19115 () Bool)

(assert (= bs!19115 d!48540))

(declare-fun m!201155 () Bool)

(assert (=> bs!19115 m!201155))

(assert (=> b!191856 d!48540))

(declare-fun d!48542 () Bool)

(declare-fun lt!66809 () BalanceConc!2024)

(assert (=> d!48542 (= (list!1179 lt!66809) (originalCharacters!636 (_1!1869 (get!938 lt!65949))))))

(assert (=> d!48542 (= lt!66809 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949))))) (value!21216 (_1!1869 (get!938 lt!65949)))))))

(assert (=> d!48542 (= (charsOf!248 (_1!1869 (get!938 lt!65949))) lt!66809)))

(declare-fun b_lambda!4717 () Bool)

(assert (=> (not b_lambda!4717) (not d!48542)))

(declare-fun tb!8007 () Bool)

(declare-fun t!29203 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29203) tb!8007))

(declare-fun b!193222 () Bool)

(declare-fun e!118760 () Bool)

(declare-fun tp!88917 () Bool)

(assert (=> b!193222 (= e!118760 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949))))) (value!21216 (_1!1869 (get!938 lt!65949)))))) tp!88917))))

(declare-fun result!10950 () Bool)

(assert (=> tb!8007 (= result!10950 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949))))) (value!21216 (_1!1869 (get!938 lt!65949))))) e!118760))))

(assert (= tb!8007 b!193222))

(declare-fun m!201157 () Bool)

(assert (=> b!193222 m!201157))

(declare-fun m!201159 () Bool)

(assert (=> tb!8007 m!201159))

(assert (=> d!48542 t!29203))

(declare-fun b_and!13511 () Bool)

(assert (= b_and!13509 (and (=> t!29203 result!10950) b_and!13511)))

(declare-fun t!29205 () Bool)

(declare-fun tb!8009 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29205) tb!8009))

(declare-fun result!10952 () Bool)

(assert (= result!10952 result!10950))

(assert (=> d!48542 t!29205))

(declare-fun b_and!13513 () Bool)

(assert (= b_and!13501 (and (=> t!29205 result!10952) b_and!13513)))

(declare-fun tb!8011 () Bool)

(declare-fun t!29207 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29207) tb!8011))

(declare-fun result!10954 () Bool)

(assert (= result!10954 result!10950))

(assert (=> d!48542 t!29207))

(declare-fun b_and!13515 () Bool)

(assert (= b_and!13505 (and (=> t!29207 result!10954) b_and!13515)))

(declare-fun t!29209 () Bool)

(declare-fun tb!8013 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29209) tb!8013))

(declare-fun result!10956 () Bool)

(assert (= result!10956 result!10950))

(assert (=> d!48542 t!29209))

(declare-fun b_and!13517 () Bool)

(assert (= b_and!13507 (and (=> t!29209 result!10956) b_and!13517)))

(declare-fun t!29211 () Bool)

(declare-fun tb!8015 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29211) tb!8015))

(declare-fun result!10958 () Bool)

(assert (= result!10958 result!10950))

(assert (=> d!48542 t!29211))

(declare-fun b_and!13519 () Bool)

(assert (= b_and!13503 (and (=> t!29211 result!10958) b_and!13519)))

(declare-fun m!201161 () Bool)

(assert (=> d!48542 m!201161))

(declare-fun m!201163 () Bool)

(assert (=> d!48542 m!201163))

(assert (=> b!191856 d!48542))

(assert (=> b!191856 d!48194))

(declare-fun d!48544 () Bool)

(assert (=> d!48544 (= (list!1179 lt!65619) (list!1183 (c!36425 lt!65619)))))

(declare-fun bs!19116 () Bool)

(assert (= bs!19116 d!48544))

(declare-fun m!201165 () Bool)

(assert (=> bs!19116 m!201165))

(assert (=> d!47500 d!48544))

(declare-fun d!48546 () Bool)

(declare-fun c!36961 () Bool)

(assert (=> d!48546 (= c!36961 ((_ is Nil!3218) lt!65636))))

(declare-fun e!118761 () (InoxSet C!2556))

(assert (=> d!48546 (= (content!430 lt!65636) e!118761)))

(declare-fun b!193223 () Bool)

(assert (=> b!193223 (= e!118761 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!193224 () Bool)

(assert (=> b!193224 (= e!118761 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65636) true) (content!430 (t!28930 lt!65636))))))

(assert (= (and d!48546 c!36961) b!193223))

(assert (= (and d!48546 (not c!36961)) b!193224))

(declare-fun m!201167 () Bool)

(assert (=> b!193224 m!201167))

(declare-fun m!201169 () Bool)

(assert (=> b!193224 m!201169))

(assert (=> d!47538 d!48546))

(assert (=> d!47538 d!48118))

(declare-fun d!48548 () Bool)

(declare-fun c!36962 () Bool)

(assert (=> d!48548 (= c!36962 ((_ is Nil!3218) lt!65427))))

(declare-fun e!118762 () (InoxSet C!2556))

(assert (=> d!48548 (= (content!430 lt!65427) e!118762)))

(declare-fun b!193225 () Bool)

(assert (=> b!193225 (= e!118762 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!193226 () Bool)

(assert (=> b!193226 (= e!118762 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65427) true) (content!430 (t!28930 lt!65427))))))

(assert (= (and d!48548 c!36962) b!193225))

(assert (= (and d!48548 (not c!36962)) b!193226))

(declare-fun m!201171 () Bool)

(assert (=> b!193226 m!201171))

(declare-fun m!201173 () Bool)

(assert (=> b!193226 m!201173))

(assert (=> d!47538 d!48548))

(declare-fun d!48550 () Bool)

(declare-fun lt!66810 () Token!930)

(assert (=> d!48550 (= lt!66810 (apply!497 (list!1182 (_1!1867 lt!65505)) 0))))

(assert (=> d!48550 (= lt!66810 (apply!498 (c!36427 (_1!1867 lt!65505)) 0))))

(declare-fun e!118763 () Bool)

(assert (=> d!48550 e!118763))

(declare-fun res!88567 () Bool)

(assert (=> d!48550 (=> (not res!88567) (not e!118763))))

(assert (=> d!48550 (= res!88567 (<= 0 0))))

(assert (=> d!48550 (= (apply!492 (_1!1867 lt!65505) 0) lt!66810)))

(declare-fun b!193227 () Bool)

(assert (=> b!193227 (= e!118763 (< 0 (size!2563 (_1!1867 lt!65505))))))

(assert (= (and d!48550 res!88567) b!193227))

(declare-fun m!201175 () Bool)

(assert (=> d!48550 m!201175))

(assert (=> d!48550 m!201175))

(declare-fun m!201177 () Bool)

(assert (=> d!48550 m!201177))

(declare-fun m!201179 () Bool)

(assert (=> d!48550 m!201179))

(assert (=> b!193227 m!196797))

(assert (=> b!191110 d!48550))

(declare-fun d!48552 () Bool)

(declare-fun lt!66811 () Bool)

(assert (=> d!48552 (= lt!66811 (isEmpty!1609 (list!1179 (_2!1867 lt!65787))))))

(assert (=> d!48552 (= lt!66811 (isEmpty!1616 (c!36425 (_2!1867 lt!65787))))))

(assert (=> d!48552 (= (isEmpty!1608 (_2!1867 lt!65787)) lt!66811)))

(declare-fun bs!19117 () Bool)

(assert (= bs!19117 d!48552))

(declare-fun m!201181 () Bool)

(assert (=> bs!19117 m!201181))

(assert (=> bs!19117 m!201181))

(declare-fun m!201183 () Bool)

(assert (=> bs!19117 m!201183))

(declare-fun m!201185 () Bool)

(assert (=> bs!19117 m!201185))

(assert (=> b!191586 d!48552))

(declare-fun b!193343 () Bool)

(declare-fun e!118834 () Bool)

(assert (=> b!193343 (= e!118834 true)))

(declare-fun b!193342 () Bool)

(declare-fun e!118833 () Bool)

(assert (=> b!193342 (= e!118833 e!118834)))

(declare-fun b!193312 () Bool)

(assert (=> b!193312 e!118833))

(assert (= b!193342 b!193343))

(assert (= b!193312 b!193342))

(declare-fun lambda!5911 () Int)

(declare-fun order!2045 () Int)

(declare-fun dynLambda!1381 (Int Int) Int)

(assert (=> b!193343 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1381 order!2045 lambda!5911))))

(assert (=> b!193343 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1381 order!2045 lambda!5911))))

(declare-fun b!193309 () Bool)

(declare-fun e!118815 () Option!471)

(assert (=> b!193309 (= e!118815 None!470)))

(declare-fun b!193310 () Bool)

(declare-fun e!118812 () Bool)

(declare-fun lt!66908 () List!3228)

(assert (=> b!193310 (= e!118812 (matchR!155 (regex!593 (h!8616 rules!1920)) (_1!1874 (findLongestMatchInner!56 (regex!593 (h!8616 rules!1920)) Nil!3218 (size!2566 Nil!3218) lt!66908 lt!66908 (size!2566 lt!66908)))))))

(declare-fun b!193311 () Bool)

(declare-fun e!118814 () Bool)

(declare-fun e!118816 () Bool)

(assert (=> b!193311 (= e!118814 e!118816)))

(declare-fun res!88613 () Bool)

(assert (=> b!193311 (=> (not res!88613) (not e!118816))))

(declare-fun lt!66910 () Option!471)

(assert (=> b!193311 (= res!88613 (= (_1!1868 (get!939 lt!66910)) (_1!1869 (get!938 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-datatypes ((tuple2!3318 0))(
  ( (tuple2!3319 (_1!1875 BalanceConc!2024) (_2!1875 BalanceConc!2024)) )
))
(declare-fun lt!66904 () tuple2!3318)

(assert (=> b!193312 (= e!118815 (Some!470 (tuple2!3305 (Token!931 (apply!496 (transformation!593 (h!8616 rules!1920)) (_1!1875 lt!66904)) (h!8616 rules!1920) (size!2569 (_1!1875 lt!66904)) (list!1179 (_1!1875 lt!66904))) (_2!1875 lt!66904))))))

(assert (=> b!193312 (= lt!66908 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(declare-fun lt!66912 () Unit!3036)

(assert (=> b!193312 (= lt!66912 (longestMatchIsAcceptedByMatchOrIsEmpty!40 (regex!593 (h!8616 rules!1920)) lt!66908))))

(declare-fun res!88611 () Bool)

(assert (=> b!193312 (= res!88611 (isEmpty!1609 (_1!1874 (findLongestMatchInner!56 (regex!593 (h!8616 rules!1920)) Nil!3218 (size!2566 Nil!3218) lt!66908 lt!66908 (size!2566 lt!66908)))))))

(assert (=> b!193312 (=> res!88611 e!118812)))

(assert (=> b!193312 e!118812))

(declare-fun lt!66909 () Unit!3036)

(assert (=> b!193312 (= lt!66909 lt!66912)))

(declare-fun lt!66907 () Unit!3036)

(declare-fun lemmaInv!18 (TokenValueInjection!1002) Unit!3036)

(assert (=> b!193312 (= lt!66907 (lemmaInv!18 (transformation!593 (h!8616 rules!1920))))))

(declare-fun lt!66913 () Unit!3036)

(declare-fun ForallOf!15 (Int BalanceConc!2024) Unit!3036)

(assert (=> b!193312 (= lt!66913 (ForallOf!15 lambda!5911 (_1!1875 lt!66904)))))

(declare-fun lt!66905 () Unit!3036)

(assert (=> b!193312 (= lt!66905 (ForallOf!15 lambda!5911 (seqFromList!563 (list!1179 (_1!1875 lt!66904)))))))

(declare-fun lt!66906 () Option!471)

(assert (=> b!193312 (= lt!66906 (Some!470 (tuple2!3305 (Token!931 (apply!496 (transformation!593 (h!8616 rules!1920)) (_1!1875 lt!66904)) (h!8616 rules!1920) (size!2569 (_1!1875 lt!66904)) (list!1179 (_1!1875 lt!66904))) (_2!1875 lt!66904))))))

(declare-fun lt!66911 () Unit!3036)

(declare-fun lemmaEqSameImage!15 (TokenValueInjection!1002 BalanceConc!2024 BalanceConc!2024) Unit!3036)

(assert (=> b!193312 (= lt!66911 (lemmaEqSameImage!15 (transformation!593 (h!8616 rules!1920)) (_1!1875 lt!66904) (seqFromList!563 (list!1179 (_1!1875 lt!66904)))))))

(declare-fun d!48554 () Bool)

(declare-fun e!118813 () Bool)

(assert (=> d!48554 e!118813))

(declare-fun res!88612 () Bool)

(assert (=> d!48554 (=> (not res!88612) (not e!118813))))

(assert (=> d!48554 (= res!88612 (= (isDefined!322 lt!66910) (isDefined!323 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))))

(assert (=> d!48554 (= lt!66910 e!118815)))

(declare-fun c!36982 () Bool)

(assert (=> d!48554 (= c!36982 (isEmpty!1608 (_1!1875 lt!66904)))))

(declare-fun findLongestMatchWithZipperSequence!15 (Regex!817 BalanceConc!2024) tuple2!3318)

(assert (=> d!48554 (= lt!66904 (findLongestMatchWithZipperSequence!15 (regex!593 (h!8616 rules!1920)) (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!48554 (ruleValid!66 thiss!17480 (h!8616 rules!1920))))

(assert (=> d!48554 (= (maxPrefixOneRuleZipperSequence!63 thiss!17480 (h!8616 rules!1920) (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))) lt!66910)))

(declare-fun b!193313 () Bool)

(assert (=> b!193313 (= e!118816 (= (list!1179 (_2!1868 (get!939 lt!66910))) (_2!1869 (get!938 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun b!193314 () Bool)

(assert (=> b!193314 (= e!118813 e!118814)))

(declare-fun res!88610 () Bool)

(assert (=> b!193314 (=> res!88610 e!118814)))

(assert (=> b!193314 (= res!88610 (not (isDefined!322 lt!66910)))))

(assert (= (and d!48554 c!36982) b!193309))

(assert (= (and d!48554 (not c!36982)) b!193312))

(assert (= (and b!193312 (not res!88611)) b!193310))

(assert (= (and d!48554 res!88612) b!193314))

(assert (= (and b!193314 (not res!88610)) b!193311))

(assert (= (and b!193311 res!88613) b!193313))

(declare-fun m!201599 () Bool)

(assert (=> b!193314 m!201599))

(assert (=> d!48554 m!197385))

(assert (=> d!48554 m!199399))

(assert (=> d!48554 m!196563))

(assert (=> d!48554 m!197385))

(assert (=> d!48554 m!201599))

(assert (=> d!48554 m!199399))

(declare-fun m!201603 () Bool)

(assert (=> d!48554 m!201603))

(assert (=> d!48554 m!200109))

(declare-fun m!201605 () Bool)

(assert (=> d!48554 m!201605))

(assert (=> d!48554 m!196563))

(declare-fun m!201607 () Bool)

(assert (=> d!48554 m!201607))

(assert (=> b!193312 m!200049))

(declare-fun m!201609 () Bool)

(assert (=> b!193312 m!201609))

(assert (=> b!193312 m!196563))

(assert (=> b!193312 m!197385))

(declare-fun m!201615 () Bool)

(assert (=> b!193312 m!201615))

(declare-fun m!201617 () Bool)

(assert (=> b!193312 m!201617))

(declare-fun m!201619 () Bool)

(assert (=> b!193312 m!201619))

(declare-fun m!201621 () Bool)

(assert (=> b!193312 m!201621))

(declare-fun m!201623 () Bool)

(assert (=> b!193312 m!201623))

(assert (=> b!193312 m!200049))

(declare-fun m!201625 () Bool)

(assert (=> b!193312 m!201625))

(declare-fun m!201627 () Bool)

(assert (=> b!193312 m!201627))

(declare-fun m!201629 () Bool)

(assert (=> b!193312 m!201629))

(assert (=> b!193312 m!201617))

(declare-fun m!201631 () Bool)

(assert (=> b!193312 m!201631))

(assert (=> b!193312 m!201617))

(declare-fun m!201633 () Bool)

(assert (=> b!193312 m!201633))

(assert (=> b!193312 m!201625))

(assert (=> b!193312 m!201629))

(declare-fun m!201637 () Bool)

(assert (=> b!193312 m!201637))

(declare-fun m!201641 () Bool)

(assert (=> b!193313 m!201641))

(assert (=> b!193313 m!196563))

(assert (=> b!193313 m!197385))

(assert (=> b!193313 m!199399))

(declare-fun m!201645 () Bool)

(assert (=> b!193313 m!201645))

(declare-fun m!201647 () Bool)

(assert (=> b!193313 m!201647))

(assert (=> b!193313 m!197385))

(assert (=> b!193313 m!199399))

(assert (=> b!193310 m!200049))

(assert (=> b!193310 m!201625))

(assert (=> b!193310 m!200049))

(assert (=> b!193310 m!201625))

(assert (=> b!193310 m!201627))

(declare-fun m!201649 () Bool)

(assert (=> b!193310 m!201649))

(assert (=> b!193311 m!201647))

(assert (=> b!193311 m!196563))

(assert (=> b!193311 m!197385))

(assert (=> b!193311 m!197385))

(assert (=> b!193311 m!199399))

(assert (=> b!193311 m!199399))

(assert (=> b!193311 m!201645))

(assert (=> bm!8771 d!48554))

(assert (=> b!191594 d!48172))

(declare-fun d!48654 () Bool)

(assert (=> d!48654 (= (head!682 (drop!163 lt!65793 0)) (apply!497 lt!65793 0))))

(declare-fun lt!66927 () Unit!3036)

(assert (=> d!48654 (= lt!66927 (choose!1947 lt!65793 0))))

(declare-fun e!118843 () Bool)

(assert (=> d!48654 e!118843))

(declare-fun res!88622 () Bool)

(assert (=> d!48654 (=> (not res!88622) (not e!118843))))

(assert (=> d!48654 (= res!88622 (>= 0 0))))

(assert (=> d!48654 (= (lemmaDropApply!150 lt!65793 0) lt!66927)))

(declare-fun b!193357 () Bool)

(assert (=> b!193357 (= e!118843 (< 0 (size!2570 lt!65793)))))

(assert (= (and d!48654 res!88622) b!193357))

(assert (=> d!48654 m!197649))

(assert (=> d!48654 m!197649))

(assert (=> d!48654 m!197659))

(assert (=> d!48654 m!197641))

(declare-fun m!201663 () Bool)

(assert (=> d!48654 m!201663))

(declare-fun m!201665 () Bool)

(assert (=> b!193357 m!201665))

(assert (=> b!191594 d!48654))

(declare-fun d!48656 () Bool)

(assert (=> d!48656 (= (tail!385 (drop!163 lt!65797 0)) (drop!163 lt!65797 (+ 0 1)))))

(declare-fun lt!66928 () Unit!3036)

(assert (=> d!48656 (= lt!66928 (choose!1944 lt!65797 0))))

(declare-fun e!118844 () Bool)

(assert (=> d!48656 e!118844))

(declare-fun res!88623 () Bool)

(assert (=> d!48656 (=> (not res!88623) (not e!118844))))

(assert (=> d!48656 (= res!88623 (>= 0 0))))

(assert (=> d!48656 (= (lemmaDropTail!142 lt!65797 0) lt!66928)))

(declare-fun b!193358 () Bool)

(assert (=> b!193358 (= e!118844 (< 0 (size!2570 lt!65797)))))

(assert (= (and d!48656 res!88623) b!193358))

(assert (=> d!48656 m!197657))

(assert (=> d!48656 m!197657))

(assert (=> d!48656 m!197661))

(assert (=> d!48656 m!197643))

(declare-fun m!201669 () Bool)

(assert (=> d!48656 m!201669))

(declare-fun m!201671 () Bool)

(assert (=> b!193358 m!201671))

(assert (=> b!191594 d!48656))

(declare-fun d!48660 () Bool)

(assert (=> d!48660 (= (tail!385 (drop!163 lt!65797 0)) (t!28932 (drop!163 lt!65797 0)))))

(assert (=> b!191594 d!48660))

(declare-fun d!48662 () Bool)

(assert (=> d!48662 (dynLambda!1375 lambda!5864 (apply!492 lt!65415 0))))

(declare-fun lt!66929 () Unit!3036)

(assert (=> d!48662 (= lt!66929 (choose!1935 (list!1182 lt!65415) lambda!5864 (apply!492 lt!65415 0)))))

(declare-fun e!118845 () Bool)

(assert (=> d!48662 e!118845))

(declare-fun res!88624 () Bool)

(assert (=> d!48662 (=> (not res!88624) (not e!118845))))

(assert (=> d!48662 (= res!88624 (forall!675 (list!1182 lt!65415) lambda!5864))))

(assert (=> d!48662 (= (forallContained!160 (list!1182 lt!65415) lambda!5864 (apply!492 lt!65415 0)) lt!66929)))

(declare-fun b!193359 () Bool)

(assert (=> b!193359 (= e!118845 (contains!514 (list!1182 lt!65415) (apply!492 lt!65415 0)))))

(assert (= (and d!48662 res!88624) b!193359))

(declare-fun b_lambda!4723 () Bool)

(assert (=> (not b_lambda!4723) (not d!48662)))

(assert (=> d!48662 m!197639))

(declare-fun m!201679 () Bool)

(assert (=> d!48662 m!201679))

(assert (=> d!48662 m!197467))

(assert (=> d!48662 m!197639))

(declare-fun m!201681 () Bool)

(assert (=> d!48662 m!201681))

(assert (=> d!48662 m!197467))

(declare-fun m!201683 () Bool)

(assert (=> d!48662 m!201683))

(assert (=> b!193359 m!197467))

(assert (=> b!193359 m!197639))

(declare-fun m!201685 () Bool)

(assert (=> b!193359 m!201685))

(assert (=> b!191594 d!48662))

(declare-fun b!193360 () Bool)

(declare-fun e!118846 () Int)

(declare-fun call!8943 () Int)

(assert (=> b!193360 (= e!118846 call!8943)))

(declare-fun b!193361 () Bool)

(declare-fun e!118850 () Bool)

(declare-fun lt!66931 () List!3230)

(assert (=> b!193361 (= e!118850 (= (size!2570 lt!66931) e!118846))))

(declare-fun c!36999 () Bool)

(assert (=> b!193361 (= c!36999 (<= 0 0))))

(declare-fun bm!8938 () Bool)

(assert (=> bm!8938 (= call!8943 (size!2570 lt!65797))))

(declare-fun b!193362 () Bool)

(declare-fun e!118848 () Int)

(assert (=> b!193362 (= e!118848 0)))

(declare-fun d!48668 () Bool)

(assert (=> d!48668 e!118850))

(declare-fun res!88625 () Bool)

(assert (=> d!48668 (=> (not res!88625) (not e!118850))))

(assert (=> d!48668 (= res!88625 (= ((_ map implies) (content!431 lt!66931) (content!431 lt!65797)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118847 () List!3230)

(assert (=> d!48668 (= lt!66931 e!118847)))

(declare-fun c!36996 () Bool)

(assert (=> d!48668 (= c!36996 ((_ is Nil!3220) lt!65797))))

(assert (=> d!48668 (= (drop!163 lt!65797 0) lt!66931)))

(declare-fun b!193363 () Bool)

(assert (=> b!193363 (= e!118848 (- call!8943 0))))

(declare-fun b!193364 () Bool)

(declare-fun e!118849 () List!3230)

(assert (=> b!193364 (= e!118847 e!118849)))

(declare-fun c!36997 () Bool)

(assert (=> b!193364 (= c!36997 (<= 0 0))))

(declare-fun b!193365 () Bool)

(assert (=> b!193365 (= e!118846 e!118848)))

(declare-fun c!36998 () Bool)

(assert (=> b!193365 (= c!36998 (>= 0 call!8943))))

(declare-fun b!193366 () Bool)

(assert (=> b!193366 (= e!118847 Nil!3220)))

(declare-fun b!193367 () Bool)

(assert (=> b!193367 (= e!118849 lt!65797)))

(declare-fun b!193368 () Bool)

(assert (=> b!193368 (= e!118849 (drop!163 (t!28932 lt!65797) (- 0 1)))))

(assert (= (and d!48668 c!36996) b!193366))

(assert (= (and d!48668 (not c!36996)) b!193364))

(assert (= (and b!193364 c!36997) b!193367))

(assert (= (and b!193364 (not c!36997)) b!193368))

(assert (= (and d!48668 res!88625) b!193361))

(assert (= (and b!193361 c!36999) b!193360))

(assert (= (and b!193361 (not c!36999)) b!193365))

(assert (= (and b!193365 c!36998) b!193362))

(assert (= (and b!193365 (not c!36998)) b!193363))

(assert (= (or b!193360 b!193365 b!193363) bm!8938))

(declare-fun m!201687 () Bool)

(assert (=> b!193361 m!201687))

(assert (=> bm!8938 m!201671))

(declare-fun m!201689 () Bool)

(assert (=> d!48668 m!201689))

(declare-fun m!201691 () Bool)

(assert (=> d!48668 m!201691))

(declare-fun m!201693 () Bool)

(assert (=> b!193368 m!201693))

(assert (=> b!191594 d!48668))

(declare-fun d!48670 () Bool)

(declare-fun lt!66934 () BalanceConc!2024)

(assert (=> d!48670 (= (list!1179 lt!66934) (originalCharacters!636 (apply!492 lt!65415 0)))))

(assert (=> d!48670 (= lt!66934 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0)))) (value!21216 (apply!492 lt!65415 0))))))

(assert (=> d!48670 (= (charsOf!248 (apply!492 lt!65415 0)) lt!66934)))

(declare-fun b_lambda!4725 () Bool)

(assert (=> (not b_lambda!4725) (not d!48670)))

(declare-fun tb!8027 () Bool)

(declare-fun t!29224 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0))))) t!29224) tb!8027))

(declare-fun b!193373 () Bool)

(declare-fun e!118853 () Bool)

(declare-fun tp!88919 () Bool)

(assert (=> b!193373 (= e!118853 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0)))) (value!21216 (apply!492 lt!65415 0))))) tp!88919))))

(declare-fun result!10970 () Bool)

(assert (=> tb!8027 (= result!10970 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0)))) (value!21216 (apply!492 lt!65415 0)))) e!118853))))

(assert (= tb!8027 b!193373))

(declare-fun m!201695 () Bool)

(assert (=> b!193373 m!201695))

(declare-fun m!201697 () Bool)

(assert (=> tb!8027 m!201697))

(assert (=> d!48670 t!29224))

(declare-fun b_and!13531 () Bool)

(assert (= b_and!13513 (and (=> t!29224 result!10970) b_and!13531)))

(declare-fun tb!8029 () Bool)

(declare-fun t!29226 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0))))) t!29226) tb!8029))

(declare-fun result!10972 () Bool)

(assert (= result!10972 result!10970))

(assert (=> d!48670 t!29226))

(declare-fun b_and!13533 () Bool)

(assert (= b_and!13519 (and (=> t!29226 result!10972) b_and!13533)))

(declare-fun t!29228 () Bool)

(declare-fun tb!8031 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0))))) t!29228) tb!8031))

(declare-fun result!10974 () Bool)

(assert (= result!10974 result!10970))

(assert (=> d!48670 t!29228))

(declare-fun b_and!13535 () Bool)

(assert (= b_and!13511 (and (=> t!29228 result!10974) b_and!13535)))

(declare-fun tb!8033 () Bool)

(declare-fun t!29230 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0))))) t!29230) tb!8033))

(declare-fun result!10976 () Bool)

(assert (= result!10976 result!10970))

(assert (=> d!48670 t!29230))

(declare-fun b_and!13537 () Bool)

(assert (= b_and!13515 (and (=> t!29230 result!10976) b_and!13537)))

(declare-fun t!29232 () Bool)

(declare-fun tb!8035 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0))))) t!29232) tb!8035))

(declare-fun result!10978 () Bool)

(assert (= result!10978 result!10970))

(assert (=> d!48670 t!29232))

(declare-fun b_and!13539 () Bool)

(assert (= b_and!13517 (and (=> t!29232 result!10978) b_and!13539)))

(declare-fun m!201701 () Bool)

(assert (=> d!48670 m!201701))

(declare-fun m!201703 () Bool)

(assert (=> d!48670 m!201703))

(assert (=> b!191594 d!48670))

(declare-fun bs!19144 () Bool)

(declare-fun d!48674 () Bool)

(assert (= bs!19144 (and d!48674 d!47456)))

(declare-fun lambda!5913 () Int)

(assert (=> bs!19144 (= lambda!5913 lambda!5845)))

(declare-fun bs!19145 () Bool)

(assert (= bs!19145 (and d!48674 b!190910)))

(assert (=> bs!19145 (not (= lambda!5913 lambda!5840))))

(declare-fun bs!19146 () Bool)

(assert (= bs!19146 (and d!48674 b!190918)))

(assert (=> bs!19146 (= lambda!5913 lambda!5839)))

(declare-fun bs!19147 () Bool)

(assert (= bs!19147 (and d!48674 d!47636)))

(assert (=> bs!19147 (= lambda!5913 lambda!5863)))

(declare-fun bs!19148 () Bool)

(assert (= bs!19148 (and d!48674 b!191608)))

(assert (=> bs!19148 (not (= lambda!5913 lambda!5865))))

(declare-fun bs!19149 () Bool)

(assert (= bs!19149 (and d!48674 b!191262)))

(assert (=> bs!19149 (not (= lambda!5913 lambda!5846))))

(declare-fun bs!19150 () Bool)

(assert (= bs!19150 (and d!48674 d!48052)))

(assert (=> bs!19150 (= lambda!5913 lambda!5893)))

(declare-fun bs!19151 () Bool)

(assert (= bs!19151 (and d!48674 d!47584)))

(assert (=> bs!19151 (not (= lambda!5913 lambda!5859))))

(declare-fun bs!19152 () Bool)

(assert (= bs!19152 (and d!48674 b!191594)))

(assert (=> bs!19152 (not (= lambda!5913 lambda!5864))))

(declare-fun bs!19153 () Bool)

(assert (= bs!19153 (and d!48674 b!192388)))

(assert (=> bs!19153 (not (= lambda!5913 lambda!5894))))

(declare-fun bs!19154 () Bool)

(assert (= bs!19154 (and d!48674 b!191371)))

(assert (=> bs!19154 (not (= lambda!5913 lambda!5849))))

(declare-fun bs!19157 () Bool)

(declare-fun b!193382 () Bool)

(assert (= bs!19157 (and b!193382 d!47456)))

(declare-fun lambda!5914 () Int)

(assert (=> bs!19157 (not (= lambda!5914 lambda!5845))))

(declare-fun bs!19158 () Bool)

(assert (= bs!19158 (and b!193382 b!190910)))

(assert (=> bs!19158 (= lambda!5914 lambda!5840)))

(declare-fun bs!19159 () Bool)

(assert (= bs!19159 (and b!193382 b!190918)))

(assert (=> bs!19159 (not (= lambda!5914 lambda!5839))))

(declare-fun bs!19160 () Bool)

(assert (= bs!19160 (and b!193382 d!47636)))

(assert (=> bs!19160 (not (= lambda!5914 lambda!5863))))

(declare-fun bs!19161 () Bool)

(assert (= bs!19161 (and b!193382 d!48674)))

(assert (=> bs!19161 (not (= lambda!5914 lambda!5913))))

(declare-fun bs!19162 () Bool)

(assert (= bs!19162 (and b!193382 b!191608)))

(assert (=> bs!19162 (= lambda!5914 lambda!5865)))

(declare-fun bs!19163 () Bool)

(assert (= bs!19163 (and b!193382 b!191262)))

(assert (=> bs!19163 (= lambda!5914 lambda!5846)))

(declare-fun bs!19164 () Bool)

(assert (= bs!19164 (and b!193382 d!48052)))

(assert (=> bs!19164 (not (= lambda!5914 lambda!5893))))

(declare-fun bs!19165 () Bool)

(assert (= bs!19165 (and b!193382 d!47584)))

(assert (=> bs!19165 (= lambda!5914 lambda!5859)))

(declare-fun bs!19166 () Bool)

(assert (= bs!19166 (and b!193382 b!191594)))

(assert (=> bs!19166 (= lambda!5914 lambda!5864)))

(declare-fun bs!19167 () Bool)

(assert (= bs!19167 (and b!193382 b!192388)))

(assert (=> bs!19167 (= lambda!5914 lambda!5894)))

(declare-fun bs!19168 () Bool)

(assert (= bs!19168 (and b!193382 b!191371)))

(assert (=> bs!19168 (= lambda!5914 lambda!5849)))

(declare-fun b!193389 () Bool)

(declare-fun e!118864 () Bool)

(assert (=> b!193389 (= e!118864 true)))

(declare-fun b!193388 () Bool)

(declare-fun e!118863 () Bool)

(assert (=> b!193388 (= e!118863 e!118864)))

(declare-fun b!193387 () Bool)

(declare-fun e!118862 () Bool)

(assert (=> b!193387 (= e!118862 e!118863)))

(assert (=> b!193382 e!118862))

(assert (= b!193388 b!193389))

(assert (= b!193387 b!193388))

(assert (= (and b!193382 ((_ is Cons!3219) rules!1920)) b!193387))

(assert (=> b!193389 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5914))))

(assert (=> b!193389 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5914))))

(assert (=> b!193382 true))

(declare-fun bm!8939 () Bool)

(declare-fun call!8944 () BalanceConc!2024)

(declare-fun call!8946 () BalanceConc!2024)

(assert (=> bm!8939 (= call!8944 call!8946)))

(declare-fun b!193376 () Bool)

(declare-fun e!118861 () BalanceConc!2024)

(assert (=> b!193376 (= e!118861 (BalanceConc!2025 Empty!1008))))

(declare-fun b!193377 () Bool)

(declare-fun e!118860 () BalanceConc!2024)

(declare-fun call!8947 () BalanceConc!2024)

(declare-fun lt!66949 () BalanceConc!2024)

(assert (=> b!193377 (= e!118860 (++!770 call!8947 lt!66949))))

(declare-fun b!193378 () Bool)

(declare-fun e!118856 () Bool)

(declare-fun lt!66945 () Option!471)

(assert (=> b!193378 (= e!118856 (= (_1!1868 (v!13981 lt!66945)) (apply!492 lt!65415 (+ 0 1))))))

(declare-fun b!193379 () Bool)

(assert (=> b!193379 (= e!118860 (BalanceConc!2025 Empty!1008))))

(declare-fun call!8948 () Token!930)

(assert (=> b!193379 (= (print!210 thiss!17480 (singletonSeq!145 call!8948)) (printTailRec!173 thiss!17480 (singletonSeq!145 call!8948) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!66939 () Unit!3036)

(declare-fun Unit!3076 () Unit!3036)

(assert (=> b!193379 (= lt!66939 Unit!3076)))

(declare-fun lt!66937 () Unit!3036)

(assert (=> b!193379 (= lt!66937 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 (list!1179 call!8944) (list!1179 lt!66949)))))

(assert (=> b!193379 false))

(declare-fun lt!66947 () Unit!3036)

(declare-fun Unit!3077 () Unit!3036)

(assert (=> b!193379 (= lt!66947 Unit!3077)))

(declare-fun b!193380 () Bool)

(declare-fun e!118857 () BalanceConc!2024)

(assert (=> b!193380 (= e!118857 call!8946)))

(declare-fun bm!8940 () Bool)

(declare-fun call!8945 () Token!930)

(assert (=> bm!8940 (= call!8945 (apply!492 lt!65415 (+ 0 1)))))

(declare-fun bm!8941 () Bool)

(assert (=> bm!8941 (= call!8948 call!8945)))

(declare-fun b!193381 () Bool)

(declare-fun e!118859 () Bool)

(assert (=> b!193381 (= e!118859 (<= (+ 0 1) (size!2563 lt!65415)))))

(declare-fun e!118858 () BalanceConc!2024)

(assert (=> b!193382 (= e!118861 e!118858)))

(declare-fun lt!66940 () List!3230)

(assert (=> b!193382 (= lt!66940 (list!1182 lt!65415))))

(declare-fun lt!66946 () Unit!3036)

(assert (=> b!193382 (= lt!66946 (lemmaDropApply!150 lt!66940 (+ 0 1)))))

(assert (=> b!193382 (= (head!682 (drop!163 lt!66940 (+ 0 1))) (apply!497 lt!66940 (+ 0 1)))))

(declare-fun lt!66943 () Unit!3036)

(assert (=> b!193382 (= lt!66943 lt!66946)))

(declare-fun lt!66944 () List!3230)

(assert (=> b!193382 (= lt!66944 (list!1182 lt!65415))))

(declare-fun lt!66941 () Unit!3036)

(assert (=> b!193382 (= lt!66941 (lemmaDropTail!142 lt!66944 (+ 0 1)))))

(assert (=> b!193382 (= (tail!385 (drop!163 lt!66944 (+ 0 1))) (drop!163 lt!66944 (+ 0 1 1)))))

(declare-fun lt!66938 () Unit!3036)

(assert (=> b!193382 (= lt!66938 lt!66941)))

(declare-fun lt!66936 () Unit!3036)

(assert (=> b!193382 (= lt!66936 (forallContained!160 (list!1182 lt!65415) lambda!5914 (apply!492 lt!65415 (+ 0 1))))))

(assert (=> b!193382 (= lt!66949 (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!193382 (= lt!66945 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (++!770 (charsOf!248 (apply!492 lt!65415 (+ 0 1))) lt!66949)))))

(declare-fun res!88626 () Bool)

(assert (=> b!193382 (= res!88626 ((_ is Some!470) lt!66945))))

(assert (=> b!193382 (=> (not res!88626) (not e!118856))))

(declare-fun c!37003 () Bool)

(assert (=> b!193382 (= c!37003 e!118856)))

(declare-fun bm!8943 () Bool)

(declare-fun c!37004 () Bool)

(assert (=> bm!8943 (= c!37004 c!37003)))

(assert (=> bm!8943 (= call!8947 (++!770 e!118857 (ite c!37003 lt!66949 call!8944)))))

(declare-fun b!193383 () Bool)

(declare-fun c!37005 () Bool)

(declare-fun e!118855 () Bool)

(assert (=> b!193383 (= c!37005 e!118855)))

(declare-fun res!88628 () Bool)

(assert (=> b!193383 (=> (not res!88628) (not e!118855))))

(assert (=> b!193383 (= res!88628 ((_ is Some!470) lt!66945))))

(assert (=> b!193383 (= e!118858 e!118860)))

(declare-fun b!193384 () Bool)

(assert (=> b!193384 (= e!118858 call!8947)))

(declare-fun b!193385 () Bool)

(assert (=> b!193385 (= e!118857 (charsOf!248 call!8948))))

(declare-fun b!193386 () Bool)

(assert (=> b!193386 (= e!118855 (not (= (_1!1868 (v!13981 lt!66945)) call!8945)))))

(declare-fun bm!8942 () Bool)

(assert (=> bm!8942 (= call!8946 (charsOf!248 (ite c!37003 call!8945 (ite c!37005 separatorToken!170 call!8948))))))

(declare-fun lt!66942 () BalanceConc!2024)

(assert (=> d!48674 (= (list!1179 lt!66942) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (dropList!110 lt!65415 (+ 0 1)) separatorToken!170))))

(assert (=> d!48674 (= lt!66942 e!118861)))

(declare-fun c!37006 () Bool)

(assert (=> d!48674 (= c!37006 (>= (+ 0 1) (size!2563 lt!65415)))))

(declare-fun lt!66948 () Unit!3036)

(assert (=> d!48674 (= lt!66948 (lemmaContentSubsetPreservesForall!53 (list!1182 lt!65415) (dropList!110 lt!65415 (+ 0 1)) lambda!5913))))

(assert (=> d!48674 e!118859))

(declare-fun res!88627 () Bool)

(assert (=> d!48674 (=> (not res!88627) (not e!118859))))

(assert (=> d!48674 (= res!88627 (>= (+ 0 1) 0))))

(assert (=> d!48674 (= (printWithSeparatorTokenWhenNeededRec!162 thiss!17480 rules!1920 lt!65415 separatorToken!170 (+ 0 1)) lt!66942)))

(assert (= (and d!48674 res!88627) b!193381))

(assert (= (and d!48674 c!37006) b!193376))

(assert (= (and d!48674 (not c!37006)) b!193382))

(assert (= (and b!193382 res!88626) b!193378))

(assert (= (and b!193382 c!37003) b!193384))

(assert (= (and b!193382 (not c!37003)) b!193383))

(assert (= (and b!193383 res!88628) b!193386))

(assert (= (and b!193383 c!37005) b!193377))

(assert (= (and b!193383 (not c!37005)) b!193379))

(assert (= (or b!193377 b!193379) bm!8941))

(assert (= (or b!193377 b!193379) bm!8939))

(assert (= (or b!193384 bm!8941 b!193386) bm!8940))

(assert (= (or b!193384 bm!8939) bm!8942))

(assert (= (or b!193384 b!193377) bm!8943))

(assert (= (and bm!8943 c!37004) b!193380))

(assert (= (and bm!8943 (not c!37004)) b!193385))

(assert (=> d!48674 m!197467))

(declare-fun m!201763 () Bool)

(assert (=> d!48674 m!201763))

(declare-fun m!201765 () Bool)

(assert (=> d!48674 m!201765))

(declare-fun m!201767 () Bool)

(assert (=> d!48674 m!201767))

(assert (=> d!48674 m!197467))

(assert (=> d!48674 m!197631))

(assert (=> d!48674 m!201763))

(declare-fun m!201771 () Bool)

(assert (=> d!48674 m!201771))

(assert (=> d!48674 m!201763))

(declare-fun m!201777 () Bool)

(assert (=> b!193385 m!201777))

(assert (=> b!193381 m!197631))

(declare-fun m!201779 () Bool)

(assert (=> b!193377 m!201779))

(declare-fun m!201781 () Bool)

(assert (=> bm!8940 m!201781))

(declare-fun m!201783 () Bool)

(assert (=> b!193382 m!201783))

(assert (=> b!193382 m!197467))

(declare-fun m!201785 () Bool)

(assert (=> b!193382 m!201785))

(assert (=> b!193382 m!201781))

(declare-fun m!201787 () Bool)

(assert (=> b!193382 m!201787))

(assert (=> b!193382 m!201781))

(assert (=> b!193382 m!197467))

(assert (=> b!193382 m!201781))

(declare-fun m!201789 () Bool)

(assert (=> b!193382 m!201789))

(declare-fun m!201791 () Bool)

(assert (=> b!193382 m!201791))

(declare-fun m!201793 () Bool)

(assert (=> b!193382 m!201793))

(assert (=> b!193382 m!201787))

(declare-fun m!201795 () Bool)

(assert (=> b!193382 m!201795))

(declare-fun m!201797 () Bool)

(assert (=> b!193382 m!201797))

(declare-fun m!201799 () Bool)

(assert (=> b!193382 m!201799))

(assert (=> b!193382 m!201791))

(declare-fun m!201801 () Bool)

(assert (=> b!193382 m!201801))

(assert (=> b!193382 m!201799))

(declare-fun m!201803 () Bool)

(assert (=> b!193382 m!201803))

(declare-fun m!201805 () Bool)

(assert (=> b!193382 m!201805))

(assert (=> b!193382 m!201795))

(declare-fun m!201807 () Bool)

(assert (=> b!193382 m!201807))

(declare-fun m!201809 () Bool)

(assert (=> bm!8943 m!201809))

(declare-fun m!201811 () Bool)

(assert (=> bm!8942 m!201811))

(assert (=> b!193378 m!201781))

(declare-fun m!201813 () Bool)

(assert (=> b!193379 m!201813))

(declare-fun m!201815 () Bool)

(assert (=> b!193379 m!201815))

(assert (=> b!193379 m!201813))

(declare-fun m!201817 () Bool)

(assert (=> b!193379 m!201817))

(declare-fun m!201819 () Bool)

(assert (=> b!193379 m!201819))

(declare-fun m!201821 () Bool)

(assert (=> b!193379 m!201821))

(assert (=> b!193379 m!201819))

(declare-fun m!201823 () Bool)

(assert (=> b!193379 m!201823))

(assert (=> b!193379 m!201821))

(assert (=> b!193379 m!201813))

(assert (=> b!191594 d!48674))

(declare-fun b!193399 () Bool)

(declare-fun res!88635 () Bool)

(declare-fun e!118870 () Bool)

(assert (=> b!193399 (=> (not res!88635) (not e!118870))))

(assert (=> b!193399 (= res!88635 (<= (height!101 (++!771 (c!36425 (charsOf!248 (apply!492 lt!65415 0))) (c!36425 lt!65802))) (+ (max!0 (height!101 (c!36425 (charsOf!248 (apply!492 lt!65415 0)))) (height!101 (c!36425 lt!65802))) 1)))))

(declare-fun lt!66978 () BalanceConc!2024)

(declare-fun b!193401 () Bool)

(assert (=> b!193401 (= e!118870 (= (list!1179 lt!66978) (++!768 (list!1179 (charsOf!248 (apply!492 lt!65415 0))) (list!1179 lt!65802))))))

(declare-fun b!193400 () Bool)

(declare-fun res!88636 () Bool)

(assert (=> b!193400 (=> (not res!88636) (not e!118870))))

(assert (=> b!193400 (= res!88636 (>= (height!101 (++!771 (c!36425 (charsOf!248 (apply!492 lt!65415 0))) (c!36425 lt!65802))) (max!0 (height!101 (c!36425 (charsOf!248 (apply!492 lt!65415 0)))) (height!101 (c!36425 lt!65802)))))))

(declare-fun d!48684 () Bool)

(assert (=> d!48684 e!118870))

(declare-fun res!88633 () Bool)

(assert (=> d!48684 (=> (not res!88633) (not e!118870))))

(assert (=> d!48684 (= res!88633 (appendAssocInst!34 (c!36425 (charsOf!248 (apply!492 lt!65415 0))) (c!36425 lt!65802)))))

(assert (=> d!48684 (= lt!66978 (BalanceConc!2025 (++!771 (c!36425 (charsOf!248 (apply!492 lt!65415 0))) (c!36425 lt!65802))))))

(assert (=> d!48684 (= (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802) lt!66978)))

(declare-fun b!193398 () Bool)

(declare-fun res!88634 () Bool)

(assert (=> b!193398 (=> (not res!88634) (not e!118870))))

(assert (=> b!193398 (= res!88634 (isBalanced!266 (++!771 (c!36425 (charsOf!248 (apply!492 lt!65415 0))) (c!36425 lt!65802))))))

(assert (= (and d!48684 res!88633) b!193398))

(assert (= (and b!193398 res!88634) b!193399))

(assert (= (and b!193399 res!88635) b!193400))

(assert (= (and b!193400 res!88636) b!193401))

(declare-fun m!201859 () Bool)

(assert (=> b!193401 m!201859))

(assert (=> b!193401 m!197645))

(declare-fun m!201861 () Bool)

(assert (=> b!193401 m!201861))

(assert (=> b!193401 m!197677))

(assert (=> b!193401 m!201861))

(assert (=> b!193401 m!197677))

(declare-fun m!201863 () Bool)

(assert (=> b!193401 m!201863))

(declare-fun m!201867 () Bool)

(assert (=> b!193398 m!201867))

(assert (=> b!193398 m!201867))

(declare-fun m!201871 () Bool)

(assert (=> b!193398 m!201871))

(declare-fun m!201873 () Bool)

(assert (=> b!193400 m!201873))

(declare-fun m!201875 () Bool)

(assert (=> b!193400 m!201875))

(declare-fun m!201877 () Bool)

(assert (=> b!193400 m!201877))

(assert (=> b!193400 m!201867))

(declare-fun m!201879 () Bool)

(assert (=> b!193400 m!201879))

(assert (=> b!193400 m!201873))

(assert (=> b!193400 m!201867))

(assert (=> b!193400 m!201875))

(assert (=> b!193399 m!201873))

(assert (=> b!193399 m!201875))

(assert (=> b!193399 m!201877))

(assert (=> b!193399 m!201867))

(assert (=> b!193399 m!201879))

(assert (=> b!193399 m!201873))

(assert (=> b!193399 m!201867))

(assert (=> b!193399 m!201875))

(declare-fun m!201883 () Bool)

(assert (=> d!48684 m!201883))

(assert (=> d!48684 m!201867))

(assert (=> b!191594 d!48684))

(declare-fun b!193403 () Bool)

(declare-fun e!118872 () Int)

(declare-fun call!8949 () Int)

(assert (=> b!193403 (= e!118872 call!8949)))

(declare-fun b!193404 () Bool)

(declare-fun e!118876 () Bool)

(declare-fun lt!66981 () List!3230)

(assert (=> b!193404 (= e!118876 (= (size!2570 lt!66981) e!118872))))

(declare-fun c!37012 () Bool)

(assert (=> b!193404 (= c!37012 (<= 0 0))))

(declare-fun bm!8944 () Bool)

(assert (=> bm!8944 (= call!8949 (size!2570 lt!65793))))

(declare-fun b!193405 () Bool)

(declare-fun e!118874 () Int)

(assert (=> b!193405 (= e!118874 0)))

(declare-fun d!48692 () Bool)

(assert (=> d!48692 e!118876))

(declare-fun res!88638 () Bool)

(assert (=> d!48692 (=> (not res!88638) (not e!118876))))

(assert (=> d!48692 (= res!88638 (= ((_ map implies) (content!431 lt!66981) (content!431 lt!65793)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118873 () List!3230)

(assert (=> d!48692 (= lt!66981 e!118873)))

(declare-fun c!37009 () Bool)

(assert (=> d!48692 (= c!37009 ((_ is Nil!3220) lt!65793))))

(assert (=> d!48692 (= (drop!163 lt!65793 0) lt!66981)))

(declare-fun b!193406 () Bool)

(assert (=> b!193406 (= e!118874 (- call!8949 0))))

(declare-fun b!193407 () Bool)

(declare-fun e!118875 () List!3230)

(assert (=> b!193407 (= e!118873 e!118875)))

(declare-fun c!37010 () Bool)

(assert (=> b!193407 (= c!37010 (<= 0 0))))

(declare-fun b!193408 () Bool)

(assert (=> b!193408 (= e!118872 e!118874)))

(declare-fun c!37011 () Bool)

(assert (=> b!193408 (= c!37011 (>= 0 call!8949))))

(declare-fun b!193409 () Bool)

(assert (=> b!193409 (= e!118873 Nil!3220)))

(declare-fun b!193410 () Bool)

(assert (=> b!193410 (= e!118875 lt!65793)))

(declare-fun b!193411 () Bool)

(assert (=> b!193411 (= e!118875 (drop!163 (t!28932 lt!65793) (- 0 1)))))

(assert (= (and d!48692 c!37009) b!193409))

(assert (= (and d!48692 (not c!37009)) b!193407))

(assert (= (and b!193407 c!37010) b!193410))

(assert (= (and b!193407 (not c!37010)) b!193411))

(assert (= (and d!48692 res!88638) b!193404))

(assert (= (and b!193404 c!37012) b!193403))

(assert (= (and b!193404 (not c!37012)) b!193408))

(assert (= (and b!193408 c!37011) b!193405))

(assert (= (and b!193408 (not c!37011)) b!193406))

(assert (= (or b!193403 b!193408 b!193406) bm!8944))

(declare-fun m!201889 () Bool)

(assert (=> b!193404 m!201889))

(assert (=> bm!8944 m!201665))

(declare-fun m!201891 () Bool)

(assert (=> d!48692 m!201891))

(declare-fun m!201893 () Bool)

(assert (=> d!48692 m!201893))

(declare-fun m!201895 () Bool)

(assert (=> b!193411 m!201895))

(assert (=> b!191594 d!48692))

(declare-fun d!48696 () Bool)

(declare-fun lt!66989 () Token!930)

(assert (=> d!48696 (contains!514 lt!65793 lt!66989)))

(declare-fun e!118880 () Token!930)

(assert (=> d!48696 (= lt!66989 e!118880)))

(declare-fun c!37014 () Bool)

(assert (=> d!48696 (= c!37014 (= 0 0))))

(declare-fun e!118879 () Bool)

(assert (=> d!48696 e!118879))

(declare-fun res!88640 () Bool)

(assert (=> d!48696 (=> (not res!88640) (not e!118879))))

(assert (=> d!48696 (= res!88640 (<= 0 0))))

(assert (=> d!48696 (= (apply!497 lt!65793 0) lt!66989)))

(declare-fun b!193415 () Bool)

(assert (=> b!193415 (= e!118879 (< 0 (size!2570 lt!65793)))))

(declare-fun b!193416 () Bool)

(assert (=> b!193416 (= e!118880 (head!682 lt!65793))))

(declare-fun b!193417 () Bool)

(assert (=> b!193417 (= e!118880 (apply!497 (tail!385 lt!65793) (- 0 1)))))

(assert (= (and d!48696 res!88640) b!193415))

(assert (= (and d!48696 c!37014) b!193416))

(assert (= (and d!48696 (not c!37014)) b!193417))

(declare-fun m!201905 () Bool)

(assert (=> d!48696 m!201905))

(assert (=> b!193415 m!201665))

(declare-fun m!201907 () Bool)

(assert (=> b!193416 m!201907))

(declare-fun m!201909 () Bool)

(assert (=> b!193417 m!201909))

(assert (=> b!193417 m!201909))

(declare-fun m!201911 () Bool)

(assert (=> b!193417 m!201911))

(assert (=> b!191594 d!48696))

(declare-fun d!48698 () Bool)

(assert (=> d!48698 (= (head!682 (drop!163 lt!65793 0)) (h!8617 (drop!163 lt!65793 0)))))

(assert (=> b!191594 d!48698))

(declare-fun b!193418 () Bool)

(declare-fun e!118881 () Int)

(declare-fun call!8950 () Int)

(assert (=> b!193418 (= e!118881 call!8950)))

(declare-fun b!193419 () Bool)

(declare-fun e!118885 () Bool)

(declare-fun lt!66990 () List!3230)

(assert (=> b!193419 (= e!118885 (= (size!2570 lt!66990) e!118881))))

(declare-fun c!37018 () Bool)

(assert (=> b!193419 (= c!37018 (<= (+ 0 1) 0))))

(declare-fun bm!8945 () Bool)

(assert (=> bm!8945 (= call!8950 (size!2570 lt!65797))))

(declare-fun b!193420 () Bool)

(declare-fun e!118883 () Int)

(assert (=> b!193420 (= e!118883 0)))

(declare-fun d!48700 () Bool)

(assert (=> d!48700 e!118885))

(declare-fun res!88641 () Bool)

(assert (=> d!48700 (=> (not res!88641) (not e!118885))))

(assert (=> d!48700 (= res!88641 (= ((_ map implies) (content!431 lt!66990) (content!431 lt!65797)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118882 () List!3230)

(assert (=> d!48700 (= lt!66990 e!118882)))

(declare-fun c!37015 () Bool)

(assert (=> d!48700 (= c!37015 ((_ is Nil!3220) lt!65797))))

(assert (=> d!48700 (= (drop!163 lt!65797 (+ 0 1)) lt!66990)))

(declare-fun b!193421 () Bool)

(assert (=> b!193421 (= e!118883 (- call!8950 (+ 0 1)))))

(declare-fun b!193422 () Bool)

(declare-fun e!118884 () List!3230)

(assert (=> b!193422 (= e!118882 e!118884)))

(declare-fun c!37016 () Bool)

(assert (=> b!193422 (= c!37016 (<= (+ 0 1) 0))))

(declare-fun b!193423 () Bool)

(assert (=> b!193423 (= e!118881 e!118883)))

(declare-fun c!37017 () Bool)

(assert (=> b!193423 (= c!37017 (>= (+ 0 1) call!8950))))

(declare-fun b!193424 () Bool)

(assert (=> b!193424 (= e!118882 Nil!3220)))

(declare-fun b!193425 () Bool)

(assert (=> b!193425 (= e!118884 lt!65797)))

(declare-fun b!193426 () Bool)

(assert (=> b!193426 (= e!118884 (drop!163 (t!28932 lt!65797) (- (+ 0 1) 1)))))

(assert (= (and d!48700 c!37015) b!193424))

(assert (= (and d!48700 (not c!37015)) b!193422))

(assert (= (and b!193422 c!37016) b!193425))

(assert (= (and b!193422 (not c!37016)) b!193426))

(assert (= (and d!48700 res!88641) b!193419))

(assert (= (and b!193419 c!37018) b!193418))

(assert (= (and b!193419 (not c!37018)) b!193423))

(assert (= (and b!193423 c!37017) b!193420))

(assert (= (and b!193423 (not c!37017)) b!193421))

(assert (= (or b!193418 b!193423 b!193421) bm!8945))

(declare-fun m!201937 () Bool)

(assert (=> b!193419 m!201937))

(assert (=> bm!8945 m!201671))

(declare-fun m!201939 () Bool)

(assert (=> d!48700 m!201939))

(assert (=> d!48700 m!201691))

(declare-fun m!201941 () Bool)

(assert (=> b!193426 m!201941))

(assert (=> b!191594 d!48700))

(declare-fun d!48704 () Bool)

(assert (=> d!48704 (= (list!1182 lt!65415) (list!1186 (c!36427 lt!65415)))))

(declare-fun bs!19171 () Bool)

(assert (= bs!19171 d!48704))

(declare-fun m!201943 () Bool)

(assert (=> bs!19171 m!201943))

(assert (=> b!191594 d!48704))

(declare-fun lt!66992 () Option!471)

(declare-fun e!118896 () Bool)

(declare-fun b!193436 () Bool)

(assert (=> b!193436 (= e!118896 (= (list!1179 (_2!1868 (get!939 lt!66992))) (_2!1869 (get!938 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))))))

(declare-fun e!118895 () Bool)

(declare-fun b!193437 () Bool)

(assert (=> b!193437 (= e!118895 (= (list!1179 (_2!1868 (get!939 lt!66992))) (_2!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))))))

(declare-fun b!193438 () Bool)

(declare-fun e!118892 () Bool)

(assert (=> b!193438 (= e!118892 e!118896)))

(declare-fun res!88648 () Bool)

(assert (=> b!193438 (=> (not res!88648) (not e!118896))))

(assert (=> b!193438 (= res!88648 (= (_1!1868 (get!939 lt!66992)) (_1!1869 (get!938 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))))))

(declare-fun b!193439 () Bool)

(declare-fun e!118894 () Bool)

(declare-fun e!118893 () Bool)

(assert (=> b!193439 (= e!118894 e!118893)))

(declare-fun res!88646 () Bool)

(assert (=> b!193439 (=> res!88646 e!118893)))

(assert (=> b!193439 (= res!88646 (not (isDefined!322 lt!66992)))))

(declare-fun b!193440 () Bool)

(assert (=> b!193440 (= e!118893 e!118895)))

(declare-fun res!88647 () Bool)

(assert (=> b!193440 (=> (not res!88647) (not e!118895))))

(assert (=> b!193440 (= res!88647 (= (_1!1868 (get!939 lt!66992)) (_1!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))))))

(declare-fun d!48706 () Bool)

(assert (=> d!48706 e!118894))

(declare-fun res!88644 () Bool)

(assert (=> d!48706 (=> (not res!88644) (not e!118894))))

(assert (=> d!48706 (= res!88644 (= (isDefined!322 lt!66992) (isDefined!323 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802))))))))

(declare-fun e!118891 () Option!471)

(assert (=> d!48706 (= lt!66992 e!118891)))

(declare-fun c!37023 () Bool)

(assert (=> d!48706 (= c!37023 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!66995 () Unit!3036)

(declare-fun lt!66998 () Unit!3036)

(assert (=> d!48706 (= lt!66995 lt!66998)))

(declare-fun lt!66993 () List!3228)

(declare-fun lt!66994 () List!3228)

(assert (=> d!48706 (isPrefix!289 lt!66993 lt!66994)))

(assert (=> d!48706 (= lt!66998 (lemmaIsPrefixRefl!159 lt!66993 lt!66994))))

(assert (=> d!48706 (= lt!66994 (list!1179 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))

(assert (=> d!48706 (= lt!66993 (list!1179 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))

(assert (=> d!48706 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!48706 (= (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)) lt!66992)))

(declare-fun b!193441 () Bool)

(declare-fun lt!66996 () Option!471)

(declare-fun lt!66997 () Option!471)

(assert (=> b!193441 (= e!118891 (ite (and ((_ is None!470) lt!66996) ((_ is None!470) lt!66997)) None!470 (ite ((_ is None!470) lt!66997) lt!66996 (ite ((_ is None!470) lt!66996) lt!66997 (ite (>= (size!2562 (_1!1868 (v!13981 lt!66996))) (size!2562 (_1!1868 (v!13981 lt!66997)))) lt!66996 lt!66997)))))))

(declare-fun call!8952 () Option!471)

(assert (=> b!193441 (= lt!66996 call!8952)))

(assert (=> b!193441 (= lt!66997 (maxPrefixZipperSequence!172 thiss!17480 (t!28931 rules!1920) (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))

(declare-fun b!193442 () Bool)

(assert (=> b!193442 (= e!118891 call!8952)))

(declare-fun bm!8947 () Bool)

(assert (=> bm!8947 (= call!8952 (maxPrefixOneRuleZipperSequence!63 thiss!17480 (h!8616 rules!1920) (++!770 (charsOf!248 (apply!492 lt!65415 0)) lt!65802)))))

(declare-fun b!193443 () Bool)

(declare-fun res!88645 () Bool)

(assert (=> b!193443 (=> (not res!88645) (not e!118894))))

(assert (=> b!193443 (= res!88645 e!118892)))

(declare-fun res!88643 () Bool)

(assert (=> b!193443 (=> res!88643 e!118892)))

(assert (=> b!193443 (= res!88643 (not (isDefined!322 lt!66992)))))

(assert (= (and d!48706 c!37023) b!193442))

(assert (= (and d!48706 (not c!37023)) b!193441))

(assert (= (or b!193442 b!193441) bm!8947))

(assert (= (and d!48706 res!88644) b!193443))

(assert (= (and b!193443 (not res!88643)) b!193438))

(assert (= (and b!193438 res!88648) b!193436))

(assert (= (and b!193443 res!88645) b!193439))

(assert (= (and b!193439 (not res!88646)) b!193440))

(assert (= (and b!193440 res!88647) b!193437))

(declare-fun m!201961 () Bool)

(assert (=> b!193440 m!201961))

(assert (=> b!193440 m!197653))

(declare-fun m!201963 () Bool)

(assert (=> b!193440 m!201963))

(assert (=> b!193440 m!201963))

(declare-fun m!201965 () Bool)

(assert (=> b!193440 m!201965))

(assert (=> b!193440 m!201965))

(declare-fun m!201967 () Bool)

(assert (=> b!193440 m!201967))

(assert (=> d!48706 m!201963))

(declare-fun m!201969 () Bool)

(assert (=> d!48706 m!201969))

(declare-fun m!201971 () Bool)

(assert (=> d!48706 m!201971))

(assert (=> d!48706 m!196735))

(declare-fun m!201975 () Bool)

(assert (=> d!48706 m!201975))

(assert (=> d!48706 m!201969))

(declare-fun m!201981 () Bool)

(assert (=> d!48706 m!201981))

(assert (=> d!48706 m!197653))

(assert (=> d!48706 m!201963))

(declare-fun m!201983 () Bool)

(assert (=> d!48706 m!201983))

(assert (=> b!193441 m!197653))

(declare-fun m!201985 () Bool)

(assert (=> b!193441 m!201985))

(assert (=> bm!8947 m!197653))

(declare-fun m!201987 () Bool)

(assert (=> bm!8947 m!201987))

(assert (=> b!193436 m!201963))

(assert (=> b!193436 m!201969))

(assert (=> b!193436 m!201969))

(declare-fun m!201991 () Bool)

(assert (=> b!193436 m!201991))

(declare-fun m!201995 () Bool)

(assert (=> b!193436 m!201995))

(assert (=> b!193436 m!201961))

(assert (=> b!193436 m!197653))

(assert (=> b!193436 m!201963))

(assert (=> b!193443 m!201971))

(assert (=> b!193438 m!201961))

(assert (=> b!193438 m!197653))

(assert (=> b!193438 m!201963))

(assert (=> b!193438 m!201963))

(assert (=> b!193438 m!201969))

(assert (=> b!193438 m!201969))

(assert (=> b!193438 m!201991))

(assert (=> b!193437 m!201965))

(assert (=> b!193437 m!201967))

(assert (=> b!193437 m!201995))

(assert (=> b!193437 m!201961))

(assert (=> b!193437 m!201963))

(assert (=> b!193437 m!201965))

(assert (=> b!193437 m!197653))

(assert (=> b!193437 m!201963))

(assert (=> b!193439 m!201971))

(assert (=> b!191594 d!48706))

(declare-fun d!48718 () Bool)

(assert (=> d!48718 (= (isEmpty!1609 (tail!386 lt!65413)) ((_ is Nil!3218) (tail!386 lt!65413)))))

(assert (=> b!191477 d!48718))

(assert (=> b!191477 d!48010))

(assert (=> b!191372 d!47500))

(declare-fun bs!19172 () Bool)

(declare-fun d!48722 () Bool)

(assert (= bs!19172 (and d!48722 b!193312)))

(declare-fun lambda!5917 () Int)

(assert (=> bs!19172 (= lambda!5917 lambda!5911)))

(assert (=> d!48722 true))

(assert (=> d!48722 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1381 order!2045 lambda!5917))))

(assert (=> d!48722 true))

(assert (=> d!48722 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1381 order!2045 lambda!5917))))

(declare-fun Forall!140 (Int) Bool)

(assert (=> d!48722 (= (semiInverseModEq!201 (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (Forall!140 lambda!5917))))

(declare-fun bs!19173 () Bool)

(assert (= bs!19173 d!48722))

(declare-fun m!202039 () Bool)

(assert (=> bs!19173 m!202039))

(assert (=> d!47762 d!48722))

(declare-fun d!48734 () Bool)

(declare-fun lt!67006 () BalanceConc!2024)

(assert (=> d!48734 (= (list!1179 lt!67006) (originalCharacters!636 (apply!492 lt!65419 0)))))

(assert (=> d!48734 (= lt!67006 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0)))) (value!21216 (apply!492 lt!65419 0))))))

(assert (=> d!48734 (= (charsOf!248 (apply!492 lt!65419 0)) lt!67006)))

(declare-fun b_lambda!4729 () Bool)

(assert (=> (not b_lambda!4729) (not d!48734)))

(declare-fun tb!8047 () Bool)

(declare-fun t!29245 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0))))) t!29245) tb!8047))

(declare-fun b!193483 () Bool)

(declare-fun e!118917 () Bool)

(declare-fun tp!88921 () Bool)

(assert (=> b!193483 (= e!118917 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0)))) (value!21216 (apply!492 lt!65419 0))))) tp!88921))))

(declare-fun result!10990 () Bool)

(assert (=> tb!8047 (= result!10990 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0)))) (value!21216 (apply!492 lt!65419 0)))) e!118917))))

(assert (= tb!8047 b!193483))

(declare-fun m!202041 () Bool)

(assert (=> b!193483 m!202041))

(declare-fun m!202043 () Bool)

(assert (=> tb!8047 m!202043))

(assert (=> d!48734 t!29245))

(declare-fun b_and!13551 () Bool)

(assert (= b_and!13535 (and (=> t!29245 result!10990) b_and!13551)))

(declare-fun t!29247 () Bool)

(declare-fun tb!8049 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0))))) t!29247) tb!8049))

(declare-fun result!10992 () Bool)

(assert (= result!10992 result!10990))

(assert (=> d!48734 t!29247))

(declare-fun b_and!13553 () Bool)

(assert (= b_and!13533 (and (=> t!29247 result!10992) b_and!13553)))

(declare-fun t!29249 () Bool)

(declare-fun tb!8051 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0))))) t!29249) tb!8051))

(declare-fun result!10994 () Bool)

(assert (= result!10994 result!10990))

(assert (=> d!48734 t!29249))

(declare-fun b_and!13555 () Bool)

(assert (= b_and!13537 (and (=> t!29249 result!10994) b_and!13555)))

(declare-fun t!29251 () Bool)

(declare-fun tb!8053 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0))))) t!29251) tb!8053))

(declare-fun result!10996 () Bool)

(assert (= result!10996 result!10990))

(assert (=> d!48734 t!29251))

(declare-fun b_and!13557 () Bool)

(assert (= b_and!13531 (and (=> t!29251 result!10996) b_and!13557)))

(declare-fun t!29253 () Bool)

(declare-fun tb!8055 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0))))) t!29253) tb!8055))

(declare-fun result!10998 () Bool)

(assert (= result!10998 result!10990))

(assert (=> d!48734 t!29253))

(declare-fun b_and!13559 () Bool)

(assert (= b_and!13539 (and (=> t!29253 result!10998) b_and!13559)))

(declare-fun m!202047 () Bool)

(assert (=> d!48734 m!202047))

(declare-fun m!202049 () Bool)

(assert (=> d!48734 m!202049))

(assert (=> b!191558 d!48734))

(declare-fun b!193490 () Bool)

(declare-fun e!118920 () Int)

(declare-fun call!8955 () Int)

(assert (=> b!193490 (= e!118920 call!8955)))

(declare-fun b!193491 () Bool)

(declare-fun e!118924 () Bool)

(declare-fun lt!67008 () List!3230)

(assert (=> b!193491 (= e!118924 (= (size!2570 lt!67008) e!118920))))

(declare-fun c!37040 () Bool)

(assert (=> b!193491 (= c!37040 (<= (+ 0 1) 0))))

(declare-fun bm!8950 () Bool)

(assert (=> bm!8950 (= call!8955 (size!2570 lt!65777))))

(declare-fun b!193492 () Bool)

(declare-fun e!118922 () Int)

(assert (=> b!193492 (= e!118922 0)))

(declare-fun d!48738 () Bool)

(assert (=> d!48738 e!118924))

(declare-fun res!88663 () Bool)

(assert (=> d!48738 (=> (not res!88663) (not e!118924))))

(assert (=> d!48738 (= res!88663 (= ((_ map implies) (content!431 lt!67008) (content!431 lt!65777)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118921 () List!3230)

(assert (=> d!48738 (= lt!67008 e!118921)))

(declare-fun c!37037 () Bool)

(assert (=> d!48738 (= c!37037 ((_ is Nil!3220) lt!65777))))

(assert (=> d!48738 (= (drop!163 lt!65777 (+ 0 1)) lt!67008)))

(declare-fun b!193493 () Bool)

(assert (=> b!193493 (= e!118922 (- call!8955 (+ 0 1)))))

(declare-fun b!193494 () Bool)

(declare-fun e!118923 () List!3230)

(assert (=> b!193494 (= e!118921 e!118923)))

(declare-fun c!37038 () Bool)

(assert (=> b!193494 (= c!37038 (<= (+ 0 1) 0))))

(declare-fun b!193495 () Bool)

(assert (=> b!193495 (= e!118920 e!118922)))

(declare-fun c!37039 () Bool)

(assert (=> b!193495 (= c!37039 (>= (+ 0 1) call!8955))))

(declare-fun b!193496 () Bool)

(assert (=> b!193496 (= e!118921 Nil!3220)))

(declare-fun b!193497 () Bool)

(assert (=> b!193497 (= e!118923 lt!65777)))

(declare-fun b!193498 () Bool)

(assert (=> b!193498 (= e!118923 (drop!163 (t!28932 lt!65777) (- (+ 0 1) 1)))))

(assert (= (and d!48738 c!37037) b!193496))

(assert (= (and d!48738 (not c!37037)) b!193494))

(assert (= (and b!193494 c!37038) b!193497))

(assert (= (and b!193494 (not c!37038)) b!193498))

(assert (= (and d!48738 res!88663) b!193491))

(assert (= (and b!193491 c!37040) b!193490))

(assert (= (and b!193491 (not c!37040)) b!193495))

(assert (= (and b!193495 c!37039) b!193492))

(assert (= (and b!193495 (not c!37039)) b!193493))

(assert (= (or b!193490 b!193495 b!193493) bm!8950))

(declare-fun m!202061 () Bool)

(assert (=> b!193491 m!202061))

(declare-fun m!202065 () Bool)

(assert (=> bm!8950 m!202065))

(declare-fun m!202067 () Bool)

(assert (=> d!48738 m!202067))

(declare-fun m!202071 () Bool)

(assert (=> d!48738 m!202071))

(declare-fun m!202073 () Bool)

(assert (=> b!193498 m!202073))

(assert (=> b!191558 d!48738))

(declare-fun d!48740 () Bool)

(assert (=> d!48740 (= (tail!385 (drop!163 lt!65777 0)) (drop!163 lt!65777 (+ 0 1)))))

(declare-fun lt!67009 () Unit!3036)

(assert (=> d!48740 (= lt!67009 (choose!1944 lt!65777 0))))

(declare-fun e!118925 () Bool)

(assert (=> d!48740 e!118925))

(declare-fun res!88664 () Bool)

(assert (=> d!48740 (=> (not res!88664) (not e!118925))))

(assert (=> d!48740 (= res!88664 (>= 0 0))))

(assert (=> d!48740 (= (lemmaDropTail!142 lt!65777 0) lt!67009)))

(declare-fun b!193499 () Bool)

(assert (=> b!193499 (= e!118925 (< 0 (size!2570 lt!65777)))))

(assert (= (and d!48740 res!88664) b!193499))

(assert (=> d!48740 m!197563))

(assert (=> d!48740 m!197563))

(assert (=> d!48740 m!197569))

(assert (=> d!48740 m!197565))

(declare-fun m!202079 () Bool)

(assert (=> d!48740 m!202079))

(assert (=> b!193499 m!202065))

(assert (=> b!191558 d!48740))

(declare-fun b!193509 () Bool)

(declare-fun e!118930 () Int)

(declare-fun call!8956 () Int)

(assert (=> b!193509 (= e!118930 call!8956)))

(declare-fun b!193510 () Bool)

(declare-fun e!118934 () Bool)

(declare-fun lt!67015 () List!3230)

(assert (=> b!193510 (= e!118934 (= (size!2570 lt!67015) e!118930))))

(declare-fun c!37045 () Bool)

(assert (=> b!193510 (= c!37045 (<= 0 0))))

(declare-fun bm!8951 () Bool)

(assert (=> bm!8951 (= call!8956 (size!2570 lt!65779))))

(declare-fun b!193511 () Bool)

(declare-fun e!118932 () Int)

(assert (=> b!193511 (= e!118932 0)))

(declare-fun d!48744 () Bool)

(assert (=> d!48744 e!118934))

(declare-fun res!88672 () Bool)

(assert (=> d!48744 (=> (not res!88672) (not e!118934))))

(assert (=> d!48744 (= res!88672 (= ((_ map implies) (content!431 lt!67015) (content!431 lt!65779)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118931 () List!3230)

(assert (=> d!48744 (= lt!67015 e!118931)))

(declare-fun c!37042 () Bool)

(assert (=> d!48744 (= c!37042 ((_ is Nil!3220) lt!65779))))

(assert (=> d!48744 (= (drop!163 lt!65779 0) lt!67015)))

(declare-fun b!193512 () Bool)

(assert (=> b!193512 (= e!118932 (- call!8956 0))))

(declare-fun b!193513 () Bool)

(declare-fun e!118933 () List!3230)

(assert (=> b!193513 (= e!118931 e!118933)))

(declare-fun c!37043 () Bool)

(assert (=> b!193513 (= c!37043 (<= 0 0))))

(declare-fun b!193514 () Bool)

(assert (=> b!193514 (= e!118930 e!118932)))

(declare-fun c!37044 () Bool)

(assert (=> b!193514 (= c!37044 (>= 0 call!8956))))

(declare-fun b!193515 () Bool)

(assert (=> b!193515 (= e!118931 Nil!3220)))

(declare-fun b!193516 () Bool)

(assert (=> b!193516 (= e!118933 lt!65779)))

(declare-fun b!193517 () Bool)

(assert (=> b!193517 (= e!118933 (drop!163 (t!28932 lt!65779) (- 0 1)))))

(assert (= (and d!48744 c!37042) b!193515))

(assert (= (and d!48744 (not c!37042)) b!193513))

(assert (= (and b!193513 c!37043) b!193516))

(assert (= (and b!193513 (not c!37043)) b!193517))

(assert (= (and d!48744 res!88672) b!193510))

(assert (= (and b!193510 c!37045) b!193509))

(assert (= (and b!193510 (not c!37045)) b!193514))

(assert (= (and b!193514 c!37044) b!193511))

(assert (= (and b!193514 (not c!37044)) b!193512))

(assert (= (or b!193509 b!193514 b!193512) bm!8951))

(declare-fun m!202081 () Bool)

(assert (=> b!193510 m!202081))

(declare-fun m!202083 () Bool)

(assert (=> bm!8951 m!202083))

(declare-fun m!202085 () Bool)

(assert (=> d!48744 m!202085))

(declare-fun m!202087 () Bool)

(assert (=> d!48744 m!202087))

(declare-fun m!202089 () Bool)

(assert (=> b!193517 m!202089))

(assert (=> b!191558 d!48744))

(declare-fun d!48746 () Bool)

(assert (=> d!48746 (= (list!1182 lt!65419) (list!1186 (c!36427 lt!65419)))))

(declare-fun bs!19174 () Bool)

(assert (= bs!19174 d!48746))

(declare-fun m!202091 () Bool)

(assert (=> bs!19174 m!202091))

(assert (=> b!191558 d!48746))

(declare-fun d!48748 () Bool)

(assert (=> d!48748 (= (head!682 (drop!163 lt!65779 0)) (h!8617 (drop!163 lt!65779 0)))))

(assert (=> b!191558 d!48748))

(declare-fun d!48750 () Bool)

(assert (=> d!48750 (= (head!682 (drop!163 lt!65779 0)) (apply!497 lt!65779 0))))

(declare-fun lt!67016 () Unit!3036)

(assert (=> d!48750 (= lt!67016 (choose!1947 lt!65779 0))))

(declare-fun e!118935 () Bool)

(assert (=> d!48750 e!118935))

(declare-fun res!88673 () Bool)

(assert (=> d!48750 (=> (not res!88673) (not e!118935))))

(assert (=> d!48750 (= res!88673 (>= 0 0))))

(assert (=> d!48750 (= (lemmaDropApply!150 lt!65779 0) lt!67016)))

(declare-fun b!193518 () Bool)

(assert (=> b!193518 (= e!118935 (< 0 (size!2570 lt!65779)))))

(assert (= (and d!48750 res!88673) b!193518))

(assert (=> d!48750 m!197547))

(assert (=> d!48750 m!197547))

(assert (=> d!48750 m!197549))

(assert (=> d!48750 m!197567))

(declare-fun m!202093 () Bool)

(assert (=> d!48750 m!202093))

(assert (=> b!193518 m!202083))

(assert (=> b!191558 d!48750))

(declare-fun b!193520 () Bool)

(declare-fun res!88676 () Bool)

(declare-fun e!118936 () Bool)

(assert (=> b!193520 (=> (not res!88676) (not e!118936))))

(assert (=> b!193520 (= res!88676 (<= (height!101 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65419 0))))) (+ (max!0 (height!101 (c!36425 (BalanceConc!2025 Empty!1008))) (height!101 (c!36425 (charsOf!248 (apply!492 lt!65419 0))))) 1)))))

(declare-fun b!193522 () Bool)

(declare-fun lt!67017 () BalanceConc!2024)

(assert (=> b!193522 (= e!118936 (= (list!1179 lt!67017) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (apply!492 lt!65419 0))))))))

(declare-fun b!193521 () Bool)

(declare-fun res!88677 () Bool)

(assert (=> b!193521 (=> (not res!88677) (not e!118936))))

(assert (=> b!193521 (= res!88677 (>= (height!101 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65419 0))))) (max!0 (height!101 (c!36425 (BalanceConc!2025 Empty!1008))) (height!101 (c!36425 (charsOf!248 (apply!492 lt!65419 0)))))))))

(declare-fun d!48752 () Bool)

(assert (=> d!48752 e!118936))

(declare-fun res!88674 () Bool)

(assert (=> d!48752 (=> (not res!88674) (not e!118936))))

(assert (=> d!48752 (= res!88674 (appendAssocInst!34 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65419 0)))))))

(assert (=> d!48752 (= lt!67017 (BalanceConc!2025 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65419 0))))))))

(assert (=> d!48752 (= (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65419 0))) lt!67017)))

(declare-fun b!193519 () Bool)

(declare-fun res!88675 () Bool)

(assert (=> b!193519 (=> (not res!88675) (not e!118936))))

(assert (=> b!193519 (= res!88675 (isBalanced!266 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65419 0))))))))

(assert (= (and d!48752 res!88674) b!193519))

(assert (= (and b!193519 res!88675) b!193520))

(assert (= (and b!193520 res!88676) b!193521))

(assert (= (and b!193521 res!88677) b!193522))

(declare-fun m!202109 () Bool)

(assert (=> b!193522 m!202109))

(assert (=> b!193522 m!197539))

(assert (=> b!193522 m!197557))

(declare-fun m!202113 () Bool)

(assert (=> b!193522 m!202113))

(assert (=> b!193522 m!197539))

(assert (=> b!193522 m!202113))

(declare-fun m!202119 () Bool)

(assert (=> b!193522 m!202119))

(declare-fun m!202123 () Bool)

(assert (=> b!193519 m!202123))

(assert (=> b!193519 m!202123))

(declare-fun m!202129 () Bool)

(assert (=> b!193519 m!202129))

(assert (=> b!193521 m!199843))

(declare-fun m!202131 () Bool)

(assert (=> b!193521 m!202131))

(declare-fun m!202133 () Bool)

(assert (=> b!193521 m!202133))

(assert (=> b!193521 m!202123))

(declare-fun m!202137 () Bool)

(assert (=> b!193521 m!202137))

(assert (=> b!193521 m!199843))

(assert (=> b!193521 m!202123))

(assert (=> b!193521 m!202131))

(assert (=> b!193520 m!199843))

(assert (=> b!193520 m!202131))

(assert (=> b!193520 m!202133))

(assert (=> b!193520 m!202123))

(assert (=> b!193520 m!202137))

(assert (=> b!193520 m!199843))

(assert (=> b!193520 m!202123))

(assert (=> b!193520 m!202131))

(declare-fun m!202147 () Bool)

(assert (=> d!48752 m!202147))

(assert (=> d!48752 m!202123))

(assert (=> b!191558 d!48752))

(declare-fun d!48754 () Bool)

(assert (=> d!48754 (= (tail!385 (drop!163 lt!65777 0)) (t!28932 (drop!163 lt!65777 0)))))

(assert (=> b!191558 d!48754))

(declare-fun b!193523 () Bool)

(declare-fun e!118937 () Int)

(declare-fun call!8957 () Int)

(assert (=> b!193523 (= e!118937 call!8957)))

(declare-fun b!193524 () Bool)

(declare-fun e!118941 () Bool)

(declare-fun lt!67018 () List!3230)

(assert (=> b!193524 (= e!118941 (= (size!2570 lt!67018) e!118937))))

(declare-fun c!37049 () Bool)

(assert (=> b!193524 (= c!37049 (<= 0 0))))

(declare-fun bm!8952 () Bool)

(assert (=> bm!8952 (= call!8957 (size!2570 lt!65777))))

(declare-fun b!193525 () Bool)

(declare-fun e!118939 () Int)

(assert (=> b!193525 (= e!118939 0)))

(declare-fun d!48756 () Bool)

(assert (=> d!48756 e!118941))

(declare-fun res!88678 () Bool)

(assert (=> d!48756 (=> (not res!88678) (not e!118941))))

(assert (=> d!48756 (= res!88678 (= ((_ map implies) (content!431 lt!67018) (content!431 lt!65777)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!118938 () List!3230)

(assert (=> d!48756 (= lt!67018 e!118938)))

(declare-fun c!37046 () Bool)

(assert (=> d!48756 (= c!37046 ((_ is Nil!3220) lt!65777))))

(assert (=> d!48756 (= (drop!163 lt!65777 0) lt!67018)))

(declare-fun b!193526 () Bool)

(assert (=> b!193526 (= e!118939 (- call!8957 0))))

(declare-fun b!193527 () Bool)

(declare-fun e!118940 () List!3230)

(assert (=> b!193527 (= e!118938 e!118940)))

(declare-fun c!37047 () Bool)

(assert (=> b!193527 (= c!37047 (<= 0 0))))

(declare-fun b!193528 () Bool)

(assert (=> b!193528 (= e!118937 e!118939)))

(declare-fun c!37048 () Bool)

(assert (=> b!193528 (= c!37048 (>= 0 call!8957))))

(declare-fun b!193529 () Bool)

(assert (=> b!193529 (= e!118938 Nil!3220)))

(declare-fun b!193530 () Bool)

(assert (=> b!193530 (= e!118940 lt!65777)))

(declare-fun b!193531 () Bool)

(assert (=> b!193531 (= e!118940 (drop!163 (t!28932 lt!65777) (- 0 1)))))

(assert (= (and d!48756 c!37046) b!193529))

(assert (= (and d!48756 (not c!37046)) b!193527))

(assert (= (and b!193527 c!37047) b!193530))

(assert (= (and b!193527 (not c!37047)) b!193531))

(assert (= (and d!48756 res!88678) b!193524))

(assert (= (and b!193524 c!37049) b!193523))

(assert (= (and b!193524 (not c!37049)) b!193528))

(assert (= (and b!193528 c!37048) b!193525))

(assert (= (and b!193528 (not c!37048)) b!193526))

(assert (= (or b!193523 b!193528 b!193526) bm!8952))

(declare-fun m!202153 () Bool)

(assert (=> b!193524 m!202153))

(assert (=> bm!8952 m!202065))

(declare-fun m!202155 () Bool)

(assert (=> d!48756 m!202155))

(assert (=> d!48756 m!202071))

(declare-fun m!202157 () Bool)

(assert (=> b!193531 m!202157))

(assert (=> b!191558 d!48756))

(declare-fun d!48760 () Bool)

(declare-fun lt!67019 () Token!930)

(assert (=> d!48760 (= lt!67019 (apply!497 (list!1182 lt!65419) 0))))

(assert (=> d!48760 (= lt!67019 (apply!498 (c!36427 lt!65419) 0))))

(declare-fun e!118942 () Bool)

(assert (=> d!48760 e!118942))

(declare-fun res!88679 () Bool)

(assert (=> d!48760 (=> (not res!88679) (not e!118942))))

(assert (=> d!48760 (= res!88679 (<= 0 0))))

(assert (=> d!48760 (= (apply!492 lt!65419 0) lt!67019)))

(declare-fun b!193532 () Bool)

(assert (=> b!193532 (= e!118942 (< 0 (size!2563 lt!65419)))))

(assert (= (and d!48760 res!88679) b!193532))

(assert (=> d!48760 m!197505))

(assert (=> d!48760 m!197505))

(declare-fun m!202159 () Bool)

(assert (=> d!48760 m!202159))

(declare-fun m!202161 () Bool)

(assert (=> d!48760 m!202161))

(assert (=> b!193532 m!197537))

(assert (=> b!191558 d!48760))

(declare-fun d!48762 () Bool)

(declare-fun lt!67026 () BalanceConc!2024)

(assert (=> d!48762 (= (list!1179 lt!67026) (printListTailRec!78 thiss!17480 (dropList!110 lt!65419 (+ 0 1)) (list!1179 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65419 0))))))))

(declare-fun e!118946 () BalanceConc!2024)

(assert (=> d!48762 (= lt!67026 e!118946)))

(declare-fun c!37050 () Bool)

(assert (=> d!48762 (= c!37050 (>= (+ 0 1) (size!2563 lt!65419)))))

(declare-fun e!118947 () Bool)

(assert (=> d!48762 e!118947))

(declare-fun res!88684 () Bool)

(assert (=> d!48762 (=> (not res!88684) (not e!118947))))

(assert (=> d!48762 (= res!88684 (>= (+ 0 1) 0))))

(assert (=> d!48762 (= (printTailRec!173 thiss!17480 lt!65419 (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65419 0)))) lt!67026)))

(declare-fun b!193537 () Bool)

(assert (=> b!193537 (= e!118947 (<= (+ 0 1) (size!2563 lt!65419)))))

(declare-fun b!193538 () Bool)

(assert (=> b!193538 (= e!118946 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65419 0))))))

(declare-fun b!193539 () Bool)

(assert (=> b!193539 (= e!118946 (printTailRec!173 thiss!17480 lt!65419 (+ 0 1 1) (++!770 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65419 0))) (charsOf!248 (apply!492 lt!65419 (+ 0 1))))))))

(declare-fun lt!67024 () List!3230)

(assert (=> b!193539 (= lt!67024 (list!1182 lt!65419))))

(declare-fun lt!67027 () Unit!3036)

(assert (=> b!193539 (= lt!67027 (lemmaDropApply!150 lt!67024 (+ 0 1)))))

(assert (=> b!193539 (= (head!682 (drop!163 lt!67024 (+ 0 1))) (apply!497 lt!67024 (+ 0 1)))))

(declare-fun lt!67023 () Unit!3036)

(assert (=> b!193539 (= lt!67023 lt!67027)))

(declare-fun lt!67022 () List!3230)

(assert (=> b!193539 (= lt!67022 (list!1182 lt!65419))))

(declare-fun lt!67025 () Unit!3036)

(assert (=> b!193539 (= lt!67025 (lemmaDropTail!142 lt!67022 (+ 0 1)))))

(assert (=> b!193539 (= (tail!385 (drop!163 lt!67022 (+ 0 1))) (drop!163 lt!67022 (+ 0 1 1)))))

(declare-fun lt!67021 () Unit!3036)

(assert (=> b!193539 (= lt!67021 lt!67025)))

(assert (= (and d!48762 res!88684) b!193537))

(assert (= (and d!48762 c!37050) b!193538))

(assert (= (and d!48762 (not c!37050)) b!193539))

(assert (=> d!48762 m!197537))

(assert (=> d!48762 m!197559))

(declare-fun m!202167 () Bool)

(assert (=> d!48762 m!202167))

(declare-fun m!202169 () Bool)

(assert (=> d!48762 m!202169))

(assert (=> d!48762 m!202167))

(declare-fun m!202171 () Bool)

(assert (=> d!48762 m!202171))

(assert (=> d!48762 m!202169))

(declare-fun m!202173 () Bool)

(assert (=> d!48762 m!202173))

(assert (=> b!193537 m!197537))

(declare-fun m!202175 () Bool)

(assert (=> b!193539 m!202175))

(declare-fun m!202177 () Bool)

(assert (=> b!193539 m!202177))

(assert (=> b!193539 m!197505))

(declare-fun m!202179 () Bool)

(assert (=> b!193539 m!202179))

(declare-fun m!202181 () Bool)

(assert (=> b!193539 m!202181))

(declare-fun m!202183 () Bool)

(assert (=> b!193539 m!202183))

(declare-fun m!202185 () Bool)

(assert (=> b!193539 m!202185))

(assert (=> b!193539 m!202183))

(declare-fun m!202187 () Bool)

(assert (=> b!193539 m!202187))

(declare-fun m!202189 () Bool)

(assert (=> b!193539 m!202189))

(assert (=> b!193539 m!197559))

(assert (=> b!193539 m!202185))

(assert (=> b!193539 m!202187))

(declare-fun m!202191 () Bool)

(assert (=> b!193539 m!202191))

(assert (=> b!193539 m!202175))

(declare-fun m!202193 () Bool)

(assert (=> b!193539 m!202193))

(declare-fun m!202195 () Bool)

(assert (=> b!193539 m!202195))

(assert (=> b!193539 m!202191))

(declare-fun m!202197 () Bool)

(assert (=> b!193539 m!202197))

(assert (=> b!191558 d!48762))

(declare-fun d!48770 () Bool)

(declare-fun lt!67028 () Token!930)

(assert (=> d!48770 (contains!514 lt!65779 lt!67028)))

(declare-fun e!118950 () Token!930)

(assert (=> d!48770 (= lt!67028 e!118950)))

(declare-fun c!37051 () Bool)

(assert (=> d!48770 (= c!37051 (= 0 0))))

(declare-fun e!118949 () Bool)

(assert (=> d!48770 e!118949))

(declare-fun res!88685 () Bool)

(assert (=> d!48770 (=> (not res!88685) (not e!118949))))

(assert (=> d!48770 (= res!88685 (<= 0 0))))

(assert (=> d!48770 (= (apply!497 lt!65779 0) lt!67028)))

(declare-fun b!193540 () Bool)

(assert (=> b!193540 (= e!118949 (< 0 (size!2570 lt!65779)))))

(declare-fun b!193541 () Bool)

(assert (=> b!193541 (= e!118950 (head!682 lt!65779))))

(declare-fun b!193542 () Bool)

(assert (=> b!193542 (= e!118950 (apply!497 (tail!385 lt!65779) (- 0 1)))))

(assert (= (and d!48770 res!88685) b!193540))

(assert (= (and d!48770 c!37051) b!193541))

(assert (= (and d!48770 (not c!37051)) b!193542))

(declare-fun m!202201 () Bool)

(assert (=> d!48770 m!202201))

(assert (=> b!193540 m!202083))

(declare-fun m!202203 () Bool)

(assert (=> b!193541 m!202203))

(declare-fun m!202205 () Bool)

(assert (=> b!193542 m!202205))

(assert (=> b!193542 m!202205))

(declare-fun m!202207 () Bool)

(assert (=> b!193542 m!202207))

(assert (=> b!191558 d!48770))

(declare-fun d!48772 () Bool)

(declare-fun e!118951 () Bool)

(assert (=> d!48772 e!118951))

(declare-fun res!88686 () Bool)

(assert (=> d!48772 (=> (not res!88686) (not e!118951))))

(declare-fun lt!67029 () BalanceConc!2024)

(assert (=> d!48772 (= res!88686 (= (list!1179 lt!67029) lt!65413))))

(assert (=> d!48772 (= lt!67029 (BalanceConc!2025 (fromList!117 lt!65413)))))

(assert (=> d!48772 (= (fromListB!208 lt!65413) lt!67029)))

(declare-fun b!193543 () Bool)

(assert (=> b!193543 (= e!118951 (isBalanced!266 (fromList!117 lt!65413)))))

(assert (= (and d!48772 res!88686) b!193543))

(declare-fun m!202209 () Bool)

(assert (=> d!48772 m!202209))

(declare-fun m!202211 () Bool)

(assert (=> d!48772 m!202211))

(assert (=> b!193543 m!202211))

(assert (=> b!193543 m!202211))

(declare-fun m!202213 () Bool)

(assert (=> b!193543 m!202213))

(assert (=> d!47612 d!48772))

(declare-fun d!48774 () Bool)

(assert (=> d!48774 (= (isEmpty!1622 lt!65435) (not ((_ is Some!471) lt!65435)))))

(assert (=> d!47656 d!48774))

(declare-fun d!48776 () Bool)

(assert (=> d!48776 (= (list!1179 call!8804) (list!1183 (c!36425 call!8804)))))

(declare-fun bs!19176 () Bool)

(assert (= bs!19176 d!48776))

(declare-fun m!202217 () Bool)

(assert (=> bs!19176 m!202217))

(assert (=> b!191607 d!48776))

(declare-fun d!48780 () Bool)

(declare-fun res!88687 () Bool)

(declare-fun e!118952 () Bool)

(assert (=> d!48780 (=> res!88687 e!118952)))

(assert (=> d!48780 (= res!88687 ((_ is Nil!3220) (t!28932 tokens!465)))))

(assert (=> d!48780 (= (forall!675 (t!28932 tokens!465) lambda!5839) e!118952)))

(declare-fun b!193544 () Bool)

(declare-fun e!118953 () Bool)

(assert (=> b!193544 (= e!118952 e!118953)))

(declare-fun res!88688 () Bool)

(assert (=> b!193544 (=> (not res!88688) (not e!118953))))

(assert (=> b!193544 (= res!88688 (dynLambda!1375 lambda!5839 (h!8617 (t!28932 tokens!465))))))

(declare-fun b!193545 () Bool)

(assert (=> b!193545 (= e!118953 (forall!675 (t!28932 (t!28932 tokens!465)) lambda!5839))))

(assert (= (and d!48780 (not res!88687)) b!193544))

(assert (= (and b!193544 res!88688) b!193545))

(declare-fun b_lambda!4733 () Bool)

(assert (=> (not b_lambda!4733) (not b!193544)))

(declare-fun m!202223 () Bool)

(assert (=> b!193544 m!202223))

(declare-fun m!202227 () Bool)

(assert (=> b!193545 m!202227))

(assert (=> b!191865 d!48780))

(declare-fun d!48786 () Bool)

(declare-fun charsToInt!0 (List!3227) (_ BitVec 32))

(assert (=> d!48786 (= (inv!16 (value!21216 (h!8617 tokens!465))) (= (charsToInt!0 (text!4752 (value!21216 (h!8617 tokens!465)))) (value!21207 (value!21216 (h!8617 tokens!465)))))))

(declare-fun bs!19178 () Bool)

(assert (= bs!19178 d!48786))

(declare-fun m!202243 () Bool)

(assert (=> bs!19178 m!202243))

(assert (=> b!191868 d!48786))

(declare-fun d!48792 () Bool)

(assert (=> d!48792 (= (isDefined!323 (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (not (isEmpty!1617 (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))))

(declare-fun bs!19179 () Bool)

(assert (= bs!19179 d!48792))

(assert (=> bs!19179 m!198109))

(declare-fun m!202249 () Bool)

(assert (=> bs!19179 m!202249))

(assert (=> b!191840 d!48792))

(declare-fun b!193556 () Bool)

(declare-fun e!118960 () Bool)

(declare-fun lt!67038 () Option!473)

(assert (=> b!193556 (= e!118960 (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!67038)))))))

(declare-fun b!193557 () Bool)

(declare-fun res!88702 () Bool)

(assert (=> b!193557 (=> (not res!88702) (not e!118960))))

(assert (=> b!193557 (= res!88702 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67038)))) (originalCharacters!636 (_1!1869 (get!938 lt!67038)))))))

(declare-fun b!193558 () Bool)

(declare-fun e!118961 () Option!473)

(declare-fun lt!67034 () Option!473)

(declare-fun lt!67032 () Option!473)

(assert (=> b!193558 (= e!118961 (ite (and ((_ is None!472) lt!67034) ((_ is None!472) lt!67032)) None!472 (ite ((_ is None!472) lt!67032) lt!67034 (ite ((_ is None!472) lt!67034) lt!67032 (ite (>= (size!2562 (_1!1869 (v!13983 lt!67034))) (size!2562 (_1!1869 (v!13983 lt!67032)))) lt!67034 lt!67032)))))))

(declare-fun call!8958 () Option!473)

(assert (=> b!193558 (= lt!67034 call!8958)))

(assert (=> b!193558 (= lt!67032 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!193560 () Bool)

(declare-fun res!88698 () Bool)

(assert (=> b!193560 (=> (not res!88698) (not e!118960))))

(assert (=> b!193560 (= res!88698 (= (value!21216 (_1!1869 (get!938 lt!67038))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!67038)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!67038)))))))))

(declare-fun bm!8953 () Bool)

(assert (=> bm!8953 (= call!8958 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!193562 () Bool)

(declare-fun res!88694 () Bool)

(assert (=> b!193562 (=> (not res!88694) (not e!118960))))

(assert (=> b!193562 (= res!88694 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!67038)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67038))))))))

(declare-fun b!193565 () Bool)

(declare-fun res!88693 () Bool)

(assert (=> b!193565 (=> (not res!88693) (not e!118960))))

(assert (=> b!193565 (= res!88693 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67038)))) (_2!1869 (get!938 lt!67038))) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun d!48796 () Bool)

(declare-fun e!118963 () Bool)

(assert (=> d!48796 e!118963))

(declare-fun res!88699 () Bool)

(assert (=> d!48796 (=> res!88699 e!118963)))

(assert (=> d!48796 (= res!88699 (isEmpty!1617 lt!67038))))

(assert (=> d!48796 (= lt!67038 e!118961)))

(declare-fun c!37055 () Bool)

(assert (=> d!48796 (= c!37055 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!67033 () Unit!3036)

(declare-fun lt!67036 () Unit!3036)

(assert (=> d!48796 (= lt!67033 lt!67036)))

(assert (=> d!48796 (isPrefix!289 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!48796 (= lt!67036 (lemmaIsPrefixRefl!159 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(assert (=> d!48796 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!48796 (= (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170)) lt!67038)))

(declare-fun b!193559 () Bool)

(assert (=> b!193559 (= e!118963 e!118960)))

(declare-fun res!88696 () Bool)

(assert (=> b!193559 (=> (not res!88696) (not e!118960))))

(assert (=> b!193559 (= res!88696 (isDefined!323 lt!67038))))

(declare-fun b!193566 () Bool)

(assert (=> b!193566 (= e!118961 call!8958)))

(declare-fun b!193568 () Bool)

(declare-fun res!88703 () Bool)

(assert (=> b!193568 (=> (not res!88703) (not e!118960))))

(assert (=> b!193568 (= res!88703 (< (size!2566 (_2!1869 (get!938 lt!67038))) (size!2566 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(assert (= (and d!48796 c!37055) b!193566))

(assert (= (and d!48796 (not c!37055)) b!193558))

(assert (= (or b!193566 b!193558) bm!8953))

(assert (= (and d!48796 (not res!88699)) b!193559))

(assert (= (and b!193559 res!88696) b!193557))

(assert (= (and b!193557 res!88702) b!193568))

(assert (= (and b!193568 res!88703) b!193565))

(assert (= (and b!193565 res!88693) b!193560))

(assert (= (and b!193560 res!88698) b!193562))

(assert (= (and b!193562 res!88694) b!193556))

(declare-fun m!202255 () Bool)

(assert (=> b!193565 m!202255))

(declare-fun m!202257 () Bool)

(assert (=> b!193565 m!202257))

(assert (=> b!193565 m!202257))

(declare-fun m!202261 () Bool)

(assert (=> b!193565 m!202261))

(assert (=> b!193565 m!202261))

(declare-fun m!202267 () Bool)

(assert (=> b!193565 m!202267))

(assert (=> bm!8953 m!196417))

(declare-fun m!202271 () Bool)

(assert (=> bm!8953 m!202271))

(declare-fun m!202275 () Bool)

(assert (=> b!193559 m!202275))

(assert (=> b!193557 m!202255))

(assert (=> b!193557 m!202257))

(assert (=> b!193557 m!202257))

(assert (=> b!193557 m!202261))

(assert (=> b!193556 m!202255))

(declare-fun m!202283 () Bool)

(assert (=> b!193556 m!202283))

(assert (=> b!193562 m!202255))

(assert (=> b!193562 m!202257))

(assert (=> b!193562 m!202257))

(assert (=> b!193562 m!202261))

(assert (=> b!193562 m!202261))

(declare-fun m!202287 () Bool)

(assert (=> b!193562 m!202287))

(assert (=> b!193560 m!202255))

(declare-fun m!202291 () Bool)

(assert (=> b!193560 m!202291))

(assert (=> b!193560 m!202291))

(declare-fun m!202293 () Bool)

(assert (=> b!193560 m!202293))

(declare-fun m!202295 () Bool)

(assert (=> d!48796 m!202295))

(assert (=> d!48796 m!196417))

(assert (=> d!48796 m!196417))

(declare-fun m!202297 () Bool)

(assert (=> d!48796 m!202297))

(assert (=> d!48796 m!196417))

(assert (=> d!48796 m!196417))

(declare-fun m!202303 () Bool)

(assert (=> d!48796 m!202303))

(assert (=> d!48796 m!196735))

(assert (=> b!193568 m!202255))

(declare-fun m!202307 () Bool)

(assert (=> b!193568 m!202307))

(assert (=> b!193568 m!196417))

(declare-fun m!202309 () Bool)

(assert (=> b!193568 m!202309))

(assert (=> b!193558 m!196417))

(declare-fun m!202313 () Bool)

(assert (=> b!193558 m!202313))

(assert (=> b!191840 d!48796))

(assert (=> b!191840 d!47638))

(declare-fun lt!67042 () Bool)

(declare-fun d!48800 () Bool)

(assert (=> d!48800 (= lt!67042 (isEmpty!1609 (list!1179 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439)))))))))

(assert (=> d!48800 (= lt!67042 (isEmpty!1616 (c!36425 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439)))))))))

(assert (=> d!48800 (= (isEmpty!1608 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439))))) lt!67042)))

(declare-fun bs!19180 () Bool)

(assert (= bs!19180 d!48800))

(declare-fun m!202315 () Bool)

(assert (=> bs!19180 m!202315))

(assert (=> bs!19180 m!202315))

(declare-fun m!202317 () Bool)

(assert (=> bs!19180 m!202317))

(declare-fun m!202319 () Bool)

(assert (=> bs!19180 m!202319))

(assert (=> b!191653 d!48800))

(declare-fun lt!67044 () tuple2!3302)

(declare-fun e!118967 () Bool)

(declare-fun b!193575 () Bool)

(assert (=> b!193575 (= e!118967 (= (list!1179 (_2!1867 lt!67044)) (_2!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 (print!210 thiss!17480 (singletonSeq!145 lt!65439)))))))))

(declare-fun d!48802 () Bool)

(assert (=> d!48802 e!118967))

(declare-fun res!88708 () Bool)

(assert (=> d!48802 (=> (not res!88708) (not e!118967))))

(declare-fun e!118969 () Bool)

(assert (=> d!48802 (= res!88708 e!118969)))

(declare-fun c!37057 () Bool)

(assert (=> d!48802 (= c!37057 (> (size!2563 (_1!1867 lt!67044)) 0))))

(assert (=> d!48802 (= lt!67044 (lexTailRecV2!122 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439)) (BalanceConc!2025 Empty!1008) (print!210 thiss!17480 (singletonSeq!145 lt!65439)) (BalanceConc!2027 Empty!1009)))))

(assert (=> d!48802 (= (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439))) lt!67044)))

(declare-fun b!193576 () Bool)

(declare-fun res!88709 () Bool)

(assert (=> b!193576 (=> (not res!88709) (not e!118967))))

(assert (=> b!193576 (= res!88709 (= (list!1182 (_1!1867 lt!67044)) (_1!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 (print!210 thiss!17480 (singletonSeq!145 lt!65439)))))))))

(declare-fun b!193577 () Bool)

(declare-fun e!118968 () Bool)

(assert (=> b!193577 (= e!118968 (not (isEmpty!1611 (_1!1867 lt!67044))))))

(declare-fun b!193578 () Bool)

(assert (=> b!193578 (= e!118969 (= (_2!1867 lt!67044) (print!210 thiss!17480 (singletonSeq!145 lt!65439))))))

(declare-fun b!193579 () Bool)

(assert (=> b!193579 (= e!118969 e!118968)))

(declare-fun res!88710 () Bool)

(assert (=> b!193579 (= res!88710 (< (size!2569 (_2!1867 lt!67044)) (size!2569 (print!210 thiss!17480 (singletonSeq!145 lt!65439)))))))

(assert (=> b!193579 (=> (not res!88710) (not e!118968))))

(assert (= (and d!48802 c!37057) b!193579))

(assert (= (and d!48802 (not c!37057)) b!193578))

(assert (= (and b!193579 res!88710) b!193577))

(assert (= (and d!48802 res!88708) b!193576))

(assert (= (and b!193576 res!88709) b!193575))

(declare-fun m!202329 () Bool)

(assert (=> d!48802 m!202329))

(assert (=> d!48802 m!197745))

(assert (=> d!48802 m!197745))

(declare-fun m!202331 () Bool)

(assert (=> d!48802 m!202331))

(declare-fun m!202333 () Bool)

(assert (=> b!193579 m!202333))

(assert (=> b!193579 m!197745))

(declare-fun m!202335 () Bool)

(assert (=> b!193579 m!202335))

(declare-fun m!202337 () Bool)

(assert (=> b!193577 m!202337))

(declare-fun m!202339 () Bool)

(assert (=> b!193576 m!202339))

(assert (=> b!193576 m!197745))

(declare-fun m!202341 () Bool)

(assert (=> b!193576 m!202341))

(assert (=> b!193576 m!202341))

(declare-fun m!202343 () Bool)

(assert (=> b!193576 m!202343))

(declare-fun m!202345 () Bool)

(assert (=> b!193575 m!202345))

(assert (=> b!193575 m!197745))

(assert (=> b!193575 m!202341))

(assert (=> b!193575 m!202341))

(assert (=> b!193575 m!202343))

(assert (=> b!191653 d!48802))

(declare-fun d!48806 () Bool)

(declare-fun lt!67051 () BalanceConc!2024)

(assert (=> d!48806 (= (list!1179 lt!67051) (printList!163 thiss!17480 (list!1182 (singletonSeq!145 lt!65439))))))

(assert (=> d!48806 (= lt!67051 (printTailRec!173 thiss!17480 (singletonSeq!145 lt!65439) 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!48806 (= (print!210 thiss!17480 (singletonSeq!145 lt!65439)) lt!67051)))

(declare-fun bs!19182 () Bool)

(assert (= bs!19182 d!48806))

(declare-fun m!202347 () Bool)

(assert (=> bs!19182 m!202347))

(assert (=> bs!19182 m!196539))

(assert (=> bs!19182 m!197747))

(assert (=> bs!19182 m!197747))

(declare-fun m!202349 () Bool)

(assert (=> bs!19182 m!202349))

(assert (=> bs!19182 m!196539))

(declare-fun m!202351 () Bool)

(assert (=> bs!19182 m!202351))

(assert (=> b!191653 d!48806))

(assert (=> b!191653 d!47702))

(assert (=> b!191057 d!48182))

(declare-fun d!48808 () Bool)

(assert (=> d!48808 (= (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65493))))) (dynLambda!1379 (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493))))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65493))))))))

(declare-fun b_lambda!4737 () Bool)

(assert (=> (not b_lambda!4737) (not d!48808)))

(declare-fun t!29265 () Bool)

(declare-fun tb!8067 () Bool)

(assert (=> (and b!190906 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29265) tb!8067))

(declare-fun result!11010 () Bool)

(assert (=> tb!8067 (= result!11010 (inv!21 (dynLambda!1379 (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493))))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65493)))))))))

(declare-fun m!202353 () Bool)

(assert (=> tb!8067 m!202353))

(assert (=> d!48808 t!29265))

(declare-fun b_and!13571 () Bool)

(assert (= b_and!13431 (and (=> t!29265 result!11010) b_and!13571)))

(declare-fun t!29267 () Bool)

(declare-fun tb!8069 () Bool)

(assert (=> (and b!191891 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29267) tb!8069))

(declare-fun result!11012 () Bool)

(assert (= result!11012 result!11010))

(assert (=> d!48808 t!29267))

(declare-fun b_and!13573 () Bool)

(assert (= b_and!13439 (and (=> t!29267 result!11012) b_and!13573)))

(declare-fun tb!8071 () Bool)

(declare-fun t!29269 () Bool)

(assert (=> (and b!191921 (= (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29269) tb!8071))

(declare-fun result!11014 () Bool)

(assert (= result!11014 result!11010))

(assert (=> d!48808 t!29269))

(declare-fun b_and!13575 () Bool)

(assert (= b_and!13437 (and (=> t!29269 result!11014) b_and!13575)))

(declare-fun tb!8073 () Bool)

(declare-fun t!29271 () Bool)

(assert (=> (and b!190916 (= (toValue!1264 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29271) tb!8073))

(declare-fun result!11016 () Bool)

(assert (= result!11016 result!11010))

(assert (=> d!48808 t!29271))

(declare-fun b_and!13577 () Bool)

(assert (= b_and!13435 (and (=> t!29271 result!11016) b_and!13577)))

(declare-fun tb!8075 () Bool)

(declare-fun t!29273 () Bool)

(assert (=> (and b!190938 (= (toValue!1264 (transformation!593 (h!8616 rules!1920))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29273) tb!8075))

(declare-fun result!11018 () Bool)

(assert (= result!11018 result!11010))

(assert (=> d!48808 t!29273))

(declare-fun b_and!13579 () Bool)

(assert (= b_and!13433 (and (=> t!29273 result!11018) b_and!13579)))

(assert (=> d!48808 m!196725))

(declare-fun m!202355 () Bool)

(assert (=> d!48808 m!202355))

(assert (=> b!191057 d!48808))

(declare-fun d!48810 () Bool)

(assert (=> d!48810 (= (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!65493)))) (fromListB!208 (originalCharacters!636 (_1!1869 (get!938 lt!65493)))))))

(declare-fun bs!19197 () Bool)

(assert (= bs!19197 d!48810))

(declare-fun m!202357 () Bool)

(assert (=> bs!19197 m!202357))

(assert (=> b!191057 d!48810))

(declare-fun d!48812 () Bool)

(assert (=> d!48812 (= (isEmpty!1609 lt!65413) ((_ is Nil!3218) lt!65413))))

(assert (=> bm!8774 d!48812))

(declare-fun d!48814 () Bool)

(declare-fun lt!67052 () BalanceConc!2024)

(assert (=> d!48814 (= (list!1179 lt!67052) (printList!163 thiss!17480 (list!1182 (singletonSeq!145 (h!8617 (t!28932 tokens!465))))))))

(assert (=> d!48814 (= lt!67052 (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 (t!28932 tokens!465))) 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!48814 (= (print!210 thiss!17480 (singletonSeq!145 (h!8617 (t!28932 tokens!465)))) lt!67052)))

(declare-fun bs!19198 () Bool)

(assert (= bs!19198 d!48814))

(declare-fun m!202365 () Bool)

(assert (=> bs!19198 m!202365))

(assert (=> bs!19198 m!197323))

(declare-fun m!202369 () Bool)

(assert (=> bs!19198 m!202369))

(assert (=> bs!19198 m!202369))

(declare-fun m!202373 () Bool)

(assert (=> bs!19198 m!202373))

(assert (=> bs!19198 m!197323))

(assert (=> bs!19198 m!197327))

(assert (=> b!191367 d!48814))

(declare-fun d!48816 () Bool)

(declare-fun e!118979 () Bool)

(assert (=> d!48816 e!118979))

(declare-fun res!88711 () Bool)

(assert (=> d!48816 (=> (not res!88711) (not e!118979))))

(declare-fun lt!67053 () BalanceConc!2026)

(assert (=> d!48816 (= res!88711 (= (list!1182 lt!67053) (Cons!3220 (h!8617 (t!28932 tokens!465)) Nil!3220)))))

(assert (=> d!48816 (= lt!67053 (singleton!59 (h!8617 (t!28932 tokens!465))))))

(assert (=> d!48816 (= (singletonSeq!145 (h!8617 (t!28932 tokens!465))) lt!67053)))

(declare-fun b!193593 () Bool)

(assert (=> b!193593 (= e!118979 (isBalanced!264 (c!36427 lt!67053)))))

(assert (= (and d!48816 res!88711) b!193593))

(declare-fun m!202389 () Bool)

(assert (=> d!48816 m!202389))

(declare-fun m!202391 () Bool)

(assert (=> d!48816 m!202391))

(declare-fun m!202395 () Bool)

(assert (=> b!193593 m!202395))

(assert (=> b!191367 d!48816))

(declare-fun d!48818 () Bool)

(declare-fun lt!67060 () BalanceConc!2024)

(assert (=> d!48818 (= (list!1179 lt!67060) (printListTailRec!78 thiss!17480 (dropList!110 (singletonSeq!145 (h!8617 (t!28932 tokens!465))) 0) (list!1179 (BalanceConc!2025 Empty!1008))))))

(declare-fun e!118982 () BalanceConc!2024)

(assert (=> d!48818 (= lt!67060 e!118982)))

(declare-fun c!37064 () Bool)

(assert (=> d!48818 (= c!37064 (>= 0 (size!2563 (singletonSeq!145 (h!8617 (t!28932 tokens!465))))))))

(declare-fun e!118983 () Bool)

(assert (=> d!48818 e!118983))

(declare-fun res!88714 () Bool)

(assert (=> d!48818 (=> (not res!88714) (not e!118983))))

(assert (=> d!48818 (= res!88714 (>= 0 0))))

(assert (=> d!48818 (= (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 (t!28932 tokens!465))) 0 (BalanceConc!2025 Empty!1008)) lt!67060)))

(declare-fun b!193598 () Bool)

(assert (=> b!193598 (= e!118983 (<= 0 (size!2563 (singletonSeq!145 (h!8617 (t!28932 tokens!465))))))))

(declare-fun b!193599 () Bool)

(assert (=> b!193599 (= e!118982 (BalanceConc!2025 Empty!1008))))

(declare-fun b!193600 () Bool)

(assert (=> b!193600 (= e!118982 (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 (t!28932 tokens!465))) (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 (singletonSeq!145 (h!8617 (t!28932 tokens!465))) 0)))))))

(declare-fun lt!67058 () List!3230)

(assert (=> b!193600 (= lt!67058 (list!1182 (singletonSeq!145 (h!8617 (t!28932 tokens!465)))))))

(declare-fun lt!67061 () Unit!3036)

(assert (=> b!193600 (= lt!67061 (lemmaDropApply!150 lt!67058 0))))

(assert (=> b!193600 (= (head!682 (drop!163 lt!67058 0)) (apply!497 lt!67058 0))))

(declare-fun lt!67057 () Unit!3036)

(assert (=> b!193600 (= lt!67057 lt!67061)))

(declare-fun lt!67056 () List!3230)

(assert (=> b!193600 (= lt!67056 (list!1182 (singletonSeq!145 (h!8617 (t!28932 tokens!465)))))))

(declare-fun lt!67059 () Unit!3036)

(assert (=> b!193600 (= lt!67059 (lemmaDropTail!142 lt!67056 0))))

(assert (=> b!193600 (= (tail!385 (drop!163 lt!67056 0)) (drop!163 lt!67056 (+ 0 1)))))

(declare-fun lt!67055 () Unit!3036)

(assert (=> b!193600 (= lt!67055 lt!67059)))

(assert (= (and d!48818 res!88714) b!193598))

(assert (= (and d!48818 c!37064) b!193599))

(assert (= (and d!48818 (not c!37064)) b!193600))

(assert (=> d!48818 m!197323))

(declare-fun m!202411 () Bool)

(assert (=> d!48818 m!202411))

(assert (=> d!48818 m!197539))

(declare-fun m!202413 () Bool)

(assert (=> d!48818 m!202413))

(assert (=> d!48818 m!197539))

(declare-fun m!202415 () Bool)

(assert (=> d!48818 m!202415))

(assert (=> d!48818 m!197323))

(assert (=> d!48818 m!202413))

(declare-fun m!202417 () Bool)

(assert (=> d!48818 m!202417))

(assert (=> b!193598 m!197323))

(assert (=> b!193598 m!202411))

(declare-fun m!202419 () Bool)

(assert (=> b!193600 m!202419))

(declare-fun m!202421 () Bool)

(assert (=> b!193600 m!202421))

(assert (=> b!193600 m!197323))

(assert (=> b!193600 m!202369))

(declare-fun m!202423 () Bool)

(assert (=> b!193600 m!202423))

(declare-fun m!202425 () Bool)

(assert (=> b!193600 m!202425))

(declare-fun m!202427 () Bool)

(assert (=> b!193600 m!202427))

(declare-fun m!202429 () Bool)

(assert (=> b!193600 m!202429))

(assert (=> b!193600 m!197323))

(assert (=> b!193600 m!202427))

(assert (=> b!193600 m!197323))

(declare-fun m!202437 () Bool)

(assert (=> b!193600 m!202437))

(declare-fun m!202443 () Bool)

(assert (=> b!193600 m!202443))

(assert (=> b!193600 m!202429))

(assert (=> b!193600 m!202437))

(declare-fun m!202445 () Bool)

(assert (=> b!193600 m!202445))

(assert (=> b!193600 m!202419))

(declare-fun m!202447 () Bool)

(assert (=> b!193600 m!202447))

(declare-fun m!202451 () Bool)

(assert (=> b!193600 m!202451))

(assert (=> b!193600 m!202445))

(declare-fun m!202453 () Bool)

(assert (=> b!193600 m!202453))

(assert (=> b!191367 d!48818))

(declare-fun d!48830 () Bool)

(assert (=> d!48830 (isDefined!323 (maxPrefix!209 thiss!17480 rules!1920 (++!768 call!8770 lt!65671)))))

(declare-fun lt!67071 () Unit!3036)

(declare-fun e!118987 () Unit!3036)

(assert (=> d!48830 (= lt!67071 e!118987)))

(declare-fun c!37066 () Bool)

(assert (=> d!48830 (= c!37066 (isEmpty!1617 (maxPrefix!209 thiss!17480 rules!1920 (++!768 call!8770 lt!65671))))))

(declare-fun lt!67069 () Unit!3036)

(declare-fun lt!67070 () Unit!3036)

(assert (=> d!48830 (= lt!67069 lt!67070)))

(declare-fun e!118986 () Bool)

(assert (=> d!48830 e!118986))

(declare-fun res!88717 () Bool)

(assert (=> d!48830 (=> (not res!88717) (not e!118986))))

(declare-fun lt!67079 () Token!930)

(assert (=> d!48830 (= res!88717 (isDefined!324 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!67079)))))))

(assert (=> d!48830 (= lt!67070 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!34 thiss!17480 rules!1920 call!8770 lt!67079))))

(declare-fun lt!67068 () Unit!3036)

(declare-fun lt!67080 () Unit!3036)

(assert (=> d!48830 (= lt!67068 lt!67080)))

(declare-fun lt!67064 () List!3228)

(assert (=> d!48830 (isPrefix!289 lt!67064 (++!768 call!8770 lt!65671))))

(assert (=> d!48830 (= lt!67080 (lemmaPrefixStaysPrefixWhenAddingToSuffix!28 lt!67064 call!8770 lt!65671))))

(assert (=> d!48830 (= lt!67064 (list!1179 (charsOf!248 lt!67079)))))

(declare-fun lt!67075 () Unit!3036)

(declare-fun lt!67077 () Unit!3036)

(assert (=> d!48830 (= lt!67075 lt!67077)))

(declare-fun lt!67066 () List!3228)

(declare-fun lt!67076 () List!3228)

(assert (=> d!48830 (isPrefix!289 lt!67066 (++!768 lt!67066 lt!67076))))

(assert (=> d!48830 (= lt!67077 (lemmaConcatTwoListThenFirstIsPrefix!184 lt!67066 lt!67076))))

(assert (=> d!48830 (= lt!67076 (_2!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 call!8770))))))

(assert (=> d!48830 (= lt!67066 (list!1179 (charsOf!248 lt!67079)))))

(assert (=> d!48830 (= lt!67079 (head!682 (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 call!8770))))))))

(assert (=> d!48830 (not (isEmpty!1610 rules!1920))))

(assert (=> d!48830 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 call!8770 lt!65671) lt!67071)))

(declare-fun b!193605 () Bool)

(declare-fun res!88718 () Bool)

(assert (=> b!193605 (=> (not res!88718) (not e!118986))))

(assert (=> b!193605 (= res!88718 (matchR!155 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!67079))))) (list!1179 (charsOf!248 lt!67079))))))

(declare-fun b!193606 () Bool)

(assert (=> b!193606 (= e!118986 (= (rule!1108 lt!67079) (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!67079))))))))

(declare-fun b!193607 () Bool)

(declare-fun Unit!3080 () Unit!3036)

(assert (=> b!193607 (= e!118987 Unit!3080)))

(declare-fun lt!67074 () List!3228)

(assert (=> b!193607 (= lt!67074 (++!768 call!8770 lt!65671))))

(declare-fun lt!67065 () Unit!3036)

(assert (=> b!193607 (= lt!67065 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!28 thiss!17480 (rule!1108 lt!67079) rules!1920 lt!67074))))

(assert (=> b!193607 (isEmpty!1617 (maxPrefixOneRule!93 thiss!17480 (rule!1108 lt!67079) lt!67074))))

(declare-fun lt!67073 () Unit!3036)

(assert (=> b!193607 (= lt!67073 lt!67065)))

(declare-fun lt!67072 () List!3228)

(assert (=> b!193607 (= lt!67072 (list!1179 (charsOf!248 lt!67079)))))

(declare-fun lt!67078 () Unit!3036)

(assert (=> b!193607 (= lt!67078 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!28 thiss!17480 (rule!1108 lt!67079) lt!67072 (++!768 call!8770 lt!65671)))))

(assert (=> b!193607 (not (matchR!155 (regex!593 (rule!1108 lt!67079)) lt!67072))))

(declare-fun lt!67067 () Unit!3036)

(assert (=> b!193607 (= lt!67067 lt!67078)))

(assert (=> b!193607 false))

(declare-fun b!193608 () Bool)

(declare-fun Unit!3081 () Unit!3036)

(assert (=> b!193608 (= e!118987 Unit!3081)))

(assert (= (and d!48830 res!88717) b!193605))

(assert (= (and b!193605 res!88718) b!193606))

(assert (= (and d!48830 c!37066) b!193607))

(assert (= (and d!48830 (not c!37066)) b!193608))

(declare-fun m!202465 () Bool)

(assert (=> d!48830 m!202465))

(declare-fun m!202467 () Bool)

(assert (=> d!48830 m!202467))

(declare-fun m!202469 () Bool)

(assert (=> d!48830 m!202469))

(assert (=> d!48830 m!196433))

(declare-fun m!202471 () Bool)

(assert (=> d!48830 m!202471))

(declare-fun m!202473 () Bool)

(assert (=> d!48830 m!202473))

(declare-fun m!202475 () Bool)

(assert (=> d!48830 m!202475))

(declare-fun m!202477 () Bool)

(assert (=> d!48830 m!202477))

(declare-fun m!202479 () Bool)

(assert (=> d!48830 m!202479))

(declare-fun m!202481 () Bool)

(assert (=> d!48830 m!202481))

(declare-fun m!202483 () Bool)

(assert (=> d!48830 m!202483))

(declare-fun m!202485 () Bool)

(assert (=> d!48830 m!202485))

(assert (=> d!48830 m!202475))

(declare-fun m!202487 () Bool)

(assert (=> d!48830 m!202487))

(declare-fun m!202489 () Bool)

(assert (=> d!48830 m!202489))

(declare-fun m!202491 () Bool)

(assert (=> d!48830 m!202491))

(declare-fun m!202493 () Bool)

(assert (=> d!48830 m!202493))

(declare-fun m!202495 () Bool)

(assert (=> d!48830 m!202495))

(assert (=> d!48830 m!202483))

(declare-fun m!202497 () Bool)

(assert (=> d!48830 m!202497))

(declare-fun m!202499 () Bool)

(assert (=> d!48830 m!202499))

(assert (=> d!48830 m!202489))

(assert (=> d!48830 m!202493))

(assert (=> d!48830 m!202479))

(declare-fun m!202501 () Bool)

(assert (=> d!48830 m!202501))

(assert (=> d!48830 m!202497))

(declare-fun m!202503 () Bool)

(assert (=> d!48830 m!202503))

(assert (=> d!48830 m!202483))

(assert (=> d!48830 m!202479))

(assert (=> d!48830 m!202471))

(assert (=> d!48830 m!202465))

(assert (=> b!193605 m!202491))

(declare-fun m!202505 () Bool)

(assert (=> b!193605 m!202505))

(assert (=> b!193605 m!202489))

(assert (=> b!193605 m!202491))

(assert (=> b!193605 m!202471))

(assert (=> b!193605 m!202471))

(declare-fun m!202507 () Bool)

(assert (=> b!193605 m!202507))

(assert (=> b!193605 m!202489))

(assert (=> b!193606 m!202471))

(assert (=> b!193606 m!202471))

(assert (=> b!193606 m!202507))

(assert (=> b!193607 m!202483))

(declare-fun m!202509 () Bool)

(assert (=> b!193607 m!202509))

(declare-fun m!202511 () Bool)

(assert (=> b!193607 m!202511))

(declare-fun m!202513 () Bool)

(assert (=> b!193607 m!202513))

(declare-fun m!202515 () Bool)

(assert (=> b!193607 m!202515))

(assert (=> b!193607 m!202513))

(assert (=> b!193607 m!202483))

(assert (=> b!193607 m!202489))

(declare-fun m!202517 () Bool)

(assert (=> b!193607 m!202517))

(assert (=> b!193607 m!202489))

(assert (=> b!193607 m!202491))

(assert (=> b!191367 d!48830))

(declare-fun d!48838 () Bool)

(declare-fun c!37069 () Bool)

(assert (=> d!48838 (= c!37069 ((_ is IntegerValue!1845) (value!21216 (h!8617 (t!28932 tokens!465)))))))

(declare-fun e!118988 () Bool)

(assert (=> d!48838 (= (inv!21 (value!21216 (h!8617 (t!28932 tokens!465)))) e!118988)))

(declare-fun b!193609 () Bool)

(declare-fun e!118989 () Bool)

(assert (=> b!193609 (= e!118989 (inv!15 (value!21216 (h!8617 (t!28932 tokens!465)))))))

(declare-fun b!193610 () Bool)

(declare-fun e!118990 () Bool)

(assert (=> b!193610 (= e!118990 (inv!17 (value!21216 (h!8617 (t!28932 tokens!465)))))))

(declare-fun b!193611 () Bool)

(assert (=> b!193611 (= e!118988 (inv!16 (value!21216 (h!8617 (t!28932 tokens!465)))))))

(declare-fun b!193612 () Bool)

(declare-fun res!88719 () Bool)

(assert (=> b!193612 (=> res!88719 e!118989)))

(assert (=> b!193612 (= res!88719 (not ((_ is IntegerValue!1847) (value!21216 (h!8617 (t!28932 tokens!465))))))))

(assert (=> b!193612 (= e!118990 e!118989)))

(declare-fun b!193613 () Bool)

(assert (=> b!193613 (= e!118988 e!118990)))

(declare-fun c!37068 () Bool)

(assert (=> b!193613 (= c!37068 ((_ is IntegerValue!1846) (value!21216 (h!8617 (t!28932 tokens!465)))))))

(assert (= (and d!48838 c!37069) b!193611))

(assert (= (and d!48838 (not c!37069)) b!193613))

(assert (= (and b!193613 c!37068) b!193610))

(assert (= (and b!193613 (not c!37068)) b!193612))

(assert (= (and b!193612 (not res!88719)) b!193609))

(declare-fun m!202519 () Bool)

(assert (=> b!193609 m!202519))

(declare-fun m!202521 () Bool)

(assert (=> b!193610 m!202521))

(declare-fun m!202523 () Bool)

(assert (=> b!193611 m!202523))

(assert (=> b!191889 d!48838))

(declare-fun d!48840 () Bool)

(assert (=> d!48840 (= (isEmpty!1609 (originalCharacters!636 separatorToken!170)) ((_ is Nil!3218) (originalCharacters!636 separatorToken!170)))))

(assert (=> d!47642 d!48840))

(declare-fun d!48842 () Bool)

(declare-fun lt!67083 () Int)

(assert (=> d!48842 (>= lt!67083 0)))

(declare-fun e!118993 () Int)

(assert (=> d!48842 (= lt!67083 e!118993)))

(declare-fun c!37070 () Bool)

(assert (=> d!48842 (= c!37070 ((_ is Nil!3218) lt!65636))))

(assert (=> d!48842 (= (size!2566 lt!65636) lt!67083)))

(declare-fun b!193616 () Bool)

(assert (=> b!193616 (= e!118993 0)))

(declare-fun b!193617 () Bool)

(assert (=> b!193617 (= e!118993 (+ 1 (size!2566 (t!28930 lt!65636))))))

(assert (= (and d!48842 c!37070) b!193616))

(assert (= (and d!48842 (not c!37070)) b!193617))

(declare-fun m!202525 () Bool)

(assert (=> b!193617 m!202525))

(assert (=> b!191318 d!48842))

(assert (=> b!191318 d!48238))

(declare-fun d!48844 () Bool)

(declare-fun lt!67084 () Int)

(assert (=> d!48844 (>= lt!67084 0)))

(declare-fun e!118994 () Int)

(assert (=> d!48844 (= lt!67084 e!118994)))

(declare-fun c!37071 () Bool)

(assert (=> d!48844 (= c!37071 ((_ is Nil!3218) lt!65427))))

(assert (=> d!48844 (= (size!2566 lt!65427) lt!67084)))

(declare-fun b!193618 () Bool)

(assert (=> b!193618 (= e!118994 0)))

(declare-fun b!193619 () Bool)

(assert (=> b!193619 (= e!118994 (+ 1 (size!2566 (t!28930 lt!65427))))))

(assert (= (and d!48844 c!37071) b!193618))

(assert (= (and d!48844 (not c!37071)) b!193619))

(declare-fun m!202527 () Bool)

(assert (=> b!193619 m!202527))

(assert (=> b!191318 d!48844))

(assert (=> b!191738 d!48490))

(assert (=> d!47722 d!47662))

(declare-fun d!48846 () Bool)

(declare-fun e!119152 () Bool)

(assert (=> d!48846 e!119152))

(declare-fun res!88803 () Bool)

(assert (=> d!48846 (=> res!88803 e!119152)))

(assert (=> d!48846 (= res!88803 (isEmpty!1612 tokens!465))))

(assert (=> d!48846 true))

(declare-fun _$48!542 () Unit!3036)

(assert (=> d!48846 (= (choose!1940 thiss!17480 rules!1920 tokens!465 separatorToken!170) _$48!542)))

(declare-fun b!193905 () Bool)

(declare-fun e!119151 () Bool)

(assert (=> b!193905 (= e!119152 e!119151)))

(declare-fun res!88802 () Bool)

(assert (=> b!193905 (=> (not res!88802) (not e!119151))))

(assert (=> b!193905 (= res!88802 (isDefined!323 (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!193906 () Bool)

(assert (=> b!193906 (= e!119151 (= (_1!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!682 tokens!465)))))

(assert (= (and d!48846 (not res!88803)) b!193905))

(assert (= (and b!193905 res!88802) b!193906))

(assert (=> d!48846 m!196499))

(assert (=> b!193905 m!196417))

(assert (=> b!193905 m!196417))

(assert (=> b!193905 m!198109))

(assert (=> b!193905 m!198109))

(assert (=> b!193905 m!198111))

(assert (=> b!193906 m!196417))

(assert (=> b!193906 m!196417))

(assert (=> b!193906 m!198109))

(assert (=> b!193906 m!198109))

(assert (=> b!193906 m!198113))

(assert (=> b!193906 m!196409))

(assert (=> d!47722 d!48846))

(assert (=> d!47722 d!47748))

(declare-fun d!49006 () Bool)

(declare-fun e!119153 () Bool)

(assert (=> d!49006 e!119153))

(declare-fun res!88804 () Bool)

(assert (=> d!49006 (=> (not res!88804) (not e!119153))))

(declare-fun lt!67245 () List!3228)

(assert (=> d!49006 (= res!88804 (= (content!430 lt!67245) ((_ map or) (content!430 (t!28930 lt!65413)) (content!430 lt!65412))))))

(declare-fun e!119154 () List!3228)

(assert (=> d!49006 (= lt!67245 e!119154)))

(declare-fun c!37117 () Bool)

(assert (=> d!49006 (= c!37117 ((_ is Nil!3218) (t!28930 lt!65413)))))

(assert (=> d!49006 (= (++!768 (t!28930 lt!65413) lt!65412) lt!67245)))

(declare-fun b!193907 () Bool)

(assert (=> b!193907 (= e!119154 lt!65412)))

(declare-fun b!193909 () Bool)

(declare-fun res!88805 () Bool)

(assert (=> b!193909 (=> (not res!88805) (not e!119153))))

(assert (=> b!193909 (= res!88805 (= (size!2566 lt!67245) (+ (size!2566 (t!28930 lt!65413)) (size!2566 lt!65412))))))

(declare-fun b!193908 () Bool)

(assert (=> b!193908 (= e!119154 (Cons!3218 (h!8615 (t!28930 lt!65413)) (++!768 (t!28930 (t!28930 lt!65413)) lt!65412)))))

(declare-fun b!193910 () Bool)

(assert (=> b!193910 (= e!119153 (or (not (= lt!65412 Nil!3218)) (= lt!67245 (t!28930 lt!65413))))))

(assert (= (and d!49006 c!37117) b!193907))

(assert (= (and d!49006 (not c!37117)) b!193908))

(assert (= (and d!49006 res!88804) b!193909))

(assert (= (and b!193909 res!88805) b!193910))

(declare-fun m!203245 () Bool)

(assert (=> d!49006 m!203245))

(assert (=> d!49006 m!199007))

(assert (=> d!49006 m!197335))

(declare-fun m!203247 () Bool)

(assert (=> b!193909 m!203247))

(assert (=> b!193909 m!198971))

(assert (=> b!193909 m!197339))

(declare-fun m!203249 () Bool)

(assert (=> b!193908 m!203249))

(assert (=> b!191379 d!49006))

(declare-fun d!49008 () Bool)

(assert (=> d!49008 (= (isEmpty!1617 lt!65420) (not ((_ is Some!472) lt!65420)))))

(assert (=> d!47744 d!49008))

(declare-fun d!49010 () Bool)

(declare-fun lt!67246 () BalanceConc!2024)

(assert (=> d!49010 (= (list!1179 lt!67246) (originalCharacters!636 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800))))))

(assert (=> d!49010 (= lt!67246 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800))))) (value!21216 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))))

(assert (=> d!49010 (= (charsOf!248 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800))) lt!67246)))

(declare-fun b_lambda!4769 () Bool)

(assert (=> (not b_lambda!4769) (not d!49010)))

(declare-fun tb!8173 () Bool)

(declare-fun t!29372 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))) t!29372) tb!8173))

(declare-fun e!119155 () Bool)

(declare-fun tp!89033 () Bool)

(declare-fun b!193911 () Bool)

(assert (=> b!193911 (= e!119155 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800))))) (value!21216 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))) tp!89033))))

(declare-fun result!11118 () Bool)

(assert (=> tb!8173 (= result!11118 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800))))) (value!21216 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800))))) e!119155))))

(assert (= tb!8173 b!193911))

(declare-fun m!203251 () Bool)

(assert (=> b!193911 m!203251))

(declare-fun m!203253 () Bool)

(assert (=> tb!8173 m!203253))

(assert (=> d!49010 t!29372))

(declare-fun b_and!13619 () Bool)

(assert (= b_and!13559 (and (=> t!29372 result!11118) b_and!13619)))

(declare-fun t!29374 () Bool)

(declare-fun tb!8175 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))) t!29374) tb!8175))

(declare-fun result!11120 () Bool)

(assert (= result!11120 result!11118))

(assert (=> d!49010 t!29374))

(declare-fun b_and!13621 () Bool)

(assert (= b_and!13557 (and (=> t!29374 result!11120) b_and!13621)))

(declare-fun t!29376 () Bool)

(declare-fun tb!8177 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))) t!29376) tb!8177))

(declare-fun result!11122 () Bool)

(assert (= result!11122 result!11118))

(assert (=> d!49010 t!29376))

(declare-fun b_and!13623 () Bool)

(assert (= b_and!13551 (and (=> t!29376 result!11122) b_and!13623)))

(declare-fun t!29378 () Bool)

(declare-fun tb!8179 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))) t!29378) tb!8179))

(declare-fun result!11124 () Bool)

(assert (= result!11124 result!11118))

(assert (=> d!49010 t!29378))

(declare-fun b_and!13625 () Bool)

(assert (= b_and!13555 (and (=> t!29378 result!11124) b_and!13625)))

(declare-fun tb!8181 () Bool)

(declare-fun t!29380 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))) t!29380) tb!8181))

(declare-fun result!11126 () Bool)

(assert (= result!11126 result!11118))

(assert (=> d!49010 t!29380))

(declare-fun b_and!13627 () Bool)

(assert (= b_and!13553 (and (=> t!29380 result!11126) b_and!13627)))

(declare-fun m!203255 () Bool)

(assert (=> d!49010 m!203255))

(declare-fun m!203257 () Bool)

(assert (=> d!49010 m!203257))

(assert (=> bm!8794 d!49010))

(declare-fun b!193912 () Bool)

(declare-fun e!119156 () Bool)

(declare-fun lt!67251 () Option!473)

(assert (=> b!193912 (= e!119156 (contains!516 (t!28931 rules!1920) (rule!1108 (_1!1869 (get!938 lt!67251)))))))

(declare-fun b!193913 () Bool)

(declare-fun res!88811 () Bool)

(assert (=> b!193913 (=> (not res!88811) (not e!119156))))

(assert (=> b!193913 (= res!88811 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67251)))) (originalCharacters!636 (_1!1869 (get!938 lt!67251)))))))

(declare-fun b!193914 () Bool)

(declare-fun e!119157 () Option!473)

(declare-fun lt!67249 () Option!473)

(declare-fun lt!67247 () Option!473)

(assert (=> b!193914 (= e!119157 (ite (and ((_ is None!472) lt!67249) ((_ is None!472) lt!67247)) None!472 (ite ((_ is None!472) lt!67247) lt!67249 (ite ((_ is None!472) lt!67249) lt!67247 (ite (>= (size!2562 (_1!1869 (v!13983 lt!67249))) (size!2562 (_1!1869 (v!13983 lt!67247)))) lt!67249 lt!67247)))))))

(declare-fun call!8979 () Option!473)

(assert (=> b!193914 (= lt!67249 call!8979)))

(assert (=> b!193914 (= lt!67247 (maxPrefix!209 thiss!17480 (t!28931 (t!28931 rules!1920)) lt!65413))))

(declare-fun b!193916 () Bool)

(declare-fun res!88809 () Bool)

(assert (=> b!193916 (=> (not res!88809) (not e!119156))))

(assert (=> b!193916 (= res!88809 (= (value!21216 (_1!1869 (get!938 lt!67251))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!67251)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!67251)))))))))

(declare-fun bm!8974 () Bool)

(assert (=> bm!8974 (= call!8979 (maxPrefixOneRule!93 thiss!17480 (h!8616 (t!28931 rules!1920)) lt!65413))))

(declare-fun b!193917 () Bool)

(declare-fun res!88807 () Bool)

(assert (=> b!193917 (=> (not res!88807) (not e!119156))))

(assert (=> b!193917 (= res!88807 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!67251)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67251))))))))

(declare-fun b!193918 () Bool)

(declare-fun res!88806 () Bool)

(assert (=> b!193918 (=> (not res!88806) (not e!119156))))

(assert (=> b!193918 (= res!88806 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67251)))) (_2!1869 (get!938 lt!67251))) lt!65413))))

(declare-fun d!49012 () Bool)

(declare-fun e!119158 () Bool)

(assert (=> d!49012 e!119158))

(declare-fun res!88810 () Bool)

(assert (=> d!49012 (=> res!88810 e!119158)))

(assert (=> d!49012 (= res!88810 (isEmpty!1617 lt!67251))))

(assert (=> d!49012 (= lt!67251 e!119157)))

(declare-fun c!37118 () Bool)

(assert (=> d!49012 (= c!37118 (and ((_ is Cons!3219) (t!28931 rules!1920)) ((_ is Nil!3219) (t!28931 (t!28931 rules!1920)))))))

(declare-fun lt!67248 () Unit!3036)

(declare-fun lt!67250 () Unit!3036)

(assert (=> d!49012 (= lt!67248 lt!67250)))

(assert (=> d!49012 (isPrefix!289 lt!65413 lt!65413)))

(assert (=> d!49012 (= lt!67250 (lemmaIsPrefixRefl!159 lt!65413 lt!65413))))

(assert (=> d!49012 (rulesValidInductive!148 thiss!17480 (t!28931 rules!1920))))

(assert (=> d!49012 (= (maxPrefix!209 thiss!17480 (t!28931 rules!1920) lt!65413) lt!67251)))

(declare-fun b!193915 () Bool)

(assert (=> b!193915 (= e!119158 e!119156)))

(declare-fun res!88808 () Bool)

(assert (=> b!193915 (=> (not res!88808) (not e!119156))))

(assert (=> b!193915 (= res!88808 (isDefined!323 lt!67251))))

(declare-fun b!193919 () Bool)

(assert (=> b!193919 (= e!119157 call!8979)))

(declare-fun b!193920 () Bool)

(declare-fun res!88812 () Bool)

(assert (=> b!193920 (=> (not res!88812) (not e!119156))))

(assert (=> b!193920 (= res!88812 (< (size!2566 (_2!1869 (get!938 lt!67251))) (size!2566 lt!65413)))))

(assert (= (and d!49012 c!37118) b!193919))

(assert (= (and d!49012 (not c!37118)) b!193914))

(assert (= (or b!193919 b!193914) bm!8974))

(assert (= (and d!49012 (not res!88810)) b!193915))

(assert (= (and b!193915 res!88808) b!193913))

(assert (= (and b!193913 res!88811) b!193920))

(assert (= (and b!193920 res!88812) b!193918))

(assert (= (and b!193918 res!88806) b!193916))

(assert (= (and b!193916 res!88809) b!193917))

(assert (= (and b!193917 res!88807) b!193912))

(declare-fun m!203259 () Bool)

(assert (=> b!193918 m!203259))

(declare-fun m!203261 () Bool)

(assert (=> b!193918 m!203261))

(assert (=> b!193918 m!203261))

(declare-fun m!203263 () Bool)

(assert (=> b!193918 m!203263))

(assert (=> b!193918 m!203263))

(declare-fun m!203265 () Bool)

(assert (=> b!193918 m!203265))

(declare-fun m!203267 () Bool)

(assert (=> bm!8974 m!203267))

(declare-fun m!203269 () Bool)

(assert (=> b!193915 m!203269))

(assert (=> b!193913 m!203259))

(assert (=> b!193913 m!203261))

(assert (=> b!193913 m!203261))

(assert (=> b!193913 m!203263))

(assert (=> b!193912 m!203259))

(declare-fun m!203271 () Bool)

(assert (=> b!193912 m!203271))

(assert (=> b!193917 m!203259))

(assert (=> b!193917 m!203261))

(assert (=> b!193917 m!203261))

(assert (=> b!193917 m!203263))

(assert (=> b!193917 m!203263))

(declare-fun m!203273 () Bool)

(assert (=> b!193917 m!203273))

(assert (=> b!193916 m!203259))

(declare-fun m!203275 () Bool)

(assert (=> b!193916 m!203275))

(assert (=> b!193916 m!203275))

(declare-fun m!203277 () Bool)

(assert (=> b!193916 m!203277))

(declare-fun m!203279 () Bool)

(assert (=> d!49012 m!203279))

(assert (=> d!49012 m!198191))

(assert (=> d!49012 m!198193))

(declare-fun m!203281 () Bool)

(assert (=> d!49012 m!203281))

(assert (=> b!193920 m!203259))

(declare-fun m!203283 () Bool)

(assert (=> b!193920 m!203283))

(assert (=> b!193920 m!197161))

(declare-fun m!203285 () Bool)

(assert (=> b!193914 m!203285))

(assert (=> b!191857 d!49012))

(declare-fun d!49014 () Bool)

(declare-fun lt!67252 () Int)

(assert (=> d!49014 (= lt!67252 (size!2570 (list!1182 (seqFromList!564 (t!28932 tokens!465)))))))

(assert (=> d!49014 (= lt!67252 (size!2571 (c!36427 (seqFromList!564 (t!28932 tokens!465)))))))

(assert (=> d!49014 (= (size!2563 (seqFromList!564 (t!28932 tokens!465))) lt!67252)))

(declare-fun bs!19259 () Bool)

(assert (= bs!19259 d!49014))

(assert (=> bs!19259 m!196435))

(assert (=> bs!19259 m!197025))

(assert (=> bs!19259 m!197025))

(declare-fun m!203287 () Bool)

(assert (=> bs!19259 m!203287))

(declare-fun m!203289 () Bool)

(assert (=> bs!19259 m!203289))

(assert (=> b!191261 d!49014))

(declare-fun d!49016 () Bool)

(declare-fun c!37119 () Bool)

(assert (=> d!49016 (= c!37119 ((_ is Node!1008) (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))))))

(declare-fun e!119159 () Bool)

(assert (=> d!49016 (= (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))) e!119159)))

(declare-fun b!193921 () Bool)

(assert (=> b!193921 (= e!119159 (inv!4046 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))))))

(declare-fun b!193922 () Bool)

(declare-fun e!119160 () Bool)

(assert (=> b!193922 (= e!119159 e!119160)))

(declare-fun res!88813 () Bool)

(assert (=> b!193922 (= res!88813 (not ((_ is Leaf!1644) (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))))))))

(assert (=> b!193922 (=> res!88813 e!119160)))

(declare-fun b!193923 () Bool)

(assert (=> b!193923 (= e!119160 (inv!4047 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))))))

(assert (= (and d!49016 c!37119) b!193921))

(assert (= (and d!49016 (not c!37119)) b!193922))

(assert (= (and b!193922 (not res!88813)) b!193923))

(declare-fun m!203291 () Bool)

(assert (=> b!193921 m!203291))

(declare-fun m!203293 () Bool)

(assert (=> b!193923 m!203293))

(assert (=> b!191291 d!49016))

(declare-fun d!49018 () Bool)

(declare-fun lt!67253 () Bool)

(assert (=> d!49018 (= lt!67253 (isEmpty!1609 (list!1179 (_2!1867 lt!65505))))))

(assert (=> d!49018 (= lt!67253 (isEmpty!1616 (c!36425 (_2!1867 lt!65505))))))

(assert (=> d!49018 (= (isEmpty!1608 (_2!1867 lt!65505)) lt!67253)))

(declare-fun bs!19260 () Bool)

(assert (= bs!19260 d!49018))

(declare-fun m!203295 () Bool)

(assert (=> bs!19260 m!203295))

(assert (=> bs!19260 m!203295))

(declare-fun m!203297 () Bool)

(assert (=> bs!19260 m!203297))

(declare-fun m!203299 () Bool)

(assert (=> bs!19260 m!203299))

(assert (=> b!191111 d!49018))

(declare-fun d!49020 () Bool)

(assert (=> d!49020 (= (isDefined!322 lt!65712) (not (isEmpty!1619 lt!65712)))))

(declare-fun bs!19261 () Bool)

(assert (= bs!19261 d!49020))

(declare-fun m!203301 () Bool)

(assert (=> bs!19261 m!203301))

(assert (=> b!191437 d!49020))

(declare-fun d!49022 () Bool)

(assert (=> d!49022 (= (isEmpty!1609 (list!1179 (_2!1867 lt!65414))) ((_ is Nil!3218) (list!1179 (_2!1867 lt!65414))))))

(assert (=> d!47410 d!49022))

(declare-fun d!49024 () Bool)

(assert (=> d!49024 (= (list!1179 (_2!1867 lt!65414)) (list!1183 (c!36425 (_2!1867 lt!65414))))))

(declare-fun bs!19262 () Bool)

(assert (= bs!19262 d!49024))

(declare-fun m!203303 () Bool)

(assert (=> bs!19262 m!203303))

(assert (=> d!47410 d!49024))

(declare-fun d!49026 () Bool)

(declare-fun lt!67256 () Bool)

(assert (=> d!49026 (= lt!67256 (isEmpty!1609 (list!1183 (c!36425 (_2!1867 lt!65414)))))))

(declare-fun size!2573 (Conc!1008) Int)

(assert (=> d!49026 (= lt!67256 (= (size!2573 (c!36425 (_2!1867 lt!65414))) 0))))

(assert (=> d!49026 (= (isEmpty!1616 (c!36425 (_2!1867 lt!65414))) lt!67256)))

(declare-fun bs!19263 () Bool)

(assert (= bs!19263 d!49026))

(assert (=> bs!19263 m!203303))

(assert (=> bs!19263 m!203303))

(declare-fun m!203305 () Bool)

(assert (=> bs!19263 m!203305))

(declare-fun m!203307 () Bool)

(assert (=> bs!19263 m!203307))

(assert (=> d!47410 d!49026))

(assert (=> b!191713 d!48168))

(declare-fun d!49028 () Bool)

(assert (=> d!49028 (= (head!684 lt!65405) (h!8615 lt!65405))))

(assert (=> b!191713 d!49028))

(declare-fun d!49030 () Bool)

(declare-fun c!37120 () Bool)

(assert (=> d!49030 (= c!37120 ((_ is Nil!3218) lt!65673))))

(declare-fun e!119161 () (InoxSet C!2556))

(assert (=> d!49030 (= (content!430 lt!65673) e!119161)))

(declare-fun b!193924 () Bool)

(assert (=> b!193924 (= e!119161 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!193925 () Bool)

(assert (=> b!193925 (= e!119161 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65673) true) (content!430 (t!28930 lt!65673))))))

(assert (= (and d!49030 c!37120) b!193924))

(assert (= (and d!49030 (not c!37120)) b!193925))

(declare-fun m!203309 () Bool)

(assert (=> b!193925 m!203309))

(declare-fun m!203311 () Bool)

(assert (=> b!193925 m!203311))

(assert (=> d!47558 d!49030))

(assert (=> d!47558 d!48116))

(declare-fun d!49032 () Bool)

(declare-fun c!37121 () Bool)

(assert (=> d!49032 (= c!37121 ((_ is Nil!3218) lt!65412))))

(declare-fun e!119162 () (InoxSet C!2556))

(assert (=> d!49032 (= (content!430 lt!65412) e!119162)))

(declare-fun b!193926 () Bool)

(assert (=> b!193926 (= e!119162 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!193927 () Bool)

(assert (=> b!193927 (= e!119162 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65412) true) (content!430 (t!28930 lt!65412))))))

(assert (= (and d!49032 c!37121) b!193926))

(assert (= (and d!49032 (not c!37121)) b!193927))

(declare-fun m!203313 () Bool)

(assert (=> b!193927 m!203313))

(declare-fun m!203315 () Bool)

(assert (=> b!193927 m!203315))

(assert (=> d!47558 d!49032))

(declare-fun d!49034 () Bool)

(declare-fun lt!67257 () Token!930)

(assert (=> d!49034 (contains!514 lt!65821 lt!67257)))

(declare-fun e!119164 () Token!930)

(assert (=> d!49034 (= lt!67257 e!119164)))

(declare-fun c!37122 () Bool)

(assert (=> d!49034 (= c!37122 (= 0 0))))

(declare-fun e!119163 () Bool)

(assert (=> d!49034 e!119163))

(declare-fun res!88814 () Bool)

(assert (=> d!49034 (=> (not res!88814) (not e!119163))))

(assert (=> d!49034 (= res!88814 (<= 0 0))))

(assert (=> d!49034 (= (apply!497 lt!65821 0) lt!67257)))

(declare-fun b!193928 () Bool)

(assert (=> b!193928 (= e!119163 (< 0 (size!2570 lt!65821)))))

(declare-fun b!193929 () Bool)

(assert (=> b!193929 (= e!119164 (head!682 lt!65821))))

(declare-fun b!193930 () Bool)

(assert (=> b!193930 (= e!119164 (apply!497 (tail!385 lt!65821) (- 0 1)))))

(assert (= (and d!49034 res!88814) b!193928))

(assert (= (and d!49034 c!37122) b!193929))

(assert (= (and d!49034 (not c!37122)) b!193930))

(declare-fun m!203317 () Bool)

(assert (=> d!49034 m!203317))

(declare-fun m!203319 () Bool)

(assert (=> b!193928 m!203319))

(declare-fun m!203321 () Bool)

(assert (=> b!193929 m!203321))

(declare-fun m!203323 () Bool)

(assert (=> b!193930 m!203323))

(assert (=> b!193930 m!203323))

(declare-fun m!203325 () Bool)

(assert (=> b!193930 m!203325))

(assert (=> b!191656 d!49034))

(assert (=> b!191656 d!48250))

(declare-fun d!49036 () Bool)

(declare-fun lt!67258 () Token!930)

(assert (=> d!49036 (= lt!67258 (apply!497 (list!1182 lt!65440) 0))))

(assert (=> d!49036 (= lt!67258 (apply!498 (c!36427 lt!65440) 0))))

(declare-fun e!119165 () Bool)

(assert (=> d!49036 e!119165))

(declare-fun res!88815 () Bool)

(assert (=> d!49036 (=> (not res!88815) (not e!119165))))

(assert (=> d!49036 (= res!88815 (<= 0 0))))

(assert (=> d!49036 (= (apply!492 lt!65440 0) lt!67258)))

(declare-fun b!193931 () Bool)

(assert (=> b!193931 (= e!119165 (< 0 (size!2563 lt!65440)))))

(assert (= (and d!49036 res!88815) b!193931))

(assert (=> d!49036 m!197771))

(assert (=> d!49036 m!197771))

(declare-fun m!203327 () Bool)

(assert (=> d!49036 m!203327))

(declare-fun m!203329 () Bool)

(assert (=> d!49036 m!203329))

(assert (=> b!193931 m!197759))

(assert (=> b!191656 d!49036))

(declare-fun b!193932 () Bool)

(declare-fun e!119166 () Int)

(declare-fun call!8980 () Int)

(assert (=> b!193932 (= e!119166 call!8980)))

(declare-fun b!193933 () Bool)

(declare-fun e!119170 () Bool)

(declare-fun lt!67259 () List!3230)

(assert (=> b!193933 (= e!119170 (= (size!2570 lt!67259) e!119166))))

(declare-fun c!37126 () Bool)

(assert (=> b!193933 (= c!37126 (<= (+ 0 1) 0))))

(declare-fun bm!8975 () Bool)

(assert (=> bm!8975 (= call!8980 (size!2570 lt!65819))))

(declare-fun b!193934 () Bool)

(declare-fun e!119168 () Int)

(assert (=> b!193934 (= e!119168 0)))

(declare-fun d!49038 () Bool)

(assert (=> d!49038 e!119170))

(declare-fun res!88816 () Bool)

(assert (=> d!49038 (=> (not res!88816) (not e!119170))))

(assert (=> d!49038 (= res!88816 (= ((_ map implies) (content!431 lt!67259) (content!431 lt!65819)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!119167 () List!3230)

(assert (=> d!49038 (= lt!67259 e!119167)))

(declare-fun c!37123 () Bool)

(assert (=> d!49038 (= c!37123 ((_ is Nil!3220) lt!65819))))

(assert (=> d!49038 (= (drop!163 lt!65819 (+ 0 1)) lt!67259)))

(declare-fun b!193935 () Bool)

(assert (=> b!193935 (= e!119168 (- call!8980 (+ 0 1)))))

(declare-fun b!193936 () Bool)

(declare-fun e!119169 () List!3230)

(assert (=> b!193936 (= e!119167 e!119169)))

(declare-fun c!37124 () Bool)

(assert (=> b!193936 (= c!37124 (<= (+ 0 1) 0))))

(declare-fun b!193937 () Bool)

(assert (=> b!193937 (= e!119166 e!119168)))

(declare-fun c!37125 () Bool)

(assert (=> b!193937 (= c!37125 (>= (+ 0 1) call!8980))))

(declare-fun b!193938 () Bool)

(assert (=> b!193938 (= e!119167 Nil!3220)))

(declare-fun b!193939 () Bool)

(assert (=> b!193939 (= e!119169 lt!65819)))

(declare-fun b!193940 () Bool)

(assert (=> b!193940 (= e!119169 (drop!163 (t!28932 lt!65819) (- (+ 0 1) 1)))))

(assert (= (and d!49038 c!37123) b!193938))

(assert (= (and d!49038 (not c!37123)) b!193936))

(assert (= (and b!193936 c!37124) b!193939))

(assert (= (and b!193936 (not c!37124)) b!193940))

(assert (= (and d!49038 res!88816) b!193933))

(assert (= (and b!193933 c!37126) b!193932))

(assert (= (and b!193933 (not c!37126)) b!193937))

(assert (= (and b!193937 c!37125) b!193934))

(assert (= (and b!193937 (not c!37125)) b!193935))

(assert (= (or b!193932 b!193937 b!193935) bm!8975))

(declare-fun m!203331 () Bool)

(assert (=> b!193933 m!203331))

(declare-fun m!203333 () Bool)

(assert (=> bm!8975 m!203333))

(declare-fun m!203335 () Bool)

(assert (=> d!49038 m!203335))

(declare-fun m!203337 () Bool)

(assert (=> d!49038 m!203337))

(declare-fun m!203339 () Bool)

(assert (=> b!193940 m!203339))

(assert (=> b!191656 d!49038))

(declare-fun b!193942 () Bool)

(declare-fun res!88819 () Bool)

(declare-fun e!119171 () Bool)

(assert (=> b!193942 (=> (not res!88819) (not e!119171))))

(assert (=> b!193942 (= res!88819 (<= (height!101 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65440 0))))) (+ (max!0 (height!101 (c!36425 (BalanceConc!2025 Empty!1008))) (height!101 (c!36425 (charsOf!248 (apply!492 lt!65440 0))))) 1)))))

(declare-fun b!193944 () Bool)

(declare-fun lt!67260 () BalanceConc!2024)

(assert (=> b!193944 (= e!119171 (= (list!1179 lt!67260) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (apply!492 lt!65440 0))))))))

(declare-fun b!193943 () Bool)

(declare-fun res!88820 () Bool)

(assert (=> b!193943 (=> (not res!88820) (not e!119171))))

(assert (=> b!193943 (= res!88820 (>= (height!101 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65440 0))))) (max!0 (height!101 (c!36425 (BalanceConc!2025 Empty!1008))) (height!101 (c!36425 (charsOf!248 (apply!492 lt!65440 0)))))))))

(declare-fun d!49040 () Bool)

(assert (=> d!49040 e!119171))

(declare-fun res!88817 () Bool)

(assert (=> d!49040 (=> (not res!88817) (not e!119171))))

(assert (=> d!49040 (= res!88817 (appendAssocInst!34 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65440 0)))))))

(assert (=> d!49040 (= lt!67260 (BalanceConc!2025 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65440 0))))))))

(assert (=> d!49040 (= (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65440 0))) lt!67260)))

(declare-fun b!193941 () Bool)

(declare-fun res!88818 () Bool)

(assert (=> b!193941 (=> (not res!88818) (not e!119171))))

(assert (=> b!193941 (= res!88818 (isBalanced!266 (++!771 (c!36425 (BalanceConc!2025 Empty!1008)) (c!36425 (charsOf!248 (apply!492 lt!65440 0))))))))

(assert (= (and d!49040 res!88817) b!193941))

(assert (= (and b!193941 res!88818) b!193942))

(assert (= (and b!193942 res!88819) b!193943))

(assert (= (and b!193943 res!88820) b!193944))

(declare-fun m!203341 () Bool)

(assert (=> b!193944 m!203341))

(assert (=> b!193944 m!197539))

(assert (=> b!193944 m!197779))

(declare-fun m!203343 () Bool)

(assert (=> b!193944 m!203343))

(assert (=> b!193944 m!197539))

(assert (=> b!193944 m!203343))

(declare-fun m!203345 () Bool)

(assert (=> b!193944 m!203345))

(declare-fun m!203347 () Bool)

(assert (=> b!193941 m!203347))

(assert (=> b!193941 m!203347))

(declare-fun m!203349 () Bool)

(assert (=> b!193941 m!203349))

(assert (=> b!193943 m!199843))

(declare-fun m!203351 () Bool)

(assert (=> b!193943 m!203351))

(declare-fun m!203353 () Bool)

(assert (=> b!193943 m!203353))

(assert (=> b!193943 m!203347))

(declare-fun m!203355 () Bool)

(assert (=> b!193943 m!203355))

(assert (=> b!193943 m!199843))

(assert (=> b!193943 m!203347))

(assert (=> b!193943 m!203351))

(assert (=> b!193942 m!199843))

(assert (=> b!193942 m!203351))

(assert (=> b!193942 m!203353))

(assert (=> b!193942 m!203347))

(assert (=> b!193942 m!203355))

(assert (=> b!193942 m!199843))

(assert (=> b!193942 m!203347))

(assert (=> b!193942 m!203351))

(declare-fun m!203357 () Bool)

(assert (=> d!49040 m!203357))

(assert (=> d!49040 m!203347))

(assert (=> b!191656 d!49040))

(declare-fun d!49042 () Bool)

(declare-fun lt!67261 () BalanceConc!2024)

(assert (=> d!49042 (= (list!1179 lt!67261) (originalCharacters!636 (apply!492 lt!65440 0)))))

(assert (=> d!49042 (= lt!67261 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0)))) (value!21216 (apply!492 lt!65440 0))))))

(assert (=> d!49042 (= (charsOf!248 (apply!492 lt!65440 0)) lt!67261)))

(declare-fun b_lambda!4771 () Bool)

(assert (=> (not b_lambda!4771) (not d!49042)))

(declare-fun t!29383 () Bool)

(declare-fun tb!8183 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0))))) t!29383) tb!8183))

(declare-fun b!193945 () Bool)

(declare-fun e!119172 () Bool)

(declare-fun tp!89034 () Bool)

(assert (=> b!193945 (= e!119172 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0)))) (value!21216 (apply!492 lt!65440 0))))) tp!89034))))

(declare-fun result!11128 () Bool)

(assert (=> tb!8183 (= result!11128 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0)))) (value!21216 (apply!492 lt!65440 0)))) e!119172))))

(assert (= tb!8183 b!193945))

(declare-fun m!203359 () Bool)

(assert (=> b!193945 m!203359))

(declare-fun m!203361 () Bool)

(assert (=> tb!8183 m!203361))

(assert (=> d!49042 t!29383))

(declare-fun b_and!13629 () Bool)

(assert (= b_and!13619 (and (=> t!29383 result!11128) b_and!13629)))

(declare-fun tb!8185 () Bool)

(declare-fun t!29385 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0))))) t!29385) tb!8185))

(declare-fun result!11130 () Bool)

(assert (= result!11130 result!11128))

(assert (=> d!49042 t!29385))

(declare-fun b_and!13631 () Bool)

(assert (= b_and!13623 (and (=> t!29385 result!11130) b_and!13631)))

(declare-fun tb!8187 () Bool)

(declare-fun t!29387 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0))))) t!29387) tb!8187))

(declare-fun result!11132 () Bool)

(assert (= result!11132 result!11128))

(assert (=> d!49042 t!29387))

(declare-fun b_and!13633 () Bool)

(assert (= b_and!13625 (and (=> t!29387 result!11132) b_and!13633)))

(declare-fun tb!8189 () Bool)

(declare-fun t!29389 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0))))) t!29389) tb!8189))

(declare-fun result!11134 () Bool)

(assert (= result!11134 result!11128))

(assert (=> d!49042 t!29389))

(declare-fun b_and!13635 () Bool)

(assert (= b_and!13627 (and (=> t!29389 result!11134) b_and!13635)))

(declare-fun t!29391 () Bool)

(declare-fun tb!8191 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0))))) t!29391) tb!8191))

(declare-fun result!11136 () Bool)

(assert (= result!11136 result!11128))

(assert (=> d!49042 t!29391))

(declare-fun b_and!13637 () Bool)

(assert (= b_and!13621 (and (=> t!29391 result!11136) b_and!13637)))

(declare-fun m!203363 () Bool)

(assert (=> d!49042 m!203363))

(declare-fun m!203365 () Bool)

(assert (=> d!49042 m!203365))

(assert (=> b!191656 d!49042))

(declare-fun d!49044 () Bool)

(assert (=> d!49044 (= (tail!385 (drop!163 lt!65819 0)) (t!28932 (drop!163 lt!65819 0)))))

(assert (=> b!191656 d!49044))

(declare-fun b!193946 () Bool)

(declare-fun e!119173 () Int)

(declare-fun call!8981 () Int)

(assert (=> b!193946 (= e!119173 call!8981)))

(declare-fun b!193947 () Bool)

(declare-fun e!119177 () Bool)

(declare-fun lt!67262 () List!3230)

(assert (=> b!193947 (= e!119177 (= (size!2570 lt!67262) e!119173))))

(declare-fun c!37130 () Bool)

(assert (=> b!193947 (= c!37130 (<= 0 0))))

(declare-fun bm!8976 () Bool)

(assert (=> bm!8976 (= call!8981 (size!2570 lt!65821))))

(declare-fun b!193948 () Bool)

(declare-fun e!119175 () Int)

(assert (=> b!193948 (= e!119175 0)))

(declare-fun d!49046 () Bool)

(assert (=> d!49046 e!119177))

(declare-fun res!88821 () Bool)

(assert (=> d!49046 (=> (not res!88821) (not e!119177))))

(assert (=> d!49046 (= res!88821 (= ((_ map implies) (content!431 lt!67262) (content!431 lt!65821)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!119174 () List!3230)

(assert (=> d!49046 (= lt!67262 e!119174)))

(declare-fun c!37127 () Bool)

(assert (=> d!49046 (= c!37127 ((_ is Nil!3220) lt!65821))))

(assert (=> d!49046 (= (drop!163 lt!65821 0) lt!67262)))

(declare-fun b!193949 () Bool)

(assert (=> b!193949 (= e!119175 (- call!8981 0))))

(declare-fun b!193950 () Bool)

(declare-fun e!119176 () List!3230)

(assert (=> b!193950 (= e!119174 e!119176)))

(declare-fun c!37128 () Bool)

(assert (=> b!193950 (= c!37128 (<= 0 0))))

(declare-fun b!193951 () Bool)

(assert (=> b!193951 (= e!119173 e!119175)))

(declare-fun c!37129 () Bool)

(assert (=> b!193951 (= c!37129 (>= 0 call!8981))))

(declare-fun b!193952 () Bool)

(assert (=> b!193952 (= e!119174 Nil!3220)))

(declare-fun b!193953 () Bool)

(assert (=> b!193953 (= e!119176 lt!65821)))

(declare-fun b!193954 () Bool)

(assert (=> b!193954 (= e!119176 (drop!163 (t!28932 lt!65821) (- 0 1)))))

(assert (= (and d!49046 c!37127) b!193952))

(assert (= (and d!49046 (not c!37127)) b!193950))

(assert (= (and b!193950 c!37128) b!193953))

(assert (= (and b!193950 (not c!37128)) b!193954))

(assert (= (and d!49046 res!88821) b!193947))

(assert (= (and b!193947 c!37130) b!193946))

(assert (= (and b!193947 (not c!37130)) b!193951))

(assert (= (and b!193951 c!37129) b!193948))

(assert (= (and b!193951 (not c!37129)) b!193949))

(assert (= (or b!193946 b!193951 b!193949) bm!8976))

(declare-fun m!203367 () Bool)

(assert (=> b!193947 m!203367))

(assert (=> bm!8976 m!203319))

(declare-fun m!203369 () Bool)

(assert (=> d!49046 m!203369))

(declare-fun m!203371 () Bool)

(assert (=> d!49046 m!203371))

(declare-fun m!203373 () Bool)

(assert (=> b!193954 m!203373))

(assert (=> b!191656 d!49046))

(declare-fun d!49048 () Bool)

(assert (=> d!49048 (= (head!682 (drop!163 lt!65821 0)) (h!8617 (drop!163 lt!65821 0)))))

(assert (=> b!191656 d!49048))

(declare-fun d!49050 () Bool)

(declare-fun lt!67268 () BalanceConc!2024)

(assert (=> d!49050 (= (list!1179 lt!67268) (printListTailRec!78 thiss!17480 (dropList!110 lt!65440 (+ 0 1)) (list!1179 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65440 0))))))))

(declare-fun e!119178 () BalanceConc!2024)

(assert (=> d!49050 (= lt!67268 e!119178)))

(declare-fun c!37131 () Bool)

(assert (=> d!49050 (= c!37131 (>= (+ 0 1) (size!2563 lt!65440)))))

(declare-fun e!119179 () Bool)

(assert (=> d!49050 e!119179))

(declare-fun res!88822 () Bool)

(assert (=> d!49050 (=> (not res!88822) (not e!119179))))

(assert (=> d!49050 (= res!88822 (>= (+ 0 1) 0))))

(assert (=> d!49050 (= (printTailRec!173 thiss!17480 lt!65440 (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65440 0)))) lt!67268)))

(declare-fun b!193955 () Bool)

(assert (=> b!193955 (= e!119179 (<= (+ 0 1) (size!2563 lt!65440)))))

(declare-fun b!193956 () Bool)

(assert (=> b!193956 (= e!119178 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65440 0))))))

(declare-fun b!193957 () Bool)

(assert (=> b!193957 (= e!119178 (printTailRec!173 thiss!17480 lt!65440 (+ 0 1 1) (++!770 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 lt!65440 0))) (charsOf!248 (apply!492 lt!65440 (+ 0 1))))))))

(declare-fun lt!67266 () List!3230)

(assert (=> b!193957 (= lt!67266 (list!1182 lt!65440))))

(declare-fun lt!67269 () Unit!3036)

(assert (=> b!193957 (= lt!67269 (lemmaDropApply!150 lt!67266 (+ 0 1)))))

(assert (=> b!193957 (= (head!682 (drop!163 lt!67266 (+ 0 1))) (apply!497 lt!67266 (+ 0 1)))))

(declare-fun lt!67265 () Unit!3036)

(assert (=> b!193957 (= lt!67265 lt!67269)))

(declare-fun lt!67264 () List!3230)

(assert (=> b!193957 (= lt!67264 (list!1182 lt!65440))))

(declare-fun lt!67267 () Unit!3036)

(assert (=> b!193957 (= lt!67267 (lemmaDropTail!142 lt!67264 (+ 0 1)))))

(assert (=> b!193957 (= (tail!385 (drop!163 lt!67264 (+ 0 1))) (drop!163 lt!67264 (+ 0 1 1)))))

(declare-fun lt!67263 () Unit!3036)

(assert (=> b!193957 (= lt!67263 lt!67267)))

(assert (= (and d!49050 res!88822) b!193955))

(assert (= (and d!49050 c!37131) b!193956))

(assert (= (and d!49050 (not c!37131)) b!193957))

(assert (=> d!49050 m!197759))

(assert (=> d!49050 m!197781))

(declare-fun m!203375 () Bool)

(assert (=> d!49050 m!203375))

(declare-fun m!203377 () Bool)

(assert (=> d!49050 m!203377))

(assert (=> d!49050 m!203375))

(declare-fun m!203379 () Bool)

(assert (=> d!49050 m!203379))

(assert (=> d!49050 m!203377))

(declare-fun m!203381 () Bool)

(assert (=> d!49050 m!203381))

(assert (=> b!193955 m!197759))

(declare-fun m!203383 () Bool)

(assert (=> b!193957 m!203383))

(declare-fun m!203385 () Bool)

(assert (=> b!193957 m!203385))

(assert (=> b!193957 m!197771))

(declare-fun m!203387 () Bool)

(assert (=> b!193957 m!203387))

(declare-fun m!203389 () Bool)

(assert (=> b!193957 m!203389))

(declare-fun m!203391 () Bool)

(assert (=> b!193957 m!203391))

(declare-fun m!203393 () Bool)

(assert (=> b!193957 m!203393))

(assert (=> b!193957 m!203391))

(declare-fun m!203395 () Bool)

(assert (=> b!193957 m!203395))

(declare-fun m!203397 () Bool)

(assert (=> b!193957 m!203397))

(assert (=> b!193957 m!197781))

(assert (=> b!193957 m!203393))

(assert (=> b!193957 m!203395))

(declare-fun m!203399 () Bool)

(assert (=> b!193957 m!203399))

(assert (=> b!193957 m!203383))

(declare-fun m!203401 () Bool)

(assert (=> b!193957 m!203401))

(declare-fun m!203403 () Bool)

(assert (=> b!193957 m!203403))

(assert (=> b!193957 m!203399))

(declare-fun m!203405 () Bool)

(assert (=> b!193957 m!203405))

(assert (=> b!191656 d!49050))

(declare-fun d!49052 () Bool)

(assert (=> d!49052 (= (head!682 (drop!163 lt!65821 0)) (apply!497 lt!65821 0))))

(declare-fun lt!67270 () Unit!3036)

(assert (=> d!49052 (= lt!67270 (choose!1947 lt!65821 0))))

(declare-fun e!119180 () Bool)

(assert (=> d!49052 e!119180))

(declare-fun res!88823 () Bool)

(assert (=> d!49052 (=> (not res!88823) (not e!119180))))

(assert (=> d!49052 (= res!88823 (>= 0 0))))

(assert (=> d!49052 (= (lemmaDropApply!150 lt!65821 0) lt!67270)))

(declare-fun b!193958 () Bool)

(assert (=> b!193958 (= e!119180 (< 0 (size!2570 lt!65821)))))

(assert (= (and d!49052 res!88823) b!193958))

(assert (=> d!49052 m!197767))

(assert (=> d!49052 m!197767))

(assert (=> d!49052 m!197769))

(assert (=> d!49052 m!197789))

(declare-fun m!203407 () Bool)

(assert (=> d!49052 m!203407))

(assert (=> b!193958 m!203319))

(assert (=> b!191656 d!49052))

(declare-fun d!49054 () Bool)

(assert (=> d!49054 (= (tail!385 (drop!163 lt!65819 0)) (drop!163 lt!65819 (+ 0 1)))))

(declare-fun lt!67271 () Unit!3036)

(assert (=> d!49054 (= lt!67271 (choose!1944 lt!65819 0))))

(declare-fun e!119181 () Bool)

(assert (=> d!49054 e!119181))

(declare-fun res!88824 () Bool)

(assert (=> d!49054 (=> (not res!88824) (not e!119181))))

(assert (=> d!49054 (= res!88824 (>= 0 0))))

(assert (=> d!49054 (= (lemmaDropTail!142 lt!65819 0) lt!67271)))

(declare-fun b!193959 () Bool)

(assert (=> b!193959 (= e!119181 (< 0 (size!2570 lt!65819)))))

(assert (= (and d!49054 res!88824) b!193959))

(assert (=> d!49054 m!197785))

(assert (=> d!49054 m!197785))

(assert (=> d!49054 m!197791))

(assert (=> d!49054 m!197787))

(declare-fun m!203409 () Bool)

(assert (=> d!49054 m!203409))

(assert (=> b!193959 m!203333))

(assert (=> b!191656 d!49054))

(declare-fun b!193960 () Bool)

(declare-fun e!119182 () Int)

(declare-fun call!8982 () Int)

(assert (=> b!193960 (= e!119182 call!8982)))

(declare-fun b!193961 () Bool)

(declare-fun e!119186 () Bool)

(declare-fun lt!67272 () List!3230)

(assert (=> b!193961 (= e!119186 (= (size!2570 lt!67272) e!119182))))

(declare-fun c!37135 () Bool)

(assert (=> b!193961 (= c!37135 (<= 0 0))))

(declare-fun bm!8977 () Bool)

(assert (=> bm!8977 (= call!8982 (size!2570 lt!65819))))

(declare-fun b!193962 () Bool)

(declare-fun e!119184 () Int)

(assert (=> b!193962 (= e!119184 0)))

(declare-fun d!49056 () Bool)

(assert (=> d!49056 e!119186))

(declare-fun res!88825 () Bool)

(assert (=> d!49056 (=> (not res!88825) (not e!119186))))

(assert (=> d!49056 (= res!88825 (= ((_ map implies) (content!431 lt!67272) (content!431 lt!65819)) ((as const (InoxSet Token!930)) true)))))

(declare-fun e!119183 () List!3230)

(assert (=> d!49056 (= lt!67272 e!119183)))

(declare-fun c!37132 () Bool)

(assert (=> d!49056 (= c!37132 ((_ is Nil!3220) lt!65819))))

(assert (=> d!49056 (= (drop!163 lt!65819 0) lt!67272)))

(declare-fun b!193963 () Bool)

(assert (=> b!193963 (= e!119184 (- call!8982 0))))

(declare-fun b!193964 () Bool)

(declare-fun e!119185 () List!3230)

(assert (=> b!193964 (= e!119183 e!119185)))

(declare-fun c!37133 () Bool)

(assert (=> b!193964 (= c!37133 (<= 0 0))))

(declare-fun b!193965 () Bool)

(assert (=> b!193965 (= e!119182 e!119184)))

(declare-fun c!37134 () Bool)

(assert (=> b!193965 (= c!37134 (>= 0 call!8982))))

(declare-fun b!193966 () Bool)

(assert (=> b!193966 (= e!119183 Nil!3220)))

(declare-fun b!193967 () Bool)

(assert (=> b!193967 (= e!119185 lt!65819)))

(declare-fun b!193968 () Bool)

(assert (=> b!193968 (= e!119185 (drop!163 (t!28932 lt!65819) (- 0 1)))))

(assert (= (and d!49056 c!37132) b!193966))

(assert (= (and d!49056 (not c!37132)) b!193964))

(assert (= (and b!193964 c!37133) b!193967))

(assert (= (and b!193964 (not c!37133)) b!193968))

(assert (= (and d!49056 res!88825) b!193961))

(assert (= (and b!193961 c!37135) b!193960))

(assert (= (and b!193961 (not c!37135)) b!193965))

(assert (= (and b!193965 c!37134) b!193962))

(assert (= (and b!193965 (not c!37134)) b!193963))

(assert (= (or b!193960 b!193965 b!193963) bm!8977))

(declare-fun m!203411 () Bool)

(assert (=> b!193961 m!203411))

(assert (=> bm!8977 m!203333))

(declare-fun m!203413 () Bool)

(assert (=> d!49056 m!203413))

(assert (=> d!49056 m!203337))

(declare-fun m!203415 () Bool)

(assert (=> b!193968 m!203415))

(assert (=> b!191656 d!49056))

(declare-fun lt!67273 () Bool)

(declare-fun d!49058 () Bool)

(assert (=> d!49058 (= lt!67273 (isEmpty!1609 (list!1179 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))))))))))

(assert (=> d!49058 (= lt!67273 (isEmpty!1616 (c!36425 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))))))))))

(assert (=> d!49058 (= (isEmpty!1608 (_2!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)))))) lt!67273)))

(declare-fun bs!19264 () Bool)

(assert (= bs!19264 d!49058))

(declare-fun m!203417 () Bool)

(assert (=> bs!19264 m!203417))

(assert (=> bs!19264 m!203417))

(declare-fun m!203419 () Bool)

(assert (=> bs!19264 m!203419))

(declare-fun m!203421 () Bool)

(assert (=> bs!19264 m!203421))

(assert (=> b!191587 d!49058))

(declare-fun b!193969 () Bool)

(declare-fun e!119187 () Bool)

(declare-fun lt!67274 () tuple2!3302)

(assert (=> b!193969 (= e!119187 (= (list!1179 (_2!1867 lt!67274)) (_2!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))))))))))

(declare-fun d!49060 () Bool)

(assert (=> d!49060 e!119187))

(declare-fun res!88826 () Bool)

(assert (=> d!49060 (=> (not res!88826) (not e!119187))))

(declare-fun e!119189 () Bool)

(assert (=> d!49060 (= res!88826 e!119189)))

(declare-fun c!37136 () Bool)

(assert (=> d!49060 (= c!37136 (> (size!2563 (_1!1867 lt!67274)) 0))))

(assert (=> d!49060 (= lt!67274 (lexTailRecV2!122 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))) (BalanceConc!2025 Empty!1008) (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))) (BalanceConc!2027 Empty!1009)))))

(assert (=> d!49060 (= (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)))) lt!67274)))

(declare-fun b!193970 () Bool)

(declare-fun res!88827 () Bool)

(assert (=> b!193970 (=> (not res!88827) (not e!119187))))

(assert (=> b!193970 (= res!88827 (= (list!1182 (_1!1867 lt!67274)) (_1!1871 (lexList!135 thiss!17480 rules!1920 (list!1179 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))))))))))

(declare-fun b!193971 () Bool)

(declare-fun e!119188 () Bool)

(assert (=> b!193971 (= e!119188 (not (isEmpty!1611 (_1!1867 lt!67274))))))

(declare-fun b!193972 () Bool)

(assert (=> b!193972 (= e!119189 (= (_2!1867 lt!67274) (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)))))))

(declare-fun b!193973 () Bool)

(assert (=> b!193973 (= e!119189 e!119188)))

(declare-fun res!88828 () Bool)

(assert (=> b!193973 (= res!88828 (< (size!2569 (_2!1867 lt!67274)) (size!2569 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))))))))

(assert (=> b!193973 (=> (not res!88828) (not e!119188))))

(assert (= (and d!49060 c!37136) b!193973))

(assert (= (and d!49060 (not c!37136)) b!193972))

(assert (= (and b!193973 res!88828) b!193971))

(assert (= (and d!49060 res!88826) b!193970))

(assert (= (and b!193970 res!88827) b!193969))

(declare-fun m!203423 () Bool)

(assert (=> d!49060 m!203423))

(assert (=> d!49060 m!197609))

(assert (=> d!49060 m!197609))

(declare-fun m!203425 () Bool)

(assert (=> d!49060 m!203425))

(declare-fun m!203427 () Bool)

(assert (=> b!193973 m!203427))

(assert (=> b!193973 m!197609))

(declare-fun m!203429 () Bool)

(assert (=> b!193973 m!203429))

(declare-fun m!203431 () Bool)

(assert (=> b!193971 m!203431))

(declare-fun m!203433 () Bool)

(assert (=> b!193970 m!203433))

(assert (=> b!193970 m!197609))

(declare-fun m!203435 () Bool)

(assert (=> b!193970 m!203435))

(assert (=> b!193970 m!203435))

(declare-fun m!203437 () Bool)

(assert (=> b!193970 m!203437))

(declare-fun m!203439 () Bool)

(assert (=> b!193969 m!203439))

(assert (=> b!193969 m!197609))

(assert (=> b!193969 m!203435))

(assert (=> b!193969 m!203435))

(assert (=> b!193969 m!203437))

(assert (=> b!191587 d!49060))

(assert (=> b!191587 d!48524))

(assert (=> b!191587 d!47622))

(declare-fun d!49062 () Bool)

(declare-fun e!119190 () Bool)

(assert (=> d!49062 e!119190))

(declare-fun res!88829 () Bool)

(assert (=> d!49062 (=> (not res!88829) (not e!119190))))

(declare-fun lt!67275 () List!3228)

(assert (=> d!49062 (= res!88829 (= (content!430 lt!67275) ((_ map or) (content!430 e!117785) (content!430 (ite c!36558 lt!65807 call!8805)))))))

(declare-fun e!119191 () List!3228)

(assert (=> d!49062 (= lt!67275 e!119191)))

(declare-fun c!37137 () Bool)

(assert (=> d!49062 (= c!37137 ((_ is Nil!3218) e!117785))))

(assert (=> d!49062 (= (++!768 e!117785 (ite c!36558 lt!65807 call!8805)) lt!67275)))

(declare-fun b!193974 () Bool)

(assert (=> b!193974 (= e!119191 (ite c!36558 lt!65807 call!8805))))

(declare-fun b!193976 () Bool)

(declare-fun res!88830 () Bool)

(assert (=> b!193976 (=> (not res!88830) (not e!119190))))

(assert (=> b!193976 (= res!88830 (= (size!2566 lt!67275) (+ (size!2566 e!117785) (size!2566 (ite c!36558 lt!65807 call!8805)))))))

(declare-fun b!193975 () Bool)

(assert (=> b!193975 (= e!119191 (Cons!3218 (h!8615 e!117785) (++!768 (t!28930 e!117785) (ite c!36558 lt!65807 call!8805))))))

(declare-fun b!193977 () Bool)

(assert (=> b!193977 (= e!119190 (or (not (= (ite c!36558 lt!65807 call!8805) Nil!3218)) (= lt!67275 e!117785)))))

(assert (= (and d!49062 c!37137) b!193974))

(assert (= (and d!49062 (not c!37137)) b!193975))

(assert (= (and d!49062 res!88829) b!193976))

(assert (= (and b!193976 res!88830) b!193977))

(declare-fun m!203441 () Bool)

(assert (=> d!49062 m!203441))

(declare-fun m!203443 () Bool)

(assert (=> d!49062 m!203443))

(declare-fun m!203445 () Bool)

(assert (=> d!49062 m!203445))

(declare-fun m!203447 () Bool)

(assert (=> b!193976 m!203447))

(declare-fun m!203449 () Bool)

(assert (=> b!193976 m!203449))

(declare-fun m!203451 () Bool)

(assert (=> b!193976 m!203451))

(declare-fun m!203453 () Bool)

(assert (=> b!193975 m!203453))

(assert (=> bm!8800 d!49062))

(declare-fun d!49064 () Bool)

(assert (=> d!49064 (= (isEmpty!1617 lt!65874) (not ((_ is Some!472) lt!65874)))))

(assert (=> d!47670 d!49064))

(declare-fun b!193980 () Bool)

(declare-fun e!119192 () Bool)

(assert (=> b!193980 (= e!119192 (isPrefix!289 (tail!386 lt!65412) (tail!386 lt!65412)))))

(declare-fun b!193978 () Bool)

(declare-fun e!119194 () Bool)

(assert (=> b!193978 (= e!119194 e!119192)))

(declare-fun res!88834 () Bool)

(assert (=> b!193978 (=> (not res!88834) (not e!119192))))

(assert (=> b!193978 (= res!88834 (not ((_ is Nil!3218) lt!65412)))))

(declare-fun b!193981 () Bool)

(declare-fun e!119193 () Bool)

(assert (=> b!193981 (= e!119193 (>= (size!2566 lt!65412) (size!2566 lt!65412)))))

(declare-fun b!193979 () Bool)

(declare-fun res!88833 () Bool)

(assert (=> b!193979 (=> (not res!88833) (not e!119192))))

(assert (=> b!193979 (= res!88833 (= (head!684 lt!65412) (head!684 lt!65412)))))

(declare-fun d!49066 () Bool)

(assert (=> d!49066 e!119193))

(declare-fun res!88832 () Bool)

(assert (=> d!49066 (=> res!88832 e!119193)))

(declare-fun lt!67276 () Bool)

(assert (=> d!49066 (= res!88832 (not lt!67276))))

(assert (=> d!49066 (= lt!67276 e!119194)))

(declare-fun res!88831 () Bool)

(assert (=> d!49066 (=> res!88831 e!119194)))

(assert (=> d!49066 (= res!88831 ((_ is Nil!3218) lt!65412))))

(assert (=> d!49066 (= (isPrefix!289 lt!65412 lt!65412) lt!67276)))

(assert (= (and d!49066 (not res!88831)) b!193978))

(assert (= (and b!193978 res!88834) b!193979))

(assert (= (and b!193979 res!88833) b!193980))

(assert (= (and d!49066 (not res!88832)) b!193981))

(declare-fun m!203455 () Bool)

(assert (=> b!193980 m!203455))

(assert (=> b!193980 m!203455))

(assert (=> b!193980 m!203455))

(assert (=> b!193980 m!203455))

(declare-fun m!203457 () Bool)

(assert (=> b!193980 m!203457))

(assert (=> b!193981 m!197339))

(assert (=> b!193981 m!197339))

(declare-fun m!203459 () Bool)

(assert (=> b!193979 m!203459))

(assert (=> b!193979 m!203459))

(assert (=> d!47670 d!49066))

(declare-fun d!49068 () Bool)

(assert (=> d!49068 (isPrefix!289 lt!65412 lt!65412)))

(declare-fun lt!67279 () Unit!3036)

(declare-fun choose!1951 (List!3228 List!3228) Unit!3036)

(assert (=> d!49068 (= lt!67279 (choose!1951 lt!65412 lt!65412))))

(assert (=> d!49068 (= (lemmaIsPrefixRefl!159 lt!65412 lt!65412) lt!67279)))

(declare-fun bs!19265 () Bool)

(assert (= bs!19265 d!49068))

(assert (=> bs!19265 m!197877))

(declare-fun m!203461 () Bool)

(assert (=> bs!19265 m!203461))

(assert (=> d!47670 d!49068))

(declare-fun d!49070 () Bool)

(assert (=> d!49070 true))

(declare-fun lt!67282 () Bool)

(declare-fun lambda!5923 () Int)

(declare-fun forall!679 (List!3229 Int) Bool)

(assert (=> d!49070 (= lt!67282 (forall!679 rules!1920 lambda!5923))))

(declare-fun e!119200 () Bool)

(assert (=> d!49070 (= lt!67282 e!119200)))

(declare-fun res!88839 () Bool)

(assert (=> d!49070 (=> res!88839 e!119200)))

(assert (=> d!49070 (= res!88839 (not ((_ is Cons!3219) rules!1920)))))

(assert (=> d!49070 (= (rulesValidInductive!148 thiss!17480 rules!1920) lt!67282)))

(declare-fun b!193986 () Bool)

(declare-fun e!119199 () Bool)

(assert (=> b!193986 (= e!119200 e!119199)))

(declare-fun res!88840 () Bool)

(assert (=> b!193986 (=> (not res!88840) (not e!119199))))

(assert (=> b!193986 (= res!88840 (ruleValid!66 thiss!17480 (h!8616 rules!1920)))))

(declare-fun b!193987 () Bool)

(assert (=> b!193987 (= e!119199 (rulesValidInductive!148 thiss!17480 (t!28931 rules!1920)))))

(assert (= (and d!49070 (not res!88839)) b!193986))

(assert (= (and b!193986 res!88840) b!193987))

(declare-fun m!203463 () Bool)

(assert (=> d!49070 m!203463))

(assert (=> b!193986 m!200109))

(assert (=> b!193987 m!203281))

(assert (=> d!47670 d!49070))

(declare-fun d!49072 () Bool)

(assert (=> d!49072 (= (isEmpty!1612 (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))) ((_ is Nil!3220) (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))))))

(assert (=> d!47608 d!49072))

(declare-fun d!49074 () Bool)

(assert (=> d!49074 (= (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413)))) (list!1186 (c!36427 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))))))

(declare-fun bs!19266 () Bool)

(assert (= bs!19266 d!49074))

(declare-fun m!203465 () Bool)

(assert (=> bs!19266 m!203465))

(assert (=> d!47608 d!49074))

(declare-fun d!49076 () Bool)

(declare-fun lt!67285 () Bool)

(assert (=> d!49076 (= lt!67285 (isEmpty!1612 (list!1186 (c!36427 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413)))))))))

(assert (=> d!49076 (= lt!67285 (= (size!2571 (c!36427 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))) 0))))

(assert (=> d!49076 (= (isEmpty!1620 (c!36427 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))) lt!67285)))

(declare-fun bs!19267 () Bool)

(assert (= bs!19267 d!49076))

(assert (=> bs!19267 m!203465))

(assert (=> bs!19267 m!203465))

(declare-fun m!203467 () Bool)

(assert (=> bs!19267 m!203467))

(declare-fun m!203469 () Bool)

(assert (=> bs!19267 m!203469))

(assert (=> d!47608 d!49076))

(declare-fun d!49078 () Bool)

(assert (=> d!49078 (= (isDefined!323 lt!65874) (not (isEmpty!1617 lt!65874)))))

(declare-fun bs!19268 () Bool)

(assert (= bs!19268 d!49078))

(assert (=> bs!19268 m!197875))

(assert (=> b!191690 d!49078))

(declare-fun bs!19269 () Bool)

(declare-fun d!49080 () Bool)

(assert (= bs!19269 (and d!49080 d!48228)))

(declare-fun lambda!5924 () Int)

(assert (=> bs!19269 (= (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (= lambda!5924 lambda!5897))))

(assert (=> d!49080 true))

(assert (=> d!49080 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465))))) (dynLambda!1380 order!2043 lambda!5924))))

(assert (=> d!49080 (= (equivClasses!184 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465))))) (Forall2!116 lambda!5924))))

(declare-fun bs!19270 () Bool)

(assert (= bs!19270 d!49080))

(declare-fun m!203471 () Bool)

(assert (=> bs!19270 m!203471))

(assert (=> b!191854 d!49080))

(declare-fun b!193991 () Bool)

(declare-fun res!88843 () Bool)

(declare-fun e!119201 () Bool)

(assert (=> b!193991 (=> (not res!88843) (not e!119201))))

(assert (=> b!193991 (= res!88843 (<= (height!101 (++!771 (c!36425 call!8799) (c!36425 lt!65802))) (+ (max!0 (height!101 (c!36425 call!8799)) (height!101 (c!36425 lt!65802))) 1)))))

(declare-fun lt!67286 () BalanceConc!2024)

(declare-fun b!193993 () Bool)

(assert (=> b!193993 (= e!119201 (= (list!1179 lt!67286) (++!768 (list!1179 call!8799) (list!1179 lt!65802))))))

(declare-fun b!193992 () Bool)

(declare-fun res!88844 () Bool)

(assert (=> b!193992 (=> (not res!88844) (not e!119201))))

(assert (=> b!193992 (= res!88844 (>= (height!101 (++!771 (c!36425 call!8799) (c!36425 lt!65802))) (max!0 (height!101 (c!36425 call!8799)) (height!101 (c!36425 lt!65802)))))))

(declare-fun d!49082 () Bool)

(assert (=> d!49082 e!119201))

(declare-fun res!88841 () Bool)

(assert (=> d!49082 (=> (not res!88841) (not e!119201))))

(assert (=> d!49082 (= res!88841 (appendAssocInst!34 (c!36425 call!8799) (c!36425 lt!65802)))))

(assert (=> d!49082 (= lt!67286 (BalanceConc!2025 (++!771 (c!36425 call!8799) (c!36425 lt!65802))))))

(assert (=> d!49082 (= (++!770 call!8799 lt!65802) lt!67286)))

(declare-fun b!193990 () Bool)

(declare-fun res!88842 () Bool)

(assert (=> b!193990 (=> (not res!88842) (not e!119201))))

(assert (=> b!193990 (= res!88842 (isBalanced!266 (++!771 (c!36425 call!8799) (c!36425 lt!65802))))))

(assert (= (and d!49082 res!88841) b!193990))

(assert (= (and b!193990 res!88842) b!193991))

(assert (= (and b!193991 res!88843) b!193992))

(assert (= (and b!193992 res!88844) b!193993))

(declare-fun m!203473 () Bool)

(assert (=> b!193993 m!203473))

(declare-fun m!203475 () Bool)

(assert (=> b!193993 m!203475))

(assert (=> b!193993 m!197677))

(assert (=> b!193993 m!203475))

(assert (=> b!193993 m!197677))

(declare-fun m!203477 () Bool)

(assert (=> b!193993 m!203477))

(declare-fun m!203479 () Bool)

(assert (=> b!193990 m!203479))

(assert (=> b!193990 m!203479))

(declare-fun m!203481 () Bool)

(assert (=> b!193990 m!203481))

(declare-fun m!203483 () Bool)

(assert (=> b!193992 m!203483))

(assert (=> b!193992 m!201875))

(declare-fun m!203485 () Bool)

(assert (=> b!193992 m!203485))

(assert (=> b!193992 m!203479))

(declare-fun m!203487 () Bool)

(assert (=> b!193992 m!203487))

(assert (=> b!193992 m!203483))

(assert (=> b!193992 m!203479))

(assert (=> b!193992 m!201875))

(assert (=> b!193991 m!203483))

(assert (=> b!193991 m!201875))

(assert (=> b!193991 m!203485))

(assert (=> b!193991 m!203479))

(assert (=> b!193991 m!203487))

(assert (=> b!193991 m!203483))

(assert (=> b!193991 m!203479))

(assert (=> b!193991 m!201875))

(declare-fun m!203489 () Bool)

(assert (=> d!49082 m!203489))

(assert (=> d!49082 m!203479))

(assert (=> b!191589 d!49082))

(assert (=> b!191430 d!48472))

(assert (=> b!191430 d!48102))

(assert (=> b!191430 d!48106))

(assert (=> b!191430 d!48470))

(assert (=> b!191430 d!48110))

(declare-fun d!49084 () Bool)

(assert (=> d!49084 (= (get!938 (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (v!13983 (maxPrefix!209 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(assert (=> b!191841 d!49084))

(assert (=> b!191841 d!48796))

(assert (=> b!191841 d!47638))

(assert (=> b!191841 d!47408))

(declare-fun b!193994 () Bool)

(declare-fun e!119203 () Bool)

(declare-fun e!119204 () Bool)

(assert (=> b!193994 (= e!119203 e!119204)))

(declare-fun res!88848 () Bool)

(assert (=> b!193994 (=> (not res!88848) (not e!119204))))

(declare-fun lt!67289 () Option!473)

(assert (=> b!193994 (= res!88848 (matchR!155 (regex!593 (h!8616 rules!1920)) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67289))))))))

(declare-fun d!49086 () Bool)

(assert (=> d!49086 e!119203))

(declare-fun res!88851 () Bool)

(assert (=> d!49086 (=> res!88851 e!119203)))

(assert (=> d!49086 (= res!88851 (isEmpty!1617 lt!67289))))

(declare-fun e!119202 () Option!473)

(assert (=> d!49086 (= lt!67289 e!119202)))

(declare-fun c!37138 () Bool)

(declare-fun lt!67287 () tuple2!3316)

(assert (=> d!49086 (= c!37138 (isEmpty!1609 (_1!1874 lt!67287)))))

(assert (=> d!49086 (= lt!67287 (findLongestMatch!37 (regex!593 (h!8616 rules!1920)) lt!65430))))

(assert (=> d!49086 (ruleValid!66 thiss!17480 (h!8616 rules!1920))))

(assert (=> d!49086 (= (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) lt!65430) lt!67289)))

(declare-fun b!193995 () Bool)

(declare-fun res!88846 () Bool)

(assert (=> b!193995 (=> (not res!88846) (not e!119204))))

(assert (=> b!193995 (= res!88846 (< (size!2566 (_2!1869 (get!938 lt!67289))) (size!2566 lt!65430)))))

(declare-fun b!193996 () Bool)

(assert (=> b!193996 (= e!119202 (Some!472 (tuple2!3307 (Token!931 (apply!496 (transformation!593 (h!8616 rules!1920)) (seqFromList!563 (_1!1874 lt!67287))) (h!8616 rules!1920) (size!2569 (seqFromList!563 (_1!1874 lt!67287))) (_1!1874 lt!67287)) (_2!1874 lt!67287))))))

(declare-fun lt!67290 () Unit!3036)

(assert (=> b!193996 (= lt!67290 (longestMatchIsAcceptedByMatchOrIsEmpty!40 (regex!593 (h!8616 rules!1920)) lt!65430))))

(declare-fun res!88849 () Bool)

(assert (=> b!193996 (= res!88849 (isEmpty!1609 (_1!1874 (findLongestMatchInner!56 (regex!593 (h!8616 rules!1920)) Nil!3218 (size!2566 Nil!3218) lt!65430 lt!65430 (size!2566 lt!65430)))))))

(declare-fun e!119205 () Bool)

(assert (=> b!193996 (=> res!88849 e!119205)))

(assert (=> b!193996 e!119205))

(declare-fun lt!67288 () Unit!3036)

(assert (=> b!193996 (= lt!67288 lt!67290)))

(declare-fun lt!67291 () Unit!3036)

(assert (=> b!193996 (= lt!67291 (lemmaSemiInverse!35 (transformation!593 (h!8616 rules!1920)) (seqFromList!563 (_1!1874 lt!67287))))))

(declare-fun b!193997 () Bool)

(declare-fun res!88847 () Bool)

(assert (=> b!193997 (=> (not res!88847) (not e!119204))))

(assert (=> b!193997 (= res!88847 (= (value!21216 (_1!1869 (get!938 lt!67289))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!67289)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!67289)))))))))

(declare-fun b!193998 () Bool)

(assert (=> b!193998 (= e!119205 (matchR!155 (regex!593 (h!8616 rules!1920)) (_1!1874 (findLongestMatchInner!56 (regex!593 (h!8616 rules!1920)) Nil!3218 (size!2566 Nil!3218) lt!65430 lt!65430 (size!2566 lt!65430)))))))

(declare-fun b!193999 () Bool)

(assert (=> b!193999 (= e!119202 None!472)))

(declare-fun b!194000 () Bool)

(declare-fun res!88845 () Bool)

(assert (=> b!194000 (=> (not res!88845) (not e!119204))))

(assert (=> b!194000 (= res!88845 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67289)))) (_2!1869 (get!938 lt!67289))) lt!65430))))

(declare-fun b!194001 () Bool)

(declare-fun res!88850 () Bool)

(assert (=> b!194001 (=> (not res!88850) (not e!119204))))

(assert (=> b!194001 (= res!88850 (= (rule!1108 (_1!1869 (get!938 lt!67289))) (h!8616 rules!1920)))))

(declare-fun b!194002 () Bool)

(assert (=> b!194002 (= e!119204 (= (size!2562 (_1!1869 (get!938 lt!67289))) (size!2566 (originalCharacters!636 (_1!1869 (get!938 lt!67289))))))))

(assert (= (and d!49086 c!37138) b!193999))

(assert (= (and d!49086 (not c!37138)) b!193996))

(assert (= (and b!193996 (not res!88849)) b!193998))

(assert (= (and d!49086 (not res!88851)) b!193994))

(assert (= (and b!193994 res!88848) b!194000))

(assert (= (and b!194000 res!88845) b!193995))

(assert (= (and b!193995 res!88846) b!194001))

(assert (= (and b!194001 res!88850) b!193997))

(assert (= (and b!193997 res!88847) b!194002))

(assert (=> b!193998 m!200049))

(assert (=> b!193998 m!196739))

(assert (=> b!193998 m!200049))

(assert (=> b!193998 m!196739))

(declare-fun m!203491 () Bool)

(assert (=> b!193998 m!203491))

(declare-fun m!203493 () Bool)

(assert (=> b!193998 m!203493))

(declare-fun m!203495 () Bool)

(assert (=> b!193995 m!203495))

(declare-fun m!203497 () Bool)

(assert (=> b!193995 m!203497))

(assert (=> b!193995 m!196739))

(assert (=> b!194000 m!203495))

(declare-fun m!203499 () Bool)

(assert (=> b!194000 m!203499))

(assert (=> b!194000 m!203499))

(declare-fun m!203501 () Bool)

(assert (=> b!194000 m!203501))

(assert (=> b!194000 m!203501))

(declare-fun m!203503 () Bool)

(assert (=> b!194000 m!203503))

(assert (=> b!193997 m!203495))

(declare-fun m!203505 () Bool)

(assert (=> b!193997 m!203505))

(assert (=> b!193997 m!203505))

(declare-fun m!203507 () Bool)

(assert (=> b!193997 m!203507))

(assert (=> b!194002 m!203495))

(declare-fun m!203509 () Bool)

(assert (=> b!194002 m!203509))

(assert (=> b!193996 m!200049))

(declare-fun m!203511 () Bool)

(assert (=> b!193996 m!203511))

(assert (=> b!193996 m!196739))

(declare-fun m!203513 () Bool)

(assert (=> b!193996 m!203513))

(declare-fun m!203515 () Bool)

(assert (=> b!193996 m!203515))

(assert (=> b!193996 m!200049))

(assert (=> b!193996 m!196739))

(assert (=> b!193996 m!203491))

(assert (=> b!193996 m!203513))

(declare-fun m!203517 () Bool)

(assert (=> b!193996 m!203517))

(assert (=> b!193996 m!203513))

(assert (=> b!193996 m!203513))

(declare-fun m!203519 () Bool)

(assert (=> b!193996 m!203519))

(declare-fun m!203521 () Bool)

(assert (=> b!193996 m!203521))

(assert (=> b!193994 m!203495))

(assert (=> b!193994 m!203499))

(assert (=> b!193994 m!203499))

(assert (=> b!193994 m!203501))

(assert (=> b!193994 m!203501))

(declare-fun m!203523 () Bool)

(assert (=> b!193994 m!203523))

(declare-fun m!203525 () Bool)

(assert (=> d!49086 m!203525))

(declare-fun m!203527 () Bool)

(assert (=> d!49086 m!203527))

(declare-fun m!203529 () Bool)

(assert (=> d!49086 m!203529))

(assert (=> d!49086 m!200109))

(assert (=> b!194001 m!203495))

(assert (=> bm!8729 d!49086))

(declare-fun d!49088 () Bool)

(declare-fun nullableFct!35 (Regex!817) Bool)

(assert (=> d!49088 (= (nullable!128 (regex!593 (rule!1108 (h!8617 tokens!465)))) (nullableFct!35 (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun bs!19271 () Bool)

(assert (= bs!19271 d!49088))

(declare-fun m!203531 () Bool)

(assert (=> bs!19271 m!203531))

(assert (=> b!191470 d!49088))

(declare-fun d!49090 () Bool)

(declare-fun e!119206 () Bool)

(assert (=> d!49090 e!119206))

(declare-fun res!88852 () Bool)

(assert (=> d!49090 (=> (not res!88852) (not e!119206))))

(declare-fun lt!67292 () List!3228)

(assert (=> d!49090 (= res!88852 (= (content!430 lt!67292) ((_ map or) (content!430 call!8767) (content!430 lt!65671))))))

(declare-fun e!119207 () List!3228)

(assert (=> d!49090 (= lt!67292 e!119207)))

(declare-fun c!37139 () Bool)

(assert (=> d!49090 (= c!37139 ((_ is Nil!3218) call!8767))))

(assert (=> d!49090 (= (++!768 call!8767 lt!65671) lt!67292)))

(declare-fun b!194003 () Bool)

(assert (=> b!194003 (= e!119207 lt!65671)))

(declare-fun b!194005 () Bool)

(declare-fun res!88853 () Bool)

(assert (=> b!194005 (=> (not res!88853) (not e!119206))))

(assert (=> b!194005 (= res!88853 (= (size!2566 lt!67292) (+ (size!2566 call!8767) (size!2566 lt!65671))))))

(declare-fun b!194004 () Bool)

(assert (=> b!194004 (= e!119207 (Cons!3218 (h!8615 call!8767) (++!768 (t!28930 call!8767) lt!65671)))))

(declare-fun b!194006 () Bool)

(assert (=> b!194006 (= e!119206 (or (not (= lt!65671 Nil!3218)) (= lt!67292 call!8767)))))

(assert (= (and d!49090 c!37139) b!194003))

(assert (= (and d!49090 (not c!37139)) b!194004))

(assert (= (and d!49090 res!88852) b!194005))

(assert (= (and b!194005 res!88853) b!194006))

(declare-fun m!203533 () Bool)

(assert (=> d!49090 m!203533))

(declare-fun m!203535 () Bool)

(assert (=> d!49090 m!203535))

(declare-fun m!203537 () Bool)

(assert (=> d!49090 m!203537))

(declare-fun m!203539 () Bool)

(assert (=> b!194005 m!203539))

(declare-fun m!203541 () Bool)

(assert (=> b!194005 m!203541))

(declare-fun m!203543 () Bool)

(assert (=> b!194005 m!203543))

(declare-fun m!203545 () Bool)

(assert (=> b!194004 m!203545))

(assert (=> b!191368 d!49090))

(declare-fun d!49092 () Bool)

(assert (=> d!49092 (= lt!65412 (_2!1869 lt!65428))))

(assert (=> d!49092 true))

(declare-fun _$63!531 () Unit!3036)

(assert (=> d!49092 (= (choose!1941 lt!65413 lt!65412 lt!65413 (_2!1869 lt!65428) lt!65430) _$63!531)))

(assert (=> d!47734 d!49092))

(declare-fun b!194009 () Bool)

(declare-fun e!119208 () Bool)

(assert (=> b!194009 (= e!119208 (isPrefix!289 (tail!386 lt!65413) (tail!386 lt!65430)))))

(declare-fun b!194007 () Bool)

(declare-fun e!119210 () Bool)

(assert (=> b!194007 (= e!119210 e!119208)))

(declare-fun res!88857 () Bool)

(assert (=> b!194007 (=> (not res!88857) (not e!119208))))

(assert (=> b!194007 (= res!88857 (not ((_ is Nil!3218) lt!65430)))))

(declare-fun b!194010 () Bool)

(declare-fun e!119209 () Bool)

(assert (=> b!194010 (= e!119209 (>= (size!2566 lt!65430) (size!2566 lt!65413)))))

(declare-fun b!194008 () Bool)

(declare-fun res!88856 () Bool)

(assert (=> b!194008 (=> (not res!88856) (not e!119208))))

(assert (=> b!194008 (= res!88856 (= (head!684 lt!65413) (head!684 lt!65430)))))

(declare-fun d!49094 () Bool)

(assert (=> d!49094 e!119209))

(declare-fun res!88855 () Bool)

(assert (=> d!49094 (=> res!88855 e!119209)))

(declare-fun lt!67293 () Bool)

(assert (=> d!49094 (= res!88855 (not lt!67293))))

(assert (=> d!49094 (= lt!67293 e!119210)))

(declare-fun res!88854 () Bool)

(assert (=> d!49094 (=> res!88854 e!119210)))

(assert (=> d!49094 (= res!88854 ((_ is Nil!3218) lt!65413))))

(assert (=> d!49094 (= (isPrefix!289 lt!65413 lt!65430) lt!67293)))

(assert (= (and d!49094 (not res!88854)) b!194007))

(assert (= (and b!194007 res!88857) b!194008))

(assert (= (and b!194008 res!88856) b!194009))

(assert (= (and d!49094 (not res!88855)) b!194010))

(assert (=> b!194009 m!197423))

(declare-fun m!203547 () Bool)

(assert (=> b!194009 m!203547))

(assert (=> b!194009 m!197423))

(assert (=> b!194009 m!203547))

(declare-fun m!203549 () Bool)

(assert (=> b!194009 m!203549))

(assert (=> b!194010 m!196739))

(assert (=> b!194010 m!197161))

(assert (=> b!194008 m!197419))

(declare-fun m!203551 () Bool)

(assert (=> b!194008 m!203551))

(assert (=> d!47734 d!49094))

(declare-fun d!49096 () Bool)

(assert (=> d!49096 (= (list!1179 (_2!1867 lt!65740)) (list!1183 (c!36425 (_2!1867 lt!65740))))))

(declare-fun bs!19272 () Bool)

(assert (= bs!19272 d!49096))

(declare-fun m!203553 () Bool)

(assert (=> bs!19272 m!203553))

(assert (=> b!191512 d!49096))

(assert (=> b!191512 d!48122))

(assert (=> b!191512 d!48162))

(declare-fun d!49098 () Bool)

(assert (=> d!49098 (= (inv!4037 (tag!771 (rule!1108 (h!8617 (t!28932 tokens!465))))) (= (mod (str.len (value!21215 (tag!771 (rule!1108 (h!8617 (t!28932 tokens!465)))))) 2) 0))))

(assert (=> b!191890 d!49098))

(declare-fun d!49100 () Bool)

(declare-fun res!88858 () Bool)

(declare-fun e!119211 () Bool)

(assert (=> d!49100 (=> (not res!88858) (not e!119211))))

(assert (=> d!49100 (= res!88858 (semiInverseModEq!201 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toValue!1264 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))))))

(assert (=> d!49100 (= (inv!4040 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) e!119211)))

(declare-fun b!194011 () Bool)

(assert (=> b!194011 (= e!119211 (equivClasses!184 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toValue!1264 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))))))

(assert (= (and d!49100 res!88858) b!194011))

(declare-fun m!203555 () Bool)

(assert (=> d!49100 m!203555))

(declare-fun m!203557 () Bool)

(assert (=> b!194011 m!203557))

(assert (=> b!191890 d!49100))

(declare-fun d!49102 () Bool)

(assert (=> d!49102 (= (isEmpty!1617 lt!65429) (not ((_ is Some!472) lt!65429)))))

(assert (=> d!47416 d!49102))

(declare-fun bs!19273 () Bool)

(declare-fun d!49104 () Bool)

(assert (= bs!19273 (and d!49104 b!193312)))

(declare-fun lambda!5925 () Int)

(assert (=> bs!19273 (= (and (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (h!8616 rules!1920))))) (= lambda!5925 lambda!5911))))

(declare-fun bs!19274 () Bool)

(assert (= bs!19274 (and d!49104 d!48722)))

(assert (=> bs!19274 (= (and (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (h!8616 rules!1920))))) (= lambda!5925 lambda!5917))))

(assert (=> d!49104 true))

(assert (=> d!49104 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) (dynLambda!1381 order!2045 lambda!5925))))

(assert (=> d!49104 true))

(assert (=> d!49104 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465))))) (dynLambda!1381 order!2045 lambda!5925))))

(assert (=> d!49104 (= (semiInverseModEq!201 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465))))) (Forall!140 lambda!5925))))

(declare-fun bs!19275 () Bool)

(assert (= bs!19275 d!49104))

(declare-fun m!203559 () Bool)

(assert (=> bs!19275 m!203559))

(assert (=> d!47740 d!49104))

(declare-fun d!49106 () Bool)

(assert (=> d!49106 (isPrefix!289 lt!65713 lt!65714)))

(declare-fun lt!67294 () Unit!3036)

(assert (=> d!49106 (= lt!67294 (choose!1951 lt!65713 lt!65714))))

(assert (=> d!49106 (= (lemmaIsPrefixRefl!159 lt!65713 lt!65714) lt!67294)))

(declare-fun bs!19276 () Bool)

(assert (= bs!19276 d!49106))

(assert (=> bs!19276 m!197399))

(declare-fun m!203561 () Bool)

(assert (=> bs!19276 m!203561))

(assert (=> d!47562 d!49106))

(assert (=> d!47562 d!48472))

(assert (=> d!47562 d!49020))

(declare-fun d!49108 () Bool)

(assert (=> d!49108 (= (isDefined!323 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))) (not (isEmpty!1617 (maxPrefixZipper!62 thiss!17480 rules!1920 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))))

(declare-fun bs!19277 () Bool)

(assert (= bs!19277 d!49108))

(assert (=> bs!19277 m!197391))

(declare-fun m!203563 () Bool)

(assert (=> bs!19277 m!203563))

(assert (=> d!47562 d!49108))

(assert (=> d!47562 d!48110))

(assert (=> d!47562 d!49070))

(declare-fun b!194014 () Bool)

(declare-fun e!119212 () Bool)

(assert (=> b!194014 (= e!119212 (isPrefix!289 (tail!386 lt!65713) (tail!386 lt!65714)))))

(declare-fun b!194012 () Bool)

(declare-fun e!119214 () Bool)

(assert (=> b!194012 (= e!119214 e!119212)))

(declare-fun res!88862 () Bool)

(assert (=> b!194012 (=> (not res!88862) (not e!119212))))

(assert (=> b!194012 (= res!88862 (not ((_ is Nil!3218) lt!65714)))))

(declare-fun b!194015 () Bool)

(declare-fun e!119213 () Bool)

(assert (=> b!194015 (= e!119213 (>= (size!2566 lt!65714) (size!2566 lt!65713)))))

(declare-fun b!194013 () Bool)

(declare-fun res!88861 () Bool)

(assert (=> b!194013 (=> (not res!88861) (not e!119212))))

(assert (=> b!194013 (= res!88861 (= (head!684 lt!65713) (head!684 lt!65714)))))

(declare-fun d!49110 () Bool)

(assert (=> d!49110 e!119213))

(declare-fun res!88860 () Bool)

(assert (=> d!49110 (=> res!88860 e!119213)))

(declare-fun lt!67295 () Bool)

(assert (=> d!49110 (= res!88860 (not lt!67295))))

(assert (=> d!49110 (= lt!67295 e!119214)))

(declare-fun res!88859 () Bool)

(assert (=> d!49110 (=> res!88859 e!119214)))

(assert (=> d!49110 (= res!88859 ((_ is Nil!3218) lt!65713))))

(assert (=> d!49110 (= (isPrefix!289 lt!65713 lt!65714) lt!67295)))

(assert (= (and d!49110 (not res!88859)) b!194012))

(assert (= (and b!194012 res!88862) b!194013))

(assert (= (and b!194013 res!88861) b!194014))

(assert (= (and d!49110 (not res!88860)) b!194015))

(declare-fun m!203565 () Bool)

(assert (=> b!194014 m!203565))

(declare-fun m!203567 () Bool)

(assert (=> b!194014 m!203567))

(assert (=> b!194014 m!203565))

(assert (=> b!194014 m!203567))

(declare-fun m!203569 () Bool)

(assert (=> b!194014 m!203569))

(declare-fun m!203571 () Bool)

(assert (=> b!194015 m!203571))

(declare-fun m!203573 () Bool)

(assert (=> b!194015 m!203573))

(declare-fun m!203575 () Bool)

(assert (=> b!194013 m!203575))

(declare-fun m!203577 () Bool)

(assert (=> b!194013 m!203577))

(assert (=> d!47562 d!49110))

(declare-fun b!194016 () Bool)

(declare-fun e!119215 () Bool)

(declare-fun e!119216 () Bool)

(assert (=> b!194016 (= e!119215 e!119216)))

(declare-fun res!88864 () Bool)

(assert (=> b!194016 (=> (not res!88864) (not e!119216))))

(assert (=> b!194016 (= res!88864 (<= (- 1) (- (height!103 (left!2548 (c!36427 lt!65785))) (height!103 (right!2878 (c!36427 lt!65785))))))))

(declare-fun d!49112 () Bool)

(declare-fun res!88868 () Bool)

(assert (=> d!49112 (=> res!88868 e!119215)))

(assert (=> d!49112 (= res!88868 (not ((_ is Node!1009) (c!36427 lt!65785))))))

(assert (=> d!49112 (= (isBalanced!264 (c!36427 lt!65785)) e!119215)))

(declare-fun b!194017 () Bool)

(declare-fun res!88863 () Bool)

(assert (=> b!194017 (=> (not res!88863) (not e!119216))))

(assert (=> b!194017 (= res!88863 (isBalanced!264 (left!2548 (c!36427 lt!65785))))))

(declare-fun b!194018 () Bool)

(declare-fun res!88866 () Bool)

(assert (=> b!194018 (=> (not res!88866) (not e!119216))))

(assert (=> b!194018 (= res!88866 (<= (- (height!103 (left!2548 (c!36427 lt!65785))) (height!103 (right!2878 (c!36427 lt!65785)))) 1))))

(declare-fun b!194019 () Bool)

(declare-fun res!88865 () Bool)

(assert (=> b!194019 (=> (not res!88865) (not e!119216))))

(assert (=> b!194019 (= res!88865 (isBalanced!264 (right!2878 (c!36427 lt!65785))))))

(declare-fun b!194020 () Bool)

(assert (=> b!194020 (= e!119216 (not (isEmpty!1620 (right!2878 (c!36427 lt!65785)))))))

(declare-fun b!194021 () Bool)

(declare-fun res!88867 () Bool)

(assert (=> b!194021 (=> (not res!88867) (not e!119216))))

(assert (=> b!194021 (= res!88867 (not (isEmpty!1620 (left!2548 (c!36427 lt!65785)))))))

(assert (= (and d!49112 (not res!88868)) b!194016))

(assert (= (and b!194016 res!88864) b!194018))

(assert (= (and b!194018 res!88866) b!194017))

(assert (= (and b!194017 res!88863) b!194019))

(assert (= (and b!194019 res!88865) b!194021))

(assert (= (and b!194021 res!88867) b!194020))

(declare-fun m!203579 () Bool)

(assert (=> b!194019 m!203579))

(declare-fun m!203581 () Bool)

(assert (=> b!194016 m!203581))

(declare-fun m!203583 () Bool)

(assert (=> b!194016 m!203583))

(declare-fun m!203585 () Bool)

(assert (=> b!194021 m!203585))

(declare-fun m!203587 () Bool)

(assert (=> b!194020 m!203587))

(declare-fun m!203589 () Bool)

(assert (=> b!194017 m!203589))

(assert (=> b!194018 m!203581))

(assert (=> b!194018 m!203583))

(assert (=> b!191561 d!49112))

(declare-fun d!49114 () Bool)

(assert (=> d!49114 (= (list!1182 lt!65889) (list!1186 (c!36427 lt!65889)))))

(declare-fun bs!19278 () Bool)

(assert (= bs!19278 d!49114))

(declare-fun m!203591 () Bool)

(assert (=> bs!19278 m!203591))

(assert (=> d!47692 d!49114))

(declare-fun d!49116 () Bool)

(declare-fun e!119219 () Bool)

(assert (=> d!49116 e!119219))

(declare-fun res!88871 () Bool)

(assert (=> d!49116 (=> (not res!88871) (not e!119219))))

(declare-fun lt!67298 () BalanceConc!2026)

(assert (=> d!49116 (= res!88871 (= (list!1182 lt!67298) (Cons!3220 separatorToken!170 Nil!3220)))))

(declare-fun choose!1952 (Token!930) BalanceConc!2026)

(assert (=> d!49116 (= lt!67298 (choose!1952 separatorToken!170))))

(assert (=> d!49116 (= (singleton!59 separatorToken!170) lt!67298)))

(declare-fun b!194024 () Bool)

(assert (=> b!194024 (= e!119219 (isBalanced!264 (c!36427 lt!67298)))))

(assert (= (and d!49116 res!88871) b!194024))

(declare-fun m!203593 () Bool)

(assert (=> d!49116 m!203593))

(declare-fun m!203595 () Bool)

(assert (=> d!49116 m!203595))

(declare-fun m!203597 () Bool)

(assert (=> b!194024 m!203597))

(assert (=> d!47692 d!49116))

(declare-fun d!49118 () Bool)

(declare-fun c!37140 () Bool)

(assert (=> d!49118 (= c!37140 ((_ is Nil!3218) lt!65725))))

(declare-fun e!119220 () (InoxSet C!2556))

(assert (=> d!49118 (= (content!430 lt!65725) e!119220)))

(declare-fun b!194025 () Bool)

(assert (=> b!194025 (= e!119220 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!194026 () Bool)

(assert (=> b!194026 (= e!119220 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65725) true) (content!430 (t!28930 lt!65725))))))

(assert (= (and d!49118 c!37140) b!194025))

(assert (= (and d!49118 (not c!37140)) b!194026))

(declare-fun m!203599 () Bool)

(assert (=> b!194026 m!203599))

(declare-fun m!203601 () Bool)

(assert (=> b!194026 m!203601))

(assert (=> d!47580 d!49118))

(assert (=> d!47580 d!48116))

(assert (=> d!47580 d!48548))

(assert (=> d!47626 d!48252))

(declare-fun b!194045 () Bool)

(declare-fun res!88885 () Bool)

(declare-fun e!119235 () Bool)

(assert (=> b!194045 (=> res!88885 e!119235)))

(assert (=> b!194045 (= res!88885 (not ((_ is Concat!1433) (regex!593 lt!65423))))))

(declare-fun e!119238 () Bool)

(assert (=> b!194045 (= e!119238 e!119235)))

(declare-fun call!8991 () Bool)

(declare-fun bm!8984 () Bool)

(declare-fun c!37146 () Bool)

(declare-fun c!37145 () Bool)

(assert (=> bm!8984 (= call!8991 (validRegex!201 (ite c!37146 (reg!1146 (regex!593 lt!65423)) (ite c!37145 (regTwo!2147 (regex!593 lt!65423)) (regOne!2146 (regex!593 lt!65423))))))))

(declare-fun bm!8985 () Bool)

(declare-fun call!8990 () Bool)

(assert (=> bm!8985 (= call!8990 (validRegex!201 (ite c!37145 (regOne!2147 (regex!593 lt!65423)) (regTwo!2146 (regex!593 lt!65423)))))))

(declare-fun d!49120 () Bool)

(declare-fun res!88883 () Bool)

(declare-fun e!119240 () Bool)

(assert (=> d!49120 (=> res!88883 e!119240)))

(assert (=> d!49120 (= res!88883 ((_ is ElementMatch!817) (regex!593 lt!65423)))))

(assert (=> d!49120 (= (validRegex!201 (regex!593 lt!65423)) e!119240)))

(declare-fun bm!8986 () Bool)

(declare-fun call!8989 () Bool)

(assert (=> bm!8986 (= call!8989 call!8991)))

(declare-fun b!194046 () Bool)

(declare-fun res!88884 () Bool)

(declare-fun e!119241 () Bool)

(assert (=> b!194046 (=> (not res!88884) (not e!119241))))

(assert (=> b!194046 (= res!88884 call!8990)))

(assert (=> b!194046 (= e!119238 e!119241)))

(declare-fun b!194047 () Bool)

(declare-fun e!119239 () Bool)

(assert (=> b!194047 (= e!119240 e!119239)))

(assert (=> b!194047 (= c!37146 ((_ is Star!817) (regex!593 lt!65423)))))

(declare-fun b!194048 () Bool)

(declare-fun e!119237 () Bool)

(assert (=> b!194048 (= e!119237 call!8991)))

(declare-fun b!194049 () Bool)

(declare-fun e!119236 () Bool)

(assert (=> b!194049 (= e!119235 e!119236)))

(declare-fun res!88886 () Bool)

(assert (=> b!194049 (=> (not res!88886) (not e!119236))))

(assert (=> b!194049 (= res!88886 call!8989)))

(declare-fun b!194050 () Bool)

(assert (=> b!194050 (= e!119241 call!8989)))

(declare-fun b!194051 () Bool)

(assert (=> b!194051 (= e!119239 e!119237)))

(declare-fun res!88882 () Bool)

(assert (=> b!194051 (= res!88882 (not (nullable!128 (reg!1146 (regex!593 lt!65423)))))))

(assert (=> b!194051 (=> (not res!88882) (not e!119237))))

(declare-fun b!194052 () Bool)

(assert (=> b!194052 (= e!119236 call!8990)))

(declare-fun b!194053 () Bool)

(assert (=> b!194053 (= e!119239 e!119238)))

(assert (=> b!194053 (= c!37145 ((_ is Union!817) (regex!593 lt!65423)))))

(assert (= (and d!49120 (not res!88883)) b!194047))

(assert (= (and b!194047 c!37146) b!194051))

(assert (= (and b!194047 (not c!37146)) b!194053))

(assert (= (and b!194051 res!88882) b!194048))

(assert (= (and b!194053 c!37145) b!194046))

(assert (= (and b!194053 (not c!37145)) b!194045))

(assert (= (and b!194046 res!88884) b!194050))

(assert (= (and b!194045 (not res!88885)) b!194049))

(assert (= (and b!194049 res!88886) b!194052))

(assert (= (or b!194046 b!194052) bm!8985))

(assert (= (or b!194050 b!194049) bm!8986))

(assert (= (or b!194048 bm!8986) bm!8984))

(declare-fun m!203603 () Bool)

(assert (=> bm!8984 m!203603))

(declare-fun m!203605 () Bool)

(assert (=> bm!8985 m!203605))

(declare-fun m!203607 () Bool)

(assert (=> b!194051 m!203607))

(assert (=> d!47626 d!49120))

(declare-fun d!49122 () Bool)

(assert (=> d!49122 (= (head!684 lt!65438) (h!8615 lt!65438))))

(assert (=> b!191571 d!49122))

(declare-fun d!49124 () Bool)

(declare-fun charsToBigInt!1 (List!3227) Int)

(assert (=> d!49124 (= (inv!17 (value!21216 separatorToken!170)) (= (charsToBigInt!1 (text!4753 (value!21216 separatorToken!170))) (value!21208 (value!21216 separatorToken!170))))))

(declare-fun bs!19279 () Bool)

(assert (= bs!19279 d!49124))

(declare-fun m!203609 () Bool)

(assert (=> bs!19279 m!203609))

(assert (=> b!191626 d!49124))

(declare-fun e!119247 () Bool)

(declare-fun b!194054 () Bool)

(declare-fun lt!67299 () Option!471)

(assert (=> b!194054 (= e!119247 (= (list!1179 (_2!1868 (get!939 lt!67299))) (_2!1869 (get!938 (maxPrefixZipper!62 thiss!17480 (t!28931 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun e!119246 () Bool)

(declare-fun b!194055 () Bool)

(assert (=> b!194055 (= e!119246 (= (list!1179 (_2!1868 (get!939 lt!67299))) (_2!1869 (get!938 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun b!194056 () Bool)

(declare-fun e!119243 () Bool)

(assert (=> b!194056 (= e!119243 e!119247)))

(declare-fun res!88892 () Bool)

(assert (=> b!194056 (=> (not res!88892) (not e!119247))))

(assert (=> b!194056 (= res!88892 (= (_1!1868 (get!939 lt!67299)) (_1!1869 (get!938 (maxPrefixZipper!62 thiss!17480 (t!28931 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun b!194057 () Bool)

(declare-fun e!119245 () Bool)

(declare-fun e!119244 () Bool)

(assert (=> b!194057 (= e!119245 e!119244)))

(declare-fun res!88890 () Bool)

(assert (=> b!194057 (=> res!88890 e!119244)))

(assert (=> b!194057 (= res!88890 (not (isDefined!322 lt!67299)))))

(declare-fun b!194058 () Bool)

(assert (=> b!194058 (= e!119244 e!119246)))

(declare-fun res!88891 () Bool)

(assert (=> b!194058 (=> (not res!88891) (not e!119246))))

(assert (=> b!194058 (= res!88891 (= (_1!1868 (get!939 lt!67299)) (_1!1869 (get!938 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))))

(declare-fun d!49126 () Bool)

(assert (=> d!49126 e!119245))

(declare-fun res!88888 () Bool)

(assert (=> d!49126 (=> (not res!88888) (not e!119245))))

(assert (=> d!49126 (= res!88888 (= (isDefined!322 lt!67299) (isDefined!323 (maxPrefixZipper!62 thiss!17480 (t!28931 rules!1920) (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))))))))

(declare-fun e!119242 () Option!471)

(assert (=> d!49126 (= lt!67299 e!119242)))

(declare-fun c!37147 () Bool)

(assert (=> d!49126 (= c!37147 (and ((_ is Cons!3219) (t!28931 rules!1920)) ((_ is Nil!3219) (t!28931 (t!28931 rules!1920)))))))

(declare-fun lt!67302 () Unit!3036)

(declare-fun lt!67305 () Unit!3036)

(assert (=> d!49126 (= lt!67302 lt!67305)))

(declare-fun lt!67300 () List!3228)

(declare-fun lt!67301 () List!3228)

(assert (=> d!49126 (isPrefix!289 lt!67300 lt!67301)))

(assert (=> d!49126 (= lt!67305 (lemmaIsPrefixRefl!159 lt!67300 lt!67301))))

(assert (=> d!49126 (= lt!67301 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!49126 (= lt!67300 (list!1179 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(assert (=> d!49126 (rulesValidInductive!148 thiss!17480 (t!28931 rules!1920))))

(assert (=> d!49126 (= (maxPrefixZipperSequence!172 thiss!17480 (t!28931 rules!1920) (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))) lt!67299)))

(declare-fun b!194059 () Bool)

(declare-fun lt!67303 () Option!471)

(declare-fun lt!67304 () Option!471)

(assert (=> b!194059 (= e!119242 (ite (and ((_ is None!470) lt!67303) ((_ is None!470) lt!67304)) None!470 (ite ((_ is None!470) lt!67304) lt!67303 (ite ((_ is None!470) lt!67303) lt!67304 (ite (>= (size!2562 (_1!1868 (v!13981 lt!67303))) (size!2562 (_1!1868 (v!13981 lt!67304)))) lt!67303 lt!67304)))))))

(declare-fun call!8992 () Option!471)

(assert (=> b!194059 (= lt!67303 call!8992)))

(assert (=> b!194059 (= lt!67304 (maxPrefixZipperSequence!172 thiss!17480 (t!28931 (t!28931 rules!1920)) (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(declare-fun b!194060 () Bool)

(assert (=> b!194060 (= e!119242 call!8992)))

(declare-fun bm!8987 () Bool)

(assert (=> bm!8987 (= call!8992 (maxPrefixOneRuleZipperSequence!63 thiss!17480 (h!8616 (t!28931 rules!1920)) (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))

(declare-fun b!194061 () Bool)

(declare-fun res!88889 () Bool)

(assert (=> b!194061 (=> (not res!88889) (not e!119245))))

(assert (=> b!194061 (= res!88889 e!119243)))

(declare-fun res!88887 () Bool)

(assert (=> b!194061 (=> res!88887 e!119243)))

(assert (=> b!194061 (= res!88887 (not (isDefined!322 lt!67299)))))

(assert (= (and d!49126 c!37147) b!194060))

(assert (= (and d!49126 (not c!37147)) b!194059))

(assert (= (or b!194060 b!194059) bm!8987))

(assert (= (and d!49126 res!88888) b!194061))

(assert (= (and b!194061 (not res!88887)) b!194056))

(assert (= (and b!194056 res!88892) b!194054))

(assert (= (and b!194061 res!88889) b!194057))

(assert (= (and b!194057 (not res!88890)) b!194058))

(assert (= (and b!194058 res!88891) b!194055))

(declare-fun m!203611 () Bool)

(assert (=> b!194058 m!203611))

(assert (=> b!194058 m!196563))

(assert (=> b!194058 m!197385))

(assert (=> b!194058 m!197385))

(assert (=> b!194058 m!199431))

(assert (=> b!194058 m!199431))

(declare-fun m!203613 () Bool)

(assert (=> b!194058 m!203613))

(assert (=> d!49126 m!197385))

(assert (=> d!49126 m!200887))

(declare-fun m!203615 () Bool)

(assert (=> d!49126 m!203615))

(assert (=> d!49126 m!203281))

(declare-fun m!203617 () Bool)

(assert (=> d!49126 m!203617))

(assert (=> d!49126 m!200887))

(declare-fun m!203619 () Bool)

(assert (=> d!49126 m!203619))

(assert (=> d!49126 m!196563))

(assert (=> d!49126 m!197385))

(declare-fun m!203621 () Bool)

(assert (=> d!49126 m!203621))

(assert (=> b!194059 m!196563))

(declare-fun m!203623 () Bool)

(assert (=> b!194059 m!203623))

(assert (=> bm!8987 m!196563))

(declare-fun m!203625 () Bool)

(assert (=> bm!8987 m!203625))

(assert (=> b!194054 m!197385))

(assert (=> b!194054 m!200887))

(assert (=> b!194054 m!200887))

(declare-fun m!203627 () Bool)

(assert (=> b!194054 m!203627))

(declare-fun m!203629 () Bool)

(assert (=> b!194054 m!203629))

(assert (=> b!194054 m!203611))

(assert (=> b!194054 m!196563))

(assert (=> b!194054 m!197385))

(assert (=> b!194061 m!203615))

(assert (=> b!194056 m!203611))

(assert (=> b!194056 m!196563))

(assert (=> b!194056 m!197385))

(assert (=> b!194056 m!197385))

(assert (=> b!194056 m!200887))

(assert (=> b!194056 m!200887))

(assert (=> b!194056 m!203627))

(assert (=> b!194055 m!199431))

(assert (=> b!194055 m!203613))

(assert (=> b!194055 m!203629))

(assert (=> b!194055 m!203611))

(assert (=> b!194055 m!197385))

(assert (=> b!194055 m!199431))

(assert (=> b!194055 m!196563))

(assert (=> b!194055 m!197385))

(assert (=> b!194057 m!203615))

(assert (=> b!191435 d!49126))

(declare-fun d!49128 () Bool)

(declare-fun res!88893 () Bool)

(declare-fun e!119248 () Bool)

(assert (=> d!49128 (=> res!88893 e!119248)))

(assert (=> d!49128 (= res!88893 ((_ is Nil!3220) (list!1182 lt!65415)))))

(assert (=> d!49128 (= (forall!675 (list!1182 lt!65415) lambda!5859) e!119248)))

(declare-fun b!194062 () Bool)

(declare-fun e!119249 () Bool)

(assert (=> b!194062 (= e!119248 e!119249)))

(declare-fun res!88894 () Bool)

(assert (=> b!194062 (=> (not res!88894) (not e!119249))))

(assert (=> b!194062 (= res!88894 (dynLambda!1375 lambda!5859 (h!8617 (list!1182 lt!65415))))))

(declare-fun b!194063 () Bool)

(assert (=> b!194063 (= e!119249 (forall!675 (t!28932 (list!1182 lt!65415)) lambda!5859))))

(assert (= (and d!49128 (not res!88893)) b!194062))

(assert (= (and b!194062 res!88894) b!194063))

(declare-fun b_lambda!4773 () Bool)

(assert (=> (not b_lambda!4773) (not b!194062)))

(declare-fun m!203631 () Bool)

(assert (=> b!194062 m!203631))

(declare-fun m!203633 () Bool)

(assert (=> b!194063 m!203633))

(assert (=> d!47584 d!49128))

(assert (=> d!47584 d!48704))

(declare-fun d!49130 () Bool)

(declare-fun lt!67308 () Bool)

(assert (=> d!49130 (= lt!67308 (forall!675 (list!1182 lt!65415) lambda!5859))))

(declare-fun forall!680 (Conc!1009 Int) Bool)

(assert (=> d!49130 (= lt!67308 (forall!680 (c!36427 lt!65415) lambda!5859))))

(assert (=> d!49130 (= (forall!676 lt!65415 lambda!5859) lt!67308)))

(declare-fun bs!19280 () Bool)

(assert (= bs!19280 d!49130))

(assert (=> bs!19280 m!197467))

(assert (=> bs!19280 m!197467))

(assert (=> bs!19280 m!197469))

(declare-fun m!203635 () Bool)

(assert (=> bs!19280 m!203635))

(assert (=> d!47584 d!49130))

(assert (=> d!47584 d!47748))

(declare-fun d!49132 () Bool)

(assert (=> d!49132 (= (isEmpty!1619 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465))))) (not ((_ is Some!470) (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (seqFromList!563 (originalCharacters!636 (h!8617 tokens!465)))))))))

(assert (=> d!47560 d!49132))

(declare-fun b!194064 () Bool)

(declare-fun e!119250 () Bool)

(declare-fun lt!67313 () Option!473)

(assert (=> b!194064 (= e!119250 (contains!516 (t!28931 rules!1920) (rule!1108 (_1!1869 (get!938 lt!67313)))))))

(declare-fun b!194065 () Bool)

(declare-fun res!88900 () Bool)

(assert (=> b!194065 (=> (not res!88900) (not e!119250))))

(assert (=> b!194065 (= res!88900 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67313)))) (originalCharacters!636 (_1!1869 (get!938 lt!67313)))))))

(declare-fun b!194066 () Bool)

(declare-fun e!119251 () Option!473)

(declare-fun lt!67311 () Option!473)

(declare-fun lt!67309 () Option!473)

(assert (=> b!194066 (= e!119251 (ite (and ((_ is None!472) lt!67311) ((_ is None!472) lt!67309)) None!472 (ite ((_ is None!472) lt!67309) lt!67311 (ite ((_ is None!472) lt!67311) lt!67309 (ite (>= (size!2562 (_1!1869 (v!13983 lt!67311))) (size!2562 (_1!1869 (v!13983 lt!67309)))) lt!67311 lt!67309)))))))

(declare-fun call!8993 () Option!473)

(assert (=> b!194066 (= lt!67311 call!8993)))

(assert (=> b!194066 (= lt!67309 (maxPrefix!209 thiss!17480 (t!28931 (t!28931 rules!1920)) lt!65412))))

(declare-fun b!194068 () Bool)

(declare-fun res!88898 () Bool)

(assert (=> b!194068 (=> (not res!88898) (not e!119250))))

(assert (=> b!194068 (= res!88898 (= (value!21216 (_1!1869 (get!938 lt!67313))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!67313)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!67313)))))))))

(declare-fun bm!8988 () Bool)

(assert (=> bm!8988 (= call!8993 (maxPrefixOneRule!93 thiss!17480 (h!8616 (t!28931 rules!1920)) lt!65412))))

(declare-fun b!194069 () Bool)

(declare-fun res!88896 () Bool)

(assert (=> b!194069 (=> (not res!88896) (not e!119250))))

(assert (=> b!194069 (= res!88896 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!67313)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67313))))))))

(declare-fun b!194070 () Bool)

(declare-fun res!88895 () Bool)

(assert (=> b!194070 (=> (not res!88895) (not e!119250))))

(assert (=> b!194070 (= res!88895 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67313)))) (_2!1869 (get!938 lt!67313))) lt!65412))))

(declare-fun d!49134 () Bool)

(declare-fun e!119252 () Bool)

(assert (=> d!49134 e!119252))

(declare-fun res!88899 () Bool)

(assert (=> d!49134 (=> res!88899 e!119252)))

(assert (=> d!49134 (= res!88899 (isEmpty!1617 lt!67313))))

(assert (=> d!49134 (= lt!67313 e!119251)))

(declare-fun c!37148 () Bool)

(assert (=> d!49134 (= c!37148 (and ((_ is Cons!3219) (t!28931 rules!1920)) ((_ is Nil!3219) (t!28931 (t!28931 rules!1920)))))))

(declare-fun lt!67310 () Unit!3036)

(declare-fun lt!67312 () Unit!3036)

(assert (=> d!49134 (= lt!67310 lt!67312)))

(assert (=> d!49134 (isPrefix!289 lt!65412 lt!65412)))

(assert (=> d!49134 (= lt!67312 (lemmaIsPrefixRefl!159 lt!65412 lt!65412))))

(assert (=> d!49134 (rulesValidInductive!148 thiss!17480 (t!28931 rules!1920))))

(assert (=> d!49134 (= (maxPrefix!209 thiss!17480 (t!28931 rules!1920) lt!65412) lt!67313)))

(declare-fun b!194067 () Bool)

(assert (=> b!194067 (= e!119252 e!119250)))

(declare-fun res!88897 () Bool)

(assert (=> b!194067 (=> (not res!88897) (not e!119250))))

(assert (=> b!194067 (= res!88897 (isDefined!323 lt!67313))))

(declare-fun b!194071 () Bool)

(assert (=> b!194071 (= e!119251 call!8993)))

(declare-fun b!194072 () Bool)

(declare-fun res!88901 () Bool)

(assert (=> b!194072 (=> (not res!88901) (not e!119250))))

(assert (=> b!194072 (= res!88901 (< (size!2566 (_2!1869 (get!938 lt!67313))) (size!2566 lt!65412)))))

(assert (= (and d!49134 c!37148) b!194071))

(assert (= (and d!49134 (not c!37148)) b!194066))

(assert (= (or b!194071 b!194066) bm!8988))

(assert (= (and d!49134 (not res!88899)) b!194067))

(assert (= (and b!194067 res!88897) b!194065))

(assert (= (and b!194065 res!88900) b!194072))

(assert (= (and b!194072 res!88901) b!194070))

(assert (= (and b!194070 res!88895) b!194068))

(assert (= (and b!194068 res!88898) b!194069))

(assert (= (and b!194069 res!88896) b!194064))

(declare-fun m!203637 () Bool)

(assert (=> b!194070 m!203637))

(declare-fun m!203639 () Bool)

(assert (=> b!194070 m!203639))

(assert (=> b!194070 m!203639))

(declare-fun m!203641 () Bool)

(assert (=> b!194070 m!203641))

(assert (=> b!194070 m!203641))

(declare-fun m!203643 () Bool)

(assert (=> b!194070 m!203643))

(declare-fun m!203645 () Bool)

(assert (=> bm!8988 m!203645))

(declare-fun m!203647 () Bool)

(assert (=> b!194067 m!203647))

(assert (=> b!194065 m!203637))

(assert (=> b!194065 m!203639))

(assert (=> b!194065 m!203639))

(assert (=> b!194065 m!203641))

(assert (=> b!194064 m!203637))

(declare-fun m!203649 () Bool)

(assert (=> b!194064 m!203649))

(assert (=> b!194069 m!203637))

(assert (=> b!194069 m!203639))

(assert (=> b!194069 m!203639))

(assert (=> b!194069 m!203641))

(assert (=> b!194069 m!203641))

(declare-fun m!203651 () Bool)

(assert (=> b!194069 m!203651))

(assert (=> b!194068 m!203637))

(declare-fun m!203653 () Bool)

(assert (=> b!194068 m!203653))

(assert (=> b!194068 m!203653))

(declare-fun m!203655 () Bool)

(assert (=> b!194068 m!203655))

(declare-fun m!203657 () Bool)

(assert (=> d!49134 m!203657))

(assert (=> d!49134 m!197877))

(assert (=> d!49134 m!197879))

(assert (=> d!49134 m!203281))

(assert (=> b!194072 m!203637))

(declare-fun m!203659 () Bool)

(assert (=> b!194072 m!203659))

(assert (=> b!194072 m!197339))

(declare-fun m!203661 () Bool)

(assert (=> b!194066 m!203661))

(assert (=> b!191689 d!49134))

(declare-fun d!49136 () Bool)

(declare-fun res!88902 () Bool)

(declare-fun e!119253 () Bool)

(assert (=> d!49136 (=> (not res!88902) (not e!119253))))

(assert (=> d!49136 (= res!88902 (rulesValid!167 thiss!17480 (t!28931 rules!1920)))))

(assert (=> d!49136 (= (rulesInvariant!445 thiss!17480 (t!28931 rules!1920)) e!119253)))

(declare-fun b!194073 () Bool)

(assert (=> b!194073 (= e!119253 (noDuplicateTag!167 thiss!17480 (t!28931 rules!1920) Nil!3222))))

(assert (= (and d!49136 res!88902) b!194073))

(declare-fun m!203663 () Bool)

(assert (=> d!49136 m!203663))

(declare-fun m!203665 () Bool)

(assert (=> b!194073 m!203665))

(assert (=> b!191804 d!49136))

(declare-fun d!49138 () Bool)

(assert (=> d!49138 (rulesInvariant!445 thiss!17480 (t!28931 rules!1920))))

(declare-fun lt!67316 () Unit!3036)

(declare-fun choose!1953 (LexerInterface!479 Rule!986 List!3229) Unit!3036)

(assert (=> d!49138 (= lt!67316 (choose!1953 thiss!17480 (h!8616 rules!1920) (t!28931 rules!1920)))))

(assert (=> d!49138 (rulesInvariant!445 thiss!17480 (Cons!3219 (h!8616 rules!1920) (t!28931 rules!1920)))))

(assert (=> d!49138 (= (lemmaInvariantOnRulesThenOnTail!2 thiss!17480 (h!8616 rules!1920) (t!28931 rules!1920)) lt!67316)))

(declare-fun bs!19281 () Bool)

(assert (= bs!19281 d!49138))

(assert (=> bs!19281 m!198091))

(declare-fun m!203667 () Bool)

(assert (=> bs!19281 m!203667))

(declare-fun m!203669 () Bool)

(assert (=> bs!19281 m!203669))

(assert (=> b!191804 d!49138))

(declare-fun b!194074 () Bool)

(declare-fun e!119255 () Bool)

(declare-fun e!119257 () Bool)

(assert (=> b!194074 (= e!119255 e!119257)))

(declare-fun res!88903 () Bool)

(assert (=> b!194074 (=> (not res!88903) (not e!119257))))

(declare-fun lt!67319 () Option!472)

(assert (=> b!194074 (= res!88903 (contains!516 (t!28931 rules!1920) (get!937 lt!67319)))))

(declare-fun d!49140 () Bool)

(assert (=> d!49140 e!119255))

(declare-fun res!88904 () Bool)

(assert (=> d!49140 (=> res!88904 e!119255)))

(assert (=> d!49140 (= res!88904 (isEmpty!1622 lt!67319))))

(declare-fun e!119254 () Option!472)

(assert (=> d!49140 (= lt!67319 e!119254)))

(declare-fun c!37149 () Bool)

(assert (=> d!49140 (= c!37149 (and ((_ is Cons!3219) (t!28931 rules!1920)) (= (tag!771 (h!8616 (t!28931 rules!1920))) (tag!771 (rule!1108 separatorToken!170)))))))

(assert (=> d!49140 (rulesInvariant!445 thiss!17480 (t!28931 rules!1920))))

(assert (=> d!49140 (= (getRuleFromTag!34 thiss!17480 (t!28931 rules!1920) (tag!771 (rule!1108 separatorToken!170))) lt!67319)))

(declare-fun b!194075 () Bool)

(declare-fun lt!67318 () Unit!3036)

(declare-fun lt!67317 () Unit!3036)

(assert (=> b!194075 (= lt!67318 lt!67317)))

(assert (=> b!194075 (rulesInvariant!445 thiss!17480 (t!28931 (t!28931 rules!1920)))))

(assert (=> b!194075 (= lt!67317 (lemmaInvariantOnRulesThenOnTail!2 thiss!17480 (h!8616 (t!28931 rules!1920)) (t!28931 (t!28931 rules!1920))))))

(declare-fun e!119256 () Option!472)

(assert (=> b!194075 (= e!119256 (getRuleFromTag!34 thiss!17480 (t!28931 (t!28931 rules!1920)) (tag!771 (rule!1108 separatorToken!170))))))

(declare-fun b!194076 () Bool)

(assert (=> b!194076 (= e!119254 (Some!471 (h!8616 (t!28931 rules!1920))))))

(declare-fun b!194077 () Bool)

(assert (=> b!194077 (= e!119254 e!119256)))

(declare-fun c!37150 () Bool)

(assert (=> b!194077 (= c!37150 (and ((_ is Cons!3219) (t!28931 rules!1920)) (not (= (tag!771 (h!8616 (t!28931 rules!1920))) (tag!771 (rule!1108 separatorToken!170))))))))

(declare-fun b!194078 () Bool)

(assert (=> b!194078 (= e!119256 None!471)))

(declare-fun b!194079 () Bool)

(assert (=> b!194079 (= e!119257 (= (tag!771 (get!937 lt!67319)) (tag!771 (rule!1108 separatorToken!170))))))

(assert (= (and d!49140 c!37149) b!194076))

(assert (= (and d!49140 (not c!37149)) b!194077))

(assert (= (and b!194077 c!37150) b!194075))

(assert (= (and b!194077 (not c!37150)) b!194078))

(assert (= (and d!49140 (not res!88904)) b!194074))

(assert (= (and b!194074 res!88903) b!194079))

(declare-fun m!203671 () Bool)

(assert (=> b!194074 m!203671))

(assert (=> b!194074 m!203671))

(declare-fun m!203673 () Bool)

(assert (=> b!194074 m!203673))

(declare-fun m!203675 () Bool)

(assert (=> d!49140 m!203675))

(assert (=> d!49140 m!198091))

(declare-fun m!203677 () Bool)

(assert (=> b!194075 m!203677))

(declare-fun m!203679 () Bool)

(assert (=> b!194075 m!203679))

(declare-fun m!203681 () Bool)

(assert (=> b!194075 m!203681))

(assert (=> b!194079 m!203671))

(assert (=> b!191804 d!49140))

(declare-fun d!49142 () Bool)

(declare-fun e!119258 () Bool)

(assert (=> d!49142 e!119258))

(declare-fun res!88905 () Bool)

(assert (=> d!49142 (=> (not res!88905) (not e!119258))))

(declare-fun lt!67320 () List!3228)

(assert (=> d!49142 (= res!88905 (= (content!430 lt!67320) ((_ map or) (content!430 e!117631) (content!430 (ite c!36503 lt!65671 call!8770)))))))

(declare-fun e!119259 () List!3228)

(assert (=> d!49142 (= lt!67320 e!119259)))

(declare-fun c!37151 () Bool)

(assert (=> d!49142 (= c!37151 ((_ is Nil!3218) e!117631))))

(assert (=> d!49142 (= (++!768 e!117631 (ite c!36503 lt!65671 call!8770)) lt!67320)))

(declare-fun b!194080 () Bool)

(assert (=> b!194080 (= e!119259 (ite c!36503 lt!65671 call!8770))))

(declare-fun b!194082 () Bool)

(declare-fun res!88906 () Bool)

(assert (=> b!194082 (=> (not res!88906) (not e!119258))))

(assert (=> b!194082 (= res!88906 (= (size!2566 lt!67320) (+ (size!2566 e!117631) (size!2566 (ite c!36503 lt!65671 call!8770)))))))

(declare-fun b!194081 () Bool)

(assert (=> b!194081 (= e!119259 (Cons!3218 (h!8615 e!117631) (++!768 (t!28930 e!117631) (ite c!36503 lt!65671 call!8770))))))

(declare-fun b!194083 () Bool)

(assert (=> b!194083 (= e!119258 (or (not (= (ite c!36503 lt!65671 call!8770) Nil!3218)) (= lt!67320 e!117631)))))

(assert (= (and d!49142 c!37151) b!194080))

(assert (= (and d!49142 (not c!37151)) b!194081))

(assert (= (and d!49142 res!88905) b!194082))

(assert (= (and b!194082 res!88906) b!194083))

(declare-fun m!203683 () Bool)

(assert (=> d!49142 m!203683))

(declare-fun m!203685 () Bool)

(assert (=> d!49142 m!203685))

(declare-fun m!203687 () Bool)

(assert (=> d!49142 m!203687))

(declare-fun m!203689 () Bool)

(assert (=> b!194082 m!203689))

(declare-fun m!203691 () Bool)

(assert (=> b!194082 m!203691))

(declare-fun m!203693 () Bool)

(assert (=> b!194082 m!203693))

(declare-fun m!203695 () Bool)

(assert (=> b!194081 m!203695))

(assert (=> bm!8765 d!49142))

(declare-fun d!49144 () Bool)

(declare-fun lt!67321 () Int)

(assert (=> d!49144 (= lt!67321 (size!2570 (list!1182 lt!65419)))))

(assert (=> d!49144 (= lt!67321 (size!2571 (c!36427 lt!65419)))))

(assert (=> d!49144 (= (size!2563 lt!65419) lt!67321)))

(declare-fun bs!19282 () Bool)

(assert (= bs!19282 d!49144))

(assert (=> bs!19282 m!197505))

(assert (=> bs!19282 m!197505))

(declare-fun m!203697 () Bool)

(assert (=> bs!19282 m!203697))

(declare-fun m!203699 () Bool)

(assert (=> bs!19282 m!203699))

(assert (=> b!191556 d!49144))

(declare-fun d!49146 () Bool)

(assert (=> d!49146 (= (list!1179 lt!65597) (list!1183 (c!36425 lt!65597)))))

(declare-fun bs!19283 () Bool)

(assert (= bs!19283 d!49146))

(declare-fun m!203701 () Bool)

(assert (=> bs!19283 m!203701))

(assert (=> d!47456 d!49146))

(declare-fun d!49148 () Bool)

(assert (=> d!49148 (forall!675 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0) lambda!5845)))

(declare-fun lt!67324 () Unit!3036)

(declare-fun choose!1954 (List!3230 List!3230 Int) Unit!3036)

(assert (=> d!49148 (= lt!67324 (choose!1954 (list!1182 (seqFromList!564 (t!28932 tokens!465))) (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0) lambda!5845))))

(assert (=> d!49148 (forall!675 (list!1182 (seqFromList!564 (t!28932 tokens!465))) lambda!5845)))

(assert (=> d!49148 (= (lemmaContentSubsetPreservesForall!53 (list!1182 (seqFromList!564 (t!28932 tokens!465))) (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0) lambda!5845) lt!67324)))

(declare-fun bs!19284 () Bool)

(assert (= bs!19284 d!49148))

(assert (=> bs!19284 m!197027))

(declare-fun m!203703 () Bool)

(assert (=> bs!19284 m!203703))

(assert (=> bs!19284 m!197025))

(assert (=> bs!19284 m!197027))

(declare-fun m!203705 () Bool)

(assert (=> bs!19284 m!203705))

(assert (=> bs!19284 m!197025))

(declare-fun m!203707 () Bool)

(assert (=> bs!19284 m!203707))

(assert (=> d!47456 d!49148))

(declare-fun bs!19285 () Bool)

(declare-fun b!194090 () Bool)

(assert (= bs!19285 (and b!194090 d!47456)))

(declare-fun lambda!5926 () Int)

(assert (=> bs!19285 (not (= lambda!5926 lambda!5845))))

(declare-fun bs!19286 () Bool)

(assert (= bs!19286 (and b!194090 b!190910)))

(assert (=> bs!19286 (= lambda!5926 lambda!5840)))

(declare-fun bs!19287 () Bool)

(assert (= bs!19287 (and b!194090 b!190918)))

(assert (=> bs!19287 (not (= lambda!5926 lambda!5839))))

(declare-fun bs!19288 () Bool)

(assert (= bs!19288 (and b!194090 d!47636)))

(assert (=> bs!19288 (not (= lambda!5926 lambda!5863))))

(declare-fun bs!19289 () Bool)

(assert (= bs!19289 (and b!194090 d!48674)))

(assert (=> bs!19289 (not (= lambda!5926 lambda!5913))))

(declare-fun bs!19290 () Bool)

(assert (= bs!19290 (and b!194090 b!191608)))

(assert (=> bs!19290 (= lambda!5926 lambda!5865)))

(declare-fun bs!19291 () Bool)

(assert (= bs!19291 (and b!194090 b!193382)))

(assert (=> bs!19291 (= lambda!5926 lambda!5914)))

(declare-fun bs!19292 () Bool)

(assert (= bs!19292 (and b!194090 b!191262)))

(assert (=> bs!19292 (= lambda!5926 lambda!5846)))

(declare-fun bs!19293 () Bool)

(assert (= bs!19293 (and b!194090 d!48052)))

(assert (=> bs!19293 (not (= lambda!5926 lambda!5893))))

(declare-fun bs!19294 () Bool)

(assert (= bs!19294 (and b!194090 d!47584)))

(assert (=> bs!19294 (= lambda!5926 lambda!5859)))

(declare-fun bs!19295 () Bool)

(assert (= bs!19295 (and b!194090 b!191594)))

(assert (=> bs!19295 (= lambda!5926 lambda!5864)))

(declare-fun bs!19296 () Bool)

(assert (= bs!19296 (and b!194090 b!192388)))

(assert (=> bs!19296 (= lambda!5926 lambda!5894)))

(declare-fun bs!19297 () Bool)

(assert (= bs!19297 (and b!194090 b!191371)))

(assert (=> bs!19297 (= lambda!5926 lambda!5849)))

(declare-fun b!194096 () Bool)

(declare-fun e!119267 () Bool)

(assert (=> b!194096 (= e!119267 true)))

(declare-fun b!194095 () Bool)

(declare-fun e!119266 () Bool)

(assert (=> b!194095 (= e!119266 e!119267)))

(declare-fun b!194094 () Bool)

(declare-fun e!119265 () Bool)

(assert (=> b!194094 (= e!119265 e!119266)))

(assert (=> b!194090 e!119265))

(assert (= b!194095 b!194096))

(assert (= b!194094 b!194095))

(assert (= (and b!194090 ((_ is Cons!3219) rules!1920)) b!194094))

(assert (=> b!194096 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5926))))

(assert (=> b!194096 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5926))))

(assert (=> b!194090 true))

(declare-fun d!49150 () Bool)

(declare-fun c!37156 () Bool)

(assert (=> d!49150 (= c!37156 ((_ is Cons!3220) (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0)))))

(declare-fun e!119263 () List!3228)

(assert (=> d!49150 (= (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0) separatorToken!170) e!119263)))

(declare-fun bm!8989 () Bool)

(declare-fun call!8994 () BalanceConc!2024)

(assert (=> bm!8989 (= call!8994 (charsOf!248 (h!8617 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0))))))

(declare-fun b!194084 () Bool)

(declare-fun c!37155 () Bool)

(declare-fun lt!67327 () Option!473)

(assert (=> b!194084 (= c!37155 (and ((_ is Some!472) lt!67327) (not (= (_1!1869 (v!13983 lt!67327)) (h!8617 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0))))))))

(declare-fun e!119262 () List!3228)

(declare-fun e!119261 () List!3228)

(assert (=> b!194084 (= e!119262 e!119261)))

(declare-fun bm!8990 () Bool)

(declare-fun call!8997 () BalanceConc!2024)

(assert (=> bm!8990 (= call!8997 call!8994)))

(declare-fun b!194085 () Bool)

(declare-fun e!119260 () BalanceConc!2024)

(assert (=> b!194085 (= e!119260 call!8997)))

(declare-fun b!194086 () Bool)

(assert (=> b!194086 (= e!119261 Nil!3218)))

(assert (=> b!194086 (= (print!210 thiss!17480 (singletonSeq!145 (h!8617 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0)))) (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0))) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!67326 () Unit!3036)

(declare-fun Unit!3088 () Unit!3036)

(assert (=> b!194086 (= lt!67326 Unit!3088)))

(declare-fun lt!67328 () Unit!3036)

(declare-fun lt!67329 () List!3228)

(declare-fun call!8998 () List!3228)

(assert (=> b!194086 (= lt!67328 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 call!8998 lt!67329))))

(assert (=> b!194086 false))

(declare-fun lt!67330 () Unit!3036)

(declare-fun Unit!3089 () Unit!3036)

(assert (=> b!194086 (= lt!67330 Unit!3089)))

(declare-fun b!194087 () Bool)

(declare-fun call!8995 () List!3228)

(assert (=> b!194087 (= e!119261 (++!768 call!8995 lt!67329))))

(declare-fun call!8996 () List!3228)

(declare-fun c!37152 () Bool)

(declare-fun bm!8991 () Bool)

(assert (=> bm!8991 (= call!8996 (list!1179 (ite c!37152 call!8994 e!119260)))))

(declare-fun bm!8992 () Bool)

(assert (=> bm!8992 (= call!8998 call!8996)))

(declare-fun c!37153 () Bool)

(assert (=> bm!8992 (= c!37153 c!37155)))

(declare-fun b!194088 () Bool)

(assert (=> b!194088 (= e!119262 call!8995)))

(declare-fun b!194089 () Bool)

(declare-fun e!119264 () List!3228)

(assert (=> b!194089 (= e!119264 (list!1179 call!8997))))

(declare-fun bm!8993 () Bool)

(declare-fun c!37154 () Bool)

(assert (=> bm!8993 (= c!37154 c!37152)))

(assert (=> bm!8993 (= call!8995 (++!768 e!119264 (ite c!37152 lt!67329 call!8998)))))

(assert (=> b!194090 (= e!119263 e!119262)))

(declare-fun lt!67325 () Unit!3036)

(assert (=> b!194090 (= lt!67325 (forallContained!160 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0) lambda!5926 (h!8617 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0))))))

(assert (=> b!194090 (= lt!67329 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (t!28932 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!194090 (= lt!67327 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 (charsOf!248 (h!8617 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0)))) lt!67329)))))

(assert (=> b!194090 (= c!37152 (and ((_ is Some!472) lt!67327) (= (_1!1869 (v!13983 lt!67327)) (h!8617 (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0)))))))

(declare-fun b!194091 () Bool)

(assert (=> b!194091 (= e!119260 (charsOf!248 separatorToken!170))))

(declare-fun b!194092 () Bool)

(assert (=> b!194092 (= e!119264 call!8996)))

(declare-fun b!194093 () Bool)

(assert (=> b!194093 (= e!119263 Nil!3218)))

(assert (= (and d!49150 c!37156) b!194090))

(assert (= (and d!49150 (not c!37156)) b!194093))

(assert (= (and b!194090 c!37152) b!194088))

(assert (= (and b!194090 (not c!37152)) b!194084))

(assert (= (and b!194084 c!37155) b!194087))

(assert (= (and b!194084 (not c!37155)) b!194086))

(assert (= (or b!194087 b!194086) bm!8990))

(assert (= (or b!194087 b!194086) bm!8992))

(assert (= (and bm!8992 c!37153) b!194091))

(assert (= (and bm!8992 (not c!37153)) b!194085))

(assert (= (or b!194088 bm!8990) bm!8989))

(assert (= (or b!194088 bm!8992) bm!8991))

(assert (= (or b!194088 b!194087) bm!8993))

(assert (= (and bm!8993 c!37154) b!194092))

(assert (= (and bm!8993 (not c!37154)) b!194089))

(declare-fun m!203709 () Bool)

(assert (=> b!194089 m!203709))

(declare-fun m!203711 () Bool)

(assert (=> b!194087 m!203711))

(assert (=> b!194091 m!196439))

(declare-fun m!203713 () Bool)

(assert (=> bm!8993 m!203713))

(declare-fun m!203715 () Bool)

(assert (=> b!194090 m!203715))

(declare-fun m!203717 () Bool)

(assert (=> b!194090 m!203717))

(declare-fun m!203719 () Bool)

(assert (=> b!194090 m!203719))

(declare-fun m!203721 () Bool)

(assert (=> b!194090 m!203721))

(assert (=> b!194090 m!203717))

(assert (=> b!194090 m!197027))

(declare-fun m!203723 () Bool)

(assert (=> b!194090 m!203723))

(assert (=> b!194090 m!203721))

(assert (=> b!194090 m!203719))

(declare-fun m!203725 () Bool)

(assert (=> b!194090 m!203725))

(assert (=> bm!8989 m!203721))

(declare-fun m!203727 () Bool)

(assert (=> b!194086 m!203727))

(assert (=> b!194086 m!203727))

(declare-fun m!203729 () Bool)

(assert (=> b!194086 m!203729))

(assert (=> b!194086 m!203727))

(declare-fun m!203731 () Bool)

(assert (=> b!194086 m!203731))

(declare-fun m!203733 () Bool)

(assert (=> b!194086 m!203733))

(declare-fun m!203735 () Bool)

(assert (=> bm!8991 m!203735))

(assert (=> d!47456 d!49150))

(declare-fun d!49152 () Bool)

(assert (=> d!49152 (= (dropList!110 (seqFromList!564 (t!28932 tokens!465)) 0) (drop!163 (list!1186 (c!36427 (seqFromList!564 (t!28932 tokens!465)))) 0))))

(declare-fun bs!19298 () Bool)

(assert (= bs!19298 d!49152))

(assert (=> bs!19298 m!199089))

(assert (=> bs!19298 m!199089))

(declare-fun m!203737 () Bool)

(assert (=> bs!19298 m!203737))

(assert (=> d!47456 d!49152))

(assert (=> d!47456 d!49014))

(assert (=> d!47456 d!48048))

(declare-fun d!49154 () Bool)

(assert (=> d!49154 (= (dropList!110 lt!65419 0) (drop!163 (list!1186 (c!36427 lt!65419)) 0))))

(declare-fun bs!19299 () Bool)

(assert (= bs!19299 d!49154))

(assert (=> bs!19299 m!202091))

(assert (=> bs!19299 m!202091))

(declare-fun m!203739 () Bool)

(assert (=> bs!19299 m!203739))

(assert (=> d!47616 d!49154))

(declare-fun d!49156 () Bool)

(assert (=> d!49156 (= (list!1179 lt!65781) (list!1183 (c!36425 lt!65781)))))

(declare-fun bs!19300 () Bool)

(assert (= bs!19300 d!49156))

(declare-fun m!203741 () Bool)

(assert (=> bs!19300 m!203741))

(assert (=> d!47616 d!49156))

(assert (=> d!47616 d!49144))

(declare-fun d!49158 () Bool)

(declare-fun lt!67335 () List!3228)

(assert (=> d!49158 (= lt!67335 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (printList!163 thiss!17480 (dropList!110 lt!65419 0))))))

(declare-fun e!119268 () List!3228)

(assert (=> d!49158 (= lt!67335 e!119268)))

(declare-fun c!37157 () Bool)

(assert (=> d!49158 (= c!37157 ((_ is Cons!3220) (dropList!110 lt!65419 0)))))

(assert (=> d!49158 (= (printListTailRec!78 thiss!17480 (dropList!110 lt!65419 0) (list!1179 (BalanceConc!2025 Empty!1008))) lt!67335)))

(declare-fun b!194097 () Bool)

(assert (=> b!194097 (= e!119268 (printListTailRec!78 thiss!17480 (t!28932 (dropList!110 lt!65419 0)) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (h!8617 (dropList!110 lt!65419 0)))))))))

(declare-fun lt!67331 () List!3228)

(assert (=> b!194097 (= lt!67331 (list!1179 (charsOf!248 (h!8617 (dropList!110 lt!65419 0)))))))

(declare-fun lt!67334 () List!3228)

(assert (=> b!194097 (= lt!67334 (printList!163 thiss!17480 (t!28932 (dropList!110 lt!65419 0))))))

(declare-fun lt!67333 () Unit!3036)

(assert (=> b!194097 (= lt!67333 (lemmaConcatAssociativity!282 (list!1179 (BalanceConc!2025 Empty!1008)) lt!67331 lt!67334))))

(assert (=> b!194097 (= (++!768 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) lt!67331) lt!67334) (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (++!768 lt!67331 lt!67334)))))

(declare-fun lt!67332 () Unit!3036)

(assert (=> b!194097 (= lt!67332 lt!67333)))

(declare-fun b!194098 () Bool)

(assert (=> b!194098 (= e!119268 (list!1179 (BalanceConc!2025 Empty!1008)))))

(assert (= (and d!49158 c!37157) b!194097))

(assert (= (and d!49158 (not c!37157)) b!194098))

(assert (=> d!49158 m!197541))

(declare-fun m!203743 () Bool)

(assert (=> d!49158 m!203743))

(assert (=> d!49158 m!197539))

(assert (=> d!49158 m!203743))

(declare-fun m!203745 () Bool)

(assert (=> d!49158 m!203745))

(declare-fun m!203747 () Bool)

(assert (=> b!194097 m!203747))

(assert (=> b!194097 m!197539))

(declare-fun m!203749 () Bool)

(assert (=> b!194097 m!203749))

(declare-fun m!203751 () Bool)

(assert (=> b!194097 m!203751))

(declare-fun m!203753 () Bool)

(assert (=> b!194097 m!203753))

(assert (=> b!194097 m!197539))

(declare-fun m!203755 () Bool)

(assert (=> b!194097 m!203755))

(declare-fun m!203757 () Bool)

(assert (=> b!194097 m!203757))

(assert (=> b!194097 m!197539))

(declare-fun m!203759 () Bool)

(assert (=> b!194097 m!203759))

(assert (=> b!194097 m!197539))

(declare-fun m!203761 () Bool)

(assert (=> b!194097 m!203761))

(assert (=> b!194097 m!203755))

(assert (=> b!194097 m!203761))

(declare-fun m!203763 () Bool)

(assert (=> b!194097 m!203763))

(assert (=> b!194097 m!203751))

(declare-fun m!203765 () Bool)

(assert (=> b!194097 m!203765))

(assert (=> b!194097 m!203753))

(assert (=> b!194097 m!203749))

(assert (=> d!47616 d!49158))

(assert (=> d!47616 d!48038))

(declare-fun d!49160 () Bool)

(declare-fun lt!67338 () Int)

(assert (=> d!49160 (= lt!67338 (size!2566 (list!1179 (_2!1867 lt!65938))))))

(assert (=> d!49160 (= lt!67338 (size!2573 (c!36425 (_2!1867 lt!65938))))))

(assert (=> d!49160 (= (size!2569 (_2!1867 lt!65938)) lt!67338)))

(declare-fun bs!19301 () Bool)

(assert (= bs!19301 d!49160))

(assert (=> bs!19301 m!198153))

(assert (=> bs!19301 m!198153))

(declare-fun m!203767 () Bool)

(assert (=> bs!19301 m!203767))

(declare-fun m!203769 () Bool)

(assert (=> bs!19301 m!203769))

(assert (=> b!191851 d!49160))

(declare-fun d!49162 () Bool)

(declare-fun lt!67339 () Int)

(assert (=> d!49162 (= lt!67339 (size!2566 (list!1179 lt!65411)))))

(assert (=> d!49162 (= lt!67339 (size!2573 (c!36425 lt!65411)))))

(assert (=> d!49162 (= (size!2569 lt!65411) lt!67339)))

(declare-fun bs!19302 () Bool)

(assert (= bs!19302 d!49162))

(assert (=> bs!19302 m!198149))

(assert (=> bs!19302 m!198149))

(assert (=> bs!19302 m!200017))

(declare-fun m!203771 () Bool)

(assert (=> bs!19302 m!203771))

(assert (=> b!191851 d!49162))

(assert (=> b!191489 d!47696))

(declare-fun b!194099 () Bool)

(declare-fun e!119269 () Bool)

(declare-fun lt!67344 () Option!473)

(assert (=> b!194099 (= e!119269 (contains!516 (t!28931 rules!1920) (rule!1108 (_1!1869 (get!938 lt!67344)))))))

(declare-fun b!194100 () Bool)

(declare-fun res!88912 () Bool)

(assert (=> b!194100 (=> (not res!88912) (not e!119269))))

(assert (=> b!194100 (= res!88912 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67344)))) (originalCharacters!636 (_1!1869 (get!938 lt!67344)))))))

(declare-fun b!194101 () Bool)

(declare-fun e!119270 () Option!473)

(declare-fun lt!67342 () Option!473)

(declare-fun lt!67340 () Option!473)

(assert (=> b!194101 (= e!119270 (ite (and ((_ is None!472) lt!67342) ((_ is None!472) lt!67340)) None!472 (ite ((_ is None!472) lt!67340) lt!67342 (ite ((_ is None!472) lt!67342) lt!67340 (ite (>= (size!2562 (_1!1869 (v!13983 lt!67342))) (size!2562 (_1!1869 (v!13983 lt!67340)))) lt!67342 lt!67340)))))))

(declare-fun call!8999 () Option!473)

(assert (=> b!194101 (= lt!67342 call!8999)))

(assert (=> b!194101 (= lt!67340 (maxPrefix!209 thiss!17480 (t!28931 (t!28931 rules!1920)) lt!65430))))

(declare-fun b!194103 () Bool)

(declare-fun res!88910 () Bool)

(assert (=> b!194103 (=> (not res!88910) (not e!119269))))

(assert (=> b!194103 (= res!88910 (= (value!21216 (_1!1869 (get!938 lt!67344))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!67344)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!67344)))))))))

(declare-fun bm!8994 () Bool)

(assert (=> bm!8994 (= call!8999 (maxPrefixOneRule!93 thiss!17480 (h!8616 (t!28931 rules!1920)) lt!65430))))

(declare-fun b!194104 () Bool)

(declare-fun res!88908 () Bool)

(assert (=> b!194104 (=> (not res!88908) (not e!119269))))

(assert (=> b!194104 (= res!88908 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!67344)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67344))))))))

(declare-fun b!194105 () Bool)

(declare-fun res!88907 () Bool)

(assert (=> b!194105 (=> (not res!88907) (not e!119269))))

(assert (=> b!194105 (= res!88907 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67344)))) (_2!1869 (get!938 lt!67344))) lt!65430))))

(declare-fun d!49164 () Bool)

(declare-fun e!119271 () Bool)

(assert (=> d!49164 e!119271))

(declare-fun res!88911 () Bool)

(assert (=> d!49164 (=> res!88911 e!119271)))

(assert (=> d!49164 (= res!88911 (isEmpty!1617 lt!67344))))

(assert (=> d!49164 (= lt!67344 e!119270)))

(declare-fun c!37158 () Bool)

(assert (=> d!49164 (= c!37158 (and ((_ is Cons!3219) (t!28931 rules!1920)) ((_ is Nil!3219) (t!28931 (t!28931 rules!1920)))))))

(declare-fun lt!67341 () Unit!3036)

(declare-fun lt!67343 () Unit!3036)

(assert (=> d!49164 (= lt!67341 lt!67343)))

(assert (=> d!49164 (isPrefix!289 lt!65430 lt!65430)))

(assert (=> d!49164 (= lt!67343 (lemmaIsPrefixRefl!159 lt!65430 lt!65430))))

(assert (=> d!49164 (rulesValidInductive!148 thiss!17480 (t!28931 rules!1920))))

(assert (=> d!49164 (= (maxPrefix!209 thiss!17480 (t!28931 rules!1920) lt!65430) lt!67344)))

(declare-fun b!194102 () Bool)

(assert (=> b!194102 (= e!119271 e!119269)))

(declare-fun res!88909 () Bool)

(assert (=> b!194102 (=> (not res!88909) (not e!119269))))

(assert (=> b!194102 (= res!88909 (isDefined!323 lt!67344))))

(declare-fun b!194106 () Bool)

(assert (=> b!194106 (= e!119270 call!8999)))

(declare-fun b!194107 () Bool)

(declare-fun res!88913 () Bool)

(assert (=> b!194107 (=> (not res!88913) (not e!119269))))

(assert (=> b!194107 (= res!88913 (< (size!2566 (_2!1869 (get!938 lt!67344))) (size!2566 lt!65430)))))

(assert (= (and d!49164 c!37158) b!194106))

(assert (= (and d!49164 (not c!37158)) b!194101))

(assert (= (or b!194106 b!194101) bm!8994))

(assert (= (and d!49164 (not res!88911)) b!194102))

(assert (= (and b!194102 res!88909) b!194100))

(assert (= (and b!194100 res!88912) b!194107))

(assert (= (and b!194107 res!88913) b!194105))

(assert (= (and b!194105 res!88907) b!194103))

(assert (= (and b!194103 res!88910) b!194104))

(assert (= (and b!194104 res!88908) b!194099))

(declare-fun m!203773 () Bool)

(assert (=> b!194105 m!203773))

(declare-fun m!203775 () Bool)

(assert (=> b!194105 m!203775))

(assert (=> b!194105 m!203775))

(declare-fun m!203777 () Bool)

(assert (=> b!194105 m!203777))

(assert (=> b!194105 m!203777))

(declare-fun m!203779 () Bool)

(assert (=> b!194105 m!203779))

(declare-fun m!203781 () Bool)

(assert (=> bm!8994 m!203781))

(declare-fun m!203783 () Bool)

(assert (=> b!194102 m!203783))

(assert (=> b!194100 m!203773))

(assert (=> b!194100 m!203775))

(assert (=> b!194100 m!203775))

(assert (=> b!194100 m!203777))

(assert (=> b!194099 m!203773))

(declare-fun m!203785 () Bool)

(assert (=> b!194099 m!203785))

(assert (=> b!194104 m!203773))

(assert (=> b!194104 m!203775))

(assert (=> b!194104 m!203775))

(assert (=> b!194104 m!203777))

(assert (=> b!194104 m!203777))

(declare-fun m!203787 () Bool)

(assert (=> b!194104 m!203787))

(assert (=> b!194103 m!203773))

(declare-fun m!203789 () Bool)

(assert (=> b!194103 m!203789))

(assert (=> b!194103 m!203789))

(declare-fun m!203791 () Bool)

(assert (=> b!194103 m!203791))

(declare-fun m!203793 () Bool)

(assert (=> d!49164 m!203793))

(assert (=> d!49164 m!196731))

(assert (=> d!49164 m!196733))

(assert (=> d!49164 m!203281))

(assert (=> b!194107 m!203773))

(declare-fun m!203795 () Bool)

(assert (=> b!194107 m!203795))

(assert (=> b!194107 m!196739))

(declare-fun m!203797 () Bool)

(assert (=> b!194101 m!203797))

(assert (=> b!191055 d!49164))

(declare-fun d!49166 () Bool)

(declare-fun lt!67345 () Int)

(assert (=> d!49166 (>= lt!67345 0)))

(declare-fun e!119272 () Int)

(assert (=> d!49166 (= lt!67345 e!119272)))

(declare-fun c!37159 () Bool)

(assert (=> d!49166 (= c!37159 ((_ is Nil!3218) lt!65725))))

(assert (=> d!49166 (= (size!2566 lt!65725) lt!67345)))

(declare-fun b!194108 () Bool)

(assert (=> b!194108 (= e!119272 0)))

(declare-fun b!194109 () Bool)

(assert (=> b!194109 (= e!119272 (+ 1 (size!2566 (t!28930 lt!65725))))))

(assert (= (and d!49166 c!37159) b!194108))

(assert (= (and d!49166 (not c!37159)) b!194109))

(declare-fun m!203799 () Bool)

(assert (=> b!194109 m!203799))

(assert (=> b!191485 d!49166))

(assert (=> b!191485 d!48016))

(assert (=> b!191485 d!48844))

(declare-fun d!49168 () Bool)

(declare-fun e!119273 () Bool)

(assert (=> d!49168 e!119273))

(declare-fun res!88914 () Bool)

(assert (=> d!49168 (=> (not res!88914) (not e!119273))))

(declare-fun lt!67346 () List!3228)

(assert (=> d!49168 (= res!88914 (= (content!430 lt!67346) ((_ map or) (content!430 (t!28930 (++!768 lt!65413 lt!65438))) (content!430 lt!65427))))))

(declare-fun e!119274 () List!3228)

(assert (=> d!49168 (= lt!67346 e!119274)))

(declare-fun c!37160 () Bool)

(assert (=> d!49168 (= c!37160 ((_ is Nil!3218) (t!28930 (++!768 lt!65413 lt!65438))))))

(assert (=> d!49168 (= (++!768 (t!28930 (++!768 lt!65413 lt!65438)) lt!65427) lt!67346)))

(declare-fun b!194110 () Bool)

(assert (=> b!194110 (= e!119274 lt!65427)))

(declare-fun b!194112 () Bool)

(declare-fun res!88915 () Bool)

(assert (=> b!194112 (=> (not res!88915) (not e!119273))))

(assert (=> b!194112 (= res!88915 (= (size!2566 lt!67346) (+ (size!2566 (t!28930 (++!768 lt!65413 lt!65438))) (size!2566 lt!65427))))))

(declare-fun b!194111 () Bool)

(assert (=> b!194111 (= e!119274 (Cons!3218 (h!8615 (t!28930 (++!768 lt!65413 lt!65438))) (++!768 (t!28930 (t!28930 (++!768 lt!65413 lt!65438))) lt!65427)))))

(declare-fun b!194113 () Bool)

(assert (=> b!194113 (= e!119273 (or (not (= lt!65427 Nil!3218)) (= lt!67346 (t!28930 (++!768 lt!65413 lt!65438)))))))

(assert (= (and d!49168 c!37160) b!194110))

(assert (= (and d!49168 (not c!37160)) b!194111))

(assert (= (and d!49168 res!88914) b!194112))

(assert (= (and b!194112 res!88915) b!194113))

(declare-fun m!203801 () Bool)

(assert (=> d!49168 m!203801))

(declare-fun m!203803 () Bool)

(assert (=> d!49168 m!203803))

(assert (=> d!49168 m!197135))

(declare-fun m!203805 () Bool)

(assert (=> b!194112 m!203805))

(declare-fun m!203807 () Bool)

(assert (=> b!194112 m!203807))

(assert (=> b!194112 m!197141))

(declare-fun m!203809 () Bool)

(assert (=> b!194111 m!203809))

(assert (=> b!191302 d!49168))

(declare-fun d!49170 () Bool)

(declare-fun lt!67347 () Int)

(assert (=> d!49170 (>= lt!67347 0)))

(declare-fun e!119275 () Int)

(assert (=> d!49170 (= lt!67347 e!119275)))

(declare-fun c!37161 () Bool)

(assert (=> d!49170 (= c!37161 ((_ is Nil!3220) (list!1182 (_1!1867 lt!65414))))))

(assert (=> d!49170 (= (size!2570 (list!1182 (_1!1867 lt!65414))) lt!67347)))

(declare-fun b!194114 () Bool)

(assert (=> b!194114 (= e!119275 0)))

(declare-fun b!194115 () Bool)

(assert (=> b!194115 (= e!119275 (+ 1 (size!2570 (t!28932 (list!1182 (_1!1867 lt!65414))))))))

(assert (= (and d!49170 c!37161) b!194114))

(assert (= (and d!49170 (not c!37161)) b!194115))

(declare-fun m!203811 () Bool)

(assert (=> b!194115 m!203811))

(assert (=> d!47696 d!49170))

(declare-fun d!49172 () Bool)

(assert (=> d!49172 (= (list!1182 (_1!1867 lt!65414)) (list!1186 (c!36427 (_1!1867 lt!65414))))))

(declare-fun bs!19303 () Bool)

(assert (= bs!19303 d!49172))

(declare-fun m!203813 () Bool)

(assert (=> bs!19303 m!203813))

(assert (=> d!47696 d!49172))

(declare-fun d!49174 () Bool)

(declare-fun lt!67348 () Int)

(assert (=> d!49174 (= lt!67348 (size!2570 (list!1186 (c!36427 (_1!1867 lt!65414)))))))

(assert (=> d!49174 (= lt!67348 (ite ((_ is Empty!1009) (c!36427 (_1!1867 lt!65414))) 0 (ite ((_ is Leaf!1645) (c!36427 (_1!1867 lt!65414))) (csize!2249 (c!36427 (_1!1867 lt!65414))) (csize!2248 (c!36427 (_1!1867 lt!65414))))))))

(assert (=> d!49174 (= (size!2571 (c!36427 (_1!1867 lt!65414))) lt!67348)))

(declare-fun bs!19304 () Bool)

(assert (= bs!19304 d!49174))

(assert (=> bs!19304 m!203813))

(assert (=> bs!19304 m!203813))

(declare-fun m!203815 () Bool)

(assert (=> bs!19304 m!203815))

(assert (=> d!47696 d!49174))

(declare-fun d!49176 () Bool)

(declare-fun lt!67349 () BalanceConc!2024)

(assert (=> d!49176 (= (list!1179 lt!67349) (originalCharacters!636 call!8754))))

(assert (=> d!49176 (= lt!67349 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 call!8754))) (value!21216 call!8754)))))

(assert (=> d!49176 (= (charsOf!248 call!8754) lt!67349)))

(declare-fun b_lambda!4775 () Bool)

(assert (=> (not b_lambda!4775) (not d!49176)))

(declare-fun tb!8193 () Bool)

(declare-fun t!29395 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 call!8754)))) t!29395) tb!8193))

(declare-fun b!194116 () Bool)

(declare-fun e!119276 () Bool)

(declare-fun tp!89035 () Bool)

(assert (=> b!194116 (= e!119276 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 call!8754))) (value!21216 call!8754)))) tp!89035))))

(declare-fun result!11138 () Bool)

(assert (=> tb!8193 (= result!11138 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 call!8754))) (value!21216 call!8754))) e!119276))))

(assert (= tb!8193 b!194116))

(declare-fun m!203817 () Bool)

(assert (=> b!194116 m!203817))

(declare-fun m!203819 () Bool)

(assert (=> tb!8193 m!203819))

(assert (=> d!49176 t!29395))

(declare-fun b_and!13639 () Bool)

(assert (= b_and!13633 (and (=> t!29395 result!11138) b_and!13639)))

(declare-fun tb!8195 () Bool)

(declare-fun t!29397 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 call!8754)))) t!29397) tb!8195))

(declare-fun result!11140 () Bool)

(assert (= result!11140 result!11138))

(assert (=> d!49176 t!29397))

(declare-fun b_and!13641 () Bool)

(assert (= b_and!13629 (and (=> t!29397 result!11140) b_and!13641)))

(declare-fun t!29399 () Bool)

(declare-fun tb!8197 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 call!8754)))) t!29399) tb!8197))

(declare-fun result!11142 () Bool)

(assert (= result!11142 result!11138))

(assert (=> d!49176 t!29399))

(declare-fun b_and!13643 () Bool)

(assert (= b_and!13631 (and (=> t!29399 result!11142) b_and!13643)))

(declare-fun t!29401 () Bool)

(declare-fun tb!8199 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 call!8754)))) t!29401) tb!8199))

(declare-fun result!11144 () Bool)

(assert (= result!11144 result!11138))

(assert (=> d!49176 t!29401))

(declare-fun b_and!13645 () Bool)

(assert (= b_and!13635 (and (=> t!29401 result!11144) b_and!13645)))

(declare-fun t!29403 () Bool)

(declare-fun tb!8201 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 call!8754)))) t!29403) tb!8201))

(declare-fun result!11146 () Bool)

(assert (= result!11146 result!11138))

(assert (=> d!49176 t!29403))

(declare-fun b_and!13647 () Bool)

(assert (= b_and!13637 (and (=> t!29403 result!11146) b_and!13647)))

(declare-fun m!203821 () Bool)

(assert (=> d!49176 m!203821))

(declare-fun m!203823 () Bool)

(assert (=> d!49176 m!203823))

(assert (=> b!191265 d!49176))

(declare-fun d!49178 () Bool)

(declare-fun e!119277 () Bool)

(assert (=> d!49178 e!119277))

(declare-fun res!88916 () Bool)

(assert (=> d!49178 (=> (not res!88916) (not e!119277))))

(declare-fun lt!67350 () BalanceConc!2024)

(assert (=> d!49178 (= res!88916 (= (list!1179 lt!67350) lt!65430))))

(assert (=> d!49178 (= lt!67350 (BalanceConc!2025 (fromList!117 lt!65430)))))

(assert (=> d!49178 (= (fromListB!208 lt!65430) lt!67350)))

(declare-fun b!194117 () Bool)

(assert (=> b!194117 (= e!119277 (isBalanced!266 (fromList!117 lt!65430)))))

(assert (= (and d!49178 res!88916) b!194117))

(declare-fun m!203825 () Bool)

(assert (=> d!49178 m!203825))

(declare-fun m!203827 () Bool)

(assert (=> d!49178 m!203827))

(assert (=> b!194117 m!203827))

(assert (=> b!194117 m!203827))

(declare-fun m!203829 () Bool)

(assert (=> b!194117 m!203829))

(assert (=> d!47652 d!49178))

(declare-fun d!49180 () Bool)

(declare-fun lt!67353 () Bool)

(declare-fun content!433 (List!3229) (InoxSet Rule!986))

(assert (=> d!49180 (= lt!67353 (select (content!433 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65949)))))))

(declare-fun e!119283 () Bool)

(assert (=> d!49180 (= lt!67353 e!119283)))

(declare-fun res!88921 () Bool)

(assert (=> d!49180 (=> (not res!88921) (not e!119283))))

(assert (=> d!49180 (= res!88921 ((_ is Cons!3219) rules!1920))))

(assert (=> d!49180 (= (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!65949)))) lt!67353)))

(declare-fun b!194122 () Bool)

(declare-fun e!119282 () Bool)

(assert (=> b!194122 (= e!119283 e!119282)))

(declare-fun res!88922 () Bool)

(assert (=> b!194122 (=> res!88922 e!119282)))

(assert (=> b!194122 (= res!88922 (= (h!8616 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65949)))))))

(declare-fun b!194123 () Bool)

(assert (=> b!194123 (= e!119282 (contains!516 (t!28931 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65949)))))))

(assert (= (and d!49180 res!88921) b!194122))

(assert (= (and b!194122 (not res!88922)) b!194123))

(declare-fun m!203831 () Bool)

(assert (=> d!49180 m!203831))

(declare-fun m!203833 () Bool)

(assert (=> d!49180 m!203833))

(declare-fun m!203835 () Bool)

(assert (=> b!194123 m!203835))

(assert (=> b!191855 d!49180))

(assert (=> b!191855 d!48194))

(declare-fun bs!19305 () Bool)

(declare-fun d!49182 () Bool)

(assert (= bs!19305 (and d!49182 d!48228)))

(declare-fun lambda!5927 () Int)

(assert (=> bs!19305 (= (= (toValue!1264 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (= lambda!5927 lambda!5897))))

(declare-fun bs!19306 () Bool)

(assert (= bs!19306 (and d!49182 d!49080)))

(assert (=> bs!19306 (= (= (toValue!1264 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465))))) (= lambda!5927 lambda!5924))))

(assert (=> d!49182 true))

(assert (=> d!49182 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (rule!1108 separatorToken!170)))) (dynLambda!1380 order!2043 lambda!5927))))

(assert (=> d!49182 (= (equivClasses!184 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 separatorToken!170)))) (Forall2!116 lambda!5927))))

(declare-fun bs!19307 () Bool)

(assert (= bs!19307 d!49182))

(declare-fun m!203837 () Bool)

(assert (=> bs!19307 m!203837))

(assert (=> b!191871 d!49182))

(declare-fun d!49184 () Bool)

(declare-fun lt!67354 () Token!930)

(assert (=> d!49184 (= lt!67354 (apply!497 (list!1182 (_1!1867 lt!65816)) 0))))

(assert (=> d!49184 (= lt!67354 (apply!498 (c!36427 (_1!1867 lt!65816)) 0))))

(declare-fun e!119284 () Bool)

(assert (=> d!49184 e!119284))

(declare-fun res!88923 () Bool)

(assert (=> d!49184 (=> (not res!88923) (not e!119284))))

(assert (=> d!49184 (= res!88923 (<= 0 0))))

(assert (=> d!49184 (= (apply!492 (_1!1867 lt!65816) 0) lt!67354)))

(declare-fun b!194124 () Bool)

(assert (=> b!194124 (= e!119284 (< 0 (size!2563 (_1!1867 lt!65816))))))

(assert (= (and d!49184 res!88923) b!194124))

(declare-fun m!203839 () Bool)

(assert (=> d!49184 m!203839))

(assert (=> d!49184 m!203839))

(declare-fun m!203841 () Bool)

(assert (=> d!49184 m!203841))

(declare-fun m!203843 () Bool)

(assert (=> d!49184 m!203843))

(assert (=> b!194124 m!197743))

(assert (=> b!191651 d!49184))

(declare-fun d!49186 () Bool)

(declare-fun charsToBigInt!0 (List!3227 Int) Int)

(assert (=> d!49186 (= (inv!15 (value!21216 (h!8617 tokens!465))) (= (charsToBigInt!0 (text!4754 (value!21216 (h!8617 tokens!465))) 0) (value!21211 (value!21216 (h!8617 tokens!465)))))))

(declare-fun bs!19308 () Bool)

(assert (= bs!19308 d!49186))

(declare-fun m!203845 () Bool)

(assert (=> bs!19308 m!203845))

(assert (=> b!191866 d!49186))

(declare-fun b!194128 () Bool)

(declare-fun e!119286 () List!3228)

(assert (=> b!194128 (= e!119286 (++!768 (list!1183 (left!2547 (c!36425 (charsOf!248 separatorToken!170)))) (list!1183 (right!2877 (c!36425 (charsOf!248 separatorToken!170))))))))

(declare-fun d!49188 () Bool)

(declare-fun c!37162 () Bool)

(assert (=> d!49188 (= c!37162 ((_ is Empty!1008) (c!36425 (charsOf!248 separatorToken!170))))))

(declare-fun e!119285 () List!3228)

(assert (=> d!49188 (= (list!1183 (c!36425 (charsOf!248 separatorToken!170))) e!119285)))

(declare-fun b!194126 () Bool)

(assert (=> b!194126 (= e!119285 e!119286)))

(declare-fun c!37163 () Bool)

(assert (=> b!194126 (= c!37163 ((_ is Leaf!1644) (c!36425 (charsOf!248 separatorToken!170))))))

(declare-fun b!194127 () Bool)

(assert (=> b!194127 (= e!119286 (list!1187 (xs!3603 (c!36425 (charsOf!248 separatorToken!170)))))))

(declare-fun b!194125 () Bool)

(assert (=> b!194125 (= e!119285 Nil!3218)))

(assert (= (and d!49188 c!37162) b!194125))

(assert (= (and d!49188 (not c!37162)) b!194126))

(assert (= (and b!194126 c!37163) b!194127))

(assert (= (and b!194126 (not c!37163)) b!194128))

(declare-fun m!203847 () Bool)

(assert (=> b!194128 m!203847))

(declare-fun m!203849 () Bool)

(assert (=> b!194128 m!203849))

(assert (=> b!194128 m!203847))

(assert (=> b!194128 m!203849))

(declare-fun m!203851 () Bool)

(assert (=> b!194128 m!203851))

(declare-fun m!203853 () Bool)

(assert (=> b!194127 m!203853))

(assert (=> d!47520 d!49188))

(assert (=> d!47664 d!47702))

(declare-fun d!49190 () Bool)

(assert (=> d!49190 (= (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439))))) (list!1186 (c!36427 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 lt!65439)))))))))

(declare-fun bs!19309 () Bool)

(assert (= bs!19309 d!49190))

(declare-fun m!203855 () Bool)

(assert (=> bs!19309 m!203855))

(assert (=> d!47664 d!49190))

(declare-fun d!49192 () Bool)

(assert (=> d!49192 (= (list!1182 (singletonSeq!145 lt!65439)) (list!1186 (c!36427 (singletonSeq!145 lt!65439))))))

(declare-fun bs!19310 () Bool)

(assert (= bs!19310 d!49192))

(declare-fun m!203857 () Bool)

(assert (=> bs!19310 m!203857))

(assert (=> d!47664 d!49192))

(assert (=> d!47664 d!48802))

(declare-fun d!49194 () Bool)

(declare-fun lt!67355 () Int)

(assert (=> d!49194 (= lt!67355 (size!2570 (list!1182 (_1!1867 lt!65816))))))

(assert (=> d!49194 (= lt!67355 (size!2571 (c!36427 (_1!1867 lt!65816))))))

(assert (=> d!49194 (= (size!2563 (_1!1867 lt!65816)) lt!67355)))

(declare-fun bs!19311 () Bool)

(assert (= bs!19311 d!49194))

(assert (=> bs!19311 m!203839))

(assert (=> bs!19311 m!203839))

(declare-fun m!203859 () Bool)

(assert (=> bs!19311 m!203859))

(declare-fun m!203861 () Bool)

(assert (=> bs!19311 m!203861))

(assert (=> d!47664 d!49194))

(assert (=> d!47664 d!47748))

(assert (=> d!47664 d!48806))

(declare-fun d!49196 () Bool)

(declare-fun lt!67356 () Int)

(assert (=> d!49196 (= lt!67356 (size!2566 (list!1179 (_2!1867 lt!65937))))))

(assert (=> d!49196 (= lt!67356 (size!2573 (c!36425 (_2!1867 lt!65937))))))

(assert (=> d!49196 (= (size!2569 (_2!1867 lt!65937)) lt!67356)))

(declare-fun bs!19312 () Bool)

(assert (= bs!19312 d!49196))

(assert (=> bs!19312 m!198135))

(assert (=> bs!19312 m!198135))

(declare-fun m!203863 () Bool)

(assert (=> bs!19312 m!203863))

(declare-fun m!203865 () Bool)

(assert (=> bs!19312 m!203865))

(assert (=> b!191846 d!49196))

(declare-fun d!49198 () Bool)

(declare-fun lt!67357 () Int)

(assert (=> d!49198 (= lt!67357 (size!2566 (list!1179 lt!65426)))))

(assert (=> d!49198 (= lt!67357 (size!2573 (c!36425 lt!65426)))))

(assert (=> d!49198 (= (size!2569 lt!65426) lt!67357)))

(declare-fun bs!19313 () Bool)

(assert (= bs!19313 d!49198))

(assert (=> bs!19313 m!198131))

(assert (=> bs!19313 m!198131))

(assert (=> bs!19313 m!200953))

(declare-fun m!203867 () Bool)

(assert (=> bs!19313 m!203867))

(assert (=> b!191846 d!49198))

(assert (=> b!191654 d!48034))

(declare-fun d!49200 () Bool)

(declare-fun lt!67358 () Token!930)

(assert (=> d!49200 (= lt!67358 (apply!497 (list!1182 (_1!1867 lt!65787)) 0))))

(assert (=> d!49200 (= lt!67358 (apply!498 (c!36427 (_1!1867 lt!65787)) 0))))

(declare-fun e!119287 () Bool)

(assert (=> d!49200 e!119287))

(declare-fun res!88924 () Bool)

(assert (=> d!49200 (=> (not res!88924) (not e!119287))))

(assert (=> d!49200 (= res!88924 (<= 0 0))))

(assert (=> d!49200 (= (apply!492 (_1!1867 lt!65787) 0) lt!67358)))

(declare-fun b!194129 () Bool)

(assert (=> b!194129 (= e!119287 (< 0 (size!2563 (_1!1867 lt!65787))))))

(assert (= (and d!49200 res!88924) b!194129))

(declare-fun m!203869 () Bool)

(assert (=> d!49200 m!203869))

(assert (=> d!49200 m!203869))

(declare-fun m!203871 () Bool)

(assert (=> d!49200 m!203871))

(declare-fun m!203873 () Bool)

(assert (=> d!49200 m!203873))

(assert (=> b!194129 m!197607))

(assert (=> b!191585 d!49200))

(declare-fun d!49202 () Bool)

(declare-fun c!37164 () Bool)

(assert (=> d!49202 (= c!37164 ((_ is Nil!3218) lt!65625))))

(declare-fun e!119288 () (InoxSet C!2556))

(assert (=> d!49202 (= (content!430 lt!65625) e!119288)))

(declare-fun b!194130 () Bool)

(assert (=> b!194130 (= e!119288 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!194131 () Bool)

(assert (=> b!194131 (= e!119288 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 lt!65625) true) (content!430 (t!28930 lt!65625))))))

(assert (= (and d!49202 c!37164) b!194130))

(assert (= (and d!49202 (not c!37164)) b!194131))

(declare-fun m!203875 () Bool)

(assert (=> b!194131 m!203875))

(declare-fun m!203877 () Bool)

(assert (=> b!194131 m!203877))

(assert (=> d!47506 d!49202))

(declare-fun d!49204 () Bool)

(declare-fun c!37165 () Bool)

(assert (=> d!49204 (= c!37165 ((_ is Nil!3218) (++!768 lt!65413 lt!65438)))))

(declare-fun e!119289 () (InoxSet C!2556))

(assert (=> d!49204 (= (content!430 (++!768 lt!65413 lt!65438)) e!119289)))

(declare-fun b!194132 () Bool)

(assert (=> b!194132 (= e!119289 ((as const (Array C!2556 Bool)) false))))

(declare-fun b!194133 () Bool)

(assert (=> b!194133 (= e!119289 ((_ map or) (store ((as const (Array C!2556 Bool)) false) (h!8615 (++!768 lt!65413 lt!65438)) true) (content!430 (t!28930 (++!768 lt!65413 lt!65438)))))))

(assert (= (and d!49204 c!37165) b!194132))

(assert (= (and d!49204 (not c!37165)) b!194133))

(declare-fun m!203879 () Bool)

(assert (=> b!194133 m!203879))

(assert (=> b!194133 m!203803))

(assert (=> d!47506 d!49204))

(assert (=> d!47506 d!48548))

(assert (=> bm!8746 d!48066))

(declare-fun d!49206 () Bool)

(declare-fun e!119290 () Bool)

(assert (=> d!49206 e!119290))

(declare-fun res!88925 () Bool)

(assert (=> d!49206 (=> (not res!88925) (not e!119290))))

(declare-fun lt!67359 () List!3228)

(assert (=> d!49206 (= res!88925 (= (content!430 lt!67359) ((_ map or) (content!430 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465))))) (content!430 lt!65671))))))

(declare-fun e!119291 () List!3228)

(assert (=> d!49206 (= lt!67359 e!119291)))

(declare-fun c!37166 () Bool)

(assert (=> d!49206 (= c!37166 ((_ is Nil!3218) (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465))))))))

(assert (=> d!49206 (= (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671) lt!67359)))

(declare-fun b!194134 () Bool)

(assert (=> b!194134 (= e!119291 lt!65671)))

(declare-fun b!194136 () Bool)

(declare-fun res!88926 () Bool)

(assert (=> b!194136 (=> (not res!88926) (not e!119290))))

(assert (=> b!194136 (= res!88926 (= (size!2566 lt!67359) (+ (size!2566 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465))))) (size!2566 lt!65671))))))

(declare-fun b!194135 () Bool)

(assert (=> b!194135 (= e!119291 (Cons!3218 (h!8615 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465))))) (++!768 (t!28930 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465))))) lt!65671)))))

(declare-fun b!194137 () Bool)

(assert (=> b!194137 (= e!119290 (or (not (= lt!65671 Nil!3218)) (= lt!67359 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))))))))

(assert (= (and d!49206 c!37166) b!194134))

(assert (= (and d!49206 (not c!37166)) b!194135))

(assert (= (and d!49206 res!88925) b!194136))

(assert (= (and b!194136 res!88926) b!194137))

(declare-fun m!203881 () Bool)

(assert (=> d!49206 m!203881))

(assert (=> d!49206 m!197313))

(declare-fun m!203883 () Bool)

(assert (=> d!49206 m!203883))

(assert (=> d!49206 m!203537))

(declare-fun m!203885 () Bool)

(assert (=> b!194136 m!203885))

(assert (=> b!194136 m!197313))

(declare-fun m!203887 () Bool)

(assert (=> b!194136 m!203887))

(assert (=> b!194136 m!203543))

(declare-fun m!203889 () Bool)

(assert (=> b!194135 m!203889))

(assert (=> b!191371 d!49206))

(declare-fun bs!19314 () Bool)

(declare-fun b!194144 () Bool)

(assert (= bs!19314 (and b!194144 d!47456)))

(declare-fun lambda!5928 () Int)

(assert (=> bs!19314 (not (= lambda!5928 lambda!5845))))

(declare-fun bs!19315 () Bool)

(assert (= bs!19315 (and b!194144 b!190910)))

(assert (=> bs!19315 (= lambda!5928 lambda!5840)))

(declare-fun bs!19316 () Bool)

(assert (= bs!19316 (and b!194144 b!190918)))

(assert (=> bs!19316 (not (= lambda!5928 lambda!5839))))

(declare-fun bs!19317 () Bool)

(assert (= bs!19317 (and b!194144 d!47636)))

(assert (=> bs!19317 (not (= lambda!5928 lambda!5863))))

(declare-fun bs!19318 () Bool)

(assert (= bs!19318 (and b!194144 d!48674)))

(assert (=> bs!19318 (not (= lambda!5928 lambda!5913))))

(declare-fun bs!19319 () Bool)

(assert (= bs!19319 (and b!194144 b!191608)))

(assert (=> bs!19319 (= lambda!5928 lambda!5865)))

(declare-fun bs!19320 () Bool)

(assert (= bs!19320 (and b!194144 b!193382)))

(assert (=> bs!19320 (= lambda!5928 lambda!5914)))

(declare-fun bs!19321 () Bool)

(assert (= bs!19321 (and b!194144 b!191262)))

(assert (=> bs!19321 (= lambda!5928 lambda!5846)))

(declare-fun bs!19322 () Bool)

(assert (= bs!19322 (and b!194144 d!48052)))

(assert (=> bs!19322 (not (= lambda!5928 lambda!5893))))

(declare-fun bs!19323 () Bool)

(assert (= bs!19323 (and b!194144 d!47584)))

(assert (=> bs!19323 (= lambda!5928 lambda!5859)))

(declare-fun bs!19324 () Bool)

(assert (= bs!19324 (and b!194144 b!191594)))

(assert (=> bs!19324 (= lambda!5928 lambda!5864)))

(declare-fun bs!19325 () Bool)

(assert (= bs!19325 (and b!194144 b!192388)))

(assert (=> bs!19325 (= lambda!5928 lambda!5894)))

(declare-fun bs!19326 () Bool)

(assert (= bs!19326 (and b!194144 b!191371)))

(assert (=> bs!19326 (= lambda!5928 lambda!5849)))

(declare-fun bs!19327 () Bool)

(assert (= bs!19327 (and b!194144 b!194090)))

(assert (=> bs!19327 (= lambda!5928 lambda!5926)))

(declare-fun b!194150 () Bool)

(declare-fun e!119299 () Bool)

(assert (=> b!194150 (= e!119299 true)))

(declare-fun b!194149 () Bool)

(declare-fun e!119298 () Bool)

(assert (=> b!194149 (= e!119298 e!119299)))

(declare-fun b!194148 () Bool)

(declare-fun e!119297 () Bool)

(assert (=> b!194148 (= e!119297 e!119298)))

(assert (=> b!194144 e!119297))

(assert (= b!194149 b!194150))

(assert (= b!194148 b!194149))

(assert (= (and b!194144 ((_ is Cons!3219) rules!1920)) b!194148))

(assert (=> b!194150 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5928))))

(assert (=> b!194150 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5928))))

(assert (=> b!194144 true))

(declare-fun d!49208 () Bool)

(declare-fun c!37171 () Bool)

(assert (=> d!49208 (= c!37171 ((_ is Cons!3220) (t!28932 (t!28932 tokens!465))))))

(declare-fun e!119295 () List!3228)

(assert (=> d!49208 (= (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (t!28932 (t!28932 tokens!465)) separatorToken!170) e!119295)))

(declare-fun bm!8995 () Bool)

(declare-fun call!9000 () BalanceConc!2024)

(assert (=> bm!8995 (= call!9000 (charsOf!248 (h!8617 (t!28932 (t!28932 tokens!465)))))))

(declare-fun b!194138 () Bool)

(declare-fun c!37170 () Bool)

(declare-fun lt!67362 () Option!473)

(assert (=> b!194138 (= c!37170 (and ((_ is Some!472) lt!67362) (not (= (_1!1869 (v!13983 lt!67362)) (h!8617 (t!28932 (t!28932 tokens!465)))))))))

(declare-fun e!119294 () List!3228)

(declare-fun e!119293 () List!3228)

(assert (=> b!194138 (= e!119294 e!119293)))

(declare-fun bm!8996 () Bool)

(declare-fun call!9003 () BalanceConc!2024)

(assert (=> bm!8996 (= call!9003 call!9000)))

(declare-fun b!194139 () Bool)

(declare-fun e!119292 () BalanceConc!2024)

(assert (=> b!194139 (= e!119292 call!9003)))

(declare-fun b!194140 () Bool)

(assert (=> b!194140 (= e!119293 Nil!3218)))

(assert (=> b!194140 (= (print!210 thiss!17480 (singletonSeq!145 (h!8617 (t!28932 (t!28932 tokens!465))))) (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 (t!28932 (t!28932 tokens!465)))) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!67361 () Unit!3036)

(declare-fun Unit!3092 () Unit!3036)

(assert (=> b!194140 (= lt!67361 Unit!3092)))

(declare-fun lt!67364 () List!3228)

(declare-fun call!9004 () List!3228)

(declare-fun lt!67363 () Unit!3036)

(assert (=> b!194140 (= lt!67363 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 call!9004 lt!67364))))

(assert (=> b!194140 false))

(declare-fun lt!67365 () Unit!3036)

(declare-fun Unit!3093 () Unit!3036)

(assert (=> b!194140 (= lt!67365 Unit!3093)))

(declare-fun b!194141 () Bool)

(declare-fun call!9001 () List!3228)

(assert (=> b!194141 (= e!119293 (++!768 call!9001 lt!67364))))

(declare-fun c!37167 () Bool)

(declare-fun bm!8997 () Bool)

(declare-fun call!9002 () List!3228)

(assert (=> bm!8997 (= call!9002 (list!1179 (ite c!37167 call!9000 e!119292)))))

(declare-fun bm!8998 () Bool)

(assert (=> bm!8998 (= call!9004 call!9002)))

(declare-fun c!37168 () Bool)

(assert (=> bm!8998 (= c!37168 c!37170)))

(declare-fun b!194142 () Bool)

(assert (=> b!194142 (= e!119294 call!9001)))

(declare-fun b!194143 () Bool)

(declare-fun e!119296 () List!3228)

(assert (=> b!194143 (= e!119296 (list!1179 call!9003))))

(declare-fun bm!8999 () Bool)

(declare-fun c!37169 () Bool)

(assert (=> bm!8999 (= c!37169 c!37167)))

(assert (=> bm!8999 (= call!9001 (++!768 e!119296 (ite c!37167 lt!67364 call!9004)))))

(assert (=> b!194144 (= e!119295 e!119294)))

(declare-fun lt!67360 () Unit!3036)

(assert (=> b!194144 (= lt!67360 (forallContained!160 (t!28932 (t!28932 tokens!465)) lambda!5928 (h!8617 (t!28932 (t!28932 tokens!465)))))))

(assert (=> b!194144 (= lt!67364 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (t!28932 (t!28932 (t!28932 tokens!465))) separatorToken!170))))

(assert (=> b!194144 (= lt!67362 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 (t!28932 tokens!465))))) lt!67364)))))

(assert (=> b!194144 (= c!37167 (and ((_ is Some!472) lt!67362) (= (_1!1869 (v!13983 lt!67362)) (h!8617 (t!28932 (t!28932 tokens!465))))))))

(declare-fun b!194145 () Bool)

(assert (=> b!194145 (= e!119292 (charsOf!248 separatorToken!170))))

(declare-fun b!194146 () Bool)

(assert (=> b!194146 (= e!119296 call!9002)))

(declare-fun b!194147 () Bool)

(assert (=> b!194147 (= e!119295 Nil!3218)))

(assert (= (and d!49208 c!37171) b!194144))

(assert (= (and d!49208 (not c!37171)) b!194147))

(assert (= (and b!194144 c!37167) b!194142))

(assert (= (and b!194144 (not c!37167)) b!194138))

(assert (= (and b!194138 c!37170) b!194141))

(assert (= (and b!194138 (not c!37170)) b!194140))

(assert (= (or b!194141 b!194140) bm!8996))

(assert (= (or b!194141 b!194140) bm!8998))

(assert (= (and bm!8998 c!37168) b!194145))

(assert (= (and bm!8998 (not c!37168)) b!194139))

(assert (= (or b!194142 bm!8996) bm!8995))

(assert (= (or b!194142 bm!8998) bm!8997))

(assert (= (or b!194142 b!194141) bm!8999))

(assert (= (and bm!8999 c!37169) b!194146))

(assert (= (and bm!8999 (not c!37169)) b!194143))

(declare-fun m!203891 () Bool)

(assert (=> b!194143 m!203891))

(declare-fun m!203893 () Bool)

(assert (=> b!194141 m!203893))

(assert (=> b!194145 m!196439))

(declare-fun m!203895 () Bool)

(assert (=> bm!8999 m!203895))

(declare-fun m!203897 () Bool)

(assert (=> b!194144 m!203897))

(declare-fun m!203899 () Bool)

(assert (=> b!194144 m!203899))

(declare-fun m!203901 () Bool)

(assert (=> b!194144 m!203901))

(declare-fun m!203903 () Bool)

(assert (=> b!194144 m!203903))

(assert (=> b!194144 m!203899))

(declare-fun m!203905 () Bool)

(assert (=> b!194144 m!203905))

(assert (=> b!194144 m!203903))

(assert (=> b!194144 m!203901))

(declare-fun m!203907 () Bool)

(assert (=> b!194144 m!203907))

(assert (=> bm!8995 m!203903))

(declare-fun m!203909 () Bool)

(assert (=> b!194140 m!203909))

(assert (=> b!194140 m!203909))

(declare-fun m!203911 () Bool)

(assert (=> b!194140 m!203911))

(assert (=> b!194140 m!203909))

(declare-fun m!203913 () Bool)

(assert (=> b!194140 m!203913))

(declare-fun m!203915 () Bool)

(assert (=> b!194140 m!203915))

(declare-fun m!203917 () Bool)

(assert (=> bm!8997 m!203917))

(assert (=> b!191371 d!49208))

(declare-fun d!49210 () Bool)

(assert (=> d!49210 (dynLambda!1375 lambda!5849 (h!8617 (t!28932 tokens!465)))))

(declare-fun lt!67366 () Unit!3036)

(assert (=> d!49210 (= lt!67366 (choose!1935 (t!28932 tokens!465) lambda!5849 (h!8617 (t!28932 tokens!465))))))

(declare-fun e!119300 () Bool)

(assert (=> d!49210 e!119300))

(declare-fun res!88927 () Bool)

(assert (=> d!49210 (=> (not res!88927) (not e!119300))))

(assert (=> d!49210 (= res!88927 (forall!675 (t!28932 tokens!465) lambda!5849))))

(assert (=> d!49210 (= (forallContained!160 (t!28932 tokens!465) lambda!5849 (h!8617 (t!28932 tokens!465))) lt!67366)))

(declare-fun b!194151 () Bool)

(assert (=> b!194151 (= e!119300 (contains!514 (t!28932 tokens!465) (h!8617 (t!28932 tokens!465))))))

(assert (= (and d!49210 res!88927) b!194151))

(declare-fun b_lambda!4777 () Bool)

(assert (=> (not b_lambda!4777) (not d!49210)))

(declare-fun m!203919 () Bool)

(assert (=> d!49210 m!203919))

(declare-fun m!203921 () Bool)

(assert (=> d!49210 m!203921))

(declare-fun m!203923 () Bool)

(assert (=> d!49210 m!203923))

(declare-fun m!203925 () Bool)

(assert (=> b!194151 m!203925))

(assert (=> b!191371 d!49210))

(declare-fun b!194152 () Bool)

(declare-fun e!119301 () Bool)

(declare-fun lt!67371 () Option!473)

(assert (=> b!194152 (= e!119301 (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!67371)))))))

(declare-fun b!194153 () Bool)

(declare-fun res!88933 () Bool)

(assert (=> b!194153 (=> (not res!88933) (not e!119301))))

(assert (=> b!194153 (= res!88933 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67371)))) (originalCharacters!636 (_1!1869 (get!938 lt!67371)))))))

(declare-fun b!194154 () Bool)

(declare-fun e!119302 () Option!473)

(declare-fun lt!67369 () Option!473)

(declare-fun lt!67367 () Option!473)

(assert (=> b!194154 (= e!119302 (ite (and ((_ is None!472) lt!67369) ((_ is None!472) lt!67367)) None!472 (ite ((_ is None!472) lt!67367) lt!67369 (ite ((_ is None!472) lt!67369) lt!67367 (ite (>= (size!2562 (_1!1869 (v!13983 lt!67369))) (size!2562 (_1!1869 (v!13983 lt!67367)))) lt!67369 lt!67367)))))))

(declare-fun call!9005 () Option!473)

(assert (=> b!194154 (= lt!67369 call!9005)))

(assert (=> b!194154 (= lt!67367 (maxPrefix!209 thiss!17480 (t!28931 rules!1920) (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671)))))

(declare-fun b!194156 () Bool)

(declare-fun res!88931 () Bool)

(assert (=> b!194156 (=> (not res!88931) (not e!119301))))

(assert (=> b!194156 (= res!88931 (= (value!21216 (_1!1869 (get!938 lt!67371))) (apply!496 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!67371)))) (seqFromList!563 (originalCharacters!636 (_1!1869 (get!938 lt!67371)))))))))

(declare-fun bm!9000 () Bool)

(assert (=> bm!9000 (= call!9005 (maxPrefixOneRule!93 thiss!17480 (h!8616 rules!1920) (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671)))))

(declare-fun b!194157 () Bool)

(declare-fun res!88929 () Bool)

(assert (=> b!194157 (=> (not res!88929) (not e!119301))))

(assert (=> b!194157 (= res!88929 (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!67371)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67371))))))))

(declare-fun b!194158 () Bool)

(declare-fun res!88928 () Bool)

(assert (=> b!194158 (=> (not res!88928) (not e!119301))))

(assert (=> b!194158 (= res!88928 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!67371)))) (_2!1869 (get!938 lt!67371))) (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671)))))

(declare-fun d!49212 () Bool)

(declare-fun e!119303 () Bool)

(assert (=> d!49212 e!119303))

(declare-fun res!88932 () Bool)

(assert (=> d!49212 (=> res!88932 e!119303)))

(assert (=> d!49212 (= res!88932 (isEmpty!1617 lt!67371))))

(assert (=> d!49212 (= lt!67371 e!119302)))

(declare-fun c!37172 () Bool)

(assert (=> d!49212 (= c!37172 (and ((_ is Cons!3219) rules!1920) ((_ is Nil!3219) (t!28931 rules!1920))))))

(declare-fun lt!67368 () Unit!3036)

(declare-fun lt!67370 () Unit!3036)

(assert (=> d!49212 (= lt!67368 lt!67370)))

(assert (=> d!49212 (isPrefix!289 (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671) (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671))))

(assert (=> d!49212 (= lt!67370 (lemmaIsPrefixRefl!159 (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671) (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671)))))

(assert (=> d!49212 (rulesValidInductive!148 thiss!17480 rules!1920)))

(assert (=> d!49212 (= (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671)) lt!67371)))

(declare-fun b!194155 () Bool)

(assert (=> b!194155 (= e!119303 e!119301)))

(declare-fun res!88930 () Bool)

(assert (=> b!194155 (=> (not res!88930) (not e!119301))))

(assert (=> b!194155 (= res!88930 (isDefined!323 lt!67371))))

(declare-fun b!194159 () Bool)

(assert (=> b!194159 (= e!119302 call!9005)))

(declare-fun b!194160 () Bool)

(declare-fun res!88934 () Bool)

(assert (=> b!194160 (=> (not res!88934) (not e!119301))))

(assert (=> b!194160 (= res!88934 (< (size!2566 (_2!1869 (get!938 lt!67371))) (size!2566 (++!768 (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) lt!65671))))))

(assert (= (and d!49212 c!37172) b!194159))

(assert (= (and d!49212 (not c!37172)) b!194154))

(assert (= (or b!194159 b!194154) bm!9000))

(assert (= (and d!49212 (not res!88932)) b!194155))

(assert (= (and b!194155 res!88930) b!194153))

(assert (= (and b!194153 res!88933) b!194160))

(assert (= (and b!194160 res!88934) b!194158))

(assert (= (and b!194158 res!88928) b!194156))

(assert (= (and b!194156 res!88931) b!194157))

(assert (= (and b!194157 res!88929) b!194152))

(declare-fun m!203927 () Bool)

(assert (=> b!194158 m!203927))

(declare-fun m!203929 () Bool)

(assert (=> b!194158 m!203929))

(assert (=> b!194158 m!203929))

(declare-fun m!203931 () Bool)

(assert (=> b!194158 m!203931))

(assert (=> b!194158 m!203931))

(declare-fun m!203933 () Bool)

(assert (=> b!194158 m!203933))

(assert (=> bm!9000 m!197315))

(declare-fun m!203935 () Bool)

(assert (=> bm!9000 m!203935))

(declare-fun m!203937 () Bool)

(assert (=> b!194155 m!203937))

(assert (=> b!194153 m!203927))

(assert (=> b!194153 m!203929))

(assert (=> b!194153 m!203929))

(assert (=> b!194153 m!203931))

(assert (=> b!194152 m!203927))

(declare-fun m!203939 () Bool)

(assert (=> b!194152 m!203939))

(assert (=> b!194157 m!203927))

(assert (=> b!194157 m!203929))

(assert (=> b!194157 m!203929))

(assert (=> b!194157 m!203931))

(assert (=> b!194157 m!203931))

(declare-fun m!203941 () Bool)

(assert (=> b!194157 m!203941))

(assert (=> b!194156 m!203927))

(declare-fun m!203943 () Bool)

(assert (=> b!194156 m!203943))

(assert (=> b!194156 m!203943))

(declare-fun m!203945 () Bool)

(assert (=> b!194156 m!203945))

(declare-fun m!203947 () Bool)

(assert (=> d!49212 m!203947))

(assert (=> d!49212 m!197315))

(assert (=> d!49212 m!197315))

(declare-fun m!203949 () Bool)

(assert (=> d!49212 m!203949))

(assert (=> d!49212 m!197315))

(assert (=> d!49212 m!197315))

(declare-fun m!203951 () Bool)

(assert (=> d!49212 m!203951))

(assert (=> d!49212 m!196735))

(assert (=> b!194160 m!203927))

(declare-fun m!203953 () Bool)

(assert (=> b!194160 m!203953))

(assert (=> b!194160 m!197315))

(declare-fun m!203955 () Bool)

(assert (=> b!194160 m!203955))

(assert (=> b!194154 m!197315))

(declare-fun m!203957 () Bool)

(assert (=> b!194154 m!203957))

(assert (=> b!191371 d!49212))

(declare-fun d!49214 () Bool)

(assert (=> d!49214 (= (list!1179 (charsOf!248 (h!8617 (t!28932 tokens!465)))) (list!1183 (c!36425 (charsOf!248 (h!8617 (t!28932 tokens!465))))))))

(declare-fun bs!19328 () Bool)

(assert (= bs!19328 d!49214))

(declare-fun m!203959 () Bool)

(assert (=> bs!19328 m!203959))

(assert (=> b!191371 d!49214))

(declare-fun d!49216 () Bool)

(declare-fun lt!67372 () BalanceConc!2024)

(assert (=> d!49216 (= (list!1179 lt!67372) (originalCharacters!636 (h!8617 (t!28932 tokens!465))))))

(assert (=> d!49216 (= lt!67372 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (value!21216 (h!8617 (t!28932 tokens!465)))))))

(assert (=> d!49216 (= (charsOf!248 (h!8617 (t!28932 tokens!465))) lt!67372)))

(declare-fun b_lambda!4779 () Bool)

(assert (=> (not b_lambda!4779) (not d!49216)))

(declare-fun t!29405 () Bool)

(declare-fun tb!8203 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) t!29405) tb!8203))

(declare-fun b!194161 () Bool)

(declare-fun e!119304 () Bool)

(declare-fun tp!89036 () Bool)

(assert (=> b!194161 (= e!119304 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (value!21216 (h!8617 (t!28932 tokens!465)))))) tp!89036))))

(declare-fun result!11148 () Bool)

(assert (=> tb!8203 (= result!11148 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (value!21216 (h!8617 (t!28932 tokens!465))))) e!119304))))

(assert (= tb!8203 b!194161))

(declare-fun m!203961 () Bool)

(assert (=> b!194161 m!203961))

(declare-fun m!203963 () Bool)

(assert (=> tb!8203 m!203963))

(assert (=> d!49216 t!29405))

(declare-fun b_and!13649 () Bool)

(assert (= b_and!13643 (and (=> t!29405 result!11148) b_and!13649)))

(declare-fun tb!8205 () Bool)

(declare-fun t!29407 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) t!29407) tb!8205))

(declare-fun result!11150 () Bool)

(assert (= result!11150 result!11148))

(assert (=> d!49216 t!29407))

(declare-fun b_and!13651 () Bool)

(assert (= b_and!13647 (and (=> t!29407 result!11150) b_and!13651)))

(declare-fun tb!8207 () Bool)

(declare-fun t!29409 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) t!29409) tb!8207))

(declare-fun result!11152 () Bool)

(assert (= result!11152 result!11148))

(assert (=> d!49216 t!29409))

(declare-fun b_and!13653 () Bool)

(assert (= b_and!13641 (and (=> t!29409 result!11152) b_and!13653)))

(declare-fun t!29411 () Bool)

(declare-fun tb!8209 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) t!29411) tb!8209))

(declare-fun result!11154 () Bool)

(assert (= result!11154 result!11148))

(assert (=> d!49216 t!29411))

(declare-fun b_and!13655 () Bool)

(assert (= b_and!13645 (and (=> t!29411 result!11154) b_and!13655)))

(declare-fun t!29413 () Bool)

(declare-fun tb!8211 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) t!29413) tb!8211))

(declare-fun result!11156 () Bool)

(assert (= result!11156 result!11148))

(assert (=> d!49216 t!29413))

(declare-fun b_and!13657 () Bool)

(assert (= b_and!13639 (and (=> t!29413 result!11156) b_and!13657)))

(declare-fun m!203965 () Bool)

(assert (=> d!49216 m!203965))

(declare-fun m!203967 () Bool)

(assert (=> d!49216 m!203967))

(assert (=> b!191371 d!49216))

(declare-fun d!49218 () Bool)

(assert (=> d!49218 (= (inv!16 (value!21216 separatorToken!170)) (= (charsToInt!0 (text!4752 (value!21216 separatorToken!170))) (value!21207 (value!21216 separatorToken!170))))))

(declare-fun bs!19329 () Bool)

(assert (= bs!19329 d!49218))

(declare-fun m!203969 () Bool)

(assert (=> bs!19329 m!203969))

(assert (=> b!191627 d!49218))

(declare-fun bs!19330 () Bool)

(declare-fun b!194168 () Bool)

(assert (= bs!19330 (and b!194168 d!47456)))

(declare-fun lambda!5929 () Int)

(assert (=> bs!19330 (not (= lambda!5929 lambda!5845))))

(declare-fun bs!19331 () Bool)

(assert (= bs!19331 (and b!194168 b!190910)))

(assert (=> bs!19331 (= lambda!5929 lambda!5840)))

(declare-fun bs!19332 () Bool)

(assert (= bs!19332 (and b!194168 d!47636)))

(assert (=> bs!19332 (not (= lambda!5929 lambda!5863))))

(declare-fun bs!19333 () Bool)

(assert (= bs!19333 (and b!194168 d!48674)))

(assert (=> bs!19333 (not (= lambda!5929 lambda!5913))))

(declare-fun bs!19334 () Bool)

(assert (= bs!19334 (and b!194168 b!191608)))

(assert (=> bs!19334 (= lambda!5929 lambda!5865)))

(declare-fun bs!19335 () Bool)

(assert (= bs!19335 (and b!194168 b!193382)))

(assert (=> bs!19335 (= lambda!5929 lambda!5914)))

(declare-fun bs!19336 () Bool)

(assert (= bs!19336 (and b!194168 b!191262)))

(assert (=> bs!19336 (= lambda!5929 lambda!5846)))

(declare-fun bs!19337 () Bool)

(assert (= bs!19337 (and b!194168 d!48052)))

(assert (=> bs!19337 (not (= lambda!5929 lambda!5893))))

(declare-fun bs!19338 () Bool)

(assert (= bs!19338 (and b!194168 d!47584)))

(assert (=> bs!19338 (= lambda!5929 lambda!5859)))

(declare-fun bs!19339 () Bool)

(assert (= bs!19339 (and b!194168 b!191594)))

(assert (=> bs!19339 (= lambda!5929 lambda!5864)))

(declare-fun bs!19340 () Bool)

(assert (= bs!19340 (and b!194168 b!194144)))

(assert (=> bs!19340 (= lambda!5929 lambda!5928)))

(declare-fun bs!19341 () Bool)

(assert (= bs!19341 (and b!194168 b!190918)))

(assert (=> bs!19341 (not (= lambda!5929 lambda!5839))))

(declare-fun bs!19342 () Bool)

(assert (= bs!19342 (and b!194168 b!192388)))

(assert (=> bs!19342 (= lambda!5929 lambda!5894)))

(declare-fun bs!19343 () Bool)

(assert (= bs!19343 (and b!194168 b!191371)))

(assert (=> bs!19343 (= lambda!5929 lambda!5849)))

(declare-fun bs!19344 () Bool)

(assert (= bs!19344 (and b!194168 b!194090)))

(assert (=> bs!19344 (= lambda!5929 lambda!5926)))

(declare-fun b!194174 () Bool)

(declare-fun e!119312 () Bool)

(assert (=> b!194174 (= e!119312 true)))

(declare-fun b!194173 () Bool)

(declare-fun e!119311 () Bool)

(assert (=> b!194173 (= e!119311 e!119312)))

(declare-fun b!194172 () Bool)

(declare-fun e!119310 () Bool)

(assert (=> b!194172 (= e!119310 e!119311)))

(assert (=> b!194168 e!119310))

(assert (= b!194173 b!194174))

(assert (= b!194172 b!194173))

(assert (= (and b!194168 ((_ is Cons!3219) rules!1920)) b!194172))

(assert (=> b!194174 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5929))))

(assert (=> b!194174 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5929))))

(assert (=> b!194168 true))

(declare-fun d!49220 () Bool)

(declare-fun c!37177 () Bool)

(assert (=> d!49220 (= c!37177 ((_ is Cons!3220) (dropList!110 lt!65415 0)))))

(declare-fun e!119308 () List!3228)

(assert (=> d!49220 (= (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (dropList!110 lt!65415 0) separatorToken!170) e!119308)))

(declare-fun bm!9001 () Bool)

(declare-fun call!9006 () BalanceConc!2024)

(assert (=> bm!9001 (= call!9006 (charsOf!248 (h!8617 (dropList!110 lt!65415 0))))))

(declare-fun b!194162 () Bool)

(declare-fun c!37176 () Bool)

(declare-fun lt!67375 () Option!473)

(assert (=> b!194162 (= c!37176 (and ((_ is Some!472) lt!67375) (not (= (_1!1869 (v!13983 lt!67375)) (h!8617 (dropList!110 lt!65415 0))))))))

(declare-fun e!119307 () List!3228)

(declare-fun e!119306 () List!3228)

(assert (=> b!194162 (= e!119307 e!119306)))

(declare-fun bm!9002 () Bool)

(declare-fun call!9009 () BalanceConc!2024)

(assert (=> bm!9002 (= call!9009 call!9006)))

(declare-fun b!194163 () Bool)

(declare-fun e!119305 () BalanceConc!2024)

(assert (=> b!194163 (= e!119305 call!9009)))

(declare-fun b!194164 () Bool)

(assert (=> b!194164 (= e!119306 Nil!3218)))

(assert (=> b!194164 (= (print!210 thiss!17480 (singletonSeq!145 (h!8617 (dropList!110 lt!65415 0)))) (printTailRec!173 thiss!17480 (singletonSeq!145 (h!8617 (dropList!110 lt!65415 0))) 0 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!67374 () Unit!3036)

(declare-fun Unit!3094 () Unit!3036)

(assert (=> b!194164 (= lt!67374 Unit!3094)))

(declare-fun lt!67377 () List!3228)

(declare-fun call!9010 () List!3228)

(declare-fun lt!67376 () Unit!3036)

(assert (=> b!194164 (= lt!67376 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 call!9010 lt!67377))))

(assert (=> b!194164 false))

(declare-fun lt!67378 () Unit!3036)

(declare-fun Unit!3095 () Unit!3036)

(assert (=> b!194164 (= lt!67378 Unit!3095)))

(declare-fun b!194165 () Bool)

(declare-fun call!9007 () List!3228)

(assert (=> b!194165 (= e!119306 (++!768 call!9007 lt!67377))))

(declare-fun call!9008 () List!3228)

(declare-fun c!37173 () Bool)

(declare-fun bm!9003 () Bool)

(assert (=> bm!9003 (= call!9008 (list!1179 (ite c!37173 call!9006 e!119305)))))

(declare-fun bm!9004 () Bool)

(assert (=> bm!9004 (= call!9010 call!9008)))

(declare-fun c!37174 () Bool)

(assert (=> bm!9004 (= c!37174 c!37176)))

(declare-fun b!194166 () Bool)

(assert (=> b!194166 (= e!119307 call!9007)))

(declare-fun b!194167 () Bool)

(declare-fun e!119309 () List!3228)

(assert (=> b!194167 (= e!119309 (list!1179 call!9009))))

(declare-fun bm!9005 () Bool)

(declare-fun c!37175 () Bool)

(assert (=> bm!9005 (= c!37175 c!37173)))

(assert (=> bm!9005 (= call!9007 (++!768 e!119309 (ite c!37173 lt!67377 call!9010)))))

(assert (=> b!194168 (= e!119308 e!119307)))

(declare-fun lt!67373 () Unit!3036)

(assert (=> b!194168 (= lt!67373 (forallContained!160 (dropList!110 lt!65415 0) lambda!5929 (h!8617 (dropList!110 lt!65415 0))))))

(assert (=> b!194168 (= lt!67377 (printWithSeparatorTokenWhenNeededList!172 thiss!17480 rules!1920 (t!28932 (dropList!110 lt!65415 0)) separatorToken!170))))

(assert (=> b!194168 (= lt!67375 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 (charsOf!248 (h!8617 (dropList!110 lt!65415 0)))) lt!67377)))))

(assert (=> b!194168 (= c!37173 (and ((_ is Some!472) lt!67375) (= (_1!1869 (v!13983 lt!67375)) (h!8617 (dropList!110 lt!65415 0)))))))

(declare-fun b!194169 () Bool)

(assert (=> b!194169 (= e!119305 (charsOf!248 separatorToken!170))))

(declare-fun b!194170 () Bool)

(assert (=> b!194170 (= e!119309 call!9008)))

(declare-fun b!194171 () Bool)

(assert (=> b!194171 (= e!119308 Nil!3218)))

(assert (= (and d!49220 c!37177) b!194168))

(assert (= (and d!49220 (not c!37177)) b!194171))

(assert (= (and b!194168 c!37173) b!194166))

(assert (= (and b!194168 (not c!37173)) b!194162))

(assert (= (and b!194162 c!37176) b!194165))

(assert (= (and b!194162 (not c!37176)) b!194164))

(assert (= (or b!194165 b!194164) bm!9002))

(assert (= (or b!194165 b!194164) bm!9004))

(assert (= (and bm!9004 c!37174) b!194169))

(assert (= (and bm!9004 (not c!37174)) b!194163))

(assert (= (or b!194166 bm!9002) bm!9001))

(assert (= (or b!194166 bm!9004) bm!9003))

(assert (= (or b!194166 b!194165) bm!9005))

(assert (= (and bm!9005 c!37175) b!194170))

(assert (= (and bm!9005 (not c!37175)) b!194167))

(declare-fun m!203971 () Bool)

(assert (=> b!194167 m!203971))

(declare-fun m!203973 () Bool)

(assert (=> b!194165 m!203973))

(assert (=> b!194169 m!196439))

(declare-fun m!203975 () Bool)

(assert (=> bm!9005 m!203975))

(declare-fun m!203977 () Bool)

(assert (=> b!194168 m!203977))

(declare-fun m!203979 () Bool)

(assert (=> b!194168 m!203979))

(declare-fun m!203981 () Bool)

(assert (=> b!194168 m!203981))

(declare-fun m!203983 () Bool)

(assert (=> b!194168 m!203983))

(assert (=> b!194168 m!203979))

(assert (=> b!194168 m!197625))

(declare-fun m!203985 () Bool)

(assert (=> b!194168 m!203985))

(assert (=> b!194168 m!203983))

(assert (=> b!194168 m!203981))

(declare-fun m!203987 () Bool)

(assert (=> b!194168 m!203987))

(assert (=> bm!9001 m!203983))

(declare-fun m!203989 () Bool)

(assert (=> b!194164 m!203989))

(assert (=> b!194164 m!203989))

(declare-fun m!203991 () Bool)

(assert (=> b!194164 m!203991))

(assert (=> b!194164 m!203989))

(declare-fun m!203993 () Bool)

(assert (=> b!194164 m!203993))

(declare-fun m!203995 () Bool)

(assert (=> b!194164 m!203995))

(declare-fun m!203997 () Bool)

(assert (=> bm!9003 m!203997))

(assert (=> d!47636 d!49220))

(declare-fun d!49222 () Bool)

(declare-fun lt!67379 () Int)

(assert (=> d!49222 (= lt!67379 (size!2570 (list!1182 lt!65415)))))

(assert (=> d!49222 (= lt!67379 (size!2571 (c!36427 lt!65415)))))

(assert (=> d!49222 (= (size!2563 lt!65415) lt!67379)))

(declare-fun bs!19345 () Bool)

(assert (= bs!19345 d!49222))

(assert (=> bs!19345 m!197467))

(assert (=> bs!19345 m!197467))

(declare-fun m!203999 () Bool)

(assert (=> bs!19345 m!203999))

(declare-fun m!204001 () Bool)

(assert (=> bs!19345 m!204001))

(assert (=> d!47636 d!49222))

(declare-fun d!49224 () Bool)

(assert (=> d!49224 (= (dropList!110 lt!65415 0) (drop!163 (list!1186 (c!36427 lt!65415)) 0))))

(declare-fun bs!19346 () Bool)

(assert (= bs!19346 d!49224))

(assert (=> bs!19346 m!201943))

(assert (=> bs!19346 m!201943))

(declare-fun m!204003 () Bool)

(assert (=> bs!19346 m!204003))

(assert (=> d!47636 d!49224))

(declare-fun d!49226 () Bool)

(assert (=> d!49226 (= (list!1179 lt!65795) (list!1183 (c!36425 lt!65795)))))

(declare-fun bs!19347 () Bool)

(assert (= bs!19347 d!49226))

(declare-fun m!204005 () Bool)

(assert (=> bs!19347 m!204005))

(assert (=> d!47636 d!49226))

(assert (=> d!47636 d!48704))

(declare-fun d!49228 () Bool)

(assert (=> d!49228 (forall!675 (dropList!110 lt!65415 0) lambda!5863)))

(declare-fun lt!67380 () Unit!3036)

(assert (=> d!49228 (= lt!67380 (choose!1954 (list!1182 lt!65415) (dropList!110 lt!65415 0) lambda!5863))))

(assert (=> d!49228 (forall!675 (list!1182 lt!65415) lambda!5863)))

(assert (=> d!49228 (= (lemmaContentSubsetPreservesForall!53 (list!1182 lt!65415) (dropList!110 lt!65415 0) lambda!5863) lt!67380)))

(declare-fun bs!19348 () Bool)

(assert (= bs!19348 d!49228))

(assert (=> bs!19348 m!197625))

(declare-fun m!204007 () Bool)

(assert (=> bs!19348 m!204007))

(assert (=> bs!19348 m!197467))

(assert (=> bs!19348 m!197625))

(declare-fun m!204009 () Bool)

(assert (=> bs!19348 m!204009))

(assert (=> bs!19348 m!197467))

(declare-fun m!204011 () Bool)

(assert (=> bs!19348 m!204011))

(assert (=> d!47636 d!49228))

(declare-fun d!49230 () Bool)

(declare-fun lt!67381 () Int)

(assert (=> d!49230 (>= lt!67381 0)))

(declare-fun e!119313 () Int)

(assert (=> d!49230 (= lt!67381 e!119313)))

(declare-fun c!37178 () Bool)

(assert (=> d!49230 (= c!37178 ((_ is Nil!3218) (_2!1869 (get!938 lt!65874))))))

(assert (=> d!49230 (= (size!2566 (_2!1869 (get!938 lt!65874))) lt!67381)))

(declare-fun b!194175 () Bool)

(assert (=> b!194175 (= e!119313 0)))

(declare-fun b!194176 () Bool)

(assert (=> b!194176 (= e!119313 (+ 1 (size!2566 (t!28930 (_2!1869 (get!938 lt!65874))))))))

(assert (= (and d!49230 c!37178) b!194175))

(assert (= (and d!49230 (not c!37178)) b!194176))

(declare-fun m!204013 () Bool)

(assert (=> b!194176 m!204013))

(assert (=> b!191695 d!49230))

(assert (=> b!191695 d!48086))

(assert (=> b!191695 d!48018))

(assert (=> b!191593 d!49222))

(declare-fun d!49232 () Bool)

(declare-fun lt!67382 () Int)

(assert (=> d!49232 (>= lt!67382 0)))

(declare-fun e!119314 () Int)

(assert (=> d!49232 (= lt!67382 e!119314)))

(declare-fun c!37179 () Bool)

(assert (=> d!49232 (= c!37179 ((_ is Nil!3218) (_2!1869 (get!938 lt!65949))))))

(assert (=> d!49232 (= (size!2566 (_2!1869 (get!938 lt!65949))) lt!67382)))

(declare-fun b!194177 () Bool)

(assert (=> b!194177 (= e!119314 0)))

(declare-fun b!194178 () Bool)

(assert (=> b!194178 (= e!119314 (+ 1 (size!2566 (t!28930 (_2!1869 (get!938 lt!65949))))))))

(assert (= (and d!49232 c!37179) b!194177))

(assert (= (and d!49232 (not c!37179)) b!194178))

(declare-fun m!204015 () Bool)

(assert (=> b!194178 m!204015))

(assert (=> b!191863 d!49232))

(assert (=> b!191863 d!48194))

(assert (=> b!191863 d!48016))

(declare-fun d!49234 () Bool)

(declare-fun lt!67383 () Token!930)

(assert (=> d!49234 (contains!514 (list!1182 (_1!1867 lt!65414)) lt!67383)))

(declare-fun e!119316 () Token!930)

(assert (=> d!49234 (= lt!67383 e!119316)))

(declare-fun c!37180 () Bool)

(assert (=> d!49234 (= c!37180 (= 0 0))))

(declare-fun e!119315 () Bool)

(assert (=> d!49234 e!119315))

(declare-fun res!88935 () Bool)

(assert (=> d!49234 (=> (not res!88935) (not e!119315))))

(assert (=> d!49234 (= res!88935 (<= 0 0))))

(assert (=> d!49234 (= (apply!497 (list!1182 (_1!1867 lt!65414)) 0) lt!67383)))

(declare-fun b!194179 () Bool)

(assert (=> b!194179 (= e!119315 (< 0 (size!2570 (list!1182 (_1!1867 lt!65414)))))))

(declare-fun b!194180 () Bool)

(assert (=> b!194180 (= e!119316 (head!682 (list!1182 (_1!1867 lt!65414))))))

(declare-fun b!194181 () Bool)

(assert (=> b!194181 (= e!119316 (apply!497 (tail!385 (list!1182 (_1!1867 lt!65414))) (- 0 1)))))

(assert (= (and d!49234 res!88935) b!194179))

(assert (= (and d!49234 c!37180) b!194180))

(assert (= (and d!49234 (not c!37180)) b!194181))

(assert (=> d!49234 m!197439))

(declare-fun m!204017 () Bool)

(assert (=> d!49234 m!204017))

(assert (=> b!194179 m!197439))

(assert (=> b!194179 m!197951))

(assert (=> b!194180 m!197439))

(declare-fun m!204019 () Bool)

(assert (=> b!194180 m!204019))

(assert (=> b!194181 m!197439))

(declare-fun m!204021 () Bool)

(assert (=> b!194181 m!204021))

(assert (=> b!194181 m!204021))

(declare-fun m!204023 () Bool)

(assert (=> b!194181 m!204023))

(assert (=> d!47582 d!49234))

(assert (=> d!47582 d!49172))

(declare-fun b!194196 () Bool)

(declare-fun e!119325 () Token!930)

(declare-fun call!9013 () Token!930)

(assert (=> b!194196 (= e!119325 call!9013)))

(declare-fun b!194197 () Bool)

(assert (=> b!194197 (= e!119325 call!9013)))

(declare-fun b!194198 () Bool)

(declare-fun e!119326 () Token!930)

(assert (=> b!194198 (= e!119326 e!119325)))

(declare-fun lt!67388 () Bool)

(declare-fun appendIndex!12 (List!3230 List!3230 Int) Bool)

(assert (=> b!194198 (= lt!67388 (appendIndex!12 (list!1186 (left!2548 (c!36427 (_1!1867 lt!65414)))) (list!1186 (right!2878 (c!36427 (_1!1867 lt!65414)))) 0))))

(declare-fun c!37188 () Bool)

(assert (=> b!194198 (= c!37188 (< 0 (size!2571 (left!2548 (c!36427 (_1!1867 lt!65414))))))))

(declare-fun d!49236 () Bool)

(declare-fun lt!67389 () Token!930)

(assert (=> d!49236 (= lt!67389 (apply!497 (list!1186 (c!36427 (_1!1867 lt!65414))) 0))))

(assert (=> d!49236 (= lt!67389 e!119326)))

(declare-fun c!37187 () Bool)

(assert (=> d!49236 (= c!37187 ((_ is Leaf!1645) (c!36427 (_1!1867 lt!65414))))))

(declare-fun e!119327 () Bool)

(assert (=> d!49236 e!119327))

(declare-fun res!88938 () Bool)

(assert (=> d!49236 (=> (not res!88938) (not e!119327))))

(assert (=> d!49236 (= res!88938 (<= 0 0))))

(assert (=> d!49236 (= (apply!498 (c!36427 (_1!1867 lt!65414)) 0) lt!67389)))

(declare-fun b!194199 () Bool)

(declare-fun apply!500 (IArray!2019 Int) Token!930)

(assert (=> b!194199 (= e!119326 (apply!500 (xs!3604 (c!36427 (_1!1867 lt!65414))) 0))))

(declare-fun b!194200 () Bool)

(declare-fun e!119328 () Int)

(assert (=> b!194200 (= e!119328 (- 0 (size!2571 (left!2548 (c!36427 (_1!1867 lt!65414))))))))

(declare-fun b!194201 () Bool)

(assert (=> b!194201 (= e!119327 (< 0 (size!2571 (c!36427 (_1!1867 lt!65414)))))))

(declare-fun bm!9008 () Bool)

(declare-fun c!37189 () Bool)

(assert (=> bm!9008 (= c!37189 c!37188)))

(assert (=> bm!9008 (= call!9013 (apply!498 (ite c!37188 (left!2548 (c!36427 (_1!1867 lt!65414))) (right!2878 (c!36427 (_1!1867 lt!65414)))) e!119328))))

(declare-fun b!194202 () Bool)

(assert (=> b!194202 (= e!119328 0)))

(assert (= (and d!49236 res!88938) b!194201))

(assert (= (and d!49236 c!37187) b!194199))

(assert (= (and d!49236 (not c!37187)) b!194198))

(assert (= (and b!194198 c!37188) b!194197))

(assert (= (and b!194198 (not c!37188)) b!194196))

(assert (= (or b!194197 b!194196) bm!9008))

(assert (= (and bm!9008 c!37189) b!194202))

(assert (= (and bm!9008 (not c!37189)) b!194200))

(declare-fun m!204025 () Bool)

(assert (=> b!194198 m!204025))

(declare-fun m!204027 () Bool)

(assert (=> b!194198 m!204027))

(assert (=> b!194198 m!204025))

(assert (=> b!194198 m!204027))

(declare-fun m!204029 () Bool)

(assert (=> b!194198 m!204029))

(declare-fun m!204031 () Bool)

(assert (=> b!194198 m!204031))

(declare-fun m!204033 () Bool)

(assert (=> bm!9008 m!204033))

(assert (=> b!194200 m!204031))

(declare-fun m!204035 () Bool)

(assert (=> b!194199 m!204035))

(assert (=> b!194201 m!197953))

(assert (=> d!49236 m!203813))

(assert (=> d!49236 m!203813))

(declare-fun m!204037 () Bool)

(assert (=> d!49236 m!204037))

(assert (=> d!47582 d!49236))

(declare-fun d!49238 () Bool)

(assert (=> d!49238 (= (list!1182 lt!65785) (list!1186 (c!36427 lt!65785)))))

(declare-fun bs!19349 () Bool)

(assert (= bs!19349 d!49238))

(declare-fun m!204039 () Bool)

(assert (=> bs!19349 m!204039))

(assert (=> d!47622 d!49238))

(declare-fun d!49240 () Bool)

(declare-fun e!119329 () Bool)

(assert (=> d!49240 e!119329))

(declare-fun res!88939 () Bool)

(assert (=> d!49240 (=> (not res!88939) (not e!119329))))

(declare-fun lt!67390 () BalanceConc!2026)

(assert (=> d!49240 (= res!88939 (= (list!1182 lt!67390) (Cons!3220 (h!8617 tokens!465) Nil!3220)))))

(assert (=> d!49240 (= lt!67390 (choose!1952 (h!8617 tokens!465)))))

(assert (=> d!49240 (= (singleton!59 (h!8617 tokens!465)) lt!67390)))

(declare-fun b!194203 () Bool)

(assert (=> b!194203 (= e!119329 (isBalanced!264 (c!36427 lt!67390)))))

(assert (= (and d!49240 res!88939) b!194203))

(declare-fun m!204041 () Bool)

(assert (=> d!49240 m!204041))

(declare-fun m!204043 () Bool)

(assert (=> d!49240 m!204043))

(declare-fun m!204045 () Bool)

(assert (=> b!194203 m!204045))

(assert (=> d!47622 d!49240))

(declare-fun d!49242 () Bool)

(assert (=> d!49242 (= (list!1179 lt!65626) (list!1183 (c!36425 lt!65626)))))

(declare-fun bs!19350 () Bool)

(assert (= bs!19350 d!49242))

(declare-fun m!204047 () Bool)

(assert (=> bs!19350 m!204047))

(assert (=> d!47514 d!49242))

(declare-fun b!194204 () Bool)

(declare-fun e!119330 () Bool)

(declare-fun e!119331 () Bool)

(assert (=> b!194204 (= e!119330 e!119331)))

(declare-fun res!88941 () Bool)

(assert (=> b!194204 (=> (not res!88941) (not e!119331))))

(assert (=> b!194204 (= res!88941 (<= (- 1) (- (height!103 (left!2548 (c!36427 lt!65889))) (height!103 (right!2878 (c!36427 lt!65889))))))))

(declare-fun d!49244 () Bool)

(declare-fun res!88945 () Bool)

(assert (=> d!49244 (=> res!88945 e!119330)))

(assert (=> d!49244 (= res!88945 (not ((_ is Node!1009) (c!36427 lt!65889))))))

(assert (=> d!49244 (= (isBalanced!264 (c!36427 lt!65889)) e!119330)))

(declare-fun b!194205 () Bool)

(declare-fun res!88940 () Bool)

(assert (=> b!194205 (=> (not res!88940) (not e!119331))))

(assert (=> b!194205 (= res!88940 (isBalanced!264 (left!2548 (c!36427 lt!65889))))))

(declare-fun b!194206 () Bool)

(declare-fun res!88943 () Bool)

(assert (=> b!194206 (=> (not res!88943) (not e!119331))))

(assert (=> b!194206 (= res!88943 (<= (- (height!103 (left!2548 (c!36427 lt!65889))) (height!103 (right!2878 (c!36427 lt!65889)))) 1))))

(declare-fun b!194207 () Bool)

(declare-fun res!88942 () Bool)

(assert (=> b!194207 (=> (not res!88942) (not e!119331))))

(assert (=> b!194207 (= res!88942 (isBalanced!264 (right!2878 (c!36427 lt!65889))))))

(declare-fun b!194208 () Bool)

(assert (=> b!194208 (= e!119331 (not (isEmpty!1620 (right!2878 (c!36427 lt!65889)))))))

(declare-fun b!194209 () Bool)

(declare-fun res!88944 () Bool)

(assert (=> b!194209 (=> (not res!88944) (not e!119331))))

(assert (=> b!194209 (= res!88944 (not (isEmpty!1620 (left!2548 (c!36427 lt!65889)))))))

(assert (= (and d!49244 (not res!88945)) b!194204))

(assert (= (and b!194204 res!88941) b!194206))

(assert (= (and b!194206 res!88943) b!194205))

(assert (= (and b!194205 res!88940) b!194207))

(assert (= (and b!194207 res!88942) b!194209))

(assert (= (and b!194209 res!88944) b!194208))

(declare-fun m!204049 () Bool)

(assert (=> b!194207 m!204049))

(declare-fun m!204051 () Bool)

(assert (=> b!194204 m!204051))

(declare-fun m!204053 () Bool)

(assert (=> b!194204 m!204053))

(declare-fun m!204055 () Bool)

(assert (=> b!194209 m!204055))

(declare-fun m!204057 () Bool)

(assert (=> b!194208 m!204057))

(declare-fun m!204059 () Bool)

(assert (=> b!194205 m!204059))

(assert (=> b!194206 m!204051))

(assert (=> b!194206 m!204053))

(assert (=> b!191720 d!49244))

(assert (=> b!191469 d!48718))

(assert (=> b!191469 d!48010))

(declare-fun d!49246 () Bool)

(declare-fun lt!67391 () Int)

(assert (=> d!49246 (>= lt!67391 0)))

(declare-fun e!119332 () Int)

(assert (=> d!49246 (= lt!67391 e!119332)))

(declare-fun c!37190 () Bool)

(assert (=> d!49246 (= c!37190 ((_ is Nil!3218) lt!65625))))

(assert (=> d!49246 (= (size!2566 lt!65625) lt!67391)))

(declare-fun b!194210 () Bool)

(assert (=> b!194210 (= e!119332 0)))

(declare-fun b!194211 () Bool)

(assert (=> b!194211 (= e!119332 (+ 1 (size!2566 (t!28930 lt!65625))))))

(assert (= (and d!49246 c!37190) b!194210))

(assert (= (and d!49246 (not c!37190)) b!194211))

(declare-fun m!204061 () Bool)

(assert (=> b!194211 m!204061))

(assert (=> b!191303 d!49246))

(declare-fun d!49248 () Bool)

(declare-fun lt!67392 () Int)

(assert (=> d!49248 (>= lt!67392 0)))

(declare-fun e!119333 () Int)

(assert (=> d!49248 (= lt!67392 e!119333)))

(declare-fun c!37191 () Bool)

(assert (=> d!49248 (= c!37191 ((_ is Nil!3218) (++!768 lt!65413 lt!65438)))))

(assert (=> d!49248 (= (size!2566 (++!768 lt!65413 lt!65438)) lt!67392)))

(declare-fun b!194212 () Bool)

(assert (=> b!194212 (= e!119333 0)))

(declare-fun b!194213 () Bool)

(assert (=> b!194213 (= e!119333 (+ 1 (size!2566 (t!28930 (++!768 lt!65413 lt!65438)))))))

(assert (= (and d!49248 c!37191) b!194212))

(assert (= (and d!49248 (not c!37191)) b!194213))

(assert (=> b!194213 m!203807))

(assert (=> b!191303 d!49248))

(assert (=> b!191303 d!48844))

(declare-fun d!49250 () Bool)

(declare-fun lt!67393 () Bool)

(assert (=> d!49250 (= lt!67393 (isEmpty!1609 (list!1179 (_2!1867 lt!65816))))))

(assert (=> d!49250 (= lt!67393 (isEmpty!1616 (c!36425 (_2!1867 lt!65816))))))

(assert (=> d!49250 (= (isEmpty!1608 (_2!1867 lt!65816)) lt!67393)))

(declare-fun bs!19351 () Bool)

(assert (= bs!19351 d!49250))

(declare-fun m!204063 () Bool)

(assert (=> bs!19351 m!204063))

(assert (=> bs!19351 m!204063))

(declare-fun m!204065 () Bool)

(assert (=> bs!19351 m!204065))

(declare-fun m!204067 () Bool)

(assert (=> bs!19351 m!204067))

(assert (=> b!191652 d!49250))

(declare-fun d!49252 () Bool)

(assert (=> d!49252 (= (inv!4037 (tag!771 (h!8616 (t!28931 rules!1920)))) (= (mod (str.len (value!21215 (tag!771 (h!8616 (t!28931 rules!1920))))) 2) 0))))

(assert (=> b!191920 d!49252))

(declare-fun d!49254 () Bool)

(declare-fun res!88946 () Bool)

(declare-fun e!119334 () Bool)

(assert (=> d!49254 (=> (not res!88946) (not e!119334))))

(assert (=> d!49254 (= res!88946 (semiInverseModEq!201 (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920))))))))

(assert (=> d!49254 (= (inv!4040 (transformation!593 (h!8616 (t!28931 rules!1920)))) e!119334)))

(declare-fun b!194214 () Bool)

(assert (=> b!194214 (= e!119334 (equivClasses!184 (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920))))))))

(assert (= (and d!49254 res!88946) b!194214))

(declare-fun m!204069 () Bool)

(assert (=> d!49254 m!204069))

(declare-fun m!204071 () Bool)

(assert (=> b!194214 m!204071))

(assert (=> b!191920 d!49254))

(declare-fun d!49256 () Bool)

(assert (=> d!49256 (= (inv!17 (value!21216 (h!8617 tokens!465))) (= (charsToBigInt!1 (text!4753 (value!21216 (h!8617 tokens!465)))) (value!21208 (value!21216 (h!8617 tokens!465)))))))

(declare-fun bs!19352 () Bool)

(assert (= bs!19352 d!49256))

(declare-fun m!204073 () Bool)

(assert (=> bs!19352 m!204073))

(assert (=> b!191867 d!49256))

(declare-fun d!49258 () Bool)

(declare-fun e!119335 () Bool)

(assert (=> d!49258 e!119335))

(declare-fun res!88947 () Bool)

(assert (=> d!49258 (=> (not res!88947) (not e!119335))))

(declare-fun lt!67394 () List!3228)

(assert (=> d!49258 (= res!88947 (= (content!430 lt!67394) ((_ map or) (content!430 (t!28930 lt!65438)) (content!430 lt!65427))))))

(declare-fun e!119336 () List!3228)

(assert (=> d!49258 (= lt!67394 e!119336)))

(declare-fun c!37192 () Bool)

(assert (=> d!49258 (= c!37192 ((_ is Nil!3218) (t!28930 lt!65438)))))

(assert (=> d!49258 (= (++!768 (t!28930 lt!65438) lt!65427) lt!67394)))

(declare-fun b!194215 () Bool)

(assert (=> b!194215 (= e!119336 lt!65427)))

(declare-fun b!194217 () Bool)

(declare-fun res!88948 () Bool)

(assert (=> b!194217 (=> (not res!88948) (not e!119335))))

(assert (=> b!194217 (= res!88948 (= (size!2566 lt!67394) (+ (size!2566 (t!28930 lt!65438)) (size!2566 lt!65427))))))

(declare-fun b!194216 () Bool)

(assert (=> b!194216 (= e!119336 (Cons!3218 (h!8615 (t!28930 lt!65438)) (++!768 (t!28930 (t!28930 lt!65438)) lt!65427)))))

(declare-fun b!194218 () Bool)

(assert (=> b!194218 (= e!119335 (or (not (= lt!65427 Nil!3218)) (= lt!67394 (t!28930 lt!65438))))))

(assert (= (and d!49258 c!37192) b!194215))

(assert (= (and d!49258 (not c!37192)) b!194216))

(assert (= (and d!49258 res!88947) b!194217))

(assert (= (and b!194217 res!88948) b!194218))

(declare-fun m!204075 () Bool)

(assert (=> d!49258 m!204075))

(assert (=> d!49258 m!199521))

(assert (=> d!49258 m!197135))

(declare-fun m!204077 () Bool)

(assert (=> b!194217 m!204077))

(assert (=> b!194217 m!200003))

(assert (=> b!194217 m!197141))

(declare-fun m!204079 () Bool)

(assert (=> b!194216 m!204079))

(assert (=> b!191317 d!49258))

(declare-fun d!49260 () Bool)

(assert (=> d!49260 (= (isDefined!323 lt!65493) (not (isEmpty!1617 lt!65493)))))

(declare-fun bs!19353 () Bool)

(assert (= bs!19353 d!49260))

(assert (=> bs!19353 m!196729))

(assert (=> b!191056 d!49260))

(assert (=> d!47632 d!47622))

(declare-fun d!49262 () Bool)

(assert (=> d!49262 (= (list!1182 (singletonSeq!145 (h!8617 tokens!465))) (list!1186 (c!36427 (singletonSeq!145 (h!8617 tokens!465)))))))

(declare-fun bs!19354 () Bool)

(assert (= bs!19354 d!49262))

(declare-fun m!204081 () Bool)

(assert (=> bs!19354 m!204081))

(assert (=> d!47632 d!49262))

(declare-fun d!49264 () Bool)

(declare-fun lt!67395 () Int)

(assert (=> d!49264 (= lt!67395 (size!2570 (list!1182 (_1!1867 lt!65787))))))

(assert (=> d!49264 (= lt!67395 (size!2571 (c!36427 (_1!1867 lt!65787))))))

(assert (=> d!49264 (= (size!2563 (_1!1867 lt!65787)) lt!67395)))

(declare-fun bs!19355 () Bool)

(assert (= bs!19355 d!49264))

(assert (=> bs!19355 m!203869))

(assert (=> bs!19355 m!203869))

(declare-fun m!204083 () Bool)

(assert (=> bs!19355 m!204083))

(declare-fun m!204085 () Bool)

(assert (=> bs!19355 m!204085))

(assert (=> d!47632 d!49264))

(assert (=> d!47632 d!49060))

(declare-fun d!49266 () Bool)

(assert (=> d!49266 (= (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465)))))) (list!1186 (c!36427 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 (h!8617 tokens!465))))))))))

(declare-fun bs!19356 () Bool)

(assert (= bs!19356 d!49266))

(declare-fun m!204087 () Bool)

(assert (=> bs!19356 m!204087))

(assert (=> d!47632 d!49266))

(assert (=> d!47632 d!47748))

(assert (=> d!47632 d!48524))

(declare-fun bs!19357 () Bool)

(declare-fun d!49268 () Bool)

(assert (= bs!19357 (and d!49268 d!47456)))

(declare-fun lambda!5932 () Int)

(assert (=> bs!19357 (not (= lambda!5932 lambda!5845))))

(declare-fun bs!19358 () Bool)

(assert (= bs!19358 (and d!49268 b!190910)))

(assert (=> bs!19358 (= lambda!5932 lambda!5840)))

(declare-fun bs!19359 () Bool)

(assert (= bs!19359 (and d!49268 d!47636)))

(assert (=> bs!19359 (not (= lambda!5932 lambda!5863))))

(declare-fun bs!19360 () Bool)

(assert (= bs!19360 (and d!49268 d!48674)))

(assert (=> bs!19360 (not (= lambda!5932 lambda!5913))))

(declare-fun bs!19361 () Bool)

(assert (= bs!19361 (and d!49268 b!191608)))

(assert (=> bs!19361 (= lambda!5932 lambda!5865)))

(declare-fun bs!19362 () Bool)

(assert (= bs!19362 (and d!49268 b!193382)))

(assert (=> bs!19362 (= lambda!5932 lambda!5914)))

(declare-fun bs!19363 () Bool)

(assert (= bs!19363 (and d!49268 b!194168)))

(assert (=> bs!19363 (= lambda!5932 lambda!5929)))

(declare-fun bs!19364 () Bool)

(assert (= bs!19364 (and d!49268 b!191262)))

(assert (=> bs!19364 (= lambda!5932 lambda!5846)))

(declare-fun bs!19365 () Bool)

(assert (= bs!19365 (and d!49268 d!48052)))

(assert (=> bs!19365 (not (= lambda!5932 lambda!5893))))

(declare-fun bs!19366 () Bool)

(assert (= bs!19366 (and d!49268 d!47584)))

(assert (=> bs!19366 (= lambda!5932 lambda!5859)))

(declare-fun bs!19367 () Bool)

(assert (= bs!19367 (and d!49268 b!191594)))

(assert (=> bs!19367 (= lambda!5932 lambda!5864)))

(declare-fun bs!19368 () Bool)

(assert (= bs!19368 (and d!49268 b!194144)))

(assert (=> bs!19368 (= lambda!5932 lambda!5928)))

(declare-fun bs!19369 () Bool)

(assert (= bs!19369 (and d!49268 b!190918)))

(assert (=> bs!19369 (not (= lambda!5932 lambda!5839))))

(declare-fun bs!19370 () Bool)

(assert (= bs!19370 (and d!49268 b!192388)))

(assert (=> bs!19370 (= lambda!5932 lambda!5894)))

(declare-fun bs!19371 () Bool)

(assert (= bs!19371 (and d!49268 b!191371)))

(assert (=> bs!19371 (= lambda!5932 lambda!5849)))

(declare-fun bs!19372 () Bool)

(assert (= bs!19372 (and d!49268 b!194090)))

(assert (=> bs!19372 (= lambda!5932 lambda!5926)))

(declare-fun b!194227 () Bool)

(declare-fun e!119345 () Bool)

(assert (=> b!194227 (= e!119345 true)))

(declare-fun b!194226 () Bool)

(declare-fun e!119344 () Bool)

(assert (=> b!194226 (= e!119344 e!119345)))

(declare-fun b!194225 () Bool)

(declare-fun e!119343 () Bool)

(assert (=> b!194225 (= e!119343 e!119344)))

(assert (=> d!49268 e!119343))

(assert (= b!194226 b!194227))

(assert (= b!194225 b!194226))

(assert (= (and d!49268 ((_ is Cons!3219) rules!1920)) b!194225))

(assert (=> b!194227 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5932))))

(assert (=> b!194227 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (dynLambda!1370 order!2035 lambda!5932))))

(assert (=> d!49268 true))

(declare-fun lt!67398 () Bool)

(assert (=> d!49268 (= lt!67398 (forall!675 (list!1182 lt!65415) lambda!5932))))

(declare-fun e!119341 () Bool)

(assert (=> d!49268 (= lt!67398 e!119341)))

(declare-fun res!88953 () Bool)

(assert (=> d!49268 (=> res!88953 e!119341)))

(assert (=> d!49268 (= res!88953 (not ((_ is Cons!3220) (list!1182 lt!65415))))))

(assert (=> d!49268 (not (isEmpty!1610 rules!1920))))

(assert (=> d!49268 (= (rulesProduceEachTokenIndividuallyList!154 thiss!17480 rules!1920 (list!1182 lt!65415)) lt!67398)))

(declare-fun b!194223 () Bool)

(declare-fun e!119342 () Bool)

(assert (=> b!194223 (= e!119341 e!119342)))

(declare-fun res!88954 () Bool)

(assert (=> b!194223 (=> (not res!88954) (not e!119342))))

(assert (=> b!194223 (= res!88954 (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (h!8617 (list!1182 lt!65415))))))

(declare-fun b!194224 () Bool)

(assert (=> b!194224 (= e!119342 (rulesProduceEachTokenIndividuallyList!154 thiss!17480 rules!1920 (t!28932 (list!1182 lt!65415))))))

(assert (= (and d!49268 (not res!88953)) b!194223))

(assert (= (and b!194223 res!88954) b!194224))

(assert (=> d!49268 m!197467))

(declare-fun m!204089 () Bool)

(assert (=> d!49268 m!204089))

(assert (=> d!49268 m!196433))

(declare-fun m!204091 () Bool)

(assert (=> b!194223 m!204091))

(declare-fun m!204093 () Bool)

(assert (=> b!194224 m!204093))

(assert (=> b!191498 d!49268))

(assert (=> b!191498 d!48704))

(declare-fun d!49270 () Bool)

(declare-fun res!88955 () Bool)

(declare-fun e!119346 () Bool)

(assert (=> d!49270 (=> (not res!88955) (not e!119346))))

(assert (=> d!49270 (= res!88955 (not (isEmpty!1609 (originalCharacters!636 (h!8617 (t!28932 tokens!465))))))))

(assert (=> d!49270 (= (inv!4041 (h!8617 (t!28932 tokens!465))) e!119346)))

(declare-fun b!194228 () Bool)

(declare-fun res!88956 () Bool)

(assert (=> b!194228 (=> (not res!88956) (not e!119346))))

(assert (=> b!194228 (= res!88956 (= (originalCharacters!636 (h!8617 (t!28932 tokens!465))) (list!1179 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (value!21216 (h!8617 (t!28932 tokens!465)))))))))

(declare-fun b!194229 () Bool)

(assert (=> b!194229 (= e!119346 (= (size!2562 (h!8617 (t!28932 tokens!465))) (size!2566 (originalCharacters!636 (h!8617 (t!28932 tokens!465))))))))

(assert (= (and d!49270 res!88955) b!194228))

(assert (= (and b!194228 res!88956) b!194229))

(declare-fun b_lambda!4781 () Bool)

(assert (=> (not b_lambda!4781) (not b!194228)))

(assert (=> b!194228 t!29405))

(declare-fun b_and!13659 () Bool)

(assert (= b_and!13649 (and (=> t!29405 result!11148) b_and!13659)))

(assert (=> b!194228 t!29411))

(declare-fun b_and!13661 () Bool)

(assert (= b_and!13655 (and (=> t!29411 result!11154) b_and!13661)))

(assert (=> b!194228 t!29409))

(declare-fun b_and!13663 () Bool)

(assert (= b_and!13653 (and (=> t!29409 result!11152) b_and!13663)))

(assert (=> b!194228 t!29407))

(declare-fun b_and!13665 () Bool)

(assert (= b_and!13651 (and (=> t!29407 result!11150) b_and!13665)))

(assert (=> b!194228 t!29413))

(declare-fun b_and!13667 () Bool)

(assert (= b_and!13657 (and (=> t!29413 result!11156) b_and!13667)))

(declare-fun m!204095 () Bool)

(assert (=> d!49270 m!204095))

(assert (=> b!194228 m!203967))

(assert (=> b!194228 m!203967))

(declare-fun m!204097 () Bool)

(assert (=> b!194228 m!204097))

(declare-fun m!204099 () Bool)

(assert (=> b!194229 m!204099))

(assert (=> b!191888 d!49270))

(assert (=> d!47436 d!47692))

(declare-fun d!49272 () Bool)

(assert (=> d!49272 (= (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170))))) (list!1186 (c!36427 (_1!1867 (lex!279 thiss!17480 rules!1920 (print!210 thiss!17480 (singletonSeq!145 separatorToken!170)))))))))

(declare-fun bs!19373 () Bool)

(assert (= bs!19373 d!49272))

(declare-fun m!204101 () Bool)

(assert (=> bs!19373 m!204101))

(assert (=> d!47436 d!49272))

(assert (=> d!47436 d!48024))

(declare-fun d!49274 () Bool)

(assert (=> d!49274 (= (list!1182 (singletonSeq!145 separatorToken!170)) (list!1186 (c!36427 (singletonSeq!145 separatorToken!170))))))

(declare-fun bs!19374 () Bool)

(assert (= bs!19374 d!49274))

(declare-fun m!204103 () Bool)

(assert (=> bs!19374 m!204103))

(assert (=> d!47436 d!49274))

(assert (=> d!47436 d!48026))

(assert (=> d!47436 d!47748))

(declare-fun d!49276 () Bool)

(declare-fun lt!67399 () Int)

(assert (=> d!49276 (= lt!67399 (size!2570 (list!1182 (_1!1867 lt!65505))))))

(assert (=> d!49276 (= lt!67399 (size!2571 (c!36427 (_1!1867 lt!65505))))))

(assert (=> d!49276 (= (size!2563 (_1!1867 lt!65505)) lt!67399)))

(declare-fun bs!19375 () Bool)

(assert (= bs!19375 d!49276))

(assert (=> bs!19375 m!201175))

(assert (=> bs!19375 m!201175))

(declare-fun m!204105 () Bool)

(assert (=> bs!19375 m!204105))

(declare-fun m!204107 () Bool)

(assert (=> bs!19375 m!204107))

(assert (=> d!47436 d!49276))

(declare-fun d!49278 () Bool)

(declare-fun lt!67400 () Int)

(assert (=> d!49278 (= lt!67400 (size!2570 (list!1182 (_1!1867 lt!65740))))))

(assert (=> d!49278 (= lt!67400 (size!2571 (c!36427 (_1!1867 lt!65740))))))

(assert (=> d!49278 (= (size!2563 (_1!1867 lt!65740)) lt!67400)))

(declare-fun bs!19376 () Bool)

(assert (= bs!19376 d!49278))

(assert (=> bs!19376 m!197493))

(assert (=> bs!19376 m!197493))

(declare-fun m!204109 () Bool)

(assert (=> bs!19376 m!204109))

(declare-fun m!204111 () Bool)

(assert (=> bs!19376 m!204111))

(assert (=> d!47610 d!49278))

(declare-fun b!194230 () Bool)

(declare-fun e!119348 () tuple2!3302)

(assert (=> b!194230 (= e!119348 (tuple2!3303 (BalanceConc!2027 Empty!1009) (seqFromList!563 lt!65413)))))

(declare-fun e!119350 () Bool)

(declare-fun lt!67421 () tuple2!3302)

(declare-fun b!194231 () Bool)

(assert (=> b!194231 (= e!119350 (= (list!1179 (_2!1867 lt!67421)) (list!1179 (_2!1867 (lexRec!69 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))))))

(declare-fun b!194232 () Bool)

(declare-fun e!119347 () tuple2!3302)

(assert (=> b!194232 (= e!119347 (tuple2!3303 (BalanceConc!2027 Empty!1009) (seqFromList!563 lt!65413)))))

(declare-fun d!49280 () Bool)

(assert (=> d!49280 e!119350))

(declare-fun res!88957 () Bool)

(assert (=> d!49280 (=> (not res!88957) (not e!119350))))

(assert (=> d!49280 (= res!88957 (= (list!1182 (_1!1867 lt!67421)) (list!1182 (_1!1867 (lexRec!69 thiss!17480 rules!1920 (seqFromList!563 lt!65413))))))))

(assert (=> d!49280 (= lt!67421 e!119347)))

(declare-fun c!37195 () Bool)

(declare-fun lt!67412 () Option!471)

(assert (=> d!49280 (= c!37195 ((_ is Some!470) lt!67412))))

(assert (=> d!49280 (= lt!67412 (maxPrefixZipperSequenceV2!54 thiss!17480 rules!1920 (seqFromList!563 lt!65413) (seqFromList!563 lt!65413)))))

(declare-fun lt!67414 () Unit!3036)

(declare-fun lt!67402 () Unit!3036)

(assert (=> d!49280 (= lt!67414 lt!67402)))

(declare-fun lt!67429 () List!3228)

(declare-fun lt!67431 () List!3228)

(assert (=> d!49280 (isSuffix!54 lt!67429 (++!768 lt!67431 lt!67429))))

(assert (=> d!49280 (= lt!67402 (lemmaConcatTwoListThenFSndIsSuffix!54 lt!67431 lt!67429))))

(assert (=> d!49280 (= lt!67429 (list!1179 (seqFromList!563 lt!65413)))))

(assert (=> d!49280 (= lt!67431 (list!1179 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!49280 (= (lexTailRecV2!122 thiss!17480 rules!1920 (seqFromList!563 lt!65413) (BalanceConc!2025 Empty!1008) (seqFromList!563 lt!65413) (BalanceConc!2027 Empty!1009)) lt!67421)))

(declare-fun lt!67427 () Option!471)

(declare-fun b!194233 () Bool)

(declare-fun lt!67417 () tuple2!3302)

(assert (=> b!194233 (= lt!67417 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!67427))))))

(declare-fun e!119349 () tuple2!3302)

(assert (=> b!194233 (= e!119349 (tuple2!3303 (prepend!152 (_1!1867 lt!67417) (_1!1868 (v!13981 lt!67427))) (_2!1867 lt!67417)))))

(declare-fun lt!67403 () BalanceConc!2024)

(declare-fun b!194234 () Bool)

(assert (=> b!194234 (= e!119347 (lexTailRecV2!122 thiss!17480 rules!1920 (seqFromList!563 lt!65413) lt!67403 (_2!1868 (v!13981 lt!67412)) (append!74 (BalanceConc!2027 Empty!1009) (_1!1868 (v!13981 lt!67412)))))))

(declare-fun lt!67422 () tuple2!3302)

(assert (=> b!194234 (= lt!67422 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!67412))))))

(declare-fun lt!67426 () List!3228)

(assert (=> b!194234 (= lt!67426 (list!1179 (BalanceConc!2025 Empty!1008)))))

(declare-fun lt!67410 () List!3228)

(assert (=> b!194234 (= lt!67410 (list!1179 (charsOf!248 (_1!1868 (v!13981 lt!67412)))))))

(declare-fun lt!67434 () List!3228)

(assert (=> b!194234 (= lt!67434 (list!1179 (_2!1868 (v!13981 lt!67412))))))

(declare-fun lt!67404 () Unit!3036)

(assert (=> b!194234 (= lt!67404 (lemmaConcatAssociativity!282 lt!67426 lt!67410 lt!67434))))

(assert (=> b!194234 (= (++!768 (++!768 lt!67426 lt!67410) lt!67434) (++!768 lt!67426 (++!768 lt!67410 lt!67434)))))

(declare-fun lt!67418 () Unit!3036)

(assert (=> b!194234 (= lt!67418 lt!67404)))

(declare-fun lt!67401 () Option!471)

(assert (=> b!194234 (= lt!67401 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 (seqFromList!563 lt!65413)))))

(declare-fun c!37194 () Bool)

(assert (=> b!194234 (= c!37194 ((_ is Some!470) lt!67401))))

(assert (=> b!194234 (= (lexRec!69 thiss!17480 rules!1920 (seqFromList!563 lt!65413)) e!119348)))

(declare-fun lt!67405 () Unit!3036)

(declare-fun Unit!3100 () Unit!3036)

(assert (=> b!194234 (= lt!67405 Unit!3100)))

(declare-fun lt!67419 () List!3230)

(assert (=> b!194234 (= lt!67419 (list!1182 (BalanceConc!2027 Empty!1009)))))

(declare-fun lt!67433 () List!3230)

(assert (=> b!194234 (= lt!67433 (Cons!3220 (_1!1868 (v!13981 lt!67412)) Nil!3220))))

(declare-fun lt!67408 () List!3230)

(assert (=> b!194234 (= lt!67408 (list!1182 (_1!1867 lt!67422)))))

(declare-fun lt!67424 () Unit!3036)

(assert (=> b!194234 (= lt!67424 (lemmaConcatAssociativity!283 lt!67419 lt!67433 lt!67408))))

(assert (=> b!194234 (= (++!773 (++!773 lt!67419 lt!67433) lt!67408) (++!773 lt!67419 (++!773 lt!67433 lt!67408)))))

(declare-fun lt!67425 () Unit!3036)

(assert (=> b!194234 (= lt!67425 lt!67424)))

(declare-fun lt!67411 () List!3228)

(assert (=> b!194234 (= lt!67411 (++!768 (list!1179 (BalanceConc!2025 Empty!1008)) (list!1179 (charsOf!248 (_1!1868 (v!13981 lt!67412))))))))

(declare-fun lt!67409 () List!3228)

(assert (=> b!194234 (= lt!67409 (list!1179 (_2!1868 (v!13981 lt!67412))))))

(declare-fun lt!67423 () List!3230)

(assert (=> b!194234 (= lt!67423 (list!1182 (append!74 (BalanceConc!2027 Empty!1009) (_1!1868 (v!13981 lt!67412)))))))

(declare-fun lt!67416 () Unit!3036)

(assert (=> b!194234 (= lt!67416 (lemmaLexThenLexPrefix!56 thiss!17480 rules!1920 lt!67411 lt!67409 lt!67423 (list!1182 (_1!1867 lt!67422)) (list!1179 (_2!1867 lt!67422))))))

(assert (=> b!194234 (= (lexList!135 thiss!17480 rules!1920 lt!67411) (tuple2!3311 lt!67423 Nil!3218))))

(declare-fun lt!67432 () Unit!3036)

(assert (=> b!194234 (= lt!67432 lt!67416)))

(declare-fun lt!67430 () BalanceConc!2024)

(assert (=> b!194234 (= lt!67430 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!67412)))))))

(assert (=> b!194234 (= lt!67427 (maxPrefixZipperSequence!172 thiss!17480 rules!1920 lt!67430))))

(declare-fun c!37193 () Bool)

(assert (=> b!194234 (= c!37193 ((_ is Some!470) lt!67427))))

(assert (=> b!194234 (= (lexRec!69 thiss!17480 rules!1920 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!67412))))) e!119349)))

(declare-fun lt!67406 () Unit!3036)

(declare-fun Unit!3101 () Unit!3036)

(assert (=> b!194234 (= lt!67406 Unit!3101)))

(assert (=> b!194234 (= lt!67403 (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (_1!1868 (v!13981 lt!67412)))))))

(declare-fun lt!67413 () List!3228)

(assert (=> b!194234 (= lt!67413 (list!1179 lt!67403))))

(declare-fun lt!67407 () List!3228)

(assert (=> b!194234 (= lt!67407 (list!1179 (_2!1868 (v!13981 lt!67412))))))

(declare-fun lt!67420 () Unit!3036)

(assert (=> b!194234 (= lt!67420 (lemmaConcatTwoListThenFSndIsSuffix!54 lt!67413 lt!67407))))

(assert (=> b!194234 (isSuffix!54 lt!67407 (++!768 lt!67413 lt!67407))))

(declare-fun lt!67428 () Unit!3036)

(assert (=> b!194234 (= lt!67428 lt!67420)))

(declare-fun b!194235 () Bool)

(declare-fun lt!67415 () tuple2!3302)

(assert (=> b!194235 (= lt!67415 (lexRec!69 thiss!17480 rules!1920 (_2!1868 (v!13981 lt!67401))))))

(assert (=> b!194235 (= e!119348 (tuple2!3303 (prepend!152 (_1!1867 lt!67415) (_1!1868 (v!13981 lt!67401))) (_2!1867 lt!67415)))))

(declare-fun b!194236 () Bool)

(assert (=> b!194236 (= e!119349 (tuple2!3303 (BalanceConc!2027 Empty!1009) lt!67430))))

(assert (= (and d!49280 c!37195) b!194234))

(assert (= (and d!49280 (not c!37195)) b!194232))

(assert (= (and b!194234 c!37194) b!194235))

(assert (= (and b!194234 (not c!37194)) b!194230))

(assert (= (and b!194234 c!37193) b!194233))

(assert (= (and b!194234 (not c!37193)) b!194236))

(assert (= (and d!49280 res!88957) b!194231))

(declare-fun m!204113 () Bool)

(assert (=> b!194235 m!204113))

(declare-fun m!204115 () Bool)

(assert (=> b!194235 m!204115))

(assert (=> d!49280 m!197539))

(declare-fun m!204117 () Bool)

(assert (=> d!49280 m!204117))

(declare-fun m!204119 () Bool)

(assert (=> d!49280 m!204119))

(assert (=> d!49280 m!196469))

(assert (=> d!49280 m!197495))

(declare-fun m!204121 () Bool)

(assert (=> d!49280 m!204121))

(assert (=> d!49280 m!204117))

(declare-fun m!204123 () Bool)

(assert (=> d!49280 m!204123))

(assert (=> d!49280 m!196469))

(assert (=> d!49280 m!196469))

(declare-fun m!204125 () Bool)

(assert (=> d!49280 m!204125))

(declare-fun m!204127 () Bool)

(assert (=> d!49280 m!204127))

(assert (=> d!49280 m!196469))

(declare-fun m!204129 () Bool)

(assert (=> d!49280 m!204129))

(declare-fun m!204131 () Bool)

(assert (=> b!194233 m!204131))

(declare-fun m!204133 () Bool)

(assert (=> b!194233 m!204133))

(assert (=> b!194234 m!197539))

(declare-fun m!204135 () Bool)

(assert (=> b!194234 m!204135))

(declare-fun m!204137 () Bool)

(assert (=> b!194234 m!204137))

(assert (=> b!194234 m!204135))

(declare-fun m!204139 () Bool)

(assert (=> b!194234 m!204139))

(declare-fun m!204141 () Bool)

(assert (=> b!194234 m!204141))

(declare-fun m!204143 () Bool)

(assert (=> b!194234 m!204143))

(declare-fun m!204145 () Bool)

(assert (=> b!194234 m!204145))

(declare-fun m!204147 () Bool)

(assert (=> b!194234 m!204147))

(declare-fun m!204149 () Bool)

(assert (=> b!194234 m!204149))

(declare-fun m!204151 () Bool)

(assert (=> b!194234 m!204151))

(declare-fun m!204153 () Bool)

(assert (=> b!194234 m!204153))

(declare-fun m!204155 () Bool)

(assert (=> b!194234 m!204155))

(declare-fun m!204157 () Bool)

(assert (=> b!194234 m!204157))

(declare-fun m!204159 () Bool)

(assert (=> b!194234 m!204159))

(declare-fun m!204161 () Bool)

(assert (=> b!194234 m!204161))

(declare-fun m!204163 () Bool)

(assert (=> b!194234 m!204163))

(declare-fun m!204165 () Bool)

(assert (=> b!194234 m!204165))

(assert (=> b!194234 m!196469))

(assert (=> b!194234 m!204153))

(declare-fun m!204167 () Bool)

(assert (=> b!194234 m!204167))

(declare-fun m!204169 () Bool)

(assert (=> b!194234 m!204169))

(declare-fun m!204171 () Bool)

(assert (=> b!194234 m!204171))

(assert (=> b!194234 m!196469))

(declare-fun m!204173 () Bool)

(assert (=> b!194234 m!204173))

(assert (=> b!194234 m!204161))

(assert (=> b!194234 m!204165))

(declare-fun m!204175 () Bool)

(assert (=> b!194234 m!204175))

(declare-fun m!204177 () Bool)

(assert (=> b!194234 m!204177))

(declare-fun m!204179 () Bool)

(assert (=> b!194234 m!204179))

(declare-fun m!204181 () Bool)

(assert (=> b!194234 m!204181))

(declare-fun m!204183 () Bool)

(assert (=> b!194234 m!204183))

(assert (=> b!194234 m!204153))

(assert (=> b!194234 m!204151))

(declare-fun m!204185 () Bool)

(assert (=> b!194234 m!204185))

(assert (=> b!194234 m!204135))

(assert (=> b!194234 m!204181))

(assert (=> b!194234 m!199305))

(declare-fun m!204187 () Bool)

(assert (=> b!194234 m!204187))

(declare-fun m!204189 () Bool)

(assert (=> b!194234 m!204189))

(assert (=> b!194234 m!196469))

(assert (=> b!194234 m!204129))

(assert (=> b!194234 m!197539))

(assert (=> b!194234 m!204139))

(declare-fun m!204191 () Bool)

(assert (=> b!194234 m!204191))

(assert (=> b!194234 m!204145))

(assert (=> b!194234 m!204157))

(assert (=> b!194234 m!204149))

(declare-fun m!204193 () Bool)

(assert (=> b!194234 m!204193))

(assert (=> b!194234 m!204177))

(declare-fun m!204195 () Bool)

(assert (=> b!194231 m!204195))

(assert (=> b!194231 m!196469))

(assert (=> b!194231 m!204129))

(declare-fun m!204197 () Bool)

(assert (=> b!194231 m!204197))

(assert (=> d!47610 d!49280))

(declare-fun b!194238 () Bool)

(declare-fun res!88960 () Bool)

(declare-fun e!119351 () Bool)

(assert (=> b!194238 (=> (not res!88960) (not e!119351))))

(assert (=> b!194238 (= res!88960 (<= (height!101 (++!771 (c!36425 e!117563) (c!36425 (ite c!36475 lt!65604 call!8750)))) (+ (max!0 (height!101 (c!36425 e!117563)) (height!101 (c!36425 (ite c!36475 lt!65604 call!8750)))) 1)))))

(declare-fun lt!67435 () BalanceConc!2024)

(declare-fun b!194240 () Bool)

(assert (=> b!194240 (= e!119351 (= (list!1179 lt!67435) (++!768 (list!1179 e!117563) (list!1179 (ite c!36475 lt!65604 call!8750)))))))

(declare-fun b!194239 () Bool)

(declare-fun res!88961 () Bool)

(assert (=> b!194239 (=> (not res!88961) (not e!119351))))

(assert (=> b!194239 (= res!88961 (>= (height!101 (++!771 (c!36425 e!117563) (c!36425 (ite c!36475 lt!65604 call!8750)))) (max!0 (height!101 (c!36425 e!117563)) (height!101 (c!36425 (ite c!36475 lt!65604 call!8750))))))))

(declare-fun d!49282 () Bool)

(assert (=> d!49282 e!119351))

(declare-fun res!88958 () Bool)

(assert (=> d!49282 (=> (not res!88958) (not e!119351))))

(assert (=> d!49282 (= res!88958 (appendAssocInst!34 (c!36425 e!117563) (c!36425 (ite c!36475 lt!65604 call!8750))))))

(assert (=> d!49282 (= lt!67435 (BalanceConc!2025 (++!771 (c!36425 e!117563) (c!36425 (ite c!36475 lt!65604 call!8750)))))))

(assert (=> d!49282 (= (++!770 e!117563 (ite c!36475 lt!65604 call!8750)) lt!67435)))

(declare-fun b!194237 () Bool)

(declare-fun res!88959 () Bool)

(assert (=> b!194237 (=> (not res!88959) (not e!119351))))

(assert (=> b!194237 (= res!88959 (isBalanced!266 (++!771 (c!36425 e!117563) (c!36425 (ite c!36475 lt!65604 call!8750)))))))

(assert (= (and d!49282 res!88958) b!194237))

(assert (= (and b!194237 res!88959) b!194238))

(assert (= (and b!194238 res!88960) b!194239))

(assert (= (and b!194239 res!88961) b!194240))

(declare-fun m!204199 () Bool)

(assert (=> b!194240 m!204199))

(declare-fun m!204201 () Bool)

(assert (=> b!194240 m!204201))

(declare-fun m!204203 () Bool)

(assert (=> b!194240 m!204203))

(assert (=> b!194240 m!204201))

(assert (=> b!194240 m!204203))

(declare-fun m!204205 () Bool)

(assert (=> b!194240 m!204205))

(declare-fun m!204207 () Bool)

(assert (=> b!194237 m!204207))

(assert (=> b!194237 m!204207))

(declare-fun m!204209 () Bool)

(assert (=> b!194237 m!204209))

(declare-fun m!204211 () Bool)

(assert (=> b!194239 m!204211))

(declare-fun m!204213 () Bool)

(assert (=> b!194239 m!204213))

(declare-fun m!204215 () Bool)

(assert (=> b!194239 m!204215))

(assert (=> b!194239 m!204207))

(declare-fun m!204217 () Bool)

(assert (=> b!194239 m!204217))

(assert (=> b!194239 m!204211))

(assert (=> b!194239 m!204207))

(assert (=> b!194239 m!204213))

(assert (=> b!194238 m!204211))

(assert (=> b!194238 m!204213))

(assert (=> b!194238 m!204215))

(assert (=> b!194238 m!204207))

(assert (=> b!194238 m!204217))

(assert (=> b!194238 m!204211))

(assert (=> b!194238 m!204207))

(assert (=> b!194238 m!204213))

(declare-fun m!204219 () Bool)

(assert (=> d!49282 m!204219))

(assert (=> d!49282 m!204207))

(assert (=> bm!8749 d!49282))

(declare-fun b!194243 () Bool)

(declare-fun e!119352 () Bool)

(assert (=> b!194243 (= e!119352 (isPrefix!289 (tail!386 lt!65413) (tail!386 (++!768 lt!65413 lt!65412))))))

(declare-fun b!194241 () Bool)

(declare-fun e!119354 () Bool)

(assert (=> b!194241 (= e!119354 e!119352)))

(declare-fun res!88965 () Bool)

(assert (=> b!194241 (=> (not res!88965) (not e!119352))))

(assert (=> b!194241 (= res!88965 (not ((_ is Nil!3218) (++!768 lt!65413 lt!65412))))))

(declare-fun b!194244 () Bool)

(declare-fun e!119353 () Bool)

(assert (=> b!194244 (= e!119353 (>= (size!2566 (++!768 lt!65413 lt!65412)) (size!2566 lt!65413)))))

(declare-fun b!194242 () Bool)

(declare-fun res!88964 () Bool)

(assert (=> b!194242 (=> (not res!88964) (not e!119352))))

(assert (=> b!194242 (= res!88964 (= (head!684 lt!65413) (head!684 (++!768 lt!65413 lt!65412))))))

(declare-fun d!49284 () Bool)

(assert (=> d!49284 e!119353))

(declare-fun res!88963 () Bool)

(assert (=> d!49284 (=> res!88963 e!119353)))

(declare-fun lt!67436 () Bool)

(assert (=> d!49284 (= res!88963 (not lt!67436))))

(assert (=> d!49284 (= lt!67436 e!119354)))

(declare-fun res!88962 () Bool)

(assert (=> d!49284 (=> res!88962 e!119354)))

(assert (=> d!49284 (= res!88962 ((_ is Nil!3218) lt!65413))))

(assert (=> d!49284 (= (isPrefix!289 lt!65413 (++!768 lt!65413 lt!65412)) lt!67436)))

(assert (= (and d!49284 (not res!88962)) b!194241))

(assert (= (and b!194241 res!88965) b!194242))

(assert (= (and b!194242 res!88964) b!194243))

(assert (= (and d!49284 (not res!88963)) b!194244))

(assert (=> b!194243 m!197423))

(assert (=> b!194243 m!196451))

(declare-fun m!204221 () Bool)

(assert (=> b!194243 m!204221))

(assert (=> b!194243 m!197423))

(assert (=> b!194243 m!204221))

(declare-fun m!204223 () Bool)

(assert (=> b!194243 m!204223))

(assert (=> b!194244 m!196451))

(declare-fun m!204225 () Bool)

(assert (=> b!194244 m!204225))

(assert (=> b!194244 m!197161))

(assert (=> b!194242 m!197419))

(assert (=> b!194242 m!196451))

(declare-fun m!204227 () Bool)

(assert (=> b!194242 m!204227))

(assert (=> d!47736 d!49284))

(assert (=> d!47736 d!47558))

(declare-fun d!49286 () Bool)

(assert (=> d!49286 (isPrefix!289 lt!65413 (++!768 lt!65413 lt!65412))))

(assert (=> d!49286 true))

(declare-fun _$46!743 () Unit!3036)

(assert (=> d!49286 (= (choose!1942 lt!65413 lt!65412) _$46!743)))

(declare-fun bs!19377 () Bool)

(assert (= bs!19377 d!49286))

(assert (=> bs!19377 m!196451))

(assert (=> bs!19377 m!196451))

(assert (=> bs!19377 m!198159))

(assert (=> d!47736 d!49286))

(declare-fun d!49288 () Bool)

(assert (=> d!49288 (= (list!1182 (_1!1867 lt!65938)) (list!1186 (c!36427 (_1!1867 lt!65938))))))

(declare-fun bs!19378 () Bool)

(assert (= bs!19378 d!49288))

(declare-fun m!204229 () Bool)

(assert (=> bs!19378 m!204229))

(assert (=> b!191848 d!49288))

(assert (=> b!191848 d!48242))

(assert (=> b!191848 d!48244))

(declare-fun b!194245 () Bool)

(declare-fun res!88968 () Bool)

(declare-fun e!119360 () Bool)

(assert (=> b!194245 (=> (not res!88968) (not e!119360))))

(assert (=> b!194245 (= res!88968 (isEmpty!1609 (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874)))))))))

(declare-fun bm!9009 () Bool)

(declare-fun call!9014 () Bool)

(assert (=> bm!9009 (= call!9014 (isEmpty!1609 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))))))

(declare-fun d!49290 () Bool)

(declare-fun e!119355 () Bool)

(assert (=> d!49290 e!119355))

(declare-fun c!37197 () Bool)

(assert (=> d!49290 (= c!37197 ((_ is EmptyExpr!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874))))))))

(declare-fun lt!67437 () Bool)

(declare-fun e!119356 () Bool)

(assert (=> d!49290 (= lt!67437 e!119356)))

(declare-fun c!37198 () Bool)

(assert (=> d!49290 (= c!37198 (isEmpty!1609 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))))))

(assert (=> d!49290 (validRegex!201 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))))

(assert (=> d!49290 (= (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))) lt!67437)))

(declare-fun b!194246 () Bool)

(assert (=> b!194246 (= e!119356 (nullable!128 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874))))))))

(declare-fun b!194247 () Bool)

(assert (=> b!194247 (= e!119360 (= (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))) (c!36426 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))))))

(declare-fun b!194248 () Bool)

(declare-fun e!119357 () Bool)

(assert (=> b!194248 (= e!119357 (not (= (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))) (c!36426 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874))))))))))

(declare-fun b!194249 () Bool)

(declare-fun e!119359 () Bool)

(assert (=> b!194249 (= e!119355 e!119359)))

(declare-fun c!37196 () Bool)

(assert (=> b!194249 (= c!37196 ((_ is EmptyLang!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874))))))))

(declare-fun b!194250 () Bool)

(assert (=> b!194250 (= e!119355 (= lt!67437 call!9014))))

(declare-fun b!194251 () Bool)

(declare-fun e!119358 () Bool)

(declare-fun e!119361 () Bool)

(assert (=> b!194251 (= e!119358 e!119361)))

(declare-fun res!88967 () Bool)

(assert (=> b!194251 (=> (not res!88967) (not e!119361))))

(assert (=> b!194251 (= res!88967 (not lt!67437))))

(declare-fun b!194252 () Bool)

(assert (=> b!194252 (= e!119359 (not lt!67437))))

(declare-fun b!194253 () Bool)

(declare-fun res!88972 () Bool)

(assert (=> b!194253 (=> res!88972 e!119357)))

(assert (=> b!194253 (= res!88972 (not (isEmpty!1609 (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))))))))

(declare-fun b!194254 () Bool)

(declare-fun res!88969 () Bool)

(assert (=> b!194254 (=> res!88969 e!119358)))

(assert (=> b!194254 (= res!88969 (not ((_ is ElementMatch!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))))))

(assert (=> b!194254 (= e!119359 e!119358)))

(declare-fun b!194255 () Bool)

(declare-fun res!88973 () Bool)

(assert (=> b!194255 (=> res!88973 e!119358)))

(assert (=> b!194255 (= res!88973 e!119360)))

(declare-fun res!88966 () Bool)

(assert (=> b!194255 (=> (not res!88966) (not e!119360))))

(assert (=> b!194255 (= res!88966 lt!67437)))

(declare-fun b!194256 () Bool)

(assert (=> b!194256 (= e!119356 (matchR!155 (derivativeStep!94 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65874)))) (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874)))))) (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874)))))))))

(declare-fun b!194257 () Bool)

(assert (=> b!194257 (= e!119361 e!119357)))

(declare-fun res!88970 () Bool)

(assert (=> b!194257 (=> res!88970 e!119357)))

(assert (=> b!194257 (= res!88970 call!9014)))

(declare-fun b!194258 () Bool)

(declare-fun res!88971 () Bool)

(assert (=> b!194258 (=> (not res!88971) (not e!119360))))

(assert (=> b!194258 (= res!88971 (not call!9014))))

(assert (= (and d!49290 c!37198) b!194246))

(assert (= (and d!49290 (not c!37198)) b!194256))

(assert (= (and d!49290 c!37197) b!194250))

(assert (= (and d!49290 (not c!37197)) b!194249))

(assert (= (and b!194249 c!37196) b!194252))

(assert (= (and b!194249 (not c!37196)) b!194254))

(assert (= (and b!194254 (not res!88969)) b!194255))

(assert (= (and b!194255 res!88966) b!194258))

(assert (= (and b!194258 res!88971) b!194245))

(assert (= (and b!194245 res!88968) b!194247))

(assert (= (and b!194255 (not res!88973)) b!194251))

(assert (= (and b!194251 res!88967) b!194257))

(assert (= (and b!194257 (not res!88970)) b!194253))

(assert (= (and b!194253 (not res!88972)) b!194248))

(assert (= (or b!194250 b!194257 b!194258) bm!9009))

(assert (=> bm!9009 m!197859))

(declare-fun m!204231 () Bool)

(assert (=> bm!9009 m!204231))

(assert (=> b!194256 m!197859))

(declare-fun m!204233 () Bool)

(assert (=> b!194256 m!204233))

(assert (=> b!194256 m!204233))

(declare-fun m!204235 () Bool)

(assert (=> b!194256 m!204235))

(assert (=> b!194256 m!197859))

(declare-fun m!204237 () Bool)

(assert (=> b!194256 m!204237))

(assert (=> b!194256 m!204235))

(assert (=> b!194256 m!204237))

(declare-fun m!204239 () Bool)

(assert (=> b!194256 m!204239))

(assert (=> b!194245 m!197859))

(assert (=> b!194245 m!204237))

(assert (=> b!194245 m!204237))

(declare-fun m!204241 () Bool)

(assert (=> b!194245 m!204241))

(assert (=> b!194247 m!197859))

(assert (=> b!194247 m!204233))

(declare-fun m!204243 () Bool)

(assert (=> b!194246 m!204243))

(assert (=> b!194253 m!197859))

(assert (=> b!194253 m!204237))

(assert (=> b!194253 m!204237))

(assert (=> b!194253 m!204241))

(assert (=> b!194248 m!197859))

(assert (=> b!194248 m!204233))

(assert (=> d!49290 m!197859))

(assert (=> d!49290 m!204231))

(declare-fun m!204245 () Bool)

(assert (=> d!49290 m!204245))

(assert (=> b!191692 d!49290))

(assert (=> b!191692 d!48086))

(declare-fun d!49292 () Bool)

(assert (=> d!49292 (= (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874)))) (list!1183 (c!36425 (charsOf!248 (_1!1869 (get!938 lt!65874))))))))

(declare-fun bs!19379 () Bool)

(assert (= bs!19379 d!49292))

(declare-fun m!204247 () Bool)

(assert (=> bs!19379 m!204247))

(assert (=> b!191692 d!49292))

(declare-fun d!49294 () Bool)

(declare-fun lt!67438 () BalanceConc!2024)

(assert (=> d!49294 (= (list!1179 lt!67438) (originalCharacters!636 (_1!1869 (get!938 lt!65874))))))

(assert (=> d!49294 (= lt!67438 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874))))) (value!21216 (_1!1869 (get!938 lt!65874)))))))

(assert (=> d!49294 (= (charsOf!248 (_1!1869 (get!938 lt!65874))) lt!67438)))

(declare-fun b_lambda!4783 () Bool)

(assert (=> (not b_lambda!4783) (not d!49294)))

(declare-fun t!29418 () Bool)

(declare-fun tb!8213 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29418) tb!8213))

(declare-fun b!194259 () Bool)

(declare-fun e!119362 () Bool)

(declare-fun tp!89037 () Bool)

(assert (=> b!194259 (= e!119362 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874))))) (value!21216 (_1!1869 (get!938 lt!65874)))))) tp!89037))))

(declare-fun result!11158 () Bool)

(assert (=> tb!8213 (= result!11158 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874))))) (value!21216 (_1!1869 (get!938 lt!65874))))) e!119362))))

(assert (= tb!8213 b!194259))

(declare-fun m!204249 () Bool)

(assert (=> b!194259 m!204249))

(declare-fun m!204251 () Bool)

(assert (=> tb!8213 m!204251))

(assert (=> d!49294 t!29418))

(declare-fun b_and!13669 () Bool)

(assert (= b_and!13665 (and (=> t!29418 result!11158) b_and!13669)))

(declare-fun t!29420 () Bool)

(declare-fun tb!8215 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29420) tb!8215))

(declare-fun result!11160 () Bool)

(assert (= result!11160 result!11158))

(assert (=> d!49294 t!29420))

(declare-fun b_and!13671 () Bool)

(assert (= b_and!13659 (and (=> t!29420 result!11160) b_and!13671)))

(declare-fun t!29422 () Bool)

(declare-fun tb!8217 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29422) tb!8217))

(declare-fun result!11162 () Bool)

(assert (= result!11162 result!11158))

(assert (=> d!49294 t!29422))

(declare-fun b_and!13673 () Bool)

(assert (= b_and!13661 (and (=> t!29422 result!11162) b_and!13673)))

(declare-fun tb!8219 () Bool)

(declare-fun t!29424 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29424) tb!8219))

(declare-fun result!11164 () Bool)

(assert (= result!11164 result!11158))

(assert (=> d!49294 t!29424))

(declare-fun b_and!13675 () Bool)

(assert (= b_and!13663 (and (=> t!29424 result!11164) b_and!13675)))

(declare-fun tb!8221 () Bool)

(declare-fun t!29426 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29426) tb!8221))

(declare-fun result!11166 () Bool)

(assert (= result!11166 result!11158))

(assert (=> d!49294 t!29426))

(declare-fun b_and!13677 () Bool)

(assert (= b_and!13667 (and (=> t!29426 result!11166) b_and!13677)))

(declare-fun m!204253 () Bool)

(assert (=> d!49294 m!204253))

(declare-fun m!204255 () Bool)

(assert (=> d!49294 m!204255))

(assert (=> b!191692 d!49294))

(declare-fun d!49296 () Bool)

(assert (=> d!49296 (= (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))) (isBalanced!266 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))))))

(declare-fun bs!19380 () Bool)

(assert (= bs!19380 d!49296))

(declare-fun m!204257 () Bool)

(assert (=> bs!19380 m!204257))

(assert (=> tb!7795 d!49296))

(declare-fun d!49298 () Bool)

(declare-fun lt!67439 () Token!930)

(assert (=> d!49298 (contains!514 (list!1182 (_1!1867 lt!65406)) lt!67439)))

(declare-fun e!119364 () Token!930)

(assert (=> d!49298 (= lt!67439 e!119364)))

(declare-fun c!37199 () Bool)

(assert (=> d!49298 (= c!37199 (= 0 0))))

(declare-fun e!119363 () Bool)

(assert (=> d!49298 e!119363))

(declare-fun res!88974 () Bool)

(assert (=> d!49298 (=> (not res!88974) (not e!119363))))

(assert (=> d!49298 (= res!88974 (<= 0 0))))

(assert (=> d!49298 (= (apply!497 (list!1182 (_1!1867 lt!65406)) 0) lt!67439)))

(declare-fun b!194260 () Bool)

(assert (=> b!194260 (= e!119363 (< 0 (size!2570 (list!1182 (_1!1867 lt!65406)))))))

(declare-fun b!194261 () Bool)

(assert (=> b!194261 (= e!119364 (head!682 (list!1182 (_1!1867 lt!65406))))))

(declare-fun b!194262 () Bool)

(assert (=> b!194262 (= e!119364 (apply!497 (tail!385 (list!1182 (_1!1867 lt!65406))) (- 0 1)))))

(assert (= (and d!49298 res!88974) b!194260))

(assert (= (and d!49298 c!37199) b!194261))

(assert (= (and d!49298 (not c!37199)) b!194262))

(assert (=> d!49298 m!197719))

(declare-fun m!204259 () Bool)

(assert (=> d!49298 m!204259))

(assert (=> b!194260 m!197719))

(assert (=> b!194260 m!197961))

(assert (=> b!194261 m!197719))

(declare-fun m!204261 () Bool)

(assert (=> b!194261 m!204261))

(assert (=> b!194262 m!197719))

(declare-fun m!204263 () Bool)

(assert (=> b!194262 m!204263))

(assert (=> b!194262 m!204263))

(declare-fun m!204265 () Bool)

(assert (=> b!194262 m!204265))

(assert (=> d!47646 d!49298))

(assert (=> d!47646 d!48508))

(declare-fun b!194263 () Bool)

(declare-fun e!119365 () Token!930)

(declare-fun call!9015 () Token!930)

(assert (=> b!194263 (= e!119365 call!9015)))

(declare-fun b!194264 () Bool)

(assert (=> b!194264 (= e!119365 call!9015)))

(declare-fun b!194265 () Bool)

(declare-fun e!119366 () Token!930)

(assert (=> b!194265 (= e!119366 e!119365)))

(declare-fun lt!67440 () Bool)

(assert (=> b!194265 (= lt!67440 (appendIndex!12 (list!1186 (left!2548 (c!36427 (_1!1867 lt!65406)))) (list!1186 (right!2878 (c!36427 (_1!1867 lt!65406)))) 0))))

(declare-fun c!37201 () Bool)

(assert (=> b!194265 (= c!37201 (< 0 (size!2571 (left!2548 (c!36427 (_1!1867 lt!65406))))))))

(declare-fun d!49300 () Bool)

(declare-fun lt!67441 () Token!930)

(assert (=> d!49300 (= lt!67441 (apply!497 (list!1186 (c!36427 (_1!1867 lt!65406))) 0))))

(assert (=> d!49300 (= lt!67441 e!119366)))

(declare-fun c!37200 () Bool)

(assert (=> d!49300 (= c!37200 ((_ is Leaf!1645) (c!36427 (_1!1867 lt!65406))))))

(declare-fun e!119367 () Bool)

(assert (=> d!49300 e!119367))

(declare-fun res!88975 () Bool)

(assert (=> d!49300 (=> (not res!88975) (not e!119367))))

(assert (=> d!49300 (= res!88975 (<= 0 0))))

(assert (=> d!49300 (= (apply!498 (c!36427 (_1!1867 lt!65406)) 0) lt!67441)))

(declare-fun b!194266 () Bool)

(assert (=> b!194266 (= e!119366 (apply!500 (xs!3604 (c!36427 (_1!1867 lt!65406))) 0))))

(declare-fun b!194267 () Bool)

(declare-fun e!119368 () Int)

(assert (=> b!194267 (= e!119368 (- 0 (size!2571 (left!2548 (c!36427 (_1!1867 lt!65406))))))))

(declare-fun b!194268 () Bool)

(assert (=> b!194268 (= e!119367 (< 0 (size!2571 (c!36427 (_1!1867 lt!65406)))))))

(declare-fun bm!9010 () Bool)

(declare-fun c!37202 () Bool)

(assert (=> bm!9010 (= c!37202 c!37201)))

(assert (=> bm!9010 (= call!9015 (apply!498 (ite c!37201 (left!2548 (c!36427 (_1!1867 lt!65406))) (right!2878 (c!36427 (_1!1867 lt!65406)))) e!119368))))

(declare-fun b!194269 () Bool)

(assert (=> b!194269 (= e!119368 0)))

(assert (= (and d!49300 res!88975) b!194268))

(assert (= (and d!49300 c!37200) b!194266))

(assert (= (and d!49300 (not c!37200)) b!194265))

(assert (= (and b!194265 c!37201) b!194264))

(assert (= (and b!194265 (not c!37201)) b!194263))

(assert (= (or b!194264 b!194263) bm!9010))

(assert (= (and bm!9010 c!37202) b!194269))

(assert (= (and bm!9010 (not c!37202)) b!194267))

(declare-fun m!204267 () Bool)

(assert (=> b!194265 m!204267))

(declare-fun m!204269 () Bool)

(assert (=> b!194265 m!204269))

(assert (=> b!194265 m!204267))

(assert (=> b!194265 m!204269))

(declare-fun m!204271 () Bool)

(assert (=> b!194265 m!204271))

(declare-fun m!204273 () Bool)

(assert (=> b!194265 m!204273))

(declare-fun m!204275 () Bool)

(assert (=> bm!9010 m!204275))

(assert (=> b!194267 m!204273))

(declare-fun m!204277 () Bool)

(assert (=> b!194266 m!204277))

(assert (=> b!194268 m!197963))

(assert (=> d!49300 m!200959))

(assert (=> d!49300 m!200959))

(declare-fun m!204279 () Bool)

(assert (=> d!49300 m!204279))

(assert (=> d!47646 d!49300))

(assert (=> b!191258 d!48066))

(declare-fun bs!19381 () Bool)

(declare-fun d!49302 () Bool)

(assert (= bs!19381 (and d!49302 b!193312)))

(declare-fun lambda!5933 () Int)

(assert (=> bs!19381 (= (and (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (= (toValue!1264 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (h!8616 rules!1920))))) (= lambda!5933 lambda!5911))))

(declare-fun bs!19382 () Bool)

(assert (= bs!19382 (and d!49302 d!48722)))

(assert (=> bs!19382 (= (and (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (h!8616 rules!1920)))) (= (toValue!1264 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (h!8616 rules!1920))))) (= lambda!5933 lambda!5917))))

(declare-fun bs!19383 () Bool)

(assert (= bs!19383 (and d!49302 d!49104)))

(assert (=> bs!19383 (= (and (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) (= (toValue!1264 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 (h!8617 tokens!465)))))) (= lambda!5933 lambda!5925))))

(assert (=> d!49302 true))

(assert (=> d!49302 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170)))) (dynLambda!1381 order!2045 lambda!5933))))

(assert (=> d!49302 true))

(assert (=> d!49302 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (rule!1108 separatorToken!170)))) (dynLambda!1381 order!2045 lambda!5933))))

(assert (=> d!49302 (= (semiInverseModEq!201 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toValue!1264 (transformation!593 (rule!1108 separatorToken!170)))) (Forall!140 lambda!5933))))

(declare-fun bs!19384 () Bool)

(assert (= bs!19384 d!49302))

(declare-fun m!204281 () Bool)

(assert (=> bs!19384 m!204281))

(assert (=> d!47756 d!49302))

(declare-fun d!49304 () Bool)

(assert (=> d!49304 (= (nullable!128 (regex!593 lt!65423)) (nullableFct!35 (regex!593 lt!65423)))))

(declare-fun bs!19385 () Bool)

(assert (= bs!19385 d!49304))

(declare-fun m!204283 () Bool)

(assert (=> bs!19385 m!204283))

(assert (=> b!191569 d!49304))

(declare-fun d!49306 () Bool)

(declare-fun lt!67442 () Bool)

(assert (=> d!49306 (= lt!67442 (select (content!431 (t!28932 tokens!465)) lt!65439))))

(declare-fun e!119369 () Bool)

(assert (=> d!49306 (= lt!67442 e!119369)))

(declare-fun res!88977 () Bool)

(assert (=> d!49306 (=> (not res!88977) (not e!119369))))

(assert (=> d!49306 (= res!88977 ((_ is Cons!3220) (t!28932 tokens!465)))))

(assert (=> d!49306 (= (contains!514 (t!28932 tokens!465) lt!65439) lt!67442)))

(declare-fun b!194270 () Bool)

(declare-fun e!119370 () Bool)

(assert (=> b!194270 (= e!119369 e!119370)))

(declare-fun res!88976 () Bool)

(assert (=> b!194270 (=> res!88976 e!119370)))

(assert (=> b!194270 (= res!88976 (= (h!8617 (t!28932 tokens!465)) lt!65439))))

(declare-fun b!194271 () Bool)

(assert (=> b!194271 (= e!119370 (contains!514 (t!28932 (t!28932 tokens!465)) lt!65439))))

(assert (= (and d!49306 res!88977) b!194270))

(assert (= (and b!194270 (not res!88976)) b!194271))

(declare-fun m!204285 () Bool)

(assert (=> d!49306 m!204285))

(declare-fun m!204287 () Bool)

(assert (=> d!49306 m!204287))

(declare-fun m!204289 () Bool)

(assert (=> b!194271 m!204289))

(assert (=> b!191637 d!49306))

(declare-fun d!49308 () Bool)

(declare-fun res!88978 () Bool)

(declare-fun e!119371 () Bool)

(assert (=> d!49308 (=> res!88978 e!119371)))

(assert (=> d!49308 (= res!88978 (not ((_ is Cons!3219) (t!28931 rules!1920))))))

(assert (=> d!49308 (= (sepAndNonSepRulesDisjointChars!182 rules!1920 (t!28931 rules!1920)) e!119371)))

(declare-fun b!194272 () Bool)

(declare-fun e!119372 () Bool)

(assert (=> b!194272 (= e!119371 e!119372)))

(declare-fun res!88979 () Bool)

(assert (=> b!194272 (=> (not res!88979) (not e!119372))))

(assert (=> b!194272 (= res!88979 (ruleDisjointCharsFromAllFromOtherType!60 (h!8616 (t!28931 rules!1920)) rules!1920))))

(declare-fun b!194273 () Bool)

(assert (=> b!194273 (= e!119372 (sepAndNonSepRulesDisjointChars!182 rules!1920 (t!28931 (t!28931 rules!1920))))))

(assert (= (and d!49308 (not res!88978)) b!194272))

(assert (= (and b!194272 res!88979) b!194273))

(declare-fun m!204291 () Bool)

(assert (=> b!194272 m!204291))

(declare-fun m!204293 () Bool)

(assert (=> b!194273 m!204293))

(assert (=> b!191644 d!49308))

(assert (=> b!191433 d!49020))

(declare-fun d!49310 () Bool)

(assert (=> d!49310 (= (list!1179 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))) (list!1183 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))))))

(declare-fun bs!19386 () Bool)

(assert (= bs!19386 d!49310))

(declare-fun m!204295 () Bool)

(assert (=> bs!19386 m!204295))

(assert (=> b!191630 d!49310))

(declare-fun d!49312 () Bool)

(assert (=> d!49312 (= (list!1182 (_1!1867 lt!65937)) (list!1186 (c!36427 (_1!1867 lt!65937))))))

(declare-fun bs!19387 () Bool)

(assert (= bs!19387 d!49312))

(declare-fun m!204297 () Bool)

(assert (=> bs!19387 m!204297))

(assert (=> b!191843 d!49312))

(assert (=> b!191843 d!48502))

(assert (=> b!191843 d!48504))

(declare-fun d!49314 () Bool)

(assert (=> d!49314 (= (isEmpty!1609 (list!1179 (_2!1867 lt!65406))) ((_ is Nil!3218) (list!1179 (_2!1867 lt!65406))))))

(assert (=> d!47758 d!49314))

(declare-fun d!49316 () Bool)

(assert (=> d!49316 (= (list!1179 (_2!1867 lt!65406)) (list!1183 (c!36425 (_2!1867 lt!65406))))))

(declare-fun bs!19388 () Bool)

(assert (= bs!19388 d!49316))

(declare-fun m!204299 () Bool)

(assert (=> bs!19388 m!204299))

(assert (=> d!47758 d!49316))

(declare-fun d!49318 () Bool)

(declare-fun lt!67443 () Bool)

(assert (=> d!49318 (= lt!67443 (isEmpty!1609 (list!1183 (c!36425 (_2!1867 lt!65406)))))))

(assert (=> d!49318 (= lt!67443 (= (size!2573 (c!36425 (_2!1867 lt!65406))) 0))))

(assert (=> d!49318 (= (isEmpty!1616 (c!36425 (_2!1867 lt!65406))) lt!67443)))

(declare-fun bs!19389 () Bool)

(assert (= bs!19389 d!49318))

(assert (=> bs!19389 m!204299))

(assert (=> bs!19389 m!204299))

(declare-fun m!204301 () Bool)

(assert (=> bs!19389 m!204301))

(declare-fun m!204303 () Bool)

(assert (=> bs!19389 m!204303))

(assert (=> d!47758 d!49318))

(declare-fun d!49320 () Bool)

(declare-fun e!119373 () Bool)

(assert (=> d!49320 e!119373))

(declare-fun res!88980 () Bool)

(assert (=> d!49320 (=> (not res!88980) (not e!119373))))

(declare-fun lt!67444 () List!3228)

(assert (=> d!49320 (= res!88980 (= (content!430 lt!67444) ((_ map or) (content!430 call!8802) (content!430 lt!65807))))))

(declare-fun e!119374 () List!3228)

(assert (=> d!49320 (= lt!67444 e!119374)))

(declare-fun c!37203 () Bool)

(assert (=> d!49320 (= c!37203 ((_ is Nil!3218) call!8802))))

(assert (=> d!49320 (= (++!768 call!8802 lt!65807) lt!67444)))

(declare-fun b!194274 () Bool)

(assert (=> b!194274 (= e!119374 lt!65807)))

(declare-fun b!194276 () Bool)

(declare-fun res!88981 () Bool)

(assert (=> b!194276 (=> (not res!88981) (not e!119373))))

(assert (=> b!194276 (= res!88981 (= (size!2566 lt!67444) (+ (size!2566 call!8802) (size!2566 lt!65807))))))

(declare-fun b!194275 () Bool)

(assert (=> b!194275 (= e!119374 (Cons!3218 (h!8615 call!8802) (++!768 (t!28930 call!8802) lt!65807)))))

(declare-fun b!194277 () Bool)

(assert (=> b!194277 (= e!119373 (or (not (= lt!65807 Nil!3218)) (= lt!67444 call!8802)))))

(assert (= (and d!49320 c!37203) b!194274))

(assert (= (and d!49320 (not c!37203)) b!194275))

(assert (= (and d!49320 res!88980) b!194276))

(assert (= (and b!194276 res!88981) b!194277))

(declare-fun m!204305 () Bool)

(assert (=> d!49320 m!204305))

(declare-fun m!204307 () Bool)

(assert (=> d!49320 m!204307))

(assert (=> d!49320 m!199379))

(declare-fun m!204309 () Bool)

(assert (=> b!194276 m!204309))

(declare-fun m!204311 () Bool)

(assert (=> b!194276 m!204311))

(assert (=> b!194276 m!199385))

(declare-fun m!204313 () Bool)

(assert (=> b!194275 m!204313))

(assert (=> b!191605 d!49320))

(declare-fun d!49322 () Bool)

(assert (=> d!49322 (= (list!1179 lt!65888) (list!1183 (c!36425 lt!65888)))))

(declare-fun bs!19390 () Bool)

(assert (= bs!19390 d!49322))

(declare-fun m!204315 () Bool)

(assert (=> bs!19390 m!204315))

(assert (=> d!47688 d!49322))

(declare-fun d!49324 () Bool)

(declare-fun c!37204 () Bool)

(assert (=> d!49324 (= c!37204 ((_ is Cons!3220) (list!1182 lt!65418)))))

(declare-fun e!119375 () List!3228)

(assert (=> d!49324 (= (printList!163 thiss!17480 (list!1182 lt!65418)) e!119375)))

(declare-fun b!194278 () Bool)

(assert (=> b!194278 (= e!119375 (++!768 (list!1179 (charsOf!248 (h!8617 (list!1182 lt!65418)))) (printList!163 thiss!17480 (t!28932 (list!1182 lt!65418)))))))

(declare-fun b!194279 () Bool)

(assert (=> b!194279 (= e!119375 Nil!3218)))

(assert (= (and d!49324 c!37204) b!194278))

(assert (= (and d!49324 (not c!37204)) b!194279))

(declare-fun m!204317 () Bool)

(assert (=> b!194278 m!204317))

(assert (=> b!194278 m!204317))

(declare-fun m!204319 () Bool)

(assert (=> b!194278 m!204319))

(declare-fun m!204321 () Bool)

(assert (=> b!194278 m!204321))

(assert (=> b!194278 m!204319))

(assert (=> b!194278 m!204321))

(declare-fun m!204323 () Bool)

(assert (=> b!194278 m!204323))

(assert (=> d!47688 d!49324))

(assert (=> d!47688 d!48214))

(assert (=> d!47688 d!47706))

(declare-fun d!49326 () Bool)

(declare-fun lt!67445 () Bool)

(assert (=> d!49326 (= lt!67445 (isEmpty!1612 (list!1182 (_1!1867 lt!65938))))))

(assert (=> d!49326 (= lt!67445 (isEmpty!1620 (c!36427 (_1!1867 lt!65938))))))

(assert (=> d!49326 (= (isEmpty!1611 (_1!1867 lt!65938)) lt!67445)))

(declare-fun bs!19391 () Bool)

(assert (= bs!19391 d!49326))

(assert (=> bs!19391 m!198147))

(assert (=> bs!19391 m!198147))

(declare-fun m!204325 () Bool)

(assert (=> bs!19391 m!204325))

(declare-fun m!204327 () Bool)

(assert (=> bs!19391 m!204327))

(assert (=> b!191849 d!49326))

(declare-fun d!49328 () Bool)

(declare-fun lt!67446 () Bool)

(assert (=> d!49328 (= lt!67446 (select (content!433 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65874)))))))

(declare-fun e!119377 () Bool)

(assert (=> d!49328 (= lt!67446 e!119377)))

(declare-fun res!88982 () Bool)

(assert (=> d!49328 (=> (not res!88982) (not e!119377))))

(assert (=> d!49328 (= res!88982 ((_ is Cons!3219) rules!1920))))

(assert (=> d!49328 (= (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!65874)))) lt!67446)))

(declare-fun b!194280 () Bool)

(declare-fun e!119376 () Bool)

(assert (=> b!194280 (= e!119377 e!119376)))

(declare-fun res!88983 () Bool)

(assert (=> b!194280 (=> res!88983 e!119376)))

(assert (=> b!194280 (= res!88983 (= (h!8616 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65874)))))))

(declare-fun b!194281 () Bool)

(assert (=> b!194281 (= e!119376 (contains!516 (t!28931 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65874)))))))

(assert (= (and d!49328 res!88982) b!194280))

(assert (= (and b!194280 (not res!88983)) b!194281))

(assert (=> d!49328 m!203831))

(declare-fun m!204329 () Bool)

(assert (=> d!49328 m!204329))

(declare-fun m!204331 () Bool)

(assert (=> b!194281 m!204331))

(assert (=> b!191687 d!49328))

(assert (=> b!191687 d!48086))

(declare-fun d!49330 () Bool)

(declare-fun lt!67447 () Int)

(assert (=> d!49330 (>= lt!67447 0)))

(declare-fun e!119378 () Int)

(assert (=> d!49330 (= lt!67447 e!119378)))

(declare-fun c!37205 () Bool)

(assert (=> d!49330 (= c!37205 ((_ is Nil!3218) (originalCharacters!636 (h!8617 tokens!465))))))

(assert (=> d!49330 (= (size!2566 (originalCharacters!636 (h!8617 tokens!465))) lt!67447)))

(declare-fun b!194282 () Bool)

(assert (=> b!194282 (= e!119378 0)))

(declare-fun b!194283 () Bool)

(assert (=> b!194283 (= e!119378 (+ 1 (size!2566 (t!28930 (originalCharacters!636 (h!8617 tokens!465))))))))

(assert (= (and d!49330 c!37205) b!194282))

(assert (= (and d!49330 (not c!37205)) b!194283))

(declare-fun m!204333 () Bool)

(assert (=> b!194283 m!204333))

(assert (=> b!191124 d!49330))

(declare-fun d!49332 () Bool)

(assert (=> d!49332 (= (isEmpty!1617 lt!65493) (not ((_ is Some!472) lt!65493)))))

(assert (=> d!47422 d!49332))

(declare-fun b!194286 () Bool)

(declare-fun e!119379 () Bool)

(assert (=> b!194286 (= e!119379 (isPrefix!289 (tail!386 lt!65430) (tail!386 lt!65430)))))

(declare-fun b!194284 () Bool)

(declare-fun e!119381 () Bool)

(assert (=> b!194284 (= e!119381 e!119379)))

(declare-fun res!88987 () Bool)

(assert (=> b!194284 (=> (not res!88987) (not e!119379))))

(assert (=> b!194284 (= res!88987 (not ((_ is Nil!3218) lt!65430)))))

(declare-fun b!194287 () Bool)

(declare-fun e!119380 () Bool)

(assert (=> b!194287 (= e!119380 (>= (size!2566 lt!65430) (size!2566 lt!65430)))))

(declare-fun b!194285 () Bool)

(declare-fun res!88986 () Bool)

(assert (=> b!194285 (=> (not res!88986) (not e!119379))))

(assert (=> b!194285 (= res!88986 (= (head!684 lt!65430) (head!684 lt!65430)))))

(declare-fun d!49334 () Bool)

(assert (=> d!49334 e!119380))

(declare-fun res!88985 () Bool)

(assert (=> d!49334 (=> res!88985 e!119380)))

(declare-fun lt!67448 () Bool)

(assert (=> d!49334 (= res!88985 (not lt!67448))))

(assert (=> d!49334 (= lt!67448 e!119381)))

(declare-fun res!88984 () Bool)

(assert (=> d!49334 (=> res!88984 e!119381)))

(assert (=> d!49334 (= res!88984 ((_ is Nil!3218) lt!65430))))

(assert (=> d!49334 (= (isPrefix!289 lt!65430 lt!65430) lt!67448)))

(assert (= (and d!49334 (not res!88984)) b!194284))

(assert (= (and b!194284 res!88987) b!194285))

(assert (= (and b!194285 res!88986) b!194286))

(assert (= (and d!49334 (not res!88985)) b!194287))

(assert (=> b!194286 m!203547))

(assert (=> b!194286 m!203547))

(assert (=> b!194286 m!203547))

(assert (=> b!194286 m!203547))

(declare-fun m!204335 () Bool)

(assert (=> b!194286 m!204335))

(assert (=> b!194287 m!196739))

(assert (=> b!194287 m!196739))

(assert (=> b!194285 m!203551))

(assert (=> b!194285 m!203551))

(assert (=> d!47422 d!49334))

(declare-fun d!49336 () Bool)

(assert (=> d!49336 (isPrefix!289 lt!65430 lt!65430)))

(declare-fun lt!67449 () Unit!3036)

(assert (=> d!49336 (= lt!67449 (choose!1951 lt!65430 lt!65430))))

(assert (=> d!49336 (= (lemmaIsPrefixRefl!159 lt!65430 lt!65430) lt!67449)))

(declare-fun bs!19392 () Bool)

(assert (= bs!19392 d!49336))

(assert (=> bs!19392 m!196731))

(declare-fun m!204337 () Bool)

(assert (=> bs!19392 m!204337))

(assert (=> d!47422 d!49336))

(assert (=> d!47422 d!49070))

(declare-fun d!49338 () Bool)

(declare-fun e!119384 () Bool)

(assert (=> d!49338 e!119384))

(declare-fun res!88990 () Bool)

(assert (=> d!49338 (=> (not res!88990) (not e!119384))))

(declare-fun lt!67452 () BalanceConc!2026)

(assert (=> d!49338 (= res!88990 (= (list!1182 lt!67452) tokens!465))))

(declare-fun fromList!119 (List!3230) Conc!1009)

(assert (=> d!49338 (= lt!67452 (BalanceConc!2027 (fromList!119 tokens!465)))))

(assert (=> d!49338 (= (fromListB!207 tokens!465) lt!67452)))

(declare-fun b!194290 () Bool)

(assert (=> b!194290 (= e!119384 (isBalanced!264 (fromList!119 tokens!465)))))

(assert (= (and d!49338 res!88990) b!194290))

(declare-fun m!204339 () Bool)

(assert (=> d!49338 m!204339))

(declare-fun m!204341 () Bool)

(assert (=> d!49338 m!204341))

(assert (=> b!194290 m!204341))

(assert (=> b!194290 m!204341))

(declare-fun m!204343 () Bool)

(assert (=> b!194290 m!204343))

(assert (=> d!47606 d!49338))

(declare-fun d!49340 () Bool)

(declare-fun c!37209 () Bool)

(assert (=> d!49340 (= c!37209 ((_ is Nil!3220) tokens!465))))

(declare-fun e!119387 () (InoxSet Token!930))

(assert (=> d!49340 (= (content!431 tokens!465) e!119387)))

(declare-fun b!194295 () Bool)

(assert (=> b!194295 (= e!119387 ((as const (Array Token!930 Bool)) false))))

(declare-fun b!194296 () Bool)

(assert (=> b!194296 (= e!119387 ((_ map or) (store ((as const (Array Token!930 Bool)) false) (h!8617 tokens!465) true) (content!431 (t!28932 tokens!465))))))

(assert (= (and d!49340 c!37209) b!194295))

(assert (= (and d!49340 (not c!37209)) b!194296))

(declare-fun m!204345 () Bool)

(assert (=> b!194296 m!204345))

(assert (=> b!194296 m!204285))

(assert (=> d!47644 d!49340))

(declare-fun b!194297 () Bool)

(declare-fun res!88993 () Bool)

(declare-fun e!119393 () Bool)

(assert (=> b!194297 (=> (not res!88993) (not e!119393))))

(assert (=> b!194297 (= res!88993 (isEmpty!1609 (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949)))))))))

(declare-fun bm!9011 () Bool)

(declare-fun call!9016 () Bool)

(assert (=> bm!9011 (= call!9016 (isEmpty!1609 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))))))

(declare-fun d!49342 () Bool)

(declare-fun e!119388 () Bool)

(assert (=> d!49342 e!119388))

(declare-fun c!37211 () Bool)

(assert (=> d!49342 (= c!37211 ((_ is EmptyExpr!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949))))))))

(declare-fun lt!67453 () Bool)

(declare-fun e!119389 () Bool)

(assert (=> d!49342 (= lt!67453 e!119389)))

(declare-fun c!37212 () Bool)

(assert (=> d!49342 (= c!37212 (isEmpty!1609 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))))))

(assert (=> d!49342 (validRegex!201 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))))

(assert (=> d!49342 (= (matchR!155 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949)))) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))) lt!67453)))

(declare-fun b!194298 () Bool)

(assert (=> b!194298 (= e!119389 (nullable!128 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949))))))))

(declare-fun b!194299 () Bool)

(assert (=> b!194299 (= e!119393 (= (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))) (c!36426 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))))))

(declare-fun b!194300 () Bool)

(declare-fun e!119390 () Bool)

(assert (=> b!194300 (= e!119390 (not (= (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))) (c!36426 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949))))))))))

(declare-fun b!194301 () Bool)

(declare-fun e!119392 () Bool)

(assert (=> b!194301 (= e!119388 e!119392)))

(declare-fun c!37210 () Bool)

(assert (=> b!194301 (= c!37210 ((_ is EmptyLang!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949))))))))

(declare-fun b!194302 () Bool)

(assert (=> b!194302 (= e!119388 (= lt!67453 call!9016))))

(declare-fun b!194303 () Bool)

(declare-fun e!119391 () Bool)

(declare-fun e!119394 () Bool)

(assert (=> b!194303 (= e!119391 e!119394)))

(declare-fun res!88992 () Bool)

(assert (=> b!194303 (=> (not res!88992) (not e!119394))))

(assert (=> b!194303 (= res!88992 (not lt!67453))))

(declare-fun b!194304 () Bool)

(assert (=> b!194304 (= e!119392 (not lt!67453))))

(declare-fun b!194305 () Bool)

(declare-fun res!88997 () Bool)

(assert (=> b!194305 (=> res!88997 e!119390)))

(assert (=> b!194305 (= res!88997 (not (isEmpty!1609 (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))))))))

(declare-fun b!194306 () Bool)

(declare-fun res!88994 () Bool)

(assert (=> b!194306 (=> res!88994 e!119391)))

(assert (=> b!194306 (= res!88994 (not ((_ is ElementMatch!817) (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))))))

(assert (=> b!194306 (= e!119392 e!119391)))

(declare-fun b!194307 () Bool)

(declare-fun res!88998 () Bool)

(assert (=> b!194307 (=> res!88998 e!119391)))

(assert (=> b!194307 (= res!88998 e!119393)))

(declare-fun res!88991 () Bool)

(assert (=> b!194307 (=> (not res!88991) (not e!119393))))

(assert (=> b!194307 (= res!88991 lt!67453)))

(declare-fun b!194308 () Bool)

(assert (=> b!194308 (= e!119389 (matchR!155 (derivativeStep!94 (regex!593 (rule!1108 (_1!1869 (get!938 lt!65949)))) (head!684 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949)))))) (tail!386 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949)))))))))

(declare-fun b!194309 () Bool)

(assert (=> b!194309 (= e!119394 e!119390)))

(declare-fun res!88995 () Bool)

(assert (=> b!194309 (=> res!88995 e!119390)))

(assert (=> b!194309 (= res!88995 call!9016)))

(declare-fun b!194310 () Bool)

(declare-fun res!88996 () Bool)

(assert (=> b!194310 (=> (not res!88996) (not e!119393))))

(assert (=> b!194310 (= res!88996 (not call!9016))))

(assert (= (and d!49342 c!37212) b!194298))

(assert (= (and d!49342 (not c!37212)) b!194308))

(assert (= (and d!49342 c!37211) b!194302))

(assert (= (and d!49342 (not c!37211)) b!194301))

(assert (= (and b!194301 c!37210) b!194304))

(assert (= (and b!194301 (not c!37210)) b!194306))

(assert (= (and b!194306 (not res!88994)) b!194307))

(assert (= (and b!194307 res!88991) b!194310))

(assert (= (and b!194310 res!88996) b!194297))

(assert (= (and b!194297 res!88993) b!194299))

(assert (= (and b!194307 (not res!88998)) b!194303))

(assert (= (and b!194303 res!88992) b!194309))

(assert (= (and b!194309 (not res!88995)) b!194305))

(assert (= (and b!194305 (not res!88997)) b!194300))

(assert (= (or b!194302 b!194309 b!194310) bm!9011))

(assert (=> bm!9011 m!198173))

(declare-fun m!204347 () Bool)

(assert (=> bm!9011 m!204347))

(assert (=> b!194308 m!198173))

(declare-fun m!204349 () Bool)

(assert (=> b!194308 m!204349))

(assert (=> b!194308 m!204349))

(declare-fun m!204351 () Bool)

(assert (=> b!194308 m!204351))

(assert (=> b!194308 m!198173))

(declare-fun m!204353 () Bool)

(assert (=> b!194308 m!204353))

(assert (=> b!194308 m!204351))

(assert (=> b!194308 m!204353))

(declare-fun m!204355 () Bool)

(assert (=> b!194308 m!204355))

(assert (=> b!194297 m!198173))

(assert (=> b!194297 m!204353))

(assert (=> b!194297 m!204353))

(declare-fun m!204357 () Bool)

(assert (=> b!194297 m!204357))

(assert (=> b!194299 m!198173))

(assert (=> b!194299 m!204349))

(declare-fun m!204359 () Bool)

(assert (=> b!194298 m!204359))

(assert (=> b!194305 m!198173))

(assert (=> b!194305 m!204353))

(assert (=> b!194305 m!204353))

(assert (=> b!194305 m!204357))

(assert (=> b!194300 m!198173))

(assert (=> b!194300 m!204349))

(assert (=> d!49342 m!198173))

(assert (=> d!49342 m!204347))

(declare-fun m!204361 () Bool)

(assert (=> d!49342 m!204361))

(assert (=> b!191860 d!49342))

(assert (=> b!191860 d!48194))

(assert (=> b!191860 d!48540))

(assert (=> b!191860 d!48542))

(declare-fun d!49344 () Bool)

(declare-fun lt!67454 () Bool)

(assert (=> d!49344 (= lt!67454 (select (content!433 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65493)))))))

(declare-fun e!119396 () Bool)

(assert (=> d!49344 (= lt!67454 e!119396)))

(declare-fun res!88999 () Bool)

(assert (=> d!49344 (=> (not res!88999) (not e!119396))))

(assert (=> d!49344 (= res!88999 ((_ is Cons!3219) rules!1920))))

(assert (=> d!49344 (= (contains!516 rules!1920 (rule!1108 (_1!1869 (get!938 lt!65493)))) lt!67454)))

(declare-fun b!194311 () Bool)

(declare-fun e!119395 () Bool)

(assert (=> b!194311 (= e!119396 e!119395)))

(declare-fun res!89000 () Bool)

(assert (=> b!194311 (=> res!89000 e!119395)))

(assert (=> b!194311 (= res!89000 (= (h!8616 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65493)))))))

(declare-fun b!194312 () Bool)

(assert (=> b!194312 (= e!119395 (contains!516 (t!28931 rules!1920) (rule!1108 (_1!1869 (get!938 lt!65493)))))))

(assert (= (and d!49344 res!88999) b!194311))

(assert (= (and b!194311 (not res!89000)) b!194312))

(assert (=> d!49344 m!203831))

(declare-fun m!204363 () Bool)

(assert (=> d!49344 m!204363))

(declare-fun m!204365 () Bool)

(assert (=> b!194312 m!204365))

(assert (=> b!191053 d!49344))

(assert (=> b!191053 d!48182))

(assert (=> bm!8761 d!49216))

(declare-fun d!49346 () Bool)

(declare-fun e!119397 () Bool)

(assert (=> d!49346 e!119397))

(declare-fun res!89001 () Bool)

(assert (=> d!49346 (=> (not res!89001) (not e!119397))))

(declare-fun lt!67455 () BalanceConc!2026)

(assert (=> d!49346 (= res!89001 (= (list!1182 lt!67455) (t!28932 tokens!465)))))

(assert (=> d!49346 (= lt!67455 (BalanceConc!2027 (fromList!119 (t!28932 tokens!465))))))

(assert (=> d!49346 (= (fromListB!207 (t!28932 tokens!465)) lt!67455)))

(declare-fun b!194313 () Bool)

(assert (=> b!194313 (= e!119397 (isBalanced!264 (fromList!119 (t!28932 tokens!465))))))

(assert (= (and d!49346 res!89001) b!194313))

(declare-fun m!204367 () Bool)

(assert (=> d!49346 m!204367))

(declare-fun m!204369 () Bool)

(assert (=> d!49346 m!204369))

(assert (=> b!194313 m!204369))

(assert (=> b!194313 m!204369))

(declare-fun m!204371 () Bool)

(assert (=> b!194313 m!204371))

(assert (=> d!47516 d!49346))

(declare-fun d!49348 () Bool)

(declare-fun lt!67456 () BalanceConc!2024)

(assert (=> d!49348 (= (list!1179 lt!67456) (originalCharacters!636 call!8800))))

(assert (=> d!49348 (= lt!67456 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 call!8800))) (value!21216 call!8800)))))

(assert (=> d!49348 (= (charsOf!248 call!8800) lt!67456)))

(declare-fun b_lambda!4785 () Bool)

(assert (=> (not b_lambda!4785) (not d!49348)))

(declare-fun t!29428 () Bool)

(declare-fun tb!8223 () Bool)

(assert (=> (and b!190938 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 call!8800)))) t!29428) tb!8223))

(declare-fun b!194314 () Bool)

(declare-fun e!119398 () Bool)

(declare-fun tp!89038 () Bool)

(assert (=> b!194314 (= e!119398 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 call!8800))) (value!21216 call!8800)))) tp!89038))))

(declare-fun result!11168 () Bool)

(assert (=> tb!8223 (= result!11168 (and (inv!4045 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 call!8800))) (value!21216 call!8800))) e!119398))))

(assert (= tb!8223 b!194314))

(declare-fun m!204373 () Bool)

(assert (=> b!194314 m!204373))

(declare-fun m!204375 () Bool)

(assert (=> tb!8223 m!204375))

(assert (=> d!49348 t!29428))

(declare-fun b_and!13679 () Bool)

(assert (= b_and!13677 (and (=> t!29428 result!11168) b_and!13679)))

(declare-fun tb!8225 () Bool)

(declare-fun t!29430 () Bool)

(assert (=> (and b!190906 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 call!8800)))) t!29430) tb!8225))

(declare-fun result!11170 () Bool)

(assert (= result!11170 result!11168))

(assert (=> d!49348 t!29430))

(declare-fun b_and!13681 () Bool)

(assert (= b_and!13673 (and (=> t!29430 result!11170) b_and!13681)))

(declare-fun t!29432 () Bool)

(declare-fun tb!8227 () Bool)

(assert (=> (and b!191921 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 call!8800)))) t!29432) tb!8227))

(declare-fun result!11172 () Bool)

(assert (= result!11172 result!11168))

(assert (=> d!49348 t!29432))

(declare-fun b_and!13683 () Bool)

(assert (= b_and!13669 (and (=> t!29432 result!11172) b_and!13683)))

(declare-fun t!29434 () Bool)

(declare-fun tb!8229 () Bool)

(assert (=> (and b!191891 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))) (toChars!1123 (transformation!593 (rule!1108 call!8800)))) t!29434) tb!8229))

(declare-fun result!11174 () Bool)

(assert (= result!11174 result!11168))

(assert (=> d!49348 t!29434))

(declare-fun b_and!13685 () Bool)

(assert (= b_and!13671 (and (=> t!29434 result!11174) b_and!13685)))

(declare-fun tb!8231 () Bool)

(declare-fun t!29436 () Bool)

(assert (=> (and b!190916 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 call!8800)))) t!29436) tb!8231))

(declare-fun result!11176 () Bool)

(assert (= result!11176 result!11168))

(assert (=> d!49348 t!29436))

(declare-fun b_and!13687 () Bool)

(assert (= b_and!13675 (and (=> t!29436 result!11176) b_and!13687)))

(declare-fun m!204377 () Bool)

(assert (=> d!49348 m!204377))

(declare-fun m!204379 () Bool)

(assert (=> d!49348 m!204379))

(assert (=> b!191597 d!49348))

(declare-fun d!49350 () Bool)

(assert (=> d!49350 (= (isDefined!324 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))) (not (isEmpty!1622 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))))))

(declare-fun bs!19393 () Bool)

(assert (= bs!19393 d!49350))

(assert (=> bs!19393 m!196513))

(declare-fun m!204381 () Bool)

(assert (=> bs!19393 m!204381))

(assert (=> d!47660 d!49350))

(assert (=> d!47660 d!47708))

(declare-fun d!49352 () Bool)

(declare-fun e!119401 () Bool)

(assert (=> d!49352 e!119401))

(declare-fun res!89006 () Bool)

(assert (=> d!49352 (=> (not res!89006) (not e!119401))))

(assert (=> d!49352 (= res!89006 (isDefined!324 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170)))))))

(assert (=> d!49352 true))

(declare-fun _$52!618 () Unit!3036)

(assert (=> d!49352 (= (choose!1938 thiss!17480 rules!1920 lt!65438 separatorToken!170) _$52!618)))

(declare-fun b!194319 () Bool)

(declare-fun res!89007 () Bool)

(assert (=> b!194319 (=> (not res!89007) (not e!119401))))

(assert (=> b!194319 (= res!89007 (matchR!155 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))) (list!1179 (charsOf!248 separatorToken!170))))))

(declare-fun b!194320 () Bool)

(assert (=> b!194320 (= e!119401 (= (rule!1108 separatorToken!170) (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 separatorToken!170))))))))

(assert (= (and d!49352 res!89006) b!194319))

(assert (= (and b!194319 res!89007) b!194320))

(assert (=> d!49352 m!196513))

(assert (=> d!49352 m!196513))

(assert (=> d!49352 m!197735))

(assert (=> b!194319 m!196513))

(assert (=> b!194319 m!197739))

(assert (=> b!194319 m!196513))

(assert (=> b!194319 m!196439))

(assert (=> b!194319 m!196441))

(assert (=> b!194319 m!196439))

(assert (=> b!194319 m!196441))

(assert (=> b!194319 m!197741))

(assert (=> b!194320 m!196513))

(assert (=> b!194320 m!196513))

(assert (=> b!194320 m!197739))

(assert (=> d!47660 d!49352))

(assert (=> d!47660 d!47630))

(declare-fun d!49354 () Bool)

(declare-fun lt!67462 () BalanceConc!2024)

(assert (=> d!49354 (= (list!1179 lt!67462) (printListTailRec!78 thiss!17480 (dropList!110 (singletonSeq!145 call!8754) 0) (list!1179 (BalanceConc!2025 Empty!1008))))))

(declare-fun e!119402 () BalanceConc!2024)

(assert (=> d!49354 (= lt!67462 e!119402)))

(declare-fun c!37213 () Bool)

(assert (=> d!49354 (= c!37213 (>= 0 (size!2563 (singletonSeq!145 call!8754))))))

(declare-fun e!119403 () Bool)

(assert (=> d!49354 e!119403))

(declare-fun res!89008 () Bool)

(assert (=> d!49354 (=> (not res!89008) (not e!119403))))

(assert (=> d!49354 (= res!89008 (>= 0 0))))

(assert (=> d!49354 (= (printTailRec!173 thiss!17480 (singletonSeq!145 call!8754) 0 (BalanceConc!2025 Empty!1008)) lt!67462)))

(declare-fun b!194321 () Bool)

(assert (=> b!194321 (= e!119403 (<= 0 (size!2563 (singletonSeq!145 call!8754))))))

(declare-fun b!194322 () Bool)

(assert (=> b!194322 (= e!119402 (BalanceConc!2025 Empty!1008))))

(declare-fun b!194323 () Bool)

(assert (=> b!194323 (= e!119402 (printTailRec!173 thiss!17480 (singletonSeq!145 call!8754) (+ 0 1) (++!770 (BalanceConc!2025 Empty!1008) (charsOf!248 (apply!492 (singletonSeq!145 call!8754) 0)))))))

(declare-fun lt!67460 () List!3230)

(assert (=> b!194323 (= lt!67460 (list!1182 (singletonSeq!145 call!8754)))))

(declare-fun lt!67463 () Unit!3036)

(assert (=> b!194323 (= lt!67463 (lemmaDropApply!150 lt!67460 0))))

(assert (=> b!194323 (= (head!682 (drop!163 lt!67460 0)) (apply!497 lt!67460 0))))

(declare-fun lt!67459 () Unit!3036)

(assert (=> b!194323 (= lt!67459 lt!67463)))

(declare-fun lt!67458 () List!3230)

(assert (=> b!194323 (= lt!67458 (list!1182 (singletonSeq!145 call!8754)))))

(declare-fun lt!67461 () Unit!3036)

(assert (=> b!194323 (= lt!67461 (lemmaDropTail!142 lt!67458 0))))

(assert (=> b!194323 (= (tail!385 (drop!163 lt!67458 0)) (drop!163 lt!67458 (+ 0 1)))))

(declare-fun lt!67457 () Unit!3036)

(assert (=> b!194323 (= lt!67457 lt!67461)))

(assert (= (and d!49354 res!89008) b!194321))

(assert (= (and d!49354 c!37213) b!194322))

(assert (= (and d!49354 (not c!37213)) b!194323))

(assert (=> d!49354 m!197075))

(declare-fun m!204383 () Bool)

(assert (=> d!49354 m!204383))

(assert (=> d!49354 m!197539))

(declare-fun m!204385 () Bool)

(assert (=> d!49354 m!204385))

(assert (=> d!49354 m!197539))

(declare-fun m!204387 () Bool)

(assert (=> d!49354 m!204387))

(assert (=> d!49354 m!197075))

(assert (=> d!49354 m!204385))

(declare-fun m!204389 () Bool)

(assert (=> d!49354 m!204389))

(assert (=> b!194321 m!197075))

(assert (=> b!194321 m!204383))

(declare-fun m!204391 () Bool)

(assert (=> b!194323 m!204391))

(declare-fun m!204393 () Bool)

(assert (=> b!194323 m!204393))

(assert (=> b!194323 m!197075))

(declare-fun m!204395 () Bool)

(assert (=> b!194323 m!204395))

(declare-fun m!204397 () Bool)

(assert (=> b!194323 m!204397))

(declare-fun m!204399 () Bool)

(assert (=> b!194323 m!204399))

(declare-fun m!204401 () Bool)

(assert (=> b!194323 m!204401))

(declare-fun m!204403 () Bool)

(assert (=> b!194323 m!204403))

(assert (=> b!194323 m!197075))

(assert (=> b!194323 m!204401))

(assert (=> b!194323 m!197075))

(declare-fun m!204405 () Bool)

(assert (=> b!194323 m!204405))

(declare-fun m!204407 () Bool)

(assert (=> b!194323 m!204407))

(assert (=> b!194323 m!204403))

(assert (=> b!194323 m!204405))

(declare-fun m!204409 () Bool)

(assert (=> b!194323 m!204409))

(assert (=> b!194323 m!204391))

(declare-fun m!204411 () Bool)

(assert (=> b!194323 m!204411))

(declare-fun m!204413 () Bool)

(assert (=> b!194323 m!204413))

(assert (=> b!194323 m!204409))

(declare-fun m!204415 () Bool)

(assert (=> b!194323 m!204415))

(assert (=> b!191259 d!49354))

(declare-fun d!49356 () Bool)

(assert (=> d!49356 (= (list!1179 lt!65604) (list!1183 (c!36425 lt!65604)))))

(declare-fun bs!19394 () Bool)

(assert (= bs!19394 d!49356))

(declare-fun m!204417 () Bool)

(assert (=> bs!19394 m!204417))

(assert (=> b!191259 d!49356))

(declare-fun d!49358 () Bool)

(declare-fun e!119404 () Bool)

(assert (=> d!49358 e!119404))

(declare-fun res!89009 () Bool)

(assert (=> d!49358 (=> (not res!89009) (not e!119404))))

(declare-fun lt!67464 () BalanceConc!2026)

(assert (=> d!49358 (= res!89009 (= (list!1182 lt!67464) (Cons!3220 call!8754 Nil!3220)))))

(assert (=> d!49358 (= lt!67464 (singleton!59 call!8754))))

(assert (=> d!49358 (= (singletonSeq!145 call!8754) lt!67464)))

(declare-fun b!194324 () Bool)

(assert (=> b!194324 (= e!119404 (isBalanced!264 (c!36427 lt!67464)))))

(assert (= (and d!49358 res!89009) b!194324))

(declare-fun m!204419 () Bool)

(assert (=> d!49358 m!204419))

(declare-fun m!204421 () Bool)

(assert (=> d!49358 m!204421))

(declare-fun m!204423 () Bool)

(assert (=> b!194324 m!204423))

(assert (=> b!191259 d!49358))

(declare-fun d!49360 () Bool)

(assert (=> d!49360 (isDefined!323 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 call!8750) (list!1179 lt!65604))))))

(declare-fun lt!67472 () Unit!3036)

(declare-fun e!119406 () Unit!3036)

(assert (=> d!49360 (= lt!67472 e!119406)))

(declare-fun c!37214 () Bool)

(assert (=> d!49360 (= c!37214 (isEmpty!1617 (maxPrefix!209 thiss!17480 rules!1920 (++!768 (list!1179 call!8750) (list!1179 lt!65604)))))))

(declare-fun lt!67470 () Unit!3036)

(declare-fun lt!67471 () Unit!3036)

(assert (=> d!49360 (= lt!67470 lt!67471)))

(declare-fun e!119405 () Bool)

(assert (=> d!49360 e!119405))

(declare-fun res!89010 () Bool)

(assert (=> d!49360 (=> (not res!89010) (not e!119405))))

(declare-fun lt!67480 () Token!930)

(assert (=> d!49360 (= res!89010 (isDefined!324 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!67480)))))))

(assert (=> d!49360 (= lt!67471 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!34 thiss!17480 rules!1920 (list!1179 call!8750) lt!67480))))

(declare-fun lt!67469 () Unit!3036)

(declare-fun lt!67481 () Unit!3036)

(assert (=> d!49360 (= lt!67469 lt!67481)))

(declare-fun lt!67465 () List!3228)

(assert (=> d!49360 (isPrefix!289 lt!67465 (++!768 (list!1179 call!8750) (list!1179 lt!65604)))))

(assert (=> d!49360 (= lt!67481 (lemmaPrefixStaysPrefixWhenAddingToSuffix!28 lt!67465 (list!1179 call!8750) (list!1179 lt!65604)))))

(assert (=> d!49360 (= lt!67465 (list!1179 (charsOf!248 lt!67480)))))

(declare-fun lt!67476 () Unit!3036)

(declare-fun lt!67478 () Unit!3036)

(assert (=> d!49360 (= lt!67476 lt!67478)))

(declare-fun lt!67467 () List!3228)

(declare-fun lt!67477 () List!3228)

(assert (=> d!49360 (isPrefix!289 lt!67467 (++!768 lt!67467 lt!67477))))

(assert (=> d!49360 (= lt!67478 (lemmaConcatTwoListThenFirstIsPrefix!184 lt!67467 lt!67477))))

(assert (=> d!49360 (= lt!67477 (_2!1869 (get!938 (maxPrefix!209 thiss!17480 rules!1920 (list!1179 call!8750)))))))

(assert (=> d!49360 (= lt!67467 (list!1179 (charsOf!248 lt!67480)))))

(assert (=> d!49360 (= lt!67480 (head!682 (list!1182 (_1!1867 (lex!279 thiss!17480 rules!1920 (seqFromList!563 (list!1179 call!8750)))))))))

(assert (=> d!49360 (not (isEmpty!1610 rules!1920))))

(assert (=> d!49360 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!57 thiss!17480 rules!1920 (list!1179 call!8750) (list!1179 lt!65604)) lt!67472)))

(declare-fun b!194325 () Bool)

(declare-fun res!89011 () Bool)

(assert (=> b!194325 (=> (not res!89011) (not e!119405))))

(assert (=> b!194325 (= res!89011 (matchR!155 (regex!593 (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!67480))))) (list!1179 (charsOf!248 lt!67480))))))

(declare-fun b!194326 () Bool)

(assert (=> b!194326 (= e!119405 (= (rule!1108 lt!67480) (get!937 (getRuleFromTag!34 thiss!17480 rules!1920 (tag!771 (rule!1108 lt!67480))))))))

(declare-fun b!194327 () Bool)

(declare-fun Unit!3102 () Unit!3036)

(assert (=> b!194327 (= e!119406 Unit!3102)))

(declare-fun lt!67475 () List!3228)

(assert (=> b!194327 (= lt!67475 (++!768 (list!1179 call!8750) (list!1179 lt!65604)))))

(declare-fun lt!67466 () Unit!3036)

(assert (=> b!194327 (= lt!67466 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!28 thiss!17480 (rule!1108 lt!67480) rules!1920 lt!67475))))

(assert (=> b!194327 (isEmpty!1617 (maxPrefixOneRule!93 thiss!17480 (rule!1108 lt!67480) lt!67475))))

(declare-fun lt!67474 () Unit!3036)

(assert (=> b!194327 (= lt!67474 lt!67466)))

(declare-fun lt!67473 () List!3228)

(assert (=> b!194327 (= lt!67473 (list!1179 (charsOf!248 lt!67480)))))

(declare-fun lt!67479 () Unit!3036)

(assert (=> b!194327 (= lt!67479 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!28 thiss!17480 (rule!1108 lt!67480) lt!67473 (++!768 (list!1179 call!8750) (list!1179 lt!65604))))))

(assert (=> b!194327 (not (matchR!155 (regex!593 (rule!1108 lt!67480)) lt!67473))))

(declare-fun lt!67468 () Unit!3036)

(assert (=> b!194327 (= lt!67468 lt!67479)))

(assert (=> b!194327 false))

(declare-fun b!194328 () Bool)

(declare-fun Unit!3103 () Unit!3036)

(assert (=> b!194328 (= e!119406 Unit!3103)))

(assert (= (and d!49360 res!89010) b!194325))

(assert (= (and b!194325 res!89011) b!194326))

(assert (= (and d!49360 c!37214) b!194327))

(assert (= (and d!49360 (not c!37214)) b!194328))

(declare-fun m!204425 () Bool)

(assert (=> d!49360 m!204425))

(declare-fun m!204427 () Bool)

(assert (=> d!49360 m!204427))

(declare-fun m!204429 () Bool)

(assert (=> d!49360 m!204429))

(assert (=> d!49360 m!196433))

(declare-fun m!204431 () Bool)

(assert (=> d!49360 m!204431))

(declare-fun m!204433 () Bool)

(assert (=> d!49360 m!204433))

(declare-fun m!204435 () Bool)

(assert (=> d!49360 m!204435))

(assert (=> d!49360 m!197087))

(declare-fun m!204437 () Bool)

(assert (=> d!49360 m!204437))

(declare-fun m!204439 () Bool)

(assert (=> d!49360 m!204439))

(declare-fun m!204441 () Bool)

(assert (=> d!49360 m!204441))

(declare-fun m!204443 () Bool)

(assert (=> d!49360 m!204443))

(declare-fun m!204445 () Bool)

(assert (=> d!49360 m!204445))

(assert (=> d!49360 m!204435))

(declare-fun m!204447 () Bool)

(assert (=> d!49360 m!204447))

(declare-fun m!204449 () Bool)

(assert (=> d!49360 m!204449))

(declare-fun m!204451 () Bool)

(assert (=> d!49360 m!204451))

(declare-fun m!204453 () Bool)

(assert (=> d!49360 m!204453))

(declare-fun m!204455 () Bool)

(assert (=> d!49360 m!204455))

(assert (=> d!49360 m!197087))

(assert (=> d!49360 m!197085))

(assert (=> d!49360 m!204443))

(declare-fun m!204457 () Bool)

(assert (=> d!49360 m!204457))

(declare-fun m!204459 () Bool)

(assert (=> d!49360 m!204459))

(assert (=> d!49360 m!204449))

(assert (=> d!49360 m!197087))

(assert (=> d!49360 m!204453))

(assert (=> d!49360 m!204439))

(declare-fun m!204461 () Bool)

(assert (=> d!49360 m!204461))

(assert (=> d!49360 m!204457))

(assert (=> d!49360 m!197087))

(assert (=> d!49360 m!197085))

(declare-fun m!204463 () Bool)

(assert (=> d!49360 m!204463))

(assert (=> d!49360 m!204443))

(assert (=> d!49360 m!204439))

(assert (=> d!49360 m!204431))

(assert (=> d!49360 m!197087))

(assert (=> d!49360 m!204425))

(assert (=> b!194325 m!204451))

(declare-fun m!204465 () Bool)

(assert (=> b!194325 m!204465))

(assert (=> b!194325 m!204449))

(assert (=> b!194325 m!204451))

(assert (=> b!194325 m!204431))

(assert (=> b!194325 m!204431))

(declare-fun m!204467 () Bool)

(assert (=> b!194325 m!204467))

(assert (=> b!194325 m!204449))

(assert (=> b!194326 m!204431))

(assert (=> b!194326 m!204431))

(assert (=> b!194326 m!204467))

(assert (=> b!194327 m!204443))

(declare-fun m!204469 () Bool)

(assert (=> b!194327 m!204469))

(declare-fun m!204471 () Bool)

(assert (=> b!194327 m!204471))

(declare-fun m!204473 () Bool)

(assert (=> b!194327 m!204473))

(declare-fun m!204475 () Bool)

(assert (=> b!194327 m!204475))

(assert (=> b!194327 m!204473))

(assert (=> b!194327 m!197087))

(assert (=> b!194327 m!197085))

(assert (=> b!194327 m!204443))

(assert (=> b!194327 m!204449))

(declare-fun m!204477 () Bool)

(assert (=> b!194327 m!204477))

(assert (=> b!194327 m!204449))

(assert (=> b!194327 m!204451))

(assert (=> b!191259 d!49360))

(declare-fun d!49362 () Bool)

(assert (=> d!49362 (= (list!1179 call!8750) (list!1183 (c!36425 call!8750)))))

(declare-fun bs!19395 () Bool)

(assert (= bs!19395 d!49362))

(declare-fun m!204479 () Bool)

(assert (=> bs!19395 m!204479))

(assert (=> b!191259 d!49362))

(declare-fun d!49364 () Bool)

(declare-fun lt!67482 () BalanceConc!2024)

(assert (=> d!49364 (= (list!1179 lt!67482) (printList!163 thiss!17480 (list!1182 (singletonSeq!145 call!8754))))))

(assert (=> d!49364 (= lt!67482 (printTailRec!173 thiss!17480 (singletonSeq!145 call!8754) 0 (BalanceConc!2025 Empty!1008)))))

(assert (=> d!49364 (= (print!210 thiss!17480 (singletonSeq!145 call!8754)) lt!67482)))

(declare-fun bs!19396 () Bool)

(assert (= bs!19396 d!49364))

(declare-fun m!204481 () Bool)

(assert (=> bs!19396 m!204481))

(assert (=> bs!19396 m!197075))

(assert (=> bs!19396 m!204395))

(assert (=> bs!19396 m!204395))

(declare-fun m!204483 () Bool)

(assert (=> bs!19396 m!204483))

(assert (=> bs!19396 m!197075))

(assert (=> bs!19396 m!197081))

(assert (=> b!191259 d!49364))

(assert (=> bm!8792 d!48172))

(assert (=> d!47578 d!48812))

(declare-fun b!194329 () Bool)

(declare-fun res!89015 () Bool)

(declare-fun e!119407 () Bool)

(assert (=> b!194329 (=> res!89015 e!119407)))

(assert (=> b!194329 (= res!89015 (not ((_ is Concat!1433) (regex!593 (rule!1108 (h!8617 tokens!465))))))))

(declare-fun e!119410 () Bool)

(assert (=> b!194329 (= e!119410 e!119407)))

(declare-fun c!37216 () Bool)

(declare-fun c!37215 () Bool)

(declare-fun call!9019 () Bool)

(declare-fun bm!9012 () Bool)

(assert (=> bm!9012 (= call!9019 (validRegex!201 (ite c!37216 (reg!1146 (regex!593 (rule!1108 (h!8617 tokens!465)))) (ite c!37215 (regTwo!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))) (regOne!2146 (regex!593 (rule!1108 (h!8617 tokens!465))))))))))

(declare-fun bm!9013 () Bool)

(declare-fun call!9018 () Bool)

(assert (=> bm!9013 (= call!9018 (validRegex!201 (ite c!37215 (regOne!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))) (regTwo!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))))))

(declare-fun d!49366 () Bool)

(declare-fun res!89013 () Bool)

(declare-fun e!119412 () Bool)

(assert (=> d!49366 (=> res!89013 e!119412)))

(assert (=> d!49366 (= res!89013 ((_ is ElementMatch!817) (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(assert (=> d!49366 (= (validRegex!201 (regex!593 (rule!1108 (h!8617 tokens!465)))) e!119412)))

(declare-fun bm!9014 () Bool)

(declare-fun call!9017 () Bool)

(assert (=> bm!9014 (= call!9017 call!9019)))

(declare-fun b!194330 () Bool)

(declare-fun res!89014 () Bool)

(declare-fun e!119413 () Bool)

(assert (=> b!194330 (=> (not res!89014) (not e!119413))))

(assert (=> b!194330 (= res!89014 call!9018)))

(assert (=> b!194330 (= e!119410 e!119413)))

(declare-fun b!194331 () Bool)

(declare-fun e!119411 () Bool)

(assert (=> b!194331 (= e!119412 e!119411)))

(assert (=> b!194331 (= c!37216 ((_ is Star!817) (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(declare-fun b!194332 () Bool)

(declare-fun e!119409 () Bool)

(assert (=> b!194332 (= e!119409 call!9019)))

(declare-fun b!194333 () Bool)

(declare-fun e!119408 () Bool)

(assert (=> b!194333 (= e!119407 e!119408)))

(declare-fun res!89016 () Bool)

(assert (=> b!194333 (=> (not res!89016) (not e!119408))))

(assert (=> b!194333 (= res!89016 call!9017)))

(declare-fun b!194334 () Bool)

(assert (=> b!194334 (= e!119413 call!9017)))

(declare-fun b!194335 () Bool)

(assert (=> b!194335 (= e!119411 e!119409)))

(declare-fun res!89012 () Bool)

(assert (=> b!194335 (= res!89012 (not (nullable!128 (reg!1146 (regex!593 (rule!1108 (h!8617 tokens!465)))))))))

(assert (=> b!194335 (=> (not res!89012) (not e!119409))))

(declare-fun b!194336 () Bool)

(assert (=> b!194336 (= e!119408 call!9018)))

(declare-fun b!194337 () Bool)

(assert (=> b!194337 (= e!119411 e!119410)))

(assert (=> b!194337 (= c!37215 ((_ is Union!817) (regex!593 (rule!1108 (h!8617 tokens!465)))))))

(assert (= (and d!49366 (not res!89013)) b!194331))

(assert (= (and b!194331 c!37216) b!194335))

(assert (= (and b!194331 (not c!37216)) b!194337))

(assert (= (and b!194335 res!89012) b!194332))

(assert (= (and b!194337 c!37215) b!194330))

(assert (= (and b!194337 (not c!37215)) b!194329))

(assert (= (and b!194330 res!89014) b!194334))

(assert (= (and b!194329 (not res!89015)) b!194333))

(assert (= (and b!194333 res!89016) b!194336))

(assert (= (or b!194330 b!194336) bm!9013))

(assert (= (or b!194334 b!194333) bm!9014))

(assert (= (or b!194332 bm!9014) bm!9012))

(declare-fun m!204485 () Bool)

(assert (=> bm!9012 m!204485))

(declare-fun m!204487 () Bool)

(assert (=> bm!9013 m!204487))

(declare-fun m!204489 () Bool)

(assert (=> b!194335 m!204489))

(assert (=> d!47578 d!49366))

(declare-fun d!49368 () Bool)

(assert (=> d!49368 (= (list!1179 lt!65743) (list!1183 (c!36425 lt!65743)))))

(declare-fun bs!19397 () Bool)

(assert (= bs!19397 d!49368))

(declare-fun m!204491 () Bool)

(assert (=> bs!19397 m!204491))

(assert (=> d!47614 d!49368))

(declare-fun d!49370 () Bool)

(declare-fun c!37217 () Bool)

(assert (=> d!49370 (= c!37217 ((_ is Cons!3220) (list!1182 lt!65419)))))

(declare-fun e!119414 () List!3228)

(assert (=> d!49370 (= (printList!163 thiss!17480 (list!1182 lt!65419)) e!119414)))

(declare-fun b!194338 () Bool)

(assert (=> b!194338 (= e!119414 (++!768 (list!1179 (charsOf!248 (h!8617 (list!1182 lt!65419)))) (printList!163 thiss!17480 (t!28932 (list!1182 lt!65419)))))))

(declare-fun b!194339 () Bool)

(assert (=> b!194339 (= e!119414 Nil!3218)))

(assert (= (and d!49370 c!37217) b!194338))

(assert (= (and d!49370 (not c!37217)) b!194339))

(declare-fun m!204493 () Bool)

(assert (=> b!194338 m!204493))

(assert (=> b!194338 m!204493))

(declare-fun m!204495 () Bool)

(assert (=> b!194338 m!204495))

(declare-fun m!204497 () Bool)

(assert (=> b!194338 m!204497))

(assert (=> b!194338 m!204495))

(assert (=> b!194338 m!204497))

(declare-fun m!204499 () Bool)

(assert (=> b!194338 m!204499))

(assert (=> d!47614 d!49370))

(assert (=> d!47614 d!48746))

(assert (=> d!47614 d!47616))

(assert (=> b!191434 d!48106))

(assert (=> b!191434 d!48108))

(assert (=> b!191434 d!48104))

(assert (=> b!191434 d!48110))

(assert (=> b!191570 d!49122))

(declare-fun d!49372 () Bool)

(assert (=> d!49372 (= (inv!15 (value!21216 separatorToken!170)) (= (charsToBigInt!0 (text!4754 (value!21216 separatorToken!170)) 0) (value!21211 (value!21216 separatorToken!170))))))

(declare-fun bs!19398 () Bool)

(assert (= bs!19398 d!49372))

(declare-fun m!204501 () Bool)

(assert (=> bs!19398 m!204501))

(assert (=> b!191625 d!49372))

(declare-fun d!49374 () Bool)

(declare-fun e!119415 () Bool)

(assert (=> d!49374 e!119415))

(declare-fun res!89017 () Bool)

(assert (=> d!49374 (=> (not res!89017) (not e!119415))))

(declare-fun lt!67483 () List!3228)

(assert (=> d!49374 (= res!89017 (= (content!430 lt!67483) ((_ map or) (content!430 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))) (content!430 (_2!1869 (get!938 lt!65874))))))))

(declare-fun e!119416 () List!3228)

(assert (=> d!49374 (= lt!67483 e!119416)))

(declare-fun c!37218 () Bool)

(assert (=> d!49374 (= c!37218 ((_ is Nil!3218) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))))))

(assert (=> d!49374 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874)))) (_2!1869 (get!938 lt!65874))) lt!67483)))

(declare-fun b!194340 () Bool)

(assert (=> b!194340 (= e!119416 (_2!1869 (get!938 lt!65874)))))

(declare-fun b!194342 () Bool)

(declare-fun res!89018 () Bool)

(assert (=> b!194342 (=> (not res!89018) (not e!119415))))

(assert (=> b!194342 (= res!89018 (= (size!2566 lt!67483) (+ (size!2566 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))) (size!2566 (_2!1869 (get!938 lt!65874))))))))

(declare-fun b!194341 () Bool)

(assert (=> b!194341 (= e!119416 (Cons!3218 (h!8615 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))) (++!768 (t!28930 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874))))) (_2!1869 (get!938 lt!65874)))))))

(declare-fun b!194343 () Bool)

(assert (=> b!194343 (= e!119415 (or (not (= (_2!1869 (get!938 lt!65874)) Nil!3218)) (= lt!67483 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65874)))))))))

(assert (= (and d!49374 c!37218) b!194340))

(assert (= (and d!49374 (not c!37218)) b!194341))

(assert (= (and d!49374 res!89017) b!194342))

(assert (= (and b!194342 res!89018) b!194343))

(declare-fun m!204503 () Bool)

(assert (=> d!49374 m!204503))

(assert (=> d!49374 m!197859))

(declare-fun m!204505 () Bool)

(assert (=> d!49374 m!204505))

(declare-fun m!204507 () Bool)

(assert (=> d!49374 m!204507))

(declare-fun m!204509 () Bool)

(assert (=> b!194342 m!204509))

(assert (=> b!194342 m!197859))

(declare-fun m!204511 () Bool)

(assert (=> b!194342 m!204511))

(assert (=> b!194342 m!197881))

(declare-fun m!204513 () Bool)

(assert (=> b!194341 m!204513))

(assert (=> b!191693 d!49374))

(assert (=> b!191693 d!49292))

(assert (=> b!191693 d!49294))

(assert (=> b!191693 d!48086))

(declare-fun d!49376 () Bool)

(declare-fun lt!67484 () Int)

(assert (=> d!49376 (>= lt!67484 0)))

(declare-fun e!119417 () Int)

(assert (=> d!49376 (= lt!67484 e!119417)))

(declare-fun c!37219 () Bool)

(assert (=> d!49376 (= c!37219 ((_ is Nil!3218) (_2!1869 (get!938 lt!65493))))))

(assert (=> d!49376 (= (size!2566 (_2!1869 (get!938 lt!65493))) lt!67484)))

(declare-fun b!194344 () Bool)

(assert (=> b!194344 (= e!119417 0)))

(declare-fun b!194345 () Bool)

(assert (=> b!194345 (= e!119417 (+ 1 (size!2566 (t!28930 (_2!1869 (get!938 lt!65493))))))))

(assert (= (and d!49376 c!37219) b!194344))

(assert (= (and d!49376 (not c!37219)) b!194345))

(declare-fun m!204515 () Bool)

(assert (=> b!194345 m!204515))

(assert (=> b!191061 d!49376))

(assert (=> b!191061 d!48182))

(declare-fun d!49378 () Bool)

(declare-fun lt!67485 () Int)

(assert (=> d!49378 (>= lt!67485 0)))

(declare-fun e!119418 () Int)

(assert (=> d!49378 (= lt!67485 e!119418)))

(declare-fun c!37220 () Bool)

(assert (=> d!49378 (= c!37220 ((_ is Nil!3218) lt!65430))))

(assert (=> d!49378 (= (size!2566 lt!65430) lt!67485)))

(declare-fun b!194346 () Bool)

(assert (=> b!194346 (= e!119418 0)))

(declare-fun b!194347 () Bool)

(assert (=> b!194347 (= e!119418 (+ 1 (size!2566 (t!28930 lt!65430))))))

(assert (= (and d!49378 c!37220) b!194346))

(assert (= (and d!49378 (not c!37220)) b!194347))

(declare-fun m!204517 () Bool)

(assert (=> b!194347 m!204517))

(assert (=> b!191061 d!49378))

(declare-fun d!49380 () Bool)

(assert (=> d!49380 (= (list!1179 call!8769) (list!1183 (c!36425 call!8769)))))

(declare-fun bs!19399 () Bool)

(assert (= bs!19399 d!49380))

(declare-fun m!204519 () Bool)

(assert (=> bs!19399 m!204519))

(assert (=> b!191370 d!49380))

(declare-fun d!49382 () Bool)

(declare-fun lt!67486 () Bool)

(assert (=> d!49382 (= lt!67486 (select (content!433 rules!1920) (get!937 lt!65932)))))

(declare-fun e!119420 () Bool)

(assert (=> d!49382 (= lt!67486 e!119420)))

(declare-fun res!89019 () Bool)

(assert (=> d!49382 (=> (not res!89019) (not e!119420))))

(assert (=> d!49382 (= res!89019 ((_ is Cons!3219) rules!1920))))

(assert (=> d!49382 (= (contains!516 rules!1920 (get!937 lt!65932)) lt!67486)))

(declare-fun b!194348 () Bool)

(declare-fun e!119419 () Bool)

(assert (=> b!194348 (= e!119420 e!119419)))

(declare-fun res!89020 () Bool)

(assert (=> b!194348 (=> res!89020 e!119419)))

(assert (=> b!194348 (= res!89020 (= (h!8616 rules!1920) (get!937 lt!65932)))))

(declare-fun b!194349 () Bool)

(assert (=> b!194349 (= e!119419 (contains!516 (t!28931 rules!1920) (get!937 lt!65932)))))

(assert (= (and d!49382 res!89019) b!194348))

(assert (= (and b!194348 (not res!89020)) b!194349))

(assert (=> d!49382 m!203831))

(assert (=> d!49382 m!198085))

(declare-fun m!204521 () Bool)

(assert (=> d!49382 m!204521))

(assert (=> b!194349 m!198085))

(declare-fun m!204523 () Bool)

(assert (=> b!194349 m!204523))

(assert (=> b!191803 d!49382))

(assert (=> b!191803 d!48092))

(declare-fun bs!19400 () Bool)

(declare-fun d!49384 () Bool)

(assert (= bs!19400 (and d!49384 d!49070)))

(declare-fun lambda!5936 () Int)

(assert (=> bs!19400 (= lambda!5936 lambda!5923)))

(assert (=> d!49384 true))

(declare-fun lt!67489 () Bool)

(assert (=> d!49384 (= lt!67489 (rulesValidInductive!148 thiss!17480 rules!1920))))

(assert (=> d!49384 (= lt!67489 (forall!679 rules!1920 lambda!5936))))

(assert (=> d!49384 (= (rulesValid!167 thiss!17480 rules!1920) lt!67489)))

(declare-fun bs!19401 () Bool)

(assert (= bs!19401 d!49384))

(assert (=> bs!19401 m!196735))

(declare-fun m!204525 () Bool)

(assert (=> bs!19401 m!204525))

(assert (=> d!47630 d!49384))

(assert (=> b!191688 d!49292))

(assert (=> b!191688 d!49294))

(assert (=> b!191688 d!48086))

(declare-fun d!49386 () Bool)

(declare-fun lt!67490 () Int)

(assert (=> d!49386 (>= lt!67490 0)))

(declare-fun e!119421 () Int)

(assert (=> d!49386 (= lt!67490 e!119421)))

(declare-fun c!37221 () Bool)

(assert (=> d!49386 (= c!37221 ((_ is Nil!3218) (originalCharacters!636 separatorToken!170)))))

(assert (=> d!49386 (= (size!2566 (originalCharacters!636 separatorToken!170)) lt!67490)))

(declare-fun b!194350 () Bool)

(assert (=> b!194350 (= e!119421 0)))

(declare-fun b!194351 () Bool)

(assert (=> b!194351 (= e!119421 (+ 1 (size!2566 (t!28930 (originalCharacters!636 separatorToken!170)))))))

(assert (= (and d!49386 c!37221) b!194350))

(assert (= (and d!49386 (not c!37221)) b!194351))

(declare-fun m!204527 () Bool)

(assert (=> b!194351 m!204527))

(assert (=> b!191631 d!49386))

(declare-fun d!49388 () Bool)

(declare-fun lt!67491 () Bool)

(assert (=> d!49388 (= lt!67491 (isEmpty!1612 (list!1182 (_1!1867 lt!65937))))))

(assert (=> d!49388 (= lt!67491 (isEmpty!1620 (c!36427 (_1!1867 lt!65937))))))

(assert (=> d!49388 (= (isEmpty!1611 (_1!1867 lt!65937)) lt!67491)))

(declare-fun bs!19402 () Bool)

(assert (= bs!19402 d!49388))

(assert (=> bs!19402 m!198129))

(assert (=> bs!19402 m!198129))

(declare-fun m!204529 () Bool)

(assert (=> bs!19402 m!204529))

(declare-fun m!204531 () Bool)

(assert (=> bs!19402 m!204531))

(assert (=> b!191844 d!49388))

(declare-fun d!49390 () Bool)

(declare-fun lt!67492 () Int)

(assert (=> d!49390 (= lt!67492 (size!2566 (list!1179 (_2!1867 lt!65740))))))

(assert (=> d!49390 (= lt!67492 (size!2573 (c!36425 (_2!1867 lt!65740))))))

(assert (=> d!49390 (= (size!2569 (_2!1867 lt!65740)) lt!67492)))

(declare-fun bs!19403 () Bool)

(assert (= bs!19403 d!49390))

(assert (=> bs!19403 m!197499))

(assert (=> bs!19403 m!197499))

(declare-fun m!204533 () Bool)

(assert (=> bs!19403 m!204533))

(declare-fun m!204535 () Bool)

(assert (=> bs!19403 m!204535))

(assert (=> b!191516 d!49390))

(declare-fun d!49392 () Bool)

(declare-fun lt!67493 () Int)

(assert (=> d!49392 (= lt!67493 (size!2566 (list!1179 (seqFromList!563 lt!65413))))))

(assert (=> d!49392 (= lt!67493 (size!2573 (c!36425 (seqFromList!563 lt!65413))))))

(assert (=> d!49392 (= (size!2569 (seqFromList!563 lt!65413)) lt!67493)))

(declare-fun bs!19404 () Bool)

(assert (= bs!19404 d!49392))

(assert (=> bs!19404 m!196469))

(assert (=> bs!19404 m!197495))

(assert (=> bs!19404 m!197495))

(assert (=> bs!19404 m!199683))

(declare-fun m!204537 () Bool)

(assert (=> bs!19404 m!204537))

(assert (=> b!191516 d!49392))

(declare-fun d!49394 () Bool)

(assert (=> d!49394 (= (list!1182 lt!65908) (list!1186 (c!36427 lt!65908)))))

(declare-fun bs!19405 () Bool)

(assert (= bs!19405 d!49394))

(declare-fun m!204539 () Bool)

(assert (=> bs!19405 m!204539))

(assert (=> d!47702 d!49394))

(declare-fun d!49396 () Bool)

(declare-fun e!119422 () Bool)

(assert (=> d!49396 e!119422))

(declare-fun res!89021 () Bool)

(assert (=> d!49396 (=> (not res!89021) (not e!119422))))

(declare-fun lt!67494 () BalanceConc!2026)

(assert (=> d!49396 (= res!89021 (= (list!1182 lt!67494) (Cons!3220 lt!65439 Nil!3220)))))

(assert (=> d!49396 (= lt!67494 (choose!1952 lt!65439))))

(assert (=> d!49396 (= (singleton!59 lt!65439) lt!67494)))

(declare-fun b!194352 () Bool)

(assert (=> b!194352 (= e!119422 (isBalanced!264 (c!36427 lt!67494)))))

(assert (= (and d!49396 res!89021) b!194352))

(declare-fun m!204541 () Bool)

(assert (=> d!49396 m!204541))

(declare-fun m!204543 () Bool)

(assert (=> d!49396 m!204543))

(declare-fun m!204545 () Bool)

(assert (=> b!194352 m!204545))

(assert (=> d!47702 d!49396))

(declare-fun b!194353 () Bool)

(declare-fun res!89024 () Bool)

(declare-fun e!119428 () Bool)

(assert (=> b!194353 (=> (not res!89024) (not e!119428))))

(assert (=> b!194353 (= res!89024 (isEmpty!1609 (tail!386 (tail!386 lt!65438))))))

(declare-fun bm!9015 () Bool)

(declare-fun call!9020 () Bool)

(assert (=> bm!9015 (= call!9020 (isEmpty!1609 (tail!386 lt!65438)))))

(declare-fun d!49398 () Bool)

(declare-fun e!119423 () Bool)

(assert (=> d!49398 e!119423))

(declare-fun c!37223 () Bool)

(assert (=> d!49398 (= c!37223 ((_ is EmptyExpr!817) (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438))))))

(declare-fun lt!67495 () Bool)

(declare-fun e!119424 () Bool)

(assert (=> d!49398 (= lt!67495 e!119424)))

(declare-fun c!37224 () Bool)

(assert (=> d!49398 (= c!37224 (isEmpty!1609 (tail!386 lt!65438)))))

(assert (=> d!49398 (validRegex!201 (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438)))))

(assert (=> d!49398 (= (matchR!155 (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438)) (tail!386 lt!65438)) lt!67495)))

(declare-fun b!194354 () Bool)

(assert (=> b!194354 (= e!119424 (nullable!128 (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438))))))

(declare-fun b!194355 () Bool)

(assert (=> b!194355 (= e!119428 (= (head!684 (tail!386 lt!65438)) (c!36426 (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438)))))))

(declare-fun b!194356 () Bool)

(declare-fun e!119425 () Bool)

(assert (=> b!194356 (= e!119425 (not (= (head!684 (tail!386 lt!65438)) (c!36426 (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438))))))))

(declare-fun b!194357 () Bool)

(declare-fun e!119427 () Bool)

(assert (=> b!194357 (= e!119423 e!119427)))

(declare-fun c!37222 () Bool)

(assert (=> b!194357 (= c!37222 ((_ is EmptyLang!817) (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438))))))

(declare-fun b!194358 () Bool)

(assert (=> b!194358 (= e!119423 (= lt!67495 call!9020))))

(declare-fun b!194359 () Bool)

(declare-fun e!119426 () Bool)

(declare-fun e!119429 () Bool)

(assert (=> b!194359 (= e!119426 e!119429)))

(declare-fun res!89023 () Bool)

(assert (=> b!194359 (=> (not res!89023) (not e!119429))))

(assert (=> b!194359 (= res!89023 (not lt!67495))))

(declare-fun b!194360 () Bool)

(assert (=> b!194360 (= e!119427 (not lt!67495))))

(declare-fun b!194361 () Bool)

(declare-fun res!89028 () Bool)

(assert (=> b!194361 (=> res!89028 e!119425)))

(assert (=> b!194361 (= res!89028 (not (isEmpty!1609 (tail!386 (tail!386 lt!65438)))))))

(declare-fun b!194362 () Bool)

(declare-fun res!89025 () Bool)

(assert (=> b!194362 (=> res!89025 e!119426)))

(assert (=> b!194362 (= res!89025 (not ((_ is ElementMatch!817) (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438)))))))

(assert (=> b!194362 (= e!119427 e!119426)))

(declare-fun b!194363 () Bool)

(declare-fun res!89029 () Bool)

(assert (=> b!194363 (=> res!89029 e!119426)))

(assert (=> b!194363 (= res!89029 e!119428)))

(declare-fun res!89022 () Bool)

(assert (=> b!194363 (=> (not res!89022) (not e!119428))))

(assert (=> b!194363 (= res!89022 lt!67495)))

(declare-fun b!194364 () Bool)

(assert (=> b!194364 (= e!119424 (matchR!155 (derivativeStep!94 (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438)) (head!684 (tail!386 lt!65438))) (tail!386 (tail!386 lt!65438))))))

(declare-fun b!194365 () Bool)

(assert (=> b!194365 (= e!119429 e!119425)))

(declare-fun res!89026 () Bool)

(assert (=> b!194365 (=> res!89026 e!119425)))

(assert (=> b!194365 (= res!89026 call!9020)))

(declare-fun b!194366 () Bool)

(declare-fun res!89027 () Bool)

(assert (=> b!194366 (=> (not res!89027) (not e!119428))))

(assert (=> b!194366 (= res!89027 (not call!9020))))

(assert (= (and d!49398 c!37224) b!194354))

(assert (= (and d!49398 (not c!37224)) b!194364))

(assert (= (and d!49398 c!37223) b!194358))

(assert (= (and d!49398 (not c!37223)) b!194357))

(assert (= (and b!194357 c!37222) b!194360))

(assert (= (and b!194357 (not c!37222)) b!194362))

(assert (= (and b!194362 (not res!89025)) b!194363))

(assert (= (and b!194363 res!89022) b!194366))

(assert (= (and b!194366 res!89027) b!194353))

(assert (= (and b!194353 res!89024) b!194355))

(assert (= (and b!194363 (not res!89029)) b!194359))

(assert (= (and b!194359 res!89023) b!194365))

(assert (= (and b!194365 (not res!89026)) b!194361))

(assert (= (and b!194361 (not res!89028)) b!194356))

(assert (= (or b!194358 b!194365 b!194366) bm!9015))

(assert (=> bm!9015 m!197593))

(assert (=> bm!9015 m!197597))

(assert (=> b!194364 m!197593))

(declare-fun m!204547 () Bool)

(assert (=> b!194364 m!204547))

(assert (=> b!194364 m!197591))

(assert (=> b!194364 m!204547))

(declare-fun m!204549 () Bool)

(assert (=> b!194364 m!204549))

(assert (=> b!194364 m!197593))

(declare-fun m!204551 () Bool)

(assert (=> b!194364 m!204551))

(assert (=> b!194364 m!204549))

(assert (=> b!194364 m!204551))

(declare-fun m!204553 () Bool)

(assert (=> b!194364 m!204553))

(assert (=> b!194353 m!197593))

(assert (=> b!194353 m!204551))

(assert (=> b!194353 m!204551))

(declare-fun m!204555 () Bool)

(assert (=> b!194353 m!204555))

(assert (=> b!194355 m!197593))

(assert (=> b!194355 m!204547))

(assert (=> b!194354 m!197591))

(declare-fun m!204557 () Bool)

(assert (=> b!194354 m!204557))

(assert (=> b!194361 m!197593))

(assert (=> b!194361 m!204551))

(assert (=> b!194361 m!204551))

(assert (=> b!194361 m!204555))

(assert (=> b!194356 m!197593))

(assert (=> b!194356 m!204547))

(assert (=> d!49398 m!197593))

(assert (=> d!49398 m!197597))

(assert (=> d!49398 m!197591))

(declare-fun m!204559 () Bool)

(assert (=> d!49398 m!204559))

(assert (=> b!191579 d!49398))

(declare-fun b!194367 () Bool)

(declare-fun c!37227 () Bool)

(assert (=> b!194367 (= c!37227 (nullable!128 (regOne!2146 (regex!593 lt!65423))))))

(declare-fun e!119432 () Regex!817)

(declare-fun e!119434 () Regex!817)

(assert (=> b!194367 (= e!119432 e!119434)))

(declare-fun call!9024 () Regex!817)

(declare-fun c!37229 () Bool)

(declare-fun c!37225 () Bool)

(declare-fun bm!9016 () Bool)

(assert (=> bm!9016 (= call!9024 (derivativeStep!94 (ite c!37225 (regOne!2147 (regex!593 lt!65423)) (ite c!37229 (reg!1146 (regex!593 lt!65423)) (regOne!2146 (regex!593 lt!65423)))) (head!684 lt!65438)))))

(declare-fun b!194369 () Bool)

(declare-fun call!9023 () Regex!817)

(declare-fun call!9022 () Regex!817)

(assert (=> b!194369 (= e!119434 (Union!817 (Concat!1433 call!9023 (regTwo!2146 (regex!593 lt!65423))) call!9022))))

(declare-fun bm!9017 () Bool)

(declare-fun call!9021 () Regex!817)

(assert (=> bm!9017 (= call!9021 call!9024)))

(declare-fun b!194370 () Bool)

(declare-fun e!119433 () Regex!817)

(assert (=> b!194370 (= e!119433 EmptyLang!817)))

(declare-fun bm!9018 () Bool)

(assert (=> bm!9018 (= call!9023 call!9021)))

(declare-fun b!194371 () Bool)

(assert (=> b!194371 (= e!119432 (Concat!1433 call!9021 (regex!593 lt!65423)))))

(declare-fun b!194372 () Bool)

(assert (=> b!194372 (= c!37225 ((_ is Union!817) (regex!593 lt!65423)))))

(declare-fun e!119431 () Regex!817)

(declare-fun e!119430 () Regex!817)

(assert (=> b!194372 (= e!119431 e!119430)))

(declare-fun b!194373 () Bool)

(assert (=> b!194373 (= e!119430 (Union!817 call!9024 call!9022))))

(declare-fun b!194374 () Bool)

(assert (=> b!194374 (= e!119434 (Union!817 (Concat!1433 call!9023 (regTwo!2146 (regex!593 lt!65423))) EmptyLang!817))))

(declare-fun b!194375 () Bool)

(assert (=> b!194375 (= e!119433 e!119431)))

(declare-fun c!37228 () Bool)

(assert (=> b!194375 (= c!37228 ((_ is ElementMatch!817) (regex!593 lt!65423)))))

(declare-fun bm!9019 () Bool)

(assert (=> bm!9019 (= call!9022 (derivativeStep!94 (ite c!37225 (regTwo!2147 (regex!593 lt!65423)) (regTwo!2146 (regex!593 lt!65423))) (head!684 lt!65438)))))

(declare-fun b!194376 () Bool)

(assert (=> b!194376 (= e!119430 e!119432)))

(assert (=> b!194376 (= c!37229 ((_ is Star!817) (regex!593 lt!65423)))))

(declare-fun d!49400 () Bool)

(declare-fun lt!67496 () Regex!817)

(assert (=> d!49400 (validRegex!201 lt!67496)))

(assert (=> d!49400 (= lt!67496 e!119433)))

(declare-fun c!37226 () Bool)

(assert (=> d!49400 (= c!37226 (or ((_ is EmptyExpr!817) (regex!593 lt!65423)) ((_ is EmptyLang!817) (regex!593 lt!65423))))))

(assert (=> d!49400 (validRegex!201 (regex!593 lt!65423))))

(assert (=> d!49400 (= (derivativeStep!94 (regex!593 lt!65423) (head!684 lt!65438)) lt!67496)))

(declare-fun b!194368 () Bool)

(assert (=> b!194368 (= e!119431 (ite (= (head!684 lt!65438) (c!36426 (regex!593 lt!65423))) EmptyExpr!817 EmptyLang!817))))

(assert (= (and d!49400 c!37226) b!194370))

(assert (= (and d!49400 (not c!37226)) b!194375))

(assert (= (and b!194375 c!37228) b!194368))

(assert (= (and b!194375 (not c!37228)) b!194372))

(assert (= (and b!194372 c!37225) b!194373))

(assert (= (and b!194372 (not c!37225)) b!194376))

(assert (= (and b!194376 c!37229) b!194371))

(assert (= (and b!194376 (not c!37229)) b!194367))

(assert (= (and b!194367 c!37227) b!194369))

(assert (= (and b!194367 (not c!37227)) b!194374))

(assert (= (or b!194369 b!194374) bm!9018))

(assert (= (or b!194371 bm!9018) bm!9017))

(assert (= (or b!194373 b!194369) bm!9019))

(assert (= (or b!194373 bm!9017) bm!9016))

(declare-fun m!204561 () Bool)

(assert (=> b!194367 m!204561))

(assert (=> bm!9016 m!197589))

(declare-fun m!204563 () Bool)

(assert (=> bm!9016 m!204563))

(assert (=> bm!9019 m!197589))

(declare-fun m!204565 () Bool)

(assert (=> bm!9019 m!204565))

(declare-fun m!204567 () Bool)

(assert (=> d!49400 m!204567))

(assert (=> d!49400 m!197601))

(assert (=> b!191579 d!49400))

(assert (=> b!191579 d!49122))

(assert (=> b!191579 d!48076))

(declare-fun d!49402 () Bool)

(assert (=> d!49402 (= (isEmpty!1617 lt!65949) (not ((_ is Some!472) lt!65949)))))

(assert (=> d!47746 d!49402))

(declare-fun b!194379 () Bool)

(declare-fun e!119435 () Bool)

(assert (=> b!194379 (= e!119435 (isPrefix!289 (tail!386 lt!65413) (tail!386 lt!65413)))))

(declare-fun b!194377 () Bool)

(declare-fun e!119437 () Bool)

(assert (=> b!194377 (= e!119437 e!119435)))

(declare-fun res!89033 () Bool)

(assert (=> b!194377 (=> (not res!89033) (not e!119435))))

(assert (=> b!194377 (= res!89033 (not ((_ is Nil!3218) lt!65413)))))

(declare-fun b!194380 () Bool)

(declare-fun e!119436 () Bool)

(assert (=> b!194380 (= e!119436 (>= (size!2566 lt!65413) (size!2566 lt!65413)))))

(declare-fun b!194378 () Bool)

(declare-fun res!89032 () Bool)

(assert (=> b!194378 (=> (not res!89032) (not e!119435))))

(assert (=> b!194378 (= res!89032 (= (head!684 lt!65413) (head!684 lt!65413)))))

(declare-fun d!49404 () Bool)

(assert (=> d!49404 e!119436))

(declare-fun res!89031 () Bool)

(assert (=> d!49404 (=> res!89031 e!119436)))

(declare-fun lt!67497 () Bool)

(assert (=> d!49404 (= res!89031 (not lt!67497))))

(assert (=> d!49404 (= lt!67497 e!119437)))

(declare-fun res!89030 () Bool)

(assert (=> d!49404 (=> res!89030 e!119437)))

(assert (=> d!49404 (= res!89030 ((_ is Nil!3218) lt!65413))))

(assert (=> d!49404 (= (isPrefix!289 lt!65413 lt!65413) lt!67497)))

(assert (= (and d!49404 (not res!89030)) b!194377))

(assert (= (and b!194377 res!89033) b!194378))

(assert (= (and b!194378 res!89032) b!194379))

(assert (= (and d!49404 (not res!89031)) b!194380))

(assert (=> b!194379 m!197423))

(assert (=> b!194379 m!197423))

(assert (=> b!194379 m!197423))

(assert (=> b!194379 m!197423))

(declare-fun m!204569 () Bool)

(assert (=> b!194379 m!204569))

(assert (=> b!194380 m!197161))

(assert (=> b!194380 m!197161))

(assert (=> b!194378 m!197419))

(assert (=> b!194378 m!197419))

(assert (=> d!47746 d!49404))

(declare-fun d!49406 () Bool)

(assert (=> d!49406 (isPrefix!289 lt!65413 lt!65413)))

(declare-fun lt!67498 () Unit!3036)

(assert (=> d!49406 (= lt!67498 (choose!1951 lt!65413 lt!65413))))

(assert (=> d!49406 (= (lemmaIsPrefixRefl!159 lt!65413 lt!65413) lt!67498)))

(declare-fun bs!19406 () Bool)

(assert (= bs!19406 d!49406))

(assert (=> bs!19406 m!198191))

(declare-fun m!204571 () Bool)

(assert (=> bs!19406 m!204571))

(assert (=> d!47746 d!49406))

(assert (=> d!47746 d!49070))

(declare-fun d!49408 () Bool)

(declare-fun e!119438 () Bool)

(assert (=> d!49408 e!119438))

(declare-fun res!89034 () Bool)

(assert (=> d!49408 (=> (not res!89034) (not e!119438))))

(declare-fun lt!67499 () List!3228)

(assert (=> d!49408 (= res!89034 (= (content!430 lt!67499) ((_ map or) (content!430 (t!28930 lt!65413)) (content!430 lt!65427))))))

(declare-fun e!119439 () List!3228)

(assert (=> d!49408 (= lt!67499 e!119439)))

(declare-fun c!37230 () Bool)

(assert (=> d!49408 (= c!37230 ((_ is Nil!3218) (t!28930 lt!65413)))))

(assert (=> d!49408 (= (++!768 (t!28930 lt!65413) lt!65427) lt!67499)))

(declare-fun b!194381 () Bool)

(assert (=> b!194381 (= e!119439 lt!65427)))

(declare-fun b!194383 () Bool)

(declare-fun res!89035 () Bool)

(assert (=> b!194383 (=> (not res!89035) (not e!119438))))

(assert (=> b!194383 (= res!89035 (= (size!2566 lt!67499) (+ (size!2566 (t!28930 lt!65413)) (size!2566 lt!65427))))))

(declare-fun b!194382 () Bool)

(assert (=> b!194382 (= e!119439 (Cons!3218 (h!8615 (t!28930 lt!65413)) (++!768 (t!28930 (t!28930 lt!65413)) lt!65427)))))

(declare-fun b!194384 () Bool)

(assert (=> b!194384 (= e!119438 (or (not (= lt!65427 Nil!3218)) (= lt!67499 (t!28930 lt!65413))))))

(assert (= (and d!49408 c!37230) b!194381))

(assert (= (and d!49408 (not c!37230)) b!194382))

(assert (= (and d!49408 res!89034) b!194383))

(assert (= (and b!194383 res!89035) b!194384))

(declare-fun m!204573 () Bool)

(assert (=> d!49408 m!204573))

(assert (=> d!49408 m!199007))

(assert (=> d!49408 m!197135))

(declare-fun m!204575 () Bool)

(assert (=> b!194383 m!204575))

(assert (=> b!194383 m!198971))

(assert (=> b!194383 m!197141))

(declare-fun m!204577 () Bool)

(assert (=> b!194382 m!204577))

(assert (=> b!191484 d!49408))

(assert (=> b!191054 d!48184))

(assert (=> b!191054 d!48186))

(assert (=> b!191054 d!48182))

(declare-fun d!49410 () Bool)

(declare-fun e!119440 () Bool)

(assert (=> d!49410 e!119440))

(declare-fun res!89036 () Bool)

(assert (=> d!49410 (=> (not res!89036) (not e!119440))))

(declare-fun lt!67500 () List!3228)

(assert (=> d!49410 (= res!89036 (= (content!430 lt!67500) ((_ map or) (content!430 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))) (content!430 (_2!1869 (get!938 lt!65949))))))))

(declare-fun e!119441 () List!3228)

(assert (=> d!49410 (= lt!67500 e!119441)))

(declare-fun c!37231 () Bool)

(assert (=> d!49410 (= c!37231 ((_ is Nil!3218) (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))))))

(assert (=> d!49410 (= (++!768 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949)))) (_2!1869 (get!938 lt!65949))) lt!67500)))

(declare-fun b!194385 () Bool)

(assert (=> b!194385 (= e!119441 (_2!1869 (get!938 lt!65949)))))

(declare-fun b!194387 () Bool)

(declare-fun res!89037 () Bool)

(assert (=> b!194387 (=> (not res!89037) (not e!119440))))

(assert (=> b!194387 (= res!89037 (= (size!2566 lt!67500) (+ (size!2566 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))) (size!2566 (_2!1869 (get!938 lt!65949))))))))

(declare-fun b!194386 () Bool)

(assert (=> b!194386 (= e!119441 (Cons!3218 (h!8615 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))) (++!768 (t!28930 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949))))) (_2!1869 (get!938 lt!65949)))))))

(declare-fun b!194388 () Bool)

(assert (=> b!194388 (= e!119440 (or (not (= (_2!1869 (get!938 lt!65949)) Nil!3218)) (= lt!67500 (list!1179 (charsOf!248 (_1!1869 (get!938 lt!65949)))))))))

(assert (= (and d!49410 c!37231) b!194385))

(assert (= (and d!49410 (not c!37231)) b!194386))

(assert (= (and d!49410 res!89036) b!194387))

(assert (= (and b!194387 res!89037) b!194388))

(declare-fun m!204579 () Bool)

(assert (=> d!49410 m!204579))

(assert (=> d!49410 m!198173))

(declare-fun m!204581 () Bool)

(assert (=> d!49410 m!204581))

(declare-fun m!204583 () Bool)

(assert (=> d!49410 m!204583))

(declare-fun m!204585 () Bool)

(assert (=> b!194387 m!204585))

(assert (=> b!194387 m!198173))

(declare-fun m!204587 () Bool)

(assert (=> b!194387 m!204587))

(assert (=> b!194387 m!198195))

(declare-fun m!204589 () Bool)

(assert (=> b!194386 m!204589))

(assert (=> b!191861 d!49410))

(assert (=> b!191861 d!48540))

(assert (=> b!191861 d!48542))

(assert (=> b!191861 d!48194))

(declare-fun d!49412 () Bool)

(assert (=> d!49412 (= (list!1179 (ite c!36558 call!8801 e!117781)) (list!1183 (c!36425 (ite c!36558 call!8801 e!117781))))))

(declare-fun bs!19407 () Bool)

(assert (= bs!19407 d!49412))

(declare-fun m!204591 () Bool)

(assert (=> bs!19407 m!204591))

(assert (=> bm!8798 d!49412))

(declare-fun b!194391 () Bool)

(declare-fun e!119444 () Bool)

(assert (=> b!194391 (= e!119444 true)))

(declare-fun b!194390 () Bool)

(declare-fun e!119443 () Bool)

(assert (=> b!194390 (= e!119443 e!119444)))

(declare-fun b!194389 () Bool)

(declare-fun e!119442 () Bool)

(assert (=> b!194389 (= e!119442 e!119443)))

(assert (=> b!191375 e!119442))

(assert (= b!194390 b!194391))

(assert (= b!194389 b!194390))

(assert (= (and b!191375 ((_ is Cons!3219) (t!28931 rules!1920))) b!194389))

(assert (=> b!194391 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5849))))

(assert (=> b!194391 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5849))))

(declare-fun e!119445 () Bool)

(assert (=> b!191923 (= tp!88898 e!119445)))

(declare-fun b!194393 () Bool)

(declare-fun tp!89040 () Bool)

(declare-fun tp!89043 () Bool)

(assert (=> b!194393 (= e!119445 (and tp!89040 tp!89043))))

(declare-fun b!194395 () Bool)

(declare-fun tp!89041 () Bool)

(declare-fun tp!89039 () Bool)

(assert (=> b!194395 (= e!119445 (and tp!89041 tp!89039))))

(declare-fun b!194394 () Bool)

(declare-fun tp!89042 () Bool)

(assert (=> b!194394 (= e!119445 tp!89042)))

(declare-fun b!194392 () Bool)

(assert (=> b!194392 (= e!119445 tp_is_empty!1699)))

(assert (= (and b!191923 ((_ is ElementMatch!817) (regOne!2146 (regex!593 (h!8616 rules!1920))))) b!194392))

(assert (= (and b!191923 ((_ is Concat!1433) (regOne!2146 (regex!593 (h!8616 rules!1920))))) b!194393))

(assert (= (and b!191923 ((_ is Star!817) (regOne!2146 (regex!593 (h!8616 rules!1920))))) b!194394))

(assert (= (and b!191923 ((_ is Union!817) (regOne!2146 (regex!593 (h!8616 rules!1920))))) b!194395))

(declare-fun e!119446 () Bool)

(assert (=> b!191923 (= tp!88901 e!119446)))

(declare-fun b!194397 () Bool)

(declare-fun tp!89045 () Bool)

(declare-fun tp!89048 () Bool)

(assert (=> b!194397 (= e!119446 (and tp!89045 tp!89048))))

(declare-fun b!194399 () Bool)

(declare-fun tp!89046 () Bool)

(declare-fun tp!89044 () Bool)

(assert (=> b!194399 (= e!119446 (and tp!89046 tp!89044))))

(declare-fun b!194398 () Bool)

(declare-fun tp!89047 () Bool)

(assert (=> b!194398 (= e!119446 tp!89047)))

(declare-fun b!194396 () Bool)

(assert (=> b!194396 (= e!119446 tp_is_empty!1699)))

(assert (= (and b!191923 ((_ is ElementMatch!817) (regTwo!2146 (regex!593 (h!8616 rules!1920))))) b!194396))

(assert (= (and b!191923 ((_ is Concat!1433) (regTwo!2146 (regex!593 (h!8616 rules!1920))))) b!194397))

(assert (= (and b!191923 ((_ is Star!817) (regTwo!2146 (regex!593 (h!8616 rules!1920))))) b!194398))

(assert (= (and b!191923 ((_ is Union!817) (regTwo!2146 (regex!593 (h!8616 rules!1920))))) b!194399))

(declare-fun b!194400 () Bool)

(declare-fun e!119447 () Bool)

(declare-fun tp!89049 () Bool)

(assert (=> b!194400 (= e!119447 (and tp_is_empty!1699 tp!89049))))

(assert (=> b!191877 (= tp!88848 e!119447)))

(assert (= (and b!191877 ((_ is Cons!3218) (t!28930 (originalCharacters!636 separatorToken!170)))) b!194400))

(declare-fun b!194403 () Bool)

(declare-fun e!119450 () Bool)

(assert (=> b!194403 (= e!119450 true)))

(declare-fun b!194402 () Bool)

(declare-fun e!119449 () Bool)

(assert (=> b!194402 (= e!119449 e!119450)))

(declare-fun b!194401 () Bool)

(declare-fun e!119448 () Bool)

(assert (=> b!194401 (= e!119448 e!119449)))

(assert (=> b!191275 e!119448))

(assert (= b!194402 b!194403))

(assert (= b!194401 b!194402))

(assert (= (and b!191275 ((_ is Cons!3219) (t!28931 rules!1920))) b!194401))

(assert (=> b!194403 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5846))))

(assert (=> b!194403 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5846))))

(declare-fun e!119451 () Bool)

(assert (=> b!191924 (= tp!88900 e!119451)))

(declare-fun b!194405 () Bool)

(declare-fun tp!89051 () Bool)

(declare-fun tp!89054 () Bool)

(assert (=> b!194405 (= e!119451 (and tp!89051 tp!89054))))

(declare-fun b!194407 () Bool)

(declare-fun tp!89052 () Bool)

(declare-fun tp!89050 () Bool)

(assert (=> b!194407 (= e!119451 (and tp!89052 tp!89050))))

(declare-fun b!194406 () Bool)

(declare-fun tp!89053 () Bool)

(assert (=> b!194406 (= e!119451 tp!89053)))

(declare-fun b!194404 () Bool)

(assert (=> b!194404 (= e!119451 tp_is_empty!1699)))

(assert (= (and b!191924 ((_ is ElementMatch!817) (reg!1146 (regex!593 (h!8616 rules!1920))))) b!194404))

(assert (= (and b!191924 ((_ is Concat!1433) (reg!1146 (regex!593 (h!8616 rules!1920))))) b!194405))

(assert (= (and b!191924 ((_ is Star!817) (reg!1146 (regex!593 (h!8616 rules!1920))))) b!194406))

(assert (= (and b!191924 ((_ is Union!817) (reg!1146 (regex!593 (h!8616 rules!1920))))) b!194407))

(declare-fun tp!89063 () Bool)

(declare-fun tp!89061 () Bool)

(declare-fun b!194416 () Bool)

(declare-fun e!119457 () Bool)

(assert (=> b!194416 (= e!119457 (and (inv!4044 (left!2547 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))))) tp!89061 (inv!4044 (right!2877 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))))) tp!89063))))

(declare-fun b!194418 () Bool)

(declare-fun e!119456 () Bool)

(declare-fun tp!89062 () Bool)

(assert (=> b!194418 (= e!119456 tp!89062)))

(declare-fun b!194417 () Bool)

(declare-fun inv!4051 (IArray!2017) Bool)

(assert (=> b!194417 (= e!119457 (and (inv!4051 (xs!3603 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))))) e!119456))))

(assert (=> b!191291 (= tp!88789 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170)))) e!119457))))

(assert (= (and b!191291 ((_ is Node!1008) (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))))) b!194416))

(assert (= b!194417 b!194418))

(assert (= (and b!191291 ((_ is Leaf!1644) (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (value!21216 separatorToken!170))))) b!194417))

(declare-fun m!204593 () Bool)

(assert (=> b!194416 m!204593))

(declare-fun m!204595 () Bool)

(assert (=> b!194416 m!204595))

(declare-fun m!204597 () Bool)

(assert (=> b!194417 m!204597))

(assert (=> b!191291 m!197101))

(declare-fun e!119458 () Bool)

(assert (=> b!191925 (= tp!88899 e!119458)))

(declare-fun b!194420 () Bool)

(declare-fun tp!89065 () Bool)

(declare-fun tp!89068 () Bool)

(assert (=> b!194420 (= e!119458 (and tp!89065 tp!89068))))

(declare-fun b!194422 () Bool)

(declare-fun tp!89066 () Bool)

(declare-fun tp!89064 () Bool)

(assert (=> b!194422 (= e!119458 (and tp!89066 tp!89064))))

(declare-fun b!194421 () Bool)

(declare-fun tp!89067 () Bool)

(assert (=> b!194421 (= e!119458 tp!89067)))

(declare-fun b!194419 () Bool)

(assert (=> b!194419 (= e!119458 tp_is_empty!1699)))

(assert (= (and b!191925 ((_ is ElementMatch!817) (regOne!2147 (regex!593 (h!8616 rules!1920))))) b!194419))

(assert (= (and b!191925 ((_ is Concat!1433) (regOne!2147 (regex!593 (h!8616 rules!1920))))) b!194420))

(assert (= (and b!191925 ((_ is Star!817) (regOne!2147 (regex!593 (h!8616 rules!1920))))) b!194421))

(assert (= (and b!191925 ((_ is Union!817) (regOne!2147 (regex!593 (h!8616 rules!1920))))) b!194422))

(declare-fun e!119459 () Bool)

(assert (=> b!191925 (= tp!88897 e!119459)))

(declare-fun b!194424 () Bool)

(declare-fun tp!89070 () Bool)

(declare-fun tp!89073 () Bool)

(assert (=> b!194424 (= e!119459 (and tp!89070 tp!89073))))

(declare-fun b!194426 () Bool)

(declare-fun tp!89071 () Bool)

(declare-fun tp!89069 () Bool)

(assert (=> b!194426 (= e!119459 (and tp!89071 tp!89069))))

(declare-fun b!194425 () Bool)

(declare-fun tp!89072 () Bool)

(assert (=> b!194425 (= e!119459 tp!89072)))

(declare-fun b!194423 () Bool)

(assert (=> b!194423 (= e!119459 tp_is_empty!1699)))

(assert (= (and b!191925 ((_ is ElementMatch!817) (regTwo!2147 (regex!593 (h!8616 rules!1920))))) b!194423))

(assert (= (and b!191925 ((_ is Concat!1433) (regTwo!2147 (regex!593 (h!8616 rules!1920))))) b!194424))

(assert (= (and b!191925 ((_ is Star!817) (regTwo!2147 (regex!593 (h!8616 rules!1920))))) b!194425))

(assert (= (and b!191925 ((_ is Union!817) (regTwo!2147 (regex!593 (h!8616 rules!1920))))) b!194426))

(declare-fun b!194429 () Bool)

(declare-fun e!119462 () Bool)

(assert (=> b!194429 (= e!119462 true)))

(declare-fun b!194428 () Bool)

(declare-fun e!119461 () Bool)

(assert (=> b!194428 (= e!119461 e!119462)))

(declare-fun b!194427 () Bool)

(declare-fun e!119460 () Bool)

(assert (=> b!194427 (= e!119460 e!119461)))

(assert (=> b!191599 e!119460))

(assert (= b!194428 b!194429))

(assert (= b!194427 b!194428))

(assert (= (and b!191599 ((_ is Cons!3219) (t!28931 rules!1920))) b!194427))

(assert (=> b!194429 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5864))))

(assert (=> b!194429 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5864))))

(declare-fun e!119463 () Bool)

(assert (=> b!191905 (= tp!88876 e!119463)))

(declare-fun b!194431 () Bool)

(declare-fun tp!89075 () Bool)

(declare-fun tp!89078 () Bool)

(assert (=> b!194431 (= e!119463 (and tp!89075 tp!89078))))

(declare-fun b!194433 () Bool)

(declare-fun tp!89076 () Bool)

(declare-fun tp!89074 () Bool)

(assert (=> b!194433 (= e!119463 (and tp!89076 tp!89074))))

(declare-fun b!194432 () Bool)

(declare-fun tp!89077 () Bool)

(assert (=> b!194432 (= e!119463 tp!89077)))

(declare-fun b!194430 () Bool)

(assert (=> b!194430 (= e!119463 tp_is_empty!1699)))

(assert (= (and b!191905 ((_ is ElementMatch!817) (regOne!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194430))

(assert (= (and b!191905 ((_ is Concat!1433) (regOne!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194431))

(assert (= (and b!191905 ((_ is Star!817) (regOne!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194432))

(assert (= (and b!191905 ((_ is Union!817) (regOne!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194433))

(declare-fun e!119464 () Bool)

(assert (=> b!191905 (= tp!88874 e!119464)))

(declare-fun b!194435 () Bool)

(declare-fun tp!89080 () Bool)

(declare-fun tp!89083 () Bool)

(assert (=> b!194435 (= e!119464 (and tp!89080 tp!89083))))

(declare-fun b!194437 () Bool)

(declare-fun tp!89081 () Bool)

(declare-fun tp!89079 () Bool)

(assert (=> b!194437 (= e!119464 (and tp!89081 tp!89079))))

(declare-fun b!194436 () Bool)

(declare-fun tp!89082 () Bool)

(assert (=> b!194436 (= e!119464 tp!89082)))

(declare-fun b!194434 () Bool)

(assert (=> b!194434 (= e!119464 tp_is_empty!1699)))

(assert (= (and b!191905 ((_ is ElementMatch!817) (regTwo!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194434))

(assert (= (and b!191905 ((_ is Concat!1433) (regTwo!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194435))

(assert (= (and b!191905 ((_ is Star!817) (regTwo!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194436))

(assert (= (and b!191905 ((_ is Union!817) (regTwo!2147 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194437))

(declare-fun b!194440 () Bool)

(declare-fun e!119467 () Bool)

(assert (=> b!194440 (= e!119467 true)))

(declare-fun b!194439 () Bool)

(declare-fun e!119466 () Bool)

(assert (=> b!194439 (= e!119466 e!119467)))

(declare-fun b!194438 () Bool)

(declare-fun e!119465 () Bool)

(assert (=> b!194438 (= e!119465 e!119466)))

(assert (=> b!191612 e!119465))

(assert (= b!194439 b!194440))

(assert (= b!194438 b!194439))

(assert (= (and b!191612 ((_ is Cons!3219) (t!28931 rules!1920))) b!194438))

(assert (=> b!194440 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5865))))

(assert (=> b!194440 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5865))))

(declare-fun b!194441 () Bool)

(declare-fun e!119468 () Bool)

(declare-fun tp!89084 () Bool)

(assert (=> b!194441 (= e!119468 (and tp_is_empty!1699 tp!89084))))

(assert (=> b!191906 (= tp!88879 e!119468)))

(assert (= (and b!191906 ((_ is Cons!3218) (t!28930 (originalCharacters!636 (h!8617 tokens!465))))) b!194441))

(declare-fun e!119469 () Bool)

(assert (=> b!191904 (= tp!88877 e!119469)))

(declare-fun b!194443 () Bool)

(declare-fun tp!89086 () Bool)

(declare-fun tp!89089 () Bool)

(assert (=> b!194443 (= e!119469 (and tp!89086 tp!89089))))

(declare-fun b!194445 () Bool)

(declare-fun tp!89087 () Bool)

(declare-fun tp!89085 () Bool)

(assert (=> b!194445 (= e!119469 (and tp!89087 tp!89085))))

(declare-fun b!194444 () Bool)

(declare-fun tp!89088 () Bool)

(assert (=> b!194444 (= e!119469 tp!89088)))

(declare-fun b!194442 () Bool)

(assert (=> b!194442 (= e!119469 tp_is_empty!1699)))

(assert (= (and b!191904 ((_ is ElementMatch!817) (reg!1146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194442))

(assert (= (and b!191904 ((_ is Concat!1433) (reg!1146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194443))

(assert (= (and b!191904 ((_ is Star!817) (reg!1146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194444))

(assert (= (and b!191904 ((_ is Union!817) (reg!1146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194445))

(declare-fun b!194448 () Bool)

(declare-fun e!119472 () Bool)

(assert (=> b!194448 (= e!119472 true)))

(declare-fun b!194447 () Bool)

(declare-fun e!119471 () Bool)

(assert (=> b!194447 (= e!119471 e!119472)))

(declare-fun b!194446 () Bool)

(declare-fun e!119470 () Bool)

(assert (=> b!194446 (= e!119470 e!119471)))

(assert (=> b!191499 e!119470))

(assert (= b!194447 b!194448))

(assert (= b!194446 b!194447))

(assert (= (and b!191499 ((_ is Cons!3219) (t!28931 rules!1920))) b!194446))

(assert (=> b!194448 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5859))))

(assert (=> b!194448 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920))))) (dynLambda!1370 order!2035 lambda!5859))))

(declare-fun e!119473 () Bool)

(assert (=> b!191903 (= tp!88875 e!119473)))

(declare-fun b!194450 () Bool)

(declare-fun tp!89091 () Bool)

(declare-fun tp!89094 () Bool)

(assert (=> b!194450 (= e!119473 (and tp!89091 tp!89094))))

(declare-fun b!194452 () Bool)

(declare-fun tp!89092 () Bool)

(declare-fun tp!89090 () Bool)

(assert (=> b!194452 (= e!119473 (and tp!89092 tp!89090))))

(declare-fun b!194451 () Bool)

(declare-fun tp!89093 () Bool)

(assert (=> b!194451 (= e!119473 tp!89093)))

(declare-fun b!194449 () Bool)

(assert (=> b!194449 (= e!119473 tp_is_empty!1699)))

(assert (= (and b!191903 ((_ is ElementMatch!817) (regOne!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194449))

(assert (= (and b!191903 ((_ is Concat!1433) (regOne!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194450))

(assert (= (and b!191903 ((_ is Star!817) (regOne!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194451))

(assert (= (and b!191903 ((_ is Union!817) (regOne!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194452))

(declare-fun e!119474 () Bool)

(assert (=> b!191903 (= tp!88878 e!119474)))

(declare-fun b!194454 () Bool)

(declare-fun tp!89096 () Bool)

(declare-fun tp!89099 () Bool)

(assert (=> b!194454 (= e!119474 (and tp!89096 tp!89099))))

(declare-fun b!194456 () Bool)

(declare-fun tp!89097 () Bool)

(declare-fun tp!89095 () Bool)

(assert (=> b!194456 (= e!119474 (and tp!89097 tp!89095))))

(declare-fun b!194455 () Bool)

(declare-fun tp!89098 () Bool)

(assert (=> b!194455 (= e!119474 tp!89098)))

(declare-fun b!194453 () Bool)

(assert (=> b!194453 (= e!119474 tp_is_empty!1699)))

(assert (= (and b!191903 ((_ is ElementMatch!817) (regTwo!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194453))

(assert (= (and b!191903 ((_ is Concat!1433) (regTwo!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194454))

(assert (= (and b!191903 ((_ is Star!817) (regTwo!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194455))

(assert (= (and b!191903 ((_ is Union!817) (regTwo!2146 (regex!593 (rule!1108 (h!8617 tokens!465)))))) b!194456))

(declare-fun e!119475 () Bool)

(assert (=> b!191908 (= tp!88881 e!119475)))

(declare-fun b!194458 () Bool)

(declare-fun tp!89101 () Bool)

(declare-fun tp!89104 () Bool)

(assert (=> b!194458 (= e!119475 (and tp!89101 tp!89104))))

(declare-fun b!194460 () Bool)

(declare-fun tp!89102 () Bool)

(declare-fun tp!89100 () Bool)

(assert (=> b!194460 (= e!119475 (and tp!89102 tp!89100))))

(declare-fun b!194459 () Bool)

(declare-fun tp!89103 () Bool)

(assert (=> b!194459 (= e!119475 tp!89103)))

(declare-fun b!194457 () Bool)

(assert (=> b!194457 (= e!119475 tp_is_empty!1699)))

(assert (= (and b!191908 ((_ is ElementMatch!817) (regOne!2146 (regex!593 (rule!1108 separatorToken!170))))) b!194457))

(assert (= (and b!191908 ((_ is Concat!1433) (regOne!2146 (regex!593 (rule!1108 separatorToken!170))))) b!194458))

(assert (= (and b!191908 ((_ is Star!817) (regOne!2146 (regex!593 (rule!1108 separatorToken!170))))) b!194459))

(assert (= (and b!191908 ((_ is Union!817) (regOne!2146 (regex!593 (rule!1108 separatorToken!170))))) b!194460))

(declare-fun e!119476 () Bool)

(assert (=> b!191908 (= tp!88884 e!119476)))

(declare-fun b!194462 () Bool)

(declare-fun tp!89106 () Bool)

(declare-fun tp!89109 () Bool)

(assert (=> b!194462 (= e!119476 (and tp!89106 tp!89109))))

(declare-fun b!194464 () Bool)

(declare-fun tp!89107 () Bool)

(declare-fun tp!89105 () Bool)

(assert (=> b!194464 (= e!119476 (and tp!89107 tp!89105))))

(declare-fun b!194463 () Bool)

(declare-fun tp!89108 () Bool)

(assert (=> b!194463 (= e!119476 tp!89108)))

(declare-fun b!194461 () Bool)

(assert (=> b!194461 (= e!119476 tp_is_empty!1699)))

(assert (= (and b!191908 ((_ is ElementMatch!817) (regTwo!2146 (regex!593 (rule!1108 separatorToken!170))))) b!194461))

(assert (= (and b!191908 ((_ is Concat!1433) (regTwo!2146 (regex!593 (rule!1108 separatorToken!170))))) b!194462))

(assert (= (and b!191908 ((_ is Star!817) (regTwo!2146 (regex!593 (rule!1108 separatorToken!170))))) b!194463))

(assert (= (and b!191908 ((_ is Union!817) (regTwo!2146 (regex!593 (rule!1108 separatorToken!170))))) b!194464))

(declare-fun tp!89112 () Bool)

(declare-fun e!119478 () Bool)

(declare-fun b!194465 () Bool)

(declare-fun tp!89110 () Bool)

(assert (=> b!194465 (= e!119478 (and (inv!4044 (left!2547 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))))) tp!89110 (inv!4044 (right!2877 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))))) tp!89112))))

(declare-fun b!194467 () Bool)

(declare-fun e!119477 () Bool)

(declare-fun tp!89111 () Bool)

(assert (=> b!194467 (= e!119477 tp!89111)))

(declare-fun b!194466 () Bool)

(assert (=> b!194466 (= e!119478 (and (inv!4051 (xs!3603 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))))) e!119477))))

(assert (=> b!191129 (= tp!88788 (and (inv!4044 (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465))))) e!119478))))

(assert (= (and b!191129 ((_ is Node!1008) (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))))) b!194465))

(assert (= b!194466 b!194467))

(assert (= (and b!191129 ((_ is Leaf!1644) (c!36425 (dynLambda!1373 (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (value!21216 (h!8617 tokens!465)))))) b!194466))

(declare-fun m!204599 () Bool)

(assert (=> b!194465 m!204599))

(declare-fun m!204601 () Bool)

(assert (=> b!194465 m!204601))

(declare-fun m!204603 () Bool)

(assert (=> b!194466 m!204603))

(assert (=> b!191129 m!196813))

(declare-fun b!194470 () Bool)

(declare-fun e!119481 () Bool)

(assert (=> b!194470 (= e!119481 true)))

(declare-fun b!194469 () Bool)

(declare-fun e!119480 () Bool)

(assert (=> b!194469 (= e!119480 e!119481)))

(declare-fun b!194468 () Bool)

(declare-fun e!119479 () Bool)

(assert (=> b!194468 (= e!119479 e!119480)))

(assert (=> b!191926 e!119479))

(assert (= b!194469 b!194470))

(assert (= b!194468 b!194469))

(assert (= (and b!191926 ((_ is Cons!3219) (t!28931 (t!28931 rules!1920)))) b!194468))

(assert (=> b!194470 (< (dynLambda!1369 order!2033 (toValue!1264 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920)))))) (dynLambda!1370 order!2035 lambda!5840))))

(assert (=> b!194470 (< (dynLambda!1371 order!2037 (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920)))))) (dynLambda!1370 order!2035 lambda!5840))))

(declare-fun b!194473 () Bool)

(declare-fun b_free!7677 () Bool)

(declare-fun b_next!7677 () Bool)

(assert (=> b!194473 (= b_free!7677 (not b_next!7677))))

(declare-fun tb!8233 () Bool)

(declare-fun t!29438 () Bool)

(assert (=> (and b!194473 (= (toValue!1264 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29438) tb!8233))

(declare-fun result!11180 () Bool)

(assert (= result!11180 result!10828))

(assert (=> d!48088 t!29438))

(declare-fun t!29440 () Bool)

(declare-fun tb!8235 () Bool)

(assert (=> (and b!194473 (= (toValue!1264 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29440) tb!8235))

(declare-fun result!11182 () Bool)

(assert (= result!11182 result!10870))

(assert (=> d!48196 t!29440))

(declare-fun tb!8237 () Bool)

(declare-fun t!29442 () Bool)

(assert (=> (and b!194473 (= (toValue!1264 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29442) tb!8237))

(declare-fun result!11184 () Bool)

(assert (= result!11184 result!11010))

(assert (=> d!48808 t!29442))

(declare-fun tp!89115 () Bool)

(declare-fun b_and!13689 () Bool)

(assert (=> b!194473 (= tp!89115 (and (=> t!29438 result!11180) (=> t!29440 result!11182) (=> t!29442 result!11184) b_and!13689))))

(declare-fun b_free!7679 () Bool)

(declare-fun b_next!7679 () Bool)

(assert (=> b!194473 (= b_free!7679 (not b_next!7679))))

(declare-fun tb!8239 () Bool)

(declare-fun t!29444 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0))))) t!29444) tb!8239))

(declare-fun result!11186 () Bool)

(assert (= result!11186 result!10990))

(assert (=> d!48734 t!29444))

(declare-fun tb!8241 () Bool)

(declare-fun t!29446 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0))))) t!29446) tb!8241))

(declare-fun result!11188 () Bool)

(assert (= result!11188 result!10970))

(assert (=> d!48670 t!29446))

(declare-fun tb!8243 () Bool)

(declare-fun t!29448 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))) t!29448) tb!8243))

(declare-fun result!11190 () Bool)

(assert (= result!11190 result!11118))

(assert (=> d!49010 t!29448))

(declare-fun tb!8245 () Bool)

(declare-fun t!29450 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))) t!29450) tb!8245))

(declare-fun result!11192 () Bool)

(assert (= result!11192 result!10890))

(assert (=> d!48226 t!29450))

(declare-fun t!29452 () Bool)

(declare-fun tb!8247 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0))))) t!29452) tb!8247))

(declare-fun result!11194 () Bool)

(assert (= result!11194 result!11128))

(assert (=> d!49042 t!29452))

(declare-fun tb!8249 () Bool)

(declare-fun t!29454 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) t!29454) tb!8249))

(declare-fun result!11196 () Bool)

(assert (= result!11196 result!11148))

(assert (=> b!194228 t!29454))

(declare-fun tb!8251 () Bool)

(declare-fun t!29456 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170)))) t!29456) tb!8251))

(declare-fun result!11198 () Bool)

(assert (= result!11198 result!10718))

(assert (=> b!191630 t!29456))

(declare-fun tb!8253 () Bool)

(declare-fun t!29458 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 call!8800)))) t!29458) tb!8253))

(declare-fun result!11200 () Bool)

(assert (= result!11200 result!11168))

(assert (=> d!49348 t!29458))

(declare-fun tb!8255 () Bool)

(declare-fun t!29460 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29460) tb!8255))

(declare-fun result!11202 () Bool)

(assert (= result!11202 result!11158))

(assert (=> d!49294 t!29460))

(declare-fun t!29462 () Bool)

(declare-fun tb!8257 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29462) tb!8257))

(declare-fun result!11204 () Bool)

(assert (= result!11204 result!10950))

(assert (=> d!48542 t!29462))

(declare-fun tb!8259 () Bool)

(declare-fun t!29464 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))) t!29464) tb!8259))

(declare-fun result!11206 () Bool)

(assert (= result!11206 result!10940))

(assert (=> d!48518 t!29464))

(declare-fun tb!8261 () Bool)

(declare-fun t!29466 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) t!29466) tb!8261))

(declare-fun result!11208 () Bool)

(assert (= result!11208 result!10710))

(assert (=> d!47514 t!29466))

(declare-fun t!29468 () Bool)

(declare-fun tb!8263 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0))))) t!29468) tb!8263))

(declare-fun result!11210 () Bool)

(assert (= result!11210 result!10880))

(assert (=> d!48202 t!29468))

(assert (=> b!191123 t!29466))

(assert (=> d!47500 t!29456))

(declare-fun t!29470 () Bool)

(declare-fun tb!8265 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29470) tb!8265))

(declare-fun result!11212 () Bool)

(assert (= result!11212 result!10860))

(assert (=> d!48186 t!29470))

(assert (=> d!49216 t!29454))

(declare-fun t!29472 () Bool)

(declare-fun tb!8267 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 call!8754)))) t!29472) tb!8267))

(declare-fun result!11214 () Bool)

(assert (= result!11214 result!11138))

(assert (=> d!49176 t!29472))

(declare-fun t!29474 () Bool)

(declare-fun tb!8269 () Bool)

(assert (=> (and b!194473 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))) t!29474) tb!8269))

(declare-fun result!11216 () Bool)

(assert (= result!11216 result!10818))

(assert (=> d!48068 t!29474))

(declare-fun tp!89114 () Bool)

(declare-fun b_and!13691 () Bool)

(assert (=> b!194473 (= tp!89114 (and (=> t!29470 result!11212) (=> t!29458 result!11200) (=> t!29456 result!11198) (=> t!29450 result!11192) (=> t!29454 result!11196) (=> t!29446 result!11188) (=> t!29466 result!11208) (=> t!29452 result!11194) (=> t!29464 result!11206) (=> t!29460 result!11202) (=> t!29444 result!11186) (=> t!29474 result!11216) (=> t!29468 result!11210) (=> t!29448 result!11190) (=> t!29472 result!11214) (=> t!29462 result!11204) b_and!13691))))

(declare-fun e!119484 () Bool)

(assert (=> b!194473 (= e!119484 (and tp!89115 tp!89114))))

(declare-fun e!119482 () Bool)

(declare-fun tp!89113 () Bool)

(declare-fun b!194472 () Bool)

(assert (=> b!194472 (= e!119482 (and tp!89113 (inv!4037 (tag!771 (h!8616 (t!28931 (t!28931 rules!1920))))) (inv!4040 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) e!119484))))

(declare-fun b!194471 () Bool)

(declare-fun e!119483 () Bool)

(declare-fun tp!89116 () Bool)

(assert (=> b!194471 (= e!119483 (and e!119482 tp!89116))))

(assert (=> b!191919 (= tp!88896 e!119483)))

(assert (= b!194472 b!194473))

(assert (= b!194471 b!194472))

(assert (= (and b!191919 ((_ is Cons!3219) (t!28931 (t!28931 rules!1920)))) b!194471))

(declare-fun m!204605 () Bool)

(assert (=> b!194472 m!204605))

(declare-fun m!204607 () Bool)

(assert (=> b!194472 m!204607))

(declare-fun e!119486 () Bool)

(assert (=> b!191920 (= tp!88893 e!119486)))

(declare-fun b!194475 () Bool)

(declare-fun tp!89118 () Bool)

(declare-fun tp!89121 () Bool)

(assert (=> b!194475 (= e!119486 (and tp!89118 tp!89121))))

(declare-fun b!194477 () Bool)

(declare-fun tp!89119 () Bool)

(declare-fun tp!89117 () Bool)

(assert (=> b!194477 (= e!119486 (and tp!89119 tp!89117))))

(declare-fun b!194476 () Bool)

(declare-fun tp!89120 () Bool)

(assert (=> b!194476 (= e!119486 tp!89120)))

(declare-fun b!194474 () Bool)

(assert (=> b!194474 (= e!119486 tp_is_empty!1699)))

(assert (= (and b!191920 ((_ is ElementMatch!817) (regex!593 (h!8616 (t!28931 rules!1920))))) b!194474))

(assert (= (and b!191920 ((_ is Concat!1433) (regex!593 (h!8616 (t!28931 rules!1920))))) b!194475))

(assert (= (and b!191920 ((_ is Star!817) (regex!593 (h!8616 (t!28931 rules!1920))))) b!194476))

(assert (= (and b!191920 ((_ is Union!817) (regex!593 (h!8616 (t!28931 rules!1920))))) b!194477))

(declare-fun b!194478 () Bool)

(declare-fun e!119487 () Bool)

(declare-fun tp!89122 () Bool)

(assert (=> b!194478 (= e!119487 (and tp_is_empty!1699 tp!89122))))

(assert (=> b!191889 (= tp!88863 e!119487)))

(assert (= (and b!191889 ((_ is Cons!3218) (originalCharacters!636 (h!8617 (t!28932 tokens!465))))) b!194478))

(declare-fun e!119488 () Bool)

(assert (=> b!191890 (= tp!88859 e!119488)))

(declare-fun b!194480 () Bool)

(declare-fun tp!89124 () Bool)

(declare-fun tp!89127 () Bool)

(assert (=> b!194480 (= e!119488 (and tp!89124 tp!89127))))

(declare-fun b!194482 () Bool)

(declare-fun tp!89125 () Bool)

(declare-fun tp!89123 () Bool)

(assert (=> b!194482 (= e!119488 (and tp!89125 tp!89123))))

(declare-fun b!194481 () Bool)

(declare-fun tp!89126 () Bool)

(assert (=> b!194481 (= e!119488 tp!89126)))

(declare-fun b!194479 () Bool)

(assert (=> b!194479 (= e!119488 tp_is_empty!1699)))

(assert (= (and b!191890 ((_ is ElementMatch!817) (regex!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) b!194479))

(assert (= (and b!191890 ((_ is Concat!1433) (regex!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) b!194480))

(assert (= (and b!191890 ((_ is Star!817) (regex!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) b!194481))

(assert (= (and b!191890 ((_ is Union!817) (regex!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) b!194482))

(declare-fun b!194486 () Bool)

(declare-fun b_free!7681 () Bool)

(declare-fun b_next!7681 () Bool)

(assert (=> b!194486 (= b_free!7681 (not b_next!7681))))

(declare-fun tb!8271 () Bool)

(declare-fun t!29476 () Bool)

(assert (=> (and b!194486 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29476) tb!8271))

(declare-fun result!11218 () Bool)

(assert (= result!11218 result!10828))

(assert (=> d!48088 t!29476))

(declare-fun tb!8273 () Bool)

(declare-fun t!29478 () Bool)

(assert (=> (and b!194486 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29478) tb!8273))

(declare-fun result!11220 () Bool)

(assert (= result!11220 result!10870))

(assert (=> d!48196 t!29478))

(declare-fun tb!8275 () Bool)

(declare-fun t!29480 () Bool)

(assert (=> (and b!194486 (= (toValue!1264 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toValue!1264 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29480) tb!8275))

(declare-fun result!11222 () Bool)

(assert (= result!11222 result!11010))

(assert (=> d!48808 t!29480))

(declare-fun b_and!13693 () Bool)

(declare-fun tp!89130 () Bool)

(assert (=> b!194486 (= tp!89130 (and (=> t!29476 result!11218) (=> t!29478 result!11220) (=> t!29480 result!11222) b_and!13693))))

(declare-fun b_free!7683 () Bool)

(declare-fun b_next!7683 () Bool)

(assert (=> b!194486 (= b_free!7683 (not b_next!7683))))

(declare-fun t!29482 () Bool)

(declare-fun tb!8277 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65419 0))))) t!29482) tb!8277))

(declare-fun result!11224 () Bool)

(assert (= result!11224 result!10990))

(assert (=> d!48734 t!29482))

(declare-fun t!29484 () Bool)

(declare-fun tb!8279 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65415 0))))) t!29484) tb!8279))

(declare-fun result!11226 () Bool)

(assert (= result!11226 result!10970))

(assert (=> d!48670 t!29484))

(declare-fun tb!8281 () Bool)

(declare-fun t!29486 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36554 call!8797 (ite c!36556 separatorToken!170 call!8800)))))) t!29486) tb!8281))

(declare-fun result!11228 () Bool)

(assert (= result!11228 result!11118))

(assert (=> d!49010 t!29486))

(declare-fun t!29488 () Bool)

(declare-fun tb!8283 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (ite c!36475 call!8751 (ite c!36477 separatorToken!170 call!8754)))))) t!29488) tb!8283))

(declare-fun result!11230 () Bool)

(assert (= result!11230 result!10890))

(assert (=> d!48226 t!29488))

(declare-fun t!29490 () Bool)

(declare-fun tb!8285 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65440 0))))) t!29490) tb!8285))

(declare-fun result!11232 () Bool)

(assert (= result!11232 result!11128))

(assert (=> d!49042 t!29490))

(declare-fun t!29492 () Bool)

(declare-fun tb!8287 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465)))))) t!29492) tb!8287))

(declare-fun result!11234 () Bool)

(assert (= result!11234 result!11148))

(assert (=> b!194228 t!29492))

(declare-fun tb!8289 () Bool)

(declare-fun t!29494 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 separatorToken!170)))) t!29494) tb!8289))

(declare-fun result!11236 () Bool)

(assert (= result!11236 result!10718))

(assert (=> b!191630 t!29494))

(declare-fun t!29496 () Bool)

(declare-fun tb!8291 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 call!8800)))) t!29496) tb!8291))

(declare-fun result!11238 () Bool)

(assert (= result!11238 result!11168))

(assert (=> d!49348 t!29496))

(declare-fun t!29498 () Bool)

(declare-fun tb!8293 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65874)))))) t!29498) tb!8293))

(declare-fun result!11240 () Bool)

(assert (= result!11240 result!11158))

(assert (=> d!49294 t!29498))

(declare-fun t!29500 () Bool)

(declare-fun tb!8295 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65949)))))) t!29500) tb!8295))

(declare-fun result!11242 () Bool)

(assert (= result!11242 result!10950))

(assert (=> d!48542 t!29500))

(declare-fun t!29502 () Bool)

(declare-fun tb!8297 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (Cons!3220 (h!8617 tokens!465) Nil!3220)))))) t!29502) tb!8297))

(declare-fun result!11244 () Bool)

(assert (= result!11244 result!10940))

(assert (=> d!48518 t!29502))

(declare-fun t!29504 () Bool)

(declare-fun tb!8299 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465))))) t!29504) tb!8299))

(declare-fun result!11246 () Bool)

(assert (= result!11246 result!10710))

(assert (=> d!47514 t!29504))

(declare-fun t!29506 () Bool)

(declare-fun tb!8301 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 lt!65418 0))))) t!29506) tb!8301))

(declare-fun result!11248 () Bool)

(assert (= result!11248 result!10880))

(assert (=> d!48202 t!29506))

(assert (=> b!191123 t!29504))

(assert (=> d!47500 t!29494))

(declare-fun tb!8303 () Bool)

(declare-fun t!29508 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (_1!1869 (get!938 lt!65493)))))) t!29508) tb!8303))

(declare-fun result!11250 () Bool)

(assert (= result!11250 result!10860))

(assert (=> d!48186 t!29508))

(assert (=> d!49216 t!29492))

(declare-fun t!29510 () Bool)

(declare-fun tb!8305 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 call!8754)))) t!29510) tb!8305))

(declare-fun result!11252 () Bool)

(assert (= result!11252 result!11138))

(assert (=> d!49176 t!29510))

(declare-fun t!29512 () Bool)

(declare-fun tb!8307 () Bool)

(assert (=> (and b!194486 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0))))) t!29512) tb!8307))

(declare-fun result!11254 () Bool)

(assert (= result!11254 result!10818))

(assert (=> d!48068 t!29512))

(declare-fun b_and!13695 () Bool)

(declare-fun tp!89129 () Bool)

(assert (=> b!194486 (= tp!89129 (and (=> t!29494 result!11236) (=> t!29496 result!11238) (=> t!29484 result!11226) (=> t!29508 result!11250) (=> t!29502 result!11244) (=> t!29500 result!11242) (=> t!29492 result!11234) (=> t!29504 result!11246) (=> t!29510 result!11252) (=> t!29488 result!11230) (=> t!29512 result!11254) (=> t!29498 result!11240) (=> t!29490 result!11232) (=> t!29482 result!11224) (=> t!29506 result!11248) (=> t!29486 result!11228) b_and!13695))))

(declare-fun e!119493 () Bool)

(assert (=> b!194486 (= e!119493 (and tp!89130 tp!89129))))

(declare-fun b!194484 () Bool)

(declare-fun e!119492 () Bool)

(declare-fun e!119491 () Bool)

(declare-fun tp!89132 () Bool)

(assert (=> b!194484 (= e!119491 (and (inv!21 (value!21216 (h!8617 (t!28932 (t!28932 tokens!465))))) e!119492 tp!89132))))

(declare-fun tp!89128 () Bool)

(declare-fun b!194485 () Bool)

(assert (=> b!194485 (= e!119492 (and tp!89128 (inv!4037 (tag!771 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (inv!4040 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) e!119493))))

(declare-fun e!119489 () Bool)

(assert (=> b!191888 (= tp!88862 e!119489)))

(declare-fun b!194483 () Bool)

(declare-fun tp!89131 () Bool)

(assert (=> b!194483 (= e!119489 (and (inv!4041 (h!8617 (t!28932 (t!28932 tokens!465)))) e!119491 tp!89131))))

(assert (= b!194485 b!194486))

(assert (= b!194484 b!194485))

(assert (= b!194483 b!194484))

(assert (= (and b!191888 ((_ is Cons!3220) (t!28932 (t!28932 tokens!465)))) b!194483))

(declare-fun m!204609 () Bool)

(assert (=> b!194484 m!204609))

(declare-fun m!204611 () Bool)

(assert (=> b!194485 m!204611))

(declare-fun m!204613 () Bool)

(assert (=> b!194485 m!204613))

(declare-fun m!204615 () Bool)

(assert (=> b!194483 m!204615))

(declare-fun e!119495 () Bool)

(assert (=> b!191909 (= tp!88883 e!119495)))

(declare-fun b!194488 () Bool)

(declare-fun tp!89134 () Bool)

(declare-fun tp!89137 () Bool)

(assert (=> b!194488 (= e!119495 (and tp!89134 tp!89137))))

(declare-fun b!194490 () Bool)

(declare-fun tp!89135 () Bool)

(declare-fun tp!89133 () Bool)

(assert (=> b!194490 (= e!119495 (and tp!89135 tp!89133))))

(declare-fun b!194489 () Bool)

(declare-fun tp!89136 () Bool)

(assert (=> b!194489 (= e!119495 tp!89136)))

(declare-fun b!194487 () Bool)

(assert (=> b!194487 (= e!119495 tp_is_empty!1699)))

(assert (= (and b!191909 ((_ is ElementMatch!817) (reg!1146 (regex!593 (rule!1108 separatorToken!170))))) b!194487))

(assert (= (and b!191909 ((_ is Concat!1433) (reg!1146 (regex!593 (rule!1108 separatorToken!170))))) b!194488))

(assert (= (and b!191909 ((_ is Star!817) (reg!1146 (regex!593 (rule!1108 separatorToken!170))))) b!194489))

(assert (= (and b!191909 ((_ is Union!817) (reg!1146 (regex!593 (rule!1108 separatorToken!170))))) b!194490))

(declare-fun e!119496 () Bool)

(assert (=> b!191910 (= tp!88882 e!119496)))

(declare-fun b!194492 () Bool)

(declare-fun tp!89139 () Bool)

(declare-fun tp!89142 () Bool)

(assert (=> b!194492 (= e!119496 (and tp!89139 tp!89142))))

(declare-fun b!194494 () Bool)

(declare-fun tp!89140 () Bool)

(declare-fun tp!89138 () Bool)

(assert (=> b!194494 (= e!119496 (and tp!89140 tp!89138))))

(declare-fun b!194493 () Bool)

(declare-fun tp!89141 () Bool)

(assert (=> b!194493 (= e!119496 tp!89141)))

(declare-fun b!194491 () Bool)

(assert (=> b!194491 (= e!119496 tp_is_empty!1699)))

(assert (= (and b!191910 ((_ is ElementMatch!817) (regOne!2147 (regex!593 (rule!1108 separatorToken!170))))) b!194491))

(assert (= (and b!191910 ((_ is Concat!1433) (regOne!2147 (regex!593 (rule!1108 separatorToken!170))))) b!194492))

(assert (= (and b!191910 ((_ is Star!817) (regOne!2147 (regex!593 (rule!1108 separatorToken!170))))) b!194493))

(assert (= (and b!191910 ((_ is Union!817) (regOne!2147 (regex!593 (rule!1108 separatorToken!170))))) b!194494))

(declare-fun e!119497 () Bool)

(assert (=> b!191910 (= tp!88880 e!119497)))

(declare-fun b!194496 () Bool)

(declare-fun tp!89144 () Bool)

(declare-fun tp!89147 () Bool)

(assert (=> b!194496 (= e!119497 (and tp!89144 tp!89147))))

(declare-fun b!194498 () Bool)

(declare-fun tp!89145 () Bool)

(declare-fun tp!89143 () Bool)

(assert (=> b!194498 (= e!119497 (and tp!89145 tp!89143))))

(declare-fun b!194497 () Bool)

(declare-fun tp!89146 () Bool)

(assert (=> b!194497 (= e!119497 tp!89146)))

(declare-fun b!194495 () Bool)

(assert (=> b!194495 (= e!119497 tp_is_empty!1699)))

(assert (= (and b!191910 ((_ is ElementMatch!817) (regTwo!2147 (regex!593 (rule!1108 separatorToken!170))))) b!194495))

(assert (= (and b!191910 ((_ is Concat!1433) (regTwo!2147 (regex!593 (rule!1108 separatorToken!170))))) b!194496))

(assert (= (and b!191910 ((_ is Star!817) (regTwo!2147 (regex!593 (rule!1108 separatorToken!170))))) b!194497))

(assert (= (and b!191910 ((_ is Union!817) (regTwo!2147 (regex!593 (rule!1108 separatorToken!170))))) b!194498))

(declare-fun b_lambda!4787 () Bool)

(assert (= b_lambda!4711 (or b!190910 b_lambda!4787)))

(assert (=> d!48468 d!47764))

(declare-fun b_lambda!4789 () Bool)

(assert (= b_lambda!4779 (or (and b!190938 b_free!7647 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!194486 b_free!7683 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!194473 b_free!7679 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!190916 b_free!7643 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!191921 b_free!7667 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!190906 b_free!7651 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!191891 b_free!7663) b_lambda!4789)))

(declare-fun b_lambda!4791 () Bool)

(assert (= b_lambda!4777 (or b!191371 b_lambda!4791)))

(declare-fun bs!19408 () Bool)

(declare-fun d!49414 () Bool)

(assert (= bs!19408 (and d!49414 b!191371)))

(assert (=> bs!19408 (= (dynLambda!1375 lambda!5849 (h!8617 (t!28932 tokens!465))) (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (h!8617 (t!28932 tokens!465))))))

(declare-fun m!204617 () Bool)

(assert (=> bs!19408 m!204617))

(assert (=> d!49210 d!49414))

(declare-fun b_lambda!4793 () Bool)

(assert (= b_lambda!4733 (or b!190918 b_lambda!4793)))

(declare-fun bs!19409 () Bool)

(declare-fun d!49416 () Bool)

(assert (= bs!19409 (and d!49416 b!190918)))

(assert (=> bs!19409 (= (dynLambda!1375 lambda!5839 (h!8617 (t!28932 tokens!465))) (not (isSeparator!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))))

(assert (=> b!193544 d!49416))

(declare-fun b_lambda!4795 () Bool)

(assert (= b_lambda!4679 (or b!191262 b_lambda!4795)))

(declare-fun bs!19410 () Bool)

(declare-fun d!49418 () Bool)

(assert (= bs!19410 (and d!49418 b!191262)))

(assert (=> bs!19410 (= (dynLambda!1375 lambda!5846 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)) (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (apply!492 (seqFromList!564 (t!28932 tokens!465)) 0)))))

(assert (=> bs!19410 m!197041))

(declare-fun m!204619 () Bool)

(assert (=> bs!19410 m!204619))

(assert (=> d!48050 d!49418))

(declare-fun b_lambda!4797 () Bool)

(assert (= b_lambda!4781 (or (and b!190938 b_free!7647 (= (toChars!1123 (transformation!593 (h!8616 rules!1920))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!194486 b_free!7683 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 (t!28932 tokens!465)))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!194473 b_free!7679 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 (t!28931 rules!1920))))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!190916 b_free!7643 (= (toChars!1123 (transformation!593 (rule!1108 separatorToken!170))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!191921 b_free!7667 (= (toChars!1123 (transformation!593 (h!8616 (t!28931 rules!1920)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!190906 b_free!7651 (= (toChars!1123 (transformation!593 (rule!1108 (h!8617 tokens!465)))) (toChars!1123 (transformation!593 (rule!1108 (h!8617 (t!28932 tokens!465))))))) (and b!191891 b_free!7663) b_lambda!4797)))

(declare-fun b_lambda!4799 () Bool)

(assert (= b_lambda!4685 (or b!191608 b_lambda!4799)))

(declare-fun bs!19411 () Bool)

(declare-fun d!49420 () Bool)

(assert (= bs!19411 (and d!49420 b!191608)))

(assert (=> bs!19411 (= (dynLambda!1375 lambda!5865 (h!8617 tokens!465)) (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (h!8617 tokens!465)))))

(assert (=> bs!19411 m!196573))

(assert (=> d!48098 d!49420))

(declare-fun b_lambda!4801 () Bool)

(assert (= b_lambda!4773 (or d!47584 b_lambda!4801)))

(declare-fun bs!19412 () Bool)

(declare-fun d!49422 () Bool)

(assert (= bs!19412 (and d!49422 d!47584)))

(assert (=> bs!19412 (= (dynLambda!1375 lambda!5859 (h!8617 (list!1182 lt!65415))) (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (h!8617 (list!1182 lt!65415))))))

(assert (=> bs!19412 m!204091))

(assert (=> b!194062 d!49422))

(declare-fun b_lambda!4803 () Bool)

(assert (= b_lambda!4723 (or b!191594 b_lambda!4803)))

(declare-fun bs!19413 () Bool)

(declare-fun d!49424 () Bool)

(assert (= bs!19413 (and d!49424 b!191594)))

(assert (=> bs!19413 (= (dynLambda!1375 lambda!5864 (apply!492 lt!65415 0)) (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (apply!492 lt!65415 0)))))

(assert (=> bs!19413 m!197639))

(declare-fun m!204621 () Bool)

(assert (=> bs!19413 m!204621))

(assert (=> d!48662 d!49424))

(declare-fun b_lambda!4805 () Bool)

(assert (= b_lambda!4691 (or b!190910 b_lambda!4805)))

(declare-fun bs!19414 () Bool)

(declare-fun d!49426 () Bool)

(assert (= bs!19414 (and d!49426 b!190910)))

(assert (=> bs!19414 (= (dynLambda!1375 lambda!5840 (h!8617 (t!28932 tokens!465))) (rulesProduceIndividualToken!228 thiss!17480 rules!1920 (h!8617 (t!28932 tokens!465))))))

(assert (=> bs!19414 m!204617))

(assert (=> b!192656 d!49426))

(check-sat (not b!194456) (not b!192534) (not tb!8047) (not b!194148) (not tb!7887) (not b!194216) (not d!48250) (not bm!8930) (not d!48336) (not b_lambda!4785) (not b!193313) (not b!194266) (not b!194103) (not b!192644) (not b!194386) (not b!194435) (not b!193993) (not bm!9003) (not b!193368) (not bm!8940) (not b!194450) (not b!194420) (not d!49130) (not d!48700) (not b!192541) (not d!49306) (not d!49276) (not b!194017) (not b!193226) (not d!48264) (not b!194300) b_and!13577 (not b!193358) (not d!49014) (not b!192756) (not d!48792) (not d!49262) (not b!192572) (not b!193906) (not b!192731) (not d!48654) (not b!193441) (not bm!9001) (not b!194004) (not d!48704) (not b!193199) (not b_lambda!4661) (not d!48174) (not b!192836) (not b!192530) (not b!192466) (not d!48246) (not b!193541) (not d!49336) (not b!193400) (not b!194246) (not b!194099) (not b!193520) (not d!49050) (not b!192766) (not b!192736) (not d!48540) (not b!193543) (not b!194296) (not d!48830) (not b!193605) (not b_next!7683) (not b!193207) (not b!194104) (not b!193192) (not d!48772) (not b!192333) (not b!194261) (not d!49134) (not bm!8945) (not b!194051) (not bm!9019) (not b!194445) (not d!48220) (not b_next!7665) (not b!193193) (not b!193923) (not b!194312) (not b!194262) (not b!194485) (not b!193540) (not d!49388) (not b!193185) (not d!49272) (not b!194015) (not b!194345) (not d!49240) (not b!193611) (not b!192844) (not b!192840) (not b!192666) (not b!193607) (not b!194433) (not b!194459) (not b!194468) (not b!194437) (not b!192527) (not b!193940) (not b!192346) (not b!193519) (not b!194323) (not d!49174) (not d!49368) (not d!49234) (not b!192733) (not d!49192) (not b!193986) (not b!194401) b_and!13679 (not b_next!7643) (not b!193943) (not b!194239) (not d!48034) (not b!194123) (not b!192568) (not d!49242) (not b!192664) (not d!48232) (not b!192422) (not b!194353) (not b!192553) (not b_next!7681) (not d!48046) (not b!192774) (not bm!8987) (not b!193203) (not b!192537) (not b!192694) (not b!192533) (not b!192702) (not b!192366) (not bm!8944) (not b!193998) (not b_lambda!4699) (not b!193928) (not b!193522) (not d!49380) (not bm!8991) (not b!194001) (not b!194082) (not d!49106) (not b!193436) (not b!193617) b_and!13691 (not d!48052) (not tb!8213) (not d!48508) (not tb!7997) (not b!193975) (not d!48530) (not d!48786) (not b_lambda!4681) tp_is_empty!1699 (not b!192643) (not b!193981) (not d!48210) (not d!49200) (not b!192455) (not b!194105) (not bm!8895) (not b!193537) (not b!192777) (not b!194024) (not b!192721) (not b!192700) (not b!194090) b_and!13681 (not b!193171) (not b!194203) (not b!194455) (not b!192343) (not b!194431) (not b!194242) (not b!194116) (not b!193175) (not d!49360) (not bm!8896) (not b!193961) (not b!194067) (not d!48512) (not b!194482) (not b!194075) (not d!48496) (not d!49266) (not b!193933) (not b!194091) (not d!49374) (not d!48050) (not b!193914) (not d!48522) (not d!48180) (not b!194102) (not b!194342) (not d!48756) (not d!49358) (not d!48500) (not b!193539) (not bm!8993) (not b!192655) (not b!193483) (not d!49086) (not d!49172) (not b!193996) (not bm!8943) (not d!49138) (not d!49054) (not d!48814) (not b!194097) (not d!49268) (not d!48706) (not b!193440) (not b!194223) (not b_lambda!4801) (not b!194064) (not d!48222) (not d!49298) (not b!194260) (not b_next!7679) (not b_lambda!4799) (not b!193170) (not d!48818) (not d!49280) (not b!192689) (not d!49034) b_and!13687 (not b!193359) (not d!49018) (not b!193927) (not d!49082) (not tb!8007) (not b!192837) (not bm!8975) (not b!194471) (not d!49286) (not b!194156) (not b!194351) (not d!48120) (not b!194298) (not b!193209) (not d!49350) (not d!48110) (not b!194338) (not d!49042) (not b!194497) (not b!192532) (not b!194066) (not d!48746) (not d!49142) (not bm!8999) (not d!48032) (not b!194209) (not b!194488) (not b!193905) (not b!194464) (not b!192685) (not bm!8933) (not b!192684) (not d!49254) (not b!194325) (not b!193991) (not d!49076) (not b!194247) (not b!192447) (not b!194112) b_and!13683 (not d!49288) (not d!48504) (not b!192329) (not b!193987) (not b!192440) (not b!194021) (not d!49116) (not d!49394) (not b!194452) (not d!49274) (not b!194008) (not d!49278) (not b!192380) (not d!49146) (not b!192535) (not d!49260) (not b!193311) (not d!49144) (not d!49356) (not d!48328) (not b!192960) (not d!49326) (not b!193944) (not d!49156) (not b!194321) (not b!194201) (not b!194011) (not b!192347) (not b!193156) (not b!192952) (not d!48212) (not b!194426) (not d!49304) (not b!192678) (not bm!9005) (not b!194172) (not b!194383) (not b!194299) (not d!48516) (not b!193187) (not b!193382) (not b!193918) (not b!194484) (not b!192467) (not d!48738) (not b!194207) (not d!48242) (not b!194206) (not d!49136) (not d!48532) (not b_lambda!4651) (not b!194438) (not d!48078) (not bm!8879) (not bm!8877) (not d!49348) (not tb!7947) (not tb!8173) (not d!48524) (not b!194427) (not d!49020) (not d!49282) b_and!13689 (not b!194308) (not b!194443) (not d!49264) (not b!194056) (not b!192728) (not d!48800) (not b!194297) (not b!194155) (not d!49226) (not b!192491) (not b!194265) (not b!194290) (not b!193518) (not d!49300) (not b!194158) (not b!194068) (not d!49038) (not b_next!7645) (not b!194341) (not bm!8976) b_and!13573 (not b!192415) (not bs!19411) (not b!194425) (not tb!8027) (not b!194378) (not bm!9016) (not d!49354) (not d!49312) (not d!48090) (not b!194324) (not b!194407) (not b_lambda!4771) (not d!49194) (not d!47998) (not b!194131) (not b!193913) (not d!49322) (not b!193979) (not b!194140) (not b!193994) (not b!194225) (not d!49318) (not b!194281) (not b!193610) (not b!194070) (not b!194382) (not b!193920) (not d!48240) (not b_lambda!4791) (not b!194109) (not b_next!7677) (not d!49390) (not b!192369) (not b!192381) (not b!193559) (not b!192734) (not b!194165) (not b!192368) (not b!194400) (not b!194319) (not d!48816) (not b!194451) (not b!194462) (not b!194234) (not b!192675) (not d!48024) (not b!193545) (not d!48226) (not b!194244) (not d!49328) (not b!192747) (not b!194058) (not b!193931) (not b!194151) (not b!194355) (not b!192525) (not b!194460) (not b!193220) (not bm!8997) (not b!192842) (not b!193908) (not d!49212) (not d!49258) (not b!194213) (not b!193558) (not b!192712) (not b!194179) (not d!48206) (not b!193215) (not b!194489) (not b!193437) (not d!49408) (not b!194387) (not b!194432) (not b!194229) (not b!193997) (not d!48274) (not b!192752) (not b!194160) (not b!194272) (not b!194161) (not b!193606) (not b_lambda!4729) (not b!194421) (not b!194074) (not b_lambda!4657) (not bm!8995) (not b!192767) (not b!194253) (not b!194026) (not d!49068) (not b_lambda!4789) (not b!192951) (not b!193970) (not b!194422) (not b!194133) (not b_lambda!4659) (not b!194458) (not d!48262) (not b!194424) (not d!49104) (not d!48254) (not bs!19414) (not d!49250) (not b!193958) (not b_next!7663) (not d!48190) (not b!193955) (not b!194164) (not d!48040) (not bm!8952) (not b!192686) (not b!194016) (not b!194476) (not bm!9000) (not d!49062) (not b!193909) (not d!49158) (not b!194441) (not d!49154) (not bm!8994) (not bm!8974) (not b!192758) (not bm!9010) (not b!193980) (not d!49090) (not bs!19413) (not d!48750) (not b!192760) (not b!192352) (not d!48184) (not bm!8882) (not b!193173) (not b!192379) (not b!194019) (not b!194079) (not d!48776) (not d!49006) (not d!49364) (not d!49410) (not b!194285) (not b!192681) (not b!194002) (not b!193557) (not b!194081) (not b!192334) (not d!49012) (not b_lambda!4695) (not d!49184) (not b!194352) (not b!194000) (not b_next!7647) (not b!192548) (not b!194271) (not b!194141) (not b!192843) (not b!194243) (not b!194128) (not d!48760) (not b!193531) (not b!194444) (not b!192341) (not b!192378) (not b!193314) (not tb!7937) (not b!194273) (not b!193166) (not b!193969) (not d!48472) (not b!194398) (not bs!19412) (not d!49342) (not b!193188) (not b!193357) (not d!49338) (not d!49070) (not b!193177) (not b!194204) (not b!191129) (not b!194335) (not b!193227) (not b!193419) (not b!192348) (not b!192670) (not b!193399) (not d!49294) (not b!194283) (not b!194069) (not d!48218) (not b!192741) (not b!192387) (not bm!8951) (not b!192543) (not b!194181) (not b!192764) (not b!194327) (not b!194393) (not b!192653) (not d!49292) (not d!48668) (not d!49060) (not b!192546) (not b!193968) (not b!193556) (not b!194465) (not d!48096) (not b!192384) (not b!194094) (not d!49352) (not b!193224) (not b!193510) (not d!48806) (not b!194061) (not b!194129) (not b!194238) (not bm!9008) (not b!194493) (not b!192759) (not b!192331) (not b_next!7667) (not bm!8950) (not b!193197) (not b_next!7641) (not b!192950) (not bm!8893) (not d!48036) (not b!192729) (not d!48204) (not b!192761) (not d!48544) (not d!48162) (not bm!8942) (not d!49168) (not b!192335) (not b!192645) (not b!194405) (not b!192768) (not d!48536) (not b!194231) (not b!193941) (not b!194466) (not b!194217) (not b!192432) (not d!48510) (not b!192345) (not d!49178) (not b!194014) (not d!49392) (not b!194379) (not b!194276) (not b!192493) (not b!194480) (not d!49056) (not d!49236) (not d!49036) (not bm!8988) (not d!48490) (not b!192424) (not d!49160) (not b!194153) (not b!192654) (not bm!8938) (not b!192849) (not b!192544) (not b!194211) (not b!192735) (not d!48228) (not b!194135) (not bm!8984) (not b!193312) (not d!49196) (not b!194481) (not d!48186) (not bm!8897) (not d!49398) (not b!194072) (not d!49238) (not bm!8889) (not bm!8985) (not d!48028) (not tb!8223) (not d!48064) (not b!194267) (not b!192353) (not d!48104) (not b_lambda!4693) (not b!192737) (not d!48224) (not d!49100) (not b!194380) (not b!194152) (not d!49372) (not b_lambda!4737) (not d!49214) (not d!48488) (not b!193443) (not d!48066) (not b!193579) (not d!48030) (not d!48172) (not b!192838) (not b!194005) (not b!194389) (not d!49046) (not d!48526) (not d!49256) (not b!192753) (not d!48734) (not d!48554) (not b!194127) (not b!193385) (not b!192687) (not b!194059) (not b!194235) (not d!49384) (not b!192454) (not d!49186) (not b!192961) (not b!193401) (not b!194018) (not b!193216) (not d!49164) (not b!194395) (not d!49148) (not b!194354) (not b_lambda!4653) (not d!49124) (not bs!19410) (not b!194240) (not b!194157) (not d!48662) (not d!49152) (not d!49216) (not bs!19408) (not b!192969) (not b!192538) (not d!49114) (not b!193378) (not b!193917) (not d!49010) (not b!192433) (not b!193417) (not b!193598) (not b!193593) (not b!193562) (not tb!8203) (not b!193521) (not b!193576) (not b!194463) (not b!194086) (not bm!8977) (not b!193568) (not tb!7877) (not b!193609) (not d!49162) (not b!194286) (not bm!9012) (not b!194020) (not b!194320) (not d!48674) (not d!49218) (not b!194228) (not bm!8886) (not b_lambda!4787) (not b!193373) (not b!194145) (not b!192800) (not b!193995) (not b_next!7651) (not b!194205) (not b!192448) (not bm!9011) (not b!192449) (not b!193945) (not b!193973) (not b_next!7649) (not b!194055) (not b!194117) (not d!48484) (not d!48656) (not d!49080) (not b!193310) (not b!192719) (not b!193439) (not b!193499) (not b!194198) (not b!193990) (not b!193361) (not d!48256) (not d!48058) (not b!193416) (not b!193542) (not b!194367) (not b_lambda!4795) (not b!194009) (not b!194436) (not b!192551) (not b!193992) (not b!192709) (not d!48324) (not b!193404) (not b!192968) (not b!194089) (not d!49228) (not d!48098) (not d!49140) (not b!194314) (not b_lambda!4783) (not b!193925) (not b!192710) (not b!193577) (not b!194287) (not d!49074) (not d!48048) (not d!49182) (not b!192393) (not d!48260) (not d!49180) (not d!48022) (not b!194057) (not b!194347) (not b!192730) (not d!49400) (not d!49108) (not b!194224) (not bm!8888) (not d!49310) (not b!193565) (not b_lambda!4775) (not bm!8910) (not d!48550) (not b!192385) (not b!194013) (not d!48696) (not b!194399) (not b!194364) (not b!193976) (not b!192350) (not b_lambda!4793) (not b!194326) (not d!49206) (not b!193200) (not b!193560) (not b!192540) (not b!193222) (not b_lambda!4805) (not d!48234) (not b!193206) (not b!193971) (not b!192964) (not b!192570) (not d!49040) (not b!193491) b_and!13693 (not d!48244) (not d!49406) (not b!193381) (not b!193929) (not b!194397) (not b!192751) (not d!48068) (not b!192435) (not d!48214) (not bm!8887) (not b!194180) (not d!48056) (not bm!8885) (not d!48038) (not b!194361) (not b!192962) (not d!48042) (not bm!8989) (not b!193600) (not b!194478) (not bm!8947) (not bm!9009) (not b!194446) (not b!192434) (not b!194169) (not tb!7917) (not d!48258) (not d!48494) (not b!192557) (not d!48080) (not b!194418) (not d!49270) (not b!192851) (not tb!7927) b_and!13695 (not b!193204) (not d!49222) (not b!194305) (not b!194356) (not b!194154) (not b!194115) (not d!48054) (not b!192529) (not b!194496) (not b!193619) (not d!49296) (not b!193194) (not d!48762) (not d!49198) (not d!48684) (not b!193532) (not b!193398) (not b!194259) b_and!13579 (not d!48528) (not b!194178) (not d!48170) (not d!48492) (not d!49026) (not b!194472) (not b!194168) (not bm!8881) (not b!193954) (not b!192749) (not b!192528) (not b!194199) (not b!192359) (not tb!8193) (not b!194349) b_and!13571 (not b!194100) (not b!192697) (not tb!8067) (not d!49024) (not b!194498) (not d!48102) (not d!48692) (not b!194475) (not bm!8953) (not b!192365) (not b!194073) (not d!48802) (not b!194237) (not d!48552) (not d!49058) (not b!193176) (not b!192363) (not b_lambda!4697) (not b!192732) (not b!194143) (not d!48810) (not b!193213) (not b!192364) (not b!192669) (not b!194394) (not d!49190) (not d!49362) (not b!192531) (not b!194417) (not d!48122) (not d!49224) (not b!192431) (not b_lambda!4769) (not b!192738) (not b!193915) (not b!194233) (not d!49346) (not d!48518) (not b!194245) (not d!49088) (not b!193957) (not b!192371) (not d!48502) (not d!48846) (not b!193186) (not b!194124) (not d!49078) (not b!192545) (not b!192657) (not b!194167) (not b!194107) (not b!192523) (not b_lambda!4725) (not d!49052) (not b!193916) (not b!192688) (not bm!8907) (not b!193942) (not d!48514) b_and!13685 (not b_lambda!4803) (not b_lambda!4655) (not d!48770) (not b!194278) (not d!48670) (not b!194406) (not b!192839) (not b!194087) (not b!194490) (not b!193411) (not b!191291) (not b!194416) (not b!192330) (not b!192383) (not b!194454) (not d!49382) (not d!48744) (not d!48026) (not b!192438) (not b!193190) (not b!194063) (not tb!8183) (not b!193575) (not b!194268) (not b_lambda!4797) (not b!193387) (not d!49320) (not b!192489) (not b!192492) (not b!192963) (not bm!9013) (not b!194176) (not b!193911) (not b!193930) (not d!48542) (not d!48752) (not b!193517) (not b!194275) (not d!49344) (not d!49126) (not b!194054) (not d!48020) (not b!193377) (not b!194200) b_and!13575 (not bm!9015) (not b!192367) (not b!194248) (not b!193189) (not b!194010) (not d!48722) (not d!48266) (not b!193524) (not d!49210) (not b!194477) (not b!192328) (not b_lambda!4717) (not b!192391) (not d!48198) (not b!193379) (not b!194144) (not b!194313) (not d!49096) (not d!49316) (not b_lambda!4649) (not b!194256) (not d!49302) (not b!192740) (not b!194111) (not d!49412) (not b!192667) (not b!194208) (not b!193912) (not b!194136) (not b!192668) (not d!48100) (not b!194467) (not d!48216) (not d!48534) (not b_lambda!4715) (not b!193438) (not b!194214) (not b!193426) (not b!192524) (not d!48060) (not b!194101) (not b!193498) (not b!194492) (not b!192769) (not b!193947) (not b!194494) (not b!194065) (not b!193221) (not d!49396) (not b!193208) (not b!194483) (not b_next!7661) (not d!48740) (not d!49176) (not d!49290) (not b!193921) (not b!192388) (not b!193415) (not bm!8898) (not d!48796) (not d!48202) (not b!193196) (not b_lambda!4683) (not b!192526) (not b!193959) (not bm!8894))
(check-sat b_and!13577 (not b_next!7683) (not b_next!7665) b_and!13691 b_and!13681 b_and!13683 b_and!13689 (not b_next!7677) (not b_next!7663) (not b_next!7647) (not b_next!7667) (not b_next!7641) b_and!13693 b_and!13695 b_and!13685 b_and!13575 (not b_next!7661) b_and!13679 (not b_next!7643) (not b_next!7681) (not b_next!7679) b_and!13687 (not b_next!7645) b_and!13573 (not b_next!7651) (not b_next!7649) b_and!13579 b_and!13571)
