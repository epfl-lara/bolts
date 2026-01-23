; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!153742 () Bool)

(assert start!153742)

(declare-fun b!1621154 () Bool)

(declare-fun b_free!43687 () Bool)

(declare-fun b_next!44391 () Bool)

(assert (=> b!1621154 (= b_free!43687 (not b_next!44391))))

(declare-fun tp!471895 () Bool)

(declare-fun b_and!114989 () Bool)

(assert (=> b!1621154 (= tp!471895 b_and!114989)))

(declare-fun b_free!43689 () Bool)

(declare-fun b_next!44393 () Bool)

(assert (=> b!1621154 (= b_free!43689 (not b_next!44393))))

(declare-fun tp!471898 () Bool)

(declare-fun b_and!114991 () Bool)

(assert (=> b!1621154 (= tp!471898 b_and!114991)))

(declare-fun b!1621150 () Bool)

(declare-fun b_free!43691 () Bool)

(declare-fun b_next!44395 () Bool)

(assert (=> b!1621150 (= b_free!43691 (not b_next!44395))))

(declare-fun tp!471894 () Bool)

(declare-fun b_and!114993 () Bool)

(assert (=> b!1621150 (= tp!471894 b_and!114993)))

(declare-fun b_free!43693 () Bool)

(declare-fun b_next!44397 () Bool)

(assert (=> b!1621150 (= b_free!43693 (not b_next!44397))))

(declare-fun tp!471891 () Bool)

(declare-fun b_and!114995 () Bool)

(assert (=> b!1621150 (= tp!471891 b_and!114995)))

(declare-fun b!1621147 () Bool)

(declare-fun e!1039762 () Bool)

(declare-datatypes ((C!9084 0))(
  ( (C!9085 (val!5138 Int)) )
))
(declare-datatypes ((Regex!4455 0))(
  ( (ElementMatch!4455 (c!264003 C!9084)) (Concat!7672 (regOne!9422 Regex!4455) (regTwo!9422 Regex!4455)) (EmptyExpr!4455) (Star!4455 (reg!4784 Regex!4455)) (EmptyLang!4455) (Union!4455 (regOne!9423 Regex!4455) (regTwo!9423 Regex!4455)) )
))
(declare-fun lt!583361 () Regex!4455)

(declare-fun validRegex!1770 (Regex!4455) Bool)

(assert (=> b!1621147 (= e!1039762 (validRegex!1770 lt!583361))))

(declare-datatypes ((List!17821 0))(
  ( (Nil!17751) (Cons!17751 (h!23152 C!9084) (t!148744 List!17821)) )
))
(declare-fun lt!583370 () List!17821)

(declare-datatypes ((List!17822 0))(
  ( (Nil!17752) (Cons!17752 (h!23153 (_ BitVec 16)) (t!148745 List!17822)) )
))
(declare-datatypes ((TokenValue!3217 0))(
  ( (FloatLiteralValue!6434 (text!22964 List!17822)) (TokenValueExt!3216 (__x!11736 Int)) (Broken!16085 (value!98766 List!17822)) (Object!3286) (End!3217) (Def!3217) (Underscore!3217) (Match!3217) (Else!3217) (Error!3217) (Case!3217) (If!3217) (Extends!3217) (Abstract!3217) (Class!3217) (Val!3217) (DelimiterValue!6434 (del!3277 List!17822)) (KeywordValue!3223 (value!98767 List!17822)) (CommentValue!6434 (value!98768 List!17822)) (WhitespaceValue!6434 (value!98769 List!17822)) (IndentationValue!3217 (value!98770 List!17822)) (String!20416) (Int32!3217) (Broken!16086 (value!98771 List!17822)) (Boolean!3218) (Unit!28678) (OperatorValue!3220 (op!3277 List!17822)) (IdentifierValue!6434 (value!98772 List!17822)) (IdentifierValue!6435 (value!98773 List!17822)) (WhitespaceValue!6435 (value!98774 List!17822)) (True!6434) (False!6434) (Broken!16087 (value!98775 List!17822)) (Broken!16088 (value!98776 List!17822)) (True!6435) (RightBrace!3217) (RightBracket!3217) (Colon!3217) (Null!3217) (Comma!3217) (LeftBracket!3217) (False!6435) (LeftBrace!3217) (ImaginaryLiteralValue!3217 (text!22965 List!17822)) (StringLiteralValue!9651 (value!98777 List!17822)) (EOFValue!3217 (value!98778 List!17822)) (IdentValue!3217 (value!98779 List!17822)) (DelimiterValue!6435 (value!98780 List!17822)) (DedentValue!3217 (value!98781 List!17822)) (NewLineValue!3217 (value!98782 List!17822)) (IntegerValue!9651 (value!98783 (_ BitVec 32)) (text!22966 List!17822)) (IntegerValue!9652 (value!98784 Int) (text!22967 List!17822)) (Times!3217) (Or!3217) (Equal!3217) (Minus!3217) (Broken!16089 (value!98785 List!17822)) (And!3217) (Div!3217) (LessEqual!3217) (Mod!3217) (Concat!7673) (Not!3217) (Plus!3217) (SpaceValue!3217 (value!98786 List!17822)) (IntegerValue!9653 (value!98787 Int) (text!22968 List!17822)) (StringLiteralValue!9652 (text!22969 List!17822)) (FloatLiteralValue!6435 (text!22970 List!17822)) (BytesLiteralValue!3217 (value!98788 List!17822)) (CommentValue!6435 (value!98789 List!17822)) (StringLiteralValue!9653 (value!98790 List!17822)) (ErrorTokenValue!3217 (msg!3278 List!17822)) )
))
(declare-datatypes ((IArray!11809 0))(
  ( (IArray!11810 (innerList!5962 List!17821)) )
))
(declare-datatypes ((Conc!5902 0))(
  ( (Node!5902 (left!14283 Conc!5902) (right!14613 Conc!5902) (csize!12034 Int) (cheight!6113 Int)) (Leaf!8686 (xs!8734 IArray!11809) (csize!12035 Int)) (Empty!5902) )
))
(declare-datatypes ((BalanceConc!11748 0))(
  ( (BalanceConc!11749 (c!264004 Conc!5902)) )
))
(declare-datatypes ((String!20417 0))(
  ( (String!20418 (value!98791 String)) )
))
(declare-datatypes ((TokenValueInjection!6094 0))(
  ( (TokenValueInjection!6095 (toValue!4554 Int) (toChars!4413 Int)) )
))
(declare-datatypes ((Rule!6054 0))(
  ( (Rule!6055 (regex!3127 Regex!4455) (tag!3405 String!20417) (isSeparator!3127 Bool) (transformation!3127 TokenValueInjection!6094)) )
))
(declare-datatypes ((Token!5820 0))(
  ( (Token!5821 (value!98792 TokenValue!3217) (rule!4953 Rule!6054) (size!14230 Int) (originalCharacters!3941 List!17821)) )
))
(declare-datatypes ((List!17823 0))(
  ( (Nil!17753) (Cons!17753 (h!23154 Token!5820) (t!148746 List!17823)) )
))
(declare-fun tokens!457 () List!17823)

(declare-fun lt!583373 () List!17821)

(declare-fun ++!4705 (List!17821 List!17821) List!17821)

(assert (=> b!1621147 (= lt!583370 (++!4705 (originalCharacters!3941 (h!23154 tokens!457)) lt!583373))))

(declare-fun e!1039763 () Bool)

(assert (=> b!1621147 e!1039763))

(declare-fun res!724064 () Bool)

(assert (=> b!1621147 (=> (not res!724064) (not e!1039763))))

(declare-datatypes ((tuple2!17302 0))(
  ( (tuple2!17303 (_1!10053 Token!5820) (_2!10053 List!17821)) )
))
(declare-fun lt!583357 () tuple2!17302)

(assert (=> b!1621147 (= res!724064 (= (_1!10053 lt!583357) (h!23154 tokens!457)))))

(declare-datatypes ((Option!3269 0))(
  ( (None!3268) (Some!3268 (v!24279 tuple2!17302)) )
))
(declare-fun lt!583372 () Option!3269)

(declare-fun get!5103 (Option!3269) tuple2!17302)

(assert (=> b!1621147 (= lt!583357 (get!5103 lt!583372))))

(declare-fun isDefined!2636 (Option!3269) Bool)

(assert (=> b!1621147 (isDefined!2636 lt!583372)))

(declare-datatypes ((List!17824 0))(
  ( (Nil!17754) (Cons!17754 (h!23155 Rule!6054) (t!148747 List!17824)) )
))
(declare-fun rules!1846 () List!17824)

(declare-datatypes ((LexerInterface!2756 0))(
  ( (LexerInterfaceExt!2753 (__x!11737 Int)) (Lexer!2754) )
))
(declare-fun thiss!17113 () LexerInterface!2756)

(declare-fun lt!583367 () List!17821)

(declare-fun maxPrefix!1320 (LexerInterface!2756 List!17824 List!17821) Option!3269)

(assert (=> b!1621147 (= lt!583372 (maxPrefix!1320 thiss!17113 rules!1846 lt!583367))))

(assert (=> b!1621147 (isDefined!2636 (maxPrefix!1320 thiss!17113 rules!1846 (originalCharacters!3941 (h!23154 tokens!457))))))

(declare-fun tp!471892 () Bool)

(declare-fun e!1039748 () Bool)

(declare-fun e!1039761 () Bool)

(declare-fun b!1621149 () Bool)

(declare-fun inv!23142 (String!20417) Bool)

(declare-fun inv!23145 (TokenValueInjection!6094) Bool)

(assert (=> b!1621149 (= e!1039761 (and tp!471892 (inv!23142 (tag!3405 (rule!4953 (h!23154 tokens!457)))) (inv!23145 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) e!1039748))))

(assert (=> b!1621150 (= e!1039748 (and tp!471894 tp!471891))))

(declare-fun b!1621151 () Bool)

(declare-fun e!1039750 () Bool)

(declare-fun e!1039754 () Bool)

(assert (=> b!1621151 (= e!1039750 e!1039754)))

(declare-fun res!724060 () Bool)

(assert (=> b!1621151 (=> res!724060 e!1039754)))

(declare-fun lt!583360 () List!17821)

(declare-fun lt!583363 () List!17821)

(assert (=> b!1621151 (= res!724060 (or (not (= lt!583360 lt!583363)) (not (= lt!583363 lt!583367)) (not (= lt!583360 lt!583367))))))

(declare-fun printList!871 (LexerInterface!2756 List!17823) List!17821)

(assert (=> b!1621151 (= lt!583363 (printList!871 thiss!17113 (Cons!17753 (h!23154 tokens!457) Nil!17753)))))

(declare-fun lt!583376 () BalanceConc!11748)

(declare-fun list!6955 (BalanceConc!11748) List!17821)

(assert (=> b!1621151 (= lt!583360 (list!6955 lt!583376))))

(declare-datatypes ((IArray!11811 0))(
  ( (IArray!11812 (innerList!5963 List!17823)) )
))
(declare-datatypes ((Conc!5903 0))(
  ( (Node!5903 (left!14284 Conc!5903) (right!14614 Conc!5903) (csize!12036 Int) (cheight!6114 Int)) (Leaf!8687 (xs!8735 IArray!11811) (csize!12037 Int)) (Empty!5903) )
))
(declare-datatypes ((BalanceConc!11750 0))(
  ( (BalanceConc!11751 (c!264005 Conc!5903)) )
))
(declare-fun lt!583362 () BalanceConc!11750)

(declare-fun printTailRec!809 (LexerInterface!2756 BalanceConc!11750 Int BalanceConc!11748) BalanceConc!11748)

(assert (=> b!1621151 (= lt!583376 (printTailRec!809 thiss!17113 lt!583362 0 (BalanceConc!11749 Empty!5902)))))

(declare-fun print!1287 (LexerInterface!2756 BalanceConc!11750) BalanceConc!11748)

(assert (=> b!1621151 (= lt!583376 (print!1287 thiss!17113 lt!583362))))

(declare-fun singletonSeq!1532 (Token!5820) BalanceConc!11750)

(assert (=> b!1621151 (= lt!583362 (singletonSeq!1532 (h!23154 tokens!457)))))

(declare-fun lt!583366 () List!17821)

(declare-fun lt!583378 () Option!3269)

(assert (=> b!1621151 (= lt!583378 (maxPrefix!1320 thiss!17113 rules!1846 lt!583366))))

(declare-fun tp!471890 () Bool)

(declare-fun b!1621152 () Bool)

(declare-fun e!1039759 () Bool)

(declare-fun inv!21 (TokenValue!3217) Bool)

(assert (=> b!1621152 (= e!1039759 (and (inv!21 (value!98792 (h!23154 tokens!457))) e!1039761 tp!471890))))

(declare-fun b!1621153 () Bool)

(declare-fun e!1039749 () Bool)

(declare-fun e!1039753 () Bool)

(assert (=> b!1621153 (= e!1039749 e!1039753)))

(declare-fun res!724061 () Bool)

(assert (=> b!1621153 (=> (not res!724061) (not e!1039753))))

(declare-fun lt!583381 () List!17821)

(assert (=> b!1621153 (= res!724061 (= lt!583366 lt!583381))))

(declare-fun lt!583380 () List!17821)

(assert (=> b!1621153 (= lt!583381 (++!4705 lt!583367 lt!583380))))

(declare-fun lt!583383 () BalanceConc!11748)

(assert (=> b!1621153 (= lt!583366 (list!6955 lt!583383))))

(declare-fun lt!583358 () BalanceConc!11748)

(assert (=> b!1621153 (= lt!583380 (list!6955 lt!583358))))

(declare-fun lt!583379 () BalanceConc!11748)

(assert (=> b!1621153 (= lt!583367 (list!6955 lt!583379))))

(declare-fun charsOf!1776 (Token!5820) BalanceConc!11748)

(assert (=> b!1621153 (= lt!583379 (charsOf!1776 (h!23154 tokens!457)))))

(declare-datatypes ((tuple2!17304 0))(
  ( (tuple2!17305 (_1!10054 BalanceConc!11750) (_2!10054 BalanceConc!11748)) )
))
(declare-fun lt!583368 () tuple2!17304)

(declare-fun lex!1240 (LexerInterface!2756 List!17824 BalanceConc!11748) tuple2!17304)

(assert (=> b!1621153 (= lt!583368 (lex!1240 thiss!17113 rules!1846 lt!583358))))

(declare-fun lt!583371 () BalanceConc!11750)

(assert (=> b!1621153 (= lt!583358 (print!1287 thiss!17113 lt!583371))))

(declare-fun seqFromList!2003 (List!17823) BalanceConc!11750)

(assert (=> b!1621153 (= lt!583371 (seqFromList!2003 (t!148746 tokens!457)))))

(assert (=> b!1621153 (= lt!583383 (print!1287 thiss!17113 (seqFromList!2003 tokens!457)))))

(declare-fun e!1039760 () Bool)

(assert (=> b!1621154 (= e!1039760 (and tp!471895 tp!471898))))

(declare-fun b!1621155 () Bool)

(declare-fun e!1039765 () Bool)

(declare-fun e!1039758 () Bool)

(assert (=> b!1621155 (= e!1039765 e!1039758)))

(declare-fun res!724054 () Bool)

(assert (=> b!1621155 (=> res!724054 e!1039758)))

(declare-fun lt!583359 () List!17821)

(declare-fun prefixMatch!390 (Regex!4455 List!17821) Bool)

(assert (=> b!1621155 (= res!724054 (prefixMatch!390 lt!583361 (++!4705 lt!583367 lt!583359)))))

(declare-fun lt!583369 () BalanceConc!11748)

(assert (=> b!1621155 (= lt!583359 (list!6955 lt!583369))))

(declare-fun b!1621156 () Bool)

(declare-fun res!724053 () Bool)

(assert (=> b!1621156 (=> res!724053 e!1039754)))

(declare-fun isEmpty!10775 (BalanceConc!11750) Bool)

(declare-fun seqFromList!2004 (List!17821) BalanceConc!11748)

(assert (=> b!1621156 (= res!724053 (isEmpty!10775 (_1!10054 (lex!1240 thiss!17113 rules!1846 (seqFromList!2004 lt!583367)))))))

(declare-fun b!1621157 () Bool)

(declare-fun e!1039751 () Bool)

(declare-fun head!3392 (List!17821) C!9084)

(assert (=> b!1621157 (= e!1039751 (= lt!583359 (Cons!17751 (head!3392 lt!583380) Nil!17751)))))

(declare-fun b!1621158 () Bool)

(declare-fun matchR!1954 (Regex!4455 List!17821) Bool)

(assert (=> b!1621158 (= e!1039763 (matchR!1954 (regex!3127 (rule!4953 (h!23154 tokens!457))) lt!583367))))

(declare-fun b!1621159 () Bool)

(assert (=> b!1621159 (= e!1039758 e!1039762)))

(declare-fun res!724062 () Bool)

(assert (=> b!1621159 (=> res!724062 e!1039762)))

(declare-datatypes ((tuple2!17306 0))(
  ( (tuple2!17307 (_1!10055 Token!5820) (_2!10055 BalanceConc!11748)) )
))
(declare-datatypes ((Option!3270 0))(
  ( (None!3269) (Some!3269 (v!24280 tuple2!17306)) )
))
(declare-fun isDefined!2637 (Option!3270) Bool)

(declare-fun maxPrefixZipperSequence!651 (LexerInterface!2756 List!17824 BalanceConc!11748) Option!3270)

(assert (=> b!1621159 (= res!724062 (not (isDefined!2637 (maxPrefixZipperSequence!651 thiss!17113 rules!1846 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))))

(assert (=> b!1621159 (= lt!583359 lt!583373)))

(declare-fun head!3393 (BalanceConc!11748) C!9084)

(assert (=> b!1621159 (= lt!583373 (Cons!17751 (head!3393 lt!583358) Nil!17751))))

(assert (=> b!1621159 e!1039751))

(declare-fun res!724059 () Bool)

(assert (=> b!1621159 (=> (not res!724059) (not e!1039751))))

(assert (=> b!1621159 (= res!724059 (= lt!583367 (originalCharacters!3941 (h!23154 tokens!457))))))

(declare-fun b!1621160 () Bool)

(declare-fun res!724067 () Bool)

(assert (=> b!1621160 (=> (not res!724067) (not e!1039763))))

(declare-fun isEmpty!10776 (List!17821) Bool)

(assert (=> b!1621160 (= res!724067 (isEmpty!10776 (_2!10053 lt!583357)))))

(declare-fun b!1621161 () Bool)

(declare-fun e!1039747 () Bool)

(declare-fun tp!471897 () Bool)

(declare-fun inv!23146 (Token!5820) Bool)

(assert (=> b!1621161 (= e!1039747 (and (inv!23146 (h!23154 tokens!457)) e!1039759 tp!471897))))

(declare-fun b!1621162 () Bool)

(declare-fun res!724068 () Bool)

(assert (=> b!1621162 (=> (not res!724068) (not e!1039751))))

(assert (=> b!1621162 (= res!724068 (= lt!583359 (Cons!17751 (head!3392 (originalCharacters!3941 (h!23154 (t!148746 tokens!457)))) Nil!17751)))))

(declare-fun b!1621163 () Bool)

(declare-fun e!1039746 () Bool)

(assert (=> b!1621163 (= e!1039746 e!1039765)))

(declare-fun res!724051 () Bool)

(assert (=> b!1621163 (=> res!724051 e!1039765)))

(declare-fun prefixMatchZipperSequence!507 (Regex!4455 BalanceConc!11748) Bool)

(declare-fun ++!4706 (BalanceConc!11748 BalanceConc!11748) BalanceConc!11748)

(assert (=> b!1621163 (= res!724051 (prefixMatchZipperSequence!507 lt!583361 (++!4706 lt!583379 lt!583369)))))

(declare-fun singletonSeq!1533 (C!9084) BalanceConc!11748)

(declare-fun apply!4500 (BalanceConc!11748 Int) C!9084)

(assert (=> b!1621163 (= lt!583369 (singletonSeq!1533 (apply!4500 (charsOf!1776 (h!23154 (t!148746 tokens!457))) 0)))))

(declare-fun rulesRegex!517 (LexerInterface!2756 List!17824) Regex!4455)

(assert (=> b!1621163 (= lt!583361 (rulesRegex!517 thiss!17113 rules!1846))))

(declare-fun b!1621148 () Bool)

(declare-fun e!1039756 () Bool)

(declare-fun e!1039757 () Bool)

(declare-fun tp!471893 () Bool)

(assert (=> b!1621148 (= e!1039756 (and e!1039757 tp!471893))))

(declare-fun res!724052 () Bool)

(assert (=> start!153742 (=> (not res!724052) (not e!1039749))))

(get-info :version)

(assert (=> start!153742 (= res!724052 ((_ is Lexer!2754) thiss!17113))))

(assert (=> start!153742 e!1039749))

(assert (=> start!153742 true))

(assert (=> start!153742 e!1039756))

(assert (=> start!153742 e!1039747))

(declare-fun b!1621164 () Bool)

(declare-fun res!724063 () Bool)

(assert (=> b!1621164 (=> res!724063 e!1039750)))

(declare-fun separableTokensPredicate!698 (LexerInterface!2756 Token!5820 Token!5820 List!17824) Bool)

(assert (=> b!1621164 (= res!724063 (not (separableTokensPredicate!698 thiss!17113 (h!23154 tokens!457) (h!23154 (t!148746 tokens!457)) rules!1846)))))

(declare-fun b!1621165 () Bool)

(declare-fun res!724056 () Bool)

(assert (=> b!1621165 (=> (not res!724056) (not e!1039749))))

(declare-fun rulesInvariant!2425 (LexerInterface!2756 List!17824) Bool)

(assert (=> b!1621165 (= res!724056 (rulesInvariant!2425 thiss!17113 rules!1846))))

(declare-fun b!1621166 () Bool)

(assert (=> b!1621166 (= e!1039754 e!1039746)))

(declare-fun res!724065 () Bool)

(assert (=> b!1621166 (=> res!724065 e!1039746)))

(assert (=> b!1621166 (= res!724065 (not (isDefined!2636 lt!583378)))))

(declare-datatypes ((Unit!28679 0))(
  ( (Unit!28680) )
))
(declare-fun lt!583377 () Unit!28679)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!330 (LexerInterface!2756 List!17824 List!17821 List!17821) Unit!28679)

(assert (=> b!1621166 (= lt!583377 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!330 thiss!17113 rules!1846 lt!583367 lt!583380))))

(declare-fun b!1621167 () Bool)

(declare-fun res!724069 () Bool)

(assert (=> b!1621167 (=> res!724069 e!1039754)))

(declare-fun rulesProduceIndividualToken!1408 (LexerInterface!2756 List!17824 Token!5820) Bool)

(assert (=> b!1621167 (= res!724069 (not (rulesProduceIndividualToken!1408 thiss!17113 rules!1846 (h!23154 tokens!457))))))

(declare-fun b!1621168 () Bool)

(declare-fun res!724055 () Bool)

