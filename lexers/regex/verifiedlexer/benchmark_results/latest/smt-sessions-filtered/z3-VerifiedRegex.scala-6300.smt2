; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!316602 () Bool)

(assert start!316602)

(declare-fun b!3393671 () Bool)

(declare-fun b_free!88697 () Bool)

(declare-fun b_next!89401 () Bool)

(assert (=> b!3393671 (= b_free!88697 (not b_next!89401))))

(declare-fun tp!1059367 () Bool)

(declare-fun b_and!236443 () Bool)

(assert (=> b!3393671 (= tp!1059367 b_and!236443)))

(declare-fun b_free!88699 () Bool)

(declare-fun b_next!89403 () Bool)

(assert (=> b!3393671 (= b_free!88699 (not b_next!89403))))

(declare-fun tp!1059369 () Bool)

(declare-fun b_and!236445 () Bool)

(assert (=> b!3393671 (= tp!1059369 b_and!236445)))

(declare-fun b!3393680 () Bool)

(declare-fun b_free!88701 () Bool)

(declare-fun b_next!89405 () Bool)

(assert (=> b!3393680 (= b_free!88701 (not b_next!89405))))

(declare-fun tp!1059370 () Bool)

(declare-fun b_and!236447 () Bool)

(assert (=> b!3393680 (= tp!1059370 b_and!236447)))

(declare-fun b_free!88703 () Bool)

(declare-fun b_next!89407 () Bool)

(assert (=> b!3393680 (= b_free!88703 (not b_next!89407))))

(declare-fun tp!1059371 () Bool)

(declare-fun b_and!236449 () Bool)

(assert (=> b!3393680 (= tp!1059371 b_and!236449)))

(declare-fun b!3393669 () Bool)

(declare-fun b_free!88705 () Bool)

(declare-fun b_next!89409 () Bool)

(assert (=> b!3393669 (= b_free!88705 (not b_next!89409))))

(declare-fun tp!1059366 () Bool)

(declare-fun b_and!236451 () Bool)

(assert (=> b!3393669 (= tp!1059366 b_and!236451)))

(declare-fun b_free!88707 () Bool)

(declare-fun b_next!89411 () Bool)

(assert (=> b!3393669 (= b_free!88707 (not b_next!89411))))

(declare-fun tp!1059372 () Bool)

(declare-fun b_and!236453 () Bool)

(assert (=> b!3393669 (= tp!1059372 b_and!236453)))

(declare-fun b!3393658 () Bool)

(declare-fun e!2106305 () Bool)

(assert (=> b!3393658 (= e!2106305 true)))

(declare-datatypes ((LexerInterface!4969 0))(
  ( (LexerInterfaceExt!4966 (__x!23437 Int)) (Lexer!4967) )
))
(declare-fun thiss!18206 () LexerInterface!4969)

(declare-datatypes ((C!20464 0))(
  ( (C!20465 (val!12280 Int)) )
))
(declare-datatypes ((List!37018 0))(
  ( (Nil!36894) (Cons!36894 (h!42314 C!20464) (t!265041 List!37018)) )
))
(declare-fun lt!1153213 () List!37018)

