; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52344 () Bool)

(assert start!52344)

(declare-fun b!567973 () Bool)

(declare-fun b_free!15861 () Bool)

(declare-fun b_next!15877 () Bool)

(assert (=> b!567973 (= b_free!15861 (not b_next!15877))))

(declare-fun tp!178944 () Bool)

(declare-fun b_and!55315 () Bool)

(assert (=> b!567973 (= tp!178944 b_and!55315)))

(declare-fun b_free!15863 () Bool)

(declare-fun b_next!15879 () Bool)

(assert (=> b!567973 (= b_free!15863 (not b_next!15879))))

(declare-fun tp!178946 () Bool)

(declare-fun b_and!55317 () Bool)

(assert (=> b!567973 (= tp!178946 b_and!55317)))

(declare-fun b!567991 () Bool)

(declare-fun b_free!15865 () Bool)

(declare-fun b_next!15881 () Bool)

(assert (=> b!567991 (= b_free!15865 (not b_next!15881))))

(declare-fun tp!178943 () Bool)

(declare-fun b_and!55319 () Bool)

(assert (=> b!567991 (= tp!178943 b_and!55319)))

(declare-fun b_free!15867 () Bool)

(declare-fun b_next!15883 () Bool)

(assert (=> b!567991 (= b_free!15867 (not b_next!15883))))

(declare-fun tp!178940 () Bool)

(declare-fun b_and!55321 () Bool)

(assert (=> b!567991 (= tp!178940 b_and!55321)))

(declare-fun b!567965 () Bool)

(declare-fun e!343317 () Bool)

(declare-fun e!343325 () Bool)

(assert (=> b!567965 (= e!343317 e!343325)))

(declare-fun res!243895 () Bool)

(assert (=> b!567965 (=> (not res!243895) (not e!343325))))

(declare-datatypes ((C!3756 0))(
  ( (C!3757 (val!2104 Int)) )
))
(declare-datatypes ((Regex!1417 0))(
  ( (ElementMatch!1417 (c!106433 C!3756)) (Concat!2524 (regOne!3346 Regex!1417) (regTwo!3346 Regex!1417)) (EmptyExpr!1417) (Star!1417 (reg!1746 Regex!1417)) (EmptyLang!1417) (Union!1417 (regOne!3347 Regex!1417) (regTwo!3347 Regex!1417)) )
))
(declare-datatypes ((List!5620 0))(
  ( (Nil!5610) (Cons!5610 (h!11011 (_ BitVec 16)) (t!76399 List!5620)) )
))
(declare-datatypes ((List!5621 0))(
  ( (Nil!5611) (Cons!5611 (h!11012 C!3756) (t!76400 List!5621)) )
))
(declare-datatypes ((IArray!3601 0))(
  ( (IArray!3602 (innerList!1858 List!5621)) )
))
(declare-datatypes ((Conc!1800 0))(
  ( (Node!1800 (left!4586 Conc!1800) (right!4916 Conc!1800) (csize!3830 Int) (cheight!2011 Int)) (Leaf!2849 (xs!4437 IArray!3601) (csize!3831 Int)) (Empty!1800) )
))
(declare-datatypes ((BalanceConc!3608 0))(
  ( (BalanceConc!3609 (c!106434 Conc!1800)) )
))
(declare-datatypes ((TokenValue!1107 0))(
  ( (FloatLiteralValue!2214 (text!8194 List!5620)) (TokenValueExt!1106 (__x!4112 Int)) (Broken!5535 (value!35706 List!5620)) (Object!1116) (End!1107) (Def!1107) (Underscore!1107) (Match!1107) (Else!1107) (Error!1107) (Case!1107) (If!1107) (Extends!1107) (Abstract!1107) (Class!1107) (Val!1107) (DelimiterValue!2214 (del!1167 List!5620)) (KeywordValue!1113 (value!35707 List!5620)) (CommentValue!2214 (value!35708 List!5620)) (WhitespaceValue!2214 (value!35709 List!5620)) (IndentationValue!1107 (value!35710 List!5620)) (String!7278) (Int32!1107) (Broken!5536 (value!35711 List!5620)) (Boolean!1108) (Unit!10036) (OperatorValue!1110 (op!1167 List!5620)) (IdentifierValue!2214 (value!35712 List!5620)) (IdentifierValue!2215 (value!35713 List!5620)) (WhitespaceValue!2215 (value!35714 List!5620)) (True!2214) (False!2214) (Broken!5537 (value!35715 List!5620)) (Broken!5538 (value!35716 List!5620)) (True!2215) (RightBrace!1107) (RightBracket!1107) (Colon!1107) (Null!1107) (Comma!1107) (LeftBracket!1107) (False!2215) (LeftBrace!1107) (ImaginaryLiteralValue!1107 (text!8195 List!5620)) (StringLiteralValue!3321 (value!35717 List!5620)) (EOFValue!1107 (value!35718 List!5620)) (IdentValue!1107 (value!35719 List!5620)) (DelimiterValue!2215 (value!35720 List!5620)) (DedentValue!1107 (value!35721 List!5620)) (NewLineValue!1107 (value!35722 List!5620)) (IntegerValue!3321 (value!35723 (_ BitVec 32)) (text!8196 List!5620)) (IntegerValue!3322 (value!35724 Int) (text!8197 List!5620)) (Times!1107) (Or!1107) (Equal!1107) (Minus!1107) (Broken!5539 (value!35725 List!5620)) (And!1107) (Div!1107) (LessEqual!1107) (Mod!1107) (Concat!2525) (Not!1107) (Plus!1107) (SpaceValue!1107 (value!35726 List!5620)) (IntegerValue!3323 (value!35727 Int) (text!8198 List!5620)) (StringLiteralValue!3322 (text!8199 List!5620)) (FloatLiteralValue!2215 (text!8200 List!5620)) (BytesLiteralValue!1107 (value!35728 List!5620)) (CommentValue!2215 (value!35729 List!5620)) (StringLiteralValue!3323 (value!35730 List!5620)) (ErrorTokenValue!1107 (msg!1168 List!5620)) )
))
(declare-datatypes ((String!7279 0))(
  ( (String!7280 (value!35731 String)) )
))
(declare-datatypes ((TokenValueInjection!1982 0))(
  ( (TokenValueInjection!1983 (toValue!1938 Int) (toChars!1797 Int)) )
))
(declare-datatypes ((Rule!1966 0))(
  ( (Rule!1967 (regex!1083 Regex!1417) (tag!1345 String!7279) (isSeparator!1083 Bool) (transformation!1083 TokenValueInjection!1982)) )
))
(declare-datatypes ((Token!1902 0))(
  ( (Token!1903 (value!35732 TokenValue!1107) (rule!1823 Rule!1966) (size!4468 Int) (originalCharacters!1122 List!5621)) )
))
(declare-datatypes ((tuple2!6600 0))(
  ( (tuple2!6601 (_1!3564 Token!1902) (_2!3564 List!5621)) )
))
(declare-datatypes ((Option!1434 0))(
  ( (None!1433) (Some!1433 (v!16282 tuple2!6600)) )
))
(declare-fun lt!239838 () Option!1434)

