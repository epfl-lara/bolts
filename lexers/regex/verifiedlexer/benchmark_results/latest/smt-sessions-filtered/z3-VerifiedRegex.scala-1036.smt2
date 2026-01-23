; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51564 () Bool)

(assert start!51564)

(declare-fun b!555369 () Bool)

(declare-fun b_free!15617 () Bool)

(declare-fun b_next!15633 () Bool)

(assert (=> b!555369 (= b_free!15617 (not b_next!15633))))

(declare-fun tp!175564 () Bool)

(declare-fun b_and!54251 () Bool)

(assert (=> b!555369 (= tp!175564 b_and!54251)))

(declare-fun b_free!15619 () Bool)

(declare-fun b_next!15635 () Bool)

(assert (=> b!555369 (= b_free!15619 (not b_next!15635))))

(declare-fun tp!175566 () Bool)

(declare-fun b_and!54253 () Bool)

(assert (=> b!555369 (= tp!175566 b_and!54253)))

(declare-fun b!555370 () Bool)

(declare-fun b_free!15621 () Bool)

(declare-fun b_next!15637 () Bool)

(assert (=> b!555370 (= b_free!15621 (not b_next!15637))))

(declare-fun tp!175565 () Bool)

(declare-fun b_and!54255 () Bool)

(assert (=> b!555370 (= tp!175565 b_and!54255)))

(declare-fun b_free!15623 () Bool)

(declare-fun b_next!15639 () Bool)

(assert (=> b!555370 (= b_free!15623 (not b_next!15639))))

(declare-fun tp!175567 () Bool)

(declare-fun b_and!54257 () Bool)

(assert (=> b!555370 (= tp!175567 b_and!54257)))

(declare-fun b!555366 () Bool)

(declare-fun e!336195 () Bool)

(declare-fun e!336201 () Bool)

(assert (=> b!555366 (= e!336195 e!336201)))

(declare-fun res!238530 () Bool)

(assert (=> b!555366 (=> (not res!238530) (not e!336201))))

(declare-datatypes ((C!3708 0))(
  ( (C!3709 (val!2080 Int)) )
))
(declare-datatypes ((List!5540 0))(
  ( (Nil!5530) (Cons!5530 (h!10931 C!3708) (t!75407 List!5540)) )
))
(declare-fun lt!234703 () List!5540)

(declare-fun input!2705 () List!5540)

(assert (=> b!555366 (= res!238530 (= lt!234703 input!2705))))

