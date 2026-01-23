; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!149242 () Bool)

(assert start!149242)

(declare-fun b!1587213 () Bool)

(declare-fun b_free!42935 () Bool)

(declare-fun b_next!43639 () Bool)

(assert (=> b!1587213 (= b_free!42935 (not b_next!43639))))

(declare-fun tp!466604 () Bool)

(declare-fun b_and!111301 () Bool)

(assert (=> b!1587213 (= tp!466604 b_and!111301)))

(declare-fun b_free!42937 () Bool)

(declare-fun b_next!43641 () Bool)

(assert (=> b!1587213 (= b_free!42937 (not b_next!43641))))

(declare-fun tp!466608 () Bool)

(declare-fun b_and!111303 () Bool)

(assert (=> b!1587213 (= tp!466608 b_and!111303)))

(declare-fun b!1587209 () Bool)

(declare-fun b_free!42939 () Bool)

(declare-fun b_next!43643 () Bool)

(assert (=> b!1587209 (= b_free!42939 (not b_next!43643))))

(declare-fun tp!466606 () Bool)

(declare-fun b_and!111305 () Bool)

(assert (=> b!1587209 (= tp!466606 b_and!111305)))

(declare-fun b_free!42941 () Bool)

(declare-fun b_next!43645 () Bool)

(assert (=> b!1587209 (= b_free!42941 (not b_next!43645))))

(declare-fun tp!466610 () Bool)

(declare-fun b_and!111307 () Bool)

(assert (=> b!1587209 (= tp!466610 b_and!111307)))

(declare-fun b!1587203 () Bool)

(declare-fun e!1019493 () Bool)

(declare-fun e!1019502 () Bool)

(assert (=> b!1587203 (= e!1019493 e!1019502)))

(declare-fun res!707965 () Bool)

(assert (=> b!1587203 (=> res!707965 e!1019502)))

(declare-datatypes ((List!17523 0))(
  ( (Nil!17453) (Cons!17453 (h!22854 (_ BitVec 16)) (t!144318 List!17523)) )
))
(declare-datatypes ((TokenValue!3165 0))(
  ( (FloatLiteralValue!6330 (text!22600 List!17523)) (TokenValueExt!3164 (__x!11632 Int)) (Broken!15825 (value!97284 List!17523)) (Object!3234) (End!3165) (Def!3165) (Underscore!3165) (Match!3165) (Else!3165) (Error!3165) (Case!3165) (If!3165) (Extends!3165) (Abstract!3165) (Class!3165) (Val!3165) (DelimiterValue!6330 (del!3225 List!17523)) (KeywordValue!3171 (value!97285 List!17523)) (CommentValue!6330 (value!97286 List!17523)) (WhitespaceValue!6330 (value!97287 List!17523)) (IndentationValue!3165 (value!97288 List!17523)) (String!20156) (Int32!3165) (Broken!15826 (value!97289 List!17523)) (Boolean!3166) (Unit!27416) (OperatorValue!3168 (op!3225 List!17523)) (IdentifierValue!6330 (value!97290 List!17523)) (IdentifierValue!6331 (value!97291 List!17523)) (WhitespaceValue!6331 (value!97292 List!17523)) (True!6330) (False!6330) (Broken!15827 (value!97293 List!17523)) (Broken!15828 (value!97294 List!17523)) (True!6331) (RightBrace!3165) (RightBracket!3165) (Colon!3165) (Null!3165) (Comma!3165) (LeftBracket!3165) (False!6331) (LeftBrace!3165) (ImaginaryLiteralValue!3165 (text!22601 List!17523)) (StringLiteralValue!9495 (value!97295 List!17523)) (EOFValue!3165 (value!97296 List!17523)) (IdentValue!3165 (value!97297 List!17523)) (DelimiterValue!6331 (value!97298 List!17523)) (DedentValue!3165 (value!97299 List!17523)) (NewLineValue!3165 (value!97300 List!17523)) (IntegerValue!9495 (value!97301 (_ BitVec 32)) (text!22602 List!17523)) (IntegerValue!9496 (value!97302 Int) (text!22603 List!17523)) (Times!3165) (Or!3165) (Equal!3165) (Minus!3165) (Broken!15829 (value!97303 List!17523)) (And!3165) (Div!3165) (LessEqual!3165) (Mod!3165) (Concat!7568) (Not!3165) (Plus!3165) (SpaceValue!3165 (value!97304 List!17523)) (IntegerValue!9497 (value!97305 Int) (text!22604 List!17523)) (StringLiteralValue!9496 (text!22605 List!17523)) (FloatLiteralValue!6331 (text!22606 List!17523)) (BytesLiteralValue!3165 (value!97306 List!17523)) (CommentValue!6331 (value!97307 List!17523)) (StringLiteralValue!9497 (value!97308 List!17523)) (ErrorTokenValue!3165 (msg!3226 List!17523)) )
))
(declare-datatypes ((C!8980 0))(
  ( (C!8981 (val!5086 Int)) )
))
(declare-datatypes ((Regex!4403 0))(
  ( (ElementMatch!4403 (c!257221 C!8980)) (Concat!7569 (regOne!9318 Regex!4403) (regTwo!9318 Regex!4403)) (EmptyExpr!4403) (Star!4403 (reg!4732 Regex!4403)) (EmptyLang!4403) (Union!4403 (regOne!9319 Regex!4403) (regTwo!9319 Regex!4403)) )
))
(declare-datatypes ((String!20157 0))(
  ( (String!20158 (value!97309 String)) )
))
(declare-datatypes ((List!17524 0))(
  ( (Nil!17454) (Cons!17454 (h!22855 C!8980) (t!144319 List!17524)) )
))
(declare-datatypes ((IArray!11601 0))(
  ( (IArray!11602 (innerList!5858 List!17524)) )
))
(declare-datatypes ((Conc!5798 0))(
  ( (Node!5798 (left!14093 Conc!5798) (right!14423 Conc!5798) (csize!11826 Int) (cheight!6009 Int)) (Leaf!8556 (xs!8606 IArray!11601) (csize!11827 Int)) (Empty!5798) )
))
(declare-datatypes ((BalanceConc!11540 0))(
  ( (BalanceConc!11541 (c!257222 Conc!5798)) )
))
(declare-datatypes ((TokenValueInjection!5990 0))(
  ( (TokenValueInjection!5991 (toValue!4486 Int) (toChars!4345 Int)) )
))
(declare-datatypes ((Rule!5950 0))(
  ( (Rule!5951 (regex!3075 Regex!4403) (tag!3345 String!20157) (isSeparator!3075 Bool) (transformation!3075 TokenValueInjection!5990)) )
))
(declare-datatypes ((Token!5716 0))(
  ( (Token!5717 (value!97310 TokenValue!3165) (rule!4879 Rule!5950) (size!14038 Int) (originalCharacters!3889 List!17524)) )
))
(declare-datatypes ((List!17525 0))(
  ( (Nil!17455) (Cons!17455 (h!22856 Token!5716) (t!144320 List!17525)) )
))
(declare-fun lt!559505 () List!17525)

(declare-fun lt!559516 () List!17525)

(declare-fun lt!559523 () List!17525)

(assert (=> b!1587203 (= res!707965 (or (not (= lt!559516 lt!559505)) (not (= lt!559505 lt!559523))))))

(declare-datatypes ((IArray!11603 0))(
  ( (IArray!11604 (innerList!5859 List!17525)) )
))
(declare-datatypes ((Conc!5799 0))(
  ( (Node!5799 (left!14094 Conc!5799) (right!14424 Conc!5799) (csize!11828 Int) (cheight!6010 Int)) (Leaf!8557 (xs!8607 IArray!11603) (csize!11829 Int)) (Empty!5799) )
))
(declare-datatypes ((BalanceConc!11542 0))(
  ( (BalanceConc!11543 (c!257223 Conc!5799)) )
))
(declare-fun lt!559522 () BalanceConc!11542)

(declare-fun list!6775 (BalanceConc!11542) List!17525)

(assert (=> b!1587203 (= lt!559505 (list!6775 lt!559522))))

(assert (=> b!1587203 (= lt!559516 lt!559523)))

(declare-fun tokens!457 () List!17525)

(declare-fun prepend!563 (BalanceConc!11542 Token!5716) BalanceConc!11542)

(declare-fun seqFromList!1899 (List!17525) BalanceConc!11542)

(assert (=> b!1587203 (= lt!559523 (list!6775 (prepend!563 (seqFromList!1899 (t!144320 (t!144320 tokens!457))) (h!22856 (t!144320 tokens!457)))))))

(declare-datatypes ((Unit!27417 0))(
  ( (Unit!27418) )
))
(declare-fun lt!559518 () Unit!27417)

(declare-datatypes ((tuple2!16936 0))(
  ( (tuple2!16937 (_1!9870 BalanceConc!11542) (_2!9870 BalanceConc!11540)) )
))
(declare-fun lt!559508 () tuple2!16936)

(declare-fun seqFromListBHdTlConstructive!152 (Token!5716 List!17525 BalanceConc!11542) Unit!27417)

(assert (=> b!1587203 (= lt!559518 (seqFromListBHdTlConstructive!152 (h!22856 (t!144320 tokens!457)) (t!144320 (t!144320 tokens!457)) (_1!9870 lt!559508)))))

(declare-fun b!1587204 () Bool)

(declare-fun res!707955 () Bool)

(declare-fun e!1019504 () Bool)

(assert (=> b!1587204 (=> (not res!707955) (not e!1019504))))

(declare-datatypes ((List!17526 0))(
  ( (Nil!17456) (Cons!17456 (h!22857 Rule!5950) (t!144321 List!17526)) )
))
(declare-fun rules!1846 () List!17526)

(declare-datatypes ((LexerInterface!2704 0))(
  ( (LexerInterfaceExt!2701 (__x!11633 Int)) (Lexer!2702) )
))
(declare-fun thiss!17113 () LexerInterface!2704)

(declare-fun tokensListTwoByTwoPredicateSeparableList!397 (LexerInterface!2704 List!17525 List!17526) Bool)

(assert (=> b!1587204 (= res!707955 (tokensListTwoByTwoPredicateSeparableList!397 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1587205 () Bool)

(declare-fun e!1019505 () Bool)

(assert (=> b!1587205 (= e!1019505 (not e!1019493))))

(declare-fun res!707954 () Bool)

(assert (=> b!1587205 (=> res!707954 e!1019493)))

(assert (=> b!1587205 (= res!707954 (not (= lt!559516 (t!144320 tokens!457))))))

(assert (=> b!1587205 (= lt!559516 (list!6775 (_1!9870 lt!559508)))))

(declare-fun lt!559514 () Unit!27417)

(declare-fun theoremInvertabilityWhenTokenListSeparable!149 (LexerInterface!2704 List!17526 List!17525) Unit!27417)

(assert (=> b!1587205 (= lt!559514 (theoremInvertabilityWhenTokenListSeparable!149 thiss!17113 rules!1846 (t!144320 tokens!457)))))

(declare-fun lt!559527 () List!17524)

(declare-fun lt!559517 () List!17524)

(declare-fun isPrefix!1335 (List!17524 List!17524) Bool)

(assert (=> b!1587205 (isPrefix!1335 lt!559527 lt!559517)))

(declare-fun lt!559520 () Unit!27417)

(declare-fun lt!559507 () List!17524)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!860 (List!17524 List!17524) Unit!27417)

(assert (=> b!1587205 (= lt!559520 (lemmaConcatTwoListThenFirstIsPrefix!860 lt!559527 lt!559507))))

(declare-fun b!1587207 () Bool)

(declare-fun e!1019497 () Bool)

(declare-fun lt!559515 () Regex!4403)

(declare-fun validRegex!1740 (Regex!4403) Bool)

(assert (=> b!1587207 (= e!1019497 (validRegex!1740 lt!559515))))

(declare-fun lt!559512 () List!17524)

(declare-fun lt!559528 () BalanceConc!11540)

(declare-fun ++!4555 (List!17524 List!17524) List!17524)

(declare-fun list!6776 (BalanceConc!11540) List!17524)

(assert (=> b!1587207 (= lt!559512 (++!4555 lt!559527 (list!6776 lt!559528)))))

(declare-fun b!1587208 () Bool)

(declare-fun e!1019490 () Bool)

(declare-fun e!1019494 () Bool)

(assert (=> b!1587208 (= e!1019490 e!1019494)))

(declare-fun res!707958 () Bool)

(assert (=> b!1587208 (=> res!707958 e!1019494)))

(declare-datatypes ((tuple2!16938 0))(
  ( (tuple2!16939 (_1!9871 Token!5716) (_2!9871 List!17524)) )
))
(declare-datatypes ((Option!3144 0))(
  ( (None!3143) (Some!3143 (v!24024 tuple2!16938)) )
))
(declare-fun lt!559521 () Option!3144)

(declare-fun isDefined!2519 (Option!3144) Bool)

(assert (=> b!1587208 (= res!707958 (not (isDefined!2519 lt!559521)))))

(declare-fun lt!559524 () Unit!27417)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!278 (LexerInterface!2704 List!17526 List!17524 List!17524) Unit!27417)

(assert (=> b!1587208 (= lt!559524 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!278 thiss!17113 rules!1846 lt!559527 lt!559507))))

(declare-fun e!1019495 () Bool)

(assert (=> b!1587209 (= e!1019495 (and tp!466606 tp!466610))))

(declare-fun b!1587210 () Bool)

(assert (=> b!1587210 (= e!1019494 e!1019497)))

(declare-fun res!707956 () Bool)

(assert (=> b!1587210 (=> res!707956 e!1019497)))

(declare-fun lt!559525 () BalanceConc!11540)

(declare-fun prefixMatchZipperSequence!425 (Regex!4403 BalanceConc!11540) Bool)

(declare-fun ++!4556 (BalanceConc!11540 BalanceConc!11540) BalanceConc!11540)

(assert (=> b!1587210 (= res!707956 (prefixMatchZipperSequence!425 lt!559515 (++!4556 lt!559525 lt!559528)))))

(declare-fun singletonSeq!1428 (C!8980) BalanceConc!11540)

(declare-fun apply!4278 (BalanceConc!11540 Int) C!8980)

(declare-fun charsOf!1724 (Token!5716) BalanceConc!11540)

(assert (=> b!1587210 (= lt!559528 (singletonSeq!1428 (apply!4278 (charsOf!1724 (h!22856 (t!144320 tokens!457))) 0)))))

(declare-fun rulesRegex!465 (LexerInterface!2704 List!17526) Regex!4403)

(assert (=> b!1587210 (= lt!559515 (rulesRegex!465 thiss!17113 rules!1846))))

(declare-fun b!1587211 () Bool)

(declare-fun res!707964 () Bool)

(assert (=> b!1587211 (=> res!707964 e!1019490)))

(declare-fun isEmpty!10474 (BalanceConc!11542) Bool)

(declare-fun lex!1188 (LexerInterface!2704 List!17526 BalanceConc!11540) tuple2!16936)

(declare-fun seqFromList!1900 (List!17524) BalanceConc!11540)

(assert (=> b!1587211 (= res!707964 (isEmpty!10474 (_1!9870 (lex!1188 thiss!17113 rules!1846 (seqFromList!1900 lt!559527)))))))

(declare-fun e!1019503 () Bool)

(declare-fun tp!466603 () Bool)

(declare-fun b!1587212 () Bool)

(declare-fun e!1019498 () Bool)

(declare-fun inv!21 (TokenValue!3165) Bool)

(assert (=> b!1587212 (= e!1019503 (and (inv!21 (value!97310 (h!22856 tokens!457))) e!1019498 tp!466603))))

(declare-fun e!1019501 () Bool)

(assert (=> b!1587213 (= e!1019501 (and tp!466604 tp!466608))))

(declare-fun b!1587214 () Bool)

(declare-fun res!707960 () Bool)

(assert (=> b!1587214 (=> (not res!707960) (not e!1019504))))

(declare-fun isEmpty!10475 (List!17526) Bool)

(assert (=> b!1587214 (= res!707960 (not (isEmpty!10475 rules!1846)))))

(declare-fun b!1587215 () Bool)

(assert (=> b!1587215 (= e!1019504 e!1019505)))

(declare-fun res!707962 () Bool)

(assert (=> b!1587215 (=> (not res!707962) (not e!1019505))))

(declare-fun lt!559510 () List!17524)

(assert (=> b!1587215 (= res!707962 (= lt!559510 lt!559517))))

(assert (=> b!1587215 (= lt!559517 (++!4555 lt!559527 lt!559507))))

(declare-fun lt!559513 () BalanceConc!11540)

(assert (=> b!1587215 (= lt!559510 (list!6776 lt!559513))))

(declare-fun lt!559506 () BalanceConc!11540)

(assert (=> b!1587215 (= lt!559507 (list!6776 lt!559506))))

(assert (=> b!1587215 (= lt!559527 (list!6776 lt!559525))))

(assert (=> b!1587215 (= lt!559525 (charsOf!1724 (h!22856 tokens!457)))))

(assert (=> b!1587215 (= lt!559508 (lex!1188 thiss!17113 rules!1846 lt!559506))))

(declare-fun print!1235 (LexerInterface!2704 BalanceConc!11542) BalanceConc!11540)

(assert (=> b!1587215 (= lt!559506 (print!1235 thiss!17113 lt!559522))))

(assert (=> b!1587215 (= lt!559522 (seqFromList!1899 (t!144320 tokens!457)))))

(assert (=> b!1587215 (= lt!559513 (print!1235 thiss!17113 (seqFromList!1899 tokens!457)))))

(declare-fun b!1587216 () Bool)

(assert (=> b!1587216 (= e!1019502 e!1019490)))

(declare-fun res!707953 () Bool)

(assert (=> b!1587216 (=> res!707953 e!1019490)))

(declare-fun lt!559526 () List!17524)

(declare-fun lt!559509 () List!17524)

(assert (=> b!1587216 (= res!707953 (or (not (= lt!559509 lt!559526)) (not (= lt!559526 lt!559527)) (not (= lt!559509 lt!559527))))))

(declare-fun printList!819 (LexerInterface!2704 List!17525) List!17524)

(assert (=> b!1587216 (= lt!559526 (printList!819 thiss!17113 (Cons!17455 (h!22856 tokens!457) Nil!17455)))))

(declare-fun lt!559519 () BalanceConc!11540)

(assert (=> b!1587216 (= lt!559509 (list!6776 lt!559519))))

(declare-fun lt!559511 () BalanceConc!11542)

(declare-fun printTailRec!757 (LexerInterface!2704 BalanceConc!11542 Int BalanceConc!11540) BalanceConc!11540)

(assert (=> b!1587216 (= lt!559519 (printTailRec!757 thiss!17113 lt!559511 0 (BalanceConc!11541 Empty!5798)))))

(assert (=> b!1587216 (= lt!559519 (print!1235 thiss!17113 lt!559511))))

(declare-fun singletonSeq!1429 (Token!5716) BalanceConc!11542)

(assert (=> b!1587216 (= lt!559511 (singletonSeq!1429 (h!22856 tokens!457)))))

(declare-fun maxPrefix!1268 (LexerInterface!2704 List!17526 List!17524) Option!3144)

(assert (=> b!1587216 (= lt!559521 (maxPrefix!1268 thiss!17113 rules!1846 lt!559510))))

(declare-fun b!1587206 () Bool)

(declare-fun res!707963 () Bool)

(assert (=> b!1587206 (=> res!707963 e!1019502)))

(declare-fun separableTokensPredicate!646 (LexerInterface!2704 Token!5716 Token!5716 List!17526) Bool)

(assert (=> b!1587206 (= res!707963 (not (separableTokensPredicate!646 thiss!17113 (h!22856 tokens!457) (h!22856 (t!144320 tokens!457)) rules!1846)))))

(declare-fun res!707966 () Bool)

(assert (=> start!149242 (=> (not res!707966) (not e!1019504))))

(get-info :version)

(assert (=> start!149242 (= res!707966 ((_ is Lexer!2702) thiss!17113))))

(assert (=> start!149242 e!1019504))

(assert (=> start!149242 true))

(declare-fun e!1019499 () Bool)

(assert (=> start!149242 e!1019499))