(assert (=> b!1621168 (=> (not res!724055) (not e!1039749))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!449 (LexerInterface!2756 List!17823 List!17824) Bool)

(assert (=> b!1621168 (= res!724055 (tokensListTwoByTwoPredicateSeparableList!449 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1621169 () Bool)

(declare-fun res!724049 () Bool)

(assert (=> b!1621169 (=> (not res!724049) (not e!1039749))))

(assert (=> b!1621169 (= res!724049 (and (not ((_ is Nil!17753) tokens!457)) (not ((_ is Nil!17753) (t!148746 tokens!457)))))))

(declare-fun b!1621170 () Bool)

(declare-fun res!724057 () Bool)

(assert (=> b!1621170 (=> (not res!724057) (not e!1039749))))

(declare-fun isEmpty!10777 (List!17824) Bool)

(assert (=> b!1621170 (= res!724057 (not (isEmpty!10777 rules!1846)))))

(declare-fun b!1621171 () Bool)

(declare-fun e!1039752 () Bool)

(assert (=> b!1621171 (= e!1039753 (not e!1039752))))

(declare-fun res!724058 () Bool)

(assert (=> b!1621171 (=> res!724058 e!1039752)))

(declare-fun lt!583364 () List!17823)

(assert (=> b!1621171 (= res!724058 (not (= lt!583364 (t!148746 tokens!457))))))

(declare-fun list!6956 (BalanceConc!11750) List!17823)

(assert (=> b!1621171 (= lt!583364 (list!6956 (_1!10054 lt!583368)))))

(declare-fun lt!583374 () Unit!28679)

(declare-fun theoremInvertabilityWhenTokenListSeparable!201 (LexerInterface!2756 List!17824 List!17823) Unit!28679)

(assert (=> b!1621171 (= lt!583374 (theoremInvertabilityWhenTokenListSeparable!201 thiss!17113 rules!1846 (t!148746 tokens!457)))))

(declare-fun isPrefix!1387 (List!17821 List!17821) Bool)

(assert (=> b!1621171 (isPrefix!1387 lt!583367 lt!583381)))

(declare-fun lt!583382 () Unit!28679)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!912 (List!17821 List!17821) Unit!28679)

(assert (=> b!1621171 (= lt!583382 (lemmaConcatTwoListThenFirstIsPrefix!912 lt!583367 lt!583380))))

(declare-fun b!1621172 () Bool)

(declare-fun tp!471896 () Bool)

(assert (=> b!1621172 (= e!1039757 (and tp!471896 (inv!23142 (tag!3405 (h!23155 rules!1846))) (inv!23145 (transformation!3127 (h!23155 rules!1846))) e!1039760))))

(declare-fun b!1621173 () Bool)

(assert (=> b!1621173 (= e!1039752 e!1039750)))

(declare-fun res!724050 () Bool)

(assert (=> b!1621173 (=> res!724050 e!1039750)))

(declare-fun lt!583365 () List!17823)

(declare-fun lt!583384 () List!17823)

(assert (=> b!1621173 (= res!724050 (or (not (= lt!583364 lt!583365)) (not (= lt!583365 lt!583384))))))

(assert (=> b!1621173 (= lt!583365 (list!6956 lt!583371))))

(assert (=> b!1621173 (= lt!583364 lt!583384)))

(declare-fun prepend!645 (BalanceConc!11750 Token!5820) BalanceConc!11750)

(assert (=> b!1621173 (= lt!583384 (list!6956 (prepend!645 (seqFromList!2003 (t!148746 (t!148746 tokens!457))) (h!23154 (t!148746 tokens!457)))))))

(declare-fun lt!583375 () Unit!28679)

(declare-fun seqFromListBHdTlConstructive!204 (Token!5820 List!17823 BalanceConc!11750) Unit!28679)

(assert (=> b!1621173 (= lt!583375 (seqFromListBHdTlConstructive!204 (h!23154 (t!148746 tokens!457)) (t!148746 (t!148746 tokens!457)) (_1!10054 lt!583368)))))

(declare-fun b!1621174 () Bool)

(declare-fun res!724066 () Bool)

(assert (=> b!1621174 (=> (not res!724066) (not e!1039749))))

(declare-fun rulesProduceEachTokenIndividuallyList!958 (LexerInterface!2756 List!17824 List!17823) Bool)

(assert (=> b!1621174 (= res!724066 (rulesProduceEachTokenIndividuallyList!958 thiss!17113 rules!1846 tokens!457))))

(assert (= (and start!153742 res!724052) b!1621170))

(assert (= (and b!1621170 res!724057) b!1621165))

(assert (= (and b!1621165 res!724056) b!1621174))

(assert (= (and b!1621174 res!724066) b!1621168))

(assert (= (and b!1621168 res!724055) b!1621169))

(assert (= (and b!1621169 res!724049) b!1621153))

(assert (= (and b!1621153 res!724061) b!1621171))

(assert (= (and b!1621171 (not res!724058)) b!1621173))

(assert (= (and b!1621173 (not res!724050)) b!1621164))

(assert (= (and b!1621164 (not res!724063)) b!1621151))

(assert (= (and b!1621151 (not res!724060)) b!1621167))

(assert (= (and b!1621167 (not res!724069)) b!1621156))

(assert (= (and b!1621156 (not res!724053)) b!1621166))

(assert (= (and b!1621166 (not res!724065)) b!1621163))

(assert (= (and b!1621163 (not res!724051)) b!1621155))

(assert (= (and b!1621155 (not res!724054)) b!1621159))

(assert (= (and b!1621159 res!724059) b!1621162))

(assert (= (and b!1621162 res!724068) b!1621157))

(assert (= (and b!1621159 (not res!724062)) b!1621147))

(assert (= (and b!1621147 res!724064) b!1621160))

(assert (= (and b!1621160 res!724067) b!1621158))

(assert (= b!1621172 b!1621154))

(assert (= b!1621148 b!1621172))

(assert (= (and start!153742 ((_ is Cons!17754) rules!1846)) b!1621148))

(assert (= b!1621149 b!1621150))

(assert (= b!1621152 b!1621149))

(assert (= b!1621161 b!1621152))

(assert (= (and start!153742 ((_ is Cons!17753) tokens!457)) b!1621161))

(declare-fun m!1946017 () Bool)

(assert (=> b!1621172 m!1946017))

(declare-fun m!1946019 () Bool)

(assert (=> b!1621172 m!1946019))

(declare-fun m!1946021 () Bool)

(assert (=> b!1621161 m!1946021))

(declare-fun m!1946023 () Bool)

(assert (=> b!1621164 m!1946023))

(declare-fun m!1946025 () Bool)

(assert (=> b!1621157 m!1946025))

(declare-fun m!1946027 () Bool)

(assert (=> b!1621149 m!1946027))

(declare-fun m!1946029 () Bool)

(assert (=> b!1621149 m!1946029))

(declare-fun m!1946031 () Bool)

(assert (=> b!1621174 m!1946031))

(declare-fun m!1946033 () Bool)

(assert (=> b!1621162 m!1946033))

(declare-fun m!1946035 () Bool)

(assert (=> b!1621159 m!1946035))

(assert (=> b!1621159 m!1946035))

(declare-fun m!1946037 () Bool)

(assert (=> b!1621159 m!1946037))

(assert (=> b!1621159 m!1946037))

(declare-fun m!1946039 () Bool)

(assert (=> b!1621159 m!1946039))

(declare-fun m!1946041 () Bool)

(assert (=> b!1621159 m!1946041))

(declare-fun m!1946043 () Bool)

(assert (=> b!1621167 m!1946043))

(declare-fun m!1946045 () Bool)

(assert (=> b!1621163 m!1946045))

(declare-fun m!1946047 () Bool)

(assert (=> b!1621163 m!1946047))

(declare-fun m!1946049 () Bool)

(assert (=> b!1621163 m!1946049))

(declare-fun m!1946051 () Bool)

(assert (=> b!1621163 m!1946051))

(declare-fun m!1946053 () Bool)

(assert (=> b!1621163 m!1946053))

(assert (=> b!1621163 m!1946051))

(declare-fun m!1946055 () Bool)

(assert (=> b!1621163 m!1946055))

(assert (=> b!1621163 m!1946047))

(assert (=> b!1621163 m!1946055))

(declare-fun m!1946057 () Bool)

(assert (=> b!1621170 m!1946057))

(declare-fun m!1946059 () Bool)

(assert (=> b!1621166 m!1946059))

(declare-fun m!1946061 () Bool)

(assert (=> b!1621166 m!1946061))

(declare-fun m!1946063 () Bool)

(assert (=> b!1621155 m!1946063))

(assert (=> b!1621155 m!1946063))

(declare-fun m!1946065 () Bool)

(assert (=> b!1621155 m!1946065))

(declare-fun m!1946067 () Bool)

(assert (=> b!1621155 m!1946067))

(declare-fun m!1946069 () Bool)

(assert (=> b!1621168 m!1946069))

(declare-fun m!1946071 () Bool)

(assert (=> b!1621152 m!1946071))

(declare-fun m!1946073 () Bool)

(assert (=> b!1621160 m!1946073))

(declare-fun m!1946075 () Bool)

(assert (=> b!1621156 m!1946075))

(assert (=> b!1621156 m!1946075))

(declare-fun m!1946077 () Bool)

(assert (=> b!1621156 m!1946077))

(declare-fun m!1946079 () Bool)

(assert (=> b!1621156 m!1946079))

(declare-fun m!1946081 () Bool)

(assert (=> b!1621165 m!1946081))

(declare-fun m!1946083 () Bool)

(assert (=> b!1621171 m!1946083))

(declare-fun m!1946085 () Bool)

(assert (=> b!1621171 m!1946085))

(declare-fun m!1946087 () Bool)

(assert (=> b!1621171 m!1946087))

(declare-fun m!1946089 () Bool)

(assert (=> b!1621171 m!1946089))

(declare-fun m!1946091 () Bool)

(assert (=> b!1621153 m!1946091))

(declare-fun m!1946093 () Bool)

(assert (=> b!1621153 m!1946093))

(declare-fun m!1946095 () Bool)

(assert (=> b!1621153 m!1946095))

(declare-fun m!1946097 () Bool)

(assert (=> b!1621153 m!1946097))

(declare-fun m!1946099 () Bool)

(assert (=> b!1621153 m!1946099))

(declare-fun m!1946101 () Bool)

(assert (=> b!1621153 m!1946101))

(declare-fun m!1946103 () Bool)

(assert (=> b!1621153 m!1946103))

(declare-fun m!1946105 () Bool)

(assert (=> b!1621153 m!1946105))

(declare-fun m!1946107 () Bool)

(assert (=> b!1621153 m!1946107))

(assert (=> b!1621153 m!1946101))

(declare-fun m!1946109 () Bool)

(assert (=> b!1621153 m!1946109))

(declare-fun m!1946111 () Bool)

(assert (=> b!1621158 m!1946111))

(declare-fun m!1946113 () Bool)

(assert (=> b!1621147 m!1946113))

(declare-fun m!1946115 () Bool)

(assert (=> b!1621147 m!1946115))

(declare-fun m!1946117 () Bool)

(assert (=> b!1621147 m!1946117))

(declare-fun m!1946119 () Bool)

(assert (=> b!1621147 m!1946119))

(declare-fun m!1946121 () Bool)

(assert (=> b!1621147 m!1946121))

(declare-fun m!1946123 () Bool)

(assert (=> b!1621147 m!1946123))

(declare-fun m!1946125 () Bool)

(assert (=> b!1621147 m!1946125))

(assert (=> b!1621147 m!1946115))

(declare-fun m!1946127 () Bool)

(assert (=> b!1621173 m!1946127))

(declare-fun m!1946129 () Bool)

(assert (=> b!1621173 m!1946129))

(declare-fun m!1946131 () Bool)

(assert (=> b!1621173 m!1946131))

(declare-fun m!1946133 () Bool)

(assert (=> b!1621173 m!1946133))

(declare-fun m!1946135 () Bool)

(assert (=> b!1621173 m!1946135))

(assert (=> b!1621173 m!1946131))

(assert (=> b!1621173 m!1946133))

(declare-fun m!1946137 () Bool)

(assert (=> b!1621151 m!1946137))

(declare-fun m!1946139 () Bool)

(assert (=> b!1621151 m!1946139))

(declare-fun m!1946141 () Bool)

(assert (=> b!1621151 m!1946141))

(declare-fun m!1946143 () Bool)

(assert (=> b!1621151 m!1946143))

(declare-fun m!1946145 () Bool)

(assert (=> b!1621151 m!1946145))

(declare-fun m!1946147 () Bool)

(assert (=> b!1621151 m!1946147))

(check-sat (not b!1621155) (not b!1621151) (not b!1621172) (not b_next!44395) (not b!1621167) (not b!1621171) b_and!114993 (not b_next!44397) (not b!1621174) (not b!1621160) (not b!1621157) (not b!1621161) (not b!1621147) (not b!1621163) b_and!114995 (not b!1621148) (not b!1621164) (not b!1621152) (not b!1621158) (not b!1621153) b_and!114989 (not b!1621162) (not b!1621173) (not b!1621166) (not b_next!44391) (not b_next!44393) (not b!1621156) (not b!1621170) (not b!1621168) (not b!1621165) b_and!114991 (not b!1621149) (not b!1621159))
(check-sat b_and!114995 (not b_next!44395) b_and!114989 b_and!114993 (not b_next!44397) b_and!114991 (not b_next!44391) (not b_next!44393))
(get-model)

(declare-fun d!488180 () Bool)

(assert (=> d!488180 (= (isEmpty!10776 (_2!10053 lt!583357)) ((_ is Nil!17751) (_2!10053 lt!583357)))))

(assert (=> b!1621160 d!488180))

(declare-fun d!488182 () Bool)

(declare-fun res!724098 () Bool)

(declare-fun e!1039775 () Bool)

(assert (=> d!488182 (=> (not res!724098) (not e!1039775))))

(assert (=> d!488182 (= res!724098 (not (isEmpty!10776 (originalCharacters!3941 (h!23154 tokens!457)))))))

(assert (=> d!488182 (= (inv!23146 (h!23154 tokens!457)) e!1039775)))

(declare-fun b!1621194 () Bool)

(declare-fun res!724099 () Bool)

(assert (=> b!1621194 (=> (not res!724099) (not e!1039775))))

(declare-fun dynLambda!7921 (Int TokenValue!3217) BalanceConc!11748)

(assert (=> b!1621194 (= res!724099 (= (originalCharacters!3941 (h!23154 tokens!457)) (list!6955 (dynLambda!7921 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (value!98792 (h!23154 tokens!457))))))))

(declare-fun b!1621195 () Bool)

(declare-fun size!14233 (List!17821) Int)

(assert (=> b!1621195 (= e!1039775 (= (size!14230 (h!23154 tokens!457)) (size!14233 (originalCharacters!3941 (h!23154 tokens!457)))))))

(assert (= (and d!488182 res!724098) b!1621194))

(assert (= (and b!1621194 res!724099) b!1621195))

(declare-fun b_lambda!51105 () Bool)

(assert (=> (not b_lambda!51105) (not b!1621194)))

(declare-fun tb!93175 () Bool)

(declare-fun t!148750 () Bool)

(assert (=> (and b!1621154 (= (toChars!4413 (transformation!3127 (h!23155 rules!1846))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457))))) t!148750) tb!93175))

(declare-fun b!1621200 () Bool)

(declare-fun e!1039778 () Bool)

(declare-fun tp!471901 () Bool)

(declare-fun inv!23149 (Conc!5902) Bool)

(assert (=> b!1621200 (= e!1039778 (and (inv!23149 (c!264004 (dynLambda!7921 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (value!98792 (h!23154 tokens!457))))) tp!471901))))

(declare-fun result!112314 () Bool)

(declare-fun inv!23150 (BalanceConc!11748) Bool)

(assert (=> tb!93175 (= result!112314 (and (inv!23150 (dynLambda!7921 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (value!98792 (h!23154 tokens!457)))) e!1039778))))

(assert (= tb!93175 b!1621200))

(declare-fun m!1946197 () Bool)

(assert (=> b!1621200 m!1946197))

(declare-fun m!1946199 () Bool)

(assert (=> tb!93175 m!1946199))

(assert (=> b!1621194 t!148750))

(declare-fun b_and!114997 () Bool)

(assert (= b_and!114991 (and (=> t!148750 result!112314) b_and!114997)))

(declare-fun t!148752 () Bool)

(declare-fun tb!93177 () Bool)

(assert (=> (and b!1621150 (= (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457))))) t!148752) tb!93177))

(declare-fun result!112318 () Bool)

(assert (= result!112318 result!112314))

(assert (=> b!1621194 t!148752))

(declare-fun b_and!114999 () Bool)

(assert (= b_and!114995 (and (=> t!148752 result!112318) b_and!114999)))

(declare-fun m!1946201 () Bool)

(assert (=> d!488182 m!1946201))

(declare-fun m!1946203 () Bool)

(assert (=> b!1621194 m!1946203))

(assert (=> b!1621194 m!1946203))

(declare-fun m!1946205 () Bool)

(assert (=> b!1621194 m!1946205))

(declare-fun m!1946207 () Bool)

(assert (=> b!1621195 m!1946207))

(assert (=> b!1621161 d!488182))

(declare-fun d!488186 () Bool)

(declare-fun e!1039787 () Bool)

(assert (=> d!488186 e!1039787))

(declare-fun res!724105 () Bool)

(assert (=> d!488186 (=> (not res!724105) (not e!1039787))))

(declare-fun lt!583432 () BalanceConc!11748)

(assert (=> d!488186 (= res!724105 (= (list!6955 lt!583432) (Cons!17751 (apply!4500 (charsOf!1776 (h!23154 (t!148746 tokens!457))) 0) Nil!17751)))))

(declare-fun singleton!652 (C!9084) BalanceConc!11748)

(assert (=> d!488186 (= lt!583432 (singleton!652 (apply!4500 (charsOf!1776 (h!23154 (t!148746 tokens!457))) 0)))))

(assert (=> d!488186 (= (singletonSeq!1533 (apply!4500 (charsOf!1776 (h!23154 (t!148746 tokens!457))) 0)) lt!583432)))

(declare-fun b!1621211 () Bool)

(declare-fun isBalanced!1772 (Conc!5902) Bool)

(assert (=> b!1621211 (= e!1039787 (isBalanced!1772 (c!264004 lt!583432)))))

(assert (= (and d!488186 res!724105) b!1621211))

(declare-fun m!1946231 () Bool)

(assert (=> d!488186 m!1946231))

(assert (=> d!488186 m!1946047))

(declare-fun m!1946233 () Bool)

(assert (=> d!488186 m!1946233))

(declare-fun m!1946235 () Bool)

(assert (=> b!1621211 m!1946235))

(assert (=> b!1621163 d!488186))

(declare-fun d!488194 () Bool)

(declare-fun lt!583435 () C!9084)

(declare-fun apply!4504 (List!17821 Int) C!9084)

(assert (=> d!488194 (= lt!583435 (apply!4504 (list!6955 (charsOf!1776 (h!23154 (t!148746 tokens!457)))) 0))))

(declare-fun apply!4505 (Conc!5902 Int) C!9084)

(assert (=> d!488194 (= lt!583435 (apply!4505 (c!264004 (charsOf!1776 (h!23154 (t!148746 tokens!457)))) 0))))

(declare-fun e!1039790 () Bool)

(assert (=> d!488194 e!1039790))

(declare-fun res!724108 () Bool)

(assert (=> d!488194 (=> (not res!724108) (not e!1039790))))

(assert (=> d!488194 (= res!724108 (<= 0 0))))

(assert (=> d!488194 (= (apply!4500 (charsOf!1776 (h!23154 (t!148746 tokens!457))) 0) lt!583435)))

(declare-fun b!1621214 () Bool)

(declare-fun size!14234 (BalanceConc!11748) Int)

(assert (=> b!1621214 (= e!1039790 (< 0 (size!14234 (charsOf!1776 (h!23154 (t!148746 tokens!457))))))))

(assert (= (and d!488194 res!724108) b!1621214))

(assert (=> d!488194 m!1946055))

(declare-fun m!1946237 () Bool)

(assert (=> d!488194 m!1946237))

(assert (=> d!488194 m!1946237))

(declare-fun m!1946239 () Bool)

(assert (=> d!488194 m!1946239))

(declare-fun m!1946241 () Bool)

(assert (=> d!488194 m!1946241))

(assert (=> b!1621214 m!1946055))

(declare-fun m!1946243 () Bool)

(assert (=> b!1621214 m!1946243))

(assert (=> b!1621163 d!488194))

(declare-fun lt!583479 () Bool)

(declare-fun d!488196 () Bool)

(assert (=> d!488196 (= lt!583479 (prefixMatch!390 lt!583361 (list!6955 (++!4706 lt!583379 lt!583369))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!17827 0))(
  ( (Nil!17757) (Cons!17757 (h!23158 Regex!4455) (t!148792 List!17827)) )
))
(declare-datatypes ((Context!1718 0))(
  ( (Context!1719 (exprs!1359 List!17827)) )
))
(declare-fun prefixMatchZipperSequence!509 ((InoxSet Context!1718) BalanceConc!11748 Int) Bool)

(declare-fun focus!165 (Regex!4455) (InoxSet Context!1718))

(assert (=> d!488196 (= lt!583479 (prefixMatchZipperSequence!509 (focus!165 lt!583361) (++!4706 lt!583379 lt!583369) 0))))

(declare-fun lt!583485 () Unit!28679)

(declare-fun lt!583481 () Unit!28679)

(assert (=> d!488196 (= lt!583485 lt!583481)))

(declare-fun lt!583488 () List!17821)

(declare-fun lt!583487 () (InoxSet Context!1718))

(declare-fun prefixMatchZipper!144 ((InoxSet Context!1718) List!17821) Bool)

(assert (=> d!488196 (= (prefixMatch!390 lt!583361 lt!583488) (prefixMatchZipper!144 lt!583487 lt!583488))))

(declare-datatypes ((List!17828 0))(
  ( (Nil!17758) (Cons!17758 (h!23159 Context!1718) (t!148793 List!17828)) )
))
(declare-fun lt!583486 () List!17828)

(declare-fun prefixMatchZipperRegexEquiv!144 ((InoxSet Context!1718) List!17828 Regex!4455 List!17821) Unit!28679)

(assert (=> d!488196 (= lt!583481 (prefixMatchZipperRegexEquiv!144 lt!583487 lt!583486 lt!583361 lt!583488))))

(assert (=> d!488196 (= lt!583488 (list!6955 (++!4706 lt!583379 lt!583369)))))

(declare-fun toList!905 ((InoxSet Context!1718)) List!17828)

(assert (=> d!488196 (= lt!583486 (toList!905 (focus!165 lt!583361)))))

(assert (=> d!488196 (= lt!583487 (focus!165 lt!583361))))

(declare-fun lt!583483 () Unit!28679)

(declare-fun lt!583484 () Unit!28679)

(assert (=> d!488196 (= lt!583483 lt!583484)))

(declare-fun lt!583480 () Int)

(declare-fun lt!583482 () (InoxSet Context!1718))

(declare-fun dropList!590 (BalanceConc!11748 Int) List!17821)

(assert (=> d!488196 (= (prefixMatchZipper!144 lt!583482 (dropList!590 (++!4706 lt!583379 lt!583369) lt!583480)) (prefixMatchZipperSequence!509 lt!583482 (++!4706 lt!583379 lt!583369) lt!583480))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!144 ((InoxSet Context!1718) BalanceConc!11748 Int) Unit!28679)

(assert (=> d!488196 (= lt!583484 (lemmaprefixMatchZipperSequenceEquivalent!144 lt!583482 (++!4706 lt!583379 lt!583369) lt!583480))))

(assert (=> d!488196 (= lt!583480 0)))

(assert (=> d!488196 (= lt!583482 (focus!165 lt!583361))))

(assert (=> d!488196 (validRegex!1770 lt!583361)))

(assert (=> d!488196 (= (prefixMatchZipperSequence!507 lt!583361 (++!4706 lt!583379 lt!583369)) lt!583479)))

(declare-fun bs!394517 () Bool)

(assert (= bs!394517 d!488196))

(declare-fun m!1946335 () Bool)

(assert (=> bs!394517 m!1946335))

(declare-fun m!1946337 () Bool)

(assert (=> bs!394517 m!1946337))

(assert (=> bs!394517 m!1946113))

(declare-fun m!1946339 () Bool)

(assert (=> bs!394517 m!1946339))

(assert (=> bs!394517 m!1946051))

(declare-fun m!1946341 () Bool)

(assert (=> bs!394517 m!1946341))

(assert (=> bs!394517 m!1946335))

(assert (=> bs!394517 m!1946051))

(declare-fun m!1946343 () Bool)

(assert (=> bs!394517 m!1946343))

(declare-fun m!1946345 () Bool)

(assert (=> bs!394517 m!1946345))

(declare-fun m!1946347 () Bool)

(assert (=> bs!394517 m!1946347))

(assert (=> bs!394517 m!1946051))

(assert (=> bs!394517 m!1946345))

(assert (=> bs!394517 m!1946051))

(declare-fun m!1946349 () Bool)

(assert (=> bs!394517 m!1946349))

(assert (=> bs!394517 m!1946051))

(declare-fun m!1946351 () Bool)

(assert (=> bs!394517 m!1946351))

(assert (=> bs!394517 m!1946335))

(declare-fun m!1946353 () Bool)

(assert (=> bs!394517 m!1946353))

(declare-fun m!1946355 () Bool)

(assert (=> bs!394517 m!1946355))

(assert (=> bs!394517 m!1946349))

(declare-fun m!1946357 () Bool)

(assert (=> bs!394517 m!1946357))

(assert (=> b!1621163 d!488196))

(declare-fun b!1621301 () Bool)

(declare-fun lt!583491 () BalanceConc!11748)

(declare-fun e!1039832 () Bool)

(assert (=> b!1621301 (= e!1039832 (= (list!6955 lt!583491) (++!4705 (list!6955 lt!583379) (list!6955 lt!583369))))))

(declare-fun b!1621300 () Bool)

(declare-fun res!724169 () Bool)

(assert (=> b!1621300 (=> (not res!724169) (not e!1039832))))

(declare-fun height!897 (Conc!5902) Int)

(declare-fun ++!4708 (Conc!5902 Conc!5902) Conc!5902)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1621300 (= res!724169 (>= (height!897 (++!4708 (c!264004 lt!583379) (c!264004 lt!583369))) (max!0 (height!897 (c!264004 lt!583379)) (height!897 (c!264004 lt!583369)))))))

(declare-fun d!488214 () Bool)

(assert (=> d!488214 e!1039832))

(declare-fun res!724167 () Bool)

(assert (=> d!488214 (=> (not res!724167) (not e!1039832))))

(declare-fun appendAssocInst!427 (Conc!5902 Conc!5902) Bool)

(assert (=> d!488214 (= res!724167 (appendAssocInst!427 (c!264004 lt!583379) (c!264004 lt!583369)))))

(assert (=> d!488214 (= lt!583491 (BalanceConc!11749 (++!4708 (c!264004 lt!583379) (c!264004 lt!583369))))))

(assert (=> d!488214 (= (++!4706 lt!583379 lt!583369) lt!583491)))

(declare-fun b!1621298 () Bool)

(declare-fun res!724168 () Bool)

(assert (=> b!1621298 (=> (not res!724168) (not e!1039832))))

(assert (=> b!1621298 (= res!724168 (isBalanced!1772 (++!4708 (c!264004 lt!583379) (c!264004 lt!583369))))))

(declare-fun b!1621299 () Bool)

(declare-fun res!724166 () Bool)

(assert (=> b!1621299 (=> (not res!724166) (not e!1039832))))

(assert (=> b!1621299 (= res!724166 (<= (height!897 (++!4708 (c!264004 lt!583379) (c!264004 lt!583369))) (+ (max!0 (height!897 (c!264004 lt!583379)) (height!897 (c!264004 lt!583369))) 1)))))

(assert (= (and d!488214 res!724167) b!1621298))

(assert (= (and b!1621298 res!724168) b!1621299))

(assert (= (and b!1621299 res!724166) b!1621300))

(assert (= (and b!1621300 res!724169) b!1621301))

(declare-fun m!1946359 () Bool)

(assert (=> b!1621299 m!1946359))

(declare-fun m!1946361 () Bool)

(assert (=> b!1621299 m!1946361))

(declare-fun m!1946363 () Bool)

(assert (=> b!1621299 m!1946363))

(declare-fun m!1946365 () Bool)

(assert (=> b!1621299 m!1946365))

(assert (=> b!1621299 m!1946363))

(assert (=> b!1621299 m!1946361))

(assert (=> b!1621299 m!1946359))

(declare-fun m!1946367 () Bool)

