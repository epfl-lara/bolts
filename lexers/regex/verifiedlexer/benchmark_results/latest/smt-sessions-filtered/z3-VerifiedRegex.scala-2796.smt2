; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155366 () Bool)

(assert start!155366)

(declare-fun b!1631065 () Bool)

(declare-fun b_free!44023 () Bool)

(declare-fun b_next!44727 () Bool)

(assert (=> b!1631065 (= b_free!44023 (not b_next!44727))))

(declare-fun tp!473528 () Bool)

(declare-fun b_and!115669 () Bool)

(assert (=> b!1631065 (= tp!473528 b_and!115669)))

(declare-fun b_free!44025 () Bool)

(declare-fun b_next!44729 () Bool)

(assert (=> b!1631065 (= b_free!44025 (not b_next!44729))))

(declare-fun tp!473536 () Bool)

(declare-fun b_and!115671 () Bool)

(assert (=> b!1631065 (= tp!473536 b_and!115671)))

(declare-fun b!1631074 () Bool)

(declare-fun b_free!44027 () Bool)

(declare-fun b_next!44731 () Bool)

(assert (=> b!1631074 (= b_free!44027 (not b_next!44731))))

(declare-fun tp!473535 () Bool)

(declare-fun b_and!115673 () Bool)

(assert (=> b!1631074 (= tp!473535 b_and!115673)))

(declare-fun b_free!44029 () Bool)

(declare-fun b_next!44733 () Bool)

(assert (=> b!1631074 (= b_free!44029 (not b_next!44733))))

(declare-fun tp!473530 () Bool)

(declare-fun b_and!115675 () Bool)

(assert (=> b!1631074 (= tp!473530 b_and!115675)))

(declare-fun b!1631046 () Bool)

(declare-fun e!1046016 () Bool)

(declare-fun e!1046019 () Bool)

(declare-fun tp!473531 () Bool)

(assert (=> b!1631046 (= e!1046016 (and e!1046019 tp!473531))))

(declare-fun b!1631047 () Bool)

(declare-fun res!729646 () Bool)

(declare-fun e!1046012 () Bool)

(assert (=> b!1631047 (=> (not res!729646) (not e!1046012))))

(declare-datatypes ((List!17967 0))(
  ( (Nil!17897) (Cons!17897 (h!23298 (_ BitVec 16)) (t!149466 List!17967)) )
))
(declare-datatypes ((TokenValue!3243 0))(
  ( (FloatLiteralValue!6486 (text!23146 List!17967)) (TokenValueExt!3242 (__x!11788 Int)) (Broken!16215 (value!99507 List!17967)) (Object!3312) (End!3243) (Def!3243) (Underscore!3243) (Match!3243) (Else!3243) (Error!3243) (Case!3243) (If!3243) (Extends!3243) (Abstract!3243) (Class!3243) (Val!3243) (DelimiterValue!6486 (del!3303 List!17967)) (KeywordValue!3249 (value!99508 List!17967)) (CommentValue!6486 (value!99509 List!17967)) (WhitespaceValue!6486 (value!99510 List!17967)) (IndentationValue!3243 (value!99511 List!17967)) (String!20546) (Int32!3243) (Broken!16216 (value!99512 List!17967)) (Boolean!3244) (Unit!29124) (OperatorValue!3246 (op!3303 List!17967)) (IdentifierValue!6486 (value!99513 List!17967)) (IdentifierValue!6487 (value!99514 List!17967)) (WhitespaceValue!6487 (value!99515 List!17967)) (True!6486) (False!6486) (Broken!16217 (value!99516 List!17967)) (Broken!16218 (value!99517 List!17967)) (True!6487) (RightBrace!3243) (RightBracket!3243) (Colon!3243) (Null!3243) (Comma!3243) (LeftBracket!3243) (False!6487) (LeftBrace!3243) (ImaginaryLiteralValue!3243 (text!23147 List!17967)) (StringLiteralValue!9729 (value!99518 List!17967)) (EOFValue!3243 (value!99519 List!17967)) (IdentValue!3243 (value!99520 List!17967)) (DelimiterValue!6487 (value!99521 List!17967)) (DedentValue!3243 (value!99522 List!17967)) (NewLineValue!3243 (value!99523 List!17967)) (IntegerValue!9729 (value!99524 (_ BitVec 32)) (text!23148 List!17967)) (IntegerValue!9730 (value!99525 Int) (text!23149 List!17967)) (Times!3243) (Or!3243) (Equal!3243) (Minus!3243) (Broken!16219 (value!99526 List!17967)) (And!3243) (Div!3243) (LessEqual!3243) (Mod!3243) (Concat!7724) (Not!3243) (Plus!3243) (SpaceValue!3243 (value!99527 List!17967)) (IntegerValue!9731 (value!99528 Int) (text!23150 List!17967)) (StringLiteralValue!9730 (text!23151 List!17967)) (FloatLiteralValue!6487 (text!23152 List!17967)) (BytesLiteralValue!3243 (value!99529 List!17967)) (CommentValue!6487 (value!99530 List!17967)) (StringLiteralValue!9731 (value!99531 List!17967)) (ErrorTokenValue!3243 (msg!3304 List!17967)) )
))
(declare-datatypes ((C!9136 0))(
  ( (C!9137 (val!5164 Int)) )
))
(declare-datatypes ((List!17968 0))(
  ( (Nil!17898) (Cons!17898 (h!23299 C!9136) (t!149467 List!17968)) )
))
(declare-datatypes ((IArray!11913 0))(
  ( (IArray!11914 (innerList!6014 List!17968)) )
))
(declare-datatypes ((Conc!5954 0))(
  ( (Node!5954 (left!14376 Conc!5954) (right!14706 Conc!5954) (csize!12138 Int) (cheight!6165 Int)) (Leaf!8751 (xs!8790 IArray!11913) (csize!12139 Int)) (Empty!5954) )
))
(declare-datatypes ((BalanceConc!11852 0))(
  ( (BalanceConc!11853 (c!265519 Conc!5954)) )
))
(declare-datatypes ((Regex!4481 0))(
  ( (ElementMatch!4481 (c!265520 C!9136)) (Concat!7725 (regOne!9474 Regex!4481) (regTwo!9474 Regex!4481)) (EmptyExpr!4481) (Star!4481 (reg!4810 Regex!4481)) (EmptyLang!4481) (Union!4481 (regOne!9475 Regex!4481) (regTwo!9475 Regex!4481)) )
))
(declare-datatypes ((String!20547 0))(
  ( (String!20548 (value!99532 String)) )
))
(declare-datatypes ((TokenValueInjection!6146 0))(
  ( (TokenValueInjection!6147 (toValue!4584 Int) (toChars!4443 Int)) )
))
(declare-datatypes ((Rule!6106 0))(
  ( (Rule!6107 (regex!3153 Regex!4481) (tag!3433 String!20547) (isSeparator!3153 Bool) (transformation!3153 TokenValueInjection!6146)) )
))
(declare-datatypes ((Token!5872 0))(
  ( (Token!5873 (value!99533 TokenValue!3243) (rule!4987 Rule!6106) (size!14308 Int) (originalCharacters!3967 List!17968)) )
))
(declare-datatypes ((List!17969 0))(
  ( (Nil!17899) (Cons!17899 (h!23300 Token!5872) (t!149468 List!17969)) )
))
(declare-fun tokens!457 () List!17969)

