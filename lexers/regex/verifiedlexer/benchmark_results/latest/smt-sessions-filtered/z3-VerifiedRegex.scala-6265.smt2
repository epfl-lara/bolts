; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!308598 () Bool)

(assert start!308598)

(declare-fun b!3309483 () Bool)

(declare-fun b_free!87153 () Bool)

(declare-fun b_next!87857 () Bool)

(assert (=> b!3309483 (= b_free!87153 (not b_next!87857))))

(declare-fun tp!1036526 () Bool)

(declare-fun b_and!227119 () Bool)

(assert (=> b!3309483 (= tp!1036526 b_and!227119)))

(declare-fun b_free!87155 () Bool)

(declare-fun b_next!87859 () Bool)

(assert (=> b!3309483 (= b_free!87155 (not b_next!87859))))

(declare-fun tp!1036520 () Bool)

(declare-fun b_and!227121 () Bool)

(assert (=> b!3309483 (= tp!1036520 b_and!227121)))

(declare-fun b!3309485 () Bool)

(declare-fun b_free!87157 () Bool)

(declare-fun b_next!87861 () Bool)

(assert (=> b!3309485 (= b_free!87157 (not b_next!87861))))

(declare-fun tp!1036528 () Bool)

(declare-fun b_and!227123 () Bool)

(assert (=> b!3309485 (= tp!1036528 b_and!227123)))

(declare-fun b_free!87159 () Bool)

(declare-fun b_next!87863 () Bool)

(assert (=> b!3309485 (= b_free!87159 (not b_next!87863))))

(declare-fun tp!1036523 () Bool)

(declare-fun b_and!227125 () Bool)

(assert (=> b!3309485 (= tp!1036523 b_and!227125)))

(declare-fun b!3309468 () Bool)

(declare-fun b_free!87161 () Bool)

(declare-fun b_next!87865 () Bool)

(assert (=> b!3309468 (= b_free!87161 (not b_next!87865))))

(declare-fun tp!1036516 () Bool)

(declare-fun b_and!227127 () Bool)

(assert (=> b!3309468 (= tp!1036516 b_and!227127)))

(declare-fun b_free!87163 () Bool)

(declare-fun b_next!87867 () Bool)

(assert (=> b!3309468 (= b_free!87163 (not b_next!87867))))

(declare-fun tp!1036527 () Bool)

(declare-fun b_and!227129 () Bool)

(assert (=> b!3309468 (= tp!1036527 b_and!227129)))

(declare-fun b!3309460 () Bool)

(declare-fun e!2058462 () Bool)

(declare-fun e!2058463 () Bool)

(assert (=> b!3309460 (= e!2058462 e!2058463)))

(declare-fun res!1342337 () Bool)

(assert (=> b!3309460 (=> res!1342337 e!2058463)))

(declare-datatypes ((C!20324 0))(
  ( (C!20325 (val!12210 Int)) )
))
(declare-datatypes ((List!36690 0))(
  ( (Nil!36566) (Cons!36566 (h!41986 C!20324) (t!254143 List!36690)) )
))
(declare-fun lt!1121872 () List!36690)

