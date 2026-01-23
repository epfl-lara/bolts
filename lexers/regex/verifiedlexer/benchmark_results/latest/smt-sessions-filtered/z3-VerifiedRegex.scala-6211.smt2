; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300438 () Bool)

(assert start!300438)

(declare-fun b!3200700 () Bool)

(declare-fun b_free!85073 () Bool)

(declare-fun b_next!85777 () Bool)

(assert (=> b!3200700 (= b_free!85073 (not b_next!85777))))

(declare-fun tp!1011667 () Bool)

(declare-fun b_and!212759 () Bool)

(assert (=> b!3200700 (= tp!1011667 b_and!212759)))

(declare-fun b_free!85075 () Bool)

(declare-fun b_next!85779 () Bool)

(assert (=> b!3200700 (= b_free!85075 (not b_next!85779))))

(declare-fun tp!1011665 () Bool)

(declare-fun b_and!212761 () Bool)

(assert (=> b!3200700 (= tp!1011665 b_and!212761)))

(declare-fun b!3200713 () Bool)

(declare-fun b_free!85077 () Bool)

(declare-fun b_next!85781 () Bool)

(assert (=> b!3200713 (= b_free!85077 (not b_next!85781))))

(declare-fun tp!1011672 () Bool)

(declare-fun b_and!212763 () Bool)

(assert (=> b!3200713 (= tp!1011672 b_and!212763)))

(declare-fun b_free!85079 () Bool)

(declare-fun b_next!85783 () Bool)

(assert (=> b!3200713 (= b_free!85079 (not b_next!85783))))

(declare-fun tp!1011673 () Bool)

(declare-fun b_and!212765 () Bool)

(assert (=> b!3200713 (= tp!1011673 b_and!212765)))

(declare-fun b!3200710 () Bool)

(declare-fun b_free!85081 () Bool)

(declare-fun b_next!85785 () Bool)

(assert (=> b!3200710 (= b_free!85081 (not b_next!85785))))

(declare-fun tp!1011668 () Bool)

(declare-fun b_and!212767 () Bool)

(assert (=> b!3200710 (= tp!1011668 b_and!212767)))

(declare-fun b_free!85083 () Bool)

(declare-fun b_next!85787 () Bool)

(assert (=> b!3200710 (= b_free!85083 (not b_next!85787))))

(declare-fun tp!1011664 () Bool)

(declare-fun b_and!212769 () Bool)

(assert (=> b!3200710 (= tp!1011664 b_and!212769)))

(declare-fun b!3200699 () Bool)

(declare-fun res!1302409 () Bool)

(declare-fun e!1995538 () Bool)

(assert (=> b!3200699 (=> (not res!1302409) (not e!1995538))))

(declare-datatypes ((LexerInterface!4791 0))(
  ( (LexerInterfaceExt!4788 (__x!23081 Int)) (Lexer!4789) )
))
(declare-fun thiss!18206 () LexerInterface!4791)

