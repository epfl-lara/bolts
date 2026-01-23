; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147742 () Bool)

(assert start!147742)

(declare-fun b!1579461 () Bool)

(declare-fun b_free!42663 () Bool)

(declare-fun b_next!43367 () Bool)

(assert (=> b!1579461 (= b_free!42663 (not b_next!43367))))

(declare-fun tp!465073 () Bool)

(declare-fun b_and!110653 () Bool)

(assert (=> b!1579461 (= tp!465073 b_and!110653)))

(declare-fun b_free!42665 () Bool)

(declare-fun b_next!43369 () Bool)

(assert (=> b!1579461 (= b_free!42665 (not b_next!43369))))

(declare-fun tp!465068 () Bool)

(declare-fun b_and!110655 () Bool)

(assert (=> b!1579461 (= tp!465068 b_and!110655)))

(declare-fun b!1579477 () Bool)

(declare-fun b_free!42667 () Bool)

(declare-fun b_next!43371 () Bool)

(assert (=> b!1579477 (= b_free!42667 (not b_next!43371))))

(declare-fun tp!465071 () Bool)

(declare-fun b_and!110657 () Bool)

(assert (=> b!1579477 (= tp!465071 b_and!110657)))

(declare-fun b_free!42669 () Bool)

(declare-fun b_next!43373 () Bool)

(assert (=> b!1579477 (= b_free!42669 (not b_next!43373))))

(declare-fun tp!465069 () Bool)

(declare-fun b_and!110659 () Bool)

(assert (=> b!1579477 (= tp!465069 b_and!110659)))

(declare-fun b!1579460 () Bool)

(declare-fun res!704111 () Bool)

(declare-fun e!1014653 () Bool)

(assert (=> b!1579460 (=> (not res!704111) (not e!1014653))))

(declare-datatypes ((LexerInterface!2688 0))(
  ( (LexerInterfaceExt!2685 (__x!11600 Int)) (Lexer!2686) )
))
(declare-fun thiss!17113 () LexerInterface!2688)

(declare-datatypes ((List!17429 0))(
  ( (Nil!17359) (Cons!17359 (h!22760 (_ BitVec 16)) (t!143606 List!17429)) )
))
(declare-datatypes ((TokenValue!3149 0))(
  ( (FloatLiteralValue!6298 (text!22488 List!17429)) (TokenValueExt!3148 (__x!11601 Int)) (Broken!15745 (value!96828 List!17429)) (Object!3218) (End!3149) (Def!3149) (Underscore!3149) (Match!3149) (Else!3149) (Error!3149) (Case!3149) (If!3149) (Extends!3149) (Abstract!3149) (Class!3149) (Val!3149) (DelimiterValue!6298 (del!3209 List!17429)) (KeywordValue!3155 (value!96829 List!17429)) (CommentValue!6298 (value!96830 List!17429)) (WhitespaceValue!6298 (value!96831 List!17429)) (IndentationValue!3149 (value!96832 List!17429)) (String!20076) (Int32!3149) (Broken!15746 (value!96833 List!17429)) (Boolean!3150) (Unit!26970) (OperatorValue!3152 (op!3209 List!17429)) (IdentifierValue!6298 (value!96834 List!17429)) (IdentifierValue!6299 (value!96835 List!17429)) (WhitespaceValue!6299 (value!96836 List!17429)) (True!6298) (False!6298) (Broken!15747 (value!96837 List!17429)) (Broken!15748 (value!96838 List!17429)) (True!6299) (RightBrace!3149) (RightBracket!3149) (Colon!3149) (Null!3149) (Comma!3149) (LeftBracket!3149) (False!6299) (LeftBrace!3149) (ImaginaryLiteralValue!3149 (text!22489 List!17429)) (StringLiteralValue!9447 (value!96839 List!17429)) (EOFValue!3149 (value!96840 List!17429)) (IdentValue!3149 (value!96841 List!17429)) (DelimiterValue!6299 (value!96842 List!17429)) (DedentValue!3149 (value!96843 List!17429)) (NewLineValue!3149 (value!96844 List!17429)) (IntegerValue!9447 (value!96845 (_ BitVec 32)) (text!22490 List!17429)) (IntegerValue!9448 (value!96846 Int) (text!22491 List!17429)) (Times!3149) (Or!3149) (Equal!3149) (Minus!3149) (Broken!15749 (value!96847 List!17429)) (And!3149) (Div!3149) (LessEqual!3149) (Mod!3149) (Concat!7536) (Not!3149) (Plus!3149) (SpaceValue!3149 (value!96848 List!17429)) (IntegerValue!9449 (value!96849 Int) (text!22492 List!17429)) (StringLiteralValue!9448 (text!22493 List!17429)) (FloatLiteralValue!6299 (text!22494 List!17429)) (BytesLiteralValue!3149 (value!96850 List!17429)) (CommentValue!6299 (value!96851 List!17429)) (StringLiteralValue!9449 (value!96852 List!17429)) (ErrorTokenValue!3149 (msg!3210 List!17429)) )
))
(declare-datatypes ((C!8948 0))(
  ( (C!8949 (val!5070 Int)) )
))
(declare-datatypes ((List!17430 0))(
  ( (Nil!17360) (Cons!17360 (h!22761 C!8948) (t!143607 List!17430)) )
))
(declare-datatypes ((IArray!11537 0))(
  ( (IArray!11538 (innerList!5826 List!17430)) )
))
(declare-datatypes ((Conc!5766 0))(
  ( (Node!5766 (left!14025 Conc!5766) (right!14355 Conc!5766) (csize!11762 Int) (cheight!5977 Int)) (Leaf!8516 (xs!8570 IArray!11537) (csize!11763 Int)) (Empty!5766) )
))
(declare-datatypes ((BalanceConc!11476 0))(
  ( (BalanceConc!11477 (c!255955 Conc!5766)) )
))
(declare-datatypes ((Regex!4387 0))(
  ( (ElementMatch!4387 (c!255956 C!8948)) (Concat!7537 (regOne!9286 Regex!4387) (regTwo!9286 Regex!4387)) (EmptyExpr!4387) (Star!4387 (reg!4716 Regex!4387)) (EmptyLang!4387) (Union!4387 (regOne!9287 Regex!4387) (regTwo!9287 Regex!4387)) )
))
(declare-datatypes ((String!20077 0))(
  ( (String!20078 (value!96853 String)) )
))
(declare-datatypes ((TokenValueInjection!5958 0))(
  ( (TokenValueInjection!5959 (toValue!4462 Int) (toChars!4321 Int)) )
))
(declare-datatypes ((Rule!5918 0))(
  ( (Rule!5919 (regex!3059 Regex!4387) (tag!3325 String!20077) (isSeparator!3059 Bool) (transformation!3059 TokenValueInjection!5958)) )
))
(declare-datatypes ((List!17431 0))(
  ( (Nil!17361) (Cons!17361 (h!22762 Rule!5918) (t!143608 List!17431)) )
))
(declare-fun rules!1846 () List!17431)

(declare-fun rulesInvariant!2357 (LexerInterface!2688 List!17431) Bool)

(assert (=> b!1579460 (= res!704111 (rulesInvariant!2357 thiss!17113 rules!1846))))

(declare-fun e!1014644 () Bool)

(assert (=> b!1579461 (= e!1014644 (and tp!465073 tp!465068))))

(declare-fun tp!465066 () Bool)

(declare-fun e!1014657 () Bool)

(declare-datatypes ((Token!5684 0))(
  ( (Token!5685 (value!96854 TokenValue!3149) (rule!4855 Rule!5918) (size!13960 Int) (originalCharacters!3873 List!17430)) )
))
(declare-datatypes ((List!17432 0))(
  ( (Nil!17362) (Cons!17362 (h!22763 Token!5684) (t!143609 List!17432)) )
))
(declare-fun tokens!457 () List!17432)

(declare-fun b!1579462 () Bool)

(declare-fun e!1014648 () Bool)

(declare-fun inv!22772 (Token!5684) Bool)

(assert (=> b!1579462 (= e!1014657 (and (inv!22772 (h!22763 tokens!457)) e!1014648 tp!465066))))

(declare-fun b!1579463 () Bool)

(declare-fun e!1014656 () Bool)

(assert (=> b!1579463 (= e!1014653 e!1014656)))

(declare-fun res!704099 () Bool)

(assert (=> b!1579463 (=> (not res!704099) (not e!1014656))))

(declare-fun lt!552219 () List!17430)

(declare-fun lt!552225 () List!17430)

(assert (=> b!1579463 (= res!704099 (= lt!552219 lt!552225))))

(declare-fun lt!552214 () List!17430)

(declare-fun lt!552222 () List!17430)

(declare-fun ++!4507 (List!17430 List!17430) List!17430)

(assert (=> b!1579463 (= lt!552225 (++!4507 lt!552214 lt!552222))))

(declare-fun lt!552210 () BalanceConc!11476)

(declare-fun list!6707 (BalanceConc!11476) List!17430)

(assert (=> b!1579463 (= lt!552219 (list!6707 lt!552210))))

(declare-fun lt!552221 () BalanceConc!11476)

(assert (=> b!1579463 (= lt!552222 (list!6707 lt!552221))))

(declare-fun charsOf!1708 (Token!5684) BalanceConc!11476)

(assert (=> b!1579463 (= lt!552214 (list!6707 (charsOf!1708 (h!22763 tokens!457))))))

(declare-datatypes ((IArray!11539 0))(
  ( (IArray!11540 (innerList!5827 List!17432)) )
))
(declare-datatypes ((Conc!5767 0))(
  ( (Node!5767 (left!14026 Conc!5767) (right!14356 Conc!5767) (csize!11764 Int) (cheight!5978 Int)) (Leaf!8517 (xs!8571 IArray!11539) (csize!11765 Int)) (Empty!5767) )
))
(declare-datatypes ((BalanceConc!11478 0))(
  ( (BalanceConc!11479 (c!255957 Conc!5767)) )
))
(declare-datatypes ((tuple2!16828 0))(
  ( (tuple2!16829 (_1!9816 BalanceConc!11478) (_2!9816 BalanceConc!11476)) )
))
(declare-fun lt!552212 () tuple2!16828)

(declare-fun lex!1172 (LexerInterface!2688 List!17431 BalanceConc!11476) tuple2!16828)

(assert (=> b!1579463 (= lt!552212 (lex!1172 thiss!17113 rules!1846 lt!552221))))

(declare-fun lt!552226 () BalanceConc!11478)

(declare-fun print!1219 (LexerInterface!2688 BalanceConc!11478) BalanceConc!11476)

(assert (=> b!1579463 (= lt!552221 (print!1219 thiss!17113 lt!552226))))

(declare-fun seqFromList!1867 (List!17432) BalanceConc!11478)

(assert (=> b!1579463 (= lt!552226 (seqFromList!1867 (t!143609 tokens!457)))))

(assert (=> b!1579463 (= lt!552210 (print!1219 thiss!17113 (seqFromList!1867 tokens!457)))))

(declare-fun b!1579464 () Bool)

(declare-fun res!704106 () Bool)

(declare-fun e!1014646 () Bool)

(assert (=> b!1579464 (=> res!704106 e!1014646)))

(declare-fun separableTokensPredicate!630 (LexerInterface!2688 Token!5684 Token!5684 List!17431) Bool)

(assert (=> b!1579464 (= res!704106 (not (separableTokensPredicate!630 thiss!17113 (h!22763 tokens!457) (h!22763 (t!143609 tokens!457)) rules!1846)))))

(declare-fun b!1579465 () Bool)

(declare-fun tp!465067 () Bool)

(declare-fun e!1014655 () Bool)

(declare-fun inv!21 (TokenValue!3149) Bool)

(assert (=> b!1579465 (= e!1014648 (and (inv!21 (value!96854 (h!22763 tokens!457))) e!1014655 tp!465067))))

(declare-fun res!704112 () Bool)

(assert (=> start!147742 (=> (not res!704112) (not e!1014653))))

(get-info :version)

(assert (=> start!147742 (= res!704112 ((_ is Lexer!2686) thiss!17113))))

(assert (=> start!147742 e!1014653))

(assert (=> start!147742 true))

(declare-fun e!1014654 () Bool)

(assert (=> start!147742 e!1014654))

(assert (=> start!147742 e!1014657))

(declare-fun e!1014658 () Bool)

(declare-fun tp!465070 () Bool)

(declare-fun b!1579466 () Bool)

(declare-fun inv!22769 (String!20077) Bool)

(declare-fun inv!22773 (TokenValueInjection!5958) Bool)

(assert (=> b!1579466 (= e!1014655 (and tp!465070 (inv!22769 (tag!3325 (rule!4855 (h!22763 tokens!457)))) (inv!22773 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) e!1014658))))

(declare-fun b!1579467 () Bool)

(declare-fun e!1014643 () Bool)

(assert (=> b!1579467 (= e!1014643 e!1014646)))

(declare-fun res!704104 () Bool)

(assert (=> b!1579467 (=> res!704104 e!1014646)))

(declare-fun lt!552208 () List!17432)

(declare-fun lt!552224 () List!17432)

(declare-fun lt!552211 () List!17432)

(assert (=> b!1579467 (= res!704104 (or (not (= lt!552224 lt!552208)) (not (= lt!552208 lt!552211))))))

(declare-fun list!6708 (BalanceConc!11478) List!17432)

(assert (=> b!1579467 (= lt!552208 (list!6708 lt!552226))))

(assert (=> b!1579467 (= lt!552224 lt!552211)))

(declare-fun prepend!533 (BalanceConc!11478 Token!5684) BalanceConc!11478)

(assert (=> b!1579467 (= lt!552211 (list!6708 (prepend!533 (seqFromList!1867 (t!143609 (t!143609 tokens!457))) (h!22763 (t!143609 tokens!457)))))))

(declare-datatypes ((Unit!26971 0))(
  ( (Unit!26972) )
))
(declare-fun lt!552220 () Unit!26971)

(declare-fun seqFromListBHdTlConstructive!136 (Token!5684 List!17432 BalanceConc!11478) Unit!26971)

(assert (=> b!1579467 (= lt!552220 (seqFromListBHdTlConstructive!136 (h!22763 (t!143609 tokens!457)) (t!143609 (t!143609 tokens!457)) (_1!9816 lt!552212)))))

(declare-fun b!1579468 () Bool)

(assert (=> b!1579468 (= e!1014656 (not e!1014643))))

(declare-fun res!704103 () Bool)

(assert (=> b!1579468 (=> res!704103 e!1014643)))

(assert (=> b!1579468 (= res!704103 (not (= lt!552224 (t!143609 tokens!457))))))

(assert (=> b!1579468 (= lt!552224 (list!6708 (_1!9816 lt!552212)))))

(declare-fun lt!552216 () Unit!26971)

(declare-fun theoremInvertabilityWhenTokenListSeparable!133 (LexerInterface!2688 List!17431 List!17432) Unit!26971)

(assert (=> b!1579468 (= lt!552216 (theoremInvertabilityWhenTokenListSeparable!133 thiss!17113 rules!1846 (t!143609 tokens!457)))))

(declare-fun isPrefix!1319 (List!17430 List!17430) Bool)

(assert (=> b!1579468 (isPrefix!1319 lt!552214 lt!552225)))

(declare-fun lt!552207 () Unit!26971)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!844 (List!17430 List!17430) Unit!26971)

(assert (=> b!1579468 (= lt!552207 (lemmaConcatTwoListThenFirstIsPrefix!844 lt!552214 lt!552222))))

(declare-fun b!1579469 () Bool)

(declare-fun res!704101 () Bool)

(assert (=> b!1579469 (=> (not res!704101) (not e!1014653))))

(declare-fun rulesProduceEachTokenIndividuallyList!890 (LexerInterface!2688 List!17431 List!17432) Bool)