(get-info :version)

(assert (=> b!567965 (= res!243895 ((_ is Some!1433) lt!239838))))

(declare-datatypes ((List!5622 0))(
  ( (Nil!5612) (Cons!5612 (h!11013 Rule!1966) (t!76401 List!5622)) )
))
(declare-fun rules!3103 () List!5622)

(declare-datatypes ((LexerInterface!969 0))(
  ( (LexerInterfaceExt!966 (__x!4113 Int)) (Lexer!967) )
))
(declare-fun thiss!22590 () LexerInterface!969)

(declare-fun input!2705 () List!5621)

(declare-fun maxPrefix!667 (LexerInterface!969 List!5622 List!5621) Option!1434)

(assert (=> b!567965 (= lt!239838 (maxPrefix!667 thiss!22590 rules!3103 input!2705))))

(declare-fun b!567966 () Bool)

(declare-fun e!343321 () Bool)

(declare-fun e!343318 () Bool)

(declare-fun tp!178947 () Bool)

(assert (=> b!567966 (= e!343321 (and e!343318 tp!178947))))

(declare-fun lt!239817 () List!5621)

(declare-fun lt!239827 () List!5621)

(declare-fun b!567967 () Bool)

(declare-fun lt!239845 () tuple2!6600)

(declare-fun e!343319 () Bool)

(declare-fun lt!239831 () Int)

(declare-fun lt!239824 () TokenValue!1107)

(assert (=> b!567967 (= e!343319 (and (= (size!4468 (_1!3564 (v!16282 lt!239838))) lt!239831) (= (originalCharacters!1122 (_1!3564 (v!16282 lt!239838))) lt!239817) (= lt!239845 (tuple2!6601 (Token!1903 lt!239824 (rule!1823 (_1!3564 (v!16282 lt!239838))) lt!239831 lt!239817) lt!239827))))))

(declare-fun e!343312 () Bool)

(declare-fun token!491 () Token!1902)

(declare-fun tp!178945 () Bool)

(declare-fun e!343310 () Bool)

(declare-fun b!567968 () Bool)

(declare-fun inv!7047 (String!7279) Bool)

