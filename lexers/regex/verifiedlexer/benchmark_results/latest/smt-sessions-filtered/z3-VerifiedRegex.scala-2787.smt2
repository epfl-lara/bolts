; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!154286 () Bool)

(assert start!154286)

(declare-fun b!1623996 () Bool)

(declare-fun b_free!43799 () Bool)

(declare-fun b_next!44503 () Bool)

(assert (=> b!1623996 (= b_free!43799 (not b_next!44503))))

(declare-fun tp!472433 () Bool)

(declare-fun b_and!115173 () Bool)

(assert (=> b!1623996 (= tp!472433 b_and!115173)))

(declare-fun b_free!43801 () Bool)

(declare-fun b_next!44505 () Bool)

(assert (=> b!1623996 (= b_free!43801 (not b_next!44505))))

(declare-fun tp!472436 () Bool)

(declare-fun b_and!115175 () Bool)

(assert (=> b!1623996 (= tp!472436 b_and!115175)))

(declare-fun b!1623985 () Bool)

(declare-fun b_free!43803 () Bool)

(declare-fun b_next!44507 () Bool)

(assert (=> b!1623985 (= b_free!43803 (not b_next!44507))))

(declare-fun tp!472434 () Bool)

(declare-fun b_and!115177 () Bool)

(assert (=> b!1623985 (= tp!472434 b_and!115177)))

(declare-fun b_free!43805 () Bool)

(declare-fun b_next!44509 () Bool)

(assert (=> b!1623985 (= b_free!43805 (not b_next!44509))))

(declare-fun tp!472437 () Bool)

(declare-fun b_and!115179 () Bool)

(assert (=> b!1623985 (= tp!472437 b_and!115179)))

(declare-fun e!1041596 () Bool)

(declare-fun tp!472438 () Bool)

(declare-fun b!1623984 () Bool)

(declare-datatypes ((List!17871 0))(
  ( (Nil!17801) (Cons!17801 (h!23202 (_ BitVec 16)) (t!148920 List!17871)) )
))
(declare-datatypes ((TokenValue!3225 0))(
  ( (FloatLiteralValue!6450 (text!23020 List!17871)) (TokenValueExt!3224 (__x!11752 Int)) (Broken!16125 (value!98994 List!17871)) (Object!3294) (End!3225) (Def!3225) (Underscore!3225) (Match!3225) (Else!3225) (Error!3225) (Case!3225) (If!3225) (Extends!3225) (Abstract!3225) (Class!3225) (Val!3225) (DelimiterValue!6450 (del!3285 List!17871)) (KeywordValue!3231 (value!98995 List!17871)) (CommentValue!6450 (value!98996 List!17871)) (WhitespaceValue!6450 (value!98997 List!17871)) (IndentationValue!3225 (value!98998 List!17871)) (String!20456) (Int32!3225) (Broken!16126 (value!98999 List!17871)) (Boolean!3226) (Unit!28816) (OperatorValue!3228 (op!3285 List!17871)) (IdentifierValue!6450 (value!99000 List!17871)) (IdentifierValue!6451 (value!99001 List!17871)) (WhitespaceValue!6451 (value!99002 List!17871)) (True!6450) (False!6450) (Broken!16127 (value!99003 List!17871)) (Broken!16128 (value!99004 List!17871)) (True!6451) (RightBrace!3225) (RightBracket!3225) (Colon!3225) (Null!3225) (Comma!3225) (LeftBracket!3225) (False!6451) (LeftBrace!3225) (ImaginaryLiteralValue!3225 (text!23021 List!17871)) (StringLiteralValue!9675 (value!99005 List!17871)) (EOFValue!3225 (value!99006 List!17871)) (IdentValue!3225 (value!99007 List!17871)) (DelimiterValue!6451 (value!99008 List!17871)) (DedentValue!3225 (value!99009 List!17871)) (NewLineValue!3225 (value!99010 List!17871)) (IntegerValue!9675 (value!99011 (_ BitVec 32)) (text!23022 List!17871)) (IntegerValue!9676 (value!99012 Int) (text!23023 List!17871)) (Times!3225) (Or!3225) (Equal!3225) (Minus!3225) (Broken!16129 (value!99013 List!17871)) (And!3225) (Div!3225) (LessEqual!3225) (Mod!3225) (Concat!7688) (Not!3225) (Plus!3225) (SpaceValue!3225 (value!99014 List!17871)) (IntegerValue!9677 (value!99015 Int) (text!23024 List!17871)) (StringLiteralValue!9676 (text!23025 List!17871)) (FloatLiteralValue!6451 (text!23026 List!17871)) (BytesLiteralValue!3225 (value!99016 List!17871)) (CommentValue!6451 (value!99017 List!17871)) (StringLiteralValue!9677 (value!99018 List!17871)) (ErrorTokenValue!3225 (msg!3286 List!17871)) )
))
(declare-datatypes ((C!9100 0))(
  ( (C!9101 (val!5146 Int)) )
))
(declare-datatypes ((List!17872 0))(
  ( (Nil!17802) (Cons!17802 (h!23203 C!9100) (t!148921 List!17872)) )
))
(declare-datatypes ((IArray!11841 0))(
  ( (IArray!11842 (innerList!5978 List!17872)) )
))
(declare-datatypes ((Conc!5918 0))(
  ( (Node!5918 (left!14315 Conc!5918) (right!14645 Conc!5918) (csize!12066 Int) (cheight!6129 Int)) (Leaf!8706 (xs!8750 IArray!11841) (csize!12067 Int)) (Empty!5918) )
))
(declare-datatypes ((BalanceConc!11780 0))(
  ( (BalanceConc!11781 (c!264357 Conc!5918)) )
))
(declare-datatypes ((Regex!4463 0))(
  ( (ElementMatch!4463 (c!264358 C!9100)) (Concat!7689 (regOne!9438 Regex!4463) (regTwo!9438 Regex!4463)) (EmptyExpr!4463) (Star!4463 (reg!4792 Regex!4463)) (EmptyLang!4463) (Union!4463 (regOne!9439 Regex!4463) (regTwo!9439 Regex!4463)) )
))
(declare-datatypes ((String!20457 0))(
  ( (String!20458 (value!99019 String)) )
))
(declare-datatypes ((TokenValueInjection!6110 0))(
  ( (TokenValueInjection!6111 (toValue!4562 Int) (toChars!4421 Int)) )
))
(declare-datatypes ((Rule!6070 0))(
  ( (Rule!6071 (regex!3135 Regex!4463) (tag!3413 String!20457) (isSeparator!3135 Bool) (transformation!3135 TokenValueInjection!6110)) )
))
(declare-datatypes ((Token!5836 0))(
  ( (Token!5837 (value!99020 TokenValue!3225) (rule!4961 Rule!6070) (size!14256 Int) (originalCharacters!3949 List!17872)) )
))
(declare-datatypes ((List!17873 0))(
  ( (Nil!17803) (Cons!17803 (h!23204 Token!5836) (t!148922 List!17873)) )
))
(declare-fun tokens!457 () List!17873)

(declare-fun e!1041610 () Bool)

(declare-fun inv!23185 (Token!5836) Bool)

(assert (=> b!1623984 (= e!1041596 (and (inv!23185 (h!23204 tokens!457)) e!1041610 tp!472438))))

(declare-fun res!725761 () Bool)

(declare-fun e!1041599 () Bool)

(assert (=> start!154286 (=> (not res!725761) (not e!1041599))))

(declare-datatypes ((LexerInterface!2764 0))(
  ( (LexerInterfaceExt!2761 (__x!11753 Int)) (Lexer!2762) )
))
(declare-fun thiss!17113 () LexerInterface!2764)

(get-info :version)

(assert (=> start!154286 (= res!725761 ((_ is Lexer!2762) thiss!17113))))

(assert (=> start!154286 e!1041599))

(assert (=> start!154286 true))

(declare-fun e!1041597 () Bool)

(assert (=> start!154286 e!1041597))

(assert (=> start!154286 e!1041596))

(declare-fun e!1041604 () Bool)

(assert (=> b!1623985 (= e!1041604 (and tp!472434 tp!472437))))

(declare-fun b!1623986 () Bool)

(declare-fun e!1041603 () Bool)

(declare-fun e!1041594 () Bool)

(assert (=> b!1623986 (= e!1041603 e!1041594)))

(declare-fun res!725750 () Bool)

(assert (=> b!1623986 (=> res!725750 e!1041594)))

(declare-fun lt!585905 () Regex!4463)

(declare-fun lt!585890 () List!17872)

(declare-fun prefixMatch!398 (Regex!4463 List!17872) Bool)

(declare-fun ++!4727 (List!17872 List!17872) List!17872)

(assert (=> b!1623986 (= res!725750 (prefixMatch!398 lt!585905 (++!4727 (originalCharacters!3949 (h!23204 tokens!457)) lt!585890)))))

(declare-fun e!1041606 () Bool)

(assert (=> b!1623986 e!1041606))

(declare-fun res!725744 () Bool)

(assert (=> b!1623986 (=> (not res!725744) (not e!1041606))))

(declare-datatypes ((tuple2!17362 0))(
  ( (tuple2!17363 (_1!10083 Token!5836) (_2!10083 List!17872)) )
))
(declare-fun lt!585913 () tuple2!17362)

(assert (=> b!1623986 (= res!725744 (= (_1!10083 lt!585913) (h!23204 tokens!457)))))

(declare-datatypes ((Option!3291 0))(
  ( (None!3290) (Some!3290 (v!24319 tuple2!17362)) )
))
(declare-fun lt!585912 () Option!3291)

(declare-fun get!5127 (Option!3291) tuple2!17362)

(assert (=> b!1623986 (= lt!585913 (get!5127 lt!585912))))

(declare-fun isDefined!2658 (Option!3291) Bool)

(assert (=> b!1623986 (isDefined!2658 lt!585912)))

(declare-datatypes ((List!17874 0))(
  ( (Nil!17804) (Cons!17804 (h!23205 Rule!6070) (t!148923 List!17874)) )
))
(declare-fun rules!1846 () List!17874)

(declare-fun lt!585915 () List!17872)

(declare-fun maxPrefix!1328 (LexerInterface!2764 List!17874 List!17872) Option!3291)

(assert (=> b!1623986 (= lt!585912 (maxPrefix!1328 thiss!17113 rules!1846 lt!585915))))

(assert (=> b!1623986 (isDefined!2658 (maxPrefix!1328 thiss!17113 rules!1846 (originalCharacters!3949 (h!23204 tokens!457))))))

(declare-fun b!1623987 () Bool)

(declare-fun res!725755 () Bool)

(assert (=> b!1623987 (=> (not res!725755) (not e!1041599))))

(declare-fun rulesInvariant!2433 (LexerInterface!2764 List!17874) Bool)

(assert (=> b!1623987 (= res!725755 (rulesInvariant!2433 thiss!17113 rules!1846))))

(declare-fun e!1041608 () Bool)

(declare-fun b!1623988 () Bool)

(declare-fun e!1041605 () Bool)

(declare-fun tp!472435 () Bool)

(declare-fun inv!23182 (String!20457) Bool)

(declare-fun inv!23186 (TokenValueInjection!6110) Bool)

(assert (=> b!1623988 (= e!1041605 (and tp!472435 (inv!23182 (tag!3413 (h!23205 rules!1846))) (inv!23186 (transformation!3135 (h!23205 rules!1846))) e!1041608))))

(declare-fun b!1623989 () Bool)

(declare-fun res!725742 () Bool)

(declare-fun e!1041612 () Bool)

(assert (=> b!1623989 (=> res!725742 e!1041612)))

(declare-fun separableTokensPredicate!706 (LexerInterface!2764 Token!5836 Token!5836 List!17874) Bool)

(assert (=> b!1623989 (= res!725742 (not (separableTokensPredicate!706 thiss!17113 (h!23204 tokens!457) (h!23204 (t!148922 tokens!457)) rules!1846)))))

(declare-fun b!1623990 () Bool)

(declare-fun e!1041598 () Bool)

(declare-fun e!1041600 () Bool)

(assert (=> b!1623990 (= e!1041598 e!1041600)))

(declare-fun res!725746 () Bool)

(assert (=> b!1623990 (=> res!725746 e!1041600)))

(declare-fun lt!585907 () List!17872)

(assert (=> b!1623990 (= res!725746 (prefixMatch!398 lt!585905 (++!4727 lt!585915 lt!585907)))))

(declare-fun lt!585902 () BalanceConc!11780)

(declare-fun list!6983 (BalanceConc!11780) List!17872)

(assert (=> b!1623990 (= lt!585907 (list!6983 lt!585902))))

(declare-fun b!1623991 () Bool)

(declare-fun validRegex!1776 (Regex!4463) Bool)

(assert (=> b!1623991 (= e!1041594 (validRegex!1776 lt!585905))))

(declare-fun lt!585914 () List!17872)

(assert (=> b!1623991 (= lt!585914 (++!4727 lt!585915 lt!585890))))

(declare-fun b!1623992 () Bool)

(declare-fun res!725758 () Bool)

(declare-fun e!1041595 () Bool)

(assert (=> b!1623992 (=> (not res!725758) (not e!1041595))))

(declare-fun head!3420 (List!17872) C!9100)

(assert (=> b!1623992 (= res!725758 (= lt!585907 (Cons!17802 (head!3420 (originalCharacters!3949 (h!23204 (t!148922 tokens!457)))) Nil!17802)))))

(declare-fun b!1623993 () Bool)

(declare-fun e!1041591 () Bool)

(assert (=> b!1623993 (= e!1041591 e!1041612)))

(declare-fun res!725753 () Bool)

(assert (=> b!1623993 (=> res!725753 e!1041612)))

(declare-fun lt!585899 () List!17873)

(declare-fun lt!585916 () List!17873)

(declare-fun lt!585898 () List!17873)

(assert (=> b!1623993 (= res!725753 (or (not (= lt!585899 lt!585916)) (not (= lt!585916 lt!585898))))))

(declare-datatypes ((IArray!11843 0))(
  ( (IArray!11844 (innerList!5979 List!17873)) )
))
(declare-datatypes ((Conc!5919 0))(
  ( (Node!5919 (left!14316 Conc!5919) (right!14646 Conc!5919) (csize!12068 Int) (cheight!6130 Int)) (Leaf!8707 (xs!8751 IArray!11843) (csize!12069 Int)) (Empty!5919) )
))
(declare-datatypes ((BalanceConc!11782 0))(
  ( (BalanceConc!11783 (c!264359 Conc!5919)) )
))
(declare-fun lt!585906 () BalanceConc!11782)

(declare-fun list!6984 (BalanceConc!11782) List!17873)

(assert (=> b!1623993 (= lt!585916 (list!6984 lt!585906))))

(assert (=> b!1623993 (= lt!585899 lt!585898)))

(declare-fun prepend!659 (BalanceConc!11782 Token!5836) BalanceConc!11782)

(declare-fun seqFromList!2019 (List!17873) BalanceConc!11782)

(assert (=> b!1623993 (= lt!585898 (list!6984 (prepend!659 (seqFromList!2019 (t!148922 (t!148922 tokens!457))) (h!23204 (t!148922 tokens!457)))))))

(declare-datatypes ((Unit!28817 0))(
  ( (Unit!28818) )
))
(declare-fun lt!585911 () Unit!28817)

(declare-datatypes ((tuple2!17364 0))(
  ( (tuple2!17365 (_1!10084 BalanceConc!11782) (_2!10084 BalanceConc!11780)) )
))
(declare-fun lt!585894 () tuple2!17364)

(declare-fun seqFromListBHdTlConstructive!212 (Token!5836 List!17873 BalanceConc!11782) Unit!28817)

(assert (=> b!1623993 (= lt!585911 (seqFromListBHdTlConstructive!212 (h!23204 (t!148922 tokens!457)) (t!148922 (t!148922 tokens!457)) (_1!10084 lt!585894)))))

(declare-fun b!1623994 () Bool)

(declare-fun tp!472432 () Bool)

(assert (=> b!1623994 (= e!1041597 (and e!1041605 tp!472432))))

(declare-fun b!1623995 () Bool)

(declare-fun e!1041609 () Bool)

(assert (=> b!1623995 (= e!1041609 e!1041598)))

(declare-fun res!725747 () Bool)

(assert (=> b!1623995 (=> res!725747 e!1041598)))

(declare-fun lt!585903 () BalanceConc!11780)

(declare-fun prefixMatchZipperSequence!521 (Regex!4463 BalanceConc!11780) Bool)

(declare-fun ++!4728 (BalanceConc!11780 BalanceConc!11780) BalanceConc!11780)

(assert (=> b!1623995 (= res!725747 (prefixMatchZipperSequence!521 lt!585905 (++!4728 lt!585903 lt!585902)))))

(declare-fun singletonSeq!1548 (C!9100) BalanceConc!11780)

(declare-fun apply!4538 (BalanceConc!11780 Int) C!9100)

(declare-fun charsOf!1784 (Token!5836) BalanceConc!11780)

(assert (=> b!1623995 (= lt!585902 (singletonSeq!1548 (apply!4538 (charsOf!1784 (h!23204 (t!148922 tokens!457))) 0)))))

(declare-fun rulesRegex!525 (LexerInterface!2764 List!17874) Regex!4463)

(assert (=> b!1623995 (= lt!585905 (rulesRegex!525 thiss!17113 rules!1846))))

(assert (=> b!1623996 (= e!1041608 (and tp!472433 tp!472436))))

(declare-fun b!1623997 () Bool)

(declare-fun res!725751 () Bool)

(declare-fun e!1041602 () Bool)

(assert (=> b!1623997 (=> res!725751 e!1041602)))

(declare-fun isEmpty!10831 (BalanceConc!11782) Bool)

(declare-fun lex!1248 (LexerInterface!2764 List!17874 BalanceConc!11780) tuple2!17364)

(declare-fun seqFromList!2020 (List!17872) BalanceConc!11780)

(assert (=> b!1623997 (= res!725751 (isEmpty!10831 (_1!10084 (lex!1248 thiss!17113 rules!1846 (seqFromList!2020 lt!585915)))))))

(declare-fun b!1623998 () Bool)

(declare-fun e!1041593 () Bool)

(assert (=> b!1623998 (= e!1041599 e!1041593)))

(declare-fun res!725760 () Bool)

(assert (=> b!1623998 (=> (not res!725760) (not e!1041593))))

(declare-fun lt!585896 () List!17872)

(declare-fun lt!585910 () List!17872)

(assert (=> b!1623998 (= res!725760 (= lt!585896 lt!585910))))

(declare-fun lt!585904 () List!17872)

(assert (=> b!1623998 (= lt!585910 (++!4727 lt!585915 lt!585904))))

(declare-fun lt!585889 () BalanceConc!11780)

(assert (=> b!1623998 (= lt!585896 (list!6983 lt!585889))))

(declare-fun lt!585895 () BalanceConc!11780)

(assert (=> b!1623998 (= lt!585904 (list!6983 lt!585895))))

(assert (=> b!1623998 (= lt!585915 (list!6983 lt!585903))))

(assert (=> b!1623998 (= lt!585903 (charsOf!1784 (h!23204 tokens!457)))))

(assert (=> b!1623998 (= lt!585894 (lex!1248 thiss!17113 rules!1846 lt!585895))))

(declare-fun print!1295 (LexerInterface!2764 BalanceConc!11782) BalanceConc!11780)

(assert (=> b!1623998 (= lt!585895 (print!1295 thiss!17113 lt!585906))))

(assert (=> b!1623998 (= lt!585906 (seqFromList!2019 (t!148922 tokens!457)))))

(assert (=> b!1623998 (= lt!585889 (print!1295 thiss!17113 (seqFromList!2019 tokens!457)))))

(declare-fun b!1623999 () Bool)

(declare-fun res!725752 () Bool)

(assert (=> b!1623999 (=> (not res!725752) (not e!1041599))))

(declare-fun isEmpty!10832 (List!17874) Bool)

(assert (=> b!1623999 (= res!725752 (not (isEmpty!10832 rules!1846)))))

(declare-fun b!1624000 () Bool)

(assert (=> b!1624000 (= e!1041600 e!1041603)))

(declare-fun res!725762 () Bool)

(assert (=> b!1624000 (=> res!725762 e!1041603)))

(declare-datatypes ((tuple2!17366 0))(
  ( (tuple2!17367 (_1!10085 Token!5836) (_2!10085 BalanceConc!11780)) )
))
(declare-datatypes ((Option!3292 0))(
  ( (None!3291) (Some!3291 (v!24320 tuple2!17366)) )
))
(declare-fun isDefined!2659 (Option!3292) Bool)

(declare-fun maxPrefixZipperSequence!659 (LexerInterface!2764 List!17874 BalanceConc!11780) Option!3292)

