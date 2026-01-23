; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!378970 () Bool)

(assert start!378970)

(declare-fun b!4024457 () Bool)

(declare-fun b_free!112033 () Bool)

(declare-fun b_next!112737 () Bool)

(assert (=> b!4024457 (= b_free!112033 (not b_next!112737))))

(declare-fun tp!1223204 () Bool)

(declare-fun b_and!309199 () Bool)

(assert (=> b!4024457 (= tp!1223204 b_and!309199)))

(declare-fun b_free!112035 () Bool)

(declare-fun b_next!112739 () Bool)

(assert (=> b!4024457 (= b_free!112035 (not b_next!112739))))

(declare-fun tp!1223203 () Bool)

(declare-fun b_and!309201 () Bool)

(assert (=> b!4024457 (= tp!1223203 b_and!309201)))

(declare-fun b!4024475 () Bool)

(declare-fun b_free!112037 () Bool)

(declare-fun b_next!112741 () Bool)

(assert (=> b!4024475 (= b_free!112037 (not b_next!112741))))

(declare-fun tp!1223198 () Bool)

(declare-fun b_and!309203 () Bool)

(assert (=> b!4024475 (= tp!1223198 b_and!309203)))

(declare-fun b_free!112039 () Bool)

(declare-fun b_next!112743 () Bool)

(assert (=> b!4024475 (= b_free!112039 (not b_next!112743))))

(declare-fun tp!1223200 () Bool)

(declare-fun b_and!309205 () Bool)

(assert (=> b!4024475 (= tp!1223200 b_and!309205)))

(declare-fun b!4024453 () Bool)

(declare-fun e!2496628 () Bool)

(declare-fun e!2496642 () Bool)

(assert (=> b!4024453 (= e!2496628 e!2496642)))

(declare-fun res!1637674 () Bool)

(assert (=> b!4024453 (=> res!1637674 e!2496642)))

(declare-datatypes ((C!23750 0))(
  ( (C!23751 (val!13969 Int)) )
))
(declare-datatypes ((List!43210 0))(
  ( (Nil!43086) (Cons!43086 (h!48506 C!23750) (t!333863 List!43210)) )
))
(declare-fun lt!1429658 () List!43210)

(declare-fun lt!1429661 () List!43210)

(declare-fun lt!1429650 () List!43210)

(assert (=> b!4024453 (= res!1637674 (or (not (= lt!1429650 lt!1429658)) (not (= lt!1429650 lt!1429661))))))

(assert (=> b!4024453 (= lt!1429658 lt!1429661)))

(declare-fun lt!1429652 () List!43210)

(declare-fun lt!1429654 () List!43210)

(declare-fun ++!11279 (List!43210 List!43210) List!43210)

(assert (=> b!4024453 (= lt!1429661 (++!11279 lt!1429652 lt!1429654))))

(declare-fun lt!1429660 () List!43210)

(declare-fun suffix!1299 () List!43210)

(assert (=> b!4024453 (= lt!1429658 (++!11279 lt!1429660 suffix!1299))))

(declare-fun lt!1429657 () List!43210)

(assert (=> b!4024453 (= lt!1429654 (++!11279 lt!1429657 suffix!1299))))

(declare-datatypes ((Unit!62248 0))(
  ( (Unit!62249) )
))
(declare-fun lt!1429659 () Unit!62248)

(declare-fun lemmaConcatAssociativity!2581 (List!43210 List!43210 List!43210) Unit!62248)

(assert (=> b!4024453 (= lt!1429659 (lemmaConcatAssociativity!2581 lt!1429652 lt!1429657 suffix!1299))))

(declare-fun b!4024454 () Bool)

(declare-fun e!2496633 () Bool)

(declare-fun tp_is_empty!20535 () Bool)

(declare-fun tp!1223206 () Bool)

(assert (=> b!4024454 (= e!2496633 (and tp_is_empty!20535 tp!1223206))))

(declare-datatypes ((List!43211 0))(
  ( (Nil!43087) (Cons!43087 (h!48507 (_ BitVec 16)) (t!333864 List!43211)) )
))
(declare-datatypes ((TokenValue!7107 0))(
  ( (FloatLiteralValue!14214 (text!50194 List!43211)) (TokenValueExt!7106 (__x!26431 Int)) (Broken!35535 (value!216604 List!43211)) (Object!7230) (End!7107) (Def!7107) (Underscore!7107) (Match!7107) (Else!7107) (Error!7107) (Case!7107) (If!7107) (Extends!7107) (Abstract!7107) (Class!7107) (Val!7107) (DelimiterValue!14214 (del!7167 List!43211)) (KeywordValue!7113 (value!216605 List!43211)) (CommentValue!14214 (value!216606 List!43211)) (WhitespaceValue!14214 (value!216607 List!43211)) (IndentationValue!7107 (value!216608 List!43211)) (String!49254) (Int32!7107) (Broken!35536 (value!216609 List!43211)) (Boolean!7108) (Unit!62250) (OperatorValue!7110 (op!7167 List!43211)) (IdentifierValue!14214 (value!216610 List!43211)) (IdentifierValue!14215 (value!216611 List!43211)) (WhitespaceValue!14215 (value!216612 List!43211)) (True!14214) (False!14214) (Broken!35537 (value!216613 List!43211)) (Broken!35538 (value!216614 List!43211)) (True!14215) (RightBrace!7107) (RightBracket!7107) (Colon!7107) (Null!7107) (Comma!7107) (LeftBracket!7107) (False!14215) (LeftBrace!7107) (ImaginaryLiteralValue!7107 (text!50195 List!43211)) (StringLiteralValue!21321 (value!216615 List!43211)) (EOFValue!7107 (value!216616 List!43211)) (IdentValue!7107 (value!216617 List!43211)) (DelimiterValue!14215 (value!216618 List!43211)) (DedentValue!7107 (value!216619 List!43211)) (NewLineValue!7107 (value!216620 List!43211)) (IntegerValue!21321 (value!216621 (_ BitVec 32)) (text!50196 List!43211)) (IntegerValue!21322 (value!216622 Int) (text!50197 List!43211)) (Times!7107) (Or!7107) (Equal!7107) (Minus!7107) (Broken!35539 (value!216623 List!43211)) (And!7107) (Div!7107) (LessEqual!7107) (Mod!7107) (Concat!18889) (Not!7107) (Plus!7107) (SpaceValue!7107 (value!216624 List!43211)) (IntegerValue!21323 (value!216625 Int) (text!50198 List!43211)) (StringLiteralValue!21322 (text!50199 List!43211)) (FloatLiteralValue!14215 (text!50200 List!43211)) (BytesLiteralValue!7107 (value!216626 List!43211)) (CommentValue!14215 (value!216627 List!43211)) (StringLiteralValue!21323 (value!216628 List!43211)) (ErrorTokenValue!7107 (msg!7168 List!43211)) )
))
(declare-datatypes ((Regex!11782 0))(
  ( (ElementMatch!11782 (c!695405 C!23750)) (Concat!18890 (regOne!24076 Regex!11782) (regTwo!24076 Regex!11782)) (EmptyExpr!11782) (Star!11782 (reg!12111 Regex!11782)) (EmptyLang!11782) (Union!11782 (regOne!24077 Regex!11782) (regTwo!24077 Regex!11782)) )
))
(declare-datatypes ((String!49255 0))(
  ( (String!49256 (value!216629 String)) )
))
(declare-datatypes ((IArray!26181 0))(
  ( (IArray!26182 (innerList!13148 List!43210)) )
))
(declare-datatypes ((Conc!13088 0))(
  ( (Node!13088 (left!32473 Conc!13088) (right!32803 Conc!13088) (csize!26406 Int) (cheight!13299 Int)) (Leaf!20234 (xs!16394 IArray!26181) (csize!26407 Int)) (Empty!13088) )
))
(declare-datatypes ((BalanceConc!25770 0))(
  ( (BalanceConc!25771 (c!695406 Conc!13088)) )
))
(declare-datatypes ((TokenValueInjection!13642 0))(
  ( (TokenValueInjection!13643 (toValue!9393 Int) (toChars!9252 Int)) )
))
(declare-datatypes ((Rule!13554 0))(
  ( (Rule!13555 (regex!6877 Regex!11782) (tag!7737 String!49255) (isSeparator!6877 Bool) (transformation!6877 TokenValueInjection!13642)) )
))
(declare-datatypes ((Token!12892 0))(
  ( (Token!12893 (value!216630 TokenValue!7107) (rule!9933 Rule!13554) (size!32211 Int) (originalCharacters!7477 List!43210)) )
))
(declare-fun token!484 () Token!12892)

(declare-fun e!2496641 () Bool)

(declare-fun e!2496629 () Bool)

(declare-fun tp!1223207 () Bool)

(declare-fun b!4024455 () Bool)

(declare-fun inv!21 (TokenValue!7107) Bool)

(assert (=> b!4024455 (= e!2496629 (and (inv!21 (value!216630 token!484)) e!2496641 tp!1223207))))

(declare-fun b!4024456 () Bool)

(declare-fun e!2496623 () Bool)

(declare-fun e!2496630 () Bool)

(assert (=> b!4024456 (= e!2496623 e!2496630)))

(declare-fun res!1637671 () Bool)

(assert (=> b!4024456 (=> (not res!1637671) (not e!2496630))))

(declare-fun prefix!494 () List!43210)

(declare-fun size!32212 (List!43210) Int)

(assert (=> b!4024456 (= res!1637671 (>= (size!32212 prefix!494) (size!32212 lt!1429652)))))

(declare-fun list!16023 (BalanceConc!25770) List!43210)

(declare-fun charsOf!4693 (Token!12892) BalanceConc!25770)

(assert (=> b!4024456 (= lt!1429652 (list!16023 (charsOf!4693 token!484)))))

(declare-fun e!2496639 () Bool)

(assert (=> b!4024457 (= e!2496639 (and tp!1223204 tp!1223203))))

(declare-fun b!4024458 () Bool)

(declare-fun res!1637672 () Bool)

(assert (=> b!4024458 (=> (not res!1637672) (not e!2496623))))

(declare-fun newSuffix!27 () List!43210)

(declare-fun isPrefix!3964 (List!43210 List!43210) Bool)

(assert (=> b!4024458 (= res!1637672 (isPrefix!3964 newSuffix!27 suffix!1299))))

(declare-fun b!4024459 () Bool)

(declare-fun res!1637679 () Bool)

(assert (=> b!4024459 (=> (not res!1637679) (not e!2496623))))

(declare-datatypes ((List!43212 0))(
  ( (Nil!43088) (Cons!43088 (h!48508 Rule!13554) (t!333865 List!43212)) )
))
(declare-fun rules!2999 () List!43212)

(declare-fun isEmpty!25722 (List!43212) Bool)

(assert (=> b!4024459 (= res!1637679 (not (isEmpty!25722 rules!2999)))))

(declare-fun b!4024460 () Bool)

(declare-fun e!2496637 () Bool)

(declare-fun tp!1223199 () Bool)

(assert (=> b!4024460 (= e!2496637 (and tp_is_empty!20535 tp!1223199))))

(declare-fun b!4024461 () Bool)

(declare-fun res!1637676 () Bool)

(assert (=> b!4024461 (=> (not res!1637676) (not e!2496630))))

(declare-fun newSuffixResult!27 () List!43210)

(assert (=> b!4024461 (= res!1637676 (= (++!11279 lt!1429652 newSuffixResult!27) (++!11279 prefix!494 newSuffix!27)))))

(declare-fun tp!1223202 () Bool)

(declare-fun b!4024462 () Bool)

(declare-fun inv!57554 (String!49255) Bool)

(declare-fun inv!57557 (TokenValueInjection!13642) Bool)

(assert (=> b!4024462 (= e!2496641 (and tp!1223202 (inv!57554 (tag!7737 (rule!9933 token!484))) (inv!57557 (transformation!6877 (rule!9933 token!484))) e!2496639))))

(declare-fun b!4024464 () Bool)

(declare-fun e!2496640 () Bool)

(declare-fun tp!1223209 () Bool)

(assert (=> b!4024464 (= e!2496640 (and tp_is_empty!20535 tp!1223209))))

(declare-fun b!4024465 () Bool)

(declare-fun e!2496631 () Bool)

(declare-fun tp!1223197 () Bool)

(assert (=> b!4024465 (= e!2496631 (and tp_is_empty!20535 tp!1223197))))

(declare-fun b!4024466 () Bool)

(declare-fun e!2496638 () Bool)

(assert (=> b!4024466 (= e!2496630 e!2496638)))

(declare-fun res!1637668 () Bool)

(assert (=> b!4024466 (=> (not res!1637668) (not e!2496638))))

(declare-fun suffixResult!105 () List!43210)

(declare-datatypes ((LexerInterface!6466 0))(
  ( (LexerInterfaceExt!6463 (__x!26432 Int)) (Lexer!6464) )
))
(declare-fun thiss!21717 () LexerInterface!6466)

(declare-datatypes ((tuple2!42200 0))(
  ( (tuple2!42201 (_1!24234 Token!12892) (_2!24234 List!43210)) )
))
(declare-datatypes ((Option!9291 0))(
  ( (None!9290) (Some!9290 (v!39670 tuple2!42200)) )
))
(declare-fun maxPrefix!3764 (LexerInterface!6466 List!43212 List!43210) Option!9291)

(assert (=> b!4024466 (= res!1637668 (= (maxPrefix!3764 thiss!21717 rules!2999 lt!1429650) (Some!9290 (tuple2!42201 token!484 suffixResult!105))))))

(assert (=> b!4024466 (= lt!1429650 (++!11279 prefix!494 suffix!1299))))

(declare-fun e!2496625 () Bool)

(declare-fun e!2496636 () Bool)

(declare-fun tp!1223208 () Bool)

(declare-fun b!4024467 () Bool)

(assert (=> b!4024467 (= e!2496636 (and tp!1223208 (inv!57554 (tag!7737 (h!48508 rules!2999))) (inv!57557 (transformation!6877 (h!48508 rules!2999))) e!2496625))))

(declare-fun b!4024468 () Bool)

(declare-fun contains!8557 (List!43212 Rule!13554) Bool)

(assert (=> b!4024468 (= e!2496642 (contains!8557 rules!2999 (rule!9933 token!484)))))

