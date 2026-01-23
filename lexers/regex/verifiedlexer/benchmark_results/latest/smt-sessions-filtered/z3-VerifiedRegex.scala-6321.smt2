; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!320878 () Bool)

(assert start!320878)

(declare-fun b!3452431 () Bool)

(declare-fun b_free!89601 () Bool)

(declare-fun b_next!90305 () Bool)

(assert (=> b!3452431 (= b_free!89601 (not b_next!90305))))

(declare-fun tp!1076652 () Bool)

(declare-fun b_and!242539 () Bool)

(assert (=> b!3452431 (= tp!1076652 b_and!242539)))

(declare-fun b_free!89603 () Bool)

(declare-fun b_next!90307 () Bool)

(assert (=> b!3452431 (= b_free!89603 (not b_next!90307))))

(declare-fun tp!1076661 () Bool)

(declare-fun b_and!242541 () Bool)

(assert (=> b!3452431 (= tp!1076661 b_and!242541)))

(declare-fun b!3452418 () Bool)

(declare-fun b_free!89605 () Bool)

(declare-fun b_next!90309 () Bool)

(assert (=> b!3452418 (= b_free!89605 (not b_next!90309))))

(declare-fun tp!1076658 () Bool)

(declare-fun b_and!242543 () Bool)

(assert (=> b!3452418 (= tp!1076658 b_and!242543)))

(declare-fun b_free!89607 () Bool)

(declare-fun b_next!90311 () Bool)

(assert (=> b!3452418 (= b_free!89607 (not b_next!90311))))

(declare-fun tp!1076664 () Bool)

(declare-fun b_and!242545 () Bool)

(assert (=> b!3452418 (= tp!1076664 b_and!242545)))

(declare-fun b!3452414 () Bool)

(declare-fun b_free!89609 () Bool)

(declare-fun b_next!90313 () Bool)

(assert (=> b!3452414 (= b_free!89609 (not b_next!90313))))

(declare-fun tp!1076662 () Bool)

(declare-fun b_and!242547 () Bool)

(assert (=> b!3452414 (= tp!1076662 b_and!242547)))

(declare-fun b_free!89611 () Bool)

(declare-fun b_next!90315 () Bool)

(assert (=> b!3452414 (= b_free!89611 (not b_next!90315))))

(declare-fun tp!1076659 () Bool)

(declare-fun b_and!242549 () Bool)

(assert (=> b!3452414 (= tp!1076659 b_and!242549)))

(declare-fun b!3452407 () Bool)

(declare-fun e!2138515 () Bool)

(declare-fun e!2138510 () Bool)

(assert (=> b!3452407 (= e!2138515 e!2138510)))

(declare-fun res!1392191 () Bool)

(assert (=> b!3452407 (=> (not res!1392191) (not e!2138510))))