(assert (=> b!1624000 (= res!725762 (not (isDefined!2659 (maxPrefixZipperSequence!659 thiss!17113 rules!1846 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))))

(assert (=> b!1624000 (= lt!585907 lt!585890)))

(declare-fun head!3421 (BalanceConc!11780) C!9100)

(assert (=> b!1624000 (= lt!585890 (Cons!17802 (head!3421 lt!585895) Nil!17802))))

(assert (=> b!1624000 e!1041595))

(declare-fun res!725745 () Bool)

(assert (=> b!1624000 (=> (not res!725745) (not e!1041595))))

(assert (=> b!1624000 (= res!725745 (= lt!585915 (originalCharacters!3949 (h!23204 tokens!457))))))

(declare-fun b!1624001 () Bool)

(declare-fun matchR!1962 (Regex!4463 List!17872) Bool)

(assert (=> b!1624001 (= e!1041606 (matchR!1962 (regex!3135 (rule!4961 (h!23204 tokens!457))) lt!585915))))

(declare-fun b!1624002 () Bool)

(declare-fun res!725754 () Bool)

(assert (=> b!1624002 (=> (not res!725754) (not e!1041606))))

(declare-fun isEmpty!10833 (List!17872) Bool)

(assert (=> b!1624002 (= res!725754 (isEmpty!10833 (_2!10083 lt!585913)))))

(declare-fun b!1624003 () Bool)

(declare-fun res!725748 () Bool)

(assert (=> b!1624003 (=> (not res!725748) (not e!1041599))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!457 (LexerInterface!2764 List!17873 List!17874) Bool)

(assert (=> b!1624003 (= res!725748 (tokensListTwoByTwoPredicateSeparableList!457 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1624004 () Bool)

(assert (=> b!1624004 (= e!1041593 (not e!1041591))))

(declare-fun res!725756 () Bool)

(assert (=> b!1624004 (=> res!725756 e!1041591)))

(assert (=> b!1624004 (= res!725756 (not (= lt!585899 (t!148922 tokens!457))))))

(assert (=> b!1624004 (= lt!585899 (list!6984 (_1!10084 lt!585894)))))

(declare-fun lt!585901 () Unit!28817)

(declare-fun theoremInvertabilityWhenTokenListSeparable!209 (LexerInterface!2764 List!17874 List!17873) Unit!28817)

(assert (=> b!1624004 (= lt!585901 (theoremInvertabilityWhenTokenListSeparable!209 thiss!17113 rules!1846 (t!148922 tokens!457)))))

(declare-fun isPrefix!1395 (List!17872 List!17872) Bool)

(assert (=> b!1624004 (isPrefix!1395 lt!585915 lt!585910)))

(declare-fun lt!585908 () Unit!28817)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!920 (List!17872 List!17872) Unit!28817)

(assert (=> b!1624004 (= lt!585908 (lemmaConcatTwoListThenFirstIsPrefix!920 lt!585915 lt!585904))))

(declare-fun b!1624005 () Bool)

(declare-fun res!725749 () Bool)

(assert (=> b!1624005 (=> (not res!725749) (not e!1041599))))

(assert (=> b!1624005 (= res!725749 (and (not ((_ is Nil!17803) tokens!457)) (not ((_ is Nil!17803) (t!148922 tokens!457)))))))

(declare-fun b!1624006 () Bool)

(assert (=> b!1624006 (= e!1041612 e!1041602)))

(declare-fun res!725743 () Bool)

(assert (=> b!1624006 (=> res!725743 e!1041602)))

(declare-fun lt!585893 () List!17872)

(declare-fun lt!585892 () List!17872)

(assert (=> b!1624006 (= res!725743 (or (not (= lt!585893 lt!585892)) (not (= lt!585892 lt!585915)) (not (= lt!585893 lt!585915))))))

(declare-fun printList!879 (LexerInterface!2764 List!17873) List!17872)

(assert (=> b!1624006 (= lt!585892 (printList!879 thiss!17113 (Cons!17803 (h!23204 tokens!457) Nil!17803)))))

(declare-fun lt!585891 () BalanceConc!11780)

(assert (=> b!1624006 (= lt!585893 (list!6983 lt!585891))))

(declare-fun lt!585897 () BalanceConc!11782)

(declare-fun printTailRec!817 (LexerInterface!2764 BalanceConc!11782 Int BalanceConc!11780) BalanceConc!11780)

(assert (=> b!1624006 (= lt!585891 (printTailRec!817 thiss!17113 lt!585897 0 (BalanceConc!11781 Empty!5918)))))

(assert (=> b!1624006 (= lt!585891 (print!1295 thiss!17113 lt!585897))))

(declare-fun singletonSeq!1549 (Token!5836) BalanceConc!11782)

(assert (=> b!1624006 (= lt!585897 (singletonSeq!1549 (h!23204 tokens!457)))))

(declare-fun lt!585900 () Option!3291)

(assert (=> b!1624006 (= lt!585900 (maxPrefix!1328 thiss!17113 rules!1846 lt!585896))))

(declare-fun tp!472431 () Bool)

(declare-fun e!1041601 () Bool)

(declare-fun b!1624007 () Bool)

(declare-fun inv!21 (TokenValue!3225) Bool)

(assert (=> b!1624007 (= e!1041610 (and (inv!21 (value!99020 (h!23204 tokens!457))) e!1041601 tp!472431))))

(declare-fun b!1624008 () Bool)

(declare-fun res!725763 () Bool)

(assert (=> b!1624008 (=> res!725763 e!1041602)))

(declare-fun rulesProduceIndividualToken!1416 (LexerInterface!2764 List!17874 Token!5836) Bool)

(assert (=> b!1624008 (= res!725763 (not (rulesProduceIndividualToken!1416 thiss!17113 rules!1846 (h!23204 tokens!457))))))

(declare-fun b!1624009 () Bool)

(declare-fun tp!472430 () Bool)

(assert (=> b!1624009 (= e!1041601 (and tp!472430 (inv!23182 (tag!3413 (rule!4961 (h!23204 tokens!457)))) (inv!23186 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) e!1041604))))

(declare-fun b!1624010 () Bool)

(assert (=> b!1624010 (= e!1041595 (= lt!585907 (Cons!17802 (head!3420 lt!585904) Nil!17802)))))

(declare-fun b!1624011 () Bool)

(assert (=> b!1624011 (= e!1041602 e!1041609)))

(declare-fun res!725759 () Bool)

(assert (=> b!1624011 (=> res!725759 e!1041609)))

(assert (=> b!1624011 (= res!725759 (not (isDefined!2658 lt!585900)))))

(declare-fun lt!585909 () Unit!28817)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!338 (LexerInterface!2764 List!17874 List!17872 List!17872) Unit!28817)

(assert (=> b!1624011 (= lt!585909 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!338 thiss!17113 rules!1846 lt!585915 lt!585904))))

(declare-fun b!1624012 () Bool)

(declare-fun res!725757 () Bool)

(assert (=> b!1624012 (=> (not res!725757) (not e!1041599))))

(declare-fun rulesProduceEachTokenIndividuallyList!966 (LexerInterface!2764 List!17874 List!17873) Bool)

(assert (=> b!1624012 (= res!725757 (rulesProduceEachTokenIndividuallyList!966 thiss!17113 rules!1846 tokens!457))))

(assert (= (and start!154286 res!725761) b!1623999))

(assert (= (and b!1623999 res!725752) b!1623987))

(assert (= (and b!1623987 res!725755) b!1624012))

(assert (= (and b!1624012 res!725757) b!1624003))

(assert (= (and b!1624003 res!725748) b!1624005))

(assert (= (and b!1624005 res!725749) b!1623998))

(assert (= (and b!1623998 res!725760) b!1624004))

(assert (= (and b!1624004 (not res!725756)) b!1623993))

(assert (= (and b!1623993 (not res!725753)) b!1623989))

(assert (= (and b!1623989 (not res!725742)) b!1624006))

(assert (= (and b!1624006 (not res!725743)) b!1624008))

(assert (= (and b!1624008 (not res!725763)) b!1623997))

(assert (= (and b!1623997 (not res!725751)) b!1624011))

(assert (= (and b!1624011 (not res!725759)) b!1623995))

(assert (= (and b!1623995 (not res!725747)) b!1623990))

(assert (= (and b!1623990 (not res!725746)) b!1624000))

(assert (= (and b!1624000 res!725745) b!1623992))

(assert (= (and b!1623992 res!725758) b!1624010))

(assert (= (and b!1624000 (not res!725762)) b!1623986))

(assert (= (and b!1623986 res!725744) b!1624002))

(assert (= (and b!1624002 res!725754) b!1624001))

(assert (= (and b!1623986 (not res!725750)) b!1623991))

(assert (= b!1623988 b!1623996))

(assert (= b!1623994 b!1623988))

(assert (= (and start!154286 ((_ is Cons!17804) rules!1846)) b!1623994))

(assert (= b!1624009 b!1623985))

(assert (= b!1624007 b!1624009))

(assert (= b!1623984 b!1624007))

(assert (= (and start!154286 ((_ is Cons!17803) tokens!457)) b!1623984))

(declare-fun m!1950901 () Bool)

(assert (=> b!1624003 m!1950901))

(declare-fun m!1950903 () Bool)

(assert (=> b!1624001 m!1950903))

(declare-fun m!1950905 () Bool)

(assert (=> b!1624011 m!1950905))

(declare-fun m!1950907 () Bool)

(assert (=> b!1624011 m!1950907))

(declare-fun m!1950909 () Bool)

(assert (=> b!1624009 m!1950909))

(declare-fun m!1950911 () Bool)

(assert (=> b!1624009 m!1950911))

(declare-fun m!1950913 () Bool)

(assert (=> b!1623992 m!1950913))

(declare-fun m!1950915 () Bool)

(assert (=> b!1623989 m!1950915))

(declare-fun m!1950917 () Bool)

(assert (=> b!1624002 m!1950917))

(declare-fun m!1950919 () Bool)

(assert (=> b!1623997 m!1950919))

(assert (=> b!1623997 m!1950919))

(declare-fun m!1950921 () Bool)

(assert (=> b!1623997 m!1950921))

(declare-fun m!1950923 () Bool)

(assert (=> b!1623997 m!1950923))

(declare-fun m!1950925 () Bool)

(assert (=> b!1624010 m!1950925))

(declare-fun m!1950927 () Bool)

(assert (=> b!1623995 m!1950927))

(declare-fun m!1950929 () Bool)

(assert (=> b!1623995 m!1950929))

(declare-fun m!1950931 () Bool)

(assert (=> b!1623995 m!1950931))

(declare-fun m!1950933 () Bool)

(assert (=> b!1623995 m!1950933))

(declare-fun m!1950935 () Bool)

(assert (=> b!1623995 m!1950935))

(assert (=> b!1623995 m!1950929))

(declare-fun m!1950937 () Bool)

(assert (=> b!1623995 m!1950937))

(assert (=> b!1623995 m!1950933))

(assert (=> b!1623995 m!1950937))

(declare-fun m!1950939 () Bool)

(assert (=> b!1624000 m!1950939))

(assert (=> b!1624000 m!1950939))

(declare-fun m!1950941 () Bool)

(assert (=> b!1624000 m!1950941))

(assert (=> b!1624000 m!1950941))

(declare-fun m!1950943 () Bool)

(assert (=> b!1624000 m!1950943))

(declare-fun m!1950945 () Bool)

(assert (=> b!1624000 m!1950945))

(declare-fun m!1950947 () Bool)

(assert (=> b!1624004 m!1950947))

(declare-fun m!1950949 () Bool)

(assert (=> b!1624004 m!1950949))

(declare-fun m!1950951 () Bool)

(assert (=> b!1624004 m!1950951))

(declare-fun m!1950953 () Bool)

(assert (=> b!1624004 m!1950953))

(declare-fun m!1950955 () Bool)

(assert (=> b!1623987 m!1950955))

(declare-fun m!1950957 () Bool)

(assert (=> b!1624007 m!1950957))

(declare-fun m!1950959 () Bool)

(assert (=> b!1623986 m!1950959))

(declare-fun m!1950961 () Bool)

(assert (=> b!1623986 m!1950961))

(declare-fun m!1950963 () Bool)

(assert (=> b!1623986 m!1950963))

(declare-fun m!1950965 () Bool)

(assert (=> b!1623986 m!1950965))

(assert (=> b!1623986 m!1950963))

(declare-fun m!1950967 () Bool)

(assert (=> b!1623986 m!1950967))

(assert (=> b!1623986 m!1950959))

(declare-fun m!1950969 () Bool)

(assert (=> b!1623986 m!1950969))

(declare-fun m!1950971 () Bool)

(assert (=> b!1623986 m!1950971))

(declare-fun m!1950973 () Bool)

(assert (=> b!1623984 m!1950973))

(declare-fun m!1950975 () Bool)

(assert (=> b!1623990 m!1950975))

(assert (=> b!1623990 m!1950975))

(declare-fun m!1950977 () Bool)

(assert (=> b!1623990 m!1950977))

(declare-fun m!1950979 () Bool)

(assert (=> b!1623990 m!1950979))

(declare-fun m!1950981 () Bool)

(assert (=> b!1624012 m!1950981))

(declare-fun m!1950983 () Bool)

(assert (=> b!1623999 m!1950983))

(declare-fun m!1950985 () Bool)

(assert (=> b!1623998 m!1950985))

(declare-fun m!1950987 () Bool)

(assert (=> b!1623998 m!1950987))

(declare-fun m!1950989 () Bool)

(assert (=> b!1623998 m!1950989))

(declare-fun m!1950991 () Bool)

(assert (=> b!1623998 m!1950991))

(declare-fun m!1950993 () Bool)

(assert (=> b!1623998 m!1950993))

(declare-fun m!1950995 () Bool)

(assert (=> b!1623998 m!1950995))

(declare-fun m!1950997 () Bool)

(assert (=> b!1623998 m!1950997))

(declare-fun m!1950999 () Bool)

(assert (=> b!1623998 m!1950999))

(assert (=> b!1623998 m!1950991))

(declare-fun m!1951001 () Bool)

(assert (=> b!1623998 m!1951001))

(declare-fun m!1951003 () Bool)

(assert (=> b!1623998 m!1951003))

(declare-fun m!1951005 () Bool)

(assert (=> b!1623988 m!1951005))

(declare-fun m!1951007 () Bool)

(assert (=> b!1623988 m!1951007))

(declare-fun m!1951009 () Bool)

(assert (=> b!1624006 m!1951009))

(declare-fun m!1951011 () Bool)

(assert (=> b!1624006 m!1951011))

(declare-fun m!1951013 () Bool)

(assert (=> b!1624006 m!1951013))

(declare-fun m!1951015 () Bool)

(assert (=> b!1624006 m!1951015))

(declare-fun m!1951017 () Bool)

(assert (=> b!1624006 m!1951017))

(declare-fun m!1951019 () Bool)

(assert (=> b!1624006 m!1951019))

(declare-fun m!1951021 () Bool)

(assert (=> b!1623993 m!1951021))

(declare-fun m!1951023 () Bool)

(assert (=> b!1623993 m!1951023))

(declare-fun m!1951025 () Bool)

(assert (=> b!1623993 m!1951025))

(assert (=> b!1623993 m!1951021))

(assert (=> b!1623993 m!1951023))

(declare-fun m!1951027 () Bool)

(assert (=> b!1623993 m!1951027))

(declare-fun m!1951029 () Bool)

(assert (=> b!1623993 m!1951029))

(declare-fun m!1951031 () Bool)

(assert (=> b!1623991 m!1951031))

(declare-fun m!1951033 () Bool)

(assert (=> b!1623991 m!1951033))

(declare-fun m!1951035 () Bool)

(assert (=> b!1624008 m!1951035))

(check-sat (not b!1624002) (not b!1623989) (not b_next!44507) (not b!1624008) (not b!1624011) b_and!115179 (not b!1624009) (not b!1623987) b_and!115175 (not b!1623984) (not b!1624010) (not b!1624007) (not b!1623995) (not b!1624000) (not b!1623998) (not b_next!44503) (not b!1624003) (not b!1623992) (not b_next!44505) (not b!1624006) (not b!1623994) (not b!1623999) (not b!1623990) (not b!1623988) (not b!1623991) (not b!1624004) (not b!1623997) (not b!1624001) (not b!1623993) b_and!115177 (not b!1623986) (not b!1624012) (not b_next!44509) b_and!115173)
(check-sat (not b_next!44503) (not b_next!44507) (not b_next!44505) b_and!115179 b_and!115175 b_and!115177 (not b_next!44509) b_and!115173)
(get-model)

(declare-fun d!488986 () Bool)

(declare-fun lt!585922 () BalanceConc!11780)

(assert (=> d!488986 (= (list!6983 lt!585922) (printList!879 thiss!17113 (list!6984 (seqFromList!2019 tokens!457))))))

(assert (=> d!488986 (= lt!585922 (printTailRec!817 thiss!17113 (seqFromList!2019 tokens!457) 0 (BalanceConc!11781 Empty!5918)))))

(assert (=> d!488986 (= (print!1295 thiss!17113 (seqFromList!2019 tokens!457)) lt!585922)))

(declare-fun bs!394685 () Bool)

(assert (= bs!394685 d!488986))

(declare-fun m!1951059 () Bool)

(assert (=> bs!394685 m!1951059))

(assert (=> bs!394685 m!1950991))

(declare-fun m!1951061 () Bool)

(assert (=> bs!394685 m!1951061))

(assert (=> bs!394685 m!1951061))

(declare-fun m!1951063 () Bool)

(assert (=> bs!394685 m!1951063))

(assert (=> bs!394685 m!1950991))

(declare-fun m!1951065 () Bool)

(assert (=> bs!394685 m!1951065))

(assert (=> b!1623998 d!488986))

(declare-fun e!1041647 () Bool)

(declare-fun b!1624062 () Bool)

(declare-fun lt!585925 () tuple2!17364)

(declare-datatypes ((tuple2!17368 0))(
  ( (tuple2!17369 (_1!10086 List!17873) (_2!10086 List!17872)) )
))
(declare-fun lexList!826 (LexerInterface!2764 List!17874 List!17872) tuple2!17368)

(assert (=> b!1624062 (= e!1041647 (= (list!6983 (_2!10084 lt!585925)) (_2!10086 (lexList!826 thiss!17113 rules!1846 (list!6983 lt!585895)))))))

(declare-fun d!488990 () Bool)

(assert (=> d!488990 e!1041647))

(declare-fun res!725801 () Bool)

(assert (=> d!488990 (=> (not res!725801) (not e!1041647))))

(declare-fun e!1041646 () Bool)

(assert (=> d!488990 (= res!725801 e!1041646)))

(declare-fun c!264371 () Bool)

(declare-fun size!14259 (BalanceConc!11782) Int)

(assert (=> d!488990 (= c!264371 (> (size!14259 (_1!10084 lt!585925)) 0))))

(declare-fun lexTailRecV2!549 (LexerInterface!2764 List!17874 BalanceConc!11780 BalanceConc!11780 BalanceConc!11780 BalanceConc!11782) tuple2!17364)

(assert (=> d!488990 (= lt!585925 (lexTailRecV2!549 thiss!17113 rules!1846 lt!585895 (BalanceConc!11781 Empty!5918) lt!585895 (BalanceConc!11783 Empty!5919)))))

(assert (=> d!488990 (= (lex!1248 thiss!17113 rules!1846 lt!585895) lt!585925)))

(declare-fun b!1624063 () Bool)

(declare-fun e!1041648 () Bool)

(assert (=> b!1624063 (= e!1041648 (not (isEmpty!10831 (_1!10084 lt!585925))))))

(declare-fun b!1624064 () Bool)

(declare-fun res!725800 () Bool)

(assert (=> b!1624064 (=> (not res!725800) (not e!1041647))))

(assert (=> b!1624064 (= res!725800 (= (list!6984 (_1!10084 lt!585925)) (_1!10086 (lexList!826 thiss!17113 rules!1846 (list!6983 lt!585895)))))))

(declare-fun b!1624065 () Bool)

(assert (=> b!1624065 (= e!1041646 e!1041648)))

(declare-fun res!725802 () Bool)

(declare-fun size!14260 (BalanceConc!11780) Int)

(assert (=> b!1624065 (= res!725802 (< (size!14260 (_2!10084 lt!585925)) (size!14260 lt!585895)))))

(assert (=> b!1624065 (=> (not res!725802) (not e!1041648))))

(declare-fun b!1624066 () Bool)

(assert (=> b!1624066 (= e!1041646 (= (_2!10084 lt!585925) lt!585895))))

(assert (= (and d!488990 c!264371) b!1624065))

(assert (= (and d!488990 (not c!264371)) b!1624066))

(assert (= (and b!1624065 res!725802) b!1624063))

(assert (= (and d!488990 res!725801) b!1624064))

(assert (= (and b!1624064 res!725800) b!1624062))

(declare-fun m!1951067 () Bool)

(assert (=> b!1624063 m!1951067))

(declare-fun m!1951069 () Bool)

(assert (=> b!1624062 m!1951069))

(assert (=> b!1624062 m!1950985))

(assert (=> b!1624062 m!1950985))

(declare-fun m!1951071 () Bool)

(assert (=> b!1624062 m!1951071))

(declare-fun m!1951073 () Bool)

(assert (=> b!1624065 m!1951073))

(declare-fun m!1951075 () Bool)

(assert (=> b!1624065 m!1951075))

(declare-fun m!1951077 () Bool)

(assert (=> b!1624064 m!1951077))

(assert (=> b!1624064 m!1950985))

(assert (=> b!1624064 m!1950985))

(assert (=> b!1624064 m!1951071))

(declare-fun m!1951079 () Bool)

(assert (=> d!488990 m!1951079))

(declare-fun m!1951081 () Bool)

(assert (=> d!488990 m!1951081))

(assert (=> b!1623998 d!488990))

(declare-fun d!488992 () Bool)

(declare-fun lt!585926 () BalanceConc!11780)

(assert (=> d!488992 (= (list!6983 lt!585926) (printList!879 thiss!17113 (list!6984 lt!585906)))))

(assert (=> d!488992 (= lt!585926 (printTailRec!817 thiss!17113 lt!585906 0 (BalanceConc!11781 Empty!5918)))))

(assert (=> d!488992 (= (print!1295 thiss!17113 lt!585906) lt!585926)))

(declare-fun bs!394686 () Bool)

(assert (= bs!394686 d!488992))

(declare-fun m!1951083 () Bool)

(assert (=> bs!394686 m!1951083))

(assert (=> bs!394686 m!1951029))

(assert (=> bs!394686 m!1951029))

(declare-fun m!1951085 () Bool)

(assert (=> bs!394686 m!1951085))

(declare-fun m!1951087 () Bool)

(assert (=> bs!394686 m!1951087))

(assert (=> b!1623998 d!488992))

(declare-fun d!488994 () Bool)

(declare-fun fromListB!889 (List!17873) BalanceConc!11782)

(assert (=> d!488994 (= (seqFromList!2019 tokens!457) (fromListB!889 tokens!457))))

(declare-fun bs!394687 () Bool)

(assert (= bs!394687 d!488994))

(declare-fun m!1951089 () Bool)

(assert (=> bs!394687 m!1951089))

(assert (=> b!1623998 d!488994))

(declare-fun d!488996 () Bool)

(declare-fun lt!585929 () BalanceConc!11780)

(assert (=> d!488996 (= (list!6983 lt!585929) (originalCharacters!3949 (h!23204 tokens!457)))))

(declare-fun dynLambda!7944 (Int TokenValue!3225) BalanceConc!11780)

(assert (=> d!488996 (= lt!585929 (dynLambda!7944 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (value!99020 (h!23204 tokens!457))))))

(assert (=> d!488996 (= (charsOf!1784 (h!23204 tokens!457)) lt!585929)))

(declare-fun b_lambda!51177 () Bool)

(assert (=> (not b_lambda!51177) (not d!488996)))

(declare-fun t!148925 () Bool)

(declare-fun tb!93271 () Bool)

(assert (=> (and b!1623996 (= (toChars!4421 (transformation!3135 (h!23205 rules!1846))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457))))) t!148925) tb!93271))

(declare-fun b!1624071 () Bool)

(declare-fun e!1041651 () Bool)

(declare-fun tp!472441 () Bool)

(declare-fun inv!23187 (Conc!5918) Bool)

(assert (=> b!1624071 (= e!1041651 (and (inv!23187 (c!264357 (dynLambda!7944 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (value!99020 (h!23204 tokens!457))))) tp!472441))))

(declare-fun result!112470 () Bool)

(declare-fun inv!23188 (BalanceConc!11780) Bool)

(assert (=> tb!93271 (= result!112470 (and (inv!23188 (dynLambda!7944 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (value!99020 (h!23204 tokens!457)))) e!1041651))))

(assert (= tb!93271 b!1624071))

(declare-fun m!1951091 () Bool)

(assert (=> b!1624071 m!1951091))

(declare-fun m!1951093 () Bool)

(assert (=> tb!93271 m!1951093))

(assert (=> d!488996 t!148925))

(declare-fun b_and!115181 () Bool)

(assert (= b_and!115175 (and (=> t!148925 result!112470) b_and!115181)))

(declare-fun t!148927 () Bool)

(declare-fun tb!93273 () Bool)

(assert (=> (and b!1623985 (= (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457))))) t!148927) tb!93273))

(declare-fun result!112474 () Bool)

(assert (= result!112474 result!112470))

(assert (=> d!488996 t!148927))

(declare-fun b_and!115183 () Bool)

(assert (= b_and!115179 (and (=> t!148927 result!112474) b_and!115183)))

(declare-fun m!1951095 () Bool)

(assert (=> d!488996 m!1951095))

(declare-fun m!1951097 () Bool)

(assert (=> d!488996 m!1951097))

(assert (=> b!1623998 d!488996))

(declare-fun d!488998 () Bool)

(assert (=> d!488998 (= (seqFromList!2019 (t!148922 tokens!457)) (fromListB!889 (t!148922 tokens!457)))))

(declare-fun bs!394688 () Bool)

(assert (= bs!394688 d!488998))

(declare-fun m!1951099 () Bool)

(assert (=> bs!394688 m!1951099))

(assert (=> b!1623998 d!488998))

(declare-fun d!489000 () Bool)

(declare-fun list!6986 (Conc!5918) List!17872)

(assert (=> d!489000 (= (list!6983 lt!585889) (list!6986 (c!264357 lt!585889)))))

(declare-fun bs!394689 () Bool)

(assert (= bs!394689 d!489000))

(declare-fun m!1951101 () Bool)

(assert (=> bs!394689 m!1951101))

(assert (=> b!1623998 d!489000))

(declare-fun d!489002 () Bool)

(assert (=> d!489002 (= (list!6983 lt!585895) (list!6986 (c!264357 lt!585895)))))

(declare-fun bs!394690 () Bool)

(assert (= bs!394690 d!489002))

(declare-fun m!1951103 () Bool)

(assert (=> bs!394690 m!1951103))

(assert (=> b!1623998 d!489002))

(declare-fun e!1041656 () Bool)

(declare-fun b!1624083 () Bool)

(declare-fun lt!585932 () List!17872)

(assert (=> b!1624083 (= e!1041656 (or (not (= lt!585904 Nil!17802)) (= lt!585932 lt!585915)))))

(declare-fun b!1624080 () Bool)

(declare-fun e!1041657 () List!17872)

(assert (=> b!1624080 (= e!1041657 lt!585904)))

(declare-fun b!1624082 () Bool)

(declare-fun res!725807 () Bool)

(assert (=> b!1624082 (=> (not res!725807) (not e!1041656))))

(declare-fun size!14262 (List!17872) Int)

(assert (=> b!1624082 (= res!725807 (= (size!14262 lt!585932) (+ (size!14262 lt!585915) (size!14262 lt!585904))))))

(declare-fun b!1624081 () Bool)

(assert (=> b!1624081 (= e!1041657 (Cons!17802 (h!23203 lt!585915) (++!4727 (t!148921 lt!585915) lt!585904)))))

(declare-fun d!489004 () Bool)

(assert (=> d!489004 e!1041656))

(declare-fun res!725808 () Bool)

