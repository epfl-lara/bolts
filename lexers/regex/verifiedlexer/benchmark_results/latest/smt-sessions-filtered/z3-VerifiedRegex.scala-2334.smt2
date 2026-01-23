; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115442 () Bool)

(assert start!115442)

(declare-fun b!1306433 () Bool)

(declare-fun b_free!31291 () Bool)

(declare-fun b_next!31995 () Bool)

(assert (=> b!1306433 (= b_free!31291 (not b_next!31995))))

(declare-fun tp!381086 () Bool)

(declare-fun b_and!87191 () Bool)

(assert (=> b!1306433 (= tp!381086 b_and!87191)))

(declare-fun b_free!31293 () Bool)

(declare-fun b_next!31997 () Bool)

(assert (=> b!1306433 (= b_free!31293 (not b_next!31997))))

(declare-fun tp!381079 () Bool)

(declare-fun b_and!87193 () Bool)

(assert (=> b!1306433 (= tp!381079 b_and!87193)))

(declare-fun b!1306421 () Bool)

(declare-fun b_free!31295 () Bool)

(declare-fun b_next!31999 () Bool)

(assert (=> b!1306421 (= b_free!31295 (not b_next!31999))))

(declare-fun tp!381080 () Bool)

(declare-fun b_and!87195 () Bool)

(assert (=> b!1306421 (= tp!381080 b_and!87195)))

(declare-fun b_free!31297 () Bool)

(declare-fun b_next!32001 () Bool)

(assert (=> b!1306421 (= b_free!31297 (not b_next!32001))))

(declare-fun tp!381082 () Bool)

(declare-fun b_and!87197 () Bool)

(assert (=> b!1306421 (= tp!381082 b_and!87197)))

(declare-fun b!1306426 () Bool)

(declare-fun b_free!31299 () Bool)

(declare-fun b_next!32003 () Bool)

(assert (=> b!1306426 (= b_free!31299 (not b_next!32003))))

(declare-fun tp!381081 () Bool)

(declare-fun b_and!87199 () Bool)

(assert (=> b!1306426 (= tp!381081 b_and!87199)))

(declare-fun b_free!31301 () Bool)

(declare-fun b_next!32005 () Bool)

(assert (=> b!1306426 (= b_free!31301 (not b_next!32005))))

(declare-fun tp!381076 () Bool)

(declare-fun b_and!87201 () Bool)

(assert (=> b!1306426 (= tp!381076 b_and!87201)))

(declare-fun b!1306432 () Bool)

(assert (=> b!1306432 true))

(assert (=> b!1306432 true))

(declare-fun b!1306429 () Bool)

(assert (=> b!1306429 true))

(declare-fun b!1306425 () Bool)

(assert (=> b!1306425 true))

(declare-fun b!1306406 () Bool)

(declare-fun e!837749 () Bool)

(assert (=> b!1306406 (= e!837749 true)))

(declare-fun lt!429887 () Bool)

(declare-datatypes ((LexerInterface!1972 0))(
  ( (LexerInterfaceExt!1969 (__x!8563 Int)) (Lexer!1970) )
))
(declare-fun thiss!19762 () LexerInterface!1972)