(declare-datatypes ((C!20548 0))(
  ( (C!20549 (val!12322 Int)) )
))
(declare-datatypes ((Regex!10181 0))(
  ( (ElementMatch!10181 (c!591032 C!20548)) (Concat!15833 (regOne!20874 Regex!10181) (regTwo!20874 Regex!10181)) (EmptyExpr!10181) (Star!10181 (reg!10510 Regex!10181)) (EmptyLang!10181) (Union!10181 (regOne!20875 Regex!10181) (regTwo!20875 Regex!10181)) )
))
(declare-datatypes ((List!37212 0))(
  ( (Nil!37088) (Cons!37088 (h!42508 (_ BitVec 16)) (t!271993 List!37212)) )
))
(declare-datatypes ((TokenValue!5652 0))(
  ( (FloatLiteralValue!11304 (text!40009 List!37212)) (TokenValueExt!5651 (__x!23521 Int)) (Broken!28260 (value!174961 List!37212)) (Object!5775) (End!5652) (Def!5652) (Underscore!5652) (Match!5652) (Else!5652) (Error!5652) (Case!5652) (If!5652) (Extends!5652) (Abstract!5652) (Class!5652) (Val!5652) (DelimiterValue!11304 (del!5712 List!37212)) (KeywordValue!5658 (value!174962 List!37212)) (CommentValue!11304 (value!174963 List!37212)) (WhitespaceValue!11304 (value!174964 List!37212)) (IndentationValue!5652 (value!174965 List!37212)) (String!41593) (Int32!5652) (Broken!28261 (value!174966 List!37212)) (Boolean!5653) (Unit!52413) (OperatorValue!5655 (op!5712 List!37212)) (IdentifierValue!11304 (value!174967 List!37212)) (IdentifierValue!11305 (value!174968 List!37212)) (WhitespaceValue!11305 (value!174969 List!37212)) (True!11304) (False!11304) (Broken!28262 (value!174970 List!37212)) (Broken!28263 (value!174971 List!37212)) (True!11305) (RightBrace!5652) (RightBracket!5652) (Colon!5652) (Null!5652) (Comma!5652) (LeftBracket!5652) (False!11305) (LeftBrace!5652) (ImaginaryLiteralValue!5652 (text!40010 List!37212)) (StringLiteralValue!16956 (value!174972 List!37212)) (EOFValue!5652 (value!174973 List!37212)) (IdentValue!5652 (value!174974 List!37212)) (DelimiterValue!11305 (value!174975 List!37212)) (DedentValue!5652 (value!174976 List!37212)) (NewLineValue!5652 (value!174977 List!37212)) (IntegerValue!16956 (value!174978 (_ BitVec 32)) (text!40011 List!37212)) (IntegerValue!16957 (value!174979 Int) (text!40012 List!37212)) (Times!5652) (Or!5652) (Equal!5652) (Minus!5652) (Broken!28264 (value!174980 List!37212)) (And!5652) (Div!5652) (LessEqual!5652) (Mod!5652) (Concat!15834) (Not!5652) (Plus!5652) (SpaceValue!5652 (value!174981 List!37212)) (IntegerValue!16958 (value!174982 Int) (text!40013 List!37212)) (StringLiteralValue!16957 (text!40014 List!37212)) (FloatLiteralValue!11305 (text!40015 List!37212)) (BytesLiteralValue!5652 (value!174983 List!37212)) (CommentValue!11305 (value!174984 List!37212)) (StringLiteralValue!16958 (value!174985 List!37212)) (ErrorTokenValue!5652 (msg!5713 List!37212)) )
))
(declare-datatypes ((List!37213 0))(
  ( (Nil!37089) (Cons!37089 (h!42509 C!20548) (t!271994 List!37213)) )
))
(declare-datatypes ((IArray!22443 0))(
  ( (IArray!22444 (innerList!11279 List!37213)) )
))
(declare-datatypes ((Conc!11219 0))(
  ( (Node!11219 (left!28924 Conc!11219) (right!29254 Conc!11219) (csize!22668 Int) (cheight!11430 Int)) (Leaf!17541 (xs!14393 IArray!22443) (csize!22669 Int)) (Empty!11219) )
))
(declare-datatypes ((BalanceConc!22052 0))(
  ( (BalanceConc!22053 (c!591033 Conc!11219)) )
))
(declare-datatypes ((String!41594 0))(
  ( (String!41595 (value!174986 String)) )
))
(declare-datatypes ((TokenValueInjection!10732 0))(
  ( (TokenValueInjection!10733 (toValue!7646 Int) (toChars!7505 Int)) )
))
(declare-datatypes ((Rule!10644 0))(
  ( (Rule!10645 (regex!5422 Regex!10181) (tag!6022 String!41594) (isSeparator!5422 Bool) (transformation!5422 TokenValueInjection!10732)) )
))
(declare-fun lt!1172067 () Rule!10644)

(declare-fun lt!1172084 () List!37213)

(declare-fun matchR!4765 (Regex!10181 List!37213) Bool)

(assert (=> b!3452407 (= res!1392191 (matchR!4765 (regex!5422 lt!1172067) lt!1172084))))

(declare-datatypes ((Option!7491 0))(
  ( (None!7490) (Some!7490 (v!36774 Rule!10644)) )
))
(declare-fun lt!1172073 () Option!7491)

(declare-fun get!11860 (Option!7491) Rule!10644)

(assert (=> b!3452407 (= lt!1172067 (get!11860 lt!1172073))))

(declare-fun b!3452408 () Bool)

(declare-fun e!2138517 () Bool)

(assert (=> b!3452408 (= e!2138517 false)))

(declare-datatypes ((Token!10210 0))(
  ( (Token!10211 (value!174987 TokenValue!5652) (rule!8004 Rule!10644) (size!28114 Int) (originalCharacters!6136 List!37213)) )
))
(declare-fun separatorToken!241 () Token!10210)

(assert (=> b!3452408 (not (matchR!4765 (regex!5422 (rule!8004 separatorToken!241)) lt!1172084))))

(declare-datatypes ((Unit!52414 0))(
  ( (Unit!52415) )
))
(declare-fun lt!1172075 () Unit!52414)

(declare-fun lt!1172086 () C!20548)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!480 (Regex!10181 List!37213 C!20548) Unit!52414)

(assert (=> b!3452408 (= lt!1172075 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!480 (regex!5422 (rule!8004 separatorToken!241)) lt!1172084 lt!1172086))))

(declare-fun b!3452409 () Bool)

(declare-fun res!1392188 () Bool)

(declare-fun e!2138519 () Bool)

(assert (=> b!3452409 (=> (not res!1392188) (not e!2138519))))

(assert (=> b!3452409 (= res!1392188 (isSeparator!5422 (rule!8004 separatorToken!241)))))

(declare-fun res!1392204 () Bool)

(assert (=> start!320878 (=> (not res!1392204) (not e!2138519))))