(declare-datatypes ((C!20108 0))(
  ( (C!20109 (val!12102 Int)) )
))
(declare-datatypes ((Regex!9961 0))(
  ( (ElementMatch!9961 (c!537358 C!20108)) (Concat!15393 (regOne!20434 Regex!9961) (regTwo!20434 Regex!9961)) (EmptyExpr!9961) (Star!9961 (reg!10290 Regex!9961)) (EmptyLang!9961) (Union!9961 (regOne!20435 Regex!9961) (regTwo!20435 Regex!9961)) )
))
(declare-datatypes ((List!36208 0))(
  ( (Nil!36084) (Cons!36084 (h!41504 (_ BitVec 16)) (t!237439 List!36208)) )
))
(declare-datatypes ((TokenValue!5432 0))(
  ( (FloatLiteralValue!10864 (text!38469 List!36208)) (TokenValueExt!5431 (__x!23082 Int)) (Broken!27160 (value!168691 List!36208)) (Object!5555) (End!5432) (Def!5432) (Underscore!5432) (Match!5432) (Else!5432) (Error!5432) (Case!5432) (If!5432) (Extends!5432) (Abstract!5432) (Class!5432) (Val!5432) (DelimiterValue!10864 (del!5492 List!36208)) (KeywordValue!5438 (value!168692 List!36208)) (CommentValue!10864 (value!168693 List!36208)) (WhitespaceValue!10864 (value!168694 List!36208)) (IndentationValue!5432 (value!168695 List!36208)) (String!40493) (Int32!5432) (Broken!27161 (value!168696 List!36208)) (Boolean!5433) (Unit!50495) (OperatorValue!5435 (op!5492 List!36208)) (IdentifierValue!10864 (value!168697 List!36208)) (IdentifierValue!10865 (value!168698 List!36208)) (WhitespaceValue!10865 (value!168699 List!36208)) (True!10864) (False!10864) (Broken!27162 (value!168700 List!36208)) (Broken!27163 (value!168701 List!36208)) (True!10865) (RightBrace!5432) (RightBracket!5432) (Colon!5432) (Null!5432) (Comma!5432) (LeftBracket!5432) (False!10865) (LeftBrace!5432) (ImaginaryLiteralValue!5432 (text!38470 List!36208)) (StringLiteralValue!16296 (value!168702 List!36208)) (EOFValue!5432 (value!168703 List!36208)) (IdentValue!5432 (value!168704 List!36208)) (DelimiterValue!10865 (value!168705 List!36208)) (DedentValue!5432 (value!168706 List!36208)) (NewLineValue!5432 (value!168707 List!36208)) (IntegerValue!16296 (value!168708 (_ BitVec 32)) (text!38471 List!36208)) (IntegerValue!16297 (value!168709 Int) (text!38472 List!36208)) (Times!5432) (Or!5432) (Equal!5432) (Minus!5432) (Broken!27164 (value!168710 List!36208)) (And!5432) (Div!5432) (LessEqual!5432) (Mod!5432) (Concat!15394) (Not!5432) (Plus!5432) (SpaceValue!5432 (value!168711 List!36208)) (IntegerValue!16298 (value!168712 Int) (text!38473 List!36208)) (StringLiteralValue!16297 (text!38474 List!36208)) (FloatLiteralValue!10865 (text!38475 List!36208)) (BytesLiteralValue!5432 (value!168713 List!36208)) (CommentValue!10865 (value!168714 List!36208)) (StringLiteralValue!16298 (value!168715 List!36208)) (ErrorTokenValue!5432 (msg!5493 List!36208)) )
))
(declare-datatypes ((List!36209 0))(
  ( (Nil!36085) (Cons!36085 (h!41505 C!20108) (t!237440 List!36209)) )
))
(declare-datatypes ((IArray!21563 0))(
  ( (IArray!21564 (innerList!10839 List!36209)) )
))
(declare-datatypes ((Conc!10779 0))(
  ( (Node!10779 (left!28038 Conc!10779) (right!28368 Conc!10779) (csize!21788 Int) (cheight!10990 Int)) (Leaf!16991 (xs!13897 IArray!21563) (csize!21789 Int)) (Empty!10779) )
))
(declare-datatypes ((BalanceConc!21172 0))(
  ( (BalanceConc!21173 (c!537359 Conc!10779)) )
))
(declare-datatypes ((String!40494 0))(
  ( (String!40495 (value!168716 String)) )
))
(declare-datatypes ((TokenValueInjection!10292 0))(
  ( (TokenValueInjection!10293 (toValue!7278 Int) (toChars!7137 Int)) )
))
(declare-datatypes ((Rule!10204 0))(
  ( (Rule!10205 (regex!5202 Regex!9961) (tag!5724 String!40494) (isSeparator!5202 Bool) (transformation!5202 TokenValueInjection!10292)) )
))
(declare-datatypes ((List!36210 0))(
  ( (Nil!36086) (Cons!36086 (h!41506 Rule!10204) (t!237441 List!36210)) )
))
(declare-fun rules!2135 () List!36210)

(declare-fun rulesInvariant!4188 (LexerInterface!4791 List!36210) Bool)

(assert (=> b!3200699 (= res!1302409 (rulesInvariant!4188 thiss!18206 rules!2135))))

(declare-fun e!1995525 () Bool)

(assert (=> b!3200700 (= e!1995525 (and tp!1011667 tp!1011665))))

(declare-fun b!3200701 () Bool)

(declare-fun e!1995524 () Bool)

(assert (=> b!3200701 (= e!1995524 false)))

(declare-fun res!1302415 () Bool)

(assert (=> start!300438 (=> (not res!1302415) (not e!1995538))))

(get-info :version)

(assert (=> start!300438 (= res!1302415 ((_ is Lexer!4789) thiss!18206))))

(assert (=> start!300438 e!1995538))

(assert (=> start!300438 true))

(declare-fun e!1995515 () Bool)

(assert (=> start!300438 e!1995515))

(declare-fun e!1995521 () Bool)

(assert (=> start!300438 e!1995521))

(declare-datatypes ((Token!9770 0))(
  ( (Token!9771 (value!168717 TokenValue!5432) (rule!7638 Rule!10204) (size!27177 Int) (originalCharacters!5916 List!36209)) )
))
(declare-fun separatorToken!241 () Token!9770)

(declare-fun e!1995527 () Bool)

(declare-fun inv!48938 (Token!9770) Bool)

(assert (=> start!300438 (and (inv!48938 separatorToken!241) e!1995527)))

(declare-fun b!3200702 () Bool)

(declare-fun res!1302430 () Bool)

(assert (=> b!3200702 (=> (not res!1302430) (not e!1995538))))

(assert (=> b!3200702 (= res!1302430 (isSeparator!5202 (rule!7638 separatorToken!241)))))

(declare-fun e!1995512 () Bool)

(declare-fun b!3200703 () Bool)

(declare-fun tp!1011670 () Bool)

(declare-fun inv!21 (TokenValue!5432) Bool)

(assert (=> b!3200703 (= e!1995527 (and (inv!21 (value!168717 separatorToken!241)) e!1995512 tp!1011670))))

(declare-fun b!3200704 () Bool)

(declare-fun e!1995523 () Bool)

(declare-fun e!1995534 () Bool)

(assert (=> b!3200704 (= e!1995523 e!1995534)))

(declare-fun res!1302422 () Bool)

(assert (=> b!3200704 (=> res!1302422 e!1995534)))

(declare-fun lt!1079495 () List!36209)

(declare-fun lt!1079496 () List!36209)

(assert (=> b!3200704 (= res!1302422 (not (= lt!1079495 lt!1079496)))))

(declare-fun lt!1079516 () List!36209)

(assert (=> b!3200704 (= lt!1079516 lt!1079496)))

(declare-fun lt!1079511 () List!36209)

(declare-fun lt!1079507 () List!36209)