(assert (=> b!1579469 (= res!704101 (rulesProduceEachTokenIndividuallyList!890 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1014651 () Bool)

(declare-fun b!1579470 () Bool)

(declare-fun rulesProduceIndividualToken!1340 (LexerInterface!2688 List!17431 Token!5684) Bool)

(assert (=> b!1579470 (= e!1014651 (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 (t!143609 tokens!457))))))

(declare-fun b!1579471 () Bool)

(declare-fun e!1014647 () Bool)

(assert (=> b!1579471 (= e!1014646 e!1014647)))

(declare-fun res!704102 () Bool)

(assert (=> b!1579471 (=> res!704102 e!1014647)))

(declare-fun lt!552218 () List!17430)

(declare-fun lt!552209 () List!17430)

(assert (=> b!1579471 (= res!704102 (or (not (= lt!552218 lt!552209)) (not (= lt!552209 lt!552214)) (not (= lt!552218 lt!552214))))))

(declare-fun printList!803 (LexerInterface!2688 List!17432) List!17430)

(assert (=> b!1579471 (= lt!552209 (printList!803 thiss!17113 (Cons!17362 (h!22763 tokens!457) Nil!17362)))))

(declare-fun lt!552215 () BalanceConc!11476)

(assert (=> b!1579471 (= lt!552218 (list!6707 lt!552215))))

(declare-fun lt!552217 () BalanceConc!11478)

(declare-fun printTailRec!741 (LexerInterface!2688 BalanceConc!11478 Int BalanceConc!11476) BalanceConc!11476)

(assert (=> b!1579471 (= lt!552215 (printTailRec!741 thiss!17113 lt!552217 0 (BalanceConc!11477 Empty!5766)))))

(assert (=> b!1579471 (= lt!552215 (print!1219 thiss!17113 lt!552217))))

(declare-fun singletonSeq!1395 (Token!5684) BalanceConc!11478)

(assert (=> b!1579471 (= lt!552217 (singletonSeq!1395 (h!22763 tokens!457)))))

(declare-datatypes ((tuple2!16830 0))(
  ( (tuple2!16831 (_1!9817 Token!5684) (_2!9817 List!17430)) )
))
(declare-datatypes ((Option!3110 0))(
  ( (None!3109) (Some!3109 (v!23940 tuple2!16830)) )
))
(declare-fun lt!552223 () Option!3110)

(declare-fun maxPrefix!1252 (LexerInterface!2688 List!17431 List!17430) Option!3110)

(assert (=> b!1579471 (= lt!552223 (maxPrefix!1252 thiss!17113 rules!1846 lt!552219))))

(declare-fun b!1579472 () Bool)

(declare-fun res!704107 () Bool)

(assert (=> b!1579472 (=> res!704107 e!1014647)))

(assert (=> b!1579472 (= res!704107 (not (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 tokens!457))))))

(declare-fun b!1579473 () Bool)

(declare-fun res!704109 () Bool)

(assert (=> b!1579473 (=> (not res!704109) (not e!1014653))))

(declare-fun isEmpty!10362 (List!17431) Bool)

(assert (=> b!1579473 (= res!704109 (not (isEmpty!10362 rules!1846)))))

(declare-fun b!1579474 () Bool)

(declare-fun res!704105 () Bool)

(assert (=> b!1579474 (=> res!704105 e!1014647)))

(declare-fun isEmpty!10363 (BalanceConc!11478) Bool)

(declare-fun seqFromList!1868 (List!17430) BalanceConc!11476)

(assert (=> b!1579474 (= res!704105 (isEmpty!10363 (_1!9816 (lex!1172 thiss!17113 rules!1846 (seqFromList!1868 lt!552214)))))))

(declare-fun b!1579475 () Bool)

(assert (=> b!1579475 (= e!1014647 e!1014651)))

(declare-fun res!704110 () Bool)

(assert (=> b!1579475 (=> res!704110 e!1014651)))

(declare-fun isDefined!2489 (Option!3110) Bool)

(assert (=> b!1579475 (= res!704110 (not (isDefined!2489 lt!552223)))))

(declare-fun lt!552213 () Unit!26971)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!262 (LexerInterface!2688 List!17431 List!17430 List!17430) Unit!26971)

(assert (=> b!1579475 (= lt!552213 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!262 thiss!17113 rules!1846 lt!552214 lt!552222))))

(declare-fun b!1579476 () Bool)

(declare-fun e!1014649 () Bool)

(declare-fun tp!465072 () Bool)

(assert (=> b!1579476 (= e!1014654 (and e!1014649 tp!465072))))

(assert (=> b!1579477 (= e!1014658 (and tp!465071 tp!465069))))

(declare-fun b!1579478 () Bool)

(declare-fun res!704100 () Bool)