(declare-datatypes ((Regex!1393 0))(
  ( (ElementMatch!1393 (c!104150 C!3708)) (Concat!2476 (regOne!3298 Regex!1393) (regTwo!3298 Regex!1393)) (EmptyExpr!1393) (Star!1393 (reg!1722 Regex!1393)) (EmptyLang!1393) (Union!1393 (regOne!3299 Regex!1393) (regTwo!3299 Regex!1393)) )
))
(declare-datatypes ((List!5541 0))(
  ( (Nil!5531) (Cons!5531 (h!10932 (_ BitVec 16)) (t!75408 List!5541)) )
))
(declare-datatypes ((String!7158 0))(
  ( (String!7159 (value!35022 String)) )
))
(declare-datatypes ((TokenValue!1083 0))(
  ( (FloatLiteralValue!2166 (text!8026 List!5541)) (TokenValueExt!1082 (__x!4064 Int)) (Broken!5415 (value!35023 List!5541)) (Object!1092) (End!1083) (Def!1083) (Underscore!1083) (Match!1083) (Else!1083) (Error!1083) (Case!1083) (If!1083) (Extends!1083) (Abstract!1083) (Class!1083) (Val!1083) (DelimiterValue!2166 (del!1143 List!5541)) (KeywordValue!1089 (value!35024 List!5541)) (CommentValue!2166 (value!35025 List!5541)) (WhitespaceValue!2166 (value!35026 List!5541)) (IndentationValue!1083 (value!35027 List!5541)) (String!7160) (Int32!1083) (Broken!5416 (value!35028 List!5541)) (Boolean!1084) (Unit!9804) (OperatorValue!1086 (op!1143 List!5541)) (IdentifierValue!2166 (value!35029 List!5541)) (IdentifierValue!2167 (value!35030 List!5541)) (WhitespaceValue!2167 (value!35031 List!5541)) (True!2166) (False!2166) (Broken!5417 (value!35032 List!5541)) (Broken!5418 (value!35033 List!5541)) (True!2167) (RightBrace!1083) (RightBracket!1083) (Colon!1083) (Null!1083) (Comma!1083) (LeftBracket!1083) (False!2167) (LeftBrace!1083) (ImaginaryLiteralValue!1083 (text!8027 List!5541)) (StringLiteralValue!3249 (value!35034 List!5541)) (EOFValue!1083 (value!35035 List!5541)) (IdentValue!1083 (value!35036 List!5541)) (DelimiterValue!2167 (value!35037 List!5541)) (DedentValue!1083 (value!35038 List!5541)) (NewLineValue!1083 (value!35039 List!5541)) (IntegerValue!3249 (value!35040 (_ BitVec 32)) (text!8028 List!5541)) (IntegerValue!3250 (value!35041 Int) (text!8029 List!5541)) (Times!1083) (Or!1083) (Equal!1083) (Minus!1083) (Broken!5419 (value!35042 List!5541)) (And!1083) (Div!1083) (LessEqual!1083) (Mod!1083) (Concat!2477) (Not!1083) (Plus!1083) (SpaceValue!1083 (value!35043 List!5541)) (IntegerValue!3251 (value!35044 Int) (text!8030 List!5541)) (StringLiteralValue!3250 (text!8031 List!5541)) (FloatLiteralValue!2167 (text!8032 List!5541)) (BytesLiteralValue!1083 (value!35045 List!5541)) (CommentValue!2167 (value!35046 List!5541)) (StringLiteralValue!3251 (value!35047 List!5541)) (ErrorTokenValue!1083 (msg!1144 List!5541)) )
))
(declare-datatypes ((IArray!3553 0))(
  ( (IArray!3554 (innerList!1834 List!5540)) )
))
(declare-datatypes ((Conc!1776 0))(
  ( (Node!1776 (left!4546 Conc!1776) (right!4876 Conc!1776) (csize!3782 Int) (cheight!1987 Int)) (Leaf!2813 (xs!4413 IArray!3553) (csize!3783 Int)) (Empty!1776) )
))
(declare-datatypes ((BalanceConc!3560 0))(
  ( (BalanceConc!3561 (c!104151 Conc!1776)) )
))
(declare-datatypes ((TokenValueInjection!1934 0))(
  ( (TokenValueInjection!1935 (toValue!1910 Int) (toChars!1769 Int)) )
))
(declare-datatypes ((Rule!1918 0))(
  ( (Rule!1919 (regex!1059 Regex!1393) (tag!1321 String!7158) (isSeparator!1059 Bool) (transformation!1059 TokenValueInjection!1934)) )
))
(declare-datatypes ((Token!1854 0))(
  ( (Token!1855 (value!35048 TokenValue!1083) (rule!1791 Rule!1918) (size!4410 Int) (originalCharacters!1098 List!5540)) )
))
(declare-fun token!491 () Token!1854)

(declare-fun list!2293 (BalanceConc!3560) List!5540)

(declare-fun charsOf!688 (Token!1854) BalanceConc!3560)

(assert (=> b!555366 (= lt!234703 (list!2293 (charsOf!688 token!491)))))

(declare-fun b!555367 () Bool)

(declare-datatypes ((Unit!9805 0))(
  ( (Unit!9806) )
))
(declare-fun e!336194 () Unit!9805)

(declare-fun Unit!9807 () Unit!9805)

(assert (=> b!555367 (= e!336194 Unit!9807)))

(declare-fun b!555368 () Bool)

(declare-datatypes ((List!5542 0))(
  ( (Nil!5532) (Cons!5532 (h!10933 Rule!1918) (t!75409 List!5542)) )
))
(declare-fun rules!3103 () List!5542)

(declare-fun e!336214 () Bool)

(declare-fun e!336193 () Bool)

(declare-fun tp!175561 () Bool)

(declare-fun inv!6941 (String!7158) Bool)

(declare-fun inv!6944 (TokenValueInjection!1934) Bool)

(assert (=> b!555368 (= e!336193 (and tp!175561 (inv!6941 (tag!1321 (h!10933 rules!3103))) (inv!6944 (transformation!1059 (h!10933 rules!3103))) e!336214))))

(declare-fun e!336209 () Bool)

(assert (=> b!555369 (= e!336209 (and tp!175564 tp!175566))))

(assert (=> b!555370 (= e!336214 (and tp!175565 tp!175567))))

(declare-fun b!555371 () Bool)

(declare-fun res!238538 () Bool)

(assert (=> b!555371 (=> (not res!238538) (not e!336195))))

