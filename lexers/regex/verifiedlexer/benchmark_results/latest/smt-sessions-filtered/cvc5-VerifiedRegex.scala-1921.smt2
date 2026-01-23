; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94836 () Bool)

(assert start!94836)

(declare-fun bs!259533 () Bool)

(declare-fun b!1102006 () Bool)

(assert (= bs!259533 (and b!1102006 start!94836)))

(declare-fun lambda!43484 () Int)

(declare-fun lambda!43483 () Int)

(assert (=> bs!259533 (not (= lambda!43484 lambda!43483))))

(declare-fun b!1102023 () Bool)

(declare-fun e!698024 () Bool)

(assert (=> b!1102023 (= e!698024 true)))

(declare-fun b!1102022 () Bool)

(declare-fun e!698023 () Bool)

(assert (=> b!1102022 (= e!698023 e!698024)))

(assert (=> b!1102006 e!698023))

(assert (= b!1102022 b!1102023))

(assert (= b!1102006 b!1102022))

(declare-fun lambda!43485 () Int)

(assert (=> bs!259533 (not (= lambda!43485 lambda!43483))))

(assert (=> b!1102006 (not (= lambda!43485 lambda!43484))))

(declare-fun b!1102025 () Bool)

(declare-fun e!698026 () Bool)

(assert (=> b!1102025 (= e!698026 true)))

(declare-fun b!1102024 () Bool)

(declare-fun e!698025 () Bool)

(assert (=> b!1102024 (= e!698025 e!698026)))

(assert (=> b!1102006 e!698025))

(assert (= b!1102024 b!1102025))

(assert (= b!1102006 b!1102024))

(declare-fun lambda!43486 () Int)

(assert (=> bs!259533 (not (= lambda!43486 lambda!43483))))

(assert (=> b!1102006 (not (= lambda!43486 lambda!43484))))

(assert (=> b!1102006 (not (= lambda!43486 lambda!43485))))

(declare-fun b!1102027 () Bool)

(declare-fun e!698028 () Bool)

(assert (=> b!1102027 (= e!698028 true)))

(declare-fun b!1102026 () Bool)

(declare-fun e!698027 () Bool)

(assert (=> b!1102026 (= e!698027 e!698028)))

(assert (=> b!1102006 e!698027))

(assert (= b!1102026 b!1102027))

(assert (= b!1102006 b!1102026))

(declare-fun b!1102000 () Bool)

(declare-fun e!698017 () Bool)

(declare-fun e!698014 () Bool)

(assert (=> b!1102000 (= e!698017 e!698014)))

(declare-fun res!488696 () Bool)

(assert (=> b!1102000 (=> res!488696 e!698014)))

(declare-fun lt!372466 () Bool)

(assert (=> b!1102000 (= res!488696 lt!372466)))

(declare-datatypes ((Unit!16253 0))(
  ( (Unit!16254) )
))
(declare-fun lt!372471 () Unit!16253)

(declare-fun e!698013 () Unit!16253)

(assert (=> b!1102000 (= lt!372471 e!698013)))

(declare-fun c!187052 () Bool)

(assert (=> b!1102000 (= c!187052 lt!372466)))

(declare-datatypes ((List!10667 0))(
  ( (Nil!10651) (Cons!10651 (h!16052 (_ BitVec 16)) (t!104119 List!10667)) )
))
(declare-datatypes ((TokenValue!1897 0))(
  ( (FloatLiteralValue!3794 (text!13724 List!10667)) (TokenValueExt!1896 (__x!7479 Int)) (Broken!9485 (value!60112 List!10667)) (Object!1912) (End!1897) (Def!1897) (Underscore!1897) (Match!1897) (Else!1897) (Error!1897) (Case!1897) (If!1897) (Extends!1897) (Abstract!1897) (Class!1897) (Val!1897) (DelimiterValue!3794 (del!1957 List!10667)) (KeywordValue!1903 (value!60113 List!10667)) (CommentValue!3794 (value!60114 List!10667)) (WhitespaceValue!3794 (value!60115 List!10667)) (IndentationValue!1897 (value!60116 List!10667)) (String!13056) (Int32!1897) (Broken!9486 (value!60117 List!10667)) (Boolean!1898) (Unit!16255) (OperatorValue!1900 (op!1957 List!10667)) (IdentifierValue!3794 (value!60118 List!10667)) (IdentifierValue!3795 (value!60119 List!10667)) (WhitespaceValue!3795 (value!60120 List!10667)) (True!3794) (False!3794) (Broken!9487 (value!60121 List!10667)) (Broken!9488 (value!60122 List!10667)) (True!3795) (RightBrace!1897) (RightBracket!1897) (Colon!1897) (Null!1897) (Comma!1897) (LeftBracket!1897) (False!3795) (LeftBrace!1897) (ImaginaryLiteralValue!1897 (text!13725 List!10667)) (StringLiteralValue!5691 (value!60123 List!10667)) (EOFValue!1897 (value!60124 List!10667)) (IdentValue!1897 (value!60125 List!10667)) (DelimiterValue!3795 (value!60126 List!10667)) (DedentValue!1897 (value!60127 List!10667)) (NewLineValue!1897 (value!60128 List!10667)) (IntegerValue!5691 (value!60129 (_ BitVec 32)) (text!13726 List!10667)) (IntegerValue!5692 (value!60130 Int) (text!13727 List!10667)) (Times!1897) (Or!1897) (Equal!1897) (Minus!1897) (Broken!9489 (value!60131 List!10667)) (And!1897) (Div!1897) (LessEqual!1897) (Mod!1897) (Concat!4997) (Not!1897) (Plus!1897) (SpaceValue!1897 (value!60132 List!10667)) (IntegerValue!5693 (value!60133 Int) (text!13728 List!10667)) (StringLiteralValue!5692 (text!13729 List!10667)) (FloatLiteralValue!3795 (text!13730 List!10667)) (BytesLiteralValue!1897 (value!60134 List!10667)) (CommentValue!3795 (value!60135 List!10667)) (StringLiteralValue!5693 (value!60136 List!10667)) (ErrorTokenValue!1897 (msg!1958 List!10667)) )
))
(declare-datatypes ((Regex!3100 0))(
  ( (ElementMatch!3100 (c!187056 (_ BitVec 16))) (Concat!4998 (regOne!6712 Regex!3100) (regTwo!6712 Regex!3100)) (EmptyExpr!3100) (Star!3100 (reg!3429 Regex!3100)) (EmptyLang!3100) (Union!3100 (regOne!6713 Regex!3100) (regTwo!6713 Regex!3100)) )
))
(declare-datatypes ((String!13057 0))(
  ( (String!13058 (value!60137 String)) )
))
(declare-datatypes ((IArray!6645 0))(
  ( (IArray!6646 (innerList!3380 List!10667)) )
))
(declare-datatypes ((Conc!3320 0))(
  ( (Node!3320 (left!9217 Conc!3320) (right!9547 Conc!3320) (csize!6870 Int) (cheight!3531 Int)) (Leaf!5242 (xs!6013 IArray!6645) (csize!6871 Int)) (Empty!3320) )
))
(declare-datatypes ((BalanceConc!6654 0))(
  ( (BalanceConc!6655 (c!187057 Conc!3320)) )
))
(declare-datatypes ((TokenValueInjection!3494 0))(
  ( (TokenValueInjection!3495 (toValue!2908 Int) (toChars!2767 Int)) )
))
(declare-datatypes ((Rule!3462 0))(
  ( (Rule!3463 (regex!1831 Regex!3100) (tag!2093 String!13057) (isSeparator!1831 Bool) (transformation!1831 TokenValueInjection!3494)) )
))
(declare-datatypes ((Token!3328 0))(
  ( (Token!3329 (value!60138 TokenValue!1897) (rule!3254 Rule!3462) (size!8271 Int) (originalCharacters!2387 List!10667)) )
))
(declare-datatypes ((List!10668 0))(
  ( (Nil!10652) (Cons!10652 (h!16053 Token!3328) (t!104120 List!10668)) )
))
(declare-datatypes ((IArray!6647 0))(
  ( (IArray!6648 (innerList!3381 List!10668)) )
))
(declare-datatypes ((Conc!3321 0))(
  ( (Node!3321 (left!9218 Conc!3321) (right!9548 Conc!3321) (csize!6872 Int) (cheight!3532 Int)) (Leaf!5243 (xs!6014 IArray!6647) (csize!6873 Int)) (Empty!3321) )
))
(declare-datatypes ((List!10669 0))(
  ( (Nil!10653) (Cons!10653 (h!16054 Rule!3462) (t!104121 List!10669)) )
))
(declare-datatypes ((BalanceConc!6656 0))(
  ( (BalanceConc!6657 (c!187058 Conc!3321)) )
))
(declare-datatypes ((PrintableTokens!378 0))(
  ( (PrintableTokens!379 (rules!9118 List!10669) (tokens!1390 BalanceConc!6656)) )
))
(declare-datatypes ((tuple2!11788 0))(
  ( (tuple2!11789 (_1!6720 Int) (_2!6720 PrintableTokens!378)) )
))
(declare-datatypes ((List!10670 0))(
  ( (Nil!10654) (Cons!10654 (h!16055 tuple2!11788) (t!104122 List!10670)) )
))
(declare-datatypes ((IArray!6649 0))(
  ( (IArray!6650 (innerList!3382 List!10670)) )
))
(declare-datatypes ((Conc!3322 0))(
  ( (Node!3322 (left!9219 Conc!3322) (right!9549 Conc!3322) (csize!6874 Int) (cheight!3533 Int)) (Leaf!5244 (xs!6015 IArray!6649) (csize!6875 Int)) (Empty!3322) )
))
(declare-datatypes ((BalanceConc!6658 0))(
  ( (BalanceConc!6659 (c!187059 Conc!3322)) )
))
(declare-fun lt!372468 () BalanceConc!6658)