(declare-fun inv!7050 (TokenValueInjection!1982) Bool)

(assert (=> b!567968 (= e!343312 (and tp!178945 (inv!7047 (tag!1345 (rule!1823 token!491))) (inv!7050 (transformation!1083 (rule!1823 token!491))) e!343310))))

(declare-fun b!567969 () Bool)

(declare-fun e!343306 () Bool)

(assert (=> b!567969 (= e!343306 false)))

(declare-fun b!567970 () Bool)

(declare-fun e!343324 () Bool)

(assert (=> b!567970 (= e!343325 e!343324)))

(declare-fun res!243888 () Bool)

(assert (=> b!567970 (=> (not res!243888) (not e!343324))))

(declare-fun lt!239823 () List!5621)

(declare-fun lt!239828 () List!5621)

(assert (=> b!567970 (= res!243888 (= lt!239823 lt!239828))))

(declare-fun lt!239835 () List!5621)

(declare-fun suffix!1342 () List!5621)

(declare-fun ++!1571 (List!5621 List!5621) List!5621)

(assert (=> b!567970 (= lt!239823 (++!1571 lt!239835 suffix!1342))))

(declare-fun b!567971 () Bool)

(declare-fun res!243887 () Bool)

(declare-fun e!343308 () Bool)

(assert (=> b!567971 (=> (not res!243887) (not e!343308))))

(declare-fun get!2139 (Option!1434) tuple2!6600)

(assert (=> b!567971 (= res!243887 (= (_1!3564 (get!2139 lt!239838)) (_1!3564 (v!16282 lt!239838))))))

(declare-fun b!567972 () Bool)

(declare-fun e!343323 () Bool)

(assert (=> b!567972 (= e!343323 e!343308)))

(declare-fun res!243893 () Bool)

(assert (=> b!567972 (=> (not res!243893) (not e!343308))))

(declare-fun isDefined!1245 (Option!1434) Bool)

(assert (=> b!567972 (= res!243893 (isDefined!1245 lt!239838))))

(assert (=> b!567973 (= e!343310 (and tp!178944 tp!178946))))

(declare-fun b!567974 () Bool)

(declare-fun res!243902 () Bool)

(assert (=> b!567974 (=> (not res!243902) (not e!343319))))

(declare-fun size!4469 (List!5621) Int)

(assert (=> b!567974 (= res!243902 (= (size!4468 (_1!3564 (v!16282 lt!239838))) (size!4469 (originalCharacters!1122 (_1!3564 (v!16282 lt!239838))))))))

(declare-fun res!243897 () Bool)

(declare-fun e!343322 () Bool)

(assert (=> start!52344 (=> (not res!243897) (not e!343322))))

(assert (=> start!52344 (= res!243897 ((_ is Lexer!967) thiss!22590))))

(assert (=> start!52344 e!343322))

(declare-fun e!343307 () Bool)

(assert (=> start!52344 e!343307))

(assert (=> start!52344 e!343321))

(declare-fun e!343327 () Bool)

(declare-fun inv!7051 (Token!1902) Bool)

(assert (=> start!52344 (and (inv!7051 token!491) e!343327)))

(assert (=> start!52344 true))

(declare-fun e!343316 () Bool)

(assert (=> start!52344 e!343316))

(declare-fun b!567975 () Bool)

(declare-fun tp_is_empty!3189 () Bool)

(declare-fun tp!178941 () Bool)

(assert (=> b!567975 (= e!343316 (and tp_is_empty!3189 tp!178941))))

(declare-fun b!567976 () Bool)

(declare-fun res!243900 () Bool)

(assert (=> b!567976 (=> (not res!243900) (not e!343322))))

(declare-fun isEmpty!4049 (List!5622) Bool)

(assert (=> b!567976 (= res!243900 (not (isEmpty!4049 rules!3103)))))

(declare-fun b!567977 () Bool)

(declare-fun e!343330 () Bool)

(assert (=> b!567977 (= e!343330 e!343317)))

(declare-fun res!243890 () Bool)

(assert (=> b!567977 (=> (not res!243890) (not e!343317))))

(declare-fun lt!239842 () tuple2!6600)

(assert (=> b!567977 (= res!243890 (and (= (_1!3564 lt!239842) token!491) (= (_2!3564 lt!239842) suffix!1342)))))

(declare-fun lt!239839 () Option!1434)

(assert (=> b!567977 (= lt!239842 (get!2139 lt!239839))))

(declare-fun b!567978 () Bool)

(declare-datatypes ((Unit!10037 0))(
  ( (Unit!10038) )
))
(declare-fun e!343326 () Unit!10037)

(declare-fun Unit!10039 () Unit!10037)

(assert (=> b!567978 (= e!343326 Unit!10039)))