(declare-datatypes ((Regex!10139 0))(
  ( (ElementMatch!10139 (c!578582 C!20464)) (Concat!15749 (regOne!20790 Regex!10139) (regTwo!20790 Regex!10139)) (EmptyExpr!10139) (Star!10139 (reg!10468 Regex!10139)) (EmptyLang!10139) (Union!10139 (regOne!20791 Regex!10139) (regTwo!20791 Regex!10139)) )
))
(declare-datatypes ((List!37019 0))(
  ( (Nil!36895) (Cons!36895 (h!42315 (_ BitVec 16)) (t!265042 List!37019)) )
))
(declare-datatypes ((TokenValue!5610 0))(
  ( (FloatLiteralValue!11220 (text!39715 List!37019)) (TokenValueExt!5609 (__x!23438 Int)) (Broken!28050 (value!173764 List!37019)) (Object!5733) (End!5610) (Def!5610) (Underscore!5610) (Match!5610) (Else!5610) (Error!5610) (Case!5610) (If!5610) (Extends!5610) (Abstract!5610) (Class!5610) (Val!5610) (DelimiterValue!11220 (del!5670 List!37019)) (KeywordValue!5616 (value!173765 List!37019)) (CommentValue!11220 (value!173766 List!37019)) (WhitespaceValue!11220 (value!173767 List!37019)) (IndentationValue!5610 (value!173768 List!37019)) (String!41383) (Int32!5610) (Broken!28051 (value!173769 List!37019)) (Boolean!5611) (Unit!52061) (OperatorValue!5613 (op!5670 List!37019)) (IdentifierValue!11220 (value!173770 List!37019)) (IdentifierValue!11221 (value!173771 List!37019)) (WhitespaceValue!11221 (value!173772 List!37019)) (True!11220) (False!11220) (Broken!28052 (value!173773 List!37019)) (Broken!28053 (value!173774 List!37019)) (True!11221) (RightBrace!5610) (RightBracket!5610) (Colon!5610) (Null!5610) (Comma!5610) (LeftBracket!5610) (False!11221) (LeftBrace!5610) (ImaginaryLiteralValue!5610 (text!39716 List!37019)) (StringLiteralValue!16830 (value!173775 List!37019)) (EOFValue!5610 (value!173776 List!37019)) (IdentValue!5610 (value!173777 List!37019)) (DelimiterValue!11221 (value!173778 List!37019)) (DedentValue!5610 (value!173779 List!37019)) (NewLineValue!5610 (value!173780 List!37019)) (IntegerValue!16830 (value!173781 (_ BitVec 32)) (text!39717 List!37019)) (IntegerValue!16831 (value!173782 Int) (text!39718 List!37019)) (Times!5610) (Or!5610) (Equal!5610) (Minus!5610) (Broken!28054 (value!173783 List!37019)) (And!5610) (Div!5610) (LessEqual!5610) (Mod!5610) (Concat!15750) (Not!5610) (Plus!5610) (SpaceValue!5610 (value!173784 List!37019)) (IntegerValue!16832 (value!173785 Int) (text!39719 List!37019)) (StringLiteralValue!16831 (text!39720 List!37019)) (FloatLiteralValue!11221 (text!39721 List!37019)) (BytesLiteralValue!5610 (value!173786 List!37019)) (CommentValue!11221 (value!173787 List!37019)) (StringLiteralValue!16832 (value!173788 List!37019)) (ErrorTokenValue!5610 (msg!5671 List!37019)) )
))
(declare-datatypes ((IArray!22275 0))(
  ( (IArray!22276 (innerList!11195 List!37018)) )
))
(declare-datatypes ((Conc!11135 0))(
  ( (Node!11135 (left!28767 Conc!11135) (right!29097 Conc!11135) (csize!22500 Int) (cheight!11346 Int)) (Leaf!17436 (xs!14293 IArray!22275) (csize!22501 Int)) (Empty!11135) )
))
(declare-datatypes ((BalanceConc!21884 0))(
  ( (BalanceConc!21885 (c!578583 Conc!11135)) )
))
(declare-datatypes ((String!41384 0))(
  ( (String!41385 (value!173789 String)) )
))
(declare-datatypes ((TokenValueInjection!10648 0))(
  ( (TokenValueInjection!10649 (toValue!7576 Int) (toChars!7435 Int)) )
))
(declare-datatypes ((Rule!10560 0))(
  ( (Rule!10561 (regex!5380 Regex!10139) (tag!5962 String!41384) (isSeparator!5380 Bool) (transformation!5380 TokenValueInjection!10648)) )
))
(declare-datatypes ((Token!10126 0))(
  ( (Token!10127 (value!173790 TokenValue!5610) (rule!7938 Rule!10560) (size!27936 Int) (originalCharacters!6094 List!37018)) )
))
(declare-datatypes ((tuple2!36512 0))(
  ( (tuple2!36513 (_1!21390 Token!10126) (_2!21390 List!37018)) )
))
(declare-datatypes ((Option!7413 0))(
  ( (None!7412) (Some!7412 (v!36554 tuple2!36512)) )
))
(declare-fun lt!1153217 () Option!7413)

(declare-datatypes ((List!37020 0))(
  ( (Nil!36896) (Cons!36896 (h!42316 Rule!10560) (t!265043 List!37020)) )
))
(declare-fun rules!2135 () List!37020)

(declare-fun maxPrefix!2541 (LexerInterface!4969 List!37020 List!37018) Option!7413)

(assert (=> b!3393658 (= lt!1153217 (maxPrefix!2541 thiss!18206 rules!2135 lt!1153213))))

(declare-fun e!2106308 () Bool)

(declare-fun b!3393659 () Bool)

(declare-fun e!2106321 () Bool)

(declare-fun tp!1059374 () Bool)

(declare-fun inv!49987 (String!41384) Bool)

(declare-fun inv!49990 (TokenValueInjection!10648) Bool)

(assert (=> b!3393659 (= e!2106308 (and tp!1059374 (inv!49987 (tag!5962 (h!42316 rules!2135))) (inv!49990 (transformation!5380 (h!42316 rules!2135))) e!2106321))))

(declare-fun b!3393660 () Bool)

(declare-fun res!1372719 () Bool)

(declare-fun e!2106330 () Bool)

(assert (=> b!3393660 (=> (not res!1372719) (not e!2106330))))

(declare-fun separatorToken!241 () Token!10126)

(declare-fun rulesProduceIndividualToken!2461 (LexerInterface!4969 List!37020 Token!10126) Bool)