(assert (=> b!1621299 m!1946367))

(declare-fun m!1946369 () Bool)

(assert (=> b!1621301 m!1946369))

(assert (=> b!1621301 m!1946093))

(assert (=> b!1621301 m!1946067))

(assert (=> b!1621301 m!1946093))

(assert (=> b!1621301 m!1946067))

(declare-fun m!1946371 () Bool)

(assert (=> b!1621301 m!1946371))

(assert (=> b!1621300 m!1946359))

(assert (=> b!1621300 m!1946361))

(assert (=> b!1621300 m!1946363))

(assert (=> b!1621300 m!1946365))

(assert (=> b!1621300 m!1946363))

(assert (=> b!1621300 m!1946361))

(assert (=> b!1621300 m!1946359))

(assert (=> b!1621300 m!1946367))

(assert (=> b!1621298 m!1946359))

(assert (=> b!1621298 m!1946359))

(declare-fun m!1946373 () Bool)

(assert (=> b!1621298 m!1946373))

(declare-fun m!1946375 () Bool)

(assert (=> d!488214 m!1946375))

(assert (=> d!488214 m!1946359))

(assert (=> b!1621163 d!488214))

(declare-fun d!488216 () Bool)

(declare-fun lt!583494 () Unit!28679)

(declare-fun lemma!231 (List!17824 LexerInterface!2756 List!17824) Unit!28679)

(assert (=> d!488216 (= lt!583494 (lemma!231 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67204 () Int)

(declare-fun generalisedUnion!239 (List!17827) Regex!4455)

(declare-fun map!3674 (List!17824 Int) List!17827)

(assert (=> d!488216 (= (rulesRegex!517 thiss!17113 rules!1846) (generalisedUnion!239 (map!3674 rules!1846 lambda!67204)))))

(declare-fun bs!394518 () Bool)

(assert (= bs!394518 d!488216))

(declare-fun m!1946377 () Bool)

(assert (=> bs!394518 m!1946377))

(declare-fun m!1946379 () Bool)

(assert (=> bs!394518 m!1946379))

(assert (=> bs!394518 m!1946379))

(declare-fun m!1946381 () Bool)

(assert (=> bs!394518 m!1946381))

(assert (=> b!1621163 d!488216))

(declare-fun d!488218 () Bool)

(declare-fun lt!583497 () BalanceConc!11748)

(assert (=> d!488218 (= (list!6955 lt!583497) (originalCharacters!3941 (h!23154 (t!148746 tokens!457))))))

(assert (=> d!488218 (= lt!583497 (dynLambda!7921 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))) (value!98792 (h!23154 (t!148746 tokens!457)))))))

(assert (=> d!488218 (= (charsOf!1776 (h!23154 (t!148746 tokens!457))) lt!583497)))

(declare-fun b_lambda!51109 () Bool)

(assert (=> (not b_lambda!51109) (not d!488218)))

(declare-fun tb!93183 () Bool)

(declare-fun t!148759 () Bool)

(assert (=> (and b!1621154 (= (toChars!4413 (transformation!3127 (h!23155 rules!1846))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457)))))) t!148759) tb!93183))

(declare-fun b!1621302 () Bool)

(declare-fun e!1039833 () Bool)

(declare-fun tp!471905 () Bool)

(assert (=> b!1621302 (= e!1039833 (and (inv!23149 (c!264004 (dynLambda!7921 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))) (value!98792 (h!23154 (t!148746 tokens!457)))))) tp!471905))))

(declare-fun result!112326 () Bool)

(assert (=> tb!93183 (= result!112326 (and (inv!23150 (dynLambda!7921 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))) (value!98792 (h!23154 (t!148746 tokens!457))))) e!1039833))))

(assert (= tb!93183 b!1621302))

(declare-fun m!1946383 () Bool)

(assert (=> b!1621302 m!1946383))

(declare-fun m!1946385 () Bool)

(assert (=> tb!93183 m!1946385))

(assert (=> d!488218 t!148759))

(declare-fun b_and!115005 () Bool)

(assert (= b_and!114997 (and (=> t!148759 result!112326) b_and!115005)))

(declare-fun t!148761 () Bool)

(declare-fun tb!93185 () Bool)

(assert (=> (and b!1621150 (= (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457)))))) t!148761) tb!93185))

(declare-fun result!112328 () Bool)

(assert (= result!112328 result!112326))

(assert (=> d!488218 t!148761))

(declare-fun b_and!115007 () Bool)

(assert (= b_and!114999 (and (=> t!148761 result!112328) b_and!115007)))

(declare-fun m!1946387 () Bool)

(assert (=> d!488218 m!1946387))

(declare-fun m!1946389 () Bool)

(assert (=> d!488218 m!1946389))

(assert (=> b!1621163 d!488218))

(declare-fun d!488220 () Bool)

(assert (=> d!488220 (= (head!3392 (originalCharacters!3941 (h!23154 (t!148746 tokens!457)))) (h!23152 (originalCharacters!3941 (h!23154 (t!148746 tokens!457)))))))

(assert (=> b!1621162 d!488220))

(declare-fun d!488222 () Bool)

(assert (=> d!488222 (= (separableTokensPredicate!698 thiss!17113 (h!23154 tokens!457) (h!23154 (t!148746 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!507 (rulesRegex!517 thiss!17113 rules!1846) (++!4706 (charsOf!1776 (h!23154 tokens!457)) (singletonSeq!1533 (apply!4500 (charsOf!1776 (h!23154 (t!148746 tokens!457))) 0))))))))

(declare-fun bs!394519 () Bool)

(assert (= bs!394519 d!488222))

(assert (=> bs!394519 m!1946095))

(assert (=> bs!394519 m!1946049))

(declare-fun m!1946391 () Bool)

(assert (=> bs!394519 m!1946391))

(assert (=> bs!394519 m!1946045))

(assert (=> bs!394519 m!1946055))

(assert (=> bs!394519 m!1946045))

(assert (=> bs!394519 m!1946391))

(declare-fun m!1946393 () Bool)

(assert (=> bs!394519 m!1946393))

(assert (=> bs!394519 m!1946047))

(assert (=> bs!394519 m!1946049))

(assert (=> bs!394519 m!1946095))

(assert (=> bs!394519 m!1946055))

(assert (=> bs!394519 m!1946047))

(assert (=> b!1621164 d!488222))

(declare-fun d!488224 () Bool)

(declare-fun c!264027 () Bool)

(assert (=> d!488224 (= c!264027 (isEmpty!10776 (++!4705 lt!583367 lt!583359)))))

(declare-fun e!1039836 () Bool)

(assert (=> d!488224 (= (prefixMatch!390 lt!583361 (++!4705 lt!583367 lt!583359)) e!1039836)))

(declare-fun b!1621307 () Bool)

(declare-fun lostCause!429 (Regex!4455) Bool)

(assert (=> b!1621307 (= e!1039836 (not (lostCause!429 lt!583361)))))

(declare-fun b!1621308 () Bool)

(declare-fun derivativeStep!1074 (Regex!4455 C!9084) Regex!4455)

(declare-fun tail!2346 (List!17821) List!17821)

(assert (=> b!1621308 (= e!1039836 (prefixMatch!390 (derivativeStep!1074 lt!583361 (head!3392 (++!4705 lt!583367 lt!583359))) (tail!2346 (++!4705 lt!583367 lt!583359))))))

(assert (= (and d!488224 c!264027) b!1621307))

(assert (= (and d!488224 (not c!264027)) b!1621308))

(assert (=> d!488224 m!1946063))

(declare-fun m!1946395 () Bool)

(assert (=> d!488224 m!1946395))

(declare-fun m!1946397 () Bool)

(assert (=> b!1621307 m!1946397))

(assert (=> b!1621308 m!1946063))

(declare-fun m!1946399 () Bool)

(assert (=> b!1621308 m!1946399))

(assert (=> b!1621308 m!1946399))

(declare-fun m!1946401 () Bool)

(assert (=> b!1621308 m!1946401))

(assert (=> b!1621308 m!1946063))

(declare-fun m!1946403 () Bool)

(assert (=> b!1621308 m!1946403))

(assert (=> b!1621308 m!1946401))

(assert (=> b!1621308 m!1946403))

(declare-fun m!1946405 () Bool)

(assert (=> b!1621308 m!1946405))

(assert (=> b!1621155 d!488224))

(declare-fun b!1621320 () Bool)

(declare-fun e!1039841 () Bool)

(declare-fun lt!583500 () List!17821)

(assert (=> b!1621320 (= e!1039841 (or (not (= lt!583359 Nil!17751)) (= lt!583500 lt!583367)))))

(declare-fun b!1621319 () Bool)

(declare-fun res!724174 () Bool)

(assert (=> b!1621319 (=> (not res!724174) (not e!1039841))))

(assert (=> b!1621319 (= res!724174 (= (size!14233 lt!583500) (+ (size!14233 lt!583367) (size!14233 lt!583359))))))

(declare-fun b!1621318 () Bool)

(declare-fun e!1039842 () List!17821)

(assert (=> b!1621318 (= e!1039842 (Cons!17751 (h!23152 lt!583367) (++!4705 (t!148744 lt!583367) lt!583359)))))

(declare-fun b!1621317 () Bool)

(assert (=> b!1621317 (= e!1039842 lt!583359)))

(declare-fun d!488226 () Bool)

(assert (=> d!488226 e!1039841))

(declare-fun res!724175 () Bool)

(assert (=> d!488226 (=> (not res!724175) (not e!1039841))))

(declare-fun content!2463 (List!17821) (InoxSet C!9084))

(assert (=> d!488226 (= res!724175 (= (content!2463 lt!583500) ((_ map or) (content!2463 lt!583367) (content!2463 lt!583359))))))

(assert (=> d!488226 (= lt!583500 e!1039842)))

(declare-fun c!264030 () Bool)

(assert (=> d!488226 (= c!264030 ((_ is Nil!17751) lt!583367))))

(assert (=> d!488226 (= (++!4705 lt!583367 lt!583359) lt!583500)))

(assert (= (and d!488226 c!264030) b!1621317))

(assert (= (and d!488226 (not c!264030)) b!1621318))

(assert (= (and d!488226 res!724175) b!1621319))

(assert (= (and b!1621319 res!724174) b!1621320))

(declare-fun m!1946407 () Bool)

(assert (=> b!1621319 m!1946407))

(declare-fun m!1946409 () Bool)

(assert (=> b!1621319 m!1946409))

(declare-fun m!1946411 () Bool)

(assert (=> b!1621319 m!1946411))

(declare-fun m!1946413 () Bool)

(assert (=> b!1621318 m!1946413))

(declare-fun m!1946415 () Bool)

(assert (=> d!488226 m!1946415))

(declare-fun m!1946417 () Bool)

(assert (=> d!488226 m!1946417))

(declare-fun m!1946419 () Bool)

(assert (=> d!488226 m!1946419))

(assert (=> b!1621155 d!488226))

(declare-fun d!488228 () Bool)

(declare-fun list!6958 (Conc!5902) List!17821)

(assert (=> d!488228 (= (list!6955 lt!583369) (list!6958 (c!264004 lt!583369)))))

(declare-fun bs!394520 () Bool)

(assert (= bs!394520 d!488228))

(declare-fun m!1946421 () Bool)

(assert (=> bs!394520 m!1946421))

(assert (=> b!1621155 d!488228))

(declare-fun d!488230 () Bool)

(declare-fun lt!583503 () Bool)

(declare-fun isEmpty!10779 (List!17823) Bool)

(assert (=> d!488230 (= lt!583503 (isEmpty!10779 (list!6956 (_1!10054 (lex!1240 thiss!17113 rules!1846 (seqFromList!2004 lt!583367))))))))

(declare-fun isEmpty!10780 (Conc!5903) Bool)

(assert (=> d!488230 (= lt!583503 (isEmpty!10780 (c!264005 (_1!10054 (lex!1240 thiss!17113 rules!1846 (seqFromList!2004 lt!583367))))))))

(assert (=> d!488230 (= (isEmpty!10775 (_1!10054 (lex!1240 thiss!17113 rules!1846 (seqFromList!2004 lt!583367)))) lt!583503)))

(declare-fun bs!394521 () Bool)

(assert (= bs!394521 d!488230))

(declare-fun m!1946423 () Bool)

(assert (=> bs!394521 m!1946423))

(assert (=> bs!394521 m!1946423))

(declare-fun m!1946425 () Bool)

(assert (=> bs!394521 m!1946425))

(declare-fun m!1946427 () Bool)

(assert (=> bs!394521 m!1946427))

(assert (=> b!1621156 d!488230))

(declare-fun b!1621409 () Bool)

(declare-fun e!1039894 () Bool)

(declare-fun lt!583566 () tuple2!17304)

(assert (=> b!1621409 (= e!1039894 (= (_2!10054 lt!583566) (seqFromList!2004 lt!583367)))))

(declare-fun e!1039896 () Bool)

(declare-fun b!1621410 () Bool)

(declare-datatypes ((tuple2!17308 0))(
  ( (tuple2!17309 (_1!10056 List!17823) (_2!10056 List!17821)) )
))
(declare-fun lexList!820 (LexerInterface!2756 List!17824 List!17821) tuple2!17308)

(assert (=> b!1621410 (= e!1039896 (= (list!6955 (_2!10054 lt!583566)) (_2!10056 (lexList!820 thiss!17113 rules!1846 (list!6955 (seqFromList!2004 lt!583367))))))))

(declare-fun b!1621412 () Bool)

(declare-fun res!724226 () Bool)

(assert (=> b!1621412 (=> (not res!724226) (not e!1039896))))

(assert (=> b!1621412 (= res!724226 (= (list!6956 (_1!10054 lt!583566)) (_1!10056 (lexList!820 thiss!17113 rules!1846 (list!6955 (seqFromList!2004 lt!583367))))))))

(declare-fun b!1621413 () Bool)

(declare-fun e!1039895 () Bool)

(assert (=> b!1621413 (= e!1039894 e!1039895)))

(declare-fun res!724225 () Bool)

(assert (=> b!1621413 (= res!724225 (< (size!14234 (_2!10054 lt!583566)) (size!14234 (seqFromList!2004 lt!583367))))))

(assert (=> b!1621413 (=> (not res!724225) (not e!1039895))))

(declare-fun b!1621411 () Bool)

(assert (=> b!1621411 (= e!1039895 (not (isEmpty!10775 (_1!10054 lt!583566))))))

(declare-fun d!488232 () Bool)

(assert (=> d!488232 e!1039896))

(declare-fun res!724224 () Bool)

(assert (=> d!488232 (=> (not res!724224) (not e!1039896))))

(assert (=> d!488232 (= res!724224 e!1039894)))

(declare-fun c!264052 () Bool)

(declare-fun size!14235 (BalanceConc!11750) Int)

(assert (=> d!488232 (= c!264052 (> (size!14235 (_1!10054 lt!583566)) 0))))

(declare-fun lexTailRecV2!543 (LexerInterface!2756 List!17824 BalanceConc!11748 BalanceConc!11748 BalanceConc!11748 BalanceConc!11750) tuple2!17304)

(assert (=> d!488232 (= lt!583566 (lexTailRecV2!543 thiss!17113 rules!1846 (seqFromList!2004 lt!583367) (BalanceConc!11749 Empty!5902) (seqFromList!2004 lt!583367) (BalanceConc!11751 Empty!5903)))))

(assert (=> d!488232 (= (lex!1240 thiss!17113 rules!1846 (seqFromList!2004 lt!583367)) lt!583566)))

(assert (= (and d!488232 c!264052) b!1621413))

(assert (= (and d!488232 (not c!264052)) b!1621409))

(assert (= (and b!1621413 res!724225) b!1621411))

(assert (= (and d!488232 res!724224) b!1621412))

(assert (= (and b!1621412 res!724226) b!1621410))

(declare-fun m!1946527 () Bool)

(assert (=> b!1621413 m!1946527))

(assert (=> b!1621413 m!1946075))

(declare-fun m!1946529 () Bool)

(assert (=> b!1621413 m!1946529))

(declare-fun m!1946531 () Bool)

(assert (=> b!1621411 m!1946531))

(declare-fun m!1946533 () Bool)

(assert (=> b!1621410 m!1946533))

(assert (=> b!1621410 m!1946075))

(declare-fun m!1946535 () Bool)

(assert (=> b!1621410 m!1946535))

(assert (=> b!1621410 m!1946535))

(declare-fun m!1946537 () Bool)

(assert (=> b!1621410 m!1946537))

(declare-fun m!1946539 () Bool)

(assert (=> d!488232 m!1946539))

(assert (=> d!488232 m!1946075))

(assert (=> d!488232 m!1946075))

(declare-fun m!1946543 () Bool)

(assert (=> d!488232 m!1946543))

(declare-fun m!1946545 () Bool)

(assert (=> b!1621412 m!1946545))

(assert (=> b!1621412 m!1946075))

(assert (=> b!1621412 m!1946535))

(assert (=> b!1621412 m!1946535))

(assert (=> b!1621412 m!1946537))

(assert (=> b!1621156 d!488232))

(declare-fun d!488256 () Bool)

(declare-fun fromListB!877 (List!17821) BalanceConc!11748)

(assert (=> d!488256 (= (seqFromList!2004 lt!583367) (fromListB!877 lt!583367))))

(declare-fun bs!394528 () Bool)

(assert (= bs!394528 d!488256))

(declare-fun m!1946551 () Bool)

(assert (=> bs!394528 m!1946551))

(assert (=> b!1621156 d!488256))

(declare-fun d!488262 () Bool)

(assert (=> d!488262 (= (head!3392 lt!583380) (h!23152 lt!583380))))

(assert (=> b!1621157 d!488262))

(declare-fun d!488264 () Bool)

(declare-fun isEmpty!10781 (Option!3270) Bool)

(assert (=> d!488264 (= (isDefined!2637 (maxPrefixZipperSequence!651 thiss!17113 rules!1846 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457))))) (not (isEmpty!10781 (maxPrefixZipperSequence!651 thiss!17113 rules!1846 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))))

(declare-fun bs!394529 () Bool)

(assert (= bs!394529 d!488264))

(assert (=> bs!394529 m!1946037))

(declare-fun m!1946553 () Bool)

(assert (=> bs!394529 m!1946553))

(assert (=> b!1621159 d!488264))

(declare-fun e!1039928 () Bool)

(declare-fun lt!583617 () Option!3270)

(declare-fun b!1621457 () Bool)

(declare-fun get!5105 (Option!3270) tuple2!17306)

(declare-fun maxPrefixZipper!297 (LexerInterface!2756 List!17824 List!17821) Option!3269)

