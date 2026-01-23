; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20502 () Bool)

(assert start!20502)

(declare-fun b!189614 () Bool)

(declare-fun b_free!7521 () Bool)

(declare-fun b_next!7521 () Bool)

(assert (=> b!189614 (= b_free!7521 (not b_next!7521))))

(declare-fun tp!88390 () Bool)

(declare-fun b_and!13125 () Bool)

(assert (=> b!189614 (= tp!88390 b_and!13125)))

(declare-fun b_free!7523 () Bool)

(declare-fun b_next!7523 () Bool)

(assert (=> b!189614 (= b_free!7523 (not b_next!7523))))

(declare-fun tp!88387 () Bool)

(declare-fun b_and!13127 () Bool)

(assert (=> b!189614 (= tp!88387 b_and!13127)))

(declare-fun b!189629 () Bool)

(declare-fun b_free!7525 () Bool)

(declare-fun b_next!7525 () Bool)

(assert (=> b!189629 (= b_free!7525 (not b_next!7525))))

(declare-fun tp!88389 () Bool)

(declare-fun b_and!13129 () Bool)

(assert (=> b!189629 (= tp!88389 b_and!13129)))

(declare-fun b_free!7527 () Bool)

(declare-fun b_next!7527 () Bool)

(assert (=> b!189629 (= b_free!7527 (not b_next!7527))))

(declare-fun tp!88381 () Bool)

(declare-fun b_and!13131 () Bool)

(assert (=> b!189629 (= tp!88381 b_and!13131)))

(declare-fun b!189622 () Bool)

(declare-fun b_free!7529 () Bool)

(declare-fun b_next!7529 () Bool)

(assert (=> b!189622 (= b_free!7529 (not b_next!7529))))

(declare-fun tp!88386 () Bool)

(declare-fun b_and!13133 () Bool)

(assert (=> b!189622 (= tp!88386 b_and!13133)))

(declare-fun b_free!7531 () Bool)

(declare-fun b_next!7531 () Bool)

(assert (=> b!189622 (= b_free!7531 (not b_next!7531))))

(declare-fun tp!88380 () Bool)

(declare-fun b_and!13135 () Bool)

(assert (=> b!189622 (= tp!88380 b_and!13135)))

(declare-fun bs!18758 () Bool)

(declare-fun b!189617 () Bool)

(declare-fun b!189610 () Bool)

(assert (= bs!18758 (and b!189617 b!189610)))

(declare-fun lambda!5776 () Int)

(declare-fun lambda!5775 () Int)

(assert (=> bs!18758 (not (= lambda!5776 lambda!5775))))

(declare-fun b!189640 () Bool)

(declare-fun e!116365 () Bool)

(assert (=> b!189640 (= e!116365 true)))

(declare-fun b!189639 () Bool)

(declare-fun e!116364 () Bool)

(assert (=> b!189639 (= e!116364 e!116365)))

(declare-fun b!189638 () Bool)

(declare-fun e!116363 () Bool)

(assert (=> b!189638 (= e!116363 e!116364)))

(assert (=> b!189617 e!116363))

(assert (= b!189639 b!189640))

(assert (= b!189638 b!189639))