(assert (=> b!1579478 (=> (not res!704100) (not e!1014653))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!381 (LexerInterface!2688 List!17432 List!17431) Bool)

(assert (=> b!1579478 (= res!704100 (tokensListTwoByTwoPredicateSeparableList!381 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1579479 () Bool)

(declare-fun res!704108 () Bool)

(assert (=> b!1579479 (=> (not res!704108) (not e!1014653))))

(assert (=> b!1579479 (= res!704108 (and (not ((_ is Nil!17362) tokens!457)) (not ((_ is Nil!17362) (t!143609 tokens!457)))))))

(declare-fun tp!465074 () Bool)

(declare-fun b!1579480 () Bool)

(assert (=> b!1579480 (= e!1014649 (and tp!465074 (inv!22769 (tag!3325 (h!22762 rules!1846))) (inv!22773 (transformation!3059 (h!22762 rules!1846))) e!1014644))))

(assert (= (and start!147742 res!704112) b!1579473))

(assert (= (and b!1579473 res!704109) b!1579460))

(assert (= (and b!1579460 res!704111) b!1579469))

(assert (= (and b!1579469 res!704101) b!1579478))

(assert (= (and b!1579478 res!704100) b!1579479))

(assert (= (and b!1579479 res!704108) b!1579463))

(assert (= (and b!1579463 res!704099) b!1579468))

(assert (= (and b!1579468 (not res!704103)) b!1579467))

(assert (= (and b!1579467 (not res!704104)) b!1579464))

(assert (= (and b!1579464 (not res!704106)) b!1579471))

(assert (= (and b!1579471 (not res!704102)) b!1579472))

(assert (= (and b!1579472 (not res!704107)) b!1579474))

(assert (= (and b!1579474 (not res!704105)) b!1579475))

(assert (= (and b!1579475 (not res!704110)) b!1579470))

(assert (= b!1579480 b!1579461))

(assert (= b!1579476 b!1579480))

(assert (= (and start!147742 ((_ is Cons!17361) rules!1846)) b!1579476))

(assert (= b!1579466 b!1579477))

(assert (= b!1579465 b!1579466))

(assert (= b!1579462 b!1579465))

(assert (= (and start!147742 ((_ is Cons!17362) tokens!457)) b!1579462))

(declare-fun m!1862023 () Bool)

(assert (=> b!1579468 m!1862023))

(declare-fun m!1862025 () Bool)

(assert (=> b!1579468 m!1862025))

(declare-fun m!1862027 () Bool)

(assert (=> b!1579468 m!1862027))

(declare-fun m!1862029 () Bool)

(assert (=> b!1579468 m!1862029))

(declare-fun m!1862031 () Bool)

(assert (=> b!1579480 m!1862031))

(declare-fun m!1862033 () Bool)

(assert (=> b!1579480 m!1862033))

(declare-fun m!1862035 () Bool)

(assert (=> b!1579467 m!1862035))

(declare-fun m!1862037 () Bool)

(assert (=> b!1579467 m!1862037))

(declare-fun m!1862039 () Bool)

(assert (=> b!1579467 m!1862039))

(declare-fun m!1862041 () Bool)

(assert (=> b!1579467 m!1862041))

(declare-fun m!1862043 () Bool)

(assert (=> b!1579467 m!1862043))

(assert (=> b!1579467 m!1862039))

(assert (=> b!1579467 m!1862041))

(declare-fun m!1862045 () Bool)

(assert (=> b!1579475 m!1862045))

(declare-fun m!1862047 () Bool)

(assert (=> b!1579475 m!1862047))

(declare-fun m!1862049 () Bool)

(assert (=> b!1579465 m!1862049))

(declare-fun m!1862051 () Bool)

(assert (=> b!1579474 m!1862051))

(assert (=> b!1579474 m!1862051))

(declare-fun m!1862053 () Bool)

(assert (=> b!1579474 m!1862053))

(declare-fun m!1862055 () Bool)

(assert (=> b!1579474 m!1862055))

(declare-fun m!1862057 () Bool)

(assert (=> b!1579462 m!1862057))

(declare-fun m!1862059 () Bool)

(assert (=> b!1579473 m!1862059))

(declare-fun m!1862061 () Bool)

(assert (=> b!1579469 m!1862061))

(declare-fun m!1862063 () Bool)

(assert (=> b!1579472 m!1862063))

(declare-fun m!1862065 () Bool)

(assert (=> b!1579470 m!1862065))

(declare-fun m!1862067 () Bool)

(assert (=> b!1579471 m!1862067))

(declare-fun m!1862069 () Bool)

(assert (=> b!1579471 m!1862069))

(declare-fun m!1862071 () Bool)

(assert (=> b!1579471 m!1862071))

(declare-fun m!1862073 () Bool)

(assert (=> b!1579471 m!1862073))

(declare-fun m!1862075 () Bool)

(assert (=> b!1579471 m!1862075))

(declare-fun m!1862077 () Bool)

(assert (=> b!1579471 m!1862077))

(declare-fun m!1862079 () Bool)

(assert (=> b!1579463 m!1862079))

(declare-fun m!1862081 () Bool)

(assert (=> b!1579463 m!1862081))

(declare-fun m!1862083 () Bool)

(assert (=> b!1579463 m!1862083))

(declare-fun m!1862085 () Bool)

(assert (=> b!1579463 m!1862085))

(declare-fun m!1862087 () Bool)

(assert (=> b!1579463 m!1862087))

(declare-fun m!1862089 () Bool)

(assert (=> b!1579463 m!1862089))

(declare-fun m!1862091 () Bool)

(assert (=> b!1579463 m!1862091))

(declare-fun m!1862093 () Bool)

(assert (=> b!1579463 m!1862093))

(assert (=> b!1579463 m!1862085))

(declare-fun m!1862095 () Bool)

(assert (=> b!1579463 m!1862095))

(declare-fun m!1862097 () Bool)

(assert (=> b!1579463 m!1862097))

(assert (=> b!1579463 m!1862091))

(declare-fun m!1862099 () Bool)

(assert (=> b!1579466 m!1862099))

(declare-fun m!1862101 () Bool)

(assert (=> b!1579466 m!1862101))

(declare-fun m!1862103 () Bool)

(assert (=> b!1579460 m!1862103))

(declare-fun m!1862105 () Bool)

(assert (=> b!1579478 m!1862105))

(declare-fun m!1862107 () Bool)

(assert (=> b!1579464 m!1862107))

(check-sat (not b!1579474) b_and!110655 (not b!1579460) (not b!1579476) (not b!1579463) (not b!1579473) (not b_next!43367) (not b_next!43369) b_and!110657 (not b!1579472) (not b_next!43373) (not b!1579462) (not b_next!43371) (not b!1579478) (not b!1579465) (not b!1579466) (not b!1579467) (not b!1579470) (not b!1579464) (not b!1579475) b_and!110653 (not b!1579471) b_and!110659 (not b!1579469) (not b!1579468) (not b!1579480))
(check-sat (not b_next!43371) b_and!110655 (not b_next!43367) (not b_next!43369) b_and!110653 b_and!110659 b_and!110657 (not b_next!43373))
(get-model)

(declare-fun d!469172 () Bool)

(declare-fun lt!552235 () Bool)

(declare-fun isEmpty!10369 (List!17432) Bool)

(assert (=> d!469172 (= lt!552235 (isEmpty!10369 (list!6708 (_1!9816 (lex!1172 thiss!17113 rules!1846 (seqFromList!1868 lt!552214))))))))

(declare-fun isEmpty!10370 (Conc!5767) Bool)

(assert (=> d!469172 (= lt!552235 (isEmpty!10370 (c!255957 (_1!9816 (lex!1172 thiss!17113 rules!1846 (seqFromList!1868 lt!552214))))))))

(assert (=> d!469172 (= (isEmpty!10363 (_1!9816 (lex!1172 thiss!17113 rules!1846 (seqFromList!1868 lt!552214)))) lt!552235)))

(declare-fun bs!390811 () Bool)

(assert (= bs!390811 d!469172))

(declare-fun m!1862143 () Bool)

(assert (=> bs!390811 m!1862143))

(assert (=> bs!390811 m!1862143))

(declare-fun m!1862145 () Bool)

(assert (=> bs!390811 m!1862145))

(declare-fun m!1862147 () Bool)

(assert (=> bs!390811 m!1862147))

(assert (=> b!1579474 d!469172))

(declare-fun b!1579536 () Bool)

(declare-fun e!1014695 () Bool)

(declare-fun lt!552251 () tuple2!16828)

(assert (=> b!1579536 (= e!1014695 (not (isEmpty!10363 (_1!9816 lt!552251))))))

(declare-fun d!469180 () Bool)

(declare-fun e!1014694 () Bool)

(assert (=> d!469180 e!1014694))

(declare-fun res!704154 () Bool)

(assert (=> d!469180 (=> (not res!704154) (not e!1014694))))

(declare-fun e!1014693 () Bool)

(assert (=> d!469180 (= res!704154 e!1014693)))

(declare-fun c!255966 () Bool)

(declare-fun size!13964 (BalanceConc!11478) Int)

(assert (=> d!469180 (= c!255966 (> (size!13964 (_1!9816 lt!552251)) 0))))

(declare-fun lexTailRecV2!500 (LexerInterface!2688 List!17431 BalanceConc!11476 BalanceConc!11476 BalanceConc!11476 BalanceConc!11478) tuple2!16828)

(assert (=> d!469180 (= lt!552251 (lexTailRecV2!500 thiss!17113 rules!1846 (seqFromList!1868 lt!552214) (BalanceConc!11477 Empty!5766) (seqFromList!1868 lt!552214) (BalanceConc!11479 Empty!5767)))))

(assert (=> d!469180 (= (lex!1172 thiss!17113 rules!1846 (seqFromList!1868 lt!552214)) lt!552251)))

(declare-fun b!1579537 () Bool)

(assert (=> b!1579537 (= e!1014693 (= (_2!9816 lt!552251) (seqFromList!1868 lt!552214)))))

(declare-fun b!1579538 () Bool)

(declare-fun res!704156 () Bool)

(assert (=> b!1579538 (=> (not res!704156) (not e!1014694))))

(declare-datatypes ((tuple2!16834 0))(
  ( (tuple2!16835 (_1!9819 List!17432) (_2!9819 List!17430)) )
))
(declare-fun lexList!777 (LexerInterface!2688 List!17431 List!17430) tuple2!16834)

(assert (=> b!1579538 (= res!704156 (= (list!6708 (_1!9816 lt!552251)) (_1!9819 (lexList!777 thiss!17113 rules!1846 (list!6707 (seqFromList!1868 lt!552214))))))))

(declare-fun b!1579539 () Bool)

(assert (=> b!1579539 (= e!1014693 e!1014695)))

(declare-fun res!704155 () Bool)

(declare-fun size!13965 (BalanceConc!11476) Int)

(assert (=> b!1579539 (= res!704155 (< (size!13965 (_2!9816 lt!552251)) (size!13965 (seqFromList!1868 lt!552214))))))

(assert (=> b!1579539 (=> (not res!704155) (not e!1014695))))

(declare-fun b!1579540 () Bool)

(assert (=> b!1579540 (= e!1014694 (= (list!6707 (_2!9816 lt!552251)) (_2!9819 (lexList!777 thiss!17113 rules!1846 (list!6707 (seqFromList!1868 lt!552214))))))))

(assert (= (and d!469180 c!255966) b!1579539))

(assert (= (and d!469180 (not c!255966)) b!1579537))

(assert (= (and b!1579539 res!704155) b!1579536))

(assert (= (and d!469180 res!704154) b!1579538))

(assert (= (and b!1579538 res!704156) b!1579540))

(declare-fun m!1862215 () Bool)

(assert (=> b!1579538 m!1862215))

(assert (=> b!1579538 m!1862051))

(declare-fun m!1862217 () Bool)

(assert (=> b!1579538 m!1862217))

(assert (=> b!1579538 m!1862217))

(declare-fun m!1862219 () Bool)

(assert (=> b!1579538 m!1862219))

(declare-fun m!1862221 () Bool)

(assert (=> b!1579536 m!1862221))

(declare-fun m!1862223 () Bool)

(assert (=> b!1579540 m!1862223))

(assert (=> b!1579540 m!1862051))

(assert (=> b!1579540 m!1862217))

(assert (=> b!1579540 m!1862217))

(assert (=> b!1579540 m!1862219))

(declare-fun m!1862225 () Bool)

(assert (=> b!1579539 m!1862225))

(assert (=> b!1579539 m!1862051))

(declare-fun m!1862227 () Bool)

(assert (=> b!1579539 m!1862227))

(declare-fun m!1862229 () Bool)

(assert (=> d!469180 m!1862229))

(assert (=> d!469180 m!1862051))

(assert (=> d!469180 m!1862051))

(declare-fun m!1862231 () Bool)

(assert (=> d!469180 m!1862231))

(assert (=> b!1579474 d!469180))

(declare-fun d!469196 () Bool)

(declare-fun fromListB!790 (List!17430) BalanceConc!11476)

(assert (=> d!469196 (= (seqFromList!1868 lt!552214) (fromListB!790 lt!552214))))

(declare-fun bs!390816 () Bool)

(assert (= bs!390816 d!469196))

(declare-fun m!1862235 () Bool)

(assert (=> bs!390816 m!1862235))

(assert (=> b!1579474 d!469196))

(declare-fun d!469200 () Bool)

(declare-fun prefixMatchZipperSequence!402 (Regex!4387 BalanceConc!11476) Bool)

(declare-fun rulesRegex!449 (LexerInterface!2688 List!17431) Regex!4387)

(declare-fun ++!4509 (BalanceConc!11476 BalanceConc!11476) BalanceConc!11476)

(declare-fun singletonSeq!1397 (C!8948) BalanceConc!11476)

(declare-fun apply!4201 (BalanceConc!11476 Int) C!8948)

(assert (=> d!469200 (= (separableTokensPredicate!630 thiss!17113 (h!22763 tokens!457) (h!22763 (t!143609 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!402 (rulesRegex!449 thiss!17113 rules!1846) (++!4509 (charsOf!1708 (h!22763 tokens!457)) (singletonSeq!1397 (apply!4201 (charsOf!1708 (h!22763 (t!143609 tokens!457))) 0))))))))

(declare-fun bs!390817 () Bool)

(assert (= bs!390817 d!469200))

(declare-fun m!1862237 () Bool)

(assert (=> bs!390817 m!1862237))

(assert (=> bs!390817 m!1862237))

(declare-fun m!1862239 () Bool)

(assert (=> bs!390817 m!1862239))

(assert (=> bs!390817 m!1862239))

(declare-fun m!1862241 () Bool)

(assert (=> bs!390817 m!1862241))

(declare-fun m!1862243 () Bool)

(assert (=> bs!390817 m!1862243))

(declare-fun m!1862245 () Bool)

(assert (=> bs!390817 m!1862245))

(declare-fun m!1862247 () Bool)

(assert (=> bs!390817 m!1862247))

(assert (=> bs!390817 m!1862091))

(assert (=> bs!390817 m!1862241))

(assert (=> bs!390817 m!1862245))

(assert (=> bs!390817 m!1862243))

(assert (=> bs!390817 m!1862091))

(assert (=> b!1579464 d!469200))

(declare-fun d!469202 () Bool)

(declare-fun isEmpty!10371 (Option!3110) Bool)

(assert (=> d!469202 (= (isDefined!2489 lt!552223) (not (isEmpty!10371 lt!552223)))))

(declare-fun bs!390818 () Bool)

(assert (= bs!390818 d!469202))

(declare-fun m!1862249 () Bool)

(assert (=> bs!390818 m!1862249))

(assert (=> b!1579475 d!469202))

(declare-fun b!1579549 () Bool)

(declare-fun res!704161 () Bool)

(declare-fun e!1014700 () Bool)

(assert (=> b!1579549 (=> (not res!704161) (not e!1014700))))

(declare-fun lt!552301 () Token!5684)

(declare-fun matchR!1908 (Regex!4387 List!17430) Bool)

(declare-datatypes ((Option!3112 0))(
  ( (None!3111) (Some!3111 (v!23948 Rule!5918)) )
))
(declare-fun get!4958 (Option!3112) Rule!5918)

(declare-fun getRuleFromTag!232 (LexerInterface!2688 List!17431 String!20077) Option!3112)

(assert (=> b!1579549 (= res!704161 (matchR!1908 (regex!3059 (get!4958 (getRuleFromTag!232 thiss!17113 rules!1846 (tag!3325 (rule!4855 lt!552301))))) (list!6707 (charsOf!1708 lt!552301))))))

(declare-fun b!1579551 () Bool)

(declare-fun e!1014701 () Unit!26971)

(declare-fun Unit!26992 () Unit!26971)

(assert (=> b!1579551 (= e!1014701 Unit!26992)))

(declare-fun lt!552297 () List!17430)

(assert (=> b!1579551 (= lt!552297 (++!4507 lt!552214 lt!552222))))

(declare-fun lt!552293 () Unit!26971)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!126 (LexerInterface!2688 Rule!5918 List!17431 List!17430) Unit!26971)

(assert (=> b!1579551 (= lt!552293 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!126 thiss!17113 (rule!4855 lt!552301) rules!1846 lt!552297))))

(declare-fun maxPrefixOneRule!723 (LexerInterface!2688 Rule!5918 List!17430) Option!3110)

(assert (=> b!1579551 (isEmpty!10371 (maxPrefixOneRule!723 thiss!17113 (rule!4855 lt!552301) lt!552297))))

(declare-fun lt!552296 () Unit!26971)

(assert (=> b!1579551 (= lt!552296 lt!552293)))

(declare-fun lt!552295 () List!17430)

(assert (=> b!1579551 (= lt!552295 (list!6707 (charsOf!1708 lt!552301)))))

(declare-fun lt!552300 () Unit!26971)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!122 (LexerInterface!2688 Rule!5918 List!17430 List!17430) Unit!26971)

(assert (=> b!1579551 (= lt!552300 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!122 thiss!17113 (rule!4855 lt!552301) lt!552295 (++!4507 lt!552214 lt!552222)))))

(assert (=> b!1579551 (not (matchR!1908 (regex!3059 (rule!4855 lt!552301)) lt!552295))))

(declare-fun lt!552299 () Unit!26971)

(assert (=> b!1579551 (= lt!552299 lt!552300)))

(assert (=> b!1579551 false))

(declare-fun b!1579550 () Bool)

(assert (=> b!1579550 (= e!1014700 (= (rule!4855 lt!552301) (get!4958 (getRuleFromTag!232 thiss!17113 rules!1846 (tag!3325 (rule!4855 lt!552301))))))))

(declare-fun d!469204 () Bool)

(assert (=> d!469204 (isDefined!2489 (maxPrefix!1252 thiss!17113 rules!1846 (++!4507 lt!552214 lt!552222)))))

(declare-fun lt!552290 () Unit!26971)

(assert (=> d!469204 (= lt!552290 e!1014701)))

(declare-fun c!255969 () Bool)

(assert (=> d!469204 (= c!255969 (isEmpty!10371 (maxPrefix!1252 thiss!17113 rules!1846 (++!4507 lt!552214 lt!552222))))))

(declare-fun lt!552286 () Unit!26971)

(declare-fun lt!552289 () Unit!26971)

(assert (=> d!469204 (= lt!552286 lt!552289)))

(assert (=> d!469204 e!1014700))

(declare-fun res!704162 () Bool)

(assert (=> d!469204 (=> (not res!704162) (not e!1014700))))

(declare-fun isDefined!2491 (Option!3112) Bool)

(assert (=> d!469204 (= res!704162 (isDefined!2491 (getRuleFromTag!232 thiss!17113 rules!1846 (tag!3325 (rule!4855 lt!552301)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!232 (LexerInterface!2688 List!17431 List!17430 Token!5684) Unit!26971)

(assert (=> d!469204 (= lt!552289 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!232 thiss!17113 rules!1846 lt!552214 lt!552301))))

(declare-fun lt!552294 () Unit!26971)

(declare-fun lt!552302 () Unit!26971)

(assert (=> d!469204 (= lt!552294 lt!552302)))

(declare-fun lt!552287 () List!17430)

(assert (=> d!469204 (isPrefix!1319 lt!552287 (++!4507 lt!552214 lt!552222))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!118 (List!17430 List!17430 List!17430) Unit!26971)

(assert (=> d!469204 (= lt!552302 (lemmaPrefixStaysPrefixWhenAddingToSuffix!118 lt!552287 lt!552214 lt!552222))))

(assert (=> d!469204 (= lt!552287 (list!6707 (charsOf!1708 lt!552301)))))

(declare-fun lt!552288 () Unit!26971)

(declare-fun lt!552292 () Unit!26971)

(assert (=> d!469204 (= lt!552288 lt!552292)))

(declare-fun lt!552291 () List!17430)

(declare-fun lt!552298 () List!17430)

(assert (=> d!469204 (isPrefix!1319 lt!552291 (++!4507 lt!552291 lt!552298))))

(assert (=> d!469204 (= lt!552292 (lemmaConcatTwoListThenFirstIsPrefix!844 lt!552291 lt!552298))))

(declare-fun get!4959 (Option!3110) tuple2!16830)

(assert (=> d!469204 (= lt!552298 (_2!9817 (get!4959 (maxPrefix!1252 thiss!17113 rules!1846 lt!552214))))))

(assert (=> d!469204 (= lt!552291 (list!6707 (charsOf!1708 lt!552301)))))

(declare-fun head!3181 (List!17432) Token!5684)

(assert (=> d!469204 (= lt!552301 (head!3181 (list!6708 (_1!9816 (lex!1172 thiss!17113 rules!1846 (seqFromList!1868 lt!552214))))))))

(assert (=> d!469204 (not (isEmpty!10362 rules!1846))))

(assert (=> d!469204 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!262 thiss!17113 rules!1846 lt!552214 lt!552222) lt!552290)))

(declare-fun b!1579552 () Bool)

(declare-fun Unit!26993 () Unit!26971)

(assert (=> b!1579552 (= e!1014701 Unit!26993)))

(assert (= (and d!469204 res!704162) b!1579549))

(assert (= (and b!1579549 res!704161) b!1579550))

(assert (= (and d!469204 c!255969) b!1579551))

(assert (= (and d!469204 (not c!255969)) b!1579552))

(declare-fun m!1862251 () Bool)

(assert (=> b!1579549 m!1862251))

(declare-fun m!1862253 () Bool)

(assert (=> b!1579549 m!1862253))

(assert (=> b!1579549 m!1862251))

(declare-fun m!1862255 () Bool)

(assert (=> b!1579549 m!1862255))

(assert (=> b!1579549 m!1862253))

(declare-fun m!1862257 () Bool)

(assert (=> b!1579549 m!1862257))

(assert (=> b!1579549 m!1862255))

(declare-fun m!1862259 () Bool)

(assert (=> b!1579549 m!1862259))

(assert (=> b!1579551 m!1862251))

(assert (=> b!1579551 m!1862253))

(declare-fun m!1862261 () Bool)

(assert (=> b!1579551 m!1862261))

(declare-fun m!1862263 () Bool)

(assert (=> b!1579551 m!1862263))

(declare-fun m!1862265 () Bool)

(assert (=> b!1579551 m!1862265))

(assert (=> b!1579551 m!1862251))

(assert (=> b!1579551 m!1862089))

(declare-fun m!1862267 () Bool)

(assert (=> b!1579551 m!1862267))

(declare-fun m!1862269 () Bool)

(assert (=> b!1579551 m!1862269))

(assert (=> b!1579551 m!1862089))

(assert (=> b!1579551 m!1862263))

(assert (=> b!1579550 m!1862255))

(assert (=> b!1579550 m!1862255))

(assert (=> b!1579550 m!1862259))

(assert (=> d!469204 m!1862251))

(assert (=> d!469204 m!1862253))

(assert (=> d!469204 m!1862051))

(assert (=> d!469204 m!1862089))

(declare-fun m!1862271 () Bool)

(assert (=> d!469204 m!1862271))

(declare-fun m!1862273 () Bool)

(assert (=> d!469204 m!1862273))

(assert (=> d!469204 m!1862251))

(assert (=> d!469204 m!1862059))

(declare-fun m!1862275 () Bool)

(assert (=> d!469204 m!1862275))

(assert (=> d!469204 m!1862255))

(assert (=> d!469204 m!1862255))

(declare-fun m!1862277 () Bool)

(assert (=> d!469204 m!1862277))

(declare-fun m!1862279 () Bool)

(assert (=> d!469204 m!1862279))

(assert (=> d!469204 m!1862275))

(declare-fun m!1862281 () Bool)

(assert (=> d!469204 m!1862281))

(assert (=> d!469204 m!1862143))

(declare-fun m!1862283 () Bool)

(assert (=> d!469204 m!1862283))

(declare-fun m!1862285 () Bool)

(assert (=> d!469204 m!1862285))

(assert (=> d!469204 m!1862143))

(declare-fun m!1862287 () Bool)

(assert (=> d!469204 m!1862287))

(assert (=> d!469204 m!1862283))

(declare-fun m!1862289 () Bool)

(assert (=> d!469204 m!1862289))

(assert (=> d!469204 m!1862089))

(assert (=> d!469204 m!1862089))

(declare-fun m!1862291 () Bool)

(assert (=> d!469204 m!1862291))

(assert (=> d!469204 m!1862291))

(declare-fun m!1862293 () Bool)

(assert (=> d!469204 m!1862293))

(assert (=> d!469204 m!1862051))

(assert (=> d!469204 m!1862053))

(assert (=> d!469204 m!1862291))

(declare-fun m!1862295 () Bool)

(assert (=> d!469204 m!1862295))

(assert (=> b!1579475 d!469204))

(declare-fun b!1579563 () Bool)

(declare-fun res!704165 () Bool)

(declare-fun e!1014708 () Bool)

(assert (=> b!1579563 (=> res!704165 e!1014708)))

(assert (=> b!1579563 (= res!704165 (not ((_ is IntegerValue!9449) (value!96854 (h!22763 tokens!457)))))))

(declare-fun e!1014709 () Bool)

(assert (=> b!1579563 (= e!1014709 e!1014708)))

(declare-fun d!469206 () Bool)

(declare-fun c!255974 () Bool)

(assert (=> d!469206 (= c!255974 ((_ is IntegerValue!9447) (value!96854 (h!22763 tokens!457))))))

(declare-fun e!1014710 () Bool)

(assert (=> d!469206 (= (inv!21 (value!96854 (h!22763 tokens!457))) e!1014710)))

(declare-fun b!1579564 () Bool)

(declare-fun inv!15 (TokenValue!3149) Bool)

(assert (=> b!1579564 (= e!1014708 (inv!15 (value!96854 (h!22763 tokens!457))))))

(declare-fun b!1579565 () Bool)

(declare-fun inv!17 (TokenValue!3149) Bool)

(assert (=> b!1579565 (= e!1014709 (inv!17 (value!96854 (h!22763 tokens!457))))))

(declare-fun b!1579566 () Bool)

(declare-fun inv!16 (TokenValue!3149) Bool)

(assert (=> b!1579566 (= e!1014710 (inv!16 (value!96854 (h!22763 tokens!457))))))

(declare-fun b!1579567 () Bool)

(assert (=> b!1579567 (= e!1014710 e!1014709)))

(declare-fun c!255975 () Bool)

(assert (=> b!1579567 (= c!255975 ((_ is IntegerValue!9448) (value!96854 (h!22763 tokens!457))))))

(assert (= (and d!469206 c!255974) b!1579566))

(assert (= (and d!469206 (not c!255974)) b!1579567))

(assert (= (and b!1579567 c!255975) b!1579565))

(assert (= (and b!1579567 (not c!255975)) b!1579563))

(assert (= (and b!1579563 (not res!704165)) b!1579564))

(declare-fun m!1862297 () Bool)

(assert (=> b!1579564 m!1862297))

(declare-fun m!1862299 () Bool)

(assert (=> b!1579565 m!1862299))

(declare-fun m!1862301 () Bool)

(assert (=> b!1579566 m!1862301))

(assert (=> b!1579465 d!469206))

(declare-fun d!469208 () Bool)

(declare-fun lt!552395 () Bool)

(declare-fun e!1014734 () Bool)

(assert (=> d!469208 (= lt!552395 e!1014734)))

(declare-fun res!704191 () Bool)

(assert (=> d!469208 (=> (not res!704191) (not e!1014734))))

(assert (=> d!469208 (= res!704191 (= (list!6708 (_1!9816 (lex!1172 thiss!17113 rules!1846 (print!1219 thiss!17113 (singletonSeq!1395 (h!22763 tokens!457)))))) (list!6708 (singletonSeq!1395 (h!22763 tokens!457)))))))

(declare-fun e!1014733 () Bool)

(assert (=> d!469208 (= lt!552395 e!1014733)))

(declare-fun res!704190 () Bool)

(assert (=> d!469208 (=> (not res!704190) (not e!1014733))))

(declare-fun lt!552396 () tuple2!16828)

(assert (=> d!469208 (= res!704190 (= (size!13964 (_1!9816 lt!552396)) 1))))

(assert (=> d!469208 (= lt!552396 (lex!1172 thiss!17113 rules!1846 (print!1219 thiss!17113 (singletonSeq!1395 (h!22763 tokens!457)))))))

(assert (=> d!469208 (not (isEmpty!10362 rules!1846))))

(assert (=> d!469208 (= (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 tokens!457)) lt!552395)))

(declare-fun b!1579600 () Bool)

(declare-fun res!704192 () Bool)

(assert (=> b!1579600 (=> (not res!704192) (not e!1014733))))

(declare-fun apply!4203 (BalanceConc!11478 Int) Token!5684)

(assert (=> b!1579600 (= res!704192 (= (apply!4203 (_1!9816 lt!552396) 0) (h!22763 tokens!457)))))

(declare-fun b!1579601 () Bool)

(declare-fun isEmpty!10372 (BalanceConc!11476) Bool)

(assert (=> b!1579601 (= e!1014733 (isEmpty!10372 (_2!9816 lt!552396)))))

(declare-fun b!1579602 () Bool)

(assert (=> b!1579602 (= e!1014734 (isEmpty!10372 (_2!9816 (lex!1172 thiss!17113 rules!1846 (print!1219 thiss!17113 (singletonSeq!1395 (h!22763 tokens!457)))))))))

(assert (= (and d!469208 res!704190) b!1579600))

(assert (= (and b!1579600 res!704192) b!1579601))

(assert (= (and d!469208 res!704191) b!1579602))

(assert (=> d!469208 m!1862071))

(declare-fun m!1862417 () Bool)

(assert (=> d!469208 m!1862417))

(assert (=> d!469208 m!1862417))

(declare-fun m!1862419 () Bool)

(assert (=> d!469208 m!1862419))

(assert (=> d!469208 m!1862071))

(assert (=> d!469208 m!1862059))

(declare-fun m!1862421 () Bool)

(assert (=> d!469208 m!1862421))

(assert (=> d!469208 m!1862071))

(declare-fun m!1862423 () Bool)

(assert (=> d!469208 m!1862423))

(declare-fun m!1862425 () Bool)

(assert (=> d!469208 m!1862425))

(declare-fun m!1862427 () Bool)

(assert (=> b!1579600 m!1862427))

(declare-fun m!1862429 () Bool)

(assert (=> b!1579601 m!1862429))

(assert (=> b!1579602 m!1862071))

(assert (=> b!1579602 m!1862071))

(assert (=> b!1579602 m!1862417))

(assert (=> b!1579602 m!1862417))

(assert (=> b!1579602 m!1862419))

(declare-fun m!1862431 () Bool)

(assert (=> b!1579602 m!1862431))

(assert (=> b!1579472 d!469208))

(declare-fun d!469222 () Bool)

(declare-fun res!704203 () Bool)

(declare-fun e!1014740 () Bool)

(assert (=> d!469222 (=> (not res!704203) (not e!1014740))))

(declare-fun isEmpty!10373 (List!17430) Bool)

(assert (=> d!469222 (= res!704203 (not (isEmpty!10373 (originalCharacters!3873 (h!22763 tokens!457)))))))

(assert (=> d!469222 (= (inv!22772 (h!22763 tokens!457)) e!1014740)))

(declare-fun b!1579613 () Bool)

(declare-fun res!704204 () Bool)

(assert (=> b!1579613 (=> (not res!704204) (not e!1014740))))

(declare-fun dynLambda!7681 (Int TokenValue!3149) BalanceConc!11476)

(assert (=> b!1579613 (= res!704204 (= (originalCharacters!3873 (h!22763 tokens!457)) (list!6707 (dynLambda!7681 (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) (value!96854 (h!22763 tokens!457))))))))

(declare-fun b!1579614 () Bool)

(declare-fun size!13966 (List!17430) Int)

(assert (=> b!1579614 (= e!1014740 (= (size!13960 (h!22763 tokens!457)) (size!13966 (originalCharacters!3873 (h!22763 tokens!457)))))))

(assert (= (and d!469222 res!704203) b!1579613))

(assert (= (and b!1579613 res!704204) b!1579614))

(declare-fun b_lambda!49701 () Bool)

(assert (=> (not b_lambda!49701) (not b!1579613)))

(declare-fun tb!88827 () Bool)

(declare-fun t!143617 () Bool)

(assert (=> (and b!1579461 (= (toChars!4321 (transformation!3059 (h!22762 rules!1846))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457))))) t!143617) tb!88827))