(assert (=> b!4024468 (= lt!1429654 suffixResult!105)))

(declare-fun lt!1429653 () Unit!62248)

(declare-fun lemmaSamePrefixThenSameSuffix!2125 (List!43210 List!43210 List!43210 List!43210 List!43210) Unit!62248)

(assert (=> b!4024468 (= lt!1429653 (lemmaSamePrefixThenSameSuffix!2125 lt!1429652 lt!1429654 lt!1429652 suffixResult!105 lt!1429650))))

(assert (=> b!4024468 (isPrefix!3964 lt!1429652 lt!1429661)))

(declare-fun lt!1429655 () Unit!62248)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2799 (List!43210 List!43210) Unit!62248)

(assert (=> b!4024468 (= lt!1429655 (lemmaConcatTwoListThenFirstIsPrefix!2799 lt!1429652 lt!1429654))))

(declare-fun b!4024469 () Bool)

(declare-fun e!2496634 () Bool)

(declare-fun tp!1223205 () Bool)

(assert (=> b!4024469 (= e!2496634 (and tp_is_empty!20535 tp!1223205))))

(declare-fun b!4024470 () Bool)

(declare-fun e!2496624 () Bool)

(assert (=> b!4024470 (= e!2496624 e!2496628)))

(declare-fun res!1637677 () Bool)

(assert (=> b!4024470 (=> res!1637677 e!2496628)))

(assert (=> b!4024470 (= res!1637677 (not (= lt!1429660 prefix!494)))))

(assert (=> b!4024470 (= lt!1429660 (++!11279 lt!1429652 lt!1429657))))

(declare-fun getSuffix!2381 (List!43210 List!43210) List!43210)

(assert (=> b!4024470 (= lt!1429657 (getSuffix!2381 prefix!494 lt!1429652))))

(assert (=> b!4024470 (isPrefix!3964 lt!1429652 prefix!494)))

(declare-fun lt!1429649 () Unit!62248)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!528 (List!43210 List!43210 List!43210) Unit!62248)

(assert (=> b!4024470 (= lt!1429649 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!528 prefix!494 lt!1429652 lt!1429650))))

(declare-fun b!4024463 () Bool)

(declare-fun e!2496626 () Bool)

(assert (=> b!4024463 (= e!2496626 e!2496624)))

(declare-fun res!1637678 () Bool)

(assert (=> b!4024463 (=> res!1637678 e!2496624)))

(assert (=> b!4024463 (= res!1637678 (not (isPrefix!3964 lt!1429652 lt!1429650)))))

(assert (=> b!4024463 (isPrefix!3964 prefix!494 lt!1429650)))

(declare-fun lt!1429656 () Unit!62248)

(assert (=> b!4024463 (= lt!1429656 (lemmaConcatTwoListThenFirstIsPrefix!2799 prefix!494 suffix!1299))))

(declare-fun lt!1429663 () List!43210)

(assert (=> b!4024463 (isPrefix!3964 lt!1429652 lt!1429663)))

(declare-fun lt!1429651 () Unit!62248)

(assert (=> b!4024463 (= lt!1429651 (lemmaConcatTwoListThenFirstIsPrefix!2799 lt!1429652 suffixResult!105))))

(declare-fun res!1637675 () Bool)

(assert (=> start!378970 (=> (not res!1637675) (not e!2496623))))

(assert (=> start!378970 (= res!1637675 (is-Lexer!6464 thiss!21717))))

(assert (=> start!378970 e!2496623))

(assert (=> start!378970 e!2496634))

(declare-fun inv!57558 (Token!12892) Bool)

(assert (=> start!378970 (and (inv!57558 token!484) e!2496629)))

(assert (=> start!378970 e!2496637))

(assert (=> start!378970 e!2496631))

(assert (=> start!378970 e!2496640))

(assert (=> start!378970 true))

(declare-fun e!2496632 () Bool)

(assert (=> start!378970 e!2496632))

(assert (=> start!378970 e!2496633))

(declare-fun b!4024471 () Bool)

(assert (=> b!4024471 (= e!2496638 (not e!2496626))))

(declare-fun res!1637670 () Bool)

(assert (=> b!4024471 (=> res!1637670 e!2496626)))

(assert (=> b!4024471 (= res!1637670 (not (= lt!1429663 lt!1429650)))))

(assert (=> b!4024471 (= lt!1429663 (++!11279 lt!1429652 suffixResult!105))))

(declare-fun lt!1429662 () Unit!62248)

(declare-fun lemmaInv!1086 (TokenValueInjection!13642) Unit!62248)

(assert (=> b!4024471 (= lt!1429662 (lemmaInv!1086 (transformation!6877 (rule!9933 token!484))))))

(declare-fun ruleValid!2807 (LexerInterface!6466 Rule!13554) Bool)

(assert (=> b!4024471 (ruleValid!2807 thiss!21717 (rule!9933 token!484))))

(declare-fun lt!1429648 () Unit!62248)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1877 (LexerInterface!6466 Rule!13554 List!43212) Unit!62248)

(assert (=> b!4024471 (= lt!1429648 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1877 thiss!21717 (rule!9933 token!484) rules!2999))))

(declare-fun b!4024472 () Bool)

(declare-fun res!1637669 () Bool)

(assert (=> b!4024472 (=> (not res!1637669) (not e!2496623))))

(assert (=> b!4024472 (= res!1637669 (>= (size!32212 suffix!1299) (size!32212 newSuffix!27)))))

(declare-fun b!4024473 () Bool)

(declare-fun tp!1223201 () Bool)

(assert (=> b!4024473 (= e!2496632 (and e!2496636 tp!1223201))))

(declare-fun b!4024474 () Bool)

(declare-fun res!1637673 () Bool)

(assert (=> b!4024474 (=> (not res!1637673) (not e!2496623))))

(declare-fun rulesInvariant!5809 (LexerInterface!6466 List!43212) Bool)

(assert (=> b!4024474 (= res!1637673 (rulesInvariant!5809 thiss!21717 rules!2999))))

(assert (=> b!4024475 (= e!2496625 (and tp!1223198 tp!1223200))))

(assert (= (and start!378970 res!1637675) b!4024459))

(assert (= (and b!4024459 res!1637679) b!4024474))

(assert (= (and b!4024474 res!1637673) b!4024472))

(assert (= (and b!4024472 res!1637669) b!4024458))

(assert (= (and b!4024458 res!1637672) b!4024456))

(assert (= (and b!4024456 res!1637671) b!4024461))

(assert (= (and b!4024461 res!1637676) b!4024466))

(assert (= (and b!4024466 res!1637668) b!4024471))

(assert (= (and b!4024471 (not res!1637670)) b!4024463))

(assert (= (and b!4024463 (not res!1637678)) b!4024470))

(assert (= (and b!4024470 (not res!1637677)) b!4024453))

(assert (= (and b!4024453 (not res!1637674)) b!4024468))

(assert (= (and start!378970 (is-Cons!43086 prefix!494)) b!4024469))

(assert (= b!4024462 b!4024457))

(assert (= b!4024455 b!4024462))

(assert (= start!378970 b!4024455))

(assert (= (and start!378970 (is-Cons!43086 suffixResult!105)) b!4024460))

(assert (= (and start!378970 (is-Cons!43086 suffix!1299)) b!4024465))

(assert (= (and start!378970 (is-Cons!43086 newSuffix!27)) b!4024464))

(assert (= b!4024467 b!4024475))

(assert (= b!4024473 b!4024467))

(assert (= (and start!378970 (is-Cons!43088 rules!2999)) b!4024473))

(assert (= (and start!378970 (is-Cons!43086 newSuffixResult!27)) b!4024454))

(declare-fun m!4615429 () Bool)

(assert (=> b!4024456 m!4615429))

(declare-fun m!4615431 () Bool)

(assert (=> b!4024456 m!4615431))

(declare-fun m!4615433 () Bool)

(assert (=> b!4024456 m!4615433))

(assert (=> b!4024456 m!4615433))

(declare-fun m!4615435 () Bool)

(assert (=> b!4024456 m!4615435))

(declare-fun m!4615437 () Bool)

(assert (=> start!378970 m!4615437))

(declare-fun m!4615439 () Bool)

(assert (=> b!4024462 m!4615439))

(declare-fun m!4615441 () Bool)

(assert (=> b!4024462 m!4615441))

(declare-fun m!4615443 () Bool)

(assert (=> b!4024470 m!4615443))

(declare-fun m!4615445 () Bool)

(assert (=> b!4024470 m!4615445))

(declare-fun m!4615447 () Bool)

(assert (=> b!4024470 m!4615447))

(declare-fun m!4615449 () Bool)

(assert (=> b!4024470 m!4615449))

(declare-fun m!4615451 () Bool)

(assert (=> b!4024453 m!4615451))

(declare-fun m!4615453 () Bool)

(assert (=> b!4024453 m!4615453))

(declare-fun m!4615455 () Bool)

(assert (=> b!4024453 m!4615455))

(declare-fun m!4615457 () Bool)

(assert (=> b!4024453 m!4615457))

(declare-fun m!4615459 () Bool)

(assert (=> b!4024463 m!4615459))

(declare-fun m!4615461 () Bool)

(assert (=> b!4024463 m!4615461))

(declare-fun m!4615463 () Bool)

(assert (=> b!4024463 m!4615463))

(declare-fun m!4615465 () Bool)

(assert (=> b!4024463 m!4615465))

(declare-fun m!4615467 () Bool)

(assert (=> b!4024463 m!4615467))

(declare-fun m!4615469 () Bool)

(assert (=> b!4024455 m!4615469))

(declare-fun m!4615471 () Bool)

(assert (=> b!4024472 m!4615471))

(declare-fun m!4615473 () Bool)

(assert (=> b!4024472 m!4615473))

(declare-fun m!4615475 () Bool)

(assert (=> b!4024467 m!4615475))

(declare-fun m!4615477 () Bool)

(assert (=> b!4024467 m!4615477))

(declare-fun m!4615479 () Bool)

(assert (=> b!4024471 m!4615479))

(declare-fun m!4615481 () Bool)

(assert (=> b!4024471 m!4615481))

(declare-fun m!4615483 () Bool)

(assert (=> b!4024471 m!4615483))

(declare-fun m!4615485 () Bool)

(assert (=> b!4024471 m!4615485))

(declare-fun m!4615487 () Bool)

(assert (=> b!4024458 m!4615487))

(declare-fun m!4615489 () Bool)

(assert (=> b!4024466 m!4615489))

(declare-fun m!4615491 () Bool)

(assert (=> b!4024466 m!4615491))

(declare-fun m!4615493 () Bool)

(assert (=> b!4024459 m!4615493))

(declare-fun m!4615495 () Bool)

(assert (=> b!4024461 m!4615495))

(declare-fun m!4615497 () Bool)

(assert (=> b!4024461 m!4615497))

(declare-fun m!4615499 () Bool)

(assert (=> b!4024474 m!4615499))

(declare-fun m!4615501 () Bool)

(assert (=> b!4024468 m!4615501))

(declare-fun m!4615503 () Bool)

(assert (=> b!4024468 m!4615503))

(declare-fun m!4615505 () Bool)

(assert (=> b!4024468 m!4615505))

(declare-fun m!4615507 () Bool)

(assert (=> b!4024468 m!4615507))

(push 1)

(assert (not b!4024466))

(assert (not b!4024468))

(assert tp_is_empty!20535)

(assert (not b_next!112741))

(assert (not b_next!112737))

(assert (not b_next!112743))

(assert (not b!4024464))

(assert (not b_next!112739))

(assert (not b!4024470))

(assert (not b!4024460))

(assert (not b!4024469))

(assert (not b!4024462))

(assert (not b!4024474))

(assert (not b!4024473))

(assert b_and!309205)

(assert (not b!4024458))

(assert (not b!4024453))

(assert (not b!4024459))

(assert (not b!4024472))

(assert (not start!378970))

(assert (not b!4024461))

(assert (not b!4024463))

(assert (not b!4024471))

(assert (not b!4024456))

(assert b_and!309201)

(assert (not b!4024467))

(assert (not b!4024454))

(assert (not b!4024455))

(assert (not b!4024465))

(assert b_and!309199)

(assert b_and!309203)

(check-sat)

(pop 1)

(push 1)

(assert b_and!309205)

(assert (not b_next!112741))

(assert (not b_next!112737))

(assert (not b_next!112743))

(assert (not b_next!112739))

(assert b_and!309201)

(assert b_and!309199)

(assert b_and!309203)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1191774 () Bool)

(declare-fun lt!1429718 () Bool)

(declare-fun content!6537 (List!43212) (Set Rule!13554))

(assert (=> d!1191774 (= lt!1429718 (set.member (rule!9933 token!484) (content!6537 rules!2999)))))

(declare-fun e!2496718 () Bool)

(assert (=> d!1191774 (= lt!1429718 e!2496718)))

(declare-fun res!1637726 () Bool)

(assert (=> d!1191774 (=> (not res!1637726) (not e!2496718))))

(assert (=> d!1191774 (= res!1637726 (is-Cons!43088 rules!2999))))

(assert (=> d!1191774 (= (contains!8557 rules!2999 (rule!9933 token!484)) lt!1429718)))

(declare-fun b!4024559 () Bool)

(declare-fun e!2496717 () Bool)

(assert (=> b!4024559 (= e!2496718 e!2496717)))

(declare-fun res!1637727 () Bool)

(assert (=> b!4024559 (=> res!1637727 e!2496717)))

(assert (=> b!4024559 (= res!1637727 (= (h!48508 rules!2999) (rule!9933 token!484)))))

(declare-fun b!4024560 () Bool)

(assert (=> b!4024560 (= e!2496717 (contains!8557 (t!333865 rules!2999) (rule!9933 token!484)))))

(assert (= (and d!1191774 res!1637726) b!4024559))

(assert (= (and b!4024559 (not res!1637727)) b!4024560))

(declare-fun m!4615593 () Bool)

(assert (=> d!1191774 m!4615593))

(declare-fun m!4615595 () Bool)

(assert (=> d!1191774 m!4615595))

(declare-fun m!4615597 () Bool)

(assert (=> b!4024560 m!4615597))

(assert (=> b!4024468 d!1191774))

