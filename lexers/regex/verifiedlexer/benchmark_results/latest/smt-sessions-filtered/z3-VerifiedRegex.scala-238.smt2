; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3630 () Bool)

(assert start!3630)

(declare-fun b!50436 () Bool)

(declare-fun b_free!1541 () Bool)

(declare-fun b_next!1541 () Bool)

(assert (=> b!50436 (= b_free!1541 (not b_next!1541))))

(declare-fun tp!33409 () Bool)

(declare-fun b_and!1583 () Bool)

(assert (=> b!50436 (= tp!33409 b_and!1583)))

(declare-fun b_free!1543 () Bool)

(declare-fun b_next!1543 () Bool)

(assert (=> b!50436 (= b_free!1543 (not b_next!1543))))

(declare-fun tp!33408 () Bool)

(declare-fun b_and!1585 () Bool)

(assert (=> b!50436 (= tp!33408 b_and!1585)))

(declare-fun b!50429 () Bool)

(declare-fun res!33136 () Bool)

(declare-fun e!29548 () Bool)

(assert (=> b!50429 (=> (not res!33136) (not e!29548))))

(declare-fun from!821 () Int)

(declare-fun lt!8421 () Int)

(assert (=> b!50429 (= res!33136 (< from!821 (- lt!8421 1)))))

(declare-fun b!50431 () Bool)

(declare-fun res!33133 () Bool)

(declare-fun e!29551 () Bool)

(assert (=> b!50431 (=> res!33133 e!29551)))

(declare-datatypes ((List!974 0))(
  ( (Nil!968) (Cons!968 (h!6365 (_ BitVec 16)) (t!17177 List!974)) )
))
(declare-datatypes ((TokenValue!197 0))(
  ( (FloatLiteralValue!394 (text!1824 List!974)) (TokenValueExt!196 (__x!1489 Int)) (Broken!985 (value!8771 List!974)) (Object!202) (End!197) (Def!197) (Underscore!197) (Match!197) (Else!197) (Error!197) (Case!197) (If!197) (Extends!197) (Abstract!197) (Class!197) (Val!197) (DelimiterValue!394 (del!257 List!974)) (KeywordValue!203 (value!8772 List!974)) (CommentValue!394 (value!8773 List!974)) (WhitespaceValue!394 (value!8774 List!974)) (IndentationValue!197 (value!8775 List!974)) (String!1376) (Int32!197) (Broken!986 (value!8776 List!974)) (Boolean!198) (Unit!541) (OperatorValue!200 (op!257 List!974)) (IdentifierValue!394 (value!8777 List!974)) (IdentifierValue!395 (value!8778 List!974)) (WhitespaceValue!395 (value!8779 List!974)) (True!394) (False!394) (Broken!987 (value!8780 List!974)) (Broken!988 (value!8781 List!974)) (True!395) (RightBrace!197) (RightBracket!197) (Colon!197) (Null!197) (Comma!197) (LeftBracket!197) (False!395) (LeftBrace!197) (ImaginaryLiteralValue!197 (text!1825 List!974)) (StringLiteralValue!591 (value!8782 List!974)) (EOFValue!197 (value!8783 List!974)) (IdentValue!197 (value!8784 List!974)) (DelimiterValue!395 (value!8785 List!974)) (DedentValue!197 (value!8786 List!974)) (NewLineValue!197 (value!8787 List!974)) (IntegerValue!591 (value!8788 (_ BitVec 32)) (text!1826 List!974)) (IntegerValue!592 (value!8789 Int) (text!1827 List!974)) (Times!197) (Or!197) (Equal!197) (Minus!197) (Broken!989 (value!8790 List!974)) (And!197) (Div!197) (LessEqual!197) (Mod!197) (Concat!472) (Not!197) (Plus!197) (SpaceValue!197 (value!8791 List!974)) (IntegerValue!593 (value!8792 Int) (text!1828 List!974)) (StringLiteralValue!592 (text!1829 List!974)) (FloatLiteralValue!395 (text!1830 List!974)) (BytesLiteralValue!197 (value!8793 List!974)) (CommentValue!395 (value!8794 List!974)) (StringLiteralValue!593 (value!8795 List!974)) (ErrorTokenValue!197 (msg!258 List!974)) )
))
(declare-datatypes ((C!1472 0))(
  ( (C!1473 (val!343 Int)) )
))
(declare-datatypes ((List!975 0))(
  ( (Nil!969) (Cons!969 (h!6366 C!1472) (t!17178 List!975)) )
))
(declare-datatypes ((IArray!437 0))(
  ( (IArray!438 (innerList!276 List!975)) )
))
(declare-datatypes ((Conc!218 0))(
  ( (Node!218 (left!734 Conc!218) (right!1064 Conc!218) (csize!666 Int) (cheight!429 Int)) (Leaf!457 (xs!2797 IArray!437) (csize!667 Int)) (Empty!218) )
))
(declare-datatypes ((String!1377 0))(
  ( (String!1378 (value!8796 String)) )
))
(declare-datatypes ((Regex!275 0))(
  ( (ElementMatch!275 (c!16609 C!1472)) (Concat!473 (regOne!1062 Regex!275) (regTwo!1062 Regex!275)) (EmptyExpr!275) (Star!275 (reg!604 Regex!275)) (EmptyLang!275) (Union!275 (regOne!1063 Regex!275) (regTwo!1063 Regex!275)) )
))
(declare-datatypes ((BalanceConc!440 0))(
  ( (BalanceConc!441 (c!16610 Conc!218)) )
))
(declare-datatypes ((TokenValueInjection!218 0))(
  ( (TokenValueInjection!219 (toValue!686 Int) (toChars!545 Int)) )
))
(declare-datatypes ((Rule!214 0))(
  ( (Rule!215 (regex!207 Regex!275) (tag!385 String!1377) (isSeparator!207 Bool) (transformation!207 TokenValueInjection!218)) )
))
(declare-datatypes ((Token!178 0))(
  ( (Token!179 (value!8797 TokenValue!197) (rule!682 Rule!214) (size!913 Int) (originalCharacters!260 List!975)) )
))
(declare-datatypes ((List!976 0))(
  ( (Nil!970) (Cons!970 (h!6367 Token!178) (t!17179 List!976)) )
))
(declare-fun lt!8424 () List!976)

