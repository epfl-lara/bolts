; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20326 () Bool)

(assert start!20326)

(declare-fun b!187356 () Bool)

(declare-fun b_free!7361 () Bool)

(declare-fun b_next!7361 () Bool)

(assert (=> b!187356 (= b_free!7361 (not b_next!7361))))

(declare-fun tp!87799 () Bool)

(declare-fun b_and!12917 () Bool)

(assert (=> b!187356 (= tp!87799 b_and!12917)))

(declare-fun b_free!7363 () Bool)

(declare-fun b_next!7363 () Bool)

(assert (=> b!187356 (= b_free!7363 (not b_next!7363))))

(declare-fun tp!87793 () Bool)

(declare-fun b_and!12919 () Bool)

(assert (=> b!187356 (= tp!87793 b_and!12919)))

(declare-fun b!187335 () Bool)

(declare-fun b_free!7365 () Bool)

(declare-fun b_next!7365 () Bool)

(assert (=> b!187335 (= b_free!7365 (not b_next!7365))))

(declare-fun tp!87794 () Bool)

(declare-fun b_and!12921 () Bool)

(assert (=> b!187335 (= tp!87794 b_and!12921)))

(declare-fun b_free!7367 () Bool)

(declare-fun b_next!7367 () Bool)

(assert (=> b!187335 (= b_free!7367 (not b_next!7367))))

(declare-fun tp!87797 () Bool)

(declare-fun b_and!12923 () Bool)

(assert (=> b!187335 (= tp!87797 b_and!12923)))

(declare-fun b!187339 () Bool)

(declare-fun b_free!7369 () Bool)

(declare-fun b_next!7369 () Bool)

(assert (=> b!187339 (= b_free!7369 (not b_next!7369))))

(declare-fun tp!87795 () Bool)

(declare-fun b_and!12925 () Bool)

(assert (=> b!187339 (= tp!87795 b_and!12925)))

(declare-fun b_free!7371 () Bool)

(declare-fun b_next!7371 () Bool)

(assert (=> b!187339 (= b_free!7371 (not b_next!7371))))

(declare-fun tp!87803 () Bool)

(declare-fun b_and!12927 () Bool)

(assert (=> b!187339 (= tp!87803 b_and!12927)))

(declare-fun bs!18622 () Bool)

(declare-fun b!187327 () Bool)

(declare-fun b!187333 () Bool)

(assert (= bs!18622 (and b!187327 b!187333)))

(declare-fun lambda!5670 () Int)

(declare-fun lambda!5669 () Int)

(assert (=> bs!18622 (not (= lambda!5670 lambda!5669))))

(declare-fun b!187372 () Bool)

(declare-fun e!114717 () Bool)

(assert (=> b!187372 (= e!114717 true)))

(declare-fun b!187371 () Bool)

(declare-fun e!114716 () Bool)

(assert (=> b!187371 (= e!114716 e!114717)))

(declare-fun b!187370 () Bool)

(declare-fun e!114715 () Bool)

(assert (=> b!187370 (= e!114715 e!114716)))

(assert (=> b!187327 e!114715))

(assert (= b!187371 b!187372))

(assert (= b!187370 b!187371))