(declare-fun e!1019491 () Bool)

(assert (=> start!149242 e!1019491))

(declare-fun b!1587217 () Bool)

(declare-fun tp!466609 () Bool)

(declare-fun inv!22867 (Token!5716) Bool)

(assert (=> b!1587217 (= e!1019491 (and (inv!22867 (h!22856 tokens!457)) e!1019503 tp!466609))))

(declare-fun tp!466602 () Bool)

(declare-fun b!1587218 () Bool)

(declare-fun inv!22864 (String!20157) Bool)

(declare-fun inv!22868 (TokenValueInjection!5990) Bool)

(assert (=> b!1587218 (= e!1019498 (and tp!466602 (inv!22864 (tag!3345 (rule!4879 (h!22856 tokens!457)))) (inv!22868 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) e!1019495))))

(declare-fun b!1587219 () Bool)

(declare-fun res!707961 () Bool)

(assert (=> b!1587219 (=> (not res!707961) (not e!1019504))))

(declare-fun rulesInvariant!2373 (LexerInterface!2704 List!17526) Bool)

(assert (=> b!1587219 (= res!707961 (rulesInvariant!2373 thiss!17113 rules!1846))))

(declare-fun b!1587220 () Bool)

(declare-fun res!707952 () Bool)

(assert (=> b!1587220 (=> (not res!707952) (not e!1019504))))

(declare-fun rulesProduceEachTokenIndividuallyList!906 (LexerInterface!2704 List!17526 List!17525) Bool)