(declare-fun ++!8646 (List!36209 List!36209) List!36209)

(assert (=> b!3200704 (= lt!1079496 (++!8646 lt!1079511 lt!1079507))))

(declare-fun lt!1079501 () List!36209)

(declare-fun lt!1079506 () List!36209)

(declare-datatypes ((Unit!50496 0))(
  ( (Unit!50497) )
))
(declare-fun lt!1079514 () Unit!50496)

(declare-fun lemmaConcatAssociativity!1720 (List!36209 List!36209 List!36209) Unit!50496)

(assert (=> b!3200704 (= lt!1079514 (lemmaConcatAssociativity!1720 lt!1079511 lt!1079501 lt!1079506))))

(declare-fun b!3200705 () Bool)

(declare-fun e!1995535 () Bool)

(assert (=> b!3200705 (= e!1995538 (not e!1995535))))

(declare-fun res!1302411 () Bool)

(assert (=> b!3200705 (=> res!1302411 e!1995535)))

(declare-fun lt!1079512 () List!36209)

(declare-fun lt!1079499 () List!36209)

(assert (=> b!3200705 (= res!1302411 (not (= lt!1079512 lt!1079499)))))

(declare-datatypes ((List!36211 0))(
  ( (Nil!36087) (Cons!36087 (h!41507 Token!9770) (t!237442 List!36211)) )
))
(declare-fun tokens!494 () List!36211)

(declare-fun printList!1341 (LexerInterface!4791 List!36211) List!36209)

(assert (=> b!3200705 (= lt!1079499 (printList!1341 thiss!18206 (Cons!36087 (h!41507 tokens!494) Nil!36087)))))

(declare-fun lt!1079517 () BalanceConc!21172)

(declare-fun list!12827 (BalanceConc!21172) List!36209)

(assert (=> b!3200705 (= lt!1079512 (list!12827 lt!1079517))))

(declare-datatypes ((IArray!21565 0))(
  ( (IArray!21566 (innerList!10840 List!36211)) )
))
(declare-datatypes ((Conc!10780 0))(
  ( (Node!10780 (left!28039 Conc!10780) (right!28369 Conc!10780) (csize!21790 Int) (cheight!10991 Int)) (Leaf!16992 (xs!13898 IArray!21565) (csize!21791 Int)) (Empty!10780) )
))
(declare-datatypes ((BalanceConc!21174 0))(
  ( (BalanceConc!21175 (c!537360 Conc!10780)) )
))
(declare-fun lt!1079497 () BalanceConc!21174)

(declare-fun printTailRec!1288 (LexerInterface!4791 BalanceConc!21174 Int BalanceConc!21172) BalanceConc!21172)

(assert (=> b!3200705 (= lt!1079517 (printTailRec!1288 thiss!18206 lt!1079497 0 (BalanceConc!21173 Empty!10779)))))

(declare-fun print!1856 (LexerInterface!4791 BalanceConc!21174) BalanceConc!21172)

(assert (=> b!3200705 (= lt!1079517 (print!1856 thiss!18206 lt!1079497))))

(declare-fun singletonSeq!2298 (Token!9770) BalanceConc!21174)

(assert (=> b!3200705 (= lt!1079497 (singletonSeq!2298 (h!41507 tokens!494)))))

(declare-fun b!3200706 () Bool)

(declare-fun e!1995514 () Bool)

(declare-fun e!1995531 () Bool)

(assert (=> b!3200706 (= e!1995514 e!1995531)))

(declare-fun res!1302429 () Bool)

(assert (=> b!3200706 (=> res!1302429 e!1995531)))

(declare-fun lt!1079494 () BalanceConc!21172)

(declare-fun isEmpty!20167 (BalanceConc!21174) Bool)

(declare-datatypes ((tuple2!35462 0))(
  ( (tuple2!35463 (_1!20865 BalanceConc!21174) (_2!20865 BalanceConc!21172)) )
))
(declare-fun lex!2121 (LexerInterface!4791 List!36210 BalanceConc!21172) tuple2!35462)

(assert (=> b!3200706 (= res!1302429 (isEmpty!20167 (_1!20865 (lex!2121 thiss!18206 rules!2135 lt!1079494))))))

(declare-fun seqFromList!3475 (List!36209) BalanceConc!21172)

(assert (=> b!3200706 (= lt!1079494 (seqFromList!3475 lt!1079511))))

(declare-fun b!3200707 () Bool)

(declare-fun res!1302420 () Bool)

(assert (=> b!3200707 (=> (not res!1302420) (not e!1995538))))

(declare-fun isEmpty!20168 (List!36210) Bool)

(assert (=> b!3200707 (= res!1302420 (not (isEmpty!20168 rules!2135)))))

(declare-fun b!3200708 () Bool)

(declare-fun e!1995513 () Unit!50496)

(declare-fun Unit!50498 () Unit!50496)

(assert (=> b!3200708 (= e!1995513 Unit!50498)))

(declare-fun e!1995526 () Bool)

(declare-fun b!3200709 () Bool)

(declare-fun e!1995532 () Bool)

(declare-fun tp!1011663 () Bool)

(declare-fun inv!48935 (String!40494) Bool)

(declare-fun inv!48939 (TokenValueInjection!10292) Bool)

(assert (=> b!3200709 (= e!1995526 (and tp!1011663 (inv!48935 (tag!5724 (rule!7638 (h!41507 tokens!494)))) (inv!48939 (transformation!5202 (rule!7638 (h!41507 tokens!494)))) e!1995532))))