(declare-fun lt!372476 () tuple2!11788)

(declare-fun contains!1882 (BalanceConc!6658 tuple2!11788) Bool)

(assert (=> b!1102000 (= lt!372466 (contains!1882 lt!372468 lt!372476))))

(declare-fun b!1102001 () Bool)

(declare-fun e!698015 () Unit!16253)

(declare-fun Unit!16256 () Unit!16253)

(assert (=> b!1102001 (= e!698015 Unit!16256)))

(declare-fun b!1102002 () Bool)

(declare-fun e!698010 () Unit!16253)

(declare-fun err!2673 () Unit!16253)

(assert (=> b!1102002 (= e!698010 err!2673)))

(declare-fun lt!372469 () Unit!16253)

(declare-fun objs!8 () BalanceConc!6658)

(declare-fun forallContained!525 (List!10670 Int tuple2!11788) Unit!16253)

(declare-fun list!3841 (BalanceConc!6658) List!10670)

(assert (=> b!1102002 (= lt!372469 (forallContained!525 (list!3841 objs!8) lambda!43484 lt!372476))))

(assert (=> b!1102002 true))

(declare-fun b!1102003 () Bool)

(declare-fun Unit!16257 () Unit!16253)

(assert (=> b!1102003 (= e!698013 Unit!16257)))

(declare-fun b!1102004 () Bool)

(declare-fun e!698012 () Bool)

(assert (=> b!1102004 (= e!698012 (not e!698017))))

(declare-fun res!488699 () Bool)

(assert (=> b!1102004 (=> res!488699 e!698017)))

(declare-fun lt!372481 () BalanceConc!6658)

(declare-fun lt!372470 () Int)

(declare-fun size!8272 (BalanceConc!6658) Int)

(assert (=> b!1102004 (= res!488699 (>= (size!8272 lt!372481) lt!372470))))

(declare-fun e!698018 () Bool)

(assert (=> b!1102004 e!698018))

(declare-fun res!488694 () Bool)

(assert (=> b!1102004 (=> res!488694 e!698018)))

(declare-fun lt!372472 () List!10670)

(declare-fun isEmpty!6696 (List!10670) Bool)

(assert (=> b!1102004 (= res!488694 (isEmpty!6696 lt!372472))))

(declare-fun lt!372475 () Unit!16253)

(declare-fun lemmaNotForallFilterShorter!58 (List!10670 Int) Unit!16253)

(assert (=> b!1102004 (= lt!372475 (lemmaNotForallFilterShorter!58 lt!372472 lambda!43484))))

(assert (=> b!1102004 (= lt!372472 (list!3841 objs!8))))

(declare-fun lt!372467 () Unit!16253)

(assert (=> b!1102004 (= lt!372467 e!698010)))

(declare-fun c!187053 () Bool)

(declare-fun forall!2469 (BalanceConc!6658 Int) Bool)

(assert (=> b!1102004 (= c!187053 (forall!2469 objs!8 lambda!43484))))

(declare-fun b!1102005 () Bool)

(declare-fun e!698016 () Bool)

(declare-fun e!698009 () Bool)

(assert (=> b!1102005 (= e!698016 e!698009)))

(declare-fun res!488700 () Bool)

(assert (=> b!1102005 (=> (not res!488700) (not e!698009))))

(assert (=> b!1102005 (= res!488700 (> lt!372470 1))))

(assert (=> b!1102005 (= lt!372470 (size!8272 objs!8))))

(declare-fun e!698007 () Bool)

(assert (=> b!1102006 (= e!698009 e!698007)))

(declare-fun res!488697 () Bool)

(assert (=> b!1102006 (=> (not res!488697) (not e!698007))))

(assert (=> b!1102006 (= res!488697 (contains!1882 objs!8 lt!372476))))

(declare-fun filter!358 (BalanceConc!6658 Int) BalanceConc!6658)

(assert (=> b!1102006 (= lt!372468 (filter!358 objs!8 lambda!43486))))

(declare-fun lt!372480 () BalanceConc!6658)

(assert (=> b!1102006 (= lt!372480 (filter!358 objs!8 lambda!43485))))

(assert (=> b!1102006 (= lt!372481 (filter!358 objs!8 lambda!43484))))

(declare-fun apply!2156 (BalanceConc!6658 Int) tuple2!11788)

(assert (=> b!1102006 (= lt!372476 (apply!2156 objs!8 (ite (>= lt!372470 0) (div lt!372470 2) (- (div (- lt!372470) 2)))))))

(declare-fun b!1102007 () Bool)

(declare-fun e!698008 () Bool)

(declare-fun tp!327113 () Bool)

(declare-fun inv!13694 (Conc!3322) Bool)

(assert (=> b!1102007 (= e!698008 (and (inv!13694 (c!187059 objs!8)) tp!327113))))

(declare-fun b!1102008 () Bool)

(declare-fun err!2671 () Unit!16253)

(assert (=> b!1102008 (= e!698015 err!2671)))

(declare-fun lt!372478 () Unit!16253)

(assert (=> b!1102008 (= lt!372478 (forallContained!525 (list!3841 lt!372481) lambda!43484 lt!372476))))

(assert (=> b!1102008 true))

(declare-fun b!1102010 () Bool)

(declare-fun forall!2470 (List!10670 Int) Bool)

(assert (=> b!1102010 (= e!698014 (not (forall!2470 lt!372472 lambda!43486)))))

(declare-fun lt!372482 () Unit!16253)

(declare-fun e!698011 () Unit!16253)

(assert (=> b!1102010 (= lt!372482 e!698011)))

(declare-fun c!187055 () Bool)

(assert (=> b!1102010 (= c!187055 (forall!2469 objs!8 lambda!43486))))

(declare-fun b!1102011 () Bool)

(declare-fun err!2672 () Unit!16253)

(assert (=> b!1102011 (= e!698013 err!2672)))

(declare-fun lt!372474 () Unit!16253)

(assert (=> b!1102011 (= lt!372474 (forallContained!525 (list!3841 lt!372468) lambda!43486 lt!372476))))

(assert (=> b!1102011 true))

(declare-fun b!1102012 () Bool)

(declare-fun err!2670 () Unit!16253)

(assert (=> b!1102012 (= e!698011 err!2670)))

(declare-fun lt!372473 () Unit!16253)

(assert (=> b!1102012 (= lt!372473 (forallContained!525 lt!372472 lambda!43486 lt!372476))))

(assert (=> b!1102012 true))