(assert (=> b!1587220 (= res!707952 (rulesProduceEachTokenIndividuallyList!906 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1019500 () Bool)

(declare-fun tp!466607 () Bool)

(declare-fun b!1587221 () Bool)

(assert (=> b!1587221 (= e!1019500 (and tp!466607 (inv!22864 (tag!3345 (h!22857 rules!1846))) (inv!22868 (transformation!3075 (h!22857 rules!1846))) e!1019501))))

(declare-fun b!1587222 () Bool)

(declare-fun tp!466605 () Bool)

(assert (=> b!1587222 (= e!1019499 (and e!1019500 tp!466605))))

(declare-fun b!1587223 () Bool)

(declare-fun res!707959 () Bool)

(assert (=> b!1587223 (=> res!707959 e!1019490)))

(declare-fun rulesProduceIndividualToken!1356 (LexerInterface!2704 List!17526 Token!5716) Bool)

(assert (=> b!1587223 (= res!707959 (not (rulesProduceIndividualToken!1356 thiss!17113 rules!1846 (h!22856 tokens!457))))))

(declare-fun b!1587224 () Bool)

(declare-fun res!707957 () Bool)

(assert (=> b!1587224 (=> (not res!707957) (not e!1019504))))

(assert (=> b!1587224 (= res!707957 (and (not ((_ is Nil!17455) tokens!457)) (not ((_ is Nil!17455) (t!144320 tokens!457)))))))

(assert (= (and start!149242 res!707966) b!1587214))

(assert (= (and b!1587214 res!707960) b!1587219))

(assert (= (and b!1587219 res!707961) b!1587220))

(assert (= (and b!1587220 res!707952) b!1587204))

(assert (= (and b!1587204 res!707955) b!1587224))

(assert (= (and b!1587224 res!707957) b!1587215))

(assert (= (and b!1587215 res!707962) b!1587205))

(assert (= (and b!1587205 (not res!707954)) b!1587203))

(assert (= (and b!1587203 (not res!707965)) b!1587206))

(assert (= (and b!1587206 (not res!707963)) b!1587216))

(assert (= (and b!1587216 (not res!707953)) b!1587223))

(assert (= (and b!1587223 (not res!707959)) b!1587211))

(assert (= (and b!1587211 (not res!707964)) b!1587208))

(assert (= (and b!1587208 (not res!707958)) b!1587210))

(assert (= (and b!1587210 (not res!707956)) b!1587207))

(assert (= b!1587221 b!1587213))

(assert (= b!1587222 b!1587221))

(assert (= (and start!149242 ((_ is Cons!17456) rules!1846)) b!1587222))

(assert (= b!1587218 b!1587209))

(assert (= b!1587212 b!1587218))

(assert (= b!1587217 b!1587212))

(assert (= (and start!149242 ((_ is Cons!17455) tokens!457)) b!1587217))

(declare-fun m!1877419 () Bool)

(assert (=> b!1587221 m!1877419))

(declare-fun m!1877421 () Bool)

(assert (=> b!1587221 m!1877421))

(declare-fun m!1877423 () Bool)

(assert (=> b!1587220 m!1877423))

(declare-fun m!1877425 () Bool)

(assert (=> b!1587218 m!1877425))

(declare-fun m!1877427 () Bool)

(assert (=> b!1587218 m!1877427))

(declare-fun m!1877429 () Bool)

(assert (=> b!1587210 m!1877429))

(declare-fun m!1877431 () Bool)

(assert (=> b!1587210 m!1877431))

(declare-fun m!1877433 () Bool)

(assert (=> b!1587210 m!1877433))

(assert (=> b!1587210 m!1877431))

(declare-fun m!1877435 () Bool)

(assert (=> b!1587210 m!1877435))

(declare-fun m!1877437 () Bool)

(assert (=> b!1587210 m!1877437))

(declare-fun m!1877439 () Bool)

(assert (=> b!1587210 m!1877439))

(assert (=> b!1587210 m!1877435))

(assert (=> b!1587210 m!1877439))

(declare-fun m!1877441 () Bool)

(assert (=> b!1587204 m!1877441))

(declare-fun m!1877443 () Bool)

(assert (=> b!1587211 m!1877443))

(assert (=> b!1587211 m!1877443))

(declare-fun m!1877445 () Bool)

(assert (=> b!1587211 m!1877445))

(declare-fun m!1877447 () Bool)

(assert (=> b!1587211 m!1877447))

(declare-fun m!1877449 () Bool)

(assert (=> b!1587216 m!1877449))

(declare-fun m!1877451 () Bool)

(assert (=> b!1587216 m!1877451))

(declare-fun m!1877453 () Bool)

(assert (=> b!1587216 m!1877453))

(declare-fun m!1877455 () Bool)

(assert (=> b!1587216 m!1877455))

(declare-fun m!1877457 () Bool)

(assert (=> b!1587216 m!1877457))

(declare-fun m!1877459 () Bool)

(assert (=> b!1587216 m!1877459))

(declare-fun m!1877461 () Bool)

(assert (=> b!1587212 m!1877461))

(declare-fun m!1877463 () Bool)

(assert (=> b!1587207 m!1877463))

(declare-fun m!1877465 () Bool)

(assert (=> b!1587207 m!1877465))

(assert (=> b!1587207 m!1877465))

(declare-fun m!1877467 () Bool)

(assert (=> b!1587207 m!1877467))

(declare-fun m!1877469 () Bool)

(assert (=> b!1587214 m!1877469))

(declare-fun m!1877471 () Bool)

(assert (=> b!1587223 m!1877471))

(declare-fun m!1877473 () Bool)

(assert (=> b!1587219 m!1877473))

(declare-fun m!1877475 () Bool)

(assert (=> b!1587205 m!1877475))

(declare-fun m!1877477 () Bool)

(assert (=> b!1587205 m!1877477))

(declare-fun m!1877479 () Bool)

(assert (=> b!1587205 m!1877479))

(declare-fun m!1877481 () Bool)

(assert (=> b!1587205 m!1877481))

(declare-fun m!1877483 () Bool)

(assert (=> b!1587215 m!1877483))

(declare-fun m!1877485 () Bool)

(assert (=> b!1587215 m!1877485))

(declare-fun m!1877487 () Bool)

(assert (=> b!1587215 m!1877487))

(declare-fun m!1877489 () Bool)

(assert (=> b!1587215 m!1877489))

(declare-fun m!1877491 () Bool)

(assert (=> b!1587215 m!1877491))

(declare-fun m!1877493 () Bool)

(assert (=> b!1587215 m!1877493))

(declare-fun m!1877495 () Bool)

(assert (=> b!1587215 m!1877495))

(declare-fun m!1877497 () Bool)

(assert (=> b!1587215 m!1877497))

(declare-fun m!1877499 () Bool)

(assert (=> b!1587215 m!1877499))

(assert (=> b!1587215 m!1877493))

(declare-fun m!1877501 () Bool)

(assert (=> b!1587215 m!1877501))

(declare-fun m!1877503 () Bool)

(assert (=> b!1587217 m!1877503))

(declare-fun m!1877505 () Bool)

(assert (=> b!1587206 m!1877505))

(declare-fun m!1877507 () Bool)

(assert (=> b!1587208 m!1877507))

(declare-fun m!1877509 () Bool)

(assert (=> b!1587208 m!1877509))

(declare-fun m!1877511 () Bool)

(assert (=> b!1587203 m!1877511))

(declare-fun m!1877513 () Bool)

(assert (=> b!1587203 m!1877513))

(declare-fun m!1877515 () Bool)

(assert (=> b!1587203 m!1877515))

(declare-fun m!1877517 () Bool)

(assert (=> b!1587203 m!1877517))

(declare-fun m!1877519 () Bool)

(assert (=> b!1587203 m!1877519))

(assert (=> b!1587203 m!1877515))

(assert (=> b!1587203 m!1877517))

(check-sat (not b_next!43645) (not b!1587205) (not b!1587216) (not b_next!43641) (not b!1587206) (not b_next!43639) (not b!1587222) (not b!1587208) (not b!1587203) b_and!111303 b_and!111307 (not b!1587211) (not b!1587215) (not b!1587221) (not b!1587219) (not b!1587210) (not b_next!43643) (not b!1587214) (not b!1587220) (not b!1587207) b_and!111301 (not b!1587223) (not b!1587218) b_and!111305 (not b!1587212) (not b!1587217) (not b!1587204))
(check-sat (not b_next!43645) b_and!111303 b_and!111307 (not b_next!43641) (not b_next!43643) b_and!111301 b_and!111305 (not b_next!43639))
(get-model)

(declare-fun d!472262 () Bool)

(declare-fun e!1019524 () Bool)

(assert (=> d!472262 e!1019524))

(declare-fun res!707985 () Bool)

(assert (=> d!472262 (=> (not res!707985) (not e!1019524))))

(declare-fun isBalanced!1712 (Conc!5799) Bool)

(declare-fun prepend!564 (Conc!5799 Token!5716) Conc!5799)

(assert (=> d!472262 (= res!707985 (isBalanced!1712 (prepend!564 (c!257223 (seqFromList!1899 (t!144320 (t!144320 tokens!457)))) (h!22856 (t!144320 tokens!457)))))))

(declare-fun lt!559555 () BalanceConc!11542)

(assert (=> d!472262 (= lt!559555 (BalanceConc!11543 (prepend!564 (c!257223 (seqFromList!1899 (t!144320 (t!144320 tokens!457)))) (h!22856 (t!144320 tokens!457)))))))

(assert (=> d!472262 (= (prepend!563 (seqFromList!1899 (t!144320 (t!144320 tokens!457))) (h!22856 (t!144320 tokens!457))) lt!559555)))

(declare-fun b!1587253 () Bool)

(assert (=> b!1587253 (= e!1019524 (= (list!6775 lt!559555) (Cons!17455 (h!22856 (t!144320 tokens!457)) (list!6775 (seqFromList!1899 (t!144320 (t!144320 tokens!457)))))))))

(assert (= (and d!472262 res!707985) b!1587253))

(declare-fun m!1877583 () Bool)

(assert (=> d!472262 m!1877583))

(assert (=> d!472262 m!1877583))

(declare-fun m!1877585 () Bool)

(assert (=> d!472262 m!1877585))

(declare-fun m!1877587 () Bool)

(assert (=> b!1587253 m!1877587))

(assert (=> b!1587253 m!1877515))

(declare-fun m!1877589 () Bool)

(assert (=> b!1587253 m!1877589))

(assert (=> b!1587203 d!472262))

(declare-fun d!472270 () Bool)

(declare-fun list!6779 (Conc!5799) List!17525)

(assert (=> d!472270 (= (list!6775 (prepend!563 (seqFromList!1899 (t!144320 (t!144320 tokens!457))) (h!22856 (t!144320 tokens!457)))) (list!6779 (c!257223 (prepend!563 (seqFromList!1899 (t!144320 (t!144320 tokens!457))) (h!22856 (t!144320 tokens!457))))))))

(declare-fun bs!391488 () Bool)

(assert (= bs!391488 d!472270))

(declare-fun m!1877591 () Bool)

(assert (=> bs!391488 m!1877591))

(assert (=> b!1587203 d!472270))

(declare-fun d!472272 () Bool)

(declare-fun fromListB!817 (List!17525) BalanceConc!11542)

(assert (=> d!472272 (= (seqFromList!1899 (t!144320 (t!144320 tokens!457))) (fromListB!817 (t!144320 (t!144320 tokens!457))))))

(declare-fun bs!391489 () Bool)

(assert (= bs!391489 d!472272))

(declare-fun m!1877593 () Bool)

(assert (=> bs!391489 m!1877593))

(assert (=> b!1587203 d!472272))

(declare-fun d!472274 () Bool)

(assert (=> d!472274 (= (list!6775 (_1!9870 lt!559508)) (list!6775 (prepend!563 (seqFromList!1899 (t!144320 (t!144320 tokens!457))) (h!22856 (t!144320 tokens!457)))))))

(declare-fun lt!559573 () Unit!27417)

(declare-fun choose!9507 (Token!5716 List!17525 BalanceConc!11542) Unit!27417)

(assert (=> d!472274 (= lt!559573 (choose!9507 (h!22856 (t!144320 tokens!457)) (t!144320 (t!144320 tokens!457)) (_1!9870 lt!559508)))))

(declare-fun $colon$colon!283 (List!17525 Token!5716) List!17525)

(assert (=> d!472274 (= (list!6775 (_1!9870 lt!559508)) (list!6775 (seqFromList!1899 ($colon$colon!283 (t!144320 (t!144320 tokens!457)) (h!22856 (t!144320 tokens!457))))))))

(assert (=> d!472274 (= (seqFromListBHdTlConstructive!152 (h!22856 (t!144320 tokens!457)) (t!144320 (t!144320 tokens!457)) (_1!9870 lt!559508)) lt!559573)))

(declare-fun bs!391490 () Bool)

(assert (= bs!391490 d!472274))

(assert (=> bs!391490 m!1877517))

(assert (=> bs!391490 m!1877519))

(assert (=> bs!391490 m!1877515))

(assert (=> bs!391490 m!1877517))

(declare-fun m!1877629 () Bool)

(assert (=> bs!391490 m!1877629))

(declare-fun m!1877631 () Bool)

(assert (=> bs!391490 m!1877631))

(assert (=> bs!391490 m!1877629))

(assert (=> bs!391490 m!1877515))

(assert (=> bs!391490 m!1877475))

(declare-fun m!1877633 () Bool)

(assert (=> bs!391490 m!1877633))

(assert (=> bs!391490 m!1877631))

(declare-fun m!1877635 () Bool)

(assert (=> bs!391490 m!1877635))

(assert (=> b!1587203 d!472274))

(declare-fun d!472278 () Bool)

(assert (=> d!472278 (= (list!6775 lt!559522) (list!6779 (c!257223 lt!559522)))))

(declare-fun bs!391491 () Bool)

(assert (= bs!391491 d!472278))

(declare-fun m!1877637 () Bool)

(assert (=> bs!391491 m!1877637))

(assert (=> b!1587203 d!472278))

(declare-fun d!472280 () Bool)

(declare-fun lt!559590 () Bool)

(declare-fun e!1019586 () Bool)

(assert (=> d!472280 (= lt!559590 e!1019586)))

(declare-fun res!708053 () Bool)

(assert (=> d!472280 (=> (not res!708053) (not e!1019586))))

(assert (=> d!472280 (= res!708053 (= (list!6775 (_1!9870 (lex!1188 thiss!17113 rules!1846 (print!1235 thiss!17113 (singletonSeq!1429 (h!22856 tokens!457)))))) (list!6775 (singletonSeq!1429 (h!22856 tokens!457)))))))

(declare-fun e!1019587 () Bool)

(assert (=> d!472280 (= lt!559590 e!1019587)))

(declare-fun res!708052 () Bool)

(assert (=> d!472280 (=> (not res!708052) (not e!1019587))))

(declare-fun lt!559591 () tuple2!16936)

(declare-fun size!14041 (BalanceConc!11542) Int)

(assert (=> d!472280 (= res!708052 (= (size!14041 (_1!9870 lt!559591)) 1))))

(assert (=> d!472280 (= lt!559591 (lex!1188 thiss!17113 rules!1846 (print!1235 thiss!17113 (singletonSeq!1429 (h!22856 tokens!457)))))))

(assert (=> d!472280 (not (isEmpty!10475 rules!1846))))

(assert (=> d!472280 (= (rulesProduceIndividualToken!1356 thiss!17113 rules!1846 (h!22856 tokens!457)) lt!559590)))

(declare-fun b!1587356 () Bool)

(declare-fun res!708054 () Bool)

(assert (=> b!1587356 (=> (not res!708054) (not e!1019587))))

(declare-fun apply!4282 (BalanceConc!11542 Int) Token!5716)

(assert (=> b!1587356 (= res!708054 (= (apply!4282 (_1!9870 lt!559591) 0) (h!22856 tokens!457)))))

(declare-fun b!1587357 () Bool)

(declare-fun isEmpty!10481 (BalanceConc!11540) Bool)

(assert (=> b!1587357 (= e!1019587 (isEmpty!10481 (_2!9870 lt!559591)))))

(declare-fun b!1587358 () Bool)

(assert (=> b!1587358 (= e!1019586 (isEmpty!10481 (_2!9870 (lex!1188 thiss!17113 rules!1846 (print!1235 thiss!17113 (singletonSeq!1429 (h!22856 tokens!457)))))))))

(assert (= (and d!472280 res!708052) b!1587356))

(assert (= (and b!1587356 res!708054) b!1587357))

(assert (= (and d!472280 res!708053) b!1587358))

(assert (=> d!472280 m!1877455))

(declare-fun m!1877695 () Bool)

(assert (=> d!472280 m!1877695))

(assert (=> d!472280 m!1877469))

(assert (=> d!472280 m!1877455))

(declare-fun m!1877697 () Bool)

(assert (=> d!472280 m!1877697))

(declare-fun m!1877699 () Bool)

(assert (=> d!472280 m!1877699))

(declare-fun m!1877701 () Bool)

(assert (=> d!472280 m!1877701))

(declare-fun m!1877703 () Bool)

(assert (=> d!472280 m!1877703))

(assert (=> d!472280 m!1877455))

(assert (=> d!472280 m!1877701))

(declare-fun m!1877705 () Bool)

(assert (=> b!1587356 m!1877705))

(declare-fun m!1877707 () Bool)

(assert (=> b!1587357 m!1877707))

(assert (=> b!1587358 m!1877455))

(assert (=> b!1587358 m!1877455))

(assert (=> b!1587358 m!1877701))

(assert (=> b!1587358 m!1877701))

(assert (=> b!1587358 m!1877703))

(declare-fun m!1877709 () Bool)

(assert (=> b!1587358 m!1877709))

(assert (=> b!1587223 d!472280))

(declare-fun b!1587369 () Bool)

(declare-fun e!1019596 () Bool)

(declare-fun e!1019594 () Bool)

(assert (=> b!1587369 (= e!1019596 e!1019594)))

(declare-fun c!257253 () Bool)

(assert (=> b!1587369 (= c!257253 ((_ is IntegerValue!9496) (value!97310 (h!22856 tokens!457))))))

(declare-fun b!1587370 () Bool)

(declare-fun inv!17 (TokenValue!3165) Bool)

(assert (=> b!1587370 (= e!1019594 (inv!17 (value!97310 (h!22856 tokens!457))))))

(declare-fun b!1587371 () Bool)

(declare-fun inv!16 (TokenValue!3165) Bool)

(assert (=> b!1587371 (= e!1019596 (inv!16 (value!97310 (h!22856 tokens!457))))))

(declare-fun d!472302 () Bool)

(declare-fun c!257254 () Bool)

(assert (=> d!472302 (= c!257254 ((_ is IntegerValue!9495) (value!97310 (h!22856 tokens!457))))))

(assert (=> d!472302 (= (inv!21 (value!97310 (h!22856 tokens!457))) e!1019596)))

(declare-fun b!1587372 () Bool)

(declare-fun res!708057 () Bool)

(declare-fun e!1019595 () Bool)

(assert (=> b!1587372 (=> res!708057 e!1019595)))

(assert (=> b!1587372 (= res!708057 (not ((_ is IntegerValue!9497) (value!97310 (h!22856 tokens!457)))))))

(assert (=> b!1587372 (= e!1019594 e!1019595)))

(declare-fun b!1587373 () Bool)

(declare-fun inv!15 (TokenValue!3165) Bool)

(assert (=> b!1587373 (= e!1019595 (inv!15 (value!97310 (h!22856 tokens!457))))))

(assert (= (and d!472302 c!257254) b!1587371))

(assert (= (and d!472302 (not c!257254)) b!1587369))

(assert (= (and b!1587369 c!257253) b!1587370))

(assert (= (and b!1587369 (not c!257253)) b!1587372))

(assert (= (and b!1587372 (not res!708057)) b!1587373))

(declare-fun m!1877711 () Bool)

(assert (=> b!1587370 m!1877711))

(declare-fun m!1877713 () Bool)

(assert (=> b!1587371 m!1877713))

(declare-fun m!1877715 () Bool)

(assert (=> b!1587373 m!1877715))

(assert (=> b!1587212 d!472302))

(declare-fun lt!559594 () Bool)

(declare-fun d!472304 () Bool)

(declare-fun isEmpty!10482 (List!17525) Bool)

(assert (=> d!472304 (= lt!559594 (isEmpty!10482 (list!6775 (_1!9870 (lex!1188 thiss!17113 rules!1846 (seqFromList!1900 lt!559527))))))))

(declare-fun isEmpty!10483 (Conc!5799) Bool)

(assert (=> d!472304 (= lt!559594 (isEmpty!10483 (c!257223 (_1!9870 (lex!1188 thiss!17113 rules!1846 (seqFromList!1900 lt!559527))))))))

(assert (=> d!472304 (= (isEmpty!10474 (_1!9870 (lex!1188 thiss!17113 rules!1846 (seqFromList!1900 lt!559527)))) lt!559594)))

(declare-fun bs!391494 () Bool)

(assert (= bs!391494 d!472304))

(declare-fun m!1877717 () Bool)

(assert (=> bs!391494 m!1877717))

(assert (=> bs!391494 m!1877717))

(declare-fun m!1877719 () Bool)

(assert (=> bs!391494 m!1877719))

(declare-fun m!1877721 () Bool)

(assert (=> bs!391494 m!1877721))

(assert (=> b!1587211 d!472304))

(declare-fun b!1587384 () Bool)

(declare-fun res!708066 () Bool)

(declare-fun e!1019603 () Bool)

(assert (=> b!1587384 (=> (not res!708066) (not e!1019603))))

(declare-fun lt!559597 () tuple2!16936)

(declare-datatypes ((tuple2!16942 0))(
  ( (tuple2!16943 (_1!9873 List!17525) (_2!9873 List!17524)) )
))
(declare-fun lexList!791 (LexerInterface!2704 List!17526 List!17524) tuple2!16942)

(assert (=> b!1587384 (= res!708066 (= (list!6775 (_1!9870 lt!559597)) (_1!9873 (lexList!791 thiss!17113 rules!1846 (list!6776 (seqFromList!1900 lt!559527))))))))

(declare-fun b!1587385 () Bool)

(declare-fun e!1019604 () Bool)

(assert (=> b!1587385 (= e!1019604 (= (_2!9870 lt!559597) (seqFromList!1900 lt!559527)))))

(declare-fun d!472306 () Bool)

(assert (=> d!472306 e!1019603))

(declare-fun res!708065 () Bool)

(assert (=> d!472306 (=> (not res!708065) (not e!1019603))))

(assert (=> d!472306 (= res!708065 e!1019604)))

(declare-fun c!257257 () Bool)

(assert (=> d!472306 (= c!257257 (> (size!14041 (_1!9870 lt!559597)) 0))))

(declare-fun lexTailRecV2!514 (LexerInterface!2704 List!17526 BalanceConc!11540 BalanceConc!11540 BalanceConc!11540 BalanceConc!11542) tuple2!16936)

(assert (=> d!472306 (= lt!559597 (lexTailRecV2!514 thiss!17113 rules!1846 (seqFromList!1900 lt!559527) (BalanceConc!11541 Empty!5798) (seqFromList!1900 lt!559527) (BalanceConc!11543 Empty!5799)))))

(assert (=> d!472306 (= (lex!1188 thiss!17113 rules!1846 (seqFromList!1900 lt!559527)) lt!559597)))

(declare-fun b!1587386 () Bool)

(declare-fun e!1019605 () Bool)

(assert (=> b!1587386 (= e!1019604 e!1019605)))

(declare-fun res!708064 () Bool)

(declare-fun size!14043 (BalanceConc!11540) Int)

(assert (=> b!1587386 (= res!708064 (< (size!14043 (_2!9870 lt!559597)) (size!14043 (seqFromList!1900 lt!559527))))))

(assert (=> b!1587386 (=> (not res!708064) (not e!1019605))))

(declare-fun b!1587387 () Bool)

(assert (=> b!1587387 (= e!1019605 (not (isEmpty!10474 (_1!9870 lt!559597))))))

(declare-fun b!1587388 () Bool)

(assert (=> b!1587388 (= e!1019603 (= (list!6776 (_2!9870 lt!559597)) (_2!9873 (lexList!791 thiss!17113 rules!1846 (list!6776 (seqFromList!1900 lt!559527))))))))

(assert (= (and d!472306 c!257257) b!1587386))

(assert (= (and d!472306 (not c!257257)) b!1587385))

(assert (= (and b!1587386 res!708064) b!1587387))

(assert (= (and d!472306 res!708065) b!1587384))

(assert (= (and b!1587384 res!708066) b!1587388))

(declare-fun m!1877723 () Bool)

(assert (=> b!1587384 m!1877723))

(assert (=> b!1587384 m!1877443))

(declare-fun m!1877725 () Bool)

(assert (=> b!1587384 m!1877725))

(assert (=> b!1587384 m!1877725))

(declare-fun m!1877727 () Bool)

(assert (=> b!1587384 m!1877727))

(declare-fun m!1877729 () Bool)

(assert (=> d!472306 m!1877729))

(assert (=> d!472306 m!1877443))

(assert (=> d!472306 m!1877443))

(declare-fun m!1877731 () Bool)

(assert (=> d!472306 m!1877731))

(declare-fun m!1877733 () Bool)

(assert (=> b!1587387 m!1877733))

(declare-fun m!1877735 () Bool)

(assert (=> b!1587386 m!1877735))

(assert (=> b!1587386 m!1877443))

(declare-fun m!1877737 () Bool)

(assert (=> b!1587386 m!1877737))

(declare-fun m!1877739 () Bool)

(assert (=> b!1587388 m!1877739))

(assert (=> b!1587388 m!1877443))

(assert (=> b!1587388 m!1877725))

(assert (=> b!1587388 m!1877725))

(assert (=> b!1587388 m!1877727))

(assert (=> b!1587211 d!472306))

(declare-fun d!472308 () Bool)

(declare-fun fromListB!819 (List!17524) BalanceConc!11540)

(assert (=> d!472308 (= (seqFromList!1900 lt!559527) (fromListB!819 lt!559527))))

(declare-fun bs!391495 () Bool)

(assert (= bs!391495 d!472308))

(declare-fun m!1877741 () Bool)

(assert (=> bs!391495 m!1877741))

(assert (=> b!1587211 d!472308))

(declare-fun d!472310 () Bool)

(assert (=> d!472310 (= (inv!22864 (tag!3345 (h!22857 rules!1846))) (= (mod (str.len (value!97309 (tag!3345 (h!22857 rules!1846)))) 2) 0))))

(assert (=> b!1587221 d!472310))

(declare-fun d!472312 () Bool)

(declare-fun res!708069 () Bool)

(declare-fun e!1019608 () Bool)

(assert (=> d!472312 (=> (not res!708069) (not e!1019608))))

(declare-fun semiInverseModEq!1162 (Int Int) Bool)

(assert (=> d!472312 (= res!708069 (semiInverseModEq!1162 (toChars!4345 (transformation!3075 (h!22857 rules!1846))) (toValue!4486 (transformation!3075 (h!22857 rules!1846)))))))

(assert (=> d!472312 (= (inv!22868 (transformation!3075 (h!22857 rules!1846))) e!1019608)))

(declare-fun b!1587391 () Bool)

(declare-fun equivClasses!1103 (Int Int) Bool)

(assert (=> b!1587391 (= e!1019608 (equivClasses!1103 (toChars!4345 (transformation!3075 (h!22857 rules!1846))) (toValue!4486 (transformation!3075 (h!22857 rules!1846)))))))

(assert (= (and d!472312 res!708069) b!1587391))

(declare-fun m!1877743 () Bool)

(assert (=> d!472312 m!1877743))

(declare-fun m!1877745 () Bool)

(assert (=> b!1587391 m!1877745))

(assert (=> b!1587221 d!472312))

(declare-fun d!472314 () Bool)

(declare-fun e!1019611 () Bool)

(assert (=> d!472314 e!1019611))

(declare-fun res!708072 () Bool)

(assert (=> d!472314 (=> (not res!708072) (not e!1019611))))

(declare-fun lt!559600 () BalanceConc!11540)

(assert (=> d!472314 (= res!708072 (= (list!6776 lt!559600) (Cons!17454 (apply!4278 (charsOf!1724 (h!22856 (t!144320 tokens!457))) 0) Nil!17454)))))

(declare-fun singleton!592 (C!8980) BalanceConc!11540)

(assert (=> d!472314 (= lt!559600 (singleton!592 (apply!4278 (charsOf!1724 (h!22856 (t!144320 tokens!457))) 0)))))

(assert (=> d!472314 (= (singletonSeq!1428 (apply!4278 (charsOf!1724 (h!22856 (t!144320 tokens!457))) 0)) lt!559600)))

(declare-fun b!1587394 () Bool)

(declare-fun isBalanced!1713 (Conc!5798) Bool)

(assert (=> b!1587394 (= e!1019611 (isBalanced!1713 (c!257222 lt!559600)))))

(assert (= (and d!472314 res!708072) b!1587394))

(declare-fun m!1877747 () Bool)

(assert (=> d!472314 m!1877747))

(assert (=> d!472314 m!1877435))

(declare-fun m!1877749 () Bool)

(assert (=> d!472314 m!1877749))

(declare-fun m!1877751 () Bool)

(assert (=> b!1587394 m!1877751))

(assert (=> b!1587210 d!472314))

(declare-fun b!1587404 () Bool)

(declare-fun res!708084 () Bool)

(declare-fun e!1019614 () Bool)

(assert (=> b!1587404 (=> (not res!708084) (not e!1019614))))

(declare-fun height!858 (Conc!5798) Int)

(declare-fun ++!4557 (Conc!5798 Conc!5798) Conc!5798)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1587404 (= res!708084 (<= (height!858 (++!4557 (c!257222 lt!559525) (c!257222 lt!559528))) (+ (max!0 (height!858 (c!257222 lt!559525)) (height!858 (c!257222 lt!559528))) 1)))))

(declare-fun b!1587403 () Bool)

(declare-fun res!708083 () Bool)

(assert (=> b!1587403 (=> (not res!708083) (not e!1019614))))

(assert (=> b!1587403 (= res!708083 (isBalanced!1713 (++!4557 (c!257222 lt!559525) (c!257222 lt!559528))))))

(declare-fun lt!559603 () BalanceConc!11540)

(declare-fun b!1587406 () Bool)

(assert (=> b!1587406 (= e!1019614 (= (list!6776 lt!559603) (++!4555 (list!6776 lt!559525) (list!6776 lt!559528))))))

(declare-fun d!472316 () Bool)

(assert (=> d!472316 e!1019614))

(declare-fun res!708082 () Bool)

(assert (=> d!472316 (=> (not res!708082) (not e!1019614))))

(declare-fun appendAssocInst!392 (Conc!5798 Conc!5798) Bool)

(assert (=> d!472316 (= res!708082 (appendAssocInst!392 (c!257222 lt!559525) (c!257222 lt!559528)))))

(assert (=> d!472316 (= lt!559603 (BalanceConc!11541 (++!4557 (c!257222 lt!559525) (c!257222 lt!559528))))))

(assert (=> d!472316 (= (++!4556 lt!559525 lt!559528) lt!559603)))

(declare-fun b!1587405 () Bool)

(declare-fun res!708081 () Bool)

(assert (=> b!1587405 (=> (not res!708081) (not e!1019614))))

(assert (=> b!1587405 (= res!708081 (>= (height!858 (++!4557 (c!257222 lt!559525) (c!257222 lt!559528))) (max!0 (height!858 (c!257222 lt!559525)) (height!858 (c!257222 lt!559528)))))))

(assert (= (and d!472316 res!708082) b!1587403))

(assert (= (and b!1587403 res!708083) b!1587404))

(assert (= (and b!1587404 res!708084) b!1587405))

(assert (= (and b!1587405 res!708081) b!1587406))

(declare-fun m!1877753 () Bool)

(assert (=> d!472316 m!1877753))

(declare-fun m!1877755 () Bool)

(assert (=> d!472316 m!1877755))

(assert (=> b!1587403 m!1877755))

(assert (=> b!1587403 m!1877755))

(declare-fun m!1877757 () Bool)

(assert (=> b!1587403 m!1877757))

(assert (=> b!1587404 m!1877755))

(declare-fun m!1877759 () Bool)

(assert (=> b!1587404 m!1877759))

(declare-fun m!1877761 () Bool)

(assert (=> b!1587404 m!1877761))

(assert (=> b!1587404 m!1877761))

(declare-fun m!1877763 () Bool)

(assert (=> b!1587404 m!1877763))

(declare-fun m!1877765 () Bool)

(assert (=> b!1587404 m!1877765))

(assert (=> b!1587404 m!1877763))

(assert (=> b!1587404 m!1877755))

(declare-fun m!1877767 () Bool)

(assert (=> b!1587406 m!1877767))

(assert (=> b!1587406 m!1877485))

(assert (=> b!1587406 m!1877465))

(assert (=> b!1587406 m!1877485))

(assert (=> b!1587406 m!1877465))

(declare-fun m!1877769 () Bool)

(assert (=> b!1587406 m!1877769))

(assert (=> b!1587405 m!1877755))

(assert (=> b!1587405 m!1877759))

(assert (=> b!1587405 m!1877761))

(assert (=> b!1587405 m!1877761))

(assert (=> b!1587405 m!1877763))

(assert (=> b!1587405 m!1877765))

(assert (=> b!1587405 m!1877763))

(assert (=> b!1587405 m!1877755))

(assert (=> b!1587210 d!472316))

(declare-fun d!472318 () Bool)

(declare-fun lt!559628 () Bool)

(declare-fun prefixMatch!337 (Regex!4403 List!17524) Bool)

(assert (=> d!472318 (= lt!559628 (prefixMatch!337 lt!559515 (list!6776 (++!4556 lt!559525 lt!559528))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!17528 0))(
  ( (Nil!17458) (Cons!17458 (h!22859 Regex!4403) (t!144365 List!17528)) )
))
(declare-datatypes ((Context!1656 0))(
  ( (Context!1657 (exprs!1328 List!17528)) )
))
(declare-fun prefixMatchZipperSequence!426 ((InoxSet Context!1656) BalanceConc!11540 Int) Bool)

(declare-fun focus!134 (Regex!4403) (InoxSet Context!1656))

(assert (=> d!472318 (= lt!559628 (prefixMatchZipperSequence!426 (focus!134 lt!559515) (++!4556 lt!559525 lt!559528) 0))))

(declare-fun lt!559624 () Unit!27417)

(declare-fun lt!559633 () Unit!27417)

(assert (=> d!472318 (= lt!559624 lt!559633)))

(declare-fun lt!559625 () List!17524)

(declare-fun lt!559627 () (InoxSet Context!1656))

(declare-fun prefixMatchZipper!113 ((InoxSet Context!1656) List!17524) Bool)

(assert (=> d!472318 (= (prefixMatch!337 lt!559515 lt!559625) (prefixMatchZipper!113 lt!559627 lt!559625))))

(declare-datatypes ((List!17529 0))(
  ( (Nil!17459) (Cons!17459 (h!22860 Context!1656) (t!144366 List!17529)) )
))
(declare-fun lt!559631 () List!17529)

(declare-fun prefixMatchZipperRegexEquiv!113 ((InoxSet Context!1656) List!17529 Regex!4403 List!17524) Unit!27417)

(assert (=> d!472318 (= lt!559633 (prefixMatchZipperRegexEquiv!113 lt!559627 lt!559631 lt!559515 lt!559625))))

(assert (=> d!472318 (= lt!559625 (list!6776 (++!4556 lt!559525 lt!559528)))))

(declare-fun toList!874 ((InoxSet Context!1656)) List!17529)

(assert (=> d!472318 (= lt!559631 (toList!874 (focus!134 lt!559515)))))

(assert (=> d!472318 (= lt!559627 (focus!134 lt!559515))))

(declare-fun lt!559630 () Unit!27417)

(declare-fun lt!559632 () Unit!27417)

(assert (=> d!472318 (= lt!559630 lt!559632)))

(declare-fun lt!559629 () (InoxSet Context!1656))

(declare-fun lt!559626 () Int)

(declare-fun dropList!530 (BalanceConc!11540 Int) List!17524)

(assert (=> d!472318 (= (prefixMatchZipper!113 lt!559629 (dropList!530 (++!4556 lt!559525 lt!559528) lt!559626)) (prefixMatchZipperSequence!426 lt!559629 (++!4556 lt!559525 lt!559528) lt!559626))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!113 ((InoxSet Context!1656) BalanceConc!11540 Int) Unit!27417)

(assert (=> d!472318 (= lt!559632 (lemmaprefixMatchZipperSequenceEquivalent!113 lt!559629 (++!4556 lt!559525 lt!559528) lt!559626))))

(assert (=> d!472318 (= lt!559626 0)))

(assert (=> d!472318 (= lt!559629 (focus!134 lt!559515))))

(assert (=> d!472318 (validRegex!1740 lt!559515)))

(assert (=> d!472318 (= (prefixMatchZipperSequence!425 lt!559515 (++!4556 lt!559525 lt!559528)) lt!559628)))

(declare-fun bs!391496 () Bool)

(assert (= bs!391496 d!472318))

(declare-fun m!1877771 () Bool)

(assert (=> bs!391496 m!1877771))

(assert (=> bs!391496 m!1877431))

(declare-fun m!1877773 () Bool)

(assert (=> bs!391496 m!1877773))

(declare-fun m!1877775 () Bool)

(assert (=> bs!391496 m!1877775))

(declare-fun m!1877777 () Bool)

(assert (=> bs!391496 m!1877777))

(declare-fun m!1877779 () Bool)

(assert (=> bs!391496 m!1877779))

(declare-fun m!1877781 () Bool)

(assert (=> bs!391496 m!1877781))

(declare-fun m!1877783 () Bool)

(assert (=> bs!391496 m!1877783))

(assert (=> bs!391496 m!1877431))

(declare-fun m!1877785 () Bool)

(assert (=> bs!391496 m!1877785))

(assert (=> bs!391496 m!1877431))

(assert (=> bs!391496 m!1877777))

(assert (=> bs!391496 m!1877775))

(assert (=> bs!391496 m!1877431))

(declare-fun m!1877787 () Bool)

(assert (=> bs!391496 m!1877787))

(assert (=> bs!391496 m!1877431))

(assert (=> bs!391496 m!1877781))

(assert (=> bs!391496 m!1877775))

(declare-fun m!1877789 () Bool)

(assert (=> bs!391496 m!1877789))

(assert (=> bs!391496 m!1877463))

(declare-fun m!1877791 () Bool)

(assert (=> bs!391496 m!1877791))

(declare-fun m!1877793 () Bool)

(assert (=> bs!391496 m!1877793))

(assert (=> b!1587210 d!472318))

(declare-fun d!472320 () Bool)

(declare-fun lt!559636 () C!8980)

(declare-fun apply!4283 (List!17524 Int) C!8980)

(assert (=> d!472320 (= lt!559636 (apply!4283 (list!6776 (charsOf!1724 (h!22856 (t!144320 tokens!457)))) 0))))

(declare-fun apply!4284 (Conc!5798 Int) C!8980)

(assert (=> d!472320 (= lt!559636 (apply!4284 (c!257222 (charsOf!1724 (h!22856 (t!144320 tokens!457)))) 0))))

(declare-fun e!1019617 () Bool)

(assert (=> d!472320 e!1019617))

(declare-fun res!708087 () Bool)

(assert (=> d!472320 (=> (not res!708087) (not e!1019617))))

(assert (=> d!472320 (= res!708087 (<= 0 0))))

(assert (=> d!472320 (= (apply!4278 (charsOf!1724 (h!22856 (t!144320 tokens!457))) 0) lt!559636)))

(declare-fun b!1587409 () Bool)

(assert (=> b!1587409 (= e!1019617 (< 0 (size!14043 (charsOf!1724 (h!22856 (t!144320 tokens!457))))))))

(assert (= (and d!472320 res!708087) b!1587409))

(assert (=> d!472320 m!1877439))

(declare-fun m!1877795 () Bool)

(assert (=> d!472320 m!1877795))

(assert (=> d!472320 m!1877795))

(declare-fun m!1877797 () Bool)

(assert (=> d!472320 m!1877797))

(declare-fun m!1877799 () Bool)

(assert (=> d!472320 m!1877799))

(assert (=> b!1587409 m!1877439))

(declare-fun m!1877801 () Bool)

(assert (=> b!1587409 m!1877801))

(assert (=> b!1587210 d!472320))

(declare-fun d!472322 () Bool)

(declare-fun lt!559639 () Unit!27417)

(declare-fun lemma!200 (List!17526 LexerInterface!2704 List!17526) Unit!27417)

(assert (=> d!472322 (= lt!559639 (lemma!200 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66607 () Int)

(declare-fun generalisedUnion!208 (List!17528) Regex!4403)

(declare-fun map!3617 (List!17526 Int) List!17528)

(assert (=> d!472322 (= (rulesRegex!465 thiss!17113 rules!1846) (generalisedUnion!208 (map!3617 rules!1846 lambda!66607)))))

(declare-fun bs!391497 () Bool)

(assert (= bs!391497 d!472322))

(declare-fun m!1877803 () Bool)

(assert (=> bs!391497 m!1877803))

(declare-fun m!1877805 () Bool)

(assert (=> bs!391497 m!1877805))

(assert (=> bs!391497 m!1877805))

(declare-fun m!1877807 () Bool)

(assert (=> bs!391497 m!1877807))

(assert (=> b!1587210 d!472322))

(declare-fun d!472324 () Bool)

(declare-fun lt!559642 () BalanceConc!11540)

(assert (=> d!472324 (= (list!6776 lt!559642) (originalCharacters!3889 (h!22856 (t!144320 tokens!457))))))

(declare-fun dynLambda!7753 (Int TokenValue!3165) BalanceConc!11540)

(assert (=> d!472324 (= lt!559642 (dynLambda!7753 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))) (value!97310 (h!22856 (t!144320 tokens!457)))))))

(assert (=> d!472324 (= (charsOf!1724 (h!22856 (t!144320 tokens!457))) lt!559642)))

(declare-fun b_lambda!49947 () Bool)

(assert (=> (not b_lambda!49947) (not d!472324)))

(declare-fun tb!89339 () Bool)

(declare-fun t!144331 () Bool)

(assert (=> (and b!1587213 (= (toChars!4345 (transformation!3075 (h!22857 rules!1846))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457)))))) t!144331) tb!89339))