(declare-datatypes ((Regex!10069 0))(
  ( (ElementMatch!10069 (c!561246 C!20324)) (Concat!15609 (regOne!20650 Regex!10069) (regTwo!20650 Regex!10069)) (EmptyExpr!10069) (Star!10069 (reg!10398 Regex!10069)) (EmptyLang!10069) (Union!10069 (regOne!20651 Regex!10069) (regTwo!20651 Regex!10069)) )
))
(declare-datatypes ((List!36691 0))(
  ( (Nil!36567) (Cons!36567 (h!41987 (_ BitVec 16)) (t!254144 List!36691)) )
))
(declare-datatypes ((TokenValue!5540 0))(
  ( (FloatLiteralValue!11080 (text!39225 List!36691)) (TokenValueExt!5539 (__x!23297 Int)) (Broken!27700 (value!171769 List!36691)) (Object!5663) (End!5540) (Def!5540) (Underscore!5540) (Match!5540) (Else!5540) (Error!5540) (Case!5540) (If!5540) (Extends!5540) (Abstract!5540) (Class!5540) (Val!5540) (DelimiterValue!11080 (del!5600 List!36691)) (KeywordValue!5546 (value!171770 List!36691)) (CommentValue!11080 (value!171771 List!36691)) (WhitespaceValue!11080 (value!171772 List!36691)) (IndentationValue!5540 (value!171773 List!36691)) (String!41033) (Int32!5540) (Broken!27701 (value!171774 List!36691)) (Boolean!5541) (Unit!51479) (OperatorValue!5543 (op!5600 List!36691)) (IdentifierValue!11080 (value!171775 List!36691)) (IdentifierValue!11081 (value!171776 List!36691)) (WhitespaceValue!11081 (value!171777 List!36691)) (True!11080) (False!11080) (Broken!27702 (value!171778 List!36691)) (Broken!27703 (value!171779 List!36691)) (True!11081) (RightBrace!5540) (RightBracket!5540) (Colon!5540) (Null!5540) (Comma!5540) (LeftBracket!5540) (False!11081) (LeftBrace!5540) (ImaginaryLiteralValue!5540 (text!39226 List!36691)) (StringLiteralValue!16620 (value!171780 List!36691)) (EOFValue!5540 (value!171781 List!36691)) (IdentValue!5540 (value!171782 List!36691)) (DelimiterValue!11081 (value!171783 List!36691)) (DedentValue!5540 (value!171784 List!36691)) (NewLineValue!5540 (value!171785 List!36691)) (IntegerValue!16620 (value!171786 (_ BitVec 32)) (text!39227 List!36691)) (IntegerValue!16621 (value!171787 Int) (text!39228 List!36691)) (Times!5540) (Or!5540) (Equal!5540) (Minus!5540) (Broken!27704 (value!171788 List!36691)) (And!5540) (Div!5540) (LessEqual!5540) (Mod!5540) (Concat!15610) (Not!5540) (Plus!5540) (SpaceValue!5540 (value!171789 List!36691)) (IntegerValue!16622 (value!171790 Int) (text!39229 List!36691)) (StringLiteralValue!16621 (text!39230 List!36691)) (FloatLiteralValue!11081 (text!39231 List!36691)) (BytesLiteralValue!5540 (value!171791 List!36691)) (CommentValue!11081 (value!171792 List!36691)) (StringLiteralValue!16622 (value!171793 List!36691)) (ErrorTokenValue!5540 (msg!5601 List!36691)) )
))
(declare-datatypes ((IArray!21995 0))(
  ( (IArray!21996 (innerList!11055 List!36690)) )
))
(declare-datatypes ((Conc!10995 0))(
  ( (Node!10995 (left!28488 Conc!10995) (right!28818 Conc!10995) (csize!22220 Int) (cheight!11206 Int)) (Leaf!17261 (xs!14133 IArray!21995) (csize!22221 Int)) (Empty!10995) )
))
(declare-datatypes ((BalanceConc!21604 0))(
  ( (BalanceConc!21605 (c!561247 Conc!10995)) )
))
(declare-datatypes ((String!41034 0))(
  ( (String!41035 (value!171794 String)) )
))
(declare-datatypes ((TokenValueInjection!10508 0))(
  ( (TokenValueInjection!10509 (toValue!7454 Int) (toChars!7313 Int)) )
))
(declare-datatypes ((Rule!10420 0))(
  ( (Rule!10421 (regex!5310 Regex!10069) (tag!5856 String!41034) (isSeparator!5310 Bool) (transformation!5310 TokenValueInjection!10508)) )
))
(declare-datatypes ((Token!9986 0))(
  ( (Token!9987 (value!171795 TokenValue!5540) (rule!7814 Rule!10420) (size!27621 Int) (originalCharacters!6024 List!36690)) )
))
(declare-fun separatorToken!241 () Token!9986)

(declare-fun lt!1121881 () List!36690)

(declare-datatypes ((List!36692 0))(
  ( (Nil!36568) (Cons!36568 (h!41988 Token!9986) (t!254145 List!36692)) )
))
(declare-fun tokens!494 () List!36692)

(declare-datatypes ((LexerInterface!4899 0))(
  ( (LexerInterfaceExt!4896 (__x!23298 Int)) (Lexer!4897) )
))
(declare-fun thiss!18206 () LexerInterface!4899)