(assert (=> b!3393660 (= res!1372719 (rulesProduceIndividualToken!2461 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3393661 () Bool)

(declare-fun e!2106310 () Bool)

(declare-fun e!2106303 () Bool)

(assert (=> b!3393661 (= e!2106310 e!2106303)))

(declare-fun res!1372710 () Bool)

(assert (=> b!3393661 (=> res!1372710 e!2106303)))

(declare-fun lt!1153222 () List!37018)

(declare-fun lt!1153203 () BalanceConc!21884)

(declare-fun list!13363 (BalanceConc!21884) List!37018)

(declare-fun ++!9033 (List!37018 List!37018) List!37018)

(assert (=> b!3393661 (= res!1372710 (not (= (list!13363 lt!1153203) (++!9033 lt!1153213 lt!1153222))))))

(declare-fun charsOf!3394 (Token!10126) BalanceConc!21884)

(assert (=> b!3393661 (= lt!1153222 (list!13363 (charsOf!3394 separatorToken!241)))))

(declare-datatypes ((List!37021 0))(
  ( (Nil!36897) (Cons!36897 (h!42317 Token!10126) (t!265044 List!37021)) )
))
(declare-datatypes ((IArray!22277 0))(
  ( (IArray!22278 (innerList!11196 List!37021)) )
))
(declare-datatypes ((Conc!11136 0))(
  ( (Node!11136 (left!28768 Conc!11136) (right!29098 Conc!11136) (csize!22502 Int) (cheight!11347 Int)) (Leaf!17437 (xs!14294 IArray!22277) (csize!22503 Int)) (Empty!11136) )
))
(declare-datatypes ((BalanceConc!21886 0))(
  ( (BalanceConc!21887 (c!578584 Conc!11136)) )
))
(declare-fun lt!1153210 () BalanceConc!21886)

(declare-fun printWithSeparatorToken!160 (LexerInterface!4969 BalanceConc!21886 Token!10126) BalanceConc!21884)

(assert (=> b!3393661 (= lt!1153203 (printWithSeparatorToken!160 thiss!18206 lt!1153210 separatorToken!241))))

(declare-fun e!2106329 () Bool)

(declare-fun tokens!494 () List!37021)

(declare-fun e!2106314 () Bool)

(declare-fun b!3393662 () Bool)

(declare-fun tp!1059373 () Bool)

(declare-fun inv!49991 (Token!10126) Bool)

(assert (=> b!3393662 (= e!2106329 (and (inv!49991 (h!42317 tokens!494)) e!2106314 tp!1059373))))

(declare-fun b!3393663 () Bool)

(declare-fun e!2106317 () Bool)

(declare-fun tp!1059364 () Bool)

(assert (=> b!3393663 (= e!2106317 (and e!2106308 tp!1059364))))

(declare-fun b!3393664 () Bool)

(declare-fun e!2106312 () Bool)

(assert (=> b!3393664 (= e!2106312 e!2106305)))

(declare-fun res!1372703 () Bool)

(assert (=> b!3393664 (=> res!1372703 e!2106305)))

(declare-fun contains!6766 (List!37020 Rule!10560) Bool)

(assert (=> b!3393664 (= res!1372703 (not (contains!6766 rules!2135 (rule!7938 (h!42317 tokens!494)))))))

(declare-fun lt!1153211 () C!20464)

(declare-fun contains!6767 (List!37018 C!20464) Bool)

(declare-fun usedCharacters!636 (Regex!10139) List!37018)

(assert (=> b!3393664 (not (contains!6767 (usedCharacters!636 (regex!5380 (rule!7938 (h!42317 tokens!494)))) lt!1153211))))

(declare-datatypes ((Unit!52062 0))(
  ( (Unit!52063) )
))
(declare-fun lt!1153204 () Unit!52062)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!220 (LexerInterface!4969 List!37020 List!37020 Rule!10560 Rule!10560 C!20464) Unit!52062)

(assert (=> b!3393664 (= lt!1153204 (lemmaNonSepRuleNotContainsCharContainedInASepRule!220 thiss!18206 rules!2135 rules!2135 (rule!7938 (h!42317 tokens!494)) (rule!7938 separatorToken!241) lt!1153211))))

(declare-fun b!3393665 () Bool)

(declare-fun e!2106324 () Unit!52062)

(declare-fun Unit!52064 () Unit!52062)

(assert (=> b!3393665 (= e!2106324 Unit!52064)))

(declare-fun e!2106331 () Bool)

(declare-fun e!2106315 () Bool)

(declare-fun b!3393666 () Bool)

(declare-fun tp!1059365 () Bool)

(assert (=> b!3393666 (= e!2106331 (and tp!1059365 (inv!49987 (tag!5962 (rule!7938 (h!42317 tokens!494)))) (inv!49990 (transformation!5380 (rule!7938 (h!42317 tokens!494)))) e!2106315))))

(declare-fun b!3393667 () Bool)

(declare-fun Unit!52065 () Unit!52062)

(assert (=> b!3393667 (= e!2106324 Unit!52065)))

(declare-fun lt!1153215 () Unit!52062)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!470 (Regex!10139 List!37018 C!20464) Unit!52062)

(assert (=> b!3393667 (= lt!1153215 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!470 (regex!5380 (rule!7938 separatorToken!241)) lt!1153222 lt!1153211))))

(declare-fun res!1372707 () Bool)

(declare-fun matchR!4731 (Regex!10139 List!37018) Bool)

(assert (=> b!3393667 (= res!1372707 (not (matchR!4731 (regex!5380 (rule!7938 separatorToken!241)) lt!1153222)))))