(declare-fun b!1102013 () Bool)

(declare-fun Unit!16258 () Unit!16253)

(assert (=> b!1102013 (= e!698011 Unit!16258)))

(declare-fun b!1102009 () Bool)

(declare-fun Unit!16259 () Unit!16253)

(assert (=> b!1102009 (= e!698010 Unit!16259)))

(declare-fun res!488695 () Bool)

(assert (=> start!94836 (=> (not res!488695) (not e!698016))))

(assert (=> start!94836 (= res!488695 (forall!2469 objs!8 lambda!43483))))

(assert (=> start!94836 e!698016))

(declare-fun inv!13695 (BalanceConc!6658) Bool)

(assert (=> start!94836 (and (inv!13695 objs!8) e!698008)))

(declare-fun b!1102014 () Bool)

(declare-fun size!8273 (List!10670) Int)

(declare-fun filter!359 (List!10670 Int) List!10670)

(assert (=> b!1102014 (= e!698018 (< (size!8273 (filter!359 lt!372472 lambda!43484)) (size!8273 lt!372472)))))

(declare-fun b!1102015 () Bool)

(assert (=> b!1102015 (= e!698007 e!698012)))

(declare-fun res!488698 () Bool)

(assert (=> b!1102015 (=> (not res!488698) (not e!698012))))

(declare-fun lt!372477 () Bool)

(assert (=> b!1102015 (= res!488698 (not lt!372477))))

(declare-fun lt!372479 () Unit!16253)

(assert (=> b!1102015 (= lt!372479 e!698015)))

(declare-fun c!187054 () Bool)

(assert (=> b!1102015 (= c!187054 lt!372477)))

(assert (=> b!1102015 (= lt!372477 (contains!1882 lt!372481 lt!372476))))

(assert (= (and start!94836 res!488695) b!1102005))

(assert (= (and b!1102005 res!488700) b!1102006))

(assert (= (and b!1102006 res!488697) b!1102015))

(assert (= (and b!1102015 c!187054) b!1102008))

(assert (= (and b!1102015 (not c!187054)) b!1102001))

(assert (= (and b!1102015 res!488698) b!1102004))

(assert (= (and b!1102004 c!187053) b!1102002))

(assert (= (and b!1102004 (not c!187053)) b!1102009))

(assert (= (and b!1102004 (not res!488694)) b!1102014))

(assert (= (and b!1102004 (not res!488699)) b!1102000))

(assert (= (and b!1102000 c!187052) b!1102011))

(assert (= (and b!1102000 (not c!187052)) b!1102003))

(assert (= (and b!1102000 (not res!488696)) b!1102010))

(assert (= (and b!1102010 c!187055) b!1102012))

(assert (= (and b!1102010 (not c!187055)) b!1102013))

(assert (= start!94836 b!1102007))

(declare-fun m!1257967 () Bool)

(assert (=> b!1102005 m!1257967))

(declare-fun m!1257969 () Bool)

(assert (=> start!94836 m!1257969))

(declare-fun m!1257971 () Bool)

(assert (=> start!94836 m!1257971))

(declare-fun m!1257973 () Bool)

(assert (=> b!1102000 m!1257973))

(declare-fun m!1257975 () Bool)

(assert (=> b!1102004 m!1257975))

(declare-fun m!1257977 () Bool)

(assert (=> b!1102004 m!1257977))

(declare-fun m!1257979 () Bool)

(assert (=> b!1102004 m!1257979))

(declare-fun m!1257981 () Bool)

(assert (=> b!1102004 m!1257981))

(declare-fun m!1257983 () Bool)

(assert (=> b!1102004 m!1257983))

(declare-fun m!1257985 () Bool)

(assert (=> b!1102015 m!1257985))

(declare-fun m!1257987 () Bool)

(assert (=> b!1102011 m!1257987))

(assert (=> b!1102011 m!1257987))

(declare-fun m!1257989 () Bool)

(assert (=> b!1102011 m!1257989))

(assert (=> b!1102002 m!1257975))

(assert (=> b!1102002 m!1257975))

(declare-fun m!1257991 () Bool)

(assert (=> b!1102002 m!1257991))

(declare-fun m!1257993 () Bool)

(assert (=> b!1102008 m!1257993))

(assert (=> b!1102008 m!1257993))

(declare-fun m!1257995 () Bool)

(assert (=> b!1102008 m!1257995))

(declare-fun m!1257997 () Bool)

(assert (=> b!1102006 m!1257997))

(declare-fun m!1257999 () Bool)

(assert (=> b!1102006 m!1257999))

(declare-fun m!1258001 () Bool)

(assert (=> b!1102006 m!1258001))

(declare-fun m!1258003 () Bool)

(assert (=> b!1102006 m!1258003))

(declare-fun m!1258005 () Bool)

(assert (=> b!1102006 m!1258005))

(declare-fun m!1258007 () Bool)

(assert (=> b!1102012 m!1258007))

(declare-fun m!1258009 () Bool)

(assert (=> b!1102010 m!1258009))

(declare-fun m!1258011 () Bool)

(assert (=> b!1102010 m!1258011))

(declare-fun m!1258013 () Bool)

(assert (=> b!1102014 m!1258013))

(assert (=> b!1102014 m!1258013))

(declare-fun m!1258015 () Bool)

(assert (=> b!1102014 m!1258015))

(declare-fun m!1258017 () Bool)

(assert (=> b!1102014 m!1258017))

(declare-fun m!1258019 () Bool)

(assert (=> b!1102007 m!1258019))

(push 1)

(assert (not b!1102008))

(assert (not b!1102015))

(assert (not b!1102022))

(assert (not b!1102004))

(assert (not b!1102024))

(assert (not b!1102002))

(assert (not b!1102006))

(assert (not b!1102005))

(assert (not b!1102026))

(assert (not b!1102010))

(assert (not b!1102011))

(assert (not b!1102027))

(assert (not start!94836))

(assert (not b!1102012))

(assert (not b!1102025))

(assert (not b!1102007))

(assert (not b!1102023))

(assert (not b!1102000))