(assert (=> b!1621457 (= e!1039928 (= (list!6955 (_2!10055 (get!5105 lt!583617))) (_2!10053 (get!5103 (maxPrefixZipper!297 thiss!17113 rules!1846 (list!6955 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))))))

(declare-fun bm!105123 () Bool)

(declare-fun call!105128 () Option!3270)

(declare-fun maxPrefixOneRuleZipperSequence!307 (LexerInterface!2756 Rule!6054 BalanceConc!11748) Option!3270)

(assert (=> bm!105123 (= call!105128 (maxPrefixOneRuleZipperSequence!307 thiss!17113 (h!23155 rules!1846) (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))

(declare-fun b!1621458 () Bool)

(declare-fun e!1039924 () Option!3270)

(declare-fun lt!583614 () Option!3270)

(declare-fun lt!583618 () Option!3270)

(assert (=> b!1621458 (= e!1039924 (ite (and ((_ is None!3269) lt!583614) ((_ is None!3269) lt!583618)) None!3269 (ite ((_ is None!3269) lt!583618) lt!583614 (ite ((_ is None!3269) lt!583614) lt!583618 (ite (>= (size!14230 (_1!10055 (v!24280 lt!583614))) (size!14230 (_1!10055 (v!24280 lt!583618)))) lt!583614 lt!583618)))))))

(assert (=> b!1621458 (= lt!583614 call!105128)))

(assert (=> b!1621458 (= lt!583618 (maxPrefixZipperSequence!651 thiss!17113 (t!148747 rules!1846) (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))

(declare-fun d!488266 () Bool)

(declare-fun e!1039927 () Bool)

(assert (=> d!488266 e!1039927))

(declare-fun res!724257 () Bool)

(assert (=> d!488266 (=> (not res!724257) (not e!1039927))))

(assert (=> d!488266 (= res!724257 (= (isDefined!2637 lt!583617) (isDefined!2636 (maxPrefixZipper!297 thiss!17113 rules!1846 (list!6955 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457))))))))))

(assert (=> d!488266 (= lt!583617 e!1039924)))

(declare-fun c!264062 () Bool)

(assert (=> d!488266 (= c!264062 (and ((_ is Cons!17754) rules!1846) ((_ is Nil!17754) (t!148747 rules!1846))))))

(declare-fun lt!583616 () Unit!28679)

(declare-fun lt!583613 () Unit!28679)

(assert (=> d!488266 (= lt!583616 lt!583613)))

(declare-fun lt!583615 () List!17821)

(declare-fun lt!583619 () List!17821)

(assert (=> d!488266 (isPrefix!1387 lt!583615 lt!583619)))

(declare-fun lemmaIsPrefixRefl!952 (List!17821 List!17821) Unit!28679)

(assert (=> d!488266 (= lt!583613 (lemmaIsPrefixRefl!952 lt!583615 lt!583619))))

(assert (=> d!488266 (= lt!583619 (list!6955 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))

(assert (=> d!488266 (= lt!583615 (list!6955 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))

(declare-fun rulesValidInductive!964 (LexerInterface!2756 List!17824) Bool)

(assert (=> d!488266 (rulesValidInductive!964 thiss!17113 rules!1846)))

(assert (=> d!488266 (= (maxPrefixZipperSequence!651 thiss!17113 rules!1846 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))) lt!583617)))

(declare-fun b!1621459 () Bool)

(declare-fun e!1039926 () Bool)

(declare-fun e!1039925 () Bool)

(assert (=> b!1621459 (= e!1039926 e!1039925)))

(declare-fun res!724254 () Bool)

(assert (=> b!1621459 (=> (not res!724254) (not e!1039925))))

(assert (=> b!1621459 (= res!724254 (= (_1!10055 (get!5105 lt!583617)) (_1!10053 (get!5103 (maxPrefix!1320 thiss!17113 rules!1846 (list!6955 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))))))

(declare-fun b!1621460 () Bool)

(assert (=> b!1621460 (= e!1039925 (= (list!6955 (_2!10055 (get!5105 lt!583617))) (_2!10053 (get!5103 (maxPrefix!1320 thiss!17113 rules!1846 (list!6955 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))))))

(declare-fun b!1621461 () Bool)

(assert (=> b!1621461 (= e!1039927 e!1039926)))

(declare-fun res!724256 () Bool)

(assert (=> b!1621461 (=> res!724256 e!1039926)))

(assert (=> b!1621461 (= res!724256 (not (isDefined!2637 lt!583617)))))

(declare-fun b!1621462 () Bool)

(declare-fun res!724255 () Bool)

(assert (=> b!1621462 (=> (not res!724255) (not e!1039927))))

(declare-fun e!1039929 () Bool)

(assert (=> b!1621462 (= res!724255 e!1039929)))

(declare-fun res!724253 () Bool)

(assert (=> b!1621462 (=> res!724253 e!1039929)))

(assert (=> b!1621462 (= res!724253 (not (isDefined!2637 lt!583617)))))

(declare-fun b!1621463 () Bool)

(assert (=> b!1621463 (= e!1039924 call!105128)))

(declare-fun b!1621464 () Bool)

(assert (=> b!1621464 (= e!1039929 e!1039928)))

(declare-fun res!724252 () Bool)

(assert (=> b!1621464 (=> (not res!724252) (not e!1039928))))

(assert (=> b!1621464 (= res!724252 (= (_1!10055 (get!5105 lt!583617)) (_1!10053 (get!5103 (maxPrefixZipper!297 thiss!17113 rules!1846 (list!6955 (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457)))))))))))

(assert (= (and d!488266 c!264062) b!1621463))

(assert (= (and d!488266 (not c!264062)) b!1621458))

(assert (= (or b!1621463 b!1621458) bm!105123))

(assert (= (and d!488266 res!724257) b!1621462))

(assert (= (and b!1621462 (not res!724253)) b!1621464))

(assert (= (and b!1621464 res!724252) b!1621457))

(assert (= (and b!1621462 res!724255) b!1621461))

(assert (= (and b!1621461 (not res!724256)) b!1621459))

(assert (= (and b!1621459 res!724254) b!1621460))

(declare-fun m!1946641 () Bool)

(assert (=> b!1621459 m!1946641))

(assert (=> b!1621459 m!1946035))

(declare-fun m!1946643 () Bool)

(assert (=> b!1621459 m!1946643))

(assert (=> b!1621459 m!1946643))

(declare-fun m!1946645 () Bool)

(assert (=> b!1621459 m!1946645))

(assert (=> b!1621459 m!1946645))

(declare-fun m!1946647 () Bool)

(assert (=> b!1621459 m!1946647))

(declare-fun m!1946649 () Bool)

(assert (=> d!488266 m!1946649))

(declare-fun m!1946651 () Bool)

(assert (=> d!488266 m!1946651))

(declare-fun m!1946653 () Bool)

(assert (=> d!488266 m!1946653))

(declare-fun m!1946655 () Bool)

(assert (=> d!488266 m!1946655))

(declare-fun m!1946657 () Bool)

(assert (=> d!488266 m!1946657))

(declare-fun m!1946659 () Bool)

(assert (=> d!488266 m!1946659))

(assert (=> d!488266 m!1946643))

(assert (=> d!488266 m!1946657))

(assert (=> d!488266 m!1946035))

(assert (=> d!488266 m!1946643))

(assert (=> bm!105123 m!1946035))

(declare-fun m!1946661 () Bool)

(assert (=> bm!105123 m!1946661))

(assert (=> b!1621460 m!1946641))

(assert (=> b!1621460 m!1946645))

(assert (=> b!1621460 m!1946647))

(declare-fun m!1946663 () Bool)

(assert (=> b!1621460 m!1946663))

(assert (=> b!1621460 m!1946035))

(assert (=> b!1621460 m!1946643))

(assert (=> b!1621460 m!1946643))

(assert (=> b!1621460 m!1946645))

(assert (=> b!1621464 m!1946641))

(assert (=> b!1621464 m!1946035))

(assert (=> b!1621464 m!1946643))

(assert (=> b!1621464 m!1946643))

(assert (=> b!1621464 m!1946657))

(assert (=> b!1621464 m!1946657))

(declare-fun m!1946665 () Bool)

(assert (=> b!1621464 m!1946665))

(assert (=> b!1621458 m!1946035))

(declare-fun m!1946667 () Bool)

(assert (=> b!1621458 m!1946667))

(assert (=> b!1621462 m!1946655))

(assert (=> b!1621461 m!1946655))

(assert (=> b!1621457 m!1946641))

(assert (=> b!1621457 m!1946663))

(assert (=> b!1621457 m!1946657))

(assert (=> b!1621457 m!1946665))

(assert (=> b!1621457 m!1946643))

(assert (=> b!1621457 m!1946657))

(assert (=> b!1621457 m!1946035))

(assert (=> b!1621457 m!1946643))

(assert (=> b!1621159 d!488266))

(declare-fun d!488282 () Bool)

(assert (=> d!488282 (= (seqFromList!2004 (originalCharacters!3941 (h!23154 tokens!457))) (fromListB!877 (originalCharacters!3941 (h!23154 tokens!457))))))

(declare-fun bs!394531 () Bool)

(assert (= bs!394531 d!488282))

(declare-fun m!1946669 () Bool)

(assert (=> bs!394531 m!1946669))

(assert (=> b!1621159 d!488282))

(declare-fun d!488284 () Bool)

(declare-fun lt!583622 () C!9084)

(assert (=> d!488284 (= lt!583622 (head!3392 (list!6955 lt!583358)))))

(declare-fun head!3395 (Conc!5902) C!9084)

(assert (=> d!488284 (= lt!583622 (head!3395 (c!264004 lt!583358)))))

(declare-fun isEmpty!10782 (BalanceConc!11748) Bool)

(assert (=> d!488284 (not (isEmpty!10782 lt!583358))))

(assert (=> d!488284 (= (head!3393 lt!583358) lt!583622)))

(declare-fun bs!394532 () Bool)

(assert (= bs!394532 d!488284))

(assert (=> bs!394532 m!1946105))

(assert (=> bs!394532 m!1946105))

(declare-fun m!1946671 () Bool)

(assert (=> bs!394532 m!1946671))

(declare-fun m!1946673 () Bool)

(assert (=> bs!394532 m!1946673))

(declare-fun m!1946675 () Bool)

(assert (=> bs!394532 m!1946675))

(assert (=> b!1621159 d!488284))

(declare-fun b!1621493 () Bool)

(declare-fun e!1039944 () Bool)

(declare-fun nullable!1309 (Regex!4455) Bool)

(assert (=> b!1621493 (= e!1039944 (nullable!1309 (regex!3127 (rule!4953 (h!23154 tokens!457)))))))

(declare-fun b!1621494 () Bool)

(declare-fun res!724274 () Bool)

(declare-fun e!1039947 () Bool)

(assert (=> b!1621494 (=> res!724274 e!1039947)))

(assert (=> b!1621494 (= res!724274 (not ((_ is ElementMatch!4455) (regex!3127 (rule!4953 (h!23154 tokens!457))))))))

(declare-fun e!1039948 () Bool)

(assert (=> b!1621494 (= e!1039948 e!1039947)))

(declare-fun b!1621495 () Bool)

(declare-fun res!724278 () Bool)

(declare-fun e!1039950 () Bool)

(assert (=> b!1621495 (=> res!724278 e!1039950)))

(assert (=> b!1621495 (= res!724278 (not (isEmpty!10776 (tail!2346 lt!583367))))))

(declare-fun b!1621496 () Bool)

(declare-fun e!1039946 () Bool)

(assert (=> b!1621496 (= e!1039946 e!1039948)))

(declare-fun c!264069 () Bool)

(assert (=> b!1621496 (= c!264069 ((_ is EmptyLang!4455) (regex!3127 (rule!4953 (h!23154 tokens!457)))))))

(declare-fun d!488286 () Bool)

(assert (=> d!488286 e!1039946))

(declare-fun c!264070 () Bool)

(assert (=> d!488286 (= c!264070 ((_ is EmptyExpr!4455) (regex!3127 (rule!4953 (h!23154 tokens!457)))))))

(declare-fun lt!583625 () Bool)

(assert (=> d!488286 (= lt!583625 e!1039944)))

(declare-fun c!264071 () Bool)

(assert (=> d!488286 (= c!264071 (isEmpty!10776 lt!583367))))

(assert (=> d!488286 (validRegex!1770 (regex!3127 (rule!4953 (h!23154 tokens!457))))))

(assert (=> d!488286 (= (matchR!1954 (regex!3127 (rule!4953 (h!23154 tokens!457))) lt!583367) lt!583625)))

(declare-fun b!1621497 () Bool)

(declare-fun res!724281 () Bool)

(declare-fun e!1039945 () Bool)

(assert (=> b!1621497 (=> (not res!724281) (not e!1039945))))

(declare-fun call!105131 () Bool)

(assert (=> b!1621497 (= res!724281 (not call!105131))))

(declare-fun b!1621498 () Bool)

(declare-fun e!1039949 () Bool)

(assert (=> b!1621498 (= e!1039949 e!1039950)))

(declare-fun res!724279 () Bool)

(assert (=> b!1621498 (=> res!724279 e!1039950)))

(assert (=> b!1621498 (= res!724279 call!105131)))

(declare-fun b!1621499 () Bool)

(assert (=> b!1621499 (= e!1039944 (matchR!1954 (derivativeStep!1074 (regex!3127 (rule!4953 (h!23154 tokens!457))) (head!3392 lt!583367)) (tail!2346 lt!583367)))))

(declare-fun b!1621500 () Bool)

(assert (=> b!1621500 (= e!1039946 (= lt!583625 call!105131))))

(declare-fun bm!105126 () Bool)

(assert (=> bm!105126 (= call!105131 (isEmpty!10776 lt!583367))))

(declare-fun b!1621501 () Bool)

(assert (=> b!1621501 (= e!1039947 e!1039949)))

(declare-fun res!724280 () Bool)

(assert (=> b!1621501 (=> (not res!724280) (not e!1039949))))

(assert (=> b!1621501 (= res!724280 (not lt!583625))))

(declare-fun b!1621502 () Bool)

(assert (=> b!1621502 (= e!1039945 (= (head!3392 lt!583367) (c!264003 (regex!3127 (rule!4953 (h!23154 tokens!457))))))))

(declare-fun b!1621503 () Bool)

(declare-fun res!724275 () Bool)

(assert (=> b!1621503 (=> (not res!724275) (not e!1039945))))

(assert (=> b!1621503 (= res!724275 (isEmpty!10776 (tail!2346 lt!583367)))))

(declare-fun b!1621504 () Bool)

(declare-fun res!724277 () Bool)

(assert (=> b!1621504 (=> res!724277 e!1039947)))

(assert (=> b!1621504 (= res!724277 e!1039945)))

(declare-fun res!724276 () Bool)

(assert (=> b!1621504 (=> (not res!724276) (not e!1039945))))

(assert (=> b!1621504 (= res!724276 lt!583625)))

(declare-fun b!1621505 () Bool)

(assert (=> b!1621505 (= e!1039950 (not (= (head!3392 lt!583367) (c!264003 (regex!3127 (rule!4953 (h!23154 tokens!457)))))))))

(declare-fun b!1621506 () Bool)

(assert (=> b!1621506 (= e!1039948 (not lt!583625))))

(assert (= (and d!488286 c!264071) b!1621493))

(assert (= (and d!488286 (not c!264071)) b!1621499))

(assert (= (and d!488286 c!264070) b!1621500))

(assert (= (and d!488286 (not c!264070)) b!1621496))

(assert (= (and b!1621496 c!264069) b!1621506))

(assert (= (and b!1621496 (not c!264069)) b!1621494))

(assert (= (and b!1621494 (not res!724274)) b!1621504))

(assert (= (and b!1621504 res!724276) b!1621497))

(assert (= (and b!1621497 res!724281) b!1621503))

(assert (= (and b!1621503 res!724275) b!1621502))

(assert (= (and b!1621504 (not res!724277)) b!1621501))

(assert (= (and b!1621501 res!724280) b!1621498))

(assert (= (and b!1621498 (not res!724279)) b!1621495))

(assert (= (and b!1621495 (not res!724278)) b!1621505))

(assert (= (or b!1621500 b!1621497 b!1621498) bm!105126))

(declare-fun m!1946677 () Bool)

(assert (=> d!488286 m!1946677))

(declare-fun m!1946679 () Bool)

(assert (=> d!488286 m!1946679))

(declare-fun m!1946681 () Bool)

(assert (=> b!1621493 m!1946681))

(declare-fun m!1946683 () Bool)

(assert (=> b!1621495 m!1946683))

(assert (=> b!1621495 m!1946683))

(declare-fun m!1946685 () Bool)

(assert (=> b!1621495 m!1946685))

(assert (=> bm!105126 m!1946677))

(declare-fun m!1946687 () Bool)

(assert (=> b!1621499 m!1946687))

(assert (=> b!1621499 m!1946687))

(declare-fun m!1946689 () Bool)

(assert (=> b!1621499 m!1946689))

(assert (=> b!1621499 m!1946683))

(assert (=> b!1621499 m!1946689))

(assert (=> b!1621499 m!1946683))

(declare-fun m!1946691 () Bool)

(assert (=> b!1621499 m!1946691))

(assert (=> b!1621503 m!1946683))

(assert (=> b!1621503 m!1946683))

(assert (=> b!1621503 m!1946685))

(assert (=> b!1621505 m!1946687))

(assert (=> b!1621502 m!1946687))

(assert (=> b!1621158 d!488286))

(declare-fun d!488288 () Bool)

(declare-fun list!6960 (Conc!5903) List!17823)

(assert (=> d!488288 (= (list!6956 (_1!10054 lt!583368)) (list!6960 (c!264005 (_1!10054 lt!583368))))))

(declare-fun bs!394533 () Bool)

(assert (= bs!394533 d!488288))

(declare-fun m!1946693 () Bool)

(assert (=> bs!394533 m!1946693))

(assert (=> b!1621171 d!488288))

(declare-fun d!488290 () Bool)

(declare-fun e!1039981 () Bool)

(assert (=> d!488290 e!1039981))

(declare-fun res!724314 () Bool)

(assert (=> d!488290 (=> (not res!724314) (not e!1039981))))

(assert (=> d!488290 (= res!724314 (= (list!6956 (_1!10054 (lex!1240 thiss!17113 rules!1846 (print!1287 thiss!17113 (seqFromList!2003 (t!148746 tokens!457)))))) (t!148746 tokens!457)))))

(declare-fun lt!583696 () Unit!28679)

(declare-fun e!1039980 () Unit!28679)

(assert (=> d!488290 (= lt!583696 e!1039980)))

(declare-fun c!264078 () Bool)

(assert (=> d!488290 (= c!264078 (or ((_ is Nil!17753) (t!148746 tokens!457)) ((_ is Nil!17753) (t!148746 (t!148746 tokens!457)))))))

(assert (=> d!488290 (not (isEmpty!10777 rules!1846))))

(assert (=> d!488290 (= (theoremInvertabilityWhenTokenListSeparable!201 thiss!17113 rules!1846 (t!148746 tokens!457)) lt!583696)))

(declare-fun b!1621552 () Bool)

(declare-fun Unit!28683 () Unit!28679)

(assert (=> b!1621552 (= e!1039980 Unit!28683)))

(declare-fun b!1621553 () Bool)

(declare-fun Unit!28684 () Unit!28679)

(assert (=> b!1621553 (= e!1039980 Unit!28684)))

(declare-fun lt!583707 () BalanceConc!11748)

(assert (=> b!1621553 (= lt!583707 (print!1287 thiss!17113 (seqFromList!2003 (t!148746 tokens!457))))))

(declare-fun lt!583704 () BalanceConc!11748)

(assert (=> b!1621553 (= lt!583704 (print!1287 thiss!17113 (seqFromList!2003 (t!148746 (t!148746 tokens!457)))))))

(declare-fun lt!583706 () tuple2!17304)

(assert (=> b!1621553 (= lt!583706 (lex!1240 thiss!17113 rules!1846 lt!583704))))

(declare-fun lt!583714 () List!17821)

(assert (=> b!1621553 (= lt!583714 (list!6955 (charsOf!1776 (h!23154 (t!148746 tokens!457)))))))

(declare-fun lt!583700 () List!17821)

(assert (=> b!1621553 (= lt!583700 (list!6955 lt!583704))))

(declare-fun lt!583711 () Unit!28679)

(assert (=> b!1621553 (= lt!583711 (lemmaConcatTwoListThenFirstIsPrefix!912 lt!583714 lt!583700))))

(assert (=> b!1621553 (isPrefix!1387 lt!583714 (++!4705 lt!583714 lt!583700))))

(declare-fun lt!583703 () Unit!28679)

(assert (=> b!1621553 (= lt!583703 lt!583711)))

(declare-fun lt!583705 () Unit!28679)

(assert (=> b!1621553 (= lt!583705 (theoremInvertabilityWhenTokenListSeparable!201 thiss!17113 rules!1846 (t!148746 (t!148746 tokens!457))))))

(declare-fun lt!583708 () Unit!28679)

(assert (=> b!1621553 (= lt!583708 (seqFromListBHdTlConstructive!204 (h!23154 (t!148746 (t!148746 tokens!457))) (t!148746 (t!148746 (t!148746 tokens!457))) (_1!10054 lt!583706)))))

(assert (=> b!1621553 (= (list!6956 (_1!10054 lt!583706)) (list!6956 (prepend!645 (seqFromList!2003 (t!148746 (t!148746 (t!148746 tokens!457)))) (h!23154 (t!148746 (t!148746 tokens!457))))))))

(declare-fun lt!583693 () Unit!28679)

(assert (=> b!1621553 (= lt!583693 lt!583708)))

(declare-fun lt!583710 () Option!3269)

(assert (=> b!1621553 (= lt!583710 (maxPrefix!1320 thiss!17113 rules!1846 (list!6955 lt!583707)))))

(assert (=> b!1621553 (= (print!1287 thiss!17113 (singletonSeq!1532 (h!23154 (t!148746 tokens!457)))) (printTailRec!809 thiss!17113 (singletonSeq!1532 (h!23154 (t!148746 tokens!457))) 0 (BalanceConc!11749 Empty!5902)))))

(declare-fun lt!583702 () Unit!28679)

(declare-fun Unit!28685 () Unit!28679)

(assert (=> b!1621553 (= lt!583702 Unit!28685)))

(declare-fun lt!583712 () Unit!28679)

(assert (=> b!1621553 (= lt!583712 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!330 thiss!17113 rules!1846 (list!6955 (charsOf!1776 (h!23154 (t!148746 tokens!457)))) (list!6955 lt!583704)))))

(assert (=> b!1621553 (= (list!6955 (charsOf!1776 (h!23154 (t!148746 tokens!457)))) (originalCharacters!3941 (h!23154 (t!148746 tokens!457))))))

(declare-fun lt!583699 () Unit!28679)

(declare-fun Unit!28686 () Unit!28679)

(assert (=> b!1621553 (= lt!583699 Unit!28686)))

(assert (=> b!1621553 (= (list!6955 (singletonSeq!1533 (apply!4500 (charsOf!1776 (h!23154 (t!148746 (t!148746 tokens!457)))) 0))) (Cons!17751 (head!3392 (originalCharacters!3941 (h!23154 (t!148746 (t!148746 tokens!457))))) Nil!17751))))

(declare-fun lt!583717 () Unit!28679)

(declare-fun Unit!28687 () Unit!28679)

(assert (=> b!1621553 (= lt!583717 Unit!28687)))

(assert (=> b!1621553 (= (list!6955 (singletonSeq!1533 (apply!4500 (charsOf!1776 (h!23154 (t!148746 (t!148746 tokens!457)))) 0))) (Cons!17751 (head!3392 (list!6955 lt!583704)) Nil!17751))))

(declare-fun lt!583701 () Unit!28679)

(declare-fun Unit!28688 () Unit!28679)

(assert (=> b!1621553 (= lt!583701 Unit!28688)))

(assert (=> b!1621553 (= (list!6955 (singletonSeq!1533 (apply!4500 (charsOf!1776 (h!23154 (t!148746 (t!148746 tokens!457)))) 0))) (Cons!17751 (head!3393 lt!583704) Nil!17751))))

(declare-fun lt!583716 () Unit!28679)

(declare-fun Unit!28689 () Unit!28679)

(assert (=> b!1621553 (= lt!583716 Unit!28689)))

(assert (=> b!1621553 (isDefined!2636 (maxPrefix!1320 thiss!17113 rules!1846 (originalCharacters!3941 (h!23154 (t!148746 tokens!457)))))))

(declare-fun lt!583715 () Unit!28679)

(declare-fun Unit!28690 () Unit!28679)

(assert (=> b!1621553 (= lt!583715 Unit!28690)))

(assert (=> b!1621553 (isDefined!2636 (maxPrefix!1320 thiss!17113 rules!1846 (list!6955 (charsOf!1776 (h!23154 (t!148746 tokens!457))))))))

(declare-fun lt!583697 () Unit!28679)

(declare-fun Unit!28691 () Unit!28679)

(assert (=> b!1621553 (= lt!583697 Unit!28691)))

(declare-fun lt!583698 () Unit!28679)

(declare-fun Unit!28692 () Unit!28679)

(assert (=> b!1621553 (= lt!583698 Unit!28692)))

(assert (=> b!1621553 (= (_1!10053 (get!5103 (maxPrefix!1320 thiss!17113 rules!1846 (list!6955 (charsOf!1776 (h!23154 (t!148746 tokens!457))))))) (h!23154 (t!148746 tokens!457)))))

(declare-fun lt!583713 () Unit!28679)

(declare-fun Unit!28693 () Unit!28679)

(assert (=> b!1621553 (= lt!583713 Unit!28693)))

(assert (=> b!1621553 (isEmpty!10776 (_2!10053 (get!5103 (maxPrefix!1320 thiss!17113 rules!1846 (list!6955 (charsOf!1776 (h!23154 (t!148746 tokens!457))))))))))

(declare-fun lt!583694 () Unit!28679)

(declare-fun Unit!28694 () Unit!28679)

(assert (=> b!1621553 (= lt!583694 Unit!28694)))

(assert (=> b!1621553 (matchR!1954 (regex!3127 (rule!4953 (h!23154 (t!148746 tokens!457)))) (list!6955 (charsOf!1776 (h!23154 (t!148746 tokens!457)))))))

(declare-fun lt!583709 () Unit!28679)

(declare-fun Unit!28695 () Unit!28679)

(assert (=> b!1621553 (= lt!583709 Unit!28695)))

(assert (=> b!1621553 (= (rule!4953 (h!23154 (t!148746 tokens!457))) (rule!4953 (h!23154 (t!148746 tokens!457))))))

(declare-fun lt!583718 () Unit!28679)

(declare-fun Unit!28696 () Unit!28679)

(assert (=> b!1621553 (= lt!583718 Unit!28696)))

(declare-fun lt!583695 () Unit!28679)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!101 (LexerInterface!2756 List!17824 Token!5820 Rule!6054 List!17821) Unit!28679)

(assert (=> b!1621553 (= lt!583695 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!101 thiss!17113 rules!1846 (h!23154 (t!148746 tokens!457)) (rule!4953 (h!23154 (t!148746 tokens!457))) (list!6955 lt!583704)))))

(declare-fun b!1621554 () Bool)

(assert (=> b!1621554 (= e!1039981 (isEmpty!10782 (_2!10054 (lex!1240 thiss!17113 rules!1846 (print!1287 thiss!17113 (seqFromList!2003 (t!148746 tokens!457)))))))))

(assert (= (and d!488290 c!264078) b!1621552))

(assert (= (and d!488290 (not c!264078)) b!1621553))

(assert (= (and d!488290 res!724314) b!1621554))

(assert (=> d!488290 m!1946097))

(declare-fun m!1946775 () Bool)

(assert (=> d!488290 m!1946775))

(declare-fun m!1946777 () Bool)

(assert (=> d!488290 m!1946777))

(assert (=> d!488290 m!1946097))

(assert (=> d!488290 m!1946775))

(assert (=> d!488290 m!1946057))

(declare-fun m!1946779 () Bool)

(assert (=> d!488290 m!1946779))

(declare-fun m!1946781 () Bool)

(assert (=> b!1621553 m!1946781))

(assert (=> b!1621553 m!1946055))

(assert (=> b!1621553 m!1946237))

(declare-fun m!1946783 () Bool)

(assert (=> b!1621553 m!1946783))

(declare-fun m!1946785 () Bool)

(assert (=> b!1621553 m!1946785))

(assert (=> b!1621553 m!1946131))

(assert (=> b!1621553 m!1946237))

(declare-fun m!1946787 () Bool)

(assert (=> b!1621553 m!1946787))

(declare-fun m!1946789 () Bool)

(assert (=> b!1621553 m!1946789))

(assert (=> b!1621553 m!1946783))

(assert (=> b!1621553 m!1946055))

(declare-fun m!1946791 () Bool)

(assert (=> b!1621553 m!1946791))

(declare-fun m!1946793 () Bool)

(assert (=> b!1621553 m!1946793))

(declare-fun m!1946795 () Bool)

(assert (=> b!1621553 m!1946795))

(declare-fun m!1946797 () Bool)

(assert (=> b!1621553 m!1946797))

(declare-fun m!1946799 () Bool)

(assert (=> b!1621553 m!1946799))

(declare-fun m!1946801 () Bool)

(assert (=> b!1621553 m!1946801))

(assert (=> b!1621553 m!1946783))

(declare-fun m!1946803 () Bool)

(assert (=> b!1621553 m!1946803))

(assert (=> b!1621553 m!1946097))

(assert (=> b!1621553 m!1946775))

(declare-fun m!1946805 () Bool)

(assert (=> b!1621553 m!1946805))

(declare-fun m!1946807 () Bool)

(assert (=> b!1621553 m!1946807))

(declare-fun m!1946809 () Bool)

(assert (=> b!1621553 m!1946809))

(assert (=> b!1621553 m!1946131))

(declare-fun m!1946811 () Bool)

(assert (=> b!1621553 m!1946811))

(assert (=> b!1621553 m!1946799))

(assert (=> b!1621553 m!1946097))

(declare-fun m!1946813 () Bool)

(assert (=> b!1621553 m!1946813))

(assert (=> b!1621553 m!1946237))

(assert (=> b!1621553 m!1946783))

(declare-fun m!1946815 () Bool)

(assert (=> b!1621553 m!1946815))

(assert (=> b!1621553 m!1946237))

(declare-fun m!1946817 () Bool)

(assert (=> b!1621553 m!1946817))

(assert (=> b!1621553 m!1946793))

(declare-fun m!1946819 () Bool)

(assert (=> b!1621553 m!1946819))

(assert (=> b!1621553 m!1946791))

(declare-fun m!1946821 () Bool)

(assert (=> b!1621553 m!1946821))

(declare-fun m!1946823 () Bool)

(assert (=> b!1621553 m!1946823))

(declare-fun m!1946825 () Bool)

(assert (=> b!1621553 m!1946825))

(declare-fun m!1946827 () Bool)

(assert (=> b!1621553 m!1946827))

(assert (=> b!1621553 m!1946797))

(declare-fun m!1946829 () Bool)

(assert (=> b!1621553 m!1946829))

(assert (=> b!1621553 m!1946825))

(declare-fun m!1946831 () Bool)

(assert (=> b!1621553 m!1946831))

(assert (=> b!1621553 m!1946787))

(declare-fun m!1946833 () Bool)

(assert (=> b!1621553 m!1946833))

(declare-fun m!1946835 () Bool)

(assert (=> b!1621553 m!1946835))

(assert (=> b!1621553 m!1946825))

(declare-fun m!1946837 () Bool)

(assert (=> b!1621553 m!1946837))

(assert (=> b!1621553 m!1946789))

(assert (=> b!1621553 m!1946795))

(assert (=> b!1621553 m!1946805))

(assert (=> b!1621553 m!1946787))

(declare-fun m!1946839 () Bool)

(assert (=> b!1621553 m!1946839))

(declare-fun m!1946841 () Bool)

(assert (=> b!1621553 m!1946841))

(declare-fun m!1946843 () Bool)

(assert (=> b!1621553 m!1946843))

(assert (=> b!1621553 m!1946843))

(declare-fun m!1946845 () Bool)

(assert (=> b!1621553 m!1946845))

(assert (=> b!1621554 m!1946097))

(assert (=> b!1621554 m!1946097))

(assert (=> b!1621554 m!1946775))

(assert (=> b!1621554 m!1946775))

(assert (=> b!1621554 m!1946777))

(declare-fun m!1946847 () Bool)

(assert (=> b!1621554 m!1946847))

(assert (=> b!1621171 d!488290))

(declare-fun b!1621564 () Bool)

(declare-fun res!724326 () Bool)

(declare-fun e!1039989 () Bool)

(assert (=> b!1621564 (=> (not res!724326) (not e!1039989))))

(assert (=> b!1621564 (= res!724326 (= (head!3392 lt!583367) (head!3392 lt!583381)))))

(declare-fun b!1621565 () Bool)

(assert (=> b!1621565 (= e!1039989 (isPrefix!1387 (tail!2346 lt!583367) (tail!2346 lt!583381)))))

(declare-fun d!488316 () Bool)

(declare-fun e!1039990 () Bool)

(assert (=> d!488316 e!1039990))

(declare-fun res!724323 () Bool)

(assert (=> d!488316 (=> res!724323 e!1039990)))

(declare-fun lt!583721 () Bool)

(assert (=> d!488316 (= res!724323 (not lt!583721))))

(declare-fun e!1039988 () Bool)

(assert (=> d!488316 (= lt!583721 e!1039988)))

(declare-fun res!724324 () Bool)

(assert (=> d!488316 (=> res!724324 e!1039988)))

(assert (=> d!488316 (= res!724324 ((_ is Nil!17751) lt!583367))))

(assert (=> d!488316 (= (isPrefix!1387 lt!583367 lt!583381) lt!583721)))

(declare-fun b!1621563 () Bool)

(assert (=> b!1621563 (= e!1039988 e!1039989)))

(declare-fun res!724325 () Bool)

(assert (=> b!1621563 (=> (not res!724325) (not e!1039989))))

(assert (=> b!1621563 (= res!724325 (not ((_ is Nil!17751) lt!583381)))))

(declare-fun b!1621566 () Bool)

(assert (=> b!1621566 (= e!1039990 (>= (size!14233 lt!583381) (size!14233 lt!583367)))))

(assert (= (and d!488316 (not res!724324)) b!1621563))

(assert (= (and b!1621563 res!724325) b!1621564))

(assert (= (and b!1621564 res!724326) b!1621565))

(assert (= (and d!488316 (not res!724323)) b!1621566))

(assert (=> b!1621564 m!1946687))

(declare-fun m!1946849 () Bool)

(assert (=> b!1621564 m!1946849))

(assert (=> b!1621565 m!1946683))

(declare-fun m!1946851 () Bool)

(assert (=> b!1621565 m!1946851))

(assert (=> b!1621565 m!1946683))

(assert (=> b!1621565 m!1946851))

(declare-fun m!1946853 () Bool)

(assert (=> b!1621565 m!1946853))

(declare-fun m!1946855 () Bool)

(assert (=> b!1621566 m!1946855))

(assert (=> b!1621566 m!1946409))

(assert (=> b!1621171 d!488316))

(declare-fun d!488318 () Bool)

(assert (=> d!488318 (isPrefix!1387 lt!583367 (++!4705 lt!583367 lt!583380))))

(declare-fun lt!583724 () Unit!28679)

(declare-fun choose!9758 (List!17821 List!17821) Unit!28679)

(assert (=> d!488318 (= lt!583724 (choose!9758 lt!583367 lt!583380))))

(assert (=> d!488318 (= (lemmaConcatTwoListThenFirstIsPrefix!912 lt!583367 lt!583380) lt!583724)))

(declare-fun bs!394541 () Bool)

(assert (= bs!394541 d!488318))

(assert (=> bs!394541 m!1946099))

(assert (=> bs!394541 m!1946099))

(declare-fun m!1946857 () Bool)

(assert (=> bs!394541 m!1946857))

(declare-fun m!1946859 () Bool)

(assert (=> bs!394541 m!1946859))

(assert (=> b!1621171 d!488318))

(declare-fun d!488320 () Bool)

(assert (=> d!488320 (= (isEmpty!10777 rules!1846) ((_ is Nil!17754) rules!1846))))

(assert (=> b!1621170 d!488320))

(declare-fun d!488322 () Bool)

(assert (=> d!488322 (= (inv!23142 (tag!3405 (rule!4953 (h!23154 tokens!457)))) (= (mod (str.len (value!98791 (tag!3405 (rule!4953 (h!23154 tokens!457))))) 2) 0))))

(assert (=> b!1621149 d!488322))

(declare-fun d!488324 () Bool)

(declare-fun res!724329 () Bool)

(declare-fun e!1039993 () Bool)

(assert (=> d!488324 (=> (not res!724329) (not e!1039993))))

(declare-fun semiInverseModEq!1192 (Int Int) Bool)

(assert (=> d!488324 (= res!724329 (semiInverseModEq!1192 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (toValue!4554 (transformation!3127 (rule!4953 (h!23154 tokens!457))))))))

(assert (=> d!488324 (= (inv!23145 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) e!1039993)))

(declare-fun b!1621569 () Bool)

(declare-fun equivClasses!1133 (Int Int) Bool)

(assert (=> b!1621569 (= e!1039993 (equivClasses!1133 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (toValue!4554 (transformation!3127 (rule!4953 (h!23154 tokens!457))))))))

(assert (= (and d!488324 res!724329) b!1621569))

(declare-fun m!1946861 () Bool)

(assert (=> d!488324 m!1946861))

(declare-fun m!1946863 () Bool)

(assert (=> b!1621569 m!1946863))

(assert (=> b!1621149 d!488324))

(declare-fun d!488326 () Bool)

(assert (=> d!488326 (= (inv!23142 (tag!3405 (h!23155 rules!1846))) (= (mod (str.len (value!98791 (tag!3405 (h!23155 rules!1846)))) 2) 0))))

(assert (=> b!1621172 d!488326))

(declare-fun d!488328 () Bool)

(declare-fun res!724330 () Bool)

(declare-fun e!1039994 () Bool)

(assert (=> d!488328 (=> (not res!724330) (not e!1039994))))

(assert (=> d!488328 (= res!724330 (semiInverseModEq!1192 (toChars!4413 (transformation!3127 (h!23155 rules!1846))) (toValue!4554 (transformation!3127 (h!23155 rules!1846)))))))

(assert (=> d!488328 (= (inv!23145 (transformation!3127 (h!23155 rules!1846))) e!1039994)))

(declare-fun b!1621570 () Bool)

(assert (=> b!1621570 (= e!1039994 (equivClasses!1133 (toChars!4413 (transformation!3127 (h!23155 rules!1846))) (toValue!4554 (transformation!3127 (h!23155 rules!1846)))))))

(assert (= (and d!488328 res!724330) b!1621570))

(declare-fun m!1946865 () Bool)

(assert (=> d!488328 m!1946865))

(declare-fun m!1946867 () Bool)

(assert (=> b!1621570 m!1946867))

(assert (=> b!1621172 d!488328))

(declare-fun d!488330 () Bool)

(assert (=> d!488330 (= (list!6955 lt!583376) (list!6958 (c!264004 lt!583376)))))

(declare-fun bs!394542 () Bool)

(assert (= bs!394542 d!488330))

(declare-fun m!1946869 () Bool)

(assert (=> bs!394542 m!1946869))

(assert (=> b!1621151 d!488330))

(declare-fun d!488332 () Bool)

(declare-fun lt!583727 () BalanceConc!11748)

(assert (=> d!488332 (= (list!6955 lt!583727) (printList!871 thiss!17113 (list!6956 lt!583362)))))

(assert (=> d!488332 (= lt!583727 (printTailRec!809 thiss!17113 lt!583362 0 (BalanceConc!11749 Empty!5902)))))

(assert (=> d!488332 (= (print!1287 thiss!17113 lt!583362) lt!583727)))

(declare-fun bs!394543 () Bool)

(assert (= bs!394543 d!488332))

(declare-fun m!1946871 () Bool)

(assert (=> bs!394543 m!1946871))

(declare-fun m!1946873 () Bool)

(assert (=> bs!394543 m!1946873))

(assert (=> bs!394543 m!1946873))

(declare-fun m!1946875 () Bool)

(assert (=> bs!394543 m!1946875))

(assert (=> bs!394543 m!1946137))

(assert (=> b!1621151 d!488332))

(declare-fun d!488334 () Bool)

(declare-fun lt!583743 () BalanceConc!11748)

(declare-fun printListTailRec!347 (LexerInterface!2756 List!17823 List!17821) List!17821)

(declare-fun dropList!592 (BalanceConc!11750 Int) List!17823)

(assert (=> d!488334 (= (list!6955 lt!583743) (printListTailRec!347 thiss!17113 (dropList!592 lt!583362 0) (list!6955 (BalanceConc!11749 Empty!5902))))))

(declare-fun e!1040000 () BalanceConc!11748)

(assert (=> d!488334 (= lt!583743 e!1040000)))

(declare-fun c!264081 () Bool)

(assert (=> d!488334 (= c!264081 (>= 0 (size!14235 lt!583362)))))

(declare-fun e!1039999 () Bool)

(assert (=> d!488334 e!1039999))

(declare-fun res!724333 () Bool)

(assert (=> d!488334 (=> (not res!724333) (not e!1039999))))

(assert (=> d!488334 (= res!724333 (>= 0 0))))

(assert (=> d!488334 (= (printTailRec!809 thiss!17113 lt!583362 0 (BalanceConc!11749 Empty!5902)) lt!583743)))

(declare-fun b!1621577 () Bool)

(assert (=> b!1621577 (= e!1039999 (<= 0 (size!14235 lt!583362)))))

(declare-fun b!1621578 () Bool)

(assert (=> b!1621578 (= e!1040000 (BalanceConc!11749 Empty!5902))))

(declare-fun b!1621579 () Bool)

(declare-fun apply!4508 (BalanceConc!11750 Int) Token!5820)

(assert (=> b!1621579 (= e!1040000 (printTailRec!809 thiss!17113 lt!583362 (+ 0 1) (++!4706 (BalanceConc!11749 Empty!5902) (charsOf!1776 (apply!4508 lt!583362 0)))))))

(declare-fun lt!583748 () List!17823)

(assert (=> b!1621579 (= lt!583748 (list!6956 lt!583362))))

(declare-fun lt!583742 () Unit!28679)

(declare-fun lemmaDropApply!554 (List!17823 Int) Unit!28679)

(assert (=> b!1621579 (= lt!583742 (lemmaDropApply!554 lt!583748 0))))

(declare-fun head!3396 (List!17823) Token!5820)

(declare-fun drop!864 (List!17823 Int) List!17823)

(declare-fun apply!4509 (List!17823 Int) Token!5820)

(assert (=> b!1621579 (= (head!3396 (drop!864 lt!583748 0)) (apply!4509 lt!583748 0))))

(declare-fun lt!583744 () Unit!28679)

(assert (=> b!1621579 (= lt!583744 lt!583742)))

(declare-fun lt!583747 () List!17823)

(assert (=> b!1621579 (= lt!583747 (list!6956 lt!583362))))

(declare-fun lt!583746 () Unit!28679)

(declare-fun lemmaDropTail!534 (List!17823 Int) Unit!28679)

(assert (=> b!1621579 (= lt!583746 (lemmaDropTail!534 lt!583747 0))))

(declare-fun tail!2348 (List!17823) List!17823)

(assert (=> b!1621579 (= (tail!2348 (drop!864 lt!583747 0)) (drop!864 lt!583747 (+ 0 1)))))

(declare-fun lt!583745 () Unit!28679)

(assert (=> b!1621579 (= lt!583745 lt!583746)))

(assert (= (and d!488334 res!724333) b!1621577))

(assert (= (and d!488334 c!264081) b!1621578))

(assert (= (and d!488334 (not c!264081)) b!1621579))

(declare-fun m!1946877 () Bool)

(assert (=> d!488334 m!1946877))

(declare-fun m!1946879 () Bool)

(assert (=> d!488334 m!1946879))

(declare-fun m!1946881 () Bool)

(assert (=> d!488334 m!1946881))

(declare-fun m!1946883 () Bool)

(assert (=> d!488334 m!1946883))

(assert (=> d!488334 m!1946877))

(assert (=> d!488334 m!1946879))

(declare-fun m!1946885 () Bool)

(assert (=> d!488334 m!1946885))

(assert (=> b!1621577 m!1946883))

(declare-fun m!1946887 () Bool)

(assert (=> b!1621579 m!1946887))

(declare-fun m!1946889 () Bool)

(assert (=> b!1621579 m!1946889))

(declare-fun m!1946891 () Bool)

(assert (=> b!1621579 m!1946891))

(declare-fun m!1946893 () Bool)

(assert (=> b!1621579 m!1946893))

(declare-fun m!1946895 () Bool)

(assert (=> b!1621579 m!1946895))

(declare-fun m!1946897 () Bool)

(assert (=> b!1621579 m!1946897))

(assert (=> b!1621579 m!1946891))

(declare-fun m!1946899 () Bool)

(assert (=> b!1621579 m!1946899))

(declare-fun m!1946901 () Bool)

(assert (=> b!1621579 m!1946901))

(declare-fun m!1946903 () Bool)

(assert (=> b!1621579 m!1946903))

(assert (=> b!1621579 m!1946897))

(declare-fun m!1946905 () Bool)

(assert (=> b!1621579 m!1946905))

(assert (=> b!1621579 m!1946903))

(assert (=> b!1621579 m!1946873))

(declare-fun m!1946907 () Bool)

(assert (=> b!1621579 m!1946907))

(assert (=> b!1621579 m!1946905))

(declare-fun m!1946909 () Bool)

(assert (=> b!1621579 m!1946909))

(assert (=> b!1621579 m!1946899))

(assert (=> b!1621151 d!488334))

(declare-fun b!1621598 () Bool)

(declare-fun e!1040009 () Bool)

(declare-fun lt!583762 () Option!3269)

(declare-fun contains!3106 (List!17824 Rule!6054) Bool)

(assert (=> b!1621598 (= e!1040009 (contains!3106 rules!1846 (rule!4953 (_1!10053 (get!5103 lt!583762)))))))

(declare-fun b!1621599 () Bool)

(declare-fun e!1040007 () Option!3269)

(declare-fun lt!583763 () Option!3269)

(declare-fun lt!583760 () Option!3269)

(assert (=> b!1621599 (= e!1040007 (ite (and ((_ is None!3268) lt!583763) ((_ is None!3268) lt!583760)) None!3268 (ite ((_ is None!3268) lt!583760) lt!583763 (ite ((_ is None!3268) lt!583763) lt!583760 (ite (>= (size!14230 (_1!10053 (v!24279 lt!583763))) (size!14230 (_1!10053 (v!24279 lt!583760)))) lt!583763 lt!583760)))))))

(declare-fun call!105134 () Option!3269)

(assert (=> b!1621599 (= lt!583763 call!105134)))

(assert (=> b!1621599 (= lt!583760 (maxPrefix!1320 thiss!17113 (t!148747 rules!1846) lt!583366))))

(declare-fun b!1621600 () Bool)

(declare-fun e!1040008 () Bool)

(assert (=> b!1621600 (= e!1040008 e!1040009)))

(declare-fun res!724349 () Bool)

(assert (=> b!1621600 (=> (not res!724349) (not e!1040009))))

(assert (=> b!1621600 (= res!724349 (isDefined!2636 lt!583762))))

(declare-fun b!1621601 () Bool)

(declare-fun res!724353 () Bool)

(assert (=> b!1621601 (=> (not res!724353) (not e!1040009))))

(assert (=> b!1621601 (= res!724353 (= (++!4705 (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!583762)))) (_2!10053 (get!5103 lt!583762))) lt!583366))))

(declare-fun b!1621602 () Bool)

(assert (=> b!1621602 (= e!1040007 call!105134)))

(declare-fun b!1621603 () Bool)

(declare-fun res!724350 () Bool)

(assert (=> b!1621603 (=> (not res!724350) (not e!1040009))))

(assert (=> b!1621603 (= res!724350 (= (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!583762)))) (originalCharacters!3941 (_1!10053 (get!5103 lt!583762)))))))