(assert (=> d!489004 (=> (not res!725808) (not e!1041656))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2469 (List!17872) (InoxSet C!9100))

(assert (=> d!489004 (= res!725808 (= (content!2469 lt!585932) ((_ map or) (content!2469 lt!585915) (content!2469 lt!585904))))))

(assert (=> d!489004 (= lt!585932 e!1041657)))

(declare-fun c!264374 () Bool)

(assert (=> d!489004 (= c!264374 ((_ is Nil!17802) lt!585915))))

(assert (=> d!489004 (= (++!4727 lt!585915 lt!585904) lt!585932)))

(assert (= (and d!489004 c!264374) b!1624080))

(assert (= (and d!489004 (not c!264374)) b!1624081))

(assert (= (and d!489004 res!725808) b!1624082))

(assert (= (and b!1624082 res!725807) b!1624083))

(declare-fun m!1951105 () Bool)

(assert (=> b!1624082 m!1951105))

(declare-fun m!1951107 () Bool)

(assert (=> b!1624082 m!1951107))

(declare-fun m!1951109 () Bool)

(assert (=> b!1624082 m!1951109))

(declare-fun m!1951111 () Bool)

(assert (=> b!1624081 m!1951111))

(declare-fun m!1951113 () Bool)

(assert (=> d!489004 m!1951113))

(declare-fun m!1951115 () Bool)

(assert (=> d!489004 m!1951115))

(declare-fun m!1951117 () Bool)

(assert (=> d!489004 m!1951117))

(assert (=> b!1623998 d!489004))

(declare-fun d!489006 () Bool)

(assert (=> d!489006 (= (list!6983 lt!585903) (list!6986 (c!264357 lt!585903)))))

(declare-fun bs!394691 () Bool)

(assert (= bs!394691 d!489006))

(declare-fun m!1951119 () Bool)

(assert (=> bs!394691 m!1951119))

(assert (=> b!1623998 d!489006))

(declare-fun lt!585935 () Bool)

(declare-fun d!489008 () Bool)

(declare-fun isEmpty!10836 (List!17873) Bool)

(assert (=> d!489008 (= lt!585935 (isEmpty!10836 (list!6984 (_1!10084 (lex!1248 thiss!17113 rules!1846 (seqFromList!2020 lt!585915))))))))

(declare-fun isEmpty!10837 (Conc!5919) Bool)

(assert (=> d!489008 (= lt!585935 (isEmpty!10837 (c!264359 (_1!10084 (lex!1248 thiss!17113 rules!1846 (seqFromList!2020 lt!585915))))))))

(assert (=> d!489008 (= (isEmpty!10831 (_1!10084 (lex!1248 thiss!17113 rules!1846 (seqFromList!2020 lt!585915)))) lt!585935)))

(declare-fun bs!394692 () Bool)

(assert (= bs!394692 d!489008))

(declare-fun m!1951121 () Bool)

(assert (=> bs!394692 m!1951121))

(assert (=> bs!394692 m!1951121))

(declare-fun m!1951123 () Bool)

(assert (=> bs!394692 m!1951123))

(declare-fun m!1951125 () Bool)

(assert (=> bs!394692 m!1951125))

(assert (=> b!1623997 d!489008))

(declare-fun e!1041659 () Bool)

(declare-fun b!1624084 () Bool)

(declare-fun lt!585936 () tuple2!17364)

(assert (=> b!1624084 (= e!1041659 (= (list!6983 (_2!10084 lt!585936)) (_2!10086 (lexList!826 thiss!17113 rules!1846 (list!6983 (seqFromList!2020 lt!585915))))))))

(declare-fun d!489010 () Bool)

(assert (=> d!489010 e!1041659))

(declare-fun res!725810 () Bool)

(assert (=> d!489010 (=> (not res!725810) (not e!1041659))))

(declare-fun e!1041658 () Bool)

(assert (=> d!489010 (= res!725810 e!1041658)))

(declare-fun c!264375 () Bool)

(assert (=> d!489010 (= c!264375 (> (size!14259 (_1!10084 lt!585936)) 0))))

(assert (=> d!489010 (= lt!585936 (lexTailRecV2!549 thiss!17113 rules!1846 (seqFromList!2020 lt!585915) (BalanceConc!11781 Empty!5918) (seqFromList!2020 lt!585915) (BalanceConc!11783 Empty!5919)))))

(assert (=> d!489010 (= (lex!1248 thiss!17113 rules!1846 (seqFromList!2020 lt!585915)) lt!585936)))

(declare-fun b!1624085 () Bool)

(declare-fun e!1041660 () Bool)

(assert (=> b!1624085 (= e!1041660 (not (isEmpty!10831 (_1!10084 lt!585936))))))

(declare-fun b!1624086 () Bool)

(declare-fun res!725809 () Bool)

(assert (=> b!1624086 (=> (not res!725809) (not e!1041659))))

(assert (=> b!1624086 (= res!725809 (= (list!6984 (_1!10084 lt!585936)) (_1!10086 (lexList!826 thiss!17113 rules!1846 (list!6983 (seqFromList!2020 lt!585915))))))))

(declare-fun b!1624087 () Bool)

(assert (=> b!1624087 (= e!1041658 e!1041660)))

(declare-fun res!725811 () Bool)

(assert (=> b!1624087 (= res!725811 (< (size!14260 (_2!10084 lt!585936)) (size!14260 (seqFromList!2020 lt!585915))))))

(assert (=> b!1624087 (=> (not res!725811) (not e!1041660))))

(declare-fun b!1624088 () Bool)

(assert (=> b!1624088 (= e!1041658 (= (_2!10084 lt!585936) (seqFromList!2020 lt!585915)))))

(assert (= (and d!489010 c!264375) b!1624087))

(assert (= (and d!489010 (not c!264375)) b!1624088))

(assert (= (and b!1624087 res!725811) b!1624085))

(assert (= (and d!489010 res!725810) b!1624086))

(assert (= (and b!1624086 res!725809) b!1624084))

(declare-fun m!1951127 () Bool)

(assert (=> b!1624085 m!1951127))

(declare-fun m!1951129 () Bool)

(assert (=> b!1624084 m!1951129))

(assert (=> b!1624084 m!1950919))

(declare-fun m!1951131 () Bool)

(assert (=> b!1624084 m!1951131))

(assert (=> b!1624084 m!1951131))

(declare-fun m!1951133 () Bool)

(assert (=> b!1624084 m!1951133))

(declare-fun m!1951135 () Bool)

(assert (=> b!1624087 m!1951135))

(assert (=> b!1624087 m!1950919))

(declare-fun m!1951137 () Bool)

(assert (=> b!1624087 m!1951137))

(declare-fun m!1951139 () Bool)

(assert (=> b!1624086 m!1951139))

(assert (=> b!1624086 m!1950919))

(assert (=> b!1624086 m!1951131))

(assert (=> b!1624086 m!1951131))

(assert (=> b!1624086 m!1951133))

(declare-fun m!1951141 () Bool)

(assert (=> d!489010 m!1951141))

(assert (=> d!489010 m!1950919))

(assert (=> d!489010 m!1950919))

(declare-fun m!1951143 () Bool)

(assert (=> d!489010 m!1951143))

(assert (=> b!1623997 d!489010))

(declare-fun d!489012 () Bool)

(declare-fun fromListB!890 (List!17872) BalanceConc!11780)

(assert (=> d!489012 (= (seqFromList!2020 lt!585915) (fromListB!890 lt!585915))))

(declare-fun bs!394693 () Bool)

(assert (= bs!394693 d!489012))

(declare-fun m!1951145 () Bool)

(assert (=> bs!394693 m!1951145))

(assert (=> b!1623997 d!489012))

(declare-fun d!489014 () Bool)

(declare-fun e!1041663 () Bool)

(assert (=> d!489014 e!1041663))

(declare-fun res!725814 () Bool)

(assert (=> d!489014 (=> (not res!725814) (not e!1041663))))

(declare-fun lt!585939 () BalanceConc!11780)

(assert (=> d!489014 (= res!725814 (= (list!6983 lt!585939) (Cons!17802 (apply!4538 (charsOf!1784 (h!23204 (t!148922 tokens!457))) 0) Nil!17802)))))

(declare-fun singleton!663 (C!9100) BalanceConc!11780)

(assert (=> d!489014 (= lt!585939 (singleton!663 (apply!4538 (charsOf!1784 (h!23204 (t!148922 tokens!457))) 0)))))

(assert (=> d!489014 (= (singletonSeq!1548 (apply!4538 (charsOf!1784 (h!23204 (t!148922 tokens!457))) 0)) lt!585939)))

(declare-fun b!1624091 () Bool)

(declare-fun isBalanced!1784 (Conc!5918) Bool)

(assert (=> b!1624091 (= e!1041663 (isBalanced!1784 (c!264357 lt!585939)))))

(assert (= (and d!489014 res!725814) b!1624091))

(declare-fun m!1951147 () Bool)

(assert (=> d!489014 m!1951147))

(assert (=> d!489014 m!1950933))

(declare-fun m!1951149 () Bool)

(assert (=> d!489014 m!1951149))

(declare-fun m!1951151 () Bool)

(assert (=> b!1624091 m!1951151))

(assert (=> b!1623995 d!489014))

(declare-fun lt!586014 () Bool)

(declare-fun d!489016 () Bool)

(assert (=> d!489016 (= lt!586014 (prefixMatch!398 lt!585905 (list!6983 (++!4728 lt!585903 lt!585902))))))

(declare-datatypes ((List!17876 0))(
  ( (Nil!17806) (Cons!17806 (h!23207 Regex!4463) (t!148967 List!17876)) )
))
(declare-datatypes ((Context!1728 0))(
  ( (Context!1729 (exprs!1364 List!17876)) )
))
(declare-fun prefixMatchZipperSequence!522 ((InoxSet Context!1728) BalanceConc!11780 Int) Bool)

(declare-fun focus!170 (Regex!4463) (InoxSet Context!1728))

(assert (=> d!489016 (= lt!586014 (prefixMatchZipperSequence!522 (focus!170 lt!585905) (++!4728 lt!585903 lt!585902) 0))))

(declare-fun lt!586013 () Unit!28817)

(declare-fun lt!586021 () Unit!28817)

(assert (=> d!489016 (= lt!586013 lt!586021)))

(declare-fun lt!586020 () List!17872)

(declare-fun lt!586015 () (InoxSet Context!1728))

(declare-fun prefixMatchZipper!149 ((InoxSet Context!1728) List!17872) Bool)

(assert (=> d!489016 (= (prefixMatch!398 lt!585905 lt!586020) (prefixMatchZipper!149 lt!586015 lt!586020))))

(declare-datatypes ((List!17877 0))(
  ( (Nil!17807) (Cons!17807 (h!23208 Context!1728) (t!148968 List!17877)) )
))
(declare-fun lt!586019 () List!17877)

(declare-fun prefixMatchZipperRegexEquiv!149 ((InoxSet Context!1728) List!17877 Regex!4463 List!17872) Unit!28817)

(assert (=> d!489016 (= lt!586021 (prefixMatchZipperRegexEquiv!149 lt!586015 lt!586019 lt!585905 lt!586020))))

(assert (=> d!489016 (= lt!586020 (list!6983 (++!4728 lt!585903 lt!585902)))))

(declare-fun toList!910 ((InoxSet Context!1728)) List!17877)

(assert (=> d!489016 (= lt!586019 (toList!910 (focus!170 lt!585905)))))

(assert (=> d!489016 (= lt!586015 (focus!170 lt!585905))))

(declare-fun lt!586018 () Unit!28817)

(declare-fun lt!586016 () Unit!28817)

(assert (=> d!489016 (= lt!586018 lt!586016)))

(declare-fun lt!586012 () (InoxSet Context!1728))

(declare-fun lt!586017 () Int)

(declare-fun dropList!601 (BalanceConc!11780 Int) List!17872)

(assert (=> d!489016 (= (prefixMatchZipper!149 lt!586012 (dropList!601 (++!4728 lt!585903 lt!585902) lt!586017)) (prefixMatchZipperSequence!522 lt!586012 (++!4728 lt!585903 lt!585902) lt!586017))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!149 ((InoxSet Context!1728) BalanceConc!11780 Int) Unit!28817)

(assert (=> d!489016 (= lt!586016 (lemmaprefixMatchZipperSequenceEquivalent!149 lt!586012 (++!4728 lt!585903 lt!585902) lt!586017))))

(assert (=> d!489016 (= lt!586017 0)))

(assert (=> d!489016 (= lt!586012 (focus!170 lt!585905))))

(assert (=> d!489016 (validRegex!1776 lt!585905)))

(assert (=> d!489016 (= (prefixMatchZipperSequence!521 lt!585905 (++!4728 lt!585903 lt!585902)) lt!586014)))

(declare-fun bs!394694 () Bool)

(assert (= bs!394694 d!489016))

(assert (=> bs!394694 m!1951031))

(assert (=> bs!394694 m!1950929))

(declare-fun m!1951153 () Bool)

(assert (=> bs!394694 m!1951153))

(declare-fun m!1951155 () Bool)

(assert (=> bs!394694 m!1951155))

(declare-fun m!1951157 () Bool)

(assert (=> bs!394694 m!1951157))

(declare-fun m!1951159 () Bool)

(assert (=> bs!394694 m!1951159))

(declare-fun m!1951161 () Bool)

(assert (=> bs!394694 m!1951161))

(declare-fun m!1951163 () Bool)

(assert (=> bs!394694 m!1951163))

(declare-fun m!1951165 () Bool)

(assert (=> bs!394694 m!1951165))

(assert (=> bs!394694 m!1950929))

(assert (=> bs!394694 m!1951155))

(declare-fun m!1951167 () Bool)

(assert (=> bs!394694 m!1951167))

(assert (=> bs!394694 m!1951163))

(assert (=> bs!394694 m!1950929))

(declare-fun m!1951169 () Bool)

(assert (=> bs!394694 m!1951169))

(assert (=> bs!394694 m!1950929))

(declare-fun m!1951171 () Bool)

(assert (=> bs!394694 m!1951171))

(assert (=> bs!394694 m!1950929))

(assert (=> bs!394694 m!1951159))

(declare-fun m!1951173 () Bool)

(assert (=> bs!394694 m!1951173))

(assert (=> bs!394694 m!1951163))

(declare-fun m!1951175 () Bool)

(assert (=> bs!394694 m!1951175))

(assert (=> b!1623995 d!489016))

(declare-fun d!489018 () Bool)

(declare-fun e!1041671 () Bool)

(assert (=> d!489018 e!1041671))

(declare-fun res!725826 () Bool)

(assert (=> d!489018 (=> (not res!725826) (not e!1041671))))

(declare-fun appendAssocInst!432 (Conc!5918 Conc!5918) Bool)

(assert (=> d!489018 (= res!725826 (appendAssocInst!432 (c!264357 lt!585903) (c!264357 lt!585902)))))

(declare-fun lt!586029 () BalanceConc!11780)

(declare-fun ++!4729 (Conc!5918 Conc!5918) Conc!5918)

(assert (=> d!489018 (= lt!586029 (BalanceConc!11781 (++!4729 (c!264357 lt!585903) (c!264357 lt!585902))))))

(assert (=> d!489018 (= (++!4728 lt!585903 lt!585902) lt!586029)))

(declare-fun b!1624107 () Bool)

(declare-fun res!725829 () Bool)

(assert (=> b!1624107 (=> (not res!725829) (not e!1041671))))

(declare-fun height!902 (Conc!5918) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1624107 (= res!725829 (<= (height!902 (++!4729 (c!264357 lt!585903) (c!264357 lt!585902))) (+ (max!0 (height!902 (c!264357 lt!585903)) (height!902 (c!264357 lt!585902))) 1)))))

(declare-fun b!1624108 () Bool)

(declare-fun res!725827 () Bool)

(assert (=> b!1624108 (=> (not res!725827) (not e!1041671))))

(assert (=> b!1624108 (= res!725827 (>= (height!902 (++!4729 (c!264357 lt!585903) (c!264357 lt!585902))) (max!0 (height!902 (c!264357 lt!585903)) (height!902 (c!264357 lt!585902)))))))

(declare-fun b!1624109 () Bool)

(assert (=> b!1624109 (= e!1041671 (= (list!6983 lt!586029) (++!4727 (list!6983 lt!585903) (list!6983 lt!585902))))))

(declare-fun b!1624106 () Bool)

(declare-fun res!725828 () Bool)

(assert (=> b!1624106 (=> (not res!725828) (not e!1041671))))

(assert (=> b!1624106 (= res!725828 (isBalanced!1784 (++!4729 (c!264357 lt!585903) (c!264357 lt!585902))))))

(assert (= (and d!489018 res!725826) b!1624106))

(assert (= (and b!1624106 res!725828) b!1624107))

(assert (= (and b!1624107 res!725829) b!1624108))

(assert (= (and b!1624108 res!725827) b!1624109))

(declare-fun m!1951177 () Bool)

(assert (=> b!1624109 m!1951177))

(assert (=> b!1624109 m!1950999))

(assert (=> b!1624109 m!1950979))

(assert (=> b!1624109 m!1950999))

(assert (=> b!1624109 m!1950979))

(declare-fun m!1951179 () Bool)

(assert (=> b!1624109 m!1951179))

(declare-fun m!1951181 () Bool)

(assert (=> b!1624107 m!1951181))

(declare-fun m!1951183 () Bool)

(assert (=> b!1624107 m!1951183))

(assert (=> b!1624107 m!1951181))

(declare-fun m!1951185 () Bool)

(assert (=> b!1624107 m!1951185))

(declare-fun m!1951187 () Bool)

(assert (=> b!1624107 m!1951187))

(assert (=> b!1624107 m!1951187))

(assert (=> b!1624107 m!1951185))

(declare-fun m!1951189 () Bool)

(assert (=> b!1624107 m!1951189))

(assert (=> b!1624106 m!1951181))

(assert (=> b!1624106 m!1951181))

(declare-fun m!1951191 () Bool)

(assert (=> b!1624106 m!1951191))

(assert (=> b!1624108 m!1951181))

(assert (=> b!1624108 m!1951183))

(assert (=> b!1624108 m!1951181))

(assert (=> b!1624108 m!1951185))

(assert (=> b!1624108 m!1951187))

(assert (=> b!1624108 m!1951187))

(assert (=> b!1624108 m!1951185))

(assert (=> b!1624108 m!1951189))

(declare-fun m!1951193 () Bool)

(assert (=> d!489018 m!1951193))

(assert (=> d!489018 m!1951181))

(assert (=> b!1623995 d!489018))

(declare-fun d!489020 () Bool)

(declare-fun lt!586053 () C!9100)

(declare-fun apply!4541 (List!17872 Int) C!9100)

(assert (=> d!489020 (= lt!586053 (apply!4541 (list!6983 (charsOf!1784 (h!23204 (t!148922 tokens!457)))) 0))))

(declare-fun apply!4542 (Conc!5918 Int) C!9100)

(assert (=> d!489020 (= lt!586053 (apply!4542 (c!264357 (charsOf!1784 (h!23204 (t!148922 tokens!457)))) 0))))

(declare-fun e!1041675 () Bool)

(assert (=> d!489020 e!1041675))

(declare-fun res!725832 () Bool)

(assert (=> d!489020 (=> (not res!725832) (not e!1041675))))

(assert (=> d!489020 (= res!725832 (<= 0 0))))

(assert (=> d!489020 (= (apply!4538 (charsOf!1784 (h!23204 (t!148922 tokens!457))) 0) lt!586053)))

(declare-fun b!1624115 () Bool)

(assert (=> b!1624115 (= e!1041675 (< 0 (size!14260 (charsOf!1784 (h!23204 (t!148922 tokens!457))))))))

(assert (= (and d!489020 res!725832) b!1624115))

(assert (=> d!489020 m!1950937))

(declare-fun m!1951271 () Bool)

(assert (=> d!489020 m!1951271))

(assert (=> d!489020 m!1951271))

(declare-fun m!1951273 () Bool)

(assert (=> d!489020 m!1951273))

(declare-fun m!1951275 () Bool)

(assert (=> d!489020 m!1951275))

(assert (=> b!1624115 m!1950937))

(declare-fun m!1951277 () Bool)

(assert (=> b!1624115 m!1951277))

(assert (=> b!1623995 d!489020))

(declare-fun d!489024 () Bool)

(declare-fun lt!586059 () Unit!28817)

(declare-fun lemma!236 (List!17874 LexerInterface!2764 List!17874) Unit!28817)

(assert (=> d!489024 (= lt!586059 (lemma!236 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67243 () Int)

(declare-fun generalisedUnion!244 (List!17876) Regex!4463)

(declare-fun map!3683 (List!17874 Int) List!17876)

(assert (=> d!489024 (= (rulesRegex!525 thiss!17113 rules!1846) (generalisedUnion!244 (map!3683 rules!1846 lambda!67243)))))

(declare-fun bs!394695 () Bool)

(assert (= bs!394695 d!489024))

(declare-fun m!1951291 () Bool)

(assert (=> bs!394695 m!1951291))

(declare-fun m!1951293 () Bool)

(assert (=> bs!394695 m!1951293))

(assert (=> bs!394695 m!1951293))

(declare-fun m!1951295 () Bool)

(assert (=> bs!394695 m!1951295))

(assert (=> b!1623995 d!489024))

(declare-fun d!489028 () Bool)

(declare-fun lt!586060 () BalanceConc!11780)

(assert (=> d!489028 (= (list!6983 lt!586060) (originalCharacters!3949 (h!23204 (t!148922 tokens!457))))))

(assert (=> d!489028 (= lt!586060 (dynLambda!7944 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))) (value!99020 (h!23204 (t!148922 tokens!457)))))))

(assert (=> d!489028 (= (charsOf!1784 (h!23204 (t!148922 tokens!457))) lt!586060)))

(declare-fun b_lambda!51179 () Bool)

(assert (=> (not b_lambda!51179) (not d!489028)))

(declare-fun tb!93275 () Bool)

(declare-fun t!148930 () Bool)

(assert (=> (and b!1623996 (= (toChars!4421 (transformation!3135 (h!23205 rules!1846))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457)))))) t!148930) tb!93275))

(declare-fun b!1624128 () Bool)

(declare-fun e!1041685 () Bool)

(declare-fun tp!472442 () Bool)

(assert (=> b!1624128 (= e!1041685 (and (inv!23187 (c!264357 (dynLambda!7944 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))) (value!99020 (h!23204 (t!148922 tokens!457)))))) tp!472442))))

(declare-fun result!112476 () Bool)

(assert (=> tb!93275 (= result!112476 (and (inv!23188 (dynLambda!7944 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))) (value!99020 (h!23204 (t!148922 tokens!457))))) e!1041685))))

(assert (= tb!93275 b!1624128))

(declare-fun m!1951297 () Bool)

(assert (=> b!1624128 m!1951297))

(declare-fun m!1951299 () Bool)

(assert (=> tb!93275 m!1951299))

(assert (=> d!489028 t!148930))

(declare-fun b_and!115185 () Bool)

(assert (= b_and!115181 (and (=> t!148930 result!112476) b_and!115185)))

(declare-fun t!148932 () Bool)

(declare-fun tb!93277 () Bool)

(assert (=> (and b!1623985 (= (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457)))))) t!148932) tb!93277))

(declare-fun result!112478 () Bool)

(assert (= result!112478 result!112476))

(assert (=> d!489028 t!148932))

(declare-fun b_and!115187 () Bool)

(assert (= b_and!115183 (and (=> t!148932 result!112478) b_and!115187)))

(declare-fun m!1951301 () Bool)

(assert (=> d!489028 m!1951301))

(declare-fun m!1951303 () Bool)

(assert (=> d!489028 m!1951303))

(assert (=> b!1623995 d!489028))

(declare-fun d!489030 () Bool)

(assert (=> d!489030 (= (head!3420 (originalCharacters!3949 (h!23204 (t!148922 tokens!457)))) (h!23203 (originalCharacters!3949 (h!23204 (t!148922 tokens!457)))))))

(assert (=> b!1623992 d!489030))

(declare-fun d!489034 () Bool)

(declare-fun list!6987 (Conc!5919) List!17873)

(assert (=> d!489034 (= (list!6984 lt!585906) (list!6987 (c!264359 lt!585906)))))

(declare-fun bs!394697 () Bool)

(assert (= bs!394697 d!489034))

(declare-fun m!1951309 () Bool)

(assert (=> bs!394697 m!1951309))

(assert (=> b!1623993 d!489034))

(declare-fun d!489036 () Bool)

(declare-fun e!1041688 () Bool)

(assert (=> d!489036 e!1041688))

(declare-fun res!725847 () Bool)

(assert (=> d!489036 (=> (not res!725847) (not e!1041688))))

(declare-fun isBalanced!1786 (Conc!5919) Bool)

(declare-fun prepend!661 (Conc!5919 Token!5836) Conc!5919)

(assert (=> d!489036 (= res!725847 (isBalanced!1786 (prepend!661 (c!264359 (seqFromList!2019 (t!148922 (t!148922 tokens!457)))) (h!23204 (t!148922 tokens!457)))))))

(declare-fun lt!586066 () BalanceConc!11782)

(assert (=> d!489036 (= lt!586066 (BalanceConc!11783 (prepend!661 (c!264359 (seqFromList!2019 (t!148922 (t!148922 tokens!457)))) (h!23204 (t!148922 tokens!457)))))))

(assert (=> d!489036 (= (prepend!659 (seqFromList!2019 (t!148922 (t!148922 tokens!457))) (h!23204 (t!148922 tokens!457))) lt!586066)))

(declare-fun b!1624131 () Bool)

(assert (=> b!1624131 (= e!1041688 (= (list!6984 lt!586066) (Cons!17803 (h!23204 (t!148922 tokens!457)) (list!6984 (seqFromList!2019 (t!148922 (t!148922 tokens!457)))))))))

(assert (= (and d!489036 res!725847) b!1624131))

(declare-fun m!1951311 () Bool)

(assert (=> d!489036 m!1951311))

(assert (=> d!489036 m!1951311))

(declare-fun m!1951313 () Bool)

(assert (=> d!489036 m!1951313))

(declare-fun m!1951315 () Bool)

(assert (=> b!1624131 m!1951315))

(assert (=> b!1624131 m!1951021))

(declare-fun m!1951317 () Bool)

(assert (=> b!1624131 m!1951317))

(assert (=> b!1623993 d!489036))

(declare-fun d!489038 () Bool)

(assert (=> d!489038 (= (seqFromList!2019 (t!148922 (t!148922 tokens!457))) (fromListB!889 (t!148922 (t!148922 tokens!457))))))

(declare-fun bs!394698 () Bool)

(assert (= bs!394698 d!489038))

(declare-fun m!1951319 () Bool)

(assert (=> bs!394698 m!1951319))

(assert (=> b!1623993 d!489038))

(declare-fun d!489040 () Bool)

(assert (=> d!489040 (= (list!6984 (prepend!659 (seqFromList!2019 (t!148922 (t!148922 tokens!457))) (h!23204 (t!148922 tokens!457)))) (list!6987 (c!264359 (prepend!659 (seqFromList!2019 (t!148922 (t!148922 tokens!457))) (h!23204 (t!148922 tokens!457))))))))

(declare-fun bs!394699 () Bool)

(assert (= bs!394699 d!489040))

(declare-fun m!1951321 () Bool)

(assert (=> bs!394699 m!1951321))

(assert (=> b!1623993 d!489040))

(declare-fun d!489042 () Bool)

(assert (=> d!489042 (= (list!6984 (_1!10084 lt!585894)) (list!6984 (prepend!659 (seqFromList!2019 (t!148922 (t!148922 tokens!457))) (h!23204 (t!148922 tokens!457)))))))

(declare-fun lt!586069 () Unit!28817)

(declare-fun choose!9771 (Token!5836 List!17873 BalanceConc!11782) Unit!28817)

(assert (=> d!489042 (= lt!586069 (choose!9771 (h!23204 (t!148922 tokens!457)) (t!148922 (t!148922 tokens!457)) (_1!10084 lt!585894)))))

(declare-fun $colon$colon!327 (List!17873 Token!5836) List!17873)

(assert (=> d!489042 (= (list!6984 (_1!10084 lt!585894)) (list!6984 (seqFromList!2019 ($colon$colon!327 (t!148922 (t!148922 tokens!457)) (h!23204 (t!148922 tokens!457))))))))

(assert (=> d!489042 (= (seqFromListBHdTlConstructive!212 (h!23204 (t!148922 tokens!457)) (t!148922 (t!148922 tokens!457)) (_1!10084 lt!585894)) lt!586069)))

(declare-fun bs!394700 () Bool)

(assert (= bs!394700 d!489042))

(assert (=> bs!394700 m!1951021))

(declare-fun m!1951323 () Bool)

(assert (=> bs!394700 m!1951323))

(declare-fun m!1951325 () Bool)

(assert (=> bs!394700 m!1951325))

(declare-fun m!1951327 () Bool)

(assert (=> bs!394700 m!1951327))

(assert (=> bs!394700 m!1950947))

(assert (=> bs!394700 m!1951327))

(assert (=> bs!394700 m!1951323))

(assert (=> bs!394700 m!1951021))

(assert (=> bs!394700 m!1951023))

(assert (=> bs!394700 m!1951023))

(assert (=> bs!394700 m!1951025))

(declare-fun m!1951329 () Bool)

(assert (=> bs!394700 m!1951329))

(assert (=> b!1623993 d!489042))

(declare-fun b!1624150 () Bool)

(declare-fun res!725858 () Bool)

(declare-fun e!1041709 () Bool)

(assert (=> b!1624150 (=> res!725858 e!1041709)))

(assert (=> b!1624150 (= res!725858 (not ((_ is Concat!7689) lt!585905)))))

(declare-fun e!1041704 () Bool)

(assert (=> b!1624150 (= e!1041704 e!1041709)))

(declare-fun b!1624151 () Bool)

(declare-fun e!1041703 () Bool)

(declare-fun call!105208 () Bool)

(assert (=> b!1624151 (= e!1041703 call!105208)))

(declare-fun b!1624152 () Bool)

(declare-fun res!725861 () Bool)

(declare-fun e!1041705 () Bool)

(assert (=> b!1624152 (=> (not res!725861) (not e!1041705))))

(assert (=> b!1624152 (= res!725861 call!105208)))

(assert (=> b!1624152 (= e!1041704 e!1041705)))

(declare-fun bm!105203 () Bool)

(declare-fun call!105210 () Bool)

(assert (=> bm!105203 (= call!105208 call!105210)))

(declare-fun b!1624153 () Bool)

(declare-fun e!1041707 () Bool)

(assert (=> b!1624153 (= e!1041707 e!1041704)))