(declare-fun b!1579619 () Bool)

(declare-fun e!1014743 () Bool)

(declare-fun tp!465080 () Bool)

(declare-fun inv!22776 (Conc!5766) Bool)

(assert (=> b!1579619 (= e!1014743 (and (inv!22776 (c!255955 (dynLambda!7681 (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) (value!96854 (h!22763 tokens!457))))) tp!465080))))

(declare-fun result!107480 () Bool)

(declare-fun inv!22777 (BalanceConc!11476) Bool)

(assert (=> tb!88827 (= result!107480 (and (inv!22777 (dynLambda!7681 (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) (value!96854 (h!22763 tokens!457)))) e!1014743))))

(assert (= tb!88827 b!1579619))

(declare-fun m!1862439 () Bool)

(assert (=> b!1579619 m!1862439))

(declare-fun m!1862441 () Bool)

(assert (=> tb!88827 m!1862441))

(assert (=> b!1579613 t!143617))

(declare-fun b_and!110669 () Bool)

(assert (= b_and!110655 (and (=> t!143617 result!107480) b_and!110669)))

(declare-fun t!143619 () Bool)

(declare-fun tb!88829 () Bool)

(assert (=> (and b!1579477 (= (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457))))) t!143619) tb!88829))

(declare-fun result!107484 () Bool)

(assert (= result!107484 result!107480))

(assert (=> b!1579613 t!143619))

(declare-fun b_and!110671 () Bool)

(assert (= b_and!110659 (and (=> t!143619 result!107484) b_and!110671)))

(declare-fun m!1862443 () Bool)

(assert (=> d!469222 m!1862443))

(declare-fun m!1862445 () Bool)

(assert (=> b!1579613 m!1862445))

(assert (=> b!1579613 m!1862445))

(declare-fun m!1862447 () Bool)

(assert (=> b!1579613 m!1862447))

(declare-fun m!1862449 () Bool)

(assert (=> b!1579614 m!1862449))

(assert (=> b!1579462 d!469222))

(declare-fun d!469226 () Bool)

(assert (=> d!469226 (= (isEmpty!10362 rules!1846) ((_ is Nil!17361) rules!1846))))

(assert (=> b!1579473 d!469226))

(declare-fun d!469228 () Bool)

(declare-fun lt!552399 () BalanceConc!11476)

(assert (=> d!469228 (= (list!6707 lt!552399) (printList!803 thiss!17113 (list!6708 (seqFromList!1867 tokens!457))))))

(assert (=> d!469228 (= lt!552399 (printTailRec!741 thiss!17113 (seqFromList!1867 tokens!457) 0 (BalanceConc!11477 Empty!5766)))))

(assert (=> d!469228 (= (print!1219 thiss!17113 (seqFromList!1867 tokens!457)) lt!552399)))

(declare-fun bs!390822 () Bool)

(assert (= bs!390822 d!469228))

(declare-fun m!1862451 () Bool)

(assert (=> bs!390822 m!1862451))

(assert (=> bs!390822 m!1862085))

(declare-fun m!1862453 () Bool)

(assert (=> bs!390822 m!1862453))

(assert (=> bs!390822 m!1862453))

(declare-fun m!1862455 () Bool)

(assert (=> bs!390822 m!1862455))

(assert (=> bs!390822 m!1862085))

(declare-fun m!1862457 () Bool)

(assert (=> bs!390822 m!1862457))

(assert (=> b!1579463 d!469228))

(declare-fun b!1579629 () Bool)

(declare-fun e!1014749 () List!17430)

(assert (=> b!1579629 (= e!1014749 (Cons!17360 (h!22761 lt!552214) (++!4507 (t!143607 lt!552214) lt!552222)))))

(declare-fun lt!552402 () List!17430)

(declare-fun e!1014748 () Bool)

(declare-fun b!1579631 () Bool)

(assert (=> b!1579631 (= e!1014748 (or (not (= lt!552222 Nil!17360)) (= lt!552402 lt!552214)))))

(declare-fun b!1579628 () Bool)

(assert (=> b!1579628 (= e!1014749 lt!552222)))

(declare-fun d!469230 () Bool)

(assert (=> d!469230 e!1014748))

(declare-fun res!704210 () Bool)

(assert (=> d!469230 (=> (not res!704210) (not e!1014748))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2383 (List!17430) (InoxSet C!8948))

(assert (=> d!469230 (= res!704210 (= (content!2383 lt!552402) ((_ map or) (content!2383 lt!552214) (content!2383 lt!552222))))))

(assert (=> d!469230 (= lt!552402 e!1014749)))

(declare-fun c!255982 () Bool)

(assert (=> d!469230 (= c!255982 ((_ is Nil!17360) lt!552214))))

(assert (=> d!469230 (= (++!4507 lt!552214 lt!552222) lt!552402)))

(declare-fun b!1579630 () Bool)

(declare-fun res!704209 () Bool)

(assert (=> b!1579630 (=> (not res!704209) (not e!1014748))))

(assert (=> b!1579630 (= res!704209 (= (size!13966 lt!552402) (+ (size!13966 lt!552214) (size!13966 lt!552222))))))

(assert (= (and d!469230 c!255982) b!1579628))

(assert (= (and d!469230 (not c!255982)) b!1579629))

(assert (= (and d!469230 res!704210) b!1579630))

(assert (= (and b!1579630 res!704209) b!1579631))

(declare-fun m!1862459 () Bool)

(assert (=> b!1579629 m!1862459))

(declare-fun m!1862461 () Bool)

(assert (=> d!469230 m!1862461))

(declare-fun m!1862463 () Bool)

(assert (=> d!469230 m!1862463))

(declare-fun m!1862465 () Bool)

(assert (=> d!469230 m!1862465))

(declare-fun m!1862467 () Bool)

(assert (=> b!1579630 m!1862467))

(declare-fun m!1862469 () Bool)

(assert (=> b!1579630 m!1862469))

(declare-fun m!1862471 () Bool)

(assert (=> b!1579630 m!1862471))

(assert (=> b!1579463 d!469230))

(declare-fun b!1579632 () Bool)

(declare-fun e!1014752 () Bool)

(declare-fun lt!552403 () tuple2!16828)

(assert (=> b!1579632 (= e!1014752 (not (isEmpty!10363 (_1!9816 lt!552403))))))

(declare-fun d!469232 () Bool)

(declare-fun e!1014751 () Bool)

(assert (=> d!469232 e!1014751))

(declare-fun res!704211 () Bool)

(assert (=> d!469232 (=> (not res!704211) (not e!1014751))))

(declare-fun e!1014750 () Bool)

(assert (=> d!469232 (= res!704211 e!1014750)))

(declare-fun c!255983 () Bool)

(assert (=> d!469232 (= c!255983 (> (size!13964 (_1!9816 lt!552403)) 0))))

(assert (=> d!469232 (= lt!552403 (lexTailRecV2!500 thiss!17113 rules!1846 lt!552221 (BalanceConc!11477 Empty!5766) lt!552221 (BalanceConc!11479 Empty!5767)))))

(assert (=> d!469232 (= (lex!1172 thiss!17113 rules!1846 lt!552221) lt!552403)))

(declare-fun b!1579633 () Bool)

(assert (=> b!1579633 (= e!1014750 (= (_2!9816 lt!552403) lt!552221))))

(declare-fun b!1579634 () Bool)

(declare-fun res!704213 () Bool)

(assert (=> b!1579634 (=> (not res!704213) (not e!1014751))))

(assert (=> b!1579634 (= res!704213 (= (list!6708 (_1!9816 lt!552403)) (_1!9819 (lexList!777 thiss!17113 rules!1846 (list!6707 lt!552221)))))))

(declare-fun b!1579635 () Bool)

(assert (=> b!1579635 (= e!1014750 e!1014752)))

(declare-fun res!704212 () Bool)

(assert (=> b!1579635 (= res!704212 (< (size!13965 (_2!9816 lt!552403)) (size!13965 lt!552221)))))

(assert (=> b!1579635 (=> (not res!704212) (not e!1014752))))

(declare-fun b!1579636 () Bool)

(assert (=> b!1579636 (= e!1014751 (= (list!6707 (_2!9816 lt!552403)) (_2!9819 (lexList!777 thiss!17113 rules!1846 (list!6707 lt!552221)))))))

(assert (= (and d!469232 c!255983) b!1579635))

(assert (= (and d!469232 (not c!255983)) b!1579633))

(assert (= (and b!1579635 res!704212) b!1579632))

(assert (= (and d!469232 res!704211) b!1579634))

(assert (= (and b!1579634 res!704213) b!1579636))

(declare-fun m!1862473 () Bool)

(assert (=> b!1579634 m!1862473))

(assert (=> b!1579634 m!1862081))

(assert (=> b!1579634 m!1862081))

(declare-fun m!1862475 () Bool)

(assert (=> b!1579634 m!1862475))

(declare-fun m!1862477 () Bool)

(assert (=> b!1579632 m!1862477))

(declare-fun m!1862479 () Bool)

(assert (=> b!1579636 m!1862479))

(assert (=> b!1579636 m!1862081))

(assert (=> b!1579636 m!1862081))

(assert (=> b!1579636 m!1862475))

(declare-fun m!1862481 () Bool)

(assert (=> b!1579635 m!1862481))

(declare-fun m!1862483 () Bool)

(assert (=> b!1579635 m!1862483))

(declare-fun m!1862485 () Bool)

(assert (=> d!469232 m!1862485))

(declare-fun m!1862487 () Bool)

(assert (=> d!469232 m!1862487))

(assert (=> b!1579463 d!469232))

(declare-fun d!469234 () Bool)

(declare-fun list!6711 (Conc!5766) List!17430)

(assert (=> d!469234 (= (list!6707 lt!552210) (list!6711 (c!255955 lt!552210)))))

(declare-fun bs!390823 () Bool)

(assert (= bs!390823 d!469234))

(declare-fun m!1862489 () Bool)

(assert (=> bs!390823 m!1862489))

(assert (=> b!1579463 d!469234))

(declare-fun d!469236 () Bool)

(declare-fun fromListB!791 (List!17432) BalanceConc!11478)

(assert (=> d!469236 (= (seqFromList!1867 tokens!457) (fromListB!791 tokens!457))))

(declare-fun bs!390824 () Bool)

(assert (= bs!390824 d!469236))

(declare-fun m!1862491 () Bool)

(assert (=> bs!390824 m!1862491))

(assert (=> b!1579463 d!469236))

(declare-fun d!469238 () Bool)

(declare-fun lt!552406 () BalanceConc!11476)

(assert (=> d!469238 (= (list!6707 lt!552406) (originalCharacters!3873 (h!22763 tokens!457)))))

(assert (=> d!469238 (= lt!552406 (dynLambda!7681 (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) (value!96854 (h!22763 tokens!457))))))

(assert (=> d!469238 (= (charsOf!1708 (h!22763 tokens!457)) lt!552406)))

(declare-fun b_lambda!49703 () Bool)

(assert (=> (not b_lambda!49703) (not d!469238)))

(assert (=> d!469238 t!143617))

(declare-fun b_and!110673 () Bool)

(assert (= b_and!110669 (and (=> t!143617 result!107480) b_and!110673)))

(assert (=> d!469238 t!143619))

(declare-fun b_and!110675 () Bool)

(assert (= b_and!110671 (and (=> t!143619 result!107484) b_and!110675)))

(declare-fun m!1862493 () Bool)

(assert (=> d!469238 m!1862493))

(assert (=> d!469238 m!1862445))

(assert (=> b!1579463 d!469238))

(declare-fun d!469240 () Bool)

(assert (=> d!469240 (= (seqFromList!1867 (t!143609 tokens!457)) (fromListB!791 (t!143609 tokens!457)))))

(declare-fun bs!390825 () Bool)

(assert (= bs!390825 d!469240))

(declare-fun m!1862495 () Bool)

(assert (=> bs!390825 m!1862495))

(assert (=> b!1579463 d!469240))

(declare-fun d!469242 () Bool)

(assert (=> d!469242 (= (list!6707 (charsOf!1708 (h!22763 tokens!457))) (list!6711 (c!255955 (charsOf!1708 (h!22763 tokens!457)))))))

(declare-fun bs!390826 () Bool)

(assert (= bs!390826 d!469242))

(declare-fun m!1862497 () Bool)

(assert (=> bs!390826 m!1862497))

(assert (=> b!1579463 d!469242))

(declare-fun d!469244 () Bool)

(assert (=> d!469244 (= (list!6707 lt!552221) (list!6711 (c!255955 lt!552221)))))

(declare-fun bs!390827 () Bool)

(assert (= bs!390827 d!469244))

(declare-fun m!1862499 () Bool)

(assert (=> bs!390827 m!1862499))

(assert (=> b!1579463 d!469244))

(declare-fun d!469246 () Bool)

(declare-fun lt!552407 () BalanceConc!11476)

(assert (=> d!469246 (= (list!6707 lt!552407) (printList!803 thiss!17113 (list!6708 lt!552226)))))

(assert (=> d!469246 (= lt!552407 (printTailRec!741 thiss!17113 lt!552226 0 (BalanceConc!11477 Empty!5766)))))

(assert (=> d!469246 (= (print!1219 thiss!17113 lt!552226) lt!552407)))

(declare-fun bs!390828 () Bool)

(assert (= bs!390828 d!469246))

(declare-fun m!1862501 () Bool)

(assert (=> bs!390828 m!1862501))

(assert (=> bs!390828 m!1862037))

(assert (=> bs!390828 m!1862037))

(declare-fun m!1862503 () Bool)

(assert (=> bs!390828 m!1862503))

(declare-fun m!1862505 () Bool)

(assert (=> bs!390828 m!1862505))

(assert (=> b!1579463 d!469246))

(declare-fun b!1579737 () Bool)

(declare-fun e!1014814 () Bool)

(assert (=> b!1579737 (= e!1014814 true)))

(declare-fun b!1579736 () Bool)

(declare-fun e!1014813 () Bool)

(assert (=> b!1579736 (= e!1014813 e!1014814)))

(declare-fun b!1579735 () Bool)

(declare-fun e!1014812 () Bool)

(assert (=> b!1579735 (= e!1014812 e!1014813)))

(declare-fun d!469248 () Bool)

(assert (=> d!469248 e!1014812))

(assert (= b!1579736 b!1579737))

(assert (= b!1579735 b!1579736))

(assert (= (and d!469248 ((_ is Cons!17361) rules!1846)) b!1579735))

(declare-fun order!10215 () Int)

(declare-fun order!10213 () Int)

(declare-fun lambda!66445 () Int)

(declare-fun dynLambda!7685 (Int Int) Int)

(declare-fun dynLambda!7686 (Int Int) Int)

(assert (=> b!1579737 (< (dynLambda!7685 order!10213 (toValue!4462 (transformation!3059 (h!22762 rules!1846)))) (dynLambda!7686 order!10215 lambda!66445))))

(declare-fun order!10217 () Int)

(declare-fun dynLambda!7687 (Int Int) Int)

(assert (=> b!1579737 (< (dynLambda!7687 order!10217 (toChars!4321 (transformation!3059 (h!22762 rules!1846)))) (dynLambda!7686 order!10215 lambda!66445))))

(assert (=> d!469248 true))

(declare-fun lt!552524 () Bool)

(declare-fun forall!3988 (List!17432 Int) Bool)

(assert (=> d!469248 (= lt!552524 (forall!3988 tokens!457 lambda!66445))))

(declare-fun e!1014804 () Bool)

(assert (=> d!469248 (= lt!552524 e!1014804)))

(declare-fun res!704266 () Bool)

(assert (=> d!469248 (=> res!704266 e!1014804)))

(assert (=> d!469248 (= res!704266 (not ((_ is Cons!17362) tokens!457)))))

(assert (=> d!469248 (not (isEmpty!10362 rules!1846))))

(assert (=> d!469248 (= (rulesProduceEachTokenIndividuallyList!890 thiss!17113 rules!1846 tokens!457) lt!552524)))

(declare-fun b!1579725 () Bool)

(declare-fun e!1014805 () Bool)

(assert (=> b!1579725 (= e!1014804 e!1014805)))

(declare-fun res!704267 () Bool)

(assert (=> b!1579725 (=> (not res!704267) (not e!1014805))))

(assert (=> b!1579725 (= res!704267 (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 tokens!457)))))