(declare-fun lt!8427 () Token!178)

(declare-fun contains!80 (List!976 Token!178) Bool)

(assert (=> b!50431 (= res!33133 (not (contains!80 lt!8424 lt!8427)))))

(declare-fun b!50432 () Bool)

(declare-fun res!33132 () Bool)

(declare-fun e!29543 () Bool)

(assert (=> b!50432 (=> res!33132 e!29543)))

(declare-fun lt!8431 () Token!178)

(assert (=> b!50432 (= res!33132 (not (contains!80 lt!8424 lt!8431)))))

(declare-fun b!50433 () Bool)

(assert (=> b!50433 (= e!29551 (and (<= 0 from!821) (< from!821 lt!8421)))))

(declare-datatypes ((LexerInterface!99 0))(
  ( (LexerInterfaceExt!96 (__x!1490 Int)) (Lexer!97) )
))
(declare-fun thiss!11059 () LexerInterface!99)

(declare-datatypes ((List!977 0))(
  ( (Nil!971) (Cons!971 (h!6368 Rule!214) (t!17180 List!977)) )
))
(declare-fun rules!1069 () List!977)

(declare-fun rulesProduceIndividualToken!18 (LexerInterface!99 List!977 Token!178) Bool)

(assert (=> b!50433 (rulesProduceIndividualToken!18 thiss!11059 rules!1069 lt!8427)))

(declare-datatypes ((Unit!542 0))(
  ( (Unit!543) )
))
(declare-fun lt!8432 () Unit!542)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!6 (LexerInterface!99 List!977 List!976 Token!178) Unit!542)

(assert (=> b!50433 (= lt!8432 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!6 thiss!11059 rules!1069 lt!8424 lt!8427))))

(assert (=> b!50433 (rulesProduceIndividualToken!18 thiss!11059 rules!1069 lt!8431)))

(declare-fun lt!8425 () Unit!542)

(assert (=> b!50433 (= lt!8425 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!6 thiss!11059 rules!1069 lt!8424 lt!8431))))

(declare-fun b!50434 () Bool)

(declare-fun e!29550 () Bool)

(declare-fun tp!33407 () Bool)

(declare-fun e!29544 () Bool)

(declare-fun inv!1283 (String!1377) Bool)

(declare-fun inv!1287 (TokenValueInjection!218) Bool)

(assert (=> b!50434 (= e!29550 (and tp!33407 (inv!1283 (tag!385 (h!6368 rules!1069))) (inv!1287 (transformation!207 (h!6368 rules!1069))) e!29544))))

(declare-fun b!50435 () Bool)

(declare-fun res!33134 () Bool)

(assert (=> b!50435 (=> (not res!33134) (not e!29548))))

(declare-fun rulesInvariant!93 (LexerInterface!99 List!977) Bool)

(assert (=> b!50435 (= res!33134 (rulesInvariant!93 thiss!11059 rules!1069))))

(assert (=> b!50436 (= e!29544 (and tp!33409 tp!33408))))

(declare-fun res!33131 () Bool)

(declare-fun e!29545 () Bool)

(assert (=> start!3630 (=> (not res!33131) (not e!29545))))

(get-info :version)