(declare-fun b!567979 () Bool)

(declare-fun e!343309 () Bool)

(assert (=> b!567979 (= e!343309 e!343330)))

(declare-fun res!243885 () Bool)

(assert (=> b!567979 (=> (not res!243885) (not e!343330))))

(assert (=> b!567979 (= res!243885 (isDefined!1245 lt!239839))))

(assert (=> b!567979 (= lt!239839 (maxPrefix!667 thiss!22590 rules!3103 lt!239828))))

(assert (=> b!567979 (= lt!239828 (++!1571 input!2705 suffix!1342))))

(declare-fun b!567980 () Bool)

(declare-fun e!343320 () Unit!10037)

(declare-fun Unit!10040 () Unit!10037)

(assert (=> b!567980 (= e!343320 Unit!10040)))

(declare-fun lt!239822 () Unit!10037)

(declare-fun lt!239833 () BalanceConc!3608)

(declare-fun lemmaSemiInverse!186 (TokenValueInjection!1982 BalanceConc!3608) Unit!10037)

(assert (=> b!567980 (= lt!239822 (lemmaSemiInverse!186 (transformation!1083 (rule!1823 (_1!3564 (v!16282 lt!239838)))) lt!239833))))

(declare-fun lt!239841 () Unit!10037)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!42 (LexerInterface!969 List!5622 Rule!1966 List!5621 List!5621 List!5621 Rule!1966) Unit!10037)

(assert (=> b!567980 (= lt!239841 (lemmaMaxPrefixOutputsMaxPrefix!42 thiss!22590 rules!3103 (rule!1823 (_1!3564 (v!16282 lt!239838))) lt!239817 input!2705 input!2705 (rule!1823 token!491)))))

(declare-fun res!243896 () Bool)

(declare-fun matchR!564 (Regex!1417 List!5621) Bool)

(assert (=> b!567980 (= res!243896 (not (matchR!564 (regex!1083 (rule!1823 token!491)) input!2705)))))

(assert (=> b!567980 (=> (not res!243896) (not e!343306))))

(assert (=> b!567980 e!343306))

(declare-fun b!567981 () Bool)

(declare-fun res!243891 () Bool)

(declare-fun e!343311 () Bool)

(assert (=> b!567981 (=> (not res!243891) (not e!343311))))

(assert (=> b!567981 (= res!243891 (= (size!4468 token!491) (size!4469 (originalCharacters!1122 token!491))))))

(declare-fun b!567982 () Bool)

(declare-fun res!243886 () Bool)

(assert (=> b!567982 (=> (not res!243886) (not e!343322))))

(declare-fun rulesInvariant!932 (LexerInterface!969 List!5622) Bool)

(assert (=> b!567982 (= res!243886 (rulesInvariant!932 thiss!22590 rules!3103))))

(declare-fun b!567983 () Bool)

(declare-fun e!343328 () Bool)

(assert (=> b!567983 (= e!343324 (not e!343328))))

(declare-fun res!243889 () Bool)

(assert (=> b!567983 (=> res!243889 e!343328)))

(declare-fun isPrefix!717 (List!5621 List!5621) Bool)

(assert (=> b!567983 (= res!243889 (not (isPrefix!717 input!2705 lt!239823)))))

(assert (=> b!567983 (isPrefix!717 lt!239835 lt!239823)))

(declare-fun lt!239843 () Unit!10037)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!564 (List!5621 List!5621) Unit!10037)

(assert (=> b!567983 (= lt!239843 (lemmaConcatTwoListThenFirstIsPrefix!564 lt!239835 suffix!1342))))

(assert (=> b!567983 (isPrefix!717 input!2705 lt!239828)))

(declare-fun lt!239847 () Unit!10037)

(assert (=> b!567983 (= lt!239847 (lemmaConcatTwoListThenFirstIsPrefix!564 input!2705 suffix!1342))))

(assert (=> b!567983 e!343319))

(declare-fun res!243892 () Bool)

(assert (=> b!567983 (=> (not res!243892) (not e!343319))))

(assert (=> b!567983 (= res!243892 (= (value!35732 (_1!3564 (v!16282 lt!239838))) lt!239824))))

(declare-fun apply!1348 (TokenValueInjection!1982 BalanceConc!3608) TokenValue!1107)

(assert (=> b!567983 (= lt!239824 (apply!1348 (transformation!1083 (rule!1823 (_1!3564 (v!16282 lt!239838)))) lt!239833))))

(declare-fun seqFromList!1271 (List!5621) BalanceConc!3608)

(assert (=> b!567983 (= lt!239833 (seqFromList!1271 lt!239817))))

(declare-fun lt!239832 () Unit!10037)