(declare-datatypes ((LexerInterface!5011 0))(
  ( (LexerInterfaceExt!5008 (__x!23522 Int)) (Lexer!5009) )
))
(declare-fun thiss!18206 () LexerInterface!5011)

(get-info :version)

(assert (=> start!320878 (= res!1392204 ((_ is Lexer!5009) thiss!18206))))

(assert (=> start!320878 e!2138519))

(assert (=> start!320878 true))

(declare-fun e!2138514 () Bool)

(assert (=> start!320878 e!2138514))

(declare-fun e!2138516 () Bool)

(assert (=> start!320878 e!2138516))

(declare-fun e!2138525 () Bool)

(declare-fun inv!50255 (Token!10210) Bool)

(assert (=> start!320878 (and (inv!50255 separatorToken!241) e!2138525)))

(declare-fun b!3452410 () Bool)

(declare-fun res!1392189 () Bool)

(assert (=> b!3452410 (=> (not res!1392189) (not e!2138519))))

(declare-datatypes ((List!37214 0))(
  ( (Nil!37090) (Cons!37090 (h!42510 Token!10210) (t!271995 List!37214)) )
))
(declare-fun tokens!494 () List!37214)

(assert (=> b!3452410 (= res!1392189 (and (not ((_ is Nil!37090) tokens!494)) (not ((_ is Nil!37090) (t!271995 tokens!494)))))))

(declare-fun b!3452411 () Bool)

(declare-fun e!2138528 () Bool)

(declare-fun e!2138532 () Bool)

(assert (=> b!3452411 (= e!2138528 e!2138532)))

(declare-fun res!1392193 () Bool)

(assert (=> b!3452411 (=> res!1392193 e!2138532)))

(declare-datatypes ((List!37215 0))(
  ( (Nil!37091) (Cons!37091 (h!42511 Rule!10644) (t!271996 List!37215)) )
))
(declare-fun rules!2135 () List!37215)

(declare-fun lt!1172071 () BalanceConc!22052)

(declare-datatypes ((IArray!22445 0))(
  ( (IArray!22446 (innerList!11280 List!37214)) )
))
(declare-datatypes ((Conc!11220 0))(
  ( (Node!11220 (left!28925 Conc!11220) (right!29255 Conc!11220) (csize!22670 Int) (cheight!11431 Int)) (Leaf!17542 (xs!14394 IArray!22445) (csize!22671 Int)) (Empty!11220) )
))
(declare-datatypes ((BalanceConc!22054 0))(
  ( (BalanceConc!22055 (c!591034 Conc!11220)) )
))
(declare-fun isEmpty!21412 (BalanceConc!22054) Bool)

(declare-datatypes ((tuple2!36780 0))(
  ( (tuple2!36781 (_1!21524 BalanceConc!22054) (_2!21524 BalanceConc!22052)) )
))
(declare-fun lex!2337 (LexerInterface!5011 List!37215 BalanceConc!22052) tuple2!36780)

(assert (=> b!3452411 (= res!1392193 (isEmpty!21412 (_1!21524 (lex!2337 thiss!18206 rules!2135 lt!1172071))))))

(declare-fun lt!1172068 () List!37213)

(declare-fun seqFromList!3897 (List!37213) BalanceConc!22052)

(assert (=> b!3452411 (= lt!1172071 (seqFromList!3897 lt!1172068))))

(declare-fun b!3452412 () Bool)

(declare-fun res!1392196 () Bool)

(assert (=> b!3452412 (=> (not res!1392196) (not e!2138519))))

(declare-fun lambda!121587 () Int)

(declare-fun forall!7893 (List!37214 Int) Bool)

(assert (=> b!3452412 (= res!1392196 (forall!7893 tokens!494 lambda!121587))))

(declare-fun e!2138535 () Bool)

(declare-fun b!3452413 () Bool)

(declare-fun tp!1076663 () Bool)

(declare-fun inv!21 (TokenValue!5652) Bool)

(assert (=> b!3452413 (= e!2138525 (and (inv!21 (value!174987 separatorToken!241)) e!2138535 tp!1076663))))

(declare-fun e!2138509 () Bool)

(assert (=> b!3452414 (= e!2138509 (and tp!1076662 tp!1076659))))

(declare-fun e!2138523 () Bool)

(declare-fun b!3452415 () Bool)

(declare-fun tp!1076657 () Bool)

(declare-fun inv!50252 (String!41594) Bool)

(declare-fun inv!50256 (TokenValueInjection!10732) Bool)

(assert (=> b!3452415 (= e!2138535 (and tp!1076657 (inv!50252 (tag!6022 (rule!8004 separatorToken!241))) (inv!50256 (transformation!5422 (rule!8004 separatorToken!241))) e!2138523))))

(declare-fun b!3452416 () Bool)

(declare-fun res!1392205 () Bool)

(assert (=> b!3452416 (=> (not res!1392205) (not e!2138519))))

(declare-fun rulesProduceIndividualToken!2503 (LexerInterface!5011 List!37215 Token!10210) Bool)