(assert (=> start!3630 (= res!33131 (and ((_ is Lexer!97) thiss!11059) (>= from!821 0)))))

(assert (=> start!3630 e!29545))

(assert (=> start!3630 true))

(declare-datatypes ((IArray!439 0))(
  ( (IArray!440 (innerList!277 List!976)) )
))
(declare-datatypes ((Conc!219 0))(
  ( (Node!219 (left!735 Conc!219) (right!1065 Conc!219) (csize!668 Int) (cheight!430 Int)) (Leaf!458 (xs!2798 IArray!439) (csize!669 Int)) (Empty!219) )
))
(declare-datatypes ((BalanceConc!442 0))(
  ( (BalanceConc!443 (c!16611 Conc!219)) )
))
(declare-fun v!6227 () BalanceConc!442)

(declare-fun e!29549 () Bool)

(declare-fun inv!1288 (BalanceConc!442) Bool)

(assert (=> start!3630 (and (inv!1288 v!6227) e!29549)))

(declare-fun e!29547 () Bool)

(assert (=> start!3630 e!29547))

(declare-fun b!50430 () Bool)

(declare-fun tp!33410 () Bool)

(declare-fun inv!1289 (Conc!219) Bool)

(assert (=> b!50430 (= e!29549 (and (inv!1289 (c!16611 v!6227)) tp!33410))))

(declare-fun b!50437 () Bool)

(assert (=> b!50437 (= e!29543 e!29551)))

(declare-fun res!33139 () Bool)

(assert (=> b!50437 (=> res!33139 e!29551)))

(declare-fun contains!81 (BalanceConc!442 Token!178) Bool)

(assert (=> b!50437 (= res!33139 (not (contains!81 v!6227 lt!8427)))))

(declare-fun apply!64 (BalanceConc!442 Int) Token!178)

(assert (=> b!50437 (= lt!8427 (apply!64 v!6227 (+ 1 from!821)))))

(declare-fun b!50438 () Bool)

(declare-fun tp!33406 () Bool)

(assert (=> b!50438 (= e!29547 (and e!29550 tp!33406))))

(declare-fun b!50439 () Bool)

(declare-fun res!33140 () Bool)

(assert (=> b!50439 (=> (not res!33140) (not e!29548))))

(declare-fun rulesProduceEachTokenIndividually!37 (LexerInterface!99 List!977 BalanceConc!442) Bool)

(assert (=> b!50439 (= res!33140 (rulesProduceEachTokenIndividually!37 thiss!11059 rules!1069 v!6227))))

(declare-fun b!50440 () Bool)

(assert (=> b!50440 (= e!29545 e!29548)))

(declare-fun res!33138 () Bool)

(assert (=> b!50440 (=> (not res!33138) (not e!29548))))

(assert (=> b!50440 (= res!33138 (<= from!821 lt!8421))))

(declare-fun size!914 (BalanceConc!442) Int)

(assert (=> b!50440 (= lt!8421 (size!914 v!6227))))

(declare-fun b!50441 () Bool)

(assert (=> b!50441 (= e!29548 (not e!29543))))

(declare-fun res!33135 () Bool)

(assert (=> b!50441 (=> res!33135 e!29543)))

(assert (=> b!50441 (= res!33135 (not (contains!81 v!6227 lt!8431)))))

(assert (=> b!50441 (= lt!8431 (apply!64 v!6227 from!821))))

(declare-fun lt!8430 () List!976)

(declare-fun tail!49 (List!976) List!976)

(declare-fun drop!24 (List!976 Int) List!976)

(assert (=> b!50441 (= (tail!49 lt!8430) (drop!24 lt!8424 (+ 2 from!821)))))

(declare-fun lt!8423 () Unit!542)

(declare-fun lemmaDropTail!20 (List!976 Int) Unit!542)

(assert (=> b!50441 (= lt!8423 (lemmaDropTail!20 lt!8424 (+ 1 from!821)))))

(declare-fun lt!8429 () List!976)

(assert (=> b!50441 (= (tail!49 lt!8429) lt!8430)))

(declare-fun lt!8422 () Unit!542)

(assert (=> b!50441 (= lt!8422 (lemmaDropTail!20 lt!8424 from!821))))

(declare-fun head!364 (List!976) Token!178)

(declare-fun apply!65 (List!976 Int) Token!178)

(assert (=> b!50441 (= (head!364 lt!8430) (apply!65 lt!8424 (+ 1 from!821)))))

(assert (=> b!50441 (= lt!8430 (drop!24 lt!8424 (+ 1 from!821)))))

(declare-fun lt!8428 () Unit!542)

(declare-fun lemmaDropApply!24 (List!976 Int) Unit!542)

(assert (=> b!50441 (= lt!8428 (lemmaDropApply!24 lt!8424 (+ 1 from!821)))))