(assert (not b!1102014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311700 () Bool)

(declare-fun c!187078 () Bool)

(assert (=> d!311700 (= c!187078 (is-Node!3322 (c!187059 objs!8)))))

(declare-fun e!698079 () Bool)

(assert (=> d!311700 (= (inv!13694 (c!187059 objs!8)) e!698079)))

(declare-fun b!1102094 () Bool)

(declare-fun inv!13698 (Conc!3322) Bool)

(assert (=> b!1102094 (= e!698079 (inv!13698 (c!187059 objs!8)))))

(declare-fun b!1102095 () Bool)

(declare-fun e!698080 () Bool)

(assert (=> b!1102095 (= e!698079 e!698080)))

(declare-fun res!488724 () Bool)

(assert (=> b!1102095 (= res!488724 (not (is-Leaf!5244 (c!187059 objs!8))))))

(assert (=> b!1102095 (=> res!488724 e!698080)))

(declare-fun b!1102096 () Bool)

(declare-fun inv!13699 (Conc!3322) Bool)

(assert (=> b!1102096 (= e!698080 (inv!13699 (c!187059 objs!8)))))

(assert (= (and d!311700 c!187078) b!1102094))

(assert (= (and d!311700 (not c!187078)) b!1102095))

(assert (= (and b!1102095 (not res!488724)) b!1102096))

(declare-fun m!1258075 () Bool)

(assert (=> b!1102094 m!1258075))

(declare-fun m!1258077 () Bool)

(assert (=> b!1102096 m!1258077))

(assert (=> b!1102007 d!311700))

(declare-fun d!311702 () Bool)

(declare-fun lt!372536 () Bool)

(declare-fun contains!1884 (List!10670 tuple2!11788) Bool)

(assert (=> d!311702 (= lt!372536 (contains!1884 (list!3841 objs!8) lt!372476))))

(declare-fun contains!1885 (Conc!3322 tuple2!11788) Bool)

(assert (=> d!311702 (= lt!372536 (contains!1885 (c!187059 objs!8) lt!372476))))

(assert (=> d!311702 (= (contains!1882 objs!8 lt!372476) lt!372536)))

(declare-fun bs!259535 () Bool)

(assert (= bs!259535 d!311702))

(assert (=> bs!259535 m!1257975))

(assert (=> bs!259535 m!1257975))

(declare-fun m!1258079 () Bool)

(assert (=> bs!259535 m!1258079))

(declare-fun m!1258081 () Bool)

(assert (=> bs!259535 m!1258081))

(assert (=> b!1102006 d!311702))

(declare-fun d!311704 () Bool)

(declare-fun e!698089 () Bool)

(assert (=> d!311704 e!698089))

(declare-fun res!488733 () Bool)

(assert (=> d!311704 (=> (not res!488733) (not e!698089))))

(declare-fun isBalanced!919 (Conc!3322) Bool)

(declare-fun filter!362 (Conc!3322 Int) Conc!3322)

(assert (=> d!311704 (= res!488733 (isBalanced!919 (filter!362 (c!187059 objs!8) lambda!43484)))))

(declare-fun lt!372539 () BalanceConc!6658)

(assert (=> d!311704 (= lt!372539 (BalanceConc!6659 (filter!362 (c!187059 objs!8) lambda!43484)))))

(assert (=> d!311704 (= (filter!358 objs!8 lambda!43484) lt!372539)))

(declare-fun b!1102105 () Bool)

(assert (=> b!1102105 (= e!698089 (= (list!3841 lt!372539) (filter!359 (list!3841 objs!8) lambda!43484)))))

(assert (= (and d!311704 res!488733) b!1102105))

(declare-fun m!1258087 () Bool)

(assert (=> d!311704 m!1258087))

(assert (=> d!311704 m!1258087))

(declare-fun m!1258089 () Bool)

(assert (=> d!311704 m!1258089))

(declare-fun m!1258091 () Bool)

(assert (=> b!1102105 m!1258091))

(assert (=> b!1102105 m!1257975))

(assert (=> b!1102105 m!1257975))

(declare-fun m!1258093 () Bool)

(assert (=> b!1102105 m!1258093))

(assert (=> b!1102006 d!311704))

(declare-fun d!311710 () Bool)

(declare-fun lt!372544 () tuple2!11788)

(declare-fun apply!2158 (List!10670 Int) tuple2!11788)

(assert (=> d!311710 (= lt!372544 (apply!2158 (list!3841 objs!8) (ite (>= lt!372470 0) (div lt!372470 2) (- (div (- lt!372470) 2)))))))

(declare-fun apply!2159 (Conc!3322 Int) tuple2!11788)

(assert (=> d!311710 (= lt!372544 (apply!2159 (c!187059 objs!8) (ite (>= lt!372470 0) (div lt!372470 2) (- (div (- lt!372470) 2)))))))

(declare-fun e!698092 () Bool)

(assert (=> d!311710 e!698092))

(declare-fun res!488736 () Bool)

(assert (=> d!311710 (=> (not res!488736) (not e!698092))))

(assert (=> d!311710 (= res!488736 (<= 0 (ite (>= lt!372470 0) (div lt!372470 2) (- (div (- lt!372470) 2)))))))

(assert (=> d!311710 (= (apply!2156 objs!8 (ite (>= lt!372470 0) (div lt!372470 2) (- (div (- lt!372470) 2)))) lt!372544)))

(declare-fun b!1102108 () Bool)

(assert (=> b!1102108 (= e!698092 (< (ite (>= lt!372470 0) (div lt!372470 2) (- (div (- lt!372470) 2))) (size!8272 objs!8)))))

(assert (= (and d!311710 res!488736) b!1102108))

(assert (=> d!311710 m!1257975))

(assert (=> d!311710 m!1257975))

(declare-fun m!1258095 () Bool)

(assert (=> d!311710 m!1258095))

(declare-fun m!1258097 () Bool)

(assert (=> d!311710 m!1258097))

(assert (=> b!1102108 m!1257967))

(assert (=> b!1102006 d!311710))

(declare-fun d!311712 () Bool)

(declare-fun e!698093 () Bool)

(assert (=> d!311712 e!698093))

(declare-fun res!488737 () Bool)

(assert (=> d!311712 (=> (not res!488737) (not e!698093))))

(assert (=> d!311712 (= res!488737 (isBalanced!919 (filter!362 (c!187059 objs!8) lambda!43485)))))

(declare-fun lt!372546 () BalanceConc!6658)

(assert (=> d!311712 (= lt!372546 (BalanceConc!6659 (filter!362 (c!187059 objs!8) lambda!43485)))))

(assert (=> d!311712 (= (filter!358 objs!8 lambda!43485) lt!372546)))

(declare-fun b!1102109 () Bool)

(assert (=> b!1102109 (= e!698093 (= (list!3841 lt!372546) (filter!359 (list!3841 objs!8) lambda!43485)))))

(assert (= (and d!311712 res!488737) b!1102109))

(declare-fun m!1258103 () Bool)

(assert (=> d!311712 m!1258103))

(assert (=> d!311712 m!1258103))

(declare-fun m!1258105 () Bool)

(assert (=> d!311712 m!1258105))

(declare-fun m!1258107 () Bool)

(assert (=> b!1102109 m!1258107))

(assert (=> b!1102109 m!1257975))

(assert (=> b!1102109 m!1257975))

(declare-fun m!1258109 () Bool)

(assert (=> b!1102109 m!1258109))

(assert (=> b!1102006 d!311712))

(declare-fun d!311716 () Bool)

(declare-fun e!698094 () Bool)

(assert (=> d!311716 e!698094))

(declare-fun res!488738 () Bool)

(assert (=> d!311716 (=> (not res!488738) (not e!698094))))

(assert (=> d!311716 (= res!488738 (isBalanced!919 (filter!362 (c!187059 objs!8) lambda!43486)))))

(declare-fun lt!372547 () BalanceConc!6658)

(assert (=> d!311716 (= lt!372547 (BalanceConc!6659 (filter!362 (c!187059 objs!8) lambda!43486)))))

(assert (=> d!311716 (= (filter!358 objs!8 lambda!43486) lt!372547)))

(declare-fun b!1102110 () Bool)

(assert (=> b!1102110 (= e!698094 (= (list!3841 lt!372547) (filter!359 (list!3841 objs!8) lambda!43486)))))

(assert (= (and d!311716 res!488738) b!1102110))

(declare-fun m!1258111 () Bool)

(assert (=> d!311716 m!1258111))

(assert (=> d!311716 m!1258111))

(declare-fun m!1258113 () Bool)

(assert (=> d!311716 m!1258113))

(declare-fun m!1258115 () Bool)

(assert (=> b!1102110 m!1258115))

(assert (=> b!1102110 m!1257975))

(assert (=> b!1102110 m!1257975))

(declare-fun m!1258117 () Bool)

(assert (=> b!1102110 m!1258117))

(assert (=> b!1102006 d!311716))

(declare-fun d!311718 () Bool)

(declare-fun res!488743 () Bool)

(declare-fun e!698099 () Bool)

(assert (=> d!311718 (=> res!488743 e!698099)))

(assert (=> d!311718 (= res!488743 (is-Nil!10654 lt!372472))))

(assert (=> d!311718 (= (forall!2470 lt!372472 lambda!43486) e!698099)))

(declare-fun b!1102115 () Bool)

(declare-fun e!698100 () Bool)

(assert (=> b!1102115 (= e!698099 e!698100)))

(declare-fun res!488744 () Bool)

(assert (=> b!1102115 (=> (not res!488744) (not e!698100))))

(declare-fun dynLambda!4694 (Int tuple2!11788) Bool)

(assert (=> b!1102115 (= res!488744 (dynLambda!4694 lambda!43486 (h!16055 lt!372472)))))

(declare-fun b!1102116 () Bool)

(assert (=> b!1102116 (= e!698100 (forall!2470 (t!104122 lt!372472) lambda!43486))))

(assert (= (and d!311718 (not res!488743)) b!1102115))

(assert (= (and b!1102115 res!488744) b!1102116))

(declare-fun b_lambda!32277 () Bool)

(assert (=> (not b_lambda!32277) (not b!1102115)))

(declare-fun m!1258119 () Bool)

(assert (=> b!1102115 m!1258119))

(declare-fun m!1258121 () Bool)

(assert (=> b!1102116 m!1258121))

(assert (=> b!1102010 d!311718))

(declare-fun d!311720 () Bool)

(declare-fun lt!372553 () Bool)

(assert (=> d!311720 (= lt!372553 (forall!2470 (list!3841 objs!8) lambda!43486))))

(declare-fun forall!2473 (Conc!3322 Int) Bool)

(assert (=> d!311720 (= lt!372553 (forall!2473 (c!187059 objs!8) lambda!43486))))

(assert (=> d!311720 (= (forall!2469 objs!8 lambda!43486) lt!372553)))

(declare-fun bs!259538 () Bool)

(assert (= bs!259538 d!311720))

(assert (=> bs!259538 m!1257975))

(assert (=> bs!259538 m!1257975))

(declare-fun m!1258127 () Bool)

(assert (=> bs!259538 m!1258127))

(declare-fun m!1258129 () Bool)

(assert (=> bs!259538 m!1258129))

(assert (=> b!1102010 d!311720))

(declare-fun d!311724 () Bool)

(assert (=> d!311724 (dynLambda!4694 lambda!43484 lt!372476)))

(declare-fun lt!372556 () Unit!16253)

(declare-fun choose!7106 (List!10670 Int tuple2!11788) Unit!16253)

(assert (=> d!311724 (= lt!372556 (choose!7106 (list!3841 lt!372481) lambda!43484 lt!372476))))

(declare-fun e!698103 () Bool)

(assert (=> d!311724 e!698103))

(declare-fun res!488747 () Bool)

(assert (=> d!311724 (=> (not res!488747) (not e!698103))))

(assert (=> d!311724 (= res!488747 (forall!2470 (list!3841 lt!372481) lambda!43484))))

(assert (=> d!311724 (= (forallContained!525 (list!3841 lt!372481) lambda!43484 lt!372476) lt!372556)))

(declare-fun b!1102119 () Bool)

(assert (=> b!1102119 (= e!698103 (contains!1884 (list!3841 lt!372481) lt!372476))))

(assert (= (and d!311724 res!488747) b!1102119))

(declare-fun b_lambda!32279 () Bool)

(assert (=> (not b_lambda!32279) (not d!311724)))

(declare-fun m!1258131 () Bool)

(assert (=> d!311724 m!1258131))

(assert (=> d!311724 m!1257993))

(declare-fun m!1258133 () Bool)

(assert (=> d!311724 m!1258133))

(assert (=> d!311724 m!1257993))

(declare-fun m!1258135 () Bool)

(assert (=> d!311724 m!1258135))

(assert (=> b!1102119 m!1257993))

(declare-fun m!1258137 () Bool)

(assert (=> b!1102119 m!1258137))

(assert (=> b!1102008 d!311724))

(declare-fun d!311726 () Bool)

(declare-fun list!3843 (Conc!3322) List!10670)

(assert (=> d!311726 (= (list!3841 lt!372481) (list!3843 (c!187059 lt!372481)))))

(declare-fun bs!259539 () Bool)

(assert (= bs!259539 d!311726))

(declare-fun m!1258139 () Bool)

(assert (=> bs!259539 m!1258139))

(assert (=> b!1102008 d!311726))

(declare-fun d!311728 () Bool)

(assert (=> d!311728 (dynLambda!4694 lambda!43484 lt!372476)))

(declare-fun lt!372559 () Unit!16253)

(assert (=> d!311728 (= lt!372559 (choose!7106 (list!3841 objs!8) lambda!43484 lt!372476))))

(declare-fun e!698106 () Bool)

(assert (=> d!311728 e!698106))

(declare-fun res!488750 () Bool)

(assert (=> d!311728 (=> (not res!488750) (not e!698106))))

(assert (=> d!311728 (= res!488750 (forall!2470 (list!3841 objs!8) lambda!43484))))

(assert (=> d!311728 (= (forallContained!525 (list!3841 objs!8) lambda!43484 lt!372476) lt!372559)))

(declare-fun b!1102122 () Bool)

(assert (=> b!1102122 (= e!698106 (contains!1884 (list!3841 objs!8) lt!372476))))

(assert (= (and d!311728 res!488750) b!1102122))

(declare-fun b_lambda!32281 () Bool)

(assert (=> (not b_lambda!32281) (not d!311728)))

(assert (=> d!311728 m!1258131))

(assert (=> d!311728 m!1257975))

(declare-fun m!1258141 () Bool)

(assert (=> d!311728 m!1258141))

(assert (=> d!311728 m!1257975))

(declare-fun m!1258143 () Bool)

(assert (=> d!311728 m!1258143))

(assert (=> b!1102122 m!1257975))

(assert (=> b!1102122 m!1258079))

(assert (=> b!1102002 d!311728))

(declare-fun d!311730 () Bool)

(assert (=> d!311730 (= (list!3841 objs!8) (list!3843 (c!187059 objs!8)))))

(declare-fun bs!259540 () Bool)

(assert (= bs!259540 d!311730))

(declare-fun m!1258145 () Bool)

(assert (=> bs!259540 m!1258145))

(assert (=> b!1102002 d!311730))

(declare-fun d!311732 () Bool)

(assert (=> d!311732 (dynLambda!4694 lambda!43486 lt!372476)))

(declare-fun lt!372560 () Unit!16253)

(assert (=> d!311732 (= lt!372560 (choose!7106 lt!372472 lambda!43486 lt!372476))))

(declare-fun e!698107 () Bool)

(assert (=> d!311732 e!698107))

(declare-fun res!488751 () Bool)

(assert (=> d!311732 (=> (not res!488751) (not e!698107))))

(assert (=> d!311732 (= res!488751 (forall!2470 lt!372472 lambda!43486))))

(assert (=> d!311732 (= (forallContained!525 lt!372472 lambda!43486 lt!372476) lt!372560)))

(declare-fun b!1102123 () Bool)

(assert (=> b!1102123 (= e!698107 (contains!1884 lt!372472 lt!372476))))

(assert (= (and d!311732 res!488751) b!1102123))

(declare-fun b_lambda!32283 () Bool)

(assert (=> (not b_lambda!32283) (not d!311732)))

(declare-fun m!1258147 () Bool)

(assert (=> d!311732 m!1258147))

(declare-fun m!1258149 () Bool)

(assert (=> d!311732 m!1258149))

(assert (=> d!311732 m!1258009))

(declare-fun m!1258151 () Bool)

(assert (=> b!1102123 m!1258151))

(assert (=> b!1102012 d!311732))

(declare-fun d!311734 () Bool)

(declare-fun lt!372561 () Bool)

(assert (=> d!311734 (= lt!372561 (contains!1884 (list!3841 lt!372468) lt!372476))))

(assert (=> d!311734 (= lt!372561 (contains!1885 (c!187059 lt!372468) lt!372476))))

(assert (=> d!311734 (= (contains!1882 lt!372468 lt!372476) lt!372561)))

(declare-fun bs!259541 () Bool)

(assert (= bs!259541 d!311734))

(assert (=> bs!259541 m!1257987))

(assert (=> bs!259541 m!1257987))

(declare-fun m!1258153 () Bool)

(assert (=> bs!259541 m!1258153))

(declare-fun m!1258155 () Bool)

(assert (=> bs!259541 m!1258155))

(assert (=> b!1102000 d!311734))

(declare-fun d!311736 () Bool)

(assert (=> d!311736 (dynLambda!4694 lambda!43486 lt!372476)))

(declare-fun lt!372563 () Unit!16253)

(assert (=> d!311736 (= lt!372563 (choose!7106 (list!3841 lt!372468) lambda!43486 lt!372476))))

(declare-fun e!698109 () Bool)

(assert (=> d!311736 e!698109))

(declare-fun res!488753 () Bool)

(assert (=> d!311736 (=> (not res!488753) (not e!698109))))

(assert (=> d!311736 (= res!488753 (forall!2470 (list!3841 lt!372468) lambda!43486))))

(assert (=> d!311736 (= (forallContained!525 (list!3841 lt!372468) lambda!43486 lt!372476) lt!372563)))

(declare-fun b!1102125 () Bool)

(assert (=> b!1102125 (= e!698109 (contains!1884 (list!3841 lt!372468) lt!372476))))

(assert (= (and d!311736 res!488753) b!1102125))

(declare-fun b_lambda!32285 () Bool)

(assert (=> (not b_lambda!32285) (not d!311736)))

(assert (=> d!311736 m!1258147))

(assert (=> d!311736 m!1257987))

(declare-fun m!1258157 () Bool)

(assert (=> d!311736 m!1258157))

(assert (=> d!311736 m!1257987))

(declare-fun m!1258159 () Bool)

(assert (=> d!311736 m!1258159))

(assert (=> b!1102125 m!1257987))

(assert (=> b!1102125 m!1258153))

(assert (=> b!1102011 d!311736))

(declare-fun d!311738 () Bool)

(assert (=> d!311738 (= (list!3841 lt!372468) (list!3843 (c!187059 lt!372468)))))

(declare-fun bs!259542 () Bool)

(assert (= bs!259542 d!311738))

(declare-fun m!1258161 () Bool)

(assert (=> bs!259542 m!1258161))

(assert (=> b!1102011 d!311738))

(declare-fun d!311740 () Bool)

(declare-fun lt!372566 () Int)

(assert (=> d!311740 (= lt!372566 (size!8273 (list!3841 objs!8)))))

(declare-fun size!8277 (Conc!3322) Int)

(assert (=> d!311740 (= lt!372566 (size!8277 (c!187059 objs!8)))))

(assert (=> d!311740 (= (size!8272 objs!8) lt!372566)))

(declare-fun bs!259543 () Bool)

(assert (= bs!259543 d!311740))

(assert (=> bs!259543 m!1257975))

(assert (=> bs!259543 m!1257975))

(declare-fun m!1258171 () Bool)

(assert (=> bs!259543 m!1258171))

(declare-fun m!1258173 () Bool)

(assert (=> bs!259543 m!1258173))

(assert (=> b!1102005 d!311740))

(declare-fun d!311744 () Bool)

(declare-fun lt!372567 () Bool)

(assert (=> d!311744 (= lt!372567 (forall!2470 (list!3841 objs!8) lambda!43484))))

(assert (=> d!311744 (= lt!372567 (forall!2473 (c!187059 objs!8) lambda!43484))))

(assert (=> d!311744 (= (forall!2469 objs!8 lambda!43484) lt!372567)))

(declare-fun bs!259544 () Bool)

(assert (= bs!259544 d!311744))

(assert (=> bs!259544 m!1257975))

(assert (=> bs!259544 m!1257975))

(assert (=> bs!259544 m!1258143))

(declare-fun m!1258175 () Bool)

(assert (=> bs!259544 m!1258175))

(assert (=> b!1102004 d!311744))

(assert (=> b!1102004 d!311730))

(declare-fun d!311746 () Bool)

(declare-fun lt!372568 () Int)

(assert (=> d!311746 (= lt!372568 (size!8273 (list!3841 lt!372481)))))

(assert (=> d!311746 (= lt!372568 (size!8277 (c!187059 lt!372481)))))

(assert (=> d!311746 (= (size!8272 lt!372481) lt!372568)))

(declare-fun bs!259545 () Bool)

(assert (= bs!259545 d!311746))

(assert (=> bs!259545 m!1257993))

(assert (=> bs!259545 m!1257993))

(declare-fun m!1258177 () Bool)

(assert (=> bs!259545 m!1258177))

(declare-fun m!1258179 () Bool)

(assert (=> bs!259545 m!1258179))

(assert (=> b!1102004 d!311746))

(declare-fun d!311748 () Bool)

(declare-fun e!698112 () Bool)

(assert (=> d!311748 e!698112))

(declare-fun res!488756 () Bool)

(assert (=> d!311748 (=> res!488756 e!698112)))

(assert (=> d!311748 (= res!488756 (isEmpty!6696 lt!372472))))

(declare-fun lt!372572 () Unit!16253)

(declare-fun choose!7107 (List!10670 Int) Unit!16253)

(assert (=> d!311748 (= lt!372572 (choose!7107 lt!372472 lambda!43484))))

(assert (=> d!311748 (not (forall!2470 lt!372472 lambda!43484))))

(assert (=> d!311748 (= (lemmaNotForallFilterShorter!58 lt!372472 lambda!43484) lt!372572)))

(declare-fun b!1102128 () Bool)

(assert (=> b!1102128 (= e!698112 (< (size!8273 (filter!359 lt!372472 lambda!43484)) (size!8273 lt!372472)))))

(assert (= (and d!311748 (not res!488756)) b!1102128))

(assert (=> d!311748 m!1257979))

(declare-fun m!1258187 () Bool)

(assert (=> d!311748 m!1258187))

(declare-fun m!1258189 () Bool)

(assert (=> d!311748 m!1258189))

(assert (=> b!1102128 m!1258013))

(assert (=> b!1102128 m!1258013))

(assert (=> b!1102128 m!1258015))

(assert (=> b!1102128 m!1258017))

(assert (=> b!1102004 d!311748))

(declare-fun d!311754 () Bool)

(assert (=> d!311754 (= (isEmpty!6696 lt!372472) (is-Nil!10654 lt!372472))))

(assert (=> b!1102004 d!311754))

(declare-fun d!311756 () Bool)

(declare-fun lt!372573 () Bool)

(assert (=> d!311756 (= lt!372573 (contains!1884 (list!3841 lt!372481) lt!372476))))

(assert (=> d!311756 (= lt!372573 (contains!1885 (c!187059 lt!372481) lt!372476))))

(assert (=> d!311756 (= (contains!1882 lt!372481 lt!372476) lt!372573)))

(declare-fun bs!259548 () Bool)

(assert (= bs!259548 d!311756))

(assert (=> bs!259548 m!1257993))

(assert (=> bs!259548 m!1257993))

(assert (=> bs!259548 m!1258137))

(declare-fun m!1258191 () Bool)

(assert (=> bs!259548 m!1258191))

(assert (=> b!1102015 d!311756))

(declare-fun d!311758 () Bool)

(declare-fun lt!372576 () Int)

(assert (=> d!311758 (>= lt!372576 0)))

(declare-fun e!698115 () Int)

(assert (=> d!311758 (= lt!372576 e!698115)))

(declare-fun c!187082 () Bool)

(assert (=> d!311758 (= c!187082 (is-Nil!10654 (filter!359 lt!372472 lambda!43484)))))

(assert (=> d!311758 (= (size!8273 (filter!359 lt!372472 lambda!43484)) lt!372576)))

(declare-fun b!1102133 () Bool)

(assert (=> b!1102133 (= e!698115 0)))

(declare-fun b!1102134 () Bool)

(assert (=> b!1102134 (= e!698115 (+ 1 (size!8273 (t!104122 (filter!359 lt!372472 lambda!43484)))))))

(assert (= (and d!311758 c!187082) b!1102133))

(assert (= (and d!311758 (not c!187082)) b!1102134))

(declare-fun m!1258195 () Bool)

(assert (=> b!1102134 m!1258195))

(assert (=> b!1102014 d!311758))

(declare-fun d!311762 () Bool)

(declare-fun e!698124 () Bool)

(assert (=> d!311762 e!698124))

(declare-fun res!488761 () Bool)

(assert (=> d!311762 (=> (not res!488761) (not e!698124))))

(declare-fun lt!372582 () List!10670)

(assert (=> d!311762 (= res!488761 (<= (size!8273 lt!372582) (size!8273 lt!372472)))))

(declare-fun e!698123 () List!10670)

(assert (=> d!311762 (= lt!372582 e!698123)))

(declare-fun c!187087 () Bool)

(assert (=> d!311762 (= c!187087 (is-Nil!10654 lt!372472))))

(assert (=> d!311762 (= (filter!359 lt!372472 lambda!43484) lt!372582)))

(declare-fun b!1102147 () Bool)

(declare-fun res!488762 () Bool)

(assert (=> b!1102147 (=> (not res!488762) (not e!698124))))

(declare-fun content!1537 (List!10670) (Set tuple2!11788))

(assert (=> b!1102147 (= res!488762 (set.subset (content!1537 lt!372582) (content!1537 lt!372472)))))

(declare-fun b!1102148 () Bool)

(declare-fun e!698122 () List!10670)

(declare-fun call!80443 () List!10670)

(assert (=> b!1102148 (= e!698122 (Cons!10654 (h!16055 lt!372472) call!80443))))

(declare-fun bm!80438 () Bool)

(assert (=> bm!80438 (= call!80443 (filter!359 (t!104122 lt!372472) lambda!43484))))

(declare-fun b!1102149 () Bool)

(assert (=> b!1102149 (= e!698122 call!80443)))

(declare-fun b!1102150 () Bool)

(assert (=> b!1102150 (= e!698123 e!698122)))

(declare-fun c!187088 () Bool)

(assert (=> b!1102150 (= c!187088 (dynLambda!4694 lambda!43484 (h!16055 lt!372472)))))

(declare-fun b!1102151 () Bool)

(assert (=> b!1102151 (= e!698124 (forall!2470 lt!372582 lambda!43484))))

(declare-fun b!1102152 () Bool)

(assert (=> b!1102152 (= e!698123 Nil!10654)))

(assert (= (and d!311762 c!187087) b!1102152))

(assert (= (and d!311762 (not c!187087)) b!1102150))

(assert (= (and b!1102150 c!187088) b!1102148))

(assert (= (and b!1102150 (not c!187088)) b!1102149))

(assert (= (or b!1102148 b!1102149) bm!80438))

(assert (= (and d!311762 res!488761) b!1102147))

(assert (= (and b!1102147 res!488762) b!1102151))

(declare-fun b_lambda!32289 () Bool)

(assert (=> (not b_lambda!32289) (not b!1102150)))

(declare-fun m!1258201 () Bool)

(assert (=> d!311762 m!1258201))

(assert (=> d!311762 m!1258017))

(declare-fun m!1258203 () Bool)

(assert (=> b!1102151 m!1258203))

(declare-fun m!1258205 () Bool)

(assert (=> b!1102147 m!1258205))

(declare-fun m!1258207 () Bool)

(assert (=> b!1102147 m!1258207))

(declare-fun m!1258209 () Bool)

(assert (=> b!1102150 m!1258209))

(declare-fun m!1258211 () Bool)

(assert (=> bm!80438 m!1258211))

(assert (=> b!1102014 d!311762))

(declare-fun d!311766 () Bool)

(declare-fun lt!372583 () Int)

(assert (=> d!311766 (>= lt!372583 0)))

(declare-fun e!698125 () Int)

(assert (=> d!311766 (= lt!372583 e!698125)))

(declare-fun c!187089 () Bool)

(assert (=> d!311766 (= c!187089 (is-Nil!10654 lt!372472))))

(assert (=> d!311766 (= (size!8273 lt!372472) lt!372583)))

(declare-fun b!1102153 () Bool)

(assert (=> b!1102153 (= e!698125 0)))

(declare-fun b!1102154 () Bool)

(assert (=> b!1102154 (= e!698125 (+ 1 (size!8273 (t!104122 lt!372472))))))

(assert (= (and d!311766 c!187089) b!1102153))

(assert (= (and d!311766 (not c!187089)) b!1102154))

(declare-fun m!1258213 () Bool)

(assert (=> b!1102154 m!1258213))

(assert (=> b!1102014 d!311766))

(declare-fun d!311768 () Bool)

(declare-fun lt!372584 () Bool)

(assert (=> d!311768 (= lt!372584 (forall!2470 (list!3841 objs!8) lambda!43483))))

(assert (=> d!311768 (= lt!372584 (forall!2473 (c!187059 objs!8) lambda!43483))))

(assert (=> d!311768 (= (forall!2469 objs!8 lambda!43483) lt!372584)))

(declare-fun bs!259551 () Bool)

(assert (= bs!259551 d!311768))

(assert (=> bs!259551 m!1257975))

(assert (=> bs!259551 m!1257975))

(declare-fun m!1258215 () Bool)

(assert (=> bs!259551 m!1258215))

(declare-fun m!1258217 () Bool)

(assert (=> bs!259551 m!1258217))

(assert (=> start!94836 d!311768))

(declare-fun d!311770 () Bool)

(assert (=> d!311770 (= (inv!13695 objs!8) (isBalanced!919 (c!187059 objs!8)))))

(declare-fun bs!259552 () Bool)

(assert (= bs!259552 d!311770))

(declare-fun m!1258219 () Bool)

(assert (=> bs!259552 m!1258219))

(assert (=> start!94836 d!311770))

(declare-fun b!1102163 () Bool)

(declare-fun e!698130 () Bool)

(assert (=> b!1102163 (= e!698130 true)))

(declare-fun b!1102165 () Bool)

(declare-fun e!698131 () Bool)

(assert (=> b!1102165 (= e!698131 true)))

(declare-fun b!1102164 () Bool)

(assert (=> b!1102164 (= e!698130 e!698131)))

(assert (=> b!1102027 e!698130))

(assert (= (and b!1102027 (is-Node!3321 (c!187058 (tokens!1390 (_2!6720 lt!372476))))) b!1102163))

(assert (= b!1102164 b!1102165))

(assert (= (and b!1102027 (is-Leaf!5243 (c!187058 (tokens!1390 (_2!6720 lt!372476))))) b!1102164))

(declare-fun b!1102166 () Bool)

(declare-fun e!698132 () Bool)

(assert (=> b!1102166 (= e!698132 true)))

(declare-fun b!1102168 () Bool)

(declare-fun e!698133 () Bool)

(assert (=> b!1102168 (= e!698133 true)))

(declare-fun b!1102167 () Bool)

(assert (=> b!1102167 (= e!698132 e!698133)))

(assert (=> b!1102025 e!698132))

(assert (= (and b!1102025 (is-Node!3321 (c!187058 (tokens!1390 (_2!6720 lt!372476))))) b!1102166))

(assert (= b!1102167 b!1102168))

(assert (= (and b!1102025 (is-Leaf!5243 (c!187058 (tokens!1390 (_2!6720 lt!372476))))) b!1102167))

(declare-fun b!1102179 () Bool)

(declare-fun e!698142 () Bool)

(assert (=> b!1102179 (= e!698142 true)))

(declare-fun b!1102178 () Bool)

(declare-fun e!698141 () Bool)

(assert (=> b!1102178 (= e!698141 e!698142)))

(declare-fun b!1102177 () Bool)

(declare-fun e!698140 () Bool)

(assert (=> b!1102177 (= e!698140 e!698141)))

(assert (=> b!1102024 e!698140))

(assert (= b!1102178 b!1102179))

(assert (= b!1102177 b!1102178))

(assert (= (and b!1102024 (is-Cons!10653 (rules!9118 (_2!6720 lt!372476)))) b!1102177))

(declare-fun order!6503 () Int)

(declare-fun order!6501 () Int)

(declare-fun dynLambda!4695 (Int Int) Int)

(declare-fun dynLambda!4696 (Int Int) Int)

(assert (=> b!1102179 (< (dynLambda!4695 order!6501 (toValue!2908 (transformation!1831 (h!16054 (rules!9118 (_2!6720 lt!372476)))))) (dynLambda!4696 order!6503 lambda!43485))))

(declare-fun order!6505 () Int)

(declare-fun dynLambda!4697 (Int Int) Int)

(assert (=> b!1102179 (< (dynLambda!4697 order!6505 (toChars!2767 (transformation!1831 (h!16054 (rules!9118 (_2!6720 lt!372476)))))) (dynLambda!4696 order!6503 lambda!43485))))

(declare-fun tp!327124 () Bool)

(declare-fun b!1102188 () Bool)

(declare-fun tp!327125 () Bool)

(declare-fun e!698147 () Bool)

(assert (=> b!1102188 (= e!698147 (and (inv!13694 (left!9219 (c!187059 objs!8))) tp!327124 (inv!13694 (right!9549 (c!187059 objs!8))) tp!327125))))

(declare-fun b!1102190 () Bool)

(declare-fun e!698148 () Bool)

(declare-fun tp!327123 () Bool)

(assert (=> b!1102190 (= e!698148 tp!327123)))

(declare-fun b!1102189 () Bool)

(declare-fun inv!13700 (IArray!6649) Bool)

(assert (=> b!1102189 (= e!698147 (and (inv!13700 (xs!6015 (c!187059 objs!8))) e!698148))))

(assert (=> b!1102007 (= tp!327113 (and (inv!13694 (c!187059 objs!8)) e!698147))))

(assert (= (and b!1102007 (is-Node!3322 (c!187059 objs!8))) b!1102188))

(assert (= b!1102189 b!1102190))

(assert (= (and b!1102007 (is-Leaf!5244 (c!187059 objs!8))) b!1102189))

(declare-fun m!1258221 () Bool)

(assert (=> b!1102188 m!1258221))

(declare-fun m!1258223 () Bool)

(assert (=> b!1102188 m!1258223))

(declare-fun m!1258225 () Bool)

(assert (=> b!1102189 m!1258225))

(assert (=> b!1102007 m!1258019))

(declare-fun b!1102191 () Bool)

(declare-fun e!698149 () Bool)

(assert (=> b!1102191 (= e!698149 true)))

(declare-fun b!1102193 () Bool)

(declare-fun e!698150 () Bool)

(assert (=> b!1102193 (= e!698150 true)))

(declare-fun b!1102192 () Bool)

(assert (=> b!1102192 (= e!698149 e!698150)))

(assert (=> b!1102023 e!698149))

(assert (= (and b!1102023 (is-Node!3321 (c!187058 (tokens!1390 (_2!6720 lt!372476))))) b!1102191))

(assert (= b!1102192 b!1102193))

(assert (= (and b!1102023 (is-Leaf!5243 (c!187058 (tokens!1390 (_2!6720 lt!372476))))) b!1102192))

(declare-fun b!1102196 () Bool)

(declare-fun e!698153 () Bool)

(assert (=> b!1102196 (= e!698153 true)))

(declare-fun b!1102195 () Bool)

(declare-fun e!698152 () Bool)

(assert (=> b!1102195 (= e!698152 e!698153)))

(declare-fun b!1102194 () Bool)

(declare-fun e!698151 () Bool)

(assert (=> b!1102194 (= e!698151 e!698152)))

(assert (=> b!1102022 e!698151))

(assert (= b!1102195 b!1102196))

(assert (= b!1102194 b!1102195))

(assert (= (and b!1102022 (is-Cons!10653 (rules!9118 (_2!6720 lt!372476)))) b!1102194))

(assert (=> b!1102196 (< (dynLambda!4695 order!6501 (toValue!2908 (transformation!1831 (h!16054 (rules!9118 (_2!6720 lt!372476)))))) (dynLambda!4696 order!6503 lambda!43484))))

(assert (=> b!1102196 (< (dynLambda!4697 order!6505 (toChars!2767 (transformation!1831 (h!16054 (rules!9118 (_2!6720 lt!372476)))))) (dynLambda!4696 order!6503 lambda!43484))))

(declare-fun b!1102199 () Bool)

(declare-fun e!698156 () Bool)

(assert (=> b!1102199 (= e!698156 true)))

(declare-fun b!1102198 () Bool)

(declare-fun e!698155 () Bool)

(assert (=> b!1102198 (= e!698155 e!698156)))

(declare-fun b!1102197 () Bool)

(declare-fun e!698154 () Bool)

(assert (=> b!1102197 (= e!698154 e!698155)))

(assert (=> b!1102026 e!698154))

(assert (= b!1102198 b!1102199))

(assert (= b!1102197 b!1102198))

(assert (= (and b!1102026 (is-Cons!10653 (rules!9118 (_2!6720 lt!372476)))) b!1102197))

(assert (=> b!1102199 (< (dynLambda!4695 order!6501 (toValue!2908 (transformation!1831 (h!16054 (rules!9118 (_2!6720 lt!372476)))))) (dynLambda!4696 order!6503 lambda!43486))))

(assert (=> b!1102199 (< (dynLambda!4697 order!6505 (toChars!2767 (transformation!1831 (h!16054 (rules!9118 (_2!6720 lt!372476)))))) (dynLambda!4696 order!6503 lambda!43486))))

(declare-fun b_lambda!32291 () Bool)

(assert (= b_lambda!32283 (or b!1102006 b_lambda!32291)))

(declare-fun bs!259553 () Bool)

(declare-fun d!311772 () Bool)

(assert (= bs!259553 (and d!311772 b!1102006)))

(assert (=> bs!259553 (= (dynLambda!4694 lambda!43486 lt!372476) (> (_1!6720 lt!372476) (_1!6720 lt!372476)))))

(assert (=> d!311732 d!311772))

(declare-fun b_lambda!32293 () Bool)

(assert (= b_lambda!32279 (or b!1102006 b_lambda!32293)))

(declare-fun bs!259554 () Bool)

(declare-fun d!311774 () Bool)

(assert (= bs!259554 (and d!311774 b!1102006)))

(assert (=> bs!259554 (= (dynLambda!4694 lambda!43484 lt!372476) (< (_1!6720 lt!372476) (_1!6720 lt!372476)))))

(assert (=> d!311724 d!311774))

(declare-fun b_lambda!32295 () Bool)

(assert (= b_lambda!32285 (or b!1102006 b_lambda!32295)))

(assert (=> d!311736 d!311772))

(declare-fun b_lambda!32297 () Bool)

(assert (= b_lambda!32289 (or b!1102006 b_lambda!32297)))

(declare-fun bs!259555 () Bool)

(declare-fun d!311776 () Bool)

(assert (= bs!259555 (and d!311776 b!1102006)))

(assert (=> bs!259555 (= (dynLambda!4694 lambda!43484 (h!16055 lt!372472)) (< (_1!6720 (h!16055 lt!372472)) (_1!6720 lt!372476)))))

(assert (=> b!1102150 d!311776))

(declare-fun b_lambda!32299 () Bool)

(assert (= b_lambda!32277 (or b!1102006 b_lambda!32299)))

(declare-fun bs!259556 () Bool)

(declare-fun d!311778 () Bool)

(assert (= bs!259556 (and d!311778 b!1102006)))

(assert (=> bs!259556 (= (dynLambda!4694 lambda!43486 (h!16055 lt!372472)) (> (_1!6720 (h!16055 lt!372472)) (_1!6720 lt!372476)))))

(assert (=> b!1102115 d!311778))

(declare-fun b_lambda!32301 () Bool)

(assert (= b_lambda!32281 (or b!1102006 b_lambda!32301)))

(assert (=> d!311728 d!311774))

(push 1)

(assert (not b_lambda!32301))

(assert (not b!1102151))

(assert (not b!1102122))

(assert (not d!311734))

(assert (not d!311704))

(assert (not d!311720))

(assert (not d!311710))

(assert (not d!311728))

(assert (not b!1102165))

(assert (not b!1102166))

(assert (not b!1102128))

(assert (not d!311770))

(assert (not b!1102147))

(assert (not b!1102197))

(assert (not d!311730))

(assert (not b!1102163))

(assert (not d!311768))

(assert (not b!1102177))

(assert (not b!1102105))

(assert (not d!311756))

(assert (not d!311716))

(assert (not b!1102154))

(assert (not b!1102007))

(assert (not b!1102094))

(assert (not b!1102108))

(assert (not b!1102193))

(assert (not b!1102134))

(assert (not b_lambda!32295))

(assert (not b_lambda!32299))

(assert (not d!311740))

(assert (not b!1102168))

(assert (not b!1102123))

(assert (not b!1102188))

(assert (not d!311746))

(assert (not b!1102189))

(assert (not d!311726))

(assert (not b!1102190))

(assert (not b!1102116))

(assert (not d!311762))

(assert (not d!311738))

(assert (not d!311732))

(assert (not d!311712))

(assert (not d!311736))

(assert (not bm!80438))

(assert (not b!1102194))

(assert (not d!311724))

(assert (not d!311702))

(assert (not b!1102110))

(assert (not b_lambda!32291))

(assert (not d!311748))

(assert (not b_lambda!32297))

(assert (not b!1102109))

(assert (not b!1102119))

(assert (not b!1102191))

(assert (not b!1102096))

(assert (not d!311744))

(assert (not b!1102125))

(assert (not b_lambda!32293))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