(declare-fun c!264387 () Bool)

(assert (=> b!1624153 (= c!264387 ((_ is Union!4463) lt!585905))))

(declare-fun b!1624154 () Bool)

(declare-fun e!1041706 () Bool)

(assert (=> b!1624154 (= e!1041706 e!1041707)))

(declare-fun c!264388 () Bool)

(assert (=> b!1624154 (= c!264388 ((_ is Star!4463) lt!585905))))

(declare-fun b!1624155 () Bool)

(declare-fun e!1041708 () Bool)

(assert (=> b!1624155 (= e!1041707 e!1041708)))

(declare-fun res!725862 () Bool)

(declare-fun nullable!1315 (Regex!4463) Bool)

(assert (=> b!1624155 (= res!725862 (not (nullable!1315 (reg!4792 lt!585905))))))

(assert (=> b!1624155 (=> (not res!725862) (not e!1041708))))

(declare-fun b!1624156 () Bool)

(assert (=> b!1624156 (= e!1041709 e!1041703)))

(declare-fun res!725860 () Bool)

(assert (=> b!1624156 (=> (not res!725860) (not e!1041703))))

(declare-fun call!105209 () Bool)

(assert (=> b!1624156 (= res!725860 call!105209)))

(declare-fun b!1624157 () Bool)

(assert (=> b!1624157 (= e!1041705 call!105209)))

(declare-fun bm!105204 () Bool)

(assert (=> bm!105204 (= call!105210 (validRegex!1776 (ite c!264388 (reg!4792 lt!585905) (ite c!264387 (regOne!9439 lt!585905) (regTwo!9438 lt!585905)))))))

(declare-fun d!489044 () Bool)

(declare-fun res!725859 () Bool)

(assert (=> d!489044 (=> res!725859 e!1041706)))

(assert (=> d!489044 (= res!725859 ((_ is ElementMatch!4463) lt!585905))))

(assert (=> d!489044 (= (validRegex!1776 lt!585905) e!1041706)))

(declare-fun b!1624158 () Bool)

(assert (=> b!1624158 (= e!1041708 call!105210)))

(declare-fun bm!105205 () Bool)

(assert (=> bm!105205 (= call!105209 (validRegex!1776 (ite c!264387 (regTwo!9439 lt!585905) (regOne!9438 lt!585905))))))

(assert (= (and d!489044 (not res!725859)) b!1624154))

(assert (= (and b!1624154 c!264388) b!1624155))

(assert (= (and b!1624154 (not c!264388)) b!1624153))

(assert (= (and b!1624155 res!725862) b!1624158))

(assert (= (and b!1624153 c!264387) b!1624152))

(assert (= (and b!1624153 (not c!264387)) b!1624150))

(assert (= (and b!1624152 res!725861) b!1624157))

(assert (= (and b!1624150 (not res!725858)) b!1624156))

(assert (= (and b!1624156 res!725860) b!1624151))

(assert (= (or b!1624157 b!1624156) bm!105205))

(assert (= (or b!1624152 b!1624151) bm!105203))

(assert (= (or b!1624158 bm!105203) bm!105204))

(declare-fun m!1951331 () Bool)

(assert (=> b!1624155 m!1951331))

(declare-fun m!1951333 () Bool)

(assert (=> bm!105204 m!1951333))

(declare-fun m!1951335 () Bool)

(assert (=> bm!105205 m!1951335))

(assert (=> b!1623991 d!489044))

(declare-fun lt!586070 () List!17872)

(declare-fun e!1041710 () Bool)

(declare-fun b!1624162 () Bool)

(assert (=> b!1624162 (= e!1041710 (or (not (= lt!585890 Nil!17802)) (= lt!586070 lt!585915)))))

(declare-fun b!1624159 () Bool)

(declare-fun e!1041711 () List!17872)

(assert (=> b!1624159 (= e!1041711 lt!585890)))

(declare-fun b!1624161 () Bool)

(declare-fun res!725863 () Bool)

(assert (=> b!1624161 (=> (not res!725863) (not e!1041710))))

(assert (=> b!1624161 (= res!725863 (= (size!14262 lt!586070) (+ (size!14262 lt!585915) (size!14262 lt!585890))))))

(declare-fun b!1624160 () Bool)

(assert (=> b!1624160 (= e!1041711 (Cons!17802 (h!23203 lt!585915) (++!4727 (t!148921 lt!585915) lt!585890)))))

(declare-fun d!489046 () Bool)

(assert (=> d!489046 e!1041710))

(declare-fun res!725864 () Bool)

(assert (=> d!489046 (=> (not res!725864) (not e!1041710))))

(assert (=> d!489046 (= res!725864 (= (content!2469 lt!586070) ((_ map or) (content!2469 lt!585915) (content!2469 lt!585890))))))

(assert (=> d!489046 (= lt!586070 e!1041711)))

(declare-fun c!264389 () Bool)

(assert (=> d!489046 (= c!264389 ((_ is Nil!17802) lt!585915))))

(assert (=> d!489046 (= (++!4727 lt!585915 lt!585890) lt!586070)))

(assert (= (and d!489046 c!264389) b!1624159))

(assert (= (and d!489046 (not c!264389)) b!1624160))

(assert (= (and d!489046 res!725864) b!1624161))

(assert (= (and b!1624161 res!725863) b!1624162))

(declare-fun m!1951337 () Bool)

(assert (=> b!1624161 m!1951337))

(assert (=> b!1624161 m!1951107))

(declare-fun m!1951339 () Bool)

(assert (=> b!1624161 m!1951339))

(declare-fun m!1951341 () Bool)

(assert (=> b!1624160 m!1951341))

(declare-fun m!1951343 () Bool)

(assert (=> d!489046 m!1951343))

(assert (=> d!489046 m!1951115))

(declare-fun m!1951345 () Bool)

(assert (=> d!489046 m!1951345))

(assert (=> b!1623991 d!489046))

(declare-fun b!1624291 () Bool)

(declare-fun e!1041785 () Bool)

(assert (=> b!1624291 (= e!1041785 true)))

(declare-fun b!1624290 () Bool)

(declare-fun e!1041784 () Bool)

(assert (=> b!1624290 (= e!1041784 e!1041785)))

(declare-fun b!1624289 () Bool)

(declare-fun e!1041783 () Bool)

(assert (=> b!1624289 (= e!1041783 e!1041784)))

(declare-fun d!489048 () Bool)

(assert (=> d!489048 e!1041783))

(assert (= b!1624290 b!1624291))

(assert (= b!1624289 b!1624290))

(assert (= (and d!489048 ((_ is Cons!17804) rules!1846)) b!1624289))

(declare-fun lambda!67246 () Int)

(declare-fun order!10561 () Int)

(declare-fun order!10563 () Int)

(declare-fun dynLambda!7948 (Int Int) Int)

(declare-fun dynLambda!7949 (Int Int) Int)

(assert (=> b!1624291 (< (dynLambda!7948 order!10561 (toValue!4562 (transformation!3135 (h!23205 rules!1846)))) (dynLambda!7949 order!10563 lambda!67246))))

(declare-fun order!10565 () Int)

(declare-fun dynLambda!7950 (Int Int) Int)

(assert (=> b!1624291 (< (dynLambda!7950 order!10565 (toChars!4421 (transformation!3135 (h!23205 rules!1846)))) (dynLambda!7949 order!10563 lambda!67246))))

(assert (=> d!489048 true))

(declare-fun lt!586130 () Bool)

(declare-fun forall!4082 (List!17873 Int) Bool)

(assert (=> d!489048 (= lt!586130 (forall!4082 tokens!457 lambda!67246))))

(declare-fun e!1041776 () Bool)

(assert (=> d!489048 (= lt!586130 e!1041776)))

(declare-fun res!725948 () Bool)

(assert (=> d!489048 (=> res!725948 e!1041776)))

(assert (=> d!489048 (= res!725948 (not ((_ is Cons!17803) tokens!457)))))

(assert (=> d!489048 (not (isEmpty!10832 rules!1846))))

(assert (=> d!489048 (= (rulesProduceEachTokenIndividuallyList!966 thiss!17113 rules!1846 tokens!457) lt!586130)))

(declare-fun b!1624279 () Bool)

(declare-fun e!1041775 () Bool)

(assert (=> b!1624279 (= e!1041776 e!1041775)))

(declare-fun res!725947 () Bool)

(assert (=> b!1624279 (=> (not res!725947) (not e!1041775))))

(assert (=> b!1624279 (= res!725947 (rulesProduceIndividualToken!1416 thiss!17113 rules!1846 (h!23204 tokens!457)))))

(declare-fun b!1624280 () Bool)

(assert (=> b!1624280 (= e!1041775 (rulesProduceEachTokenIndividuallyList!966 thiss!17113 rules!1846 (t!148922 tokens!457)))))

(assert (= (and d!489048 (not res!725948)) b!1624279))

(assert (= (and b!1624279 res!725947) b!1624280))

(declare-fun m!1951507 () Bool)

(assert (=> d!489048 m!1951507))

(assert (=> d!489048 m!1950983))

(assert (=> b!1624279 m!1951035))

(declare-fun m!1951509 () Bool)

(assert (=> b!1624280 m!1951509))

(assert (=> b!1624012 d!489048))

(declare-fun d!489092 () Bool)

(declare-fun isEmpty!10838 (Option!3291) Bool)

(assert (=> d!489092 (= (isDefined!2658 lt!585900) (not (isEmpty!10838 lt!585900)))))

(declare-fun bs!394708 () Bool)

(assert (= bs!394708 d!489092))

(declare-fun m!1951511 () Bool)

(assert (=> bs!394708 m!1951511))

(assert (=> b!1624011 d!489092))

(declare-fun b!1624308 () Bool)

(declare-fun e!1041795 () Unit!28817)

(declare-fun Unit!28836 () Unit!28817)

(assert (=> b!1624308 (= e!1041795 Unit!28836)))

(declare-fun lt!586180 () List!17872)

(assert (=> b!1624308 (= lt!586180 (++!4727 lt!585915 lt!585904))))

(declare-fun lt!586176 () Unit!28817)

(declare-fun lt!586168 () Token!5836)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!175 (LexerInterface!2764 Rule!6070 List!17874 List!17872) Unit!28817)

(assert (=> b!1624308 (= lt!586176 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!175 thiss!17113 (rule!4961 lt!586168) rules!1846 lt!586180))))

(declare-fun maxPrefixOneRule!773 (LexerInterface!2764 Rule!6070 List!17872) Option!3291)

(assert (=> b!1624308 (isEmpty!10838 (maxPrefixOneRule!773 thiss!17113 (rule!4961 lt!586168) lt!586180))))

(declare-fun lt!586174 () Unit!28817)

(assert (=> b!1624308 (= lt!586174 lt!586176)))

(declare-fun lt!586173 () List!17872)

(assert (=> b!1624308 (= lt!586173 (list!6983 (charsOf!1784 lt!586168)))))

(declare-fun lt!586172 () Unit!28817)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!171 (LexerInterface!2764 Rule!6070 List!17872 List!17872) Unit!28817)

(assert (=> b!1624308 (= lt!586172 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!171 thiss!17113 (rule!4961 lt!586168) lt!586173 (++!4727 lt!585915 lt!585904)))))

(assert (=> b!1624308 (not (matchR!1962 (regex!3135 (rule!4961 lt!586168)) lt!586173))))

(declare-fun lt!586175 () Unit!28817)

(assert (=> b!1624308 (= lt!586175 lt!586172)))

(assert (=> b!1624308 false))

(declare-fun b!1624307 () Bool)

(declare-fun e!1041794 () Bool)

(declare-datatypes ((Option!3293 0))(
  ( (None!3292) (Some!3292 (v!24327 Rule!6070)) )
))
(declare-fun get!5128 (Option!3293) Rule!6070)

(declare-fun getRuleFromTag!281 (LexerInterface!2764 List!17874 String!20457) Option!3293)

(assert (=> b!1624307 (= e!1041794 (= (rule!4961 lt!586168) (get!5128 (getRuleFromTag!281 thiss!17113 rules!1846 (tag!3413 (rule!4961 lt!586168))))))))

(declare-fun d!489094 () Bool)

(assert (=> d!489094 (isDefined!2658 (maxPrefix!1328 thiss!17113 rules!1846 (++!4727 lt!585915 lt!585904)))))

(declare-fun lt!586167 () Unit!28817)

(assert (=> d!489094 (= lt!586167 e!1041795)))

(declare-fun c!264410 () Bool)

(assert (=> d!489094 (= c!264410 (isEmpty!10838 (maxPrefix!1328 thiss!17113 rules!1846 (++!4727 lt!585915 lt!585904))))))

(declare-fun lt!586169 () Unit!28817)

(declare-fun lt!586170 () Unit!28817)

(assert (=> d!489094 (= lt!586169 lt!586170)))

(assert (=> d!489094 e!1041794))

(declare-fun res!725957 () Bool)

(assert (=> d!489094 (=> (not res!725957) (not e!1041794))))

(declare-fun isDefined!2661 (Option!3293) Bool)

(assert (=> d!489094 (= res!725957 (isDefined!2661 (getRuleFromTag!281 thiss!17113 rules!1846 (tag!3413 (rule!4961 lt!586168)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!282 (LexerInterface!2764 List!17874 List!17872 Token!5836) Unit!28817)

(assert (=> d!489094 (= lt!586170 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!282 thiss!17113 rules!1846 lt!585915 lt!586168))))

(declare-fun lt!586181 () Unit!28817)

(declare-fun lt!586171 () Unit!28817)

(assert (=> d!489094 (= lt!586181 lt!586171)))

(declare-fun lt!586179 () List!17872)

(assert (=> d!489094 (isPrefix!1395 lt!586179 (++!4727 lt!585915 lt!585904))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!168 (List!17872 List!17872 List!17872) Unit!28817)

(assert (=> d!489094 (= lt!586171 (lemmaPrefixStaysPrefixWhenAddingToSuffix!168 lt!586179 lt!585915 lt!585904))))

(assert (=> d!489094 (= lt!586179 (list!6983 (charsOf!1784 lt!586168)))))

(declare-fun lt!586177 () Unit!28817)

(declare-fun lt!586178 () Unit!28817)

(assert (=> d!489094 (= lt!586177 lt!586178)))

(declare-fun lt!586182 () List!17872)

(declare-fun lt!586183 () List!17872)

(assert (=> d!489094 (isPrefix!1395 lt!586182 (++!4727 lt!586182 lt!586183))))

(assert (=> d!489094 (= lt!586178 (lemmaConcatTwoListThenFirstIsPrefix!920 lt!586182 lt!586183))))

(assert (=> d!489094 (= lt!586183 (_2!10083 (get!5127 (maxPrefix!1328 thiss!17113 rules!1846 lt!585915))))))

(assert (=> d!489094 (= lt!586182 (list!6983 (charsOf!1784 lt!586168)))))

(declare-fun head!3423 (List!17873) Token!5836)

(assert (=> d!489094 (= lt!586168 (head!3423 (list!6984 (_1!10084 (lex!1248 thiss!17113 rules!1846 (seqFromList!2020 lt!585915))))))))

(assert (=> d!489094 (not (isEmpty!10832 rules!1846))))

(assert (=> d!489094 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!338 thiss!17113 rules!1846 lt!585915 lt!585904) lt!586167)))

(declare-fun b!1624306 () Bool)

(declare-fun res!725958 () Bool)

(assert (=> b!1624306 (=> (not res!725958) (not e!1041794))))

(assert (=> b!1624306 (= res!725958 (matchR!1962 (regex!3135 (get!5128 (getRuleFromTag!281 thiss!17113 rules!1846 (tag!3413 (rule!4961 lt!586168))))) (list!6983 (charsOf!1784 lt!586168))))))

(declare-fun b!1624309 () Bool)

(declare-fun Unit!28839 () Unit!28817)

(assert (=> b!1624309 (= e!1041795 Unit!28839)))

(assert (= (and d!489094 res!725957) b!1624306))

(assert (= (and b!1624306 res!725958) b!1624307))

(assert (= (and d!489094 c!264410) b!1624308))

(assert (= (and d!489094 (not c!264410)) b!1624309))

(declare-fun m!1951513 () Bool)

(assert (=> b!1624308 m!1951513))

(assert (=> b!1624308 m!1950987))

(declare-fun m!1951515 () Bool)

(assert (=> b!1624308 m!1951515))

(declare-fun m!1951517 () Bool)

(assert (=> b!1624308 m!1951517))

(assert (=> b!1624308 m!1951515))

(declare-fun m!1951519 () Bool)

(assert (=> b!1624308 m!1951519))

(declare-fun m!1951521 () Bool)

(assert (=> b!1624308 m!1951521))

(assert (=> b!1624308 m!1951521))

(declare-fun m!1951523 () Bool)

(assert (=> b!1624308 m!1951523))

(assert (=> b!1624308 m!1950987))

(declare-fun m!1951525 () Bool)

(assert (=> b!1624308 m!1951525))

(declare-fun m!1951527 () Bool)

(assert (=> b!1624307 m!1951527))

(assert (=> b!1624307 m!1951527))

(declare-fun m!1951529 () Bool)

(assert (=> b!1624307 m!1951529))

(assert (=> d!489094 m!1951515))

(assert (=> d!489094 m!1951527))

(assert (=> d!489094 m!1951515))

(assert (=> d!489094 m!1951519))

(declare-fun m!1951531 () Bool)

(assert (=> d!489094 m!1951531))

(declare-fun m!1951533 () Bool)

(assert (=> d!489094 m!1951533))

(declare-fun m!1951535 () Bool)

(assert (=> d!489094 m!1951535))

(assert (=> d!489094 m!1951121))

(declare-fun m!1951537 () Bool)

(assert (=> d!489094 m!1951537))

(assert (=> d!489094 m!1951527))

(declare-fun m!1951539 () Bool)

(assert (=> d!489094 m!1951539))

(assert (=> d!489094 m!1950987))

(assert (=> d!489094 m!1951531))

(assert (=> d!489094 m!1950987))

(declare-fun m!1951541 () Bool)

(assert (=> d!489094 m!1951541))

(assert (=> d!489094 m!1950983))

(assert (=> d!489094 m!1950987))

(assert (=> d!489094 m!1950919))

(assert (=> d!489094 m!1950919))

(assert (=> d!489094 m!1950921))

(declare-fun m!1951543 () Bool)

(assert (=> d!489094 m!1951543))

(assert (=> d!489094 m!1950969))

(assert (=> d!489094 m!1950969))

(declare-fun m!1951545 () Bool)

(assert (=> d!489094 m!1951545))

(assert (=> d!489094 m!1951121))

(declare-fun m!1951547 () Bool)

(assert (=> d!489094 m!1951547))

(assert (=> d!489094 m!1951531))

(declare-fun m!1951549 () Bool)

(assert (=> d!489094 m!1951549))

(declare-fun m!1951551 () Bool)

(assert (=> d!489094 m!1951551))

(assert (=> d!489094 m!1951543))

(declare-fun m!1951553 () Bool)

(assert (=> d!489094 m!1951553))

(assert (=> b!1624306 m!1951515))

(assert (=> b!1624306 m!1951527))

(assert (=> b!1624306 m!1951519))

(declare-fun m!1951555 () Bool)

(assert (=> b!1624306 m!1951555))

(assert (=> b!1624306 m!1951527))

(assert (=> b!1624306 m!1951529))

(assert (=> b!1624306 m!1951515))

(assert (=> b!1624306 m!1951519))

(assert (=> b!1624011 d!489094))

(declare-fun d!489096 () Bool)

(declare-fun c!264413 () Bool)

(assert (=> d!489096 (= c!264413 (isEmpty!10833 (++!4727 lt!585915 lt!585907)))))

(declare-fun e!1041798 () Bool)

(assert (=> d!489096 (= (prefixMatch!398 lt!585905 (++!4727 lt!585915 lt!585907)) e!1041798)))

(declare-fun b!1624314 () Bool)

(declare-fun lostCause!436 (Regex!4463) Bool)

(assert (=> b!1624314 (= e!1041798 (not (lostCause!436 lt!585905)))))

(declare-fun b!1624315 () Bool)

(declare-fun derivativeStep!1080 (Regex!4463 C!9100) Regex!4463)

(declare-fun tail!2358 (List!17872) List!17872)

(assert (=> b!1624315 (= e!1041798 (prefixMatch!398 (derivativeStep!1080 lt!585905 (head!3420 (++!4727 lt!585915 lt!585907))) (tail!2358 (++!4727 lt!585915 lt!585907))))))

(assert (= (and d!489096 c!264413) b!1624314))

(assert (= (and d!489096 (not c!264413)) b!1624315))

(assert (=> d!489096 m!1950975))

(declare-fun m!1951557 () Bool)

(assert (=> d!489096 m!1951557))

(declare-fun m!1951559 () Bool)

(assert (=> b!1624314 m!1951559))

(assert (=> b!1624315 m!1950975))

(declare-fun m!1951561 () Bool)

(assert (=> b!1624315 m!1951561))

(assert (=> b!1624315 m!1951561))

(declare-fun m!1951563 () Bool)

(assert (=> b!1624315 m!1951563))

(assert (=> b!1624315 m!1950975))

(declare-fun m!1951565 () Bool)

(assert (=> b!1624315 m!1951565))

(assert (=> b!1624315 m!1951563))

(assert (=> b!1624315 m!1951565))

(declare-fun m!1951567 () Bool)

(assert (=> b!1624315 m!1951567))

(assert (=> b!1623990 d!489096))

(declare-fun e!1041799 () Bool)

(declare-fun b!1624319 () Bool)

(declare-fun lt!586184 () List!17872)

(assert (=> b!1624319 (= e!1041799 (or (not (= lt!585907 Nil!17802)) (= lt!586184 lt!585915)))))

(declare-fun b!1624316 () Bool)

(declare-fun e!1041800 () List!17872)

(assert (=> b!1624316 (= e!1041800 lt!585907)))

(declare-fun b!1624318 () Bool)

(declare-fun res!725959 () Bool)

(assert (=> b!1624318 (=> (not res!725959) (not e!1041799))))

(assert (=> b!1624318 (= res!725959 (= (size!14262 lt!586184) (+ (size!14262 lt!585915) (size!14262 lt!585907))))))

(declare-fun b!1624317 () Bool)

(assert (=> b!1624317 (= e!1041800 (Cons!17802 (h!23203 lt!585915) (++!4727 (t!148921 lt!585915) lt!585907)))))

(declare-fun d!489098 () Bool)

(assert (=> d!489098 e!1041799))

(declare-fun res!725960 () Bool)

(assert (=> d!489098 (=> (not res!725960) (not e!1041799))))

(assert (=> d!489098 (= res!725960 (= (content!2469 lt!586184) ((_ map or) (content!2469 lt!585915) (content!2469 lt!585907))))))

(assert (=> d!489098 (= lt!586184 e!1041800)))

(declare-fun c!264414 () Bool)

(assert (=> d!489098 (= c!264414 ((_ is Nil!17802) lt!585915))))

(assert (=> d!489098 (= (++!4727 lt!585915 lt!585907) lt!586184)))

(assert (= (and d!489098 c!264414) b!1624316))

(assert (= (and d!489098 (not c!264414)) b!1624317))

(assert (= (and d!489098 res!725960) b!1624318))

(assert (= (and b!1624318 res!725959) b!1624319))

(declare-fun m!1951569 () Bool)

(assert (=> b!1624318 m!1951569))

(assert (=> b!1624318 m!1951107))

(declare-fun m!1951571 () Bool)

(assert (=> b!1624318 m!1951571))

(declare-fun m!1951573 () Bool)

(assert (=> b!1624317 m!1951573))

(declare-fun m!1951575 () Bool)

(assert (=> d!489098 m!1951575))

(assert (=> d!489098 m!1951115))

(declare-fun m!1951577 () Bool)

(assert (=> d!489098 m!1951577))

(assert (=> b!1623990 d!489098))

(declare-fun d!489100 () Bool)

(assert (=> d!489100 (= (list!6983 lt!585902) (list!6986 (c!264357 lt!585902)))))

(declare-fun bs!394709 () Bool)

(assert (= bs!394709 d!489100))

(declare-fun m!1951579 () Bool)

(assert (=> bs!394709 m!1951579))

(assert (=> b!1623990 d!489100))

(declare-fun d!489102 () Bool)

(assert (=> d!489102 (= (inv!23182 (tag!3413 (h!23205 rules!1846))) (= (mod (str.len (value!99019 (tag!3413 (h!23205 rules!1846)))) 2) 0))))

(assert (=> b!1623988 d!489102))

(declare-fun d!489104 () Bool)

(declare-fun res!725963 () Bool)

(declare-fun e!1041803 () Bool)

(assert (=> d!489104 (=> (not res!725963) (not e!1041803))))

(declare-fun semiInverseModEq!1198 (Int Int) Bool)

(assert (=> d!489104 (= res!725963 (semiInverseModEq!1198 (toChars!4421 (transformation!3135 (h!23205 rules!1846))) (toValue!4562 (transformation!3135 (h!23205 rules!1846)))))))

(assert (=> d!489104 (= (inv!23186 (transformation!3135 (h!23205 rules!1846))) e!1041803)))

(declare-fun b!1624322 () Bool)

(declare-fun equivClasses!1139 (Int Int) Bool)

(assert (=> b!1624322 (= e!1041803 (equivClasses!1139 (toChars!4421 (transformation!3135 (h!23205 rules!1846))) (toValue!4562 (transformation!3135 (h!23205 rules!1846)))))))

(assert (= (and d!489104 res!725963) b!1624322))

(declare-fun m!1951581 () Bool)

(assert (=> d!489104 m!1951581))

(declare-fun m!1951583 () Bool)

(assert (=> b!1624322 m!1951583))

(assert (=> b!1623988 d!489104))

(declare-fun d!489106 () Bool)

(assert (=> d!489106 (= (separableTokensPredicate!706 thiss!17113 (h!23204 tokens!457) (h!23204 (t!148922 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!521 (rulesRegex!525 thiss!17113 rules!1846) (++!4728 (charsOf!1784 (h!23204 tokens!457)) (singletonSeq!1548 (apply!4538 (charsOf!1784 (h!23204 (t!148922 tokens!457))) 0))))))))

(declare-fun bs!394710 () Bool)

(assert (= bs!394710 d!489106))

(assert (=> bs!394710 m!1950933))

(assert (=> bs!394710 m!1950935))

(assert (=> bs!394710 m!1950989))

(assert (=> bs!394710 m!1950935))

(declare-fun m!1951585 () Bool)

(assert (=> bs!394710 m!1951585))

(assert (=> bs!394710 m!1950927))

(assert (=> bs!394710 m!1950989))

(assert (=> bs!394710 m!1950927))

(assert (=> bs!394710 m!1951585))

(declare-fun m!1951587 () Bool)

(assert (=> bs!394710 m!1951587))

(assert (=> bs!394710 m!1950937))

(assert (=> bs!394710 m!1950933))

(assert (=> bs!394710 m!1950937))

(assert (=> b!1623989 d!489106))

(declare-fun d!489108 () Bool)

(assert (=> d!489108 (= (head!3420 lt!585904) (h!23203 lt!585904))))

(assert (=> b!1624010 d!489108))

(declare-fun d!489110 () Bool)

(declare-fun res!725966 () Bool)

(declare-fun e!1041806 () Bool)

(assert (=> d!489110 (=> (not res!725966) (not e!1041806))))

(declare-fun rulesValid!1126 (LexerInterface!2764 List!17874) Bool)

(assert (=> d!489110 (= res!725966 (rulesValid!1126 thiss!17113 rules!1846))))

(assert (=> d!489110 (= (rulesInvariant!2433 thiss!17113 rules!1846) e!1041806)))

(declare-fun b!1624325 () Bool)

(declare-datatypes ((List!17880 0))(
  ( (Nil!17810) (Cons!17810 (h!23211 String!20457) (t!148971 List!17880)) )
))
(declare-fun noDuplicateTag!1126 (LexerInterface!2764 List!17874 List!17880) Bool)

(assert (=> b!1624325 (= e!1041806 (noDuplicateTag!1126 thiss!17113 rules!1846 Nil!17810))))

(assert (= (and d!489110 res!725966) b!1624325))

(declare-fun m!1951589 () Bool)

(assert (=> d!489110 m!1951589))

(declare-fun m!1951591 () Bool)

(assert (=> b!1624325 m!1951591))

(assert (=> b!1623987 d!489110))

(declare-fun d!489112 () Bool)

(declare-fun lt!586191 () Bool)

(declare-fun e!1041823 () Bool)

(assert (=> d!489112 (= lt!586191 e!1041823)))

(declare-fun res!725975 () Bool)

(assert (=> d!489112 (=> (not res!725975) (not e!1041823))))

(assert (=> d!489112 (= res!725975 (= (list!6984 (_1!10084 (lex!1248 thiss!17113 rules!1846 (print!1295 thiss!17113 (singletonSeq!1549 (h!23204 tokens!457)))))) (list!6984 (singletonSeq!1549 (h!23204 tokens!457)))))))

(declare-fun e!1041822 () Bool)

(assert (=> d!489112 (= lt!586191 e!1041822)))

(declare-fun res!725976 () Bool)

(assert (=> d!489112 (=> (not res!725976) (not e!1041822))))

(declare-fun lt!586190 () tuple2!17364)

(assert (=> d!489112 (= res!725976 (= (size!14259 (_1!10084 lt!586190)) 1))))

(assert (=> d!489112 (= lt!586190 (lex!1248 thiss!17113 rules!1846 (print!1295 thiss!17113 (singletonSeq!1549 (h!23204 tokens!457)))))))

(assert (=> d!489112 (not (isEmpty!10832 rules!1846))))

(assert (=> d!489112 (= (rulesProduceIndividualToken!1416 thiss!17113 rules!1846 (h!23204 tokens!457)) lt!586191)))

(declare-fun b!1624347 () Bool)

(declare-fun res!725977 () Bool)

(assert (=> b!1624347 (=> (not res!725977) (not e!1041822))))

(declare-fun apply!4545 (BalanceConc!11782 Int) Token!5836)

(assert (=> b!1624347 (= res!725977 (= (apply!4545 (_1!10084 lt!586190) 0) (h!23204 tokens!457)))))

(declare-fun b!1624348 () Bool)

(declare-fun isEmpty!10840 (BalanceConc!11780) Bool)

(assert (=> b!1624348 (= e!1041822 (isEmpty!10840 (_2!10084 lt!586190)))))

(declare-fun b!1624349 () Bool)

(assert (=> b!1624349 (= e!1041823 (isEmpty!10840 (_2!10084 (lex!1248 thiss!17113 rules!1846 (print!1295 thiss!17113 (singletonSeq!1549 (h!23204 tokens!457)))))))))

(assert (= (and d!489112 res!725976) b!1624347))

(assert (= (and b!1624347 res!725977) b!1624348))

(assert (= (and d!489112 res!725975) b!1624349))

(assert (=> d!489112 m!1951017))

(declare-fun m!1951597 () Bool)

(assert (=> d!489112 m!1951597))

(assert (=> d!489112 m!1951017))

(assert (=> d!489112 m!1951017))

(declare-fun m!1951599 () Bool)

(assert (=> d!489112 m!1951599))

(declare-fun m!1951601 () Bool)

(assert (=> d!489112 m!1951601))

(assert (=> d!489112 m!1950983))

(declare-fun m!1951603 () Bool)

(assert (=> d!489112 m!1951603))

(assert (=> d!489112 m!1951599))

(declare-fun m!1951605 () Bool)

(assert (=> d!489112 m!1951605))

(declare-fun m!1951607 () Bool)

(assert (=> b!1624347 m!1951607))

(declare-fun m!1951609 () Bool)

(assert (=> b!1624348 m!1951609))

(assert (=> b!1624349 m!1951017))

(assert (=> b!1624349 m!1951017))

(assert (=> b!1624349 m!1951599))

(assert (=> b!1624349 m!1951599))

(assert (=> b!1624349 m!1951605))

(declare-fun m!1951611 () Bool)

(assert (=> b!1624349 m!1951611))

(assert (=> b!1624008 d!489112))

(declare-fun d!489116 () Bool)

(assert (=> d!489116 (= (inv!23182 (tag!3413 (rule!4961 (h!23204 tokens!457)))) (= (mod (str.len (value!99019 (tag!3413 (rule!4961 (h!23204 tokens!457))))) 2) 0))))

(assert (=> b!1624009 d!489116))

(declare-fun d!489118 () Bool)

(declare-fun res!725978 () Bool)

(declare-fun e!1041824 () Bool)

(assert (=> d!489118 (=> (not res!725978) (not e!1041824))))

(assert (=> d!489118 (= res!725978 (semiInverseModEq!1198 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (toValue!4562 (transformation!3135 (rule!4961 (h!23204 tokens!457))))))))

(assert (=> d!489118 (= (inv!23186 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) e!1041824)))

(declare-fun b!1624350 () Bool)

(assert (=> b!1624350 (= e!1041824 (equivClasses!1139 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (toValue!4562 (transformation!3135 (rule!4961 (h!23204 tokens!457))))))))

(assert (= (and d!489118 res!725978) b!1624350))

(declare-fun m!1951613 () Bool)

(assert (=> d!489118 m!1951613))

(declare-fun m!1951615 () Bool)

(assert (=> b!1624350 m!1951615))

(assert (=> b!1624009 d!489118))

(declare-fun b!1624364 () Bool)

(declare-fun e!1041835 () Bool)

(declare-fun inv!15 (TokenValue!3225) Bool)

(assert (=> b!1624364 (= e!1041835 (inv!15 (value!99020 (h!23204 tokens!457))))))

(declare-fun b!1624365 () Bool)

(declare-fun res!725984 () Bool)

(assert (=> b!1624365 (=> res!725984 e!1041835)))

(assert (=> b!1624365 (= res!725984 (not ((_ is IntegerValue!9677) (value!99020 (h!23204 tokens!457)))))))

(declare-fun e!1041836 () Bool)

(assert (=> b!1624365 (= e!1041836 e!1041835)))

(declare-fun b!1624366 () Bool)

(declare-fun inv!17 (TokenValue!3225) Bool)

(assert (=> b!1624366 (= e!1041836 (inv!17 (value!99020 (h!23204 tokens!457))))))

(declare-fun b!1624367 () Bool)

(declare-fun e!1041834 () Bool)

(declare-fun inv!16 (TokenValue!3225) Bool)

(assert (=> b!1624367 (= e!1041834 (inv!16 (value!99020 (h!23204 tokens!457))))))

(declare-fun d!489120 () Bool)

(declare-fun c!264420 () Bool)

(assert (=> d!489120 (= c!264420 ((_ is IntegerValue!9675) (value!99020 (h!23204 tokens!457))))))

(assert (=> d!489120 (= (inv!21 (value!99020 (h!23204 tokens!457))) e!1041834)))

(declare-fun b!1624368 () Bool)

(assert (=> b!1624368 (= e!1041834 e!1041836)))

(declare-fun c!264419 () Bool)

(assert (=> b!1624368 (= c!264419 ((_ is IntegerValue!9676) (value!99020 (h!23204 tokens!457))))))

(assert (= (and d!489120 c!264420) b!1624367))

(assert (= (and d!489120 (not c!264420)) b!1624368))

(assert (= (and b!1624368 c!264419) b!1624366))

(assert (= (and b!1624368 (not c!264419)) b!1624365))

(assert (= (and b!1624365 (not res!725984)) b!1624364))

(declare-fun m!1951623 () Bool)

(assert (=> b!1624364 m!1951623))

(declare-fun m!1951625 () Bool)

(assert (=> b!1624366 m!1951625))

(declare-fun m!1951627 () Bool)

(assert (=> b!1624367 m!1951627))

(assert (=> b!1624007 d!489120))

(declare-fun b!1624402 () Bool)

(declare-fun e!1041850 () Bool)

(declare-fun e!1041851 () Bool)

(assert (=> b!1624402 (= e!1041850 e!1041851)))

(declare-fun res!726015 () Bool)

(assert (=> b!1624402 (=> (not res!726015) (not e!1041851))))

(declare-fun lt!586215 () Option!3291)

(assert (=> b!1624402 (= res!726015 (isDefined!2658 lt!586215))))

(declare-fun d!489124 () Bool)

(assert (=> d!489124 e!1041850))

(declare-fun res!726018 () Bool)

(assert (=> d!489124 (=> res!726018 e!1041850)))

(assert (=> d!489124 (= res!726018 (isEmpty!10838 lt!586215))))

(declare-fun e!1041849 () Option!3291)

(assert (=> d!489124 (= lt!586215 e!1041849)))

(declare-fun c!264426 () Bool)

(assert (=> d!489124 (= c!264426 (and ((_ is Cons!17804) rules!1846) ((_ is Nil!17804) (t!148923 rules!1846))))))

(declare-fun lt!586211 () Unit!28817)

(declare-fun lt!586212 () Unit!28817)

(assert (=> d!489124 (= lt!586211 lt!586212)))

(assert (=> d!489124 (isPrefix!1395 lt!585915 lt!585915)))

(declare-fun lemmaIsPrefixRefl!958 (List!17872 List!17872) Unit!28817)

(assert (=> d!489124 (= lt!586212 (lemmaIsPrefixRefl!958 lt!585915 lt!585915))))

(declare-fun rulesValidInductive!970 (LexerInterface!2764 List!17874) Bool)

(assert (=> d!489124 (rulesValidInductive!970 thiss!17113 rules!1846)))

(assert (=> d!489124 (= (maxPrefix!1328 thiss!17113 rules!1846 lt!585915) lt!586215)))

(declare-fun b!1624403 () Bool)

(declare-fun res!726014 () Bool)

(assert (=> b!1624403 (=> (not res!726014) (not e!1041851))))

(assert (=> b!1624403 (= res!726014 (= (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586215)))) (originalCharacters!3949 (_1!10083 (get!5127 lt!586215)))))))

(declare-fun b!1624404 () Bool)

(declare-fun res!726017 () Bool)

(assert (=> b!1624404 (=> (not res!726017) (not e!1041851))))

(assert (=> b!1624404 (= res!726017 (matchR!1962 (regex!3135 (rule!4961 (_1!10083 (get!5127 lt!586215)))) (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586215))))))))