(declare-fun isEmpty!3990 (List!5542) Bool)

(assert (=> b!555371 (= res!238538 (not (isEmpty!3990 rules!3103)))))

(declare-fun b!555373 () Bool)

(declare-fun res!238529 () Bool)

(declare-fun e!336211 () Bool)

(assert (=> b!555373 (=> (not res!238529) (not e!336211))))

(declare-fun size!4411 (List!5540) Int)

(assert (=> b!555373 (= res!238529 (= (size!4410 token!491) (size!4411 (originalCharacters!1098 token!491))))))

(declare-fun e!336204 () Bool)

(declare-fun e!336206 () Bool)

(declare-fun tp!175563 () Bool)

(declare-fun b!555374 () Bool)

(declare-fun inv!21 (TokenValue!1083) Bool)

(assert (=> b!555374 (= e!336204 (and (inv!21 (value!35048 token!491)) e!336206 tp!175563))))

(declare-fun b!555375 () Bool)

(declare-fun Unit!9808 () Unit!9805)

(assert (=> b!555375 (= e!336194 Unit!9808)))

(assert (=> b!555375 false))

(declare-fun b!555376 () Bool)

(declare-fun e!336198 () Bool)

(declare-fun e!336192 () Bool)

(assert (=> b!555376 (= e!336198 e!336192)))

(declare-fun res!238531 () Bool)

(assert (=> b!555376 (=> (not res!238531) (not e!336192))))

(declare-fun lt!234677 () List!5540)

(declare-fun lt!234689 () List!5540)

(assert (=> b!555376 (= res!238531 (= lt!234677 lt!234689))))

(declare-fun suffix!1342 () List!5540)

(declare-fun ++!1547 (List!5540 List!5540) List!5540)

(assert (=> b!555376 (= lt!234677 (++!1547 lt!234703 suffix!1342))))

(declare-fun b!555377 () Bool)

(declare-fun e!336216 () Bool)

(declare-fun tp!175568 () Bool)

(assert (=> b!555377 (= e!336216 (and e!336193 tp!175568))))

(declare-fun b!555378 () Bool)

(declare-fun e!336205 () Bool)

(declare-fun e!336208 () Bool)

(assert (=> b!555378 (= e!336205 e!336208)))

(declare-fun res!238532 () Bool)

(assert (=> b!555378 (=> (not res!238532) (not e!336208))))

(declare-datatypes ((tuple2!6536 0))(
  ( (tuple2!6537 (_1!3532 Token!1854) (_2!3532 List!5540)) )
))
(declare-datatypes ((Option!1409 0))(
  ( (None!1408) (Some!1408 (v!16241 tuple2!6536)) )
))
(declare-fun lt!234702 () Option!1409)

(declare-fun isDefined!1221 (Option!1409) Bool)

(assert (=> b!555378 (= res!238532 (isDefined!1221 lt!234702))))

(declare-fun b!555379 () Bool)

(declare-fun e!336215 () Bool)

(assert (=> b!555379 (= e!336192 (not e!336215))))

(declare-fun res!238523 () Bool)

(assert (=> b!555379 (=> res!238523 e!336215)))

(declare-fun isPrefix!693 (List!5540 List!5540) Bool)

(assert (=> b!555379 (= res!238523 (not (isPrefix!693 input!2705 lt!234677)))))

(assert (=> b!555379 (isPrefix!693 lt!234703 lt!234677)))

(declare-fun lt!234696 () Unit!9805)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!540 (List!5540 List!5540) Unit!9805)

(assert (=> b!555379 (= lt!234696 (lemmaConcatTwoListThenFirstIsPrefix!540 lt!234703 suffix!1342))))

(assert (=> b!555379 (isPrefix!693 input!2705 lt!234689)))

(declare-fun lt!234697 () Unit!9805)

(assert (=> b!555379 (= lt!234697 (lemmaConcatTwoListThenFirstIsPrefix!540 input!2705 suffix!1342))))

(declare-fun e!336207 () Bool)

(assert (=> b!555379 e!336207))

(declare-fun res!238525 () Bool)

(assert (=> b!555379 (=> (not res!238525) (not e!336207))))

(declare-fun lt!234681 () TokenValue!1083)

(assert (=> b!555379 (= res!238525 (= (value!35048 (_1!3532 (v!16241 lt!234702))) lt!234681))))

(declare-fun lt!234676 () List!5540)

(declare-fun apply!1324 (TokenValueInjection!1934 BalanceConc!3560) TokenValue!1083)

