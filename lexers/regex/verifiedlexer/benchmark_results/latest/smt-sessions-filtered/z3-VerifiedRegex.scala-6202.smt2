; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299654 () Bool)

(assert start!299654)

(declare-fun b!3194394 () Bool)

(declare-fun b_free!84793 () Bool)

(declare-fun b_next!85497 () Bool)

(assert (=> b!3194394 (= b_free!84793 (not b_next!85497))))

(declare-fun tp!1010252 () Bool)

(declare-fun b_and!211935 () Bool)

(assert (=> b!3194394 (= tp!1010252 b_and!211935)))

(declare-fun b_free!84795 () Bool)

(declare-fun b_next!85499 () Bool)

(assert (=> b!3194394 (= b_free!84795 (not b_next!85499))))

(declare-fun tp!1010259 () Bool)

(declare-fun b_and!211937 () Bool)

(assert (=> b!3194394 (= tp!1010259 b_and!211937)))

(declare-fun b!3194385 () Bool)

(declare-fun b_free!84797 () Bool)

(declare-fun b_next!85501 () Bool)

(assert (=> b!3194385 (= b_free!84797 (not b_next!85501))))

(declare-fun tp!1010250 () Bool)

(declare-fun b_and!211939 () Bool)

(assert (=> b!3194385 (= tp!1010250 b_and!211939)))

(declare-fun b_free!84799 () Bool)

(declare-fun b_next!85503 () Bool)

(assert (=> b!3194385 (= b_free!84799 (not b_next!85503))))

(declare-fun tp!1010260 () Bool)

(declare-fun b_and!211941 () Bool)

(assert (=> b!3194385 (= tp!1010260 b_and!211941)))

(declare-fun b!3194382 () Bool)

(declare-fun b_free!84801 () Bool)

(declare-fun b_next!85505 () Bool)

(assert (=> b!3194382 (= b_free!84801 (not b_next!85505))))

(declare-fun tp!1010256 () Bool)

(declare-fun b_and!211943 () Bool)

(assert (=> b!3194382 (= tp!1010256 b_and!211943)))

(declare-fun b_free!84803 () Bool)

(declare-fun b_next!85507 () Bool)

(assert (=> b!3194382 (= b_free!84803 (not b_next!85507))))

(declare-fun tp!1010251 () Bool)

(declare-fun b_and!211945 () Bool)

(assert (=> b!3194382 (= tp!1010251 b_and!211945)))

(declare-fun b!3194380 () Bool)

(declare-fun e!1991349 () Bool)

(declare-fun e!1991346 () Bool)

(assert (=> b!3194380 (= e!1991349 e!1991346)))

(declare-fun res!1299569 () Bool)

(assert (=> b!3194380 (=> res!1299569 e!1991346)))

(declare-datatypes ((C!20072 0))(
  ( (C!20073 (val!12084 Int)) )
))
(declare-datatypes ((List!36132 0))(
  ( (Nil!36008) (Cons!36008 (h!41428 C!20072) (t!236563 List!36132)) )
))
(declare-fun lt!1076186 () List!36132)

(declare-fun lt!1076187 () List!36132)

(assert (=> b!3194380 (= res!1299569 (not (= lt!1076186 lt!1076187)))))

(declare-fun lt!1076181 () List!36132)

(assert (=> b!3194380 (= lt!1076181 lt!1076187)))

(declare-fun lt!1076192 () List!36132)

(declare-fun lt!1076178 () List!36132)

(declare-fun ++!8616 (List!36132 List!36132) List!36132)

(assert (=> b!3194380 (= lt!1076187 (++!8616 lt!1076192 lt!1076178))))

(declare-fun lt!1076180 () List!36132)

(declare-datatypes ((Unit!50407 0))(
  ( (Unit!50408) )
))
(declare-fun lt!1076179 () Unit!50407)

(declare-fun lt!1076189 () List!36132)

(declare-fun lemmaConcatAssociativity!1698 (List!36132 List!36132 List!36132) Unit!50407)

