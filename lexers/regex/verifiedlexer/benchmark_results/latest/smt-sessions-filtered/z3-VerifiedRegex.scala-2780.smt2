; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!153378 () Bool)

(assert start!153378)

(declare-fun b!1619253 () Bool)

(declare-fun b_free!43607 () Bool)

(declare-fun b_next!44311 () Bool)

(assert (=> b!1619253 (= b_free!43607 (not b_next!44311))))

(declare-fun tp!471518 () Bool)

(declare-fun b_and!114861 () Bool)

(assert (=> b!1619253 (= tp!471518 b_and!114861)))

(declare-fun b_free!43609 () Bool)

(declare-fun b_next!44313 () Bool)

(assert (=> b!1619253 (= b_free!43609 (not b_next!44313))))

(declare-fun tp!471513 () Bool)

(declare-fun b_and!114863 () Bool)

(assert (=> b!1619253 (= tp!471513 b_and!114863)))

(declare-fun b!1619262 () Bool)

(declare-fun b_free!43611 () Bool)

(declare-fun b_next!44315 () Bool)

(assert (=> b!1619262 (= b_free!43611 (not b_next!44315))))

(declare-fun tp!471520 () Bool)

(declare-fun b_and!114865 () Bool)

(assert (=> b!1619262 (= tp!471520 b_and!114865)))

(declare-fun b_free!43613 () Bool)

(declare-fun b_next!44317 () Bool)

(assert (=> b!1619262 (= b_free!43613 (not b_next!44317))))

(declare-fun tp!471515 () Bool)

(declare-fun b_and!114867 () Bool)

(assert (=> b!1619262 (= tp!471515 b_and!114867)))

(declare-fun b!1619250 () Bool)

(declare-fun res!722920 () Bool)

(declare-fun e!1038536 () Bool)

(assert (=> b!1619250 (=> (not res!722920) (not e!1038536))))

(declare-datatypes ((C!9072 0))(
  ( (C!9073 (val!5132 Int)) )
))
(declare-datatypes ((List!17785 0))(
  ( (Nil!17715) (Cons!17715 (h!23116 C!9072) (t!148624 List!17785)) )
))
(declare-fun lt!581645 () List!17785)