(declare-fun bm!105129 () Bool)

(declare-fun maxPrefixOneRule!767 (LexerInterface!2756 Rule!6054 List!17821) Option!3269)

(assert (=> bm!105129 (= call!105134 (maxPrefixOneRule!767 thiss!17113 (h!23155 rules!1846) lt!583366))))

(declare-fun b!1621604 () Bool)

(declare-fun res!724348 () Bool)

(assert (=> b!1621604 (=> (not res!724348) (not e!1040009))))

(declare-fun apply!4510 (TokenValueInjection!6094 BalanceConc!11748) TokenValue!3217)

(assert (=> b!1621604 (= res!724348 (= (value!98792 (_1!10053 (get!5103 lt!583762))) (apply!4510 (transformation!3127 (rule!4953 (_1!10053 (get!5103 lt!583762)))) (seqFromList!2004 (originalCharacters!3941 (_1!10053 (get!5103 lt!583762)))))))))

(declare-fun d!488336 () Bool)

(assert (=> d!488336 e!1040008))

(declare-fun res!724352 () Bool)

(assert (=> d!488336 (=> res!724352 e!1040008)))

(declare-fun isEmpty!10784 (Option!3269) Bool)

(assert (=> d!488336 (= res!724352 (isEmpty!10784 lt!583762))))

(assert (=> d!488336 (= lt!583762 e!1040007)))

(declare-fun c!264084 () Bool)

(assert (=> d!488336 (= c!264084 (and ((_ is Cons!17754) rules!1846) ((_ is Nil!17754) (t!148747 rules!1846))))))

(declare-fun lt!583761 () Unit!28679)

(declare-fun lt!583759 () Unit!28679)

(assert (=> d!488336 (= lt!583761 lt!583759)))

(assert (=> d!488336 (isPrefix!1387 lt!583366 lt!583366)))

(assert (=> d!488336 (= lt!583759 (lemmaIsPrefixRefl!952 lt!583366 lt!583366))))

(assert (=> d!488336 (rulesValidInductive!964 thiss!17113 rules!1846)))

(assert (=> d!488336 (= (maxPrefix!1320 thiss!17113 rules!1846 lt!583366) lt!583762)))

(declare-fun b!1621605 () Bool)

(declare-fun res!724351 () Bool)

(assert (=> b!1621605 (=> (not res!724351) (not e!1040009))))

(assert (=> b!1621605 (= res!724351 (< (size!14233 (_2!10053 (get!5103 lt!583762))) (size!14233 lt!583366)))))

(declare-fun b!1621606 () Bool)

(declare-fun res!724354 () Bool)

(assert (=> b!1621606 (=> (not res!724354) (not e!1040009))))

(assert (=> b!1621606 (= res!724354 (matchR!1954 (regex!3127 (rule!4953 (_1!10053 (get!5103 lt!583762)))) (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!583762))))))))

(assert (= (and d!488336 c!264084) b!1621602))

(assert (= (and d!488336 (not c!264084)) b!1621599))

(assert (= (or b!1621602 b!1621599) bm!105129))

(assert (= (and d!488336 (not res!724352)) b!1621600))

(assert (= (and b!1621600 res!724349) b!1621603))

(assert (= (and b!1621603 res!724350) b!1621605))

(assert (= (and b!1621605 res!724351) b!1621601))

(assert (= (and b!1621601 res!724353) b!1621604))

(assert (= (and b!1621604 res!724348) b!1621606))

(assert (= (and b!1621606 res!724354) b!1621598))

(declare-fun m!1946911 () Bool)

(assert (=> b!1621599 m!1946911))

(declare-fun m!1946913 () Bool)

(assert (=> b!1621600 m!1946913))

(declare-fun m!1946915 () Bool)

(assert (=> b!1621605 m!1946915))

(declare-fun m!1946917 () Bool)

(assert (=> b!1621605 m!1946917))

(declare-fun m!1946919 () Bool)

(assert (=> b!1621605 m!1946919))

(declare-fun m!1946921 () Bool)

(assert (=> bm!105129 m!1946921))

(assert (=> b!1621603 m!1946915))

(declare-fun m!1946923 () Bool)

(assert (=> b!1621603 m!1946923))

(assert (=> b!1621603 m!1946923))

(declare-fun m!1946925 () Bool)

(assert (=> b!1621603 m!1946925))

(assert (=> b!1621606 m!1946915))

(assert (=> b!1621606 m!1946923))

(assert (=> b!1621606 m!1946923))

(assert (=> b!1621606 m!1946925))

(assert (=> b!1621606 m!1946925))

(declare-fun m!1946927 () Bool)

(assert (=> b!1621606 m!1946927))

(assert (=> b!1621601 m!1946915))

(assert (=> b!1621601 m!1946923))

(assert (=> b!1621601 m!1946923))

(assert (=> b!1621601 m!1946925))

(assert (=> b!1621601 m!1946925))

(declare-fun m!1946929 () Bool)

(assert (=> b!1621601 m!1946929))

(assert (=> b!1621604 m!1946915))

(declare-fun m!1946931 () Bool)

(assert (=> b!1621604 m!1946931))

(assert (=> b!1621604 m!1946931))

(declare-fun m!1946933 () Bool)

(assert (=> b!1621604 m!1946933))

(declare-fun m!1946935 () Bool)

(assert (=> d!488336 m!1946935))

(declare-fun m!1946937 () Bool)

(assert (=> d!488336 m!1946937))

(declare-fun m!1946939 () Bool)

(assert (=> d!488336 m!1946939))

(assert (=> d!488336 m!1946651))

(assert (=> b!1621598 m!1946915))

(declare-fun m!1946941 () Bool)

(assert (=> b!1621598 m!1946941))

(assert (=> b!1621151 d!488336))

(declare-fun d!488338 () Bool)

(declare-fun c!264087 () Bool)

(assert (=> d!488338 (= c!264087 ((_ is Cons!17753) (Cons!17753 (h!23154 tokens!457) Nil!17753)))))

(declare-fun e!1040012 () List!17821)

(assert (=> d!488338 (= (printList!871 thiss!17113 (Cons!17753 (h!23154 tokens!457) Nil!17753)) e!1040012)))

(declare-fun b!1621611 () Bool)

(assert (=> b!1621611 (= e!1040012 (++!4705 (list!6955 (charsOf!1776 (h!23154 (Cons!17753 (h!23154 tokens!457) Nil!17753)))) (printList!871 thiss!17113 (t!148746 (Cons!17753 (h!23154 tokens!457) Nil!17753)))))))

(declare-fun b!1621612 () Bool)

(assert (=> b!1621612 (= e!1040012 Nil!17751)))

(assert (= (and d!488338 c!264087) b!1621611))

(assert (= (and d!488338 (not c!264087)) b!1621612))

(declare-fun m!1946943 () Bool)

(assert (=> b!1621611 m!1946943))

(assert (=> b!1621611 m!1946943))

(declare-fun m!1946945 () Bool)

(assert (=> b!1621611 m!1946945))

(declare-fun m!1946947 () Bool)

(assert (=> b!1621611 m!1946947))

(assert (=> b!1621611 m!1946945))

(assert (=> b!1621611 m!1946947))

(declare-fun m!1946949 () Bool)

(assert (=> b!1621611 m!1946949))

(assert (=> b!1621151 d!488338))

(declare-fun d!488340 () Bool)

(declare-fun e!1040015 () Bool)

(assert (=> d!488340 e!1040015))

(declare-fun res!724357 () Bool)

(assert (=> d!488340 (=> (not res!724357) (not e!1040015))))

(declare-fun lt!583766 () BalanceConc!11750)

(assert (=> d!488340 (= res!724357 (= (list!6956 lt!583766) (Cons!17753 (h!23154 tokens!457) Nil!17753)))))

(declare-fun singleton!654 (Token!5820) BalanceConc!11750)

(assert (=> d!488340 (= lt!583766 (singleton!654 (h!23154 tokens!457)))))

(assert (=> d!488340 (= (singletonSeq!1532 (h!23154 tokens!457)) lt!583766)))

(declare-fun b!1621615 () Bool)

(declare-fun isBalanced!1774 (Conc!5903) Bool)

(assert (=> b!1621615 (= e!1040015 (isBalanced!1774 (c!264005 lt!583766)))))

(assert (= (and d!488340 res!724357) b!1621615))

(declare-fun m!1946951 () Bool)

(assert (=> d!488340 m!1946951))

(declare-fun m!1946953 () Bool)

(assert (=> d!488340 m!1946953))

(declare-fun m!1946955 () Bool)

(assert (=> b!1621615 m!1946955))

(assert (=> b!1621151 d!488340))

(declare-fun d!488342 () Bool)

(declare-fun c!264092 () Bool)

(assert (=> d!488342 (= c!264092 ((_ is IntegerValue!9651) (value!98792 (h!23154 tokens!457))))))

(declare-fun e!1040023 () Bool)

(assert (=> d!488342 (= (inv!21 (value!98792 (h!23154 tokens!457))) e!1040023)))

(declare-fun b!1621626 () Bool)

(declare-fun e!1040022 () Bool)

(declare-fun inv!17 (TokenValue!3217) Bool)

(assert (=> b!1621626 (= e!1040022 (inv!17 (value!98792 (h!23154 tokens!457))))))

(declare-fun b!1621627 () Bool)

(declare-fun inv!16 (TokenValue!3217) Bool)

(assert (=> b!1621627 (= e!1040023 (inv!16 (value!98792 (h!23154 tokens!457))))))

(declare-fun b!1621628 () Bool)

(declare-fun res!724360 () Bool)

(declare-fun e!1040024 () Bool)

(assert (=> b!1621628 (=> res!724360 e!1040024)))

(assert (=> b!1621628 (= res!724360 (not ((_ is IntegerValue!9653) (value!98792 (h!23154 tokens!457)))))))

(assert (=> b!1621628 (= e!1040022 e!1040024)))

(declare-fun b!1621629 () Bool)

(declare-fun inv!15 (TokenValue!3217) Bool)

(assert (=> b!1621629 (= e!1040024 (inv!15 (value!98792 (h!23154 tokens!457))))))

(declare-fun b!1621630 () Bool)

(assert (=> b!1621630 (= e!1040023 e!1040022)))

(declare-fun c!264093 () Bool)

(assert (=> b!1621630 (= c!264093 ((_ is IntegerValue!9652) (value!98792 (h!23154 tokens!457))))))

(assert (= (and d!488342 c!264092) b!1621627))

(assert (= (and d!488342 (not c!264092)) b!1621630))

(assert (= (and b!1621630 c!264093) b!1621626))

(assert (= (and b!1621630 (not c!264093)) b!1621628))

(assert (= (and b!1621628 (not res!724360)) b!1621629))

(declare-fun m!1946957 () Bool)