(assert (=> b!3200710 (= e!1995532 (and tp!1011668 tp!1011664))))

(declare-fun b!3200711 () Bool)

(declare-fun e!1995522 () Bool)

(declare-fun lt!1079513 () Rule!10204)

(assert (=> b!3200711 (= e!1995522 (= (rule!7638 separatorToken!241) lt!1079513))))

(declare-fun b!3200712 () Bool)

(declare-fun res!1302431 () Bool)

(assert (=> b!3200712 (=> (not res!1302431) (not e!1995538))))

(declare-fun lambda!117169 () Int)

(declare-fun forall!7354 (List!36211 Int) Bool)

(assert (=> b!3200712 (= res!1302431 (forall!7354 tokens!494 lambda!117169))))

(declare-fun e!1995528 () Bool)

(assert (=> b!3200713 (= e!1995528 (and tp!1011672 tp!1011673))))

(declare-fun b!3200714 () Bool)

(declare-fun e!1995518 () Bool)

(assert (=> b!3200714 (= e!1995518 e!1995523)))

(declare-fun res!1302413 () Bool)

(assert (=> b!3200714 (=> res!1302413 e!1995523)))

(assert (=> b!3200714 (= res!1302413 (not (= lt!1079495 lt!1079516)))))

(assert (=> b!3200714 (= lt!1079516 (++!8646 (++!8646 lt!1079511 lt!1079501) lt!1079506))))

(declare-fun b!3200715 () Bool)

(declare-fun e!1995511 () Bool)

(assert (=> b!3200715 (= e!1995531 e!1995511)))

(declare-fun res!1302418 () Bool)

(assert (=> b!3200715 (=> res!1302418 e!1995511)))

(assert (=> b!3200715 (= res!1302418 (or (isSeparator!5202 (rule!7638 (h!41507 tokens!494))) (isSeparator!5202 (rule!7638 (h!41507 (t!237442 tokens!494))))))))

(declare-fun lt!1079522 () Unit!50496)

(declare-fun forallContained!1173 (List!36211 Int Token!9770) Unit!50496)

(assert (=> b!3200715 (= lt!1079522 (forallContained!1173 tokens!494 lambda!117169 (h!41507 (t!237442 tokens!494))))))

(declare-fun lt!1079503 () Unit!50496)

(assert (=> b!3200715 (= lt!1079503 (forallContained!1173 tokens!494 lambda!117169 (h!41507 tokens!494)))))

(declare-fun b!3200716 () Bool)

(declare-fun e!1995529 () Bool)

(declare-fun e!1995519 () Bool)

(assert (=> b!3200716 (= e!1995529 e!1995519)))

(declare-fun res!1302424 () Bool)

(assert (=> b!3200716 (=> (not res!1302424) (not e!1995519))))

(declare-fun lt!1079505 () Rule!10204)

(declare-fun matchR!4595 (Regex!9961 List!36209) Bool)

(assert (=> b!3200716 (= res!1302424 (matchR!4595 (regex!5202 lt!1079505) lt!1079511))))

(declare-datatypes ((Option!7099 0))(
  ( (None!7098) (Some!7098 (v!35628 Rule!10204)) )
))
(declare-fun lt!1079508 () Option!7099)

(declare-fun get!11480 (Option!7099) Rule!10204)

(assert (=> b!3200716 (= lt!1079505 (get!11480 lt!1079508))))

(declare-fun b!3200717 () Bool)

(assert (=> b!3200717 (= e!1995535 e!1995514)))

(declare-fun res!1302426 () Bool)

(assert (=> b!3200717 (=> res!1302426 e!1995514)))

(assert (=> b!3200717 (= res!1302426 (or (not (= lt!1079499 lt!1079511)) (not (= lt!1079512 lt!1079511))))))

(declare-fun charsOf!3218 (Token!9770) BalanceConc!21172)

(assert (=> b!3200717 (= lt!1079511 (list!12827 (charsOf!3218 (h!41507 tokens!494))))))

(declare-fun b!3200718 () Bool)

(assert (=> b!3200718 (= e!1995519 (= (rule!7638 (h!41507 tokens!494)) lt!1079505))))

(declare-fun b!3200719 () Bool)

(declare-fun Unit!50499 () Unit!50496)

(assert (=> b!3200719 (= e!1995513 Unit!50499)))

(declare-fun lt!1079500 () C!20108)

(declare-fun lt!1079504 () Unit!50496)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!366 (Regex!9961 List!36209 C!20108) Unit!50496)

(assert (=> b!3200719 (= lt!1079504 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!366 (regex!5202 (rule!7638 separatorToken!241)) lt!1079501 lt!1079500))))

(declare-fun res!1302414 () Bool)

(assert (=> b!3200719 (= res!1302414 (not (matchR!4595 (regex!5202 (rule!7638 separatorToken!241)) lt!1079501)))))

(assert (=> b!3200719 (=> (not res!1302414) (not e!1995524))))

(assert (=> b!3200719 e!1995524))

(declare-fun b!3200720 () Bool)

(declare-fun e!1995536 () Bool)

(declare-fun lt!1079521 () tuple2!35462)

(declare-fun isEmpty!20169 (BalanceConc!21172) Bool)

(assert (=> b!3200720 (= e!1995536 (isEmpty!20169 (_2!20865 lt!1079521)))))