(declare-fun b!1624405 () Bool)

(declare-fun lt!586213 () Option!3291)

(declare-fun lt!586214 () Option!3291)

(assert (=> b!1624405 (= e!1041849 (ite (and ((_ is None!3290) lt!586213) ((_ is None!3290) lt!586214)) None!3290 (ite ((_ is None!3290) lt!586214) lt!586213 (ite ((_ is None!3290) lt!586213) lt!586214 (ite (>= (size!14256 (_1!10083 (v!24319 lt!586213))) (size!14256 (_1!10083 (v!24319 lt!586214)))) lt!586213 lt!586214)))))))

(declare-fun call!105220 () Option!3291)

(assert (=> b!1624405 (= lt!586213 call!105220)))

(assert (=> b!1624405 (= lt!586214 (maxPrefix!1328 thiss!17113 (t!148923 rules!1846) lt!585915))))

(declare-fun b!1624406 () Bool)

(declare-fun res!726019 () Bool)

(assert (=> b!1624406 (=> (not res!726019) (not e!1041851))))

(assert (=> b!1624406 (= res!726019 (< (size!14262 (_2!10083 (get!5127 lt!586215))) (size!14262 lt!585915)))))

(declare-fun b!1624407 () Bool)

(assert (=> b!1624407 (= e!1041849 call!105220)))

(declare-fun b!1624408 () Bool)

(declare-fun res!726020 () Bool)

(assert (=> b!1624408 (=> (not res!726020) (not e!1041851))))

(declare-fun apply!4546 (TokenValueInjection!6110 BalanceConc!11780) TokenValue!3225)

(assert (=> b!1624408 (= res!726020 (= (value!99020 (_1!10083 (get!5127 lt!586215))) (apply!4546 (transformation!3135 (rule!4961 (_1!10083 (get!5127 lt!586215)))) (seqFromList!2020 (originalCharacters!3949 (_1!10083 (get!5127 lt!586215)))))))))

(declare-fun b!1624409 () Bool)

(declare-fun res!726016 () Bool)

(assert (=> b!1624409 (=> (not res!726016) (not e!1041851))))

(assert (=> b!1624409 (= res!726016 (= (++!4727 (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586215)))) (_2!10083 (get!5127 lt!586215))) lt!585915))))

(declare-fun b!1624410 () Bool)

(declare-fun contains!3112 (List!17874 Rule!6070) Bool)

(assert (=> b!1624410 (= e!1041851 (contains!3112 rules!1846 (rule!4961 (_1!10083 (get!5127 lt!586215)))))))

(declare-fun bm!105215 () Bool)

(assert (=> bm!105215 (= call!105220 (maxPrefixOneRule!773 thiss!17113 (h!23205 rules!1846) lt!585915))))

(assert (= (and d!489124 c!264426) b!1624407))

(assert (= (and d!489124 (not c!264426)) b!1624405))

(assert (= (or b!1624407 b!1624405) bm!105215))

(assert (= (and d!489124 (not res!726018)) b!1624402))

(assert (= (and b!1624402 res!726015) b!1624403))

(assert (= (and b!1624403 res!726014) b!1624406))

(assert (= (and b!1624406 res!726019) b!1624409))

(assert (= (and b!1624409 res!726016) b!1624408))

(assert (= (and b!1624408 res!726020) b!1624404))

(assert (= (and b!1624404 res!726017) b!1624410))

(declare-fun m!1951651 () Bool)

(assert (=> b!1624409 m!1951651))

(declare-fun m!1951653 () Bool)

(assert (=> b!1624409 m!1951653))

(assert (=> b!1624409 m!1951653))

(declare-fun m!1951655 () Bool)

(assert (=> b!1624409 m!1951655))

(assert (=> b!1624409 m!1951655))

(declare-fun m!1951657 () Bool)

(assert (=> b!1624409 m!1951657))

(assert (=> b!1624404 m!1951651))

(assert (=> b!1624404 m!1951653))

(assert (=> b!1624404 m!1951653))

(assert (=> b!1624404 m!1951655))

(assert (=> b!1624404 m!1951655))

(declare-fun m!1951659 () Bool)

(assert (=> b!1624404 m!1951659))

(declare-fun m!1951661 () Bool)

(assert (=> b!1624402 m!1951661))

(assert (=> b!1624403 m!1951651))

(assert (=> b!1624403 m!1951653))

(assert (=> b!1624403 m!1951653))

(assert (=> b!1624403 m!1951655))

(assert (=> b!1624410 m!1951651))

(declare-fun m!1951663 () Bool)

(assert (=> b!1624410 m!1951663))

(assert (=> b!1624408 m!1951651))

(declare-fun m!1951665 () Bool)

(assert (=> b!1624408 m!1951665))

(assert (=> b!1624408 m!1951665))

(declare-fun m!1951667 () Bool)

(assert (=> b!1624408 m!1951667))

(declare-fun m!1951669 () Bool)

(assert (=> bm!105215 m!1951669))

(assert (=> b!1624406 m!1951651))

(declare-fun m!1951671 () Bool)

(assert (=> b!1624406 m!1951671))

(assert (=> b!1624406 m!1951107))

(declare-fun m!1951673 () Bool)

(assert (=> d!489124 m!1951673))

(declare-fun m!1951675 () Bool)

(assert (=> d!489124 m!1951675))

(declare-fun m!1951677 () Bool)

(assert (=> d!489124 m!1951677))

(declare-fun m!1951679 () Bool)

(assert (=> d!489124 m!1951679))

(declare-fun m!1951681 () Bool)

(assert (=> b!1624405 m!1951681))

(assert (=> b!1623986 d!489124))

(declare-fun b!1624411 () Bool)

(declare-fun e!1041853 () Bool)

(declare-fun e!1041854 () Bool)

(assert (=> b!1624411 (= e!1041853 e!1041854)))

(declare-fun res!726022 () Bool)

(assert (=> b!1624411 (=> (not res!726022) (not e!1041854))))

(declare-fun lt!586220 () Option!3291)

(assert (=> b!1624411 (= res!726022 (isDefined!2658 lt!586220))))

(declare-fun d!489130 () Bool)

(assert (=> d!489130 e!1041853))

(declare-fun res!726025 () Bool)

(assert (=> d!489130 (=> res!726025 e!1041853)))

(assert (=> d!489130 (= res!726025 (isEmpty!10838 lt!586220))))

(declare-fun e!1041852 () Option!3291)

(assert (=> d!489130 (= lt!586220 e!1041852)))

(declare-fun c!264427 () Bool)

(assert (=> d!489130 (= c!264427 (and ((_ is Cons!17804) rules!1846) ((_ is Nil!17804) (t!148923 rules!1846))))))

(declare-fun lt!586216 () Unit!28817)

(declare-fun lt!586217 () Unit!28817)

(assert (=> d!489130 (= lt!586216 lt!586217)))

(assert (=> d!489130 (isPrefix!1395 (originalCharacters!3949 (h!23204 tokens!457)) (originalCharacters!3949 (h!23204 tokens!457)))))

(assert (=> d!489130 (= lt!586217 (lemmaIsPrefixRefl!958 (originalCharacters!3949 (h!23204 tokens!457)) (originalCharacters!3949 (h!23204 tokens!457))))))

(assert (=> d!489130 (rulesValidInductive!970 thiss!17113 rules!1846)))

(assert (=> d!489130 (= (maxPrefix!1328 thiss!17113 rules!1846 (originalCharacters!3949 (h!23204 tokens!457))) lt!586220)))

(declare-fun b!1624412 () Bool)

(declare-fun res!726021 () Bool)

(assert (=> b!1624412 (=> (not res!726021) (not e!1041854))))

(assert (=> b!1624412 (= res!726021 (= (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586220)))) (originalCharacters!3949 (_1!10083 (get!5127 lt!586220)))))))

(declare-fun b!1624413 () Bool)

(declare-fun res!726024 () Bool)

(assert (=> b!1624413 (=> (not res!726024) (not e!1041854))))

(assert (=> b!1624413 (= res!726024 (matchR!1962 (regex!3135 (rule!4961 (_1!10083 (get!5127 lt!586220)))) (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586220))))))))

(declare-fun b!1624414 () Bool)

(declare-fun lt!586218 () Option!3291)

(declare-fun lt!586219 () Option!3291)

(assert (=> b!1624414 (= e!1041852 (ite (and ((_ is None!3290) lt!586218) ((_ is None!3290) lt!586219)) None!3290 (ite ((_ is None!3290) lt!586219) lt!586218 (ite ((_ is None!3290) lt!586218) lt!586219 (ite (>= (size!14256 (_1!10083 (v!24319 lt!586218))) (size!14256 (_1!10083 (v!24319 lt!586219)))) lt!586218 lt!586219)))))))

(declare-fun call!105221 () Option!3291)

(assert (=> b!1624414 (= lt!586218 call!105221)))

(assert (=> b!1624414 (= lt!586219 (maxPrefix!1328 thiss!17113 (t!148923 rules!1846) (originalCharacters!3949 (h!23204 tokens!457))))))

(declare-fun b!1624415 () Bool)

(declare-fun res!726026 () Bool)

(assert (=> b!1624415 (=> (not res!726026) (not e!1041854))))

(assert (=> b!1624415 (= res!726026 (< (size!14262 (_2!10083 (get!5127 lt!586220))) (size!14262 (originalCharacters!3949 (h!23204 tokens!457)))))))

(declare-fun b!1624416 () Bool)

(assert (=> b!1624416 (= e!1041852 call!105221)))

(declare-fun b!1624417 () Bool)

(declare-fun res!726027 () Bool)

(assert (=> b!1624417 (=> (not res!726027) (not e!1041854))))

(assert (=> b!1624417 (= res!726027 (= (value!99020 (_1!10083 (get!5127 lt!586220))) (apply!4546 (transformation!3135 (rule!4961 (_1!10083 (get!5127 lt!586220)))) (seqFromList!2020 (originalCharacters!3949 (_1!10083 (get!5127 lt!586220)))))))))

(declare-fun b!1624418 () Bool)

(declare-fun res!726023 () Bool)

(assert (=> b!1624418 (=> (not res!726023) (not e!1041854))))

(assert (=> b!1624418 (= res!726023 (= (++!4727 (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586220)))) (_2!10083 (get!5127 lt!586220))) (originalCharacters!3949 (h!23204 tokens!457))))))

(declare-fun b!1624419 () Bool)

(assert (=> b!1624419 (= e!1041854 (contains!3112 rules!1846 (rule!4961 (_1!10083 (get!5127 lt!586220)))))))

(declare-fun bm!105216 () Bool)

(assert (=> bm!105216 (= call!105221 (maxPrefixOneRule!773 thiss!17113 (h!23205 rules!1846) (originalCharacters!3949 (h!23204 tokens!457))))))

(assert (= (and d!489130 c!264427) b!1624416))

(assert (= (and d!489130 (not c!264427)) b!1624414))

(assert (= (or b!1624416 b!1624414) bm!105216))

(assert (= (and d!489130 (not res!726025)) b!1624411))

(assert (= (and b!1624411 res!726022) b!1624412))

(assert (= (and b!1624412 res!726021) b!1624415))

(assert (= (and b!1624415 res!726026) b!1624418))

(assert (= (and b!1624418 res!726023) b!1624417))

(assert (= (and b!1624417 res!726027) b!1624413))

(assert (= (and b!1624413 res!726024) b!1624419))

(declare-fun m!1951683 () Bool)

(assert (=> b!1624418 m!1951683))

(declare-fun m!1951685 () Bool)

(assert (=> b!1624418 m!1951685))

(assert (=> b!1624418 m!1951685))

(declare-fun m!1951687 () Bool)

(assert (=> b!1624418 m!1951687))

(assert (=> b!1624418 m!1951687))

(declare-fun m!1951689 () Bool)

(assert (=> b!1624418 m!1951689))

(assert (=> b!1624413 m!1951683))

(assert (=> b!1624413 m!1951685))

(assert (=> b!1624413 m!1951685))

(assert (=> b!1624413 m!1951687))

(assert (=> b!1624413 m!1951687))

(declare-fun m!1951691 () Bool)

(assert (=> b!1624413 m!1951691))

(declare-fun m!1951693 () Bool)

(assert (=> b!1624411 m!1951693))

(assert (=> b!1624412 m!1951683))

(assert (=> b!1624412 m!1951685))

(assert (=> b!1624412 m!1951685))

(assert (=> b!1624412 m!1951687))

(assert (=> b!1624419 m!1951683))

(declare-fun m!1951695 () Bool)

(assert (=> b!1624419 m!1951695))

(assert (=> b!1624417 m!1951683))

(declare-fun m!1951697 () Bool)

(assert (=> b!1624417 m!1951697))

(assert (=> b!1624417 m!1951697))

(declare-fun m!1951699 () Bool)

(assert (=> b!1624417 m!1951699))

(declare-fun m!1951701 () Bool)

(assert (=> bm!105216 m!1951701))

(assert (=> b!1624415 m!1951683))

(declare-fun m!1951703 () Bool)

(assert (=> b!1624415 m!1951703))

(declare-fun m!1951705 () Bool)

(assert (=> b!1624415 m!1951705))

(declare-fun m!1951707 () Bool)

(assert (=> d!489130 m!1951707))

(declare-fun m!1951709 () Bool)

(assert (=> d!489130 m!1951709))

(declare-fun m!1951711 () Bool)

(assert (=> d!489130 m!1951711))

(assert (=> d!489130 m!1951679))

(declare-fun m!1951713 () Bool)

(assert (=> b!1624414 m!1951713))

(assert (=> b!1623986 d!489130))

(declare-fun d!489132 () Bool)

(assert (=> d!489132 (= (isDefined!2658 lt!585912) (not (isEmpty!10838 lt!585912)))))

(declare-fun bs!394711 () Bool)

(assert (= bs!394711 d!489132))

(declare-fun m!1951715 () Bool)

(assert (=> bs!394711 m!1951715))

(assert (=> b!1623986 d!489132))

(declare-fun d!489134 () Bool)

(assert (=> d!489134 (= (isDefined!2658 (maxPrefix!1328 thiss!17113 rules!1846 (originalCharacters!3949 (h!23204 tokens!457)))) (not (isEmpty!10838 (maxPrefix!1328 thiss!17113 rules!1846 (originalCharacters!3949 (h!23204 tokens!457))))))))

(declare-fun bs!394712 () Bool)

(assert (= bs!394712 d!489134))

(assert (=> bs!394712 m!1950959))

(declare-fun m!1951717 () Bool)

(assert (=> bs!394712 m!1951717))

(assert (=> b!1623986 d!489134))

(declare-fun b!1624423 () Bool)

(declare-fun lt!586221 () List!17872)

(declare-fun e!1041855 () Bool)

(assert (=> b!1624423 (= e!1041855 (or (not (= lt!585890 Nil!17802)) (= lt!586221 (originalCharacters!3949 (h!23204 tokens!457)))))))