(assert (=> b!1621626 m!1946957))

(declare-fun m!1946959 () Bool)

(assert (=> b!1621627 m!1946959))

(declare-fun m!1946961 () Bool)

(assert (=> b!1621629 m!1946961))

(assert (=> b!1621152 d!488342))

(declare-fun d!488344 () Bool)

(declare-fun e!1040027 () Bool)

(assert (=> d!488344 e!1040027))

(declare-fun res!724363 () Bool)

(assert (=> d!488344 (=> (not res!724363) (not e!1040027))))

(declare-fun prepend!647 (Conc!5903 Token!5820) Conc!5903)

(assert (=> d!488344 (= res!724363 (isBalanced!1774 (prepend!647 (c!264005 (seqFromList!2003 (t!148746 (t!148746 tokens!457)))) (h!23154 (t!148746 tokens!457)))))))

(declare-fun lt!583769 () BalanceConc!11750)

(assert (=> d!488344 (= lt!583769 (BalanceConc!11751 (prepend!647 (c!264005 (seqFromList!2003 (t!148746 (t!148746 tokens!457)))) (h!23154 (t!148746 tokens!457)))))))

(assert (=> d!488344 (= (prepend!645 (seqFromList!2003 (t!148746 (t!148746 tokens!457))) (h!23154 (t!148746 tokens!457))) lt!583769)))

(declare-fun b!1621633 () Bool)

(assert (=> b!1621633 (= e!1040027 (= (list!6956 lt!583769) (Cons!17753 (h!23154 (t!148746 tokens!457)) (list!6956 (seqFromList!2003 (t!148746 (t!148746 tokens!457)))))))))

(assert (= (and d!488344 res!724363) b!1621633))

(declare-fun m!1946963 () Bool)

(assert (=> d!488344 m!1946963))

(assert (=> d!488344 m!1946963))

(declare-fun m!1946965 () Bool)

(assert (=> d!488344 m!1946965))

(declare-fun m!1946967 () Bool)

(assert (=> b!1621633 m!1946967))

(assert (=> b!1621633 m!1946131))

(declare-fun m!1946969 () Bool)

(assert (=> b!1621633 m!1946969))

(assert (=> b!1621173 d!488344))

(declare-fun d!488346 () Bool)

(assert (=> d!488346 (= (list!6956 (prepend!645 (seqFromList!2003 (t!148746 (t!148746 tokens!457))) (h!23154 (t!148746 tokens!457)))) (list!6960 (c!264005 (prepend!645 (seqFromList!2003 (t!148746 (t!148746 tokens!457))) (h!23154 (t!148746 tokens!457))))))))

(declare-fun bs!394544 () Bool)

(assert (= bs!394544 d!488346))

(declare-fun m!1946971 () Bool)

(assert (=> bs!394544 m!1946971))

(assert (=> b!1621173 d!488346))

(declare-fun d!488348 () Bool)

(assert (=> d!488348 (= (list!6956 (_1!10054 lt!583368)) (list!6956 (prepend!645 (seqFromList!2003 (t!148746 (t!148746 tokens!457))) (h!23154 (t!148746 tokens!457)))))))

(declare-fun lt!583772 () Unit!28679)

(declare-fun choose!9759 (Token!5820 List!17823 BalanceConc!11750) Unit!28679)

(assert (=> d!488348 (= lt!583772 (choose!9759 (h!23154 (t!148746 tokens!457)) (t!148746 (t!148746 tokens!457)) (_1!10054 lt!583368)))))

(declare-fun $colon$colon!321 (List!17823 Token!5820) List!17823)

(assert (=> d!488348 (= (list!6956 (_1!10054 lt!583368)) (list!6956 (seqFromList!2003 ($colon$colon!321 (t!148746 (t!148746 tokens!457)) (h!23154 (t!148746 tokens!457))))))))

(assert (=> d!488348 (= (seqFromListBHdTlConstructive!204 (h!23154 (t!148746 tokens!457)) (t!148746 (t!148746 tokens!457)) (_1!10054 lt!583368)) lt!583772)))

(declare-fun bs!394545 () Bool)

(assert (= bs!394545 d!488348))

(declare-fun m!1946973 () Bool)

(assert (=> bs!394545 m!1946973))

(declare-fun m!1946975 () Bool)

(assert (=> bs!394545 m!1946975))

(assert (=> bs!394545 m!1946131))

(assert (=> bs!394545 m!1946133))

(assert (=> bs!394545 m!1946975))

(declare-fun m!1946977 () Bool)

(assert (=> bs!394545 m!1946977))

(assert (=> bs!394545 m!1946131))

(assert (=> bs!394545 m!1946973))

(declare-fun m!1946979 () Bool)

(assert (=> bs!394545 m!1946979))

(assert (=> bs!394545 m!1946133))

(assert (=> bs!394545 m!1946135))

(assert (=> bs!394545 m!1946083))

(assert (=> b!1621173 d!488348))

(declare-fun d!488350 () Bool)

(declare-fun fromListB!878 (List!17823) BalanceConc!11750)

(assert (=> d!488350 (= (seqFromList!2003 (t!148746 (t!148746 tokens!457))) (fromListB!878 (t!148746 (t!148746 tokens!457))))))

(declare-fun bs!394546 () Bool)

(assert (= bs!394546 d!488350))

(declare-fun m!1946981 () Bool)

(assert (=> bs!394546 m!1946981))

(assert (=> b!1621173 d!488350))

(declare-fun d!488352 () Bool)

(assert (=> d!488352 (= (list!6956 lt!583371) (list!6960 (c!264005 lt!583371)))))

(declare-fun bs!394547 () Bool)

(assert (= bs!394547 d!488352))

(declare-fun m!1946983 () Bool)

(assert (=> bs!394547 m!1946983))

(assert (=> b!1621173 d!488352))

(declare-fun b!1621675 () Bool)

(declare-fun e!1040058 () Bool)

(assert (=> b!1621675 (= e!1040058 true)))

(declare-fun b!1621674 () Bool)

(declare-fun e!1040057 () Bool)

(assert (=> b!1621674 (= e!1040057 e!1040058)))

(declare-fun b!1621673 () Bool)

(declare-fun e!1040056 () Bool)

(assert (=> b!1621673 (= e!1040056 e!1040057)))

(declare-fun d!488354 () Bool)

(assert (=> d!488354 e!1040056))

(assert (= b!1621674 b!1621675))

(assert (= b!1621673 b!1621674))

(assert (= (and d!488354 ((_ is Cons!17754) rules!1846)) b!1621673))

(declare-fun order!10531 () Int)

(declare-fun lambda!67210 () Int)

(declare-fun order!10533 () Int)

(declare-fun dynLambda!7925 (Int Int) Int)

(declare-fun dynLambda!7926 (Int Int) Int)

(assert (=> b!1621675 (< (dynLambda!7925 order!10531 (toValue!4554 (transformation!3127 (h!23155 rules!1846)))) (dynLambda!7926 order!10533 lambda!67210))))

(declare-fun order!10535 () Int)

(declare-fun dynLambda!7927 (Int Int) Int)

(assert (=> b!1621675 (< (dynLambda!7927 order!10535 (toChars!4413 (transformation!3127 (h!23155 rules!1846)))) (dynLambda!7926 order!10533 lambda!67210))))

(assert (=> d!488354 true))

(declare-fun lt!583777 () Bool)

(declare-fun forall!4074 (List!17823 Int) Bool)

(assert (=> d!488354 (= lt!583777 (forall!4074 tokens!457 lambda!67210))))

(declare-fun e!1040048 () Bool)

(assert (=> d!488354 (= lt!583777 e!1040048)))

(declare-fun res!724372 () Bool)

(assert (=> d!488354 (=> res!724372 e!1040048)))

(assert (=> d!488354 (= res!724372 (not ((_ is Cons!17753) tokens!457)))))

(assert (=> d!488354 (not (isEmpty!10777 rules!1846))))

(assert (=> d!488354 (= (rulesProduceEachTokenIndividuallyList!958 thiss!17113 rules!1846 tokens!457) lt!583777)))

(declare-fun b!1621663 () Bool)

(declare-fun e!1040049 () Bool)

(assert (=> b!1621663 (= e!1040048 e!1040049)))

(declare-fun res!724373 () Bool)

(assert (=> b!1621663 (=> (not res!724373) (not e!1040049))))

(assert (=> b!1621663 (= res!724373 (rulesProduceIndividualToken!1408 thiss!17113 rules!1846 (h!23154 tokens!457)))))

(declare-fun b!1621664 () Bool)

(assert (=> b!1621664 (= e!1040049 (rulesProduceEachTokenIndividuallyList!958 thiss!17113 rules!1846 (t!148746 tokens!457)))))

(assert (= (and d!488354 (not res!724372)) b!1621663))

(assert (= (and b!1621663 res!724373) b!1621664))

(declare-fun m!1947015 () Bool)

(assert (=> d!488354 m!1947015))

(assert (=> d!488354 m!1946057))

(assert (=> b!1621663 m!1946043))

(declare-fun m!1947017 () Bool)

(assert (=> b!1621664 m!1947017))

(assert (=> b!1621174 d!488354))

(declare-fun d!488366 () Bool)

(declare-fun lt!583778 () BalanceConc!11748)

(assert (=> d!488366 (= (list!6955 lt!583778) (printList!871 thiss!17113 (list!6956 (seqFromList!2003 tokens!457))))))

(assert (=> d!488366 (= lt!583778 (printTailRec!809 thiss!17113 (seqFromList!2003 tokens!457) 0 (BalanceConc!11749 Empty!5902)))))

(assert (=> d!488366 (= (print!1287 thiss!17113 (seqFromList!2003 tokens!457)) lt!583778)))

(declare-fun bs!394550 () Bool)

(assert (= bs!394550 d!488366))

(declare-fun m!1947019 () Bool)

(assert (=> bs!394550 m!1947019))

(assert (=> bs!394550 m!1946101))

(declare-fun m!1947021 () Bool)

(assert (=> bs!394550 m!1947021))

(assert (=> bs!394550 m!1947021))

(declare-fun m!1947023 () Bool)

(assert (=> bs!394550 m!1947023))

(assert (=> bs!394550 m!1946101))

(declare-fun m!1947025 () Bool)

(assert (=> bs!394550 m!1947025))

(assert (=> b!1621153 d!488366))

(declare-fun d!488368 () Bool)

(declare-fun lt!583779 () BalanceConc!11748)

(assert (=> d!488368 (= (list!6955 lt!583779) (printList!871 thiss!17113 (list!6956 lt!583371)))))

(assert (=> d!488368 (= lt!583779 (printTailRec!809 thiss!17113 lt!583371 0 (BalanceConc!11749 Empty!5902)))))

(assert (=> d!488368 (= (print!1287 thiss!17113 lt!583371) lt!583779)))

(declare-fun bs!394551 () Bool)

(assert (= bs!394551 d!488368))

(declare-fun m!1947027 () Bool)

(assert (=> bs!394551 m!1947027))

(assert (=> bs!394551 m!1946129))

(assert (=> bs!394551 m!1946129))

(declare-fun m!1947029 () Bool)

(assert (=> bs!394551 m!1947029))

(declare-fun m!1947031 () Bool)

(assert (=> bs!394551 m!1947031))

(assert (=> b!1621153 d!488368))

(declare-fun d!488370 () Bool)

(assert (=> d!488370 (= (list!6955 lt!583358) (list!6958 (c!264004 lt!583358)))))

(declare-fun bs!394552 () Bool)

(assert (= bs!394552 d!488370))

(declare-fun m!1947033 () Bool)

(assert (=> bs!394552 m!1947033))

(assert (=> b!1621153 d!488370))

(declare-fun lt!583780 () List!17821)

(declare-fun b!1621681 () Bool)

(declare-fun e!1040059 () Bool)

(assert (=> b!1621681 (= e!1040059 (or (not (= lt!583380 Nil!17751)) (= lt!583780 lt!583367)))))

(declare-fun b!1621680 () Bool)

(declare-fun res!724374 () Bool)

(assert (=> b!1621680 (=> (not res!724374) (not e!1040059))))

(assert (=> b!1621680 (= res!724374 (= (size!14233 lt!583780) (+ (size!14233 lt!583367) (size!14233 lt!583380))))))

(declare-fun b!1621679 () Bool)

(declare-fun e!1040060 () List!17821)

(assert (=> b!1621679 (= e!1040060 (Cons!17751 (h!23152 lt!583367) (++!4705 (t!148744 lt!583367) lt!583380)))))

(declare-fun b!1621678 () Bool)

(assert (=> b!1621678 (= e!1040060 lt!583380)))

(declare-fun d!488372 () Bool)

(assert (=> d!488372 e!1040059))

(declare-fun res!724375 () Bool)

(assert (=> d!488372 (=> (not res!724375) (not e!1040059))))

(assert (=> d!488372 (= res!724375 (= (content!2463 lt!583780) ((_ map or) (content!2463 lt!583367) (content!2463 lt!583380))))))

(assert (=> d!488372 (= lt!583780 e!1040060)))

(declare-fun c!264099 () Bool)

(assert (=> d!488372 (= c!264099 ((_ is Nil!17751) lt!583367))))

(assert (=> d!488372 (= (++!4705 lt!583367 lt!583380) lt!583780)))

(assert (= (and d!488372 c!264099) b!1621678))

(assert (= (and d!488372 (not c!264099)) b!1621679))

(assert (= (and d!488372 res!724375) b!1621680))

(assert (= (and b!1621680 res!724374) b!1621681))

(declare-fun m!1947035 () Bool)

(assert (=> b!1621680 m!1947035))

(assert (=> b!1621680 m!1946409))

(declare-fun m!1947037 () Bool)

(assert (=> b!1621680 m!1947037))

(declare-fun m!1947039 () Bool)

(assert (=> b!1621679 m!1947039))

(declare-fun m!1947041 () Bool)

(assert (=> d!488372 m!1947041))

(assert (=> d!488372 m!1946417))

(declare-fun m!1947043 () Bool)

(assert (=> d!488372 m!1947043))

(assert (=> b!1621153 d!488372))

(declare-fun d!488374 () Bool)

(assert (=> d!488374 (= (seqFromList!2003 tokens!457) (fromListB!878 tokens!457))))

(declare-fun bs!394553 () Bool)

(assert (= bs!394553 d!488374))

(declare-fun m!1947045 () Bool)

(assert (=> bs!394553 m!1947045))

(assert (=> b!1621153 d!488374))

(declare-fun d!488376 () Bool)

(declare-fun lt!583781 () BalanceConc!11748)

(assert (=> d!488376 (= (list!6955 lt!583781) (originalCharacters!3941 (h!23154 tokens!457)))))

(assert (=> d!488376 (= lt!583781 (dynLambda!7921 (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (value!98792 (h!23154 tokens!457))))))

(assert (=> d!488376 (= (charsOf!1776 (h!23154 tokens!457)) lt!583781)))

(declare-fun b_lambda!51115 () Bool)

(assert (=> (not b_lambda!51115) (not d!488376)))

(assert (=> d!488376 t!148750))

(declare-fun b_and!115017 () Bool)

(assert (= b_and!115005 (and (=> t!148750 result!112314) b_and!115017)))

(assert (=> d!488376 t!148752))

(declare-fun b_and!115019 () Bool)

(assert (= b_and!115007 (and (=> t!148752 result!112318) b_and!115019)))

(declare-fun m!1947047 () Bool)

(assert (=> d!488376 m!1947047))

(assert (=> d!488376 m!1946203))

(assert (=> b!1621153 d!488376))

(declare-fun d!488378 () Bool)

(assert (=> d!488378 (= (seqFromList!2003 (t!148746 tokens!457)) (fromListB!878 (t!148746 tokens!457)))))

(declare-fun bs!394554 () Bool)

(assert (= bs!394554 d!488378))

(declare-fun m!1947049 () Bool)

(assert (=> bs!394554 m!1947049))

(assert (=> b!1621153 d!488378))

(declare-fun d!488380 () Bool)

(assert (=> d!488380 (= (list!6955 lt!583379) (list!6958 (c!264004 lt!583379)))))

(declare-fun bs!394555 () Bool)

(assert (= bs!394555 d!488380))

(declare-fun m!1947051 () Bool)

(assert (=> bs!394555 m!1947051))

(assert (=> b!1621153 d!488380))

(declare-fun d!488382 () Bool)

(assert (=> d!488382 (= (list!6955 lt!583383) (list!6958 (c!264004 lt!583383)))))

(declare-fun bs!394556 () Bool)

(assert (= bs!394556 d!488382))

(declare-fun m!1947053 () Bool)

(assert (=> bs!394556 m!1947053))

(assert (=> b!1621153 d!488382))

(declare-fun b!1621682 () Bool)

(declare-fun e!1040061 () Bool)

(declare-fun lt!583782 () tuple2!17304)

(assert (=> b!1621682 (= e!1040061 (= (_2!10054 lt!583782) lt!583358))))

(declare-fun b!1621683 () Bool)

(declare-fun e!1040063 () Bool)

(assert (=> b!1621683 (= e!1040063 (= (list!6955 (_2!10054 lt!583782)) (_2!10056 (lexList!820 thiss!17113 rules!1846 (list!6955 lt!583358)))))))

(declare-fun b!1621685 () Bool)

(declare-fun res!724378 () Bool)

(assert (=> b!1621685 (=> (not res!724378) (not e!1040063))))

(assert (=> b!1621685 (= res!724378 (= (list!6956 (_1!10054 lt!583782)) (_1!10056 (lexList!820 thiss!17113 rules!1846 (list!6955 lt!583358)))))))

(declare-fun b!1621686 () Bool)

(declare-fun e!1040062 () Bool)

(assert (=> b!1621686 (= e!1040061 e!1040062)))

(declare-fun res!724377 () Bool)

(assert (=> b!1621686 (= res!724377 (< (size!14234 (_2!10054 lt!583782)) (size!14234 lt!583358)))))

(assert (=> b!1621686 (=> (not res!724377) (not e!1040062))))

(declare-fun b!1621684 () Bool)

(assert (=> b!1621684 (= e!1040062 (not (isEmpty!10775 (_1!10054 lt!583782))))))

(declare-fun d!488384 () Bool)

(assert (=> d!488384 e!1040063))

(declare-fun res!724376 () Bool)

(assert (=> d!488384 (=> (not res!724376) (not e!1040063))))

(assert (=> d!488384 (= res!724376 e!1040061)))

(declare-fun c!264100 () Bool)

(assert (=> d!488384 (= c!264100 (> (size!14235 (_1!10054 lt!583782)) 0))))

(assert (=> d!488384 (= lt!583782 (lexTailRecV2!543 thiss!17113 rules!1846 lt!583358 (BalanceConc!11749 Empty!5902) lt!583358 (BalanceConc!11751 Empty!5903)))))

(assert (=> d!488384 (= (lex!1240 thiss!17113 rules!1846 lt!583358) lt!583782)))

(assert (= (and d!488384 c!264100) b!1621686))

(assert (= (and d!488384 (not c!264100)) b!1621682))

(assert (= (and b!1621686 res!724377) b!1621684))

(assert (= (and d!488384 res!724376) b!1621685))

(assert (= (and b!1621685 res!724378) b!1621683))

(declare-fun m!1947055 () Bool)

(assert (=> b!1621686 m!1947055))

(declare-fun m!1947057 () Bool)

(assert (=> b!1621686 m!1947057))

(declare-fun m!1947059 () Bool)

(assert (=> b!1621684 m!1947059))

(declare-fun m!1947061 () Bool)

(assert (=> b!1621683 m!1947061))

(assert (=> b!1621683 m!1946105))

(assert (=> b!1621683 m!1946105))

(declare-fun m!1947063 () Bool)

(assert (=> b!1621683 m!1947063))

(declare-fun m!1947065 () Bool)

(assert (=> d!488384 m!1947065))

(declare-fun m!1947067 () Bool)

(assert (=> d!488384 m!1947067))

(declare-fun m!1947069 () Bool)

(assert (=> b!1621685 m!1947069))

(assert (=> b!1621685 m!1946105))

(assert (=> b!1621685 m!1946105))

(assert (=> b!1621685 m!1947063))

(assert (=> b!1621153 d!488384))

(declare-fun d!488386 () Bool)

(declare-fun res!724381 () Bool)

(declare-fun e!1040068 () Bool)

(assert (=> d!488386 (=> (not res!724381) (not e!1040068))))

(declare-fun rulesValid!1120 (LexerInterface!2756 List!17824) Bool)

(assert (=> d!488386 (= res!724381 (rulesValid!1120 thiss!17113 rules!1846))))

(assert (=> d!488386 (= (rulesInvariant!2425 thiss!17113 rules!1846) e!1040068)))

(declare-fun b!1621693 () Bool)

(declare-datatypes ((List!17830 0))(
  ( (Nil!17760) (Cons!17760 (h!23161 String!20417) (t!148795 List!17830)) )
))
(declare-fun noDuplicateTag!1120 (LexerInterface!2756 List!17824 List!17830) Bool)

(assert (=> b!1621693 (= e!1040068 (noDuplicateTag!1120 thiss!17113 rules!1846 Nil!17760))))

(assert (= (and d!488386 res!724381) b!1621693))

(declare-fun m!1947071 () Bool)

(assert (=> d!488386 m!1947071))

(declare-fun m!1947073 () Bool)

(assert (=> b!1621693 m!1947073))

(assert (=> b!1621165 d!488386))

(declare-fun d!488388 () Bool)

(declare-fun lt!583871 () Bool)

(declare-fun e!1040086 () Bool)

(assert (=> d!488388 (= lt!583871 e!1040086)))

(declare-fun res!724405 () Bool)

(assert (=> d!488388 (=> (not res!724405) (not e!1040086))))

(assert (=> d!488388 (= res!724405 (= (list!6956 (_1!10054 (lex!1240 thiss!17113 rules!1846 (print!1287 thiss!17113 (singletonSeq!1532 (h!23154 tokens!457)))))) (list!6956 (singletonSeq!1532 (h!23154 tokens!457)))))))

(declare-fun e!1040087 () Bool)

(assert (=> d!488388 (= lt!583871 e!1040087)))

(declare-fun res!724403 () Bool)

(assert (=> d!488388 (=> (not res!724403) (not e!1040087))))

(declare-fun lt!583872 () tuple2!17304)

(assert (=> d!488388 (= res!724403 (= (size!14235 (_1!10054 lt!583872)) 1))))

(assert (=> d!488388 (= lt!583872 (lex!1240 thiss!17113 rules!1846 (print!1287 thiss!17113 (singletonSeq!1532 (h!23154 tokens!457)))))))

(assert (=> d!488388 (not (isEmpty!10777 rules!1846))))

(assert (=> d!488388 (= (rulesProduceIndividualToken!1408 thiss!17113 rules!1846 (h!23154 tokens!457)) lt!583871)))

(declare-fun b!1621717 () Bool)

(declare-fun res!724404 () Bool)

(assert (=> b!1621717 (=> (not res!724404) (not e!1040087))))

(assert (=> b!1621717 (= res!724404 (= (apply!4508 (_1!10054 lt!583872) 0) (h!23154 tokens!457)))))

(declare-fun b!1621718 () Bool)

(assert (=> b!1621718 (= e!1040087 (isEmpty!10782 (_2!10054 lt!583872)))))

(declare-fun b!1621719 () Bool)

(assert (=> b!1621719 (= e!1040086 (isEmpty!10782 (_2!10054 (lex!1240 thiss!17113 rules!1846 (print!1287 thiss!17113 (singletonSeq!1532 (h!23154 tokens!457)))))))))

(assert (= (and d!488388 res!724403) b!1621717))

(assert (= (and b!1621717 res!724404) b!1621718))

(assert (= (and d!488388 res!724405) b!1621719))

(assert (=> d!488388 m!1946145))

(assert (=> d!488388 m!1946145))

(declare-fun m!1947161 () Bool)

(assert (=> d!488388 m!1947161))

(assert (=> d!488388 m!1947161))

(declare-fun m!1947163 () Bool)

(assert (=> d!488388 m!1947163))

(declare-fun m!1947165 () Bool)

(assert (=> d!488388 m!1947165))

(assert (=> d!488388 m!1946145))

(declare-fun m!1947167 () Bool)

(assert (=> d!488388 m!1947167))

(declare-fun m!1947169 () Bool)

(assert (=> d!488388 m!1947169))

(assert (=> d!488388 m!1946057))

(declare-fun m!1947171 () Bool)

(assert (=> b!1621717 m!1947171))

(declare-fun m!1947173 () Bool)

(assert (=> b!1621718 m!1947173))

(assert (=> b!1621719 m!1946145))

(assert (=> b!1621719 m!1946145))

(assert (=> b!1621719 m!1947161))

(assert (=> b!1621719 m!1947161))

(assert (=> b!1621719 m!1947163))

(declare-fun m!1947175 () Bool)

(assert (=> b!1621719 m!1947175))

(assert (=> b!1621167 d!488388))

(declare-fun d!488396 () Bool)

(assert (=> d!488396 (= (isDefined!2636 lt!583378) (not (isEmpty!10784 lt!583378)))))

(declare-fun bs!394558 () Bool)

(assert (= bs!394558 d!488396))

(declare-fun m!1947177 () Bool)

(assert (=> bs!394558 m!1947177))

(assert (=> b!1621166 d!488396))

(declare-fun b!1621799 () Bool)

(declare-fun e!1040145 () Unit!28679)

(declare-fun Unit!28714 () Unit!28679)

(assert (=> b!1621799 (= e!1040145 Unit!28714)))

(declare-fun lt!583963 () List!17821)

(assert (=> b!1621799 (= lt!583963 (++!4705 lt!583367 lt!583380))))

(declare-fun lt!583967 () Unit!28679)

(declare-fun lt!583961 () Token!5820)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!170 (LexerInterface!2756 Rule!6054 List!17824 List!17821) Unit!28679)