(declare-datatypes ((List!17786 0))(
  ( (Nil!17716) (Cons!17716 (h!23117 (_ BitVec 16)) (t!148625 List!17786)) )
))
(declare-datatypes ((TokenValue!3211 0))(
  ( (FloatLiteralValue!6422 (text!22922 List!17786)) (TokenValueExt!3210 (__x!11724 Int)) (Broken!16055 (value!98595 List!17786)) (Object!3280) (End!3211) (Def!3211) (Underscore!3211) (Match!3211) (Else!3211) (Error!3211) (Case!3211) (If!3211) (Extends!3211) (Abstract!3211) (Class!3211) (Val!3211) (DelimiterValue!6422 (del!3271 List!17786)) (KeywordValue!3217 (value!98596 List!17786)) (CommentValue!6422 (value!98597 List!17786)) (WhitespaceValue!6422 (value!98598 List!17786)) (IndentationValue!3211 (value!98599 List!17786)) (String!20386) (Int32!3211) (Broken!16056 (value!98600 List!17786)) (Boolean!3212) (Unit!28584) (OperatorValue!3214 (op!3271 List!17786)) (IdentifierValue!6422 (value!98601 List!17786)) (IdentifierValue!6423 (value!98602 List!17786)) (WhitespaceValue!6423 (value!98603 List!17786)) (True!6422) (False!6422) (Broken!16057 (value!98604 List!17786)) (Broken!16058 (value!98605 List!17786)) (True!6423) (RightBrace!3211) (RightBracket!3211) (Colon!3211) (Null!3211) (Comma!3211) (LeftBracket!3211) (False!6423) (LeftBrace!3211) (ImaginaryLiteralValue!3211 (text!22923 List!17786)) (StringLiteralValue!9633 (value!98606 List!17786)) (EOFValue!3211 (value!98607 List!17786)) (IdentValue!3211 (value!98608 List!17786)) (DelimiterValue!6423 (value!98609 List!17786)) (DedentValue!3211 (value!98610 List!17786)) (NewLineValue!3211 (value!98611 List!17786)) (IntegerValue!9633 (value!98612 (_ BitVec 32)) (text!22924 List!17786)) (IntegerValue!9634 (value!98613 Int) (text!22925 List!17786)) (Times!3211) (Or!3211) (Equal!3211) (Minus!3211) (Broken!16059 (value!98614 List!17786)) (And!3211) (Div!3211) (LessEqual!3211) (Mod!3211) (Concat!7660) (Not!3211) (Plus!3211) (SpaceValue!3211 (value!98615 List!17786)) (IntegerValue!9635 (value!98616 Int) (text!22926 List!17786)) (StringLiteralValue!9634 (text!22927 List!17786)) (FloatLiteralValue!6423 (text!22928 List!17786)) (BytesLiteralValue!3211 (value!98617 List!17786)) (CommentValue!6423 (value!98618 List!17786)) (StringLiteralValue!9635 (value!98619 List!17786)) (ErrorTokenValue!3211 (msg!3272 List!17786)) )
))
(declare-datatypes ((IArray!11785 0))(
  ( (IArray!11786 (innerList!5950 List!17785)) )
))
(declare-datatypes ((Conc!5890 0))(
  ( (Node!5890 (left!14260 Conc!5890) (right!14590 Conc!5890) (csize!12010 Int) (cheight!6101 Int)) (Leaf!8671 (xs!8722 IArray!11785) (csize!12011 Int)) (Empty!5890) )
))
(declare-datatypes ((BalanceConc!11724 0))(
  ( (BalanceConc!11725 (c!263779 Conc!5890)) )
))
(declare-datatypes ((Regex!4449 0))(
  ( (ElementMatch!4449 (c!263780 C!9072)) (Concat!7661 (regOne!9410 Regex!4449) (regTwo!9410 Regex!4449)) (EmptyExpr!4449) (Star!4449 (reg!4778 Regex!4449)) (EmptyLang!4449) (Union!4449 (regOne!9411 Regex!4449) (regTwo!9411 Regex!4449)) )
))
(declare-datatypes ((String!20387 0))(
  ( (String!20388 (value!98620 String)) )
))
(declare-datatypes ((TokenValueInjection!6082 0))(
  ( (TokenValueInjection!6083 (toValue!4548 Int) (toChars!4407 Int)) )
))
(declare-datatypes ((Rule!6042 0))(
  ( (Rule!6043 (regex!3121 Regex!4449) (tag!3399 String!20387) (isSeparator!3121 Bool) (transformation!3121 TokenValueInjection!6082)) )
))
(declare-datatypes ((Token!5808 0))(
  ( (Token!5809 (value!98621 TokenValue!3211) (rule!4947 Rule!6042) (size!14212 Int) (originalCharacters!3935 List!17785)) )
))
(declare-datatypes ((List!17787 0))(
  ( (Nil!17717) (Cons!17717 (h!23118 Token!5808) (t!148626 List!17787)) )
))
(declare-fun tokens!457 () List!17787)

(declare-fun head!3372 (List!17785) C!9072)

(assert (=> b!1619250 (= res!722920 (= lt!581645 (Cons!17715 (head!3372 (originalCharacters!3935 (h!23118 (t!148626 tokens!457)))) Nil!17715)))))

(declare-fun b!1619251 () Bool)

(declare-fun res!722903 () Bool)

(declare-fun e!1038540 () Bool)

(assert (=> b!1619251 (=> res!722903 e!1038540)))

(declare-datatypes ((List!17788 0))(
  ( (Nil!17718) (Cons!17718 (h!23119 Rule!6042) (t!148627 List!17788)) )
))
(declare-fun rules!1846 () List!17788)

(declare-datatypes ((LexerInterface!2750 0))(
  ( (LexerInterfaceExt!2747 (__x!11725 Int)) (Lexer!2748) )
))
(declare-fun thiss!17113 () LexerInterface!2750)

(declare-fun rulesProduceIndividualToken!1402 (LexerInterface!2750 List!17788 Token!5808) Bool)

(assert (=> b!1619251 (= res!722903 (not (rulesProduceIndividualToken!1402 thiss!17113 rules!1846 (h!23118 tokens!457))))))

(declare-fun tp!471516 () Bool)

(declare-fun e!1038521 () Bool)

(declare-fun e!1038532 () Bool)

(declare-fun b!1619252 () Bool)

(declare-fun inv!23113 (String!20387) Bool)

(declare-fun inv!23116 (TokenValueInjection!6082) Bool)

(assert (=> b!1619252 (= e!1038532 (and tp!471516 (inv!23113 (tag!3399 (rule!4947 (h!23118 tokens!457)))) (inv!23116 (transformation!3121 (rule!4947 (h!23118 tokens!457)))) e!1038521))))

(declare-fun e!1038537 () Bool)

(assert (=> b!1619253 (= e!1038537 (and tp!471518 tp!471513))))

(declare-fun b!1619254 () Bool)

(declare-fun e!1038524 () Bool)

(declare-fun e!1038530 () Bool)

(declare-fun tp!471514 () Bool)