(assert (=> b!3194380 (= lt!1076179 (lemmaConcatAssociativity!1698 lt!1076192 lt!1076189 lt!1076180))))

(declare-fun b!3194381 () Bool)

(declare-fun e!1991352 () Bool)

(declare-fun e!1991338 () Bool)

(declare-fun tp!1010249 () Bool)

(assert (=> b!3194381 (= e!1991352 (and e!1991338 tp!1010249))))

(declare-fun e!1991347 () Bool)

(assert (=> b!3194382 (= e!1991347 (and tp!1010256 tp!1010251))))

(declare-fun e!1991339 () Bool)

(declare-datatypes ((Regex!9943 0))(
  ( (ElementMatch!9943 (c!536172 C!20072)) (Concat!15357 (regOne!20398 Regex!9943) (regTwo!20398 Regex!9943)) (EmptyExpr!9943) (Star!9943 (reg!10272 Regex!9943)) (EmptyLang!9943) (Union!9943 (regOne!20399 Regex!9943) (regTwo!20399 Regex!9943)) )
))
(declare-datatypes ((List!36133 0))(
  ( (Nil!36009) (Cons!36009 (h!41429 (_ BitVec 16)) (t!236564 List!36133)) )
))
(declare-datatypes ((TokenValue!5414 0))(
  ( (FloatLiteralValue!10828 (text!38343 List!36133)) (TokenValueExt!5413 (__x!23045 Int)) (Broken!27070 (value!168178 List!36133)) (Object!5537) (End!5414) (Def!5414) (Underscore!5414) (Match!5414) (Else!5414) (Error!5414) (Case!5414) (If!5414) (Extends!5414) (Abstract!5414) (Class!5414) (Val!5414) (DelimiterValue!10828 (del!5474 List!36133)) (KeywordValue!5420 (value!168179 List!36133)) (CommentValue!10828 (value!168180 List!36133)) (WhitespaceValue!10828 (value!168181 List!36133)) (IndentationValue!5414 (value!168182 List!36133)) (String!40403) (Int32!5414) (Broken!27071 (value!168183 List!36133)) (Boolean!5415) (Unit!50409) (OperatorValue!5417 (op!5474 List!36133)) (IdentifierValue!10828 (value!168184 List!36133)) (IdentifierValue!10829 (value!168185 List!36133)) (WhitespaceValue!10829 (value!168186 List!36133)) (True!10828) (False!10828) (Broken!27072 (value!168187 List!36133)) (Broken!27073 (value!168188 List!36133)) (True!10829) (RightBrace!5414) (RightBracket!5414) (Colon!5414) (Null!5414) (Comma!5414) (LeftBracket!5414) (False!10829) (LeftBrace!5414) (ImaginaryLiteralValue!5414 (text!38344 List!36133)) (StringLiteralValue!16242 (value!168189 List!36133)) (EOFValue!5414 (value!168190 List!36133)) (IdentValue!5414 (value!168191 List!36133)) (DelimiterValue!10829 (value!168192 List!36133)) (DedentValue!5414 (value!168193 List!36133)) (NewLineValue!5414 (value!168194 List!36133)) (IntegerValue!16242 (value!168195 (_ BitVec 32)) (text!38345 List!36133)) (IntegerValue!16243 (value!168196 Int) (text!38346 List!36133)) (Times!5414) (Or!5414) (Equal!5414) (Minus!5414) (Broken!27074 (value!168197 List!36133)) (And!5414) (Div!5414) (LessEqual!5414) (Mod!5414) (Concat!15358) (Not!5414) (Plus!5414) (SpaceValue!5414 (value!168198 List!36133)) (IntegerValue!16244 (value!168199 Int) (text!38347 List!36133)) (StringLiteralValue!16243 (text!38348 List!36133)) (FloatLiteralValue!10829 (text!38349 List!36133)) (BytesLiteralValue!5414 (value!168200 List!36133)) (CommentValue!10829 (value!168201 List!36133)) (StringLiteralValue!16244 (value!168202 List!36133)) (ErrorTokenValue!5414 (msg!5475 List!36133)) )
))
(declare-datatypes ((IArray!21491 0))(
  ( (IArray!21492 (innerList!10803 List!36132)) )
))
(declare-datatypes ((Conc!10743 0))(
  ( (Node!10743 (left!27985 Conc!10743) (right!28315 Conc!10743) (csize!21716 Int) (cheight!10954 Int)) (Leaf!16946 (xs!13861 IArray!21491) (csize!21717 Int)) (Empty!10743) )
))
(declare-datatypes ((BalanceConc!21100 0))(
  ( (BalanceConc!21101 (c!536173 Conc!10743)) )
))
(declare-datatypes ((String!40404 0))(
  ( (String!40405 (value!168203 String)) )
))
(declare-datatypes ((TokenValueInjection!10256 0))(
  ( (TokenValueInjection!10257 (toValue!7252 Int) (toChars!7111 Int)) )
))
(declare-datatypes ((Rule!10168 0))(
  ( (Rule!10169 (regex!5184 Regex!9943) (tag!5702 String!40404) (isSeparator!5184 Bool) (transformation!5184 TokenValueInjection!10256)) )
))
(declare-datatypes ((Token!9734 0))(
  ( (Token!9735 (value!168204 TokenValue!5414) (rule!7616 Rule!10168) (size!27119 Int) (originalCharacters!5898 List!36132)) )
))
(declare-fun separatorToken!241 () Token!9734)