(declare-fun b!1587414 () Bool)

(declare-fun e!1019620 () Bool)

(declare-fun tp!466616 () Bool)

(declare-fun inv!22871 (Conc!5798) Bool)

(assert (=> b!1587414 (= e!1019620 (and (inv!22871 (c!257222 (dynLambda!7753 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))) (value!97310 (h!22856 (t!144320 tokens!457)))))) tp!466616))))

(declare-fun result!108148 () Bool)

(declare-fun inv!22872 (BalanceConc!11540) Bool)

(assert (=> tb!89339 (= result!108148 (and (inv!22872 (dynLambda!7753 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))) (value!97310 (h!22856 (t!144320 tokens!457))))) e!1019620))))

(assert (= tb!89339 b!1587414))

(declare-fun m!1877809 () Bool)

(assert (=> b!1587414 m!1877809))

(declare-fun m!1877811 () Bool)

(assert (=> tb!89339 m!1877811))

(assert (=> d!472324 t!144331))

(declare-fun b_and!111313 () Bool)

(assert (= b_and!111303 (and (=> t!144331 result!108148) b_and!111313)))

(declare-fun t!144333 () Bool)

(declare-fun tb!89341 () Bool)

(assert (=> (and b!1587209 (= (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457)))))) t!144333) tb!89341))

(declare-fun result!108152 () Bool)

(assert (= result!108152 result!108148))

(assert (=> d!472324 t!144333))

(declare-fun b_and!111315 () Bool)

(assert (= b_and!111307 (and (=> t!144333 result!108152) b_and!111315)))

(declare-fun m!1877813 () Bool)

(assert (=> d!472324 m!1877813))

(declare-fun m!1877815 () Bool)

(assert (=> d!472324 m!1877815))

(assert (=> b!1587210 d!472324))

(declare-fun b!1587495 () Bool)

(declare-fun e!1019677 () Bool)

(assert (=> b!1587495 (= e!1019677 true)))

(declare-fun b!1587494 () Bool)

(declare-fun e!1019676 () Bool)

(assert (=> b!1587494 (= e!1019676 e!1019677)))

(declare-fun b!1587493 () Bool)

(declare-fun e!1019675 () Bool)

(assert (=> b!1587493 (= e!1019675 e!1019676)))

(declare-fun d!472326 () Bool)

(assert (=> d!472326 e!1019675))

(assert (= b!1587494 b!1587495))

(assert (= b!1587493 b!1587494))

(assert (= (and d!472326 ((_ is Cons!17456) rules!1846)) b!1587493))

(declare-fun order!10313 () Int)

(declare-fun order!10315 () Int)

(declare-fun lambda!66610 () Int)

(declare-fun dynLambda!7754 (Int Int) Int)

(declare-fun dynLambda!7755 (Int Int) Int)

(assert (=> b!1587495 (< (dynLambda!7754 order!10313 (toValue!4486 (transformation!3075 (h!22857 rules!1846)))) (dynLambda!7755 order!10315 lambda!66610))))

(declare-fun order!10317 () Int)

(declare-fun dynLambda!7756 (Int Int) Int)

(assert (=> b!1587495 (< (dynLambda!7756 order!10317 (toChars!4345 (transformation!3075 (h!22857 rules!1846)))) (dynLambda!7755 order!10315 lambda!66610))))

(assert (=> d!472326 true))

(declare-fun lt!559799 () Bool)

(declare-fun forall!4011 (List!17525 Int) Bool)

(assert (=> d!472326 (= lt!559799 (forall!4011 tokens!457 lambda!66610))))

(declare-fun e!1019667 () Bool)

(assert (=> d!472326 (= lt!559799 e!1019667)))

(declare-fun res!708135 () Bool)

(assert (=> d!472326 (=> res!708135 e!1019667)))

(assert (=> d!472326 (= res!708135 (not ((_ is Cons!17455) tokens!457)))))

(assert (=> d!472326 (not (isEmpty!10475 rules!1846))))

(assert (=> d!472326 (= (rulesProduceEachTokenIndividuallyList!906 thiss!17113 rules!1846 tokens!457) lt!559799)))

(declare-fun b!1587483 () Bool)

(declare-fun e!1019668 () Bool)

(assert (=> b!1587483 (= e!1019667 e!1019668)))

(declare-fun res!708134 () Bool)

(assert (=> b!1587483 (=> (not res!708134) (not e!1019668))))

(assert (=> b!1587483 (= res!708134 (rulesProduceIndividualToken!1356 thiss!17113 rules!1846 (h!22856 tokens!457)))))

(declare-fun b!1587484 () Bool)

(assert (=> b!1587484 (= e!1019668 (rulesProduceEachTokenIndividuallyList!906 thiss!17113 rules!1846 (t!144320 tokens!457)))))

(assert (= (and d!472326 (not res!708135)) b!1587483))

(assert (= (and b!1587483 res!708134) b!1587484))

(declare-fun m!1878069 () Bool)

(assert (=> d!472326 m!1878069))

(assert (=> d!472326 m!1877469))

(assert (=> b!1587483 m!1877471))

(declare-fun m!1878071 () Bool)

(assert (=> b!1587484 m!1878071))

(assert (=> b!1587220 d!472326))

(declare-fun d!472382 () Bool)

(declare-fun res!708138 () Bool)

(declare-fun e!1019680 () Bool)

(assert (=> d!472382 (=> (not res!708138) (not e!1019680))))

(declare-fun rulesValid!1090 (LexerInterface!2704 List!17526) Bool)

(assert (=> d!472382 (= res!708138 (rulesValid!1090 thiss!17113 rules!1846))))

(assert (=> d!472382 (= (rulesInvariant!2373 thiss!17113 rules!1846) e!1019680)))

(declare-fun b!1587500 () Bool)

(declare-datatypes ((List!17530 0))(
  ( (Nil!17460) (Cons!17460 (h!22861 String!20157) (t!144367 List!17530)) )
))
(declare-fun noDuplicateTag!1090 (LexerInterface!2704 List!17526 List!17530) Bool)

(assert (=> b!1587500 (= e!1019680 (noDuplicateTag!1090 thiss!17113 rules!1846 Nil!17460))))

(assert (= (and d!472382 res!708138) b!1587500))

(declare-fun m!1878073 () Bool)

(assert (=> d!472382 m!1878073))

(declare-fun m!1878075 () Bool)

(assert (=> b!1587500 m!1878075))

(assert (=> b!1587219 d!472382))

(declare-fun d!472384 () Bool)

(declare-fun isEmpty!10484 (Option!3144) Bool)

(assert (=> d!472384 (= (isDefined!2519 lt!559521) (not (isEmpty!10484 lt!559521)))))

(declare-fun bs!391514 () Bool)

(assert (= bs!391514 d!472384))

(declare-fun m!1878077 () Bool)

(assert (=> bs!391514 m!1878077))

(assert (=> b!1587208 d!472384))

(declare-fun b!1587516 () Bool)

(declare-fun e!1019690 () Unit!27417)

(declare-fun Unit!27435 () Unit!27417)

(assert (=> b!1587516 (= e!1019690 Unit!27435)))

(declare-fun b!1587515 () Bool)

(declare-fun Unit!27436 () Unit!27417)

(assert (=> b!1587515 (= e!1019690 Unit!27436)))

(declare-fun lt!559841 () List!17524)

(assert (=> b!1587515 (= lt!559841 (++!4555 lt!559527 lt!559507))))

(declare-fun lt!559842 () Token!5716)

(declare-fun lt!559840 () Unit!27417)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!140 (LexerInterface!2704 Rule!5950 List!17526 List!17524) Unit!27417)

(assert (=> b!1587515 (= lt!559840 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!140 thiss!17113 (rule!4879 lt!559842) rules!1846 lt!559841))))

(declare-fun maxPrefixOneRule!737 (LexerInterface!2704 Rule!5950 List!17524) Option!3144)

(assert (=> b!1587515 (isEmpty!10484 (maxPrefixOneRule!737 thiss!17113 (rule!4879 lt!559842) lt!559841))))

(declare-fun lt!559837 () Unit!27417)

(assert (=> b!1587515 (= lt!559837 lt!559840)))

(declare-fun lt!559838 () List!17524)

(assert (=> b!1587515 (= lt!559838 (list!6776 (charsOf!1724 lt!559842)))))

(declare-fun lt!559836 () Unit!27417)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!136 (LexerInterface!2704 Rule!5950 List!17524 List!17524) Unit!27417)

(assert (=> b!1587515 (= lt!559836 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!136 thiss!17113 (rule!4879 lt!559842) lt!559838 (++!4555 lt!559527 lt!559507)))))

(declare-fun matchR!1922 (Regex!4403 List!17524) Bool)

(assert (=> b!1587515 (not (matchR!1922 (regex!3075 (rule!4879 lt!559842)) lt!559838))))

(declare-fun lt!559851 () Unit!27417)

(assert (=> b!1587515 (= lt!559851 lt!559836)))

(assert (=> b!1587515 false))

(declare-fun d!472386 () Bool)

(assert (=> d!472386 (isDefined!2519 (maxPrefix!1268 thiss!17113 rules!1846 (++!4555 lt!559527 lt!559507)))))

(declare-fun lt!559848 () Unit!27417)

(assert (=> d!472386 (= lt!559848 e!1019690)))

(declare-fun c!257275 () Bool)

(assert (=> d!472386 (= c!257275 (isEmpty!10484 (maxPrefix!1268 thiss!17113 rules!1846 (++!4555 lt!559527 lt!559507))))))

(declare-fun lt!559847 () Unit!27417)

(declare-fun lt!559850 () Unit!27417)

(assert (=> d!472386 (= lt!559847 lt!559850)))

(declare-fun e!1019689 () Bool)

(assert (=> d!472386 e!1019689))

(declare-fun res!708147 () Bool)

(assert (=> d!472386 (=> (not res!708147) (not e!1019689))))

(declare-datatypes ((Option!3146 0))(
  ( (None!3145) (Some!3145 (v!24032 Rule!5950)) )
))
(declare-fun isDefined!2521 (Option!3146) Bool)

(declare-fun getRuleFromTag!246 (LexerInterface!2704 List!17526 String!20157) Option!3146)

