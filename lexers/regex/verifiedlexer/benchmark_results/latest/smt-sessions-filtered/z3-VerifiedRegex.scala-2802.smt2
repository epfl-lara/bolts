; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155934 () Bool)

(assert start!155934)

(declare-fun b!1634630 () Bool)

(declare-fun b_free!44167 () Bool)

(declare-fun b_next!44871 () Bool)

(assert (=> b!1634630 (= b_free!44167 (not b_next!44871))))

(declare-fun tp!474183 () Bool)

(declare-fun b_and!115885 () Bool)

(assert (=> b!1634630 (= tp!474183 b_and!115885)))

(declare-fun b_free!44169 () Bool)

(declare-fun b_next!44873 () Bool)

(assert (=> b!1634630 (= b_free!44169 (not b_next!44873))))

(declare-fun tp!474184 () Bool)

(declare-fun b_and!115887 () Bool)

(assert (=> b!1634630 (= tp!474184 b_and!115887)))

(declare-fun b!1634644 () Bool)

(declare-fun b_free!44171 () Bool)

(declare-fun b_next!44875 () Bool)

(assert (=> b!1634644 (= b_free!44171 (not b_next!44875))))

(declare-fun tp!474177 () Bool)

(declare-fun b_and!115889 () Bool)

(assert (=> b!1634644 (= tp!474177 b_and!115889)))

(declare-fun b_free!44173 () Bool)

(declare-fun b_next!44877 () Bool)

(assert (=> b!1634644 (= b_free!44173 (not b_next!44877))))

(declare-fun tp!474179 () Bool)

(declare-fun b_and!115891 () Bool)

(assert (=> b!1634644 (= tp!474179 b_and!115891)))

(declare-fun tp!474182 () Bool)

(declare-fun e!1048300 () Bool)

(declare-fun b!1634623 () Bool)

(declare-datatypes ((List!18033 0))(
  ( (Nil!17963) (Cons!17963 (h!23364 (_ BitVec 16)) (t!149658 List!18033)) )
))
(declare-datatypes ((TokenValue!3255 0))(
  ( (FloatLiteralValue!6510 (text!23230 List!18033)) (TokenValueExt!3254 (__x!11812 Int)) (Broken!16275 (value!99849 List!18033)) (Object!3324) (End!3255) (Def!3255) (Underscore!3255) (Match!3255) (Else!3255) (Error!3255) (Case!3255) (If!3255) (Extends!3255) (Abstract!3255) (Class!3255) (Val!3255) (DelimiterValue!6510 (del!3315 List!18033)) (KeywordValue!3261 (value!99850 List!18033)) (CommentValue!6510 (value!99851 List!18033)) (WhitespaceValue!6510 (value!99852 List!18033)) (IndentationValue!3255 (value!99853 List!18033)) (String!20606) (Int32!3255) (Broken!16276 (value!99854 List!18033)) (Boolean!3256) (Unit!29347) (OperatorValue!3258 (op!3315 List!18033)) (IdentifierValue!6510 (value!99855 List!18033)) (IdentifierValue!6511 (value!99856 List!18033)) (WhitespaceValue!6511 (value!99857 List!18033)) (True!6510) (False!6510) (Broken!16277 (value!99858 List!18033)) (Broken!16278 (value!99859 List!18033)) (True!6511) (RightBrace!3255) (RightBracket!3255) (Colon!3255) (Null!3255) (Comma!3255) (LeftBracket!3255) (False!6511) (LeftBrace!3255) (ImaginaryLiteralValue!3255 (text!23231 List!18033)) (StringLiteralValue!9765 (value!99860 List!18033)) (EOFValue!3255 (value!99861 List!18033)) (IdentValue!3255 (value!99862 List!18033)) (DelimiterValue!6511 (value!99863 List!18033)) (DedentValue!3255 (value!99864 List!18033)) (NewLineValue!3255 (value!99865 List!18033)) (IntegerValue!9765 (value!99866 (_ BitVec 32)) (text!23232 List!18033)) (IntegerValue!9766 (value!99867 Int) (text!23233 List!18033)) (Times!3255) (Or!3255) (Equal!3255) (Minus!3255) (Broken!16279 (value!99868 List!18033)) (And!3255) (Div!3255) (LessEqual!3255) (Mod!3255) (Concat!7748) (Not!3255) (Plus!3255) (SpaceValue!3255 (value!99869 List!18033)) (IntegerValue!9767 (value!99870 Int) (text!23234 List!18033)) (StringLiteralValue!9766 (text!23235 List!18033)) (FloatLiteralValue!6511 (text!23236 List!18033)) (BytesLiteralValue!3255 (value!99871 List!18033)) (CommentValue!6511 (value!99872 List!18033)) (StringLiteralValue!9767 (value!99873 List!18033)) (ErrorTokenValue!3255 (msg!3316 List!18033)) )
))
(declare-datatypes ((C!9160 0))(
  ( (C!9161 (val!5176 Int)) )
))
(declare-datatypes ((List!18034 0))(
  ( (Nil!17964) (Cons!17964 (h!23365 C!9160) (t!149659 List!18034)) )
))
(declare-datatypes ((IArray!11961 0))(
  ( (IArray!11962 (innerList!6038 List!18034)) )
))
(declare-datatypes ((Conc!5978 0))(
  ( (Node!5978 (left!14418 Conc!5978) (right!14748 Conc!5978) (csize!12186 Int) (cheight!6189 Int)) (Leaf!8781 (xs!8814 IArray!11961) (csize!12187 Int)) (Empty!5978) )
))
(declare-datatypes ((BalanceConc!11900 0))(
  ( (BalanceConc!11901 (c!266019 Conc!5978)) )
))
(declare-datatypes ((Regex!4493 0))(
  ( (ElementMatch!4493 (c!266020 C!9160)) (Concat!7749 (regOne!9498 Regex!4493) (regTwo!9498 Regex!4493)) (EmptyExpr!4493) (Star!4493 (reg!4822 Regex!4493)) (EmptyLang!4493) (Union!4493 (regOne!9499 Regex!4493) (regTwo!9499 Regex!4493)) )
))
(declare-datatypes ((String!20607 0))(
  ( (String!20608 (value!99874 String)) )
))
(declare-datatypes ((TokenValueInjection!6170 0))(
  ( (TokenValueInjection!6171 (toValue!4596 Int) (toChars!4455 Int)) )
))
(declare-datatypes ((Rule!6130 0))(
  ( (Rule!6131 (regex!3165 Regex!4493) (tag!3445 String!20607) (isSeparator!3165 Bool) (transformation!3165 TokenValueInjection!6170)) )
))
(declare-datatypes ((Token!5896 0))(
  ( (Token!5897 (value!99875 TokenValue!3255) (rule!5005 Rule!6130) (size!14338 Int) (originalCharacters!3979 List!18034)) )
))
(declare-datatypes ((List!18035 0))(
  ( (Nil!17965) (Cons!17965 (h!23366 Token!5896) (t!149660 List!18035)) )
))
(declare-fun tokens!457 () List!18035)