(assert (=> b!1619254 (= e!1038524 (and e!1038530 tp!471514))))

(declare-fun b!1619255 () Bool)

(declare-fun e!1038528 () Bool)

(declare-fun e!1038520 () Bool)

(assert (=> b!1619255 (= e!1038528 e!1038520)))

(declare-fun res!722901 () Bool)

(assert (=> b!1619255 (=> res!722901 e!1038520)))

(declare-datatypes ((tuple2!17258 0))(
  ( (tuple2!17259 (_1!10031 Token!5808) (_2!10031 BalanceConc!11724)) )
))
(declare-datatypes ((Option!3253 0))(
  ( (None!3252) (Some!3252 (v!24251 tuple2!17258)) )
))
(declare-fun isDefined!2620 (Option!3253) Bool)

(declare-fun maxPrefixZipperSequence!645 (LexerInterface!2750 List!17788 BalanceConc!11724) Option!3253)

(declare-fun seqFromList!1991 (List!17785) BalanceConc!11724)

(assert (=> b!1619255 (= res!722901 (not (isDefined!2620 (maxPrefixZipperSequence!645 thiss!17113 rules!1846 (seqFromList!1991 (originalCharacters!3935 (h!23118 tokens!457)))))))))

(assert (=> b!1619255 e!1038536))

(declare-fun res!722912 () Bool)

(assert (=> b!1619255 (=> (not res!722912) (not e!1038536))))

(declare-fun lt!581642 () List!17785)

(assert (=> b!1619255 (= res!722912 (= lt!581642 (originalCharacters!3935 (h!23118 tokens!457))))))

(declare-fun b!1619256 () Bool)

(declare-fun e!1038526 () Bool)

(declare-fun e!1038533 () Bool)

(assert (=> b!1619256 (= e!1038526 e!1038533)))

(declare-fun res!722910 () Bool)

(assert (=> b!1619256 (=> (not res!722910) (not e!1038533))))

(declare-fun lt!581647 () List!17785)

(declare-fun lt!581634 () List!17785)

(assert (=> b!1619256 (= res!722910 (= lt!581647 lt!581634))))

(declare-fun lt!581651 () List!17785)

(declare-fun ++!4689 (List!17785 List!17785) List!17785)

(assert (=> b!1619256 (= lt!581634 (++!4689 lt!581642 lt!581651))))

(declare-fun lt!581648 () BalanceConc!11724)

(declare-fun list!6935 (BalanceConc!11724) List!17785)

(assert (=> b!1619256 (= lt!581647 (list!6935 lt!581648))))

(declare-fun lt!581640 () BalanceConc!11724)

(assert (=> b!1619256 (= lt!581651 (list!6935 lt!581640))))

(declare-fun lt!581631 () BalanceConc!11724)

(assert (=> b!1619256 (= lt!581642 (list!6935 lt!581631))))

(declare-fun charsOf!1770 (Token!5808) BalanceConc!11724)

(assert (=> b!1619256 (= lt!581631 (charsOf!1770 (h!23118 tokens!457)))))

(declare-datatypes ((IArray!11787 0))(
  ( (IArray!11788 (innerList!5951 List!17787)) )
))
(declare-datatypes ((Conc!5891 0))(
  ( (Node!5891 (left!14261 Conc!5891) (right!14591 Conc!5891) (csize!12012 Int) (cheight!6102 Int)) (Leaf!8672 (xs!8723 IArray!11787) (csize!12013 Int)) (Empty!5891) )
))
(declare-datatypes ((BalanceConc!11726 0))(
  ( (BalanceConc!11727 (c!263781 Conc!5891)) )
))
(declare-datatypes ((tuple2!17260 0))(
  ( (tuple2!17261 (_1!10032 BalanceConc!11726) (_2!10032 BalanceConc!11724)) )
))
(declare-fun lt!581643 () tuple2!17260)

(declare-fun lex!1234 (LexerInterface!2750 List!17788 BalanceConc!11724) tuple2!17260)

(assert (=> b!1619256 (= lt!581643 (lex!1234 thiss!17113 rules!1846 lt!581640))))

(declare-fun lt!581636 () BalanceConc!11726)

(declare-fun print!1281 (LexerInterface!2750 BalanceConc!11726) BalanceConc!11724)

(assert (=> b!1619256 (= lt!581640 (print!1281 thiss!17113 lt!581636))))

(declare-fun seqFromList!1992 (List!17787) BalanceConc!11726)

(assert (=> b!1619256 (= lt!581636 (seqFromList!1992 (t!148626 tokens!457)))))

(assert (=> b!1619256 (= lt!581648 (print!1281 thiss!17113 (seqFromList!1992 tokens!457)))))