(declare-fun seqFromList!1247 (List!5540) BalanceConc!3560)

(assert (=> b!555379 (= lt!234681 (apply!1324 (transformation!1059 (rule!1791 (_1!3532 (v!16241 lt!234702)))) (seqFromList!1247 lt!234676)))))

(declare-fun lt!234701 () Unit!9805)

(declare-fun lemmaInv!195 (TokenValueInjection!1934) Unit!9805)

(assert (=> b!555379 (= lt!234701 (lemmaInv!195 (transformation!1059 (rule!1791 token!491))))))

(declare-fun lt!234687 () Unit!9805)

(assert (=> b!555379 (= lt!234687 (lemmaInv!195 (transformation!1059 (rule!1791 (_1!3532 (v!16241 lt!234702))))))))

(declare-datatypes ((LexerInterface!945 0))(
  ( (LexerInterfaceExt!942 (__x!4065 Int)) (Lexer!943) )
))
(declare-fun thiss!22590 () LexerInterface!945)

(declare-fun ruleValid!269 (LexerInterface!945 Rule!1918) Bool)

(assert (=> b!555379 (ruleValid!269 thiss!22590 (rule!1791 token!491))))

(declare-fun lt!234700 () Unit!9805)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!126 (LexerInterface!945 Rule!1918 List!5542) Unit!9805)

(assert (=> b!555379 (= lt!234700 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!126 thiss!22590 (rule!1791 token!491) rules!3103))))

(assert (=> b!555379 (ruleValid!269 thiss!22590 (rule!1791 (_1!3532 (v!16241 lt!234702))))))

(declare-fun lt!234688 () Unit!9805)

(assert (=> b!555379 (= lt!234688 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!126 thiss!22590 (rule!1791 (_1!3532 (v!16241 lt!234702))) rules!3103))))

(assert (=> b!555379 (isPrefix!693 input!2705 input!2705)))

(declare-fun lt!234698 () Unit!9805)

(declare-fun lemmaIsPrefixRefl!431 (List!5540 List!5540) Unit!9805)

(assert (=> b!555379 (= lt!234698 (lemmaIsPrefixRefl!431 input!2705 input!2705))))

(declare-fun lt!234695 () List!5540)

(assert (=> b!555379 (= (_2!3532 (v!16241 lt!234702)) lt!234695)))

(declare-fun lt!234690 () Unit!9805)

(declare-fun lemmaSamePrefixThenSameSuffix!416 (List!5540 List!5540 List!5540 List!5540 List!5540) Unit!9805)

(assert (=> b!555379 (= lt!234690 (lemmaSamePrefixThenSameSuffix!416 lt!234676 (_2!3532 (v!16241 lt!234702)) lt!234676 lt!234695 input!2705))))

(declare-fun getSuffix!212 (List!5540 List!5540) List!5540)

(assert (=> b!555379 (= lt!234695 (getSuffix!212 input!2705 lt!234676))))

(assert (=> b!555379 (isPrefix!693 lt!234676 (++!1547 lt!234676 (_2!3532 (v!16241 lt!234702))))))

(declare-fun lt!234674 () Unit!9805)

(assert (=> b!555379 (= lt!234674 (lemmaConcatTwoListThenFirstIsPrefix!540 lt!234676 (_2!3532 (v!16241 lt!234702))))))

(declare-fun lt!234692 () Unit!9805)

(declare-fun lemmaCharactersSize!126 (Token!1854) Unit!9805)

(assert (=> b!555379 (= lt!234692 (lemmaCharactersSize!126 token!491))))

(declare-fun lt!234680 () Unit!9805)

(assert (=> b!555379 (= lt!234680 (lemmaCharactersSize!126 (_1!3532 (v!16241 lt!234702))))))

(declare-fun lt!234682 () Unit!9805)

(assert (=> b!555379 (= lt!234682 e!336194)))

(declare-fun c!104149 () Bool)

(declare-fun lt!234683 () Int)

(declare-fun lt!234691 () Int)

(assert (=> b!555379 (= c!104149 (> lt!234683 lt!234691))))

(assert (=> b!555379 (= lt!234691 (size!4411 lt!234703))))

(assert (=> b!555379 (= lt!234683 (size!4411 lt!234676))))

(assert (=> b!555379 (= lt!234676 (list!2293 (charsOf!688 (_1!3532 (v!16241 lt!234702)))))))

(declare-fun lt!234686 () tuple2!6536)