(declare-fun e!1048303 () Bool)

(declare-fun inv!23321 (String!20607) Bool)

(declare-fun inv!23324 (TokenValueInjection!6170) Bool)

(assert (=> b!1634623 (= e!1048300 (and tp!474182 (inv!23321 (tag!3445 (rule!5005 (h!23366 tokens!457)))) (inv!23324 (transformation!3165 (rule!5005 (h!23366 tokens!457)))) e!1048303))))

(declare-fun b!1634624 () Bool)

(declare-fun e!1048313 () Bool)

(declare-fun e!1048314 () Bool)

(assert (=> b!1634624 (= e!1048313 e!1048314)))

(declare-fun res!731737 () Bool)

(assert (=> b!1634624 (=> res!731737 e!1048314)))

(declare-datatypes ((List!18036 0))(
  ( (Nil!17966) (Cons!17966 (h!23367 Rule!6130) (t!149661 List!18036)) )
))
(declare-fun rules!1846 () List!18036)

(declare-datatypes ((LexerInterface!2794 0))(
  ( (LexerInterfaceExt!2791 (__x!11813 Int)) (Lexer!2792) )
))
(declare-fun thiss!17113 () LexerInterface!2794)

(declare-datatypes ((tuple2!17578 0))(
  ( (tuple2!17579 (_1!10191 Token!5896) (_2!10191 BalanceConc!11900)) )
))
(declare-datatypes ((Option!3365 0))(
  ( (None!3364) (Some!3364 (v!24441 tuple2!17578)) )
))
(declare-fun isDefined!2732 (Option!3365) Bool)

(declare-fun maxPrefixZipperSequence!689 (LexerInterface!2794 List!18036 BalanceConc!11900) Option!3365)

(declare-fun seqFromList!2079 (List!18034) BalanceConc!11900)

(assert (=> b!1634624 (= res!731737 (not (isDefined!2732 (maxPrefixZipperSequence!689 thiss!17113 rules!1846 (seqFromList!2079 (originalCharacters!3979 (h!23366 tokens!457)))))))))

(declare-fun lt!596295 () List!18034)

(declare-fun lt!596313 () List!18034)

(assert (=> b!1634624 (= lt!596295 lt!596313)))

(declare-fun lt!596305 () BalanceConc!11900)

(declare-fun head!3510 (BalanceConc!11900) C!9160)

(assert (=> b!1634624 (= lt!596313 (Cons!17964 (head!3510 lt!596305) Nil!17964))))

(declare-fun e!1048304 () Bool)

(assert (=> b!1634624 e!1048304))

(declare-fun res!731728 () Bool)

(assert (=> b!1634624 (=> (not res!731728) (not e!1048304))))

(declare-fun lt!596289 () List!18034)

(assert (=> b!1634624 (= res!731728 (= lt!596289 (originalCharacters!3979 (h!23366 tokens!457))))))

(declare-fun b!1634625 () Bool)

(declare-fun e!1048298 () Bool)

(declare-fun e!1048305 () Bool)

(assert (=> b!1634625 (= e!1048298 e!1048305)))

(declare-fun res!731729 () Bool)