(assert (=> b!3452416 (= res!1392205 (rulesProduceIndividualToken!2503 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2138513 () Bool)

(declare-fun e!2138533 () Bool)

(declare-fun b!3452417 () Bool)

(declare-fun tp!1076656 () Bool)

(assert (=> b!3452417 (= e!2138513 (and tp!1076656 (inv!50252 (tag!6022 (h!42511 rules!2135))) (inv!50256 (transformation!5422 (h!42511 rules!2135))) e!2138533))))

(assert (=> b!3452418 (= e!2138523 (and tp!1076658 tp!1076664))))

(declare-fun b!3452419 () Bool)

(assert (=> b!3452419 (= e!2138510 (= (rule!8004 separatorToken!241) lt!1172067))))

(declare-fun tp!1076653 () Bool)

(declare-fun e!2138534 () Bool)

(declare-fun b!3452420 () Bool)

(assert (=> b!3452420 (= e!2138516 (and (inv!50255 (h!42510 tokens!494)) e!2138534 tp!1076653))))

(declare-fun b!3452421 () Bool)

(declare-fun e!2138526 () Bool)

(declare-fun e!2138531 () Bool)

(assert (=> b!3452421 (= e!2138526 e!2138531)))

(declare-fun res!1392197 () Bool)

(assert (=> b!3452421 (=> res!1392197 e!2138531)))

(declare-fun lt!1172078 () List!37213)

(declare-fun lt!1172066 () List!37213)

(assert (=> b!3452421 (= res!1392197 (not (= lt!1172078 lt!1172066)))))

(declare-fun lt!1172082 () List!37213)

(declare-fun ++!9133 (List!37213 List!37213) List!37213)

(assert (=> b!3452421 (= lt!1172066 (++!9133 (++!9133 lt!1172068 lt!1172084) lt!1172082))))

(declare-fun b!3452422 () Bool)

(declare-fun e!2138512 () Bool)

(assert (=> b!3452422 (= e!2138519 (not e!2138512))))

(declare-fun res!1392209 () Bool)

(assert (=> b!3452422 (=> res!1392209 e!2138512)))

(declare-fun lt!1172079 () List!37213)

(declare-fun lt!1172083 () List!37213)

(assert (=> b!3452422 (= res!1392209 (not (= lt!1172079 lt!1172083)))))

(declare-fun printList!1559 (LexerInterface!5011 List!37214) List!37213)

(assert (=> b!3452422 (= lt!1172083 (printList!1559 thiss!18206 (Cons!37090 (h!42510 tokens!494) Nil!37090)))))

(declare-fun lt!1172081 () BalanceConc!22052)

(declare-fun list!13493 (BalanceConc!22052) List!37213)

(assert (=> b!3452422 (= lt!1172079 (list!13493 lt!1172081))))

(declare-fun lt!1172069 () BalanceConc!22054)

(declare-fun printTailRec!1506 (LexerInterface!5011 BalanceConc!22054 Int BalanceConc!22052) BalanceConc!22052)

(assert (=> b!3452422 (= lt!1172081 (printTailRec!1506 thiss!18206 lt!1172069 0 (BalanceConc!22053 Empty!11219)))))

(declare-fun print!2076 (LexerInterface!5011 BalanceConc!22054) BalanceConc!22052)

(assert (=> b!3452422 (= lt!1172081 (print!2076 thiss!18206 lt!1172069))))

(declare-fun singletonSeq!2518 (Token!10210) BalanceConc!22054)

(assert (=> b!3452422 (= lt!1172069 (singletonSeq!2518 (h!42510 tokens!494)))))

(declare-fun b!3452423 () Bool)

(declare-fun tp!1076660 () Bool)

(assert (=> b!3452423 (= e!2138514 (and e!2138513 tp!1076660))))

(declare-fun b!3452424 () Bool)

(declare-fun e!2138522 () Bool)

(declare-fun tp!1076654 () Bool)

(assert (=> b!3452424 (= e!2138522 (and tp!1076654 (inv!50252 (tag!6022 (rule!8004 (h!42510 tokens!494)))) (inv!50256 (transformation!5422 (rule!8004 (h!42510 tokens!494)))) e!2138509))))

(declare-fun b!3452425 () Bool)

(declare-fun e!2138529 () Bool)

(assert (=> b!3452425 (= e!2138532 e!2138529)))

(declare-fun res!1392192 () Bool)

(assert (=> b!3452425 (=> res!1392192 e!2138529)))

(assert (=> b!3452425 (= res!1392192 (or (isSeparator!5422 (rule!8004 (h!42510 tokens!494))) (isSeparator!5422 (rule!8004 (h!42510 (t!271995 tokens!494))))))))

(declare-fun lt!1172088 () Unit!52414)

(declare-fun forallContained!1369 (List!37214 Int Token!10210) Unit!52414)

(assert (=> b!3452425 (= lt!1172088 (forallContained!1369 tokens!494 lambda!121587 (h!42510 (t!271995 tokens!494))))))

(declare-fun lt!1172070 () Unit!52414)

(assert (=> b!3452425 (= lt!1172070 (forallContained!1369 tokens!494 lambda!121587 (h!42510 tokens!494)))))

(declare-fun b!3452426 () Bool)

(declare-fun e!2138521 () Bool)

(assert (=> b!3452426 (= e!2138521 e!2138517)))

(declare-fun res!1392198 () Bool)

(assert (=> b!3452426 (=> res!1392198 e!2138517)))

(declare-fun contains!6850 (List!37213 C!20548) Bool)

(declare-fun usedCharacters!656 (Regex!10181) List!37213)

(assert (=> b!3452426 (= res!1392198 (contains!6850 (usedCharacters!656 (regex!5422 (rule!8004 separatorToken!241))) lt!1172086))))

(declare-fun head!7293 (List!37213) C!20548)

(assert (=> b!3452426 (= lt!1172086 (head!7293 lt!1172084))))

(assert (=> b!3452426 e!2138515))

(declare-fun res!1392203 () Bool)

(assert (=> b!3452426 (=> (not res!1392203) (not e!2138515))))

(declare-fun isDefined!5776 (Option!7491) Bool)

(assert (=> b!3452426 (= res!1392203 (isDefined!5776 lt!1172073))))

(declare-fun getRuleFromTag!1065 (LexerInterface!5011 List!37215 String!41594) Option!7491)

(assert (=> b!3452426 (= lt!1172073 (getRuleFromTag!1065 thiss!18206 rules!2135 (tag!6022 (rule!8004 separatorToken!241))))))

(declare-fun lt!1172087 () Unit!52414)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1065 (LexerInterface!5011 List!37215 List!37213 Token!10210) Unit!52414)

(assert (=> b!3452426 (= lt!1172087 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1065 thiss!18206 rules!2135 lt!1172084 separatorToken!241))))

(declare-datatypes ((tuple2!36782 0))(
  ( (tuple2!36783 (_1!21525 Token!10210) (_2!21525 List!37213)) )
))
(declare-datatypes ((Option!7492 0))(
  ( (None!7491) (Some!7491 (v!36775 tuple2!36782)) )
))
(declare-fun maxPrefixOneRule!1718 (LexerInterface!5011 Rule!10644 List!37213) Option!7492)

(declare-fun apply!8699 (TokenValueInjection!10732 BalanceConc!22052) TokenValue!5652)

(declare-fun size!28115 (List!37213) Int)

(assert (=> b!3452426 (= (maxPrefixOneRule!1718 thiss!18206 (rule!8004 (h!42510 tokens!494)) lt!1172068) (Some!7491 (tuple2!36783 (Token!10211 (apply!8699 (transformation!5422 (rule!8004 (h!42510 tokens!494))) lt!1172071) (rule!8004 (h!42510 tokens!494)) (size!28115 lt!1172068) lt!1172068) Nil!37089)))))

(declare-fun lt!1172080 () Unit!52414)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!811 (LexerInterface!5011 List!37215 List!37213 List!37213 List!37213 Rule!10644) Unit!52414)