(declare-fun e!2106307 () Bool)

(assert (=> b!3393667 (=> (not res!1372707) (not e!2106307))))

(assert (=> b!3393667 e!2106307))

(declare-fun b!3393668 () Bool)

(declare-fun res!1372717 () Bool)

(assert (=> b!3393668 (=> (not res!1372717) (not e!2106330))))

(declare-fun sepAndNonSepRulesDisjointChars!1574 (List!37020 List!37020) Bool)

(assert (=> b!3393668 (= res!1372717 (sepAndNonSepRulesDisjointChars!1574 rules!2135 rules!2135))))

(assert (=> b!3393669 (= e!2106321 (and tp!1059366 tp!1059372))))

(declare-fun b!3393670 () Bool)

(declare-fun e!2106320 () Bool)

(declare-fun lt!1153200 () Rule!10560)

(assert (=> b!3393670 (= e!2106320 (= (rule!7938 separatorToken!241) lt!1153200))))

(declare-fun e!2106323 () Bool)

(assert (=> b!3393671 (= e!2106323 (and tp!1059367 tp!1059369))))

(declare-fun tp!1059363 () Bool)

(declare-fun b!3393672 () Bool)

(declare-fun e!2106313 () Bool)

(assert (=> b!3393672 (= e!2106313 (and tp!1059363 (inv!49987 (tag!5962 (rule!7938 separatorToken!241))) (inv!49990 (transformation!5380 (rule!7938 separatorToken!241))) e!2106323))))

(declare-fun b!3393673 () Bool)

(declare-fun e!2106327 () Bool)

(assert (=> b!3393673 (= e!2106327 e!2106330)))

(declare-fun res!1372709 () Bool)

(assert (=> b!3393673 (=> (not res!1372709) (not e!2106330))))

(declare-fun rulesProduceEachTokenIndividually!1420 (LexerInterface!4969 List!37020 BalanceConc!21886) Bool)

(assert (=> b!3393673 (= res!1372709 (rulesProduceEachTokenIndividually!1420 thiss!18206 rules!2135 lt!1153210))))

(declare-fun seqFromList!3813 (List!37021) BalanceConc!21886)

(assert (=> b!3393673 (= lt!1153210 (seqFromList!3813 tokens!494))))

(declare-fun b!3393674 () Bool)

(declare-fun e!2106309 () Bool)

(declare-fun lt!1153208 () Rule!10560)

(assert (=> b!3393674 (= e!2106309 (= (rule!7938 (h!42317 tokens!494)) lt!1153208))))

(declare-fun b!3393675 () Bool)

(declare-fun e!2106311 () Bool)

(declare-fun e!2106319 () Bool)

(assert (=> b!3393675 (= e!2106311 e!2106319)))

(declare-fun res!1372699 () Bool)

(assert (=> b!3393675 (=> res!1372699 e!2106319)))

(declare-fun lt!1153212 () List!37018)

(declare-fun lt!1153220 () List!37018)

(assert (=> b!3393675 (= res!1372699 (or (not (= lt!1153212 lt!1153213)) (not (= lt!1153220 lt!1153213))))))

(assert (=> b!3393675 (= lt!1153213 (list!13363 (charsOf!3394 (h!42317 tokens!494))))))

(declare-fun b!3393676 () Bool)

(declare-fun tp!1059362 () Bool)

(declare-fun inv!21 (TokenValue!5610) Bool)

(assert (=> b!3393676 (= e!2106314 (and (inv!21 (value!173790 (h!42317 tokens!494))) e!2106331 tp!1059362))))

(declare-fun b!3393677 () Bool)

(assert (=> b!3393677 (= e!2106330 (not e!2106311))))

(declare-fun res!1372715 () Bool)

(assert (=> b!3393677 (=> res!1372715 e!2106311)))

(assert (=> b!3393677 (= res!1372715 (not (= lt!1153220 lt!1153212)))))

(declare-fun printList!1517 (LexerInterface!4969 List!37021) List!37018)

(assert (=> b!3393677 (= lt!1153212 (printList!1517 thiss!18206 (Cons!36897 (h!42317 tokens!494) Nil!36897)))))

(declare-fun lt!1153224 () BalanceConc!21884)

(assert (=> b!3393677 (= lt!1153220 (list!13363 lt!1153224))))

(declare-fun lt!1153206 () BalanceConc!21886)

(declare-fun printTailRec!1464 (LexerInterface!4969 BalanceConc!21886 Int BalanceConc!21884) BalanceConc!21884)

(assert (=> b!3393677 (= lt!1153224 (printTailRec!1464 thiss!18206 lt!1153206 0 (BalanceConc!21885 Empty!11135)))))

(declare-fun print!2034 (LexerInterface!4969 BalanceConc!21886) BalanceConc!21884)

(assert (=> b!3393677 (= lt!1153224 (print!2034 thiss!18206 lt!1153206))))

(declare-fun singletonSeq!2476 (Token!10126) BalanceConc!21886)

(assert (=> b!3393677 (= lt!1153206 (singletonSeq!2476 (h!42317 tokens!494)))))