(declare-fun b!1619257 () Bool)

(declare-fun e!1038525 () Bool)

(assert (=> b!1619257 (= e!1038525 e!1038528)))

(declare-fun res!722905 () Bool)

(assert (=> b!1619257 (=> res!722905 e!1038528)))

(declare-fun lt!581655 () Regex!4449)

(declare-fun prefixMatch!384 (Regex!4449 List!17785) Bool)

(assert (=> b!1619257 (= res!722905 (prefixMatch!384 lt!581655 (++!4689 lt!581642 lt!581645)))))

(declare-fun lt!581635 () BalanceConc!11724)

(assert (=> b!1619257 (= lt!581645 (list!6935 lt!581635))))

(declare-fun b!1619259 () Bool)

(declare-fun e!1038535 () Bool)

(assert (=> b!1619259 (= e!1038535 e!1038525)))

(declare-fun res!722908 () Bool)

(assert (=> b!1619259 (=> res!722908 e!1038525)))

(declare-fun prefixMatchZipperSequence!497 (Regex!4449 BalanceConc!11724) Bool)

(declare-fun ++!4690 (BalanceConc!11724 BalanceConc!11724) BalanceConc!11724)

(assert (=> b!1619259 (= res!722908 (prefixMatchZipperSequence!497 lt!581655 (++!4690 lt!581631 lt!581635)))))

(declare-fun singletonSeq!1520 (C!9072) BalanceConc!11724)

(declare-fun apply!4474 (BalanceConc!11724 Int) C!9072)

(assert (=> b!1619259 (= lt!581635 (singletonSeq!1520 (apply!4474 (charsOf!1770 (h!23118 (t!148626 tokens!457))) 0)))))

(declare-fun rulesRegex!511 (LexerInterface!2750 List!17788) Regex!4449)

(assert (=> b!1619259 (= lt!581655 (rulesRegex!511 thiss!17113 rules!1846))))

(declare-fun b!1619260 () Bool)

(declare-fun head!3373 (BalanceConc!11724) C!9072)

(assert (=> b!1619260 (= e!1038536 (= lt!581645 (Cons!17715 (head!3373 lt!581640) Nil!17715)))))

(declare-fun b!1619261 () Bool)

(declare-fun res!722907 () Bool)

(assert (=> b!1619261 (=> (not res!722907) (not e!1038526))))

(declare-fun isEmpty!10735 (List!17788) Bool)

(assert (=> b!1619261 (= res!722907 (not (isEmpty!10735 rules!1846)))))

(assert (=> b!1619262 (= e!1038521 (and tp!471520 tp!471515))))

(declare-fun b!1619263 () Bool)

(declare-fun e!1038538 () Bool)

(assert (=> b!1619263 (= e!1038538 e!1038540)))

(declare-fun res!722906 () Bool)

(assert (=> b!1619263 (=> res!722906 e!1038540)))

(declare-fun lt!581641 () List!17785)

(declare-fun lt!581656 () List!17785)

(assert (=> b!1619263 (= res!722906 (or (not (= lt!581641 lt!581656)) (not (= lt!581656 lt!581642)) (not (= lt!581641 lt!581642))))))

(declare-fun printList!865 (LexerInterface!2750 List!17787) List!17785)

(assert (=> b!1619263 (= lt!581656 (printList!865 thiss!17113 (Cons!17717 (h!23118 tokens!457) Nil!17717)))))

(declare-fun lt!581650 () BalanceConc!11724)

(assert (=> b!1619263 (= lt!581641 (list!6935 lt!581650))))

(declare-fun lt!581649 () BalanceConc!11726)

(declare-fun printTailRec!803 (LexerInterface!2750 BalanceConc!11726 Int BalanceConc!11724) BalanceConc!11724)

(assert (=> b!1619263 (= lt!581650 (printTailRec!803 thiss!17113 lt!581649 0 (BalanceConc!11725 Empty!5890)))))

(assert (=> b!1619263 (= lt!581650 (print!1281 thiss!17113 lt!581649))))

(declare-fun singletonSeq!1521 (Token!5808) BalanceConc!11726)

(assert (=> b!1619263 (= lt!581649 (singletonSeq!1521 (h!23118 tokens!457)))))

(declare-datatypes ((tuple2!17262 0))(
  ( (tuple2!17263 (_1!10033 Token!5808) (_2!10033 List!17785)) )
))
(declare-datatypes ((Option!3254 0))(
  ( (None!3253) (Some!3253 (v!24252 tuple2!17262)) )
))
(declare-fun lt!581637 () Option!3254)

(declare-fun maxPrefix!1314 (LexerInterface!2750 List!17788 List!17785) Option!3254)