(declare-fun lemmaInv!219 (TokenValueInjection!1982) Unit!10037)

(assert (=> b!567983 (= lt!239832 (lemmaInv!219 (transformation!1083 (rule!1823 token!491))))))

(declare-fun lt!239826 () Unit!10037)

(assert (=> b!567983 (= lt!239826 (lemmaInv!219 (transformation!1083 (rule!1823 (_1!3564 (v!16282 lt!239838))))))))

(declare-fun ruleValid!293 (LexerInterface!969 Rule!1966) Bool)

(assert (=> b!567983 (ruleValid!293 thiss!22590 (rule!1823 token!491))))

(declare-fun lt!239816 () Unit!10037)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!150 (LexerInterface!969 Rule!1966 List!5622) Unit!10037)

(assert (=> b!567983 (= lt!239816 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!150 thiss!22590 (rule!1823 token!491) rules!3103))))

(assert (=> b!567983 (ruleValid!293 thiss!22590 (rule!1823 (_1!3564 (v!16282 lt!239838))))))

(declare-fun lt!239830 () Unit!10037)

(assert (=> b!567983 (= lt!239830 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!150 thiss!22590 (rule!1823 (_1!3564 (v!16282 lt!239838))) rules!3103))))

(assert (=> b!567983 (isPrefix!717 input!2705 input!2705)))

(declare-fun lt!239837 () Unit!10037)

(declare-fun lemmaIsPrefixRefl!455 (List!5621 List!5621) Unit!10037)

(assert (=> b!567983 (= lt!239837 (lemmaIsPrefixRefl!455 input!2705 input!2705))))

(assert (=> b!567983 (= (_2!3564 (v!16282 lt!239838)) lt!239827)))

(declare-fun lt!239820 () Unit!10037)

(declare-fun lemmaSamePrefixThenSameSuffix!440 (List!5621 List!5621 List!5621 List!5621 List!5621) Unit!10037)

(assert (=> b!567983 (= lt!239820 (lemmaSamePrefixThenSameSuffix!440 lt!239817 (_2!3564 (v!16282 lt!239838)) lt!239817 lt!239827 input!2705))))

(declare-fun getSuffix!236 (List!5621 List!5621) List!5621)

(assert (=> b!567983 (= lt!239827 (getSuffix!236 input!2705 lt!239817))))

(assert (=> b!567983 (isPrefix!717 lt!239817 (++!1571 lt!239817 (_2!3564 (v!16282 lt!239838))))))

(declare-fun lt!239812 () Unit!10037)

(assert (=> b!567983 (= lt!239812 (lemmaConcatTwoListThenFirstIsPrefix!564 lt!239817 (_2!3564 (v!16282 lt!239838))))))

(declare-fun lt!239825 () Unit!10037)

(declare-fun lemmaCharactersSize!150 (Token!1902) Unit!10037)

(assert (=> b!567983 (= lt!239825 (lemmaCharactersSize!150 token!491))))

(declare-fun lt!239840 () Unit!10037)

(assert (=> b!567983 (= lt!239840 (lemmaCharactersSize!150 (_1!3564 (v!16282 lt!239838))))))

(declare-fun lt!239846 () Unit!10037)

(assert (=> b!567983 (= lt!239846 e!343326)))

(declare-fun c!106431 () Bool)

(declare-fun lt!239834 () Int)

(assert (=> b!567983 (= c!106431 (> lt!239831 lt!239834))))

(assert (=> b!567983 (= lt!239834 (size!4469 lt!239835))))

(assert (=> b!567983 (= lt!239831 (size!4469 lt!239817))))

(declare-fun list!2327 (BalanceConc!3608) List!5621)

(declare-fun charsOf!712 (Token!1902) BalanceConc!3608)

(assert (=> b!567983 (= lt!239817 (list!2327 (charsOf!712 (_1!3564 (v!16282 lt!239838)))))))

(assert (=> b!567983 (= lt!239838 (Some!1433 lt!239845))))

(assert (=> b!567983 (= lt!239845 (tuple2!6601 (_1!3564 (v!16282 lt!239838)) (_2!3564 (v!16282 lt!239838))))))

(declare-fun lt!239815 () Unit!10037)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!160 (List!5621 List!5621 List!5621 List!5621) Unit!10037)