(declare-fun d!1191776 () Bool)

(assert (=> d!1191776 (= lt!1429654 suffixResult!105)))

(declare-fun lt!1429721 () Unit!62248)

(declare-fun choose!24327 (List!43210 List!43210 List!43210 List!43210 List!43210) Unit!62248)

(assert (=> d!1191776 (= lt!1429721 (choose!24327 lt!1429652 lt!1429654 lt!1429652 suffixResult!105 lt!1429650))))

(assert (=> d!1191776 (isPrefix!3964 lt!1429652 lt!1429650)))

(assert (=> d!1191776 (= (lemmaSamePrefixThenSameSuffix!2125 lt!1429652 lt!1429654 lt!1429652 suffixResult!105 lt!1429650) lt!1429721)))

(declare-fun bs!589987 () Bool)

(assert (= bs!589987 d!1191776))

(declare-fun m!4615603 () Bool)

(assert (=> bs!589987 m!4615603))

(assert (=> bs!589987 m!4615459))

(assert (=> b!4024468 d!1191776))

(declare-fun b!4024571 () Bool)

(declare-fun res!1637737 () Bool)

(declare-fun e!2496726 () Bool)

(assert (=> b!4024571 (=> (not res!1637737) (not e!2496726))))

(declare-fun head!8532 (List!43210) C!23750)

(assert (=> b!4024571 (= res!1637737 (= (head!8532 lt!1429652) (head!8532 lt!1429661)))))

(declare-fun d!1191780 () Bool)

(declare-fun e!2496728 () Bool)

(assert (=> d!1191780 e!2496728))

(declare-fun res!1637738 () Bool)

(assert (=> d!1191780 (=> res!1637738 e!2496728)))

(declare-fun lt!1429724 () Bool)

(assert (=> d!1191780 (= res!1637738 (not lt!1429724))))

(declare-fun e!2496727 () Bool)

(assert (=> d!1191780 (= lt!1429724 e!2496727)))

(declare-fun res!1637739 () Bool)

(assert (=> d!1191780 (=> res!1637739 e!2496727)))