(declare-fun b!1579726 () Bool)

(assert (=> b!1579726 (= e!1014805 (rulesProduceEachTokenIndividuallyList!890 thiss!17113 rules!1846 (t!143609 tokens!457)))))

(assert (= (and d!469248 (not res!704266)) b!1579725))

(assert (= (and b!1579725 res!704267) b!1579726))

(declare-fun m!1862679 () Bool)

(assert (=> d!469248 m!1862679))

(assert (=> d!469248 m!1862059))

(assert (=> b!1579725 m!1862063))

(declare-fun m!1862681 () Bool)

(assert (=> b!1579726 m!1862681))

(assert (=> b!1579469 d!469248))

(declare-fun d!469274 () Bool)

(assert (=> d!469274 (= (inv!22769 (tag!3325 (h!22762 rules!1846))) (= (mod (str.len (value!96853 (tag!3325 (h!22762 rules!1846)))) 2) 0))))

(assert (=> b!1579480 d!469274))

(declare-fun d!469276 () Bool)

(declare-fun res!704270 () Bool)

(declare-fun e!1014817 () Bool)

(assert (=> d!469276 (=> (not res!704270) (not e!1014817))))

(declare-fun semiInverseModEq!1148 (Int Int) Bool)

(assert (=> d!469276 (= res!704270 (semiInverseModEq!1148 (toChars!4321 (transformation!3059 (h!22762 rules!1846))) (toValue!4462 (transformation!3059 (h!22762 rules!1846)))))))

(assert (=> d!469276 (= (inv!22773 (transformation!3059 (h!22762 rules!1846))) e!1014817)))

(declare-fun b!1579742 () Bool)

(declare-fun equivClasses!1089 (Int Int) Bool)

(assert (=> b!1579742 (= e!1014817 (equivClasses!1089 (toChars!4321 (transformation!3059 (h!22762 rules!1846))) (toValue!4462 (transformation!3059 (h!22762 rules!1846)))))))

(assert (= (and d!469276 res!704270) b!1579742))

(declare-fun m!1862683 () Bool)

(assert (=> d!469276 m!1862683))

(declare-fun m!1862685 () Bool)

(assert (=> b!1579742 m!1862685))

(assert (=> b!1579480 d!469276))

(declare-fun d!469278 () Bool)

(declare-fun lt!552525 () Bool)

(declare-fun e!1014819 () Bool)

(assert (=> d!469278 (= lt!552525 e!1014819)))

(declare-fun res!704272 () Bool)

(assert (=> d!469278 (=> (not res!704272) (not e!1014819))))

(assert (=> d!469278 (= res!704272 (= (list!6708 (_1!9816 (lex!1172 thiss!17113 rules!1846 (print!1219 thiss!17113 (singletonSeq!1395 (h!22763 (t!143609 tokens!457))))))) (list!6708 (singletonSeq!1395 (h!22763 (t!143609 tokens!457))))))))

(declare-fun e!1014818 () Bool)

(assert (=> d!469278 (= lt!552525 e!1014818)))

(declare-fun res!704271 () Bool)

(assert (=> d!469278 (=> (not res!704271) (not e!1014818))))

(declare-fun lt!552526 () tuple2!16828)

(assert (=> d!469278 (= res!704271 (= (size!13964 (_1!9816 lt!552526)) 1))))

(assert (=> d!469278 (= lt!552526 (lex!1172 thiss!17113 rules!1846 (print!1219 thiss!17113 (singletonSeq!1395 (h!22763 (t!143609 tokens!457))))))))

(assert (=> d!469278 (not (isEmpty!10362 rules!1846))))

(assert (=> d!469278 (= (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 (t!143609 tokens!457))) lt!552525)))

(declare-fun b!1579743 () Bool)

(declare-fun res!704273 () Bool)

(assert (=> b!1579743 (=> (not res!704273) (not e!1014818))))

(assert (=> b!1579743 (= res!704273 (= (apply!4203 (_1!9816 lt!552526) 0) (h!22763 (t!143609 tokens!457))))))

(declare-fun b!1579744 () Bool)

(assert (=> b!1579744 (= e!1014818 (isEmpty!10372 (_2!9816 lt!552526)))))

(declare-fun b!1579745 () Bool)

(assert (=> b!1579745 (= e!1014819 (isEmpty!10372 (_2!9816 (lex!1172 thiss!17113 rules!1846 (print!1219 thiss!17113 (singletonSeq!1395 (h!22763 (t!143609 tokens!457))))))))))

(assert (= (and d!469278 res!704271) b!1579743))

(assert (= (and b!1579743 res!704273) b!1579744))

(assert (= (and d!469278 res!704272) b!1579745))

(declare-fun m!1862687 () Bool)

(assert (=> d!469278 m!1862687))

(declare-fun m!1862689 () Bool)

(assert (=> d!469278 m!1862689))

(assert (=> d!469278 m!1862689))

(declare-fun m!1862691 () Bool)

(assert (=> d!469278 m!1862691))

(assert (=> d!469278 m!1862687))

(assert (=> d!469278 m!1862059))

(declare-fun m!1862693 () Bool)

(assert (=> d!469278 m!1862693))

(assert (=> d!469278 m!1862687))

(declare-fun m!1862695 () Bool)

(assert (=> d!469278 m!1862695))

(declare-fun m!1862697 () Bool)

(assert (=> d!469278 m!1862697))

(declare-fun m!1862699 () Bool)

(assert (=> b!1579743 m!1862699))

(declare-fun m!1862701 () Bool)

(assert (=> b!1579744 m!1862701))

(assert (=> b!1579745 m!1862687))

(assert (=> b!1579745 m!1862687))

(assert (=> b!1579745 m!1862689))

(assert (=> b!1579745 m!1862689))

(assert (=> b!1579745 m!1862691))

(declare-fun m!1862703 () Bool)

(assert (=> b!1579745 m!1862703))

(assert (=> b!1579470 d!469278))

(declare-fun d!469280 () Bool)

(declare-fun res!704276 () Bool)

(declare-fun e!1014822 () Bool)

(assert (=> d!469280 (=> (not res!704276) (not e!1014822))))

(declare-fun rulesValid!1076 (LexerInterface!2688 List!17431) Bool)

(assert (=> d!469280 (= res!704276 (rulesValid!1076 thiss!17113 rules!1846))))

(assert (=> d!469280 (= (rulesInvariant!2357 thiss!17113 rules!1846) e!1014822)))

(declare-fun b!1579748 () Bool)

(declare-datatypes ((List!17434 0))(
  ( (Nil!17364) (Cons!17364 (h!22765 String!20077) (t!143635 List!17434)) )
))
(declare-fun noDuplicateTag!1076 (LexerInterface!2688 List!17431 List!17434) Bool)

(assert (=> b!1579748 (= e!1014822 (noDuplicateTag!1076 thiss!17113 rules!1846 Nil!17364))))

(assert (= (and d!469280 res!704276) b!1579748))

(declare-fun m!1862705 () Bool)

(assert (=> d!469280 m!1862705))

(declare-fun m!1862707 () Bool)

(assert (=> b!1579748 m!1862707))

(assert (=> b!1579460 d!469280))

(declare-fun d!469282 () Bool)

(declare-fun lt!552527 () BalanceConc!11476)

(assert (=> d!469282 (= (list!6707 lt!552527) (printList!803 thiss!17113 (list!6708 lt!552217)))))

(assert (=> d!469282 (= lt!552527 (printTailRec!741 thiss!17113 lt!552217 0 (BalanceConc!11477 Empty!5766)))))

(assert (=> d!469282 (= (print!1219 thiss!17113 lt!552217) lt!552527)))

(declare-fun bs!390832 () Bool)

(assert (= bs!390832 d!469282))

(declare-fun m!1862709 () Bool)

(assert (=> bs!390832 m!1862709))

(declare-fun m!1862711 () Bool)

(assert (=> bs!390832 m!1862711))

(assert (=> bs!390832 m!1862711))

(declare-fun m!1862713 () Bool)

(assert (=> bs!390832 m!1862713))

(assert (=> bs!390832 m!1862067))

(assert (=> b!1579471 d!469282))

(declare-fun d!469284 () Bool)

(assert (=> d!469284 (= (list!6707 lt!552215) (list!6711 (c!255955 lt!552215)))))

(declare-fun bs!390833 () Bool)

(assert (= bs!390833 d!469284))

(declare-fun m!1862715 () Bool)

(assert (=> bs!390833 m!1862715))

(assert (=> b!1579471 d!469284))

(declare-fun b!1579771 () Bool)

(declare-fun res!704297 () Bool)

(declare-fun e!1014835 () Bool)

(assert (=> b!1579771 (=> (not res!704297) (not e!1014835))))

(declare-fun lt!552540 () Option!3110)

(declare-fun apply!4205 (TokenValueInjection!5958 BalanceConc!11476) TokenValue!3149)

(assert (=> b!1579771 (= res!704297 (= (value!96854 (_1!9817 (get!4959 lt!552540))) (apply!4205 (transformation!3059 (rule!4855 (_1!9817 (get!4959 lt!552540)))) (seqFromList!1868 (originalCharacters!3873 (_1!9817 (get!4959 lt!552540)))))))))

(declare-fun b!1579772 () Bool)

(declare-fun e!1014833 () Option!3110)

(declare-fun call!102686 () Option!3110)

(assert (=> b!1579772 (= e!1014833 call!102686)))

(declare-fun b!1579773 () Bool)

(declare-fun res!704298 () Bool)

(assert (=> b!1579773 (=> (not res!704298) (not e!1014835))))

(assert (=> b!1579773 (= res!704298 (= (list!6707 (charsOf!1708 (_1!9817 (get!4959 lt!552540)))) (originalCharacters!3873 (_1!9817 (get!4959 lt!552540)))))))

(declare-fun b!1579775 () Bool)

(declare-fun res!704296 () Bool)

(assert (=> b!1579775 (=> (not res!704296) (not e!1014835))))

(assert (=> b!1579775 (= res!704296 (< (size!13966 (_2!9817 (get!4959 lt!552540))) (size!13966 lt!552219)))))

(declare-fun b!1579776 () Bool)

(declare-fun contains!3025 (List!17431 Rule!5918) Bool)

(assert (=> b!1579776 (= e!1014835 (contains!3025 rules!1846 (rule!4855 (_1!9817 (get!4959 lt!552540)))))))

(declare-fun b!1579774 () Bool)

(declare-fun e!1014834 () Bool)

(assert (=> b!1579774 (= e!1014834 e!1014835)))

(declare-fun res!704299 () Bool)

(assert (=> b!1579774 (=> (not res!704299) (not e!1014835))))

(assert (=> b!1579774 (= res!704299 (isDefined!2489 lt!552540))))

(declare-fun d!469286 () Bool)

(assert (=> d!469286 e!1014834))

(declare-fun res!704301 () Bool)

(assert (=> d!469286 (=> res!704301 e!1014834)))

(assert (=> d!469286 (= res!704301 (isEmpty!10371 lt!552540))))

(assert (=> d!469286 (= lt!552540 e!1014833)))

(declare-fun c!256004 () Bool)

(assert (=> d!469286 (= c!256004 (and ((_ is Cons!17361) rules!1846) ((_ is Nil!17361) (t!143608 rules!1846))))))

(declare-fun lt!552543 () Unit!26971)

(declare-fun lt!552544 () Unit!26971)

(assert (=> d!469286 (= lt!552543 lt!552544)))

(assert (=> d!469286 (isPrefix!1319 lt!552219 lt!552219)))

(declare-fun lemmaIsPrefixRefl!908 (List!17430 List!17430) Unit!26971)

(assert (=> d!469286 (= lt!552544 (lemmaIsPrefixRefl!908 lt!552219 lt!552219))))

(declare-fun rulesValidInductive!910 (LexerInterface!2688 List!17431) Bool)

(assert (=> d!469286 (rulesValidInductive!910 thiss!17113 rules!1846)))

(assert (=> d!469286 (= (maxPrefix!1252 thiss!17113 rules!1846 lt!552219) lt!552540)))

(declare-fun b!1579777 () Bool)

(declare-fun res!704295 () Bool)

(assert (=> b!1579777 (=> (not res!704295) (not e!1014835))))

(assert (=> b!1579777 (= res!704295 (= (++!4507 (list!6707 (charsOf!1708 (_1!9817 (get!4959 lt!552540)))) (_2!9817 (get!4959 lt!552540))) lt!552219))))

(declare-fun bm!102681 () Bool)

(assert (=> bm!102681 (= call!102686 (maxPrefixOneRule!723 thiss!17113 (h!22762 rules!1846) lt!552219))))

(declare-fun b!1579778 () Bool)

(declare-fun lt!552541 () Option!3110)

(declare-fun lt!552542 () Option!3110)

(assert (=> b!1579778 (= e!1014833 (ite (and ((_ is None!3109) lt!552541) ((_ is None!3109) lt!552542)) None!3109 (ite ((_ is None!3109) lt!552542) lt!552541 (ite ((_ is None!3109) lt!552541) lt!552542 (ite (>= (size!13960 (_1!9817 (v!23940 lt!552541))) (size!13960 (_1!9817 (v!23940 lt!552542)))) lt!552541 lt!552542)))))))

(assert (=> b!1579778 (= lt!552541 call!102686)))

(assert (=> b!1579778 (= lt!552542 (maxPrefix!1252 thiss!17113 (t!143608 rules!1846) lt!552219))))

(declare-fun b!1579779 () Bool)

(declare-fun res!704300 () Bool)

(assert (=> b!1579779 (=> (not res!704300) (not e!1014835))))

(assert (=> b!1579779 (= res!704300 (matchR!1908 (regex!3059 (rule!4855 (_1!9817 (get!4959 lt!552540)))) (list!6707 (charsOf!1708 (_1!9817 (get!4959 lt!552540))))))))

(assert (= (and d!469286 c!256004) b!1579772))

(assert (= (and d!469286 (not c!256004)) b!1579778))

(assert (= (or b!1579772 b!1579778) bm!102681))

(assert (= (and d!469286 (not res!704301)) b!1579774))

(assert (= (and b!1579774 res!704299) b!1579773))

(assert (= (and b!1579773 res!704298) b!1579775))

(assert (= (and b!1579775 res!704296) b!1579777))

(assert (= (and b!1579777 res!704295) b!1579771))

(assert (= (and b!1579771 res!704297) b!1579779))

(assert (= (and b!1579779 res!704300) b!1579776))

(declare-fun m!1862717 () Bool)

(assert (=> b!1579774 m!1862717))

(declare-fun m!1862719 () Bool)

(assert (=> b!1579775 m!1862719))

(declare-fun m!1862721 () Bool)

(assert (=> b!1579775 m!1862721))

(declare-fun m!1862723 () Bool)

(assert (=> b!1579775 m!1862723))

(declare-fun m!1862725 () Bool)

(assert (=> d!469286 m!1862725))

(declare-fun m!1862727 () Bool)

(assert (=> d!469286 m!1862727))

(declare-fun m!1862729 () Bool)

(assert (=> d!469286 m!1862729))

(declare-fun m!1862731 () Bool)

(assert (=> d!469286 m!1862731))

(assert (=> b!1579773 m!1862719))

(declare-fun m!1862733 () Bool)

(assert (=> b!1579773 m!1862733))

(assert (=> b!1579773 m!1862733))

(declare-fun m!1862735 () Bool)

(assert (=> b!1579773 m!1862735))

(assert (=> b!1579777 m!1862719))

(assert (=> b!1579777 m!1862733))

(assert (=> b!1579777 m!1862733))