(declare-fun b!3393678 () Bool)

(declare-fun res!1372704 () Bool)

(assert (=> b!3393678 (=> res!1372704 e!2106319)))

(assert (=> b!3393678 (= res!1372704 (not (rulesProduceIndividualToken!2461 thiss!18206 rules!2135 (h!42317 tokens!494))))))

(declare-fun e!2106316 () Bool)

(declare-fun tp!1059368 () Bool)

(declare-fun b!3393679 () Bool)

(assert (=> b!3393679 (= e!2106316 (and (inv!21 (value!173790 separatorToken!241)) e!2106313 tp!1059368))))

(assert (=> b!3393680 (= e!2106315 (and tp!1059370 tp!1059371))))

(declare-fun b!3393681 () Bool)

(assert (=> b!3393681 (= e!2106307 false)))

(declare-fun res!1372713 () Bool)

(assert (=> start!316602 (=> (not res!1372713) (not e!2106327))))

(get-info :version)

(assert (=> start!316602 (= res!1372713 ((_ is Lexer!4967) thiss!18206))))

(assert (=> start!316602 e!2106327))

(assert (=> start!316602 true))

(assert (=> start!316602 e!2106317))

(assert (=> start!316602 (and (inv!49991 separatorToken!241) e!2106316)))

(assert (=> start!316602 e!2106329))

(declare-fun b!3393682 () Bool)

(declare-fun res!1372716 () Bool)

(assert (=> b!3393682 (=> (not res!1372716) (not e!2106330))))

(assert (=> b!3393682 (= res!1372716 (and (not ((_ is Nil!36897) tokens!494)) ((_ is Nil!36897) (t!265044 tokens!494))))))

(declare-fun b!3393683 () Bool)

(assert (=> b!3393683 (= e!2106303 e!2106312)))

(declare-fun res!1372714 () Bool)

(assert (=> b!3393683 (=> res!1372714 e!2106312)))

(declare-fun lt!1153207 () Bool)

(assert (=> b!3393683 (= res!1372714 lt!1153207)))

(declare-fun lt!1153221 () Unit!52062)

(assert (=> b!3393683 (= lt!1153221 e!2106324)))

(declare-fun c!578581 () Bool)

(assert (=> b!3393683 (= c!578581 lt!1153207)))

(assert (=> b!3393683 (= lt!1153207 (not (contains!6767 (usedCharacters!636 (regex!5380 (rule!7938 separatorToken!241))) lt!1153211)))))

(declare-fun head!7237 (List!37018) C!20464)

(assert (=> b!3393683 (= lt!1153211 (head!7237 lt!1153222))))

(declare-fun lt!1153202 () BalanceConc!21884)

(declare-fun maxPrefixOneRule!1692 (LexerInterface!4969 Rule!10560 List!37018) Option!7413)

(declare-fun apply!8599 (TokenValueInjection!10648 BalanceConc!21884) TokenValue!5610)

(declare-fun size!27937 (List!37018) Int)

(assert (=> b!3393683 (= (maxPrefixOneRule!1692 thiss!18206 (rule!7938 (h!42317 tokens!494)) lt!1153213) (Some!7412 (tuple2!36513 (Token!10127 (apply!8599 (transformation!5380 (rule!7938 (h!42317 tokens!494))) lt!1153202) (rule!7938 (h!42317 tokens!494)) (size!27937 lt!1153213) lt!1153213) Nil!36894)))))

(declare-fun lt!1153223 () Unit!52062)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!791 (LexerInterface!4969 List!37020 List!37018 List!37018 List!37018 Rule!10560) Unit!52062)

(assert (=> b!3393683 (= lt!1153223 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!791 thiss!18206 rules!2135 lt!1153213 lt!1153213 Nil!36894 (rule!7938 (h!42317 tokens!494))))))

(declare-fun e!2106325 () Bool)

(assert (=> b!3393683 e!2106325))

(declare-fun res!1372712 () Bool)

(assert (=> b!3393683 (=> (not res!1372712) (not e!2106325))))

(declare-datatypes ((Option!7414 0))(
  ( (None!7413) (Some!7413 (v!36555 Rule!10560)) )
))
(declare-fun lt!1153214 () Option!7414)

(declare-fun isDefined!5726 (Option!7414) Bool)

(assert (=> b!3393683 (= res!1372712 (isDefined!5726 lt!1153214))))

(declare-fun getRuleFromTag!1035 (LexerInterface!4969 List!37020 String!41384) Option!7414)

(assert (=> b!3393683 (= lt!1153214 (getRuleFromTag!1035 thiss!18206 rules!2135 (tag!5962 (rule!7938 separatorToken!241))))))

(declare-fun lt!1153205 () Unit!52062)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1035 (LexerInterface!4969 List!37020 List!37018 Token!10126) Unit!52062)

(assert (=> b!3393683 (= lt!1153205 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1035 thiss!18206 rules!2135 lt!1153222 separatorToken!241))))

(declare-fun e!2106332 () Bool)

(assert (=> b!3393683 e!2106332))