(assert (=> b!3452426 (= lt!1172080 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!811 thiss!18206 rules!2135 lt!1172068 lt!1172068 Nil!37089 (rule!8004 (h!42510 tokens!494))))))

(declare-fun e!2138530 () Bool)

(assert (=> b!3452426 e!2138530))

(declare-fun res!1392206 () Bool)

(assert (=> b!3452426 (=> (not res!1392206) (not e!2138530))))

(declare-fun lt!1172085 () Option!7491)

(assert (=> b!3452426 (= res!1392206 (isDefined!5776 lt!1172085))))

(assert (=> b!3452426 (= lt!1172085 (getRuleFromTag!1065 thiss!18206 rules!2135 (tag!6022 (rule!8004 (h!42510 tokens!494)))))))

(declare-fun lt!1172074 () Unit!52414)

(assert (=> b!3452426 (= lt!1172074 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1065 thiss!18206 rules!2135 lt!1172068 (h!42510 tokens!494)))))

(declare-fun lt!1172076 () Unit!52414)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1000 (LexerInterface!5011 List!37215 List!37214 Token!10210) Unit!52414)

(assert (=> b!3452426 (= lt!1172076 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1000 thiss!18206 rules!2135 tokens!494 (h!42510 tokens!494)))))

(declare-fun b!3452427 () Bool)

(declare-fun res!1392202 () Bool)

(assert (=> b!3452427 (=> (not res!1392202) (not e!2138519))))

(declare-fun isEmpty!21413 (List!37215) Bool)

(assert (=> b!3452427 (= res!1392202 (not (isEmpty!21413 rules!2135)))))

(declare-fun b!3452428 () Bool)

(declare-fun res!1392195 () Bool)

(assert (=> b!3452428 (=> (not res!1392195) (not e!2138519))))