(assert (=> b!555379 (= lt!234702 (Some!1408 lt!234686))))

(assert (=> b!555379 (= lt!234686 (tuple2!6537 (_1!3532 (v!16241 lt!234702)) (_2!3532 (v!16241 lt!234702))))))

(declare-fun lt!234678 () Unit!9805)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!136 (List!5540 List!5540 List!5540 List!5540) Unit!9805)

(assert (=> b!555379 (= lt!234678 (lemmaConcatSameAndSameSizesThenSameLists!136 lt!234703 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!555380 () Bool)

(assert (=> b!555380 (= e!336207 (and (= (size!4410 (_1!3532 (v!16241 lt!234702))) lt!234683) (= (originalCharacters!1098 (_1!3532 (v!16241 lt!234702))) lt!234676) (= lt!234686 (tuple2!6537 (Token!1855 lt!234681 (rule!1791 (_1!3532 (v!16241 lt!234702))) lt!234683 lt!234676) lt!234695))))))

(declare-fun lt!234699 () TokenValue!1083)

(declare-fun b!555381 () Bool)

(declare-fun lt!234685 () List!5540)

(assert (=> b!555381 (= e!336211 (and (= (size!4410 token!491) lt!234691) (= (originalCharacters!1098 token!491) lt!234703) (= (tuple2!6537 token!491 suffix!1342) (tuple2!6537 (Token!1855 lt!234699 (rule!1791 token!491) lt!234691 lt!234703) lt!234685))))))

(declare-fun tp!175570 () Bool)

(declare-fun b!555382 () Bool)

(assert (=> b!555382 (= e!336206 (and tp!175570 (inv!6941 (tag!1321 (rule!1791 token!491))) (inv!6944 (transformation!1059 (rule!1791 token!491))) e!336209))))

(declare-fun b!555383 () Bool)

(declare-fun get!2103 (Option!1409) tuple2!6536)

(assert (=> b!555383 (= e!336208 (= (_1!3532 (get!2103 lt!234702)) (_1!3532 (v!16241 lt!234702))))))

(declare-fun b!555384 () Bool)

(declare-fun e!336196 () Bool)

(assert (=> b!555384 (= e!336196 true)))

(declare-fun lt!234684 () Bool)

(assert (=> b!555384 (= lt!234684 (isPrefix!693 lt!234703 input!2705))))

(declare-fun b!555385 () Bool)

(declare-fun e!336213 () Bool)

(assert (=> b!555385 (= e!336201 e!336213)))

(declare-fun res!238537 () Bool)

(assert (=> b!555385 (=> (not res!238537) (not e!336213))))

(declare-fun lt!234673 () Option!1409)

(assert (=> b!555385 (= res!238537 (isDefined!1221 lt!234673))))

(declare-fun maxPrefix!643 (LexerInterface!945 List!5542 List!5540) Option!1409)

(assert (=> b!555385 (= lt!234673 (maxPrefix!643 thiss!22590 rules!3103 lt!234689))))

(assert (=> b!555385 (= lt!234689 (++!1547 input!2705 suffix!1342))))

(declare-fun b!555386 () Bool)

(declare-fun e!336203 () Bool)

(assert (=> b!555386 (= e!336203 e!336198)))

(declare-fun res!238520 () Bool)

(assert (=> b!555386 (=> (not res!238520) (not e!336198))))

(get-info :version)

(assert (=> b!555386 (= res!238520 ((_ is Some!1408) lt!234702))))

(assert (=> b!555386 (= lt!234702 (maxPrefix!643 thiss!22590 rules!3103 input!2705))))

(declare-fun b!555372 () Bool)

(declare-fun res!238535 () Bool)

(assert (=> b!555372 (=> (not res!238535) (not e!336207))))

(assert (=> b!555372 (= res!238535 (= (size!4410 (_1!3532 (v!16241 lt!234702))) (size!4411 (originalCharacters!1098 (_1!3532 (v!16241 lt!234702))))))))

(declare-fun res!238528 () Bool)

(assert (=> start!51564 (=> (not res!238528) (not e!336195))))

(assert (=> start!51564 (= res!238528 ((_ is Lexer!943) thiss!22590))))

(assert (=> start!51564 e!336195))

(declare-fun e!336212 () Bool)

(assert (=> start!51564 e!336212))

(assert (=> start!51564 e!336216))

(declare-fun inv!6945 (Token!1854) Bool)

(assert (=> start!51564 (and (inv!6945 token!491) e!336204)))

(assert (=> start!51564 true))

(declare-fun e!336199 () Bool)

(assert (=> start!51564 e!336199))

(declare-fun b!555387 () Bool)

(declare-fun res!238524 () Bool)

(assert (=> b!555387 (=> (not res!238524) (not e!336195))))

(declare-fun rulesInvariant!908 (LexerInterface!945 List!5542) Bool)

(assert (=> b!555387 (= res!238524 (rulesInvariant!908 thiss!22590 rules!3103))))

(declare-fun b!555388 () Bool)

(declare-fun res!238522 () Bool)

(assert (=> b!555388 (=> res!238522 e!336196)))

(declare-fun matchR!540 (Regex!1393 List!5540) Bool)

(assert (=> b!555388 (= res!238522 (not (matchR!540 (regex!1059 (rule!1791 token!491)) input!2705)))))

(declare-fun b!555389 () Bool)

(declare-fun tp_is_empty!3141 () Bool)

(declare-fun tp!175562 () Bool)

(assert (=> b!555389 (= e!336212 (and tp_is_empty!3141 tp!175562))))

(declare-fun b!555390 () Bool)

(declare-fun tp!175569 () Bool)

(assert (=> b!555390 (= e!336199 (and tp_is_empty!3141 tp!175569))))

(declare-fun b!555391 () Bool)

(declare-fun res!238519 () Bool)

(assert (=> b!555391 (=> (not res!238519) (not e!336195))))

(declare-fun isEmpty!3991 (List!5540) Bool)

(assert (=> b!555391 (= res!238519 (not (isEmpty!3991 input!2705)))))

(declare-fun b!555392 () Bool)

(assert (=> b!555392 (= e!336213 e!336203)))

(declare-fun res!238534 () Bool)

(assert (=> b!555392 (=> (not res!238534) (not e!336203))))

(declare-fun lt!234693 () tuple2!6536)

(assert (=> b!555392 (= res!238534 (and (= (_1!3532 lt!234693) token!491) (= (_2!3532 lt!234693) suffix!1342)))))

(assert (=> b!555392 (= lt!234693 (get!2103 lt!234673))))

(declare-fun b!555393 () Bool)

(declare-fun res!238526 () Bool)

(assert (=> b!555393 (=> res!238526 e!336196)))

(declare-fun contains!1291 (List!5542 Rule!1918) Bool)

(assert (=> b!555393 (= res!238526 (not (contains!1291 rules!3103 (rule!1791 token!491))))))

(declare-fun b!555394 () Bool)

(declare-fun e!336197 () Bool)

(assert (=> b!555394 (= e!336197 e!336205)))

(declare-fun res!238527 () Bool)

(assert (=> b!555394 (=> res!238527 e!336205)))

(assert (=> b!555394 (= res!238527 (>= lt!234683 lt!234691))))

(declare-fun b!555395 () Bool)

(assert (=> b!555395 (= e!336215 e!336196)))

(declare-fun res!238533 () Bool)

(assert (=> b!555395 (=> res!238533 e!336196)))

(assert (=> b!555395 (= res!238533 (>= lt!234683 lt!234691))))

(assert (=> b!555395 e!336197))

(declare-fun res!238521 () Bool)

(assert (=> b!555395 (=> (not res!238521) (not e!336197))))

(declare-fun maxPrefixOneRule!344 (LexerInterface!945 Rule!1918 List!5540) Option!1409)

(assert (=> b!555395 (= res!238521 (= (maxPrefixOneRule!344 thiss!22590 (rule!1791 token!491) lt!234689) (Some!1408 (tuple2!6537 (Token!1855 lt!234699 (rule!1791 token!491) lt!234691 lt!234703) suffix!1342))))))

(declare-fun lt!234675 () Unit!9805)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!94 (LexerInterface!945 List!5542 List!5540 List!5540 List!5540 Rule!1918) Unit!9805)

(assert (=> b!555395 (= lt!234675 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!94 thiss!22590 rules!3103 lt!234703 lt!234689 suffix!1342 (rule!1791 token!491)))))

(assert (=> b!555395 (= (maxPrefixOneRule!344 thiss!22590 (rule!1791 (_1!3532 (v!16241 lt!234702))) input!2705) (Some!1408 (tuple2!6537 (Token!1855 lt!234681 (rule!1791 (_1!3532 (v!16241 lt!234702))) lt!234683 lt!234676) (_2!3532 (v!16241 lt!234702)))))))

(declare-fun lt!234679 () Unit!9805)

(assert (=> b!555395 (= lt!234679 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!94 thiss!22590 rules!3103 lt!234676 input!2705 (_2!3532 (v!16241 lt!234702)) (rule!1791 (_1!3532 (v!16241 lt!234702)))))))