(assert (=> b!1621799 (= lt!583967 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!170 thiss!17113 (rule!4953 lt!583961) rules!1846 lt!583963))))

(assert (=> b!1621799 (isEmpty!10784 (maxPrefixOneRule!767 thiss!17113 (rule!4953 lt!583961) lt!583963))))

(declare-fun lt!583969 () Unit!28679)

(assert (=> b!1621799 (= lt!583969 lt!583967)))

(declare-fun lt!583968 () List!17821)

(assert (=> b!1621799 (= lt!583968 (list!6955 (charsOf!1776 lt!583961)))))

(declare-fun lt!583960 () Unit!28679)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!166 (LexerInterface!2756 Rule!6054 List!17821 List!17821) Unit!28679)

(assert (=> b!1621799 (= lt!583960 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!166 thiss!17113 (rule!4953 lt!583961) lt!583968 (++!4705 lt!583367 lt!583380)))))

(assert (=> b!1621799 (not (matchR!1954 (regex!3127 (rule!4953 lt!583961)) lt!583968))))

(declare-fun lt!583962 () Unit!28679)

(assert (=> b!1621799 (= lt!583962 lt!583960)))

(assert (=> b!1621799 false))

(declare-fun d!488398 () Bool)

(assert (=> d!488398 (isDefined!2636 (maxPrefix!1320 thiss!17113 rules!1846 (++!4705 lt!583367 lt!583380)))))

(declare-fun lt!583958 () Unit!28679)

(assert (=> d!488398 (= lt!583958 e!1040145)))

(declare-fun c!264110 () Bool)

(assert (=> d!488398 (= c!264110 (isEmpty!10784 (maxPrefix!1320 thiss!17113 rules!1846 (++!4705 lt!583367 lt!583380))))))

(declare-fun lt!583965 () Unit!28679)

(declare-fun lt!583971 () Unit!28679)

(assert (=> d!488398 (= lt!583965 lt!583971)))

(declare-fun e!1040146 () Bool)

(assert (=> d!488398 e!1040146))

(declare-fun res!724438 () Bool)

(assert (=> d!488398 (=> (not res!724438) (not e!1040146))))

(declare-datatypes ((Option!3272 0))(
  ( (None!3271) (Some!3271 (v!24288 Rule!6054)) )
))
(declare-fun isDefined!2639 (Option!3272) Bool)

(declare-fun getRuleFromTag!276 (LexerInterface!2756 List!17824 String!20417) Option!3272)

(assert (=> d!488398 (= res!724438 (isDefined!2639 (getRuleFromTag!276 thiss!17113 rules!1846 (tag!3405 (rule!4953 lt!583961)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!276 (LexerInterface!2756 List!17824 List!17821 Token!5820) Unit!28679)

(assert (=> d!488398 (= lt!583971 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!276 thiss!17113 rules!1846 lt!583367 lt!583961))))

(declare-fun lt!583966 () Unit!28679)

(declare-fun lt!583959 () Unit!28679)

(assert (=> d!488398 (= lt!583966 lt!583959)))

(declare-fun lt!583957 () List!17821)

(assert (=> d!488398 (isPrefix!1387 lt!583957 (++!4705 lt!583367 lt!583380))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!162 (List!17821 List!17821 List!17821) Unit!28679)

(assert (=> d!488398 (= lt!583959 (lemmaPrefixStaysPrefixWhenAddingToSuffix!162 lt!583957 lt!583367 lt!583380))))

(assert (=> d!488398 (= lt!583957 (list!6955 (charsOf!1776 lt!583961)))))

(declare-fun lt!583970 () Unit!28679)

(declare-fun lt!583964 () Unit!28679)

(assert (=> d!488398 (= lt!583970 lt!583964)))

(declare-fun lt!583972 () List!17821)

(declare-fun lt!583956 () List!17821)

(assert (=> d!488398 (isPrefix!1387 lt!583972 (++!4705 lt!583972 lt!583956))))

(assert (=> d!488398 (= lt!583964 (lemmaConcatTwoListThenFirstIsPrefix!912 lt!583972 lt!583956))))

(assert (=> d!488398 (= lt!583956 (_2!10053 (get!5103 (maxPrefix!1320 thiss!17113 rules!1846 lt!583367))))))

(assert (=> d!488398 (= lt!583972 (list!6955 (charsOf!1776 lt!583961)))))

(assert (=> d!488398 (= lt!583961 (head!3396 (list!6956 (_1!10054 (lex!1240 thiss!17113 rules!1846 (seqFromList!2004 lt!583367))))))))

(assert (=> d!488398 (not (isEmpty!10777 rules!1846))))

(assert (=> d!488398 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!330 thiss!17113 rules!1846 lt!583367 lt!583380) lt!583958)))

(declare-fun b!1621798 () Bool)

(declare-fun get!5107 (Option!3272) Rule!6054)

(assert (=> b!1621798 (= e!1040146 (= (rule!4953 lt!583961) (get!5107 (getRuleFromTag!276 thiss!17113 rules!1846 (tag!3405 (rule!4953 lt!583961))))))))

(declare-fun b!1621800 () Bool)

(declare-fun Unit!28715 () Unit!28679)

(assert (=> b!1621800 (= e!1040145 Unit!28715)))

(declare-fun b!1621797 () Bool)

(declare-fun res!724439 () Bool)

(assert (=> b!1621797 (=> (not res!724439) (not e!1040146))))

(assert (=> b!1621797 (= res!724439 (matchR!1954 (regex!3127 (get!5107 (getRuleFromTag!276 thiss!17113 rules!1846 (tag!3405 (rule!4953 lt!583961))))) (list!6955 (charsOf!1776 lt!583961))))))

(assert (= (and d!488398 res!724438) b!1621797))

(assert (= (and b!1621797 res!724439) b!1621798))

(assert (= (and d!488398 c!264110) b!1621799))

(assert (= (and d!488398 (not c!264110)) b!1621800))

(assert (=> b!1621799 m!1946099))

(assert (=> b!1621799 m!1946099))

(declare-fun m!1947255 () Bool)

(assert (=> b!1621799 m!1947255))

(declare-fun m!1947257 () Bool)

(assert (=> b!1621799 m!1947257))

(declare-fun m!1947259 () Bool)

(assert (=> b!1621799 m!1947259))

(declare-fun m!1947261 () Bool)

(assert (=> b!1621799 m!1947261))

(declare-fun m!1947263 () Bool)

(assert (=> b!1621799 m!1947263))

(declare-fun m!1947265 () Bool)

(assert (=> b!1621799 m!1947265))

(assert (=> b!1621799 m!1947263))

(assert (=> b!1621799 m!1947257))

(declare-fun m!1947267 () Bool)

(assert (=> b!1621799 m!1947267))

(assert (=> d!488398 m!1946423))

(declare-fun m!1947269 () Bool)

(assert (=> d!488398 m!1947269))

(declare-fun m!1947271 () Bool)

(assert (=> d!488398 m!1947271))

(declare-fun m!1947273 () Bool)

(assert (=> d!488398 m!1947273))

(declare-fun m!1947275 () Bool)

(assert (=> d!488398 m!1947275))

(assert (=> d!488398 m!1946099))

(declare-fun m!1947277 () Bool)

(assert (=> d!488398 m!1947277))

(assert (=> d!488398 m!1946119))

(declare-fun m!1947283 () Bool)

(assert (=> d!488398 m!1947283))

(assert (=> d!488398 m!1946119))

(declare-fun m!1947287 () Bool)

(assert (=> d!488398 m!1947287))

(assert (=> d!488398 m!1946075))

(assert (=> d!488398 m!1946077))

(assert (=> d!488398 m!1947263))

(assert (=> d!488398 m!1947265))

(declare-fun m!1947291 () Bool)

(assert (=> d!488398 m!1947291))

(declare-fun m!1947293 () Bool)

(assert (=> d!488398 m!1947293))

(declare-fun m!1947295 () Bool)

(assert (=> d!488398 m!1947295))

(declare-fun m!1947297 () Bool)

(assert (=> d!488398 m!1947297))

(assert (=> d!488398 m!1947263))

(assert (=> d!488398 m!1947271))

(declare-fun m!1947299 () Bool)

(assert (=> d!488398 m!1947299))

(assert (=> d!488398 m!1947295))

(declare-fun m!1947301 () Bool)

(assert (=> d!488398 m!1947301))

(assert (=> d!488398 m!1947291))

(assert (=> d!488398 m!1946099))

(assert (=> d!488398 m!1947271))

(assert (=> d!488398 m!1946423))

(assert (=> d!488398 m!1946099))

(assert (=> d!488398 m!1946075))

(assert (=> d!488398 m!1946057))

(assert (=> b!1621798 m!1947295))

(assert (=> b!1621798 m!1947295))

(declare-fun m!1947303 () Bool)

(assert (=> b!1621798 m!1947303))

(assert (=> b!1621797 m!1947263))

(assert (=> b!1621797 m!1947265))

(assert (=> b!1621797 m!1947263))

(assert (=> b!1621797 m!1947295))

(assert (=> b!1621797 m!1947295))

(assert (=> b!1621797 m!1947303))

(assert (=> b!1621797 m!1947265))

(declare-fun m!1947305 () Bool)

(assert (=> b!1621797 m!1947305))

(assert (=> b!1621166 d!488398))

(declare-fun d!488422 () Bool)

(declare-fun res!724444 () Bool)

(declare-fun e!1040164 () Bool)

(assert (=> d!488422 (=> res!724444 e!1040164)))

(assert (=> d!488422 (= res!724444 (or (not ((_ is Cons!17753) tokens!457)) (not ((_ is Cons!17753) (t!148746 tokens!457)))))))

(assert (=> d!488422 (= (tokensListTwoByTwoPredicateSeparableList!449 thiss!17113 tokens!457 rules!1846) e!1040164)))

(declare-fun b!1621820 () Bool)

(declare-fun e!1040163 () Bool)

(assert (=> b!1621820 (= e!1040164 e!1040163)))

(declare-fun res!724445 () Bool)

(assert (=> b!1621820 (=> (not res!724445) (not e!1040163))))

(assert (=> b!1621820 (= res!724445 (separableTokensPredicate!698 thiss!17113 (h!23154 tokens!457) (h!23154 (t!148746 tokens!457)) rules!1846))))

(declare-fun lt!583990 () Unit!28679)

(declare-fun Unit!28716 () Unit!28679)

(assert (=> b!1621820 (= lt!583990 Unit!28716)))

(assert (=> b!1621820 (> (size!14234 (charsOf!1776 (h!23154 (t!148746 tokens!457)))) 0)))

(declare-fun lt!583987 () Unit!28679)

(declare-fun Unit!28717 () Unit!28679)

(assert (=> b!1621820 (= lt!583987 Unit!28717)))

(assert (=> b!1621820 (rulesProduceIndividualToken!1408 thiss!17113 rules!1846 (h!23154 (t!148746 tokens!457)))))

(declare-fun lt!583989 () Unit!28679)

(declare-fun Unit!28718 () Unit!28679)

(assert (=> b!1621820 (= lt!583989 Unit!28718)))

(assert (=> b!1621820 (rulesProduceIndividualToken!1408 thiss!17113 rules!1846 (h!23154 tokens!457))))

(declare-fun lt!583991 () Unit!28679)

(declare-fun lt!583992 () Unit!28679)

(assert (=> b!1621820 (= lt!583991 lt!583992)))

(assert (=> b!1621820 (rulesProduceIndividualToken!1408 thiss!17113 rules!1846 (h!23154 (t!148746 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!557 (LexerInterface!2756 List!17824 List!17823 Token!5820) Unit!28679)

(assert (=> b!1621820 (= lt!583992 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!557 thiss!17113 rules!1846 tokens!457 (h!23154 (t!148746 tokens!457))))))

(declare-fun lt!583993 () Unit!28679)

(declare-fun lt!583988 () Unit!28679)

(assert (=> b!1621820 (= lt!583993 lt!583988)))

(assert (=> b!1621820 (rulesProduceIndividualToken!1408 thiss!17113 rules!1846 (h!23154 tokens!457))))

(assert (=> b!1621820 (= lt!583988 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!557 thiss!17113 rules!1846 tokens!457 (h!23154 tokens!457)))))

(declare-fun b!1621821 () Bool)

(assert (=> b!1621821 (= e!1040163 (tokensListTwoByTwoPredicateSeparableList!449 thiss!17113 (Cons!17753 (h!23154 (t!148746 tokens!457)) (t!148746 (t!148746 tokens!457))) rules!1846))))

(assert (= (and d!488422 (not res!724444)) b!1621820))

(assert (= (and b!1621820 res!724445) b!1621821))

(assert (=> b!1621820 m!1946055))

(assert (=> b!1621820 m!1946243))

(assert (=> b!1621820 m!1946055))

(declare-fun m!1947307 () Bool)

(assert (=> b!1621820 m!1947307))

(declare-fun m!1947309 () Bool)

(assert (=> b!1621820 m!1947309))

(declare-fun m!1947311 () Bool)

(assert (=> b!1621820 m!1947311))

(assert (=> b!1621820 m!1946023))

(assert (=> b!1621820 m!1946043))

(declare-fun m!1947313 () Bool)

(assert (=> b!1621821 m!1947313))

(assert (=> b!1621168 d!488422))

(declare-fun b!1621822 () Bool)

(declare-fun e!1040167 () Bool)

(declare-fun lt!583997 () Option!3269)

(assert (=> b!1621822 (= e!1040167 (contains!3106 rules!1846 (rule!4953 (_1!10053 (get!5103 lt!583997)))))))

(declare-fun b!1621823 () Bool)

(declare-fun e!1040165 () Option!3269)

(declare-fun lt!583998 () Option!3269)

(declare-fun lt!583995 () Option!3269)

(assert (=> b!1621823 (= e!1040165 (ite (and ((_ is None!3268) lt!583998) ((_ is None!3268) lt!583995)) None!3268 (ite ((_ is None!3268) lt!583995) lt!583998 (ite ((_ is None!3268) lt!583998) lt!583995 (ite (>= (size!14230 (_1!10053 (v!24279 lt!583998))) (size!14230 (_1!10053 (v!24279 lt!583995)))) lt!583998 lt!583995)))))))

(declare-fun call!105138 () Option!3269)

(assert (=> b!1621823 (= lt!583998 call!105138)))

(assert (=> b!1621823 (= lt!583995 (maxPrefix!1320 thiss!17113 (t!148747 rules!1846) (originalCharacters!3941 (h!23154 tokens!457))))))

(declare-fun b!1621824 () Bool)

(declare-fun e!1040166 () Bool)

(assert (=> b!1621824 (= e!1040166 e!1040167)))

(declare-fun res!724447 () Bool)

(assert (=> b!1621824 (=> (not res!724447) (not e!1040167))))

(assert (=> b!1621824 (= res!724447 (isDefined!2636 lt!583997))))

(declare-fun b!1621825 () Bool)

(declare-fun res!724451 () Bool)

(assert (=> b!1621825 (=> (not res!724451) (not e!1040167))))

(assert (=> b!1621825 (= res!724451 (= (++!4705 (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!583997)))) (_2!10053 (get!5103 lt!583997))) (originalCharacters!3941 (h!23154 tokens!457))))))

(declare-fun b!1621826 () Bool)

(assert (=> b!1621826 (= e!1040165 call!105138)))

(declare-fun b!1621827 () Bool)

(declare-fun res!724448 () Bool)

(assert (=> b!1621827 (=> (not res!724448) (not e!1040167))))

(assert (=> b!1621827 (= res!724448 (= (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!583997)))) (originalCharacters!3941 (_1!10053 (get!5103 lt!583997)))))))

(declare-fun bm!105133 () Bool)

(assert (=> bm!105133 (= call!105138 (maxPrefixOneRule!767 thiss!17113 (h!23155 rules!1846) (originalCharacters!3941 (h!23154 tokens!457))))))

(declare-fun b!1621828 () Bool)

(declare-fun res!724446 () Bool)

(assert (=> b!1621828 (=> (not res!724446) (not e!1040167))))

(assert (=> b!1621828 (= res!724446 (= (value!98792 (_1!10053 (get!5103 lt!583997))) (apply!4510 (transformation!3127 (rule!4953 (_1!10053 (get!5103 lt!583997)))) (seqFromList!2004 (originalCharacters!3941 (_1!10053 (get!5103 lt!583997)))))))))

(declare-fun d!488424 () Bool)

(assert (=> d!488424 e!1040166))

(declare-fun res!724450 () Bool)

(assert (=> d!488424 (=> res!724450 e!1040166)))

(assert (=> d!488424 (= res!724450 (isEmpty!10784 lt!583997))))

(assert (=> d!488424 (= lt!583997 e!1040165)))

(declare-fun c!264111 () Bool)

(assert (=> d!488424 (= c!264111 (and ((_ is Cons!17754) rules!1846) ((_ is Nil!17754) (t!148747 rules!1846))))))

(declare-fun lt!583996 () Unit!28679)

(declare-fun lt!583994 () Unit!28679)

(assert (=> d!488424 (= lt!583996 lt!583994)))

(assert (=> d!488424 (isPrefix!1387 (originalCharacters!3941 (h!23154 tokens!457)) (originalCharacters!3941 (h!23154 tokens!457)))))

(assert (=> d!488424 (= lt!583994 (lemmaIsPrefixRefl!952 (originalCharacters!3941 (h!23154 tokens!457)) (originalCharacters!3941 (h!23154 tokens!457))))))

(assert (=> d!488424 (rulesValidInductive!964 thiss!17113 rules!1846)))

(assert (=> d!488424 (= (maxPrefix!1320 thiss!17113 rules!1846 (originalCharacters!3941 (h!23154 tokens!457))) lt!583997)))

(declare-fun b!1621829 () Bool)

(declare-fun res!724449 () Bool)

(assert (=> b!1621829 (=> (not res!724449) (not e!1040167))))

(assert (=> b!1621829 (= res!724449 (< (size!14233 (_2!10053 (get!5103 lt!583997))) (size!14233 (originalCharacters!3941 (h!23154 tokens!457)))))))

(declare-fun b!1621830 () Bool)

(declare-fun res!724452 () Bool)

(assert (=> b!1621830 (=> (not res!724452) (not e!1040167))))

(assert (=> b!1621830 (= res!724452 (matchR!1954 (regex!3127 (rule!4953 (_1!10053 (get!5103 lt!583997)))) (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!583997))))))))

(assert (= (and d!488424 c!264111) b!1621826))

(assert (= (and d!488424 (not c!264111)) b!1621823))

(assert (= (or b!1621826 b!1621823) bm!105133))

(assert (= (and d!488424 (not res!724450)) b!1621824))

(assert (= (and b!1621824 res!724447) b!1621827))

(assert (= (and b!1621827 res!724448) b!1621829))

(assert (= (and b!1621829 res!724449) b!1621825))

(assert (= (and b!1621825 res!724451) b!1621828))

(assert (= (and b!1621828 res!724446) b!1621830))

(assert (= (and b!1621830 res!724452) b!1621822))

(declare-fun m!1947315 () Bool)

(assert (=> b!1621823 m!1947315))

(declare-fun m!1947317 () Bool)

(assert (=> b!1621824 m!1947317))

(declare-fun m!1947319 () Bool)

(assert (=> b!1621829 m!1947319))

(declare-fun m!1947321 () Bool)

(assert (=> b!1621829 m!1947321))

(assert (=> b!1621829 m!1946207))

(declare-fun m!1947323 () Bool)

(assert (=> bm!105133 m!1947323))

(assert (=> b!1621827 m!1947319))

(declare-fun m!1947325 () Bool)

(assert (=> b!1621827 m!1947325))

(assert (=> b!1621827 m!1947325))

(declare-fun m!1947327 () Bool)

(assert (=> b!1621827 m!1947327))

(assert (=> b!1621830 m!1947319))

(assert (=> b!1621830 m!1947325))

(assert (=> b!1621830 m!1947325))

(assert (=> b!1621830 m!1947327))

(assert (=> b!1621830 m!1947327))

(declare-fun m!1947329 () Bool)

(assert (=> b!1621830 m!1947329))

(assert (=> b!1621825 m!1947319))

(assert (=> b!1621825 m!1947325))

(assert (=> b!1621825 m!1947325))

(assert (=> b!1621825 m!1947327))

(assert (=> b!1621825 m!1947327))

(declare-fun m!1947331 () Bool)

(assert (=> b!1621825 m!1947331))

(assert (=> b!1621828 m!1947319))

(declare-fun m!1947333 () Bool)

(assert (=> b!1621828 m!1947333))

(assert (=> b!1621828 m!1947333))

(declare-fun m!1947335 () Bool)

(assert (=> b!1621828 m!1947335))

(declare-fun m!1947337 () Bool)

(assert (=> d!488424 m!1947337))

(declare-fun m!1947339 () Bool)

(assert (=> d!488424 m!1947339))

(declare-fun m!1947341 () Bool)

(assert (=> d!488424 m!1947341))

(assert (=> d!488424 m!1946651))

(assert (=> b!1621822 m!1947319))

(declare-fun m!1947343 () Bool)

(assert (=> b!1621822 m!1947343))

(assert (=> b!1621147 d!488424))

(declare-fun d!488426 () Bool)

(assert (=> d!488426 (= (isDefined!2636 (maxPrefix!1320 thiss!17113 rules!1846 (originalCharacters!3941 (h!23154 tokens!457)))) (not (isEmpty!10784 (maxPrefix!1320 thiss!17113 rules!1846 (originalCharacters!3941 (h!23154 tokens!457))))))))

(declare-fun bs!394564 () Bool)

(assert (= bs!394564 d!488426))

(assert (=> bs!394564 m!1946115))

(declare-fun m!1947345 () Bool)

(assert (=> bs!394564 m!1947345))

(assert (=> b!1621147 d!488426))

(declare-fun e!1040168 () Bool)

(declare-fun b!1621834 () Bool)

(declare-fun lt!583999 () List!17821)

(assert (=> b!1621834 (= e!1040168 (or (not (= lt!583373 Nil!17751)) (= lt!583999 (originalCharacters!3941 (h!23154 tokens!457)))))))

(declare-fun b!1621833 () Bool)

(declare-fun res!724453 () Bool)

(assert (=> b!1621833 (=> (not res!724453) (not e!1040168))))

(assert (=> b!1621833 (= res!724453 (= (size!14233 lt!583999) (+ (size!14233 (originalCharacters!3941 (h!23154 tokens!457))) (size!14233 lt!583373))))))

(declare-fun b!1621832 () Bool)

(declare-fun e!1040169 () List!17821)

(assert (=> b!1621832 (= e!1040169 (Cons!17751 (h!23152 (originalCharacters!3941 (h!23154 tokens!457))) (++!4705 (t!148744 (originalCharacters!3941 (h!23154 tokens!457))) lt!583373)))))

(declare-fun b!1621831 () Bool)

(assert (=> b!1621831 (= e!1040169 lt!583373)))

(declare-fun d!488428 () Bool)

(assert (=> d!488428 e!1040168))

(declare-fun res!724454 () Bool)

(assert (=> d!488428 (=> (not res!724454) (not e!1040168))))

(assert (=> d!488428 (= res!724454 (= (content!2463 lt!583999) ((_ map or) (content!2463 (originalCharacters!3941 (h!23154 tokens!457))) (content!2463 lt!583373))))))

(assert (=> d!488428 (= lt!583999 e!1040169)))

(declare-fun c!264112 () Bool)

(assert (=> d!488428 (= c!264112 ((_ is Nil!17751) (originalCharacters!3941 (h!23154 tokens!457))))))

(assert (=> d!488428 (= (++!4705 (originalCharacters!3941 (h!23154 tokens!457)) lt!583373) lt!583999)))

(assert (= (and d!488428 c!264112) b!1621831))

(assert (= (and d!488428 (not c!264112)) b!1621832))

(assert (= (and d!488428 res!724454) b!1621833))

(assert (= (and b!1621833 res!724453) b!1621834))

(declare-fun m!1947347 () Bool)

(assert (=> b!1621833 m!1947347))

(assert (=> b!1621833 m!1946207))

(declare-fun m!1947349 () Bool)

(assert (=> b!1621833 m!1947349))

(declare-fun m!1947351 () Bool)

(assert (=> b!1621832 m!1947351))

(declare-fun m!1947353 () Bool)

(assert (=> d!488428 m!1947353))

(declare-fun m!1947355 () Bool)

(assert (=> d!488428 m!1947355))

(declare-fun m!1947357 () Bool)

(assert (=> d!488428 m!1947357))

(assert (=> b!1621147 d!488428))

(declare-fun d!488430 () Bool)

(assert (=> d!488430 (= (isDefined!2636 lt!583372) (not (isEmpty!10784 lt!583372)))))

(declare-fun bs!394565 () Bool)

(assert (= bs!394565 d!488430))

(declare-fun m!1947359 () Bool)

(assert (=> bs!394565 m!1947359))

(assert (=> b!1621147 d!488430))

(declare-fun d!488432 () Bool)

(assert (=> d!488432 (= (get!5103 lt!583372) (v!24279 lt!583372))))

(assert (=> b!1621147 d!488432))

(declare-fun b!1621853 () Bool)

(declare-fun e!1040184 () Bool)

(declare-fun e!1040189 () Bool)

(assert (=> b!1621853 (= e!1040184 e!1040189)))

(declare-fun res!724468 () Bool)

(assert (=> b!1621853 (=> (not res!724468) (not e!1040189))))

(declare-fun call!105145 () Bool)

(assert (=> b!1621853 (= res!724468 call!105145)))

(declare-fun b!1621854 () Bool)

(declare-fun call!105146 () Bool)

(assert (=> b!1621854 (= e!1040189 call!105146)))

(declare-fun b!1621855 () Bool)

(declare-fun e!1040186 () Bool)

(declare-fun e!1040188 () Bool)

(assert (=> b!1621855 (= e!1040186 e!1040188)))

(declare-fun c!264117 () Bool)