(assert (=> b!1634625 (=> res!731729 e!1048305)))

(declare-fun lt!596297 () Regex!4493)

(declare-fun lt!596300 () BalanceConc!11900)

(declare-fun lt!596293 () BalanceConc!11900)

(declare-fun prefixMatchZipperSequence!565 (Regex!4493 BalanceConc!11900) Bool)

(declare-fun ++!4805 (BalanceConc!11900 BalanceConc!11900) BalanceConc!11900)

(assert (=> b!1634625 (= res!731729 (prefixMatchZipperSequence!565 lt!596297 (++!4805 lt!596293 lt!596300)))))

(declare-fun singletonSeq!1608 (C!9160) BalanceConc!11900)

(declare-fun apply!4640 (BalanceConc!11900 Int) C!9160)

(declare-fun charsOf!1814 (Token!5896) BalanceConc!11900)

(assert (=> b!1634625 (= lt!596300 (singletonSeq!1608 (apply!4640 (charsOf!1814 (h!23366 (t!149660 tokens!457))) 0)))))

(declare-fun rulesRegex!555 (LexerInterface!2794 List!18036) Regex!4493)

(assert (=> b!1634625 (= lt!596297 (rulesRegex!555 thiss!17113 rules!1846))))

(declare-fun e!1048311 () Bool)

(declare-fun b!1634626 () Bool)

(declare-fun e!1048309 () Bool)

(declare-fun tp!474180 () Bool)

(declare-fun inv!23325 (Token!5896) Bool)

(assert (=> b!1634626 (= e!1048309 (and (inv!23325 (h!23366 tokens!457)) e!1048311 tp!474180))))

(declare-fun b!1634627 () Bool)

(declare-fun res!731715 () Bool)

(declare-fun e!1048310 () Bool)

(assert (=> b!1634627 (=> res!731715 e!1048310)))

(declare-fun lt!596312 () List!18034)

(declare-datatypes ((tuple2!17580 0))(
  ( (tuple2!17581 (_1!10192 Token!5896) (_2!10192 List!18034)) )
))
(declare-datatypes ((Option!3366 0))(
  ( (None!3365) (Some!3365 (v!24442 tuple2!17580)) )
))
(declare-fun get!5200 (Option!3366) tuple2!17580)

(declare-fun maxPrefixZipper!322 (LexerInterface!2794 List!18036 List!18034) Option!3366)

(assert (=> b!1634627 (= res!731715 (not (= (h!23366 tokens!457) (_1!10192 (get!5200 (maxPrefixZipper!322 thiss!17113 rules!1846 lt!596312))))))))

(declare-fun b!1634628 () Bool)

(declare-fun res!731716 () Bool)

(declare-fun e!1048312 () Bool)

(assert (=> b!1634628 (=> (not res!731716) (not e!1048312))))

(declare-fun rulesProduceEachTokenIndividuallyList!996 (LexerInterface!2794 List!18036 List!18035) Bool)