(assert (=> d!472386 (= res!708147 (isDefined!2521 (getRuleFromTag!246 thiss!17113 rules!1846 (tag!3345 (rule!4879 lt!559842)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!246 (LexerInterface!2704 List!17526 List!17524 Token!5716) Unit!27417)

(assert (=> d!472386 (= lt!559850 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!246 thiss!17113 rules!1846 lt!559527 lt!559842))))

(declare-fun lt!559849 () Unit!27417)

(declare-fun lt!559846 () Unit!27417)

(assert (=> d!472386 (= lt!559849 lt!559846)))

(declare-fun lt!559839 () List!17524)

(assert (=> d!472386 (isPrefix!1335 lt!559839 (++!4555 lt!559527 lt!559507))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!132 (List!17524 List!17524 List!17524) Unit!27417)

(assert (=> d!472386 (= lt!559846 (lemmaPrefixStaysPrefixWhenAddingToSuffix!132 lt!559839 lt!559527 lt!559507))))

(assert (=> d!472386 (= lt!559839 (list!6776 (charsOf!1724 lt!559842)))))

(declare-fun lt!559844 () Unit!27417)

(declare-fun lt!559843 () Unit!27417)

(assert (=> d!472386 (= lt!559844 lt!559843)))

(declare-fun lt!559852 () List!17524)

(declare-fun lt!559845 () List!17524)

(assert (=> d!472386 (isPrefix!1335 lt!559852 (++!4555 lt!559852 lt!559845))))

(assert (=> d!472386 (= lt!559843 (lemmaConcatTwoListThenFirstIsPrefix!860 lt!559852 lt!559845))))

(declare-fun get!4994 (Option!3144) tuple2!16938)

(assert (=> d!472386 (= lt!559845 (_2!9871 (get!4994 (maxPrefix!1268 thiss!17113 rules!1846 lt!559527))))))

(assert (=> d!472386 (= lt!559852 (list!6776 (charsOf!1724 lt!559842)))))

(declare-fun head!3229 (List!17525) Token!5716)

(assert (=> d!472386 (= lt!559842 (head!3229 (list!6775 (_1!9870 (lex!1188 thiss!17113 rules!1846 (seqFromList!1900 lt!559527))))))))

(assert (=> d!472386 (not (isEmpty!10475 rules!1846))))

(assert (=> d!472386 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!278 thiss!17113 rules!1846 lt!559527 lt!559507) lt!559848)))

(declare-fun b!1587514 () Bool)

(declare-fun get!4995 (Option!3146) Rule!5950)

(assert (=> b!1587514 (= e!1019689 (= (rule!4879 lt!559842) (get!4995 (getRuleFromTag!246 thiss!17113 rules!1846 (tag!3345 (rule!4879 lt!559842))))))))

(declare-fun b!1587513 () Bool)

(declare-fun res!708148 () Bool)

(assert (=> b!1587513 (=> (not res!708148) (not e!1019689))))

(assert (=> b!1587513 (= res!708148 (matchR!1922 (regex!3075 (get!4995 (getRuleFromTag!246 thiss!17113 rules!1846 (tag!3345 (rule!4879 lt!559842))))) (list!6776 (charsOf!1724 lt!559842))))))

(assert (= (and d!472386 res!708147) b!1587513))

(assert (= (and b!1587513 res!708148) b!1587514))

(assert (= (and d!472386 c!257275) b!1587515))

(assert (= (and d!472386 (not c!257275)) b!1587516))

(declare-fun m!1878079 () Bool)

(assert (=> b!1587515 m!1878079))

(declare-fun m!1878081 () Bool)

(assert (=> b!1587515 m!1878081))

(assert (=> b!1587515 m!1878079))

(declare-fun m!1878083 () Bool)

(assert (=> b!1587515 m!1878083))

(declare-fun m!1878085 () Bool)

(assert (=> b!1587515 m!1878085))

(declare-fun m!1878087 () Bool)

(assert (=> b!1587515 m!1878087))

(declare-fun m!1878089 () Bool)

(assert (=> b!1587515 m!1878089))

(assert (=> b!1587515 m!1877487))

(declare-fun m!1878091 () Bool)

(assert (=> b!1587515 m!1878091))

(assert (=> b!1587515 m!1878083))

(assert (=> b!1587515 m!1877487))

(assert (=> d!472386 m!1877487))

(declare-fun m!1878093 () Bool)

(assert (=> d!472386 m!1878093))

(declare-fun m!1878095 () Bool)

(assert (=> d!472386 m!1878095))

(declare-fun m!1878097 () Bool)

(assert (=> d!472386 m!1878097))

(assert (=> d!472386 m!1878093))

(declare-fun m!1878099 () Bool)

(assert (=> d!472386 m!1878099))

(assert (=> d!472386 m!1877487))

(declare-fun m!1878101 () Bool)

(assert (=> d!472386 m!1878101))

(declare-fun m!1878103 () Bool)

(assert (=> d!472386 m!1878103))

(assert (=> d!472386 m!1877443))

(assert (=> d!472386 m!1877445))

(declare-fun m!1878105 () Bool)

(assert (=> d!472386 m!1878105))

(declare-fun m!1878107 () Bool)

(assert (=> d!472386 m!1878107))

(declare-fun m!1878109 () Bool)

(assert (=> d!472386 m!1878109))

(assert (=> d!472386 m!1877469))

(assert (=> d!472386 m!1878107))

(assert (=> d!472386 m!1878079))

(assert (=> d!472386 m!1878081))

(assert (=> d!472386 m!1877487))

(declare-fun m!1878111 () Bool)

(assert (=> d!472386 m!1878111))

(assert (=> d!472386 m!1878079))

(declare-fun m!1878113 () Bool)

(assert (=> d!472386 m!1878113))

(assert (=> d!472386 m!1877443))

(assert (=> d!472386 m!1877717))

(declare-fun m!1878115 () Bool)

(assert (=> d!472386 m!1878115))

(assert (=> d!472386 m!1878095))

(assert (=> d!472386 m!1877717))

(assert (=> d!472386 m!1878093))

(declare-fun m!1878117 () Bool)

(assert (=> d!472386 m!1878117))

(assert (=> d!472386 m!1878101))

(declare-fun m!1878119 () Bool)

(assert (=> d!472386 m!1878119))

(assert (=> b!1587514 m!1878101))

(assert (=> b!1587514 m!1878101))

(declare-fun m!1878121 () Bool)

(assert (=> b!1587514 m!1878121))

(assert (=> b!1587513 m!1878079))

(assert (=> b!1587513 m!1878081))

(assert (=> b!1587513 m!1878079))

(assert (=> b!1587513 m!1878081))

(declare-fun m!1878123 () Bool)

(assert (=> b!1587513 m!1878123))

(assert (=> b!1587513 m!1878101))

(assert (=> b!1587513 m!1878101))

(assert (=> b!1587513 m!1878121))

(assert (=> b!1587208 d!472386))

(declare-fun d!472388 () Bool)

(assert (=> d!472388 (= (inv!22864 (tag!3345 (rule!4879 (h!22856 tokens!457)))) (= (mod (str.len (value!97309 (tag!3345 (rule!4879 (h!22856 tokens!457))))) 2) 0))))

(assert (=> b!1587218 d!472388))

(declare-fun d!472390 () Bool)

(declare-fun res!708149 () Bool)

(declare-fun e!1019691 () Bool)

(assert (=> d!472390 (=> (not res!708149) (not e!1019691))))

(assert (=> d!472390 (= res!708149 (semiInverseModEq!1162 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (toValue!4486 (transformation!3075 (rule!4879 (h!22856 tokens!457))))))))

(assert (=> d!472390 (= (inv!22868 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) e!1019691)))

(declare-fun b!1587517 () Bool)

(assert (=> b!1587517 (= e!1019691 (equivClasses!1103 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (toValue!4486 (transformation!3075 (rule!4879 (h!22856 tokens!457))))))))

(assert (= (and d!472390 res!708149) b!1587517))

(declare-fun m!1878125 () Bool)

(assert (=> d!472390 m!1878125))

(declare-fun m!1878127 () Bool)

(assert (=> b!1587517 m!1878127))

(assert (=> b!1587218 d!472390))

(declare-fun b!1587536 () Bool)

(declare-fun res!708162 () Bool)

(declare-fun e!1019706 () Bool)

(assert (=> b!1587536 (=> (not res!708162) (not e!1019706))))

(declare-fun call!102943 () Bool)

(assert (=> b!1587536 (= res!708162 call!102943)))

(declare-fun e!1019712 () Bool)

(assert (=> b!1587536 (= e!1019712 e!1019706)))

(declare-fun c!257281 () Bool)

(declare-fun bm!102936 () Bool)

(declare-fun call!102941 () Bool)

(declare-fun c!257280 () Bool)

(assert (=> bm!102936 (= call!102941 (validRegex!1740 (ite c!257280 (reg!4732 lt!559515) (ite c!257281 (regOne!9319 lt!559515) (regTwo!9318 lt!559515)))))))

(declare-fun d!472392 () Bool)

(declare-fun res!708164 () Bool)

(declare-fun e!1019708 () Bool)

(assert (=> d!472392 (=> res!708164 e!1019708)))

(assert (=> d!472392 (= res!708164 ((_ is ElementMatch!4403) lt!559515))))

(assert (=> d!472392 (= (validRegex!1740 lt!559515) e!1019708)))

(declare-fun bm!102937 () Bool)

(assert (=> bm!102937 (= call!102943 call!102941)))

(declare-fun b!1587537 () Bool)

(declare-fun e!1019709 () Bool)

(assert (=> b!1587537 (= e!1019708 e!1019709)))

(assert (=> b!1587537 (= c!257280 ((_ is Star!4403) lt!559515))))

(declare-fun b!1587538 () Bool)

(declare-fun call!102942 () Bool)

(assert (=> b!1587538 (= e!1019706 call!102942)))

(declare-fun b!1587539 () Bool)

(declare-fun e!1019707 () Bool)

(assert (=> b!1587539 (= e!1019707 call!102943)))

(declare-fun b!1587540 () Bool)

(declare-fun e!1019710 () Bool)

(assert (=> b!1587540 (= e!1019710 e!1019707)))

(declare-fun res!708160 () Bool)

(assert (=> b!1587540 (=> (not res!708160) (not e!1019707))))

(assert (=> b!1587540 (= res!708160 call!102942)))

(declare-fun b!1587541 () Bool)

(assert (=> b!1587541 (= e!1019709 e!1019712)))

(assert (=> b!1587541 (= c!257281 ((_ is Union!4403) lt!559515))))

(declare-fun b!1587542 () Bool)

(declare-fun res!708161 () Bool)

(assert (=> b!1587542 (=> res!708161 e!1019710)))

(assert (=> b!1587542 (= res!708161 (not ((_ is Concat!7569) lt!559515)))))

(assert (=> b!1587542 (= e!1019712 e!1019710)))

(declare-fun b!1587543 () Bool)

(declare-fun e!1019711 () Bool)

(assert (=> b!1587543 (= e!1019709 e!1019711)))

(declare-fun res!708163 () Bool)

(declare-fun nullable!1295 (Regex!4403) Bool)

(assert (=> b!1587543 (= res!708163 (not (nullable!1295 (reg!4732 lt!559515))))))

(assert (=> b!1587543 (=> (not res!708163) (not e!1019711))))

(declare-fun bm!102938 () Bool)

(assert (=> bm!102938 (= call!102942 (validRegex!1740 (ite c!257281 (regTwo!9319 lt!559515) (regOne!9318 lt!559515))))))

(declare-fun b!1587544 () Bool)

(assert (=> b!1587544 (= e!1019711 call!102941)))

(assert (= (and d!472392 (not res!708164)) b!1587537))

(assert (= (and b!1587537 c!257280) b!1587543))

(assert (= (and b!1587537 (not c!257280)) b!1587541))

(assert (= (and b!1587543 res!708163) b!1587544))

(assert (= (and b!1587541 c!257281) b!1587536))

(assert (= (and b!1587541 (not c!257281)) b!1587542))

(assert (= (and b!1587536 res!708162) b!1587538))

(assert (= (and b!1587542 (not res!708161)) b!1587540))

(assert (= (and b!1587540 res!708160) b!1587539))

(assert (= (or b!1587538 b!1587540) bm!102938))

(assert (= (or b!1587536 b!1587539) bm!102937))

(assert (= (or b!1587544 bm!102937) bm!102936))

(declare-fun m!1878129 () Bool)

(assert (=> bm!102936 m!1878129))

(declare-fun m!1878131 () Bool)

(assert (=> b!1587543 m!1878131))

(declare-fun m!1878133 () Bool)

(assert (=> bm!102938 m!1878133))

(assert (=> b!1587207 d!472392))

(declare-fun d!472394 () Bool)

(declare-fun e!1019718 () Bool)

(assert (=> d!472394 e!1019718))

(declare-fun res!708170 () Bool)

(assert (=> d!472394 (=> (not res!708170) (not e!1019718))))

(declare-fun lt!559855 () List!17524)

(declare-fun content!2405 (List!17524) (InoxSet C!8980))

(assert (=> d!472394 (= res!708170 (= (content!2405 lt!559855) ((_ map or) (content!2405 lt!559527) (content!2405 (list!6776 lt!559528)))))))

(declare-fun e!1019717 () List!17524)

(assert (=> d!472394 (= lt!559855 e!1019717)))

(declare-fun c!257284 () Bool)

(assert (=> d!472394 (= c!257284 ((_ is Nil!17454) lt!559527))))

(assert (=> d!472394 (= (++!4555 lt!559527 (list!6776 lt!559528)) lt!559855)))

(declare-fun b!1587555 () Bool)

(declare-fun res!708169 () Bool)

(assert (=> b!1587555 (=> (not res!708169) (not e!1019718))))

(declare-fun size!14044 (List!17524) Int)

(assert (=> b!1587555 (= res!708169 (= (size!14044 lt!559855) (+ (size!14044 lt!559527) (size!14044 (list!6776 lt!559528)))))))

(declare-fun b!1587556 () Bool)

(assert (=> b!1587556 (= e!1019718 (or (not (= (list!6776 lt!559528) Nil!17454)) (= lt!559855 lt!559527)))))

(declare-fun b!1587554 () Bool)

(assert (=> b!1587554 (= e!1019717 (Cons!17454 (h!22855 lt!559527) (++!4555 (t!144319 lt!559527) (list!6776 lt!559528))))))

(declare-fun b!1587553 () Bool)

(assert (=> b!1587553 (= e!1019717 (list!6776 lt!559528))))

(assert (= (and d!472394 c!257284) b!1587553))

(assert (= (and d!472394 (not c!257284)) b!1587554))

(assert (= (and d!472394 res!708170) b!1587555))

(assert (= (and b!1587555 res!708169) b!1587556))

(declare-fun m!1878135 () Bool)

(assert (=> d!472394 m!1878135))

(declare-fun m!1878137 () Bool)

(assert (=> d!472394 m!1878137))

(assert (=> d!472394 m!1877465))

(declare-fun m!1878139 () Bool)

(assert (=> d!472394 m!1878139))

(declare-fun m!1878141 () Bool)

(assert (=> b!1587555 m!1878141))

(declare-fun m!1878143 () Bool)

(assert (=> b!1587555 m!1878143))

(assert (=> b!1587555 m!1877465))

(declare-fun m!1878145 () Bool)

(assert (=> b!1587555 m!1878145))

(assert (=> b!1587554 m!1877465))

(declare-fun m!1878147 () Bool)

(assert (=> b!1587554 m!1878147))

(assert (=> b!1587207 d!472394))

(declare-fun d!472396 () Bool)

(declare-fun list!6780 (Conc!5798) List!17524)

(assert (=> d!472396 (= (list!6776 lt!559528) (list!6780 (c!257222 lt!559528)))))

(declare-fun bs!391515 () Bool)

(assert (= bs!391515 d!472396))

(declare-fun m!1878149 () Bool)

(assert (=> bs!391515 m!1878149))

(assert (=> b!1587207 d!472396))

(declare-fun d!472398 () Bool)

(declare-fun res!708175 () Bool)

(declare-fun e!1019721 () Bool)

(assert (=> d!472398 (=> (not res!708175) (not e!1019721))))

(declare-fun isEmpty!10485 (List!17524) Bool)

(assert (=> d!472398 (= res!708175 (not (isEmpty!10485 (originalCharacters!3889 (h!22856 tokens!457)))))))

(assert (=> d!472398 (= (inv!22867 (h!22856 tokens!457)) e!1019721)))

(declare-fun b!1587561 () Bool)

(declare-fun res!708176 () Bool)

(assert (=> b!1587561 (=> (not res!708176) (not e!1019721))))

(assert (=> b!1587561 (= res!708176 (= (originalCharacters!3889 (h!22856 tokens!457)) (list!6776 (dynLambda!7753 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (value!97310 (h!22856 tokens!457))))))))

(declare-fun b!1587562 () Bool)

(assert (=> b!1587562 (= e!1019721 (= (size!14038 (h!22856 tokens!457)) (size!14044 (originalCharacters!3889 (h!22856 tokens!457)))))))

(assert (= (and d!472398 res!708175) b!1587561))

(assert (= (and b!1587561 res!708176) b!1587562))

(declare-fun b_lambda!49951 () Bool)

(assert (=> (not b_lambda!49951) (not b!1587561)))

(declare-fun t!144339 () Bool)

(declare-fun tb!89343 () Bool)

(assert (=> (and b!1587213 (= (toChars!4345 (transformation!3075 (h!22857 rules!1846))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457))))) t!144339) tb!89343))

(declare-fun b!1587563 () Bool)

(declare-fun e!1019722 () Bool)

(declare-fun tp!466617 () Bool)

(assert (=> b!1587563 (= e!1019722 (and (inv!22871 (c!257222 (dynLambda!7753 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (value!97310 (h!22856 tokens!457))))) tp!466617))))

(declare-fun result!108154 () Bool)

(assert (=> tb!89343 (= result!108154 (and (inv!22872 (dynLambda!7753 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (value!97310 (h!22856 tokens!457)))) e!1019722))))

(assert (= tb!89343 b!1587563))

(declare-fun m!1878151 () Bool)

(assert (=> b!1587563 m!1878151))

(declare-fun m!1878153 () Bool)

(assert (=> tb!89343 m!1878153))

(assert (=> b!1587561 t!144339))

(declare-fun b_and!111321 () Bool)

(assert (= b_and!111313 (and (=> t!144339 result!108154) b_and!111321)))

(declare-fun t!144341 () Bool)

(declare-fun tb!89345 () Bool)

(assert (=> (and b!1587209 (= (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457))))) t!144341) tb!89345))

(declare-fun result!108156 () Bool)

(assert (= result!108156 result!108154))

(assert (=> b!1587561 t!144341))

(declare-fun b_and!111323 () Bool)

(assert (= b_and!111315 (and (=> t!144341 result!108156) b_and!111323)))

(declare-fun m!1878155 () Bool)

(assert (=> d!472398 m!1878155))

(declare-fun m!1878157 () Bool)

(assert (=> b!1587561 m!1878157))

(assert (=> b!1587561 m!1878157))

(declare-fun m!1878159 () Bool)

(assert (=> b!1587561 m!1878159))

(declare-fun m!1878161 () Bool)

(assert (=> b!1587562 m!1878161))

(assert (=> b!1587217 d!472398))

(declare-fun d!472400 () Bool)