(declare-datatypes ((List!3137 0))(
  ( (Nil!3127) (Cons!3127 (h!8524 (_ BitVec 16)) (t!28727 List!3137)) )
))
(declare-datatypes ((TokenValue!593 0))(
  ( (FloatLiteralValue!1186 (text!4596 List!3137)) (TokenValueExt!592 (__x!2673 Int)) (Broken!2965 (value!20563 List!3137)) (Object!602) (End!593) (Def!593) (Underscore!593) (Match!593) (Else!593) (Error!593) (Case!593) (If!593) (Extends!593) (Abstract!593) (Class!593) (Val!593) (DelimiterValue!1186 (del!653 List!3137)) (KeywordValue!599 (value!20564 List!3137)) (CommentValue!1186 (value!20565 List!3137)) (WhitespaceValue!1186 (value!20566 List!3137)) (IndentationValue!593 (value!20567 List!3137)) (String!4044) (Int32!593) (Broken!2966 (value!20568 List!3137)) (Boolean!594) (Unit!2915) (OperatorValue!596 (op!653 List!3137)) (IdentifierValue!1186 (value!20569 List!3137)) (IdentifierValue!1187 (value!20570 List!3137)) (WhitespaceValue!1187 (value!20571 List!3137)) (True!1186) (False!1186) (Broken!2967 (value!20572 List!3137)) (Broken!2968 (value!20573 List!3137)) (True!1187) (RightBrace!593) (RightBracket!593) (Colon!593) (Null!593) (Comma!593) (LeftBracket!593) (False!1187) (LeftBrace!593) (ImaginaryLiteralValue!593 (text!4597 List!3137)) (StringLiteralValue!1779 (value!20574 List!3137)) (EOFValue!593 (value!20575 List!3137)) (IdentValue!593 (value!20576 List!3137)) (DelimiterValue!1187 (value!20577 List!3137)) (DedentValue!593 (value!20578 List!3137)) (NewLineValue!593 (value!20579 List!3137)) (IntegerValue!1779 (value!20580 (_ BitVec 32)) (text!4598 List!3137)) (IntegerValue!1780 (value!20581 Int) (text!4599 List!3137)) (Times!593) (Or!593) (Equal!593) (Minus!593) (Broken!2969 (value!20582 List!3137)) (And!593) (Div!593) (LessEqual!593) (Mod!593) (Concat!1388) (Not!593) (Plus!593) (SpaceValue!593 (value!20583 List!3137)) (IntegerValue!1781 (value!20584 Int) (text!4600 List!3137)) (StringLiteralValue!1780 (text!4601 List!3137)) (FloatLiteralValue!1187 (text!4602 List!3137)) (BytesLiteralValue!593 (value!20585 List!3137)) (CommentValue!1187 (value!20586 List!3137)) (StringLiteralValue!1781 (value!20587 List!3137)) (ErrorTokenValue!593 (msg!654 List!3137)) )
))
(declare-datatypes ((C!2512 0))(
  ( (C!2513 (val!1142 Int)) )
))
(declare-datatypes ((List!3138 0))(
  ( (Nil!3128) (Cons!3128 (h!8525 C!2512) (t!28728 List!3138)) )
))
(declare-datatypes ((IArray!1929 0))(
  ( (IArray!1930 (innerList!1022 List!3138)) )
))
(declare-datatypes ((Conc!964 0))(
  ( (Node!964 (left!2448 Conc!964) (right!2778 Conc!964) (csize!2158 Int) (cheight!1175 Int)) (Leaf!1589 (xs!3559 IArray!1929) (csize!2159 Int)) (Empty!964) )
))
(declare-datatypes ((BalanceConc!1936 0))(
  ( (BalanceConc!1937 (c!36123 Conc!964)) )
))
(declare-datatypes ((TokenValueInjection!958 0))(
  ( (TokenValueInjection!959 (toValue!1242 Int) (toChars!1101 Int)) )
))
(declare-datatypes ((Regex!795 0))(
  ( (ElementMatch!795 (c!36124 C!2512)) (Concat!1389 (regOne!2102 Regex!795) (regTwo!2102 Regex!795)) (EmptyExpr!795) (Star!795 (reg!1124 Regex!795)) (EmptyLang!795) (Union!795 (regOne!2103 Regex!795) (regTwo!2103 Regex!795)) )
))
(declare-datatypes ((String!4045 0))(
  ( (String!4046 (value!20588 String)) )
))
(declare-datatypes ((Rule!942 0))(
  ( (Rule!943 (regex!571 Regex!795) (tag!749 String!4045) (isSeparator!571 Bool) (transformation!571 TokenValueInjection!958)) )
))
(declare-datatypes ((List!3139 0))(
  ( (Nil!3129) (Cons!3129 (h!8526 Rule!942) (t!28729 List!3139)) )
))
(declare-fun rules!1920 () List!3139)

(get-info :version)

(assert (= (and b!187327 ((_ is Cons!3129) rules!1920)) b!187370))

(declare-fun order!1903 () Int)

(declare-fun order!1901 () Int)

(declare-fun dynLambda!1299 (Int Int) Int)

(declare-fun dynLambda!1300 (Int Int) Int)

(assert (=> b!187372 (< (dynLambda!1299 order!1901 (toValue!1242 (transformation!571 (h!8526 rules!1920)))) (dynLambda!1300 order!1903 lambda!5670))))

(declare-fun order!1905 () Int)

(declare-fun dynLambda!1301 (Int Int) Int)

(assert (=> b!187372 (< (dynLambda!1301 order!1905 (toChars!1101 (transformation!571 (h!8526 rules!1920)))) (dynLambda!1300 order!1903 lambda!5670))))

(assert (=> b!187327 true))

(declare-fun b!187325 () Bool)

(declare-fun res!85461 () Bool)

(declare-fun e!114706 () Bool)

(assert (=> b!187325 (=> res!85461 e!114706)))

(declare-fun lt!63037 () List!3138)

(declare-fun isEmpty!1503 (List!3138) Bool)

(assert (=> b!187325 (= res!85461 (not (isEmpty!1503 lt!63037)))))

(declare-datatypes ((Token!886 0))(
  ( (Token!887 (value!20589 TokenValue!593) (rule!1086 Rule!942) (size!2525 Int) (originalCharacters!614 List!3138)) )
))
(declare-fun separatorToken!170 () Token!886)

(declare-fun tp!87791 () Bool)

(declare-fun e!114693 () Bool)

(declare-fun b!187326 () Bool)

(declare-fun e!114704 () Bool)

(declare-fun inv!3956 (String!4045) Bool)

(declare-fun inv!3959 (TokenValueInjection!958) Bool)

(assert (=> b!187326 (= e!114693 (and tp!87791 (inv!3956 (tag!749 (rule!1086 separatorToken!170))) (inv!3959 (transformation!571 (rule!1086 separatorToken!170))) e!114704))))

(declare-fun e!114684 () Bool)