(declare-fun b!1624420 () Bool)

(declare-fun e!1041856 () List!17872)

(assert (=> b!1624420 (= e!1041856 lt!585890)))

(declare-fun b!1624422 () Bool)

(declare-fun res!726028 () Bool)

(assert (=> b!1624422 (=> (not res!726028) (not e!1041855))))

(assert (=> b!1624422 (= res!726028 (= (size!14262 lt!586221) (+ (size!14262 (originalCharacters!3949 (h!23204 tokens!457))) (size!14262 lt!585890))))))

(declare-fun b!1624421 () Bool)

(assert (=> b!1624421 (= e!1041856 (Cons!17802 (h!23203 (originalCharacters!3949 (h!23204 tokens!457))) (++!4727 (t!148921 (originalCharacters!3949 (h!23204 tokens!457))) lt!585890)))))

(declare-fun d!489136 () Bool)

(assert (=> d!489136 e!1041855))

(declare-fun res!726029 () Bool)

(assert (=> d!489136 (=> (not res!726029) (not e!1041855))))

(assert (=> d!489136 (= res!726029 (= (content!2469 lt!586221) ((_ map or) (content!2469 (originalCharacters!3949 (h!23204 tokens!457))) (content!2469 lt!585890))))))

(assert (=> d!489136 (= lt!586221 e!1041856)))

(declare-fun c!264428 () Bool)

(assert (=> d!489136 (= c!264428 ((_ is Nil!17802) (originalCharacters!3949 (h!23204 tokens!457))))))

(assert (=> d!489136 (= (++!4727 (originalCharacters!3949 (h!23204 tokens!457)) lt!585890) lt!586221)))

(assert (= (and d!489136 c!264428) b!1624420))

(assert (= (and d!489136 (not c!264428)) b!1624421))

(assert (= (and d!489136 res!726029) b!1624422))

(assert (= (and b!1624422 res!726028) b!1624423))

(declare-fun m!1951719 () Bool)

(assert (=> b!1624422 m!1951719))

(assert (=> b!1624422 m!1951705))

(assert (=> b!1624422 m!1951339))

(declare-fun m!1951721 () Bool)

(assert (=> b!1624421 m!1951721))

(declare-fun m!1951723 () Bool)

(assert (=> d!489136 m!1951723))

(declare-fun m!1951725 () Bool)

(assert (=> d!489136 m!1951725))

(assert (=> d!489136 m!1951345))

(assert (=> b!1623986 d!489136))

(declare-fun d!489138 () Bool)

(assert (=> d!489138 (= (get!5127 lt!585912) (v!24319 lt!585912))))

(assert (=> b!1623986 d!489138))

(declare-fun d!489140 () Bool)

(declare-fun c!264429 () Bool)

(assert (=> d!489140 (= c!264429 (isEmpty!10833 (++!4727 (originalCharacters!3949 (h!23204 tokens!457)) lt!585890)))))

(declare-fun e!1041857 () Bool)

(assert (=> d!489140 (= (prefixMatch!398 lt!585905 (++!4727 (originalCharacters!3949 (h!23204 tokens!457)) lt!585890)) e!1041857)))

(declare-fun b!1624424 () Bool)

(assert (=> b!1624424 (= e!1041857 (not (lostCause!436 lt!585905)))))

(declare-fun b!1624425 () Bool)

(assert (=> b!1624425 (= e!1041857 (prefixMatch!398 (derivativeStep!1080 lt!585905 (head!3420 (++!4727 (originalCharacters!3949 (h!23204 tokens!457)) lt!585890))) (tail!2358 (++!4727 (originalCharacters!3949 (h!23204 tokens!457)) lt!585890))))))

(assert (= (and d!489140 c!264429) b!1624424))

(assert (= (and d!489140 (not c!264429)) b!1624425))

(assert (=> d!489140 m!1950963))

(declare-fun m!1951727 () Bool)

(assert (=> d!489140 m!1951727))

(assert (=> b!1624424 m!1951559))

(assert (=> b!1624425 m!1950963))

(declare-fun m!1951729 () Bool)

(assert (=> b!1624425 m!1951729))

(assert (=> b!1624425 m!1951729))

(declare-fun m!1951731 () Bool)

(assert (=> b!1624425 m!1951731))

(assert (=> b!1624425 m!1950963))

(declare-fun m!1951733 () Bool)

(assert (=> b!1624425 m!1951733))

(assert (=> b!1624425 m!1951731))

(assert (=> b!1624425 m!1951733))

(declare-fun m!1951735 () Bool)

(assert (=> b!1624425 m!1951735))

(assert (=> b!1623986 d!489140))

(declare-fun d!489142 () Bool)

(declare-fun res!726034 () Bool)

(declare-fun e!1041860 () Bool)

(assert (=> d!489142 (=> (not res!726034) (not e!1041860))))

(assert (=> d!489142 (= res!726034 (not (isEmpty!10833 (originalCharacters!3949 (h!23204 tokens!457)))))))

(assert (=> d!489142 (= (inv!23185 (h!23204 tokens!457)) e!1041860)))

(declare-fun b!1624430 () Bool)

(declare-fun res!726035 () Bool)

(assert (=> b!1624430 (=> (not res!726035) (not e!1041860))))

(assert (=> b!1624430 (= res!726035 (= (originalCharacters!3949 (h!23204 tokens!457)) (list!6983 (dynLambda!7944 (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (value!99020 (h!23204 tokens!457))))))))

(declare-fun b!1624431 () Bool)

(assert (=> b!1624431 (= e!1041860 (= (size!14256 (h!23204 tokens!457)) (size!14262 (originalCharacters!3949 (h!23204 tokens!457)))))))

(assert (= (and d!489142 res!726034) b!1624430))

(assert (= (and b!1624430 res!726035) b!1624431))

(declare-fun b_lambda!51181 () Bool)

(assert (=> (not b_lambda!51181) (not b!1624430)))

(assert (=> b!1624430 t!148925))

(declare-fun b_and!115189 () Bool)

(assert (= b_and!115185 (and (=> t!148925 result!112470) b_and!115189)))

(assert (=> b!1624430 t!148927))

(declare-fun b_and!115191 () Bool)

(assert (= b_and!115187 (and (=> t!148927 result!112474) b_and!115191)))

(declare-fun m!1951737 () Bool)

(assert (=> d!489142 m!1951737))

(assert (=> b!1624430 m!1951097))

(assert (=> b!1624430 m!1951097))

(declare-fun m!1951739 () Bool)

(assert (=> b!1624430 m!1951739))

(assert (=> b!1624431 m!1951705))

(assert (=> b!1623984 d!489142))

(declare-fun d!489144 () Bool)

(declare-fun lt!586242 () BalanceConc!11780)

(assert (=> d!489144 (= (list!6983 lt!586242) (printList!879 thiss!17113 (list!6984 lt!585897)))))

(assert (=> d!489144 (= lt!586242 (printTailRec!817 thiss!17113 lt!585897 0 (BalanceConc!11781 Empty!5918)))))

(assert (=> d!489144 (= (print!1295 thiss!17113 lt!585897) lt!586242)))

(declare-fun bs!394713 () Bool)

(assert (= bs!394713 d!489144))

(declare-fun m!1951741 () Bool)

(assert (=> bs!394713 m!1951741))

(declare-fun m!1951743 () Bool)

(assert (=> bs!394713 m!1951743))

(assert (=> bs!394713 m!1951743))

(declare-fun m!1951745 () Bool)

(assert (=> bs!394713 m!1951745))

(assert (=> bs!394713 m!1951011))

(assert (=> b!1624006 d!489144))

(declare-fun b!1624432 () Bool)

(declare-fun e!1041862 () Bool)

(declare-fun e!1041863 () Bool)

(assert (=> b!1624432 (= e!1041862 e!1041863)))

(declare-fun res!726037 () Bool)

(assert (=> b!1624432 (=> (not res!726037) (not e!1041863))))

(declare-fun lt!586247 () Option!3291)

(assert (=> b!1624432 (= res!726037 (isDefined!2658 lt!586247))))

(declare-fun d!489146 () Bool)

(assert (=> d!489146 e!1041862))

(declare-fun res!726040 () Bool)

(assert (=> d!489146 (=> res!726040 e!1041862)))

(assert (=> d!489146 (= res!726040 (isEmpty!10838 lt!586247))))

(declare-fun e!1041861 () Option!3291)

(assert (=> d!489146 (= lt!586247 e!1041861)))

(declare-fun c!264430 () Bool)

(assert (=> d!489146 (= c!264430 (and ((_ is Cons!17804) rules!1846) ((_ is Nil!17804) (t!148923 rules!1846))))))

(declare-fun lt!586243 () Unit!28817)

(declare-fun lt!586244 () Unit!28817)

(assert (=> d!489146 (= lt!586243 lt!586244)))

(assert (=> d!489146 (isPrefix!1395 lt!585896 lt!585896)))

(assert (=> d!489146 (= lt!586244 (lemmaIsPrefixRefl!958 lt!585896 lt!585896))))

(assert (=> d!489146 (rulesValidInductive!970 thiss!17113 rules!1846)))

(assert (=> d!489146 (= (maxPrefix!1328 thiss!17113 rules!1846 lt!585896) lt!586247)))

(declare-fun b!1624433 () Bool)

(declare-fun res!726036 () Bool)

(assert (=> b!1624433 (=> (not res!726036) (not e!1041863))))

(assert (=> b!1624433 (= res!726036 (= (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586247)))) (originalCharacters!3949 (_1!10083 (get!5127 lt!586247)))))))

(declare-fun b!1624434 () Bool)

(declare-fun res!726039 () Bool)

(assert (=> b!1624434 (=> (not res!726039) (not e!1041863))))

(assert (=> b!1624434 (= res!726039 (matchR!1962 (regex!3135 (rule!4961 (_1!10083 (get!5127 lt!586247)))) (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586247))))))))

(declare-fun b!1624435 () Bool)

(declare-fun lt!586245 () Option!3291)

(declare-fun lt!586246 () Option!3291)

(assert (=> b!1624435 (= e!1041861 (ite (and ((_ is None!3290) lt!586245) ((_ is None!3290) lt!586246)) None!3290 (ite ((_ is None!3290) lt!586246) lt!586245 (ite ((_ is None!3290) lt!586245) lt!586246 (ite (>= (size!14256 (_1!10083 (v!24319 lt!586245))) (size!14256 (_1!10083 (v!24319 lt!586246)))) lt!586245 lt!586246)))))))

(declare-fun call!105222 () Option!3291)

(assert (=> b!1624435 (= lt!586245 call!105222)))

(assert (=> b!1624435 (= lt!586246 (maxPrefix!1328 thiss!17113 (t!148923 rules!1846) lt!585896))))

(declare-fun b!1624436 () Bool)

(declare-fun res!726041 () Bool)

(assert (=> b!1624436 (=> (not res!726041) (not e!1041863))))

(assert (=> b!1624436 (= res!726041 (< (size!14262 (_2!10083 (get!5127 lt!586247))) (size!14262 lt!585896)))))

(declare-fun b!1624437 () Bool)

(assert (=> b!1624437 (= e!1041861 call!105222)))

(declare-fun b!1624438 () Bool)

(declare-fun res!726042 () Bool)

(assert (=> b!1624438 (=> (not res!726042) (not e!1041863))))

(assert (=> b!1624438 (= res!726042 (= (value!99020 (_1!10083 (get!5127 lt!586247))) (apply!4546 (transformation!3135 (rule!4961 (_1!10083 (get!5127 lt!586247)))) (seqFromList!2020 (originalCharacters!3949 (_1!10083 (get!5127 lt!586247)))))))))

(declare-fun b!1624439 () Bool)

(declare-fun res!726038 () Bool)

(assert (=> b!1624439 (=> (not res!726038) (not e!1041863))))

(assert (=> b!1624439 (= res!726038 (= (++!4727 (list!6983 (charsOf!1784 (_1!10083 (get!5127 lt!586247)))) (_2!10083 (get!5127 lt!586247))) lt!585896))))

(declare-fun b!1624440 () Bool)

(assert (=> b!1624440 (= e!1041863 (contains!3112 rules!1846 (rule!4961 (_1!10083 (get!5127 lt!586247)))))))

(declare-fun bm!105217 () Bool)

(assert (=> bm!105217 (= call!105222 (maxPrefixOneRule!773 thiss!17113 (h!23205 rules!1846) lt!585896))))

(assert (= (and d!489146 c!264430) b!1624437))

(assert (= (and d!489146 (not c!264430)) b!1624435))

(assert (= (or b!1624437 b!1624435) bm!105217))

(assert (= (and d!489146 (not res!726040)) b!1624432))

(assert (= (and b!1624432 res!726037) b!1624433))

(assert (= (and b!1624433 res!726036) b!1624436))

(assert (= (and b!1624436 res!726041) b!1624439))

(assert (= (and b!1624439 res!726038) b!1624438))

(assert (= (and b!1624438 res!726042) b!1624434))

(assert (= (and b!1624434 res!726039) b!1624440))

(declare-fun m!1951747 () Bool)

(assert (=> b!1624439 m!1951747))

(declare-fun m!1951749 () Bool)

(assert (=> b!1624439 m!1951749))

(assert (=> b!1624439 m!1951749))

(declare-fun m!1951753 () Bool)

(assert (=> b!1624439 m!1951753))

(assert (=> b!1624439 m!1951753))

(declare-fun m!1951759 () Bool)

(assert (=> b!1624439 m!1951759))

(assert (=> b!1624434 m!1951747))

(assert (=> b!1624434 m!1951749))

(assert (=> b!1624434 m!1951749))

(assert (=> b!1624434 m!1951753))

(assert (=> b!1624434 m!1951753))

(declare-fun m!1951771 () Bool)

(assert (=> b!1624434 m!1951771))

(declare-fun m!1951775 () Bool)

(assert (=> b!1624432 m!1951775))

(assert (=> b!1624433 m!1951747))

(assert (=> b!1624433 m!1951749))

(assert (=> b!1624433 m!1951749))

(assert (=> b!1624433 m!1951753))

(assert (=> b!1624440 m!1951747))

(declare-fun m!1951783 () Bool)

(assert (=> b!1624440 m!1951783))

(assert (=> b!1624438 m!1951747))

(declare-fun m!1951785 () Bool)

(assert (=> b!1624438 m!1951785))

(assert (=> b!1624438 m!1951785))

(declare-fun m!1951787 () Bool)

(assert (=> b!1624438 m!1951787))

(declare-fun m!1951789 () Bool)

(assert (=> bm!105217 m!1951789))

(assert (=> b!1624436 m!1951747))

(declare-fun m!1951791 () Bool)

(assert (=> b!1624436 m!1951791))

(declare-fun m!1951793 () Bool)

(assert (=> b!1624436 m!1951793))

(declare-fun m!1951795 () Bool)

(assert (=> d!489146 m!1951795))

(declare-fun m!1951797 () Bool)

(assert (=> d!489146 m!1951797))

(declare-fun m!1951799 () Bool)

(assert (=> d!489146 m!1951799))

(assert (=> d!489146 m!1951679))

(declare-fun m!1951801 () Bool)

(assert (=> b!1624435 m!1951801))

(assert (=> b!1624006 d!489146))

(declare-fun d!489150 () Bool)

(assert (=> d!489150 (= (list!6983 lt!585891) (list!6986 (c!264357 lt!585891)))))

(declare-fun bs!394715 () Bool)

(assert (= bs!394715 d!489150))

(declare-fun m!1951803 () Bool)

(assert (=> bs!394715 m!1951803))

(assert (=> b!1624006 d!489150))

(declare-fun d!489152 () Bool)

(declare-fun lt!586280 () BalanceConc!11780)

(declare-fun printListTailRec!353 (LexerInterface!2764 List!17873 List!17872) List!17872)

(declare-fun dropList!604 (BalanceConc!11782 Int) List!17873)

(assert (=> d!489152 (= (list!6983 lt!586280) (printListTailRec!353 thiss!17113 (dropList!604 lt!585897 0) (list!6983 (BalanceConc!11781 Empty!5918))))))

(declare-fun e!1041871 () BalanceConc!11780)

(assert (=> d!489152 (= lt!586280 e!1041871)))

(declare-fun c!264433 () Bool)

(assert (=> d!489152 (= c!264433 (>= 0 (size!14259 lt!585897)))))

(declare-fun e!1041872 () Bool)

(assert (=> d!489152 e!1041872))

(declare-fun res!726045 () Bool)

(assert (=> d!489152 (=> (not res!726045) (not e!1041872))))

(assert (=> d!489152 (= res!726045 (>= 0 0))))

(assert (=> d!489152 (= (printTailRec!817 thiss!17113 lt!585897 0 (BalanceConc!11781 Empty!5918)) lt!586280)))

(declare-fun b!1624452 () Bool)

(assert (=> b!1624452 (= e!1041872 (<= 0 (size!14259 lt!585897)))))

(declare-fun b!1624453 () Bool)

(assert (=> b!1624453 (= e!1041871 (BalanceConc!11781 Empty!5918))))

(declare-fun b!1624454 () Bool)

(assert (=> b!1624454 (= e!1041871 (printTailRec!817 thiss!17113 lt!585897 (+ 0 1) (++!4728 (BalanceConc!11781 Empty!5918) (charsOf!1784 (apply!4545 lt!585897 0)))))))

(declare-fun lt!586284 () List!17873)

(assert (=> b!1624454 (= lt!586284 (list!6984 lt!585897))))

(declare-fun lt!586282 () Unit!28817)

(declare-fun lemmaDropApply!560 (List!17873 Int) Unit!28817)

(assert (=> b!1624454 (= lt!586282 (lemmaDropApply!560 lt!586284 0))))

(declare-fun drop!870 (List!17873 Int) List!17873)

(declare-fun apply!4548 (List!17873 Int) Token!5836)

(assert (=> b!1624454 (= (head!3423 (drop!870 lt!586284 0)) (apply!4548 lt!586284 0))))

(declare-fun lt!586281 () Unit!28817)

(assert (=> b!1624454 (= lt!586281 lt!586282)))

(declare-fun lt!586283 () List!17873)

(assert (=> b!1624454 (= lt!586283 (list!6984 lt!585897))))

(declare-fun lt!586278 () Unit!28817)

(declare-fun lemmaDropTail!540 (List!17873 Int) Unit!28817)

(assert (=> b!1624454 (= lt!586278 (lemmaDropTail!540 lt!586283 0))))

(declare-fun tail!2360 (List!17873) List!17873)

(assert (=> b!1624454 (= (tail!2360 (drop!870 lt!586283 0)) (drop!870 lt!586283 (+ 0 1)))))

(declare-fun lt!586279 () Unit!28817)

(assert (=> b!1624454 (= lt!586279 lt!586278)))

(assert (= (and d!489152 res!726045) b!1624452))

(assert (= (and d!489152 c!264433) b!1624453))

(assert (= (and d!489152 (not c!264433)) b!1624454))

(declare-fun m!1951821 () Bool)

(assert (=> d!489152 m!1951821))

(declare-fun m!1951823 () Bool)

(assert (=> d!489152 m!1951823))

(declare-fun m!1951825 () Bool)

(assert (=> d!489152 m!1951825))

(assert (=> d!489152 m!1951821))

(declare-fun m!1951827 () Bool)

(assert (=> d!489152 m!1951827))

(assert (=> d!489152 m!1951823))

(declare-fun m!1951829 () Bool)

(assert (=> d!489152 m!1951829))

(assert (=> b!1624452 m!1951829))

(declare-fun m!1951831 () Bool)

(assert (=> b!1624454 m!1951831))

(declare-fun m!1951833 () Bool)

(assert (=> b!1624454 m!1951833))

(declare-fun m!1951835 () Bool)

(assert (=> b!1624454 m!1951835))

(declare-fun m!1951837 () Bool)

(assert (=> b!1624454 m!1951837))

(assert (=> b!1624454 m!1951831))

(declare-fun m!1951839 () Bool)

(assert (=> b!1624454 m!1951839))

(declare-fun m!1951841 () Bool)

(assert (=> b!1624454 m!1951841))

(declare-fun m!1951843 () Bool)

(assert (=> b!1624454 m!1951843))

(assert (=> b!1624454 m!1951839))

(declare-fun m!1951845 () Bool)

(assert (=> b!1624454 m!1951845))

(declare-fun m!1951847 () Bool)

(assert (=> b!1624454 m!1951847))

(assert (=> b!1624454 m!1951743))

(declare-fun m!1951849 () Bool)

(assert (=> b!1624454 m!1951849))

(assert (=> b!1624454 m!1951837))

(assert (=> b!1624454 m!1951847))

(declare-fun m!1951851 () Bool)

(assert (=> b!1624454 m!1951851))

(assert (=> b!1624454 m!1951849))

(declare-fun m!1951853 () Bool)

(assert (=> b!1624454 m!1951853))

(assert (=> b!1624006 d!489152))

(declare-fun d!489160 () Bool)

(declare-fun c!264436 () Bool)

(assert (=> d!489160 (= c!264436 ((_ is Cons!17803) (Cons!17803 (h!23204 tokens!457) Nil!17803)))))

(declare-fun e!1041875 () List!17872)

(assert (=> d!489160 (= (printList!879 thiss!17113 (Cons!17803 (h!23204 tokens!457) Nil!17803)) e!1041875)))

(declare-fun b!1624459 () Bool)

(assert (=> b!1624459 (= e!1041875 (++!4727 (list!6983 (charsOf!1784 (h!23204 (Cons!17803 (h!23204 tokens!457) Nil!17803)))) (printList!879 thiss!17113 (t!148922 (Cons!17803 (h!23204 tokens!457) Nil!17803)))))))

(declare-fun b!1624460 () Bool)

(assert (=> b!1624460 (= e!1041875 Nil!17802)))

(assert (= (and d!489160 c!264436) b!1624459))

(assert (= (and d!489160 (not c!264436)) b!1624460))

(declare-fun m!1951855 () Bool)

(assert (=> b!1624459 m!1951855))

(assert (=> b!1624459 m!1951855))

(declare-fun m!1951857 () Bool)

(assert (=> b!1624459 m!1951857))

(declare-fun m!1951859 () Bool)

(assert (=> b!1624459 m!1951859))

(assert (=> b!1624459 m!1951857))

(assert (=> b!1624459 m!1951859))

(declare-fun m!1951861 () Bool)

(assert (=> b!1624459 m!1951861))

(assert (=> b!1624006 d!489160))

(declare-fun d!489162 () Bool)

(declare-fun e!1041878 () Bool)

(assert (=> d!489162 e!1041878))

(declare-fun res!726048 () Bool)

(assert (=> d!489162 (=> (not res!726048) (not e!1041878))))

(declare-fun lt!586287 () BalanceConc!11782)

(assert (=> d!489162 (= res!726048 (= (list!6984 lt!586287) (Cons!17803 (h!23204 tokens!457) Nil!17803)))))

(declare-fun singleton!666 (Token!5836) BalanceConc!11782)

(assert (=> d!489162 (= lt!586287 (singleton!666 (h!23204 tokens!457)))))

(assert (=> d!489162 (= (singletonSeq!1549 (h!23204 tokens!457)) lt!586287)))

(declare-fun b!1624463 () Bool)

(assert (=> b!1624463 (= e!1041878 (isBalanced!1786 (c!264359 lt!586287)))))

(assert (= (and d!489162 res!726048) b!1624463))

(declare-fun m!1951863 () Bool)

(assert (=> d!489162 m!1951863))

(declare-fun m!1951865 () Bool)

(assert (=> d!489162 m!1951865))

(declare-fun m!1951867 () Bool)

(assert (=> b!1624463 m!1951867))

(assert (=> b!1624006 d!489162))

(declare-fun d!489164 () Bool)

(assert (=> d!489164 (= (list!6984 (_1!10084 lt!585894)) (list!6987 (c!264359 (_1!10084 lt!585894))))))

(declare-fun bs!394718 () Bool)

(assert (= bs!394718 d!489164))

(declare-fun m!1951869 () Bool)

(assert (=> bs!394718 m!1951869))

(assert (=> b!1624004 d!489164))

(declare-fun d!489166 () Bool)

(declare-fun e!1041907 () Bool)

(assert (=> d!489166 e!1041907))

(declare-fun res!726075 () Bool)

(assert (=> d!489166 (=> (not res!726075) (not e!1041907))))

(assert (=> d!489166 (= res!726075 (= (list!6984 (_1!10084 (lex!1248 thiss!17113 rules!1846 (print!1295 thiss!17113 (seqFromList!2019 (t!148922 tokens!457)))))) (t!148922 tokens!457)))))

(declare-fun lt!586427 () Unit!28817)

(declare-fun e!1041908 () Unit!28817)

(assert (=> d!489166 (= lt!586427 e!1041908)))

(declare-fun c!264445 () Bool)

(assert (=> d!489166 (= c!264445 (or ((_ is Nil!17803) (t!148922 tokens!457)) ((_ is Nil!17803) (t!148922 (t!148922 tokens!457)))))))

(assert (=> d!489166 (not (isEmpty!10832 rules!1846))))

(assert (=> d!489166 (= (theoremInvertabilityWhenTokenListSeparable!209 thiss!17113 rules!1846 (t!148922 tokens!457)) lt!586427)))

(declare-fun b!1624506 () Bool)

(declare-fun Unit!28840 () Unit!28817)

(assert (=> b!1624506 (= e!1041908 Unit!28840)))

(declare-fun b!1624507 () Bool)

(declare-fun Unit!28841 () Unit!28817)

(assert (=> b!1624507 (= e!1041908 Unit!28841)))

(declare-fun lt!586432 () BalanceConc!11780)

(assert (=> b!1624507 (= lt!586432 (print!1295 thiss!17113 (seqFromList!2019 (t!148922 tokens!457))))))

(declare-fun lt!586422 () BalanceConc!11780)

(assert (=> b!1624507 (= lt!586422 (print!1295 thiss!17113 (seqFromList!2019 (t!148922 (t!148922 tokens!457)))))))

(declare-fun lt!586437 () tuple2!17364)

(assert (=> b!1624507 (= lt!586437 (lex!1248 thiss!17113 rules!1846 lt!586422))))

(declare-fun lt!586443 () List!17872)

(assert (=> b!1624507 (= lt!586443 (list!6983 (charsOf!1784 (h!23204 (t!148922 tokens!457)))))))

(declare-fun lt!586442 () List!17872)

(assert (=> b!1624507 (= lt!586442 (list!6983 lt!586422))))