(declare-fun ++!8863 (List!36690 List!36690) List!36690)

(declare-fun list!13129 (BalanceConc!21604) List!36690)

(declare-fun charsOf!3326 (Token!9986) BalanceConc!21604)

(declare-fun printWithSeparatorTokenList!210 (LexerInterface!4899 List!36692 Token!9986) List!36690)

(assert (=> b!3309460 (= res!1342337 (not (= lt!1121872 (++!8863 (++!8863 (list!13129 (charsOf!3326 (h!41988 (t!254145 tokens!494)))) lt!1121881) (printWithSeparatorTokenList!210 thiss!18206 (t!254145 (t!254145 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1121870 () List!36690)

(assert (=> b!3309460 (= lt!1121870 (++!8863 lt!1121881 lt!1121872))))

(assert (=> b!3309460 (= lt!1121881 (list!13129 (charsOf!3326 separatorToken!241)))))

(assert (=> b!3309460 (= lt!1121872 (printWithSeparatorTokenList!210 thiss!18206 (t!254145 tokens!494) separatorToken!241))))

(declare-fun lt!1121869 () List!36690)

(assert (=> b!3309460 (= lt!1121869 (printWithSeparatorTokenList!210 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3309461 () Bool)

(declare-fun e!2058444 () Bool)

(assert (=> b!3309461 (= e!2058463 e!2058444)))

(declare-fun res!1342345 () Bool)

(assert (=> b!3309461 (=> res!1342345 e!2058444)))

(declare-fun lt!1121883 () List!36690)

(assert (=> b!3309461 (= res!1342345 (not (= lt!1121869 lt!1121883)))))

(declare-fun lt!1121877 () List!36690)

(assert (=> b!3309461 (= lt!1121883 (++!8863 (++!8863 lt!1121877 lt!1121881) lt!1121872))))

(declare-fun b!3309462 () Bool)

(declare-fun res!1342330 () Bool)

(declare-fun e!2058445 () Bool)

(assert (=> b!3309462 (=> (not res!1342330) (not e!2058445))))

(declare-datatypes ((List!36693 0))(
  ( (Nil!36569) (Cons!36569 (h!41989 Rule!10420) (t!254146 List!36693)) )
))
(declare-fun rules!2135 () List!36693)

(declare-fun sepAndNonSepRulesDisjointChars!1504 (List!36693 List!36693) Bool)

(assert (=> b!3309462 (= res!1342330 (sepAndNonSepRulesDisjointChars!1504 rules!2135 rules!2135))))

(declare-fun e!2058442 () Bool)

(declare-fun b!3309463 () Bool)

(declare-fun e!2058464 () Bool)

(declare-fun tp!1036517 () Bool)

(declare-fun inv!21 (TokenValue!5540) Bool)

(assert (=> b!3309463 (= e!2058464 (and (inv!21 (value!171795 separatorToken!241)) e!2058442 tp!1036517))))

(declare-fun b!3309464 () Bool)

(declare-fun res!1342327 () Bool)

(assert (=> b!3309464 (=> (not res!1342327) (not e!2058445))))

(declare-fun rulesInvariant!4296 (LexerInterface!4899 List!36693) Bool)

(assert (=> b!3309464 (= res!1342327 (rulesInvariant!4296 thiss!18206 rules!2135))))

(declare-fun b!3309466 () Bool)

(declare-fun res!1342344 () Bool)

(assert (=> b!3309466 (=> (not res!1342344) (not e!2058445))))

(assert (=> b!3309466 (= res!1342344 (isSeparator!5310 (rule!7814 separatorToken!241)))))

(declare-fun b!3309467 () Bool)

(declare-fun res!1342335 () Bool)

(assert (=> b!3309467 (=> (not res!1342335) (not e!2058445))))

(get-info :version)

(assert (=> b!3309467 (= res!1342335 (and (not ((_ is Nil!36568) tokens!494)) (not ((_ is Nil!36568) (t!254145 tokens!494)))))))

(declare-fun e!2058451 () Bool)

(assert (=> b!3309468 (= e!2058451 (and tp!1036516 tp!1036527))))

(declare-fun b!3309469 () Bool)

(declare-fun e!2058448 () Bool)

(assert (=> b!3309469 (= e!2058448 e!2058462)))

(declare-fun res!1342338 () Bool)

(assert (=> b!3309469 (=> res!1342338 e!2058462)))

(assert (=> b!3309469 (= res!1342338 (or (isSeparator!5310 (rule!7814 (h!41988 tokens!494))) (isSeparator!5310 (rule!7814 (h!41988 (t!254145 tokens!494))))))))

(declare-datatypes ((Unit!51480 0))(
  ( (Unit!51481) )
))
(declare-fun lt!1121878 () Unit!51480)

(declare-fun lambda!119207 () Int)

(declare-fun forallContained!1261 (List!36692 Int Token!9986) Unit!51480)

(assert (=> b!3309469 (= lt!1121878 (forallContained!1261 tokens!494 lambda!119207 (h!41988 (t!254145 tokens!494))))))

(declare-fun lt!1121882 () Unit!51480)

(assert (=> b!3309469 (= lt!1121882 (forallContained!1261 tokens!494 lambda!119207 (h!41988 tokens!494)))))

(declare-fun b!3309470 () Bool)

(declare-fun res!1342341 () Bool)

(assert (=> b!3309470 (=> (not res!1342341) (not e!2058445))))

(declare-fun forall!7595 (List!36692 Int) Bool)

(assert (=> b!3309470 (= res!1342341 (forall!7595 tokens!494 lambda!119207))))

(declare-fun b!3309471 () Bool)

(declare-fun e!2058458 () Bool)

(declare-fun e!2058443 () Bool)

(declare-fun tp!1036519 () Bool)

(assert (=> b!3309471 (= e!2058443 (and (inv!21 (value!171795 (h!41988 tokens!494))) e!2058458 tp!1036519))))

(declare-fun b!3309472 () Bool)

(declare-fun e!2058455 () Bool)

(declare-fun e!2058449 () Bool)

(assert (=> b!3309472 (= e!2058455 e!2058449)))

(declare-fun res!1342331 () Bool)

(assert (=> b!3309472 (=> (not res!1342331) (not e!2058449))))

(declare-fun lt!1121867 () Rule!10420)

(declare-fun matchR!4671 (Regex!10069 List!36690) Bool)

(assert (=> b!3309472 (= res!1342331 (matchR!4671 (regex!5310 lt!1121867) lt!1121877))))

(declare-datatypes ((Option!7280 0))(
  ( (None!7279) (Some!7279 (v!36075 Rule!10420)) )
))
(declare-fun lt!1121875 () Option!7280)

(declare-fun get!11650 (Option!7280) Rule!10420)

(assert (=> b!3309472 (= lt!1121867 (get!11650 lt!1121875))))

(declare-fun b!3309473 () Bool)

(declare-fun e!2058459 () Bool)

(assert (=> b!3309473 (= e!2058459 true)))

(assert (=> b!3309473 e!2058455))

(declare-fun res!1342342 () Bool)

(assert (=> b!3309473 (=> (not res!1342342) (not e!2058455))))

(declare-fun isDefined!5638 (Option!7280) Bool)

(assert (=> b!3309473 (= res!1342342 (isDefined!5638 lt!1121875))))

(declare-fun getRuleFromTag!981 (LexerInterface!4899 List!36693 String!41034) Option!7280)

(assert (=> b!3309473 (= lt!1121875 (getRuleFromTag!981 thiss!18206 rules!2135 (tag!5856 (rule!7814 (h!41988 tokens!494)))))))

(declare-fun lt!1121871 () Unit!51480)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!981 (LexerInterface!4899 List!36693 List!36690 Token!9986) Unit!51480)

(assert (=> b!3309473 (= lt!1121871 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!981 thiss!18206 rules!2135 lt!1121877 (h!41988 tokens!494)))))

(declare-fun lt!1121880 () Unit!51480)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!904 (LexerInterface!4899 List!36693 List!36692 Token!9986) Unit!51480)

(assert (=> b!3309473 (= lt!1121880 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!904 thiss!18206 rules!2135 tokens!494 (h!41988 tokens!494)))))

(declare-fun b!3309474 () Bool)

(declare-fun e!2058452 () Bool)

(declare-fun e!2058453 () Bool)

(declare-fun tp!1036518 () Bool)

(assert (=> b!3309474 (= e!2058452 (and e!2058453 tp!1036518))))

(declare-fun b!3309475 () Bool)

(assert (=> b!3309475 (= e!2058449 (= (rule!7814 (h!41988 tokens!494)) lt!1121867))))

(declare-fun e!2058441 () Bool)

(declare-fun b!3309476 () Bool)

(declare-fun tp!1036524 () Bool)

(declare-fun inv!49540 (String!41034) Bool)

(declare-fun inv!49543 (TokenValueInjection!10508) Bool)

(assert (=> b!3309476 (= e!2058442 (and tp!1036524 (inv!49540 (tag!5856 (rule!7814 separatorToken!241))) (inv!49543 (transformation!5310 (rule!7814 separatorToken!241))) e!2058441))))

(declare-fun b!3309477 () Bool)

(declare-fun res!1342339 () Bool)

(assert (=> b!3309477 (=> res!1342339 e!2058448)))

(declare-datatypes ((IArray!21997 0))(
  ( (IArray!21998 (innerList!11056 List!36692)) )
))
(declare-datatypes ((Conc!10996 0))(
  ( (Node!10996 (left!28489 Conc!10996) (right!28819 Conc!10996) (csize!22222 Int) (cheight!11207 Int)) (Leaf!17262 (xs!14134 IArray!21997) (csize!22223 Int)) (Empty!10996) )
))
(declare-datatypes ((BalanceConc!21606 0))(
  ( (BalanceConc!21607 (c!561248 Conc!10996)) )
))
(declare-fun isEmpty!20708 (BalanceConc!21606) Bool)

(declare-datatypes ((tuple2!36046 0))(
  ( (tuple2!36047 (_1!21157 BalanceConc!21606) (_2!21157 BalanceConc!21604)) )
))
(declare-fun lex!2225 (LexerInterface!4899 List!36693 BalanceConc!21604) tuple2!36046)

(declare-fun seqFromList!3675 (List!36690) BalanceConc!21604)

(assert (=> b!3309477 (= res!1342339 (isEmpty!20708 (_1!21157 (lex!2225 thiss!18206 rules!2135 (seqFromList!3675 lt!1121877)))))))

(declare-fun b!3309478 () Bool)

(declare-fun res!1342328 () Bool)

(assert (=> b!3309478 (=> (not res!1342328) (not e!2058445))))

(declare-fun isEmpty!20709 (List!36693) Bool)

(assert (=> b!3309478 (= res!1342328 (not (isEmpty!20709 rules!2135)))))

(declare-fun b!3309479 () Bool)

(declare-fun e!2058454 () Bool)

(assert (=> b!3309479 (= e!2058445 (not e!2058454))))

(declare-fun res!1342340 () Bool)

(assert (=> b!3309479 (=> res!1342340 e!2058454)))

(declare-fun lt!1121868 () List!36690)

(declare-fun lt!1121879 () List!36690)

(assert (=> b!3309479 (= res!1342340 (not (= lt!1121868 lt!1121879)))))

(declare-fun printList!1449 (LexerInterface!4899 List!36692) List!36690)

(assert (=> b!3309479 (= lt!1121879 (printList!1449 thiss!18206 (Cons!36568 (h!41988 tokens!494) Nil!36568)))))

(declare-fun lt!1121873 () BalanceConc!21604)

(assert (=> b!3309479 (= lt!1121868 (list!13129 lt!1121873))))

(declare-fun lt!1121876 () BalanceConc!21606)

(declare-fun printTailRec!1396 (LexerInterface!4899 BalanceConc!21606 Int BalanceConc!21604) BalanceConc!21604)

(assert (=> b!3309479 (= lt!1121873 (printTailRec!1396 thiss!18206 lt!1121876 0 (BalanceConc!21605 Empty!10995)))))

(declare-fun print!1964 (LexerInterface!4899 BalanceConc!21606) BalanceConc!21604)

(assert (=> b!3309479 (= lt!1121873 (print!1964 thiss!18206 lt!1121876))))

(declare-fun singletonSeq!2406 (Token!9986) BalanceConc!21606)

(assert (=> b!3309479 (= lt!1121876 (singletonSeq!2406 (h!41988 tokens!494)))))

(declare-fun b!3309480 () Bool)

(declare-fun e!2058456 () Bool)

(declare-fun tp!1036521 () Bool)

(assert (=> b!3309480 (= e!2058453 (and tp!1036521 (inv!49540 (tag!5856 (h!41989 rules!2135))) (inv!49543 (transformation!5310 (h!41989 rules!2135))) e!2058456))))

(declare-fun b!3309481 () Bool)

(declare-fun e!2058450 () Bool)

(declare-fun tp!1036522 () Bool)

(declare-fun inv!49544 (Token!9986) Bool)

(assert (=> b!3309481 (= e!2058450 (and (inv!49544 (h!41988 tokens!494)) e!2058443 tp!1036522))))

(declare-fun b!3309465 () Bool)

(assert (=> b!3309465 (= e!2058454 e!2058448)))

(declare-fun res!1342336 () Bool)

(assert (=> b!3309465 (=> res!1342336 e!2058448)))

(assert (=> b!3309465 (= res!1342336 (or (not (= lt!1121879 lt!1121877)) (not (= lt!1121868 lt!1121877))))))

(assert (=> b!3309465 (= lt!1121877 (list!13129 (charsOf!3326 (h!41988 tokens!494))))))

(declare-fun res!1342333 () Bool)

(assert (=> start!308598 (=> (not res!1342333) (not e!2058445))))

(assert (=> start!308598 (= res!1342333 ((_ is Lexer!4897) thiss!18206))))

(assert (=> start!308598 e!2058445))

(assert (=> start!308598 true))

(assert (=> start!308598 e!2058452))

(assert (=> start!308598 e!2058450))

(assert (=> start!308598 (and (inv!49544 separatorToken!241) e!2058464)))

(declare-fun b!3309482 () Bool)

(declare-fun res!1342329 () Bool)

(assert (=> b!3309482 (=> (not res!1342329) (not e!2058445))))

(declare-fun rulesProduceIndividualToken!2391 (LexerInterface!4899 List!36693 Token!9986) Bool)

(assert (=> b!3309482 (= res!1342329 (rulesProduceIndividualToken!2391 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3309483 (= e!2058456 (and tp!1036526 tp!1036520))))

(declare-fun b!3309484 () Bool)

(assert (=> b!3309484 (= e!2058444 e!2058459)))

(declare-fun res!1342334 () Bool)

(assert (=> b!3309484 (=> res!1342334 e!2058459)))

(declare-fun lt!1121874 () List!36690)

(assert (=> b!3309484 (= res!1342334 (not (= lt!1121869 lt!1121874)))))

(assert (=> b!3309484 (= lt!1121883 lt!1121874)))

(assert (=> b!3309484 (= lt!1121874 (++!8863 lt!1121877 lt!1121870))))

(declare-fun lt!1121884 () Unit!51480)

(declare-fun lemmaConcatAssociativity!1828 (List!36690 List!36690 List!36690) Unit!51480)

(assert (=> b!3309484 (= lt!1121884 (lemmaConcatAssociativity!1828 lt!1121877 lt!1121881 lt!1121872))))

(assert (=> b!3309485 (= e!2058441 (and tp!1036528 tp!1036523))))

(declare-fun b!3309486 () Bool)

(declare-fun res!1342332 () Bool)

(assert (=> b!3309486 (=> (not res!1342332) (not e!2058445))))

(declare-fun rulesProduceEachTokenIndividually!1350 (LexerInterface!4899 List!36693 BalanceConc!21606) Bool)

(declare-fun seqFromList!3676 (List!36692) BalanceConc!21606)

(assert (=> b!3309486 (= res!1342332 (rulesProduceEachTokenIndividually!1350 thiss!18206 rules!2135 (seqFromList!3676 tokens!494)))))

(declare-fun b!3309487 () Bool)

(declare-fun res!1342343 () Bool)

(assert (=> b!3309487 (=> res!1342343 e!2058448)))

(assert (=> b!3309487 (= res!1342343 (not (rulesProduceIndividualToken!2391 thiss!18206 rules!2135 (h!41988 tokens!494))))))

(declare-fun tp!1036525 () Bool)

(declare-fun b!3309488 () Bool)

(assert (=> b!3309488 (= e!2058458 (and tp!1036525 (inv!49540 (tag!5856 (rule!7814 (h!41988 tokens!494)))) (inv!49543 (transformation!5310 (rule!7814 (h!41988 tokens!494)))) e!2058451))))

(assert (= (and start!308598 res!1342333) b!3309478))

(assert (= (and b!3309478 res!1342328) b!3309464))

(assert (= (and b!3309464 res!1342327) b!3309486))

(assert (= (and b!3309486 res!1342332) b!3309482))

(assert (= (and b!3309482 res!1342329) b!3309466))

(assert (= (and b!3309466 res!1342344) b!3309470))

(assert (= (and b!3309470 res!1342341) b!3309462))

(assert (= (and b!3309462 res!1342330) b!3309467))

(assert (= (and b!3309467 res!1342335) b!3309479))

(assert (= (and b!3309479 (not res!1342340)) b!3309465))

(assert (= (and b!3309465 (not res!1342336)) b!3309487))

(assert (= (and b!3309487 (not res!1342343)) b!3309477))

(assert (= (and b!3309477 (not res!1342339)) b!3309469))

(assert (= (and b!3309469 (not res!1342338)) b!3309460))

(assert (= (and b!3309460 (not res!1342337)) b!3309461))

(assert (= (and b!3309461 (not res!1342345)) b!3309484))

(assert (= (and b!3309484 (not res!1342334)) b!3309473))

(assert (= (and b!3309473 res!1342342) b!3309472))

(assert (= (and b!3309472 res!1342331) b!3309475))

(assert (= b!3309480 b!3309483))

(assert (= b!3309474 b!3309480))

(assert (= (and start!308598 ((_ is Cons!36569) rules!2135)) b!3309474))

(assert (= b!3309488 b!3309468))

(assert (= b!3309471 b!3309488))

(assert (= b!3309481 b!3309471))

(assert (= (and start!308598 ((_ is Cons!36568) tokens!494)) b!3309481))

(assert (= b!3309476 b!3309485))

(assert (= b!3309463 b!3309476))

(assert (= start!308598 b!3309463))

(declare-fun m!3636727 () Bool)

(assert (=> b!3309471 m!3636727))

(declare-fun m!3636729 () Bool)

(assert (=> b!3309465 m!3636729))

(assert (=> b!3309465 m!3636729))

(declare-fun m!3636731 () Bool)

(assert (=> b!3309465 m!3636731))

(declare-fun m!3636733 () Bool)

(assert (=> b!3309464 m!3636733))

(declare-fun m!3636735 () Bool)

(assert (=> b!3309469 m!3636735))

(declare-fun m!3636737 () Bool)

(assert (=> b!3309469 m!3636737))

(declare-fun m!3636739 () Bool)

(assert (=> b!3309488 m!3636739))

(declare-fun m!3636741 () Bool)

(assert (=> b!3309488 m!3636741))

(declare-fun m!3636743 () Bool)

(assert (=> b!3309481 m!3636743))

(declare-fun m!3636745 () Bool)

(assert (=> b!3309484 m!3636745))

(declare-fun m!3636747 () Bool)

(assert (=> b!3309484 m!3636747))

(declare-fun m!3636749 () Bool)

(assert (=> b!3309461 m!3636749))

(assert (=> b!3309461 m!3636749))

(declare-fun m!3636751 () Bool)

(assert (=> b!3309461 m!3636751))

(declare-fun m!3636753 () Bool)

(assert (=> b!3309478 m!3636753))

(declare-fun m!3636755 () Bool)

(assert (=> b!3309486 m!3636755))

(assert (=> b!3309486 m!3636755))

(declare-fun m!3636757 () Bool)

(assert (=> b!3309486 m!3636757))

(declare-fun m!3636759 () Bool)

(assert (=> b!3309487 m!3636759))

(declare-fun m!3636761 () Bool)

(assert (=> b!3309463 m!3636761))

(declare-fun m!3636763 () Bool)

(assert (=> b!3309470 m!3636763))

(declare-fun m!3636765 () Bool)

(assert (=> b!3309462 m!3636765))

(declare-fun m!3636767 () Bool)

(assert (=> b!3309460 m!3636767))

(declare-fun m!3636769 () Bool)

(assert (=> b!3309460 m!3636769))

(declare-fun m!3636771 () Bool)

(assert (=> b!3309460 m!3636771))

(assert (=> b!3309460 m!3636767))

(declare-fun m!3636773 () Bool)

(assert (=> b!3309460 m!3636773))

(declare-fun m!3636775 () Bool)

(assert (=> b!3309460 m!3636775))

(assert (=> b!3309460 m!3636769))

(declare-fun m!3636777 () Bool)

(assert (=> b!3309460 m!3636777))

(declare-fun m!3636779 () Bool)

(assert (=> b!3309460 m!3636779))

(assert (=> b!3309460 m!3636773))

(declare-fun m!3636781 () Bool)

(assert (=> b!3309460 m!3636781))

(declare-fun m!3636783 () Bool)

(assert (=> b!3309460 m!3636783))

(assert (=> b!3309460 m!3636781))

(assert (=> b!3309460 m!3636775))

(declare-fun m!3636785 () Bool)

(assert (=> b!3309460 m!3636785))

(declare-fun m!3636787 () Bool)

(assert (=> start!308598 m!3636787))

(declare-fun m!3636789 () Bool)

(assert (=> b!3309480 m!3636789))

(declare-fun m!3636791 () Bool)

(assert (=> b!3309480 m!3636791))

(declare-fun m!3636793 () Bool)

(assert (=> b!3309476 m!3636793))

(declare-fun m!3636795 () Bool)

(assert (=> b!3309476 m!3636795))

(declare-fun m!3636797 () Bool)

(assert (=> b!3309482 m!3636797))

(declare-fun m!3636799 () Bool)

(assert (=> b!3309472 m!3636799))

(declare-fun m!3636801 () Bool)

(assert (=> b!3309472 m!3636801))

(declare-fun m!3636803 () Bool)

(assert (=> b!3309479 m!3636803))

(declare-fun m!3636805 () Bool)

(assert (=> b!3309479 m!3636805))

(declare-fun m!3636807 () Bool)

(assert (=> b!3309479 m!3636807))

(declare-fun m!3636809 () Bool)

(assert (=> b!3309479 m!3636809))

(declare-fun m!3636811 () Bool)

(assert (=> b!3309479 m!3636811))

(declare-fun m!3636813 () Bool)

(assert (=> b!3309477 m!3636813))

(assert (=> b!3309477 m!3636813))

(declare-fun m!3636815 () Bool)

(assert (=> b!3309477 m!3636815))

(declare-fun m!3636817 () Bool)

(assert (=> b!3309477 m!3636817))

(declare-fun m!3636819 () Bool)

(assert (=> b!3309473 m!3636819))

(declare-fun m!3636821 () Bool)

(assert (=> b!3309473 m!3636821))

(declare-fun m!3636823 () Bool)

(assert (=> b!3309473 m!3636823))

(declare-fun m!3636825 () Bool)

(assert (=> b!3309473 m!3636825))

(check-sat (not b!3309477) (not b!3309460) (not b!3309462) (not b!3309461) b_and!227123 (not b!3309465) (not b!3309464) (not b!3309471) (not b_next!87861) (not b!3309473) (not b_next!87859) (not b!3309476) (not b!3309484) b_and!227121 (not b_next!87863) (not b!3309479) (not start!308598) (not b!3309470) (not b!3309478) (not b!3309480) b_and!227119 (not b!3309472) (not b_next!87865) b_and!227127 (not b!3309474) (not b!3309487) (not b!3309469) (not b!3309463) (not b!3309481) (not b_next!87867) b_and!227129 b_and!227125 (not b_next!87857) (not b!3309482) (not b!3309486) (not b!3309488))
(check-sat b_and!227121 (not b_next!87863) b_and!227119 b_and!227123 (not b_next!87867) (not b_next!87861) (not b_next!87859) (not b_next!87857) (not b_next!87865) b_and!227127 b_and!227129 b_and!227125)
