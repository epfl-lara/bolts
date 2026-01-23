; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396598 () Bool)

(assert start!396598)

(declare-fun b!4162163 () Bool)

(declare-fun b_free!119967 () Bool)

(declare-fun b_next!120671 () Bool)

(assert (=> b!4162163 (= b_free!119967 (not b_next!120671))))

(declare-fun tp!1270619 () Bool)

(declare-fun b_and!324329 () Bool)

(assert (=> b!4162163 (= tp!1270619 b_and!324329)))

(declare-fun b_free!119969 () Bool)

(declare-fun b_next!120673 () Bool)

(assert (=> b!4162163 (= b_free!119969 (not b_next!120673))))

(declare-fun tp!1270623 () Bool)

(declare-fun b_and!324331 () Bool)

(assert (=> b!4162163 (= tp!1270623 b_and!324331)))

(declare-fun b!4162173 () Bool)

(declare-fun b_free!119971 () Bool)

(declare-fun b_next!120675 () Bool)

(assert (=> b!4162173 (= b_free!119971 (not b_next!120675))))

(declare-fun tp!1270626 () Bool)

(declare-fun b_and!324333 () Bool)

(assert (=> b!4162173 (= tp!1270626 b_and!324333)))

(declare-fun b_free!119973 () Bool)

(declare-fun b_next!120677 () Bool)

(assert (=> b!4162173 (= b_free!119973 (not b_next!120677))))

(declare-fun tp!1270615 () Bool)

(declare-fun b_and!324335 () Bool)

(assert (=> b!4162173 (= tp!1270615 b_and!324335)))

(declare-fun b!4162174 () Bool)

(declare-fun b_free!119975 () Bool)

(declare-fun b_next!120679 () Bool)

(assert (=> b!4162174 (= b_free!119975 (not b_next!120679))))

(declare-fun tp!1270618 () Bool)

(declare-fun b_and!324337 () Bool)

(assert (=> b!4162174 (= tp!1270618 b_and!324337)))

(declare-fun b_free!119977 () Bool)

(declare-fun b_next!120681 () Bool)

(assert (=> b!4162174 (= b_free!119977 (not b_next!120681))))

(declare-fun tp!1270616 () Bool)

(declare-fun b_and!324339 () Bool)

(assert (=> b!4162174 (= tp!1270616 b_and!324339)))

(declare-fun b!4162159 () Bool)

(declare-fun res!1705035 () Bool)

(declare-fun e!2583715 () Bool)

(assert (=> b!4162159 (=> (not res!1705035) (not e!2583715))))

(declare-datatypes ((C!25052 0))(
  ( (C!25053 (val!14688 Int)) )
))
(declare-datatypes ((List!45653 0))(
  ( (Nil!45529) (Cons!45529 (h!50949 C!25052) (t!343684 List!45653)) )
))
(declare-datatypes ((IArray!27479 0))(
  ( (IArray!27480 (innerList!13797 List!45653)) )
))
(declare-datatypes ((Conc!13737 0))(
  ( (Node!13737 (left!33950 Conc!13737) (right!34280 Conc!13737) (csize!27704 Int) (cheight!13948 Int)) (Leaf!21243 (xs!17043 IArray!27479) (csize!27705 Int)) (Empty!13737) )
))
(declare-datatypes ((String!52645 0))(
  ( (String!52646 (value!235016 String)) )
))
(declare-datatypes ((List!45654 0))(
  ( (Nil!45530) (Cons!45530 (h!50950 (_ BitVec 16)) (t!343685 List!45654)) )
))
(declare-datatypes ((BalanceConc!27068 0))(
  ( (BalanceConc!27069 (c!711974 Conc!13737)) )
))
(declare-datatypes ((TokenValue!7756 0))(
  ( (FloatLiteralValue!15512 (text!54737 List!45654)) (TokenValueExt!7755 (__x!27733 Int)) (Broken!38780 (value!235017 List!45654)) (Object!7879) (End!7756) (Def!7756) (Underscore!7756) (Match!7756) (Else!7756) (Error!7756) (Case!7756) (If!7756) (Extends!7756) (Abstract!7756) (Class!7756) (Val!7756) (DelimiterValue!15512 (del!7816 List!45654)) (KeywordValue!7762 (value!235018 List!45654)) (CommentValue!15512 (value!235019 List!45654)) (WhitespaceValue!15512 (value!235020 List!45654)) (IndentationValue!7756 (value!235021 List!45654)) (String!52647) (Int32!7756) (Broken!38781 (value!235022 List!45654)) (Boolean!7757) (Unit!64620) (OperatorValue!7759 (op!7816 List!45654)) (IdentifierValue!15512 (value!235023 List!45654)) (IdentifierValue!15513 (value!235024 List!45654)) (WhitespaceValue!15513 (value!235025 List!45654)) (True!15512) (False!15512) (Broken!38782 (value!235026 List!45654)) (Broken!38783 (value!235027 List!45654)) (True!15513) (RightBrace!7756) (RightBracket!7756) (Colon!7756) (Null!7756) (Comma!7756) (LeftBracket!7756) (False!15513) (LeftBrace!7756) (ImaginaryLiteralValue!7756 (text!54738 List!45654)) (StringLiteralValue!23268 (value!235028 List!45654)) (EOFValue!7756 (value!235029 List!45654)) (IdentValue!7756 (value!235030 List!45654)) (DelimiterValue!15513 (value!235031 List!45654)) (DedentValue!7756 (value!235032 List!45654)) (NewLineValue!7756 (value!235033 List!45654)) (IntegerValue!23268 (value!235034 (_ BitVec 32)) (text!54739 List!45654)) (IntegerValue!23269 (value!235035 Int) (text!54740 List!45654)) (Times!7756) (Or!7756) (Equal!7756) (Minus!7756) (Broken!38784 (value!235036 List!45654)) (And!7756) (Div!7756) (LessEqual!7756) (Mod!7756) (Concat!20187) (Not!7756) (Plus!7756) (SpaceValue!7756 (value!235037 List!45654)) (IntegerValue!23270 (value!235038 Int) (text!54741 List!45654)) (StringLiteralValue!23269 (text!54742 List!45654)) (FloatLiteralValue!15513 (text!54743 List!45654)) (BytesLiteralValue!7756 (value!235039 List!45654)) (CommentValue!15513 (value!235040 List!45654)) (StringLiteralValue!23270 (value!235041 List!45654)) (ErrorTokenValue!7756 (msg!7817 List!45654)) )
))
(declare-datatypes ((TokenValueInjection!14940 0))(
  ( (TokenValueInjection!14941 (toValue!10190 Int) (toChars!10049 Int)) )
))
(declare-datatypes ((Regex!12431 0))(
  ( (ElementMatch!12431 (c!711975 C!25052)) (Concat!20188 (regOne!25374 Regex!12431) (regTwo!25374 Regex!12431)) (EmptyExpr!12431) (Star!12431 (reg!12760 Regex!12431)) (EmptyLang!12431) (Union!12431 (regOne!25375 Regex!12431) (regTwo!25375 Regex!12431)) )
))
(declare-datatypes ((Rule!14852 0))(
  ( (Rule!14853 (regex!7526 Regex!12431) (tag!8390 String!52645) (isSeparator!7526 Bool) (transformation!7526 TokenValueInjection!14940)) )
))
(declare-datatypes ((List!45655 0))(
  ( (Nil!45531) (Cons!45531 (h!50951 Rule!14852) (t!343686 List!45655)) )
))
(declare-fun rules!3820 () List!45655)

(declare-fun isEmpty!26957 (List!45655) Bool)

(assert (=> b!4162159 (= res!1705035 (not (isEmpty!26957 rules!3820)))))

(declare-fun b!4162160 () Bool)

(declare-fun e!2583724 () Bool)

(declare-fun tp_is_empty!21825 () Bool)

(declare-fun tp!1270617 () Bool)

(assert (=> b!4162160 (= e!2583724 (and tp_is_empty!21825 tp!1270617))))

(declare-fun res!1705039 () Bool)

(assert (=> start!396598 (=> (not res!1705039) (not e!2583715))))

(declare-datatypes ((LexerInterface!7119 0))(
  ( (LexerInterfaceExt!7116 (__x!27734 Int)) (Lexer!7117) )
))
(declare-fun thiss!25889 () LexerInterface!7119)

(get-info :version)

(assert (=> start!396598 (= res!1705039 ((_ is Lexer!7117) thiss!25889))))