(assert (=> b!1621855 (= c!264117 ((_ is Star!4455) lt!583361))))

(declare-fun b!1621856 () Bool)

(declare-fun e!1040190 () Bool)

(assert (=> b!1621856 (= e!1040188 e!1040190)))

(declare-fun c!264118 () Bool)

(assert (=> b!1621856 (= c!264118 ((_ is Union!4455) lt!583361))))

(declare-fun b!1621857 () Bool)

(declare-fun res!724469 () Bool)

(assert (=> b!1621857 (=> res!724469 e!1040184)))

(assert (=> b!1621857 (= res!724469 (not ((_ is Concat!7672) lt!583361)))))

(assert (=> b!1621857 (= e!1040190 e!1040184)))

(declare-fun bm!105140 () Bool)

(assert (=> bm!105140 (= call!105146 (validRegex!1770 (ite c!264118 (regOne!9423 lt!583361) (regTwo!9422 lt!583361))))))

(declare-fun b!1621858 () Bool)

(declare-fun e!1040187 () Bool)

(declare-fun call!105147 () Bool)

(assert (=> b!1621858 (= e!1040187 call!105147)))

(declare-fun bm!105141 () Bool)

(assert (=> bm!105141 (= call!105147 (validRegex!1770 (ite c!264117 (reg!4784 lt!583361) (ite c!264118 (regTwo!9423 lt!583361) (regOne!9422 lt!583361)))))))

(declare-fun b!1621859 () Bool)

(declare-fun res!724465 () Bool)

(declare-fun e!1040185 () Bool)

(assert (=> b!1621859 (=> (not res!724465) (not e!1040185))))

(assert (=> b!1621859 (= res!724465 call!105146)))

(assert (=> b!1621859 (= e!1040190 e!1040185)))

(declare-fun b!1621860 () Bool)

(assert (=> b!1621860 (= e!1040188 e!1040187)))

(declare-fun res!724467 () Bool)

(assert (=> b!1621860 (= res!724467 (not (nullable!1309 (reg!4784 lt!583361))))))

(assert (=> b!1621860 (=> (not res!724467) (not e!1040187))))

(declare-fun d!488434 () Bool)

(declare-fun res!724466 () Bool)

(assert (=> d!488434 (=> res!724466 e!1040186)))

(assert (=> d!488434 (= res!724466 ((_ is ElementMatch!4455) lt!583361))))

(assert (=> d!488434 (= (validRegex!1770 lt!583361) e!1040186)))

(declare-fun bm!105142 () Bool)

(assert (=> bm!105142 (= call!105145 call!105147)))

(declare-fun b!1621861 () Bool)

(assert (=> b!1621861 (= e!1040185 call!105145)))

(assert (= (and d!488434 (not res!724466)) b!1621855))

(assert (= (and b!1621855 c!264117) b!1621860))

(assert (= (and b!1621855 (not c!264117)) b!1621856))

(assert (= (and b!1621860 res!724467) b!1621858))

(assert (= (and b!1621856 c!264118) b!1621859))

(assert (= (and b!1621856 (not c!264118)) b!1621857))

(assert (= (and b!1621859 res!724465) b!1621861))

(assert (= (and b!1621857 (not res!724469)) b!1621853))

(assert (= (and b!1621853 res!724468) b!1621854))

(assert (= (or b!1621861 b!1621853) bm!105142))

(assert (= (or b!1621859 b!1621854) bm!105140))

(assert (= (or b!1621858 bm!105142) bm!105141))

(declare-fun m!1947361 () Bool)

(assert (=> bm!105140 m!1947361))

(declare-fun m!1947363 () Bool)

(assert (=> bm!105141 m!1947363))

(declare-fun m!1947365 () Bool)

(assert (=> b!1621860 m!1947365))

(assert (=> b!1621147 d!488434))

(declare-fun b!1621862 () Bool)

(declare-fun e!1040193 () Bool)

(declare-fun lt!584003 () Option!3269)

(assert (=> b!1621862 (= e!1040193 (contains!3106 rules!1846 (rule!4953 (_1!10053 (get!5103 lt!584003)))))))

(declare-fun b!1621863 () Bool)

(declare-fun e!1040191 () Option!3269)

(declare-fun lt!584004 () Option!3269)

(declare-fun lt!584001 () Option!3269)

(assert (=> b!1621863 (= e!1040191 (ite (and ((_ is None!3268) lt!584004) ((_ is None!3268) lt!584001)) None!3268 (ite ((_ is None!3268) lt!584001) lt!584004 (ite ((_ is None!3268) lt!584004) lt!584001 (ite (>= (size!14230 (_1!10053 (v!24279 lt!584004))) (size!14230 (_1!10053 (v!24279 lt!584001)))) lt!584004 lt!584001)))))))

(declare-fun call!105148 () Option!3269)

(assert (=> b!1621863 (= lt!584004 call!105148)))

(assert (=> b!1621863 (= lt!584001 (maxPrefix!1320 thiss!17113 (t!148747 rules!1846) lt!583367))))

(declare-fun b!1621864 () Bool)

(declare-fun e!1040192 () Bool)

(assert (=> b!1621864 (= e!1040192 e!1040193)))

(declare-fun res!724471 () Bool)

(assert (=> b!1621864 (=> (not res!724471) (not e!1040193))))

(assert (=> b!1621864 (= res!724471 (isDefined!2636 lt!584003))))

(declare-fun b!1621865 () Bool)

(declare-fun res!724475 () Bool)

(assert (=> b!1621865 (=> (not res!724475) (not e!1040193))))

(assert (=> b!1621865 (= res!724475 (= (++!4705 (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!584003)))) (_2!10053 (get!5103 lt!584003))) lt!583367))))

(declare-fun b!1621866 () Bool)

(assert (=> b!1621866 (= e!1040191 call!105148)))

(declare-fun b!1621867 () Bool)

(declare-fun res!724472 () Bool)

(assert (=> b!1621867 (=> (not res!724472) (not e!1040193))))

(assert (=> b!1621867 (= res!724472 (= (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!584003)))) (originalCharacters!3941 (_1!10053 (get!5103 lt!584003)))))))

(declare-fun bm!105143 () Bool)

(assert (=> bm!105143 (= call!105148 (maxPrefixOneRule!767 thiss!17113 (h!23155 rules!1846) lt!583367))))

(declare-fun b!1621868 () Bool)

(declare-fun res!724470 () Bool)

(assert (=> b!1621868 (=> (not res!724470) (not e!1040193))))

(assert (=> b!1621868 (= res!724470 (= (value!98792 (_1!10053 (get!5103 lt!584003))) (apply!4510 (transformation!3127 (rule!4953 (_1!10053 (get!5103 lt!584003)))) (seqFromList!2004 (originalCharacters!3941 (_1!10053 (get!5103 lt!584003)))))))))

(declare-fun d!488436 () Bool)

(assert (=> d!488436 e!1040192))

(declare-fun res!724474 () Bool)

(assert (=> d!488436 (=> res!724474 e!1040192)))

(assert (=> d!488436 (= res!724474 (isEmpty!10784 lt!584003))))

(assert (=> d!488436 (= lt!584003 e!1040191)))

(declare-fun c!264119 () Bool)

(assert (=> d!488436 (= c!264119 (and ((_ is Cons!17754) rules!1846) ((_ is Nil!17754) (t!148747 rules!1846))))))

(declare-fun lt!584002 () Unit!28679)

(declare-fun lt!584000 () Unit!28679)

(assert (=> d!488436 (= lt!584002 lt!584000)))

(assert (=> d!488436 (isPrefix!1387 lt!583367 lt!583367)))

(assert (=> d!488436 (= lt!584000 (lemmaIsPrefixRefl!952 lt!583367 lt!583367))))

(assert (=> d!488436 (rulesValidInductive!964 thiss!17113 rules!1846)))

(assert (=> d!488436 (= (maxPrefix!1320 thiss!17113 rules!1846 lt!583367) lt!584003)))

(declare-fun b!1621869 () Bool)

(declare-fun res!724473 () Bool)

(assert (=> b!1621869 (=> (not res!724473) (not e!1040193))))

(assert (=> b!1621869 (= res!724473 (< (size!14233 (_2!10053 (get!5103 lt!584003))) (size!14233 lt!583367)))))

(declare-fun b!1621870 () Bool)

(declare-fun res!724476 () Bool)

(assert (=> b!1621870 (=> (not res!724476) (not e!1040193))))

(assert (=> b!1621870 (= res!724476 (matchR!1954 (regex!3127 (rule!4953 (_1!10053 (get!5103 lt!584003)))) (list!6955 (charsOf!1776 (_1!10053 (get!5103 lt!584003))))))))

(assert (= (and d!488436 c!264119) b!1621866))

(assert (= (and d!488436 (not c!264119)) b!1621863))

(assert (= (or b!1621866 b!1621863) bm!105143))

(assert (= (and d!488436 (not res!724474)) b!1621864))

(assert (= (and b!1621864 res!724471) b!1621867))

(assert (= (and b!1621867 res!724472) b!1621869))

(assert (= (and b!1621869 res!724473) b!1621865))

(assert (= (and b!1621865 res!724475) b!1621868))

(assert (= (and b!1621868 res!724470) b!1621870))

(assert (= (and b!1621870 res!724476) b!1621862))

(declare-fun m!1947367 () Bool)

(assert (=> b!1621863 m!1947367))

(declare-fun m!1947369 () Bool)

(assert (=> b!1621864 m!1947369))

(declare-fun m!1947371 () Bool)

(assert (=> b!1621869 m!1947371))

(declare-fun m!1947373 () Bool)

(assert (=> b!1621869 m!1947373))

(assert (=> b!1621869 m!1946409))

(declare-fun m!1947375 () Bool)

(assert (=> bm!105143 m!1947375))

(assert (=> b!1621867 m!1947371))

(declare-fun m!1947377 () Bool)

(assert (=> b!1621867 m!1947377))

(assert (=> b!1621867 m!1947377))

(declare-fun m!1947379 () Bool)

(assert (=> b!1621867 m!1947379))

(assert (=> b!1621870 m!1947371))

(assert (=> b!1621870 m!1947377))

(assert (=> b!1621870 m!1947377))

(assert (=> b!1621870 m!1947379))

(assert (=> b!1621870 m!1947379))

(declare-fun m!1947381 () Bool)

(assert (=> b!1621870 m!1947381))

(assert (=> b!1621865 m!1947371))

(assert (=> b!1621865 m!1947377))

(assert (=> b!1621865 m!1947377))

(assert (=> b!1621865 m!1947379))

(assert (=> b!1621865 m!1947379))

(declare-fun m!1947383 () Bool)

(assert (=> b!1621865 m!1947383))

(assert (=> b!1621868 m!1947371))

(declare-fun m!1947385 () Bool)

(assert (=> b!1621868 m!1947385))

(assert (=> b!1621868 m!1947385))

(declare-fun m!1947387 () Bool)

(assert (=> b!1621868 m!1947387))

(declare-fun m!1947389 () Bool)

(assert (=> d!488436 m!1947389))

(declare-fun m!1947391 () Bool)

(assert (=> d!488436 m!1947391))

(declare-fun m!1947393 () Bool)

(assert (=> d!488436 m!1947393))

(assert (=> d!488436 m!1946651))

(assert (=> b!1621862 m!1947371))

(declare-fun m!1947395 () Bool)

(assert (=> b!1621862 m!1947395))

(assert (=> b!1621147 d!488436))

(declare-fun b!1621884 () Bool)

(declare-fun e!1040196 () Bool)

(declare-fun tp!471967 () Bool)

(declare-fun tp!471971 () Bool)

(assert (=> b!1621884 (= e!1040196 (and tp!471967 tp!471971))))

(assert (=> b!1621149 (= tp!471892 e!1040196)))

(declare-fun b!1621883 () Bool)

(declare-fun tp!471970 () Bool)

(assert (=> b!1621883 (= e!1040196 tp!471970)))

(declare-fun b!1621882 () Bool)

(declare-fun tp!471968 () Bool)

(declare-fun tp!471969 () Bool)

(assert (=> b!1621882 (= e!1040196 (and tp!471968 tp!471969))))

(declare-fun b!1621881 () Bool)

(declare-fun tp_is_empty!7265 () Bool)

(assert (=> b!1621881 (= e!1040196 tp_is_empty!7265)))

(assert (= (and b!1621149 ((_ is ElementMatch!4455) (regex!3127 (rule!4953 (h!23154 tokens!457))))) b!1621881))

(assert (= (and b!1621149 ((_ is Concat!7672) (regex!3127 (rule!4953 (h!23154 tokens!457))))) b!1621882))

(assert (= (and b!1621149 ((_ is Star!4455) (regex!3127 (rule!4953 (h!23154 tokens!457))))) b!1621883))

(assert (= (and b!1621149 ((_ is Union!4455) (regex!3127 (rule!4953 (h!23154 tokens!457))))) b!1621884))

(declare-fun b!1621888 () Bool)

(declare-fun e!1040197 () Bool)

(declare-fun tp!471972 () Bool)

(declare-fun tp!471976 () Bool)

(assert (=> b!1621888 (= e!1040197 (and tp!471972 tp!471976))))

(assert (=> b!1621172 (= tp!471896 e!1040197)))

(declare-fun b!1621887 () Bool)

(declare-fun tp!471975 () Bool)

(assert (=> b!1621887 (= e!1040197 tp!471975)))

(declare-fun b!1621886 () Bool)

(declare-fun tp!471973 () Bool)

(declare-fun tp!471974 () Bool)

(assert (=> b!1621886 (= e!1040197 (and tp!471973 tp!471974))))

(declare-fun b!1621885 () Bool)

(assert (=> b!1621885 (= e!1040197 tp_is_empty!7265)))

(assert (= (and b!1621172 ((_ is ElementMatch!4455) (regex!3127 (h!23155 rules!1846)))) b!1621885))

(assert (= (and b!1621172 ((_ is Concat!7672) (regex!3127 (h!23155 rules!1846)))) b!1621886))

(assert (= (and b!1621172 ((_ is Star!4455) (regex!3127 (h!23155 rules!1846)))) b!1621887))

(assert (= (and b!1621172 ((_ is Union!4455) (regex!3127 (h!23155 rules!1846)))) b!1621888))

(declare-fun b!1621902 () Bool)

(declare-fun b_free!43703 () Bool)

(declare-fun b_next!44407 () Bool)

(assert (=> b!1621902 (= b_free!43703 (not b_next!44407))))

(declare-fun tp!471991 () Bool)

(declare-fun b_and!115029 () Bool)

(assert (=> b!1621902 (= tp!471991 b_and!115029)))

(declare-fun b_free!43705 () Bool)

(declare-fun b_next!44409 () Bool)

(assert (=> b!1621902 (= b_free!43705 (not b_next!44409))))

(declare-fun t!148785 () Bool)

(declare-fun tb!93199 () Bool)

(assert (=> (and b!1621902 (= (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457))))) t!148785) tb!93199))

(declare-fun result!112354 () Bool)

(assert (= result!112354 result!112314))

(assert (=> b!1621194 t!148785))

(declare-fun t!148787 () Bool)

(declare-fun tb!93201 () Bool)

(assert (=> (and b!1621902 (= (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457)))))) t!148787) tb!93201))

(declare-fun result!112356 () Bool)

(assert (= result!112356 result!112326))

(assert (=> d!488218 t!148787))

(assert (=> d!488376 t!148785))

(declare-fun b_and!115031 () Bool)

(declare-fun tp!471988 () Bool)

(assert (=> b!1621902 (= tp!471988 (and (=> t!148785 result!112354) (=> t!148787 result!112356) b_and!115031))))

(declare-fun e!1040215 () Bool)

(assert (=> b!1621161 (= tp!471897 e!1040215)))

(declare-fun e!1040212 () Bool)

(declare-fun e!1040210 () Bool)

(declare-fun tp!471987 () Bool)

(declare-fun b!1621901 () Bool)

(assert (=> b!1621901 (= e!1040212 (and tp!471987 (inv!23142 (tag!3405 (rule!4953 (h!23154 (t!148746 tokens!457))))) (inv!23145 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))) e!1040210))))

(declare-fun b!1621899 () Bool)

(declare-fun e!1040214 () Bool)

(declare-fun tp!471990 () Bool)

(assert (=> b!1621899 (= e!1040215 (and (inv!23146 (h!23154 (t!148746 tokens!457))) e!1040214 tp!471990))))

(declare-fun b!1621900 () Bool)

(declare-fun tp!471989 () Bool)

(assert (=> b!1621900 (= e!1040214 (and (inv!21 (value!98792 (h!23154 (t!148746 tokens!457)))) e!1040212 tp!471989))))

(assert (=> b!1621902 (= e!1040210 (and tp!471991 tp!471988))))

(assert (= b!1621901 b!1621902))

(assert (= b!1621900 b!1621901))

(assert (= b!1621899 b!1621900))

(assert (= (and b!1621161 ((_ is Cons!17753) (t!148746 tokens!457))) b!1621899))

(declare-fun m!1947397 () Bool)

(assert (=> b!1621901 m!1947397))

(declare-fun m!1947399 () Bool)

(assert (=> b!1621901 m!1947399))

(declare-fun m!1947401 () Bool)

(assert (=> b!1621899 m!1947401))

(declare-fun m!1947403 () Bool)

(assert (=> b!1621900 m!1947403))

(declare-fun b!1621907 () Bool)

(declare-fun e!1040218 () Bool)

(declare-fun tp!471994 () Bool)

(assert (=> b!1621907 (= e!1040218 (and tp_is_empty!7265 tp!471994))))

(assert (=> b!1621152 (= tp!471890 e!1040218)))

(assert (= (and b!1621152 ((_ is Cons!17751) (originalCharacters!3941 (h!23154 tokens!457)))) b!1621907))

(declare-fun b!1621918 () Bool)

(declare-fun b_free!43707 () Bool)

(declare-fun b_next!44411 () Bool)

(assert (=> b!1621918 (= b_free!43707 (not b_next!44411))))

(declare-fun tp!472005 () Bool)

(declare-fun b_and!115033 () Bool)

(assert (=> b!1621918 (= tp!472005 b_and!115033)))

(declare-fun b_free!43709 () Bool)

(declare-fun b_next!44413 () Bool)

(assert (=> b!1621918 (= b_free!43709 (not b_next!44413))))

(declare-fun tb!93203 () Bool)

(declare-fun t!148789 () Bool)

(assert (=> (and b!1621918 (= (toChars!4413 (transformation!3127 (h!23155 (t!148747 rules!1846)))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457))))) t!148789) tb!93203))

(declare-fun result!112362 () Bool)

(assert (= result!112362 result!112314))

(assert (=> b!1621194 t!148789))

(declare-fun t!148791 () Bool)

(declare-fun tb!93205 () Bool)

(assert (=> (and b!1621918 (= (toChars!4413 (transformation!3127 (h!23155 (t!148747 rules!1846)))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457)))))) t!148791) tb!93205))

(declare-fun result!112364 () Bool)

(assert (= result!112364 result!112326))

(assert (=> d!488218 t!148791))

(assert (=> d!488376 t!148789))

(declare-fun tp!472003 () Bool)

(declare-fun b_and!115035 () Bool)

(assert (=> b!1621918 (= tp!472003 (and (=> t!148789 result!112362) (=> t!148791 result!112364) b_and!115035))))

(declare-fun e!1040229 () Bool)

(assert (=> b!1621918 (= e!1040229 (and tp!472005 tp!472003))))

(declare-fun tp!472004 () Bool)

(declare-fun e!1040230 () Bool)

(declare-fun b!1621917 () Bool)

(assert (=> b!1621917 (= e!1040230 (and tp!472004 (inv!23142 (tag!3405 (h!23155 (t!148747 rules!1846)))) (inv!23145 (transformation!3127 (h!23155 (t!148747 rules!1846)))) e!1040229))))

(declare-fun b!1621916 () Bool)

(declare-fun e!1040227 () Bool)

(declare-fun tp!472006 () Bool)

(assert (=> b!1621916 (= e!1040227 (and e!1040230 tp!472006))))

(assert (=> b!1621148 (= tp!471893 e!1040227)))

(assert (= b!1621917 b!1621918))

(assert (= b!1621916 b!1621917))

(assert (= (and b!1621148 ((_ is Cons!17754) (t!148747 rules!1846))) b!1621916))

(declare-fun m!1947405 () Bool)

(assert (=> b!1621917 m!1947405))

(declare-fun m!1947407 () Bool)

(assert (=> b!1621917 m!1947407))

(declare-fun b_lambda!51123 () Bool)

(assert (= b_lambda!51105 (or (and b!1621154 b_free!43689 (= (toChars!4413 (transformation!3127 (h!23155 rules!1846))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))))) (and b!1621150 b_free!43693) (and b!1621902 b_free!43705 (= (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))))) (and b!1621918 b_free!43709 (= (toChars!4413 (transformation!3127 (h!23155 (t!148747 rules!1846)))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))))) b_lambda!51123)))

(declare-fun b_lambda!51125 () Bool)

(assert (= b_lambda!51109 (or (and b!1621154 b_free!43689 (= (toChars!4413 (transformation!3127 (h!23155 rules!1846))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))))) (and b!1621150 b_free!43693 (= (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))))) (and b!1621902 b_free!43705) (and b!1621918 b_free!43709 (= (toChars!4413 (transformation!3127 (h!23155 (t!148747 rules!1846)))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))))) b_lambda!51125)))

(declare-fun b_lambda!51127 () Bool)

(assert (= b_lambda!51115 (or (and b!1621154 b_free!43689 (= (toChars!4413 (transformation!3127 (h!23155 rules!1846))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))))) (and b!1621150 b_free!43693) (and b!1621902 b_free!43705 (= (toChars!4413 (transformation!3127 (rule!4953 (h!23154 (t!148746 tokens!457))))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))))) (and b!1621918 b_free!43709 (= (toChars!4413 (transformation!3127 (h!23155 (t!148747 rules!1846)))) (toChars!4413 (transformation!3127 (rule!4953 (h!23154 tokens!457)))))) b_lambda!51127)))

(check-sat (not b!1621307) (not d!488428) (not d!488396) (not b!1621194) (not b_next!44413) (not b!1621499) (not b!1621868) (not b!1621598) (not b!1621884) (not b!1621505) (not d!488328) (not d!488186) (not d!488288) (not d!488218) (not b!1621633) (not b!1621683) (not b_next!44409) (not d!488182) (not b!1621883) (not d!488368) (not b!1621459) (not b!1621319) (not b!1621864) (not b!1621860) (not b!1621298) (not b!1621882) (not d!488376) (not b_lambda!51123) (not b!1621214) (not b!1621605) (not b!1621679) (not d!488318) (not b!1621663) (not d!488350) (not b!1621832) (not b!1621823) (not d!488352) (not b!1621615) (not bm!105143) (not b!1621673) (not bm!105123) (not b!1621458) (not b!1621686) (not d!488214) (not b!1621495) (not b_next!44395) (not d!488334) (not b!1621865) b_and!115031 (not b!1621211) (not b!1621413) (not b!1621600) (not d!488354) (not b!1621680) (not d!488344) (not b!1621569) (not b!1621564) (not b!1621825) (not bm!105140) (not tb!93175) (not b!1621870) (not b!1621693) (not b!1621797) (not d!488226) (not b!1621302) (not b!1621824) (not b!1621604) (not b!1621828) b_and!115029 (not b!1621318) (not b!1621603) (not b!1621888) tp_is_empty!7265 b_and!115019 b_and!114989 (not b!1621799) (not b!1621887) (not b!1621916) (not b!1621829) (not b!1621718) (not b!1621553) (not d!488348) (not b!1621899) (not bm!105126) (not b!1621411) (not d!488222) (not d!488424) (not b!1621554) (not d!488374) (not bm!105141) (not b!1621830) b_and!114993 (not d!488378) (not b!1621917) (not d!488336) (not b!1621460) (not tb!93183) (not b!1621301) (not d!488228) (not bm!105133) (not b!1621300) (not b!1621867) (not d!488216) (not b_lambda!51125) (not b_next!44397) (not b!1621900) (not b!1621833) (not b!1621579) (not d!488372) (not d!488430) (not b!1621907) (not b!1621719) (not b_next!44407) (not b!1621862) (not b!1621626) (not b!1621820) (not d!488340) (not b!1621684) (not d!488282) (not d!488286) (not b_next!44391) (not d!488224) (not b!1621493) (not b_next!44393) (not b!1621566) (not b!1621308) (not b!1621827) (not d!488382) (not b!1621462) (not b!1621577) (not d!488386) b_and!115017 (not b!1621457) (not d!488346) (not d!488324) (not b!1621410) (not b!1621606) b_and!115033 (not b!1621565) (not d!488266) (not d!488380) (not b!1621570) (not d!488290) (not b!1621821) (not b!1621503) (not b!1621412) (not b!1621611) (not d!488332) (not b!1621464) (not b!1621599) (not d!488196) (not d!488256) (not b!1621195) (not d!488384) (not d!488370) (not b!1621664) b_and!115035 (not b!1621798) (not b!1621200) (not b!1621627) (not d!488284) (not b!1621502) (not d!488426) (not b!1621822) (not b!1621869) (not b!1621601) (not b!1621886) (not b_lambda!51127) (not d!488388) (not d!488232) (not b!1621629) (not d!488366) (not bm!105129) (not b_next!44411) (not d!488436) (not b!1621299) (not b!1621685) (not d!488194) (not d!488264) (not d!488330) (not d!488230) (not d!488398) (not b!1621461) (not b!1621901) (not b!1621717) (not b!1621863))
(check-sat (not b_next!44413) (not b_next!44409) (not b_next!44395) b_and!115031 b_and!115029 b_and!114993 (not b_next!44397) (not b_next!44407) b_and!115017 b_and!115033 b_and!115035 (not b_next!44411) b_and!115019 b_and!114989 (not b_next!44391) (not b_next!44393))