(declare-datatypes ((List!13236 0))(
  ( (Nil!13170) (Cons!13170 (h!18571 (_ BitVec 16)) (t!117859 List!13236)) )
))
(declare-datatypes ((TokenValue!2367 0))(
  ( (FloatLiteralValue!4734 (text!17014 List!13236)) (TokenValueExt!2366 (__x!8564 Int)) (Broken!11835 (value!74501 List!13236)) (Object!2432) (End!2367) (Def!2367) (Underscore!2367) (Match!2367) (Else!2367) (Error!2367) (Case!2367) (If!2367) (Extends!2367) (Abstract!2367) (Class!2367) (Val!2367) (DelimiterValue!4734 (del!2427 List!13236)) (KeywordValue!2373 (value!74502 List!13236)) (CommentValue!4734 (value!74503 List!13236)) (WhitespaceValue!4734 (value!74504 List!13236)) (IndentationValue!2367 (value!74505 List!13236)) (String!16070) (Int32!2367) (Broken!11836 (value!74506 List!13236)) (Boolean!2368) (Unit!19267) (OperatorValue!2370 (op!2427 List!13236)) (IdentifierValue!4734 (value!74507 List!13236)) (IdentifierValue!4735 (value!74508 List!13236)) (WhitespaceValue!4735 (value!74509 List!13236)) (True!4734) (False!4734) (Broken!11837 (value!74510 List!13236)) (Broken!11838 (value!74511 List!13236)) (True!4735) (RightBrace!2367) (RightBracket!2367) (Colon!2367) (Null!2367) (Comma!2367) (LeftBracket!2367) (False!4735) (LeftBrace!2367) (ImaginaryLiteralValue!2367 (text!17015 List!13236)) (StringLiteralValue!7101 (value!74512 List!13236)) (EOFValue!2367 (value!74513 List!13236)) (IdentValue!2367 (value!74514 List!13236)) (DelimiterValue!4735 (value!74515 List!13236)) (DedentValue!2367 (value!74516 List!13236)) (NewLineValue!2367 (value!74517 List!13236)) (IntegerValue!7101 (value!74518 (_ BitVec 32)) (text!17016 List!13236)) (IntegerValue!7102 (value!74519 Int) (text!17017 List!13236)) (Times!2367) (Or!2367) (Equal!2367) (Minus!2367) (Broken!11839 (value!74520 List!13236)) (And!2367) (Div!2367) (LessEqual!2367) (Mod!2367) (Concat!5958) (Not!2367) (Plus!2367) (SpaceValue!2367 (value!74521 List!13236)) (IntegerValue!7103 (value!74522 Int) (text!17018 List!13236)) (StringLiteralValue!7102 (text!17019 List!13236)) (FloatLiteralValue!4735 (text!17020 List!13236)) (BytesLiteralValue!2367 (value!74523 List!13236)) (CommentValue!4735 (value!74524 List!13236)) (StringLiteralValue!7103 (value!74525 List!13236)) (ErrorTokenValue!2367 (msg!2428 List!13236)) )
))
(declare-datatypes ((C!7472 0))(
  ( (C!7473 (val!4296 Int)) )
))
(declare-datatypes ((List!13237 0))(
  ( (Nil!13171) (Cons!13171 (h!18572 C!7472) (t!117860 List!13237)) )
))
(declare-datatypes ((IArray!8653 0))(
  ( (IArray!8654 (innerList!4384 List!13237)) )
))
(declare-datatypes ((Conc!4324 0))(
  ( (Node!4324 (left!11324 Conc!4324) (right!11654 Conc!4324) (csize!8878 Int) (cheight!4535 Int)) (Leaf!6659 (xs!7039 IArray!8653) (csize!8879 Int)) (Empty!4324) )
))
(declare-datatypes ((BalanceConc!8588 0))(
  ( (BalanceConc!8589 (c!214732 Conc!4324)) )
))
(declare-datatypes ((Regex!3591 0))(
  ( (ElementMatch!3591 (c!214733 C!7472)) (Concat!5959 (regOne!7694 Regex!3591) (regTwo!7694 Regex!3591)) (EmptyExpr!3591) (Star!3591 (reg!3920 Regex!3591)) (EmptyLang!3591) (Union!3591 (regOne!7695 Regex!3591) (regTwo!7695 Regex!3591)) )
))
(declare-datatypes ((String!16071 0))(
  ( (String!16072 (value!74526 String)) )
))
(declare-datatypes ((TokenValueInjection!4394 0))(
  ( (TokenValueInjection!4395 (toValue!3496 Int) (toChars!3355 Int)) )
))
(declare-datatypes ((Rule!4354 0))(
  ( (Rule!4355 (regex!2277 Regex!3591) (tag!2539 String!16071) (isSeparator!2277 Bool) (transformation!2277 TokenValueInjection!4394)) )
))
(declare-datatypes ((List!13238 0))(
  ( (Nil!13172) (Cons!13172 (h!18573 Rule!4354) (t!117861 List!13238)) )
))
(declare-fun rules!2550 () List!13238)

(declare-fun rulesValidInductive!714 (LexerInterface!1972 List!13238) Bool)

(assert (=> b!1306406 (= lt!429887 (rulesValidInductive!714 thiss!19762 rules!2550))))

(declare-fun b!1306407 () Bool)

(declare-fun res!585679 () Bool)

(declare-fun e!837760 () Bool)