(assert (=> start!396598 e!2583715))

(declare-fun e!2583721 () Bool)

(assert (=> start!396598 e!2583721))

(declare-fun e!2583726 () Bool)

(assert (=> start!396598 e!2583726))

(declare-fun e!2583725 () Bool)

(assert (=> start!396598 e!2583725))

(assert (=> start!396598 e!2583724))

(assert (=> start!396598 true))

(declare-fun e!2583723 () Bool)

(assert (=> start!396598 e!2583723))

(declare-fun e!2583720 () Bool)

(assert (=> start!396598 e!2583720))

(declare-fun b!4162161 () Bool)

(declare-fun tp!1270621 () Bool)

(assert (=> b!4162161 (= e!2583725 (and tp_is_empty!21825 tp!1270621))))

(declare-fun e!2583717 () Bool)

(declare-fun b!4162162 () Bool)

(declare-fun tp!1270624 () Bool)

(declare-fun r!4097 () Rule!14852)

(declare-fun inv!60044 (String!52645) Bool)

(declare-fun inv!60046 (TokenValueInjection!14940) Bool)

(assert (=> b!4162162 (= e!2583720 (and tp!1270624 (inv!60044 (tag!8390 r!4097)) (inv!60046 (transformation!7526 r!4097)) e!2583717))))

(declare-fun e!2583712 () Bool)

(assert (=> b!4162163 (= e!2583712 (and tp!1270619 tp!1270623))))

(declare-fun b!4162164 () Bool)

(declare-fun res!1705033 () Bool)

(assert (=> b!4162164 (=> (not res!1705033) (not e!2583715))))

(declare-fun contains!9319 (List!45655 Rule!14852) Bool)

(assert (=> b!4162164 (= res!1705033 (contains!9319 rules!3820 r!4097))))

(declare-fun e!2583722 () Bool)

(declare-fun b!4162165 () Bool)

(declare-fun tp!1270622 () Bool)

(declare-fun rBis!161 () Rule!14852)

(assert (=> b!4162165 (= e!2583723 (and tp!1270622 (inv!60044 (tag!8390 rBis!161)) (inv!60046 (transformation!7526 rBis!161)) e!2583722))))

(declare-fun b!4162166 () Bool)

(declare-fun res!1705034 () Bool)

(assert (=> b!4162166 (=> (not res!1705034) (not e!2583715))))

(declare-fun p!2942 () List!45653)

(declare-fun input!3316 () List!45653)

(declare-fun isPrefix!4383 (List!45653 List!45653) Bool)

(assert (=> b!4162166 (= res!1705034 (isPrefix!4383 p!2942 input!3316))))

(declare-fun b!4162167 () Bool)

(declare-fun res!1705040 () Bool)

(assert (=> b!4162167 (=> (not res!1705040) (not e!2583715))))

(assert (=> b!4162167 (= res!1705040 (contains!9319 rules!3820 rBis!161))))

(declare-fun b!4162168 () Bool)

(declare-fun res!1705036 () Bool)

(assert (=> b!4162168 (=> (not res!1705036) (not e!2583715))))

(declare-fun pBis!100 () List!45653)

(assert (=> b!4162168 (= res!1705036 (isPrefix!4383 pBis!100 input!3316))))

(declare-fun b!4162169 () Bool)

(declare-fun res!1705037 () Bool)

(assert (=> b!4162169 (=> (not res!1705037) (not e!2583715))))

(declare-fun rulesInvariant!6332 (LexerInterface!7119 List!45655) Bool)

(assert (=> b!4162169 (= res!1705037 (rulesInvariant!6332 thiss!25889 rules!3820))))

(declare-fun b!4162170 () Bool)

(declare-fun e!2583713 () Bool)

(declare-fun size!33458 (List!45653) Int)

(assert (=> b!4162170 (= e!2583713 (>= (size!33458 input!3316) (size!33458 p!2942)))))

(assert (=> b!4162170 (isPrefix!4383 input!3316 input!3316)))

(declare-datatypes ((Unit!64621 0))(
  ( (Unit!64622) )
))
(declare-fun lt!1483010 () Unit!64621)

(declare-fun lemmaIsPrefixRefl!2822 (List!45653 List!45653) Unit!64621)

(assert (=> b!4162170 (= lt!1483010 (lemmaIsPrefixRefl!2822 input!3316 input!3316))))

(declare-fun lt!1483008 () Unit!64621)

(declare-fun lemmaSemiInverse!2300 (TokenValueInjection!14940 BalanceConc!27068) Unit!64621)

(declare-fun seqFromList!5559 (List!45653) BalanceConc!27068)

(assert (=> b!4162170 (= lt!1483008 (lemmaSemiInverse!2300 (transformation!7526 r!4097) (seqFromList!5559 p!2942)))))

(declare-fun b!4162171 () Bool)

(declare-fun e!2583714 () Bool)

(declare-fun tp!1270620 () Bool)

(assert (=> b!4162171 (= e!2583714 (and tp!1270620 (inv!60044 (tag!8390 (h!50951 rules!3820))) (inv!60046 (transformation!7526 (h!50951 rules!3820))) e!2583712))))

(declare-fun b!4162172 () Bool)

(declare-fun tp!1270625 () Bool)

(assert (=> b!4162172 (= e!2583721 (and tp_is_empty!21825 tp!1270625))))

(assert (=> b!4162173 (= e!2583717 (and tp!1270626 tp!1270615))))

(assert (=> b!4162174 (= e!2583722 (and tp!1270618 tp!1270616))))

(declare-fun b!4162175 () Bool)

(assert (=> b!4162175 (= e!2583715 (not e!2583713))))

(declare-fun res!1705038 () Bool)

(assert (=> b!4162175 (=> res!1705038 e!2583713)))

(declare-fun matchR!6176 (Regex!12431 List!45653) Bool)

(assert (=> b!4162175 (= res!1705038 (not (matchR!6176 (regex!7526 r!4097) p!2942)))))

(declare-fun ruleValid!3250 (LexerInterface!7119 Rule!14852) Bool)

(assert (=> b!4162175 (ruleValid!3250 thiss!25889 r!4097)))

(declare-fun lt!1483009 () Unit!64621)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2290 (LexerInterface!7119 Rule!14852 List!45655) Unit!64621)