(get-info :version)

(assert (=> b!1631047 (= res!729646 (and (not ((_ is Nil!17899) tokens!457)) (not ((_ is Nil!17899) (t!149468 tokens!457)))))))

(declare-fun res!729639 () Bool)

(assert (=> start!155366 (=> (not res!729639) (not e!1046012))))

(declare-datatypes ((LexerInterface!2782 0))(
  ( (LexerInterfaceExt!2779 (__x!11789 Int)) (Lexer!2780) )
))
(declare-fun thiss!17113 () LexerInterface!2782)

(assert (=> start!155366 (= res!729639 ((_ is Lexer!2780) thiss!17113))))

(assert (=> start!155366 e!1046012))

(assert (=> start!155366 true))

(assert (=> start!155366 e!1046016))

(declare-fun e!1046020 () Bool)

(assert (=> start!155366 e!1046020))

(declare-fun b!1631048 () Bool)

(declare-fun res!729645 () Bool)

(assert (=> b!1631048 (=> (not res!729645) (not e!1046012))))

(declare-datatypes ((List!17970 0))(
  ( (Nil!17900) (Cons!17900 (h!23301 Rule!6106) (t!149469 List!17970)) )
))
(declare-fun rules!1846 () List!17970)

(declare-fun isEmpty!10931 (List!17970) Bool)

(assert (=> b!1631048 (= res!729645 (not (isEmpty!10931 rules!1846)))))

(declare-fun e!1046024 () Bool)

(declare-fun e!1046028 () Bool)

(declare-fun tp!473533 () Bool)

(declare-fun b!1631049 () Bool)

(declare-fun inv!21 (TokenValue!3243) Bool)

(assert (=> b!1631049 (= e!1046028 (and (inv!21 (value!99533 (h!23300 tokens!457))) e!1046024 tp!473533))))

(declare-fun e!1046007 () Bool)

(declare-fun b!1631050 () Bool)

(declare-fun tp!473534 () Bool)

(declare-fun inv!23267 (String!20547) Bool)

(declare-fun inv!23270 (TokenValueInjection!6146) Bool)

(assert (=> b!1631050 (= e!1046019 (and tp!473534 (inv!23267 (tag!3433 (h!23301 rules!1846))) (inv!23270 (transformation!3153 (h!23301 rules!1846))) e!1046007))))

(declare-fun b!1631051 () Bool)

(declare-fun res!729634 () Bool)

(declare-fun e!1046023 () Bool)

(assert (=> b!1631051 (=> (not res!729634) (not e!1046023))))

(declare-fun lt!591986 () List!17968)