(assert (=> b!1306407 (=> (not res!585679) (not e!837760))))

(declare-fun sepAndNonSepRulesDisjointChars!650 (List!13238 List!13238) Bool)

(assert (=> b!1306407 (= res!585679 (sepAndNonSepRulesDisjointChars!650 rules!2550 rules!2550))))

(declare-fun b!1306408 () Bool)

(declare-fun tp!381078 () Bool)

(declare-fun e!837737 () Bool)

(declare-fun e!837741 () Bool)

(declare-fun inv!17577 (String!16071) Bool)

(declare-fun inv!17580 (TokenValueInjection!4394) Bool)

(assert (=> b!1306408 (= e!837741 (and tp!381078 (inv!17577 (tag!2539 (h!18573 rules!2550))) (inv!17580 (transformation!2277 (h!18573 rules!2550))) e!837737))))

(declare-fun b!1306409 () Bool)

(declare-fun res!585671 () Bool)

(declare-fun e!837744 () Bool)

(assert (=> b!1306409 (=> res!585671 e!837744)))

(declare-fun lt!429873 () List!13237)

(declare-fun lt!429890 () C!7472)

(declare-fun contains!2242 (List!13237 C!7472) Bool)

(assert (=> b!1306409 (= res!585671 (not (contains!2242 lt!429873 lt!429890)))))

(declare-fun b!1306410 () Bool)

(declare-fun res!585675 () Bool)

(declare-fun e!837739 () Bool)

(assert (=> b!1306410 (=> (not res!585675) (not e!837739))))

(declare-datatypes ((Token!4216 0))(
  ( (Token!4217 (value!74527 TokenValue!2367) (rule!4016 Rule!4354) (size!10734 Int) (originalCharacters!3139 List!13237)) )
))
(declare-fun t1!34 () Token!4216)

(declare-fun t2!34 () Token!4216)

(assert (=> b!1306410 (= res!585675 (not (= (isSeparator!2277 (rule!4016 t1!34)) (isSeparator!2277 (rule!4016 t2!34)))))))

(declare-fun e!837752 () Bool)

(declare-fun e!837745 () Bool)

(declare-fun b!1306411 () Bool)

(declare-fun tp!381083 () Bool)

(assert (=> b!1306411 (= e!837745 (and tp!381083 (inv!17577 (tag!2539 (rule!4016 t2!34))) (inv!17580 (transformation!2277 (rule!4016 t2!34))) e!837752))))

(declare-fun b!1306412 () Bool)

(declare-fun res!585692 () Bool)

(assert (=> b!1306412 (=> (not res!585692) (not e!837739))))

(declare-fun rulesInvariant!1842 (LexerInterface!1972 List!13238) Bool)

(assert (=> b!1306412 (= res!585692 (rulesInvariant!1842 thiss!19762 rules!2550))))

(declare-fun b!1306413 () Bool)

(declare-fun e!837758 () Bool)

(declare-fun e!837751 () Bool)

(assert (=> b!1306413 (= e!837758 e!837751)))

(declare-fun res!585672 () Bool)

(assert (=> b!1306413 (=> res!585672 e!837751)))

(declare-fun lt!429880 () Regex!3591)

(declare-fun lambda!52189 () Int)

(declare-datatypes ((List!13239 0))(
  ( (Nil!13173) (Cons!13173 (h!18574 Regex!3591) (t!117862 List!13239)) )
))
(declare-fun contains!2243 (List!13239 Regex!3591) Bool)

(declare-fun map!2882 (List!13238 Int) List!13239)

(assert (=> b!1306413 (= res!585672 (not (contains!2243 (map!2882 rules!2550 lambda!52189) lt!429880)))))

(declare-fun lambda!52190 () Int)

(declare-fun getWitness!148 (List!13239 Int) Regex!3591)

(assert (=> b!1306413 (= lt!429880 (getWitness!148 (map!2882 rules!2550 lambda!52189) lambda!52190))))

(declare-fun b!1306414 () Bool)

(declare-fun res!585683 () Bool)

(assert (=> b!1306414 (=> res!585683 e!837749)))

(declare-fun lt!429879 () BalanceConc!8588)

(declare-datatypes ((List!13240 0))(
  ( (Nil!13174) (Cons!13174 (h!18575 Token!4216) (t!117863 List!13240)) )
))
(declare-fun lt!429881 () List!13240)