(assert (=> b!567983 (= lt!239815 (lemmaConcatSameAndSameSizesThenSameLists!160 lt!239835 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!567984 () Bool)

(declare-fun lt!239821 () List!5621)

(declare-fun lt!239836 () TokenValue!1107)

(assert (=> b!567984 (= e!343311 (and (= (size!4468 token!491) lt!239834) (= (originalCharacters!1122 token!491) lt!239835) (= (tuple2!6601 token!491 suffix!1342) (tuple2!6601 (Token!1903 lt!239836 (rule!1823 token!491) lt!239834 lt!239835) lt!239821))))))

(declare-fun tp!178942 () Bool)

(declare-fun e!343331 () Bool)

(declare-fun b!567985 () Bool)

(assert (=> b!567985 (= e!343318 (and tp!178942 (inv!7047 (tag!1345 (h!11013 rules!3103))) (inv!7050 (transformation!1083 (h!11013 rules!3103))) e!343331))))

(declare-fun b!567986 () Bool)

(declare-fun tp!178948 () Bool)

(declare-fun inv!21 (TokenValue!1107) Bool)

(assert (=> b!567986 (= e!343327 (and (inv!21 (value!35732 token!491)) e!343312 tp!178948))))

(declare-fun b!567987 () Bool)

(assert (=> b!567987 (= e!343308 (= lt!239827 (_2!3564 (v!16282 lt!239838))))))

(declare-fun b!567988 () Bool)

(declare-fun tp!178939 () Bool)

(assert (=> b!567988 (= e!343307 (and tp_is_empty!3189 tp!178939))))

(declare-fun b!567989 () Bool)

(declare-fun Unit!10041 () Unit!10037)

(assert (=> b!567989 (= e!343320 Unit!10041)))

(declare-fun b!567990 () Bool)

(declare-fun Unit!10042 () Unit!10037)

(assert (=> b!567990 (= e!343326 Unit!10042)))

(assert (=> b!567990 false))

(assert (=> b!567991 (= e!343331 (and tp!178943 tp!178940))))

(declare-fun b!567992 () Bool)

(assert (=> b!567992 (= e!343322 e!343309)))

(declare-fun res!243894 () Bool)

(assert (=> b!567992 (=> (not res!243894) (not e!343309))))

(assert (=> b!567992 (= res!243894 (= lt!239835 input!2705))))

(assert (=> b!567992 (= lt!239835 (list!2327 (charsOf!712 token!491)))))

(declare-fun b!567993 () Bool)

(declare-fun res!243898 () Bool)

(assert (=> b!567993 (=> (not res!243898) (not e!343322))))

(declare-fun isEmpty!4050 (List!5621) Bool)

(assert (=> b!567993 (= res!243898 (not (isEmpty!4050 input!2705)))))

(declare-fun b!567994 () Bool)

(declare-fun e!343313 () Bool)

(assert (=> b!567994 (= e!343313 e!343323)))

(declare-fun res!243899 () Bool)

(assert (=> b!567994 (=> res!243899 e!343323)))

(assert (=> b!567994 (= res!243899 (>= lt!239831 lt!239834))))

(declare-fun b!567995 () Bool)

(assert (=> b!567995 (= e!343328 (= lt!239831 lt!239834))))

(declare-fun lt!239814 () Unit!10037)

(declare-fun lt!239813 () BalanceConc!3608)

(assert (=> b!567995 (= lt!239814 (lemmaSemiInverse!186 (transformation!1083 (rule!1823 token!491)) lt!239813))))

(declare-fun lt!239818 () Unit!10037)

(assert (=> b!567995 (= lt!239818 (lemmaSemiInverse!186 (transformation!1083 (rule!1823 (_1!3564 (v!16282 lt!239838)))) lt!239833))))

(declare-fun lt!239819 () Unit!10037)

(assert (=> b!567995 (= lt!239819 e!343320)))

(declare-fun c!106432 () Bool)

(assert (=> b!567995 (= c!106432 (< lt!239831 lt!239834))))

(assert (=> b!567995 e!343313))

(declare-fun res!243884 () Bool)

(assert (=> b!567995 (=> (not res!243884) (not e!343313))))

(declare-fun maxPrefixOneRule!368 (LexerInterface!969 Rule!1966 List!5621) Option!1434)

(assert (=> b!567995 (= res!243884 (= (maxPrefixOneRule!368 thiss!22590 (rule!1823 token!491) lt!239828) (Some!1433 (tuple2!6601 (Token!1903 lt!239836 (rule!1823 token!491) lt!239834 lt!239835) suffix!1342))))))

(declare-fun lt!239829 () Unit!10037)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!118 (LexerInterface!969 List!5622 List!5621 List!5621 List!5621 Rule!1966) Unit!10037)

(assert (=> b!567995 (= lt!239829 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!118 thiss!22590 rules!3103 lt!239835 lt!239828 suffix!1342 (rule!1823 token!491)))))

(assert (=> b!567995 (= (maxPrefixOneRule!368 thiss!22590 (rule!1823 (_1!3564 (v!16282 lt!239838))) input!2705) (Some!1433 (tuple2!6601 (Token!1903 lt!239824 (rule!1823 (_1!3564 (v!16282 lt!239838))) lt!239831 lt!239817) (_2!3564 (v!16282 lt!239838)))))))

(declare-fun lt!239848 () Unit!10037)

(assert (=> b!567995 (= lt!239848 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!118 thiss!22590 rules!3103 lt!239817 input!2705 (_2!3564 (v!16282 lt!239838)) (rule!1823 (_1!3564 (v!16282 lt!239838)))))))