(declare-fun e!114699 () Bool)

(assert (=> b!187327 (= e!114684 e!114699)))

(declare-fun res!85446 () Bool)

(assert (=> b!187327 (=> res!85446 e!114699)))

(declare-datatypes ((List!3140 0))(
  ( (Nil!3130) (Cons!3130 (h!8527 Token!886) (t!28730 List!3140)) )
))
(declare-fun tokens!465 () List!3140)

(declare-datatypes ((LexerInterface!457 0))(
  ( (LexerInterfaceExt!454 (__x!2674 Int)) (Lexer!455) )
))
(declare-fun thiss!17480 () LexerInterface!457)

(declare-datatypes ((tuple2!3166 0))(
  ( (tuple2!3167 (_1!1799 Token!886) (_2!1799 BalanceConc!1936)) )
))
(declare-datatypes ((Option!420 0))(
  ( (None!419) (Some!419 (v!13924 tuple2!3166)) )
))
(declare-fun isDefined!271 (Option!420) Bool)

(declare-fun maxPrefixZipperSequence!150 (LexerInterface!457 List!3139 BalanceConc!1936) Option!420)

(declare-fun seqFromList!519 (List!3138) BalanceConc!1936)

(assert (=> b!187327 (= res!85446 (not (isDefined!271 (maxPrefixZipperSequence!150 thiss!17480 rules!1920 (seqFromList!519 (originalCharacters!614 (h!8527 tokens!465)))))))))

(declare-datatypes ((Unit!2916 0))(
  ( (Unit!2917) )
))
(declare-fun lt!63034 () Unit!2916)

(declare-fun forallContained!138 (List!3140 Int Token!886) Unit!2916)

(assert (=> b!187327 (= lt!63034 (forallContained!138 tokens!465 lambda!5670 (h!8527 tokens!465)))))

(declare-fun lt!63047 () List!3138)

(assert (=> b!187327 (= lt!63047 (originalCharacters!614 (h!8527 tokens!465)))))

(declare-fun b!187328 () Bool)

(declare-fun e!114687 () Bool)

(declare-datatypes ((tuple2!3168 0))(
  ( (tuple2!3169 (_1!1800 Token!886) (_2!1800 List!3138)) )
))
(declare-datatypes ((Option!421 0))(
  ( (None!420) (Some!420 (v!13925 tuple2!3168)) )
))
(declare-fun lt!63052 () Option!421)

(declare-fun get!895 (Option!421) tuple2!3168)

(declare-fun head!658 (List!3140) Token!886)

(assert (=> b!187328 (= e!114687 (= (_1!1800 (get!895 lt!63052)) (head!658 tokens!465)))))

(declare-fun e!114691 () Bool)

(declare-fun b!187329 () Bool)

(declare-fun tp!87792 () Bool)

(declare-fun inv!21 (TokenValue!593) Bool)

(assert (=> b!187329 (= e!114691 (and (inv!21 (value!20589 separatorToken!170)) e!114693 tp!87792))))

(declare-fun b!187330 () Bool)

(declare-fun e!114708 () Bool)

(assert (=> b!187330 (= e!114708 e!114687)))

(declare-fun res!85465 () Bool)

(assert (=> b!187330 (=> (not res!85465) (not e!114687))))

(declare-fun isDefined!272 (Option!421) Bool)

(assert (=> b!187330 (= res!85465 (isDefined!272 lt!63052))))

(declare-fun lt!63040 () List!3138)

(declare-fun maxPrefix!187 (LexerInterface!457 List!3139 List!3138) Option!421)

(assert (=> b!187330 (= lt!63052 (maxPrefix!187 thiss!17480 rules!1920 lt!63040))))

(declare-fun b!187331 () Bool)

(declare-fun e!114701 () Bool)

(assert (=> b!187331 (= e!114699 e!114701)))

(declare-fun res!85453 () Bool)

(assert (=> b!187331 (=> res!85453 e!114701)))

(declare-fun lt!63033 () Bool)

(assert (=> b!187331 (= res!85453 (not lt!63033))))

(declare-fun e!114685 () Bool)

(assert (=> b!187331 e!114685))

(declare-fun res!85452 () Bool)

(assert (=> b!187331 (=> (not res!85452) (not e!114685))))

(declare-fun lt!63056 () tuple2!3168)

(assert (=> b!187331 (= res!85452 (= (_1!1800 lt!63056) (h!8527 tokens!465)))))

(declare-fun lt!63039 () Option!421)

(assert (=> b!187331 (= lt!63056 (get!895 lt!63039))))

(assert (=> b!187331 (isDefined!272 lt!63039)))

(assert (=> b!187331 (= lt!63039 (maxPrefix!187 thiss!17480 rules!1920 lt!63047))))

(declare-fun e!114695 () Bool)

(declare-fun b!187332 () Bool)

(declare-fun tp!87802 () Bool)

(declare-fun e!114698 () Bool)

(assert (=> b!187332 (= e!114698 (and tp!87802 (inv!3956 (tag!749 (h!8526 rules!1920))) (inv!3959 (transformation!571 (h!8526 rules!1920))) e!114695))))