(assert (=> b!1579777 m!1862735))

(assert (=> b!1579777 m!1862735))

(declare-fun m!1862737 () Bool)

(assert (=> b!1579777 m!1862737))

(declare-fun m!1862739 () Bool)

(assert (=> b!1579778 m!1862739))

(assert (=> b!1579779 m!1862719))

(assert (=> b!1579779 m!1862733))

(assert (=> b!1579779 m!1862733))

(assert (=> b!1579779 m!1862735))

(assert (=> b!1579779 m!1862735))

(declare-fun m!1862741 () Bool)

(assert (=> b!1579779 m!1862741))

(assert (=> b!1579771 m!1862719))

(declare-fun m!1862743 () Bool)

(assert (=> b!1579771 m!1862743))

(assert (=> b!1579771 m!1862743))

(declare-fun m!1862745 () Bool)

(assert (=> b!1579771 m!1862745))

(assert (=> b!1579776 m!1862719))

(declare-fun m!1862747 () Bool)

(assert (=> b!1579776 m!1862747))

(declare-fun m!1862749 () Bool)

(assert (=> bm!102681 m!1862749))

(assert (=> b!1579471 d!469286))

(declare-fun d!469288 () Bool)

(declare-fun lt!552559 () BalanceConc!11476)

(declare-fun printListTailRec!303 (LexerInterface!2688 List!17432 List!17430) List!17430)

(declare-fun dropList!509 (BalanceConc!11478 Int) List!17432)

(assert (=> d!469288 (= (list!6707 lt!552559) (printListTailRec!303 thiss!17113 (dropList!509 lt!552217 0) (list!6707 (BalanceConc!11477 Empty!5766))))))

(declare-fun e!1014841 () BalanceConc!11476)

(assert (=> d!469288 (= lt!552559 e!1014841)))

(declare-fun c!256007 () Bool)

(assert (=> d!469288 (= c!256007 (>= 0 (size!13964 lt!552217)))))

(declare-fun e!1014840 () Bool)

(assert (=> d!469288 e!1014840))

(declare-fun res!704304 () Bool)

(assert (=> d!469288 (=> (not res!704304) (not e!1014840))))

(assert (=> d!469288 (= res!704304 (>= 0 0))))

(assert (=> d!469288 (= (printTailRec!741 thiss!17113 lt!552217 0 (BalanceConc!11477 Empty!5766)) lt!552559)))

(declare-fun b!1579786 () Bool)

(assert (=> b!1579786 (= e!1014840 (<= 0 (size!13964 lt!552217)))))

(declare-fun b!1579787 () Bool)

(assert (=> b!1579787 (= e!1014841 (BalanceConc!11477 Empty!5766))))

(declare-fun b!1579788 () Bool)

(assert (=> b!1579788 (= e!1014841 (printTailRec!741 thiss!17113 lt!552217 (+ 0 1) (++!4509 (BalanceConc!11477 Empty!5766) (charsOf!1708 (apply!4203 lt!552217 0)))))))

(declare-fun lt!552562 () List!17432)

(assert (=> b!1579788 (= lt!552562 (list!6708 lt!552217))))

(declare-fun lt!552563 () Unit!26971)

(declare-fun lemmaDropApply!510 (List!17432 Int) Unit!26971)

(assert (=> b!1579788 (= lt!552563 (lemmaDropApply!510 lt!552562 0))))

(declare-fun drop!812 (List!17432 Int) List!17432)

(declare-fun apply!4206 (List!17432 Int) Token!5684)

(assert (=> b!1579788 (= (head!3181 (drop!812 lt!552562 0)) (apply!4206 lt!552562 0))))

(declare-fun lt!552565 () Unit!26971)

(assert (=> b!1579788 (= lt!552565 lt!552563)))

(declare-fun lt!552564 () List!17432)

(assert (=> b!1579788 (= lt!552564 (list!6708 lt!552217))))

(declare-fun lt!552561 () Unit!26971)

(declare-fun lemmaDropTail!490 (List!17432 Int) Unit!26971)

(assert (=> b!1579788 (= lt!552561 (lemmaDropTail!490 lt!552564 0))))

(declare-fun tail!2249 (List!17432) List!17432)

(assert (=> b!1579788 (= (tail!2249 (drop!812 lt!552564 0)) (drop!812 lt!552564 (+ 0 1)))))

(declare-fun lt!552560 () Unit!26971)

(assert (=> b!1579788 (= lt!552560 lt!552561)))

(assert (= (and d!469288 res!704304) b!1579786))

(assert (= (and d!469288 c!256007) b!1579787))

(assert (= (and d!469288 (not c!256007)) b!1579788))

(declare-fun m!1862751 () Bool)

(assert (=> d!469288 m!1862751))

(declare-fun m!1862753 () Bool)

(assert (=> d!469288 m!1862753))

(declare-fun m!1862755 () Bool)

(assert (=> d!469288 m!1862755))

(assert (=> d!469288 m!1862755))

(declare-fun m!1862757 () Bool)

(assert (=> d!469288 m!1862757))

(declare-fun m!1862759 () Bool)

(assert (=> d!469288 m!1862759))

(assert (=> d!469288 m!1862757))

(assert (=> b!1579786 m!1862753))

(declare-fun m!1862761 () Bool)

(assert (=> b!1579788 m!1862761))

(declare-fun m!1862763 () Bool)

(assert (=> b!1579788 m!1862763))

(declare-fun m!1862765 () Bool)

(assert (=> b!1579788 m!1862765))

(declare-fun m!1862767 () Bool)

(assert (=> b!1579788 m!1862767))

(declare-fun m!1862769 () Bool)

(assert (=> b!1579788 m!1862769))

(assert (=> b!1579788 m!1862711))

(declare-fun m!1862771 () Bool)

(assert (=> b!1579788 m!1862771))

(declare-fun m!1862773 () Bool)

(assert (=> b!1579788 m!1862773))

(assert (=> b!1579788 m!1862765))

(declare-fun m!1862775 () Bool)

(assert (=> b!1579788 m!1862775))

(assert (=> b!1579788 m!1862761))

(assert (=> b!1579788 m!1862771))

(assert (=> b!1579788 m!1862775))

(declare-fun m!1862777 () Bool)

(assert (=> b!1579788 m!1862777))

(assert (=> b!1579788 m!1862769))

(declare-fun m!1862779 () Bool)

(assert (=> b!1579788 m!1862779))

(declare-fun m!1862781 () Bool)

(assert (=> b!1579788 m!1862781))

(declare-fun m!1862783 () Bool)

(assert (=> b!1579788 m!1862783))

(assert (=> b!1579471 d!469288))

(declare-fun d!469290 () Bool)

(declare-fun c!256010 () Bool)

(assert (=> d!469290 (= c!256010 ((_ is Cons!17362) (Cons!17362 (h!22763 tokens!457) Nil!17362)))))

(declare-fun e!1014844 () List!17430)

(assert (=> d!469290 (= (printList!803 thiss!17113 (Cons!17362 (h!22763 tokens!457) Nil!17362)) e!1014844)))

(declare-fun b!1579793 () Bool)

(assert (=> b!1579793 (= e!1014844 (++!4507 (list!6707 (charsOf!1708 (h!22763 (Cons!17362 (h!22763 tokens!457) Nil!17362)))) (printList!803 thiss!17113 (t!143609 (Cons!17362 (h!22763 tokens!457) Nil!17362)))))))

(declare-fun b!1579794 () Bool)

(assert (=> b!1579794 (= e!1014844 Nil!17360)))

(assert (= (and d!469290 c!256010) b!1579793))

(assert (= (and d!469290 (not c!256010)) b!1579794))

(declare-fun m!1862785 () Bool)

(assert (=> b!1579793 m!1862785))

(assert (=> b!1579793 m!1862785))

(declare-fun m!1862787 () Bool)

(assert (=> b!1579793 m!1862787))

(declare-fun m!1862789 () Bool)

(assert (=> b!1579793 m!1862789))

(assert (=> b!1579793 m!1862787))

(assert (=> b!1579793 m!1862789))

(declare-fun m!1862791 () Bool)

(assert (=> b!1579793 m!1862791))

(assert (=> b!1579471 d!469290))

(declare-fun d!469292 () Bool)

(declare-fun e!1014847 () Bool)

(assert (=> d!469292 e!1014847))

(declare-fun res!704307 () Bool)

(assert (=> d!469292 (=> (not res!704307) (not e!1014847))))

(declare-fun lt!552568 () BalanceConc!11478)

(assert (=> d!469292 (= res!704307 (= (list!6708 lt!552568) (Cons!17362 (h!22763 tokens!457) Nil!17362)))))

(declare-fun singleton!571 (Token!5684) BalanceConc!11478)

(assert (=> d!469292 (= lt!552568 (singleton!571 (h!22763 tokens!457)))))

(assert (=> d!469292 (= (singletonSeq!1395 (h!22763 tokens!457)) lt!552568)))

(declare-fun b!1579797 () Bool)

(declare-fun isBalanced!1690 (Conc!5767) Bool)

(assert (=> b!1579797 (= e!1014847 (isBalanced!1690 (c!255957 lt!552568)))))

(assert (= (and d!469292 res!704307) b!1579797))

(declare-fun m!1862793 () Bool)

(assert (=> d!469292 m!1862793))

(declare-fun m!1862795 () Bool)

(assert (=> d!469292 m!1862795))

(declare-fun m!1862797 () Bool)

(assert (=> b!1579797 m!1862797))

(assert (=> b!1579471 d!469292))

(declare-fun d!469294 () Bool)

(assert (=> d!469294 (= (inv!22769 (tag!3325 (rule!4855 (h!22763 tokens!457)))) (= (mod (str.len (value!96853 (tag!3325 (rule!4855 (h!22763 tokens!457))))) 2) 0))))

(assert (=> b!1579466 d!469294))

(declare-fun d!469296 () Bool)

(declare-fun res!704308 () Bool)

(declare-fun e!1014848 () Bool)

(assert (=> d!469296 (=> (not res!704308) (not e!1014848))))

(assert (=> d!469296 (= res!704308 (semiInverseModEq!1148 (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) (toValue!4462 (transformation!3059 (rule!4855 (h!22763 tokens!457))))))))

(assert (=> d!469296 (= (inv!22773 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) e!1014848)))

(declare-fun b!1579798 () Bool)

(assert (=> b!1579798 (= e!1014848 (equivClasses!1089 (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))) (toValue!4462 (transformation!3059 (rule!4855 (h!22763 tokens!457))))))))

(assert (= (and d!469296 res!704308) b!1579798))

(declare-fun m!1862799 () Bool)

(assert (=> d!469296 m!1862799))

(declare-fun m!1862801 () Bool)

(assert (=> b!1579798 m!1862801))

(assert (=> b!1579466 d!469296))

(declare-fun d!469298 () Bool)

(declare-fun e!1014851 () Bool)

(assert (=> d!469298 e!1014851))

(declare-fun res!704311 () Bool)

(assert (=> d!469298 (=> (not res!704311) (not e!1014851))))

(declare-fun prepend!535 (Conc!5767 Token!5684) Conc!5767)

(assert (=> d!469298 (= res!704311 (isBalanced!1690 (prepend!535 (c!255957 (seqFromList!1867 (t!143609 (t!143609 tokens!457)))) (h!22763 (t!143609 tokens!457)))))))

(declare-fun lt!552571 () BalanceConc!11478)

(assert (=> d!469298 (= lt!552571 (BalanceConc!11479 (prepend!535 (c!255957 (seqFromList!1867 (t!143609 (t!143609 tokens!457)))) (h!22763 (t!143609 tokens!457)))))))

(assert (=> d!469298 (= (prepend!533 (seqFromList!1867 (t!143609 (t!143609 tokens!457))) (h!22763 (t!143609 tokens!457))) lt!552571)))

(declare-fun b!1579801 () Bool)

(assert (=> b!1579801 (= e!1014851 (= (list!6708 lt!552571) (Cons!17362 (h!22763 (t!143609 tokens!457)) (list!6708 (seqFromList!1867 (t!143609 (t!143609 tokens!457)))))))))

(assert (= (and d!469298 res!704311) b!1579801))

(declare-fun m!1862803 () Bool)

(assert (=> d!469298 m!1862803))

(assert (=> d!469298 m!1862803))

(declare-fun m!1862805 () Bool)

(assert (=> d!469298 m!1862805))

(declare-fun m!1862807 () Bool)

(assert (=> b!1579801 m!1862807))

(assert (=> b!1579801 m!1862039))

(declare-fun m!1862809 () Bool)

(assert (=> b!1579801 m!1862809))

(assert (=> b!1579467 d!469298))

(declare-fun d!469300 () Bool)

(declare-fun list!6712 (Conc!5767) List!17432)

(assert (=> d!469300 (= (list!6708 (prepend!533 (seqFromList!1867 (t!143609 (t!143609 tokens!457))) (h!22763 (t!143609 tokens!457)))) (list!6712 (c!255957 (prepend!533 (seqFromList!1867 (t!143609 (t!143609 tokens!457))) (h!22763 (t!143609 tokens!457))))))))

(declare-fun bs!390834 () Bool)

(assert (= bs!390834 d!469300))

(declare-fun m!1862811 () Bool)

(assert (=> bs!390834 m!1862811))

(assert (=> b!1579467 d!469300))

(declare-fun d!469302 () Bool)

(assert (=> d!469302 (= (list!6708 lt!552226) (list!6712 (c!255957 lt!552226)))))

(declare-fun bs!390835 () Bool)

(assert (= bs!390835 d!469302))

(declare-fun m!1862813 () Bool)

(assert (=> bs!390835 m!1862813))

(assert (=> b!1579467 d!469302))

(declare-fun d!469304 () Bool)

(assert (=> d!469304 (= (list!6708 (_1!9816 lt!552212)) (list!6708 (prepend!533 (seqFromList!1867 (t!143609 (t!143609 tokens!457))) (h!22763 (t!143609 tokens!457)))))))

(declare-fun lt!552574 () Unit!26971)

(declare-fun choose!9442 (Token!5684 List!17432 BalanceConc!11478) Unit!26971)

(assert (=> d!469304 (= lt!552574 (choose!9442 (h!22763 (t!143609 tokens!457)) (t!143609 (t!143609 tokens!457)) (_1!9816 lt!552212)))))

(declare-fun $colon$colon!267 (List!17432 Token!5684) List!17432)

(assert (=> d!469304 (= (list!6708 (_1!9816 lt!552212)) (list!6708 (seqFromList!1867 ($colon$colon!267 (t!143609 (t!143609 tokens!457)) (h!22763 (t!143609 tokens!457))))))))

(assert (=> d!469304 (= (seqFromListBHdTlConstructive!136 (h!22763 (t!143609 tokens!457)) (t!143609 (t!143609 tokens!457)) (_1!9816 lt!552212)) lt!552574)))

(declare-fun bs!390836 () Bool)

(assert (= bs!390836 d!469304))

(declare-fun m!1862815 () Bool)

(assert (=> bs!390836 m!1862815))

(assert (=> bs!390836 m!1862041))

(assert (=> bs!390836 m!1862043))

(declare-fun m!1862817 () Bool)

(assert (=> bs!390836 m!1862817))

(assert (=> bs!390836 m!1862023))

(assert (=> bs!390836 m!1862039))

(assert (=> bs!390836 m!1862039))

(assert (=> bs!390836 m!1862041))

(assert (=> bs!390836 m!1862817))

(declare-fun m!1862819 () Bool)

(assert (=> bs!390836 m!1862819))

(assert (=> bs!390836 m!1862819))

(declare-fun m!1862821 () Bool)

(assert (=> bs!390836 m!1862821))

(assert (=> b!1579467 d!469304))

(declare-fun d!469306 () Bool)

(assert (=> d!469306 (= (seqFromList!1867 (t!143609 (t!143609 tokens!457))) (fromListB!791 (t!143609 (t!143609 tokens!457))))))

(declare-fun bs!390837 () Bool)

(assert (= bs!390837 d!469306))

(declare-fun m!1862823 () Bool)

(assert (=> bs!390837 m!1862823))

(assert (=> b!1579467 d!469306))

(declare-fun d!469308 () Bool)

(declare-fun res!704317 () Bool)

(declare-fun e!1014857 () Bool)

(assert (=> d!469308 (=> res!704317 e!1014857)))

(assert (=> d!469308 (= res!704317 (or (not ((_ is Cons!17362) tokens!457)) (not ((_ is Cons!17362) (t!143609 tokens!457)))))))

(assert (=> d!469308 (= (tokensListTwoByTwoPredicateSeparableList!381 thiss!17113 tokens!457 rules!1846) e!1014857)))

(declare-fun b!1579806 () Bool)

(declare-fun e!1014856 () Bool)

(assert (=> b!1579806 (= e!1014857 e!1014856)))

(declare-fun res!704316 () Bool)

(assert (=> b!1579806 (=> (not res!704316) (not e!1014856))))

(assert (=> b!1579806 (= res!704316 (separableTokensPredicate!630 thiss!17113 (h!22763 tokens!457) (h!22763 (t!143609 tokens!457)) rules!1846))))

(declare-fun lt!552592 () Unit!26971)