(declare-fun e!1991345 () Bool)

(declare-fun b!3194383 () Bool)

(declare-fun tp!1010257 () Bool)

(declare-fun inv!48852 (String!40404) Bool)

(declare-fun inv!48855 (TokenValueInjection!10256) Bool)

(assert (=> b!3194383 (= e!1991345 (and tp!1010257 (inv!48852 (tag!5702 (rule!7616 separatorToken!241))) (inv!48855 (transformation!5184 (rule!7616 separatorToken!241))) e!1991339))))

(declare-fun b!3194384 () Bool)

(declare-fun res!1299561 () Bool)

(declare-fun e!1991356 () Bool)

(assert (=> b!3194384 (=> res!1299561 e!1991356)))

(declare-datatypes ((List!36134 0))(
  ( (Nil!36010) (Cons!36010 (h!41430 Rule!10168) (t!236565 List!36134)) )
))
(declare-fun rules!2135 () List!36134)

(declare-datatypes ((LexerInterface!4773 0))(
  ( (LexerInterfaceExt!4770 (__x!23046 Int)) (Lexer!4771) )
))
(declare-fun thiss!18206 () LexerInterface!4773)

(declare-datatypes ((List!36135 0))(
  ( (Nil!36011) (Cons!36011 (h!41431 Token!9734) (t!236566 List!36135)) )
))
(declare-datatypes ((IArray!21493 0))(
  ( (IArray!21494 (innerList!10804 List!36135)) )
))
(declare-datatypes ((Conc!10744 0))(
  ( (Node!10744 (left!27986 Conc!10744) (right!28316 Conc!10744) (csize!21718 Int) (cheight!10955 Int)) (Leaf!16947 (xs!13862 IArray!21493) (csize!21719 Int)) (Empty!10744) )
))
(declare-datatypes ((BalanceConc!21102 0))(
  ( (BalanceConc!21103 (c!536174 Conc!10744)) )
))
(declare-fun isEmpty!20098 (BalanceConc!21102) Bool)

(declare-datatypes ((tuple2!35366 0))(
  ( (tuple2!35367 (_1!20817 BalanceConc!21102) (_2!20817 BalanceConc!21100)) )
))
(declare-fun lex!2103 (LexerInterface!4773 List!36134 BalanceConc!21100) tuple2!35366)

(declare-fun seqFromList!3439 (List!36132) BalanceConc!21100)