(assert (=> b!555395 e!336211))

(declare-fun res!238536 () Bool)

(assert (=> b!555395 (=> (not res!238536) (not e!336211))))

(assert (=> b!555395 (= res!238536 (= (value!35048 token!491) lt!234699))))

(assert (=> b!555395 (= lt!234699 (apply!1324 (transformation!1059 (rule!1791 token!491)) (seqFromList!1247 lt!234703)))))

(assert (=> b!555395 (= suffix!1342 lt!234685)))

(declare-fun lt!234694 () Unit!9805)

(assert (=> b!555395 (= lt!234694 (lemmaSamePrefixThenSameSuffix!416 lt!234703 suffix!1342 lt!234703 lt!234685 lt!234689))))

(assert (=> b!555395 (= lt!234685 (getSuffix!212 lt!234689 lt!234703))))

(assert (= (and start!51564 res!238528) b!555371))

(assert (= (and b!555371 res!238538) b!555387))

(assert (= (and b!555387 res!238524) b!555391))

(assert (= (and b!555391 res!238519) b!555366))

(assert (= (and b!555366 res!238530) b!555385))

(assert (= (and b!555385 res!238537) b!555392))

(assert (= (and b!555392 res!238534) b!555386))

(assert (= (and b!555386 res!238520) b!555376))