(assert (=> b!4162175 (= lt!1483009 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2290 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4162176 () Bool)

(declare-fun tp!1270614 () Bool)

(assert (=> b!4162176 (= e!2583726 (and e!2583714 tp!1270614))))

(assert (= (and start!396598 res!1705039) b!4162166))

(assert (= (and b!4162166 res!1705034) b!4162168))

(assert (= (and b!4162168 res!1705036) b!4162159))

(assert (= (and b!4162159 res!1705035) b!4162169))

(assert (= (and b!4162169 res!1705037) b!4162164))

(assert (= (and b!4162164 res!1705033) b!4162167))

(assert (= (and b!4162167 res!1705040) b!4162175))

(assert (= (and b!4162175 (not res!1705038)) b!4162170))

(assert (= (and start!396598 ((_ is Cons!45529) pBis!100)) b!4162172))

(assert (= b!4162171 b!4162163))

(assert (= b!4162176 b!4162171))

(assert (= (and start!396598 ((_ is Cons!45531) rules!3820)) b!4162176))

(assert (= (and start!396598 ((_ is Cons!45529) p!2942)) b!4162161))

(assert (= (and start!396598 ((_ is Cons!45529) input!3316)) b!4162160))

(assert (= b!4162165 b!4162174))

(assert (= start!396598 b!4162165))

(assert (= b!4162162 b!4162173))

(assert (= start!396598 b!4162162))

(declare-fun m!4754817 () Bool)

(assert (=> b!4162167 m!4754817))

(declare-fun m!4754819 () Bool)

(assert (=> b!4162164 m!4754819))

(declare-fun m!4754821 () Bool)

(assert (=> b!4162159 m!4754821))

(declare-fun m!4754823 () Bool)

(assert (=> b!4162166 m!4754823))

(declare-fun m!4754825 () Bool)

(assert (=> b!4162170 m!4754825))

(declare-fun m!4754827 () Bool)

(assert (=> b!4162170 m!4754827))

(declare-fun m!4754829 () Bool)

(assert (=> b!4162170 m!4754829))

(assert (=> b!4162170 m!4754829))

(declare-fun m!4754831 () Bool)

(assert (=> b!4162170 m!4754831))

(declare-fun m!4754833 () Bool)

(assert (=> b!4162170 m!4754833))

(declare-fun m!4754835 () Bool)

(assert (=> b!4162170 m!4754835))

(declare-fun m!4754837 () Bool)

(assert (=> b!4162169 m!4754837))

(declare-fun m!4754839 () Bool)

(assert (=> b!4162162 m!4754839))

(declare-fun m!4754841 () Bool)

(assert (=> b!4162162 m!4754841))

(declare-fun m!4754843 () Bool)

(assert (=> b!4162175 m!4754843))

(declare-fun m!4754845 () Bool)

(assert (=> b!4162175 m!4754845))

(declare-fun m!4754847 () Bool)

(assert (=> b!4162175 m!4754847))

(declare-fun m!4754849 () Bool)

(assert (=> b!4162165 m!4754849))

(declare-fun m!4754851 () Bool)

(assert (=> b!4162165 m!4754851))

(declare-fun m!4754853 () Bool)

(assert (=> b!4162171 m!4754853))

(declare-fun m!4754855 () Bool)

(assert (=> b!4162171 m!4754855))

(declare-fun m!4754857 () Bool)

(assert (=> b!4162168 m!4754857))

(check-sat b_and!324329 (not b!4162176) (not b!4162166) (not b_next!120675) (not b!4162160) b_and!324337 (not b_next!120677) (not b_next!120681) (not b!4162170) (not b_next!120679) b_and!324331 b_and!324333 b_and!324339 (not b!4162171) (not b!4162161) (not b!4162172) tp_is_empty!21825 (not b!4162169) (not b!4162164) (not b!4162168) b_and!324335 (not b!4162167) (not b!4162165) (not b!4162162) (not b!4162175) (not b_next!120673) (not b_next!120671) (not b!4162159))
(check-sat b_and!324329 (not b_next!120675) b_and!324335 b_and!324337 (not b_next!120677) (not b_next!120673) (not b_next!120681) (not b_next!120679) b_and!324331 (not b_next!120671) b_and!324333 b_and!324339)
(get-model)

(declare-fun d!1230310 () Bool)

(assert (=> d!1230310 (= (inv!60044 (tag!8390 rBis!161)) (= (mod (str.len (value!235016 (tag!8390 rBis!161))) 2) 0))))

(assert (=> b!4162165 d!1230310))

(declare-fun d!1230312 () Bool)

(declare-fun res!1705051 () Bool)

(declare-fun e!2583729 () Bool)

(assert (=> d!1230312 (=> (not res!1705051) (not e!2583729))))

(declare-fun semiInverseModEq!3268 (Int Int) Bool)

(assert (=> d!1230312 (= res!1705051 (semiInverseModEq!3268 (toChars!10049 (transformation!7526 rBis!161)) (toValue!10190 (transformation!7526 rBis!161))))))

(assert (=> d!1230312 (= (inv!60046 (transformation!7526 rBis!161)) e!2583729)))

(declare-fun b!4162179 () Bool)

(declare-fun equivClasses!3167 (Int Int) Bool)

(assert (=> b!4162179 (= e!2583729 (equivClasses!3167 (toChars!10049 (transformation!7526 rBis!161)) (toValue!10190 (transformation!7526 rBis!161))))))

(assert (= (and d!1230312 res!1705051) b!4162179))

(declare-fun m!4754859 () Bool)

(assert (=> d!1230312 m!4754859))

(declare-fun m!4754861 () Bool)

(assert (=> b!4162179 m!4754861))

(assert (=> b!4162165 d!1230312))

(declare-fun d!1230316 () Bool)

(declare-fun lt!1483013 () Int)

(assert (=> d!1230316 (>= lt!1483013 0)))

(declare-fun e!2583732 () Int)

(assert (=> d!1230316 (= lt!1483013 e!2583732)))

(declare-fun c!711978 () Bool)

(assert (=> d!1230316 (= c!711978 ((_ is Nil!45529) p!2942))))

(assert (=> d!1230316 (= (size!33458 p!2942) lt!1483013)))

(declare-fun b!4162184 () Bool)

(assert (=> b!4162184 (= e!2583732 0)))

(declare-fun b!4162185 () Bool)

(assert (=> b!4162185 (= e!2583732 (+ 1 (size!33458 (t!343684 p!2942))))))

(assert (= (and d!1230316 c!711978) b!4162184))

(assert (= (and d!1230316 (not c!711978)) b!4162185))

(declare-fun m!4754863 () Bool)

(assert (=> b!4162185 m!4754863))

(assert (=> b!4162170 d!1230316))

(declare-fun d!1230320 () Bool)

(declare-fun lt!1483014 () Int)

(assert (=> d!1230320 (>= lt!1483014 0)))

(declare-fun e!2583733 () Int)

(assert (=> d!1230320 (= lt!1483014 e!2583733)))

(declare-fun c!711979 () Bool)

(assert (=> d!1230320 (= c!711979 ((_ is Nil!45529) input!3316))))

(assert (=> d!1230320 (= (size!33458 input!3316) lt!1483014)))

(declare-fun b!4162186 () Bool)

(assert (=> b!4162186 (= e!2583733 0)))

(declare-fun b!4162187 () Bool)

(assert (=> b!4162187 (= e!2583733 (+ 1 (size!33458 (t!343684 input!3316))))))

(assert (= (and d!1230320 c!711979) b!4162186))

(assert (= (and d!1230320 (not c!711979)) b!4162187))

(declare-fun m!4754865 () Bool)

(assert (=> b!4162187 m!4754865))

(assert (=> b!4162170 d!1230320))

(declare-fun d!1230322 () Bool)

(assert (=> d!1230322 (isPrefix!4383 input!3316 input!3316)))

(declare-fun lt!1483017 () Unit!64621)

(declare-fun choose!25487 (List!45653 List!45653) Unit!64621)

(assert (=> d!1230322 (= lt!1483017 (choose!25487 input!3316 input!3316))))

(assert (=> d!1230322 (= (lemmaIsPrefixRefl!2822 input!3316 input!3316) lt!1483017)))

(declare-fun bs!595672 () Bool)

(assert (= bs!595672 d!1230322))

(assert (=> bs!595672 m!4754827))

(declare-fun m!4754867 () Bool)

(assert (=> bs!595672 m!4754867))

(assert (=> b!4162170 d!1230322))

(declare-fun d!1230324 () Bool)

(declare-fun fromListB!2552 (List!45653) BalanceConc!27068)

(assert (=> d!1230324 (= (seqFromList!5559 p!2942) (fromListB!2552 p!2942))))

(declare-fun bs!595673 () Bool)

(assert (= bs!595673 d!1230324))

(declare-fun m!4754873 () Bool)

(assert (=> bs!595673 m!4754873))

(assert (=> b!4162170 d!1230324))

(declare-fun b!4162205 () Bool)

(declare-fun e!2583746 () Bool)

(assert (=> b!4162205 (= e!2583746 (>= (size!33458 input!3316) (size!33458 input!3316)))))

(declare-fun b!4162204 () Bool)

(declare-fun e!2583747 () Bool)

(declare-fun tail!6683 (List!45653) List!45653)

(assert (=> b!4162204 (= e!2583747 (isPrefix!4383 (tail!6683 input!3316) (tail!6683 input!3316)))))

(declare-fun b!4162203 () Bool)

(declare-fun res!1705066 () Bool)

(assert (=> b!4162203 (=> (not res!1705066) (not e!2583747))))

(declare-fun head!8836 (List!45653) C!25052)

(assert (=> b!4162203 (= res!1705066 (= (head!8836 input!3316) (head!8836 input!3316)))))

(declare-fun b!4162202 () Bool)

(declare-fun e!2583748 () Bool)

(assert (=> b!4162202 (= e!2583748 e!2583747)))

(declare-fun res!1705069 () Bool)

(assert (=> b!4162202 (=> (not res!1705069) (not e!2583747))))

(assert (=> b!4162202 (= res!1705069 (not ((_ is Nil!45529) input!3316)))))

(declare-fun d!1230328 () Bool)

(assert (=> d!1230328 e!2583746))

(declare-fun res!1705068 () Bool)

(assert (=> d!1230328 (=> res!1705068 e!2583746)))

(declare-fun lt!1483020 () Bool)

(assert (=> d!1230328 (= res!1705068 (not lt!1483020))))

(assert (=> d!1230328 (= lt!1483020 e!2583748)))

(declare-fun res!1705067 () Bool)

(assert (=> d!1230328 (=> res!1705067 e!2583748)))

(assert (=> d!1230328 (= res!1705067 ((_ is Nil!45529) input!3316))))

(assert (=> d!1230328 (= (isPrefix!4383 input!3316 input!3316) lt!1483020)))

(assert (= (and d!1230328 (not res!1705067)) b!4162202))

(assert (= (and b!4162202 res!1705069) b!4162203))

(assert (= (and b!4162203 res!1705066) b!4162204))

(assert (= (and d!1230328 (not res!1705068)) b!4162205))

(assert (=> b!4162205 m!4754825))

(assert (=> b!4162205 m!4754825))

(declare-fun m!4754879 () Bool)

(assert (=> b!4162204 m!4754879))

(assert (=> b!4162204 m!4754879))

(assert (=> b!4162204 m!4754879))

(assert (=> b!4162204 m!4754879))

(declare-fun m!4754881 () Bool)

(assert (=> b!4162204 m!4754881))

(declare-fun m!4754883 () Bool)

(assert (=> b!4162203 m!4754883))

(assert (=> b!4162203 m!4754883))

(assert (=> b!4162170 d!1230328))

(declare-fun b!4162314 () Bool)

(declare-fun e!2583815 () Bool)

(assert (=> b!4162314 (= e!2583815 true)))

(declare-fun d!1230332 () Bool)

(assert (=> d!1230332 e!2583815))

(assert (= d!1230332 b!4162314))

(declare-fun order!23969 () Int)

(declare-fun lambda!129051 () Int)

(declare-fun order!23971 () Int)

(declare-fun dynLambda!19478 (Int Int) Int)

(declare-fun dynLambda!19479 (Int Int) Int)

(assert (=> b!4162314 (< (dynLambda!19478 order!23969 (toValue!10190 (transformation!7526 r!4097))) (dynLambda!19479 order!23971 lambda!129051))))

(declare-fun order!23973 () Int)

(declare-fun dynLambda!19480 (Int Int) Int)

(assert (=> b!4162314 (< (dynLambda!19480 order!23973 (toChars!10049 (transformation!7526 r!4097))) (dynLambda!19479 order!23971 lambda!129051))))

(declare-fun list!16500 (BalanceConc!27068) List!45653)

(declare-fun dynLambda!19481 (Int TokenValue!7756) BalanceConc!27068)

(declare-fun dynLambda!19482 (Int BalanceConc!27068) TokenValue!7756)

(assert (=> d!1230332 (= (list!16500 (dynLambda!19481 (toChars!10049 (transformation!7526 r!4097)) (dynLambda!19482 (toValue!10190 (transformation!7526 r!4097)) (seqFromList!5559 p!2942)))) (list!16500 (seqFromList!5559 p!2942)))))

(declare-fun lt!1483048 () Unit!64621)

(declare-fun ForallOf!1003 (Int BalanceConc!27068) Unit!64621)

(assert (=> d!1230332 (= lt!1483048 (ForallOf!1003 lambda!129051 (seqFromList!5559 p!2942)))))

(assert (=> d!1230332 (= (lemmaSemiInverse!2300 (transformation!7526 r!4097) (seqFromList!5559 p!2942)) lt!1483048)))

(declare-fun b_lambda!122163 () Bool)

(assert (=> (not b_lambda!122163) (not d!1230332)))

(declare-fun t!343700 () Bool)

(declare-fun tb!249263 () Bool)

(assert (=> (and b!4162163 (= (toChars!10049 (transformation!7526 (h!50951 rules!3820))) (toChars!10049 (transformation!7526 r!4097))) t!343700) tb!249263))

(declare-fun b!4162331 () Bool)

(declare-fun tp!1270649 () Bool)

(declare-fun e!2583821 () Bool)

(declare-fun inv!60047 (Conc!13737) Bool)

(assert (=> b!4162331 (= e!2583821 (and (inv!60047 (c!711974 (dynLambda!19481 (toChars!10049 (transformation!7526 r!4097)) (dynLambda!19482 (toValue!10190 (transformation!7526 r!4097)) (seqFromList!5559 p!2942))))) tp!1270649))))

(declare-fun result!303574 () Bool)

(declare-fun inv!60048 (BalanceConc!27068) Bool)

(assert (=> tb!249263 (= result!303574 (and (inv!60048 (dynLambda!19481 (toChars!10049 (transformation!7526 r!4097)) (dynLambda!19482 (toValue!10190 (transformation!7526 r!4097)) (seqFromList!5559 p!2942)))) e!2583821))))

(assert (= tb!249263 b!4162331))

(declare-fun m!4754961 () Bool)

(assert (=> b!4162331 m!4754961))

(declare-fun m!4754963 () Bool)

(assert (=> tb!249263 m!4754963))

(assert (=> d!1230332 t!343700))

(declare-fun b_and!324353 () Bool)

(assert (= b_and!324331 (and (=> t!343700 result!303574) b_and!324353)))

(declare-fun t!343702 () Bool)

(declare-fun tb!249265 () Bool)

(assert (=> (and b!4162173 (= (toChars!10049 (transformation!7526 r!4097)) (toChars!10049 (transformation!7526 r!4097))) t!343702) tb!249265))

(declare-fun result!303580 () Bool)

(assert (= result!303580 result!303574))

(assert (=> d!1230332 t!343702))

(declare-fun b_and!324355 () Bool)

(assert (= b_and!324335 (and (=> t!343702 result!303580) b_and!324355)))

(declare-fun tb!249267 () Bool)

(declare-fun t!343704 () Bool)

(assert (=> (and b!4162174 (= (toChars!10049 (transformation!7526 rBis!161)) (toChars!10049 (transformation!7526 r!4097))) t!343704) tb!249267))

(declare-fun result!303582 () Bool)

(assert (= result!303582 result!303574))

(assert (=> d!1230332 t!343704))

(declare-fun b_and!324357 () Bool)

(assert (= b_and!324339 (and (=> t!343704 result!303582) b_and!324357)))

(declare-fun b_lambda!122165 () Bool)

(assert (=> (not b_lambda!122165) (not d!1230332)))

(declare-fun tb!249269 () Bool)

(declare-fun t!343706 () Bool)

(assert (=> (and b!4162163 (= (toValue!10190 (transformation!7526 (h!50951 rules!3820))) (toValue!10190 (transformation!7526 r!4097))) t!343706) tb!249269))

(declare-fun result!303584 () Bool)

(declare-fun inv!21 (TokenValue!7756) Bool)

(assert (=> tb!249269 (= result!303584 (inv!21 (dynLambda!19482 (toValue!10190 (transformation!7526 r!4097)) (seqFromList!5559 p!2942))))))

(declare-fun m!4754965 () Bool)

(assert (=> tb!249269 m!4754965))

(assert (=> d!1230332 t!343706))

(declare-fun b_and!324359 () Bool)

(assert (= b_and!324329 (and (=> t!343706 result!303584) b_and!324359)))

(declare-fun t!343708 () Bool)

(declare-fun tb!249271 () Bool)

(assert (=> (and b!4162173 (= (toValue!10190 (transformation!7526 r!4097)) (toValue!10190 (transformation!7526 r!4097))) t!343708) tb!249271))

(declare-fun result!303590 () Bool)

(assert (= result!303590 result!303584))

(assert (=> d!1230332 t!343708))

(declare-fun b_and!324361 () Bool)

(assert (= b_and!324333 (and (=> t!343708 result!303590) b_and!324361)))

(declare-fun tb!249273 () Bool)

(declare-fun t!343710 () Bool)

(assert (=> (and b!4162174 (= (toValue!10190 (transformation!7526 rBis!161)) (toValue!10190 (transformation!7526 r!4097))) t!343710) tb!249273))

(declare-fun result!303592 () Bool)

(assert (= result!303592 result!303584))

(assert (=> d!1230332 t!343710))

(declare-fun b_and!324363 () Bool)

(assert (= b_and!324337 (and (=> t!343710 result!303592) b_and!324363)))

(declare-fun m!4754967 () Bool)

(assert (=> d!1230332 m!4754967))

(declare-fun m!4754969 () Bool)

(assert (=> d!1230332 m!4754969))

(assert (=> d!1230332 m!4754829))

(declare-fun m!4754971 () Bool)

(assert (=> d!1230332 m!4754971))

(assert (=> d!1230332 m!4754829))

(assert (=> d!1230332 m!4754967))

(assert (=> d!1230332 m!4754969))

(declare-fun m!4754973 () Bool)

(assert (=> d!1230332 m!4754973))

(assert (=> d!1230332 m!4754829))

(declare-fun m!4754975 () Bool)

(assert (=> d!1230332 m!4754975))

(assert (=> b!4162170 d!1230332))

(declare-fun d!1230368 () Bool)

(assert (=> d!1230368 (= (isEmpty!26957 rules!3820) ((_ is Nil!45531) rules!3820))))

(assert (=> b!4162159 d!1230368))

(declare-fun b!4162384 () Bool)

(declare-fun e!2583857 () Bool)

(declare-fun derivativeStep!3751 (Regex!12431 C!25052) Regex!12431)

(assert (=> b!4162384 (= e!2583857 (matchR!6176 (derivativeStep!3751 (regex!7526 r!4097) (head!8836 p!2942)) (tail!6683 p!2942)))))

(declare-fun b!4162385 () Bool)

(declare-fun e!2583858 () Bool)

(assert (=> b!4162385 (= e!2583858 (= (head!8836 p!2942) (c!711975 (regex!7526 r!4097))))))

(declare-fun b!4162386 () Bool)

(declare-fun res!1705152 () Bool)

(declare-fun e!2583862 () Bool)

(assert (=> b!4162386 (=> res!1705152 e!2583862)))

(declare-fun isEmpty!26959 (List!45653) Bool)

(assert (=> b!4162386 (= res!1705152 (not (isEmpty!26959 (tail!6683 p!2942))))))

(declare-fun b!4162387 () Bool)

(declare-fun e!2583861 () Bool)

(assert (=> b!4162387 (= e!2583861 e!2583862)))

(declare-fun res!1705148 () Bool)

(assert (=> b!4162387 (=> res!1705148 e!2583862)))

(declare-fun call!290850 () Bool)

(assert (=> b!4162387 (= res!1705148 call!290850)))

(declare-fun b!4162388 () Bool)

(declare-fun res!1705149 () Bool)

(declare-fun e!2583856 () Bool)

(assert (=> b!4162388 (=> res!1705149 e!2583856)))

(assert (=> b!4162388 (= res!1705149 (not ((_ is ElementMatch!12431) (regex!7526 r!4097))))))

(declare-fun e!2583860 () Bool)

(assert (=> b!4162388 (= e!2583860 e!2583856)))

(declare-fun b!4162389 () Bool)

(declare-fun nullable!4359 (Regex!12431) Bool)

(assert (=> b!4162389 (= e!2583857 (nullable!4359 (regex!7526 r!4097)))))

(declare-fun b!4162390 () Bool)

(declare-fun res!1705150 () Bool)

(assert (=> b!4162390 (=> (not res!1705150) (not e!2583858))))

(assert (=> b!4162390 (= res!1705150 (isEmpty!26959 (tail!6683 p!2942)))))

(declare-fun b!4162391 () Bool)

(declare-fun e!2583859 () Bool)

(assert (=> b!4162391 (= e!2583859 e!2583860)))

(declare-fun c!712001 () Bool)

(assert (=> b!4162391 (= c!712001 ((_ is EmptyLang!12431) (regex!7526 r!4097)))))

(declare-fun bm!290845 () Bool)

(assert (=> bm!290845 (= call!290850 (isEmpty!26959 p!2942))))

(declare-fun b!4162392 () Bool)

(declare-fun res!1705147 () Bool)

(assert (=> b!4162392 (=> (not res!1705147) (not e!2583858))))

(assert (=> b!4162392 (= res!1705147 (not call!290850))))

(declare-fun b!4162393 () Bool)

(assert (=> b!4162393 (= e!2583862 (not (= (head!8836 p!2942) (c!711975 (regex!7526 r!4097)))))))

(declare-fun b!4162394 () Bool)

(assert (=> b!4162394 (= e!2583856 e!2583861)))

(declare-fun res!1705151 () Bool)

(assert (=> b!4162394 (=> (not res!1705151) (not e!2583861))))

(declare-fun lt!1483051 () Bool)

(assert (=> b!4162394 (= res!1705151 (not lt!1483051))))

(declare-fun d!1230370 () Bool)

(assert (=> d!1230370 e!2583859))

(declare-fun c!712003 () Bool)

(assert (=> d!1230370 (= c!712003 ((_ is EmptyExpr!12431) (regex!7526 r!4097)))))

(assert (=> d!1230370 (= lt!1483051 e!2583857)))

(declare-fun c!712002 () Bool)

(assert (=> d!1230370 (= c!712002 (isEmpty!26959 p!2942))))

(declare-fun validRegex!5569 (Regex!12431) Bool)

(assert (=> d!1230370 (validRegex!5569 (regex!7526 r!4097))))

(assert (=> d!1230370 (= (matchR!6176 (regex!7526 r!4097) p!2942) lt!1483051)))

(declare-fun b!4162395 () Bool)

(declare-fun res!1705146 () Bool)

(assert (=> b!4162395 (=> res!1705146 e!2583856)))

(assert (=> b!4162395 (= res!1705146 e!2583858)))

(declare-fun res!1705153 () Bool)

(assert (=> b!4162395 (=> (not res!1705153) (not e!2583858))))

(assert (=> b!4162395 (= res!1705153 lt!1483051)))

(declare-fun b!4162396 () Bool)

(assert (=> b!4162396 (= e!2583860 (not lt!1483051))))

(declare-fun b!4162397 () Bool)

(assert (=> b!4162397 (= e!2583859 (= lt!1483051 call!290850))))

(assert (= (and d!1230370 c!712002) b!4162389))

(assert (= (and d!1230370 (not c!712002)) b!4162384))

(assert (= (and d!1230370 c!712003) b!4162397))

(assert (= (and d!1230370 (not c!712003)) b!4162391))

(assert (= (and b!4162391 c!712001) b!4162396))

(assert (= (and b!4162391 (not c!712001)) b!4162388))

(assert (= (and b!4162388 (not res!1705149)) b!4162395))

(assert (= (and b!4162395 res!1705153) b!4162392))

(assert (= (and b!4162392 res!1705147) b!4162390))

(assert (= (and b!4162390 res!1705150) b!4162385))

(assert (= (and b!4162395 (not res!1705146)) b!4162394))

(assert (= (and b!4162394 res!1705151) b!4162387))

(assert (= (and b!4162387 (not res!1705148)) b!4162386))

(assert (= (and b!4162386 (not res!1705152)) b!4162393))

(assert (= (or b!4162397 b!4162387 b!4162392) bm!290845))

(declare-fun m!4754981 () Bool)

(assert (=> b!4162389 m!4754981))

(declare-fun m!4754983 () Bool)

(assert (=> d!1230370 m!4754983))

(declare-fun m!4754985 () Bool)

(assert (=> d!1230370 m!4754985))

(declare-fun m!4754987 () Bool)

(assert (=> b!4162390 m!4754987))

(assert (=> b!4162390 m!4754987))

(declare-fun m!4754989 () Bool)

(assert (=> b!4162390 m!4754989))

(declare-fun m!4754991 () Bool)

(assert (=> b!4162385 m!4754991))

(assert (=> bm!290845 m!4754983))

(assert (=> b!4162384 m!4754991))

(assert (=> b!4162384 m!4754991))

(declare-fun m!4754993 () Bool)

(assert (=> b!4162384 m!4754993))

(assert (=> b!4162384 m!4754987))

(assert (=> b!4162384 m!4754993))

(assert (=> b!4162384 m!4754987))

(declare-fun m!4754995 () Bool)

(assert (=> b!4162384 m!4754995))

(assert (=> b!4162386 m!4754987))

(assert (=> b!4162386 m!4754987))

(assert (=> b!4162386 m!4754989))

(assert (=> b!4162393 m!4754991))

(assert (=> b!4162175 d!1230370))

(declare-fun d!1230372 () Bool)

(declare-fun res!1705158 () Bool)

(declare-fun e!2583865 () Bool)

(assert (=> d!1230372 (=> (not res!1705158) (not e!2583865))))

(assert (=> d!1230372 (= res!1705158 (validRegex!5569 (regex!7526 r!4097)))))

(assert (=> d!1230372 (= (ruleValid!3250 thiss!25889 r!4097) e!2583865)))

(declare-fun b!4162402 () Bool)

(declare-fun res!1705159 () Bool)

(assert (=> b!4162402 (=> (not res!1705159) (not e!2583865))))

(assert (=> b!4162402 (= res!1705159 (not (nullable!4359 (regex!7526 r!4097))))))

(declare-fun b!4162403 () Bool)

(assert (=> b!4162403 (= e!2583865 (not (= (tag!8390 r!4097) (String!52646 ""))))))

(assert (= (and d!1230372 res!1705158) b!4162402))

(assert (= (and b!4162402 res!1705159) b!4162403))

(assert (=> d!1230372 m!4754985))

(assert (=> b!4162402 m!4754981))

(assert (=> b!4162175 d!1230372))

(declare-fun d!1230374 () Bool)

(assert (=> d!1230374 (ruleValid!3250 thiss!25889 r!4097)))

(declare-fun lt!1483054 () Unit!64621)

(declare-fun choose!25489 (LexerInterface!7119 Rule!14852 List!45655) Unit!64621)

(assert (=> d!1230374 (= lt!1483054 (choose!25489 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1230374 (contains!9319 rules!3820 r!4097)))

(assert (=> d!1230374 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2290 thiss!25889 r!4097 rules!3820) lt!1483054)))

(declare-fun bs!595677 () Bool)

(assert (= bs!595677 d!1230374))

(assert (=> bs!595677 m!4754845))

(declare-fun m!4754997 () Bool)

(assert (=> bs!595677 m!4754997))

(assert (=> bs!595677 m!4754819))

(assert (=> b!4162175 d!1230374))

(declare-fun d!1230376 () Bool)

(declare-fun lt!1483057 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7080 (List!45655) (InoxSet Rule!14852))

(assert (=> d!1230376 (= lt!1483057 (select (content!7080 rules!3820) r!4097))))

(declare-fun e!2583870 () Bool)

(assert (=> d!1230376 (= lt!1483057 e!2583870)))

(declare-fun res!1705165 () Bool)

(assert (=> d!1230376 (=> (not res!1705165) (not e!2583870))))

(assert (=> d!1230376 (= res!1705165 ((_ is Cons!45531) rules!3820))))

(assert (=> d!1230376 (= (contains!9319 rules!3820 r!4097) lt!1483057)))

(declare-fun b!4162408 () Bool)

(declare-fun e!2583871 () Bool)

(assert (=> b!4162408 (= e!2583870 e!2583871)))

(declare-fun res!1705164 () Bool)

(assert (=> b!4162408 (=> res!1705164 e!2583871)))

(assert (=> b!4162408 (= res!1705164 (= (h!50951 rules!3820) r!4097))))

(declare-fun b!4162409 () Bool)

(assert (=> b!4162409 (= e!2583871 (contains!9319 (t!343686 rules!3820) r!4097))))

(assert (= (and d!1230376 res!1705165) b!4162408))

(assert (= (and b!4162408 (not res!1705164)) b!4162409))

(declare-fun m!4754999 () Bool)

(assert (=> d!1230376 m!4754999))

(declare-fun m!4755001 () Bool)

(assert (=> d!1230376 m!4755001))

(declare-fun m!4755003 () Bool)

(assert (=> b!4162409 m!4755003))

(assert (=> b!4162164 d!1230376))

(declare-fun d!1230378 () Bool)

(declare-fun res!1705168 () Bool)

(declare-fun e!2583874 () Bool)

(assert (=> d!1230378 (=> (not res!1705168) (not e!2583874))))

(declare-fun rulesValid!2936 (LexerInterface!7119 List!45655) Bool)

(assert (=> d!1230378 (= res!1705168 (rulesValid!2936 thiss!25889 rules!3820))))

(assert (=> d!1230378 (= (rulesInvariant!6332 thiss!25889 rules!3820) e!2583874)))

(declare-fun b!4162412 () Bool)

(declare-datatypes ((List!45657 0))(
  ( (Nil!45533) (Cons!45533 (h!50953 String!52645) (t!343720 List!45657)) )
))
(declare-fun noDuplicateTag!3097 (LexerInterface!7119 List!45655 List!45657) Bool)

(assert (=> b!4162412 (= e!2583874 (noDuplicateTag!3097 thiss!25889 rules!3820 Nil!45533))))

(assert (= (and d!1230378 res!1705168) b!4162412))

(declare-fun m!4755005 () Bool)

(assert (=> d!1230378 m!4755005))

(declare-fun m!4755007 () Bool)

(assert (=> b!4162412 m!4755007))

(assert (=> b!4162169 d!1230378))

(declare-fun b!4162416 () Bool)

(declare-fun e!2583875 () Bool)

(assert (=> b!4162416 (= e!2583875 (>= (size!33458 input!3316) (size!33458 pBis!100)))))

(declare-fun b!4162415 () Bool)

(declare-fun e!2583876 () Bool)

(assert (=> b!4162415 (= e!2583876 (isPrefix!4383 (tail!6683 pBis!100) (tail!6683 input!3316)))))

(declare-fun b!4162414 () Bool)

(declare-fun res!1705169 () Bool)

(assert (=> b!4162414 (=> (not res!1705169) (not e!2583876))))

(assert (=> b!4162414 (= res!1705169 (= (head!8836 pBis!100) (head!8836 input!3316)))))

(declare-fun b!4162413 () Bool)

(declare-fun e!2583877 () Bool)

(assert (=> b!4162413 (= e!2583877 e!2583876)))

(declare-fun res!1705172 () Bool)

(assert (=> b!4162413 (=> (not res!1705172) (not e!2583876))))

(assert (=> b!4162413 (= res!1705172 (not ((_ is Nil!45529) input!3316)))))

(declare-fun d!1230380 () Bool)

(assert (=> d!1230380 e!2583875))

(declare-fun res!1705171 () Bool)

(assert (=> d!1230380 (=> res!1705171 e!2583875)))

(declare-fun lt!1483058 () Bool)

(assert (=> d!1230380 (= res!1705171 (not lt!1483058))))

(assert (=> d!1230380 (= lt!1483058 e!2583877)))

(declare-fun res!1705170 () Bool)

(assert (=> d!1230380 (=> res!1705170 e!2583877)))

(assert (=> d!1230380 (= res!1705170 ((_ is Nil!45529) pBis!100))))

(assert (=> d!1230380 (= (isPrefix!4383 pBis!100 input!3316) lt!1483058)))

(assert (= (and d!1230380 (not res!1705170)) b!4162413))

(assert (= (and b!4162413 res!1705172) b!4162414))

(assert (= (and b!4162414 res!1705169) b!4162415))

(assert (= (and d!1230380 (not res!1705171)) b!4162416))

(assert (=> b!4162416 m!4754825))

(declare-fun m!4755009 () Bool)

(assert (=> b!4162416 m!4755009))

(declare-fun m!4755011 () Bool)

(assert (=> b!4162415 m!4755011))

(assert (=> b!4162415 m!4754879))

(assert (=> b!4162415 m!4755011))

(assert (=> b!4162415 m!4754879))

(declare-fun m!4755013 () Bool)

(assert (=> b!4162415 m!4755013))

(declare-fun m!4755015 () Bool)

(assert (=> b!4162414 m!4755015))

(assert (=> b!4162414 m!4754883))

(assert (=> b!4162168 d!1230380))

(declare-fun d!1230382 () Bool)

(assert (=> d!1230382 (= (inv!60044 (tag!8390 r!4097)) (= (mod (str.len (value!235016 (tag!8390 r!4097))) 2) 0))))

(assert (=> b!4162162 d!1230382))

(declare-fun d!1230384 () Bool)

(declare-fun res!1705173 () Bool)

(declare-fun e!2583878 () Bool)

(assert (=> d!1230384 (=> (not res!1705173) (not e!2583878))))

(assert (=> d!1230384 (= res!1705173 (semiInverseModEq!3268 (toChars!10049 (transformation!7526 r!4097)) (toValue!10190 (transformation!7526 r!4097))))))

(assert (=> d!1230384 (= (inv!60046 (transformation!7526 r!4097)) e!2583878)))

(declare-fun b!4162417 () Bool)

(assert (=> b!4162417 (= e!2583878 (equivClasses!3167 (toChars!10049 (transformation!7526 r!4097)) (toValue!10190 (transformation!7526 r!4097))))))

(assert (= (and d!1230384 res!1705173) b!4162417))

(declare-fun m!4755017 () Bool)

(assert (=> d!1230384 m!4755017))

(declare-fun m!4755019 () Bool)

(assert (=> b!4162417 m!4755019))

(assert (=> b!4162162 d!1230384))

(declare-fun d!1230386 () Bool)

(declare-fun lt!1483059 () Bool)

(assert (=> d!1230386 (= lt!1483059 (select (content!7080 rules!3820) rBis!161))))

(declare-fun e!2583879 () Bool)

(assert (=> d!1230386 (= lt!1483059 e!2583879)))

(declare-fun res!1705175 () Bool)

(assert (=> d!1230386 (=> (not res!1705175) (not e!2583879))))

(assert (=> d!1230386 (= res!1705175 ((_ is Cons!45531) rules!3820))))

(assert (=> d!1230386 (= (contains!9319 rules!3820 rBis!161) lt!1483059)))

(declare-fun b!4162418 () Bool)

(declare-fun e!2583880 () Bool)

(assert (=> b!4162418 (= e!2583879 e!2583880)))

(declare-fun res!1705174 () Bool)

(assert (=> b!4162418 (=> res!1705174 e!2583880)))

(assert (=> b!4162418 (= res!1705174 (= (h!50951 rules!3820) rBis!161))))

(declare-fun b!4162419 () Bool)

(assert (=> b!4162419 (= e!2583880 (contains!9319 (t!343686 rules!3820) rBis!161))))

(assert (= (and d!1230386 res!1705175) b!4162418))

(assert (= (and b!4162418 (not res!1705174)) b!4162419))

(assert (=> d!1230386 m!4754999))

(declare-fun m!4755021 () Bool)

(assert (=> d!1230386 m!4755021))

(declare-fun m!4755023 () Bool)

(assert (=> b!4162419 m!4755023))

(assert (=> b!4162167 d!1230386))

(declare-fun b!4162423 () Bool)

(declare-fun e!2583881 () Bool)

(assert (=> b!4162423 (= e!2583881 (>= (size!33458 input!3316) (size!33458 p!2942)))))

(declare-fun b!4162422 () Bool)

(declare-fun e!2583882 () Bool)

(assert (=> b!4162422 (= e!2583882 (isPrefix!4383 (tail!6683 p!2942) (tail!6683 input!3316)))))

(declare-fun b!4162421 () Bool)

(declare-fun res!1705176 () Bool)

(assert (=> b!4162421 (=> (not res!1705176) (not e!2583882))))

(assert (=> b!4162421 (= res!1705176 (= (head!8836 p!2942) (head!8836 input!3316)))))

(declare-fun b!4162420 () Bool)

(declare-fun e!2583883 () Bool)

(assert (=> b!4162420 (= e!2583883 e!2583882)))

(declare-fun res!1705179 () Bool)

(assert (=> b!4162420 (=> (not res!1705179) (not e!2583882))))

(assert (=> b!4162420 (= res!1705179 (not ((_ is Nil!45529) input!3316)))))

(declare-fun d!1230388 () Bool)

(assert (=> d!1230388 e!2583881))

(declare-fun res!1705178 () Bool)

(assert (=> d!1230388 (=> res!1705178 e!2583881)))

(declare-fun lt!1483060 () Bool)

(assert (=> d!1230388 (= res!1705178 (not lt!1483060))))

(assert (=> d!1230388 (= lt!1483060 e!2583883)))

(declare-fun res!1705177 () Bool)

(assert (=> d!1230388 (=> res!1705177 e!2583883)))

(assert (=> d!1230388 (= res!1705177 ((_ is Nil!45529) p!2942))))

(assert (=> d!1230388 (= (isPrefix!4383 p!2942 input!3316) lt!1483060)))

(assert (= (and d!1230388 (not res!1705177)) b!4162420))

(assert (= (and b!4162420 res!1705179) b!4162421))

(assert (= (and b!4162421 res!1705176) b!4162422))

(assert (= (and d!1230388 (not res!1705178)) b!4162423))

(assert (=> b!4162423 m!4754825))

(assert (=> b!4162423 m!4754835))

(assert (=> b!4162422 m!4754987))

(assert (=> b!4162422 m!4754879))

(assert (=> b!4162422 m!4754987))

(assert (=> b!4162422 m!4754879))

(declare-fun m!4755025 () Bool)

(assert (=> b!4162422 m!4755025))

(assert (=> b!4162421 m!4754991))

(assert (=> b!4162421 m!4754883))

(assert (=> b!4162166 d!1230388))

(declare-fun d!1230390 () Bool)

(assert (=> d!1230390 (= (inv!60044 (tag!8390 (h!50951 rules!3820))) (= (mod (str.len (value!235016 (tag!8390 (h!50951 rules!3820)))) 2) 0))))

(assert (=> b!4162171 d!1230390))

(declare-fun d!1230392 () Bool)

(declare-fun res!1705180 () Bool)

(declare-fun e!2583884 () Bool)

(assert (=> d!1230392 (=> (not res!1705180) (not e!2583884))))

(assert (=> d!1230392 (= res!1705180 (semiInverseModEq!3268 (toChars!10049 (transformation!7526 (h!50951 rules!3820))) (toValue!10190 (transformation!7526 (h!50951 rules!3820)))))))

(assert (=> d!1230392 (= (inv!60046 (transformation!7526 (h!50951 rules!3820))) e!2583884)))

(declare-fun b!4162424 () Bool)

(assert (=> b!4162424 (= e!2583884 (equivClasses!3167 (toChars!10049 (transformation!7526 (h!50951 rules!3820))) (toValue!10190 (transformation!7526 (h!50951 rules!3820)))))))

(assert (= (and d!1230392 res!1705180) b!4162424))

(declare-fun m!4755027 () Bool)

(assert (=> d!1230392 m!4755027))

(declare-fun m!4755029 () Bool)

(assert (=> b!4162424 m!4755029))

(assert (=> b!4162171 d!1230392))

(declare-fun b!4162429 () Bool)

(declare-fun e!2583887 () Bool)

(declare-fun tp!1270677 () Bool)

(assert (=> b!4162429 (= e!2583887 (and tp_is_empty!21825 tp!1270677))))

(assert (=> b!4162160 (= tp!1270617 e!2583887)))

(assert (= (and b!4162160 ((_ is Cons!45529) (t!343684 input!3316))) b!4162429))

(declare-fun b!4162440 () Bool)

(declare-fun b_free!119983 () Bool)

(declare-fun b_next!120687 () Bool)

(assert (=> b!4162440 (= b_free!119983 (not b_next!120687))))

(declare-fun tb!249279 () Bool)

(declare-fun t!343717 () Bool)

(assert (=> (and b!4162440 (= (toValue!10190 (transformation!7526 (h!50951 (t!343686 rules!3820)))) (toValue!10190 (transformation!7526 r!4097))) t!343717) tb!249279))

(declare-fun result!303602 () Bool)

(assert (= result!303602 result!303584))

(assert (=> d!1230332 t!343717))

(declare-fun b_and!324369 () Bool)

(declare-fun tp!1270689 () Bool)

(assert (=> b!4162440 (= tp!1270689 (and (=> t!343717 result!303602) b_and!324369))))

(declare-fun b_free!119985 () Bool)

(declare-fun b_next!120689 () Bool)

(assert (=> b!4162440 (= b_free!119985 (not b_next!120689))))

(declare-fun tb!249281 () Bool)

(declare-fun t!343719 () Bool)

(assert (=> (and b!4162440 (= (toChars!10049 (transformation!7526 (h!50951 (t!343686 rules!3820)))) (toChars!10049 (transformation!7526 r!4097))) t!343719) tb!249281))

(declare-fun result!303604 () Bool)

(assert (= result!303604 result!303574))

(assert (=> d!1230332 t!343719))

(declare-fun tp!1270688 () Bool)

(declare-fun b_and!324371 () Bool)

(assert (=> b!4162440 (= tp!1270688 (and (=> t!343719 result!303604) b_and!324371))))

(declare-fun e!2583898 () Bool)

(assert (=> b!4162440 (= e!2583898 (and tp!1270689 tp!1270688))))

(declare-fun e!2583896 () Bool)

(declare-fun b!4162439 () Bool)

(declare-fun tp!1270687 () Bool)

(assert (=> b!4162439 (= e!2583896 (and tp!1270687 (inv!60044 (tag!8390 (h!50951 (t!343686 rules!3820)))) (inv!60046 (transformation!7526 (h!50951 (t!343686 rules!3820)))) e!2583898))))

(declare-fun b!4162438 () Bool)

(declare-fun e!2583899 () Bool)

(declare-fun tp!1270686 () Bool)

(assert (=> b!4162438 (= e!2583899 (and e!2583896 tp!1270686))))

(assert (=> b!4162176 (= tp!1270614 e!2583899)))

(assert (= b!4162439 b!4162440))

(assert (= b!4162438 b!4162439))

(assert (= (and b!4162176 ((_ is Cons!45531) (t!343686 rules!3820))) b!4162438))

(declare-fun m!4755031 () Bool)

(assert (=> b!4162439 m!4755031))

(declare-fun m!4755033 () Bool)

(assert (=> b!4162439 m!4755033))

(declare-fun b!4162454 () Bool)

(declare-fun e!2583902 () Bool)

(declare-fun tp!1270702 () Bool)

(declare-fun tp!1270700 () Bool)

(assert (=> b!4162454 (= e!2583902 (and tp!1270702 tp!1270700))))

(declare-fun b!4162451 () Bool)

(assert (=> b!4162451 (= e!2583902 tp_is_empty!21825)))

(declare-fun b!4162453 () Bool)

(declare-fun tp!1270701 () Bool)

(assert (=> b!4162453 (= e!2583902 tp!1270701)))

(declare-fun b!4162452 () Bool)

(declare-fun tp!1270703 () Bool)

(declare-fun tp!1270704 () Bool)

(assert (=> b!4162452 (= e!2583902 (and tp!1270703 tp!1270704))))

(assert (=> b!4162165 (= tp!1270622 e!2583902)))

(assert (= (and b!4162165 ((_ is ElementMatch!12431) (regex!7526 rBis!161))) b!4162451))

(assert (= (and b!4162165 ((_ is Concat!20188) (regex!7526 rBis!161))) b!4162452))

(assert (= (and b!4162165 ((_ is Star!12431) (regex!7526 rBis!161))) b!4162453))

(assert (= (and b!4162165 ((_ is Union!12431) (regex!7526 rBis!161))) b!4162454))

(declare-fun b!4162458 () Bool)

(declare-fun e!2583903 () Bool)

(declare-fun tp!1270707 () Bool)

(declare-fun tp!1270705 () Bool)

(assert (=> b!4162458 (= e!2583903 (and tp!1270707 tp!1270705))))

(declare-fun b!4162455 () Bool)

(assert (=> b!4162455 (= e!2583903 tp_is_empty!21825)))

(declare-fun b!4162457 () Bool)

(declare-fun tp!1270706 () Bool)

(assert (=> b!4162457 (= e!2583903 tp!1270706)))

(declare-fun b!4162456 () Bool)

(declare-fun tp!1270708 () Bool)

(declare-fun tp!1270709 () Bool)

(assert (=> b!4162456 (= e!2583903 (and tp!1270708 tp!1270709))))

(assert (=> b!4162162 (= tp!1270624 e!2583903)))

(assert (= (and b!4162162 ((_ is ElementMatch!12431) (regex!7526 r!4097))) b!4162455))

(assert (= (and b!4162162 ((_ is Concat!20188) (regex!7526 r!4097))) b!4162456))

(assert (= (and b!4162162 ((_ is Star!12431) (regex!7526 r!4097))) b!4162457))

(assert (= (and b!4162162 ((_ is Union!12431) (regex!7526 r!4097))) b!4162458))

(declare-fun b!4162459 () Bool)

(declare-fun e!2583904 () Bool)

(declare-fun tp!1270710 () Bool)

(assert (=> b!4162459 (= e!2583904 (and tp_is_empty!21825 tp!1270710))))

(assert (=> b!4162172 (= tp!1270625 e!2583904)))

(assert (= (and b!4162172 ((_ is Cons!45529) (t!343684 pBis!100))) b!4162459))

(declare-fun b!4162460 () Bool)

(declare-fun e!2583905 () Bool)

(declare-fun tp!1270711 () Bool)

(assert (=> b!4162460 (= e!2583905 (and tp_is_empty!21825 tp!1270711))))

(assert (=> b!4162161 (= tp!1270621 e!2583905)))

(assert (= (and b!4162161 ((_ is Cons!45529) (t!343684 p!2942))) b!4162460))

(declare-fun b!4162464 () Bool)

(declare-fun e!2583906 () Bool)

(declare-fun tp!1270714 () Bool)

(declare-fun tp!1270712 () Bool)

(assert (=> b!4162464 (= e!2583906 (and tp!1270714 tp!1270712))))

(declare-fun b!4162461 () Bool)

(assert (=> b!4162461 (= e!2583906 tp_is_empty!21825)))

(declare-fun b!4162463 () Bool)

(declare-fun tp!1270713 () Bool)

(assert (=> b!4162463 (= e!2583906 tp!1270713)))

(declare-fun b!4162462 () Bool)

(declare-fun tp!1270715 () Bool)

(declare-fun tp!1270716 () Bool)

(assert (=> b!4162462 (= e!2583906 (and tp!1270715 tp!1270716))))

(assert (=> b!4162171 (= tp!1270620 e!2583906)))

(assert (= (and b!4162171 ((_ is ElementMatch!12431) (regex!7526 (h!50951 rules!3820)))) b!4162461))

(assert (= (and b!4162171 ((_ is Concat!20188) (regex!7526 (h!50951 rules!3820)))) b!4162462))

(assert (= (and b!4162171 ((_ is Star!12431) (regex!7526 (h!50951 rules!3820)))) b!4162463))

(assert (= (and b!4162171 ((_ is Union!12431) (regex!7526 (h!50951 rules!3820)))) b!4162464))

(declare-fun b_lambda!122171 () Bool)

(assert (= b_lambda!122163 (or (and b!4162163 b_free!119969 (= (toChars!10049 (transformation!7526 (h!50951 rules!3820))) (toChars!10049 (transformation!7526 r!4097)))) (and b!4162173 b_free!119973) (and b!4162174 b_free!119977 (= (toChars!10049 (transformation!7526 rBis!161)) (toChars!10049 (transformation!7526 r!4097)))) (and b!4162440 b_free!119985 (= (toChars!10049 (transformation!7526 (h!50951 (t!343686 rules!3820)))) (toChars!10049 (transformation!7526 r!4097)))) b_lambda!122171)))

(declare-fun b_lambda!122173 () Bool)

(assert (= b_lambda!122165 (or (and b!4162163 b_free!119967 (= (toValue!10190 (transformation!7526 (h!50951 rules!3820))) (toValue!10190 (transformation!7526 r!4097)))) (and b!4162173 b_free!119971) (and b!4162174 b_free!119975 (= (toValue!10190 (transformation!7526 rBis!161)) (toValue!10190 (transformation!7526 r!4097)))) (and b!4162440 b_free!119983 (= (toValue!10190 (transformation!7526 (h!50951 (t!343686 rules!3820)))) (toValue!10190 (transformation!7526 r!4097)))) b_lambda!122173)))

(check-sat b_and!324357 (not b!4162463) (not b!4162464) (not b!4162439) (not b_next!120677) (not b_next!120673) b_and!324363 (not b!4162331) (not b!4162385) (not d!1230392) (not b!4162187) (not b!4162393) (not b_next!120675) (not b!4162452) (not b!4162459) (not d!1230372) (not b!4162179) (not b!4162460) (not b!4162204) b_and!324369 (not b!4162390) b_and!324359 (not tb!249263) (not b!4162419) tp_is_empty!21825 (not b!4162416) (not d!1230370) (not d!1230324) (not b!4162389) (not b!4162203) (not b!4162438) b_and!324371 (not bm!290845) (not d!1230374) (not d!1230376) (not b!4162429) (not b_next!120687) (not d!1230312) (not d!1230332) (not b!4162412) (not b!4162458) (not b!4162454) (not b!4162417) (not b!4162424) (not b!4162462) (not b!4162415) (not b!4162384) (not d!1230378) (not b_next!120681) (not b_lambda!122171) (not b!4162205) (not b!4162414) (not tb!249269) (not b_next!120679) (not b!4162422) (not b!4162453) (not b!4162402) (not b!4162185) (not b!4162386) (not b!4162456) (not b!4162457) (not b_next!120671) (not d!1230384) b_and!324355 b_and!324361 b_and!324353 (not d!1230386) (not b_next!120689) (not b!4162409) (not b!4162423) (not b!4162421) (not d!1230322) (not b_lambda!122173))
(check-sat b_and!324357 (not b_next!120675) b_and!324369 b_and!324359 b_and!324371 (not b_next!120687) (not b_next!120677) (not b_next!120673) (not b_next!120681) (not b_next!120679) b_and!324363 (not b_next!120671) b_and!324353 (not b_next!120689) b_and!324355 b_and!324361)