(assert (=> d!472400 (= (separableTokensPredicate!646 thiss!17113 (h!22856 tokens!457) (h!22856 (t!144320 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!425 (rulesRegex!465 thiss!17113 rules!1846) (++!4556 (charsOf!1724 (h!22856 tokens!457)) (singletonSeq!1428 (apply!4278 (charsOf!1724 (h!22856 (t!144320 tokens!457))) 0))))))))

(declare-fun bs!391516 () Bool)

(assert (= bs!391516 d!472400))

(assert (=> bs!391516 m!1877429))

(assert (=> bs!391516 m!1877439))

(assert (=> bs!391516 m!1877439))

(assert (=> bs!391516 m!1877435))

(assert (=> bs!391516 m!1877435))

(assert (=> bs!391516 m!1877437))

(assert (=> bs!391516 m!1877429))

(declare-fun m!1878163 () Bool)

(assert (=> bs!391516 m!1878163))

(declare-fun m!1878165 () Bool)

(assert (=> bs!391516 m!1878165))

(assert (=> bs!391516 m!1877483))

(assert (=> bs!391516 m!1877437))

(assert (=> bs!391516 m!1878163))

(assert (=> bs!391516 m!1877483))

(assert (=> b!1587206 d!472400))

(declare-fun d!472402 () Bool)

(assert (=> d!472402 (= (list!6776 lt!559519) (list!6780 (c!257222 lt!559519)))))

(declare-fun bs!391517 () Bool)

(assert (= bs!391517 d!472402))

(declare-fun m!1878167 () Bool)

(assert (=> bs!391517 m!1878167))

(assert (=> b!1587216 d!472402))

(declare-fun d!472404 () Bool)

(declare-fun lt!559858 () BalanceConc!11540)

(assert (=> d!472404 (= (list!6776 lt!559858) (printList!819 thiss!17113 (list!6775 lt!559511)))))

(assert (=> d!472404 (= lt!559858 (printTailRec!757 thiss!17113 lt!559511 0 (BalanceConc!11541 Empty!5798)))))

(assert (=> d!472404 (= (print!1235 thiss!17113 lt!559511) lt!559858)))

(declare-fun bs!391518 () Bool)

(assert (= bs!391518 d!472404))

(declare-fun m!1878169 () Bool)

(assert (=> bs!391518 m!1878169))

(declare-fun m!1878171 () Bool)

(assert (=> bs!391518 m!1878171))

(assert (=> bs!391518 m!1878171))

(declare-fun m!1878173 () Bool)

(assert (=> bs!391518 m!1878173))

(assert (=> bs!391518 m!1877451))

(assert (=> b!1587216 d!472404))

(declare-fun d!472406 () Bool)

(declare-fun e!1019725 () Bool)

(assert (=> d!472406 e!1019725))

(declare-fun res!708179 () Bool)

(assert (=> d!472406 (=> (not res!708179) (not e!1019725))))

(declare-fun lt!559861 () BalanceConc!11542)

(assert (=> d!472406 (= res!708179 (= (list!6775 lt!559861) (Cons!17455 (h!22856 tokens!457) Nil!17455)))))

(declare-fun singleton!594 (Token!5716) BalanceConc!11542)

(assert (=> d!472406 (= lt!559861 (singleton!594 (h!22856 tokens!457)))))

(assert (=> d!472406 (= (singletonSeq!1429 (h!22856 tokens!457)) lt!559861)))

(declare-fun b!1587566 () Bool)

(assert (=> b!1587566 (= e!1019725 (isBalanced!1712 (c!257223 lt!559861)))))

(assert (= (and d!472406 res!708179) b!1587566))

(declare-fun m!1878175 () Bool)

(assert (=> d!472406 m!1878175))

(declare-fun m!1878177 () Bool)

(assert (=> d!472406 m!1878177))

(declare-fun m!1878179 () Bool)

(assert (=> b!1587566 m!1878179))

(assert (=> b!1587216 d!472406))

(declare-fun b!1587585 () Bool)

(declare-fun e!1019732 () Option!3144)

(declare-fun lt!559874 () Option!3144)

(declare-fun lt!559875 () Option!3144)

(assert (=> b!1587585 (= e!1019732 (ite (and ((_ is None!3143) lt!559874) ((_ is None!3143) lt!559875)) None!3143 (ite ((_ is None!3143) lt!559875) lt!559874 (ite ((_ is None!3143) lt!559874) lt!559875 (ite (>= (size!14038 (_1!9871 (v!24024 lt!559874))) (size!14038 (_1!9871 (v!24024 lt!559875)))) lt!559874 lt!559875)))))))

(declare-fun call!102946 () Option!3144)

(assert (=> b!1587585 (= lt!559874 call!102946)))

(assert (=> b!1587585 (= lt!559875 (maxPrefix!1268 thiss!17113 (t!144321 rules!1846) lt!559510))))

(declare-fun b!1587586 () Bool)

(declare-fun res!708194 () Bool)

(declare-fun e!1019733 () Bool)

(assert (=> b!1587586 (=> (not res!708194) (not e!1019733))))

(declare-fun lt!559873 () Option!3144)

(assert (=> b!1587586 (= res!708194 (= (list!6776 (charsOf!1724 (_1!9871 (get!4994 lt!559873)))) (originalCharacters!3889 (_1!9871 (get!4994 lt!559873)))))))

(declare-fun b!1587587 () Bool)

(declare-fun res!708200 () Bool)

(assert (=> b!1587587 (=> (not res!708200) (not e!1019733))))

(assert (=> b!1587587 (= res!708200 (matchR!1922 (regex!3075 (rule!4879 (_1!9871 (get!4994 lt!559873)))) (list!6776 (charsOf!1724 (_1!9871 (get!4994 lt!559873))))))))

(declare-fun d!472408 () Bool)

(declare-fun e!1019734 () Bool)

(assert (=> d!472408 e!1019734))

(declare-fun res!708199 () Bool)

(assert (=> d!472408 (=> res!708199 e!1019734)))

(assert (=> d!472408 (= res!708199 (isEmpty!10484 lt!559873))))

(assert (=> d!472408 (= lt!559873 e!1019732)))

(declare-fun c!257287 () Bool)

(assert (=> d!472408 (= c!257287 (and ((_ is Cons!17456) rules!1846) ((_ is Nil!17456) (t!144321 rules!1846))))))

(declare-fun lt!559872 () Unit!27417)

(declare-fun lt!559876 () Unit!27417)

(assert (=> d!472408 (= lt!559872 lt!559876)))

(assert (=> d!472408 (isPrefix!1335 lt!559510 lt!559510)))

(declare-fun lemmaIsPrefixRefl!922 (List!17524 List!17524) Unit!27417)

(assert (=> d!472408 (= lt!559876 (lemmaIsPrefixRefl!922 lt!559510 lt!559510))))

(declare-fun rulesValidInductive!924 (LexerInterface!2704 List!17526) Bool)

(assert (=> d!472408 (rulesValidInductive!924 thiss!17113 rules!1846)))

(assert (=> d!472408 (= (maxPrefix!1268 thiss!17113 rules!1846 lt!559510) lt!559873)))

(declare-fun b!1587588 () Bool)

(declare-fun contains!3048 (List!17526 Rule!5950) Bool)

(assert (=> b!1587588 (= e!1019733 (contains!3048 rules!1846 (rule!4879 (_1!9871 (get!4994 lt!559873)))))))

(declare-fun b!1587589 () Bool)

(assert (=> b!1587589 (= e!1019732 call!102946)))

(declare-fun b!1587590 () Bool)

(declare-fun res!708196 () Bool)

(assert (=> b!1587590 (=> (not res!708196) (not e!1019733))))

(declare-fun apply!4287 (TokenValueInjection!5990 BalanceConc!11540) TokenValue!3165)

(assert (=> b!1587590 (= res!708196 (= (value!97310 (_1!9871 (get!4994 lt!559873))) (apply!4287 (transformation!3075 (rule!4879 (_1!9871 (get!4994 lt!559873)))) (seqFromList!1900 (originalCharacters!3889 (_1!9871 (get!4994 lt!559873)))))))))

(declare-fun b!1587591 () Bool)

(declare-fun res!708198 () Bool)

(assert (=> b!1587591 (=> (not res!708198) (not e!1019733))))

(assert (=> b!1587591 (= res!708198 (< (size!14044 (_2!9871 (get!4994 lt!559873))) (size!14044 lt!559510)))))

(declare-fun b!1587592 () Bool)

(assert (=> b!1587592 (= e!1019734 e!1019733)))

(declare-fun res!708197 () Bool)

(assert (=> b!1587592 (=> (not res!708197) (not e!1019733))))

(assert (=> b!1587592 (= res!708197 (isDefined!2519 lt!559873))))

(declare-fun bm!102941 () Bool)

(assert (=> bm!102941 (= call!102946 (maxPrefixOneRule!737 thiss!17113 (h!22857 rules!1846) lt!559510))))

(declare-fun b!1587593 () Bool)

(declare-fun res!708195 () Bool)

(assert (=> b!1587593 (=> (not res!708195) (not e!1019733))))

(assert (=> b!1587593 (= res!708195 (= (++!4555 (list!6776 (charsOf!1724 (_1!9871 (get!4994 lt!559873)))) (_2!9871 (get!4994 lt!559873))) lt!559510))))

(assert (= (and d!472408 c!257287) b!1587589))

(assert (= (and d!472408 (not c!257287)) b!1587585))

(assert (= (or b!1587589 b!1587585) bm!102941))

(assert (= (and d!472408 (not res!708199)) b!1587592))

(assert (= (and b!1587592 res!708197) b!1587586))

(assert (= (and b!1587586 res!708194) b!1587591))

(assert (= (and b!1587591 res!708198) b!1587593))

(assert (= (and b!1587593 res!708195) b!1587590))

(assert (= (and b!1587590 res!708196) b!1587587))

(assert (= (and b!1587587 res!708200) b!1587588))

(declare-fun m!1878181 () Bool)

(assert (=> b!1587588 m!1878181))

(declare-fun m!1878183 () Bool)

(assert (=> b!1587588 m!1878183))

(assert (=> b!1587590 m!1878181))

(declare-fun m!1878185 () Bool)

(assert (=> b!1587590 m!1878185))

(assert (=> b!1587590 m!1878185))

(declare-fun m!1878187 () Bool)

(assert (=> b!1587590 m!1878187))

(declare-fun m!1878189 () Bool)

(assert (=> b!1587585 m!1878189))

(declare-fun m!1878191 () Bool)

(assert (=> bm!102941 m!1878191))

(assert (=> b!1587586 m!1878181))

(declare-fun m!1878193 () Bool)

(assert (=> b!1587586 m!1878193))

(assert (=> b!1587586 m!1878193))

(declare-fun m!1878195 () Bool)

(assert (=> b!1587586 m!1878195))

(declare-fun m!1878197 () Bool)

(assert (=> b!1587592 m!1878197))

(declare-fun m!1878199 () Bool)

(assert (=> d!472408 m!1878199))

(declare-fun m!1878201 () Bool)

(assert (=> d!472408 m!1878201))

(declare-fun m!1878203 () Bool)

(assert (=> d!472408 m!1878203))

(declare-fun m!1878205 () Bool)

(assert (=> d!472408 m!1878205))

(assert (=> b!1587593 m!1878181))

(assert (=> b!1587593 m!1878193))

(assert (=> b!1587593 m!1878193))

(assert (=> b!1587593 m!1878195))

(assert (=> b!1587593 m!1878195))

(declare-fun m!1878207 () Bool)

(assert (=> b!1587593 m!1878207))

(assert (=> b!1587587 m!1878181))

(assert (=> b!1587587 m!1878193))

(assert (=> b!1587587 m!1878193))

(assert (=> b!1587587 m!1878195))

(assert (=> b!1587587 m!1878195))

(declare-fun m!1878209 () Bool)

(assert (=> b!1587587 m!1878209))

(assert (=> b!1587591 m!1878181))

(declare-fun m!1878211 () Bool)

(assert (=> b!1587591 m!1878211))

(declare-fun m!1878213 () Bool)

(assert (=> b!1587591 m!1878213))

(assert (=> b!1587216 d!472408))

(declare-fun d!472410 () Bool)

(declare-fun c!257290 () Bool)

(assert (=> d!472410 (= c!257290 ((_ is Cons!17455) (Cons!17455 (h!22856 tokens!457) Nil!17455)))))

(declare-fun e!1019737 () List!17524)

(assert (=> d!472410 (= (printList!819 thiss!17113 (Cons!17455 (h!22856 tokens!457) Nil!17455)) e!1019737)))

(declare-fun b!1587598 () Bool)

(assert (=> b!1587598 (= e!1019737 (++!4555 (list!6776 (charsOf!1724 (h!22856 (Cons!17455 (h!22856 tokens!457) Nil!17455)))) (printList!819 thiss!17113 (t!144320 (Cons!17455 (h!22856 tokens!457) Nil!17455)))))))

(declare-fun b!1587599 () Bool)

(assert (=> b!1587599 (= e!1019737 Nil!17454)))

(assert (= (and d!472410 c!257290) b!1587598))

(assert (= (and d!472410 (not c!257290)) b!1587599))

(declare-fun m!1878215 () Bool)

(assert (=> b!1587598 m!1878215))

(assert (=> b!1587598 m!1878215))

(declare-fun m!1878217 () Bool)

(assert (=> b!1587598 m!1878217))

(declare-fun m!1878219 () Bool)

(assert (=> b!1587598 m!1878219))

(assert (=> b!1587598 m!1878217))

(assert (=> b!1587598 m!1878219))

(declare-fun m!1878221 () Bool)

(assert (=> b!1587598 m!1878221))

(assert (=> b!1587216 d!472410))

(declare-fun d!472412 () Bool)

(declare-fun lt!559894 () BalanceConc!11540)

(declare-fun printListTailRec!317 (LexerInterface!2704 List!17525 List!17524) List!17524)

(declare-fun dropList!532 (BalanceConc!11542 Int) List!17525)

(assert (=> d!472412 (= (list!6776 lt!559894) (printListTailRec!317 thiss!17113 (dropList!532 lt!559511 0) (list!6776 (BalanceConc!11541 Empty!5798))))))

(declare-fun e!1019742 () BalanceConc!11540)

(assert (=> d!472412 (= lt!559894 e!1019742)))

(declare-fun c!257293 () Bool)

(assert (=> d!472412 (= c!257293 (>= 0 (size!14041 lt!559511)))))

(declare-fun e!1019743 () Bool)

(assert (=> d!472412 e!1019743))

(declare-fun res!708203 () Bool)

(assert (=> d!472412 (=> (not res!708203) (not e!1019743))))

(assert (=> d!472412 (= res!708203 (>= 0 0))))

(assert (=> d!472412 (= (printTailRec!757 thiss!17113 lt!559511 0 (BalanceConc!11541 Empty!5798)) lt!559894)))

(declare-fun b!1587606 () Bool)

(assert (=> b!1587606 (= e!1019743 (<= 0 (size!14041 lt!559511)))))

(declare-fun b!1587607 () Bool)

(assert (=> b!1587607 (= e!1019742 (BalanceConc!11541 Empty!5798))))

(declare-fun b!1587608 () Bool)

(assert (=> b!1587608 (= e!1019742 (printTailRec!757 thiss!17113 lt!559511 (+ 0 1) (++!4556 (BalanceConc!11541 Empty!5798) (charsOf!1724 (apply!4282 lt!559511 0)))))))

(declare-fun lt!559895 () List!17525)

(assert (=> b!1587608 (= lt!559895 (list!6775 lt!559511))))

(declare-fun lt!559893 () Unit!27417)

(declare-fun lemmaDropApply!524 (List!17525 Int) Unit!27417)

(assert (=> b!1587608 (= lt!559893 (lemmaDropApply!524 lt!559895 0))))

(declare-fun drop!826 (List!17525 Int) List!17525)

(declare-fun apply!4288 (List!17525 Int) Token!5716)

(assert (=> b!1587608 (= (head!3229 (drop!826 lt!559895 0)) (apply!4288 lt!559895 0))))

(declare-fun lt!559891 () Unit!27417)

(assert (=> b!1587608 (= lt!559891 lt!559893)))

(declare-fun lt!559897 () List!17525)

(assert (=> b!1587608 (= lt!559897 (list!6775 lt!559511))))

(declare-fun lt!559892 () Unit!27417)

(declare-fun lemmaDropTail!504 (List!17525 Int) Unit!27417)

(assert (=> b!1587608 (= lt!559892 (lemmaDropTail!504 lt!559897 0))))

(declare-fun tail!2279 (List!17525) List!17525)

(assert (=> b!1587608 (= (tail!2279 (drop!826 lt!559897 0)) (drop!826 lt!559897 (+ 0 1)))))

(declare-fun lt!559896 () Unit!27417)

(assert (=> b!1587608 (= lt!559896 lt!559892)))

(assert (= (and d!472412 res!708203) b!1587606))

(assert (= (and d!472412 c!257293) b!1587607))

(assert (= (and d!472412 (not c!257293)) b!1587608))

(declare-fun m!1878223 () Bool)

(assert (=> d!472412 m!1878223))

(declare-fun m!1878225 () Bool)

(assert (=> d!472412 m!1878225))

(declare-fun m!1878227 () Bool)

(assert (=> d!472412 m!1878227))

(declare-fun m!1878229 () Bool)

(assert (=> d!472412 m!1878229))

(declare-fun m!1878231 () Bool)

(assert (=> d!472412 m!1878231))

(assert (=> d!472412 m!1878227))

(assert (=> d!472412 m!1878229))

(assert (=> b!1587606 m!1878225))

(declare-fun m!1878233 () Bool)

(assert (=> b!1587608 m!1878233))

(declare-fun m!1878235 () Bool)

(assert (=> b!1587608 m!1878235))

(declare-fun m!1878237 () Bool)

(assert (=> b!1587608 m!1878237))

(declare-fun m!1878239 () Bool)

(assert (=> b!1587608 m!1878239))

(declare-fun m!1878241 () Bool)

(assert (=> b!1587608 m!1878241))

(assert (=> b!1587608 m!1878233))

(assert (=> b!1587608 m!1878235))

(assert (=> b!1587608 m!1878171))

(declare-fun m!1878243 () Bool)

(assert (=> b!1587608 m!1878243))

(declare-fun m!1878245 () Bool)

(assert (=> b!1587608 m!1878245))

(declare-fun m!1878247 () Bool)

(assert (=> b!1587608 m!1878247))

(declare-fun m!1878249 () Bool)

(assert (=> b!1587608 m!1878249))

(declare-fun m!1878251 () Bool)

(assert (=> b!1587608 m!1878251))

(assert (=> b!1587608 m!1878247))

(assert (=> b!1587608 m!1878243))

(declare-fun m!1878253 () Bool)

(assert (=> b!1587608 m!1878253))

(assert (=> b!1587608 m!1878237))

(declare-fun m!1878255 () Bool)

(assert (=> b!1587608 m!1878255))

(assert (=> b!1587216 d!472412))

(declare-fun d!472414 () Bool)

(assert (=> d!472414 (= (list!6775 (_1!9870 lt!559508)) (list!6779 (c!257223 (_1!9870 lt!559508))))))

(declare-fun bs!391519 () Bool)

(assert (= bs!391519 d!472414))

(declare-fun m!1878257 () Bool)

(assert (=> bs!391519 m!1878257))

(assert (=> b!1587205 d!472414))

(declare-fun d!472416 () Bool)

(declare-fun e!1019813 () Bool)

(assert (=> d!472416 e!1019813))

(declare-fun res!708232 () Bool)

(assert (=> d!472416 (=> (not res!708232) (not e!1019813))))

(assert (=> d!472416 (= res!708232 (= (list!6775 (_1!9870 (lex!1188 thiss!17113 rules!1846 (print!1235 thiss!17113 (seqFromList!1899 (t!144320 tokens!457)))))) (t!144320 tokens!457)))))

(declare-fun lt!560028 () Unit!27417)

(declare-fun e!1019812 () Unit!27417)

(assert (=> d!472416 (= lt!560028 e!1019812)))

(declare-fun c!257299 () Bool)

(assert (=> d!472416 (= c!257299 (or ((_ is Nil!17455) (t!144320 tokens!457)) ((_ is Nil!17455) (t!144320 (t!144320 tokens!457)))))))

(assert (=> d!472416 (not (isEmpty!10475 rules!1846))))

(assert (=> d!472416 (= (theoremInvertabilityWhenTokenListSeparable!149 thiss!17113 rules!1846 (t!144320 tokens!457)) lt!560028)))

(declare-fun b!1587703 () Bool)

(declare-fun Unit!27440 () Unit!27417)

(assert (=> b!1587703 (= e!1019812 Unit!27440)))

(declare-fun b!1587704 () Bool)

(declare-fun Unit!27441 () Unit!27417)

(assert (=> b!1587704 (= e!1019812 Unit!27441)))

(declare-fun lt!560040 () BalanceConc!11540)

(assert (=> b!1587704 (= lt!560040 (print!1235 thiss!17113 (seqFromList!1899 (t!144320 tokens!457))))))

(declare-fun lt!560033 () BalanceConc!11540)

(assert (=> b!1587704 (= lt!560033 (print!1235 thiss!17113 (seqFromList!1899 (t!144320 (t!144320 tokens!457)))))))

(declare-fun lt!560024 () tuple2!16936)

(assert (=> b!1587704 (= lt!560024 (lex!1188 thiss!17113 rules!1846 lt!560033))))

(declare-fun lt!560030 () List!17524)

(assert (=> b!1587704 (= lt!560030 (list!6776 (charsOf!1724 (h!22856 (t!144320 tokens!457)))))))

(declare-fun lt!560027 () List!17524)

(assert (=> b!1587704 (= lt!560027 (list!6776 lt!560033))))

(declare-fun lt!560021 () Unit!27417)

(assert (=> b!1587704 (= lt!560021 (lemmaConcatTwoListThenFirstIsPrefix!860 lt!560030 lt!560027))))

(assert (=> b!1587704 (isPrefix!1335 lt!560030 (++!4555 lt!560030 lt!560027))))

(declare-fun lt!560025 () Unit!27417)

(assert (=> b!1587704 (= lt!560025 lt!560021)))

(declare-fun lt!560036 () Unit!27417)

(assert (=> b!1587704 (= lt!560036 (theoremInvertabilityWhenTokenListSeparable!149 thiss!17113 rules!1846 (t!144320 (t!144320 tokens!457))))))

(declare-fun lt!560037 () Unit!27417)

(assert (=> b!1587704 (= lt!560037 (seqFromListBHdTlConstructive!152 (h!22856 (t!144320 (t!144320 tokens!457))) (t!144320 (t!144320 (t!144320 tokens!457))) (_1!9870 lt!560024)))))

(assert (=> b!1587704 (= (list!6775 (_1!9870 lt!560024)) (list!6775 (prepend!563 (seqFromList!1899 (t!144320 (t!144320 (t!144320 tokens!457)))) (h!22856 (t!144320 (t!144320 tokens!457))))))))

(declare-fun lt!560034 () Unit!27417)

(assert (=> b!1587704 (= lt!560034 lt!560037)))

(declare-fun lt!560035 () Option!3144)

(assert (=> b!1587704 (= lt!560035 (maxPrefix!1268 thiss!17113 rules!1846 (list!6776 lt!560040)))))

(assert (=> b!1587704 (= (print!1235 thiss!17113 (singletonSeq!1429 (h!22856 (t!144320 tokens!457)))) (printTailRec!757 thiss!17113 (singletonSeq!1429 (h!22856 (t!144320 tokens!457))) 0 (BalanceConc!11541 Empty!5798)))))

(declare-fun lt!560023 () Unit!27417)

(declare-fun Unit!27442 () Unit!27417)

(assert (=> b!1587704 (= lt!560023 Unit!27442)))

(declare-fun lt!560032 () Unit!27417)

(assert (=> b!1587704 (= lt!560032 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!278 thiss!17113 rules!1846 (list!6776 (charsOf!1724 (h!22856 (t!144320 tokens!457)))) (list!6776 lt!560033)))))

(assert (=> b!1587704 (= (list!6776 (charsOf!1724 (h!22856 (t!144320 tokens!457)))) (originalCharacters!3889 (h!22856 (t!144320 tokens!457))))))

(declare-fun lt!560015 () Unit!27417)

(declare-fun Unit!27443 () Unit!27417)

(assert (=> b!1587704 (= lt!560015 Unit!27443)))

(declare-fun head!3230 (List!17524) C!8980)

(assert (=> b!1587704 (= (list!6776 (singletonSeq!1428 (apply!4278 (charsOf!1724 (h!22856 (t!144320 (t!144320 tokens!457)))) 0))) (Cons!17454 (head!3230 (originalCharacters!3889 (h!22856 (t!144320 (t!144320 tokens!457))))) Nil!17454))))

(declare-fun lt!560026 () Unit!27417)

(declare-fun Unit!27444 () Unit!27417)

(assert (=> b!1587704 (= lt!560026 Unit!27444)))

(assert (=> b!1587704 (= (list!6776 (singletonSeq!1428 (apply!4278 (charsOf!1724 (h!22856 (t!144320 (t!144320 tokens!457)))) 0))) (Cons!17454 (head!3230 (list!6776 lt!560033)) Nil!17454))))

(declare-fun lt!560022 () Unit!27417)

(declare-fun Unit!27445 () Unit!27417)

(assert (=> b!1587704 (= lt!560022 Unit!27445)))

(declare-fun head!3231 (BalanceConc!11540) C!8980)

(assert (=> b!1587704 (= (list!6776 (singletonSeq!1428 (apply!4278 (charsOf!1724 (h!22856 (t!144320 (t!144320 tokens!457)))) 0))) (Cons!17454 (head!3231 lt!560033) Nil!17454))))

(declare-fun lt!560017 () Unit!27417)

(declare-fun Unit!27446 () Unit!27417)

(assert (=> b!1587704 (= lt!560017 Unit!27446)))

(assert (=> b!1587704 (isDefined!2519 (maxPrefix!1268 thiss!17113 rules!1846 (originalCharacters!3889 (h!22856 (t!144320 tokens!457)))))))

(declare-fun lt!560019 () Unit!27417)

(declare-fun Unit!27447 () Unit!27417)

(assert (=> b!1587704 (= lt!560019 Unit!27447)))

(assert (=> b!1587704 (isDefined!2519 (maxPrefix!1268 thiss!17113 rules!1846 (list!6776 (charsOf!1724 (h!22856 (t!144320 tokens!457))))))))

(declare-fun lt!560016 () Unit!27417)

(declare-fun Unit!27448 () Unit!27417)

(assert (=> b!1587704 (= lt!560016 Unit!27448)))

(declare-fun lt!560039 () Unit!27417)

(declare-fun Unit!27449 () Unit!27417)

(assert (=> b!1587704 (= lt!560039 Unit!27449)))