(declare-fun lt!586435 () Unit!28817)

(assert (=> b!1624507 (= lt!586435 (lemmaConcatTwoListThenFirstIsPrefix!920 lt!586443 lt!586442))))

(assert (=> b!1624507 (isPrefix!1395 lt!586443 (++!4727 lt!586443 lt!586442))))

(declare-fun lt!586429 () Unit!28817)

(assert (=> b!1624507 (= lt!586429 lt!586435)))

(declare-fun lt!586418 () Unit!28817)

(assert (=> b!1624507 (= lt!586418 (theoremInvertabilityWhenTokenListSeparable!209 thiss!17113 rules!1846 (t!148922 (t!148922 tokens!457))))))

(declare-fun lt!586419 () Unit!28817)

(assert (=> b!1624507 (= lt!586419 (seqFromListBHdTlConstructive!212 (h!23204 (t!148922 (t!148922 tokens!457))) (t!148922 (t!148922 (t!148922 tokens!457))) (_1!10084 lt!586437)))))

(assert (=> b!1624507 (= (list!6984 (_1!10084 lt!586437)) (list!6984 (prepend!659 (seqFromList!2019 (t!148922 (t!148922 (t!148922 tokens!457)))) (h!23204 (t!148922 (t!148922 tokens!457))))))))

(declare-fun lt!586420 () Unit!28817)

(assert (=> b!1624507 (= lt!586420 lt!586419)))

(declare-fun lt!586439 () Option!3291)

(assert (=> b!1624507 (= lt!586439 (maxPrefix!1328 thiss!17113 rules!1846 (list!6983 lt!586432)))))

(assert (=> b!1624507 (= (print!1295 thiss!17113 (singletonSeq!1549 (h!23204 (t!148922 tokens!457)))) (printTailRec!817 thiss!17113 (singletonSeq!1549 (h!23204 (t!148922 tokens!457))) 0 (BalanceConc!11781 Empty!5918)))))

(declare-fun lt!586440 () Unit!28817)

(declare-fun Unit!28842 () Unit!28817)

(assert (=> b!1624507 (= lt!586440 Unit!28842)))

(declare-fun lt!586421 () Unit!28817)

(assert (=> b!1624507 (= lt!586421 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!338 thiss!17113 rules!1846 (list!6983 (charsOf!1784 (h!23204 (t!148922 tokens!457)))) (list!6983 lt!586422)))))

(assert (=> b!1624507 (= (list!6983 (charsOf!1784 (h!23204 (t!148922 tokens!457)))) (originalCharacters!3949 (h!23204 (t!148922 tokens!457))))))

(declare-fun lt!586423 () Unit!28817)

(declare-fun Unit!28843 () Unit!28817)

(assert (=> b!1624507 (= lt!586423 Unit!28843)))

(assert (=> b!1624507 (= (list!6983 (singletonSeq!1548 (apply!4538 (charsOf!1784 (h!23204 (t!148922 (t!148922 tokens!457)))) 0))) (Cons!17802 (head!3420 (originalCharacters!3949 (h!23204 (t!148922 (t!148922 tokens!457))))) Nil!17802))))

(declare-fun lt!586431 () Unit!28817)

(declare-fun Unit!28844 () Unit!28817)

(assert (=> b!1624507 (= lt!586431 Unit!28844)))

(assert (=> b!1624507 (= (list!6983 (singletonSeq!1548 (apply!4538 (charsOf!1784 (h!23204 (t!148922 (t!148922 tokens!457)))) 0))) (Cons!17802 (head!3420 (list!6983 lt!586422)) Nil!17802))))

(declare-fun lt!586441 () Unit!28817)

(declare-fun Unit!28845 () Unit!28817)

(assert (=> b!1624507 (= lt!586441 Unit!28845)))

(assert (=> b!1624507 (= (list!6983 (singletonSeq!1548 (apply!4538 (charsOf!1784 (h!23204 (t!148922 (t!148922 tokens!457)))) 0))) (Cons!17802 (head!3421 lt!586422) Nil!17802))))

(declare-fun lt!586434 () Unit!28817)

(declare-fun Unit!28846 () Unit!28817)

(assert (=> b!1624507 (= lt!586434 Unit!28846)))

(assert (=> b!1624507 (isDefined!2658 (maxPrefix!1328 thiss!17113 rules!1846 (originalCharacters!3949 (h!23204 (t!148922 tokens!457)))))))

(declare-fun lt!586430 () Unit!28817)

(declare-fun Unit!28847 () Unit!28817)

(assert (=> b!1624507 (= lt!586430 Unit!28847)))

(assert (=> b!1624507 (isDefined!2658 (maxPrefix!1328 thiss!17113 rules!1846 (list!6983 (charsOf!1784 (h!23204 (t!148922 tokens!457))))))))

(declare-fun lt!586438 () Unit!28817)

(declare-fun Unit!28848 () Unit!28817)

(assert (=> b!1624507 (= lt!586438 Unit!28848)))

(declare-fun lt!586433 () Unit!28817)

(declare-fun Unit!28849 () Unit!28817)

(assert (=> b!1624507 (= lt!586433 Unit!28849)))

(assert (=> b!1624507 (= (_1!10083 (get!5127 (maxPrefix!1328 thiss!17113 rules!1846 (list!6983 (charsOf!1784 (h!23204 (t!148922 tokens!457))))))) (h!23204 (t!148922 tokens!457)))))

(declare-fun lt!586424 () Unit!28817)

(declare-fun Unit!28850 () Unit!28817)

(assert (=> b!1624507 (= lt!586424 Unit!28850)))

(assert (=> b!1624507 (isEmpty!10833 (_2!10083 (get!5127 (maxPrefix!1328 thiss!17113 rules!1846 (list!6983 (charsOf!1784 (h!23204 (t!148922 tokens!457))))))))))

(declare-fun lt!586436 () Unit!28817)

(declare-fun Unit!28851 () Unit!28817)

(assert (=> b!1624507 (= lt!586436 Unit!28851)))

(assert (=> b!1624507 (matchR!1962 (regex!3135 (rule!4961 (h!23204 (t!148922 tokens!457)))) (list!6983 (charsOf!1784 (h!23204 (t!148922 tokens!457)))))))

(declare-fun lt!586425 () Unit!28817)

(declare-fun Unit!28852 () Unit!28817)

(assert (=> b!1624507 (= lt!586425 Unit!28852)))

(assert (=> b!1624507 (= (rule!4961 (h!23204 (t!148922 tokens!457))) (rule!4961 (h!23204 (t!148922 tokens!457))))))

(declare-fun lt!586428 () Unit!28817)

(declare-fun Unit!28853 () Unit!28817)

(assert (=> b!1624507 (= lt!586428 Unit!28853)))

(declare-fun lt!586426 () Unit!28817)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!108 (LexerInterface!2764 List!17874 Token!5836 Rule!6070 List!17872) Unit!28817)

(assert (=> b!1624507 (= lt!586426 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!108 thiss!17113 rules!1846 (h!23204 (t!148922 tokens!457)) (rule!4961 (h!23204 (t!148922 tokens!457))) (list!6983 lt!586422)))))

(declare-fun b!1624508 () Bool)

(assert (=> b!1624508 (= e!1041907 (isEmpty!10840 (_2!10084 (lex!1248 thiss!17113 rules!1846 (print!1295 thiss!17113 (seqFromList!2019 (t!148922 tokens!457)))))))))

(assert (= (and d!489166 c!264445) b!1624506))

(assert (= (and d!489166 (not c!264445)) b!1624507))

(assert (= (and d!489166 res!726075) b!1624508))

(assert (=> d!489166 m!1951001))

(assert (=> d!489166 m!1951001))

(declare-fun m!1951957 () Bool)

(assert (=> d!489166 m!1951957))

(assert (=> d!489166 m!1951957))

(declare-fun m!1951959 () Bool)

(assert (=> d!489166 m!1951959))

(declare-fun m!1951961 () Bool)

(assert (=> d!489166 m!1951961))

(assert (=> d!489166 m!1950983))

(declare-fun m!1951963 () Bool)

(assert (=> b!1624507 m!1951963))

(declare-fun m!1951965 () Bool)

(assert (=> b!1624507 m!1951965))

(declare-fun m!1951967 () Bool)

(assert (=> b!1624507 m!1951967))

(assert (=> b!1624507 m!1951271))

(declare-fun m!1951969 () Bool)

(assert (=> b!1624507 m!1951969))

(declare-fun m!1951971 () Bool)

(assert (=> b!1624507 m!1951971))

(declare-fun m!1951973 () Bool)

(assert (=> b!1624507 m!1951973))

(declare-fun m!1951975 () Bool)

(assert (=> b!1624507 m!1951975))

(assert (=> b!1624507 m!1951001))

(assert (=> b!1624507 m!1951957))

(declare-fun m!1951977 () Bool)

(assert (=> b!1624507 m!1951977))

(declare-fun m!1951979 () Bool)

(assert (=> b!1624507 m!1951979))

(assert (=> b!1624507 m!1951021))

(declare-fun m!1951981 () Bool)

(assert (=> b!1624507 m!1951981))

(declare-fun m!1951983 () Bool)

(assert (=> b!1624507 m!1951983))

(assert (=> b!1624507 m!1951977))

(assert (=> b!1624507 m!1951969))

(declare-fun m!1951985 () Bool)

(assert (=> b!1624507 m!1951985))

(assert (=> b!1624507 m!1951271))

(declare-fun m!1951987 () Bool)

(assert (=> b!1624507 m!1951987))

(declare-fun m!1951989 () Bool)

(assert (=> b!1624507 m!1951989))

(assert (=> b!1624507 m!1951987))

(declare-fun m!1951991 () Bool)

(assert (=> b!1624507 m!1951991))

(assert (=> b!1624507 m!1951271))

(declare-fun m!1951993 () Bool)

(assert (=> b!1624507 m!1951993))

(declare-fun m!1951995 () Bool)

(assert (=> b!1624507 m!1951995))

(assert (=> b!1624507 m!1951977))

(declare-fun m!1951997 () Bool)

(assert (=> b!1624507 m!1951997))

(assert (=> b!1624507 m!1950937))

(assert (=> b!1624507 m!1951271))

(declare-fun m!1951999 () Bool)

(assert (=> b!1624507 m!1951999))

(declare-fun m!1952001 () Bool)

(assert (=> b!1624507 m!1952001))

(assert (=> b!1624507 m!1951021))

(declare-fun m!1952003 () Bool)

(assert (=> b!1624507 m!1952003))

(declare-fun m!1952005 () Bool)

(assert (=> b!1624507 m!1952005))

(assert (=> b!1624507 m!1951999))

(declare-fun m!1952007 () Bool)

(assert (=> b!1624507 m!1952007))

(declare-fun m!1952009 () Bool)

(assert (=> b!1624507 m!1952009))

(assert (=> b!1624507 m!1951967))

(assert (=> b!1624507 m!1951963))

(assert (=> b!1624507 m!1951983))

(declare-fun m!1952011 () Bool)

(assert (=> b!1624507 m!1952011))

(assert (=> b!1624507 m!1951987))

(declare-fun m!1952013 () Bool)

(assert (=> b!1624507 m!1952013))

(declare-fun m!1952015 () Bool)

(assert (=> b!1624507 m!1952015))

(declare-fun m!1952017 () Bool)

(assert (=> b!1624507 m!1952017))

(assert (=> b!1624507 m!1950937))

(assert (=> b!1624507 m!1951001))

(assert (=> b!1624507 m!1951981))

(declare-fun m!1952019 () Bool)

(assert (=> b!1624507 m!1952019))

(assert (=> b!1624507 m!1952011))

(declare-fun m!1952021 () Bool)

(assert (=> b!1624507 m!1952021))

(assert (=> b!1624507 m!1951969))

(declare-fun m!1952023 () Bool)

(assert (=> b!1624507 m!1952023))

(assert (=> b!1624507 m!1952007))

(declare-fun m!1952025 () Bool)

(assert (=> b!1624507 m!1952025))

(assert (=> b!1624507 m!1952009))

(declare-fun m!1952027 () Bool)

(assert (=> b!1624507 m!1952027))

(assert (=> b!1624507 m!1951969))

(assert (=> b!1624508 m!1951001))

(assert (=> b!1624508 m!1951001))

(assert (=> b!1624508 m!1951957))

(assert (=> b!1624508 m!1951957))

(assert (=> b!1624508 m!1951959))

(declare-fun m!1952029 () Bool)

(assert (=> b!1624508 m!1952029))

(assert (=> b!1624004 d!489166))

(declare-fun d!489182 () Bool)

(declare-fun e!1041915 () Bool)

(assert (=> d!489182 e!1041915))

(declare-fun res!726087 () Bool)

(assert (=> d!489182 (=> res!726087 e!1041915)))

(declare-fun lt!586446 () Bool)

(assert (=> d!489182 (= res!726087 (not lt!586446))))

(declare-fun e!1041917 () Bool)

(assert (=> d!489182 (= lt!586446 e!1041917)))

(declare-fun res!726085 () Bool)

(assert (=> d!489182 (=> res!726085 e!1041917)))

(assert (=> d!489182 (= res!726085 ((_ is Nil!17802) lt!585915))))

(assert (=> d!489182 (= (isPrefix!1395 lt!585915 lt!585910) lt!586446)))

(declare-fun b!1624518 () Bool)

(declare-fun res!726086 () Bool)

(declare-fun e!1041916 () Bool)

(assert (=> b!1624518 (=> (not res!726086) (not e!1041916))))

(assert (=> b!1624518 (= res!726086 (= (head!3420 lt!585915) (head!3420 lt!585910)))))

(declare-fun b!1624519 () Bool)

(assert (=> b!1624519 (= e!1041916 (isPrefix!1395 (tail!2358 lt!585915) (tail!2358 lt!585910)))))

(declare-fun b!1624517 () Bool)

(assert (=> b!1624517 (= e!1041917 e!1041916)))

(declare-fun res!726084 () Bool)

(assert (=> b!1624517 (=> (not res!726084) (not e!1041916))))

(assert (=> b!1624517 (= res!726084 (not ((_ is Nil!17802) lt!585910)))))

(declare-fun b!1624520 () Bool)

(assert (=> b!1624520 (= e!1041915 (>= (size!14262 lt!585910) (size!14262 lt!585915)))))

(assert (= (and d!489182 (not res!726085)) b!1624517))

(assert (= (and b!1624517 res!726084) b!1624518))

(assert (= (and b!1624518 res!726086) b!1624519))

(assert (= (and d!489182 (not res!726087)) b!1624520))

(declare-fun m!1952031 () Bool)

(assert (=> b!1624518 m!1952031))

(declare-fun m!1952033 () Bool)

(assert (=> b!1624518 m!1952033))

(declare-fun m!1952035 () Bool)

(assert (=> b!1624519 m!1952035))

(declare-fun m!1952037 () Bool)

(assert (=> b!1624519 m!1952037))

(assert (=> b!1624519 m!1952035))

(assert (=> b!1624519 m!1952037))

(declare-fun m!1952039 () Bool)

(assert (=> b!1624519 m!1952039))

(declare-fun m!1952041 () Bool)

(assert (=> b!1624520 m!1952041))

(assert (=> b!1624520 m!1951107))

(assert (=> b!1624004 d!489182))

(declare-fun d!489184 () Bool)

(assert (=> d!489184 (isPrefix!1395 lt!585915 (++!4727 lt!585915 lt!585904))))

(declare-fun lt!586451 () Unit!28817)

(declare-fun choose!9772 (List!17872 List!17872) Unit!28817)

(assert (=> d!489184 (= lt!586451 (choose!9772 lt!585915 lt!585904))))

(assert (=> d!489184 (= (lemmaConcatTwoListThenFirstIsPrefix!920 lt!585915 lt!585904) lt!586451)))

(declare-fun bs!394723 () Bool)

(assert (= bs!394723 d!489184))

(assert (=> bs!394723 m!1950987))

(assert (=> bs!394723 m!1950987))

(declare-fun m!1952043 () Bool)

(assert (=> bs!394723 m!1952043))

(declare-fun m!1952045 () Bool)

(assert (=> bs!394723 m!1952045))

(assert (=> b!1624004 d!489184))

(declare-fun d!489186 () Bool)

(declare-fun res!726132 () Bool)

(declare-fun e!1042005 () Bool)

(assert (=> d!489186 (=> res!726132 e!1042005)))

(assert (=> d!489186 (= res!726132 (or (not ((_ is Cons!17803) tokens!457)) (not ((_ is Cons!17803) (t!148922 tokens!457)))))))

(assert (=> d!489186 (= (tokensListTwoByTwoPredicateSeparableList!457 thiss!17113 tokens!457 rules!1846) e!1042005)))

(declare-fun b!1624653 () Bool)

(declare-fun e!1042006 () Bool)

(assert (=> b!1624653 (= e!1042005 e!1042006)))

(declare-fun res!726131 () Bool)

(assert (=> b!1624653 (=> (not res!726131) (not e!1042006))))

(assert (=> b!1624653 (= res!726131 (separableTokensPredicate!706 thiss!17113 (h!23204 tokens!457) (h!23204 (t!148922 tokens!457)) rules!1846))))

(declare-fun lt!586508 () Unit!28817)

(declare-fun Unit!28854 () Unit!28817)

(assert (=> b!1624653 (= lt!586508 Unit!28854)))

(assert (=> b!1624653 (> (size!14260 (charsOf!1784 (h!23204 (t!148922 tokens!457)))) 0)))

(declare-fun lt!586506 () Unit!28817)

(declare-fun Unit!28855 () Unit!28817)

(assert (=> b!1624653 (= lt!586506 Unit!28855)))

(assert (=> b!1624653 (rulesProduceIndividualToken!1416 thiss!17113 rules!1846 (h!23204 (t!148922 tokens!457)))))

(declare-fun lt!586507 () Unit!28817)

(declare-fun Unit!28856 () Unit!28817)

(assert (=> b!1624653 (= lt!586507 Unit!28856)))

(assert (=> b!1624653 (rulesProduceIndividualToken!1416 thiss!17113 rules!1846 (h!23204 tokens!457))))

(declare-fun lt!586510 () Unit!28817)

(declare-fun lt!586505 () Unit!28817)

(assert (=> b!1624653 (= lt!586510 lt!586505)))

(assert (=> b!1624653 (rulesProduceIndividualToken!1416 thiss!17113 rules!1846 (h!23204 (t!148922 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!563 (LexerInterface!2764 List!17874 List!17873 Token!5836) Unit!28817)

(assert (=> b!1624653 (= lt!586505 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!563 thiss!17113 rules!1846 tokens!457 (h!23204 (t!148922 tokens!457))))))

(declare-fun lt!586511 () Unit!28817)

(declare-fun lt!586509 () Unit!28817)

(assert (=> b!1624653 (= lt!586511 lt!586509)))

(assert (=> b!1624653 (rulesProduceIndividualToken!1416 thiss!17113 rules!1846 (h!23204 tokens!457))))

(assert (=> b!1624653 (= lt!586509 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!563 thiss!17113 rules!1846 tokens!457 (h!23204 tokens!457)))))

(declare-fun b!1624654 () Bool)

(assert (=> b!1624654 (= e!1042006 (tokensListTwoByTwoPredicateSeparableList!457 thiss!17113 (Cons!17803 (h!23204 (t!148922 tokens!457)) (t!148922 (t!148922 tokens!457))) rules!1846))))

(assert (= (and d!489186 (not res!726132)) b!1624653))

(assert (= (and b!1624653 res!726131) b!1624654))

(declare-fun m!1952261 () Bool)

(assert (=> b!1624653 m!1952261))

(declare-fun m!1952263 () Bool)

(assert (=> b!1624653 m!1952263))

(declare-fun m!1952265 () Bool)

(assert (=> b!1624653 m!1952265))

(assert (=> b!1624653 m!1950937))

(assert (=> b!1624653 m!1951277))

(assert (=> b!1624653 m!1950937))

(assert (=> b!1624653 m!1950915))

(assert (=> b!1624653 m!1951035))

(declare-fun m!1952267 () Bool)

(assert (=> b!1624654 m!1952267))

(assert (=> b!1624003 d!489186))

(declare-fun d!489236 () Bool)

(assert (=> d!489236 (= (isEmpty!10833 (_2!10083 lt!585913)) ((_ is Nil!17802) (_2!10083 lt!585913)))))

(assert (=> b!1624002 d!489236))

(declare-fun d!489238 () Bool)

(declare-fun isEmpty!10843 (Option!3292) Bool)

(assert (=> d!489238 (= (isDefined!2659 (maxPrefixZipperSequence!659 thiss!17113 rules!1846 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457))))) (not (isEmpty!10843 (maxPrefixZipperSequence!659 thiss!17113 rules!1846 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))))

(declare-fun bs!394735 () Bool)

(assert (= bs!394735 d!489238))

(assert (=> bs!394735 m!1950941))

(declare-fun m!1952269 () Bool)

(assert (=> bs!394735 m!1952269))

(assert (=> b!1624000 d!489238))

(declare-fun e!1042021 () Bool)

(declare-fun lt!586531 () Option!3292)

(declare-fun b!1624671 () Bool)

(declare-fun get!5131 (Option!3292) tuple2!17366)

(declare-fun maxPrefixZipper!304 (LexerInterface!2764 List!17874 List!17872) Option!3291)

(assert (=> b!1624671 (= e!1042021 (= (list!6983 (_2!10085 (get!5131 lt!586531))) (_2!10083 (get!5127 (maxPrefixZipper!304 thiss!17113 rules!1846 (list!6983 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))))))

(declare-fun d!489240 () Bool)

(declare-fun e!1042019 () Bool)

(assert (=> d!489240 e!1042019))

(declare-fun res!726145 () Bool)

(assert (=> d!489240 (=> (not res!726145) (not e!1042019))))

(assert (=> d!489240 (= res!726145 (= (isDefined!2659 lt!586531) (isDefined!2658 (maxPrefixZipper!304 thiss!17113 rules!1846 (list!6983 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457))))))))))

(declare-fun e!1042023 () Option!3292)

(assert (=> d!489240 (= lt!586531 e!1042023)))

(declare-fun c!264468 () Bool)

(assert (=> d!489240 (= c!264468 (and ((_ is Cons!17804) rules!1846) ((_ is Nil!17804) (t!148923 rules!1846))))))

(declare-fun lt!586529 () Unit!28817)

(declare-fun lt!586527 () Unit!28817)

(assert (=> d!489240 (= lt!586529 lt!586527)))

(declare-fun lt!586526 () List!17872)

(declare-fun lt!586528 () List!17872)

(assert (=> d!489240 (isPrefix!1395 lt!586526 lt!586528)))

(assert (=> d!489240 (= lt!586527 (lemmaIsPrefixRefl!958 lt!586526 lt!586528))))