(declare-fun rulesProduceEachTokenIndividually!1462 (LexerInterface!5011 List!37215 BalanceConc!22054) Bool)

(declare-fun seqFromList!3898 (List!37214) BalanceConc!22054)

(assert (=> b!3452428 (= res!1392195 (rulesProduceEachTokenIndividually!1462 thiss!18206 rules!2135 (seqFromList!3898 tokens!494)))))

(declare-fun b!3452429 () Bool)

(declare-fun tp!1076655 () Bool)

(assert (=> b!3452429 (= e!2138534 (and (inv!21 (value!174987 (h!42510 tokens!494))) e!2138522 tp!1076655))))

(declare-fun b!3452430 () Bool)

(declare-fun e!2138518 () Bool)

(assert (=> b!3452430 (= e!2138530 e!2138518)))

(declare-fun res!1392208 () Bool)

(assert (=> b!3452430 (=> (not res!1392208) (not e!2138518))))

(declare-fun lt!1172065 () Rule!10644)

(assert (=> b!3452430 (= res!1392208 (matchR!4765 (regex!5422 lt!1172065) lt!1172068))))

(assert (=> b!3452430 (= lt!1172065 (get!11860 lt!1172085))))

(assert (=> b!3452431 (= e!2138533 (and tp!1076652 tp!1076661))))

(declare-fun b!3452432 () Bool)

(declare-fun res!1392200 () Bool)

(assert (=> b!3452432 (=> (not res!1392200) (not e!2138519))))

(declare-fun rulesInvariant!4408 (LexerInterface!5011 List!37215) Bool)

(assert (=> b!3452432 (= res!1392200 (rulesInvariant!4408 thiss!18206 rules!2135))))

(declare-fun b!3452433 () Bool)

(assert (=> b!3452433 (= e!2138518 (= (rule!8004 (h!42510 tokens!494)) lt!1172065))))

(declare-fun b!3452434 () Bool)

(declare-fun res!1392199 () Bool)

(assert (=> b!3452434 (=> (not res!1392199) (not e!2138519))))

(declare-fun sepAndNonSepRulesDisjointChars!1616 (List!37215 List!37215) Bool)

(assert (=> b!3452434 (= res!1392199 (sepAndNonSepRulesDisjointChars!1616 rules!2135 rules!2135))))

(declare-fun b!3452435 () Bool)

(assert (=> b!3452435 (= e!2138512 e!2138528)))

(declare-fun res!1392207 () Bool)

(assert (=> b!3452435 (=> res!1392207 e!2138528)))

(assert (=> b!3452435 (= res!1392207 (or (not (= lt!1172083 lt!1172068)) (not (= lt!1172079 lt!1172068))))))

(declare-fun charsOf!3436 (Token!10210) BalanceConc!22052)

(assert (=> b!3452435 (= lt!1172068 (list!13493 (charsOf!3436 (h!42510 tokens!494))))))

(declare-fun b!3452436 () Bool)

(assert (=> b!3452436 (= e!2138529 e!2138526)))

(declare-fun res!1392194 () Bool)

(assert (=> b!3452436 (=> res!1392194 e!2138526)))

(declare-fun printWithSeparatorTokenList!298 (LexerInterface!5011 List!37214 Token!10210) List!37213)