(declare-fun res!1372702 () Bool)

(assert (=> b!3393683 (=> (not res!1372702) (not e!2106332))))

(declare-fun lt!1153209 () Option!7414)

(assert (=> b!3393683 (= res!1372702 (isDefined!5726 lt!1153209))))

(assert (=> b!3393683 (= lt!1153209 (getRuleFromTag!1035 thiss!18206 rules!2135 (tag!5962 (rule!7938 (h!42317 tokens!494)))))))

(declare-fun lt!1153218 () Unit!52062)

(assert (=> b!3393683 (= lt!1153218 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1035 thiss!18206 rules!2135 lt!1153213 (h!42317 tokens!494)))))

(declare-fun lt!1153201 () Unit!52062)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!964 (LexerInterface!4969 List!37020 List!37021 Token!10126) Unit!52062)

(assert (=> b!3393683 (= lt!1153201 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!964 thiss!18206 rules!2135 tokens!494 (h!42317 tokens!494)))))

(declare-fun isEmpty!21157 (List!37018) Bool)

(declare-fun getSuffix!1474 (List!37018 List!37018) List!37018)

(assert (=> b!3393683 (isEmpty!21157 (getSuffix!1474 lt!1153213 lt!1153213))))

(declare-fun lt!1153216 () Unit!52062)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!132 (List!37018) Unit!52062)

(assert (=> b!3393683 (= lt!1153216 (lemmaGetSuffixOnListWithItSelfIsEmpty!132 lt!1153213))))

(declare-fun b!3393684 () Bool)

(assert (=> b!3393684 (= e!2106325 e!2106320)))

(declare-fun res!1372718 () Bool)

(assert (=> b!3393684 (=> (not res!1372718) (not e!2106320))))

(assert (=> b!3393684 (= res!1372718 (matchR!4731 (regex!5380 lt!1153200) lt!1153222))))

(declare-fun get!11785 (Option!7414) Rule!10560)

(assert (=> b!3393684 (= lt!1153200 (get!11785 lt!1153214))))

(declare-fun b!3393685 () Bool)

(declare-fun res!1372720 () Bool)

(assert (=> b!3393685 (=> res!1372720 e!2106305)))

(assert (=> b!3393685 (= res!1372720 (not (contains!6766 rules!2135 (rule!7938 separatorToken!241))))))

(declare-fun b!3393686 () Bool)

(declare-fun res!1372700 () Bool)

(assert (=> b!3393686 (=> (not res!1372700) (not e!2106327))))

(declare-fun isEmpty!21158 (List!37020) Bool)

(assert (=> b!3393686 (= res!1372700 (not (isEmpty!21158 rules!2135)))))

(declare-fun b!3393687 () Bool)

(declare-fun res!1372701 () Bool)

(assert (=> b!3393687 (=> (not res!1372701) (not e!2106330))))

(assert (=> b!3393687 (= res!1372701 (isSeparator!5380 (rule!7938 separatorToken!241)))))

(declare-fun b!3393688 () Bool)

(declare-fun res!1372698 () Bool)

(assert (=> b!3393688 (=> (not res!1372698) (not e!2106330))))

(declare-fun lambda!120703 () Int)

(declare-fun forall!7785 (List!37021 Int) Bool)

(assert (=> b!3393688 (= res!1372698 (forall!7785 tokens!494 lambda!120703))))

(declare-fun b!3393689 () Bool)

(declare-fun res!1372708 () Bool)

(assert (=> b!3393689 (=> (not res!1372708) (not e!2106327))))

(declare-fun rulesInvariant!4366 (LexerInterface!4969 List!37020) Bool)

(assert (=> b!3393689 (= res!1372708 (rulesInvariant!4366 thiss!18206 rules!2135))))

(declare-fun b!3393690 () Bool)

(assert (=> b!3393690 (= e!2106332 e!2106309)))

(declare-fun res!1372711 () Bool)

(assert (=> b!3393690 (=> (not res!1372711) (not e!2106309))))

(assert (=> b!3393690 (= res!1372711 (matchR!4731 (regex!5380 lt!1153208) lt!1153213))))

(assert (=> b!3393690 (= lt!1153208 (get!11785 lt!1153209))))

(declare-fun b!3393691 () Bool)

(declare-fun e!2106306 () Bool)

(assert (=> b!3393691 (= e!2106319 e!2106306)))

(declare-fun res!1372705 () Bool)

(assert (=> b!3393691 (=> res!1372705 e!2106306)))

(declare-fun isEmpty!21159 (BalanceConc!21886) Bool)

(declare-datatypes ((tuple2!36514 0))(
  ( (tuple2!36515 (_1!21391 BalanceConc!21886) (_2!21391 BalanceConc!21884)) )
))
(declare-fun lex!2295 (LexerInterface!4969 List!37020 BalanceConc!21884) tuple2!36514)

(assert (=> b!3393691 (= res!1372705 (isEmpty!21159 (_1!21391 (lex!2295 thiss!18206 rules!2135 lt!1153202))))))

(declare-fun seqFromList!3814 (List!37018) BalanceConc!21884)

