; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!315510 () Bool)

(assert start!315510)

(declare-fun b!3383882 () Bool)

(declare-fun b_free!88569 () Bool)

(declare-fun b_next!89273 () Bool)

(assert (=> b!3383882 (= b_free!88569 (not b_next!89273))))

(declare-fun tp!1057518 () Bool)

(declare-fun b_and!235263 () Bool)

(assert (=> b!3383882 (= tp!1057518 b_and!235263)))

(declare-fun b_free!88571 () Bool)

(declare-fun b_next!89275 () Bool)

(assert (=> b!3383882 (= b_free!88571 (not b_next!89275))))

(declare-fun tp!1057521 () Bool)

(declare-fun b_and!235265 () Bool)

(assert (=> b!3383882 (= tp!1057521 b_and!235265)))

(declare-fun b!3383881 () Bool)

(declare-fun b_free!88573 () Bool)

(declare-fun b_next!89277 () Bool)

(assert (=> b!3383881 (= b_free!88573 (not b_next!89277))))

(declare-fun tp!1057524 () Bool)

(declare-fun b_and!235267 () Bool)

(assert (=> b!3383881 (= tp!1057524 b_and!235267)))

(declare-fun b_free!88575 () Bool)

(declare-fun b_next!89279 () Bool)

(assert (=> b!3383881 (= b_free!88575 (not b_next!89279))))

(declare-fun tp!1057528 () Bool)

(declare-fun b_and!235269 () Bool)

(assert (=> b!3383881 (= tp!1057528 b_and!235269)))

(declare-fun b!3383876 () Bool)

(declare-fun b_free!88577 () Bool)

(declare-fun b_next!89281 () Bool)

(assert (=> b!3383876 (= b_free!88577 (not b_next!89281))))

(declare-fun tp!1057519 () Bool)

(declare-fun b_and!235271 () Bool)

(assert (=> b!3383876 (= tp!1057519 b_and!235271)))

(declare-fun b_free!88579 () Bool)

(declare-fun b_next!89283 () Bool)

(assert (=> b!3383876 (= b_free!88579 (not b_next!89283))))

(declare-fun tp!1057522 () Bool)

(declare-fun b_and!235273 () Bool)

(assert (=> b!3383876 (= tp!1057522 b_and!235273)))

(declare-fun b!3383847 () Bool)

(declare-datatypes ((Unit!51991 0))(
  ( (Unit!51992) )
))
(declare-fun e!2100648 () Unit!51991)

(declare-fun Unit!51993 () Unit!51991)

(assert (=> b!3383847 (= e!2100648 Unit!51993)))

(declare-datatypes ((C!20456 0))(
  ( (C!20457 (val!12276 Int)) )
))
(declare-datatypes ((Regex!10135 0))(
  ( (ElementMatch!10135 (c!576276 C!20456)) (Concat!15741 (regOne!20782 Regex!10135) (regTwo!20782 Regex!10135)) (EmptyExpr!10135) (Star!10135 (reg!10464 Regex!10135)) (EmptyLang!10135) (Union!10135 (regOne!20783 Regex!10135) (regTwo!20783 Regex!10135)) )
))
(declare-datatypes ((List!36998 0))(
  ( (Nil!36874) (Cons!36874 (h!42294 (_ BitVec 16)) (t!263601 List!36998)) )
))
(declare-datatypes ((TokenValue!5606 0))(
  ( (FloatLiteralValue!11212 (text!39687 List!36998)) (TokenValueExt!5605 (__x!23429 Int)) (Broken!28030 (value!173650 List!36998)) (Object!5729) (End!5606) (Def!5606) (Underscore!5606) (Match!5606) (Else!5606) (Error!5606) (Case!5606) (If!5606) (Extends!5606) (Abstract!5606) (Class!5606) (Val!5606) (DelimiterValue!11212 (del!5666 List!36998)) (KeywordValue!5612 (value!173651 List!36998)) (CommentValue!11212 (value!173652 List!36998)) (WhitespaceValue!11212 (value!173653 List!36998)) (IndentationValue!5606 (value!173654 List!36998)) (String!41363) (Int32!5606) (Broken!28031 (value!173655 List!36998)) (Boolean!5607) (Unit!51994) (OperatorValue!5609 (op!5666 List!36998)) (IdentifierValue!11212 (value!173656 List!36998)) (IdentifierValue!11213 (value!173657 List!36998)) (WhitespaceValue!11213 (value!173658 List!36998)) (True!11212) (False!11212) (Broken!28032 (value!173659 List!36998)) (Broken!28033 (value!173660 List!36998)) (True!11213) (RightBrace!5606) (RightBracket!5606) (Colon!5606) (Null!5606) (Comma!5606) (LeftBracket!5606) (False!11213) (LeftBrace!5606) (ImaginaryLiteralValue!5606 (text!39688 List!36998)) (StringLiteralValue!16818 (value!173661 List!36998)) (EOFValue!5606 (value!173662 List!36998)) (IdentValue!5606 (value!173663 List!36998)) (DelimiterValue!11213 (value!173664 List!36998)) (DedentValue!5606 (value!173665 List!36998)) (NewLineValue!5606 (value!173666 List!36998)) (IntegerValue!16818 (value!173667 (_ BitVec 32)) (text!39689 List!36998)) (IntegerValue!16819 (value!173668 Int) (text!39690 List!36998)) (Times!5606) (Or!5606) (Equal!5606) (Minus!5606) (Broken!28034 (value!173669 List!36998)) (And!5606) (Div!5606) (LessEqual!5606) (Mod!5606) (Concat!15742) (Not!5606) (Plus!5606) (SpaceValue!5606 (value!173670 List!36998)) (IntegerValue!16820 (value!173671 Int) (text!39691 List!36998)) (StringLiteralValue!16819 (text!39692 List!36998)) (FloatLiteralValue!11213 (text!39693 List!36998)) (BytesLiteralValue!5606 (value!173672 List!36998)) (CommentValue!11213 (value!173673 List!36998)) (StringLiteralValue!16820 (value!173674 List!36998)) (ErrorTokenValue!5606 (msg!5667 List!36998)) )
))
(declare-datatypes ((List!36999 0))(
  ( (Nil!36875) (Cons!36875 (h!42295 C!20456) (t!263602 List!36999)) )
))
(declare-datatypes ((IArray!22259 0))(
  ( (IArray!22260 (innerList!11187 List!36999)) )
))
(declare-datatypes ((Conc!11127 0))(
  ( (Node!11127 (left!28749 Conc!11127) (right!29079 Conc!11127) (csize!22484 Int) (cheight!11338 Int)) (Leaf!17426 (xs!14281 IArray!22259) (csize!22485 Int)) (Empty!11127) )
))
(declare-datatypes ((BalanceConc!21868 0))(
  ( (BalanceConc!21869 (c!576277 Conc!11127)) )
))
(declare-datatypes ((String!41364 0))(
  ( (String!41365 (value!173675 String)) )
))
(declare-datatypes ((TokenValueInjection!10640 0))(
  ( (TokenValueInjection!10641 (toValue!7564 Int) (toChars!7423 Int)) )
))
(declare-datatypes ((Rule!10552 0))(
  ( (Rule!10553 (regex!5376 Regex!10135) (tag!5954 String!41364) (isSeparator!5376 Bool) (transformation!5376 TokenValueInjection!10640)) )
))
(declare-datatypes ((Token!10118 0))(
  ( (Token!10119 (value!173676 TokenValue!5606) (rule!7930 Rule!10552) (size!27908 Int) (originalCharacters!6090 List!36999)) )
))
(declare-fun separatorToken!241 () Token!10118)

(declare-fun lt!1149409 () Unit!51991)

(declare-fun lt!1149400 () List!36999)

(declare-fun lt!1149396 () C!20456)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!466 (Regex!10135 List!36999 C!20456) Unit!51991)

(assert (=> b!3383847 (= lt!1149409 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!466 (regex!5376 (rule!7930 separatorToken!241)) lt!1149400 lt!1149396))))

(declare-fun res!1369078 () Bool)

(declare-fun matchR!4727 (Regex!10135 List!36999) Bool)

(assert (=> b!3383847 (= res!1369078 (not (matchR!4727 (regex!5376 (rule!7930 separatorToken!241)) lt!1149400)))))

(declare-fun e!2100633 () Bool)

(assert (=> b!3383847 (=> (not res!1369078) (not e!2100633))))

(assert (=> b!3383847 e!2100633))

(declare-fun b!3383848 () Bool)

(declare-fun e!2100651 () Bool)

(declare-fun tp!1057523 () Bool)

(declare-fun e!2100642 () Bool)

(declare-fun inv!21 (TokenValue!5606) Bool)

(assert (=> b!3383848 (= e!2100642 (and (inv!21 (value!173676 separatorToken!241)) e!2100651 tp!1057523))))

(declare-fun b!3383849 () Bool)

(declare-fun res!1369077 () Bool)

(declare-fun e!2100624 () Bool)

(assert (=> b!3383849 (=> res!1369077 e!2100624)))

(declare-datatypes ((List!37000 0))(
  ( (Nil!36876) (Cons!36876 (h!42296 Token!10118) (t!263603 List!37000)) )
))
(declare-fun tokens!494 () List!37000)

(declare-datatypes ((LexerInterface!4965 0))(
  ( (LexerInterfaceExt!4962 (__x!23430 Int)) (Lexer!4963) )
))
(declare-fun thiss!18206 () LexerInterface!4965)

(declare-datatypes ((List!37001 0))(
  ( (Nil!36877) (Cons!36877 (h!42297 Rule!10552) (t!263604 List!37001)) )
))
(declare-fun rules!2135 () List!37001)

(declare-fun rulesProduceIndividualToken!2457 (LexerInterface!4965 List!37001 Token!10118) Bool)

(assert (=> b!3383849 (= res!1369077 (not (rulesProduceIndividualToken!2457 thiss!18206 rules!2135 (h!42296 tokens!494))))))

(declare-fun b!3383850 () Bool)

(declare-fun e!2100630 () Bool)

(declare-fun e!2100625 () Bool)

(assert (=> b!3383850 (= e!2100630 e!2100625)))

(declare-fun res!1369085 () Bool)

(assert (=> b!3383850 (=> (not res!1369085) (not e!2100625))))

(declare-fun lt!1149393 () Rule!10552)

(assert (=> b!3383850 (= res!1369085 (matchR!4727 (regex!5376 lt!1149393) lt!1149400))))

(declare-datatypes ((Option!7401 0))(
  ( (None!7400) (Some!7400 (v!36502 Rule!10552)) )
))
(declare-fun lt!1149411 () Option!7401)

(declare-fun get!11774 (Option!7401) Rule!10552)

(assert (=> b!3383850 (= lt!1149393 (get!11774 lt!1149411))))

(declare-fun b!3383851 () Bool)

(declare-fun e!2100631 () Bool)

(declare-fun e!2100647 () Bool)

(assert (=> b!3383851 (= e!2100631 e!2100647)))

(declare-fun res!1369076 () Bool)

(assert (=> b!3383851 (=> res!1369076 e!2100647)))

(declare-fun lt!1149403 () Bool)

(assert (=> b!3383851 (= res!1369076 lt!1149403)))

(declare-fun lt!1149408 () Unit!51991)

(assert (=> b!3383851 (= lt!1149408 e!2100648)))

(declare-fun c!576275 () Bool)

(assert (=> b!3383851 (= c!576275 lt!1149403)))

(declare-fun contains!6750 (List!36999 C!20456) Bool)

(declare-fun usedCharacters!632 (Regex!10135) List!36999)

(assert (=> b!3383851 (= lt!1149403 (not (contains!6750 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241))) lt!1149396)))))

(declare-fun head!7229 (List!36999) C!20456)

(assert (=> b!3383851 (= lt!1149396 (head!7229 lt!1149400))))

(declare-fun lt!1149404 () BalanceConc!21868)

(declare-fun lt!1149402 () List!36999)

(declare-datatypes ((tuple2!36472 0))(
  ( (tuple2!36473 (_1!21370 Token!10118) (_2!21370 List!36999)) )
))
(declare-datatypes ((Option!7402 0))(
  ( (None!7401) (Some!7401 (v!36503 tuple2!36472)) )
))
(declare-fun maxPrefixOneRule!1688 (LexerInterface!4965 Rule!10552 List!36999) Option!7402)

(declare-fun apply!8581 (TokenValueInjection!10640 BalanceConc!21868) TokenValue!5606)

(declare-fun size!27909 (List!36999) Int)

(assert (=> b!3383851 (= (maxPrefixOneRule!1688 thiss!18206 (rule!7930 (h!42296 tokens!494)) lt!1149402) (Some!7401 (tuple2!36473 (Token!10119 (apply!8581 (transformation!5376 (rule!7930 (h!42296 tokens!494))) lt!1149404) (rule!7930 (h!42296 tokens!494)) (size!27909 lt!1149402) lt!1149402) Nil!36875)))))

(declare-fun lt!1149414 () Unit!51991)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!787 (LexerInterface!4965 List!37001 List!36999 List!36999 List!36999 Rule!10552) Unit!51991)

(assert (=> b!3383851 (= lt!1149414 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!787 thiss!18206 rules!2135 lt!1149402 lt!1149402 Nil!36875 (rule!7930 (h!42296 tokens!494))))))

(assert (=> b!3383851 e!2100630))

(declare-fun res!1369083 () Bool)

(assert (=> b!3383851 (=> (not res!1369083) (not e!2100630))))

(declare-fun isDefined!5717 (Option!7401) Bool)

(assert (=> b!3383851 (= res!1369083 (isDefined!5717 lt!1149411))))

(declare-fun getRuleFromTag!1031 (LexerInterface!4965 List!37001 String!41364) Option!7401)

(assert (=> b!3383851 (= lt!1149411 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))))

(declare-fun lt!1149399 () Unit!51991)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1031 (LexerInterface!4965 List!37001 List!36999 Token!10118) Unit!51991)

(assert (=> b!3383851 (= lt!1149399 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1031 thiss!18206 rules!2135 lt!1149400 separatorToken!241))))

(declare-fun e!2100652 () Bool)

(assert (=> b!3383851 e!2100652))

(declare-fun res!1369071 () Bool)

(assert (=> b!3383851 (=> (not res!1369071) (not e!2100652))))

(declare-fun lt!1149405 () Option!7401)

(assert (=> b!3383851 (= res!1369071 (isDefined!5717 lt!1149405))))

(assert (=> b!3383851 (= lt!1149405 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun lt!1149392 () Unit!51991)

(assert (=> b!3383851 (= lt!1149392 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1031 thiss!18206 rules!2135 lt!1149402 (h!42296 tokens!494)))))

(declare-fun lt!1149390 () Unit!51991)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!960 (LexerInterface!4965 List!37001 List!37000 Token!10118) Unit!51991)

(assert (=> b!3383851 (= lt!1149390 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!960 thiss!18206 rules!2135 tokens!494 (h!42296 tokens!494)))))

(declare-fun isEmpty!21121 (List!36999) Bool)

(declare-fun getSuffix!1470 (List!36999 List!36999) List!36999)

(assert (=> b!3383851 (isEmpty!21121 (getSuffix!1470 lt!1149402 lt!1149402))))

(declare-fun lt!1149407 () Unit!51991)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!128 (List!36999) Unit!51991)

(assert (=> b!3383851 (= lt!1149407 (lemmaGetSuffixOnListWithItSelfIsEmpty!128 lt!1149402))))

(declare-fun b!3383852 () Bool)

(assert (=> b!3383852 (= e!2100625 (= (rule!7930 separatorToken!241) lt!1149393))))

(declare-fun res!1369080 () Bool)

(declare-fun e!2100634 () Bool)

(assert (=> start!315510 (=> (not res!1369080) (not e!2100634))))

(get-info :version)

(assert (=> start!315510 (= res!1369080 ((_ is Lexer!4963) thiss!18206))))

(assert (=> start!315510 e!2100634))

(assert (=> start!315510 true))

(declare-fun e!2100649 () Bool)

(assert (=> start!315510 e!2100649))

(declare-fun inv!49952 (Token!10118) Bool)

(assert (=> start!315510 (and (inv!49952 separatorToken!241) e!2100642)))

(declare-fun e!2100653 () Bool)

(assert (=> start!315510 e!2100653))

(declare-fun b!3383853 () Bool)

(declare-fun e!2100632 () Bool)

(assert (=> b!3383853 (= e!2100624 e!2100632)))

(declare-fun res!1369088 () Bool)

(assert (=> b!3383853 (=> res!1369088 e!2100632)))

(declare-datatypes ((IArray!22261 0))(
  ( (IArray!22262 (innerList!11188 List!37000)) )
))
(declare-datatypes ((Conc!11128 0))(
  ( (Node!11128 (left!28750 Conc!11128) (right!29080 Conc!11128) (csize!22486 Int) (cheight!11339 Int)) (Leaf!17427 (xs!14282 IArray!22261) (csize!22487 Int)) (Empty!11128) )
))
(declare-datatypes ((BalanceConc!21870 0))(
  ( (BalanceConc!21871 (c!576278 Conc!11128)) )
))
(declare-fun isEmpty!21122 (BalanceConc!21870) Bool)

(declare-datatypes ((tuple2!36474 0))(
  ( (tuple2!36475 (_1!21371 BalanceConc!21870) (_2!21371 BalanceConc!21868)) )
))
(declare-fun lex!2291 (LexerInterface!4965 List!37001 BalanceConc!21868) tuple2!36474)

(assert (=> b!3383853 (= res!1369088 (isEmpty!21122 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404))))))

(declare-fun seqFromList!3805 (List!36999) BalanceConc!21868)

(assert (=> b!3383853 (= lt!1149404 (seqFromList!3805 lt!1149402))))

(declare-fun b!3383854 () Bool)

(declare-fun e!2100640 () Bool)

(declare-fun e!2100646 () Bool)

(assert (=> b!3383854 (= e!2100640 (not e!2100646))))

(declare-fun res!1369087 () Bool)

(assert (=> b!3383854 (=> res!1369087 e!2100646)))

(declare-fun lt!1149394 () List!36999)

(declare-fun lt!1149401 () List!36999)

(assert (=> b!3383854 (= res!1369087 (not (= lt!1149394 lt!1149401)))))

(declare-fun printList!1513 (LexerInterface!4965 List!37000) List!36999)

(assert (=> b!3383854 (= lt!1149401 (printList!1513 thiss!18206 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))

(declare-fun lt!1149410 () BalanceConc!21868)

(declare-fun list!13341 (BalanceConc!21868) List!36999)

(assert (=> b!3383854 (= lt!1149394 (list!13341 lt!1149410))))

(declare-fun lt!1149395 () BalanceConc!21870)

(declare-fun printTailRec!1460 (LexerInterface!4965 BalanceConc!21870 Int BalanceConc!21868) BalanceConc!21868)

(assert (=> b!3383854 (= lt!1149410 (printTailRec!1460 thiss!18206 lt!1149395 0 (BalanceConc!21869 Empty!11127)))))

(declare-fun print!2030 (LexerInterface!4965 BalanceConc!21870) BalanceConc!21868)

(assert (=> b!3383854 (= lt!1149410 (print!2030 thiss!18206 lt!1149395))))

(declare-fun singletonSeq!2472 (Token!10118) BalanceConc!21870)

(assert (=> b!3383854 (= lt!1149395 (singletonSeq!2472 (h!42296 tokens!494)))))

(declare-fun b!3383855 () Bool)

(declare-fun res!1369081 () Bool)

(assert (=> b!3383855 (=> (not res!1369081) (not e!2100640))))

(declare-fun lambda!120549 () Int)

(declare-fun forall!7765 (List!37000 Int) Bool)

(assert (=> b!3383855 (= res!1369081 (forall!7765 tokens!494 lambda!120549))))

(declare-fun b!3383856 () Bool)

(declare-fun Unit!51995 () Unit!51991)

(assert (=> b!3383856 (= e!2100648 Unit!51995)))

(declare-fun b!3383857 () Bool)

(declare-fun e!2100643 () Bool)

(declare-fun lt!1149406 () Option!7402)

(declare-fun get!11775 (Option!7402) tuple2!36472)

(assert (=> b!3383857 (= e!2100643 (= (_1!21370 (get!11775 lt!1149406)) (h!42296 tokens!494)))))

(declare-fun b!3383858 () Bool)

(assert (=> b!3383858 (= e!2100646 e!2100624)))

(declare-fun res!1369084 () Bool)

(assert (=> b!3383858 (=> res!1369084 e!2100624)))

(assert (=> b!3383858 (= res!1369084 (or (not (= lt!1149401 lt!1149402)) (not (= lt!1149394 lt!1149402))))))

(declare-fun charsOf!3390 (Token!10118) BalanceConc!21868)

(assert (=> b!3383858 (= lt!1149402 (list!13341 (charsOf!3390 (h!42296 tokens!494))))))

(declare-fun tp!1057525 () Bool)

(declare-fun b!3383859 () Bool)

(declare-fun e!2100635 () Bool)

(declare-fun inv!49949 (String!41364) Bool)

(declare-fun inv!49953 (TokenValueInjection!10640) Bool)

(assert (=> b!3383859 (= e!2100651 (and tp!1057525 (inv!49949 (tag!5954 (rule!7930 separatorToken!241))) (inv!49953 (transformation!5376 (rule!7930 separatorToken!241))) e!2100635))))

(declare-fun b!3383860 () Bool)

(declare-fun e!2100654 () Bool)

(assert (=> b!3383860 (= e!2100654 e!2100631)))

(declare-fun res!1369072 () Bool)

(assert (=> b!3383860 (=> res!1369072 e!2100631)))

(declare-fun lt!1149413 () BalanceConc!21868)

(declare-fun ++!9017 (List!36999 List!36999) List!36999)

(assert (=> b!3383860 (= res!1369072 (not (= (list!13341 lt!1149413) (++!9017 lt!1149402 lt!1149400))))))

(assert (=> b!3383860 (= lt!1149400 (list!13341 (charsOf!3390 separatorToken!241)))))

(declare-fun lt!1149412 () BalanceConc!21870)

(declare-fun printWithSeparatorToken!156 (LexerInterface!4965 BalanceConc!21870 Token!10118) BalanceConc!21868)

(assert (=> b!3383860 (= lt!1149413 (printWithSeparatorToken!156 thiss!18206 lt!1149412 separatorToken!241))))

(declare-fun e!2100628 () Bool)

(declare-fun tp!1057530 () Bool)

(declare-fun b!3383861 () Bool)

(declare-fun e!2100626 () Bool)

(assert (=> b!3383861 (= e!2100628 (and tp!1057530 (inv!49949 (tag!5954 (h!42297 rules!2135))) (inv!49953 (transformation!5376 (h!42297 rules!2135))) e!2100626))))

(declare-fun b!3383862 () Bool)

(declare-fun res!1369089 () Bool)

(assert (=> b!3383862 (=> (not res!1369089) (not e!2100640))))

(assert (=> b!3383862 (= res!1369089 (and (not ((_ is Nil!36876) tokens!494)) ((_ is Nil!36876) (t!263603 tokens!494))))))

(declare-fun b!3383863 () Bool)

(declare-fun e!2100645 () Bool)

(assert (=> b!3383863 (= e!2100645 e!2100643)))

(declare-fun res!1369086 () Bool)

(assert (=> b!3383863 (=> res!1369086 e!2100643)))

(declare-fun isDefined!5718 (Option!7402) Bool)

(assert (=> b!3383863 (= res!1369086 (not (isDefined!5718 lt!1149406)))))

(declare-fun maxPrefix!2537 (LexerInterface!4965 List!37001 List!36999) Option!7402)

(assert (=> b!3383863 (= lt!1149406 (maxPrefix!2537 thiss!18206 rules!2135 lt!1149402))))

(declare-fun b!3383864 () Bool)

(assert (=> b!3383864 (= e!2100633 false)))

(declare-fun b!3383865 () Bool)

(assert (=> b!3383865 (= e!2100632 e!2100654)))

(declare-fun res!1369069 () Bool)

(assert (=> b!3383865 (=> res!1369069 e!2100654)))

(assert (=> b!3383865 (= res!1369069 (isSeparator!5376 (rule!7930 (h!42296 tokens!494))))))

(declare-fun lt!1149391 () Unit!51991)

(declare-fun forallContained!1323 (List!37000 Int Token!10118) Unit!51991)

(assert (=> b!3383865 (= lt!1149391 (forallContained!1323 tokens!494 lambda!120549 (h!42296 tokens!494)))))

(declare-fun b!3383866 () Bool)

(declare-fun e!2100641 () Bool)

(declare-fun lt!1149398 () Rule!10552)

(assert (=> b!3383866 (= e!2100641 (= (rule!7930 (h!42296 tokens!494)) lt!1149398))))

(declare-fun b!3383867 () Bool)

(declare-fun tp!1057520 () Bool)

(declare-fun e!2100650 () Bool)

(declare-fun e!2100629 () Bool)

(assert (=> b!3383867 (= e!2100650 (and (inv!21 (value!173676 (h!42296 tokens!494))) e!2100629 tp!1057520))))

(declare-fun b!3383868 () Bool)

(declare-fun tp!1057529 () Bool)

(assert (=> b!3383868 (= e!2100649 (and e!2100628 tp!1057529))))

(declare-fun b!3383869 () Bool)

(declare-fun tp!1057527 () Bool)

(assert (=> b!3383869 (= e!2100653 (and (inv!49952 (h!42296 tokens!494)) e!2100650 tp!1057527))))

(declare-fun b!3383870 () Bool)

(assert (=> b!3383870 (= e!2100647 e!2100645)))

(declare-fun res!1369079 () Bool)

(assert (=> b!3383870 (=> res!1369079 e!2100645)))

(declare-fun contains!6751 (List!37001 Rule!10552) Bool)

(assert (=> b!3383870 (= res!1369079 (not (contains!6751 rules!2135 (rule!7930 (h!42296 tokens!494)))))))

(assert (=> b!3383870 (not (contains!6750 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149396))))

(declare-fun lt!1149397 () Unit!51991)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!216 (LexerInterface!4965 List!37001 List!37001 Rule!10552 Rule!10552 C!20456) Unit!51991)

(assert (=> b!3383870 (= lt!1149397 (lemmaNonSepRuleNotContainsCharContainedInASepRule!216 thiss!18206 rules!2135 rules!2135 (rule!7930 (h!42296 tokens!494)) (rule!7930 separatorToken!241) lt!1149396))))

(declare-fun b!3383871 () Bool)

(declare-fun e!2100638 () Bool)

(declare-fun tp!1057526 () Bool)

(assert (=> b!3383871 (= e!2100629 (and tp!1057526 (inv!49949 (tag!5954 (rule!7930 (h!42296 tokens!494)))) (inv!49953 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) e!2100638))))

(declare-fun b!3383872 () Bool)

(declare-fun res!1369068 () Bool)

(assert (=> b!3383872 (=> (not res!1369068) (not e!2100640))))

(assert (=> b!3383872 (= res!1369068 (isSeparator!5376 (rule!7930 separatorToken!241)))))

(declare-fun b!3383873 () Bool)

(declare-fun res!1369073 () Bool)

(assert (=> b!3383873 (=> (not res!1369073) (not e!2100634))))

(declare-fun isEmpty!21123 (List!37001) Bool)

(assert (=> b!3383873 (= res!1369073 (not (isEmpty!21123 rules!2135)))))

(declare-fun b!3383874 () Bool)

(declare-fun res!1369074 () Bool)

(assert (=> b!3383874 (=> res!1369074 e!2100645)))

(assert (=> b!3383874 (= res!1369074 (not (contains!6751 rules!2135 (rule!7930 separatorToken!241))))))

(declare-fun b!3383875 () Bool)

(declare-fun res!1369067 () Bool)

(assert (=> b!3383875 (=> (not res!1369067) (not e!2100634))))

(declare-fun rulesInvariant!4362 (LexerInterface!4965 List!37001) Bool)

(assert (=> b!3383875 (= res!1369067 (rulesInvariant!4362 thiss!18206 rules!2135))))

(assert (=> b!3383876 (= e!2100626 (and tp!1057519 tp!1057522))))

(declare-fun b!3383877 () Bool)

(assert (=> b!3383877 (= e!2100634 e!2100640)))

(declare-fun res!1369090 () Bool)

(assert (=> b!3383877 (=> (not res!1369090) (not e!2100640))))

(declare-fun rulesProduceEachTokenIndividually!1416 (LexerInterface!4965 List!37001 BalanceConc!21870) Bool)

(assert (=> b!3383877 (= res!1369090 (rulesProduceEachTokenIndividually!1416 thiss!18206 rules!2135 lt!1149412))))

(declare-fun seqFromList!3806 (List!37000) BalanceConc!21870)

(assert (=> b!3383877 (= lt!1149412 (seqFromList!3806 tokens!494))))

(declare-fun b!3383878 () Bool)

(declare-fun res!1369082 () Bool)

(assert (=> b!3383878 (=> (not res!1369082) (not e!2100640))))

(declare-fun sepAndNonSepRulesDisjointChars!1570 (List!37001 List!37001) Bool)

(assert (=> b!3383878 (= res!1369082 (sepAndNonSepRulesDisjointChars!1570 rules!2135 rules!2135))))

(declare-fun b!3383879 () Bool)

(declare-fun res!1369070 () Bool)

(assert (=> b!3383879 (=> (not res!1369070) (not e!2100640))))

(assert (=> b!3383879 (= res!1369070 (rulesProduceIndividualToken!2457 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3383880 () Bool)

(assert (=> b!3383880 (= e!2100652 e!2100641)))

(declare-fun res!1369075 () Bool)

(assert (=> b!3383880 (=> (not res!1369075) (not e!2100641))))

(assert (=> b!3383880 (= res!1369075 (matchR!4727 (regex!5376 lt!1149398) lt!1149402))))

(assert (=> b!3383880 (= lt!1149398 (get!11774 lt!1149405))))

(assert (=> b!3383881 (= e!2100638 (and tp!1057524 tp!1057528))))

(assert (=> b!3383882 (= e!2100635 (and tp!1057518 tp!1057521))))

(assert (= (and start!315510 res!1369080) b!3383873))

(assert (= (and b!3383873 res!1369073) b!3383875))

(assert (= (and b!3383875 res!1369067) b!3383877))

(assert (= (and b!3383877 res!1369090) b!3383879))

(assert (= (and b!3383879 res!1369070) b!3383872))

(assert (= (and b!3383872 res!1369068) b!3383855))

(assert (= (and b!3383855 res!1369081) b!3383878))

(assert (= (and b!3383878 res!1369082) b!3383862))

(assert (= (and b!3383862 res!1369089) b!3383854))

(assert (= (and b!3383854 (not res!1369087)) b!3383858))

(assert (= (and b!3383858 (not res!1369084)) b!3383849))

(assert (= (and b!3383849 (not res!1369077)) b!3383853))

(assert (= (and b!3383853 (not res!1369088)) b!3383865))

(assert (= (and b!3383865 (not res!1369069)) b!3383860))

(assert (= (and b!3383860 (not res!1369072)) b!3383851))

(assert (= (and b!3383851 res!1369071) b!3383880))

(assert (= (and b!3383880 res!1369075) b!3383866))

(assert (= (and b!3383851 res!1369083) b!3383850))

(assert (= (and b!3383850 res!1369085) b!3383852))

(assert (= (and b!3383851 c!576275) b!3383847))

(assert (= (and b!3383851 (not c!576275)) b!3383856))

(assert (= (and b!3383847 res!1369078) b!3383864))

(assert (= (and b!3383851 (not res!1369076)) b!3383870))

(assert (= (and b!3383870 (not res!1369079)) b!3383874))

(assert (= (and b!3383874 (not res!1369074)) b!3383863))

(assert (= (and b!3383863 (not res!1369086)) b!3383857))

(assert (= b!3383861 b!3383876))

(assert (= b!3383868 b!3383861))

(assert (= (and start!315510 ((_ is Cons!36877) rules!2135)) b!3383868))

(assert (= b!3383859 b!3383882))

(assert (= b!3383848 b!3383859))

(assert (= start!315510 b!3383848))

(assert (= b!3383871 b!3383881))

(assert (= b!3383867 b!3383871))

(assert (= b!3383869 b!3383867))

(assert (= (and start!315510 ((_ is Cons!36876) tokens!494)) b!3383869))

(declare-fun m!3748871 () Bool)

(assert (=> b!3383854 m!3748871))

(declare-fun m!3748873 () Bool)

(assert (=> b!3383854 m!3748873))

(declare-fun m!3748875 () Bool)

(assert (=> b!3383854 m!3748875))

(declare-fun m!3748877 () Bool)

(assert (=> b!3383854 m!3748877))

(declare-fun m!3748879 () Bool)

(assert (=> b!3383854 m!3748879))

(declare-fun m!3748881 () Bool)

(assert (=> b!3383873 m!3748881))

(declare-fun m!3748883 () Bool)

(assert (=> b!3383855 m!3748883))

(declare-fun m!3748885 () Bool)

(assert (=> b!3383870 m!3748885))

(declare-fun m!3748887 () Bool)

(assert (=> b!3383870 m!3748887))

(assert (=> b!3383870 m!3748887))

(declare-fun m!3748889 () Bool)

(assert (=> b!3383870 m!3748889))

(declare-fun m!3748891 () Bool)

(assert (=> b!3383870 m!3748891))

(declare-fun m!3748893 () Bool)

(assert (=> b!3383858 m!3748893))

(assert (=> b!3383858 m!3748893))

(declare-fun m!3748895 () Bool)

(assert (=> b!3383858 m!3748895))

(declare-fun m!3748897 () Bool)

(assert (=> b!3383847 m!3748897))

(declare-fun m!3748899 () Bool)

(assert (=> b!3383847 m!3748899))

(declare-fun m!3748901 () Bool)

(assert (=> b!3383849 m!3748901))

(declare-fun m!3748903 () Bool)

(assert (=> b!3383880 m!3748903))

(declare-fun m!3748905 () Bool)

(assert (=> b!3383880 m!3748905))

(declare-fun m!3748907 () Bool)

(assert (=> b!3383875 m!3748907))

(declare-fun m!3748909 () Bool)

(assert (=> b!3383877 m!3748909))

(declare-fun m!3748911 () Bool)

(assert (=> b!3383877 m!3748911))

(declare-fun m!3748913 () Bool)

(assert (=> b!3383859 m!3748913))

(declare-fun m!3748915 () Bool)

(assert (=> b!3383859 m!3748915))

(declare-fun m!3748917 () Bool)

(assert (=> b!3383874 m!3748917))

(declare-fun m!3748919 () Bool)

(assert (=> b!3383860 m!3748919))

(declare-fun m!3748921 () Bool)

(assert (=> b!3383860 m!3748921))

(declare-fun m!3748923 () Bool)

(assert (=> b!3383860 m!3748923))

(declare-fun m!3748925 () Bool)

(assert (=> b!3383860 m!3748925))

(assert (=> b!3383860 m!3748919))

(declare-fun m!3748927 () Bool)

(assert (=> b!3383860 m!3748927))

(declare-fun m!3748929 () Bool)

(assert (=> b!3383878 m!3748929))

(declare-fun m!3748931 () Bool)

(assert (=> b!3383879 m!3748931))

(declare-fun m!3748933 () Bool)

(assert (=> b!3383869 m!3748933))

(declare-fun m!3748935 () Bool)

(assert (=> b!3383848 m!3748935))

(declare-fun m!3748937 () Bool)

(assert (=> b!3383853 m!3748937))

(declare-fun m!3748939 () Bool)

(assert (=> b!3383853 m!3748939))

(declare-fun m!3748941 () Bool)

(assert (=> b!3383853 m!3748941))

(declare-fun m!3748943 () Bool)

(assert (=> b!3383857 m!3748943))

(declare-fun m!3748945 () Bool)

(assert (=> b!3383861 m!3748945))

(declare-fun m!3748947 () Bool)

(assert (=> b!3383861 m!3748947))

(declare-fun m!3748949 () Bool)

(assert (=> b!3383867 m!3748949))

(declare-fun m!3748951 () Bool)

(assert (=> b!3383865 m!3748951))

(declare-fun m!3748953 () Bool)

(assert (=> b!3383871 m!3748953))

(declare-fun m!3748955 () Bool)

(assert (=> b!3383871 m!3748955))

(declare-fun m!3748957 () Bool)

(assert (=> b!3383851 m!3748957))

(declare-fun m!3748959 () Bool)

(assert (=> b!3383851 m!3748959))

(declare-fun m!3748961 () Bool)

(assert (=> b!3383851 m!3748961))

(declare-fun m!3748963 () Bool)

(assert (=> b!3383851 m!3748963))

(declare-fun m!3748965 () Bool)

(assert (=> b!3383851 m!3748965))

(declare-fun m!3748967 () Bool)

(assert (=> b!3383851 m!3748967))

(declare-fun m!3748969 () Bool)

(assert (=> b!3383851 m!3748969))

(declare-fun m!3748971 () Bool)

(assert (=> b!3383851 m!3748971))

(declare-fun m!3748973 () Bool)

(assert (=> b!3383851 m!3748973))

(declare-fun m!3748975 () Bool)

(assert (=> b!3383851 m!3748975))

(declare-fun m!3748977 () Bool)

(assert (=> b!3383851 m!3748977))

(declare-fun m!3748979 () Bool)

(assert (=> b!3383851 m!3748979))

(assert (=> b!3383851 m!3748959))

(declare-fun m!3748981 () Bool)

(assert (=> b!3383851 m!3748981))

(assert (=> b!3383851 m!3748969))

(declare-fun m!3748983 () Bool)

(assert (=> b!3383851 m!3748983))

(declare-fun m!3748985 () Bool)

(assert (=> b!3383851 m!3748985))

(declare-fun m!3748987 () Bool)

(assert (=> b!3383851 m!3748987))

(declare-fun m!3748989 () Bool)

(assert (=> b!3383851 m!3748989))

(declare-fun m!3748991 () Bool)

(assert (=> b!3383863 m!3748991))

(declare-fun m!3748993 () Bool)

(assert (=> b!3383863 m!3748993))

(declare-fun m!3748995 () Bool)

(assert (=> start!315510 m!3748995))

(declare-fun m!3748997 () Bool)

(assert (=> b!3383850 m!3748997))

(declare-fun m!3748999 () Bool)

(assert (=> b!3383850 m!3748999))

(check-sat (not start!315510) (not b_next!89275) (not b!3383859) (not b!3383873) (not b!3383851) (not b_next!89277) (not b!3383868) (not b!3383850) (not b!3383871) (not b!3383857) (not b!3383874) (not b!3383879) (not b!3383847) b_and!235263 (not b!3383880) (not b!3383849) (not b!3383861) (not b_next!89281) b_and!235265 (not b!3383855) b_and!235273 b_and!235267 (not b!3383854) (not b!3383865) (not b_next!89273) (not b!3383877) b_and!235271 (not b!3383870) (not b_next!89279) (not b!3383875) (not b!3383867) (not b!3383860) b_and!235269 (not b!3383848) (not b!3383853) (not b!3383858) (not b!3383878) (not b!3383863) (not b_next!89283) (not b!3383869))
(check-sat b_and!235263 b_and!235273 (not b_next!89275) b_and!235269 (not b_next!89277) (not b_next!89283) (not b_next!89281) b_and!235265 b_and!235267 (not b_next!89273) b_and!235271 (not b_next!89279))
(get-model)

(declare-fun lt!1149420 () Bool)

(declare-fun d!960267 () Bool)

(declare-fun isEmpty!21125 (List!37000) Bool)

(declare-fun list!13344 (BalanceConc!21870) List!37000)

(assert (=> d!960267 (= lt!1149420 (isEmpty!21125 (list!13344 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404)))))))

(declare-fun isEmpty!21126 (Conc!11128) Bool)

(assert (=> d!960267 (= lt!1149420 (isEmpty!21126 (c!576278 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404)))))))

(assert (=> d!960267 (= (isEmpty!21122 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404))) lt!1149420)))

(declare-fun bs!554976 () Bool)

(assert (= bs!554976 d!960267))

(declare-fun m!3749015 () Bool)

(assert (=> bs!554976 m!3749015))

(assert (=> bs!554976 m!3749015))

(declare-fun m!3749017 () Bool)

(assert (=> bs!554976 m!3749017))

(declare-fun m!3749019 () Bool)

(assert (=> bs!554976 m!3749019))

(assert (=> b!3383853 d!960267))

(declare-fun b!3384053 () Bool)

(declare-fun e!2100753 () Bool)

(declare-fun e!2100751 () Bool)

(assert (=> b!3384053 (= e!2100753 e!2100751)))

(declare-fun res!1369197 () Bool)

(declare-fun lt!1149484 () tuple2!36474)

(declare-fun size!27911 (BalanceConc!21868) Int)

(assert (=> b!3384053 (= res!1369197 (< (size!27911 (_2!21371 lt!1149484)) (size!27911 lt!1149404)))))

(assert (=> b!3384053 (=> (not res!1369197) (not e!2100751))))

(declare-fun b!3384054 () Bool)

(declare-fun e!2100752 () Bool)

(declare-datatypes ((tuple2!36476 0))(
  ( (tuple2!36477 (_1!21372 List!37000) (_2!21372 List!36999)) )
))
(declare-fun lexList!1407 (LexerInterface!4965 List!37001 List!36999) tuple2!36476)

(assert (=> b!3384054 (= e!2100752 (= (list!13341 (_2!21371 lt!1149484)) (_2!21372 (lexList!1407 thiss!18206 rules!2135 (list!13341 lt!1149404)))))))

(declare-fun b!3384055 () Bool)

(assert (=> b!3384055 (= e!2100753 (= (_2!21371 lt!1149484) lt!1149404))))

(declare-fun b!3384057 () Bool)

(assert (=> b!3384057 (= e!2100751 (not (isEmpty!21122 (_1!21371 lt!1149484))))))

(declare-fun b!3384056 () Bool)

(declare-fun res!1369195 () Bool)

(assert (=> b!3384056 (=> (not res!1369195) (not e!2100752))))

(assert (=> b!3384056 (= res!1369195 (= (list!13344 (_1!21371 lt!1149484)) (_1!21372 (lexList!1407 thiss!18206 rules!2135 (list!13341 lt!1149404)))))))

(declare-fun d!960273 () Bool)

(assert (=> d!960273 e!2100752))

(declare-fun res!1369196 () Bool)

(assert (=> d!960273 (=> (not res!1369196) (not e!2100752))))

(assert (=> d!960273 (= res!1369196 e!2100753)))

(declare-fun c!576316 () Bool)

(declare-fun size!27912 (BalanceConc!21870) Int)

(assert (=> d!960273 (= c!576316 (> (size!27912 (_1!21371 lt!1149484)) 0))))

(declare-fun lexTailRecV2!1017 (LexerInterface!4965 List!37001 BalanceConc!21868 BalanceConc!21868 BalanceConc!21868 BalanceConc!21870) tuple2!36474)

(assert (=> d!960273 (= lt!1149484 (lexTailRecV2!1017 thiss!18206 rules!2135 lt!1149404 (BalanceConc!21869 Empty!11127) lt!1149404 (BalanceConc!21871 Empty!11128)))))

(assert (=> d!960273 (= (lex!2291 thiss!18206 rules!2135 lt!1149404) lt!1149484)))

(assert (= (and d!960273 c!576316) b!3384053))

(assert (= (and d!960273 (not c!576316)) b!3384055))

(assert (= (and b!3384053 res!1369197) b!3384057))

(assert (= (and d!960273 res!1369196) b!3384056))

(assert (= (and b!3384056 res!1369195) b!3384054))

(declare-fun m!3749185 () Bool)

(assert (=> d!960273 m!3749185))

(declare-fun m!3749187 () Bool)

(assert (=> d!960273 m!3749187))

(declare-fun m!3749189 () Bool)

(assert (=> b!3384053 m!3749189))

(declare-fun m!3749191 () Bool)

(assert (=> b!3384053 m!3749191))

(declare-fun m!3749193 () Bool)

(assert (=> b!3384057 m!3749193))

(declare-fun m!3749195 () Bool)

(assert (=> b!3384054 m!3749195))

(declare-fun m!3749197 () Bool)

(assert (=> b!3384054 m!3749197))

(assert (=> b!3384054 m!3749197))

(declare-fun m!3749199 () Bool)

(assert (=> b!3384054 m!3749199))

(declare-fun m!3749201 () Bool)

(assert (=> b!3384056 m!3749201))

(assert (=> b!3384056 m!3749197))

(assert (=> b!3384056 m!3749197))

(assert (=> b!3384056 m!3749199))

(assert (=> b!3383853 d!960273))

(declare-fun d!960313 () Bool)

(declare-fun fromListB!1704 (List!36999) BalanceConc!21868)

(assert (=> d!960313 (= (seqFromList!3805 lt!1149402) (fromListB!1704 lt!1149402))))

(declare-fun bs!554983 () Bool)

(assert (= bs!554983 d!960313))

(declare-fun m!3749203 () Bool)

(assert (=> bs!554983 m!3749203))

(assert (=> b!3383853 d!960313))

(declare-fun d!960315 () Bool)

(declare-fun list!13345 (Conc!11127) List!36999)

(assert (=> d!960315 (= (list!13341 lt!1149410) (list!13345 (c!576277 lt!1149410)))))

(declare-fun bs!554984 () Bool)

(assert (= bs!554984 d!960315))

(declare-fun m!3749205 () Bool)

(assert (=> bs!554984 m!3749205))

(assert (=> b!3383854 d!960315))

(declare-fun d!960317 () Bool)

(declare-fun lt!1149487 () BalanceConc!21868)

(assert (=> d!960317 (= (list!13341 lt!1149487) (printList!1513 thiss!18206 (list!13344 lt!1149395)))))

(assert (=> d!960317 (= lt!1149487 (printTailRec!1460 thiss!18206 lt!1149395 0 (BalanceConc!21869 Empty!11127)))))

(assert (=> d!960317 (= (print!2030 thiss!18206 lt!1149395) lt!1149487)))

(declare-fun bs!554985 () Bool)

(assert (= bs!554985 d!960317))

(declare-fun m!3749207 () Bool)

(assert (=> bs!554985 m!3749207))

(declare-fun m!3749209 () Bool)

(assert (=> bs!554985 m!3749209))

(assert (=> bs!554985 m!3749209))

(declare-fun m!3749211 () Bool)

(assert (=> bs!554985 m!3749211))

(assert (=> bs!554985 m!3748873))

(assert (=> b!3383854 d!960317))

(declare-fun d!960319 () Bool)

(declare-fun lt!1149504 () BalanceConc!21868)

(declare-fun printListTailRec!650 (LexerInterface!4965 List!37000 List!36999) List!36999)

(declare-fun dropList!1167 (BalanceConc!21870 Int) List!37000)

(assert (=> d!960319 (= (list!13341 lt!1149504) (printListTailRec!650 thiss!18206 (dropList!1167 lt!1149395 0) (list!13341 (BalanceConc!21869 Empty!11127))))))

(declare-fun e!2100759 () BalanceConc!21868)

(assert (=> d!960319 (= lt!1149504 e!2100759)))

(declare-fun c!576319 () Bool)

(assert (=> d!960319 (= c!576319 (>= 0 (size!27912 lt!1149395)))))

(declare-fun e!2100758 () Bool)

(assert (=> d!960319 e!2100758))

(declare-fun res!1369200 () Bool)

(assert (=> d!960319 (=> (not res!1369200) (not e!2100758))))

(assert (=> d!960319 (= res!1369200 (>= 0 0))))

(assert (=> d!960319 (= (printTailRec!1460 thiss!18206 lt!1149395 0 (BalanceConc!21869 Empty!11127)) lt!1149504)))

(declare-fun b!3384064 () Bool)

(assert (=> b!3384064 (= e!2100758 (<= 0 (size!27912 lt!1149395)))))

(declare-fun b!3384065 () Bool)

(assert (=> b!3384065 (= e!2100759 (BalanceConc!21869 Empty!11127))))

(declare-fun b!3384066 () Bool)

(declare-fun ++!9019 (BalanceConc!21868 BalanceConc!21868) BalanceConc!21868)

(declare-fun apply!8584 (BalanceConc!21870 Int) Token!10118)

(assert (=> b!3384066 (= e!2100759 (printTailRec!1460 thiss!18206 lt!1149395 (+ 0 1) (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (apply!8584 lt!1149395 0)))))))

(declare-fun lt!1149502 () List!37000)

(assert (=> b!3384066 (= lt!1149502 (list!13344 lt!1149395))))

(declare-fun lt!1149506 () Unit!51991)

(declare-fun lemmaDropApply!1125 (List!37000 Int) Unit!51991)

(assert (=> b!3384066 (= lt!1149506 (lemmaDropApply!1125 lt!1149502 0))))

(declare-fun head!7231 (List!37000) Token!10118)

(declare-fun drop!1965 (List!37000 Int) List!37000)

(declare-fun apply!8585 (List!37000 Int) Token!10118)

(assert (=> b!3384066 (= (head!7231 (drop!1965 lt!1149502 0)) (apply!8585 lt!1149502 0))))

(declare-fun lt!1149505 () Unit!51991)

(assert (=> b!3384066 (= lt!1149505 lt!1149506)))

(declare-fun lt!1149508 () List!37000)

(assert (=> b!3384066 (= lt!1149508 (list!13344 lt!1149395))))

(declare-fun lt!1149507 () Unit!51991)

(declare-fun lemmaDropTail!1009 (List!37000 Int) Unit!51991)

(assert (=> b!3384066 (= lt!1149507 (lemmaDropTail!1009 lt!1149508 0))))

(declare-fun tail!5360 (List!37000) List!37000)

(assert (=> b!3384066 (= (tail!5360 (drop!1965 lt!1149508 0)) (drop!1965 lt!1149508 (+ 0 1)))))

(declare-fun lt!1149503 () Unit!51991)

(assert (=> b!3384066 (= lt!1149503 lt!1149507)))

(assert (= (and d!960319 res!1369200) b!3384064))

(assert (= (and d!960319 c!576319) b!3384065))

(assert (= (and d!960319 (not c!576319)) b!3384066))

(declare-fun m!3749213 () Bool)

(assert (=> d!960319 m!3749213))

(declare-fun m!3749215 () Bool)

(assert (=> d!960319 m!3749215))

(assert (=> d!960319 m!3749213))

(declare-fun m!3749217 () Bool)

(assert (=> d!960319 m!3749217))

(declare-fun m!3749219 () Bool)

(assert (=> d!960319 m!3749219))

(assert (=> d!960319 m!3749215))

(declare-fun m!3749221 () Bool)

(assert (=> d!960319 m!3749221))

(assert (=> b!3384064 m!3749219))

(declare-fun m!3749223 () Bool)

(assert (=> b!3384066 m!3749223))

(declare-fun m!3749225 () Bool)

(assert (=> b!3384066 m!3749225))

(declare-fun m!3749227 () Bool)

(assert (=> b!3384066 m!3749227))

(assert (=> b!3384066 m!3749209))

(declare-fun m!3749229 () Bool)

(assert (=> b!3384066 m!3749229))

(declare-fun m!3749231 () Bool)

(assert (=> b!3384066 m!3749231))

(declare-fun m!3749233 () Bool)

(assert (=> b!3384066 m!3749233))

(declare-fun m!3749235 () Bool)

(assert (=> b!3384066 m!3749235))

(declare-fun m!3749237 () Bool)

(assert (=> b!3384066 m!3749237))

(assert (=> b!3384066 m!3749223))

(assert (=> b!3384066 m!3749237))

(assert (=> b!3384066 m!3749233))

(declare-fun m!3749239 () Bool)

(assert (=> b!3384066 m!3749239))

(declare-fun m!3749241 () Bool)

(assert (=> b!3384066 m!3749241))

(assert (=> b!3384066 m!3749225))

(declare-fun m!3749243 () Bool)

(assert (=> b!3384066 m!3749243))

(assert (=> b!3384066 m!3749229))

(declare-fun m!3749245 () Bool)

(assert (=> b!3384066 m!3749245))

(assert (=> b!3383854 d!960319))

(declare-fun d!960321 () Bool)

(declare-fun e!2100768 () Bool)

(assert (=> d!960321 e!2100768))

(declare-fun res!1369209 () Bool)

(assert (=> d!960321 (=> (not res!1369209) (not e!2100768))))

(declare-fun lt!1149513 () BalanceConc!21870)

(assert (=> d!960321 (= res!1369209 (= (list!13344 lt!1149513) (Cons!36876 (h!42296 tokens!494) Nil!36876)))))

(declare-fun singleton!1082 (Token!10118) BalanceConc!21870)

(assert (=> d!960321 (= lt!1149513 (singleton!1082 (h!42296 tokens!494)))))

(assert (=> d!960321 (= (singletonSeq!2472 (h!42296 tokens!494)) lt!1149513)))

(declare-fun b!3384079 () Bool)

(declare-fun isBalanced!3357 (Conc!11128) Bool)

(assert (=> b!3384079 (= e!2100768 (isBalanced!3357 (c!576278 lt!1149513)))))

(assert (= (and d!960321 res!1369209) b!3384079))

(declare-fun m!3749247 () Bool)

(assert (=> d!960321 m!3749247))

(declare-fun m!3749249 () Bool)

(assert (=> d!960321 m!3749249))

(declare-fun m!3749251 () Bool)

(assert (=> b!3384079 m!3749251))

(assert (=> b!3383854 d!960321))

(declare-fun d!960323 () Bool)

(declare-fun c!576325 () Bool)

(assert (=> d!960323 (= c!576325 ((_ is Cons!36876) (Cons!36876 (h!42296 tokens!494) Nil!36876)))))

(declare-fun e!2100774 () List!36999)

(assert (=> d!960323 (= (printList!1513 thiss!18206 (Cons!36876 (h!42296 tokens!494) Nil!36876)) e!2100774)))

(declare-fun b!3384089 () Bool)

(assert (=> b!3384089 (= e!2100774 (++!9017 (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))) (printList!1513 thiss!18206 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))))

(declare-fun b!3384090 () Bool)

(assert (=> b!3384090 (= e!2100774 Nil!36875)))

(assert (= (and d!960323 c!576325) b!3384089))

(assert (= (and d!960323 (not c!576325)) b!3384090))

(declare-fun m!3749271 () Bool)

(assert (=> b!3384089 m!3749271))

(assert (=> b!3384089 m!3749271))

(declare-fun m!3749273 () Bool)

(assert (=> b!3384089 m!3749273))

(declare-fun m!3749275 () Bool)

(assert (=> b!3384089 m!3749275))

(assert (=> b!3384089 m!3749273))

(assert (=> b!3384089 m!3749275))

(declare-fun m!3749277 () Bool)

(assert (=> b!3384089 m!3749277))

(assert (=> b!3383854 d!960323))

(declare-fun d!960327 () Bool)

(declare-fun res!1369215 () Bool)

(declare-fun e!2100777 () Bool)

(assert (=> d!960327 (=> (not res!1369215) (not e!2100777))))

(declare-fun rulesValid!2005 (LexerInterface!4965 List!37001) Bool)

(assert (=> d!960327 (= res!1369215 (rulesValid!2005 thiss!18206 rules!2135))))

(assert (=> d!960327 (= (rulesInvariant!4362 thiss!18206 rules!2135) e!2100777)))

(declare-fun b!3384093 () Bool)

(declare-datatypes ((List!37003 0))(
  ( (Nil!36879) (Cons!36879 (h!42299 String!41364) (t!263680 List!37003)) )
))
(declare-fun noDuplicateTag!2001 (LexerInterface!4965 List!37001 List!37003) Bool)

(assert (=> b!3384093 (= e!2100777 (noDuplicateTag!2001 thiss!18206 rules!2135 Nil!36879))))

(assert (= (and d!960327 res!1369215) b!3384093))

(declare-fun m!3749281 () Bool)

(assert (=> d!960327 m!3749281))

(declare-fun m!3749283 () Bool)

(assert (=> b!3384093 m!3749283))

(assert (=> b!3383875 d!960327))

(declare-fun d!960331 () Bool)

(declare-fun res!1369220 () Bool)

(declare-fun e!2100782 () Bool)

(assert (=> d!960331 (=> res!1369220 e!2100782)))

(assert (=> d!960331 (= res!1369220 ((_ is Nil!36876) tokens!494))))

(assert (=> d!960331 (= (forall!7765 tokens!494 lambda!120549) e!2100782)))

(declare-fun b!3384098 () Bool)

(declare-fun e!2100783 () Bool)

(assert (=> b!3384098 (= e!2100782 e!2100783)))

(declare-fun res!1369221 () Bool)

(assert (=> b!3384098 (=> (not res!1369221) (not e!2100783))))

(declare-fun dynLambda!15347 (Int Token!10118) Bool)

(assert (=> b!3384098 (= res!1369221 (dynLambda!15347 lambda!120549 (h!42296 tokens!494)))))

(declare-fun b!3384099 () Bool)

(assert (=> b!3384099 (= e!2100783 (forall!7765 (t!263603 tokens!494) lambda!120549))))

(assert (= (and d!960331 (not res!1369220)) b!3384098))

(assert (= (and b!3384098 res!1369221) b!3384099))

(declare-fun b_lambda!96129 () Bool)

(assert (=> (not b_lambda!96129) (not b!3384098)))

(declare-fun m!3749285 () Bool)

(assert (=> b!3384098 m!3749285))

(declare-fun m!3749287 () Bool)

(assert (=> b!3384099 m!3749287))

(assert (=> b!3383855 d!960331))

(declare-fun bs!554987 () Bool)

(declare-fun d!960333 () Bool)

(assert (= bs!554987 (and d!960333 b!3383855)))

(declare-fun lambda!120554 () Int)

(assert (=> bs!554987 (not (= lambda!120554 lambda!120549))))

(declare-fun b!3384122 () Bool)

(declare-fun e!2100801 () Bool)

(assert (=> b!3384122 (= e!2100801 true)))

(declare-fun b!3384121 () Bool)

(declare-fun e!2100800 () Bool)

(assert (=> b!3384121 (= e!2100800 e!2100801)))

(declare-fun b!3384120 () Bool)

(declare-fun e!2100799 () Bool)

(assert (=> b!3384120 (= e!2100799 e!2100800)))

(assert (=> d!960333 e!2100799))

(assert (= b!3384121 b!3384122))

(assert (= b!3384120 b!3384121))

(assert (= (and d!960333 ((_ is Cons!36877) rules!2135)) b!3384120))

(declare-fun order!19429 () Int)

(declare-fun order!19427 () Int)

(declare-fun dynLambda!15348 (Int Int) Int)

(declare-fun dynLambda!15349 (Int Int) Int)

(assert (=> b!3384122 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (h!42297 rules!2135)))) (dynLambda!15349 order!19429 lambda!120554))))

(declare-fun order!19431 () Int)

(declare-fun dynLambda!15350 (Int Int) Int)

(assert (=> b!3384122 (< (dynLambda!15350 order!19431 (toChars!7423 (transformation!5376 (h!42297 rules!2135)))) (dynLambda!15349 order!19429 lambda!120554))))

(assert (=> d!960333 true))

(declare-fun e!2100792 () Bool)

(assert (=> d!960333 e!2100792))

(declare-fun res!1369233 () Bool)

(assert (=> d!960333 (=> (not res!1369233) (not e!2100792))))

(declare-fun lt!1149525 () Bool)

(assert (=> d!960333 (= res!1369233 (= lt!1149525 (forall!7765 (list!13344 lt!1149412) lambda!120554)))))

(declare-fun forall!7766 (BalanceConc!21870 Int) Bool)

(assert (=> d!960333 (= lt!1149525 (forall!7766 lt!1149412 lambda!120554))))

(assert (=> d!960333 (not (isEmpty!21123 rules!2135))))

(assert (=> d!960333 (= (rulesProduceEachTokenIndividually!1416 thiss!18206 rules!2135 lt!1149412) lt!1149525)))

(declare-fun b!3384111 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1816 (LexerInterface!4965 List!37001 List!37000) Bool)

(assert (=> b!3384111 (= e!2100792 (= lt!1149525 (rulesProduceEachTokenIndividuallyList!1816 thiss!18206 rules!2135 (list!13344 lt!1149412))))))

(assert (= (and d!960333 res!1369233) b!3384111))

(declare-fun m!3749305 () Bool)

(assert (=> d!960333 m!3749305))

(assert (=> d!960333 m!3749305))

(declare-fun m!3749307 () Bool)

(assert (=> d!960333 m!3749307))

(declare-fun m!3749309 () Bool)

(assert (=> d!960333 m!3749309))

(assert (=> d!960333 m!3748881))

(assert (=> b!3384111 m!3749305))

(assert (=> b!3384111 m!3749305))

(declare-fun m!3749311 () Bool)

(assert (=> b!3384111 m!3749311))

(assert (=> b!3383877 d!960333))

(declare-fun d!960337 () Bool)

(declare-fun fromListB!1705 (List!37000) BalanceConc!21870)

(assert (=> d!960337 (= (seqFromList!3806 tokens!494) (fromListB!1705 tokens!494))))

(declare-fun bs!554988 () Bool)

(assert (= bs!554988 d!960337))

(declare-fun m!3749313 () Bool)

(assert (=> bs!554988 m!3749313))

(assert (=> b!3383877 d!960337))

(declare-fun d!960339 () Bool)

(declare-fun res!1369238 () Bool)

(declare-fun e!2100806 () Bool)

(assert (=> d!960339 (=> res!1369238 e!2100806)))

(assert (=> d!960339 (= res!1369238 (not ((_ is Cons!36877) rules!2135)))))

(assert (=> d!960339 (= (sepAndNonSepRulesDisjointChars!1570 rules!2135 rules!2135) e!2100806)))

(declare-fun b!3384129 () Bool)

(declare-fun e!2100807 () Bool)

(assert (=> b!3384129 (= e!2100806 e!2100807)))

(declare-fun res!1369239 () Bool)

(assert (=> b!3384129 (=> (not res!1369239) (not e!2100807))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!680 (Rule!10552 List!37001) Bool)

(assert (=> b!3384129 (= res!1369239 (ruleDisjointCharsFromAllFromOtherType!680 (h!42297 rules!2135) rules!2135))))

(declare-fun b!3384130 () Bool)

(assert (=> b!3384130 (= e!2100807 (sepAndNonSepRulesDisjointChars!1570 rules!2135 (t!263604 rules!2135)))))

(assert (= (and d!960339 (not res!1369238)) b!3384129))

(assert (= (and b!3384129 res!1369239) b!3384130))

(declare-fun m!3749315 () Bool)

(assert (=> b!3384129 m!3749315))

(declare-fun m!3749317 () Bool)

(assert (=> b!3384130 m!3749317))

(assert (=> b!3383878 d!960339))

(declare-fun d!960341 () Bool)

(assert (=> d!960341 (= (get!11775 lt!1149406) (v!36503 lt!1149406))))

(assert (=> b!3383857 d!960341))

(declare-fun d!960343 () Bool)

(assert (=> d!960343 (= (list!13341 (charsOf!3390 (h!42296 tokens!494))) (list!13345 (c!576277 (charsOf!3390 (h!42296 tokens!494)))))))

(declare-fun bs!554989 () Bool)

(assert (= bs!554989 d!960343))

(declare-fun m!3749319 () Bool)

(assert (=> bs!554989 m!3749319))

(assert (=> b!3383858 d!960343))

(declare-fun d!960345 () Bool)

(declare-fun lt!1149528 () BalanceConc!21868)

(assert (=> d!960345 (= (list!13341 lt!1149528) (originalCharacters!6090 (h!42296 tokens!494)))))

(declare-fun dynLambda!15351 (Int TokenValue!5606) BalanceConc!21868)

(assert (=> d!960345 (= lt!1149528 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))))

(assert (=> d!960345 (= (charsOf!3390 (h!42296 tokens!494)) lt!1149528)))

(declare-fun b_lambda!96131 () Bool)

(assert (=> (not b_lambda!96131) (not d!960345)))

(declare-fun t!263627 () Bool)

(declare-fun tb!180375 () Bool)

(assert (=> (and b!3383882 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263627) tb!180375))

(declare-fun b!3384135 () Bool)

(declare-fun e!2100810 () Bool)

(declare-fun tp!1057537 () Bool)

(declare-fun inv!49956 (Conc!11127) Bool)

(assert (=> b!3384135 (= e!2100810 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))) tp!1057537))))

(declare-fun result!223858 () Bool)

(declare-fun inv!49957 (BalanceConc!21868) Bool)

(assert (=> tb!180375 (= result!223858 (and (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))) e!2100810))))

(assert (= tb!180375 b!3384135))

(declare-fun m!3749321 () Bool)

(assert (=> b!3384135 m!3749321))

(declare-fun m!3749323 () Bool)

(assert (=> tb!180375 m!3749323))

(assert (=> d!960345 t!263627))

(declare-fun b_and!235287 () Bool)

(assert (= b_and!235265 (and (=> t!263627 result!223858) b_and!235287)))

(declare-fun t!263629 () Bool)

(declare-fun tb!180377 () Bool)

(assert (=> (and b!3383881 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263629) tb!180377))

(declare-fun result!223862 () Bool)

(assert (= result!223862 result!223858))

(assert (=> d!960345 t!263629))

(declare-fun b_and!235289 () Bool)

(assert (= b_and!235269 (and (=> t!263629 result!223862) b_and!235289)))

(declare-fun tb!180379 () Bool)

(declare-fun t!263631 () Bool)

(assert (=> (and b!3383876 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263631) tb!180379))

(declare-fun result!223864 () Bool)

(assert (= result!223864 result!223858))

(assert (=> d!960345 t!263631))

(declare-fun b_and!235291 () Bool)

(assert (= b_and!235273 (and (=> t!263631 result!223864) b_and!235291)))

(declare-fun m!3749325 () Bool)

(assert (=> d!960345 m!3749325))

(declare-fun m!3749327 () Bool)

(assert (=> d!960345 m!3749327))

(assert (=> b!3383858 d!960345))

(declare-fun d!960347 () Bool)

(declare-fun lt!1149539 () Bool)

(declare-fun e!2100840 () Bool)

(assert (=> d!960347 (= lt!1149539 e!2100840)))

(declare-fun res!1369258 () Bool)

(assert (=> d!960347 (=> (not res!1369258) (not e!2100840))))

(assert (=> d!960347 (= res!1369258 (= (list!13344 (_1!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241))))) (list!13344 (singletonSeq!2472 separatorToken!241))))))

(declare-fun e!2100839 () Bool)

(assert (=> d!960347 (= lt!1149539 e!2100839)))

(declare-fun res!1369256 () Bool)

(assert (=> d!960347 (=> (not res!1369256) (not e!2100839))))

(declare-fun lt!1149540 () tuple2!36474)

(assert (=> d!960347 (= res!1369256 (= (size!27912 (_1!21371 lt!1149540)) 1))))

(assert (=> d!960347 (= lt!1149540 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241))))))

(assert (=> d!960347 (not (isEmpty!21123 rules!2135))))

(assert (=> d!960347 (= (rulesProduceIndividualToken!2457 thiss!18206 rules!2135 separatorToken!241) lt!1149539)))

(declare-fun b!3384177 () Bool)

(declare-fun res!1369257 () Bool)

(assert (=> b!3384177 (=> (not res!1369257) (not e!2100839))))

(assert (=> b!3384177 (= res!1369257 (= (apply!8584 (_1!21371 lt!1149540) 0) separatorToken!241))))

(declare-fun b!3384178 () Bool)

(declare-fun isEmpty!21130 (BalanceConc!21868) Bool)

(assert (=> b!3384178 (= e!2100839 (isEmpty!21130 (_2!21371 lt!1149540)))))

(declare-fun b!3384179 () Bool)

(assert (=> b!3384179 (= e!2100840 (isEmpty!21130 (_2!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241))))))))

(assert (= (and d!960347 res!1369256) b!3384177))

(assert (= (and b!3384177 res!1369257) b!3384178))

(assert (= (and d!960347 res!1369258) b!3384179))

(declare-fun m!3749371 () Bool)

(assert (=> d!960347 m!3749371))

(declare-fun m!3749373 () Bool)

(assert (=> d!960347 m!3749373))

(declare-fun m!3749375 () Bool)

(assert (=> d!960347 m!3749375))

(declare-fun m!3749377 () Bool)

(assert (=> d!960347 m!3749377))

(assert (=> d!960347 m!3749371))

(assert (=> d!960347 m!3749377))

(declare-fun m!3749379 () Bool)

(assert (=> d!960347 m!3749379))

(assert (=> d!960347 m!3749377))

(declare-fun m!3749381 () Bool)

(assert (=> d!960347 m!3749381))

(assert (=> d!960347 m!3748881))

(declare-fun m!3749383 () Bool)

(assert (=> b!3384177 m!3749383))

(declare-fun m!3749385 () Bool)

(assert (=> b!3384178 m!3749385))

(assert (=> b!3384179 m!3749377))

(assert (=> b!3384179 m!3749377))

(assert (=> b!3384179 m!3749371))

(assert (=> b!3384179 m!3749371))

(assert (=> b!3384179 m!3749373))

(declare-fun m!3749387 () Bool)

(assert (=> b!3384179 m!3749387))

(assert (=> b!3383879 d!960347))

(declare-fun b!3384202 () Bool)

(declare-fun e!2100853 () Bool)

(declare-fun e!2100855 () Bool)

(assert (=> b!3384202 (= e!2100853 e!2100855)))

(declare-fun c!576339 () Bool)

(assert (=> b!3384202 (= c!576339 ((_ is IntegerValue!16819) (value!173676 separatorToken!241)))))

(declare-fun b!3384203 () Bool)

(declare-fun res!1369267 () Bool)

(declare-fun e!2100854 () Bool)

(assert (=> b!3384203 (=> res!1369267 e!2100854)))

(assert (=> b!3384203 (= res!1369267 (not ((_ is IntegerValue!16820) (value!173676 separatorToken!241))))))

(assert (=> b!3384203 (= e!2100855 e!2100854)))

(declare-fun d!960367 () Bool)

(declare-fun c!576340 () Bool)

(assert (=> d!960367 (= c!576340 ((_ is IntegerValue!16818) (value!173676 separatorToken!241)))))

(assert (=> d!960367 (= (inv!21 (value!173676 separatorToken!241)) e!2100853)))

(declare-fun b!3384204 () Bool)

(declare-fun inv!17 (TokenValue!5606) Bool)

(assert (=> b!3384204 (= e!2100855 (inv!17 (value!173676 separatorToken!241)))))

(declare-fun b!3384205 () Bool)

(declare-fun inv!15 (TokenValue!5606) Bool)

(assert (=> b!3384205 (= e!2100854 (inv!15 (value!173676 separatorToken!241)))))

(declare-fun b!3384206 () Bool)

(declare-fun inv!16 (TokenValue!5606) Bool)

(assert (=> b!3384206 (= e!2100853 (inv!16 (value!173676 separatorToken!241)))))

(assert (= (and d!960367 c!576340) b!3384206))

(assert (= (and d!960367 (not c!576340)) b!3384202))

(assert (= (and b!3384202 c!576339) b!3384204))

(assert (= (and b!3384202 (not c!576339)) b!3384203))

(assert (= (and b!3384203 (not res!1369267)) b!3384205))

(declare-fun m!3749407 () Bool)

(assert (=> b!3384204 m!3749407))

(declare-fun m!3749409 () Bool)

(assert (=> b!3384205 m!3749409))

(declare-fun m!3749411 () Bool)

(assert (=> b!3384206 m!3749411))

(assert (=> b!3383848 d!960367))

(declare-fun d!960377 () Bool)

(declare-fun res!1369272 () Bool)

(declare-fun e!2100858 () Bool)

(assert (=> d!960377 (=> (not res!1369272) (not e!2100858))))

(assert (=> d!960377 (= res!1369272 (not (isEmpty!21121 (originalCharacters!6090 (h!42296 tokens!494)))))))

(assert (=> d!960377 (= (inv!49952 (h!42296 tokens!494)) e!2100858)))

(declare-fun b!3384211 () Bool)

(declare-fun res!1369273 () Bool)

(assert (=> b!3384211 (=> (not res!1369273) (not e!2100858))))

(assert (=> b!3384211 (= res!1369273 (= (originalCharacters!6090 (h!42296 tokens!494)) (list!13341 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))))))

(declare-fun b!3384212 () Bool)

(assert (=> b!3384212 (= e!2100858 (= (size!27908 (h!42296 tokens!494)) (size!27909 (originalCharacters!6090 (h!42296 tokens!494)))))))

(assert (= (and d!960377 res!1369272) b!3384211))

(assert (= (and b!3384211 res!1369273) b!3384212))

(declare-fun b_lambda!96137 () Bool)

(assert (=> (not b_lambda!96137) (not b!3384211)))

(assert (=> b!3384211 t!263627))

(declare-fun b_and!235305 () Bool)

(assert (= b_and!235287 (and (=> t!263627 result!223858) b_and!235305)))

(assert (=> b!3384211 t!263629))

(declare-fun b_and!235307 () Bool)

(assert (= b_and!235289 (and (=> t!263629 result!223862) b_and!235307)))

(assert (=> b!3384211 t!263631))

(declare-fun b_and!235309 () Bool)

(assert (= b_and!235291 (and (=> t!263631 result!223864) b_and!235309)))

(declare-fun m!3749413 () Bool)

(assert (=> d!960377 m!3749413))

(assert (=> b!3384211 m!3749327))

(assert (=> b!3384211 m!3749327))

(declare-fun m!3749415 () Bool)

(assert (=> b!3384211 m!3749415))

(declare-fun m!3749417 () Bool)

(assert (=> b!3384212 m!3749417))

(assert (=> b!3383869 d!960377))

(declare-fun d!960379 () Bool)

(declare-fun lt!1149547 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5086 (List!37001) (InoxSet Rule!10552))

(assert (=> d!960379 (= lt!1149547 (select (content!5086 rules!2135) (rule!7930 (h!42296 tokens!494))))))

(declare-fun e!2100864 () Bool)

(assert (=> d!960379 (= lt!1149547 e!2100864)))

(declare-fun res!1369279 () Bool)

(assert (=> d!960379 (=> (not res!1369279) (not e!2100864))))

(assert (=> d!960379 (= res!1369279 ((_ is Cons!36877) rules!2135))))

(assert (=> d!960379 (= (contains!6751 rules!2135 (rule!7930 (h!42296 tokens!494))) lt!1149547)))

(declare-fun b!3384217 () Bool)

(declare-fun e!2100863 () Bool)

(assert (=> b!3384217 (= e!2100864 e!2100863)))

(declare-fun res!1369278 () Bool)

(assert (=> b!3384217 (=> res!1369278 e!2100863)))

(assert (=> b!3384217 (= res!1369278 (= (h!42297 rules!2135) (rule!7930 (h!42296 tokens!494))))))

(declare-fun b!3384218 () Bool)

(assert (=> b!3384218 (= e!2100863 (contains!6751 (t!263604 rules!2135) (rule!7930 (h!42296 tokens!494))))))

(assert (= (and d!960379 res!1369279) b!3384217))

(assert (= (and b!3384217 (not res!1369278)) b!3384218))

(declare-fun m!3749419 () Bool)

(assert (=> d!960379 m!3749419))

(declare-fun m!3749421 () Bool)

(assert (=> d!960379 m!3749421))

(declare-fun m!3749423 () Bool)

(assert (=> b!3384218 m!3749423))

(assert (=> b!3383870 d!960379))

(declare-fun d!960381 () Bool)

(declare-fun lt!1149552 () Bool)

(declare-fun content!5087 (List!36999) (InoxSet C!20456))

(assert (=> d!960381 (= lt!1149552 (select (content!5087 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))) lt!1149396))))

(declare-fun e!2100869 () Bool)

(assert (=> d!960381 (= lt!1149552 e!2100869)))

(declare-fun res!1369284 () Bool)

(assert (=> d!960381 (=> (not res!1369284) (not e!2100869))))

(assert (=> d!960381 (= res!1369284 ((_ is Cons!36875) (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))

(assert (=> d!960381 (= (contains!6750 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149396) lt!1149552)))

(declare-fun b!3384223 () Bool)

(declare-fun e!2100870 () Bool)

(assert (=> b!3384223 (= e!2100869 e!2100870)))

(declare-fun res!1369285 () Bool)

(assert (=> b!3384223 (=> res!1369285 e!2100870)))

(assert (=> b!3384223 (= res!1369285 (= (h!42295 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))) lt!1149396))))

(declare-fun b!3384224 () Bool)

(assert (=> b!3384224 (= e!2100870 (contains!6750 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))) lt!1149396))))

(assert (= (and d!960381 res!1369284) b!3384223))

(assert (= (and b!3384223 (not res!1369285)) b!3384224))

(assert (=> d!960381 m!3748887))

(declare-fun m!3749425 () Bool)

(assert (=> d!960381 m!3749425))

(declare-fun m!3749427 () Bool)

(assert (=> d!960381 m!3749427))

(declare-fun m!3749429 () Bool)

(assert (=> b!3384224 m!3749429))

(assert (=> b!3383870 d!960381))

(declare-fun bm!244775 () Bool)

(declare-fun call!244781 () List!36999)

(declare-fun call!244782 () List!36999)

(assert (=> bm!244775 (= call!244781 call!244782)))

(declare-fun bm!244776 () Bool)

(declare-fun call!244780 () List!36999)

(declare-fun c!576349 () Bool)

(assert (=> bm!244776 (= call!244780 (usedCharacters!632 (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))

(declare-fun call!244783 () List!36999)

(declare-fun bm!244777 () Bool)

(assert (=> bm!244777 (= call!244783 (++!9017 (ite c!576349 call!244781 call!244780) (ite c!576349 call!244780 call!244781)))))

(declare-fun b!3384241 () Bool)

(declare-fun e!2100882 () List!36999)

(assert (=> b!3384241 (= e!2100882 Nil!36875)))

(declare-fun d!960383 () Bool)

(declare-fun c!576350 () Bool)

(assert (=> d!960383 (= c!576350 (or ((_ is EmptyExpr!10135) (regex!5376 (rule!7930 (h!42296 tokens!494)))) ((_ is EmptyLang!10135) (regex!5376 (rule!7930 (h!42296 tokens!494))))))))

(assert (=> d!960383 (= (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))) e!2100882)))

(declare-fun b!3384242 () Bool)

(declare-fun e!2100881 () List!36999)

(assert (=> b!3384242 (= e!2100881 call!244782)))

(declare-fun b!3384243 () Bool)

(declare-fun e!2100879 () List!36999)

(assert (=> b!3384243 (= e!2100879 call!244783)))

(declare-fun b!3384244 () Bool)

(declare-fun e!2100880 () List!36999)

(assert (=> b!3384244 (= e!2100882 e!2100880)))

(declare-fun c!576351 () Bool)

(assert (=> b!3384244 (= c!576351 ((_ is ElementMatch!10135) (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun bm!244778 () Bool)

(declare-fun c!576352 () Bool)

(assert (=> bm!244778 (= call!244782 (usedCharacters!632 (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))))

(declare-fun b!3384245 () Bool)

(assert (=> b!3384245 (= e!2100881 e!2100879)))

(assert (=> b!3384245 (= c!576349 ((_ is Union!10135) (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3384246 () Bool)

(assert (=> b!3384246 (= c!576352 ((_ is Star!10135) (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(assert (=> b!3384246 (= e!2100880 e!2100881)))

(declare-fun b!3384247 () Bool)

(assert (=> b!3384247 (= e!2100880 (Cons!36875 (c!576276 (regex!5376 (rule!7930 (h!42296 tokens!494)))) Nil!36875))))

(declare-fun b!3384248 () Bool)

(assert (=> b!3384248 (= e!2100879 call!244783)))

(assert (= (and d!960383 c!576350) b!3384241))

(assert (= (and d!960383 (not c!576350)) b!3384244))

(assert (= (and b!3384244 c!576351) b!3384247))

(assert (= (and b!3384244 (not c!576351)) b!3384246))

(assert (= (and b!3384246 c!576352) b!3384242))

(assert (= (and b!3384246 (not c!576352)) b!3384245))

(assert (= (and b!3384245 c!576349) b!3384248))

(assert (= (and b!3384245 (not c!576349)) b!3384243))

(assert (= (or b!3384248 b!3384243) bm!244776))

(assert (= (or b!3384248 b!3384243) bm!244775))

(assert (= (or b!3384248 b!3384243) bm!244777))

(assert (= (or b!3384242 bm!244775) bm!244778))

(declare-fun m!3749437 () Bool)

(assert (=> bm!244776 m!3749437))

(declare-fun m!3749439 () Bool)

(assert (=> bm!244777 m!3749439))

(declare-fun m!3749441 () Bool)

(assert (=> bm!244778 m!3749441))

(assert (=> b!3383870 d!960383))

(declare-fun d!960387 () Bool)

(assert (=> d!960387 (not (contains!6750 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149396))))

(declare-fun lt!1149559 () Unit!51991)

(declare-fun choose!19592 (LexerInterface!4965 List!37001 List!37001 Rule!10552 Rule!10552 C!20456) Unit!51991)

(assert (=> d!960387 (= lt!1149559 (choose!19592 thiss!18206 rules!2135 rules!2135 (rule!7930 (h!42296 tokens!494)) (rule!7930 separatorToken!241) lt!1149396))))

(assert (=> d!960387 (rulesInvariant!4362 thiss!18206 rules!2135)))

(assert (=> d!960387 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!216 thiss!18206 rules!2135 rules!2135 (rule!7930 (h!42296 tokens!494)) (rule!7930 separatorToken!241) lt!1149396) lt!1149559)))

(declare-fun bs!554996 () Bool)

(assert (= bs!554996 d!960387))

(assert (=> bs!554996 m!3748887))

(assert (=> bs!554996 m!3748887))

(assert (=> bs!554996 m!3748889))

(declare-fun m!3749451 () Bool)

(assert (=> bs!554996 m!3749451))

(assert (=> bs!554996 m!3748907))

(assert (=> b!3383870 d!960387))

(declare-fun d!960391 () Bool)

(declare-fun lt!1149560 () Bool)

(declare-fun e!2100887 () Bool)

(assert (=> d!960391 (= lt!1149560 e!2100887)))

(declare-fun res!1369294 () Bool)

(assert (=> d!960391 (=> (not res!1369294) (not e!2100887))))

(assert (=> d!960391 (= res!1369294 (= (list!13344 (_1!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494)))))) (list!13344 (singletonSeq!2472 (h!42296 tokens!494)))))))

(declare-fun e!2100886 () Bool)

(assert (=> d!960391 (= lt!1149560 e!2100886)))

(declare-fun res!1369292 () Bool)

(assert (=> d!960391 (=> (not res!1369292) (not e!2100886))))

(declare-fun lt!1149561 () tuple2!36474)

(assert (=> d!960391 (= res!1369292 (= (size!27912 (_1!21371 lt!1149561)) 1))))

(assert (=> d!960391 (= lt!1149561 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494)))))))

(assert (=> d!960391 (not (isEmpty!21123 rules!2135))))

(assert (=> d!960391 (= (rulesProduceIndividualToken!2457 thiss!18206 rules!2135 (h!42296 tokens!494)) lt!1149560)))

(declare-fun b!3384255 () Bool)

(declare-fun res!1369293 () Bool)

(assert (=> b!3384255 (=> (not res!1369293) (not e!2100886))))

(assert (=> b!3384255 (= res!1369293 (= (apply!8584 (_1!21371 lt!1149561) 0) (h!42296 tokens!494)))))

(declare-fun b!3384256 () Bool)

(assert (=> b!3384256 (= e!2100886 (isEmpty!21130 (_2!21371 lt!1149561)))))

(declare-fun b!3384257 () Bool)

(assert (=> b!3384257 (= e!2100887 (isEmpty!21130 (_2!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494)))))))))

(assert (= (and d!960391 res!1369292) b!3384255))

(assert (= (and b!3384255 res!1369293) b!3384256))

(assert (= (and d!960391 res!1369294) b!3384257))

(declare-fun m!3749453 () Bool)

(assert (=> d!960391 m!3749453))

(declare-fun m!3749455 () Bool)

(assert (=> d!960391 m!3749455))

(declare-fun m!3749457 () Bool)

(assert (=> d!960391 m!3749457))

(assert (=> d!960391 m!3748875))

(assert (=> d!960391 m!3749453))

(assert (=> d!960391 m!3748875))

(declare-fun m!3749459 () Bool)

(assert (=> d!960391 m!3749459))

(assert (=> d!960391 m!3748875))

(declare-fun m!3749461 () Bool)

(assert (=> d!960391 m!3749461))

(assert (=> d!960391 m!3748881))

(declare-fun m!3749463 () Bool)

(assert (=> b!3384255 m!3749463))

(declare-fun m!3749465 () Bool)

(assert (=> b!3384256 m!3749465))

(assert (=> b!3384257 m!3748875))

(assert (=> b!3384257 m!3748875))

(assert (=> b!3384257 m!3749453))

(assert (=> b!3384257 m!3749453))

(assert (=> b!3384257 m!3749455))

(declare-fun m!3749467 () Bool)

(assert (=> b!3384257 m!3749467))

(assert (=> b!3383849 d!960391))

(declare-fun b!3384307 () Bool)

(declare-fun e!2100920 () Bool)

(declare-fun e!2100922 () Bool)

(assert (=> b!3384307 (= e!2100920 e!2100922)))

(declare-fun res!1369324 () Bool)

(assert (=> b!3384307 (=> res!1369324 e!2100922)))

(declare-fun call!244786 () Bool)

(assert (=> b!3384307 (= res!1369324 call!244786)))

(declare-fun b!3384308 () Bool)

(declare-fun res!1369326 () Bool)

(declare-fun e!2100917 () Bool)

(assert (=> b!3384308 (=> res!1369326 e!2100917)))

(assert (=> b!3384308 (= res!1369326 (not ((_ is ElementMatch!10135) (regex!5376 lt!1149393))))))

(declare-fun e!2100919 () Bool)

(assert (=> b!3384308 (= e!2100919 e!2100917)))

(declare-fun b!3384309 () Bool)

(declare-fun res!1369321 () Bool)

(assert (=> b!3384309 (=> res!1369321 e!2100917)))

(declare-fun e!2100918 () Bool)

(assert (=> b!3384309 (= res!1369321 e!2100918)))

(declare-fun res!1369322 () Bool)

(assert (=> b!3384309 (=> (not res!1369322) (not e!2100918))))

(declare-fun lt!1149577 () Bool)

(assert (=> b!3384309 (= res!1369322 lt!1149577)))

(declare-fun b!3384310 () Bool)

(declare-fun res!1369320 () Bool)

(assert (=> b!3384310 (=> (not res!1369320) (not e!2100918))))

(assert (=> b!3384310 (= res!1369320 (not call!244786))))

(declare-fun b!3384311 () Bool)

(declare-fun e!2100916 () Bool)

(declare-fun nullable!3454 (Regex!10135) Bool)

(assert (=> b!3384311 (= e!2100916 (nullable!3454 (regex!5376 lt!1149393)))))

(declare-fun b!3384312 () Bool)

(declare-fun res!1369325 () Bool)

(assert (=> b!3384312 (=> (not res!1369325) (not e!2100918))))

(declare-fun tail!5361 (List!36999) List!36999)

(assert (=> b!3384312 (= res!1369325 (isEmpty!21121 (tail!5361 lt!1149400)))))

(declare-fun d!960393 () Bool)

(declare-fun e!2100921 () Bool)

(assert (=> d!960393 e!2100921))

(declare-fun c!576367 () Bool)

(assert (=> d!960393 (= c!576367 ((_ is EmptyExpr!10135) (regex!5376 lt!1149393)))))

(assert (=> d!960393 (= lt!1149577 e!2100916)))

(declare-fun c!576368 () Bool)

(assert (=> d!960393 (= c!576368 (isEmpty!21121 lt!1149400))))

(declare-fun validRegex!4610 (Regex!10135) Bool)

(assert (=> d!960393 (validRegex!4610 (regex!5376 lt!1149393))))

(assert (=> d!960393 (= (matchR!4727 (regex!5376 lt!1149393) lt!1149400) lt!1149577)))

(declare-fun b!3384306 () Bool)

(assert (=> b!3384306 (= e!2100918 (= (head!7229 lt!1149400) (c!576276 (regex!5376 lt!1149393))))))

(declare-fun b!3384313 () Bool)

(declare-fun res!1369319 () Bool)

(assert (=> b!3384313 (=> res!1369319 e!2100922)))

(assert (=> b!3384313 (= res!1369319 (not (isEmpty!21121 (tail!5361 lt!1149400))))))

(declare-fun b!3384314 () Bool)

(assert (=> b!3384314 (= e!2100921 e!2100919)))

(declare-fun c!576366 () Bool)

(assert (=> b!3384314 (= c!576366 ((_ is EmptyLang!10135) (regex!5376 lt!1149393)))))

(declare-fun b!3384315 () Bool)

(assert (=> b!3384315 (= e!2100917 e!2100920)))

(declare-fun res!1369323 () Bool)

(assert (=> b!3384315 (=> (not res!1369323) (not e!2100920))))

(assert (=> b!3384315 (= res!1369323 (not lt!1149577))))

(declare-fun b!3384316 () Bool)

(assert (=> b!3384316 (= e!2100921 (= lt!1149577 call!244786))))

(declare-fun bm!244781 () Bool)

(assert (=> bm!244781 (= call!244786 (isEmpty!21121 lt!1149400))))

(declare-fun b!3384317 () Bool)

(assert (=> b!3384317 (= e!2100919 (not lt!1149577))))

(declare-fun b!3384318 () Bool)

(declare-fun derivativeStep!3007 (Regex!10135 C!20456) Regex!10135)

(assert (=> b!3384318 (= e!2100916 (matchR!4727 (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400)) (tail!5361 lt!1149400)))))

(declare-fun b!3384319 () Bool)

(assert (=> b!3384319 (= e!2100922 (not (= (head!7229 lt!1149400) (c!576276 (regex!5376 lt!1149393)))))))

(assert (= (and d!960393 c!576368) b!3384311))

(assert (= (and d!960393 (not c!576368)) b!3384318))

(assert (= (and d!960393 c!576367) b!3384316))

(assert (= (and d!960393 (not c!576367)) b!3384314))

(assert (= (and b!3384314 c!576366) b!3384317))

(assert (= (and b!3384314 (not c!576366)) b!3384308))

(assert (= (and b!3384308 (not res!1369326)) b!3384309))

(assert (= (and b!3384309 res!1369322) b!3384310))

(assert (= (and b!3384310 res!1369320) b!3384312))

(assert (= (and b!3384312 res!1369325) b!3384306))

(assert (= (and b!3384309 (not res!1369321)) b!3384315))

(assert (= (and b!3384315 res!1369323) b!3384307))

(assert (= (and b!3384307 (not res!1369324)) b!3384313))

(assert (= (and b!3384313 (not res!1369319)) b!3384319))

(assert (= (or b!3384316 b!3384307 b!3384310) bm!244781))

(assert (=> b!3384306 m!3748977))

(declare-fun m!3749491 () Bool)

(assert (=> b!3384312 m!3749491))

(assert (=> b!3384312 m!3749491))

(declare-fun m!3749493 () Bool)

(assert (=> b!3384312 m!3749493))

(assert (=> b!3384318 m!3748977))

(assert (=> b!3384318 m!3748977))

(declare-fun m!3749495 () Bool)

(assert (=> b!3384318 m!3749495))

(assert (=> b!3384318 m!3749491))

(assert (=> b!3384318 m!3749495))

(assert (=> b!3384318 m!3749491))

(declare-fun m!3749497 () Bool)

(assert (=> b!3384318 m!3749497))

(declare-fun m!3749499 () Bool)

(assert (=> d!960393 m!3749499))

(declare-fun m!3749501 () Bool)

(assert (=> d!960393 m!3749501))

(assert (=> bm!244781 m!3749499))

(declare-fun m!3749503 () Bool)

(assert (=> b!3384311 m!3749503))

(assert (=> b!3384313 m!3749491))

(assert (=> b!3384313 m!3749491))

(assert (=> b!3384313 m!3749493))

(assert (=> b!3384319 m!3748977))

(assert (=> b!3383850 d!960393))

(declare-fun d!960405 () Bool)

(assert (=> d!960405 (= (get!11774 lt!1149411) (v!36502 lt!1149411))))

(assert (=> b!3383850 d!960405))

(declare-fun d!960407 () Bool)

(assert (=> d!960407 (= (inv!49949 (tag!5954 (rule!7930 (h!42296 tokens!494)))) (= (mod (str.len (value!173675 (tag!5954 (rule!7930 (h!42296 tokens!494))))) 2) 0))))

(assert (=> b!3383871 d!960407))

(declare-fun d!960409 () Bool)

(declare-fun res!1369329 () Bool)

(declare-fun e!2100925 () Bool)

(assert (=> d!960409 (=> (not res!1369329) (not e!2100925))))

(declare-fun semiInverseModEq!2245 (Int Int) Bool)

(assert (=> d!960409 (= res!1369329 (semiInverseModEq!2245 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))))))

(assert (=> d!960409 (= (inv!49953 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) e!2100925)))

(declare-fun b!3384322 () Bool)

(declare-fun equivClasses!2144 (Int Int) Bool)

(assert (=> b!3384322 (= e!2100925 (equivClasses!2144 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))))))

(assert (= (and d!960409 res!1369329) b!3384322))

(declare-fun m!3749505 () Bool)

(assert (=> d!960409 m!3749505))

(declare-fun m!3749507 () Bool)

(assert (=> b!3384322 m!3749507))

(assert (=> b!3383871 d!960409))

(declare-fun d!960411 () Bool)

(declare-fun e!2100928 () Bool)

(assert (=> d!960411 e!2100928))

(declare-fun res!1369334 () Bool)

(assert (=> d!960411 (=> (not res!1369334) (not e!2100928))))

(assert (=> d!960411 (= res!1369334 (isDefined!5717 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))))))

(declare-fun lt!1149580 () Unit!51991)

(declare-fun choose!19595 (LexerInterface!4965 List!37001 List!36999 Token!10118) Unit!51991)

(assert (=> d!960411 (= lt!1149580 (choose!19595 thiss!18206 rules!2135 lt!1149402 (h!42296 tokens!494)))))

(assert (=> d!960411 (rulesInvariant!4362 thiss!18206 rules!2135)))

(assert (=> d!960411 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1031 thiss!18206 rules!2135 lt!1149402 (h!42296 tokens!494)) lt!1149580)))

(declare-fun b!3384327 () Bool)

(declare-fun res!1369335 () Bool)

(assert (=> b!3384327 (=> (not res!1369335) (not e!2100928))))

(assert (=> b!3384327 (= res!1369335 (matchR!4727 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))) (list!13341 (charsOf!3390 (h!42296 tokens!494)))))))

(declare-fun b!3384328 () Bool)

(assert (=> b!3384328 (= e!2100928 (= (rule!7930 (h!42296 tokens!494)) (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))))))

(assert (= (and d!960411 res!1369334) b!3384327))

(assert (= (and b!3384327 res!1369335) b!3384328))

(assert (=> d!960411 m!3748963))

(assert (=> d!960411 m!3748963))

(declare-fun m!3749509 () Bool)

(assert (=> d!960411 m!3749509))

(declare-fun m!3749511 () Bool)

(assert (=> d!960411 m!3749511))

(assert (=> d!960411 m!3748907))

(assert (=> b!3384327 m!3748895))

(declare-fun m!3749513 () Bool)

(assert (=> b!3384327 m!3749513))

(assert (=> b!3384327 m!3748893))

(assert (=> b!3384327 m!3748895))

(assert (=> b!3384327 m!3748963))

(assert (=> b!3384327 m!3748963))

(declare-fun m!3749515 () Bool)

(assert (=> b!3384327 m!3749515))

(assert (=> b!3384327 m!3748893))

(assert (=> b!3384328 m!3748963))

(assert (=> b!3384328 m!3748963))

(assert (=> b!3384328 m!3749515))

(assert (=> b!3383851 d!960411))

(declare-fun d!960413 () Bool)

(declare-fun isEmpty!21132 (Option!7401) Bool)

(assert (=> d!960413 (= (isDefined!5717 lt!1149411) (not (isEmpty!21132 lt!1149411)))))

(declare-fun bs!554999 () Bool)

(assert (= bs!554999 d!960413))

(declare-fun m!3749517 () Bool)

(assert (=> bs!554999 m!3749517))

(assert (=> b!3383851 d!960413))

(declare-fun d!960415 () Bool)

(declare-fun e!2100929 () Bool)

(assert (=> d!960415 e!2100929))

(declare-fun res!1369336 () Bool)

(assert (=> d!960415 (=> (not res!1369336) (not e!2100929))))

(assert (=> d!960415 (= res!1369336 (isDefined!5717 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))))))

(declare-fun lt!1149581 () Unit!51991)

(assert (=> d!960415 (= lt!1149581 (choose!19595 thiss!18206 rules!2135 lt!1149400 separatorToken!241))))

(assert (=> d!960415 (rulesInvariant!4362 thiss!18206 rules!2135)))

(assert (=> d!960415 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1031 thiss!18206 rules!2135 lt!1149400 separatorToken!241) lt!1149581)))

(declare-fun b!3384329 () Bool)

(declare-fun res!1369337 () Bool)

(assert (=> b!3384329 (=> (not res!1369337) (not e!2100929))))

(assert (=> b!3384329 (= res!1369337 (matchR!4727 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))) (list!13341 (charsOf!3390 separatorToken!241))))))

(declare-fun b!3384330 () Bool)

(assert (=> b!3384330 (= e!2100929 (= (rule!7930 separatorToken!241) (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))))))

(assert (= (and d!960415 res!1369336) b!3384329))

(assert (= (and b!3384329 res!1369337) b!3384330))

(assert (=> d!960415 m!3748973))

(assert (=> d!960415 m!3748973))

(declare-fun m!3749519 () Bool)

(assert (=> d!960415 m!3749519))

(declare-fun m!3749521 () Bool)

(assert (=> d!960415 m!3749521))

(assert (=> d!960415 m!3748907))

(assert (=> b!3384329 m!3748927))

(declare-fun m!3749523 () Bool)

(assert (=> b!3384329 m!3749523))

(assert (=> b!3384329 m!3748919))

(assert (=> b!3384329 m!3748927))

(assert (=> b!3384329 m!3748973))

(assert (=> b!3384329 m!3748973))

(declare-fun m!3749525 () Bool)

(assert (=> b!3384329 m!3749525))

(assert (=> b!3384329 m!3748919))

(assert (=> b!3384330 m!3748973))

(assert (=> b!3384330 m!3748973))

(assert (=> b!3384330 m!3749525))

(assert (=> b!3383851 d!960415))

(declare-fun d!960417 () Bool)

(declare-fun dynLambda!15355 (Int BalanceConc!21868) TokenValue!5606)

(assert (=> d!960417 (= (apply!8581 (transformation!5376 (rule!7930 (h!42296 tokens!494))) lt!1149404) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404))))

(declare-fun b_lambda!96139 () Bool)

(assert (=> (not b_lambda!96139) (not d!960417)))

(declare-fun t!263636 () Bool)

(declare-fun tb!180381 () Bool)

(assert (=> (and b!3383882 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263636) tb!180381))

(declare-fun result!223866 () Bool)

(assert (=> tb!180381 (= result!223866 (inv!21 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404)))))

(declare-fun m!3749527 () Bool)

(assert (=> tb!180381 m!3749527))

(assert (=> d!960417 t!263636))

(declare-fun b_and!235311 () Bool)

(assert (= b_and!235263 (and (=> t!263636 result!223866) b_and!235311)))

(declare-fun t!263638 () Bool)

(declare-fun tb!180383 () Bool)

(assert (=> (and b!3383881 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263638) tb!180383))

(declare-fun result!223870 () Bool)

(assert (= result!223870 result!223866))

(assert (=> d!960417 t!263638))

(declare-fun b_and!235313 () Bool)

(assert (= b_and!235267 (and (=> t!263638 result!223870) b_and!235313)))

(declare-fun t!263640 () Bool)

(declare-fun tb!180385 () Bool)

(assert (=> (and b!3383876 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263640) tb!180385))

(declare-fun result!223872 () Bool)

(assert (= result!223872 result!223866))

(assert (=> d!960417 t!263640))

(declare-fun b_and!235315 () Bool)

(assert (= b_and!235271 (and (=> t!263640 result!223872) b_and!235315)))

(declare-fun m!3749529 () Bool)

(assert (=> d!960417 m!3749529))

(assert (=> b!3383851 d!960417))

(declare-fun d!960419 () Bool)

(assert (=> d!960419 (= (head!7229 lt!1149400) (h!42295 lt!1149400))))

(assert (=> b!3383851 d!960419))

(declare-fun b!3384345 () Bool)

(declare-fun e!2100941 () Option!7401)

(assert (=> b!3384345 (= e!2100941 None!7400)))

(declare-fun b!3384346 () Bool)

(declare-fun e!2100944 () Option!7401)

(assert (=> b!3384346 (= e!2100944 (Some!7400 (h!42297 rules!2135)))))

(declare-fun b!3384347 () Bool)

(declare-fun e!2100943 () Bool)

(declare-fun lt!1149590 () Option!7401)

(assert (=> b!3384347 (= e!2100943 (= (tag!5954 (get!11774 lt!1149590)) (tag!5954 (rule!7930 separatorToken!241))))))

(declare-fun b!3384348 () Bool)

(declare-fun e!2100942 () Bool)

(assert (=> b!3384348 (= e!2100942 e!2100943)))

(declare-fun res!1369343 () Bool)

(assert (=> b!3384348 (=> (not res!1369343) (not e!2100943))))

(assert (=> b!3384348 (= res!1369343 (contains!6751 rules!2135 (get!11774 lt!1149590)))))

(declare-fun d!960421 () Bool)

(assert (=> d!960421 e!2100942))

(declare-fun res!1369342 () Bool)

(assert (=> d!960421 (=> res!1369342 e!2100942)))

(assert (=> d!960421 (= res!1369342 (isEmpty!21132 lt!1149590))))

(assert (=> d!960421 (= lt!1149590 e!2100944)))

(declare-fun c!576373 () Bool)

(assert (=> d!960421 (= c!576373 (and ((_ is Cons!36877) rules!2135) (= (tag!5954 (h!42297 rules!2135)) (tag!5954 (rule!7930 separatorToken!241)))))))

(assert (=> d!960421 (rulesInvariant!4362 thiss!18206 rules!2135)))

(assert (=> d!960421 (= (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))) lt!1149590)))

(declare-fun b!3384349 () Bool)

(declare-fun lt!1149588 () Unit!51991)

(declare-fun lt!1149589 () Unit!51991)

(assert (=> b!3384349 (= lt!1149588 lt!1149589)))

(assert (=> b!3384349 (rulesInvariant!4362 thiss!18206 (t!263604 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!402 (LexerInterface!4965 Rule!10552 List!37001) Unit!51991)

(assert (=> b!3384349 (= lt!1149589 (lemmaInvariantOnRulesThenOnTail!402 thiss!18206 (h!42297 rules!2135) (t!263604 rules!2135)))))

(assert (=> b!3384349 (= e!2100941 (getRuleFromTag!1031 thiss!18206 (t!263604 rules!2135) (tag!5954 (rule!7930 separatorToken!241))))))

(declare-fun b!3384350 () Bool)

(assert (=> b!3384350 (= e!2100944 e!2100941)))

(declare-fun c!576374 () Bool)

(assert (=> b!3384350 (= c!576374 (and ((_ is Cons!36877) rules!2135) (not (= (tag!5954 (h!42297 rules!2135)) (tag!5954 (rule!7930 separatorToken!241))))))))

(assert (= (and d!960421 c!576373) b!3384346))

(assert (= (and d!960421 (not c!576373)) b!3384350))

(assert (= (and b!3384350 c!576374) b!3384349))

(assert (= (and b!3384350 (not c!576374)) b!3384345))

(assert (= (and d!960421 (not res!1369342)) b!3384348))

(assert (= (and b!3384348 res!1369343) b!3384347))

(declare-fun m!3749531 () Bool)

(assert (=> b!3384347 m!3749531))

(assert (=> b!3384348 m!3749531))

(assert (=> b!3384348 m!3749531))

(declare-fun m!3749533 () Bool)

(assert (=> b!3384348 m!3749533))

(declare-fun m!3749535 () Bool)

(assert (=> d!960421 m!3749535))

(assert (=> d!960421 m!3748907))

(declare-fun m!3749537 () Bool)

(assert (=> b!3384349 m!3749537))

(declare-fun m!3749539 () Bool)

(assert (=> b!3384349 m!3749539))

(declare-fun m!3749541 () Bool)

(assert (=> b!3384349 m!3749541))

(assert (=> b!3383851 d!960421))

(declare-fun d!960423 () Bool)

(declare-fun lt!1149593 () Int)

(assert (=> d!960423 (>= lt!1149593 0)))

(declare-fun e!2100947 () Int)

(assert (=> d!960423 (= lt!1149593 e!2100947)))

(declare-fun c!576377 () Bool)

(assert (=> d!960423 (= c!576377 ((_ is Nil!36875) lt!1149402))))

(assert (=> d!960423 (= (size!27909 lt!1149402) lt!1149593)))

(declare-fun b!3384355 () Bool)

(assert (=> b!3384355 (= e!2100947 0)))

(declare-fun b!3384356 () Bool)

(assert (=> b!3384356 (= e!2100947 (+ 1 (size!27909 (t!263602 lt!1149402))))))

(assert (= (and d!960423 c!576377) b!3384355))

(assert (= (and d!960423 (not c!576377)) b!3384356))

(declare-fun m!3749543 () Bool)

(assert (=> b!3384356 m!3749543))

(assert (=> b!3383851 d!960423))

(declare-fun d!960425 () Bool)

(assert (=> d!960425 (= (maxPrefixOneRule!1688 thiss!18206 (rule!7930 (h!42296 tokens!494)) lt!1149402) (Some!7401 (tuple2!36473 (Token!10119 (apply!8581 (transformation!5376 (rule!7930 (h!42296 tokens!494))) (seqFromList!3805 lt!1149402)) (rule!7930 (h!42296 tokens!494)) (size!27909 lt!1149402) lt!1149402) Nil!36875)))))

(declare-fun lt!1149596 () Unit!51991)

(declare-fun choose!19598 (LexerInterface!4965 List!37001 List!36999 List!36999 List!36999 Rule!10552) Unit!51991)

(assert (=> d!960425 (= lt!1149596 (choose!19598 thiss!18206 rules!2135 lt!1149402 lt!1149402 Nil!36875 (rule!7930 (h!42296 tokens!494))))))

(assert (=> d!960425 (not (isEmpty!21123 rules!2135))))

(assert (=> d!960425 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!787 thiss!18206 rules!2135 lt!1149402 lt!1149402 Nil!36875 (rule!7930 (h!42296 tokens!494))) lt!1149596)))

(declare-fun bs!555000 () Bool)

(assert (= bs!555000 d!960425))

(assert (=> bs!555000 m!3748989))

(assert (=> bs!555000 m!3748975))

(assert (=> bs!555000 m!3748941))

(assert (=> bs!555000 m!3748881))

(declare-fun m!3749545 () Bool)

(assert (=> bs!555000 m!3749545))

(assert (=> bs!555000 m!3748941))

(declare-fun m!3749547 () Bool)

(assert (=> bs!555000 m!3749547))

(assert (=> b!3383851 d!960425))

(declare-fun d!960427 () Bool)

(declare-fun lt!1149597 () Bool)

(assert (=> d!960427 (= lt!1149597 (select (content!5087 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))) lt!1149396))))

(declare-fun e!2100948 () Bool)

(assert (=> d!960427 (= lt!1149597 e!2100948)))

(declare-fun res!1369344 () Bool)

(assert (=> d!960427 (=> (not res!1369344) (not e!2100948))))

(assert (=> d!960427 (= res!1369344 ((_ is Cons!36875) (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))))))

(assert (=> d!960427 (= (contains!6750 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241))) lt!1149396) lt!1149597)))

(declare-fun b!3384357 () Bool)

(declare-fun e!2100949 () Bool)

(assert (=> b!3384357 (= e!2100948 e!2100949)))

(declare-fun res!1369345 () Bool)

(assert (=> b!3384357 (=> res!1369345 e!2100949)))

(assert (=> b!3384357 (= res!1369345 (= (h!42295 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))) lt!1149396))))

(declare-fun b!3384358 () Bool)

(assert (=> b!3384358 (= e!2100949 (contains!6750 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))) lt!1149396))))

(assert (= (and d!960427 res!1369344) b!3384357))

(assert (= (and b!3384357 (not res!1369345)) b!3384358))

(assert (=> d!960427 m!3748959))

(declare-fun m!3749549 () Bool)

(assert (=> d!960427 m!3749549))

(declare-fun m!3749551 () Bool)

(assert (=> d!960427 m!3749551))

(declare-fun m!3749553 () Bool)

(assert (=> b!3384358 m!3749553))

(assert (=> b!3383851 d!960427))

(declare-fun b!3384399 () Bool)

(declare-fun res!1369370 () Bool)

(declare-fun e!2100974 () Bool)

(assert (=> b!3384399 (=> (not res!1369370) (not e!2100974))))

(declare-fun lt!1149627 () Option!7402)

(assert (=> b!3384399 (= res!1369370 (< (size!27909 (_2!21370 (get!11775 lt!1149627))) (size!27909 lt!1149402)))))

(declare-fun b!3384400 () Bool)

(declare-fun e!2100973 () Bool)

(declare-datatypes ((tuple2!36482 0))(
  ( (tuple2!36483 (_1!21375 List!36999) (_2!21375 List!36999)) )
))
(declare-fun findLongestMatchInner!881 (Regex!10135 List!36999 Int List!36999 List!36999 Int) tuple2!36482)

(assert (=> b!3384400 (= e!2100973 (matchR!4727 (regex!5376 (rule!7930 (h!42296 tokens!494))) (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(declare-fun b!3384401 () Bool)

(declare-fun e!2100972 () Bool)

(assert (=> b!3384401 (= e!2100972 e!2100974)))

(declare-fun res!1369366 () Bool)

(assert (=> b!3384401 (=> (not res!1369366) (not e!2100974))))

(assert (=> b!3384401 (= res!1369366 (matchR!4727 (regex!5376 (rule!7930 (h!42296 tokens!494))) (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))))))

(declare-fun b!3384402 () Bool)

(declare-fun res!1369364 () Bool)

(assert (=> b!3384402 (=> (not res!1369364) (not e!2100974))))

(assert (=> b!3384402 (= res!1369364 (= (rule!7930 (_1!21370 (get!11775 lt!1149627))) (rule!7930 (h!42296 tokens!494))))))

(declare-fun d!960429 () Bool)

(assert (=> d!960429 e!2100972))

(declare-fun res!1369365 () Bool)

(assert (=> d!960429 (=> res!1369365 e!2100972)))

(declare-fun isEmpty!21133 (Option!7402) Bool)

(assert (=> d!960429 (= res!1369365 (isEmpty!21133 lt!1149627))))

(declare-fun e!2100975 () Option!7402)

(assert (=> d!960429 (= lt!1149627 e!2100975)))

(declare-fun c!576388 () Bool)

(declare-fun lt!1149626 () tuple2!36482)

(assert (=> d!960429 (= c!576388 (isEmpty!21121 (_1!21375 lt!1149626)))))

(declare-fun findLongestMatch!795 (Regex!10135 List!36999) tuple2!36482)

(assert (=> d!960429 (= lt!1149626 (findLongestMatch!795 (regex!5376 (rule!7930 (h!42296 tokens!494))) lt!1149402))))

(declare-fun ruleValid!1705 (LexerInterface!4965 Rule!10552) Bool)

(assert (=> d!960429 (ruleValid!1705 thiss!18206 (rule!7930 (h!42296 tokens!494)))))

(assert (=> d!960429 (= (maxPrefixOneRule!1688 thiss!18206 (rule!7930 (h!42296 tokens!494)) lt!1149402) lt!1149627)))

(declare-fun b!3384403 () Bool)

(assert (=> b!3384403 (= e!2100974 (= (size!27908 (_1!21370 (get!11775 lt!1149627))) (size!27909 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627))))))))

(declare-fun b!3384404 () Bool)

(assert (=> b!3384404 (= e!2100975 (Some!7401 (tuple2!36473 (Token!10119 (apply!8581 (transformation!5376 (rule!7930 (h!42296 tokens!494))) (seqFromList!3805 (_1!21375 lt!1149626))) (rule!7930 (h!42296 tokens!494)) (size!27911 (seqFromList!3805 (_1!21375 lt!1149626))) (_1!21375 lt!1149626)) (_2!21375 lt!1149626))))))

(declare-fun lt!1149624 () Unit!51991)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!854 (Regex!10135 List!36999) Unit!51991)

(assert (=> b!3384404 (= lt!1149624 (longestMatchIsAcceptedByMatchOrIsEmpty!854 (regex!5376 (rule!7930 (h!42296 tokens!494))) lt!1149402))))

(declare-fun res!1369369 () Bool)

(assert (=> b!3384404 (= res!1369369 (isEmpty!21121 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(assert (=> b!3384404 (=> res!1369369 e!2100973)))

(assert (=> b!3384404 e!2100973))

(declare-fun lt!1149628 () Unit!51991)

(assert (=> b!3384404 (= lt!1149628 lt!1149624)))

(declare-fun lt!1149625 () Unit!51991)

(declare-fun lemmaSemiInverse!1229 (TokenValueInjection!10640 BalanceConc!21868) Unit!51991)

(assert (=> b!3384404 (= lt!1149625 (lemmaSemiInverse!1229 (transformation!5376 (rule!7930 (h!42296 tokens!494))) (seqFromList!3805 (_1!21375 lt!1149626))))))

(declare-fun b!3384405 () Bool)

(declare-fun res!1369368 () Bool)

(assert (=> b!3384405 (=> (not res!1369368) (not e!2100974))))

(assert (=> b!3384405 (= res!1369368 (= (++!9017 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627)))) (_2!21370 (get!11775 lt!1149627))) lt!1149402))))

(declare-fun b!3384406 () Bool)

(declare-fun res!1369367 () Bool)

(assert (=> b!3384406 (=> (not res!1369367) (not e!2100974))))

(assert (=> b!3384406 (= res!1369367 (= (value!173676 (_1!21370 (get!11775 lt!1149627))) (apply!8581 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627)))))))))

(declare-fun b!3384407 () Bool)

(assert (=> b!3384407 (= e!2100975 None!7401)))

(assert (= (and d!960429 c!576388) b!3384407))

(assert (= (and d!960429 (not c!576388)) b!3384404))

(assert (= (and b!3384404 (not res!1369369)) b!3384400))

(assert (= (and d!960429 (not res!1369365)) b!3384401))

(assert (= (and b!3384401 res!1369366) b!3384405))

(assert (= (and b!3384405 res!1369368) b!3384399))

(assert (= (and b!3384399 res!1369370) b!3384402))

(assert (= (and b!3384402 res!1369364) b!3384406))

(assert (= (and b!3384406 res!1369367) b!3384403))

(declare-fun m!3749589 () Bool)

(assert (=> b!3384399 m!3749589))

(declare-fun m!3749591 () Bool)

(assert (=> b!3384399 m!3749591))

(assert (=> b!3384399 m!3748975))

(assert (=> b!3384401 m!3749589))

(declare-fun m!3749593 () Bool)

(assert (=> b!3384401 m!3749593))

(assert (=> b!3384401 m!3749593))

(declare-fun m!3749595 () Bool)

(assert (=> b!3384401 m!3749595))

(assert (=> b!3384401 m!3749595))

(declare-fun m!3749597 () Bool)

(assert (=> b!3384401 m!3749597))

(declare-fun m!3749599 () Bool)

(assert (=> b!3384400 m!3749599))

(assert (=> b!3384400 m!3748975))

(assert (=> b!3384400 m!3749599))

(assert (=> b!3384400 m!3748975))

(declare-fun m!3749601 () Bool)

(assert (=> b!3384400 m!3749601))

(declare-fun m!3749603 () Bool)

(assert (=> b!3384400 m!3749603))

(assert (=> b!3384402 m!3749589))

(assert (=> b!3384405 m!3749589))

(assert (=> b!3384405 m!3749593))

(assert (=> b!3384405 m!3749593))

(assert (=> b!3384405 m!3749595))

(assert (=> b!3384405 m!3749595))

(declare-fun m!3749605 () Bool)

(assert (=> b!3384405 m!3749605))

(assert (=> b!3384403 m!3749589))

(declare-fun m!3749607 () Bool)

(assert (=> b!3384403 m!3749607))

(declare-fun m!3749609 () Bool)

(assert (=> b!3384404 m!3749609))

(declare-fun m!3749611 () Bool)

(assert (=> b!3384404 m!3749611))

(declare-fun m!3749613 () Bool)

(assert (=> b!3384404 m!3749613))

(assert (=> b!3384404 m!3749611))

(assert (=> b!3384404 m!3748975))

(assert (=> b!3384404 m!3749599))

(assert (=> b!3384404 m!3749611))

(declare-fun m!3749615 () Bool)

(assert (=> b!3384404 m!3749615))

(assert (=> b!3384404 m!3749611))

(declare-fun m!3749617 () Bool)

(assert (=> b!3384404 m!3749617))

(assert (=> b!3384404 m!3749599))

(assert (=> b!3384404 m!3748975))

(assert (=> b!3384404 m!3749601))

(declare-fun m!3749619 () Bool)

(assert (=> b!3384404 m!3749619))

(assert (=> b!3384406 m!3749589))

(declare-fun m!3749621 () Bool)

(assert (=> b!3384406 m!3749621))

(assert (=> b!3384406 m!3749621))

(declare-fun m!3749623 () Bool)

(assert (=> b!3384406 m!3749623))

(declare-fun m!3749625 () Bool)

(assert (=> d!960429 m!3749625))

(declare-fun m!3749627 () Bool)

(assert (=> d!960429 m!3749627))

(declare-fun m!3749629 () Bool)

(assert (=> d!960429 m!3749629))

(declare-fun m!3749631 () Bool)

(assert (=> d!960429 m!3749631))

(assert (=> b!3383851 d!960429))

(declare-fun d!960447 () Bool)

(assert (=> d!960447 (rulesProduceIndividualToken!2457 thiss!18206 rules!2135 (h!42296 tokens!494))))

(declare-fun lt!1149648 () Unit!51991)

(declare-fun choose!19599 (LexerInterface!4965 List!37001 List!37000 Token!10118) Unit!51991)

(assert (=> d!960447 (= lt!1149648 (choose!19599 thiss!18206 rules!2135 tokens!494 (h!42296 tokens!494)))))

(assert (=> d!960447 (not (isEmpty!21123 rules!2135))))

(assert (=> d!960447 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!960 thiss!18206 rules!2135 tokens!494 (h!42296 tokens!494)) lt!1149648)))

(declare-fun bs!555005 () Bool)

(assert (= bs!555005 d!960447))

(assert (=> bs!555005 m!3748901))

(declare-fun m!3749731 () Bool)

(assert (=> bs!555005 m!3749731))

(assert (=> bs!555005 m!3748881))

(assert (=> b!3383851 d!960447))

(declare-fun d!960471 () Bool)

(assert (=> d!960471 (= (isEmpty!21121 (getSuffix!1470 lt!1149402 lt!1149402)) ((_ is Nil!36875) (getSuffix!1470 lt!1149402 lt!1149402)))))

(assert (=> b!3383851 d!960471))

(declare-fun d!960473 () Bool)

(declare-fun lt!1149651 () List!36999)

(assert (=> d!960473 (= (++!9017 lt!1149402 lt!1149651) lt!1149402)))

(declare-fun e!2101058 () List!36999)

(assert (=> d!960473 (= lt!1149651 e!2101058)))

(declare-fun c!576403 () Bool)

(assert (=> d!960473 (= c!576403 ((_ is Cons!36875) lt!1149402))))

(assert (=> d!960473 (>= (size!27909 lt!1149402) (size!27909 lt!1149402))))

(assert (=> d!960473 (= (getSuffix!1470 lt!1149402 lt!1149402) lt!1149651)))

(declare-fun b!3384534 () Bool)

(assert (=> b!3384534 (= e!2101058 (getSuffix!1470 (tail!5361 lt!1149402) (t!263602 lt!1149402)))))

(declare-fun b!3384535 () Bool)

(assert (=> b!3384535 (= e!2101058 lt!1149402)))

(assert (= (and d!960473 c!576403) b!3384534))

(assert (= (and d!960473 (not c!576403)) b!3384535))

(declare-fun m!3749733 () Bool)

(assert (=> d!960473 m!3749733))

(assert (=> d!960473 m!3748975))

(assert (=> d!960473 m!3748975))

(declare-fun m!3749735 () Bool)

(assert (=> b!3384534 m!3749735))

(assert (=> b!3384534 m!3749735))

(declare-fun m!3749737 () Bool)

(assert (=> b!3384534 m!3749737))

(assert (=> b!3383851 d!960473))

(declare-fun b!3384536 () Bool)

(declare-fun e!2101059 () Option!7401)

(assert (=> b!3384536 (= e!2101059 None!7400)))

(declare-fun b!3384537 () Bool)

(declare-fun e!2101062 () Option!7401)

(assert (=> b!3384537 (= e!2101062 (Some!7400 (h!42297 rules!2135)))))

(declare-fun b!3384538 () Bool)

(declare-fun e!2101061 () Bool)

(declare-fun lt!1149654 () Option!7401)

(assert (=> b!3384538 (= e!2101061 (= (tag!5954 (get!11774 lt!1149654)) (tag!5954 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3384539 () Bool)

(declare-fun e!2101060 () Bool)

(assert (=> b!3384539 (= e!2101060 e!2101061)))

(declare-fun res!1369417 () Bool)

(assert (=> b!3384539 (=> (not res!1369417) (not e!2101061))))

(assert (=> b!3384539 (= res!1369417 (contains!6751 rules!2135 (get!11774 lt!1149654)))))

(declare-fun d!960475 () Bool)

(assert (=> d!960475 e!2101060))

(declare-fun res!1369416 () Bool)

(assert (=> d!960475 (=> res!1369416 e!2101060)))

(assert (=> d!960475 (= res!1369416 (isEmpty!21132 lt!1149654))))

(assert (=> d!960475 (= lt!1149654 e!2101062)))

(declare-fun c!576404 () Bool)

(assert (=> d!960475 (= c!576404 (and ((_ is Cons!36877) rules!2135) (= (tag!5954 (h!42297 rules!2135)) (tag!5954 (rule!7930 (h!42296 tokens!494))))))))

(assert (=> d!960475 (rulesInvariant!4362 thiss!18206 rules!2135)))

(assert (=> d!960475 (= (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))) lt!1149654)))

(declare-fun b!3384540 () Bool)

(declare-fun lt!1149652 () Unit!51991)

(declare-fun lt!1149653 () Unit!51991)

(assert (=> b!3384540 (= lt!1149652 lt!1149653)))

(assert (=> b!3384540 (rulesInvariant!4362 thiss!18206 (t!263604 rules!2135))))

(assert (=> b!3384540 (= lt!1149653 (lemmaInvariantOnRulesThenOnTail!402 thiss!18206 (h!42297 rules!2135) (t!263604 rules!2135)))))

(assert (=> b!3384540 (= e!2101059 (getRuleFromTag!1031 thiss!18206 (t!263604 rules!2135) (tag!5954 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3384541 () Bool)

(assert (=> b!3384541 (= e!2101062 e!2101059)))

(declare-fun c!576405 () Bool)

(assert (=> b!3384541 (= c!576405 (and ((_ is Cons!36877) rules!2135) (not (= (tag!5954 (h!42297 rules!2135)) (tag!5954 (rule!7930 (h!42296 tokens!494)))))))))

(assert (= (and d!960475 c!576404) b!3384537))

(assert (= (and d!960475 (not c!576404)) b!3384541))

(assert (= (and b!3384541 c!576405) b!3384540))

(assert (= (and b!3384541 (not c!576405)) b!3384536))

(assert (= (and d!960475 (not res!1369416)) b!3384539))

(assert (= (and b!3384539 res!1369417) b!3384538))

(declare-fun m!3749739 () Bool)

(assert (=> b!3384538 m!3749739))

(assert (=> b!3384539 m!3749739))

(assert (=> b!3384539 m!3749739))

(declare-fun m!3749741 () Bool)

(assert (=> b!3384539 m!3749741))

(declare-fun m!3749743 () Bool)

(assert (=> d!960475 m!3749743))

(assert (=> d!960475 m!3748907))

(assert (=> b!3384540 m!3749537))

(assert (=> b!3384540 m!3749539))

(declare-fun m!3749745 () Bool)

(assert (=> b!3384540 m!3749745))

(assert (=> b!3383851 d!960475))

(declare-fun d!960477 () Bool)

(assert (=> d!960477 (= (isDefined!5717 lt!1149405) (not (isEmpty!21132 lt!1149405)))))

(declare-fun bs!555006 () Bool)

(assert (= bs!555006 d!960477))

(declare-fun m!3749747 () Bool)

(assert (=> bs!555006 m!3749747))

(assert (=> b!3383851 d!960477))

(declare-fun d!960479 () Bool)

(assert (=> d!960479 (isEmpty!21121 (getSuffix!1470 lt!1149402 lt!1149402))))

(declare-fun lt!1149657 () Unit!51991)

(declare-fun choose!19600 (List!36999) Unit!51991)

(assert (=> d!960479 (= lt!1149657 (choose!19600 lt!1149402))))

(assert (=> d!960479 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!128 lt!1149402) lt!1149657)))

(declare-fun bs!555007 () Bool)

(assert (= bs!555007 d!960479))

(assert (=> bs!555007 m!3748969))

(assert (=> bs!555007 m!3748969))

(assert (=> bs!555007 m!3748983))

(declare-fun m!3749749 () Bool)

(assert (=> bs!555007 m!3749749))

(assert (=> b!3383851 d!960479))

(declare-fun bm!244787 () Bool)

(declare-fun call!244793 () List!36999)

(declare-fun call!244794 () List!36999)

(assert (=> bm!244787 (= call!244793 call!244794)))

(declare-fun bm!244788 () Bool)

(declare-fun call!244792 () List!36999)

(declare-fun c!576406 () Bool)

(assert (=> bm!244788 (= call!244792 (usedCharacters!632 (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))))))

(declare-fun call!244795 () List!36999)

(declare-fun bm!244789 () Bool)

(assert (=> bm!244789 (= call!244795 (++!9017 (ite c!576406 call!244793 call!244792) (ite c!576406 call!244792 call!244793)))))

(declare-fun b!3384542 () Bool)

(declare-fun e!2101066 () List!36999)

(assert (=> b!3384542 (= e!2101066 Nil!36875)))

(declare-fun d!960481 () Bool)

(declare-fun c!576407 () Bool)

(assert (=> d!960481 (= c!576407 (or ((_ is EmptyExpr!10135) (regex!5376 (rule!7930 separatorToken!241))) ((_ is EmptyLang!10135) (regex!5376 (rule!7930 separatorToken!241)))))))

(assert (=> d!960481 (= (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241))) e!2101066)))

(declare-fun b!3384543 () Bool)

(declare-fun e!2101065 () List!36999)

(assert (=> b!3384543 (= e!2101065 call!244794)))

(declare-fun b!3384544 () Bool)

(declare-fun e!2101063 () List!36999)

(assert (=> b!3384544 (= e!2101063 call!244795)))

(declare-fun b!3384545 () Bool)

(declare-fun e!2101064 () List!36999)

(assert (=> b!3384545 (= e!2101066 e!2101064)))

(declare-fun c!576408 () Bool)

(assert (=> b!3384545 (= c!576408 ((_ is ElementMatch!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun c!576409 () Bool)

(declare-fun bm!244790 () Bool)

(assert (=> bm!244790 (= call!244794 (usedCharacters!632 (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))))))

(declare-fun b!3384546 () Bool)

(assert (=> b!3384546 (= e!2101065 e!2101063)))

(assert (=> b!3384546 (= c!576406 ((_ is Union!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun b!3384547 () Bool)

(assert (=> b!3384547 (= c!576409 ((_ is Star!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(assert (=> b!3384547 (= e!2101064 e!2101065)))

(declare-fun b!3384548 () Bool)

(assert (=> b!3384548 (= e!2101064 (Cons!36875 (c!576276 (regex!5376 (rule!7930 separatorToken!241))) Nil!36875))))

(declare-fun b!3384549 () Bool)

(assert (=> b!3384549 (= e!2101063 call!244795)))

(assert (= (and d!960481 c!576407) b!3384542))

(assert (= (and d!960481 (not c!576407)) b!3384545))

(assert (= (and b!3384545 c!576408) b!3384548))

(assert (= (and b!3384545 (not c!576408)) b!3384547))

(assert (= (and b!3384547 c!576409) b!3384543))

(assert (= (and b!3384547 (not c!576409)) b!3384546))

(assert (= (and b!3384546 c!576406) b!3384549))

(assert (= (and b!3384546 (not c!576406)) b!3384544))

(assert (= (or b!3384549 b!3384544) bm!244788))

(assert (= (or b!3384549 b!3384544) bm!244787))

(assert (= (or b!3384549 b!3384544) bm!244789))

(assert (= (or b!3384543 bm!244787) bm!244790))

(declare-fun m!3749751 () Bool)

(assert (=> bm!244788 m!3749751))

(declare-fun m!3749753 () Bool)

(assert (=> bm!244789 m!3749753))

(declare-fun m!3749755 () Bool)

(assert (=> bm!244790 m!3749755))

(assert (=> b!3383851 d!960481))

(declare-fun d!960483 () Bool)

(assert (=> d!960483 (= (isEmpty!21123 rules!2135) ((_ is Nil!36877) rules!2135))))

(assert (=> b!3383873 d!960483))

(declare-fun d!960485 () Bool)

(declare-fun lt!1149658 () Bool)

(assert (=> d!960485 (= lt!1149658 (select (content!5086 rules!2135) (rule!7930 separatorToken!241)))))

(declare-fun e!2101068 () Bool)

(assert (=> d!960485 (= lt!1149658 e!2101068)))

(declare-fun res!1369419 () Bool)

(assert (=> d!960485 (=> (not res!1369419) (not e!2101068))))

(assert (=> d!960485 (= res!1369419 ((_ is Cons!36877) rules!2135))))

(assert (=> d!960485 (= (contains!6751 rules!2135 (rule!7930 separatorToken!241)) lt!1149658)))

(declare-fun b!3384550 () Bool)

(declare-fun e!2101067 () Bool)

(assert (=> b!3384550 (= e!2101068 e!2101067)))

(declare-fun res!1369418 () Bool)

(assert (=> b!3384550 (=> res!1369418 e!2101067)))

(assert (=> b!3384550 (= res!1369418 (= (h!42297 rules!2135) (rule!7930 separatorToken!241)))))

(declare-fun b!3384551 () Bool)

(assert (=> b!3384551 (= e!2101067 (contains!6751 (t!263604 rules!2135) (rule!7930 separatorToken!241)))))

(assert (= (and d!960485 res!1369419) b!3384550))

(assert (= (and b!3384550 (not res!1369418)) b!3384551))

(assert (=> d!960485 m!3749419))

(declare-fun m!3749757 () Bool)

(assert (=> d!960485 m!3749757))

(declare-fun m!3749759 () Bool)

(assert (=> b!3384551 m!3749759))

(assert (=> b!3383874 d!960485))

(declare-fun d!960487 () Bool)

(assert (=> d!960487 (dynLambda!15347 lambda!120549 (h!42296 tokens!494))))

(declare-fun lt!1149661 () Unit!51991)

(declare-fun choose!19601 (List!37000 Int Token!10118) Unit!51991)

(assert (=> d!960487 (= lt!1149661 (choose!19601 tokens!494 lambda!120549 (h!42296 tokens!494)))))

(declare-fun e!2101071 () Bool)

(assert (=> d!960487 e!2101071))

(declare-fun res!1369422 () Bool)

(assert (=> d!960487 (=> (not res!1369422) (not e!2101071))))

(assert (=> d!960487 (= res!1369422 (forall!7765 tokens!494 lambda!120549))))

(assert (=> d!960487 (= (forallContained!1323 tokens!494 lambda!120549 (h!42296 tokens!494)) lt!1149661)))

(declare-fun b!3384554 () Bool)

(declare-fun contains!6753 (List!37000 Token!10118) Bool)

(assert (=> b!3384554 (= e!2101071 (contains!6753 tokens!494 (h!42296 tokens!494)))))

(assert (= (and d!960487 res!1369422) b!3384554))

(declare-fun b_lambda!96159 () Bool)

(assert (=> (not b_lambda!96159) (not d!960487)))

(assert (=> d!960487 m!3749285))

(declare-fun m!3749761 () Bool)

(assert (=> d!960487 m!3749761))

(assert (=> d!960487 m!3748883))

(declare-fun m!3749763 () Bool)

(assert (=> b!3384554 m!3749763))

(assert (=> b!3383865 d!960487))

(declare-fun b!3384555 () Bool)

(declare-fun e!2101072 () Bool)

(declare-fun e!2101074 () Bool)

(assert (=> b!3384555 (= e!2101072 e!2101074)))

(declare-fun c!576410 () Bool)

(assert (=> b!3384555 (= c!576410 ((_ is IntegerValue!16819) (value!173676 (h!42296 tokens!494))))))

(declare-fun b!3384556 () Bool)

(declare-fun res!1369423 () Bool)

(declare-fun e!2101073 () Bool)

(assert (=> b!3384556 (=> res!1369423 e!2101073)))

(assert (=> b!3384556 (= res!1369423 (not ((_ is IntegerValue!16820) (value!173676 (h!42296 tokens!494)))))))

(assert (=> b!3384556 (= e!2101074 e!2101073)))

(declare-fun d!960489 () Bool)

(declare-fun c!576411 () Bool)

(assert (=> d!960489 (= c!576411 ((_ is IntegerValue!16818) (value!173676 (h!42296 tokens!494))))))

(assert (=> d!960489 (= (inv!21 (value!173676 (h!42296 tokens!494))) e!2101072)))

(declare-fun b!3384557 () Bool)

(assert (=> b!3384557 (= e!2101074 (inv!17 (value!173676 (h!42296 tokens!494))))))

(declare-fun b!3384558 () Bool)

(assert (=> b!3384558 (= e!2101073 (inv!15 (value!173676 (h!42296 tokens!494))))))

(declare-fun b!3384559 () Bool)

(assert (=> b!3384559 (= e!2101072 (inv!16 (value!173676 (h!42296 tokens!494))))))

(assert (= (and d!960489 c!576411) b!3384559))

(assert (= (and d!960489 (not c!576411)) b!3384555))

(assert (= (and b!3384555 c!576410) b!3384557))

(assert (= (and b!3384555 (not c!576410)) b!3384556))

(assert (= (and b!3384556 (not res!1369423)) b!3384558))

(declare-fun m!3749765 () Bool)

(assert (=> b!3384557 m!3749765))

(declare-fun m!3749767 () Bool)

(assert (=> b!3384558 m!3749767))

(declare-fun m!3749769 () Bool)

(assert (=> b!3384559 m!3749769))

(assert (=> b!3383867 d!960489))

(declare-fun d!960491 () Bool)

(assert (=> d!960491 (not (matchR!4727 (regex!5376 (rule!7930 separatorToken!241)) lt!1149400))))

(declare-fun lt!1149664 () Unit!51991)

(declare-fun choose!19602 (Regex!10135 List!36999 C!20456) Unit!51991)

(assert (=> d!960491 (= lt!1149664 (choose!19602 (regex!5376 (rule!7930 separatorToken!241)) lt!1149400 lt!1149396))))

(assert (=> d!960491 (validRegex!4610 (regex!5376 (rule!7930 separatorToken!241)))))

(assert (=> d!960491 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!466 (regex!5376 (rule!7930 separatorToken!241)) lt!1149400 lt!1149396) lt!1149664)))

(declare-fun bs!555008 () Bool)

(assert (= bs!555008 d!960491))

(assert (=> bs!555008 m!3748899))

(declare-fun m!3749771 () Bool)

(assert (=> bs!555008 m!3749771))

(declare-fun m!3749773 () Bool)

(assert (=> bs!555008 m!3749773))

(assert (=> b!3383847 d!960491))

(declare-fun b!3384561 () Bool)

(declare-fun e!2101079 () Bool)

(declare-fun e!2101081 () Bool)

(assert (=> b!3384561 (= e!2101079 e!2101081)))

(declare-fun res!1369429 () Bool)

(assert (=> b!3384561 (=> res!1369429 e!2101081)))

(declare-fun call!244796 () Bool)

(assert (=> b!3384561 (= res!1369429 call!244796)))

(declare-fun b!3384562 () Bool)

(declare-fun res!1369431 () Bool)

(declare-fun e!2101076 () Bool)

(assert (=> b!3384562 (=> res!1369431 e!2101076)))

(assert (=> b!3384562 (= res!1369431 (not ((_ is ElementMatch!10135) (regex!5376 (rule!7930 separatorToken!241)))))))

(declare-fun e!2101078 () Bool)

(assert (=> b!3384562 (= e!2101078 e!2101076)))

(declare-fun b!3384563 () Bool)

(declare-fun res!1369426 () Bool)

(assert (=> b!3384563 (=> res!1369426 e!2101076)))

(declare-fun e!2101077 () Bool)

(assert (=> b!3384563 (= res!1369426 e!2101077)))

(declare-fun res!1369427 () Bool)

(assert (=> b!3384563 (=> (not res!1369427) (not e!2101077))))

(declare-fun lt!1149665 () Bool)

(assert (=> b!3384563 (= res!1369427 lt!1149665)))

(declare-fun b!3384564 () Bool)

(declare-fun res!1369425 () Bool)

(assert (=> b!3384564 (=> (not res!1369425) (not e!2101077))))

(assert (=> b!3384564 (= res!1369425 (not call!244796))))

(declare-fun b!3384565 () Bool)

(declare-fun e!2101075 () Bool)

(assert (=> b!3384565 (= e!2101075 (nullable!3454 (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun b!3384566 () Bool)

(declare-fun res!1369430 () Bool)

(assert (=> b!3384566 (=> (not res!1369430) (not e!2101077))))

(assert (=> b!3384566 (= res!1369430 (isEmpty!21121 (tail!5361 lt!1149400)))))

(declare-fun d!960493 () Bool)

(declare-fun e!2101080 () Bool)

(assert (=> d!960493 e!2101080))

(declare-fun c!576414 () Bool)

(assert (=> d!960493 (= c!576414 ((_ is EmptyExpr!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(assert (=> d!960493 (= lt!1149665 e!2101075)))

(declare-fun c!576415 () Bool)

(assert (=> d!960493 (= c!576415 (isEmpty!21121 lt!1149400))))

(assert (=> d!960493 (validRegex!4610 (regex!5376 (rule!7930 separatorToken!241)))))

(assert (=> d!960493 (= (matchR!4727 (regex!5376 (rule!7930 separatorToken!241)) lt!1149400) lt!1149665)))

(declare-fun b!3384560 () Bool)

(assert (=> b!3384560 (= e!2101077 (= (head!7229 lt!1149400) (c!576276 (regex!5376 (rule!7930 separatorToken!241)))))))

(declare-fun b!3384567 () Bool)

(declare-fun res!1369424 () Bool)

(assert (=> b!3384567 (=> res!1369424 e!2101081)))

(assert (=> b!3384567 (= res!1369424 (not (isEmpty!21121 (tail!5361 lt!1149400))))))

(declare-fun b!3384568 () Bool)

(assert (=> b!3384568 (= e!2101080 e!2101078)))

(declare-fun c!576413 () Bool)

(assert (=> b!3384568 (= c!576413 ((_ is EmptyLang!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun b!3384569 () Bool)

(assert (=> b!3384569 (= e!2101076 e!2101079)))

(declare-fun res!1369428 () Bool)

(assert (=> b!3384569 (=> (not res!1369428) (not e!2101079))))

(assert (=> b!3384569 (= res!1369428 (not lt!1149665))))

(declare-fun b!3384570 () Bool)

(assert (=> b!3384570 (= e!2101080 (= lt!1149665 call!244796))))

(declare-fun bm!244791 () Bool)

(assert (=> bm!244791 (= call!244796 (isEmpty!21121 lt!1149400))))

(declare-fun b!3384571 () Bool)

(assert (=> b!3384571 (= e!2101078 (not lt!1149665))))

(declare-fun b!3384572 () Bool)

(assert (=> b!3384572 (= e!2101075 (matchR!4727 (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400)) (tail!5361 lt!1149400)))))

(declare-fun b!3384573 () Bool)

(assert (=> b!3384573 (= e!2101081 (not (= (head!7229 lt!1149400) (c!576276 (regex!5376 (rule!7930 separatorToken!241))))))))

(assert (= (and d!960493 c!576415) b!3384565))

(assert (= (and d!960493 (not c!576415)) b!3384572))

(assert (= (and d!960493 c!576414) b!3384570))

(assert (= (and d!960493 (not c!576414)) b!3384568))

(assert (= (and b!3384568 c!576413) b!3384571))

(assert (= (and b!3384568 (not c!576413)) b!3384562))

(assert (= (and b!3384562 (not res!1369431)) b!3384563))

(assert (= (and b!3384563 res!1369427) b!3384564))

(assert (= (and b!3384564 res!1369425) b!3384566))

(assert (= (and b!3384566 res!1369430) b!3384560))

(assert (= (and b!3384563 (not res!1369426)) b!3384569))

(assert (= (and b!3384569 res!1369428) b!3384561))

(assert (= (and b!3384561 (not res!1369429)) b!3384567))

(assert (= (and b!3384567 (not res!1369424)) b!3384573))

(assert (= (or b!3384570 b!3384561 b!3384564) bm!244791))

(assert (=> b!3384560 m!3748977))

(assert (=> b!3384566 m!3749491))

(assert (=> b!3384566 m!3749491))

(assert (=> b!3384566 m!3749493))

(assert (=> b!3384572 m!3748977))

(assert (=> b!3384572 m!3748977))

(declare-fun m!3749775 () Bool)

(assert (=> b!3384572 m!3749775))

(assert (=> b!3384572 m!3749491))

(assert (=> b!3384572 m!3749775))

(assert (=> b!3384572 m!3749491))

(declare-fun m!3749777 () Bool)

(assert (=> b!3384572 m!3749777))

(assert (=> d!960493 m!3749499))

(assert (=> d!960493 m!3749773))

(assert (=> bm!244791 m!3749499))

(declare-fun m!3749779 () Bool)

(assert (=> b!3384565 m!3749779))

(assert (=> b!3384567 m!3749491))

(assert (=> b!3384567 m!3749491))

(assert (=> b!3384567 m!3749493))

(assert (=> b!3384573 m!3748977))

(assert (=> b!3383847 d!960493))

(declare-fun b!3384575 () Bool)

(declare-fun e!2101086 () Bool)

(declare-fun e!2101088 () Bool)

(assert (=> b!3384575 (= e!2101086 e!2101088)))

(declare-fun res!1369437 () Bool)

(assert (=> b!3384575 (=> res!1369437 e!2101088)))

(declare-fun call!244797 () Bool)

(assert (=> b!3384575 (= res!1369437 call!244797)))

(declare-fun b!3384576 () Bool)

(declare-fun res!1369439 () Bool)

(declare-fun e!2101083 () Bool)

(assert (=> b!3384576 (=> res!1369439 e!2101083)))

(assert (=> b!3384576 (= res!1369439 (not ((_ is ElementMatch!10135) (regex!5376 lt!1149398))))))

(declare-fun e!2101085 () Bool)

(assert (=> b!3384576 (= e!2101085 e!2101083)))

(declare-fun b!3384577 () Bool)

(declare-fun res!1369434 () Bool)

(assert (=> b!3384577 (=> res!1369434 e!2101083)))

(declare-fun e!2101084 () Bool)

(assert (=> b!3384577 (= res!1369434 e!2101084)))

(declare-fun res!1369435 () Bool)

(assert (=> b!3384577 (=> (not res!1369435) (not e!2101084))))

(declare-fun lt!1149666 () Bool)

(assert (=> b!3384577 (= res!1369435 lt!1149666)))

(declare-fun b!3384578 () Bool)

(declare-fun res!1369433 () Bool)

(assert (=> b!3384578 (=> (not res!1369433) (not e!2101084))))

(assert (=> b!3384578 (= res!1369433 (not call!244797))))

(declare-fun b!3384579 () Bool)

(declare-fun e!2101082 () Bool)

(assert (=> b!3384579 (= e!2101082 (nullable!3454 (regex!5376 lt!1149398)))))

(declare-fun b!3384580 () Bool)

(declare-fun res!1369438 () Bool)

(assert (=> b!3384580 (=> (not res!1369438) (not e!2101084))))

(assert (=> b!3384580 (= res!1369438 (isEmpty!21121 (tail!5361 lt!1149402)))))

(declare-fun d!960495 () Bool)

(declare-fun e!2101087 () Bool)

(assert (=> d!960495 e!2101087))

(declare-fun c!576417 () Bool)

(assert (=> d!960495 (= c!576417 ((_ is EmptyExpr!10135) (regex!5376 lt!1149398)))))

(assert (=> d!960495 (= lt!1149666 e!2101082)))

(declare-fun c!576418 () Bool)

(assert (=> d!960495 (= c!576418 (isEmpty!21121 lt!1149402))))

(assert (=> d!960495 (validRegex!4610 (regex!5376 lt!1149398))))

(assert (=> d!960495 (= (matchR!4727 (regex!5376 lt!1149398) lt!1149402) lt!1149666)))

(declare-fun b!3384574 () Bool)

(assert (=> b!3384574 (= e!2101084 (= (head!7229 lt!1149402) (c!576276 (regex!5376 lt!1149398))))))

(declare-fun b!3384581 () Bool)

(declare-fun res!1369432 () Bool)

(assert (=> b!3384581 (=> res!1369432 e!2101088)))

(assert (=> b!3384581 (= res!1369432 (not (isEmpty!21121 (tail!5361 lt!1149402))))))

(declare-fun b!3384582 () Bool)

(assert (=> b!3384582 (= e!2101087 e!2101085)))

(declare-fun c!576416 () Bool)

(assert (=> b!3384582 (= c!576416 ((_ is EmptyLang!10135) (regex!5376 lt!1149398)))))

(declare-fun b!3384583 () Bool)

(assert (=> b!3384583 (= e!2101083 e!2101086)))

(declare-fun res!1369436 () Bool)

(assert (=> b!3384583 (=> (not res!1369436) (not e!2101086))))

(assert (=> b!3384583 (= res!1369436 (not lt!1149666))))

(declare-fun b!3384584 () Bool)

(assert (=> b!3384584 (= e!2101087 (= lt!1149666 call!244797))))

(declare-fun bm!244792 () Bool)

(assert (=> bm!244792 (= call!244797 (isEmpty!21121 lt!1149402))))

(declare-fun b!3384585 () Bool)

(assert (=> b!3384585 (= e!2101085 (not lt!1149666))))

(declare-fun b!3384586 () Bool)

(assert (=> b!3384586 (= e!2101082 (matchR!4727 (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402)) (tail!5361 lt!1149402)))))

(declare-fun b!3384587 () Bool)

(assert (=> b!3384587 (= e!2101088 (not (= (head!7229 lt!1149402) (c!576276 (regex!5376 lt!1149398)))))))

(assert (= (and d!960495 c!576418) b!3384579))

(assert (= (and d!960495 (not c!576418)) b!3384586))

(assert (= (and d!960495 c!576417) b!3384584))

(assert (= (and d!960495 (not c!576417)) b!3384582))

(assert (= (and b!3384582 c!576416) b!3384585))

(assert (= (and b!3384582 (not c!576416)) b!3384576))

(assert (= (and b!3384576 (not res!1369439)) b!3384577))

(assert (= (and b!3384577 res!1369435) b!3384578))

(assert (= (and b!3384578 res!1369433) b!3384580))

(assert (= (and b!3384580 res!1369438) b!3384574))

(assert (= (and b!3384577 (not res!1369434)) b!3384583))

(assert (= (and b!3384583 res!1369436) b!3384575))

(assert (= (and b!3384575 (not res!1369437)) b!3384581))

(assert (= (and b!3384581 (not res!1369432)) b!3384587))

(assert (= (or b!3384584 b!3384575 b!3384578) bm!244792))

(declare-fun m!3749781 () Bool)

(assert (=> b!3384574 m!3749781))

(assert (=> b!3384580 m!3749735))

(assert (=> b!3384580 m!3749735))

(declare-fun m!3749783 () Bool)

(assert (=> b!3384580 m!3749783))

(assert (=> b!3384586 m!3749781))

(assert (=> b!3384586 m!3749781))

(declare-fun m!3749785 () Bool)

(assert (=> b!3384586 m!3749785))

(assert (=> b!3384586 m!3749735))

(assert (=> b!3384586 m!3749785))

(assert (=> b!3384586 m!3749735))

(declare-fun m!3749787 () Bool)

(assert (=> b!3384586 m!3749787))

(declare-fun m!3749789 () Bool)

(assert (=> d!960495 m!3749789))

(declare-fun m!3749791 () Bool)

(assert (=> d!960495 m!3749791))

(assert (=> bm!244792 m!3749789))

(declare-fun m!3749793 () Bool)

(assert (=> b!3384579 m!3749793))

(assert (=> b!3384581 m!3749735))

(assert (=> b!3384581 m!3749735))

(assert (=> b!3384581 m!3749783))

(assert (=> b!3384587 m!3749781))

(assert (=> b!3383880 d!960495))

(declare-fun d!960497 () Bool)

(assert (=> d!960497 (= (get!11774 lt!1149405) (v!36502 lt!1149405))))

(assert (=> b!3383880 d!960497))

(declare-fun d!960499 () Bool)

(assert (=> d!960499 (= (inv!49949 (tag!5954 (rule!7930 separatorToken!241))) (= (mod (str.len (value!173675 (tag!5954 (rule!7930 separatorToken!241)))) 2) 0))))

(assert (=> b!3383859 d!960499))

(declare-fun d!960501 () Bool)

(declare-fun res!1369440 () Bool)

(declare-fun e!2101089 () Bool)

(assert (=> d!960501 (=> (not res!1369440) (not e!2101089))))

(assert (=> d!960501 (= res!1369440 (semiInverseModEq!2245 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241)))))))

(assert (=> d!960501 (= (inv!49953 (transformation!5376 (rule!7930 separatorToken!241))) e!2101089)))

(declare-fun b!3384588 () Bool)

(assert (=> b!3384588 (= e!2101089 (equivClasses!2144 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241)))))))

(assert (= (and d!960501 res!1369440) b!3384588))

(declare-fun m!3749795 () Bool)

(assert (=> d!960501 m!3749795))

(declare-fun m!3749797 () Bool)

(assert (=> b!3384588 m!3749797))

(assert (=> b!3383859 d!960501))

(declare-fun d!960503 () Bool)

(assert (=> d!960503 (= (list!13341 lt!1149413) (list!13345 (c!576277 lt!1149413)))))

(declare-fun bs!555009 () Bool)

(assert (= bs!555009 d!960503))

(declare-fun m!3749799 () Bool)

(assert (=> bs!555009 m!3749799))

(assert (=> b!3383860 d!960503))

(declare-fun d!960505 () Bool)

(declare-fun e!2101095 () Bool)

(assert (=> d!960505 e!2101095))

(declare-fun res!1369445 () Bool)

(assert (=> d!960505 (=> (not res!1369445) (not e!2101095))))

(declare-fun lt!1149669 () List!36999)

(assert (=> d!960505 (= res!1369445 (= (content!5087 lt!1149669) ((_ map or) (content!5087 lt!1149402) (content!5087 lt!1149400))))))

(declare-fun e!2101094 () List!36999)

(assert (=> d!960505 (= lt!1149669 e!2101094)))

(declare-fun c!576421 () Bool)

(assert (=> d!960505 (= c!576421 ((_ is Nil!36875) lt!1149402))))

(assert (=> d!960505 (= (++!9017 lt!1149402 lt!1149400) lt!1149669)))

(declare-fun b!3384598 () Bool)

(assert (=> b!3384598 (= e!2101094 (Cons!36875 (h!42295 lt!1149402) (++!9017 (t!263602 lt!1149402) lt!1149400)))))

(declare-fun b!3384597 () Bool)

(assert (=> b!3384597 (= e!2101094 lt!1149400)))

(declare-fun b!3384599 () Bool)

(declare-fun res!1369446 () Bool)

(assert (=> b!3384599 (=> (not res!1369446) (not e!2101095))))

(assert (=> b!3384599 (= res!1369446 (= (size!27909 lt!1149669) (+ (size!27909 lt!1149402) (size!27909 lt!1149400))))))

(declare-fun b!3384600 () Bool)

(assert (=> b!3384600 (= e!2101095 (or (not (= lt!1149400 Nil!36875)) (= lt!1149669 lt!1149402)))))

(assert (= (and d!960505 c!576421) b!3384597))

(assert (= (and d!960505 (not c!576421)) b!3384598))

(assert (= (and d!960505 res!1369445) b!3384599))

(assert (= (and b!3384599 res!1369446) b!3384600))

(declare-fun m!3749801 () Bool)

(assert (=> d!960505 m!3749801))

(declare-fun m!3749803 () Bool)

(assert (=> d!960505 m!3749803))

(declare-fun m!3749805 () Bool)

(assert (=> d!960505 m!3749805))

(declare-fun m!3749807 () Bool)

(assert (=> b!3384598 m!3749807))

(declare-fun m!3749809 () Bool)

(assert (=> b!3384599 m!3749809))

(assert (=> b!3384599 m!3748975))

(declare-fun m!3749811 () Bool)

(assert (=> b!3384599 m!3749811))

(assert (=> b!3383860 d!960505))

(declare-fun d!960507 () Bool)

(assert (=> d!960507 (= (list!13341 (charsOf!3390 separatorToken!241)) (list!13345 (c!576277 (charsOf!3390 separatorToken!241))))))

(declare-fun bs!555010 () Bool)

(assert (= bs!555010 d!960507))

(declare-fun m!3749813 () Bool)

(assert (=> bs!555010 m!3749813))

(assert (=> b!3383860 d!960507))

(declare-fun lt!1149672 () BalanceConc!21868)

(declare-fun d!960509 () Bool)

(declare-fun printWithSeparatorTokenList!258 (LexerInterface!4965 List!37000 Token!10118) List!36999)

(assert (=> d!960509 (= (list!13341 lt!1149672) (printWithSeparatorTokenList!258 thiss!18206 (list!13344 lt!1149412) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!74 (LexerInterface!4965 BalanceConc!21870 Token!10118 Int BalanceConc!21868) BalanceConc!21868)

(assert (=> d!960509 (= lt!1149672 (printWithSeparatorTokenTailRec!74 thiss!18206 lt!1149412 separatorToken!241 0 (BalanceConc!21869 Empty!11127)))))

(assert (=> d!960509 (isSeparator!5376 (rule!7930 separatorToken!241))))

(assert (=> d!960509 (= (printWithSeparatorToken!156 thiss!18206 lt!1149412 separatorToken!241) lt!1149672)))

(declare-fun bs!555011 () Bool)

(assert (= bs!555011 d!960509))

(declare-fun m!3749815 () Bool)

(assert (=> bs!555011 m!3749815))

(assert (=> bs!555011 m!3749305))

(assert (=> bs!555011 m!3749305))

(declare-fun m!3749817 () Bool)

(assert (=> bs!555011 m!3749817))

(declare-fun m!3749819 () Bool)

(assert (=> bs!555011 m!3749819))

(assert (=> b!3383860 d!960509))

(declare-fun d!960511 () Bool)

(declare-fun lt!1149673 () BalanceConc!21868)

(assert (=> d!960511 (= (list!13341 lt!1149673) (originalCharacters!6090 separatorToken!241))))

(assert (=> d!960511 (= lt!1149673 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))))

(assert (=> d!960511 (= (charsOf!3390 separatorToken!241) lt!1149673)))

(declare-fun b_lambda!96161 () Bool)

(assert (=> (not b_lambda!96161) (not d!960511)))

(declare-fun t!263663 () Bool)

(declare-fun tb!180405 () Bool)

(assert (=> (and b!3383882 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) t!263663) tb!180405))

(declare-fun b!3384601 () Bool)

(declare-fun e!2101096 () Bool)

(declare-fun tp!1057594 () Bool)

(assert (=> b!3384601 (= e!2101096 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))) tp!1057594))))

(declare-fun result!223902 () Bool)

(assert (=> tb!180405 (= result!223902 (and (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))) e!2101096))))

(assert (= tb!180405 b!3384601))

(declare-fun m!3749821 () Bool)

(assert (=> b!3384601 m!3749821))

(declare-fun m!3749823 () Bool)

(assert (=> tb!180405 m!3749823))

(assert (=> d!960511 t!263663))

(declare-fun b_and!235331 () Bool)

(assert (= b_and!235305 (and (=> t!263663 result!223902) b_and!235331)))

(declare-fun t!263665 () Bool)

(declare-fun tb!180407 () Bool)

(assert (=> (and b!3383881 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) t!263665) tb!180407))

(declare-fun result!223904 () Bool)

(assert (= result!223904 result!223902))

(assert (=> d!960511 t!263665))

(declare-fun b_and!235333 () Bool)

(assert (= b_and!235307 (and (=> t!263665 result!223904) b_and!235333)))

(declare-fun t!263667 () Bool)

(declare-fun tb!180409 () Bool)

(assert (=> (and b!3383876 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) t!263667) tb!180409))

(declare-fun result!223906 () Bool)

(assert (= result!223906 result!223902))

(assert (=> d!960511 t!263667))

(declare-fun b_and!235335 () Bool)

(assert (= b_and!235309 (and (=> t!263667 result!223906) b_and!235335)))

(declare-fun m!3749825 () Bool)

(assert (=> d!960511 m!3749825))

(declare-fun m!3749827 () Bool)

(assert (=> d!960511 m!3749827))

(assert (=> b!3383860 d!960511))

(declare-fun d!960513 () Bool)

(declare-fun res!1369447 () Bool)

(declare-fun e!2101097 () Bool)

(assert (=> d!960513 (=> (not res!1369447) (not e!2101097))))

(assert (=> d!960513 (= res!1369447 (not (isEmpty!21121 (originalCharacters!6090 separatorToken!241))))))

(assert (=> d!960513 (= (inv!49952 separatorToken!241) e!2101097)))

(declare-fun b!3384602 () Bool)

(declare-fun res!1369448 () Bool)

(assert (=> b!3384602 (=> (not res!1369448) (not e!2101097))))

(assert (=> b!3384602 (= res!1369448 (= (originalCharacters!6090 separatorToken!241) (list!13341 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))))))

(declare-fun b!3384603 () Bool)

(assert (=> b!3384603 (= e!2101097 (= (size!27908 separatorToken!241) (size!27909 (originalCharacters!6090 separatorToken!241))))))

(assert (= (and d!960513 res!1369447) b!3384602))

(assert (= (and b!3384602 res!1369448) b!3384603))

(declare-fun b_lambda!96163 () Bool)

(assert (=> (not b_lambda!96163) (not b!3384602)))

(assert (=> b!3384602 t!263663))

(declare-fun b_and!235337 () Bool)

(assert (= b_and!235331 (and (=> t!263663 result!223902) b_and!235337)))

(assert (=> b!3384602 t!263665))

(declare-fun b_and!235339 () Bool)

(assert (= b_and!235333 (and (=> t!263665 result!223904) b_and!235339)))

(assert (=> b!3384602 t!263667))

(declare-fun b_and!235341 () Bool)

(assert (= b_and!235335 (and (=> t!263667 result!223906) b_and!235341)))

(declare-fun m!3749829 () Bool)

(assert (=> d!960513 m!3749829))

(assert (=> b!3384602 m!3749827))

(assert (=> b!3384602 m!3749827))

(declare-fun m!3749831 () Bool)

(assert (=> b!3384602 m!3749831))

(declare-fun m!3749833 () Bool)

(assert (=> b!3384603 m!3749833))

(assert (=> start!315510 d!960513))

(declare-fun d!960515 () Bool)

(assert (=> d!960515 (= (inv!49949 (tag!5954 (h!42297 rules!2135))) (= (mod (str.len (value!173675 (tag!5954 (h!42297 rules!2135)))) 2) 0))))

(assert (=> b!3383861 d!960515))

(declare-fun d!960517 () Bool)

(declare-fun res!1369449 () Bool)

(declare-fun e!2101098 () Bool)

(assert (=> d!960517 (=> (not res!1369449) (not e!2101098))))

(assert (=> d!960517 (= res!1369449 (semiInverseModEq!2245 (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (h!42297 rules!2135)))))))

(assert (=> d!960517 (= (inv!49953 (transformation!5376 (h!42297 rules!2135))) e!2101098)))

(declare-fun b!3384604 () Bool)

(assert (=> b!3384604 (= e!2101098 (equivClasses!2144 (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (h!42297 rules!2135)))))))

(assert (= (and d!960517 res!1369449) b!3384604))

(declare-fun m!3749835 () Bool)

(assert (=> d!960517 m!3749835))

(declare-fun m!3749837 () Bool)

(assert (=> b!3384604 m!3749837))

(assert (=> b!3383861 d!960517))

(declare-fun d!960519 () Bool)

(assert (=> d!960519 (= (isDefined!5718 lt!1149406) (not (isEmpty!21133 lt!1149406)))))

(declare-fun bs!555012 () Bool)

(assert (= bs!555012 d!960519))

(declare-fun m!3749839 () Bool)

(assert (=> bs!555012 m!3749839))

(assert (=> b!3383863 d!960519))

(declare-fun call!244800 () Option!7402)

(declare-fun bm!244795 () Bool)

(assert (=> bm!244795 (= call!244800 (maxPrefixOneRule!1688 thiss!18206 (h!42297 rules!2135) lt!1149402))))

(declare-fun b!3384623 () Bool)

(declare-fun res!1369467 () Bool)

(declare-fun e!2101105 () Bool)

(assert (=> b!3384623 (=> (not res!1369467) (not e!2101105))))

(declare-fun lt!1149684 () Option!7402)

(assert (=> b!3384623 (= res!1369467 (= (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684)))) (originalCharacters!6090 (_1!21370 (get!11775 lt!1149684)))))))

(declare-fun b!3384624 () Bool)

(declare-fun res!1369470 () Bool)

(assert (=> b!3384624 (=> (not res!1369470) (not e!2101105))))

(assert (=> b!3384624 (= res!1369470 (matchR!4727 (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))) (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))))))

(declare-fun b!3384625 () Bool)

(declare-fun e!2101107 () Option!7402)

(declare-fun lt!1149688 () Option!7402)

(declare-fun lt!1149687 () Option!7402)

(assert (=> b!3384625 (= e!2101107 (ite (and ((_ is None!7401) lt!1149688) ((_ is None!7401) lt!1149687)) None!7401 (ite ((_ is None!7401) lt!1149687) lt!1149688 (ite ((_ is None!7401) lt!1149688) lt!1149687 (ite (>= (size!27908 (_1!21370 (v!36503 lt!1149688))) (size!27908 (_1!21370 (v!36503 lt!1149687)))) lt!1149688 lt!1149687)))))))

(assert (=> b!3384625 (= lt!1149688 call!244800)))

(assert (=> b!3384625 (= lt!1149687 (maxPrefix!2537 thiss!18206 (t!263604 rules!2135) lt!1149402))))

(declare-fun d!960521 () Bool)

(declare-fun e!2101106 () Bool)

(assert (=> d!960521 e!2101106))

(declare-fun res!1369464 () Bool)

(assert (=> d!960521 (=> res!1369464 e!2101106)))

(assert (=> d!960521 (= res!1369464 (isEmpty!21133 lt!1149684))))

(assert (=> d!960521 (= lt!1149684 e!2101107)))

(declare-fun c!576424 () Bool)

(assert (=> d!960521 (= c!576424 (and ((_ is Cons!36877) rules!2135) ((_ is Nil!36877) (t!263604 rules!2135))))))

(declare-fun lt!1149686 () Unit!51991)

(declare-fun lt!1149685 () Unit!51991)

(assert (=> d!960521 (= lt!1149686 lt!1149685)))

(declare-fun isPrefix!2826 (List!36999 List!36999) Bool)

(assert (=> d!960521 (isPrefix!2826 lt!1149402 lt!1149402)))

(declare-fun lemmaIsPrefixRefl!1785 (List!36999 List!36999) Unit!51991)

(assert (=> d!960521 (= lt!1149685 (lemmaIsPrefixRefl!1785 lt!1149402 lt!1149402))))

(declare-fun rulesValidInductive!1833 (LexerInterface!4965 List!37001) Bool)

(assert (=> d!960521 (rulesValidInductive!1833 thiss!18206 rules!2135)))

(assert (=> d!960521 (= (maxPrefix!2537 thiss!18206 rules!2135 lt!1149402) lt!1149684)))

(declare-fun b!3384626 () Bool)

(declare-fun res!1369468 () Bool)

(assert (=> b!3384626 (=> (not res!1369468) (not e!2101105))))

(assert (=> b!3384626 (= res!1369468 (= (++!9017 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684)))) (_2!21370 (get!11775 lt!1149684))) lt!1149402))))

(declare-fun b!3384627 () Bool)

(declare-fun res!1369465 () Bool)

(assert (=> b!3384627 (=> (not res!1369465) (not e!2101105))))

(assert (=> b!3384627 (= res!1369465 (< (size!27909 (_2!21370 (get!11775 lt!1149684))) (size!27909 lt!1149402)))))

(declare-fun b!3384628 () Bool)

(assert (=> b!3384628 (= e!2101106 e!2101105)))

(declare-fun res!1369469 () Bool)

(assert (=> b!3384628 (=> (not res!1369469) (not e!2101105))))

(assert (=> b!3384628 (= res!1369469 (isDefined!5718 lt!1149684))))

(declare-fun b!3384629 () Bool)

(declare-fun res!1369466 () Bool)

(assert (=> b!3384629 (=> (not res!1369466) (not e!2101105))))

(assert (=> b!3384629 (= res!1369466 (= (value!173676 (_1!21370 (get!11775 lt!1149684))) (apply!8581 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149684)))))))))

(declare-fun b!3384630 () Bool)

(assert (=> b!3384630 (= e!2101105 (contains!6751 rules!2135 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))))

(declare-fun b!3384631 () Bool)

(assert (=> b!3384631 (= e!2101107 call!244800)))

(assert (= (and d!960521 c!576424) b!3384631))

(assert (= (and d!960521 (not c!576424)) b!3384625))

(assert (= (or b!3384631 b!3384625) bm!244795))

(assert (= (and d!960521 (not res!1369464)) b!3384628))

(assert (= (and b!3384628 res!1369469) b!3384623))

(assert (= (and b!3384623 res!1369467) b!3384627))

(assert (= (and b!3384627 res!1369465) b!3384626))

(assert (= (and b!3384626 res!1369468) b!3384629))

(assert (= (and b!3384629 res!1369466) b!3384624))

(assert (= (and b!3384624 res!1369470) b!3384630))

(declare-fun m!3749841 () Bool)

(assert (=> d!960521 m!3749841))

(declare-fun m!3749843 () Bool)

(assert (=> d!960521 m!3749843))

(declare-fun m!3749845 () Bool)

(assert (=> d!960521 m!3749845))

(declare-fun m!3749847 () Bool)

(assert (=> d!960521 m!3749847))

(declare-fun m!3749849 () Bool)

(assert (=> b!3384625 m!3749849))

(declare-fun m!3749851 () Bool)

(assert (=> b!3384628 m!3749851))

(declare-fun m!3749853 () Bool)

(assert (=> b!3384624 m!3749853))

(declare-fun m!3749855 () Bool)

(assert (=> b!3384624 m!3749855))

(assert (=> b!3384624 m!3749855))

(declare-fun m!3749857 () Bool)

(assert (=> b!3384624 m!3749857))

(assert (=> b!3384624 m!3749857))

(declare-fun m!3749859 () Bool)

(assert (=> b!3384624 m!3749859))

(assert (=> b!3384627 m!3749853))

(declare-fun m!3749861 () Bool)

(assert (=> b!3384627 m!3749861))

(assert (=> b!3384627 m!3748975))

(declare-fun m!3749863 () Bool)

(assert (=> bm!244795 m!3749863))

(assert (=> b!3384630 m!3749853))

(declare-fun m!3749865 () Bool)

(assert (=> b!3384630 m!3749865))

(assert (=> b!3384623 m!3749853))

(assert (=> b!3384623 m!3749855))

(assert (=> b!3384623 m!3749855))

(assert (=> b!3384623 m!3749857))

(assert (=> b!3384626 m!3749853))

(assert (=> b!3384626 m!3749855))

(assert (=> b!3384626 m!3749855))

(assert (=> b!3384626 m!3749857))

(assert (=> b!3384626 m!3749857))

(declare-fun m!3749867 () Bool)

(assert (=> b!3384626 m!3749867))

(assert (=> b!3384629 m!3749853))

(declare-fun m!3749869 () Bool)

(assert (=> b!3384629 m!3749869))

(assert (=> b!3384629 m!3749869))

(declare-fun m!3749871 () Bool)

(assert (=> b!3384629 m!3749871))

(assert (=> b!3383863 d!960521))

(declare-fun b!3384636 () Bool)

(declare-fun e!2101110 () Bool)

(declare-fun tp_is_empty!17481 () Bool)

(declare-fun tp!1057597 () Bool)

(assert (=> b!3384636 (= e!2101110 (and tp_is_empty!17481 tp!1057597))))

(assert (=> b!3383848 (= tp!1057523 e!2101110)))

(assert (= (and b!3383848 ((_ is Cons!36875) (originalCharacters!6090 separatorToken!241))) b!3384636))

(declare-fun b!3384650 () Bool)

(declare-fun b_free!88589 () Bool)

(declare-fun b_next!89293 () Bool)

(assert (=> b!3384650 (= b_free!88589 (not b_next!89293))))

(declare-fun t!263669 () Bool)

(declare-fun tb!180411 () Bool)

(assert (=> (and b!3384650 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263669) tb!180411))

(declare-fun result!223912 () Bool)

(assert (= result!223912 result!223866))

(assert (=> d!960417 t!263669))

(declare-fun tp!1057612 () Bool)

(declare-fun b_and!235343 () Bool)

(assert (=> b!3384650 (= tp!1057612 (and (=> t!263669 result!223912) b_and!235343))))

(declare-fun b_free!88591 () Bool)

(declare-fun b_next!89295 () Bool)

(assert (=> b!3384650 (= b_free!88591 (not b_next!89295))))

(declare-fun t!263671 () Bool)

(declare-fun tb!180413 () Bool)

(assert (=> (and b!3384650 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263671) tb!180413))

(declare-fun result!223914 () Bool)

(assert (= result!223914 result!223858))

(assert (=> d!960345 t!263671))

(assert (=> b!3384211 t!263671))

(declare-fun tb!180415 () Bool)

(declare-fun t!263673 () Bool)

(assert (=> (and b!3384650 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) t!263673) tb!180415))

(declare-fun result!223916 () Bool)

(assert (= result!223916 result!223902))

(assert (=> d!960511 t!263673))

(assert (=> b!3384602 t!263673))

(declare-fun b_and!235345 () Bool)

(declare-fun tp!1057608 () Bool)

(assert (=> b!3384650 (= tp!1057608 (and (=> t!263671 result!223914) (=> t!263673 result!223916) b_and!235345))))

(declare-fun e!2101128 () Bool)

(assert (=> b!3383869 (= tp!1057527 e!2101128)))

(declare-fun b!3384647 () Bool)

(declare-fun e!2101124 () Bool)

(declare-fun tp!1057610 () Bool)

(assert (=> b!3384647 (= e!2101128 (and (inv!49952 (h!42296 (t!263603 tokens!494))) e!2101124 tp!1057610))))

(declare-fun b!3384649 () Bool)

(declare-fun e!2101123 () Bool)

(declare-fun tp!1057609 () Bool)

(declare-fun e!2101126 () Bool)

(assert (=> b!3384649 (= e!2101123 (and tp!1057609 (inv!49949 (tag!5954 (rule!7930 (h!42296 (t!263603 tokens!494))))) (inv!49953 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) e!2101126))))

(declare-fun b!3384648 () Bool)

(declare-fun tp!1057611 () Bool)

(assert (=> b!3384648 (= e!2101124 (and (inv!21 (value!173676 (h!42296 (t!263603 tokens!494)))) e!2101123 tp!1057611))))

(assert (=> b!3384650 (= e!2101126 (and tp!1057612 tp!1057608))))

(assert (= b!3384649 b!3384650))

(assert (= b!3384648 b!3384649))

(assert (= b!3384647 b!3384648))

(assert (= (and b!3383869 ((_ is Cons!36876) (t!263603 tokens!494))) b!3384647))

(declare-fun m!3749873 () Bool)

(assert (=> b!3384647 m!3749873))

(declare-fun m!3749875 () Bool)

(assert (=> b!3384649 m!3749875))

(declare-fun m!3749877 () Bool)

(assert (=> b!3384649 m!3749877))

(declare-fun m!3749879 () Bool)

(assert (=> b!3384648 m!3749879))

(declare-fun e!2101131 () Bool)

(assert (=> b!3383859 (= tp!1057525 e!2101131)))

(declare-fun b!3384664 () Bool)

(declare-fun tp!1057625 () Bool)

(declare-fun tp!1057627 () Bool)

(assert (=> b!3384664 (= e!2101131 (and tp!1057625 tp!1057627))))

(declare-fun b!3384663 () Bool)

(declare-fun tp!1057623 () Bool)

(assert (=> b!3384663 (= e!2101131 tp!1057623)))

(declare-fun b!3384661 () Bool)

(assert (=> b!3384661 (= e!2101131 tp_is_empty!17481)))

(declare-fun b!3384662 () Bool)

(declare-fun tp!1057626 () Bool)

(declare-fun tp!1057624 () Bool)

(assert (=> b!3384662 (= e!2101131 (and tp!1057626 tp!1057624))))

(assert (= (and b!3383859 ((_ is ElementMatch!10135) (regex!5376 (rule!7930 separatorToken!241)))) b!3384661))

(assert (= (and b!3383859 ((_ is Concat!15741) (regex!5376 (rule!7930 separatorToken!241)))) b!3384662))

(assert (= (and b!3383859 ((_ is Star!10135) (regex!5376 (rule!7930 separatorToken!241)))) b!3384663))

(assert (= (and b!3383859 ((_ is Union!10135) (regex!5376 (rule!7930 separatorToken!241)))) b!3384664))

(declare-fun e!2101132 () Bool)

(assert (=> b!3383871 (= tp!1057526 e!2101132)))

(declare-fun b!3384668 () Bool)

(declare-fun tp!1057630 () Bool)

(declare-fun tp!1057632 () Bool)

(assert (=> b!3384668 (= e!2101132 (and tp!1057630 tp!1057632))))

(declare-fun b!3384667 () Bool)

(declare-fun tp!1057628 () Bool)

(assert (=> b!3384667 (= e!2101132 tp!1057628)))

(declare-fun b!3384665 () Bool)

(assert (=> b!3384665 (= e!2101132 tp_is_empty!17481)))

(declare-fun b!3384666 () Bool)

(declare-fun tp!1057631 () Bool)

(declare-fun tp!1057629 () Bool)

(assert (=> b!3384666 (= e!2101132 (and tp!1057631 tp!1057629))))

(assert (= (and b!3383871 ((_ is ElementMatch!10135) (regex!5376 (rule!7930 (h!42296 tokens!494))))) b!3384665))

(assert (= (and b!3383871 ((_ is Concat!15741) (regex!5376 (rule!7930 (h!42296 tokens!494))))) b!3384666))

(assert (= (and b!3383871 ((_ is Star!10135) (regex!5376 (rule!7930 (h!42296 tokens!494))))) b!3384667))

(assert (= (and b!3383871 ((_ is Union!10135) (regex!5376 (rule!7930 (h!42296 tokens!494))))) b!3384668))

(declare-fun e!2101133 () Bool)

(assert (=> b!3383861 (= tp!1057530 e!2101133)))

(declare-fun b!3384672 () Bool)

(declare-fun tp!1057635 () Bool)

(declare-fun tp!1057637 () Bool)

(assert (=> b!3384672 (= e!2101133 (and tp!1057635 tp!1057637))))

(declare-fun b!3384671 () Bool)

(declare-fun tp!1057633 () Bool)

(assert (=> b!3384671 (= e!2101133 tp!1057633)))

(declare-fun b!3384669 () Bool)

(assert (=> b!3384669 (= e!2101133 tp_is_empty!17481)))

(declare-fun b!3384670 () Bool)

(declare-fun tp!1057636 () Bool)

(declare-fun tp!1057634 () Bool)

(assert (=> b!3384670 (= e!2101133 (and tp!1057636 tp!1057634))))

(assert (= (and b!3383861 ((_ is ElementMatch!10135) (regex!5376 (h!42297 rules!2135)))) b!3384669))

(assert (= (and b!3383861 ((_ is Concat!15741) (regex!5376 (h!42297 rules!2135)))) b!3384670))

(assert (= (and b!3383861 ((_ is Star!10135) (regex!5376 (h!42297 rules!2135)))) b!3384671))

(assert (= (and b!3383861 ((_ is Union!10135) (regex!5376 (h!42297 rules!2135)))) b!3384672))

(declare-fun b!3384673 () Bool)

(declare-fun e!2101134 () Bool)

(declare-fun tp!1057638 () Bool)

(assert (=> b!3384673 (= e!2101134 (and tp_is_empty!17481 tp!1057638))))

(assert (=> b!3383867 (= tp!1057520 e!2101134)))

(assert (= (and b!3383867 ((_ is Cons!36875) (originalCharacters!6090 (h!42296 tokens!494)))) b!3384673))

(declare-fun b!3384684 () Bool)

(declare-fun b_free!88593 () Bool)

(declare-fun b_next!89297 () Bool)

(assert (=> b!3384684 (= b_free!88593 (not b_next!89297))))

(declare-fun tb!180417 () Bool)

(declare-fun t!263675 () Bool)

(assert (=> (and b!3384684 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263675) tb!180417))

(declare-fun result!223922 () Bool)

(assert (= result!223922 result!223866))

(assert (=> d!960417 t!263675))

(declare-fun b_and!235347 () Bool)

(declare-fun tp!1057647 () Bool)

(assert (=> b!3384684 (= tp!1057647 (and (=> t!263675 result!223922) b_and!235347))))

(declare-fun b_free!88595 () Bool)

(declare-fun b_next!89299 () Bool)

(assert (=> b!3384684 (= b_free!88595 (not b_next!89299))))

(declare-fun tb!180419 () Bool)

(declare-fun t!263677 () Bool)

(assert (=> (and b!3384684 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263677) tb!180419))

(declare-fun result!223924 () Bool)

(assert (= result!223924 result!223858))

(assert (=> d!960345 t!263677))

(assert (=> b!3384211 t!263677))

(declare-fun t!263679 () Bool)

(declare-fun tb!180421 () Bool)

(assert (=> (and b!3384684 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) t!263679) tb!180421))

(declare-fun result!223926 () Bool)

(assert (= result!223926 result!223902))

(assert (=> d!960511 t!263679))

(assert (=> b!3384602 t!263679))

(declare-fun tp!1057650 () Bool)

(declare-fun b_and!235349 () Bool)

(assert (=> b!3384684 (= tp!1057650 (and (=> t!263677 result!223924) (=> t!263679 result!223926) b_and!235349))))

(declare-fun e!2101146 () Bool)

(assert (=> b!3384684 (= e!2101146 (and tp!1057647 tp!1057650))))

(declare-fun b!3384683 () Bool)

(declare-fun tp!1057649 () Bool)

(declare-fun e!2101145 () Bool)

(assert (=> b!3384683 (= e!2101145 (and tp!1057649 (inv!49949 (tag!5954 (h!42297 (t!263604 rules!2135)))) (inv!49953 (transformation!5376 (h!42297 (t!263604 rules!2135)))) e!2101146))))

(declare-fun b!3384682 () Bool)

(declare-fun e!2101144 () Bool)

(declare-fun tp!1057648 () Bool)

(assert (=> b!3384682 (= e!2101144 (and e!2101145 tp!1057648))))

(assert (=> b!3383868 (= tp!1057529 e!2101144)))

(assert (= b!3384683 b!3384684))

(assert (= b!3384682 b!3384683))

(assert (= (and b!3383868 ((_ is Cons!36877) (t!263604 rules!2135))) b!3384682))

(declare-fun m!3749881 () Bool)

(assert (=> b!3384683 m!3749881))

(declare-fun m!3749883 () Bool)

(assert (=> b!3384683 m!3749883))

(declare-fun b_lambda!96165 () Bool)

(assert (= b_lambda!96139 (or (and b!3383882 b_free!88569 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383876 b_free!88577 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384684 b_free!88593 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384650 b_free!88589 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383881 b_free!88573) b_lambda!96165)))

(declare-fun b_lambda!96167 () Bool)

(assert (= b_lambda!96137 (or (and b!3384684 b_free!88595 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383876 b_free!88579 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383881 b_free!88575) (and b!3383882 b_free!88571 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384650 b_free!88591 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) b_lambda!96167)))

(declare-fun b_lambda!96169 () Bool)

(assert (= b_lambda!96129 (or b!3383855 b_lambda!96169)))

(declare-fun bs!555013 () Bool)

(declare-fun d!960523 () Bool)

(assert (= bs!555013 (and d!960523 b!3383855)))

(assert (=> bs!555013 (= (dynLambda!15347 lambda!120549 (h!42296 tokens!494)) (not (isSeparator!5376 (rule!7930 (h!42296 tokens!494)))))))

(assert (=> b!3384098 d!960523))

(declare-fun b_lambda!96171 () Bool)

(assert (= b_lambda!96161 (or (and b!3384650 b_free!88591 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))))) (and b!3383882 b_free!88571) (and b!3384684 b_free!88595 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))))) (and b!3383881 b_free!88575 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))))) (and b!3383876 b_free!88579 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))))) b_lambda!96171)))

(declare-fun b_lambda!96173 () Bool)

(assert (= b_lambda!96163 (or (and b!3384650 b_free!88591 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))))) (and b!3383882 b_free!88571) (and b!3384684 b_free!88595 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))))) (and b!3383881 b_free!88575 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))))) (and b!3383876 b_free!88579 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))))) b_lambda!96173)))

(declare-fun b_lambda!96175 () Bool)

(assert (= b_lambda!96159 (or b!3383855 b_lambda!96175)))

(assert (=> d!960487 d!960523))

(declare-fun b_lambda!96177 () Bool)

(assert (= b_lambda!96131 (or (and b!3384684 b_free!88595 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383876 b_free!88579 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383881 b_free!88575) (and b!3383882 b_free!88571 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384650 b_free!88591 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) b_lambda!96177)))

(check-sat (not b!3384558) (not bm!244792) (not d!960411) (not b!3384206) (not b_lambda!96171) (not b!3384604) (not b!3384349) (not b!3384603) (not b!3384403) (not b!3384399) (not d!960509) b_and!235339 (not b!3384580) (not b!3384682) (not b!3384348) (not b!3384667) (not b!3384089) (not bm!244777) (not b!3384329) (not b!3384599) (not d!960425) (not b_next!89295) (not b!3384560) (not d!960413) (not d!960313) (not b!3384538) (not d!960479) (not b!3384120) b_and!235337 (not b!3384625) (not d!960379) (not b!3384402) (not b!3384581) (not d!960267) (not b!3384054) (not d!960517) (not d!960327) (not b_next!89281) (not b!3384566) (not d!960345) (not b!3384683) (not b!3384256) (not d!960381) (not b!3384135) (not b_lambda!96175) (not b!3384647) (not b!3384565) b_and!235315 (not b!3384662) (not b!3384664) (not b!3384358) (not b!3384534) (not d!960319) (not b!3384586) (not d!960377) (not bm!244788) (not bm!244781) (not d!960491) (not d!960485) (not b_next!89273) (not bm!244791) (not b!3384602) (not b!3384053) (not b!3384598) (not d!960421) (not d!960473) (not d!960429) (not tb!180381) (not b!3384064) (not b_next!89279) (not b!3384079) b_and!235341 (not b!3384224) (not b!3384322) (not b_next!89275) (not d!960415) (not b!3384572) (not b!3384539) (not b!3384401) (not b!3384559) (not b!3384179) (not b!3384670) b_and!235311 (not d!960321) (not b!3384663) (not b!3384630) (not b!3384255) (not d!960333) (not d!960493) tp_is_empty!17481 (not d!960447) (not b!3384306) (not b!3384573) (not b_lambda!96167) (not b!3384356) (not d!960409) (not d!960487) (not bm!244790) (not b!3384554) (not b!3384628) (not b!3384211) (not b!3384178) (not tb!180405) (not d!960477) (not b!3384129) (not b!3384204) (not b!3384130) (not b!3384601) (not b!3384177) (not b!3384312) (not b!3384311) (not b!3384567) (not d!960347) (not b!3384626) (not b!3384404) (not d!960391) (not d!960495) (not b!3384111) (not b_next!89299) (not b!3384313) (not b!3384057) (not d!960273) (not b!3384624) (not b!3384405) (not tb!180375) (not d!960507) (not b!3384328) (not b!3384218) (not d!960503) (not b!3384330) (not b!3384099) (not b!3384579) (not d!960513) (not b!3384671) (not b_next!89277) (not b!3384093) (not b!3384406) (not b!3384347) (not b!3384672) (not b!3384574) (not b!3384257) (not d!960521) (not b!3384318) (not b!3384327) (not b_next!89293) b_and!235343 (not b_lambda!96173) (not b_lambda!96169) (not b!3384649) (not b!3384627) (not b!3384673) (not bm!244795) (not d!960501) (not bm!244789) (not d!960337) (not d!960427) (not b!3384666) (not b_lambda!96177) (not d!960505) (not b!3384212) (not d!960343) (not b!3384623) (not bm!244776) (not b!3384648) (not bm!244778) (not b!3384588) (not d!960393) (not b!3384066) (not b!3384629) (not b!3384056) (not b!3384668) (not d!960315) (not b!3384636) (not d!960511) (not b_lambda!96165) (not d!960475) b_and!235347 b_and!235349 b_and!235345 (not b!3384540) (not b!3384205) b_and!235313 (not d!960387) (not b!3384551) (not b_next!89297) (not b!3384319) (not d!960519) (not b!3384587) (not b!3384400) (not d!960317) (not b!3384557) (not b_next!89283))
(check-sat b_and!235339 (not b_next!89295) b_and!235337 (not b_next!89281) b_and!235315 (not b_next!89273) (not b_next!89275) b_and!235311 (not b_next!89299) (not b_next!89277) (not b_next!89283) (not b_next!89279) b_and!235341 (not b_next!89293) b_and!235343 b_and!235347 b_and!235349 b_and!235345 b_and!235313 (not b_next!89297))
(get-model)

(declare-fun d!960705 () Bool)

(assert (=> d!960705 (= (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684)))) (list!13345 (c!576277 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))))))

(declare-fun bs!555046 () Bool)

(assert (= bs!555046 d!960705))

(declare-fun m!3750331 () Bool)

(assert (=> bs!555046 m!3750331))

(assert (=> b!3384623 d!960705))

(declare-fun d!960707 () Bool)

(declare-fun lt!1149781 () BalanceConc!21868)

(assert (=> d!960707 (= (list!13341 lt!1149781) (originalCharacters!6090 (_1!21370 (get!11775 lt!1149684))))))

(assert (=> d!960707 (= lt!1149781 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))) (value!173676 (_1!21370 (get!11775 lt!1149684)))))))

(assert (=> d!960707 (= (charsOf!3390 (_1!21370 (get!11775 lt!1149684))) lt!1149781)))

(declare-fun b_lambda!96189 () Bool)

(assert (=> (not b_lambda!96189) (not d!960707)))

(declare-fun tb!180453 () Bool)

(declare-fun t!263714 () Bool)

(assert (=> (and b!3384650 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263714) tb!180453))

(declare-fun b!3384964 () Bool)

(declare-fun e!2101307 () Bool)

(declare-fun tp!1057654 () Bool)

(assert (=> b!3384964 (= e!2101307 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))) (value!173676 (_1!21370 (get!11775 lt!1149684)))))) tp!1057654))))

(declare-fun result!223958 () Bool)

(assert (=> tb!180453 (= result!223958 (and (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))) (value!173676 (_1!21370 (get!11775 lt!1149684))))) e!2101307))))

(assert (= tb!180453 b!3384964))

(declare-fun m!3750333 () Bool)

(assert (=> b!3384964 m!3750333))

(declare-fun m!3750335 () Bool)

(assert (=> tb!180453 m!3750335))

(assert (=> d!960707 t!263714))

(declare-fun b_and!235381 () Bool)

(assert (= b_and!235345 (and (=> t!263714 result!223958) b_and!235381)))

(declare-fun t!263716 () Bool)

(declare-fun tb!180455 () Bool)

(assert (=> (and b!3384684 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263716) tb!180455))

(declare-fun result!223960 () Bool)

(assert (= result!223960 result!223958))

(assert (=> d!960707 t!263716))

(declare-fun b_and!235383 () Bool)

(assert (= b_and!235349 (and (=> t!263716 result!223960) b_and!235383)))

(declare-fun t!263718 () Bool)

(declare-fun tb!180457 () Bool)

(assert (=> (and b!3383882 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263718) tb!180457))

(declare-fun result!223962 () Bool)

(assert (= result!223962 result!223958))

(assert (=> d!960707 t!263718))

(declare-fun b_and!235385 () Bool)

(assert (= b_and!235337 (and (=> t!263718 result!223962) b_and!235385)))

(declare-fun t!263720 () Bool)

(declare-fun tb!180459 () Bool)

(assert (=> (and b!3383876 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263720) tb!180459))

(declare-fun result!223964 () Bool)

(assert (= result!223964 result!223958))

(assert (=> d!960707 t!263720))

(declare-fun b_and!235387 () Bool)

(assert (= b_and!235341 (and (=> t!263720 result!223964) b_and!235387)))

(declare-fun t!263722 () Bool)

(declare-fun tb!180461 () Bool)

(assert (=> (and b!3383881 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263722) tb!180461))

(declare-fun result!223966 () Bool)

(assert (= result!223966 result!223958))

(assert (=> d!960707 t!263722))

(declare-fun b_and!235389 () Bool)

(assert (= b_and!235339 (and (=> t!263722 result!223966) b_and!235389)))

(declare-fun m!3750337 () Bool)

(assert (=> d!960707 m!3750337))

(declare-fun m!3750339 () Bool)

(assert (=> d!960707 m!3750339))

(assert (=> b!3384623 d!960707))

(declare-fun d!960709 () Bool)

(assert (=> d!960709 (= (get!11775 lt!1149684) (v!36503 lt!1149684))))

(assert (=> b!3384623 d!960709))

(declare-fun d!960711 () Bool)

(declare-fun lt!1149784 () Bool)

(assert (=> d!960711 (= lt!1149784 (isEmpty!21121 (list!13341 (_2!21371 lt!1149561))))))

(declare-fun isEmpty!21135 (Conc!11127) Bool)

(assert (=> d!960711 (= lt!1149784 (isEmpty!21135 (c!576277 (_2!21371 lt!1149561))))))

(assert (=> d!960711 (= (isEmpty!21130 (_2!21371 lt!1149561)) lt!1149784)))

(declare-fun bs!555047 () Bool)

(assert (= bs!555047 d!960711))

(declare-fun m!3750341 () Bool)

(assert (=> bs!555047 m!3750341))

(assert (=> bs!555047 m!3750341))

(declare-fun m!3750343 () Bool)

(assert (=> bs!555047 m!3750343))

(declare-fun m!3750345 () Bool)

(assert (=> bs!555047 m!3750345))

(assert (=> b!3384256 d!960711))

(declare-fun b!3385162 () Bool)

(declare-fun e!2101428 () tuple2!36482)

(assert (=> b!3385162 (= e!2101428 (tuple2!36483 Nil!36875 lt!1149402))))

(declare-fun b!3385163 () Bool)

(declare-fun e!2101431 () tuple2!36482)

(assert (=> b!3385163 (= e!2101431 (tuple2!36483 Nil!36875 lt!1149402))))

(declare-fun b!3385164 () Bool)

(declare-fun c!576563 () Bool)

(declare-fun call!244871 () Bool)

(assert (=> b!3385164 (= c!576563 call!244871)))

(declare-fun lt!1149910 () Unit!51991)

(declare-fun lt!1149907 () Unit!51991)

(assert (=> b!3385164 (= lt!1149910 lt!1149907)))

(declare-fun lt!1149916 () C!20456)

(declare-fun lt!1149898 () List!36999)

(assert (=> b!3385164 (= (++!9017 (++!9017 Nil!36875 (Cons!36875 lt!1149916 Nil!36875)) lt!1149898) lt!1149402)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1149 (List!36999 C!20456 List!36999 List!36999) Unit!51991)

(assert (=> b!3385164 (= lt!1149907 (lemmaMoveElementToOtherListKeepsConcatEq!1149 Nil!36875 lt!1149916 lt!1149898 lt!1149402))))

(assert (=> b!3385164 (= lt!1149898 (tail!5361 lt!1149402))))

(assert (=> b!3385164 (= lt!1149916 (head!7229 lt!1149402))))

(declare-fun lt!1149920 () Unit!51991)

(declare-fun lt!1149903 () Unit!51991)

(assert (=> b!3385164 (= lt!1149920 lt!1149903)))

(assert (=> b!3385164 (isPrefix!2826 (++!9017 Nil!36875 (Cons!36875 (head!7229 (getSuffix!1470 lt!1149402 Nil!36875)) Nil!36875)) lt!1149402)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!537 (List!36999 List!36999) Unit!51991)

(assert (=> b!3385164 (= lt!1149903 (lemmaAddHeadSuffixToPrefixStillPrefix!537 Nil!36875 lt!1149402))))

(declare-fun lt!1149896 () Unit!51991)

(declare-fun lt!1149909 () Unit!51991)

(assert (=> b!3385164 (= lt!1149896 lt!1149909)))

(assert (=> b!3385164 (= lt!1149909 (lemmaAddHeadSuffixToPrefixStillPrefix!537 Nil!36875 lt!1149402))))

(declare-fun lt!1149921 () List!36999)

(assert (=> b!3385164 (= lt!1149921 (++!9017 Nil!36875 (Cons!36875 (head!7229 lt!1149402) Nil!36875)))))

(declare-fun lt!1149899 () Unit!51991)

(declare-fun e!2101427 () Unit!51991)

(assert (=> b!3385164 (= lt!1149899 e!2101427)))

(declare-fun c!576564 () Bool)

(assert (=> b!3385164 (= c!576564 (= (size!27909 Nil!36875) (size!27909 lt!1149402)))))

(declare-fun lt!1149919 () Unit!51991)

(declare-fun lt!1149904 () Unit!51991)

(assert (=> b!3385164 (= lt!1149919 lt!1149904)))

(assert (=> b!3385164 (<= (size!27909 Nil!36875) (size!27909 lt!1149402))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!345 (List!36999 List!36999) Unit!51991)

(assert (=> b!3385164 (= lt!1149904 (lemmaIsPrefixThenSmallerEqSize!345 Nil!36875 lt!1149402))))

(declare-fun e!2101433 () tuple2!36482)

(declare-fun e!2101426 () tuple2!36482)

(assert (=> b!3385164 (= e!2101433 e!2101426)))

(declare-fun bm!244864 () Bool)

(declare-fun call!244869 () Unit!51991)

(declare-fun lemmaIsPrefixSameLengthThenSameList!544 (List!36999 List!36999 List!36999) Unit!51991)

(assert (=> bm!244864 (= call!244869 (lemmaIsPrefixSameLengthThenSameList!544 lt!1149402 Nil!36875 lt!1149402))))

(declare-fun bm!244865 () Bool)

(declare-fun call!244872 () Regex!10135)

(declare-fun call!244873 () C!20456)

(assert (=> bm!244865 (= call!244872 (derivativeStep!3007 (regex!5376 (rule!7930 (h!42296 tokens!494))) call!244873))))

(declare-fun call!244874 () tuple2!36482)

(declare-fun bm!244866 () Bool)

(declare-fun call!244875 () List!36999)

(assert (=> bm!244866 (= call!244874 (findLongestMatchInner!881 call!244872 lt!1149921 (+ (size!27909 Nil!36875) 1) call!244875 lt!1149402 (size!27909 lt!1149402)))))

(declare-fun b!3385165 () Bool)

(assert (=> b!3385165 (= e!2101426 call!244874)))

(declare-fun bm!244867 () Bool)

(declare-fun call!244870 () Unit!51991)

(assert (=> bm!244867 (= call!244870 (lemmaIsPrefixRefl!1785 lt!1149402 lt!1149402))))

(declare-fun b!3385167 () Bool)

(declare-fun e!2101430 () Bool)

(declare-fun lt!1149905 () tuple2!36482)

(assert (=> b!3385167 (= e!2101430 (>= (size!27909 (_1!21375 lt!1149905)) (size!27909 Nil!36875)))))

(declare-fun bm!244868 () Bool)

(declare-fun call!244876 () Bool)

(assert (=> bm!244868 (= call!244876 (isPrefix!2826 lt!1149402 lt!1149402))))

(declare-fun b!3385168 () Bool)

(declare-fun e!2101429 () tuple2!36482)

(assert (=> b!3385168 (= e!2101426 e!2101429)))

(declare-fun lt!1149917 () tuple2!36482)

(assert (=> b!3385168 (= lt!1149917 call!244874)))

(declare-fun c!576562 () Bool)

(assert (=> b!3385168 (= c!576562 (isEmpty!21121 (_1!21375 lt!1149917)))))

(declare-fun bm!244869 () Bool)

(assert (=> bm!244869 (= call!244873 (head!7229 lt!1149402))))

(declare-fun b!3385169 () Bool)

(assert (=> b!3385169 (= e!2101431 (tuple2!36483 Nil!36875 Nil!36875))))

(declare-fun bm!244870 () Bool)

(assert (=> bm!244870 (= call!244871 (nullable!3454 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun bm!244871 () Bool)

(assert (=> bm!244871 (= call!244875 (tail!5361 lt!1149402))))

(declare-fun b!3385170 () Bool)

(assert (=> b!3385170 (= e!2101428 e!2101433)))

(declare-fun c!576561 () Bool)

(assert (=> b!3385170 (= c!576561 (= (size!27909 Nil!36875) (size!27909 lt!1149402)))))

(declare-fun b!3385171 () Bool)

(declare-fun c!576560 () Bool)

(assert (=> b!3385171 (= c!576560 call!244871)))

(declare-fun lt!1149900 () Unit!51991)

(declare-fun lt!1149908 () Unit!51991)

(assert (=> b!3385171 (= lt!1149900 lt!1149908)))

(assert (=> b!3385171 (= lt!1149402 Nil!36875)))

(assert (=> b!3385171 (= lt!1149908 call!244869)))

(declare-fun lt!1149901 () Unit!51991)

(declare-fun lt!1149911 () Unit!51991)

(assert (=> b!3385171 (= lt!1149901 lt!1149911)))

(assert (=> b!3385171 call!244876))

(assert (=> b!3385171 (= lt!1149911 call!244870)))

(assert (=> b!3385171 (= e!2101433 e!2101431)))

(declare-fun d!960713 () Bool)

(declare-fun e!2101432 () Bool)

(assert (=> d!960713 e!2101432))

(declare-fun res!1369668 () Bool)

(assert (=> d!960713 (=> (not res!1369668) (not e!2101432))))

(assert (=> d!960713 (= res!1369668 (= (++!9017 (_1!21375 lt!1149905) (_2!21375 lt!1149905)) lt!1149402))))

(assert (=> d!960713 (= lt!1149905 e!2101428)))

(declare-fun c!576565 () Bool)

(declare-fun lostCause!911 (Regex!10135) Bool)

(assert (=> d!960713 (= c!576565 (lostCause!911 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun lt!1149897 () Unit!51991)

(declare-fun Unit!51996 () Unit!51991)

(assert (=> d!960713 (= lt!1149897 Unit!51996)))

(assert (=> d!960713 (= (getSuffix!1470 lt!1149402 Nil!36875) lt!1149402)))

(declare-fun lt!1149915 () Unit!51991)

(declare-fun lt!1149923 () Unit!51991)

(assert (=> d!960713 (= lt!1149915 lt!1149923)))

(declare-fun lt!1149902 () List!36999)

(assert (=> d!960713 (= lt!1149402 lt!1149902)))

(declare-fun lemmaSamePrefixThenSameSuffix!1261 (List!36999 List!36999 List!36999 List!36999 List!36999) Unit!51991)

(assert (=> d!960713 (= lt!1149923 (lemmaSamePrefixThenSameSuffix!1261 Nil!36875 lt!1149402 Nil!36875 lt!1149902 lt!1149402))))

(assert (=> d!960713 (= lt!1149902 (getSuffix!1470 lt!1149402 Nil!36875))))

(declare-fun lt!1149922 () Unit!51991)

(declare-fun lt!1149912 () Unit!51991)

(assert (=> d!960713 (= lt!1149922 lt!1149912)))

(assert (=> d!960713 (isPrefix!2826 Nil!36875 (++!9017 Nil!36875 lt!1149402))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1795 (List!36999 List!36999) Unit!51991)

(assert (=> d!960713 (= lt!1149912 (lemmaConcatTwoListThenFirstIsPrefix!1795 Nil!36875 lt!1149402))))

(assert (=> d!960713 (validRegex!4610 (regex!5376 (rule!7930 (h!42296 tokens!494))))))

(assert (=> d!960713 (= (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)) lt!1149905)))

(declare-fun b!3385166 () Bool)

(assert (=> b!3385166 (= e!2101429 (tuple2!36483 Nil!36875 lt!1149402))))

(declare-fun b!3385172 () Bool)

(assert (=> b!3385172 (= e!2101432 e!2101430)))

(declare-fun res!1369669 () Bool)

(assert (=> b!3385172 (=> res!1369669 e!2101430)))

(assert (=> b!3385172 (= res!1369669 (isEmpty!21121 (_1!21375 lt!1149905)))))

(declare-fun b!3385173 () Bool)

(assert (=> b!3385173 (= e!2101429 lt!1149917)))

(declare-fun b!3385174 () Bool)

(declare-fun Unit!51997 () Unit!51991)

(assert (=> b!3385174 (= e!2101427 Unit!51997)))

(declare-fun lt!1149918 () Unit!51991)

(assert (=> b!3385174 (= lt!1149918 call!244870)))

(assert (=> b!3385174 call!244876))

(declare-fun lt!1149906 () Unit!51991)

(assert (=> b!3385174 (= lt!1149906 lt!1149918)))

(declare-fun lt!1149914 () Unit!51991)

(assert (=> b!3385174 (= lt!1149914 call!244869)))

(assert (=> b!3385174 (= lt!1149402 Nil!36875)))

(declare-fun lt!1149913 () Unit!51991)

(assert (=> b!3385174 (= lt!1149913 lt!1149914)))

(assert (=> b!3385174 false))

(declare-fun b!3385175 () Bool)

(declare-fun Unit!51998 () Unit!51991)

(assert (=> b!3385175 (= e!2101427 Unit!51998)))

(assert (= (and d!960713 c!576565) b!3385162))

(assert (= (and d!960713 (not c!576565)) b!3385170))

(assert (= (and b!3385170 c!576561) b!3385171))

(assert (= (and b!3385170 (not c!576561)) b!3385164))

(assert (= (and b!3385171 c!576560) b!3385169))

(assert (= (and b!3385171 (not c!576560)) b!3385163))

(assert (= (and b!3385164 c!576564) b!3385174))

(assert (= (and b!3385164 (not c!576564)) b!3385175))

(assert (= (and b!3385164 c!576563) b!3385168))

(assert (= (and b!3385164 (not c!576563)) b!3385165))

(assert (= (and b!3385168 c!576562) b!3385166))

(assert (= (and b!3385168 (not c!576562)) b!3385173))

(assert (= (or b!3385168 b!3385165) bm!244869))

(assert (= (or b!3385168 b!3385165) bm!244871))

(assert (= (or b!3385168 b!3385165) bm!244865))

(assert (= (or b!3385168 b!3385165) bm!244866))

(assert (= (or b!3385171 b!3385174) bm!244867))

(assert (= (or b!3385171 b!3385174) bm!244868))

(assert (= (or b!3385171 b!3385174) bm!244864))

(assert (= (or b!3385171 b!3385164) bm!244870))

(assert (= (and d!960713 res!1369668) b!3385172))

(assert (= (and b!3385172 (not res!1369669)) b!3385167))

(declare-fun m!3750597 () Bool)

(assert (=> bm!244870 m!3750597))

(declare-fun m!3750599 () Bool)

(assert (=> bm!244865 m!3750599))

(declare-fun m!3750601 () Bool)

(assert (=> b!3385167 m!3750601))

(assert (=> b!3385167 m!3749599))

(declare-fun m!3750603 () Bool)

(assert (=> b!3385168 m!3750603))

(declare-fun m!3750607 () Bool)

(assert (=> bm!244864 m!3750607))

(declare-fun m!3750609 () Bool)

(assert (=> d!960713 m!3750609))

(declare-fun m!3750613 () Bool)

(assert (=> d!960713 m!3750613))

(declare-fun m!3750615 () Bool)

(assert (=> d!960713 m!3750615))

(declare-fun m!3750617 () Bool)

(assert (=> d!960713 m!3750617))

(declare-fun m!3750619 () Bool)

(assert (=> d!960713 m!3750619))

(assert (=> d!960713 m!3750615))

(declare-fun m!3750621 () Bool)

(assert (=> d!960713 m!3750621))

(declare-fun m!3750623 () Bool)

(assert (=> d!960713 m!3750623))

(declare-fun m!3750625 () Bool)

(assert (=> d!960713 m!3750625))

(assert (=> bm!244868 m!3749843))

(assert (=> bm!244871 m!3749735))

(declare-fun m!3750627 () Bool)

(assert (=> b!3385172 m!3750627))

(assert (=> bm!244869 m!3749781))

(assert (=> b!3385164 m!3748975))

(assert (=> b!3385164 m!3749781))

(declare-fun m!3750629 () Bool)

(assert (=> b!3385164 m!3750629))

(declare-fun m!3750631 () Bool)

(assert (=> b!3385164 m!3750631))

(declare-fun m!3750633 () Bool)

(assert (=> b!3385164 m!3750633))

(declare-fun m!3750635 () Bool)

(assert (=> b!3385164 m!3750635))

(assert (=> b!3385164 m!3750619))

(assert (=> b!3385164 m!3750633))

(assert (=> b!3385164 m!3750631))

(declare-fun m!3750637 () Bool)

(assert (=> b!3385164 m!3750637))

(assert (=> b!3385164 m!3749735))

(declare-fun m!3750639 () Bool)

(assert (=> b!3385164 m!3750639))

(declare-fun m!3750641 () Bool)

(assert (=> b!3385164 m!3750641))

(assert (=> b!3385164 m!3750619))

(declare-fun m!3750643 () Bool)

(assert (=> b!3385164 m!3750643))

(declare-fun m!3750645 () Bool)

(assert (=> b!3385164 m!3750645))

(assert (=> b!3385164 m!3749599))

(assert (=> bm!244867 m!3749845))

(assert (=> bm!244866 m!3748975))

(declare-fun m!3750647 () Bool)

(assert (=> bm!244866 m!3750647))

(assert (=> b!3384404 d!960713))

(declare-fun b!3385187 () Bool)

(declare-fun e!2101443 () Bool)

(assert (=> b!3385187 (= e!2101443 true)))

(declare-fun d!960815 () Bool)

(assert (=> d!960815 e!2101443))

(assert (= d!960815 b!3385187))

(declare-fun order!19443 () Int)

(declare-fun lambda!120576 () Int)

(declare-fun dynLambda!15358 (Int Int) Int)

(assert (=> b!3385187 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (dynLambda!15358 order!19443 lambda!120576))))

(assert (=> b!3385187 (< (dynLambda!15350 order!19431 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (dynLambda!15358 order!19443 lambda!120576))))

(assert (=> d!960815 (= (list!13341 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (seqFromList!3805 (_1!21375 lt!1149626))))) (list!13341 (seqFromList!3805 (_1!21375 lt!1149626))))))

(declare-fun lt!1149931 () Unit!51991)

(declare-fun ForallOf!583 (Int BalanceConc!21868) Unit!51991)

(assert (=> d!960815 (= lt!1149931 (ForallOf!583 lambda!120576 (seqFromList!3805 (_1!21375 lt!1149626))))))

(assert (=> d!960815 (= (lemmaSemiInverse!1229 (transformation!5376 (rule!7930 (h!42296 tokens!494))) (seqFromList!3805 (_1!21375 lt!1149626))) lt!1149931)))

(declare-fun b_lambda!96197 () Bool)

(assert (=> (not b_lambda!96197) (not d!960815)))

(declare-fun t!263746 () Bool)

(declare-fun tb!180483 () Bool)

(assert (=> (and b!3384684 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263746) tb!180483))

(declare-fun e!2101444 () Bool)

(declare-fun tp!1057655 () Bool)

(declare-fun b!3385188 () Bool)

(assert (=> b!3385188 (= e!2101444 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (seqFromList!3805 (_1!21375 lt!1149626)))))) tp!1057655))))

(declare-fun result!223988 () Bool)

(assert (=> tb!180483 (= result!223988 (and (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (seqFromList!3805 (_1!21375 lt!1149626))))) e!2101444))))

(assert (= tb!180483 b!3385188))

(declare-fun m!3750659 () Bool)

(assert (=> b!3385188 m!3750659))

(declare-fun m!3750661 () Bool)

(assert (=> tb!180483 m!3750661))

(assert (=> d!960815 t!263746))

(declare-fun b_and!235411 () Bool)

(assert (= b_and!235383 (and (=> t!263746 result!223988) b_and!235411)))

(declare-fun t!263748 () Bool)

(declare-fun tb!180485 () Bool)

(assert (=> (and b!3383876 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263748) tb!180485))

(declare-fun result!223990 () Bool)

(assert (= result!223990 result!223988))

(assert (=> d!960815 t!263748))

(declare-fun b_and!235413 () Bool)

(assert (= b_and!235387 (and (=> t!263748 result!223990) b_and!235413)))

(declare-fun t!263750 () Bool)

(declare-fun tb!180487 () Bool)

(assert (=> (and b!3383882 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263750) tb!180487))

(declare-fun result!223992 () Bool)

(assert (= result!223992 result!223988))

(assert (=> d!960815 t!263750))

(declare-fun b_and!235415 () Bool)

(assert (= b_and!235385 (and (=> t!263750 result!223992) b_and!235415)))

(declare-fun t!263752 () Bool)

(declare-fun tb!180489 () Bool)

(assert (=> (and b!3384650 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263752) tb!180489))

(declare-fun result!223994 () Bool)

(assert (= result!223994 result!223988))

(assert (=> d!960815 t!263752))

(declare-fun b_and!235417 () Bool)

(assert (= b_and!235381 (and (=> t!263752 result!223994) b_and!235417)))

(declare-fun t!263754 () Bool)

(declare-fun tb!180491 () Bool)

(assert (=> (and b!3383881 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263754) tb!180491))

(declare-fun result!223996 () Bool)

(assert (= result!223996 result!223988))

(assert (=> d!960815 t!263754))

(declare-fun b_and!235419 () Bool)

(assert (= b_and!235389 (and (=> t!263754 result!223996) b_and!235419)))

(declare-fun b_lambda!96199 () Bool)

(assert (=> (not b_lambda!96199) (not d!960815)))

(declare-fun t!263756 () Bool)

(declare-fun tb!180493 () Bool)

(assert (=> (and b!3384650 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263756) tb!180493))

(declare-fun result!223998 () Bool)

(assert (=> tb!180493 (= result!223998 (inv!21 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (seqFromList!3805 (_1!21375 lt!1149626)))))))

(declare-fun m!3750663 () Bool)

(assert (=> tb!180493 m!3750663))

(assert (=> d!960815 t!263756))

(declare-fun b_and!235421 () Bool)

(assert (= b_and!235343 (and (=> t!263756 result!223998) b_and!235421)))

(declare-fun t!263758 () Bool)

(declare-fun tb!180495 () Bool)

(assert (=> (and b!3384684 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263758) tb!180495))

(declare-fun result!224000 () Bool)

(assert (= result!224000 result!223998))

(assert (=> d!960815 t!263758))

(declare-fun b_and!235423 () Bool)

(assert (= b_and!235347 (and (=> t!263758 result!224000) b_and!235423)))

(declare-fun t!263760 () Bool)

(declare-fun tb!180497 () Bool)

(assert (=> (and b!3383882 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263760) tb!180497))

(declare-fun result!224002 () Bool)

(assert (= result!224002 result!223998))

(assert (=> d!960815 t!263760))

(declare-fun b_and!235425 () Bool)

(assert (= b_and!235311 (and (=> t!263760 result!224002) b_and!235425)))

(declare-fun t!263762 () Bool)

(declare-fun tb!180499 () Bool)

(assert (=> (and b!3383881 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263762) tb!180499))

(declare-fun result!224004 () Bool)

(assert (= result!224004 result!223998))

(assert (=> d!960815 t!263762))

(declare-fun b_and!235427 () Bool)

(assert (= b_and!235313 (and (=> t!263762 result!224004) b_and!235427)))

(declare-fun t!263764 () Bool)

(declare-fun tb!180501 () Bool)

(assert (=> (and b!3383876 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263764) tb!180501))

(declare-fun result!224006 () Bool)

(assert (= result!224006 result!223998))

(assert (=> d!960815 t!263764))

(declare-fun b_and!235429 () Bool)

(assert (= b_and!235315 (and (=> t!263764 result!224006) b_and!235429)))

(assert (=> d!960815 m!3749611))

(declare-fun m!3750669 () Bool)

(assert (=> d!960815 m!3750669))

(declare-fun m!3750673 () Bool)

(assert (=> d!960815 m!3750673))

(declare-fun m!3750675 () Bool)

(assert (=> d!960815 m!3750675))

(declare-fun m!3750677 () Bool)

(assert (=> d!960815 m!3750677))

(assert (=> d!960815 m!3750673))

(assert (=> d!960815 m!3749611))

(declare-fun m!3750679 () Bool)

(assert (=> d!960815 m!3750679))

(assert (=> d!960815 m!3749611))

(assert (=> d!960815 m!3750677))

(assert (=> b!3384404 d!960815))

(assert (=> b!3384404 d!960423))

(declare-fun d!960825 () Bool)

(assert (=> d!960825 (= (apply!8581 (transformation!5376 (rule!7930 (h!42296 tokens!494))) (seqFromList!3805 (_1!21375 lt!1149626))) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (seqFromList!3805 (_1!21375 lt!1149626))))))

(declare-fun b_lambda!96201 () Bool)

(assert (=> (not b_lambda!96201) (not d!960825)))

(assert (=> d!960825 t!263756))

(declare-fun b_and!235431 () Bool)

(assert (= b_and!235421 (and (=> t!263756 result!223998) b_and!235431)))

(assert (=> d!960825 t!263762))

(declare-fun b_and!235433 () Bool)

(assert (= b_and!235427 (and (=> t!263762 result!224004) b_and!235433)))

(assert (=> d!960825 t!263764))

(declare-fun b_and!235435 () Bool)

(assert (= b_and!235429 (and (=> t!263764 result!224006) b_and!235435)))

(assert (=> d!960825 t!263758))

(declare-fun b_and!235437 () Bool)

(assert (= b_and!235423 (and (=> t!263758 result!224000) b_and!235437)))

(assert (=> d!960825 t!263760))

(declare-fun b_and!235439 () Bool)

(assert (= b_and!235425 (and (=> t!263760 result!224002) b_and!235439)))

(assert (=> d!960825 m!3749611))

(assert (=> d!960825 m!3750677))

(assert (=> b!3384404 d!960825))

(declare-fun d!960827 () Bool)

(declare-fun e!2101454 () Bool)

(assert (=> d!960827 e!2101454))

(declare-fun res!1369687 () Bool)

(assert (=> d!960827 (=> res!1369687 e!2101454)))

(assert (=> d!960827 (= res!1369687 (isEmpty!21121 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(declare-fun lt!1149943 () Unit!51991)

(declare-fun choose!19603 (Regex!10135 List!36999) Unit!51991)

(assert (=> d!960827 (= lt!1149943 (choose!19603 (regex!5376 (rule!7930 (h!42296 tokens!494))) lt!1149402))))

(assert (=> d!960827 (validRegex!4610 (regex!5376 (rule!7930 (h!42296 tokens!494))))))

(assert (=> d!960827 (= (longestMatchIsAcceptedByMatchOrIsEmpty!854 (regex!5376 (rule!7930 (h!42296 tokens!494))) lt!1149402) lt!1149943)))

(declare-fun b!3385203 () Bool)

(assert (=> b!3385203 (= e!2101454 (matchR!4727 (regex!5376 (rule!7930 (h!42296 tokens!494))) (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(assert (= (and d!960827 (not res!1369687)) b!3385203))

(assert (=> d!960827 m!3749599))

(assert (=> d!960827 m!3749619))

(declare-fun m!3750709 () Bool)

(assert (=> d!960827 m!3750709))

(assert (=> d!960827 m!3749599))

(assert (=> d!960827 m!3748975))

(assert (=> d!960827 m!3749601))

(assert (=> d!960827 m!3748975))

(assert (=> d!960827 m!3750609))

(assert (=> b!3385203 m!3749599))

(assert (=> b!3385203 m!3748975))

(assert (=> b!3385203 m!3749599))

(assert (=> b!3385203 m!3748975))

(assert (=> b!3385203 m!3749601))

(assert (=> b!3385203 m!3749603))

(assert (=> b!3384404 d!960827))

(declare-fun d!960833 () Bool)

(declare-fun lt!1149946 () Int)

(assert (=> d!960833 (= lt!1149946 (size!27909 (list!13341 (seqFromList!3805 (_1!21375 lt!1149626)))))))

(declare-fun size!27916 (Conc!11127) Int)

(assert (=> d!960833 (= lt!1149946 (size!27916 (c!576277 (seqFromList!3805 (_1!21375 lt!1149626)))))))

(assert (=> d!960833 (= (size!27911 (seqFromList!3805 (_1!21375 lt!1149626))) lt!1149946)))

(declare-fun bs!555070 () Bool)

(assert (= bs!555070 d!960833))

(assert (=> bs!555070 m!3749611))

(assert (=> bs!555070 m!3750679))

(assert (=> bs!555070 m!3750679))

(declare-fun m!3750711 () Bool)

(assert (=> bs!555070 m!3750711))

(declare-fun m!3750713 () Bool)

(assert (=> bs!555070 m!3750713))

(assert (=> b!3384404 d!960833))

(declare-fun d!960835 () Bool)

(assert (=> d!960835 (= (seqFromList!3805 (_1!21375 lt!1149626)) (fromListB!1704 (_1!21375 lt!1149626)))))

(declare-fun bs!555071 () Bool)

(assert (= bs!555071 d!960835))

(declare-fun m!3750715 () Bool)

(assert (=> bs!555071 m!3750715))

(assert (=> b!3384404 d!960835))

(declare-fun d!960837 () Bool)

(declare-fun lt!1149947 () Int)

(assert (=> d!960837 (>= lt!1149947 0)))

(declare-fun e!2101455 () Int)

(assert (=> d!960837 (= lt!1149947 e!2101455)))

(declare-fun c!576570 () Bool)

(assert (=> d!960837 (= c!576570 ((_ is Nil!36875) Nil!36875))))

(assert (=> d!960837 (= (size!27909 Nil!36875) lt!1149947)))

(declare-fun b!3385204 () Bool)

(assert (=> b!3385204 (= e!2101455 0)))

(declare-fun b!3385205 () Bool)

(assert (=> b!3385205 (= e!2101455 (+ 1 (size!27909 (t!263602 Nil!36875))))))

(assert (= (and d!960837 c!576570) b!3385204))

(assert (= (and d!960837 (not c!576570)) b!3385205))

(declare-fun m!3750717 () Bool)

(assert (=> b!3385205 m!3750717))

(assert (=> b!3384404 d!960837))

(declare-fun d!960839 () Bool)

(assert (=> d!960839 (= (isEmpty!21121 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))) ((_ is Nil!36875) (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(assert (=> b!3384404 d!960839))

(declare-fun d!960841 () Bool)

(declare-fun charsToBigInt!0 (List!36998 Int) Int)

(assert (=> d!960841 (= (inv!15 (value!173676 (h!42296 tokens!494))) (= (charsToBigInt!0 (text!39691 (value!173676 (h!42296 tokens!494))) 0) (value!173671 (value!173676 (h!42296 tokens!494)))))))

(declare-fun bs!555072 () Bool)

(assert (= bs!555072 d!960841))

(declare-fun m!3750719 () Bool)

(assert (=> bs!555072 m!3750719))

(assert (=> b!3384558 d!960841))

(declare-fun d!960843 () Bool)

(assert (=> d!960843 (= (list!13341 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))) (list!13345 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))))))

(declare-fun bs!555073 () Bool)

(assert (= bs!555073 d!960843))

(declare-fun m!3750721 () Bool)

(assert (=> bs!555073 m!3750721))

(assert (=> b!3384602 d!960843))

(declare-fun d!960845 () Bool)

(declare-fun res!1369688 () Bool)

(declare-fun e!2101456 () Bool)

(assert (=> d!960845 (=> (not res!1369688) (not e!2101456))))

(assert (=> d!960845 (= res!1369688 (not (isEmpty!21121 (originalCharacters!6090 (h!42296 (t!263603 tokens!494))))))))

(assert (=> d!960845 (= (inv!49952 (h!42296 (t!263603 tokens!494))) e!2101456)))

(declare-fun b!3385206 () Bool)

(declare-fun res!1369689 () Bool)

(assert (=> b!3385206 (=> (not res!1369689) (not e!2101456))))

(assert (=> b!3385206 (= res!1369689 (= (originalCharacters!6090 (h!42296 (t!263603 tokens!494))) (list!13341 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (value!173676 (h!42296 (t!263603 tokens!494)))))))))

(declare-fun b!3385207 () Bool)

(assert (=> b!3385207 (= e!2101456 (= (size!27908 (h!42296 (t!263603 tokens!494))) (size!27909 (originalCharacters!6090 (h!42296 (t!263603 tokens!494))))))))

(assert (= (and d!960845 res!1369688) b!3385206))

(assert (= (and b!3385206 res!1369689) b!3385207))

(declare-fun b_lambda!96203 () Bool)

(assert (=> (not b_lambda!96203) (not b!3385206)))

(declare-fun t!263766 () Bool)

(declare-fun tb!180503 () Bool)

(assert (=> (and b!3384684 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) t!263766) tb!180503))

(declare-fun b!3385208 () Bool)

(declare-fun e!2101457 () Bool)

(declare-fun tp!1057656 () Bool)

(assert (=> b!3385208 (= e!2101457 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (value!173676 (h!42296 (t!263603 tokens!494)))))) tp!1057656))))

(declare-fun result!224008 () Bool)

(assert (=> tb!180503 (= result!224008 (and (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (value!173676 (h!42296 (t!263603 tokens!494))))) e!2101457))))

(assert (= tb!180503 b!3385208))

(declare-fun m!3750723 () Bool)

(assert (=> b!3385208 m!3750723))

(declare-fun m!3750725 () Bool)

(assert (=> tb!180503 m!3750725))

(assert (=> b!3385206 t!263766))

(declare-fun b_and!235441 () Bool)

(assert (= b_and!235411 (and (=> t!263766 result!224008) b_and!235441)))

(declare-fun tb!180505 () Bool)

(declare-fun t!263768 () Bool)

(assert (=> (and b!3383882 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) t!263768) tb!180505))

(declare-fun result!224010 () Bool)

(assert (= result!224010 result!224008))

(assert (=> b!3385206 t!263768))

(declare-fun b_and!235443 () Bool)

(assert (= b_and!235415 (and (=> t!263768 result!224010) b_and!235443)))

(declare-fun t!263770 () Bool)

(declare-fun tb!180507 () Bool)

(assert (=> (and b!3384650 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) t!263770) tb!180507))

(declare-fun result!224012 () Bool)

(assert (= result!224012 result!224008))

(assert (=> b!3385206 t!263770))

(declare-fun b_and!235445 () Bool)

(assert (= b_and!235417 (and (=> t!263770 result!224012) b_and!235445)))

(declare-fun t!263772 () Bool)

(declare-fun tb!180509 () Bool)

(assert (=> (and b!3383881 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) t!263772) tb!180509))

(declare-fun result!224014 () Bool)

(assert (= result!224014 result!224008))

(assert (=> b!3385206 t!263772))

(declare-fun b_and!235447 () Bool)

(assert (= b_and!235419 (and (=> t!263772 result!224014) b_and!235447)))

(declare-fun t!263774 () Bool)

(declare-fun tb!180511 () Bool)

(assert (=> (and b!3383876 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) t!263774) tb!180511))

(declare-fun result!224016 () Bool)

(assert (= result!224016 result!224008))

(assert (=> b!3385206 t!263774))

(declare-fun b_and!235449 () Bool)

(assert (= b_and!235413 (and (=> t!263774 result!224016) b_and!235449)))

(declare-fun m!3750727 () Bool)

(assert (=> d!960845 m!3750727))

(declare-fun m!3750729 () Bool)

(assert (=> b!3385206 m!3750729))

(assert (=> b!3385206 m!3750729))

(declare-fun m!3750731 () Bool)

(assert (=> b!3385206 m!3750731))

(declare-fun m!3750733 () Bool)

(assert (=> b!3385207 m!3750733))

(assert (=> b!3384647 d!960845))

(declare-fun d!960847 () Bool)

(declare-fun lt!1149948 () Bool)

(assert (=> d!960847 (= lt!1149948 (isEmpty!21125 (list!13344 (_1!21371 lt!1149484))))))

(assert (=> d!960847 (= lt!1149948 (isEmpty!21126 (c!576278 (_1!21371 lt!1149484))))))

(assert (=> d!960847 (= (isEmpty!21122 (_1!21371 lt!1149484)) lt!1149948)))

(declare-fun bs!555074 () Bool)

(assert (= bs!555074 d!960847))

(assert (=> bs!555074 m!3749201))

(assert (=> bs!555074 m!3749201))

(declare-fun m!3750735 () Bool)

(assert (=> bs!555074 m!3750735))

(declare-fun m!3750737 () Bool)

(assert (=> bs!555074 m!3750737))

(assert (=> b!3384057 d!960847))

(declare-fun bs!555075 () Bool)

(declare-fun d!960849 () Bool)

(assert (= bs!555075 (and d!960849 d!960815)))

(declare-fun lambda!120579 () Int)

(assert (=> bs!555075 (= (and (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (= lambda!120579 lambda!120576))))

(assert (=> d!960849 true))

(assert (=> d!960849 (< (dynLambda!15350 order!19431 (toChars!7423 (transformation!5376 (h!42297 rules!2135)))) (dynLambda!15358 order!19443 lambda!120579))))

(assert (=> d!960849 true))

(assert (=> d!960849 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (h!42297 rules!2135)))) (dynLambda!15358 order!19443 lambda!120579))))

(declare-fun Forall!1319 (Int) Bool)

(assert (=> d!960849 (= (semiInverseModEq!2245 (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (h!42297 rules!2135)))) (Forall!1319 lambda!120579))))

(declare-fun bs!555076 () Bool)

(assert (= bs!555076 d!960849))

(declare-fun m!3750739 () Bool)

(assert (=> bs!555076 m!3750739))

(assert (=> d!960517 d!960849))

(declare-fun d!960851 () Bool)

(assert (=> d!960851 true))

(declare-fun order!19445 () Int)

(declare-fun lambda!120582 () Int)

(declare-fun dynLambda!15359 (Int Int) Int)

(assert (=> d!960851 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241)))) (dynLambda!15359 order!19445 lambda!120582))))

(declare-fun Forall2!915 (Int) Bool)

(assert (=> d!960851 (= (equivClasses!2144 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241)))) (Forall2!915 lambda!120582))))

(declare-fun bs!555077 () Bool)

(assert (= bs!555077 d!960851))

(declare-fun m!3750741 () Bool)

(assert (=> bs!555077 m!3750741))

(assert (=> b!3384588 d!960851))

(declare-fun d!960853 () Bool)

(declare-fun res!1369692 () Bool)

(declare-fun e!2101460 () Bool)

(assert (=> d!960853 (=> res!1369692 e!2101460)))

(assert (=> d!960853 (= res!1369692 ((_ is Nil!36876) (t!263603 tokens!494)))))

(assert (=> d!960853 (= (forall!7765 (t!263603 tokens!494) lambda!120549) e!2101460)))

(declare-fun b!3385217 () Bool)

(declare-fun e!2101461 () Bool)

(assert (=> b!3385217 (= e!2101460 e!2101461)))

(declare-fun res!1369693 () Bool)

(assert (=> b!3385217 (=> (not res!1369693) (not e!2101461))))

(assert (=> b!3385217 (= res!1369693 (dynLambda!15347 lambda!120549 (h!42296 (t!263603 tokens!494))))))

(declare-fun b!3385218 () Bool)

(assert (=> b!3385218 (= e!2101461 (forall!7765 (t!263603 (t!263603 tokens!494)) lambda!120549))))

(assert (= (and d!960853 (not res!1369692)) b!3385217))

(assert (= (and b!3385217 res!1369693) b!3385218))

(declare-fun b_lambda!96205 () Bool)

(assert (=> (not b_lambda!96205) (not b!3385217)))

(declare-fun m!3750743 () Bool)

(assert (=> b!3385217 m!3750743))

(declare-fun m!3750745 () Bool)

(assert (=> b!3385218 m!3750745))

(assert (=> b!3384099 d!960853))

(declare-fun d!960855 () Bool)

(assert (=> d!960855 (= (isEmpty!21132 lt!1149405) (not ((_ is Some!7400) lt!1149405)))))

(assert (=> d!960477 d!960855))

(declare-fun d!960857 () Bool)

(declare-fun lt!1149949 () Int)

(assert (=> d!960857 (>= lt!1149949 0)))

(declare-fun e!2101462 () Int)

(assert (=> d!960857 (= lt!1149949 e!2101462)))

(declare-fun c!576571 () Bool)

(assert (=> d!960857 (= c!576571 ((_ is Nil!36875) (_2!21370 (get!11775 lt!1149684))))))

(assert (=> d!960857 (= (size!27909 (_2!21370 (get!11775 lt!1149684))) lt!1149949)))

(declare-fun b!3385219 () Bool)

(assert (=> b!3385219 (= e!2101462 0)))

(declare-fun b!3385220 () Bool)

(assert (=> b!3385220 (= e!2101462 (+ 1 (size!27909 (t!263602 (_2!21370 (get!11775 lt!1149684))))))))

(assert (= (and d!960857 c!576571) b!3385219))

(assert (= (and d!960857 (not c!576571)) b!3385220))

(declare-fun m!3750747 () Bool)

(assert (=> b!3385220 m!3750747))

(assert (=> b!3384627 d!960857))

(assert (=> b!3384627 d!960709))

(assert (=> b!3384627 d!960423))

(declare-fun d!960859 () Bool)

(declare-fun lt!1149952 () Int)

(declare-fun size!27917 (List!37000) Int)

(assert (=> d!960859 (= lt!1149952 (size!27917 (list!13344 (_1!21371 lt!1149484))))))

(declare-fun size!27918 (Conc!11128) Int)

(assert (=> d!960859 (= lt!1149952 (size!27918 (c!576278 (_1!21371 lt!1149484))))))

(assert (=> d!960859 (= (size!27912 (_1!21371 lt!1149484)) lt!1149952)))

(declare-fun bs!555078 () Bool)

(assert (= bs!555078 d!960859))

(assert (=> bs!555078 m!3749201))

(assert (=> bs!555078 m!3749201))

(declare-fun m!3750749 () Bool)

(assert (=> bs!555078 m!3750749))

(declare-fun m!3750751 () Bool)

(assert (=> bs!555078 m!3750751))

(assert (=> d!960273 d!960859))

(declare-fun b!3385337 () Bool)

(declare-fun e!2101534 () tuple2!36474)

(assert (=> b!3385337 (= e!2101534 (tuple2!36475 (BalanceConc!21871 Empty!11128) lt!1149404))))

(declare-fun b!3385338 () Bool)

(declare-fun e!2101536 () tuple2!36474)

(assert (=> b!3385338 (= e!2101536 (tuple2!36475 (BalanceConc!21871 Empty!11128) lt!1149404))))

(declare-fun b!3385339 () Bool)

(declare-datatypes ((tuple2!36484 0))(
  ( (tuple2!36485 (_1!21376 Token!10118) (_2!21376 BalanceConc!21868)) )
))
(declare-datatypes ((Option!7403 0))(
  ( (None!7402) (Some!7402 (v!36518 tuple2!36484)) )
))
(declare-fun lt!1150066 () Option!7403)

(declare-fun lt!1150073 () tuple2!36474)

(declare-fun lexRec!730 (LexerInterface!4965 List!37001 BalanceConc!21868) tuple2!36474)

(assert (=> b!3385339 (= lt!1150073 (lexRec!730 thiss!18206 rules!2135 (_2!21376 (v!36518 lt!1150066))))))

(declare-fun e!2101535 () tuple2!36474)

(declare-fun prepend!1234 (BalanceConc!21870 Token!10118) BalanceConc!21870)

(assert (=> b!3385339 (= e!2101535 (tuple2!36475 (prepend!1234 (_1!21371 lt!1150073) (_1!21376 (v!36518 lt!1150066))) (_2!21371 lt!1150073)))))

(declare-fun d!960861 () Bool)

(declare-fun e!2101533 () Bool)

(assert (=> d!960861 e!2101533))

(declare-fun res!1369741 () Bool)

(assert (=> d!960861 (=> (not res!1369741) (not e!2101533))))

(declare-fun lt!1150061 () tuple2!36474)

(assert (=> d!960861 (= res!1369741 (= (list!13344 (_1!21371 lt!1150061)) (list!13344 (_1!21371 (lexRec!730 thiss!18206 rules!2135 lt!1149404)))))))

(assert (=> d!960861 (= lt!1150061 e!2101534)))

(declare-fun c!576612 () Bool)

(declare-fun lt!1150078 () Option!7403)

(assert (=> d!960861 (= c!576612 ((_ is Some!7402) lt!1150078))))

(declare-fun maxPrefixZipperSequenceV2!517 (LexerInterface!4965 List!37001 BalanceConc!21868 BalanceConc!21868) Option!7403)

(assert (=> d!960861 (= lt!1150078 (maxPrefixZipperSequenceV2!517 thiss!18206 rules!2135 lt!1149404 lt!1149404))))

(declare-fun lt!1150069 () Unit!51991)

(declare-fun lt!1150089 () Unit!51991)

(assert (=> d!960861 (= lt!1150069 lt!1150089)))

(declare-fun lt!1150064 () List!36999)

(declare-fun lt!1150076 () List!36999)

(declare-fun isSuffix!892 (List!36999 List!36999) Bool)

(assert (=> d!960861 (isSuffix!892 lt!1150064 (++!9017 lt!1150076 lt!1150064))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!577 (List!36999 List!36999) Unit!51991)

(assert (=> d!960861 (= lt!1150089 (lemmaConcatTwoListThenFSndIsSuffix!577 lt!1150076 lt!1150064))))

(assert (=> d!960861 (= lt!1150064 (list!13341 lt!1149404))))

(assert (=> d!960861 (= lt!1150076 (list!13341 (BalanceConc!21869 Empty!11127)))))

(assert (=> d!960861 (= (lexTailRecV2!1017 thiss!18206 rules!2135 lt!1149404 (BalanceConc!21869 Empty!11127) lt!1149404 (BalanceConc!21871 Empty!11128)) lt!1150061)))

(declare-fun lt!1150074 () tuple2!36474)

(declare-fun lt!1150084 () Option!7403)

(declare-fun b!3385340 () Bool)

(assert (=> b!3385340 (= lt!1150074 (lexRec!730 thiss!18206 rules!2135 (_2!21376 (v!36518 lt!1150084))))))

(assert (=> b!3385340 (= e!2101536 (tuple2!36475 (prepend!1234 (_1!21371 lt!1150074) (_1!21376 (v!36518 lt!1150084))) (_2!21371 lt!1150074)))))

(declare-fun b!3385341 () Bool)

(declare-fun lt!1150070 () BalanceConc!21868)

(declare-fun append!934 (BalanceConc!21870 Token!10118) BalanceConc!21870)

(assert (=> b!3385341 (= e!2101534 (lexTailRecV2!1017 thiss!18206 rules!2135 lt!1149404 lt!1150070 (_2!21376 (v!36518 lt!1150078)) (append!934 (BalanceConc!21871 Empty!11128) (_1!21376 (v!36518 lt!1150078)))))))

(declare-fun lt!1150087 () tuple2!36474)

(assert (=> b!3385341 (= lt!1150087 (lexRec!730 thiss!18206 rules!2135 (_2!21376 (v!36518 lt!1150078))))))

(declare-fun lt!1150086 () List!36999)

(assert (=> b!3385341 (= lt!1150086 (list!13341 (BalanceConc!21869 Empty!11127)))))

(declare-fun lt!1150075 () List!36999)

(assert (=> b!3385341 (= lt!1150075 (list!13341 (charsOf!3390 (_1!21376 (v!36518 lt!1150078)))))))

(declare-fun lt!1150058 () List!36999)

(assert (=> b!3385341 (= lt!1150058 (list!13341 (_2!21376 (v!36518 lt!1150078))))))

(declare-fun lt!1150082 () Unit!51991)

(declare-fun lemmaConcatAssociativity!1882 (List!36999 List!36999 List!36999) Unit!51991)

(assert (=> b!3385341 (= lt!1150082 (lemmaConcatAssociativity!1882 lt!1150086 lt!1150075 lt!1150058))))

(assert (=> b!3385341 (= (++!9017 (++!9017 lt!1150086 lt!1150075) lt!1150058) (++!9017 lt!1150086 (++!9017 lt!1150075 lt!1150058)))))

(declare-fun lt!1150088 () Unit!51991)

(assert (=> b!3385341 (= lt!1150088 lt!1150082)))

(declare-fun maxPrefixZipperSequence!1123 (LexerInterface!4965 List!37001 BalanceConc!21868) Option!7403)

(assert (=> b!3385341 (= lt!1150084 (maxPrefixZipperSequence!1123 thiss!18206 rules!2135 lt!1149404))))

(declare-fun c!576610 () Bool)

(assert (=> b!3385341 (= c!576610 ((_ is Some!7402) lt!1150084))))

(assert (=> b!3385341 (= (lexRec!730 thiss!18206 rules!2135 lt!1149404) e!2101536)))

(declare-fun lt!1150068 () Unit!51991)

(declare-fun Unit!51999 () Unit!51991)

(assert (=> b!3385341 (= lt!1150068 Unit!51999)))

(declare-fun lt!1150060 () List!37000)

(assert (=> b!3385341 (= lt!1150060 (list!13344 (BalanceConc!21871 Empty!11128)))))

(declare-fun lt!1150072 () List!37000)

(assert (=> b!3385341 (= lt!1150072 (Cons!36876 (_1!21376 (v!36518 lt!1150078)) Nil!36876))))

(declare-fun lt!1150063 () List!37000)

(assert (=> b!3385341 (= lt!1150063 (list!13344 (_1!21371 lt!1150087)))))

(declare-fun lt!1150059 () Unit!51991)

(declare-fun lemmaConcatAssociativity!1883 (List!37000 List!37000 List!37000) Unit!51991)

(assert (=> b!3385341 (= lt!1150059 (lemmaConcatAssociativity!1883 lt!1150060 lt!1150072 lt!1150063))))

(declare-fun ++!9020 (List!37000 List!37000) List!37000)

(assert (=> b!3385341 (= (++!9020 (++!9020 lt!1150060 lt!1150072) lt!1150063) (++!9020 lt!1150060 (++!9020 lt!1150072 lt!1150063)))))

(declare-fun lt!1150079 () Unit!51991)

(assert (=> b!3385341 (= lt!1150079 lt!1150059)))

(declare-fun lt!1150065 () List!36999)

(assert (=> b!3385341 (= lt!1150065 (++!9017 (list!13341 (BalanceConc!21869 Empty!11127)) (list!13341 (charsOf!3390 (_1!21376 (v!36518 lt!1150078))))))))

(declare-fun lt!1150077 () List!36999)

(assert (=> b!3385341 (= lt!1150077 (list!13341 (_2!21376 (v!36518 lt!1150078))))))

(declare-fun lt!1150057 () List!37000)

(assert (=> b!3385341 (= lt!1150057 (list!13344 (append!934 (BalanceConc!21871 Empty!11128) (_1!21376 (v!36518 lt!1150078)))))))

(declare-fun lt!1150056 () Unit!51991)

(declare-fun lemmaLexThenLexPrefix!495 (LexerInterface!4965 List!37001 List!36999 List!36999 List!37000 List!37000 List!36999) Unit!51991)

(assert (=> b!3385341 (= lt!1150056 (lemmaLexThenLexPrefix!495 thiss!18206 rules!2135 lt!1150065 lt!1150077 lt!1150057 (list!13344 (_1!21371 lt!1150087)) (list!13341 (_2!21371 lt!1150087))))))

(assert (=> b!3385341 (= (lexList!1407 thiss!18206 rules!2135 lt!1150065) (tuple2!36477 lt!1150057 Nil!36875))))

(declare-fun lt!1150067 () Unit!51991)

(assert (=> b!3385341 (= lt!1150067 lt!1150056)))

(declare-fun lt!1150062 () BalanceConc!21868)

(assert (=> b!3385341 (= lt!1150062 (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (_1!21376 (v!36518 lt!1150078)))))))

(assert (=> b!3385341 (= lt!1150066 (maxPrefixZipperSequence!1123 thiss!18206 rules!2135 lt!1150062))))

(declare-fun c!576611 () Bool)

(assert (=> b!3385341 (= c!576611 ((_ is Some!7402) lt!1150066))))

(assert (=> b!3385341 (= (lexRec!730 thiss!18206 rules!2135 (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (_1!21376 (v!36518 lt!1150078))))) e!2101535)))

(declare-fun lt!1150081 () Unit!51991)

(declare-fun Unit!52000 () Unit!51991)

(assert (=> b!3385341 (= lt!1150081 Unit!52000)))

(assert (=> b!3385341 (= lt!1150070 (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (_1!21376 (v!36518 lt!1150078)))))))

(declare-fun lt!1150085 () List!36999)

(assert (=> b!3385341 (= lt!1150085 (list!13341 lt!1150070))))

(declare-fun lt!1150071 () List!36999)

(assert (=> b!3385341 (= lt!1150071 (list!13341 (_2!21376 (v!36518 lt!1150078))))))

(declare-fun lt!1150083 () Unit!51991)

(assert (=> b!3385341 (= lt!1150083 (lemmaConcatTwoListThenFSndIsSuffix!577 lt!1150085 lt!1150071))))

(assert (=> b!3385341 (isSuffix!892 lt!1150071 (++!9017 lt!1150085 lt!1150071))))

(declare-fun lt!1150080 () Unit!51991)

(assert (=> b!3385341 (= lt!1150080 lt!1150083)))

(declare-fun b!3385342 () Bool)

(assert (=> b!3385342 (= e!2101533 (= (list!13341 (_2!21371 lt!1150061)) (list!13341 (_2!21371 (lexRec!730 thiss!18206 rules!2135 lt!1149404)))))))

(declare-fun b!3385343 () Bool)

(assert (=> b!3385343 (= e!2101535 (tuple2!36475 (BalanceConc!21871 Empty!11128) lt!1150062))))

(assert (= (and d!960861 c!576612) b!3385341))

(assert (= (and d!960861 (not c!576612)) b!3385337))

(assert (= (and b!3385341 c!576610) b!3385340))

(assert (= (and b!3385341 (not c!576610)) b!3385338))

(assert (= (and b!3385341 c!576611) b!3385339))

(assert (= (and b!3385341 (not c!576611)) b!3385343))

(assert (= (and d!960861 res!1369741) b!3385342))

(declare-fun m!3750899 () Bool)

(assert (=> b!3385342 m!3750899))

(declare-fun m!3750901 () Bool)

(assert (=> b!3385342 m!3750901))

(declare-fun m!3750903 () Bool)

(assert (=> b!3385342 m!3750903))

(declare-fun m!3750905 () Bool)

(assert (=> b!3385339 m!3750905))

(declare-fun m!3750907 () Bool)

(assert (=> b!3385339 m!3750907))

(assert (=> d!960861 m!3749197))

(declare-fun m!3750909 () Bool)

(assert (=> d!960861 m!3750909))

(assert (=> d!960861 m!3750901))

(declare-fun m!3750911 () Bool)

(assert (=> d!960861 m!3750911))

(assert (=> d!960861 m!3749213))

(declare-fun m!3750913 () Bool)

(assert (=> d!960861 m!3750913))

(declare-fun m!3750915 () Bool)

(assert (=> d!960861 m!3750915))

(declare-fun m!3750917 () Bool)

(assert (=> d!960861 m!3750917))

(assert (=> d!960861 m!3750909))

(declare-fun m!3750919 () Bool)

(assert (=> d!960861 m!3750919))

(declare-fun m!3750921 () Bool)

(assert (=> b!3385340 m!3750921))

(declare-fun m!3750923 () Bool)

(assert (=> b!3385340 m!3750923))

(assert (=> b!3385341 m!3749213))

(declare-fun m!3750925 () Bool)

(assert (=> b!3385341 m!3750925))

(declare-fun m!3750927 () Bool)

(assert (=> b!3385341 m!3750927))

(declare-fun m!3750929 () Bool)

(assert (=> b!3385341 m!3750929))

(declare-fun m!3750931 () Bool)

(assert (=> b!3385341 m!3750931))

(declare-fun m!3750933 () Bool)

(assert (=> b!3385341 m!3750933))

(declare-fun m!3750935 () Bool)

(assert (=> b!3385341 m!3750935))

(declare-fun m!3750937 () Bool)

(assert (=> b!3385341 m!3750937))

(declare-fun m!3750939 () Bool)

(assert (=> b!3385341 m!3750939))

(assert (=> b!3385341 m!3750901))

(declare-fun m!3750941 () Bool)

(assert (=> b!3385341 m!3750941))

(assert (=> b!3385341 m!3750935))

(declare-fun m!3750943 () Bool)

(assert (=> b!3385341 m!3750943))

(assert (=> b!3385341 m!3750943))

(declare-fun m!3750945 () Bool)

(assert (=> b!3385341 m!3750945))

(declare-fun m!3750947 () Bool)

(assert (=> b!3385341 m!3750947))

(declare-fun m!3750949 () Bool)

(assert (=> b!3385341 m!3750949))

(declare-fun m!3750951 () Bool)

(assert (=> b!3385341 m!3750951))

(assert (=> b!3385341 m!3750933))

(declare-fun m!3750953 () Bool)

(assert (=> b!3385341 m!3750953))

(assert (=> b!3385341 m!3750951))

(declare-fun m!3750955 () Bool)

(assert (=> b!3385341 m!3750955))

(declare-fun m!3750957 () Bool)

(assert (=> b!3385341 m!3750957))

(declare-fun m!3750959 () Bool)

(assert (=> b!3385341 m!3750959))

(assert (=> b!3385341 m!3750941))

(declare-fun m!3750961 () Bool)

(assert (=> b!3385341 m!3750961))

(assert (=> b!3385341 m!3750929))

(declare-fun m!3750963 () Bool)

(assert (=> b!3385341 m!3750963))

(declare-fun m!3750965 () Bool)

(assert (=> b!3385341 m!3750965))

(declare-fun m!3750967 () Bool)

(assert (=> b!3385341 m!3750967))

(declare-fun m!3750969 () Bool)

(assert (=> b!3385341 m!3750969))

(declare-fun m!3750971 () Bool)

(assert (=> b!3385341 m!3750971))

(assert (=> b!3385341 m!3750967))

(declare-fun m!3750973 () Bool)

(assert (=> b!3385341 m!3750973))

(assert (=> b!3385341 m!3750971))

(assert (=> b!3385341 m!3750951))

(declare-fun m!3750975 () Bool)

(assert (=> b!3385341 m!3750975))

(declare-fun m!3750977 () Bool)

(assert (=> b!3385341 m!3750977))

(declare-fun m!3750979 () Bool)

(assert (=> b!3385341 m!3750979))

(declare-fun m!3750981 () Bool)

(assert (=> b!3385341 m!3750981))

(assert (=> b!3385341 m!3750981))

(declare-fun m!3750983 () Bool)

(assert (=> b!3385341 m!3750983))

(assert (=> b!3385341 m!3750977))

(declare-fun m!3750985 () Bool)

(assert (=> b!3385341 m!3750985))

(assert (=> b!3385341 m!3750935))

(assert (=> b!3385341 m!3750925))

(assert (=> b!3385341 m!3749213))

(assert (=> d!960273 d!960861))

(declare-fun d!960923 () Bool)

(assert (=> d!960923 (= (isDefined!5717 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))) (not (isEmpty!21132 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))))))

(declare-fun bs!555086 () Bool)

(assert (= bs!555086 d!960923))

(assert (=> bs!555086 m!3748963))

(declare-fun m!3750987 () Bool)

(assert (=> bs!555086 m!3750987))

(assert (=> d!960411 d!960923))

(assert (=> d!960411 d!960475))

(declare-fun d!960925 () Bool)

(declare-fun e!2101551 () Bool)

(assert (=> d!960925 e!2101551))

(declare-fun res!1369746 () Bool)

(assert (=> d!960925 (=> (not res!1369746) (not e!2101551))))

(assert (=> d!960925 (= res!1369746 (isDefined!5717 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))))))

(assert (=> d!960925 true))

(declare-fun _$52!1778 () Unit!51991)

(assert (=> d!960925 (= (choose!19595 thiss!18206 rules!2135 lt!1149402 (h!42296 tokens!494)) _$52!1778)))

(declare-fun b!3385372 () Bool)

(declare-fun res!1369747 () Bool)

(assert (=> b!3385372 (=> (not res!1369747) (not e!2101551))))

(assert (=> b!3385372 (= res!1369747 (matchR!4727 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))) (list!13341 (charsOf!3390 (h!42296 tokens!494)))))))

(declare-fun b!3385373 () Bool)

(assert (=> b!3385373 (= e!2101551 (= (rule!7930 (h!42296 tokens!494)) (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))))))

(assert (= (and d!960925 res!1369746) b!3385372))

(assert (= (and b!3385372 res!1369747) b!3385373))

(assert (=> d!960925 m!3748963))

(assert (=> d!960925 m!3748963))

(assert (=> d!960925 m!3749509))

(assert (=> b!3385372 m!3748895))

(assert (=> b!3385372 m!3749513))

(assert (=> b!3385372 m!3748893))

(assert (=> b!3385372 m!3748895))

(assert (=> b!3385372 m!3748963))

(assert (=> b!3385372 m!3749515))

(assert (=> b!3385372 m!3748963))

(assert (=> b!3385372 m!3748893))

(assert (=> b!3385373 m!3748963))

(assert (=> b!3385373 m!3748963))

(assert (=> b!3385373 m!3749515))

(assert (=> d!960411 d!960925))

(assert (=> d!960411 d!960327))

(declare-fun d!960927 () Bool)

(assert (=> d!960927 (= (isDefined!5717 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))) (not (isEmpty!21132 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))))))

(declare-fun bs!555087 () Bool)

(assert (= bs!555087 d!960927))

(assert (=> bs!555087 m!3748973))

(declare-fun m!3750989 () Bool)

(assert (=> bs!555087 m!3750989))

(assert (=> d!960415 d!960927))

(assert (=> d!960415 d!960421))

(declare-fun d!960929 () Bool)

(declare-fun e!2101552 () Bool)

(assert (=> d!960929 e!2101552))

(declare-fun res!1369748 () Bool)

(assert (=> d!960929 (=> (not res!1369748) (not e!2101552))))

(assert (=> d!960929 (= res!1369748 (isDefined!5717 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))))))

(assert (=> d!960929 true))

(declare-fun _$52!1779 () Unit!51991)

(assert (=> d!960929 (= (choose!19595 thiss!18206 rules!2135 lt!1149400 separatorToken!241) _$52!1779)))

(declare-fun b!3385374 () Bool)

(declare-fun res!1369749 () Bool)

(assert (=> b!3385374 (=> (not res!1369749) (not e!2101552))))

(assert (=> b!3385374 (= res!1369749 (matchR!4727 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))) (list!13341 (charsOf!3390 separatorToken!241))))))

(declare-fun b!3385375 () Bool)

(assert (=> b!3385375 (= e!2101552 (= (rule!7930 separatorToken!241) (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))))))

(assert (= (and d!960929 res!1369748) b!3385374))

(assert (= (and b!3385374 res!1369749) b!3385375))

(assert (=> d!960929 m!3748973))

(assert (=> d!960929 m!3748973))

(assert (=> d!960929 m!3749519))

(assert (=> b!3385374 m!3748927))

(assert (=> b!3385374 m!3749523))

(assert (=> b!3385374 m!3748919))

(assert (=> b!3385374 m!3748927))

(assert (=> b!3385374 m!3748973))

(assert (=> b!3385374 m!3749525))

(assert (=> b!3385374 m!3748973))

(assert (=> b!3385374 m!3748919))

(assert (=> b!3385375 m!3748973))

(assert (=> b!3385375 m!3748973))

(assert (=> b!3385375 m!3749525))

(assert (=> d!960415 d!960929))

(assert (=> d!960415 d!960327))

(declare-fun d!960931 () Bool)

(assert (=> d!960931 (= (isEmpty!21121 lt!1149400) ((_ is Nil!36875) lt!1149400))))

(assert (=> d!960493 d!960931))

(declare-fun bm!244901 () Bool)

(declare-fun call!244908 () Bool)

(declare-fun c!576630 () Bool)

(assert (=> bm!244901 (= call!244908 (validRegex!4610 (ite c!576630 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))))))

(declare-fun b!3385398 () Bool)

(declare-fun e!2101575 () Bool)

(declare-fun e!2101571 () Bool)

(assert (=> b!3385398 (= e!2101575 e!2101571)))

(declare-fun res!1369765 () Bool)

(assert (=> b!3385398 (= res!1369765 (not (nullable!3454 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))))))))

(assert (=> b!3385398 (=> (not res!1369765) (not e!2101571))))

(declare-fun call!244907 () Bool)

(declare-fun c!576629 () Bool)

(declare-fun bm!244902 () Bool)

(assert (=> bm!244902 (= call!244907 (validRegex!4610 (ite c!576629 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576630 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))))))

(declare-fun b!3385399 () Bool)

(declare-fun e!2101574 () Bool)

(assert (=> b!3385399 (= e!2101575 e!2101574)))

(assert (=> b!3385399 (= c!576630 ((_ is Union!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun b!3385400 () Bool)

(declare-fun e!2101577 () Bool)

(assert (=> b!3385400 (= e!2101577 e!2101575)))

(assert (=> b!3385400 (= c!576629 ((_ is Star!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun b!3385401 () Bool)

(declare-fun e!2101572 () Bool)

(declare-fun call!244906 () Bool)

(assert (=> b!3385401 (= e!2101572 call!244906)))

(declare-fun b!3385402 () Bool)

(declare-fun e!2101576 () Bool)

(assert (=> b!3385402 (= e!2101576 e!2101572)))

(declare-fun res!1369764 () Bool)

(assert (=> b!3385402 (=> (not res!1369764) (not e!2101572))))

(assert (=> b!3385402 (= res!1369764 call!244908)))

(declare-fun b!3385403 () Bool)

(assert (=> b!3385403 (= e!2101571 call!244907)))

(declare-fun b!3385405 () Bool)

(declare-fun res!1369768 () Bool)

(declare-fun e!2101573 () Bool)

(assert (=> b!3385405 (=> (not res!1369768) (not e!2101573))))

(assert (=> b!3385405 (= res!1369768 call!244908)))

(assert (=> b!3385405 (= e!2101574 e!2101573)))

(declare-fun bm!244903 () Bool)

(assert (=> bm!244903 (= call!244906 call!244907)))

(declare-fun b!3385406 () Bool)

(assert (=> b!3385406 (= e!2101573 call!244906)))

(declare-fun d!960933 () Bool)

(declare-fun res!1369767 () Bool)

(assert (=> d!960933 (=> res!1369767 e!2101577)))

(assert (=> d!960933 (= res!1369767 ((_ is ElementMatch!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(assert (=> d!960933 (= (validRegex!4610 (regex!5376 (rule!7930 separatorToken!241))) e!2101577)))

(declare-fun b!3385404 () Bool)

(declare-fun res!1369766 () Bool)

(assert (=> b!3385404 (=> res!1369766 e!2101576)))

(assert (=> b!3385404 (= res!1369766 (not ((_ is Concat!15741) (regex!5376 (rule!7930 separatorToken!241)))))))

(assert (=> b!3385404 (= e!2101574 e!2101576)))

(assert (= (and d!960933 (not res!1369767)) b!3385400))

(assert (= (and b!3385400 c!576629) b!3385398))

(assert (= (and b!3385400 (not c!576629)) b!3385399))

(assert (= (and b!3385398 res!1369765) b!3385403))

(assert (= (and b!3385399 c!576630) b!3385405))

(assert (= (and b!3385399 (not c!576630)) b!3385404))

(assert (= (and b!3385405 res!1369768) b!3385406))

(assert (= (and b!3385404 (not res!1369766)) b!3385402))

(assert (= (and b!3385402 res!1369764) b!3385401))

(assert (= (or b!3385406 b!3385401) bm!244903))

(assert (= (or b!3385405 b!3385402) bm!244901))

(assert (= (or b!3385403 bm!244903) bm!244902))

(declare-fun m!3750991 () Bool)

(assert (=> bm!244901 m!3750991))

(declare-fun m!3750993 () Bool)

(assert (=> b!3385398 m!3750993))

(declare-fun m!3750995 () Bool)

(assert (=> bm!244902 m!3750995))

(assert (=> d!960493 d!960933))

(assert (=> b!3384560 d!960419))

(declare-fun d!960935 () Bool)

(assert (=> d!960935 (= (isEmpty!21125 (list!13344 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404)))) ((_ is Nil!36876) (list!13344 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404)))))))

(assert (=> d!960267 d!960935))

(declare-fun d!960937 () Bool)

(declare-fun list!13348 (Conc!11128) List!37000)

(assert (=> d!960937 (= (list!13344 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404))) (list!13348 (c!576278 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404)))))))

(declare-fun bs!555088 () Bool)

(assert (= bs!555088 d!960937))

(declare-fun m!3750997 () Bool)

(assert (=> bs!555088 m!3750997))

(assert (=> d!960267 d!960937))

(declare-fun d!960939 () Bool)

(declare-fun lt!1150176 () Bool)

(assert (=> d!960939 (= lt!1150176 (isEmpty!21125 (list!13348 (c!576278 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404))))))))

(assert (=> d!960939 (= lt!1150176 (= (size!27918 (c!576278 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404)))) 0))))

(assert (=> d!960939 (= (isEmpty!21126 (c!576278 (_1!21371 (lex!2291 thiss!18206 rules!2135 lt!1149404)))) lt!1150176)))

(declare-fun bs!555089 () Bool)

(assert (= bs!555089 d!960939))

(assert (=> bs!555089 m!3750997))

(assert (=> bs!555089 m!3750997))

(declare-fun m!3750999 () Bool)

(assert (=> bs!555089 m!3750999))

(declare-fun m!3751001 () Bool)

(assert (=> bs!555089 m!3751001))

(assert (=> d!960267 d!960939))

(declare-fun d!960941 () Bool)

(assert (=> d!960941 (= (list!13341 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))) (list!13345 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))))))

(declare-fun bs!555090 () Bool)

(assert (= bs!555090 d!960941))

(declare-fun m!3751003 () Bool)

(assert (=> bs!555090 m!3751003))

(assert (=> b!3384211 d!960941))

(declare-fun d!960943 () Bool)

(assert (=> d!960943 (= (list!13344 (_1!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494)))))) (list!13348 (c!576278 (_1!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))))))))))

(declare-fun bs!555091 () Bool)

(assert (= bs!555091 d!960943))

(declare-fun m!3751005 () Bool)

(assert (=> bs!555091 m!3751005))

(assert (=> d!960391 d!960943))

(declare-fun b!3385421 () Bool)

(declare-fun e!2101588 () Bool)

(declare-fun e!2101586 () Bool)

(assert (=> b!3385421 (= e!2101588 e!2101586)))

(declare-fun res!1369773 () Bool)

(declare-fun lt!1150177 () tuple2!36474)

(assert (=> b!3385421 (= res!1369773 (< (size!27911 (_2!21371 lt!1150177)) (size!27911 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))))))))

(assert (=> b!3385421 (=> (not res!1369773) (not e!2101586))))

(declare-fun b!3385422 () Bool)

(declare-fun e!2101587 () Bool)

(assert (=> b!3385422 (= e!2101587 (= (list!13341 (_2!21371 lt!1150177)) (_2!21372 (lexList!1407 thiss!18206 rules!2135 (list!13341 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))))))))))

(declare-fun b!3385423 () Bool)

(assert (=> b!3385423 (= e!2101588 (= (_2!21371 lt!1150177) (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494)))))))

(declare-fun b!3385425 () Bool)

(assert (=> b!3385425 (= e!2101586 (not (isEmpty!21122 (_1!21371 lt!1150177))))))

(declare-fun b!3385424 () Bool)

(declare-fun res!1369771 () Bool)

(assert (=> b!3385424 (=> (not res!1369771) (not e!2101587))))

(assert (=> b!3385424 (= res!1369771 (= (list!13344 (_1!21371 lt!1150177)) (_1!21372 (lexList!1407 thiss!18206 rules!2135 (list!13341 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))))))))))

(declare-fun d!960945 () Bool)

(assert (=> d!960945 e!2101587))

(declare-fun res!1369772 () Bool)

(assert (=> d!960945 (=> (not res!1369772) (not e!2101587))))

(assert (=> d!960945 (= res!1369772 e!2101588)))

(declare-fun c!576637 () Bool)

(assert (=> d!960945 (= c!576637 (> (size!27912 (_1!21371 lt!1150177)) 0))))

(assert (=> d!960945 (= lt!1150177 (lexTailRecV2!1017 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))) (BalanceConc!21869 Empty!11127) (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))) (BalanceConc!21871 Empty!11128)))))

(assert (=> d!960945 (= (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494)))) lt!1150177)))

(assert (= (and d!960945 c!576637) b!3385421))

(assert (= (and d!960945 (not c!576637)) b!3385423))

(assert (= (and b!3385421 res!1369773) b!3385425))

(assert (= (and d!960945 res!1369772) b!3385424))

(assert (= (and b!3385424 res!1369771) b!3385422))

(declare-fun m!3751047 () Bool)

(assert (=> d!960945 m!3751047))

(assert (=> d!960945 m!3749453))

(assert (=> d!960945 m!3749453))

(declare-fun m!3751053 () Bool)

(assert (=> d!960945 m!3751053))

(declare-fun m!3751055 () Bool)

(assert (=> b!3385421 m!3751055))

(assert (=> b!3385421 m!3749453))

(declare-fun m!3751057 () Bool)

(assert (=> b!3385421 m!3751057))

(declare-fun m!3751059 () Bool)

(assert (=> b!3385425 m!3751059))

(declare-fun m!3751061 () Bool)

(assert (=> b!3385422 m!3751061))

(assert (=> b!3385422 m!3749453))

(declare-fun m!3751063 () Bool)

(assert (=> b!3385422 m!3751063))

(assert (=> b!3385422 m!3751063))

(declare-fun m!3751065 () Bool)

(assert (=> b!3385422 m!3751065))

(declare-fun m!3751067 () Bool)

(assert (=> b!3385424 m!3751067))

(assert (=> b!3385424 m!3749453))

(assert (=> b!3385424 m!3751063))

(assert (=> b!3385424 m!3751063))

(assert (=> b!3385424 m!3751065))

(assert (=> d!960391 d!960945))

(declare-fun d!960949 () Bool)

(declare-fun lt!1150179 () BalanceConc!21868)

(assert (=> d!960949 (= (list!13341 lt!1150179) (printList!1513 thiss!18206 (list!13344 (singletonSeq!2472 (h!42296 tokens!494)))))))

(assert (=> d!960949 (= lt!1150179 (printTailRec!1460 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494)) 0 (BalanceConc!21869 Empty!11127)))))

(assert (=> d!960949 (= (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))) lt!1150179)))

(declare-fun bs!555092 () Bool)

(assert (= bs!555092 d!960949))

(declare-fun m!3751069 () Bool)

(assert (=> bs!555092 m!3751069))

(assert (=> bs!555092 m!3748875))

(assert (=> bs!555092 m!3749459))

(assert (=> bs!555092 m!3749459))

(declare-fun m!3751073 () Bool)

(assert (=> bs!555092 m!3751073))

(assert (=> bs!555092 m!3748875))

(declare-fun m!3751075 () Bool)

(assert (=> bs!555092 m!3751075))

(assert (=> d!960391 d!960949))

(declare-fun d!960953 () Bool)

(assert (=> d!960953 (= (list!13344 (singletonSeq!2472 (h!42296 tokens!494))) (list!13348 (c!576278 (singletonSeq!2472 (h!42296 tokens!494)))))))

(declare-fun bs!555094 () Bool)

(assert (= bs!555094 d!960953))

(declare-fun m!3751079 () Bool)

(assert (=> bs!555094 m!3751079))

(assert (=> d!960391 d!960953))

(assert (=> d!960391 d!960321))

(declare-fun d!960957 () Bool)

(declare-fun lt!1150180 () Int)

(assert (=> d!960957 (= lt!1150180 (size!27917 (list!13344 (_1!21371 lt!1149561))))))

(assert (=> d!960957 (= lt!1150180 (size!27918 (c!576278 (_1!21371 lt!1149561))))))

(assert (=> d!960957 (= (size!27912 (_1!21371 lt!1149561)) lt!1150180)))

(declare-fun bs!555095 () Bool)

(assert (= bs!555095 d!960957))

(declare-fun m!3751081 () Bool)

(assert (=> bs!555095 m!3751081))

(assert (=> bs!555095 m!3751081))

(declare-fun m!3751083 () Bool)

(assert (=> bs!555095 m!3751083))

(declare-fun m!3751085 () Bool)

(assert (=> bs!555095 m!3751085))

(assert (=> d!960391 d!960957))

(assert (=> d!960391 d!960483))

(declare-fun d!960959 () Bool)

(declare-fun lt!1150181 () Bool)

(assert (=> d!960959 (= lt!1150181 (select (content!5086 (t!263604 rules!2135)) (rule!7930 (h!42296 tokens!494))))))

(declare-fun e!2101592 () Bool)

(assert (=> d!960959 (= lt!1150181 e!2101592)))

(declare-fun res!1369775 () Bool)

(assert (=> d!960959 (=> (not res!1369775) (not e!2101592))))

(assert (=> d!960959 (= res!1369775 ((_ is Cons!36877) (t!263604 rules!2135)))))

(assert (=> d!960959 (= (contains!6751 (t!263604 rules!2135) (rule!7930 (h!42296 tokens!494))) lt!1150181)))

(declare-fun b!3385430 () Bool)

(declare-fun e!2101591 () Bool)

(assert (=> b!3385430 (= e!2101592 e!2101591)))

(declare-fun res!1369774 () Bool)

(assert (=> b!3385430 (=> res!1369774 e!2101591)))

(assert (=> b!3385430 (= res!1369774 (= (h!42297 (t!263604 rules!2135)) (rule!7930 (h!42296 tokens!494))))))

(declare-fun b!3385431 () Bool)

(assert (=> b!3385431 (= e!2101591 (contains!6751 (t!263604 (t!263604 rules!2135)) (rule!7930 (h!42296 tokens!494))))))

(assert (= (and d!960959 res!1369775) b!3385430))

(assert (= (and b!3385430 (not res!1369774)) b!3385431))

(declare-fun m!3751095 () Bool)

(assert (=> d!960959 m!3751095))

(declare-fun m!3751097 () Bool)

(assert (=> d!960959 m!3751097))

(declare-fun m!3751099 () Bool)

(assert (=> b!3385431 m!3751099))

(assert (=> b!3384218 d!960959))

(declare-fun d!960963 () Bool)

(declare-fun lt!1150182 () Bool)

(assert (=> d!960963 (= lt!1150182 (select (content!5087 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) lt!1149396))))

(declare-fun e!2101593 () Bool)

(assert (=> d!960963 (= lt!1150182 e!2101593)))

(declare-fun res!1369776 () Bool)

(assert (=> d!960963 (=> (not res!1369776) (not e!2101593))))

(assert (=> d!960963 (= res!1369776 ((_ is Cons!36875) (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))

(assert (=> d!960963 (= (contains!6750 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))) lt!1149396) lt!1150182)))

(declare-fun b!3385432 () Bool)

(declare-fun e!2101594 () Bool)

(assert (=> b!3385432 (= e!2101593 e!2101594)))

(declare-fun res!1369777 () Bool)

(assert (=> b!3385432 (=> res!1369777 e!2101594)))

(assert (=> b!3385432 (= res!1369777 (= (h!42295 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) lt!1149396))))

(declare-fun b!3385433 () Bool)

(assert (=> b!3385433 (= e!2101594 (contains!6750 (t!263602 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) lt!1149396))))

(assert (= (and d!960963 res!1369776) b!3385432))

(assert (= (and b!3385432 (not res!1369777)) b!3385433))

(declare-fun m!3751105 () Bool)

(assert (=> d!960963 m!3751105))

(declare-fun m!3751109 () Bool)

(assert (=> d!960963 m!3751109))

(declare-fun m!3751111 () Bool)

(assert (=> b!3385433 m!3751111))

(assert (=> b!3384224 d!960963))

(declare-fun d!960969 () Bool)

(assert (=> d!960969 (= (isEmpty!21121 (tail!5361 lt!1149402)) ((_ is Nil!36875) (tail!5361 lt!1149402)))))

(assert (=> b!3384581 d!960969))

(declare-fun d!960971 () Bool)

(assert (=> d!960971 (= (tail!5361 lt!1149402) (t!263602 lt!1149402))))

(assert (=> b!3384581 d!960971))

(declare-fun d!960975 () Bool)

(declare-fun lt!1150184 () Int)

(assert (=> d!960975 (= lt!1150184 (size!27917 (list!13344 lt!1149395)))))

(assert (=> d!960975 (= lt!1150184 (size!27918 (c!576278 lt!1149395)))))

(assert (=> d!960975 (= (size!27912 lt!1149395) lt!1150184)))

(declare-fun bs!555098 () Bool)

(assert (= bs!555098 d!960975))

(assert (=> bs!555098 m!3749209))

(assert (=> bs!555098 m!3749209))

(declare-fun m!3751121 () Bool)

(assert (=> bs!555098 m!3751121))

(declare-fun m!3751123 () Bool)

(assert (=> bs!555098 m!3751123))

(assert (=> d!960319 d!960975))

(declare-fun d!960977 () Bool)

(assert (=> d!960977 (= (list!13341 lt!1149504) (list!13345 (c!576277 lt!1149504)))))

(declare-fun bs!555099 () Bool)

(assert (= bs!555099 d!960977))

(declare-fun m!3751125 () Bool)

(assert (=> bs!555099 m!3751125))

(assert (=> d!960319 d!960977))

(declare-fun d!960979 () Bool)

(assert (=> d!960979 (= (dropList!1167 lt!1149395 0) (drop!1965 (list!13348 (c!576278 lt!1149395)) 0))))

(declare-fun bs!555100 () Bool)

(assert (= bs!555100 d!960979))

(declare-fun m!3751137 () Bool)

(assert (=> bs!555100 m!3751137))

(assert (=> bs!555100 m!3751137))

(declare-fun m!3751139 () Bool)

(assert (=> bs!555100 m!3751139))

(assert (=> d!960319 d!960979))

(declare-fun d!960983 () Bool)

(declare-fun lt!1150200 () List!36999)

(assert (=> d!960983 (= lt!1150200 (++!9017 (list!13341 (BalanceConc!21869 Empty!11127)) (printList!1513 thiss!18206 (dropList!1167 lt!1149395 0))))))

(declare-fun e!2101621 () List!36999)

(assert (=> d!960983 (= lt!1150200 e!2101621)))

(declare-fun c!576656 () Bool)

(assert (=> d!960983 (= c!576656 ((_ is Cons!36876) (dropList!1167 lt!1149395 0)))))

(assert (=> d!960983 (= (printListTailRec!650 thiss!18206 (dropList!1167 lt!1149395 0) (list!13341 (BalanceConc!21869 Empty!11127))) lt!1150200)))

(declare-fun b!3385481 () Bool)

(assert (=> b!3385481 (= e!2101621 (printListTailRec!650 thiss!18206 (t!263603 (dropList!1167 lt!1149395 0)) (++!9017 (list!13341 (BalanceConc!21869 Empty!11127)) (list!13341 (charsOf!3390 (h!42296 (dropList!1167 lt!1149395 0)))))))))

(declare-fun lt!1150198 () List!36999)

(assert (=> b!3385481 (= lt!1150198 (list!13341 (charsOf!3390 (h!42296 (dropList!1167 lt!1149395 0)))))))

(declare-fun lt!1150202 () List!36999)

(assert (=> b!3385481 (= lt!1150202 (printList!1513 thiss!18206 (t!263603 (dropList!1167 lt!1149395 0))))))

(declare-fun lt!1150201 () Unit!51991)

(assert (=> b!3385481 (= lt!1150201 (lemmaConcatAssociativity!1882 (list!13341 (BalanceConc!21869 Empty!11127)) lt!1150198 lt!1150202))))

(assert (=> b!3385481 (= (++!9017 (++!9017 (list!13341 (BalanceConc!21869 Empty!11127)) lt!1150198) lt!1150202) (++!9017 (list!13341 (BalanceConc!21869 Empty!11127)) (++!9017 lt!1150198 lt!1150202)))))

(declare-fun lt!1150199 () Unit!51991)

(assert (=> b!3385481 (= lt!1150199 lt!1150201)))

(declare-fun b!3385482 () Bool)

(assert (=> b!3385482 (= e!2101621 (list!13341 (BalanceConc!21869 Empty!11127)))))

(assert (= (and d!960983 c!576656) b!3385481))

(assert (= (and d!960983 (not c!576656)) b!3385482))

(assert (=> d!960983 m!3749215))

(declare-fun m!3751169 () Bool)

(assert (=> d!960983 m!3751169))

(assert (=> d!960983 m!3749213))

(assert (=> d!960983 m!3751169))

(declare-fun m!3751171 () Bool)

(assert (=> d!960983 m!3751171))

(assert (=> b!3385481 m!3749213))

(declare-fun m!3751173 () Bool)

(assert (=> b!3385481 m!3751173))

(declare-fun m!3751175 () Bool)

(assert (=> b!3385481 m!3751175))

(assert (=> b!3385481 m!3751175))

(declare-fun m!3751177 () Bool)

(assert (=> b!3385481 m!3751177))

(assert (=> b!3385481 m!3749213))

(declare-fun m!3751179 () Bool)

(assert (=> b!3385481 m!3751179))

(declare-fun m!3751181 () Bool)

(assert (=> b!3385481 m!3751181))

(declare-fun m!3751183 () Bool)

(assert (=> b!3385481 m!3751183))

(declare-fun m!3751185 () Bool)

(assert (=> b!3385481 m!3751185))

(declare-fun m!3751187 () Bool)

(assert (=> b!3385481 m!3751187))

(assert (=> b!3385481 m!3751173))

(assert (=> b!3385481 m!3749213))

(declare-fun m!3751189 () Bool)

(assert (=> b!3385481 m!3751189))

(declare-fun m!3751191 () Bool)

(assert (=> b!3385481 m!3751191))

(assert (=> b!3385481 m!3751179))

(assert (=> b!3385481 m!3749213))

(assert (=> b!3385481 m!3751183))

(assert (=> b!3385481 m!3751187))

(assert (=> d!960319 d!960983))

(declare-fun d!960999 () Bool)

(assert (=> d!960999 (= (list!13341 (BalanceConc!21869 Empty!11127)) (list!13345 (c!576277 (BalanceConc!21869 Empty!11127))))))

(declare-fun bs!555105 () Bool)

(assert (= bs!555105 d!960999))

(declare-fun m!3751197 () Bool)

(assert (=> bs!555105 m!3751197))

(assert (=> d!960319 d!960999))

(declare-fun d!961003 () Bool)

(assert (=> d!961003 (= (list!13344 (singletonSeq!2472 separatorToken!241)) (list!13348 (c!576278 (singletonSeq!2472 separatorToken!241))))))

(declare-fun bs!555106 () Bool)

(assert (= bs!555106 d!961003))

(declare-fun m!3751199 () Bool)

(assert (=> bs!555106 m!3751199))

(assert (=> d!960347 d!961003))

(declare-fun d!961005 () Bool)

(assert (=> d!961005 (= (list!13344 (_1!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241))))) (list!13348 (c!576278 (_1!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)))))))))

(declare-fun bs!555108 () Bool)

(assert (= bs!555108 d!961005))

(declare-fun m!3751201 () Bool)

(assert (=> bs!555108 m!3751201))

(assert (=> d!960347 d!961005))

(declare-fun d!961007 () Bool)

(declare-fun e!2101624 () Bool)

(assert (=> d!961007 e!2101624))

(declare-fun res!1369795 () Bool)

(assert (=> d!961007 (=> (not res!1369795) (not e!2101624))))

(declare-fun lt!1150203 () BalanceConc!21870)

(assert (=> d!961007 (= res!1369795 (= (list!13344 lt!1150203) (Cons!36876 separatorToken!241 Nil!36876)))))

(assert (=> d!961007 (= lt!1150203 (singleton!1082 separatorToken!241))))

(assert (=> d!961007 (= (singletonSeq!2472 separatorToken!241) lt!1150203)))

(declare-fun b!3385485 () Bool)

(assert (=> b!3385485 (= e!2101624 (isBalanced!3357 (c!576278 lt!1150203)))))

(assert (= (and d!961007 res!1369795) b!3385485))

(declare-fun m!3751203 () Bool)

(assert (=> d!961007 m!3751203))

(declare-fun m!3751205 () Bool)

(assert (=> d!961007 m!3751205))

(declare-fun m!3751207 () Bool)

(assert (=> b!3385485 m!3751207))

(assert (=> d!960347 d!961007))

(declare-fun d!961009 () Bool)

(declare-fun lt!1150204 () Int)

(assert (=> d!961009 (= lt!1150204 (size!27917 (list!13344 (_1!21371 lt!1149540))))))

(assert (=> d!961009 (= lt!1150204 (size!27918 (c!576278 (_1!21371 lt!1149540))))))

(assert (=> d!961009 (= (size!27912 (_1!21371 lt!1149540)) lt!1150204)))

(declare-fun bs!555111 () Bool)

(assert (= bs!555111 d!961009))

(declare-fun m!3751211 () Bool)

(assert (=> bs!555111 m!3751211))

(assert (=> bs!555111 m!3751211))

(declare-fun m!3751213 () Bool)

(assert (=> bs!555111 m!3751213))

(declare-fun m!3751215 () Bool)

(assert (=> bs!555111 m!3751215))

(assert (=> d!960347 d!961009))

(declare-fun d!961015 () Bool)

(declare-fun lt!1150205 () BalanceConc!21868)

(assert (=> d!961015 (= (list!13341 lt!1150205) (printList!1513 thiss!18206 (list!13344 (singletonSeq!2472 separatorToken!241))))))

(assert (=> d!961015 (= lt!1150205 (printTailRec!1460 thiss!18206 (singletonSeq!2472 separatorToken!241) 0 (BalanceConc!21869 Empty!11127)))))

(assert (=> d!961015 (= (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)) lt!1150205)))

(declare-fun bs!555112 () Bool)

(assert (= bs!555112 d!961015))

(declare-fun m!3751217 () Bool)

(assert (=> bs!555112 m!3751217))

(assert (=> bs!555112 m!3749377))

(assert (=> bs!555112 m!3749379))

(assert (=> bs!555112 m!3749379))

(declare-fun m!3751219 () Bool)

(assert (=> bs!555112 m!3751219))

(assert (=> bs!555112 m!3749377))

(declare-fun m!3751221 () Bool)

(assert (=> bs!555112 m!3751221))

(assert (=> d!960347 d!961015))

(assert (=> d!960347 d!960483))

(declare-fun b!3385486 () Bool)

(declare-fun e!2101627 () Bool)

(declare-fun e!2101625 () Bool)

(assert (=> b!3385486 (= e!2101627 e!2101625)))

(declare-fun res!1369798 () Bool)

(declare-fun lt!1150206 () tuple2!36474)

(assert (=> b!3385486 (= res!1369798 (< (size!27911 (_2!21371 lt!1150206)) (size!27911 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)))))))

(assert (=> b!3385486 (=> (not res!1369798) (not e!2101625))))

(declare-fun e!2101626 () Bool)

(declare-fun b!3385487 () Bool)

(assert (=> b!3385487 (= e!2101626 (= (list!13341 (_2!21371 lt!1150206)) (_2!21372 (lexList!1407 thiss!18206 rules!2135 (list!13341 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)))))))))

(declare-fun b!3385488 () Bool)

(assert (=> b!3385488 (= e!2101627 (= (_2!21371 lt!1150206) (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241))))))

(declare-fun b!3385490 () Bool)

(assert (=> b!3385490 (= e!2101625 (not (isEmpty!21122 (_1!21371 lt!1150206))))))

(declare-fun b!3385489 () Bool)

(declare-fun res!1369796 () Bool)

(assert (=> b!3385489 (=> (not res!1369796) (not e!2101626))))

(assert (=> b!3385489 (= res!1369796 (= (list!13344 (_1!21371 lt!1150206)) (_1!21372 (lexList!1407 thiss!18206 rules!2135 (list!13341 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)))))))))

(declare-fun d!961017 () Bool)

(assert (=> d!961017 e!2101626))

(declare-fun res!1369797 () Bool)

(assert (=> d!961017 (=> (not res!1369797) (not e!2101626))))

(assert (=> d!961017 (= res!1369797 e!2101627)))

(declare-fun c!576657 () Bool)

(assert (=> d!961017 (= c!576657 (> (size!27912 (_1!21371 lt!1150206)) 0))))

(assert (=> d!961017 (= lt!1150206 (lexTailRecV2!1017 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)) (BalanceConc!21869 Empty!11127) (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)) (BalanceConc!21871 Empty!11128)))))

(assert (=> d!961017 (= (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241))) lt!1150206)))

(assert (= (and d!961017 c!576657) b!3385486))

(assert (= (and d!961017 (not c!576657)) b!3385488))

(assert (= (and b!3385486 res!1369798) b!3385490))

(assert (= (and d!961017 res!1369797) b!3385489))

(assert (= (and b!3385489 res!1369796) b!3385487))

(declare-fun m!3751223 () Bool)

(assert (=> d!961017 m!3751223))

(assert (=> d!961017 m!3749371))

(assert (=> d!961017 m!3749371))

(declare-fun m!3751225 () Bool)

(assert (=> d!961017 m!3751225))

(declare-fun m!3751227 () Bool)

(assert (=> b!3385486 m!3751227))

(assert (=> b!3385486 m!3749371))

(declare-fun m!3751229 () Bool)

(assert (=> b!3385486 m!3751229))

(declare-fun m!3751231 () Bool)

(assert (=> b!3385490 m!3751231))

(declare-fun m!3751233 () Bool)

(assert (=> b!3385487 m!3751233))

(assert (=> b!3385487 m!3749371))

(declare-fun m!3751235 () Bool)

(assert (=> b!3385487 m!3751235))

(assert (=> b!3385487 m!3751235))

(declare-fun m!3751237 () Bool)

(assert (=> b!3385487 m!3751237))

(declare-fun m!3751239 () Bool)

(assert (=> b!3385489 m!3751239))

(assert (=> b!3385489 m!3749371))

(assert (=> b!3385489 m!3751235))

(assert (=> b!3385489 m!3751235))

(assert (=> b!3385489 m!3751237))

(assert (=> d!960347 d!961017))

(declare-fun d!961019 () Bool)

(declare-fun e!2101629 () Bool)

(assert (=> d!961019 e!2101629))

(declare-fun res!1369799 () Bool)

(assert (=> d!961019 (=> (not res!1369799) (not e!2101629))))

(declare-fun lt!1150207 () List!36999)

(assert (=> d!961019 (= res!1369799 (= (content!5087 lt!1150207) ((_ map or) (content!5087 (ite c!576349 call!244781 call!244780)) (content!5087 (ite c!576349 call!244780 call!244781)))))))

(declare-fun e!2101628 () List!36999)

(assert (=> d!961019 (= lt!1150207 e!2101628)))

(declare-fun c!576658 () Bool)

(assert (=> d!961019 (= c!576658 ((_ is Nil!36875) (ite c!576349 call!244781 call!244780)))))

(assert (=> d!961019 (= (++!9017 (ite c!576349 call!244781 call!244780) (ite c!576349 call!244780 call!244781)) lt!1150207)))

(declare-fun b!3385492 () Bool)

(assert (=> b!3385492 (= e!2101628 (Cons!36875 (h!42295 (ite c!576349 call!244781 call!244780)) (++!9017 (t!263602 (ite c!576349 call!244781 call!244780)) (ite c!576349 call!244780 call!244781))))))

(declare-fun b!3385491 () Bool)

(assert (=> b!3385491 (= e!2101628 (ite c!576349 call!244780 call!244781))))

(declare-fun b!3385493 () Bool)

(declare-fun res!1369800 () Bool)

(assert (=> b!3385493 (=> (not res!1369800) (not e!2101629))))

(assert (=> b!3385493 (= res!1369800 (= (size!27909 lt!1150207) (+ (size!27909 (ite c!576349 call!244781 call!244780)) (size!27909 (ite c!576349 call!244780 call!244781)))))))

(declare-fun b!3385494 () Bool)

(assert (=> b!3385494 (= e!2101629 (or (not (= (ite c!576349 call!244780 call!244781) Nil!36875)) (= lt!1150207 (ite c!576349 call!244781 call!244780))))))

(assert (= (and d!961019 c!576658) b!3385491))

(assert (= (and d!961019 (not c!576658)) b!3385492))

(assert (= (and d!961019 res!1369799) b!3385493))

(assert (= (and b!3385493 res!1369800) b!3385494))

(declare-fun m!3751241 () Bool)

(assert (=> d!961019 m!3751241))

(declare-fun m!3751243 () Bool)

(assert (=> d!961019 m!3751243))

(declare-fun m!3751245 () Bool)

(assert (=> d!961019 m!3751245))

(declare-fun m!3751247 () Bool)

(assert (=> b!3385492 m!3751247))

(declare-fun m!3751249 () Bool)

(assert (=> b!3385493 m!3751249))

(declare-fun m!3751251 () Bool)

(assert (=> b!3385493 m!3751251))

(declare-fun m!3751253 () Bool)

(assert (=> b!3385493 m!3751253))

(assert (=> bm!244777 d!961019))

(declare-fun d!961021 () Bool)

(assert (=> d!961021 (= (isEmpty!21121 (tail!5361 lt!1149400)) ((_ is Nil!36875) (tail!5361 lt!1149400)))))

(assert (=> b!3384313 d!961021))

(declare-fun d!961023 () Bool)

(assert (=> d!961023 (= (tail!5361 lt!1149400) (t!263602 lt!1149400))))

(assert (=> b!3384313 d!961023))

(declare-fun d!961025 () Bool)

(assert (=> d!961025 (= (inv!49949 (tag!5954 (h!42297 (t!263604 rules!2135)))) (= (mod (str.len (value!173675 (tag!5954 (h!42297 (t!263604 rules!2135))))) 2) 0))))

(assert (=> b!3384683 d!961025))

(declare-fun d!961027 () Bool)

(declare-fun res!1369801 () Bool)

(declare-fun e!2101630 () Bool)

(assert (=> d!961027 (=> (not res!1369801) (not e!2101630))))

(assert (=> d!961027 (= res!1369801 (semiInverseModEq!2245 (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135))))))))

(assert (=> d!961027 (= (inv!49953 (transformation!5376 (h!42297 (t!263604 rules!2135)))) e!2101630)))

(declare-fun b!3385495 () Bool)

(assert (=> b!3385495 (= e!2101630 (equivClasses!2144 (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135))))))))

(assert (= (and d!961027 res!1369801) b!3385495))

(declare-fun m!3751255 () Bool)

(assert (=> d!961027 m!3751255))

(declare-fun m!3751257 () Bool)

(assert (=> b!3385495 m!3751257))

(assert (=> b!3384683 d!961027))

(declare-fun d!961029 () Bool)

(declare-fun charsToInt!0 (List!36998) (_ BitVec 32))

(assert (=> d!961029 (= (inv!16 (value!173676 separatorToken!241)) (= (charsToInt!0 (text!39689 (value!173676 separatorToken!241))) (value!173667 (value!173676 separatorToken!241))))))

(declare-fun bs!555113 () Bool)

(assert (= bs!555113 d!961029))

(declare-fun m!3751259 () Bool)

(assert (=> bs!555113 m!3751259))

(assert (=> b!3384206 d!961029))

(declare-fun d!961031 () Bool)

(declare-fun c!576661 () Bool)

(assert (=> d!961031 (= c!576661 ((_ is Nil!36875) (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))))))

(declare-fun e!2101633 () (InoxSet C!20456))

(assert (=> d!961031 (= (content!5087 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))) e!2101633)))

(declare-fun b!3385500 () Bool)

(assert (=> b!3385500 (= e!2101633 ((as const (Array C!20456 Bool)) false))))

(declare-fun b!3385501 () Bool)

(assert (=> b!3385501 (= e!2101633 ((_ map or) (store ((as const (Array C!20456 Bool)) false) (h!42295 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))) true) (content!5087 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))))))))

(assert (= (and d!961031 c!576661) b!3385500))

(assert (= (and d!961031 (not c!576661)) b!3385501))

(declare-fun m!3751261 () Bool)

(assert (=> b!3385501 m!3751261))

(declare-fun m!3751263 () Bool)

(assert (=> b!3385501 m!3751263))

(assert (=> d!960427 d!961031))

(declare-fun d!961033 () Bool)

(declare-fun c!576664 () Bool)

(assert (=> d!961033 (= c!576664 ((_ is Nil!36877) rules!2135))))

(declare-fun e!2101636 () (InoxSet Rule!10552))

(assert (=> d!961033 (= (content!5086 rules!2135) e!2101636)))

(declare-fun b!3385506 () Bool)

(assert (=> b!3385506 (= e!2101636 ((as const (Array Rule!10552 Bool)) false))))

(declare-fun b!3385507 () Bool)

(assert (=> b!3385507 (= e!2101636 ((_ map or) (store ((as const (Array Rule!10552 Bool)) false) (h!42297 rules!2135) true) (content!5086 (t!263604 rules!2135))))))

(assert (= (and d!961033 c!576664) b!3385506))

(assert (= (and d!961033 (not c!576664)) b!3385507))

(declare-fun m!3751265 () Bool)

(assert (=> b!3385507 m!3751265))

(assert (=> b!3385507 m!3751095))

(assert (=> d!960379 d!961033))

(declare-fun d!961035 () Bool)

(declare-fun res!1369802 () Bool)

(declare-fun e!2101637 () Bool)

(assert (=> d!961035 (=> (not res!1369802) (not e!2101637))))

(assert (=> d!961035 (= res!1369802 (rulesValid!2005 thiss!18206 (t!263604 rules!2135)))))

(assert (=> d!961035 (= (rulesInvariant!4362 thiss!18206 (t!263604 rules!2135)) e!2101637)))

(declare-fun b!3385508 () Bool)

(assert (=> b!3385508 (= e!2101637 (noDuplicateTag!2001 thiss!18206 (t!263604 rules!2135) Nil!36879))))

(assert (= (and d!961035 res!1369802) b!3385508))

(declare-fun m!3751267 () Bool)

(assert (=> d!961035 m!3751267))

(declare-fun m!3751269 () Bool)

(assert (=> b!3385508 m!3751269))

(assert (=> b!3384349 d!961035))

(declare-fun d!961037 () Bool)

(assert (=> d!961037 (rulesInvariant!4362 thiss!18206 (t!263604 rules!2135))))

(declare-fun lt!1150210 () Unit!51991)

(declare-fun choose!19606 (LexerInterface!4965 Rule!10552 List!37001) Unit!51991)

(assert (=> d!961037 (= lt!1150210 (choose!19606 thiss!18206 (h!42297 rules!2135) (t!263604 rules!2135)))))

(assert (=> d!961037 (rulesInvariant!4362 thiss!18206 (Cons!36877 (h!42297 rules!2135) (t!263604 rules!2135)))))

(assert (=> d!961037 (= (lemmaInvariantOnRulesThenOnTail!402 thiss!18206 (h!42297 rules!2135) (t!263604 rules!2135)) lt!1150210)))

(declare-fun bs!555114 () Bool)

(assert (= bs!555114 d!961037))

(assert (=> bs!555114 m!3749537))

(declare-fun m!3751271 () Bool)

(assert (=> bs!555114 m!3751271))

(declare-fun m!3751273 () Bool)

(assert (=> bs!555114 m!3751273))

(assert (=> b!3384349 d!961037))

(declare-fun b!3385509 () Bool)

(declare-fun e!2101638 () Option!7401)

(assert (=> b!3385509 (= e!2101638 None!7400)))

(declare-fun b!3385510 () Bool)

(declare-fun e!2101641 () Option!7401)

(assert (=> b!3385510 (= e!2101641 (Some!7400 (h!42297 (t!263604 rules!2135))))))

(declare-fun b!3385511 () Bool)

(declare-fun e!2101640 () Bool)

(declare-fun lt!1150213 () Option!7401)

(assert (=> b!3385511 (= e!2101640 (= (tag!5954 (get!11774 lt!1150213)) (tag!5954 (rule!7930 separatorToken!241))))))

(declare-fun b!3385512 () Bool)

(declare-fun e!2101639 () Bool)

(assert (=> b!3385512 (= e!2101639 e!2101640)))

(declare-fun res!1369804 () Bool)

(assert (=> b!3385512 (=> (not res!1369804) (not e!2101640))))

(assert (=> b!3385512 (= res!1369804 (contains!6751 (t!263604 rules!2135) (get!11774 lt!1150213)))))

(declare-fun d!961039 () Bool)

(assert (=> d!961039 e!2101639))

(declare-fun res!1369803 () Bool)

(assert (=> d!961039 (=> res!1369803 e!2101639)))

(assert (=> d!961039 (= res!1369803 (isEmpty!21132 lt!1150213))))

(assert (=> d!961039 (= lt!1150213 e!2101641)))

(declare-fun c!576665 () Bool)

(assert (=> d!961039 (= c!576665 (and ((_ is Cons!36877) (t!263604 rules!2135)) (= (tag!5954 (h!42297 (t!263604 rules!2135))) (tag!5954 (rule!7930 separatorToken!241)))))))

(assert (=> d!961039 (rulesInvariant!4362 thiss!18206 (t!263604 rules!2135))))

(assert (=> d!961039 (= (getRuleFromTag!1031 thiss!18206 (t!263604 rules!2135) (tag!5954 (rule!7930 separatorToken!241))) lt!1150213)))

(declare-fun b!3385513 () Bool)

(declare-fun lt!1150211 () Unit!51991)

(declare-fun lt!1150212 () Unit!51991)

(assert (=> b!3385513 (= lt!1150211 lt!1150212)))

(assert (=> b!3385513 (rulesInvariant!4362 thiss!18206 (t!263604 (t!263604 rules!2135)))))

(assert (=> b!3385513 (= lt!1150212 (lemmaInvariantOnRulesThenOnTail!402 thiss!18206 (h!42297 (t!263604 rules!2135)) (t!263604 (t!263604 rules!2135))))))

(assert (=> b!3385513 (= e!2101638 (getRuleFromTag!1031 thiss!18206 (t!263604 (t!263604 rules!2135)) (tag!5954 (rule!7930 separatorToken!241))))))

(declare-fun b!3385514 () Bool)

(assert (=> b!3385514 (= e!2101641 e!2101638)))

(declare-fun c!576666 () Bool)

(assert (=> b!3385514 (= c!576666 (and ((_ is Cons!36877) (t!263604 rules!2135)) (not (= (tag!5954 (h!42297 (t!263604 rules!2135))) (tag!5954 (rule!7930 separatorToken!241))))))))

(assert (= (and d!961039 c!576665) b!3385510))

(assert (= (and d!961039 (not c!576665)) b!3385514))

(assert (= (and b!3385514 c!576666) b!3385513))

(assert (= (and b!3385514 (not c!576666)) b!3385509))

(assert (= (and d!961039 (not res!1369803)) b!3385512))

(assert (= (and b!3385512 res!1369804) b!3385511))

(declare-fun m!3751275 () Bool)

(assert (=> b!3385511 m!3751275))

(assert (=> b!3385512 m!3751275))

(assert (=> b!3385512 m!3751275))

(declare-fun m!3751277 () Bool)

(assert (=> b!3385512 m!3751277))

(declare-fun m!3751279 () Bool)

(assert (=> d!961039 m!3751279))

(assert (=> d!961039 m!3749537))

(declare-fun m!3751281 () Bool)

(assert (=> b!3385513 m!3751281))

(declare-fun m!3751283 () Bool)

(assert (=> b!3385513 m!3751283))

(declare-fun m!3751285 () Bool)

(assert (=> b!3385513 m!3751285))

(assert (=> b!3384349 d!961039))

(declare-fun b!3385523 () Bool)

(declare-fun res!1369815 () Bool)

(declare-fun e!2101644 () Bool)

(assert (=> b!3385523 (=> (not res!1369815) (not e!2101644))))

(declare-fun isBalanced!3359 (Conc!11127) Bool)

(declare-fun ++!9021 (Conc!11127 Conc!11127) Conc!11127)

(assert (=> b!3385523 (= res!1369815 (isBalanced!3359 (++!9021 (c!576277 (BalanceConc!21869 Empty!11127)) (c!576277 (charsOf!3390 (apply!8584 lt!1149395 0))))))))

(declare-fun d!961041 () Bool)

(assert (=> d!961041 e!2101644))

(declare-fun res!1369816 () Bool)

(assert (=> d!961041 (=> (not res!1369816) (not e!2101644))))

(declare-fun appendAssocInst!784 (Conc!11127 Conc!11127) Bool)

(assert (=> d!961041 (= res!1369816 (appendAssocInst!784 (c!576277 (BalanceConc!21869 Empty!11127)) (c!576277 (charsOf!3390 (apply!8584 lt!1149395 0)))))))

(declare-fun lt!1150216 () BalanceConc!21868)

(assert (=> d!961041 (= lt!1150216 (BalanceConc!21869 (++!9021 (c!576277 (BalanceConc!21869 Empty!11127)) (c!576277 (charsOf!3390 (apply!8584 lt!1149395 0))))))))

(assert (=> d!961041 (= (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (apply!8584 lt!1149395 0))) lt!1150216)))

(declare-fun b!3385526 () Bool)

(assert (=> b!3385526 (= e!2101644 (= (list!13341 lt!1150216) (++!9017 (list!13341 (BalanceConc!21869 Empty!11127)) (list!13341 (charsOf!3390 (apply!8584 lt!1149395 0))))))))

(declare-fun b!3385525 () Bool)

(declare-fun res!1369813 () Bool)

(assert (=> b!3385525 (=> (not res!1369813) (not e!2101644))))

(declare-fun height!1658 (Conc!11127) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3385525 (= res!1369813 (>= (height!1658 (++!9021 (c!576277 (BalanceConc!21869 Empty!11127)) (c!576277 (charsOf!3390 (apply!8584 lt!1149395 0))))) (max!0 (height!1658 (c!576277 (BalanceConc!21869 Empty!11127))) (height!1658 (c!576277 (charsOf!3390 (apply!8584 lt!1149395 0)))))))))

(declare-fun b!3385524 () Bool)

(declare-fun res!1369814 () Bool)

(assert (=> b!3385524 (=> (not res!1369814) (not e!2101644))))

(assert (=> b!3385524 (= res!1369814 (<= (height!1658 (++!9021 (c!576277 (BalanceConc!21869 Empty!11127)) (c!576277 (charsOf!3390 (apply!8584 lt!1149395 0))))) (+ (max!0 (height!1658 (c!576277 (BalanceConc!21869 Empty!11127))) (height!1658 (c!576277 (charsOf!3390 (apply!8584 lt!1149395 0))))) 1)))))

(assert (= (and d!961041 res!1369816) b!3385523))

(assert (= (and b!3385523 res!1369815) b!3385524))

(assert (= (and b!3385524 res!1369814) b!3385525))

(assert (= (and b!3385525 res!1369813) b!3385526))

(declare-fun m!3751287 () Bool)

(assert (=> b!3385526 m!3751287))

(assert (=> b!3385526 m!3749213))

(assert (=> b!3385526 m!3749223))

(declare-fun m!3751289 () Bool)

(assert (=> b!3385526 m!3751289))

(assert (=> b!3385526 m!3749213))

(assert (=> b!3385526 m!3751289))

(declare-fun m!3751291 () Bool)

(assert (=> b!3385526 m!3751291))

(declare-fun m!3751293 () Bool)

(assert (=> b!3385524 m!3751293))

(declare-fun m!3751295 () Bool)

(assert (=> b!3385524 m!3751295))

(declare-fun m!3751297 () Bool)

(assert (=> b!3385524 m!3751297))

(declare-fun m!3751299 () Bool)

(assert (=> b!3385524 m!3751299))

(declare-fun m!3751301 () Bool)

(assert (=> b!3385524 m!3751301))

(assert (=> b!3385524 m!3751293))

(assert (=> b!3385524 m!3751295))

(assert (=> b!3385524 m!3751299))

(assert (=> b!3385525 m!3751293))

(assert (=> b!3385525 m!3751295))

(assert (=> b!3385525 m!3751297))

(assert (=> b!3385525 m!3751299))

(assert (=> b!3385525 m!3751301))

(assert (=> b!3385525 m!3751293))

(assert (=> b!3385525 m!3751295))

(assert (=> b!3385525 m!3751299))

(assert (=> b!3385523 m!3751299))

(assert (=> b!3385523 m!3751299))

(declare-fun m!3751303 () Bool)

(assert (=> b!3385523 m!3751303))

(declare-fun m!3751305 () Bool)

(assert (=> d!961041 m!3751305))

(assert (=> d!961041 m!3751299))

(assert (=> b!3384066 d!961041))

(declare-fun d!961043 () Bool)

(declare-fun lt!1150219 () Token!10118)

(assert (=> d!961043 (= lt!1150219 (apply!8585 (list!13344 lt!1149395) 0))))

(declare-fun apply!8586 (Conc!11128 Int) Token!10118)

(assert (=> d!961043 (= lt!1150219 (apply!8586 (c!576278 lt!1149395) 0))))

(declare-fun e!2101647 () Bool)

(assert (=> d!961043 e!2101647))

(declare-fun res!1369819 () Bool)

(assert (=> d!961043 (=> (not res!1369819) (not e!2101647))))

(assert (=> d!961043 (= res!1369819 (<= 0 0))))

(assert (=> d!961043 (= (apply!8584 lt!1149395 0) lt!1150219)))

(declare-fun b!3385529 () Bool)

(assert (=> b!3385529 (= e!2101647 (< 0 (size!27912 lt!1149395)))))

(assert (= (and d!961043 res!1369819) b!3385529))

(assert (=> d!961043 m!3749209))

(assert (=> d!961043 m!3749209))

(declare-fun m!3751307 () Bool)

(assert (=> d!961043 m!3751307))

(declare-fun m!3751309 () Bool)

(assert (=> d!961043 m!3751309))

(assert (=> b!3385529 m!3749219))

(assert (=> b!3384066 d!961043))

(declare-fun d!961045 () Bool)

(assert (=> d!961045 (= (head!7231 (drop!1965 lt!1149502 0)) (h!42296 (drop!1965 lt!1149502 0)))))

(assert (=> b!3384066 d!961045))

(declare-fun d!961047 () Bool)

(assert (=> d!961047 (= (head!7231 (drop!1965 lt!1149502 0)) (apply!8585 lt!1149502 0))))

(declare-fun lt!1150222 () Unit!51991)

(declare-fun choose!19607 (List!37000 Int) Unit!51991)

(assert (=> d!961047 (= lt!1150222 (choose!19607 lt!1149502 0))))

(declare-fun e!2101650 () Bool)

(assert (=> d!961047 e!2101650))

(declare-fun res!1369822 () Bool)

(assert (=> d!961047 (=> (not res!1369822) (not e!2101650))))

(assert (=> d!961047 (= res!1369822 (>= 0 0))))

(assert (=> d!961047 (= (lemmaDropApply!1125 lt!1149502 0) lt!1150222)))

(declare-fun b!3385532 () Bool)

(assert (=> b!3385532 (= e!2101650 (< 0 (size!27917 lt!1149502)))))

(assert (= (and d!961047 res!1369822) b!3385532))

(assert (=> d!961047 m!3749229))

(assert (=> d!961047 m!3749229))

(assert (=> d!961047 m!3749245))

(assert (=> d!961047 m!3749241))

(declare-fun m!3751311 () Bool)

(assert (=> d!961047 m!3751311))

(declare-fun m!3751313 () Bool)

(assert (=> b!3385532 m!3751313))

(assert (=> b!3384066 d!961047))

(declare-fun d!961049 () Bool)

(declare-fun lt!1150225 () Token!10118)

(assert (=> d!961049 (contains!6753 lt!1149502 lt!1150225)))

(declare-fun e!2101655 () Token!10118)

(assert (=> d!961049 (= lt!1150225 e!2101655)))

(declare-fun c!576672 () Bool)

(assert (=> d!961049 (= c!576672 (= 0 0))))

(declare-fun e!2101656 () Bool)

(assert (=> d!961049 e!2101656))

(declare-fun res!1369825 () Bool)

(assert (=> d!961049 (=> (not res!1369825) (not e!2101656))))

(assert (=> d!961049 (= res!1369825 (<= 0 0))))

(assert (=> d!961049 (= (apply!8585 lt!1149502 0) lt!1150225)))

(declare-fun b!3385539 () Bool)

(assert (=> b!3385539 (= e!2101656 (< 0 (size!27917 lt!1149502)))))

(declare-fun b!3385540 () Bool)

(assert (=> b!3385540 (= e!2101655 (head!7231 lt!1149502))))

(declare-fun b!3385541 () Bool)

(assert (=> b!3385541 (= e!2101655 (apply!8585 (tail!5360 lt!1149502) (- 0 1)))))

(assert (= (and d!961049 res!1369825) b!3385539))

(assert (= (and d!961049 c!576672) b!3385540))

(assert (= (and d!961049 (not c!576672)) b!3385541))

(declare-fun m!3751315 () Bool)

(assert (=> d!961049 m!3751315))

(assert (=> b!3385539 m!3751313))

(declare-fun m!3751317 () Bool)

(assert (=> b!3385540 m!3751317))

(declare-fun m!3751319 () Bool)

(assert (=> b!3385541 m!3751319))

(assert (=> b!3385541 m!3751319))

(declare-fun m!3751321 () Bool)

(assert (=> b!3385541 m!3751321))

(assert (=> b!3384066 d!961049))

(declare-fun b!3385560 () Bool)

(declare-fun e!2101670 () Bool)

(declare-fun lt!1150228 () List!37000)

(declare-fun e!2101667 () Int)

(assert (=> b!3385560 (= e!2101670 (= (size!27917 lt!1150228) e!2101667))))

(declare-fun c!576682 () Bool)

(assert (=> b!3385560 (= c!576682 (<= 0 0))))

(declare-fun bm!244923 () Bool)

(declare-fun call!244928 () Int)

(assert (=> bm!244923 (= call!244928 (size!27917 lt!1149508))))

(declare-fun d!961051 () Bool)

(assert (=> d!961051 e!2101670))

(declare-fun res!1369828 () Bool)

(assert (=> d!961051 (=> (not res!1369828) (not e!2101670))))

(declare-fun content!5089 (List!37000) (InoxSet Token!10118))

(assert (=> d!961051 (= res!1369828 (= ((_ map implies) (content!5089 lt!1150228) (content!5089 lt!1149508)) ((as const (InoxSet Token!10118)) true)))))

(declare-fun e!2101671 () List!37000)

(assert (=> d!961051 (= lt!1150228 e!2101671)))

(declare-fun c!576683 () Bool)

(assert (=> d!961051 (= c!576683 ((_ is Nil!36876) lt!1149508))))

(assert (=> d!961051 (= (drop!1965 lt!1149508 0) lt!1150228)))

(declare-fun b!3385561 () Bool)

(declare-fun e!2101668 () List!37000)

(assert (=> b!3385561 (= e!2101668 (drop!1965 (t!263603 lt!1149508) (- 0 1)))))

(declare-fun b!3385562 () Bool)

(assert (=> b!3385562 (= e!2101671 Nil!36876)))

(declare-fun b!3385563 () Bool)

(declare-fun e!2101669 () Int)

(assert (=> b!3385563 (= e!2101669 0)))

(declare-fun b!3385564 () Bool)

(assert (=> b!3385564 (= e!2101667 e!2101669)))

(declare-fun c!576681 () Bool)

(assert (=> b!3385564 (= c!576681 (>= 0 call!244928))))

(declare-fun b!3385565 () Bool)

(assert (=> b!3385565 (= e!2101669 (- call!244928 0))))

(declare-fun b!3385566 () Bool)

(assert (=> b!3385566 (= e!2101668 lt!1149508)))

(declare-fun b!3385567 () Bool)

(assert (=> b!3385567 (= e!2101667 call!244928)))

(declare-fun b!3385568 () Bool)

(assert (=> b!3385568 (= e!2101671 e!2101668)))

(declare-fun c!576684 () Bool)

(assert (=> b!3385568 (= c!576684 (<= 0 0))))

(assert (= (and d!961051 c!576683) b!3385562))

(assert (= (and d!961051 (not c!576683)) b!3385568))

(assert (= (and b!3385568 c!576684) b!3385566))

(assert (= (and b!3385568 (not c!576684)) b!3385561))

(assert (= (and d!961051 res!1369828) b!3385560))

(assert (= (and b!3385560 c!576682) b!3385567))

(assert (= (and b!3385560 (not c!576682)) b!3385564))

(assert (= (and b!3385564 c!576681) b!3385563))

(assert (= (and b!3385564 (not c!576681)) b!3385565))

(assert (= (or b!3385567 b!3385564 b!3385565) bm!244923))

(declare-fun m!3751323 () Bool)

(assert (=> b!3385560 m!3751323))

(declare-fun m!3751325 () Bool)

(assert (=> bm!244923 m!3751325))

(declare-fun m!3751327 () Bool)

(assert (=> d!961051 m!3751327))

(declare-fun m!3751329 () Bool)

(assert (=> d!961051 m!3751329))

(declare-fun m!3751331 () Bool)

(assert (=> b!3385561 m!3751331))

(assert (=> b!3384066 d!961051))

(declare-fun d!961053 () Bool)

(declare-fun lt!1150231 () BalanceConc!21868)

(assert (=> d!961053 (= (list!13341 lt!1150231) (printListTailRec!650 thiss!18206 (dropList!1167 lt!1149395 (+ 0 1)) (list!13341 (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (apply!8584 lt!1149395 0))))))))

(declare-fun e!2101673 () BalanceConc!21868)

(assert (=> d!961053 (= lt!1150231 e!2101673)))

(declare-fun c!576685 () Bool)

(assert (=> d!961053 (= c!576685 (>= (+ 0 1) (size!27912 lt!1149395)))))

(declare-fun e!2101672 () Bool)

(assert (=> d!961053 e!2101672))

(declare-fun res!1369829 () Bool)

(assert (=> d!961053 (=> (not res!1369829) (not e!2101672))))

(assert (=> d!961053 (= res!1369829 (>= (+ 0 1) 0))))

(assert (=> d!961053 (= (printTailRec!1460 thiss!18206 lt!1149395 (+ 0 1) (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (apply!8584 lt!1149395 0)))) lt!1150231)))

(declare-fun b!3385569 () Bool)

(assert (=> b!3385569 (= e!2101672 (<= (+ 0 1) (size!27912 lt!1149395)))))

(declare-fun b!3385570 () Bool)

(assert (=> b!3385570 (= e!2101673 (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (apply!8584 lt!1149395 0))))))

(declare-fun b!3385571 () Bool)

(assert (=> b!3385571 (= e!2101673 (printTailRec!1460 thiss!18206 lt!1149395 (+ 0 1 1) (++!9019 (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (apply!8584 lt!1149395 0))) (charsOf!3390 (apply!8584 lt!1149395 (+ 0 1))))))))

(declare-fun lt!1150229 () List!37000)

(assert (=> b!3385571 (= lt!1150229 (list!13344 lt!1149395))))

(declare-fun lt!1150233 () Unit!51991)

(assert (=> b!3385571 (= lt!1150233 (lemmaDropApply!1125 lt!1150229 (+ 0 1)))))

(assert (=> b!3385571 (= (head!7231 (drop!1965 lt!1150229 (+ 0 1))) (apply!8585 lt!1150229 (+ 0 1)))))

(declare-fun lt!1150232 () Unit!51991)

(assert (=> b!3385571 (= lt!1150232 lt!1150233)))

(declare-fun lt!1150235 () List!37000)

(assert (=> b!3385571 (= lt!1150235 (list!13344 lt!1149395))))

(declare-fun lt!1150234 () Unit!51991)

(assert (=> b!3385571 (= lt!1150234 (lemmaDropTail!1009 lt!1150235 (+ 0 1)))))

(assert (=> b!3385571 (= (tail!5360 (drop!1965 lt!1150235 (+ 0 1))) (drop!1965 lt!1150235 (+ 0 1 1)))))

(declare-fun lt!1150230 () Unit!51991)

(assert (=> b!3385571 (= lt!1150230 lt!1150234)))

(assert (= (and d!961053 res!1369829) b!3385569))

(assert (= (and d!961053 c!576685) b!3385570))

(assert (= (and d!961053 (not c!576685)) b!3385571))

(assert (=> d!961053 m!3749225))

(declare-fun m!3751333 () Bool)

(assert (=> d!961053 m!3751333))

(declare-fun m!3751335 () Bool)

(assert (=> d!961053 m!3751335))

(assert (=> d!961053 m!3751333))

(declare-fun m!3751337 () Bool)

(assert (=> d!961053 m!3751337))

(assert (=> d!961053 m!3749219))

(assert (=> d!961053 m!3751335))

(declare-fun m!3751339 () Bool)

(assert (=> d!961053 m!3751339))

(assert (=> b!3385569 m!3749219))

(assert (=> b!3385571 m!3749225))

(declare-fun m!3751341 () Bool)

(assert (=> b!3385571 m!3751341))

(declare-fun m!3751343 () Bool)

(assert (=> b!3385571 m!3751343))

(declare-fun m!3751345 () Bool)

(assert (=> b!3385571 m!3751345))

(assert (=> b!3385571 m!3749209))

(declare-fun m!3751347 () Bool)

(assert (=> b!3385571 m!3751347))

(declare-fun m!3751349 () Bool)

(assert (=> b!3385571 m!3751349))

(declare-fun m!3751351 () Bool)

(assert (=> b!3385571 m!3751351))

(declare-fun m!3751353 () Bool)

(assert (=> b!3385571 m!3751353))

(declare-fun m!3751355 () Bool)

(assert (=> b!3385571 m!3751355))

(assert (=> b!3385571 m!3751341))

(assert (=> b!3385571 m!3751355))

(assert (=> b!3385571 m!3751351))

(declare-fun m!3751357 () Bool)

(assert (=> b!3385571 m!3751357))

(declare-fun m!3751359 () Bool)

(assert (=> b!3385571 m!3751359))

(assert (=> b!3385571 m!3751343))

(declare-fun m!3751361 () Bool)

(assert (=> b!3385571 m!3751361))

(assert (=> b!3385571 m!3751347))

(declare-fun m!3751363 () Bool)

(assert (=> b!3385571 m!3751363))

(assert (=> b!3384066 d!961053))

(declare-fun b!3385572 () Bool)

(declare-fun e!2101677 () Bool)

(declare-fun lt!1150236 () List!37000)

(declare-fun e!2101674 () Int)

(assert (=> b!3385572 (= e!2101677 (= (size!27917 lt!1150236) e!2101674))))

(declare-fun c!576687 () Bool)

(assert (=> b!3385572 (= c!576687 (<= (+ 0 1) 0))))

(declare-fun bm!244924 () Bool)

(declare-fun call!244929 () Int)

(assert (=> bm!244924 (= call!244929 (size!27917 lt!1149508))))

(declare-fun d!961055 () Bool)

(assert (=> d!961055 e!2101677))

(declare-fun res!1369830 () Bool)

(assert (=> d!961055 (=> (not res!1369830) (not e!2101677))))

(assert (=> d!961055 (= res!1369830 (= ((_ map implies) (content!5089 lt!1150236) (content!5089 lt!1149508)) ((as const (InoxSet Token!10118)) true)))))

(declare-fun e!2101678 () List!37000)

(assert (=> d!961055 (= lt!1150236 e!2101678)))

(declare-fun c!576688 () Bool)

(assert (=> d!961055 (= c!576688 ((_ is Nil!36876) lt!1149508))))

(assert (=> d!961055 (= (drop!1965 lt!1149508 (+ 0 1)) lt!1150236)))

(declare-fun b!3385573 () Bool)

(declare-fun e!2101675 () List!37000)

(assert (=> b!3385573 (= e!2101675 (drop!1965 (t!263603 lt!1149508) (- (+ 0 1) 1)))))

(declare-fun b!3385574 () Bool)

(assert (=> b!3385574 (= e!2101678 Nil!36876)))

(declare-fun b!3385575 () Bool)

(declare-fun e!2101676 () Int)

(assert (=> b!3385575 (= e!2101676 0)))

(declare-fun b!3385576 () Bool)

(assert (=> b!3385576 (= e!2101674 e!2101676)))

(declare-fun c!576686 () Bool)

(assert (=> b!3385576 (= c!576686 (>= (+ 0 1) call!244929))))

(declare-fun b!3385577 () Bool)

(assert (=> b!3385577 (= e!2101676 (- call!244929 (+ 0 1)))))

(declare-fun b!3385578 () Bool)

(assert (=> b!3385578 (= e!2101675 lt!1149508)))

(declare-fun b!3385579 () Bool)

(assert (=> b!3385579 (= e!2101674 call!244929)))

(declare-fun b!3385580 () Bool)

(assert (=> b!3385580 (= e!2101678 e!2101675)))

(declare-fun c!576689 () Bool)

(assert (=> b!3385580 (= c!576689 (<= (+ 0 1) 0))))

(assert (= (and d!961055 c!576688) b!3385574))

(assert (= (and d!961055 (not c!576688)) b!3385580))

(assert (= (and b!3385580 c!576689) b!3385578))

(assert (= (and b!3385580 (not c!576689)) b!3385573))

(assert (= (and d!961055 res!1369830) b!3385572))

(assert (= (and b!3385572 c!576687) b!3385579))

(assert (= (and b!3385572 (not c!576687)) b!3385576))

(assert (= (and b!3385576 c!576686) b!3385575))

(assert (= (and b!3385576 (not c!576686)) b!3385577))

(assert (= (or b!3385579 b!3385576 b!3385577) bm!244924))

(declare-fun m!3751365 () Bool)

(assert (=> b!3385572 m!3751365))

(assert (=> bm!244924 m!3751325))

(declare-fun m!3751367 () Bool)

(assert (=> d!961055 m!3751367))

(assert (=> d!961055 m!3751329))

(declare-fun m!3751369 () Bool)

(assert (=> b!3385573 m!3751369))

(assert (=> b!3384066 d!961055))

(declare-fun d!961057 () Bool)

(assert (=> d!961057 (= (list!13344 lt!1149395) (list!13348 (c!576278 lt!1149395)))))

(declare-fun bs!555115 () Bool)

(assert (= bs!555115 d!961057))

(assert (=> bs!555115 m!3751137))

(assert (=> b!3384066 d!961057))

(declare-fun d!961059 () Bool)

(declare-fun lt!1150237 () BalanceConc!21868)

(assert (=> d!961059 (= (list!13341 lt!1150237) (originalCharacters!6090 (apply!8584 lt!1149395 0)))))

(assert (=> d!961059 (= lt!1150237 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0)))) (value!173676 (apply!8584 lt!1149395 0))))))

(assert (=> d!961059 (= (charsOf!3390 (apply!8584 lt!1149395 0)) lt!1150237)))

(declare-fun b_lambda!96211 () Bool)

(assert (=> (not b_lambda!96211) (not d!961059)))

(declare-fun t!263798 () Bool)

(declare-fun tb!180533 () Bool)

(assert (=> (and b!3383881 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0))))) t!263798) tb!180533))

(declare-fun b!3385581 () Bool)

(declare-fun e!2101679 () Bool)

(declare-fun tp!1057658 () Bool)

(assert (=> b!3385581 (= e!2101679 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0)))) (value!173676 (apply!8584 lt!1149395 0))))) tp!1057658))))

(declare-fun result!224038 () Bool)

(assert (=> tb!180533 (= result!224038 (and (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0)))) (value!173676 (apply!8584 lt!1149395 0)))) e!2101679))))

(assert (= tb!180533 b!3385581))

(declare-fun m!3751371 () Bool)

(assert (=> b!3385581 m!3751371))

(declare-fun m!3751373 () Bool)

(assert (=> tb!180533 m!3751373))

(assert (=> d!961059 t!263798))

(declare-fun b_and!235471 () Bool)

(assert (= b_and!235447 (and (=> t!263798 result!224038) b_and!235471)))

(declare-fun tb!180535 () Bool)

(declare-fun t!263800 () Bool)

(assert (=> (and b!3383876 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0))))) t!263800) tb!180535))

(declare-fun result!224040 () Bool)

(assert (= result!224040 result!224038))

(assert (=> d!961059 t!263800))

(declare-fun b_and!235473 () Bool)

(assert (= b_and!235449 (and (=> t!263800 result!224040) b_and!235473)))

(declare-fun t!263802 () Bool)

(declare-fun tb!180537 () Bool)

(assert (=> (and b!3384684 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0))))) t!263802) tb!180537))

(declare-fun result!224042 () Bool)

(assert (= result!224042 result!224038))

(assert (=> d!961059 t!263802))

(declare-fun b_and!235475 () Bool)

(assert (= b_and!235441 (and (=> t!263802 result!224042) b_and!235475)))

(declare-fun tb!180539 () Bool)

(declare-fun t!263804 () Bool)

(assert (=> (and b!3383882 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0))))) t!263804) tb!180539))

(declare-fun result!224044 () Bool)

(assert (= result!224044 result!224038))

(assert (=> d!961059 t!263804))

(declare-fun b_and!235477 () Bool)

(assert (= b_and!235443 (and (=> t!263804 result!224044) b_and!235477)))

(declare-fun t!263806 () Bool)

(declare-fun tb!180541 () Bool)

(assert (=> (and b!3384650 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0))))) t!263806) tb!180541))

(declare-fun result!224046 () Bool)

(assert (= result!224046 result!224038))

(assert (=> d!961059 t!263806))

(declare-fun b_and!235479 () Bool)

(assert (= b_and!235445 (and (=> t!263806 result!224046) b_and!235479)))

(declare-fun m!3751375 () Bool)

(assert (=> d!961059 m!3751375))

(declare-fun m!3751377 () Bool)

(assert (=> d!961059 m!3751377))

(assert (=> b!3384066 d!961059))

(declare-fun d!961061 () Bool)

(assert (=> d!961061 (= (tail!5360 (drop!1965 lt!1149508 0)) (drop!1965 lt!1149508 (+ 0 1)))))

(declare-fun lt!1150240 () Unit!51991)

(declare-fun choose!19608 (List!37000 Int) Unit!51991)

(assert (=> d!961061 (= lt!1150240 (choose!19608 lt!1149508 0))))

(declare-fun e!2101682 () Bool)

(assert (=> d!961061 e!2101682))

(declare-fun res!1369833 () Bool)

(assert (=> d!961061 (=> (not res!1369833) (not e!2101682))))

(assert (=> d!961061 (= res!1369833 (>= 0 0))))

(assert (=> d!961061 (= (lemmaDropTail!1009 lt!1149508 0) lt!1150240)))

(declare-fun b!3385584 () Bool)

(assert (=> b!3385584 (= e!2101682 (< 0 (size!27917 lt!1149508)))))

(assert (= (and d!961061 res!1369833) b!3385584))

(assert (=> d!961061 m!3749233))

(assert (=> d!961061 m!3749233))

(assert (=> d!961061 m!3749239))

(assert (=> d!961061 m!3749227))

(declare-fun m!3751379 () Bool)

(assert (=> d!961061 m!3751379))

(assert (=> b!3385584 m!3751325))

(assert (=> b!3384066 d!961061))

(declare-fun d!961063 () Bool)

(assert (=> d!961063 (= (tail!5360 (drop!1965 lt!1149508 0)) (t!263603 (drop!1965 lt!1149508 0)))))

(assert (=> b!3384066 d!961063))

(declare-fun b!3385585 () Bool)

(declare-fun e!2101686 () Bool)

(declare-fun lt!1150241 () List!37000)

(declare-fun e!2101683 () Int)

(assert (=> b!3385585 (= e!2101686 (= (size!27917 lt!1150241) e!2101683))))

(declare-fun c!576691 () Bool)

(assert (=> b!3385585 (= c!576691 (<= 0 0))))

(declare-fun bm!244925 () Bool)

(declare-fun call!244930 () Int)

(assert (=> bm!244925 (= call!244930 (size!27917 lt!1149502))))

(declare-fun d!961065 () Bool)

(assert (=> d!961065 e!2101686))

(declare-fun res!1369834 () Bool)

(assert (=> d!961065 (=> (not res!1369834) (not e!2101686))))

(assert (=> d!961065 (= res!1369834 (= ((_ map implies) (content!5089 lt!1150241) (content!5089 lt!1149502)) ((as const (InoxSet Token!10118)) true)))))

(declare-fun e!2101687 () List!37000)

(assert (=> d!961065 (= lt!1150241 e!2101687)))

(declare-fun c!576692 () Bool)

(assert (=> d!961065 (= c!576692 ((_ is Nil!36876) lt!1149502))))

(assert (=> d!961065 (= (drop!1965 lt!1149502 0) lt!1150241)))

(declare-fun b!3385586 () Bool)

(declare-fun e!2101684 () List!37000)

(assert (=> b!3385586 (= e!2101684 (drop!1965 (t!263603 lt!1149502) (- 0 1)))))

(declare-fun b!3385587 () Bool)

(assert (=> b!3385587 (= e!2101687 Nil!36876)))

(declare-fun b!3385588 () Bool)

(declare-fun e!2101685 () Int)

(assert (=> b!3385588 (= e!2101685 0)))

(declare-fun b!3385589 () Bool)

(assert (=> b!3385589 (= e!2101683 e!2101685)))

(declare-fun c!576690 () Bool)

(assert (=> b!3385589 (= c!576690 (>= 0 call!244930))))

(declare-fun b!3385590 () Bool)

(assert (=> b!3385590 (= e!2101685 (- call!244930 0))))

(declare-fun b!3385591 () Bool)

(assert (=> b!3385591 (= e!2101684 lt!1149502)))

(declare-fun b!3385592 () Bool)

(assert (=> b!3385592 (= e!2101683 call!244930)))

(declare-fun b!3385593 () Bool)

(assert (=> b!3385593 (= e!2101687 e!2101684)))

(declare-fun c!576693 () Bool)

(assert (=> b!3385593 (= c!576693 (<= 0 0))))

(assert (= (and d!961065 c!576692) b!3385587))

(assert (= (and d!961065 (not c!576692)) b!3385593))

(assert (= (and b!3385593 c!576693) b!3385591))

(assert (= (and b!3385593 (not c!576693)) b!3385586))

(assert (= (and d!961065 res!1369834) b!3385585))

(assert (= (and b!3385585 c!576691) b!3385592))

(assert (= (and b!3385585 (not c!576691)) b!3385589))

(assert (= (and b!3385589 c!576690) b!3385588))

(assert (= (and b!3385589 (not c!576690)) b!3385590))

(assert (= (or b!3385592 b!3385589 b!3385590) bm!244925))

(declare-fun m!3751381 () Bool)

(assert (=> b!3385585 m!3751381))

(assert (=> bm!244925 m!3751313))

(declare-fun m!3751383 () Bool)

(assert (=> d!961065 m!3751383))

(declare-fun m!3751385 () Bool)

(assert (=> d!961065 m!3751385))

(declare-fun m!3751387 () Bool)

(assert (=> b!3385586 m!3751387))

(assert (=> b!3384066 d!961065))

(declare-fun d!961067 () Bool)

(assert (=> d!961067 (= (isEmpty!21121 (originalCharacters!6090 (h!42296 tokens!494))) ((_ is Nil!36875) (originalCharacters!6090 (h!42296 tokens!494))))))

(assert (=> d!960377 d!961067))

(declare-fun d!961069 () Bool)

(declare-fun lt!1150242 () Int)

(assert (=> d!961069 (>= lt!1150242 0)))

(declare-fun e!2101688 () Int)

(assert (=> d!961069 (= lt!1150242 e!2101688)))

(declare-fun c!576694 () Bool)

(assert (=> d!961069 (= c!576694 ((_ is Nil!36875) (_2!21370 (get!11775 lt!1149627))))))

(assert (=> d!961069 (= (size!27909 (_2!21370 (get!11775 lt!1149627))) lt!1150242)))

(declare-fun b!3385594 () Bool)

(assert (=> b!3385594 (= e!2101688 0)))

(declare-fun b!3385595 () Bool)

(assert (=> b!3385595 (= e!2101688 (+ 1 (size!27909 (t!263602 (_2!21370 (get!11775 lt!1149627))))))))

(assert (= (and d!961069 c!576694) b!3385594))

(assert (= (and d!961069 (not c!576694)) b!3385595))

(declare-fun m!3751389 () Bool)

(assert (=> b!3385595 m!3751389))

(assert (=> b!3384399 d!961069))

(declare-fun d!961071 () Bool)

(assert (=> d!961071 (= (get!11775 lt!1149627) (v!36503 lt!1149627))))

(assert (=> b!3384399 d!961071))

(assert (=> b!3384399 d!960423))

(declare-fun d!961073 () Bool)

(declare-fun e!2101690 () Bool)

(assert (=> d!961073 e!2101690))

(declare-fun res!1369835 () Bool)

(assert (=> d!961073 (=> (not res!1369835) (not e!2101690))))

(declare-fun lt!1150243 () List!36999)

(assert (=> d!961073 (= res!1369835 (= (content!5087 lt!1150243) ((_ map or) (content!5087 (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) (content!5087 (printList!1513 thiss!18206 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))))))

(declare-fun e!2101689 () List!36999)

(assert (=> d!961073 (= lt!1150243 e!2101689)))

(declare-fun c!576695 () Bool)

(assert (=> d!961073 (= c!576695 ((_ is Nil!36875) (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))))))

(assert (=> d!961073 (= (++!9017 (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))) (printList!1513 thiss!18206 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876)))) lt!1150243)))

(declare-fun b!3385597 () Bool)

(assert (=> b!3385597 (= e!2101689 (Cons!36875 (h!42295 (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) (++!9017 (t!263602 (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) (printList!1513 thiss!18206 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876))))))))

(declare-fun b!3385596 () Bool)

(assert (=> b!3385596 (= e!2101689 (printList!1513 thiss!18206 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876))))))

(declare-fun b!3385598 () Bool)

(declare-fun res!1369836 () Bool)

(assert (=> b!3385598 (=> (not res!1369836) (not e!2101690))))

(assert (=> b!3385598 (= res!1369836 (= (size!27909 lt!1150243) (+ (size!27909 (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) (size!27909 (printList!1513 thiss!18206 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))))))

(declare-fun b!3385599 () Bool)

(assert (=> b!3385599 (= e!2101690 (or (not (= (printList!1513 thiss!18206 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876))) Nil!36875)) (= lt!1150243 (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))))))

(assert (= (and d!961073 c!576695) b!3385596))

(assert (= (and d!961073 (not c!576695)) b!3385597))

(assert (= (and d!961073 res!1369835) b!3385598))

(assert (= (and b!3385598 res!1369836) b!3385599))

(declare-fun m!3751391 () Bool)

(assert (=> d!961073 m!3751391))

(assert (=> d!961073 m!3749273))

(declare-fun m!3751393 () Bool)

(assert (=> d!961073 m!3751393))

(assert (=> d!961073 m!3749275))

(declare-fun m!3751395 () Bool)

(assert (=> d!961073 m!3751395))

(assert (=> b!3385597 m!3749275))

(declare-fun m!3751397 () Bool)

(assert (=> b!3385597 m!3751397))

(declare-fun m!3751399 () Bool)

(assert (=> b!3385598 m!3751399))

(assert (=> b!3385598 m!3749273))

(declare-fun m!3751401 () Bool)

(assert (=> b!3385598 m!3751401))

(assert (=> b!3385598 m!3749275))

(declare-fun m!3751403 () Bool)

(assert (=> b!3385598 m!3751403))

(assert (=> b!3384089 d!961073))

(declare-fun d!961075 () Bool)

(assert (=> d!961075 (= (list!13341 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))) (list!13345 (c!576277 (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))))))

(declare-fun bs!555116 () Bool)

(assert (= bs!555116 d!961075))

(declare-fun m!3751405 () Bool)

(assert (=> bs!555116 m!3751405))

(assert (=> b!3384089 d!961075))

(declare-fun d!961077 () Bool)

(declare-fun lt!1150244 () BalanceConc!21868)

(assert (=> d!961077 (= (list!13341 lt!1150244) (originalCharacters!6090 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))))

(assert (=> d!961077 (= lt!1150244 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) (value!173676 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))))

(assert (=> d!961077 (= (charsOf!3390 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))) lt!1150244)))

(declare-fun b_lambda!96213 () Bool)

(assert (=> (not b_lambda!96213) (not d!961077)))

(declare-fun t!263808 () Bool)

(declare-fun tb!180543 () Bool)

(assert (=> (and b!3383876 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))) t!263808) tb!180543))

(declare-fun b!3385600 () Bool)

(declare-fun e!2101691 () Bool)

(declare-fun tp!1057659 () Bool)

(assert (=> b!3385600 (= e!2101691 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) (value!173676 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))) tp!1057659))))

(declare-fun result!224048 () Bool)

(assert (=> tb!180543 (= result!224048 (and (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) (value!173676 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) e!2101691))))

(assert (= tb!180543 b!3385600))

(declare-fun m!3751407 () Bool)

(assert (=> b!3385600 m!3751407))

(declare-fun m!3751409 () Bool)

(assert (=> tb!180543 m!3751409))

(assert (=> d!961077 t!263808))

(declare-fun b_and!235481 () Bool)

(assert (= b_and!235473 (and (=> t!263808 result!224048) b_and!235481)))

(declare-fun t!263810 () Bool)

(declare-fun tb!180545 () Bool)

(assert (=> (and b!3384650 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))) t!263810) tb!180545))

(declare-fun result!224050 () Bool)

(assert (= result!224050 result!224048))

(assert (=> d!961077 t!263810))

(declare-fun b_and!235483 () Bool)

(assert (= b_and!235479 (and (=> t!263810 result!224050) b_and!235483)))

(declare-fun tb!180547 () Bool)

(declare-fun t!263812 () Bool)

(assert (=> (and b!3384684 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))) t!263812) tb!180547))

(declare-fun result!224052 () Bool)

(assert (= result!224052 result!224048))

(assert (=> d!961077 t!263812))

(declare-fun b_and!235485 () Bool)

(assert (= b_and!235475 (and (=> t!263812 result!224052) b_and!235485)))

(declare-fun t!263814 () Bool)

(declare-fun tb!180549 () Bool)

(assert (=> (and b!3383881 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))) t!263814) tb!180549))

(declare-fun result!224054 () Bool)

(assert (= result!224054 result!224048))

(assert (=> d!961077 t!263814))

(declare-fun b_and!235487 () Bool)

(assert (= b_and!235471 (and (=> t!263814 result!224054) b_and!235487)))

(declare-fun t!263816 () Bool)

(declare-fun tb!180551 () Bool)

(assert (=> (and b!3383882 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))) t!263816) tb!180551))

(declare-fun result!224056 () Bool)

(assert (= result!224056 result!224048))

(assert (=> d!961077 t!263816))

(declare-fun b_and!235489 () Bool)

(assert (= b_and!235477 (and (=> t!263816 result!224056) b_and!235489)))

(declare-fun m!3751411 () Bool)

(assert (=> d!961077 m!3751411))

(declare-fun m!3751413 () Bool)

(assert (=> d!961077 m!3751413))

(assert (=> b!3384089 d!961077))

(declare-fun d!961079 () Bool)

(declare-fun c!576696 () Bool)

(assert (=> d!961079 (= c!576696 ((_ is Cons!36876) (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876))))))

(declare-fun e!2101692 () List!36999)

(assert (=> d!961079 (= (printList!1513 thiss!18206 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876))) e!2101692)))

(declare-fun b!3385601 () Bool)

(assert (=> b!3385601 (= e!2101692 (++!9017 (list!13341 (charsOf!3390 (h!42296 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876))))) (printList!1513 thiss!18206 (t!263603 (t!263603 (Cons!36876 (h!42296 tokens!494) Nil!36876))))))))

(declare-fun b!3385602 () Bool)

(assert (=> b!3385602 (= e!2101692 Nil!36875)))

(assert (= (and d!961079 c!576696) b!3385601))

(assert (= (and d!961079 (not c!576696)) b!3385602))

(declare-fun m!3751415 () Bool)

(assert (=> b!3385601 m!3751415))

(assert (=> b!3385601 m!3751415))

(declare-fun m!3751417 () Bool)

(assert (=> b!3385601 m!3751417))

(declare-fun m!3751419 () Bool)

(assert (=> b!3385601 m!3751419))

(assert (=> b!3385601 m!3751417))

(assert (=> b!3385601 m!3751419))

(declare-fun m!3751421 () Bool)

(assert (=> b!3385601 m!3751421))

(assert (=> b!3384089 d!961079))

(declare-fun d!961081 () Bool)

(assert (=> d!961081 (= (isEmpty!21121 lt!1149402) ((_ is Nil!36875) lt!1149402))))

(assert (=> bm!244792 d!961081))

(declare-fun d!961083 () Bool)

(declare-fun res!1369837 () Bool)

(declare-fun e!2101693 () Bool)

(assert (=> d!961083 (=> res!1369837 e!2101693)))

(assert (=> d!961083 (= res!1369837 ((_ is Nil!36876) (list!13344 lt!1149412)))))

(assert (=> d!961083 (= (forall!7765 (list!13344 lt!1149412) lambda!120554) e!2101693)))

(declare-fun b!3385603 () Bool)

(declare-fun e!2101694 () Bool)

(assert (=> b!3385603 (= e!2101693 e!2101694)))

(declare-fun res!1369838 () Bool)

(assert (=> b!3385603 (=> (not res!1369838) (not e!2101694))))

(assert (=> b!3385603 (= res!1369838 (dynLambda!15347 lambda!120554 (h!42296 (list!13344 lt!1149412))))))

(declare-fun b!3385604 () Bool)

(assert (=> b!3385604 (= e!2101694 (forall!7765 (t!263603 (list!13344 lt!1149412)) lambda!120554))))

(assert (= (and d!961083 (not res!1369837)) b!3385603))

(assert (= (and b!3385603 res!1369838) b!3385604))

(declare-fun b_lambda!96215 () Bool)

(assert (=> (not b_lambda!96215) (not b!3385603)))

(declare-fun m!3751423 () Bool)

(assert (=> b!3385603 m!3751423))

(declare-fun m!3751425 () Bool)

(assert (=> b!3385604 m!3751425))

(assert (=> d!960333 d!961083))

(declare-fun d!961085 () Bool)

(assert (=> d!961085 (= (list!13344 lt!1149412) (list!13348 (c!576278 lt!1149412)))))

(declare-fun bs!555117 () Bool)

(assert (= bs!555117 d!961085))

(declare-fun m!3751427 () Bool)

(assert (=> bs!555117 m!3751427))

(assert (=> d!960333 d!961085))

(declare-fun d!961087 () Bool)

(declare-fun lt!1150247 () Bool)

(assert (=> d!961087 (= lt!1150247 (forall!7765 (list!13344 lt!1149412) lambda!120554))))

(declare-fun forall!7770 (Conc!11128 Int) Bool)

(assert (=> d!961087 (= lt!1150247 (forall!7770 (c!576278 lt!1149412) lambda!120554))))

(assert (=> d!961087 (= (forall!7766 lt!1149412 lambda!120554) lt!1150247)))

(declare-fun bs!555118 () Bool)

(assert (= bs!555118 d!961087))

(assert (=> bs!555118 m!3749305))

(assert (=> bs!555118 m!3749305))

(assert (=> bs!555118 m!3749307))

(declare-fun m!3751429 () Bool)

(assert (=> bs!555118 m!3751429))

(assert (=> d!960333 d!961087))

(assert (=> d!960333 d!960483))

(assert (=> bm!244781 d!960931))

(declare-fun d!961089 () Bool)

(assert (=> d!961089 (= (get!11774 lt!1149654) (v!36502 lt!1149654))))

(assert (=> b!3384538 d!961089))

(declare-fun d!961091 () Bool)

(declare-fun lt!1150248 () Bool)

(assert (=> d!961091 (= lt!1150248 (select (content!5086 (t!263604 rules!2135)) (rule!7930 separatorToken!241)))))

(declare-fun e!2101696 () Bool)

(assert (=> d!961091 (= lt!1150248 e!2101696)))

(declare-fun res!1369840 () Bool)

(assert (=> d!961091 (=> (not res!1369840) (not e!2101696))))

(assert (=> d!961091 (= res!1369840 ((_ is Cons!36877) (t!263604 rules!2135)))))

(assert (=> d!961091 (= (contains!6751 (t!263604 rules!2135) (rule!7930 separatorToken!241)) lt!1150248)))

(declare-fun b!3385605 () Bool)

(declare-fun e!2101695 () Bool)

(assert (=> b!3385605 (= e!2101696 e!2101695)))

(declare-fun res!1369839 () Bool)

(assert (=> b!3385605 (=> res!1369839 e!2101695)))

(assert (=> b!3385605 (= res!1369839 (= (h!42297 (t!263604 rules!2135)) (rule!7930 separatorToken!241)))))

(declare-fun b!3385606 () Bool)

(assert (=> b!3385606 (= e!2101695 (contains!6751 (t!263604 (t!263604 rules!2135)) (rule!7930 separatorToken!241)))))

(assert (= (and d!961091 res!1369840) b!3385605))

(assert (= (and b!3385605 (not res!1369839)) b!3385606))

(assert (=> d!961091 m!3751095))

(declare-fun m!3751431 () Bool)

(assert (=> d!961091 m!3751431))

(declare-fun m!3751433 () Bool)

(assert (=> b!3385606 m!3751433))

(assert (=> b!3384551 d!961091))

(declare-fun b!3385607 () Bool)

(declare-fun e!2101697 () Bool)

(declare-fun e!2101699 () Bool)

(assert (=> b!3385607 (= e!2101697 e!2101699)))

(declare-fun c!576697 () Bool)

(assert (=> b!3385607 (= c!576697 ((_ is IntegerValue!16819) (value!173676 (h!42296 (t!263603 tokens!494)))))))

(declare-fun b!3385608 () Bool)

(declare-fun res!1369841 () Bool)

(declare-fun e!2101698 () Bool)

(assert (=> b!3385608 (=> res!1369841 e!2101698)))

(assert (=> b!3385608 (= res!1369841 (not ((_ is IntegerValue!16820) (value!173676 (h!42296 (t!263603 tokens!494))))))))

(assert (=> b!3385608 (= e!2101699 e!2101698)))

(declare-fun d!961093 () Bool)

(declare-fun c!576698 () Bool)

(assert (=> d!961093 (= c!576698 ((_ is IntegerValue!16818) (value!173676 (h!42296 (t!263603 tokens!494)))))))

(assert (=> d!961093 (= (inv!21 (value!173676 (h!42296 (t!263603 tokens!494)))) e!2101697)))

(declare-fun b!3385609 () Bool)

(assert (=> b!3385609 (= e!2101699 (inv!17 (value!173676 (h!42296 (t!263603 tokens!494)))))))

(declare-fun b!3385610 () Bool)

(assert (=> b!3385610 (= e!2101698 (inv!15 (value!173676 (h!42296 (t!263603 tokens!494)))))))

(declare-fun b!3385611 () Bool)

(assert (=> b!3385611 (= e!2101697 (inv!16 (value!173676 (h!42296 (t!263603 tokens!494)))))))

(assert (= (and d!961093 c!576698) b!3385611))

(assert (= (and d!961093 (not c!576698)) b!3385607))

(assert (= (and b!3385607 c!576697) b!3385609))

(assert (= (and b!3385607 (not c!576697)) b!3385608))

(assert (= (and b!3385608 (not res!1369841)) b!3385610))

(declare-fun m!3751435 () Bool)

(assert (=> b!3385609 m!3751435))

(declare-fun m!3751437 () Bool)

(assert (=> b!3385610 m!3751437))

(declare-fun m!3751439 () Bool)

(assert (=> b!3385611 m!3751439))

(assert (=> b!3384648 d!961093))

(assert (=> d!960387 d!960381))

(assert (=> d!960387 d!960383))

(declare-fun d!961095 () Bool)

(assert (=> d!961095 (not (contains!6750 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149396))))

(assert (=> d!961095 true))

(declare-fun _$73!241 () Unit!51991)

(assert (=> d!961095 (= (choose!19592 thiss!18206 rules!2135 rules!2135 (rule!7930 (h!42296 tokens!494)) (rule!7930 separatorToken!241) lt!1149396) _$73!241)))

(declare-fun bs!555119 () Bool)

(assert (= bs!555119 d!961095))

(assert (=> bs!555119 m!3748887))

(assert (=> bs!555119 m!3748887))

(assert (=> bs!555119 m!3748889))

(assert (=> d!960387 d!961095))

(assert (=> d!960387 d!960327))

(assert (=> b!3384306 d!960419))

(declare-fun d!961097 () Bool)

(declare-fun lt!1150249 () Bool)

(assert (=> d!961097 (= lt!1150249 (isEmpty!21121 (list!13341 (_2!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))))))))))

(assert (=> d!961097 (= lt!1150249 (isEmpty!21135 (c!576277 (_2!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494))))))))))

(assert (=> d!961097 (= (isEmpty!21130 (_2!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 (h!42296 tokens!494)))))) lt!1150249)))

(declare-fun bs!555120 () Bool)

(assert (= bs!555120 d!961097))

(declare-fun m!3751441 () Bool)

(assert (=> bs!555120 m!3751441))

(assert (=> bs!555120 m!3751441))

(declare-fun m!3751443 () Bool)

(assert (=> bs!555120 m!3751443))

(declare-fun m!3751445 () Bool)

(assert (=> bs!555120 m!3751445))

(assert (=> b!3384257 d!961097))

(assert (=> b!3384257 d!960945))

(assert (=> b!3384257 d!960949))

(assert (=> b!3384257 d!960321))

(declare-fun d!961099 () Bool)

(declare-fun e!2101701 () Bool)

(assert (=> d!961099 e!2101701))

(declare-fun res!1369842 () Bool)

(assert (=> d!961099 (=> (not res!1369842) (not e!2101701))))

(declare-fun lt!1150250 () List!36999)

(assert (=> d!961099 (= res!1369842 (= (content!5087 lt!1150250) ((_ map or) (content!5087 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))) (content!5087 (_2!21370 (get!11775 lt!1149627))))))))

(declare-fun e!2101700 () List!36999)

(assert (=> d!961099 (= lt!1150250 e!2101700)))

(declare-fun c!576700 () Bool)

(assert (=> d!961099 (= c!576700 ((_ is Nil!36875) (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))))))

(assert (=> d!961099 (= (++!9017 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627)))) (_2!21370 (get!11775 lt!1149627))) lt!1150250)))

(declare-fun b!3385613 () Bool)

(assert (=> b!3385613 (= e!2101700 (Cons!36875 (h!42295 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))) (++!9017 (t!263602 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))) (_2!21370 (get!11775 lt!1149627)))))))

(declare-fun b!3385612 () Bool)

(assert (=> b!3385612 (= e!2101700 (_2!21370 (get!11775 lt!1149627)))))

(declare-fun b!3385614 () Bool)

(declare-fun res!1369843 () Bool)

(assert (=> b!3385614 (=> (not res!1369843) (not e!2101701))))

(assert (=> b!3385614 (= res!1369843 (= (size!27909 lt!1150250) (+ (size!27909 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))) (size!27909 (_2!21370 (get!11775 lt!1149627))))))))

(declare-fun b!3385615 () Bool)

(assert (=> b!3385615 (= e!2101701 (or (not (= (_2!21370 (get!11775 lt!1149627)) Nil!36875)) (= lt!1150250 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627)))))))))

(assert (= (and d!961099 c!576700) b!3385612))

(assert (= (and d!961099 (not c!576700)) b!3385613))

(assert (= (and d!961099 res!1369842) b!3385614))

(assert (= (and b!3385614 res!1369843) b!3385615))

(declare-fun m!3751447 () Bool)

(assert (=> d!961099 m!3751447))

(assert (=> d!961099 m!3749595))

(declare-fun m!3751449 () Bool)

(assert (=> d!961099 m!3751449))

(declare-fun m!3751451 () Bool)

(assert (=> d!961099 m!3751451))

(declare-fun m!3751453 () Bool)

(assert (=> b!3385613 m!3751453))

(declare-fun m!3751455 () Bool)

(assert (=> b!3385614 m!3751455))

(assert (=> b!3385614 m!3749595))

(declare-fun m!3751457 () Bool)

(assert (=> b!3385614 m!3751457))

(assert (=> b!3385614 m!3749591))

(assert (=> b!3384405 d!961099))

(declare-fun d!961101 () Bool)

(assert (=> d!961101 (= (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627)))) (list!13345 (c!576277 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))))))

(declare-fun bs!555121 () Bool)

(assert (= bs!555121 d!961101))

(declare-fun m!3751459 () Bool)

(assert (=> bs!555121 m!3751459))

(assert (=> b!3384405 d!961101))

(declare-fun d!961103 () Bool)

(declare-fun lt!1150251 () BalanceConc!21868)

(assert (=> d!961103 (= (list!13341 lt!1150251) (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627))))))

(assert (=> d!961103 (= lt!1150251 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627))))) (value!173676 (_1!21370 (get!11775 lt!1149627)))))))

(assert (=> d!961103 (= (charsOf!3390 (_1!21370 (get!11775 lt!1149627))) lt!1150251)))

(declare-fun b_lambda!96217 () Bool)

(assert (=> (not b_lambda!96217) (not d!961103)))

(declare-fun tb!180553 () Bool)

(declare-fun t!263818 () Bool)

(assert (=> (and b!3383882 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263818) tb!180553))

(declare-fun b!3385616 () Bool)

(declare-fun e!2101702 () Bool)

(declare-fun tp!1057660 () Bool)

(assert (=> b!3385616 (= e!2101702 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627))))) (value!173676 (_1!21370 (get!11775 lt!1149627)))))) tp!1057660))))

(declare-fun result!224058 () Bool)

(assert (=> tb!180553 (= result!224058 (and (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627))))) (value!173676 (_1!21370 (get!11775 lt!1149627))))) e!2101702))))

(assert (= tb!180553 b!3385616))

(declare-fun m!3751461 () Bool)

(assert (=> b!3385616 m!3751461))

(declare-fun m!3751463 () Bool)

(assert (=> tb!180553 m!3751463))

(assert (=> d!961103 t!263818))

(declare-fun b_and!235491 () Bool)

(assert (= b_and!235489 (and (=> t!263818 result!224058) b_and!235491)))

(declare-fun t!263820 () Bool)

(declare-fun tb!180555 () Bool)

(assert (=> (and b!3384684 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263820) tb!180555))

(declare-fun result!224060 () Bool)

(assert (= result!224060 result!224058))

(assert (=> d!961103 t!263820))

(declare-fun b_and!235493 () Bool)

(assert (= b_and!235485 (and (=> t!263820 result!224060) b_and!235493)))

(declare-fun tb!180557 () Bool)

(declare-fun t!263822 () Bool)

(assert (=> (and b!3383881 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263822) tb!180557))

(declare-fun result!224062 () Bool)

(assert (= result!224062 result!224058))

(assert (=> d!961103 t!263822))

(declare-fun b_and!235495 () Bool)

(assert (= b_and!235487 (and (=> t!263822 result!224062) b_and!235495)))

(declare-fun tb!180559 () Bool)

(declare-fun t!263824 () Bool)

(assert (=> (and b!3383876 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263824) tb!180559))

(declare-fun result!224064 () Bool)

(assert (= result!224064 result!224058))

(assert (=> d!961103 t!263824))

(declare-fun b_and!235497 () Bool)

(assert (= b_and!235481 (and (=> t!263824 result!224064) b_and!235497)))

(declare-fun tb!180561 () Bool)

(declare-fun t!263826 () Bool)

(assert (=> (and b!3384650 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263826) tb!180561))

(declare-fun result!224066 () Bool)

(assert (= result!224066 result!224058))

(assert (=> d!961103 t!263826))

(declare-fun b_and!235499 () Bool)

(assert (= b_and!235483 (and (=> t!263826 result!224066) b_and!235499)))

(declare-fun m!3751465 () Bool)

(assert (=> d!961103 m!3751465))

(declare-fun m!3751467 () Bool)

(assert (=> d!961103 m!3751467))

(assert (=> b!3384405 d!961103))

(assert (=> b!3384405 d!961071))

(declare-fun b!3385625 () Bool)

(declare-fun e!2101711 () Bool)

(declare-fun e!2101710 () Bool)

(assert (=> b!3385625 (= e!2101711 e!2101710)))

(declare-fun res!1369848 () Bool)

(declare-fun rulesUseDisjointChars!323 (Rule!10552 Rule!10552) Bool)

(assert (=> b!3385625 (= res!1369848 (rulesUseDisjointChars!323 (h!42297 rules!2135) (h!42297 rules!2135)))))

(assert (=> b!3385625 (=> (not res!1369848) (not e!2101710))))

(declare-fun bm!244928 () Bool)

(declare-fun call!244933 () Bool)

(assert (=> bm!244928 (= call!244933 (ruleDisjointCharsFromAllFromOtherType!680 (h!42297 rules!2135) (t!263604 rules!2135)))))

(declare-fun d!961105 () Bool)

(declare-fun c!576703 () Bool)

(assert (=> d!961105 (= c!576703 (and ((_ is Cons!36877) rules!2135) (not (= (isSeparator!5376 (h!42297 rules!2135)) (isSeparator!5376 (h!42297 rules!2135))))))))

(assert (=> d!961105 (= (ruleDisjointCharsFromAllFromOtherType!680 (h!42297 rules!2135) rules!2135) e!2101711)))

(declare-fun b!3385626 () Bool)

(assert (=> b!3385626 (= e!2101710 call!244933)))

(declare-fun b!3385627 () Bool)

(declare-fun e!2101709 () Bool)

(assert (=> b!3385627 (= e!2101711 e!2101709)))

(declare-fun res!1369849 () Bool)

(assert (=> b!3385627 (= res!1369849 (not ((_ is Cons!36877) rules!2135)))))

(assert (=> b!3385627 (=> res!1369849 e!2101709)))

(declare-fun b!3385628 () Bool)

(assert (=> b!3385628 (= e!2101709 call!244933)))

(assert (= (and d!961105 c!576703) b!3385625))

(assert (= (and d!961105 (not c!576703)) b!3385627))

(assert (= (and b!3385625 res!1369848) b!3385626))

(assert (= (and b!3385627 (not res!1369849)) b!3385628))

(assert (= (or b!3385626 b!3385628) bm!244928))

(declare-fun m!3751469 () Bool)

(assert (=> b!3385625 m!3751469))

(declare-fun m!3751471 () Bool)

(assert (=> bm!244928 m!3751471))

(assert (=> b!3384129 d!961105))

(declare-fun d!961107 () Bool)

(assert (=> d!961107 true))

(declare-fun lt!1150256 () Bool)

(assert (=> d!961107 (= lt!1150256 (rulesValidInductive!1833 thiss!18206 rules!2135))))

(declare-fun lambda!120587 () Int)

(declare-fun forall!7771 (List!37001 Int) Bool)

(assert (=> d!961107 (= lt!1150256 (forall!7771 rules!2135 lambda!120587))))

(assert (=> d!961107 (= (rulesValid!2005 thiss!18206 rules!2135) lt!1150256)))

(declare-fun bs!555122 () Bool)

(assert (= bs!555122 d!961107))

(assert (=> bs!555122 m!3749847))

(declare-fun m!3751473 () Bool)

(assert (=> bs!555122 m!3751473))

(assert (=> d!960327 d!961107))

(declare-fun d!961109 () Bool)

(assert (=> d!961109 (= (inv!16 (value!173676 (h!42296 tokens!494))) (= (charsToInt!0 (text!39689 (value!173676 (h!42296 tokens!494)))) (value!173667 (value!173676 (h!42296 tokens!494)))))))

(declare-fun bs!555123 () Bool)

(assert (= bs!555123 d!961109))

(declare-fun m!3751475 () Bool)

(assert (=> bs!555123 m!3751475))

(assert (=> b!3384559 d!961109))

(declare-fun d!961111 () Bool)

(declare-fun lt!1150257 () Int)

(assert (=> d!961111 (>= lt!1150257 0)))

(declare-fun e!2101716 () Int)

(assert (=> d!961111 (= lt!1150257 e!2101716)))

(declare-fun c!576704 () Bool)

(assert (=> d!961111 (= c!576704 ((_ is Nil!36875) (originalCharacters!6090 separatorToken!241)))))

(assert (=> d!961111 (= (size!27909 (originalCharacters!6090 separatorToken!241)) lt!1150257)))

(declare-fun b!3385635 () Bool)

(assert (=> b!3385635 (= e!2101716 0)))

(declare-fun b!3385636 () Bool)

(assert (=> b!3385636 (= e!2101716 (+ 1 (size!27909 (t!263602 (originalCharacters!6090 separatorToken!241)))))))

(assert (= (and d!961111 c!576704) b!3385635))

(assert (= (and d!961111 (not c!576704)) b!3385636))

(declare-fun m!3751477 () Bool)

(assert (=> b!3385636 m!3751477))

(assert (=> b!3384603 d!961111))

(declare-fun d!961113 () Bool)

(declare-fun res!1369860 () Bool)

(declare-fun e!2101726 () Bool)

(assert (=> d!961113 (=> res!1369860 e!2101726)))

(assert (=> d!961113 (= res!1369860 ((_ is Nil!36877) rules!2135))))

(assert (=> d!961113 (= (noDuplicateTag!2001 thiss!18206 rules!2135 Nil!36879) e!2101726)))

(declare-fun b!3385646 () Bool)

(declare-fun e!2101727 () Bool)

(assert (=> b!3385646 (= e!2101726 e!2101727)))

(declare-fun res!1369861 () Bool)

(assert (=> b!3385646 (=> (not res!1369861) (not e!2101727))))

(declare-fun contains!6754 (List!37003 String!41364) Bool)

(assert (=> b!3385646 (= res!1369861 (not (contains!6754 Nil!36879 (tag!5954 (h!42297 rules!2135)))))))

(declare-fun b!3385647 () Bool)

(assert (=> b!3385647 (= e!2101727 (noDuplicateTag!2001 thiss!18206 (t!263604 rules!2135) (Cons!36879 (tag!5954 (h!42297 rules!2135)) Nil!36879)))))

(assert (= (and d!961113 (not res!1369860)) b!3385646))

(assert (= (and b!3385646 res!1369861) b!3385647))

(declare-fun m!3751479 () Bool)

(assert (=> b!3385646 m!3751479))

(declare-fun m!3751481 () Bool)

(assert (=> b!3385647 m!3751481))

(assert (=> b!3384093 d!961113))

(declare-fun d!961115 () Bool)

(declare-fun e!2101729 () Bool)

(assert (=> d!961115 e!2101729))

(declare-fun res!1369862 () Bool)

(assert (=> d!961115 (=> (not res!1369862) (not e!2101729))))

(declare-fun lt!1150259 () List!36999)

(assert (=> d!961115 (= res!1369862 (= (content!5087 lt!1150259) ((_ map or) (content!5087 (t!263602 lt!1149402)) (content!5087 lt!1149400))))))

(declare-fun e!2101728 () List!36999)

(assert (=> d!961115 (= lt!1150259 e!2101728)))

(declare-fun c!576705 () Bool)

(assert (=> d!961115 (= c!576705 ((_ is Nil!36875) (t!263602 lt!1149402)))))

(assert (=> d!961115 (= (++!9017 (t!263602 lt!1149402) lt!1149400) lt!1150259)))

(declare-fun b!3385649 () Bool)

(assert (=> b!3385649 (= e!2101728 (Cons!36875 (h!42295 (t!263602 lt!1149402)) (++!9017 (t!263602 (t!263602 lt!1149402)) lt!1149400)))))

(declare-fun b!3385648 () Bool)

(assert (=> b!3385648 (= e!2101728 lt!1149400)))

(declare-fun b!3385650 () Bool)

(declare-fun res!1369863 () Bool)

(assert (=> b!3385650 (=> (not res!1369863) (not e!2101729))))

(assert (=> b!3385650 (= res!1369863 (= (size!27909 lt!1150259) (+ (size!27909 (t!263602 lt!1149402)) (size!27909 lt!1149400))))))

(declare-fun b!3385651 () Bool)

(assert (=> b!3385651 (= e!2101729 (or (not (= lt!1149400 Nil!36875)) (= lt!1150259 (t!263602 lt!1149402))))))

(assert (= (and d!961115 c!576705) b!3385648))

(assert (= (and d!961115 (not c!576705)) b!3385649))

(assert (= (and d!961115 res!1369862) b!3385650))

(assert (= (and b!3385650 res!1369863) b!3385651))

(declare-fun m!3751489 () Bool)

(assert (=> d!961115 m!3751489))

(declare-fun m!3751491 () Bool)

(assert (=> d!961115 m!3751491))

(assert (=> d!961115 m!3749805))

(declare-fun m!3751493 () Bool)

(assert (=> b!3385649 m!3751493))

(declare-fun m!3751495 () Bool)

(assert (=> b!3385650 m!3751495))

(assert (=> b!3385650 m!3749543))

(assert (=> b!3385650 m!3749811))

(assert (=> b!3384598 d!961115))

(declare-fun b!3385681 () Bool)

(declare-fun e!2101745 () Bool)

(assert (=> b!3385681 (= e!2101745 (not (isEmpty!21126 (right!29080 (c!576278 lt!1149513)))))))

(declare-fun b!3385682 () Bool)

(declare-fun res!1369882 () Bool)

(assert (=> b!3385682 (=> (not res!1369882) (not e!2101745))))

(assert (=> b!3385682 (= res!1369882 (not (isEmpty!21126 (left!28750 (c!576278 lt!1149513)))))))

(declare-fun b!3385683 () Bool)

(declare-fun res!1369886 () Bool)

(assert (=> b!3385683 (=> (not res!1369886) (not e!2101745))))

(assert (=> b!3385683 (= res!1369886 (isBalanced!3357 (right!29080 (c!576278 lt!1149513))))))

(declare-fun b!3385684 () Bool)

(declare-fun res!1369884 () Bool)

(assert (=> b!3385684 (=> (not res!1369884) (not e!2101745))))

(assert (=> b!3385684 (= res!1369884 (isBalanced!3357 (left!28750 (c!576278 lt!1149513))))))

(declare-fun b!3385685 () Bool)

(declare-fun e!2101744 () Bool)

(assert (=> b!3385685 (= e!2101744 e!2101745)))

(declare-fun res!1369885 () Bool)

(assert (=> b!3385685 (=> (not res!1369885) (not e!2101745))))

(declare-fun height!1659 (Conc!11128) Int)

(assert (=> b!3385685 (= res!1369885 (<= (- 1) (- (height!1659 (left!28750 (c!576278 lt!1149513))) (height!1659 (right!29080 (c!576278 lt!1149513))))))))

(declare-fun d!961119 () Bool)

(declare-fun res!1369883 () Bool)

(assert (=> d!961119 (=> res!1369883 e!2101744)))

(assert (=> d!961119 (= res!1369883 (not ((_ is Node!11128) (c!576278 lt!1149513))))))

(assert (=> d!961119 (= (isBalanced!3357 (c!576278 lt!1149513)) e!2101744)))

(declare-fun b!3385686 () Bool)

(declare-fun res!1369887 () Bool)

(assert (=> b!3385686 (=> (not res!1369887) (not e!2101745))))

(assert (=> b!3385686 (= res!1369887 (<= (- (height!1659 (left!28750 (c!576278 lt!1149513))) (height!1659 (right!29080 (c!576278 lt!1149513)))) 1))))

(assert (= (and d!961119 (not res!1369883)) b!3385685))

(assert (= (and b!3385685 res!1369885) b!3385686))

(assert (= (and b!3385686 res!1369887) b!3385684))

(assert (= (and b!3385684 res!1369884) b!3385683))

(assert (= (and b!3385683 res!1369886) b!3385682))

(assert (= (and b!3385682 res!1369882) b!3385681))

(declare-fun m!3751559 () Bool)

(assert (=> b!3385683 m!3751559))

(declare-fun m!3751561 () Bool)

(assert (=> b!3385682 m!3751561))

(declare-fun m!3751563 () Bool)

(assert (=> b!3385681 m!3751563))

(declare-fun m!3751565 () Bool)

(assert (=> b!3385686 m!3751565))

(declare-fun m!3751567 () Bool)

(assert (=> b!3385686 m!3751567))

(declare-fun m!3751569 () Bool)

(assert (=> b!3385684 m!3751569))

(assert (=> b!3385685 m!3751565))

(assert (=> b!3385685 m!3751567))

(assert (=> b!3384079 d!961119))

(declare-fun b!3385688 () Bool)

(declare-fun e!2101750 () Bool)

(declare-fun e!2101752 () Bool)

(assert (=> b!3385688 (= e!2101750 e!2101752)))

(declare-fun res!1369893 () Bool)

(assert (=> b!3385688 (=> res!1369893 e!2101752)))

(declare-fun call!244934 () Bool)

(assert (=> b!3385688 (= res!1369893 call!244934)))

(declare-fun b!3385689 () Bool)

(declare-fun res!1369895 () Bool)

(declare-fun e!2101747 () Bool)

(assert (=> b!3385689 (=> res!1369895 e!2101747)))

(assert (=> b!3385689 (= res!1369895 (not ((_ is ElementMatch!10135) (regex!5376 (rule!7930 (h!42296 tokens!494))))))))

(declare-fun e!2101749 () Bool)

(assert (=> b!3385689 (= e!2101749 e!2101747)))

(declare-fun b!3385690 () Bool)

(declare-fun res!1369890 () Bool)

(assert (=> b!3385690 (=> res!1369890 e!2101747)))

(declare-fun e!2101748 () Bool)

(assert (=> b!3385690 (= res!1369890 e!2101748)))

(declare-fun res!1369891 () Bool)

(assert (=> b!3385690 (=> (not res!1369891) (not e!2101748))))

(declare-fun lt!1150267 () Bool)

(assert (=> b!3385690 (= res!1369891 lt!1150267)))

(declare-fun b!3385691 () Bool)

(declare-fun res!1369889 () Bool)

(assert (=> b!3385691 (=> (not res!1369889) (not e!2101748))))

(assert (=> b!3385691 (= res!1369889 (not call!244934))))

(declare-fun b!3385692 () Bool)

(declare-fun e!2101746 () Bool)

(assert (=> b!3385692 (= e!2101746 (nullable!3454 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3385693 () Bool)

(declare-fun res!1369894 () Bool)

(assert (=> b!3385693 (=> (not res!1369894) (not e!2101748))))

(assert (=> b!3385693 (= res!1369894 (isEmpty!21121 (tail!5361 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627)))))))))

(declare-fun d!961139 () Bool)

(declare-fun e!2101751 () Bool)

(assert (=> d!961139 e!2101751))

(declare-fun c!576712 () Bool)

(assert (=> d!961139 (= c!576712 ((_ is EmptyExpr!10135) (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(assert (=> d!961139 (= lt!1150267 e!2101746)))

(declare-fun c!576713 () Bool)

(assert (=> d!961139 (= c!576713 (isEmpty!21121 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))))))

(assert (=> d!961139 (validRegex!4610 (regex!5376 (rule!7930 (h!42296 tokens!494))))))

(assert (=> d!961139 (= (matchR!4727 (regex!5376 (rule!7930 (h!42296 tokens!494))) (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))) lt!1150267)))

(declare-fun b!3385687 () Bool)

(assert (=> b!3385687 (= e!2101748 (= (head!7229 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))) (c!576276 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))

(declare-fun b!3385694 () Bool)

(declare-fun res!1369888 () Bool)

(assert (=> b!3385694 (=> res!1369888 e!2101752)))

(assert (=> b!3385694 (= res!1369888 (not (isEmpty!21121 (tail!5361 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))))))))

(declare-fun b!3385695 () Bool)

(assert (=> b!3385695 (= e!2101751 e!2101749)))

(declare-fun c!576711 () Bool)

(assert (=> b!3385695 (= c!576711 ((_ is EmptyLang!10135) (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3385696 () Bool)

(assert (=> b!3385696 (= e!2101747 e!2101750)))

(declare-fun res!1369892 () Bool)

(assert (=> b!3385696 (=> (not res!1369892) (not e!2101750))))

(assert (=> b!3385696 (= res!1369892 (not lt!1150267))))

(declare-fun b!3385697 () Bool)

(assert (=> b!3385697 (= e!2101751 (= lt!1150267 call!244934))))

(declare-fun bm!244929 () Bool)

(assert (=> bm!244929 (= call!244934 (isEmpty!21121 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))))))

(declare-fun b!3385698 () Bool)

(assert (=> b!3385698 (= e!2101749 (not lt!1150267))))

(declare-fun b!3385699 () Bool)

(assert (=> b!3385699 (= e!2101746 (matchR!4727 (derivativeStep!3007 (regex!5376 (rule!7930 (h!42296 tokens!494))) (head!7229 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627)))))) (tail!5361 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627)))))))))

(declare-fun b!3385700 () Bool)

(assert (=> b!3385700 (= e!2101752 (not (= (head!7229 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149627))))) (c!576276 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))

(assert (= (and d!961139 c!576713) b!3385692))

(assert (= (and d!961139 (not c!576713)) b!3385699))

(assert (= (and d!961139 c!576712) b!3385697))

(assert (= (and d!961139 (not c!576712)) b!3385695))

(assert (= (and b!3385695 c!576711) b!3385698))

(assert (= (and b!3385695 (not c!576711)) b!3385689))

(assert (= (and b!3385689 (not res!1369895)) b!3385690))

(assert (= (and b!3385690 res!1369891) b!3385691))

(assert (= (and b!3385691 res!1369889) b!3385693))

(assert (= (and b!3385693 res!1369894) b!3385687))

(assert (= (and b!3385690 (not res!1369890)) b!3385696))

(assert (= (and b!3385696 res!1369892) b!3385688))

(assert (= (and b!3385688 (not res!1369893)) b!3385694))

(assert (= (and b!3385694 (not res!1369888)) b!3385700))

(assert (= (or b!3385697 b!3385688 b!3385691) bm!244929))

(assert (=> b!3385687 m!3749595))

(declare-fun m!3751571 () Bool)

(assert (=> b!3385687 m!3751571))

(assert (=> b!3385693 m!3749595))

(declare-fun m!3751573 () Bool)

(assert (=> b!3385693 m!3751573))

(assert (=> b!3385693 m!3751573))

(declare-fun m!3751575 () Bool)

(assert (=> b!3385693 m!3751575))

(assert (=> b!3385699 m!3749595))

(assert (=> b!3385699 m!3751571))

(assert (=> b!3385699 m!3751571))

(declare-fun m!3751577 () Bool)

(assert (=> b!3385699 m!3751577))

(assert (=> b!3385699 m!3749595))

(assert (=> b!3385699 m!3751573))

(assert (=> b!3385699 m!3751577))

(assert (=> b!3385699 m!3751573))

(declare-fun m!3751579 () Bool)

(assert (=> b!3385699 m!3751579))

(assert (=> d!961139 m!3749595))

(declare-fun m!3751581 () Bool)

(assert (=> d!961139 m!3751581))

(assert (=> d!961139 m!3750609))

(assert (=> bm!244929 m!3749595))

(assert (=> bm!244929 m!3751581))

(assert (=> b!3385692 m!3750597))

(assert (=> b!3385694 m!3749595))

(assert (=> b!3385694 m!3751573))

(assert (=> b!3385694 m!3751573))

(assert (=> b!3385694 m!3751575))

(assert (=> b!3385700 m!3749595))

(assert (=> b!3385700 m!3751571))

(assert (=> b!3384401 d!961139))

(assert (=> b!3384401 d!961101))

(assert (=> b!3384401 d!961103))

(assert (=> b!3384401 d!961071))

(declare-fun d!961141 () Bool)

(assert (=> d!961141 (= (list!13341 lt!1149672) (list!13345 (c!576277 lt!1149672)))))

(declare-fun bs!555130 () Bool)

(assert (= bs!555130 d!961141))

(declare-fun m!3751583 () Bool)

(assert (=> bs!555130 m!3751583))

(assert (=> d!960509 d!961141))

(declare-fun d!961143 () Bool)

(declare-fun c!576717 () Bool)

(assert (=> d!961143 (= c!576717 ((_ is Cons!36876) (list!13344 lt!1149412)))))

(declare-fun e!2101757 () List!36999)

(assert (=> d!961143 (= (printWithSeparatorTokenList!258 thiss!18206 (list!13344 lt!1149412) separatorToken!241) e!2101757)))

(declare-fun b!3385709 () Bool)

(assert (=> b!3385709 (= e!2101757 (++!9017 (++!9017 (list!13341 (charsOf!3390 (h!42296 (list!13344 lt!1149412)))) (list!13341 (charsOf!3390 separatorToken!241))) (printWithSeparatorTokenList!258 thiss!18206 (t!263603 (list!13344 lt!1149412)) separatorToken!241)))))

(declare-fun b!3385710 () Bool)

(assert (=> b!3385710 (= e!2101757 Nil!36875)))

(assert (= (and d!961143 c!576717) b!3385709))

(assert (= (and d!961143 (not c!576717)) b!3385710))

(declare-fun m!3751585 () Bool)

(assert (=> b!3385709 m!3751585))

(declare-fun m!3751587 () Bool)

(assert (=> b!3385709 m!3751587))

(declare-fun m!3751589 () Bool)

(assert (=> b!3385709 m!3751589))

(declare-fun m!3751591 () Bool)

(assert (=> b!3385709 m!3751591))

(declare-fun m!3751593 () Bool)

(assert (=> b!3385709 m!3751593))

(assert (=> b!3385709 m!3748927))

(assert (=> b!3385709 m!3751585))

(assert (=> b!3385709 m!3751587))

(assert (=> b!3385709 m!3748919))

(assert (=> b!3385709 m!3748927))

(assert (=> b!3385709 m!3748919))

(assert (=> b!3385709 m!3751591))

(assert (=> b!3385709 m!3751593))

(assert (=> d!960509 d!961143))

(assert (=> d!960509 d!961085))

(declare-fun lt!1150294 () BalanceConc!21868)

(declare-fun d!961145 () Bool)

(declare-fun printWithSeparatorTokenListTailRec!38 (LexerInterface!4965 List!37000 Token!10118 List!36999) List!36999)

(assert (=> d!961145 (= (list!13341 lt!1150294) (printWithSeparatorTokenListTailRec!38 thiss!18206 (dropList!1167 lt!1149412 0) separatorToken!241 (list!13341 (BalanceConc!21869 Empty!11127))))))

(declare-fun e!2101769 () BalanceConc!21868)

(assert (=> d!961145 (= lt!1150294 e!2101769)))

(declare-fun c!576722 () Bool)

(assert (=> d!961145 (= c!576722 (>= 0 (size!27912 lt!1149412)))))

(declare-fun e!2101770 () Bool)

(assert (=> d!961145 e!2101770))

(declare-fun res!1369901 () Bool)

(assert (=> d!961145 (=> (not res!1369901) (not e!2101770))))

(assert (=> d!961145 (= res!1369901 (>= 0 0))))

(assert (=> d!961145 (= (printWithSeparatorTokenTailRec!74 thiss!18206 lt!1149412 separatorToken!241 0 (BalanceConc!21869 Empty!11127)) lt!1150294)))

(declare-fun b!3385724 () Bool)

(assert (=> b!3385724 (= e!2101770 (<= 0 (size!27912 lt!1149412)))))

(declare-fun b!3385725 () Bool)

(assert (=> b!3385725 (= e!2101769 (BalanceConc!21869 Empty!11127))))

(declare-fun b!3385726 () Bool)

(assert (=> b!3385726 (= e!2101769 (printWithSeparatorTokenTailRec!74 thiss!18206 lt!1149412 separatorToken!241 (+ 0 1) (++!9019 (++!9019 (BalanceConc!21869 Empty!11127) (charsOf!3390 (apply!8584 lt!1149412 0))) (charsOf!3390 separatorToken!241))))))

(declare-fun lt!1150296 () List!37000)

(assert (=> b!3385726 (= lt!1150296 (list!13344 lt!1149412))))

(declare-fun lt!1150291 () Unit!51991)

(assert (=> b!3385726 (= lt!1150291 (lemmaDropApply!1125 lt!1150296 0))))

(assert (=> b!3385726 (= (head!7231 (drop!1965 lt!1150296 0)) (apply!8585 lt!1150296 0))))

(declare-fun lt!1150292 () Unit!51991)

(assert (=> b!3385726 (= lt!1150292 lt!1150291)))

(declare-fun lt!1150297 () List!37000)

(assert (=> b!3385726 (= lt!1150297 (list!13344 lt!1149412))))

(declare-fun lt!1150295 () Unit!51991)

(assert (=> b!3385726 (= lt!1150295 (lemmaDropTail!1009 lt!1150297 0))))

(assert (=> b!3385726 (= (tail!5360 (drop!1965 lt!1150297 0)) (drop!1965 lt!1150297 (+ 0 1)))))

(declare-fun lt!1150293 () Unit!51991)

(assert (=> b!3385726 (= lt!1150293 lt!1150295)))

(assert (= (and d!961145 res!1369901) b!3385724))

(assert (= (and d!961145 c!576722) b!3385725))

(assert (= (and d!961145 (not c!576722)) b!3385726))

(declare-fun m!3751625 () Bool)

(assert (=> d!961145 m!3751625))

(declare-fun m!3751627 () Bool)

(assert (=> d!961145 m!3751627))

(assert (=> d!961145 m!3749213))

(declare-fun m!3751629 () Bool)

(assert (=> d!961145 m!3751629))

(assert (=> d!961145 m!3751627))

(declare-fun m!3751631 () Bool)

(assert (=> d!961145 m!3751631))

(assert (=> d!961145 m!3749213))

(assert (=> b!3385724 m!3751625))

(declare-fun m!3751633 () Bool)

(assert (=> b!3385726 m!3751633))

(declare-fun m!3751635 () Bool)

(assert (=> b!3385726 m!3751635))

(declare-fun m!3751637 () Bool)

(assert (=> b!3385726 m!3751637))

(declare-fun m!3751639 () Bool)

(assert (=> b!3385726 m!3751639))

(declare-fun m!3751641 () Bool)

(assert (=> b!3385726 m!3751641))

(assert (=> b!3385726 m!3749305))

(declare-fun m!3751643 () Bool)

(assert (=> b!3385726 m!3751643))

(declare-fun m!3751645 () Bool)

(assert (=> b!3385726 m!3751645))

(declare-fun m!3751647 () Bool)

(assert (=> b!3385726 m!3751647))

(declare-fun m!3751649 () Bool)

(assert (=> b!3385726 m!3751649))

(assert (=> b!3385726 m!3748919))

(declare-fun m!3751651 () Bool)

(assert (=> b!3385726 m!3751651))

(assert (=> b!3385726 m!3751637))

(declare-fun m!3751653 () Bool)

(assert (=> b!3385726 m!3751653))

(assert (=> b!3385726 m!3751653))

(declare-fun m!3751655 () Bool)

(assert (=> b!3385726 m!3751655))

(assert (=> b!3385726 m!3751645))

(assert (=> b!3385726 m!3751633))

(declare-fun m!3751657 () Bool)

(assert (=> b!3385726 m!3751657))

(assert (=> b!3385726 m!3751655))

(assert (=> b!3385726 m!3748919))

(assert (=> b!3385726 m!3751639))

(assert (=> d!960509 d!961145))

(declare-fun d!961165 () Bool)

(assert (=> d!961165 (= (isDefined!5718 lt!1149684) (not (isEmpty!21133 lt!1149684)))))

(declare-fun bs!555138 () Bool)

(assert (= bs!555138 d!961165))

(assert (=> bs!555138 m!3749841))

(assert (=> b!3384628 d!961165))

(declare-fun d!961167 () Bool)

(assert (=> d!961167 (= (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))) (isBalanced!3359 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))))))

(declare-fun bs!555139 () Bool)

(assert (= bs!555139 d!961167))

(declare-fun m!3751659 () Bool)

(assert (=> bs!555139 m!3751659))

(assert (=> tb!180405 d!961167))

(assert (=> d!960495 d!961081))

(declare-fun bm!244930 () Bool)

(declare-fun call!244937 () Bool)

(declare-fun c!576724 () Bool)

(assert (=> bm!244930 (= call!244937 (validRegex!4610 (ite c!576724 (regOne!20783 (regex!5376 lt!1149398)) (regOne!20782 (regex!5376 lt!1149398)))))))

(declare-fun b!3385727 () Bool)

(declare-fun e!2101775 () Bool)

(declare-fun e!2101771 () Bool)

(assert (=> b!3385727 (= e!2101775 e!2101771)))

(declare-fun res!1369903 () Bool)

(assert (=> b!3385727 (= res!1369903 (not (nullable!3454 (reg!10464 (regex!5376 lt!1149398)))))))

(assert (=> b!3385727 (=> (not res!1369903) (not e!2101771))))

(declare-fun c!576723 () Bool)

(declare-fun call!244936 () Bool)

(declare-fun bm!244931 () Bool)

(assert (=> bm!244931 (= call!244936 (validRegex!4610 (ite c!576723 (reg!10464 (regex!5376 lt!1149398)) (ite c!576724 (regTwo!20783 (regex!5376 lt!1149398)) (regTwo!20782 (regex!5376 lt!1149398))))))))

(declare-fun b!3385728 () Bool)

(declare-fun e!2101774 () Bool)

(assert (=> b!3385728 (= e!2101775 e!2101774)))

(assert (=> b!3385728 (= c!576724 ((_ is Union!10135) (regex!5376 lt!1149398)))))

(declare-fun b!3385729 () Bool)

(declare-fun e!2101777 () Bool)

(assert (=> b!3385729 (= e!2101777 e!2101775)))

(assert (=> b!3385729 (= c!576723 ((_ is Star!10135) (regex!5376 lt!1149398)))))

(declare-fun b!3385730 () Bool)

(declare-fun e!2101772 () Bool)

(declare-fun call!244935 () Bool)

(assert (=> b!3385730 (= e!2101772 call!244935)))

(declare-fun b!3385731 () Bool)

(declare-fun e!2101776 () Bool)

(assert (=> b!3385731 (= e!2101776 e!2101772)))

(declare-fun res!1369902 () Bool)

(assert (=> b!3385731 (=> (not res!1369902) (not e!2101772))))

(assert (=> b!3385731 (= res!1369902 call!244937)))

(declare-fun b!3385732 () Bool)

(assert (=> b!3385732 (= e!2101771 call!244936)))

(declare-fun b!3385734 () Bool)

(declare-fun res!1369906 () Bool)

(declare-fun e!2101773 () Bool)

(assert (=> b!3385734 (=> (not res!1369906) (not e!2101773))))

(assert (=> b!3385734 (= res!1369906 call!244937)))

(assert (=> b!3385734 (= e!2101774 e!2101773)))

(declare-fun bm!244932 () Bool)

(assert (=> bm!244932 (= call!244935 call!244936)))

(declare-fun b!3385735 () Bool)

(assert (=> b!3385735 (= e!2101773 call!244935)))

(declare-fun d!961169 () Bool)

(declare-fun res!1369905 () Bool)

(assert (=> d!961169 (=> res!1369905 e!2101777)))

(assert (=> d!961169 (= res!1369905 ((_ is ElementMatch!10135) (regex!5376 lt!1149398)))))

(assert (=> d!961169 (= (validRegex!4610 (regex!5376 lt!1149398)) e!2101777)))

(declare-fun b!3385733 () Bool)

(declare-fun res!1369904 () Bool)

(assert (=> b!3385733 (=> res!1369904 e!2101776)))

(assert (=> b!3385733 (= res!1369904 (not ((_ is Concat!15741) (regex!5376 lt!1149398))))))

(assert (=> b!3385733 (= e!2101774 e!2101776)))

(assert (= (and d!961169 (not res!1369905)) b!3385729))

(assert (= (and b!3385729 c!576723) b!3385727))

(assert (= (and b!3385729 (not c!576723)) b!3385728))

(assert (= (and b!3385727 res!1369903) b!3385732))

(assert (= (and b!3385728 c!576724) b!3385734))

(assert (= (and b!3385728 (not c!576724)) b!3385733))

(assert (= (and b!3385734 res!1369906) b!3385735))

(assert (= (and b!3385733 (not res!1369904)) b!3385731))

(assert (= (and b!3385731 res!1369902) b!3385730))

(assert (= (or b!3385735 b!3385730) bm!244932))

(assert (= (or b!3385734 b!3385731) bm!244930))

(assert (= (or b!3385732 bm!244932) bm!244931))

(declare-fun m!3751661 () Bool)

(assert (=> bm!244930 m!3751661))

(declare-fun m!3751663 () Bool)

(assert (=> b!3385727 m!3751663))

(declare-fun m!3751665 () Bool)

(assert (=> bm!244931 m!3751665))

(assert (=> d!960495 d!961169))

(declare-fun d!961171 () Bool)

(declare-fun c!576727 () Bool)

(assert (=> d!961171 (= c!576727 ((_ is Node!11127) (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))))))

(declare-fun e!2101782 () Bool)

(assert (=> d!961171 (= (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))) e!2101782)))

(declare-fun b!3385742 () Bool)

(declare-fun inv!49960 (Conc!11127) Bool)

(assert (=> b!3385742 (= e!2101782 (inv!49960 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))))))

(declare-fun b!3385743 () Bool)

(declare-fun e!2101783 () Bool)

(assert (=> b!3385743 (= e!2101782 e!2101783)))

(declare-fun res!1369909 () Bool)

(assert (=> b!3385743 (= res!1369909 (not ((_ is Leaf!17426) (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))))))))

(assert (=> b!3385743 (=> res!1369909 e!2101783)))

(declare-fun b!3385744 () Bool)

(declare-fun inv!49961 (Conc!11127) Bool)

(assert (=> b!3385744 (= e!2101783 (inv!49961 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))))))

(assert (= (and d!961171 c!576727) b!3385742))

(assert (= (and d!961171 (not c!576727)) b!3385743))

(assert (= (and b!3385743 (not res!1369909)) b!3385744))

(declare-fun m!3751667 () Bool)

(assert (=> b!3385742 m!3751667))

(declare-fun m!3751669 () Bool)

(assert (=> b!3385744 m!3751669))

(assert (=> b!3384135 d!961171))

(declare-fun b!3385746 () Bool)

(declare-fun e!2101788 () Bool)

(declare-fun e!2101790 () Bool)

(assert (=> b!3385746 (= e!2101788 e!2101790)))

(declare-fun res!1369915 () Bool)

(assert (=> b!3385746 (=> res!1369915 e!2101790)))

(declare-fun call!244938 () Bool)

(assert (=> b!3385746 (= res!1369915 call!244938)))

(declare-fun b!3385747 () Bool)

(declare-fun res!1369917 () Bool)

(declare-fun e!2101785 () Bool)

(assert (=> b!3385747 (=> res!1369917 e!2101785)))

(assert (=> b!3385747 (= res!1369917 (not ((_ is ElementMatch!10135) (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))))))

(declare-fun e!2101787 () Bool)

(assert (=> b!3385747 (= e!2101787 e!2101785)))

(declare-fun b!3385748 () Bool)

(declare-fun res!1369912 () Bool)

(assert (=> b!3385748 (=> res!1369912 e!2101785)))

(declare-fun e!2101786 () Bool)

(assert (=> b!3385748 (= res!1369912 e!2101786)))

(declare-fun res!1369913 () Bool)

(assert (=> b!3385748 (=> (not res!1369913) (not e!2101786))))

(declare-fun lt!1150298 () Bool)

(assert (=> b!3385748 (= res!1369913 lt!1150298)))

(declare-fun b!3385749 () Bool)

(declare-fun res!1369911 () Bool)

(assert (=> b!3385749 (=> (not res!1369911) (not e!2101786))))

(assert (=> b!3385749 (= res!1369911 (not call!244938))))

(declare-fun b!3385750 () Bool)

(declare-fun e!2101784 () Bool)

(assert (=> b!3385750 (= e!2101784 (nullable!3454 (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))))))

(declare-fun b!3385751 () Bool)

(declare-fun res!1369916 () Bool)

(assert (=> b!3385751 (=> (not res!1369916) (not e!2101786))))

(assert (=> b!3385751 (= res!1369916 (isEmpty!21121 (tail!5361 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684)))))))))

(declare-fun d!961173 () Bool)

(declare-fun e!2101789 () Bool)

(assert (=> d!961173 e!2101789))

(declare-fun c!576729 () Bool)

(assert (=> d!961173 (= c!576729 ((_ is EmptyExpr!10135) (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))))))

(assert (=> d!961173 (= lt!1150298 e!2101784)))

(declare-fun c!576730 () Bool)

(assert (=> d!961173 (= c!576730 (isEmpty!21121 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))))))

(assert (=> d!961173 (validRegex!4610 (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))))

(assert (=> d!961173 (= (matchR!4727 (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))) (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))) lt!1150298)))

(declare-fun b!3385745 () Bool)

(assert (=> b!3385745 (= e!2101786 (= (head!7229 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))) (c!576276 (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))))))

(declare-fun b!3385752 () Bool)

(declare-fun res!1369910 () Bool)

(assert (=> b!3385752 (=> res!1369910 e!2101790)))

(assert (=> b!3385752 (= res!1369910 (not (isEmpty!21121 (tail!5361 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))))))))

(declare-fun b!3385753 () Bool)

(assert (=> b!3385753 (= e!2101789 e!2101787)))

(declare-fun c!576728 () Bool)

(assert (=> b!3385753 (= c!576728 ((_ is EmptyLang!10135) (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))))))

(declare-fun b!3385754 () Bool)

(assert (=> b!3385754 (= e!2101785 e!2101788)))

(declare-fun res!1369914 () Bool)

(assert (=> b!3385754 (=> (not res!1369914) (not e!2101788))))

(assert (=> b!3385754 (= res!1369914 (not lt!1150298))))

(declare-fun b!3385755 () Bool)

(assert (=> b!3385755 (= e!2101789 (= lt!1150298 call!244938))))

(declare-fun bm!244933 () Bool)

(assert (=> bm!244933 (= call!244938 (isEmpty!21121 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))))))

(declare-fun b!3385756 () Bool)

(assert (=> b!3385756 (= e!2101787 (not lt!1150298))))

(declare-fun b!3385757 () Bool)

(assert (=> b!3385757 (= e!2101784 (matchR!4727 (derivativeStep!3007 (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))) (head!7229 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684)))))) (tail!5361 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684)))))))))

(declare-fun b!3385758 () Bool)

(assert (=> b!3385758 (= e!2101790 (not (= (head!7229 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))) (c!576276 (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))))))))

(assert (= (and d!961173 c!576730) b!3385750))

(assert (= (and d!961173 (not c!576730)) b!3385757))

(assert (= (and d!961173 c!576729) b!3385755))

(assert (= (and d!961173 (not c!576729)) b!3385753))

(assert (= (and b!3385753 c!576728) b!3385756))

(assert (= (and b!3385753 (not c!576728)) b!3385747))

(assert (= (and b!3385747 (not res!1369917)) b!3385748))

(assert (= (and b!3385748 res!1369913) b!3385749))

(assert (= (and b!3385749 res!1369911) b!3385751))

(assert (= (and b!3385751 res!1369916) b!3385745))

(assert (= (and b!3385748 (not res!1369912)) b!3385754))

(assert (= (and b!3385754 res!1369914) b!3385746))

(assert (= (and b!3385746 (not res!1369915)) b!3385752))

(assert (= (and b!3385752 (not res!1369910)) b!3385758))

(assert (= (or b!3385755 b!3385746 b!3385749) bm!244933))

(assert (=> b!3385745 m!3749857))

(declare-fun m!3751671 () Bool)

(assert (=> b!3385745 m!3751671))

(assert (=> b!3385751 m!3749857))

(declare-fun m!3751673 () Bool)

(assert (=> b!3385751 m!3751673))

(assert (=> b!3385751 m!3751673))

(declare-fun m!3751675 () Bool)

(assert (=> b!3385751 m!3751675))

(assert (=> b!3385757 m!3749857))

(assert (=> b!3385757 m!3751671))

(assert (=> b!3385757 m!3751671))

(declare-fun m!3751677 () Bool)

(assert (=> b!3385757 m!3751677))

(assert (=> b!3385757 m!3749857))

(assert (=> b!3385757 m!3751673))

(assert (=> b!3385757 m!3751677))

(assert (=> b!3385757 m!3751673))

(declare-fun m!3751679 () Bool)

(assert (=> b!3385757 m!3751679))

(assert (=> d!961173 m!3749857))

(declare-fun m!3751681 () Bool)

(assert (=> d!961173 m!3751681))

(declare-fun m!3751683 () Bool)

(assert (=> d!961173 m!3751683))

(assert (=> bm!244933 m!3749857))

(assert (=> bm!244933 m!3751681))

(declare-fun m!3751685 () Bool)

(assert (=> b!3385750 m!3751685))

(assert (=> b!3385752 m!3749857))

(assert (=> b!3385752 m!3751673))

(assert (=> b!3385752 m!3751673))

(assert (=> b!3385752 m!3751675))

(assert (=> b!3385758 m!3749857))

(assert (=> b!3385758 m!3751671))

(assert (=> b!3384624 d!961173))

(assert (=> b!3384624 d!960709))

(assert (=> b!3384624 d!960705))

(assert (=> b!3384624 d!960707))

(declare-fun d!961175 () Bool)

(assert (=> d!961175 (= (head!7229 lt!1149402) (h!42295 lt!1149402))))

(assert (=> b!3384574 d!961175))

(declare-fun b!3385770 () Bool)

(declare-fun e!2101796 () List!36999)

(assert (=> b!3385770 (= e!2101796 (++!9017 (list!13345 (left!28749 (c!576277 (charsOf!3390 (h!42296 tokens!494))))) (list!13345 (right!29079 (c!576277 (charsOf!3390 (h!42296 tokens!494)))))))))

(declare-fun b!3385767 () Bool)

(declare-fun e!2101795 () List!36999)

(assert (=> b!3385767 (= e!2101795 Nil!36875)))

(declare-fun d!961177 () Bool)

(declare-fun c!576735 () Bool)

(assert (=> d!961177 (= c!576735 ((_ is Empty!11127) (c!576277 (charsOf!3390 (h!42296 tokens!494)))))))

(assert (=> d!961177 (= (list!13345 (c!576277 (charsOf!3390 (h!42296 tokens!494)))) e!2101795)))

(declare-fun b!3385769 () Bool)

(declare-fun list!13349 (IArray!22259) List!36999)

(assert (=> b!3385769 (= e!2101796 (list!13349 (xs!14281 (c!576277 (charsOf!3390 (h!42296 tokens!494))))))))

(declare-fun b!3385768 () Bool)

(assert (=> b!3385768 (= e!2101795 e!2101796)))

(declare-fun c!576736 () Bool)

(assert (=> b!3385768 (= c!576736 ((_ is Leaf!17426) (c!576277 (charsOf!3390 (h!42296 tokens!494)))))))

(assert (= (and d!961177 c!576735) b!3385767))

(assert (= (and d!961177 (not c!576735)) b!3385768))

(assert (= (and b!3385768 c!576736) b!3385769))

(assert (= (and b!3385768 (not c!576736)) b!3385770))

(declare-fun m!3751687 () Bool)

(assert (=> b!3385770 m!3751687))

(declare-fun m!3751689 () Bool)

(assert (=> b!3385770 m!3751689))

(assert (=> b!3385770 m!3751687))

(assert (=> b!3385770 m!3751689))

(declare-fun m!3751691 () Bool)

(assert (=> b!3385770 m!3751691))

(declare-fun m!3751693 () Bool)

(assert (=> b!3385769 m!3751693))

(assert (=> d!960343 d!961177))

(assert (=> d!960479 d!960471))

(assert (=> d!960479 d!960473))

(declare-fun d!961179 () Bool)

(assert (=> d!961179 (isEmpty!21121 (getSuffix!1470 lt!1149402 lt!1149402))))

(assert (=> d!961179 true))

(declare-fun _$66!460 () Unit!51991)

(assert (=> d!961179 (= (choose!19600 lt!1149402) _$66!460)))

(declare-fun bs!555140 () Bool)

(assert (= bs!555140 d!961179))

(assert (=> bs!555140 m!3748969))

(assert (=> bs!555140 m!3748969))

(assert (=> bs!555140 m!3748983))

(assert (=> d!960479 d!961179))

(declare-fun d!961181 () Bool)

(declare-fun lt!1150299 () List!36999)

(assert (=> d!961181 (= (++!9017 (t!263602 lt!1149402) lt!1150299) (tail!5361 lt!1149402))))

(declare-fun e!2101797 () List!36999)

(assert (=> d!961181 (= lt!1150299 e!2101797)))

(declare-fun c!576737 () Bool)

(assert (=> d!961181 (= c!576737 ((_ is Cons!36875) (t!263602 lt!1149402)))))

(assert (=> d!961181 (>= (size!27909 (tail!5361 lt!1149402)) (size!27909 (t!263602 lt!1149402)))))

(assert (=> d!961181 (= (getSuffix!1470 (tail!5361 lt!1149402) (t!263602 lt!1149402)) lt!1150299)))

(declare-fun b!3385771 () Bool)

(assert (=> b!3385771 (= e!2101797 (getSuffix!1470 (tail!5361 (tail!5361 lt!1149402)) (t!263602 (t!263602 lt!1149402))))))

(declare-fun b!3385772 () Bool)

(assert (=> b!3385772 (= e!2101797 (tail!5361 lt!1149402))))

(assert (= (and d!961181 c!576737) b!3385771))

(assert (= (and d!961181 (not c!576737)) b!3385772))

(declare-fun m!3751695 () Bool)

(assert (=> d!961181 m!3751695))

(assert (=> d!961181 m!3749735))

(declare-fun m!3751697 () Bool)

(assert (=> d!961181 m!3751697))

(assert (=> d!961181 m!3749543))

(assert (=> b!3385771 m!3749735))

(declare-fun m!3751699 () Bool)

(assert (=> b!3385771 m!3751699))

(assert (=> b!3385771 m!3751699))

(declare-fun m!3751701 () Bool)

(assert (=> b!3385771 m!3751701))

(assert (=> b!3384534 d!961181))

(assert (=> b!3384534 d!960971))

(declare-fun d!961183 () Bool)

(assert (=> d!961183 (= (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))) (v!36502 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))))))

(assert (=> b!3384329 d!961183))

(assert (=> b!3384329 d!960421))

(declare-fun b!3385774 () Bool)

(declare-fun e!2101802 () Bool)

(declare-fun e!2101804 () Bool)

(assert (=> b!3385774 (= e!2101802 e!2101804)))

(declare-fun res!1369923 () Bool)

(assert (=> b!3385774 (=> res!1369923 e!2101804)))

(declare-fun call!244939 () Bool)

(assert (=> b!3385774 (= res!1369923 call!244939)))

(declare-fun b!3385775 () Bool)

(declare-fun res!1369925 () Bool)

(declare-fun e!2101799 () Bool)

(assert (=> b!3385775 (=> res!1369925 e!2101799)))

(assert (=> b!3385775 (= res!1369925 (not ((_ is ElementMatch!10135) (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))))))))

(declare-fun e!2101801 () Bool)

(assert (=> b!3385775 (= e!2101801 e!2101799)))

(declare-fun b!3385776 () Bool)

(declare-fun res!1369920 () Bool)

(assert (=> b!3385776 (=> res!1369920 e!2101799)))

(declare-fun e!2101800 () Bool)

(assert (=> b!3385776 (= res!1369920 e!2101800)))

(declare-fun res!1369921 () Bool)

(assert (=> b!3385776 (=> (not res!1369921) (not e!2101800))))

(declare-fun lt!1150300 () Bool)

(assert (=> b!3385776 (= res!1369921 lt!1150300)))

(declare-fun b!3385777 () Bool)

(declare-fun res!1369919 () Bool)

(assert (=> b!3385777 (=> (not res!1369919) (not e!2101800))))

(assert (=> b!3385777 (= res!1369919 (not call!244939))))

(declare-fun b!3385778 () Bool)

(declare-fun e!2101798 () Bool)

(assert (=> b!3385778 (= e!2101798 (nullable!3454 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))))))))

(declare-fun b!3385779 () Bool)

(declare-fun res!1369924 () Bool)

(assert (=> b!3385779 (=> (not res!1369924) (not e!2101800))))

(assert (=> b!3385779 (= res!1369924 (isEmpty!21121 (tail!5361 (list!13341 (charsOf!3390 separatorToken!241)))))))

(declare-fun d!961185 () Bool)

(declare-fun e!2101803 () Bool)

(assert (=> d!961185 e!2101803))

(declare-fun c!576739 () Bool)

(assert (=> d!961185 (= c!576739 ((_ is EmptyExpr!10135) (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))))))))

(assert (=> d!961185 (= lt!1150300 e!2101798)))

(declare-fun c!576740 () Bool)

(assert (=> d!961185 (= c!576740 (isEmpty!21121 (list!13341 (charsOf!3390 separatorToken!241))))))

(assert (=> d!961185 (validRegex!4610 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))))))

(assert (=> d!961185 (= (matchR!4727 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))) (list!13341 (charsOf!3390 separatorToken!241))) lt!1150300)))

(declare-fun b!3385773 () Bool)

(assert (=> b!3385773 (= e!2101800 (= (head!7229 (list!13341 (charsOf!3390 separatorToken!241))) (c!576276 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))))))))

(declare-fun b!3385780 () Bool)

(declare-fun res!1369918 () Bool)

(assert (=> b!3385780 (=> res!1369918 e!2101804)))

(assert (=> b!3385780 (= res!1369918 (not (isEmpty!21121 (tail!5361 (list!13341 (charsOf!3390 separatorToken!241))))))))

(declare-fun b!3385781 () Bool)

(assert (=> b!3385781 (= e!2101803 e!2101801)))

(declare-fun c!576738 () Bool)

(assert (=> b!3385781 (= c!576738 ((_ is EmptyLang!10135) (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))))))))

(declare-fun b!3385782 () Bool)

(assert (=> b!3385782 (= e!2101799 e!2101802)))

(declare-fun res!1369922 () Bool)

(assert (=> b!3385782 (=> (not res!1369922) (not e!2101802))))

(assert (=> b!3385782 (= res!1369922 (not lt!1150300))))

(declare-fun b!3385783 () Bool)

(assert (=> b!3385783 (= e!2101803 (= lt!1150300 call!244939))))

(declare-fun bm!244934 () Bool)

(assert (=> bm!244934 (= call!244939 (isEmpty!21121 (list!13341 (charsOf!3390 separatorToken!241))))))

(declare-fun b!3385784 () Bool)

(assert (=> b!3385784 (= e!2101801 (not lt!1150300))))

(declare-fun b!3385785 () Bool)

(assert (=> b!3385785 (= e!2101798 (matchR!4727 (derivativeStep!3007 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241))))) (head!7229 (list!13341 (charsOf!3390 separatorToken!241)))) (tail!5361 (list!13341 (charsOf!3390 separatorToken!241)))))))

(declare-fun b!3385786 () Bool)

(assert (=> b!3385786 (= e!2101804 (not (= (head!7229 (list!13341 (charsOf!3390 separatorToken!241))) (c!576276 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 separatorToken!241)))))))))))

(assert (= (and d!961185 c!576740) b!3385778))

(assert (= (and d!961185 (not c!576740)) b!3385785))

(assert (= (and d!961185 c!576739) b!3385783))

(assert (= (and d!961185 (not c!576739)) b!3385781))

(assert (= (and b!3385781 c!576738) b!3385784))

(assert (= (and b!3385781 (not c!576738)) b!3385775))

(assert (= (and b!3385775 (not res!1369925)) b!3385776))

(assert (= (and b!3385776 res!1369921) b!3385777))

(assert (= (and b!3385777 res!1369919) b!3385779))

(assert (= (and b!3385779 res!1369924) b!3385773))

(assert (= (and b!3385776 (not res!1369920)) b!3385782))

(assert (= (and b!3385782 res!1369922) b!3385774))

(assert (= (and b!3385774 (not res!1369923)) b!3385780))

(assert (= (and b!3385780 (not res!1369918)) b!3385786))

(assert (= (or b!3385783 b!3385774 b!3385777) bm!244934))

(assert (=> b!3385773 m!3748927))

(declare-fun m!3751703 () Bool)

(assert (=> b!3385773 m!3751703))

(assert (=> b!3385779 m!3748927))

(declare-fun m!3751705 () Bool)

(assert (=> b!3385779 m!3751705))

(assert (=> b!3385779 m!3751705))

(declare-fun m!3751707 () Bool)

(assert (=> b!3385779 m!3751707))

(assert (=> b!3385785 m!3748927))

(assert (=> b!3385785 m!3751703))

(assert (=> b!3385785 m!3751703))

(declare-fun m!3751709 () Bool)

(assert (=> b!3385785 m!3751709))

(assert (=> b!3385785 m!3748927))

(assert (=> b!3385785 m!3751705))

(assert (=> b!3385785 m!3751709))

(assert (=> b!3385785 m!3751705))

(declare-fun m!3751711 () Bool)

(assert (=> b!3385785 m!3751711))

(assert (=> d!961185 m!3748927))

(declare-fun m!3751713 () Bool)

(assert (=> d!961185 m!3751713))

(declare-fun m!3751715 () Bool)

(assert (=> d!961185 m!3751715))

(assert (=> bm!244934 m!3748927))

(assert (=> bm!244934 m!3751713))

(declare-fun m!3751717 () Bool)

(assert (=> b!3385778 m!3751717))

(assert (=> b!3385780 m!3748927))

(assert (=> b!3385780 m!3751705))

(assert (=> b!3385780 m!3751705))

(assert (=> b!3385780 m!3751707))

(assert (=> b!3385786 m!3748927))

(assert (=> b!3385786 m!3751703))

(assert (=> b!3384329 d!961185))

(assert (=> b!3384329 d!960511))

(assert (=> b!3384329 d!960507))

(declare-fun d!961187 () Bool)

(declare-fun nullableFct!998 (Regex!10135) Bool)

(assert (=> d!961187 (= (nullable!3454 (regex!5376 (rule!7930 separatorToken!241))) (nullableFct!998 (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun bs!555141 () Bool)

(assert (= bs!555141 d!961187))

(declare-fun m!3751719 () Bool)

(assert (=> bs!555141 m!3751719))

(assert (=> b!3384565 d!961187))

(declare-fun d!961189 () Bool)

(assert (=> d!961189 (= (inv!49957 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))) (isBalanced!3359 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))))))

(declare-fun bs!555142 () Bool)

(assert (= bs!555142 d!961189))

(declare-fun m!3751721 () Bool)

(assert (=> bs!555142 m!3751721))

(assert (=> tb!180375 d!961189))

(assert (=> d!960491 d!960493))

(declare-fun d!961191 () Bool)

(assert (=> d!961191 (not (matchR!4727 (regex!5376 (rule!7930 separatorToken!241)) lt!1149400))))

(assert (=> d!961191 true))

(declare-fun _$127!344 () Unit!51991)

(assert (=> d!961191 (= (choose!19602 (regex!5376 (rule!7930 separatorToken!241)) lt!1149400 lt!1149396) _$127!344)))

(declare-fun bs!555143 () Bool)

(assert (= bs!555143 d!961191))

(assert (=> bs!555143 m!3748899))

(assert (=> d!960491 d!961191))

(assert (=> d!960491 d!960933))

(declare-fun d!961193 () Bool)

(declare-fun lt!1150301 () Token!10118)

(assert (=> d!961193 (= lt!1150301 (apply!8585 (list!13344 (_1!21371 lt!1149540)) 0))))

(assert (=> d!961193 (= lt!1150301 (apply!8586 (c!576278 (_1!21371 lt!1149540)) 0))))

(declare-fun e!2101805 () Bool)

(assert (=> d!961193 e!2101805))

(declare-fun res!1369926 () Bool)

(assert (=> d!961193 (=> (not res!1369926) (not e!2101805))))

(assert (=> d!961193 (= res!1369926 (<= 0 0))))

(assert (=> d!961193 (= (apply!8584 (_1!21371 lt!1149540) 0) lt!1150301)))

(declare-fun b!3385787 () Bool)

(assert (=> b!3385787 (= e!2101805 (< 0 (size!27912 (_1!21371 lt!1149540))))))

(assert (= (and d!961193 res!1369926) b!3385787))

(assert (=> d!961193 m!3751211))

(assert (=> d!961193 m!3751211))

(declare-fun m!3751723 () Bool)

(assert (=> d!961193 m!3751723))

(declare-fun m!3751725 () Bool)

(assert (=> d!961193 m!3751725))

(assert (=> b!3385787 m!3749381))

(assert (=> b!3384177 d!961193))

(declare-fun b!3385788 () Bool)

(declare-fun e!2101806 () Bool)

(declare-fun e!2101808 () Bool)

(assert (=> b!3385788 (= e!2101806 e!2101808)))

(declare-fun c!576742 () Bool)

(assert (=> b!3385788 (= c!576742 ((_ is IntegerValue!16819) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404)))))

(declare-fun b!3385789 () Bool)

(declare-fun res!1369927 () Bool)

(declare-fun e!2101807 () Bool)

(assert (=> b!3385789 (=> res!1369927 e!2101807)))

(assert (=> b!3385789 (= res!1369927 (not ((_ is IntegerValue!16820) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404))))))

(assert (=> b!3385789 (= e!2101808 e!2101807)))

(declare-fun d!961195 () Bool)

(declare-fun c!576743 () Bool)

(assert (=> d!961195 (= c!576743 ((_ is IntegerValue!16818) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404)))))

(assert (=> d!961195 (= (inv!21 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404)) e!2101806)))

(declare-fun b!3385790 () Bool)

(assert (=> b!3385790 (= e!2101808 (inv!17 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404)))))

(declare-fun b!3385791 () Bool)

(assert (=> b!3385791 (= e!2101807 (inv!15 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404)))))

(declare-fun b!3385792 () Bool)

(assert (=> b!3385792 (= e!2101806 (inv!16 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) lt!1149404)))))

(assert (= (and d!961195 c!576743) b!3385792))

(assert (= (and d!961195 (not c!576743)) b!3385788))

(assert (= (and b!3385788 c!576742) b!3385790))

(assert (= (and b!3385788 (not c!576742)) b!3385789))

(assert (= (and b!3385789 (not res!1369927)) b!3385791))

(declare-fun m!3751727 () Bool)

(assert (=> b!3385790 m!3751727))

(declare-fun m!3751729 () Bool)

(assert (=> b!3385791 m!3751729))

(declare-fun m!3751731 () Bool)

(assert (=> b!3385792 m!3751731))

(assert (=> tb!180381 d!961195))

(declare-fun b!3385794 () Bool)

(declare-fun e!2101813 () Bool)

(declare-fun e!2101815 () Bool)

(assert (=> b!3385794 (= e!2101813 e!2101815)))

(declare-fun res!1369933 () Bool)

(assert (=> b!3385794 (=> res!1369933 e!2101815)))

(declare-fun call!244940 () Bool)

(assert (=> b!3385794 (= res!1369933 call!244940)))

(declare-fun b!3385795 () Bool)

(declare-fun res!1369935 () Bool)

(declare-fun e!2101810 () Bool)

(assert (=> b!3385795 (=> res!1369935 e!2101810)))

(assert (=> b!3385795 (= res!1369935 (not ((_ is ElementMatch!10135) (regex!5376 (rule!7930 (h!42296 tokens!494))))))))

(declare-fun e!2101812 () Bool)

(assert (=> b!3385795 (= e!2101812 e!2101810)))

(declare-fun b!3385796 () Bool)

(declare-fun res!1369930 () Bool)

(assert (=> b!3385796 (=> res!1369930 e!2101810)))

(declare-fun e!2101811 () Bool)

(assert (=> b!3385796 (= res!1369930 e!2101811)))

(declare-fun res!1369931 () Bool)

(assert (=> b!3385796 (=> (not res!1369931) (not e!2101811))))

(declare-fun lt!1150302 () Bool)

(assert (=> b!3385796 (= res!1369931 lt!1150302)))

(declare-fun b!3385797 () Bool)

(declare-fun res!1369929 () Bool)

(assert (=> b!3385797 (=> (not res!1369929) (not e!2101811))))

(assert (=> b!3385797 (= res!1369929 (not call!244940))))

(declare-fun b!3385798 () Bool)

(declare-fun e!2101809 () Bool)

(assert (=> b!3385798 (= e!2101809 (nullable!3454 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3385799 () Bool)

(declare-fun res!1369934 () Bool)

(assert (=> b!3385799 (=> (not res!1369934) (not e!2101811))))

(assert (=> b!3385799 (= res!1369934 (isEmpty!21121 (tail!5361 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402))))))))

(declare-fun d!961197 () Bool)

(declare-fun e!2101814 () Bool)

(assert (=> d!961197 e!2101814))

(declare-fun c!576745 () Bool)

(assert (=> d!961197 (= c!576745 ((_ is EmptyExpr!10135) (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(assert (=> d!961197 (= lt!1150302 e!2101809)))

(declare-fun c!576746 () Bool)

(assert (=> d!961197 (= c!576746 (isEmpty!21121 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(assert (=> d!961197 (validRegex!4610 (regex!5376 (rule!7930 (h!42296 tokens!494))))))

(assert (=> d!961197 (= (matchR!4727 (regex!5376 (rule!7930 (h!42296 tokens!494))) (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))) lt!1150302)))

(declare-fun b!3385793 () Bool)

(assert (=> b!3385793 (= e!2101811 (= (head!7229 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))) (c!576276 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))

(declare-fun b!3385800 () Bool)

(declare-fun res!1369928 () Bool)

(assert (=> b!3385800 (=> res!1369928 e!2101815)))

(assert (=> b!3385800 (= res!1369928 (not (isEmpty!21121 (tail!5361 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))))

(declare-fun b!3385801 () Bool)

(assert (=> b!3385801 (= e!2101814 e!2101812)))

(declare-fun c!576744 () Bool)

(assert (=> b!3385801 (= c!576744 ((_ is EmptyLang!10135) (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3385802 () Bool)

(assert (=> b!3385802 (= e!2101810 e!2101813)))

(declare-fun res!1369932 () Bool)

(assert (=> b!3385802 (=> (not res!1369932) (not e!2101813))))

(assert (=> b!3385802 (= res!1369932 (not lt!1150302))))

(declare-fun b!3385803 () Bool)

(assert (=> b!3385803 (= e!2101814 (= lt!1150302 call!244940))))

(declare-fun bm!244935 () Bool)

(assert (=> bm!244935 (= call!244940 (isEmpty!21121 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(declare-fun b!3385804 () Bool)

(assert (=> b!3385804 (= e!2101812 (not lt!1150302))))

(declare-fun b!3385805 () Bool)

(assert (=> b!3385805 (= e!2101809 (matchR!4727 (derivativeStep!3007 (regex!5376 (rule!7930 (h!42296 tokens!494))) (head!7229 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402))))) (tail!5361 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402))))))))

(declare-fun b!3385806 () Bool)

(assert (=> b!3385806 (= e!2101815 (not (= (head!7229 (_1!21375 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))) (c!576276 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))

(assert (= (and d!961197 c!576746) b!3385798))

(assert (= (and d!961197 (not c!576746)) b!3385805))

(assert (= (and d!961197 c!576745) b!3385803))

(assert (= (and d!961197 (not c!576745)) b!3385801))

(assert (= (and b!3385801 c!576744) b!3385804))

(assert (= (and b!3385801 (not c!576744)) b!3385795))

(assert (= (and b!3385795 (not res!1369935)) b!3385796))

(assert (= (and b!3385796 res!1369931) b!3385797))

(assert (= (and b!3385797 res!1369929) b!3385799))

(assert (= (and b!3385799 res!1369934) b!3385793))

(assert (= (and b!3385796 (not res!1369930)) b!3385802))

(assert (= (and b!3385802 res!1369932) b!3385794))

(assert (= (and b!3385794 (not res!1369933)) b!3385800))

(assert (= (and b!3385800 (not res!1369928)) b!3385806))

(assert (= (or b!3385803 b!3385794 b!3385797) bm!244935))

(declare-fun m!3751733 () Bool)

(assert (=> b!3385793 m!3751733))

(declare-fun m!3751735 () Bool)

(assert (=> b!3385799 m!3751735))

(assert (=> b!3385799 m!3751735))

(declare-fun m!3751737 () Bool)

(assert (=> b!3385799 m!3751737))

(assert (=> b!3385805 m!3751733))

(assert (=> b!3385805 m!3751733))

(declare-fun m!3751739 () Bool)

(assert (=> b!3385805 m!3751739))

(assert (=> b!3385805 m!3751735))

(assert (=> b!3385805 m!3751739))

(assert (=> b!3385805 m!3751735))

(declare-fun m!3751741 () Bool)

(assert (=> b!3385805 m!3751741))

(assert (=> d!961197 m!3749619))

(assert (=> d!961197 m!3750609))

(assert (=> bm!244935 m!3749619))

(assert (=> b!3385798 m!3750597))

(assert (=> b!3385800 m!3751735))

(assert (=> b!3385800 m!3751735))

(assert (=> b!3385800 m!3751737))

(assert (=> b!3385806 m!3751733))

(assert (=> b!3384400 d!961197))

(assert (=> b!3384400 d!960713))

(assert (=> b!3384400 d!960837))

(assert (=> b!3384400 d!960423))

(declare-fun d!961199 () Bool)

(assert (=> d!961199 (= (isEmpty!21121 (originalCharacters!6090 separatorToken!241)) ((_ is Nil!36875) (originalCharacters!6090 separatorToken!241)))))

(assert (=> d!960513 d!961199))

(declare-fun b!3385808 () Bool)

(declare-fun e!2101820 () Bool)

(declare-fun e!2101822 () Bool)

(assert (=> b!3385808 (= e!2101820 e!2101822)))

(declare-fun res!1369941 () Bool)

(assert (=> b!3385808 (=> res!1369941 e!2101822)))

(declare-fun call!244941 () Bool)

(assert (=> b!3385808 (= res!1369941 call!244941)))

(declare-fun b!3385809 () Bool)

(declare-fun res!1369943 () Bool)

(declare-fun e!2101817 () Bool)

(assert (=> b!3385809 (=> res!1369943 e!2101817)))

(assert (=> b!3385809 (= res!1369943 (not ((_ is ElementMatch!10135) (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400)))))))

(declare-fun e!2101819 () Bool)

(assert (=> b!3385809 (= e!2101819 e!2101817)))

(declare-fun b!3385810 () Bool)

(declare-fun res!1369938 () Bool)

(assert (=> b!3385810 (=> res!1369938 e!2101817)))

(declare-fun e!2101818 () Bool)

(assert (=> b!3385810 (= res!1369938 e!2101818)))

(declare-fun res!1369939 () Bool)

(assert (=> b!3385810 (=> (not res!1369939) (not e!2101818))))

(declare-fun lt!1150303 () Bool)

(assert (=> b!3385810 (= res!1369939 lt!1150303)))

(declare-fun b!3385811 () Bool)

(declare-fun res!1369937 () Bool)

(assert (=> b!3385811 (=> (not res!1369937) (not e!2101818))))

(assert (=> b!3385811 (= res!1369937 (not call!244941))))

(declare-fun b!3385812 () Bool)

(declare-fun e!2101816 () Bool)

(assert (=> b!3385812 (= e!2101816 (nullable!3454 (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400))))))

(declare-fun b!3385813 () Bool)

(declare-fun res!1369942 () Bool)

(assert (=> b!3385813 (=> (not res!1369942) (not e!2101818))))

(assert (=> b!3385813 (= res!1369942 (isEmpty!21121 (tail!5361 (tail!5361 lt!1149400))))))

(declare-fun d!961201 () Bool)

(declare-fun e!2101821 () Bool)

(assert (=> d!961201 e!2101821))

(declare-fun c!576748 () Bool)

(assert (=> d!961201 (= c!576748 ((_ is EmptyExpr!10135) (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400))))))

(assert (=> d!961201 (= lt!1150303 e!2101816)))

(declare-fun c!576749 () Bool)

(assert (=> d!961201 (= c!576749 (isEmpty!21121 (tail!5361 lt!1149400)))))

(assert (=> d!961201 (validRegex!4610 (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400)))))

(assert (=> d!961201 (= (matchR!4727 (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400)) (tail!5361 lt!1149400)) lt!1150303)))

(declare-fun b!3385807 () Bool)

(assert (=> b!3385807 (= e!2101818 (= (head!7229 (tail!5361 lt!1149400)) (c!576276 (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400)))))))

(declare-fun b!3385814 () Bool)

(declare-fun res!1369936 () Bool)

(assert (=> b!3385814 (=> res!1369936 e!2101822)))

(assert (=> b!3385814 (= res!1369936 (not (isEmpty!21121 (tail!5361 (tail!5361 lt!1149400)))))))

(declare-fun b!3385815 () Bool)

(assert (=> b!3385815 (= e!2101821 e!2101819)))

(declare-fun c!576747 () Bool)

(assert (=> b!3385815 (= c!576747 ((_ is EmptyLang!10135) (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400))))))

(declare-fun b!3385816 () Bool)

(assert (=> b!3385816 (= e!2101817 e!2101820)))

(declare-fun res!1369940 () Bool)

(assert (=> b!3385816 (=> (not res!1369940) (not e!2101820))))

(assert (=> b!3385816 (= res!1369940 (not lt!1150303))))

(declare-fun b!3385817 () Bool)

(assert (=> b!3385817 (= e!2101821 (= lt!1150303 call!244941))))

(declare-fun bm!244936 () Bool)

(assert (=> bm!244936 (= call!244941 (isEmpty!21121 (tail!5361 lt!1149400)))))

(declare-fun b!3385818 () Bool)

(assert (=> b!3385818 (= e!2101819 (not lt!1150303))))

(declare-fun b!3385819 () Bool)

(assert (=> b!3385819 (= e!2101816 (matchR!4727 (derivativeStep!3007 (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400)) (head!7229 (tail!5361 lt!1149400))) (tail!5361 (tail!5361 lt!1149400))))))

(declare-fun b!3385820 () Bool)

(assert (=> b!3385820 (= e!2101822 (not (= (head!7229 (tail!5361 lt!1149400)) (c!576276 (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400))))))))

(assert (= (and d!961201 c!576749) b!3385812))

(assert (= (and d!961201 (not c!576749)) b!3385819))

(assert (= (and d!961201 c!576748) b!3385817))

(assert (= (and d!961201 (not c!576748)) b!3385815))

(assert (= (and b!3385815 c!576747) b!3385818))

(assert (= (and b!3385815 (not c!576747)) b!3385809))

(assert (= (and b!3385809 (not res!1369943)) b!3385810))

(assert (= (and b!3385810 res!1369939) b!3385811))

(assert (= (and b!3385811 res!1369937) b!3385813))

(assert (= (and b!3385813 res!1369942) b!3385807))

(assert (= (and b!3385810 (not res!1369938)) b!3385816))

(assert (= (and b!3385816 res!1369940) b!3385808))

(assert (= (and b!3385808 (not res!1369941)) b!3385814))

(assert (= (and b!3385814 (not res!1369936)) b!3385820))

(assert (= (or b!3385817 b!3385808 b!3385811) bm!244936))

(assert (=> b!3385807 m!3749491))

(declare-fun m!3751743 () Bool)

(assert (=> b!3385807 m!3751743))

(assert (=> b!3385813 m!3749491))

(declare-fun m!3751745 () Bool)

(assert (=> b!3385813 m!3751745))

(assert (=> b!3385813 m!3751745))

(declare-fun m!3751747 () Bool)

(assert (=> b!3385813 m!3751747))

(assert (=> b!3385819 m!3749491))

(assert (=> b!3385819 m!3751743))

(assert (=> b!3385819 m!3749775))

(assert (=> b!3385819 m!3751743))

(declare-fun m!3751749 () Bool)

(assert (=> b!3385819 m!3751749))

(assert (=> b!3385819 m!3749491))

(assert (=> b!3385819 m!3751745))

(assert (=> b!3385819 m!3751749))

(assert (=> b!3385819 m!3751745))

(declare-fun m!3751751 () Bool)

(assert (=> b!3385819 m!3751751))

(assert (=> d!961201 m!3749491))

(assert (=> d!961201 m!3749493))

(assert (=> d!961201 m!3749775))

(declare-fun m!3751753 () Bool)

(assert (=> d!961201 m!3751753))

(assert (=> bm!244936 m!3749491))

(assert (=> bm!244936 m!3749493))

(assert (=> b!3385812 m!3749775))

(declare-fun m!3751755 () Bool)

(assert (=> b!3385812 m!3751755))

(assert (=> b!3385814 m!3749491))

(assert (=> b!3385814 m!3751745))

(assert (=> b!3385814 m!3751745))

(assert (=> b!3385814 m!3751747))

(assert (=> b!3385820 m!3749491))

(assert (=> b!3385820 m!3751743))

(assert (=> b!3384572 d!961201))

(declare-fun b!3385841 () Bool)

(declare-fun e!2101837 () Regex!10135)

(declare-fun e!2101833 () Regex!10135)

(assert (=> b!3385841 (= e!2101837 e!2101833)))

(declare-fun c!576760 () Bool)

(assert (=> b!3385841 (= c!576760 ((_ is Star!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun b!3385842 () Bool)

(declare-fun e!2101836 () Regex!10135)

(assert (=> b!3385842 (= e!2101836 (ite (= (head!7229 lt!1149400) (c!576276 (regex!5376 (rule!7930 separatorToken!241)))) EmptyExpr!10135 EmptyLang!10135))))

(declare-fun bm!244945 () Bool)

(declare-fun c!576764 () Bool)

(declare-fun call!244953 () Regex!10135)

(assert (=> bm!244945 (= call!244953 (derivativeStep!3007 (ite c!576764 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576760 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) (head!7229 lt!1149400)))))

(declare-fun b!3385843 () Bool)

(declare-fun c!576761 () Bool)

(assert (=> b!3385843 (= c!576761 (nullable!3454 (regOne!20782 (regex!5376 (rule!7930 separatorToken!241)))))))

(declare-fun e!2101834 () Regex!10135)

(assert (=> b!3385843 (= e!2101833 e!2101834)))

(declare-fun d!961203 () Bool)

(declare-fun lt!1150306 () Regex!10135)

(assert (=> d!961203 (validRegex!4610 lt!1150306)))

(declare-fun e!2101835 () Regex!10135)

(assert (=> d!961203 (= lt!1150306 e!2101835)))

(declare-fun c!576762 () Bool)

(assert (=> d!961203 (= c!576762 (or ((_ is EmptyExpr!10135) (regex!5376 (rule!7930 separatorToken!241))) ((_ is EmptyLang!10135) (regex!5376 (rule!7930 separatorToken!241)))))))

(assert (=> d!961203 (validRegex!4610 (regex!5376 (rule!7930 separatorToken!241)))))

(assert (=> d!961203 (= (derivativeStep!3007 (regex!5376 (rule!7930 separatorToken!241)) (head!7229 lt!1149400)) lt!1150306)))

(declare-fun b!3385844 () Bool)

(assert (=> b!3385844 (= e!2101835 e!2101836)))

(declare-fun c!576763 () Bool)

(assert (=> b!3385844 (= c!576763 ((_ is ElementMatch!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun b!3385845 () Bool)

(declare-fun call!244952 () Regex!10135)

(assert (=> b!3385845 (= e!2101837 (Union!10135 call!244952 call!244953))))

(declare-fun bm!244946 () Bool)

(declare-fun call!244951 () Regex!10135)

(assert (=> bm!244946 (= call!244951 call!244953)))

(declare-fun b!3385846 () Bool)

(assert (=> b!3385846 (= e!2101833 (Concat!15741 call!244951 (regex!5376 (rule!7930 separatorToken!241))))))

(declare-fun b!3385847 () Bool)

(assert (=> b!3385847 (= e!2101835 EmptyLang!10135)))

(declare-fun bm!244947 () Bool)

(assert (=> bm!244947 (= call!244952 (derivativeStep!3007 (ite c!576764 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))) (head!7229 lt!1149400)))))

(declare-fun b!3385848 () Bool)

(declare-fun call!244950 () Regex!10135)

(assert (=> b!3385848 (= e!2101834 (Union!10135 (Concat!15741 call!244950 (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))) call!244952))))

(declare-fun b!3385849 () Bool)

(assert (=> b!3385849 (= e!2101834 (Union!10135 (Concat!15741 call!244950 (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))) EmptyLang!10135))))

(declare-fun bm!244948 () Bool)

(assert (=> bm!244948 (= call!244950 call!244951)))

(declare-fun b!3385850 () Bool)

(assert (=> b!3385850 (= c!576764 ((_ is Union!10135) (regex!5376 (rule!7930 separatorToken!241))))))

(assert (=> b!3385850 (= e!2101836 e!2101837)))

(assert (= (and d!961203 c!576762) b!3385847))

(assert (= (and d!961203 (not c!576762)) b!3385844))

(assert (= (and b!3385844 c!576763) b!3385842))

(assert (= (and b!3385844 (not c!576763)) b!3385850))

(assert (= (and b!3385850 c!576764) b!3385845))

(assert (= (and b!3385850 (not c!576764)) b!3385841))

(assert (= (and b!3385841 c!576760) b!3385846))

(assert (= (and b!3385841 (not c!576760)) b!3385843))

(assert (= (and b!3385843 c!576761) b!3385848))

(assert (= (and b!3385843 (not c!576761)) b!3385849))

(assert (= (or b!3385848 b!3385849) bm!244948))

(assert (= (or b!3385846 bm!244948) bm!244946))

(assert (= (or b!3385845 b!3385848) bm!244947))

(assert (= (or b!3385845 bm!244946) bm!244945))

(assert (=> bm!244945 m!3748977))

(declare-fun m!3751757 () Bool)

(assert (=> bm!244945 m!3751757))

(declare-fun m!3751759 () Bool)

(assert (=> b!3385843 m!3751759))

(declare-fun m!3751761 () Bool)

(assert (=> d!961203 m!3751761))

(assert (=> d!961203 m!3749773))

(assert (=> bm!244947 m!3748977))

(declare-fun m!3751763 () Bool)

(assert (=> bm!244947 m!3751763))

(assert (=> b!3384572 d!961203))

(assert (=> b!3384572 d!960419))

(assert (=> b!3384572 d!961023))

(declare-fun d!961205 () Bool)

(declare-fun lt!1150307 () Int)

(assert (=> d!961205 (= lt!1150307 (size!27909 (list!13341 (_2!21371 lt!1149484))))))

(assert (=> d!961205 (= lt!1150307 (size!27916 (c!576277 (_2!21371 lt!1149484))))))

(assert (=> d!961205 (= (size!27911 (_2!21371 lt!1149484)) lt!1150307)))

(declare-fun bs!555144 () Bool)

(assert (= bs!555144 d!961205))

(assert (=> bs!555144 m!3749195))

(assert (=> bs!555144 m!3749195))

(declare-fun m!3751765 () Bool)

(assert (=> bs!555144 m!3751765))

(declare-fun m!3751767 () Bool)

(assert (=> bs!555144 m!3751767))

(assert (=> b!3384053 d!961205))

(declare-fun d!961207 () Bool)

(declare-fun lt!1150308 () Int)

(assert (=> d!961207 (= lt!1150308 (size!27909 (list!13341 lt!1149404)))))

(assert (=> d!961207 (= lt!1150308 (size!27916 (c!576277 lt!1149404)))))

(assert (=> d!961207 (= (size!27911 lt!1149404) lt!1150308)))

(declare-fun bs!555145 () Bool)

(assert (= bs!555145 d!961207))

(assert (=> bs!555145 m!3749197))

(assert (=> bs!555145 m!3749197))

(declare-fun m!3751769 () Bool)

(assert (=> bs!555145 m!3751769))

(declare-fun m!3751771 () Bool)

(assert (=> bs!555145 m!3751771))

(assert (=> b!3384053 d!961207))

(declare-fun d!961209 () Bool)

(assert (=> d!961209 (= (isEmpty!21132 lt!1149411) (not ((_ is Some!7400) lt!1149411)))))

(assert (=> d!960413 d!961209))

(declare-fun d!961211 () Bool)

(declare-fun lt!1150309 () Bool)

(assert (=> d!961211 (= lt!1150309 (select (content!5086 rules!2135) (get!11774 lt!1149654)))))

(declare-fun e!2101839 () Bool)

(assert (=> d!961211 (= lt!1150309 e!2101839)))

(declare-fun res!1369945 () Bool)

(assert (=> d!961211 (=> (not res!1369945) (not e!2101839))))

(assert (=> d!961211 (= res!1369945 ((_ is Cons!36877) rules!2135))))

(assert (=> d!961211 (= (contains!6751 rules!2135 (get!11774 lt!1149654)) lt!1150309)))

(declare-fun b!3385851 () Bool)

(declare-fun e!2101838 () Bool)

(assert (=> b!3385851 (= e!2101839 e!2101838)))

(declare-fun res!1369944 () Bool)

(assert (=> b!3385851 (=> res!1369944 e!2101838)))

(assert (=> b!3385851 (= res!1369944 (= (h!42297 rules!2135) (get!11774 lt!1149654)))))

(declare-fun b!3385852 () Bool)

(assert (=> b!3385852 (= e!2101838 (contains!6751 (t!263604 rules!2135) (get!11774 lt!1149654)))))

(assert (= (and d!961211 res!1369945) b!3385851))

(assert (= (and b!3385851 (not res!1369944)) b!3385852))

(assert (=> d!961211 m!3749419))

(assert (=> d!961211 m!3749739))

(declare-fun m!3751773 () Bool)

(assert (=> d!961211 m!3751773))

(assert (=> b!3385852 m!3749739))

(declare-fun m!3751775 () Bool)

(assert (=> b!3385852 m!3751775))

(assert (=> b!3384539 d!961211))

(assert (=> b!3384539 d!961089))

(declare-fun bm!244949 () Bool)

(declare-fun call!244955 () List!36999)

(declare-fun call!244956 () List!36999)

(assert (=> bm!244949 (= call!244955 call!244956)))

(declare-fun c!576765 () Bool)

(declare-fun bm!244950 () Bool)

(declare-fun call!244954 () List!36999)

(assert (=> bm!244950 (= call!244954 (usedCharacters!632 (ite c!576765 (regTwo!20783 (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))) (regOne!20782 (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))))))

(declare-fun call!244957 () List!36999)

(declare-fun bm!244951 () Bool)

(assert (=> bm!244951 (= call!244957 (++!9017 (ite c!576765 call!244955 call!244954) (ite c!576765 call!244954 call!244955)))))

(declare-fun b!3385853 () Bool)

(declare-fun e!2101843 () List!36999)

(assert (=> b!3385853 (= e!2101843 Nil!36875)))

(declare-fun d!961213 () Bool)

(declare-fun c!576766 () Bool)

(assert (=> d!961213 (= c!576766 (or ((_ is EmptyExpr!10135) (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))) ((_ is EmptyLang!10135) (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))))

(assert (=> d!961213 (= (usedCharacters!632 (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))) e!2101843)))

(declare-fun b!3385854 () Bool)

(declare-fun e!2101842 () List!36999)

(assert (=> b!3385854 (= e!2101842 call!244956)))

(declare-fun b!3385855 () Bool)

(declare-fun e!2101840 () List!36999)

(assert (=> b!3385855 (= e!2101840 call!244957)))

(declare-fun b!3385856 () Bool)

(declare-fun e!2101841 () List!36999)

(assert (=> b!3385856 (= e!2101843 e!2101841)))

(declare-fun c!576767 () Bool)

(assert (=> b!3385856 (= c!576767 ((_ is ElementMatch!10135) (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))))

(declare-fun bm!244952 () Bool)

(declare-fun c!576768 () Bool)

(assert (=> bm!244952 (= call!244956 (usedCharacters!632 (ite c!576768 (reg!10464 (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))) (ite c!576765 (regOne!20783 (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))) (regTwo!20782 (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))))))

(declare-fun b!3385857 () Bool)

(assert (=> b!3385857 (= e!2101842 e!2101840)))

(assert (=> b!3385857 (= c!576765 ((_ is Union!10135) (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))))

(declare-fun b!3385858 () Bool)

(assert (=> b!3385858 (= c!576768 ((_ is Star!10135) (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))))

(assert (=> b!3385858 (= e!2101841 e!2101842)))

(declare-fun b!3385859 () Bool)

(assert (=> b!3385859 (= e!2101841 (Cons!36875 (c!576276 (ite c!576352 (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (ite c!576349 (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))) Nil!36875))))

(declare-fun b!3385860 () Bool)

(assert (=> b!3385860 (= e!2101840 call!244957)))

(assert (= (and d!961213 c!576766) b!3385853))

(assert (= (and d!961213 (not c!576766)) b!3385856))

(assert (= (and b!3385856 c!576767) b!3385859))

(assert (= (and b!3385856 (not c!576767)) b!3385858))

(assert (= (and b!3385858 c!576768) b!3385854))

(assert (= (and b!3385858 (not c!576768)) b!3385857))

(assert (= (and b!3385857 c!576765) b!3385860))

(assert (= (and b!3385857 (not c!576765)) b!3385855))

(assert (= (or b!3385860 b!3385855) bm!244950))

(assert (= (or b!3385860 b!3385855) bm!244949))

(assert (= (or b!3385860 b!3385855) bm!244951))

(assert (= (or b!3385854 bm!244949) bm!244952))

(declare-fun m!3751777 () Bool)

(assert (=> bm!244950 m!3751777))

(declare-fun m!3751779 () Bool)

(assert (=> bm!244951 m!3751779))

(declare-fun m!3751781 () Bool)

(assert (=> bm!244952 m!3751781))

(assert (=> bm!244778 d!961213))

(declare-fun bm!244953 () Bool)

(declare-fun call!244959 () List!36999)

(declare-fun call!244960 () List!36999)

(assert (=> bm!244953 (= call!244959 call!244960)))

(declare-fun c!576769 () Bool)

(declare-fun call!244958 () List!36999)

(declare-fun bm!244954 () Bool)

(assert (=> bm!244954 (= call!244958 (usedCharacters!632 (ite c!576769 (regTwo!20783 (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) (regOne!20782 (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))))))))

(declare-fun call!244961 () List!36999)

(declare-fun bm!244955 () Bool)

(assert (=> bm!244955 (= call!244961 (++!9017 (ite c!576769 call!244959 call!244958) (ite c!576769 call!244958 call!244959)))))

(declare-fun b!3385861 () Bool)

(declare-fun e!2101847 () List!36999)

(assert (=> b!3385861 (= e!2101847 Nil!36875)))

(declare-fun d!961215 () Bool)

(declare-fun c!576770 () Bool)

(assert (=> d!961215 (= c!576770 (or ((_ is EmptyExpr!10135) (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) ((_ is EmptyLang!10135) (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241)))))))))

(assert (=> d!961215 (= (usedCharacters!632 (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) e!2101847)))

(declare-fun b!3385862 () Bool)

(declare-fun e!2101846 () List!36999)

(assert (=> b!3385862 (= e!2101846 call!244960)))

(declare-fun b!3385863 () Bool)

(declare-fun e!2101844 () List!36999)

(assert (=> b!3385863 (= e!2101844 call!244961)))

(declare-fun b!3385864 () Bool)

(declare-fun e!2101845 () List!36999)

(assert (=> b!3385864 (= e!2101847 e!2101845)))

(declare-fun c!576771 () Bool)

(assert (=> b!3385864 (= c!576771 ((_ is ElementMatch!10135) (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))))))

(declare-fun bm!244956 () Bool)

(declare-fun c!576772 () Bool)

(assert (=> bm!244956 (= call!244960 (usedCharacters!632 (ite c!576772 (reg!10464 (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) (ite c!576769 (regOne!20783 (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) (regTwo!20782 (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241)))))))))))

(declare-fun b!3385865 () Bool)

(assert (=> b!3385865 (= e!2101846 e!2101844)))

(assert (=> b!3385865 (= c!576769 ((_ is Union!10135) (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))))))

(declare-fun b!3385866 () Bool)

(assert (=> b!3385866 (= c!576772 ((_ is Star!10135) (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))))))

(assert (=> b!3385866 (= e!2101845 e!2101846)))

(declare-fun b!3385867 () Bool)

(assert (=> b!3385867 (= e!2101845 (Cons!36875 (c!576276 (ite c!576406 (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) Nil!36875))))

(declare-fun b!3385868 () Bool)

(assert (=> b!3385868 (= e!2101844 call!244961)))

(assert (= (and d!961215 c!576770) b!3385861))

(assert (= (and d!961215 (not c!576770)) b!3385864))

(assert (= (and b!3385864 c!576771) b!3385867))

(assert (= (and b!3385864 (not c!576771)) b!3385866))

(assert (= (and b!3385866 c!576772) b!3385862))

(assert (= (and b!3385866 (not c!576772)) b!3385865))

(assert (= (and b!3385865 c!576769) b!3385868))

(assert (= (and b!3385865 (not c!576769)) b!3385863))

(assert (= (or b!3385868 b!3385863) bm!244954))

(assert (= (or b!3385868 b!3385863) bm!244953))

(assert (= (or b!3385868 b!3385863) bm!244955))

(assert (= (or b!3385862 bm!244953) bm!244956))

(declare-fun m!3751783 () Bool)

(assert (=> bm!244954 m!3751783))

(declare-fun m!3751785 () Bool)

(assert (=> bm!244955 m!3751785))

(declare-fun m!3751787 () Bool)

(assert (=> bm!244956 m!3751787))

(assert (=> bm!244788 d!961215))

(declare-fun b!3385872 () Bool)

(declare-fun e!2101849 () List!36999)

(assert (=> b!3385872 (= e!2101849 (++!9017 (list!13345 (left!28749 (c!576277 (charsOf!3390 separatorToken!241)))) (list!13345 (right!29079 (c!576277 (charsOf!3390 separatorToken!241))))))))

(declare-fun b!3385869 () Bool)

(declare-fun e!2101848 () List!36999)

(assert (=> b!3385869 (= e!2101848 Nil!36875)))

(declare-fun d!961217 () Bool)

(declare-fun c!576773 () Bool)

(assert (=> d!961217 (= c!576773 ((_ is Empty!11127) (c!576277 (charsOf!3390 separatorToken!241))))))

(assert (=> d!961217 (= (list!13345 (c!576277 (charsOf!3390 separatorToken!241))) e!2101848)))

(declare-fun b!3385871 () Bool)

(assert (=> b!3385871 (= e!2101849 (list!13349 (xs!14281 (c!576277 (charsOf!3390 separatorToken!241)))))))

(declare-fun b!3385870 () Bool)

(assert (=> b!3385870 (= e!2101848 e!2101849)))

(declare-fun c!576774 () Bool)

(assert (=> b!3385870 (= c!576774 ((_ is Leaf!17426) (c!576277 (charsOf!3390 separatorToken!241))))))

(assert (= (and d!961217 c!576773) b!3385869))

(assert (= (and d!961217 (not c!576773)) b!3385870))

(assert (= (and b!3385870 c!576774) b!3385871))

(assert (= (and b!3385870 (not c!576774)) b!3385872))

(declare-fun m!3751789 () Bool)

(assert (=> b!3385872 m!3751789))

(declare-fun m!3751791 () Bool)

(assert (=> b!3385872 m!3751791))

(assert (=> b!3385872 m!3751789))

(assert (=> b!3385872 m!3751791))

(declare-fun m!3751793 () Bool)

(assert (=> b!3385872 m!3751793))

(declare-fun m!3751795 () Bool)

(assert (=> b!3385871 m!3751795))

(assert (=> d!960507 d!961217))

(declare-fun d!961219 () Bool)

(declare-fun lt!1150310 () Int)

(assert (=> d!961219 (>= lt!1150310 0)))

(declare-fun e!2101850 () Int)

(assert (=> d!961219 (= lt!1150310 e!2101850)))

(declare-fun c!576775 () Bool)

(assert (=> d!961219 (= c!576775 ((_ is Nil!36875) (originalCharacters!6090 (h!42296 tokens!494))))))

(assert (=> d!961219 (= (size!27909 (originalCharacters!6090 (h!42296 tokens!494))) lt!1150310)))

(declare-fun b!3385873 () Bool)

(assert (=> b!3385873 (= e!2101850 0)))

(declare-fun b!3385874 () Bool)

(assert (=> b!3385874 (= e!2101850 (+ 1 (size!27909 (t!263602 (originalCharacters!6090 (h!42296 tokens!494))))))))

(assert (= (and d!961219 c!576775) b!3385873))

(assert (= (and d!961219 (not c!576775)) b!3385874))

(declare-fun m!3751797 () Bool)

(assert (=> b!3385874 m!3751797))

(assert (=> b!3384212 d!961219))

(declare-fun d!961221 () Bool)

(declare-fun res!1369946 () Bool)

(declare-fun e!2101851 () Bool)

(assert (=> d!961221 (=> res!1369946 e!2101851)))

(assert (=> d!961221 (= res!1369946 (not ((_ is Cons!36877) (t!263604 rules!2135))))))

(assert (=> d!961221 (= (sepAndNonSepRulesDisjointChars!1570 rules!2135 (t!263604 rules!2135)) e!2101851)))

(declare-fun b!3385875 () Bool)

(declare-fun e!2101852 () Bool)

(assert (=> b!3385875 (= e!2101851 e!2101852)))

(declare-fun res!1369947 () Bool)

(assert (=> b!3385875 (=> (not res!1369947) (not e!2101852))))

(assert (=> b!3385875 (= res!1369947 (ruleDisjointCharsFromAllFromOtherType!680 (h!42297 (t!263604 rules!2135)) rules!2135))))

(declare-fun b!3385876 () Bool)

(assert (=> b!3385876 (= e!2101852 (sepAndNonSepRulesDisjointChars!1570 rules!2135 (t!263604 (t!263604 rules!2135))))))

(assert (= (and d!961221 (not res!1369946)) b!3385875))

(assert (= (and b!3385875 res!1369947) b!3385876))

(declare-fun m!3751799 () Bool)

(assert (=> b!3385875 m!3751799))

(declare-fun m!3751801 () Bool)

(assert (=> b!3385876 m!3751801))

(assert (=> b!3384130 d!961221))

(declare-fun d!961223 () Bool)

(assert (=> d!961223 (= (inv!49949 (tag!5954 (rule!7930 (h!42296 (t!263603 tokens!494))))) (= (mod (str.len (value!173675 (tag!5954 (rule!7930 (h!42296 (t!263603 tokens!494)))))) 2) 0))))

(assert (=> b!3384649 d!961223))

(declare-fun d!961225 () Bool)

(declare-fun res!1369948 () Bool)

(declare-fun e!2101853 () Bool)

(assert (=> d!961225 (=> (not res!1369948) (not e!2101853))))

(assert (=> d!961225 (= res!1369948 (semiInverseModEq!2245 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))))))

(assert (=> d!961225 (= (inv!49953 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) e!2101853)))

(declare-fun b!3385877 () Bool)

(assert (=> b!3385877 (= e!2101853 (equivClasses!2144 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))))))

(assert (= (and d!961225 res!1369948) b!3385877))

(declare-fun m!3751803 () Bool)

(assert (=> d!961225 m!3751803))

(declare-fun m!3751805 () Bool)

(assert (=> b!3385877 m!3751805))

(assert (=> b!3384649 d!961225))

(declare-fun d!961227 () Bool)

(assert (=> d!961227 (= (isEmpty!21132 lt!1149654) (not ((_ is Some!7400) lt!1149654)))))

(assert (=> d!960475 d!961227))

(assert (=> d!960475 d!960327))

(declare-fun bm!244957 () Bool)

(declare-fun call!244963 () List!36999)

(declare-fun call!244964 () List!36999)

(assert (=> bm!244957 (= call!244963 call!244964)))

(declare-fun bm!244958 () Bool)

(declare-fun call!244962 () List!36999)

(declare-fun c!576776 () Bool)

(assert (=> bm!244958 (= call!244962 (usedCharacters!632 (ite c!576776 (regTwo!20783 (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))) (regOne!20782 (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))))))))

(declare-fun bm!244959 () Bool)

(declare-fun call!244965 () List!36999)

(assert (=> bm!244959 (= call!244965 (++!9017 (ite c!576776 call!244963 call!244962) (ite c!576776 call!244962 call!244963)))))

(declare-fun b!3385878 () Bool)

(declare-fun e!2101857 () List!36999)

(assert (=> b!3385878 (= e!2101857 Nil!36875)))

(declare-fun d!961229 () Bool)

(declare-fun c!576777 () Bool)

(assert (=> d!961229 (= c!576777 (or ((_ is EmptyExpr!10135) (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))) ((_ is EmptyLang!10135) (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241))))))))))

(assert (=> d!961229 (= (usedCharacters!632 (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))) e!2101857)))

(declare-fun b!3385879 () Bool)

(declare-fun e!2101856 () List!36999)

(assert (=> b!3385879 (= e!2101856 call!244964)))

(declare-fun b!3385880 () Bool)

(declare-fun e!2101854 () List!36999)

(assert (=> b!3385880 (= e!2101854 call!244965)))

(declare-fun b!3385881 () Bool)

(declare-fun e!2101855 () List!36999)

(assert (=> b!3385881 (= e!2101857 e!2101855)))

(declare-fun c!576778 () Bool)

(assert (=> b!3385881 (= c!576778 ((_ is ElementMatch!10135) (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))))))

(declare-fun bm!244960 () Bool)

(declare-fun c!576779 () Bool)

(assert (=> bm!244960 (= call!244964 (usedCharacters!632 (ite c!576779 (reg!10464 (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))) (ite c!576776 (regOne!20783 (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))) (regTwo!20782 (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241))))))))))))

(declare-fun b!3385882 () Bool)

(assert (=> b!3385882 (= e!2101856 e!2101854)))

(assert (=> b!3385882 (= c!576776 ((_ is Union!10135) (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))))))

(declare-fun b!3385883 () Bool)

(assert (=> b!3385883 (= c!576779 ((_ is Star!10135) (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))))))

(assert (=> b!3385883 (= e!2101855 e!2101856)))

(declare-fun b!3385884 () Bool)

(assert (=> b!3385884 (= e!2101855 (Cons!36875 (c!576276 (ite c!576409 (reg!10464 (regex!5376 (rule!7930 separatorToken!241))) (ite c!576406 (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241)))))) Nil!36875))))

(declare-fun b!3385885 () Bool)

(assert (=> b!3385885 (= e!2101854 call!244965)))

(assert (= (and d!961229 c!576777) b!3385878))

(assert (= (and d!961229 (not c!576777)) b!3385881))

(assert (= (and b!3385881 c!576778) b!3385884))

(assert (= (and b!3385881 (not c!576778)) b!3385883))

(assert (= (and b!3385883 c!576779) b!3385879))

(assert (= (and b!3385883 (not c!576779)) b!3385882))

(assert (= (and b!3385882 c!576776) b!3385885))

(assert (= (and b!3385882 (not c!576776)) b!3385880))

(assert (= (or b!3385885 b!3385880) bm!244958))

(assert (= (or b!3385885 b!3385880) bm!244957))

(assert (= (or b!3385885 b!3385880) bm!244959))

(assert (= (or b!3385879 bm!244957) bm!244960))

(declare-fun m!3751807 () Bool)

(assert (=> bm!244958 m!3751807))

(declare-fun m!3751809 () Bool)

(assert (=> bm!244959 m!3751809))

(declare-fun m!3751811 () Bool)

(assert (=> bm!244960 m!3751811))

(assert (=> bm!244790 d!961229))

(declare-fun d!961231 () Bool)

(assert (=> d!961231 (= (list!13341 lt!1149673) (list!13345 (c!576277 lt!1149673)))))

(declare-fun bs!555146 () Bool)

(assert (= bs!555146 d!961231))

(declare-fun m!3751813 () Bool)

(assert (=> bs!555146 m!3751813))

(assert (=> d!960511 d!961231))

(declare-fun bs!555147 () Bool)

(declare-fun d!961233 () Bool)

(assert (= bs!555147 (and d!961233 b!3383855)))

(declare-fun lambda!120596 () Int)

(assert (=> bs!555147 (not (= lambda!120596 lambda!120549))))

(declare-fun bs!555148 () Bool)

(assert (= bs!555148 (and d!961233 d!960333)))

(assert (=> bs!555148 (= lambda!120596 lambda!120554)))

(declare-fun b!3385908 () Bool)

(declare-fun e!2101874 () Bool)

(assert (=> b!3385908 (= e!2101874 true)))

(declare-fun b!3385907 () Bool)

(declare-fun e!2101873 () Bool)

(assert (=> b!3385907 (= e!2101873 e!2101874)))

(declare-fun b!3385906 () Bool)

(declare-fun e!2101872 () Bool)

(assert (=> b!3385906 (= e!2101872 e!2101873)))

(assert (=> d!961233 e!2101872))

(assert (= b!3385907 b!3385908))

(assert (= b!3385906 b!3385907))

(assert (= (and d!961233 ((_ is Cons!36877) rules!2135)) b!3385906))

(assert (=> b!3385908 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (h!42297 rules!2135)))) (dynLambda!15349 order!19429 lambda!120596))))

(assert (=> b!3385908 (< (dynLambda!15350 order!19431 (toChars!7423 (transformation!5376 (h!42297 rules!2135)))) (dynLambda!15349 order!19429 lambda!120596))))

(assert (=> d!961233 true))

(declare-fun lt!1150381 () Bool)

(assert (=> d!961233 (= lt!1150381 (forall!7765 (list!13344 lt!1149412) lambda!120596))))

(declare-fun e!2101871 () Bool)

(assert (=> d!961233 (= lt!1150381 e!2101871)))

(declare-fun res!1369955 () Bool)

(assert (=> d!961233 (=> res!1369955 e!2101871)))

(assert (=> d!961233 (= res!1369955 (not ((_ is Cons!36876) (list!13344 lt!1149412))))))

(assert (=> d!961233 (not (isEmpty!21123 rules!2135))))

(assert (=> d!961233 (= (rulesProduceEachTokenIndividuallyList!1816 thiss!18206 rules!2135 (list!13344 lt!1149412)) lt!1150381)))

(declare-fun b!3385904 () Bool)

(declare-fun e!2101870 () Bool)

(assert (=> b!3385904 (= e!2101871 e!2101870)))

(declare-fun res!1369956 () Bool)

(assert (=> b!3385904 (=> (not res!1369956) (not e!2101870))))

(assert (=> b!3385904 (= res!1369956 (rulesProduceIndividualToken!2457 thiss!18206 rules!2135 (h!42296 (list!13344 lt!1149412))))))

(declare-fun b!3385905 () Bool)

(assert (=> b!3385905 (= e!2101870 (rulesProduceEachTokenIndividuallyList!1816 thiss!18206 rules!2135 (t!263603 (list!13344 lt!1149412))))))

(assert (= (and d!961233 (not res!1369955)) b!3385904))

(assert (= (and b!3385904 res!1369956) b!3385905))

(assert (=> d!961233 m!3749305))

(declare-fun m!3751815 () Bool)

(assert (=> d!961233 m!3751815))

(assert (=> d!961233 m!3748881))

(declare-fun m!3751817 () Bool)

(assert (=> b!3385904 m!3751817))

(declare-fun m!3751819 () Bool)

(assert (=> b!3385905 m!3751819))

(assert (=> b!3384111 d!961233))

(assert (=> b!3384111 d!961085))

(assert (=> b!3384402 d!961071))

(declare-fun d!961235 () Bool)

(declare-fun lt!1150382 () Int)

(assert (=> d!961235 (>= lt!1150382 0)))

(declare-fun e!2101875 () Int)

(assert (=> d!961235 (= lt!1150382 e!2101875)))

(declare-fun c!576786 () Bool)

(assert (=> d!961235 (= c!576786 ((_ is Nil!36875) lt!1149669))))

(assert (=> d!961235 (= (size!27909 lt!1149669) lt!1150382)))

(declare-fun b!3385909 () Bool)

(assert (=> b!3385909 (= e!2101875 0)))

(declare-fun b!3385910 () Bool)

(assert (=> b!3385910 (= e!2101875 (+ 1 (size!27909 (t!263602 lt!1149669))))))

(assert (= (and d!961235 c!576786) b!3385909))

(assert (= (and d!961235 (not c!576786)) b!3385910))

(declare-fun m!3751821 () Bool)

(assert (=> b!3385910 m!3751821))

(assert (=> b!3384599 d!961235))

(assert (=> b!3384599 d!960423))

(declare-fun d!961237 () Bool)

(declare-fun lt!1150383 () Int)

(assert (=> d!961237 (>= lt!1150383 0)))

(declare-fun e!2101876 () Int)

(assert (=> d!961237 (= lt!1150383 e!2101876)))

(declare-fun c!576787 () Bool)

(assert (=> d!961237 (= c!576787 ((_ is Nil!36875) lt!1149400))))

(assert (=> d!961237 (= (size!27909 lt!1149400) lt!1150383)))

(declare-fun b!3385911 () Bool)

(assert (=> b!3385911 (= e!2101876 0)))

(declare-fun b!3385912 () Bool)

(assert (=> b!3385912 (= e!2101876 (+ 1 (size!27909 (t!263602 lt!1149400))))))

(assert (= (and d!961237 c!576787) b!3385911))

(assert (= (and d!961237 (not c!576787)) b!3385912))

(declare-fun m!3751823 () Bool)

(assert (=> b!3385912 m!3751823))

(assert (=> b!3384599 d!961237))

(declare-fun bs!555149 () Bool)

(declare-fun d!961239 () Bool)

(assert (= bs!555149 (and d!961239 d!960851)))

(declare-fun lambda!120597 () Int)

(assert (=> bs!555149 (= (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241)))) (= lambda!120597 lambda!120582))))

(assert (=> d!961239 true))

(assert (=> d!961239 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (dynLambda!15359 order!19445 lambda!120597))))

(assert (=> d!961239 (= (equivClasses!2144 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (Forall2!915 lambda!120597))))

(declare-fun bs!555150 () Bool)

(assert (= bs!555150 d!961239))

(declare-fun m!3751825 () Bool)

(assert (=> bs!555150 m!3751825))

(assert (=> b!3384322 d!961239))

(assert (=> d!960393 d!960931))

(declare-fun bm!244961 () Bool)

(declare-fun call!244968 () Bool)

(declare-fun c!576789 () Bool)

(assert (=> bm!244961 (= call!244968 (validRegex!4610 (ite c!576789 (regOne!20783 (regex!5376 lt!1149393)) (regOne!20782 (regex!5376 lt!1149393)))))))

(declare-fun b!3385913 () Bool)

(declare-fun e!2101881 () Bool)

(declare-fun e!2101877 () Bool)

(assert (=> b!3385913 (= e!2101881 e!2101877)))

(declare-fun res!1369958 () Bool)

(assert (=> b!3385913 (= res!1369958 (not (nullable!3454 (reg!10464 (regex!5376 lt!1149393)))))))

(assert (=> b!3385913 (=> (not res!1369958) (not e!2101877))))

(declare-fun bm!244962 () Bool)

(declare-fun c!576788 () Bool)

(declare-fun call!244967 () Bool)

(assert (=> bm!244962 (= call!244967 (validRegex!4610 (ite c!576788 (reg!10464 (regex!5376 lt!1149393)) (ite c!576789 (regTwo!20783 (regex!5376 lt!1149393)) (regTwo!20782 (regex!5376 lt!1149393))))))))

(declare-fun b!3385914 () Bool)

(declare-fun e!2101880 () Bool)

(assert (=> b!3385914 (= e!2101881 e!2101880)))

(assert (=> b!3385914 (= c!576789 ((_ is Union!10135) (regex!5376 lt!1149393)))))

(declare-fun b!3385915 () Bool)

(declare-fun e!2101883 () Bool)

(assert (=> b!3385915 (= e!2101883 e!2101881)))

(assert (=> b!3385915 (= c!576788 ((_ is Star!10135) (regex!5376 lt!1149393)))))

(declare-fun b!3385916 () Bool)

(declare-fun e!2101878 () Bool)

(declare-fun call!244966 () Bool)

(assert (=> b!3385916 (= e!2101878 call!244966)))

(declare-fun b!3385917 () Bool)

(declare-fun e!2101882 () Bool)

(assert (=> b!3385917 (= e!2101882 e!2101878)))

(declare-fun res!1369957 () Bool)

(assert (=> b!3385917 (=> (not res!1369957) (not e!2101878))))

(assert (=> b!3385917 (= res!1369957 call!244968)))

(declare-fun b!3385918 () Bool)

(assert (=> b!3385918 (= e!2101877 call!244967)))

(declare-fun b!3385920 () Bool)

(declare-fun res!1369961 () Bool)

(declare-fun e!2101879 () Bool)

(assert (=> b!3385920 (=> (not res!1369961) (not e!2101879))))

(assert (=> b!3385920 (= res!1369961 call!244968)))

(assert (=> b!3385920 (= e!2101880 e!2101879)))

(declare-fun bm!244963 () Bool)

(assert (=> bm!244963 (= call!244966 call!244967)))

(declare-fun b!3385921 () Bool)

(assert (=> b!3385921 (= e!2101879 call!244966)))

(declare-fun d!961241 () Bool)

(declare-fun res!1369960 () Bool)

(assert (=> d!961241 (=> res!1369960 e!2101883)))

(assert (=> d!961241 (= res!1369960 ((_ is ElementMatch!10135) (regex!5376 lt!1149393)))))

(assert (=> d!961241 (= (validRegex!4610 (regex!5376 lt!1149393)) e!2101883)))

(declare-fun b!3385919 () Bool)

(declare-fun res!1369959 () Bool)

(assert (=> b!3385919 (=> res!1369959 e!2101882)))

(assert (=> b!3385919 (= res!1369959 (not ((_ is Concat!15741) (regex!5376 lt!1149393))))))

(assert (=> b!3385919 (= e!2101880 e!2101882)))

(assert (= (and d!961241 (not res!1369960)) b!3385915))

(assert (= (and b!3385915 c!576788) b!3385913))

(assert (= (and b!3385915 (not c!576788)) b!3385914))

(assert (= (and b!3385913 res!1369958) b!3385918))

(assert (= (and b!3385914 c!576789) b!3385920))

(assert (= (and b!3385914 (not c!576789)) b!3385919))

(assert (= (and b!3385920 res!1369961) b!3385921))

(assert (= (and b!3385919 (not res!1369959)) b!3385917))

(assert (= (and b!3385917 res!1369957) b!3385916))

(assert (= (or b!3385921 b!3385916) bm!244963))

(assert (= (or b!3385920 b!3385917) bm!244961))

(assert (= (or b!3385918 bm!244963) bm!244962))

(declare-fun m!3751827 () Bool)

(assert (=> bm!244961 m!3751827))

(declare-fun m!3751829 () Bool)

(assert (=> b!3385913 m!3751829))

(declare-fun m!3751831 () Bool)

(assert (=> bm!244962 m!3751831))

(assert (=> d!960393 d!961241))

(declare-fun d!961243 () Bool)

(assert (=> d!961243 (= (nullable!3454 (regex!5376 lt!1149393)) (nullableFct!998 (regex!5376 lt!1149393)))))

(declare-fun bs!555151 () Bool)

(assert (= bs!555151 d!961243))

(declare-fun m!3751833 () Bool)

(assert (=> bs!555151 m!3751833))

(assert (=> b!3384311 d!961243))

(declare-fun d!961245 () Bool)

(declare-fun charsToBigInt!1 (List!36998) Int)

(assert (=> d!961245 (= (inv!17 (value!173676 separatorToken!241)) (= (charsToBigInt!1 (text!39690 (value!173676 separatorToken!241))) (value!173668 (value!173676 separatorToken!241))))))

(declare-fun bs!555152 () Bool)

(assert (= bs!555152 d!961245))

(declare-fun m!3751835 () Bool)

(assert (=> bs!555152 m!3751835))

(assert (=> b!3384204 d!961245))

(assert (=> b!3384327 d!960345))

(declare-fun b!3385923 () Bool)

(declare-fun e!2101888 () Bool)

(declare-fun e!2101890 () Bool)

(assert (=> b!3385923 (= e!2101888 e!2101890)))

(declare-fun res!1369967 () Bool)

(assert (=> b!3385923 (=> res!1369967 e!2101890)))

(declare-fun call!244969 () Bool)

(assert (=> b!3385923 (= res!1369967 call!244969)))

(declare-fun b!3385924 () Bool)

(declare-fun res!1369969 () Bool)

(declare-fun e!2101885 () Bool)

(assert (=> b!3385924 (=> res!1369969 e!2101885)))

(assert (=> b!3385924 (= res!1369969 (not ((_ is ElementMatch!10135) (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))))))))

(declare-fun e!2101887 () Bool)

(assert (=> b!3385924 (= e!2101887 e!2101885)))

(declare-fun b!3385925 () Bool)

(declare-fun res!1369964 () Bool)

(assert (=> b!3385925 (=> res!1369964 e!2101885)))

(declare-fun e!2101886 () Bool)

(assert (=> b!3385925 (= res!1369964 e!2101886)))

(declare-fun res!1369965 () Bool)

(assert (=> b!3385925 (=> (not res!1369965) (not e!2101886))))

(declare-fun lt!1150384 () Bool)

(assert (=> b!3385925 (= res!1369965 lt!1150384)))

(declare-fun b!3385926 () Bool)

(declare-fun res!1369963 () Bool)

(assert (=> b!3385926 (=> (not res!1369963) (not e!2101886))))

(assert (=> b!3385926 (= res!1369963 (not call!244969))))

(declare-fun e!2101884 () Bool)

(declare-fun b!3385927 () Bool)

(assert (=> b!3385927 (= e!2101884 (nullable!3454 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))))))))

(declare-fun b!3385928 () Bool)

(declare-fun res!1369968 () Bool)

(assert (=> b!3385928 (=> (not res!1369968) (not e!2101886))))

(assert (=> b!3385928 (= res!1369968 (isEmpty!21121 (tail!5361 (list!13341 (charsOf!3390 (h!42296 tokens!494))))))))

(declare-fun d!961247 () Bool)

(declare-fun e!2101889 () Bool)

(assert (=> d!961247 e!2101889))

(declare-fun c!576791 () Bool)

(assert (=> d!961247 (= c!576791 ((_ is EmptyExpr!10135) (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))))))))

(assert (=> d!961247 (= lt!1150384 e!2101884)))

(declare-fun c!576792 () Bool)

(assert (=> d!961247 (= c!576792 (isEmpty!21121 (list!13341 (charsOf!3390 (h!42296 tokens!494)))))))

(assert (=> d!961247 (validRegex!4610 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))))))

(assert (=> d!961247 (= (matchR!4727 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))) (list!13341 (charsOf!3390 (h!42296 tokens!494)))) lt!1150384)))

(declare-fun b!3385922 () Bool)

(assert (=> b!3385922 (= e!2101886 (= (head!7229 (list!13341 (charsOf!3390 (h!42296 tokens!494)))) (c!576276 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))))))))

(declare-fun b!3385929 () Bool)

(declare-fun res!1369962 () Bool)

(assert (=> b!3385929 (=> res!1369962 e!2101890)))

(assert (=> b!3385929 (= res!1369962 (not (isEmpty!21121 (tail!5361 (list!13341 (charsOf!3390 (h!42296 tokens!494)))))))))

(declare-fun b!3385930 () Bool)

(assert (=> b!3385930 (= e!2101889 e!2101887)))

(declare-fun c!576790 () Bool)

(assert (=> b!3385930 (= c!576790 ((_ is EmptyLang!10135) (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))))))))

(declare-fun b!3385931 () Bool)

(assert (=> b!3385931 (= e!2101885 e!2101888)))

(declare-fun res!1369966 () Bool)

(assert (=> b!3385931 (=> (not res!1369966) (not e!2101888))))

(assert (=> b!3385931 (= res!1369966 (not lt!1150384))))

(declare-fun b!3385932 () Bool)

(assert (=> b!3385932 (= e!2101889 (= lt!1150384 call!244969))))

(declare-fun bm!244964 () Bool)

(assert (=> bm!244964 (= call!244969 (isEmpty!21121 (list!13341 (charsOf!3390 (h!42296 tokens!494)))))))

(declare-fun b!3385933 () Bool)

(assert (=> b!3385933 (= e!2101887 (not lt!1150384))))

(declare-fun b!3385934 () Bool)

(assert (=> b!3385934 (= e!2101884 (matchR!4727 (derivativeStep!3007 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494)))))) (head!7229 (list!13341 (charsOf!3390 (h!42296 tokens!494))))) (tail!5361 (list!13341 (charsOf!3390 (h!42296 tokens!494))))))))

(declare-fun b!3385935 () Bool)

(assert (=> b!3385935 (= e!2101890 (not (= (head!7229 (list!13341 (charsOf!3390 (h!42296 tokens!494)))) (c!576276 (regex!5376 (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))))))))))

(assert (= (and d!961247 c!576792) b!3385927))

(assert (= (and d!961247 (not c!576792)) b!3385934))

(assert (= (and d!961247 c!576791) b!3385932))

(assert (= (and d!961247 (not c!576791)) b!3385930))

(assert (= (and b!3385930 c!576790) b!3385933))

(assert (= (and b!3385930 (not c!576790)) b!3385924))

(assert (= (and b!3385924 (not res!1369969)) b!3385925))

(assert (= (and b!3385925 res!1369965) b!3385926))

(assert (= (and b!3385926 res!1369963) b!3385928))

(assert (= (and b!3385928 res!1369968) b!3385922))

(assert (= (and b!3385925 (not res!1369964)) b!3385931))

(assert (= (and b!3385931 res!1369966) b!3385923))

(assert (= (and b!3385923 (not res!1369967)) b!3385929))

(assert (= (and b!3385929 (not res!1369962)) b!3385935))

(assert (= (or b!3385932 b!3385923 b!3385926) bm!244964))

(assert (=> b!3385922 m!3748895))

(declare-fun m!3751837 () Bool)

(assert (=> b!3385922 m!3751837))

(assert (=> b!3385928 m!3748895))

(declare-fun m!3751839 () Bool)

(assert (=> b!3385928 m!3751839))

(assert (=> b!3385928 m!3751839))

(declare-fun m!3751841 () Bool)

(assert (=> b!3385928 m!3751841))

(assert (=> b!3385934 m!3748895))

(assert (=> b!3385934 m!3751837))

(assert (=> b!3385934 m!3751837))

(declare-fun m!3751843 () Bool)

(assert (=> b!3385934 m!3751843))

(assert (=> b!3385934 m!3748895))

(assert (=> b!3385934 m!3751839))

(assert (=> b!3385934 m!3751843))

(assert (=> b!3385934 m!3751839))

(declare-fun m!3751845 () Bool)

(assert (=> b!3385934 m!3751845))

(assert (=> d!961247 m!3748895))

(declare-fun m!3751847 () Bool)

(assert (=> d!961247 m!3751847))

(declare-fun m!3751849 () Bool)

(assert (=> d!961247 m!3751849))

(assert (=> bm!244964 m!3748895))

(assert (=> bm!244964 m!3751847))

(declare-fun m!3751851 () Bool)

(assert (=> b!3385927 m!3751851))

(assert (=> b!3385929 m!3748895))

(assert (=> b!3385929 m!3751839))

(assert (=> b!3385929 m!3751839))

(assert (=> b!3385929 m!3751841))

(assert (=> b!3385935 m!3748895))

(assert (=> b!3385935 m!3751837))

(assert (=> b!3384327 d!961247))

(assert (=> b!3384327 d!960475))

(declare-fun d!961249 () Bool)

(assert (=> d!961249 (= (get!11774 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))) (v!36502 (getRuleFromTag!1031 thiss!18206 rules!2135 (tag!5954 (rule!7930 (h!42296 tokens!494))))))))

(assert (=> b!3384327 d!961249))

(assert (=> b!3384327 d!960343))

(declare-fun call!244970 () Option!7402)

(declare-fun bm!244965 () Bool)

(assert (=> bm!244965 (= call!244970 (maxPrefixOneRule!1688 thiss!18206 (h!42297 (t!263604 rules!2135)) lt!1149402))))

(declare-fun b!3385943 () Bool)

(declare-fun res!1369974 () Bool)

(declare-fun e!2101895 () Bool)

(assert (=> b!3385943 (=> (not res!1369974) (not e!2101895))))

(declare-fun lt!1150419 () Option!7402)

(assert (=> b!3385943 (= res!1369974 (= (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1150419)))) (originalCharacters!6090 (_1!21370 (get!11775 lt!1150419)))))))

(declare-fun b!3385944 () Bool)

(declare-fun res!1369977 () Bool)

(assert (=> b!3385944 (=> (not res!1369977) (not e!2101895))))

(assert (=> b!3385944 (= res!1369977 (matchR!4727 (regex!5376 (rule!7930 (_1!21370 (get!11775 lt!1150419)))) (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1150419))))))))

(declare-fun b!3385945 () Bool)

(declare-fun e!2101897 () Option!7402)

(declare-fun lt!1150423 () Option!7402)

(declare-fun lt!1150422 () Option!7402)

(assert (=> b!3385945 (= e!2101897 (ite (and ((_ is None!7401) lt!1150423) ((_ is None!7401) lt!1150422)) None!7401 (ite ((_ is None!7401) lt!1150422) lt!1150423 (ite ((_ is None!7401) lt!1150423) lt!1150422 (ite (>= (size!27908 (_1!21370 (v!36503 lt!1150423))) (size!27908 (_1!21370 (v!36503 lt!1150422)))) lt!1150423 lt!1150422)))))))

(assert (=> b!3385945 (= lt!1150423 call!244970)))

(assert (=> b!3385945 (= lt!1150422 (maxPrefix!2537 thiss!18206 (t!263604 (t!263604 rules!2135)) lt!1149402))))

(declare-fun d!961251 () Bool)

(declare-fun e!2101896 () Bool)

(assert (=> d!961251 e!2101896))

(declare-fun res!1369971 () Bool)

(assert (=> d!961251 (=> res!1369971 e!2101896)))

(assert (=> d!961251 (= res!1369971 (isEmpty!21133 lt!1150419))))

(assert (=> d!961251 (= lt!1150419 e!2101897)))

(declare-fun c!576796 () Bool)

(assert (=> d!961251 (= c!576796 (and ((_ is Cons!36877) (t!263604 rules!2135)) ((_ is Nil!36877) (t!263604 (t!263604 rules!2135)))))))

(declare-fun lt!1150421 () Unit!51991)

(declare-fun lt!1150420 () Unit!51991)

(assert (=> d!961251 (= lt!1150421 lt!1150420)))

(assert (=> d!961251 (isPrefix!2826 lt!1149402 lt!1149402)))

(assert (=> d!961251 (= lt!1150420 (lemmaIsPrefixRefl!1785 lt!1149402 lt!1149402))))

(assert (=> d!961251 (rulesValidInductive!1833 thiss!18206 (t!263604 rules!2135))))

(assert (=> d!961251 (= (maxPrefix!2537 thiss!18206 (t!263604 rules!2135) lt!1149402) lt!1150419)))

(declare-fun b!3385946 () Bool)

(declare-fun res!1369975 () Bool)

(assert (=> b!3385946 (=> (not res!1369975) (not e!2101895))))

(assert (=> b!3385946 (= res!1369975 (= (++!9017 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1150419)))) (_2!21370 (get!11775 lt!1150419))) lt!1149402))))

(declare-fun b!3385947 () Bool)

(declare-fun res!1369972 () Bool)

(assert (=> b!3385947 (=> (not res!1369972) (not e!2101895))))

(assert (=> b!3385947 (= res!1369972 (< (size!27909 (_2!21370 (get!11775 lt!1150419))) (size!27909 lt!1149402)))))

(declare-fun b!3385948 () Bool)

(assert (=> b!3385948 (= e!2101896 e!2101895)))

(declare-fun res!1369976 () Bool)

(assert (=> b!3385948 (=> (not res!1369976) (not e!2101895))))

(assert (=> b!3385948 (= res!1369976 (isDefined!5718 lt!1150419))))

(declare-fun b!3385949 () Bool)

(declare-fun res!1369973 () Bool)

(assert (=> b!3385949 (=> (not res!1369973) (not e!2101895))))

(assert (=> b!3385949 (= res!1369973 (= (value!173676 (_1!21370 (get!11775 lt!1150419))) (apply!8581 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1150419)))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1150419)))))))))

(declare-fun b!3385950 () Bool)

(assert (=> b!3385950 (= e!2101895 (contains!6751 (t!263604 rules!2135) (rule!7930 (_1!21370 (get!11775 lt!1150419)))))))

(declare-fun b!3385951 () Bool)

(assert (=> b!3385951 (= e!2101897 call!244970)))

(assert (= (and d!961251 c!576796) b!3385951))

(assert (= (and d!961251 (not c!576796)) b!3385945))

(assert (= (or b!3385951 b!3385945) bm!244965))

(assert (= (and d!961251 (not res!1369971)) b!3385948))

(assert (= (and b!3385948 res!1369976) b!3385943))

(assert (= (and b!3385943 res!1369974) b!3385947))

(assert (= (and b!3385947 res!1369972) b!3385946))

(assert (= (and b!3385946 res!1369975) b!3385949))

(assert (= (and b!3385949 res!1369973) b!3385944))

(assert (= (and b!3385944 res!1369977) b!3385950))

(declare-fun m!3751903 () Bool)

(assert (=> d!961251 m!3751903))

(assert (=> d!961251 m!3749843))

(assert (=> d!961251 m!3749845))

(declare-fun m!3751911 () Bool)

(assert (=> d!961251 m!3751911))

(declare-fun m!3751915 () Bool)

(assert (=> b!3385945 m!3751915))

(declare-fun m!3751919 () Bool)

(assert (=> b!3385948 m!3751919))

(declare-fun m!3751921 () Bool)

(assert (=> b!3385944 m!3751921))

(declare-fun m!3751925 () Bool)

(assert (=> b!3385944 m!3751925))

(assert (=> b!3385944 m!3751925))

(declare-fun m!3751931 () Bool)

(assert (=> b!3385944 m!3751931))

(assert (=> b!3385944 m!3751931))

(declare-fun m!3751937 () Bool)

(assert (=> b!3385944 m!3751937))

(assert (=> b!3385947 m!3751921))

(declare-fun m!3751941 () Bool)

(assert (=> b!3385947 m!3751941))

(assert (=> b!3385947 m!3748975))

(declare-fun m!3751943 () Bool)

(assert (=> bm!244965 m!3751943))

(assert (=> b!3385950 m!3751921))

(declare-fun m!3751949 () Bool)

(assert (=> b!3385950 m!3751949))

(assert (=> b!3385943 m!3751921))

(assert (=> b!3385943 m!3751925))

(assert (=> b!3385943 m!3751925))

(assert (=> b!3385943 m!3751931))

(assert (=> b!3385946 m!3751921))

(assert (=> b!3385946 m!3751925))

(assert (=> b!3385946 m!3751925))

(assert (=> b!3385946 m!3751931))

(assert (=> b!3385946 m!3751931))

(declare-fun m!3751961 () Bool)

(assert (=> b!3385946 m!3751961))

(assert (=> b!3385949 m!3751921))

(declare-fun m!3751965 () Bool)

(assert (=> b!3385949 m!3751965))

(assert (=> b!3385949 m!3751965))

(declare-fun m!3751967 () Bool)

(assert (=> b!3385949 m!3751967))

(assert (=> b!3384625 d!961251))

(declare-fun b!3385955 () Bool)

(declare-fun e!2101899 () List!36999)

(assert (=> b!3385955 (= e!2101899 (++!9017 (list!13345 (left!28749 (c!576277 lt!1149413))) (list!13345 (right!29079 (c!576277 lt!1149413)))))))

(declare-fun b!3385952 () Bool)

(declare-fun e!2101898 () List!36999)

(assert (=> b!3385952 (= e!2101898 Nil!36875)))

(declare-fun d!961253 () Bool)

(declare-fun c!576797 () Bool)

(assert (=> d!961253 (= c!576797 ((_ is Empty!11127) (c!576277 lt!1149413)))))

(assert (=> d!961253 (= (list!13345 (c!576277 lt!1149413)) e!2101898)))

(declare-fun b!3385954 () Bool)

(assert (=> b!3385954 (= e!2101899 (list!13349 (xs!14281 (c!576277 lt!1149413))))))

(declare-fun b!3385953 () Bool)

(assert (=> b!3385953 (= e!2101898 e!2101899)))

(declare-fun c!576798 () Bool)

(assert (=> b!3385953 (= c!576798 ((_ is Leaf!17426) (c!576277 lt!1149413)))))

(assert (= (and d!961253 c!576797) b!3385952))

(assert (= (and d!961253 (not c!576797)) b!3385953))

(assert (= (and b!3385953 c!576798) b!3385954))

(assert (= (and b!3385953 (not c!576798)) b!3385955))

(declare-fun m!3751969 () Bool)

(assert (=> b!3385955 m!3751969))

(declare-fun m!3751971 () Bool)

(assert (=> b!3385955 m!3751971))

(assert (=> b!3385955 m!3751969))

(assert (=> b!3385955 m!3751971))

(declare-fun m!3751973 () Bool)

(assert (=> b!3385955 m!3751973))

(declare-fun m!3751975 () Bool)

(assert (=> b!3385954 m!3751975))

(assert (=> d!960503 d!961253))

(declare-fun d!961255 () Bool)

(assert (=> d!961255 (= (isEmpty!21133 lt!1149627) (not ((_ is Some!7401) lt!1149627)))))

(assert (=> d!960429 d!961255))

(declare-fun d!961257 () Bool)

(assert (=> d!961257 (= (isEmpty!21121 (_1!21375 lt!1149626)) ((_ is Nil!36875) (_1!21375 lt!1149626)))))

(assert (=> d!960429 d!961257))

(declare-fun d!961259 () Bool)

(declare-fun lt!1150446 () tuple2!36482)

(assert (=> d!961259 (= (++!9017 (_1!21375 lt!1150446) (_2!21375 lt!1150446)) lt!1149402)))

(declare-fun sizeTr!191 (List!36999 Int) Int)

(assert (=> d!961259 (= lt!1150446 (findLongestMatchInner!881 (regex!5376 (rule!7930 (h!42296 tokens!494))) Nil!36875 0 lt!1149402 lt!1149402 (sizeTr!191 lt!1149402 0)))))

(declare-fun lt!1150440 () Unit!51991)

(declare-fun lt!1150447 () Unit!51991)

(assert (=> d!961259 (= lt!1150440 lt!1150447)))

(declare-fun lt!1150441 () List!36999)

(declare-fun lt!1150443 () Int)

(assert (=> d!961259 (= (sizeTr!191 lt!1150441 lt!1150443) (+ (size!27909 lt!1150441) lt!1150443))))

(declare-fun lemmaSizeTrEqualsSize!190 (List!36999 Int) Unit!51991)

(assert (=> d!961259 (= lt!1150447 (lemmaSizeTrEqualsSize!190 lt!1150441 lt!1150443))))

(assert (=> d!961259 (= lt!1150443 0)))

(assert (=> d!961259 (= lt!1150441 Nil!36875)))

(declare-fun lt!1150444 () Unit!51991)

(declare-fun lt!1150445 () Unit!51991)

(assert (=> d!961259 (= lt!1150444 lt!1150445)))

(declare-fun lt!1150442 () Int)

(assert (=> d!961259 (= (sizeTr!191 lt!1149402 lt!1150442) (+ (size!27909 lt!1149402) lt!1150442))))

(assert (=> d!961259 (= lt!1150445 (lemmaSizeTrEqualsSize!190 lt!1149402 lt!1150442))))

(assert (=> d!961259 (= lt!1150442 0)))

(assert (=> d!961259 (validRegex!4610 (regex!5376 (rule!7930 (h!42296 tokens!494))))))

(assert (=> d!961259 (= (findLongestMatch!795 (regex!5376 (rule!7930 (h!42296 tokens!494))) lt!1149402) lt!1150446)))

(declare-fun bs!555153 () Bool)

(assert (= bs!555153 d!961259))

(assert (=> bs!555153 m!3748975))

(declare-fun m!3751977 () Bool)

(assert (=> bs!555153 m!3751977))

(assert (=> bs!555153 m!3750609))

(declare-fun m!3751979 () Bool)

(assert (=> bs!555153 m!3751979))

(declare-fun m!3751981 () Bool)

(assert (=> bs!555153 m!3751981))

(declare-fun m!3751983 () Bool)

(assert (=> bs!555153 m!3751983))

(declare-fun m!3751985 () Bool)

(assert (=> bs!555153 m!3751985))

(declare-fun m!3751987 () Bool)

(assert (=> bs!555153 m!3751987))

(declare-fun m!3751989 () Bool)

(assert (=> bs!555153 m!3751989))

(assert (=> bs!555153 m!3751983))

(declare-fun m!3751991 () Bool)

(assert (=> bs!555153 m!3751991))

(assert (=> d!960429 d!961259))

(declare-fun d!961261 () Bool)

(declare-fun res!1369982 () Bool)

(declare-fun e!2101911 () Bool)

(assert (=> d!961261 (=> (not res!1369982) (not e!2101911))))

(assert (=> d!961261 (= res!1369982 (validRegex!4610 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))

(assert (=> d!961261 (= (ruleValid!1705 thiss!18206 (rule!7930 (h!42296 tokens!494))) e!2101911)))

(declare-fun b!3385983 () Bool)

(declare-fun res!1369983 () Bool)

(assert (=> b!3385983 (=> (not res!1369983) (not e!2101911))))

(assert (=> b!3385983 (= res!1369983 (not (nullable!3454 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))

(declare-fun b!3385984 () Bool)

(assert (=> b!3385984 (= e!2101911 (not (= (tag!5954 (rule!7930 (h!42296 tokens!494))) (String!41365 ""))))))

(assert (= (and d!961261 res!1369982) b!3385983))

(assert (= (and b!3385983 res!1369983) b!3385984))

(assert (=> d!961261 m!3750609))

(assert (=> b!3385983 m!3750597))

(assert (=> d!960429 d!961261))

(assert (=> b!3384406 d!961071))

(declare-fun d!961263 () Bool)

(assert (=> d!961263 (= (apply!8581 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627))))) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627))))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627))))))))

(declare-fun b_lambda!96227 () Bool)

(assert (=> (not b_lambda!96227) (not d!961263)))

(declare-fun tb!180593 () Bool)

(declare-fun t!263864 () Bool)

(assert (=> (and b!3384650 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263864) tb!180593))

(declare-fun result!224100 () Bool)

(assert (=> tb!180593 (= result!224100 (inv!21 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627))))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627)))))))))

(declare-fun m!3751993 () Bool)

(assert (=> tb!180593 m!3751993))

(assert (=> d!961263 t!263864))

(declare-fun b_and!235541 () Bool)

(assert (= b_and!235431 (and (=> t!263864 result!224100) b_and!235541)))

(declare-fun t!263866 () Bool)

(declare-fun tb!180595 () Bool)

(assert (=> (and b!3384684 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263866) tb!180595))

(declare-fun result!224102 () Bool)

(assert (= result!224102 result!224100))

(assert (=> d!961263 t!263866))

(declare-fun b_and!235543 () Bool)

(assert (= b_and!235437 (and (=> t!263866 result!224102) b_and!235543)))

(declare-fun t!263868 () Bool)

(declare-fun tb!180597 () Bool)

(assert (=> (and b!3383881 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263868) tb!180597))

(declare-fun result!224104 () Bool)

(assert (= result!224104 result!224100))

(assert (=> d!961263 t!263868))

(declare-fun b_and!235545 () Bool)

(assert (= b_and!235433 (and (=> t!263868 result!224104) b_and!235545)))

(declare-fun t!263870 () Bool)

(declare-fun tb!180599 () Bool)

(assert (=> (and b!3383876 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263870) tb!180599))

(declare-fun result!224106 () Bool)

(assert (= result!224106 result!224100))

(assert (=> d!961263 t!263870))

(declare-fun b_and!235547 () Bool)

(assert (= b_and!235435 (and (=> t!263870 result!224106) b_and!235547)))

(declare-fun tb!180601 () Bool)

(declare-fun t!263872 () Bool)

(assert (=> (and b!3383882 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263872) tb!180601))

(declare-fun result!224108 () Bool)

(assert (= result!224108 result!224100))

(assert (=> d!961263 t!263872))

(declare-fun b_and!235549 () Bool)

(assert (= b_and!235439 (and (=> t!263872 result!224108) b_and!235549)))

(assert (=> d!961263 m!3749621))

(declare-fun m!3751995 () Bool)

(assert (=> d!961263 m!3751995))

(assert (=> b!3384406 d!961263))

(declare-fun d!961265 () Bool)

(assert (=> d!961265 (= (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627)))) (fromListB!1704 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627)))))))

(declare-fun bs!555154 () Bool)

(assert (= bs!555154 d!961265))

(declare-fun m!3751997 () Bool)

(assert (=> bs!555154 m!3751997))

(assert (=> b!3384406 d!961265))

(declare-fun d!961267 () Bool)

(assert (=> d!961267 (= (list!13344 lt!1149513) (list!13348 (c!576278 lt!1149513)))))

(declare-fun bs!555155 () Bool)

(assert (= bs!555155 d!961267))

(declare-fun m!3751999 () Bool)

(assert (=> bs!555155 m!3751999))

(assert (=> d!960321 d!961267))

(declare-fun d!961269 () Bool)

(declare-fun e!2101915 () Bool)

(assert (=> d!961269 e!2101915))

(declare-fun res!1369986 () Bool)

(assert (=> d!961269 (=> (not res!1369986) (not e!2101915))))

(declare-fun lt!1150450 () BalanceConc!21870)

(assert (=> d!961269 (= res!1369986 (= (list!13344 lt!1150450) (Cons!36876 (h!42296 tokens!494) Nil!36876)))))

(declare-fun choose!19613 (Token!10118) BalanceConc!21870)

(assert (=> d!961269 (= lt!1150450 (choose!19613 (h!42296 tokens!494)))))

(assert (=> d!961269 (= (singleton!1082 (h!42296 tokens!494)) lt!1150450)))

(declare-fun b!3385987 () Bool)

(assert (=> b!3385987 (= e!2101915 (isBalanced!3357 (c!576278 lt!1150450)))))

(assert (= (and d!961269 res!1369986) b!3385987))

(declare-fun m!3752007 () Bool)

(assert (=> d!961269 m!3752007))

(declare-fun m!3752009 () Bool)

(assert (=> d!961269 m!3752009))

(declare-fun m!3752011 () Bool)

(assert (=> b!3385987 m!3752011))

(assert (=> d!960321 d!961269))

(declare-fun d!961271 () Bool)

(declare-fun c!576799 () Bool)

(assert (=> d!961271 (= c!576799 ((_ is Node!11127) (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))))))

(declare-fun e!2101918 () Bool)

(assert (=> d!961271 (= (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))) e!2101918)))

(declare-fun b!3385996 () Bool)

(assert (=> b!3385996 (= e!2101918 (inv!49960 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))))))

(declare-fun b!3385997 () Bool)

(declare-fun e!2101919 () Bool)

(assert (=> b!3385997 (= e!2101918 e!2101919)))

(declare-fun res!1369987 () Bool)

(assert (=> b!3385997 (= res!1369987 (not ((_ is Leaf!17426) (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))))))))

(assert (=> b!3385997 (=> res!1369987 e!2101919)))

(declare-fun b!3385998 () Bool)

(assert (=> b!3385998 (= e!2101919 (inv!49961 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))))))

(assert (= (and d!961271 c!576799) b!3385996))

(assert (= (and d!961271 (not c!576799)) b!3385997))

(assert (= (and b!3385997 (not res!1369987)) b!3385998))

(declare-fun m!3752013 () Bool)

(assert (=> b!3385996 m!3752013))

(declare-fun m!3752015 () Bool)

(assert (=> b!3385998 m!3752015))

(assert (=> b!3384601 d!961271))

(declare-fun d!961273 () Bool)

(assert (=> d!961273 (= (isEmpty!21133 lt!1149406) (not ((_ is Some!7401) lt!1149406)))))

(assert (=> d!960519 d!961273))

(assert (=> b!3384566 d!961021))

(assert (=> b!3384566 d!961023))

(assert (=> b!3384330 d!961183))

(assert (=> b!3384330 d!960421))

(declare-fun d!961275 () Bool)

(declare-fun lt!1150451 () Bool)

(assert (=> d!961275 (= lt!1150451 (isEmpty!21121 (list!13341 (_2!21371 lt!1149540))))))

(assert (=> d!961275 (= lt!1150451 (isEmpty!21135 (c!576277 (_2!21371 lt!1149540))))))

(assert (=> d!961275 (= (isEmpty!21130 (_2!21371 lt!1149540)) lt!1150451)))

(declare-fun bs!555156 () Bool)

(assert (= bs!555156 d!961275))

(declare-fun m!3752017 () Bool)

(assert (=> bs!555156 m!3752017))

(assert (=> bs!555156 m!3752017))

(declare-fun m!3752019 () Bool)

(assert (=> bs!555156 m!3752019))

(declare-fun m!3752021 () Bool)

(assert (=> bs!555156 m!3752021))

(assert (=> b!3384178 d!961275))

(assert (=> b!3384629 d!960709))

(declare-fun d!961277 () Bool)

(assert (=> d!961277 (= (apply!8581 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149684))))) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149684))))))))

(declare-fun b_lambda!96229 () Bool)

(assert (=> (not b_lambda!96229) (not d!961277)))

(declare-fun t!263885 () Bool)

(declare-fun tb!180613 () Bool)

(assert (=> (and b!3383876 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263885) tb!180613))

(declare-fun result!224120 () Bool)

(assert (=> tb!180613 (= result!224120 (inv!21 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684))))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149684)))))))))

(declare-fun m!3752023 () Bool)

(assert (=> tb!180613 m!3752023))

(assert (=> d!961277 t!263885))

(declare-fun b_and!235555 () Bool)

(assert (= b_and!235547 (and (=> t!263885 result!224120) b_and!235555)))

(declare-fun tb!180617 () Bool)

(declare-fun t!263889 () Bool)

(assert (=> (and b!3384684 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263889) tb!180617))

(declare-fun result!224124 () Bool)

(assert (= result!224124 result!224120))

(assert (=> d!961277 t!263889))

(declare-fun b_and!235557 () Bool)

(assert (= b_and!235543 (and (=> t!263889 result!224124) b_and!235557)))

(declare-fun t!263897 () Bool)

(declare-fun tb!180625 () Bool)

(assert (=> (and b!3383881 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263897) tb!180625))

(declare-fun result!224132 () Bool)

(assert (= result!224132 result!224120))

(assert (=> d!961277 t!263897))

(declare-fun b_and!235559 () Bool)

(assert (= b_and!235545 (and (=> t!263897 result!224132) b_and!235559)))

(declare-fun t!263903 () Bool)

(declare-fun tb!180631 () Bool)

(assert (=> (and b!3383882 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263903) tb!180631))

(declare-fun result!224138 () Bool)

(assert (= result!224138 result!224120))

(assert (=> d!961277 t!263903))

(declare-fun b_and!235561 () Bool)

(assert (= b_and!235549 (and (=> t!263903 result!224138) b_and!235561)))

(declare-fun t!263909 () Bool)

(declare-fun tb!180637 () Bool)

(assert (=> (and b!3384650 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263909) tb!180637))

(declare-fun result!224144 () Bool)

(assert (= result!224144 result!224120))

(assert (=> d!961277 t!263909))

(declare-fun b_and!235563 () Bool)

(assert (= b_and!235541 (and (=> t!263909 result!224144) b_and!235563)))

(assert (=> d!961277 m!3749869))

(declare-fun m!3752025 () Bool)

(assert (=> d!961277 m!3752025))

(assert (=> b!3384629 d!961277))

(declare-fun d!961279 () Bool)

(assert (=> d!961279 (= (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149684)))) (fromListB!1704 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149684)))))))

(declare-fun bs!555157 () Bool)

(assert (= bs!555157 d!961279))

(declare-fun m!3752029 () Bool)

(assert (=> bs!555157 m!3752029))

(assert (=> b!3384629 d!961279))

(declare-fun d!961281 () Bool)

(assert (=> d!961281 (= (nullable!3454 (regex!5376 lt!1149398)) (nullableFct!998 (regex!5376 lt!1149398)))))

(declare-fun bs!555158 () Bool)

(assert (= bs!555158 d!961281))

(declare-fun m!3752033 () Bool)

(assert (=> bs!555158 m!3752033))

(assert (=> b!3384579 d!961281))

(assert (=> b!3384573 d!960419))

(declare-fun d!961283 () Bool)

(assert (=> d!961283 (= (list!13341 (_2!21371 lt!1149484)) (list!13345 (c!576277 (_2!21371 lt!1149484))))))

(declare-fun bs!555159 () Bool)

(assert (= bs!555159 d!961283))

(declare-fun m!3752035 () Bool)

(assert (=> bs!555159 m!3752035))

(assert (=> b!3384054 d!961283))

(declare-fun b!3386073 () Bool)

(declare-fun e!2101958 () tuple2!36476)

(assert (=> b!3386073 (= e!2101958 (tuple2!36477 Nil!36876 (list!13341 lt!1149404)))))

(declare-fun d!961285 () Bool)

(declare-fun e!2101959 () Bool)

(assert (=> d!961285 e!2101959))

(declare-fun c!576804 () Bool)

(declare-fun lt!1150459 () tuple2!36476)

(assert (=> d!961285 (= c!576804 (> (size!27917 (_1!21372 lt!1150459)) 0))))

(assert (=> d!961285 (= lt!1150459 e!2101958)))

(declare-fun c!576805 () Bool)

(declare-fun lt!1150460 () Option!7402)

(assert (=> d!961285 (= c!576805 ((_ is Some!7401) lt!1150460))))

(assert (=> d!961285 (= lt!1150460 (maxPrefix!2537 thiss!18206 rules!2135 (list!13341 lt!1149404)))))

(assert (=> d!961285 (= (lexList!1407 thiss!18206 rules!2135 (list!13341 lt!1149404)) lt!1150459)))

(declare-fun b!3386074 () Bool)

(declare-fun e!2101957 () Bool)

(assert (=> b!3386074 (= e!2101959 e!2101957)))

(declare-fun res!1369990 () Bool)

(assert (=> b!3386074 (= res!1369990 (< (size!27909 (_2!21372 lt!1150459)) (size!27909 (list!13341 lt!1149404))))))

(assert (=> b!3386074 (=> (not res!1369990) (not e!2101957))))

(declare-fun b!3386075 () Bool)

(assert (=> b!3386075 (= e!2101957 (not (isEmpty!21125 (_1!21372 lt!1150459))))))

(declare-fun b!3386076 () Bool)

(declare-fun lt!1150458 () tuple2!36476)

(assert (=> b!3386076 (= e!2101958 (tuple2!36477 (Cons!36876 (_1!21370 (v!36503 lt!1150460)) (_1!21372 lt!1150458)) (_2!21372 lt!1150458)))))

(assert (=> b!3386076 (= lt!1150458 (lexList!1407 thiss!18206 rules!2135 (_2!21370 (v!36503 lt!1150460))))))

(declare-fun b!3386077 () Bool)

(assert (=> b!3386077 (= e!2101959 (= (_2!21372 lt!1150459) (list!13341 lt!1149404)))))

(assert (= (and d!961285 c!576805) b!3386076))

(assert (= (and d!961285 (not c!576805)) b!3386073))

(assert (= (and d!961285 c!576804) b!3386074))

(assert (= (and d!961285 (not c!576804)) b!3386077))

(assert (= (and b!3386074 res!1369990) b!3386075))

(declare-fun m!3752051 () Bool)

(assert (=> d!961285 m!3752051))

(assert (=> d!961285 m!3749197))

(declare-fun m!3752053 () Bool)

(assert (=> d!961285 m!3752053))

(declare-fun m!3752055 () Bool)

(assert (=> b!3386074 m!3752055))

(assert (=> b!3386074 m!3749197))

(assert (=> b!3386074 m!3751769))

(declare-fun m!3752057 () Bool)

(assert (=> b!3386075 m!3752057))

(declare-fun m!3752059 () Bool)

(assert (=> b!3386076 m!3752059))

(assert (=> b!3384054 d!961285))

(declare-fun d!961291 () Bool)

(assert (=> d!961291 (= (list!13341 lt!1149404) (list!13345 (c!576277 lt!1149404)))))

(declare-fun bs!555162 () Bool)

(assert (= bs!555162 d!961291))

(declare-fun m!3752061 () Bool)

(assert (=> bs!555162 m!3752061))

(assert (=> b!3384054 d!961291))

(declare-fun d!961293 () Bool)

(assert (=> d!961293 (= (list!13341 lt!1149528) (list!13345 (c!576277 lt!1149528)))))

(declare-fun bs!555163 () Bool)

(assert (= bs!555163 d!961293))

(declare-fun m!3752063 () Bool)

(assert (=> bs!555163 m!3752063))

(assert (=> d!960345 d!961293))

(declare-fun bs!555164 () Bool)

(declare-fun d!961295 () Bool)

(assert (= bs!555164 (and d!961295 d!960815)))

(declare-fun lambda!120598 () Int)

(assert (=> bs!555164 (= (and (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (= lambda!120598 lambda!120576))))

(declare-fun bs!555165 () Bool)

(assert (= bs!555165 (and d!961295 d!960849)))

(assert (=> bs!555165 (= (and (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (h!42297 rules!2135)))) (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (h!42297 rules!2135))))) (= lambda!120598 lambda!120579))))

(assert (=> d!961295 true))

(assert (=> d!961295 (< (dynLambda!15350 order!19431 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) (dynLambda!15358 order!19443 lambda!120598))))

(assert (=> d!961295 true))

(assert (=> d!961295 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241)))) (dynLambda!15358 order!19443 lambda!120598))))

(assert (=> d!961295 (= (semiInverseModEq!2245 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241)))) (Forall!1319 lambda!120598))))

(declare-fun bs!555166 () Bool)

(assert (= bs!555166 d!961295))

(declare-fun m!3752065 () Bool)

(assert (=> bs!555166 m!3752065))

(assert (=> d!960501 d!961295))

(assert (=> b!3384540 d!961035))

(assert (=> b!3384540 d!961037))

(declare-fun b!3386078 () Bool)

(declare-fun e!2101960 () Option!7401)

(assert (=> b!3386078 (= e!2101960 None!7400)))

(declare-fun b!3386079 () Bool)

(declare-fun e!2101963 () Option!7401)

(assert (=> b!3386079 (= e!2101963 (Some!7400 (h!42297 (t!263604 rules!2135))))))

(declare-fun b!3386080 () Bool)

(declare-fun e!2101962 () Bool)

(declare-fun lt!1150463 () Option!7401)

(assert (=> b!3386080 (= e!2101962 (= (tag!5954 (get!11774 lt!1150463)) (tag!5954 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3386081 () Bool)

(declare-fun e!2101961 () Bool)

(assert (=> b!3386081 (= e!2101961 e!2101962)))

(declare-fun res!1369992 () Bool)

(assert (=> b!3386081 (=> (not res!1369992) (not e!2101962))))

(assert (=> b!3386081 (= res!1369992 (contains!6751 (t!263604 rules!2135) (get!11774 lt!1150463)))))

(declare-fun d!961297 () Bool)

(assert (=> d!961297 e!2101961))

(declare-fun res!1369991 () Bool)

(assert (=> d!961297 (=> res!1369991 e!2101961)))

(assert (=> d!961297 (= res!1369991 (isEmpty!21132 lt!1150463))))

(assert (=> d!961297 (= lt!1150463 e!2101963)))

(declare-fun c!576806 () Bool)

(assert (=> d!961297 (= c!576806 (and ((_ is Cons!36877) (t!263604 rules!2135)) (= (tag!5954 (h!42297 (t!263604 rules!2135))) (tag!5954 (rule!7930 (h!42296 tokens!494))))))))

(assert (=> d!961297 (rulesInvariant!4362 thiss!18206 (t!263604 rules!2135))))

(assert (=> d!961297 (= (getRuleFromTag!1031 thiss!18206 (t!263604 rules!2135) (tag!5954 (rule!7930 (h!42296 tokens!494)))) lt!1150463)))

(declare-fun b!3386082 () Bool)

(declare-fun lt!1150461 () Unit!51991)

(declare-fun lt!1150462 () Unit!51991)

(assert (=> b!3386082 (= lt!1150461 lt!1150462)))

(assert (=> b!3386082 (rulesInvariant!4362 thiss!18206 (t!263604 (t!263604 rules!2135)))))

(assert (=> b!3386082 (= lt!1150462 (lemmaInvariantOnRulesThenOnTail!402 thiss!18206 (h!42297 (t!263604 rules!2135)) (t!263604 (t!263604 rules!2135))))))

(assert (=> b!3386082 (= e!2101960 (getRuleFromTag!1031 thiss!18206 (t!263604 (t!263604 rules!2135)) (tag!5954 (rule!7930 (h!42296 tokens!494)))))))

(declare-fun b!3386083 () Bool)

(assert (=> b!3386083 (= e!2101963 e!2101960)))

(declare-fun c!576807 () Bool)

(assert (=> b!3386083 (= c!576807 (and ((_ is Cons!36877) (t!263604 rules!2135)) (not (= (tag!5954 (h!42297 (t!263604 rules!2135))) (tag!5954 (rule!7930 (h!42296 tokens!494)))))))))

(assert (= (and d!961297 c!576806) b!3386079))

(assert (= (and d!961297 (not c!576806)) b!3386083))

(assert (= (and b!3386083 c!576807) b!3386082))

(assert (= (and b!3386083 (not c!576807)) b!3386078))

(assert (= (and d!961297 (not res!1369991)) b!3386081))

(assert (= (and b!3386081 res!1369992) b!3386080))

(declare-fun m!3752067 () Bool)

(assert (=> b!3386080 m!3752067))

(assert (=> b!3386081 m!3752067))

(assert (=> b!3386081 m!3752067))

(declare-fun m!3752069 () Bool)

(assert (=> b!3386081 m!3752069))

(declare-fun m!3752071 () Bool)

(assert (=> d!961297 m!3752071))

(assert (=> d!961297 m!3749537))

(assert (=> b!3386082 m!3751281))

(assert (=> b!3386082 m!3751283))

(declare-fun m!3752073 () Bool)

(assert (=> b!3386082 m!3752073))

(assert (=> b!3384540 d!961297))

(declare-fun d!961299 () Bool)

(assert (=> d!961299 (= (get!11774 lt!1149590) (v!36502 lt!1149590))))

(assert (=> b!3384347 d!961299))

(assert (=> b!3384064 d!960975))

(declare-fun b!3386085 () Bool)

(declare-fun e!2101968 () Bool)

(declare-fun e!2101970 () Bool)

(assert (=> b!3386085 (= e!2101968 e!2101970)))

(declare-fun res!1369998 () Bool)

(assert (=> b!3386085 (=> res!1369998 e!2101970)))

(declare-fun call!244971 () Bool)

(assert (=> b!3386085 (= res!1369998 call!244971)))

(declare-fun b!3386086 () Bool)

(declare-fun res!1370000 () Bool)

(declare-fun e!2101965 () Bool)

(assert (=> b!3386086 (=> res!1370000 e!2101965)))

(assert (=> b!3386086 (= res!1370000 (not ((_ is ElementMatch!10135) (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402)))))))

(declare-fun e!2101967 () Bool)

(assert (=> b!3386086 (= e!2101967 e!2101965)))

(declare-fun b!3386087 () Bool)

(declare-fun res!1369995 () Bool)

(assert (=> b!3386087 (=> res!1369995 e!2101965)))

(declare-fun e!2101966 () Bool)

(assert (=> b!3386087 (= res!1369995 e!2101966)))

(declare-fun res!1369996 () Bool)

(assert (=> b!3386087 (=> (not res!1369996) (not e!2101966))))

(declare-fun lt!1150464 () Bool)

(assert (=> b!3386087 (= res!1369996 lt!1150464)))

(declare-fun b!3386088 () Bool)

(declare-fun res!1369994 () Bool)

(assert (=> b!3386088 (=> (not res!1369994) (not e!2101966))))

(assert (=> b!3386088 (= res!1369994 (not call!244971))))

(declare-fun b!3386089 () Bool)

(declare-fun e!2101964 () Bool)

(assert (=> b!3386089 (= e!2101964 (nullable!3454 (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402))))))

(declare-fun b!3386090 () Bool)

(declare-fun res!1369999 () Bool)

(assert (=> b!3386090 (=> (not res!1369999) (not e!2101966))))

(assert (=> b!3386090 (= res!1369999 (isEmpty!21121 (tail!5361 (tail!5361 lt!1149402))))))

(declare-fun d!961301 () Bool)

(declare-fun e!2101969 () Bool)

(assert (=> d!961301 e!2101969))

(declare-fun c!576809 () Bool)

(assert (=> d!961301 (= c!576809 ((_ is EmptyExpr!10135) (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402))))))

(assert (=> d!961301 (= lt!1150464 e!2101964)))

(declare-fun c!576810 () Bool)

(assert (=> d!961301 (= c!576810 (isEmpty!21121 (tail!5361 lt!1149402)))))

(assert (=> d!961301 (validRegex!4610 (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402)))))

(assert (=> d!961301 (= (matchR!4727 (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402)) (tail!5361 lt!1149402)) lt!1150464)))

(declare-fun b!3386084 () Bool)

(assert (=> b!3386084 (= e!2101966 (= (head!7229 (tail!5361 lt!1149402)) (c!576276 (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402)))))))

(declare-fun b!3386091 () Bool)

(declare-fun res!1369993 () Bool)

(assert (=> b!3386091 (=> res!1369993 e!2101970)))

(assert (=> b!3386091 (= res!1369993 (not (isEmpty!21121 (tail!5361 (tail!5361 lt!1149402)))))))

(declare-fun b!3386092 () Bool)

(assert (=> b!3386092 (= e!2101969 e!2101967)))

(declare-fun c!576808 () Bool)

(assert (=> b!3386092 (= c!576808 ((_ is EmptyLang!10135) (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402))))))

(declare-fun b!3386093 () Bool)

(assert (=> b!3386093 (= e!2101965 e!2101968)))

(declare-fun res!1369997 () Bool)

(assert (=> b!3386093 (=> (not res!1369997) (not e!2101968))))

(assert (=> b!3386093 (= res!1369997 (not lt!1150464))))

(declare-fun b!3386094 () Bool)

(assert (=> b!3386094 (= e!2101969 (= lt!1150464 call!244971))))

(declare-fun bm!244966 () Bool)

(assert (=> bm!244966 (= call!244971 (isEmpty!21121 (tail!5361 lt!1149402)))))

(declare-fun b!3386095 () Bool)

(assert (=> b!3386095 (= e!2101967 (not lt!1150464))))

(declare-fun b!3386096 () Bool)

(assert (=> b!3386096 (= e!2101964 (matchR!4727 (derivativeStep!3007 (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402)) (head!7229 (tail!5361 lt!1149402))) (tail!5361 (tail!5361 lt!1149402))))))

(declare-fun b!3386097 () Bool)

(assert (=> b!3386097 (= e!2101970 (not (= (head!7229 (tail!5361 lt!1149402)) (c!576276 (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402))))))))

(assert (= (and d!961301 c!576810) b!3386089))

(assert (= (and d!961301 (not c!576810)) b!3386096))

(assert (= (and d!961301 c!576809) b!3386094))

(assert (= (and d!961301 (not c!576809)) b!3386092))

(assert (= (and b!3386092 c!576808) b!3386095))

(assert (= (and b!3386092 (not c!576808)) b!3386086))

(assert (= (and b!3386086 (not res!1370000)) b!3386087))

(assert (= (and b!3386087 res!1369996) b!3386088))

(assert (= (and b!3386088 res!1369994) b!3386090))

(assert (= (and b!3386090 res!1369999) b!3386084))

(assert (= (and b!3386087 (not res!1369995)) b!3386093))

(assert (= (and b!3386093 res!1369997) b!3386085))

(assert (= (and b!3386085 (not res!1369998)) b!3386091))

(assert (= (and b!3386091 (not res!1369993)) b!3386097))

(assert (= (or b!3386094 b!3386085 b!3386088) bm!244966))

(assert (=> b!3386084 m!3749735))

(declare-fun m!3752075 () Bool)

(assert (=> b!3386084 m!3752075))

(assert (=> b!3386090 m!3749735))

(assert (=> b!3386090 m!3751699))

(assert (=> b!3386090 m!3751699))

(declare-fun m!3752077 () Bool)

(assert (=> b!3386090 m!3752077))

(assert (=> b!3386096 m!3749735))

(assert (=> b!3386096 m!3752075))

(assert (=> b!3386096 m!3749785))

(assert (=> b!3386096 m!3752075))

(declare-fun m!3752079 () Bool)

(assert (=> b!3386096 m!3752079))

(assert (=> b!3386096 m!3749735))

(assert (=> b!3386096 m!3751699))

(assert (=> b!3386096 m!3752079))

(assert (=> b!3386096 m!3751699))

(declare-fun m!3752081 () Bool)

(assert (=> b!3386096 m!3752081))

(assert (=> d!961301 m!3749735))

(assert (=> d!961301 m!3749783))

(assert (=> d!961301 m!3749785))

(declare-fun m!3752083 () Bool)

(assert (=> d!961301 m!3752083))

(assert (=> bm!244966 m!3749735))

(assert (=> bm!244966 m!3749783))

(assert (=> b!3386089 m!3749785))

(declare-fun m!3752085 () Bool)

(assert (=> b!3386089 m!3752085))

(assert (=> b!3386091 m!3749735))

(assert (=> b!3386091 m!3751699))

(assert (=> b!3386091 m!3751699))

(assert (=> b!3386091 m!3752077))

(assert (=> b!3386097 m!3749735))

(assert (=> b!3386097 m!3752075))

(assert (=> b!3384586 d!961301))

(declare-fun b!3386098 () Bool)

(declare-fun e!2101975 () Regex!10135)

(declare-fun e!2101971 () Regex!10135)

(assert (=> b!3386098 (= e!2101975 e!2101971)))

(declare-fun c!576811 () Bool)

(assert (=> b!3386098 (= c!576811 ((_ is Star!10135) (regex!5376 lt!1149398)))))

(declare-fun b!3386099 () Bool)

(declare-fun e!2101974 () Regex!10135)

(assert (=> b!3386099 (= e!2101974 (ite (= (head!7229 lt!1149402) (c!576276 (regex!5376 lt!1149398))) EmptyExpr!10135 EmptyLang!10135))))

(declare-fun call!244975 () Regex!10135)

(declare-fun c!576815 () Bool)

(declare-fun bm!244967 () Bool)

(assert (=> bm!244967 (= call!244975 (derivativeStep!3007 (ite c!576815 (regTwo!20783 (regex!5376 lt!1149398)) (ite c!576811 (reg!10464 (regex!5376 lt!1149398)) (regOne!20782 (regex!5376 lt!1149398)))) (head!7229 lt!1149402)))))

(declare-fun b!3386100 () Bool)

(declare-fun c!576812 () Bool)

(assert (=> b!3386100 (= c!576812 (nullable!3454 (regOne!20782 (regex!5376 lt!1149398))))))

(declare-fun e!2101972 () Regex!10135)

(assert (=> b!3386100 (= e!2101971 e!2101972)))

(declare-fun d!961303 () Bool)

(declare-fun lt!1150465 () Regex!10135)

(assert (=> d!961303 (validRegex!4610 lt!1150465)))

(declare-fun e!2101973 () Regex!10135)

(assert (=> d!961303 (= lt!1150465 e!2101973)))

(declare-fun c!576813 () Bool)

(assert (=> d!961303 (= c!576813 (or ((_ is EmptyExpr!10135) (regex!5376 lt!1149398)) ((_ is EmptyLang!10135) (regex!5376 lt!1149398))))))

(assert (=> d!961303 (validRegex!4610 (regex!5376 lt!1149398))))

(assert (=> d!961303 (= (derivativeStep!3007 (regex!5376 lt!1149398) (head!7229 lt!1149402)) lt!1150465)))

(declare-fun b!3386101 () Bool)

(assert (=> b!3386101 (= e!2101973 e!2101974)))

(declare-fun c!576814 () Bool)

(assert (=> b!3386101 (= c!576814 ((_ is ElementMatch!10135) (regex!5376 lt!1149398)))))

(declare-fun b!3386102 () Bool)

(declare-fun call!244974 () Regex!10135)

(assert (=> b!3386102 (= e!2101975 (Union!10135 call!244974 call!244975))))

(declare-fun bm!244968 () Bool)

(declare-fun call!244973 () Regex!10135)

(assert (=> bm!244968 (= call!244973 call!244975)))

(declare-fun b!3386103 () Bool)

(assert (=> b!3386103 (= e!2101971 (Concat!15741 call!244973 (regex!5376 lt!1149398)))))

(declare-fun b!3386104 () Bool)

(assert (=> b!3386104 (= e!2101973 EmptyLang!10135)))

(declare-fun bm!244969 () Bool)

(assert (=> bm!244969 (= call!244974 (derivativeStep!3007 (ite c!576815 (regOne!20783 (regex!5376 lt!1149398)) (regTwo!20782 (regex!5376 lt!1149398))) (head!7229 lt!1149402)))))

(declare-fun b!3386105 () Bool)

(declare-fun call!244972 () Regex!10135)

(assert (=> b!3386105 (= e!2101972 (Union!10135 (Concat!15741 call!244972 (regTwo!20782 (regex!5376 lt!1149398))) call!244974))))

(declare-fun b!3386106 () Bool)

(assert (=> b!3386106 (= e!2101972 (Union!10135 (Concat!15741 call!244972 (regTwo!20782 (regex!5376 lt!1149398))) EmptyLang!10135))))

(declare-fun bm!244970 () Bool)

(assert (=> bm!244970 (= call!244972 call!244973)))

(declare-fun b!3386107 () Bool)

(assert (=> b!3386107 (= c!576815 ((_ is Union!10135) (regex!5376 lt!1149398)))))

(assert (=> b!3386107 (= e!2101974 e!2101975)))

(assert (= (and d!961303 c!576813) b!3386104))

(assert (= (and d!961303 (not c!576813)) b!3386101))

(assert (= (and b!3386101 c!576814) b!3386099))

(assert (= (and b!3386101 (not c!576814)) b!3386107))

(assert (= (and b!3386107 c!576815) b!3386102))

(assert (= (and b!3386107 (not c!576815)) b!3386098))

(assert (= (and b!3386098 c!576811) b!3386103))

(assert (= (and b!3386098 (not c!576811)) b!3386100))

(assert (= (and b!3386100 c!576812) b!3386105))

(assert (= (and b!3386100 (not c!576812)) b!3386106))

(assert (= (or b!3386105 b!3386106) bm!244970))

(assert (= (or b!3386103 bm!244970) bm!244968))

(assert (= (or b!3386102 b!3386105) bm!244969))

(assert (= (or b!3386102 bm!244968) bm!244967))

(assert (=> bm!244967 m!3749781))

(declare-fun m!3752087 () Bool)

(assert (=> bm!244967 m!3752087))

(declare-fun m!3752089 () Bool)

(assert (=> b!3386100 m!3752089))

(declare-fun m!3752091 () Bool)

(assert (=> d!961303 m!3752091))

(assert (=> d!961303 m!3749791))

(assert (=> bm!244969 m!3749781))

(declare-fun m!3752093 () Bool)

(assert (=> bm!244969 m!3752093))

(assert (=> b!3384586 d!961303))

(assert (=> b!3384586 d!961175))

(assert (=> b!3384586 d!960971))

(declare-fun b!3386109 () Bool)

(declare-fun e!2101980 () Bool)

(declare-fun e!2101982 () Bool)

(assert (=> b!3386109 (= e!2101980 e!2101982)))

(declare-fun res!1370006 () Bool)

(assert (=> b!3386109 (=> res!1370006 e!2101982)))

(declare-fun call!244976 () Bool)

(assert (=> b!3386109 (= res!1370006 call!244976)))

(declare-fun b!3386110 () Bool)

(declare-fun res!1370008 () Bool)

(declare-fun e!2101977 () Bool)

(assert (=> b!3386110 (=> res!1370008 e!2101977)))

(assert (=> b!3386110 (= res!1370008 (not ((_ is ElementMatch!10135) (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400)))))))

(declare-fun e!2101979 () Bool)

(assert (=> b!3386110 (= e!2101979 e!2101977)))

(declare-fun b!3386111 () Bool)

(declare-fun res!1370003 () Bool)

(assert (=> b!3386111 (=> res!1370003 e!2101977)))

(declare-fun e!2101978 () Bool)

(assert (=> b!3386111 (= res!1370003 e!2101978)))

(declare-fun res!1370004 () Bool)

(assert (=> b!3386111 (=> (not res!1370004) (not e!2101978))))

(declare-fun lt!1150466 () Bool)

(assert (=> b!3386111 (= res!1370004 lt!1150466)))

(declare-fun b!3386112 () Bool)

(declare-fun res!1370002 () Bool)

(assert (=> b!3386112 (=> (not res!1370002) (not e!2101978))))

(assert (=> b!3386112 (= res!1370002 (not call!244976))))

(declare-fun b!3386113 () Bool)

(declare-fun e!2101976 () Bool)

(assert (=> b!3386113 (= e!2101976 (nullable!3454 (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400))))))

(declare-fun b!3386114 () Bool)

(declare-fun res!1370007 () Bool)

(assert (=> b!3386114 (=> (not res!1370007) (not e!2101978))))

(assert (=> b!3386114 (= res!1370007 (isEmpty!21121 (tail!5361 (tail!5361 lt!1149400))))))

(declare-fun d!961305 () Bool)

(declare-fun e!2101981 () Bool)

(assert (=> d!961305 e!2101981))

(declare-fun c!576817 () Bool)

(assert (=> d!961305 (= c!576817 ((_ is EmptyExpr!10135) (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400))))))

(assert (=> d!961305 (= lt!1150466 e!2101976)))

(declare-fun c!576818 () Bool)

(assert (=> d!961305 (= c!576818 (isEmpty!21121 (tail!5361 lt!1149400)))))

(assert (=> d!961305 (validRegex!4610 (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400)))))

(assert (=> d!961305 (= (matchR!4727 (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400)) (tail!5361 lt!1149400)) lt!1150466)))

(declare-fun b!3386108 () Bool)

(assert (=> b!3386108 (= e!2101978 (= (head!7229 (tail!5361 lt!1149400)) (c!576276 (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400)))))))

(declare-fun b!3386115 () Bool)

(declare-fun res!1370001 () Bool)

(assert (=> b!3386115 (=> res!1370001 e!2101982)))

(assert (=> b!3386115 (= res!1370001 (not (isEmpty!21121 (tail!5361 (tail!5361 lt!1149400)))))))

(declare-fun b!3386116 () Bool)

(assert (=> b!3386116 (= e!2101981 e!2101979)))

(declare-fun c!576816 () Bool)

(assert (=> b!3386116 (= c!576816 ((_ is EmptyLang!10135) (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400))))))

(declare-fun b!3386117 () Bool)

(assert (=> b!3386117 (= e!2101977 e!2101980)))

(declare-fun res!1370005 () Bool)

(assert (=> b!3386117 (=> (not res!1370005) (not e!2101980))))

(assert (=> b!3386117 (= res!1370005 (not lt!1150466))))

(declare-fun b!3386118 () Bool)

(assert (=> b!3386118 (= e!2101981 (= lt!1150466 call!244976))))

(declare-fun bm!244971 () Bool)

(assert (=> bm!244971 (= call!244976 (isEmpty!21121 (tail!5361 lt!1149400)))))

(declare-fun b!3386119 () Bool)

(assert (=> b!3386119 (= e!2101979 (not lt!1150466))))

(declare-fun b!3386120 () Bool)

(assert (=> b!3386120 (= e!2101976 (matchR!4727 (derivativeStep!3007 (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400)) (head!7229 (tail!5361 lt!1149400))) (tail!5361 (tail!5361 lt!1149400))))))

(declare-fun b!3386121 () Bool)

(assert (=> b!3386121 (= e!2101982 (not (= (head!7229 (tail!5361 lt!1149400)) (c!576276 (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400))))))))

(assert (= (and d!961305 c!576818) b!3386113))

(assert (= (and d!961305 (not c!576818)) b!3386120))

(assert (= (and d!961305 c!576817) b!3386118))

(assert (= (and d!961305 (not c!576817)) b!3386116))

(assert (= (and b!3386116 c!576816) b!3386119))

(assert (= (and b!3386116 (not c!576816)) b!3386110))

(assert (= (and b!3386110 (not res!1370008)) b!3386111))

(assert (= (and b!3386111 res!1370004) b!3386112))

(assert (= (and b!3386112 res!1370002) b!3386114))

(assert (= (and b!3386114 res!1370007) b!3386108))

(assert (= (and b!3386111 (not res!1370003)) b!3386117))

(assert (= (and b!3386117 res!1370005) b!3386109))

(assert (= (and b!3386109 (not res!1370006)) b!3386115))

(assert (= (and b!3386115 (not res!1370001)) b!3386121))

(assert (= (or b!3386118 b!3386109 b!3386112) bm!244971))

(assert (=> b!3386108 m!3749491))

(assert (=> b!3386108 m!3751743))

(assert (=> b!3386114 m!3749491))

(assert (=> b!3386114 m!3751745))

(assert (=> b!3386114 m!3751745))

(assert (=> b!3386114 m!3751747))

(assert (=> b!3386120 m!3749491))

(assert (=> b!3386120 m!3751743))

(assert (=> b!3386120 m!3749495))

(assert (=> b!3386120 m!3751743))

(declare-fun m!3752095 () Bool)

(assert (=> b!3386120 m!3752095))

(assert (=> b!3386120 m!3749491))

(assert (=> b!3386120 m!3751745))

(assert (=> b!3386120 m!3752095))

(assert (=> b!3386120 m!3751745))

(declare-fun m!3752097 () Bool)

(assert (=> b!3386120 m!3752097))

(assert (=> d!961305 m!3749491))

(assert (=> d!961305 m!3749493))

(assert (=> d!961305 m!3749495))

(declare-fun m!3752099 () Bool)

(assert (=> d!961305 m!3752099))

(assert (=> bm!244971 m!3749491))

(assert (=> bm!244971 m!3749493))

(assert (=> b!3386113 m!3749495))

(declare-fun m!3752101 () Bool)

(assert (=> b!3386113 m!3752101))

(assert (=> b!3386115 m!3749491))

(assert (=> b!3386115 m!3751745))

(assert (=> b!3386115 m!3751745))

(assert (=> b!3386115 m!3751747))

(assert (=> b!3386121 m!3749491))

(assert (=> b!3386121 m!3751743))

(assert (=> b!3384318 d!961305))

(declare-fun b!3386122 () Bool)

(declare-fun e!2101987 () Regex!10135)

(declare-fun e!2101983 () Regex!10135)

(assert (=> b!3386122 (= e!2101987 e!2101983)))

(declare-fun c!576819 () Bool)

(assert (=> b!3386122 (= c!576819 ((_ is Star!10135) (regex!5376 lt!1149393)))))

(declare-fun b!3386123 () Bool)

(declare-fun e!2101986 () Regex!10135)

(assert (=> b!3386123 (= e!2101986 (ite (= (head!7229 lt!1149400) (c!576276 (regex!5376 lt!1149393))) EmptyExpr!10135 EmptyLang!10135))))

(declare-fun bm!244972 () Bool)

(declare-fun c!576823 () Bool)

(declare-fun call!244980 () Regex!10135)

(assert (=> bm!244972 (= call!244980 (derivativeStep!3007 (ite c!576823 (regTwo!20783 (regex!5376 lt!1149393)) (ite c!576819 (reg!10464 (regex!5376 lt!1149393)) (regOne!20782 (regex!5376 lt!1149393)))) (head!7229 lt!1149400)))))

(declare-fun b!3386124 () Bool)

(declare-fun c!576820 () Bool)

(assert (=> b!3386124 (= c!576820 (nullable!3454 (regOne!20782 (regex!5376 lt!1149393))))))

(declare-fun e!2101984 () Regex!10135)

(assert (=> b!3386124 (= e!2101983 e!2101984)))

(declare-fun d!961307 () Bool)

(declare-fun lt!1150467 () Regex!10135)

(assert (=> d!961307 (validRegex!4610 lt!1150467)))

(declare-fun e!2101985 () Regex!10135)

(assert (=> d!961307 (= lt!1150467 e!2101985)))

(declare-fun c!576821 () Bool)

(assert (=> d!961307 (= c!576821 (or ((_ is EmptyExpr!10135) (regex!5376 lt!1149393)) ((_ is EmptyLang!10135) (regex!5376 lt!1149393))))))

(assert (=> d!961307 (validRegex!4610 (regex!5376 lt!1149393))))

(assert (=> d!961307 (= (derivativeStep!3007 (regex!5376 lt!1149393) (head!7229 lt!1149400)) lt!1150467)))

(declare-fun b!3386125 () Bool)

(assert (=> b!3386125 (= e!2101985 e!2101986)))

(declare-fun c!576822 () Bool)

(assert (=> b!3386125 (= c!576822 ((_ is ElementMatch!10135) (regex!5376 lt!1149393)))))

(declare-fun b!3386126 () Bool)

(declare-fun call!244979 () Regex!10135)

(assert (=> b!3386126 (= e!2101987 (Union!10135 call!244979 call!244980))))

(declare-fun bm!244973 () Bool)

(declare-fun call!244978 () Regex!10135)

(assert (=> bm!244973 (= call!244978 call!244980)))

(declare-fun b!3386127 () Bool)

(assert (=> b!3386127 (= e!2101983 (Concat!15741 call!244978 (regex!5376 lt!1149393)))))

(declare-fun b!3386128 () Bool)

(assert (=> b!3386128 (= e!2101985 EmptyLang!10135)))

(declare-fun bm!244974 () Bool)

(assert (=> bm!244974 (= call!244979 (derivativeStep!3007 (ite c!576823 (regOne!20783 (regex!5376 lt!1149393)) (regTwo!20782 (regex!5376 lt!1149393))) (head!7229 lt!1149400)))))

(declare-fun call!244977 () Regex!10135)

(declare-fun b!3386129 () Bool)

(assert (=> b!3386129 (= e!2101984 (Union!10135 (Concat!15741 call!244977 (regTwo!20782 (regex!5376 lt!1149393))) call!244979))))

(declare-fun b!3386130 () Bool)

(assert (=> b!3386130 (= e!2101984 (Union!10135 (Concat!15741 call!244977 (regTwo!20782 (regex!5376 lt!1149393))) EmptyLang!10135))))

(declare-fun bm!244975 () Bool)

(assert (=> bm!244975 (= call!244977 call!244978)))

(declare-fun b!3386131 () Bool)

(assert (=> b!3386131 (= c!576823 ((_ is Union!10135) (regex!5376 lt!1149393)))))

(assert (=> b!3386131 (= e!2101986 e!2101987)))

(assert (= (and d!961307 c!576821) b!3386128))

(assert (= (and d!961307 (not c!576821)) b!3386125))

(assert (= (and b!3386125 c!576822) b!3386123))

(assert (= (and b!3386125 (not c!576822)) b!3386131))

(assert (= (and b!3386131 c!576823) b!3386126))

(assert (= (and b!3386131 (not c!576823)) b!3386122))

(assert (= (and b!3386122 c!576819) b!3386127))

(assert (= (and b!3386122 (not c!576819)) b!3386124))

(assert (= (and b!3386124 c!576820) b!3386129))

(assert (= (and b!3386124 (not c!576820)) b!3386130))

(assert (= (or b!3386129 b!3386130) bm!244975))

(assert (= (or b!3386127 bm!244975) bm!244973))

(assert (= (or b!3386126 b!3386129) bm!244974))

(assert (= (or b!3386126 bm!244973) bm!244972))

(assert (=> bm!244972 m!3748977))

(declare-fun m!3752103 () Bool)

(assert (=> bm!244972 m!3752103))

(declare-fun m!3752105 () Bool)

(assert (=> b!3386124 m!3752105))

(declare-fun m!3752107 () Bool)

(assert (=> d!961307 m!3752107))

(assert (=> d!961307 m!3749501))

(assert (=> bm!244974 m!3748977))

(declare-fun m!3752109 () Bool)

(assert (=> bm!244974 m!3752109))

(assert (=> b!3384318 d!961307))

(assert (=> b!3384318 d!960419))

(assert (=> b!3384318 d!961023))

(declare-fun d!961309 () Bool)

(declare-fun e!2101989 () Bool)

(assert (=> d!961309 e!2101989))

(declare-fun res!1370009 () Bool)

(assert (=> d!961309 (=> (not res!1370009) (not e!2101989))))

(declare-fun lt!1150468 () List!36999)

(assert (=> d!961309 (= res!1370009 (= (content!5087 lt!1150468) ((_ map or) (content!5087 (ite c!576406 call!244793 call!244792)) (content!5087 (ite c!576406 call!244792 call!244793)))))))

(declare-fun e!2101988 () List!36999)

(assert (=> d!961309 (= lt!1150468 e!2101988)))

(declare-fun c!576824 () Bool)

(assert (=> d!961309 (= c!576824 ((_ is Nil!36875) (ite c!576406 call!244793 call!244792)))))

(assert (=> d!961309 (= (++!9017 (ite c!576406 call!244793 call!244792) (ite c!576406 call!244792 call!244793)) lt!1150468)))

(declare-fun b!3386133 () Bool)

(assert (=> b!3386133 (= e!2101988 (Cons!36875 (h!42295 (ite c!576406 call!244793 call!244792)) (++!9017 (t!263602 (ite c!576406 call!244793 call!244792)) (ite c!576406 call!244792 call!244793))))))

(declare-fun b!3386132 () Bool)

(assert (=> b!3386132 (= e!2101988 (ite c!576406 call!244792 call!244793))))

(declare-fun b!3386134 () Bool)

(declare-fun res!1370010 () Bool)

(assert (=> b!3386134 (=> (not res!1370010) (not e!2101989))))

(assert (=> b!3386134 (= res!1370010 (= (size!27909 lt!1150468) (+ (size!27909 (ite c!576406 call!244793 call!244792)) (size!27909 (ite c!576406 call!244792 call!244793)))))))

(declare-fun b!3386135 () Bool)

(assert (=> b!3386135 (= e!2101989 (or (not (= (ite c!576406 call!244792 call!244793) Nil!36875)) (= lt!1150468 (ite c!576406 call!244793 call!244792))))))

(assert (= (and d!961309 c!576824) b!3386132))

(assert (= (and d!961309 (not c!576824)) b!3386133))

(assert (= (and d!961309 res!1370009) b!3386134))

(assert (= (and b!3386134 res!1370010) b!3386135))

(declare-fun m!3752111 () Bool)

(assert (=> d!961309 m!3752111))

(declare-fun m!3752113 () Bool)

(assert (=> d!961309 m!3752113))

(declare-fun m!3752115 () Bool)

(assert (=> d!961309 m!3752115))

(declare-fun m!3752117 () Bool)

(assert (=> b!3386133 m!3752117))

(declare-fun m!3752119 () Bool)

(assert (=> b!3386134 m!3752119))

(declare-fun m!3752121 () Bool)

(assert (=> b!3386134 m!3752121))

(declare-fun m!3752123 () Bool)

(assert (=> b!3386134 m!3752123))

(assert (=> bm!244789 d!961309))

(declare-fun d!961311 () Bool)

(declare-fun e!2101992 () Bool)

(assert (=> d!961311 e!2101992))

(declare-fun res!1370013 () Bool)

(assert (=> d!961311 (=> (not res!1370013) (not e!2101992))))

(declare-fun lt!1150471 () BalanceConc!21870)

(assert (=> d!961311 (= res!1370013 (= (list!13344 lt!1150471) tokens!494))))

(declare-fun fromList!708 (List!37000) Conc!11128)

(assert (=> d!961311 (= lt!1150471 (BalanceConc!21871 (fromList!708 tokens!494)))))

(assert (=> d!961311 (= (fromListB!1705 tokens!494) lt!1150471)))

(declare-fun b!3386138 () Bool)

(assert (=> b!3386138 (= e!2101992 (isBalanced!3357 (fromList!708 tokens!494)))))

(assert (= (and d!961311 res!1370013) b!3386138))

(declare-fun m!3752125 () Bool)

(assert (=> d!961311 m!3752125))

(declare-fun m!3752127 () Bool)

(assert (=> d!961311 m!3752127))

(assert (=> b!3386138 m!3752127))

(assert (=> b!3386138 m!3752127))

(declare-fun m!3752129 () Bool)

(assert (=> b!3386138 m!3752129))

(assert (=> d!960337 d!961311))

(declare-fun b!3386139 () Bool)

(declare-fun res!1370020 () Bool)

(declare-fun e!2101995 () Bool)

(assert (=> b!3386139 (=> (not res!1370020) (not e!2101995))))

(declare-fun lt!1150475 () Option!7402)

(assert (=> b!3386139 (= res!1370020 (< (size!27909 (_2!21370 (get!11775 lt!1150475))) (size!27909 lt!1149402)))))

(declare-fun b!3386140 () Bool)

(declare-fun e!2101994 () Bool)

(assert (=> b!3386140 (= e!2101994 (matchR!4727 (regex!5376 (h!42297 rules!2135)) (_1!21375 (findLongestMatchInner!881 (regex!5376 (h!42297 rules!2135)) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(declare-fun b!3386141 () Bool)

(declare-fun e!2101993 () Bool)

(assert (=> b!3386141 (= e!2101993 e!2101995)))

(declare-fun res!1370016 () Bool)

(assert (=> b!3386141 (=> (not res!1370016) (not e!2101995))))

(assert (=> b!3386141 (= res!1370016 (matchR!4727 (regex!5376 (h!42297 rules!2135)) (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1150475))))))))

(declare-fun b!3386142 () Bool)

(declare-fun res!1370014 () Bool)

(assert (=> b!3386142 (=> (not res!1370014) (not e!2101995))))

(assert (=> b!3386142 (= res!1370014 (= (rule!7930 (_1!21370 (get!11775 lt!1150475))) (h!42297 rules!2135)))))

(declare-fun d!961313 () Bool)

(assert (=> d!961313 e!2101993))

(declare-fun res!1370015 () Bool)

(assert (=> d!961313 (=> res!1370015 e!2101993)))

(assert (=> d!961313 (= res!1370015 (isEmpty!21133 lt!1150475))))

(declare-fun e!2101996 () Option!7402)

(assert (=> d!961313 (= lt!1150475 e!2101996)))

(declare-fun c!576826 () Bool)

(declare-fun lt!1150474 () tuple2!36482)

(assert (=> d!961313 (= c!576826 (isEmpty!21121 (_1!21375 lt!1150474)))))

(assert (=> d!961313 (= lt!1150474 (findLongestMatch!795 (regex!5376 (h!42297 rules!2135)) lt!1149402))))

(assert (=> d!961313 (ruleValid!1705 thiss!18206 (h!42297 rules!2135))))

(assert (=> d!961313 (= (maxPrefixOneRule!1688 thiss!18206 (h!42297 rules!2135) lt!1149402) lt!1150475)))

(declare-fun b!3386143 () Bool)

(assert (=> b!3386143 (= e!2101995 (= (size!27908 (_1!21370 (get!11775 lt!1150475))) (size!27909 (originalCharacters!6090 (_1!21370 (get!11775 lt!1150475))))))))

(declare-fun b!3386144 () Bool)

(assert (=> b!3386144 (= e!2101996 (Some!7401 (tuple2!36473 (Token!10119 (apply!8581 (transformation!5376 (h!42297 rules!2135)) (seqFromList!3805 (_1!21375 lt!1150474))) (h!42297 rules!2135) (size!27911 (seqFromList!3805 (_1!21375 lt!1150474))) (_1!21375 lt!1150474)) (_2!21375 lt!1150474))))))

(declare-fun lt!1150472 () Unit!51991)

(assert (=> b!3386144 (= lt!1150472 (longestMatchIsAcceptedByMatchOrIsEmpty!854 (regex!5376 (h!42297 rules!2135)) lt!1149402))))

(declare-fun res!1370019 () Bool)

(assert (=> b!3386144 (= res!1370019 (isEmpty!21121 (_1!21375 (findLongestMatchInner!881 (regex!5376 (h!42297 rules!2135)) Nil!36875 (size!27909 Nil!36875) lt!1149402 lt!1149402 (size!27909 lt!1149402)))))))

(assert (=> b!3386144 (=> res!1370019 e!2101994)))

(assert (=> b!3386144 e!2101994))

(declare-fun lt!1150476 () Unit!51991)

(assert (=> b!3386144 (= lt!1150476 lt!1150472)))

(declare-fun lt!1150473 () Unit!51991)

(assert (=> b!3386144 (= lt!1150473 (lemmaSemiInverse!1229 (transformation!5376 (h!42297 rules!2135)) (seqFromList!3805 (_1!21375 lt!1150474))))))

(declare-fun b!3386145 () Bool)

(declare-fun res!1370018 () Bool)

(assert (=> b!3386145 (=> (not res!1370018) (not e!2101995))))

(assert (=> b!3386145 (= res!1370018 (= (++!9017 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1150475)))) (_2!21370 (get!11775 lt!1150475))) lt!1149402))))

(declare-fun b!3386146 () Bool)

(declare-fun res!1370017 () Bool)

(assert (=> b!3386146 (=> (not res!1370017) (not e!2101995))))

(assert (=> b!3386146 (= res!1370017 (= (value!173676 (_1!21370 (get!11775 lt!1150475))) (apply!8581 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1150475)))) (seqFromList!3805 (originalCharacters!6090 (_1!21370 (get!11775 lt!1150475)))))))))

(declare-fun b!3386147 () Bool)

(assert (=> b!3386147 (= e!2101996 None!7401)))

(assert (= (and d!961313 c!576826) b!3386147))

(assert (= (and d!961313 (not c!576826)) b!3386144))

(assert (= (and b!3386144 (not res!1370019)) b!3386140))

(assert (= (and d!961313 (not res!1370015)) b!3386141))

(assert (= (and b!3386141 res!1370016) b!3386145))

(assert (= (and b!3386145 res!1370018) b!3386139))

(assert (= (and b!3386139 res!1370020) b!3386142))

(assert (= (and b!3386142 res!1370014) b!3386146))

(assert (= (and b!3386146 res!1370017) b!3386143))

(declare-fun m!3752131 () Bool)

(assert (=> b!3386139 m!3752131))

(declare-fun m!3752133 () Bool)

(assert (=> b!3386139 m!3752133))

(assert (=> b!3386139 m!3748975))

(assert (=> b!3386141 m!3752131))

(declare-fun m!3752135 () Bool)

(assert (=> b!3386141 m!3752135))

(assert (=> b!3386141 m!3752135))

(declare-fun m!3752137 () Bool)

(assert (=> b!3386141 m!3752137))

(assert (=> b!3386141 m!3752137))

(declare-fun m!3752139 () Bool)

(assert (=> b!3386141 m!3752139))

(assert (=> b!3386140 m!3749599))

(assert (=> b!3386140 m!3748975))

(assert (=> b!3386140 m!3749599))

(assert (=> b!3386140 m!3748975))

(declare-fun m!3752141 () Bool)

(assert (=> b!3386140 m!3752141))

(declare-fun m!3752143 () Bool)

(assert (=> b!3386140 m!3752143))

(assert (=> b!3386142 m!3752131))

(assert (=> b!3386145 m!3752131))

(assert (=> b!3386145 m!3752135))

(assert (=> b!3386145 m!3752135))

(assert (=> b!3386145 m!3752137))

(assert (=> b!3386145 m!3752137))

(declare-fun m!3752145 () Bool)

(assert (=> b!3386145 m!3752145))

(assert (=> b!3386143 m!3752131))

(declare-fun m!3752147 () Bool)

(assert (=> b!3386143 m!3752147))

(declare-fun m!3752149 () Bool)

(assert (=> b!3386144 m!3752149))

(declare-fun m!3752151 () Bool)

(assert (=> b!3386144 m!3752151))

(declare-fun m!3752153 () Bool)

(assert (=> b!3386144 m!3752153))

(assert (=> b!3386144 m!3752151))

(assert (=> b!3386144 m!3748975))

(assert (=> b!3386144 m!3749599))

(assert (=> b!3386144 m!3752151))

(declare-fun m!3752155 () Bool)

(assert (=> b!3386144 m!3752155))

(assert (=> b!3386144 m!3752151))

(declare-fun m!3752157 () Bool)

(assert (=> b!3386144 m!3752157))

(assert (=> b!3386144 m!3749599))

(assert (=> b!3386144 m!3748975))

(assert (=> b!3386144 m!3752141))

(declare-fun m!3752159 () Bool)

(assert (=> b!3386144 m!3752159))

(assert (=> b!3386146 m!3752131))

(declare-fun m!3752161 () Bool)

(assert (=> b!3386146 m!3752161))

(assert (=> b!3386146 m!3752161))

(declare-fun m!3752163 () Bool)

(assert (=> b!3386146 m!3752163))

(declare-fun m!3752165 () Bool)

(assert (=> d!961313 m!3752165))

(declare-fun m!3752167 () Bool)

(assert (=> d!961313 m!3752167))

(declare-fun m!3752169 () Bool)

(assert (=> d!961313 m!3752169))

(declare-fun m!3752171 () Bool)

(assert (=> d!961313 m!3752171))

(assert (=> bm!244795 d!961313))

(declare-fun d!961315 () Bool)

(assert (=> d!961315 (= (inv!17 (value!173676 (h!42296 tokens!494))) (= (charsToBigInt!1 (text!39690 (value!173676 (h!42296 tokens!494)))) (value!173668 (value!173676 (h!42296 tokens!494)))))))

(declare-fun bs!555167 () Bool)

(assert (= bs!555167 d!961315))

(declare-fun m!3752173 () Bool)

(assert (=> bs!555167 m!3752173))

(assert (=> b!3384557 d!961315))

(declare-fun d!961317 () Bool)

(declare-fun lt!1150477 () Token!10118)

(assert (=> d!961317 (= lt!1150477 (apply!8585 (list!13344 (_1!21371 lt!1149561)) 0))))

(assert (=> d!961317 (= lt!1150477 (apply!8586 (c!576278 (_1!21371 lt!1149561)) 0))))

(declare-fun e!2101997 () Bool)

(assert (=> d!961317 e!2101997))

(declare-fun res!1370021 () Bool)

(assert (=> d!961317 (=> (not res!1370021) (not e!2101997))))

(assert (=> d!961317 (= res!1370021 (<= 0 0))))

(assert (=> d!961317 (= (apply!8584 (_1!21371 lt!1149561) 0) lt!1150477)))

(declare-fun b!3386148 () Bool)

(assert (=> b!3386148 (= e!2101997 (< 0 (size!27912 (_1!21371 lt!1149561))))))

(assert (= (and d!961317 res!1370021) b!3386148))

(assert (=> d!961317 m!3751081))

(assert (=> d!961317 m!3751081))

(declare-fun m!3752175 () Bool)

(assert (=> d!961317 m!3752175))

(declare-fun m!3752177 () Bool)

(assert (=> d!961317 m!3752177))

(assert (=> b!3386148 m!3749461))

(assert (=> b!3384255 d!961317))

(assert (=> b!3384403 d!961071))

(declare-fun d!961319 () Bool)

(declare-fun lt!1150478 () Int)

(assert (=> d!961319 (>= lt!1150478 0)))

(declare-fun e!2101998 () Int)

(assert (=> d!961319 (= lt!1150478 e!2101998)))

(declare-fun c!576827 () Bool)

(assert (=> d!961319 (= c!576827 ((_ is Nil!36875) (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627)))))))

(assert (=> d!961319 (= (size!27909 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627)))) lt!1150478)))

(declare-fun b!3386149 () Bool)

(assert (=> b!3386149 (= e!2101998 0)))

(declare-fun b!3386150 () Bool)

(assert (=> b!3386150 (= e!2101998 (+ 1 (size!27909 (t!263602 (originalCharacters!6090 (_1!21370 (get!11775 lt!1149627)))))))))

(assert (= (and d!961319 c!576827) b!3386149))

(assert (= (and d!961319 (not c!576827)) b!3386150))

(declare-fun m!3752179 () Bool)

(assert (=> b!3386150 m!3752179))

(assert (=> b!3384403 d!961319))

(declare-fun d!961321 () Bool)

(declare-fun c!576828 () Bool)

(assert (=> d!961321 (= c!576828 ((_ is Nil!36875) (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))

(declare-fun e!2101999 () (InoxSet C!20456))

(assert (=> d!961321 (= (content!5087 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))) e!2101999)))

(declare-fun b!3386151 () Bool)

(assert (=> b!3386151 (= e!2101999 ((as const (Array C!20456 Bool)) false))))

(declare-fun b!3386152 () Bool)

(assert (=> b!3386152 (= e!2101999 ((_ map or) (store ((as const (Array C!20456 Bool)) false) (h!42295 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))) true) (content!5087 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))))

(assert (= (and d!961321 c!576828) b!3386151))

(assert (= (and d!961321 (not c!576828)) b!3386152))

(declare-fun m!3752181 () Bool)

(assert (=> b!3386152 m!3752181))

(assert (=> b!3386152 m!3751105))

(assert (=> d!960381 d!961321))

(declare-fun d!961323 () Bool)

(assert (=> d!961323 (= (list!13344 (_1!21371 lt!1149484)) (list!13348 (c!576278 (_1!21371 lt!1149484))))))

(declare-fun bs!555168 () Bool)

(assert (= bs!555168 d!961323))

(declare-fun m!3752183 () Bool)

(assert (=> bs!555168 m!3752183))

(assert (=> b!3384056 d!961323))

(assert (=> b!3384056 d!961285))

(assert (=> b!3384056 d!961291))

(declare-fun d!961325 () Bool)

(declare-fun e!2102002 () Bool)

(assert (=> d!961325 e!2102002))

(declare-fun res!1370024 () Bool)

(assert (=> d!961325 (=> (not res!1370024) (not e!2102002))))

(declare-fun lt!1150481 () BalanceConc!21868)

(assert (=> d!961325 (= res!1370024 (= (list!13341 lt!1150481) lt!1149402))))

(declare-fun fromList!709 (List!36999) Conc!11127)

(assert (=> d!961325 (= lt!1150481 (BalanceConc!21869 (fromList!709 lt!1149402)))))

(assert (=> d!961325 (= (fromListB!1704 lt!1149402) lt!1150481)))

(declare-fun b!3386155 () Bool)

(assert (=> b!3386155 (= e!2102002 (isBalanced!3359 (fromList!709 lt!1149402)))))

(assert (= (and d!961325 res!1370024) b!3386155))

(declare-fun m!3752185 () Bool)

(assert (=> d!961325 m!3752185))

(declare-fun m!3752187 () Bool)

(assert (=> d!961325 m!3752187))

(assert (=> b!3386155 m!3752187))

(assert (=> b!3386155 m!3752187))

(declare-fun m!3752189 () Bool)

(assert (=> b!3386155 m!3752189))

(assert (=> d!960313 d!961325))

(declare-fun d!961327 () Bool)

(assert (=> d!961327 (= (isEmpty!21133 lt!1149684) (not ((_ is Some!7401) lt!1149684)))))

(assert (=> d!960521 d!961327))

(declare-fun b!3386166 () Bool)

(declare-fun e!2102011 () Bool)

(assert (=> b!3386166 (= e!2102011 (isPrefix!2826 (tail!5361 lt!1149402) (tail!5361 lt!1149402)))))

(declare-fun b!3386167 () Bool)

(declare-fun e!2102010 () Bool)

(assert (=> b!3386167 (= e!2102010 (>= (size!27909 lt!1149402) (size!27909 lt!1149402)))))

(declare-fun b!3386164 () Bool)

(declare-fun e!2102009 () Bool)

(assert (=> b!3386164 (= e!2102009 e!2102011)))

(declare-fun res!1370035 () Bool)

(assert (=> b!3386164 (=> (not res!1370035) (not e!2102011))))

(assert (=> b!3386164 (= res!1370035 (not ((_ is Nil!36875) lt!1149402)))))

(declare-fun d!961329 () Bool)

(assert (=> d!961329 e!2102010))

(declare-fun res!1370034 () Bool)

(assert (=> d!961329 (=> res!1370034 e!2102010)))

(declare-fun lt!1150484 () Bool)

(assert (=> d!961329 (= res!1370034 (not lt!1150484))))

(assert (=> d!961329 (= lt!1150484 e!2102009)))

(declare-fun res!1370033 () Bool)

(assert (=> d!961329 (=> res!1370033 e!2102009)))

(assert (=> d!961329 (= res!1370033 ((_ is Nil!36875) lt!1149402))))

(assert (=> d!961329 (= (isPrefix!2826 lt!1149402 lt!1149402) lt!1150484)))

(declare-fun b!3386165 () Bool)

(declare-fun res!1370036 () Bool)

(assert (=> b!3386165 (=> (not res!1370036) (not e!2102011))))

(assert (=> b!3386165 (= res!1370036 (= (head!7229 lt!1149402) (head!7229 lt!1149402)))))

(assert (= (and d!961329 (not res!1370033)) b!3386164))

(assert (= (and b!3386164 res!1370035) b!3386165))

(assert (= (and b!3386165 res!1370036) b!3386166))

(assert (= (and d!961329 (not res!1370034)) b!3386167))

(assert (=> b!3386166 m!3749735))

(assert (=> b!3386166 m!3749735))

(assert (=> b!3386166 m!3749735))

(assert (=> b!3386166 m!3749735))

(declare-fun m!3752191 () Bool)

(assert (=> b!3386166 m!3752191))

(assert (=> b!3386167 m!3748975))

(assert (=> b!3386167 m!3748975))

(assert (=> b!3386165 m!3749781))

(assert (=> b!3386165 m!3749781))

(assert (=> d!960521 d!961329))

(declare-fun d!961331 () Bool)

(assert (=> d!961331 (isPrefix!2826 lt!1149402 lt!1149402)))

(declare-fun lt!1150487 () Unit!51991)

(declare-fun choose!19614 (List!36999 List!36999) Unit!51991)

(assert (=> d!961331 (= lt!1150487 (choose!19614 lt!1149402 lt!1149402))))

(assert (=> d!961331 (= (lemmaIsPrefixRefl!1785 lt!1149402 lt!1149402) lt!1150487)))

(declare-fun bs!555169 () Bool)

(assert (= bs!555169 d!961331))

(assert (=> bs!555169 m!3749843))

(declare-fun m!3752193 () Bool)

(assert (=> bs!555169 m!3752193))

(assert (=> d!960521 d!961331))

(declare-fun bs!555170 () Bool)

(declare-fun d!961333 () Bool)

(assert (= bs!555170 (and d!961333 d!961107)))

(declare-fun lambda!120601 () Int)

(assert (=> bs!555170 (= lambda!120601 lambda!120587)))

(assert (=> d!961333 true))

(declare-fun lt!1150490 () Bool)

(assert (=> d!961333 (= lt!1150490 (forall!7771 rules!2135 lambda!120601))))

(declare-fun e!2102016 () Bool)

(assert (=> d!961333 (= lt!1150490 e!2102016)))

(declare-fun res!1370041 () Bool)

(assert (=> d!961333 (=> res!1370041 e!2102016)))

(assert (=> d!961333 (= res!1370041 (not ((_ is Cons!36877) rules!2135)))))

(assert (=> d!961333 (= (rulesValidInductive!1833 thiss!18206 rules!2135) lt!1150490)))

(declare-fun b!3386172 () Bool)

(declare-fun e!2102017 () Bool)

(assert (=> b!3386172 (= e!2102016 e!2102017)))

(declare-fun res!1370042 () Bool)

(assert (=> b!3386172 (=> (not res!1370042) (not e!2102017))))

(assert (=> b!3386172 (= res!1370042 (ruleValid!1705 thiss!18206 (h!42297 rules!2135)))))

(declare-fun b!3386173 () Bool)

(assert (=> b!3386173 (= e!2102017 (rulesValidInductive!1833 thiss!18206 (t!263604 rules!2135)))))

(assert (= (and d!961333 (not res!1370041)) b!3386172))

(assert (= (and b!3386172 res!1370042) b!3386173))

(declare-fun m!3752195 () Bool)

(assert (=> d!961333 m!3752195))

(assert (=> b!3386172 m!3752171))

(assert (=> b!3386173 m!3751911))

(assert (=> d!960521 d!961333))

(assert (=> d!960447 d!960391))

(declare-fun d!961335 () Bool)

(assert (=> d!961335 (rulesProduceIndividualToken!2457 thiss!18206 rules!2135 (h!42296 tokens!494))))

(assert (=> d!961335 true))

(declare-fun _$77!920 () Unit!51991)

(assert (=> d!961335 (= (choose!19599 thiss!18206 rules!2135 tokens!494 (h!42296 tokens!494)) _$77!920)))

(declare-fun bs!555171 () Bool)

(assert (= bs!555171 d!961335))

(assert (=> bs!555171 m!3748901))

(assert (=> d!960447 d!961335))

(assert (=> d!960447 d!960483))

(declare-fun bs!555172 () Bool)

(declare-fun d!961337 () Bool)

(assert (= bs!555172 (and d!961337 d!960815)))

(declare-fun lambda!120602 () Int)

(assert (=> bs!555172 (= lambda!120602 lambda!120576)))

(declare-fun bs!555173 () Bool)

(assert (= bs!555173 (and d!961337 d!960849)))

(assert (=> bs!555173 (= (and (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (h!42297 rules!2135)))) (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (h!42297 rules!2135))))) (= lambda!120602 lambda!120579))))

(declare-fun bs!555174 () Bool)

(assert (= bs!555174 (and d!961337 d!961295)))

(assert (=> bs!555174 (= (and (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))))) (= lambda!120602 lambda!120598))))

(assert (=> d!961337 true))

(assert (=> d!961337 (< (dynLambda!15350 order!19431 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (dynLambda!15358 order!19443 lambda!120602))))

(assert (=> d!961337 true))

(assert (=> d!961337 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (dynLambda!15358 order!19443 lambda!120602))))

(assert (=> d!961337 (= (semiInverseModEq!2245 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (Forall!1319 lambda!120602))))

(declare-fun bs!555175 () Bool)

(assert (= bs!555175 d!961337))

(declare-fun m!3752197 () Bool)

(assert (=> bs!555175 m!3752197))

(assert (=> d!960409 d!961337))

(declare-fun d!961339 () Bool)

(assert (=> d!961339 (dynLambda!15347 lambda!120549 (h!42296 tokens!494))))

(assert (=> d!961339 true))

(declare-fun _$7!1227 () Unit!51991)

(assert (=> d!961339 (= (choose!19601 tokens!494 lambda!120549 (h!42296 tokens!494)) _$7!1227)))

(declare-fun b_lambda!96247 () Bool)

(assert (=> (not b_lambda!96247) (not d!961339)))

(declare-fun bs!555176 () Bool)

(assert (= bs!555176 d!961339))

(assert (=> bs!555176 m!3749285))

(assert (=> d!960487 d!961339))

(assert (=> d!960487 d!960331))

(assert (=> b!3384328 d!961249))

(assert (=> b!3384328 d!960475))

(declare-fun b!3386177 () Bool)

(declare-fun e!2102019 () List!36999)

(assert (=> b!3386177 (= e!2102019 (++!9017 (list!13345 (left!28749 (c!576277 lt!1149410))) (list!13345 (right!29079 (c!576277 lt!1149410)))))))

(declare-fun b!3386174 () Bool)

(declare-fun e!2102018 () List!36999)

(assert (=> b!3386174 (= e!2102018 Nil!36875)))

(declare-fun d!961341 () Bool)

(declare-fun c!576830 () Bool)

(assert (=> d!961341 (= c!576830 ((_ is Empty!11127) (c!576277 lt!1149410)))))

(assert (=> d!961341 (= (list!13345 (c!576277 lt!1149410)) e!2102018)))

(declare-fun b!3386176 () Bool)

(assert (=> b!3386176 (= e!2102019 (list!13349 (xs!14281 (c!576277 lt!1149410))))))

(declare-fun b!3386175 () Bool)

(assert (=> b!3386175 (= e!2102018 e!2102019)))

(declare-fun c!576831 () Bool)

(assert (=> b!3386175 (= c!576831 ((_ is Leaf!17426) (c!576277 lt!1149410)))))

(assert (= (and d!961341 c!576830) b!3386174))

(assert (= (and d!961341 (not c!576830)) b!3386175))

(assert (= (and b!3386175 c!576831) b!3386176))

(assert (= (and b!3386175 (not c!576831)) b!3386177))

(declare-fun m!3752199 () Bool)

(assert (=> b!3386177 m!3752199))

(declare-fun m!3752201 () Bool)

(assert (=> b!3386177 m!3752201))

(assert (=> b!3386177 m!3752199))

(assert (=> b!3386177 m!3752201))

(declare-fun m!3752203 () Bool)

(assert (=> b!3386177 m!3752203))

(declare-fun m!3752205 () Bool)

(assert (=> b!3386176 m!3752205))

(assert (=> d!960315 d!961341))

(declare-fun d!961343 () Bool)

(assert (=> d!961343 (= (isEmpty!21132 lt!1149590) (not ((_ is Some!7400) lt!1149590)))))

(assert (=> d!960421 d!961343))

(assert (=> d!960421 d!960327))

(declare-fun d!961345 () Bool)

(declare-fun e!2102021 () Bool)

(assert (=> d!961345 e!2102021))

(declare-fun res!1370043 () Bool)

(assert (=> d!961345 (=> (not res!1370043) (not e!2102021))))

(declare-fun lt!1150491 () List!36999)

(assert (=> d!961345 (= res!1370043 (= (content!5087 lt!1150491) ((_ map or) (content!5087 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))) (content!5087 (_2!21370 (get!11775 lt!1149684))))))))

(declare-fun e!2102020 () List!36999)

(assert (=> d!961345 (= lt!1150491 e!2102020)))

(declare-fun c!576832 () Bool)

(assert (=> d!961345 (= c!576832 ((_ is Nil!36875) (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))))))

(assert (=> d!961345 (= (++!9017 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684)))) (_2!21370 (get!11775 lt!1149684))) lt!1150491)))

(declare-fun b!3386179 () Bool)

(assert (=> b!3386179 (= e!2102020 (Cons!36875 (h!42295 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))) (++!9017 (t!263602 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))) (_2!21370 (get!11775 lt!1149684)))))))

(declare-fun b!3386178 () Bool)

(assert (=> b!3386178 (= e!2102020 (_2!21370 (get!11775 lt!1149684)))))

(declare-fun b!3386180 () Bool)

(declare-fun res!1370044 () Bool)

(assert (=> b!3386180 (=> (not res!1370044) (not e!2102021))))

(assert (=> b!3386180 (= res!1370044 (= (size!27909 lt!1150491) (+ (size!27909 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684))))) (size!27909 (_2!21370 (get!11775 lt!1149684))))))))

(declare-fun b!3386181 () Bool)

(assert (=> b!3386181 (= e!2102021 (or (not (= (_2!21370 (get!11775 lt!1149684)) Nil!36875)) (= lt!1150491 (list!13341 (charsOf!3390 (_1!21370 (get!11775 lt!1149684)))))))))

(assert (= (and d!961345 c!576832) b!3386178))

(assert (= (and d!961345 (not c!576832)) b!3386179))

(assert (= (and d!961345 res!1370043) b!3386180))

(assert (= (and b!3386180 res!1370044) b!3386181))

(declare-fun m!3752207 () Bool)

(assert (=> d!961345 m!3752207))

(assert (=> d!961345 m!3749857))

(declare-fun m!3752209 () Bool)

(assert (=> d!961345 m!3752209))

(declare-fun m!3752211 () Bool)

(assert (=> d!961345 m!3752211))

(declare-fun m!3752213 () Bool)

(assert (=> b!3386179 m!3752213))

(declare-fun m!3752215 () Bool)

(assert (=> b!3386180 m!3752215))

(assert (=> b!3386180 m!3749857))

(declare-fun m!3752217 () Bool)

(assert (=> b!3386180 m!3752217))

(assert (=> b!3386180 m!3749861))

(assert (=> b!3384626 d!961345))

(assert (=> b!3384626 d!960705))

(assert (=> b!3384626 d!960707))

(assert (=> b!3384626 d!960709))

(declare-fun bs!555177 () Bool)

(declare-fun d!961347 () Bool)

(assert (= bs!555177 (and d!961347 d!960851)))

(declare-fun lambda!120603 () Int)

(assert (=> bs!555177 (= (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241)))) (= lambda!120603 lambda!120582))))

(declare-fun bs!555178 () Bool)

(assert (= bs!555178 (and d!961347 d!961239)))

(assert (=> bs!555178 (= (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) (= lambda!120603 lambda!120597))))

(assert (=> d!961347 true))

(assert (=> d!961347 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (h!42297 rules!2135)))) (dynLambda!15359 order!19445 lambda!120603))))

(assert (=> d!961347 (= (equivClasses!2144 (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (h!42297 rules!2135)))) (Forall2!915 lambda!120603))))

(declare-fun bs!555179 () Bool)

(assert (= bs!555179 d!961347))

(declare-fun m!3752219 () Bool)

(assert (=> bs!555179 m!3752219))

(assert (=> b!3384604 d!961347))

(declare-fun d!961349 () Bool)

(declare-fun lt!1150494 () Bool)

(assert (=> d!961349 (= lt!1150494 (select (content!5089 tokens!494) (h!42296 tokens!494)))))

(declare-fun e!2102027 () Bool)

(assert (=> d!961349 (= lt!1150494 e!2102027)))

(declare-fun res!1370050 () Bool)

(assert (=> d!961349 (=> (not res!1370050) (not e!2102027))))

(assert (=> d!961349 (= res!1370050 ((_ is Cons!36876) tokens!494))))

(assert (=> d!961349 (= (contains!6753 tokens!494 (h!42296 tokens!494)) lt!1150494)))

(declare-fun b!3386186 () Bool)

(declare-fun e!2102026 () Bool)

(assert (=> b!3386186 (= e!2102027 e!2102026)))

(declare-fun res!1370049 () Bool)

(assert (=> b!3386186 (=> res!1370049 e!2102026)))

(assert (=> b!3386186 (= res!1370049 (= (h!42296 tokens!494) (h!42296 tokens!494)))))

(declare-fun b!3386187 () Bool)

(assert (=> b!3386187 (= e!2102026 (contains!6753 (t!263603 tokens!494) (h!42296 tokens!494)))))

(assert (= (and d!961349 res!1370050) b!3386186))

(assert (= (and b!3386186 (not res!1370049)) b!3386187))

(declare-fun m!3752221 () Bool)

(assert (=> d!961349 m!3752221))

(declare-fun m!3752223 () Bool)

(assert (=> d!961349 m!3752223))

(declare-fun m!3752225 () Bool)

(assert (=> b!3386187 m!3752225))

(assert (=> b!3384554 d!961349))

(declare-fun d!961351 () Bool)

(assert (=> d!961351 (= (maxPrefixOneRule!1688 thiss!18206 (rule!7930 (h!42296 tokens!494)) lt!1149402) (Some!7401 (tuple2!36473 (Token!10119 (apply!8581 (transformation!5376 (rule!7930 (h!42296 tokens!494))) (seqFromList!3805 lt!1149402)) (rule!7930 (h!42296 tokens!494)) (size!27909 lt!1149402) lt!1149402) Nil!36875)))))

(assert (=> d!961351 true))

(declare-fun _$59!469 () Unit!51991)

(assert (=> d!961351 (= (choose!19598 thiss!18206 rules!2135 lt!1149402 lt!1149402 Nil!36875 (rule!7930 (h!42296 tokens!494))) _$59!469)))

(declare-fun bs!555180 () Bool)

(assert (= bs!555180 d!961351))

(assert (=> bs!555180 m!3748989))

(assert (=> bs!555180 m!3748941))

(assert (=> bs!555180 m!3748941))

(assert (=> bs!555180 m!3749547))

(assert (=> bs!555180 m!3748975))

(assert (=> d!960425 d!961351))

(assert (=> d!960425 d!960423))

(assert (=> d!960425 d!960313))

(declare-fun d!961353 () Bool)

(assert (=> d!961353 (= (apply!8581 (transformation!5376 (rule!7930 (h!42296 tokens!494))) (seqFromList!3805 lt!1149402)) (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (seqFromList!3805 lt!1149402)))))

(declare-fun b_lambda!96249 () Bool)

(assert (=> (not b_lambda!96249) (not d!961353)))

(declare-fun tb!180665 () Bool)

(declare-fun t!263938 () Bool)

(assert (=> (and b!3383876 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263938) tb!180665))

(declare-fun result!224172 () Bool)

(assert (=> tb!180665 (= result!224172 (inv!21 (dynLambda!15355 (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (seqFromList!3805 lt!1149402))))))

(declare-fun m!3752227 () Bool)

(assert (=> tb!180665 m!3752227))

(assert (=> d!961353 t!263938))

(declare-fun b_and!235569 () Bool)

(assert (= b_and!235555 (and (=> t!263938 result!224172) b_and!235569)))

(declare-fun t!263940 () Bool)

(declare-fun tb!180667 () Bool)

(assert (=> (and b!3383882 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263940) tb!180667))

(declare-fun result!224174 () Bool)

(assert (= result!224174 result!224172))

(assert (=> d!961353 t!263940))

(declare-fun b_and!235571 () Bool)

(assert (= b_and!235561 (and (=> t!263940 result!224174) b_and!235571)))

(declare-fun tb!180669 () Bool)

(declare-fun t!263942 () Bool)

(assert (=> (and b!3384684 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263942) tb!180669))

(declare-fun result!224176 () Bool)

(assert (= result!224176 result!224172))

(assert (=> d!961353 t!263942))

(declare-fun b_and!235573 () Bool)

(assert (= b_and!235557 (and (=> t!263942 result!224176) b_and!235573)))

(declare-fun t!263944 () Bool)

(declare-fun tb!180671 () Bool)

(assert (=> (and b!3384650 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263944) tb!180671))

(declare-fun result!224178 () Bool)

(assert (= result!224178 result!224172))

(assert (=> d!961353 t!263944))

(declare-fun b_and!235575 () Bool)

(assert (= b_and!235563 (and (=> t!263944 result!224178) b_and!235575)))

(declare-fun t!263946 () Bool)

(declare-fun tb!180673 () Bool)

(assert (=> (and b!3383881 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263946) tb!180673))

(declare-fun result!224180 () Bool)

(assert (= result!224180 result!224172))

(assert (=> d!961353 t!263946))

(declare-fun b_and!235577 () Bool)

(assert (= b_and!235559 (and (=> t!263946 result!224180) b_and!235577)))

(assert (=> d!961353 m!3748941))

(declare-fun m!3752229 () Bool)

(assert (=> d!961353 m!3752229))

(assert (=> d!960425 d!961353))

(assert (=> d!960425 d!960483))

(assert (=> d!960425 d!960429))

(assert (=> b!3384580 d!960969))

(assert (=> b!3384580 d!960971))

(declare-fun d!961355 () Bool)

(declare-fun lt!1150495 () Bool)

(assert (=> d!961355 (= lt!1150495 (isEmpty!21121 (list!13341 (_2!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)))))))))

(assert (=> d!961355 (= lt!1150495 (isEmpty!21135 (c!576277 (_2!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241)))))))))

(assert (=> d!961355 (= (isEmpty!21130 (_2!21371 (lex!2291 thiss!18206 rules!2135 (print!2030 thiss!18206 (singletonSeq!2472 separatorToken!241))))) lt!1150495)))

(declare-fun bs!555181 () Bool)

(assert (= bs!555181 d!961355))

(declare-fun m!3752231 () Bool)

(assert (=> bs!555181 m!3752231))

(assert (=> bs!555181 m!3752231))

(declare-fun m!3752233 () Bool)

(assert (=> bs!555181 m!3752233))

(declare-fun m!3752235 () Bool)

(assert (=> bs!555181 m!3752235))

(assert (=> b!3384179 d!961355))

(assert (=> b!3384179 d!961017))

(assert (=> b!3384179 d!961015))

(assert (=> b!3384179 d!961007))

(assert (=> b!3384567 d!961021))

(assert (=> b!3384567 d!961023))

(declare-fun bm!244976 () Bool)

(declare-fun call!244982 () List!36999)

(declare-fun call!244983 () List!36999)

(assert (=> bm!244976 (= call!244982 call!244983)))

(declare-fun c!576833 () Bool)

(declare-fun call!244981 () List!36999)

(declare-fun bm!244977 () Bool)

(assert (=> bm!244977 (= call!244981 (usedCharacters!632 (ite c!576833 (regTwo!20783 (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) (regOne!20782 (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))))

(declare-fun call!244984 () List!36999)

(declare-fun bm!244978 () Bool)

(assert (=> bm!244978 (= call!244984 (++!9017 (ite c!576833 call!244982 call!244981) (ite c!576833 call!244981 call!244982)))))

(declare-fun b!3386188 () Bool)

(declare-fun e!2102032 () List!36999)

(assert (=> b!3386188 (= e!2102032 Nil!36875)))

(declare-fun d!961357 () Bool)

(declare-fun c!576834 () Bool)

(assert (=> d!961357 (= c!576834 (or ((_ is EmptyExpr!10135) (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) ((_ is EmptyLang!10135) (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))))

(assert (=> d!961357 (= (usedCharacters!632 (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) e!2102032)))

(declare-fun b!3386189 () Bool)

(declare-fun e!2102031 () List!36999)

(assert (=> b!3386189 (= e!2102031 call!244983)))

(declare-fun b!3386190 () Bool)

(declare-fun e!2102029 () List!36999)

(assert (=> b!3386190 (= e!2102029 call!244984)))

(declare-fun b!3386191 () Bool)

(declare-fun e!2102030 () List!36999)

(assert (=> b!3386191 (= e!2102032 e!2102030)))

(declare-fun c!576835 () Bool)

(assert (=> b!3386191 (= c!576835 ((_ is ElementMatch!10135) (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))

(declare-fun bm!244979 () Bool)

(declare-fun c!576836 () Bool)

(assert (=> bm!244979 (= call!244983 (usedCharacters!632 (ite c!576836 (reg!10464 (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) (ite c!576833 (regOne!20783 (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) (regTwo!20782 (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494))))))))))))

(declare-fun b!3386192 () Bool)

(assert (=> b!3386192 (= e!2102031 e!2102029)))

(assert (=> b!3386192 (= c!576833 ((_ is Union!10135) (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))

(declare-fun b!3386193 () Bool)

(assert (=> b!3386193 (= c!576836 ((_ is Star!10135) (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))))))

(assert (=> b!3386193 (= e!2102030 e!2102031)))

(declare-fun b!3386194 () Bool)

(assert (=> b!3386194 (= e!2102030 (Cons!36875 (c!576276 (ite c!576349 (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) Nil!36875))))

(declare-fun b!3386195 () Bool)

(assert (=> b!3386195 (= e!2102029 call!244984)))

(assert (= (and d!961357 c!576834) b!3386188))

(assert (= (and d!961357 (not c!576834)) b!3386191))

(assert (= (and b!3386191 c!576835) b!3386194))

(assert (= (and b!3386191 (not c!576835)) b!3386193))

(assert (= (and b!3386193 c!576836) b!3386189))

(assert (= (and b!3386193 (not c!576836)) b!3386192))

(assert (= (and b!3386192 c!576833) b!3386195))

(assert (= (and b!3386192 (not c!576833)) b!3386190))

(assert (= (or b!3386195 b!3386190) bm!244977))

(assert (= (or b!3386195 b!3386190) bm!244976))

(assert (= (or b!3386195 b!3386190) bm!244978))

(assert (= (or b!3386189 bm!244976) bm!244979))

(declare-fun m!3752237 () Bool)

(assert (=> bm!244977 m!3752237))

(declare-fun m!3752239 () Bool)

(assert (=> bm!244978 m!3752239))

(declare-fun m!3752241 () Bool)

(assert (=> bm!244979 m!3752241))

(assert (=> bm!244776 d!961357))

(declare-fun d!961359 () Bool)

(declare-fun c!576837 () Bool)

(assert (=> d!961359 (= c!576837 ((_ is Nil!36875) lt!1149669))))

(declare-fun e!2102033 () (InoxSet C!20456))

(assert (=> d!961359 (= (content!5087 lt!1149669) e!2102033)))

(declare-fun b!3386196 () Bool)

(assert (=> b!3386196 (= e!2102033 ((as const (Array C!20456 Bool)) false))))

(declare-fun b!3386197 () Bool)

(assert (=> b!3386197 (= e!2102033 ((_ map or) (store ((as const (Array C!20456 Bool)) false) (h!42295 lt!1149669) true) (content!5087 (t!263602 lt!1149669))))))

(assert (= (and d!961359 c!576837) b!3386196))

(assert (= (and d!961359 (not c!576837)) b!3386197))

(declare-fun m!3752243 () Bool)

(assert (=> b!3386197 m!3752243))

(declare-fun m!3752245 () Bool)

(assert (=> b!3386197 m!3752245))

(assert (=> d!960505 d!961359))

(declare-fun d!961361 () Bool)

(declare-fun c!576838 () Bool)

(assert (=> d!961361 (= c!576838 ((_ is Nil!36875) lt!1149402))))

(declare-fun e!2102034 () (InoxSet C!20456))

(assert (=> d!961361 (= (content!5087 lt!1149402) e!2102034)))

(declare-fun b!3386198 () Bool)

(assert (=> b!3386198 (= e!2102034 ((as const (Array C!20456 Bool)) false))))

(declare-fun b!3386199 () Bool)

(assert (=> b!3386199 (= e!2102034 ((_ map or) (store ((as const (Array C!20456 Bool)) false) (h!42295 lt!1149402) true) (content!5087 (t!263602 lt!1149402))))))

(assert (= (and d!961361 c!576838) b!3386198))

(assert (= (and d!961361 (not c!576838)) b!3386199))

(declare-fun m!3752247 () Bool)

(assert (=> b!3386199 m!3752247))

(assert (=> b!3386199 m!3751491))

(assert (=> d!960505 d!961361))

(declare-fun d!961363 () Bool)

(declare-fun c!576839 () Bool)

(assert (=> d!961363 (= c!576839 ((_ is Nil!36875) lt!1149400))))

(declare-fun e!2102035 () (InoxSet C!20456))

(assert (=> d!961363 (= (content!5087 lt!1149400) e!2102035)))

(declare-fun b!3386200 () Bool)

(assert (=> b!3386200 (= e!2102035 ((as const (Array C!20456 Bool)) false))))

(declare-fun b!3386201 () Bool)

(assert (=> b!3386201 (= e!2102035 ((_ map or) (store ((as const (Array C!20456 Bool)) false) (h!42295 lt!1149400) true) (content!5087 (t!263602 lt!1149400))))))

(assert (= (and d!961363 c!576839) b!3386200))

(assert (= (and d!961363 (not c!576839)) b!3386201))

(declare-fun m!3752249 () Bool)

(assert (=> b!3386201 m!3752249))

(declare-fun m!3752251 () Bool)

(assert (=> b!3386201 m!3752251))

(assert (=> d!960505 d!961363))

(declare-fun d!961365 () Bool)

(assert (=> d!961365 (= (inv!15 (value!173676 separatorToken!241)) (= (charsToBigInt!0 (text!39691 (value!173676 separatorToken!241)) 0) (value!173671 (value!173676 separatorToken!241))))))

(declare-fun bs!555182 () Bool)

(assert (= bs!555182 d!961365))

(declare-fun m!3752253 () Bool)

(assert (=> bs!555182 m!3752253))

(assert (=> b!3384205 d!961365))

(assert (=> b!3384312 d!961021))

(assert (=> b!3384312 d!961023))

(declare-fun d!961367 () Bool)

(declare-fun lt!1150496 () Int)

(assert (=> d!961367 (>= lt!1150496 0)))

(declare-fun e!2102036 () Int)

(assert (=> d!961367 (= lt!1150496 e!2102036)))

(declare-fun c!576840 () Bool)

(assert (=> d!961367 (= c!576840 ((_ is Nil!36875) (t!263602 lt!1149402)))))

(assert (=> d!961367 (= (size!27909 (t!263602 lt!1149402)) lt!1150496)))

(declare-fun b!3386202 () Bool)

(assert (=> b!3386202 (= e!2102036 0)))

(declare-fun b!3386203 () Bool)

(assert (=> b!3386203 (= e!2102036 (+ 1 (size!27909 (t!263602 (t!263602 lt!1149402)))))))

(assert (= (and d!961367 c!576840) b!3386202))

(assert (= (and d!961367 (not c!576840)) b!3386203))

(declare-fun m!3752255 () Bool)

(assert (=> b!3386203 m!3752255))

(assert (=> b!3384356 d!961367))

(declare-fun d!961369 () Bool)

(declare-fun lt!1150497 () Bool)

(assert (=> d!961369 (= lt!1150497 (select (content!5086 rules!2135) (rule!7930 (_1!21370 (get!11775 lt!1149684)))))))

(declare-fun e!2102038 () Bool)

(assert (=> d!961369 (= lt!1150497 e!2102038)))

(declare-fun res!1370052 () Bool)

(assert (=> d!961369 (=> (not res!1370052) (not e!2102038))))

(assert (=> d!961369 (= res!1370052 ((_ is Cons!36877) rules!2135))))

(assert (=> d!961369 (= (contains!6751 rules!2135 (rule!7930 (_1!21370 (get!11775 lt!1149684)))) lt!1150497)))

(declare-fun b!3386204 () Bool)

(declare-fun e!2102037 () Bool)

(assert (=> b!3386204 (= e!2102038 e!2102037)))

(declare-fun res!1370051 () Bool)

(assert (=> b!3386204 (=> res!1370051 e!2102037)))

(assert (=> b!3386204 (= res!1370051 (= (h!42297 rules!2135) (rule!7930 (_1!21370 (get!11775 lt!1149684)))))))

(declare-fun b!3386205 () Bool)

(assert (=> b!3386205 (= e!2102037 (contains!6751 (t!263604 rules!2135) (rule!7930 (_1!21370 (get!11775 lt!1149684)))))))

(assert (= (and d!961369 res!1370052) b!3386204))

(assert (= (and b!3386204 (not res!1370051)) b!3386205))

(assert (=> d!961369 m!3749419))

(declare-fun m!3752257 () Bool)

(assert (=> d!961369 m!3752257))

(declare-fun m!3752259 () Bool)

(assert (=> b!3386205 m!3752259))

(assert (=> b!3384630 d!961369))

(assert (=> b!3384630 d!960709))

(assert (=> b!3384587 d!961175))

(declare-fun d!961371 () Bool)

(declare-fun lt!1150498 () Bool)

(assert (=> d!961371 (= lt!1150498 (select (content!5086 rules!2135) (get!11774 lt!1149590)))))

(declare-fun e!2102040 () Bool)

(assert (=> d!961371 (= lt!1150498 e!2102040)))

(declare-fun res!1370054 () Bool)

(assert (=> d!961371 (=> (not res!1370054) (not e!2102040))))

(assert (=> d!961371 (= res!1370054 ((_ is Cons!36877) rules!2135))))

(assert (=> d!961371 (= (contains!6751 rules!2135 (get!11774 lt!1149590)) lt!1150498)))

(declare-fun b!3386206 () Bool)

(declare-fun e!2102039 () Bool)

(assert (=> b!3386206 (= e!2102040 e!2102039)))

(declare-fun res!1370053 () Bool)

(assert (=> b!3386206 (=> res!1370053 e!2102039)))

(assert (=> b!3386206 (= res!1370053 (= (h!42297 rules!2135) (get!11774 lt!1149590)))))

(declare-fun b!3386207 () Bool)

(assert (=> b!3386207 (= e!2102039 (contains!6751 (t!263604 rules!2135) (get!11774 lt!1149590)))))

(assert (= (and d!961371 res!1370054) b!3386206))

(assert (= (and b!3386206 (not res!1370053)) b!3386207))

(assert (=> d!961371 m!3749419))

(assert (=> d!961371 m!3749531))

(declare-fun m!3752261 () Bool)

(assert (=> d!961371 m!3752261))

(assert (=> b!3386207 m!3749531))

(declare-fun m!3752263 () Bool)

(assert (=> b!3386207 m!3752263))

(assert (=> b!3384348 d!961371))

(assert (=> b!3384348 d!961299))

(assert (=> d!960485 d!961033))

(declare-fun d!961373 () Bool)

(declare-fun lt!1150499 () Bool)

(assert (=> d!961373 (= lt!1150499 (select (content!5087 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241))))) lt!1149396))))

(declare-fun e!2102041 () Bool)

(assert (=> d!961373 (= lt!1150499 e!2102041)))

(declare-fun res!1370055 () Bool)

(assert (=> d!961373 (=> (not res!1370055) (not e!2102041))))

(assert (=> d!961373 (= res!1370055 ((_ is Cons!36875) (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241))))))))

(assert (=> d!961373 (= (contains!6750 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241)))) lt!1149396) lt!1150499)))

(declare-fun b!3386208 () Bool)

(declare-fun e!2102042 () Bool)

(assert (=> b!3386208 (= e!2102041 e!2102042)))

(declare-fun res!1370056 () Bool)

(assert (=> b!3386208 (=> res!1370056 e!2102042)))

(assert (=> b!3386208 (= res!1370056 (= (h!42295 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241))))) lt!1149396))))

(declare-fun b!3386209 () Bool)

(assert (=> b!3386209 (= e!2102042 (contains!6750 (t!263602 (t!263602 (usedCharacters!632 (regex!5376 (rule!7930 separatorToken!241))))) lt!1149396))))

(assert (= (and d!961373 res!1370055) b!3386208))

(assert (= (and b!3386208 (not res!1370056)) b!3386209))

(assert (=> d!961373 m!3751263))

(declare-fun m!3752265 () Bool)

(assert (=> d!961373 m!3752265))

(declare-fun m!3752267 () Bool)

(assert (=> b!3386209 m!3752267))

(assert (=> b!3384358 d!961373))

(assert (=> b!3384319 d!960419))

(declare-fun d!961375 () Bool)

(declare-fun e!2102044 () Bool)

(assert (=> d!961375 e!2102044))

(declare-fun res!1370057 () Bool)

(assert (=> d!961375 (=> (not res!1370057) (not e!2102044))))

(declare-fun lt!1150500 () List!36999)

(assert (=> d!961375 (= res!1370057 (= (content!5087 lt!1150500) ((_ map or) (content!5087 lt!1149402) (content!5087 lt!1149651))))))

(declare-fun e!2102043 () List!36999)

(assert (=> d!961375 (= lt!1150500 e!2102043)))

(declare-fun c!576841 () Bool)

(assert (=> d!961375 (= c!576841 ((_ is Nil!36875) lt!1149402))))

(assert (=> d!961375 (= (++!9017 lt!1149402 lt!1149651) lt!1150500)))

(declare-fun b!3386211 () Bool)

(assert (=> b!3386211 (= e!2102043 (Cons!36875 (h!42295 lt!1149402) (++!9017 (t!263602 lt!1149402) lt!1149651)))))

(declare-fun b!3386210 () Bool)

(assert (=> b!3386210 (= e!2102043 lt!1149651)))

(declare-fun b!3386212 () Bool)

(declare-fun res!1370058 () Bool)

(assert (=> b!3386212 (=> (not res!1370058) (not e!2102044))))

(assert (=> b!3386212 (= res!1370058 (= (size!27909 lt!1150500) (+ (size!27909 lt!1149402) (size!27909 lt!1149651))))))

(declare-fun b!3386213 () Bool)

(assert (=> b!3386213 (= e!2102044 (or (not (= lt!1149651 Nil!36875)) (= lt!1150500 lt!1149402)))))

(assert (= (and d!961375 c!576841) b!3386210))

(assert (= (and d!961375 (not c!576841)) b!3386211))

(assert (= (and d!961375 res!1370057) b!3386212))

(assert (= (and b!3386212 res!1370058) b!3386213))

(declare-fun m!3752269 () Bool)

(assert (=> d!961375 m!3752269))

(assert (=> d!961375 m!3749803))

(declare-fun m!3752271 () Bool)

(assert (=> d!961375 m!3752271))

(declare-fun m!3752273 () Bool)

(assert (=> b!3386211 m!3752273))

(declare-fun m!3752275 () Bool)

(assert (=> b!3386212 m!3752275))

(assert (=> b!3386212 m!3748975))

(declare-fun m!3752277 () Bool)

(assert (=> b!3386212 m!3752277))

(assert (=> d!960473 d!961375))

(assert (=> d!960473 d!960423))

(declare-fun d!961377 () Bool)

(assert (=> d!961377 (= (list!13341 lt!1149487) (list!13345 (c!576277 lt!1149487)))))

(declare-fun bs!555183 () Bool)

(assert (= bs!555183 d!961377))

(declare-fun m!3752279 () Bool)

(assert (=> bs!555183 m!3752279))

(assert (=> d!960317 d!961377))

(declare-fun d!961379 () Bool)

(declare-fun c!576842 () Bool)

(assert (=> d!961379 (= c!576842 ((_ is Cons!36876) (list!13344 lt!1149395)))))

(declare-fun e!2102045 () List!36999)

(assert (=> d!961379 (= (printList!1513 thiss!18206 (list!13344 lt!1149395)) e!2102045)))

(declare-fun b!3386214 () Bool)

(assert (=> b!3386214 (= e!2102045 (++!9017 (list!13341 (charsOf!3390 (h!42296 (list!13344 lt!1149395)))) (printList!1513 thiss!18206 (t!263603 (list!13344 lt!1149395)))))))

(declare-fun b!3386215 () Bool)

(assert (=> b!3386215 (= e!2102045 Nil!36875)))

(assert (= (and d!961379 c!576842) b!3386214))

(assert (= (and d!961379 (not c!576842)) b!3386215))

(declare-fun m!3752281 () Bool)

(assert (=> b!3386214 m!3752281))

(assert (=> b!3386214 m!3752281))

(declare-fun m!3752283 () Bool)

(assert (=> b!3386214 m!3752283))

(declare-fun m!3752285 () Bool)

(assert (=> b!3386214 m!3752285))

(assert (=> b!3386214 m!3752283))

(assert (=> b!3386214 m!3752285))

(declare-fun m!3752287 () Bool)

(assert (=> b!3386214 m!3752287))

(assert (=> d!960317 d!961379))

(assert (=> d!960317 d!961057))

(assert (=> d!960317 d!960319))

(assert (=> bm!244791 d!960931))

(declare-fun b!3386216 () Bool)

(declare-fun e!2102046 () Bool)

(declare-fun tp!1057772 () Bool)

(assert (=> b!3386216 (= e!2102046 (and tp_is_empty!17481 tp!1057772))))

(assert (=> b!3384648 (= tp!1057611 e!2102046)))

(assert (= (and b!3384648 ((_ is Cons!36875) (originalCharacters!6090 (h!42296 (t!263603 tokens!494))))) b!3386216))

(declare-fun e!2102047 () Bool)

(assert (=> b!3384668 (= tp!1057630 e!2102047)))

(declare-fun b!3386220 () Bool)

(declare-fun tp!1057775 () Bool)

(declare-fun tp!1057777 () Bool)

(assert (=> b!3386220 (= e!2102047 (and tp!1057775 tp!1057777))))

(declare-fun b!3386219 () Bool)

(declare-fun tp!1057773 () Bool)

(assert (=> b!3386219 (= e!2102047 tp!1057773)))

(declare-fun b!3386217 () Bool)

(assert (=> b!3386217 (= e!2102047 tp_is_empty!17481)))

(declare-fun b!3386218 () Bool)

(declare-fun tp!1057776 () Bool)

(declare-fun tp!1057774 () Bool)

(assert (=> b!3386218 (= e!2102047 (and tp!1057776 tp!1057774))))

(assert (= (and b!3384668 ((_ is ElementMatch!10135) (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386217))

(assert (= (and b!3384668 ((_ is Concat!15741) (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386218))

(assert (= (and b!3384668 ((_ is Star!10135) (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386219))

(assert (= (and b!3384668 ((_ is Union!10135) (regOne!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386220))

(declare-fun e!2102048 () Bool)

(assert (=> b!3384668 (= tp!1057632 e!2102048)))

(declare-fun b!3386224 () Bool)

(declare-fun tp!1057780 () Bool)

(declare-fun tp!1057782 () Bool)

(assert (=> b!3386224 (= e!2102048 (and tp!1057780 tp!1057782))))

(declare-fun b!3386223 () Bool)

(declare-fun tp!1057778 () Bool)

(assert (=> b!3386223 (= e!2102048 tp!1057778)))

(declare-fun b!3386221 () Bool)

(assert (=> b!3386221 (= e!2102048 tp_is_empty!17481)))

(declare-fun b!3386222 () Bool)

(declare-fun tp!1057781 () Bool)

(declare-fun tp!1057779 () Bool)

(assert (=> b!3386222 (= e!2102048 (and tp!1057781 tp!1057779))))

(assert (= (and b!3384668 ((_ is ElementMatch!10135) (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386221))

(assert (= (and b!3384668 ((_ is Concat!15741) (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386222))

(assert (= (and b!3384668 ((_ is Star!10135) (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386223))

(assert (= (and b!3384668 ((_ is Union!10135) (regTwo!20783 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386224))

(declare-fun e!2102049 () Bool)

(assert (=> b!3384649 (= tp!1057609 e!2102049)))

(declare-fun b!3386228 () Bool)

(declare-fun tp!1057785 () Bool)

(declare-fun tp!1057787 () Bool)

(assert (=> b!3386228 (= e!2102049 (and tp!1057785 tp!1057787))))

(declare-fun b!3386227 () Bool)

(declare-fun tp!1057783 () Bool)

(assert (=> b!3386227 (= e!2102049 tp!1057783)))

(declare-fun b!3386225 () Bool)

(assert (=> b!3386225 (= e!2102049 tp_is_empty!17481)))

(declare-fun b!3386226 () Bool)

(declare-fun tp!1057786 () Bool)

(declare-fun tp!1057784 () Bool)

(assert (=> b!3386226 (= e!2102049 (and tp!1057786 tp!1057784))))

(assert (= (and b!3384649 ((_ is ElementMatch!10135) (regex!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) b!3386225))

(assert (= (and b!3384649 ((_ is Concat!15741) (regex!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) b!3386226))

(assert (= (and b!3384649 ((_ is Star!10135) (regex!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) b!3386227))

(assert (= (and b!3384649 ((_ is Union!10135) (regex!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) b!3386228))

(declare-fun e!2102050 () Bool)

(assert (=> b!3384666 (= tp!1057631 e!2102050)))

(declare-fun b!3386232 () Bool)

(declare-fun tp!1057790 () Bool)

(declare-fun tp!1057792 () Bool)

(assert (=> b!3386232 (= e!2102050 (and tp!1057790 tp!1057792))))

(declare-fun b!3386231 () Bool)

(declare-fun tp!1057788 () Bool)

(assert (=> b!3386231 (= e!2102050 tp!1057788)))

(declare-fun b!3386229 () Bool)

(assert (=> b!3386229 (= e!2102050 tp_is_empty!17481)))

(declare-fun b!3386230 () Bool)

(declare-fun tp!1057791 () Bool)

(declare-fun tp!1057789 () Bool)

(assert (=> b!3386230 (= e!2102050 (and tp!1057791 tp!1057789))))

(assert (= (and b!3384666 ((_ is ElementMatch!10135) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386229))

(assert (= (and b!3384666 ((_ is Concat!15741) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386230))

(assert (= (and b!3384666 ((_ is Star!10135) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386231))

(assert (= (and b!3384666 ((_ is Union!10135) (regOne!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386232))

(declare-fun e!2102051 () Bool)

(assert (=> b!3384666 (= tp!1057629 e!2102051)))

(declare-fun b!3386236 () Bool)

(declare-fun tp!1057795 () Bool)

(declare-fun tp!1057797 () Bool)

(assert (=> b!3386236 (= e!2102051 (and tp!1057795 tp!1057797))))

(declare-fun b!3386235 () Bool)

(declare-fun tp!1057793 () Bool)

(assert (=> b!3386235 (= e!2102051 tp!1057793)))

(declare-fun b!3386233 () Bool)

(assert (=> b!3386233 (= e!2102051 tp_is_empty!17481)))

(declare-fun b!3386234 () Bool)

(declare-fun tp!1057796 () Bool)

(declare-fun tp!1057794 () Bool)

(assert (=> b!3386234 (= e!2102051 (and tp!1057796 tp!1057794))))

(assert (= (and b!3384666 ((_ is ElementMatch!10135) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386233))

(assert (= (and b!3384666 ((_ is Concat!15741) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386234))

(assert (= (and b!3384666 ((_ is Star!10135) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386235))

(assert (= (and b!3384666 ((_ is Union!10135) (regTwo!20782 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386236))

(declare-fun b!3386240 () Bool)

(declare-fun b_free!88605 () Bool)

(declare-fun b_next!89309 () Bool)

(assert (=> b!3386240 (= b_free!88605 (not b_next!89309))))

(declare-fun t!263948 () Bool)

(declare-fun tb!180675 () Bool)

(assert (=> (and b!3386240 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263948) tb!180675))

(declare-fun result!224182 () Bool)

(assert (= result!224182 result!223998))

(assert (=> d!960815 t!263948))

(assert (=> d!960825 t!263948))

(declare-fun tb!180677 () Bool)

(declare-fun t!263950 () Bool)

(assert (=> (and b!3386240 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263950) tb!180677))

(declare-fun result!224184 () Bool)

(assert (= result!224184 result!224120))

(assert (=> d!961277 t!263950))

(declare-fun t!263952 () Bool)

(declare-fun tb!180679 () Bool)

(assert (=> (and b!3386240 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263952) tb!180679))

(declare-fun result!224186 () Bool)

(assert (= result!224186 result!223866))

(assert (=> d!960417 t!263952))

(declare-fun t!263954 () Bool)

(declare-fun tb!180681 () Bool)

(assert (=> (and b!3386240 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263954) tb!180681))

(declare-fun result!224188 () Bool)

(assert (= result!224188 result!224100))

(assert (=> d!961263 t!263954))

(declare-fun t!263956 () Bool)

(declare-fun tb!180683 () Bool)

(assert (=> (and b!3386240 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263956) tb!180683))

(declare-fun result!224190 () Bool)

(assert (= result!224190 result!224172))

(assert (=> d!961353 t!263956))

(declare-fun tp!1057802 () Bool)

(declare-fun b_and!235579 () Bool)

(assert (=> b!3386240 (= tp!1057802 (and (=> t!263956 result!224190) (=> t!263950 result!224184) (=> t!263952 result!224186) (=> t!263954 result!224188) (=> t!263948 result!224182) b_and!235579))))

(declare-fun b_free!88607 () Bool)

(declare-fun b_next!89311 () Bool)

(assert (=> b!3386240 (= b_free!88607 (not b_next!89311))))

(declare-fun tb!180685 () Bool)

(declare-fun t!263958 () Bool)

(assert (=> (and b!3386240 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0))))) t!263958) tb!180685))

(declare-fun result!224192 () Bool)

(assert (= result!224192 result!224038))

(assert (=> d!961059 t!263958))

(declare-fun t!263960 () Bool)

(declare-fun tb!180687 () Bool)

(assert (=> (and b!3386240 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) t!263960) tb!180687))

(declare-fun result!224194 () Bool)

(assert (= result!224194 result!223902))

(assert (=> b!3384602 t!263960))

(declare-fun t!263962 () Bool)

(declare-fun tb!180689 () Bool)

(assert (=> (and b!3386240 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))) t!263962) tb!180689))

(declare-fun result!224196 () Bool)

(assert (= result!224196 result!224048))

(assert (=> d!961077 t!263962))

(declare-fun t!263964 () Bool)

(declare-fun tb!180691 () Bool)

(assert (=> (and b!3386240 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263964) tb!180691))

(declare-fun result!224198 () Bool)

(assert (= result!224198 result!223988))

(assert (=> d!960815 t!263964))

(declare-fun t!263966 () Bool)

(declare-fun tb!180693 () Bool)

(assert (=> (and b!3386240 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263966) tb!180693))

(declare-fun result!224200 () Bool)

(assert (= result!224200 result!223858))

(assert (=> b!3384211 t!263966))

(declare-fun t!263968 () Bool)

(declare-fun tb!180695 () Bool)

(assert (=> (and b!3386240 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263968) tb!180695))

(declare-fun result!224202 () Bool)

(assert (= result!224202 result!224058))

(assert (=> d!961103 t!263968))

(declare-fun tb!180697 () Bool)

(declare-fun t!263970 () Bool)

(assert (=> (and b!3386240 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263970) tb!180697))

(declare-fun result!224204 () Bool)

(assert (= result!224204 result!223958))

(assert (=> d!960707 t!263970))

(declare-fun t!263972 () Bool)

(declare-fun tb!180699 () Bool)

(assert (=> (and b!3386240 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) t!263972) tb!180699))

(declare-fun result!224206 () Bool)

(assert (= result!224206 result!224008))

(assert (=> b!3385206 t!263972))

(assert (=> d!960345 t!263966))

(assert (=> d!960511 t!263960))

(declare-fun tp!1057798 () Bool)

(declare-fun b_and!235581 () Bool)

(assert (=> b!3386240 (= tp!1057798 (and (=> t!263964 result!224198) (=> t!263966 result!224200) (=> t!263962 result!224196) (=> t!263970 result!224204) (=> t!263958 result!224192) (=> t!263972 result!224206) (=> t!263960 result!224194) (=> t!263968 result!224202) b_and!235581))))

(declare-fun e!2102057 () Bool)

(assert (=> b!3384647 (= tp!1057610 e!2102057)))

(declare-fun tp!1057800 () Bool)

(declare-fun b!3386237 () Bool)

(declare-fun e!2102053 () Bool)

(assert (=> b!3386237 (= e!2102057 (and (inv!49952 (h!42296 (t!263603 (t!263603 tokens!494)))) e!2102053 tp!1057800))))

(declare-fun b!3386239 () Bool)

(declare-fun e!2102055 () Bool)

(declare-fun e!2102052 () Bool)

(declare-fun tp!1057799 () Bool)

(assert (=> b!3386239 (= e!2102052 (and tp!1057799 (inv!49949 (tag!5954 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (inv!49953 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) e!2102055))))

(declare-fun b!3386238 () Bool)

(declare-fun tp!1057801 () Bool)

(assert (=> b!3386238 (= e!2102053 (and (inv!21 (value!173676 (h!42296 (t!263603 (t!263603 tokens!494))))) e!2102052 tp!1057801))))

(assert (=> b!3386240 (= e!2102055 (and tp!1057802 tp!1057798))))

(assert (= b!3386239 b!3386240))

(assert (= b!3386238 b!3386239))

(assert (= b!3386237 b!3386238))

(assert (= (and b!3384647 ((_ is Cons!36876) (t!263603 (t!263603 tokens!494)))) b!3386237))

(declare-fun m!3752289 () Bool)

(assert (=> b!3386237 m!3752289))

(declare-fun m!3752291 () Bool)

(assert (=> b!3386239 m!3752291))

(declare-fun m!3752293 () Bool)

(assert (=> b!3386239 m!3752293))

(declare-fun m!3752295 () Bool)

(assert (=> b!3386238 m!3752295))

(declare-fun e!2102058 () Bool)

(assert (=> b!3384667 (= tp!1057628 e!2102058)))

(declare-fun b!3386244 () Bool)

(declare-fun tp!1057805 () Bool)

(declare-fun tp!1057807 () Bool)

(assert (=> b!3386244 (= e!2102058 (and tp!1057805 tp!1057807))))

(declare-fun b!3386243 () Bool)

(declare-fun tp!1057803 () Bool)

(assert (=> b!3386243 (= e!2102058 tp!1057803)))

(declare-fun b!3386241 () Bool)

(assert (=> b!3386241 (= e!2102058 tp_is_empty!17481)))

(declare-fun b!3386242 () Bool)

(declare-fun tp!1057806 () Bool)

(declare-fun tp!1057804 () Bool)

(assert (=> b!3386242 (= e!2102058 (and tp!1057806 tp!1057804))))

(assert (= (and b!3384667 ((_ is ElementMatch!10135) (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386241))

(assert (= (and b!3384667 ((_ is Concat!15741) (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386242))

(assert (= (and b!3384667 ((_ is Star!10135) (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386243))

(assert (= (and b!3384667 ((_ is Union!10135) (reg!10464 (regex!5376 (rule!7930 (h!42296 tokens!494)))))) b!3386244))

(declare-fun b!3386253 () Bool)

(declare-fun e!2102063 () Bool)

(declare-fun tp!1057814 () Bool)

(declare-fun tp!1057816 () Bool)

(assert (=> b!3386253 (= e!2102063 (and (inv!49956 (left!28749 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))))) tp!1057814 (inv!49956 (right!29079 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))))) tp!1057816))))

(declare-fun b!3386255 () Bool)

(declare-fun e!2102064 () Bool)

(declare-fun tp!1057815 () Bool)

(assert (=> b!3386255 (= e!2102064 tp!1057815)))

(declare-fun b!3386254 () Bool)

(declare-fun inv!49963 (IArray!22259) Bool)

(assert (=> b!3386254 (= e!2102063 (and (inv!49963 (xs!14281 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))))) e!2102064))))

(assert (=> b!3384135 (= tp!1057537 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494))))) e!2102063))))

(assert (= (and b!3384135 ((_ is Node!11127) (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))))) b!3386253))

(assert (= b!3386254 b!3386255))

(assert (= (and b!3384135 ((_ is Leaf!17426) (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (value!173676 (h!42296 tokens!494)))))) b!3386254))

(declare-fun m!3752297 () Bool)

(assert (=> b!3386253 m!3752297))

(declare-fun m!3752299 () Bool)

(assert (=> b!3386253 m!3752299))

(declare-fun m!3752301 () Bool)

(assert (=> b!3386254 m!3752301))

(assert (=> b!3384135 m!3749321))

(declare-fun e!2102065 () Bool)

(assert (=> b!3384672 (= tp!1057635 e!2102065)))

(declare-fun b!3386259 () Bool)

(declare-fun tp!1057819 () Bool)

(declare-fun tp!1057821 () Bool)

(assert (=> b!3386259 (= e!2102065 (and tp!1057819 tp!1057821))))

(declare-fun b!3386258 () Bool)

(declare-fun tp!1057817 () Bool)

(assert (=> b!3386258 (= e!2102065 tp!1057817)))

(declare-fun b!3386256 () Bool)

(assert (=> b!3386256 (= e!2102065 tp_is_empty!17481)))

(declare-fun b!3386257 () Bool)

(declare-fun tp!1057820 () Bool)

(declare-fun tp!1057818 () Bool)

(assert (=> b!3386257 (= e!2102065 (and tp!1057820 tp!1057818))))

(assert (= (and b!3384672 ((_ is ElementMatch!10135) (regOne!20783 (regex!5376 (h!42297 rules!2135))))) b!3386256))

(assert (= (and b!3384672 ((_ is Concat!15741) (regOne!20783 (regex!5376 (h!42297 rules!2135))))) b!3386257))

(assert (= (and b!3384672 ((_ is Star!10135) (regOne!20783 (regex!5376 (h!42297 rules!2135))))) b!3386258))

(assert (= (and b!3384672 ((_ is Union!10135) (regOne!20783 (regex!5376 (h!42297 rules!2135))))) b!3386259))

(declare-fun e!2102066 () Bool)

(assert (=> b!3384672 (= tp!1057637 e!2102066)))

(declare-fun b!3386263 () Bool)

(declare-fun tp!1057824 () Bool)

(declare-fun tp!1057826 () Bool)

(assert (=> b!3386263 (= e!2102066 (and tp!1057824 tp!1057826))))

(declare-fun b!3386262 () Bool)

(declare-fun tp!1057822 () Bool)

(assert (=> b!3386262 (= e!2102066 tp!1057822)))

(declare-fun b!3386260 () Bool)

(assert (=> b!3386260 (= e!2102066 tp_is_empty!17481)))

(declare-fun b!3386261 () Bool)

(declare-fun tp!1057825 () Bool)

(declare-fun tp!1057823 () Bool)

(assert (=> b!3386261 (= e!2102066 (and tp!1057825 tp!1057823))))

(assert (= (and b!3384672 ((_ is ElementMatch!10135) (regTwo!20783 (regex!5376 (h!42297 rules!2135))))) b!3386260))

(assert (= (and b!3384672 ((_ is Concat!15741) (regTwo!20783 (regex!5376 (h!42297 rules!2135))))) b!3386261))

(assert (= (and b!3384672 ((_ is Star!10135) (regTwo!20783 (regex!5376 (h!42297 rules!2135))))) b!3386262))

(assert (= (and b!3384672 ((_ is Union!10135) (regTwo!20783 (regex!5376 (h!42297 rules!2135))))) b!3386263))

(declare-fun e!2102067 () Bool)

(assert (=> b!3384663 (= tp!1057623 e!2102067)))

(declare-fun b!3386267 () Bool)

(declare-fun tp!1057829 () Bool)

(declare-fun tp!1057831 () Bool)

(assert (=> b!3386267 (= e!2102067 (and tp!1057829 tp!1057831))))

(declare-fun b!3386266 () Bool)

(declare-fun tp!1057827 () Bool)

(assert (=> b!3386266 (= e!2102067 tp!1057827)))

(declare-fun b!3386264 () Bool)

(assert (=> b!3386264 (= e!2102067 tp_is_empty!17481)))

(declare-fun b!3386265 () Bool)

(declare-fun tp!1057830 () Bool)

(declare-fun tp!1057828 () Bool)

(assert (=> b!3386265 (= e!2102067 (and tp!1057830 tp!1057828))))

(assert (= (and b!3384663 ((_ is ElementMatch!10135) (reg!10464 (regex!5376 (rule!7930 separatorToken!241))))) b!3386264))

(assert (= (and b!3384663 ((_ is Concat!15741) (reg!10464 (regex!5376 (rule!7930 separatorToken!241))))) b!3386265))

(assert (= (and b!3384663 ((_ is Star!10135) (reg!10464 (regex!5376 (rule!7930 separatorToken!241))))) b!3386266))

(assert (= (and b!3384663 ((_ is Union!10135) (reg!10464 (regex!5376 (rule!7930 separatorToken!241))))) b!3386267))

(declare-fun b!3386268 () Bool)

(declare-fun e!2102068 () Bool)

(declare-fun tp!1057834 () Bool)

(declare-fun tp!1057832 () Bool)

(assert (=> b!3386268 (= e!2102068 (and (inv!49956 (left!28749 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))))) tp!1057832 (inv!49956 (right!29079 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))))) tp!1057834))))

(declare-fun b!3386270 () Bool)

(declare-fun e!2102069 () Bool)

(declare-fun tp!1057833 () Bool)

(assert (=> b!3386270 (= e!2102069 tp!1057833)))

(declare-fun b!3386269 () Bool)

(assert (=> b!3386269 (= e!2102068 (and (inv!49963 (xs!14281 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))))) e!2102069))))

(assert (=> b!3384601 (= tp!1057594 (and (inv!49956 (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241)))) e!2102068))))

(assert (= (and b!3384601 ((_ is Node!11127) (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))))) b!3386268))

(assert (= b!3386269 b!3386270))

(assert (= (and b!3384601 ((_ is Leaf!17426) (c!576277 (dynLambda!15351 (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (value!173676 separatorToken!241))))) b!3386269))

(declare-fun m!3752303 () Bool)

(assert (=> b!3386268 m!3752303))

(declare-fun m!3752305 () Bool)

(assert (=> b!3386268 m!3752305))

(declare-fun m!3752307 () Bool)

(assert (=> b!3386269 m!3752307))

(assert (=> b!3384601 m!3749821))

(declare-fun e!2102070 () Bool)

(assert (=> b!3384671 (= tp!1057633 e!2102070)))

(declare-fun b!3386274 () Bool)

(declare-fun tp!1057837 () Bool)

(declare-fun tp!1057839 () Bool)

(assert (=> b!3386274 (= e!2102070 (and tp!1057837 tp!1057839))))

(declare-fun b!3386273 () Bool)

(declare-fun tp!1057835 () Bool)

(assert (=> b!3386273 (= e!2102070 tp!1057835)))

(declare-fun b!3386271 () Bool)

(assert (=> b!3386271 (= e!2102070 tp_is_empty!17481)))

(declare-fun b!3386272 () Bool)

(declare-fun tp!1057838 () Bool)

(declare-fun tp!1057836 () Bool)

(assert (=> b!3386272 (= e!2102070 (and tp!1057838 tp!1057836))))

(assert (= (and b!3384671 ((_ is ElementMatch!10135) (reg!10464 (regex!5376 (h!42297 rules!2135))))) b!3386271))

(assert (= (and b!3384671 ((_ is Concat!15741) (reg!10464 (regex!5376 (h!42297 rules!2135))))) b!3386272))

(assert (= (and b!3384671 ((_ is Star!10135) (reg!10464 (regex!5376 (h!42297 rules!2135))))) b!3386273))

(assert (= (and b!3384671 ((_ is Union!10135) (reg!10464 (regex!5376 (h!42297 rules!2135))))) b!3386274))

(declare-fun e!2102071 () Bool)

(assert (=> b!3384662 (= tp!1057626 e!2102071)))

(declare-fun b!3386278 () Bool)

(declare-fun tp!1057842 () Bool)

(declare-fun tp!1057844 () Bool)

(assert (=> b!3386278 (= e!2102071 (and tp!1057842 tp!1057844))))

(declare-fun b!3386277 () Bool)

(declare-fun tp!1057840 () Bool)

(assert (=> b!3386277 (= e!2102071 tp!1057840)))

(declare-fun b!3386275 () Bool)

(assert (=> b!3386275 (= e!2102071 tp_is_empty!17481)))

(declare-fun b!3386276 () Bool)

(declare-fun tp!1057843 () Bool)

(declare-fun tp!1057841 () Bool)

(assert (=> b!3386276 (= e!2102071 (and tp!1057843 tp!1057841))))

(assert (= (and b!3384662 ((_ is ElementMatch!10135) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) b!3386275))

(assert (= (and b!3384662 ((_ is Concat!15741) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) b!3386276))

(assert (= (and b!3384662 ((_ is Star!10135) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) b!3386277))

(assert (= (and b!3384662 ((_ is Union!10135) (regOne!20782 (regex!5376 (rule!7930 separatorToken!241))))) b!3386278))

(declare-fun e!2102072 () Bool)

(assert (=> b!3384662 (= tp!1057624 e!2102072)))

(declare-fun b!3386282 () Bool)

(declare-fun tp!1057847 () Bool)

(declare-fun tp!1057849 () Bool)

(assert (=> b!3386282 (= e!2102072 (and tp!1057847 tp!1057849))))

(declare-fun b!3386281 () Bool)

(declare-fun tp!1057845 () Bool)

(assert (=> b!3386281 (= e!2102072 tp!1057845)))

(declare-fun b!3386279 () Bool)

(assert (=> b!3386279 (= e!2102072 tp_is_empty!17481)))

(declare-fun b!3386280 () Bool)

(declare-fun tp!1057848 () Bool)

(declare-fun tp!1057846 () Bool)

(assert (=> b!3386280 (= e!2102072 (and tp!1057848 tp!1057846))))

(assert (= (and b!3384662 ((_ is ElementMatch!10135) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241))))) b!3386279))

(assert (= (and b!3384662 ((_ is Concat!15741) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241))))) b!3386280))

(assert (= (and b!3384662 ((_ is Star!10135) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241))))) b!3386281))

(assert (= (and b!3384662 ((_ is Union!10135) (regTwo!20782 (regex!5376 (rule!7930 separatorToken!241))))) b!3386282))

(declare-fun b!3386285 () Bool)

(declare-fun b_free!88609 () Bool)

(declare-fun b_next!89313 () Bool)

(assert (=> b!3386285 (= b_free!88609 (not b_next!89313))))

(declare-fun t!263974 () Bool)

(declare-fun tb!180701 () Bool)

(assert (=> (and b!3386285 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263974) tb!180701))

(declare-fun result!224210 () Bool)

(assert (= result!224210 result!223998))

(assert (=> d!960815 t!263974))

(assert (=> d!960825 t!263974))

(declare-fun tb!180703 () Bool)

(declare-fun t!263976 () Bool)

(assert (=> (and b!3386285 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263976) tb!180703))

(declare-fun result!224212 () Bool)

(assert (= result!224212 result!224120))

(assert (=> d!961277 t!263976))

(declare-fun tb!180705 () Bool)

(declare-fun t!263978 () Bool)

(assert (=> (and b!3386285 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263978) tb!180705))

(declare-fun result!224214 () Bool)

(assert (= result!224214 result!223866))

(assert (=> d!960417 t!263978))

(declare-fun tb!180707 () Bool)

(declare-fun t!263980 () Bool)

(assert (=> (and b!3386285 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toValue!7564 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263980) tb!180707))

(declare-fun result!224216 () Bool)

(assert (= result!224216 result!224100))

(assert (=> d!961263 t!263980))

(declare-fun tb!180709 () Bool)

(declare-fun t!263982 () Bool)

(assert (=> (and b!3386285 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263982) tb!180709))

(declare-fun result!224218 () Bool)

(assert (= result!224218 result!224172))

(assert (=> d!961353 t!263982))

(declare-fun b_and!235583 () Bool)

(declare-fun tp!1057850 () Bool)

(assert (=> b!3386285 (= tp!1057850 (and (=> t!263982 result!224218) (=> t!263976 result!224212) (=> t!263978 result!224214) (=> t!263974 result!224210) (=> t!263980 result!224216) b_and!235583))))

(declare-fun b_free!88611 () Bool)

(declare-fun b_next!89315 () Bool)

(assert (=> b!3386285 (= b_free!88611 (not b_next!89315))))

(declare-fun tb!180711 () Bool)

(declare-fun t!263984 () Bool)

(assert (=> (and b!3386285 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (apply!8584 lt!1149395 0))))) t!263984) tb!180711))

(declare-fun result!224220 () Bool)

(assert (= result!224220 result!224038))

(assert (=> d!961059 t!263984))

(declare-fun t!263986 () Bool)

(declare-fun tb!180713 () Bool)

(assert (=> (and b!3386285 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241)))) t!263986) tb!180713))

(declare-fun result!224222 () Bool)

(assert (= result!224222 result!223902))

(assert (=> b!3384602 t!263986))

(declare-fun t!263988 () Bool)

(declare-fun tb!180715 () Bool)

(assert (=> (and b!3386285 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (Cons!36876 (h!42296 tokens!494) Nil!36876)))))) t!263988) tb!180715))

(declare-fun result!224224 () Bool)

(assert (= result!224224 result!224048))

(assert (=> d!961077 t!263988))

(declare-fun tb!180717 () Bool)

(declare-fun t!263990 () Bool)

(assert (=> (and b!3386285 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263990) tb!180717))

(declare-fun result!224226 () Bool)

(assert (= result!224226 result!223988))

(assert (=> d!960815 t!263990))

(declare-fun t!263992 () Bool)

(declare-fun tb!180719 () Bool)

(assert (=> (and b!3386285 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494))))) t!263992) tb!180719))

(declare-fun result!224228 () Bool)

(assert (= result!224228 result!223858))

(assert (=> b!3384211 t!263992))

(declare-fun tb!180721 () Bool)

(declare-fun t!263994 () Bool)

(assert (=> (and b!3386285 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149627)))))) t!263994) tb!180721))

(declare-fun result!224230 () Bool)

(assert (= result!224230 result!224058))

(assert (=> d!961103 t!263994))

(declare-fun tb!180723 () Bool)

(declare-fun t!263996 () Bool)

(assert (=> (and b!3386285 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (_1!21370 (get!11775 lt!1149684)))))) t!263996) tb!180723))

(declare-fun result!224232 () Bool)

(assert (= result!224232 result!223958))

(assert (=> d!960707 t!263996))

(declare-fun tb!180725 () Bool)

(declare-fun t!263998 () Bool)

(assert (=> (and b!3386285 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494)))))) t!263998) tb!180725))

(declare-fun result!224234 () Bool)

(assert (= result!224234 result!224008))

(assert (=> b!3385206 t!263998))

(assert (=> d!960345 t!263992))

(assert (=> d!960511 t!263986))

(declare-fun b_and!235585 () Bool)

(declare-fun tp!1057853 () Bool)

(assert (=> b!3386285 (= tp!1057853 (and (=> t!263998 result!224234) (=> t!263992 result!224228) (=> t!263988 result!224224) (=> t!263986 result!224222) (=> t!263994 result!224230) (=> t!263990 result!224226) (=> t!263984 result!224220) (=> t!263996 result!224232) b_and!235585))))

(declare-fun e!2102076 () Bool)

(assert (=> b!3386285 (= e!2102076 (and tp!1057850 tp!1057853))))

(declare-fun b!3386284 () Bool)

(declare-fun e!2102075 () Bool)

(declare-fun tp!1057852 () Bool)

(assert (=> b!3386284 (= e!2102075 (and tp!1057852 (inv!49949 (tag!5954 (h!42297 (t!263604 (t!263604 rules!2135))))) (inv!49953 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) e!2102076))))

(declare-fun b!3386283 () Bool)

(declare-fun e!2102074 () Bool)

(declare-fun tp!1057851 () Bool)

(assert (=> b!3386283 (= e!2102074 (and e!2102075 tp!1057851))))

(assert (=> b!3384682 (= tp!1057648 e!2102074)))

(assert (= b!3386284 b!3386285))

(assert (= b!3386283 b!3386284))

(assert (= (and b!3384682 ((_ is Cons!36877) (t!263604 (t!263604 rules!2135)))) b!3386283))

(declare-fun m!3752309 () Bool)

(assert (=> b!3386284 m!3752309))

(declare-fun m!3752311 () Bool)

(assert (=> b!3386284 m!3752311))

(declare-fun e!2102077 () Bool)

(assert (=> b!3384670 (= tp!1057636 e!2102077)))

(declare-fun b!3386289 () Bool)

(declare-fun tp!1057856 () Bool)

(declare-fun tp!1057858 () Bool)

(assert (=> b!3386289 (= e!2102077 (and tp!1057856 tp!1057858))))

(declare-fun b!3386288 () Bool)

(declare-fun tp!1057854 () Bool)

(assert (=> b!3386288 (= e!2102077 tp!1057854)))

(declare-fun b!3386286 () Bool)

(assert (=> b!3386286 (= e!2102077 tp_is_empty!17481)))

(declare-fun b!3386287 () Bool)

(declare-fun tp!1057857 () Bool)

(declare-fun tp!1057855 () Bool)

(assert (=> b!3386287 (= e!2102077 (and tp!1057857 tp!1057855))))

(assert (= (and b!3384670 ((_ is ElementMatch!10135) (regOne!20782 (regex!5376 (h!42297 rules!2135))))) b!3386286))

(assert (= (and b!3384670 ((_ is Concat!15741) (regOne!20782 (regex!5376 (h!42297 rules!2135))))) b!3386287))

(assert (= (and b!3384670 ((_ is Star!10135) (regOne!20782 (regex!5376 (h!42297 rules!2135))))) b!3386288))

(assert (= (and b!3384670 ((_ is Union!10135) (regOne!20782 (regex!5376 (h!42297 rules!2135))))) b!3386289))

(declare-fun e!2102078 () Bool)

(assert (=> b!3384670 (= tp!1057634 e!2102078)))

(declare-fun b!3386293 () Bool)

(declare-fun tp!1057861 () Bool)

(declare-fun tp!1057863 () Bool)

(assert (=> b!3386293 (= e!2102078 (and tp!1057861 tp!1057863))))

(declare-fun b!3386292 () Bool)

(declare-fun tp!1057859 () Bool)

(assert (=> b!3386292 (= e!2102078 tp!1057859)))

(declare-fun b!3386290 () Bool)

(assert (=> b!3386290 (= e!2102078 tp_is_empty!17481)))

(declare-fun b!3386291 () Bool)

(declare-fun tp!1057862 () Bool)

(declare-fun tp!1057860 () Bool)

(assert (=> b!3386291 (= e!2102078 (and tp!1057862 tp!1057860))))

(assert (= (and b!3384670 ((_ is ElementMatch!10135) (regTwo!20782 (regex!5376 (h!42297 rules!2135))))) b!3386290))

(assert (= (and b!3384670 ((_ is Concat!15741) (regTwo!20782 (regex!5376 (h!42297 rules!2135))))) b!3386291))

(assert (= (and b!3384670 ((_ is Star!10135) (regTwo!20782 (regex!5376 (h!42297 rules!2135))))) b!3386292))

(assert (= (and b!3384670 ((_ is Union!10135) (regTwo!20782 (regex!5376 (h!42297 rules!2135))))) b!3386293))

(declare-fun e!2102079 () Bool)

(assert (=> b!3384683 (= tp!1057649 e!2102079)))

(declare-fun b!3386297 () Bool)

(declare-fun tp!1057866 () Bool)

(declare-fun tp!1057868 () Bool)

(assert (=> b!3386297 (= e!2102079 (and tp!1057866 tp!1057868))))

(declare-fun b!3386296 () Bool)

(declare-fun tp!1057864 () Bool)

(assert (=> b!3386296 (= e!2102079 tp!1057864)))

(declare-fun b!3386294 () Bool)

(assert (=> b!3386294 (= e!2102079 tp_is_empty!17481)))

(declare-fun b!3386295 () Bool)

(declare-fun tp!1057867 () Bool)

(declare-fun tp!1057865 () Bool)

(assert (=> b!3386295 (= e!2102079 (and tp!1057867 tp!1057865))))

(assert (= (and b!3384683 ((_ is ElementMatch!10135) (regex!5376 (h!42297 (t!263604 rules!2135))))) b!3386294))

(assert (= (and b!3384683 ((_ is Concat!15741) (regex!5376 (h!42297 (t!263604 rules!2135))))) b!3386295))

(assert (= (and b!3384683 ((_ is Star!10135) (regex!5376 (h!42297 (t!263604 rules!2135))))) b!3386296))

(assert (= (and b!3384683 ((_ is Union!10135) (regex!5376 (h!42297 (t!263604 rules!2135))))) b!3386297))

(declare-fun b!3386300 () Bool)

(declare-fun e!2102082 () Bool)

(assert (=> b!3386300 (= e!2102082 true)))

(declare-fun b!3386299 () Bool)

(declare-fun e!2102081 () Bool)

(assert (=> b!3386299 (= e!2102081 e!2102082)))

(declare-fun b!3386298 () Bool)

(declare-fun e!2102080 () Bool)

(assert (=> b!3386298 (= e!2102080 e!2102081)))

(assert (=> b!3384120 e!2102080))

(assert (= b!3386299 b!3386300))

(assert (= b!3386298 b!3386299))

(assert (= (and b!3384120 ((_ is Cons!36877) (t!263604 rules!2135))) b!3386298))

(assert (=> b!3386300 (< (dynLambda!15348 order!19427 (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135))))) (dynLambda!15349 order!19429 lambda!120554))))

(assert (=> b!3386300 (< (dynLambda!15350 order!19431 (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135))))) (dynLambda!15349 order!19429 lambda!120554))))

(declare-fun b!3386301 () Bool)

(declare-fun e!2102083 () Bool)

(declare-fun tp!1057869 () Bool)

(assert (=> b!3386301 (= e!2102083 (and tp_is_empty!17481 tp!1057869))))

(assert (=> b!3384636 (= tp!1057597 e!2102083)))

(assert (= (and b!3384636 ((_ is Cons!36875) (t!263602 (originalCharacters!6090 separatorToken!241)))) b!3386301))

(declare-fun b!3386302 () Bool)

(declare-fun e!2102084 () Bool)

(declare-fun tp!1057870 () Bool)

(assert (=> b!3386302 (= e!2102084 (and tp_is_empty!17481 tp!1057870))))

(assert (=> b!3384673 (= tp!1057638 e!2102084)))

(assert (= (and b!3384673 ((_ is Cons!36875) (t!263602 (originalCharacters!6090 (h!42296 tokens!494))))) b!3386302))

(declare-fun e!2102085 () Bool)

(assert (=> b!3384664 (= tp!1057625 e!2102085)))

(declare-fun b!3386306 () Bool)

(declare-fun tp!1057873 () Bool)

(declare-fun tp!1057875 () Bool)

(assert (=> b!3386306 (= e!2102085 (and tp!1057873 tp!1057875))))

(declare-fun b!3386305 () Bool)

(declare-fun tp!1057871 () Bool)

(assert (=> b!3386305 (= e!2102085 tp!1057871)))

(declare-fun b!3386303 () Bool)

(assert (=> b!3386303 (= e!2102085 tp_is_empty!17481)))

(declare-fun b!3386304 () Bool)

(declare-fun tp!1057874 () Bool)

(declare-fun tp!1057872 () Bool)

(assert (=> b!3386304 (= e!2102085 (and tp!1057874 tp!1057872))))

(assert (= (and b!3384664 ((_ is ElementMatch!10135) (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))))) b!3386303))

(assert (= (and b!3384664 ((_ is Concat!15741) (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))))) b!3386304))

(assert (= (and b!3384664 ((_ is Star!10135) (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))))) b!3386305))

(assert (= (and b!3384664 ((_ is Union!10135) (regOne!20783 (regex!5376 (rule!7930 separatorToken!241))))) b!3386306))

(declare-fun e!2102086 () Bool)

(assert (=> b!3384664 (= tp!1057627 e!2102086)))

(declare-fun b!3386310 () Bool)

(declare-fun tp!1057878 () Bool)

(declare-fun tp!1057880 () Bool)

(assert (=> b!3386310 (= e!2102086 (and tp!1057878 tp!1057880))))

(declare-fun b!3386309 () Bool)

(declare-fun tp!1057876 () Bool)

(assert (=> b!3386309 (= e!2102086 tp!1057876)))

(declare-fun b!3386307 () Bool)

(assert (=> b!3386307 (= e!2102086 tp_is_empty!17481)))

(declare-fun b!3386308 () Bool)

(declare-fun tp!1057879 () Bool)

(declare-fun tp!1057877 () Bool)

(assert (=> b!3386308 (= e!2102086 (and tp!1057879 tp!1057877))))

(assert (= (and b!3384664 ((_ is ElementMatch!10135) (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))))) b!3386307))

(assert (= (and b!3384664 ((_ is Concat!15741) (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))))) b!3386308))

(assert (= (and b!3384664 ((_ is Star!10135) (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))))) b!3386309))

(assert (= (and b!3384664 ((_ is Union!10135) (regTwo!20783 (regex!5376 (rule!7930 separatorToken!241))))) b!3386310))

(declare-fun b_lambda!96251 () Bool)

(assert (= b_lambda!96201 (or (and b!3386240 b_free!88605 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3386285 b_free!88609 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383882 b_free!88569 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383876 b_free!88577 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384684 b_free!88593 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384650 b_free!88589 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383881 b_free!88573) b_lambda!96251)))

(declare-fun b_lambda!96253 () Bool)

(assert (= b_lambda!96199 (or (and b!3386240 b_free!88605 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3386285 b_free!88609 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383882 b_free!88569 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383876 b_free!88577 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384684 b_free!88593 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384650 b_free!88589 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383881 b_free!88573) b_lambda!96253)))

(declare-fun b_lambda!96255 () Bool)

(assert (= b_lambda!96247 (or b!3383855 b_lambda!96255)))

(assert (=> d!961339 d!960523))

(declare-fun b_lambda!96257 () Bool)

(assert (= b_lambda!96197 (or (and b!3384684 b_free!88595 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383876 b_free!88579 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3386240 b_free!88607 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383881 b_free!88575) (and b!3383882 b_free!88571 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384650 b_free!88591 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3386285 b_free!88611 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) b_lambda!96257)))

(declare-fun b_lambda!96259 () Bool)

(assert (= b_lambda!96215 (or d!960333 b_lambda!96259)))

(declare-fun bs!555184 () Bool)

(declare-fun d!961381 () Bool)

(assert (= bs!555184 (and d!961381 d!960333)))

(assert (=> bs!555184 (= (dynLambda!15347 lambda!120554 (h!42296 (list!13344 lt!1149412))) (rulesProduceIndividualToken!2457 thiss!18206 rules!2135 (h!42296 (list!13344 lt!1149412))))))

(assert (=> bs!555184 m!3751817))

(assert (=> b!3385603 d!961381))

(declare-fun b_lambda!96261 () Bool)

(assert (= b_lambda!96205 (or b!3383855 b_lambda!96261)))

(declare-fun bs!555185 () Bool)

(declare-fun d!961383 () Bool)

(assert (= bs!555185 (and d!961383 b!3383855)))

(assert (=> bs!555185 (= (dynLambda!15347 lambda!120549 (h!42296 (t!263603 tokens!494))) (not (isSeparator!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))))))

(assert (=> b!3385217 d!961383))

(declare-fun b_lambda!96263 () Bool)

(assert (= b_lambda!96249 (or (and b!3386240 b_free!88605 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3386285 b_free!88609 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383882 b_free!88569 (= (toValue!7564 (transformation!5376 (rule!7930 separatorToken!241))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383876 b_free!88577 (= (toValue!7564 (transformation!5376 (h!42297 rules!2135))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384684 b_free!88593 (= (toValue!7564 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3384650 b_free!88589 (= (toValue!7564 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))) (toValue!7564 (transformation!5376 (rule!7930 (h!42296 tokens!494)))))) (and b!3383881 b_free!88573) b_lambda!96263)))

(declare-fun b_lambda!96265 () Bool)

(assert (= b_lambda!96203 (or (and b!3384684 b_free!88595 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 rules!2135)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))))) (and b!3386240 b_free!88607 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 (t!263603 tokens!494)))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))))) (and b!3383882 b_free!88571 (= (toChars!7423 (transformation!5376 (rule!7930 separatorToken!241))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))))) (and b!3383881 b_free!88575 (= (toChars!7423 (transformation!5376 (rule!7930 (h!42296 tokens!494)))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))))) (and b!3384650 b_free!88591) (and b!3386285 b_free!88611 (= (toChars!7423 (transformation!5376 (h!42297 (t!263604 (t!263604 rules!2135))))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))))) (and b!3383876 b_free!88579 (= (toChars!7423 (transformation!5376 (h!42297 rules!2135))) (toChars!7423 (transformation!5376 (rule!7930 (h!42296 (t!263603 tokens!494))))))) b_lambda!96265)))

(check-sat (not b!3386142) (not d!960941) (not b!3386235) (not b!3385613) (not b!3385726) (not b!3386074) (not b_lambda!96253) (not b_lambda!96171) (not d!961291) (not d!961295) (not d!961043) (not d!960843) (not b!3386230) (not b!3385699) (not b!3385786) (not b!3386091) (not b!3386138) (not b!3386266) b_and!235575 (not d!961085) (not d!961293) (not b!3386283) (not bm!244867) (not b!3386108) (not d!961141) (not b!3385814) (not b!3386167) (not b!3385507) (not b_next!89295) (not b!3385791) (not b!3386115) (not bm!244945) (not b!3386282) (not bm!244928) (not b!3385906) (not d!961201) (not b!3386255) (not b!3385943) (not b!3385560) (not b!3386263) (not b!3385572) (not d!960929) (not b!3385684) (not b!3385220) (not b!3386114) (not bm!244935) (not d!961065) (not b!3385485) b_and!235571 (not b!3385813) (not d!961099) (not b!3386239) (not b!3385852) (not b!3385790) (not bm!244954) (not d!961095) (not b!3385188) (not d!961333) (not b!3386076) (not d!960945) (not d!961073) (not bm!244967) (not b!3386272) (not b!3385529) (not b!3386238) (not d!961313) (not b_lambda!96189) (not bm!244978) (not d!961275) (not b!3385799) (not b!3386281) (not d!961145) (not b!3385647) (not b!3385935) (not b!3385751) (not b!3385164) (not b!3385682) (not d!961351) (not b!3386292) (not b!3386287) (not d!961335) (not b!3385820) (not bm!244979) (not b!3386259) (not d!961283) (not d!961309) (not b!3385526) (not b_lambda!96175) (not b_next!89281) (not b!3386302) (not b!3384135) (not d!961301) (not b!3385683) (not d!961207) (not b!3385339) (not d!961267) (not d!961247) (not d!961017) (not b!3386291) (not d!961053) (not d!961007) (not bm!244955) (not b!3385207) (not d!961371) (not b_lambda!96257) (not b!3386113) (not b!3385650) (not b!3385996) (not d!961269) (not b!3386148) (not d!961015) (not d!961203) (not d!961051) (not b!3385773) (not b_lambda!96217) (not b!3386081) (not d!961181) (not bm!244931) (not b!3385770) (not d!960927) (not b!3385398) (not b!3385203) (not b!3386211) (not b!3386082) b_and!235493 (not b!3385780) (not bm!244902) (not b!3386090) (not bm!244971) (not b!3386310) (not b_lambda!96229) (not bm!244977) (not b!3386257) (not b!3386234) (not d!960963) (not b_next!89273) (not bm!244934) (not b!3386120) (not b!3386293) (not b!3386155) (not b!3385955) (not d!961193) (not b!3386288) (not bm!244950) (not d!961259) (not b_next!89279) (not b!3386297) (not b!3385793) (not b!3386223) (not b!3386224) (not b!3386144) (not bm!244865) (not d!961303) (not b!3385584) (not bm!244868) (not b!3386268) (not d!961097) (not d!961349) (not bm!244958) (not b!3385685) (not b_lambda!96251) (not bm!244964) (not d!961009) (not bm!244966) (not b!3385168) (not b!3385610) (not bm!244965) (not b!3385875) (not b_next!89275) (not b!3385341) (not b!3386231) (not d!961057) (not d!961261) (not b!3386080) (not b!3386242) (not b!3385742) (not bm!244901) (not b!3385819) (not b!3385779) (not bs!555184) (not b!3386141) (not d!961197) (not bm!244936) (not b!3385532) (not b!3386301) (not b!3386209) (not b!3385800) (not d!960959) (not b!3385501) (not bm!244871) (not b!3385524) (not b!3386278) (not d!961187) (not d!961365) (not b!3386243) (not b!3386140) (not d!960705) (not b!3385686) (not b!3385539) (not b!3386220) (not b!3386218) (not d!961103) (not b!3385208) (not bm!244960) (not d!961311) (not b!3386277) (not d!961185) tp_is_empty!17481 (not tb!180593) (not b!3386270) b_and!235579 (not b!3385421) (not b!3385649) (not b_next!89313) (not b!3385876) (not b!3386143) (not b!3385946) (not d!961347) (not b!3386150) (not b_lambda!96167) (not d!961179) (not b!3386274) (not b!3385700) (not b!3386176) (not b!3386304) (not b!3385928) (not b!3385431) (not d!960847) (not b!3385495) (not b!3385585) (not b!3386309) (not b!3385927) (not b_lambda!96227) (not b!3386199) (not d!961091) b_and!235583 (not d!961041) (not d!961369) (not b!3385541) (not b!3385523) (not d!961297) (not b!3386165) (not b!3385758) (not bm!244961) (not bm!244930) (not b!3385481) (not b!3386097) (not b!3385872) (not b!3386228) (not d!960841) (not b!3386133) (not b!3385340) (not b!3385750) (not tb!180533) (not b!3385877) (not b!3384601) (not b!3385944) (not d!960713) (not d!960827) (not b!3384964) (not bm!244870) (not bm!244864) (not b!3385778) (not b!3386261) (not b!3385614) (not b!3386276) (not b!3385843) (not d!960949) (not b!3385947) (not b!3385681) (not b!3386173) (not tb!180543) (not d!961265) (not b!3386273) (not d!960957) (not b!3386269) (not d!960849) (not b!3385424) (not b!3385709) (not d!961029) (not b!3385512) (not bm!244952) (not bm!244925) (not b!3385601) (not d!960859) (not d!961225) (not d!961003) (not b!3385922) (not b!3385511) (not b!3386152) (not b_next!89299) (not b!3385581) (not b!3385489) (not b!3385724) (not b!3386222) (not d!961167) (not b!3385745) (not d!961019) (not d!960953) (not d!960979) (not d!961245) (not b!3385769) (not b!3385636) (not b!3385727) (not d!960925) (not b!3385812) (not d!961205) (not b!3385945) (not b!3386236) (not b!3386203) (not d!961337) b_and!235585 (not b!3385513) (not b!3385375) (not d!961279) (not b_lambda!96213) (not d!960937) (not b!3386084) (not b!3385913) (not b!3386295) (not d!961307) (not b!3386298) (not d!961373) (not b!3385949) (not b!3385871) (not d!961325) (not d!961233) (not d!960815) (not d!960833) (not b_next!89277) (not bm!244956) (not d!961115) (not b!3385805) (not b!3386205) (not b!3386180) (not b!3386214) (not d!961355) (not d!960835) (not b!3386146) (not b!3385422) (not b!3385616) (not b!3385606) (not b!3385604) (not b!3385950) (not b_next!89293) (not b_next!89311) (not b_lambda!96259) (not d!961323) (not d!961239) (not d!960861) (not bm!244969) (not d!961055) b_and!235495 (not b!3385998) (not b_lambda!96173) (not d!961191) (not d!960711) (not bm!244924) (not b!3386232) (not b!3385757) (not b_lambda!96169) (not d!961345) (not b!3385205) (not b!3385987) (not b!3385600) (not b!3385929) (not b!3385586) b_and!235573 (not b!3385490) b_and!235581 (not b!3386226) (not b!3385372) (not b!3385912) (not bm!244947) (not b!3385540) (not d!960943) (not b!3386177) (not tb!180553) (not b!3386075) (not tb!180453) (not d!961061) (not b!3386227) (not d!961047) (not bm!244951) (not b!3385167) (not b!3386216) (not b!3385874) (not b!3385744) (not d!960975) (not d!961173) (not d!960707) (not b!3386179) (not d!960851) (not tb!180483) (not b!3386254) (not b!3386305) (not b!3386166) (not d!961375) (not b!3385785) (not d!961281) (not b!3385693) (not d!960977) (not d!961165) (not b!3385172) (not d!961315) (not d!961059) (not b!3385983) (not bm!244869) (not b!3385948) (not bm!244974) (not b!3386124) (not b_lambda!96177) (not d!961305) (not b!3385508) (not b!3385798) (not b!3385433) (not d!961285) (not b!3385597) (not b!3385910) (not b!3385904) (not b_lambda!96211) (not b!3385487) (not b!3385561) (not d!961331) (not b!3386100) (not d!960939) (not bm!244959) (not d!961109) (not b!3386121) (not bm!244962) (not d!961077) (not b!3386219) (not b!3386308) b_and!235499 (not d!961211) (not b!3386253) (not b_lambda!96261) (not b!3386201) (not b!3385609) (not b!3385206) (not d!961189) (not b_next!89309) (not b!3385807) (not tb!180493) (not b!3385792) (not b!3385218) (not b_lambda!96263) (not d!961039) (not b!3386197) (not b!3386212) (not b!3385954) (not d!961243) (not b!3386265) (not d!961107) (not b!3385373) (not tb!180503) (not bm!244866) (not b!3385771) (not b_lambda!96165) (not b!3385492) (not b!3386089) (not bm!244933) (not b!3385752) (not b!3386096) (not d!961251) (not b!3385486) (not d!961231) (not b!3385374) (not b!3385569) (not b!3385694) (not tb!180665) (not d!961317) (not d!961087) (not bm!244923) (not b!3386267) (not b!3385571) (not b!3386187) (not b!3386284) b_and!235491 (not b!3385646) (not b!3385611) (not b!3385625) b_and!235569 (not b!3386207) (not b!3386306) (not bm!244972) (not d!961035) (not b!3386280) (not b!3386289) (not d!960845) b_and!235577 (not b!3386139) (not b_next!89297) (not b!3386134) (not b!3385787) (not b!3385806) (not d!961037) (not tb!180613) b_and!235497 (not b!3385934) (not b!3386296) (not b!3385692) (not b_next!89283) (not b!3385595) (not b!3386145) (not b_lambda!96255) (not b!3385687) (not d!961049) (not b!3386258) (not d!961005) (not bm!244929) (not d!961101) (not d!961027) (not b!3385342) (not b!3386172) (not b!3385493) (not d!961139) (not b!3386262) (not b_next!89315) (not b!3386244) (not b!3385598) (not b!3385525) (not d!960983) (not d!960923) (not d!961075) (not b!3385905) (not b!3386237) (not b!3385573) (not b_lambda!96265) (not d!961377) (not d!960999) (not b!3385425))
(check-sat b_and!235575 (not b_next!89295) b_and!235571 (not b_next!89281) b_and!235493 (not b_next!89273) (not b_next!89279) (not b_next!89275) b_and!235583 (not b_next!89299) b_and!235585 (not b_next!89277) (not b_next!89315) (not b_next!89313) b_and!235579 (not b_next!89293) (not b_next!89311) b_and!235495 b_and!235581 b_and!235573 b_and!235499 (not b_next!89309) b_and!235569 b_and!235491 b_and!235577 (not b_next!89297) b_and!235497 (not b_next!89283))