(assert (=> b!3452436 (= res!1392194 (not (= lt!1172082 (++!9133 (++!9133 (list!13493 (charsOf!3436 (h!42510 (t!271995 tokens!494)))) lt!1172084) (printWithSeparatorTokenList!298 thiss!18206 (t!271995 (t!271995 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1172072 () List!37213)

(assert (=> b!3452436 (= lt!1172072 (++!9133 lt!1172084 lt!1172082))))

(assert (=> b!3452436 (= lt!1172084 (list!13493 (charsOf!3436 separatorToken!241)))))

(assert (=> b!3452436 (= lt!1172082 (printWithSeparatorTokenList!298 thiss!18206 (t!271995 tokens!494) separatorToken!241))))

(assert (=> b!3452436 (= lt!1172078 (printWithSeparatorTokenList!298 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3452437 () Bool)

(declare-fun res!1392201 () Bool)

(assert (=> b!3452437 (=> res!1392201 e!2138528)))

(assert (=> b!3452437 (= res!1392201 (not (rulesProduceIndividualToken!2503 thiss!18206 rules!2135 (h!42510 tokens!494))))))

(declare-fun b!3452438 () Bool)

(assert (=> b!3452438 (= e!2138531 e!2138521)))

(declare-fun res!1392190 () Bool)

(assert (=> b!3452438 (=> res!1392190 e!2138521)))

(declare-fun lt!1172064 () List!37213)

(assert (=> b!3452438 (= res!1392190 (not (= lt!1172078 lt!1172064)))))

(assert (=> b!3452438 (= lt!1172066 lt!1172064)))

(assert (=> b!3452438 (= lt!1172064 (++!9133 lt!1172068 lt!1172072))))

(declare-fun lt!1172077 () Unit!52414)

(declare-fun lemmaConcatAssociativity!1940 (List!37213 List!37213 List!37213) Unit!52414)

(assert (=> b!3452438 (= lt!1172077 (lemmaConcatAssociativity!1940 lt!1172068 lt!1172084 lt!1172082))))

(assert (= (and start!320878 res!1392204) b!3452427))

(assert (= (and b!3452427 res!1392202) b!3452432))

(assert (= (and b!3452432 res!1392200) b!3452428))

(assert (= (and b!3452428 res!1392195) b!3452416))

(assert (= (and b!3452416 res!1392205) b!3452409))

(assert (= (and b!3452409 res!1392188) b!3452412))

(assert (= (and b!3452412 res!1392196) b!3452434))

(assert (= (and b!3452434 res!1392199) b!3452410))

(assert (= (and b!3452410 res!1392189) b!3452422))

(assert (= (and b!3452422 (not res!1392209)) b!3452435))

(assert (= (and b!3452435 (not res!1392207)) b!3452437))

(assert (= (and b!3452437 (not res!1392201)) b!3452411))

(assert (= (and b!3452411 (not res!1392193)) b!3452425))

(assert (= (and b!3452425 (not res!1392192)) b!3452436))

(assert (= (and b!3452436 (not res!1392194)) b!3452421))

(assert (= (and b!3452421 (not res!1392197)) b!3452438))

(assert (= (and b!3452438 (not res!1392190)) b!3452426))

(assert (= (and b!3452426 res!1392206) b!3452430))

(assert (= (and b!3452430 res!1392208) b!3452433))

(assert (= (and b!3452426 res!1392203) b!3452407))

(assert (= (and b!3452407 res!1392191) b!3452419))

(assert (= (and b!3452426 (not res!1392198)) b!3452408))

(assert (= b!3452417 b!3452431))

(assert (= b!3452423 b!3452417))

(assert (= (and start!320878 ((_ is Cons!37091) rules!2135)) b!3452423))

(assert (= b!3452424 b!3452414))

(assert (= b!3452429 b!3452424))

(assert (= b!3452420 b!3452429))

(assert (= (and start!320878 ((_ is Cons!37090) tokens!494)) b!3452420))

(assert (= b!3452415 b!3452418))

(assert (= b!3452413 b!3452415))

(assert (= start!320878 b!3452413))

(declare-fun m!3850337 () Bool)

(assert (=> b!3452425 m!3850337))

(declare-fun m!3850339 () Bool)

(assert (=> b!3452425 m!3850339))

(declare-fun m!3850341 () Bool)

(assert (=> b!3452427 m!3850341))

(declare-fun m!3850343 () Bool)

(assert (=> b!3452413 m!3850343))

(declare-fun m!3850345 () Bool)

(assert (=> b!3452428 m!3850345))

(assert (=> b!3452428 m!3850345))

(declare-fun m!3850347 () Bool)

(assert (=> b!3452428 m!3850347))

(declare-fun m!3850349 () Bool)

(assert (=> b!3452424 m!3850349))

(declare-fun m!3850351 () Bool)

(assert (=> b!3452424 m!3850351))

(declare-fun m!3850353 () Bool)

(assert (=> b!3452434 m!3850353))

(declare-fun m!3850355 () Bool)

(assert (=> b!3452421 m!3850355))

(assert (=> b!3452421 m!3850355))

(declare-fun m!3850357 () Bool)

(assert (=> b!3452421 m!3850357))

(declare-fun m!3850359 () Bool)

(assert (=> b!3452432 m!3850359))

(declare-fun m!3850361 () Bool)

(assert (=> b!3452430 m!3850361))

(declare-fun m!3850363 () Bool)

(assert (=> b!3452430 m!3850363))

(declare-fun m!3850365 () Bool)

(assert (=> b!3452407 m!3850365))

(declare-fun m!3850367 () Bool)

(assert (=> b!3452407 m!3850367))

(declare-fun m!3850369 () Bool)

(assert (=> b!3452415 m!3850369))

(declare-fun m!3850371 () Bool)

(assert (=> b!3452415 m!3850371))

(declare-fun m!3850373 () Bool)

(assert (=> b!3452435 m!3850373))

(assert (=> b!3452435 m!3850373))

(declare-fun m!3850375 () Bool)

(assert (=> b!3452435 m!3850375))

(declare-fun m!3850377 () Bool)

(assert (=> b!3452436 m!3850377))

(declare-fun m!3850379 () Bool)

(assert (=> b!3452436 m!3850379))

(declare-fun m!3850381 () Bool)

(assert (=> b!3452436 m!3850381))

(declare-fun m!3850383 () Bool)

(assert (=> b!3452436 m!3850383))

(assert (=> b!3452436 m!3850377))

(declare-fun m!3850385 () Bool)

(assert (=> b!3452436 m!3850385))

(declare-fun m!3850387 () Bool)

(assert (=> b!3452436 m!3850387))

(declare-fun m!3850389 () Bool)

(assert (=> b!3452436 m!3850389))

(declare-fun m!3850391 () Bool)

(assert (=> b!3452436 m!3850391))

(declare-fun m!3850393 () Bool)

(assert (=> b!3452436 m!3850393))

(assert (=> b!3452436 m!3850387))

(declare-fun m!3850395 () Bool)

(assert (=> b!3452436 m!3850395))

(assert (=> b!3452436 m!3850385))

(assert (=> b!3452436 m!3850393))

(assert (=> b!3452436 m!3850389))

(declare-fun m!3850397 () Bool)

(assert (=> b!3452438 m!3850397))

(declare-fun m!3850399 () Bool)

(assert (=> b!3452438 m!3850399))

(declare-fun m!3850401 () Bool)

(assert (=> start!320878 m!3850401))

(declare-fun m!3850403 () Bool)

(assert (=> b!3452420 m!3850403))

(declare-fun m!3850405 () Bool)

(assert (=> b!3452411 m!3850405))

(declare-fun m!3850407 () Bool)

(assert (=> b!3452411 m!3850407))

(declare-fun m!3850409 () Bool)

(assert (=> b!3452411 m!3850409))

(declare-fun m!3850411 () Bool)

(assert (=> b!3452412 m!3850411))

(declare-fun m!3850413 () Bool)

(assert (=> b!3452422 m!3850413))

(declare-fun m!3850415 () Bool)

(assert (=> b!3452422 m!3850415))

(declare-fun m!3850417 () Bool)

(assert (=> b!3452422 m!3850417))

(declare-fun m!3850419 () Bool)

(assert (=> b!3452422 m!3850419))

(declare-fun m!3850421 () Bool)

(assert (=> b!3452422 m!3850421))

(declare-fun m!3850423 () Bool)

(assert (=> b!3452416 m!3850423))

(declare-fun m!3850425 () Bool)

(assert (=> b!3452437 m!3850425))

(declare-fun m!3850427 () Bool)

(assert (=> b!3452426 m!3850427))

(declare-fun m!3850429 () Bool)

(assert (=> b!3452426 m!3850429))

(declare-fun m!3850431 () Bool)

(assert (=> b!3452426 m!3850431))

(declare-fun m!3850433 () Bool)

(assert (=> b!3452426 m!3850433))

(declare-fun m!3850435 () Bool)

(assert (=> b!3452426 m!3850435))

(assert (=> b!3452426 m!3850427))

(declare-fun m!3850437 () Bool)

(assert (=> b!3452426 m!3850437))

(declare-fun m!3850439 () Bool)

(assert (=> b!3452426 m!3850439))

(declare-fun m!3850441 () Bool)

(assert (=> b!3452426 m!3850441))

(declare-fun m!3850443 () Bool)

(assert (=> b!3452426 m!3850443))

(declare-fun m!3850445 () Bool)

(assert (=> b!3452426 m!3850445))

(declare-fun m!3850447 () Bool)

(assert (=> b!3452426 m!3850447))

(declare-fun m!3850449 () Bool)

(assert (=> b!3452426 m!3850449))

(declare-fun m!3850451 () Bool)

(assert (=> b!3452426 m!3850451))

(declare-fun m!3850453 () Bool)

(assert (=> b!3452426 m!3850453))

(declare-fun m!3850455 () Bool)

(assert (=> b!3452429 m!3850455))

(declare-fun m!3850457 () Bool)

(assert (=> b!3452417 m!3850457))

(declare-fun m!3850459 () Bool)

(assert (=> b!3452417 m!3850459))

(declare-fun m!3850461 () Bool)

(assert (=> b!3452408 m!3850461))

(declare-fun m!3850463 () Bool)

(assert (=> b!3452408 m!3850463))

(check-sat (not b!3452421) b_and!242543 (not b!3452432) (not b!3452434) b_and!242539 (not b!3452436) (not b!3452430) (not b!3452417) (not b!3452427) (not b!3452425) (not b_next!90307) (not b!3452415) b_and!242545 (not b!3452420) (not b!3452422) (not b_next!90305) (not b!3452413) (not b!3452411) (not start!320878) (not b!3452435) (not b!3452426) (not b!3452437) (not b!3452408) b_and!242541 (not b!3452428) (not b!3452429) (not b!3452423) (not b_next!90315) (not b!3452412) b_and!242549 (not b!3452438) (not b_next!90311) (not b!3452407) b_and!242547 (not b!3452424) (not b_next!90309) (not b!3452416) (not b_next!90313))
(check-sat (not b_next!90305) b_and!242543 b_and!242541 b_and!242539 (not b_next!90311) (not b_next!90307) b_and!242545 (not b_next!90315) b_and!242549 b_and!242547 (not b_next!90309) (not b_next!90313))