(declare-fun b!3200721 () Bool)

(declare-fun e!1995517 () Bool)

(assert (=> b!3200721 (= e!1995517 e!1995522)))

(declare-fun res!1302423 () Bool)

(assert (=> b!3200721 (=> (not res!1302423) (not e!1995522))))

(assert (=> b!3200721 (= res!1302423 (matchR!4595 (regex!5202 lt!1079513) lt!1079501))))

(declare-fun lt!1079519 () Option!7099)

(assert (=> b!3200721 (= lt!1079513 (get!11480 lt!1079519))))

(declare-fun b!3200722 () Bool)

(declare-fun e!1995510 () Bool)

(declare-fun tp!1011662 () Bool)

(assert (=> b!3200722 (= e!1995515 (and e!1995510 tp!1011662))))

(declare-fun b!3200723 () Bool)

(declare-fun res!1302412 () Bool)

(assert (=> b!3200723 (=> (not res!1302412) (not e!1995538))))

(declare-fun rulesProduceEachTokenIndividually!1242 (LexerInterface!4791 List!36210 BalanceConc!21174) Bool)

(declare-fun seqFromList!3476 (List!36211) BalanceConc!21174)

(assert (=> b!3200723 (= res!1302412 (rulesProduceEachTokenIndividually!1242 thiss!18206 rules!2135 (seqFromList!3476 tokens!494)))))

(declare-fun b!3200724 () Bool)

(declare-fun tp!1011666 () Bool)

(assert (=> b!3200724 (= e!1995512 (and tp!1011666 (inv!48935 (tag!5724 (rule!7638 separatorToken!241))) (inv!48939 (transformation!5202 (rule!7638 separatorToken!241))) e!1995528))))

(declare-fun b!3200725 () Bool)

(declare-fun res!1302417 () Bool)

(assert (=> b!3200725 (=> (not res!1302417) (not e!1995538))))

(declare-fun sepAndNonSepRulesDisjointChars!1396 (List!36210 List!36210) Bool)

(assert (=> b!3200725 (= res!1302417 (sepAndNonSepRulesDisjointChars!1396 rules!2135 rules!2135))))

(declare-fun b!3200726 () Bool)

(declare-fun tp!1011669 () Bool)

(declare-fun e!1995516 () Bool)

(assert (=> b!3200726 (= e!1995521 (and (inv!48938 (h!41507 tokens!494)) e!1995516 tp!1011669))))

(declare-fun b!3200727 () Bool)

(declare-fun tp!1011674 () Bool)

(assert (=> b!3200727 (= e!1995516 (and (inv!21 (value!168717 (h!41507 tokens!494))) e!1995526 tp!1011674))))

(declare-fun b!3200728 () Bool)

(declare-fun res!1302419 () Bool)

(assert (=> b!3200728 (=> (not res!1302419) (not e!1995538))))

(declare-fun rulesProduceIndividualToken!2283 (LexerInterface!4791 List!36210 Token!9770) Bool)