(assert (=> b!1587704 (= (_1!9871 (get!4994 (maxPrefix!1268 thiss!17113 rules!1846 (list!6776 (charsOf!1724 (h!22856 (t!144320 tokens!457))))))) (h!22856 (t!144320 tokens!457)))))

(declare-fun lt!560029 () Unit!27417)

(declare-fun Unit!27450 () Unit!27417)

(assert (=> b!1587704 (= lt!560029 Unit!27450)))

(assert (=> b!1587704 (isEmpty!10485 (_2!9871 (get!4994 (maxPrefix!1268 thiss!17113 rules!1846 (list!6776 (charsOf!1724 (h!22856 (t!144320 tokens!457))))))))))

(declare-fun lt!560018 () Unit!27417)

(declare-fun Unit!27451 () Unit!27417)

(assert (=> b!1587704 (= lt!560018 Unit!27451)))

(assert (=> b!1587704 (matchR!1922 (regex!3075 (rule!4879 (h!22856 (t!144320 tokens!457)))) (list!6776 (charsOf!1724 (h!22856 (t!144320 tokens!457)))))))

(declare-fun lt!560020 () Unit!27417)

(declare-fun Unit!27452 () Unit!27417)

(assert (=> b!1587704 (= lt!560020 Unit!27452)))

(assert (=> b!1587704 (= (rule!4879 (h!22856 (t!144320 tokens!457))) (rule!4879 (h!22856 (t!144320 tokens!457))))))

(declare-fun lt!560038 () Unit!27417)

(declare-fun Unit!27453 () Unit!27417)

(assert (=> b!1587704 (= lt!560038 Unit!27453)))

(declare-fun lt!560031 () Unit!27417)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!72 (LexerInterface!2704 List!17526 Token!5716 Rule!5950 List!17524) Unit!27417)

(assert (=> b!1587704 (= lt!560031 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!72 thiss!17113 rules!1846 (h!22856 (t!144320 tokens!457)) (rule!4879 (h!22856 (t!144320 tokens!457))) (list!6776 lt!560033)))))

(declare-fun b!1587705 () Bool)

(assert (=> b!1587705 (= e!1019813 (isEmpty!10481 (_2!9870 (lex!1188 thiss!17113 rules!1846 (print!1235 thiss!17113 (seqFromList!1899 (t!144320 tokens!457)))))))))

(assert (= (and d!472416 c!257299) b!1587703))

(assert (= (and d!472416 (not c!257299)) b!1587704))

(assert (= (and d!472416 res!708232) b!1587705))

(assert (=> d!472416 m!1877469))

(declare-fun m!1878351 () Bool)

(assert (=> d!472416 m!1878351))

(assert (=> d!472416 m!1877495))

(declare-fun m!1878353 () Bool)

(assert (=> d!472416 m!1878353))

(assert (=> d!472416 m!1878353))

(declare-fun m!1878355 () Bool)

(assert (=> d!472416 m!1878355))

(assert (=> d!472416 m!1877495))

(declare-fun m!1878357 () Bool)

(assert (=> b!1587704 m!1878357))

(declare-fun m!1878359 () Bool)

(assert (=> b!1587704 m!1878359))

(assert (=> b!1587704 m!1877439))

(declare-fun m!1878361 () Bool)

(assert (=> b!1587704 m!1878361))

(declare-fun m!1878363 () Bool)

(assert (=> b!1587704 m!1878363))

(declare-fun m!1878365 () Bool)

(assert (=> b!1587704 m!1878365))

(assert (=> b!1587704 m!1878357))

(declare-fun m!1878367 () Bool)

(assert (=> b!1587704 m!1878367))

(declare-fun m!1878369 () Bool)

(assert (=> b!1587704 m!1878369))

(assert (=> b!1587704 m!1877795))

(declare-fun m!1878371 () Bool)

(assert (=> b!1587704 m!1878371))

(declare-fun m!1878373 () Bool)

(assert (=> b!1587704 m!1878373))

(declare-fun m!1878375 () Bool)

(assert (=> b!1587704 m!1878375))

(assert (=> b!1587704 m!1878371))

(declare-fun m!1878377 () Bool)

(assert (=> b!1587704 m!1878377))

(assert (=> b!1587704 m!1877495))

(declare-fun m!1878379 () Bool)

(assert (=> b!1587704 m!1878379))

(declare-fun m!1878381 () Bool)

(assert (=> b!1587704 m!1878381))

(declare-fun m!1878383 () Bool)

(assert (=> b!1587704 m!1878383))

(assert (=> b!1587704 m!1878379))

(assert (=> b!1587704 m!1877439))

(assert (=> b!1587704 m!1877795))

(assert (=> b!1587704 m!1878379))

(declare-fun m!1878385 () Bool)

(assert (=> b!1587704 m!1878385))

(declare-fun m!1878387 () Bool)

(assert (=> b!1587704 m!1878387))

(declare-fun m!1878389 () Bool)

(assert (=> b!1587704 m!1878389))

(declare-fun m!1878391 () Bool)

(assert (=> b!1587704 m!1878391))

(assert (=> b!1587704 m!1877795))

(assert (=> b!1587704 m!1878367))

(declare-fun m!1878393 () Bool)

(assert (=> b!1587704 m!1878393))

(assert (=> b!1587704 m!1877495))

(assert (=> b!1587704 m!1878353))

(declare-fun m!1878395 () Bool)

(assert (=> b!1587704 m!1878395))

(assert (=> b!1587704 m!1878371))

(declare-fun m!1878397 () Bool)

(assert (=> b!1587704 m!1878397))

(declare-fun m!1878399 () Bool)

(assert (=> b!1587704 m!1878399))

(assert (=> b!1587704 m!1878361))

(declare-fun m!1878401 () Bool)

(assert (=> b!1587704 m!1878401))

(declare-fun m!1878403 () Bool)

(assert (=> b!1587704 m!1878403))

(assert (=> b!1587704 m!1878375))

(declare-fun m!1878405 () Bool)

(assert (=> b!1587704 m!1878405))

(assert (=> b!1587704 m!1878371))

(declare-fun m!1878407 () Bool)

(assert (=> b!1587704 m!1878407))

(assert (=> b!1587704 m!1878363))

(declare-fun m!1878409 () Bool)

(assert (=> b!1587704 m!1878409))

(assert (=> b!1587704 m!1877795))

(declare-fun m!1878411 () Bool)

(assert (=> b!1587704 m!1878411))

(declare-fun m!1878413 () Bool)

(assert (=> b!1587704 m!1878413))

(assert (=> b!1587704 m!1877515))

(declare-fun m!1878415 () Bool)

(assert (=> b!1587704 m!1878415))

(declare-fun m!1878417 () Bool)

(assert (=> b!1587704 m!1878417))

(assert (=> b!1587704 m!1878387))

(assert (=> b!1587704 m!1878367))

(declare-fun m!1878419 () Bool)

(assert (=> b!1587704 m!1878419))

(assert (=> b!1587704 m!1878383))

(assert (=> b!1587704 m!1878417))

(assert (=> b!1587704 m!1878365))

(assert (=> b!1587704 m!1877515))

(declare-fun m!1878421 () Bool)

(assert (=> b!1587704 m!1878421))

(assert (=> b!1587705 m!1877495))

(assert (=> b!1587705 m!1877495))

(assert (=> b!1587705 m!1878353))

(assert (=> b!1587705 m!1878353))

(assert (=> b!1587705 m!1878355))

(declare-fun m!1878423 () Bool)

(assert (=> b!1587705 m!1878423))

(assert (=> b!1587205 d!472416))

(declare-fun d!472432 () Bool)

(declare-fun e!1019820 () Bool)

(assert (=> d!472432 e!1019820))

(declare-fun res!708242 () Bool)

(assert (=> d!472432 (=> res!708242 e!1019820)))

(declare-fun lt!560043 () Bool)

(assert (=> d!472432 (= res!708242 (not lt!560043))))

(declare-fun e!1019822 () Bool)

(assert (=> d!472432 (= lt!560043 e!1019822)))

(declare-fun res!708241 () Bool)

(assert (=> d!472432 (=> res!708241 e!1019822)))

(assert (=> d!472432 (= res!708241 ((_ is Nil!17454) lt!559527))))

(assert (=> d!472432 (= (isPrefix!1335 lt!559527 lt!559517) lt!560043)))

(declare-fun b!1587717 () Bool)

(assert (=> b!1587717 (= e!1019820 (>= (size!14044 lt!559517) (size!14044 lt!559527)))))

(declare-fun b!1587714 () Bool)

(declare-fun e!1019821 () Bool)

(assert (=> b!1587714 (= e!1019822 e!1019821)))

(declare-fun res!708243 () Bool)

(assert (=> b!1587714 (=> (not res!708243) (not e!1019821))))

(assert (=> b!1587714 (= res!708243 (not ((_ is Nil!17454) lt!559517)))))

(declare-fun b!1587715 () Bool)

(declare-fun res!708244 () Bool)

(assert (=> b!1587715 (=> (not res!708244) (not e!1019821))))

(assert (=> b!1587715 (= res!708244 (= (head!3230 lt!559527) (head!3230 lt!559517)))))

(declare-fun b!1587716 () Bool)

(declare-fun tail!2280 (List!17524) List!17524)

(assert (=> b!1587716 (= e!1019821 (isPrefix!1335 (tail!2280 lt!559527) (tail!2280 lt!559517)))))

(assert (= (and d!472432 (not res!708241)) b!1587714))

(assert (= (and b!1587714 res!708243) b!1587715))

(assert (= (and b!1587715 res!708244) b!1587716))

(assert (= (and d!472432 (not res!708242)) b!1587717))

(declare-fun m!1878425 () Bool)

(assert (=> b!1587717 m!1878425))

(assert (=> b!1587717 m!1878143))

(declare-fun m!1878427 () Bool)

(assert (=> b!1587715 m!1878427))

(declare-fun m!1878429 () Bool)

(assert (=> b!1587715 m!1878429))

(declare-fun m!1878431 () Bool)

(assert (=> b!1587716 m!1878431))

(declare-fun m!1878433 () Bool)

(assert (=> b!1587716 m!1878433))

(assert (=> b!1587716 m!1878431))

(assert (=> b!1587716 m!1878433))

(declare-fun m!1878435 () Bool)

(assert (=> b!1587716 m!1878435))

(assert (=> b!1587205 d!472432))

(declare-fun d!472434 () Bool)

(assert (=> d!472434 (isPrefix!1335 lt!559527 (++!4555 lt!559527 lt!559507))))

(declare-fun lt!560046 () Unit!27417)

(declare-fun choose!9508 (List!17524 List!17524) Unit!27417)

(assert (=> d!472434 (= lt!560046 (choose!9508 lt!559527 lt!559507))))

(assert (=> d!472434 (= (lemmaConcatTwoListThenFirstIsPrefix!860 lt!559527 lt!559507) lt!560046)))

(declare-fun bs!391522 () Bool)

(assert (= bs!391522 d!472434))

(assert (=> bs!391522 m!1877487))

(assert (=> bs!391522 m!1877487))

(declare-fun m!1878437 () Bool)

(assert (=> bs!391522 m!1878437))

(declare-fun m!1878439 () Bool)

(assert (=> bs!391522 m!1878439))

(assert (=> b!1587205 d!472434))

(declare-fun d!472436 () Bool)

(declare-fun lt!560047 () BalanceConc!11540)

(assert (=> d!472436 (= (list!6776 lt!560047) (printList!819 thiss!17113 (list!6775 (seqFromList!1899 tokens!457))))))

(assert (=> d!472436 (= lt!560047 (printTailRec!757 thiss!17113 (seqFromList!1899 tokens!457) 0 (BalanceConc!11541 Empty!5798)))))

(assert (=> d!472436 (= (print!1235 thiss!17113 (seqFromList!1899 tokens!457)) lt!560047)))

(declare-fun bs!391523 () Bool)

(assert (= bs!391523 d!472436))

(declare-fun m!1878441 () Bool)

(assert (=> bs!391523 m!1878441))

(assert (=> bs!391523 m!1877493))

(declare-fun m!1878443 () Bool)

(assert (=> bs!391523 m!1878443))

(assert (=> bs!391523 m!1878443))

(declare-fun m!1878445 () Bool)

(assert (=> bs!391523 m!1878445))

(assert (=> bs!391523 m!1877493))

(declare-fun m!1878447 () Bool)

(assert (=> bs!391523 m!1878447))

(assert (=> b!1587215 d!472436))

(declare-fun d!472438 () Bool)

(assert (=> d!472438 (= (list!6776 lt!559525) (list!6780 (c!257222 lt!559525)))))

(declare-fun bs!391524 () Bool)

(assert (= bs!391524 d!472438))

(declare-fun m!1878449 () Bool)

(assert (=> bs!391524 m!1878449))

(assert (=> b!1587215 d!472438))

(declare-fun b!1587718 () Bool)

(declare-fun res!708247 () Bool)

(declare-fun e!1019823 () Bool)

(assert (=> b!1587718 (=> (not res!708247) (not e!1019823))))

(declare-fun lt!560048 () tuple2!16936)

(assert (=> b!1587718 (= res!708247 (= (list!6775 (_1!9870 lt!560048)) (_1!9873 (lexList!791 thiss!17113 rules!1846 (list!6776 lt!559506)))))))

(declare-fun b!1587719 () Bool)

(declare-fun e!1019824 () Bool)

(assert (=> b!1587719 (= e!1019824 (= (_2!9870 lt!560048) lt!559506))))

(declare-fun d!472440 () Bool)

(assert (=> d!472440 e!1019823))

(declare-fun res!708246 () Bool)

(assert (=> d!472440 (=> (not res!708246) (not e!1019823))))

(assert (=> d!472440 (= res!708246 e!1019824)))

(declare-fun c!257300 () Bool)

(assert (=> d!472440 (= c!257300 (> (size!14041 (_1!9870 lt!560048)) 0))))

(assert (=> d!472440 (= lt!560048 (lexTailRecV2!514 thiss!17113 rules!1846 lt!559506 (BalanceConc!11541 Empty!5798) lt!559506 (BalanceConc!11543 Empty!5799)))))

(assert (=> d!472440 (= (lex!1188 thiss!17113 rules!1846 lt!559506) lt!560048)))

(declare-fun b!1587720 () Bool)

(declare-fun e!1019825 () Bool)

(assert (=> b!1587720 (= e!1019824 e!1019825)))

(declare-fun res!708245 () Bool)

(assert (=> b!1587720 (= res!708245 (< (size!14043 (_2!9870 lt!560048)) (size!14043 lt!559506)))))

(assert (=> b!1587720 (=> (not res!708245) (not e!1019825))))

(declare-fun b!1587721 () Bool)

(assert (=> b!1587721 (= e!1019825 (not (isEmpty!10474 (_1!9870 lt!560048))))))

(declare-fun b!1587722 () Bool)

(assert (=> b!1587722 (= e!1019823 (= (list!6776 (_2!9870 lt!560048)) (_2!9873 (lexList!791 thiss!17113 rules!1846 (list!6776 lt!559506)))))))

(assert (= (and d!472440 c!257300) b!1587720))

(assert (= (and d!472440 (not c!257300)) b!1587719))

(assert (= (and b!1587720 res!708245) b!1587721))

(assert (= (and d!472440 res!708246) b!1587718))

(assert (= (and b!1587718 res!708247) b!1587722))

(declare-fun m!1878451 () Bool)

(assert (=> b!1587718 m!1878451))

(assert (=> b!1587718 m!1877491))

(assert (=> b!1587718 m!1877491))

(declare-fun m!1878453 () Bool)

(assert (=> b!1587718 m!1878453))

(declare-fun m!1878455 () Bool)

(assert (=> d!472440 m!1878455))

(declare-fun m!1878457 () Bool)

(assert (=> d!472440 m!1878457))

(declare-fun m!1878459 () Bool)

(assert (=> b!1587721 m!1878459))

(declare-fun m!1878461 () Bool)

(assert (=> b!1587720 m!1878461))

(declare-fun m!1878463 () Bool)

(assert (=> b!1587720 m!1878463))

(declare-fun m!1878465 () Bool)

(assert (=> b!1587722 m!1878465))

(assert (=> b!1587722 m!1877491))

(assert (=> b!1587722 m!1877491))

(assert (=> b!1587722 m!1878453))

(assert (=> b!1587215 d!472440))

(declare-fun d!472442 () Bool)

(declare-fun e!1019827 () Bool)

(assert (=> d!472442 e!1019827))

(declare-fun res!708249 () Bool)

(assert (=> d!472442 (=> (not res!708249) (not e!1019827))))

(declare-fun lt!560049 () List!17524)

(assert (=> d!472442 (= res!708249 (= (content!2405 lt!560049) ((_ map or) (content!2405 lt!559527) (content!2405 lt!559507))))))

(declare-fun e!1019826 () List!17524)

(assert (=> d!472442 (= lt!560049 e!1019826)))

(declare-fun c!257301 () Bool)

(assert (=> d!472442 (= c!257301 ((_ is Nil!17454) lt!559527))))

(assert (=> d!472442 (= (++!4555 lt!559527 lt!559507) lt!560049)))

(declare-fun b!1587725 () Bool)

(declare-fun res!708248 () Bool)

(assert (=> b!1587725 (=> (not res!708248) (not e!1019827))))

(assert (=> b!1587725 (= res!708248 (= (size!14044 lt!560049) (+ (size!14044 lt!559527) (size!14044 lt!559507))))))

(declare-fun b!1587726 () Bool)

(assert (=> b!1587726 (= e!1019827 (or (not (= lt!559507 Nil!17454)) (= lt!560049 lt!559527)))))

(declare-fun b!1587724 () Bool)

(assert (=> b!1587724 (= e!1019826 (Cons!17454 (h!22855 lt!559527) (++!4555 (t!144319 lt!559527) lt!559507)))))

(declare-fun b!1587723 () Bool)

(assert (=> b!1587723 (= e!1019826 lt!559507)))

(assert (= (and d!472442 c!257301) b!1587723))

(assert (= (and d!472442 (not c!257301)) b!1587724))

(assert (= (and d!472442 res!708249) b!1587725))

(assert (= (and b!1587725 res!708248) b!1587726))

(declare-fun m!1878467 () Bool)

(assert (=> d!472442 m!1878467))

(assert (=> d!472442 m!1878137))

(declare-fun m!1878469 () Bool)

(assert (=> d!472442 m!1878469))

(declare-fun m!1878471 () Bool)

(assert (=> b!1587725 m!1878471))

(assert (=> b!1587725 m!1878143))

(declare-fun m!1878473 () Bool)

(assert (=> b!1587725 m!1878473))

(declare-fun m!1878475 () Bool)

(assert (=> b!1587724 m!1878475))

(assert (=> b!1587215 d!472442))

(declare-fun d!472444 () Bool)

(assert (=> d!472444 (= (list!6776 lt!559513) (list!6780 (c!257222 lt!559513)))))

(declare-fun bs!391525 () Bool)

(assert (= bs!391525 d!472444))

(declare-fun m!1878477 () Bool)

(assert (=> bs!391525 m!1878477))

(assert (=> b!1587215 d!472444))

(declare-fun d!472446 () Bool)

(declare-fun lt!560050 () BalanceConc!11540)

(assert (=> d!472446 (= (list!6776 lt!560050) (printList!819 thiss!17113 (list!6775 lt!559522)))))

(assert (=> d!472446 (= lt!560050 (printTailRec!757 thiss!17113 lt!559522 0 (BalanceConc!11541 Empty!5798)))))

(assert (=> d!472446 (= (print!1235 thiss!17113 lt!559522) lt!560050)))

(declare-fun bs!391526 () Bool)

(assert (= bs!391526 d!472446))

(declare-fun m!1878479 () Bool)

(assert (=> bs!391526 m!1878479))

(assert (=> bs!391526 m!1877513))

(assert (=> bs!391526 m!1877513))

(declare-fun m!1878481 () Bool)

(assert (=> bs!391526 m!1878481))

(declare-fun m!1878483 () Bool)

(assert (=> bs!391526 m!1878483))

(assert (=> b!1587215 d!472446))

(declare-fun d!472448 () Bool)