(assert (=> b!567995 e!343311))

(declare-fun res!243901 () Bool)

(assert (=> b!567995 (=> (not res!243901) (not e!343311))))

(assert (=> b!567995 (= res!243901 (= (value!35732 token!491) lt!239836))))

(assert (=> b!567995 (= lt!239836 (apply!1348 (transformation!1083 (rule!1823 token!491)) lt!239813))))

(assert (=> b!567995 (= lt!239813 (seqFromList!1271 lt!239835))))

(assert (=> b!567995 (= suffix!1342 lt!239821)))

(declare-fun lt!239844 () Unit!10037)

(assert (=> b!567995 (= lt!239844 (lemmaSamePrefixThenSameSuffix!440 lt!239835 suffix!1342 lt!239835 lt!239821 lt!239828))))

(assert (=> b!567995 (= lt!239821 (getSuffix!236 lt!239828 lt!239835))))

(assert (= (and start!52344 res!243897) b!567976))

(assert (= (and b!567976 res!243900) b!567982))

(assert (= (and b!567982 res!243886) b!567993))

(assert (= (and b!567993 res!243898) b!567992))

(assert (= (and b!567992 res!243894) b!567979))

(assert (= (and b!567979 res!243885) b!567977))

(assert (= (and b!567977 res!243890) b!567965))

(assert (= (and b!567965 res!243895) b!567970))

(assert (= (and b!567970 res!243888) b!567983))

(assert (= (and b!567983 c!106431) b!567990))

(assert (= (and b!567983 (not c!106431)) b!567978))

(assert (= (and b!567983 res!243892) b!567974))

(assert (= (and b!567974 res!243902) b!567967))

(assert (= (and b!567983 (not res!243889)) b!567995))

(assert (= (and b!567995 res!243901) b!567981))

(assert (= (and b!567981 res!243891) b!567984))

(assert (= (and b!567995 res!243884) b!567994))

(assert (= (and b!567994 (not res!243899)) b!567972))

(assert (= (and b!567972 res!243893) b!567971))

(assert (= (and b!567971 res!243887) b!567987))

(assert (= (and b!567995 c!106432) b!567980))

(assert (= (and b!567995 (not c!106432)) b!567989))

(assert (= (and b!567980 res!243896) b!567969))

(assert (= (and start!52344 ((_ is Cons!5611) suffix!1342)) b!567988))

(assert (= b!567985 b!567991))

(assert (= b!567966 b!567985))

(assert (= (and start!52344 ((_ is Cons!5612) rules!3103)) b!567966))

(assert (= b!567968 b!567973))

(assert (= b!567986 b!567968))

(assert (= start!52344 b!567986))

(assert (= (and start!52344 ((_ is Cons!5611) input!2705)) b!567975))

(declare-fun m!821945 () Bool)

(assert (=> b!567986 m!821945))

(declare-fun m!821947 () Bool)

(assert (=> b!567970 m!821947))

(declare-fun m!821949 () Bool)

(assert (=> b!567982 m!821949))

(declare-fun m!821951 () Bool)

(assert (=> b!567971 m!821951))

(declare-fun m!821953 () Bool)

(assert (=> b!567974 m!821953))

(declare-fun m!821955 () Bool)

(assert (=> b!567976 m!821955))

(declare-fun m!821957 () Bool)

(assert (=> b!567968 m!821957))

(declare-fun m!821959 () Bool)

(assert (=> b!567968 m!821959))

(declare-fun m!821961 () Bool)

(assert (=> b!567985 m!821961))

(declare-fun m!821963 () Bool)

(assert (=> b!567985 m!821963))

(declare-fun m!821965 () Bool)

(assert (=> b!567972 m!821965))

(declare-fun m!821967 () Bool)

(assert (=> b!567981 m!821967))

(declare-fun m!821969 () Bool)

(assert (=> b!567965 m!821969))

(declare-fun m!821971 () Bool)

(assert (=> b!567980 m!821971))

(declare-fun m!821973 () Bool)

(assert (=> b!567980 m!821973))

(declare-fun m!821975 () Bool)

(assert (=> b!567980 m!821975))