(assert (=> b!3393691 (= lt!1153202 (seqFromList!3814 lt!1153213))))

(declare-fun b!3393692 () Bool)

(assert (=> b!3393692 (= e!2106306 e!2106310)))

(declare-fun res!1372706 () Bool)

(assert (=> b!3393692 (=> res!1372706 e!2106310)))

(assert (=> b!3393692 (= res!1372706 (isSeparator!5380 (rule!7938 (h!42317 tokens!494))))))

(declare-fun lt!1153219 () Unit!52062)

(declare-fun forallContained!1327 (List!37021 Int Token!10126) Unit!52062)

(assert (=> b!3393692 (= lt!1153219 (forallContained!1327 tokens!494 lambda!120703 (h!42317 tokens!494)))))

(assert (= (and start!316602 res!1372713) b!3393686))

(assert (= (and b!3393686 res!1372700) b!3393689))

(assert (= (and b!3393689 res!1372708) b!3393673))

(assert (= (and b!3393673 res!1372709) b!3393660))

(assert (= (and b!3393660 res!1372719) b!3393687))

(assert (= (and b!3393687 res!1372701) b!3393688))

(assert (= (and b!3393688 res!1372698) b!3393668))

(assert (= (and b!3393668 res!1372717) b!3393682))

(assert (= (and b!3393682 res!1372716) b!3393677))

(assert (= (and b!3393677 (not res!1372715)) b!3393675))

(assert (= (and b!3393675 (not res!1372699)) b!3393678))

(assert (= (and b!3393678 (not res!1372704)) b!3393691))

(assert (= (and b!3393691 (not res!1372705)) b!3393692))

(assert (= (and b!3393692 (not res!1372706)) b!3393661))

(assert (= (and b!3393661 (not res!1372710)) b!3393683))

(assert (= (and b!3393683 res!1372702) b!3393690))

(assert (= (and b!3393690 res!1372711) b!3393674))

(assert (= (and b!3393683 res!1372712) b!3393684))

(assert (= (and b!3393684 res!1372718) b!3393670))

(assert (= (and b!3393683 c!578581) b!3393667))

(assert (= (and b!3393683 (not c!578581)) b!3393665))

(assert (= (and b!3393667 res!1372707) b!3393681))

(assert (= (and b!3393683 (not res!1372714)) b!3393664))

(assert (= (and b!3393664 (not res!1372703)) b!3393685))

(assert (= (and b!3393685 (not res!1372720)) b!3393658))

(assert (= b!3393659 b!3393669))

(assert (= b!3393663 b!3393659))

(assert (= (and start!316602 ((_ is Cons!36896) rules!2135)) b!3393663))

(assert (= b!3393672 b!3393671))

(assert (= b!3393679 b!3393672))

(assert (= start!316602 b!3393679))

(assert (= b!3393666 b!3393680))

(assert (= b!3393676 b!3393666))

(assert (= b!3393662 b!3393676))

(assert (= (and start!316602 ((_ is Cons!36897) tokens!494)) b!3393662))

(declare-fun m!3763255 () Bool)

(assert (=> b!3393685 m!3763255))

(declare-fun m!3763257 () Bool)

(assert (=> b!3393692 m!3763257))

(declare-fun m!3763259 () Bool)

(assert (=> b!3393676 m!3763259))

(declare-fun m!3763261 () Bool)

(assert (=> b!3393691 m!3763261))

(declare-fun m!3763263 () Bool)

(assert (=> b!3393691 m!3763263))

(declare-fun m!3763265 () Bool)

(assert (=> b!3393691 m!3763265))

(declare-fun m!3763267 () Bool)

(assert (=> b!3393684 m!3763267))

(declare-fun m!3763269 () Bool)

(assert (=> b!3393684 m!3763269))

(declare-fun m!3763271 () Bool)

(assert (=> b!3393662 m!3763271))

(declare-fun m!3763273 () Bool)

(assert (=> b!3393658 m!3763273))

(declare-fun m!3763275 () Bool)

(assert (=> b!3393661 m!3763275))

(declare-fun m!3763277 () Bool)

(assert (=> b!3393661 m!3763277))

(declare-fun m!3763279 () Bool)

(assert (=> b!3393661 m!3763279))

(declare-fun m!3763281 () Bool)

(assert (=> b!3393661 m!3763281))

(assert (=> b!3393661 m!3763279))

(declare-fun m!3763283 () Bool)

(assert (=> b!3393661 m!3763283))

(declare-fun m!3763285 () Bool)

(assert (=> b!3393677 m!3763285))

(declare-fun m!3763287 () Bool)

(assert (=> b!3393677 m!3763287))

(declare-fun m!3763289 () Bool)

(assert (=> b!3393677 m!3763289))

(declare-fun m!3763291 () Bool)

(assert (=> b!3393677 m!3763291))

(declare-fun m!3763293 () Bool)

(assert (=> b!3393677 m!3763293))

(declare-fun m!3763295 () Bool)

(assert (=> b!3393679 m!3763295))

(declare-fun m!3763297 () Bool)