(assert (=> b!1634628 (= res!731716 (rulesProduceEachTokenIndividuallyList!996 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1634629 () Bool)

(declare-fun res!731718 () Bool)

(assert (=> b!1634629 (=> (not res!731718) (not e!1048312))))

(get-info :version)

(assert (=> b!1634629 (= res!731718 (and (not ((_ is Nil!17965) tokens!457)) (not ((_ is Nil!17965) (t!149660 tokens!457)))))))

(assert (=> b!1634630 (= e!1048303 (and tp!474183 tp!474184))))

(declare-fun b!1634631 () Bool)

(declare-fun e!1048295 () Bool)

(declare-fun e!1048306 () Bool)

(assert (=> b!1634631 (= e!1048295 e!1048306)))

(declare-fun res!731738 () Bool)

(assert (=> b!1634631 (=> res!731738 e!1048306)))

(declare-fun lt!596296 () List!18035)

(declare-fun lt!596304 () List!18035)

(declare-fun lt!596287 () List!18035)

(assert (=> b!1634631 (= res!731738 (or (not (= lt!596287 lt!596304)) (not (= lt!596304 lt!596296))))))

(declare-datatypes ((IArray!11963 0))(
  ( (IArray!11964 (innerList!6039 List!18035)) )
))
(declare-datatypes ((Conc!5979 0))(
  ( (Node!5979 (left!14419 Conc!5979) (right!14749 Conc!5979) (csize!12188 Int) (cheight!6190 Int)) (Leaf!8782 (xs!8815 IArray!11963) (csize!12189 Int)) (Empty!5979) )
))
(declare-datatypes ((BalanceConc!11902 0))(
  ( (BalanceConc!11903 (c!266021 Conc!5979)) )
))
(declare-fun lt!596311 () BalanceConc!11902)

(declare-fun list!7075 (BalanceConc!11902) List!18035)

(assert (=> b!1634631 (= lt!596304 (list!7075 lt!596311))))

(assert (=> b!1634631 (= lt!596287 lt!596296)))

(declare-fun prepend!703 (BalanceConc!11902 Token!5896) BalanceConc!11902)

(declare-fun seqFromList!2080 (List!18035) BalanceConc!11902)

(assert (=> b!1634631 (= lt!596296 (list!7075 (prepend!703 (seqFromList!2080 (t!149660 (t!149660 tokens!457))) (h!23366 (t!149660 tokens!457)))))))

(declare-datatypes ((Unit!29348 0))(
  ( (Unit!29349) )
))
(declare-fun lt!596316 () Unit!29348)

(declare-datatypes ((tuple2!17582 0))(
  ( (tuple2!17583 (_1!10193 BalanceConc!11902) (_2!10193 BalanceConc!11900)) )
))
(declare-fun lt!596301 () tuple2!17582)

(declare-fun seqFromListBHdTlConstructive!242 (Token!5896 List!18035 BalanceConc!11902) Unit!29348)

(assert (=> b!1634631 (= lt!596316 (seqFromListBHdTlConstructive!242 (h!23366 (t!149660 tokens!457)) (t!149660 (t!149660 tokens!457)) (_1!10193 lt!596301)))))

(declare-fun b!1634632 () Bool)

(declare-fun res!731734 () Bool)

(assert (=> b!1634632 (=> res!731734 e!1048306)))

(declare-fun separableTokensPredicate!736 (LexerInterface!2794 Token!5896 Token!5896 List!18036) Bool)

(assert (=> b!1634632 (= res!731734 (not (separableTokensPredicate!736 thiss!17113 (h!23366 tokens!457) (h!23366 (t!149660 tokens!457)) rules!1846)))))

(declare-fun b!1634633 () Bool)

(declare-fun res!731730 () Bool)

(declare-fun e!1048292 () Bool)

(assert (=> b!1634633 (=> res!731730 e!1048292)))

(declare-fun isEmpty!10997 (BalanceConc!11902) Bool)

(declare-fun lex!1278 (LexerInterface!2794 List!18036 BalanceConc!11900) tuple2!17582)

(assert (=> b!1634633 (= res!731730 (isEmpty!10997 (_1!10193 (lex!1278 thiss!17113 rules!1846 (seqFromList!2079 lt!596289)))))))

(declare-fun b!1634634 () Bool)

(declare-fun e!1048296 () Bool)

(declare-fun e!1048308 () Bool)

(declare-fun tp!474178 () Bool)

(assert (=> b!1634634 (= e!1048296 (and e!1048308 tp!474178))))

(declare-fun b!1634635 () Bool)

(declare-fun lt!596294 () List!18034)

(declare-fun head!3511 (List!18034) C!9160)

(assert (=> b!1634635 (= e!1048304 (= lt!596295 (Cons!17964 (head!3511 lt!596294) Nil!17964)))))

(declare-fun b!1634636 () Bool)

(assert (=> b!1634636 (= e!1048305 e!1048313)))

(declare-fun res!731720 () Bool)

(assert (=> b!1634636 (=> res!731720 e!1048313)))

(declare-fun prefixMatch!428 (Regex!4493 List!18034) Bool)

(declare-fun ++!4806 (List!18034 List!18034) List!18034)

(assert (=> b!1634636 (= res!731720 (prefixMatch!428 lt!596297 (++!4806 lt!596289 lt!596295)))))

(declare-fun list!7076 (BalanceConc!11900) List!18034)

(assert (=> b!1634636 (= lt!596295 (list!7076 lt!596300))))

(declare-fun b!1634637 () Bool)

(declare-fun e!1048294 () Bool)

(assert (=> b!1634637 (= e!1048312 e!1048294)))

(declare-fun res!731717 () Bool)

(assert (=> b!1634637 (=> (not res!731717) (not e!1048294))))

(declare-fun lt!596302 () List!18034)

(assert (=> b!1634637 (= res!731717 (= lt!596312 lt!596302))))

(assert (=> b!1634637 (= lt!596302 (++!4806 lt!596289 lt!596294))))

(declare-fun lt!596314 () BalanceConc!11900)

(assert (=> b!1634637 (= lt!596312 (list!7076 lt!596314))))

(assert (=> b!1634637 (= lt!596294 (list!7076 lt!596305))))

(assert (=> b!1634637 (= lt!596289 (list!7076 lt!596293))))

(assert (=> b!1634637 (= lt!596293 (charsOf!1814 (h!23366 tokens!457)))))

(assert (=> b!1634637 (= lt!596301 (lex!1278 thiss!17113 rules!1846 lt!596305))))

(declare-fun print!1325 (LexerInterface!2794 BalanceConc!11902) BalanceConc!11900)

(assert (=> b!1634637 (= lt!596305 (print!1325 thiss!17113 lt!596311))))

(assert (=> b!1634637 (= lt!596311 (seqFromList!2080 (t!149660 tokens!457)))))

(assert (=> b!1634637 (= lt!596314 (print!1325 thiss!17113 (seqFromList!2080 tokens!457)))))

(declare-fun res!731724 () Bool)

(assert (=> start!155934 (=> (not res!731724) (not e!1048312))))

(assert (=> start!155934 (= res!731724 ((_ is Lexer!2792) thiss!17113))))

(assert (=> start!155934 e!1048312))

(assert (=> start!155934 true))

(assert (=> start!155934 e!1048296))

(assert (=> start!155934 e!1048309))

(declare-fun b!1634638 () Bool)

(declare-fun res!731723 () Bool)

(assert (=> b!1634638 (=> (not res!731723) (not e!1048312))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!487 (LexerInterface!2794 List!18035 List!18036) Bool)

(assert (=> b!1634638 (= res!731723 (tokensListTwoByTwoPredicateSeparableList!487 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1634639 () Bool)

(declare-fun res!731714 () Bool)

(assert (=> b!1634639 (=> (not res!731714) (not e!1048312))))

(declare-fun isEmpty!10998 (List!18036) Bool)

(assert (=> b!1634639 (= res!731714 (not (isEmpty!10998 rules!1846)))))

(declare-fun b!1634640 () Bool)

(declare-fun res!731732 () Bool)

(assert (=> b!1634640 (=> (not res!731732) (not e!1048304))))

(assert (=> b!1634640 (= res!731732 (= lt!596295 (Cons!17964 (head!3511 (originalCharacters!3979 (h!23366 (t!149660 tokens!457)))) Nil!17964)))))

(declare-fun b!1634641 () Bool)

(declare-fun res!731735 () Bool)

(assert (=> b!1634641 (=> (not res!731735) (not e!1048312))))

(declare-fun rulesInvariant!2463 (LexerInterface!2794 List!18036) Bool)

(assert (=> b!1634641 (= res!731735 (rulesInvariant!2463 thiss!17113 rules!1846))))

(declare-fun b!1634642 () Bool)

(declare-fun e!1048301 () Bool)

(assert (=> b!1634642 (= e!1048314 e!1048301)))

(declare-fun res!731725 () Bool)

(assert (=> b!1634642 (=> res!731725 e!1048301)))

(assert (=> b!1634642 (= res!731725 (prefixMatch!428 lt!596297 (++!4806 (originalCharacters!3979 (h!23366 tokens!457)) lt!596313)))))

(declare-fun e!1048299 () Bool)

(assert (=> b!1634642 e!1048299))

(declare-fun res!731733 () Bool)

(assert (=> b!1634642 (=> (not res!731733) (not e!1048299))))

(declare-fun lt!596306 () tuple2!17580)

(assert (=> b!1634642 (= res!731733 (= (_1!10192 lt!596306) (h!23366 tokens!457)))))

(declare-fun lt!596308 () Option!3366)

(assert (=> b!1634642 (= lt!596306 (get!5200 lt!596308))))

(declare-fun isDefined!2733 (Option!3366) Bool)

(assert (=> b!1634642 (isDefined!2733 lt!596308)))

(declare-fun maxPrefix!1358 (LexerInterface!2794 List!18036 List!18034) Option!3366)

(assert (=> b!1634642 (= lt!596308 (maxPrefix!1358 thiss!17113 rules!1846 lt!596289))))

(assert (=> b!1634642 (isDefined!2733 (maxPrefix!1358 thiss!17113 rules!1846 (originalCharacters!3979 (h!23366 tokens!457))))))

(declare-fun b!1634643 () Bool)

(declare-fun res!731726 () Bool)

(assert (=> b!1634643 (=> res!731726 e!1048301)))

(assert (=> b!1634643 (= res!731726 (prefixMatch!428 lt!596297 (++!4806 lt!596289 lt!596313)))))

(declare-fun e!1048297 () Bool)

(assert (=> b!1634644 (= e!1048297 (and tp!474177 tp!474179))))

(declare-fun tp!474181 () Bool)

(declare-fun b!1634645 () Bool)

(assert (=> b!1634645 (= e!1048308 (and tp!474181 (inv!23321 (tag!3445 (h!23367 rules!1846))) (inv!23324 (transformation!3165 (h!23367 rules!1846))) e!1048297))))

(declare-fun b!1634646 () Bool)

(assert (=> b!1634646 (= e!1048301 e!1048310)))

(declare-fun res!731722 () Bool)

(assert (=> b!1634646 (=> res!731722 e!1048310)))

(declare-fun lt!596307 () tuple2!17580)

(assert (=> b!1634646 (= res!731722 (or (not (= (_1!10192 lt!596307) (h!23366 tokens!457))) (not (= (_2!10192 lt!596307) lt!596294))))))

(declare-fun lt!596310 () Option!3366)

(assert (=> b!1634646 (= lt!596307 (get!5200 lt!596310))))

(declare-fun lt!596291 () Unit!29348)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!130 (LexerInterface!2794 List!18036 Token!5896 Rule!6130 List!18034) Unit!29348)

(assert (=> b!1634646 (= lt!596291 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!130 thiss!17113 rules!1846 (h!23366 tokens!457) (rule!5005 (h!23366 tokens!457)) lt!596294))))

(declare-fun b!1634647 () Bool)

(declare-fun res!731719 () Bool)

(assert (=> b!1634647 (=> res!731719 e!1048292)))

(declare-fun rulesProduceIndividualToken!1446 (LexerInterface!2794 List!18036 Token!5896) Bool)

(assert (=> b!1634647 (= res!731719 (not (rulesProduceIndividualToken!1446 thiss!17113 rules!1846 (h!23366 tokens!457))))))

(declare-fun b!1634648 () Bool)

(assert (=> b!1634648 (= e!1048294 (not e!1048295))))

(declare-fun res!731736 () Bool)

(assert (=> b!1634648 (=> res!731736 e!1048295)))

(assert (=> b!1634648 (= res!731736 (not (= lt!596287 (t!149660 tokens!457))))))

(assert (=> b!1634648 (= lt!596287 (list!7075 (_1!10193 lt!596301)))))

(declare-fun lt!596299 () Unit!29348)

(declare-fun theoremInvertabilityWhenTokenListSeparable!239 (LexerInterface!2794 List!18036 List!18035) Unit!29348)

(assert (=> b!1634648 (= lt!596299 (theoremInvertabilityWhenTokenListSeparable!239 thiss!17113 rules!1846 (t!149660 tokens!457)))))

(declare-fun isPrefix!1425 (List!18034 List!18034) Bool)

(assert (=> b!1634648 (isPrefix!1425 lt!596289 lt!596302)))

(declare-fun lt!596315 () Unit!29348)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!950 (List!18034 List!18034) Unit!29348)

(assert (=> b!1634648 (= lt!596315 (lemmaConcatTwoListThenFirstIsPrefix!950 lt!596289 lt!596294))))

(declare-fun b!1634649 () Bool)

(assert (=> b!1634649 (= e!1048306 e!1048292)))

(declare-fun res!731721 () Bool)

(assert (=> b!1634649 (=> res!731721 e!1048292)))

(declare-fun lt!596298 () List!18034)

(declare-fun lt!596309 () List!18034)

(assert (=> b!1634649 (= res!731721 (or (not (= lt!596309 lt!596298)) (not (= lt!596298 lt!596289)) (not (= lt!596309 lt!596289))))))

(declare-fun printList!909 (LexerInterface!2794 List!18035) List!18034)

(assert (=> b!1634649 (= lt!596298 (printList!909 thiss!17113 (Cons!17965 (h!23366 tokens!457) Nil!17965)))))

(declare-fun lt!596290 () BalanceConc!11900)

(assert (=> b!1634649 (= lt!596309 (list!7076 lt!596290))))

(declare-fun lt!596292 () BalanceConc!11902)

(declare-fun printTailRec!847 (LexerInterface!2794 BalanceConc!11902 Int BalanceConc!11900) BalanceConc!11900)

(assert (=> b!1634649 (= lt!596290 (printTailRec!847 thiss!17113 lt!596292 0 (BalanceConc!11901 Empty!5978)))))

(assert (=> b!1634649 (= lt!596290 (print!1325 thiss!17113 lt!596292))))

(declare-fun singletonSeq!1609 (Token!5896) BalanceConc!11902)

(assert (=> b!1634649 (= lt!596292 (singletonSeq!1609 (h!23366 tokens!457)))))

(assert (=> b!1634649 (= lt!596310 (maxPrefix!1358 thiss!17113 rules!1846 lt!596312))))

(declare-fun b!1634650 () Bool)

(assert (=> b!1634650 (= e!1048292 e!1048298)))

(declare-fun res!731727 () Bool)

(assert (=> b!1634650 (=> res!731727 e!1048298)))

(assert (=> b!1634650 (= res!731727 (not (isDefined!2733 lt!596310)))))

(declare-fun lt!596303 () Unit!29348)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!368 (LexerInterface!2794 List!18036 List!18034 List!18034) Unit!29348)

(assert (=> b!1634650 (= lt!596303 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!368 thiss!17113 rules!1846 lt!596289 lt!596294))))

(declare-fun b!1634651 () Bool)

(declare-fun matchR!1992 (Regex!4493 List!18034) Bool)

(assert (=> b!1634651 (= e!1048299 (matchR!1992 (regex!3165 (rule!5005 (h!23366 tokens!457))) lt!596289))))

(declare-fun b!1634652 () Bool)

(assert (=> b!1634652 (= e!1048310 true)))

(declare-fun lt!596288 () Option!3365)

(assert (=> b!1634652 (= lt!596288 (maxPrefixZipperSequence!689 thiss!17113 rules!1846 lt!596314))))

(declare-fun b!1634653 () Bool)

(declare-fun res!731731 () Bool)

(assert (=> b!1634653 (=> (not res!731731) (not e!1048299))))

(declare-fun isEmpty!10999 (List!18034) Bool)

(assert (=> b!1634653 (= res!731731 (isEmpty!10999 (_2!10192 lt!596306)))))

(declare-fun tp!474176 () Bool)

(declare-fun b!1634654 () Bool)

(declare-fun inv!21 (TokenValue!3255) Bool)

(assert (=> b!1634654 (= e!1048311 (and (inv!21 (value!99875 (h!23366 tokens!457))) e!1048300 tp!474176))))

(assert (= (and start!155934 res!731724) b!1634639))

(assert (= (and b!1634639 res!731714) b!1634641))

(assert (= (and b!1634641 res!731735) b!1634628))

(assert (= (and b!1634628 res!731716) b!1634638))

(assert (= (and b!1634638 res!731723) b!1634629))

(assert (= (and b!1634629 res!731718) b!1634637))

(assert (= (and b!1634637 res!731717) b!1634648))

(assert (= (and b!1634648 (not res!731736)) b!1634631))

(assert (= (and b!1634631 (not res!731738)) b!1634632))

(assert (= (and b!1634632 (not res!731734)) b!1634649))

(assert (= (and b!1634649 (not res!731721)) b!1634647))

(assert (= (and b!1634647 (not res!731719)) b!1634633))

(assert (= (and b!1634633 (not res!731730)) b!1634650))

(assert (= (and b!1634650 (not res!731727)) b!1634625))

(assert (= (and b!1634625 (not res!731729)) b!1634636))

(assert (= (and b!1634636 (not res!731720)) b!1634624))

(assert (= (and b!1634624 res!731728) b!1634640))

(assert (= (and b!1634640 res!731732) b!1634635))

(assert (= (and b!1634624 (not res!731737)) b!1634642))

(assert (= (and b!1634642 res!731733) b!1634653))

(assert (= (and b!1634653 res!731731) b!1634651))

(assert (= (and b!1634642 (not res!731725)) b!1634643))

(assert (= (and b!1634643 (not res!731726)) b!1634646))

(assert (= (and b!1634646 (not res!731722)) b!1634627))

(assert (= (and b!1634627 (not res!731715)) b!1634652))

(assert (= b!1634645 b!1634644))

(assert (= b!1634634 b!1634645))

(assert (= (and start!155934 ((_ is Cons!17966) rules!1846)) b!1634634))

(assert (= b!1634623 b!1634630))

(assert (= b!1634654 b!1634623))

(assert (= b!1634626 b!1634654))

(assert (= (and start!155934 ((_ is Cons!17965) tokens!457)) b!1634626))

(declare-fun m!1970407 () Bool)

(assert (=> b!1634642 m!1970407))

(declare-fun m!1970409 () Bool)

(assert (=> b!1634642 m!1970409))

(declare-fun m!1970411 () Bool)

(assert (=> b!1634642 m!1970411))

(declare-fun m!1970413 () Bool)

(assert (=> b!1634642 m!1970413))

(declare-fun m!1970415 () Bool)

(assert (=> b!1634642 m!1970415))

(assert (=> b!1634642 m!1970407))

(declare-fun m!1970417 () Bool)

(assert (=> b!1634642 m!1970417))

(assert (=> b!1634642 m!1970415))

(declare-fun m!1970419 () Bool)

(assert (=> b!1634642 m!1970419))

(declare-fun m!1970421 () Bool)

(assert (=> b!1634643 m!1970421))

(assert (=> b!1634643 m!1970421))

(declare-fun m!1970423 () Bool)

(assert (=> b!1634643 m!1970423))

(declare-fun m!1970425 () Bool)

(assert (=> b!1634653 m!1970425))

(declare-fun m!1970427 () Bool)

(assert (=> b!1634636 m!1970427))

(assert (=> b!1634636 m!1970427))

(declare-fun m!1970429 () Bool)

(assert (=> b!1634636 m!1970429))

(declare-fun m!1970431 () Bool)

(assert (=> b!1634636 m!1970431))

(declare-fun m!1970433 () Bool)

(assert (=> b!1634648 m!1970433))

(declare-fun m!1970435 () Bool)

(assert (=> b!1634648 m!1970435))

(declare-fun m!1970437 () Bool)

(assert (=> b!1634648 m!1970437))

(declare-fun m!1970439 () Bool)

(assert (=> b!1634648 m!1970439))

(declare-fun m!1970441 () Bool)

(assert (=> b!1634646 m!1970441))

(declare-fun m!1970443 () Bool)

(assert (=> b!1634646 m!1970443))

(declare-fun m!1970445 () Bool)

(assert (=> b!1634640 m!1970445))

(declare-fun m!1970447 () Bool)

(assert (=> b!1634633 m!1970447))

(assert (=> b!1634633 m!1970447))

(declare-fun m!1970449 () Bool)

(assert (=> b!1634633 m!1970449))

(declare-fun m!1970451 () Bool)

(assert (=> b!1634633 m!1970451))

(declare-fun m!1970453 () Bool)

(assert (=> b!1634649 m!1970453))

(declare-fun m!1970455 () Bool)

(assert (=> b!1634649 m!1970455))

(declare-fun m!1970457 () Bool)

(assert (=> b!1634649 m!1970457))

(declare-fun m!1970459 () Bool)

(assert (=> b!1634649 m!1970459))

(declare-fun m!1970461 () Bool)

(assert (=> b!1634649 m!1970461))

(declare-fun m!1970463 () Bool)

(assert (=> b!1634649 m!1970463))

(declare-fun m!1970465 () Bool)

(assert (=> b!1634637 m!1970465))

(declare-fun m!1970467 () Bool)

(assert (=> b!1634637 m!1970467))

(declare-fun m!1970469 () Bool)

(assert (=> b!1634637 m!1970469))

(declare-fun m!1970471 () Bool)

(assert (=> b!1634637 m!1970471))

(declare-fun m!1970473 () Bool)

(assert (=> b!1634637 m!1970473))

(declare-fun m!1970475 () Bool)

(assert (=> b!1634637 m!1970475))

(declare-fun m!1970477 () Bool)

(assert (=> b!1634637 m!1970477))

(declare-fun m!1970479 () Bool)

(assert (=> b!1634637 m!1970479))

(declare-fun m!1970481 () Bool)

(assert (=> b!1634637 m!1970481))

(declare-fun m!1970483 () Bool)

(assert (=> b!1634637 m!1970483))

(assert (=> b!1634637 m!1970477))

(declare-fun m!1970485 () Bool)

(assert (=> b!1634645 m!1970485))

(declare-fun m!1970487 () Bool)

(assert (=> b!1634645 m!1970487))

(declare-fun m!1970489 () Bool)

(assert (=> b!1634641 m!1970489))

(declare-fun m!1970491 () Bool)

(assert (=> b!1634626 m!1970491))

(declare-fun m!1970493 () Bool)

(assert (=> b!1634628 m!1970493))

(declare-fun m!1970495 () Bool)

(assert (=> b!1634647 m!1970495))

(declare-fun m!1970497 () Bool)

(assert (=> b!1634632 m!1970497))

(declare-fun m!1970499 () Bool)

(assert (=> b!1634652 m!1970499))

(declare-fun m!1970501 () Bool)

(assert (=> b!1634635 m!1970501))

(declare-fun m!1970503 () Bool)

(assert (=> b!1634638 m!1970503))

(declare-fun m!1970505 () Bool)

(assert (=> b!1634654 m!1970505))

(declare-fun m!1970507 () Bool)

(assert (=> b!1634625 m!1970507))

(declare-fun m!1970509 () Bool)

(assert (=> b!1634625 m!1970509))

(declare-fun m!1970511 () Bool)

(assert (=> b!1634625 m!1970511))

(declare-fun m!1970513 () Bool)

(assert (=> b!1634625 m!1970513))

(declare-fun m!1970515 () Bool)

(assert (=> b!1634625 m!1970515))

(assert (=> b!1634625 m!1970513))

(declare-fun m!1970517 () Bool)

(assert (=> b!1634625 m!1970517))

(assert (=> b!1634625 m!1970509))

(assert (=> b!1634625 m!1970517))

(declare-fun m!1970519 () Bool)

(assert (=> b!1634624 m!1970519))

(assert (=> b!1634624 m!1970519))

(declare-fun m!1970521 () Bool)

(assert (=> b!1634624 m!1970521))

(assert (=> b!1634624 m!1970521))

(declare-fun m!1970523 () Bool)

(assert (=> b!1634624 m!1970523))

(declare-fun m!1970525 () Bool)

(assert (=> b!1634624 m!1970525))

(declare-fun m!1970527 () Bool)

(assert (=> b!1634623 m!1970527))

(declare-fun m!1970529 () Bool)

(assert (=> b!1634623 m!1970529))

(declare-fun m!1970531 () Bool)

(assert (=> b!1634639 m!1970531))

(declare-fun m!1970533 () Bool)

(assert (=> b!1634651 m!1970533))

(declare-fun m!1970535 () Bool)

(assert (=> b!1634631 m!1970535))

(declare-fun m!1970537 () Bool)

(assert (=> b!1634631 m!1970537))

(declare-fun m!1970539 () Bool)

(assert (=> b!1634631 m!1970539))

(declare-fun m!1970541 () Bool)

(assert (=> b!1634631 m!1970541))

(declare-fun m!1970543 () Bool)

(assert (=> b!1634631 m!1970543))

(assert (=> b!1634631 m!1970539))

(assert (=> b!1634631 m!1970541))

(declare-fun m!1970545 () Bool)

(assert (=> b!1634627 m!1970545))

(assert (=> b!1634627 m!1970545))

(declare-fun m!1970547 () Bool)

(assert (=> b!1634627 m!1970547))

(declare-fun m!1970549 () Bool)

(assert (=> b!1634650 m!1970549))

(declare-fun m!1970551 () Bool)

(assert (=> b!1634650 m!1970551))

(check-sat (not b!1634648) (not b!1634636) (not b!1634649) (not b!1634643) (not b!1634633) (not b!1634642) (not b!1634623) b_and!115891 (not b!1634626) (not b!1634653) (not b!1634628) b_and!115889 (not b_next!44873) (not b!1634646) (not b!1634641) (not b!1634627) (not b!1634639) (not b!1634647) (not b!1634625) (not b!1634645) (not b_next!44877) b_and!115887 (not b!1634652) (not b_next!44875) (not b!1634632) (not b!1634637) b_and!115885 (not b!1634640) (not b!1634634) (not b!1634650) (not b!1634631) (not b_next!44871) (not b!1634654) (not b!1634638) (not b!1634651) (not b!1634635) (not b!1634624))
(check-sat (not b_next!44877) b_and!115887 (not b_next!44871) b_and!115891 b_and!115889 (not b_next!44873) (not b_next!44875) b_and!115885)