(declare-fun Unit!26994 () Unit!26971)

(assert (=> b!1579806 (= lt!552592 Unit!26994)))

(assert (=> b!1579806 (> (size!13965 (charsOf!1708 (h!22763 (t!143609 tokens!457)))) 0)))

(declare-fun lt!552593 () Unit!26971)

(declare-fun Unit!26995 () Unit!26971)

(assert (=> b!1579806 (= lt!552593 Unit!26995)))

(assert (=> b!1579806 (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 (t!143609 tokens!457)))))

(declare-fun lt!552590 () Unit!26971)

(declare-fun Unit!26996 () Unit!26971)

(assert (=> b!1579806 (= lt!552590 Unit!26996)))

(assert (=> b!1579806 (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 tokens!457))))

(declare-fun lt!552591 () Unit!26971)

(declare-fun lt!552594 () Unit!26971)

(assert (=> b!1579806 (= lt!552591 lt!552594)))

(assert (=> b!1579806 (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 (t!143609 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!513 (LexerInterface!2688 List!17431 List!17432 Token!5684) Unit!26971)

(assert (=> b!1579806 (= lt!552594 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!513 thiss!17113 rules!1846 tokens!457 (h!22763 (t!143609 tokens!457))))))

(declare-fun lt!552595 () Unit!26971)

(declare-fun lt!552589 () Unit!26971)

(assert (=> b!1579806 (= lt!552595 lt!552589)))

(assert (=> b!1579806 (rulesProduceIndividualToken!1340 thiss!17113 rules!1846 (h!22763 tokens!457))))

(assert (=> b!1579806 (= lt!552589 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!513 thiss!17113 rules!1846 tokens!457 (h!22763 tokens!457)))))

(declare-fun b!1579807 () Bool)

(assert (=> b!1579807 (= e!1014856 (tokensListTwoByTwoPredicateSeparableList!381 thiss!17113 (Cons!17362 (h!22763 (t!143609 tokens!457)) (t!143609 (t!143609 tokens!457))) rules!1846))))

(assert (= (and d!469308 (not res!704317)) b!1579806))

(assert (= (and b!1579806 res!704316) b!1579807))

(assert (=> b!1579806 m!1862237))

(assert (=> b!1579806 m!1862237))

(declare-fun m!1862825 () Bool)

(assert (=> b!1579806 m!1862825))

(declare-fun m!1862827 () Bool)

(assert (=> b!1579806 m!1862827))

(assert (=> b!1579806 m!1862065))

(assert (=> b!1579806 m!1862063))

(assert (=> b!1579806 m!1862107))

(declare-fun m!1862829 () Bool)

(assert (=> b!1579806 m!1862829))

(declare-fun m!1862831 () Bool)

(assert (=> b!1579807 m!1862831))

(assert (=> b!1579478 d!469308))

(declare-fun d!469310 () Bool)

(assert (=> d!469310 (= (list!6708 (_1!9816 lt!552212)) (list!6712 (c!255957 (_1!9816 lt!552212))))))

(declare-fun bs!390838 () Bool)

(assert (= bs!390838 d!469310))

(declare-fun m!1862833 () Bool)

(assert (=> bs!390838 m!1862833))

(assert (=> b!1579468 d!469310))

(declare-fun d!469312 () Bool)

(declare-fun e!1014914 () Bool)

(assert (=> d!469312 e!1014914))

(declare-fun res!704325 () Bool)

(assert (=> d!469312 (=> (not res!704325) (not e!1014914))))

(assert (=> d!469312 (= res!704325 (= (list!6708 (_1!9816 (lex!1172 thiss!17113 rules!1846 (print!1219 thiss!17113 (seqFromList!1867 (t!143609 tokens!457)))))) (t!143609 tokens!457)))))

(declare-fun lt!552667 () Unit!26971)

(declare-fun e!1014913 () Unit!26971)

(assert (=> d!469312 (= lt!552667 e!1014913)))

(declare-fun c!256015 () Bool)

(assert (=> d!469312 (= c!256015 (or ((_ is Nil!17362) (t!143609 tokens!457)) ((_ is Nil!17362) (t!143609 (t!143609 tokens!457)))))))

(assert (=> d!469312 (not (isEmpty!10362 rules!1846))))

(assert (=> d!469312 (= (theoremInvertabilityWhenTokenListSeparable!133 thiss!17113 rules!1846 (t!143609 tokens!457)) lt!552667)))

(declare-fun b!1579880 () Bool)

(declare-fun Unit!26997 () Unit!26971)

(assert (=> b!1579880 (= e!1014913 Unit!26997)))

(declare-fun b!1579881 () Bool)

(declare-fun Unit!26998 () Unit!26971)

(assert (=> b!1579881 (= e!1014913 Unit!26998)))

(declare-fun lt!552660 () BalanceConc!11476)

(assert (=> b!1579881 (= lt!552660 (print!1219 thiss!17113 (seqFromList!1867 (t!143609 tokens!457))))))

(declare-fun lt!552659 () BalanceConc!11476)

(assert (=> b!1579881 (= lt!552659 (print!1219 thiss!17113 (seqFromList!1867 (t!143609 (t!143609 tokens!457)))))))

(declare-fun lt!552671 () tuple2!16828)

(assert (=> b!1579881 (= lt!552671 (lex!1172 thiss!17113 rules!1846 lt!552659))))

(declare-fun lt!552663 () List!17430)

(assert (=> b!1579881 (= lt!552663 (list!6707 (charsOf!1708 (h!22763 (t!143609 tokens!457)))))))

(declare-fun lt!552665 () List!17430)

(assert (=> b!1579881 (= lt!552665 (list!6707 lt!552659))))

(declare-fun lt!552655 () Unit!26971)

(assert (=> b!1579881 (= lt!552655 (lemmaConcatTwoListThenFirstIsPrefix!844 lt!552663 lt!552665))))

(assert (=> b!1579881 (isPrefix!1319 lt!552663 (++!4507 lt!552663 lt!552665))))

(declare-fun lt!552674 () Unit!26971)

(assert (=> b!1579881 (= lt!552674 lt!552655)))

(declare-fun lt!552669 () Unit!26971)

(assert (=> b!1579881 (= lt!552669 (theoremInvertabilityWhenTokenListSeparable!133 thiss!17113 rules!1846 (t!143609 (t!143609 tokens!457))))))

(declare-fun lt!552679 () Unit!26971)

(assert (=> b!1579881 (= lt!552679 (seqFromListBHdTlConstructive!136 (h!22763 (t!143609 (t!143609 tokens!457))) (t!143609 (t!143609 (t!143609 tokens!457))) (_1!9816 lt!552671)))))

(assert (=> b!1579881 (= (list!6708 (_1!9816 lt!552671)) (list!6708 (prepend!533 (seqFromList!1867 (t!143609 (t!143609 (t!143609 tokens!457)))) (h!22763 (t!143609 (t!143609 tokens!457))))))))

(declare-fun lt!552666 () Unit!26971)

(assert (=> b!1579881 (= lt!552666 lt!552679)))

(declare-fun lt!552656 () Option!3110)

(assert (=> b!1579881 (= lt!552656 (maxPrefix!1252 thiss!17113 rules!1846 (list!6707 lt!552660)))))

(assert (=> b!1579881 (= (print!1219 thiss!17113 (singletonSeq!1395 (h!22763 (t!143609 tokens!457)))) (printTailRec!741 thiss!17113 (singletonSeq!1395 (h!22763 (t!143609 tokens!457))) 0 (BalanceConc!11477 Empty!5766)))))

(declare-fun lt!552678 () Unit!26971)

(declare-fun Unit!26999 () Unit!26971)

(assert (=> b!1579881 (= lt!552678 Unit!26999)))

(declare-fun lt!552672 () Unit!26971)

(assert (=> b!1579881 (= lt!552672 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!262 thiss!17113 rules!1846 (list!6707 (charsOf!1708 (h!22763 (t!143609 tokens!457)))) (list!6707 lt!552659)))))

(assert (=> b!1579881 (= (list!6707 (charsOf!1708 (h!22763 (t!143609 tokens!457)))) (originalCharacters!3873 (h!22763 (t!143609 tokens!457))))))

(declare-fun lt!552676 () Unit!26971)

(declare-fun Unit!27000 () Unit!26971)

(assert (=> b!1579881 (= lt!552676 Unit!27000)))

(declare-fun head!3182 (List!17430) C!8948)

(assert (=> b!1579881 (= (list!6707 (singletonSeq!1397 (apply!4201 (charsOf!1708 (h!22763 (t!143609 (t!143609 tokens!457)))) 0))) (Cons!17360 (head!3182 (originalCharacters!3873 (h!22763 (t!143609 (t!143609 tokens!457))))) Nil!17360))))

(declare-fun lt!552658 () Unit!26971)

(declare-fun Unit!27001 () Unit!26971)

(assert (=> b!1579881 (= lt!552658 Unit!27001)))

(assert (=> b!1579881 (= (list!6707 (singletonSeq!1397 (apply!4201 (charsOf!1708 (h!22763 (t!143609 (t!143609 tokens!457)))) 0))) (Cons!17360 (head!3182 (list!6707 lt!552659)) Nil!17360))))

(declare-fun lt!552662 () Unit!26971)

(declare-fun Unit!27002 () Unit!26971)

(assert (=> b!1579881 (= lt!552662 Unit!27002)))

(declare-fun head!3183 (BalanceConc!11476) C!8948)

(assert (=> b!1579881 (= (list!6707 (singletonSeq!1397 (apply!4201 (charsOf!1708 (h!22763 (t!143609 (t!143609 tokens!457)))) 0))) (Cons!17360 (head!3183 lt!552659) Nil!17360))))

(declare-fun lt!552657 () Unit!26971)

(declare-fun Unit!27003 () Unit!26971)

(assert (=> b!1579881 (= lt!552657 Unit!27003)))

(assert (=> b!1579881 (isDefined!2489 (maxPrefix!1252 thiss!17113 rules!1846 (originalCharacters!3873 (h!22763 (t!143609 tokens!457)))))))

(declare-fun lt!552673 () Unit!26971)

(declare-fun Unit!27004 () Unit!26971)

(assert (=> b!1579881 (= lt!552673 Unit!27004)))

(assert (=> b!1579881 (isDefined!2489 (maxPrefix!1252 thiss!17113 rules!1846 (list!6707 (charsOf!1708 (h!22763 (t!143609 tokens!457))))))))

(declare-fun lt!552664 () Unit!26971)

(declare-fun Unit!27005 () Unit!26971)

(assert (=> b!1579881 (= lt!552664 Unit!27005)))

(declare-fun lt!552675 () Unit!26971)

(declare-fun Unit!27006 () Unit!26971)

(assert (=> b!1579881 (= lt!552675 Unit!27006)))

(assert (=> b!1579881 (= (_1!9817 (get!4959 (maxPrefix!1252 thiss!17113 rules!1846 (list!6707 (charsOf!1708 (h!22763 (t!143609 tokens!457))))))) (h!22763 (t!143609 tokens!457)))))

(declare-fun lt!552677 () Unit!26971)

(declare-fun Unit!27007 () Unit!26971)

(assert (=> b!1579881 (= lt!552677 Unit!27007)))

(assert (=> b!1579881 (isEmpty!10373 (_2!9817 (get!4959 (maxPrefix!1252 thiss!17113 rules!1846 (list!6707 (charsOf!1708 (h!22763 (t!143609 tokens!457))))))))))

(declare-fun lt!552680 () Unit!26971)

(declare-fun Unit!27008 () Unit!26971)

(assert (=> b!1579881 (= lt!552680 Unit!27008)))

(assert (=> b!1579881 (matchR!1908 (regex!3059 (rule!4855 (h!22763 (t!143609 tokens!457)))) (list!6707 (charsOf!1708 (h!22763 (t!143609 tokens!457)))))))

(declare-fun lt!552661 () Unit!26971)

(declare-fun Unit!27009 () Unit!26971)

(assert (=> b!1579881 (= lt!552661 Unit!27009)))

(assert (=> b!1579881 (= (rule!4855 (h!22763 (t!143609 tokens!457))) (rule!4855 (h!22763 (t!143609 tokens!457))))))

(declare-fun lt!552670 () Unit!26971)

(declare-fun Unit!27010 () Unit!26971)

(assert (=> b!1579881 (= lt!552670 Unit!27010)))

(declare-fun lt!552668 () Unit!26971)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!58 (LexerInterface!2688 List!17431 Token!5684 Rule!5918 List!17430) Unit!26971)

(assert (=> b!1579881 (= lt!552668 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!58 thiss!17113 rules!1846 (h!22763 (t!143609 tokens!457)) (rule!4855 (h!22763 (t!143609 tokens!457))) (list!6707 lt!552659)))))

(declare-fun b!1579882 () Bool)

(assert (=> b!1579882 (= e!1014914 (isEmpty!10372 (_2!9816 (lex!1172 thiss!17113 rules!1846 (print!1219 thiss!17113 (seqFromList!1867 (t!143609 tokens!457)))))))))

(assert (= (and d!469312 c!256015) b!1579880))

(assert (= (and d!469312 (not c!256015)) b!1579881))

(assert (= (and d!469312 res!704325) b!1579882))

(assert (=> d!469312 m!1862083))

(declare-fun m!1862873 () Bool)

(assert (=> d!469312 m!1862873))

(declare-fun m!1862875 () Bool)

(assert (=> d!469312 m!1862875))

(declare-fun m!1862877 () Bool)

(assert (=> d!469312 m!1862877))

(assert (=> d!469312 m!1862059))

(assert (=> d!469312 m!1862083))

(assert (=> d!469312 m!1862875))

(declare-fun m!1862879 () Bool)

(assert (=> b!1579881 m!1862879))

(declare-fun m!1862881 () Bool)

(assert (=> b!1579881 m!1862881))

(declare-fun m!1862883 () Bool)

(assert (=> b!1579881 m!1862883))

(declare-fun m!1862885 () Bool)

(assert (=> b!1579881 m!1862885))

(declare-fun m!1862887 () Bool)

(assert (=> b!1579881 m!1862887))

(declare-fun m!1862889 () Bool)

(assert (=> b!1579881 m!1862889))

(declare-fun m!1862891 () Bool)

(assert (=> b!1579881 m!1862891))

(declare-fun m!1862893 () Bool)

(assert (=> b!1579881 m!1862893))

(assert (=> b!1579881 m!1862237))

(declare-fun m!1862895 () Bool)

(assert (=> b!1579881 m!1862895))

(assert (=> b!1579881 m!1862237))

(declare-fun m!1862897 () Bool)

(assert (=> b!1579881 m!1862897))

(assert (=> b!1579881 m!1862083))

(assert (=> b!1579881 m!1862875))

(assert (=> b!1579881 m!1862895))

(declare-fun m!1862899 () Bool)

(assert (=> b!1579881 m!1862899))

(declare-fun m!1862901 () Bool)

(assert (=> b!1579881 m!1862901))

(declare-fun m!1862903 () Bool)

(assert (=> b!1579881 m!1862903))

(declare-fun m!1862905 () Bool)

(assert (=> b!1579881 m!1862905))

(declare-fun m!1862907 () Bool)

(assert (=> b!1579881 m!1862907))

(declare-fun m!1862909 () Bool)

(assert (=> b!1579881 m!1862909))

(assert (=> b!1579881 m!1862899))

(declare-fun m!1862911 () Bool)

(assert (=> b!1579881 m!1862911))

(assert (=> b!1579881 m!1862687))

(declare-fun m!1862913 () Bool)

(assert (=> b!1579881 m!1862913))

(assert (=> b!1579881 m!1862899))

(assert (=> b!1579881 m!1862899))

(declare-fun m!1862915 () Bool)

(assert (=> b!1579881 m!1862915))

(assert (=> b!1579881 m!1862895))

(declare-fun m!1862917 () Bool)

(assert (=> b!1579881 m!1862917))

(declare-fun m!1862919 () Bool)

(assert (=> b!1579881 m!1862919))

(declare-fun m!1862921 () Bool)

(assert (=> b!1579881 m!1862921))

(assert (=> b!1579881 m!1862039))

(declare-fun m!1862923 () Bool)

(assert (=> b!1579881 m!1862923))

(assert (=> b!1579881 m!1862083))

(declare-fun m!1862925 () Bool)

(assert (=> b!1579881 m!1862925))

(assert (=> b!1579881 m!1862883))

(declare-fun m!1862927 () Bool)

(assert (=> b!1579881 m!1862927))

(assert (=> b!1579881 m!1862687))

(assert (=> b!1579881 m!1862689))

(assert (=> b!1579881 m!1862925))

(assert (=> b!1579881 m!1862879))

(declare-fun m!1862929 () Bool)

(assert (=> b!1579881 m!1862929))

(assert (=> b!1579881 m!1862889))

(assert (=> b!1579881 m!1862919))

(assert (=> b!1579881 m!1862891))

(assert (=> b!1579881 m!1862907))

(assert (=> b!1579881 m!1862903))

(declare-fun m!1862931 () Bool)

(assert (=> b!1579881 m!1862931))

(assert (=> b!1579881 m!1862921))

(declare-fun m!1862933 () Bool)

