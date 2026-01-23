; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115474 () Bool)

(assert start!115474)

(declare-fun b!1308468 () Bool)

(declare-fun b_free!31483 () Bool)

(declare-fun b_next!32187 () Bool)

(assert (=> b!1308468 (= b_free!31483 (not b_next!32187))))

(declare-fun tp!381653 () Bool)

(declare-fun b_and!87383 () Bool)

(assert (=> b!1308468 (= tp!381653 b_and!87383)))

(declare-fun b_free!31485 () Bool)

(declare-fun b_next!32189 () Bool)

(assert (=> b!1308468 (= b_free!31485 (not b_next!32189))))

(declare-fun tp!381662 () Bool)

(declare-fun b_and!87385 () Bool)

(assert (=> b!1308468 (= tp!381662 b_and!87385)))

(declare-fun b!1308454 () Bool)

(declare-fun b_free!31487 () Bool)

(declare-fun b_next!32191 () Bool)

(assert (=> b!1308454 (= b_free!31487 (not b_next!32191))))

(declare-fun tp!381651 () Bool)

(declare-fun b_and!87387 () Bool)

(assert (=> b!1308454 (= tp!381651 b_and!87387)))

(declare-fun b_free!31489 () Bool)

(declare-fun b_next!32193 () Bool)

(assert (=> b!1308454 (= b_free!31489 (not b_next!32193))))

(declare-fun tp!381656 () Bool)

(declare-fun b_and!87389 () Bool)

(assert (=> b!1308454 (= tp!381656 b_and!87389)))

(declare-fun b!1308462 () Bool)

(declare-fun b_free!31491 () Bool)

(declare-fun b_next!32195 () Bool)

(assert (=> b!1308462 (= b_free!31491 (not b_next!32195))))

(declare-fun tp!381661 () Bool)

(declare-fun b_and!87391 () Bool)

(assert (=> b!1308462 (= tp!381661 b_and!87391)))

(declare-fun b_free!31493 () Bool)

(declare-fun b_next!32197 () Bool)

(assert (=> b!1308462 (= b_free!31493 (not b_next!32197))))

(declare-fun tp!381655 () Bool)

(declare-fun b_and!87393 () Bool)

(assert (=> b!1308462 (= tp!381655 b_and!87393)))

(declare-fun b!1308458 () Bool)

(assert (=> b!1308458 true))

(assert (=> b!1308458 true))

(declare-fun b!1308435 () Bool)

(assert (=> b!1308435 true))

(declare-fun b!1308437 () Bool)

(assert (=> b!1308437 true))

(declare-fun b!1308433 () Bool)

(declare-fun e!839111 () Bool)

(declare-fun e!839117 () Bool)

(assert (=> b!1308433 (= e!839111 e!839117)))

(declare-fun res!587123 () Bool)

(assert (=> b!1308433 (=> res!587123 e!839117)))

(declare-datatypes ((List!13316 0))(
  ( (Nil!13250) (Cons!13250 (h!18651 (_ BitVec 16)) (t!117939 List!13316)) )
))
(declare-datatypes ((TokenValue!2383 0))(
  ( (FloatLiteralValue!4766 (text!17126 List!13316)) (TokenValueExt!2382 (__x!8595 Int)) (Broken!11915 (value!74957 List!13316)) (Object!2448) (End!2383) (Def!2383) (Underscore!2383) (Match!2383) (Else!2383) (Error!2383) (Case!2383) (If!2383) (Extends!2383) (Abstract!2383) (Class!2383) (Val!2383) (DelimiterValue!4766 (del!2443 List!13316)) (KeywordValue!2389 (value!74958 List!13316)) (CommentValue!4766 (value!74959 List!13316)) (WhitespaceValue!4766 (value!74960 List!13316)) (IndentationValue!2383 (value!74961 List!13316)) (String!16150) (Int32!2383) (Broken!11916 (value!74962 List!13316)) (Boolean!2384) (Unit!19315) (OperatorValue!2386 (op!2443 List!13316)) (IdentifierValue!4766 (value!74963 List!13316)) (IdentifierValue!4767 (value!74964 List!13316)) (WhitespaceValue!4767 (value!74965 List!13316)) (True!4766) (False!4766) (Broken!11917 (value!74966 List!13316)) (Broken!11918 (value!74967 List!13316)) (True!4767) (RightBrace!2383) (RightBracket!2383) (Colon!2383) (Null!2383) (Comma!2383) (LeftBracket!2383) (False!4767) (LeftBrace!2383) (ImaginaryLiteralValue!2383 (text!17127 List!13316)) (StringLiteralValue!7149 (value!74968 List!13316)) (EOFValue!2383 (value!74969 List!13316)) (IdentValue!2383 (value!74970 List!13316)) (DelimiterValue!4767 (value!74971 List!13316)) (DedentValue!2383 (value!74972 List!13316)) (NewLineValue!2383 (value!74973 List!13316)) (IntegerValue!7149 (value!74974 (_ BitVec 32)) (text!17128 List!13316)) (IntegerValue!7150 (value!74975 Int) (text!17129 List!13316)) (Times!2383) (Or!2383) (Equal!2383) (Minus!2383) (Broken!11919 (value!74976 List!13316)) (And!2383) (Div!2383) (LessEqual!2383) (Mod!2383) (Concat!5990) (Not!2383) (Plus!2383) (SpaceValue!2383 (value!74977 List!13316)) (IntegerValue!7151 (value!74978 Int) (text!17130 List!13316)) (StringLiteralValue!7150 (text!17131 List!13316)) (FloatLiteralValue!4767 (text!17132 List!13316)) (BytesLiteralValue!2383 (value!74979 List!13316)) (CommentValue!4767 (value!74980 List!13316)) (StringLiteralValue!7151 (value!74981 List!13316)) (ErrorTokenValue!2383 (msg!2444 List!13316)) )
))
(declare-datatypes ((C!7504 0))(
  ( (C!7505 (val!4312 Int)) )
))
(declare-datatypes ((List!13317 0))(
  ( (Nil!13251) (Cons!13251 (h!18652 C!7504) (t!117940 List!13317)) )
))
(declare-datatypes ((IArray!8717 0))(
  ( (IArray!8718 (innerList!4416 List!13317)) )
))
(declare-datatypes ((String!16151 0))(
  ( (String!16152 (value!74982 String)) )
))
(declare-datatypes ((Conc!4356 0))(
  ( (Node!4356 (left!11396 Conc!4356) (right!11726 Conc!4356) (csize!8942 Int) (cheight!4567 Int)) (Leaf!6699 (xs!7071 IArray!8717) (csize!8943 Int)) (Empty!4356) )
))
(declare-datatypes ((BalanceConc!8652 0))(
  ( (BalanceConc!8653 (c!214796 Conc!4356)) )
))
(declare-datatypes ((Regex!3607 0))(
  ( (ElementMatch!3607 (c!214797 C!7504)) (Concat!5991 (regOne!7726 Regex!3607) (regTwo!7726 Regex!3607)) (EmptyExpr!3607) (Star!3607 (reg!3936 Regex!3607)) (EmptyLang!3607) (Union!3607 (regOne!7727 Regex!3607) (regTwo!7727 Regex!3607)) )
))
(declare-datatypes ((TokenValueInjection!4426 0))(
  ( (TokenValueInjection!4427 (toValue!3512 Int) (toChars!3371 Int)) )
))
(declare-datatypes ((Rule!4386 0))(
  ( (Rule!4387 (regex!2293 Regex!3607) (tag!2555 String!16151) (isSeparator!2293 Bool) (transformation!2293 TokenValueInjection!4426)) )
))
(declare-datatypes ((Token!4248 0))(
  ( (Token!4249 (value!74983 TokenValue!2383) (rule!4032 Rule!4386) (size!10766 Int) (originalCharacters!3155 List!13317)) )
))
(declare-datatypes ((List!13318 0))(
  ( (Nil!13252) (Cons!13252 (h!18653 Token!4248) (t!117941 List!13318)) )
))
(declare-datatypes ((IArray!8719 0))(
  ( (IArray!8720 (innerList!4417 List!13318)) )
))
(declare-datatypes ((Conc!4357 0))(
  ( (Node!4357 (left!11397 Conc!4357) (right!11727 Conc!4357) (csize!8944 Int) (cheight!4568 Int)) (Leaf!6700 (xs!7072 IArray!8719) (csize!8945 Int)) (Empty!4357) )
))
(declare-datatypes ((BalanceConc!8654 0))(
  ( (BalanceConc!8655 (c!214798 Conc!4357)) )
))
(declare-datatypes ((tuple2!12854 0))(
  ( (tuple2!12855 (_1!7313 BalanceConc!8654) (_2!7313 BalanceConc!8652)) )
))
(declare-fun lt!430798 () tuple2!12854)

(declare-fun lt!430799 () List!13318)

(declare-fun list!4970 (BalanceConc!8654) List!13318)

(assert (=> b!1308433 (= res!587123 (not (= (list!4970 (_1!7313 lt!430798)) lt!430799)))))

(declare-fun t1!34 () Token!4248)

(assert (=> b!1308433 (= lt!430799 (Cons!13252 t1!34 Nil!13252))))

(declare-datatypes ((LexerInterface!1988 0))(
  ( (LexerInterfaceExt!1985 (__x!8596 Int)) (Lexer!1986) )
))
(declare-fun thiss!19762 () LexerInterface!1988)

(declare-datatypes ((List!13319 0))(
  ( (Nil!13253) (Cons!13253 (h!18654 Rule!4386) (t!117942 List!13319)) )
))
(declare-fun rules!2550 () List!13319)

(declare-fun lt!430790 () BalanceConc!8652)

(declare-fun lex!823 (LexerInterface!1988 List!13319 BalanceConc!8652) tuple2!12854)

(assert (=> b!1308433 (= lt!430798 (lex!823 thiss!19762 rules!2550 lt!430790))))

(declare-fun print!762 (LexerInterface!1988 BalanceConc!8654) BalanceConc!8652)

(declare-fun singletonSeq!864 (Token!4248) BalanceConc!8654)

(assert (=> b!1308433 (= lt!430790 (print!762 thiss!19762 (singletonSeq!864 t1!34)))))

(declare-fun lt!430807 () Rule!4386)

(declare-fun lambda!52703 () Int)

(declare-fun getWitness!180 (List!13319 Int) Rule!4386)

(assert (=> b!1308433 (= lt!430807 (getWitness!180 rules!2550 lambda!52703))))

(declare-fun b!1308434 () Bool)

(declare-fun res!587110 () Bool)

(declare-fun e!839122 () Bool)

(assert (=> b!1308434 (=> res!587110 e!839122)))

(declare-fun lt!430806 () List!13318)

(declare-fun lt!430800 () BalanceConc!8652)

(declare-datatypes ((tuple2!12856 0))(
  ( (tuple2!12857 (_1!7314 List!13318) (_2!7314 List!13317)) )
))
(declare-fun lexList!526 (LexerInterface!1988 List!13319 List!13317) tuple2!12856)

(declare-fun list!4971 (BalanceConc!8652) List!13317)

(assert (=> b!1308434 (= res!587110 (not (= (lexList!526 thiss!19762 rules!2550 (list!4971 lt!430800)) (tuple2!12857 lt!430806 Nil!13251))))))

(declare-fun res!587107 () Bool)

(declare-fun e!839110 () Bool)

(assert (=> start!115474 (=> (not res!587107) (not e!839110))))

(get-info :version)

(assert (=> start!115474 (= res!587107 ((_ is Lexer!1986) thiss!19762))))

(assert (=> start!115474 e!839110))

(assert (=> start!115474 true))

(declare-fun e!839115 () Bool)

(assert (=> start!115474 e!839115))

(declare-fun e!839120 () Bool)

(declare-fun inv!17636 (Token!4248) Bool)

(assert (=> start!115474 (and (inv!17636 t1!34) e!839120)))

(declare-fun t2!34 () Token!4248)

(declare-fun e!839104 () Bool)

(assert (=> start!115474 (and (inv!17636 t2!34) e!839104)))

(declare-fun e!839107 () Bool)

(declare-fun e!839127 () Bool)

(assert (=> b!1308435 (= e!839107 e!839127)))

(declare-fun res!587117 () Bool)

(assert (=> b!1308435 (=> res!587117 e!839127)))

(declare-fun lambda!52701 () Int)

(declare-fun lambda!52702 () Int)

(declare-datatypes ((List!13320 0))(
  ( (Nil!13254) (Cons!13254 (h!18655 Regex!3607) (t!117943 List!13320)) )
))
(declare-fun exists!288 (List!13320 Int) Bool)

(declare-fun map!2906 (List!13319 Int) List!13320)

(assert (=> b!1308435 (= res!587117 (not (exists!288 (map!2906 rules!2550 lambda!52701) lambda!52702)))))

(declare-fun lt!430797 () List!13320)

(assert (=> b!1308435 (exists!288 lt!430797 lambda!52702)))

(declare-fun lt!430792 () Regex!3607)

(declare-datatypes ((Unit!19316 0))(
  ( (Unit!19317) )
))
(declare-fun lt!430808 () Unit!19316)

(declare-fun lt!430789 () List!13317)

(declare-fun matchRGenUnionSpec!44 (Regex!3607 List!13320 List!13317) Unit!19316)

(assert (=> b!1308435 (= lt!430808 (matchRGenUnionSpec!44 lt!430792 lt!430797 lt!430789))))

(assert (=> b!1308435 (= lt!430797 (map!2906 rules!2550 lambda!52701))))

(declare-fun b!1308436 () Bool)

(assert (=> b!1308436 (= e!839117 e!839122)))

(declare-fun res!587122 () Bool)

(assert (=> b!1308436 (=> res!587122 e!839122)))

(declare-fun lt!430801 () tuple2!12854)

(assert (=> b!1308436 (= res!587122 (not (= (list!4970 (_1!7313 lt!430801)) lt!430806)))))

(assert (=> b!1308436 (= lt!430806 (Cons!13252 t2!34 Nil!13252))))

(assert (=> b!1308436 (= lt!430801 (lex!823 thiss!19762 rules!2550 lt!430800))))

(assert (=> b!1308436 (= lt!430800 (print!762 thiss!19762 (singletonSeq!864 t2!34)))))

(declare-fun e!839116 () Bool)

(assert (=> b!1308437 (= e!839116 e!839111)))

(declare-fun res!587128 () Bool)

(assert (=> b!1308437 (=> res!587128 e!839111)))

(declare-fun exists!289 (List!13319 Int) Bool)

(assert (=> b!1308437 (= res!587128 (not (exists!289 rules!2550 lambda!52703)))))

(assert (=> b!1308437 (exists!289 rules!2550 lambda!52703)))

(declare-fun lt!430805 () Unit!19316)

(declare-fun lt!430802 () Regex!3607)

(declare-fun lemmaMapContains!36 (List!13319 Int Regex!3607) Unit!19316)

(assert (=> b!1308437 (= lt!430805 (lemmaMapContains!36 rules!2550 lambda!52701 lt!430802))))

(declare-fun b!1308438 () Bool)

(declare-fun rulesValidInductive!716 (LexerInterface!1988 List!13319) Bool)

(assert (=> b!1308438 (= e!839122 (rulesValidInductive!716 thiss!19762 rules!2550))))

(declare-fun lt!430793 () List!13317)

(declare-fun lt!430788 () BalanceConc!8652)

(assert (=> b!1308438 (= lt!430793 (list!4971 lt!430788))))

(declare-fun b!1308439 () Bool)

(declare-fun e!839105 () Bool)

(declare-fun tp!381659 () Bool)

(assert (=> b!1308439 (= e!839115 (and e!839105 tp!381659))))

(declare-fun e!839126 () Bool)

(declare-fun b!1308440 () Bool)

(declare-fun e!839114 () Bool)

(declare-fun tp!381657 () Bool)

(declare-fun inv!17633 (String!16151) Bool)

(declare-fun inv!17637 (TokenValueInjection!4426) Bool)

(assert (=> b!1308440 (= e!839114 (and tp!381657 (inv!17633 (tag!2555 (rule!4032 t1!34))) (inv!17637 (transformation!2293 (rule!4032 t1!34))) e!839126))))

(declare-fun b!1308441 () Bool)

(declare-fun res!587105 () Bool)

(assert (=> b!1308441 (=> res!587105 e!839107)))

(declare-fun lt!430791 () C!7504)

(declare-fun contains!2289 (List!13317 C!7504) Bool)

(assert (=> b!1308441 (= res!587105 (not (contains!2289 lt!430789 lt!430791)))))

(declare-fun tp!381652 () Bool)

(declare-fun b!1308442 () Bool)

(declare-fun inv!21 (TokenValue!2383) Bool)

(assert (=> b!1308442 (= e!839120 (and (inv!21 (value!74983 t1!34)) e!839114 tp!381652))))

(declare-fun b!1308443 () Bool)

(declare-fun res!587106 () Bool)

(assert (=> b!1308443 (=> (not res!587106) (not e!839110))))

(declare-fun isEmpty!7830 (List!13319) Bool)

(assert (=> b!1308443 (= res!587106 (not (isEmpty!7830 rules!2550)))))

(declare-fun tp!381654 () Bool)

(declare-fun b!1308444 () Bool)

(declare-fun e!839124 () Bool)

(assert (=> b!1308444 (= e!839105 (and tp!381654 (inv!17633 (tag!2555 (h!18654 rules!2550))) (inv!17637 (transformation!2293 (h!18654 rules!2550))) e!839124))))

(declare-fun b!1308445 () Bool)

(declare-fun res!587129 () Bool)

(assert (=> b!1308445 (=> (not res!587129) (not e!839110))))

(declare-fun rulesProduceIndividualToken!957 (LexerInterface!1988 List!13319 Token!4248) Bool)