(declare-fun m!821977 () Bool)

(assert (=> b!567983 m!821977))

(declare-fun m!821979 () Bool)

(assert (=> b!567983 m!821979))

(declare-fun m!821981 () Bool)

(assert (=> b!567983 m!821981))

(declare-fun m!821983 () Bool)

(assert (=> b!567983 m!821983))

(declare-fun m!821985 () Bool)

(assert (=> b!567983 m!821985))

(declare-fun m!821987 () Bool)

(assert (=> b!567983 m!821987))

(declare-fun m!821989 () Bool)

(assert (=> b!567983 m!821989))

(declare-fun m!821991 () Bool)

(assert (=> b!567983 m!821991))

(declare-fun m!821993 () Bool)

(assert (=> b!567983 m!821993))

(declare-fun m!821995 () Bool)

(assert (=> b!567983 m!821995))

(declare-fun m!821997 () Bool)

(assert (=> b!567983 m!821997))

(declare-fun m!821999 () Bool)

(assert (=> b!567983 m!821999))

(declare-fun m!822001 () Bool)

(assert (=> b!567983 m!822001))

(declare-fun m!822003 () Bool)

(assert (=> b!567983 m!822003))

(declare-fun m!822005 () Bool)

(assert (=> b!567983 m!822005))

(declare-fun m!822007 () Bool)

(assert (=> b!567983 m!822007))

(declare-fun m!822009 () Bool)

(assert (=> b!567983 m!822009))

(declare-fun m!822011 () Bool)

(assert (=> b!567983 m!822011))

(declare-fun m!822013 () Bool)

(assert (=> b!567983 m!822013))

(declare-fun m!822015 () Bool)

(assert (=> b!567983 m!822015))

(declare-fun m!822017 () Bool)

(assert (=> b!567983 m!822017))

(declare-fun m!822019 () Bool)

(assert (=> b!567983 m!822019))

(assert (=> b!567983 m!821999))

(declare-fun m!822021 () Bool)

(assert (=> b!567983 m!822021))

(declare-fun m!822023 () Bool)

(assert (=> b!567983 m!822023))

(declare-fun m!822025 () Bool)

(assert (=> b!567983 m!822025))

(assert (=> b!567983 m!822015))

(declare-fun m!822027 () Bool)

(assert (=> b!567983 m!822027))

(declare-fun m!822029 () Bool)

(assert (=> b!567983 m!822029))

(declare-fun m!822031 () Bool)

(assert (=> b!567993 m!822031))

(declare-fun m!822033 () Bool)

(assert (=> b!567979 m!822033))

(declare-fun m!822035 () Bool)

(assert (=> b!567979 m!822035))

(declare-fun m!822037 () Bool)

(assert (=> b!567979 m!822037))

(declare-fun m!822039 () Bool)

(assert (=> b!567977 m!822039))

(declare-fun m!822041 () Bool)

(assert (=> start!52344 m!822041))

(declare-fun m!822043 () Bool)

(assert (=> b!567995 m!822043))

(declare-fun m!822045 () Bool)

(assert (=> b!567995 m!822045))

(declare-fun m!822047 () Bool)

(assert (=> b!567995 m!822047))

(declare-fun m!822049 () Bool)

(assert (=> b!567995 m!822049))

(declare-fun m!822051 () Bool)

(assert (=> b!567995 m!822051))

(assert (=> b!567995 m!821971))

(declare-fun m!822053 () Bool)

(assert (=> b!567995 m!822053))

(declare-fun m!822055 () Bool)

(assert (=> b!567995 m!822055))

(declare-fun m!822057 () Bool)

(assert (=> b!567995 m!822057))

(declare-fun m!822059 () Bool)

(assert (=> b!567995 m!822059))

(declare-fun m!822061 () Bool)

(assert (=> b!567992 m!822061))

(assert (=> b!567992 m!822061))

(declare-fun m!822063 () Bool)

(assert (=> b!567992 m!822063))

(check-sat b_and!55317 (not b!567995) (not b_next!15879) (not b!567975) (not b!567979) (not b!567985) (not b!567971) (not b_next!15881) tp_is_empty!3189 (not b!567970) (not b!567982) (not b!567986) (not b!567965) (not b_next!15877) b_and!55315 (not b!567966) b_and!55319 b_and!55321 (not b!567976) (not b!567981) (not b!567988) (not b!567972) (not b!567980) (not b!567992) (not b_next!15883) (not b!567983) (not b!567977) (not b!567974) (not start!52344) (not b!567993) (not b!567968))
(check-sat b_and!55317 b_and!55315 (not b_next!15879) (not b_next!15881) (not b_next!15883) (not b_next!15877) b_and!55319 b_and!55321)