(assert (= (and b!555376 res!238531) b!555379))

(assert (= (and b!555379 c!104149) b!555375))

(assert (= (and b!555379 (not c!104149)) b!555367))

(assert (= (and b!555379 res!238525) b!555372))

(assert (= (and b!555372 res!238535) b!555380))

(assert (= (and b!555379 (not res!238523)) b!555395))

(assert (= (and b!555395 res!238536) b!555373))

(assert (= (and b!555373 res!238529) b!555381))

(assert (= (and b!555395 res!238521) b!555394))

(assert (= (and b!555394 (not res!238527)) b!555378))

(assert (= (and b!555378 res!238532) b!555383))

(assert (= (and b!555395 (not res!238533)) b!555393))

(assert (= (and b!555393 (not res!238526)) b!555388))

(assert (= (and b!555388 (not res!238522)) b!555384))

(assert (= (and start!51564 ((_ is Cons!5530) suffix!1342)) b!555389))

(assert (= b!555368 b!555370))

(assert (= b!555377 b!555368))

(assert (= (and start!51564 ((_ is Cons!5532) rules!3103)) b!555377))

(assert (= b!555382 b!555369))

(assert (= b!555374 b!555382))

(assert (= start!51564 b!555374))

(assert (= (and start!51564 ((_ is Cons!5530) input!2705)) b!555390))

(declare-fun m!805717 () Bool)

(assert (=> b!555384 m!805717))

(declare-fun m!805719 () Bool)

(assert (=> b!555383 m!805719))

(declare-fun m!805721 () Bool)

(assert (=> b!555385 m!805721))

(declare-fun m!805723 () Bool)

(assert (=> b!555385 m!805723))

(declare-fun m!805725 () Bool)

(assert (=> b!555385 m!805725))

(declare-fun m!805727 () Bool)

(assert (=> b!555386 m!805727))

(declare-fun m!805729 () Bool)

(assert (=> b!555378 m!805729))

(declare-fun m!805731 () Bool)

(assert (=> b!555387 m!805731))

(declare-fun m!805733 () Bool)

(assert (=> b!555366 m!805733))

(assert (=> b!555366 m!805733))

(declare-fun m!805735 () Bool)

(assert (=> b!555366 m!805735))

(declare-fun m!805737 () Bool)

(assert (=> b!555371 m!805737))

(declare-fun m!805739 () Bool)

(assert (=> b!555388 m!805739))

(declare-fun m!805741 () Bool)

(assert (=> b!555373 m!805741))

(declare-fun m!805743 () Bool)

(assert (=> b!555379 m!805743))

(declare-fun m!805745 () Bool)

(assert (=> b!555379 m!805745))

(declare-fun m!805747 () Bool)

(assert (=> b!555379 m!805747))

(declare-fun m!805749 () Bool)

(assert (=> b!555379 m!805749))

(declare-fun m!805751 () Bool)

(assert (=> b!555379 m!805751))