(declare-datatypes ((List!3187 0))(
  ( (Nil!3177) (Cons!3177 (h!8574 (_ BitVec 16)) (t!28865 List!3187)) )
))
(declare-datatypes ((TokenValue!605 0))(
  ( (FloatLiteralValue!1210 (text!4680 List!3187)) (TokenValueExt!604 (__x!2697 Int)) (Broken!3025 (value!20905 List!3187)) (Object!614) (End!605) (Def!605) (Underscore!605) (Match!605) (Else!605) (Error!605) (Case!605) (If!605) (Extends!605) (Abstract!605) (Class!605) (Val!605) (DelimiterValue!1210 (del!665 List!3187)) (KeywordValue!611 (value!20906 List!3187)) (CommentValue!1210 (value!20907 List!3187)) (WhitespaceValue!1210 (value!20908 List!3187)) (IndentationValue!605 (value!20909 List!3187)) (String!4104) (Int32!605) (Broken!3026 (value!20910 List!3187)) (Boolean!606) (Unit!2985) (OperatorValue!608 (op!665 List!3187)) (IdentifierValue!1210 (value!20911 List!3187)) (IdentifierValue!1211 (value!20912 List!3187)) (WhitespaceValue!1211 (value!20913 List!3187)) (True!1210) (False!1210) (Broken!3027 (value!20914 List!3187)) (Broken!3028 (value!20915 List!3187)) (True!1211) (RightBrace!605) (RightBracket!605) (Colon!605) (Null!605) (Comma!605) (LeftBracket!605) (False!1211) (LeftBrace!605) (ImaginaryLiteralValue!605 (text!4681 List!3187)) (StringLiteralValue!1815 (value!20916 List!3187)) (EOFValue!605 (value!20917 List!3187)) (IdentValue!605 (value!20918 List!3187)) (DelimiterValue!1211 (value!20919 List!3187)) (DedentValue!605 (value!20920 List!3187)) (NewLineValue!605 (value!20921 List!3187)) (IntegerValue!1815 (value!20922 (_ BitVec 32)) (text!4682 List!3187)) (IntegerValue!1816 (value!20923 Int) (text!4683 List!3187)) (Times!605) (Or!605) (Equal!605) (Minus!605) (Broken!3029 (value!20924 List!3187)) (And!605) (Div!605) (LessEqual!605) (Mod!605) (Concat!1412) (Not!605) (Plus!605) (SpaceValue!605 (value!20925 List!3187)) (IntegerValue!1817 (value!20926 Int) (text!4684 List!3187)) (StringLiteralValue!1816 (text!4685 List!3187)) (FloatLiteralValue!1211 (text!4686 List!3187)) (BytesLiteralValue!605 (value!20927 List!3187)) (CommentValue!1211 (value!20928 List!3187)) (StringLiteralValue!1817 (value!20929 List!3187)) (ErrorTokenValue!605 (msg!666 List!3187)) )
))
(declare-datatypes ((C!2536 0))(
  ( (C!2537 (val!1154 Int)) )
))
(declare-datatypes ((List!3188 0))(
  ( (Nil!3178) (Cons!3178 (h!8575 C!2536) (t!28866 List!3188)) )
))
(declare-datatypes ((IArray!1977 0))(
  ( (IArray!1978 (innerList!1046 List!3188)) )
))
(declare-datatypes ((Conc!988 0))(
  ( (Node!988 (left!2502 Conc!988) (right!2832 Conc!988) (csize!2206 Int) (cheight!1199 Int)) (Leaf!1619 (xs!3583 IArray!1977) (csize!2207 Int)) (Empty!988) )
))
(declare-datatypes ((BalanceConc!1984 0))(
  ( (BalanceConc!1985 (c!36355 Conc!988)) )
))
(declare-datatypes ((String!4105 0))(
  ( (String!4106 (value!20930 String)) )
))
(declare-datatypes ((TokenValueInjection!982 0))(
  ( (TokenValueInjection!983 (toValue!1254 Int) (toChars!1113 Int)) )
))
(declare-datatypes ((Regex!807 0))(
  ( (ElementMatch!807 (c!36356 C!2536)) (Concat!1413 (regOne!2126 Regex!807) (regTwo!2126 Regex!807)) (EmptyExpr!807) (Star!807 (reg!1136 Regex!807)) (EmptyLang!807) (Union!807 (regOne!2127 Regex!807) (regTwo!2127 Regex!807)) )
))
(declare-datatypes ((Rule!966 0))(
  ( (Rule!967 (regex!583 Regex!807) (tag!761 String!4105) (isSeparator!583 Bool) (transformation!583 TokenValueInjection!982)) )
))
(declare-datatypes ((List!3189 0))(
  ( (Nil!3179) (Cons!3179 (h!8576 Rule!966) (t!28867 List!3189)) )
))
(declare-fun rules!1920 () List!3189)

(get-info :version)

(assert (= (and b!189617 ((_ is Cons!3179) rules!1920)) b!189638))

(declare-fun order!1975 () Int)

(declare-fun order!1973 () Int)

(declare-fun dynLambda!1339 (Int Int) Int)

(declare-fun dynLambda!1340 (Int Int) Int)

(assert (=> b!189640 (< (dynLambda!1339 order!1973 (toValue!1254 (transformation!583 (h!8576 rules!1920)))) (dynLambda!1340 order!1975 lambda!5776))))

(declare-fun order!1977 () Int)

(declare-fun dynLambda!1341 (Int Int) Int)

(assert (=> b!189640 (< (dynLambda!1341 order!1977 (toChars!1113 (transformation!583 (h!8576 rules!1920)))) (dynLambda!1340 order!1975 lambda!5776))))

(assert (=> b!189617 true))

(declare-fun b!189595 () Bool)

(declare-fun e!116354 () Bool)

(declare-datatypes ((Token!910 0))(
  ( (Token!911 (value!20931 TokenValue!605) (rule!1098 Rule!966) (size!2543 Int) (originalCharacters!626 List!3188)) )
))
(declare-datatypes ((List!3190 0))(
  ( (Nil!3180) (Cons!3180 (h!8577 Token!910) (t!28868 List!3190)) )
))
(declare-fun tokens!465 () List!3190)

(declare-fun lt!64388 () List!3188)

(declare-fun matchR!145 (Regex!807 List!3188) Bool)

(assert (=> b!189595 (= e!116354 (matchR!145 (regex!583 (rule!1098 (h!8577 tokens!465))) lt!64388))))

(declare-fun b!189596 () Bool)

(declare-fun e!116329 () Bool)

(declare-fun e!116337 () Bool)

(assert (=> b!189596 (= e!116329 (not e!116337))))

(declare-fun res!86707 () Bool)

(assert (=> b!189596 (=> res!86707 e!116337)))

(declare-fun separatorToken!170 () Token!910)

(declare-fun lt!64396 () List!3188)

(declare-datatypes ((LexerInterface!469 0))(
  ( (LexerInterfaceExt!466 (__x!2698 Int)) (Lexer!467) )
))
(declare-fun thiss!17480 () LexerInterface!469)