(assert (=> b!1579881 m!1862933))

(assert (=> b!1579881 m!1862687))

(declare-fun m!1862935 () Bool)

(assert (=> b!1579881 m!1862935))

(declare-fun m!1862937 () Bool)

(assert (=> b!1579881 m!1862937))

(declare-fun m!1862939 () Bool)

(assert (=> b!1579881 m!1862939))

(assert (=> b!1579881 m!1862039))

(declare-fun m!1862941 () Bool)

(assert (=> b!1579881 m!1862941))

(assert (=> b!1579881 m!1862895))

(assert (=> b!1579881 m!1862883))

(assert (=> b!1579882 m!1862083))

(assert (=> b!1579882 m!1862083))

(assert (=> b!1579882 m!1862875))

(assert (=> b!1579882 m!1862875))

(assert (=> b!1579882 m!1862877))

(declare-fun m!1862943 () Bool)

(assert (=> b!1579882 m!1862943))

(assert (=> b!1579468 d!469312))

(declare-fun b!1579891 () Bool)

(declare-fun e!1014923 () Bool)

(declare-fun e!1014921 () Bool)

(assert (=> b!1579891 (= e!1014923 e!1014921)))

(declare-fun res!704337 () Bool)

(assert (=> b!1579891 (=> (not res!704337) (not e!1014921))))

(assert (=> b!1579891 (= res!704337 (not ((_ is Nil!17360) lt!552225)))))

(declare-fun b!1579894 () Bool)

(declare-fun e!1014922 () Bool)

(assert (=> b!1579894 (= e!1014922 (>= (size!13966 lt!552225) (size!13966 lt!552214)))))

(declare-fun d!469324 () Bool)

(assert (=> d!469324 e!1014922))

(declare-fun res!704335 () Bool)

(assert (=> d!469324 (=> res!704335 e!1014922)))

(declare-fun lt!552683 () Bool)

(assert (=> d!469324 (= res!704335 (not lt!552683))))

(assert (=> d!469324 (= lt!552683 e!1014923)))

(declare-fun res!704334 () Bool)

(assert (=> d!469324 (=> res!704334 e!1014923)))

(assert (=> d!469324 (= res!704334 ((_ is Nil!17360) lt!552214))))

(assert (=> d!469324 (= (isPrefix!1319 lt!552214 lt!552225) lt!552683)))

(declare-fun b!1579892 () Bool)

(declare-fun res!704336 () Bool)

(assert (=> b!1579892 (=> (not res!704336) (not e!1014921))))

(assert (=> b!1579892 (= res!704336 (= (head!3182 lt!552214) (head!3182 lt!552225)))))

(declare-fun b!1579893 () Bool)

(declare-fun tail!2250 (List!17430) List!17430)

(assert (=> b!1579893 (= e!1014921 (isPrefix!1319 (tail!2250 lt!552214) (tail!2250 lt!552225)))))

(assert (= (and d!469324 (not res!704334)) b!1579891))

(assert (= (and b!1579891 res!704337) b!1579892))

(assert (= (and b!1579892 res!704336) b!1579893))

(assert (= (and d!469324 (not res!704335)) b!1579894))

(declare-fun m!1862945 () Bool)

(assert (=> b!1579894 m!1862945))

(assert (=> b!1579894 m!1862469))

(declare-fun m!1862947 () Bool)

(assert (=> b!1579892 m!1862947))

(declare-fun m!1862949 () Bool)

(assert (=> b!1579892 m!1862949))

(declare-fun m!1862951 () Bool)

(assert (=> b!1579893 m!1862951))

(declare-fun m!1862953 () Bool)

(assert (=> b!1579893 m!1862953))

(assert (=> b!1579893 m!1862951))

(assert (=> b!1579893 m!1862953))

(declare-fun m!1862955 () Bool)

(assert (=> b!1579893 m!1862955))

(assert (=> b!1579468 d!469324))

(declare-fun d!469326 () Bool)

(assert (=> d!469326 (isPrefix!1319 lt!552214 (++!4507 lt!552214 lt!552222))))

(declare-fun lt!552686 () Unit!26971)

(declare-fun choose!9443 (List!17430 List!17430) Unit!26971)

(assert (=> d!469326 (= lt!552686 (choose!9443 lt!552214 lt!552222))))

(assert (=> d!469326 (= (lemmaConcatTwoListThenFirstIsPrefix!844 lt!552214 lt!552222) lt!552686)))

(declare-fun bs!390843 () Bool)

(assert (= bs!390843 d!469326))

(assert (=> bs!390843 m!1862089))

(assert (=> bs!390843 m!1862089))

(declare-fun m!1862957 () Bool)

(assert (=> bs!390843 m!1862957))

(declare-fun m!1862959 () Bool)

(assert (=> bs!390843 m!1862959))

(assert (=> b!1579468 d!469326))

(declare-fun b!1579908 () Bool)

(declare-fun e!1014926 () Bool)

(declare-fun tp!465142 () Bool)

(declare-fun tp!465143 () Bool)

(assert (=> b!1579908 (= e!1014926 (and tp!465142 tp!465143))))

(declare-fun b!1579907 () Bool)

(declare-fun tp!465141 () Bool)

(assert (=> b!1579907 (= e!1014926 tp!465141)))

(declare-fun b!1579905 () Bool)

(declare-fun tp_is_empty!7177 () Bool)

(assert (=> b!1579905 (= e!1014926 tp_is_empty!7177)))

(assert (=> b!1579480 (= tp!465074 e!1014926)))

(declare-fun b!1579906 () Bool)

(declare-fun tp!465144 () Bool)

(declare-fun tp!465145 () Bool)

(assert (=> b!1579906 (= e!1014926 (and tp!465144 tp!465145))))

(assert (= (and b!1579480 ((_ is ElementMatch!4387) (regex!3059 (h!22762 rules!1846)))) b!1579905))

(assert (= (and b!1579480 ((_ is Concat!7537) (regex!3059 (h!22762 rules!1846)))) b!1579906))

(assert (= (and b!1579480 ((_ is Star!4387) (regex!3059 (h!22762 rules!1846)))) b!1579907))

(assert (= (and b!1579480 ((_ is Union!4387) (regex!3059 (h!22762 rules!1846)))) b!1579908))

(declare-fun b!1579913 () Bool)

(declare-fun e!1014929 () Bool)

(declare-fun tp!465148 () Bool)

(assert (=> b!1579913 (= e!1014929 (and tp_is_empty!7177 tp!465148))))

(assert (=> b!1579465 (= tp!465067 e!1014929)))

(assert (= (and b!1579465 ((_ is Cons!17360) (originalCharacters!3873 (h!22763 tokens!457)))) b!1579913))

(declare-fun b!1579924 () Bool)

(declare-fun b_free!42679 () Bool)

(declare-fun b_next!43383 () Bool)

(assert (=> b!1579924 (= b_free!42679 (not b_next!43383))))

(declare-fun tp!465160 () Bool)

(declare-fun b_and!110685 () Bool)

(assert (=> b!1579924 (= tp!465160 b_and!110685)))

(declare-fun b_free!42681 () Bool)

(declare-fun b_next!43385 () Bool)

(assert (=> b!1579924 (= b_free!42681 (not b_next!43385))))

(declare-fun t!143631 () Bool)

(declare-fun tb!88835 () Bool)

(assert (=> (and b!1579924 (= (toChars!4321 (transformation!3059 (h!22762 (t!143608 rules!1846)))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457))))) t!143631) tb!88835))

(declare-fun result!107504 () Bool)

(assert (= result!107504 result!107480))

(assert (=> b!1579613 t!143631))

(assert (=> d!469238 t!143631))

(declare-fun b_and!110687 () Bool)

(declare-fun tp!465158 () Bool)

(assert (=> b!1579924 (= tp!465158 (and (=> t!143631 result!107504) b_and!110687))))

(declare-fun e!1014940 () Bool)

(assert (=> b!1579924 (= e!1014940 (and tp!465160 tp!465158))))

(declare-fun e!1014939 () Bool)

(declare-fun b!1579923 () Bool)

(declare-fun tp!465157 () Bool)

(assert (=> b!1579923 (= e!1014939 (and tp!465157 (inv!22769 (tag!3325 (h!22762 (t!143608 rules!1846)))) (inv!22773 (transformation!3059 (h!22762 (t!143608 rules!1846)))) e!1014940))))

(declare-fun b!1579922 () Bool)

(declare-fun e!1014938 () Bool)

(declare-fun tp!465159 () Bool)

(assert (=> b!1579922 (= e!1014938 (and e!1014939 tp!465159))))

(assert (=> b!1579476 (= tp!465072 e!1014938)))

(assert (= b!1579923 b!1579924))

(assert (= b!1579922 b!1579923))

(assert (= (and b!1579476 ((_ is Cons!17361) (t!143608 rules!1846))) b!1579922))

(declare-fun m!1862961 () Bool)

(assert (=> b!1579923 m!1862961))

(declare-fun m!1862963 () Bool)

(assert (=> b!1579923 m!1862963))

(declare-fun b!1579928 () Bool)

(declare-fun e!1014942 () Bool)

(declare-fun tp!465162 () Bool)

(declare-fun tp!465163 () Bool)

(assert (=> b!1579928 (= e!1014942 (and tp!465162 tp!465163))))

(declare-fun b!1579927 () Bool)

(declare-fun tp!465161 () Bool)

(assert (=> b!1579927 (= e!1014942 tp!465161)))

(declare-fun b!1579925 () Bool)

(assert (=> b!1579925 (= e!1014942 tp_is_empty!7177)))

(assert (=> b!1579466 (= tp!465070 e!1014942)))

(declare-fun b!1579926 () Bool)

(declare-fun tp!465164 () Bool)

(declare-fun tp!465165 () Bool)

(assert (=> b!1579926 (= e!1014942 (and tp!465164 tp!465165))))

(assert (= (and b!1579466 ((_ is ElementMatch!4387) (regex!3059 (rule!4855 (h!22763 tokens!457))))) b!1579925))

(assert (= (and b!1579466 ((_ is Concat!7537) (regex!3059 (rule!4855 (h!22763 tokens!457))))) b!1579926))

(assert (= (and b!1579466 ((_ is Star!4387) (regex!3059 (rule!4855 (h!22763 tokens!457))))) b!1579927))

(assert (= (and b!1579466 ((_ is Union!4387) (regex!3059 (rule!4855 (h!22763 tokens!457))))) b!1579928))

(declare-fun b!1579942 () Bool)

(declare-fun b_free!42683 () Bool)

(declare-fun b_next!43387 () Bool)

(assert (=> b!1579942 (= b_free!42683 (not b_next!43387))))

(declare-fun tp!465180 () Bool)

(declare-fun b_and!110689 () Bool)

(assert (=> b!1579942 (= tp!465180 b_and!110689)))

(declare-fun b_free!42685 () Bool)

(declare-fun b_next!43389 () Bool)

(assert (=> b!1579942 (= b_free!42685 (not b_next!43389))))

(declare-fun t!143633 () Bool)

(declare-fun tb!88837 () Bool)

(assert (=> (and b!1579942 (= (toChars!4321 (transformation!3059 (rule!4855 (h!22763 (t!143609 tokens!457))))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457))))) t!143633) tb!88837))

(declare-fun result!107508 () Bool)

(assert (= result!107508 result!107480))

(assert (=> b!1579613 t!143633))

(assert (=> d!469238 t!143633))

(declare-fun b_and!110691 () Bool)

(declare-fun tp!465179 () Bool)

(assert (=> b!1579942 (= tp!465179 (and (=> t!143633 result!107508) b_and!110691))))

(declare-fun e!1014960 () Bool)

(assert (=> b!1579462 (= tp!465066 e!1014960)))

(declare-fun e!1014955 () Bool)

(assert (=> b!1579942 (= e!1014955 (and tp!465180 tp!465179))))

(declare-fun tp!465177 () Bool)

(declare-fun e!1014956 () Bool)

(declare-fun b!1579941 () Bool)

(assert (=> b!1579941 (= e!1014956 (and tp!465177 (inv!22769 (tag!3325 (rule!4855 (h!22763 (t!143609 tokens!457))))) (inv!22773 (transformation!3059 (rule!4855 (h!22763 (t!143609 tokens!457))))) e!1014955))))

(declare-fun tp!465176 () Bool)

(declare-fun b!1579940 () Bool)

(declare-fun e!1014958 () Bool)

(assert (=> b!1579940 (= e!1014958 (and (inv!21 (value!96854 (h!22763 (t!143609 tokens!457)))) e!1014956 tp!465176))))

(declare-fun b!1579939 () Bool)

(declare-fun tp!465178 () Bool)

(assert (=> b!1579939 (= e!1014960 (and (inv!22772 (h!22763 (t!143609 tokens!457))) e!1014958 tp!465178))))

(assert (= b!1579941 b!1579942))

(assert (= b!1579940 b!1579941))

(assert (= b!1579939 b!1579940))

(assert (= (and b!1579462 ((_ is Cons!17362) (t!143609 tokens!457))) b!1579939))

(declare-fun m!1862965 () Bool)

(assert (=> b!1579941 m!1862965))

(declare-fun m!1862967 () Bool)

(assert (=> b!1579941 m!1862967))

(declare-fun m!1862969 () Bool)

(assert (=> b!1579940 m!1862969))

(declare-fun m!1862971 () Bool)

(assert (=> b!1579939 m!1862971))

(declare-fun b_lambda!49709 () Bool)

(assert (= b_lambda!49701 (or (and b!1579461 b_free!42665 (= (toChars!4321 (transformation!3059 (h!22762 rules!1846))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))))) (and b!1579477 b_free!42669) (and b!1579924 b_free!42681 (= (toChars!4321 (transformation!3059 (h!22762 (t!143608 rules!1846)))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))))) (and b!1579942 b_free!42685 (= (toChars!4321 (transformation!3059 (rule!4855 (h!22763 (t!143609 tokens!457))))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))))) b_lambda!49709)))

(declare-fun b_lambda!49711 () Bool)

(assert (= b_lambda!49703 (or (and b!1579461 b_free!42665 (= (toChars!4321 (transformation!3059 (h!22762 rules!1846))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))))) (and b!1579477 b_free!42669) (and b!1579924 b_free!42681 (= (toChars!4321 (transformation!3059 (h!22762 (t!143608 rules!1846)))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))))) (and b!1579942 b_free!42685 (= (toChars!4321 (transformation!3059 (rule!4855 (h!22763 (t!143609 tokens!457))))) (toChars!4321 (transformation!3059 (rule!4855 (h!22763 tokens!457)))))) b_lambda!49711)))

(check-sat (not b!1579778) (not b_next!43371) (not d!469228) (not d!469196) (not d!469200) (not b!1579923) (not b!1579602) (not b!1579801) (not b!1579743) (not d!469240) (not b!1579786) (not b_lambda!49711) (not b!1579793) (not b!1579807) (not d!469284) (not b!1579538) (not b!1579601) (not b_next!43383) (not d!469310) (not b!1579539) (not b!1579892) (not d!469278) (not d!469172) (not d!469234) (not b!1579735) (not b!1579614) (not b!1579797) (not d!469312) (not b!1579939) (not b!1579777) (not b!1579894) (not b!1579928) (not b!1579550) (not b!1579773) b_and!110691 (not d!469302) (not d!469248) (not b!1579774) (not d!469282) (not b!1579806) (not b!1579926) (not d!469232) b_and!110685 (not b!1579565) (not b!1579906) (not d!469296) (not d!469298) (not b!1579613) (not b!1579634) (not d!469202) (not d!469292) (not b!1579726) (not b!1579725) (not b!1579941) (not d!469300) (not b!1579882) (not b!1579566) (not d!469230) (not d!469306) (not b!1579908) (not d!469276) (not d!469286) (not d!469204) (not b_next!43367) (not b!1579881) (not bm!102681) (not d!469326) (not d!469180) b_and!110689 (not b!1579629) (not b!1579742) (not b!1579630) (not b!1579536) (not b_next!43369) (not b!1579632) (not d!469236) (not b!1579564) (not b!1579779) (not b!1579798) b_and!110653 (not d!469304) (not b!1579913) (not b!1579776) (not b_lambda!49709) (not d!469242) (not b_next!43385) (not tb!88827) (not d!469244) b_and!110673 (not b_next!43387) (not b!1579600) (not d!469246) (not d!469222) b_and!110657 (not b!1579744) (not d!469288) (not b!1579907) (not b!1579775) (not d!469238) (not b!1579635) (not b!1579745) (not b!1579619) (not b!1579636) (not b!1579549) (not b!1579771) (not b!1579748) (not d!469208) (not b_next!43373) (not b!1579940) b_and!110687 tp_is_empty!7177 b_and!110675 (not d!469280) (not b_next!43389) (not b!1579927) (not b!1579922) (not b!1579893) (not b!1579540) (not b!1579788) (not b!1579551))
(check-sat (not b_next!43371) (not b_next!43383) b_and!110691 b_and!110685 (not b_next!43367) b_and!110689 (not b_next!43369) b_and!110653 (not b_next!43385) (not b_next!43373) b_and!110687 b_and!110675 (not b_next!43389) b_and!110673 (not b_next!43387) b_and!110657)