(declare-fun res!85447 () Bool)

(declare-fun e!114682 () Bool)

(assert (=> b!187333 (=> (not res!85447) (not e!114682))))

(declare-fun forall!651 (List!3140 Int) Bool)

(assert (=> b!187333 (= res!85447 (forall!651 tokens!465 lambda!5669))))

(declare-fun b!187334 () Bool)

(declare-fun res!85460 () Bool)

(assert (=> b!187334 (=> res!85460 e!114706)))

(declare-fun lt!63051 () List!3140)

(assert (=> b!187334 (= res!85460 (not (= tokens!465 lt!63051)))))

(assert (=> b!187335 (= e!114704 (and tp!87794 tp!87797))))

(declare-fun b!187336 () Bool)

(declare-fun res!85445 () Bool)

(assert (=> b!187336 (=> res!85445 e!114706)))

(declare-fun rulesProduceEachTokenIndividuallyList!147 (LexerInterface!457 List!3139 List!3140) Bool)

(assert (=> b!187336 (= res!85445 (not (rulesProduceEachTokenIndividuallyList!147 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!187337 () Bool)

(declare-fun res!85455 () Bool)

(declare-fun e!114688 () Bool)

(assert (=> b!187337 (=> (not res!85455) (not e!114688))))

(declare-fun isEmpty!1504 (List!3139) Bool)

(assert (=> b!187337 (= res!85455 (not (isEmpty!1504 rules!1920)))))

(declare-fun b!187338 () Bool)

(assert (=> b!187338 (= e!114688 e!114682)))

(declare-fun res!85442 () Bool)

(assert (=> b!187338 (=> (not res!85442) (not e!114682))))

(declare-datatypes ((IArray!1931 0))(
  ( (IArray!1932 (innerList!1023 List!3140)) )
))
(declare-datatypes ((Conc!965 0))(
  ( (Node!965 (left!2449 Conc!965) (right!2779 Conc!965) (csize!2160 Int) (cheight!1176 Int)) (Leaf!1590 (xs!3560 IArray!1931) (csize!2161 Int)) (Empty!965) )
))
(declare-datatypes ((BalanceConc!1938 0))(
  ( (BalanceConc!1939 (c!36125 Conc!965)) )
))
(declare-fun lt!63048 () BalanceConc!1938)

(declare-fun rulesProduceEachTokenIndividually!249 (LexerInterface!457 List!3139 BalanceConc!1938) Bool)

(assert (=> b!187338 (= res!85442 (rulesProduceEachTokenIndividually!249 thiss!17480 rules!1920 lt!63048))))

(declare-fun seqFromList!520 (List!3140) BalanceConc!1938)

(assert (=> b!187338 (= lt!63048 (seqFromList!520 tokens!465))))

(declare-fun e!114696 () Bool)

(assert (=> b!187339 (= e!114696 (and tp!87795 tp!87803))))

(declare-fun b!187340 () Bool)

(declare-fun e!114697 () Bool)

(assert (=> b!187340 (= e!114682 e!114697)))

(declare-fun res!85463 () Bool)

(assert (=> b!187340 (=> (not res!85463) (not e!114697))))

(declare-fun lt!63038 () List!3138)

(assert (=> b!187340 (= res!85463 (= lt!63040 lt!63038))))

(declare-fun list!1153 (BalanceConc!1936) List!3138)

(declare-fun printWithSeparatorTokenWhenNeededRec!140 (LexerInterface!457 List!3139 BalanceConc!1938 Token!886 Int) BalanceConc!1936)

(assert (=> b!187340 (= lt!63038 (list!1153 (printWithSeparatorTokenWhenNeededRec!140 thiss!17480 rules!1920 lt!63048 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!150 (LexerInterface!457 List!3139 List!3140 Token!886) List!3138)

(assert (=> b!187340 (= lt!63040 (printWithSeparatorTokenWhenNeededList!150 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!87800 () Bool)

(declare-fun b!187341 () Bool)

(declare-fun e!114686 () Bool)

(declare-fun e!114694 () Bool)

(assert (=> b!187341 (= e!114686 (and (inv!21 (value!20589 (h!8527 tokens!465))) e!114694 tp!87800))))

(declare-fun b!187342 () Bool)

(declare-fun res!85454 () Bool)

(assert (=> b!187342 (=> (not res!85454) (not e!114697))))

(assert (=> b!187342 (= res!85454 (= (list!1153 (seqFromList!519 lt!63040)) lt!63038))))

(declare-fun b!187343 () Bool)

(declare-fun res!85466 () Bool)

(assert (=> b!187343 (=> (not res!85466) (not e!114685))))

(assert (=> b!187343 (= res!85466 (isEmpty!1503 (_2!1800 lt!63056)))))

(declare-fun b!187344 () Bool)

(declare-fun e!114692 () Bool)

(assert (=> b!187344 (= e!114697 (not e!114692))))

(declare-fun res!85440 () Bool)

(assert (=> b!187344 (=> res!85440 e!114692)))

(assert (=> b!187344 (= res!85440 (not (= lt!63037 (list!1153 (printWithSeparatorTokenWhenNeededRec!140 thiss!17480 rules!1920 (seqFromList!520 (t!28730 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!63035 () List!3138)

(declare-fun lt!63041 () List!3138)

(assert (=> b!187344 (= lt!63035 lt!63041)))

(declare-fun lt!63049 () List!3138)

(declare-fun ++!744 (List!3138 List!3138) List!3138)

(assert (=> b!187344 (= lt!63041 (++!744 lt!63047 lt!63049))))

(declare-fun lt!63044 () List!3138)

(assert (=> b!187344 (= lt!63035 (++!744 (++!744 lt!63047 lt!63044) lt!63037))))

(declare-fun lt!63045 () Unit!2916)

(declare-fun lemmaConcatAssociativity!260 (List!3138 List!3138 List!3138) Unit!2916)

(assert (=> b!187344 (= lt!63045 (lemmaConcatAssociativity!260 lt!63047 lt!63044 lt!63037))))

(declare-fun charsOf!226 (Token!886) BalanceConc!1936)

(assert (=> b!187344 (= lt!63047 (list!1153 (charsOf!226 (h!8527 tokens!465))))))

(assert (=> b!187344 (= lt!63049 (++!744 lt!63044 lt!63037))))

(assert (=> b!187344 (= lt!63037 (printWithSeparatorTokenWhenNeededList!150 thiss!17480 rules!1920 (t!28730 tokens!465) separatorToken!170))))

(assert (=> b!187344 (= lt!63044 (list!1153 (charsOf!226 separatorToken!170)))))

(declare-fun b!187345 () Bool)

(declare-fun e!114681 () Bool)

(assert (=> b!187345 (= e!114681 e!114684)))

(declare-fun res!85457 () Bool)

(assert (=> b!187345 (=> res!85457 e!114684)))

(declare-fun lt!63053 () List!3138)

(declare-fun lt!63046 () List!3138)

(assert (=> b!187345 (= res!85457 (or (not (= lt!63053 lt!63046)) (not (= lt!63046 lt!63047)) (not (= lt!63053 lt!63047))))))

(declare-fun printList!141 (LexerInterface!457 List!3140) List!3138)

(assert (=> b!187345 (= lt!63046 (printList!141 thiss!17480 lt!63051))))

(declare-fun lt!63055 () BalanceConc!1936)

(assert (=> b!187345 (= lt!63053 (list!1153 lt!63055))))

(assert (=> b!187345 (= lt!63051 (Cons!3130 (h!8527 tokens!465) Nil!3130))))

(declare-fun lt!63054 () BalanceConc!1938)

(declare-fun printTailRec!151 (LexerInterface!457 BalanceConc!1938 Int BalanceConc!1936) BalanceConc!1936)

(assert (=> b!187345 (= lt!63055 (printTailRec!151 thiss!17480 lt!63054 0 (BalanceConc!1937 Empty!964)))))

(declare-fun print!188 (LexerInterface!457 BalanceConc!1938) BalanceConc!1936)

(assert (=> b!187345 (= lt!63055 (print!188 thiss!17480 lt!63054))))

(declare-fun singletonSeq!123 (Token!886) BalanceConc!1938)

(assert (=> b!187345 (= lt!63054 (singletonSeq!123 (h!8527 tokens!465)))))

(declare-fun b!187346 () Bool)

(declare-fun res!85443 () Bool)

(assert (=> b!187346 (=> res!85443 e!114684)))

(declare-fun isEmpty!1505 (BalanceConc!1938) Bool)

(declare-datatypes ((tuple2!3170 0))(
  ( (tuple2!3171 (_1!1801 BalanceConc!1938) (_2!1801 BalanceConc!1936)) )
))
(declare-fun lex!257 (LexerInterface!457 List!3139 BalanceConc!1936) tuple2!3170)

(assert (=> b!187346 (= res!85443 (isEmpty!1505 (_1!1801 (lex!257 thiss!17480 rules!1920 (seqFromList!519 lt!63047)))))))

(declare-fun b!187347 () Bool)

(declare-fun matchR!133 (Regex!795 List!3138) Bool)

(assert (=> b!187347 (= e!114685 (matchR!133 (regex!571 (rule!1086 (h!8527 tokens!465))) lt!63047))))

(declare-fun res!85464 () Bool)

(assert (=> start!20326 (=> (not res!85464) (not e!114688))))

(assert (=> start!20326 (= res!85464 ((_ is Lexer!455) thiss!17480))))

(assert (=> start!20326 e!114688))

(assert (=> start!20326 true))

(declare-fun e!114700 () Bool)

(assert (=> start!20326 e!114700))

(declare-fun inv!3960 (Token!886) Bool)

(assert (=> start!20326 (and (inv!3960 separatorToken!170) e!114691)))

(declare-fun e!114707 () Bool)

(assert (=> start!20326 e!114707))

(declare-fun b!187348 () Bool)

(assert (=> b!187348 (= e!114701 e!114706)))

(declare-fun res!85448 () Bool)

(assert (=> b!187348 (=> res!85448 e!114706)))

(declare-fun isEmpty!1506 (List!3140) Bool)

(assert (=> b!187348 (= res!85448 (not (isEmpty!1506 (t!28730 tokens!465))))))

(declare-fun lt!63050 () Option!421)

(assert (=> b!187348 (= lt!63050 (maxPrefix!187 thiss!17480 rules!1920 lt!63049))))

(declare-fun lt!63036 () tuple2!3168)

(assert (=> b!187348 (= lt!63049 (_2!1800 lt!63036))))

(declare-fun lt!63043 () Unit!2916)

(declare-fun lemmaSamePrefixThenSameSuffix!92 (List!3138 List!3138 List!3138 List!3138 List!3138) Unit!2916)

(assert (=> b!187348 (= lt!63043 (lemmaSamePrefixThenSameSuffix!92 lt!63047 lt!63049 lt!63047 (_2!1800 lt!63036) lt!63040))))

(assert (=> b!187348 (= lt!63036 (get!895 (maxPrefix!187 thiss!17480 rules!1920 lt!63040)))))

(declare-fun isPrefix!267 (List!3138 List!3138) Bool)

(assert (=> b!187348 (isPrefix!267 lt!63047 lt!63041)))

(declare-fun lt!63042 () Unit!2916)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!162 (List!3138 List!3138) Unit!2916)

(assert (=> b!187348 (= lt!63042 (lemmaConcatTwoListThenFirstIsPrefix!162 lt!63047 lt!63049))))

(assert (=> b!187348 e!114708))

(declare-fun res!85449 () Bool)

(assert (=> b!187348 (=> res!85449 e!114708)))

(assert (=> b!187348 (= res!85449 (isEmpty!1506 tokens!465))))

(declare-fun lt!63032 () Unit!2916)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!32 (LexerInterface!457 List!3139 List!3140 Token!886) Unit!2916)

(assert (=> b!187348 (= lt!63032 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!32 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!187349 () Bool)

(declare-fun res!85441 () Bool)

(assert (=> b!187349 (=> (not res!85441) (not e!114682))))

(declare-fun sepAndNonSepRulesDisjointChars!160 (List!3139 List!3139) Bool)

(assert (=> b!187349 (= res!85441 (sepAndNonSepRulesDisjointChars!160 rules!1920 rules!1920))))

(declare-fun b!187350 () Bool)

(declare-fun res!85450 () Bool)

(assert (=> b!187350 (=> (not res!85450) (not e!114682))))

(declare-fun rulesProduceIndividualToken!206 (LexerInterface!457 List!3139 Token!886) Bool)

(assert (=> b!187350 (= res!85450 (rulesProduceIndividualToken!206 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!187351 () Bool)

(assert (=> b!187351 (= e!114706 (forall!651 tokens!465 lambda!5669))))

(declare-fun b!187352 () Bool)

(declare-fun res!85456 () Bool)

(assert (=> b!187352 (=> res!85456 e!114684)))

(assert (=> b!187352 (= res!85456 (not (rulesProduceIndividualToken!206 thiss!17480 rules!1920 (h!8527 tokens!465))))))

(declare-fun b!187353 () Bool)

(declare-fun e!114683 () Bool)

(assert (=> b!187353 (= e!114683 (not (= lt!63040 (++!744 lt!63047 lt!63037))))))

(declare-fun tp!87796 () Bool)

(declare-fun b!187354 () Bool)

(assert (=> b!187354 (= e!114707 (and (inv!3960 (h!8527 tokens!465)) e!114686 tp!87796))))

(declare-fun b!187355 () Bool)

(declare-fun res!85459 () Bool)

(assert (=> b!187355 (=> (not res!85459) (not e!114682))))

(assert (=> b!187355 (= res!85459 (isSeparator!571 (rule!1086 separatorToken!170)))))

(assert (=> b!187356 (= e!114695 (and tp!87799 tp!87793))))

(declare-fun b!187357 () Bool)

(declare-fun tp!87798 () Bool)

(assert (=> b!187357 (= e!114694 (and tp!87798 (inv!3956 (tag!749 (rule!1086 (h!8527 tokens!465)))) (inv!3959 (transformation!571 (rule!1086 (h!8527 tokens!465)))) e!114696))))

(declare-fun b!187358 () Bool)

(declare-fun res!85458 () Bool)

(assert (=> b!187358 (=> (not res!85458) (not e!114682))))

(assert (=> b!187358 (= res!85458 ((_ is Cons!3130) tokens!465))))

(declare-fun b!187359 () Bool)

(declare-fun res!85444 () Bool)

(assert (=> b!187359 (=> (not res!85444) (not e!114688))))

(declare-fun rulesInvariant!423 (LexerInterface!457 List!3139) Bool)

(assert (=> b!187359 (= res!85444 (rulesInvariant!423 thiss!17480 rules!1920))))

(declare-fun b!187360 () Bool)

(assert (=> b!187360 (= e!114692 e!114681)))

(declare-fun res!85462 () Bool)

(assert (=> b!187360 (=> res!85462 e!114681)))

(assert (=> b!187360 (= res!85462 e!114683)))

(declare-fun res!85451 () Bool)

(assert (=> b!187360 (=> (not res!85451) (not e!114683))))

(assert (=> b!187360 (= res!85451 (not lt!63033))))

(assert (=> b!187360 (= lt!63033 (= lt!63040 lt!63041))))

(declare-fun b!187361 () Bool)

(declare-fun tp!87801 () Bool)

(assert (=> b!187361 (= e!114700 (and e!114698 tp!87801))))

(assert (= (and start!20326 res!85464) b!187337))

(assert (= (and b!187337 res!85455) b!187359))

(assert (= (and b!187359 res!85444) b!187338))

(assert (= (and b!187338 res!85442) b!187350))

(assert (= (and b!187350 res!85450) b!187355))

(assert (= (and b!187355 res!85459) b!187333))

(assert (= (and b!187333 res!85447) b!187349))

(assert (= (and b!187349 res!85441) b!187358))

(assert (= (and b!187358 res!85458) b!187340))

(assert (= (and b!187340 res!85463) b!187342))

(assert (= (and b!187342 res!85454) b!187344))

(assert (= (and b!187344 (not res!85440)) b!187360))

(assert (= (and b!187360 res!85451) b!187353))

(assert (= (and b!187360 (not res!85462)) b!187345))

(assert (= (and b!187345 (not res!85457)) b!187352))

(assert (= (and b!187352 (not res!85456)) b!187346))

(assert (= (and b!187346 (not res!85443)) b!187327))

(assert (= (and b!187327 (not res!85446)) b!187331))

(assert (= (and b!187331 res!85452) b!187343))

(assert (= (and b!187343 res!85466) b!187347))

(assert (= (and b!187331 (not res!85453)) b!187348))

(assert (= (and b!187348 (not res!85449)) b!187330))

(assert (= (and b!187330 res!85465) b!187328))

(assert (= (and b!187348 (not res!85448)) b!187334))

(assert (= (and b!187334 (not res!85460)) b!187325))

(assert (= (and b!187325 (not res!85461)) b!187336))

(assert (= (and b!187336 (not res!85445)) b!187351))

(assert (= b!187332 b!187356))

(assert (= b!187361 b!187332))

(assert (= (and start!20326 ((_ is Cons!3129) rules!1920)) b!187361))

(assert (= b!187326 b!187335))

(assert (= b!187329 b!187326))

(assert (= start!20326 b!187329))

(assert (= b!187357 b!187339))

(assert (= b!187341 b!187357))

(assert (= b!187354 b!187341))

(assert (= (and start!20326 ((_ is Cons!3130) tokens!465)) b!187354))

(declare-fun m!191887 () Bool)

(assert (=> b!187332 m!191887))

(declare-fun m!191889 () Bool)

(assert (=> b!187332 m!191889))

(declare-fun m!191891 () Bool)

(assert (=> b!187329 m!191891))

(declare-fun m!191893 () Bool)

(assert (=> b!187353 m!191893))

(declare-fun m!191895 () Bool)

(assert (=> b!187347 m!191895))

(declare-fun m!191897 () Bool)

(assert (=> b!187345 m!191897))

(declare-fun m!191899 () Bool)

(assert (=> b!187345 m!191899))

(declare-fun m!191901 () Bool)

(assert (=> b!187345 m!191901))

(declare-fun m!191903 () Bool)

(assert (=> b!187345 m!191903))

(declare-fun m!191905 () Bool)

(assert (=> b!187345 m!191905))

(declare-fun m!191907 () Bool)

(assert (=> b!187331 m!191907))

(declare-fun m!191909 () Bool)

(assert (=> b!187331 m!191909))

(declare-fun m!191911 () Bool)

(assert (=> b!187331 m!191911))

(declare-fun m!191913 () Bool)

(assert (=> b!187352 m!191913))

(declare-fun m!191915 () Bool)

(assert (=> start!20326 m!191915))

(declare-fun m!191917 () Bool)

(assert (=> b!187357 m!191917))

(declare-fun m!191919 () Bool)

(assert (=> b!187357 m!191919))

(declare-fun m!191921 () Bool)

(assert (=> b!187349 m!191921))

(declare-fun m!191923 () Bool)

(assert (=> b!187338 m!191923))

(declare-fun m!191925 () Bool)

(assert (=> b!187338 m!191925))

(declare-fun m!191927 () Bool)

(assert (=> b!187348 m!191927))

(declare-fun m!191929 () Bool)

(assert (=> b!187348 m!191929))

(declare-fun m!191931 () Bool)

(assert (=> b!187348 m!191931))

(declare-fun m!191933 () Bool)

(assert (=> b!187348 m!191933))

(declare-fun m!191935 () Bool)

(assert (=> b!187348 m!191935))

(declare-fun m!191937 () Bool)

(assert (=> b!187348 m!191937))

(declare-fun m!191939 () Bool)

(assert (=> b!187348 m!191939))

(declare-fun m!191941 () Bool)

(assert (=> b!187348 m!191941))

(declare-fun m!191943 () Bool)

(assert (=> b!187348 m!191943))

(assert (=> b!187348 m!191939))

(declare-fun m!191945 () Bool)

(assert (=> b!187354 m!191945))

(declare-fun m!191947 () Bool)

(assert (=> b!187327 m!191947))

(assert (=> b!187327 m!191947))

(declare-fun m!191949 () Bool)

(assert (=> b!187327 m!191949))

(assert (=> b!187327 m!191949))

(declare-fun m!191951 () Bool)

(assert (=> b!187327 m!191951))

(declare-fun m!191953 () Bool)

(assert (=> b!187327 m!191953))

(declare-fun m!191955 () Bool)

(assert (=> b!187325 m!191955))

(declare-fun m!191957 () Bool)

(assert (=> b!187337 m!191957))

(declare-fun m!191959 () Bool)

(assert (=> b!187346 m!191959))

(assert (=> b!187346 m!191959))

(declare-fun m!191961 () Bool)

(assert (=> b!187346 m!191961))

(declare-fun m!191963 () Bool)

(assert (=> b!187346 m!191963))

(declare-fun m!191965 () Bool)

(assert (=> b!187343 m!191965))

(declare-fun m!191967 () Bool)

(assert (=> b!187341 m!191967))

(declare-fun m!191969 () Bool)

(assert (=> b!187330 m!191969))

(assert (=> b!187330 m!191939))

(declare-fun m!191971 () Bool)

(assert (=> b!187326 m!191971))

(declare-fun m!191973 () Bool)

(assert (=> b!187326 m!191973))

(declare-fun m!191975 () Bool)

(assert (=> b!187351 m!191975))

(declare-fun m!191977 () Bool)

(assert (=> b!187328 m!191977))

(declare-fun m!191979 () Bool)

(assert (=> b!187328 m!191979))

(declare-fun m!191981 () Bool)

(assert (=> b!187340 m!191981))

(assert (=> b!187340 m!191981))

(declare-fun m!191983 () Bool)

(assert (=> b!187340 m!191983))

(declare-fun m!191985 () Bool)

(assert (=> b!187340 m!191985))

(declare-fun m!191987 () Bool)

(assert (=> b!187350 m!191987))

(declare-fun m!191989 () Bool)

(assert (=> b!187342 m!191989))

(assert (=> b!187342 m!191989))

(declare-fun m!191991 () Bool)

(assert (=> b!187342 m!191991))

(declare-fun m!191993 () Bool)

(assert (=> b!187336 m!191993))

(declare-fun m!191995 () Bool)

(assert (=> b!187344 m!191995))

(declare-fun m!191997 () Bool)

(assert (=> b!187344 m!191997))

(declare-fun m!191999 () Bool)

(assert (=> b!187344 m!191999))

(assert (=> b!187344 m!191997))

(assert (=> b!187344 m!191995))

(declare-fun m!192001 () Bool)

(assert (=> b!187344 m!192001))

(declare-fun m!192003 () Bool)

(assert (=> b!187344 m!192003))

(declare-fun m!192005 () Bool)

(assert (=> b!187344 m!192005))

(declare-fun m!192007 () Bool)

(assert (=> b!187344 m!192007))

(declare-fun m!192009 () Bool)

(assert (=> b!187344 m!192009))

(declare-fun m!192011 () Bool)

(assert (=> b!187344 m!192011))

(assert (=> b!187344 m!192005))

(declare-fun m!192013 () Bool)

(assert (=> b!187344 m!192013))

(declare-fun m!192015 () Bool)

(assert (=> b!187344 m!192015))

(assert (=> b!187344 m!192001))

(declare-fun m!192017 () Bool)

(assert (=> b!187344 m!192017))

(declare-fun m!192019 () Bool)

(assert (=> b!187344 m!192019))

(assert (=> b!187344 m!192007))

(declare-fun m!192021 () Bool)

(assert (=> b!187359 m!192021))

(assert (=> b!187333 m!191975))

(check-sat (not b!187329) (not b!187344) (not b_next!7367) (not b!187332) (not b!187347) b_and!12927 b_and!12917 (not b!187354) (not b!187348) (not b!187340) (not b!187359) (not b!187337) (not b_next!7365) b_and!12919 b_and!12921 (not b!187346) (not b!187330) (not b!187341) (not b!187333) (not b!187353) (not b!187331) (not b!187327) (not b!187338) (not b!187342) (not b!187361) b_and!12923 (not b!187351) (not b!187336) (not b!187357) (not b_next!7369) (not b!187325) (not b!187352) (not b!187370) (not start!20326) (not b!187326) (not b!187343) b_and!12925 (not b!187345) (not b_next!7361) (not b!187349) (not b_next!7371) (not b_next!7363) (not b!187350) (not b!187328))
(check-sat b_and!12921 (not b_next!7367) b_and!12927 b_and!12923 (not b_next!7369) b_and!12917 b_and!12925 (not b_next!7361) (not b_next!7365) b_and!12919 (not b_next!7371) (not b_next!7363))
