; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129140 () Bool)

(assert start!129140)

(declare-fun b!1411564 () Bool)

(declare-fun res!639238 () Bool)

(declare-fun e!901105 () Bool)

(assert (=> b!1411564 (=> (not res!639238) (not e!901105))))

(declare-datatypes ((List!14489 0))(
  ( (Nil!14423) (Cons!14423 (h!19824 (_ BitVec 16)) (t!123552 List!14489)) )
))
(declare-datatypes ((TokenValue!2595 0))(
  ( (FloatLiteralValue!5190 (text!18610 List!14489)) (TokenValueExt!2594 (__x!9009 Int)) (Broken!12975 (value!80999 List!14489)) (Object!2660) (End!2595) (Def!2595) (Underscore!2595) (Match!2595) (Else!2595) (Error!2595) (Case!2595) (If!2595) (Extends!2595) (Abstract!2595) (Class!2595) (Val!2595) (DelimiterValue!5190 (del!2655 List!14489)) (KeywordValue!2601 (value!81000 List!14489)) (CommentValue!5190 (value!81001 List!14489)) (WhitespaceValue!5190 (value!81002 List!14489)) (IndentationValue!2595 (value!81003 List!14489)) (String!17210) (Int32!2595) (Broken!12976 (value!81004 List!14489)) (Boolean!2596) (Unit!20944) (OperatorValue!2598 (op!2655 List!14489)) (IdentifierValue!5190 (value!81005 List!14489)) (IdentifierValue!5191 (value!81006 List!14489)) (WhitespaceValue!5191 (value!81007 List!14489)) (True!5190) (False!5190) (Broken!12977 (value!81008 List!14489)) (Broken!12978 (value!81009 List!14489)) (True!5191) (RightBrace!2595) (RightBracket!2595) (Colon!2595) (Null!2595) (Comma!2595) (LeftBracket!2595) (False!5191) (LeftBrace!2595) (ImaginaryLiteralValue!2595 (text!18611 List!14489)) (StringLiteralValue!7785 (value!81010 List!14489)) (EOFValue!2595 (value!81011 List!14489)) (IdentValue!2595 (value!81012 List!14489)) (DelimiterValue!5191 (value!81013 List!14489)) (DedentValue!2595 (value!81014 List!14489)) (NewLineValue!2595 (value!81015 List!14489)) (IntegerValue!7785 (value!81016 (_ BitVec 32)) (text!18612 List!14489)) (IntegerValue!7786 (value!81017 Int) (text!18613 List!14489)) (Times!2595) (Or!2595) (Equal!2595) (Minus!2595) (Broken!12979 (value!81018 List!14489)) (And!2595) (Div!2595) (LessEqual!2595) (Mod!2595) (Concat!6414) (Not!2595) (Plus!2595) (SpaceValue!2595 (value!81019 List!14489)) (IntegerValue!7787 (value!81020 Int) (text!18614 List!14489)) (StringLiteralValue!7786 (text!18615 List!14489)) (FloatLiteralValue!5191 (text!18616 List!14489)) (BytesLiteralValue!2595 (value!81021 List!14489)) (CommentValue!5191 (value!81022 List!14489)) (StringLiteralValue!7787 (value!81023 List!14489)) (ErrorTokenValue!2595 (msg!2656 List!14489)) )
))
(declare-datatypes ((Regex!3819 0))(
  ( (ElementMatch!3819 (c!231992 (_ BitVec 16))) (Concat!6415 (regOne!8150 Regex!3819) (regTwo!8150 Regex!3819)) (EmptyExpr!3819) (Star!3819 (reg!4148 Regex!3819)) (EmptyLang!3819) (Union!3819 (regOne!8151 Regex!3819) (regTwo!8151 Regex!3819)) )
))
(declare-datatypes ((String!17211 0))(
  ( (String!17212 (value!81024 String)) )
))
(declare-datatypes ((IArray!9583 0))(
  ( (IArray!9584 (innerList!4849 List!14489)) )
))
(declare-datatypes ((Conc!4789 0))(
  ( (Node!4789 (left!12319 Conc!4789) (right!12649 Conc!4789) (csize!9808 Int) (cheight!5000 Int)) (Leaf!7238 (xs!7516 IArray!9583) (csize!9809 Int)) (Empty!4789) )
))
(declare-datatypes ((BalanceConc!9518 0))(
  ( (BalanceConc!9519 (c!231993 Conc!4789)) )
))
(declare-datatypes ((TokenValueInjection!4850 0))(
  ( (TokenValueInjection!4851 (toValue!3800 Int) (toChars!3659 Int)) )
))
(declare-datatypes ((Rule!4810 0))(
  ( (Rule!4811 (regex!2505 Regex!3819) (tag!2767 String!17211) (isSeparator!2505 Bool) (transformation!2505 TokenValueInjection!4850)) )
))
(declare-datatypes ((Token!4672 0))(
  ( (Token!4673 (value!81025 TokenValue!2595) (rule!4268 Rule!4810) (size!11877 Int) (originalCharacters!3367 List!14489)) )
))
(declare-datatypes ((List!14490 0))(
  ( (Nil!14424) (Cons!14424 (h!19825 Token!4672) (t!123553 List!14490)) )
))
(declare-datatypes ((IArray!9585 0))(
  ( (IArray!9586 (innerList!4850 List!14490)) )
))
(declare-datatypes ((Conc!4790 0))(
  ( (Node!4790 (left!12320 Conc!4790) (right!12650 Conc!4790) (csize!9810 Int) (cheight!5001 Int)) (Leaf!7239 (xs!7517 IArray!9585) (csize!9811 Int)) (Empty!4790) )
))
(declare-datatypes ((List!14491 0))(
  ( (Nil!14425) (Cons!14425 (h!19826 Rule!4810) (t!123554 List!14491)) )
))
(declare-datatypes ((BalanceConc!9520 0))(
  ( (BalanceConc!9521 (c!231994 Conc!4790)) )
))
(declare-datatypes ((PrintableTokens!792 0))(
  ( (PrintableTokens!793 (rules!11012 List!14491) (tokens!1748 BalanceConc!9520)) )
))
(declare-datatypes ((List!14492 0))(
  ( (Nil!14426) (Cons!14426 (h!19827 PrintableTokens!792) (t!123555 List!14492)) )
))
(declare-datatypes ((IArray!9587 0))(
  ( (IArray!9588 (innerList!4851 List!14492)) )
))
(declare-datatypes ((Conc!4791 0))(
  ( (Node!4791 (left!12321 Conc!4791) (right!12651 Conc!4791) (csize!9812 Int) (cheight!5002 Int)) (Leaf!7240 (xs!7518 IArray!9587) (csize!9813 Int)) (Empty!4791) )
))
(declare-datatypes ((BalanceConc!9522 0))(
  ( (BalanceConc!9523 (c!231995 Conc!4791)) )
))
(declare-fun objs!24 () BalanceConc!9522)

(declare-fun isEmpty!8810 (BalanceConc!9522) Bool)

(assert (=> b!1411564 (= res!639238 (not (isEmpty!8810 objs!24)))))

(declare-fun b!1411565 () Bool)

(declare-fun e!901106 () Bool)

(declare-fun tp!400704 () Bool)

(declare-fun inv!18838 (Conc!4791) Bool)

(assert (=> b!1411565 (= e!901106 (and (inv!18838 (c!231995 objs!24)) tp!400704))))

(declare-fun tp!400703 () Bool)

(declare-fun acc!229 () PrintableTokens!792)

(declare-fun e!901104 () Bool)

(declare-fun b!1411566 () Bool)

(declare-fun e!901109 () Bool)

(declare-fun inv!18839 (BalanceConc!9520) Bool)

(assert (=> b!1411566 (= e!901109 (and tp!400703 (inv!18839 (tokens!1748 acc!229)) e!901104))))

(declare-fun b!1411567 () Bool)

(declare-fun tp!400701 () Bool)

(declare-fun sep!3 () PrintableTokens!792)

(declare-fun e!901107 () Bool)

(declare-fun e!901108 () Bool)

(assert (=> b!1411567 (= e!901108 (and tp!400701 (inv!18839 (tokens!1748 sep!3)) e!901107))))

(declare-fun b!1411568 () Bool)

(declare-fun tp!400702 () Bool)

(declare-fun inv!18840 (Conc!4790) Bool)

(assert (=> b!1411568 (= e!901104 (and (inv!18840 (c!231994 (tokens!1748 acc!229))) tp!400702))))

(declare-fun b!1411569 () Bool)

(declare-fun head!2675 (BalanceConc!9522) PrintableTokens!792)

(assert (=> b!1411569 (= e!901105 (not (= (rules!11012 (head!2675 objs!24)) (rules!11012 sep!3))))))

(declare-fun b!1411570 () Bool)

(declare-fun res!639235 () Bool)

(assert (=> b!1411570 (=> (not res!639235) (not e!901105))))

(declare-fun size!11878 (BalanceConc!9522) Int)

(assert (=> b!1411570 (= res!639235 (not (= (size!11878 objs!24) 1)))))

(declare-fun b!1411571 () Bool)

(declare-fun res!639236 () Bool)

(assert (=> b!1411571 (=> (not res!639236) (not e!901105))))

(declare-fun usesJsonRules!0 (PrintableTokens!792) Bool)

(assert (=> b!1411571 (= res!639236 (usesJsonRules!0 acc!229))))

(declare-fun res!639234 () Bool)

(assert (=> start!129140 (=> (not res!639234) (not e!901105))))

(declare-fun lambda!62403 () Int)

(declare-fun forall!3525 (BalanceConc!9522 Int) Bool)

(assert (=> start!129140 (= res!639234 (forall!3525 objs!24 lambda!62403))))

(assert (=> start!129140 e!901105))

(declare-fun inv!18841 (BalanceConc!9522) Bool)

(assert (=> start!129140 (and (inv!18841 objs!24) e!901106)))

(declare-fun inv!18842 (PrintableTokens!792) Bool)

(assert (=> start!129140 (and (inv!18842 acc!229) e!901109)))

(assert (=> start!129140 (and (inv!18842 sep!3) e!901108)))

(declare-fun b!1411572 () Bool)

(declare-fun res!639237 () Bool)

(assert (=> b!1411572 (=> (not res!639237) (not e!901105))))

(assert (=> b!1411572 (= res!639237 (usesJsonRules!0 sep!3))))

(declare-fun b!1411573 () Bool)

(declare-fun tp!400700 () Bool)

(assert (=> b!1411573 (= e!901107 (and (inv!18840 (c!231994 (tokens!1748 sep!3))) tp!400700))))

(assert (= (and start!129140 res!639234) b!1411571))

(assert (= (and b!1411571 res!639236) b!1411572))

(assert (= (and b!1411572 res!639237) b!1411564))

(assert (= (and b!1411564 res!639238) b!1411570))

(assert (= (and b!1411570 res!639235) b!1411569))

(assert (= start!129140 b!1411565))

(assert (= b!1411566 b!1411568))

(assert (= start!129140 b!1411566))

(assert (= b!1411567 b!1411573))

(assert (= start!129140 b!1411567))

(declare-fun m!1591923 () Bool)

(assert (=> b!1411566 m!1591923))

(declare-fun m!1591925 () Bool)

(assert (=> b!1411568 m!1591925))

(declare-fun m!1591927 () Bool)

(assert (=> b!1411569 m!1591927))

(declare-fun m!1591929 () Bool)

(assert (=> b!1411572 m!1591929))

(declare-fun m!1591931 () Bool)

(assert (=> b!1411570 m!1591931))

(declare-fun m!1591933 () Bool)

(assert (=> b!1411573 m!1591933))

(declare-fun m!1591935 () Bool)

(assert (=> b!1411571 m!1591935))

(declare-fun m!1591937 () Bool)

(assert (=> b!1411567 m!1591937))

(declare-fun m!1591939 () Bool)

(assert (=> b!1411564 m!1591939))

(declare-fun m!1591941 () Bool)

(assert (=> b!1411565 m!1591941))

(declare-fun m!1591943 () Bool)

(assert (=> start!129140 m!1591943))

(declare-fun m!1591945 () Bool)

(assert (=> start!129140 m!1591945))

(declare-fun m!1591947 () Bool)

(assert (=> start!129140 m!1591947))

(declare-fun m!1591949 () Bool)

(assert (=> start!129140 m!1591949))

(check-sat (not b!1411566) (not b!1411571) (not b!1411572) (not b!1411573) (not b!1411565) (not b!1411567) (not b!1411570) (not b!1411564) (not b!1411569) (not start!129140) (not b!1411568))
(check-sat)
(get-model)

(declare-fun d!403463 () Bool)

(declare-fun c!232001 () Bool)

(get-info :version)

(assert (=> d!403463 (= c!232001 ((_ is Node!4790) (c!231994 (tokens!1748 sep!3))))))

(declare-fun e!901120 () Bool)

(assert (=> d!403463 (= (inv!18840 (c!231994 (tokens!1748 sep!3))) e!901120)))

(declare-fun b!1411589 () Bool)

(declare-fun inv!18850 (Conc!4790) Bool)

(assert (=> b!1411589 (= e!901120 (inv!18850 (c!231994 (tokens!1748 sep!3))))))

(declare-fun b!1411590 () Bool)

(declare-fun e!901121 () Bool)

(assert (=> b!1411590 (= e!901120 e!901121)))

(declare-fun res!639246 () Bool)

(assert (=> b!1411590 (= res!639246 (not ((_ is Leaf!7239) (c!231994 (tokens!1748 sep!3)))))))

(assert (=> b!1411590 (=> res!639246 e!901121)))

(declare-fun b!1411591 () Bool)

(declare-fun inv!18851 (Conc!4790) Bool)

(assert (=> b!1411591 (= e!901121 (inv!18851 (c!231994 (tokens!1748 sep!3))))))

(assert (= (and d!403463 c!232001) b!1411589))

(assert (= (and d!403463 (not c!232001)) b!1411590))

(assert (= (and b!1411590 (not res!639246)) b!1411591))

(declare-fun m!1591969 () Bool)

(assert (=> b!1411589 m!1591969))

(declare-fun m!1591971 () Bool)

(assert (=> b!1411591 m!1591971))

(assert (=> b!1411573 d!403463))

(declare-fun d!403465 () Bool)

(declare-fun c!232002 () Bool)

(assert (=> d!403465 (= c!232002 ((_ is Node!4790) (c!231994 (tokens!1748 acc!229))))))

(declare-fun e!901122 () Bool)

(assert (=> d!403465 (= (inv!18840 (c!231994 (tokens!1748 acc!229))) e!901122)))

(declare-fun b!1411592 () Bool)

(assert (=> b!1411592 (= e!901122 (inv!18850 (c!231994 (tokens!1748 acc!229))))))

(declare-fun b!1411593 () Bool)

(declare-fun e!901123 () Bool)

(assert (=> b!1411593 (= e!901122 e!901123)))

(declare-fun res!639247 () Bool)

(assert (=> b!1411593 (= res!639247 (not ((_ is Leaf!7239) (c!231994 (tokens!1748 acc!229)))))))

(assert (=> b!1411593 (=> res!639247 e!901123)))

(declare-fun b!1411594 () Bool)

(assert (=> b!1411594 (= e!901123 (inv!18851 (c!231994 (tokens!1748 acc!229))))))

(assert (= (and d!403465 c!232002) b!1411592))

(assert (= (and d!403465 (not c!232002)) b!1411593))

(assert (= (and b!1411593 (not res!639247)) b!1411594))

(declare-fun m!1591973 () Bool)

(assert (=> b!1411592 m!1591973))

(declare-fun m!1591975 () Bool)

(assert (=> b!1411594 m!1591975))

(assert (=> b!1411568 d!403465))

(declare-fun d!403467 () Bool)

(declare-fun lt!472403 () PrintableTokens!792)

(declare-fun head!2678 (List!14492) PrintableTokens!792)

(declare-fun list!5651 (BalanceConc!9522) List!14492)

(assert (=> d!403467 (= lt!472403 (head!2678 (list!5651 objs!24)))))

(declare-fun head!2679 (Conc!4791) PrintableTokens!792)

(assert (=> d!403467 (= lt!472403 (head!2679 (c!231995 objs!24)))))

(assert (=> d!403467 (not (isEmpty!8810 objs!24))))

(assert (=> d!403467 (= (head!2675 objs!24) lt!472403)))

(declare-fun bs!338971 () Bool)

(assert (= bs!338971 d!403467))

(declare-fun m!1591977 () Bool)

(assert (=> bs!338971 m!1591977))

(assert (=> bs!338971 m!1591977))

(declare-fun m!1591979 () Bool)

(assert (=> bs!338971 m!1591979))

(declare-fun m!1591981 () Bool)

(assert (=> bs!338971 m!1591981))

(assert (=> bs!338971 m!1591939))

(assert (=> b!1411569 d!403467))

(declare-fun d!403469 () Bool)

(declare-fun lt!472406 () Bool)

(declare-fun isEmpty!8814 (List!14492) Bool)

(assert (=> d!403469 (= lt!472406 (isEmpty!8814 (list!5651 objs!24)))))

(declare-fun isEmpty!8815 (Conc!4791) Bool)

(assert (=> d!403469 (= lt!472406 (isEmpty!8815 (c!231995 objs!24)))))

(assert (=> d!403469 (= (isEmpty!8810 objs!24) lt!472406)))

(declare-fun bs!338972 () Bool)

(assert (= bs!338972 d!403469))

(assert (=> bs!338972 m!1591977))

(assert (=> bs!338972 m!1591977))

(declare-fun m!1591983 () Bool)

(assert (=> bs!338972 m!1591983))

(declare-fun m!1591985 () Bool)

(assert (=> bs!338972 m!1591985))

(assert (=> b!1411564 d!403469))

(declare-fun d!403471 () Bool)

(declare-fun c!232005 () Bool)

(assert (=> d!403471 (= c!232005 ((_ is Node!4791) (c!231995 objs!24)))))

(declare-fun e!901128 () Bool)

(assert (=> d!403471 (= (inv!18838 (c!231995 objs!24)) e!901128)))

(declare-fun b!1411601 () Bool)

(declare-fun inv!18852 (Conc!4791) Bool)

(assert (=> b!1411601 (= e!901128 (inv!18852 (c!231995 objs!24)))))

(declare-fun b!1411602 () Bool)

(declare-fun e!901129 () Bool)

(assert (=> b!1411602 (= e!901128 e!901129)))

(declare-fun res!639250 () Bool)

(assert (=> b!1411602 (= res!639250 (not ((_ is Leaf!7240) (c!231995 objs!24))))))

(assert (=> b!1411602 (=> res!639250 e!901129)))

(declare-fun b!1411603 () Bool)

(declare-fun inv!18853 (Conc!4791) Bool)

(assert (=> b!1411603 (= e!901129 (inv!18853 (c!231995 objs!24)))))

(assert (= (and d!403471 c!232005) b!1411601))

(assert (= (and d!403471 (not c!232005)) b!1411602))

(assert (= (and b!1411602 (not res!639250)) b!1411603))

(declare-fun m!1591987 () Bool)

(assert (=> b!1411601 m!1591987))

(declare-fun m!1591989 () Bool)

(assert (=> b!1411603 m!1591989))

(assert (=> b!1411565 d!403471))

(declare-fun d!403473 () Bool)

(declare-fun lt!472409 () Int)

(declare-fun size!11881 (List!14492) Int)

(assert (=> d!403473 (= lt!472409 (size!11881 (list!5651 objs!24)))))

(declare-fun size!11882 (Conc!4791) Int)

(assert (=> d!403473 (= lt!472409 (size!11882 (c!231995 objs!24)))))

(assert (=> d!403473 (= (size!11878 objs!24) lt!472409)))

(declare-fun bs!338973 () Bool)

(assert (= bs!338973 d!403473))

(assert (=> bs!338973 m!1591977))

(assert (=> bs!338973 m!1591977))

(declare-fun m!1591991 () Bool)

(assert (=> bs!338973 m!1591991))

(declare-fun m!1591993 () Bool)

(assert (=> bs!338973 m!1591993))

(assert (=> b!1411570 d!403473))

(declare-fun d!403475 () Bool)

(declare-datatypes ((JsonLexer!386 0))(
  ( (JsonLexer!387) )
))
(declare-fun rules!109 (JsonLexer!386) List!14491)

(assert (=> d!403475 (= (usesJsonRules!0 acc!229) (= (rules!11012 acc!229) (rules!109 JsonLexer!387)))))

(declare-fun bs!338977 () Bool)

(assert (= bs!338977 d!403475))

(declare-fun m!1592007 () Bool)

(assert (=> bs!338977 m!1592007))

(assert (=> b!1411571 d!403475))

(declare-fun d!403485 () Bool)

(declare-fun isBalanced!1415 (Conc!4790) Bool)

(assert (=> d!403485 (= (inv!18839 (tokens!1748 acc!229)) (isBalanced!1415 (c!231994 (tokens!1748 acc!229))))))

(declare-fun bs!338978 () Bool)

(assert (= bs!338978 d!403485))

(declare-fun m!1592009 () Bool)

(assert (=> bs!338978 m!1592009))

(assert (=> b!1411566 d!403485))

(declare-fun d!403487 () Bool)

(declare-fun lt!472415 () Bool)

(declare-fun forall!3528 (List!14492 Int) Bool)

(assert (=> d!403487 (= lt!472415 (forall!3528 (list!5651 objs!24) lambda!62403))))

(declare-fun forall!3529 (Conc!4791 Int) Bool)

(assert (=> d!403487 (= lt!472415 (forall!3529 (c!231995 objs!24) lambda!62403))))

(assert (=> d!403487 (= (forall!3525 objs!24 lambda!62403) lt!472415)))

(declare-fun bs!338979 () Bool)

(assert (= bs!338979 d!403487))

(assert (=> bs!338979 m!1591977))

(assert (=> bs!338979 m!1591977))

(declare-fun m!1592011 () Bool)

(assert (=> bs!338979 m!1592011))

(declare-fun m!1592013 () Bool)

(assert (=> bs!338979 m!1592013))

(assert (=> start!129140 d!403487))

(declare-fun d!403489 () Bool)

(declare-fun isBalanced!1416 (Conc!4791) Bool)

(assert (=> d!403489 (= (inv!18841 objs!24) (isBalanced!1416 (c!231995 objs!24)))))

(declare-fun bs!338980 () Bool)

(assert (= bs!338980 d!403489))

(declare-fun m!1592015 () Bool)

(assert (=> bs!338980 m!1592015))

(assert (=> start!129140 d!403489))

(declare-fun d!403491 () Bool)

(declare-fun res!639273 () Bool)

(declare-fun e!901174 () Bool)

(assert (=> d!403491 (=> (not res!639273) (not e!901174))))

(declare-fun isEmpty!8816 (List!14491) Bool)

(assert (=> d!403491 (= res!639273 (not (isEmpty!8816 (rules!11012 acc!229))))))

(assert (=> d!403491 (= (inv!18842 acc!229) e!901174)))

(declare-fun b!1411673 () Bool)

(declare-fun res!639274 () Bool)

(assert (=> b!1411673 (=> (not res!639274) (not e!901174))))

(declare-datatypes ((LexerInterface!2191 0))(
  ( (LexerInterfaceExt!2188 (__x!9011 Int)) (Lexer!2189) )
))
(declare-fun rulesInvariant!2061 (LexerInterface!2191 List!14491) Bool)

(assert (=> b!1411673 (= res!639274 (rulesInvariant!2061 Lexer!2189 (rules!11012 acc!229)))))

(declare-fun b!1411674 () Bool)

(declare-fun res!639275 () Bool)

(assert (=> b!1411674 (=> (not res!639275) (not e!901174))))

(declare-fun rulesProduceEachTokenIndividually!788 (LexerInterface!2191 List!14491 BalanceConc!9520) Bool)

(assert (=> b!1411674 (= res!639275 (rulesProduceEachTokenIndividually!788 Lexer!2189 (rules!11012 acc!229) (tokens!1748 acc!229)))))

(declare-fun b!1411675 () Bool)

(declare-fun separableTokens!173 (LexerInterface!2191 BalanceConc!9520 List!14491) Bool)

(assert (=> b!1411675 (= e!901174 (separableTokens!173 Lexer!2189 (tokens!1748 acc!229) (rules!11012 acc!229)))))

(assert (= (and d!403491 res!639273) b!1411673))

(assert (= (and b!1411673 res!639274) b!1411674))

(assert (= (and b!1411674 res!639275) b!1411675))

(declare-fun m!1592067 () Bool)

(assert (=> d!403491 m!1592067))

(declare-fun m!1592069 () Bool)

(assert (=> b!1411673 m!1592069))

(declare-fun m!1592071 () Bool)

(assert (=> b!1411674 m!1592071))

(declare-fun m!1592073 () Bool)

(assert (=> b!1411675 m!1592073))

(assert (=> start!129140 d!403491))

(declare-fun d!403501 () Bool)

(declare-fun res!639276 () Bool)

(declare-fun e!901175 () Bool)

(assert (=> d!403501 (=> (not res!639276) (not e!901175))))

(assert (=> d!403501 (= res!639276 (not (isEmpty!8816 (rules!11012 sep!3))))))

(assert (=> d!403501 (= (inv!18842 sep!3) e!901175)))

(declare-fun b!1411676 () Bool)

(declare-fun res!639277 () Bool)

(assert (=> b!1411676 (=> (not res!639277) (not e!901175))))

(assert (=> b!1411676 (= res!639277 (rulesInvariant!2061 Lexer!2189 (rules!11012 sep!3)))))

(declare-fun b!1411677 () Bool)

(declare-fun res!639278 () Bool)

(assert (=> b!1411677 (=> (not res!639278) (not e!901175))))

(assert (=> b!1411677 (= res!639278 (rulesProduceEachTokenIndividually!788 Lexer!2189 (rules!11012 sep!3) (tokens!1748 sep!3)))))

(declare-fun b!1411678 () Bool)

(assert (=> b!1411678 (= e!901175 (separableTokens!173 Lexer!2189 (tokens!1748 sep!3) (rules!11012 sep!3)))))

(assert (= (and d!403501 res!639276) b!1411676))

(assert (= (and b!1411676 res!639277) b!1411677))

(assert (= (and b!1411677 res!639278) b!1411678))

(declare-fun m!1592075 () Bool)

(assert (=> d!403501 m!1592075))

(declare-fun m!1592077 () Bool)

(assert (=> b!1411676 m!1592077))

(declare-fun m!1592079 () Bool)

(assert (=> b!1411677 m!1592079))

(declare-fun m!1592081 () Bool)

(assert (=> b!1411678 m!1592081))

(assert (=> start!129140 d!403501))

(declare-fun d!403503 () Bool)

(assert (=> d!403503 (= (inv!18839 (tokens!1748 sep!3)) (isBalanced!1415 (c!231994 (tokens!1748 sep!3))))))

(declare-fun bs!338983 () Bool)

(assert (= bs!338983 d!403503))

(declare-fun m!1592083 () Bool)

(assert (=> bs!338983 m!1592083))

(assert (=> b!1411567 d!403503))

(declare-fun d!403505 () Bool)

(assert (=> d!403505 (= (usesJsonRules!0 sep!3) (= (rules!11012 sep!3) (rules!109 JsonLexer!387)))))

(declare-fun bs!338984 () Bool)

(assert (= bs!338984 d!403505))

(assert (=> bs!338984 m!1592007))

(assert (=> b!1411572 d!403505))

(declare-fun tp!400746 () Bool)

(declare-fun e!901181 () Bool)

(declare-fun b!1411687 () Bool)

(declare-fun tp!400744 () Bool)

(assert (=> b!1411687 (= e!901181 (and (inv!18840 (left!12320 (c!231994 (tokens!1748 sep!3)))) tp!400746 (inv!18840 (right!12650 (c!231994 (tokens!1748 sep!3)))) tp!400744))))

(declare-fun b!1411689 () Bool)

(declare-fun e!901180 () Bool)

(declare-fun tp!400745 () Bool)

(assert (=> b!1411689 (= e!901180 tp!400745)))

(declare-fun b!1411688 () Bool)

(declare-fun inv!18854 (IArray!9585) Bool)

(assert (=> b!1411688 (= e!901181 (and (inv!18854 (xs!7517 (c!231994 (tokens!1748 sep!3)))) e!901180))))

(assert (=> b!1411573 (= tp!400700 (and (inv!18840 (c!231994 (tokens!1748 sep!3))) e!901181))))

(assert (= (and b!1411573 ((_ is Node!4790) (c!231994 (tokens!1748 sep!3)))) b!1411687))

(assert (= b!1411688 b!1411689))

(assert (= (and b!1411573 ((_ is Leaf!7239) (c!231994 (tokens!1748 sep!3)))) b!1411688))

(declare-fun m!1592085 () Bool)

(assert (=> b!1411687 m!1592085))

(declare-fun m!1592087 () Bool)

(assert (=> b!1411687 m!1592087))

(declare-fun m!1592089 () Bool)

(assert (=> b!1411688 m!1592089))

(assert (=> b!1411573 m!1591933))

(declare-fun tp!400747 () Bool)

(declare-fun tp!400749 () Bool)

(declare-fun b!1411690 () Bool)

(declare-fun e!901183 () Bool)

(assert (=> b!1411690 (= e!901183 (and (inv!18840 (left!12320 (c!231994 (tokens!1748 acc!229)))) tp!400749 (inv!18840 (right!12650 (c!231994 (tokens!1748 acc!229)))) tp!400747))))

(declare-fun b!1411692 () Bool)

(declare-fun e!901182 () Bool)

(declare-fun tp!400748 () Bool)

(assert (=> b!1411692 (= e!901182 tp!400748)))

(declare-fun b!1411691 () Bool)

(assert (=> b!1411691 (= e!901183 (and (inv!18854 (xs!7517 (c!231994 (tokens!1748 acc!229)))) e!901182))))

(assert (=> b!1411568 (= tp!400702 (and (inv!18840 (c!231994 (tokens!1748 acc!229))) e!901183))))

(assert (= (and b!1411568 ((_ is Node!4790) (c!231994 (tokens!1748 acc!229)))) b!1411690))

(assert (= b!1411691 b!1411692))

(assert (= (and b!1411568 ((_ is Leaf!7239) (c!231994 (tokens!1748 acc!229)))) b!1411691))

(declare-fun m!1592091 () Bool)

(assert (=> b!1411690 m!1592091))

(declare-fun m!1592093 () Bool)

(assert (=> b!1411690 m!1592093))

(declare-fun m!1592095 () Bool)

(assert (=> b!1411691 m!1592095))

(assert (=> b!1411568 m!1591925))

(declare-fun tp!400756 () Bool)

(declare-fun b!1411701 () Bool)

(declare-fun e!901188 () Bool)

(declare-fun tp!400758 () Bool)

(assert (=> b!1411701 (= e!901188 (and (inv!18838 (left!12321 (c!231995 objs!24))) tp!400758 (inv!18838 (right!12651 (c!231995 objs!24))) tp!400756))))

(declare-fun b!1411703 () Bool)

(declare-fun e!901189 () Bool)

(declare-fun tp!400757 () Bool)

(assert (=> b!1411703 (= e!901189 tp!400757)))

(declare-fun b!1411702 () Bool)

(declare-fun inv!18855 (IArray!9587) Bool)

(assert (=> b!1411702 (= e!901188 (and (inv!18855 (xs!7518 (c!231995 objs!24))) e!901189))))

(assert (=> b!1411565 (= tp!400704 (and (inv!18838 (c!231995 objs!24)) e!901188))))

(assert (= (and b!1411565 ((_ is Node!4791) (c!231995 objs!24))) b!1411701))

(assert (= b!1411702 b!1411703))

(assert (= (and b!1411565 ((_ is Leaf!7240) (c!231995 objs!24))) b!1411702))

(declare-fun m!1592097 () Bool)

(assert (=> b!1411701 m!1592097))

(declare-fun m!1592099 () Bool)

(assert (=> b!1411701 m!1592099))

(declare-fun m!1592101 () Bool)

(assert (=> b!1411702 m!1592101))

(assert (=> b!1411565 m!1591941))

(declare-fun b!1411714 () Bool)

(declare-fun b_free!34615 () Bool)

(declare-fun b_next!35319 () Bool)

(assert (=> b!1411714 (= b_free!34615 (not b_next!35319))))

(declare-fun tp!400765 () Bool)

(declare-fun b_and!94543 () Bool)

(assert (=> b!1411714 (= tp!400765 b_and!94543)))

(declare-fun b_free!34617 () Bool)

(declare-fun b_next!35321 () Bool)

(assert (=> b!1411714 (= b_free!34617 (not b_next!35321))))

(declare-fun tp!400767 () Bool)

(declare-fun b_and!94545 () Bool)

(assert (=> b!1411714 (= tp!400767 b_and!94545)))

(declare-fun e!901199 () Bool)

(assert (=> b!1411714 (= e!901199 (and tp!400765 tp!400767))))

(declare-fun b!1411713 () Bool)

(declare-fun e!901200 () Bool)

(declare-fun inv!18832 (String!17211) Bool)

(declare-fun inv!18856 (TokenValueInjection!4850) Bool)

(assert (=> b!1411713 (= e!901200 (and (inv!18832 (tag!2767 (h!19826 (rules!11012 acc!229)))) (inv!18856 (transformation!2505 (h!19826 (rules!11012 acc!229)))) e!901199))))

(declare-fun b!1411712 () Bool)

(declare-fun e!901201 () Bool)

(declare-fun tp!400766 () Bool)

(assert (=> b!1411712 (= e!901201 (and e!901200 tp!400766))))

(assert (=> b!1411566 (= tp!400703 e!901201)))

(assert (= b!1411713 b!1411714))

(assert (= b!1411712 b!1411713))

(assert (= (and b!1411566 ((_ is Cons!14425) (rules!11012 acc!229))) b!1411712))

(declare-fun m!1592103 () Bool)

(assert (=> b!1411713 m!1592103))

(declare-fun m!1592105 () Bool)

(assert (=> b!1411713 m!1592105))

(declare-fun b!1411717 () Bool)

(declare-fun b_free!34619 () Bool)

(declare-fun b_next!35323 () Bool)

(assert (=> b!1411717 (= b_free!34619 (not b_next!35323))))

(declare-fun tp!400768 () Bool)

(declare-fun b_and!94547 () Bool)

(assert (=> b!1411717 (= tp!400768 b_and!94547)))

(declare-fun b_free!34621 () Bool)

(declare-fun b_next!35325 () Bool)

(assert (=> b!1411717 (= b_free!34621 (not b_next!35325))))

(declare-fun tp!400770 () Bool)

(declare-fun b_and!94549 () Bool)

(assert (=> b!1411717 (= tp!400770 b_and!94549)))

(declare-fun e!901203 () Bool)

(assert (=> b!1411717 (= e!901203 (and tp!400768 tp!400770))))

(declare-fun b!1411716 () Bool)

(declare-fun e!901204 () Bool)

(assert (=> b!1411716 (= e!901204 (and (inv!18832 (tag!2767 (h!19826 (rules!11012 sep!3)))) (inv!18856 (transformation!2505 (h!19826 (rules!11012 sep!3)))) e!901203))))

(declare-fun b!1411715 () Bool)

(declare-fun e!901205 () Bool)

(declare-fun tp!400769 () Bool)

(assert (=> b!1411715 (= e!901205 (and e!901204 tp!400769))))

(assert (=> b!1411567 (= tp!400701 e!901205)))

(assert (= b!1411716 b!1411717))

(assert (= b!1411715 b!1411716))

(assert (= (and b!1411567 ((_ is Cons!14425) (rules!11012 sep!3))) b!1411715))

(declare-fun m!1592107 () Bool)

(assert (=> b!1411716 m!1592107))

(declare-fun m!1592109 () Bool)

(assert (=> b!1411716 m!1592109))

(check-sat (not d!403469) (not b!1411678) (not b!1411703) (not b!1411591) (not b!1411702) (not b!1411603) (not b!1411594) (not b_next!35325) (not b!1411565) (not b!1411677) b_and!94543 (not b!1411692) (not d!403467) (not b!1411691) (not b!1411674) (not b!1411689) (not d!403475) (not d!403487) b_and!94547 (not b!1411589) (not d!403505) (not b!1411687) (not b!1411568) (not b!1411673) (not b!1411675) (not b!1411573) (not b_next!35319) (not b!1411690) (not d!403485) (not b_next!35323) (not d!403503) (not d!403501) (not d!403491) (not d!403473) (not b!1411713) (not b!1411601) (not b!1411712) (not b!1411715) (not b!1411716) b_and!94549 (not b!1411701) (not b!1411676) (not d!403489) (not b!1411688) (not b_next!35321) (not b!1411592) b_and!94545)
(check-sat b_and!94547 (not b_next!35325) (not b_next!35319) (not b_next!35323) b_and!94549 b_and!94543 (not b_next!35321) b_and!94545)
(get-model)

(declare-fun d!403517 () Bool)

(declare-fun c!232013 () Bool)

(assert (=> d!403517 (= c!232013 ((_ is Node!4791) (left!12321 (c!231995 objs!24))))))

(declare-fun e!901212 () Bool)

(assert (=> d!403517 (= (inv!18838 (left!12321 (c!231995 objs!24))) e!901212)))

(declare-fun b!1411727 () Bool)

(assert (=> b!1411727 (= e!901212 (inv!18852 (left!12321 (c!231995 objs!24))))))

(declare-fun b!1411728 () Bool)

(declare-fun e!901213 () Bool)

(assert (=> b!1411728 (= e!901212 e!901213)))

(declare-fun res!639286 () Bool)

(assert (=> b!1411728 (= res!639286 (not ((_ is Leaf!7240) (left!12321 (c!231995 objs!24)))))))

(assert (=> b!1411728 (=> res!639286 e!901213)))

(declare-fun b!1411729 () Bool)

(assert (=> b!1411729 (= e!901213 (inv!18853 (left!12321 (c!231995 objs!24))))))

(assert (= (and d!403517 c!232013) b!1411727))

(assert (= (and d!403517 (not c!232013)) b!1411728))

(assert (= (and b!1411728 (not res!639286)) b!1411729))

(declare-fun m!1592121 () Bool)

(assert (=> b!1411727 m!1592121))

(declare-fun m!1592123 () Bool)

(assert (=> b!1411729 m!1592123))

(assert (=> b!1411701 d!403517))

(declare-fun d!403519 () Bool)

(declare-fun c!232014 () Bool)

(assert (=> d!403519 (= c!232014 ((_ is Node!4791) (right!12651 (c!231995 objs!24))))))

(declare-fun e!901214 () Bool)

(assert (=> d!403519 (= (inv!18838 (right!12651 (c!231995 objs!24))) e!901214)))

(declare-fun b!1411730 () Bool)

(assert (=> b!1411730 (= e!901214 (inv!18852 (right!12651 (c!231995 objs!24))))))

(declare-fun b!1411731 () Bool)

(declare-fun e!901215 () Bool)

(assert (=> b!1411731 (= e!901214 e!901215)))

(declare-fun res!639287 () Bool)

(assert (=> b!1411731 (= res!639287 (not ((_ is Leaf!7240) (right!12651 (c!231995 objs!24)))))))

(assert (=> b!1411731 (=> res!639287 e!901215)))

(declare-fun b!1411732 () Bool)

(assert (=> b!1411732 (= e!901215 (inv!18853 (right!12651 (c!231995 objs!24))))))

(assert (= (and d!403519 c!232014) b!1411730))

(assert (= (and d!403519 (not c!232014)) b!1411731))

(assert (= (and b!1411731 (not res!639287)) b!1411732))

(declare-fun m!1592125 () Bool)

(assert (=> b!1411730 m!1592125))

(declare-fun m!1592127 () Bool)

(assert (=> b!1411732 m!1592127))

(assert (=> b!1411701 d!403519))

(declare-fun d!403521 () Bool)

(assert (=> d!403521 (= (isEmpty!8816 (rules!11012 acc!229)) ((_ is Nil!14425) (rules!11012 acc!229)))))

(assert (=> d!403491 d!403521))

(declare-fun d!403523 () Bool)

(assert (=> d!403523 (= (inv!18832 (tag!2767 (h!19826 (rules!11012 acc!229)))) (= (mod (str.len (value!81024 (tag!2767 (h!19826 (rules!11012 acc!229))))) 2) 0))))

(assert (=> b!1411713 d!403523))

(declare-fun d!403525 () Bool)

(declare-fun res!639290 () Bool)

(declare-fun e!901218 () Bool)

(assert (=> d!403525 (=> (not res!639290) (not e!901218))))

(declare-fun semiInverseModEq!971 (Int Int) Bool)

(assert (=> d!403525 (= res!639290 (semiInverseModEq!971 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229))))))))

(assert (=> d!403525 (= (inv!18856 (transformation!2505 (h!19826 (rules!11012 acc!229)))) e!901218)))

(declare-fun b!1411735 () Bool)

(declare-fun equivClasses!930 (Int Int) Bool)

(assert (=> b!1411735 (= e!901218 (equivClasses!930 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229))))))))

(assert (= (and d!403525 res!639290) b!1411735))

(declare-fun m!1592129 () Bool)

(assert (=> d!403525 m!1592129))

(declare-fun m!1592131 () Bool)

(assert (=> b!1411735 m!1592131))

(assert (=> b!1411713 d!403525))

(assert (=> b!1411568 d!403465))

(declare-fun d!403527 () Bool)

(assert (=> d!403527 (= (inv!18855 (xs!7518 (c!231995 objs!24))) (<= (size!11881 (innerList!4851 (xs!7518 (c!231995 objs!24)))) 2147483647))))

(declare-fun bs!338987 () Bool)

(assert (= bs!338987 d!403527))

(declare-fun m!1592133 () Bool)

(assert (=> bs!338987 m!1592133))

(assert (=> b!1411702 d!403527))

(declare-fun b!1411748 () Bool)

(declare-fun res!639303 () Bool)

(declare-fun e!901223 () Bool)

(assert (=> b!1411748 (=> (not res!639303) (not e!901223))))

(assert (=> b!1411748 (= res!639303 (isBalanced!1415 (left!12320 (c!231994 (tokens!1748 sep!3)))))))

(declare-fun b!1411750 () Bool)

(declare-fun isEmpty!8817 (Conc!4790) Bool)

(assert (=> b!1411750 (= e!901223 (not (isEmpty!8817 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1411751 () Bool)

(declare-fun res!639306 () Bool)

(assert (=> b!1411751 (=> (not res!639306) (not e!901223))))

(assert (=> b!1411751 (= res!639306 (not (isEmpty!8817 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1411752 () Bool)

(declare-fun res!639307 () Bool)

(assert (=> b!1411752 (=> (not res!639307) (not e!901223))))

(assert (=> b!1411752 (= res!639307 (isBalanced!1415 (right!12650 (c!231994 (tokens!1748 sep!3)))))))

(declare-fun b!1411753 () Bool)

(declare-fun e!901224 () Bool)

(assert (=> b!1411753 (= e!901224 e!901223)))

(declare-fun res!639308 () Bool)

(assert (=> b!1411753 (=> (not res!639308) (not e!901223))))

(declare-fun height!693 (Conc!4790) Int)

(assert (=> b!1411753 (= res!639308 (<= (- 1) (- (height!693 (left!12320 (c!231994 (tokens!1748 sep!3)))) (height!693 (right!12650 (c!231994 (tokens!1748 sep!3)))))))))

(declare-fun b!1411749 () Bool)

(declare-fun res!639304 () Bool)

(assert (=> b!1411749 (=> (not res!639304) (not e!901223))))

(assert (=> b!1411749 (= res!639304 (<= (- (height!693 (left!12320 (c!231994 (tokens!1748 sep!3)))) (height!693 (right!12650 (c!231994 (tokens!1748 sep!3))))) 1))))

(declare-fun d!403529 () Bool)

(declare-fun res!639305 () Bool)

(assert (=> d!403529 (=> res!639305 e!901224)))

(assert (=> d!403529 (= res!639305 (not ((_ is Node!4790) (c!231994 (tokens!1748 sep!3)))))))

(assert (=> d!403529 (= (isBalanced!1415 (c!231994 (tokens!1748 sep!3))) e!901224)))

(assert (= (and d!403529 (not res!639305)) b!1411753))

(assert (= (and b!1411753 res!639308) b!1411749))

(assert (= (and b!1411749 res!639304) b!1411748))

(assert (= (and b!1411748 res!639303) b!1411752))

(assert (= (and b!1411752 res!639307) b!1411751))

(assert (= (and b!1411751 res!639306) b!1411750))

(declare-fun m!1592135 () Bool)

(assert (=> b!1411753 m!1592135))

(declare-fun m!1592137 () Bool)

(assert (=> b!1411753 m!1592137))

(declare-fun m!1592139 () Bool)

(assert (=> b!1411751 m!1592139))

(declare-fun m!1592141 () Bool)

(assert (=> b!1411748 m!1592141))

(declare-fun m!1592143 () Bool)

(assert (=> b!1411752 m!1592143))

(declare-fun m!1592145 () Bool)

(assert (=> b!1411750 m!1592145))

(assert (=> b!1411749 m!1592135))

(assert (=> b!1411749 m!1592137))

(assert (=> d!403503 d!403529))

(assert (=> b!1411565 d!403471))

(declare-fun d!403531 () Bool)

(declare-fun res!639313 () Bool)

(declare-fun e!901229 () Bool)

(assert (=> d!403531 (=> res!639313 e!901229)))

(assert (=> d!403531 (= res!639313 ((_ is Nil!14426) (list!5651 objs!24)))))

(assert (=> d!403531 (= (forall!3528 (list!5651 objs!24) lambda!62403) e!901229)))

(declare-fun b!1411758 () Bool)

(declare-fun e!901230 () Bool)

(assert (=> b!1411758 (= e!901229 e!901230)))

(declare-fun res!639314 () Bool)

(assert (=> b!1411758 (=> (not res!639314) (not e!901230))))

(declare-fun dynLambda!6679 (Int PrintableTokens!792) Bool)

(assert (=> b!1411758 (= res!639314 (dynLambda!6679 lambda!62403 (h!19827 (list!5651 objs!24))))))

(declare-fun b!1411759 () Bool)

(assert (=> b!1411759 (= e!901230 (forall!3528 (t!123555 (list!5651 objs!24)) lambda!62403))))

(assert (= (and d!403531 (not res!639313)) b!1411758))

(assert (= (and b!1411758 res!639314) b!1411759))

(declare-fun b_lambda!44511 () Bool)

(assert (=> (not b_lambda!44511) (not b!1411758)))

(declare-fun m!1592147 () Bool)

(assert (=> b!1411758 m!1592147))

(declare-fun m!1592149 () Bool)

(assert (=> b!1411759 m!1592149))

(assert (=> d!403487 d!403531))

(declare-fun d!403533 () Bool)

(declare-fun list!5655 (Conc!4791) List!14492)

(assert (=> d!403533 (= (list!5651 objs!24) (list!5655 (c!231995 objs!24)))))

(declare-fun bs!338988 () Bool)

(assert (= bs!338988 d!403533))

(declare-fun m!1592151 () Bool)

(assert (=> bs!338988 m!1592151))

(assert (=> d!403487 d!403533))

(declare-fun b!1411769 () Bool)

(declare-fun e!901237 () Bool)

(declare-fun forall!3533 (IArray!9587 Int) Bool)

(assert (=> b!1411769 (= e!901237 (forall!3533 (xs!7518 (c!231995 objs!24)) lambda!62403))))

(declare-fun d!403535 () Bool)

(declare-fun lt!472430 () Bool)

(assert (=> d!403535 (= lt!472430 (forall!3528 (list!5655 (c!231995 objs!24)) lambda!62403))))

(declare-fun e!901239 () Bool)

(assert (=> d!403535 (= lt!472430 e!901239)))

(declare-fun res!639320 () Bool)

(assert (=> d!403535 (=> res!639320 e!901239)))

(assert (=> d!403535 (= res!639320 ((_ is Empty!4791) (c!231995 objs!24)))))

(assert (=> d!403535 (= (forall!3529 (c!231995 objs!24) lambda!62403) lt!472430)))

(declare-fun b!1411770 () Bool)

(declare-fun e!901238 () Bool)

(assert (=> b!1411770 (= e!901237 e!901238)))

(declare-datatypes ((Unit!20947 0))(
  ( (Unit!20948) )
))
(declare-fun lt!472429 () Unit!20947)

(declare-fun lemmaForallConcat!128 (List!14492 List!14492 Int) Unit!20947)

(assert (=> b!1411770 (= lt!472429 (lemmaForallConcat!128 (list!5655 (left!12321 (c!231995 objs!24))) (list!5655 (right!12651 (c!231995 objs!24))) lambda!62403))))

(declare-fun res!639319 () Bool)

(assert (=> b!1411770 (= res!639319 (forall!3529 (left!12321 (c!231995 objs!24)) lambda!62403))))

(assert (=> b!1411770 (=> (not res!639319) (not e!901238))))

(declare-fun b!1411771 () Bool)

(assert (=> b!1411771 (= e!901238 (forall!3529 (right!12651 (c!231995 objs!24)) lambda!62403))))

(declare-fun b!1411768 () Bool)

(assert (=> b!1411768 (= e!901239 e!901237)))

(declare-fun c!232017 () Bool)

(assert (=> b!1411768 (= c!232017 ((_ is Leaf!7240) (c!231995 objs!24)))))

(assert (= (and d!403535 (not res!639320)) b!1411768))

(assert (= (and b!1411768 c!232017) b!1411769))

(assert (= (and b!1411768 (not c!232017)) b!1411770))

(assert (= (and b!1411770 res!639319) b!1411771))

(declare-fun m!1592153 () Bool)

(assert (=> b!1411769 m!1592153))

(assert (=> d!403535 m!1592151))

(assert (=> d!403535 m!1592151))

(declare-fun m!1592155 () Bool)

(assert (=> d!403535 m!1592155))

(declare-fun m!1592157 () Bool)

(assert (=> b!1411770 m!1592157))

(declare-fun m!1592159 () Bool)

(assert (=> b!1411770 m!1592159))

(assert (=> b!1411770 m!1592157))

(assert (=> b!1411770 m!1592159))

(declare-fun m!1592161 () Bool)

(assert (=> b!1411770 m!1592161))

(declare-fun m!1592163 () Bool)

(assert (=> b!1411770 m!1592163))

(declare-fun m!1592165 () Bool)

(assert (=> b!1411771 m!1592165))

(assert (=> d!403487 d!403535))

(declare-fun b!1411811 () Bool)

(declare-fun e!901271 () Bool)

(assert (=> b!1411811 (= e!901271 true)))

(declare-fun b!1411810 () Bool)

(declare-fun e!901270 () Bool)

(assert (=> b!1411810 (= e!901270 e!901271)))

(declare-fun b!1411809 () Bool)

(declare-fun e!901269 () Bool)

(assert (=> b!1411809 (= e!901269 e!901270)))

(declare-fun d!403537 () Bool)

(assert (=> d!403537 e!901269))

(assert (= b!1411810 b!1411811))

(assert (= b!1411809 b!1411810))

(assert (= (and d!403537 ((_ is Cons!14425) (rules!11012 acc!229))) b!1411809))

(declare-fun order!8801 () Int)

(declare-fun order!8803 () Int)

(declare-fun lambda!62414 () Int)

(declare-fun dynLambda!6680 (Int Int) Int)

(declare-fun dynLambda!6681 (Int Int) Int)

(assert (=> b!1411811 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (dynLambda!6681 order!8803 lambda!62414))))

(declare-fun order!8805 () Int)

(declare-fun dynLambda!6682 (Int Int) Int)

(assert (=> b!1411811 (< (dynLambda!6682 order!8805 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (dynLambda!6681 order!8803 lambda!62414))))

(assert (=> d!403537 true))

(declare-fun e!901262 () Bool)

(assert (=> d!403537 e!901262))

(declare-fun res!639329 () Bool)

(assert (=> d!403537 (=> (not res!639329) (not e!901262))))

(declare-fun lt!472440 () Bool)

(declare-fun forall!3534 (List!14490 Int) Bool)

(declare-fun list!5656 (BalanceConc!9520) List!14490)

(assert (=> d!403537 (= res!639329 (= lt!472440 (forall!3534 (list!5656 (tokens!1748 acc!229)) lambda!62414)))))

(declare-fun forall!3535 (BalanceConc!9520 Int) Bool)

(assert (=> d!403537 (= lt!472440 (forall!3535 (tokens!1748 acc!229) lambda!62414))))

(assert (=> d!403537 (not (isEmpty!8816 (rules!11012 acc!229)))))

(assert (=> d!403537 (= (rulesProduceEachTokenIndividually!788 Lexer!2189 (rules!11012 acc!229) (tokens!1748 acc!229)) lt!472440)))

(declare-fun b!1411800 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!675 (LexerInterface!2191 List!14491 List!14490) Bool)

(assert (=> b!1411800 (= e!901262 (= lt!472440 (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 acc!229) (list!5656 (tokens!1748 acc!229)))))))

(assert (= (and d!403537 res!639329) b!1411800))

(declare-fun m!1592193 () Bool)

(assert (=> d!403537 m!1592193))

(assert (=> d!403537 m!1592193))

(declare-fun m!1592195 () Bool)

(assert (=> d!403537 m!1592195))

(declare-fun m!1592197 () Bool)

(assert (=> d!403537 m!1592197))

(assert (=> d!403537 m!1592067))

(assert (=> b!1411800 m!1592193))

(assert (=> b!1411800 m!1592193))

(declare-fun m!1592199 () Bool)

(assert (=> b!1411800 m!1592199))

(assert (=> b!1411674 d!403537))

(declare-fun d!403551 () Bool)

(declare-fun res!639334 () Bool)

(declare-fun e!901274 () Bool)

(assert (=> d!403551 (=> (not res!639334) (not e!901274))))

(declare-fun size!11885 (List!14490) Int)

(declare-fun list!5657 (IArray!9585) List!14490)

(assert (=> d!403551 (= res!639334 (<= (size!11885 (list!5657 (xs!7517 (c!231994 (tokens!1748 sep!3))))) 512))))

(assert (=> d!403551 (= (inv!18851 (c!231994 (tokens!1748 sep!3))) e!901274)))

(declare-fun b!1411818 () Bool)

(declare-fun res!639335 () Bool)

(assert (=> b!1411818 (=> (not res!639335) (not e!901274))))

(assert (=> b!1411818 (= res!639335 (= (csize!9811 (c!231994 (tokens!1748 sep!3))) (size!11885 (list!5657 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))

(declare-fun b!1411819 () Bool)

(assert (=> b!1411819 (= e!901274 (and (> (csize!9811 (c!231994 (tokens!1748 sep!3))) 0) (<= (csize!9811 (c!231994 (tokens!1748 sep!3))) 512)))))

(assert (= (and d!403551 res!639334) b!1411818))

(assert (= (and b!1411818 res!639335) b!1411819))

(declare-fun m!1592201 () Bool)

(assert (=> d!403551 m!1592201))

(assert (=> d!403551 m!1592201))

(declare-fun m!1592203 () Bool)

(assert (=> d!403551 m!1592203))

(assert (=> b!1411818 m!1592201))

(assert (=> b!1411818 m!1592201))

(assert (=> b!1411818 m!1592203))

(assert (=> b!1411591 d!403551))

(declare-fun d!403553 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!91 (LexerInterface!2191 BalanceConc!9520 Int List!14491) Bool)

(assert (=> d!403553 (= (separableTokens!173 Lexer!2189 (tokens!1748 acc!229) (rules!11012 acc!229)) (tokensListTwoByTwoPredicateSeparable!91 Lexer!2189 (tokens!1748 acc!229) 0 (rules!11012 acc!229)))))

(declare-fun bs!338996 () Bool)

(assert (= bs!338996 d!403553))

(declare-fun m!1592339 () Bool)

(assert (=> bs!338996 m!1592339))

(assert (=> b!1411675 d!403553))

(declare-fun b!1411944 () Bool)

(declare-fun res!639440 () Bool)

(declare-fun e!901336 () Bool)

(assert (=> b!1411944 (=> (not res!639440) (not e!901336))))

(assert (=> b!1411944 (= res!639440 (isBalanced!1416 (right!12651 (c!231995 objs!24))))))

(declare-fun d!403607 () Bool)

(declare-fun res!639443 () Bool)

(declare-fun e!901335 () Bool)

(assert (=> d!403607 (=> res!639443 e!901335)))

(assert (=> d!403607 (= res!639443 (not ((_ is Node!4791) (c!231995 objs!24))))))

(assert (=> d!403607 (= (isBalanced!1416 (c!231995 objs!24)) e!901335)))

(declare-fun b!1411945 () Bool)

(declare-fun res!639445 () Bool)

(assert (=> b!1411945 (=> (not res!639445) (not e!901336))))

(assert (=> b!1411945 (= res!639445 (isBalanced!1416 (left!12321 (c!231995 objs!24))))))

(declare-fun b!1411946 () Bool)

(assert (=> b!1411946 (= e!901336 (not (isEmpty!8815 (right!12651 (c!231995 objs!24)))))))

(declare-fun b!1411947 () Bool)

(declare-fun res!639444 () Bool)

(assert (=> b!1411947 (=> (not res!639444) (not e!901336))))

(assert (=> b!1411947 (= res!639444 (not (isEmpty!8815 (left!12321 (c!231995 objs!24)))))))

(declare-fun b!1411948 () Bool)

(declare-fun res!639441 () Bool)

(assert (=> b!1411948 (=> (not res!639441) (not e!901336))))

(declare-fun height!694 (Conc!4791) Int)

(assert (=> b!1411948 (= res!639441 (<= (- (height!694 (left!12321 (c!231995 objs!24))) (height!694 (right!12651 (c!231995 objs!24)))) 1))))

(declare-fun b!1411949 () Bool)

(assert (=> b!1411949 (= e!901335 e!901336)))

(declare-fun res!639442 () Bool)

(assert (=> b!1411949 (=> (not res!639442) (not e!901336))))

(assert (=> b!1411949 (= res!639442 (<= (- 1) (- (height!694 (left!12321 (c!231995 objs!24))) (height!694 (right!12651 (c!231995 objs!24))))))))

(assert (= (and d!403607 (not res!639443)) b!1411949))

(assert (= (and b!1411949 res!639442) b!1411948))

(assert (= (and b!1411948 res!639441) b!1411945))

(assert (= (and b!1411945 res!639445) b!1411944))

(assert (= (and b!1411944 res!639440) b!1411947))

(assert (= (and b!1411947 res!639444) b!1411946))

(declare-fun m!1592359 () Bool)

(assert (=> b!1411945 m!1592359))

(declare-fun m!1592361 () Bool)

(assert (=> b!1411947 m!1592361))

(declare-fun m!1592363 () Bool)

(assert (=> b!1411948 m!1592363))

(declare-fun m!1592365 () Bool)

(assert (=> b!1411948 m!1592365))

(declare-fun m!1592367 () Bool)

(assert (=> b!1411944 m!1592367))

(assert (=> b!1411949 m!1592363))

(assert (=> b!1411949 m!1592365))

(declare-fun m!1592369 () Bool)

(assert (=> b!1411946 m!1592369))

(assert (=> d!403489 d!403607))

(declare-fun d!403615 () Bool)

(declare-fun c!232030 () Bool)

(assert (=> d!403615 (= c!232030 ((_ is Node!4790) (left!12320 (c!231994 (tokens!1748 sep!3)))))))

(declare-fun e!901337 () Bool)

(assert (=> d!403615 (= (inv!18840 (left!12320 (c!231994 (tokens!1748 sep!3)))) e!901337)))

(declare-fun b!1411950 () Bool)

(assert (=> b!1411950 (= e!901337 (inv!18850 (left!12320 (c!231994 (tokens!1748 sep!3)))))))

(declare-fun b!1411951 () Bool)

(declare-fun e!901338 () Bool)

(assert (=> b!1411951 (= e!901337 e!901338)))

(declare-fun res!639446 () Bool)

(assert (=> b!1411951 (= res!639446 (not ((_ is Leaf!7239) (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> b!1411951 (=> res!639446 e!901338)))

(declare-fun b!1411952 () Bool)

(assert (=> b!1411952 (= e!901338 (inv!18851 (left!12320 (c!231994 (tokens!1748 sep!3)))))))

(assert (= (and d!403615 c!232030) b!1411950))

(assert (= (and d!403615 (not c!232030)) b!1411951))

(assert (= (and b!1411951 (not res!639446)) b!1411952))

(declare-fun m!1592371 () Bool)

(assert (=> b!1411950 m!1592371))

(declare-fun m!1592373 () Bool)

(assert (=> b!1411952 m!1592373))

(assert (=> b!1411687 d!403615))

(declare-fun d!403617 () Bool)

(declare-fun c!232031 () Bool)

(assert (=> d!403617 (= c!232031 ((_ is Node!4790) (right!12650 (c!231994 (tokens!1748 sep!3)))))))

(declare-fun e!901341 () Bool)

(assert (=> d!403617 (= (inv!18840 (right!12650 (c!231994 (tokens!1748 sep!3)))) e!901341)))

(declare-fun b!1411957 () Bool)

(assert (=> b!1411957 (= e!901341 (inv!18850 (right!12650 (c!231994 (tokens!1748 sep!3)))))))

(declare-fun b!1411958 () Bool)

(declare-fun e!901342 () Bool)

(assert (=> b!1411958 (= e!901341 e!901342)))

(declare-fun res!639451 () Bool)

(assert (=> b!1411958 (= res!639451 (not ((_ is Leaf!7239) (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> b!1411958 (=> res!639451 e!901342)))

(declare-fun b!1411959 () Bool)

(assert (=> b!1411959 (= e!901342 (inv!18851 (right!12650 (c!231994 (tokens!1748 sep!3)))))))

(assert (= (and d!403617 c!232031) b!1411957))

(assert (= (and d!403617 (not c!232031)) b!1411958))

(assert (= (and b!1411958 (not res!639451)) b!1411959))

(declare-fun m!1592375 () Bool)

(assert (=> b!1411957 m!1592375))

(declare-fun m!1592377 () Bool)

(assert (=> b!1411959 m!1592377))

(assert (=> b!1411687 d!403617))

(declare-fun d!403619 () Bool)

(declare-fun res!639460 () Bool)

(declare-fun e!901352 () Bool)

(assert (=> d!403619 (=> (not res!639460) (not e!901352))))

(declare-fun size!11886 (Conc!4790) Int)

(assert (=> d!403619 (= res!639460 (= (csize!9810 (c!231994 (tokens!1748 sep!3))) (+ (size!11886 (left!12320 (c!231994 (tokens!1748 sep!3)))) (size!11886 (right!12650 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> d!403619 (= (inv!18850 (c!231994 (tokens!1748 sep!3))) e!901352)))

(declare-fun b!1411975 () Bool)

(declare-fun res!639461 () Bool)

(assert (=> b!1411975 (=> (not res!639461) (not e!901352))))

(assert (=> b!1411975 (= res!639461 (and (not (= (left!12320 (c!231994 (tokens!1748 sep!3))) Empty!4790)) (not (= (right!12650 (c!231994 (tokens!1748 sep!3))) Empty!4790))))))

(declare-fun b!1411976 () Bool)

(declare-fun res!639462 () Bool)

(assert (=> b!1411976 (=> (not res!639462) (not e!901352))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1411976 (= res!639462 (= (cheight!5001 (c!231994 (tokens!1748 sep!3))) (+ (max!0 (height!693 (left!12320 (c!231994 (tokens!1748 sep!3)))) (height!693 (right!12650 (c!231994 (tokens!1748 sep!3))))) 1)))))

(declare-fun b!1411977 () Bool)

(assert (=> b!1411977 (= e!901352 (<= 0 (cheight!5001 (c!231994 (tokens!1748 sep!3)))))))

(assert (= (and d!403619 res!639460) b!1411975))

(assert (= (and b!1411975 res!639461) b!1411976))

(assert (= (and b!1411976 res!639462) b!1411977))

(declare-fun m!1592387 () Bool)

(assert (=> d!403619 m!1592387))

(declare-fun m!1592389 () Bool)

(assert (=> d!403619 m!1592389))

(assert (=> b!1411976 m!1592135))

(assert (=> b!1411976 m!1592137))

(assert (=> b!1411976 m!1592135))

(assert (=> b!1411976 m!1592137))

(declare-fun m!1592391 () Bool)

(assert (=> b!1411976 m!1592391))

(assert (=> b!1411589 d!403619))

(declare-fun d!403621 () Bool)

(assert (=> d!403621 (= (head!2678 (list!5651 objs!24)) (h!19827 (list!5651 objs!24)))))

(assert (=> d!403467 d!403621))

(assert (=> d!403467 d!403533))

(declare-fun d!403623 () Bool)

(declare-fun lt!472452 () PrintableTokens!792)

(assert (=> d!403623 (= lt!472452 (head!2678 (list!5655 (c!231995 objs!24))))))

(declare-fun e!901366 () PrintableTokens!792)

(assert (=> d!403623 (= lt!472452 e!901366)))

(declare-fun c!232034 () Bool)

(assert (=> d!403623 (= c!232034 ((_ is Leaf!7240) (c!231995 objs!24)))))

(assert (=> d!403623 (isBalanced!1416 (c!231995 objs!24))))

(assert (=> d!403623 (= (head!2679 (c!231995 objs!24)) lt!472452)))

(declare-fun b!1411995 () Bool)

(declare-fun apply!3695 (IArray!9587 Int) PrintableTokens!792)

(assert (=> b!1411995 (= e!901366 (apply!3695 (xs!7518 (c!231995 objs!24)) 0))))

(declare-fun b!1411996 () Bool)

(assert (=> b!1411996 (= e!901366 (head!2679 (left!12321 (c!231995 objs!24))))))

(assert (= (and d!403623 c!232034) b!1411995))

(assert (= (and d!403623 (not c!232034)) b!1411996))

(assert (=> d!403623 m!1592151))

(assert (=> d!403623 m!1592151))

(declare-fun m!1592411 () Bool)

(assert (=> d!403623 m!1592411))

(assert (=> d!403623 m!1592015))

(declare-fun m!1592413 () Bool)

(assert (=> b!1411995 m!1592413))

(declare-fun m!1592415 () Bool)

(assert (=> b!1411996 m!1592415))

(assert (=> d!403467 d!403623))

(assert (=> d!403467 d!403469))

(declare-fun d!403625 () Bool)

(declare-fun res!639465 () Bool)

(declare-fun e!901387 () Bool)

(assert (=> d!403625 (=> (not res!639465) (not e!901387))))

(declare-fun rulesValid!941 (LexerInterface!2191 List!14491) Bool)

(assert (=> d!403625 (= res!639465 (rulesValid!941 Lexer!2189 (rules!11012 acc!229)))))

(assert (=> d!403625 (= (rulesInvariant!2061 Lexer!2189 (rules!11012 acc!229)) e!901387)))

(declare-fun b!1412016 () Bool)

(declare-datatypes ((List!14494 0))(
  ( (Nil!14428) (Cons!14428 (h!19829 String!17211) (t!123607 List!14494)) )
))
(declare-fun noDuplicateTag!941 (LexerInterface!2191 List!14491 List!14494) Bool)

(assert (=> b!1412016 (= e!901387 (noDuplicateTag!941 Lexer!2189 (rules!11012 acc!229) Nil!14428))))

(assert (= (and d!403625 res!639465) b!1412016))

(declare-fun m!1592433 () Bool)

(assert (=> d!403625 m!1592433))

(declare-fun m!1592435 () Bool)

(assert (=> b!1412016 m!1592435))

(assert (=> b!1411673 d!403625))

(declare-fun d!403627 () Bool)

(assert (=> d!403627 (= (inv!18854 (xs!7517 (c!231994 (tokens!1748 sep!3)))) (<= (size!11885 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))) 2147483647))))

(declare-fun bs!338998 () Bool)

(assert (= bs!338998 d!403627))

(declare-fun m!1592437 () Bool)

(assert (=> bs!338998 m!1592437))

(assert (=> b!1411688 d!403627))

(declare-fun d!403629 () Bool)

(declare-fun res!639466 () Bool)

(declare-fun e!901390 () Bool)

(assert (=> d!403629 (=> (not res!639466) (not e!901390))))

(assert (=> d!403629 (= res!639466 (rulesValid!941 Lexer!2189 (rules!11012 sep!3)))))

(assert (=> d!403629 (= (rulesInvariant!2061 Lexer!2189 (rules!11012 sep!3)) e!901390)))

(declare-fun b!1412019 () Bool)

(assert (=> b!1412019 (= e!901390 (noDuplicateTag!941 Lexer!2189 (rules!11012 sep!3) Nil!14428))))

(assert (= (and d!403629 res!639466) b!1412019))

(declare-fun m!1592439 () Bool)

(assert (=> d!403629 m!1592439))

(declare-fun m!1592441 () Bool)

(assert (=> b!1412019 m!1592441))

(assert (=> b!1411676 d!403629))

(declare-fun d!403631 () Bool)

(declare-fun lt!472455 () Int)

(assert (=> d!403631 (>= lt!472455 0)))

(declare-fun e!901409 () Int)

(assert (=> d!403631 (= lt!472455 e!901409)))

(declare-fun c!232037 () Bool)

(assert (=> d!403631 (= c!232037 ((_ is Nil!14426) (list!5651 objs!24)))))

(assert (=> d!403631 (= (size!11881 (list!5651 objs!24)) lt!472455)))

(declare-fun b!1412038 () Bool)

(assert (=> b!1412038 (= e!901409 0)))

(declare-fun b!1412039 () Bool)

(assert (=> b!1412039 (= e!901409 (+ 1 (size!11881 (t!123555 (list!5651 objs!24)))))))

(assert (= (and d!403631 c!232037) b!1412038))

(assert (= (and d!403631 (not c!232037)) b!1412039))

(declare-fun m!1592463 () Bool)

(assert (=> b!1412039 m!1592463))

(assert (=> d!403473 d!403631))

(assert (=> d!403473 d!403533))

(declare-fun d!403633 () Bool)

(declare-fun lt!472458 () Int)

(assert (=> d!403633 (= lt!472458 (size!11881 (list!5655 (c!231995 objs!24))))))

(assert (=> d!403633 (= lt!472458 (ite ((_ is Empty!4791) (c!231995 objs!24)) 0 (ite ((_ is Leaf!7240) (c!231995 objs!24)) (csize!9813 (c!231995 objs!24)) (csize!9812 (c!231995 objs!24)))))))

(assert (=> d!403633 (= (size!11882 (c!231995 objs!24)) lt!472458)))

(declare-fun bs!339000 () Bool)

(assert (= bs!339000 d!403633))

(assert (=> bs!339000 m!1592151))

(assert (=> bs!339000 m!1592151))

(declare-fun m!1592475 () Bool)

(assert (=> bs!339000 m!1592475))

(assert (=> d!403473 d!403633))

(declare-fun bs!339001 () Bool)

(declare-fun d!403637 () Bool)

(assert (= bs!339001 (and d!403637 d!403537)))

(declare-fun lambda!62415 () Int)

(assert (=> bs!339001 (= (= (rules!11012 sep!3) (rules!11012 acc!229)) (= lambda!62415 lambda!62414))))

(declare-fun b!1412043 () Bool)

(declare-fun e!901413 () Bool)

(assert (=> b!1412043 (= e!901413 true)))

(declare-fun b!1412042 () Bool)

(declare-fun e!901412 () Bool)

(assert (=> b!1412042 (= e!901412 e!901413)))

(declare-fun b!1412041 () Bool)

(declare-fun e!901411 () Bool)

(assert (=> b!1412041 (= e!901411 e!901412)))

(assert (=> d!403637 e!901411))

(assert (= b!1412042 b!1412043))

(assert (= b!1412041 b!1412042))

(assert (= (and d!403637 ((_ is Cons!14425) (rules!11012 sep!3))) b!1412041))

(assert (=> b!1412043 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (dynLambda!6681 order!8803 lambda!62415))))

(assert (=> b!1412043 (< (dynLambda!6682 order!8805 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (dynLambda!6681 order!8803 lambda!62415))))

(assert (=> d!403637 true))

(declare-fun e!901410 () Bool)

(assert (=> d!403637 e!901410))

(declare-fun res!639467 () Bool)

(assert (=> d!403637 (=> (not res!639467) (not e!901410))))

(declare-fun lt!472459 () Bool)

(assert (=> d!403637 (= res!639467 (= lt!472459 (forall!3534 (list!5656 (tokens!1748 sep!3)) lambda!62415)))))

(assert (=> d!403637 (= lt!472459 (forall!3535 (tokens!1748 sep!3) lambda!62415))))

(assert (=> d!403637 (not (isEmpty!8816 (rules!11012 sep!3)))))

(assert (=> d!403637 (= (rulesProduceEachTokenIndividually!788 Lexer!2189 (rules!11012 sep!3) (tokens!1748 sep!3)) lt!472459)))

(declare-fun b!1412040 () Bool)

(assert (=> b!1412040 (= e!901410 (= lt!472459 (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 sep!3) (list!5656 (tokens!1748 sep!3)))))))

(assert (= (and d!403637 res!639467) b!1412040))

(declare-fun m!1592477 () Bool)

(assert (=> d!403637 m!1592477))

(assert (=> d!403637 m!1592477))

(declare-fun m!1592479 () Bool)

(assert (=> d!403637 m!1592479))

(declare-fun m!1592481 () Bool)

(assert (=> d!403637 m!1592481))

(assert (=> d!403637 m!1592075))

(assert (=> b!1412040 m!1592477))

(assert (=> b!1412040 m!1592477))

(declare-fun m!1592483 () Bool)

(assert (=> b!1412040 m!1592483))

(assert (=> b!1411677 d!403637))

(declare-fun d!403639 () Bool)

(assert (=> d!403639 (= (separableTokens!173 Lexer!2189 (tokens!1748 sep!3) (rules!11012 sep!3)) (tokensListTwoByTwoPredicateSeparable!91 Lexer!2189 (tokens!1748 sep!3) 0 (rules!11012 sep!3)))))

(declare-fun bs!339002 () Bool)

(assert (= bs!339002 d!403639))

(declare-fun m!1592485 () Bool)

(assert (=> bs!339002 m!1592485))

(assert (=> b!1411678 d!403639))

(declare-fun b!1412044 () Bool)

(declare-fun res!639468 () Bool)

(declare-fun e!901414 () Bool)

(assert (=> b!1412044 (=> (not res!639468) (not e!901414))))

(assert (=> b!1412044 (= res!639468 (isBalanced!1415 (left!12320 (c!231994 (tokens!1748 acc!229)))))))

(declare-fun b!1412046 () Bool)

(assert (=> b!1412046 (= e!901414 (not (isEmpty!8817 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412047 () Bool)

(declare-fun res!639471 () Bool)

(assert (=> b!1412047 (=> (not res!639471) (not e!901414))))

(assert (=> b!1412047 (= res!639471 (not (isEmpty!8817 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412048 () Bool)

(declare-fun res!639472 () Bool)

(assert (=> b!1412048 (=> (not res!639472) (not e!901414))))

(assert (=> b!1412048 (= res!639472 (isBalanced!1415 (right!12650 (c!231994 (tokens!1748 acc!229)))))))

(declare-fun b!1412049 () Bool)

(declare-fun e!901415 () Bool)

(assert (=> b!1412049 (= e!901415 e!901414)))

(declare-fun res!639473 () Bool)

(assert (=> b!1412049 (=> (not res!639473) (not e!901414))))

(assert (=> b!1412049 (= res!639473 (<= (- 1) (- (height!693 (left!12320 (c!231994 (tokens!1748 acc!229)))) (height!693 (right!12650 (c!231994 (tokens!1748 acc!229)))))))))

(declare-fun b!1412045 () Bool)

(declare-fun res!639469 () Bool)

(assert (=> b!1412045 (=> (not res!639469) (not e!901414))))

(assert (=> b!1412045 (= res!639469 (<= (- (height!693 (left!12320 (c!231994 (tokens!1748 acc!229)))) (height!693 (right!12650 (c!231994 (tokens!1748 acc!229))))) 1))))

(declare-fun d!403641 () Bool)

(declare-fun res!639470 () Bool)

(assert (=> d!403641 (=> res!639470 e!901415)))

(assert (=> d!403641 (= res!639470 (not ((_ is Node!4790) (c!231994 (tokens!1748 acc!229)))))))

(assert (=> d!403641 (= (isBalanced!1415 (c!231994 (tokens!1748 acc!229))) e!901415)))

(assert (= (and d!403641 (not res!639470)) b!1412049))

(assert (= (and b!1412049 res!639473) b!1412045))

(assert (= (and b!1412045 res!639469) b!1412044))

(assert (= (and b!1412044 res!639468) b!1412048))

(assert (= (and b!1412048 res!639472) b!1412047))

(assert (= (and b!1412047 res!639471) b!1412046))

(declare-fun m!1592487 () Bool)

(assert (=> b!1412049 m!1592487))

(declare-fun m!1592489 () Bool)

(assert (=> b!1412049 m!1592489))

(declare-fun m!1592491 () Bool)

(assert (=> b!1412047 m!1592491))

(declare-fun m!1592493 () Bool)

(assert (=> b!1412044 m!1592493))

(declare-fun m!1592495 () Bool)

(assert (=> b!1412048 m!1592495))

(declare-fun m!1592497 () Bool)

(assert (=> b!1412046 m!1592497))

(assert (=> b!1412045 m!1592487))

(assert (=> b!1412045 m!1592489))

(assert (=> d!403485 d!403641))

(declare-fun d!403643 () Bool)

(assert (=> d!403643 (= (isEmpty!8814 (list!5651 objs!24)) ((_ is Nil!14426) (list!5651 objs!24)))))

(assert (=> d!403469 d!403643))

(assert (=> d!403469 d!403533))

(declare-fun d!403645 () Bool)

(declare-fun lt!472462 () Bool)

(assert (=> d!403645 (= lt!472462 (isEmpty!8814 (list!5655 (c!231995 objs!24))))))

(assert (=> d!403645 (= lt!472462 (= (size!11882 (c!231995 objs!24)) 0))))

(assert (=> d!403645 (= (isEmpty!8815 (c!231995 objs!24)) lt!472462)))

(declare-fun bs!339003 () Bool)

(assert (= bs!339003 d!403645))

(assert (=> bs!339003 m!1592151))

(assert (=> bs!339003 m!1592151))

(declare-fun m!1592499 () Bool)

(assert (=> bs!339003 m!1592499))

(assert (=> bs!339003 m!1591993))

(assert (=> d!403469 d!403645))

(declare-fun d!403647 () Bool)

(declare-fun res!639474 () Bool)

(declare-fun e!901416 () Bool)

(assert (=> d!403647 (=> (not res!639474) (not e!901416))))

(assert (=> d!403647 (= res!639474 (<= (size!11885 (list!5657 (xs!7517 (c!231994 (tokens!1748 acc!229))))) 512))))

(assert (=> d!403647 (= (inv!18851 (c!231994 (tokens!1748 acc!229))) e!901416)))

(declare-fun b!1412050 () Bool)

(declare-fun res!639475 () Bool)

(assert (=> b!1412050 (=> (not res!639475) (not e!901416))))

(assert (=> b!1412050 (= res!639475 (= (csize!9811 (c!231994 (tokens!1748 acc!229))) (size!11885 (list!5657 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))

(declare-fun b!1412051 () Bool)

(assert (=> b!1412051 (= e!901416 (and (> (csize!9811 (c!231994 (tokens!1748 acc!229))) 0) (<= (csize!9811 (c!231994 (tokens!1748 acc!229))) 512)))))

(assert (= (and d!403647 res!639474) b!1412050))

(assert (= (and b!1412050 res!639475) b!1412051))

(declare-fun m!1592501 () Bool)

(assert (=> d!403647 m!1592501))

(assert (=> d!403647 m!1592501))

(declare-fun m!1592503 () Bool)

(assert (=> d!403647 m!1592503))

(assert (=> b!1412050 m!1592501))

(assert (=> b!1412050 m!1592501))

(assert (=> b!1412050 m!1592503))

(assert (=> b!1411594 d!403647))

(assert (=> b!1411573 d!403463))

(declare-fun d!403649 () Bool)

(declare-fun res!639480 () Bool)

(declare-fun e!901419 () Bool)

(assert (=> d!403649 (=> (not res!639480) (not e!901419))))

(declare-fun list!5659 (IArray!9587) List!14492)

(assert (=> d!403649 (= res!639480 (<= (size!11881 (list!5659 (xs!7518 (c!231995 objs!24)))) 512))))

(assert (=> d!403649 (= (inv!18853 (c!231995 objs!24)) e!901419)))

(declare-fun b!1412056 () Bool)

(declare-fun res!639481 () Bool)

(assert (=> b!1412056 (=> (not res!639481) (not e!901419))))

(assert (=> b!1412056 (= res!639481 (= (csize!9813 (c!231995 objs!24)) (size!11881 (list!5659 (xs!7518 (c!231995 objs!24))))))))

(declare-fun b!1412057 () Bool)

(assert (=> b!1412057 (= e!901419 (and (> (csize!9813 (c!231995 objs!24)) 0) (<= (csize!9813 (c!231995 objs!24)) 512)))))

(assert (= (and d!403649 res!639480) b!1412056))

(assert (= (and b!1412056 res!639481) b!1412057))

(declare-fun m!1592505 () Bool)

(assert (=> d!403649 m!1592505))

(assert (=> d!403649 m!1592505))

(declare-fun m!1592507 () Bool)

(assert (=> d!403649 m!1592507))

(assert (=> b!1412056 m!1592505))

(assert (=> b!1412056 m!1592505))

(assert (=> b!1412056 m!1592507))

(assert (=> b!1411603 d!403649))

(declare-fun d!403651 () Bool)

(assert (=> d!403651 (= (isEmpty!8816 (rules!11012 sep!3)) ((_ is Nil!14425) (rules!11012 sep!3)))))

(assert (=> d!403501 d!403651))

(declare-fun d!403653 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!386) Rule!4810)

(declare-fun integerLiteralRule!0 (JsonLexer!386) Rule!4810)

(declare-fun floatLiteralRule!0 (JsonLexer!386) Rule!4810)

(declare-fun trueRule!0 (JsonLexer!386) Rule!4810)

(declare-fun falseRule!0 (JsonLexer!386) Rule!4810)

(declare-fun nullRule!0 (JsonLexer!386) Rule!4810)

(declare-fun jsonstringRule!0 (JsonLexer!386) Rule!4810)

(declare-fun lBraceRule!0 (JsonLexer!386) Rule!4810)

(declare-fun rBraceRule!0 (JsonLexer!386) Rule!4810)

(declare-fun lBracketRule!0 (JsonLexer!386) Rule!4810)

(declare-fun rBracketRule!0 (JsonLexer!386) Rule!4810)

(declare-fun colonRule!0 (JsonLexer!386) Rule!4810)

(declare-fun commaRule!0 (JsonLexer!386) Rule!4810)

(declare-fun eofRule!0 (JsonLexer!386) Rule!4810)

(assert (=> d!403653 (= (rules!109 JsonLexer!387) (Cons!14425 (whitespaceRule!0 JsonLexer!387) (Cons!14425 (integerLiteralRule!0 JsonLexer!387) (Cons!14425 (floatLiteralRule!0 JsonLexer!387) (Cons!14425 (trueRule!0 JsonLexer!387) (Cons!14425 (falseRule!0 JsonLexer!387) (Cons!14425 (nullRule!0 JsonLexer!387) (Cons!14425 (jsonstringRule!0 JsonLexer!387) (Cons!14425 (lBraceRule!0 JsonLexer!387) (Cons!14425 (rBraceRule!0 JsonLexer!387) (Cons!14425 (lBracketRule!0 JsonLexer!387) (Cons!14425 (rBracketRule!0 JsonLexer!387) (Cons!14425 (colonRule!0 JsonLexer!387) (Cons!14425 (commaRule!0 JsonLexer!387) (Cons!14425 (eofRule!0 JsonLexer!387) Nil!14425)))))))))))))))))

(declare-fun bs!339004 () Bool)

(assert (= bs!339004 d!403653))

(declare-fun m!1592509 () Bool)

(assert (=> bs!339004 m!1592509))

(declare-fun m!1592511 () Bool)

(assert (=> bs!339004 m!1592511))

(declare-fun m!1592513 () Bool)

(assert (=> bs!339004 m!1592513))

(declare-fun m!1592515 () Bool)

(assert (=> bs!339004 m!1592515))

(declare-fun m!1592517 () Bool)

(assert (=> bs!339004 m!1592517))

(declare-fun m!1592519 () Bool)

(assert (=> bs!339004 m!1592519))

(declare-fun m!1592521 () Bool)

(assert (=> bs!339004 m!1592521))

(declare-fun m!1592523 () Bool)

(assert (=> bs!339004 m!1592523))

(declare-fun m!1592525 () Bool)

(assert (=> bs!339004 m!1592525))

(declare-fun m!1592527 () Bool)

(assert (=> bs!339004 m!1592527))

(declare-fun m!1592529 () Bool)

(assert (=> bs!339004 m!1592529))

(declare-fun m!1592531 () Bool)

(assert (=> bs!339004 m!1592531))

(declare-fun m!1592533 () Bool)

(assert (=> bs!339004 m!1592533))

(declare-fun m!1592535 () Bool)

(assert (=> bs!339004 m!1592535))

(assert (=> d!403475 d!403653))

(assert (=> d!403505 d!403653))

(declare-fun d!403655 () Bool)

(declare-fun c!232038 () Bool)

(assert (=> d!403655 (= c!232038 ((_ is Node!4790) (left!12320 (c!231994 (tokens!1748 acc!229)))))))

(declare-fun e!901420 () Bool)

(assert (=> d!403655 (= (inv!18840 (left!12320 (c!231994 (tokens!1748 acc!229)))) e!901420)))

(declare-fun b!1412058 () Bool)

(assert (=> b!1412058 (= e!901420 (inv!18850 (left!12320 (c!231994 (tokens!1748 acc!229)))))))

(declare-fun b!1412059 () Bool)

(declare-fun e!901421 () Bool)

(assert (=> b!1412059 (= e!901420 e!901421)))

(declare-fun res!639482 () Bool)

(assert (=> b!1412059 (= res!639482 (not ((_ is Leaf!7239) (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> b!1412059 (=> res!639482 e!901421)))

(declare-fun b!1412060 () Bool)

(assert (=> b!1412060 (= e!901421 (inv!18851 (left!12320 (c!231994 (tokens!1748 acc!229)))))))

(assert (= (and d!403655 c!232038) b!1412058))

(assert (= (and d!403655 (not c!232038)) b!1412059))

(assert (= (and b!1412059 (not res!639482)) b!1412060))

(declare-fun m!1592537 () Bool)

(assert (=> b!1412058 m!1592537))

(declare-fun m!1592539 () Bool)

(assert (=> b!1412060 m!1592539))

(assert (=> b!1411690 d!403655))

(declare-fun d!403657 () Bool)

(declare-fun c!232039 () Bool)

(assert (=> d!403657 (= c!232039 ((_ is Node!4790) (right!12650 (c!231994 (tokens!1748 acc!229)))))))

(declare-fun e!901422 () Bool)

(assert (=> d!403657 (= (inv!18840 (right!12650 (c!231994 (tokens!1748 acc!229)))) e!901422)))

(declare-fun b!1412061 () Bool)

(assert (=> b!1412061 (= e!901422 (inv!18850 (right!12650 (c!231994 (tokens!1748 acc!229)))))))

(declare-fun b!1412062 () Bool)

(declare-fun e!901423 () Bool)

(assert (=> b!1412062 (= e!901422 e!901423)))

(declare-fun res!639483 () Bool)

(assert (=> b!1412062 (= res!639483 (not ((_ is Leaf!7239) (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> b!1412062 (=> res!639483 e!901423)))

(declare-fun b!1412063 () Bool)

(assert (=> b!1412063 (= e!901423 (inv!18851 (right!12650 (c!231994 (tokens!1748 acc!229)))))))

(assert (= (and d!403657 c!232039) b!1412061))

(assert (= (and d!403657 (not c!232039)) b!1412062))

(assert (= (and b!1412062 (not res!639483)) b!1412063))

(declare-fun m!1592541 () Bool)

(assert (=> b!1412061 m!1592541))

(declare-fun m!1592543 () Bool)

(assert (=> b!1412063 m!1592543))

(assert (=> b!1411690 d!403657))

(declare-fun d!403659 () Bool)

(declare-fun res!639484 () Bool)

(declare-fun e!901424 () Bool)

(assert (=> d!403659 (=> (not res!639484) (not e!901424))))

(assert (=> d!403659 (= res!639484 (= (csize!9810 (c!231994 (tokens!1748 acc!229))) (+ (size!11886 (left!12320 (c!231994 (tokens!1748 acc!229)))) (size!11886 (right!12650 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> d!403659 (= (inv!18850 (c!231994 (tokens!1748 acc!229))) e!901424)))

(declare-fun b!1412064 () Bool)

(declare-fun res!639485 () Bool)

(assert (=> b!1412064 (=> (not res!639485) (not e!901424))))

(assert (=> b!1412064 (= res!639485 (and (not (= (left!12320 (c!231994 (tokens!1748 acc!229))) Empty!4790)) (not (= (right!12650 (c!231994 (tokens!1748 acc!229))) Empty!4790))))))

(declare-fun b!1412065 () Bool)

(declare-fun res!639486 () Bool)

(assert (=> b!1412065 (=> (not res!639486) (not e!901424))))

(assert (=> b!1412065 (= res!639486 (= (cheight!5001 (c!231994 (tokens!1748 acc!229))) (+ (max!0 (height!693 (left!12320 (c!231994 (tokens!1748 acc!229)))) (height!693 (right!12650 (c!231994 (tokens!1748 acc!229))))) 1)))))

(declare-fun b!1412066 () Bool)

(assert (=> b!1412066 (= e!901424 (<= 0 (cheight!5001 (c!231994 (tokens!1748 acc!229)))))))

(assert (= (and d!403659 res!639484) b!1412064))

(assert (= (and b!1412064 res!639485) b!1412065))

(assert (= (and b!1412065 res!639486) b!1412066))

(declare-fun m!1592545 () Bool)

(assert (=> d!403659 m!1592545))

(declare-fun m!1592547 () Bool)

(assert (=> d!403659 m!1592547))

(assert (=> b!1412065 m!1592487))

(assert (=> b!1412065 m!1592489))

(assert (=> b!1412065 m!1592487))

(assert (=> b!1412065 m!1592489))

(declare-fun m!1592549 () Bool)

(assert (=> b!1412065 m!1592549))

(assert (=> b!1411592 d!403659))

(declare-fun d!403661 () Bool)

(assert (=> d!403661 (= (inv!18854 (xs!7517 (c!231994 (tokens!1748 acc!229)))) (<= (size!11885 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))) 2147483647))))

(declare-fun bs!339005 () Bool)

(assert (= bs!339005 d!403661))

(declare-fun m!1592551 () Bool)

(assert (=> bs!339005 m!1592551))

(assert (=> b!1411691 d!403661))

(declare-fun d!403663 () Bool)

(declare-fun res!639493 () Bool)

(declare-fun e!901427 () Bool)

(assert (=> d!403663 (=> (not res!639493) (not e!901427))))

(assert (=> d!403663 (= res!639493 (= (csize!9812 (c!231995 objs!24)) (+ (size!11882 (left!12321 (c!231995 objs!24))) (size!11882 (right!12651 (c!231995 objs!24))))))))

(assert (=> d!403663 (= (inv!18852 (c!231995 objs!24)) e!901427)))

(declare-fun b!1412073 () Bool)

(declare-fun res!639494 () Bool)

(assert (=> b!1412073 (=> (not res!639494) (not e!901427))))

(assert (=> b!1412073 (= res!639494 (and (not (= (left!12321 (c!231995 objs!24)) Empty!4791)) (not (= (right!12651 (c!231995 objs!24)) Empty!4791))))))

(declare-fun b!1412074 () Bool)

(declare-fun res!639495 () Bool)

(assert (=> b!1412074 (=> (not res!639495) (not e!901427))))

(assert (=> b!1412074 (= res!639495 (= (cheight!5002 (c!231995 objs!24)) (+ (max!0 (height!694 (left!12321 (c!231995 objs!24))) (height!694 (right!12651 (c!231995 objs!24)))) 1)))))

(declare-fun b!1412075 () Bool)

(assert (=> b!1412075 (= e!901427 (<= 0 (cheight!5002 (c!231995 objs!24))))))

(assert (= (and d!403663 res!639493) b!1412073))

(assert (= (and b!1412073 res!639494) b!1412074))

(assert (= (and b!1412074 res!639495) b!1412075))

(declare-fun m!1592553 () Bool)

(assert (=> d!403663 m!1592553))

(declare-fun m!1592555 () Bool)

(assert (=> d!403663 m!1592555))

(assert (=> b!1412074 m!1592363))

(assert (=> b!1412074 m!1592365))

(assert (=> b!1412074 m!1592363))

(assert (=> b!1412074 m!1592365))

(declare-fun m!1592557 () Bool)

(assert (=> b!1412074 m!1592557))

(assert (=> b!1411601 d!403663))

(declare-fun d!403665 () Bool)

(assert (=> d!403665 (= (inv!18832 (tag!2767 (h!19826 (rules!11012 sep!3)))) (= (mod (str.len (value!81024 (tag!2767 (h!19826 (rules!11012 sep!3))))) 2) 0))))

(assert (=> b!1411716 d!403665))

(declare-fun d!403667 () Bool)

(declare-fun res!639496 () Bool)

(declare-fun e!901428 () Bool)

(assert (=> d!403667 (=> (not res!639496) (not e!901428))))

(assert (=> d!403667 (= res!639496 (semiInverseModEq!971 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))))))

(assert (=> d!403667 (= (inv!18856 (transformation!2505 (h!19826 (rules!11012 sep!3)))) e!901428)))

(declare-fun b!1412076 () Bool)

(assert (=> b!1412076 (= e!901428 (equivClasses!930 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))))))

(assert (= (and d!403667 res!639496) b!1412076))

(declare-fun m!1592559 () Bool)

(assert (=> d!403667 m!1592559))

(declare-fun m!1592561 () Bool)

(assert (=> b!1412076 m!1592561))

(assert (=> b!1411716 d!403667))

(declare-fun b!1412090 () Bool)

(declare-fun b_free!34639 () Bool)

(declare-fun b_next!35343 () Bool)

(assert (=> b!1412090 (= b_free!34639 (not b_next!35343))))

(declare-fun tp!400824 () Bool)

(declare-fun b_and!94567 () Bool)

(assert (=> b!1412090 (= tp!400824 b_and!94567)))

(declare-fun b_free!34641 () Bool)

(declare-fun b_next!35345 () Bool)

(assert (=> b!1412090 (= b_free!34641 (not b_next!35345))))

(declare-fun tp!400823 () Bool)

(declare-fun b_and!94569 () Bool)

(assert (=> b!1412090 (= tp!400823 b_and!94569)))

(declare-fun b!1412088 () Bool)

(declare-fun e!901441 () Bool)

(declare-fun e!901442 () Bool)

(declare-fun inv!21 (TokenValue!2595) Bool)

(assert (=> b!1412088 (= e!901441 (and (inv!21 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))) e!901442))))

(declare-fun b!1412089 () Bool)

(declare-fun e!901443 () Bool)

(assert (=> b!1412089 (= e!901442 (and (inv!18832 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (inv!18856 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) e!901443))))

(declare-fun e!901446 () Bool)

(declare-fun b!1412087 () Bool)

(declare-fun tp!400822 () Bool)

(declare-fun inv!18858 (Token!4672) Bool)

(assert (=> b!1412087 (= e!901446 (and (inv!18858 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))) e!901441 tp!400822))))

(assert (=> b!1412090 (= e!901443 (and tp!400824 tp!400823))))

(assert (=> b!1411689 (= tp!400745 e!901446)))

(assert (= b!1412089 b!1412090))

(assert (= b!1412088 b!1412089))

(assert (= b!1412087 b!1412088))

(assert (= (and b!1411689 ((_ is Cons!14424) (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))) b!1412087))

(declare-fun m!1592563 () Bool)

(assert (=> b!1412088 m!1592563))

(declare-fun m!1592565 () Bool)

(assert (=> b!1412089 m!1592565))

(declare-fun m!1592567 () Bool)

(assert (=> b!1412089 m!1592567))

(declare-fun m!1592569 () Bool)

(assert (=> b!1412087 m!1592569))

(declare-fun tp!400825 () Bool)

(declare-fun b!1412091 () Bool)

(declare-fun e!901447 () Bool)

(declare-fun tp!400827 () Bool)

(assert (=> b!1412091 (= e!901447 (and (inv!18838 (left!12321 (left!12321 (c!231995 objs!24)))) tp!400827 (inv!18838 (right!12651 (left!12321 (c!231995 objs!24)))) tp!400825))))

(declare-fun b!1412093 () Bool)

(declare-fun e!901448 () Bool)

(declare-fun tp!400826 () Bool)

(assert (=> b!1412093 (= e!901448 tp!400826)))

(declare-fun b!1412092 () Bool)

(assert (=> b!1412092 (= e!901447 (and (inv!18855 (xs!7518 (left!12321 (c!231995 objs!24)))) e!901448))))

(assert (=> b!1411701 (= tp!400758 (and (inv!18838 (left!12321 (c!231995 objs!24))) e!901447))))

(assert (= (and b!1411701 ((_ is Node!4791) (left!12321 (c!231995 objs!24)))) b!1412091))

(assert (= b!1412092 b!1412093))

(assert (= (and b!1411701 ((_ is Leaf!7240) (left!12321 (c!231995 objs!24)))) b!1412092))

(declare-fun m!1592571 () Bool)

(assert (=> b!1412091 m!1592571))

(declare-fun m!1592573 () Bool)

(assert (=> b!1412091 m!1592573))

(declare-fun m!1592575 () Bool)

(assert (=> b!1412092 m!1592575))

(assert (=> b!1411701 m!1592097))

(declare-fun b!1412094 () Bool)

(declare-fun e!901449 () Bool)

(declare-fun tp!400830 () Bool)

(declare-fun tp!400828 () Bool)

(assert (=> b!1412094 (= e!901449 (and (inv!18838 (left!12321 (right!12651 (c!231995 objs!24)))) tp!400830 (inv!18838 (right!12651 (right!12651 (c!231995 objs!24)))) tp!400828))))

(declare-fun b!1412096 () Bool)

(declare-fun e!901450 () Bool)

(declare-fun tp!400829 () Bool)

(assert (=> b!1412096 (= e!901450 tp!400829)))

(declare-fun b!1412095 () Bool)

(assert (=> b!1412095 (= e!901449 (and (inv!18855 (xs!7518 (right!12651 (c!231995 objs!24)))) e!901450))))

(assert (=> b!1411701 (= tp!400756 (and (inv!18838 (right!12651 (c!231995 objs!24))) e!901449))))

(assert (= (and b!1411701 ((_ is Node!4791) (right!12651 (c!231995 objs!24)))) b!1412094))

(assert (= b!1412095 b!1412096))

(assert (= (and b!1411701 ((_ is Leaf!7240) (right!12651 (c!231995 objs!24)))) b!1412095))

(declare-fun m!1592577 () Bool)

(assert (=> b!1412094 m!1592577))

(declare-fun m!1592579 () Bool)

(assert (=> b!1412094 m!1592579))

(declare-fun m!1592581 () Bool)

(assert (=> b!1412095 m!1592581))

(assert (=> b!1411701 m!1592099))

(declare-fun tp!400833 () Bool)

(declare-fun b!1412097 () Bool)

(declare-fun tp!400831 () Bool)

(declare-fun e!901452 () Bool)

(assert (=> b!1412097 (= e!901452 (and (inv!18840 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))) tp!400833 (inv!18840 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))) tp!400831))))

(declare-fun b!1412099 () Bool)

(declare-fun e!901451 () Bool)

(declare-fun tp!400832 () Bool)

(assert (=> b!1412099 (= e!901451 tp!400832)))

(declare-fun b!1412098 () Bool)

(assert (=> b!1412098 (= e!901452 (and (inv!18854 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))) e!901451))))

(assert (=> b!1411690 (= tp!400749 (and (inv!18840 (left!12320 (c!231994 (tokens!1748 acc!229)))) e!901452))))

(assert (= (and b!1411690 ((_ is Node!4790) (left!12320 (c!231994 (tokens!1748 acc!229))))) b!1412097))

(assert (= b!1412098 b!1412099))

(assert (= (and b!1411690 ((_ is Leaf!7239) (left!12320 (c!231994 (tokens!1748 acc!229))))) b!1412098))

(declare-fun m!1592583 () Bool)

(assert (=> b!1412097 m!1592583))

(declare-fun m!1592585 () Bool)

(assert (=> b!1412097 m!1592585))

(declare-fun m!1592587 () Bool)

(assert (=> b!1412098 m!1592587))

(assert (=> b!1411690 m!1592091))

(declare-fun tp!400834 () Bool)

(declare-fun e!901454 () Bool)

(declare-fun b!1412100 () Bool)

(declare-fun tp!400836 () Bool)

(assert (=> b!1412100 (= e!901454 (and (inv!18840 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))) tp!400836 (inv!18840 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))) tp!400834))))

(declare-fun b!1412102 () Bool)

(declare-fun e!901453 () Bool)

(declare-fun tp!400835 () Bool)

(assert (=> b!1412102 (= e!901453 tp!400835)))

(declare-fun b!1412101 () Bool)

(assert (=> b!1412101 (= e!901454 (and (inv!18854 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))) e!901453))))

(assert (=> b!1411690 (= tp!400747 (and (inv!18840 (right!12650 (c!231994 (tokens!1748 acc!229)))) e!901454))))

(assert (= (and b!1411690 ((_ is Node!4790) (right!12650 (c!231994 (tokens!1748 acc!229))))) b!1412100))

(assert (= b!1412101 b!1412102))

(assert (= (and b!1411690 ((_ is Leaf!7239) (right!12650 (c!231994 (tokens!1748 acc!229))))) b!1412101))

(declare-fun m!1592589 () Bool)

(assert (=> b!1412100 m!1592589))

(declare-fun m!1592591 () Bool)

(assert (=> b!1412100 m!1592591))

(declare-fun m!1592593 () Bool)

(assert (=> b!1412101 m!1592593))

(assert (=> b!1411690 m!1592093))

(declare-fun b!1412113 () Bool)

(declare-fun e!901463 () Bool)

(declare-fun tp!400845 () Bool)

(assert (=> b!1412113 (= e!901463 (and (inv!18840 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))) tp!400845))))

(declare-fun tp!400843 () Bool)

(declare-fun b!1412112 () Bool)

(declare-fun e!901462 () Bool)

(assert (=> b!1412112 (= e!901462 (and tp!400843 (inv!18839 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))) e!901463))))

(declare-fun e!901461 () Bool)

(declare-fun tp!400844 () Bool)

(declare-fun b!1412111 () Bool)

(assert (=> b!1412111 (= e!901461 (and (inv!18842 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))) e!901462 tp!400844))))

(assert (=> b!1411703 (= tp!400757 e!901461)))

(assert (= b!1412112 b!1412113))

(assert (= b!1412111 b!1412112))

(assert (= (and b!1411703 ((_ is Cons!14426) (innerList!4851 (xs!7518 (c!231995 objs!24))))) b!1412111))

(declare-fun m!1592595 () Bool)

(assert (=> b!1412113 m!1592595))

(declare-fun m!1592597 () Bool)

(assert (=> b!1412112 m!1592597))

(declare-fun m!1592599 () Bool)

(assert (=> b!1412111 m!1592599))

(declare-fun b!1412117 () Bool)

(declare-fun b_free!34643 () Bool)

(declare-fun b_next!35347 () Bool)

(assert (=> b!1412117 (= b_free!34643 (not b_next!35347))))

(declare-fun tp!400848 () Bool)

(declare-fun b_and!94571 () Bool)

(assert (=> b!1412117 (= tp!400848 b_and!94571)))

(declare-fun b_free!34645 () Bool)

(declare-fun b_next!35349 () Bool)

(assert (=> b!1412117 (= b_free!34645 (not b_next!35349))))

(declare-fun tp!400847 () Bool)

(declare-fun b_and!94573 () Bool)

(assert (=> b!1412117 (= tp!400847 b_and!94573)))

(declare-fun b!1412115 () Bool)

(declare-fun e!901464 () Bool)

(declare-fun e!901465 () Bool)

(assert (=> b!1412115 (= e!901464 (and (inv!21 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))) e!901465))))

(declare-fun b!1412116 () Bool)

(declare-fun e!901466 () Bool)

(assert (=> b!1412116 (= e!901465 (and (inv!18832 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (inv!18856 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) e!901466))))

(declare-fun b!1412114 () Bool)

(declare-fun e!901469 () Bool)

(declare-fun tp!400846 () Bool)

(assert (=> b!1412114 (= e!901469 (and (inv!18858 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))) e!901464 tp!400846))))

(assert (=> b!1412117 (= e!901466 (and tp!400848 tp!400847))))

(assert (=> b!1411692 (= tp!400748 e!901469)))

(assert (= b!1412116 b!1412117))

(assert (= b!1412115 b!1412116))

(assert (= b!1412114 b!1412115))

(assert (= (and b!1411692 ((_ is Cons!14424) (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))) b!1412114))

(declare-fun m!1592601 () Bool)

(assert (=> b!1412115 m!1592601))

(declare-fun m!1592603 () Bool)

(assert (=> b!1412116 m!1592603))

(declare-fun m!1592605 () Bool)

(assert (=> b!1412116 m!1592605))

(declare-fun m!1592607 () Bool)

(assert (=> b!1412114 m!1592607))

(declare-fun b!1412118 () Bool)

(declare-fun tp!400849 () Bool)

(declare-fun e!901471 () Bool)

(declare-fun tp!400851 () Bool)

(assert (=> b!1412118 (= e!901471 (and (inv!18840 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))) tp!400851 (inv!18840 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))) tp!400849))))

(declare-fun b!1412120 () Bool)

(declare-fun e!901470 () Bool)

(declare-fun tp!400850 () Bool)

(assert (=> b!1412120 (= e!901470 tp!400850)))

(declare-fun b!1412119 () Bool)

(assert (=> b!1412119 (= e!901471 (and (inv!18854 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))) e!901470))))

(assert (=> b!1411687 (= tp!400746 (and (inv!18840 (left!12320 (c!231994 (tokens!1748 sep!3)))) e!901471))))

(assert (= (and b!1411687 ((_ is Node!4790) (left!12320 (c!231994 (tokens!1748 sep!3))))) b!1412118))

(assert (= b!1412119 b!1412120))

(assert (= (and b!1411687 ((_ is Leaf!7239) (left!12320 (c!231994 (tokens!1748 sep!3))))) b!1412119))

(declare-fun m!1592609 () Bool)

(assert (=> b!1412118 m!1592609))

(declare-fun m!1592611 () Bool)

(assert (=> b!1412118 m!1592611))

(declare-fun m!1592613 () Bool)

(assert (=> b!1412119 m!1592613))

(assert (=> b!1411687 m!1592085))

(declare-fun tp!400852 () Bool)

(declare-fun e!901473 () Bool)

(declare-fun b!1412121 () Bool)

(declare-fun tp!400854 () Bool)

(assert (=> b!1412121 (= e!901473 (and (inv!18840 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))) tp!400854 (inv!18840 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))) tp!400852))))

(declare-fun b!1412123 () Bool)

(declare-fun e!901472 () Bool)

(declare-fun tp!400853 () Bool)

(assert (=> b!1412123 (= e!901472 tp!400853)))

(declare-fun b!1412122 () Bool)

(assert (=> b!1412122 (= e!901473 (and (inv!18854 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))) e!901472))))

(assert (=> b!1411687 (= tp!400744 (and (inv!18840 (right!12650 (c!231994 (tokens!1748 sep!3)))) e!901473))))

(assert (= (and b!1411687 ((_ is Node!4790) (right!12650 (c!231994 (tokens!1748 sep!3))))) b!1412121))

(assert (= b!1412122 b!1412123))

(assert (= (and b!1411687 ((_ is Leaf!7239) (right!12650 (c!231994 (tokens!1748 sep!3))))) b!1412122))

(declare-fun m!1592615 () Bool)

(assert (=> b!1412121 m!1592615))

(declare-fun m!1592617 () Bool)

(assert (=> b!1412121 m!1592617))

(declare-fun m!1592619 () Bool)

(assert (=> b!1412122 m!1592619))

(assert (=> b!1411687 m!1592087))

(declare-fun b!1412126 () Bool)

(declare-fun b_free!34647 () Bool)

(declare-fun b_next!35351 () Bool)

(assert (=> b!1412126 (= b_free!34647 (not b_next!35351))))

(declare-fun tp!400855 () Bool)

(declare-fun b_and!94575 () Bool)

(assert (=> b!1412126 (= tp!400855 b_and!94575)))

(declare-fun b_free!34649 () Bool)

(declare-fun b_next!35353 () Bool)

(assert (=> b!1412126 (= b_free!34649 (not b_next!35353))))

(declare-fun tp!400857 () Bool)

(declare-fun b_and!94577 () Bool)

(assert (=> b!1412126 (= tp!400857 b_and!94577)))

(declare-fun e!901475 () Bool)

(assert (=> b!1412126 (= e!901475 (and tp!400855 tp!400857))))

(declare-fun b!1412125 () Bool)

(declare-fun e!901476 () Bool)

(assert (=> b!1412125 (= e!901476 (and (inv!18832 (tag!2767 (h!19826 (t!123554 (rules!11012 sep!3))))) (inv!18856 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3))))) e!901475))))

(declare-fun b!1412124 () Bool)

(declare-fun e!901477 () Bool)

(declare-fun tp!400856 () Bool)

(assert (=> b!1412124 (= e!901477 (and e!901476 tp!400856))))

(assert (=> b!1411715 (= tp!400769 e!901477)))

(assert (= b!1412125 b!1412126))

(assert (= b!1412124 b!1412125))

(assert (= (and b!1411715 ((_ is Cons!14425) (t!123554 (rules!11012 sep!3)))) b!1412124))

(declare-fun m!1592621 () Bool)

(assert (=> b!1412125 m!1592621))

(declare-fun m!1592623 () Bool)

(assert (=> b!1412125 m!1592623))

(declare-fun b!1412129 () Bool)

(declare-fun b_free!34651 () Bool)

(declare-fun b_next!35355 () Bool)

(assert (=> b!1412129 (= b_free!34651 (not b_next!35355))))

(declare-fun tp!400858 () Bool)

(declare-fun b_and!94579 () Bool)

(assert (=> b!1412129 (= tp!400858 b_and!94579)))

(declare-fun b_free!34653 () Bool)

(declare-fun b_next!35357 () Bool)

(assert (=> b!1412129 (= b_free!34653 (not b_next!35357))))

(declare-fun tp!400860 () Bool)

(declare-fun b_and!94581 () Bool)

(assert (=> b!1412129 (= tp!400860 b_and!94581)))

(declare-fun e!901479 () Bool)

(assert (=> b!1412129 (= e!901479 (and tp!400858 tp!400860))))

(declare-fun b!1412128 () Bool)

(declare-fun e!901480 () Bool)

(assert (=> b!1412128 (= e!901480 (and (inv!18832 (tag!2767 (h!19826 (t!123554 (rules!11012 acc!229))))) (inv!18856 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229))))) e!901479))))

(declare-fun b!1412127 () Bool)

(declare-fun e!901481 () Bool)

(declare-fun tp!400859 () Bool)

(assert (=> b!1412127 (= e!901481 (and e!901480 tp!400859))))

(assert (=> b!1411712 (= tp!400766 e!901481)))

(assert (= b!1412128 b!1412129))

(assert (= b!1412127 b!1412128))

(assert (= (and b!1411712 ((_ is Cons!14425) (t!123554 (rules!11012 acc!229)))) b!1412127))

(declare-fun m!1592625 () Bool)

(assert (=> b!1412128 m!1592625))

(declare-fun m!1592627 () Bool)

(assert (=> b!1412128 m!1592627))

(declare-fun b_lambda!44517 () Bool)

(assert (= b_lambda!44511 (or start!129140 b_lambda!44517)))

(declare-fun bs!339006 () Bool)

(declare-fun d!403669 () Bool)

(assert (= bs!339006 (and d!403669 start!129140)))

(assert (=> bs!339006 (= (dynLambda!6679 lambda!62403 (h!19827 (list!5651 objs!24))) (usesJsonRules!0 (h!19827 (list!5651 objs!24))))))

(declare-fun m!1592629 () Bool)

(assert (=> bs!339006 m!1592629))

(assert (=> b!1411758 d!403669))

(check-sat (not b!1411687) (not b!1411732) (not b!1412091) (not b_next!35349) (not b!1411748) (not d!403653) (not b!1411750) (not b!1412044) (not b!1412088) (not b!1412113) (not b!1412016) (not b_lambda!44517) (not b!1411950) b_and!94569 (not b!1412112) (not b!1412127) (not b!1412115) (not b!1411995) (not b!1411818) (not b!1411946) (not d!403619) (not d!403649) (not b!1411752) (not b!1412123) (not b!1411753) (not b!1412039) (not b!1412121) (not d!403647) (not b!1411771) (not b!1411751) b_and!94547 (not b_next!35357) (not d!403629) (not d!403535) (not b!1412076) (not d!403553) (not b!1411809) (not b!1412101) (not b!1411800) (not b!1411949) (not b_next!35355) (not d!403525) (not b_next!35347) (not d!403625) (not b!1412124) (not b!1412041) (not b!1412119) (not b!1412048) (not b!1412056) (not b!1411727) (not b!1412100) (not d!403633) (not b!1412040) (not b!1412049) (not d!403637) (not b_next!35325) (not b!1411957) (not bs!339006) (not b!1411759) (not b!1412128) (not b_next!35319) (not b!1411690) (not b_next!35351) (not b!1411947) b_and!94579 (not b!1412095) (not b!1412060) b_and!94571 (not d!403639) (not b_next!35323) (not b!1412114) (not b!1411952) (not b!1412065) (not b!1412063) (not b!1412111) (not b!1412089) (not d!403645) (not d!403551) (not b!1411769) (not b!1412097) (not b!1411770) (not b!1412094) (not b!1412058) (not b!1411735) b_and!94581 (not b_next!35343) (not d!403667) (not b!1412098) (not b!1411976) (not b!1411730) (not b!1412087) (not b!1412093) (not b!1411945) (not b!1412074) (not b!1412102) (not d!403659) (not d!403623) (not b_next!35345) (not b!1411959) (not b!1412061) (not b!1412122) (not d!403527) (not b!1412047) (not b!1412019) b_and!94573 (not b!1411749) (not b!1411729) b_and!94549 (not b!1412118) (not b!1412050) b_and!94575 (not b_next!35353) (not b!1411996) (not b!1412092) (not b!1411701) (not d!403663) (not b!1412125) (not b!1412045) b_and!94567 (not b!1411944) (not b!1412096) b_and!94543 b_and!94577 (not b!1412099) (not d!403661) (not b!1411948) (not d!403537) (not b!1412120) (not b!1412046) (not b_next!35321) (not d!403533) (not b!1412116) (not d!403627) b_and!94545)
(check-sat (not b_next!35349) b_and!94569 (not b_next!35355) (not b_next!35347) (not b_next!35325) (not b_next!35323) (not b_next!35345) b_and!94573 b_and!94567 b_and!94547 (not b_next!35357) (not b_next!35319) (not b_next!35351) b_and!94579 b_and!94571 b_and!94581 (not b_next!35343) b_and!94549 b_and!94575 (not b_next!35353) b_and!94543 b_and!94577 (not b_next!35321) b_and!94545)
(get-model)

(declare-fun d!403707 () Bool)

(declare-fun lt!472476 () PrintableTokens!792)

(assert (=> d!403707 (= lt!472476 (head!2678 (list!5655 (left!12321 (c!231995 objs!24)))))))

(declare-fun e!901502 () PrintableTokens!792)

(assert (=> d!403707 (= lt!472476 e!901502)))

(declare-fun c!232048 () Bool)

(assert (=> d!403707 (= c!232048 ((_ is Leaf!7240) (left!12321 (c!231995 objs!24))))))

(assert (=> d!403707 (isBalanced!1416 (left!12321 (c!231995 objs!24)))))

(assert (=> d!403707 (= (head!2679 (left!12321 (c!231995 objs!24))) lt!472476)))

(declare-fun b!1412164 () Bool)

(assert (=> b!1412164 (= e!901502 (apply!3695 (xs!7518 (left!12321 (c!231995 objs!24))) 0))))

(declare-fun b!1412165 () Bool)

(assert (=> b!1412165 (= e!901502 (head!2679 (left!12321 (left!12321 (c!231995 objs!24)))))))

(assert (= (and d!403707 c!232048) b!1412164))

(assert (= (and d!403707 (not c!232048)) b!1412165))

(assert (=> d!403707 m!1592157))

(assert (=> d!403707 m!1592157))

(declare-fun m!1592681 () Bool)

(assert (=> d!403707 m!1592681))

(assert (=> d!403707 m!1592359))

(declare-fun m!1592683 () Bool)

(assert (=> b!1412164 m!1592683))

(declare-fun m!1592685 () Bool)

(assert (=> b!1412165 m!1592685))

(assert (=> b!1411996 d!403707))

(declare-fun d!403709 () Bool)

(assert (=> d!403709 true))

(declare-fun order!8807 () Int)

(declare-fun lambda!62421 () Int)

(declare-fun dynLambda!6685 (Int Int) Int)

(assert (=> d!403709 (< (dynLambda!6682 order!8805 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (dynLambda!6685 order!8807 lambda!62421))))

(assert (=> d!403709 true))

(assert (=> d!403709 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (dynLambda!6685 order!8807 lambda!62421))))

(declare-fun Forall!553 (Int) Bool)

(assert (=> d!403709 (= (semiInverseModEq!971 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (Forall!553 lambda!62421))))

(declare-fun bs!339013 () Bool)

(assert (= bs!339013 d!403709))

(declare-fun m!1592687 () Bool)

(assert (=> bs!339013 m!1592687))

(assert (=> d!403525 d!403709))

(declare-fun d!403711 () Bool)

(assert (=> d!403711 (= (inv!18832 (tag!2767 (h!19826 (t!123554 (rules!11012 acc!229))))) (= (mod (str.len (value!81024 (tag!2767 (h!19826 (t!123554 (rules!11012 acc!229)))))) 2) 0))))

(assert (=> b!1412128 d!403711))

(declare-fun d!403713 () Bool)

(declare-fun res!639545 () Bool)

(declare-fun e!901503 () Bool)

(assert (=> d!403713 (=> (not res!639545) (not e!901503))))

(assert (=> d!403713 (= res!639545 (semiInverseModEq!971 (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229))))) (toValue!3800 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229)))))))))

(assert (=> d!403713 (= (inv!18856 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229))))) e!901503)))

(declare-fun b!1412170 () Bool)

(assert (=> b!1412170 (= e!901503 (equivClasses!930 (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229))))) (toValue!3800 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229)))))))))

(assert (= (and d!403713 res!639545) b!1412170))

(declare-fun m!1592689 () Bool)

(assert (=> d!403713 m!1592689))

(declare-fun m!1592691 () Bool)

(assert (=> b!1412170 m!1592691))

(assert (=> b!1412128 d!403713))

(declare-fun b!1412181 () Bool)

(declare-fun e!901511 () Bool)

(declare-fun inv!16 (TokenValue!2595) Bool)

(assert (=> b!1412181 (= e!901511 (inv!16 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))

(declare-fun d!403715 () Bool)

(declare-fun c!232054 () Bool)

(assert (=> d!403715 (= c!232054 ((_ is IntegerValue!7785) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))

(assert (=> d!403715 (= (inv!21 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))) e!901511)))

(declare-fun b!1412182 () Bool)

(declare-fun e!901512 () Bool)

(declare-fun inv!15 (TokenValue!2595) Bool)

(assert (=> b!1412182 (= e!901512 (inv!15 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))

(declare-fun b!1412183 () Bool)

(declare-fun res!639548 () Bool)

(assert (=> b!1412183 (=> res!639548 e!901512)))

(assert (=> b!1412183 (= res!639548 (not ((_ is IntegerValue!7787) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))))

(declare-fun e!901510 () Bool)

(assert (=> b!1412183 (= e!901510 e!901512)))

(declare-fun b!1412184 () Bool)

(assert (=> b!1412184 (= e!901511 e!901510)))

(declare-fun c!232053 () Bool)

(assert (=> b!1412184 (= c!232053 ((_ is IntegerValue!7786) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))

(declare-fun b!1412185 () Bool)

(declare-fun inv!17 (TokenValue!2595) Bool)

(assert (=> b!1412185 (= e!901510 (inv!17 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))

(assert (= (and d!403715 c!232054) b!1412181))

(assert (= (and d!403715 (not c!232054)) b!1412184))

(assert (= (and b!1412184 c!232053) b!1412185))

(assert (= (and b!1412184 (not c!232053)) b!1412183))

(assert (= (and b!1412183 (not res!639548)) b!1412182))

(declare-fun m!1592693 () Bool)

(assert (=> b!1412181 m!1592693))

(declare-fun m!1592695 () Bool)

(assert (=> b!1412182 m!1592695))

(declare-fun m!1592697 () Bool)

(assert (=> b!1412185 m!1592697))

(assert (=> b!1412088 d!403715))

(declare-fun d!403717 () Bool)

(declare-fun res!639553 () Bool)

(declare-fun e!901517 () Bool)

(assert (=> d!403717 (=> res!639553 e!901517)))

(assert (=> d!403717 (= res!639553 ((_ is Nil!14425) (rules!11012 sep!3)))))

(assert (=> d!403717 (= (noDuplicateTag!941 Lexer!2189 (rules!11012 sep!3) Nil!14428) e!901517)))

(declare-fun b!1412190 () Bool)

(declare-fun e!901518 () Bool)

(assert (=> b!1412190 (= e!901517 e!901518)))

(declare-fun res!639554 () Bool)

(assert (=> b!1412190 (=> (not res!639554) (not e!901518))))

(declare-fun contains!2842 (List!14494 String!17211) Bool)

(assert (=> b!1412190 (= res!639554 (not (contains!2842 Nil!14428 (tag!2767 (h!19826 (rules!11012 sep!3))))))))

(declare-fun b!1412191 () Bool)

(assert (=> b!1412191 (= e!901518 (noDuplicateTag!941 Lexer!2189 (t!123554 (rules!11012 sep!3)) (Cons!14428 (tag!2767 (h!19826 (rules!11012 sep!3))) Nil!14428)))))

(assert (= (and d!403717 (not res!639553)) b!1412190))

(assert (= (and b!1412190 res!639554) b!1412191))

(declare-fun m!1592699 () Bool)

(assert (=> b!1412190 m!1592699))

(declare-fun m!1592701 () Bool)

(assert (=> b!1412191 m!1592701))

(assert (=> b!1412019 d!403717))

(declare-fun bs!339014 () Bool)

(declare-fun d!403719 () Bool)

(assert (= bs!339014 (and d!403719 d!403709)))

(declare-fun lambda!62422 () Int)

(assert (=> bs!339014 (= (and (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (= (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229)))))) (= lambda!62422 lambda!62421))))

(assert (=> d!403719 true))

(assert (=> d!403719 (< (dynLambda!6682 order!8805 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (dynLambda!6685 order!8807 lambda!62422))))

(assert (=> d!403719 true))

(assert (=> d!403719 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (dynLambda!6685 order!8807 lambda!62422))))

(assert (=> d!403719 (= (semiInverseModEq!971 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (Forall!553 lambda!62422))))

(declare-fun bs!339015 () Bool)

(assert (= bs!339015 d!403719))

(declare-fun m!1592703 () Bool)

(assert (=> bs!339015 m!1592703))

(assert (=> d!403667 d!403719))

(declare-fun d!403721 () Bool)

(assert (=> d!403721 true))

(declare-fun lt!472481 () Bool)

(declare-fun rulesValidInductive!810 (LexerInterface!2191 List!14491) Bool)

(assert (=> d!403721 (= lt!472481 (rulesValidInductive!810 Lexer!2189 (rules!11012 acc!229)))))

(declare-fun lambda!62425 () Int)

(declare-fun forall!3538 (List!14491 Int) Bool)

(assert (=> d!403721 (= lt!472481 (forall!3538 (rules!11012 acc!229) lambda!62425))))

(assert (=> d!403721 (= (rulesValid!941 Lexer!2189 (rules!11012 acc!229)) lt!472481)))

(declare-fun bs!339016 () Bool)

(assert (= bs!339016 d!403721))

(declare-fun m!1592705 () Bool)

(assert (=> bs!339016 m!1592705))

(declare-fun m!1592707 () Bool)

(assert (=> bs!339016 m!1592707))

(assert (=> d!403625 d!403721))

(declare-fun d!403723 () Bool)

(declare-fun lt!472484 () Int)

(declare-fun list!5661 (Conc!4790) List!14490)

(assert (=> d!403723 (= lt!472484 (size!11885 (list!5661 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> d!403723 (= lt!472484 (ite ((_ is Empty!4790) (left!12320 (c!231994 (tokens!1748 sep!3)))) 0 (ite ((_ is Leaf!7239) (left!12320 (c!231994 (tokens!1748 sep!3)))) (csize!9811 (left!12320 (c!231994 (tokens!1748 sep!3)))) (csize!9810 (left!12320 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> d!403723 (= (size!11886 (left!12320 (c!231994 (tokens!1748 sep!3)))) lt!472484)))

(declare-fun bs!339017 () Bool)

(assert (= bs!339017 d!403723))

(declare-fun m!1592709 () Bool)

(assert (=> bs!339017 m!1592709))

(assert (=> bs!339017 m!1592709))

(declare-fun m!1592711 () Bool)

(assert (=> bs!339017 m!1592711))

(assert (=> d!403619 d!403723))

(declare-fun d!403725 () Bool)

(declare-fun lt!472486 () Int)

(assert (=> d!403725 (= lt!472486 (size!11885 (list!5661 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> d!403725 (= lt!472486 (ite ((_ is Empty!4790) (right!12650 (c!231994 (tokens!1748 sep!3)))) 0 (ite ((_ is Leaf!7239) (right!12650 (c!231994 (tokens!1748 sep!3)))) (csize!9811 (right!12650 (c!231994 (tokens!1748 sep!3)))) (csize!9810 (right!12650 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> d!403725 (= (size!11886 (right!12650 (c!231994 (tokens!1748 sep!3)))) lt!472486)))

(declare-fun bs!339018 () Bool)

(assert (= bs!339018 d!403725))

(declare-fun m!1592713 () Bool)

(assert (=> bs!339018 m!1592713))

(assert (=> bs!339018 m!1592713))

(declare-fun m!1592715 () Bool)

(assert (=> bs!339018 m!1592715))

(assert (=> d!403619 d!403725))

(declare-fun d!403727 () Bool)

(declare-fun res!639561 () Bool)

(declare-fun e!901525 () Bool)

(assert (=> d!403727 (=> (not res!639561) (not e!901525))))

(assert (=> d!403727 (= res!639561 (= (csize!9810 (right!12650 (c!231994 (tokens!1748 acc!229)))) (+ (size!11886 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))) (size!11886 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))))))))

(assert (=> d!403727 (= (inv!18850 (right!12650 (c!231994 (tokens!1748 acc!229)))) e!901525)))

(declare-fun b!1412200 () Bool)

(declare-fun res!639562 () Bool)

(assert (=> b!1412200 (=> (not res!639562) (not e!901525))))

(assert (=> b!1412200 (= res!639562 (and (not (= (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229)))) Empty!4790)) (not (= (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))) Empty!4790))))))

(declare-fun b!1412201 () Bool)

(declare-fun res!639563 () Bool)

(assert (=> b!1412201 (=> (not res!639563) (not e!901525))))

(assert (=> b!1412201 (= res!639563 (= (cheight!5001 (right!12650 (c!231994 (tokens!1748 acc!229)))) (+ (max!0 (height!693 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))) (height!693 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))) 1)))))

(declare-fun b!1412203 () Bool)

(assert (=> b!1412203 (= e!901525 (<= 0 (cheight!5001 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(assert (= (and d!403727 res!639561) b!1412200))

(assert (= (and b!1412200 res!639562) b!1412201))

(assert (= (and b!1412201 res!639563) b!1412203))

(declare-fun m!1592717 () Bool)

(assert (=> d!403727 m!1592717))

(declare-fun m!1592719 () Bool)

(assert (=> d!403727 m!1592719))

(declare-fun m!1592721 () Bool)

(assert (=> b!1412201 m!1592721))

(declare-fun m!1592723 () Bool)

(assert (=> b!1412201 m!1592723))

(assert (=> b!1412201 m!1592721))

(assert (=> b!1412201 m!1592723))

(declare-fun m!1592725 () Bool)

(assert (=> b!1412201 m!1592725))

(assert (=> b!1412061 d!403727))

(declare-fun d!403729 () Bool)

(declare-fun res!639564 () Bool)

(declare-fun e!901529 () Bool)

(assert (=> d!403729 (=> (not res!639564) (not e!901529))))

(assert (=> d!403729 (= res!639564 (<= (size!11881 (list!5659 (xs!7518 (left!12321 (c!231995 objs!24))))) 512))))

(assert (=> d!403729 (= (inv!18853 (left!12321 (c!231995 objs!24))) e!901529)))

(declare-fun b!1412206 () Bool)

(declare-fun res!639565 () Bool)

(assert (=> b!1412206 (=> (not res!639565) (not e!901529))))

(assert (=> b!1412206 (= res!639565 (= (csize!9813 (left!12321 (c!231995 objs!24))) (size!11881 (list!5659 (xs!7518 (left!12321 (c!231995 objs!24)))))))))

(declare-fun b!1412207 () Bool)

(assert (=> b!1412207 (= e!901529 (and (> (csize!9813 (left!12321 (c!231995 objs!24))) 0) (<= (csize!9813 (left!12321 (c!231995 objs!24))) 512)))))

(assert (= (and d!403729 res!639564) b!1412206))

(assert (= (and b!1412206 res!639565) b!1412207))

(declare-fun m!1592727 () Bool)

(assert (=> d!403729 m!1592727))

(assert (=> d!403729 m!1592727))

(declare-fun m!1592731 () Bool)

(assert (=> d!403729 m!1592731))

(assert (=> b!1412206 m!1592727))

(assert (=> b!1412206 m!1592727))

(assert (=> b!1412206 m!1592731))

(assert (=> b!1411729 d!403729))

(declare-fun d!403731 () Bool)

(declare-fun c!232055 () Bool)

(assert (=> d!403731 (= c!232055 ((_ is Node!4791) (left!12321 (left!12321 (c!231995 objs!24)))))))

(declare-fun e!901530 () Bool)

(assert (=> d!403731 (= (inv!18838 (left!12321 (left!12321 (c!231995 objs!24)))) e!901530)))

(declare-fun b!1412208 () Bool)

(assert (=> b!1412208 (= e!901530 (inv!18852 (left!12321 (left!12321 (c!231995 objs!24)))))))

(declare-fun b!1412209 () Bool)

(declare-fun e!901531 () Bool)

(assert (=> b!1412209 (= e!901530 e!901531)))

(declare-fun res!639566 () Bool)

(assert (=> b!1412209 (= res!639566 (not ((_ is Leaf!7240) (left!12321 (left!12321 (c!231995 objs!24))))))))

(assert (=> b!1412209 (=> res!639566 e!901531)))

(declare-fun b!1412210 () Bool)

(assert (=> b!1412210 (= e!901531 (inv!18853 (left!12321 (left!12321 (c!231995 objs!24)))))))

(assert (= (and d!403731 c!232055) b!1412208))

(assert (= (and d!403731 (not c!232055)) b!1412209))

(assert (= (and b!1412209 (not res!639566)) b!1412210))

(declare-fun m!1592739 () Bool)

(assert (=> b!1412208 m!1592739))

(declare-fun m!1592741 () Bool)

(assert (=> b!1412210 m!1592741))

(assert (=> b!1412091 d!403731))

(declare-fun d!403737 () Bool)

(declare-fun c!232056 () Bool)

(assert (=> d!403737 (= c!232056 ((_ is Node!4791) (right!12651 (left!12321 (c!231995 objs!24)))))))

(declare-fun e!901534 () Bool)

(assert (=> d!403737 (= (inv!18838 (right!12651 (left!12321 (c!231995 objs!24)))) e!901534)))

(declare-fun b!1412213 () Bool)

(assert (=> b!1412213 (= e!901534 (inv!18852 (right!12651 (left!12321 (c!231995 objs!24)))))))

(declare-fun b!1412214 () Bool)

(declare-fun e!901535 () Bool)

(assert (=> b!1412214 (= e!901534 e!901535)))

(declare-fun res!639569 () Bool)

(assert (=> b!1412214 (= res!639569 (not ((_ is Leaf!7240) (right!12651 (left!12321 (c!231995 objs!24))))))))

(assert (=> b!1412214 (=> res!639569 e!901535)))

(declare-fun b!1412215 () Bool)

(assert (=> b!1412215 (= e!901535 (inv!18853 (right!12651 (left!12321 (c!231995 objs!24)))))))

(assert (= (and d!403737 c!232056) b!1412213))

(assert (= (and d!403737 (not c!232056)) b!1412214))

(assert (= (and b!1412214 (not res!639569)) b!1412215))

(declare-fun m!1592743 () Bool)

(assert (=> b!1412213 m!1592743))

(declare-fun m!1592745 () Bool)

(assert (=> b!1412215 m!1592745))

(assert (=> b!1412091 d!403737))

(declare-fun b!1412216 () Bool)

(declare-fun res!639570 () Bool)

(declare-fun e!901536 () Bool)

(assert (=> b!1412216 (=> (not res!639570) (not e!901536))))

(assert (=> b!1412216 (= res!639570 (isBalanced!1415 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412218 () Bool)

(assert (=> b!1412218 (= e!901536 (not (isEmpty!8817 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))))))

(declare-fun b!1412219 () Bool)

(declare-fun res!639573 () Bool)

(assert (=> b!1412219 (=> (not res!639573) (not e!901536))))

(assert (=> b!1412219 (= res!639573 (not (isEmpty!8817 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229)))))))))

(declare-fun b!1412220 () Bool)

(declare-fun res!639574 () Bool)

(assert (=> b!1412220 (=> (not res!639574) (not e!901536))))

(assert (=> b!1412220 (= res!639574 (isBalanced!1415 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412221 () Bool)

(declare-fun e!901537 () Bool)

(assert (=> b!1412221 (= e!901537 e!901536)))

(declare-fun res!639575 () Bool)

(assert (=> b!1412221 (=> (not res!639575) (not e!901536))))

(assert (=> b!1412221 (= res!639575 (<= (- 1) (- (height!693 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))) (height!693 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))))))))

(declare-fun b!1412217 () Bool)

(declare-fun res!639571 () Bool)

(assert (=> b!1412217 (=> (not res!639571) (not e!901536))))

(assert (=> b!1412217 (= res!639571 (<= (- (height!693 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))) (height!693 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))) 1))))

(declare-fun d!403739 () Bool)

(declare-fun res!639572 () Bool)

(assert (=> d!403739 (=> res!639572 e!901537)))

(assert (=> d!403739 (= res!639572 (not ((_ is Node!4790) (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> d!403739 (= (isBalanced!1415 (right!12650 (c!231994 (tokens!1748 acc!229)))) e!901537)))

(assert (= (and d!403739 (not res!639572)) b!1412221))

(assert (= (and b!1412221 res!639575) b!1412217))

(assert (= (and b!1412217 res!639571) b!1412216))

(assert (= (and b!1412216 res!639570) b!1412220))

(assert (= (and b!1412220 res!639574) b!1412219))

(assert (= (and b!1412219 res!639573) b!1412218))

(assert (=> b!1412221 m!1592721))

(assert (=> b!1412221 m!1592723))

(declare-fun m!1592753 () Bool)

(assert (=> b!1412219 m!1592753))

(declare-fun m!1592755 () Bool)

(assert (=> b!1412216 m!1592755))

(declare-fun m!1592757 () Bool)

(assert (=> b!1412220 m!1592757))

(declare-fun m!1592759 () Bool)

(assert (=> b!1412218 m!1592759))

(assert (=> b!1412217 m!1592721))

(assert (=> b!1412217 m!1592723))

(assert (=> b!1412048 d!403739))

(declare-fun d!403745 () Bool)

(declare-fun c!232057 () Bool)

(assert (=> d!403745 (= c!232057 ((_ is Node!4790) (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun e!901538 () Bool)

(assert (=> d!403745 (= (inv!18840 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))) e!901538)))

(declare-fun b!1412222 () Bool)

(assert (=> b!1412222 (= e!901538 (inv!18850 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412223 () Bool)

(declare-fun e!901539 () Bool)

(assert (=> b!1412223 (= e!901538 e!901539)))

(declare-fun res!639576 () Bool)

(assert (=> b!1412223 (= res!639576 (not ((_ is Leaf!7239) (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> b!1412223 (=> res!639576 e!901539)))

(declare-fun b!1412224 () Bool)

(assert (=> b!1412224 (= e!901539 (inv!18851 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(assert (= (and d!403745 c!232057) b!1412222))

(assert (= (and d!403745 (not c!232057)) b!1412223))

(assert (= (and b!1412223 (not res!639576)) b!1412224))

(declare-fun m!1592761 () Bool)

(assert (=> b!1412222 m!1592761))

(declare-fun m!1592763 () Bool)

(assert (=> b!1412224 m!1592763))

(assert (=> b!1412100 d!403745))

(declare-fun d!403747 () Bool)

(declare-fun c!232058 () Bool)

(assert (=> d!403747 (= c!232058 ((_ is Node!4790) (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun e!901540 () Bool)

(assert (=> d!403747 (= (inv!18840 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))) e!901540)))

(declare-fun b!1412225 () Bool)

(assert (=> b!1412225 (= e!901540 (inv!18850 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412226 () Bool)

(declare-fun e!901541 () Bool)

(assert (=> b!1412226 (= e!901540 e!901541)))

(declare-fun res!639577 () Bool)

(assert (=> b!1412226 (= res!639577 (not ((_ is Leaf!7239) (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> b!1412226 (=> res!639577 e!901541)))

(declare-fun b!1412227 () Bool)

(assert (=> b!1412227 (= e!901541 (inv!18851 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(assert (= (and d!403747 c!232058) b!1412225))

(assert (= (and d!403747 (not c!232058)) b!1412226))

(assert (= (and b!1412226 (not res!639577)) b!1412227))

(declare-fun m!1592765 () Bool)

(assert (=> b!1412225 m!1592765))

(declare-fun m!1592767 () Bool)

(assert (=> b!1412227 m!1592767))

(assert (=> b!1412100 d!403747))

(declare-fun d!403749 () Bool)

(assert (=> d!403749 (= (height!693 (left!12320 (c!231994 (tokens!1748 sep!3)))) (ite ((_ is Empty!4790) (left!12320 (c!231994 (tokens!1748 sep!3)))) 0 (ite ((_ is Leaf!7239) (left!12320 (c!231994 (tokens!1748 sep!3)))) 1 (cheight!5001 (left!12320 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> b!1411753 d!403749))

(declare-fun d!403751 () Bool)

(assert (=> d!403751 (= (height!693 (right!12650 (c!231994 (tokens!1748 sep!3)))) (ite ((_ is Empty!4790) (right!12650 (c!231994 (tokens!1748 sep!3)))) 0 (ite ((_ is Leaf!7239) (right!12650 (c!231994 (tokens!1748 sep!3)))) 1 (cheight!5001 (right!12650 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> b!1411753 d!403751))

(assert (=> b!1411690 d!403655))

(assert (=> b!1411690 d!403657))

(declare-fun d!403753 () Bool)

(declare-fun lt!472488 () Int)

(assert (=> d!403753 (= lt!472488 (size!11885 (list!5661 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> d!403753 (= lt!472488 (ite ((_ is Empty!4790) (left!12320 (c!231994 (tokens!1748 acc!229)))) 0 (ite ((_ is Leaf!7239) (left!12320 (c!231994 (tokens!1748 acc!229)))) (csize!9811 (left!12320 (c!231994 (tokens!1748 acc!229)))) (csize!9810 (left!12320 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> d!403753 (= (size!11886 (left!12320 (c!231994 (tokens!1748 acc!229)))) lt!472488)))

(declare-fun bs!339023 () Bool)

(assert (= bs!339023 d!403753))

(declare-fun m!1592769 () Bool)

(assert (=> bs!339023 m!1592769))

(assert (=> bs!339023 m!1592769))

(declare-fun m!1592771 () Bool)

(assert (=> bs!339023 m!1592771))

(assert (=> d!403659 d!403753))

(declare-fun d!403755 () Bool)

(declare-fun lt!472489 () Int)

(assert (=> d!403755 (= lt!472489 (size!11885 (list!5661 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> d!403755 (= lt!472489 (ite ((_ is Empty!4790) (right!12650 (c!231994 (tokens!1748 acc!229)))) 0 (ite ((_ is Leaf!7239) (right!12650 (c!231994 (tokens!1748 acc!229)))) (csize!9811 (right!12650 (c!231994 (tokens!1748 acc!229)))) (csize!9810 (right!12650 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> d!403755 (= (size!11886 (right!12650 (c!231994 (tokens!1748 acc!229)))) lt!472489)))

(declare-fun bs!339024 () Bool)

(assert (= bs!339024 d!403755))

(declare-fun m!1592773 () Bool)

(assert (=> bs!339024 m!1592773))

(assert (=> bs!339024 m!1592773))

(declare-fun m!1592775 () Bool)

(assert (=> bs!339024 m!1592775))

(assert (=> d!403659 d!403755))

(declare-fun d!403757 () Bool)

(declare-fun res!639580 () Bool)

(declare-fun e!901548 () Bool)

(assert (=> d!403757 (=> (not res!639580) (not e!901548))))

(assert (=> d!403757 (= res!639580 (= (csize!9810 (left!12320 (c!231994 (tokens!1748 acc!229)))) (+ (size!11886 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))) (size!11886 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))))))))

(assert (=> d!403757 (= (inv!18850 (left!12320 (c!231994 (tokens!1748 acc!229)))) e!901548)))

(declare-fun b!1412238 () Bool)

(declare-fun res!639581 () Bool)

(assert (=> b!1412238 (=> (not res!639581) (not e!901548))))

(assert (=> b!1412238 (= res!639581 (and (not (= (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229)))) Empty!4790)) (not (= (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))) Empty!4790))))))

(declare-fun b!1412239 () Bool)

(declare-fun res!639582 () Bool)

(assert (=> b!1412239 (=> (not res!639582) (not e!901548))))

(assert (=> b!1412239 (= res!639582 (= (cheight!5001 (left!12320 (c!231994 (tokens!1748 acc!229)))) (+ (max!0 (height!693 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))) (height!693 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))) 1)))))

(declare-fun b!1412240 () Bool)

(assert (=> b!1412240 (= e!901548 (<= 0 (cheight!5001 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(assert (= (and d!403757 res!639580) b!1412238))

(assert (= (and b!1412238 res!639581) b!1412239))

(assert (= (and b!1412239 res!639582) b!1412240))

(declare-fun m!1592777 () Bool)

(assert (=> d!403757 m!1592777))

(declare-fun m!1592779 () Bool)

(assert (=> d!403757 m!1592779))

(declare-fun m!1592781 () Bool)

(assert (=> b!1412239 m!1592781))

(declare-fun m!1592783 () Bool)

(assert (=> b!1412239 m!1592783))

(assert (=> b!1412239 m!1592781))

(assert (=> b!1412239 m!1592783))

(declare-fun m!1592785 () Bool)

(assert (=> b!1412239 m!1592785))

(assert (=> b!1412058 d!403757))

(declare-fun d!403759 () Bool)

(assert (=> d!403759 (= (inv!18832 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (= (mod (str.len (value!81024 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) 2) 0))))

(assert (=> b!1412116 d!403759))

(declare-fun d!403761 () Bool)

(declare-fun res!639583 () Bool)

(declare-fun e!901549 () Bool)

(assert (=> d!403761 (=> (not res!639583) (not e!901549))))

(assert (=> d!403761 (= res!639583 (semiInverseModEq!971 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (toValue!3800 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))))

(assert (=> d!403761 (= (inv!18856 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) e!901549)))

(declare-fun b!1412241 () Bool)

(assert (=> b!1412241 (= e!901549 (equivClasses!930 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (toValue!3800 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))))

(assert (= (and d!403761 res!639583) b!1412241))

(declare-fun m!1592787 () Bool)

(assert (=> d!403761 m!1592787))

(declare-fun m!1592789 () Bool)

(assert (=> b!1412241 m!1592789))

(assert (=> b!1412116 d!403761))

(declare-fun d!403763 () Bool)

(assert (=> d!403763 (= (inv!18854 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))) (<= (size!11885 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3)))))) 2147483647))))

(declare-fun bs!339025 () Bool)

(assert (= bs!339025 d!403763))

(declare-fun m!1592791 () Bool)

(assert (=> bs!339025 m!1592791))

(assert (=> b!1412122 d!403763))

(declare-fun d!403765 () Bool)

(declare-fun lt!472490 () Bool)

(assert (=> d!403765 (= lt!472490 (isEmpty!8814 (list!5655 (left!12321 (c!231995 objs!24)))))))

(assert (=> d!403765 (= lt!472490 (= (size!11882 (left!12321 (c!231995 objs!24))) 0))))

(assert (=> d!403765 (= (isEmpty!8815 (left!12321 (c!231995 objs!24))) lt!472490)))

(declare-fun bs!339026 () Bool)

(assert (= bs!339026 d!403765))

(assert (=> bs!339026 m!1592157))

(assert (=> bs!339026 m!1592157))

(declare-fun m!1592793 () Bool)

(assert (=> bs!339026 m!1592793))

(assert (=> bs!339026 m!1592553))

(assert (=> b!1411947 d!403765))

(assert (=> b!1411749 d!403749))

(assert (=> b!1411749 d!403751))

(declare-fun d!403767 () Bool)

(declare-fun res!639584 () Bool)

(declare-fun e!901550 () Bool)

(assert (=> d!403767 (=> (not res!639584) (not e!901550))))

(assert (=> d!403767 (= res!639584 (= (csize!9810 (left!12320 (c!231994 (tokens!1748 sep!3)))) (+ (size!11886 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))) (size!11886 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))))))))

(assert (=> d!403767 (= (inv!18850 (left!12320 (c!231994 (tokens!1748 sep!3)))) e!901550)))

(declare-fun b!1412242 () Bool)

(declare-fun res!639585 () Bool)

(assert (=> b!1412242 (=> (not res!639585) (not e!901550))))

(assert (=> b!1412242 (= res!639585 (and (not (= (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3)))) Empty!4790)) (not (= (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))) Empty!4790))))))

(declare-fun b!1412243 () Bool)

(declare-fun res!639586 () Bool)

(assert (=> b!1412243 (=> (not res!639586) (not e!901550))))

(assert (=> b!1412243 (= res!639586 (= (cheight!5001 (left!12320 (c!231994 (tokens!1748 sep!3)))) (+ (max!0 (height!693 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))) (height!693 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))) 1)))))

(declare-fun b!1412244 () Bool)

(assert (=> b!1412244 (= e!901550 (<= 0 (cheight!5001 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(assert (= (and d!403767 res!639584) b!1412242))

(assert (= (and b!1412242 res!639585) b!1412243))

(assert (= (and b!1412243 res!639586) b!1412244))

(declare-fun m!1592795 () Bool)

(assert (=> d!403767 m!1592795))

(declare-fun m!1592797 () Bool)

(assert (=> d!403767 m!1592797))

(declare-fun m!1592799 () Bool)

(assert (=> b!1412243 m!1592799))

(declare-fun m!1592801 () Bool)

(assert (=> b!1412243 m!1592801))

(assert (=> b!1412243 m!1592799))

(assert (=> b!1412243 m!1592801))

(declare-fun m!1592803 () Bool)

(assert (=> b!1412243 m!1592803))

(assert (=> b!1411950 d!403767))

(declare-fun b!1412250 () Bool)

(declare-fun res!639588 () Bool)

(declare-fun e!901554 () Bool)

(assert (=> b!1412250 (=> (not res!639588) (not e!901554))))

(assert (=> b!1412250 (= res!639588 (isBalanced!1415 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412252 () Bool)

(assert (=> b!1412252 (= e!901554 (not (isEmpty!8817 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))))))

(declare-fun b!1412253 () Bool)

(declare-fun res!639591 () Bool)

(assert (=> b!1412253 (=> (not res!639591) (not e!901554))))

(assert (=> b!1412253 (= res!639591 (not (isEmpty!8817 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229)))))))))

(declare-fun b!1412254 () Bool)

(declare-fun res!639592 () Bool)

(assert (=> b!1412254 (=> (not res!639592) (not e!901554))))

(assert (=> b!1412254 (= res!639592 (isBalanced!1415 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412255 () Bool)

(declare-fun e!901555 () Bool)

(assert (=> b!1412255 (= e!901555 e!901554)))

(declare-fun res!639593 () Bool)

(assert (=> b!1412255 (=> (not res!639593) (not e!901554))))

(assert (=> b!1412255 (= res!639593 (<= (- 1) (- (height!693 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))) (height!693 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))))))))

(declare-fun b!1412251 () Bool)

(declare-fun res!639589 () Bool)

(assert (=> b!1412251 (=> (not res!639589) (not e!901554))))

(assert (=> b!1412251 (= res!639589 (<= (- (height!693 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))) (height!693 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))) 1))))

(declare-fun d!403769 () Bool)

(declare-fun res!639590 () Bool)

(assert (=> d!403769 (=> res!639590 e!901555)))

(assert (=> d!403769 (= res!639590 (not ((_ is Node!4790) (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> d!403769 (= (isBalanced!1415 (left!12320 (c!231994 (tokens!1748 acc!229)))) e!901555)))

(assert (= (and d!403769 (not res!639590)) b!1412255))

(assert (= (and b!1412255 res!639593) b!1412251))

(assert (= (and b!1412251 res!639589) b!1412250))

(assert (= (and b!1412250 res!639588) b!1412254))

(assert (= (and b!1412254 res!639592) b!1412253))

(assert (= (and b!1412253 res!639591) b!1412252))

(assert (=> b!1412255 m!1592781))

(assert (=> b!1412255 m!1592783))

(declare-fun m!1592813 () Bool)

(assert (=> b!1412253 m!1592813))

(declare-fun m!1592815 () Bool)

(assert (=> b!1412250 m!1592815))

(declare-fun m!1592817 () Bool)

(assert (=> b!1412254 m!1592817))

(declare-fun m!1592819 () Bool)

(assert (=> b!1412252 m!1592819))

(assert (=> b!1412251 m!1592781))

(assert (=> b!1412251 m!1592783))

(assert (=> b!1412044 d!403769))

(declare-fun d!403775 () Bool)

(declare-fun lt!472493 () Int)

(assert (=> d!403775 (>= lt!472493 0)))

(declare-fun e!901559 () Int)

(assert (=> d!403775 (= lt!472493 e!901559)))

(declare-fun c!232067 () Bool)

(assert (=> d!403775 (= c!232067 ((_ is Nil!14424) (list!5657 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> d!403775 (= (size!11885 (list!5657 (xs!7517 (c!231994 (tokens!1748 sep!3))))) lt!472493)))

(declare-fun b!1412263 () Bool)

(assert (=> b!1412263 (= e!901559 0)))

(declare-fun b!1412264 () Bool)

(assert (=> b!1412264 (= e!901559 (+ 1 (size!11885 (t!123553 (list!5657 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))

(assert (= (and d!403775 c!232067) b!1412263))

(assert (= (and d!403775 (not c!232067)) b!1412264))

(declare-fun m!1592831 () Bool)

(assert (=> b!1412264 m!1592831))

(assert (=> d!403551 d!403775))

(declare-fun d!403779 () Bool)

(assert (=> d!403779 (= (list!5657 (xs!7517 (c!231994 (tokens!1748 sep!3)))) (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))

(assert (=> d!403551 d!403779))

(declare-fun d!403781 () Bool)

(assert (=> d!403781 true))

(declare-fun lambda!62435 () Int)

(declare-fun order!8811 () Int)

(declare-fun dynLambda!6687 (Int Int) Int)

(assert (=> d!403781 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (dynLambda!6687 order!8811 lambda!62435))))

(declare-fun Forall2!455 (Int) Bool)

(assert (=> d!403781 (= (equivClasses!930 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (Forall2!455 lambda!62435))))

(declare-fun bs!339031 () Bool)

(assert (= bs!339031 d!403781))

(declare-fun m!1592839 () Bool)

(assert (=> bs!339031 m!1592839))

(assert (=> b!1412076 d!403781))

(declare-fun d!403791 () Bool)

(declare-fun lt!472500 () PrintableTokens!792)

(declare-fun apply!3696 (List!14492 Int) PrintableTokens!792)

(assert (=> d!403791 (= lt!472500 (apply!3696 (list!5659 (xs!7518 (c!231995 objs!24))) 0))))

(declare-fun choose!8719 (IArray!9587 Int) PrintableTokens!792)

(assert (=> d!403791 (= lt!472500 (choose!8719 (xs!7518 (c!231995 objs!24)) 0))))

(declare-fun e!901572 () Bool)

(assert (=> d!403791 e!901572))

(declare-fun res!639604 () Bool)

(assert (=> d!403791 (=> (not res!639604) (not e!901572))))

(assert (=> d!403791 (= res!639604 (<= 0 0))))

(assert (=> d!403791 (= (apply!3695 (xs!7518 (c!231995 objs!24)) 0) lt!472500)))

(declare-fun b!1412288 () Bool)

(declare-fun size!11887 (IArray!9587) Int)

(assert (=> b!1412288 (= e!901572 (< 0 (size!11887 (xs!7518 (c!231995 objs!24)))))))

(assert (= (and d!403791 res!639604) b!1412288))

(assert (=> d!403791 m!1592505))

(assert (=> d!403791 m!1592505))

(declare-fun m!1592851 () Bool)

(assert (=> d!403791 m!1592851))

(declare-fun m!1592853 () Bool)

(assert (=> d!403791 m!1592853))

(declare-fun m!1592855 () Bool)

(assert (=> b!1412288 m!1592855))

(assert (=> b!1411995 d!403791))

(declare-fun d!403795 () Bool)

(declare-fun lt!472501 () Int)

(assert (=> d!403795 (>= lt!472501 0)))

(declare-fun e!901573 () Int)

(assert (=> d!403795 (= lt!472501 e!901573)))

(declare-fun c!232073 () Bool)

(assert (=> d!403795 (= c!232073 ((_ is Nil!14426) (t!123555 (list!5651 objs!24))))))

(assert (=> d!403795 (= (size!11881 (t!123555 (list!5651 objs!24))) lt!472501)))

(declare-fun b!1412289 () Bool)

(assert (=> b!1412289 (= e!901573 0)))

(declare-fun b!1412290 () Bool)

(assert (=> b!1412290 (= e!901573 (+ 1 (size!11881 (t!123555 (t!123555 (list!5651 objs!24))))))))

(assert (= (and d!403795 c!232073) b!1412289))

(assert (= (and d!403795 (not c!232073)) b!1412290))

(declare-fun m!1592857 () Bool)

(assert (=> b!1412290 m!1592857))

(assert (=> b!1412039 d!403795))

(declare-fun d!403797 () Bool)

(assert (=> d!403797 (= (inv!18832 (tag!2767 (h!19826 (t!123554 (rules!11012 sep!3))))) (= (mod (str.len (value!81024 (tag!2767 (h!19826 (t!123554 (rules!11012 sep!3)))))) 2) 0))))

(assert (=> b!1412125 d!403797))

(declare-fun d!403799 () Bool)

(declare-fun res!639605 () Bool)

(declare-fun e!901574 () Bool)

(assert (=> d!403799 (=> (not res!639605) (not e!901574))))

(assert (=> d!403799 (= res!639605 (semiInverseModEq!971 (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3))))) (toValue!3800 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3)))))))))

(assert (=> d!403799 (= (inv!18856 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3))))) e!901574)))

(declare-fun b!1412291 () Bool)

(assert (=> b!1412291 (= e!901574 (equivClasses!930 (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3))))) (toValue!3800 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3)))))))))

(assert (= (and d!403799 res!639605) b!1412291))

(declare-fun m!1592859 () Bool)

(assert (=> d!403799 m!1592859))

(declare-fun m!1592861 () Bool)

(assert (=> b!1412291 m!1592861))

(assert (=> b!1412125 d!403799))

(declare-fun d!403801 () Bool)

(declare-fun lt!472502 () Int)

(assert (=> d!403801 (= lt!472502 (size!11881 (list!5655 (left!12321 (c!231995 objs!24)))))))

(assert (=> d!403801 (= lt!472502 (ite ((_ is Empty!4791) (left!12321 (c!231995 objs!24))) 0 (ite ((_ is Leaf!7240) (left!12321 (c!231995 objs!24))) (csize!9813 (left!12321 (c!231995 objs!24))) (csize!9812 (left!12321 (c!231995 objs!24))))))))

(assert (=> d!403801 (= (size!11882 (left!12321 (c!231995 objs!24))) lt!472502)))

(declare-fun bs!339032 () Bool)

(assert (= bs!339032 d!403801))

(assert (=> bs!339032 m!1592157))

(assert (=> bs!339032 m!1592157))

(declare-fun m!1592863 () Bool)

(assert (=> bs!339032 m!1592863))

(assert (=> d!403663 d!403801))

(declare-fun d!403803 () Bool)

(declare-fun lt!472503 () Int)

(assert (=> d!403803 (= lt!472503 (size!11881 (list!5655 (right!12651 (c!231995 objs!24)))))))

(assert (=> d!403803 (= lt!472503 (ite ((_ is Empty!4791) (right!12651 (c!231995 objs!24))) 0 (ite ((_ is Leaf!7240) (right!12651 (c!231995 objs!24))) (csize!9813 (right!12651 (c!231995 objs!24))) (csize!9812 (right!12651 (c!231995 objs!24))))))))

(assert (=> d!403803 (= (size!11882 (right!12651 (c!231995 objs!24))) lt!472503)))

(declare-fun bs!339033 () Bool)

(assert (= bs!339033 d!403803))

(assert (=> bs!339033 m!1592159))

(assert (=> bs!339033 m!1592159))

(declare-fun m!1592865 () Bool)

(assert (=> bs!339033 m!1592865))

(assert (=> d!403663 d!403803))

(declare-fun d!403805 () Bool)

(declare-fun c!232076 () Bool)

(assert (=> d!403805 (= c!232076 ((_ is Node!4790) (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun e!901577 () Bool)

(assert (=> d!403805 (= (inv!18840 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))) e!901577)))

(declare-fun b!1412296 () Bool)

(assert (=> b!1412296 (= e!901577 (inv!18850 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1412297 () Bool)

(declare-fun e!901578 () Bool)

(assert (=> b!1412297 (= e!901577 e!901578)))

(declare-fun res!639606 () Bool)

(assert (=> b!1412297 (= res!639606 (not ((_ is Leaf!7239) (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> b!1412297 (=> res!639606 e!901578)))

(declare-fun b!1412298 () Bool)

(assert (=> b!1412298 (= e!901578 (inv!18851 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(assert (= (and d!403805 c!232076) b!1412296))

(assert (= (and d!403805 (not c!232076)) b!1412297))

(assert (= (and b!1412297 (not res!639606)) b!1412298))

(declare-fun m!1592875 () Bool)

(assert (=> b!1412296 m!1592875))

(declare-fun m!1592877 () Bool)

(assert (=> b!1412298 m!1592877))

(assert (=> b!1412121 d!403805))

(declare-fun d!403809 () Bool)

(declare-fun c!232079 () Bool)

(assert (=> d!403809 (= c!232079 ((_ is Node!4790) (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun e!901581 () Bool)

(assert (=> d!403809 (= (inv!18840 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))) e!901581)))

(declare-fun b!1412303 () Bool)

(assert (=> b!1412303 (= e!901581 (inv!18850 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1412304 () Bool)

(declare-fun e!901582 () Bool)

(assert (=> b!1412304 (= e!901581 e!901582)))

(declare-fun res!639607 () Bool)

(assert (=> b!1412304 (= res!639607 (not ((_ is Leaf!7239) (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> b!1412304 (=> res!639607 e!901582)))

(declare-fun b!1412305 () Bool)

(assert (=> b!1412305 (= e!901582 (inv!18851 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(assert (= (and d!403809 c!232079) b!1412303))

(assert (= (and d!403809 (not c!232079)) b!1412304))

(assert (= (and b!1412304 (not res!639607)) b!1412305))

(declare-fun m!1592879 () Bool)

(assert (=> b!1412303 m!1592879))

(declare-fun m!1592881 () Bool)

(assert (=> b!1412305 m!1592881))

(assert (=> b!1412121 d!403809))

(declare-fun d!403811 () Bool)

(declare-fun res!639622 () Bool)

(declare-fun e!901593 () Bool)

(assert (=> d!403811 (=> (not res!639622) (not e!901593))))

(declare-fun isEmpty!8820 (List!14489) Bool)

(assert (=> d!403811 (= res!639622 (not (isEmpty!8820 (originalCharacters!3367 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))))

(assert (=> d!403811 (= (inv!18858 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))) e!901593)))

(declare-fun b!1412322 () Bool)

(declare-fun res!639623 () Bool)

(assert (=> b!1412322 (=> (not res!639623) (not e!901593))))

(declare-fun list!5663 (BalanceConc!9518) List!14489)

(declare-fun dynLambda!6689 (Int TokenValue!2595) BalanceConc!9518)

(assert (=> b!1412322 (= res!639623 (= (originalCharacters!3367 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))) (list!5663 (dynLambda!6689 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))))

(declare-fun b!1412323 () Bool)

(declare-fun size!11889 (List!14489) Int)

(assert (=> b!1412323 (= e!901593 (= (size!11877 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))) (size!11889 (originalCharacters!3367 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))))

(assert (= (and d!403811 res!639622) b!1412322))

(assert (= (and b!1412322 res!639623) b!1412323))

(declare-fun b_lambda!44525 () Bool)

(assert (=> (not b_lambda!44525) (not b!1412322)))

(declare-fun t!123615 () Bool)

(declare-fun tb!73353 () Bool)

(assert (=> (and b!1412129 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123615) tb!73353))

(declare-fun b!1412328 () Bool)

(declare-fun e!901596 () Bool)

(declare-fun tp!400863 () Bool)

(declare-fun inv!18861 (Conc!4789) Bool)

(assert (=> b!1412328 (= e!901596 (and (inv!18861 (c!231993 (dynLambda!6689 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) tp!400863))))

(declare-fun result!89286 () Bool)

(declare-fun inv!18862 (BalanceConc!9518) Bool)

(assert (=> tb!73353 (= result!89286 (and (inv!18862 (dynLambda!6689 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) e!901596))))

(assert (= tb!73353 b!1412328))

(declare-fun m!1592923 () Bool)

(assert (=> b!1412328 m!1592923))

(declare-fun m!1592925 () Bool)

(assert (=> tb!73353 m!1592925))

(assert (=> b!1412322 t!123615))

(declare-fun b_and!94583 () Bool)

(assert (= b_and!94581 (and (=> t!123615 result!89286) b_and!94583)))

(declare-fun t!123618 () Bool)

(declare-fun tb!73355 () Bool)

(assert (=> (and b!1411717 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123618) tb!73355))

(declare-fun result!89290 () Bool)

(assert (= result!89290 result!89286))

(assert (=> b!1412322 t!123618))

(declare-fun b_and!94585 () Bool)

(assert (= b_and!94549 (and (=> t!123618 result!89290) b_and!94585)))

(declare-fun t!123620 () Bool)

(declare-fun tb!73357 () Bool)

(assert (=> (and b!1412090 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123620) tb!73357))

(declare-fun result!89292 () Bool)

(assert (= result!89292 result!89286))

(assert (=> b!1412322 t!123620))

(declare-fun b_and!94587 () Bool)

(assert (= b_and!94569 (and (=> t!123620 result!89292) b_and!94587)))

(declare-fun t!123622 () Bool)

(declare-fun tb!73359 () Bool)

(assert (=> (and b!1411714 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123622) tb!73359))

(declare-fun result!89294 () Bool)

(assert (= result!89294 result!89286))

(assert (=> b!1412322 t!123622))

(declare-fun b_and!94589 () Bool)

(assert (= b_and!94545 (and (=> t!123622 result!89294) b_and!94589)))

(declare-fun tb!73361 () Bool)

(declare-fun t!123624 () Bool)

(assert (=> (and b!1412117 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123624) tb!73361))

(declare-fun result!89296 () Bool)

(assert (= result!89296 result!89286))

(assert (=> b!1412322 t!123624))

(declare-fun b_and!94591 () Bool)

(assert (= b_and!94573 (and (=> t!123624 result!89296) b_and!94591)))

(declare-fun t!123626 () Bool)

(declare-fun tb!73363 () Bool)

(assert (=> (and b!1412126 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123626) tb!73363))

(declare-fun result!89298 () Bool)

(assert (= result!89298 result!89286))

(assert (=> b!1412322 t!123626))

(declare-fun b_and!94593 () Bool)

(assert (= b_and!94577 (and (=> t!123626 result!89298) b_and!94593)))

(declare-fun m!1592927 () Bool)

(assert (=> d!403811 m!1592927))

(declare-fun m!1592929 () Bool)

(assert (=> b!1412322 m!1592929))

(assert (=> b!1412322 m!1592929))

(declare-fun m!1592931 () Bool)

(assert (=> b!1412322 m!1592931))

(declare-fun m!1592933 () Bool)

(assert (=> b!1412323 m!1592933))

(assert (=> b!1412087 d!403811))

(assert (=> b!1411818 d!403775))

(assert (=> b!1411818 d!403779))

(declare-fun bs!339037 () Bool)

(declare-fun d!403829 () Bool)

(assert (= bs!339037 (and d!403829 d!403781)))

(declare-fun lambda!62436 () Int)

(assert (=> bs!339037 (= (= (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (= lambda!62436 lambda!62435))))

(assert (=> d!403829 true))

(assert (=> d!403829 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (dynLambda!6687 order!8811 lambda!62436))))

(assert (=> d!403829 (= (equivClasses!930 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (Forall2!455 lambda!62436))))

(declare-fun bs!339038 () Bool)

(assert (= bs!339038 d!403829))

(declare-fun m!1592943 () Bool)

(assert (=> bs!339038 m!1592943))

(assert (=> b!1411735 d!403829))

(declare-fun d!403835 () Bool)

(assert (=> d!403835 (= (inv!18854 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))) (<= (size!11885 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229)))))) 2147483647))))

(declare-fun bs!339039 () Bool)

(assert (= bs!339039 d!403835))

(declare-fun m!1592945 () Bool)

(assert (=> bs!339039 m!1592945))

(assert (=> b!1412098 d!403835))

(declare-fun b!1412336 () Bool)

(declare-fun e!901599 () Bool)

(assert (=> b!1412336 (= e!901599 (forall!3533 (xs!7518 (right!12651 (c!231995 objs!24))) lambda!62403))))

(declare-fun d!403837 () Bool)

(declare-fun lt!472511 () Bool)

(assert (=> d!403837 (= lt!472511 (forall!3528 (list!5655 (right!12651 (c!231995 objs!24))) lambda!62403))))

(declare-fun e!901601 () Bool)

(assert (=> d!403837 (= lt!472511 e!901601)))

(declare-fun res!639631 () Bool)

(assert (=> d!403837 (=> res!639631 e!901601)))

(assert (=> d!403837 (= res!639631 ((_ is Empty!4791) (right!12651 (c!231995 objs!24))))))

(assert (=> d!403837 (= (forall!3529 (right!12651 (c!231995 objs!24)) lambda!62403) lt!472511)))

(declare-fun b!1412337 () Bool)

(declare-fun e!901600 () Bool)

(assert (=> b!1412337 (= e!901599 e!901600)))

(declare-fun lt!472510 () Unit!20947)

(assert (=> b!1412337 (= lt!472510 (lemmaForallConcat!128 (list!5655 (left!12321 (right!12651 (c!231995 objs!24)))) (list!5655 (right!12651 (right!12651 (c!231995 objs!24)))) lambda!62403))))

(declare-fun res!639630 () Bool)

(assert (=> b!1412337 (= res!639630 (forall!3529 (left!12321 (right!12651 (c!231995 objs!24))) lambda!62403))))

(assert (=> b!1412337 (=> (not res!639630) (not e!901600))))

(declare-fun b!1412338 () Bool)

(assert (=> b!1412338 (= e!901600 (forall!3529 (right!12651 (right!12651 (c!231995 objs!24))) lambda!62403))))

(declare-fun b!1412335 () Bool)

(assert (=> b!1412335 (= e!901601 e!901599)))

(declare-fun c!232081 () Bool)

(assert (=> b!1412335 (= c!232081 ((_ is Leaf!7240) (right!12651 (c!231995 objs!24))))))

(assert (= (and d!403837 (not res!639631)) b!1412335))

(assert (= (and b!1412335 c!232081) b!1412336))

(assert (= (and b!1412335 (not c!232081)) b!1412337))

(assert (= (and b!1412337 res!639630) b!1412338))

(declare-fun m!1592957 () Bool)

(assert (=> b!1412336 m!1592957))

(assert (=> d!403837 m!1592159))

(assert (=> d!403837 m!1592159))

(declare-fun m!1592959 () Bool)

(assert (=> d!403837 m!1592959))

(declare-fun m!1592961 () Bool)

(assert (=> b!1412337 m!1592961))

(declare-fun m!1592963 () Bool)

(assert (=> b!1412337 m!1592963))

(assert (=> b!1412337 m!1592961))

(assert (=> b!1412337 m!1592963))

(declare-fun m!1592965 () Bool)

(assert (=> b!1412337 m!1592965))

(declare-fun m!1592967 () Bool)

(assert (=> b!1412337 m!1592967))

(declare-fun m!1592969 () Bool)

(assert (=> b!1412338 m!1592969))

(assert (=> b!1411771 d!403837))

(declare-fun d!403843 () Bool)

(assert (=> d!403843 (= (inv!18854 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))) (<= (size!11885 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3)))))) 2147483647))))

(declare-fun bs!339040 () Bool)

(assert (= bs!339040 d!403843))

(declare-fun m!1592973 () Bool)

(assert (=> bs!339040 m!1592973))

(assert (=> b!1412119 d!403843))

(declare-fun d!403845 () Bool)

(declare-fun lt!472515 () Bool)

(declare-fun isEmpty!8822 (List!14490) Bool)

(assert (=> d!403845 (= lt!472515 (isEmpty!8822 (list!5661 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> d!403845 (= lt!472515 (= (size!11886 (left!12320 (c!231994 (tokens!1748 acc!229)))) 0))))

(assert (=> d!403845 (= (isEmpty!8817 (left!12320 (c!231994 (tokens!1748 acc!229)))) lt!472515)))

(declare-fun bs!339041 () Bool)

(assert (= bs!339041 d!403845))

(assert (=> bs!339041 m!1592769))

(assert (=> bs!339041 m!1592769))

(declare-fun m!1592985 () Bool)

(assert (=> bs!339041 m!1592985))

(assert (=> bs!339041 m!1592545))

(assert (=> b!1412047 d!403845))

(declare-fun d!403849 () Bool)

(assert (=> d!403849 (= (isEmpty!8814 (list!5655 (c!231995 objs!24))) ((_ is Nil!14426) (list!5655 (c!231995 objs!24))))))

(assert (=> d!403645 d!403849))

(declare-fun b!1412367 () Bool)

(declare-fun e!901615 () List!14492)

(declare-fun ++!3760 (List!14492 List!14492) List!14492)

(assert (=> b!1412367 (= e!901615 (++!3760 (list!5655 (left!12321 (c!231995 objs!24))) (list!5655 (right!12651 (c!231995 objs!24)))))))

(declare-fun d!403851 () Bool)

(declare-fun c!232089 () Bool)

(assert (=> d!403851 (= c!232089 ((_ is Empty!4791) (c!231995 objs!24)))))

(declare-fun e!901614 () List!14492)

(assert (=> d!403851 (= (list!5655 (c!231995 objs!24)) e!901614)))

(declare-fun b!1412364 () Bool)

(assert (=> b!1412364 (= e!901614 Nil!14426)))

(declare-fun b!1412365 () Bool)

(assert (=> b!1412365 (= e!901614 e!901615)))

(declare-fun c!232090 () Bool)

(assert (=> b!1412365 (= c!232090 ((_ is Leaf!7240) (c!231995 objs!24)))))

(declare-fun b!1412366 () Bool)

(assert (=> b!1412366 (= e!901615 (list!5659 (xs!7518 (c!231995 objs!24))))))

(assert (= (and d!403851 c!232089) b!1412364))

(assert (= (and d!403851 (not c!232089)) b!1412365))

(assert (= (and b!1412365 c!232090) b!1412366))

(assert (= (and b!1412365 (not c!232090)) b!1412367))

(assert (=> b!1412367 m!1592157))

(assert (=> b!1412367 m!1592159))

(assert (=> b!1412367 m!1592157))

(assert (=> b!1412367 m!1592159))

(declare-fun m!1592995 () Bool)

(assert (=> b!1412367 m!1592995))

(assert (=> b!1412366 m!1592505))

(assert (=> d!403645 d!403851))

(assert (=> d!403645 d!403633))

(declare-fun b!1412371 () Bool)

(declare-fun res!639642 () Bool)

(declare-fun e!901618 () Bool)

(assert (=> b!1412371 (=> (not res!639642) (not e!901618))))

(assert (=> b!1412371 (= res!639642 (isBalanced!1415 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1412373 () Bool)

(assert (=> b!1412373 (= e!901618 (not (isEmpty!8817 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))))))

(declare-fun b!1412374 () Bool)

(declare-fun res!639645 () Bool)

(assert (=> b!1412374 (=> (not res!639645) (not e!901618))))

(assert (=> b!1412374 (= res!639645 (not (isEmpty!8817 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3)))))))))

(declare-fun b!1412375 () Bool)

(declare-fun res!639646 () Bool)

(assert (=> b!1412375 (=> (not res!639646) (not e!901618))))

(assert (=> b!1412375 (= res!639646 (isBalanced!1415 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1412376 () Bool)

(declare-fun e!901619 () Bool)

(assert (=> b!1412376 (= e!901619 e!901618)))

(declare-fun res!639647 () Bool)

(assert (=> b!1412376 (=> (not res!639647) (not e!901618))))

(assert (=> b!1412376 (= res!639647 (<= (- 1) (- (height!693 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))) (height!693 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))))))))

(declare-fun b!1412372 () Bool)

(declare-fun res!639643 () Bool)

(assert (=> b!1412372 (=> (not res!639643) (not e!901618))))

(assert (=> b!1412372 (= res!639643 (<= (- (height!693 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))) (height!693 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))) 1))))

(declare-fun d!403861 () Bool)

(declare-fun res!639644 () Bool)

(assert (=> d!403861 (=> res!639644 e!901619)))

(assert (=> d!403861 (= res!639644 (not ((_ is Node!4790) (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> d!403861 (= (isBalanced!1415 (right!12650 (c!231994 (tokens!1748 sep!3)))) e!901619)))

(assert (= (and d!403861 (not res!639644)) b!1412376))

(assert (= (and b!1412376 res!639647) b!1412372))

(assert (= (and b!1412372 res!639643) b!1412371))

(assert (= (and b!1412371 res!639642) b!1412375))

(assert (= (and b!1412375 res!639646) b!1412374))

(assert (= (and b!1412374 res!639645) b!1412373))

(declare-fun m!1593001 () Bool)

(assert (=> b!1412376 m!1593001))

(declare-fun m!1593005 () Bool)

(assert (=> b!1412376 m!1593005))

(declare-fun m!1593009 () Bool)

(assert (=> b!1412374 m!1593009))

(declare-fun m!1593013 () Bool)

(assert (=> b!1412371 m!1593013))

(declare-fun m!1593015 () Bool)

(assert (=> b!1412375 m!1593015))

(declare-fun m!1593017 () Bool)

(assert (=> b!1412373 m!1593017))

(assert (=> b!1412372 m!1593001))

(assert (=> b!1412372 m!1593005))

(assert (=> b!1411752 d!403861))

(declare-fun d!403865 () Bool)

(declare-fun lt!472608 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!195 (LexerInterface!2191 List!14490 List!14491) Bool)

(declare-fun dropList!431 (BalanceConc!9520 Int) List!14490)

(assert (=> d!403865 (= lt!472608 (tokensListTwoByTwoPredicateSeparableList!195 Lexer!2189 (dropList!431 (tokens!1748 sep!3) 0) (rules!11012 sep!3)))))

(declare-fun lt!472600 () Unit!20947)

(declare-fun lt!472617 () Unit!20947)

(assert (=> d!403865 (= lt!472600 lt!472617)))

(declare-fun lt!472603 () List!14490)

(assert (=> d!403865 (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 sep!3) lt!472603)))

(declare-fun lt!472613 () List!14490)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!45 (LexerInterface!2191 List!14491 List!14490 List!14490) Unit!20947)

(assert (=> d!403865 (= lt!472617 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!45 Lexer!2189 (rules!11012 sep!3) lt!472613 lt!472603))))

(declare-fun e!901667 () Bool)

(assert (=> d!403865 e!901667))

(declare-fun res!639699 () Bool)

(assert (=> d!403865 (=> (not res!639699) (not e!901667))))

(assert (=> d!403865 (= res!639699 ((_ is Lexer!2189) Lexer!2189))))

(assert (=> d!403865 (= lt!472603 (dropList!431 (tokens!1748 sep!3) 0))))

(assert (=> d!403865 (= lt!472613 (list!5656 (tokens!1748 sep!3)))))

(declare-fun lt!472602 () Unit!20947)

(declare-fun lt!472597 () Unit!20947)

(assert (=> d!403865 (= lt!472602 lt!472597)))

(declare-fun lt!472621 () List!14490)

(declare-fun subseq!350 (List!14490 List!14490) Bool)

(declare-fun drop!698 (List!14490 Int) List!14490)

(assert (=> d!403865 (subseq!350 (drop!698 lt!472621 0) lt!472621)))

(declare-fun lemmaDropSubSeq!45 (List!14490 Int) Unit!20947)

(assert (=> d!403865 (= lt!472597 (lemmaDropSubSeq!45 lt!472621 0))))

(declare-fun e!901665 () Bool)

(assert (=> d!403865 e!901665))

(declare-fun res!639704 () Bool)

(assert (=> d!403865 (=> (not res!639704) (not e!901665))))

(assert (=> d!403865 (= res!639704 (>= 0 0))))

(assert (=> d!403865 (= lt!472621 (list!5656 (tokens!1748 sep!3)))))

(declare-fun e!901666 () Bool)

(assert (=> d!403865 (= lt!472608 e!901666)))

(declare-fun res!639698 () Bool)

(assert (=> d!403865 (=> res!639698 e!901666)))

(declare-fun size!11890 (BalanceConc!9520) Int)

(assert (=> d!403865 (= res!639698 (not (< 0 (- (size!11890 (tokens!1748 sep!3)) 1))))))

(declare-fun e!901664 () Bool)

(assert (=> d!403865 e!901664))

(declare-fun res!639702 () Bool)

(assert (=> d!403865 (=> (not res!639702) (not e!901664))))

(assert (=> d!403865 (= res!639702 (>= 0 0))))

(assert (=> d!403865 (= (tokensListTwoByTwoPredicateSeparable!91 Lexer!2189 (tokens!1748 sep!3) 0 (rules!11012 sep!3)) lt!472608)))

(declare-fun b!1412448 () Bool)

(declare-fun e!901663 () Bool)

(assert (=> b!1412448 (= e!901666 e!901663)))

(declare-fun res!639703 () Bool)

(assert (=> b!1412448 (=> (not res!639703) (not e!901663))))

(declare-fun separableTokensPredicate!472 (LexerInterface!2191 Token!4672 Token!4672 List!14491) Bool)

(declare-fun apply!3697 (BalanceConc!9520 Int) Token!4672)

(assert (=> b!1412448 (= res!639703 (separableTokensPredicate!472 Lexer!2189 (apply!3697 (tokens!1748 sep!3) 0) (apply!3697 (tokens!1748 sep!3) (+ 0 1)) (rules!11012 sep!3)))))

(declare-fun lt!472599 () Unit!20947)

(declare-fun Unit!20949 () Unit!20947)

(assert (=> b!1412448 (= lt!472599 Unit!20949)))

(declare-fun size!11891 (BalanceConc!9518) Int)

(declare-fun charsOf!1466 (Token!4672) BalanceConc!9518)

(assert (=> b!1412448 (> (size!11891 (charsOf!1466 (apply!3697 (tokens!1748 sep!3) (+ 0 1)))) 0)))

(declare-fun lt!472595 () Unit!20947)

(declare-fun Unit!20950 () Unit!20947)

(assert (=> b!1412448 (= lt!472595 Unit!20950)))

(declare-fun rulesProduceIndividualToken!1159 (LexerInterface!2191 List!14491 Token!4672) Bool)

(assert (=> b!1412448 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 sep!3) (apply!3697 (tokens!1748 sep!3) (+ 0 1)))))

(declare-fun lt!472604 () Unit!20947)

(declare-fun Unit!20951 () Unit!20947)

(assert (=> b!1412448 (= lt!472604 Unit!20951)))

(assert (=> b!1412448 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 sep!3) (apply!3697 (tokens!1748 sep!3) 0))))

(declare-fun lt!472625 () Unit!20947)

(declare-fun lt!472606 () Unit!20947)

(assert (=> b!1412448 (= lt!472625 lt!472606)))

(declare-fun lt!472598 () Token!4672)

(assert (=> b!1412448 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 sep!3) lt!472598)))

(declare-fun lt!472620 () List!14490)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!343 (LexerInterface!2191 List!14491 List!14490 Token!4672) Unit!20947)

(assert (=> b!1412448 (= lt!472606 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!343 Lexer!2189 (rules!11012 sep!3) lt!472620 lt!472598))))

(assert (=> b!1412448 (= lt!472598 (apply!3697 (tokens!1748 sep!3) (+ 0 1)))))

(assert (=> b!1412448 (= lt!472620 (list!5656 (tokens!1748 sep!3)))))

(declare-fun lt!472623 () Unit!20947)

(declare-fun lt!472622 () Unit!20947)

(assert (=> b!1412448 (= lt!472623 lt!472622)))

(declare-fun lt!472615 () Token!4672)

(assert (=> b!1412448 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 sep!3) lt!472615)))

(declare-fun lt!472610 () List!14490)

(assert (=> b!1412448 (= lt!472622 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!343 Lexer!2189 (rules!11012 sep!3) lt!472610 lt!472615))))

(assert (=> b!1412448 (= lt!472615 (apply!3697 (tokens!1748 sep!3) 0))))

(assert (=> b!1412448 (= lt!472610 (list!5656 (tokens!1748 sep!3)))))

(declare-fun lt!472596 () Unit!20947)

(declare-fun lt!472619 () Unit!20947)

(assert (=> b!1412448 (= lt!472596 lt!472619)))

(declare-fun lt!472607 () List!14490)

(declare-fun lt!472626 () Int)

(declare-fun tail!2067 (List!14490) List!14490)

(assert (=> b!1412448 (= (tail!2067 (drop!698 lt!472607 lt!472626)) (drop!698 lt!472607 (+ lt!472626 1)))))

(declare-fun lemmaDropTail!433 (List!14490 Int) Unit!20947)

(assert (=> b!1412448 (= lt!472619 (lemmaDropTail!433 lt!472607 lt!472626))))

(assert (=> b!1412448 (= lt!472626 (+ 0 1))))

(assert (=> b!1412448 (= lt!472607 (list!5656 (tokens!1748 sep!3)))))

(declare-fun lt!472611 () Unit!20947)

(declare-fun lt!472618 () Unit!20947)

(assert (=> b!1412448 (= lt!472611 lt!472618)))

(declare-fun lt!472624 () List!14490)

(assert (=> b!1412448 (= (tail!2067 (drop!698 lt!472624 0)) (drop!698 lt!472624 (+ 0 1)))))

(assert (=> b!1412448 (= lt!472618 (lemmaDropTail!433 lt!472624 0))))

(assert (=> b!1412448 (= lt!472624 (list!5656 (tokens!1748 sep!3)))))

(declare-fun lt!472594 () Unit!20947)

(declare-fun lt!472612 () Unit!20947)

(assert (=> b!1412448 (= lt!472594 lt!472612)))

(declare-fun lt!472609 () List!14490)

(declare-fun lt!472601 () Int)

(declare-fun head!2680 (List!14490) Token!4672)

(declare-fun apply!3698 (List!14490 Int) Token!4672)

(assert (=> b!1412448 (= (head!2680 (drop!698 lt!472609 lt!472601)) (apply!3698 lt!472609 lt!472601))))

(declare-fun lemmaDropApply!453 (List!14490 Int) Unit!20947)

(assert (=> b!1412448 (= lt!472612 (lemmaDropApply!453 lt!472609 lt!472601))))

(assert (=> b!1412448 (= lt!472601 (+ 0 1))))

(assert (=> b!1412448 (= lt!472609 (list!5656 (tokens!1748 sep!3)))))

(declare-fun lt!472616 () Unit!20947)

(declare-fun lt!472614 () Unit!20947)

(assert (=> b!1412448 (= lt!472616 lt!472614)))

(declare-fun lt!472605 () List!14490)

(assert (=> b!1412448 (= (head!2680 (drop!698 lt!472605 0)) (apply!3698 lt!472605 0))))

(assert (=> b!1412448 (= lt!472614 (lemmaDropApply!453 lt!472605 0))))

(assert (=> b!1412448 (= lt!472605 (list!5656 (tokens!1748 sep!3)))))

(declare-fun b!1412449 () Bool)

(assert (=> b!1412449 (= e!901663 (tokensListTwoByTwoPredicateSeparable!91 Lexer!2189 (tokens!1748 sep!3) (+ 0 1) (rules!11012 sep!3)))))

(declare-fun b!1412450 () Bool)

(declare-fun res!639700 () Bool)

(assert (=> b!1412450 (=> (not res!639700) (not e!901667))))

(assert (=> b!1412450 (= res!639700 (rulesInvariant!2061 Lexer!2189 (rules!11012 sep!3)))))

(declare-fun b!1412451 () Bool)

(assert (=> b!1412451 (= e!901665 (<= 0 (size!11885 lt!472621)))))

(declare-fun b!1412452 () Bool)

(declare-fun res!639701 () Bool)

(assert (=> b!1412452 (=> (not res!639701) (not e!901667))))

(assert (=> b!1412452 (= res!639701 (not (isEmpty!8816 (rules!11012 sep!3))))))

(declare-fun b!1412453 () Bool)

(assert (=> b!1412453 (= e!901664 (<= 0 (size!11890 (tokens!1748 sep!3))))))

(declare-fun b!1412454 () Bool)

(declare-fun res!639697 () Bool)

(assert (=> b!1412454 (=> (not res!639697) (not e!901667))))

(assert (=> b!1412454 (= res!639697 (subseq!350 lt!472603 lt!472613))))

(declare-fun b!1412455 () Bool)

(assert (=> b!1412455 (= e!901667 (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 sep!3) lt!472613))))

(assert (= (and d!403865 res!639702) b!1412453))

(assert (= (and d!403865 (not res!639698)) b!1412448))

(assert (= (and b!1412448 res!639703) b!1412449))

(assert (= (and d!403865 res!639704) b!1412451))

(assert (= (and d!403865 res!639699) b!1412452))

(assert (= (and b!1412452 res!639701) b!1412450))

(assert (= (and b!1412450 res!639700) b!1412454))

(assert (= (and b!1412454 res!639697) b!1412455))

(declare-fun m!1593097 () Bool)

(assert (=> b!1412448 m!1593097))

(declare-fun m!1593099 () Bool)

(assert (=> b!1412448 m!1593099))

(declare-fun m!1593101 () Bool)

(assert (=> b!1412448 m!1593101))

(declare-fun m!1593103 () Bool)

(assert (=> b!1412448 m!1593103))

(declare-fun m!1593105 () Bool)

(assert (=> b!1412448 m!1593105))

(declare-fun m!1593107 () Bool)

(assert (=> b!1412448 m!1593107))

(declare-fun m!1593109 () Bool)

(assert (=> b!1412448 m!1593109))

(declare-fun m!1593111 () Bool)

(assert (=> b!1412448 m!1593111))

(declare-fun m!1593113 () Bool)

(assert (=> b!1412448 m!1593113))

(declare-fun m!1593115 () Bool)

(assert (=> b!1412448 m!1593115))

(declare-fun m!1593117 () Bool)

(assert (=> b!1412448 m!1593117))

(declare-fun m!1593119 () Bool)

(assert (=> b!1412448 m!1593119))

(declare-fun m!1593121 () Bool)

(assert (=> b!1412448 m!1593121))

(declare-fun m!1593123 () Bool)

(assert (=> b!1412448 m!1593123))

(declare-fun m!1593125 () Bool)

(assert (=> b!1412448 m!1593125))

(assert (=> b!1412448 m!1593111))

(declare-fun m!1593127 () Bool)

(assert (=> b!1412448 m!1593127))

(declare-fun m!1593129 () Bool)

(assert (=> b!1412448 m!1593129))

(declare-fun m!1593131 () Bool)

(assert (=> b!1412448 m!1593131))

(declare-fun m!1593133 () Bool)

(assert (=> b!1412448 m!1593133))

(declare-fun m!1593135 () Bool)

(assert (=> b!1412448 m!1593135))

(assert (=> b!1412448 m!1593129))

(assert (=> b!1412448 m!1593107))

(declare-fun m!1593137 () Bool)

(assert (=> b!1412448 m!1593137))

(assert (=> b!1412448 m!1593097))

(declare-fun m!1593139 () Bool)

(assert (=> b!1412448 m!1593139))

(declare-fun m!1593141 () Bool)

(assert (=> b!1412448 m!1593141))

(assert (=> b!1412448 m!1593115))

(assert (=> b!1412448 m!1593137))

(declare-fun m!1593143 () Bool)

(assert (=> b!1412448 m!1593143))

(declare-fun m!1593145 () Bool)

(assert (=> b!1412448 m!1593145))

(assert (=> b!1412448 m!1593119))

(assert (=> b!1412448 m!1593119))

(assert (=> b!1412448 m!1593137))

(declare-fun m!1593147 () Bool)

(assert (=> b!1412448 m!1593147))

(assert (=> b!1412448 m!1593137))

(declare-fun m!1593149 () Bool)

(assert (=> b!1412448 m!1593149))

(assert (=> b!1412448 m!1592477))

(assert (=> b!1412452 m!1592075))

(declare-fun m!1593151 () Bool)

(assert (=> d!403865 m!1593151))

(declare-fun m!1593153 () Bool)

(assert (=> d!403865 m!1593153))

(declare-fun m!1593155 () Bool)

(assert (=> d!403865 m!1593155))

(declare-fun m!1593157 () Bool)

(assert (=> d!403865 m!1593157))

(declare-fun m!1593159 () Bool)

(assert (=> d!403865 m!1593159))

(declare-fun m!1593161 () Bool)

(assert (=> d!403865 m!1593161))

(declare-fun m!1593163 () Bool)

(assert (=> d!403865 m!1593163))

(assert (=> d!403865 m!1592477))

(assert (=> d!403865 m!1593153))

(assert (=> d!403865 m!1593157))

(declare-fun m!1593165 () Bool)

(assert (=> d!403865 m!1593165))

(declare-fun m!1593167 () Bool)

(assert (=> b!1412455 m!1593167))

(declare-fun m!1593169 () Bool)

(assert (=> b!1412449 m!1593169))

(declare-fun m!1593171 () Bool)

(assert (=> b!1412454 m!1593171))

(assert (=> b!1412450 m!1592077))

(assert (=> b!1412453 m!1593151))

(declare-fun m!1593173 () Bool)

(assert (=> b!1412451 m!1593173))

(assert (=> d!403639 d!403865))

(declare-fun d!403909 () Bool)

(declare-fun res!639705 () Bool)

(declare-fun e!901668 () Bool)

(assert (=> d!403909 (=> (not res!639705) (not e!901668))))

(assert (=> d!403909 (= res!639705 (<= (size!11885 (list!5657 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3)))))) 512))))

(assert (=> d!403909 (= (inv!18851 (right!12650 (c!231994 (tokens!1748 sep!3)))) e!901668)))

(declare-fun b!1412456 () Bool)

(declare-fun res!639706 () Bool)

(assert (=> b!1412456 (=> (not res!639706) (not e!901668))))

(assert (=> b!1412456 (= res!639706 (= (csize!9811 (right!12650 (c!231994 (tokens!1748 sep!3)))) (size!11885 (list!5657 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))))))

(declare-fun b!1412457 () Bool)

(assert (=> b!1412457 (= e!901668 (and (> (csize!9811 (right!12650 (c!231994 (tokens!1748 sep!3)))) 0) (<= (csize!9811 (right!12650 (c!231994 (tokens!1748 sep!3)))) 512)))))

(assert (= (and d!403909 res!639705) b!1412456))

(assert (= (and b!1412456 res!639706) b!1412457))

(declare-fun m!1593175 () Bool)

(assert (=> d!403909 m!1593175))

(assert (=> d!403909 m!1593175))

(declare-fun m!1593177 () Bool)

(assert (=> d!403909 m!1593177))

(assert (=> b!1412456 m!1593175))

(assert (=> b!1412456 m!1593175))

(assert (=> b!1412456 m!1593177))

(assert (=> b!1411959 d!403909))

(declare-fun d!403911 () Bool)

(declare-fun res!639711 () Bool)

(declare-fun e!901673 () Bool)

(assert (=> d!403911 (=> res!639711 e!901673)))

(assert (=> d!403911 (= res!639711 ((_ is Nil!14424) (list!5656 (tokens!1748 acc!229))))))

(assert (=> d!403911 (= (forall!3534 (list!5656 (tokens!1748 acc!229)) lambda!62414) e!901673)))

(declare-fun b!1412462 () Bool)

(declare-fun e!901674 () Bool)

(assert (=> b!1412462 (= e!901673 e!901674)))

(declare-fun res!639712 () Bool)

(assert (=> b!1412462 (=> (not res!639712) (not e!901674))))

(declare-fun dynLambda!6690 (Int Token!4672) Bool)

(assert (=> b!1412462 (= res!639712 (dynLambda!6690 lambda!62414 (h!19825 (list!5656 (tokens!1748 acc!229)))))))

(declare-fun b!1412463 () Bool)

(assert (=> b!1412463 (= e!901674 (forall!3534 (t!123553 (list!5656 (tokens!1748 acc!229))) lambda!62414))))

(assert (= (and d!403911 (not res!639711)) b!1412462))

(assert (= (and b!1412462 res!639712) b!1412463))

(declare-fun b_lambda!44531 () Bool)

(assert (=> (not b_lambda!44531) (not b!1412462)))

(declare-fun m!1593179 () Bool)

(assert (=> b!1412462 m!1593179))

(declare-fun m!1593181 () Bool)

(assert (=> b!1412463 m!1593181))

(assert (=> d!403537 d!403911))

(declare-fun d!403913 () Bool)

(assert (=> d!403913 (= (list!5656 (tokens!1748 acc!229)) (list!5661 (c!231994 (tokens!1748 acc!229))))))

(declare-fun bs!339049 () Bool)

(assert (= bs!339049 d!403913))

(declare-fun m!1593183 () Bool)

(assert (=> bs!339049 m!1593183))

(assert (=> d!403537 d!403913))

(declare-fun d!403915 () Bool)

(declare-fun lt!472695 () Bool)

(assert (=> d!403915 (= lt!472695 (forall!3534 (list!5656 (tokens!1748 acc!229)) lambda!62414))))

(declare-fun forall!3539 (Conc!4790 Int) Bool)

(assert (=> d!403915 (= lt!472695 (forall!3539 (c!231994 (tokens!1748 acc!229)) lambda!62414))))

(assert (=> d!403915 (= (forall!3535 (tokens!1748 acc!229) lambda!62414) lt!472695)))

(declare-fun bs!339050 () Bool)

(assert (= bs!339050 d!403915))

(assert (=> bs!339050 m!1592193))

(assert (=> bs!339050 m!1592193))

(assert (=> bs!339050 m!1592195))

(declare-fun m!1593185 () Bool)

(assert (=> bs!339050 m!1593185))

(assert (=> d!403537 d!403915))

(assert (=> d!403537 d!403521))

(declare-fun d!403917 () Bool)

(declare-fun res!639729 () Bool)

(declare-fun e!901685 () Bool)

(assert (=> d!403917 (=> (not res!639729) (not e!901685))))

(assert (=> d!403917 (= res!639729 (= (csize!9812 (right!12651 (c!231995 objs!24))) (+ (size!11882 (left!12321 (right!12651 (c!231995 objs!24)))) (size!11882 (right!12651 (right!12651 (c!231995 objs!24)))))))))

(assert (=> d!403917 (= (inv!18852 (right!12651 (c!231995 objs!24))) e!901685)))

(declare-fun b!1412480 () Bool)

(declare-fun res!639730 () Bool)

(assert (=> b!1412480 (=> (not res!639730) (not e!901685))))

(assert (=> b!1412480 (= res!639730 (and (not (= (left!12321 (right!12651 (c!231995 objs!24))) Empty!4791)) (not (= (right!12651 (right!12651 (c!231995 objs!24))) Empty!4791))))))

(declare-fun b!1412481 () Bool)

(declare-fun res!639731 () Bool)

(assert (=> b!1412481 (=> (not res!639731) (not e!901685))))

(assert (=> b!1412481 (= res!639731 (= (cheight!5002 (right!12651 (c!231995 objs!24))) (+ (max!0 (height!694 (left!12321 (right!12651 (c!231995 objs!24)))) (height!694 (right!12651 (right!12651 (c!231995 objs!24))))) 1)))))

(declare-fun b!1412482 () Bool)

(assert (=> b!1412482 (= e!901685 (<= 0 (cheight!5002 (right!12651 (c!231995 objs!24)))))))

(assert (= (and d!403917 res!639729) b!1412480))

(assert (= (and b!1412480 res!639730) b!1412481))

(assert (= (and b!1412481 res!639731) b!1412482))

(declare-fun m!1593187 () Bool)

(assert (=> d!403917 m!1593187))

(declare-fun m!1593189 () Bool)

(assert (=> d!403917 m!1593189))

(declare-fun m!1593191 () Bool)

(assert (=> b!1412481 m!1593191))

(declare-fun m!1593193 () Bool)

(assert (=> b!1412481 m!1593193))

(assert (=> b!1412481 m!1593191))

(assert (=> b!1412481 m!1593193))

(declare-fun m!1593195 () Bool)

(assert (=> b!1412481 m!1593195))

(assert (=> b!1411730 d!403917))

(declare-fun d!403919 () Bool)

(declare-fun lt!472696 () Bool)

(assert (=> d!403919 (= lt!472696 (isEmpty!8814 (list!5655 (right!12651 (c!231995 objs!24)))))))

(assert (=> d!403919 (= lt!472696 (= (size!11882 (right!12651 (c!231995 objs!24))) 0))))

(assert (=> d!403919 (= (isEmpty!8815 (right!12651 (c!231995 objs!24))) lt!472696)))

(declare-fun bs!339051 () Bool)

(assert (= bs!339051 d!403919))

(assert (=> bs!339051 m!1592159))

(assert (=> bs!339051 m!1592159))

(declare-fun m!1593197 () Bool)

(assert (=> bs!339051 m!1593197))

(assert (=> bs!339051 m!1592555))

(assert (=> b!1411946 d!403919))

(declare-fun b!1412483 () Bool)

(declare-fun e!901687 () Bool)

(assert (=> b!1412483 (= e!901687 (inv!16 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))

(declare-fun d!403921 () Bool)

(declare-fun c!232100 () Bool)

(assert (=> d!403921 (= c!232100 ((_ is IntegerValue!7785) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))

(assert (=> d!403921 (= (inv!21 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))) e!901687)))

(declare-fun b!1412484 () Bool)

(declare-fun e!901688 () Bool)

(assert (=> b!1412484 (= e!901688 (inv!15 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))

(declare-fun b!1412485 () Bool)

(declare-fun res!639732 () Bool)

(assert (=> b!1412485 (=> res!639732 e!901688)))

(assert (=> b!1412485 (= res!639732 (not ((_ is IntegerValue!7787) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))))

(declare-fun e!901686 () Bool)

(assert (=> b!1412485 (= e!901686 e!901688)))

(declare-fun b!1412486 () Bool)

(assert (=> b!1412486 (= e!901687 e!901686)))

(declare-fun c!232099 () Bool)

(assert (=> b!1412486 (= c!232099 ((_ is IntegerValue!7786) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))

(declare-fun b!1412487 () Bool)

(assert (=> b!1412487 (= e!901686 (inv!17 (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))

(assert (= (and d!403921 c!232100) b!1412483))

(assert (= (and d!403921 (not c!232100)) b!1412486))

(assert (= (and b!1412486 c!232099) b!1412487))

(assert (= (and b!1412486 (not c!232099)) b!1412485))

(assert (= (and b!1412485 (not res!639732)) b!1412484))

(declare-fun m!1593199 () Bool)

(assert (=> b!1412483 m!1593199))

(declare-fun m!1593201 () Bool)

(assert (=> b!1412484 m!1593201))

(declare-fun m!1593203 () Bool)

(assert (=> b!1412487 m!1593203))

(assert (=> b!1412115 d!403921))

(declare-fun d!403923 () Bool)

(declare-fun c!232101 () Bool)

(assert (=> d!403923 (= c!232101 ((_ is Node!4790) (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))))))

(declare-fun e!901689 () Bool)

(assert (=> d!403923 (= (inv!18840 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))) e!901689)))

(declare-fun b!1412488 () Bool)

(assert (=> b!1412488 (= e!901689 (inv!18850 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))))))

(declare-fun b!1412489 () Bool)

(declare-fun e!901690 () Bool)

(assert (=> b!1412489 (= e!901689 e!901690)))

(declare-fun res!639733 () Bool)

(assert (=> b!1412489 (= res!639733 (not ((_ is Leaf!7239) (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))))))

(assert (=> b!1412489 (=> res!639733 e!901690)))

(declare-fun b!1412490 () Bool)

(assert (=> b!1412490 (= e!901690 (inv!18851 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))))))

(assert (= (and d!403923 c!232101) b!1412488))

(assert (= (and d!403923 (not c!232101)) b!1412489))

(assert (= (and b!1412489 (not res!639733)) b!1412490))

(declare-fun m!1593205 () Bool)

(assert (=> b!1412488 m!1593205))

(declare-fun m!1593207 () Bool)

(assert (=> b!1412490 m!1593207))

(assert (=> b!1412113 d!403923))

(declare-fun b!1412491 () Bool)

(declare-fun res!639734 () Bool)

(declare-fun e!901691 () Bool)

(assert (=> b!1412491 (=> (not res!639734) (not e!901691))))

(assert (=> b!1412491 (= res!639734 (isBalanced!1415 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1412493 () Bool)

(assert (=> b!1412493 (= e!901691 (not (isEmpty!8817 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))))))

(declare-fun b!1412494 () Bool)

(declare-fun res!639737 () Bool)

(assert (=> b!1412494 (=> (not res!639737) (not e!901691))))

(assert (=> b!1412494 (= res!639737 (not (isEmpty!8817 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3)))))))))

(declare-fun b!1412495 () Bool)

(declare-fun res!639738 () Bool)

(assert (=> b!1412495 (=> (not res!639738) (not e!901691))))

(assert (=> b!1412495 (= res!639738 (isBalanced!1415 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1412496 () Bool)

(declare-fun e!901692 () Bool)

(assert (=> b!1412496 (= e!901692 e!901691)))

(declare-fun res!639739 () Bool)

(assert (=> b!1412496 (=> (not res!639739) (not e!901691))))

(assert (=> b!1412496 (= res!639739 (<= (- 1) (- (height!693 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))) (height!693 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))))))))

(declare-fun b!1412492 () Bool)

(declare-fun res!639735 () Bool)

(assert (=> b!1412492 (=> (not res!639735) (not e!901691))))

(assert (=> b!1412492 (= res!639735 (<= (- (height!693 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))) (height!693 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))) 1))))

(declare-fun d!403925 () Bool)

(declare-fun res!639736 () Bool)

(assert (=> d!403925 (=> res!639736 e!901692)))

(assert (=> d!403925 (= res!639736 (not ((_ is Node!4790) (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> d!403925 (= (isBalanced!1415 (left!12320 (c!231994 (tokens!1748 sep!3)))) e!901692)))

(assert (= (and d!403925 (not res!639736)) b!1412496))

(assert (= (and b!1412496 res!639739) b!1412492))

(assert (= (and b!1412492 res!639735) b!1412491))

(assert (= (and b!1412491 res!639734) b!1412495))

(assert (= (and b!1412495 res!639738) b!1412494))

(assert (= (and b!1412494 res!639737) b!1412493))

(assert (=> b!1412496 m!1592799))

(assert (=> b!1412496 m!1592801))

(declare-fun m!1593209 () Bool)

(assert (=> b!1412494 m!1593209))

(declare-fun m!1593211 () Bool)

(assert (=> b!1412491 m!1593211))

(declare-fun m!1593213 () Bool)

(assert (=> b!1412495 m!1593213))

(declare-fun m!1593215 () Bool)

(assert (=> b!1412493 m!1593215))

(assert (=> b!1412492 m!1592799))

(assert (=> b!1412492 m!1592801))

(assert (=> b!1411748 d!403925))

(assert (=> b!1411701 d!403517))

(assert (=> b!1411701 d!403519))

(declare-fun d!403927 () Bool)

(declare-fun lt!472697 () Int)

(assert (=> d!403927 (>= lt!472697 0)))

(declare-fun e!901693 () Int)

(assert (=> d!403927 (= lt!472697 e!901693)))

(declare-fun c!232102 () Bool)

(assert (=> d!403927 (= c!232102 ((_ is Nil!14424) (list!5657 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> d!403927 (= (size!11885 (list!5657 (xs!7517 (c!231994 (tokens!1748 acc!229))))) lt!472697)))

(declare-fun b!1412497 () Bool)

(assert (=> b!1412497 (= e!901693 0)))

(declare-fun b!1412498 () Bool)

(assert (=> b!1412498 (= e!901693 (+ 1 (size!11885 (t!123553 (list!5657 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))

(assert (= (and d!403927 c!232102) b!1412497))

(assert (= (and d!403927 (not c!232102)) b!1412498))

(declare-fun m!1593217 () Bool)

(assert (=> b!1412498 m!1593217))

(assert (=> d!403647 d!403927))

(declare-fun d!403929 () Bool)

(assert (=> d!403929 (= (list!5657 (xs!7517 (c!231994 (tokens!1748 acc!229)))) (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))

(assert (=> d!403647 d!403929))

(declare-fun d!403931 () Bool)

(declare-fun res!639740 () Bool)

(declare-fun e!901694 () Bool)

(assert (=> d!403931 (=> (not res!639740) (not e!901694))))

(assert (=> d!403931 (= res!639740 (<= (size!11885 (list!5657 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229)))))) 512))))

(assert (=> d!403931 (= (inv!18851 (right!12650 (c!231994 (tokens!1748 acc!229)))) e!901694)))

(declare-fun b!1412499 () Bool)

(declare-fun res!639741 () Bool)

(assert (=> b!1412499 (=> (not res!639741) (not e!901694))))

(assert (=> b!1412499 (= res!639741 (= (csize!9811 (right!12650 (c!231994 (tokens!1748 acc!229)))) (size!11885 (list!5657 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))))))

(declare-fun b!1412500 () Bool)

(assert (=> b!1412500 (= e!901694 (and (> (csize!9811 (right!12650 (c!231994 (tokens!1748 acc!229)))) 0) (<= (csize!9811 (right!12650 (c!231994 (tokens!1748 acc!229)))) 512)))))

(assert (= (and d!403931 res!639740) b!1412499))

(assert (= (and b!1412499 res!639741) b!1412500))

(declare-fun m!1593219 () Bool)

(assert (=> d!403931 m!1593219))

(assert (=> d!403931 m!1593219))

(declare-fun m!1593221 () Bool)

(assert (=> d!403931 m!1593221))

(assert (=> b!1412499 m!1593219))

(assert (=> b!1412499 m!1593219))

(assert (=> b!1412499 m!1593221))

(assert (=> b!1412063 d!403931))

(declare-fun d!403933 () Bool)

(declare-fun res!639742 () Bool)

(declare-fun e!901695 () Bool)

(assert (=> d!403933 (=> res!639742 e!901695)))

(assert (=> d!403933 (= res!639742 ((_ is Nil!14426) (t!123555 (list!5651 objs!24))))))

(assert (=> d!403933 (= (forall!3528 (t!123555 (list!5651 objs!24)) lambda!62403) e!901695)))

(declare-fun b!1412501 () Bool)

(declare-fun e!901696 () Bool)

(assert (=> b!1412501 (= e!901695 e!901696)))

(declare-fun res!639743 () Bool)

(assert (=> b!1412501 (=> (not res!639743) (not e!901696))))

(assert (=> b!1412501 (= res!639743 (dynLambda!6679 lambda!62403 (h!19827 (t!123555 (list!5651 objs!24)))))))

(declare-fun b!1412502 () Bool)

(assert (=> b!1412502 (= e!901696 (forall!3528 (t!123555 (t!123555 (list!5651 objs!24))) lambda!62403))))

(assert (= (and d!403933 (not res!639742)) b!1412501))

(assert (= (and b!1412501 res!639743) b!1412502))

(declare-fun b_lambda!44533 () Bool)

(assert (=> (not b_lambda!44533) (not b!1412501)))

(declare-fun m!1593223 () Bool)

(assert (=> b!1412501 m!1593223))

(declare-fun m!1593225 () Bool)

(assert (=> b!1412502 m!1593225))

(assert (=> b!1411759 d!403933))

(declare-fun d!403935 () Bool)

(declare-fun res!639744 () Bool)

(declare-fun e!901697 () Bool)

(assert (=> d!403935 (=> (not res!639744) (not e!901697))))

(assert (=> d!403935 (= res!639744 (not (isEmpty!8820 (originalCharacters!3367 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))))

(assert (=> d!403935 (= (inv!18858 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))) e!901697)))

(declare-fun b!1412503 () Bool)

(declare-fun res!639745 () Bool)

(assert (=> b!1412503 (=> (not res!639745) (not e!901697))))

(assert (=> b!1412503 (= res!639745 (= (originalCharacters!3367 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))) (list!5663 (dynLambda!6689 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))))

(declare-fun b!1412504 () Bool)

(assert (=> b!1412504 (= e!901697 (= (size!11877 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))) (size!11889 (originalCharacters!3367 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))))

(assert (= (and d!403935 res!639744) b!1412503))

(assert (= (and b!1412503 res!639745) b!1412504))

(declare-fun b_lambda!44535 () Bool)

(assert (=> (not b_lambda!44535) (not b!1412503)))

(declare-fun t!123644 () Bool)

(declare-fun tb!73377 () Bool)

(assert (=> (and b!1412117 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123644) tb!73377))

(declare-fun b!1412505 () Bool)

(declare-fun e!901698 () Bool)

(declare-fun tp!400867 () Bool)

(assert (=> b!1412505 (= e!901698 (and (inv!18861 (c!231993 (dynLambda!6689 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) tp!400867))))

(declare-fun result!89314 () Bool)

(assert (=> tb!73377 (= result!89314 (and (inv!18862 (dynLambda!6689 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (value!81025 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) e!901698))))

(assert (= tb!73377 b!1412505))

(declare-fun m!1593227 () Bool)

(assert (=> b!1412505 m!1593227))

(declare-fun m!1593229 () Bool)

(assert (=> tb!73377 m!1593229))

(assert (=> b!1412503 t!123644))

(declare-fun b_and!94607 () Bool)

(assert (= b_and!94591 (and (=> t!123644 result!89314) b_and!94607)))

(declare-fun t!123646 () Bool)

(declare-fun tb!73379 () Bool)

(assert (=> (and b!1411714 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123646) tb!73379))

(declare-fun result!89316 () Bool)

(assert (= result!89316 result!89314))

(assert (=> b!1412503 t!123646))

(declare-fun b_and!94609 () Bool)

(assert (= b_and!94589 (and (=> t!123646 result!89316) b_and!94609)))

(declare-fun tb!73381 () Bool)

(declare-fun t!123648 () Bool)

(assert (=> (and b!1411717 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123648) tb!73381))

(declare-fun result!89318 () Bool)

(assert (= result!89318 result!89314))

(assert (=> b!1412503 t!123648))

(declare-fun b_and!94611 () Bool)

(assert (= b_and!94585 (and (=> t!123648 result!89318) b_and!94611)))

(declare-fun tb!73383 () Bool)

(declare-fun t!123650 () Bool)

(assert (=> (and b!1412126 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123650) tb!73383))

(declare-fun result!89320 () Bool)

(assert (= result!89320 result!89314))

(assert (=> b!1412503 t!123650))

(declare-fun b_and!94613 () Bool)

(assert (= b_and!94593 (and (=> t!123650 result!89320) b_and!94613)))

(declare-fun tb!73385 () Bool)

(declare-fun t!123652 () Bool)

(assert (=> (and b!1412090 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123652) tb!73385))

(declare-fun result!89322 () Bool)

(assert (= result!89322 result!89314))

(assert (=> b!1412503 t!123652))

(declare-fun b_and!94615 () Bool)

(assert (= b_and!94587 (and (=> t!123652 result!89322) b_and!94615)))

(declare-fun t!123654 () Bool)

(declare-fun tb!73387 () Bool)

(assert (=> (and b!1412129 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123654) tb!73387))

(declare-fun result!89324 () Bool)

(assert (= result!89324 result!89314))

(assert (=> b!1412503 t!123654))

(declare-fun b_and!94617 () Bool)

(assert (= b_and!94583 (and (=> t!123654 result!89324) b_and!94617)))

(declare-fun m!1593231 () Bool)

(assert (=> d!403935 m!1593231))

(declare-fun m!1593233 () Bool)

(assert (=> b!1412503 m!1593233))

(assert (=> b!1412503 m!1593233))

(declare-fun m!1593235 () Bool)

(assert (=> b!1412503 m!1593235))

(declare-fun m!1593237 () Bool)

(assert (=> b!1412504 m!1593237))

(assert (=> b!1412114 d!403935))

(declare-fun d!403937 () Bool)

(declare-fun lt!472712 () Bool)

(assert (=> d!403937 (= lt!472712 (tokensListTwoByTwoPredicateSeparableList!195 Lexer!2189 (dropList!431 (tokens!1748 acc!229) 0) (rules!11012 acc!229)))))

(declare-fun lt!472704 () Unit!20947)

(declare-fun lt!472721 () Unit!20947)

(assert (=> d!403937 (= lt!472704 lt!472721)))

(declare-fun lt!472707 () List!14490)

(assert (=> d!403937 (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 acc!229) lt!472707)))

(declare-fun lt!472717 () List!14490)

(assert (=> d!403937 (= lt!472721 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!45 Lexer!2189 (rules!11012 acc!229) lt!472717 lt!472707))))

(declare-fun e!901703 () Bool)

(assert (=> d!403937 e!901703))

(declare-fun res!639748 () Bool)

(assert (=> d!403937 (=> (not res!639748) (not e!901703))))

(assert (=> d!403937 (= res!639748 ((_ is Lexer!2189) Lexer!2189))))

(assert (=> d!403937 (= lt!472707 (dropList!431 (tokens!1748 acc!229) 0))))

(assert (=> d!403937 (= lt!472717 (list!5656 (tokens!1748 acc!229)))))

(declare-fun lt!472706 () Unit!20947)

(declare-fun lt!472701 () Unit!20947)

(assert (=> d!403937 (= lt!472706 lt!472701)))

(declare-fun lt!472725 () List!14490)

(assert (=> d!403937 (subseq!350 (drop!698 lt!472725 0) lt!472725)))

(assert (=> d!403937 (= lt!472701 (lemmaDropSubSeq!45 lt!472725 0))))

(declare-fun e!901701 () Bool)

(assert (=> d!403937 e!901701))

(declare-fun res!639753 () Bool)

(assert (=> d!403937 (=> (not res!639753) (not e!901701))))

(assert (=> d!403937 (= res!639753 (>= 0 0))))

(assert (=> d!403937 (= lt!472725 (list!5656 (tokens!1748 acc!229)))))

(declare-fun e!901702 () Bool)

(assert (=> d!403937 (= lt!472712 e!901702)))

(declare-fun res!639747 () Bool)

(assert (=> d!403937 (=> res!639747 e!901702)))

(assert (=> d!403937 (= res!639747 (not (< 0 (- (size!11890 (tokens!1748 acc!229)) 1))))))

(declare-fun e!901700 () Bool)

(assert (=> d!403937 e!901700))

(declare-fun res!639751 () Bool)

(assert (=> d!403937 (=> (not res!639751) (not e!901700))))

(assert (=> d!403937 (= res!639751 (>= 0 0))))

(assert (=> d!403937 (= (tokensListTwoByTwoPredicateSeparable!91 Lexer!2189 (tokens!1748 acc!229) 0 (rules!11012 acc!229)) lt!472712)))

(declare-fun b!1412506 () Bool)

(declare-fun e!901699 () Bool)

(assert (=> b!1412506 (= e!901702 e!901699)))

(declare-fun res!639752 () Bool)

(assert (=> b!1412506 (=> (not res!639752) (not e!901699))))

(assert (=> b!1412506 (= res!639752 (separableTokensPredicate!472 Lexer!2189 (apply!3697 (tokens!1748 acc!229) 0) (apply!3697 (tokens!1748 acc!229) (+ 0 1)) (rules!11012 acc!229)))))

(declare-fun lt!472703 () Unit!20947)

(declare-fun Unit!20955 () Unit!20947)

(assert (=> b!1412506 (= lt!472703 Unit!20955)))

(assert (=> b!1412506 (> (size!11891 (charsOf!1466 (apply!3697 (tokens!1748 acc!229) (+ 0 1)))) 0)))

(declare-fun lt!472699 () Unit!20947)

(declare-fun Unit!20956 () Unit!20947)

(assert (=> b!1412506 (= lt!472699 Unit!20956)))

(assert (=> b!1412506 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 acc!229) (apply!3697 (tokens!1748 acc!229) (+ 0 1)))))

(declare-fun lt!472708 () Unit!20947)

(declare-fun Unit!20957 () Unit!20947)

(assert (=> b!1412506 (= lt!472708 Unit!20957)))

(assert (=> b!1412506 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 acc!229) (apply!3697 (tokens!1748 acc!229) 0))))

(declare-fun lt!472729 () Unit!20947)

(declare-fun lt!472710 () Unit!20947)

(assert (=> b!1412506 (= lt!472729 lt!472710)))

(declare-fun lt!472702 () Token!4672)

(assert (=> b!1412506 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 acc!229) lt!472702)))

(declare-fun lt!472724 () List!14490)

(assert (=> b!1412506 (= lt!472710 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!343 Lexer!2189 (rules!11012 acc!229) lt!472724 lt!472702))))

(assert (=> b!1412506 (= lt!472702 (apply!3697 (tokens!1748 acc!229) (+ 0 1)))))

(assert (=> b!1412506 (= lt!472724 (list!5656 (tokens!1748 acc!229)))))

(declare-fun lt!472727 () Unit!20947)

(declare-fun lt!472726 () Unit!20947)

(assert (=> b!1412506 (= lt!472727 lt!472726)))

(declare-fun lt!472719 () Token!4672)

(assert (=> b!1412506 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 acc!229) lt!472719)))

(declare-fun lt!472714 () List!14490)

(assert (=> b!1412506 (= lt!472726 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!343 Lexer!2189 (rules!11012 acc!229) lt!472714 lt!472719))))

(assert (=> b!1412506 (= lt!472719 (apply!3697 (tokens!1748 acc!229) 0))))

(assert (=> b!1412506 (= lt!472714 (list!5656 (tokens!1748 acc!229)))))

(declare-fun lt!472700 () Unit!20947)

(declare-fun lt!472723 () Unit!20947)

(assert (=> b!1412506 (= lt!472700 lt!472723)))

(declare-fun lt!472711 () List!14490)

(declare-fun lt!472730 () Int)

(assert (=> b!1412506 (= (tail!2067 (drop!698 lt!472711 lt!472730)) (drop!698 lt!472711 (+ lt!472730 1)))))

(assert (=> b!1412506 (= lt!472723 (lemmaDropTail!433 lt!472711 lt!472730))))

(assert (=> b!1412506 (= lt!472730 (+ 0 1))))

(assert (=> b!1412506 (= lt!472711 (list!5656 (tokens!1748 acc!229)))))

(declare-fun lt!472715 () Unit!20947)

(declare-fun lt!472722 () Unit!20947)

(assert (=> b!1412506 (= lt!472715 lt!472722)))

(declare-fun lt!472728 () List!14490)

(assert (=> b!1412506 (= (tail!2067 (drop!698 lt!472728 0)) (drop!698 lt!472728 (+ 0 1)))))

(assert (=> b!1412506 (= lt!472722 (lemmaDropTail!433 lt!472728 0))))

(assert (=> b!1412506 (= lt!472728 (list!5656 (tokens!1748 acc!229)))))

(declare-fun lt!472698 () Unit!20947)

(declare-fun lt!472716 () Unit!20947)

(assert (=> b!1412506 (= lt!472698 lt!472716)))

(declare-fun lt!472713 () List!14490)

(declare-fun lt!472705 () Int)

(assert (=> b!1412506 (= (head!2680 (drop!698 lt!472713 lt!472705)) (apply!3698 lt!472713 lt!472705))))

(assert (=> b!1412506 (= lt!472716 (lemmaDropApply!453 lt!472713 lt!472705))))

(assert (=> b!1412506 (= lt!472705 (+ 0 1))))

(assert (=> b!1412506 (= lt!472713 (list!5656 (tokens!1748 acc!229)))))

(declare-fun lt!472720 () Unit!20947)

(declare-fun lt!472718 () Unit!20947)

(assert (=> b!1412506 (= lt!472720 lt!472718)))

(declare-fun lt!472709 () List!14490)

(assert (=> b!1412506 (= (head!2680 (drop!698 lt!472709 0)) (apply!3698 lt!472709 0))))

(assert (=> b!1412506 (= lt!472718 (lemmaDropApply!453 lt!472709 0))))

(assert (=> b!1412506 (= lt!472709 (list!5656 (tokens!1748 acc!229)))))

(declare-fun b!1412507 () Bool)

(assert (=> b!1412507 (= e!901699 (tokensListTwoByTwoPredicateSeparable!91 Lexer!2189 (tokens!1748 acc!229) (+ 0 1) (rules!11012 acc!229)))))

(declare-fun b!1412508 () Bool)

(declare-fun res!639749 () Bool)

(assert (=> b!1412508 (=> (not res!639749) (not e!901703))))

(assert (=> b!1412508 (= res!639749 (rulesInvariant!2061 Lexer!2189 (rules!11012 acc!229)))))

(declare-fun b!1412509 () Bool)

(assert (=> b!1412509 (= e!901701 (<= 0 (size!11885 lt!472725)))))

(declare-fun b!1412510 () Bool)

(declare-fun res!639750 () Bool)

(assert (=> b!1412510 (=> (not res!639750) (not e!901703))))

(assert (=> b!1412510 (= res!639750 (not (isEmpty!8816 (rules!11012 acc!229))))))

(declare-fun b!1412511 () Bool)

(assert (=> b!1412511 (= e!901700 (<= 0 (size!11890 (tokens!1748 acc!229))))))

(declare-fun b!1412512 () Bool)

(declare-fun res!639746 () Bool)

(assert (=> b!1412512 (=> (not res!639746) (not e!901703))))

(assert (=> b!1412512 (= res!639746 (subseq!350 lt!472707 lt!472717))))

(declare-fun b!1412513 () Bool)

(assert (=> b!1412513 (= e!901703 (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 acc!229) lt!472717))))

(assert (= (and d!403937 res!639751) b!1412511))

(assert (= (and d!403937 (not res!639747)) b!1412506))

(assert (= (and b!1412506 res!639752) b!1412507))

(assert (= (and d!403937 res!639753) b!1412509))

(assert (= (and d!403937 res!639748) b!1412510))

(assert (= (and b!1412510 res!639750) b!1412508))

(assert (= (and b!1412508 res!639749) b!1412512))

(assert (= (and b!1412512 res!639746) b!1412513))

(declare-fun m!1593239 () Bool)

(assert (=> b!1412506 m!1593239))

(declare-fun m!1593241 () Bool)

(assert (=> b!1412506 m!1593241))

(declare-fun m!1593243 () Bool)

(assert (=> b!1412506 m!1593243))

(declare-fun m!1593245 () Bool)

(assert (=> b!1412506 m!1593245))

(declare-fun m!1593247 () Bool)

(assert (=> b!1412506 m!1593247))

(declare-fun m!1593249 () Bool)

(assert (=> b!1412506 m!1593249))

(declare-fun m!1593251 () Bool)

(assert (=> b!1412506 m!1593251))

(declare-fun m!1593253 () Bool)

(assert (=> b!1412506 m!1593253))

(declare-fun m!1593255 () Bool)

(assert (=> b!1412506 m!1593255))

(declare-fun m!1593257 () Bool)

(assert (=> b!1412506 m!1593257))

(declare-fun m!1593259 () Bool)

(assert (=> b!1412506 m!1593259))

(declare-fun m!1593261 () Bool)

(assert (=> b!1412506 m!1593261))

(declare-fun m!1593263 () Bool)

(assert (=> b!1412506 m!1593263))

(declare-fun m!1593265 () Bool)

(assert (=> b!1412506 m!1593265))

(declare-fun m!1593267 () Bool)

(assert (=> b!1412506 m!1593267))

(assert (=> b!1412506 m!1593253))

(declare-fun m!1593269 () Bool)

(assert (=> b!1412506 m!1593269))

(declare-fun m!1593271 () Bool)

(assert (=> b!1412506 m!1593271))

(declare-fun m!1593273 () Bool)

(assert (=> b!1412506 m!1593273))

(declare-fun m!1593275 () Bool)

(assert (=> b!1412506 m!1593275))

(declare-fun m!1593277 () Bool)

(assert (=> b!1412506 m!1593277))

(assert (=> b!1412506 m!1593271))

(assert (=> b!1412506 m!1593249))

(declare-fun m!1593279 () Bool)

(assert (=> b!1412506 m!1593279))

(assert (=> b!1412506 m!1593239))

(declare-fun m!1593281 () Bool)

(assert (=> b!1412506 m!1593281))

(declare-fun m!1593283 () Bool)

(assert (=> b!1412506 m!1593283))

(assert (=> b!1412506 m!1593257))

(assert (=> b!1412506 m!1593279))

(declare-fun m!1593285 () Bool)

(assert (=> b!1412506 m!1593285))

(declare-fun m!1593287 () Bool)

(assert (=> b!1412506 m!1593287))

(assert (=> b!1412506 m!1593261))

(assert (=> b!1412506 m!1593261))

(assert (=> b!1412506 m!1593279))

(declare-fun m!1593289 () Bool)

(assert (=> b!1412506 m!1593289))

(assert (=> b!1412506 m!1593279))

(declare-fun m!1593291 () Bool)

(assert (=> b!1412506 m!1593291))

(assert (=> b!1412506 m!1592193))

(assert (=> b!1412510 m!1592067))

(declare-fun m!1593293 () Bool)

(assert (=> d!403937 m!1593293))

(declare-fun m!1593295 () Bool)

(assert (=> d!403937 m!1593295))

(declare-fun m!1593297 () Bool)

(assert (=> d!403937 m!1593297))

(declare-fun m!1593299 () Bool)

(assert (=> d!403937 m!1593299))

(declare-fun m!1593301 () Bool)

(assert (=> d!403937 m!1593301))

(declare-fun m!1593303 () Bool)

(assert (=> d!403937 m!1593303))

(declare-fun m!1593305 () Bool)

(assert (=> d!403937 m!1593305))

(assert (=> d!403937 m!1592193))

(assert (=> d!403937 m!1593295))

(assert (=> d!403937 m!1593299))

(declare-fun m!1593307 () Bool)

(assert (=> d!403937 m!1593307))

(declare-fun m!1593309 () Bool)

(assert (=> b!1412513 m!1593309))

(declare-fun m!1593311 () Bool)

(assert (=> b!1412507 m!1593311))

(declare-fun m!1593313 () Bool)

(assert (=> b!1412512 m!1593313))

(assert (=> b!1412508 m!1592069))

(assert (=> b!1412511 m!1593293))

(declare-fun m!1593315 () Bool)

(assert (=> b!1412509 m!1593315))

(assert (=> d!403553 d!403937))

(declare-fun d!403939 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!386) Regex!3819)

(declare-datatypes ((StringLiteralValueInjection!108 0))(
  ( (StringLiteralValueInjection!109) )
))
(declare-fun injection!8 (StringLiteralValueInjection!108) TokenValueInjection!4850)

(assert (=> d!403939 (= (jsonstringRule!0 JsonLexer!387) (Rule!4811 (jsonStringRe!0 JsonLexer!387) (String!17212 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!109)))))

(declare-fun bs!339058 () Bool)

(assert (= bs!339058 d!403939))

(declare-fun m!1593451 () Bool)

(assert (=> bs!339058 m!1593451))

(declare-fun m!1593453 () Bool)

(assert (=> bs!339058 m!1593453))

(assert (=> d!403653 d!403939))

(declare-fun d!403971 () Bool)

(declare-fun falseRe!0 (JsonLexer!386) Regex!3819)

(declare-datatypes ((KeywordValueInjection!172 0))(
  ( (KeywordValueInjection!173) )
))
(declare-fun injection!9 (KeywordValueInjection!172) TokenValueInjection!4850)

(assert (=> d!403971 (= (falseRule!0 JsonLexer!387) (Rule!4811 (falseRe!0 JsonLexer!387) (String!17212 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339063 () Bool)

(assert (= bs!339063 d!403971))

(declare-fun m!1593505 () Bool)

(assert (=> bs!339063 m!1593505))

(declare-fun m!1593507 () Bool)

(assert (=> bs!339063 m!1593507))

(assert (=> d!403653 d!403971))

(declare-fun d!404007 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404007 (= (lBracketRule!0 JsonLexer!387) (Rule!4811 (lBracketRe!0 JsonLexer!387) (String!17212 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339065 () Bool)

(assert (= bs!339065 d!404007))

(declare-fun m!1593603 () Bool)

(assert (=> bs!339065 m!1593603))

(assert (=> bs!339065 m!1593507))

(assert (=> d!403653 d!404007))

(declare-fun d!404019 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404019 (= (rBracketRule!0 JsonLexer!387) (Rule!4811 (rBracketRe!0 JsonLexer!387) (String!17212 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339067 () Bool)

(assert (= bs!339067 d!404019))

(declare-fun m!1593609 () Bool)

(assert (=> bs!339067 m!1593609))

(assert (=> bs!339067 m!1593507))

(assert (=> d!403653 d!404019))

(declare-fun d!404023 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404023 (= (lBraceRule!0 JsonLexer!387) (Rule!4811 (lBraceRe!0 JsonLexer!387) (String!17212 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339069 () Bool)

(assert (= bs!339069 d!404023))

(declare-fun m!1593615 () Bool)

(assert (=> bs!339069 m!1593615))

(assert (=> bs!339069 m!1593507))

(assert (=> d!403653 d!404023))

(declare-fun d!404027 () Bool)

(declare-fun nullRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404027 (= (nullRule!0 JsonLexer!387) (Rule!4811 (nullRe!0 JsonLexer!387) (String!17212 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339071 () Bool)

(assert (= bs!339071 d!404027))

(declare-fun m!1593619 () Bool)

(assert (=> bs!339071 m!1593619))

(assert (=> bs!339071 m!1593507))

(assert (=> d!403653 d!404027))

(declare-fun d!404031 () Bool)

(declare-fun commaRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404031 (= (commaRule!0 JsonLexer!387) (Rule!4811 (commaRe!0 JsonLexer!387) (String!17212 "ccoommmmaa") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339073 () Bool)

(assert (= bs!339073 d!404031))

(declare-fun m!1593623 () Bool)

(assert (=> bs!339073 m!1593623))

(assert (=> bs!339073 m!1593507))

(assert (=> d!403653 d!404031))

(declare-fun d!404035 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404035 (= (rBraceRule!0 JsonLexer!387) (Rule!4811 (rBraceRe!0 JsonLexer!387) (String!17212 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339075 () Bool)

(assert (= bs!339075 d!404035))

(declare-fun m!1593627 () Bool)

(assert (=> bs!339075 m!1593627))

(assert (=> bs!339075 m!1593507))

(assert (=> d!403653 d!404035))

(declare-fun d!404039 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!386) Regex!3819)

(declare-datatypes ((WhitespaceValueInjection!112 0))(
  ( (WhitespaceValueInjection!113) )
))
(declare-fun injection!7 (WhitespaceValueInjection!112) TokenValueInjection!4850)

(assert (=> d!404039 (= (whitespaceRule!0 JsonLexer!387) (Rule!4811 (wsCharRe!0 JsonLexer!387) (String!17212 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!113)))))

(declare-fun bs!339077 () Bool)

(assert (= bs!339077 d!404039))

(declare-fun m!1593631 () Bool)

(assert (=> bs!339077 m!1593631))

(declare-fun m!1593633 () Bool)

(assert (=> bs!339077 m!1593633))

(assert (=> d!403653 d!404039))

(declare-fun d!404043 () Bool)

(declare-fun eofRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404043 (= (eofRule!0 JsonLexer!387) (Rule!4811 (eofRe!0 JsonLexer!387) (String!17212 "eeooff") false (injection!7 WhitespaceValueInjection!113)))))

(declare-fun bs!339079 () Bool)

(assert (= bs!339079 d!404043))

(declare-fun m!1593637 () Bool)

(assert (=> bs!339079 m!1593637))

(assert (=> bs!339079 m!1593633))

(assert (=> d!403653 d!404043))

(declare-fun d!404047 () Bool)

(declare-fun trueRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404047 (= (trueRule!0 JsonLexer!387) (Rule!4811 (trueRe!0 JsonLexer!387) (String!17212 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339081 () Bool)

(assert (= bs!339081 d!404047))

(declare-fun m!1593641 () Bool)

(assert (=> bs!339081 m!1593641))

(assert (=> bs!339081 m!1593507))

(assert (=> d!403653 d!404047))

(declare-fun d!404051 () Bool)

(declare-fun colonRe!0 (JsonLexer!386) Regex!3819)

(assert (=> d!404051 (= (colonRule!0 JsonLexer!387) (Rule!4811 (colonRe!0 JsonLexer!387) (String!17212 "ccoolloonn") false (injection!9 KeywordValueInjection!173)))))

(declare-fun bs!339083 () Bool)

(assert (= bs!339083 d!404051))

(declare-fun m!1593647 () Bool)

(assert (=> bs!339083 m!1593647))

(assert (=> bs!339083 m!1593507))

(assert (=> d!403653 d!404051))

(declare-fun d!404055 () Bool)

(declare-fun intRe!0 (JsonLexer!386) Regex!3819)

(declare-datatypes ((IntegerValueInjection!88 0))(
  ( (IntegerValueInjection!89) )
))
(declare-fun injection!5 (IntegerValueInjection!88) TokenValueInjection!4850)

(assert (=> d!404055 (= (integerLiteralRule!0 JsonLexer!387) (Rule!4811 (intRe!0 JsonLexer!387) (String!17212 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!89)))))

(declare-fun bs!339085 () Bool)

(assert (= bs!339085 d!404055))

(declare-fun m!1593651 () Bool)

(assert (=> bs!339085 m!1593651))

(declare-fun m!1593653 () Bool)

(assert (=> bs!339085 m!1593653))

(assert (=> d!403653 d!404055))

(declare-fun d!404059 () Bool)

(declare-fun floatRe!0 (JsonLexer!386) Regex!3819)

(declare-datatypes ((FloatLiteralValueInjection!84 0))(
  ( (FloatLiteralValueInjection!85) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!84) TokenValueInjection!4850)

(assert (=> d!404059 (= (floatLiteralRule!0 JsonLexer!387) (Rule!4811 (floatRe!0 JsonLexer!387) (String!17212 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!85)))))

(declare-fun bs!339087 () Bool)

(assert (= bs!339087 d!404059))

(declare-fun m!1593657 () Bool)

(assert (=> bs!339087 m!1593657))

(declare-fun m!1593659 () Bool)

(assert (=> bs!339087 m!1593659))

(assert (=> d!403653 d!404059))

(declare-fun d!404063 () Bool)

(assert (=> d!404063 (= (head!2678 (list!5655 (c!231995 objs!24))) (h!19827 (list!5655 (c!231995 objs!24))))))

(assert (=> d!403623 d!404063))

(assert (=> d!403623 d!403851))

(assert (=> d!403623 d!403607))

(declare-fun d!404065 () Bool)

(declare-fun res!639811 () Bool)

(declare-fun e!901747 () Bool)

(assert (=> d!404065 (=> (not res!639811) (not e!901747))))

(assert (=> d!404065 (= res!639811 (= (csize!9812 (left!12321 (c!231995 objs!24))) (+ (size!11882 (left!12321 (left!12321 (c!231995 objs!24)))) (size!11882 (right!12651 (left!12321 (c!231995 objs!24)))))))))

(assert (=> d!404065 (= (inv!18852 (left!12321 (c!231995 objs!24))) e!901747)))

(declare-fun b!1412586 () Bool)

(declare-fun res!639812 () Bool)

(assert (=> b!1412586 (=> (not res!639812) (not e!901747))))

(assert (=> b!1412586 (= res!639812 (and (not (= (left!12321 (left!12321 (c!231995 objs!24))) Empty!4791)) (not (= (right!12651 (left!12321 (c!231995 objs!24))) Empty!4791))))))

(declare-fun b!1412587 () Bool)

(declare-fun res!639813 () Bool)

(assert (=> b!1412587 (=> (not res!639813) (not e!901747))))

(assert (=> b!1412587 (= res!639813 (= (cheight!5002 (left!12321 (c!231995 objs!24))) (+ (max!0 (height!694 (left!12321 (left!12321 (c!231995 objs!24)))) (height!694 (right!12651 (left!12321 (c!231995 objs!24))))) 1)))))

(declare-fun b!1412588 () Bool)

(assert (=> b!1412588 (= e!901747 (<= 0 (cheight!5002 (left!12321 (c!231995 objs!24)))))))

(assert (= (and d!404065 res!639811) b!1412586))

(assert (= (and b!1412586 res!639812) b!1412587))

(assert (= (and b!1412587 res!639813) b!1412588))

(declare-fun m!1593661 () Bool)

(assert (=> d!404065 m!1593661))

(declare-fun m!1593663 () Bool)

(assert (=> d!404065 m!1593663))

(declare-fun m!1593665 () Bool)

(assert (=> b!1412587 m!1593665))

(declare-fun m!1593667 () Bool)

(assert (=> b!1412587 m!1593667))

(assert (=> b!1412587 m!1593665))

(assert (=> b!1412587 m!1593667))

(declare-fun m!1593669 () Bool)

(assert (=> b!1412587 m!1593669))

(assert (=> b!1411727 d!404065))

(declare-fun d!404067 () Bool)

(declare-fun lt!472803 () Int)

(assert (=> d!404067 (>= lt!472803 0)))

(declare-fun e!901748 () Int)

(assert (=> d!404067 (= lt!472803 e!901748)))

(declare-fun c!232110 () Bool)

(assert (=> d!404067 (= c!232110 ((_ is Nil!14424) (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> d!404067 (= (size!11885 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))) lt!472803)))

(declare-fun b!1412589 () Bool)

(assert (=> b!1412589 (= e!901748 0)))

(declare-fun b!1412590 () Bool)

(assert (=> b!1412590 (= e!901748 (+ 1 (size!11885 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))))

(assert (= (and d!404067 c!232110) b!1412589))

(assert (= (and d!404067 (not c!232110)) b!1412590))

(declare-fun m!1593671 () Bool)

(assert (=> b!1412590 m!1593671))

(assert (=> d!403661 d!404067))

(assert (=> b!1411687 d!403615))

(assert (=> b!1411687 d!403617))

(declare-fun d!404069 () Bool)

(declare-fun e!901751 () Bool)

(assert (=> d!404069 (= (forall!3528 (++!3760 (list!5655 (left!12321 (c!231995 objs!24))) (list!5655 (right!12651 (c!231995 objs!24)))) lambda!62403) e!901751)))

(declare-fun res!639816 () Bool)

(assert (=> d!404069 (=> (not res!639816) (not e!901751))))

(assert (=> d!404069 (= res!639816 (forall!3528 (list!5655 (left!12321 (c!231995 objs!24))) lambda!62403))))

(declare-fun lt!472806 () Unit!20947)

(declare-fun choose!8722 (List!14492 List!14492 Int) Unit!20947)

(assert (=> d!404069 (= lt!472806 (choose!8722 (list!5655 (left!12321 (c!231995 objs!24))) (list!5655 (right!12651 (c!231995 objs!24))) lambda!62403))))

(assert (=> d!404069 (= (lemmaForallConcat!128 (list!5655 (left!12321 (c!231995 objs!24))) (list!5655 (right!12651 (c!231995 objs!24))) lambda!62403) lt!472806)))

(declare-fun b!1412593 () Bool)

(assert (=> b!1412593 (= e!901751 (forall!3528 (list!5655 (right!12651 (c!231995 objs!24))) lambda!62403))))

(assert (= (and d!404069 res!639816) b!1412593))

(assert (=> d!404069 m!1592157))

(assert (=> d!404069 m!1592159))

(assert (=> d!404069 m!1592995))

(assert (=> d!404069 m!1592995))

(declare-fun m!1593673 () Bool)

(assert (=> d!404069 m!1593673))

(assert (=> d!404069 m!1592157))

(declare-fun m!1593675 () Bool)

(assert (=> d!404069 m!1593675))

(assert (=> d!404069 m!1592157))

(assert (=> d!404069 m!1592159))

(declare-fun m!1593677 () Bool)

(assert (=> d!404069 m!1593677))

(assert (=> b!1412593 m!1592159))

(assert (=> b!1412593 m!1592959))

(assert (=> b!1411770 d!404069))

(declare-fun b!1412597 () Bool)

(declare-fun e!901753 () List!14492)

(assert (=> b!1412597 (= e!901753 (++!3760 (list!5655 (left!12321 (left!12321 (c!231995 objs!24)))) (list!5655 (right!12651 (left!12321 (c!231995 objs!24))))))))

(declare-fun d!404071 () Bool)

(declare-fun c!232111 () Bool)

(assert (=> d!404071 (= c!232111 ((_ is Empty!4791) (left!12321 (c!231995 objs!24))))))

(declare-fun e!901752 () List!14492)

(assert (=> d!404071 (= (list!5655 (left!12321 (c!231995 objs!24))) e!901752)))

(declare-fun b!1412594 () Bool)

(assert (=> b!1412594 (= e!901752 Nil!14426)))

(declare-fun b!1412595 () Bool)

(assert (=> b!1412595 (= e!901752 e!901753)))

(declare-fun c!232112 () Bool)

(assert (=> b!1412595 (= c!232112 ((_ is Leaf!7240) (left!12321 (c!231995 objs!24))))))

(declare-fun b!1412596 () Bool)

(assert (=> b!1412596 (= e!901753 (list!5659 (xs!7518 (left!12321 (c!231995 objs!24)))))))

(assert (= (and d!404071 c!232111) b!1412594))

(assert (= (and d!404071 (not c!232111)) b!1412595))

(assert (= (and b!1412595 c!232112) b!1412596))

(assert (= (and b!1412595 (not c!232112)) b!1412597))

(declare-fun m!1593679 () Bool)

(assert (=> b!1412597 m!1593679))

(declare-fun m!1593681 () Bool)

(assert (=> b!1412597 m!1593681))

(assert (=> b!1412597 m!1593679))

(assert (=> b!1412597 m!1593681))

(declare-fun m!1593683 () Bool)

(assert (=> b!1412597 m!1593683))

(assert (=> b!1412596 m!1592727))

(assert (=> b!1411770 d!404071))

(declare-fun b!1412601 () Bool)

(declare-fun e!901755 () List!14492)

(assert (=> b!1412601 (= e!901755 (++!3760 (list!5655 (left!12321 (right!12651 (c!231995 objs!24)))) (list!5655 (right!12651 (right!12651 (c!231995 objs!24))))))))

(declare-fun d!404073 () Bool)

(declare-fun c!232113 () Bool)

(assert (=> d!404073 (= c!232113 ((_ is Empty!4791) (right!12651 (c!231995 objs!24))))))

(declare-fun e!901754 () List!14492)

(assert (=> d!404073 (= (list!5655 (right!12651 (c!231995 objs!24))) e!901754)))

(declare-fun b!1412598 () Bool)

(assert (=> b!1412598 (= e!901754 Nil!14426)))

(declare-fun b!1412599 () Bool)

(assert (=> b!1412599 (= e!901754 e!901755)))

(declare-fun c!232114 () Bool)

(assert (=> b!1412599 (= c!232114 ((_ is Leaf!7240) (right!12651 (c!231995 objs!24))))))

(declare-fun b!1412600 () Bool)

(assert (=> b!1412600 (= e!901755 (list!5659 (xs!7518 (right!12651 (c!231995 objs!24)))))))

(assert (= (and d!404073 c!232113) b!1412598))

(assert (= (and d!404073 (not c!232113)) b!1412599))

(assert (= (and b!1412599 c!232114) b!1412600))

(assert (= (and b!1412599 (not c!232114)) b!1412601))

(assert (=> b!1412601 m!1592961))

(assert (=> b!1412601 m!1592963))

(assert (=> b!1412601 m!1592961))

(assert (=> b!1412601 m!1592963))

(declare-fun m!1593685 () Bool)

(assert (=> b!1412601 m!1593685))

(declare-fun m!1593687 () Bool)

(assert (=> b!1412600 m!1593687))

(assert (=> b!1411770 d!404073))

(declare-fun b!1412603 () Bool)

(declare-fun e!901756 () Bool)

(assert (=> b!1412603 (= e!901756 (forall!3533 (xs!7518 (left!12321 (c!231995 objs!24))) lambda!62403))))

(declare-fun d!404075 () Bool)

(declare-fun lt!472808 () Bool)

(assert (=> d!404075 (= lt!472808 (forall!3528 (list!5655 (left!12321 (c!231995 objs!24))) lambda!62403))))

(declare-fun e!901758 () Bool)

(assert (=> d!404075 (= lt!472808 e!901758)))

(declare-fun res!639818 () Bool)

(assert (=> d!404075 (=> res!639818 e!901758)))

(assert (=> d!404075 (= res!639818 ((_ is Empty!4791) (left!12321 (c!231995 objs!24))))))

(assert (=> d!404075 (= (forall!3529 (left!12321 (c!231995 objs!24)) lambda!62403) lt!472808)))

(declare-fun b!1412604 () Bool)

(declare-fun e!901757 () Bool)

(assert (=> b!1412604 (= e!901756 e!901757)))

(declare-fun lt!472807 () Unit!20947)

(assert (=> b!1412604 (= lt!472807 (lemmaForallConcat!128 (list!5655 (left!12321 (left!12321 (c!231995 objs!24)))) (list!5655 (right!12651 (left!12321 (c!231995 objs!24)))) lambda!62403))))

(declare-fun res!639817 () Bool)

(assert (=> b!1412604 (= res!639817 (forall!3529 (left!12321 (left!12321 (c!231995 objs!24))) lambda!62403))))

(assert (=> b!1412604 (=> (not res!639817) (not e!901757))))

(declare-fun b!1412605 () Bool)

(assert (=> b!1412605 (= e!901757 (forall!3529 (right!12651 (left!12321 (c!231995 objs!24))) lambda!62403))))

(declare-fun b!1412602 () Bool)

(assert (=> b!1412602 (= e!901758 e!901756)))

(declare-fun c!232115 () Bool)

(assert (=> b!1412602 (= c!232115 ((_ is Leaf!7240) (left!12321 (c!231995 objs!24))))))

(assert (= (and d!404075 (not res!639818)) b!1412602))

(assert (= (and b!1412602 c!232115) b!1412603))

(assert (= (and b!1412602 (not c!232115)) b!1412604))

(assert (= (and b!1412604 res!639817) b!1412605))

(declare-fun m!1593691 () Bool)

(assert (=> b!1412603 m!1593691))

(assert (=> d!404075 m!1592157))

(assert (=> d!404075 m!1592157))

(assert (=> d!404075 m!1593675))

(assert (=> b!1412604 m!1593679))

(assert (=> b!1412604 m!1593681))

(assert (=> b!1412604 m!1593679))

(assert (=> b!1412604 m!1593681))

(declare-fun m!1593693 () Bool)

(assert (=> b!1412604 m!1593693))

(declare-fun m!1593695 () Bool)

(assert (=> b!1412604 m!1593695))

(declare-fun m!1593697 () Bool)

(assert (=> b!1412605 m!1593697))

(assert (=> b!1411770 d!404075))

(declare-fun d!404079 () Bool)

(declare-fun c!232116 () Bool)

(assert (=> d!404079 (= c!232116 ((_ is Node!4790) (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun e!901759 () Bool)

(assert (=> d!404079 (= (inv!18840 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))) e!901759)))

(declare-fun b!1412606 () Bool)

(assert (=> b!1412606 (= e!901759 (inv!18850 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412607 () Bool)

(declare-fun e!901760 () Bool)

(assert (=> b!1412607 (= e!901759 e!901760)))

(declare-fun res!639819 () Bool)

(assert (=> b!1412607 (= res!639819 (not ((_ is Leaf!7239) (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> b!1412607 (=> res!639819 e!901760)))

(declare-fun b!1412608 () Bool)

(assert (=> b!1412608 (= e!901760 (inv!18851 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(assert (= (and d!404079 c!232116) b!1412606))

(assert (= (and d!404079 (not c!232116)) b!1412607))

(assert (= (and b!1412607 (not res!639819)) b!1412608))

(declare-fun m!1593699 () Bool)

(assert (=> b!1412606 m!1593699))

(declare-fun m!1593701 () Bool)

(assert (=> b!1412608 m!1593701))

(assert (=> b!1412097 d!404079))

(declare-fun d!404081 () Bool)

(declare-fun c!232117 () Bool)

(assert (=> d!404081 (= c!232117 ((_ is Node!4790) (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun e!901761 () Bool)

(assert (=> d!404081 (= (inv!18840 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))) e!901761)))

(declare-fun b!1412609 () Bool)

(assert (=> b!1412609 (= e!901761 (inv!18850 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(declare-fun b!1412610 () Bool)

(declare-fun e!901762 () Bool)

(assert (=> b!1412610 (= e!901761 e!901762)))

(declare-fun res!639820 () Bool)

(assert (=> b!1412610 (= res!639820 (not ((_ is Leaf!7239) (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> b!1412610 (=> res!639820 e!901762)))

(declare-fun b!1412611 () Bool)

(assert (=> b!1412611 (= e!901762 (inv!18851 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(assert (= (and d!404081 c!232117) b!1412609))

(assert (= (and d!404081 (not c!232117)) b!1412610))

(assert (= (and b!1412610 (not res!639820)) b!1412611))

(declare-fun m!1593703 () Bool)

(assert (=> b!1412609 m!1593703))

(declare-fun m!1593705 () Bool)

(assert (=> b!1412611 m!1593705))

(assert (=> b!1412097 d!404081))

(declare-fun d!404083 () Bool)

(declare-fun res!639821 () Bool)

(declare-fun e!901763 () Bool)

(assert (=> d!404083 (=> res!639821 e!901763)))

(assert (=> d!404083 (= res!639821 ((_ is Nil!14425) (rules!11012 acc!229)))))

(assert (=> d!404083 (= (noDuplicateTag!941 Lexer!2189 (rules!11012 acc!229) Nil!14428) e!901763)))

(declare-fun b!1412612 () Bool)

(declare-fun e!901764 () Bool)

(assert (=> b!1412612 (= e!901763 e!901764)))

(declare-fun res!639822 () Bool)

(assert (=> b!1412612 (=> (not res!639822) (not e!901764))))

(assert (=> b!1412612 (= res!639822 (not (contains!2842 Nil!14428 (tag!2767 (h!19826 (rules!11012 acc!229))))))))

(declare-fun b!1412613 () Bool)

(assert (=> b!1412613 (= e!901764 (noDuplicateTag!941 Lexer!2189 (t!123554 (rules!11012 acc!229)) (Cons!14428 (tag!2767 (h!19826 (rules!11012 acc!229))) Nil!14428)))))

(assert (= (and d!404083 (not res!639821)) b!1412612))

(assert (= (and b!1412612 res!639822) b!1412613))

(declare-fun m!1593707 () Bool)

(assert (=> b!1412612 m!1593707))

(declare-fun m!1593709 () Bool)

(assert (=> b!1412613 m!1593709))

(assert (=> b!1412016 d!404083))

(declare-fun d!404085 () Bool)

(assert (=> d!404085 (= (max!0 (height!693 (left!12320 (c!231994 (tokens!1748 acc!229)))) (height!693 (right!12650 (c!231994 (tokens!1748 acc!229))))) (ite (< (height!693 (left!12320 (c!231994 (tokens!1748 acc!229)))) (height!693 (right!12650 (c!231994 (tokens!1748 acc!229))))) (height!693 (right!12650 (c!231994 (tokens!1748 acc!229)))) (height!693 (left!12320 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> b!1412065 d!404085))

(declare-fun d!404087 () Bool)

(assert (=> d!404087 (= (height!693 (left!12320 (c!231994 (tokens!1748 acc!229)))) (ite ((_ is Empty!4790) (left!12320 (c!231994 (tokens!1748 acc!229)))) 0 (ite ((_ is Leaf!7239) (left!12320 (c!231994 (tokens!1748 acc!229)))) 1 (cheight!5001 (left!12320 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> b!1412065 d!404087))

(declare-fun d!404089 () Bool)

(assert (=> d!404089 (= (height!693 (right!12650 (c!231994 (tokens!1748 acc!229)))) (ite ((_ is Empty!4790) (right!12650 (c!231994 (tokens!1748 acc!229)))) 0 (ite ((_ is Leaf!7239) (right!12650 (c!231994 (tokens!1748 acc!229)))) 1 (cheight!5001 (right!12650 (c!231994 (tokens!1748 acc!229)))))))))

(assert (=> b!1412065 d!404089))

(declare-fun d!404091 () Bool)

(declare-fun c!232118 () Bool)

(assert (=> d!404091 (= c!232118 ((_ is Node!4790) (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun e!901765 () Bool)

(assert (=> d!404091 (= (inv!18840 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))) e!901765)))

(declare-fun b!1412614 () Bool)

(assert (=> b!1412614 (= e!901765 (inv!18850 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1412615 () Bool)

(declare-fun e!901766 () Bool)

(assert (=> b!1412615 (= e!901765 e!901766)))

(declare-fun res!639823 () Bool)

(assert (=> b!1412615 (= res!639823 (not ((_ is Leaf!7239) (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> b!1412615 (=> res!639823 e!901766)))

(declare-fun b!1412616 () Bool)

(assert (=> b!1412616 (= e!901766 (inv!18851 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(assert (= (and d!404091 c!232118) b!1412614))

(assert (= (and d!404091 (not c!232118)) b!1412615))

(assert (= (and b!1412615 (not res!639823)) b!1412616))

(declare-fun m!1593711 () Bool)

(assert (=> b!1412614 m!1593711))

(declare-fun m!1593713 () Bool)

(assert (=> b!1412616 m!1593713))

(assert (=> b!1412118 d!404091))

(declare-fun d!404093 () Bool)

(declare-fun c!232119 () Bool)

(assert (=> d!404093 (= c!232119 ((_ is Node!4790) (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun e!901767 () Bool)

(assert (=> d!404093 (= (inv!18840 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))) e!901767)))

(declare-fun b!1412617 () Bool)

(assert (=> b!1412617 (= e!901767 (inv!18850 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(declare-fun b!1412618 () Bool)

(declare-fun e!901768 () Bool)

(assert (=> b!1412618 (= e!901767 e!901768)))

(declare-fun res!639824 () Bool)

(assert (=> b!1412618 (= res!639824 (not ((_ is Leaf!7239) (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))))))

(assert (=> b!1412618 (=> res!639824 e!901768)))

(declare-fun b!1412619 () Bool)

(assert (=> b!1412619 (= e!901768 (inv!18851 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(assert (= (and d!404093 c!232119) b!1412617))

(assert (= (and d!404093 (not c!232119)) b!1412618))

(assert (= (and b!1412618 (not res!639824)) b!1412619))

(declare-fun m!1593715 () Bool)

(assert (=> b!1412617 m!1593715))

(declare-fun m!1593717 () Bool)

(assert (=> b!1412619 m!1593717))

(assert (=> b!1412118 d!404093))

(declare-fun d!404095 () Bool)

(declare-fun res!639825 () Bool)

(declare-fun e!901769 () Bool)

(assert (=> d!404095 (=> res!639825 e!901769)))

(assert (=> d!404095 (= res!639825 ((_ is Nil!14424) (list!5656 (tokens!1748 sep!3))))))

(assert (=> d!404095 (= (forall!3534 (list!5656 (tokens!1748 sep!3)) lambda!62415) e!901769)))

(declare-fun b!1412620 () Bool)

(declare-fun e!901770 () Bool)

(assert (=> b!1412620 (= e!901769 e!901770)))

(declare-fun res!639826 () Bool)

(assert (=> b!1412620 (=> (not res!639826) (not e!901770))))

(assert (=> b!1412620 (= res!639826 (dynLambda!6690 lambda!62415 (h!19825 (list!5656 (tokens!1748 sep!3)))))))

(declare-fun b!1412621 () Bool)

(assert (=> b!1412621 (= e!901770 (forall!3534 (t!123553 (list!5656 (tokens!1748 sep!3))) lambda!62415))))

(assert (= (and d!404095 (not res!639825)) b!1412620))

(assert (= (and b!1412620 res!639826) b!1412621))

(declare-fun b_lambda!44539 () Bool)

(assert (=> (not b_lambda!44539) (not b!1412620)))

(declare-fun m!1593719 () Bool)

(assert (=> b!1412620 m!1593719))

(declare-fun m!1593721 () Bool)

(assert (=> b!1412621 m!1593721))

(assert (=> d!403637 d!404095))

(declare-fun d!404097 () Bool)

(assert (=> d!404097 (= (list!5656 (tokens!1748 sep!3)) (list!5661 (c!231994 (tokens!1748 sep!3))))))

(declare-fun bs!339089 () Bool)

(assert (= bs!339089 d!404097))

(declare-fun m!1593723 () Bool)

(assert (=> bs!339089 m!1593723))

(assert (=> d!403637 d!404097))

(declare-fun d!404099 () Bool)

(declare-fun lt!472809 () Bool)

(assert (=> d!404099 (= lt!472809 (forall!3534 (list!5656 (tokens!1748 sep!3)) lambda!62415))))

(assert (=> d!404099 (= lt!472809 (forall!3539 (c!231994 (tokens!1748 sep!3)) lambda!62415))))

(assert (=> d!404099 (= (forall!3535 (tokens!1748 sep!3) lambda!62415) lt!472809)))

(declare-fun bs!339090 () Bool)

(assert (= bs!339090 d!404099))

(assert (=> bs!339090 m!1592477))

(assert (=> bs!339090 m!1592477))

(assert (=> bs!339090 m!1592479))

(declare-fun m!1593725 () Bool)

(assert (=> bs!339090 m!1593725))

(assert (=> d!403637 d!404099))

(assert (=> d!403637 d!403651))

(assert (=> d!403533 d!403851))

(declare-fun d!404101 () Bool)

(assert (=> d!404101 (= (max!0 (height!694 (left!12321 (c!231995 objs!24))) (height!694 (right!12651 (c!231995 objs!24)))) (ite (< (height!694 (left!12321 (c!231995 objs!24))) (height!694 (right!12651 (c!231995 objs!24)))) (height!694 (right!12651 (c!231995 objs!24))) (height!694 (left!12321 (c!231995 objs!24)))))))

(assert (=> b!1412074 d!404101))

(declare-fun d!404103 () Bool)

(assert (=> d!404103 (= (height!694 (left!12321 (c!231995 objs!24))) (ite ((_ is Empty!4791) (left!12321 (c!231995 objs!24))) 0 (ite ((_ is Leaf!7240) (left!12321 (c!231995 objs!24))) 1 (cheight!5002 (left!12321 (c!231995 objs!24))))))))

(assert (=> b!1412074 d!404103))

(declare-fun d!404105 () Bool)

(assert (=> d!404105 (= (height!694 (right!12651 (c!231995 objs!24))) (ite ((_ is Empty!4791) (right!12651 (c!231995 objs!24))) 0 (ite ((_ is Leaf!7240) (right!12651 (c!231995 objs!24))) 1 (cheight!5002 (right!12651 (c!231995 objs!24))))))))

(assert (=> b!1412074 d!404105))

(declare-fun b!1412622 () Bool)

(declare-fun res!639827 () Bool)

(declare-fun e!901772 () Bool)

(assert (=> b!1412622 (=> (not res!639827) (not e!901772))))

(assert (=> b!1412622 (= res!639827 (isBalanced!1416 (right!12651 (left!12321 (c!231995 objs!24)))))))

(declare-fun d!404107 () Bool)

(declare-fun res!639830 () Bool)

(declare-fun e!901771 () Bool)

(assert (=> d!404107 (=> res!639830 e!901771)))

(assert (=> d!404107 (= res!639830 (not ((_ is Node!4791) (left!12321 (c!231995 objs!24)))))))

(assert (=> d!404107 (= (isBalanced!1416 (left!12321 (c!231995 objs!24))) e!901771)))

(declare-fun b!1412623 () Bool)

(declare-fun res!639832 () Bool)

(assert (=> b!1412623 (=> (not res!639832) (not e!901772))))

(assert (=> b!1412623 (= res!639832 (isBalanced!1416 (left!12321 (left!12321 (c!231995 objs!24)))))))

(declare-fun b!1412624 () Bool)

(assert (=> b!1412624 (= e!901772 (not (isEmpty!8815 (right!12651 (left!12321 (c!231995 objs!24))))))))

(declare-fun b!1412625 () Bool)

(declare-fun res!639831 () Bool)

(assert (=> b!1412625 (=> (not res!639831) (not e!901772))))

(assert (=> b!1412625 (= res!639831 (not (isEmpty!8815 (left!12321 (left!12321 (c!231995 objs!24))))))))

(declare-fun b!1412626 () Bool)

(declare-fun res!639828 () Bool)

(assert (=> b!1412626 (=> (not res!639828) (not e!901772))))

(assert (=> b!1412626 (= res!639828 (<= (- (height!694 (left!12321 (left!12321 (c!231995 objs!24)))) (height!694 (right!12651 (left!12321 (c!231995 objs!24))))) 1))))

(declare-fun b!1412627 () Bool)

(assert (=> b!1412627 (= e!901771 e!901772)))

(declare-fun res!639829 () Bool)

(assert (=> b!1412627 (=> (not res!639829) (not e!901772))))

(assert (=> b!1412627 (= res!639829 (<= (- 1) (- (height!694 (left!12321 (left!12321 (c!231995 objs!24)))) (height!694 (right!12651 (left!12321 (c!231995 objs!24)))))))))

(assert (= (and d!404107 (not res!639830)) b!1412627))

(assert (= (and b!1412627 res!639829) b!1412626))

(assert (= (and b!1412626 res!639828) b!1412623))

(assert (= (and b!1412623 res!639832) b!1412622))

(assert (= (and b!1412622 res!639827) b!1412625))

(assert (= (and b!1412625 res!639831) b!1412624))

(declare-fun m!1593727 () Bool)

(assert (=> b!1412623 m!1593727))

(declare-fun m!1593729 () Bool)

(assert (=> b!1412625 m!1593729))

(assert (=> b!1412626 m!1593665))

(assert (=> b!1412626 m!1593667))

(declare-fun m!1593731 () Bool)

(assert (=> b!1412622 m!1593731))

(assert (=> b!1412627 m!1593665))

(assert (=> b!1412627 m!1593667))

(declare-fun m!1593733 () Bool)

(assert (=> b!1412624 m!1593733))

(assert (=> b!1411945 d!404107))

(declare-fun d!404109 () Bool)

(declare-fun lt!472810 () Bool)

(assert (=> d!404109 (= lt!472810 (isEmpty!8822 (list!5661 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> d!404109 (= lt!472810 (= (size!11886 (left!12320 (c!231994 (tokens!1748 sep!3)))) 0))))

(assert (=> d!404109 (= (isEmpty!8817 (left!12320 (c!231994 (tokens!1748 sep!3)))) lt!472810)))

(declare-fun bs!339091 () Bool)

(assert (= bs!339091 d!404109))

(assert (=> bs!339091 m!1592709))

(assert (=> bs!339091 m!1592709))

(declare-fun m!1593735 () Bool)

(assert (=> bs!339091 m!1593735))

(assert (=> bs!339091 m!1592387))

(assert (=> b!1411751 d!404109))

(assert (=> b!1412050 d!403927))

(assert (=> b!1412050 d!403929))

(declare-fun d!404111 () Bool)

(assert (=> d!404111 (= (inv!18855 (xs!7518 (right!12651 (c!231995 objs!24)))) (<= (size!11881 (innerList!4851 (xs!7518 (right!12651 (c!231995 objs!24))))) 2147483647))))

(declare-fun bs!339092 () Bool)

(assert (= bs!339092 d!404111))

(declare-fun m!1593737 () Bool)

(assert (=> bs!339092 m!1593737))

(assert (=> b!1412095 d!404111))

(assert (=> b!1411949 d!404103))

(assert (=> b!1411949 d!404105))

(declare-fun d!404113 () Bool)

(declare-fun res!639833 () Bool)

(declare-fun e!901773 () Bool)

(assert (=> d!404113 (=> (not res!639833) (not e!901773))))

(assert (=> d!404113 (= res!639833 (<= (size!11885 (list!5657 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3)))))) 512))))

(assert (=> d!404113 (= (inv!18851 (left!12320 (c!231994 (tokens!1748 sep!3)))) e!901773)))

(declare-fun b!1412628 () Bool)

(declare-fun res!639834 () Bool)

(assert (=> b!1412628 (=> (not res!639834) (not e!901773))))

(assert (=> b!1412628 (= res!639834 (= (csize!9811 (left!12320 (c!231994 (tokens!1748 sep!3)))) (size!11885 (list!5657 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))))))

(declare-fun b!1412629 () Bool)

(assert (=> b!1412629 (= e!901773 (and (> (csize!9811 (left!12320 (c!231994 (tokens!1748 sep!3)))) 0) (<= (csize!9811 (left!12320 (c!231994 (tokens!1748 sep!3)))) 512)))))

(assert (= (and d!404113 res!639833) b!1412628))

(assert (= (and b!1412628 res!639834) b!1412629))

(declare-fun m!1593739 () Bool)

(assert (=> d!404113 m!1593739))

(assert (=> d!404113 m!1593739))

(declare-fun m!1593741 () Bool)

(assert (=> d!404113 m!1593741))

(assert (=> b!1412628 m!1593739))

(assert (=> b!1412628 m!1593739))

(assert (=> b!1412628 m!1593741))

(assert (=> b!1411952 d!404113))

(declare-fun d!404115 () Bool)

(declare-fun lt!472811 () Bool)

(assert (=> d!404115 (= lt!472811 (isEmpty!8822 (list!5661 (right!12650 (c!231994 (tokens!1748 acc!229))))))))

(assert (=> d!404115 (= lt!472811 (= (size!11886 (right!12650 (c!231994 (tokens!1748 acc!229)))) 0))))

(assert (=> d!404115 (= (isEmpty!8817 (right!12650 (c!231994 (tokens!1748 acc!229)))) lt!472811)))

(declare-fun bs!339093 () Bool)

(assert (= bs!339093 d!404115))

(assert (=> bs!339093 m!1592773))

(assert (=> bs!339093 m!1592773))

(declare-fun m!1593743 () Bool)

(assert (=> bs!339093 m!1593743))

(assert (=> bs!339093 m!1592547))

(assert (=> b!1412046 d!404115))

(declare-fun d!404117 () Bool)

(declare-fun lt!472812 () Int)

(assert (=> d!404117 (>= lt!472812 0)))

(declare-fun e!901774 () Int)

(assert (=> d!404117 (= lt!472812 e!901774)))

(declare-fun c!232120 () Bool)

(assert (=> d!404117 (= c!232120 ((_ is Nil!14426) (list!5659 (xs!7518 (c!231995 objs!24)))))))

(assert (=> d!404117 (= (size!11881 (list!5659 (xs!7518 (c!231995 objs!24)))) lt!472812)))

(declare-fun b!1412630 () Bool)

(assert (=> b!1412630 (= e!901774 0)))

(declare-fun b!1412631 () Bool)

(assert (=> b!1412631 (= e!901774 (+ 1 (size!11881 (t!123555 (list!5659 (xs!7518 (c!231995 objs!24)))))))))

(assert (= (and d!404117 c!232120) b!1412630))

(assert (= (and d!404117 (not c!232120)) b!1412631))

(declare-fun m!1593745 () Bool)

(assert (=> b!1412631 m!1593745))

(assert (=> b!1412056 d!404117))

(declare-fun d!404119 () Bool)

(assert (=> d!404119 (= (list!5659 (xs!7518 (c!231995 objs!24))) (innerList!4851 (xs!7518 (c!231995 objs!24))))))

(assert (=> b!1412056 d!404119))

(declare-fun d!404121 () Bool)

(declare-fun lt!472813 () Int)

(assert (=> d!404121 (>= lt!472813 0)))

(declare-fun e!901775 () Int)

(assert (=> d!404121 (= lt!472813 e!901775)))

(declare-fun c!232121 () Bool)

(assert (=> d!404121 (= c!232121 ((_ is Nil!14424) (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> d!404121 (= (size!11885 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))) lt!472813)))

(declare-fun b!1412632 () Bool)

(assert (=> b!1412632 (= e!901775 0)))

(declare-fun b!1412633 () Bool)

(assert (=> b!1412633 (= e!901775 (+ 1 (size!11885 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))

(assert (= (and d!404121 c!232121) b!1412632))

(assert (= (and d!404121 (not c!232121)) b!1412633))

(declare-fun m!1593747 () Bool)

(assert (=> b!1412633 m!1593747))

(assert (=> d!403627 d!404121))

(declare-fun d!404123 () Bool)

(assert (=> d!404123 (= (inv!18839 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))) (isBalanced!1415 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))))))

(declare-fun bs!339095 () Bool)

(assert (= bs!339095 d!404123))

(declare-fun m!1593753 () Bool)

(assert (=> bs!339095 m!1593753))

(assert (=> b!1412112 d!404123))

(declare-fun d!404127 () Bool)

(declare-fun res!639835 () Bool)

(declare-fun e!901776 () Bool)

(assert (=> d!404127 (=> (not res!639835) (not e!901776))))

(assert (=> d!404127 (= res!639835 (<= (size!11885 (list!5657 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229)))))) 512))))

(assert (=> d!404127 (= (inv!18851 (left!12320 (c!231994 (tokens!1748 acc!229)))) e!901776)))

(declare-fun b!1412634 () Bool)

(declare-fun res!639836 () Bool)

(assert (=> b!1412634 (=> (not res!639836) (not e!901776))))

(assert (=> b!1412634 (= res!639836 (= (csize!9811 (left!12320 (c!231994 (tokens!1748 acc!229)))) (size!11885 (list!5657 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))))))

(declare-fun b!1412635 () Bool)

(assert (=> b!1412635 (= e!901776 (and (> (csize!9811 (left!12320 (c!231994 (tokens!1748 acc!229)))) 0) (<= (csize!9811 (left!12320 (c!231994 (tokens!1748 acc!229)))) 512)))))

(assert (= (and d!404127 res!639835) b!1412634))

(assert (= (and b!1412634 res!639836) b!1412635))

(declare-fun m!1593755 () Bool)

(assert (=> d!404127 m!1593755))

(assert (=> d!404127 m!1593755))

(declare-fun m!1593757 () Bool)

(assert (=> d!404127 m!1593757))

(assert (=> b!1412634 m!1593755))

(assert (=> b!1412634 m!1593755))

(assert (=> b!1412634 m!1593757))

(assert (=> b!1412060 d!404127))

(declare-fun bs!339096 () Bool)

(declare-fun d!404129 () Bool)

(assert (= bs!339096 (and d!404129 d!403721)))

(declare-fun lambda!62443 () Int)

(assert (=> bs!339096 (= lambda!62443 lambda!62425)))

(assert (=> d!404129 true))

(declare-fun lt!472814 () Bool)

(assert (=> d!404129 (= lt!472814 (rulesValidInductive!810 Lexer!2189 (rules!11012 sep!3)))))

(assert (=> d!404129 (= lt!472814 (forall!3538 (rules!11012 sep!3) lambda!62443))))

(assert (=> d!404129 (= (rulesValid!941 Lexer!2189 (rules!11012 sep!3)) lt!472814)))

(declare-fun bs!339097 () Bool)

(assert (= bs!339097 d!404129))

(declare-fun m!1593759 () Bool)

(assert (=> bs!339097 m!1593759))

(declare-fun m!1593761 () Bool)

(assert (=> bs!339097 m!1593761))

(assert (=> d!403629 d!404129))

(declare-fun d!404131 () Bool)

(declare-fun c!232122 () Bool)

(assert (=> d!404131 (= c!232122 ((_ is Node!4791) (left!12321 (right!12651 (c!231995 objs!24)))))))

(declare-fun e!901777 () Bool)

(assert (=> d!404131 (= (inv!18838 (left!12321 (right!12651 (c!231995 objs!24)))) e!901777)))

(declare-fun b!1412636 () Bool)

(assert (=> b!1412636 (= e!901777 (inv!18852 (left!12321 (right!12651 (c!231995 objs!24)))))))

(declare-fun b!1412637 () Bool)

(declare-fun e!901778 () Bool)

(assert (=> b!1412637 (= e!901777 e!901778)))

(declare-fun res!639837 () Bool)

(assert (=> b!1412637 (= res!639837 (not ((_ is Leaf!7240) (left!12321 (right!12651 (c!231995 objs!24))))))))

(assert (=> b!1412637 (=> res!639837 e!901778)))

(declare-fun b!1412638 () Bool)

(assert (=> b!1412638 (= e!901778 (inv!18853 (left!12321 (right!12651 (c!231995 objs!24)))))))

(assert (= (and d!404131 c!232122) b!1412636))

(assert (= (and d!404131 (not c!232122)) b!1412637))

(assert (= (and b!1412637 (not res!639837)) b!1412638))

(declare-fun m!1593763 () Bool)

(assert (=> b!1412636 m!1593763))

(declare-fun m!1593765 () Bool)

(assert (=> b!1412638 m!1593765))

(assert (=> b!1412094 d!404131))

(declare-fun d!404133 () Bool)

(declare-fun c!232123 () Bool)

(assert (=> d!404133 (= c!232123 ((_ is Node!4791) (right!12651 (right!12651 (c!231995 objs!24)))))))

(declare-fun e!901779 () Bool)

(assert (=> d!404133 (= (inv!18838 (right!12651 (right!12651 (c!231995 objs!24)))) e!901779)))

(declare-fun b!1412639 () Bool)

(assert (=> b!1412639 (= e!901779 (inv!18852 (right!12651 (right!12651 (c!231995 objs!24)))))))

(declare-fun b!1412640 () Bool)

(declare-fun e!901780 () Bool)

(assert (=> b!1412640 (= e!901779 e!901780)))

(declare-fun res!639838 () Bool)

(assert (=> b!1412640 (= res!639838 (not ((_ is Leaf!7240) (right!12651 (right!12651 (c!231995 objs!24))))))))

(assert (=> b!1412640 (=> res!639838 e!901780)))

(declare-fun b!1412641 () Bool)

(assert (=> b!1412641 (= e!901780 (inv!18853 (right!12651 (right!12651 (c!231995 objs!24)))))))

(assert (= (and d!404133 c!232123) b!1412639))

(assert (= (and d!404133 (not c!232123)) b!1412640))

(assert (= (and b!1412640 (not res!639838)) b!1412641))

(declare-fun m!1593767 () Bool)

(assert (=> b!1412639 m!1593767))

(declare-fun m!1593769 () Bool)

(assert (=> b!1412641 m!1593769))

(assert (=> b!1412094 d!404133))

(declare-fun d!404135 () Bool)

(declare-fun lt!472815 () Int)

(assert (=> d!404135 (>= lt!472815 0)))

(declare-fun e!901781 () Int)

(assert (=> d!404135 (= lt!472815 e!901781)))

(declare-fun c!232124 () Bool)

(assert (=> d!404135 (= c!232124 ((_ is Nil!14426) (innerList!4851 (xs!7518 (c!231995 objs!24)))))))

(assert (=> d!404135 (= (size!11881 (innerList!4851 (xs!7518 (c!231995 objs!24)))) lt!472815)))

(declare-fun b!1412642 () Bool)

(assert (=> b!1412642 (= e!901781 0)))

(declare-fun b!1412643 () Bool)

(assert (=> b!1412643 (= e!901781 (+ 1 (size!11881 (t!123555 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))))

(assert (= (and d!404135 c!232124) b!1412642))

(assert (= (and d!404135 (not c!232124)) b!1412643))

(declare-fun m!1593771 () Bool)

(assert (=> b!1412643 m!1593771))

(assert (=> d!403527 d!404135))

(declare-fun d!404137 () Bool)

(assert (=> d!404137 (= (max!0 (height!693 (left!12320 (c!231994 (tokens!1748 sep!3)))) (height!693 (right!12650 (c!231994 (tokens!1748 sep!3))))) (ite (< (height!693 (left!12320 (c!231994 (tokens!1748 sep!3)))) (height!693 (right!12650 (c!231994 (tokens!1748 sep!3))))) (height!693 (right!12650 (c!231994 (tokens!1748 sep!3)))) (height!693 (left!12320 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> b!1411976 d!404137))

(assert (=> b!1411976 d!403749))

(assert (=> b!1411976 d!403751))

(declare-fun d!404139 () Bool)

(declare-fun res!639839 () Bool)

(declare-fun e!901782 () Bool)

(assert (=> d!404139 (=> res!639839 e!901782)))

(assert (=> d!404139 (= res!639839 ((_ is Nil!14426) (list!5655 (c!231995 objs!24))))))

(assert (=> d!404139 (= (forall!3528 (list!5655 (c!231995 objs!24)) lambda!62403) e!901782)))

(declare-fun b!1412644 () Bool)

(declare-fun e!901783 () Bool)

(assert (=> b!1412644 (= e!901782 e!901783)))

(declare-fun res!639840 () Bool)

(assert (=> b!1412644 (=> (not res!639840) (not e!901783))))

(assert (=> b!1412644 (= res!639840 (dynLambda!6679 lambda!62403 (h!19827 (list!5655 (c!231995 objs!24)))))))

(declare-fun b!1412645 () Bool)

(assert (=> b!1412645 (= e!901783 (forall!3528 (t!123555 (list!5655 (c!231995 objs!24))) lambda!62403))))

(assert (= (and d!404139 (not res!639839)) b!1412644))

(assert (= (and b!1412644 res!639840) b!1412645))

(declare-fun b_lambda!44541 () Bool)

(assert (=> (not b_lambda!44541) (not b!1412644)))

(declare-fun m!1593773 () Bool)

(assert (=> b!1412644 m!1593773))

(declare-fun m!1593775 () Bool)

(assert (=> b!1412645 m!1593775))

(assert (=> d!403535 d!404139))

(assert (=> d!403535 d!403851))

(declare-fun d!404141 () Bool)

(declare-fun lt!472818 () Bool)

(assert (=> d!404141 (= lt!472818 (forall!3528 (list!5659 (xs!7518 (c!231995 objs!24))) lambda!62403))))

(declare-fun choose!8723 (IArray!9587 Int) Bool)

(assert (=> d!404141 (= lt!472818 (choose!8723 (xs!7518 (c!231995 objs!24)) lambda!62403))))

(assert (=> d!404141 (= (forall!3533 (xs!7518 (c!231995 objs!24)) lambda!62403) lt!472818)))

(declare-fun bs!339098 () Bool)

(assert (= bs!339098 d!404141))

(assert (=> bs!339098 m!1592505))

(assert (=> bs!339098 m!1592505))

(declare-fun m!1593777 () Bool)

(assert (=> bs!339098 m!1593777))

(declare-fun m!1593779 () Bool)

(assert (=> bs!339098 m!1593779))

(assert (=> b!1411769 d!404141))

(declare-fun bs!339108 () Bool)

(declare-fun d!404143 () Bool)

(assert (= bs!339108 (and d!404143 d!403537)))

(declare-fun lambda!62446 () Int)

(assert (=> bs!339108 (= (= (rules!11012 sep!3) (rules!11012 acc!229)) (= lambda!62446 lambda!62414))))

(declare-fun bs!339109 () Bool)

(assert (= bs!339109 (and d!404143 d!403637)))

(assert (=> bs!339109 (= lambda!62446 lambda!62415)))

(declare-fun b!1412750 () Bool)

(declare-fun e!901886 () Bool)

(assert (=> b!1412750 (= e!901886 true)))

(declare-fun b!1412749 () Bool)

(declare-fun e!901885 () Bool)

(assert (=> b!1412749 (= e!901885 e!901886)))

(declare-fun b!1412748 () Bool)

(declare-fun e!901884 () Bool)

(assert (=> b!1412748 (= e!901884 e!901885)))

(assert (=> d!404143 e!901884))

(assert (= b!1412749 b!1412750))

(assert (= b!1412748 b!1412749))

(assert (= (and d!404143 ((_ is Cons!14425) (rules!11012 sep!3))) b!1412748))

(assert (=> b!1412750 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (dynLambda!6681 order!8803 lambda!62446))))

(assert (=> b!1412750 (< (dynLambda!6682 order!8805 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3))))) (dynLambda!6681 order!8803 lambda!62446))))

(assert (=> d!404143 true))

(declare-fun lt!472827 () Bool)

(assert (=> d!404143 (= lt!472827 (forall!3534 (list!5656 (tokens!1748 sep!3)) lambda!62446))))

(declare-fun e!901882 () Bool)

(assert (=> d!404143 (= lt!472827 e!901882)))

(declare-fun res!639851 () Bool)

(assert (=> d!404143 (=> res!639851 e!901882)))

(assert (=> d!404143 (= res!639851 (not ((_ is Cons!14424) (list!5656 (tokens!1748 sep!3)))))))

(assert (=> d!404143 (not (isEmpty!8816 (rules!11012 sep!3)))))

(assert (=> d!404143 (= (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 sep!3) (list!5656 (tokens!1748 sep!3))) lt!472827)))

(declare-fun b!1412746 () Bool)

(declare-fun e!901883 () Bool)

(assert (=> b!1412746 (= e!901882 e!901883)))

(declare-fun res!639850 () Bool)

(assert (=> b!1412746 (=> (not res!639850) (not e!901883))))

(assert (=> b!1412746 (= res!639850 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 sep!3) (h!19825 (list!5656 (tokens!1748 sep!3)))))))

(declare-fun b!1412747 () Bool)

(assert (=> b!1412747 (= e!901883 (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 sep!3) (t!123553 (list!5656 (tokens!1748 sep!3)))))))

(assert (= (and d!404143 (not res!639851)) b!1412746))

(assert (= (and b!1412746 res!639850) b!1412747))

(assert (=> d!404143 m!1592477))

(declare-fun m!1593971 () Bool)

(assert (=> d!404143 m!1593971))

(assert (=> d!404143 m!1592075))

(declare-fun m!1593973 () Bool)

(assert (=> b!1412746 m!1593973))

(declare-fun m!1593975 () Bool)

(assert (=> b!1412747 m!1593975))

(assert (=> b!1412040 d!404143))

(assert (=> b!1412040 d!404097))

(assert (=> d!403649 d!404117))

(assert (=> d!403649 d!404119))

(declare-fun d!404171 () Bool)

(declare-fun res!639852 () Bool)

(declare-fun e!901887 () Bool)

(assert (=> d!404171 (=> (not res!639852) (not e!901887))))

(assert (=> d!404171 (= res!639852 (= (csize!9810 (right!12650 (c!231994 (tokens!1748 sep!3)))) (+ (size!11886 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))) (size!11886 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))))))))

(assert (=> d!404171 (= (inv!18850 (right!12650 (c!231994 (tokens!1748 sep!3)))) e!901887)))

(declare-fun b!1412751 () Bool)

(declare-fun res!639853 () Bool)

(assert (=> b!1412751 (=> (not res!639853) (not e!901887))))

(assert (=> b!1412751 (= res!639853 (and (not (= (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3)))) Empty!4790)) (not (= (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))) Empty!4790))))))

(declare-fun b!1412752 () Bool)

(declare-fun res!639854 () Bool)

(assert (=> b!1412752 (=> (not res!639854) (not e!901887))))

(assert (=> b!1412752 (= res!639854 (= (cheight!5001 (right!12650 (c!231994 (tokens!1748 sep!3)))) (+ (max!0 (height!693 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))) (height!693 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))) 1)))))

(declare-fun b!1412753 () Bool)

(assert (=> b!1412753 (= e!901887 (<= 0 (cheight!5001 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(assert (= (and d!404171 res!639852) b!1412751))

(assert (= (and b!1412751 res!639853) b!1412752))

(assert (= (and b!1412752 res!639854) b!1412753))

(declare-fun m!1593977 () Bool)

(assert (=> d!404171 m!1593977))

(declare-fun m!1593979 () Bool)

(assert (=> d!404171 m!1593979))

(assert (=> b!1412752 m!1593001))

(assert (=> b!1412752 m!1593005))

(assert (=> b!1412752 m!1593001))

(assert (=> b!1412752 m!1593005))

(declare-fun m!1593981 () Bool)

(assert (=> b!1412752 m!1593981))

(assert (=> b!1411957 d!404171))

(declare-fun d!404173 () Bool)

(assert (=> d!404173 (= (inv!18855 (xs!7518 (left!12321 (c!231995 objs!24)))) (<= (size!11881 (innerList!4851 (xs!7518 (left!12321 (c!231995 objs!24))))) 2147483647))))

(declare-fun bs!339110 () Bool)

(assert (= bs!339110 d!404173))

(declare-fun m!1593983 () Bool)

(assert (=> bs!339110 m!1593983))

(assert (=> b!1412092 d!404173))

(declare-fun d!404175 () Bool)

(assert (=> d!404175 (= (inv!18854 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))) (<= (size!11885 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229)))))) 2147483647))))

(declare-fun bs!339111 () Bool)

(assert (= bs!339111 d!404175))

(declare-fun m!1593985 () Bool)

(assert (=> bs!339111 m!1593985))

(assert (=> b!1412101 d!404175))

(assert (=> b!1412049 d!404087))

(assert (=> b!1412049 d!404089))

(declare-fun d!404177 () Bool)

(declare-fun res!639855 () Bool)

(declare-fun e!901888 () Bool)

(assert (=> d!404177 (=> (not res!639855) (not e!901888))))

(assert (=> d!404177 (= res!639855 (not (isEmpty!8816 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))))))

(assert (=> d!404177 (= (inv!18842 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))) e!901888)))

(declare-fun b!1412754 () Bool)

(declare-fun res!639856 () Bool)

(assert (=> b!1412754 (=> (not res!639856) (not e!901888))))

(assert (=> b!1412754 (= res!639856 (rulesInvariant!2061 Lexer!2189 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))))

(declare-fun b!1412755 () Bool)

(declare-fun res!639857 () Bool)

(assert (=> b!1412755 (=> (not res!639857) (not e!901888))))

(assert (=> b!1412755 (= res!639857 (rulesProduceEachTokenIndividually!788 Lexer!2189 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))) (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))))

(declare-fun b!1412756 () Bool)

(assert (=> b!1412756 (= e!901888 (separableTokens!173 Lexer!2189 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))) (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))))

(assert (= (and d!404177 res!639855) b!1412754))

(assert (= (and b!1412754 res!639856) b!1412755))

(assert (= (and b!1412755 res!639857) b!1412756))

(declare-fun m!1593987 () Bool)

(assert (=> d!404177 m!1593987))

(declare-fun m!1593989 () Bool)

(assert (=> b!1412754 m!1593989))

(declare-fun m!1593991 () Bool)

(assert (=> b!1412755 m!1593991))

(declare-fun m!1593993 () Bool)

(assert (=> b!1412756 m!1593993))

(assert (=> b!1412111 d!404177))

(declare-fun d!404179 () Bool)

(declare-fun lt!472828 () Bool)

(assert (=> d!404179 (= lt!472828 (isEmpty!8822 (list!5661 (right!12650 (c!231994 (tokens!1748 sep!3))))))))

(assert (=> d!404179 (= lt!472828 (= (size!11886 (right!12650 (c!231994 (tokens!1748 sep!3)))) 0))))

(assert (=> d!404179 (= (isEmpty!8817 (right!12650 (c!231994 (tokens!1748 sep!3)))) lt!472828)))

(declare-fun bs!339112 () Bool)

(assert (= bs!339112 d!404179))

(assert (=> bs!339112 m!1592713))

(assert (=> bs!339112 m!1592713))

(declare-fun m!1593995 () Bool)

(assert (=> bs!339112 m!1593995))

(assert (=> bs!339112 m!1592389))

(assert (=> b!1411750 d!404179))

(declare-fun d!404181 () Bool)

(declare-fun res!639858 () Bool)

(declare-fun e!901889 () Bool)

(assert (=> d!404181 (=> (not res!639858) (not e!901889))))

(assert (=> d!404181 (= res!639858 (<= (size!11881 (list!5659 (xs!7518 (right!12651 (c!231995 objs!24))))) 512))))

(assert (=> d!404181 (= (inv!18853 (right!12651 (c!231995 objs!24))) e!901889)))

(declare-fun b!1412757 () Bool)

(declare-fun res!639859 () Bool)

(assert (=> b!1412757 (=> (not res!639859) (not e!901889))))

(assert (=> b!1412757 (= res!639859 (= (csize!9813 (right!12651 (c!231995 objs!24))) (size!11881 (list!5659 (xs!7518 (right!12651 (c!231995 objs!24)))))))))

(declare-fun b!1412758 () Bool)

(assert (=> b!1412758 (= e!901889 (and (> (csize!9813 (right!12651 (c!231995 objs!24))) 0) (<= (csize!9813 (right!12651 (c!231995 objs!24))) 512)))))

(assert (= (and d!404181 res!639858) b!1412757))

(assert (= (and b!1412757 res!639859) b!1412758))

(assert (=> d!404181 m!1593687))

(assert (=> d!404181 m!1593687))

(declare-fun m!1593997 () Bool)

(assert (=> d!404181 m!1593997))

(assert (=> b!1412757 m!1593687))

(assert (=> b!1412757 m!1593687))

(assert (=> b!1412757 m!1593997))

(assert (=> b!1411732 d!404181))

(declare-fun d!404183 () Bool)

(assert (=> d!404183 (= (inv!18832 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (= (mod (str.len (value!81024 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) 2) 0))))

(assert (=> b!1412089 d!404183))

(declare-fun d!404185 () Bool)

(declare-fun res!639860 () Bool)

(declare-fun e!901890 () Bool)

(assert (=> d!404185 (=> (not res!639860) (not e!901890))))

(assert (=> d!404185 (= res!639860 (semiInverseModEq!971 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (toValue!3800 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))))

(assert (=> d!404185 (= (inv!18856 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) e!901890)))

(declare-fun b!1412759 () Bool)

(assert (=> b!1412759 (= e!901890 (equivClasses!930 (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (toValue!3800 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))))))

(assert (= (and d!404185 res!639860) b!1412759))

(declare-fun m!1593999 () Bool)

(assert (=> d!404185 m!1593999))

(declare-fun m!1594001 () Bool)

(assert (=> b!1412759 m!1594001))

(assert (=> b!1412089 d!404185))

(declare-fun b!1412760 () Bool)

(declare-fun res!639861 () Bool)

(declare-fun e!901892 () Bool)

(assert (=> b!1412760 (=> (not res!639861) (not e!901892))))

(assert (=> b!1412760 (= res!639861 (isBalanced!1416 (right!12651 (right!12651 (c!231995 objs!24)))))))

(declare-fun d!404187 () Bool)

(declare-fun res!639864 () Bool)

(declare-fun e!901891 () Bool)

(assert (=> d!404187 (=> res!639864 e!901891)))

(assert (=> d!404187 (= res!639864 (not ((_ is Node!4791) (right!12651 (c!231995 objs!24)))))))

(assert (=> d!404187 (= (isBalanced!1416 (right!12651 (c!231995 objs!24))) e!901891)))

(declare-fun b!1412761 () Bool)

(declare-fun res!639866 () Bool)

(assert (=> b!1412761 (=> (not res!639866) (not e!901892))))

(assert (=> b!1412761 (= res!639866 (isBalanced!1416 (left!12321 (right!12651 (c!231995 objs!24)))))))

(declare-fun b!1412762 () Bool)

(assert (=> b!1412762 (= e!901892 (not (isEmpty!8815 (right!12651 (right!12651 (c!231995 objs!24))))))))

(declare-fun b!1412763 () Bool)

(declare-fun res!639865 () Bool)

(assert (=> b!1412763 (=> (not res!639865) (not e!901892))))

(assert (=> b!1412763 (= res!639865 (not (isEmpty!8815 (left!12321 (right!12651 (c!231995 objs!24))))))))

(declare-fun b!1412764 () Bool)

(declare-fun res!639862 () Bool)

(assert (=> b!1412764 (=> (not res!639862) (not e!901892))))

(assert (=> b!1412764 (= res!639862 (<= (- (height!694 (left!12321 (right!12651 (c!231995 objs!24)))) (height!694 (right!12651 (right!12651 (c!231995 objs!24))))) 1))))

(declare-fun b!1412765 () Bool)

(assert (=> b!1412765 (= e!901891 e!901892)))

(declare-fun res!639863 () Bool)

(assert (=> b!1412765 (=> (not res!639863) (not e!901892))))

(assert (=> b!1412765 (= res!639863 (<= (- 1) (- (height!694 (left!12321 (right!12651 (c!231995 objs!24)))) (height!694 (right!12651 (right!12651 (c!231995 objs!24)))))))))

(assert (= (and d!404187 (not res!639864)) b!1412765))

(assert (= (and b!1412765 res!639863) b!1412764))

(assert (= (and b!1412764 res!639862) b!1412761))

(assert (= (and b!1412761 res!639866) b!1412760))

(assert (= (and b!1412760 res!639861) b!1412763))

(assert (= (and b!1412763 res!639865) b!1412762))

(declare-fun m!1594003 () Bool)

(assert (=> b!1412761 m!1594003))

(declare-fun m!1594005 () Bool)

(assert (=> b!1412763 m!1594005))

(assert (=> b!1412764 m!1593191))

(assert (=> b!1412764 m!1593193))

(declare-fun m!1594007 () Bool)

(assert (=> b!1412760 m!1594007))

(assert (=> b!1412765 m!1593191))

(assert (=> b!1412765 m!1593193))

(declare-fun m!1594009 () Bool)

(assert (=> b!1412762 m!1594009))

(assert (=> b!1411944 d!404187))

(declare-fun d!404189 () Bool)

(assert (=> d!404189 (= (usesJsonRules!0 (h!19827 (list!5651 objs!24))) (= (rules!11012 (h!19827 (list!5651 objs!24))) (rules!109 JsonLexer!387)))))

(declare-fun bs!339113 () Bool)

(assert (= bs!339113 d!404189))

(assert (=> bs!339113 m!1592007))

(assert (=> bs!339006 d!404189))

(declare-fun d!404191 () Bool)

(declare-fun lt!472829 () Int)

(assert (=> d!404191 (>= lt!472829 0)))

(declare-fun e!901893 () Int)

(assert (=> d!404191 (= lt!472829 e!901893)))

(declare-fun c!232127 () Bool)

(assert (=> d!404191 (= c!232127 ((_ is Nil!14426) (list!5655 (c!231995 objs!24))))))

(assert (=> d!404191 (= (size!11881 (list!5655 (c!231995 objs!24))) lt!472829)))

(declare-fun b!1412766 () Bool)

(assert (=> b!1412766 (= e!901893 0)))

(declare-fun b!1412767 () Bool)

(assert (=> b!1412767 (= e!901893 (+ 1 (size!11881 (t!123555 (list!5655 (c!231995 objs!24))))))))

(assert (= (and d!404191 c!232127) b!1412766))

(assert (= (and d!404191 (not c!232127)) b!1412767))

(declare-fun m!1594011 () Bool)

(assert (=> b!1412767 m!1594011))

(assert (=> d!403633 d!404191))

(assert (=> d!403633 d!403851))

(assert (=> b!1412045 d!404087))

(assert (=> b!1412045 d!404089))

(assert (=> b!1411948 d!404103))

(assert (=> b!1411948 d!404105))

(declare-fun bs!339114 () Bool)

(declare-fun d!404193 () Bool)

(assert (= bs!339114 (and d!404193 d!403537)))

(declare-fun lambda!62447 () Int)

(assert (=> bs!339114 (= lambda!62447 lambda!62414)))

(declare-fun bs!339115 () Bool)

(assert (= bs!339115 (and d!404193 d!403637)))

(assert (=> bs!339115 (= (= (rules!11012 acc!229) (rules!11012 sep!3)) (= lambda!62447 lambda!62415))))

(declare-fun bs!339116 () Bool)

(assert (= bs!339116 (and d!404193 d!404143)))

(assert (=> bs!339116 (= (= (rules!11012 acc!229) (rules!11012 sep!3)) (= lambda!62447 lambda!62446))))

(declare-fun b!1412772 () Bool)

(declare-fun e!901898 () Bool)

(assert (=> b!1412772 (= e!901898 true)))

(declare-fun b!1412771 () Bool)

(declare-fun e!901897 () Bool)

(assert (=> b!1412771 (= e!901897 e!901898)))

(declare-fun b!1412770 () Bool)

(declare-fun e!901896 () Bool)

(assert (=> b!1412770 (= e!901896 e!901897)))

(assert (=> d!404193 e!901896))

(assert (= b!1412771 b!1412772))

(assert (= b!1412770 b!1412771))

(assert (= (and d!404193 ((_ is Cons!14425) (rules!11012 acc!229))) b!1412770))

(assert (=> b!1412772 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (dynLambda!6681 order!8803 lambda!62447))))

(assert (=> b!1412772 (< (dynLambda!6682 order!8805 (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229))))) (dynLambda!6681 order!8803 lambda!62447))))

(assert (=> d!404193 true))

(declare-fun lt!472830 () Bool)

(assert (=> d!404193 (= lt!472830 (forall!3534 (list!5656 (tokens!1748 acc!229)) lambda!62447))))

(declare-fun e!901894 () Bool)

(assert (=> d!404193 (= lt!472830 e!901894)))

(declare-fun res!639868 () Bool)

(assert (=> d!404193 (=> res!639868 e!901894)))

(assert (=> d!404193 (= res!639868 (not ((_ is Cons!14424) (list!5656 (tokens!1748 acc!229)))))))

(assert (=> d!404193 (not (isEmpty!8816 (rules!11012 acc!229)))))

(assert (=> d!404193 (= (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 acc!229) (list!5656 (tokens!1748 acc!229))) lt!472830)))

(declare-fun b!1412768 () Bool)

(declare-fun e!901895 () Bool)

(assert (=> b!1412768 (= e!901894 e!901895)))

(declare-fun res!639867 () Bool)

(assert (=> b!1412768 (=> (not res!639867) (not e!901895))))

(assert (=> b!1412768 (= res!639867 (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 acc!229) (h!19825 (list!5656 (tokens!1748 acc!229)))))))

(declare-fun b!1412769 () Bool)

(assert (=> b!1412769 (= e!901895 (rulesProduceEachTokenIndividuallyList!675 Lexer!2189 (rules!11012 acc!229) (t!123553 (list!5656 (tokens!1748 acc!229)))))))

(assert (= (and d!404193 (not res!639868)) b!1412768))

(assert (= (and b!1412768 res!639867) b!1412769))

(assert (=> d!404193 m!1592193))

(declare-fun m!1594013 () Bool)

(assert (=> d!404193 m!1594013))

(assert (=> d!404193 m!1592067))

(declare-fun m!1594015 () Bool)

(assert (=> b!1412768 m!1594015))

(declare-fun m!1594017 () Bool)

(assert (=> b!1412769 m!1594017))

(assert (=> b!1411800 d!404193))

(assert (=> b!1411800 d!403913))

(declare-fun e!901899 () Bool)

(declare-fun tp!400946 () Bool)

(declare-fun tp!400944 () Bool)

(declare-fun b!1412773 () Bool)

(assert (=> b!1412773 (= e!901899 (and (inv!18838 (left!12321 (left!12321 (right!12651 (c!231995 objs!24))))) tp!400946 (inv!18838 (right!12651 (left!12321 (right!12651 (c!231995 objs!24))))) tp!400944))))

(declare-fun b!1412775 () Bool)

(declare-fun e!901900 () Bool)

(declare-fun tp!400945 () Bool)

(assert (=> b!1412775 (= e!901900 tp!400945)))

(declare-fun b!1412774 () Bool)

(assert (=> b!1412774 (= e!901899 (and (inv!18855 (xs!7518 (left!12321 (right!12651 (c!231995 objs!24))))) e!901900))))

(assert (=> b!1412094 (= tp!400830 (and (inv!18838 (left!12321 (right!12651 (c!231995 objs!24)))) e!901899))))

(assert (= (and b!1412094 ((_ is Node!4791) (left!12321 (right!12651 (c!231995 objs!24))))) b!1412773))

(assert (= b!1412774 b!1412775))

(assert (= (and b!1412094 ((_ is Leaf!7240) (left!12321 (right!12651 (c!231995 objs!24))))) b!1412774))

(declare-fun m!1594019 () Bool)

(assert (=> b!1412773 m!1594019))

(declare-fun m!1594021 () Bool)

(assert (=> b!1412773 m!1594021))

(declare-fun m!1594023 () Bool)

(assert (=> b!1412774 m!1594023))

(assert (=> b!1412094 m!1592577))

(declare-fun tp!400947 () Bool)

(declare-fun e!901901 () Bool)

(declare-fun tp!400949 () Bool)

(declare-fun b!1412776 () Bool)

(assert (=> b!1412776 (= e!901901 (and (inv!18838 (left!12321 (right!12651 (right!12651 (c!231995 objs!24))))) tp!400949 (inv!18838 (right!12651 (right!12651 (right!12651 (c!231995 objs!24))))) tp!400947))))

(declare-fun b!1412778 () Bool)

(declare-fun e!901902 () Bool)

(declare-fun tp!400948 () Bool)

(assert (=> b!1412778 (= e!901902 tp!400948)))

(declare-fun b!1412777 () Bool)

(assert (=> b!1412777 (= e!901901 (and (inv!18855 (xs!7518 (right!12651 (right!12651 (c!231995 objs!24))))) e!901902))))

(assert (=> b!1412094 (= tp!400828 (and (inv!18838 (right!12651 (right!12651 (c!231995 objs!24)))) e!901901))))

(assert (= (and b!1412094 ((_ is Node!4791) (right!12651 (right!12651 (c!231995 objs!24))))) b!1412776))

(assert (= b!1412777 b!1412778))

(assert (= (and b!1412094 ((_ is Leaf!7240) (right!12651 (right!12651 (c!231995 objs!24))))) b!1412777))

(declare-fun m!1594025 () Bool)

(assert (=> b!1412776 m!1594025))

(declare-fun m!1594027 () Bool)

(assert (=> b!1412776 m!1594027))

(declare-fun m!1594029 () Bool)

(assert (=> b!1412777 m!1594029))

(assert (=> b!1412094 m!1592579))

(declare-fun tp!400952 () Bool)

(declare-fun b!1412779 () Bool)

(declare-fun e!901904 () Bool)

(declare-fun tp!400950 () Bool)

(assert (=> b!1412779 (= e!901904 (and (inv!18840 (left!12320 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3)))))) tp!400952 (inv!18840 (right!12650 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3)))))) tp!400950))))

(declare-fun b!1412781 () Bool)

(declare-fun e!901903 () Bool)

(declare-fun tp!400951 () Bool)

(assert (=> b!1412781 (= e!901903 tp!400951)))

(declare-fun b!1412780 () Bool)

(assert (=> b!1412780 (= e!901904 (and (inv!18854 (xs!7517 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3)))))) e!901903))))

(assert (=> b!1412121 (= tp!400854 (and (inv!18840 (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3))))) e!901904))))

(assert (= (and b!1412121 ((_ is Node!4790) (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3)))))) b!1412779))

(assert (= b!1412780 b!1412781))

(assert (= (and b!1412121 ((_ is Leaf!7239) (left!12320 (right!12650 (c!231994 (tokens!1748 sep!3)))))) b!1412780))

(declare-fun m!1594031 () Bool)

(assert (=> b!1412779 m!1594031))

(declare-fun m!1594033 () Bool)

(assert (=> b!1412779 m!1594033))

(declare-fun m!1594035 () Bool)

(assert (=> b!1412780 m!1594035))

(assert (=> b!1412121 m!1592615))

(declare-fun e!901906 () Bool)

(declare-fun b!1412782 () Bool)

(declare-fun tp!400953 () Bool)

(declare-fun tp!400955 () Bool)

(assert (=> b!1412782 (= e!901906 (and (inv!18840 (left!12320 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))) tp!400955 (inv!18840 (right!12650 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))) tp!400953))))

(declare-fun b!1412784 () Bool)

(declare-fun e!901905 () Bool)

(declare-fun tp!400954 () Bool)

(assert (=> b!1412784 (= e!901905 tp!400954)))

(declare-fun b!1412783 () Bool)

(assert (=> b!1412783 (= e!901906 (and (inv!18854 (xs!7517 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))) e!901905))))

(assert (=> b!1412121 (= tp!400852 (and (inv!18840 (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3))))) e!901906))))

(assert (= (and b!1412121 ((_ is Node!4790) (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))) b!1412782))

(assert (= b!1412783 b!1412784))

(assert (= (and b!1412121 ((_ is Leaf!7239) (right!12650 (right!12650 (c!231994 (tokens!1748 sep!3)))))) b!1412783))

(declare-fun m!1594037 () Bool)

(assert (=> b!1412782 m!1594037))

(declare-fun m!1594039 () Bool)

(assert (=> b!1412782 m!1594039))

(declare-fun m!1594041 () Bool)

(assert (=> b!1412783 m!1594041))

(assert (=> b!1412121 m!1592617))

(declare-fun b!1412787 () Bool)

(declare-fun e!901909 () Bool)

(assert (=> b!1412787 (= e!901909 true)))

(declare-fun b!1412786 () Bool)

(declare-fun e!901908 () Bool)

(assert (=> b!1412786 (= e!901908 e!901909)))

(declare-fun b!1412785 () Bool)

(declare-fun e!901907 () Bool)

(assert (=> b!1412785 (= e!901907 e!901908)))

(assert (=> b!1411809 e!901907))

(assert (= b!1412786 b!1412787))

(assert (= b!1412785 b!1412786))

(assert (= (and b!1411809 ((_ is Cons!14425) (t!123554 (rules!11012 acc!229)))) b!1412785))

(assert (=> b!1412787 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229)))))) (dynLambda!6681 order!8803 lambda!62414))))

(assert (=> b!1412787 (< (dynLambda!6682 order!8805 (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229)))))) (dynLambda!6681 order!8803 lambda!62414))))

(declare-fun b!1412790 () Bool)

(declare-fun b_free!34691 () Bool)

(declare-fun b_next!35395 () Bool)

(assert (=> b!1412790 (= b_free!34691 (not b_next!35395))))

(declare-fun tp!400956 () Bool)

(declare-fun b_and!94667 () Bool)

(assert (=> b!1412790 (= tp!400956 b_and!94667)))

(declare-fun b_free!34693 () Bool)

(declare-fun b_next!35397 () Bool)

(assert (=> b!1412790 (= b_free!34693 (not b_next!35397))))

(declare-fun t!123707 () Bool)

(declare-fun tb!73437 () Bool)

(assert (=> (and b!1412790 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 acc!229)))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123707) tb!73437))

(declare-fun result!89374 () Bool)

(assert (= result!89374 result!89286))

(assert (=> b!1412322 t!123707))

(declare-fun t!123709 () Bool)

(declare-fun tb!73439 () Bool)

(assert (=> (and b!1412790 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 acc!229)))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123709) tb!73439))

(declare-fun result!89376 () Bool)

(assert (= result!89376 result!89314))

(assert (=> b!1412503 t!123709))

(declare-fun b_and!94669 () Bool)

(declare-fun tp!400958 () Bool)

(assert (=> b!1412790 (= tp!400958 (and (=> t!123707 result!89374) (=> t!123709 result!89376) b_and!94669))))

(declare-fun e!901911 () Bool)

(assert (=> b!1412790 (= e!901911 (and tp!400956 tp!400958))))

(declare-fun b!1412789 () Bool)

(declare-fun e!901912 () Bool)

(assert (=> b!1412789 (= e!901912 (and (inv!18832 (tag!2767 (h!19826 (t!123554 (t!123554 (rules!11012 acc!229)))))) (inv!18856 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 acc!229)))))) e!901911))))

(declare-fun b!1412788 () Bool)

(declare-fun e!901913 () Bool)

(declare-fun tp!400957 () Bool)

(assert (=> b!1412788 (= e!901913 (and e!901912 tp!400957))))

(assert (=> b!1412127 (= tp!400859 e!901913)))

(assert (= b!1412789 b!1412790))

(assert (= b!1412788 b!1412789))

(assert (= (and b!1412127 ((_ is Cons!14425) (t!123554 (t!123554 (rules!11012 acc!229))))) b!1412788))

(declare-fun m!1594043 () Bool)

(assert (=> b!1412789 m!1594043))

(declare-fun m!1594045 () Bool)

(assert (=> b!1412789 m!1594045))

(declare-fun b!1412794 () Bool)

(declare-fun b_free!34695 () Bool)

(declare-fun b_next!35399 () Bool)

(assert (=> b!1412794 (= b_free!34695 (not b_next!35399))))

(declare-fun tp!400961 () Bool)

(declare-fun b_and!94671 () Bool)

(assert (=> b!1412794 (= tp!400961 b_and!94671)))

(declare-fun b_free!34697 () Bool)

(declare-fun b_next!35401 () Bool)

(assert (=> b!1412794 (= b_free!34697 (not b_next!35401))))

(declare-fun tb!73441 () Bool)

(declare-fun t!123711 () Bool)

(assert (=> (and b!1412794 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123711) tb!73441))

(declare-fun result!89378 () Bool)

(assert (= result!89378 result!89286))

(assert (=> b!1412322 t!123711))

(declare-fun t!123713 () Bool)

(declare-fun tb!73443 () Bool)

(assert (=> (and b!1412794 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123713) tb!73443))

(declare-fun result!89380 () Bool)

(assert (= result!89380 result!89314))

(assert (=> b!1412503 t!123713))

(declare-fun tp!400960 () Bool)

(declare-fun b_and!94673 () Bool)

(assert (=> b!1412794 (= tp!400960 (and (=> t!123711 result!89378) (=> t!123713 result!89380) b_and!94673))))

(declare-fun b!1412792 () Bool)

(declare-fun e!901914 () Bool)

(declare-fun e!901915 () Bool)

(assert (=> b!1412792 (= e!901914 (and (inv!21 (value!81025 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) e!901915))))

(declare-fun b!1412793 () Bool)

(declare-fun e!901916 () Bool)

(assert (=> b!1412793 (= e!901915 (and (inv!18832 (tag!2767 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) (inv!18856 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) e!901916))))

(declare-fun tp!400959 () Bool)

(declare-fun e!901919 () Bool)

(declare-fun b!1412791 () Bool)

(assert (=> b!1412791 (= e!901919 (and (inv!18858 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))) e!901914 tp!400959))))

(assert (=> b!1412794 (= e!901916 (and tp!400961 tp!400960))))

(assert (=> b!1412114 (= tp!400846 e!901919)))

(assert (= b!1412793 b!1412794))

(assert (= b!1412792 b!1412793))

(assert (= b!1412791 b!1412792))

(assert (= (and b!1412114 ((_ is Cons!14424) (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))) b!1412791))

(declare-fun m!1594047 () Bool)

(assert (=> b!1412792 m!1594047))

(declare-fun m!1594049 () Bool)

(assert (=> b!1412793 m!1594049))

(declare-fun m!1594051 () Bool)

(assert (=> b!1412793 m!1594051))

(declare-fun m!1594053 () Bool)

(assert (=> b!1412791 m!1594053))

(declare-fun b!1412798 () Bool)

(declare-fun b_free!34699 () Bool)

(declare-fun b_next!35403 () Bool)

(assert (=> b!1412798 (= b_free!34699 (not b_next!35403))))

(declare-fun tp!400964 () Bool)

(declare-fun b_and!94675 () Bool)

(assert (=> b!1412798 (= tp!400964 b_and!94675)))

(declare-fun b_free!34701 () Bool)

(declare-fun b_next!35405 () Bool)

(assert (=> b!1412798 (= b_free!34701 (not b_next!35405))))

(declare-fun t!123715 () Bool)

(declare-fun tb!73445 () Bool)

(assert (=> (and b!1412798 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123715) tb!73445))

(declare-fun result!89382 () Bool)

(assert (= result!89382 result!89286))

(assert (=> b!1412322 t!123715))

(declare-fun tb!73447 () Bool)

(declare-fun t!123717 () Bool)

(assert (=> (and b!1412798 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123717) tb!73447))

(declare-fun result!89384 () Bool)

(assert (= result!89384 result!89314))

(assert (=> b!1412503 t!123717))

(declare-fun tp!400963 () Bool)

(declare-fun b_and!94677 () Bool)

(assert (=> b!1412798 (= tp!400963 (and (=> t!123715 result!89382) (=> t!123717 result!89384) b_and!94677))))

(declare-fun b!1412796 () Bool)

(declare-fun e!901920 () Bool)

(declare-fun e!901921 () Bool)

(assert (=> b!1412796 (= e!901920 (and (inv!21 (value!81025 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) e!901921))))

(declare-fun b!1412797 () Bool)

(declare-fun e!901922 () Bool)

(assert (=> b!1412797 (= e!901921 (and (inv!18832 (tag!2767 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) (inv!18856 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) e!901922))))

(declare-fun tp!400962 () Bool)

(declare-fun b!1412795 () Bool)

(declare-fun e!901925 () Bool)

(assert (=> b!1412795 (= e!901925 (and (inv!18858 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))) e!901920 tp!400962))))

(assert (=> b!1412798 (= e!901922 (and tp!400964 tp!400963))))

(assert (=> b!1412087 (= tp!400822 e!901925)))

(assert (= b!1412797 b!1412798))

(assert (= b!1412796 b!1412797))

(assert (= b!1412795 b!1412796))

(assert (= (and b!1412087 ((_ is Cons!14424) (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))) b!1412795))

(declare-fun m!1594055 () Bool)

(assert (=> b!1412796 m!1594055))

(declare-fun m!1594057 () Bool)

(assert (=> b!1412797 m!1594057))

(declare-fun m!1594059 () Bool)

(assert (=> b!1412797 m!1594059))

(declare-fun m!1594061 () Bool)

(assert (=> b!1412795 m!1594061))

(declare-fun b!1412801 () Bool)

(declare-fun e!901928 () Bool)

(assert (=> b!1412801 (= e!901928 true)))

(declare-fun b!1412800 () Bool)

(declare-fun e!901927 () Bool)

(assert (=> b!1412800 (= e!901927 e!901928)))

(declare-fun b!1412799 () Bool)

(declare-fun e!901926 () Bool)

(assert (=> b!1412799 (= e!901926 e!901927)))

(assert (=> b!1412041 e!901926))

(assert (= b!1412800 b!1412801))

(assert (= b!1412799 b!1412800))

(assert (= (and b!1412041 ((_ is Cons!14425) (t!123554 (rules!11012 sep!3)))) b!1412799))

(assert (=> b!1412801 (< (dynLambda!6680 order!8801 (toValue!3800 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3)))))) (dynLambda!6681 order!8803 lambda!62415))))

(assert (=> b!1412801 (< (dynLambda!6682 order!8805 (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3)))))) (dynLambda!6681 order!8803 lambda!62415))))

(declare-fun b!1412805 () Bool)

(declare-fun b_free!34703 () Bool)

(declare-fun b_next!35407 () Bool)

(assert (=> b!1412805 (= b_free!34703 (not b_next!35407))))

(declare-fun tp!400967 () Bool)

(declare-fun b_and!94679 () Bool)

(assert (=> b!1412805 (= tp!400967 b_and!94679)))

(declare-fun b_free!34705 () Bool)

(declare-fun b_next!35409 () Bool)

(assert (=> b!1412805 (= b_free!34705 (not b_next!35409))))

(declare-fun t!123719 () Bool)

(declare-fun tb!73449 () Bool)

(assert (=> (and b!1412805 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123719) tb!73449))

(declare-fun result!89386 () Bool)

(assert (= result!89386 result!89286))

(assert (=> b!1412322 t!123719))

(declare-fun t!123721 () Bool)

(declare-fun tb!73451 () Bool)

(assert (=> (and b!1412805 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123721) tb!73451))

(declare-fun result!89388 () Bool)

(assert (= result!89388 result!89314))

(assert (=> b!1412503 t!123721))

(declare-fun b_and!94681 () Bool)

(declare-fun tp!400966 () Bool)

(assert (=> b!1412805 (= tp!400966 (and (=> t!123719 result!89386) (=> t!123721 result!89388) b_and!94681))))

(declare-fun b!1412803 () Bool)

(declare-fun e!901929 () Bool)

(declare-fun e!901930 () Bool)

(assert (=> b!1412803 (= e!901929 (and (inv!21 (value!81025 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229)))))))) e!901930))))

(declare-fun b!1412804 () Bool)

(declare-fun e!901931 () Bool)

(assert (=> b!1412804 (= e!901930 (and (inv!18832 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))))) (inv!18856 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))))) e!901931))))

(declare-fun tp!400965 () Bool)

(declare-fun e!901934 () Bool)

(declare-fun b!1412802 () Bool)

(assert (=> b!1412802 (= e!901934 (and (inv!18858 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))) e!901929 tp!400965))))

(assert (=> b!1412805 (= e!901931 (and tp!400967 tp!400966))))

(assert (=> b!1412099 (= tp!400832 e!901934)))

(assert (= b!1412804 b!1412805))

(assert (= b!1412803 b!1412804))

(assert (= b!1412802 b!1412803))

(assert (= (and b!1412099 ((_ is Cons!14424) (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))) b!1412802))

(declare-fun m!1594063 () Bool)

(assert (=> b!1412803 m!1594063))

(declare-fun m!1594065 () Bool)

(assert (=> b!1412804 m!1594065))

(declare-fun m!1594067 () Bool)

(assert (=> b!1412804 m!1594067))

(declare-fun m!1594069 () Bool)

(assert (=> b!1412802 m!1594069))

(declare-fun b!1412808 () Bool)

(declare-fun b_free!34707 () Bool)

(declare-fun b_next!35411 () Bool)

(assert (=> b!1412808 (= b_free!34707 (not b_next!35411))))

(declare-fun tp!400968 () Bool)

(declare-fun b_and!94683 () Bool)

(assert (=> b!1412808 (= tp!400968 b_and!94683)))

(declare-fun b_free!34709 () Bool)

(declare-fun b_next!35413 () Bool)

(assert (=> b!1412808 (= b_free!34709 (not b_next!35413))))

(declare-fun t!123723 () Bool)

(declare-fun tb!73453 () Bool)

(assert (=> (and b!1412808 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 sep!3)))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123723) tb!73453))

(declare-fun result!89390 () Bool)

(assert (= result!89390 result!89286))

(assert (=> b!1412322 t!123723))

(declare-fun tb!73455 () Bool)

(declare-fun t!123725 () Bool)

(assert (=> (and b!1412808 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 sep!3)))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123725) tb!73455))

(declare-fun result!89392 () Bool)

(assert (= result!89392 result!89314))

(assert (=> b!1412503 t!123725))

(declare-fun b_and!94685 () Bool)

(declare-fun tp!400970 () Bool)

(assert (=> b!1412808 (= tp!400970 (and (=> t!123723 result!89390) (=> t!123725 result!89392) b_and!94685))))

(declare-fun e!901936 () Bool)

(assert (=> b!1412808 (= e!901936 (and tp!400968 tp!400970))))

(declare-fun b!1412807 () Bool)

(declare-fun e!901937 () Bool)

(assert (=> b!1412807 (= e!901937 (and (inv!18832 (tag!2767 (h!19826 (t!123554 (t!123554 (rules!11012 sep!3)))))) (inv!18856 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 sep!3)))))) e!901936))))

(declare-fun b!1412806 () Bool)

(declare-fun e!901938 () Bool)

(declare-fun tp!400969 () Bool)

(assert (=> b!1412806 (= e!901938 (and e!901937 tp!400969))))

(assert (=> b!1412124 (= tp!400856 e!901938)))

(assert (= b!1412807 b!1412808))

(assert (= b!1412806 b!1412807))

(assert (= (and b!1412124 ((_ is Cons!14425) (t!123554 (t!123554 (rules!11012 sep!3))))) b!1412806))

(declare-fun m!1594071 () Bool)

(assert (=> b!1412807 m!1594071))

(declare-fun m!1594073 () Bool)

(assert (=> b!1412807 m!1594073))

(declare-fun e!901940 () Bool)

(declare-fun tp!400973 () Bool)

(declare-fun tp!400971 () Bool)

(declare-fun b!1412809 () Bool)

(assert (=> b!1412809 (= e!901940 (and (inv!18840 (left!12320 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229)))))) tp!400973 (inv!18840 (right!12650 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229)))))) tp!400971))))

(declare-fun b!1412811 () Bool)

(declare-fun e!901939 () Bool)

(declare-fun tp!400972 () Bool)

(assert (=> b!1412811 (= e!901939 tp!400972)))

(declare-fun b!1412810 () Bool)

(assert (=> b!1412810 (= e!901940 (and (inv!18854 (xs!7517 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229)))))) e!901939))))

(assert (=> b!1412097 (= tp!400833 (and (inv!18840 (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229))))) e!901940))))

(assert (= (and b!1412097 ((_ is Node!4790) (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229)))))) b!1412809))

(assert (= b!1412810 b!1412811))

(assert (= (and b!1412097 ((_ is Leaf!7239) (left!12320 (left!12320 (c!231994 (tokens!1748 acc!229)))))) b!1412810))

(declare-fun m!1594075 () Bool)

(assert (=> b!1412809 m!1594075))

(declare-fun m!1594077 () Bool)

(assert (=> b!1412809 m!1594077))

(declare-fun m!1594079 () Bool)

(assert (=> b!1412810 m!1594079))

(assert (=> b!1412097 m!1592583))

(declare-fun b!1412812 () Bool)

(declare-fun e!901942 () Bool)

(declare-fun tp!400976 () Bool)

(declare-fun tp!400974 () Bool)

(assert (=> b!1412812 (= e!901942 (and (inv!18840 (left!12320 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))) tp!400976 (inv!18840 (right!12650 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))) tp!400974))))

(declare-fun b!1412814 () Bool)

(declare-fun e!901941 () Bool)

(declare-fun tp!400975 () Bool)

(assert (=> b!1412814 (= e!901941 tp!400975)))

(declare-fun b!1412813 () Bool)

(assert (=> b!1412813 (= e!901942 (and (inv!18854 (xs!7517 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))) e!901941))))

(assert (=> b!1412097 (= tp!400831 (and (inv!18840 (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229))))) e!901942))))

(assert (= (and b!1412097 ((_ is Node!4790) (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))) b!1412812))

(assert (= b!1412813 b!1412814))

(assert (= (and b!1412097 ((_ is Leaf!7239) (right!12650 (left!12320 (c!231994 (tokens!1748 acc!229)))))) b!1412813))

(declare-fun m!1594081 () Bool)

(assert (=> b!1412812 m!1594081))

(declare-fun m!1594083 () Bool)

(assert (=> b!1412812 m!1594083))

(declare-fun m!1594085 () Bool)

(assert (=> b!1412813 m!1594085))

(assert (=> b!1412097 m!1592585))

(declare-fun e!901943 () Bool)

(declare-fun tp!400977 () Bool)

(declare-fun tp!400979 () Bool)

(declare-fun b!1412815 () Bool)

(assert (=> b!1412815 (= e!901943 (and (inv!18838 (left!12321 (left!12321 (left!12321 (c!231995 objs!24))))) tp!400979 (inv!18838 (right!12651 (left!12321 (left!12321 (c!231995 objs!24))))) tp!400977))))

(declare-fun b!1412817 () Bool)

(declare-fun e!901944 () Bool)

(declare-fun tp!400978 () Bool)

(assert (=> b!1412817 (= e!901944 tp!400978)))

(declare-fun b!1412816 () Bool)

(assert (=> b!1412816 (= e!901943 (and (inv!18855 (xs!7518 (left!12321 (left!12321 (c!231995 objs!24))))) e!901944))))

(assert (=> b!1412091 (= tp!400827 (and (inv!18838 (left!12321 (left!12321 (c!231995 objs!24)))) e!901943))))

(assert (= (and b!1412091 ((_ is Node!4791) (left!12321 (left!12321 (c!231995 objs!24))))) b!1412815))

(assert (= b!1412816 b!1412817))

(assert (= (and b!1412091 ((_ is Leaf!7240) (left!12321 (left!12321 (c!231995 objs!24))))) b!1412816))

(declare-fun m!1594087 () Bool)

(assert (=> b!1412815 m!1594087))

(declare-fun m!1594089 () Bool)

(assert (=> b!1412815 m!1594089))

(declare-fun m!1594091 () Bool)

(assert (=> b!1412816 m!1594091))

(assert (=> b!1412091 m!1592571))

(declare-fun b!1412818 () Bool)

(declare-fun e!901945 () Bool)

(declare-fun tp!400980 () Bool)

(declare-fun tp!400982 () Bool)

(assert (=> b!1412818 (= e!901945 (and (inv!18838 (left!12321 (right!12651 (left!12321 (c!231995 objs!24))))) tp!400982 (inv!18838 (right!12651 (right!12651 (left!12321 (c!231995 objs!24))))) tp!400980))))

(declare-fun b!1412820 () Bool)

(declare-fun e!901946 () Bool)

(declare-fun tp!400981 () Bool)

(assert (=> b!1412820 (= e!901946 tp!400981)))

(declare-fun b!1412819 () Bool)

(assert (=> b!1412819 (= e!901945 (and (inv!18855 (xs!7518 (right!12651 (left!12321 (c!231995 objs!24))))) e!901946))))

(assert (=> b!1412091 (= tp!400825 (and (inv!18838 (right!12651 (left!12321 (c!231995 objs!24)))) e!901945))))

(assert (= (and b!1412091 ((_ is Node!4791) (right!12651 (left!12321 (c!231995 objs!24))))) b!1412818))

(assert (= b!1412819 b!1412820))

(assert (= (and b!1412091 ((_ is Leaf!7240) (right!12651 (left!12321 (c!231995 objs!24))))) b!1412819))

(declare-fun m!1594093 () Bool)

(assert (=> b!1412818 m!1594093))

(declare-fun m!1594095 () Bool)

(assert (=> b!1412818 m!1594095))

(declare-fun m!1594097 () Bool)

(assert (=> b!1412819 m!1594097))

(assert (=> b!1412091 m!1592573))

(declare-fun tp!400985 () Bool)

(declare-fun b!1412821 () Bool)

(declare-fun e!901948 () Bool)

(declare-fun tp!400983 () Bool)

(assert (=> b!1412821 (= e!901948 (and (inv!18840 (left!12320 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3)))))) tp!400985 (inv!18840 (right!12650 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3)))))) tp!400983))))

(declare-fun b!1412823 () Bool)

(declare-fun e!901947 () Bool)

(declare-fun tp!400984 () Bool)

(assert (=> b!1412823 (= e!901947 tp!400984)))

(declare-fun b!1412822 () Bool)

(assert (=> b!1412822 (= e!901948 (and (inv!18854 (xs!7517 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3)))))) e!901947))))

(assert (=> b!1412118 (= tp!400851 (and (inv!18840 (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3))))) e!901948))))

(assert (= (and b!1412118 ((_ is Node!4790) (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3)))))) b!1412821))

(assert (= b!1412822 b!1412823))

(assert (= (and b!1412118 ((_ is Leaf!7239) (left!12320 (left!12320 (c!231994 (tokens!1748 sep!3)))))) b!1412822))

(declare-fun m!1594099 () Bool)

(assert (=> b!1412821 m!1594099))

(declare-fun m!1594101 () Bool)

(assert (=> b!1412821 m!1594101))

(declare-fun m!1594103 () Bool)

(assert (=> b!1412822 m!1594103))

(assert (=> b!1412118 m!1592609))

(declare-fun b!1412824 () Bool)

(declare-fun e!901950 () Bool)

(declare-fun tp!400986 () Bool)

(declare-fun tp!400988 () Bool)

(assert (=> b!1412824 (= e!901950 (and (inv!18840 (left!12320 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))) tp!400988 (inv!18840 (right!12650 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))) tp!400986))))

(declare-fun b!1412826 () Bool)

(declare-fun e!901949 () Bool)

(declare-fun tp!400987 () Bool)

(assert (=> b!1412826 (= e!901949 tp!400987)))

(declare-fun b!1412825 () Bool)

(assert (=> b!1412825 (= e!901950 (and (inv!18854 (xs!7517 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))) e!901949))))

(assert (=> b!1412118 (= tp!400849 (and (inv!18840 (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3))))) e!901950))))

(assert (= (and b!1412118 ((_ is Node!4790) (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))) b!1412824))

(assert (= b!1412825 b!1412826))

(assert (= (and b!1412118 ((_ is Leaf!7239) (right!12650 (left!12320 (c!231994 (tokens!1748 sep!3)))))) b!1412825))

(declare-fun m!1594105 () Bool)

(assert (=> b!1412824 m!1594105))

(declare-fun m!1594107 () Bool)

(assert (=> b!1412824 m!1594107))

(declare-fun m!1594109 () Bool)

(assert (=> b!1412825 m!1594109))

(assert (=> b!1412118 m!1592611))

(declare-fun tp!400989 () Bool)

(declare-fun b!1412827 () Bool)

(declare-fun e!901952 () Bool)

(declare-fun tp!400991 () Bool)

(assert (=> b!1412827 (= e!901952 (and (inv!18840 (left!12320 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229)))))) tp!400991 (inv!18840 (right!12650 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229)))))) tp!400989))))

(declare-fun b!1412829 () Bool)

(declare-fun e!901951 () Bool)

(declare-fun tp!400990 () Bool)

(assert (=> b!1412829 (= e!901951 tp!400990)))

(declare-fun b!1412828 () Bool)

(assert (=> b!1412828 (= e!901952 (and (inv!18854 (xs!7517 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229)))))) e!901951))))

(assert (=> b!1412100 (= tp!400836 (and (inv!18840 (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229))))) e!901952))))

(assert (= (and b!1412100 ((_ is Node!4790) (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229)))))) b!1412827))

(assert (= b!1412828 b!1412829))

(assert (= (and b!1412100 ((_ is Leaf!7239) (left!12320 (right!12650 (c!231994 (tokens!1748 acc!229)))))) b!1412828))

(declare-fun m!1594111 () Bool)

(assert (=> b!1412827 m!1594111))

(declare-fun m!1594113 () Bool)

(assert (=> b!1412827 m!1594113))

(declare-fun m!1594115 () Bool)

(assert (=> b!1412828 m!1594115))

(assert (=> b!1412100 m!1592589))

(declare-fun e!901954 () Bool)

(declare-fun tp!400992 () Bool)

(declare-fun b!1412830 () Bool)

(declare-fun tp!400994 () Bool)

(assert (=> b!1412830 (= e!901954 (and (inv!18840 (left!12320 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))) tp!400994 (inv!18840 (right!12650 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))) tp!400992))))

(declare-fun b!1412832 () Bool)

(declare-fun e!901953 () Bool)

(declare-fun tp!400993 () Bool)

(assert (=> b!1412832 (= e!901953 tp!400993)))

(declare-fun b!1412831 () Bool)

(assert (=> b!1412831 (= e!901954 (and (inv!18854 (xs!7517 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))) e!901953))))

(assert (=> b!1412100 (= tp!400834 (and (inv!18840 (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229))))) e!901954))))

(assert (= (and b!1412100 ((_ is Node!4790) (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))) b!1412830))

(assert (= b!1412831 b!1412832))

(assert (= (and b!1412100 ((_ is Leaf!7239) (right!12650 (right!12650 (c!231994 (tokens!1748 acc!229)))))) b!1412831))

(declare-fun m!1594117 () Bool)

(assert (=> b!1412830 m!1594117))

(declare-fun m!1594119 () Bool)

(assert (=> b!1412830 m!1594119))

(declare-fun m!1594121 () Bool)

(assert (=> b!1412831 m!1594121))

(assert (=> b!1412100 m!1592591))

(declare-fun b!1412835 () Bool)

(declare-fun e!901957 () Bool)

(declare-fun tp!400997 () Bool)

(assert (=> b!1412835 (= e!901957 (and (inv!18840 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (left!12321 (c!231995 objs!24)))))))) tp!400997))))

(declare-fun e!901956 () Bool)

(declare-fun tp!400995 () Bool)

(declare-fun b!1412834 () Bool)

(assert (=> b!1412834 (= e!901956 (and tp!400995 (inv!18839 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (left!12321 (c!231995 objs!24))))))) e!901957))))

(declare-fun e!901955 () Bool)

(declare-fun tp!400996 () Bool)

(declare-fun b!1412833 () Bool)

(assert (=> b!1412833 (= e!901955 (and (inv!18842 (h!19827 (innerList!4851 (xs!7518 (left!12321 (c!231995 objs!24)))))) e!901956 tp!400996))))

(assert (=> b!1412093 (= tp!400826 e!901955)))

(assert (= b!1412834 b!1412835))

(assert (= b!1412833 b!1412834))

(assert (= (and b!1412093 ((_ is Cons!14426) (innerList!4851 (xs!7518 (left!12321 (c!231995 objs!24)))))) b!1412833))

(declare-fun m!1594123 () Bool)

(assert (=> b!1412835 m!1594123))

(declare-fun m!1594125 () Bool)

(assert (=> b!1412834 m!1594125))

(declare-fun m!1594127 () Bool)

(assert (=> b!1412833 m!1594127))

(declare-fun b!1412839 () Bool)

(declare-fun b_free!34711 () Bool)

(declare-fun b_next!35415 () Bool)

(assert (=> b!1412839 (= b_free!34711 (not b_next!35415))))

(declare-fun tp!401000 () Bool)

(declare-fun b_and!94687 () Bool)

(assert (=> b!1412839 (= tp!401000 b_and!94687)))

(declare-fun b_free!34713 () Bool)

(declare-fun b_next!35417 () Bool)

(assert (=> b!1412839 (= b_free!34713 (not b_next!35417))))

(declare-fun t!123727 () Bool)

(declare-fun tb!73457 () Bool)

(assert (=> (and b!1412839 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123727) tb!73457))

(declare-fun result!89394 () Bool)

(assert (= result!89394 result!89286))

(assert (=> b!1412322 t!123727))

(declare-fun tb!73459 () Bool)

(declare-fun t!123729 () Bool)

(assert (=> (and b!1412839 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123729) tb!73459))

(declare-fun result!89396 () Bool)

(assert (= result!89396 result!89314))

(assert (=> b!1412503 t!123729))

(declare-fun tp!400999 () Bool)

(declare-fun b_and!94689 () Bool)

(assert (=> b!1412839 (= tp!400999 (and (=> t!123727 result!89394) (=> t!123729 result!89396) b_and!94689))))

(declare-fun b!1412837 () Bool)

(declare-fun e!901958 () Bool)

(declare-fun e!901959 () Bool)

(assert (=> b!1412837 (= e!901958 (and (inv!21 (value!81025 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3)))))))) e!901959))))

(declare-fun b!1412838 () Bool)

(declare-fun e!901960 () Bool)

(assert (=> b!1412838 (= e!901959 (and (inv!18832 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))))) (inv!18856 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))))) e!901960))))

(declare-fun b!1412836 () Bool)

(declare-fun tp!400998 () Bool)

(declare-fun e!901963 () Bool)

(assert (=> b!1412836 (= e!901963 (and (inv!18858 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))) e!901958 tp!400998))))

(assert (=> b!1412839 (= e!901960 (and tp!401000 tp!400999))))

(assert (=> b!1412120 (= tp!400850 e!901963)))

(assert (= b!1412838 b!1412839))

(assert (= b!1412837 b!1412838))

(assert (= b!1412836 b!1412837))

(assert (= (and b!1412120 ((_ is Cons!14424) (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))) b!1412836))

(declare-fun m!1594129 () Bool)

(assert (=> b!1412837 m!1594129))

(declare-fun m!1594131 () Bool)

(assert (=> b!1412838 m!1594131))

(declare-fun m!1594133 () Bool)

(assert (=> b!1412838 m!1594133))

(declare-fun m!1594135 () Bool)

(assert (=> b!1412836 m!1594135))

(declare-fun b!1412843 () Bool)

(declare-fun b_free!34715 () Bool)

(declare-fun b_next!35419 () Bool)

(assert (=> b!1412843 (= b_free!34715 (not b_next!35419))))

(declare-fun tp!401003 () Bool)

(declare-fun b_and!94691 () Bool)

(assert (=> b!1412843 (= tp!401003 b_and!94691)))

(declare-fun b_free!34717 () Bool)

(declare-fun b_next!35421 () Bool)

(assert (=> b!1412843 (= b_free!34717 (not b_next!35421))))

(declare-fun t!123731 () Bool)

(declare-fun tb!73461 () Bool)

(assert (=> (and b!1412843 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123731) tb!73461))

(declare-fun result!89398 () Bool)

(assert (= result!89398 result!89286))

(assert (=> b!1412322 t!123731))

(declare-fun t!123733 () Bool)

(declare-fun tb!73463 () Bool)

(assert (=> (and b!1412843 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123733) tb!73463))

(declare-fun result!89400 () Bool)

(assert (= result!89400 result!89314))

(assert (=> b!1412503 t!123733))

(declare-fun b_and!94693 () Bool)

(declare-fun tp!401002 () Bool)

(assert (=> b!1412843 (= tp!401002 (and (=> t!123731 result!89398) (=> t!123733 result!89400) b_and!94693))))

(declare-fun b!1412841 () Bool)

(declare-fun e!901964 () Bool)

(declare-fun e!901965 () Bool)

(assert (=> b!1412841 (= e!901964 (and (inv!21 (value!81025 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229)))))))) e!901965))))

(declare-fun b!1412842 () Bool)

(declare-fun e!901966 () Bool)

(assert (=> b!1412842 (= e!901965 (and (inv!18832 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))))) (inv!18856 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))))) e!901966))))

(declare-fun b!1412840 () Bool)

(declare-fun e!901969 () Bool)

(declare-fun tp!401001 () Bool)

(assert (=> b!1412840 (= e!901969 (and (inv!18858 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))) e!901964 tp!401001))))

(assert (=> b!1412843 (= e!901966 (and tp!401003 tp!401002))))

(assert (=> b!1412102 (= tp!400835 e!901969)))

(assert (= b!1412842 b!1412843))

(assert (= b!1412841 b!1412842))

(assert (= b!1412840 b!1412841))

(assert (= (and b!1412102 ((_ is Cons!14424) (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))) b!1412840))

(declare-fun m!1594137 () Bool)

(assert (=> b!1412841 m!1594137))

(declare-fun m!1594139 () Bool)

(assert (=> b!1412842 m!1594139))

(declare-fun m!1594141 () Bool)

(assert (=> b!1412842 m!1594141))

(declare-fun m!1594143 () Bool)

(assert (=> b!1412840 m!1594143))

(declare-fun b!1412846 () Bool)

(declare-fun e!901972 () Bool)

(declare-fun tp!401006 () Bool)

(assert (=> b!1412846 (= e!901972 (and (inv!18840 (c!231994 (tokens!1748 (h!19827 (t!123555 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) tp!401006))))

(declare-fun tp!401004 () Bool)

(declare-fun e!901971 () Bool)

(declare-fun b!1412845 () Bool)

(assert (=> b!1412845 (= e!901971 (and tp!401004 (inv!18839 (tokens!1748 (h!19827 (t!123555 (innerList!4851 (xs!7518 (c!231995 objs!24))))))) e!901972))))

(declare-fun tp!401005 () Bool)

(declare-fun b!1412844 () Bool)

(declare-fun e!901970 () Bool)

(assert (=> b!1412844 (= e!901970 (and (inv!18842 (h!19827 (t!123555 (innerList!4851 (xs!7518 (c!231995 objs!24)))))) e!901971 tp!401005))))

(assert (=> b!1412111 (= tp!400844 e!901970)))

(assert (= b!1412845 b!1412846))

(assert (= b!1412844 b!1412845))

(assert (= (and b!1412111 ((_ is Cons!14426) (t!123555 (innerList!4851 (xs!7518 (c!231995 objs!24)))))) b!1412844))

(declare-fun m!1594145 () Bool)

(assert (=> b!1412846 m!1594145))

(declare-fun m!1594147 () Bool)

(assert (=> b!1412845 m!1594147))

(declare-fun m!1594149 () Bool)

(assert (=> b!1412844 m!1594149))

(declare-fun b!1412849 () Bool)

(declare-fun e!901975 () Bool)

(declare-fun tp!401009 () Bool)

(assert (=> b!1412849 (= e!901975 (and (inv!18840 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (right!12651 (c!231995 objs!24)))))))) tp!401009))))

(declare-fun tp!401007 () Bool)

(declare-fun e!901974 () Bool)

(declare-fun b!1412848 () Bool)

(assert (=> b!1412848 (= e!901974 (and tp!401007 (inv!18839 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (right!12651 (c!231995 objs!24))))))) e!901975))))

(declare-fun b!1412847 () Bool)

(declare-fun e!901973 () Bool)

(declare-fun tp!401008 () Bool)

(assert (=> b!1412847 (= e!901973 (and (inv!18842 (h!19827 (innerList!4851 (xs!7518 (right!12651 (c!231995 objs!24)))))) e!901974 tp!401008))))

(assert (=> b!1412096 (= tp!400829 e!901973)))

(assert (= b!1412848 b!1412849))

(assert (= b!1412847 b!1412848))

(assert (= (and b!1412096 ((_ is Cons!14426) (innerList!4851 (xs!7518 (right!12651 (c!231995 objs!24)))))) b!1412847))

(declare-fun m!1594151 () Bool)

(assert (=> b!1412849 m!1594151))

(declare-fun m!1594153 () Bool)

(assert (=> b!1412848 m!1594153))

(declare-fun m!1594155 () Bool)

(assert (=> b!1412847 m!1594155))

(declare-fun b!1412853 () Bool)

(declare-fun b_free!34719 () Bool)

(declare-fun b_next!35423 () Bool)

(assert (=> b!1412853 (= b_free!34719 (not b_next!35423))))

(declare-fun tp!401012 () Bool)

(declare-fun b_and!94695 () Bool)

(assert (=> b!1412853 (= tp!401012 b_and!94695)))

(declare-fun b_free!34721 () Bool)

(declare-fun b_next!35425 () Bool)

(assert (=> b!1412853 (= b_free!34721 (not b_next!35425))))

(declare-fun t!123735 () Bool)

(declare-fun tb!73465 () Bool)

(assert (=> (and b!1412853 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123735) tb!73465))

(declare-fun result!89402 () Bool)

(assert (= result!89402 result!89286))

(assert (=> b!1412322 t!123735))

(declare-fun t!123737 () Bool)

(declare-fun tb!73467 () Bool)

(assert (=> (and b!1412853 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123737) tb!73467))

(declare-fun result!89404 () Bool)

(assert (= result!89404 result!89314))

(assert (=> b!1412503 t!123737))

(declare-fun b_and!94697 () Bool)

(declare-fun tp!401011 () Bool)

(assert (=> b!1412853 (= tp!401011 (and (=> t!123735 result!89402) (=> t!123737 result!89404) b_and!94697))))

(declare-fun b!1412851 () Bool)

(declare-fun e!901976 () Bool)

(declare-fun e!901977 () Bool)

(assert (=> b!1412851 (= e!901976 (and (inv!21 (value!81025 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3)))))))) e!901977))))

(declare-fun b!1412852 () Bool)

(declare-fun e!901978 () Bool)

(assert (=> b!1412852 (= e!901977 (and (inv!18832 (tag!2767 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))))) (inv!18856 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))))) e!901978))))

(declare-fun e!901981 () Bool)

(declare-fun tp!401010 () Bool)

(declare-fun b!1412850 () Bool)

(assert (=> b!1412850 (= e!901981 (and (inv!18858 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))) e!901976 tp!401010))))

(assert (=> b!1412853 (= e!901978 (and tp!401012 tp!401011))))

(assert (=> b!1412123 (= tp!400853 e!901981)))

(assert (= b!1412852 b!1412853))

(assert (= b!1412851 b!1412852))

(assert (= b!1412850 b!1412851))

(assert (= (and b!1412123 ((_ is Cons!14424) (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))) b!1412850))

(declare-fun m!1594157 () Bool)

(assert (=> b!1412851 m!1594157))

(declare-fun m!1594159 () Bool)

(assert (=> b!1412852 m!1594159))

(declare-fun m!1594161 () Bool)

(assert (=> b!1412852 m!1594161))

(declare-fun m!1594163 () Bool)

(assert (=> b!1412850 m!1594163))

(declare-fun tp!401013 () Bool)

(declare-fun e!901983 () Bool)

(declare-fun tp!401015 () Bool)

(declare-fun b!1412854 () Bool)

(assert (=> b!1412854 (= e!901983 (and (inv!18840 (left!12320 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) tp!401015 (inv!18840 (right!12650 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) tp!401013))))

(declare-fun b!1412856 () Bool)

(declare-fun e!901982 () Bool)

(declare-fun tp!401014 () Bool)

(assert (=> b!1412856 (= e!901982 tp!401014)))

(declare-fun b!1412855 () Bool)

(assert (=> b!1412855 (= e!901983 (and (inv!18854 (xs!7517 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) e!901982))))

(assert (=> b!1412113 (= tp!400845 (and (inv!18840 (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))) e!901983))))

(assert (= (and b!1412113 ((_ is Node!4790) (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) b!1412854))

(assert (= b!1412855 b!1412856))

(assert (= (and b!1412113 ((_ is Leaf!7239) (c!231994 (tokens!1748 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) b!1412855))

(declare-fun m!1594165 () Bool)

(assert (=> b!1412854 m!1594165))

(declare-fun m!1594167 () Bool)

(assert (=> b!1412854 m!1594167))

(declare-fun m!1594169 () Bool)

(assert (=> b!1412855 m!1594169))

(assert (=> b!1412113 m!1592595))

(declare-fun b!1412859 () Bool)

(declare-fun b_free!34723 () Bool)

(declare-fun b_next!35427 () Bool)

(assert (=> b!1412859 (= b_free!34723 (not b_next!35427))))

(declare-fun tp!401016 () Bool)

(declare-fun b_and!94699 () Bool)

(assert (=> b!1412859 (= tp!401016 b_and!94699)))

(declare-fun b_free!34725 () Bool)

(declare-fun b_next!35429 () Bool)

(assert (=> b!1412859 (= b_free!34725 (not b_next!35429))))

(declare-fun tb!73469 () Bool)

(declare-fun t!123739 () Bool)

(assert (=> (and b!1412859 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) t!123739) tb!73469))

(declare-fun result!89406 () Bool)

(assert (= result!89406 result!89286))

(assert (=> b!1412322 t!123739))

(declare-fun t!123741 () Bool)

(declare-fun tb!73471 () Bool)

(assert (=> (and b!1412859 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) t!123741) tb!73471))

(declare-fun result!89408 () Bool)

(assert (= result!89408 result!89314))

(assert (=> b!1412503 t!123741))

(declare-fun tp!401018 () Bool)

(declare-fun b_and!94701 () Bool)

(assert (=> b!1412859 (= tp!401018 (and (=> t!123739 result!89406) (=> t!123741 result!89408) b_and!94701))))

(declare-fun e!901985 () Bool)

(assert (=> b!1412859 (= e!901985 (and tp!401016 tp!401018))))

(declare-fun b!1412858 () Bool)

(declare-fun e!901986 () Bool)

(assert (=> b!1412858 (= e!901986 (and (inv!18832 (tag!2767 (h!19826 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) (inv!18856 (transformation!2505 (h!19826 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) e!901985))))

(declare-fun b!1412857 () Bool)

(declare-fun e!901987 () Bool)

(declare-fun tp!401017 () Bool)

(assert (=> b!1412857 (= e!901987 (and e!901986 tp!401017))))

(assert (=> b!1412112 (= tp!400843 e!901987)))

(assert (= b!1412858 b!1412859))

(assert (= b!1412857 b!1412858))

(assert (= (and b!1412112 ((_ is Cons!14425) (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24))))))) b!1412857))

(declare-fun m!1594171 () Bool)

(assert (=> b!1412858 m!1594171))

(declare-fun m!1594173 () Bool)

(assert (=> b!1412858 m!1594173))

(declare-fun b_lambda!44555 () Bool)

(assert (= b_lambda!44525 (or (and b!1411717 b_free!34621 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412126 b_free!34649 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412808 b_free!34709 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 sep!3)))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412853 b_free!34721 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412090 b_free!34641) (and b!1412839 b_free!34713 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412129 b_free!34653 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412794 b_free!34697 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412790 b_free!34693 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 acc!229)))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412859 b_free!34725 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412843 b_free!34717 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412805 b_free!34705 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412117 b_free!34645 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1412798 b_free!34701 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) (and b!1411714 b_free!34617 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))))) b_lambda!44555)))

(declare-fun b_lambda!44557 () Bool)

(assert (= b_lambda!44541 (or start!129140 b_lambda!44557)))

(declare-fun bs!339117 () Bool)

(declare-fun d!404195 () Bool)

(assert (= bs!339117 (and d!404195 start!129140)))

(assert (=> bs!339117 (= (dynLambda!6679 lambda!62403 (h!19827 (list!5655 (c!231995 objs!24)))) (usesJsonRules!0 (h!19827 (list!5655 (c!231995 objs!24)))))))

(declare-fun m!1594175 () Bool)

(assert (=> bs!339117 m!1594175))

(assert (=> b!1412644 d!404195))

(declare-fun b_lambda!44559 () Bool)

(assert (= b_lambda!44531 (or d!403537 b_lambda!44559)))

(declare-fun bs!339118 () Bool)

(declare-fun d!404197 () Bool)

(assert (= bs!339118 (and d!404197 d!403537)))

(assert (=> bs!339118 (= (dynLambda!6690 lambda!62414 (h!19825 (list!5656 (tokens!1748 acc!229)))) (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 acc!229) (h!19825 (list!5656 (tokens!1748 acc!229)))))))

(assert (=> bs!339118 m!1594015))

(assert (=> b!1412462 d!404197))

(declare-fun b_lambda!44561 () Bool)

(assert (= b_lambda!44533 (or start!129140 b_lambda!44561)))

(declare-fun bs!339119 () Bool)

(declare-fun d!404199 () Bool)

(assert (= bs!339119 (and d!404199 start!129140)))

(assert (=> bs!339119 (= (dynLambda!6679 lambda!62403 (h!19827 (t!123555 (list!5651 objs!24)))) (usesJsonRules!0 (h!19827 (t!123555 (list!5651 objs!24)))))))

(declare-fun m!1594177 () Bool)

(assert (=> bs!339119 m!1594177))

(assert (=> b!1412501 d!404199))

(declare-fun b_lambda!44563 () Bool)

(assert (= b_lambda!44539 (or d!403637 b_lambda!44563)))

(declare-fun bs!339120 () Bool)

(declare-fun d!404201 () Bool)

(assert (= bs!339120 (and d!404201 d!403637)))

(assert (=> bs!339120 (= (dynLambda!6690 lambda!62415 (h!19825 (list!5656 (tokens!1748 sep!3)))) (rulesProduceIndividualToken!1159 Lexer!2189 (rules!11012 sep!3) (h!19825 (list!5656 (tokens!1748 sep!3)))))))

(assert (=> bs!339120 m!1593973))

(assert (=> b!1412620 d!404201))

(declare-fun b_lambda!44565 () Bool)

(assert (= b_lambda!44535 (or (and b!1412129 b_free!34653 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 acc!229))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412853 b_free!34721 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412798 b_free!34701 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412839 b_free!34713 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 sep!3))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412090 b_free!34641 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 sep!3)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1411717 b_free!34621 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 sep!3)))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1411714 b_free!34617 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 acc!229)))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412859 b_free!34725 (= (toChars!3659 (transformation!2505 (h!19826 (rules!11012 (h!19827 (innerList!4851 (xs!7518 (c!231995 objs!24)))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412117 b_free!34645) (and b!1412805 b_free!34705 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (left!12320 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412790 b_free!34693 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 acc!229)))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412794 b_free!34697 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (t!123553 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412843 b_free!34717 (= (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (right!12650 (c!231994 (tokens!1748 acc!229))))))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412126 b_free!34649 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (rules!11012 sep!3))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) (and b!1412808 b_free!34709 (= (toChars!3659 (transformation!2505 (h!19826 (t!123554 (t!123554 (rules!11012 sep!3)))))) (toChars!3659 (transformation!2505 (rule!4268 (h!19825 (innerList!4850 (xs!7517 (c!231994 (tokens!1748 acc!229)))))))))) b_lambda!44565)))

(check-sat (not b_next!35417) (not b!1412091) (not b!1412748) (not b!1412338) (not d!403837) (not b!1412770) (not d!403727) (not b!1412833) (not b!1412253) (not b!1412851) (not b_next!35349) (not b!1412623) (not b!1412376) (not b_next!35421) (not b!1412451) (not d!403757) (not b!1412784) (not d!403845) (not b!1412761) (not b!1412298) (not d!403971) (not b_next!35409) (not d!403725) (not b!1412759) (not d!403781) (not b!1412616) (not d!404069) b_and!94681 (not b!1412506) (not b!1412337) (not d!403709) (not b!1412113) (not b!1412767) (not b!1412829) (not b!1412221) (not b!1412858) b_and!94613 (not b!1412814) (not d!403937) (not b!1412217) (not b!1412823) b_and!94675 (not b!1412222) (not b_next!35425) (not b_lambda!44517) (not b!1412374) (not b!1412509) b_and!94687 b_and!94699 (not b!1412191) (not b!1412328) (not b!1412831) (not b!1412812) (not b!1412210) (not b!1412218) (not d!404007) (not b!1412626) (not b!1412777) (not d!404097) (not d!404115) (not d!404173) (not b!1412837) b_and!94669 (not b!1412513) (not b_lambda!44557) (not b_next!35399) (not b!1412165) (not b_next!35413) (not b!1412621) (not b!1412239) (not d!404075) (not b!1412606) (not d!404127) (not b!1412804) (not b!1412373) (not b!1412291) (not b!1412779) (not d!404171) (not b!1412628) (not d!404175) (not d!404051) (not b!1412455) (not d!403931) (not b!1412121) (not b!1412322) (not d!404181) (not d!404123) (not b!1412769) (not b!1412763) (not d!404023) (not b!1412224) (not b!1412855) (not bs!339118) (not b!1412449) (not b!1412643) (not tb!73377) b_and!94547 (not b_next!35357) (not d!404065) (not b!1412625) (not b_next!35419) (not b!1412492) (not d!403719) (not b!1412638) (not b!1412296) (not b!1412799) (not b!1412375) b_and!94611 (not b!1412754) (not b!1412181) (not d!403803) (not bs!339120) (not b!1412821) (not b!1412454) (not b!1412450) b_and!94693 (not b!1412305) b_and!94679 (not d!403917) (not b_next!35405) (not b!1412624) (not b!1412636) (not b!1412182) (not b!1412227) (not b!1412290) (not b!1412225) (not b_next!35415) b_and!94695 (not d!404143) (not b!1412608) (not b!1412836) (not b!1412164) (not b_next!35429) (not d!403829) (not b!1412780) (not b!1412824) (not b!1412803) (not d!404047) b_and!94673 (not b_next!35355) (not b!1412856) (not b!1412603) (not d!404027) (not b_next!35347) (not d!403713) (not b!1412206) (not b!1412456) (not b!1412746) (not b!1412782) (not b!1412639) (not b!1412816) (not b!1412213) (not b!1412810) (not d!403835) (not b!1412502) (not b!1412503) b_and!94701 (not d!403761) (not b!1412817) (not d!403939) (not b!1412170) (not d!404141) (not d!403707) b_and!94677 (not d!404043) (not b!1412487) (not b!1412495) (not b!1412241) (not b!1412614) (not b!1412795) b_and!94617 (not d!404185) (not d!404109) (not b!1412641) (not b!1412789) (not b!1412100) (not b!1412838) b_and!94607 (not d!403915) (not b_next!35325) (not d!403919) (not b!1412617) (not b!1412323) (not b!1412820) (not b!1412250) (not b!1412806) (not b!1412303) (not b_next!35397) (not b!1412781) (not b!1412491) (not b!1412645) (not b_lambda!44555) (not b!1412845) (not tb!73353) (not b!1412511) (not b_next!35351) (not b_next!35319) (not d!404113) (not b!1412255) (not b!1412622) (not b!1412822) (not d!404177) (not b!1412371) (not b!1412254) (not b!1412791) b_and!94579 (not b!1412481) (not b!1412243) (not b!1412841) (not b!1412190) b_and!94571 b_and!94609 (not d!403801) (not b!1412846) (not b!1412847) (not b!1412504) (not d!403865) (not b!1412264) (not b_next!35323) (not b!1412857) b_and!94667 (not d!404019) (not b!1412604) (not b!1412510) (not b!1412611) (not b!1412453) (not b!1412828) (not b!1412832) (not d!404039) (not b!1412505) (not b_next!35403) (not d!403935) (not b!1412826) (not b!1412760) (not b!1412593) (not b!1412094) (not b!1412768) (not b!1412783) (not d!404031) (not d!404111) (not b!1412097) (not bs!339117) b_and!94689 (not b!1412842) (not d!403721) (not b!1412490) (not b!1412507) (not b!1412819) (not b!1412600) (not b!1412508) (not b_next!35427) (not b_next!35343) (not d!403765) (not b!1412484) (not b!1412764) b_and!94691 (not b!1412793) (not b!1412849) (not d!403791) (not b!1412854) (not d!403913) (not b!1412775) (not b!1412619) (not d!404129) (not d!403729) (not b!1412852) (not b!1412827) (not b!1412792) (not b_next!35423) (not b_next!35345) (not d!403723) (not b!1412336) (not b_lambda!44561) (not b!1412201) (not b!1412788) (not b!1412802) (not d!403767) (not d!404059) (not b!1412493) (not b!1412765) b_and!94615 (not b!1412251) (not b!1412778) (not b!1412834) (not d!404035) b_and!94685 (not b!1412825) (not b!1412797) (not b!1412807) (not b_next!35401) (not b!1412372) (not b!1412762) (not b_lambda!44565) (not b!1412811) (not b!1412488) (not bs!339119) (not b_next!35395) (not b_lambda!44559) (not b!1412366) (not b!1412757) (not b!1412809) (not b!1412844) (not b!1412448) (not b!1412796) (not d!403763) (not b!1412752) (not b!1412601) (not b!1412587) (not b!1412627) (not b!1412499) (not b!1412774) (not b!1412597) (not b!1412773) (not b!1412185) (not b!1412631) (not b!1412483) (not b!1412118) (not d!404099) (not b!1412850) (not d!403753) (not b!1412785) (not b!1412367) b_and!94575 (not b!1412590) (not b_next!35353) b_and!94683 (not d!404189) (not b!1412776) (not d!404193) (not b!1412835) (not b!1412452) (not b!1412747) (not b_lambda!44563) (not b!1412815) (not b!1412463) (not d!403799) b_and!94671 (not b!1412756) (not b_next!35407) (not b!1412216) (not b!1412215) (not b!1412605) b_and!94567 (not b!1412498) b_and!94543 (not b!1412634) (not d!404055) (not b!1412612) b_and!94697 (not b!1412494) (not b_next!35411) (not d!403811) (not b!1412848) (not b!1412609) (not b!1412755) (not d!403843) (not d!404179) (not b!1412596) (not b!1412512) (not b!1412496) (not b!1412219) (not b!1412252) (not b!1412818) (not b!1412220) (not b!1412288) (not b!1412613) (not b!1412840) (not d!403909) (not b_next!35321) (not b!1412813) (not b!1412633) (not b!1412830) (not b!1412208) (not d!403755))
(check-sat b_and!94681 b_and!94613 b_and!94611 (not b_next!35347) b_and!94617 (not b_next!35397) (not b_next!35403) b_and!94689 b_and!94691 (not b_next!35321) (not b_next!35417) (not b_next!35349) (not b_next!35421) (not b_next!35409) b_and!94675 (not b_next!35425) b_and!94687 b_and!94699 b_and!94669 (not b_next!35399) (not b_next!35413) (not b_next!35419) b_and!94547 (not b_next!35357) b_and!94695 b_and!94693 b_and!94679 (not b_next!35405) (not b_next!35429) (not b_next!35415) b_and!94673 (not b_next!35355) b_and!94701 b_and!94677 b_and!94607 (not b_next!35325) (not b_next!35319) (not b_next!35351) b_and!94579 b_and!94571 b_and!94609 (not b_next!35323) b_and!94667 (not b_next!35343) (not b_next!35427) (not b_next!35423) (not b_next!35345) b_and!94685 b_and!94615 (not b_next!35395) (not b_next!35401) b_and!94575 (not b_next!35353) b_and!94683 b_and!94671 (not b_next!35407) b_and!94567 b_and!94543 b_and!94697 (not b_next!35411))