(assert (=> b!3200728 (= res!1302419 (rulesProduceIndividualToken!2283 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3200729 () Bool)

(declare-fun tp!1011671 () Bool)

(assert (=> b!3200729 (= e!1995510 (and tp!1011671 (inv!48935 (tag!5724 (h!41506 rules!2135))) (inv!48939 (transformation!5202 (h!41506 rules!2135))) e!1995525))))

(declare-fun b!3200730 () Bool)

(declare-fun res!1302427 () Bool)

(assert (=> b!3200730 (=> (not res!1302427) (not e!1995536))))

(declare-fun apply!8141 (BalanceConc!21174 Int) Token!9770)

(assert (=> b!3200730 (= res!1302427 (= (apply!8141 (_1!20865 lt!1079521) 0) separatorToken!241))))

(declare-fun b!3200731 () Bool)

(assert (=> b!3200731 (= e!1995511 e!1995518)))

(declare-fun res!1302410 () Bool)

(assert (=> b!3200731 (=> res!1302410 e!1995518)))

(declare-fun printWithSeparatorTokenList!136 (LexerInterface!4791 List!36211 Token!9770) List!36209)

(assert (=> b!3200731 (= res!1302410 (not (= lt!1079506 (++!8646 (++!8646 (list!12827 (charsOf!3218 (h!41507 (t!237442 tokens!494)))) lt!1079501) (printWithSeparatorTokenList!136 thiss!18206 (t!237442 (t!237442 tokens!494)) separatorToken!241)))))))

(assert (=> b!3200731 (= lt!1079507 (++!8646 lt!1079501 lt!1079506))))

(assert (=> b!3200731 (= lt!1079501 (list!12827 (charsOf!3218 separatorToken!241)))))

(assert (=> b!3200731 (= lt!1079506 (printWithSeparatorTokenList!136 thiss!18206 (t!237442 tokens!494) separatorToken!241))))

(assert (=> b!3200731 (= lt!1079495 (printWithSeparatorTokenList!136 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3200732 () Bool)

(assert (=> b!3200732 (= e!1995534 true)))

(declare-fun lt!1079498 () BalanceConc!21174)

(assert (=> b!3200732 (= (print!1856 thiss!18206 lt!1079498) (printTailRec!1288 thiss!18206 lt!1079498 0 (BalanceConc!21173 Empty!10779)))))

(assert (=> b!3200732 (= lt!1079498 (singletonSeq!2298 (h!41507 (t!237442 tokens!494))))))

(assert (=> b!3200732 e!1995536))

(declare-fun res!1302421 () Bool)

(assert (=> b!3200732 (=> (not res!1302421) (not e!1995536))))

(declare-fun size!27178 (BalanceConc!21174) Int)

(assert (=> b!3200732 (= res!1302421 (= (size!27178 (_1!20865 lt!1079521)) 1))))

(declare-fun lt!1079509 () BalanceConc!21172)

(assert (=> b!3200732 (= lt!1079521 (lex!2121 thiss!18206 rules!2135 lt!1079509))))

(declare-fun lt!1079520 () BalanceConc!21174)

(assert (=> b!3200732 (= lt!1079509 (printTailRec!1288 thiss!18206 lt!1079520 0 (BalanceConc!21173 Empty!10779)))))

(assert (=> b!3200732 (= lt!1079509 (print!1856 thiss!18206 lt!1079520))))

(assert (=> b!3200732 (= lt!1079520 (singletonSeq!2298 separatorToken!241))))

(declare-fun lt!1079502 () Unit!50496)

(assert (=> b!3200732 (= lt!1079502 e!1995513)))

(declare-fun c!537357 () Bool)

(declare-fun contains!6419 (List!36209 C!20108) Bool)

(declare-fun usedCharacters!518 (Regex!9961) List!36209)

(assert (=> b!3200732 (= c!537357 (not (contains!6419 (usedCharacters!518 (regex!5202 (rule!7638 separatorToken!241))) lt!1079500)))))

(declare-fun head!7017 (List!36209) C!20108)

(assert (=> b!3200732 (= lt!1079500 (head!7017 lt!1079501))))

(assert (=> b!3200732 e!1995517))

(declare-fun res!1302432 () Bool)

(assert (=> b!3200732 (=> (not res!1302432) (not e!1995517))))

(declare-fun isDefined!5530 (Option!7099) Bool)

(assert (=> b!3200732 (= res!1302432 (isDefined!5530 lt!1079519))))

(declare-fun getRuleFromTag!907 (LexerInterface!4791 List!36210 String!40494) Option!7099)

(assert (=> b!3200732 (= lt!1079519 (getRuleFromTag!907 thiss!18206 rules!2135 (tag!5724 (rule!7638 separatorToken!241))))))

(declare-fun lt!1079515 () Unit!50496)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!907 (LexerInterface!4791 List!36210 List!36209 Token!9770) Unit!50496)

(assert (=> b!3200732 (= lt!1079515 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!907 thiss!18206 rules!2135 lt!1079501 separatorToken!241))))

(declare-datatypes ((tuple2!35464 0))(
  ( (tuple2!35465 (_1!20866 Token!9770) (_2!20866 List!36209)) )
))
(declare-datatypes ((Option!7100 0))(
  ( (None!7099) (Some!7099 (v!35629 tuple2!35464)) )
))
(declare-fun maxPrefixOneRule!1570 (LexerInterface!4791 Rule!10204 List!36209) Option!7100)

(declare-fun apply!8142 (TokenValueInjection!10292 BalanceConc!21172) TokenValue!5432)

(declare-fun size!27179 (List!36209) Int)

(assert (=> b!3200732 (= (maxPrefixOneRule!1570 thiss!18206 (rule!7638 (h!41507 tokens!494)) lt!1079511) (Some!7099 (tuple2!35465 (Token!9771 (apply!8142 (transformation!5202 (rule!7638 (h!41507 tokens!494))) lt!1079494) (rule!7638 (h!41507 tokens!494)) (size!27179 lt!1079511) lt!1079511) Nil!36085)))))

(declare-fun lt!1079510 () Unit!50496)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!683 (LexerInterface!4791 List!36210 List!36209 List!36209 List!36209 Rule!10204) Unit!50496)

(assert (=> b!3200732 (= lt!1079510 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!683 thiss!18206 rules!2135 lt!1079511 lt!1079511 Nil!36085 (rule!7638 (h!41507 tokens!494))))))

(assert (=> b!3200732 e!1995529))

(declare-fun res!1302416 () Bool)

(assert (=> b!3200732 (=> (not res!1302416) (not e!1995529))))

(assert (=> b!3200732 (= res!1302416 (isDefined!5530 lt!1079508))))

(assert (=> b!3200732 (= lt!1079508 (getRuleFromTag!907 thiss!18206 rules!2135 (tag!5724 (rule!7638 (h!41507 tokens!494)))))))

(declare-fun lt!1079518 () Unit!50496)

(assert (=> b!3200732 (= lt!1079518 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!907 thiss!18206 rules!2135 lt!1079511 (h!41507 tokens!494)))))

(declare-fun lt!1079493 () Unit!50496)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!830 (LexerInterface!4791 List!36210 List!36211 Token!9770) Unit!50496)

(assert (=> b!3200732 (= lt!1079493 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!830 thiss!18206 rules!2135 tokens!494 (h!41507 tokens!494)))))

(declare-fun b!3200733 () Bool)

(declare-fun res!1302425 () Bool)

(assert (=> b!3200733 (=> (not res!1302425) (not e!1995538))))

(assert (=> b!3200733 (= res!1302425 (and (not ((_ is Nil!36087) tokens!494)) (not ((_ is Nil!36087) (t!237442 tokens!494)))))))

(declare-fun b!3200734 () Bool)

(declare-fun res!1302428 () Bool)

(assert (=> b!3200734 (=> res!1302428 e!1995514)))