(assert (=> b!3393689 m!3763297))

(declare-fun m!3763299 () Bool)

(assert (=> b!3393688 m!3763299))

(declare-fun m!3763301 () Bool)

(assert (=> b!3393686 m!3763301))

(declare-fun m!3763303 () Bool)

(assert (=> b!3393664 m!3763303))

(declare-fun m!3763305 () Bool)

(assert (=> b!3393664 m!3763305))

(assert (=> b!3393664 m!3763305))

(declare-fun m!3763307 () Bool)

(assert (=> b!3393664 m!3763307))

(declare-fun m!3763309 () Bool)

(assert (=> b!3393664 m!3763309))

(declare-fun m!3763311 () Bool)

(assert (=> b!3393668 m!3763311))

(declare-fun m!3763313 () Bool)

(assert (=> b!3393660 m!3763313))

(declare-fun m!3763315 () Bool)

(assert (=> b!3393659 m!3763315))

(declare-fun m!3763317 () Bool)

(assert (=> b!3393659 m!3763317))

(declare-fun m!3763319 () Bool)

(assert (=> b!3393683 m!3763319))

(declare-fun m!3763321 () Bool)

(assert (=> b!3393683 m!3763321))

(declare-fun m!3763323 () Bool)

(assert (=> b!3393683 m!3763323))

(declare-fun m!3763325 () Bool)

(assert (=> b!3393683 m!3763325))

(declare-fun m!3763327 () Bool)

(assert (=> b!3393683 m!3763327))

(assert (=> b!3393683 m!3763319))

(declare-fun m!3763329 () Bool)

(assert (=> b!3393683 m!3763329))

(declare-fun m!3763331 () Bool)

(assert (=> b!3393683 m!3763331))

(declare-fun m!3763333 () Bool)

(assert (=> b!3393683 m!3763333))

(declare-fun m!3763335 () Bool)

(assert (=> b!3393683 m!3763335))

(declare-fun m!3763337 () Bool)

(assert (=> b!3393683 m!3763337))

(declare-fun m!3763339 () Bool)

(assert (=> b!3393683 m!3763339))

(declare-fun m!3763341 () Bool)

(assert (=> b!3393683 m!3763341))

(declare-fun m!3763343 () Bool)

(assert (=> b!3393683 m!3763343))

(declare-fun m!3763345 () Bool)

(assert (=> b!3393683 m!3763345))

(declare-fun m!3763347 () Bool)

(assert (=> b!3393683 m!3763347))

(declare-fun m!3763349 () Bool)

(assert (=> b!3393683 m!3763349))

(assert (=> b!3393683 m!3763349))

(declare-fun m!3763351 () Bool)

(assert (=> b!3393683 m!3763351))

(declare-fun m!3763353 () Bool)

(assert (=> b!3393690 m!3763353))

(declare-fun m!3763355 () Bool)

(assert (=> b!3393690 m!3763355))

(declare-fun m!3763357 () Bool)

(assert (=> b!3393672 m!3763357))

(declare-fun m!3763359 () Bool)

(assert (=> b!3393672 m!3763359))

(declare-fun m!3763361 () Bool)

(assert (=> start!316602 m!3763361))

(declare-fun m!3763363 () Bool)

(assert (=> b!3393673 m!3763363))

(declare-fun m!3763365 () Bool)

(assert (=> b!3393673 m!3763365))

(declare-fun m!3763367 () Bool)

(assert (=> b!3393675 m!3763367))

(assert (=> b!3393675 m!3763367))

(declare-fun m!3763369 () Bool)

(assert (=> b!3393675 m!3763369))

(declare-fun m!3763371 () Bool)

(assert (=> b!3393667 m!3763371))

(declare-fun m!3763373 () Bool)

(assert (=> b!3393667 m!3763373))

(declare-fun m!3763375 () Bool)

(assert (=> b!3393666 m!3763375))

(declare-fun m!3763377 () Bool)

(assert (=> b!3393666 m!3763377))

(declare-fun m!3763379 () Bool)

(assert (=> b!3393678 m!3763379))

(check-sat (not b!3393688) (not b!3393662) (not b_next!89403) (not b!3393690) (not b_next!89407) b_and!236453 (not b!3393678) (not b!3393658) (not b!3393677) b_and!236445 (not b!3393664) (not b!3393675) (not b!3393684) (not b!3393666) (not b!3393663) (not b!3393692) (not b!3393672) (not b!3393679) (not start!316602) (not b_next!89405) (not b!3393668) (not b!3393676) (not b!3393661) (not b!3393659) b_and!236443 b_and!236451 (not b!3393691) (not b!3393685) (not b!3393683) (not b_next!89401) (not b!3393686) (not b!3393673) (not b_next!89411) b_and!236449 (not b!3393660) (not b_next!89409) (not b!3393689) (not b!3393667) b_and!236447)
(check-sat (not b_next!89405) (not b_next!89403) (not b_next!89407) b_and!236453 (not b_next!89401) (not b_next!89409) b_and!236445 b_and!236447 b_and!236443 b_and!236451 (not b_next!89411) b_and!236449)