(assert (=> b!50441 (= (head!364 lt!8429) (apply!65 lt!8424 from!821))))

(assert (=> b!50441 (= lt!8429 (drop!24 lt!8424 from!821))))

(declare-fun lt!8426 () Unit!542)

(assert (=> b!50441 (= lt!8426 (lemmaDropApply!24 lt!8424 from!821))))

(declare-fun list!248 (BalanceConc!442) List!976)

(assert (=> b!50441 (= lt!8424 (list!248 v!6227))))

(declare-fun b!50442 () Bool)

(declare-fun res!33137 () Bool)

(assert (=> b!50442 (=> (not res!33137) (not e!29548))))

(declare-fun isEmpty!193 (List!977) Bool)

(assert (=> b!50442 (= res!33137 (not (isEmpty!193 rules!1069)))))

(assert (= (and start!3630 res!33131) b!50440))

(assert (= (and b!50440 res!33138) b!50442))

(assert (= (and b!50442 res!33137) b!50435))

(assert (= (and b!50435 res!33134) b!50439))

(assert (= (and b!50439 res!33140) b!50429))

(assert (= (and b!50429 res!33136) b!50441))

(assert (= (and b!50441 (not res!33135)) b!50432))

(assert (= (and b!50432 (not res!33132)) b!50437))

(assert (= (and b!50437 (not res!33139)) b!50431))

(assert (= (and b!50431 (not res!33133)) b!50433))

(assert (= start!3630 b!50430))

(assert (= b!50434 b!50436))

(assert (= b!50438 b!50434))

(assert (= (and start!3630 ((_ is Cons!971) rules!1069)) b!50438))

(declare-fun m!24514 () Bool)

(assert (=> b!50430 m!24514))

(declare-fun m!24516 () Bool)

(assert (=> b!50442 m!24516))

(declare-fun m!24518 () Bool)

(assert (=> b!50432 m!24518))

(declare-fun m!24520 () Bool)

(assert (=> b!50440 m!24520))

(declare-fun m!24522 () Bool)

(assert (=> b!50435 m!24522))

(declare-fun m!24524 () Bool)

(assert (=> b!50434 m!24524))

(declare-fun m!24526 () Bool)

(assert (=> b!50434 m!24526))

(declare-fun m!24528 () Bool)

(assert (=> b!50433 m!24528))

(declare-fun m!24530 () Bool)

(assert (=> b!50433 m!24530))

(declare-fun m!24532 () Bool)

(assert (=> b!50433 m!24532))

(declare-fun m!24534 () Bool)

(assert (=> b!50433 m!24534))

(declare-fun m!24536 () Bool)

(assert (=> b!50431 m!24536))

(declare-fun m!24538 () Bool)

(assert (=> b!50441 m!24538))

(declare-fun m!24540 () Bool)

(assert (=> b!50441 m!24540))

(declare-fun m!24542 () Bool)

(assert (=> b!50441 m!24542))

(declare-fun m!24544 () Bool)

(assert (=> b!50441 m!24544))

(declare-fun m!24546 () Bool)

(assert (=> b!50441 m!24546))

(declare-fun m!24548 () Bool)

(assert (=> b!50441 m!24548))

(declare-fun m!24550 () Bool)

(assert (=> b!50441 m!24550))

(declare-fun m!24552 () Bool)

(assert (=> b!50441 m!24552))

(declare-fun m!24554 () Bool)

(assert (=> b!50441 m!24554))

(declare-fun m!24556 () Bool)

(assert (=> b!50441 m!24556))

(declare-fun m!24558 () Bool)

(assert (=> b!50441 m!24558))

(declare-fun m!24560 () Bool)

(assert (=> b!50441 m!24560))

(declare-fun m!24562 () Bool)

(assert (=> b!50441 m!24562))

(declare-fun m!24564 () Bool)

(assert (=> b!50441 m!24564))

(declare-fun m!24566 () Bool)

(assert (=> b!50441 m!24566))

(declare-fun m!24568 () Bool)

(assert (=> b!50441 m!24568))

(declare-fun m!24570 () Bool)

(assert (=> b!50439 m!24570))

(declare-fun m!24572 () Bool)

(assert (=> b!50437 m!24572))

(declare-fun m!24574 () Bool)

(assert (=> b!50437 m!24574))

(declare-fun m!24576 () Bool)

(assert (=> start!3630 m!24576))

(check-sat (not b!50430) (not b!50440) b_and!1585 (not b_next!1541) (not b!50441) (not b!50432) (not b!50435) (not b!50437) b_and!1583 (not b!50434) (not b!50431) (not b!50442) (not b!50438) (not b!50433) (not start!3630) (not b_next!1543) (not b!50439))
(check-sat b_and!1585 b_and!1583 (not b_next!1541) (not b_next!1543))