(assert (=> b!3194384 (= res!1299561 (isEmpty!20098 (_1!20817 (lex!2103 thiss!18206 rules!2135 (seqFromList!3439 lt!1076192)))))))

(declare-fun e!1991358 () Bool)

(assert (=> b!3194385 (= e!1991358 (and tp!1010250 tp!1010260))))

(declare-fun b!3194386 () Bool)

(declare-fun res!1299568 () Bool)

(declare-fun e!1991354 () Bool)

(assert (=> b!3194386 (=> (not res!1299568) (not e!1991354))))

(declare-fun tokens!494 () List!36135)

(declare-fun lambda!116947 () Int)

(declare-fun forall!7324 (List!36135 Int) Bool)

(assert (=> b!3194386 (= res!1299568 (forall!7324 tokens!494 lambda!116947))))

(declare-fun b!3194387 () Bool)

(declare-fun res!1299572 () Bool)

(assert (=> b!3194387 (=> (not res!1299572) (not e!1991354))))

(declare-fun sepAndNonSepRulesDisjointChars!1378 (List!36134 List!36134) Bool)

(assert (=> b!3194387 (= res!1299572 (sepAndNonSepRulesDisjointChars!1378 rules!2135 rules!2135))))

(declare-fun b!3194388 () Bool)

(declare-fun res!1299564 () Bool)

(assert (=> b!3194388 (=> (not res!1299564) (not e!1991354))))

(assert (=> b!3194388 (= res!1299564 (isSeparator!5184 (rule!7616 separatorToken!241)))))

(declare-fun b!3194389 () Bool)

(declare-fun tp!1010258 () Bool)

(assert (=> b!3194389 (= e!1991338 (and tp!1010258 (inv!48852 (tag!5702 (h!41430 rules!2135))) (inv!48855 (transformation!5184 (h!41430 rules!2135))) e!1991347))))

(declare-fun b!3194390 () Bool)

(declare-fun e!1991344 () Bool)

(assert (=> b!3194390 (= e!1991356 e!1991344)))

(declare-fun res!1299570 () Bool)

(assert (=> b!3194390 (=> res!1299570 e!1991344)))

(assert (=> b!3194390 (= res!1299570 (or (isSeparator!5184 (rule!7616 (h!41431 tokens!494))) (isSeparator!5184 (rule!7616 (h!41431 (t!236566 tokens!494))))))))

(declare-fun lt!1076188 () Unit!50407)

(declare-fun forallContained!1155 (List!36135 Int Token!9734) Unit!50407)

(assert (=> b!3194390 (= lt!1076188 (forallContained!1155 tokens!494 lambda!116947 (h!41431 (t!236566 tokens!494))))))

(declare-fun lt!1076185 () Unit!50407)

(assert (=> b!3194390 (= lt!1076185 (forallContained!1155 tokens!494 lambda!116947 (h!41431 tokens!494)))))

(declare-fun b!3194391 () Bool)

(declare-fun e!1991357 () Bool)

(assert (=> b!3194391 (= e!1991357 e!1991349)))

(declare-fun res!1299565 () Bool)

(assert (=> b!3194391 (=> res!1299565 e!1991349)))

(assert (=> b!3194391 (= res!1299565 (not (= lt!1076186 lt!1076181)))))

(assert (=> b!3194391 (= lt!1076181 (++!8616 (++!8616 lt!1076192 lt!1076189) lt!1076180))))

(declare-fun b!3194392 () Bool)

(declare-fun res!1299566 () Bool)

(assert (=> b!3194392 (=> (not res!1299566) (not e!1991354))))

(declare-fun rulesProduceIndividualToken!2265 (LexerInterface!4773 List!36134 Token!9734) Bool)