(assert (=> d!489240 (= lt!586528 (list!6983 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))

(assert (=> d!489240 (= lt!586526 (list!6983 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))

(assert (=> d!489240 (rulesValidInductive!970 thiss!17113 rules!1846)))

(assert (=> d!489240 (= (maxPrefixZipperSequence!659 thiss!17113 rules!1846 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))) lt!586531)))

(declare-fun b!1624672 () Bool)

(declare-fun res!726150 () Bool)

(assert (=> b!1624672 (=> (not res!726150) (not e!1042019))))

(declare-fun e!1042024 () Bool)

(assert (=> b!1624672 (= res!726150 e!1042024)))

(declare-fun res!726149 () Bool)

(assert (=> b!1624672 (=> res!726149 e!1042024)))

(assert (=> b!1624672 (= res!726149 (not (isDefined!2659 lt!586531)))))

(declare-fun b!1624673 () Bool)

(declare-fun e!1042022 () Bool)

(assert (=> b!1624673 (= e!1042019 e!1042022)))

(declare-fun res!726146 () Bool)

(assert (=> b!1624673 (=> res!726146 e!1042022)))

(assert (=> b!1624673 (= res!726146 (not (isDefined!2659 lt!586531)))))

(declare-fun b!1624674 () Bool)

(declare-fun call!105229 () Option!3292)

(assert (=> b!1624674 (= e!1042023 call!105229)))

(declare-fun b!1624675 () Bool)

(declare-fun lt!586532 () Option!3292)

(declare-fun lt!586530 () Option!3292)

(assert (=> b!1624675 (= e!1042023 (ite (and ((_ is None!3291) lt!586532) ((_ is None!3291) lt!586530)) None!3291 (ite ((_ is None!3291) lt!586530) lt!586532 (ite ((_ is None!3291) lt!586532) lt!586530 (ite (>= (size!14256 (_1!10085 (v!24320 lt!586532))) (size!14256 (_1!10085 (v!24320 lt!586530)))) lt!586532 lt!586530)))))))

(assert (=> b!1624675 (= lt!586532 call!105229)))

(assert (=> b!1624675 (= lt!586530 (maxPrefixZipperSequence!659 thiss!17113 (t!148923 rules!1846) (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))

(declare-fun b!1624676 () Bool)

(assert (=> b!1624676 (= e!1042024 e!1042021)))

(declare-fun res!726147 () Bool)

(assert (=> b!1624676 (=> (not res!726147) (not e!1042021))))

(assert (=> b!1624676 (= res!726147 (= (_1!10085 (get!5131 lt!586531)) (_1!10083 (get!5127 (maxPrefixZipper!304 thiss!17113 rules!1846 (list!6983 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))))))

(declare-fun b!1624677 () Bool)

(declare-fun e!1042020 () Bool)

(assert (=> b!1624677 (= e!1042020 (= (list!6983 (_2!10085 (get!5131 lt!586531))) (_2!10083 (get!5127 (maxPrefix!1328 thiss!17113 rules!1846 (list!6983 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))))))

(declare-fun bm!105224 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!314 (LexerInterface!2764 Rule!6070 BalanceConc!11780) Option!3292)

(assert (=> bm!105224 (= call!105229 (maxPrefixOneRuleZipperSequence!314 thiss!17113 (h!23205 rules!1846) (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))

(declare-fun b!1624678 () Bool)

(assert (=> b!1624678 (= e!1042022 e!1042020)))

(declare-fun res!726148 () Bool)

(assert (=> b!1624678 (=> (not res!726148) (not e!1042020))))

(assert (=> b!1624678 (= res!726148 (= (_1!10085 (get!5131 lt!586531)) (_1!10083 (get!5127 (maxPrefix!1328 thiss!17113 rules!1846 (list!6983 (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457)))))))))))

(assert (= (and d!489240 c!264468) b!1624674))

(assert (= (and d!489240 (not c!264468)) b!1624675))

(assert (= (or b!1624674 b!1624675) bm!105224))

(assert (= (and d!489240 res!726145) b!1624672))

(assert (= (and b!1624672 (not res!726149)) b!1624676))

(assert (= (and b!1624676 res!726147) b!1624671))

(assert (= (and b!1624672 res!726150) b!1624673))

(assert (= (and b!1624673 (not res!726146)) b!1624678))

(assert (= (and b!1624678 res!726148) b!1624677))

(assert (=> d!489240 m!1950939))

(declare-fun m!1952271 () Bool)

(assert (=> d!489240 m!1952271))

(declare-fun m!1952273 () Bool)

(assert (=> d!489240 m!1952273))

(assert (=> d!489240 m!1952271))

(declare-fun m!1952275 () Bool)

(assert (=> d!489240 m!1952275))

(assert (=> d!489240 m!1952275))

(declare-fun m!1952277 () Bool)

(assert (=> d!489240 m!1952277))

(declare-fun m!1952279 () Bool)

(assert (=> d!489240 m!1952279))

(declare-fun m!1952281 () Bool)

(assert (=> d!489240 m!1952281))

(assert (=> d!489240 m!1951679))

(declare-fun m!1952283 () Bool)

(assert (=> b!1624676 m!1952283))

(assert (=> b!1624676 m!1950939))

(assert (=> b!1624676 m!1952271))

(assert (=> b!1624676 m!1952271))

(assert (=> b!1624676 m!1952275))

(assert (=> b!1624676 m!1952275))

(declare-fun m!1952285 () Bool)

(assert (=> b!1624676 m!1952285))

(assert (=> bm!105224 m!1950939))

(declare-fun m!1952287 () Bool)

(assert (=> bm!105224 m!1952287))

(assert (=> b!1624671 m!1952271))

(assert (=> b!1624671 m!1952275))

(declare-fun m!1952289 () Bool)

(assert (=> b!1624671 m!1952289))

(assert (=> b!1624671 m!1952275))

(assert (=> b!1624671 m!1952285))

(assert (=> b!1624671 m!1952283))

(assert (=> b!1624671 m!1950939))

(assert (=> b!1624671 m!1952271))

(assert (=> b!1624673 m!1952273))

(assert (=> b!1624675 m!1950939))

(declare-fun m!1952291 () Bool)

(assert (=> b!1624675 m!1952291))

(assert (=> b!1624672 m!1952273))

(assert (=> b!1624678 m!1952283))

(assert (=> b!1624678 m!1950939))

(assert (=> b!1624678 m!1952271))

(assert (=> b!1624678 m!1952271))

(declare-fun m!1952293 () Bool)

(assert (=> b!1624678 m!1952293))

(assert (=> b!1624678 m!1952293))

(declare-fun m!1952295 () Bool)

(assert (=> b!1624678 m!1952295))

(assert (=> b!1624677 m!1952271))

(assert (=> b!1624677 m!1952293))

(assert (=> b!1624677 m!1952283))

(assert (=> b!1624677 m!1950939))

(assert (=> b!1624677 m!1952271))

(assert (=> b!1624677 m!1952293))

(assert (=> b!1624677 m!1952295))

(assert (=> b!1624677 m!1952289))

(assert (=> b!1624000 d!489240))

(declare-fun d!489242 () Bool)

(assert (=> d!489242 (= (seqFromList!2020 (originalCharacters!3949 (h!23204 tokens!457))) (fromListB!890 (originalCharacters!3949 (h!23204 tokens!457))))))

(declare-fun bs!394736 () Bool)

(assert (= bs!394736 d!489242))

(declare-fun m!1952297 () Bool)

(assert (=> bs!394736 m!1952297))

(assert (=> b!1624000 d!489242))

(declare-fun d!489244 () Bool)

(declare-fun lt!586535 () C!9100)

(assert (=> d!489244 (= lt!586535 (head!3420 (list!6983 lt!585895)))))

(declare-fun head!3425 (Conc!5918) C!9100)

(assert (=> d!489244 (= lt!586535 (head!3425 (c!264357 lt!585895)))))

(assert (=> d!489244 (not (isEmpty!10840 lt!585895))))

(assert (=> d!489244 (= (head!3421 lt!585895) lt!586535)))

(declare-fun bs!394737 () Bool)

(assert (= bs!394737 d!489244))

(assert (=> bs!394737 m!1950985))

(assert (=> bs!394737 m!1950985))

(declare-fun m!1952299 () Bool)

(assert (=> bs!394737 m!1952299))

(declare-fun m!1952301 () Bool)

(assert (=> bs!394737 m!1952301))

(declare-fun m!1952303 () Bool)

(assert (=> bs!394737 m!1952303))

(assert (=> b!1624000 d!489244))

(declare-fun b!1624707 () Bool)

(declare-fun res!726171 () Bool)

(declare-fun e!1042044 () Bool)

(assert (=> b!1624707 (=> res!726171 e!1042044)))

(assert (=> b!1624707 (= res!726171 (not (isEmpty!10833 (tail!2358 lt!585915))))))

(declare-fun b!1624708 () Bool)

(assert (=> b!1624708 (= e!1042044 (not (= (head!3420 lt!585915) (c!264358 (regex!3135 (rule!4961 (h!23204 tokens!457)))))))))

(declare-fun d!489246 () Bool)

(declare-fun e!1042045 () Bool)

(assert (=> d!489246 e!1042045))

(declare-fun c!264475 () Bool)

(assert (=> d!489246 (= c!264475 ((_ is EmptyExpr!4463) (regex!3135 (rule!4961 (h!23204 tokens!457)))))))

(declare-fun lt!586538 () Bool)

(declare-fun e!1042042 () Bool)

(assert (=> d!489246 (= lt!586538 e!1042042)))

(declare-fun c!264476 () Bool)

(assert (=> d!489246 (= c!264476 (isEmpty!10833 lt!585915))))

(assert (=> d!489246 (validRegex!1776 (regex!3135 (rule!4961 (h!23204 tokens!457))))))

(assert (=> d!489246 (= (matchR!1962 (regex!3135 (rule!4961 (h!23204 tokens!457))) lt!585915) lt!586538)))

(declare-fun b!1624709 () Bool)

(declare-fun e!1042040 () Bool)

(assert (=> b!1624709 (= e!1042040 e!1042044)))

(declare-fun res!726170 () Bool)

(assert (=> b!1624709 (=> res!726170 e!1042044)))

(declare-fun call!105232 () Bool)

(assert (=> b!1624709 (= res!726170 call!105232)))

(declare-fun b!1624710 () Bool)

(declare-fun e!1042041 () Bool)

(assert (=> b!1624710 (= e!1042041 e!1042040)))

(declare-fun res!726172 () Bool)

(assert (=> b!1624710 (=> (not res!726172) (not e!1042040))))

(assert (=> b!1624710 (= res!726172 (not lt!586538))))

(declare-fun b!1624711 () Bool)

(assert (=> b!1624711 (= e!1042045 (= lt!586538 call!105232))))

(declare-fun b!1624712 () Bool)

(declare-fun e!1042039 () Bool)

(assert (=> b!1624712 (= e!1042039 (= (head!3420 lt!585915) (c!264358 (regex!3135 (rule!4961 (h!23204 tokens!457))))))))

(declare-fun b!1624713 () Bool)

(declare-fun res!726174 () Bool)

(assert (=> b!1624713 (=> res!726174 e!1042041)))

(assert (=> b!1624713 (= res!726174 (not ((_ is ElementMatch!4463) (regex!3135 (rule!4961 (h!23204 tokens!457))))))))

(declare-fun e!1042043 () Bool)

(assert (=> b!1624713 (= e!1042043 e!1042041)))

(declare-fun b!1624714 () Bool)

(assert (=> b!1624714 (= e!1042042 (nullable!1315 (regex!3135 (rule!4961 (h!23204 tokens!457)))))))

(declare-fun b!1624715 () Bool)

(declare-fun res!726167 () Bool)

(assert (=> b!1624715 (=> res!726167 e!1042041)))

(assert (=> b!1624715 (= res!726167 e!1042039)))

(declare-fun res!726173 () Bool)

(assert (=> b!1624715 (=> (not res!726173) (not e!1042039))))

(assert (=> b!1624715 (= res!726173 lt!586538)))

(declare-fun b!1624716 () Bool)

(assert (=> b!1624716 (= e!1042042 (matchR!1962 (derivativeStep!1080 (regex!3135 (rule!4961 (h!23204 tokens!457))) (head!3420 lt!585915)) (tail!2358 lt!585915)))))

(declare-fun b!1624717 () Bool)

(declare-fun res!726169 () Bool)

(assert (=> b!1624717 (=> (not res!726169) (not e!1042039))))

(assert (=> b!1624717 (= res!726169 (not call!105232))))

(declare-fun b!1624718 () Bool)

(assert (=> b!1624718 (= e!1042043 (not lt!586538))))

(declare-fun b!1624719 () Bool)

(assert (=> b!1624719 (= e!1042045 e!1042043)))

(declare-fun c!264477 () Bool)

(assert (=> b!1624719 (= c!264477 ((_ is EmptyLang!4463) (regex!3135 (rule!4961 (h!23204 tokens!457)))))))

(declare-fun bm!105227 () Bool)

(assert (=> bm!105227 (= call!105232 (isEmpty!10833 lt!585915))))

(declare-fun b!1624720 () Bool)

(declare-fun res!726168 () Bool)

(assert (=> b!1624720 (=> (not res!726168) (not e!1042039))))

(assert (=> b!1624720 (= res!726168 (isEmpty!10833 (tail!2358 lt!585915)))))

(assert (= (and d!489246 c!264476) b!1624714))

(assert (= (and d!489246 (not c!264476)) b!1624716))

(assert (= (and d!489246 c!264475) b!1624711))

(assert (= (and d!489246 (not c!264475)) b!1624719))

(assert (= (and b!1624719 c!264477) b!1624718))

(assert (= (and b!1624719 (not c!264477)) b!1624713))

(assert (= (and b!1624713 (not res!726174)) b!1624715))

(assert (= (and b!1624715 res!726173) b!1624717))

(assert (= (and b!1624717 res!726169) b!1624720))

(assert (= (and b!1624720 res!726168) b!1624712))

(assert (= (and b!1624715 (not res!726167)) b!1624710))

(assert (= (and b!1624710 res!726172) b!1624709))

(assert (= (and b!1624709 (not res!726170)) b!1624707))

(assert (= (and b!1624707 (not res!726171)) b!1624708))

(assert (= (or b!1624711 b!1624709 b!1624717) bm!105227))

(declare-fun m!1952305 () Bool)

(assert (=> d!489246 m!1952305))

(declare-fun m!1952307 () Bool)

(assert (=> d!489246 m!1952307))

(assert (=> b!1624707 m!1952035))

(assert (=> b!1624707 m!1952035))

(declare-fun m!1952309 () Bool)

(assert (=> b!1624707 m!1952309))

(assert (=> bm!105227 m!1952305))

(assert (=> b!1624712 m!1952031))

(declare-fun m!1952311 () Bool)

(assert (=> b!1624714 m!1952311))

(assert (=> b!1624720 m!1952035))

(assert (=> b!1624720 m!1952035))

(assert (=> b!1624720 m!1952309))

(assert (=> b!1624716 m!1952031))

(assert (=> b!1624716 m!1952031))

(declare-fun m!1952313 () Bool)

(assert (=> b!1624716 m!1952313))

(assert (=> b!1624716 m!1952035))

(assert (=> b!1624716 m!1952313))

(assert (=> b!1624716 m!1952035))

(declare-fun m!1952315 () Bool)

(assert (=> b!1624716 m!1952315))

(assert (=> b!1624708 m!1952031))

(assert (=> b!1624001 d!489246))

(declare-fun d!489248 () Bool)

(assert (=> d!489248 (= (isEmpty!10832 rules!1846) ((_ is Nil!17804) rules!1846))))

(assert (=> b!1623999 d!489248))

(declare-fun b!1624733 () Bool)

(declare-fun e!1042048 () Bool)

(declare-fun tp!472511 () Bool)

(assert (=> b!1624733 (= e!1042048 tp!472511)))

(declare-fun b!1624734 () Bool)

(declare-fun tp!472509 () Bool)

(declare-fun tp!472507 () Bool)

(assert (=> b!1624734 (= e!1042048 (and tp!472509 tp!472507))))

(declare-fun b!1624731 () Bool)

(declare-fun tp_is_empty!7277 () Bool)

(assert (=> b!1624731 (= e!1042048 tp_is_empty!7277)))

(declare-fun b!1624732 () Bool)

(declare-fun tp!472508 () Bool)

(declare-fun tp!472510 () Bool)

(assert (=> b!1624732 (= e!1042048 (and tp!472508 tp!472510))))

(assert (=> b!1624009 (= tp!472430 e!1042048)))

(assert (= (and b!1624009 ((_ is ElementMatch!4463) (regex!3135 (rule!4961 (h!23204 tokens!457))))) b!1624731))

(assert (= (and b!1624009 ((_ is Concat!7689) (regex!3135 (rule!4961 (h!23204 tokens!457))))) b!1624732))

(assert (= (and b!1624009 ((_ is Star!4463) (regex!3135 (rule!4961 (h!23204 tokens!457))))) b!1624733))

(assert (= (and b!1624009 ((_ is Union!4463) (regex!3135 (rule!4961 (h!23204 tokens!457))))) b!1624734))

(declare-fun b!1624739 () Bool)

(declare-fun e!1042051 () Bool)

(declare-fun tp!472514 () Bool)

(assert (=> b!1624739 (= e!1042051 (and tp_is_empty!7277 tp!472514))))

(assert (=> b!1624007 (= tp!472431 e!1042051)))

(assert (= (and b!1624007 ((_ is Cons!17802) (originalCharacters!3949 (h!23204 tokens!457)))) b!1624739))

(declare-fun b!1624753 () Bool)

(declare-fun b_free!43815 () Bool)

(declare-fun b_next!44519 () Bool)

(assert (=> b!1624753 (= b_free!43815 (not b_next!44519))))

(declare-fun tp!472527 () Bool)

(declare-fun b_and!115213 () Bool)

(assert (=> b!1624753 (= tp!472527 b_and!115213)))

(declare-fun b_free!43817 () Bool)

(declare-fun b_next!44521 () Bool)

(assert (=> b!1624753 (= b_free!43817 (not b_next!44521))))

(declare-fun t!148959 () Bool)

(declare-fun tb!93295 () Bool)

(assert (=> (and b!1624753 (= (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457))))) t!148959) tb!93295))

(declare-fun result!112512 () Bool)

(assert (= result!112512 result!112470))

(assert (=> d!488996 t!148959))

(declare-fun t!148961 () Bool)

(declare-fun tb!93297 () Bool)

(assert (=> (and b!1624753 (= (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457)))))) t!148961) tb!93297))

(declare-fun result!112514 () Bool)

(assert (= result!112514 result!112476))

(assert (=> d!489028 t!148961))

(assert (=> b!1624430 t!148959))

(declare-fun b_and!115215 () Bool)

(declare-fun tp!472525 () Bool)

(assert (=> b!1624753 (= tp!472525 (and (=> t!148959 result!112512) (=> t!148961 result!112514) b_and!115215))))

(declare-fun e!1042065 () Bool)

(assert (=> b!1623984 (= tp!472438 e!1042065)))

(declare-fun e!1042069 () Bool)

(assert (=> b!1624753 (= e!1042069 (and tp!472527 tp!472525))))

(declare-fun tp!472529 () Bool)

(declare-fun e!1042066 () Bool)

(declare-fun e!1042068 () Bool)

(declare-fun b!1624751 () Bool)

(assert (=> b!1624751 (= e!1042066 (and (inv!21 (value!99020 (h!23204 (t!148922 tokens!457)))) e!1042068 tp!472529))))

(declare-fun tp!472528 () Bool)

(declare-fun b!1624750 () Bool)

(assert (=> b!1624750 (= e!1042065 (and (inv!23185 (h!23204 (t!148922 tokens!457))) e!1042066 tp!472528))))

(declare-fun tp!472526 () Bool)

(declare-fun b!1624752 () Bool)

(assert (=> b!1624752 (= e!1042068 (and tp!472526 (inv!23182 (tag!3413 (rule!4961 (h!23204 (t!148922 tokens!457))))) (inv!23186 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))) e!1042069))))

(assert (= b!1624752 b!1624753))

(assert (= b!1624751 b!1624752))

(assert (= b!1624750 b!1624751))

(assert (= (and b!1623984 ((_ is Cons!17803) (t!148922 tokens!457))) b!1624750))

(declare-fun m!1952317 () Bool)

(assert (=> b!1624751 m!1952317))

(declare-fun m!1952319 () Bool)

(assert (=> b!1624750 m!1952319))

(declare-fun m!1952321 () Bool)

(assert (=> b!1624752 m!1952321))

(declare-fun m!1952323 () Bool)

(assert (=> b!1624752 m!1952323))

(declare-fun b!1624756 () Bool)

(declare-fun e!1042070 () Bool)

(declare-fun tp!472534 () Bool)

(assert (=> b!1624756 (= e!1042070 tp!472534)))

(declare-fun b!1624757 () Bool)

(declare-fun tp!472532 () Bool)

(declare-fun tp!472530 () Bool)

(assert (=> b!1624757 (= e!1042070 (and tp!472532 tp!472530))))

(declare-fun b!1624754 () Bool)

(assert (=> b!1624754 (= e!1042070 tp_is_empty!7277)))

(declare-fun b!1624755 () Bool)

(declare-fun tp!472531 () Bool)

(declare-fun tp!472533 () Bool)

(assert (=> b!1624755 (= e!1042070 (and tp!472531 tp!472533))))

(assert (=> b!1623988 (= tp!472435 e!1042070)))

(assert (= (and b!1623988 ((_ is ElementMatch!4463) (regex!3135 (h!23205 rules!1846)))) b!1624754))

(assert (= (and b!1623988 ((_ is Concat!7689) (regex!3135 (h!23205 rules!1846)))) b!1624755))

(assert (= (and b!1623988 ((_ is Star!4463) (regex!3135 (h!23205 rules!1846)))) b!1624756))

(assert (= (and b!1623988 ((_ is Union!4463) (regex!3135 (h!23205 rules!1846)))) b!1624757))

(declare-fun b!1624768 () Bool)

(declare-fun b_free!43819 () Bool)

(declare-fun b_next!44523 () Bool)

(assert (=> b!1624768 (= b_free!43819 (not b_next!44523))))

(declare-fun tp!472546 () Bool)

(declare-fun b_and!115217 () Bool)

(assert (=> b!1624768 (= tp!472546 b_and!115217)))

(declare-fun b_free!43821 () Bool)

(declare-fun b_next!44525 () Bool)

(assert (=> b!1624768 (= b_free!43821 (not b_next!44525))))

(declare-fun t!148963 () Bool)

(declare-fun tb!93299 () Bool)

(assert (=> (and b!1624768 (= (toChars!4421 (transformation!3135 (h!23205 (t!148923 rules!1846)))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457))))) t!148963) tb!93299))

(declare-fun result!112518 () Bool)

(assert (= result!112518 result!112470))

(assert (=> d!488996 t!148963))

(declare-fun tb!93301 () Bool)

(declare-fun t!148965 () Bool)

(assert (=> (and b!1624768 (= (toChars!4421 (transformation!3135 (h!23205 (t!148923 rules!1846)))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457)))))) t!148965) tb!93301))

(declare-fun result!112520 () Bool)

(assert (= result!112520 result!112476))

(assert (=> d!489028 t!148965))

(assert (=> b!1624430 t!148963))

(declare-fun b_and!115219 () Bool)

(declare-fun tp!472544 () Bool)

(assert (=> b!1624768 (= tp!472544 (and (=> t!148963 result!112518) (=> t!148965 result!112520) b_and!115219))))

(declare-fun e!1042081 () Bool)

(assert (=> b!1624768 (= e!1042081 (and tp!472546 tp!472544))))

(declare-fun tp!472543 () Bool)

(declare-fun b!1624767 () Bool)

(declare-fun e!1042080 () Bool)

(assert (=> b!1624767 (= e!1042080 (and tp!472543 (inv!23182 (tag!3413 (h!23205 (t!148923 rules!1846)))) (inv!23186 (transformation!3135 (h!23205 (t!148923 rules!1846)))) e!1042081))))

(declare-fun b!1624766 () Bool)

(declare-fun e!1042079 () Bool)

(declare-fun tp!472545 () Bool)

(assert (=> b!1624766 (= e!1042079 (and e!1042080 tp!472545))))

(assert (=> b!1623994 (= tp!472432 e!1042079)))

(assert (= b!1624767 b!1624768))

(assert (= b!1624766 b!1624767))

(assert (= (and b!1623994 ((_ is Cons!17804) (t!148923 rules!1846))) b!1624766))

(declare-fun m!1952325 () Bool)

(assert (=> b!1624767 m!1952325))

(declare-fun m!1952327 () Bool)

(assert (=> b!1624767 m!1952327))

(declare-fun b_lambda!51195 () Bool)

(assert (= b_lambda!51179 (or (and b!1623996 b_free!43801 (= (toChars!4421 (transformation!3135 (h!23205 rules!1846))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))))) (and b!1623985 b_free!43805 (= (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))))) (and b!1624753 b_free!43817) (and b!1624768 b_free!43821 (= (toChars!4421 (transformation!3135 (h!23205 (t!148923 rules!1846)))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))))) b_lambda!51195)))

(declare-fun b_lambda!51197 () Bool)

(assert (= b_lambda!51181 (or (and b!1623996 b_free!43801 (= (toChars!4421 (transformation!3135 (h!23205 rules!1846))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))))) (and b!1623985 b_free!43805) (and b!1624753 b_free!43817 (= (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))))) (and b!1624768 b_free!43821 (= (toChars!4421 (transformation!3135 (h!23205 (t!148923 rules!1846)))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))))) b_lambda!51197)))

(declare-fun b_lambda!51199 () Bool)

(assert (= b_lambda!51177 (or (and b!1623996 b_free!43801 (= (toChars!4421 (transformation!3135 (h!23205 rules!1846))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))))) (and b!1623985 b_free!43805) (and b!1624753 b_free!43817 (= (toChars!4421 (transformation!3135 (rule!4961 (h!23204 (t!148922 tokens!457))))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))))) (and b!1624768 b_free!43821 (= (toChars!4421 (transformation!3135 (h!23205 (t!148923 rules!1846)))) (toChars!4421 (transformation!3135 (rule!4961 (h!23204 tokens!457)))))) b_lambda!51199)))

(check-sat (not b!1624422) (not b!1624071) (not b!1624106) (not b!1624308) (not b!1624155) (not d!489150) (not b!1624082) (not b!1624712) (not d!489094) (not b!1624411) (not b!1624412) (not b!1624421) (not b!1624408) (not b!1624673) (not b!1624128) (not d!489100) (not b!1624518) (not d!489238) (not b_next!44503) (not b!1624084) b_and!115219 (not b_next!44507) (not d!489104) (not b!1624417) (not d!489092) (not b!1624707) (not b!1624280) (not tb!93275) (not b!1624672) (not bm!105215) (not b_next!44505) (not b!1624414) (not b!1624678) (not bm!105224) (not b!1624676) (not d!489244) (not b!1624677) b_and!115215 (not b!1624459) (not d!489040) (not d!489184) (not b!1624751) (not d!489024) (not d!489144) b_and!115217 (not b!1624439) (not b!1624064) (not b_next!44519) (not b!1624435) (not b!1624325) (not b!1624452) (not b!1624750) (not b!1624654) (not b!1624065) (not b!1624322) (not d!489002) (not b!1624279) (not d!489048) (not b!1624507) (not d!489124) (not b!1624413) (not b!1624708) (not b!1624733) (not d!489006) (not bm!105217) (not b!1624714) (not b!1624767) (not b!1624671) (not b_next!44521) (not b!1624424) (not tb!93271) (not b!1624115) (not b!1624315) (not b!1624756) (not d!489028) (not b!1624653) (not b!1624436) (not d!488998) (not b!1624431) (not b!1624440) (not b!1624366) (not d!489038) (not b!1624419) (not b!1624087) (not b!1624430) (not b!1624289) (not b!1624081) (not b!1624432) (not b_next!44525) (not b!1624091) (not b!1624063) (not b!1624716) (not b!1624409) b_and!115213 (not d!489110) (not b_lambda!51199) (not b!1624433) (not d!489018) b_and!115189 (not b!1624085) (not d!489036) (not b!1624307) (not b!1624418) (not b!1624406) tp_is_empty!7277 (not bm!105216) (not d!489000) (not d!489140) (not b!1624675) (not d!489162) (not b!1624438) (not d!489240) (not d!489118) (not d!489014) (not b!1624405) (not b!1624755) (not b!1624519) (not bm!105204) (not b!1624403) (not d!489134) (not b!1624062) (not d!489166) (not b!1624410) (not b_next!44523) b_and!115191 (not b!1624720) (not b!1624752) (not b!1624108) (not b!1624402) (not d!489042) (not b!1624766) (not d!489146) (not b!1624739) (not b!1624348) (not b!1624520) (not d!489034) (not b!1624086) (not d!489242) (not d!489016) (not b!1624757) (not b!1624350) (not d!489136) (not b_lambda!51195) (not d!489130) (not b!1624425) (not b!1624160) (not d!489010) (not b!1624508) (not d!489142) (not b!1624364) (not bm!105227) (not b!1624161) (not d!489008) (not d!489020) (not b!1624317) (not d!489096) (not d!488994) (not b!1624318) (not b!1624415) (not d!489012) (not b!1624404) (not b!1624314) b_and!115177 (not d!489164) (not b!1624463) (not d!489046) (not d!489246) (not d!489098) (not d!489132) (not d!489106) (not b!1624434) (not d!489112) (not b_lambda!51197) (not b!1624734) (not b!1624367) (not b!1624454) (not d!488990) (not bm!105205) (not b!1624349) (not d!488992) (not b!1624131) (not d!489152) (not b!1624347) (not b!1624107) (not b_next!44509) (not d!489004) (not d!488996) (not b!1624109) (not d!488986) (not b!1624306) (not b!1624732) b_and!115173)
(check-sat (not b_next!44503) (not b_next!44505) b_and!115215 b_and!115217 (not b_next!44519) (not b_next!44521) (not b_next!44525) b_and!115213 b_and!115189 b_and!115177 b_and!115219 (not b_next!44507) (not b_next!44523) b_and!115191 (not b_next!44509) b_and!115173)