(declare-fun list!1169 (BalanceConc!1984) List!3188)

(declare-datatypes ((IArray!1979 0))(
  ( (IArray!1980 (innerList!1047 List!3190)) )
))
(declare-datatypes ((Conc!989 0))(
  ( (Node!989 (left!2503 Conc!989) (right!2833 Conc!989) (csize!2208 Int) (cheight!1200 Int)) (Leaf!1620 (xs!3584 IArray!1979) (csize!2209 Int)) (Empty!989) )
))
(declare-datatypes ((BalanceConc!1986 0))(
  ( (BalanceConc!1987 (c!36357 Conc!989)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!152 (LexerInterface!469 List!3189 BalanceConc!1986 Token!910 Int) BalanceConc!1984)

(declare-fun seqFromList!543 (List!3190) BalanceConc!1986)

(assert (=> b!189596 (= res!86707 (not (= lt!64396 (list!1169 (printWithSeparatorTokenWhenNeededRec!152 thiss!17480 rules!1920 (seqFromList!543 (t!28868 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!64401 () List!3188)

(declare-fun lt!64398 () List!3188)

(assert (=> b!189596 (= lt!64401 lt!64398)))

(declare-fun lt!64397 () List!3188)

(declare-fun ++!758 (List!3188 List!3188) List!3188)

(assert (=> b!189596 (= lt!64398 (++!758 lt!64388 lt!64397))))

(declare-fun lt!64387 () List!3188)

(assert (=> b!189596 (= lt!64401 (++!758 (++!758 lt!64388 lt!64387) lt!64396))))

(declare-datatypes ((Unit!2986 0))(
  ( (Unit!2987) )
))
(declare-fun lt!64400 () Unit!2986)

(declare-fun lemmaConcatAssociativity!272 (List!3188 List!3188 List!3188) Unit!2986)

(assert (=> b!189596 (= lt!64400 (lemmaConcatAssociativity!272 lt!64388 lt!64387 lt!64396))))

(declare-fun charsOf!238 (Token!910) BalanceConc!1984)

(assert (=> b!189596 (= lt!64388 (list!1169 (charsOf!238 (h!8577 tokens!465))))))

(assert (=> b!189596 (= lt!64397 (++!758 lt!64387 lt!64396))))

(declare-fun printWithSeparatorTokenWhenNeededList!162 (LexerInterface!469 List!3189 List!3190 Token!910) List!3188)

(assert (=> b!189596 (= lt!64396 (printWithSeparatorTokenWhenNeededList!162 thiss!17480 rules!1920 (t!28868 tokens!465) separatorToken!170))))

(assert (=> b!189596 (= lt!64387 (list!1169 (charsOf!238 separatorToken!170)))))

(declare-fun b!189597 () Bool)

(declare-fun e!116340 () Bool)

(assert (=> b!189597 (= e!116340 e!116329)))

(declare-fun res!86699 () Bool)

(assert (=> b!189597 (=> (not res!86699) (not e!116329))))

(declare-fun lt!64414 () List!3188)

(declare-fun lt!64395 () List!3188)

(assert (=> b!189597 (= res!86699 (= lt!64414 lt!64395))))

(declare-fun lt!64406 () BalanceConc!1986)

(assert (=> b!189597 (= lt!64395 (list!1169 (printWithSeparatorTokenWhenNeededRec!152 thiss!17480 rules!1920 lt!64406 separatorToken!170 0)))))

(assert (=> b!189597 (= lt!64414 (printWithSeparatorTokenWhenNeededList!162 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!189598 () Bool)

(declare-fun e!116341 () Unit!2986)

(declare-fun Unit!2988 () Unit!2986)

(assert (=> b!189598 (= e!116341 Unit!2988)))

(assert (=> b!189598 false))

(declare-fun b!189599 () Bool)

(declare-fun e!116346 () Bool)

(assert (=> b!189599 (= e!116346 e!116340)))

(declare-fun res!86691 () Bool)

(assert (=> b!189599 (=> (not res!86691) (not e!116340))))

(declare-fun rulesProduceEachTokenIndividually!261 (LexerInterface!469 List!3189 BalanceConc!1986) Bool)

(assert (=> b!189599 (= res!86691 (rulesProduceEachTokenIndividually!261 thiss!17480 rules!1920 lt!64406))))

(assert (=> b!189599 (= lt!64406 (seqFromList!543 tokens!465))))

(declare-fun b!189600 () Bool)

(declare-fun res!86692 () Bool)

(declare-fun e!116348 () Bool)

(assert (=> b!189600 (=> res!86692 e!116348)))

(declare-fun isEmpty!1559 (BalanceConc!1986) Bool)

(declare-datatypes ((tuple2!3242 0))(
  ( (tuple2!3243 (_1!1837 BalanceConc!1986) (_2!1837 BalanceConc!1984)) )
))
(declare-fun lex!269 (LexerInterface!469 List!3189 BalanceConc!1984) tuple2!3242)

(declare-fun seqFromList!544 (List!3188) BalanceConc!1984)

(assert (=> b!189600 (= res!86692 (isEmpty!1559 (_1!1837 (lex!269 thiss!17480 rules!1920 (seqFromList!544 lt!64388)))))))

(declare-fun tp!88384 () Bool)

(declare-fun e!116330 () Bool)

(declare-fun e!116352 () Bool)

(declare-fun b!189601 () Bool)

(declare-fun inv!21 (TokenValue!605) Bool)

(assert (=> b!189601 (= e!116330 (and (inv!21 (value!20931 (h!8577 tokens!465))) e!116352 tp!88384))))

(declare-fun b!189602 () Bool)

(declare-fun res!86702 () Bool)

(assert (=> b!189602 (=> (not res!86702) (not e!116340))))

(declare-fun rulesProduceIndividualToken!218 (LexerInterface!469 List!3189 Token!910) Bool)

(assert (=> b!189602 (= res!86702 (rulesProduceIndividualToken!218 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!189603 () Bool)

(declare-fun res!86701 () Bool)

(assert (=> b!189603 (=> res!86701 e!116348)))

(assert (=> b!189603 (= res!86701 (not (rulesProduceIndividualToken!218 thiss!17480 rules!1920 (h!8577 tokens!465))))))

(declare-fun b!189604 () Bool)

(declare-fun e!116331 () Bool)

(assert (=> b!189604 (= e!116331 e!116348)))

(declare-fun res!86705 () Bool)

(assert (=> b!189604 (=> res!86705 e!116348)))

(declare-fun lt!64390 () List!3188)

(declare-fun lt!64412 () List!3188)

(assert (=> b!189604 (= res!86705 (or (not (= lt!64412 lt!64390)) (not (= lt!64390 lt!64388)) (not (= lt!64412 lt!64388))))))

(declare-fun printList!153 (LexerInterface!469 List!3190) List!3188)

(assert (=> b!189604 (= lt!64390 (printList!153 thiss!17480 (Cons!3180 (h!8577 tokens!465) Nil!3180)))))

(declare-fun lt!64413 () BalanceConc!1984)

(assert (=> b!189604 (= lt!64412 (list!1169 lt!64413))))

(declare-fun lt!64399 () BalanceConc!1986)

(declare-fun printTailRec!163 (LexerInterface!469 BalanceConc!1986 Int BalanceConc!1984) BalanceConc!1984)

(assert (=> b!189604 (= lt!64413 (printTailRec!163 thiss!17480 lt!64399 0 (BalanceConc!1985 Empty!988)))))

(declare-fun print!200 (LexerInterface!469 BalanceConc!1986) BalanceConc!1984)

(assert (=> b!189604 (= lt!64413 (print!200 thiss!17480 lt!64399))))

(declare-fun singletonSeq!135 (Token!910) BalanceConc!1986)

(assert (=> b!189604 (= lt!64399 (singletonSeq!135 (h!8577 tokens!465)))))

(declare-fun b!189605 () Bool)

(declare-fun e!116335 () Bool)

(declare-datatypes ((tuple2!3244 0))(
  ( (tuple2!3245 (_1!1838 Token!910) (_2!1838 List!3188)) )
))
(declare-datatypes ((Option!444 0))(
  ( (None!443) (Some!443 (v!13954 tuple2!3244)) )
))
(declare-fun lt!64407 () Option!444)

(declare-fun get!915 (Option!444) tuple2!3244)

(declare-fun head!672 (List!3190) Token!910)

(assert (=> b!189605 (= e!116335 (= (_1!1838 (get!915 lt!64407)) (head!672 tokens!465)))))

(declare-fun b!189606 () Bool)

(declare-fun res!86694 () Bool)

(assert (=> b!189606 (=> (not res!86694) (not e!116340))))

(declare-fun sepAndNonSepRulesDisjointChars!172 (List!3189 List!3189) Bool)

(assert (=> b!189606 (= res!86694 (sepAndNonSepRulesDisjointChars!172 rules!1920 rules!1920))))

(declare-fun b!189607 () Bool)

(declare-fun e!116338 () Bool)

(assert (=> b!189607 (= e!116338 (not (= lt!64414 (++!758 lt!64388 lt!64396))))))

(declare-fun b!189608 () Bool)

(declare-fun Unit!2989 () Unit!2986)

(assert (=> b!189608 (= e!116341 Unit!2989)))

(declare-fun b!189609 () Bool)

(declare-fun e!116347 () Bool)

(assert (=> b!189609 (= e!116347 e!116335)))

(declare-fun res!86690 () Bool)

(assert (=> b!189609 (=> (not res!86690) (not e!116335))))

(declare-fun isDefined!295 (Option!444) Bool)

(assert (=> b!189609 (= res!86690 (isDefined!295 lt!64407))))

(declare-fun maxPrefix!199 (LexerInterface!469 List!3189 List!3188) Option!444)

(assert (=> b!189609 (= lt!64407 (maxPrefix!199 thiss!17480 rules!1920 lt!64414))))

(declare-fun res!86693 () Bool)

(assert (=> b!189610 (=> (not res!86693) (not e!116340))))

(declare-fun forall!665 (List!3190 Int) Bool)

(assert (=> b!189610 (= res!86693 (forall!665 tokens!465 lambda!5775))))

(declare-fun b!189611 () Bool)

(declare-fun e!116353 () Bool)

(declare-fun e!116336 () Bool)

(declare-fun tp!88385 () Bool)

(assert (=> b!189611 (= e!116353 (and e!116336 tp!88385))))

(declare-fun b!189612 () Bool)

(declare-fun res!86686 () Bool)

(assert (=> b!189612 (=> (not res!86686) (not e!116329))))

(assert (=> b!189612 (= res!86686 (= (list!1169 (seqFromList!544 lt!64414)) lt!64395))))

(declare-fun res!86687 () Bool)

(assert (=> start!20502 (=> (not res!86687) (not e!116346))))

(assert (=> start!20502 (= res!86687 ((_ is Lexer!467) thiss!17480))))

(assert (=> start!20502 e!116346))

(assert (=> start!20502 true))

(assert (=> start!20502 e!116353))

(declare-fun e!116339 () Bool)

(declare-fun inv!4005 (Token!910) Bool)

(assert (=> start!20502 (and (inv!4005 separatorToken!170) e!116339)))

(declare-fun e!116350 () Bool)

(assert (=> start!20502 e!116350))

(declare-fun b!189613 () Bool)

(declare-fun res!86697 () Bool)

(assert (=> b!189613 (=> (not res!86697) (not e!116340))))

(assert (=> b!189613 (= res!86697 ((_ is Cons!3180) tokens!465))))

(declare-fun e!116356 () Bool)

(assert (=> b!189614 (= e!116356 (and tp!88390 tp!88387))))

(declare-fun b!189615 () Bool)

(declare-fun e!116349 () Bool)

(assert (=> b!189615 (= e!116349 true)))

(declare-fun lt!64393 () BalanceConc!1986)

(assert (=> b!189615 (= (print!200 thiss!17480 lt!64393) (printTailRec!163 thiss!17480 lt!64393 0 (BalanceConc!1985 Empty!988)))))

(assert (=> b!189615 (= lt!64393 (singletonSeq!135 separatorToken!170))))

(declare-fun lt!64408 () Token!910)

(assert (=> b!189615 (rulesProduceIndividualToken!218 thiss!17480 rules!1920 lt!64408)))

(declare-fun lt!64411 () Unit!2986)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!36 (LexerInterface!469 List!3189 List!3190 Token!910) Unit!2986)

(assert (=> b!189615 (= lt!64411 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!36 thiss!17480 rules!1920 tokens!465 lt!64408))))

(assert (=> b!189615 (= lt!64408 (head!672 (t!28868 tokens!465)))))

(declare-fun lt!64392 () Unit!2986)

(assert (=> b!189615 (= lt!64392 e!116341)))

(declare-fun c!36354 () Bool)

(declare-fun isEmpty!1560 (List!3190) Bool)

(assert (=> b!189615 (= c!36354 (isEmpty!1560 (t!28868 tokens!465)))))

(declare-fun lt!64404 () Option!444)

(assert (=> b!189615 (= lt!64404 (maxPrefix!199 thiss!17480 rules!1920 lt!64397))))

(declare-fun lt!64410 () tuple2!3244)

(assert (=> b!189615 (= lt!64397 (_2!1838 lt!64410))))

(declare-fun lt!64409 () Unit!2986)

(declare-fun lemmaSamePrefixThenSameSuffix!104 (List!3188 List!3188 List!3188 List!3188 List!3188) Unit!2986)

(assert (=> b!189615 (= lt!64409 (lemmaSamePrefixThenSameSuffix!104 lt!64388 lt!64397 lt!64388 (_2!1838 lt!64410) lt!64414))))

(assert (=> b!189615 (= lt!64410 (get!915 (maxPrefix!199 thiss!17480 rules!1920 lt!64414)))))

(declare-fun isPrefix!279 (List!3188 List!3188) Bool)

(assert (=> b!189615 (isPrefix!279 lt!64388 lt!64398)))

(declare-fun lt!64391 () Unit!2986)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!174 (List!3188 List!3188) Unit!2986)

(assert (=> b!189615 (= lt!64391 (lemmaConcatTwoListThenFirstIsPrefix!174 lt!64388 lt!64397))))

(assert (=> b!189615 e!116347))

(declare-fun res!86704 () Bool)

(assert (=> b!189615 (=> res!86704 e!116347)))

(assert (=> b!189615 (= res!86704 (isEmpty!1560 tokens!465))))

(declare-fun lt!64402 () Unit!2986)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!44 (LexerInterface!469 List!3189 List!3190 Token!910) Unit!2986)

(assert (=> b!189615 (= lt!64402 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!44 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!116343 () Bool)

(declare-fun tp!88379 () Bool)

(declare-fun b!189616 () Bool)

(declare-fun inv!4002 (String!4105) Bool)

(declare-fun inv!4006 (TokenValueInjection!982) Bool)

(assert (=> b!189616 (= e!116352 (and tp!88379 (inv!4002 (tag!761 (rule!1098 (h!8577 tokens!465)))) (inv!4006 (transformation!583 (rule!1098 (h!8577 tokens!465)))) e!116343))))

(declare-fun e!116345 () Bool)

(assert (=> b!189617 (= e!116348 e!116345)))

(declare-fun res!86688 () Bool)

(assert (=> b!189617 (=> res!86688 e!116345)))

(declare-datatypes ((tuple2!3246 0))(
  ( (tuple2!3247 (_1!1839 Token!910) (_2!1839 BalanceConc!1984)) )
))
(declare-datatypes ((Option!445 0))(
  ( (None!444) (Some!444 (v!13955 tuple2!3246)) )
))
(declare-fun isDefined!296 (Option!445) Bool)

(declare-fun maxPrefixZipperSequence!162 (LexerInterface!469 List!3189 BalanceConc!1984) Option!445)

(assert (=> b!189617 (= res!86688 (not (isDefined!296 (maxPrefixZipperSequence!162 thiss!17480 rules!1920 (seqFromList!544 (originalCharacters!626 (h!8577 tokens!465)))))))))

(declare-fun lt!64405 () Unit!2986)

(declare-fun forallContained!150 (List!3190 Int Token!910) Unit!2986)

(assert (=> b!189617 (= lt!64405 (forallContained!150 tokens!465 lambda!5776 (h!8577 tokens!465)))))

(assert (=> b!189617 (= lt!64388 (originalCharacters!626 (h!8577 tokens!465)))))

(declare-fun b!189618 () Bool)

(declare-fun res!86689 () Bool)

(assert (=> b!189618 (=> (not res!86689) (not e!116340))))

(assert (=> b!189618 (= res!86689 (isSeparator!583 (rule!1098 separatorToken!170)))))

(declare-fun b!189619 () Bool)

(declare-fun tp!88391 () Bool)

(assert (=> b!189619 (= e!116350 (and (inv!4005 (h!8577 tokens!465)) e!116330 tp!88391))))

(declare-fun e!116342 () Bool)

(declare-fun tp!88383 () Bool)

(declare-fun b!189620 () Bool)

(declare-fun e!116334 () Bool)

(assert (=> b!189620 (= e!116334 (and tp!88383 (inv!4002 (tag!761 (rule!1098 separatorToken!170))) (inv!4006 (transformation!583 (rule!1098 separatorToken!170))) e!116342))))

(declare-fun b!189621 () Bool)

(declare-fun res!86706 () Bool)

(assert (=> b!189621 (=> (not res!86706) (not e!116346))))

(declare-fun rulesInvariant!435 (LexerInterface!469 List!3189) Bool)

(assert (=> b!189621 (= res!86706 (rulesInvariant!435 thiss!17480 rules!1920))))

(assert (=> b!189622 (= e!116343 (and tp!88386 tp!88380))))

(declare-fun tp!88388 () Bool)

(declare-fun b!189623 () Bool)

(assert (=> b!189623 (= e!116336 (and tp!88388 (inv!4002 (tag!761 (h!8576 rules!1920))) (inv!4006 (transformation!583 (h!8576 rules!1920))) e!116356))))

(declare-fun b!189624 () Bool)

(assert (=> b!189624 (= e!116337 e!116331)))

(declare-fun res!86685 () Bool)

(assert (=> b!189624 (=> res!86685 e!116331)))

(assert (=> b!189624 (= res!86685 e!116338)))

(declare-fun res!86698 () Bool)

(assert (=> b!189624 (=> (not res!86698) (not e!116338))))

(declare-fun lt!64389 () Bool)

(assert (=> b!189624 (= res!86698 (not lt!64389))))

(assert (=> b!189624 (= lt!64389 (= lt!64414 lt!64398))))

(declare-fun b!189625 () Bool)

(declare-fun res!86700 () Bool)

(assert (=> b!189625 (=> (not res!86700) (not e!116346))))

(declare-fun isEmpty!1561 (List!3189) Bool)

(assert (=> b!189625 (= res!86700 (not (isEmpty!1561 rules!1920)))))

(declare-fun tp!88382 () Bool)

(declare-fun b!189626 () Bool)

(assert (=> b!189626 (= e!116339 (and (inv!21 (value!20931 separatorToken!170)) e!116334 tp!88382))))

(declare-fun b!189627 () Bool)

(assert (=> b!189627 (= e!116345 e!116349)))

(declare-fun res!86695 () Bool)

(assert (=> b!189627 (=> res!86695 e!116349)))

(assert (=> b!189627 (= res!86695 (not lt!64389))))

(assert (=> b!189627 e!116354))

(declare-fun res!86696 () Bool)

(assert (=> b!189627 (=> (not res!86696) (not e!116354))))

(declare-fun lt!64403 () tuple2!3244)

(assert (=> b!189627 (= res!86696 (= (_1!1838 lt!64403) (h!8577 tokens!465)))))

(declare-fun lt!64394 () Option!444)

(assert (=> b!189627 (= lt!64403 (get!915 lt!64394))))

(assert (=> b!189627 (isDefined!295 lt!64394)))

(assert (=> b!189627 (= lt!64394 (maxPrefix!199 thiss!17480 rules!1920 lt!64388))))

(declare-fun b!189628 () Bool)

(declare-fun res!86703 () Bool)

(assert (=> b!189628 (=> (not res!86703) (not e!116354))))

(declare-fun isEmpty!1562 (List!3188) Bool)

(assert (=> b!189628 (= res!86703 (isEmpty!1562 (_2!1838 lt!64403)))))

(assert (=> b!189629 (= e!116342 (and tp!88389 tp!88381))))

(assert (= (and start!20502 res!86687) b!189625))

(assert (= (and b!189625 res!86700) b!189621))

(assert (= (and b!189621 res!86706) b!189599))

(assert (= (and b!189599 res!86691) b!189602))

(assert (= (and b!189602 res!86702) b!189618))

(assert (= (and b!189618 res!86689) b!189610))

(assert (= (and b!189610 res!86693) b!189606))

(assert (= (and b!189606 res!86694) b!189613))

(assert (= (and b!189613 res!86697) b!189597))

(assert (= (and b!189597 res!86699) b!189612))

(assert (= (and b!189612 res!86686) b!189596))

(assert (= (and b!189596 (not res!86707)) b!189624))

(assert (= (and b!189624 res!86698) b!189607))

(assert (= (and b!189624 (not res!86685)) b!189604))

(assert (= (and b!189604 (not res!86705)) b!189603))

(assert (= (and b!189603 (not res!86701)) b!189600))

(assert (= (and b!189600 (not res!86692)) b!189617))

(assert (= (and b!189617 (not res!86688)) b!189627))

(assert (= (and b!189627 res!86696) b!189628))

(assert (= (and b!189628 res!86703) b!189595))

(assert (= (and b!189627 (not res!86695)) b!189615))

(assert (= (and b!189615 (not res!86704)) b!189609))

(assert (= (and b!189609 res!86690) b!189605))

(assert (= (and b!189615 c!36354) b!189598))

(assert (= (and b!189615 (not c!36354)) b!189608))

(assert (= b!189623 b!189614))

(assert (= b!189611 b!189623))

(assert (= (and start!20502 ((_ is Cons!3179) rules!1920)) b!189611))

(assert (= b!189620 b!189629))

(assert (= b!189626 b!189620))

(assert (= start!20502 b!189626))

(assert (= b!189616 b!189622))

(assert (= b!189601 b!189616))

(assert (= b!189619 b!189601))

(assert (= (and start!20502 ((_ is Cons!3180) tokens!465)) b!189619))

(declare-fun m!194755 () Bool)

(assert (=> b!189607 m!194755))

(declare-fun m!194757 () Bool)

(assert (=> b!189606 m!194757))

(declare-fun m!194759 () Bool)

(assert (=> b!189616 m!194759))

(declare-fun m!194761 () Bool)

(assert (=> b!189616 m!194761))

(declare-fun m!194763 () Bool)

(assert (=> b!189605 m!194763))

(declare-fun m!194765 () Bool)

(assert (=> b!189605 m!194765))

(declare-fun m!194767 () Bool)

(assert (=> b!189602 m!194767))

(declare-fun m!194769 () Bool)

(assert (=> b!189612 m!194769))

(assert (=> b!189612 m!194769))

(declare-fun m!194771 () Bool)

(assert (=> b!189612 m!194771))

(declare-fun m!194773 () Bool)

(assert (=> b!189615 m!194773))

(declare-fun m!194775 () Bool)

(assert (=> b!189615 m!194775))

(declare-fun m!194777 () Bool)

(assert (=> b!189615 m!194777))

(declare-fun m!194779 () Bool)

(assert (=> b!189615 m!194779))

(declare-fun m!194781 () Bool)

(assert (=> b!189615 m!194781))

(declare-fun m!194783 () Bool)

(assert (=> b!189615 m!194783))

(declare-fun m!194785 () Bool)

(assert (=> b!189615 m!194785))

(declare-fun m!194787 () Bool)

(assert (=> b!189615 m!194787))

(declare-fun m!194789 () Bool)

(assert (=> b!189615 m!194789))

(declare-fun m!194791 () Bool)

(assert (=> b!189615 m!194791))

(declare-fun m!194793 () Bool)

(assert (=> b!189615 m!194793))

(assert (=> b!189615 m!194781))

(declare-fun m!194795 () Bool)

(assert (=> b!189615 m!194795))

(declare-fun m!194797 () Bool)

(assert (=> b!189615 m!194797))

(declare-fun m!194799 () Bool)

(assert (=> b!189615 m!194799))

(declare-fun m!194801 () Bool)

(assert (=> b!189615 m!194801))

(declare-fun m!194803 () Bool)

(assert (=> b!189600 m!194803))

(assert (=> b!189600 m!194803))

(declare-fun m!194805 () Bool)

(assert (=> b!189600 m!194805))

(declare-fun m!194807 () Bool)

(assert (=> b!189600 m!194807))

(declare-fun m!194809 () Bool)

(assert (=> b!189610 m!194809))

(declare-fun m!194811 () Bool)

(assert (=> b!189595 m!194811))

(declare-fun m!194813 () Bool)

(assert (=> b!189601 m!194813))

(declare-fun m!194815 () Bool)

(assert (=> b!189596 m!194815))

(declare-fun m!194817 () Bool)

(assert (=> b!189596 m!194817))

(declare-fun m!194819 () Bool)

(assert (=> b!189596 m!194819))

(declare-fun m!194821 () Bool)

(assert (=> b!189596 m!194821))

(declare-fun m!194823 () Bool)

(assert (=> b!189596 m!194823))

(declare-fun m!194825 () Bool)

(assert (=> b!189596 m!194825))

(declare-fun m!194827 () Bool)

(assert (=> b!189596 m!194827))

(assert (=> b!189596 m!194817))

(declare-fun m!194829 () Bool)

(assert (=> b!189596 m!194829))

(declare-fun m!194831 () Bool)

(assert (=> b!189596 m!194831))

(assert (=> b!189596 m!194815))

(declare-fun m!194833 () Bool)

(assert (=> b!189596 m!194833))

(declare-fun m!194835 () Bool)

(assert (=> b!189596 m!194835))

(assert (=> b!189596 m!194821))

(assert (=> b!189596 m!194831))

(declare-fun m!194837 () Bool)

(assert (=> b!189596 m!194837))

(assert (=> b!189596 m!194829))

(declare-fun m!194839 () Bool)

(assert (=> b!189596 m!194839))

(declare-fun m!194841 () Bool)

(assert (=> b!189609 m!194841))

(assert (=> b!189609 m!194781))

(declare-fun m!194843 () Bool)

(assert (=> b!189620 m!194843))

(declare-fun m!194845 () Bool)

(assert (=> b!189620 m!194845))

(declare-fun m!194847 () Bool)

(assert (=> b!189623 m!194847))

(declare-fun m!194849 () Bool)

(assert (=> b!189623 m!194849))

(declare-fun m!194851 () Bool)

(assert (=> b!189625 m!194851))

(declare-fun m!194853 () Bool)

(assert (=> b!189603 m!194853))

(declare-fun m!194855 () Bool)

(assert (=> b!189617 m!194855))

(assert (=> b!189617 m!194855))

(declare-fun m!194857 () Bool)

(assert (=> b!189617 m!194857))

(assert (=> b!189617 m!194857))

(declare-fun m!194859 () Bool)

(assert (=> b!189617 m!194859))

(declare-fun m!194861 () Bool)

(assert (=> b!189617 m!194861))

(declare-fun m!194863 () Bool)

(assert (=> b!189599 m!194863))

(declare-fun m!194865 () Bool)

(assert (=> b!189599 m!194865))

(declare-fun m!194867 () Bool)

(assert (=> b!189619 m!194867))

(declare-fun m!194869 () Bool)

(assert (=> b!189626 m!194869))

(declare-fun m!194871 () Bool)

(assert (=> b!189604 m!194871))

(declare-fun m!194873 () Bool)

(assert (=> b!189604 m!194873))

(declare-fun m!194875 () Bool)

(assert (=> b!189604 m!194875))

(declare-fun m!194877 () Bool)

(assert (=> b!189604 m!194877))

(declare-fun m!194879 () Bool)

(assert (=> b!189604 m!194879))

(declare-fun m!194881 () Bool)

(assert (=> b!189597 m!194881))

(assert (=> b!189597 m!194881))

(declare-fun m!194883 () Bool)

(assert (=> b!189597 m!194883))

(declare-fun m!194885 () Bool)

(assert (=> b!189597 m!194885))

(declare-fun m!194887 () Bool)

(assert (=> start!20502 m!194887))

(declare-fun m!194889 () Bool)

(assert (=> b!189621 m!194889))

(declare-fun m!194891 () Bool)

(assert (=> b!189628 m!194891))

(declare-fun m!194893 () Bool)

(assert (=> b!189627 m!194893))

(declare-fun m!194895 () Bool)

(assert (=> b!189627 m!194895))

(declare-fun m!194897 () Bool)

(assert (=> b!189627 m!194897))

(check-sat (not b_next!7529) (not b!189623) (not b!189619) (not b_next!7521) (not b!189607) (not b!189628) (not b!189605) (not b!189595) b_and!13127 (not b!189638) (not b!189603) (not b!189610) (not b!189612) (not b_next!7527) (not b!189611) b_and!13129 b_and!13133 (not b!189604) (not b!189609) b_and!13135 (not b!189616) (not b!189615) b_and!13125 (not b!189601) (not b!189602) (not b!189596) (not b!189621) (not b!189627) (not b!189617) (not b!189626) (not b_next!7523) b_and!13131 (not b!189625) (not b!189600) (not start!20502) (not b_next!7531) (not b!189597) (not b!189606) (not b!189620) (not b!189599) (not b_next!7525))
(check-sat (not b_next!7529) (not b_next!7527) b_and!13135 b_and!13125 (not b_next!7521) b_and!13127 (not b_next!7531) (not b_next!7525) b_and!13129 b_and!13133 (not b_next!7523) b_and!13131)