(declare-fun head!3474 (List!17968) C!9136)

(assert (=> b!1631051 (= res!729634 (= lt!591986 (Cons!17898 (head!3474 (originalCharacters!3967 (h!23300 (t!149468 tokens!457)))) Nil!17898)))))

(declare-fun b!1631052 () Bool)

(declare-fun res!729638 () Bool)

(assert (=> b!1631052 (=> (not res!729638) (not e!1046012))))

(declare-fun rulesProduceEachTokenIndividuallyList!984 (LexerInterface!2782 List!17970 List!17969) Bool)

(assert (=> b!1631052 (= res!729638 (rulesProduceEachTokenIndividuallyList!984 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1631053 () Bool)

(declare-fun e!1046006 () Bool)

(declare-fun e!1046008 () Bool)

(assert (=> b!1631053 (= e!1046006 e!1046008)))

(declare-fun res!729648 () Bool)

(assert (=> b!1631053 (=> res!729648 e!1046008)))

(declare-datatypes ((tuple2!17494 0))(
  ( (tuple2!17495 (_1!10149 Token!5872) (_2!10149 BalanceConc!11852)) )
))
(declare-datatypes ((Option!3335 0))(
  ( (None!3334) (Some!3334 (v!24393 tuple2!17494)) )
))
(declare-fun isDefined!2702 (Option!3335) Bool)

(declare-fun maxPrefixZipperSequence!677 (LexerInterface!2782 List!17970 BalanceConc!11852) Option!3335)

(declare-fun seqFromList!2055 (List!17968) BalanceConc!11852)

(assert (=> b!1631053 (= res!729648 (not (isDefined!2702 (maxPrefixZipperSequence!677 thiss!17113 rules!1846 (seqFromList!2055 (originalCharacters!3967 (h!23300 tokens!457)))))))))

(declare-fun lt!591982 () List!17968)

(assert (=> b!1631053 (= lt!591986 lt!591982)))

(declare-fun lt!591987 () BalanceConc!11852)

(declare-fun head!3475 (BalanceConc!11852) C!9136)

(assert (=> b!1631053 (= lt!591982 (Cons!17898 (head!3475 lt!591987) Nil!17898))))

(assert (=> b!1631053 e!1046023))

(declare-fun res!729637 () Bool)

(assert (=> b!1631053 (=> (not res!729637) (not e!1046023))))

(declare-fun lt!591979 () List!17968)

(assert (=> b!1631053 (= res!729637 (= lt!591979 (originalCharacters!3967 (h!23300 tokens!457))))))

(declare-fun b!1631054 () Bool)

(declare-fun res!729628 () Bool)

(assert (=> b!1631054 (=> (not res!729628) (not e!1046012))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!475 (LexerInterface!2782 List!17969 List!17970) Bool)

(assert (=> b!1631054 (= res!729628 (tokensListTwoByTwoPredicateSeparableList!475 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1631055 () Bool)

(declare-fun res!729630 () Bool)

(declare-fun e!1046022 () Bool)

(assert (=> b!1631055 (=> (not res!729630) (not e!1046022))))

(declare-datatypes ((tuple2!17496 0))(
  ( (tuple2!17497 (_1!10150 Token!5872) (_2!10150 List!17968)) )
))
(declare-fun lt!591999 () tuple2!17496)

(declare-fun isEmpty!10932 (List!17968) Bool)

(assert (=> b!1631055 (= res!729630 (isEmpty!10932 (_2!10150 lt!591999)))))

(declare-fun b!1631056 () Bool)

(declare-fun res!729649 () Bool)

(declare-fun e!1046010 () Bool)

(assert (=> b!1631056 (=> res!729649 e!1046010)))

(declare-datatypes ((IArray!11915 0))(
  ( (IArray!11916 (innerList!6015 List!17969)) )
))
(declare-datatypes ((Conc!5955 0))(
  ( (Node!5955 (left!14377 Conc!5955) (right!14707 Conc!5955) (csize!12140 Int) (cheight!6166 Int)) (Leaf!8752 (xs!8791 IArray!11915) (csize!12141 Int)) (Empty!5955) )
))
(declare-datatypes ((BalanceConc!11854 0))(
  ( (BalanceConc!11855 (c!265521 Conc!5955)) )
))
(declare-fun isEmpty!10933 (BalanceConc!11854) Bool)

(declare-datatypes ((tuple2!17498 0))(
  ( (tuple2!17499 (_1!10151 BalanceConc!11854) (_2!10151 BalanceConc!11852)) )
))
(declare-fun lex!1266 (LexerInterface!2782 List!17970 BalanceConc!11852) tuple2!17498)

(assert (=> b!1631056 (= res!729649 (isEmpty!10933 (_1!10151 (lex!1266 thiss!17113 rules!1846 (seqFromList!2055 lt!591979)))))))

(declare-fun b!1631057 () Bool)

(declare-fun e!1046026 () Bool)

(assert (=> b!1631057 (= e!1046026 e!1046010)))

(declare-fun res!729626 () Bool)

(assert (=> b!1631057 (=> res!729626 e!1046010)))

(declare-fun lt!591988 () List!17968)

(declare-fun lt!591998 () List!17968)

(assert (=> b!1631057 (= res!729626 (or (not (= lt!591988 lt!591998)) (not (= lt!591998 lt!591979)) (not (= lt!591988 lt!591979))))))

(declare-fun printList!897 (LexerInterface!2782 List!17969) List!17968)

(assert (=> b!1631057 (= lt!591998 (printList!897 thiss!17113 (Cons!17899 (h!23300 tokens!457) Nil!17899)))))

(declare-fun lt!591991 () BalanceConc!11852)

(declare-fun list!7039 (BalanceConc!11852) List!17968)

(assert (=> b!1631057 (= lt!591988 (list!7039 lt!591991))))

(declare-fun lt!591983 () BalanceConc!11854)

(declare-fun printTailRec!835 (LexerInterface!2782 BalanceConc!11854 Int BalanceConc!11852) BalanceConc!11852)

(assert (=> b!1631057 (= lt!591991 (printTailRec!835 thiss!17113 lt!591983 0 (BalanceConc!11853 Empty!5954)))))

(declare-fun print!1313 (LexerInterface!2782 BalanceConc!11854) BalanceConc!11852)

(assert (=> b!1631057 (= lt!591991 (print!1313 thiss!17113 lt!591983))))

(declare-fun singletonSeq!1584 (Token!5872) BalanceConc!11854)

(assert (=> b!1631057 (= lt!591983 (singletonSeq!1584 (h!23300 tokens!457)))))

(declare-fun lt!591974 () List!17968)

(declare-datatypes ((Option!3336 0))(
  ( (None!3335) (Some!3335 (v!24394 tuple2!17496)) )
))
(declare-fun lt!591977 () Option!3336)

(declare-fun maxPrefix!1346 (LexerInterface!2782 List!17970 List!17968) Option!3336)

(assert (=> b!1631057 (= lt!591977 (maxPrefix!1346 thiss!17113 rules!1846 lt!591974))))

(declare-fun b!1631058 () Bool)

(declare-fun e!1046027 () Bool)

(assert (=> b!1631058 (= e!1046012 e!1046027)))

(declare-fun res!729627 () Bool)

(assert (=> b!1631058 (=> (not res!729627) (not e!1046027))))

(declare-fun lt!591981 () List!17968)

(assert (=> b!1631058 (= res!729627 (= lt!591974 lt!591981))))

(declare-fun lt!591976 () List!17968)

(declare-fun ++!4775 (List!17968 List!17968) List!17968)

(assert (=> b!1631058 (= lt!591981 (++!4775 lt!591979 lt!591976))))

(declare-fun lt!591997 () BalanceConc!11852)

(assert (=> b!1631058 (= lt!591974 (list!7039 lt!591997))))

(assert (=> b!1631058 (= lt!591976 (list!7039 lt!591987))))

(declare-fun lt!591989 () BalanceConc!11852)

(assert (=> b!1631058 (= lt!591979 (list!7039 lt!591989))))

(declare-fun charsOf!1802 (Token!5872) BalanceConc!11852)

(assert (=> b!1631058 (= lt!591989 (charsOf!1802 (h!23300 tokens!457)))))

(declare-fun lt!591973 () tuple2!17498)

(assert (=> b!1631058 (= lt!591973 (lex!1266 thiss!17113 rules!1846 lt!591987))))

(declare-fun lt!592000 () BalanceConc!11854)

(assert (=> b!1631058 (= lt!591987 (print!1313 thiss!17113 lt!592000))))

(declare-fun seqFromList!2056 (List!17969) BalanceConc!11854)

(assert (=> b!1631058 (= lt!592000 (seqFromList!2056 (t!149468 tokens!457)))))

(assert (=> b!1631058 (= lt!591997 (print!1313 thiss!17113 (seqFromList!2056 tokens!457)))))

(declare-fun b!1631059 () Bool)

(declare-fun res!729629 () Bool)

(declare-fun e!1046015 () Bool)

(assert (=> b!1631059 (=> res!729629 e!1046015)))

(declare-fun lt!591972 () Regex!4481)

(declare-fun prefixMatch!416 (Regex!4481 List!17968) Bool)

(assert (=> b!1631059 (= res!729629 (prefixMatch!416 lt!591972 (++!4775 lt!591979 lt!591982)))))

(declare-fun b!1631060 () Bool)

(declare-fun res!729633 () Bool)

(assert (=> b!1631060 (=> (not res!729633) (not e!1046012))))

(declare-fun rulesInvariant!2451 (LexerInterface!2782 List!17970) Bool)

(assert (=> b!1631060 (= res!729633 (rulesInvariant!2451 thiss!17113 rules!1846))))

(declare-fun b!1631061 () Bool)

(declare-fun e!1046014 () Bool)

(assert (=> b!1631061 (= e!1046014 true)))

(declare-fun lt!591985 () Bool)

(declare-fun rulesValidInductive!978 (LexerInterface!2782 List!17970) Bool)

(assert (=> b!1631061 (= lt!591985 (rulesValidInductive!978 thiss!17113 rules!1846))))

(declare-fun b!1631062 () Bool)

(assert (=> b!1631062 (= e!1046008 e!1046015)))

(declare-fun res!729631 () Bool)

(assert (=> b!1631062 (=> res!729631 e!1046015)))

(assert (=> b!1631062 (= res!729631 (prefixMatch!416 lt!591972 (++!4775 (originalCharacters!3967 (h!23300 tokens!457)) lt!591982)))))

(assert (=> b!1631062 e!1046022))

(declare-fun res!729635 () Bool)

(assert (=> b!1631062 (=> (not res!729635) (not e!1046022))))

(assert (=> b!1631062 (= res!729635 (= (_1!10150 lt!591999) (h!23300 tokens!457)))))

(declare-fun lt!591990 () Option!3336)

(declare-fun get!5170 (Option!3336) tuple2!17496)

(assert (=> b!1631062 (= lt!591999 (get!5170 lt!591990))))

(declare-fun isDefined!2703 (Option!3336) Bool)

(assert (=> b!1631062 (isDefined!2703 lt!591990)))

(assert (=> b!1631062 (= lt!591990 (maxPrefix!1346 thiss!17113 rules!1846 lt!591979))))

(assert (=> b!1631062 (isDefined!2703 (maxPrefix!1346 thiss!17113 rules!1846 (originalCharacters!3967 (h!23300 tokens!457))))))

(declare-fun b!1631063 () Bool)

(declare-fun e!1046018 () Bool)

(declare-fun e!1046017 () Bool)

(assert (=> b!1631063 (= e!1046018 e!1046017)))

(declare-fun res!729642 () Bool)

(assert (=> b!1631063 (=> res!729642 e!1046017)))

(declare-fun lt!591994 () BalanceConc!11852)

(declare-fun prefixMatchZipperSequence!547 (Regex!4481 BalanceConc!11852) Bool)

(declare-fun ++!4776 (BalanceConc!11852 BalanceConc!11852) BalanceConc!11852)

(assert (=> b!1631063 (= res!729642 (prefixMatchZipperSequence!547 lt!591972 (++!4776 lt!591989 lt!591994)))))

(declare-fun singletonSeq!1585 (C!9136) BalanceConc!11852)

(declare-fun apply!4600 (BalanceConc!11852 Int) C!9136)

(assert (=> b!1631063 (= lt!591994 (singletonSeq!1585 (apply!4600 (charsOf!1802 (h!23300 (t!149468 tokens!457))) 0)))))

(declare-fun rulesRegex!543 (LexerInterface!2782 List!17970) Regex!4481)

(assert (=> b!1631063 (= lt!591972 (rulesRegex!543 thiss!17113 rules!1846))))

(declare-fun b!1631064 () Bool)

(assert (=> b!1631064 (= e!1046023 (= lt!591986 (Cons!17898 (head!3474 lt!591976) Nil!17898)))))

(declare-fun e!1046021 () Bool)

(assert (=> b!1631065 (= e!1046021 (and tp!473528 tp!473536))))

(declare-fun b!1631066 () Bool)

(assert (=> b!1631066 (= e!1046010 e!1046018)))

(declare-fun res!729636 () Bool)

(assert (=> b!1631066 (=> res!729636 e!1046018)))

(assert (=> b!1631066 (= res!729636 (not (isDefined!2703 lt!591977)))))

(declare-datatypes ((Unit!29125 0))(
  ( (Unit!29126) )
))
(declare-fun lt!591995 () Unit!29125)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!356 (LexerInterface!2782 List!17970 List!17968 List!17968) Unit!29125)

(assert (=> b!1631066 (= lt!591995 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!356 thiss!17113 rules!1846 lt!591979 lt!591976))))

(declare-fun b!1631067 () Bool)

(declare-fun res!729643 () Bool)

(assert (=> b!1631067 (=> res!729643 e!1046010)))

(declare-fun rulesProduceIndividualToken!1434 (LexerInterface!2782 List!17970 Token!5872) Bool)

(assert (=> b!1631067 (= res!729643 (not (rulesProduceIndividualToken!1434 thiss!17113 rules!1846 (h!23300 tokens!457))))))

(declare-fun b!1631068 () Bool)

(assert (=> b!1631068 (= e!1046017 e!1046006)))

(declare-fun res!729641 () Bool)

(assert (=> b!1631068 (=> res!729641 e!1046006)))

(assert (=> b!1631068 (= res!729641 (prefixMatch!416 lt!591972 (++!4775 lt!591979 lt!591986)))))

(assert (=> b!1631068 (= lt!591986 (list!7039 lt!591994))))

(declare-fun b!1631069 () Bool)

(declare-fun matchR!1980 (Regex!4481 List!17968) Bool)

(assert (=> b!1631069 (= e!1046022 (matchR!1980 (regex!3153 (rule!4987 (h!23300 tokens!457))) lt!591979))))

(declare-fun b!1631070 () Bool)

(declare-fun e!1046011 () Bool)

(assert (=> b!1631070 (= e!1046027 (not e!1046011))))

(declare-fun res!729632 () Bool)

(assert (=> b!1631070 (=> res!729632 e!1046011)))

(declare-fun lt!591975 () List!17969)

(assert (=> b!1631070 (= res!729632 (not (= lt!591975 (t!149468 tokens!457))))))

(declare-fun list!7040 (BalanceConc!11854) List!17969)

(assert (=> b!1631070 (= lt!591975 (list!7040 (_1!10151 lt!591973)))))

(declare-fun lt!591971 () Unit!29125)

(declare-fun theoremInvertabilityWhenTokenListSeparable!227 (LexerInterface!2782 List!17970 List!17969) Unit!29125)

(assert (=> b!1631070 (= lt!591971 (theoremInvertabilityWhenTokenListSeparable!227 thiss!17113 rules!1846 (t!149468 tokens!457)))))

(declare-fun isPrefix!1413 (List!17968 List!17968) Bool)

(assert (=> b!1631070 (isPrefix!1413 lt!591979 lt!591981)))

(declare-fun lt!591984 () Unit!29125)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!938 (List!17968 List!17968) Unit!29125)

(assert (=> b!1631070 (= lt!591984 (lemmaConcatTwoListThenFirstIsPrefix!938 lt!591979 lt!591976))))

(declare-fun b!1631071 () Bool)

(assert (=> b!1631071 (= e!1046015 e!1046014)))

(declare-fun res!729647 () Bool)

(assert (=> b!1631071 (=> res!729647 e!1046014)))

(declare-fun lt!591992 () tuple2!17496)

(assert (=> b!1631071 (= res!729647 (or (not (= (_1!10150 lt!591992) (h!23300 tokens!457))) (not (= (_2!10150 lt!591992) lt!591976))))))

(assert (=> b!1631071 (= lt!591992 (get!5170 lt!591977))))

(declare-fun lt!591996 () Unit!29125)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!118 (LexerInterface!2782 List!17970 Token!5872 Rule!6106 List!17968) Unit!29125)

(assert (=> b!1631071 (= lt!591996 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!118 thiss!17113 rules!1846 (h!23300 tokens!457) (rule!4987 (h!23300 tokens!457)) lt!591976))))

(declare-fun b!1631072 () Bool)

(declare-fun tp!473532 () Bool)

(assert (=> b!1631072 (= e!1046024 (and tp!473532 (inv!23267 (tag!3433 (rule!4987 (h!23300 tokens!457)))) (inv!23270 (transformation!3153 (rule!4987 (h!23300 tokens!457)))) e!1046021))))

(declare-fun b!1631073 () Bool)

(assert (=> b!1631073 (= e!1046011 e!1046026)))

(declare-fun res!729644 () Bool)

(assert (=> b!1631073 (=> res!729644 e!1046026)))

(declare-fun lt!591980 () List!17969)

(declare-fun lt!591978 () List!17969)

(assert (=> b!1631073 (= res!729644 (or (not (= lt!591975 lt!591980)) (not (= lt!591980 lt!591978))))))

(assert (=> b!1631073 (= lt!591980 (list!7040 lt!592000))))

(assert (=> b!1631073 (= lt!591975 lt!591978)))

(declare-fun prepend!685 (BalanceConc!11854 Token!5872) BalanceConc!11854)

(assert (=> b!1631073 (= lt!591978 (list!7040 (prepend!685 (seqFromList!2056 (t!149468 (t!149468 tokens!457))) (h!23300 (t!149468 tokens!457)))))))

(declare-fun lt!591993 () Unit!29125)

(declare-fun seqFromListBHdTlConstructive!230 (Token!5872 List!17969 BalanceConc!11854) Unit!29125)

(assert (=> b!1631073 (= lt!591993 (seqFromListBHdTlConstructive!230 (h!23300 (t!149468 tokens!457)) (t!149468 (t!149468 tokens!457)) (_1!10151 lt!591973)))))

(assert (=> b!1631074 (= e!1046007 (and tp!473535 tp!473530))))

(declare-fun b!1631075 () Bool)

(declare-fun tp!473529 () Bool)

(declare-fun inv!23271 (Token!5872) Bool)

(assert (=> b!1631075 (= e!1046020 (and (inv!23271 (h!23300 tokens!457)) e!1046028 tp!473529))))

(declare-fun b!1631076 () Bool)

(declare-fun res!729640 () Bool)

(assert (=> b!1631076 (=> res!729640 e!1046026)))

(declare-fun separableTokensPredicate!724 (LexerInterface!2782 Token!5872 Token!5872 List!17970) Bool)

(assert (=> b!1631076 (= res!729640 (not (separableTokensPredicate!724 thiss!17113 (h!23300 tokens!457) (h!23300 (t!149468 tokens!457)) rules!1846)))))

(assert (= (and start!155366 res!729639) b!1631048))

(assert (= (and b!1631048 res!729645) b!1631060))

(assert (= (and b!1631060 res!729633) b!1631052))

(assert (= (and b!1631052 res!729638) b!1631054))

(assert (= (and b!1631054 res!729628) b!1631047))

(assert (= (and b!1631047 res!729646) b!1631058))

(assert (= (and b!1631058 res!729627) b!1631070))

(assert (= (and b!1631070 (not res!729632)) b!1631073))

(assert (= (and b!1631073 (not res!729644)) b!1631076))

(assert (= (and b!1631076 (not res!729640)) b!1631057))

(assert (= (and b!1631057 (not res!729626)) b!1631067))

(assert (= (and b!1631067 (not res!729643)) b!1631056))

(assert (= (and b!1631056 (not res!729649)) b!1631066))

(assert (= (and b!1631066 (not res!729636)) b!1631063))

(assert (= (and b!1631063 (not res!729642)) b!1631068))

(assert (= (and b!1631068 (not res!729641)) b!1631053))

(assert (= (and b!1631053 res!729637) b!1631051))

(assert (= (and b!1631051 res!729634) b!1631064))

(assert (= (and b!1631053 (not res!729648)) b!1631062))

(assert (= (and b!1631062 res!729635) b!1631055))

(assert (= (and b!1631055 res!729630) b!1631069))

(assert (= (and b!1631062 (not res!729631)) b!1631059))

(assert (= (and b!1631059 (not res!729629)) b!1631071))

(assert (= (and b!1631071 (not res!729647)) b!1631061))

(assert (= b!1631050 b!1631074))

(assert (= b!1631046 b!1631050))

(assert (= (and start!155366 ((_ is Cons!17900) rules!1846)) b!1631046))

(assert (= b!1631072 b!1631065))

(assert (= b!1631049 b!1631072))

(assert (= b!1631075 b!1631049))

(assert (= (and start!155366 ((_ is Cons!17899) tokens!457)) b!1631075))

(declare-fun m!1963947 () Bool)

(assert (=> b!1631048 m!1963947))

(declare-fun m!1963949 () Bool)

(assert (=> b!1631055 m!1963949))

(declare-fun m!1963951 () Bool)

(assert (=> b!1631057 m!1963951))

(declare-fun m!1963953 () Bool)

(assert (=> b!1631057 m!1963953))

(declare-fun m!1963955 () Bool)

(assert (=> b!1631057 m!1963955))

(declare-fun m!1963957 () Bool)

(assert (=> b!1631057 m!1963957))

(declare-fun m!1963959 () Bool)

(assert (=> b!1631057 m!1963959))

(declare-fun m!1963961 () Bool)

(assert (=> b!1631057 m!1963961))

(declare-fun m!1963963 () Bool)

(assert (=> b!1631049 m!1963963))

(declare-fun m!1963965 () Bool)

(assert (=> b!1631064 m!1963965))

(declare-fun m!1963967 () Bool)

(assert (=> b!1631050 m!1963967))

(declare-fun m!1963969 () Bool)

(assert (=> b!1631050 m!1963969))

(declare-fun m!1963971 () Bool)

(assert (=> b!1631070 m!1963971))

(declare-fun m!1963973 () Bool)

(assert (=> b!1631070 m!1963973))

(declare-fun m!1963975 () Bool)

(assert (=> b!1631070 m!1963975))

(declare-fun m!1963977 () Bool)

(assert (=> b!1631070 m!1963977))

(declare-fun m!1963979 () Bool)

(assert (=> b!1631060 m!1963979))

(declare-fun m!1963981 () Bool)

(assert (=> b!1631059 m!1963981))

(assert (=> b!1631059 m!1963981))

(declare-fun m!1963983 () Bool)

(assert (=> b!1631059 m!1963983))

(declare-fun m!1963985 () Bool)

(assert (=> b!1631062 m!1963985))

(declare-fun m!1963987 () Bool)

(assert (=> b!1631062 m!1963987))

(declare-fun m!1963989 () Bool)

(assert (=> b!1631062 m!1963989))

(declare-fun m!1963991 () Bool)

(assert (=> b!1631062 m!1963991))

(declare-fun m!1963993 () Bool)

(assert (=> b!1631062 m!1963993))

(declare-fun m!1963995 () Bool)

(assert (=> b!1631062 m!1963995))

(declare-fun m!1963997 () Bool)

(assert (=> b!1631062 m!1963997))

(assert (=> b!1631062 m!1963995))

(assert (=> b!1631062 m!1963991))

(declare-fun m!1963999 () Bool)

(assert (=> b!1631063 m!1963999))

(declare-fun m!1964001 () Bool)

(assert (=> b!1631063 m!1964001))

(declare-fun m!1964003 () Bool)

(assert (=> b!1631063 m!1964003))

(declare-fun m!1964005 () Bool)

(assert (=> b!1631063 m!1964005))

(declare-fun m!1964007 () Bool)

(assert (=> b!1631063 m!1964007))

(declare-fun m!1964009 () Bool)

(assert (=> b!1631063 m!1964009))

(assert (=> b!1631063 m!1964001))

(assert (=> b!1631063 m!1964009))

(assert (=> b!1631063 m!1964005))

(declare-fun m!1964011 () Bool)

(assert (=> b!1631069 m!1964011))

(declare-fun m!1964013 () Bool)

(assert (=> b!1631067 m!1964013))

(declare-fun m!1964015 () Bool)

(assert (=> b!1631075 m!1964015))

(declare-fun m!1964017 () Bool)

(assert (=> b!1631056 m!1964017))

(assert (=> b!1631056 m!1964017))

(declare-fun m!1964019 () Bool)

(assert (=> b!1631056 m!1964019))

(declare-fun m!1964021 () Bool)

(assert (=> b!1631056 m!1964021))

(declare-fun m!1964023 () Bool)

(assert (=> b!1631071 m!1964023))

(declare-fun m!1964025 () Bool)

(assert (=> b!1631071 m!1964025))

(declare-fun m!1964027 () Bool)

(assert (=> b!1631066 m!1964027))

(declare-fun m!1964029 () Bool)

(assert (=> b!1631066 m!1964029))

(declare-fun m!1964031 () Bool)

(assert (=> b!1631072 m!1964031))

(declare-fun m!1964033 () Bool)

(assert (=> b!1631072 m!1964033))

(declare-fun m!1964035 () Bool)

(assert (=> b!1631051 m!1964035))

(declare-fun m!1964037 () Bool)

(assert (=> b!1631061 m!1964037))

(declare-fun m!1964039 () Bool)

(assert (=> b!1631076 m!1964039))

(declare-fun m!1964041 () Bool)

(assert (=> b!1631054 m!1964041))

(declare-fun m!1964043 () Bool)

(assert (=> b!1631058 m!1964043))

(declare-fun m!1964045 () Bool)

(assert (=> b!1631058 m!1964045))

(declare-fun m!1964047 () Bool)

(assert (=> b!1631058 m!1964047))

(declare-fun m!1964049 () Bool)

(assert (=> b!1631058 m!1964049))

(declare-fun m!1964051 () Bool)

(assert (=> b!1631058 m!1964051))

(declare-fun m!1964053 () Bool)

(assert (=> b!1631058 m!1964053))

(declare-fun m!1964055 () Bool)

(assert (=> b!1631058 m!1964055))

(declare-fun m!1964057 () Bool)

(assert (=> b!1631058 m!1964057))

(assert (=> b!1631058 m!1964049))

(declare-fun m!1964059 () Bool)

(assert (=> b!1631058 m!1964059))

(declare-fun m!1964061 () Bool)

(assert (=> b!1631058 m!1964061))

(declare-fun m!1964063 () Bool)

(assert (=> b!1631068 m!1964063))

(assert (=> b!1631068 m!1964063))

(declare-fun m!1964065 () Bool)

(assert (=> b!1631068 m!1964065))

(declare-fun m!1964067 () Bool)

(assert (=> b!1631068 m!1964067))

(declare-fun m!1964069 () Bool)

(assert (=> b!1631073 m!1964069))

(declare-fun m!1964071 () Bool)

(assert (=> b!1631073 m!1964071))

(declare-fun m!1964073 () Bool)

(assert (=> b!1631073 m!1964073))

(declare-fun m!1964075 () Bool)

(assert (=> b!1631073 m!1964075))

(declare-fun m!1964077 () Bool)

(assert (=> b!1631073 m!1964077))

(assert (=> b!1631073 m!1964073))

(assert (=> b!1631073 m!1964075))

(declare-fun m!1964079 () Bool)

(assert (=> b!1631052 m!1964079))

(declare-fun m!1964081 () Bool)

(assert (=> b!1631053 m!1964081))

(assert (=> b!1631053 m!1964081))

(declare-fun m!1964083 () Bool)

(assert (=> b!1631053 m!1964083))

(assert (=> b!1631053 m!1964083))

(declare-fun m!1964085 () Bool)

(assert (=> b!1631053 m!1964085))

(declare-fun m!1964087 () Bool)

(assert (=> b!1631053 m!1964087))

(check-sat (not b!1631054) b_and!115671 (not b!1631070) (not b!1631071) (not b!1631058) (not b!1631060) (not b!1631059) (not b!1631076) (not b!1631057) (not b!1631049) (not b!1631064) (not b!1631050) (not b!1631056) (not b!1631072) b_and!115673 (not b!1631069) (not b!1631046) (not b!1631052) (not b!1631048) (not b!1631066) (not b!1631055) b_and!115669 (not b_next!44729) (not b!1631061) (not b!1631062) (not b!1631067) (not b!1631053) b_and!115675 (not b_next!44727) (not b!1631063) (not b_next!44731) (not b!1631073) (not b!1631075) (not b!1631068) (not b_next!44733) (not b!1631051))
(check-sat b_and!115671 b_and!115673 b_and!115669 (not b_next!44729) (not b_next!44731) (not b_next!44733) b_and!115675 (not b_next!44727))