(declare-fun m!805753 () Bool)

(assert (=> b!555379 m!805753))

(declare-fun m!805755 () Bool)

(assert (=> b!555379 m!805755))

(declare-fun m!805757 () Bool)

(assert (=> b!555379 m!805757))

(declare-fun m!805759 () Bool)

(assert (=> b!555379 m!805759))

(declare-fun m!805761 () Bool)

(assert (=> b!555379 m!805761))

(declare-fun m!805763 () Bool)

(assert (=> b!555379 m!805763))

(declare-fun m!805765 () Bool)

(assert (=> b!555379 m!805765))

(declare-fun m!805767 () Bool)

(assert (=> b!555379 m!805767))

(declare-fun m!805769 () Bool)

(assert (=> b!555379 m!805769))

(declare-fun m!805771 () Bool)

(assert (=> b!555379 m!805771))

(assert (=> b!555379 m!805743))

(declare-fun m!805773 () Bool)

(assert (=> b!555379 m!805773))

(declare-fun m!805775 () Bool)

(assert (=> b!555379 m!805775))

(declare-fun m!805777 () Bool)

(assert (=> b!555379 m!805777))

(declare-fun m!805779 () Bool)

(assert (=> b!555379 m!805779))

(declare-fun m!805781 () Bool)

(assert (=> b!555379 m!805781))

(declare-fun m!805783 () Bool)

(assert (=> b!555379 m!805783))

(assert (=> b!555379 m!805761))

(declare-fun m!805785 () Bool)

(assert (=> b!555379 m!805785))

(declare-fun m!805787 () Bool)

(assert (=> b!555379 m!805787))

(declare-fun m!805789 () Bool)

(assert (=> b!555379 m!805789))

(assert (=> b!555379 m!805773))

(declare-fun m!805791 () Bool)

(assert (=> b!555379 m!805791))

(declare-fun m!805793 () Bool)

(assert (=> b!555379 m!805793))

(declare-fun m!805795 () Bool)

(assert (=> b!555379 m!805795))

(declare-fun m!805797 () Bool)

(assert (=> start!51564 m!805797))

(declare-fun m!805799 () Bool)

(assert (=> b!555368 m!805799))

(declare-fun m!805801 () Bool)

(assert (=> b!555368 m!805801))

(declare-fun m!805803 () Bool)

(assert (=> b!555374 m!805803))

(declare-fun m!805805 () Bool)

(assert (=> b!555391 m!805805))

(declare-fun m!805807 () Bool)

(assert (=> b!555376 m!805807))

(declare-fun m!805809 () Bool)

(assert (=> b!555393 m!805809))

(declare-fun m!805811 () Bool)

(assert (=> b!555395 m!805811))

(declare-fun m!805813 () Bool)

(assert (=> b!555395 m!805813))

(declare-fun m!805815 () Bool)

(assert (=> b!555395 m!805815))

(declare-fun m!805817 () Bool)

(assert (=> b!555395 m!805817))

(declare-fun m!805819 () Bool)

(assert (=> b!555395 m!805819))

(declare-fun m!805821 () Bool)

(assert (=> b!555395 m!805821))

(declare-fun m!805823 () Bool)

(assert (=> b!555395 m!805823))

(declare-fun m!805825 () Bool)

(assert (=> b!555395 m!805825))

(assert (=> b!555395 m!805819))

(declare-fun m!805827 () Bool)

(assert (=> b!555392 m!805827))

(declare-fun m!805829 () Bool)

(assert (=> b!555372 m!805829))

(declare-fun m!805831 () Bool)

(assert (=> b!555382 m!805831))

(declare-fun m!805833 () Bool)

(assert (=> b!555382 m!805833))

(check-sat (not b!555377) b_and!54253 (not b_next!15633) (not b!555388) (not b!555393) b_and!54257 b_and!54251 (not b!555386) (not start!51564) (not b!555387) (not b!555391) (not b!555379) (not b!555374) (not b!555378) (not b!555371) (not b!555373) (not b!555376) (not b!555366) tp_is_empty!3141 (not b!555385) b_and!54255 (not b_next!15635) (not b!555368) (not b_next!15637) (not b!555390) (not b!555372) (not b!555384) (not b!555382) (not b!555392) (not b_next!15639) (not b!555389) (not b!555395) (not b!555383))
(check-sat b_and!54253 (not b_next!15633) b_and!54257 (not b_next!15637) b_and!54251 (not b_next!15639) b_and!54255 (not b_next!15635))