(assert (=> b!1619263 (= lt!581637 (maxPrefix!1314 thiss!17113 rules!1846 lt!581647))))

(declare-fun b!1619264 () Bool)

(declare-fun res!722913 () Bool)

(assert (=> b!1619264 (=> (not res!722913) (not e!1038526))))

(get-info :version)

(assert (=> b!1619264 (= res!722913 (and (not ((_ is Nil!17717) tokens!457)) (not ((_ is Nil!17717) (t!148626 tokens!457)))))))

(declare-fun b!1619265 () Bool)

(declare-fun e!1038531 () Bool)

(assert (=> b!1619265 (= e!1038533 (not e!1038531))))

(declare-fun res!722919 () Bool)

(assert (=> b!1619265 (=> res!722919 e!1038531)))

(declare-fun lt!581639 () List!17787)

(assert (=> b!1619265 (= res!722919 (not (= lt!581639 (t!148626 tokens!457))))))

(declare-fun list!6936 (BalanceConc!11726) List!17787)

(assert (=> b!1619265 (= lt!581639 (list!6936 (_1!10032 lt!581643)))))

(declare-datatypes ((Unit!28585 0))(
  ( (Unit!28586) )
))
(declare-fun lt!581646 () Unit!28585)

(declare-fun theoremInvertabilityWhenTokenListSeparable!195 (LexerInterface!2750 List!17788 List!17787) Unit!28585)

(assert (=> b!1619265 (= lt!581646 (theoremInvertabilityWhenTokenListSeparable!195 thiss!17113 rules!1846 (t!148626 tokens!457)))))

(declare-fun isPrefix!1381 (List!17785 List!17785) Bool)

(assert (=> b!1619265 (isPrefix!1381 lt!581642 lt!581634)))

(declare-fun lt!581638 () Unit!28585)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!906 (List!17785 List!17785) Unit!28585)

(assert (=> b!1619265 (= lt!581638 (lemmaConcatTwoListThenFirstIsPrefix!906 lt!581642 lt!581651))))

(declare-fun b!1619266 () Bool)

(declare-fun res!722915 () Bool)

(declare-fun e!1038529 () Bool)

(assert (=> b!1619266 (=> (not res!722915) (not e!1038529))))

(declare-fun lt!581633 () tuple2!17262)

(declare-fun isEmpty!10736 (List!17785) Bool)

(assert (=> b!1619266 (= res!722915 (isEmpty!10736 (_2!10033 lt!581633)))))

(declare-fun b!1619267 () Bool)

(declare-fun tp!471517 () Bool)

(declare-fun e!1038539 () Bool)

(declare-fun e!1038523 () Bool)

(declare-fun inv!23117 (Token!5808) Bool)

(assert (=> b!1619267 (= e!1038539 (and (inv!23117 (h!23118 tokens!457)) e!1038523 tp!471517))))

(declare-fun tp!471519 () Bool)

(declare-fun b!1619268 () Bool)

(declare-fun inv!21 (TokenValue!3211) Bool)

(assert (=> b!1619268 (= e!1038523 (and (inv!21 (value!98621 (h!23118 tokens!457))) e!1038532 tp!471519))))

(declare-fun b!1619269 () Bool)

(assert (=> b!1619269 (= e!1038531 e!1038538)))

(declare-fun res!722916 () Bool)

(assert (=> b!1619269 (=> res!722916 e!1038538)))

(declare-fun lt!581644 () List!17787)

(declare-fun lt!581632 () List!17787)

(assert (=> b!1619269 (= res!722916 (or (not (= lt!581639 lt!581632)) (not (= lt!581632 lt!581644))))))

(assert (=> b!1619269 (= lt!581632 (list!6936 lt!581636))))

(assert (=> b!1619269 (= lt!581639 lt!581644)))

(declare-fun prepend!635 (BalanceConc!11726 Token!5808) BalanceConc!11726)

(assert (=> b!1619269 (= lt!581644 (list!6936 (prepend!635 (seqFromList!1992 (t!148626 (t!148626 tokens!457))) (h!23118 (t!148626 tokens!457)))))))

(declare-fun lt!581653 () Unit!28585)

(declare-fun seqFromListBHdTlConstructive!198 (Token!5808 List!17787 BalanceConc!11726) Unit!28585)

(assert (=> b!1619269 (= lt!581653 (seqFromListBHdTlConstructive!198 (h!23118 (t!148626 tokens!457)) (t!148626 (t!148626 tokens!457)) (_1!10032 lt!581643)))))

(declare-fun b!1619270 () Bool)

(declare-fun tp!471512 () Bool)