(declare-datatypes ((tuple2!12760 0))(
  ( (tuple2!12761 (_1!7266 List!13240) (_2!7266 List!13237)) )
))
(declare-fun lexList!510 (LexerInterface!1972 List!13238 List!13237) tuple2!12760)

(declare-fun list!4938 (BalanceConc!8588) List!13237)

(assert (=> b!1306414 (= res!585683 (not (= (lexList!510 thiss!19762 rules!2550 (list!4938 lt!429879)) (tuple2!12761 lt!429881 Nil!13171))))))

(declare-fun b!1306415 () Bool)

(declare-fun res!585687 () Bool)

(assert (=> b!1306415 (=> (not res!585687) (not e!837739))))

(declare-fun rulesProduceIndividualToken!941 (LexerInterface!1972 List!13238 Token!4216) Bool)

(assert (=> b!1306415 (= res!585687 (rulesProduceIndividualToken!941 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1306416 () Bool)

(declare-fun e!837746 () Bool)

(assert (=> b!1306416 (= e!837760 e!837746)))

(declare-fun res!585682 () Bool)

(assert (=> b!1306416 (=> (not res!585682) (not e!837746))))

(declare-fun lt!429875 () Regex!3591)

(declare-fun lt!429886 () List!13237)

(declare-fun prefixMatch!104 (Regex!3591 List!13237) Bool)

(assert (=> b!1306416 (= res!585682 (prefixMatch!104 lt!429875 lt!429886))))

(declare-fun rulesRegex!162 (LexerInterface!1972 List!13238) Regex!3591)

(assert (=> b!1306416 (= lt!429875 (rulesRegex!162 thiss!19762 rules!2550))))

(declare-fun lt!429888 () List!13237)

(declare-fun ++!3354 (List!13237 List!13237) List!13237)

(assert (=> b!1306416 (= lt!429886 (++!3354 lt!429888 (Cons!13171 lt!429890 Nil!13171)))))

(declare-fun lt!429885 () BalanceConc!8588)

(declare-fun apply!2957 (BalanceConc!8588 Int) C!7472)

(assert (=> b!1306416 (= lt!429890 (apply!2957 lt!429885 0))))

(declare-fun lt!429889 () BalanceConc!8588)

(assert (=> b!1306416 (= lt!429888 (list!4938 lt!429889))))

(declare-fun charsOf!1249 (Token!4216) BalanceConc!8588)

(assert (=> b!1306416 (= lt!429889 (charsOf!1249 t1!34))))

(declare-fun b!1306417 () Bool)

(declare-fun e!837757 () Bool)

(assert (=> b!1306417 (= e!837757 e!837744)))

(declare-fun res!585680 () Bool)

(assert (=> b!1306417 (=> res!585680 e!837744)))

(declare-fun lt!429876 () C!7472)

(assert (=> b!1306417 (= res!585680 (not (contains!2242 lt!429886 lt!429876)))))

(assert (=> b!1306417 (= lt!429876 (apply!2957 lt!429889 0))))

(declare-fun e!837750 () Bool)

(declare-fun b!1306418 () Bool)

(declare-fun e!837754 () Bool)

(declare-fun tp!381085 () Bool)

(declare-fun inv!21 (TokenValue!2367) Bool)

(assert (=> b!1306418 (= e!837750 (and (inv!21 (value!74527 t1!34)) e!837754 tp!381085))))

(declare-fun b!1306419 () Bool)

(declare-fun tp!381075 () Bool)

(declare-fun e!837756 () Bool)

(assert (=> b!1306419 (= e!837754 (and tp!381075 (inv!17577 (tag!2539 (rule!4016 t1!34))) (inv!17580 (transformation!2277 (rule!4016 t1!34))) e!837756))))

(declare-fun b!1306420 () Bool)

(declare-fun e!837755 () Bool)

(assert (=> b!1306420 (= e!837755 e!837749)))

(declare-fun res!585684 () Bool)

(assert (=> b!1306420 (=> res!585684 e!837749)))

(declare-datatypes ((IArray!8655 0))(
  ( (IArray!8656 (innerList!4385 List!13240)) )
))
(declare-datatypes ((Conc!4325 0))(
  ( (Node!4325 (left!11325 Conc!4325) (right!11655 Conc!4325) (csize!8880 Int) (cheight!4536 Int)) (Leaf!6660 (xs!7040 IArray!8655) (csize!8881 Int)) (Empty!4325) )
))
(declare-datatypes ((BalanceConc!8590 0))(
  ( (BalanceConc!8591 (c!214734 Conc!4325)) )
))
(declare-datatypes ((tuple2!12762 0))(
  ( (tuple2!12763 (_1!7267 BalanceConc!8590) (_2!7267 BalanceConc!8588)) )
))
(declare-fun lt!429883 () tuple2!12762)

(declare-fun list!4939 (BalanceConc!8590) List!13240)

(assert (=> b!1306420 (= res!585684 (not (= (list!4939 (_1!7267 lt!429883)) lt!429881)))))

(assert (=> b!1306420 (= lt!429881 (Cons!13174 t1!34 Nil!13174))))

(declare-fun lex!807 (LexerInterface!1972 List!13238 BalanceConc!8588) tuple2!12762)

(assert (=> b!1306420 (= lt!429883 (lex!807 thiss!19762 rules!2550 lt!429879))))

(declare-fun print!746 (LexerInterface!1972 BalanceConc!8590) BalanceConc!8588)

(declare-fun singletonSeq!848 (Token!4216) BalanceConc!8590)

(assert (=> b!1306420 (= lt!429879 (print!746 thiss!19762 (singletonSeq!848 t1!34)))))

(declare-fun lt!429878 () Rule!4354)

(declare-fun lambda!52191 () Int)

(declare-fun getWitness!149 (List!13238 Int) Rule!4354)

(assert (=> b!1306420 (= lt!429878 (getWitness!149 rules!2550 lambda!52191))))

(assert (=> b!1306421 (= e!837737 (and tp!381080 tp!381082))))

(declare-fun b!1306422 () Bool)

(declare-fun res!585681 () Bool)

(assert (=> b!1306422 (=> res!585681 e!837744)))

(assert (=> b!1306422 (= res!585681 (not (contains!2242 lt!429886 lt!429890)))))

(declare-fun b!1306423 () Bool)

(declare-fun res!585688 () Bool)

(assert (=> b!1306423 (=> res!585688 e!837749)))

(declare-fun isEmpty!7798 (BalanceConc!8588) Bool)

(assert (=> b!1306423 (= res!585688 (not (isEmpty!7798 (_2!7267 lt!429883))))))

(declare-fun b!1306424 () Bool)

(assert (=> b!1306424 (= e!837739 e!837760)))

(declare-fun res!585685 () Bool)

(assert (=> b!1306424 (=> (not res!585685) (not e!837760))))

(declare-fun size!10735 (BalanceConc!8588) Int)

(assert (=> b!1306424 (= res!585685 (> (size!10735 lt!429885) 0))))

(assert (=> b!1306424 (= lt!429885 (charsOf!1249 t2!34))))

(assert (=> b!1306425 (= e!837751 e!837755)))

(declare-fun res!585674 () Bool)

(assert (=> b!1306425 (=> res!585674 e!837755)))

(declare-fun exists!256 (List!13238 Int) Bool)

(assert (=> b!1306425 (= res!585674 (not (exists!256 rules!2550 lambda!52191)))))

(assert (=> b!1306425 (exists!256 rules!2550 lambda!52191)))

(declare-datatypes ((Unit!19268 0))(
  ( (Unit!19269) )
))
(declare-fun lt!429874 () Unit!19268)

(declare-fun lemmaMapContains!20 (List!13238 Int Regex!3591) Unit!19268)

(assert (=> b!1306425 (= lt!429874 (lemmaMapContains!20 rules!2550 lambda!52189 lt!429880))))

(assert (=> b!1306426 (= e!837756 (and tp!381081 tp!381076))))

(declare-fun b!1306427 () Bool)

(declare-fun res!585677 () Bool)

(assert (=> b!1306427 (=> (not res!585677) (not e!837760))))

(declare-fun separableTokensPredicate!255 (LexerInterface!1972 Token!4216 Token!4216 List!13238) Bool)

(assert (=> b!1306427 (= res!585677 (not (separableTokensPredicate!255 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun res!585678 () Bool)

(assert (=> start!115442 (=> (not res!585678) (not e!837739))))

(get-info :version)

(assert (=> start!115442 (= res!585678 ((_ is Lexer!1970) thiss!19762))))

(assert (=> start!115442 e!837739))

(assert (=> start!115442 true))

(declare-fun e!837748 () Bool)

(assert (=> start!115442 e!837748))

(declare-fun inv!17581 (Token!4216) Bool)

(assert (=> start!115442 (and (inv!17581 t1!34) e!837750)))

(declare-fun e!837743 () Bool)

(assert (=> start!115442 (and (inv!17581 t2!34) e!837743)))

(declare-fun b!1306428 () Bool)

(declare-fun res!585676 () Bool)

(assert (=> b!1306428 (=> res!585676 e!837744)))

(declare-fun matchR!1593 (Regex!3591 List!13237) Bool)

(assert (=> b!1306428 (= res!585676 (not (matchR!1593 lt!429875 lt!429873)))))

(assert (=> b!1306429 (= e!837744 e!837758)))

(declare-fun res!585670 () Bool)

(assert (=> b!1306429 (=> res!585670 e!837758)))

(declare-fun exists!257 (List!13239 Int) Bool)

(assert (=> b!1306429 (= res!585670 (not (exists!257 (map!2882 rules!2550 lambda!52189) lambda!52190)))))

(declare-fun lt!429884 () List!13239)

(assert (=> b!1306429 (exists!257 lt!429884 lambda!52190)))

(declare-fun lt!429877 () Unit!19268)

(declare-fun matchRGenUnionSpec!28 (Regex!3591 List!13239 List!13237) Unit!19268)

(assert (=> b!1306429 (= lt!429877 (matchRGenUnionSpec!28 lt!429875 lt!429884 lt!429873))))

(assert (=> b!1306429 (= lt!429884 (map!2882 rules!2550 lambda!52189))))

(declare-fun tp!381084 () Bool)

(declare-fun b!1306430 () Bool)

(assert (=> b!1306430 (= e!837743 (and (inv!21 (value!74527 t2!34)) e!837745 tp!381084))))

(declare-fun b!1306431 () Bool)

(declare-fun res!585690 () Bool)

(assert (=> b!1306431 (=> (not res!585690) (not e!837739))))

(declare-fun isEmpty!7799 (List!13238) Bool)

(assert (=> b!1306431 (= res!585690 (not (isEmpty!7799 rules!2550)))))

(declare-fun e!837742 () Bool)

(assert (=> b!1306432 (= e!837746 (not e!837742))))

(declare-fun res!585691 () Bool)

(assert (=> b!1306432 (=> res!585691 e!837742)))

(declare-fun lambda!52188 () Int)

(declare-fun Exists!749 (Int) Bool)

(assert (=> b!1306432 (= res!585691 (not (Exists!749 lambda!52188)))))

(assert (=> b!1306432 (Exists!749 lambda!52188)))

(declare-fun lt!429882 () Unit!19268)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!67 (Regex!3591 List!13237) Unit!19268)

(assert (=> b!1306432 (= lt!429882 (lemmaPrefixMatchThenExistsStringThatMatches!67 lt!429875 lt!429886))))

(assert (=> b!1306433 (= e!837752 (and tp!381086 tp!381079))))

(declare-fun b!1306434 () Bool)

(declare-fun res!585673 () Bool)

(assert (=> b!1306434 (=> res!585673 e!837744)))

(assert (=> b!1306434 (= res!585673 (not (contains!2242 lt!429873 lt!429876)))))

(declare-fun b!1306435 () Bool)

(assert (=> b!1306435 (= e!837742 e!837757)))

(declare-fun res!585689 () Bool)

(assert (=> b!1306435 (=> res!585689 e!837757)))

(declare-fun getSuffix!447 (List!13237 List!13237) List!13237)

(assert (=> b!1306435 (= res!585689 (not (= lt!429873 (++!3354 lt!429886 (getSuffix!447 lt!429873 lt!429886)))))))

(declare-fun pickWitness!54 (Int) List!13237)

(assert (=> b!1306435 (= lt!429873 (pickWitness!54 lambda!52188))))

(declare-fun b!1306436 () Bool)

(declare-fun res!585686 () Bool)

(assert (=> b!1306436 (=> (not res!585686) (not e!837739))))

(assert (=> b!1306436 (= res!585686 (rulesProduceIndividualToken!941 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1306437 () Bool)

(declare-fun tp!381077 () Bool)

(assert (=> b!1306437 (= e!837748 (and e!837741 tp!381077))))

(assert (= (and start!115442 res!585678) b!1306431))

(assert (= (and b!1306431 res!585690) b!1306412))

(assert (= (and b!1306412 res!585692) b!1306415))

(assert (= (and b!1306415 res!585687) b!1306436))

(assert (= (and b!1306436 res!585686) b!1306410))

(assert (= (and b!1306410 res!585675) b!1306424))

(assert (= (and b!1306424 res!585685) b!1306407))

(assert (= (and b!1306407 res!585679) b!1306427))

(assert (= (and b!1306427 res!585677) b!1306416))

(assert (= (and b!1306416 res!585682) b!1306432))

(assert (= (and b!1306432 (not res!585691)) b!1306435))

(assert (= (and b!1306435 (not res!585689)) b!1306417))

(assert (= (and b!1306417 (not res!585680)) b!1306434))

(assert (= (and b!1306434 (not res!585673)) b!1306422))

(assert (= (and b!1306422 (not res!585681)) b!1306409))

(assert (= (and b!1306409 (not res!585671)) b!1306428))

(assert (= (and b!1306428 (not res!585676)) b!1306429))

(assert (= (and b!1306429 (not res!585670)) b!1306413))

(assert (= (and b!1306413 (not res!585672)) b!1306425))

(assert (= (and b!1306425 (not res!585674)) b!1306420))

(assert (= (and b!1306420 (not res!585684)) b!1306423))

(assert (= (and b!1306423 (not res!585688)) b!1306414))

(assert (= (and b!1306414 (not res!585683)) b!1306406))

(assert (= b!1306408 b!1306421))

(assert (= b!1306437 b!1306408))

(assert (= (and start!115442 ((_ is Cons!13172) rules!2550)) b!1306437))

(assert (= b!1306419 b!1306426))

(assert (= b!1306418 b!1306419))

(assert (= start!115442 b!1306418))

(assert (= b!1306411 b!1306433))

(assert (= b!1306430 b!1306411))

(assert (= start!115442 b!1306430))

(declare-fun m!1458095 () Bool)

(assert (=> b!1306430 m!1458095))

(declare-fun m!1458097 () Bool)

(assert (=> b!1306411 m!1458097))

(declare-fun m!1458099 () Bool)

(assert (=> b!1306411 m!1458099))

(declare-fun m!1458101 () Bool)

(assert (=> b!1306429 m!1458101))

(assert (=> b!1306429 m!1458101))

(declare-fun m!1458103 () Bool)

(assert (=> b!1306429 m!1458103))

(assert (=> b!1306429 m!1458101))

(declare-fun m!1458105 () Bool)

(assert (=> b!1306429 m!1458105))

(declare-fun m!1458107 () Bool)

(assert (=> b!1306429 m!1458107))

(declare-fun m!1458109 () Bool)

(assert (=> b!1306423 m!1458109))

(declare-fun m!1458111 () Bool)

(assert (=> b!1306418 m!1458111))

(declare-fun m!1458113 () Bool)

(assert (=> b!1306427 m!1458113))

(assert (=> b!1306413 m!1458101))

(assert (=> b!1306413 m!1458101))

(declare-fun m!1458115 () Bool)

(assert (=> b!1306413 m!1458115))

(assert (=> b!1306413 m!1458101))

(assert (=> b!1306413 m!1458101))

(declare-fun m!1458117 () Bool)

(assert (=> b!1306413 m!1458117))

(declare-fun m!1458119 () Bool)

(assert (=> b!1306420 m!1458119))

(declare-fun m!1458121 () Bool)

(assert (=> b!1306420 m!1458121))

(declare-fun m!1458123 () Bool)

(assert (=> b!1306420 m!1458123))

(assert (=> b!1306420 m!1458121))

(declare-fun m!1458125 () Bool)

(assert (=> b!1306420 m!1458125))

(declare-fun m!1458127 () Bool)

(assert (=> b!1306420 m!1458127))

(declare-fun m!1458129 () Bool)

(assert (=> b!1306417 m!1458129))

(declare-fun m!1458131 () Bool)

(assert (=> b!1306417 m!1458131))

(declare-fun m!1458133 () Bool)

(assert (=> b!1306409 m!1458133))

(declare-fun m!1458135 () Bool)

(assert (=> b!1306432 m!1458135))

(assert (=> b!1306432 m!1458135))

(declare-fun m!1458137 () Bool)

(assert (=> b!1306432 m!1458137))

(declare-fun m!1458139 () Bool)

(assert (=> b!1306422 m!1458139))

(declare-fun m!1458141 () Bool)

(assert (=> b!1306428 m!1458141))

(declare-fun m!1458143 () Bool)

(assert (=> b!1306415 m!1458143))

(declare-fun m!1458145 () Bool)

(assert (=> b!1306416 m!1458145))

(declare-fun m!1458147 () Bool)

(assert (=> b!1306416 m!1458147))

(declare-fun m!1458149 () Bool)

(assert (=> b!1306416 m!1458149))

(declare-fun m!1458151 () Bool)

(assert (=> b!1306416 m!1458151))

(declare-fun m!1458153 () Bool)

(assert (=> b!1306416 m!1458153))

(declare-fun m!1458155 () Bool)

(assert (=> b!1306416 m!1458155))

(declare-fun m!1458157 () Bool)

(assert (=> b!1306419 m!1458157))

(declare-fun m!1458159 () Bool)

(assert (=> b!1306419 m!1458159))

(declare-fun m!1458161 () Bool)

(assert (=> start!115442 m!1458161))

(declare-fun m!1458163 () Bool)

(assert (=> start!115442 m!1458163))

(declare-fun m!1458165 () Bool)

(assert (=> b!1306434 m!1458165))

(declare-fun m!1458167 () Bool)

(assert (=> b!1306425 m!1458167))

(assert (=> b!1306425 m!1458167))

(declare-fun m!1458169 () Bool)

(assert (=> b!1306425 m!1458169))

(declare-fun m!1458171 () Bool)

(assert (=> b!1306431 m!1458171))

(declare-fun m!1458173 () Bool)

(assert (=> b!1306414 m!1458173))

(assert (=> b!1306414 m!1458173))

(declare-fun m!1458175 () Bool)

(assert (=> b!1306414 m!1458175))

(declare-fun m!1458177 () Bool)

(assert (=> b!1306435 m!1458177))

(assert (=> b!1306435 m!1458177))

(declare-fun m!1458179 () Bool)

(assert (=> b!1306435 m!1458179))

(declare-fun m!1458181 () Bool)

(assert (=> b!1306435 m!1458181))

(declare-fun m!1458183 () Bool)

(assert (=> b!1306407 m!1458183))

(declare-fun m!1458185 () Bool)

(assert (=> b!1306408 m!1458185))

(declare-fun m!1458187 () Bool)

(assert (=> b!1306408 m!1458187))

(declare-fun m!1458189 () Bool)

(assert (=> b!1306436 m!1458189))

(declare-fun m!1458191 () Bool)

(assert (=> b!1306424 m!1458191))

(declare-fun m!1458193 () Bool)

(assert (=> b!1306424 m!1458193))

(declare-fun m!1458195 () Bool)

(assert (=> b!1306406 m!1458195))

(declare-fun m!1458197 () Bool)

(assert (=> b!1306412 m!1458197))

(check-sat (not b_next!31997) (not b!1306428) b_and!87197 (not b!1306427) (not b!1306412) (not b!1306434) b_and!87191 (not b!1306406) (not b!1306437) (not b_next!32005) (not b_next!32003) (not b!1306413) (not b!1306425) (not b!1306407) (not b_next!32001) (not b!1306416) b_and!87201 (not b!1306432) (not b_next!31995) (not b!1306414) (not b_next!31999) (not b!1306417) b_and!87193 (not b!1306418) (not b!1306409) (not b!1306408) (not b!1306430) (not b!1306411) (not b!1306431) (not b!1306419) (not b!1306424) (not b!1306415) (not b!1306422) (not b!1306423) b_and!87199 (not b!1306436) b_and!87195 (not b!1306435) (not b!1306420) (not b!1306429) (not start!115442))
(check-sat (not b_next!31997) (not b_next!32001) b_and!87197 b_and!87201 (not b_next!31995) (not b_next!31999) b_and!87193 b_and!87191 b_and!87199 b_and!87195 (not b_next!32005) (not b_next!32003))