(assert (=> d!1191780 (= res!1637739 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191780 (= (isPrefix!3964 lt!1429652 lt!1429661) lt!1429724)))

(declare-fun b!4024570 () Bool)

(assert (=> b!4024570 (= e!2496727 e!2496726)))

(declare-fun res!1637740 () Bool)

(assert (=> b!4024570 (=> (not res!1637740) (not e!2496726))))

(assert (=> b!4024570 (= res!1637740 (not (is-Nil!43086 lt!1429661)))))

(declare-fun b!4024573 () Bool)

(assert (=> b!4024573 (= e!2496728 (>= (size!32212 lt!1429661) (size!32212 lt!1429652)))))

(declare-fun b!4024572 () Bool)

(declare-fun tail!6264 (List!43210) List!43210)

(assert (=> b!4024572 (= e!2496726 (isPrefix!3964 (tail!6264 lt!1429652) (tail!6264 lt!1429661)))))

(assert (= (and d!1191780 (not res!1637739)) b!4024570))

(assert (= (and b!4024570 res!1637740) b!4024571))

(assert (= (and b!4024571 res!1637737) b!4024572))

(assert (= (and d!1191780 (not res!1637738)) b!4024573))

(declare-fun m!4615605 () Bool)

(assert (=> b!4024571 m!4615605))

(declare-fun m!4615607 () Bool)

(assert (=> b!4024571 m!4615607))

(declare-fun m!4615609 () Bool)

(assert (=> b!4024573 m!4615609))

(assert (=> b!4024573 m!4615431))

(declare-fun m!4615611 () Bool)

(assert (=> b!4024572 m!4615611))

(declare-fun m!4615613 () Bool)

(assert (=> b!4024572 m!4615613))

(assert (=> b!4024572 m!4615611))

(assert (=> b!4024572 m!4615613))

(declare-fun m!4615615 () Bool)

(assert (=> b!4024572 m!4615615))

(assert (=> b!4024468 d!1191780))

(declare-fun d!1191782 () Bool)

(assert (=> d!1191782 (isPrefix!3964 lt!1429652 (++!11279 lt!1429652 lt!1429654))))

(declare-fun lt!1429729 () Unit!62248)

(declare-fun choose!24328 (List!43210 List!43210) Unit!62248)

(assert (=> d!1191782 (= lt!1429729 (choose!24328 lt!1429652 lt!1429654))))

(assert (=> d!1191782 (= (lemmaConcatTwoListThenFirstIsPrefix!2799 lt!1429652 lt!1429654) lt!1429729)))

(declare-fun bs!589988 () Bool)

(assert (= bs!589988 d!1191782))

(assert (=> bs!589988 m!4615451))

(assert (=> bs!589988 m!4615451))

(declare-fun m!4615617 () Bool)

(assert (=> bs!589988 m!4615617))

(declare-fun m!4615619 () Bool)

(assert (=> bs!589988 m!4615619))

(assert (=> b!4024468 d!1191782))

(declare-fun b!4024583 () Bool)

(declare-fun res!1637749 () Bool)

(declare-fun e!2496735 () Bool)

(assert (=> b!4024583 (=> (not res!1637749) (not e!2496735))))

(assert (=> b!4024583 (= res!1637749 (= (head!8532 newSuffix!27) (head!8532 suffix!1299)))))

(declare-fun d!1191784 () Bool)

(declare-fun e!2496737 () Bool)

(assert (=> d!1191784 e!2496737))

(declare-fun res!1637750 () Bool)

(assert (=> d!1191784 (=> res!1637750 e!2496737)))

(declare-fun lt!1429730 () Bool)

(assert (=> d!1191784 (= res!1637750 (not lt!1429730))))

(declare-fun e!2496736 () Bool)

(assert (=> d!1191784 (= lt!1429730 e!2496736)))

(declare-fun res!1637751 () Bool)

(assert (=> d!1191784 (=> res!1637751 e!2496736)))

(assert (=> d!1191784 (= res!1637751 (is-Nil!43086 newSuffix!27))))

(assert (=> d!1191784 (= (isPrefix!3964 newSuffix!27 suffix!1299) lt!1429730)))

(declare-fun b!4024582 () Bool)

(assert (=> b!4024582 (= e!2496736 e!2496735)))

(declare-fun res!1637752 () Bool)

(assert (=> b!4024582 (=> (not res!1637752) (not e!2496735))))

(assert (=> b!4024582 (= res!1637752 (not (is-Nil!43086 suffix!1299)))))

(declare-fun b!4024585 () Bool)

(assert (=> b!4024585 (= e!2496737 (>= (size!32212 suffix!1299) (size!32212 newSuffix!27)))))

(declare-fun b!4024584 () Bool)

(assert (=> b!4024584 (= e!2496735 (isPrefix!3964 (tail!6264 newSuffix!27) (tail!6264 suffix!1299)))))

(assert (= (and d!1191784 (not res!1637751)) b!4024582))

(assert (= (and b!4024582 res!1637752) b!4024583))

(assert (= (and b!4024583 res!1637749) b!4024584))

(assert (= (and d!1191784 (not res!1637750)) b!4024585))

(declare-fun m!4615621 () Bool)

(assert (=> b!4024583 m!4615621))

(declare-fun m!4615623 () Bool)

(assert (=> b!4024583 m!4615623))

(assert (=> b!4024585 m!4615471))

(assert (=> b!4024585 m!4615473))

(declare-fun m!4615625 () Bool)

(assert (=> b!4024584 m!4615625))

(declare-fun m!4615627 () Bool)

(assert (=> b!4024584 m!4615627))

(assert (=> b!4024584 m!4615625))

(assert (=> b!4024584 m!4615627))

(declare-fun m!4615629 () Bool)

(assert (=> b!4024584 m!4615629))

(assert (=> b!4024458 d!1191784))

(declare-fun d!1191786 () Bool)

(declare-fun lt!1429733 () Int)

(assert (=> d!1191786 (>= lt!1429733 0)))

(declare-fun e!2496740 () Int)

(assert (=> d!1191786 (= lt!1429733 e!2496740)))

(declare-fun c!695416 () Bool)

(assert (=> d!1191786 (= c!695416 (is-Nil!43086 prefix!494))))

(assert (=> d!1191786 (= (size!32212 prefix!494) lt!1429733)))

(declare-fun b!4024590 () Bool)

(assert (=> b!4024590 (= e!2496740 0)))

(declare-fun b!4024591 () Bool)

(assert (=> b!4024591 (= e!2496740 (+ 1 (size!32212 (t!333863 prefix!494))))))

(assert (= (and d!1191786 c!695416) b!4024590))

(assert (= (and d!1191786 (not c!695416)) b!4024591))

(declare-fun m!4615631 () Bool)

(assert (=> b!4024591 m!4615631))

(assert (=> b!4024456 d!1191786))

(declare-fun d!1191788 () Bool)

(declare-fun lt!1429734 () Int)

(assert (=> d!1191788 (>= lt!1429734 0)))

(declare-fun e!2496741 () Int)

(assert (=> d!1191788 (= lt!1429734 e!2496741)))

(declare-fun c!695417 () Bool)

(assert (=> d!1191788 (= c!695417 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191788 (= (size!32212 lt!1429652) lt!1429734)))

(declare-fun b!4024592 () Bool)

(assert (=> b!4024592 (= e!2496741 0)))

(declare-fun b!4024593 () Bool)

(assert (=> b!4024593 (= e!2496741 (+ 1 (size!32212 (t!333863 lt!1429652))))))

(assert (= (and d!1191788 c!695417) b!4024592))

(assert (= (and d!1191788 (not c!695417)) b!4024593))

(declare-fun m!4615633 () Bool)

(assert (=> b!4024593 m!4615633))

(assert (=> b!4024456 d!1191788))

(declare-fun d!1191790 () Bool)

(declare-fun list!16025 (Conc!13088) List!43210)

(assert (=> d!1191790 (= (list!16023 (charsOf!4693 token!484)) (list!16025 (c!695406 (charsOf!4693 token!484))))))

(declare-fun bs!589989 () Bool)

(assert (= bs!589989 d!1191790))

(declare-fun m!4615635 () Bool)

(assert (=> bs!589989 m!4615635))

(assert (=> b!4024456 d!1191790))

(declare-fun d!1191792 () Bool)

(declare-fun lt!1429738 () BalanceConc!25770)

(assert (=> d!1191792 (= (list!16023 lt!1429738) (originalCharacters!7477 token!484))))

(declare-fun dynLambda!18263 (Int TokenValue!7107) BalanceConc!25770)

(assert (=> d!1191792 (= lt!1429738 (dynLambda!18263 (toChars!9252 (transformation!6877 (rule!9933 token!484))) (value!216630 token!484)))))

(assert (=> d!1191792 (= (charsOf!4693 token!484) lt!1429738)))

(declare-fun b_lambda!117403 () Bool)

(assert (=> (not b_lambda!117403) (not d!1191792)))

(declare-fun t!333870 () Bool)

(declare-fun tb!241901 () Bool)

(assert (=> (and b!4024457 (= (toChars!9252 (transformation!6877 (rule!9933 token!484))) (toChars!9252 (transformation!6877 (rule!9933 token!484)))) t!333870) tb!241901))

(declare-fun b!4024602 () Bool)

(declare-fun e!2496747 () Bool)

(declare-fun tp!1223251 () Bool)

(declare-fun inv!57561 (Conc!13088) Bool)

(assert (=> b!4024602 (= e!2496747 (and (inv!57561 (c!695406 (dynLambda!18263 (toChars!9252 (transformation!6877 (rule!9933 token!484))) (value!216630 token!484)))) tp!1223251))))

(declare-fun result!293182 () Bool)

(declare-fun inv!57562 (BalanceConc!25770) Bool)

(assert (=> tb!241901 (= result!293182 (and (inv!57562 (dynLambda!18263 (toChars!9252 (transformation!6877 (rule!9933 token!484))) (value!216630 token!484))) e!2496747))))

(assert (= tb!241901 b!4024602))

(declare-fun m!4615647 () Bool)

(assert (=> b!4024602 m!4615647))

(declare-fun m!4615649 () Bool)

(assert (=> tb!241901 m!4615649))

(assert (=> d!1191792 t!333870))

(declare-fun b_and!309215 () Bool)

(assert (= b_and!309201 (and (=> t!333870 result!293182) b_and!309215)))

(declare-fun tb!241903 () Bool)

(declare-fun t!333872 () Bool)

(assert (=> (and b!4024475 (= (toChars!9252 (transformation!6877 (h!48508 rules!2999))) (toChars!9252 (transformation!6877 (rule!9933 token!484)))) t!333872) tb!241903))

(declare-fun result!293186 () Bool)

(assert (= result!293186 result!293182))

(assert (=> d!1191792 t!333872))

(declare-fun b_and!309217 () Bool)

(assert (= b_and!309205 (and (=> t!333872 result!293186) b_and!309217)))

(declare-fun m!4615651 () Bool)

(assert (=> d!1191792 m!4615651))

(declare-fun m!4615653 () Bool)

(assert (=> d!1191792 m!4615653))

(assert (=> b!4024456 d!1191792))

(declare-fun d!1191796 () Bool)

(assert (=> d!1191796 (= (inv!57554 (tag!7737 (h!48508 rules!2999))) (= (mod (str.len (value!216629 (tag!7737 (h!48508 rules!2999)))) 2) 0))))

(assert (=> b!4024467 d!1191796))

(declare-fun d!1191798 () Bool)

(declare-fun res!1637759 () Bool)

(declare-fun e!2496750 () Bool)

(assert (=> d!1191798 (=> (not res!1637759) (not e!2496750))))

(declare-fun semiInverseModEq!2937 (Int Int) Bool)

(assert (=> d!1191798 (= res!1637759 (semiInverseModEq!2937 (toChars!9252 (transformation!6877 (h!48508 rules!2999))) (toValue!9393 (transformation!6877 (h!48508 rules!2999)))))))

(assert (=> d!1191798 (= (inv!57557 (transformation!6877 (h!48508 rules!2999))) e!2496750)))

(declare-fun b!4024605 () Bool)

(declare-fun equivClasses!2836 (Int Int) Bool)

(assert (=> b!4024605 (= e!2496750 (equivClasses!2836 (toChars!9252 (transformation!6877 (h!48508 rules!2999))) (toValue!9393 (transformation!6877 (h!48508 rules!2999)))))))

(assert (= (and d!1191798 res!1637759) b!4024605))

(declare-fun m!4615655 () Bool)

(assert (=> d!1191798 m!4615655))

(declare-fun m!4615657 () Bool)

(assert (=> b!4024605 m!4615657))

(assert (=> b!4024467 d!1191798))

(declare-fun b!4024616 () Bool)

(declare-fun res!1637764 () Bool)

(declare-fun e!2496756 () Bool)

(assert (=> b!4024616 (=> (not res!1637764) (not e!2496756))))

(declare-fun lt!1429741 () List!43210)

(assert (=> b!4024616 (= res!1637764 (= (size!32212 lt!1429741) (+ (size!32212 lt!1429652) (size!32212 suffixResult!105))))))

(declare-fun b!4024617 () Bool)

(assert (=> b!4024617 (= e!2496756 (or (not (= suffixResult!105 Nil!43086)) (= lt!1429741 lt!1429652)))))

(declare-fun b!4024614 () Bool)

(declare-fun e!2496755 () List!43210)

(assert (=> b!4024614 (= e!2496755 suffixResult!105)))

(declare-fun b!4024615 () Bool)

(assert (=> b!4024615 (= e!2496755 (Cons!43086 (h!48506 lt!1429652) (++!11279 (t!333863 lt!1429652) suffixResult!105)))))

(declare-fun d!1191800 () Bool)

(assert (=> d!1191800 e!2496756))

(declare-fun res!1637765 () Bool)

(assert (=> d!1191800 (=> (not res!1637765) (not e!2496756))))

(declare-fun content!6538 (List!43210) (Set C!23750))

(assert (=> d!1191800 (= res!1637765 (= (content!6538 lt!1429741) (set.union (content!6538 lt!1429652) (content!6538 suffixResult!105))))))

(assert (=> d!1191800 (= lt!1429741 e!2496755)))

(declare-fun c!695420 () Bool)

(assert (=> d!1191800 (= c!695420 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191800 (= (++!11279 lt!1429652 suffixResult!105) lt!1429741)))

(assert (= (and d!1191800 c!695420) b!4024614))

(assert (= (and d!1191800 (not c!695420)) b!4024615))

(assert (= (and d!1191800 res!1637765) b!4024616))

(assert (= (and b!4024616 res!1637764) b!4024617))

(declare-fun m!4615659 () Bool)

(assert (=> b!4024616 m!4615659))

(assert (=> b!4024616 m!4615431))

(declare-fun m!4615661 () Bool)

(assert (=> b!4024616 m!4615661))

(declare-fun m!4615663 () Bool)

(assert (=> b!4024615 m!4615663))

(declare-fun m!4615665 () Bool)

(assert (=> d!1191800 m!4615665))

(declare-fun m!4615667 () Bool)

(assert (=> d!1191800 m!4615667))

(declare-fun m!4615669 () Bool)

(assert (=> d!1191800 m!4615669))

(assert (=> b!4024471 d!1191800))

(declare-fun d!1191802 () Bool)

(declare-fun e!2496759 () Bool)

(assert (=> d!1191802 e!2496759))

(declare-fun res!1637768 () Bool)

(assert (=> d!1191802 (=> (not res!1637768) (not e!2496759))))

(assert (=> d!1191802 (= res!1637768 (semiInverseModEq!2937 (toChars!9252 (transformation!6877 (rule!9933 token!484))) (toValue!9393 (transformation!6877 (rule!9933 token!484)))))))

(declare-fun Unit!62254 () Unit!62248)

(assert (=> d!1191802 (= (lemmaInv!1086 (transformation!6877 (rule!9933 token!484))) Unit!62254)))

(declare-fun b!4024620 () Bool)

(assert (=> b!4024620 (= e!2496759 (equivClasses!2836 (toChars!9252 (transformation!6877 (rule!9933 token!484))) (toValue!9393 (transformation!6877 (rule!9933 token!484)))))))

(assert (= (and d!1191802 res!1637768) b!4024620))

(declare-fun m!4615671 () Bool)

(assert (=> d!1191802 m!4615671))

(declare-fun m!4615673 () Bool)

(assert (=> b!4024620 m!4615673))

(assert (=> b!4024471 d!1191802))

(declare-fun d!1191804 () Bool)

(declare-fun res!1637773 () Bool)

(declare-fun e!2496762 () Bool)

(assert (=> d!1191804 (=> (not res!1637773) (not e!2496762))))

(declare-fun validRegex!5329 (Regex!11782) Bool)

(assert (=> d!1191804 (= res!1637773 (validRegex!5329 (regex!6877 (rule!9933 token!484))))))

(assert (=> d!1191804 (= (ruleValid!2807 thiss!21717 (rule!9933 token!484)) e!2496762)))

(declare-fun b!4024625 () Bool)

(declare-fun res!1637774 () Bool)

(assert (=> b!4024625 (=> (not res!1637774) (not e!2496762))))

(declare-fun nullable!4129 (Regex!11782) Bool)

(assert (=> b!4024625 (= res!1637774 (not (nullable!4129 (regex!6877 (rule!9933 token!484)))))))

(declare-fun b!4024626 () Bool)

(assert (=> b!4024626 (= e!2496762 (not (= (tag!7737 (rule!9933 token!484)) (String!49256 ""))))))

(assert (= (and d!1191804 res!1637773) b!4024625))

(assert (= (and b!4024625 res!1637774) b!4024626))

(declare-fun m!4615675 () Bool)

(assert (=> d!1191804 m!4615675))

(declare-fun m!4615677 () Bool)

(assert (=> b!4024625 m!4615677))

(assert (=> b!4024471 d!1191804))

(declare-fun d!1191806 () Bool)

(assert (=> d!1191806 (ruleValid!2807 thiss!21717 (rule!9933 token!484))))

(declare-fun lt!1429744 () Unit!62248)

(declare-fun choose!24329 (LexerInterface!6466 Rule!13554 List!43212) Unit!62248)

(assert (=> d!1191806 (= lt!1429744 (choose!24329 thiss!21717 (rule!9933 token!484) rules!2999))))

(assert (=> d!1191806 (contains!8557 rules!2999 (rule!9933 token!484))))

(assert (=> d!1191806 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1877 thiss!21717 (rule!9933 token!484) rules!2999) lt!1429744)))

(declare-fun bs!589990 () Bool)

(assert (= bs!589990 d!1191806))

(assert (=> bs!589990 m!4615483))

(declare-fun m!4615679 () Bool)

(assert (=> bs!589990 m!4615679))

(assert (=> bs!589990 m!4615501))

(assert (=> b!4024471 d!1191806))

(declare-fun d!1191808 () Bool)

(assert (=> d!1191808 (= (isEmpty!25722 rules!2999) (is-Nil!43088 rules!2999))))

(assert (=> b!4024459 d!1191808))

(declare-fun b!4024629 () Bool)

(declare-fun res!1637775 () Bool)

(declare-fun e!2496764 () Bool)

(assert (=> b!4024629 (=> (not res!1637775) (not e!2496764))))

(declare-fun lt!1429745 () List!43210)

(assert (=> b!4024629 (= res!1637775 (= (size!32212 lt!1429745) (+ (size!32212 lt!1429652) (size!32212 lt!1429657))))))

(declare-fun b!4024630 () Bool)

(assert (=> b!4024630 (= e!2496764 (or (not (= lt!1429657 Nil!43086)) (= lt!1429745 lt!1429652)))))

(declare-fun b!4024627 () Bool)

(declare-fun e!2496763 () List!43210)

(assert (=> b!4024627 (= e!2496763 lt!1429657)))

(declare-fun b!4024628 () Bool)

(assert (=> b!4024628 (= e!2496763 (Cons!43086 (h!48506 lt!1429652) (++!11279 (t!333863 lt!1429652) lt!1429657)))))

(declare-fun d!1191810 () Bool)

(assert (=> d!1191810 e!2496764))

(declare-fun res!1637776 () Bool)

(assert (=> d!1191810 (=> (not res!1637776) (not e!2496764))))

(assert (=> d!1191810 (= res!1637776 (= (content!6538 lt!1429745) (set.union (content!6538 lt!1429652) (content!6538 lt!1429657))))))

(assert (=> d!1191810 (= lt!1429745 e!2496763)))

(declare-fun c!695421 () Bool)

(assert (=> d!1191810 (= c!695421 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191810 (= (++!11279 lt!1429652 lt!1429657) lt!1429745)))

(assert (= (and d!1191810 c!695421) b!4024627))

(assert (= (and d!1191810 (not c!695421)) b!4024628))

(assert (= (and d!1191810 res!1637776) b!4024629))

(assert (= (and b!4024629 res!1637775) b!4024630))

(declare-fun m!4615681 () Bool)

(assert (=> b!4024629 m!4615681))

(assert (=> b!4024629 m!4615431))

(declare-fun m!4615683 () Bool)

(assert (=> b!4024629 m!4615683))

(declare-fun m!4615685 () Bool)

(assert (=> b!4024628 m!4615685))

(declare-fun m!4615687 () Bool)

(assert (=> d!1191810 m!4615687))

(assert (=> d!1191810 m!4615667))

(declare-fun m!4615689 () Bool)

(assert (=> d!1191810 m!4615689))

(assert (=> b!4024470 d!1191810))

(declare-fun d!1191812 () Bool)

(declare-fun lt!1429748 () List!43210)

(assert (=> d!1191812 (= (++!11279 lt!1429652 lt!1429748) prefix!494)))

(declare-fun e!2496767 () List!43210)

(assert (=> d!1191812 (= lt!1429748 e!2496767)))

(declare-fun c!695424 () Bool)

(assert (=> d!1191812 (= c!695424 (is-Cons!43086 lt!1429652))))

(assert (=> d!1191812 (>= (size!32212 prefix!494) (size!32212 lt!1429652))))

(assert (=> d!1191812 (= (getSuffix!2381 prefix!494 lt!1429652) lt!1429748)))

(declare-fun b!4024635 () Bool)

(assert (=> b!4024635 (= e!2496767 (getSuffix!2381 (tail!6264 prefix!494) (t!333863 lt!1429652)))))

(declare-fun b!4024636 () Bool)

(assert (=> b!4024636 (= e!2496767 prefix!494)))

(assert (= (and d!1191812 c!695424) b!4024635))

(assert (= (and d!1191812 (not c!695424)) b!4024636))

(declare-fun m!4615691 () Bool)

(assert (=> d!1191812 m!4615691))

(assert (=> d!1191812 m!4615429))

(assert (=> d!1191812 m!4615431))

(declare-fun m!4615693 () Bool)

(assert (=> b!4024635 m!4615693))

(assert (=> b!4024635 m!4615693))

(declare-fun m!4615695 () Bool)

(assert (=> b!4024635 m!4615695))

(assert (=> b!4024470 d!1191812))

(declare-fun b!4024638 () Bool)

(declare-fun res!1637777 () Bool)

(declare-fun e!2496768 () Bool)

(assert (=> b!4024638 (=> (not res!1637777) (not e!2496768))))

(assert (=> b!4024638 (= res!1637777 (= (head!8532 lt!1429652) (head!8532 prefix!494)))))

(declare-fun d!1191814 () Bool)

(declare-fun e!2496770 () Bool)

(assert (=> d!1191814 e!2496770))

(declare-fun res!1637778 () Bool)

(assert (=> d!1191814 (=> res!1637778 e!2496770)))

(declare-fun lt!1429749 () Bool)

(assert (=> d!1191814 (= res!1637778 (not lt!1429749))))

(declare-fun e!2496769 () Bool)

(assert (=> d!1191814 (= lt!1429749 e!2496769)))

(declare-fun res!1637779 () Bool)

(assert (=> d!1191814 (=> res!1637779 e!2496769)))

(assert (=> d!1191814 (= res!1637779 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191814 (= (isPrefix!3964 lt!1429652 prefix!494) lt!1429749)))

(declare-fun b!4024637 () Bool)

(assert (=> b!4024637 (= e!2496769 e!2496768)))

(declare-fun res!1637780 () Bool)

(assert (=> b!4024637 (=> (not res!1637780) (not e!2496768))))

(assert (=> b!4024637 (= res!1637780 (not (is-Nil!43086 prefix!494)))))

(declare-fun b!4024640 () Bool)

(assert (=> b!4024640 (= e!2496770 (>= (size!32212 prefix!494) (size!32212 lt!1429652)))))

(declare-fun b!4024639 () Bool)

(assert (=> b!4024639 (= e!2496768 (isPrefix!3964 (tail!6264 lt!1429652) (tail!6264 prefix!494)))))

(assert (= (and d!1191814 (not res!1637779)) b!4024637))

(assert (= (and b!4024637 res!1637780) b!4024638))

(assert (= (and b!4024638 res!1637777) b!4024639))

(assert (= (and d!1191814 (not res!1637778)) b!4024640))

(assert (=> b!4024638 m!4615605))

(declare-fun m!4615697 () Bool)

(assert (=> b!4024638 m!4615697))

(assert (=> b!4024640 m!4615429))

(assert (=> b!4024640 m!4615431))

(assert (=> b!4024639 m!4615611))

(assert (=> b!4024639 m!4615693))

(assert (=> b!4024639 m!4615611))

(assert (=> b!4024639 m!4615693))

(declare-fun m!4615699 () Bool)

(assert (=> b!4024639 m!4615699))

(assert (=> b!4024470 d!1191814))

(declare-fun d!1191816 () Bool)

(assert (=> d!1191816 (isPrefix!3964 lt!1429652 prefix!494)))

(declare-fun lt!1429752 () Unit!62248)

(declare-fun choose!24330 (List!43210 List!43210 List!43210) Unit!62248)

(assert (=> d!1191816 (= lt!1429752 (choose!24330 prefix!494 lt!1429652 lt!1429650))))

(assert (=> d!1191816 (isPrefix!3964 prefix!494 lt!1429650)))

(assert (=> d!1191816 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!528 prefix!494 lt!1429652 lt!1429650) lt!1429752)))

(declare-fun bs!589991 () Bool)

(assert (= bs!589991 d!1191816))

(assert (=> bs!589991 m!4615447))

(declare-fun m!4615701 () Bool)

(assert (=> bs!589991 m!4615701))

(assert (=> bs!589991 m!4615467))

(assert (=> b!4024470 d!1191816))

(declare-fun d!1191818 () Bool)

(declare-fun res!1637785 () Bool)

(declare-fun e!2496773 () Bool)

(assert (=> d!1191818 (=> (not res!1637785) (not e!2496773))))

(declare-fun isEmpty!25724 (List!43210) Bool)

(assert (=> d!1191818 (= res!1637785 (not (isEmpty!25724 (originalCharacters!7477 token!484))))))

(assert (=> d!1191818 (= (inv!57558 token!484) e!2496773)))

(declare-fun b!4024645 () Bool)

(declare-fun res!1637786 () Bool)

(assert (=> b!4024645 (=> (not res!1637786) (not e!2496773))))

(assert (=> b!4024645 (= res!1637786 (= (originalCharacters!7477 token!484) (list!16023 (dynLambda!18263 (toChars!9252 (transformation!6877 (rule!9933 token!484))) (value!216630 token!484)))))))

(declare-fun b!4024646 () Bool)

(assert (=> b!4024646 (= e!2496773 (= (size!32211 token!484) (size!32212 (originalCharacters!7477 token!484))))))

(assert (= (and d!1191818 res!1637785) b!4024645))

(assert (= (and b!4024645 res!1637786) b!4024646))

(declare-fun b_lambda!117405 () Bool)

(assert (=> (not b_lambda!117405) (not b!4024645)))

(assert (=> b!4024645 t!333870))

(declare-fun b_and!309219 () Bool)

(assert (= b_and!309215 (and (=> t!333870 result!293182) b_and!309219)))

(assert (=> b!4024645 t!333872))

(declare-fun b_and!309221 () Bool)

(assert (= b_and!309217 (and (=> t!333872 result!293186) b_and!309221)))

(declare-fun m!4615703 () Bool)

(assert (=> d!1191818 m!4615703))

(assert (=> b!4024645 m!4615653))

(assert (=> b!4024645 m!4615653))

(declare-fun m!4615705 () Bool)

(assert (=> b!4024645 m!4615705))

(declare-fun m!4615707 () Bool)

(assert (=> b!4024646 m!4615707))

(assert (=> start!378970 d!1191818))

(declare-fun d!1191820 () Bool)

(assert (=> d!1191820 (isPrefix!3964 lt!1429652 (++!11279 lt!1429652 suffixResult!105))))

(declare-fun lt!1429753 () Unit!62248)

(assert (=> d!1191820 (= lt!1429753 (choose!24328 lt!1429652 suffixResult!105))))

(assert (=> d!1191820 (= (lemmaConcatTwoListThenFirstIsPrefix!2799 lt!1429652 suffixResult!105) lt!1429753)))

(declare-fun bs!589992 () Bool)

(assert (= bs!589992 d!1191820))

(assert (=> bs!589992 m!4615479))

(assert (=> bs!589992 m!4615479))

(declare-fun m!4615709 () Bool)

(assert (=> bs!589992 m!4615709))

(declare-fun m!4615711 () Bool)

(assert (=> bs!589992 m!4615711))

(assert (=> b!4024463 d!1191820))

(declare-fun b!4024648 () Bool)

(declare-fun res!1637787 () Bool)

(declare-fun e!2496774 () Bool)

(assert (=> b!4024648 (=> (not res!1637787) (not e!2496774))))

(assert (=> b!4024648 (= res!1637787 (= (head!8532 lt!1429652) (head!8532 lt!1429663)))))

(declare-fun d!1191822 () Bool)

(declare-fun e!2496776 () Bool)

(assert (=> d!1191822 e!2496776))

(declare-fun res!1637788 () Bool)

(assert (=> d!1191822 (=> res!1637788 e!2496776)))

(declare-fun lt!1429754 () Bool)

(assert (=> d!1191822 (= res!1637788 (not lt!1429754))))

(declare-fun e!2496775 () Bool)

(assert (=> d!1191822 (= lt!1429754 e!2496775)))

(declare-fun res!1637789 () Bool)

(assert (=> d!1191822 (=> res!1637789 e!2496775)))

(assert (=> d!1191822 (= res!1637789 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191822 (= (isPrefix!3964 lt!1429652 lt!1429663) lt!1429754)))

(declare-fun b!4024647 () Bool)

(assert (=> b!4024647 (= e!2496775 e!2496774)))

(declare-fun res!1637790 () Bool)

(assert (=> b!4024647 (=> (not res!1637790) (not e!2496774))))

(assert (=> b!4024647 (= res!1637790 (not (is-Nil!43086 lt!1429663)))))

(declare-fun b!4024650 () Bool)

(assert (=> b!4024650 (= e!2496776 (>= (size!32212 lt!1429663) (size!32212 lt!1429652)))))

(declare-fun b!4024649 () Bool)

(assert (=> b!4024649 (= e!2496774 (isPrefix!3964 (tail!6264 lt!1429652) (tail!6264 lt!1429663)))))

(assert (= (and d!1191822 (not res!1637789)) b!4024647))

(assert (= (and b!4024647 res!1637790) b!4024648))

(assert (= (and b!4024648 res!1637787) b!4024649))

(assert (= (and d!1191822 (not res!1637788)) b!4024650))

(assert (=> b!4024648 m!4615605))

(declare-fun m!4615713 () Bool)

(assert (=> b!4024648 m!4615713))

(declare-fun m!4615715 () Bool)

(assert (=> b!4024650 m!4615715))

(assert (=> b!4024650 m!4615431))

(assert (=> b!4024649 m!4615611))

(declare-fun m!4615717 () Bool)

(assert (=> b!4024649 m!4615717))

(assert (=> b!4024649 m!4615611))

(assert (=> b!4024649 m!4615717))

(declare-fun m!4615719 () Bool)

(assert (=> b!4024649 m!4615719))

(assert (=> b!4024463 d!1191822))

(declare-fun d!1191824 () Bool)

(assert (=> d!1191824 (isPrefix!3964 prefix!494 (++!11279 prefix!494 suffix!1299))))

(declare-fun lt!1429755 () Unit!62248)

(assert (=> d!1191824 (= lt!1429755 (choose!24328 prefix!494 suffix!1299))))

(assert (=> d!1191824 (= (lemmaConcatTwoListThenFirstIsPrefix!2799 prefix!494 suffix!1299) lt!1429755)))

(declare-fun bs!589993 () Bool)

(assert (= bs!589993 d!1191824))

(assert (=> bs!589993 m!4615491))

(assert (=> bs!589993 m!4615491))

(declare-fun m!4615721 () Bool)

(assert (=> bs!589993 m!4615721))

(declare-fun m!4615723 () Bool)

(assert (=> bs!589993 m!4615723))

(assert (=> b!4024463 d!1191824))

(declare-fun b!4024652 () Bool)

(declare-fun res!1637791 () Bool)

(declare-fun e!2496777 () Bool)

(assert (=> b!4024652 (=> (not res!1637791) (not e!2496777))))

(assert (=> b!4024652 (= res!1637791 (= (head!8532 lt!1429652) (head!8532 lt!1429650)))))

(declare-fun d!1191826 () Bool)

(declare-fun e!2496779 () Bool)

(assert (=> d!1191826 e!2496779))

(declare-fun res!1637792 () Bool)

(assert (=> d!1191826 (=> res!1637792 e!2496779)))

(declare-fun lt!1429756 () Bool)

(assert (=> d!1191826 (= res!1637792 (not lt!1429756))))

(declare-fun e!2496778 () Bool)

(assert (=> d!1191826 (= lt!1429756 e!2496778)))

(declare-fun res!1637793 () Bool)

(assert (=> d!1191826 (=> res!1637793 e!2496778)))

(assert (=> d!1191826 (= res!1637793 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191826 (= (isPrefix!3964 lt!1429652 lt!1429650) lt!1429756)))

(declare-fun b!4024651 () Bool)

(assert (=> b!4024651 (= e!2496778 e!2496777)))

(declare-fun res!1637794 () Bool)

(assert (=> b!4024651 (=> (not res!1637794) (not e!2496777))))

(assert (=> b!4024651 (= res!1637794 (not (is-Nil!43086 lt!1429650)))))

(declare-fun b!4024654 () Bool)

(assert (=> b!4024654 (= e!2496779 (>= (size!32212 lt!1429650) (size!32212 lt!1429652)))))

(declare-fun b!4024653 () Bool)

(assert (=> b!4024653 (= e!2496777 (isPrefix!3964 (tail!6264 lt!1429652) (tail!6264 lt!1429650)))))

(assert (= (and d!1191826 (not res!1637793)) b!4024651))

(assert (= (and b!4024651 res!1637794) b!4024652))

(assert (= (and b!4024652 res!1637791) b!4024653))

(assert (= (and d!1191826 (not res!1637792)) b!4024654))

(assert (=> b!4024652 m!4615605))

(declare-fun m!4615725 () Bool)

(assert (=> b!4024652 m!4615725))

(declare-fun m!4615727 () Bool)

(assert (=> b!4024654 m!4615727))

(assert (=> b!4024654 m!4615431))

(assert (=> b!4024653 m!4615611))

(declare-fun m!4615729 () Bool)

(assert (=> b!4024653 m!4615729))

(assert (=> b!4024653 m!4615611))

(assert (=> b!4024653 m!4615729))

(declare-fun m!4615731 () Bool)

(assert (=> b!4024653 m!4615731))

(assert (=> b!4024463 d!1191826))

(declare-fun b!4024656 () Bool)

(declare-fun res!1637795 () Bool)

(declare-fun e!2496780 () Bool)

(assert (=> b!4024656 (=> (not res!1637795) (not e!2496780))))

(assert (=> b!4024656 (= res!1637795 (= (head!8532 prefix!494) (head!8532 lt!1429650)))))

(declare-fun d!1191828 () Bool)

(declare-fun e!2496782 () Bool)

(assert (=> d!1191828 e!2496782))

(declare-fun res!1637796 () Bool)

(assert (=> d!1191828 (=> res!1637796 e!2496782)))

(declare-fun lt!1429757 () Bool)

(assert (=> d!1191828 (= res!1637796 (not lt!1429757))))

(declare-fun e!2496781 () Bool)

(assert (=> d!1191828 (= lt!1429757 e!2496781)))

(declare-fun res!1637797 () Bool)

(assert (=> d!1191828 (=> res!1637797 e!2496781)))

(assert (=> d!1191828 (= res!1637797 (is-Nil!43086 prefix!494))))

(assert (=> d!1191828 (= (isPrefix!3964 prefix!494 lt!1429650) lt!1429757)))

(declare-fun b!4024655 () Bool)

(assert (=> b!4024655 (= e!2496781 e!2496780)))

(declare-fun res!1637798 () Bool)

(assert (=> b!4024655 (=> (not res!1637798) (not e!2496780))))

(assert (=> b!4024655 (= res!1637798 (not (is-Nil!43086 lt!1429650)))))

(declare-fun b!4024658 () Bool)

(assert (=> b!4024658 (= e!2496782 (>= (size!32212 lt!1429650) (size!32212 prefix!494)))))

(declare-fun b!4024657 () Bool)

(assert (=> b!4024657 (= e!2496780 (isPrefix!3964 (tail!6264 prefix!494) (tail!6264 lt!1429650)))))

(assert (= (and d!1191828 (not res!1637797)) b!4024655))

(assert (= (and b!4024655 res!1637798) b!4024656))

(assert (= (and b!4024656 res!1637795) b!4024657))

(assert (= (and d!1191828 (not res!1637796)) b!4024658))

(assert (=> b!4024656 m!4615697))

(assert (=> b!4024656 m!4615725))

(assert (=> b!4024658 m!4615727))

(assert (=> b!4024658 m!4615429))

(assert (=> b!4024657 m!4615693))

(assert (=> b!4024657 m!4615729))

(assert (=> b!4024657 m!4615693))

(assert (=> b!4024657 m!4615729))

(declare-fun m!4615733 () Bool)

(assert (=> b!4024657 m!4615733))

(assert (=> b!4024463 d!1191828))

(declare-fun d!1191830 () Bool)

(declare-fun res!1637801 () Bool)

(declare-fun e!2496785 () Bool)

(assert (=> d!1191830 (=> (not res!1637801) (not e!2496785))))

(declare-fun rulesValid!2671 (LexerInterface!6466 List!43212) Bool)

(assert (=> d!1191830 (= res!1637801 (rulesValid!2671 thiss!21717 rules!2999))))

(assert (=> d!1191830 (= (rulesInvariant!5809 thiss!21717 rules!2999) e!2496785)))

(declare-fun b!4024661 () Bool)

(declare-datatypes ((List!43216 0))(
  ( (Nil!43092) (Cons!43092 (h!48512 String!49255) (t!333879 List!43216)) )
))
(declare-fun noDuplicateTag!2672 (LexerInterface!6466 List!43212 List!43216) Bool)

(assert (=> b!4024661 (= e!2496785 (noDuplicateTag!2672 thiss!21717 rules!2999 Nil!43092))))

(assert (= (and d!1191830 res!1637801) b!4024661))

(declare-fun m!4615735 () Bool)

(assert (=> d!1191830 m!4615735))

(declare-fun m!4615737 () Bool)

(assert (=> b!4024661 m!4615737))

(assert (=> b!4024474 d!1191830))

(declare-fun b!4024664 () Bool)

(declare-fun res!1637802 () Bool)

(declare-fun e!2496787 () Bool)

(assert (=> b!4024664 (=> (not res!1637802) (not e!2496787))))

(declare-fun lt!1429758 () List!43210)

(assert (=> b!4024664 (= res!1637802 (= (size!32212 lt!1429758) (+ (size!32212 lt!1429652) (size!32212 newSuffixResult!27))))))

(declare-fun b!4024665 () Bool)

(assert (=> b!4024665 (= e!2496787 (or (not (= newSuffixResult!27 Nil!43086)) (= lt!1429758 lt!1429652)))))

(declare-fun b!4024662 () Bool)

(declare-fun e!2496786 () List!43210)

(assert (=> b!4024662 (= e!2496786 newSuffixResult!27)))

(declare-fun b!4024663 () Bool)

(assert (=> b!4024663 (= e!2496786 (Cons!43086 (h!48506 lt!1429652) (++!11279 (t!333863 lt!1429652) newSuffixResult!27)))))

(declare-fun d!1191832 () Bool)

(assert (=> d!1191832 e!2496787))

(declare-fun res!1637803 () Bool)

(assert (=> d!1191832 (=> (not res!1637803) (not e!2496787))))

(assert (=> d!1191832 (= res!1637803 (= (content!6538 lt!1429758) (set.union (content!6538 lt!1429652) (content!6538 newSuffixResult!27))))))

(assert (=> d!1191832 (= lt!1429758 e!2496786)))

(declare-fun c!695425 () Bool)

(assert (=> d!1191832 (= c!695425 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191832 (= (++!11279 lt!1429652 newSuffixResult!27) lt!1429758)))

(assert (= (and d!1191832 c!695425) b!4024662))

(assert (= (and d!1191832 (not c!695425)) b!4024663))

(assert (= (and d!1191832 res!1637803) b!4024664))

(assert (= (and b!4024664 res!1637802) b!4024665))

(declare-fun m!4615739 () Bool)

(assert (=> b!4024664 m!4615739))

(assert (=> b!4024664 m!4615431))

(declare-fun m!4615741 () Bool)

(assert (=> b!4024664 m!4615741))

(declare-fun m!4615743 () Bool)

(assert (=> b!4024663 m!4615743))

(declare-fun m!4615745 () Bool)

(assert (=> d!1191832 m!4615745))

(assert (=> d!1191832 m!4615667))

(declare-fun m!4615747 () Bool)

(assert (=> d!1191832 m!4615747))

(assert (=> b!4024461 d!1191832))

(declare-fun b!4024668 () Bool)

(declare-fun res!1637804 () Bool)

(declare-fun e!2496789 () Bool)

(assert (=> b!4024668 (=> (not res!1637804) (not e!2496789))))

(declare-fun lt!1429759 () List!43210)

(assert (=> b!4024668 (= res!1637804 (= (size!32212 lt!1429759) (+ (size!32212 prefix!494) (size!32212 newSuffix!27))))))

(declare-fun b!4024669 () Bool)

(assert (=> b!4024669 (= e!2496789 (or (not (= newSuffix!27 Nil!43086)) (= lt!1429759 prefix!494)))))

(declare-fun b!4024666 () Bool)

(declare-fun e!2496788 () List!43210)

(assert (=> b!4024666 (= e!2496788 newSuffix!27)))

(declare-fun b!4024667 () Bool)

(assert (=> b!4024667 (= e!2496788 (Cons!43086 (h!48506 prefix!494) (++!11279 (t!333863 prefix!494) newSuffix!27)))))

(declare-fun d!1191834 () Bool)

(assert (=> d!1191834 e!2496789))

(declare-fun res!1637805 () Bool)

(assert (=> d!1191834 (=> (not res!1637805) (not e!2496789))))

(assert (=> d!1191834 (= res!1637805 (= (content!6538 lt!1429759) (set.union (content!6538 prefix!494) (content!6538 newSuffix!27))))))

(assert (=> d!1191834 (= lt!1429759 e!2496788)))

(declare-fun c!695426 () Bool)

(assert (=> d!1191834 (= c!695426 (is-Nil!43086 prefix!494))))

(assert (=> d!1191834 (= (++!11279 prefix!494 newSuffix!27) lt!1429759)))

(assert (= (and d!1191834 c!695426) b!4024666))

(assert (= (and d!1191834 (not c!695426)) b!4024667))

(assert (= (and d!1191834 res!1637805) b!4024668))

(assert (= (and b!4024668 res!1637804) b!4024669))

(declare-fun m!4615749 () Bool)

(assert (=> b!4024668 m!4615749))

(assert (=> b!4024668 m!4615429))

(assert (=> b!4024668 m!4615473))

(declare-fun m!4615751 () Bool)

(assert (=> b!4024667 m!4615751))

(declare-fun m!4615753 () Bool)

(assert (=> d!1191834 m!4615753))

(declare-fun m!4615755 () Bool)

(assert (=> d!1191834 m!4615755))

(declare-fun m!4615757 () Bool)

(assert (=> d!1191834 m!4615757))

(assert (=> b!4024461 d!1191834))

(declare-fun d!1191836 () Bool)

(declare-fun lt!1429760 () Int)

(assert (=> d!1191836 (>= lt!1429760 0)))

(declare-fun e!2496790 () Int)

(assert (=> d!1191836 (= lt!1429760 e!2496790)))

(declare-fun c!695427 () Bool)

(assert (=> d!1191836 (= c!695427 (is-Nil!43086 suffix!1299))))

(assert (=> d!1191836 (= (size!32212 suffix!1299) lt!1429760)))

(declare-fun b!4024670 () Bool)

(assert (=> b!4024670 (= e!2496790 0)))

(declare-fun b!4024671 () Bool)

(assert (=> b!4024671 (= e!2496790 (+ 1 (size!32212 (t!333863 suffix!1299))))))

(assert (= (and d!1191836 c!695427) b!4024670))

(assert (= (and d!1191836 (not c!695427)) b!4024671))

(declare-fun m!4615759 () Bool)

(assert (=> b!4024671 m!4615759))

(assert (=> b!4024472 d!1191836))

(declare-fun d!1191838 () Bool)

(declare-fun lt!1429761 () Int)

(assert (=> d!1191838 (>= lt!1429761 0)))

(declare-fun e!2496791 () Int)

(assert (=> d!1191838 (= lt!1429761 e!2496791)))

(declare-fun c!695428 () Bool)

(assert (=> d!1191838 (= c!695428 (is-Nil!43086 newSuffix!27))))

(assert (=> d!1191838 (= (size!32212 newSuffix!27) lt!1429761)))

(declare-fun b!4024672 () Bool)

(assert (=> b!4024672 (= e!2496791 0)))

(declare-fun b!4024673 () Bool)

(assert (=> b!4024673 (= e!2496791 (+ 1 (size!32212 (t!333863 newSuffix!27))))))

(assert (= (and d!1191838 c!695428) b!4024672))

(assert (= (and d!1191838 (not c!695428)) b!4024673))

(declare-fun m!4615761 () Bool)

(assert (=> b!4024673 m!4615761))

(assert (=> b!4024472 d!1191838))

(declare-fun d!1191840 () Bool)

(assert (=> d!1191840 (= (inv!57554 (tag!7737 (rule!9933 token!484))) (= (mod (str.len (value!216629 (tag!7737 (rule!9933 token!484)))) 2) 0))))

(assert (=> b!4024462 d!1191840))

(declare-fun d!1191842 () Bool)

(declare-fun res!1637806 () Bool)

(declare-fun e!2496792 () Bool)

(assert (=> d!1191842 (=> (not res!1637806) (not e!2496792))))

(assert (=> d!1191842 (= res!1637806 (semiInverseModEq!2937 (toChars!9252 (transformation!6877 (rule!9933 token!484))) (toValue!9393 (transformation!6877 (rule!9933 token!484)))))))

(assert (=> d!1191842 (= (inv!57557 (transformation!6877 (rule!9933 token!484))) e!2496792)))

(declare-fun b!4024674 () Bool)

(assert (=> b!4024674 (= e!2496792 (equivClasses!2836 (toChars!9252 (transformation!6877 (rule!9933 token!484))) (toValue!9393 (transformation!6877 (rule!9933 token!484)))))))

(assert (= (and d!1191842 res!1637806) b!4024674))

(assert (=> d!1191842 m!4615671))

(assert (=> b!4024674 m!4615673))

(assert (=> b!4024462 d!1191842))

(declare-fun b!4024685 () Bool)

(declare-fun e!2496799 () Bool)

(declare-fun inv!17 (TokenValue!7107) Bool)

(assert (=> b!4024685 (= e!2496799 (inv!17 (value!216630 token!484)))))

(declare-fun b!4024686 () Bool)

(declare-fun e!2496800 () Bool)

(declare-fun inv!15 (TokenValue!7107) Bool)

(assert (=> b!4024686 (= e!2496800 (inv!15 (value!216630 token!484)))))

(declare-fun b!4024687 () Bool)

(declare-fun res!1637809 () Bool)

(assert (=> b!4024687 (=> res!1637809 e!2496800)))

(assert (=> b!4024687 (= res!1637809 (not (is-IntegerValue!21323 (value!216630 token!484))))))

(assert (=> b!4024687 (= e!2496799 e!2496800)))

(declare-fun b!4024688 () Bool)

(declare-fun e!2496801 () Bool)

(assert (=> b!4024688 (= e!2496801 e!2496799)))

(declare-fun c!695434 () Bool)

(assert (=> b!4024688 (= c!695434 (is-IntegerValue!21322 (value!216630 token!484)))))

(declare-fun b!4024689 () Bool)

(declare-fun inv!16 (TokenValue!7107) Bool)

(assert (=> b!4024689 (= e!2496801 (inv!16 (value!216630 token!484)))))

(declare-fun d!1191844 () Bool)

(declare-fun c!695433 () Bool)

(assert (=> d!1191844 (= c!695433 (is-IntegerValue!21321 (value!216630 token!484)))))

(assert (=> d!1191844 (= (inv!21 (value!216630 token!484)) e!2496801)))

(assert (= (and d!1191844 c!695433) b!4024689))

(assert (= (and d!1191844 (not c!695433)) b!4024688))

(assert (= (and b!4024688 c!695434) b!4024685))

(assert (= (and b!4024688 (not c!695434)) b!4024687))

(assert (= (and b!4024687 (not res!1637809)) b!4024686))

(declare-fun m!4615763 () Bool)

(assert (=> b!4024685 m!4615763))

(declare-fun m!4615765 () Bool)

(assert (=> b!4024686 m!4615765))

(declare-fun m!4615767 () Bool)

(assert (=> b!4024689 m!4615767))

(assert (=> b!4024455 d!1191844))

(declare-fun b!4024726 () Bool)

(declare-fun res!1637844 () Bool)

(declare-fun e!2496815 () Bool)

(assert (=> b!4024726 (=> (not res!1637844) (not e!2496815))))

(declare-fun lt!1429783 () Option!9291)

(declare-fun get!14147 (Option!9291) tuple2!42200)

(assert (=> b!4024726 (= res!1637844 (< (size!32212 (_2!24234 (get!14147 lt!1429783))) (size!32212 lt!1429650)))))

(declare-fun b!4024727 () Bool)

(declare-fun e!2496816 () Bool)

(assert (=> b!4024727 (= e!2496816 e!2496815)))

(declare-fun res!1637841 () Bool)

(assert (=> b!4024727 (=> (not res!1637841) (not e!2496815))))

(declare-fun isDefined!7083 (Option!9291) Bool)

(assert (=> b!4024727 (= res!1637841 (isDefined!7083 lt!1429783))))

(declare-fun b!4024728 () Bool)

(declare-fun e!2496814 () Option!9291)

(declare-fun call!286761 () Option!9291)

(assert (=> b!4024728 (= e!2496814 call!286761)))

(declare-fun b!4024729 () Bool)

(declare-fun res!1637842 () Bool)

(assert (=> b!4024729 (=> (not res!1637842) (not e!2496815))))

(declare-fun apply!10068 (TokenValueInjection!13642 BalanceConc!25770) TokenValue!7107)

(declare-fun seqFromList!5096 (List!43210) BalanceConc!25770)

(assert (=> b!4024729 (= res!1637842 (= (value!216630 (_1!24234 (get!14147 lt!1429783))) (apply!10068 (transformation!6877 (rule!9933 (_1!24234 (get!14147 lt!1429783)))) (seqFromList!5096 (originalCharacters!7477 (_1!24234 (get!14147 lt!1429783)))))))))

(declare-fun b!4024730 () Bool)

(assert (=> b!4024730 (= e!2496815 (contains!8557 rules!2999 (rule!9933 (_1!24234 (get!14147 lt!1429783)))))))

(declare-fun b!4024731 () Bool)

(declare-fun res!1637838 () Bool)

(assert (=> b!4024731 (=> (not res!1637838) (not e!2496815))))

(assert (=> b!4024731 (= res!1637838 (= (list!16023 (charsOf!4693 (_1!24234 (get!14147 lt!1429783)))) (originalCharacters!7477 (_1!24234 (get!14147 lt!1429783)))))))

(declare-fun b!4024733 () Bool)

(declare-fun res!1637843 () Bool)

(assert (=> b!4024733 (=> (not res!1637843) (not e!2496815))))

(assert (=> b!4024733 (= res!1637843 (= (++!11279 (list!16023 (charsOf!4693 (_1!24234 (get!14147 lt!1429783)))) (_2!24234 (get!14147 lt!1429783))) lt!1429650))))

(declare-fun d!1191846 () Bool)

(assert (=> d!1191846 e!2496816))

(declare-fun res!1637839 () Bool)

(assert (=> d!1191846 (=> res!1637839 e!2496816)))

(declare-fun isEmpty!25726 (Option!9291) Bool)

(assert (=> d!1191846 (= res!1637839 (isEmpty!25726 lt!1429783))))

(assert (=> d!1191846 (= lt!1429783 e!2496814)))

(declare-fun c!695439 () Bool)

(assert (=> d!1191846 (= c!695439 (and (is-Cons!43088 rules!2999) (is-Nil!43088 (t!333865 rules!2999))))))

(declare-fun lt!1429786 () Unit!62248)

(declare-fun lt!1429784 () Unit!62248)

(assert (=> d!1191846 (= lt!1429786 lt!1429784)))

(assert (=> d!1191846 (isPrefix!3964 lt!1429650 lt!1429650)))

(declare-fun lemmaIsPrefixRefl!2534 (List!43210 List!43210) Unit!62248)

(assert (=> d!1191846 (= lt!1429784 (lemmaIsPrefixRefl!2534 lt!1429650 lt!1429650))))

(declare-fun rulesValidInductive!2505 (LexerInterface!6466 List!43212) Bool)

(assert (=> d!1191846 (rulesValidInductive!2505 thiss!21717 rules!2999)))

(assert (=> d!1191846 (= (maxPrefix!3764 thiss!21717 rules!2999 lt!1429650) lt!1429783)))

(declare-fun b!4024732 () Bool)

(declare-fun lt!1429782 () Option!9291)

(declare-fun lt!1429785 () Option!9291)

(assert (=> b!4024732 (= e!2496814 (ite (and (is-None!9290 lt!1429782) (is-None!9290 lt!1429785)) None!9290 (ite (is-None!9290 lt!1429785) lt!1429782 (ite (is-None!9290 lt!1429782) lt!1429785 (ite (>= (size!32211 (_1!24234 (v!39670 lt!1429782))) (size!32211 (_1!24234 (v!39670 lt!1429785)))) lt!1429782 lt!1429785)))))))

(assert (=> b!4024732 (= lt!1429782 call!286761)))

(assert (=> b!4024732 (= lt!1429785 (maxPrefix!3764 thiss!21717 (t!333865 rules!2999) lt!1429650))))

(declare-fun bm!286756 () Bool)

(declare-fun maxPrefixOneRule!2779 (LexerInterface!6466 Rule!13554 List!43210) Option!9291)

(assert (=> bm!286756 (= call!286761 (maxPrefixOneRule!2779 thiss!21717 (h!48508 rules!2999) lt!1429650))))

(declare-fun b!4024734 () Bool)

(declare-fun res!1637840 () Bool)

(assert (=> b!4024734 (=> (not res!1637840) (not e!2496815))))

(declare-fun matchR!5738 (Regex!11782 List!43210) Bool)

(assert (=> b!4024734 (= res!1637840 (matchR!5738 (regex!6877 (rule!9933 (_1!24234 (get!14147 lt!1429783)))) (list!16023 (charsOf!4693 (_1!24234 (get!14147 lt!1429783))))))))

(assert (= (and d!1191846 c!695439) b!4024728))

(assert (= (and d!1191846 (not c!695439)) b!4024732))

(assert (= (or b!4024728 b!4024732) bm!286756))

(assert (= (and d!1191846 (not res!1637839)) b!4024727))

(assert (= (and b!4024727 res!1637841) b!4024731))

(assert (= (and b!4024731 res!1637838) b!4024726))

(assert (= (and b!4024726 res!1637844) b!4024733))

(assert (= (and b!4024733 res!1637843) b!4024729))

(assert (= (and b!4024729 res!1637842) b!4024734))

(assert (= (and b!4024734 res!1637840) b!4024730))

(declare-fun m!4615769 () Bool)

(assert (=> b!4024731 m!4615769))

(declare-fun m!4615771 () Bool)

(assert (=> b!4024731 m!4615771))

(assert (=> b!4024731 m!4615771))

(declare-fun m!4615773 () Bool)

(assert (=> b!4024731 m!4615773))

(assert (=> b!4024730 m!4615769))

(declare-fun m!4615775 () Bool)

(assert (=> b!4024730 m!4615775))

(assert (=> b!4024729 m!4615769))

(declare-fun m!4615777 () Bool)

(assert (=> b!4024729 m!4615777))

(assert (=> b!4024729 m!4615777))

(declare-fun m!4615779 () Bool)

(assert (=> b!4024729 m!4615779))

(declare-fun m!4615781 () Bool)

(assert (=> bm!286756 m!4615781))

(declare-fun m!4615783 () Bool)

(assert (=> b!4024727 m!4615783))

(declare-fun m!4615785 () Bool)

(assert (=> b!4024732 m!4615785))

(assert (=> b!4024733 m!4615769))

(assert (=> b!4024733 m!4615771))

(assert (=> b!4024733 m!4615771))

(assert (=> b!4024733 m!4615773))

(assert (=> b!4024733 m!4615773))

(declare-fun m!4615787 () Bool)

(assert (=> b!4024733 m!4615787))

(assert (=> b!4024734 m!4615769))

(assert (=> b!4024734 m!4615771))

(assert (=> b!4024734 m!4615771))

(assert (=> b!4024734 m!4615773))

(assert (=> b!4024734 m!4615773))

(declare-fun m!4615789 () Bool)

(assert (=> b!4024734 m!4615789))

(assert (=> b!4024726 m!4615769))

(declare-fun m!4615791 () Bool)

(assert (=> b!4024726 m!4615791))

(assert (=> b!4024726 m!4615727))

(declare-fun m!4615793 () Bool)

(assert (=> d!1191846 m!4615793))

(declare-fun m!4615795 () Bool)

(assert (=> d!1191846 m!4615795))

(declare-fun m!4615797 () Bool)

(assert (=> d!1191846 m!4615797))

(declare-fun m!4615799 () Bool)

(assert (=> d!1191846 m!4615799))

(assert (=> b!4024466 d!1191846))

(declare-fun b!4024737 () Bool)

(declare-fun res!1637845 () Bool)

(declare-fun e!2496818 () Bool)

(assert (=> b!4024737 (=> (not res!1637845) (not e!2496818))))

(declare-fun lt!1429787 () List!43210)

(assert (=> b!4024737 (= res!1637845 (= (size!32212 lt!1429787) (+ (size!32212 prefix!494) (size!32212 suffix!1299))))))

(declare-fun b!4024738 () Bool)

(assert (=> b!4024738 (= e!2496818 (or (not (= suffix!1299 Nil!43086)) (= lt!1429787 prefix!494)))))

(declare-fun b!4024735 () Bool)

(declare-fun e!2496817 () List!43210)

(assert (=> b!4024735 (= e!2496817 suffix!1299)))

(declare-fun b!4024736 () Bool)

(assert (=> b!4024736 (= e!2496817 (Cons!43086 (h!48506 prefix!494) (++!11279 (t!333863 prefix!494) suffix!1299)))))

(declare-fun d!1191848 () Bool)

(assert (=> d!1191848 e!2496818))

(declare-fun res!1637846 () Bool)

(assert (=> d!1191848 (=> (not res!1637846) (not e!2496818))))

(assert (=> d!1191848 (= res!1637846 (= (content!6538 lt!1429787) (set.union (content!6538 prefix!494) (content!6538 suffix!1299))))))

(assert (=> d!1191848 (= lt!1429787 e!2496817)))

(declare-fun c!695440 () Bool)

(assert (=> d!1191848 (= c!695440 (is-Nil!43086 prefix!494))))

(assert (=> d!1191848 (= (++!11279 prefix!494 suffix!1299) lt!1429787)))

(assert (= (and d!1191848 c!695440) b!4024735))

(assert (= (and d!1191848 (not c!695440)) b!4024736))

(assert (= (and d!1191848 res!1637846) b!4024737))

(assert (= (and b!4024737 res!1637845) b!4024738))

(declare-fun m!4615801 () Bool)

(assert (=> b!4024737 m!4615801))

(assert (=> b!4024737 m!4615429))

(assert (=> b!4024737 m!4615471))

(declare-fun m!4615803 () Bool)

(assert (=> b!4024736 m!4615803))

(declare-fun m!4615805 () Bool)

(assert (=> d!1191848 m!4615805))

(assert (=> d!1191848 m!4615755))

(declare-fun m!4615807 () Bool)

(assert (=> d!1191848 m!4615807))

(assert (=> b!4024466 d!1191848))

(declare-fun b!4024741 () Bool)

(declare-fun res!1637847 () Bool)

(declare-fun e!2496820 () Bool)

(assert (=> b!4024741 (=> (not res!1637847) (not e!2496820))))

(declare-fun lt!1429788 () List!43210)

(assert (=> b!4024741 (= res!1637847 (= (size!32212 lt!1429788) (+ (size!32212 lt!1429652) (size!32212 lt!1429654))))))

(declare-fun b!4024742 () Bool)

(assert (=> b!4024742 (= e!2496820 (or (not (= lt!1429654 Nil!43086)) (= lt!1429788 lt!1429652)))))

(declare-fun b!4024739 () Bool)

(declare-fun e!2496819 () List!43210)

(assert (=> b!4024739 (= e!2496819 lt!1429654)))

(declare-fun b!4024740 () Bool)

(assert (=> b!4024740 (= e!2496819 (Cons!43086 (h!48506 lt!1429652) (++!11279 (t!333863 lt!1429652) lt!1429654)))))

(declare-fun d!1191850 () Bool)

(assert (=> d!1191850 e!2496820))

(declare-fun res!1637848 () Bool)

(assert (=> d!1191850 (=> (not res!1637848) (not e!2496820))))

(assert (=> d!1191850 (= res!1637848 (= (content!6538 lt!1429788) (set.union (content!6538 lt!1429652) (content!6538 lt!1429654))))))

(assert (=> d!1191850 (= lt!1429788 e!2496819)))

(declare-fun c!695441 () Bool)

(assert (=> d!1191850 (= c!695441 (is-Nil!43086 lt!1429652))))

(assert (=> d!1191850 (= (++!11279 lt!1429652 lt!1429654) lt!1429788)))

(assert (= (and d!1191850 c!695441) b!4024739))

(assert (= (and d!1191850 (not c!695441)) b!4024740))

(assert (= (and d!1191850 res!1637848) b!4024741))

(assert (= (and b!4024741 res!1637847) b!4024742))

(declare-fun m!4615809 () Bool)

(assert (=> b!4024741 m!4615809))

(assert (=> b!4024741 m!4615431))

(declare-fun m!4615811 () Bool)

(assert (=> b!4024741 m!4615811))

(declare-fun m!4615813 () Bool)

(assert (=> b!4024740 m!4615813))

(declare-fun m!4615815 () Bool)

(assert (=> d!1191850 m!4615815))

(assert (=> d!1191850 m!4615667))

(declare-fun m!4615817 () Bool)

(assert (=> d!1191850 m!4615817))

(assert (=> b!4024453 d!1191850))

(declare-fun b!4024745 () Bool)

(declare-fun res!1637849 () Bool)

(declare-fun e!2496822 () Bool)

(assert (=> b!4024745 (=> (not res!1637849) (not e!2496822))))

(declare-fun lt!1429789 () List!43210)

(assert (=> b!4024745 (= res!1637849 (= (size!32212 lt!1429789) (+ (size!32212 lt!1429660) (size!32212 suffix!1299))))))

(declare-fun b!4024746 () Bool)

(assert (=> b!4024746 (= e!2496822 (or (not (= suffix!1299 Nil!43086)) (= lt!1429789 lt!1429660)))))

(declare-fun b!4024743 () Bool)

(declare-fun e!2496821 () List!43210)

(assert (=> b!4024743 (= e!2496821 suffix!1299)))

(declare-fun b!4024744 () Bool)

(assert (=> b!4024744 (= e!2496821 (Cons!43086 (h!48506 lt!1429660) (++!11279 (t!333863 lt!1429660) suffix!1299)))))

(declare-fun d!1191852 () Bool)

(assert (=> d!1191852 e!2496822))

(declare-fun res!1637850 () Bool)

(assert (=> d!1191852 (=> (not res!1637850) (not e!2496822))))

(assert (=> d!1191852 (= res!1637850 (= (content!6538 lt!1429789) (set.union (content!6538 lt!1429660) (content!6538 suffix!1299))))))

(assert (=> d!1191852 (= lt!1429789 e!2496821)))

(declare-fun c!695442 () Bool)

(assert (=> d!1191852 (= c!695442 (is-Nil!43086 lt!1429660))))

(assert (=> d!1191852 (= (++!11279 lt!1429660 suffix!1299) lt!1429789)))

(assert (= (and d!1191852 c!695442) b!4024743))

(assert (= (and d!1191852 (not c!695442)) b!4024744))

(assert (= (and d!1191852 res!1637850) b!4024745))

(assert (= (and b!4024745 res!1637849) b!4024746))

(declare-fun m!4615819 () Bool)

(assert (=> b!4024745 m!4615819))

(declare-fun m!4615821 () Bool)

(assert (=> b!4024745 m!4615821))

(assert (=> b!4024745 m!4615471))

(declare-fun m!4615823 () Bool)

(assert (=> b!4024744 m!4615823))

(declare-fun m!4615825 () Bool)

(assert (=> d!1191852 m!4615825))

(declare-fun m!4615827 () Bool)

(assert (=> d!1191852 m!4615827))

(assert (=> d!1191852 m!4615807))

(assert (=> b!4024453 d!1191852))

(declare-fun b!4024749 () Bool)

(declare-fun res!1637851 () Bool)

(declare-fun e!2496824 () Bool)

(assert (=> b!4024749 (=> (not res!1637851) (not e!2496824))))

(declare-fun lt!1429790 () List!43210)

(assert (=> b!4024749 (= res!1637851 (= (size!32212 lt!1429790) (+ (size!32212 lt!1429657) (size!32212 suffix!1299))))))

(declare-fun b!4024750 () Bool)

(assert (=> b!4024750 (= e!2496824 (or (not (= suffix!1299 Nil!43086)) (= lt!1429790 lt!1429657)))))

(declare-fun b!4024747 () Bool)

(declare-fun e!2496823 () List!43210)

(assert (=> b!4024747 (= e!2496823 suffix!1299)))

(declare-fun b!4024748 () Bool)

(assert (=> b!4024748 (= e!2496823 (Cons!43086 (h!48506 lt!1429657) (++!11279 (t!333863 lt!1429657) suffix!1299)))))

(declare-fun d!1191854 () Bool)

(assert (=> d!1191854 e!2496824))

(declare-fun res!1637852 () Bool)

(assert (=> d!1191854 (=> (not res!1637852) (not e!2496824))))

(assert (=> d!1191854 (= res!1637852 (= (content!6538 lt!1429790) (set.union (content!6538 lt!1429657) (content!6538 suffix!1299))))))

(assert (=> d!1191854 (= lt!1429790 e!2496823)))

(declare-fun c!695443 () Bool)

(assert (=> d!1191854 (= c!695443 (is-Nil!43086 lt!1429657))))

(assert (=> d!1191854 (= (++!11279 lt!1429657 suffix!1299) lt!1429790)))

(assert (= (and d!1191854 c!695443) b!4024747))

(assert (= (and d!1191854 (not c!695443)) b!4024748))

(assert (= (and d!1191854 res!1637852) b!4024749))

(assert (= (and b!4024749 res!1637851) b!4024750))

(declare-fun m!4615829 () Bool)

(assert (=> b!4024749 m!4615829))

(assert (=> b!4024749 m!4615683))

(assert (=> b!4024749 m!4615471))

(declare-fun m!4615831 () Bool)

(assert (=> b!4024748 m!4615831))

(declare-fun m!4615833 () Bool)

(assert (=> d!1191854 m!4615833))

(assert (=> d!1191854 m!4615689))

(assert (=> d!1191854 m!4615807))

(assert (=> b!4024453 d!1191854))

(declare-fun d!1191856 () Bool)

(assert (=> d!1191856 (= (++!11279 (++!11279 lt!1429652 lt!1429657) suffix!1299) (++!11279 lt!1429652 (++!11279 lt!1429657 suffix!1299)))))

(declare-fun lt!1429793 () Unit!62248)

(declare-fun choose!24332 (List!43210 List!43210 List!43210) Unit!62248)

(assert (=> d!1191856 (= lt!1429793 (choose!24332 lt!1429652 lt!1429657 suffix!1299))))

(assert (=> d!1191856 (= (lemmaConcatAssociativity!2581 lt!1429652 lt!1429657 suffix!1299) lt!1429793)))

(declare-fun bs!589994 () Bool)

(assert (= bs!589994 d!1191856))

(assert (=> bs!589994 m!4615443))

(declare-fun m!4615835 () Bool)

(assert (=> bs!589994 m!4615835))

(assert (=> bs!589994 m!4615443))

(assert (=> bs!589994 m!4615455))

(declare-fun m!4615837 () Bool)

(assert (=> bs!589994 m!4615837))

(assert (=> bs!589994 m!4615455))

(declare-fun m!4615839 () Bool)

(assert (=> bs!589994 m!4615839))

(assert (=> b!4024453 d!1191856))

(declare-fun b!4024761 () Bool)

(declare-fun b_free!112049 () Bool)

(declare-fun b_next!112753 () Bool)

(assert (=> b!4024761 (= b_free!112049 (not b_next!112753))))

(declare-fun tp!1223263 () Bool)

(declare-fun b_and!309223 () Bool)

(assert (=> b!4024761 (= tp!1223263 b_and!309223)))

(declare-fun b_free!112051 () Bool)

(declare-fun b_next!112755 () Bool)

(assert (=> b!4024761 (= b_free!112051 (not b_next!112755))))

(declare-fun t!333874 () Bool)

(declare-fun tb!241905 () Bool)

(assert (=> (and b!4024761 (= (toChars!9252 (transformation!6877 (h!48508 (t!333865 rules!2999)))) (toChars!9252 (transformation!6877 (rule!9933 token!484)))) t!333874) tb!241905))

(declare-fun result!293190 () Bool)

(assert (= result!293190 result!293182))

(assert (=> d!1191792 t!333874))

(assert (=> b!4024645 t!333874))

(declare-fun b_and!309225 () Bool)

(declare-fun tp!1223261 () Bool)

(assert (=> b!4024761 (= tp!1223261 (and (=> t!333874 result!293190) b_and!309225))))

(declare-fun e!2496835 () Bool)

(assert (=> b!4024761 (= e!2496835 (and tp!1223263 tp!1223261))))

(declare-fun tp!1223262 () Bool)

(declare-fun e!2496834 () Bool)

(declare-fun b!4024760 () Bool)

(assert (=> b!4024760 (= e!2496834 (and tp!1223262 (inv!57554 (tag!7737 (h!48508 (t!333865 rules!2999)))) (inv!57557 (transformation!6877 (h!48508 (t!333865 rules!2999)))) e!2496835))))

(declare-fun b!4024759 () Bool)

(declare-fun e!2496836 () Bool)

(declare-fun tp!1223260 () Bool)

(assert (=> b!4024759 (= e!2496836 (and e!2496834 tp!1223260))))

(assert (=> b!4024473 (= tp!1223201 e!2496836)))

(assert (= b!4024760 b!4024761))

(assert (= b!4024759 b!4024760))

(assert (= (and b!4024473 (is-Cons!43088 (t!333865 rules!2999))) b!4024759))

(declare-fun m!4615841 () Bool)

(assert (=> b!4024760 m!4615841))

(declare-fun m!4615843 () Bool)

(assert (=> b!4024760 m!4615843))

(declare-fun e!2496839 () Bool)

(assert (=> b!4024467 (= tp!1223208 e!2496839)))

(declare-fun b!4024775 () Bool)

(declare-fun tp!1223274 () Bool)

(declare-fun tp!1223278 () Bool)

(assert (=> b!4024775 (= e!2496839 (and tp!1223274 tp!1223278))))

(declare-fun b!4024774 () Bool)

(declare-fun tp!1223275 () Bool)

(assert (=> b!4024774 (= e!2496839 tp!1223275)))

(declare-fun b!4024773 () Bool)

(declare-fun tp!1223276 () Bool)

(declare-fun tp!1223277 () Bool)

(assert (=> b!4024773 (= e!2496839 (and tp!1223276 tp!1223277))))

(declare-fun b!4024772 () Bool)

(assert (=> b!4024772 (= e!2496839 tp_is_empty!20535)))

(assert (= (and b!4024467 (is-ElementMatch!11782 (regex!6877 (h!48508 rules!2999)))) b!4024772))

(assert (= (and b!4024467 (is-Concat!18890 (regex!6877 (h!48508 rules!2999)))) b!4024773))

(assert (= (and b!4024467 (is-Star!11782 (regex!6877 (h!48508 rules!2999)))) b!4024774))

(assert (= (and b!4024467 (is-Union!11782 (regex!6877 (h!48508 rules!2999)))) b!4024775))

(declare-fun e!2496840 () Bool)

(assert (=> b!4024462 (= tp!1223202 e!2496840)))

(declare-fun b!4024779 () Bool)

(declare-fun tp!1223279 () Bool)

(declare-fun tp!1223283 () Bool)

(assert (=> b!4024779 (= e!2496840 (and tp!1223279 tp!1223283))))

(declare-fun b!4024778 () Bool)

(declare-fun tp!1223280 () Bool)

(assert (=> b!4024778 (= e!2496840 tp!1223280)))

(declare-fun b!4024777 () Bool)

(declare-fun tp!1223281 () Bool)

(declare-fun tp!1223282 () Bool)

(assert (=> b!4024777 (= e!2496840 (and tp!1223281 tp!1223282))))

(declare-fun b!4024776 () Bool)

(assert (=> b!4024776 (= e!2496840 tp_is_empty!20535)))

(assert (= (and b!4024462 (is-ElementMatch!11782 (regex!6877 (rule!9933 token!484)))) b!4024776))

(assert (= (and b!4024462 (is-Concat!18890 (regex!6877 (rule!9933 token!484)))) b!4024777))

(assert (= (and b!4024462 (is-Star!11782 (regex!6877 (rule!9933 token!484)))) b!4024778))

(assert (= (and b!4024462 (is-Union!11782 (regex!6877 (rule!9933 token!484)))) b!4024779))

(declare-fun b!4024786 () Bool)

(declare-fun e!2496846 () Bool)

(declare-fun tp!1223286 () Bool)

(assert (=> b!4024786 (= e!2496846 (and tp_is_empty!20535 tp!1223286))))

(assert (=> b!4024465 (= tp!1223197 e!2496846)))

(assert (= (and b!4024465 (is-Cons!43086 (t!333863 suffix!1299))) b!4024786))

(declare-fun b!4024794 () Bool)

(declare-fun e!2496847 () Bool)

(declare-fun tp!1223287 () Bool)

(assert (=> b!4024794 (= e!2496847 (and tp_is_empty!20535 tp!1223287))))

(assert (=> b!4024460 (= tp!1223199 e!2496847)))

(assert (= (and b!4024460 (is-Cons!43086 (t!333863 suffixResult!105))) b!4024794))

(declare-fun b!4024795 () Bool)

(declare-fun e!2496848 () Bool)

(declare-fun tp!1223288 () Bool)

(assert (=> b!4024795 (= e!2496848 (and tp_is_empty!20535 tp!1223288))))

(assert (=> b!4024455 (= tp!1223207 e!2496848)))

(assert (= (and b!4024455 (is-Cons!43086 (originalCharacters!7477 token!484))) b!4024795))

(declare-fun b!4024796 () Bool)

(declare-fun e!2496849 () Bool)

(declare-fun tp!1223289 () Bool)

(assert (=> b!4024796 (= e!2496849 (and tp_is_empty!20535 tp!1223289))))

(assert (=> b!4024469 (= tp!1223205 e!2496849)))

(assert (= (and b!4024469 (is-Cons!43086 (t!333863 prefix!494))) b!4024796))

(declare-fun b!4024797 () Bool)

(declare-fun e!2496850 () Bool)

(declare-fun tp!1223290 () Bool)

(assert (=> b!4024797 (= e!2496850 (and tp_is_empty!20535 tp!1223290))))

(assert (=> b!4024464 (= tp!1223209 e!2496850)))

(assert (= (and b!4024464 (is-Cons!43086 (t!333863 newSuffix!27))) b!4024797))

(declare-fun b!4024798 () Bool)

(declare-fun e!2496851 () Bool)

(declare-fun tp!1223291 () Bool)

(assert (=> b!4024798 (= e!2496851 (and tp_is_empty!20535 tp!1223291))))

(assert (=> b!4024454 (= tp!1223206 e!2496851)))

(assert (= (and b!4024454 (is-Cons!43086 (t!333863 newSuffixResult!27))) b!4024798))

(declare-fun b_lambda!117407 () Bool)

(assert (= b_lambda!117403 (or (and b!4024457 b_free!112035) (and b!4024475 b_free!112039 (= (toChars!9252 (transformation!6877 (h!48508 rules!2999))) (toChars!9252 (transformation!6877 (rule!9933 token!484))))) (and b!4024761 b_free!112051 (= (toChars!9252 (transformation!6877 (h!48508 (t!333865 rules!2999)))) (toChars!9252 (transformation!6877 (rule!9933 token!484))))) b_lambda!117407)))

(declare-fun b_lambda!117409 () Bool)

(assert (= b_lambda!117405 (or (and b!4024457 b_free!112035) (and b!4024475 b_free!112039 (= (toChars!9252 (transformation!6877 (h!48508 rules!2999))) (toChars!9252 (transformation!6877 (rule!9933 token!484))))) (and b!4024761 b_free!112051 (= (toChars!9252 (transformation!6877 (h!48508 (t!333865 rules!2999)))) (toChars!9252 (transformation!6877 (rule!9933 token!484))))) b_lambda!117409)))

(push 1)

(assert (not d!1191824))

(assert tp_is_empty!20535)

(assert (not b!4024654))

(assert (not b!4024656))

(assert (not d!1191776))

(assert (not b!4024615))

(assert (not b!4024560))

(assert (not b!4024640))

(assert (not b!4024650))

(assert (not d!1191812))

(assert (not d!1191842))

(assert (not b!4024667))

(assert (not b!4024602))

(assert b_and!309219)

(assert (not d!1191806))

(assert (not b!4024605))

(assert (not b!4024689))

(assert (not b!4024786))

(assert (not b!4024737))

(assert (not b_next!112741))

(assert (not b!4024795))

(assert (not d!1191800))

(assert (not b!4024646))

(assert (not b_next!112737))

(assert (not b!4024653))

(assert (not b!4024616))

(assert (not b!4024638))

(assert (not b!4024671))

(assert (not d!1191804))

(assert (not b!4024748))

(assert (not b!4024648))

(assert (not d!1191792))

(assert (not b!4024674))

(assert (not b!4024731))

(assert (not d!1191850))

(assert (not b!4024686))

(assert (not b_next!112755))

(assert (not b!4024797))

(assert (not tb!241901))

(assert (not b_next!112743))

(assert (not b_lambda!117409))

(assert (not d!1191834))

(assert (not b!4024593))

(assert (not b!4024573))

(assert b_and!309225)

(assert (not b!4024796))

(assert (not b!4024726))

(assert (not b!4024628))

(assert (not b!4024652))

(assert (not b!4024777))

(assert (not b!4024645))

(assert (not b!4024661))

(assert (not d!1191816))

(assert (not d!1191830))

(assert (not d!1191818))

(assert (not b!4024775))

(assert (not b!4024649))

(assert (not b!4024798))

(assert (not b!4024727))

(assert (not b!4024732))

(assert (not b_lambda!117407))

(assert (not b!4024734))

(assert (not b!4024571))

(assert (not b_next!112739))

(assert (not d!1191782))

(assert b_and!309221)

(assert (not d!1191852))

(assert (not b!4024729))

(assert (not b!4024773))

(assert (not b!4024639))

(assert (not b!4024657))

(assert (not b!4024741))

(assert (not b!4024583))

(assert (not b!4024759))

(assert (not b!4024736))

(assert (not b!4024668))

(assert (not b!4024778))

(assert (not d!1191790))

(assert (not b!4024584))

(assert (not d!1191846))

(assert (not b!4024779))

(assert (not b!4024572))

(assert (not b!4024794))

(assert (not b!4024658))

(assert (not b!4024730))

(assert (not b!4024663))

(assert (not b!4024760))

(assert (not b!4024585))

(assert (not b!4024625))

(assert (not b!4024591))

(assert (not b!4024744))

(assert (not b_next!112753))

(assert (not d!1191820))

(assert (not d!1191856))

(assert (not b!4024664))

(assert (not d!1191802))

(assert (not b!4024749))

(assert (not d!1191848))

(assert (not b!4024685))

(assert (not bm!286756))

(assert (not d!1191810))

(assert (not b!4024620))

(assert (not d!1191798))

(assert b_and!309223)

(assert (not b!4024635))

(assert (not d!1191832))

(assert (not b!4024740))

(assert (not b!4024629))

(assert (not b!4024733))

(assert (not b!4024745))

(assert (not d!1191774))

(assert (not b!4024774))

(assert (not b!4024673))

(assert (not d!1191854))

(assert b_and!309199)

(assert b_and!309203)

(check-sat)

(pop 1)

(push 1)

(assert b_and!309219)

(assert (not b_next!112741))

(assert (not b_next!112737))

(assert (not b_next!112753))

(assert b_and!309223)

(assert (not b_next!112743))

(assert (not b_next!112755))

(assert b_and!309225)

(assert (not b_next!112739))

(assert b_and!309221)

(assert b_and!309199)

(assert b_and!309203)

(check-sat)

(pop 1)