(assert (=> b!1308445 (= res!587129 (rulesProduceIndividualToken!957 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1308446 () Bool)

(declare-fun res!587121 () Bool)

(assert (=> b!1308446 (=> res!587121 e!839117)))

(declare-fun isEmpty!7831 (BalanceConc!8652) Bool)

(assert (=> b!1308446 (= res!587121 (not (isEmpty!7831 (_2!7313 lt!430798))))))

(declare-fun b!1308447 () Bool)

(declare-fun res!587131 () Bool)

(assert (=> b!1308447 (=> (not res!587131) (not e!839110))))

(assert (=> b!1308447 (= res!587131 (not (= (isSeparator!2293 (rule!4032 t1!34)) (isSeparator!2293 (rule!4032 t2!34)))))))

(declare-fun b!1308448 () Bool)

(declare-fun res!587119 () Bool)

(assert (=> b!1308448 (=> res!587119 e!839117)))

(declare-fun contains!2290 (List!13319 Rule!4386) Bool)

(assert (=> b!1308448 (= res!587119 (not (contains!2290 rules!2550 (rule!4032 t1!34))))))

(declare-fun b!1308449 () Bool)

(declare-fun res!587125 () Bool)

(assert (=> b!1308449 (=> (not res!587125) (not e!839110))))

(assert (=> b!1308449 (= res!587125 (rulesProduceIndividualToken!957 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1308450 () Bool)

(declare-fun res!587112 () Bool)

(assert (=> b!1308450 (=> res!587112 e!839107)))

(declare-fun lt!430803 () List!13317)

(declare-fun lt!430804 () C!7504)

(assert (=> b!1308450 (= res!587112 (not (contains!2289 lt!430803 lt!430804)))))

(declare-fun b!1308451 () Bool)

(declare-fun e!839123 () Bool)

(declare-fun e!839118 () Bool)

(assert (=> b!1308451 (= e!839123 e!839118)))

(declare-fun res!587118 () Bool)

(assert (=> b!1308451 (=> (not res!587118) (not e!839118))))

(declare-fun prefixMatch!120 (Regex!3607 List!13317) Bool)

(assert (=> b!1308451 (= res!587118 (prefixMatch!120 lt!430792 lt!430803))))

(declare-fun rulesRegex!178 (LexerInterface!1988 List!13319) Regex!3607)

(assert (=> b!1308451 (= lt!430792 (rulesRegex!178 thiss!19762 rules!2550))))

(declare-fun lt!430796 () List!13317)

(declare-fun ++!3370 (List!13317 List!13317) List!13317)

(assert (=> b!1308451 (= lt!430803 (++!3370 lt!430796 (Cons!13251 lt!430804 Nil!13251)))))

(declare-fun apply!2973 (BalanceConc!8652 Int) C!7504)

(assert (=> b!1308451 (= lt!430804 (apply!2973 lt!430788 0))))

(declare-fun lt!430795 () BalanceConc!8652)

(assert (=> b!1308451 (= lt!430796 (list!4971 lt!430795))))

(declare-fun charsOf!1265 (Token!4248) BalanceConc!8652)

(assert (=> b!1308451 (= lt!430795 (charsOf!1265 t1!34))))

(declare-fun b!1308452 () Bool)

(declare-fun tp!381660 () Bool)

(declare-fun e!839113 () Bool)

(assert (=> b!1308452 (= e!839104 (and (inv!21 (value!74983 t2!34)) e!839113 tp!381660))))

(declare-fun b!1308453 () Bool)

(assert (=> b!1308453 (= e!839127 e!839116)))

(declare-fun res!587114 () Bool)

(assert (=> b!1308453 (=> res!587114 e!839116)))

(declare-fun contains!2291 (List!13320 Regex!3607) Bool)

(assert (=> b!1308453 (= res!587114 (not (contains!2291 (map!2906 rules!2550 lambda!52701) lt!430802)))))

(declare-fun getWitness!181 (List!13320 Int) Regex!3607)

(assert (=> b!1308453 (= lt!430802 (getWitness!181 (map!2906 rules!2550 lambda!52701) lambda!52702))))

(assert (=> b!1308454 (= e!839124 (and tp!381651 tp!381656))))

(declare-fun b!1308455 () Bool)

(declare-fun res!587126 () Bool)

(assert (=> b!1308455 (=> res!587126 e!839107)))

(declare-fun matchR!1609 (Regex!3607 List!13317) Bool)

(assert (=> b!1308455 (= res!587126 (not (matchR!1609 lt!430792 lt!430789)))))

(declare-fun b!1308456 () Bool)

(declare-fun res!587127 () Bool)

(assert (=> b!1308456 (=> res!587127 e!839117)))

(assert (=> b!1308456 (= res!587127 (not (= (lexList!526 thiss!19762 rules!2550 (list!4971 lt!430790)) (tuple2!12857 lt!430799 Nil!13251))))))

(declare-fun b!1308457 () Bool)

(declare-fun res!587116 () Bool)

(assert (=> b!1308457 (=> res!587116 e!839117)))

(declare-datatypes ((tuple2!12858 0))(
  ( (tuple2!12859 (_1!7315 Token!4248) (_2!7315 List!13317)) )
))
(declare-datatypes ((Option!2558 0))(
  ( (None!2557) (Some!2557 (v!21063 tuple2!12858)) )
))
(declare-fun maxPrefix!998 (LexerInterface!1988 List!13319 List!13317) Option!2558)

(assert (=> b!1308457 (= res!587116 (not (= (maxPrefix!998 thiss!19762 rules!2550 lt!430796) (Some!2557 (tuple2!12859 t1!34 Nil!13251)))))))

(declare-fun e!839106 () Bool)

(assert (=> b!1308458 (= e!839118 (not e!839106))))

(declare-fun res!587108 () Bool)

(assert (=> b!1308458 (=> res!587108 e!839106)))

(declare-fun lambda!52700 () Int)

(declare-fun Exists!765 (Int) Bool)

(assert (=> b!1308458 (= res!587108 (not (Exists!765 lambda!52700)))))

(assert (=> b!1308458 (Exists!765 lambda!52700)))

(declare-fun lt!430794 () Unit!19316)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!83 (Regex!3607 List!13317) Unit!19316)

(assert (=> b!1308458 (= lt!430794 (lemmaPrefixMatchThenExistsStringThatMatches!83 lt!430792 lt!430803))))

(declare-fun b!1308459 () Bool)

(declare-fun res!587115 () Bool)

(assert (=> b!1308459 (=> (not res!587115) (not e!839123))))

(declare-fun sepAndNonSepRulesDisjointChars!666 (List!13319 List!13319) Bool)

(assert (=> b!1308459 (= res!587115 (sepAndNonSepRulesDisjointChars!666 rules!2550 rules!2550))))

(declare-fun b!1308460 () Bool)

(declare-fun e!839125 () Bool)

(assert (=> b!1308460 (= e!839106 e!839125)))

(declare-fun res!587113 () Bool)

(assert (=> b!1308460 (=> res!587113 e!839125)))

(declare-fun getSuffix!463 (List!13317 List!13317) List!13317)

(assert (=> b!1308460 (= res!587113 (not (= lt!430789 (++!3370 lt!430803 (getSuffix!463 lt!430789 lt!430803)))))))

(declare-fun pickWitness!70 (Int) List!13317)

(assert (=> b!1308460 (= lt!430789 (pickWitness!70 lambda!52700))))

(declare-fun e!839109 () Bool)

(declare-fun tp!381658 () Bool)

(declare-fun b!1308461 () Bool)

(assert (=> b!1308461 (= e!839113 (and tp!381658 (inv!17633 (tag!2555 (rule!4032 t2!34))) (inv!17637 (transformation!2293 (rule!4032 t2!34))) e!839109))))

(assert (=> b!1308462 (= e!839126 (and tp!381661 tp!381655))))

(declare-fun b!1308463 () Bool)

(assert (=> b!1308463 (= e!839110 e!839123)))

(declare-fun res!587111 () Bool)

(assert (=> b!1308463 (=> (not res!587111) (not e!839123))))

(declare-fun size!10767 (BalanceConc!8652) Int)

(assert (=> b!1308463 (= res!587111 (> (size!10767 lt!430788) 0))))

(assert (=> b!1308463 (= lt!430788 (charsOf!1265 t2!34))))

(declare-fun b!1308464 () Bool)

(declare-fun res!587109 () Bool)

(assert (=> b!1308464 (=> (not res!587109) (not e!839123))))

(declare-fun separableTokensPredicate!271 (LexerInterface!1988 Token!4248 Token!4248 List!13319) Bool)

(assert (=> b!1308464 (= res!587109 (not (separableTokensPredicate!271 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1308465 () Bool)

(assert (=> b!1308465 (= e!839125 e!839107)))

(declare-fun res!587124 () Bool)

(assert (=> b!1308465 (=> res!587124 e!839107)))

(assert (=> b!1308465 (= res!587124 (not (contains!2289 lt!430803 lt!430791)))))

(assert (=> b!1308465 (= lt!430791 (apply!2973 lt!430795 0))))

(declare-fun b!1308466 () Bool)

(declare-fun res!587132 () Bool)

(assert (=> b!1308466 (=> res!587132 e!839122)))

(assert (=> b!1308466 (= res!587132 (not (isEmpty!7831 (_2!7313 lt!430801))))))

(declare-fun b!1308467 () Bool)

(declare-fun res!587120 () Bool)

(assert (=> b!1308467 (=> res!587120 e!839107)))

(assert (=> b!1308467 (= res!587120 (not (contains!2289 lt!430789 lt!430804)))))

(assert (=> b!1308468 (= e!839109 (and tp!381653 tp!381662))))

(declare-fun b!1308469 () Bool)

(declare-fun res!587130 () Bool)

(assert (=> b!1308469 (=> (not res!587130) (not e!839110))))

(declare-fun rulesInvariant!1858 (LexerInterface!1988 List!13319) Bool)

(assert (=> b!1308469 (= res!587130 (rulesInvariant!1858 thiss!19762 rules!2550))))

(assert (= (and start!115474 res!587107) b!1308443))

(assert (= (and b!1308443 res!587106) b!1308469))

(assert (= (and b!1308469 res!587130) b!1308445))

(assert (= (and b!1308445 res!587129) b!1308449))

(assert (= (and b!1308449 res!587125) b!1308447))

(assert (= (and b!1308447 res!587131) b!1308463))

(assert (= (and b!1308463 res!587111) b!1308459))

(assert (= (and b!1308459 res!587115) b!1308464))

(assert (= (and b!1308464 res!587109) b!1308451))

(assert (= (and b!1308451 res!587118) b!1308458))

(assert (= (and b!1308458 (not res!587108)) b!1308460))

(assert (= (and b!1308460 (not res!587113)) b!1308465))

(assert (= (and b!1308465 (not res!587124)) b!1308441))

(assert (= (and b!1308441 (not res!587105)) b!1308450))

(assert (= (and b!1308450 (not res!587112)) b!1308467))

(assert (= (and b!1308467 (not res!587120)) b!1308455))

(assert (= (and b!1308455 (not res!587126)) b!1308435))

(assert (= (and b!1308435 (not res!587117)) b!1308453))

(assert (= (and b!1308453 (not res!587114)) b!1308437))

(assert (= (and b!1308437 (not res!587128)) b!1308433))

(assert (= (and b!1308433 (not res!587123)) b!1308446))

(assert (= (and b!1308446 (not res!587121)) b!1308456))

(assert (= (and b!1308456 (not res!587127)) b!1308457))

(assert (= (and b!1308457 (not res!587116)) b!1308448))

(assert (= (and b!1308448 (not res!587119)) b!1308436))

(assert (= (and b!1308436 (not res!587122)) b!1308466))

(assert (= (and b!1308466 (not res!587132)) b!1308434))

(assert (= (and b!1308434 (not res!587110)) b!1308438))

(assert (= b!1308444 b!1308454))

(assert (= b!1308439 b!1308444))

(assert (= (and start!115474 ((_ is Cons!13253) rules!2550)) b!1308439))

(assert (= b!1308440 b!1308462))

(assert (= b!1308442 b!1308440))

(assert (= start!115474 b!1308442))

(assert (= b!1308461 b!1308468))

(assert (= b!1308452 b!1308461))

(assert (= start!115474 b!1308452))

(declare-fun m!1459911 () Bool)

(assert (=> b!1308458 m!1459911))

(assert (=> b!1308458 m!1459911))

(declare-fun m!1459913 () Bool)

(assert (=> b!1308458 m!1459913))

(declare-fun m!1459915 () Bool)

(assert (=> b!1308453 m!1459915))

(assert (=> b!1308453 m!1459915))

(declare-fun m!1459917 () Bool)

(assert (=> b!1308453 m!1459917))

(assert (=> b!1308453 m!1459915))

(assert (=> b!1308453 m!1459915))

(declare-fun m!1459919 () Bool)

(assert (=> b!1308453 m!1459919))

(declare-fun m!1459921 () Bool)

(assert (=> b!1308450 m!1459921))

(declare-fun m!1459923 () Bool)

(assert (=> b!1308437 m!1459923))

(assert (=> b!1308437 m!1459923))

(declare-fun m!1459925 () Bool)

(assert (=> b!1308437 m!1459925))

(declare-fun m!1459927 () Bool)

(assert (=> b!1308445 m!1459927))

(declare-fun m!1459929 () Bool)

(assert (=> b!1308451 m!1459929))

(declare-fun m!1459931 () Bool)

(assert (=> b!1308451 m!1459931))

(declare-fun m!1459933 () Bool)

(assert (=> b!1308451 m!1459933))

(declare-fun m!1459935 () Bool)

(assert (=> b!1308451 m!1459935))

(declare-fun m!1459937 () Bool)

(assert (=> b!1308451 m!1459937))

(declare-fun m!1459939 () Bool)

(assert (=> b!1308451 m!1459939))

(declare-fun m!1459941 () Bool)

(assert (=> b!1308443 m!1459941))

(declare-fun m!1459943 () Bool)

(assert (=> b!1308446 m!1459943))

(declare-fun m!1459945 () Bool)

(assert (=> b!1308433 m!1459945))

(declare-fun m!1459947 () Bool)

(assert (=> b!1308433 m!1459947))

(declare-fun m!1459949 () Bool)

(assert (=> b!1308433 m!1459949))

(declare-fun m!1459951 () Bool)

(assert (=> b!1308433 m!1459951))

(assert (=> b!1308433 m!1459949))

(declare-fun m!1459953 () Bool)

(assert (=> b!1308433 m!1459953))

(declare-fun m!1459955 () Bool)

(assert (=> b!1308463 m!1459955))

(declare-fun m!1459957 () Bool)

(assert (=> b!1308463 m!1459957))

(declare-fun m!1459959 () Bool)

(assert (=> b!1308442 m!1459959))

(declare-fun m!1459961 () Bool)

(assert (=> b!1308469 m!1459961))

(declare-fun m!1459963 () Bool)

(assert (=> b!1308461 m!1459963))

(declare-fun m!1459965 () Bool)

(assert (=> b!1308461 m!1459965))

(declare-fun m!1459967 () Bool)

(assert (=> b!1308438 m!1459967))

(declare-fun m!1459969 () Bool)

(assert (=> b!1308438 m!1459969))

(declare-fun m!1459971 () Bool)

(assert (=> b!1308455 m!1459971))

(declare-fun m!1459973 () Bool)

(assert (=> b!1308466 m!1459973))

(declare-fun m!1459975 () Bool)

(assert (=> b!1308440 m!1459975))

(declare-fun m!1459977 () Bool)

(assert (=> b!1308440 m!1459977))

(declare-fun m!1459979 () Bool)

(assert (=> b!1308441 m!1459979))

(declare-fun m!1459981 () Bool)

(assert (=> b!1308460 m!1459981))

(assert (=> b!1308460 m!1459981))

(declare-fun m!1459983 () Bool)

(assert (=> b!1308460 m!1459983))

(declare-fun m!1459985 () Bool)

(assert (=> b!1308460 m!1459985))

(declare-fun m!1459987 () Bool)

(assert (=> start!115474 m!1459987))

(declare-fun m!1459989 () Bool)

(assert (=> start!115474 m!1459989))

(declare-fun m!1459991 () Bool)

(assert (=> b!1308444 m!1459991))

(declare-fun m!1459993 () Bool)

(assert (=> b!1308444 m!1459993))

(declare-fun m!1459995 () Bool)

(assert (=> b!1308456 m!1459995))

(assert (=> b!1308456 m!1459995))

(declare-fun m!1459997 () Bool)

(assert (=> b!1308456 m!1459997))

(declare-fun m!1459999 () Bool)

(assert (=> b!1308452 m!1459999))

(declare-fun m!1460001 () Bool)

(assert (=> b!1308467 m!1460001))

(declare-fun m!1460003 () Bool)

(assert (=> b!1308435 m!1460003))

(assert (=> b!1308435 m!1459915))

(assert (=> b!1308435 m!1459915))

(assert (=> b!1308435 m!1459915))

(declare-fun m!1460005 () Bool)

(assert (=> b!1308435 m!1460005))

(declare-fun m!1460007 () Bool)

(assert (=> b!1308435 m!1460007))

(declare-fun m!1460009 () Bool)

(assert (=> b!1308436 m!1460009))

(declare-fun m!1460011 () Bool)

(assert (=> b!1308436 m!1460011))

(declare-fun m!1460013 () Bool)

(assert (=> b!1308436 m!1460013))

(assert (=> b!1308436 m!1460013))

(declare-fun m!1460015 () Bool)

(assert (=> b!1308436 m!1460015))

(declare-fun m!1460017 () Bool)

(assert (=> b!1308457 m!1460017))

(declare-fun m!1460019 () Bool)

(assert (=> b!1308449 m!1460019))

(declare-fun m!1460021 () Bool)

(assert (=> b!1308465 m!1460021))

(declare-fun m!1460023 () Bool)

(assert (=> b!1308465 m!1460023))

(declare-fun m!1460025 () Bool)

(assert (=> b!1308434 m!1460025))

(assert (=> b!1308434 m!1460025))

(declare-fun m!1460027 () Bool)

(assert (=> b!1308434 m!1460027))

(declare-fun m!1460029 () Bool)

(assert (=> b!1308448 m!1460029))

(declare-fun m!1460031 () Bool)

(assert (=> b!1308464 m!1460031))

(declare-fun m!1460033 () Bool)

(assert (=> b!1308459 m!1460033))

(check-sat b_and!87383 (not b!1308457) (not b!1308451) (not b!1308434) b_and!87385 (not b!1308442) b_and!87393 (not b_next!32197) b_and!87391 (not b!1308439) (not b!1308444) (not b!1308441) (not b_next!32193) (not b!1308458) (not b!1308448) (not b!1308460) (not b_next!32195) (not b!1308455) (not b!1308443) b_and!87387 (not start!115474) (not b_next!32189) (not b!1308435) (not b!1308437) (not b!1308463) (not b!1308433) b_and!87389 (not b_next!32187) (not b!1308445) (not b!1308452) (not b!1308465) (not b!1308464) (not b!1308436) (not b!1308469) (not b!1308450) (not b!1308466) (not b!1308440) (not b!1308456) (not b!1308459) (not b_next!32191) (not b!1308467) (not b!1308449) (not b!1308438) (not b!1308446) (not b!1308461) (not b!1308453))
(check-sat b_and!87383 b_and!87391 (not b_next!32193) (not b_next!32195) b_and!87387 (not b_next!32189) b_and!87389 (not b_next!32187) (not b_next!32191) b_and!87385 b_and!87393 (not b_next!32197))
(get-model)

(declare-fun d!368485 () Bool)

(declare-fun lt!430833 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1849 (List!13317) (InoxSet C!7504))

(assert (=> d!368485 (= lt!430833 (select (content!1849 lt!430803) lt!430804))))

(declare-fun e!839161 () Bool)

(assert (=> d!368485 (= lt!430833 e!839161)))

(declare-fun res!587171 () Bool)

(assert (=> d!368485 (=> (not res!587171) (not e!839161))))

(assert (=> d!368485 (= res!587171 ((_ is Cons!13251) lt!430803))))

(assert (=> d!368485 (= (contains!2289 lt!430803 lt!430804) lt!430833)))

(declare-fun b!1308520 () Bool)

(declare-fun e!839160 () Bool)

(assert (=> b!1308520 (= e!839161 e!839160)))

(declare-fun res!587172 () Bool)

(assert (=> b!1308520 (=> res!587172 e!839160)))

(assert (=> b!1308520 (= res!587172 (= (h!18652 lt!430803) lt!430804))))

(declare-fun b!1308521 () Bool)

(assert (=> b!1308521 (= e!839160 (contains!2289 (t!117940 lt!430803) lt!430804))))

(assert (= (and d!368485 res!587171) b!1308520))

(assert (= (and b!1308520 (not res!587172)) b!1308521))

(declare-fun m!1460101 () Bool)

(assert (=> d!368485 m!1460101))

(declare-fun m!1460103 () Bool)

(assert (=> d!368485 m!1460103))

(declare-fun m!1460105 () Bool)

(assert (=> b!1308521 m!1460105))

(assert (=> b!1308450 d!368485))

(declare-fun b!1308532 () Bool)

(declare-fun e!839170 () Bool)

(declare-fun inv!15 (TokenValue!2383) Bool)

(assert (=> b!1308532 (= e!839170 (inv!15 (value!74983 t2!34)))))

(declare-fun b!1308533 () Bool)

(declare-fun e!839168 () Bool)

(declare-fun inv!17 (TokenValue!2383) Bool)

(assert (=> b!1308533 (= e!839168 (inv!17 (value!74983 t2!34)))))

(declare-fun d!368495 () Bool)

(declare-fun c!214807 () Bool)

(assert (=> d!368495 (= c!214807 ((_ is IntegerValue!7149) (value!74983 t2!34)))))

(declare-fun e!839169 () Bool)

(assert (=> d!368495 (= (inv!21 (value!74983 t2!34)) e!839169)))

(declare-fun b!1308534 () Bool)

(declare-fun inv!16 (TokenValue!2383) Bool)

(assert (=> b!1308534 (= e!839169 (inv!16 (value!74983 t2!34)))))

(declare-fun b!1308535 () Bool)

(assert (=> b!1308535 (= e!839169 e!839168)))

(declare-fun c!214806 () Bool)

(assert (=> b!1308535 (= c!214806 ((_ is IntegerValue!7150) (value!74983 t2!34)))))

(declare-fun b!1308536 () Bool)

(declare-fun res!587175 () Bool)

(assert (=> b!1308536 (=> res!587175 e!839170)))

(assert (=> b!1308536 (= res!587175 (not ((_ is IntegerValue!7151) (value!74983 t2!34))))))

(assert (=> b!1308536 (= e!839168 e!839170)))

(assert (= (and d!368495 c!214807) b!1308534))

(assert (= (and d!368495 (not c!214807)) b!1308535))

(assert (= (and b!1308535 c!214806) b!1308533))

(assert (= (and b!1308535 (not c!214806)) b!1308536))

(assert (= (and b!1308536 (not res!587175)) b!1308532))

(declare-fun m!1460107 () Bool)

(assert (=> b!1308532 m!1460107))

(declare-fun m!1460109 () Bool)

(assert (=> b!1308533 m!1460109))

(declare-fun m!1460111 () Bool)

(assert (=> b!1308534 m!1460111))

(assert (=> b!1308452 d!368495))

(declare-fun d!368497 () Bool)

(declare-fun c!214810 () Bool)

(declare-fun isEmpty!7835 (List!13317) Bool)

(assert (=> d!368497 (= c!214810 (isEmpty!7835 lt!430803))))

(declare-fun e!839173 () Bool)

(assert (=> d!368497 (= (prefixMatch!120 lt!430792 lt!430803) e!839173)))

(declare-fun b!1308541 () Bool)

(declare-fun lostCause!268 (Regex!3607) Bool)

(assert (=> b!1308541 (= e!839173 (not (lostCause!268 lt!430792)))))

(declare-fun b!1308542 () Bool)

(declare-fun derivativeStep!891 (Regex!3607 C!7504) Regex!3607)

(declare-fun head!2246 (List!13317) C!7504)

(declare-fun tail!1872 (List!13317) List!13317)

(assert (=> b!1308542 (= e!839173 (prefixMatch!120 (derivativeStep!891 lt!430792 (head!2246 lt!430803)) (tail!1872 lt!430803)))))

(assert (= (and d!368497 c!214810) b!1308541))

(assert (= (and d!368497 (not c!214810)) b!1308542))

(declare-fun m!1460113 () Bool)

(assert (=> d!368497 m!1460113))

(declare-fun m!1460115 () Bool)

(assert (=> b!1308541 m!1460115))

(declare-fun m!1460117 () Bool)

(assert (=> b!1308542 m!1460117))

(assert (=> b!1308542 m!1460117))

(declare-fun m!1460119 () Bool)

(assert (=> b!1308542 m!1460119))

(declare-fun m!1460121 () Bool)

(assert (=> b!1308542 m!1460121))

(assert (=> b!1308542 m!1460119))

(assert (=> b!1308542 m!1460121))

(declare-fun m!1460123 () Bool)

(assert (=> b!1308542 m!1460123))

(assert (=> b!1308451 d!368497))

(declare-fun d!368499 () Bool)

(declare-fun lt!430836 () C!7504)

(declare-fun apply!2976 (List!13317 Int) C!7504)

(assert (=> d!368499 (= lt!430836 (apply!2976 (list!4971 lt!430788) 0))))

(declare-fun apply!2977 (Conc!4356 Int) C!7504)

(assert (=> d!368499 (= lt!430836 (apply!2977 (c!214796 lt!430788) 0))))

(declare-fun e!839176 () Bool)

(assert (=> d!368499 e!839176))

(declare-fun res!587178 () Bool)

(assert (=> d!368499 (=> (not res!587178) (not e!839176))))

(assert (=> d!368499 (= res!587178 (<= 0 0))))

(assert (=> d!368499 (= (apply!2973 lt!430788 0) lt!430836)))

(declare-fun b!1308545 () Bool)

(assert (=> b!1308545 (= e!839176 (< 0 (size!10767 lt!430788)))))

(assert (= (and d!368499 res!587178) b!1308545))

(assert (=> d!368499 m!1459969))

(assert (=> d!368499 m!1459969))

(declare-fun m!1460125 () Bool)

(assert (=> d!368499 m!1460125))

(declare-fun m!1460127 () Bool)

(assert (=> d!368499 m!1460127))

(assert (=> b!1308545 m!1459955))

(assert (=> b!1308451 d!368499))

(declare-fun d!368501 () Bool)

(declare-fun list!4974 (Conc!4356) List!13317)

(assert (=> d!368501 (= (list!4971 lt!430795) (list!4974 (c!214796 lt!430795)))))

(declare-fun bs!329670 () Bool)

(assert (= bs!329670 d!368501))

(declare-fun m!1460129 () Bool)

(assert (=> bs!329670 m!1460129))

(assert (=> b!1308451 d!368501))

(declare-fun d!368503 () Bool)

(declare-fun lt!430839 () BalanceConc!8652)

(assert (=> d!368503 (= (list!4971 lt!430839) (originalCharacters!3155 t1!34))))

(declare-fun dynLambda!5742 (Int TokenValue!2383) BalanceConc!8652)

(assert (=> d!368503 (= lt!430839 (dynLambda!5742 (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (value!74983 t1!34)))))

(assert (=> d!368503 (= (charsOf!1265 t1!34) lt!430839)))

(declare-fun b_lambda!37501 () Bool)

(assert (=> (not b_lambda!37501) (not d!368503)))

(declare-fun t!117945 () Bool)

(declare-fun tb!69657 () Bool)

(assert (=> (and b!1308468 (= (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (toChars!3371 (transformation!2293 (rule!4032 t1!34)))) t!117945) tb!69657))

(declare-fun b!1308550 () Bool)

(declare-fun e!839179 () Bool)

(declare-fun tp!381665 () Bool)

(declare-fun inv!17640 (Conc!4356) Bool)

(assert (=> b!1308550 (= e!839179 (and (inv!17640 (c!214796 (dynLambda!5742 (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (value!74983 t1!34)))) tp!381665))))

(declare-fun result!84502 () Bool)

(declare-fun inv!17641 (BalanceConc!8652) Bool)

(assert (=> tb!69657 (= result!84502 (and (inv!17641 (dynLambda!5742 (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (value!74983 t1!34))) e!839179))))

(assert (= tb!69657 b!1308550))

(declare-fun m!1460131 () Bool)

(assert (=> b!1308550 m!1460131))

(declare-fun m!1460133 () Bool)

(assert (=> tb!69657 m!1460133))

(assert (=> d!368503 t!117945))

(declare-fun b_and!87395 () Bool)

(assert (= b_and!87385 (and (=> t!117945 result!84502) b_and!87395)))

(declare-fun tb!69659 () Bool)

(declare-fun t!117947 () Bool)

(assert (=> (and b!1308454 (= (toChars!3371 (transformation!2293 (h!18654 rules!2550))) (toChars!3371 (transformation!2293 (rule!4032 t1!34)))) t!117947) tb!69659))

(declare-fun result!84506 () Bool)

(assert (= result!84506 result!84502))

(assert (=> d!368503 t!117947))

(declare-fun b_and!87397 () Bool)

(assert (= b_and!87389 (and (=> t!117947 result!84506) b_and!87397)))

(declare-fun t!117949 () Bool)

(declare-fun tb!69661 () Bool)

(assert (=> (and b!1308462 (= (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (toChars!3371 (transformation!2293 (rule!4032 t1!34)))) t!117949) tb!69661))

(declare-fun result!84508 () Bool)

(assert (= result!84508 result!84502))

(assert (=> d!368503 t!117949))

(declare-fun b_and!87399 () Bool)

(assert (= b_and!87393 (and (=> t!117949 result!84508) b_and!87399)))

(declare-fun m!1460135 () Bool)

(assert (=> d!368503 m!1460135))

(declare-fun m!1460137 () Bool)

(assert (=> d!368503 m!1460137))

(assert (=> b!1308451 d!368503))

(declare-fun b!1308561 () Bool)

(declare-fun res!587183 () Bool)

(declare-fun e!839184 () Bool)

(assert (=> b!1308561 (=> (not res!587183) (not e!839184))))

(declare-fun lt!430842 () List!13317)

(declare-fun size!10773 (List!13317) Int)

(assert (=> b!1308561 (= res!587183 (= (size!10773 lt!430842) (+ (size!10773 lt!430796) (size!10773 (Cons!13251 lt!430804 Nil!13251)))))))

(declare-fun b!1308559 () Bool)

(declare-fun e!839185 () List!13317)

(assert (=> b!1308559 (= e!839185 (Cons!13251 lt!430804 Nil!13251))))

(declare-fun b!1308560 () Bool)

(assert (=> b!1308560 (= e!839185 (Cons!13251 (h!18652 lt!430796) (++!3370 (t!117940 lt!430796) (Cons!13251 lt!430804 Nil!13251))))))

(declare-fun d!368505 () Bool)

(assert (=> d!368505 e!839184))

(declare-fun res!587184 () Bool)

(assert (=> d!368505 (=> (not res!587184) (not e!839184))))

(assert (=> d!368505 (= res!587184 (= (content!1849 lt!430842) ((_ map or) (content!1849 lt!430796) (content!1849 (Cons!13251 lt!430804 Nil!13251)))))))

(assert (=> d!368505 (= lt!430842 e!839185)))

(declare-fun c!214813 () Bool)

(assert (=> d!368505 (= c!214813 ((_ is Nil!13251) lt!430796))))

(assert (=> d!368505 (= (++!3370 lt!430796 (Cons!13251 lt!430804 Nil!13251)) lt!430842)))

(declare-fun b!1308562 () Bool)

(assert (=> b!1308562 (= e!839184 (or (not (= (Cons!13251 lt!430804 Nil!13251) Nil!13251)) (= lt!430842 lt!430796)))))

(assert (= (and d!368505 c!214813) b!1308559))

(assert (= (and d!368505 (not c!214813)) b!1308560))

(assert (= (and d!368505 res!587184) b!1308561))

(assert (= (and b!1308561 res!587183) b!1308562))

(declare-fun m!1460139 () Bool)

(assert (=> b!1308561 m!1460139))

(declare-fun m!1460141 () Bool)

(assert (=> b!1308561 m!1460141))

(declare-fun m!1460143 () Bool)

(assert (=> b!1308561 m!1460143))

(declare-fun m!1460145 () Bool)

(assert (=> b!1308560 m!1460145))

(declare-fun m!1460147 () Bool)

(assert (=> d!368505 m!1460147))

(declare-fun m!1460149 () Bool)

(assert (=> d!368505 m!1460149))

(declare-fun m!1460151 () Bool)

(assert (=> d!368505 m!1460151))

(assert (=> b!1308451 d!368505))

(declare-fun bs!329671 () Bool)

(declare-fun d!368507 () Bool)

(assert (= bs!329671 (and d!368507 b!1308435)))

(declare-fun lambda!52725 () Int)

(assert (=> bs!329671 (= lambda!52725 lambda!52701)))

(declare-fun lt!430848 () Unit!19316)

(declare-fun lemma!62 (List!13319 LexerInterface!1988 List!13319) Unit!19316)

(assert (=> d!368507 (= lt!430848 (lemma!62 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!70 (List!13320) Regex!3607)

(assert (=> d!368507 (= (rulesRegex!178 thiss!19762 rules!2550) (generalisedUnion!70 (map!2906 rules!2550 lambda!52725)))))

(declare-fun bs!329672 () Bool)

(assert (= bs!329672 d!368507))

(declare-fun m!1460167 () Bool)

(assert (=> bs!329672 m!1460167))

(declare-fun m!1460169 () Bool)

(assert (=> bs!329672 m!1460169))

(assert (=> bs!329672 m!1460169))

(declare-fun m!1460171 () Bool)

(assert (=> bs!329672 m!1460171))

(assert (=> b!1308451 d!368507))

(declare-fun d!368511 () Bool)

(declare-fun lt!430851 () Bool)

(declare-fun content!1851 (List!13319) (InoxSet Rule!4386))

(assert (=> d!368511 (= lt!430851 (select (content!1851 rules!2550) (rule!4032 t1!34)))))

(declare-fun e!839199 () Bool)

(assert (=> d!368511 (= lt!430851 e!839199)))

(declare-fun res!587199 () Bool)

(assert (=> d!368511 (=> (not res!587199) (not e!839199))))

(assert (=> d!368511 (= res!587199 ((_ is Cons!13253) rules!2550))))

(assert (=> d!368511 (= (contains!2290 rules!2550 (rule!4032 t1!34)) lt!430851)))

(declare-fun b!1308582 () Bool)

(declare-fun e!839200 () Bool)

(assert (=> b!1308582 (= e!839199 e!839200)))

(declare-fun res!587198 () Bool)

(assert (=> b!1308582 (=> res!587198 e!839200)))

(assert (=> b!1308582 (= res!587198 (= (h!18654 rules!2550) (rule!4032 t1!34)))))

(declare-fun b!1308583 () Bool)

(assert (=> b!1308583 (= e!839200 (contains!2290 (t!117942 rules!2550) (rule!4032 t1!34)))))

(assert (= (and d!368511 res!587199) b!1308582))

(assert (= (and b!1308582 (not res!587198)) b!1308583))

(declare-fun m!1460173 () Bool)

(assert (=> d!368511 m!1460173))

(declare-fun m!1460175 () Bool)

(assert (=> d!368511 m!1460175))

(declare-fun m!1460177 () Bool)

(assert (=> b!1308583 m!1460177))

(assert (=> b!1308448 d!368511))

(declare-fun d!368513 () Bool)

(declare-fun res!587202 () Bool)

(declare-fun e!839203 () Bool)

(assert (=> d!368513 (=> (not res!587202) (not e!839203))))

(declare-fun rulesValid!829 (LexerInterface!1988 List!13319) Bool)

(assert (=> d!368513 (= res!587202 (rulesValid!829 thiss!19762 rules!2550))))

(assert (=> d!368513 (= (rulesInvariant!1858 thiss!19762 rules!2550) e!839203)))

(declare-fun b!1308586 () Bool)

(declare-datatypes ((List!13322 0))(
  ( (Nil!13256) (Cons!13256 (h!18657 String!16151) (t!117981 List!13322)) )
))
(declare-fun noDuplicateTag!829 (LexerInterface!1988 List!13319 List!13322) Bool)

(assert (=> b!1308586 (= e!839203 (noDuplicateTag!829 thiss!19762 rules!2550 Nil!13256))))

(assert (= (and d!368513 res!587202) b!1308586))

(declare-fun m!1460187 () Bool)

(assert (=> d!368513 m!1460187))

(declare-fun m!1460189 () Bool)

(assert (=> b!1308586 m!1460189))

(assert (=> b!1308469 d!368513))

(declare-fun d!368517 () Bool)

(declare-fun lt!430898 () Bool)

(declare-fun e!839295 () Bool)

(assert (=> d!368517 (= lt!430898 e!839295)))

(declare-fun res!587276 () Bool)

(assert (=> d!368517 (=> (not res!587276) (not e!839295))))

(assert (=> d!368517 (= res!587276 (= (list!4970 (_1!7313 (lex!823 thiss!19762 rules!2550 (print!762 thiss!19762 (singletonSeq!864 t2!34))))) (list!4970 (singletonSeq!864 t2!34))))))

(declare-fun e!839294 () Bool)

(assert (=> d!368517 (= lt!430898 e!839294)))

(declare-fun res!587275 () Bool)

(assert (=> d!368517 (=> (not res!587275) (not e!839294))))

(declare-fun lt!430897 () tuple2!12854)

(declare-fun size!10774 (BalanceConc!8654) Int)

(assert (=> d!368517 (= res!587275 (= (size!10774 (_1!7313 lt!430897)) 1))))

(assert (=> d!368517 (= lt!430897 (lex!823 thiss!19762 rules!2550 (print!762 thiss!19762 (singletonSeq!864 t2!34))))))

(assert (=> d!368517 (not (isEmpty!7830 rules!2550))))

(assert (=> d!368517 (= (rulesProduceIndividualToken!957 thiss!19762 rules!2550 t2!34) lt!430898)))

(declare-fun b!1308731 () Bool)

(declare-fun res!587274 () Bool)

(assert (=> b!1308731 (=> (not res!587274) (not e!839294))))

(declare-fun apply!2978 (BalanceConc!8654 Int) Token!4248)

(assert (=> b!1308731 (= res!587274 (= (apply!2978 (_1!7313 lt!430897) 0) t2!34))))

(declare-fun b!1308732 () Bool)

(assert (=> b!1308732 (= e!839294 (isEmpty!7831 (_2!7313 lt!430897)))))

(declare-fun b!1308733 () Bool)

(assert (=> b!1308733 (= e!839295 (isEmpty!7831 (_2!7313 (lex!823 thiss!19762 rules!2550 (print!762 thiss!19762 (singletonSeq!864 t2!34))))))))

(assert (= (and d!368517 res!587275) b!1308731))

(assert (= (and b!1308731 res!587274) b!1308732))

(assert (= (and d!368517 res!587276) b!1308733))

(assert (=> d!368517 m!1460013))

(declare-fun m!1460319 () Bool)

(assert (=> d!368517 m!1460319))

(assert (=> d!368517 m!1460015))

(declare-fun m!1460321 () Bool)

(assert (=> d!368517 m!1460321))

(assert (=> d!368517 m!1460013))

(assert (=> d!368517 m!1460015))

(declare-fun m!1460323 () Bool)

(assert (=> d!368517 m!1460323))

(assert (=> d!368517 m!1460013))

(assert (=> d!368517 m!1459941))

(declare-fun m!1460325 () Bool)

(assert (=> d!368517 m!1460325))

(declare-fun m!1460327 () Bool)

(assert (=> b!1308731 m!1460327))

(declare-fun m!1460329 () Bool)

(assert (=> b!1308732 m!1460329))

(assert (=> b!1308733 m!1460013))

(assert (=> b!1308733 m!1460013))

(assert (=> b!1308733 m!1460015))

(assert (=> b!1308733 m!1460015))

(assert (=> b!1308733 m!1460321))

(declare-fun m!1460331 () Bool)

(assert (=> b!1308733 m!1460331))

(assert (=> b!1308449 d!368517))

(declare-fun d!368563 () Bool)

(declare-fun res!587281 () Bool)

(declare-fun e!839298 () Bool)

(assert (=> d!368563 (=> (not res!587281) (not e!839298))))

(assert (=> d!368563 (= res!587281 (not (isEmpty!7835 (originalCharacters!3155 t1!34))))))

(assert (=> d!368563 (= (inv!17636 t1!34) e!839298)))

(declare-fun b!1308738 () Bool)

(declare-fun res!587282 () Bool)

(assert (=> b!1308738 (=> (not res!587282) (not e!839298))))

(assert (=> b!1308738 (= res!587282 (= (originalCharacters!3155 t1!34) (list!4971 (dynLambda!5742 (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (value!74983 t1!34)))))))

(declare-fun b!1308739 () Bool)

(assert (=> b!1308739 (= e!839298 (= (size!10766 t1!34) (size!10773 (originalCharacters!3155 t1!34))))))

(assert (= (and d!368563 res!587281) b!1308738))

(assert (= (and b!1308738 res!587282) b!1308739))

(declare-fun b_lambda!37509 () Bool)

(assert (=> (not b_lambda!37509) (not b!1308738)))

(assert (=> b!1308738 t!117945))

(declare-fun b_and!87407 () Bool)

(assert (= b_and!87395 (and (=> t!117945 result!84502) b_and!87407)))

(assert (=> b!1308738 t!117947))

(declare-fun b_and!87409 () Bool)

(assert (= b_and!87397 (and (=> t!117947 result!84506) b_and!87409)))

(assert (=> b!1308738 t!117949))

(declare-fun b_and!87411 () Bool)

(assert (= b_and!87399 (and (=> t!117949 result!84508) b_and!87411)))

(declare-fun m!1460333 () Bool)

(assert (=> d!368563 m!1460333))

(assert (=> b!1308738 m!1460137))

(assert (=> b!1308738 m!1460137))

(declare-fun m!1460335 () Bool)

(assert (=> b!1308738 m!1460335))

(declare-fun m!1460337 () Bool)

(assert (=> b!1308739 m!1460337))

(assert (=> start!115474 d!368563))

(declare-fun d!368565 () Bool)

(declare-fun res!587283 () Bool)

(declare-fun e!839299 () Bool)

(assert (=> d!368565 (=> (not res!587283) (not e!839299))))

(assert (=> d!368565 (= res!587283 (not (isEmpty!7835 (originalCharacters!3155 t2!34))))))

(assert (=> d!368565 (= (inv!17636 t2!34) e!839299)))

(declare-fun b!1308740 () Bool)

(declare-fun res!587284 () Bool)

(assert (=> b!1308740 (=> (not res!587284) (not e!839299))))

(assert (=> b!1308740 (= res!587284 (= (originalCharacters!3155 t2!34) (list!4971 (dynLambda!5742 (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (value!74983 t2!34)))))))

(declare-fun b!1308741 () Bool)

(assert (=> b!1308741 (= e!839299 (= (size!10766 t2!34) (size!10773 (originalCharacters!3155 t2!34))))))

(assert (= (and d!368565 res!587283) b!1308740))

(assert (= (and b!1308740 res!587284) b!1308741))

(declare-fun b_lambda!37511 () Bool)

(assert (=> (not b_lambda!37511) (not b!1308740)))

(declare-fun t!117959 () Bool)

(declare-fun tb!69669 () Bool)

(assert (=> (and b!1308468 (= (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (toChars!3371 (transformation!2293 (rule!4032 t2!34)))) t!117959) tb!69669))

(declare-fun b!1308742 () Bool)

(declare-fun e!839300 () Bool)

(declare-fun tp!381669 () Bool)

(assert (=> b!1308742 (= e!839300 (and (inv!17640 (c!214796 (dynLambda!5742 (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (value!74983 t2!34)))) tp!381669))))

(declare-fun result!84518 () Bool)

(assert (=> tb!69669 (= result!84518 (and (inv!17641 (dynLambda!5742 (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (value!74983 t2!34))) e!839300))))

(assert (= tb!69669 b!1308742))

(declare-fun m!1460339 () Bool)

(assert (=> b!1308742 m!1460339))

(declare-fun m!1460341 () Bool)

(assert (=> tb!69669 m!1460341))

(assert (=> b!1308740 t!117959))

(declare-fun b_and!87413 () Bool)

(assert (= b_and!87407 (and (=> t!117959 result!84518) b_and!87413)))

(declare-fun t!117961 () Bool)

(declare-fun tb!69671 () Bool)

(assert (=> (and b!1308454 (= (toChars!3371 (transformation!2293 (h!18654 rules!2550))) (toChars!3371 (transformation!2293 (rule!4032 t2!34)))) t!117961) tb!69671))

(declare-fun result!84520 () Bool)

(assert (= result!84520 result!84518))

(assert (=> b!1308740 t!117961))

(declare-fun b_and!87415 () Bool)

(assert (= b_and!87409 (and (=> t!117961 result!84520) b_and!87415)))

(declare-fun t!117963 () Bool)

(declare-fun tb!69673 () Bool)

(assert (=> (and b!1308462 (= (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (toChars!3371 (transformation!2293 (rule!4032 t2!34)))) t!117963) tb!69673))

(declare-fun result!84522 () Bool)

(assert (= result!84522 result!84518))

(assert (=> b!1308740 t!117963))

(declare-fun b_and!87417 () Bool)

(assert (= b_and!87411 (and (=> t!117963 result!84522) b_and!87417)))

(declare-fun m!1460343 () Bool)

(assert (=> d!368565 m!1460343))

(declare-fun m!1460345 () Bool)

(assert (=> b!1308740 m!1460345))

(assert (=> b!1308740 m!1460345))

(declare-fun m!1460347 () Bool)

(assert (=> b!1308740 m!1460347))

(declare-fun m!1460349 () Bool)

(assert (=> b!1308741 m!1460349))

(assert (=> start!115474 d!368565))

(declare-fun b!1308753 () Bool)

(declare-fun e!839309 () tuple2!12856)

(declare-fun lt!430907 () Option!2558)

(declare-fun lt!430905 () tuple2!12856)

(assert (=> b!1308753 (= e!839309 (tuple2!12857 (Cons!13252 (_1!7315 (v!21063 lt!430907)) (_1!7314 lt!430905)) (_2!7314 lt!430905)))))

(assert (=> b!1308753 (= lt!430905 (lexList!526 thiss!19762 rules!2550 (_2!7315 (v!21063 lt!430907))))))

(declare-fun d!368567 () Bool)

(declare-fun e!839308 () Bool)

(assert (=> d!368567 e!839308))

(declare-fun c!214854 () Bool)

(declare-fun lt!430906 () tuple2!12856)

(declare-fun size!10776 (List!13318) Int)

(assert (=> d!368567 (= c!214854 (> (size!10776 (_1!7314 lt!430906)) 0))))

(assert (=> d!368567 (= lt!430906 e!839309)))

(declare-fun c!214855 () Bool)

(assert (=> d!368567 (= c!214855 ((_ is Some!2557) lt!430907))))

(assert (=> d!368567 (= lt!430907 (maxPrefix!998 thiss!19762 rules!2550 (list!4971 lt!430790)))))

(assert (=> d!368567 (= (lexList!526 thiss!19762 rules!2550 (list!4971 lt!430790)) lt!430906)))

(declare-fun b!1308754 () Bool)

(assert (=> b!1308754 (= e!839309 (tuple2!12857 Nil!13252 (list!4971 lt!430790)))))

(declare-fun b!1308755 () Bool)

(declare-fun e!839307 () Bool)

(assert (=> b!1308755 (= e!839308 e!839307)))

(declare-fun res!587287 () Bool)

(assert (=> b!1308755 (= res!587287 (< (size!10773 (_2!7314 lt!430906)) (size!10773 (list!4971 lt!430790))))))

(assert (=> b!1308755 (=> (not res!587287) (not e!839307))))

(declare-fun b!1308756 () Bool)

(assert (=> b!1308756 (= e!839308 (= (_2!7314 lt!430906) (list!4971 lt!430790)))))

(declare-fun b!1308757 () Bool)

(declare-fun isEmpty!7837 (List!13318) Bool)

(assert (=> b!1308757 (= e!839307 (not (isEmpty!7837 (_1!7314 lt!430906))))))

(assert (= (and d!368567 c!214855) b!1308753))

(assert (= (and d!368567 (not c!214855)) b!1308754))

(assert (= (and d!368567 c!214854) b!1308755))

(assert (= (and d!368567 (not c!214854)) b!1308756))

(assert (= (and b!1308755 res!587287) b!1308757))

(declare-fun m!1460351 () Bool)

(assert (=> b!1308753 m!1460351))

(declare-fun m!1460353 () Bool)

(assert (=> d!368567 m!1460353))

(assert (=> d!368567 m!1459995))

(declare-fun m!1460355 () Bool)

(assert (=> d!368567 m!1460355))

(declare-fun m!1460357 () Bool)

(assert (=> b!1308755 m!1460357))

(assert (=> b!1308755 m!1459995))

(declare-fun m!1460359 () Bool)

(assert (=> b!1308755 m!1460359))

(declare-fun m!1460361 () Bool)

(assert (=> b!1308757 m!1460361))

(assert (=> b!1308456 d!368567))

(declare-fun d!368569 () Bool)

(assert (=> d!368569 (= (list!4971 lt!430790) (list!4974 (c!214796 lt!430790)))))

(declare-fun bs!329682 () Bool)

(assert (= bs!329682 d!368569))

(declare-fun m!1460363 () Bool)

(assert (=> bs!329682 m!1460363))

(assert (=> b!1308456 d!368569))

(declare-fun b!1308758 () Bool)

(declare-fun e!839312 () tuple2!12856)

(declare-fun lt!430910 () Option!2558)

(declare-fun lt!430908 () tuple2!12856)

(assert (=> b!1308758 (= e!839312 (tuple2!12857 (Cons!13252 (_1!7315 (v!21063 lt!430910)) (_1!7314 lt!430908)) (_2!7314 lt!430908)))))

(assert (=> b!1308758 (= lt!430908 (lexList!526 thiss!19762 rules!2550 (_2!7315 (v!21063 lt!430910))))))

(declare-fun d!368571 () Bool)

(declare-fun e!839311 () Bool)

(assert (=> d!368571 e!839311))

(declare-fun c!214856 () Bool)

(declare-fun lt!430909 () tuple2!12856)

(assert (=> d!368571 (= c!214856 (> (size!10776 (_1!7314 lt!430909)) 0))))

(assert (=> d!368571 (= lt!430909 e!839312)))

(declare-fun c!214857 () Bool)

(assert (=> d!368571 (= c!214857 ((_ is Some!2557) lt!430910))))

(assert (=> d!368571 (= lt!430910 (maxPrefix!998 thiss!19762 rules!2550 (list!4971 lt!430800)))))

(assert (=> d!368571 (= (lexList!526 thiss!19762 rules!2550 (list!4971 lt!430800)) lt!430909)))

(declare-fun b!1308759 () Bool)

(assert (=> b!1308759 (= e!839312 (tuple2!12857 Nil!13252 (list!4971 lt!430800)))))

(declare-fun b!1308760 () Bool)

(declare-fun e!839310 () Bool)

(assert (=> b!1308760 (= e!839311 e!839310)))

(declare-fun res!587288 () Bool)

(assert (=> b!1308760 (= res!587288 (< (size!10773 (_2!7314 lt!430909)) (size!10773 (list!4971 lt!430800))))))

(assert (=> b!1308760 (=> (not res!587288) (not e!839310))))

(declare-fun b!1308761 () Bool)

(assert (=> b!1308761 (= e!839311 (= (_2!7314 lt!430909) (list!4971 lt!430800)))))

(declare-fun b!1308762 () Bool)

(assert (=> b!1308762 (= e!839310 (not (isEmpty!7837 (_1!7314 lt!430909))))))

(assert (= (and d!368571 c!214857) b!1308758))

(assert (= (and d!368571 (not c!214857)) b!1308759))

(assert (= (and d!368571 c!214856) b!1308760))

(assert (= (and d!368571 (not c!214856)) b!1308761))

(assert (= (and b!1308760 res!587288) b!1308762))

(declare-fun m!1460365 () Bool)

(assert (=> b!1308758 m!1460365))

(declare-fun m!1460367 () Bool)

(assert (=> d!368571 m!1460367))

(assert (=> d!368571 m!1460025))

(declare-fun m!1460369 () Bool)

(assert (=> d!368571 m!1460369))

(declare-fun m!1460371 () Bool)

(assert (=> b!1308760 m!1460371))

(assert (=> b!1308760 m!1460025))

(declare-fun m!1460373 () Bool)

(assert (=> b!1308760 m!1460373))

(declare-fun m!1460375 () Bool)

(assert (=> b!1308762 m!1460375))

(assert (=> b!1308434 d!368571))

(declare-fun d!368573 () Bool)

(assert (=> d!368573 (= (list!4971 lt!430800) (list!4974 (c!214796 lt!430800)))))

(declare-fun bs!329683 () Bool)

(assert (= bs!329683 d!368573))

(declare-fun m!1460377 () Bool)

(assert (=> bs!329683 m!1460377))

(assert (=> b!1308434 d!368573))

(declare-fun b!1308791 () Bool)

(declare-fun res!587307 () Bool)

(declare-fun e!839332 () Bool)

(assert (=> b!1308791 (=> res!587307 e!839332)))

(assert (=> b!1308791 (= res!587307 (not (isEmpty!7835 (tail!1872 lt!430789))))))

(declare-fun b!1308792 () Bool)

(declare-fun e!839331 () Bool)

(assert (=> b!1308792 (= e!839331 e!839332)))

(declare-fun res!587305 () Bool)

(assert (=> b!1308792 (=> res!587305 e!839332)))

(declare-fun call!89239 () Bool)

(assert (=> b!1308792 (= res!587305 call!89239)))

(declare-fun d!368575 () Bool)

(declare-fun e!839328 () Bool)

(assert (=> d!368575 e!839328))

(declare-fun c!214865 () Bool)

(assert (=> d!368575 (= c!214865 ((_ is EmptyExpr!3607) lt!430792))))

(declare-fun lt!430913 () Bool)

(declare-fun e!839327 () Bool)

(assert (=> d!368575 (= lt!430913 e!839327)))

(declare-fun c!214864 () Bool)

(assert (=> d!368575 (= c!214864 (isEmpty!7835 lt!430789))))

(declare-fun validRegex!1541 (Regex!3607) Bool)

(assert (=> d!368575 (validRegex!1541 lt!430792)))

(assert (=> d!368575 (= (matchR!1609 lt!430792 lt!430789) lt!430913)))

(declare-fun b!1308793 () Bool)

(declare-fun e!839329 () Bool)

(assert (=> b!1308793 (= e!839329 (= (head!2246 lt!430789) (c!214797 lt!430792)))))

(declare-fun b!1308794 () Bool)

(assert (=> b!1308794 (= e!839332 (not (= (head!2246 lt!430789) (c!214797 lt!430792))))))

(declare-fun b!1308795 () Bool)

(assert (=> b!1308795 (= e!839328 (= lt!430913 call!89239))))

(declare-fun b!1308796 () Bool)

(declare-fun res!587310 () Bool)

(declare-fun e!839333 () Bool)

(assert (=> b!1308796 (=> res!587310 e!839333)))

(assert (=> b!1308796 (= res!587310 (not ((_ is ElementMatch!3607) lt!430792)))))

(declare-fun e!839330 () Bool)

(assert (=> b!1308796 (= e!839330 e!839333)))

(declare-fun b!1308797 () Bool)

(declare-fun res!587309 () Bool)

(assert (=> b!1308797 (=> res!587309 e!839333)))

(assert (=> b!1308797 (= res!587309 e!839329)))

(declare-fun res!587312 () Bool)

(assert (=> b!1308797 (=> (not res!587312) (not e!839329))))

(assert (=> b!1308797 (= res!587312 lt!430913)))

(declare-fun b!1308798 () Bool)

(assert (=> b!1308798 (= e!839327 (matchR!1609 (derivativeStep!891 lt!430792 (head!2246 lt!430789)) (tail!1872 lt!430789)))))

(declare-fun b!1308799 () Bool)

(assert (=> b!1308799 (= e!839328 e!839330)))

(declare-fun c!214866 () Bool)

(assert (=> b!1308799 (= c!214866 ((_ is EmptyLang!3607) lt!430792))))

(declare-fun b!1308800 () Bool)

(declare-fun nullable!1139 (Regex!3607) Bool)

(assert (=> b!1308800 (= e!839327 (nullable!1139 lt!430792))))

(declare-fun b!1308801 () Bool)

(assert (=> b!1308801 (= e!839333 e!839331)))

(declare-fun res!587311 () Bool)

(assert (=> b!1308801 (=> (not res!587311) (not e!839331))))

(assert (=> b!1308801 (= res!587311 (not lt!430913))))

(declare-fun b!1308802 () Bool)

(assert (=> b!1308802 (= e!839330 (not lt!430913))))

(declare-fun b!1308803 () Bool)

(declare-fun res!587308 () Bool)

(assert (=> b!1308803 (=> (not res!587308) (not e!839329))))

(assert (=> b!1308803 (= res!587308 (not call!89239))))

(declare-fun bm!89234 () Bool)

(assert (=> bm!89234 (= call!89239 (isEmpty!7835 lt!430789))))

(declare-fun b!1308804 () Bool)

(declare-fun res!587306 () Bool)

(assert (=> b!1308804 (=> (not res!587306) (not e!839329))))

(assert (=> b!1308804 (= res!587306 (isEmpty!7835 (tail!1872 lt!430789)))))

(assert (= (and d!368575 c!214864) b!1308800))

(assert (= (and d!368575 (not c!214864)) b!1308798))

(assert (= (and d!368575 c!214865) b!1308795))

(assert (= (and d!368575 (not c!214865)) b!1308799))

(assert (= (and b!1308799 c!214866) b!1308802))

(assert (= (and b!1308799 (not c!214866)) b!1308796))

(assert (= (and b!1308796 (not res!587310)) b!1308797))

(assert (= (and b!1308797 res!587312) b!1308803))

(assert (= (and b!1308803 res!587308) b!1308804))

(assert (= (and b!1308804 res!587306) b!1308793))

(assert (= (and b!1308797 (not res!587309)) b!1308801))

(assert (= (and b!1308801 res!587311) b!1308792))

(assert (= (and b!1308792 (not res!587305)) b!1308791))

(assert (= (and b!1308791 (not res!587307)) b!1308794))

(assert (= (or b!1308795 b!1308792 b!1308803) bm!89234))

(declare-fun m!1460379 () Bool)

(assert (=> bm!89234 m!1460379))

(assert (=> d!368575 m!1460379))

(declare-fun m!1460381 () Bool)

(assert (=> d!368575 m!1460381))

(declare-fun m!1460383 () Bool)

(assert (=> b!1308800 m!1460383))

(declare-fun m!1460385 () Bool)

(assert (=> b!1308804 m!1460385))

(assert (=> b!1308804 m!1460385))

(declare-fun m!1460387 () Bool)

(assert (=> b!1308804 m!1460387))

(assert (=> b!1308791 m!1460385))

(assert (=> b!1308791 m!1460385))

(assert (=> b!1308791 m!1460387))

(declare-fun m!1460389 () Bool)

(assert (=> b!1308793 m!1460389))

(assert (=> b!1308794 m!1460389))

(assert (=> b!1308798 m!1460389))

(assert (=> b!1308798 m!1460389))

(declare-fun m!1460391 () Bool)

(assert (=> b!1308798 m!1460391))

(assert (=> b!1308798 m!1460385))

(assert (=> b!1308798 m!1460391))

(assert (=> b!1308798 m!1460385))

(declare-fun m!1460393 () Bool)

(assert (=> b!1308798 m!1460393))

(assert (=> b!1308455 d!368575))

(declare-fun d!368577 () Bool)

(declare-fun list!4975 (Conc!4357) List!13318)

(assert (=> d!368577 (= (list!4970 (_1!7313 lt!430801)) (list!4975 (c!214798 (_1!7313 lt!430801))))))

(declare-fun bs!329684 () Bool)

(assert (= bs!329684 d!368577))

(declare-fun m!1460395 () Bool)

(assert (=> bs!329684 m!1460395))

(assert (=> b!1308436 d!368577))

(declare-fun lt!430958 () tuple2!12854)

(declare-fun e!839389 () Bool)

(declare-fun b!1308903 () Bool)

(assert (=> b!1308903 (= e!839389 (= (list!4971 (_2!7313 lt!430958)) (_2!7314 (lexList!526 thiss!19762 rules!2550 (list!4971 lt!430800)))))))

(declare-fun b!1308904 () Bool)

(declare-fun e!839388 () Bool)

(declare-fun isEmpty!7838 (BalanceConc!8654) Bool)

(assert (=> b!1308904 (= e!839388 (not (isEmpty!7838 (_1!7313 lt!430958))))))

(declare-fun b!1308905 () Bool)

(declare-fun e!839390 () Bool)

(assert (=> b!1308905 (= e!839390 e!839388)))

(declare-fun res!587378 () Bool)

(assert (=> b!1308905 (= res!587378 (< (size!10767 (_2!7313 lt!430958)) (size!10767 lt!430800)))))

(assert (=> b!1308905 (=> (not res!587378) (not e!839388))))

(declare-fun b!1308906 () Bool)

(assert (=> b!1308906 (= e!839390 (= (_2!7313 lt!430958) lt!430800))))

(declare-fun b!1308907 () Bool)

(declare-fun res!587376 () Bool)

(assert (=> b!1308907 (=> (not res!587376) (not e!839389))))

(assert (=> b!1308907 (= res!587376 (= (list!4970 (_1!7313 lt!430958)) (_1!7314 (lexList!526 thiss!19762 rules!2550 (list!4971 lt!430800)))))))

(declare-fun d!368579 () Bool)

(assert (=> d!368579 e!839389))

(declare-fun res!587377 () Bool)

(assert (=> d!368579 (=> (not res!587377) (not e!839389))))

(assert (=> d!368579 (= res!587377 e!839390)))

(declare-fun c!214884 () Bool)

(assert (=> d!368579 (= c!214884 (> (size!10774 (_1!7313 lt!430958)) 0))))

(declare-fun lexTailRecV2!357 (LexerInterface!1988 List!13319 BalanceConc!8652 BalanceConc!8652 BalanceConc!8652 BalanceConc!8654) tuple2!12854)

(assert (=> d!368579 (= lt!430958 (lexTailRecV2!357 thiss!19762 rules!2550 lt!430800 (BalanceConc!8653 Empty!4356) lt!430800 (BalanceConc!8655 Empty!4357)))))

(assert (=> d!368579 (= (lex!823 thiss!19762 rules!2550 lt!430800) lt!430958)))

(assert (= (and d!368579 c!214884) b!1308905))

(assert (= (and d!368579 (not c!214884)) b!1308906))

(assert (= (and b!1308905 res!587378) b!1308904))

(assert (= (and d!368579 res!587377) b!1308907))

(assert (= (and b!1308907 res!587376) b!1308903))

(declare-fun m!1460557 () Bool)

(assert (=> b!1308907 m!1460557))

(assert (=> b!1308907 m!1460025))

(assert (=> b!1308907 m!1460025))

(assert (=> b!1308907 m!1460027))

(declare-fun m!1460559 () Bool)

(assert (=> d!368579 m!1460559))

(declare-fun m!1460561 () Bool)

(assert (=> d!368579 m!1460561))

(declare-fun m!1460563 () Bool)

(assert (=> b!1308904 m!1460563))

(declare-fun m!1460565 () Bool)

(assert (=> b!1308903 m!1460565))

(assert (=> b!1308903 m!1460025))

(assert (=> b!1308903 m!1460025))

(assert (=> b!1308903 m!1460027))

(declare-fun m!1460567 () Bool)

(assert (=> b!1308905 m!1460567))

(declare-fun m!1460569 () Bool)

(assert (=> b!1308905 m!1460569))

(assert (=> b!1308436 d!368579))

(declare-fun d!368617 () Bool)

(declare-fun lt!430967 () BalanceConc!8652)

(declare-fun printList!552 (LexerInterface!1988 List!13318) List!13317)

(assert (=> d!368617 (= (list!4971 lt!430967) (printList!552 thiss!19762 (list!4970 (singletonSeq!864 t2!34))))))

(declare-fun printTailRec!534 (LexerInterface!1988 BalanceConc!8654 Int BalanceConc!8652) BalanceConc!8652)

(assert (=> d!368617 (= lt!430967 (printTailRec!534 thiss!19762 (singletonSeq!864 t2!34) 0 (BalanceConc!8653 Empty!4356)))))

(assert (=> d!368617 (= (print!762 thiss!19762 (singletonSeq!864 t2!34)) lt!430967)))

(declare-fun bs!329691 () Bool)

(assert (= bs!329691 d!368617))

(declare-fun m!1460581 () Bool)

(assert (=> bs!329691 m!1460581))

(assert (=> bs!329691 m!1460013))

(assert (=> bs!329691 m!1460319))

(assert (=> bs!329691 m!1460319))

(declare-fun m!1460583 () Bool)

(assert (=> bs!329691 m!1460583))

(assert (=> bs!329691 m!1460013))

(declare-fun m!1460585 () Bool)

(assert (=> bs!329691 m!1460585))

(assert (=> b!1308436 d!368617))

(declare-fun d!368623 () Bool)

(declare-fun e!839396 () Bool)

(assert (=> d!368623 e!839396))

(declare-fun res!587381 () Bool)

(assert (=> d!368623 (=> (not res!587381) (not e!839396))))

(declare-fun lt!430970 () BalanceConc!8654)

(assert (=> d!368623 (= res!587381 (= (list!4970 lt!430970) (Cons!13252 t2!34 Nil!13252)))))

(declare-fun singleton!372 (Token!4248) BalanceConc!8654)

(assert (=> d!368623 (= lt!430970 (singleton!372 t2!34))))

(assert (=> d!368623 (= (singletonSeq!864 t2!34) lt!430970)))

(declare-fun b!1308916 () Bool)

(declare-fun isBalanced!1266 (Conc!4357) Bool)

(assert (=> b!1308916 (= e!839396 (isBalanced!1266 (c!214798 lt!430970)))))

(assert (= (and d!368623 res!587381) b!1308916))

(declare-fun m!1460587 () Bool)

(assert (=> d!368623 m!1460587))

(declare-fun m!1460589 () Bool)

(assert (=> d!368623 m!1460589))

(declare-fun m!1460591 () Bool)

(assert (=> b!1308916 m!1460591))

(assert (=> b!1308436 d!368623))

(declare-fun b!1308983 () Bool)

(declare-fun e!839433 () Option!2558)

(declare-fun call!89245 () Option!2558)

(assert (=> b!1308983 (= e!839433 call!89245)))

(declare-fun b!1308984 () Bool)

(declare-fun res!587408 () Bool)

(declare-fun e!839435 () Bool)

(assert (=> b!1308984 (=> (not res!587408) (not e!839435))))

(declare-fun lt!430987 () Option!2558)

(declare-fun get!4241 (Option!2558) tuple2!12858)

(declare-fun apply!2980 (TokenValueInjection!4426 BalanceConc!8652) TokenValue!2383)

(declare-fun seqFromList!1588 (List!13317) BalanceConc!8652)

(assert (=> b!1308984 (= res!587408 (= (value!74983 (_1!7315 (get!4241 lt!430987))) (apply!2980 (transformation!2293 (rule!4032 (_1!7315 (get!4241 lt!430987)))) (seqFromList!1588 (originalCharacters!3155 (_1!7315 (get!4241 lt!430987)))))))))

(declare-fun b!1308985 () Bool)

(declare-fun res!587411 () Bool)

(assert (=> b!1308985 (=> (not res!587411) (not e!839435))))

(assert (=> b!1308985 (= res!587411 (= (++!3370 (list!4971 (charsOf!1265 (_1!7315 (get!4241 lt!430987)))) (_2!7315 (get!4241 lt!430987))) lt!430796))))

(declare-fun b!1308986 () Bool)

(declare-fun lt!430988 () Option!2558)

(declare-fun lt!430984 () Option!2558)

(assert (=> b!1308986 (= e!839433 (ite (and ((_ is None!2557) lt!430988) ((_ is None!2557) lt!430984)) None!2557 (ite ((_ is None!2557) lt!430984) lt!430988 (ite ((_ is None!2557) lt!430988) lt!430984 (ite (>= (size!10766 (_1!7315 (v!21063 lt!430988))) (size!10766 (_1!7315 (v!21063 lt!430984)))) lt!430988 lt!430984)))))))

(assert (=> b!1308986 (= lt!430988 call!89245)))

(assert (=> b!1308986 (= lt!430984 (maxPrefix!998 thiss!19762 (t!117942 rules!2550) lt!430796))))

(declare-fun b!1308987 () Bool)

(declare-fun e!839434 () Bool)

(assert (=> b!1308987 (= e!839434 e!839435)))

(declare-fun res!587406 () Bool)

(assert (=> b!1308987 (=> (not res!587406) (not e!839435))))

(declare-fun isDefined!2168 (Option!2558) Bool)

(assert (=> b!1308987 (= res!587406 (isDefined!2168 lt!430987))))

(declare-fun b!1308988 () Bool)

(declare-fun res!587407 () Bool)

(assert (=> b!1308988 (=> (not res!587407) (not e!839435))))

(assert (=> b!1308988 (= res!587407 (matchR!1609 (regex!2293 (rule!4032 (_1!7315 (get!4241 lt!430987)))) (list!4971 (charsOf!1265 (_1!7315 (get!4241 lt!430987))))))))

(declare-fun bm!89240 () Bool)

(declare-fun maxPrefixOneRule!571 (LexerInterface!1988 Rule!4386 List!13317) Option!2558)

(assert (=> bm!89240 (= call!89245 (maxPrefixOneRule!571 thiss!19762 (h!18654 rules!2550) lt!430796))))

(declare-fun d!368625 () Bool)

(assert (=> d!368625 e!839434))

(declare-fun res!587409 () Bool)

(assert (=> d!368625 (=> res!587409 e!839434)))

(declare-fun isEmpty!7840 (Option!2558) Bool)

(assert (=> d!368625 (= res!587409 (isEmpty!7840 lt!430987))))

(assert (=> d!368625 (= lt!430987 e!839433)))

(declare-fun c!214890 () Bool)

(assert (=> d!368625 (= c!214890 (and ((_ is Cons!13253) rules!2550) ((_ is Nil!13253) (t!117942 rules!2550))))))

(declare-fun lt!430986 () Unit!19316)

(declare-fun lt!430985 () Unit!19316)

(assert (=> d!368625 (= lt!430986 lt!430985)))

(declare-fun isPrefix!1066 (List!13317 List!13317) Bool)

(assert (=> d!368625 (isPrefix!1066 lt!430796 lt!430796)))

(declare-fun lemmaIsPrefixRefl!745 (List!13317 List!13317) Unit!19316)

(assert (=> d!368625 (= lt!430985 (lemmaIsPrefixRefl!745 lt!430796 lt!430796))))

(assert (=> d!368625 (rulesValidInductive!716 thiss!19762 rules!2550)))

(assert (=> d!368625 (= (maxPrefix!998 thiss!19762 rules!2550 lt!430796) lt!430987)))

(declare-fun b!1308989 () Bool)

(declare-fun res!587405 () Bool)

(assert (=> b!1308989 (=> (not res!587405) (not e!839435))))

(assert (=> b!1308989 (= res!587405 (= (list!4971 (charsOf!1265 (_1!7315 (get!4241 lt!430987)))) (originalCharacters!3155 (_1!7315 (get!4241 lt!430987)))))))

(declare-fun b!1308990 () Bool)

(assert (=> b!1308990 (= e!839435 (contains!2290 rules!2550 (rule!4032 (_1!7315 (get!4241 lt!430987)))))))

(declare-fun b!1308991 () Bool)

(declare-fun res!587410 () Bool)

(assert (=> b!1308991 (=> (not res!587410) (not e!839435))))

(assert (=> b!1308991 (= res!587410 (< (size!10773 (_2!7315 (get!4241 lt!430987))) (size!10773 lt!430796)))))

(assert (= (and d!368625 c!214890) b!1308983))

(assert (= (and d!368625 (not c!214890)) b!1308986))

(assert (= (or b!1308983 b!1308986) bm!89240))

(assert (= (and d!368625 (not res!587409)) b!1308987))

(assert (= (and b!1308987 res!587406) b!1308989))

(assert (= (and b!1308989 res!587405) b!1308991))

(assert (= (and b!1308991 res!587410) b!1308985))

(assert (= (and b!1308985 res!587411) b!1308984))

(assert (= (and b!1308984 res!587408) b!1308988))

(assert (= (and b!1308988 res!587407) b!1308990))

(declare-fun m!1460623 () Bool)

(assert (=> b!1308987 m!1460623))

(declare-fun m!1460625 () Bool)

(assert (=> b!1308985 m!1460625))

(declare-fun m!1460627 () Bool)

(assert (=> b!1308985 m!1460627))

(assert (=> b!1308985 m!1460627))

(declare-fun m!1460629 () Bool)

(assert (=> b!1308985 m!1460629))

(assert (=> b!1308985 m!1460629))

(declare-fun m!1460631 () Bool)

(assert (=> b!1308985 m!1460631))

(assert (=> b!1308990 m!1460625))

(declare-fun m!1460633 () Bool)

(assert (=> b!1308990 m!1460633))

(assert (=> b!1308991 m!1460625))

(declare-fun m!1460635 () Bool)

(assert (=> b!1308991 m!1460635))

(assert (=> b!1308991 m!1460141))

(declare-fun m!1460637 () Bool)

(assert (=> b!1308986 m!1460637))

(assert (=> b!1308984 m!1460625))

(declare-fun m!1460639 () Bool)

(assert (=> b!1308984 m!1460639))

(assert (=> b!1308984 m!1460639))

(declare-fun m!1460641 () Bool)

(assert (=> b!1308984 m!1460641))

(declare-fun m!1460643 () Bool)

(assert (=> d!368625 m!1460643))

(declare-fun m!1460645 () Bool)

(assert (=> d!368625 m!1460645))

(declare-fun m!1460647 () Bool)

(assert (=> d!368625 m!1460647))

(assert (=> d!368625 m!1459967))

(declare-fun m!1460649 () Bool)

(assert (=> bm!89240 m!1460649))

(assert (=> b!1308989 m!1460625))

(assert (=> b!1308989 m!1460627))

(assert (=> b!1308989 m!1460627))

(assert (=> b!1308989 m!1460629))

(assert (=> b!1308988 m!1460625))

(assert (=> b!1308988 m!1460627))

(assert (=> b!1308988 m!1460627))

(assert (=> b!1308988 m!1460629))

(assert (=> b!1308988 m!1460629))

(declare-fun m!1460651 () Bool)

(assert (=> b!1308988 m!1460651))

(assert (=> b!1308457 d!368625))

(declare-fun bs!329699 () Bool)

(declare-fun d!368641 () Bool)

(assert (= bs!329699 (and d!368641 b!1308435)))

(declare-fun lambda!52734 () Int)

(assert (=> bs!329699 (not (= lambda!52734 lambda!52702))))

(assert (=> d!368641 true))

(declare-fun order!7961 () Int)

(declare-fun dynLambda!5745 (Int Int) Int)

(assert (=> d!368641 (< (dynLambda!5745 order!7961 lambda!52702) (dynLambda!5745 order!7961 lambda!52734))))

(declare-fun forall!3277 (List!13320 Int) Bool)

(assert (=> d!368641 (= (exists!288 (map!2906 rules!2550 lambda!52701) lambda!52702) (not (forall!3277 (map!2906 rules!2550 lambda!52701) lambda!52734)))))

(declare-fun bs!329700 () Bool)

(assert (= bs!329700 d!368641))

(assert (=> bs!329700 m!1459915))

(declare-fun m!1460653 () Bool)

(assert (=> bs!329700 m!1460653))

(assert (=> b!1308435 d!368641))

(declare-fun d!368643 () Bool)

(declare-fun lt!430991 () List!13320)

(declare-fun size!10777 (List!13320) Int)

(declare-fun size!10778 (List!13319) Int)

(assert (=> d!368643 (= (size!10777 lt!430991) (size!10778 rules!2550))))

(declare-fun e!839438 () List!13320)

(assert (=> d!368643 (= lt!430991 e!839438)))

(declare-fun c!214893 () Bool)

(assert (=> d!368643 (= c!214893 ((_ is Nil!13253) rules!2550))))

(assert (=> d!368643 (= (map!2906 rules!2550 lambda!52701) lt!430991)))

(declare-fun b!1308998 () Bool)

(assert (=> b!1308998 (= e!839438 Nil!13254)))

(declare-fun b!1308999 () Bool)

(declare-fun $colon$colon!143 (List!13320 Regex!3607) List!13320)

(declare-fun dynLambda!5746 (Int Rule!4386) Regex!3607)

(assert (=> b!1308999 (= e!839438 ($colon$colon!143 (map!2906 (t!117942 rules!2550) lambda!52701) (dynLambda!5746 lambda!52701 (h!18654 rules!2550))))))

(assert (= (and d!368643 c!214893) b!1308998))

(assert (= (and d!368643 (not c!214893)) b!1308999))

(declare-fun b_lambda!37545 () Bool)

(assert (=> (not b_lambda!37545) (not b!1308999)))

(declare-fun m!1460655 () Bool)

(assert (=> d!368643 m!1460655))

(declare-fun m!1460657 () Bool)

(assert (=> d!368643 m!1460657))

(declare-fun m!1460659 () Bool)

(assert (=> b!1308999 m!1460659))

(declare-fun m!1460661 () Bool)

(assert (=> b!1308999 m!1460661))

(assert (=> b!1308999 m!1460659))

(assert (=> b!1308999 m!1460661))

(declare-fun m!1460663 () Bool)

(assert (=> b!1308999 m!1460663))

(assert (=> b!1308435 d!368643))

(declare-fun bs!329701 () Bool)

(declare-fun d!368645 () Bool)

(assert (= bs!329701 (and d!368645 b!1308435)))

(declare-fun lambda!52739 () Int)

(assert (=> bs!329701 (not (= lambda!52739 lambda!52702))))

(declare-fun bs!329702 () Bool)

(assert (= bs!329702 (and d!368645 d!368641)))

(assert (=> bs!329702 (not (= lambda!52739 lambda!52734))))

(declare-fun lambda!52740 () Int)

(assert (=> bs!329701 (= lambda!52740 lambda!52702)))

(assert (=> bs!329702 (not (= lambda!52740 lambda!52734))))

(declare-fun bs!329703 () Bool)

(assert (= bs!329703 d!368645))

(assert (=> bs!329703 (not (= lambda!52740 lambda!52739))))

(assert (=> d!368645 true))

(assert (=> d!368645 (= (matchR!1609 lt!430792 lt!430789) (exists!288 lt!430797 lambda!52740))))

(declare-fun lt!430994 () Unit!19316)

(declare-fun choose!7999 (Regex!3607 List!13320 List!13317) Unit!19316)

(assert (=> d!368645 (= lt!430994 (choose!7999 lt!430792 lt!430797 lt!430789))))

(assert (=> d!368645 (forall!3277 lt!430797 lambda!52739)))

(assert (=> d!368645 (= (matchRGenUnionSpec!44 lt!430792 lt!430797 lt!430789) lt!430994)))

(assert (=> bs!329703 m!1459971))

(declare-fun m!1460665 () Bool)

(assert (=> bs!329703 m!1460665))

(declare-fun m!1460667 () Bool)

(assert (=> bs!329703 m!1460667))

(declare-fun m!1460669 () Bool)

(assert (=> bs!329703 m!1460669))

(assert (=> b!1308435 d!368645))

(declare-fun bs!329704 () Bool)

(declare-fun d!368647 () Bool)

(assert (= bs!329704 (and d!368647 b!1308435)))

(declare-fun lambda!52741 () Int)

(assert (=> bs!329704 (not (= lambda!52741 lambda!52702))))

(declare-fun bs!329705 () Bool)

(assert (= bs!329705 (and d!368647 d!368641)))

(assert (=> bs!329705 (= lambda!52741 lambda!52734)))

(declare-fun bs!329706 () Bool)

(assert (= bs!329706 (and d!368647 d!368645)))

(assert (=> bs!329706 (not (= lambda!52741 lambda!52739))))

(assert (=> bs!329706 (not (= lambda!52741 lambda!52740))))

(assert (=> d!368647 true))

(assert (=> d!368647 (< (dynLambda!5745 order!7961 lambda!52702) (dynLambda!5745 order!7961 lambda!52741))))

(assert (=> d!368647 (= (exists!288 lt!430797 lambda!52702) (not (forall!3277 lt!430797 lambda!52741)))))

(declare-fun bs!329707 () Bool)

(assert (= bs!329707 d!368647))

(declare-fun m!1460671 () Bool)

(assert (=> bs!329707 m!1460671))

(assert (=> b!1308435 d!368647))

(declare-fun d!368649 () Bool)

(declare-fun lt!430997 () Bool)

(declare-fun content!1852 (List!13320) (InoxSet Regex!3607))

(assert (=> d!368649 (= lt!430997 (select (content!1852 (map!2906 rules!2550 lambda!52701)) lt!430802))))

(declare-fun e!839445 () Bool)

(assert (=> d!368649 (= lt!430997 e!839445)))

(declare-fun res!587418 () Bool)

(assert (=> d!368649 (=> (not res!587418) (not e!839445))))

(assert (=> d!368649 (= res!587418 ((_ is Cons!13254) (map!2906 rules!2550 lambda!52701)))))

(assert (=> d!368649 (= (contains!2291 (map!2906 rules!2550 lambda!52701) lt!430802) lt!430997)))

(declare-fun b!1309006 () Bool)

(declare-fun e!839446 () Bool)

(assert (=> b!1309006 (= e!839445 e!839446)))

(declare-fun res!587419 () Bool)

(assert (=> b!1309006 (=> res!587419 e!839446)))

(assert (=> b!1309006 (= res!587419 (= (h!18655 (map!2906 rules!2550 lambda!52701)) lt!430802))))

(declare-fun b!1309007 () Bool)

(assert (=> b!1309007 (= e!839446 (contains!2291 (t!117943 (map!2906 rules!2550 lambda!52701)) lt!430802))))

(assert (= (and d!368649 res!587418) b!1309006))

(assert (= (and b!1309006 (not res!587419)) b!1309007))

(assert (=> d!368649 m!1459915))

(declare-fun m!1460673 () Bool)

(assert (=> d!368649 m!1460673))

(declare-fun m!1460675 () Bool)

(assert (=> d!368649 m!1460675))

(declare-fun m!1460677 () Bool)

(assert (=> b!1309007 m!1460677))

(assert (=> b!1308453 d!368649))

(assert (=> b!1308453 d!368643))

(declare-fun e!839455 () Bool)

(declare-fun b!1309020 () Bool)

(declare-fun dynLambda!5747 (Int Regex!3607) Bool)

(assert (=> b!1309020 (= e!839455 (dynLambda!5747 lambda!52702 (h!18655 (map!2906 rules!2550 lambda!52701))))))

(declare-fun b!1309021 () Bool)

(declare-fun e!839457 () Bool)

(declare-fun lt!431002 () Regex!3607)

(assert (=> b!1309021 (= e!839457 (contains!2291 (map!2906 rules!2550 lambda!52701) lt!431002))))

(declare-fun d!368651 () Bool)

(assert (=> d!368651 e!839457))

(declare-fun res!587425 () Bool)

(assert (=> d!368651 (=> (not res!587425) (not e!839457))))

(assert (=> d!368651 (= res!587425 (dynLambda!5747 lambda!52702 lt!431002))))

(declare-fun e!839456 () Regex!3607)

(assert (=> d!368651 (= lt!431002 e!839456)))

(declare-fun c!214898 () Bool)

(assert (=> d!368651 (= c!214898 e!839455)))

(declare-fun res!587424 () Bool)

(assert (=> d!368651 (=> (not res!587424) (not e!839455))))

(assert (=> d!368651 (= res!587424 ((_ is Cons!13254) (map!2906 rules!2550 lambda!52701)))))

(assert (=> d!368651 (exists!288 (map!2906 rules!2550 lambda!52701) lambda!52702)))

(assert (=> d!368651 (= (getWitness!181 (map!2906 rules!2550 lambda!52701) lambda!52702) lt!431002)))

(declare-fun b!1309022 () Bool)

(declare-fun lt!431003 () Unit!19316)

(declare-fun Unit!19320 () Unit!19316)

(assert (=> b!1309022 (= lt!431003 Unit!19320)))

(assert (=> b!1309022 false))

(declare-fun e!839458 () Regex!3607)

(declare-fun head!2249 (List!13320) Regex!3607)

(assert (=> b!1309022 (= e!839458 (head!2249 (map!2906 rules!2550 lambda!52701)))))

(declare-fun b!1309023 () Bool)

(assert (=> b!1309023 (= e!839458 (getWitness!181 (t!117943 (map!2906 rules!2550 lambda!52701)) lambda!52702))))

(declare-fun b!1309024 () Bool)

(assert (=> b!1309024 (= e!839456 e!839458)))

(declare-fun c!214899 () Bool)

(assert (=> b!1309024 (= c!214899 ((_ is Cons!13254) (map!2906 rules!2550 lambda!52701)))))

(declare-fun b!1309025 () Bool)

(assert (=> b!1309025 (= e!839456 (h!18655 (map!2906 rules!2550 lambda!52701)))))

(assert (= (and d!368651 res!587424) b!1309020))

(assert (= (and d!368651 c!214898) b!1309025))

(assert (= (and d!368651 (not c!214898)) b!1309024))

(assert (= (and b!1309024 c!214899) b!1309023))

(assert (= (and b!1309024 (not c!214899)) b!1309022))

(assert (= (and d!368651 res!587425) b!1309021))

(declare-fun b_lambda!37547 () Bool)

(assert (=> (not b_lambda!37547) (not b!1309020)))

(declare-fun b_lambda!37549 () Bool)

(assert (=> (not b_lambda!37549) (not d!368651)))

(declare-fun m!1460679 () Bool)

(assert (=> d!368651 m!1460679))

(assert (=> d!368651 m!1459915))

(assert (=> d!368651 m!1460005))

(assert (=> b!1309022 m!1459915))

(declare-fun m!1460681 () Bool)

(assert (=> b!1309022 m!1460681))

(assert (=> b!1309021 m!1459915))

(declare-fun m!1460683 () Bool)

(assert (=> b!1309021 m!1460683))

(declare-fun m!1460685 () Bool)

(assert (=> b!1309020 m!1460685))

(declare-fun m!1460687 () Bool)

(assert (=> b!1309023 m!1460687))

(assert (=> b!1308453 d!368651))

(declare-fun d!368653 () Bool)

(assert (=> d!368653 (= (list!4970 (_1!7313 lt!430798)) (list!4975 (c!214798 (_1!7313 lt!430798))))))

(declare-fun bs!329708 () Bool)

(assert (= bs!329708 d!368653))

(declare-fun m!1460689 () Bool)

(assert (=> bs!329708 m!1460689))

(assert (=> b!1308433 d!368653))

(declare-fun d!368655 () Bool)

(declare-fun lt!431004 () BalanceConc!8652)

(assert (=> d!368655 (= (list!4971 lt!431004) (printList!552 thiss!19762 (list!4970 (singletonSeq!864 t1!34))))))

(assert (=> d!368655 (= lt!431004 (printTailRec!534 thiss!19762 (singletonSeq!864 t1!34) 0 (BalanceConc!8653 Empty!4356)))))

(assert (=> d!368655 (= (print!762 thiss!19762 (singletonSeq!864 t1!34)) lt!431004)))

(declare-fun bs!329709 () Bool)

(assert (= bs!329709 d!368655))

(declare-fun m!1460691 () Bool)

(assert (=> bs!329709 m!1460691))

(assert (=> bs!329709 m!1459949))

(declare-fun m!1460693 () Bool)

(assert (=> bs!329709 m!1460693))

(assert (=> bs!329709 m!1460693))

(declare-fun m!1460695 () Bool)

(assert (=> bs!329709 m!1460695))

(assert (=> bs!329709 m!1459949))

(declare-fun m!1460697 () Bool)

(assert (=> bs!329709 m!1460697))

(assert (=> b!1308433 d!368655))

(declare-fun b!1309038 () Bool)

(declare-fun e!839468 () Rule!4386)

(assert (=> b!1309038 (= e!839468 (h!18654 rules!2550))))

(declare-fun b!1309039 () Bool)

(declare-fun lt!431009 () Unit!19316)

(declare-fun Unit!19321 () Unit!19316)

(assert (=> b!1309039 (= lt!431009 Unit!19321)))

(assert (=> b!1309039 false))

(declare-fun e!839470 () Rule!4386)

(declare-fun head!2250 (List!13319) Rule!4386)

(assert (=> b!1309039 (= e!839470 (head!2250 rules!2550))))

(declare-fun b!1309040 () Bool)

(declare-fun e!839467 () Bool)

(declare-fun dynLambda!5749 (Int Rule!4386) Bool)

(assert (=> b!1309040 (= e!839467 (dynLambda!5749 lambda!52703 (h!18654 rules!2550)))))

(declare-fun b!1309041 () Bool)

(assert (=> b!1309041 (= e!839468 e!839470)))

(declare-fun c!214904 () Bool)

(assert (=> b!1309041 (= c!214904 ((_ is Cons!13253) rules!2550))))

(declare-fun d!368657 () Bool)

(declare-fun e!839469 () Bool)

(assert (=> d!368657 e!839469))

(declare-fun res!587430 () Bool)

(assert (=> d!368657 (=> (not res!587430) (not e!839469))))

(declare-fun lt!431010 () Rule!4386)

(assert (=> d!368657 (= res!587430 (dynLambda!5749 lambda!52703 lt!431010))))

(assert (=> d!368657 (= lt!431010 e!839468)))

(declare-fun c!214905 () Bool)

(assert (=> d!368657 (= c!214905 e!839467)))

(declare-fun res!587431 () Bool)

(assert (=> d!368657 (=> (not res!587431) (not e!839467))))

(assert (=> d!368657 (= res!587431 ((_ is Cons!13253) rules!2550))))

(assert (=> d!368657 (exists!289 rules!2550 lambda!52703)))

(assert (=> d!368657 (= (getWitness!180 rules!2550 lambda!52703) lt!431010)))

(declare-fun b!1309042 () Bool)

(assert (=> b!1309042 (= e!839470 (getWitness!180 (t!117942 rules!2550) lambda!52703))))

(declare-fun b!1309043 () Bool)

(assert (=> b!1309043 (= e!839469 (contains!2290 rules!2550 lt!431010))))

(assert (= (and d!368657 res!587431) b!1309040))

(assert (= (and d!368657 c!214905) b!1309038))

(assert (= (and d!368657 (not c!214905)) b!1309041))

(assert (= (and b!1309041 c!214904) b!1309042))

(assert (= (and b!1309041 (not c!214904)) b!1309039))

(assert (= (and d!368657 res!587430) b!1309043))

(declare-fun b_lambda!37551 () Bool)

(assert (=> (not b_lambda!37551) (not b!1309040)))

(declare-fun b_lambda!37553 () Bool)

(assert (=> (not b_lambda!37553) (not d!368657)))

(declare-fun m!1460699 () Bool)

(assert (=> b!1309039 m!1460699))

(declare-fun m!1460701 () Bool)

(assert (=> b!1309043 m!1460701))

(declare-fun m!1460703 () Bool)

(assert (=> d!368657 m!1460703))

(assert (=> d!368657 m!1459923))

(declare-fun m!1460705 () Bool)

(assert (=> b!1309040 m!1460705))

(declare-fun m!1460707 () Bool)

(assert (=> b!1309042 m!1460707))

(assert (=> b!1308433 d!368657))

(declare-fun d!368659 () Bool)

(declare-fun e!839471 () Bool)

(assert (=> d!368659 e!839471))

(declare-fun res!587432 () Bool)

(assert (=> d!368659 (=> (not res!587432) (not e!839471))))

(declare-fun lt!431011 () BalanceConc!8654)

(assert (=> d!368659 (= res!587432 (= (list!4970 lt!431011) (Cons!13252 t1!34 Nil!13252)))))

(assert (=> d!368659 (= lt!431011 (singleton!372 t1!34))))

(assert (=> d!368659 (= (singletonSeq!864 t1!34) lt!431011)))

(declare-fun b!1309044 () Bool)

(assert (=> b!1309044 (= e!839471 (isBalanced!1266 (c!214798 lt!431011)))))

(assert (= (and d!368659 res!587432) b!1309044))

(declare-fun m!1460709 () Bool)

(assert (=> d!368659 m!1460709))

(declare-fun m!1460711 () Bool)

(assert (=> d!368659 m!1460711))

(declare-fun m!1460713 () Bool)

(assert (=> b!1309044 m!1460713))

(assert (=> b!1308433 d!368659))

(declare-fun lt!431012 () tuple2!12854)

(declare-fun e!839473 () Bool)

(declare-fun b!1309045 () Bool)

(assert (=> b!1309045 (= e!839473 (= (list!4971 (_2!7313 lt!431012)) (_2!7314 (lexList!526 thiss!19762 rules!2550 (list!4971 lt!430790)))))))

(declare-fun b!1309046 () Bool)

(declare-fun e!839472 () Bool)

(assert (=> b!1309046 (= e!839472 (not (isEmpty!7838 (_1!7313 lt!431012))))))

(declare-fun b!1309047 () Bool)

(declare-fun e!839474 () Bool)

(assert (=> b!1309047 (= e!839474 e!839472)))

(declare-fun res!587435 () Bool)

(assert (=> b!1309047 (= res!587435 (< (size!10767 (_2!7313 lt!431012)) (size!10767 lt!430790)))))

(assert (=> b!1309047 (=> (not res!587435) (not e!839472))))

(declare-fun b!1309048 () Bool)

(assert (=> b!1309048 (= e!839474 (= (_2!7313 lt!431012) lt!430790))))

(declare-fun b!1309049 () Bool)

(declare-fun res!587433 () Bool)

(assert (=> b!1309049 (=> (not res!587433) (not e!839473))))

(assert (=> b!1309049 (= res!587433 (= (list!4970 (_1!7313 lt!431012)) (_1!7314 (lexList!526 thiss!19762 rules!2550 (list!4971 lt!430790)))))))

(declare-fun d!368661 () Bool)

(assert (=> d!368661 e!839473))

(declare-fun res!587434 () Bool)

(assert (=> d!368661 (=> (not res!587434) (not e!839473))))

(assert (=> d!368661 (= res!587434 e!839474)))

(declare-fun c!214906 () Bool)

(assert (=> d!368661 (= c!214906 (> (size!10774 (_1!7313 lt!431012)) 0))))

(assert (=> d!368661 (= lt!431012 (lexTailRecV2!357 thiss!19762 rules!2550 lt!430790 (BalanceConc!8653 Empty!4356) lt!430790 (BalanceConc!8655 Empty!4357)))))

(assert (=> d!368661 (= (lex!823 thiss!19762 rules!2550 lt!430790) lt!431012)))

(assert (= (and d!368661 c!214906) b!1309047))

(assert (= (and d!368661 (not c!214906)) b!1309048))

(assert (= (and b!1309047 res!587435) b!1309046))

(assert (= (and d!368661 res!587434) b!1309049))

(assert (= (and b!1309049 res!587433) b!1309045))

(declare-fun m!1460715 () Bool)

(assert (=> b!1309049 m!1460715))

(assert (=> b!1309049 m!1459995))

(assert (=> b!1309049 m!1459995))

(assert (=> b!1309049 m!1459997))

(declare-fun m!1460717 () Bool)

(assert (=> d!368661 m!1460717))

(declare-fun m!1460719 () Bool)

(assert (=> d!368661 m!1460719))

(declare-fun m!1460721 () Bool)

(assert (=> b!1309046 m!1460721))

(declare-fun m!1460723 () Bool)

(assert (=> b!1309045 m!1460723))

(assert (=> b!1309045 m!1459995))

(assert (=> b!1309045 m!1459995))

(assert (=> b!1309045 m!1459997))

(declare-fun m!1460725 () Bool)

(assert (=> b!1309047 m!1460725))

(declare-fun m!1460727 () Bool)

(assert (=> b!1309047 m!1460727))

(assert (=> b!1308433 d!368661))

(declare-fun d!368663 () Bool)

(assert (=> d!368663 (= (inv!17633 (tag!2555 (rule!4032 t1!34))) (= (mod (str.len (value!74982 (tag!2555 (rule!4032 t1!34)))) 2) 0))))

(assert (=> b!1308440 d!368663))

(declare-fun d!368665 () Bool)

(declare-fun res!587438 () Bool)

(declare-fun e!839477 () Bool)

(assert (=> d!368665 (=> (not res!587438) (not e!839477))))

(declare-fun semiInverseModEq!860 (Int Int) Bool)

(assert (=> d!368665 (= res!587438 (semiInverseModEq!860 (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (toValue!3512 (transformation!2293 (rule!4032 t1!34)))))))

(assert (=> d!368665 (= (inv!17637 (transformation!2293 (rule!4032 t1!34))) e!839477)))

(declare-fun b!1309052 () Bool)

(declare-fun equivClasses!819 (Int Int) Bool)

(assert (=> b!1309052 (= e!839477 (equivClasses!819 (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (toValue!3512 (transformation!2293 (rule!4032 t1!34)))))))

(assert (= (and d!368665 res!587438) b!1309052))

(declare-fun m!1460729 () Bool)

(assert (=> d!368665 m!1460729))

(declare-fun m!1460731 () Bool)

(assert (=> b!1309052 m!1460731))

(assert (=> b!1308440 d!368665))

(declare-fun d!368667 () Bool)

(assert (=> d!368667 (= (inv!17633 (tag!2555 (rule!4032 t2!34))) (= (mod (str.len (value!74982 (tag!2555 (rule!4032 t2!34)))) 2) 0))))

(assert (=> b!1308461 d!368667))

(declare-fun d!368669 () Bool)

(declare-fun res!587439 () Bool)

(declare-fun e!839478 () Bool)

(assert (=> d!368669 (=> (not res!587439) (not e!839478))))

(assert (=> d!368669 (= res!587439 (semiInverseModEq!860 (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (toValue!3512 (transformation!2293 (rule!4032 t2!34)))))))

(assert (=> d!368669 (= (inv!17637 (transformation!2293 (rule!4032 t2!34))) e!839478)))

(declare-fun b!1309053 () Bool)

(assert (=> b!1309053 (= e!839478 (equivClasses!819 (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (toValue!3512 (transformation!2293 (rule!4032 t2!34)))))))

(assert (= (and d!368669 res!587439) b!1309053))

(declare-fun m!1460733 () Bool)

(assert (=> d!368669 m!1460733))

(declare-fun m!1460735 () Bool)

(assert (=> b!1309053 m!1460735))

(assert (=> b!1308461 d!368669))

(declare-fun d!368671 () Bool)

(declare-fun lt!431013 () Bool)

(assert (=> d!368671 (= lt!431013 (select (content!1849 lt!430789) lt!430791))))

(declare-fun e!839480 () Bool)

(assert (=> d!368671 (= lt!431013 e!839480)))

(declare-fun res!587440 () Bool)

(assert (=> d!368671 (=> (not res!587440) (not e!839480))))

(assert (=> d!368671 (= res!587440 ((_ is Cons!13251) lt!430789))))

(assert (=> d!368671 (= (contains!2289 lt!430789 lt!430791) lt!431013)))

(declare-fun b!1309054 () Bool)

(declare-fun e!839479 () Bool)

(assert (=> b!1309054 (= e!839480 e!839479)))

(declare-fun res!587441 () Bool)

(assert (=> b!1309054 (=> res!587441 e!839479)))

(assert (=> b!1309054 (= res!587441 (= (h!18652 lt!430789) lt!430791))))

(declare-fun b!1309055 () Bool)

(assert (=> b!1309055 (= e!839479 (contains!2289 (t!117940 lt!430789) lt!430791))))

(assert (= (and d!368671 res!587440) b!1309054))

(assert (= (and b!1309054 (not res!587441)) b!1309055))

(declare-fun m!1460737 () Bool)

(assert (=> d!368671 m!1460737))

(declare-fun m!1460739 () Bool)

(assert (=> d!368671 m!1460739))

(declare-fun m!1460741 () Bool)

(assert (=> b!1309055 m!1460741))

(assert (=> b!1308441 d!368671))

(declare-fun bs!329710 () Bool)

(declare-fun d!368673 () Bool)

(assert (= bs!329710 (and d!368673 b!1308437)))

(declare-fun lambda!52744 () Int)

(assert (=> bs!329710 (not (= lambda!52744 lambda!52703))))

(assert (=> d!368673 true))

(declare-fun order!7963 () Int)

(declare-fun dynLambda!5750 (Int Int) Int)

(assert (=> d!368673 (< (dynLambda!5750 order!7963 lambda!52703) (dynLambda!5750 order!7963 lambda!52744))))

(declare-fun forall!3278 (List!13319 Int) Bool)

(assert (=> d!368673 (= (exists!289 rules!2550 lambda!52703) (not (forall!3278 rules!2550 lambda!52744)))))

(declare-fun bs!329711 () Bool)

(assert (= bs!329711 d!368673))

(declare-fun m!1460743 () Bool)

(assert (=> bs!329711 m!1460743))

(assert (=> b!1308437 d!368673))

(declare-fun bs!329712 () Bool)

(declare-fun d!368675 () Bool)

(assert (= bs!329712 (and d!368675 b!1308437)))

(declare-fun lambda!52747 () Int)

(assert (=> bs!329712 (not (= lambda!52747 lambda!52703))))

(declare-fun bs!329713 () Bool)

(assert (= bs!329713 (and d!368675 d!368673)))

(assert (=> bs!329713 (not (= lambda!52747 lambda!52744))))

(assert (=> d!368675 true))

(assert (=> d!368675 true))

(declare-fun order!7965 () Int)

(declare-fun dynLambda!5751 (Int Int) Int)

(assert (=> d!368675 (< (dynLambda!5751 order!7965 lambda!52701) (dynLambda!5750 order!7963 lambda!52747))))

(assert (=> d!368675 (exists!289 rules!2550 lambda!52747)))

(declare-fun lt!431016 () Unit!19316)

(declare-fun choose!8001 (List!13319 Int Regex!3607) Unit!19316)

(assert (=> d!368675 (= lt!431016 (choose!8001 rules!2550 lambda!52701 lt!430802))))

(assert (=> d!368675 (contains!2291 (map!2906 rules!2550 lambda!52701) lt!430802)))

(assert (=> d!368675 (= (lemmaMapContains!36 rules!2550 lambda!52701 lt!430802) lt!431016)))

(declare-fun bs!329714 () Bool)

(assert (= bs!329714 d!368675))

(declare-fun m!1460745 () Bool)

(assert (=> bs!329714 m!1460745))

(declare-fun m!1460747 () Bool)

(assert (=> bs!329714 m!1460747))

(assert (=> bs!329714 m!1459915))

(assert (=> bs!329714 m!1459915))

(assert (=> bs!329714 m!1459917))

(assert (=> b!1308437 d!368675))

(declare-fun d!368677 () Bool)

(declare-fun choose!8002 (Int) Bool)

(assert (=> d!368677 (= (Exists!765 lambda!52700) (choose!8002 lambda!52700))))

(declare-fun bs!329715 () Bool)

(assert (= bs!329715 d!368677))

(declare-fun m!1460749 () Bool)

(assert (=> bs!329715 m!1460749))

(assert (=> b!1308458 d!368677))

(declare-fun bs!329716 () Bool)

(declare-fun d!368679 () Bool)

(assert (= bs!329716 (and d!368679 b!1308458)))

(declare-fun lambda!52750 () Int)

(assert (=> bs!329716 (= lambda!52750 lambda!52700)))

(assert (=> d!368679 true))

(assert (=> d!368679 true))

(assert (=> d!368679 (Exists!765 lambda!52750)))

(declare-fun lt!431019 () Unit!19316)

(declare-fun choose!8003 (Regex!3607 List!13317) Unit!19316)

(assert (=> d!368679 (= lt!431019 (choose!8003 lt!430792 lt!430803))))

(assert (=> d!368679 (validRegex!1541 lt!430792)))

(assert (=> d!368679 (= (lemmaPrefixMatchThenExistsStringThatMatches!83 lt!430792 lt!430803) lt!431019)))

(declare-fun bs!329717 () Bool)

(assert (= bs!329717 d!368679))

(declare-fun m!1460751 () Bool)

(assert (=> bs!329717 m!1460751))

(declare-fun m!1460753 () Bool)

(assert (=> bs!329717 m!1460753))

(assert (=> bs!329717 m!1460381))

(assert (=> b!1308458 d!368679))

(declare-fun b!1309066 () Bool)

(declare-fun res!587444 () Bool)

(declare-fun e!839483 () Bool)

(assert (=> b!1309066 (=> (not res!587444) (not e!839483))))

(declare-fun lt!431020 () List!13317)

(assert (=> b!1309066 (= res!587444 (= (size!10773 lt!431020) (+ (size!10773 lt!430803) (size!10773 (getSuffix!463 lt!430789 lt!430803)))))))

(declare-fun b!1309064 () Bool)

(declare-fun e!839484 () List!13317)

(assert (=> b!1309064 (= e!839484 (getSuffix!463 lt!430789 lt!430803))))

(declare-fun b!1309065 () Bool)

(assert (=> b!1309065 (= e!839484 (Cons!13251 (h!18652 lt!430803) (++!3370 (t!117940 lt!430803) (getSuffix!463 lt!430789 lt!430803))))))

(declare-fun d!368681 () Bool)

(assert (=> d!368681 e!839483))

(declare-fun res!587445 () Bool)

(assert (=> d!368681 (=> (not res!587445) (not e!839483))))

(assert (=> d!368681 (= res!587445 (= (content!1849 lt!431020) ((_ map or) (content!1849 lt!430803) (content!1849 (getSuffix!463 lt!430789 lt!430803)))))))

(assert (=> d!368681 (= lt!431020 e!839484)))

(declare-fun c!214907 () Bool)

(assert (=> d!368681 (= c!214907 ((_ is Nil!13251) lt!430803))))

(assert (=> d!368681 (= (++!3370 lt!430803 (getSuffix!463 lt!430789 lt!430803)) lt!431020)))

(declare-fun b!1309067 () Bool)

(assert (=> b!1309067 (= e!839483 (or (not (= (getSuffix!463 lt!430789 lt!430803) Nil!13251)) (= lt!431020 lt!430803)))))

(assert (= (and d!368681 c!214907) b!1309064))

(assert (= (and d!368681 (not c!214907)) b!1309065))

(assert (= (and d!368681 res!587445) b!1309066))

(assert (= (and b!1309066 res!587444) b!1309067))

(declare-fun m!1460755 () Bool)

(assert (=> b!1309066 m!1460755))

(declare-fun m!1460757 () Bool)

(assert (=> b!1309066 m!1460757))

(assert (=> b!1309066 m!1459981))

(declare-fun m!1460759 () Bool)

(assert (=> b!1309066 m!1460759))

(assert (=> b!1309065 m!1459981))

(declare-fun m!1460761 () Bool)

(assert (=> b!1309065 m!1460761))

(declare-fun m!1460763 () Bool)

(assert (=> d!368681 m!1460763))

(assert (=> d!368681 m!1460101))

(assert (=> d!368681 m!1459981))

(declare-fun m!1460765 () Bool)

(assert (=> d!368681 m!1460765))

(assert (=> b!1308460 d!368681))

(declare-fun d!368683 () Bool)

(declare-fun lt!431023 () List!13317)

(assert (=> d!368683 (= (++!3370 lt!430803 lt!431023) lt!430789)))

(declare-fun e!839487 () List!13317)

(assert (=> d!368683 (= lt!431023 e!839487)))

(declare-fun c!214910 () Bool)

(assert (=> d!368683 (= c!214910 ((_ is Cons!13251) lt!430803))))

(assert (=> d!368683 (>= (size!10773 lt!430789) (size!10773 lt!430803))))

(assert (=> d!368683 (= (getSuffix!463 lt!430789 lt!430803) lt!431023)))

(declare-fun b!1309072 () Bool)

(assert (=> b!1309072 (= e!839487 (getSuffix!463 (tail!1872 lt!430789) (t!117940 lt!430803)))))

(declare-fun b!1309073 () Bool)

(assert (=> b!1309073 (= e!839487 lt!430789)))

(assert (= (and d!368683 c!214910) b!1309072))

(assert (= (and d!368683 (not c!214910)) b!1309073))

(declare-fun m!1460767 () Bool)

(assert (=> d!368683 m!1460767))

(declare-fun m!1460769 () Bool)

(assert (=> d!368683 m!1460769))

(assert (=> d!368683 m!1460757))

(assert (=> b!1309072 m!1460385))

(assert (=> b!1309072 m!1460385))

(declare-fun m!1460771 () Bool)

(assert (=> b!1309072 m!1460771))

(assert (=> b!1308460 d!368683))

(declare-fun d!368685 () Bool)

(declare-fun lt!431026 () List!13317)

(declare-fun dynLambda!5752 (Int List!13317) Bool)

(assert (=> d!368685 (dynLambda!5752 lambda!52700 lt!431026)))

(declare-fun choose!8004 (Int) List!13317)

(assert (=> d!368685 (= lt!431026 (choose!8004 lambda!52700))))

(assert (=> d!368685 (Exists!765 lambda!52700)))

(assert (=> d!368685 (= (pickWitness!70 lambda!52700) lt!431026)))

(declare-fun b_lambda!37555 () Bool)

(assert (=> (not b_lambda!37555) (not d!368685)))

(declare-fun bs!329718 () Bool)

(assert (= bs!329718 d!368685))

(declare-fun m!1460773 () Bool)

(assert (=> bs!329718 m!1460773))

(declare-fun m!1460775 () Bool)

(assert (=> bs!329718 m!1460775))

(assert (=> bs!329718 m!1459911))

(assert (=> b!1308460 d!368685))

(declare-fun bs!329719 () Bool)

(declare-fun d!368687 () Bool)

(assert (= bs!329719 (and d!368687 b!1308437)))

(declare-fun lambda!52753 () Int)

(assert (=> bs!329719 (not (= lambda!52753 lambda!52703))))

(declare-fun bs!329720 () Bool)

(assert (= bs!329720 (and d!368687 d!368673)))

(assert (=> bs!329720 (not (= lambda!52753 lambda!52744))))

(declare-fun bs!329721 () Bool)

(assert (= bs!329721 (and d!368687 d!368675)))

(assert (=> bs!329721 (not (= lambda!52753 lambda!52747))))

(assert (=> d!368687 true))

(declare-fun lt!431029 () Bool)

(assert (=> d!368687 (= lt!431029 (forall!3278 rules!2550 lambda!52753))))

(declare-fun e!839493 () Bool)

(assert (=> d!368687 (= lt!431029 e!839493)))

(declare-fun res!587451 () Bool)

(assert (=> d!368687 (=> res!587451 e!839493)))

(assert (=> d!368687 (= res!587451 (not ((_ is Cons!13253) rules!2550)))))

(assert (=> d!368687 (= (rulesValidInductive!716 thiss!19762 rules!2550) lt!431029)))

(declare-fun b!1309078 () Bool)

(declare-fun e!839492 () Bool)

(assert (=> b!1309078 (= e!839493 e!839492)))

(declare-fun res!587450 () Bool)

(assert (=> b!1309078 (=> (not res!587450) (not e!839492))))

(declare-fun ruleValid!555 (LexerInterface!1988 Rule!4386) Bool)

(assert (=> b!1309078 (= res!587450 (ruleValid!555 thiss!19762 (h!18654 rules!2550)))))

(declare-fun b!1309079 () Bool)

(assert (=> b!1309079 (= e!839492 (rulesValidInductive!716 thiss!19762 (t!117942 rules!2550)))))

(assert (= (and d!368687 (not res!587451)) b!1309078))

(assert (= (and b!1309078 res!587450) b!1309079))

(declare-fun m!1460777 () Bool)

(assert (=> d!368687 m!1460777))

(declare-fun m!1460779 () Bool)

(assert (=> b!1309078 m!1460779))

(declare-fun m!1460781 () Bool)

(assert (=> b!1309079 m!1460781))

(assert (=> b!1308438 d!368687))

(declare-fun d!368689 () Bool)

(assert (=> d!368689 (= (list!4971 lt!430788) (list!4974 (c!214796 lt!430788)))))

(declare-fun bs!329722 () Bool)

(assert (= bs!329722 d!368689))

(declare-fun m!1460783 () Bool)

(assert (=> bs!329722 m!1460783))

(assert (=> b!1308438 d!368689))

(declare-fun d!368691 () Bool)

(declare-fun res!587456 () Bool)

(declare-fun e!839498 () Bool)

(assert (=> d!368691 (=> res!587456 e!839498)))

(assert (=> d!368691 (= res!587456 (not ((_ is Cons!13253) rules!2550)))))

(assert (=> d!368691 (= (sepAndNonSepRulesDisjointChars!666 rules!2550 rules!2550) e!839498)))

(declare-fun b!1309086 () Bool)

(declare-fun e!839499 () Bool)

(assert (=> b!1309086 (= e!839498 e!839499)))

(declare-fun res!587457 () Bool)

(assert (=> b!1309086 (=> (not res!587457) (not e!839499))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!304 (Rule!4386 List!13319) Bool)

(assert (=> b!1309086 (= res!587457 (ruleDisjointCharsFromAllFromOtherType!304 (h!18654 rules!2550) rules!2550))))

(declare-fun b!1309087 () Bool)

(assert (=> b!1309087 (= e!839499 (sepAndNonSepRulesDisjointChars!666 rules!2550 (t!117942 rules!2550)))))

(assert (= (and d!368691 (not res!587456)) b!1309086))

(assert (= (and b!1309086 res!587457) b!1309087))

(declare-fun m!1460785 () Bool)

(assert (=> b!1309086 m!1460785))

(declare-fun m!1460787 () Bool)

(assert (=> b!1309087 m!1460787))

(assert (=> b!1308459 d!368691))

(declare-fun d!368693 () Bool)

(declare-fun lt!431031 () Bool)

(declare-fun e!839501 () Bool)

(assert (=> d!368693 (= lt!431031 e!839501)))

(declare-fun res!587460 () Bool)

(assert (=> d!368693 (=> (not res!587460) (not e!839501))))

(assert (=> d!368693 (= res!587460 (= (list!4970 (_1!7313 (lex!823 thiss!19762 rules!2550 (print!762 thiss!19762 (singletonSeq!864 t1!34))))) (list!4970 (singletonSeq!864 t1!34))))))

(declare-fun e!839500 () Bool)

(assert (=> d!368693 (= lt!431031 e!839500)))

(declare-fun res!587459 () Bool)

(assert (=> d!368693 (=> (not res!587459) (not e!839500))))

(declare-fun lt!431030 () tuple2!12854)

(assert (=> d!368693 (= res!587459 (= (size!10774 (_1!7313 lt!431030)) 1))))

(assert (=> d!368693 (= lt!431030 (lex!823 thiss!19762 rules!2550 (print!762 thiss!19762 (singletonSeq!864 t1!34))))))

(assert (=> d!368693 (not (isEmpty!7830 rules!2550))))

(assert (=> d!368693 (= (rulesProduceIndividualToken!957 thiss!19762 rules!2550 t1!34) lt!431031)))

(declare-fun b!1309088 () Bool)

(declare-fun res!587458 () Bool)

(assert (=> b!1309088 (=> (not res!587458) (not e!839500))))

(assert (=> b!1309088 (= res!587458 (= (apply!2978 (_1!7313 lt!431030) 0) t1!34))))

(declare-fun b!1309089 () Bool)

(assert (=> b!1309089 (= e!839500 (isEmpty!7831 (_2!7313 lt!431030)))))

(declare-fun b!1309090 () Bool)

(assert (=> b!1309090 (= e!839501 (isEmpty!7831 (_2!7313 (lex!823 thiss!19762 rules!2550 (print!762 thiss!19762 (singletonSeq!864 t1!34))))))))

(assert (= (and d!368693 res!587459) b!1309088))

(assert (= (and b!1309088 res!587458) b!1309089))

(assert (= (and d!368693 res!587460) b!1309090))

(assert (=> d!368693 m!1459949))

(assert (=> d!368693 m!1460693))

(assert (=> d!368693 m!1459951))

(declare-fun m!1460789 () Bool)

(assert (=> d!368693 m!1460789))

(assert (=> d!368693 m!1459949))

(assert (=> d!368693 m!1459951))

(declare-fun m!1460791 () Bool)

(assert (=> d!368693 m!1460791))

(assert (=> d!368693 m!1459949))

(assert (=> d!368693 m!1459941))

(declare-fun m!1460793 () Bool)

(assert (=> d!368693 m!1460793))

(declare-fun m!1460795 () Bool)

(assert (=> b!1309088 m!1460795))

(declare-fun m!1460797 () Bool)

(assert (=> b!1309089 m!1460797))

(assert (=> b!1309090 m!1459949))

(assert (=> b!1309090 m!1459949))

(assert (=> b!1309090 m!1459951))

(assert (=> b!1309090 m!1459951))

(assert (=> b!1309090 m!1460789))

(declare-fun m!1460799 () Bool)

(assert (=> b!1309090 m!1460799))

(assert (=> b!1308445 d!368693))

(declare-fun d!368695 () Bool)

(declare-fun lt!431034 () Bool)

(assert (=> d!368695 (= lt!431034 (isEmpty!7835 (list!4971 (_2!7313 lt!430801))))))

(declare-fun isEmpty!7841 (Conc!4356) Bool)

(assert (=> d!368695 (= lt!431034 (isEmpty!7841 (c!214796 (_2!7313 lt!430801))))))

(assert (=> d!368695 (= (isEmpty!7831 (_2!7313 lt!430801)) lt!431034)))

(declare-fun bs!329723 () Bool)

(assert (= bs!329723 d!368695))

(declare-fun m!1460801 () Bool)

(assert (=> bs!329723 m!1460801))

(assert (=> bs!329723 m!1460801))

(declare-fun m!1460803 () Bool)

(assert (=> bs!329723 m!1460803))

(declare-fun m!1460805 () Bool)

(assert (=> bs!329723 m!1460805))

(assert (=> b!1308466 d!368695))

(declare-fun d!368697 () Bool)

(declare-fun lt!431035 () Bool)

(assert (=> d!368697 (= lt!431035 (isEmpty!7835 (list!4971 (_2!7313 lt!430798))))))

(assert (=> d!368697 (= lt!431035 (isEmpty!7841 (c!214796 (_2!7313 lt!430798))))))

(assert (=> d!368697 (= (isEmpty!7831 (_2!7313 lt!430798)) lt!431035)))

(declare-fun bs!329724 () Bool)

(assert (= bs!329724 d!368697))

(declare-fun m!1460807 () Bool)

(assert (=> bs!329724 m!1460807))

(assert (=> bs!329724 m!1460807))

(declare-fun m!1460809 () Bool)

(assert (=> bs!329724 m!1460809))

(declare-fun m!1460811 () Bool)

(assert (=> bs!329724 m!1460811))

(assert (=> b!1308446 d!368697))

(declare-fun d!368699 () Bool)

(declare-fun lt!431036 () Bool)

(assert (=> d!368699 (= lt!431036 (select (content!1849 lt!430789) lt!430804))))

(declare-fun e!839503 () Bool)

(assert (=> d!368699 (= lt!431036 e!839503)))

(declare-fun res!587461 () Bool)

(assert (=> d!368699 (=> (not res!587461) (not e!839503))))

(assert (=> d!368699 (= res!587461 ((_ is Cons!13251) lt!430789))))

(assert (=> d!368699 (= (contains!2289 lt!430789 lt!430804) lt!431036)))

(declare-fun b!1309091 () Bool)

(declare-fun e!839502 () Bool)

(assert (=> b!1309091 (= e!839503 e!839502)))

(declare-fun res!587462 () Bool)

(assert (=> b!1309091 (=> res!587462 e!839502)))

(assert (=> b!1309091 (= res!587462 (= (h!18652 lt!430789) lt!430804))))

(declare-fun b!1309092 () Bool)

(assert (=> b!1309092 (= e!839502 (contains!2289 (t!117940 lt!430789) lt!430804))))

(assert (= (and d!368699 res!587461) b!1309091))

(assert (= (and b!1309091 (not res!587462)) b!1309092))

(assert (=> d!368699 m!1460737))

(declare-fun m!1460813 () Bool)

(assert (=> d!368699 m!1460813))

(declare-fun m!1460815 () Bool)

(assert (=> b!1309092 m!1460815))

(assert (=> b!1308467 d!368699))

(declare-fun d!368701 () Bool)

(declare-fun prefixMatchZipperSequence!166 (Regex!3607 BalanceConc!8652) Bool)

(declare-fun ++!3372 (BalanceConc!8652 BalanceConc!8652) BalanceConc!8652)

(declare-fun singletonSeq!866 (C!7504) BalanceConc!8652)

(assert (=> d!368701 (= (separableTokensPredicate!271 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!166 (rulesRegex!178 thiss!19762 rules!2550) (++!3372 (charsOf!1265 t1!34) (singletonSeq!866 (apply!2973 (charsOf!1265 t2!34) 0))))))))

(declare-fun bs!329725 () Bool)

(assert (= bs!329725 d!368701))

(declare-fun m!1460817 () Bool)

(assert (=> bs!329725 m!1460817))

(declare-fun m!1460819 () Bool)

(assert (=> bs!329725 m!1460819))

(assert (=> bs!329725 m!1459931))

(assert (=> bs!329725 m!1459935))

(declare-fun m!1460821 () Bool)

(assert (=> bs!329725 m!1460821))

(declare-fun m!1460823 () Bool)

(assert (=> bs!329725 m!1460823))

(assert (=> bs!329725 m!1459957))

(assert (=> bs!329725 m!1460817))

(assert (=> bs!329725 m!1459957))

(assert (=> bs!329725 m!1459931))

(assert (=> bs!329725 m!1460819))

(assert (=> bs!329725 m!1460821))

(assert (=> bs!329725 m!1459935))

(assert (=> b!1308464 d!368701))

(declare-fun b!1309093 () Bool)

(declare-fun e!839506 () Bool)

(assert (=> b!1309093 (= e!839506 (inv!15 (value!74983 t1!34)))))

(declare-fun b!1309094 () Bool)

(declare-fun e!839504 () Bool)

(assert (=> b!1309094 (= e!839504 (inv!17 (value!74983 t1!34)))))

(declare-fun d!368703 () Bool)

(declare-fun c!214912 () Bool)

(assert (=> d!368703 (= c!214912 ((_ is IntegerValue!7149) (value!74983 t1!34)))))

(declare-fun e!839505 () Bool)

(assert (=> d!368703 (= (inv!21 (value!74983 t1!34)) e!839505)))

(declare-fun b!1309095 () Bool)

(assert (=> b!1309095 (= e!839505 (inv!16 (value!74983 t1!34)))))

(declare-fun b!1309096 () Bool)

(assert (=> b!1309096 (= e!839505 e!839504)))

(declare-fun c!214911 () Bool)

(assert (=> b!1309096 (= c!214911 ((_ is IntegerValue!7150) (value!74983 t1!34)))))

(declare-fun b!1309097 () Bool)

(declare-fun res!587463 () Bool)

(assert (=> b!1309097 (=> res!587463 e!839506)))

(assert (=> b!1309097 (= res!587463 (not ((_ is IntegerValue!7151) (value!74983 t1!34))))))

(assert (=> b!1309097 (= e!839504 e!839506)))

(assert (= (and d!368703 c!214912) b!1309095))

(assert (= (and d!368703 (not c!214912)) b!1309096))

(assert (= (and b!1309096 c!214911) b!1309094))

(assert (= (and b!1309096 (not c!214911)) b!1309097))

(assert (= (and b!1309097 (not res!587463)) b!1309093))

(declare-fun m!1460825 () Bool)

(assert (=> b!1309093 m!1460825))

(declare-fun m!1460827 () Bool)

(assert (=> b!1309094 m!1460827))

(declare-fun m!1460829 () Bool)

(assert (=> b!1309095 m!1460829))

(assert (=> b!1308442 d!368703))

(declare-fun d!368705 () Bool)

(declare-fun lt!431039 () Int)

(assert (=> d!368705 (= lt!431039 (size!10773 (list!4971 lt!430788)))))

(declare-fun size!10779 (Conc!4356) Int)

(assert (=> d!368705 (= lt!431039 (size!10779 (c!214796 lt!430788)))))

(assert (=> d!368705 (= (size!10767 lt!430788) lt!431039)))

(declare-fun bs!329726 () Bool)

(assert (= bs!329726 d!368705))

(assert (=> bs!329726 m!1459969))

(assert (=> bs!329726 m!1459969))

(declare-fun m!1460831 () Bool)

(assert (=> bs!329726 m!1460831))

(declare-fun m!1460833 () Bool)

(assert (=> bs!329726 m!1460833))

(assert (=> b!1308463 d!368705))

(declare-fun d!368707 () Bool)

(declare-fun lt!431040 () BalanceConc!8652)

(assert (=> d!368707 (= (list!4971 lt!431040) (originalCharacters!3155 t2!34))))

(assert (=> d!368707 (= lt!431040 (dynLambda!5742 (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (value!74983 t2!34)))))

(assert (=> d!368707 (= (charsOf!1265 t2!34) lt!431040)))

(declare-fun b_lambda!37557 () Bool)

(assert (=> (not b_lambda!37557) (not d!368707)))

(assert (=> d!368707 t!117959))

(declare-fun b_and!87441 () Bool)

(assert (= b_and!87413 (and (=> t!117959 result!84518) b_and!87441)))

(assert (=> d!368707 t!117961))

(declare-fun b_and!87443 () Bool)

(assert (= b_and!87415 (and (=> t!117961 result!84520) b_and!87443)))

(assert (=> d!368707 t!117963))

(declare-fun b_and!87445 () Bool)

(assert (= b_and!87417 (and (=> t!117963 result!84522) b_and!87445)))

(declare-fun m!1460835 () Bool)

(assert (=> d!368707 m!1460835))

(assert (=> d!368707 m!1460345))

(assert (=> b!1308463 d!368707))

(declare-fun d!368709 () Bool)

(assert (=> d!368709 (= (inv!17633 (tag!2555 (h!18654 rules!2550))) (= (mod (str.len (value!74982 (tag!2555 (h!18654 rules!2550)))) 2) 0))))

(assert (=> b!1308444 d!368709))

(declare-fun d!368711 () Bool)

(declare-fun res!587464 () Bool)

(declare-fun e!839507 () Bool)

(assert (=> d!368711 (=> (not res!587464) (not e!839507))))

(assert (=> d!368711 (= res!587464 (semiInverseModEq!860 (toChars!3371 (transformation!2293 (h!18654 rules!2550))) (toValue!3512 (transformation!2293 (h!18654 rules!2550)))))))

(assert (=> d!368711 (= (inv!17637 (transformation!2293 (h!18654 rules!2550))) e!839507)))

(declare-fun b!1309098 () Bool)

(assert (=> b!1309098 (= e!839507 (equivClasses!819 (toChars!3371 (transformation!2293 (h!18654 rules!2550))) (toValue!3512 (transformation!2293 (h!18654 rules!2550)))))))

(assert (= (and d!368711 res!587464) b!1309098))

(declare-fun m!1460837 () Bool)

(assert (=> d!368711 m!1460837))

(declare-fun m!1460839 () Bool)

(assert (=> b!1309098 m!1460839))

(assert (=> b!1308444 d!368711))

(declare-fun d!368713 () Bool)

(declare-fun lt!431041 () Bool)

(assert (=> d!368713 (= lt!431041 (select (content!1849 lt!430803) lt!430791))))

(declare-fun e!839509 () Bool)

(assert (=> d!368713 (= lt!431041 e!839509)))

(declare-fun res!587465 () Bool)

(assert (=> d!368713 (=> (not res!587465) (not e!839509))))

(assert (=> d!368713 (= res!587465 ((_ is Cons!13251) lt!430803))))

(assert (=> d!368713 (= (contains!2289 lt!430803 lt!430791) lt!431041)))

(declare-fun b!1309099 () Bool)

(declare-fun e!839508 () Bool)

(assert (=> b!1309099 (= e!839509 e!839508)))

(declare-fun res!587466 () Bool)

(assert (=> b!1309099 (=> res!587466 e!839508)))

(assert (=> b!1309099 (= res!587466 (= (h!18652 lt!430803) lt!430791))))

(declare-fun b!1309100 () Bool)

(assert (=> b!1309100 (= e!839508 (contains!2289 (t!117940 lt!430803) lt!430791))))

(assert (= (and d!368713 res!587465) b!1309099))

(assert (= (and b!1309099 (not res!587466)) b!1309100))

(assert (=> d!368713 m!1460101))

(declare-fun m!1460841 () Bool)

(assert (=> d!368713 m!1460841))

(declare-fun m!1460843 () Bool)

(assert (=> b!1309100 m!1460843))

(assert (=> b!1308465 d!368713))

(declare-fun d!368715 () Bool)

(declare-fun lt!431042 () C!7504)

(assert (=> d!368715 (= lt!431042 (apply!2976 (list!4971 lt!430795) 0))))

(assert (=> d!368715 (= lt!431042 (apply!2977 (c!214796 lt!430795) 0))))

(declare-fun e!839510 () Bool)

(assert (=> d!368715 e!839510))

(declare-fun res!587467 () Bool)

(assert (=> d!368715 (=> (not res!587467) (not e!839510))))

(assert (=> d!368715 (= res!587467 (<= 0 0))))

(assert (=> d!368715 (= (apply!2973 lt!430795 0) lt!431042)))

(declare-fun b!1309101 () Bool)

(assert (=> b!1309101 (= e!839510 (< 0 (size!10767 lt!430795)))))

(assert (= (and d!368715 res!587467) b!1309101))

(assert (=> d!368715 m!1459933))

(assert (=> d!368715 m!1459933))

(declare-fun m!1460845 () Bool)

(assert (=> d!368715 m!1460845))

(declare-fun m!1460847 () Bool)

(assert (=> d!368715 m!1460847))

(declare-fun m!1460849 () Bool)

(assert (=> b!1309101 m!1460849))

(assert (=> b!1308465 d!368715))

(declare-fun d!368717 () Bool)

(assert (=> d!368717 (= (isEmpty!7830 rules!2550) ((_ is Nil!13253) rules!2550))))

(assert (=> b!1308443 d!368717))

(declare-fun b!1309114 () Bool)

(declare-fun e!839513 () Bool)

(declare-fun tp!381722 () Bool)

(assert (=> b!1309114 (= e!839513 tp!381722)))

(declare-fun b!1309112 () Bool)

(declare-fun tp_is_empty!6611 () Bool)

(assert (=> b!1309112 (= e!839513 tp_is_empty!6611)))

(declare-fun b!1309113 () Bool)

(declare-fun tp!381725 () Bool)

(declare-fun tp!381723 () Bool)

(assert (=> b!1309113 (= e!839513 (and tp!381725 tp!381723))))

(declare-fun b!1309115 () Bool)

(declare-fun tp!381724 () Bool)

(declare-fun tp!381726 () Bool)

(assert (=> b!1309115 (= e!839513 (and tp!381724 tp!381726))))

(assert (=> b!1308440 (= tp!381657 e!839513)))

(assert (= (and b!1308440 ((_ is ElementMatch!3607) (regex!2293 (rule!4032 t1!34)))) b!1309112))

(assert (= (and b!1308440 ((_ is Concat!5991) (regex!2293 (rule!4032 t1!34)))) b!1309113))

(assert (= (and b!1308440 ((_ is Star!3607) (regex!2293 (rule!4032 t1!34)))) b!1309114))

(assert (= (and b!1308440 ((_ is Union!3607) (regex!2293 (rule!4032 t1!34)))) b!1309115))

(declare-fun b!1309118 () Bool)

(declare-fun e!839514 () Bool)

(declare-fun tp!381727 () Bool)

(assert (=> b!1309118 (= e!839514 tp!381727)))

(declare-fun b!1309116 () Bool)

(assert (=> b!1309116 (= e!839514 tp_is_empty!6611)))

(declare-fun b!1309117 () Bool)

(declare-fun tp!381730 () Bool)

(declare-fun tp!381728 () Bool)

(assert (=> b!1309117 (= e!839514 (and tp!381730 tp!381728))))

(declare-fun b!1309119 () Bool)

(declare-fun tp!381729 () Bool)

(declare-fun tp!381731 () Bool)

(assert (=> b!1309119 (= e!839514 (and tp!381729 tp!381731))))

(assert (=> b!1308461 (= tp!381658 e!839514)))

(assert (= (and b!1308461 ((_ is ElementMatch!3607) (regex!2293 (rule!4032 t2!34)))) b!1309116))

(assert (= (and b!1308461 ((_ is Concat!5991) (regex!2293 (rule!4032 t2!34)))) b!1309117))

(assert (= (and b!1308461 ((_ is Star!3607) (regex!2293 (rule!4032 t2!34)))) b!1309118))

(assert (= (and b!1308461 ((_ is Union!3607) (regex!2293 (rule!4032 t2!34)))) b!1309119))

(declare-fun b!1309130 () Bool)

(declare-fun b_free!31499 () Bool)

(declare-fun b_next!32203 () Bool)

(assert (=> b!1309130 (= b_free!31499 (not b_next!32203))))

(declare-fun tp!381742 () Bool)

(declare-fun b_and!87447 () Bool)

(assert (=> b!1309130 (= tp!381742 b_and!87447)))

(declare-fun b_free!31501 () Bool)

(declare-fun b_next!32205 () Bool)

(assert (=> b!1309130 (= b_free!31501 (not b_next!32205))))

(declare-fun tb!69685 () Bool)

(declare-fun t!117977 () Bool)

(assert (=> (and b!1309130 (= (toChars!3371 (transformation!2293 (h!18654 (t!117942 rules!2550)))) (toChars!3371 (transformation!2293 (rule!4032 t1!34)))) t!117977) tb!69685))

(declare-fun result!84544 () Bool)

(assert (= result!84544 result!84502))

(assert (=> d!368503 t!117977))

(assert (=> b!1308738 t!117977))

(declare-fun tb!69687 () Bool)

(declare-fun t!117979 () Bool)

(assert (=> (and b!1309130 (= (toChars!3371 (transformation!2293 (h!18654 (t!117942 rules!2550)))) (toChars!3371 (transformation!2293 (rule!4032 t2!34)))) t!117979) tb!69687))

(declare-fun result!84546 () Bool)

(assert (= result!84546 result!84518))

(assert (=> b!1308740 t!117979))

(assert (=> d!368707 t!117979))

(declare-fun b_and!87449 () Bool)

(declare-fun tp!381740 () Bool)

(assert (=> b!1309130 (= tp!381740 (and (=> t!117977 result!84544) (=> t!117979 result!84546) b_and!87449))))

(declare-fun e!839526 () Bool)

(assert (=> b!1309130 (= e!839526 (and tp!381742 tp!381740))))

(declare-fun b!1309129 () Bool)

(declare-fun tp!381741 () Bool)

(declare-fun e!839524 () Bool)

(assert (=> b!1309129 (= e!839524 (and tp!381741 (inv!17633 (tag!2555 (h!18654 (t!117942 rules!2550)))) (inv!17637 (transformation!2293 (h!18654 (t!117942 rules!2550)))) e!839526))))

(declare-fun b!1309128 () Bool)

(declare-fun e!839523 () Bool)

(declare-fun tp!381743 () Bool)

(assert (=> b!1309128 (= e!839523 (and e!839524 tp!381743))))

(assert (=> b!1308439 (= tp!381659 e!839523)))

(assert (= b!1309129 b!1309130))

(assert (= b!1309128 b!1309129))

(assert (= (and b!1308439 ((_ is Cons!13253) (t!117942 rules!2550))) b!1309128))

(declare-fun m!1460851 () Bool)

(assert (=> b!1309129 m!1460851))

(declare-fun m!1460853 () Bool)

(assert (=> b!1309129 m!1460853))

(declare-fun b!1309135 () Bool)

(declare-fun e!839529 () Bool)

(declare-fun tp!381746 () Bool)

(assert (=> b!1309135 (= e!839529 (and tp_is_empty!6611 tp!381746))))

(assert (=> b!1308452 (= tp!381660 e!839529)))

(assert (= (and b!1308452 ((_ is Cons!13251) (originalCharacters!3155 t2!34))) b!1309135))

(declare-fun b!1309136 () Bool)

(declare-fun e!839530 () Bool)

(declare-fun tp!381747 () Bool)

(assert (=> b!1309136 (= e!839530 (and tp_is_empty!6611 tp!381747))))

(assert (=> b!1308442 (= tp!381652 e!839530)))

(assert (= (and b!1308442 ((_ is Cons!13251) (originalCharacters!3155 t1!34))) b!1309136))

(declare-fun b!1309139 () Bool)

(declare-fun e!839531 () Bool)

(declare-fun tp!381748 () Bool)

(assert (=> b!1309139 (= e!839531 tp!381748)))

(declare-fun b!1309137 () Bool)

(assert (=> b!1309137 (= e!839531 tp_is_empty!6611)))

(declare-fun b!1309138 () Bool)

(declare-fun tp!381751 () Bool)

(declare-fun tp!381749 () Bool)

(assert (=> b!1309138 (= e!839531 (and tp!381751 tp!381749))))

(declare-fun b!1309140 () Bool)

(declare-fun tp!381750 () Bool)

(declare-fun tp!381752 () Bool)

(assert (=> b!1309140 (= e!839531 (and tp!381750 tp!381752))))

(assert (=> b!1308444 (= tp!381654 e!839531)))

(assert (= (and b!1308444 ((_ is ElementMatch!3607) (regex!2293 (h!18654 rules!2550)))) b!1309137))

(assert (= (and b!1308444 ((_ is Concat!5991) (regex!2293 (h!18654 rules!2550)))) b!1309138))

(assert (= (and b!1308444 ((_ is Star!3607) (regex!2293 (h!18654 rules!2550)))) b!1309139))

(assert (= (and b!1308444 ((_ is Union!3607) (regex!2293 (h!18654 rules!2550)))) b!1309140))

(declare-fun b_lambda!37559 () Bool)

(assert (= b_lambda!37509 (or (and b!1308468 b_free!31485 (= (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (toChars!3371 (transformation!2293 (rule!4032 t1!34))))) (and b!1308454 b_free!31489 (= (toChars!3371 (transformation!2293 (h!18654 rules!2550))) (toChars!3371 (transformation!2293 (rule!4032 t1!34))))) (and b!1308462 b_free!31493) (and b!1309130 b_free!31501 (= (toChars!3371 (transformation!2293 (h!18654 (t!117942 rules!2550)))) (toChars!3371 (transformation!2293 (rule!4032 t1!34))))) b_lambda!37559)))

(declare-fun b_lambda!37561 () Bool)

(assert (= b_lambda!37545 (or b!1308435 b_lambda!37561)))

(declare-fun bs!329727 () Bool)

(declare-fun d!368719 () Bool)

(assert (= bs!329727 (and d!368719 b!1308435)))

(assert (=> bs!329727 (= (dynLambda!5746 lambda!52701 (h!18654 rules!2550)) (regex!2293 (h!18654 rules!2550)))))

(assert (=> b!1308999 d!368719))

(declare-fun b_lambda!37563 () Bool)

(assert (= b_lambda!37555 (or b!1308458 b_lambda!37563)))

(declare-fun bs!329728 () Bool)

(declare-fun d!368721 () Bool)

(assert (= bs!329728 (and d!368721 b!1308458)))

(declare-fun res!587468 () Bool)

(declare-fun e!839532 () Bool)

(assert (=> bs!329728 (=> (not res!587468) (not e!839532))))

(assert (=> bs!329728 (= res!587468 (matchR!1609 lt!430792 lt!431026))))

(assert (=> bs!329728 (= (dynLambda!5752 lambda!52700 lt!431026) e!839532)))

(declare-fun b!1309141 () Bool)

(assert (=> b!1309141 (= e!839532 (isPrefix!1066 lt!430803 lt!431026))))

(assert (= (and bs!329728 res!587468) b!1309141))

(declare-fun m!1460855 () Bool)

(assert (=> bs!329728 m!1460855))

(declare-fun m!1460857 () Bool)

(assert (=> b!1309141 m!1460857))

(assert (=> d!368685 d!368721))

(declare-fun b_lambda!37565 () Bool)

(assert (= b_lambda!37553 (or b!1308437 b_lambda!37565)))

(declare-fun bs!329729 () Bool)

(declare-fun d!368723 () Bool)

(assert (= bs!329729 (and d!368723 b!1308437)))

(assert (=> bs!329729 (= (dynLambda!5749 lambda!52703 lt!431010) (= (regex!2293 lt!431010) lt!430802))))

(assert (=> d!368657 d!368723))

(declare-fun b_lambda!37567 () Bool)

(assert (= b_lambda!37557 (or (and b!1308468 b_free!31485) (and b!1308454 b_free!31489 (= (toChars!3371 (transformation!2293 (h!18654 rules!2550))) (toChars!3371 (transformation!2293 (rule!4032 t2!34))))) (and b!1308462 b_free!31493 (= (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (toChars!3371 (transformation!2293 (rule!4032 t2!34))))) (and b!1309130 b_free!31501 (= (toChars!3371 (transformation!2293 (h!18654 (t!117942 rules!2550)))) (toChars!3371 (transformation!2293 (rule!4032 t2!34))))) b_lambda!37567)))

(declare-fun b_lambda!37569 () Bool)

(assert (= b_lambda!37547 (or b!1308435 b_lambda!37569)))

(declare-fun bs!329730 () Bool)

(declare-fun d!368725 () Bool)

(assert (= bs!329730 (and d!368725 b!1308435)))

(declare-fun res!587469 () Bool)

(declare-fun e!839533 () Bool)

(assert (=> bs!329730 (=> (not res!587469) (not e!839533))))

(assert (=> bs!329730 (= res!587469 (validRegex!1541 (h!18655 (map!2906 rules!2550 lambda!52701))))))

(assert (=> bs!329730 (= (dynLambda!5747 lambda!52702 (h!18655 (map!2906 rules!2550 lambda!52701))) e!839533)))

(declare-fun b!1309142 () Bool)

(assert (=> b!1309142 (= e!839533 (matchR!1609 (h!18655 (map!2906 rules!2550 lambda!52701)) lt!430789))))

(assert (= (and bs!329730 res!587469) b!1309142))

(declare-fun m!1460859 () Bool)

(assert (=> bs!329730 m!1460859))

(declare-fun m!1460861 () Bool)

(assert (=> b!1309142 m!1460861))

(assert (=> b!1309020 d!368725))

(declare-fun b_lambda!37571 () Bool)

(assert (= b_lambda!37549 (or b!1308435 b_lambda!37571)))

(declare-fun bs!329731 () Bool)

(declare-fun d!368727 () Bool)

(assert (= bs!329731 (and d!368727 b!1308435)))

(declare-fun res!587470 () Bool)

(declare-fun e!839534 () Bool)

(assert (=> bs!329731 (=> (not res!587470) (not e!839534))))

(assert (=> bs!329731 (= res!587470 (validRegex!1541 lt!431002))))

(assert (=> bs!329731 (= (dynLambda!5747 lambda!52702 lt!431002) e!839534)))

(declare-fun b!1309143 () Bool)

(assert (=> b!1309143 (= e!839534 (matchR!1609 lt!431002 lt!430789))))

(assert (= (and bs!329731 res!587470) b!1309143))

(declare-fun m!1460863 () Bool)

(assert (=> bs!329731 m!1460863))

(declare-fun m!1460865 () Bool)

(assert (=> b!1309143 m!1460865))

(assert (=> d!368651 d!368727))

(declare-fun b_lambda!37573 () Bool)

(assert (= b_lambda!37511 (or (and b!1308468 b_free!31485) (and b!1308454 b_free!31489 (= (toChars!3371 (transformation!2293 (h!18654 rules!2550))) (toChars!3371 (transformation!2293 (rule!4032 t2!34))))) (and b!1308462 b_free!31493 (= (toChars!3371 (transformation!2293 (rule!4032 t1!34))) (toChars!3371 (transformation!2293 (rule!4032 t2!34))))) (and b!1309130 b_free!31501 (= (toChars!3371 (transformation!2293 (h!18654 (t!117942 rules!2550)))) (toChars!3371 (transformation!2293 (rule!4032 t2!34))))) b_lambda!37573)))

(declare-fun b_lambda!37575 () Bool)

(assert (= b_lambda!37501 (or (and b!1308468 b_free!31485 (= (toChars!3371 (transformation!2293 (rule!4032 t2!34))) (toChars!3371 (transformation!2293 (rule!4032 t1!34))))) (and b!1308454 b_free!31489 (= (toChars!3371 (transformation!2293 (h!18654 rules!2550))) (toChars!3371 (transformation!2293 (rule!4032 t1!34))))) (and b!1308462 b_free!31493) (and b!1309130 b_free!31501 (= (toChars!3371 (transformation!2293 (h!18654 (t!117942 rules!2550)))) (toChars!3371 (transformation!2293 (rule!4032 t1!34))))) b_lambda!37575)))

(declare-fun b_lambda!37577 () Bool)

(assert (= b_lambda!37551 (or b!1308437 b_lambda!37577)))

(declare-fun bs!329732 () Bool)

(declare-fun d!368729 () Bool)

(assert (= bs!329732 (and d!368729 b!1308437)))

(assert (=> bs!329732 (= (dynLambda!5749 lambda!52703 (h!18654 rules!2550)) (= (regex!2293 (h!18654 rules!2550)) lt!430802))))

(assert (=> b!1309040 d!368729))

(check-sat b_and!87441 b_and!87383 (not b!1308903) (not d!368513) (not b_lambda!37569) (not b!1308991) (not b_lambda!37575) (not b_next!32197) (not d!368675) (not b!1309049) (not b!1309115) (not b!1309139) (not b!1309129) (not d!368655) (not b!1308760) (not d!368699) (not b!1308560) (not b!1308904) (not b_lambda!37559) (not b!1309053) (not b!1308534) (not b!1308753) (not d!368625) (not b!1308791) (not d!368643) (not b!1309114) (not b!1309143) (not b!1309072) (not b!1308541) (not b!1308987) b_and!87391 (not b!1309113) b_and!87449 (not b!1309095) (not b!1309088) (not d!368617) (not b!1309118) (not d!368499) (not b!1309117) (not d!368671) (not d!368693) (not b!1309101) (not b_next!32193) (not b!1308731) (not d!368657) (not b!1309128) (not b!1309044) (not b!1308804) (not d!368689) (not b!1308798) (not d!368687) (not d!368641) (not d!368511) (not d!368575) (not b!1309086) (not d!368569) b_and!87443 (not b!1309079) (not d!368573) (not b!1308794) (not bm!89234) (not d!368669) (not b_next!32195) (not d!368679) (not b!1309142) (not b_next!32205) (not b!1308762) (not b!1308583) (not d!368623) (not d!368651) (not d!368715) (not tb!69657) (not d!368567) (not d!368563) b_and!87387 (not b_lambda!37563) (not b_lambda!37567) (not b!1309087) (not b!1308738) b_and!87447 b_and!87445 (not d!368711) (not b!1309100) (not d!368565) (not d!368653) (not b!1309045) (not b!1309136) (not d!368645) (not d!368503) (not b_next!32189) (not b!1308740) (not b!1308532) (not b!1309043) (not d!368683) (not d!368571) (not b!1309135) (not d!368695) (not b_next!32203) (not b!1308733) (not b!1309042) (not b_lambda!37573) (not b!1309065) (not bm!89240) (not b_next!32187) (not b!1309021) (not d!368517) (not bs!329731) (not b!1308986) (not b!1308800) (not b!1308742) (not d!368485) (not d!368501) (not b!1308916) (not b!1308758) (not b!1308755) (not b!1308732) (not d!368701) (not b!1309023) (not b!1308988) (not b!1309090) (not b!1309138) (not b!1308905) (not b!1308990) (not b!1309078) (not b!1308586) (not b!1309094) (not b!1308984) (not b!1308521) (not b!1308739) tp_is_empty!6611 (not b!1308545) (not b!1309066) (not b!1309089) (not b!1308985) (not tb!69669) (not d!368685) (not d!368661) (not b!1309092) (not b_lambda!37577) (not b!1309098) (not d!368677) (not d!368705) (not b!1308542) (not d!368697) (not d!368681) (not b!1309046) (not b_next!32191) (not d!368507) (not b_lambda!37561) (not b!1308561) (not d!368497) (not d!368665) (not b!1308550) (not b!1308757) (not b!1308793) (not b!1309007) (not bs!329728) (not b!1308989) (not d!368505) (not d!368577) (not b_lambda!37571) (not d!368673) (not b!1308533) (not b!1309141) (not b_lambda!37565) (not b!1309055) (not b!1309119) (not b!1309140) (not b!1308741) (not b!1308907) (not b!1309047) (not bs!329730) (not b!1309052) (not d!368659) (not b!1309093) (not b!1308999) (not d!368649) (not d!368647) (not d!368707) (not b!1309039) (not d!368579) (not d!368713) (not b!1309022))
(check-sat (not b_next!32197) b_and!87391 b_and!87449 (not b_next!32193) b_and!87443 (not b_next!32195) (not b_next!32205) b_and!87387 (not b_next!32189) (not b_next!32203) (not b_next!32187) (not b_next!32191) b_and!87441 b_and!87383 b_and!87447 b_and!87445)