(assert (=> b!3200734 (= res!1302428 (not (rulesProduceIndividualToken!2283 thiss!18206 rules!2135 (h!41507 tokens!494))))))

(assert (= (and start!300438 res!1302415) b!3200707))

(assert (= (and b!3200707 res!1302420) b!3200699))

(assert (= (and b!3200699 res!1302409) b!3200723))

(assert (= (and b!3200723 res!1302412) b!3200728))

(assert (= (and b!3200728 res!1302419) b!3200702))

(assert (= (and b!3200702 res!1302430) b!3200712))

(assert (= (and b!3200712 res!1302431) b!3200725))

(assert (= (and b!3200725 res!1302417) b!3200733))

(assert (= (and b!3200733 res!1302425) b!3200705))

(assert (= (and b!3200705 (not res!1302411)) b!3200717))

(assert (= (and b!3200717 (not res!1302426)) b!3200734))

(assert (= (and b!3200734 (not res!1302428)) b!3200706))

(assert (= (and b!3200706 (not res!1302429)) b!3200715))

(assert (= (and b!3200715 (not res!1302418)) b!3200731))

(assert (= (and b!3200731 (not res!1302410)) b!3200714))

(assert (= (and b!3200714 (not res!1302413)) b!3200704))

(assert (= (and b!3200704 (not res!1302422)) b!3200732))

(assert (= (and b!3200732 res!1302416) b!3200716))

(assert (= (and b!3200716 res!1302424) b!3200718))

(assert (= (and b!3200732 res!1302432) b!3200721))

(assert (= (and b!3200721 res!1302423) b!3200711))

(assert (= (and b!3200732 c!537357) b!3200719))

(assert (= (and b!3200732 (not c!537357)) b!3200708))

(assert (= (and b!3200719 res!1302414) b!3200701))

(assert (= (and b!3200732 res!1302421) b!3200730))

(assert (= (and b!3200730 res!1302427) b!3200720))

(assert (= b!3200729 b!3200700))

(assert (= b!3200722 b!3200729))

(assert (= (and start!300438 ((_ is Cons!36086) rules!2135)) b!3200722))

(assert (= b!3200709 b!3200710))

(assert (= b!3200727 b!3200709))

(assert (= b!3200726 b!3200727))

(assert (= (and start!300438 ((_ is Cons!36087) tokens!494)) b!3200726))

(assert (= b!3200724 b!3200713))

(assert (= b!3200703 b!3200724))

(assert (= start!300438 b!3200703))

(declare-fun m!3462847 () Bool)

(assert (=> b!3200729 m!3462847))

(declare-fun m!3462849 () Bool)

(assert (=> b!3200729 m!3462849))

(declare-fun m!3462851 () Bool)

(assert (=> b!3200730 m!3462851))

(declare-fun m!3462853 () Bool)

(assert (=> b!3200706 m!3462853))

(declare-fun m!3462855 () Bool)

(assert (=> b!3200706 m!3462855))

(declare-fun m!3462857 () Bool)

(assert (=> b!3200706 m!3462857))

(declare-fun m!3462859 () Bool)

(assert (=> b!3200717 m!3462859))

(assert (=> b!3200717 m!3462859))

(declare-fun m!3462861 () Bool)

(assert (=> b!3200717 m!3462861))

(declare-fun m!3462863 () Bool)

(assert (=> b!3200726 m!3462863))

(declare-fun m!3462865 () Bool)

(assert (=> b!3200734 m!3462865))

(declare-fun m!3462867 () Bool)

(assert (=> b!3200720 m!3462867))

(declare-fun m!3462869 () Bool)

(assert (=> start!300438 m!3462869))

(declare-fun m!3462871 () Bool)

(assert (=> b!3200707 m!3462871))

(declare-fun m!3462873 () Bool)

(assert (=> b!3200728 m!3462873))

(declare-fun m!3462875 () Bool)

(assert (=> b!3200715 m!3462875))

(declare-fun m!3462877 () Bool)

(assert (=> b!3200715 m!3462877))

(declare-fun m!3462879 () Bool)

(assert (=> b!3200727 m!3462879))

(declare-fun m!3462881 () Bool)

(assert (=> b!3200731 m!3462881))

(declare-fun m!3462883 () Bool)

(assert (=> b!3200731 m!3462883))

(declare-fun m!3462885 () Bool)

(assert (=> b!3200731 m!3462885))

(declare-fun m!3462887 () Bool)

(assert (=> b!3200731 m!3462887))

(declare-fun m!3462889 () Bool)

(assert (=> b!3200731 m!3462889))

(declare-fun m!3462891 () Bool)

(assert (=> b!3200731 m!3462891))

(declare-fun m!3462893 () Bool)

(assert (=> b!3200731 m!3462893))

(assert (=> b!3200731 m!3462881))

(declare-fun m!3462895 () Bool)

(assert (=> b!3200731 m!3462895))

(assert (=> b!3200731 m!3462887))

(assert (=> b!3200731 m!3462893))

(assert (=> b!3200731 m!3462883))

(declare-fun m!3462897 () Bool)

(assert (=> b!3200731 m!3462897))

(assert (=> b!3200731 m!3462889))

(declare-fun m!3462899 () Bool)

(assert (=> b!3200731 m!3462899))

(declare-fun m!3462901 () Bool)

(assert (=> b!3200704 m!3462901))

(declare-fun m!3462903 () Bool)