(assert (=> b!1619270 (= e!1038530 (and tp!471512 (inv!23113 (tag!3399 (h!23119 rules!1846))) (inv!23116 (transformation!3121 (h!23119 rules!1846))) e!1038537))))

(declare-fun b!1619271 () Bool)

(declare-fun res!722911 () Bool)

(assert (=> b!1619271 (=> (not res!722911) (not e!1038526))))

(declare-fun rulesProduceEachTokenIndividuallyList!952 (LexerInterface!2750 List!17788 List!17787) Bool)

(assert (=> b!1619271 (= res!722911 (rulesProduceEachTokenIndividuallyList!952 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1619272 () Bool)

(declare-fun matchR!1948 (Regex!4449 List!17785) Bool)

(assert (=> b!1619272 (= e!1038529 (matchR!1948 (regex!3121 (rule!4947 (h!23118 tokens!457))) lt!581642))))

(declare-fun b!1619273 () Bool)

(assert (=> b!1619273 (= e!1038520 true)))

(assert (=> b!1619273 e!1038529))

(declare-fun res!722902 () Bool)

(assert (=> b!1619273 (=> (not res!722902) (not e!1038529))))

(assert (=> b!1619273 (= res!722902 (= (_1!10033 lt!581633) (h!23118 tokens!457)))))

(declare-fun lt!581652 () Option!3254)

(declare-fun get!5086 (Option!3254) tuple2!17262)

(assert (=> b!1619273 (= lt!581633 (get!5086 lt!581652))))

(declare-fun isDefined!2621 (Option!3254) Bool)

(assert (=> b!1619273 (isDefined!2621 lt!581652)))

(assert (=> b!1619273 (= lt!581652 (maxPrefix!1314 thiss!17113 rules!1846 lt!581642))))

(assert (=> b!1619273 (isDefined!2621 (maxPrefix!1314 thiss!17113 rules!1846 (originalCharacters!3935 (h!23118 tokens!457))))))

(declare-fun b!1619274 () Bool)

(declare-fun res!722918 () Bool)

(assert (=> b!1619274 (=> (not res!722918) (not e!1038526))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!443 (LexerInterface!2750 List!17787 List!17788) Bool)

(assert (=> b!1619274 (= res!722918 (tokensListTwoByTwoPredicateSeparableList!443 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1619275 () Bool)

(declare-fun res!722921 () Bool)

(assert (=> b!1619275 (=> (not res!722921) (not e!1038526))))

(declare-fun rulesInvariant!2419 (LexerInterface!2750 List!17788) Bool)

(assert (=> b!1619275 (= res!722921 (rulesInvariant!2419 thiss!17113 rules!1846))))

(declare-fun b!1619276 () Bool)

(assert (=> b!1619276 (= e!1038540 e!1038535)))

(declare-fun res!722914 () Bool)

(assert (=> b!1619276 (=> res!722914 e!1038535)))

(assert (=> b!1619276 (= res!722914 (not (isDefined!2621 lt!581637)))))

(declare-fun lt!581654 () Unit!28585)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!324 (LexerInterface!2750 List!17788 List!17785 List!17785) Unit!28585)

(assert (=> b!1619276 (= lt!581654 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!324 thiss!17113 rules!1846 lt!581642 lt!581651))))

(declare-fun b!1619258 () Bool)

(declare-fun res!722917 () Bool)

(assert (=> b!1619258 (=> res!722917 e!1038540)))

(declare-fun isEmpty!10737 (BalanceConc!11726) Bool)

(assert (=> b!1619258 (= res!722917 (isEmpty!10737 (_1!10032 (lex!1234 thiss!17113 rules!1846 (seqFromList!1991 lt!581642)))))))

(declare-fun res!722900 () Bool)

(assert (=> start!153378 (=> (not res!722900) (not e!1038526))))

(assert (=> start!153378 (= res!722900 ((_ is Lexer!2748) thiss!17113))))

(assert (=> start!153378 e!1038526))

(assert (=> start!153378 true))

(assert (=> start!153378 e!1038524))

(assert (=> start!153378 e!1038539))

(declare-fun b!1619277 () Bool)

(declare-fun res!722909 () Bool)

(assert (=> b!1619277 (=> res!722909 e!1038538)))

(declare-fun separableTokensPredicate!692 (LexerInterface!2750 Token!5808 Token!5808 List!17788) Bool)

(assert (=> b!1619277 (= res!722909 (not (separableTokensPredicate!692 thiss!17113 (h!23118 tokens!457) (h!23118 (t!148626 tokens!457)) rules!1846)))))

(declare-fun b!1619278 () Bool)

(declare-fun res!722904 () Bool)

(assert (=> b!1619278 (=> (not res!722904) (not e!1038536))))

(assert (=> b!1619278 (= res!722904 (= lt!581645 (Cons!17715 (head!3372 lt!581651) Nil!17715)))))

(assert (= (and start!153378 res!722900) b!1619261))

(assert (= (and b!1619261 res!722907) b!1619275))

(assert (= (and b!1619275 res!722921) b!1619271))

(assert (= (and b!1619271 res!722911) b!1619274))

(assert (= (and b!1619274 res!722918) b!1619264))

(assert (= (and b!1619264 res!722913) b!1619256))

(assert (= (and b!1619256 res!722910) b!1619265))

(assert (= (and b!1619265 (not res!722919)) b!1619269))

(assert (= (and b!1619269 (not res!722916)) b!1619277))

(assert (= (and b!1619277 (not res!722909)) b!1619263))

(assert (= (and b!1619263 (not res!722906)) b!1619251))

(assert (= (and b!1619251 (not res!722903)) b!1619258))

(assert (= (and b!1619258 (not res!722917)) b!1619276))

(assert (= (and b!1619276 (not res!722914)) b!1619259))

(assert (= (and b!1619259 (not res!722908)) b!1619257))

(assert (= (and b!1619257 (not res!722905)) b!1619255))

(assert (= (and b!1619255 res!722912) b!1619250))

(assert (= (and b!1619250 res!722920) b!1619278))

(assert (= (and b!1619278 res!722904) b!1619260))

(assert (= (and b!1619255 (not res!722901)) b!1619273))

(assert (= (and b!1619273 res!722902) b!1619266))

(assert (= (and b!1619266 res!722915) b!1619272))

(assert (= b!1619270 b!1619253))

(assert (= b!1619254 b!1619270))

(assert (= (and start!153378 ((_ is Cons!17718) rules!1846)) b!1619254))

(assert (= b!1619252 b!1619262))

(assert (= b!1619268 b!1619252))

(assert (= b!1619267 b!1619268))

(assert (= (and start!153378 ((_ is Cons!17717) tokens!457)) b!1619267))

(declare-fun m!1942769 () Bool)

(assert (=> b!1619258 m!1942769))

(assert (=> b!1619258 m!1942769))

(declare-fun m!1942771 () Bool)

(assert (=> b!1619258 m!1942771))

(declare-fun m!1942773 () Bool)

(assert (=> b!1619258 m!1942773))

(declare-fun m!1942775 () Bool)

(assert (=> b!1619274 m!1942775))

(declare-fun m!1942777 () Bool)

(assert (=> b!1619271 m!1942777))

(declare-fun m!1942779 () Bool)

(assert (=> b!1619272 m!1942779))

(declare-fun m!1942781 () Bool)

(assert (=> b!1619277 m!1942781))

(declare-fun m!1942783 () Bool)

(assert (=> b!1619275 m!1942783))

(declare-fun m!1942785 () Bool)

(assert (=> b!1619273 m!1942785))

(declare-fun m!1942787 () Bool)

(assert (=> b!1619273 m!1942787))

(declare-fun m!1942789 () Bool)

(assert (=> b!1619273 m!1942789))

(declare-fun m!1942791 () Bool)

(assert (=> b!1619273 m!1942791))

(declare-fun m!1942793 () Bool)

(assert (=> b!1619273 m!1942793))

(assert (=> b!1619273 m!1942787))

(declare-fun m!1942795 () Bool)

(assert (=> b!1619252 m!1942795))

(declare-fun m!1942797 () Bool)

(assert (=> b!1619252 m!1942797))

(declare-fun m!1942799 () Bool)

(assert (=> b!1619267 m!1942799))

(declare-fun m!1942801 () Bool)

(assert (=> b!1619250 m!1942801))

(declare-fun m!1942803 () Bool)

(assert (=> b!1619276 m!1942803))

(declare-fun m!1942805 () Bool)

(assert (=> b!1619276 m!1942805))

(declare-fun m!1942807 () Bool)

(assert (=> b!1619270 m!1942807))

(declare-fun m!1942809 () Bool)

(assert (=> b!1619270 m!1942809))

(declare-fun m!1942811 () Bool)

(assert (=> b!1619259 m!1942811))

(declare-fun m!1942813 () Bool)

(assert (=> b!1619259 m!1942813))

(declare-fun m!1942815 () Bool)

(assert (=> b!1619259 m!1942815))

(declare-fun m!1942817 () Bool)

(assert (=> b!1619259 m!1942817))

(assert (=> b!1619259 m!1942813))

(declare-fun m!1942819 () Bool)

(assert (=> b!1619259 m!1942819))

(declare-fun m!1942821 () Bool)

(assert (=> b!1619259 m!1942821))

(assert (=> b!1619259 m!1942815))

(assert (=> b!1619259 m!1942821))

(declare-fun m!1942823 () Bool)

(assert (=> b!1619265 m!1942823))

(declare-fun m!1942825 () Bool)

(assert (=> b!1619265 m!1942825))

(declare-fun m!1942827 () Bool)

(assert (=> b!1619265 m!1942827))

(declare-fun m!1942829 () Bool)

(assert (=> b!1619265 m!1942829))

(declare-fun m!1942831 () Bool)

(assert (=> b!1619260 m!1942831))

(declare-fun m!1942833 () Bool)

(assert (=> b!1619251 m!1942833))

(declare-fun m!1942835 () Bool)

(assert (=> b!1619261 m!1942835))

(declare-fun m!1942837 () Bool)

(assert (=> b!1619269 m!1942837))

(declare-fun m!1942839 () Bool)

(assert (=> b!1619269 m!1942839))

(declare-fun m!1942841 () Bool)

(assert (=> b!1619269 m!1942841))

(declare-fun m!1942843 () Bool)

(assert (=> b!1619269 m!1942843))

(declare-fun m!1942845 () Bool)

(assert (=> b!1619269 m!1942845))

(assert (=> b!1619269 m!1942841))

(assert (=> b!1619269 m!1942843))

(declare-fun m!1942847 () Bool)

(assert (=> b!1619257 m!1942847))

(assert (=> b!1619257 m!1942847))

(declare-fun m!1942849 () Bool)

(assert (=> b!1619257 m!1942849))

(declare-fun m!1942851 () Bool)

(assert (=> b!1619257 m!1942851))

(declare-fun m!1942853 () Bool)

(assert (=> b!1619263 m!1942853))

(declare-fun m!1942855 () Bool)

(assert (=> b!1619263 m!1942855))

(declare-fun m!1942857 () Bool)

(assert (=> b!1619263 m!1942857))

(declare-fun m!1942859 () Bool)

(assert (=> b!1619263 m!1942859))

(declare-fun m!1942861 () Bool)

(assert (=> b!1619263 m!1942861))

(declare-fun m!1942863 () Bool)

(assert (=> b!1619263 m!1942863))

(declare-fun m!1942865 () Bool)

(assert (=> b!1619255 m!1942865))

(assert (=> b!1619255 m!1942865))

(declare-fun m!1942867 () Bool)

(assert (=> b!1619255 m!1942867))

(assert (=> b!1619255 m!1942867))

(declare-fun m!1942869 () Bool)

(assert (=> b!1619255 m!1942869))

(declare-fun m!1942871 () Bool)

(assert (=> b!1619256 m!1942871))

(declare-fun m!1942873 () Bool)

(assert (=> b!1619256 m!1942873))

(declare-fun m!1942875 () Bool)

(assert (=> b!1619256 m!1942875))

(declare-fun m!1942877 () Bool)

(assert (=> b!1619256 m!1942877))

(declare-fun m!1942879 () Bool)

(assert (=> b!1619256 m!1942879))

(declare-fun m!1942881 () Bool)

(assert (=> b!1619256 m!1942881))

(declare-fun m!1942883 () Bool)

(assert (=> b!1619256 m!1942883))

(declare-fun m!1942885 () Bool)

(assert (=> b!1619256 m!1942885))

(assert (=> b!1619256 m!1942877))

(declare-fun m!1942887 () Bool)

(assert (=> b!1619256 m!1942887))

(declare-fun m!1942889 () Bool)

(assert (=> b!1619256 m!1942889))

(declare-fun m!1942891 () Bool)

(assert (=> b!1619278 m!1942891))

(declare-fun m!1942893 () Bool)

(assert (=> b!1619266 m!1942893))

(declare-fun m!1942895 () Bool)

(assert (=> b!1619268 m!1942895))

(check-sat (not b!1619260) b_and!114863 (not b_next!44317) (not b!1619269) (not b!1619278) (not b!1619261) (not b!1619250) (not b!1619271) (not b!1619275) (not b_next!44315) (not b!1619265) (not b!1619263) (not b!1619257) (not b!1619267) (not b!1619268) (not b!1619252) (not b!1619273) (not b!1619270) (not b!1619276) (not b_next!44313) (not b!1619259) (not b_next!44311) b_and!114861 (not b!1619258) b_and!114867 b_and!114865 (not b!1619254) (not b!1619256) (not b!1619277) (not b!1619274) (not b!1619251) (not b!1619266) (not b!1619255) (not b!1619272))
(check-sat b_and!114863 (not b_next!44317) b_and!114861 (not b_next!44315) (not b_next!44313) (not b_next!44311) b_and!114867 b_and!114865)