(assert (=> b!3194392 (= res!1299566 (rulesProduceIndividualToken!2265 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3194393 () Bool)

(assert (=> b!3194393 (= e!1991346 true)))

(declare-datatypes ((tuple2!35368 0))(
  ( (tuple2!35369 (_1!20818 Token!9734) (_2!20818 List!36132)) )
))
(declare-datatypes ((Option!7060 0))(
  ( (None!7059) (Some!7059 (v!35571 tuple2!35368)) )
))
(declare-fun lt!1076183 () Option!7060)

(declare-fun maxPrefix!2431 (LexerInterface!4773 List!36134 List!36132) Option!7060)

(assert (=> b!3194393 (= lt!1076183 (maxPrefix!2431 thiss!18206 rules!2135 lt!1076192))))

(declare-fun lt!1076177 () Unit!50407)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!812 (LexerInterface!4773 List!36134 List!36135 Token!9734) Unit!50407)

(assert (=> b!3194393 (= lt!1076177 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!812 thiss!18206 rules!2135 tokens!494 (h!41431 tokens!494)))))

(assert (=> b!3194394 (= e!1991339 (and tp!1010252 tp!1010259))))

(declare-fun b!3194395 () Bool)

(assert (=> b!3194395 (= e!1991344 e!1991357)))

(declare-fun res!1299558 () Bool)

(assert (=> b!3194395 (=> res!1299558 e!1991357)))

(declare-fun list!12793 (BalanceConc!21100) List!36132)

(declare-fun charsOf!3200 (Token!9734) BalanceConc!21100)

(declare-fun printWithSeparatorTokenList!118 (LexerInterface!4773 List!36135 Token!9734) List!36132)

(assert (=> b!3194395 (= res!1299558 (not (= lt!1076180 (++!8616 (++!8616 (list!12793 (charsOf!3200 (h!41431 (t!236566 tokens!494)))) lt!1076189) (printWithSeparatorTokenList!118 thiss!18206 (t!236566 (t!236566 tokens!494)) separatorToken!241)))))))

(assert (=> b!3194395 (= lt!1076178 (++!8616 lt!1076189 lt!1076180))))

(assert (=> b!3194395 (= lt!1076189 (list!12793 (charsOf!3200 separatorToken!241)))))

(assert (=> b!3194395 (= lt!1076180 (printWithSeparatorTokenList!118 thiss!18206 (t!236566 tokens!494) separatorToken!241))))

(assert (=> b!3194395 (= lt!1076186 (printWithSeparatorTokenList!118 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3194396 () Bool)

(declare-fun tp!1010254 () Bool)

(declare-fun e!1991348 () Bool)

(declare-fun inv!21 (TokenValue!5414) Bool)

(assert (=> b!3194396 (= e!1991348 (and (inv!21 (value!168204 separatorToken!241)) e!1991345 tp!1010254))))

(declare-fun b!3194397 () Bool)

(declare-fun tp!1010255 () Bool)

(declare-fun e!1991351 () Bool)

(declare-fun e!1991341 () Bool)

(assert (=> b!3194397 (= e!1991351 (and (inv!21 (value!168204 (h!41431 tokens!494))) e!1991341 tp!1010255))))

(declare-fun b!3194398 () Bool)

(declare-fun res!1299560 () Bool)

(assert (=> b!3194398 (=> (not res!1299560) (not e!1991354))))

(declare-fun rulesProduceEachTokenIndividually!1224 (LexerInterface!4773 List!36134 BalanceConc!21102) Bool)

(declare-fun seqFromList!3440 (List!36135) BalanceConc!21102)

(assert (=> b!3194398 (= res!1299560 (rulesProduceEachTokenIndividually!1224 thiss!18206 rules!2135 (seqFromList!3440 tokens!494)))))

(declare-fun b!3194399 () Bool)

(declare-fun res!1299559 () Bool)

(assert (=> b!3194399 (=> res!1299559 e!1991356)))

(assert (=> b!3194399 (= res!1299559 (not (rulesProduceIndividualToken!2265 thiss!18206 rules!2135 (h!41431 tokens!494))))))

(declare-fun b!3194400 () Bool)

(declare-fun res!1299573 () Bool)

(assert (=> b!3194400 (=> (not res!1299573) (not e!1991354))))

(declare-fun isEmpty!20099 (List!36134) Bool)

(assert (=> b!3194400 (= res!1299573 (not (isEmpty!20099 rules!2135)))))

(declare-fun b!3194401 () Bool)

(declare-fun e!1991343 () Bool)

(assert (=> b!3194401 (= e!1991343 e!1991356)))

(declare-fun res!1299562 () Bool)

(assert (=> b!3194401 (=> res!1299562 e!1991356)))

(declare-fun lt!1076184 () List!36132)

(declare-fun lt!1076191 () List!36132)

(assert (=> b!3194401 (= res!1299562 (or (not (= lt!1076191 lt!1076192)) (not (= lt!1076184 lt!1076192))))))

(assert (=> b!3194401 (= lt!1076192 (list!12793 (charsOf!3200 (h!41431 tokens!494))))))

(declare-fun b!3194402 () Bool)

(assert (=> b!3194402 (= e!1991354 (not e!1991343))))

(declare-fun res!1299567 () Bool)

(assert (=> b!3194402 (=> res!1299567 e!1991343)))

(assert (=> b!3194402 (= res!1299567 (not (= lt!1076184 lt!1076191)))))

(declare-fun printList!1323 (LexerInterface!4773 List!36135) List!36132)

(assert (=> b!3194402 (= lt!1076191 (printList!1323 thiss!18206 (Cons!36011 (h!41431 tokens!494) Nil!36011)))))

(declare-fun lt!1076190 () BalanceConc!21100)

(assert (=> b!3194402 (= lt!1076184 (list!12793 lt!1076190))))

(declare-fun lt!1076182 () BalanceConc!21102)

(declare-fun printTailRec!1270 (LexerInterface!4773 BalanceConc!21102 Int BalanceConc!21100) BalanceConc!21100)

(assert (=> b!3194402 (= lt!1076190 (printTailRec!1270 thiss!18206 lt!1076182 0 (BalanceConc!21101 Empty!10743)))))

(declare-fun print!1838 (LexerInterface!4773 BalanceConc!21102) BalanceConc!21100)

(assert (=> b!3194402 (= lt!1076190 (print!1838 thiss!18206 lt!1076182))))

(declare-fun singletonSeq!2280 (Token!9734) BalanceConc!21102)

(assert (=> b!3194402 (= lt!1076182 (singletonSeq!2280 (h!41431 tokens!494)))))

(declare-fun tp!1010248 () Bool)

(declare-fun b!3194403 () Bool)

(assert (=> b!3194403 (= e!1991341 (and tp!1010248 (inv!48852 (tag!5702 (rule!7616 (h!41431 tokens!494)))) (inv!48855 (transformation!5184 (rule!7616 (h!41431 tokens!494)))) e!1991358))))

(declare-fun b!3194404 () Bool)

(declare-fun res!1299574 () Bool)

(assert (=> b!3194404 (=> (not res!1299574) (not e!1991354))))

(get-info :version)

(assert (=> b!3194404 (= res!1299574 (and (not ((_ is Nil!36011) tokens!494)) (not ((_ is Nil!36011) (t!236566 tokens!494)))))))

(declare-fun b!3194405 () Bool)

(declare-fun res!1299563 () Bool)

(assert (=> b!3194405 (=> (not res!1299563) (not e!1991354))))

(declare-fun rulesInvariant!4170 (LexerInterface!4773 List!36134) Bool)

(assert (=> b!3194405 (= res!1299563 (rulesInvariant!4170 thiss!18206 rules!2135))))

(declare-fun e!1991340 () Bool)

(declare-fun b!3194406 () Bool)

(declare-fun tp!1010253 () Bool)

(declare-fun inv!48856 (Token!9734) Bool)

(assert (=> b!3194406 (= e!1991340 (and (inv!48856 (h!41431 tokens!494)) e!1991351 tp!1010253))))

(declare-fun res!1299571 () Bool)

(assert (=> start!299654 (=> (not res!1299571) (not e!1991354))))

(assert (=> start!299654 (= res!1299571 ((_ is Lexer!4771) thiss!18206))))

(assert (=> start!299654 e!1991354))

(assert (=> start!299654 true))

(assert (=> start!299654 e!1991352))

(assert (=> start!299654 e!1991340))

(assert (=> start!299654 (and (inv!48856 separatorToken!241) e!1991348)))

(assert (= (and start!299654 res!1299571) b!3194400))

(assert (= (and b!3194400 res!1299573) b!3194405))

(assert (= (and b!3194405 res!1299563) b!3194398))

(assert (= (and b!3194398 res!1299560) b!3194392))

(assert (= (and b!3194392 res!1299566) b!3194388))

(assert (= (and b!3194388 res!1299564) b!3194386))

(assert (= (and b!3194386 res!1299568) b!3194387))

(assert (= (and b!3194387 res!1299572) b!3194404))

(assert (= (and b!3194404 res!1299574) b!3194402))

(assert (= (and b!3194402 (not res!1299567)) b!3194401))

(assert (= (and b!3194401 (not res!1299562)) b!3194399))

(assert (= (and b!3194399 (not res!1299559)) b!3194384))

(assert (= (and b!3194384 (not res!1299561)) b!3194390))

(assert (= (and b!3194390 (not res!1299570)) b!3194395))

(assert (= (and b!3194395 (not res!1299558)) b!3194391))

(assert (= (and b!3194391 (not res!1299565)) b!3194380))

(assert (= (and b!3194380 (not res!1299569)) b!3194393))

(assert (= b!3194389 b!3194382))

(assert (= b!3194381 b!3194389))

(assert (= (and start!299654 ((_ is Cons!36010) rules!2135)) b!3194381))

(assert (= b!3194403 b!3194385))

(assert (= b!3194397 b!3194403))

(assert (= b!3194406 b!3194397))

(assert (= (and start!299654 ((_ is Cons!36011) tokens!494)) b!3194406))

(assert (= b!3194383 b!3194394))

(assert (= b!3194396 b!3194383))

(assert (= start!299654 b!3194396))

(declare-fun m!3454131 () Bool)

(assert (=> b!3194383 m!3454131))

(declare-fun m!3454133 () Bool)

(assert (=> b!3194383 m!3454133))

(declare-fun m!3454135 () Bool)

(assert (=> start!299654 m!3454135))

(declare-fun m!3454137 () Bool)

(assert (=> b!3194405 m!3454137))

(declare-fun m!3454139 () Bool)

(assert (=> b!3194397 m!3454139))

(declare-fun m!3454141 () Bool)

(assert (=> b!3194398 m!3454141))

(assert (=> b!3194398 m!3454141))

(declare-fun m!3454143 () Bool)

(assert (=> b!3194398 m!3454143))

(declare-fun m!3454145 () Bool)

(assert (=> b!3194389 m!3454145))

(declare-fun m!3454147 () Bool)

(assert (=> b!3194389 m!3454147))

(declare-fun m!3454149 () Bool)

(assert (=> b!3194395 m!3454149))

(declare-fun m!3454151 () Bool)

(assert (=> b!3194395 m!3454151))

(declare-fun m!3454153 () Bool)

(assert (=> b!3194395 m!3454153))

(declare-fun m!3454155 () Bool)

(assert (=> b!3194395 m!3454155))

(declare-fun m!3454157 () Bool)

(assert (=> b!3194395 m!3454157))

(declare-fun m!3454159 () Bool)

(assert (=> b!3194395 m!3454159))

(declare-fun m!3454161 () Bool)

(assert (=> b!3194395 m!3454161))

(declare-fun m!3454163 () Bool)

(assert (=> b!3194395 m!3454163))

(assert (=> b!3194395 m!3454151))

(declare-fun m!3454165 () Bool)

(assert (=> b!3194395 m!3454165))

(assert (=> b!3194395 m!3454159))

(assert (=> b!3194395 m!3454153))

(declare-fun m!3454167 () Bool)

(assert (=> b!3194395 m!3454167))

(assert (=> b!3194395 m!3454165))

(assert (=> b!3194395 m!3454157))

(declare-fun m!3454169 () Bool)

(assert (=> b!3194403 m!3454169))

(declare-fun m!3454171 () Bool)

(assert (=> b!3194403 m!3454171))

(declare-fun m!3454173 () Bool)

(assert (=> b!3194392 m!3454173))

(declare-fun m!3454175 () Bool)

(assert (=> b!3194393 m!3454175))

(declare-fun m!3454177 () Bool)

(assert (=> b!3194393 m!3454177))

(declare-fun m!3454179 () Bool)

(assert (=> b!3194399 m!3454179))

(declare-fun m!3454181 () Bool)

(assert (=> b!3194386 m!3454181))

(declare-fun m!3454183 () Bool)

(assert (=> b!3194390 m!3454183))

(declare-fun m!3454185 () Bool)

(assert (=> b!3194390 m!3454185))

(declare-fun m!3454187 () Bool)

(assert (=> b!3194387 m!3454187))

(declare-fun m!3454189 () Bool)

(assert (=> b!3194400 m!3454189))

(declare-fun m!3454191 () Bool)

(assert (=> b!3194406 m!3454191))

(declare-fun m!3454193 () Bool)

(assert (=> b!3194391 m!3454193))

(assert (=> b!3194391 m!3454193))

(declare-fun m!3454195 () Bool)

(assert (=> b!3194391 m!3454195))

(declare-fun m!3454197 () Bool)

(assert (=> b!3194402 m!3454197))

(declare-fun m!3454199 () Bool)

(assert (=> b!3194402 m!3454199))

(declare-fun m!3454201 () Bool)

(assert (=> b!3194402 m!3454201))

(declare-fun m!3454203 () Bool)

(assert (=> b!3194402 m!3454203))

(declare-fun m!3454205 () Bool)

(assert (=> b!3194402 m!3454205))

(declare-fun m!3454207 () Bool)

(assert (=> b!3194384 m!3454207))

(assert (=> b!3194384 m!3454207))

(declare-fun m!3454209 () Bool)

(assert (=> b!3194384 m!3454209))

(declare-fun m!3454211 () Bool)

(assert (=> b!3194384 m!3454211))

(declare-fun m!3454213 () Bool)

(assert (=> b!3194380 m!3454213))

(declare-fun m!3454215 () Bool)

(assert (=> b!3194380 m!3454215))

(declare-fun m!3454217 () Bool)

(assert (=> b!3194396 m!3454217))

(declare-fun m!3454219 () Bool)

(assert (=> b!3194401 m!3454219))

(assert (=> b!3194401 m!3454219))

(declare-fun m!3454221 () Bool)

(assert (=> b!3194401 m!3454221))

(check-sat b_and!211945 (not b_next!85499) b_and!211941 (not start!299654) (not b!3194403) (not b!3194406) b_and!211937 (not b!3194387) (not b!3194396) (not b_next!85501) (not b!3194391) (not b!3194381) b_and!211935 (not b!3194392) (not b!3194397) (not b!3194390) (not b!3194401) (not b!3194395) (not b_next!85507) (not b!3194400) b_and!211939 (not b!3194398) (not b!3194384) b_and!211943 (not b!3194380) (not b!3194405) (not b_next!85497) (not b!3194402) (not b!3194399) (not b_next!85503) (not b!3194389) (not b_next!85505) (not b!3194383) (not b!3194386) (not b!3194393))
(check-sat b_and!211945 b_and!211935 (not b_next!85499) (not b_next!85507) b_and!211941 b_and!211939 b_and!211943 b_and!211937 (not b_next!85505) (not b_next!85501) (not b_next!85497) (not b_next!85503))