(assert (=> b!3200704 m!3462903))

(declare-fun m!3462905 () Bool)

(assert (=> b!3200705 m!3462905))

(declare-fun m!3462907 () Bool)

(assert (=> b!3200705 m!3462907))

(declare-fun m!3462909 () Bool)

(assert (=> b!3200705 m!3462909))

(declare-fun m!3462911 () Bool)

(assert (=> b!3200705 m!3462911))

(declare-fun m!3462913 () Bool)

(assert (=> b!3200705 m!3462913))

(declare-fun m!3462915 () Bool)

(assert (=> b!3200709 m!3462915))

(declare-fun m!3462917 () Bool)

(assert (=> b!3200709 m!3462917))

(declare-fun m!3462919 () Bool)

(assert (=> b!3200703 m!3462919))

(declare-fun m!3462921 () Bool)

(assert (=> b!3200732 m!3462921))

(declare-fun m!3462923 () Bool)

(assert (=> b!3200732 m!3462923))

(declare-fun m!3462925 () Bool)

(assert (=> b!3200732 m!3462925))

(declare-fun m!3462927 () Bool)

(assert (=> b!3200732 m!3462927))

(declare-fun m!3462929 () Bool)

(assert (=> b!3200732 m!3462929))

(declare-fun m!3462931 () Bool)

(assert (=> b!3200732 m!3462931))

(declare-fun m!3462933 () Bool)

(assert (=> b!3200732 m!3462933))

(declare-fun m!3462935 () Bool)

(assert (=> b!3200732 m!3462935))

(declare-fun m!3462937 () Bool)

(assert (=> b!3200732 m!3462937))

(declare-fun m!3462939 () Bool)

(assert (=> b!3200732 m!3462939))

(declare-fun m!3462941 () Bool)

(assert (=> b!3200732 m!3462941))

(declare-fun m!3462943 () Bool)

(assert (=> b!3200732 m!3462943))

(declare-fun m!3462945 () Bool)

(assert (=> b!3200732 m!3462945))

(declare-fun m!3462947 () Bool)

(assert (=> b!3200732 m!3462947))

(declare-fun m!3462949 () Bool)

(assert (=> b!3200732 m!3462949))

(declare-fun m!3462951 () Bool)

(assert (=> b!3200732 m!3462951))

(declare-fun m!3462953 () Bool)

(assert (=> b!3200732 m!3462953))

(declare-fun m!3462955 () Bool)

(assert (=> b!3200732 m!3462955))

(declare-fun m!3462957 () Bool)

(assert (=> b!3200732 m!3462957))

(assert (=> b!3200732 m!3462953))

(declare-fun m!3462959 () Bool)

(assert (=> b!3200732 m!3462959))

(declare-fun m!3462961 () Bool)

(assert (=> b!3200732 m!3462961))

(declare-fun m!3462963 () Bool)

(assert (=> b!3200732 m!3462963))

(declare-fun m!3462965 () Bool)

(assert (=> b!3200724 m!3462965))

(declare-fun m!3462967 () Bool)

(assert (=> b!3200724 m!3462967))

(declare-fun m!3462969 () Bool)

(assert (=> b!3200699 m!3462969))

(declare-fun m!3462971 () Bool)

(assert (=> b!3200725 m!3462971))

(declare-fun m!3462973 () Bool)

(assert (=> b!3200723 m!3462973))

(assert (=> b!3200723 m!3462973))

(declare-fun m!3462975 () Bool)

(assert (=> b!3200723 m!3462975))

(declare-fun m!3462977 () Bool)

(assert (=> b!3200716 m!3462977))

(declare-fun m!3462979 () Bool)

(assert (=> b!3200716 m!3462979))

(declare-fun m!3462981 () Bool)

(assert (=> b!3200712 m!3462981))

(declare-fun m!3462983 () Bool)

(assert (=> b!3200721 m!3462983))

(declare-fun m!3462985 () Bool)

(assert (=> b!3200721 m!3462985))

(declare-fun m!3462987 () Bool)

(assert (=> b!3200719 m!3462987))

(declare-fun m!3462989 () Bool)

(assert (=> b!3200719 m!3462989))

(declare-fun m!3462991 () Bool)

(assert (=> b!3200714 m!3462991))

(assert (=> b!3200714 m!3462991))

(declare-fun m!3462993 () Bool)

(assert (=> b!3200714 m!3462993))

(check-sat (not b!3200715) (not b!3200721) (not b!3200731) b_and!212763 b_and!212767 (not b!3200732) (not b!3200730) (not b_next!85781) (not b!3200728) (not b!3200716) (not b_next!85783) (not b!3200699) (not b!3200707) b_and!212761 (not b!3200706) (not b!3200727) (not b!3200714) (not b!3200724) (not b!3200722) (not b!3200703) b_and!212769 (not b!3200726) (not start!300438) (not b!3200725) (not b!3200729) (not b_next!85777) (not b!3200709) (not b!3200734) (not b_next!85785) (not b_next!85787) b_and!212765 (not b!3200704) (not b!3200720) (not b_next!85779) b_and!212759 (not b!3200717) (not b!3200705) (not b!3200712) (not b!3200719) (not b!3200723))
(check-sat b_and!212763 b_and!212761 b_and!212767 b_and!212769 (not b_next!85781) (not b_next!85777) (not b_next!85785) (not b_next!85783) (not b_next!85787) b_and!212765 (not b_next!85779) b_and!212759)