(assert (=> d!472448 (= (seqFromList!1899 tokens!457) (fromListB!817 tokens!457))))

(declare-fun bs!391527 () Bool)

(assert (= bs!391527 d!472448))

(declare-fun m!1878485 () Bool)

(assert (=> bs!391527 m!1878485))

(assert (=> b!1587215 d!472448))

(declare-fun d!472450 () Bool)

(assert (=> d!472450 (= (list!6776 lt!559506) (list!6780 (c!257222 lt!559506)))))

(declare-fun bs!391528 () Bool)

(assert (= bs!391528 d!472450))

(declare-fun m!1878487 () Bool)

(assert (=> bs!391528 m!1878487))

(assert (=> b!1587215 d!472450))

(declare-fun d!472452 () Bool)

(declare-fun lt!560051 () BalanceConc!11540)

(assert (=> d!472452 (= (list!6776 lt!560051) (originalCharacters!3889 (h!22856 tokens!457)))))

(assert (=> d!472452 (= lt!560051 (dynLambda!7753 (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (value!97310 (h!22856 tokens!457))))))

(assert (=> d!472452 (= (charsOf!1724 (h!22856 tokens!457)) lt!560051)))

(declare-fun b_lambda!49961 () Bool)

(assert (=> (not b_lambda!49961) (not d!472452)))

(assert (=> d!472452 t!144339))

(declare-fun b_and!111337 () Bool)

(assert (= b_and!111321 (and (=> t!144339 result!108154) b_and!111337)))

(assert (=> d!472452 t!144341))

(declare-fun b_and!111339 () Bool)

(assert (= b_and!111323 (and (=> t!144341 result!108156) b_and!111339)))

(declare-fun m!1878489 () Bool)

(assert (=> d!472452 m!1878489))

(assert (=> d!472452 m!1878157))

(assert (=> b!1587215 d!472452))

(declare-fun d!472454 () Bool)

(assert (=> d!472454 (= (seqFromList!1899 (t!144320 tokens!457)) (fromListB!817 (t!144320 tokens!457)))))

(declare-fun bs!391529 () Bool)

(assert (= bs!391529 d!472454))

(declare-fun m!1878491 () Bool)

(assert (=> bs!391529 m!1878491))

(assert (=> b!1587215 d!472454))

(declare-fun d!472456 () Bool)

(declare-fun res!708255 () Bool)

(declare-fun e!1019832 () Bool)

(assert (=> d!472456 (=> res!708255 e!1019832)))

(assert (=> d!472456 (= res!708255 (or (not ((_ is Cons!17455) tokens!457)) (not ((_ is Cons!17455) (t!144320 tokens!457)))))))

(assert (=> d!472456 (= (tokensListTwoByTwoPredicateSeparableList!397 thiss!17113 tokens!457 rules!1846) e!1019832)))

(declare-fun b!1587731 () Bool)

(declare-fun e!1019833 () Bool)

(assert (=> b!1587731 (= e!1019832 e!1019833)))

(declare-fun res!708254 () Bool)

(assert (=> b!1587731 (=> (not res!708254) (not e!1019833))))

(assert (=> b!1587731 (= res!708254 (separableTokensPredicate!646 thiss!17113 (h!22856 tokens!457) (h!22856 (t!144320 tokens!457)) rules!1846))))

(declare-fun lt!560067 () Unit!27417)

(declare-fun Unit!27454 () Unit!27417)

(assert (=> b!1587731 (= lt!560067 Unit!27454)))

(assert (=> b!1587731 (> (size!14043 (charsOf!1724 (h!22856 (t!144320 tokens!457)))) 0)))

(declare-fun lt!560072 () Unit!27417)

(declare-fun Unit!27455 () Unit!27417)

(assert (=> b!1587731 (= lt!560072 Unit!27455)))

(assert (=> b!1587731 (rulesProduceIndividualToken!1356 thiss!17113 rules!1846 (h!22856 (t!144320 tokens!457)))))

(declare-fun lt!560069 () Unit!27417)

(declare-fun Unit!27456 () Unit!27417)

(assert (=> b!1587731 (= lt!560069 Unit!27456)))

(assert (=> b!1587731 (rulesProduceIndividualToken!1356 thiss!17113 rules!1846 (h!22856 tokens!457))))

(declare-fun lt!560066 () Unit!27417)

(declare-fun lt!560071 () Unit!27417)

(assert (=> b!1587731 (= lt!560066 lt!560071)))

(assert (=> b!1587731 (rulesProduceIndividualToken!1356 thiss!17113 rules!1846 (h!22856 (t!144320 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!527 (LexerInterface!2704 List!17526 List!17525 Token!5716) Unit!27417)

(assert (=> b!1587731 (= lt!560071 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!527 thiss!17113 rules!1846 tokens!457 (h!22856 (t!144320 tokens!457))))))

(declare-fun lt!560068 () Unit!27417)

(declare-fun lt!560070 () Unit!27417)

(assert (=> b!1587731 (= lt!560068 lt!560070)))

(assert (=> b!1587731 (rulesProduceIndividualToken!1356 thiss!17113 rules!1846 (h!22856 tokens!457))))

(assert (=> b!1587731 (= lt!560070 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!527 thiss!17113 rules!1846 tokens!457 (h!22856 tokens!457)))))

(declare-fun b!1587732 () Bool)

(assert (=> b!1587732 (= e!1019833 (tokensListTwoByTwoPredicateSeparableList!397 thiss!17113 (Cons!17455 (h!22856 (t!144320 tokens!457)) (t!144320 (t!144320 tokens!457))) rules!1846))))

(assert (= (and d!472456 (not res!708255)) b!1587731))

(assert (= (and b!1587731 res!708254) b!1587732))

(declare-fun m!1878493 () Bool)

(assert (=> b!1587731 m!1878493))

(assert (=> b!1587731 m!1877439))

(declare-fun m!1878495 () Bool)

(assert (=> b!1587731 m!1878495))

(assert (=> b!1587731 m!1877505))

(assert (=> b!1587731 m!1877439))

(assert (=> b!1587731 m!1877801))

(assert (=> b!1587731 m!1877471))

(declare-fun m!1878497 () Bool)

(assert (=> b!1587731 m!1878497))

(declare-fun m!1878499 () Bool)

(assert (=> b!1587732 m!1878499))

(assert (=> b!1587204 d!472456))

(declare-fun d!472458 () Bool)

(assert (=> d!472458 (= (isEmpty!10475 rules!1846) ((_ is Nil!17456) rules!1846))))

(assert (=> b!1587214 d!472458))

(declare-fun b!1587744 () Bool)

(declare-fun e!1019836 () Bool)

(declare-fun tp!466681 () Bool)

(declare-fun tp!466680 () Bool)

(assert (=> b!1587744 (= e!1019836 (and tp!466681 tp!466680))))

(declare-fun b!1587745 () Bool)

(declare-fun tp!466679 () Bool)

(assert (=> b!1587745 (= e!1019836 tp!466679)))

(assert (=> b!1587218 (= tp!466602 e!1019836)))

(declare-fun b!1587743 () Bool)

(declare-fun tp_is_empty!7205 () Bool)

(assert (=> b!1587743 (= e!1019836 tp_is_empty!7205)))

(declare-fun b!1587746 () Bool)

(declare-fun tp!466683 () Bool)

(declare-fun tp!466682 () Bool)

(assert (=> b!1587746 (= e!1019836 (and tp!466683 tp!466682))))

(assert (= (and b!1587218 ((_ is ElementMatch!4403) (regex!3075 (rule!4879 (h!22856 tokens!457))))) b!1587743))

(assert (= (and b!1587218 ((_ is Concat!7569) (regex!3075 (rule!4879 (h!22856 tokens!457))))) b!1587744))

(assert (= (and b!1587218 ((_ is Star!4403) (regex!3075 (rule!4879 (h!22856 tokens!457))))) b!1587745))

(assert (= (and b!1587218 ((_ is Union!4403) (regex!3075 (rule!4879 (h!22856 tokens!457))))) b!1587746))

(declare-fun b!1587751 () Bool)

(declare-fun e!1019839 () Bool)

(declare-fun tp!466686 () Bool)

(assert (=> b!1587751 (= e!1019839 (and tp_is_empty!7205 tp!466686))))

(assert (=> b!1587212 (= tp!466603 e!1019839)))

(assert (= (and b!1587212 ((_ is Cons!17454) (originalCharacters!3889 (h!22856 tokens!457)))) b!1587751))

(declare-fun b!1587765 () Bool)

(declare-fun b_free!42951 () Bool)

(declare-fun b_next!43655 () Bool)

(assert (=> b!1587765 (= b_free!42951 (not b_next!43655))))

(declare-fun tp!466697 () Bool)

(declare-fun b_and!111341 () Bool)

(assert (=> b!1587765 (= tp!466697 b_and!111341)))

(declare-fun b_free!42953 () Bool)

(declare-fun b_next!43657 () Bool)

(assert (=> b!1587765 (= b_free!42953 (not b_next!43657))))

(declare-fun t!144357 () Bool)

(declare-fun tb!89359 () Bool)

(assert (=> (and b!1587765 (= (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457)))))) t!144357) tb!89359))

(declare-fun result!108184 () Bool)

(assert (= result!108184 result!108148))

(assert (=> d!472324 t!144357))

(declare-fun t!144359 () Bool)

(declare-fun tb!89361 () Bool)

(assert (=> (and b!1587765 (= (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457))))) t!144359) tb!89361))

(declare-fun result!108186 () Bool)

(assert (= result!108186 result!108154))

(assert (=> b!1587561 t!144359))

(assert (=> d!472452 t!144359))

(declare-fun tp!466700 () Bool)

(declare-fun b_and!111343 () Bool)

(assert (=> b!1587765 (= tp!466700 (and (=> t!144357 result!108184) (=> t!144359 result!108186) b_and!111343))))

(declare-fun e!1019852 () Bool)

(assert (=> b!1587217 (= tp!466609 e!1019852)))

(declare-fun e!1019857 () Bool)

(declare-fun e!1019853 () Bool)

(declare-fun b!1587763 () Bool)

(declare-fun tp!466698 () Bool)

(assert (=> b!1587763 (= e!1019853 (and (inv!21 (value!97310 (h!22856 (t!144320 tokens!457)))) e!1019857 tp!466698))))

(declare-fun e!1019856 () Bool)

(assert (=> b!1587765 (= e!1019856 (and tp!466697 tp!466700))))

(declare-fun tp!466701 () Bool)

(declare-fun b!1587762 () Bool)

(assert (=> b!1587762 (= e!1019852 (and (inv!22867 (h!22856 (t!144320 tokens!457))) e!1019853 tp!466701))))

(declare-fun tp!466699 () Bool)

(declare-fun b!1587764 () Bool)

(assert (=> b!1587764 (= e!1019857 (and tp!466699 (inv!22864 (tag!3345 (rule!4879 (h!22856 (t!144320 tokens!457))))) (inv!22868 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))) e!1019856))))

(assert (= b!1587764 b!1587765))

(assert (= b!1587763 b!1587764))

(assert (= b!1587762 b!1587763))

(assert (= (and b!1587217 ((_ is Cons!17455) (t!144320 tokens!457))) b!1587762))

(declare-fun m!1878501 () Bool)

(assert (=> b!1587763 m!1878501))

(declare-fun m!1878503 () Bool)

(assert (=> b!1587762 m!1878503))

(declare-fun m!1878505 () Bool)

(assert (=> b!1587764 m!1878505))

(declare-fun m!1878507 () Bool)

(assert (=> b!1587764 m!1878507))

(declare-fun b!1587776 () Bool)

(declare-fun b_free!42955 () Bool)

(declare-fun b_next!43659 () Bool)

(assert (=> b!1587776 (= b_free!42955 (not b_next!43659))))

(declare-fun tp!466710 () Bool)

(declare-fun b_and!111345 () Bool)

(assert (=> b!1587776 (= tp!466710 b_and!111345)))

(declare-fun b_free!42957 () Bool)

(declare-fun b_next!43661 () Bool)

(assert (=> b!1587776 (= b_free!42957 (not b_next!43661))))

(declare-fun t!144361 () Bool)

(declare-fun tb!89363 () Bool)

(assert (=> (and b!1587776 (= (toChars!4345 (transformation!3075 (h!22857 (t!144321 rules!1846)))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457)))))) t!144361) tb!89363))

(declare-fun result!108190 () Bool)

(assert (= result!108190 result!108148))

(assert (=> d!472324 t!144361))

(declare-fun tb!89365 () Bool)

(declare-fun t!144363 () Bool)

(assert (=> (and b!1587776 (= (toChars!4345 (transformation!3075 (h!22857 (t!144321 rules!1846)))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457))))) t!144363) tb!89365))

(declare-fun result!108192 () Bool)

(assert (= result!108192 result!108154))

(assert (=> b!1587561 t!144363))

(assert (=> d!472452 t!144363))

(declare-fun b_and!111347 () Bool)

(declare-fun tp!466712 () Bool)

(assert (=> b!1587776 (= tp!466712 (and (=> t!144361 result!108190) (=> t!144363 result!108192) b_and!111347))))

(declare-fun e!1019867 () Bool)

(assert (=> b!1587776 (= e!1019867 (and tp!466710 tp!466712))))

(declare-fun b!1587775 () Bool)

(declare-fun tp!466711 () Bool)

(declare-fun e!1019866 () Bool)

(assert (=> b!1587775 (= e!1019866 (and tp!466711 (inv!22864 (tag!3345 (h!22857 (t!144321 rules!1846)))) (inv!22868 (transformation!3075 (h!22857 (t!144321 rules!1846)))) e!1019867))))

(declare-fun b!1587774 () Bool)

(declare-fun e!1019868 () Bool)

(declare-fun tp!466713 () Bool)

(assert (=> b!1587774 (= e!1019868 (and e!1019866 tp!466713))))

(assert (=> b!1587222 (= tp!466605 e!1019868)))

(assert (= b!1587775 b!1587776))

(assert (= b!1587774 b!1587775))

(assert (= (and b!1587222 ((_ is Cons!17456) (t!144321 rules!1846))) b!1587774))

(declare-fun m!1878509 () Bool)

(assert (=> b!1587775 m!1878509))

(declare-fun m!1878511 () Bool)

(assert (=> b!1587775 m!1878511))

(declare-fun b!1587778 () Bool)

(declare-fun e!1019870 () Bool)

(declare-fun tp!466716 () Bool)

(declare-fun tp!466715 () Bool)

(assert (=> b!1587778 (= e!1019870 (and tp!466716 tp!466715))))

(declare-fun b!1587779 () Bool)

(declare-fun tp!466714 () Bool)

(assert (=> b!1587779 (= e!1019870 tp!466714)))

(assert (=> b!1587221 (= tp!466607 e!1019870)))

(declare-fun b!1587777 () Bool)

(assert (=> b!1587777 (= e!1019870 tp_is_empty!7205)))

(declare-fun b!1587780 () Bool)

(declare-fun tp!466718 () Bool)

(declare-fun tp!466717 () Bool)

(assert (=> b!1587780 (= e!1019870 (and tp!466718 tp!466717))))

(assert (= (and b!1587221 ((_ is ElementMatch!4403) (regex!3075 (h!22857 rules!1846)))) b!1587777))

(assert (= (and b!1587221 ((_ is Concat!7569) (regex!3075 (h!22857 rules!1846)))) b!1587778))

(assert (= (and b!1587221 ((_ is Star!4403) (regex!3075 (h!22857 rules!1846)))) b!1587779))

(assert (= (and b!1587221 ((_ is Union!4403) (regex!3075 (h!22857 rules!1846)))) b!1587780))

(declare-fun b_lambda!49963 () Bool)

(assert (= b_lambda!49947 (or (and b!1587213 b_free!42937 (= (toChars!4345 (transformation!3075 (h!22857 rules!1846))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))))) (and b!1587209 b_free!42941 (= (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))))) (and b!1587765 b_free!42953) (and b!1587776 b_free!42957 (= (toChars!4345 (transformation!3075 (h!22857 (t!144321 rules!1846)))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))))) b_lambda!49963)))

(declare-fun b_lambda!49965 () Bool)

(assert (= b_lambda!49951 (or (and b!1587213 b_free!42937 (= (toChars!4345 (transformation!3075 (h!22857 rules!1846))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))))) (and b!1587209 b_free!42941) (and b!1587765 b_free!42953 (= (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))))) (and b!1587776 b_free!42957 (= (toChars!4345 (transformation!3075 (h!22857 (t!144321 rules!1846)))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))))) b_lambda!49965)))

(declare-fun b_lambda!49967 () Bool)

(assert (= b_lambda!49961 (or (and b!1587213 b_free!42937 (= (toChars!4345 (transformation!3075 (h!22857 rules!1846))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))))) (and b!1587209 b_free!42941) (and b!1587765 b_free!42953 (= (toChars!4345 (transformation!3075 (rule!4879 (h!22856 (t!144320 tokens!457))))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))))) (and b!1587776 b_free!42957 (= (toChars!4345 (transformation!3075 (h!22857 (t!144321 rules!1846)))) (toChars!4345 (transformation!3075 (rule!4879 (h!22856 tokens!457)))))) b_lambda!49967)))

(check-sat (not b!1587585) (not d!472314) (not b!1587404) (not b_next!43655) (not d!472320) (not b!1587775) (not b!1587716) b_and!111347 (not d!472308) (not b!1587593) (not b_lambda!49963) (not b!1587554) (not b_lambda!49967) (not b!1587409) (not b!1587500) (not b!1587391) (not b!1587705) (not b_next!43645) (not b!1587762) (not b!1587387) (not b!1587720) (not d!472440) (not b!1587606) (not b!1587731) (not b!1587514) (not d!472382) (not b!1587725) (not b!1587555) (not b_next!43661) (not b!1587373) (not b!1587493) (not d!472386) (not b!1587517) tp_is_empty!7205 (not d!472306) (not b!1587562) (not b!1587357) b_and!111345 (not b!1587764) (not b!1587561) (not b!1587598) (not b_next!43659) (not d!472384) (not d!472270) (not b!1587515) (not b!1587563) (not b!1587358) (not b!1587513) (not d!472280) (not d!472278) (not b!1587746) (not d!472324) (not d!472318) (not b!1587384) (not b!1587371) (not d!472414) (not b!1587394) (not d!472402) (not b_lambda!49965) (not b!1587587) (not bm!102941) (not b!1587715) (not b!1587406) (not d!472404) (not d!472450) (not bm!102938) (not tb!89339) (not b!1587356) (not b!1587592) (not b!1587724) (not b_next!43641) (not d!472412) (not d!472262) (not d!472390) (not b_next!43643) (not b!1587591) (not d!472326) (not b!1587722) (not b!1587414) (not d!472272) (not b!1587588) (not b!1587370) (not d!472396) (not d!472448) (not b!1587780) (not b!1587774) b_and!111301 (not b!1587253) (not d!472454) (not d!472446) b_and!111305 (not b!1587586) (not b!1587732) (not b!1587763) (not tb!89343) (not d!472274) b_and!111341 (not d!472304) (not d!472398) (not d!472452) (not b_next!43639) (not b!1587403) (not b!1587718) (not d!472436) b_and!111343 (not d!472438) (not d!472400) (not d!472316) (not b!1587751) (not d!472312) (not b!1587608) (not d!472444) (not b!1587405) (not d!472322) (not b!1587717) (not b!1587388) (not b!1587386) (not b!1587779) (not b!1587744) (not d!472394) (not b!1587745) (not b!1587704) (not b!1587721) (not d!472406) (not b!1587543) (not b!1587484) (not d!472408) (not d!472442) (not b!1587778) (not b!1587566) (not d!472416) (not b_next!43657) (not bm!102936) (not b!1587483) b_and!111339 b_and!111337 (not d!472434) (not b!1587590))
(check-sat (not b_next!43645) (not b_next!43661) b_and!111345 (not b_next!43659) (not b_next!43641) (not b_next!43643) b_and!111301 (not b_next!43655) b_and!111347 b_and!111305 b_and!111341 (not b_next!43639) b_and!111343 (not b_next!43657) b_and!111339 b_and!111337)
