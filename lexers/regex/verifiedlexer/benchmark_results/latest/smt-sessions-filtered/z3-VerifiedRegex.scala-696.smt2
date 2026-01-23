; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27722 () Bool)

(assert start!27722)

(declare-fun b!259989 () Bool)

(declare-fun b_free!9665 () Bool)

(declare-fun b_next!9665 () Bool)

(assert (=> b!259989 (= b_free!9665 (not b_next!9665))))

(declare-fun tp!100083 () Bool)

(declare-fun b_and!20077 () Bool)

(assert (=> b!259989 (= tp!100083 b_and!20077)))

(declare-fun b_free!9667 () Bool)

(declare-fun b_next!9667 () Bool)

(assert (=> b!259989 (= b_free!9667 (not b_next!9667))))

(declare-fun tp!100079 () Bool)

(declare-fun b_and!20079 () Bool)

(assert (=> b!259989 (= tp!100079 b_and!20079)))

(declare-fun b!260003 () Bool)

(declare-fun b_free!9669 () Bool)

(declare-fun b_next!9669 () Bool)

(assert (=> b!260003 (= b_free!9669 (not b_next!9669))))

(declare-fun tp!100082 () Bool)

(declare-fun b_and!20081 () Bool)

(assert (=> b!260003 (= tp!100082 b_and!20081)))

(declare-fun b_free!9671 () Bool)

(declare-fun b_next!9671 () Bool)

(assert (=> b!260003 (= b_free!9671 (not b_next!9671))))

(declare-fun tp!100087 () Bool)

(declare-fun b_and!20083 () Bool)

(assert (=> b!260003 (= tp!100087 b_and!20083)))

(declare-fun b!260000 () Bool)

(declare-fun b_free!9673 () Bool)

(declare-fun b_next!9673 () Bool)

(assert (=> b!260000 (= b_free!9673 (not b_next!9673))))

(declare-fun tp!100086 () Bool)

(declare-fun b_and!20085 () Bool)

(assert (=> b!260000 (= tp!100086 b_and!20085)))

(declare-fun b_free!9675 () Bool)

(declare-fun b_next!9675 () Bool)

(assert (=> b!260000 (= b_free!9675 (not b_next!9675))))

(declare-fun tp!100089 () Bool)

(declare-fun b_and!20087 () Bool)

(assert (=> b!260000 (= tp!100089 b_and!20087)))

(declare-fun b!259985 () Bool)

(declare-fun res!119769 () Bool)

(declare-fun e!161391 () Bool)

(assert (=> b!259985 (=> (not res!119769) (not e!161391))))

(declare-datatypes ((List!3759 0))(
  ( (Nil!3749) (Cons!3749 (h!9146 (_ BitVec 16)) (t!36795 List!3759)) )
))
(declare-datatypes ((TokenValue!737 0))(
  ( (FloatLiteralValue!1474 (text!5604 List!3759)) (TokenValueExt!736 (__x!2961 Int)) (Broken!3685 (value!24667 List!3759)) (Object!746) (End!737) (Def!737) (Underscore!737) (Match!737) (Else!737) (Error!737) (Case!737) (If!737) (Extends!737) (Abstract!737) (Class!737) (Val!737) (DelimiterValue!1474 (del!797 List!3759)) (KeywordValue!743 (value!24668 List!3759)) (CommentValue!1474 (value!24669 List!3759)) (WhitespaceValue!1474 (value!24670 List!3759)) (IndentationValue!737 (value!24671 List!3759)) (String!4764) (Int32!737) (Broken!3686 (value!24672 List!3759)) (Boolean!738) (Unit!4621) (OperatorValue!740 (op!797 List!3759)) (IdentifierValue!1474 (value!24673 List!3759)) (IdentifierValue!1475 (value!24674 List!3759)) (WhitespaceValue!1475 (value!24675 List!3759)) (True!1474) (False!1474) (Broken!3687 (value!24676 List!3759)) (Broken!3688 (value!24677 List!3759)) (True!1475) (RightBrace!737) (RightBracket!737) (Colon!737) (Null!737) (Comma!737) (LeftBracket!737) (False!1475) (LeftBrace!737) (ImaginaryLiteralValue!737 (text!5605 List!3759)) (StringLiteralValue!2211 (value!24678 List!3759)) (EOFValue!737 (value!24679 List!3759)) (IdentValue!737 (value!24680 List!3759)) (DelimiterValue!1475 (value!24681 List!3759)) (DedentValue!737 (value!24682 List!3759)) (NewLineValue!737 (value!24683 List!3759)) (IntegerValue!2211 (value!24684 (_ BitVec 32)) (text!5606 List!3759)) (IntegerValue!2212 (value!24685 Int) (text!5607 List!3759)) (Times!737) (Or!737) (Equal!737) (Minus!737) (Broken!3689 (value!24686 List!3759)) (And!737) (Div!737) (LessEqual!737) (Mod!737) (Concat!1676) (Not!737) (Plus!737) (SpaceValue!737 (value!24687 List!3759)) (IntegerValue!2213 (value!24688 Int) (text!5608 List!3759)) (StringLiteralValue!2212 (text!5609 List!3759)) (FloatLiteralValue!1475 (text!5610 List!3759)) (BytesLiteralValue!737 (value!24689 List!3759)) (CommentValue!1475 (value!24690 List!3759)) (StringLiteralValue!2213 (value!24691 List!3759)) (ErrorTokenValue!737 (msg!798 List!3759)) )
))
(declare-datatypes ((C!2800 0))(
  ( (C!2801 (val!1286 Int)) )
))
(declare-datatypes ((List!3760 0))(
  ( (Nil!3750) (Cons!3750 (h!9147 C!2800) (t!36796 List!3760)) )
))
(declare-datatypes ((IArray!2505 0))(
  ( (IArray!2506 (innerList!1310 List!3760)) )
))
(declare-datatypes ((Conc!1252 0))(
  ( (Node!1252 (left!3080 Conc!1252) (right!3410 Conc!1252) (csize!2734 Int) (cheight!1463 Int)) (Leaf!1949 (xs!3851 IArray!2505) (csize!2735 Int)) (Empty!1252) )
))
(declare-datatypes ((BalanceConc!2512 0))(
  ( (BalanceConc!2513 (c!49188 Conc!1252)) )
))
(declare-datatypes ((TokenValueInjection!1246 0))(
  ( (TokenValueInjection!1247 (toValue!1434 Int) (toChars!1293 Int)) )
))
(declare-datatypes ((String!4765 0))(
  ( (String!4766 (value!24692 String)) )
))
(declare-datatypes ((Regex!939 0))(
  ( (ElementMatch!939 (c!49189 C!2800)) (Concat!1677 (regOne!2390 Regex!939) (regTwo!2390 Regex!939)) (EmptyExpr!939) (Star!939 (reg!1268 Regex!939)) (EmptyLang!939) (Union!939 (regOne!2391 Regex!939) (regTwo!2391 Regex!939)) )
))
(declare-datatypes ((Rule!1230 0))(
  ( (Rule!1231 (regex!715 Regex!939) (tag!925 String!4765) (isSeparator!715 Bool) (transformation!715 TokenValueInjection!1246)) )
))
(declare-datatypes ((List!3761 0))(
  ( (Nil!3751) (Cons!3751 (h!9148 Rule!1230) (t!36797 List!3761)) )
))
(declare-fun rules!1920 () List!3761)

(declare-fun sepAndNonSepRulesDisjointChars!304 (List!3761 List!3761) Bool)

(assert (=> b!259985 (= res!119769 (sepAndNonSepRulesDisjointChars!304 rules!1920 rules!1920))))

(declare-fun res!119767 () Bool)

(declare-fun e!161395 () Bool)

(assert (=> start!27722 (=> (not res!119767) (not e!161395))))

(declare-datatypes ((LexerInterface!601 0))(
  ( (LexerInterfaceExt!598 (__x!2962 Int)) (Lexer!599) )
))
(declare-fun thiss!17480 () LexerInterface!601)

(get-info :version)

(assert (=> start!27722 (= res!119767 ((_ is Lexer!599) thiss!17480))))

(assert (=> start!27722 e!161395))

(assert (=> start!27722 true))

(declare-fun e!161400 () Bool)

(assert (=> start!27722 e!161400))

(declare-datatypes ((Token!1174 0))(
  ( (Token!1175 (value!24693 TokenValue!737) (rule!1300 Rule!1230) (size!2975 Int) (originalCharacters!758 List!3760)) )
))
(declare-fun separatorToken!170 () Token!1174)

(declare-fun e!161393 () Bool)

(declare-fun inv!4625 (Token!1174) Bool)

(assert (=> start!27722 (and (inv!4625 separatorToken!170) e!161393)))

(declare-fun e!161386 () Bool)

(assert (=> start!27722 e!161386))

(declare-fun b!259986 () Bool)

(assert (=> b!259986 (= e!161395 e!161391)))

(declare-fun res!119764 () Bool)

(assert (=> b!259986 (=> (not res!119764) (not e!161391))))

(declare-datatypes ((List!3762 0))(
  ( (Nil!3752) (Cons!3752 (h!9149 Token!1174) (t!36798 List!3762)) )
))
(declare-datatypes ((IArray!2507 0))(
  ( (IArray!2508 (innerList!1311 List!3762)) )
))
(declare-datatypes ((Conc!1253 0))(
  ( (Node!1253 (left!3081 Conc!1253) (right!3411 Conc!1253) (csize!2736 Int) (cheight!1464 Int)) (Leaf!1950 (xs!3852 IArray!2507) (csize!2737 Int)) (Empty!1253) )
))
(declare-datatypes ((BalanceConc!2514 0))(
  ( (BalanceConc!2515 (c!49190 Conc!1253)) )
))
(declare-fun lt!105860 () BalanceConc!2514)

(declare-fun rulesProduceEachTokenIndividually!393 (LexerInterface!601 List!3761 BalanceConc!2514) Bool)

(assert (=> b!259986 (= res!119764 (rulesProduceEachTokenIndividually!393 thiss!17480 rules!1920 lt!105860))))

(declare-fun tokens!465 () List!3762)

(declare-fun seqFromList!797 (List!3762) BalanceConc!2514)

(assert (=> b!259986 (= lt!105860 (seqFromList!797 tokens!465))))

(declare-fun b!259987 () Bool)

(declare-fun res!119766 () Bool)

(assert (=> b!259987 (=> (not res!119766) (not e!161391))))

(assert (=> b!259987 (= res!119766 (isSeparator!715 (rule!1300 separatorToken!170)))))

(declare-fun b!259988 () Bool)

(declare-fun e!161389 () Bool)

(assert (=> b!259988 (= e!161391 e!161389)))

(declare-fun res!119768 () Bool)

(assert (=> b!259988 (=> (not res!119768) (not e!161389))))

(declare-fun lt!105861 () List!3760)

(declare-fun lt!105862 () List!3760)

(assert (=> b!259988 (= res!119768 (= lt!105861 lt!105862))))

(declare-fun list!1503 (BalanceConc!2512) List!3760)

(declare-fun printWithSeparatorTokenWhenNeededRec!276 (LexerInterface!601 List!3761 BalanceConc!2514 Token!1174 Int) BalanceConc!2512)

(assert (=> b!259988 (= lt!105862 (list!1503 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!284 (LexerInterface!601 List!3761 List!3762 Token!1174) List!3760)

(assert (=> b!259988 (= lt!105861 (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!161387 () Bool)

(assert (=> b!259989 (= e!161387 (and tp!100083 tp!100079))))

(declare-fun e!161384 () Bool)

(declare-fun b!259990 () Bool)

(declare-fun e!161383 () Bool)

(declare-fun tp!100084 () Bool)

(declare-fun inv!21 (TokenValue!737) Bool)

(assert (=> b!259990 (= e!161383 (and (inv!21 (value!24693 (h!9149 tokens!465))) e!161384 tp!100084))))

(declare-fun tp!100090 () Bool)

(declare-fun b!259991 () Bool)

(declare-fun inv!4622 (String!4765) Bool)

(declare-fun inv!4626 (TokenValueInjection!1246) Bool)

(assert (=> b!259991 (= e!161384 (and tp!100090 (inv!4622 (tag!925 (rule!1300 (h!9149 tokens!465)))) (inv!4626 (transformation!715 (rule!1300 (h!9149 tokens!465)))) e!161387))))

(declare-fun b!259992 () Bool)

(declare-fun e!161398 () Bool)

(declare-fun tp!100081 () Bool)

(assert (=> b!259992 (= e!161400 (and e!161398 tp!100081))))

(declare-fun b!259993 () Bool)

(declare-fun tp!100091 () Bool)

(assert (=> b!259993 (= e!161386 (and (inv!4625 (h!9149 tokens!465)) e!161383 tp!100091))))

(declare-fun b!259994 () Bool)

(declare-fun res!119772 () Bool)

(assert (=> b!259994 (=> (not res!119772) (not e!161395))))

(declare-fun rulesInvariant!567 (LexerInterface!601 List!3761) Bool)

(assert (=> b!259994 (= res!119772 (rulesInvariant!567 thiss!17480 rules!1920))))

(declare-fun e!161390 () Bool)

(declare-fun tp!100085 () Bool)

(declare-fun b!259995 () Bool)

(declare-fun e!161388 () Bool)

(assert (=> b!259995 (= e!161390 (and tp!100085 (inv!4622 (tag!925 (rule!1300 separatorToken!170))) (inv!4626 (transformation!715 (rule!1300 separatorToken!170))) e!161388))))

(declare-fun b!259996 () Bool)

(declare-fun res!119763 () Bool)

(assert (=> b!259996 (=> (not res!119763) (not e!161395))))

(declare-fun isEmpty!2346 (List!3761) Bool)

(assert (=> b!259996 (= res!119763 (not (isEmpty!2346 rules!1920)))))

(declare-fun tp!100088 () Bool)

(declare-fun b!259997 () Bool)

(declare-fun e!161392 () Bool)

(assert (=> b!259997 (= e!161398 (and tp!100088 (inv!4622 (tag!925 (h!9148 rules!1920))) (inv!4626 (transformation!715 (h!9148 rules!1920))) e!161392))))

(declare-fun tp!100080 () Bool)

(declare-fun b!259998 () Bool)

(assert (=> b!259998 (= e!161393 (and (inv!21 (value!24693 separatorToken!170)) e!161390 tp!100080))))

(declare-fun b!259999 () Bool)

(declare-fun seqFromList!798 (List!3760) BalanceConc!2512)

(assert (=> b!259999 (= e!161389 (not (= (list!1503 (seqFromList!798 lt!105861)) lt!105862)))))

(assert (=> b!260000 (= e!161392 (and tp!100086 tp!100089))))

(declare-fun b!260001 () Bool)

(declare-fun res!119765 () Bool)

(assert (=> b!260001 (=> (not res!119765) (not e!161391))))

(assert (=> b!260001 (= res!119765 ((_ is Cons!3752) tokens!465))))

(declare-fun b!260002 () Bool)

(declare-fun res!119771 () Bool)

(assert (=> b!260002 (=> (not res!119771) (not e!161391))))

(declare-fun rulesProduceIndividualToken!350 (LexerInterface!601 List!3761 Token!1174) Bool)

(assert (=> b!260002 (= res!119771 (rulesProduceIndividualToken!350 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!260003 (= e!161388 (and tp!100082 tp!100087))))

(declare-fun b!260004 () Bool)

(declare-fun res!119770 () Bool)

(assert (=> b!260004 (=> (not res!119770) (not e!161391))))

(declare-fun lambda!8662 () Int)

(declare-fun forall!915 (List!3762 Int) Bool)

(assert (=> b!260004 (= res!119770 (forall!915 tokens!465 lambda!8662))))

(assert (= (and start!27722 res!119767) b!259996))

(assert (= (and b!259996 res!119763) b!259994))

(assert (= (and b!259994 res!119772) b!259986))

(assert (= (and b!259986 res!119764) b!260002))

(assert (= (and b!260002 res!119771) b!259987))

(assert (= (and b!259987 res!119766) b!260004))

(assert (= (and b!260004 res!119770) b!259985))

(assert (= (and b!259985 res!119769) b!260001))

(assert (= (and b!260001 res!119765) b!259988))

(assert (= (and b!259988 res!119768) b!259999))

(assert (= b!259997 b!260000))

(assert (= b!259992 b!259997))

(assert (= (and start!27722 ((_ is Cons!3751) rules!1920)) b!259992))

(assert (= b!259995 b!260003))

(assert (= b!259998 b!259995))

(assert (= start!27722 b!259998))

(assert (= b!259991 b!259989))

(assert (= b!259990 b!259991))

(assert (= b!259993 b!259990))

(assert (= (and start!27722 ((_ is Cons!3752) tokens!465)) b!259993))

(declare-fun m!322467 () Bool)

(assert (=> b!259996 m!322467))

(declare-fun m!322469 () Bool)

(assert (=> b!259994 m!322469))

(declare-fun m!322471 () Bool)

(assert (=> b!260002 m!322471))

(declare-fun m!322473 () Bool)

(assert (=> b!259993 m!322473))

(declare-fun m!322475 () Bool)

(assert (=> b!259997 m!322475))

(declare-fun m!322477 () Bool)

(assert (=> b!259997 m!322477))

(declare-fun m!322479 () Bool)

(assert (=> b!259990 m!322479))

(declare-fun m!322481 () Bool)

(assert (=> b!259988 m!322481))

(assert (=> b!259988 m!322481))

(declare-fun m!322483 () Bool)

(assert (=> b!259988 m!322483))

(declare-fun m!322485 () Bool)

(assert (=> b!259988 m!322485))

(declare-fun m!322487 () Bool)

(assert (=> b!260004 m!322487))

(declare-fun m!322489 () Bool)

(assert (=> start!27722 m!322489))

(declare-fun m!322491 () Bool)

(assert (=> b!259999 m!322491))

(assert (=> b!259999 m!322491))

(declare-fun m!322493 () Bool)

(assert (=> b!259999 m!322493))

(declare-fun m!322495 () Bool)

(assert (=> b!259986 m!322495))

(declare-fun m!322497 () Bool)

(assert (=> b!259986 m!322497))

(declare-fun m!322499 () Bool)

(assert (=> b!259995 m!322499))

(declare-fun m!322501 () Bool)

(assert (=> b!259995 m!322501))

(declare-fun m!322503 () Bool)

(assert (=> b!259985 m!322503))

(declare-fun m!322505 () Bool)

(assert (=> b!259991 m!322505))

(declare-fun m!322507 () Bool)

(assert (=> b!259991 m!322507))

(declare-fun m!322509 () Bool)

(assert (=> b!259998 m!322509))

(check-sat (not b!260004) (not b_next!9675) (not b!259999) (not b_next!9673) (not b_next!9665) (not b!259990) (not b_next!9667) (not b!260002) b_and!20087 b_and!20081 (not b!259992) (not b!259991) (not b!259993) (not b_next!9669) b_and!20085 (not b!259994) (not b!259997) (not b!259998) (not b!259986) (not b!259996) (not b!259985) (not b_next!9671) (not b!259995) (not start!27722) b_and!20079 (not b!259988) b_and!20083 b_and!20077)
(check-sat (not b_next!9675) (not b_next!9673) (not b_next!9665) (not b_next!9667) b_and!20087 (not b_next!9671) b_and!20081 b_and!20079 (not b_next!9669) b_and!20085 b_and!20083 b_and!20077)
(get-model)

(declare-fun d!74361 () Bool)

(assert (=> d!74361 (= (inv!4622 (tag!925 (rule!1300 separatorToken!170))) (= (mod (str.len (value!24692 (tag!925 (rule!1300 separatorToken!170)))) 2) 0))))

(assert (=> b!259995 d!74361))

(declare-fun d!74365 () Bool)

(declare-fun res!119786 () Bool)

(declare-fun e!161412 () Bool)

(assert (=> d!74365 (=> (not res!119786) (not e!161412))))

(declare-fun semiInverseModEq!245 (Int Int) Bool)

(assert (=> d!74365 (= res!119786 (semiInverseModEq!245 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toValue!1434 (transformation!715 (rule!1300 separatorToken!170)))))))

(assert (=> d!74365 (= (inv!4626 (transformation!715 (rule!1300 separatorToken!170))) e!161412)))

(declare-fun b!260022 () Bool)

(declare-fun equivClasses!228 (Int Int) Bool)

(assert (=> b!260022 (= e!161412 (equivClasses!228 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toValue!1434 (transformation!715 (rule!1300 separatorToken!170)))))))

(assert (= (and d!74365 res!119786) b!260022))

(declare-fun m!322517 () Bool)

(assert (=> d!74365 m!322517))

(declare-fun m!322519 () Bool)

(assert (=> b!260022 m!322519))

(assert (=> b!259995 d!74365))

(declare-fun d!74371 () Bool)

(declare-fun res!119791 () Bool)

(declare-fun e!161415 () Bool)

(assert (=> d!74371 (=> (not res!119791) (not e!161415))))

(declare-fun isEmpty!2349 (List!3760) Bool)

(assert (=> d!74371 (= res!119791 (not (isEmpty!2349 (originalCharacters!758 separatorToken!170))))))

(assert (=> d!74371 (= (inv!4625 separatorToken!170) e!161415)))

(declare-fun b!260027 () Bool)

(declare-fun res!119792 () Bool)

(assert (=> b!260027 (=> (not res!119792) (not e!161415))))

(declare-fun dynLambda!1878 (Int TokenValue!737) BalanceConc!2512)

(assert (=> b!260027 (= res!119792 (= (originalCharacters!758 separatorToken!170) (list!1503 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))))))

(declare-fun b!260028 () Bool)

(declare-fun size!2978 (List!3760) Int)

(assert (=> b!260028 (= e!161415 (= (size!2975 separatorToken!170) (size!2978 (originalCharacters!758 separatorToken!170))))))

(assert (= (and d!74371 res!119791) b!260027))

(assert (= (and b!260027 res!119792) b!260028))

(declare-fun b_lambda!7923 () Bool)

(assert (=> (not b_lambda!7923) (not b!260027)))

(declare-fun tb!13969 () Bool)

(declare-fun t!36800 () Bool)

(assert (=> (and b!259989 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) t!36800) tb!13969))

(declare-fun b!260033 () Bool)

(declare-fun e!161418 () Bool)

(declare-fun tp!100094 () Bool)

(declare-fun inv!4629 (Conc!1252) Bool)

(assert (=> b!260033 (= e!161418 (and (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))) tp!100094))))

(declare-fun result!17416 () Bool)

(declare-fun inv!4630 (BalanceConc!2512) Bool)

(assert (=> tb!13969 (= result!17416 (and (inv!4630 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))) e!161418))))

(assert (= tb!13969 b!260033))

(declare-fun m!322521 () Bool)

(assert (=> b!260033 m!322521))

(declare-fun m!322523 () Bool)

(assert (=> tb!13969 m!322523))

(assert (=> b!260027 t!36800))

(declare-fun b_and!20089 () Bool)

(assert (= b_and!20079 (and (=> t!36800 result!17416) b_and!20089)))

(declare-fun t!36802 () Bool)

(declare-fun tb!13971 () Bool)

(assert (=> (and b!260003 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) t!36802) tb!13971))

(declare-fun result!17420 () Bool)

(assert (= result!17420 result!17416))

(assert (=> b!260027 t!36802))

(declare-fun b_and!20091 () Bool)

(assert (= b_and!20083 (and (=> t!36802 result!17420) b_and!20091)))

(declare-fun t!36804 () Bool)

(declare-fun tb!13973 () Bool)

(assert (=> (and b!260000 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) t!36804) tb!13973))

(declare-fun result!17422 () Bool)

(assert (= result!17422 result!17416))

(assert (=> b!260027 t!36804))

(declare-fun b_and!20093 () Bool)

(assert (= b_and!20087 (and (=> t!36804 result!17422) b_and!20093)))

(declare-fun m!322525 () Bool)

(assert (=> d!74371 m!322525))

(declare-fun m!322527 () Bool)

(assert (=> b!260027 m!322527))

(assert (=> b!260027 m!322527))

(declare-fun m!322529 () Bool)

(assert (=> b!260027 m!322529))

(declare-fun m!322531 () Bool)

(assert (=> b!260028 m!322531))

(assert (=> start!27722 d!74371))

(declare-fun d!74373 () Bool)

(declare-fun res!119793 () Bool)

(declare-fun e!161419 () Bool)

(assert (=> d!74373 (=> (not res!119793) (not e!161419))))

(assert (=> d!74373 (= res!119793 (not (isEmpty!2349 (originalCharacters!758 (h!9149 tokens!465)))))))

(assert (=> d!74373 (= (inv!4625 (h!9149 tokens!465)) e!161419)))

(declare-fun b!260034 () Bool)

(declare-fun res!119794 () Bool)

(assert (=> b!260034 (=> (not res!119794) (not e!161419))))

(assert (=> b!260034 (= res!119794 (= (originalCharacters!758 (h!9149 tokens!465)) (list!1503 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))))))

(declare-fun b!260035 () Bool)

(assert (=> b!260035 (= e!161419 (= (size!2975 (h!9149 tokens!465)) (size!2978 (originalCharacters!758 (h!9149 tokens!465)))))))

(assert (= (and d!74373 res!119793) b!260034))

(assert (= (and b!260034 res!119794) b!260035))

(declare-fun b_lambda!7925 () Bool)

(assert (=> (not b_lambda!7925) (not b!260034)))

(declare-fun t!36806 () Bool)

(declare-fun tb!13975 () Bool)

(assert (=> (and b!259989 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465))))) t!36806) tb!13975))

(declare-fun b!260036 () Bool)

(declare-fun e!161420 () Bool)

(declare-fun tp!100095 () Bool)

(assert (=> b!260036 (= e!161420 (and (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))) tp!100095))))

(declare-fun result!17424 () Bool)

(assert (=> tb!13975 (= result!17424 (and (inv!4630 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))) e!161420))))

(assert (= tb!13975 b!260036))

(declare-fun m!322533 () Bool)

(assert (=> b!260036 m!322533))

(declare-fun m!322535 () Bool)

(assert (=> tb!13975 m!322535))

(assert (=> b!260034 t!36806))

(declare-fun b_and!20095 () Bool)

(assert (= b_and!20089 (and (=> t!36806 result!17424) b_and!20095)))

(declare-fun tb!13977 () Bool)

(declare-fun t!36808 () Bool)

(assert (=> (and b!260003 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465))))) t!36808) tb!13977))

(declare-fun result!17426 () Bool)

(assert (= result!17426 result!17424))

(assert (=> b!260034 t!36808))

(declare-fun b_and!20097 () Bool)

(assert (= b_and!20091 (and (=> t!36808 result!17426) b_and!20097)))

(declare-fun tb!13979 () Bool)

(declare-fun t!36810 () Bool)

(assert (=> (and b!260000 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465))))) t!36810) tb!13979))

(declare-fun result!17428 () Bool)

(assert (= result!17428 result!17424))

(assert (=> b!260034 t!36810))

(declare-fun b_and!20099 () Bool)

(assert (= b_and!20093 (and (=> t!36810 result!17428) b_and!20099)))

(declare-fun m!322537 () Bool)

(assert (=> d!74373 m!322537))

(declare-fun m!322539 () Bool)

(assert (=> b!260034 m!322539))

(assert (=> b!260034 m!322539))

(declare-fun m!322541 () Bool)

(assert (=> b!260034 m!322541))

(declare-fun m!322543 () Bool)

(assert (=> b!260035 m!322543))

(assert (=> b!259993 d!74373))

(declare-fun d!74375 () Bool)

(declare-fun res!119799 () Bool)

(declare-fun e!161425 () Bool)

(assert (=> d!74375 (=> res!119799 e!161425)))

(assert (=> d!74375 (= res!119799 ((_ is Nil!3752) tokens!465))))

(assert (=> d!74375 (= (forall!915 tokens!465 lambda!8662) e!161425)))

(declare-fun b!260041 () Bool)

(declare-fun e!161426 () Bool)

(assert (=> b!260041 (= e!161425 e!161426)))

(declare-fun res!119800 () Bool)

(assert (=> b!260041 (=> (not res!119800) (not e!161426))))

(declare-fun dynLambda!1880 (Int Token!1174) Bool)

(assert (=> b!260041 (= res!119800 (dynLambda!1880 lambda!8662 (h!9149 tokens!465)))))

(declare-fun b!260042 () Bool)

(assert (=> b!260042 (= e!161426 (forall!915 (t!36798 tokens!465) lambda!8662))))

(assert (= (and d!74375 (not res!119799)) b!260041))

(assert (= (and b!260041 res!119800) b!260042))

(declare-fun b_lambda!7927 () Bool)

(assert (=> (not b_lambda!7927) (not b!260041)))

(declare-fun m!322545 () Bool)

(assert (=> b!260041 m!322545))

(declare-fun m!322547 () Bool)

(assert (=> b!260042 m!322547))

(assert (=> b!260004 d!74375))

(declare-fun d!74377 () Bool)

(declare-fun res!119803 () Bool)

(declare-fun e!161429 () Bool)

(assert (=> d!74377 (=> (not res!119803) (not e!161429))))

(declare-fun rulesValid!211 (LexerInterface!601 List!3761) Bool)

(assert (=> d!74377 (= res!119803 (rulesValid!211 thiss!17480 rules!1920))))

(assert (=> d!74377 (= (rulesInvariant!567 thiss!17480 rules!1920) e!161429)))

(declare-fun b!260045 () Bool)

(declare-datatypes ((List!3764 0))(
  ( (Nil!3754) (Cons!3754 (h!9151 String!4765) (t!36862 List!3764)) )
))
(declare-fun noDuplicateTag!211 (LexerInterface!601 List!3761 List!3764) Bool)

(assert (=> b!260045 (= e!161429 (noDuplicateTag!211 thiss!17480 rules!1920 Nil!3754))))

(assert (= (and d!74377 res!119803) b!260045))

(declare-fun m!322549 () Bool)

(assert (=> d!74377 m!322549))

(declare-fun m!322551 () Bool)

(assert (=> b!260045 m!322551))

(assert (=> b!259994 d!74377))

(declare-fun d!74379 () Bool)

(assert (=> d!74379 (= (inv!4622 (tag!925 (h!9148 rules!1920))) (= (mod (str.len (value!24692 (tag!925 (h!9148 rules!1920)))) 2) 0))))

(assert (=> b!259997 d!74379))

(declare-fun d!74381 () Bool)

(declare-fun res!119804 () Bool)

(declare-fun e!161430 () Bool)

(assert (=> d!74381 (=> (not res!119804) (not e!161430))))

(assert (=> d!74381 (= res!119804 (semiInverseModEq!245 (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toValue!1434 (transformation!715 (h!9148 rules!1920)))))))

(assert (=> d!74381 (= (inv!4626 (transformation!715 (h!9148 rules!1920))) e!161430)))

(declare-fun b!260046 () Bool)

(assert (=> b!260046 (= e!161430 (equivClasses!228 (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toValue!1434 (transformation!715 (h!9148 rules!1920)))))))

(assert (= (and d!74381 res!119804) b!260046))

(declare-fun m!322553 () Bool)

(assert (=> d!74381 m!322553))

(declare-fun m!322555 () Bool)

(assert (=> b!260046 m!322555))

(assert (=> b!259997 d!74381))

(declare-fun d!74383 () Bool)

(declare-fun c!49202 () Bool)

(assert (=> d!74383 (= c!49202 ((_ is IntegerValue!2211) (value!24693 separatorToken!170)))))

(declare-fun e!161437 () Bool)

(assert (=> d!74383 (= (inv!21 (value!24693 separatorToken!170)) e!161437)))

(declare-fun b!260057 () Bool)

(declare-fun e!161439 () Bool)

(declare-fun inv!17 (TokenValue!737) Bool)

(assert (=> b!260057 (= e!161439 (inv!17 (value!24693 separatorToken!170)))))

(declare-fun b!260058 () Bool)

(declare-fun inv!16 (TokenValue!737) Bool)

(assert (=> b!260058 (= e!161437 (inv!16 (value!24693 separatorToken!170)))))

(declare-fun b!260059 () Bool)

(declare-fun res!119807 () Bool)

(declare-fun e!161438 () Bool)

(assert (=> b!260059 (=> res!119807 e!161438)))

(assert (=> b!260059 (= res!119807 (not ((_ is IntegerValue!2213) (value!24693 separatorToken!170))))))

(assert (=> b!260059 (= e!161439 e!161438)))

(declare-fun b!260060 () Bool)

(assert (=> b!260060 (= e!161437 e!161439)))

(declare-fun c!49201 () Bool)

(assert (=> b!260060 (= c!49201 ((_ is IntegerValue!2212) (value!24693 separatorToken!170)))))

(declare-fun b!260061 () Bool)

(declare-fun inv!15 (TokenValue!737) Bool)

(assert (=> b!260061 (= e!161438 (inv!15 (value!24693 separatorToken!170)))))

(assert (= (and d!74383 c!49202) b!260058))

(assert (= (and d!74383 (not c!49202)) b!260060))

(assert (= (and b!260060 c!49201) b!260057))

(assert (= (and b!260060 (not c!49201)) b!260059))

(assert (= (and b!260059 (not res!119807)) b!260061))

(declare-fun m!322557 () Bool)

(assert (=> b!260057 m!322557))

(declare-fun m!322559 () Bool)

(assert (=> b!260058 m!322559))

(declare-fun m!322561 () Bool)

(assert (=> b!260061 m!322561))

(assert (=> b!259998 d!74383))

(declare-fun d!74385 () Bool)

(declare-fun res!119812 () Bool)

(declare-fun e!161444 () Bool)

(assert (=> d!74385 (=> res!119812 e!161444)))

(assert (=> d!74385 (= res!119812 (not ((_ is Cons!3751) rules!1920)))))

(assert (=> d!74385 (= (sepAndNonSepRulesDisjointChars!304 rules!1920 rules!1920) e!161444)))

(declare-fun b!260066 () Bool)

(declare-fun e!161445 () Bool)

(assert (=> b!260066 (= e!161444 e!161445)))

(declare-fun res!119813 () Bool)

(assert (=> b!260066 (=> (not res!119813) (not e!161445))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!104 (Rule!1230 List!3761) Bool)

(assert (=> b!260066 (= res!119813 (ruleDisjointCharsFromAllFromOtherType!104 (h!9148 rules!1920) rules!1920))))

(declare-fun b!260067 () Bool)

(assert (=> b!260067 (= e!161445 (sepAndNonSepRulesDisjointChars!304 rules!1920 (t!36797 rules!1920)))))

(assert (= (and d!74385 (not res!119812)) b!260066))

(assert (= (and b!260066 res!119813) b!260067))

(declare-fun m!322563 () Bool)

(assert (=> b!260066 m!322563))

(declare-fun m!322565 () Bool)

(assert (=> b!260067 m!322565))

(assert (=> b!259985 d!74385))

(declare-fun d!74387 () Bool)

(assert (=> d!74387 (= (isEmpty!2346 rules!1920) ((_ is Nil!3751) rules!1920))))

(assert (=> b!259996 d!74387))

(declare-fun bs!28212 () Bool)

(declare-fun d!74389 () Bool)

(assert (= bs!28212 (and d!74389 b!260004)))

(declare-fun lambda!8672 () Int)

(assert (=> bs!28212 (not (= lambda!8672 lambda!8662))))

(declare-fun b!260114 () Bool)

(declare-fun e!161481 () Bool)

(assert (=> b!260114 (= e!161481 true)))

(declare-fun b!260113 () Bool)

(declare-fun e!161480 () Bool)

(assert (=> b!260113 (= e!161480 e!161481)))

(declare-fun b!260112 () Bool)

(declare-fun e!161479 () Bool)

(assert (=> b!260112 (= e!161479 e!161480)))

(assert (=> d!74389 e!161479))

(assert (= b!260113 b!260114))

(assert (= b!260112 b!260113))

(assert (= (and d!74389 ((_ is Cons!3751) rules!1920)) b!260112))

(declare-fun order!2831 () Int)

(declare-fun order!2829 () Int)

(declare-fun dynLambda!1881 (Int Int) Int)

(declare-fun dynLambda!1882 (Int Int) Int)

(assert (=> b!260114 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8672))))

(declare-fun order!2833 () Int)

(declare-fun dynLambda!1883 (Int Int) Int)

(assert (=> b!260114 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8672))))

(assert (=> d!74389 true))

(declare-fun e!161472 () Bool)

(assert (=> d!74389 e!161472))

(declare-fun res!119832 () Bool)

(assert (=> d!74389 (=> (not res!119832) (not e!161472))))

(declare-fun lt!105874 () Bool)

(declare-fun list!1506 (BalanceConc!2514) List!3762)

(assert (=> d!74389 (= res!119832 (= lt!105874 (forall!915 (list!1506 lt!105860) lambda!8672)))))

(declare-fun forall!917 (BalanceConc!2514 Int) Bool)

(assert (=> d!74389 (= lt!105874 (forall!917 lt!105860 lambda!8672))))

(assert (=> d!74389 (not (isEmpty!2346 rules!1920))))

(assert (=> d!74389 (= (rulesProduceEachTokenIndividually!393 thiss!17480 rules!1920 lt!105860) lt!105874)))

(declare-fun b!260103 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!215 (LexerInterface!601 List!3761 List!3762) Bool)

(assert (=> b!260103 (= e!161472 (= lt!105874 (rulesProduceEachTokenIndividuallyList!215 thiss!17480 rules!1920 (list!1506 lt!105860))))))

(assert (= (and d!74389 res!119832) b!260103))

(declare-fun m!322607 () Bool)

(assert (=> d!74389 m!322607))

(assert (=> d!74389 m!322607))

(declare-fun m!322609 () Bool)

(assert (=> d!74389 m!322609))

(declare-fun m!322611 () Bool)

(assert (=> d!74389 m!322611))

(assert (=> d!74389 m!322467))

(assert (=> b!260103 m!322607))

(assert (=> b!260103 m!322607))

(declare-fun m!322613 () Bool)

(assert (=> b!260103 m!322613))

(assert (=> b!259986 d!74389))

(declare-fun d!74405 () Bool)

(declare-fun fromListB!292 (List!3762) BalanceConc!2514)

(assert (=> d!74405 (= (seqFromList!797 tokens!465) (fromListB!292 tokens!465))))

(declare-fun bs!28213 () Bool)

(assert (= bs!28213 d!74405))

(declare-fun m!322615 () Bool)

(assert (=> bs!28213 m!322615))

(assert (=> b!259986 d!74405))

(declare-fun d!74407 () Bool)

(declare-fun c!49206 () Bool)

(assert (=> d!74407 (= c!49206 ((_ is IntegerValue!2211) (value!24693 (h!9149 tokens!465))))))

(declare-fun e!161482 () Bool)

(assert (=> d!74407 (= (inv!21 (value!24693 (h!9149 tokens!465))) e!161482)))

(declare-fun b!260117 () Bool)

(declare-fun e!161484 () Bool)

(assert (=> b!260117 (= e!161484 (inv!17 (value!24693 (h!9149 tokens!465))))))

(declare-fun b!260118 () Bool)

(assert (=> b!260118 (= e!161482 (inv!16 (value!24693 (h!9149 tokens!465))))))

(declare-fun b!260119 () Bool)

(declare-fun res!119833 () Bool)

(declare-fun e!161483 () Bool)

(assert (=> b!260119 (=> res!119833 e!161483)))

(assert (=> b!260119 (= res!119833 (not ((_ is IntegerValue!2213) (value!24693 (h!9149 tokens!465)))))))

(assert (=> b!260119 (= e!161484 e!161483)))

(declare-fun b!260120 () Bool)

(assert (=> b!260120 (= e!161482 e!161484)))

(declare-fun c!49205 () Bool)

(assert (=> b!260120 (= c!49205 ((_ is IntegerValue!2212) (value!24693 (h!9149 tokens!465))))))

(declare-fun b!260121 () Bool)

(assert (=> b!260121 (= e!161483 (inv!15 (value!24693 (h!9149 tokens!465))))))

(assert (= (and d!74407 c!49206) b!260118))

(assert (= (and d!74407 (not c!49206)) b!260120))

(assert (= (and b!260120 c!49205) b!260117))

(assert (= (and b!260120 (not c!49205)) b!260119))

(assert (= (and b!260119 (not res!119833)) b!260121))

(declare-fun m!322617 () Bool)

(assert (=> b!260117 m!322617))

(declare-fun m!322619 () Bool)

(assert (=> b!260118 m!322619))

(declare-fun m!322621 () Bool)

(assert (=> b!260121 m!322621))

(assert (=> b!259990 d!74407))

(declare-fun d!74409 () Bool)

(declare-fun list!1507 (Conc!1252) List!3760)

(assert (=> d!74409 (= (list!1503 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0)) (list!1507 (c!49188 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0))))))

(declare-fun bs!28214 () Bool)

(assert (= bs!28214 d!74409))

(declare-fun m!322623 () Bool)

(assert (=> bs!28214 m!322623))

(assert (=> b!259988 d!74409))

(declare-fun bs!28220 () Bool)

(declare-fun d!74411 () Bool)

(assert (= bs!28220 (and d!74411 b!260004)))

(declare-fun lambda!8683 () Int)

(assert (=> bs!28220 (= lambda!8683 lambda!8662)))

(declare-fun bs!28221 () Bool)

(assert (= bs!28221 (and d!74411 d!74389)))

(assert (=> bs!28221 (not (= lambda!8683 lambda!8672))))

(declare-fun bs!28222 () Bool)

(declare-fun b!260171 () Bool)

(assert (= bs!28222 (and b!260171 b!260004)))

(declare-fun lambda!8684 () Int)

(assert (=> bs!28222 (not (= lambda!8684 lambda!8662))))

(declare-fun bs!28223 () Bool)

(assert (= bs!28223 (and b!260171 d!74389)))

(assert (=> bs!28223 (= lambda!8684 lambda!8672)))

(declare-fun bs!28224 () Bool)

(assert (= bs!28224 (and b!260171 d!74411)))

(assert (=> bs!28224 (not (= lambda!8684 lambda!8683))))

(declare-fun b!260181 () Bool)

(declare-fun e!161526 () Bool)

(assert (=> b!260181 (= e!161526 true)))

(declare-fun b!260180 () Bool)

(declare-fun e!161525 () Bool)

(assert (=> b!260180 (= e!161525 e!161526)))

(declare-fun b!260179 () Bool)

(declare-fun e!161524 () Bool)

(assert (=> b!260179 (= e!161524 e!161525)))

(assert (=> b!260171 e!161524))

(assert (= b!260180 b!260181))

(assert (= b!260179 b!260180))

(assert (= (and b!260171 ((_ is Cons!3751) rules!1920)) b!260179))

(assert (=> b!260181 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8684))))

(assert (=> b!260181 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8684))))

(assert (=> b!260171 true))

(declare-fun call!13864 () Token!1174)

(declare-fun c!49224 () Bool)

(declare-fun bm!13859 () Bool)

(declare-fun call!13866 () BalanceConc!2512)

(declare-fun charsOf!360 (Token!1174) BalanceConc!2512)

(assert (=> bm!13859 (= call!13866 (charsOf!360 (ite c!49224 separatorToken!170 call!13864)))))

(declare-fun bm!13860 () Bool)

(declare-fun call!13868 () Token!1174)

(assert (=> bm!13860 (= call!13864 call!13868)))

(declare-fun bm!13861 () Bool)

(declare-fun call!13867 () BalanceConc!2512)

(declare-fun c!49223 () Bool)

(assert (=> bm!13861 (= call!13867 (charsOf!360 (ite c!49223 call!13868 call!13864)))))

(declare-fun b!260170 () Bool)

(declare-fun e!161520 () Bool)

(declare-datatypes ((tuple2!4190 0))(
  ( (tuple2!4191 (_1!2311 Token!1174) (_2!2311 BalanceConc!2512)) )
))
(declare-datatypes ((Option!776 0))(
  ( (None!775) (Some!775 (v!14608 tuple2!4190)) )
))
(declare-fun lt!105951 () Option!776)

(assert (=> b!260170 (= e!161520 (not (= (_1!2311 (v!14608 lt!105951)) call!13868)))))

(declare-fun e!161523 () BalanceConc!2512)

(declare-fun e!161518 () BalanceConc!2512)

(assert (=> b!260171 (= e!161523 e!161518)))

(declare-fun lt!105950 () List!3762)

(assert (=> b!260171 (= lt!105950 (list!1506 lt!105860))))

(declare-datatypes ((Unit!4628 0))(
  ( (Unit!4629) )
))
(declare-fun lt!105953 () Unit!4628)

(declare-fun lemmaDropApply!190 (List!3762 Int) Unit!4628)

(assert (=> b!260171 (= lt!105953 (lemmaDropApply!190 lt!105950 0))))

(declare-fun head!874 (List!3762) Token!1174)

(declare-fun drop!203 (List!3762 Int) List!3762)

(declare-fun apply!725 (List!3762 Int) Token!1174)

(assert (=> b!260171 (= (head!874 (drop!203 lt!105950 0)) (apply!725 lt!105950 0))))

(declare-fun lt!105948 () Unit!4628)

(assert (=> b!260171 (= lt!105948 lt!105953)))

(declare-fun lt!105956 () List!3762)

(assert (=> b!260171 (= lt!105956 (list!1506 lt!105860))))

(declare-fun lt!105946 () Unit!4628)

(declare-fun lemmaDropTail!182 (List!3762 Int) Unit!4628)

(assert (=> b!260171 (= lt!105946 (lemmaDropTail!182 lt!105956 0))))

(declare-fun tail!464 (List!3762) List!3762)

(assert (=> b!260171 (= (tail!464 (drop!203 lt!105956 0)) (drop!203 lt!105956 (+ 0 1)))))

(declare-fun lt!105952 () Unit!4628)

(assert (=> b!260171 (= lt!105952 lt!105946)))

(declare-fun lt!105945 () Unit!4628)

(declare-fun forallContained!272 (List!3762 Int Token!1174) Unit!4628)

(declare-fun apply!726 (BalanceConc!2514 Int) Token!1174)

(assert (=> b!260171 (= lt!105945 (forallContained!272 (list!1506 lt!105860) lambda!8684 (apply!726 lt!105860 0)))))

(declare-fun lt!105957 () BalanceConc!2512)

(assert (=> b!260171 (= lt!105957 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!284 (LexerInterface!601 List!3761 BalanceConc!2512) Option!776)

(declare-fun ++!961 (BalanceConc!2512 BalanceConc!2512) BalanceConc!2512)

(assert (=> b!260171 (= lt!105951 (maxPrefixZipperSequence!284 thiss!17480 rules!1920 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))

(declare-fun res!119849 () Bool)

(assert (=> b!260171 (= res!119849 ((_ is Some!775) lt!105951))))

(declare-fun e!161519 () Bool)

(assert (=> b!260171 (=> (not res!119849) (not e!161519))))

(assert (=> b!260171 (= c!49223 e!161519)))

(declare-fun call!13865 () BalanceConc!2512)

(declare-fun bm!13862 () Bool)

(assert (=> bm!13862 (= call!13865 (++!961 call!13867 (ite c!49223 lt!105957 call!13866)))))

(declare-fun lt!105958 () BalanceConc!2512)

(declare-fun dropList!150 (BalanceConc!2514 Int) List!3762)

(assert (=> d!74411 (= (list!1503 lt!105958) (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 (dropList!150 lt!105860 0) separatorToken!170))))

(assert (=> d!74411 (= lt!105958 e!161523)))

(declare-fun c!49222 () Bool)

(declare-fun size!2979 (BalanceConc!2514) Int)

(assert (=> d!74411 (= c!49222 (>= 0 (size!2979 lt!105860)))))

(declare-fun lt!105954 () Unit!4628)

(declare-fun lemmaContentSubsetPreservesForall!94 (List!3762 List!3762 Int) Unit!4628)

(assert (=> d!74411 (= lt!105954 (lemmaContentSubsetPreservesForall!94 (list!1506 lt!105860) (dropList!150 lt!105860 0) lambda!8683))))

(declare-fun e!161522 () Bool)

(assert (=> d!74411 e!161522))

(declare-fun res!119850 () Bool)

(assert (=> d!74411 (=> (not res!119850) (not e!161522))))

(assert (=> d!74411 (= res!119850 (>= 0 0))))

(assert (=> d!74411 (= (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0) lt!105958)))

(declare-fun b!260172 () Bool)

(assert (=> b!260172 (= e!161518 call!13865)))

(declare-fun b!260173 () Bool)

(assert (=> b!260173 (= e!161519 (= (_1!2311 (v!14608 lt!105951)) (apply!726 lt!105860 0)))))

(declare-fun b!260174 () Bool)

(assert (=> b!260174 (= e!161523 (BalanceConc!2513 Empty!1252))))

(declare-fun bm!13863 () Bool)

(assert (=> bm!13863 (= call!13868 (apply!726 lt!105860 0))))

(declare-fun b!260175 () Bool)

(assert (=> b!260175 (= c!49224 e!161520)))

(declare-fun res!119851 () Bool)

(assert (=> b!260175 (=> (not res!119851) (not e!161520))))

(assert (=> b!260175 (= res!119851 ((_ is Some!775) lt!105951))))

(declare-fun e!161521 () BalanceConc!2512)

(assert (=> b!260175 (= e!161518 e!161521)))

(declare-fun b!260176 () Bool)

(assert (=> b!260176 (= e!161521 (++!961 call!13865 lt!105957))))

(declare-fun b!260177 () Bool)

(assert (=> b!260177 (= e!161521 (BalanceConc!2513 Empty!1252))))

(declare-fun print!326 (LexerInterface!601 BalanceConc!2514) BalanceConc!2512)

(declare-fun singletonSeq!261 (Token!1174) BalanceConc!2514)

(declare-fun printTailRec!289 (LexerInterface!601 BalanceConc!2514 Int BalanceConc!2512) BalanceConc!2512)

(assert (=> b!260177 (= (print!326 thiss!17480 (singletonSeq!261 call!13864)) (printTailRec!289 thiss!17480 (singletonSeq!261 call!13864) 0 (BalanceConc!2513 Empty!1252)))))

(declare-fun lt!105949 () Unit!4628)

(declare-fun Unit!4630 () Unit!4628)

(assert (=> b!260177 (= lt!105949 Unit!4630)))

(declare-fun lt!105955 () Unit!4628)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!98 (LexerInterface!601 List!3761 List!3760 List!3760) Unit!4628)

(assert (=> b!260177 (= lt!105955 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!98 thiss!17480 rules!1920 (list!1503 call!13866) (list!1503 lt!105957)))))

(assert (=> b!260177 false))

(declare-fun lt!105947 () Unit!4628)

(declare-fun Unit!4631 () Unit!4628)

(assert (=> b!260177 (= lt!105947 Unit!4631)))

(declare-fun b!260178 () Bool)

(assert (=> b!260178 (= e!161522 (<= 0 (size!2979 lt!105860)))))

(assert (= (and d!74411 res!119850) b!260178))

(assert (= (and d!74411 c!49222) b!260174))

(assert (= (and d!74411 (not c!49222)) b!260171))

(assert (= (and b!260171 res!119849) b!260173))

(assert (= (and b!260171 c!49223) b!260172))

(assert (= (and b!260171 (not c!49223)) b!260175))

(assert (= (and b!260175 res!119851) b!260170))

(assert (= (and b!260175 c!49224) b!260176))

(assert (= (and b!260175 (not c!49224)) b!260177))

(assert (= (or b!260176 b!260177) bm!13860))

(assert (= (or b!260176 b!260177) bm!13859))

(assert (= (or b!260172 bm!13860 b!260170) bm!13863))

(assert (= (or b!260172 b!260176) bm!13861))

(assert (= (or b!260172 b!260176) bm!13862))

(declare-fun m!322683 () Bool)

(assert (=> b!260173 m!322683))

(declare-fun m!322685 () Bool)

(assert (=> b!260178 m!322685))

(declare-fun m!322687 () Bool)

(assert (=> b!260177 m!322687))

(declare-fun m!322689 () Bool)

(assert (=> b!260177 m!322689))

(declare-fun m!322691 () Bool)

(assert (=> b!260177 m!322691))

(declare-fun m!322693 () Bool)

(assert (=> b!260177 m!322693))

(assert (=> b!260177 m!322689))

(declare-fun m!322695 () Bool)

(assert (=> b!260177 m!322695))

(assert (=> b!260177 m!322689))

(assert (=> b!260177 m!322687))

(assert (=> b!260177 m!322693))

(declare-fun m!322697 () Bool)

(assert (=> b!260177 m!322697))

(assert (=> bm!13863 m!322683))

(declare-fun m!322699 () Bool)

(assert (=> bm!13862 m!322699))

(declare-fun m!322701 () Bool)

(assert (=> b!260171 m!322701))

(declare-fun m!322703 () Bool)

(assert (=> b!260171 m!322703))

(declare-fun m!322705 () Bool)

(assert (=> b!260171 m!322705))

(declare-fun m!322707 () Bool)

(assert (=> b!260171 m!322707))

(declare-fun m!322709 () Bool)

(assert (=> b!260171 m!322709))

(assert (=> b!260171 m!322701))

(declare-fun m!322711 () Bool)

(assert (=> b!260171 m!322711))

(declare-fun m!322713 () Bool)

(assert (=> b!260171 m!322713))

(declare-fun m!322715 () Bool)

(assert (=> b!260171 m!322715))

(assert (=> b!260171 m!322607))

(declare-fun m!322717 () Bool)

(assert (=> b!260171 m!322717))

(declare-fun m!322719 () Bool)

(assert (=> b!260171 m!322719))

(assert (=> b!260171 m!322607))

(assert (=> b!260171 m!322683))

(declare-fun m!322721 () Bool)

(assert (=> b!260171 m!322721))

(assert (=> b!260171 m!322683))

(assert (=> b!260171 m!322705))

(declare-fun m!322723 () Bool)

(assert (=> b!260171 m!322723))

(declare-fun m!322725 () Bool)

(assert (=> b!260171 m!322725))

(assert (=> b!260171 m!322683))

(assert (=> b!260171 m!322709))

(assert (=> b!260171 m!322717))

(declare-fun m!322727 () Bool)

(assert (=> bm!13861 m!322727))

(declare-fun m!322729 () Bool)

(assert (=> b!260176 m!322729))

(declare-fun m!322731 () Bool)

(assert (=> bm!13859 m!322731))

(declare-fun m!322733 () Bool)

(assert (=> d!74411 m!322733))

(assert (=> d!74411 m!322607))

(assert (=> d!74411 m!322733))

(declare-fun m!322735 () Bool)

(assert (=> d!74411 m!322735))

(declare-fun m!322737 () Bool)

(assert (=> d!74411 m!322737))

(assert (=> d!74411 m!322685))

(assert (=> d!74411 m!322607))

(assert (=> d!74411 m!322733))

(declare-fun m!322739 () Bool)

(assert (=> d!74411 m!322739))

(assert (=> b!259988 d!74411))

(declare-fun bs!28232 () Bool)

(declare-fun b!260313 () Bool)

(assert (= bs!28232 (and b!260313 b!260004)))

(declare-fun lambda!8690 () Int)

(assert (=> bs!28232 (not (= lambda!8690 lambda!8662))))

(declare-fun bs!28233 () Bool)

(assert (= bs!28233 (and b!260313 d!74389)))

(assert (=> bs!28233 (= lambda!8690 lambda!8672)))

(declare-fun bs!28234 () Bool)

(assert (= bs!28234 (and b!260313 d!74411)))

(assert (=> bs!28234 (not (= lambda!8690 lambda!8683))))

(declare-fun bs!28235 () Bool)

(assert (= bs!28235 (and b!260313 b!260171)))

(assert (=> bs!28235 (= lambda!8690 lambda!8684)))

(declare-fun b!260319 () Bool)

(declare-fun e!161620 () Bool)

(assert (=> b!260319 (= e!161620 true)))

(declare-fun b!260318 () Bool)

(declare-fun e!161619 () Bool)

(assert (=> b!260318 (= e!161619 e!161620)))

(declare-fun b!260317 () Bool)

(declare-fun e!161618 () Bool)

(assert (=> b!260317 (= e!161618 e!161619)))

(assert (=> b!260313 e!161618))

(assert (= b!260318 b!260319))

(assert (= b!260317 b!260318))

(assert (= (and b!260313 ((_ is Cons!3751) rules!1920)) b!260317))

(assert (=> b!260319 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8690))))

(assert (=> b!260319 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8690))))

(assert (=> b!260313 true))

(declare-fun call!13896 () List!3760)

(declare-fun call!13898 () BalanceConc!2512)

(declare-fun c!49248 () Bool)

(declare-fun bm!13889 () Bool)

(declare-fun call!13897 () BalanceConc!2512)

(assert (=> bm!13889 (= call!13896 (list!1503 (ite c!49248 call!13898 call!13897)))))

(declare-fun call!13895 () List!3760)

(declare-fun bm!13890 () Bool)

(declare-fun call!13894 () List!3760)

(declare-fun lt!105989 () List!3760)

(declare-fun ++!962 (List!3760 List!3760) List!3760)

(assert (=> bm!13890 (= call!13894 (++!962 call!13896 (ite c!49248 lt!105989 call!13895)))))

(declare-fun b!260309 () Bool)

(declare-fun c!49245 () Bool)

(declare-datatypes ((tuple2!4192 0))(
  ( (tuple2!4193 (_1!2312 Token!1174) (_2!2312 List!3760)) )
))
(declare-datatypes ((Option!777 0))(
  ( (None!776) (Some!776 (v!14609 tuple2!4192)) )
))
(declare-fun lt!105991 () Option!777)

(assert (=> b!260309 (= c!49245 (and ((_ is Some!776) lt!105991) (not (= (_1!2312 (v!14609 lt!105991)) (h!9149 tokens!465)))))))

(declare-fun e!161617 () List!3760)

(declare-fun e!161614 () List!3760)

(assert (=> b!260309 (= e!161617 e!161614)))

(declare-fun bm!13891 () Bool)

(assert (=> bm!13891 (= call!13898 (charsOf!360 (h!9149 tokens!465)))))

(declare-fun b!260310 () Bool)

(declare-fun e!161615 () List!3760)

(assert (=> b!260310 (= e!161615 Nil!3750)))

(declare-fun b!260311 () Bool)

(declare-fun e!161616 () BalanceConc!2512)

(assert (=> b!260311 (= e!161616 call!13897)))

(declare-fun b!260312 () Bool)

(assert (=> b!260312 (= e!161614 Nil!3750)))

(assert (=> b!260312 (= (print!326 thiss!17480 (singletonSeq!261 (h!9149 tokens!465))) (printTailRec!289 thiss!17480 (singletonSeq!261 (h!9149 tokens!465)) 0 (BalanceConc!2513 Empty!1252)))))

(declare-fun lt!105990 () Unit!4628)

(declare-fun Unit!4632 () Unit!4628)

(assert (=> b!260312 (= lt!105990 Unit!4632)))

(declare-fun lt!105994 () Unit!4628)

(assert (=> b!260312 (= lt!105994 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!98 thiss!17480 rules!1920 call!13895 lt!105989))))

(assert (=> b!260312 false))

(declare-fun lt!105993 () Unit!4628)

(declare-fun Unit!4633 () Unit!4628)

(assert (=> b!260312 (= lt!105993 Unit!4633)))

(declare-fun bm!13892 () Bool)

(assert (=> bm!13892 (= call!13895 (list!1503 e!161616))))

(declare-fun c!49246 () Bool)

(assert (=> bm!13892 (= c!49246 c!49245)))

(assert (=> b!260313 (= e!161615 e!161617)))

(declare-fun lt!105992 () Unit!4628)

(assert (=> b!260313 (= lt!105992 (forallContained!272 tokens!465 lambda!8690 (h!9149 tokens!465)))))

(assert (=> b!260313 (= lt!105989 (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 (t!36798 tokens!465) separatorToken!170))))

(declare-fun maxPrefix!321 (LexerInterface!601 List!3761 List!3760) Option!777)

(assert (=> b!260313 (= lt!105991 (maxPrefix!321 thiss!17480 rules!1920 (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989)))))

(assert (=> b!260313 (= c!49248 (and ((_ is Some!776) lt!105991) (= (_1!2312 (v!14609 lt!105991)) (h!9149 tokens!465))))))

(declare-fun bm!13893 () Bool)

(assert (=> bm!13893 (= call!13897 call!13898)))

(declare-fun b!260314 () Bool)

(assert (=> b!260314 (= e!161614 (++!962 call!13894 lt!105989))))

(declare-fun d!74415 () Bool)

(declare-fun c!49247 () Bool)

(assert (=> d!74415 (= c!49247 ((_ is Cons!3752) tokens!465))))

(assert (=> d!74415 (= (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!161615)))

(declare-fun b!260315 () Bool)

(assert (=> b!260315 (= e!161616 (charsOf!360 separatorToken!170))))

(declare-fun b!260316 () Bool)

(assert (=> b!260316 (= e!161617 call!13894)))

(assert (= (and d!74415 c!49247) b!260313))

(assert (= (and d!74415 (not c!49247)) b!260310))

(assert (= (and b!260313 c!49248) b!260316))

(assert (= (and b!260313 (not c!49248)) b!260309))

(assert (= (and b!260309 c!49245) b!260314))

(assert (= (and b!260309 (not c!49245)) b!260312))

(assert (= (or b!260314 b!260312) bm!13893))

(assert (= (or b!260314 b!260312) bm!13892))

(assert (= (and bm!13892 c!49246) b!260315))

(assert (= (and bm!13892 (not c!49246)) b!260311))

(assert (= (or b!260316 bm!13893) bm!13891))

(assert (= (or b!260316 b!260314) bm!13889))

(assert (= (or b!260316 b!260314) bm!13890))

(declare-fun m!322831 () Bool)

(assert (=> bm!13892 m!322831))

(declare-fun m!322833 () Bool)

(assert (=> b!260312 m!322833))

(assert (=> b!260312 m!322833))

(declare-fun m!322835 () Bool)

(assert (=> b!260312 m!322835))

(assert (=> b!260312 m!322833))

(declare-fun m!322837 () Bool)

(assert (=> b!260312 m!322837))

(declare-fun m!322839 () Bool)

(assert (=> b!260312 m!322839))

(declare-fun m!322841 () Bool)

(assert (=> b!260315 m!322841))

(declare-fun m!322843 () Bool)

(assert (=> b!260313 m!322843))

(declare-fun m!322845 () Bool)

(assert (=> b!260313 m!322845))

(declare-fun m!322847 () Bool)

(assert (=> b!260313 m!322847))

(declare-fun m!322849 () Bool)

(assert (=> b!260313 m!322849))

(declare-fun m!322851 () Bool)

(assert (=> b!260313 m!322851))

(assert (=> b!260313 m!322847))

(assert (=> b!260313 m!322851))

(assert (=> b!260313 m!322849))

(declare-fun m!322853 () Bool)

(assert (=> b!260313 m!322853))

(assert (=> bm!13891 m!322851))

(declare-fun m!322855 () Bool)

(assert (=> b!260314 m!322855))

(declare-fun m!322857 () Bool)

(assert (=> bm!13889 m!322857))

(declare-fun m!322859 () Bool)

(assert (=> bm!13890 m!322859))

(assert (=> b!259988 d!74415))

(declare-fun d!74441 () Bool)

(assert (=> d!74441 (= (list!1503 (seqFromList!798 lt!105861)) (list!1507 (c!49188 (seqFromList!798 lt!105861))))))

(declare-fun bs!28236 () Bool)

(assert (= bs!28236 d!74441))

(declare-fun m!322861 () Bool)

(assert (=> bs!28236 m!322861))

(assert (=> b!259999 d!74441))

(declare-fun d!74443 () Bool)

(declare-fun fromListB!293 (List!3760) BalanceConc!2512)

(assert (=> d!74443 (= (seqFromList!798 lt!105861) (fromListB!293 lt!105861))))

(declare-fun bs!28237 () Bool)

(assert (= bs!28237 d!74443))

(declare-fun m!322863 () Bool)

(assert (=> bs!28237 m!322863))

(assert (=> b!259999 d!74443))

(declare-fun d!74445 () Bool)

(assert (=> d!74445 (= (inv!4622 (tag!925 (rule!1300 (h!9149 tokens!465)))) (= (mod (str.len (value!24692 (tag!925 (rule!1300 (h!9149 tokens!465))))) 2) 0))))

(assert (=> b!259991 d!74445))

(declare-fun d!74447 () Bool)

(declare-fun res!119877 () Bool)

(declare-fun e!161621 () Bool)

(assert (=> d!74447 (=> (not res!119877) (not e!161621))))

(assert (=> d!74447 (= res!119877 (semiInverseModEq!245 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465))))))))

(assert (=> d!74447 (= (inv!4626 (transformation!715 (rule!1300 (h!9149 tokens!465)))) e!161621)))

(declare-fun b!260320 () Bool)

(assert (=> b!260320 (= e!161621 (equivClasses!228 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465))))))))

(assert (= (and d!74447 res!119877) b!260320))

(declare-fun m!322865 () Bool)

(assert (=> d!74447 m!322865))

(declare-fun m!322867 () Bool)

(assert (=> b!260320 m!322867))

(assert (=> b!259991 d!74447))

(declare-fun d!74449 () Bool)

(declare-fun lt!105999 () Bool)

(declare-fun e!161626 () Bool)

(assert (=> d!74449 (= lt!105999 e!161626)))

(declare-fun res!119886 () Bool)

(assert (=> d!74449 (=> (not res!119886) (not e!161626))))

(declare-datatypes ((tuple2!4194 0))(
  ( (tuple2!4195 (_1!2313 BalanceConc!2514) (_2!2313 BalanceConc!2512)) )
))
(declare-fun lex!395 (LexerInterface!601 List!3761 BalanceConc!2512) tuple2!4194)

(assert (=> d!74449 (= res!119886 (= (list!1506 (_1!2313 (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170))))) (list!1506 (singletonSeq!261 separatorToken!170))))))

(declare-fun e!161627 () Bool)

(assert (=> d!74449 (= lt!105999 e!161627)))

(declare-fun res!119885 () Bool)

(assert (=> d!74449 (=> (not res!119885) (not e!161627))))

(declare-fun lt!106000 () tuple2!4194)

(assert (=> d!74449 (= res!119885 (= (size!2979 (_1!2313 lt!106000)) 1))))

(assert (=> d!74449 (= lt!106000 (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170))))))

(assert (=> d!74449 (not (isEmpty!2346 rules!1920))))

(assert (=> d!74449 (= (rulesProduceIndividualToken!350 thiss!17480 rules!1920 separatorToken!170) lt!105999)))

(declare-fun b!260327 () Bool)

(declare-fun res!119884 () Bool)

(assert (=> b!260327 (=> (not res!119884) (not e!161627))))

(assert (=> b!260327 (= res!119884 (= (apply!726 (_1!2313 lt!106000) 0) separatorToken!170))))

(declare-fun b!260328 () Bool)

(declare-fun isEmpty!2350 (BalanceConc!2512) Bool)

(assert (=> b!260328 (= e!161627 (isEmpty!2350 (_2!2313 lt!106000)))))

(declare-fun b!260329 () Bool)

(assert (=> b!260329 (= e!161626 (isEmpty!2350 (_2!2313 (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170))))))))

(assert (= (and d!74449 res!119885) b!260327))

(assert (= (and b!260327 res!119884) b!260328))

(assert (= (and d!74449 res!119886) b!260329))

(declare-fun m!322869 () Bool)

(assert (=> d!74449 m!322869))

(declare-fun m!322871 () Bool)

(assert (=> d!74449 m!322871))

(declare-fun m!322873 () Bool)

(assert (=> d!74449 m!322873))

(declare-fun m!322875 () Bool)

(assert (=> d!74449 m!322875))

(declare-fun m!322877 () Bool)

(assert (=> d!74449 m!322877))

(assert (=> d!74449 m!322869))

(assert (=> d!74449 m!322873))

(declare-fun m!322879 () Bool)

(assert (=> d!74449 m!322879))

(assert (=> d!74449 m!322869))

(assert (=> d!74449 m!322467))

(declare-fun m!322881 () Bool)

(assert (=> b!260327 m!322881))

(declare-fun m!322883 () Bool)

(assert (=> b!260328 m!322883))

(assert (=> b!260329 m!322869))

(assert (=> b!260329 m!322869))

(assert (=> b!260329 m!322873))

(assert (=> b!260329 m!322873))

(assert (=> b!260329 m!322875))

(declare-fun m!322885 () Bool)

(assert (=> b!260329 m!322885))

(assert (=> b!260002 d!74449))

(declare-fun e!161630 () Bool)

(assert (=> b!259995 (= tp!100085 e!161630)))

(declare-fun b!260340 () Bool)

(declare-fun tp_is_empty!1787 () Bool)

(assert (=> b!260340 (= e!161630 tp_is_empty!1787)))

(declare-fun b!260342 () Bool)

(declare-fun tp!100169 () Bool)

(assert (=> b!260342 (= e!161630 tp!100169)))

(declare-fun b!260341 () Bool)

(declare-fun tp!100167 () Bool)

(declare-fun tp!100170 () Bool)

(assert (=> b!260341 (= e!161630 (and tp!100167 tp!100170))))

(declare-fun b!260343 () Bool)

(declare-fun tp!100166 () Bool)

(declare-fun tp!100168 () Bool)

(assert (=> b!260343 (= e!161630 (and tp!100166 tp!100168))))

(assert (= (and b!259995 ((_ is ElementMatch!939) (regex!715 (rule!1300 separatorToken!170)))) b!260340))

(assert (= (and b!259995 ((_ is Concat!1677) (regex!715 (rule!1300 separatorToken!170)))) b!260341))

(assert (= (and b!259995 ((_ is Star!939) (regex!715 (rule!1300 separatorToken!170)))) b!260342))

(assert (= (and b!259995 ((_ is Union!939) (regex!715 (rule!1300 separatorToken!170)))) b!260343))

(declare-fun b!260357 () Bool)

(declare-fun b_free!9685 () Bool)

(declare-fun b_next!9685 () Bool)

(assert (=> b!260357 (= b_free!9685 (not b_next!9685))))

(declare-fun tp!100181 () Bool)

(declare-fun b_and!20121 () Bool)

(assert (=> b!260357 (= tp!100181 b_and!20121)))

(declare-fun b_free!9687 () Bool)

(declare-fun b_next!9687 () Bool)

(assert (=> b!260357 (= b_free!9687 (not b_next!9687))))

(declare-fun tb!14001 () Bool)

(declare-fun t!36855 () Bool)

(assert (=> (and b!260357 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) t!36855) tb!14001))

(declare-fun result!17464 () Bool)

(assert (= result!17464 result!17416))

(assert (=> b!260027 t!36855))

(declare-fun t!36857 () Bool)

(declare-fun tb!14003 () Bool)

(assert (=> (and b!260357 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465))))) t!36857) tb!14003))

(declare-fun result!17466 () Bool)

(assert (= result!17466 result!17424))

(assert (=> b!260034 t!36857))

(declare-fun b_and!20123 () Bool)

(declare-fun tp!100185 () Bool)

(assert (=> b!260357 (= tp!100185 (and (=> t!36855 result!17464) (=> t!36857 result!17466) b_and!20123))))

(declare-fun e!161645 () Bool)

(assert (=> b!259993 (= tp!100091 e!161645)))

(declare-fun e!161643 () Bool)

(declare-fun tp!100182 () Bool)

(declare-fun b!260355 () Bool)

(declare-fun e!161647 () Bool)

(assert (=> b!260355 (= e!161643 (and (inv!21 (value!24693 (h!9149 (t!36798 tokens!465)))) e!161647 tp!100182))))

(declare-fun e!161648 () Bool)

(assert (=> b!260357 (= e!161648 (and tp!100181 tp!100185))))

(declare-fun tp!100183 () Bool)

(declare-fun b!260356 () Bool)

(assert (=> b!260356 (= e!161647 (and tp!100183 (inv!4622 (tag!925 (rule!1300 (h!9149 (t!36798 tokens!465))))) (inv!4626 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) e!161648))))

(declare-fun b!260354 () Bool)

(declare-fun tp!100184 () Bool)

(assert (=> b!260354 (= e!161645 (and (inv!4625 (h!9149 (t!36798 tokens!465))) e!161643 tp!100184))))

(assert (= b!260356 b!260357))

(assert (= b!260355 b!260356))

(assert (= b!260354 b!260355))

(assert (= (and b!259993 ((_ is Cons!3752) (t!36798 tokens!465))) b!260354))

(declare-fun m!322887 () Bool)

(assert (=> b!260355 m!322887))

(declare-fun m!322889 () Bool)

(assert (=> b!260356 m!322889))

(declare-fun m!322891 () Bool)

(assert (=> b!260356 m!322891))

(declare-fun m!322893 () Bool)

(assert (=> b!260354 m!322893))

(declare-fun e!161649 () Bool)

(assert (=> b!259997 (= tp!100088 e!161649)))

(declare-fun b!260358 () Bool)

(assert (=> b!260358 (= e!161649 tp_is_empty!1787)))

(declare-fun b!260360 () Bool)

(declare-fun tp!100189 () Bool)

(assert (=> b!260360 (= e!161649 tp!100189)))

(declare-fun b!260359 () Bool)

(declare-fun tp!100187 () Bool)

(declare-fun tp!100190 () Bool)

(assert (=> b!260359 (= e!161649 (and tp!100187 tp!100190))))

(declare-fun b!260361 () Bool)

(declare-fun tp!100186 () Bool)

(declare-fun tp!100188 () Bool)

(assert (=> b!260361 (= e!161649 (and tp!100186 tp!100188))))

(assert (= (and b!259997 ((_ is ElementMatch!939) (regex!715 (h!9148 rules!1920)))) b!260358))

(assert (= (and b!259997 ((_ is Concat!1677) (regex!715 (h!9148 rules!1920)))) b!260359))

(assert (= (and b!259997 ((_ is Star!939) (regex!715 (h!9148 rules!1920)))) b!260360))

(assert (= (and b!259997 ((_ is Union!939) (regex!715 (h!9148 rules!1920)))) b!260361))

(declare-fun b!260366 () Bool)

(declare-fun e!161652 () Bool)

(declare-fun tp!100193 () Bool)

(assert (=> b!260366 (= e!161652 (and tp_is_empty!1787 tp!100193))))

(assert (=> b!259998 (= tp!100080 e!161652)))

(assert (= (and b!259998 ((_ is Cons!3750) (originalCharacters!758 separatorToken!170))) b!260366))

(declare-fun b!260367 () Bool)

(declare-fun e!161653 () Bool)

(declare-fun tp!100194 () Bool)

(assert (=> b!260367 (= e!161653 (and tp_is_empty!1787 tp!100194))))

(assert (=> b!259990 (= tp!100084 e!161653)))

(assert (= (and b!259990 ((_ is Cons!3750) (originalCharacters!758 (h!9149 tokens!465)))) b!260367))

(declare-fun b!260378 () Bool)

(declare-fun b_free!9689 () Bool)

(declare-fun b_next!9689 () Bool)

(assert (=> b!260378 (= b_free!9689 (not b_next!9689))))

(declare-fun tp!100206 () Bool)

(declare-fun b_and!20125 () Bool)

(assert (=> b!260378 (= tp!100206 b_and!20125)))

(declare-fun b_free!9691 () Bool)

(declare-fun b_next!9691 () Bool)

(assert (=> b!260378 (= b_free!9691 (not b_next!9691))))

(declare-fun tb!14005 () Bool)

(declare-fun t!36859 () Bool)

(assert (=> (and b!260378 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) t!36859) tb!14005))

(declare-fun result!17472 () Bool)

(assert (= result!17472 result!17416))

(assert (=> b!260027 t!36859))

(declare-fun tb!14007 () Bool)

(declare-fun t!36861 () Bool)

(assert (=> (and b!260378 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465))))) t!36861) tb!14007))

(declare-fun result!17474 () Bool)

(assert (= result!17474 result!17424))

(assert (=> b!260034 t!36861))

(declare-fun tp!100203 () Bool)

(declare-fun b_and!20127 () Bool)

(assert (=> b!260378 (= tp!100203 (and (=> t!36859 result!17472) (=> t!36861 result!17474) b_and!20127))))

(declare-fun e!161665 () Bool)

(assert (=> b!260378 (= e!161665 (and tp!100206 tp!100203))))

(declare-fun b!260377 () Bool)

(declare-fun tp!100205 () Bool)

(declare-fun e!161664 () Bool)

(assert (=> b!260377 (= e!161664 (and tp!100205 (inv!4622 (tag!925 (h!9148 (t!36797 rules!1920)))) (inv!4626 (transformation!715 (h!9148 (t!36797 rules!1920)))) e!161665))))

(declare-fun b!260376 () Bool)

(declare-fun e!161663 () Bool)

(declare-fun tp!100204 () Bool)

(assert (=> b!260376 (= e!161663 (and e!161664 tp!100204))))

(assert (=> b!259992 (= tp!100081 e!161663)))

(assert (= b!260377 b!260378))

(assert (= b!260376 b!260377))

(assert (= (and b!259992 ((_ is Cons!3751) (t!36797 rules!1920))) b!260376))

(declare-fun m!322895 () Bool)

(assert (=> b!260377 m!322895))

(declare-fun m!322897 () Bool)

(assert (=> b!260377 m!322897))

(declare-fun e!161666 () Bool)

(assert (=> b!259991 (= tp!100090 e!161666)))

(declare-fun b!260379 () Bool)

(assert (=> b!260379 (= e!161666 tp_is_empty!1787)))

(declare-fun b!260381 () Bool)

(declare-fun tp!100210 () Bool)

(assert (=> b!260381 (= e!161666 tp!100210)))

(declare-fun b!260380 () Bool)

(declare-fun tp!100208 () Bool)

(declare-fun tp!100211 () Bool)

(assert (=> b!260380 (= e!161666 (and tp!100208 tp!100211))))

(declare-fun b!260382 () Bool)

(declare-fun tp!100207 () Bool)

(declare-fun tp!100209 () Bool)

(assert (=> b!260382 (= e!161666 (and tp!100207 tp!100209))))

(assert (= (and b!259991 ((_ is ElementMatch!939) (regex!715 (rule!1300 (h!9149 tokens!465))))) b!260379))

(assert (= (and b!259991 ((_ is Concat!1677) (regex!715 (rule!1300 (h!9149 tokens!465))))) b!260380))

(assert (= (and b!259991 ((_ is Star!939) (regex!715 (rule!1300 (h!9149 tokens!465))))) b!260381))

(assert (= (and b!259991 ((_ is Union!939) (regex!715 (rule!1300 (h!9149 tokens!465))))) b!260382))

(declare-fun b_lambda!7941 () Bool)

(assert (= b_lambda!7923 (or (and b!260378 b_free!9691 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) (and b!260000 b_free!9675 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) (and b!260003 b_free!9671) (and b!259989 b_free!9667 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) (and b!260357 b_free!9687 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) b_lambda!7941)))

(declare-fun b_lambda!7943 () Bool)

(assert (= b_lambda!7927 (or b!260004 b_lambda!7943)))

(declare-fun bs!28238 () Bool)

(declare-fun d!74451 () Bool)

(assert (= bs!28238 (and d!74451 b!260004)))

(assert (=> bs!28238 (= (dynLambda!1880 lambda!8662 (h!9149 tokens!465)) (not (isSeparator!715 (rule!1300 (h!9149 tokens!465)))))))

(assert (=> b!260041 d!74451))

(declare-fun b_lambda!7945 () Bool)

(assert (= b_lambda!7925 (or (and b!259989 b_free!9667) (and b!260003 b_free!9671 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) (and b!260378 b_free!9691 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) (and b!260000 b_free!9675 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) (and b!260357 b_free!9687 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) b_lambda!7945)))

(check-sat b_and!20125 (not b!260057) (not b_next!9667) (not b!260035) (not b_next!9669) b_and!20085 (not b!260359) (not b!260328) (not b!260117) (not b!260354) (not b!260376) (not b!260367) (not b_next!9675) (not tb!13969) (not d!74411) (not b_next!9673) (not b!260033) (not b!260066) (not b_next!9687) (not b!260317) b_and!20123 (not b!260178) (not d!74371) (not b!260036) (not b!260314) (not d!74389) (not b!260118) (not b!260341) (not b!260381) (not b!260067) (not d!74441) (not d!74443) (not b_next!9665) (not bm!13889) (not b!260179) (not b!260046) (not bm!13859) (not d!74377) tp_is_empty!1787 b_and!20127 (not b_lambda!7945) (not b!260177) b_and!20121 (not d!74405) (not b_next!9671) (not bm!13891) (not d!74381) (not tb!13975) b_and!20081 (not bm!13892) (not d!74365) (not b!260366) (not b!260042) (not b!260342) (not d!74449) (not b!260313) (not bm!13862) (not b!260361) (not b!260355) (not b_lambda!7941) (not b_lambda!7943) (not bm!13861) (not b!260058) (not b_next!9685) (not b!260320) (not bm!13863) (not b!260027) (not b!260312) (not b!260343) (not b!260329) (not b!260315) (not b!260173) b_and!20097 (not b!260380) (not b!260377) (not b!260171) (not b!260176) (not d!74373) (not d!74447) (not b!260121) (not b!260061) (not b!260028) (not b!260034) b_and!20077 (not b!260360) (not b!260112) (not b!260327) (not b!260382) (not b!260356) (not d!74409) (not b!260045) b_and!20095 b_and!20099 (not b_next!9689) (not b!260022) (not bm!13890) (not b!260103) (not b_next!9691))
(check-sat b_and!20125 (not b_next!9675) (not b_next!9673) (not b_next!9687) b_and!20123 (not b_next!9665) (not b_next!9667) b_and!20127 b_and!20081 (not b_next!9685) b_and!20097 b_and!20077 (not b_next!9689) (not b_next!9691) (not b_next!9669) b_and!20085 b_and!20121 (not b_next!9671) b_and!20095 b_and!20099)
(get-model)

(declare-fun d!74481 () Bool)

(declare-fun lt!106036 () Int)

(assert (=> d!74481 (>= lt!106036 0)))

(declare-fun e!161692 () Int)

(assert (=> d!74481 (= lt!106036 e!161692)))

(declare-fun c!49260 () Bool)

(assert (=> d!74481 (= c!49260 ((_ is Nil!3750) (originalCharacters!758 (h!9149 tokens!465))))))

(assert (=> d!74481 (= (size!2978 (originalCharacters!758 (h!9149 tokens!465))) lt!106036)))

(declare-fun b!260422 () Bool)

(assert (=> b!260422 (= e!161692 0)))

(declare-fun b!260423 () Bool)

(assert (=> b!260423 (= e!161692 (+ 1 (size!2978 (t!36796 (originalCharacters!758 (h!9149 tokens!465))))))))

(assert (= (and d!74481 c!49260) b!260422))

(assert (= (and d!74481 (not c!49260)) b!260423))

(declare-fun m!322989 () Bool)

(assert (=> b!260423 m!322989))

(assert (=> b!260035 d!74481))

(declare-fun d!74483 () Bool)

(declare-fun res!119913 () Bool)

(declare-fun e!161697 () Bool)

(assert (=> d!74483 (=> res!119913 e!161697)))

(assert (=> d!74483 (= res!119913 ((_ is Nil!3751) rules!1920))))

(assert (=> d!74483 (= (noDuplicateTag!211 thiss!17480 rules!1920 Nil!3754) e!161697)))

(declare-fun b!260428 () Bool)

(declare-fun e!161698 () Bool)

(assert (=> b!260428 (= e!161697 e!161698)))

(declare-fun res!119914 () Bool)

(assert (=> b!260428 (=> (not res!119914) (not e!161698))))

(declare-fun contains!693 (List!3764 String!4765) Bool)

(assert (=> b!260428 (= res!119914 (not (contains!693 Nil!3754 (tag!925 (h!9148 rules!1920)))))))

(declare-fun b!260429 () Bool)

(assert (=> b!260429 (= e!161698 (noDuplicateTag!211 thiss!17480 (t!36797 rules!1920) (Cons!3754 (tag!925 (h!9148 rules!1920)) Nil!3754)))))

(assert (= (and d!74483 (not res!119913)) b!260428))

(assert (= (and b!260428 res!119914) b!260429))

(declare-fun m!322991 () Bool)

(assert (=> b!260428 m!322991))

(declare-fun m!322993 () Bool)

(assert (=> b!260429 m!322993))

(assert (=> b!260045 d!74483))

(declare-fun d!74485 () Bool)

(assert (=> d!74485 (= (inv!4622 (tag!925 (h!9148 (t!36797 rules!1920)))) (= (mod (str.len (value!24692 (tag!925 (h!9148 (t!36797 rules!1920))))) 2) 0))))

(assert (=> b!260377 d!74485))

(declare-fun d!74487 () Bool)

(declare-fun res!119915 () Bool)

(declare-fun e!161699 () Bool)

(assert (=> d!74487 (=> (not res!119915) (not e!161699))))

(assert (=> d!74487 (= res!119915 (semiInverseModEq!245 (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toValue!1434 (transformation!715 (h!9148 (t!36797 rules!1920))))))))

(assert (=> d!74487 (= (inv!4626 (transformation!715 (h!9148 (t!36797 rules!1920)))) e!161699)))

(declare-fun b!260430 () Bool)

(assert (=> b!260430 (= e!161699 (equivClasses!228 (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toValue!1434 (transformation!715 (h!9148 (t!36797 rules!1920))))))))

(assert (= (and d!74487 res!119915) b!260430))

(declare-fun m!322995 () Bool)

(assert (=> d!74487 m!322995))

(declare-fun m!322997 () Bool)

(assert (=> b!260430 m!322997))

(assert (=> b!260377 d!74487))

(declare-fun d!74489 () Bool)

(assert (=> d!74489 (= (list!1503 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))) (list!1507 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))))))

(declare-fun bs!28246 () Bool)

(assert (= bs!28246 d!74489))

(declare-fun m!322999 () Bool)

(assert (=> bs!28246 m!322999))

(assert (=> b!260027 d!74489))

(declare-fun d!74491 () Bool)

(declare-fun res!119916 () Bool)

(declare-fun e!161700 () Bool)

(assert (=> d!74491 (=> res!119916 e!161700)))

(assert (=> d!74491 (= res!119916 ((_ is Nil!3752) (t!36798 tokens!465)))))

(assert (=> d!74491 (= (forall!915 (t!36798 tokens!465) lambda!8662) e!161700)))

(declare-fun b!260431 () Bool)

(declare-fun e!161701 () Bool)

(assert (=> b!260431 (= e!161700 e!161701)))

(declare-fun res!119917 () Bool)

(assert (=> b!260431 (=> (not res!119917) (not e!161701))))

(assert (=> b!260431 (= res!119917 (dynLambda!1880 lambda!8662 (h!9149 (t!36798 tokens!465))))))

(declare-fun b!260432 () Bool)

(assert (=> b!260432 (= e!161701 (forall!915 (t!36798 (t!36798 tokens!465)) lambda!8662))))

(assert (= (and d!74491 (not res!119916)) b!260431))

(assert (= (and b!260431 res!119917) b!260432))

(declare-fun b_lambda!7951 () Bool)

(assert (=> (not b_lambda!7951) (not b!260431)))

(declare-fun m!323001 () Bool)

(assert (=> b!260431 m!323001))

(declare-fun m!323003 () Bool)

(assert (=> b!260432 m!323003))

(assert (=> b!260042 d!74491))

(declare-fun d!74493 () Bool)

(assert (=> d!74493 true))

(declare-fun lambda!8696 () Int)

(declare-fun order!2837 () Int)

(declare-fun dynLambda!1885 (Int Int) Int)

(assert (=> d!74493 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (rule!1300 separatorToken!170)))) (dynLambda!1885 order!2837 lambda!8696))))

(declare-fun Forall2!140 (Int) Bool)

(assert (=> d!74493 (= (equivClasses!228 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toValue!1434 (transformation!715 (rule!1300 separatorToken!170)))) (Forall2!140 lambda!8696))))

(declare-fun bs!28247 () Bool)

(assert (= bs!28247 d!74493))

(declare-fun m!323005 () Bool)

(assert (=> bs!28247 m!323005))

(assert (=> b!260022 d!74493))

(declare-fun d!74495 () Bool)

(declare-fun c!49262 () Bool)

(assert (=> d!74495 (= c!49262 ((_ is IntegerValue!2211) (value!24693 (h!9149 (t!36798 tokens!465)))))))

(declare-fun e!161704 () Bool)

(assert (=> d!74495 (= (inv!21 (value!24693 (h!9149 (t!36798 tokens!465)))) e!161704)))

(declare-fun b!260437 () Bool)

(declare-fun e!161706 () Bool)

(assert (=> b!260437 (= e!161706 (inv!17 (value!24693 (h!9149 (t!36798 tokens!465)))))))

(declare-fun b!260438 () Bool)

(assert (=> b!260438 (= e!161704 (inv!16 (value!24693 (h!9149 (t!36798 tokens!465)))))))

(declare-fun b!260439 () Bool)

(declare-fun res!119920 () Bool)

(declare-fun e!161705 () Bool)

(assert (=> b!260439 (=> res!119920 e!161705)))

(assert (=> b!260439 (= res!119920 (not ((_ is IntegerValue!2213) (value!24693 (h!9149 (t!36798 tokens!465))))))))

(assert (=> b!260439 (= e!161706 e!161705)))

(declare-fun b!260440 () Bool)

(assert (=> b!260440 (= e!161704 e!161706)))

(declare-fun c!49261 () Bool)

(assert (=> b!260440 (= c!49261 ((_ is IntegerValue!2212) (value!24693 (h!9149 (t!36798 tokens!465)))))))

(declare-fun b!260441 () Bool)

(assert (=> b!260441 (= e!161705 (inv!15 (value!24693 (h!9149 (t!36798 tokens!465)))))))

(assert (= (and d!74495 c!49262) b!260438))

(assert (= (and d!74495 (not c!49262)) b!260440))

(assert (= (and b!260440 c!49261) b!260437))

(assert (= (and b!260440 (not c!49261)) b!260439))

(assert (= (and b!260439 (not res!119920)) b!260441))

(declare-fun m!323007 () Bool)

(assert (=> b!260437 m!323007))

(declare-fun m!323009 () Bool)

(assert (=> b!260438 m!323009))

(declare-fun m!323011 () Bool)

(assert (=> b!260441 m!323011))

(assert (=> b!260355 d!74495))

(declare-fun d!74497 () Bool)

(declare-fun e!161709 () Bool)

(assert (=> d!74497 e!161709))

(declare-fun res!119923 () Bool)

(assert (=> d!74497 (=> (not res!119923) (not e!161709))))

(declare-fun lt!106039 () BalanceConc!2514)

(assert (=> d!74497 (= res!119923 (= (list!1506 lt!106039) (Cons!3752 separatorToken!170 Nil!3752)))))

(declare-fun singleton!103 (Token!1174) BalanceConc!2514)

(assert (=> d!74497 (= lt!106039 (singleton!103 separatorToken!170))))

(assert (=> d!74497 (= (singletonSeq!261 separatorToken!170) lt!106039)))

(declare-fun b!260444 () Bool)

(declare-fun isBalanced!333 (Conc!1253) Bool)

(assert (=> b!260444 (= e!161709 (isBalanced!333 (c!49190 lt!106039)))))

(assert (= (and d!74497 res!119923) b!260444))

(declare-fun m!323013 () Bool)

(assert (=> d!74497 m!323013))

(declare-fun m!323015 () Bool)

(assert (=> d!74497 m!323015))

(declare-fun m!323017 () Bool)

(assert (=> b!260444 m!323017))

(assert (=> d!74449 d!74497))

(declare-fun d!74499 () Bool)

(declare-fun list!1510 (Conc!1253) List!3762)

(assert (=> d!74499 (= (list!1506 (_1!2313 (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170))))) (list!1510 (c!49190 (_1!2313 (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)))))))))

(declare-fun bs!28248 () Bool)

(assert (= bs!28248 d!74499))

(declare-fun m!323019 () Bool)

(assert (=> bs!28248 m!323019))

(assert (=> d!74449 d!74499))

(declare-fun b!260455 () Bool)

(declare-fun e!161717 () Bool)

(declare-fun lt!106042 () tuple2!4194)

(declare-fun isEmpty!2353 (BalanceConc!2514) Bool)

(assert (=> b!260455 (= e!161717 (not (isEmpty!2353 (_1!2313 lt!106042))))))

(declare-fun b!260456 () Bool)

(declare-fun e!161718 () Bool)

(assert (=> b!260456 (= e!161718 e!161717)))

(declare-fun res!119932 () Bool)

(declare-fun size!2980 (BalanceConc!2512) Int)

(assert (=> b!260456 (= res!119932 (< (size!2980 (_2!2313 lt!106042)) (size!2980 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)))))))

(assert (=> b!260456 (=> (not res!119932) (not e!161717))))

(declare-fun d!74501 () Bool)

(declare-fun e!161716 () Bool)

(assert (=> d!74501 e!161716))

(declare-fun res!119930 () Bool)

(assert (=> d!74501 (=> (not res!119930) (not e!161716))))

(assert (=> d!74501 (= res!119930 e!161718)))

(declare-fun c!49265 () Bool)

(assert (=> d!74501 (= c!49265 (> (size!2979 (_1!2313 lt!106042)) 0))))

(declare-fun lexTailRecV2!165 (LexerInterface!601 List!3761 BalanceConc!2512 BalanceConc!2512 BalanceConc!2512 BalanceConc!2514) tuple2!4194)

(assert (=> d!74501 (= lt!106042 (lexTailRecV2!165 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)) (BalanceConc!2513 Empty!1252) (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)) (BalanceConc!2515 Empty!1253)))))

(assert (=> d!74501 (= (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170))) lt!106042)))

(declare-fun b!260457 () Bool)

(declare-fun res!119931 () Bool)

(assert (=> b!260457 (=> (not res!119931) (not e!161716))))

(declare-datatypes ((tuple2!4196 0))(
  ( (tuple2!4197 (_1!2314 List!3762) (_2!2314 List!3760)) )
))
(declare-fun lexList!198 (LexerInterface!601 List!3761 List!3760) tuple2!4196)

(assert (=> b!260457 (= res!119931 (= (list!1506 (_1!2313 lt!106042)) (_1!2314 (lexList!198 thiss!17480 rules!1920 (list!1503 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)))))))))

(declare-fun b!260458 () Bool)

(assert (=> b!260458 (= e!161716 (= (list!1503 (_2!2313 lt!106042)) (_2!2314 (lexList!198 thiss!17480 rules!1920 (list!1503 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)))))))))

(declare-fun b!260459 () Bool)

(assert (=> b!260459 (= e!161718 (= (_2!2313 lt!106042) (print!326 thiss!17480 (singletonSeq!261 separatorToken!170))))))

(assert (= (and d!74501 c!49265) b!260456))

(assert (= (and d!74501 (not c!49265)) b!260459))

(assert (= (and b!260456 res!119932) b!260455))

(assert (= (and d!74501 res!119930) b!260457))

(assert (= (and b!260457 res!119931) b!260458))

(declare-fun m!323021 () Bool)

(assert (=> b!260457 m!323021))

(assert (=> b!260457 m!322873))

(declare-fun m!323023 () Bool)

(assert (=> b!260457 m!323023))

(assert (=> b!260457 m!323023))

(declare-fun m!323025 () Bool)

(assert (=> b!260457 m!323025))

(declare-fun m!323027 () Bool)

(assert (=> b!260456 m!323027))

(assert (=> b!260456 m!322873))

(declare-fun m!323029 () Bool)

(assert (=> b!260456 m!323029))

(declare-fun m!323031 () Bool)

(assert (=> d!74501 m!323031))

(assert (=> d!74501 m!322873))

(assert (=> d!74501 m!322873))

(declare-fun m!323033 () Bool)

(assert (=> d!74501 m!323033))

(declare-fun m!323035 () Bool)

(assert (=> b!260458 m!323035))

(assert (=> b!260458 m!322873))

(assert (=> b!260458 m!323023))

(assert (=> b!260458 m!323023))

(assert (=> b!260458 m!323025))

(declare-fun m!323037 () Bool)

(assert (=> b!260455 m!323037))

(assert (=> d!74449 d!74501))

(declare-fun d!74503 () Bool)

(assert (=> d!74503 (= (list!1506 (singletonSeq!261 separatorToken!170)) (list!1510 (c!49190 (singletonSeq!261 separatorToken!170))))))

(declare-fun bs!28249 () Bool)

(assert (= bs!28249 d!74503))

(declare-fun m!323039 () Bool)

(assert (=> bs!28249 m!323039))

(assert (=> d!74449 d!74503))

(declare-fun d!74505 () Bool)

(declare-fun lt!106045 () Int)

(declare-fun size!2981 (List!3762) Int)

(assert (=> d!74505 (= lt!106045 (size!2981 (list!1506 (_1!2313 lt!106000))))))

(declare-fun size!2982 (Conc!1253) Int)

(assert (=> d!74505 (= lt!106045 (size!2982 (c!49190 (_1!2313 lt!106000))))))

(assert (=> d!74505 (= (size!2979 (_1!2313 lt!106000)) lt!106045)))

(declare-fun bs!28250 () Bool)

(assert (= bs!28250 d!74505))

(declare-fun m!323041 () Bool)

(assert (=> bs!28250 m!323041))

(assert (=> bs!28250 m!323041))

(declare-fun m!323043 () Bool)

(assert (=> bs!28250 m!323043))

(declare-fun m!323045 () Bool)

(assert (=> bs!28250 m!323045))

(assert (=> d!74449 d!74505))

(declare-fun d!74507 () Bool)

(declare-fun lt!106082 () BalanceConc!2512)

(declare-fun printList!279 (LexerInterface!601 List!3762) List!3760)

(assert (=> d!74507 (= (list!1503 lt!106082) (printList!279 thiss!17480 (list!1506 (singletonSeq!261 separatorToken!170))))))

(assert (=> d!74507 (= lt!106082 (printTailRec!289 thiss!17480 (singletonSeq!261 separatorToken!170) 0 (BalanceConc!2513 Empty!1252)))))

(assert (=> d!74507 (= (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)) lt!106082)))

(declare-fun bs!28251 () Bool)

(assert (= bs!28251 d!74507))

(declare-fun m!323047 () Bool)

(assert (=> bs!28251 m!323047))

(assert (=> bs!28251 m!322869))

(assert (=> bs!28251 m!322871))

(assert (=> bs!28251 m!322871))

(declare-fun m!323049 () Bool)

(assert (=> bs!28251 m!323049))

(assert (=> bs!28251 m!322869))

(declare-fun m!323051 () Bool)

(assert (=> bs!28251 m!323051))

(assert (=> d!74449 d!74507))

(assert (=> d!74449 d!74387))

(declare-fun d!74509 () Bool)

(declare-fun e!161727 () Bool)

(assert (=> d!74509 e!161727))

(declare-fun res!119941 () Bool)

(assert (=> d!74509 (=> (not res!119941) (not e!161727))))

(declare-fun lt!106102 () BalanceConc!2512)

(assert (=> d!74509 (= res!119941 (= (list!1503 lt!106102) lt!105861))))

(declare-fun fromList!158 (List!3760) Conc!1252)

(assert (=> d!74509 (= lt!106102 (BalanceConc!2513 (fromList!158 lt!105861)))))

(assert (=> d!74509 (= (fromListB!293 lt!105861) lt!106102)))

(declare-fun b!260474 () Bool)

(declare-fun isBalanced!334 (Conc!1252) Bool)

(assert (=> b!260474 (= e!161727 (isBalanced!334 (fromList!158 lt!105861)))))

(assert (= (and d!74509 res!119941) b!260474))

(declare-fun m!323099 () Bool)

(assert (=> d!74509 m!323099))

(declare-fun m!323103 () Bool)

(assert (=> d!74509 m!323103))

(assert (=> b!260474 m!323103))

(assert (=> b!260474 m!323103))

(declare-fun m!323107 () Bool)

(assert (=> b!260474 m!323107))

(assert (=> d!74443 d!74509))

(declare-fun d!74511 () Bool)

(assert (=> d!74511 (= (inv!4630 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))) (isBalanced!334 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))))))

(declare-fun bs!28252 () Bool)

(assert (= bs!28252 d!74511))

(declare-fun m!323113 () Bool)

(assert (=> bs!28252 m!323113))

(assert (=> tb!13975 d!74511))

(declare-fun bs!28260 () Bool)

(declare-fun d!74515 () Bool)

(assert (= bs!28260 (and d!74515 d!74411)))

(declare-fun lambda!8699 () Int)

(assert (=> bs!28260 (not (= lambda!8699 lambda!8683))))

(declare-fun bs!28261 () Bool)

(assert (= bs!28261 (and d!74515 b!260004)))

(assert (=> bs!28261 (not (= lambda!8699 lambda!8662))))

(declare-fun bs!28262 () Bool)

(assert (= bs!28262 (and d!74515 b!260171)))

(assert (=> bs!28262 (= lambda!8699 lambda!8684)))

(declare-fun bs!28263 () Bool)

(assert (= bs!28263 (and d!74515 d!74389)))

(assert (=> bs!28263 (= lambda!8699 lambda!8672)))

(declare-fun bs!28264 () Bool)

(assert (= bs!28264 (and d!74515 b!260313)))

(assert (=> bs!28264 (= lambda!8699 lambda!8690)))

(declare-fun b!260500 () Bool)

(declare-fun e!161747 () Bool)

(assert (=> b!260500 (= e!161747 true)))

(declare-fun b!260499 () Bool)

(declare-fun e!161746 () Bool)

(assert (=> b!260499 (= e!161746 e!161747)))

(declare-fun b!260498 () Bool)

(declare-fun e!161745 () Bool)

(assert (=> b!260498 (= e!161745 e!161746)))

(assert (=> d!74515 e!161745))

(assert (= b!260499 b!260500))

(assert (= b!260498 b!260499))

(assert (= (and d!74515 ((_ is Cons!3751) rules!1920)) b!260498))

(assert (=> b!260500 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8699))))

(assert (=> b!260500 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8699))))

(assert (=> d!74515 true))

(declare-fun lt!106116 () Bool)

(assert (=> d!74515 (= lt!106116 (forall!915 (list!1506 lt!105860) lambda!8699))))

(declare-fun e!161743 () Bool)

(assert (=> d!74515 (= lt!106116 e!161743)))

(declare-fun res!119957 () Bool)

(assert (=> d!74515 (=> res!119957 e!161743)))

(assert (=> d!74515 (= res!119957 (not ((_ is Cons!3752) (list!1506 lt!105860))))))

(assert (=> d!74515 (not (isEmpty!2346 rules!1920))))

(assert (=> d!74515 (= (rulesProduceEachTokenIndividuallyList!215 thiss!17480 rules!1920 (list!1506 lt!105860)) lt!106116)))

(declare-fun b!260496 () Bool)

(declare-fun e!161744 () Bool)

(assert (=> b!260496 (= e!161743 e!161744)))

(declare-fun res!119958 () Bool)

(assert (=> b!260496 (=> (not res!119958) (not e!161744))))

(assert (=> b!260496 (= res!119958 (rulesProduceIndividualToken!350 thiss!17480 rules!1920 (h!9149 (list!1506 lt!105860))))))

(declare-fun b!260497 () Bool)

(assert (=> b!260497 (= e!161744 (rulesProduceEachTokenIndividuallyList!215 thiss!17480 rules!1920 (t!36798 (list!1506 lt!105860))))))

(assert (= (and d!74515 (not res!119957)) b!260496))

(assert (= (and b!260496 res!119958) b!260497))

(assert (=> d!74515 m!322607))

(declare-fun m!323169 () Bool)

(assert (=> d!74515 m!323169))

(assert (=> d!74515 m!322467))

(declare-fun m!323171 () Bool)

(assert (=> b!260496 m!323171))

(declare-fun m!323173 () Bool)

(assert (=> b!260497 m!323173))

(assert (=> b!260103 d!74515))

(declare-fun d!74541 () Bool)

(assert (=> d!74541 (= (list!1506 lt!105860) (list!1510 (c!49190 lt!105860)))))

(declare-fun bs!28265 () Bool)

(assert (= bs!28265 d!74541))

(declare-fun m!323175 () Bool)

(assert (=> bs!28265 m!323175))

(assert (=> b!260103 d!74541))

(declare-fun d!74543 () Bool)

(assert (=> d!74543 true))

(declare-fun order!2839 () Int)

(declare-fun lambda!8702 () Int)

(declare-fun dynLambda!1886 (Int Int) Int)

(assert (=> d!74543 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) (dynLambda!1886 order!2839 lambda!8702))))

(assert (=> d!74543 true))

(assert (=> d!74543 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (rule!1300 separatorToken!170)))) (dynLambda!1886 order!2839 lambda!8702))))

(declare-fun Forall!163 (Int) Bool)

(assert (=> d!74543 (= (semiInverseModEq!245 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toValue!1434 (transformation!715 (rule!1300 separatorToken!170)))) (Forall!163 lambda!8702))))

(declare-fun bs!28268 () Bool)

(assert (= bs!28268 d!74543))

(declare-fun m!323191 () Bool)

(assert (=> bs!28268 m!323191))

(assert (=> d!74365 d!74543))

(declare-fun d!74555 () Bool)

(declare-fun charsToInt!0 (List!3759) (_ BitVec 32))

(assert (=> d!74555 (= (inv!16 (value!24693 separatorToken!170)) (= (charsToInt!0 (text!5606 (value!24693 separatorToken!170))) (value!24684 (value!24693 separatorToken!170))))))

(declare-fun bs!28269 () Bool)

(assert (= bs!28269 d!74555))

(declare-fun m!323193 () Bool)

(assert (=> bs!28269 m!323193))

(assert (=> b!260058 d!74555))

(declare-fun bs!28270 () Bool)

(declare-fun d!74557 () Bool)

(assert (= bs!28270 (and d!74557 d!74543)))

(declare-fun lambda!8703 () Int)

(assert (=> bs!28270 (= (and (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) (= (toValue!1434 (transformation!715 (h!9148 rules!1920))) (toValue!1434 (transformation!715 (rule!1300 separatorToken!170))))) (= lambda!8703 lambda!8702))))

(assert (=> d!74557 true))

(assert (=> d!74557 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1886 order!2839 lambda!8703))))

(assert (=> d!74557 true))

(assert (=> d!74557 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1886 order!2839 lambda!8703))))

(assert (=> d!74557 (= (semiInverseModEq!245 (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (Forall!163 lambda!8703))))

(declare-fun bs!28271 () Bool)

(assert (= bs!28271 d!74557))

(declare-fun m!323197 () Bool)

(assert (=> bs!28271 m!323197))

(assert (=> d!74381 d!74557))

(declare-fun b!260530 () Bool)

(declare-fun res!119975 () Bool)

(declare-fun e!161761 () Bool)

(assert (=> b!260530 (=> (not res!119975) (not e!161761))))

(declare-fun ++!963 (Conc!1252 Conc!1252) Conc!1252)

(assert (=> b!260530 (= res!119975 (isBalanced!334 (++!963 (c!49188 call!13867) (c!49188 (ite c!49223 lt!105957 call!13866)))))))

(declare-fun b!260533 () Bool)

(declare-fun lt!106124 () BalanceConc!2512)

(assert (=> b!260533 (= e!161761 (= (list!1503 lt!106124) (++!962 (list!1503 call!13867) (list!1503 (ite c!49223 lt!105957 call!13866)))))))

(declare-fun b!260531 () Bool)

(declare-fun res!119974 () Bool)

(assert (=> b!260531 (=> (not res!119974) (not e!161761))))

(declare-fun height!141 (Conc!1252) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!260531 (= res!119974 (<= (height!141 (++!963 (c!49188 call!13867) (c!49188 (ite c!49223 lt!105957 call!13866)))) (+ (max!0 (height!141 (c!49188 call!13867)) (height!141 (c!49188 (ite c!49223 lt!105957 call!13866)))) 1)))))

(declare-fun b!260532 () Bool)

(declare-fun res!119972 () Bool)

(assert (=> b!260532 (=> (not res!119972) (not e!161761))))

(assert (=> b!260532 (= res!119972 (>= (height!141 (++!963 (c!49188 call!13867) (c!49188 (ite c!49223 lt!105957 call!13866)))) (max!0 (height!141 (c!49188 call!13867)) (height!141 (c!49188 (ite c!49223 lt!105957 call!13866))))))))

(declare-fun d!74561 () Bool)

(assert (=> d!74561 e!161761))

(declare-fun res!119973 () Bool)

(assert (=> d!74561 (=> (not res!119973) (not e!161761))))

(declare-fun appendAssocInst!54 (Conc!1252 Conc!1252) Bool)

(assert (=> d!74561 (= res!119973 (appendAssocInst!54 (c!49188 call!13867) (c!49188 (ite c!49223 lt!105957 call!13866))))))

(assert (=> d!74561 (= lt!106124 (BalanceConc!2513 (++!963 (c!49188 call!13867) (c!49188 (ite c!49223 lt!105957 call!13866)))))))

(assert (=> d!74561 (= (++!961 call!13867 (ite c!49223 lt!105957 call!13866)) lt!106124)))

(assert (= (and d!74561 res!119973) b!260530))

(assert (= (and b!260530 res!119975) b!260531))

(assert (= (and b!260531 res!119974) b!260532))

(assert (= (and b!260532 res!119972) b!260533))

(declare-fun m!323199 () Bool)

(assert (=> b!260531 m!323199))

(declare-fun m!323201 () Bool)

(assert (=> b!260531 m!323201))

(declare-fun m!323203 () Bool)

(assert (=> b!260531 m!323203))

(declare-fun m!323205 () Bool)

(assert (=> b!260531 m!323205))

(assert (=> b!260531 m!323199))

(assert (=> b!260531 m!323201))

(declare-fun m!323207 () Bool)

(assert (=> b!260531 m!323207))

(assert (=> b!260531 m!323203))

(assert (=> b!260530 m!323203))

(assert (=> b!260530 m!323203))

(declare-fun m!323209 () Bool)

(assert (=> b!260530 m!323209))

(assert (=> b!260532 m!323199))

(assert (=> b!260532 m!323201))

(assert (=> b!260532 m!323203))

(assert (=> b!260532 m!323205))

(assert (=> b!260532 m!323199))

(assert (=> b!260532 m!323201))

(assert (=> b!260532 m!323207))

(assert (=> b!260532 m!323203))

(declare-fun m!323211 () Bool)

(assert (=> d!74561 m!323211))

(assert (=> d!74561 m!323203))

(declare-fun m!323213 () Bool)

(assert (=> b!260533 m!323213))

(declare-fun m!323215 () Bool)

(assert (=> b!260533 m!323215))

(declare-fun m!323217 () Bool)

(assert (=> b!260533 m!323217))

(assert (=> b!260533 m!323215))

(assert (=> b!260533 m!323217))

(declare-fun m!323219 () Bool)

(assert (=> b!260533 m!323219))

(assert (=> bm!13862 d!74561))

(declare-fun b!260544 () Bool)

(declare-fun res!119980 () Bool)

(declare-fun e!161767 () Bool)

(assert (=> b!260544 (=> (not res!119980) (not e!161767))))

(declare-fun lt!106127 () List!3760)

(assert (=> b!260544 (= res!119980 (= (size!2978 lt!106127) (+ (size!2978 call!13896) (size!2978 (ite c!49248 lt!105989 call!13895)))))))

(declare-fun b!260545 () Bool)

(assert (=> b!260545 (= e!161767 (or (not (= (ite c!49248 lt!105989 call!13895) Nil!3750)) (= lt!106127 call!13896)))))

(declare-fun b!260543 () Bool)

(declare-fun e!161766 () List!3760)

(assert (=> b!260543 (= e!161766 (Cons!3750 (h!9147 call!13896) (++!962 (t!36796 call!13896) (ite c!49248 lt!105989 call!13895))))))

(declare-fun d!74563 () Bool)

(assert (=> d!74563 e!161767))

(declare-fun res!119981 () Bool)

(assert (=> d!74563 (=> (not res!119981) (not e!161767))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!526 (List!3760) (InoxSet C!2800))

(assert (=> d!74563 (= res!119981 (= (content!526 lt!106127) ((_ map or) (content!526 call!13896) (content!526 (ite c!49248 lt!105989 call!13895)))))))

(assert (=> d!74563 (= lt!106127 e!161766)))

(declare-fun c!49284 () Bool)

(assert (=> d!74563 (= c!49284 ((_ is Nil!3750) call!13896))))

(assert (=> d!74563 (= (++!962 call!13896 (ite c!49248 lt!105989 call!13895)) lt!106127)))

(declare-fun b!260542 () Bool)

(assert (=> b!260542 (= e!161766 (ite c!49248 lt!105989 call!13895))))

(assert (= (and d!74563 c!49284) b!260542))

(assert (= (and d!74563 (not c!49284)) b!260543))

(assert (= (and d!74563 res!119981) b!260544))

(assert (= (and b!260544 res!119980) b!260545))

(declare-fun m!323221 () Bool)

(assert (=> b!260544 m!323221))

(declare-fun m!323223 () Bool)

(assert (=> b!260544 m!323223))

(declare-fun m!323225 () Bool)

(assert (=> b!260544 m!323225))

(declare-fun m!323227 () Bool)

(assert (=> b!260543 m!323227))

(declare-fun m!323229 () Bool)

(assert (=> d!74563 m!323229))

(declare-fun m!323231 () Bool)

(assert (=> d!74563 m!323231))

(declare-fun m!323233 () Bool)

(assert (=> d!74563 m!323233))

(assert (=> bm!13890 d!74563))

(declare-fun d!74565 () Bool)

(assert (=> d!74565 (= (isEmpty!2349 (originalCharacters!758 separatorToken!170)) ((_ is Nil!3750) (originalCharacters!758 separatorToken!170)))))

(assert (=> d!74371 d!74565))

(declare-fun d!74567 () Bool)

(declare-fun charsToBigInt!0 (List!3759 Int) Int)

(assert (=> d!74567 (= (inv!15 (value!24693 separatorToken!170)) (= (charsToBigInt!0 (text!5608 (value!24693 separatorToken!170)) 0) (value!24688 (value!24693 separatorToken!170))))))

(declare-fun bs!28272 () Bool)

(assert (= bs!28272 d!74567))

(declare-fun m!323235 () Bool)

(assert (=> bs!28272 m!323235))

(assert (=> b!260061 d!74567))

(declare-fun d!74569 () Bool)

(declare-fun c!49287 () Bool)

(assert (=> d!74569 (= c!49287 ((_ is Node!1252) (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))))))

(declare-fun e!161772 () Bool)

(assert (=> d!74569 (= (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))) e!161772)))

(declare-fun b!260552 () Bool)

(declare-fun inv!4633 (Conc!1252) Bool)

(assert (=> b!260552 (= e!161772 (inv!4633 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))))))

(declare-fun b!260553 () Bool)

(declare-fun e!161773 () Bool)

(assert (=> b!260553 (= e!161772 e!161773)))

(declare-fun res!119984 () Bool)

(assert (=> b!260553 (= res!119984 (not ((_ is Leaf!1949) (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))))))))

(assert (=> b!260553 (=> res!119984 e!161773)))

(declare-fun b!260554 () Bool)

(declare-fun inv!4634 (Conc!1252) Bool)

(assert (=> b!260554 (= e!161773 (inv!4634 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))))))

(assert (= (and d!74569 c!49287) b!260552))

(assert (= (and d!74569 (not c!49287)) b!260553))

(assert (= (and b!260553 (not res!119984)) b!260554))

(declare-fun m!323237 () Bool)

(assert (=> b!260552 m!323237))

(declare-fun m!323239 () Bool)

(assert (=> b!260554 m!323239))

(assert (=> b!260036 d!74569))

(declare-fun d!74571 () Bool)

(declare-fun lt!106128 () Int)

(assert (=> d!74571 (= lt!106128 (size!2981 (list!1506 lt!105860)))))

(assert (=> d!74571 (= lt!106128 (size!2982 (c!49190 lt!105860)))))

(assert (=> d!74571 (= (size!2979 lt!105860) lt!106128)))

(declare-fun bs!28273 () Bool)

(assert (= bs!28273 d!74571))

(assert (=> bs!28273 m!322607))

(assert (=> bs!28273 m!322607))

(declare-fun m!323241 () Bool)

(assert (=> bs!28273 m!323241))

(declare-fun m!323243 () Bool)

(assert (=> bs!28273 m!323243))

(assert (=> d!74411 d!74571))

(declare-fun d!74573 () Bool)

(assert (=> d!74573 (= (list!1503 lt!105958) (list!1507 (c!49188 lt!105958)))))

(declare-fun bs!28274 () Bool)

(assert (= bs!28274 d!74573))

(declare-fun m!323245 () Bool)

(assert (=> bs!28274 m!323245))

(assert (=> d!74411 d!74573))

(declare-fun d!74575 () Bool)

(assert (=> d!74575 (= (dropList!150 lt!105860 0) (drop!203 (list!1510 (c!49190 lt!105860)) 0))))

(declare-fun bs!28275 () Bool)

(assert (= bs!28275 d!74575))

(assert (=> bs!28275 m!323175))

(assert (=> bs!28275 m!323175))

(declare-fun m!323247 () Bool)

(assert (=> bs!28275 m!323247))

(assert (=> d!74411 d!74575))

(declare-fun bs!28276 () Bool)

(declare-fun b!260559 () Bool)

(assert (= bs!28276 (and b!260559 d!74515)))

(declare-fun lambda!8704 () Int)

(assert (=> bs!28276 (= lambda!8704 lambda!8699)))

(declare-fun bs!28277 () Bool)

(assert (= bs!28277 (and b!260559 d!74411)))

(assert (=> bs!28277 (not (= lambda!8704 lambda!8683))))

(declare-fun bs!28278 () Bool)

(assert (= bs!28278 (and b!260559 b!260004)))

(assert (=> bs!28278 (not (= lambda!8704 lambda!8662))))

(declare-fun bs!28279 () Bool)

(assert (= bs!28279 (and b!260559 b!260171)))

(assert (=> bs!28279 (= lambda!8704 lambda!8684)))

(declare-fun bs!28280 () Bool)

(assert (= bs!28280 (and b!260559 d!74389)))

(assert (=> bs!28280 (= lambda!8704 lambda!8672)))

(declare-fun bs!28281 () Bool)

(assert (= bs!28281 (and b!260559 b!260313)))

(assert (=> bs!28281 (= lambda!8704 lambda!8690)))

(declare-fun b!260565 () Bool)

(declare-fun e!161780 () Bool)

(assert (=> b!260565 (= e!161780 true)))

(declare-fun b!260564 () Bool)

(declare-fun e!161779 () Bool)

(assert (=> b!260564 (= e!161779 e!161780)))

(declare-fun b!260563 () Bool)

(declare-fun e!161778 () Bool)

(assert (=> b!260563 (= e!161778 e!161779)))

(assert (=> b!260559 e!161778))

(assert (= b!260564 b!260565))

(assert (= b!260563 b!260564))

(assert (= (and b!260559 ((_ is Cons!3751) rules!1920)) b!260563))

(assert (=> b!260565 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8704))))

(assert (=> b!260565 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8704))))

(assert (=> b!260559 true))

(declare-fun c!49291 () Bool)

(declare-fun call!13901 () List!3760)

(declare-fun bm!13894 () Bool)

(declare-fun call!13903 () BalanceConc!2512)

(declare-fun call!13902 () BalanceConc!2512)

(assert (=> bm!13894 (= call!13901 (list!1503 (ite c!49291 call!13903 call!13902)))))

(declare-fun lt!106129 () List!3760)

(declare-fun call!13900 () List!3760)

(declare-fun bm!13895 () Bool)

(declare-fun call!13899 () List!3760)

(assert (=> bm!13895 (= call!13899 (++!962 call!13901 (ite c!49291 lt!106129 call!13900)))))

(declare-fun b!260555 () Bool)

(declare-fun c!49288 () Bool)

(declare-fun lt!106131 () Option!777)

(assert (=> b!260555 (= c!49288 (and ((_ is Some!776) lt!106131) (not (= (_1!2312 (v!14609 lt!106131)) (h!9149 (dropList!150 lt!105860 0))))))))

(declare-fun e!161777 () List!3760)

(declare-fun e!161774 () List!3760)

(assert (=> b!260555 (= e!161777 e!161774)))

(declare-fun bm!13896 () Bool)

(assert (=> bm!13896 (= call!13903 (charsOf!360 (h!9149 (dropList!150 lt!105860 0))))))

(declare-fun b!260556 () Bool)

(declare-fun e!161775 () List!3760)

(assert (=> b!260556 (= e!161775 Nil!3750)))

(declare-fun b!260557 () Bool)

(declare-fun e!161776 () BalanceConc!2512)

(assert (=> b!260557 (= e!161776 call!13902)))

(declare-fun b!260558 () Bool)

(assert (=> b!260558 (= e!161774 Nil!3750)))

(assert (=> b!260558 (= (print!326 thiss!17480 (singletonSeq!261 (h!9149 (dropList!150 lt!105860 0)))) (printTailRec!289 thiss!17480 (singletonSeq!261 (h!9149 (dropList!150 lt!105860 0))) 0 (BalanceConc!2513 Empty!1252)))))

(declare-fun lt!106130 () Unit!4628)

(declare-fun Unit!4636 () Unit!4628)

(assert (=> b!260558 (= lt!106130 Unit!4636)))

(declare-fun lt!106134 () Unit!4628)

(assert (=> b!260558 (= lt!106134 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!98 thiss!17480 rules!1920 call!13900 lt!106129))))

(assert (=> b!260558 false))

(declare-fun lt!106133 () Unit!4628)

(declare-fun Unit!4637 () Unit!4628)

(assert (=> b!260558 (= lt!106133 Unit!4637)))

(declare-fun bm!13897 () Bool)

(assert (=> bm!13897 (= call!13900 (list!1503 e!161776))))

(declare-fun c!49289 () Bool)

(assert (=> bm!13897 (= c!49289 c!49288)))

(assert (=> b!260559 (= e!161775 e!161777)))

(declare-fun lt!106132 () Unit!4628)

(assert (=> b!260559 (= lt!106132 (forallContained!272 (dropList!150 lt!105860 0) lambda!8704 (h!9149 (dropList!150 lt!105860 0))))))

(assert (=> b!260559 (= lt!106129 (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 (t!36798 (dropList!150 lt!105860 0)) separatorToken!170))))

(assert (=> b!260559 (= lt!106131 (maxPrefix!321 thiss!17480 rules!1920 (++!962 (list!1503 (charsOf!360 (h!9149 (dropList!150 lt!105860 0)))) lt!106129)))))

(assert (=> b!260559 (= c!49291 (and ((_ is Some!776) lt!106131) (= (_1!2312 (v!14609 lt!106131)) (h!9149 (dropList!150 lt!105860 0)))))))

(declare-fun bm!13898 () Bool)

(assert (=> bm!13898 (= call!13902 call!13903)))

(declare-fun b!260560 () Bool)

(assert (=> b!260560 (= e!161774 (++!962 call!13899 lt!106129))))

(declare-fun d!74577 () Bool)

(declare-fun c!49290 () Bool)

(assert (=> d!74577 (= c!49290 ((_ is Cons!3752) (dropList!150 lt!105860 0)))))

(assert (=> d!74577 (= (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 (dropList!150 lt!105860 0) separatorToken!170) e!161775)))

(declare-fun b!260561 () Bool)

(assert (=> b!260561 (= e!161776 (charsOf!360 separatorToken!170))))

(declare-fun b!260562 () Bool)

(assert (=> b!260562 (= e!161777 call!13899)))

(assert (= (and d!74577 c!49290) b!260559))

(assert (= (and d!74577 (not c!49290)) b!260556))

(assert (= (and b!260559 c!49291) b!260562))

(assert (= (and b!260559 (not c!49291)) b!260555))

(assert (= (and b!260555 c!49288) b!260560))

(assert (= (and b!260555 (not c!49288)) b!260558))

(assert (= (or b!260560 b!260558) bm!13898))

(assert (= (or b!260560 b!260558) bm!13897))

(assert (= (and bm!13897 c!49289) b!260561))

(assert (= (and bm!13897 (not c!49289)) b!260557))

(assert (= (or b!260562 bm!13898) bm!13896))

(assert (= (or b!260562 b!260560) bm!13894))

(assert (= (or b!260562 b!260560) bm!13895))

(declare-fun m!323249 () Bool)

(assert (=> bm!13897 m!323249))

(declare-fun m!323251 () Bool)

(assert (=> b!260558 m!323251))

(assert (=> b!260558 m!323251))

(declare-fun m!323253 () Bool)

(assert (=> b!260558 m!323253))

(assert (=> b!260558 m!323251))

(declare-fun m!323255 () Bool)

(assert (=> b!260558 m!323255))

(declare-fun m!323257 () Bool)

(assert (=> b!260558 m!323257))

(assert (=> b!260561 m!322841))

(declare-fun m!323259 () Bool)

(assert (=> b!260559 m!323259))

(assert (=> b!260559 m!322733))

(declare-fun m!323261 () Bool)

(assert (=> b!260559 m!323261))

(declare-fun m!323263 () Bool)

(assert (=> b!260559 m!323263))

(declare-fun m!323265 () Bool)

(assert (=> b!260559 m!323265))

(declare-fun m!323267 () Bool)

(assert (=> b!260559 m!323267))

(assert (=> b!260559 m!323263))

(assert (=> b!260559 m!323267))

(assert (=> b!260559 m!323265))

(declare-fun m!323269 () Bool)

(assert (=> b!260559 m!323269))

(assert (=> bm!13896 m!323267))

(declare-fun m!323271 () Bool)

(assert (=> b!260560 m!323271))

(declare-fun m!323273 () Bool)

(assert (=> bm!13894 m!323273))

(declare-fun m!323275 () Bool)

(assert (=> bm!13895 m!323275))

(assert (=> d!74411 d!74577))

(declare-fun d!74579 () Bool)

(assert (=> d!74579 (forall!915 (dropList!150 lt!105860 0) lambda!8683)))

(declare-fun lt!106137 () Unit!4628)

(declare-fun choose!2401 (List!3762 List!3762 Int) Unit!4628)

(assert (=> d!74579 (= lt!106137 (choose!2401 (list!1506 lt!105860) (dropList!150 lt!105860 0) lambda!8683))))

(assert (=> d!74579 (forall!915 (list!1506 lt!105860) lambda!8683)))

(assert (=> d!74579 (= (lemmaContentSubsetPreservesForall!94 (list!1506 lt!105860) (dropList!150 lt!105860 0) lambda!8683) lt!106137)))

(declare-fun bs!28282 () Bool)

(assert (= bs!28282 d!74579))

(assert (=> bs!28282 m!322733))

(declare-fun m!323277 () Bool)

(assert (=> bs!28282 m!323277))

(assert (=> bs!28282 m!322607))

(assert (=> bs!28282 m!322733))

(declare-fun m!323279 () Bool)

(assert (=> bs!28282 m!323279))

(assert (=> bs!28282 m!322607))

(declare-fun m!323281 () Bool)

(assert (=> bs!28282 m!323281))

(assert (=> d!74411 d!74579))

(assert (=> d!74411 d!74541))

(declare-fun d!74581 () Bool)

(assert (=> d!74581 (= (inv!4630 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))) (isBalanced!334 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))))))

(declare-fun bs!28283 () Bool)

(assert (= bs!28283 d!74581))

(declare-fun m!323283 () Bool)

(assert (=> bs!28283 m!323283))

(assert (=> tb!13969 d!74581))

(declare-fun d!74583 () Bool)

(declare-fun lt!106138 () BalanceConc!2512)

(assert (=> d!74583 (= (list!1503 lt!106138) (printList!279 thiss!17480 (list!1506 (singletonSeq!261 (h!9149 tokens!465)))))))

(assert (=> d!74583 (= lt!106138 (printTailRec!289 thiss!17480 (singletonSeq!261 (h!9149 tokens!465)) 0 (BalanceConc!2513 Empty!1252)))))

(assert (=> d!74583 (= (print!326 thiss!17480 (singletonSeq!261 (h!9149 tokens!465))) lt!106138)))

(declare-fun bs!28284 () Bool)

(assert (= bs!28284 d!74583))

(declare-fun m!323285 () Bool)

(assert (=> bs!28284 m!323285))

(assert (=> bs!28284 m!322833))

(declare-fun m!323287 () Bool)

(assert (=> bs!28284 m!323287))

(assert (=> bs!28284 m!323287))

(declare-fun m!323289 () Bool)

(assert (=> bs!28284 m!323289))

(assert (=> bs!28284 m!322833))

(assert (=> bs!28284 m!322837))

(assert (=> b!260312 d!74583))

(declare-fun d!74585 () Bool)

(declare-fun e!161781 () Bool)

(assert (=> d!74585 e!161781))

(declare-fun res!119985 () Bool)

(assert (=> d!74585 (=> (not res!119985) (not e!161781))))

(declare-fun lt!106139 () BalanceConc!2514)

(assert (=> d!74585 (= res!119985 (= (list!1506 lt!106139) (Cons!3752 (h!9149 tokens!465) Nil!3752)))))

(assert (=> d!74585 (= lt!106139 (singleton!103 (h!9149 tokens!465)))))

(assert (=> d!74585 (= (singletonSeq!261 (h!9149 tokens!465)) lt!106139)))

(declare-fun b!260566 () Bool)

(assert (=> b!260566 (= e!161781 (isBalanced!333 (c!49190 lt!106139)))))

(assert (= (and d!74585 res!119985) b!260566))

(declare-fun m!323291 () Bool)

(assert (=> d!74585 m!323291))

(declare-fun m!323293 () Bool)

(assert (=> d!74585 m!323293))

(declare-fun m!323295 () Bool)

(assert (=> b!260566 m!323295))

(assert (=> b!260312 d!74585))

(declare-fun d!74587 () Bool)

(declare-fun lt!106154 () BalanceConc!2512)

(declare-fun printListTailRec!118 (LexerInterface!601 List!3762 List!3760) List!3760)

(assert (=> d!74587 (= (list!1503 lt!106154) (printListTailRec!118 thiss!17480 (dropList!150 (singletonSeq!261 (h!9149 tokens!465)) 0) (list!1503 (BalanceConc!2513 Empty!1252))))))

(declare-fun e!161787 () BalanceConc!2512)

(assert (=> d!74587 (= lt!106154 e!161787)))

(declare-fun c!49294 () Bool)

(assert (=> d!74587 (= c!49294 (>= 0 (size!2979 (singletonSeq!261 (h!9149 tokens!465)))))))

(declare-fun e!161786 () Bool)

(assert (=> d!74587 e!161786))

(declare-fun res!119988 () Bool)

(assert (=> d!74587 (=> (not res!119988) (not e!161786))))

(assert (=> d!74587 (= res!119988 (>= 0 0))))

(assert (=> d!74587 (= (printTailRec!289 thiss!17480 (singletonSeq!261 (h!9149 tokens!465)) 0 (BalanceConc!2513 Empty!1252)) lt!106154)))

(declare-fun b!260573 () Bool)

(assert (=> b!260573 (= e!161786 (<= 0 (size!2979 (singletonSeq!261 (h!9149 tokens!465)))))))

(declare-fun b!260574 () Bool)

(assert (=> b!260574 (= e!161787 (BalanceConc!2513 Empty!1252))))

(declare-fun b!260575 () Bool)

(assert (=> b!260575 (= e!161787 (printTailRec!289 thiss!17480 (singletonSeq!261 (h!9149 tokens!465)) (+ 0 1) (++!961 (BalanceConc!2513 Empty!1252) (charsOf!360 (apply!726 (singletonSeq!261 (h!9149 tokens!465)) 0)))))))

(declare-fun lt!106156 () List!3762)

(assert (=> b!260575 (= lt!106156 (list!1506 (singletonSeq!261 (h!9149 tokens!465))))))

(declare-fun lt!106160 () Unit!4628)

(assert (=> b!260575 (= lt!106160 (lemmaDropApply!190 lt!106156 0))))

(assert (=> b!260575 (= (head!874 (drop!203 lt!106156 0)) (apply!725 lt!106156 0))))

(declare-fun lt!106158 () Unit!4628)

(assert (=> b!260575 (= lt!106158 lt!106160)))

(declare-fun lt!106157 () List!3762)

(assert (=> b!260575 (= lt!106157 (list!1506 (singletonSeq!261 (h!9149 tokens!465))))))

(declare-fun lt!106159 () Unit!4628)

(assert (=> b!260575 (= lt!106159 (lemmaDropTail!182 lt!106157 0))))

(assert (=> b!260575 (= (tail!464 (drop!203 lt!106157 0)) (drop!203 lt!106157 (+ 0 1)))))

(declare-fun lt!106155 () Unit!4628)

(assert (=> b!260575 (= lt!106155 lt!106159)))

(assert (= (and d!74587 res!119988) b!260573))

(assert (= (and d!74587 c!49294) b!260574))

(assert (= (and d!74587 (not c!49294)) b!260575))

(assert (=> d!74587 m!322833))

(declare-fun m!323297 () Bool)

(assert (=> d!74587 m!323297))

(declare-fun m!323299 () Bool)

(assert (=> d!74587 m!323299))

(declare-fun m!323301 () Bool)

(assert (=> d!74587 m!323301))

(declare-fun m!323303 () Bool)

(assert (=> d!74587 m!323303))

(assert (=> d!74587 m!323301))

(declare-fun m!323305 () Bool)

(assert (=> d!74587 m!323305))

(assert (=> d!74587 m!322833))

(assert (=> d!74587 m!323303))

(assert (=> b!260573 m!322833))

(assert (=> b!260573 m!323297))

(declare-fun m!323307 () Bool)

(assert (=> b!260575 m!323307))

(declare-fun m!323309 () Bool)

(assert (=> b!260575 m!323309))

(declare-fun m!323311 () Bool)

(assert (=> b!260575 m!323311))

(declare-fun m!323313 () Bool)

(assert (=> b!260575 m!323313))

(declare-fun m!323315 () Bool)

(assert (=> b!260575 m!323315))

(declare-fun m!323317 () Bool)

(assert (=> b!260575 m!323317))

(declare-fun m!323319 () Bool)

(assert (=> b!260575 m!323319))

(declare-fun m!323321 () Bool)

(assert (=> b!260575 m!323321))

(declare-fun m!323323 () Bool)

(assert (=> b!260575 m!323323))

(assert (=> b!260575 m!322833))

(assert (=> b!260575 m!323321))

(declare-fun m!323325 () Bool)

(assert (=> b!260575 m!323325))

(assert (=> b!260575 m!322833))

(declare-fun m!323327 () Bool)

(assert (=> b!260575 m!323327))

(declare-fun m!323329 () Bool)

(assert (=> b!260575 m!323329))

(assert (=> b!260575 m!322833))

(assert (=> b!260575 m!323287))

(assert (=> b!260575 m!323313))

(assert (=> b!260575 m!323327))

(assert (=> b!260575 m!323319))

(assert (=> b!260575 m!323307))

(assert (=> b!260312 d!74587))

(declare-fun b!260686 () Bool)

(declare-fun e!161859 () Unit!4628)

(declare-fun Unit!4640 () Unit!4628)

(assert (=> b!260686 (= e!161859 Unit!4640)))

(declare-fun b!260683 () Bool)

(declare-fun res!120034 () Bool)

(declare-fun e!161860 () Bool)

(assert (=> b!260683 (=> (not res!120034) (not e!161860))))

(declare-fun lt!106265 () Token!1174)

(declare-fun matchR!267 (Regex!939 List!3760) Bool)

(declare-datatypes ((Option!779 0))(
  ( (None!778) (Some!778 (v!14615 Rule!1230)) )
))
(declare-fun get!1232 (Option!779) Rule!1230)

(declare-fun getRuleFromTag!116 (LexerInterface!601 List!3761 String!4765) Option!779)

(assert (=> b!260683 (= res!120034 (matchR!267 (regex!715 (get!1232 (getRuleFromTag!116 thiss!17480 rules!1920 (tag!925 (rule!1300 lt!106265))))) (list!1503 (charsOf!360 lt!106265))))))

(declare-fun d!74589 () Bool)

(declare-fun isDefined!627 (Option!777) Bool)

(assert (=> d!74589 (isDefined!627 (maxPrefix!321 thiss!17480 rules!1920 (++!962 call!13895 lt!105989)))))

(declare-fun lt!106272 () Unit!4628)

(assert (=> d!74589 (= lt!106272 e!161859)))

(declare-fun c!49321 () Bool)

(declare-fun isEmpty!2355 (Option!777) Bool)

(assert (=> d!74589 (= c!49321 (isEmpty!2355 (maxPrefix!321 thiss!17480 rules!1920 (++!962 call!13895 lt!105989))))))

(declare-fun lt!106264 () Unit!4628)

(declare-fun lt!106259 () Unit!4628)

(assert (=> d!74589 (= lt!106264 lt!106259)))

(assert (=> d!74589 e!161860))

(declare-fun res!120033 () Bool)

(assert (=> d!74589 (=> (not res!120033) (not e!161860))))

(declare-fun isDefined!628 (Option!779) Bool)

(assert (=> d!74589 (= res!120033 (isDefined!628 (getRuleFromTag!116 thiss!17480 rules!1920 (tag!925 (rule!1300 lt!106265)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!116 (LexerInterface!601 List!3761 List!3760 Token!1174) Unit!4628)

(assert (=> d!74589 (= lt!106259 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!116 thiss!17480 rules!1920 call!13895 lt!106265))))

(declare-fun lt!106262 () Unit!4628)

(declare-fun lt!106256 () Unit!4628)

(assert (=> d!74589 (= lt!106262 lt!106256)))

(declare-fun lt!106268 () List!3760)

(declare-fun isPrefix!389 (List!3760 List!3760) Bool)

(assert (=> d!74589 (isPrefix!389 lt!106268 (++!962 call!13895 lt!105989))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!48 (List!3760 List!3760 List!3760) Unit!4628)

(assert (=> d!74589 (= lt!106256 (lemmaPrefixStaysPrefixWhenAddingToSuffix!48 lt!106268 call!13895 lt!105989))))

(assert (=> d!74589 (= lt!106268 (list!1503 (charsOf!360 lt!106265)))))

(declare-fun lt!106267 () Unit!4628)

(declare-fun lt!106263 () Unit!4628)

(assert (=> d!74589 (= lt!106267 lt!106263)))

(declare-fun lt!106257 () List!3760)

(declare-fun lt!106270 () List!3760)

(assert (=> d!74589 (isPrefix!389 lt!106257 (++!962 lt!106257 lt!106270))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!284 (List!3760 List!3760) Unit!4628)

(assert (=> d!74589 (= lt!106263 (lemmaConcatTwoListThenFirstIsPrefix!284 lt!106257 lt!106270))))

(declare-fun get!1233 (Option!777) tuple2!4192)

(assert (=> d!74589 (= lt!106270 (_2!2312 (get!1233 (maxPrefix!321 thiss!17480 rules!1920 call!13895))))))

(assert (=> d!74589 (= lt!106257 (list!1503 (charsOf!360 lt!106265)))))

(assert (=> d!74589 (= lt!106265 (head!874 (list!1506 (_1!2313 (lex!395 thiss!17480 rules!1920 (seqFromList!798 call!13895))))))))

(assert (=> d!74589 (not (isEmpty!2346 rules!1920))))

(assert (=> d!74589 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!98 thiss!17480 rules!1920 call!13895 lt!105989) lt!106272)))

(declare-fun b!260685 () Bool)

(declare-fun Unit!4641 () Unit!4628)

(assert (=> b!260685 (= e!161859 Unit!4641)))

(declare-fun lt!106271 () List!3760)

(assert (=> b!260685 (= lt!106271 (++!962 call!13895 lt!105989))))

(declare-fun lt!106261 () Unit!4628)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!48 (LexerInterface!601 Rule!1230 List!3761 List!3760) Unit!4628)

(assert (=> b!260685 (= lt!106261 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!48 thiss!17480 (rule!1300 lt!106265) rules!1920 lt!106271))))

(declare-fun maxPrefixOneRule!133 (LexerInterface!601 Rule!1230 List!3760) Option!777)

(assert (=> b!260685 (isEmpty!2355 (maxPrefixOneRule!133 thiss!17480 (rule!1300 lt!106265) lt!106271))))

(declare-fun lt!106269 () Unit!4628)

(assert (=> b!260685 (= lt!106269 lt!106261)))

(declare-fun lt!106258 () List!3760)

(assert (=> b!260685 (= lt!106258 (list!1503 (charsOf!360 lt!106265)))))

(declare-fun lt!106266 () Unit!4628)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!48 (LexerInterface!601 Rule!1230 List!3760 List!3760) Unit!4628)

(assert (=> b!260685 (= lt!106266 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!48 thiss!17480 (rule!1300 lt!106265) lt!106258 (++!962 call!13895 lt!105989)))))

(assert (=> b!260685 (not (matchR!267 (regex!715 (rule!1300 lt!106265)) lt!106258))))

(declare-fun lt!106260 () Unit!4628)

(assert (=> b!260685 (= lt!106260 lt!106266)))

(assert (=> b!260685 false))

(declare-fun b!260684 () Bool)

(assert (=> b!260684 (= e!161860 (= (rule!1300 lt!106265) (get!1232 (getRuleFromTag!116 thiss!17480 rules!1920 (tag!925 (rule!1300 lt!106265))))))))

(assert (= (and d!74589 res!120033) b!260683))

(assert (= (and b!260683 res!120034) b!260684))

(assert (= (and d!74589 c!49321) b!260685))

(assert (= (and d!74589 (not c!49321)) b!260686))

(declare-fun m!323565 () Bool)

(assert (=> b!260683 m!323565))

(declare-fun m!323567 () Bool)

(assert (=> b!260683 m!323567))

(declare-fun m!323569 () Bool)

(assert (=> b!260683 m!323569))

(declare-fun m!323571 () Bool)

(assert (=> b!260683 m!323571))

(assert (=> b!260683 m!323569))

(assert (=> b!260683 m!323565))

(assert (=> b!260683 m!323571))

(declare-fun m!323573 () Bool)

(assert (=> b!260683 m!323573))

(declare-fun m!323575 () Bool)

(assert (=> d!74589 m!323575))

(declare-fun m!323577 () Bool)

(assert (=> d!74589 m!323577))

(assert (=> d!74589 m!323569))

(assert (=> d!74589 m!323571))

(declare-fun m!323579 () Bool)

(assert (=> d!74589 m!323579))

(assert (=> d!74589 m!323565))

(declare-fun m!323581 () Bool)

(assert (=> d!74589 m!323581))

(declare-fun m!323583 () Bool)

(assert (=> d!74589 m!323583))

(assert (=> d!74589 m!323581))

(assert (=> d!74589 m!323575))

(declare-fun m!323585 () Bool)

(assert (=> d!74589 m!323585))

(declare-fun m!323587 () Bool)

(assert (=> d!74589 m!323587))

(assert (=> d!74589 m!323565))

(declare-fun m!323589 () Bool)

(assert (=> d!74589 m!323589))

(declare-fun m!323591 () Bool)

(assert (=> d!74589 m!323591))

(declare-fun m!323593 () Bool)

(assert (=> d!74589 m!323593))

(assert (=> d!74589 m!323569))

(declare-fun m!323595 () Bool)

(assert (=> d!74589 m!323595))

(assert (=> d!74589 m!323581))

(declare-fun m!323597 () Bool)

(assert (=> d!74589 m!323597))

(assert (=> d!74589 m!323595))

(declare-fun m!323599 () Bool)

(assert (=> d!74589 m!323599))

(declare-fun m!323601 () Bool)

(assert (=> d!74589 m!323601))

(declare-fun m!323603 () Bool)

(assert (=> d!74589 m!323603))

(assert (=> d!74589 m!322467))

(assert (=> d!74589 m!323583))

(declare-fun m!323605 () Bool)

(assert (=> d!74589 m!323605))

(assert (=> d!74589 m!323591))

(assert (=> d!74589 m!323585))

(assert (=> d!74589 m!323583))

(declare-fun m!323607 () Bool)

(assert (=> d!74589 m!323607))

(declare-fun m!323609 () Bool)

(assert (=> b!260685 m!323609))

(declare-fun m!323611 () Bool)

(assert (=> b!260685 m!323611))

(assert (=> b!260685 m!323569))

(assert (=> b!260685 m!323571))

(assert (=> b!260685 m!323569))

(assert (=> b!260685 m!323581))

(declare-fun m!323613 () Bool)

(assert (=> b!260685 m!323613))

(declare-fun m!323615 () Bool)

(assert (=> b!260685 m!323615))

(assert (=> b!260685 m!323609))

(assert (=> b!260685 m!323581))

(declare-fun m!323617 () Bool)

(assert (=> b!260685 m!323617))

(assert (=> b!260684 m!323565))

(assert (=> b!260684 m!323565))

(assert (=> b!260684 m!323567))

(assert (=> b!260312 d!74589))

(declare-fun d!74639 () Bool)

(assert (=> d!74639 (= (inv!16 (value!24693 (h!9149 tokens!465))) (= (charsToInt!0 (text!5606 (value!24693 (h!9149 tokens!465)))) (value!24684 (value!24693 (h!9149 tokens!465)))))))

(declare-fun bs!28310 () Bool)

(assert (= bs!28310 d!74639))

(declare-fun m!323619 () Bool)

(assert (=> bs!28310 m!323619))

(assert (=> b!260118 d!74639))

(declare-fun bs!28311 () Bool)

(declare-fun d!74641 () Bool)

(assert (= bs!28311 (and d!74641 d!74493)))

(declare-fun lambda!8714 () Int)

(assert (=> bs!28311 (= (= (toValue!1434 (transformation!715 (h!9148 rules!1920))) (toValue!1434 (transformation!715 (rule!1300 separatorToken!170)))) (= lambda!8714 lambda!8696))))

(assert (=> d!74641 true))

(assert (=> d!74641 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1885 order!2837 lambda!8714))))

(assert (=> d!74641 (= (equivClasses!228 (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (Forall2!140 lambda!8714))))

(declare-fun bs!28312 () Bool)

(assert (= bs!28312 d!74641))

(declare-fun m!323621 () Bool)

(assert (=> bs!28312 m!323621))

(assert (=> b!260046 d!74641))

(declare-fun d!74643 () Bool)

(declare-fun lt!106273 () BalanceConc!2512)

(assert (=> d!74643 (= (list!1503 lt!106273) (printList!279 thiss!17480 (list!1506 (singletonSeq!261 call!13864))))))

(assert (=> d!74643 (= lt!106273 (printTailRec!289 thiss!17480 (singletonSeq!261 call!13864) 0 (BalanceConc!2513 Empty!1252)))))

(assert (=> d!74643 (= (print!326 thiss!17480 (singletonSeq!261 call!13864)) lt!106273)))

(declare-fun bs!28313 () Bool)

(assert (= bs!28313 d!74643))

(declare-fun m!323623 () Bool)

(assert (=> bs!28313 m!323623))

(assert (=> bs!28313 m!322689))

(declare-fun m!323625 () Bool)

(assert (=> bs!28313 m!323625))

(assert (=> bs!28313 m!323625))

(declare-fun m!323627 () Bool)

(assert (=> bs!28313 m!323627))

(assert (=> bs!28313 m!322689))

(assert (=> bs!28313 m!322691))

(assert (=> b!260177 d!74643))

(declare-fun d!74645 () Bool)

(declare-fun e!161861 () Bool)

(assert (=> d!74645 e!161861))

(declare-fun res!120035 () Bool)

(assert (=> d!74645 (=> (not res!120035) (not e!161861))))

(declare-fun lt!106274 () BalanceConc!2514)

(assert (=> d!74645 (= res!120035 (= (list!1506 lt!106274) (Cons!3752 call!13864 Nil!3752)))))

(assert (=> d!74645 (= lt!106274 (singleton!103 call!13864))))

(assert (=> d!74645 (= (singletonSeq!261 call!13864) lt!106274)))

(declare-fun b!260687 () Bool)

(assert (=> b!260687 (= e!161861 (isBalanced!333 (c!49190 lt!106274)))))

(assert (= (and d!74645 res!120035) b!260687))

(declare-fun m!323629 () Bool)

(assert (=> d!74645 m!323629))

(declare-fun m!323631 () Bool)

(assert (=> d!74645 m!323631))

(declare-fun m!323633 () Bool)

(assert (=> b!260687 m!323633))

(assert (=> b!260177 d!74645))

(declare-fun d!74647 () Bool)

(assert (=> d!74647 (= (list!1503 lt!105957) (list!1507 (c!49188 lt!105957)))))

(declare-fun bs!28314 () Bool)

(assert (= bs!28314 d!74647))

(declare-fun m!323635 () Bool)

(assert (=> bs!28314 m!323635))

(assert (=> b!260177 d!74647))

(declare-fun d!74649 () Bool)

(declare-fun lt!106275 () BalanceConc!2512)

(assert (=> d!74649 (= (list!1503 lt!106275) (printListTailRec!118 thiss!17480 (dropList!150 (singletonSeq!261 call!13864) 0) (list!1503 (BalanceConc!2513 Empty!1252))))))

(declare-fun e!161863 () BalanceConc!2512)

(assert (=> d!74649 (= lt!106275 e!161863)))

(declare-fun c!49322 () Bool)

(assert (=> d!74649 (= c!49322 (>= 0 (size!2979 (singletonSeq!261 call!13864))))))

(declare-fun e!161862 () Bool)

(assert (=> d!74649 e!161862))

(declare-fun res!120036 () Bool)

(assert (=> d!74649 (=> (not res!120036) (not e!161862))))

(assert (=> d!74649 (= res!120036 (>= 0 0))))

(assert (=> d!74649 (= (printTailRec!289 thiss!17480 (singletonSeq!261 call!13864) 0 (BalanceConc!2513 Empty!1252)) lt!106275)))

(declare-fun b!260688 () Bool)

(assert (=> b!260688 (= e!161862 (<= 0 (size!2979 (singletonSeq!261 call!13864))))))

(declare-fun b!260689 () Bool)

(assert (=> b!260689 (= e!161863 (BalanceConc!2513 Empty!1252))))

(declare-fun b!260690 () Bool)

(assert (=> b!260690 (= e!161863 (printTailRec!289 thiss!17480 (singletonSeq!261 call!13864) (+ 0 1) (++!961 (BalanceConc!2513 Empty!1252) (charsOf!360 (apply!726 (singletonSeq!261 call!13864) 0)))))))

(declare-fun lt!106277 () List!3762)

(assert (=> b!260690 (= lt!106277 (list!1506 (singletonSeq!261 call!13864)))))

(declare-fun lt!106281 () Unit!4628)

(assert (=> b!260690 (= lt!106281 (lemmaDropApply!190 lt!106277 0))))

(assert (=> b!260690 (= (head!874 (drop!203 lt!106277 0)) (apply!725 lt!106277 0))))

(declare-fun lt!106279 () Unit!4628)

(assert (=> b!260690 (= lt!106279 lt!106281)))

(declare-fun lt!106278 () List!3762)

(assert (=> b!260690 (= lt!106278 (list!1506 (singletonSeq!261 call!13864)))))

(declare-fun lt!106280 () Unit!4628)

(assert (=> b!260690 (= lt!106280 (lemmaDropTail!182 lt!106278 0))))

(assert (=> b!260690 (= (tail!464 (drop!203 lt!106278 0)) (drop!203 lt!106278 (+ 0 1)))))

(declare-fun lt!106276 () Unit!4628)

(assert (=> b!260690 (= lt!106276 lt!106280)))

(assert (= (and d!74649 res!120036) b!260688))

(assert (= (and d!74649 c!49322) b!260689))

(assert (= (and d!74649 (not c!49322)) b!260690))

(assert (=> d!74649 m!322689))

(declare-fun m!323637 () Bool)

(assert (=> d!74649 m!323637))

(declare-fun m!323639 () Bool)

(assert (=> d!74649 m!323639))

(assert (=> d!74649 m!323301))

(declare-fun m!323641 () Bool)

(assert (=> d!74649 m!323641))

(assert (=> d!74649 m!323301))

(declare-fun m!323643 () Bool)

(assert (=> d!74649 m!323643))

(assert (=> d!74649 m!322689))

(assert (=> d!74649 m!323641))

(assert (=> b!260688 m!322689))

(assert (=> b!260688 m!323637))

(declare-fun m!323645 () Bool)

(assert (=> b!260690 m!323645))

(declare-fun m!323647 () Bool)

(assert (=> b!260690 m!323647))

(declare-fun m!323649 () Bool)

(assert (=> b!260690 m!323649))

(declare-fun m!323651 () Bool)

(assert (=> b!260690 m!323651))

(declare-fun m!323653 () Bool)

(assert (=> b!260690 m!323653))

(declare-fun m!323655 () Bool)

(assert (=> b!260690 m!323655))

(declare-fun m!323657 () Bool)

(assert (=> b!260690 m!323657))

(declare-fun m!323659 () Bool)

(assert (=> b!260690 m!323659))

(declare-fun m!323661 () Bool)

(assert (=> b!260690 m!323661))

(assert (=> b!260690 m!322689))

(assert (=> b!260690 m!323659))

(declare-fun m!323663 () Bool)

(assert (=> b!260690 m!323663))

(assert (=> b!260690 m!322689))

(declare-fun m!323665 () Bool)

(assert (=> b!260690 m!323665))

(declare-fun m!323667 () Bool)

(assert (=> b!260690 m!323667))

(assert (=> b!260690 m!322689))

(assert (=> b!260690 m!323625))

(assert (=> b!260690 m!323651))

(assert (=> b!260690 m!323665))

(assert (=> b!260690 m!323657))

(assert (=> b!260690 m!323645))

(assert (=> b!260177 d!74649))

(declare-fun b!260694 () Bool)

(declare-fun e!161864 () Unit!4628)

(declare-fun Unit!4642 () Unit!4628)

(assert (=> b!260694 (= e!161864 Unit!4642)))

(declare-fun b!260691 () Bool)

(declare-fun res!120038 () Bool)

(declare-fun e!161865 () Bool)

(assert (=> b!260691 (=> (not res!120038) (not e!161865))))

(declare-fun lt!106291 () Token!1174)

(assert (=> b!260691 (= res!120038 (matchR!267 (regex!715 (get!1232 (getRuleFromTag!116 thiss!17480 rules!1920 (tag!925 (rule!1300 lt!106291))))) (list!1503 (charsOf!360 lt!106291))))))

(declare-fun d!74651 () Bool)

(assert (=> d!74651 (isDefined!627 (maxPrefix!321 thiss!17480 rules!1920 (++!962 (list!1503 call!13866) (list!1503 lt!105957))))))

(declare-fun lt!106298 () Unit!4628)

(assert (=> d!74651 (= lt!106298 e!161864)))

(declare-fun c!49323 () Bool)

(assert (=> d!74651 (= c!49323 (isEmpty!2355 (maxPrefix!321 thiss!17480 rules!1920 (++!962 (list!1503 call!13866) (list!1503 lt!105957)))))))

(declare-fun lt!106290 () Unit!4628)

(declare-fun lt!106285 () Unit!4628)

(assert (=> d!74651 (= lt!106290 lt!106285)))

(assert (=> d!74651 e!161865))

(declare-fun res!120037 () Bool)

(assert (=> d!74651 (=> (not res!120037) (not e!161865))))

(assert (=> d!74651 (= res!120037 (isDefined!628 (getRuleFromTag!116 thiss!17480 rules!1920 (tag!925 (rule!1300 lt!106291)))))))

(assert (=> d!74651 (= lt!106285 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!116 thiss!17480 rules!1920 (list!1503 call!13866) lt!106291))))

(declare-fun lt!106288 () Unit!4628)

(declare-fun lt!106282 () Unit!4628)

(assert (=> d!74651 (= lt!106288 lt!106282)))

(declare-fun lt!106294 () List!3760)

(assert (=> d!74651 (isPrefix!389 lt!106294 (++!962 (list!1503 call!13866) (list!1503 lt!105957)))))

(assert (=> d!74651 (= lt!106282 (lemmaPrefixStaysPrefixWhenAddingToSuffix!48 lt!106294 (list!1503 call!13866) (list!1503 lt!105957)))))

(assert (=> d!74651 (= lt!106294 (list!1503 (charsOf!360 lt!106291)))))

(declare-fun lt!106293 () Unit!4628)

(declare-fun lt!106289 () Unit!4628)

(assert (=> d!74651 (= lt!106293 lt!106289)))

(declare-fun lt!106283 () List!3760)

(declare-fun lt!106296 () List!3760)

(assert (=> d!74651 (isPrefix!389 lt!106283 (++!962 lt!106283 lt!106296))))

(assert (=> d!74651 (= lt!106289 (lemmaConcatTwoListThenFirstIsPrefix!284 lt!106283 lt!106296))))

(assert (=> d!74651 (= lt!106296 (_2!2312 (get!1233 (maxPrefix!321 thiss!17480 rules!1920 (list!1503 call!13866)))))))

(assert (=> d!74651 (= lt!106283 (list!1503 (charsOf!360 lt!106291)))))

(assert (=> d!74651 (= lt!106291 (head!874 (list!1506 (_1!2313 (lex!395 thiss!17480 rules!1920 (seqFromList!798 (list!1503 call!13866)))))))))

(assert (=> d!74651 (not (isEmpty!2346 rules!1920))))

(assert (=> d!74651 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!98 thiss!17480 rules!1920 (list!1503 call!13866) (list!1503 lt!105957)) lt!106298)))

(declare-fun b!260693 () Bool)

(declare-fun Unit!4645 () Unit!4628)

(assert (=> b!260693 (= e!161864 Unit!4645)))

(declare-fun lt!106297 () List!3760)

(assert (=> b!260693 (= lt!106297 (++!962 (list!1503 call!13866) (list!1503 lt!105957)))))

(declare-fun lt!106287 () Unit!4628)

(assert (=> b!260693 (= lt!106287 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!48 thiss!17480 (rule!1300 lt!106291) rules!1920 lt!106297))))

(assert (=> b!260693 (isEmpty!2355 (maxPrefixOneRule!133 thiss!17480 (rule!1300 lt!106291) lt!106297))))

(declare-fun lt!106295 () Unit!4628)

(assert (=> b!260693 (= lt!106295 lt!106287)))

(declare-fun lt!106284 () List!3760)

(assert (=> b!260693 (= lt!106284 (list!1503 (charsOf!360 lt!106291)))))

(declare-fun lt!106292 () Unit!4628)

(assert (=> b!260693 (= lt!106292 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!48 thiss!17480 (rule!1300 lt!106291) lt!106284 (++!962 (list!1503 call!13866) (list!1503 lt!105957))))))

(assert (=> b!260693 (not (matchR!267 (regex!715 (rule!1300 lt!106291)) lt!106284))))

(declare-fun lt!106286 () Unit!4628)

(assert (=> b!260693 (= lt!106286 lt!106292)))

(assert (=> b!260693 false))

(declare-fun b!260692 () Bool)

(assert (=> b!260692 (= e!161865 (= (rule!1300 lt!106291) (get!1232 (getRuleFromTag!116 thiss!17480 rules!1920 (tag!925 (rule!1300 lt!106291))))))))

(assert (= (and d!74651 res!120037) b!260691))

(assert (= (and b!260691 res!120038) b!260692))

(assert (= (and d!74651 c!49323) b!260693))

(assert (= (and d!74651 (not c!49323)) b!260694))

(declare-fun m!323669 () Bool)

(assert (=> b!260691 m!323669))

(declare-fun m!323671 () Bool)

(assert (=> b!260691 m!323671))

(declare-fun m!323673 () Bool)

(assert (=> b!260691 m!323673))

(declare-fun m!323675 () Bool)

(assert (=> b!260691 m!323675))

(assert (=> b!260691 m!323673))

(assert (=> b!260691 m!323669))

(assert (=> b!260691 m!323675))

(declare-fun m!323677 () Bool)

(assert (=> b!260691 m!323677))

(declare-fun m!323679 () Bool)

(assert (=> d!74651 m!323679))

(declare-fun m!323681 () Bool)

(assert (=> d!74651 m!323681))

(assert (=> d!74651 m!323673))

(assert (=> d!74651 m!323675))

(assert (=> d!74651 m!322687))

(assert (=> d!74651 m!322693))

(declare-fun m!323683 () Bool)

(assert (=> d!74651 m!323683))

(assert (=> d!74651 m!323669))

(declare-fun m!323685 () Bool)

(assert (=> d!74651 m!323685))

(declare-fun m!323687 () Bool)

(assert (=> d!74651 m!323687))

(assert (=> d!74651 m!322687))

(assert (=> d!74651 m!322693))

(assert (=> d!74651 m!323685))

(assert (=> d!74651 m!323679))

(declare-fun m!323689 () Bool)

(assert (=> d!74651 m!323689))

(declare-fun m!323691 () Bool)

(assert (=> d!74651 m!323691))

(assert (=> d!74651 m!323669))

(declare-fun m!323693 () Bool)

(assert (=> d!74651 m!323693))

(declare-fun m!323695 () Bool)

(assert (=> d!74651 m!323695))

(declare-fun m!323697 () Bool)

(assert (=> d!74651 m!323697))

(assert (=> d!74651 m!323673))

(assert (=> d!74651 m!322687))

(declare-fun m!323699 () Bool)

(assert (=> d!74651 m!323699))

(assert (=> d!74651 m!323685))

(declare-fun m!323701 () Bool)

(assert (=> d!74651 m!323701))

(assert (=> d!74651 m!323699))

(declare-fun m!323703 () Bool)

(assert (=> d!74651 m!323703))

(assert (=> d!74651 m!322687))

(declare-fun m!323705 () Bool)

(assert (=> d!74651 m!323705))

(declare-fun m!323707 () Bool)

(assert (=> d!74651 m!323707))

(assert (=> d!74651 m!322467))

(assert (=> d!74651 m!323687))

(declare-fun m!323709 () Bool)

(assert (=> d!74651 m!323709))

(assert (=> d!74651 m!322687))

(assert (=> d!74651 m!323695))

(assert (=> d!74651 m!323689))

(assert (=> d!74651 m!323687))

(declare-fun m!323711 () Bool)

(assert (=> d!74651 m!323711))

(declare-fun m!323713 () Bool)

(assert (=> b!260693 m!323713))

(declare-fun m!323715 () Bool)

(assert (=> b!260693 m!323715))

(assert (=> b!260693 m!323673))

(assert (=> b!260693 m!323675))

(assert (=> b!260693 m!323673))

(assert (=> b!260693 m!323685))

(declare-fun m!323717 () Bool)

(assert (=> b!260693 m!323717))

(declare-fun m!323719 () Bool)

(assert (=> b!260693 m!323719))

(assert (=> b!260693 m!323713))

(assert (=> b!260693 m!322687))

(assert (=> b!260693 m!322693))

(assert (=> b!260693 m!323685))

(declare-fun m!323721 () Bool)

(assert (=> b!260693 m!323721))

(assert (=> b!260692 m!323669))

(assert (=> b!260692 m!323669))

(assert (=> b!260692 m!323671))

(assert (=> b!260177 d!74651))

(declare-fun d!74653 () Bool)

(assert (=> d!74653 (= (list!1503 call!13866) (list!1507 (c!49188 call!13866)))))

(declare-fun bs!28315 () Bool)

(assert (= bs!28315 d!74653))

(declare-fun m!323723 () Bool)

(assert (=> bs!28315 m!323723))

(assert (=> b!260177 d!74653))

(declare-fun bs!28316 () Bool)

(declare-fun b!260699 () Bool)

(assert (= bs!28316 (and b!260699 d!74515)))

(declare-fun lambda!8715 () Int)

(assert (=> bs!28316 (= lambda!8715 lambda!8699)))

(declare-fun bs!28317 () Bool)

(assert (= bs!28317 (and b!260699 d!74411)))

(assert (=> bs!28317 (not (= lambda!8715 lambda!8683))))

(declare-fun bs!28318 () Bool)

(assert (= bs!28318 (and b!260699 b!260004)))

(assert (=> bs!28318 (not (= lambda!8715 lambda!8662))))

(declare-fun bs!28319 () Bool)

(assert (= bs!28319 (and b!260699 b!260171)))

(assert (=> bs!28319 (= lambda!8715 lambda!8684)))

(declare-fun bs!28320 () Bool)

(assert (= bs!28320 (and b!260699 d!74389)))

(assert (=> bs!28320 (= lambda!8715 lambda!8672)))

(declare-fun bs!28321 () Bool)

(assert (= bs!28321 (and b!260699 b!260313)))

(assert (=> bs!28321 (= lambda!8715 lambda!8690)))

(declare-fun bs!28322 () Bool)

(assert (= bs!28322 (and b!260699 b!260559)))

(assert (=> bs!28322 (= lambda!8715 lambda!8704)))

(declare-fun b!260705 () Bool)

(declare-fun e!161872 () Bool)

(assert (=> b!260705 (= e!161872 true)))

(declare-fun b!260704 () Bool)

(declare-fun e!161871 () Bool)

(assert (=> b!260704 (= e!161871 e!161872)))

(declare-fun b!260703 () Bool)

(declare-fun e!161870 () Bool)

(assert (=> b!260703 (= e!161870 e!161871)))

(assert (=> b!260699 e!161870))

(assert (= b!260704 b!260705))

(assert (= b!260703 b!260704))

(assert (= (and b!260699 ((_ is Cons!3751) rules!1920)) b!260703))

(assert (=> b!260705 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8715))))

(assert (=> b!260705 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8715))))

(assert (=> b!260699 true))

(declare-fun bm!13908 () Bool)

(declare-fun c!49327 () Bool)

(declare-fun call!13917 () BalanceConc!2512)

(declare-fun call!13915 () List!3760)

(declare-fun call!13916 () BalanceConc!2512)

(assert (=> bm!13908 (= call!13915 (list!1503 (ite c!49327 call!13917 call!13916)))))

(declare-fun bm!13909 () Bool)

(declare-fun call!13914 () List!3760)

(declare-fun call!13913 () List!3760)

(declare-fun lt!106299 () List!3760)

(assert (=> bm!13909 (= call!13913 (++!962 call!13915 (ite c!49327 lt!106299 call!13914)))))

(declare-fun b!260695 () Bool)

(declare-fun c!49324 () Bool)

(declare-fun lt!106301 () Option!777)

(assert (=> b!260695 (= c!49324 (and ((_ is Some!776) lt!106301) (not (= (_1!2312 (v!14609 lt!106301)) (h!9149 (t!36798 tokens!465))))))))

(declare-fun e!161869 () List!3760)

(declare-fun e!161866 () List!3760)

(assert (=> b!260695 (= e!161869 e!161866)))

(declare-fun bm!13910 () Bool)

(assert (=> bm!13910 (= call!13917 (charsOf!360 (h!9149 (t!36798 tokens!465))))))

(declare-fun b!260696 () Bool)

(declare-fun e!161867 () List!3760)

(assert (=> b!260696 (= e!161867 Nil!3750)))

(declare-fun b!260697 () Bool)

(declare-fun e!161868 () BalanceConc!2512)

(assert (=> b!260697 (= e!161868 call!13916)))

(declare-fun b!260698 () Bool)

(assert (=> b!260698 (= e!161866 Nil!3750)))

(assert (=> b!260698 (= (print!326 thiss!17480 (singletonSeq!261 (h!9149 (t!36798 tokens!465)))) (printTailRec!289 thiss!17480 (singletonSeq!261 (h!9149 (t!36798 tokens!465))) 0 (BalanceConc!2513 Empty!1252)))))

(declare-fun lt!106300 () Unit!4628)

(declare-fun Unit!4646 () Unit!4628)

(assert (=> b!260698 (= lt!106300 Unit!4646)))

(declare-fun lt!106304 () Unit!4628)

(assert (=> b!260698 (= lt!106304 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!98 thiss!17480 rules!1920 call!13914 lt!106299))))

(assert (=> b!260698 false))

(declare-fun lt!106303 () Unit!4628)

(declare-fun Unit!4647 () Unit!4628)

(assert (=> b!260698 (= lt!106303 Unit!4647)))

(declare-fun bm!13911 () Bool)

(assert (=> bm!13911 (= call!13914 (list!1503 e!161868))))

(declare-fun c!49325 () Bool)

(assert (=> bm!13911 (= c!49325 c!49324)))

(assert (=> b!260699 (= e!161867 e!161869)))

(declare-fun lt!106302 () Unit!4628)

(assert (=> b!260699 (= lt!106302 (forallContained!272 (t!36798 tokens!465) lambda!8715 (h!9149 (t!36798 tokens!465))))))

(assert (=> b!260699 (= lt!106299 (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 (t!36798 (t!36798 tokens!465)) separatorToken!170))))

(assert (=> b!260699 (= lt!106301 (maxPrefix!321 thiss!17480 rules!1920 (++!962 (list!1503 (charsOf!360 (h!9149 (t!36798 tokens!465)))) lt!106299)))))

(assert (=> b!260699 (= c!49327 (and ((_ is Some!776) lt!106301) (= (_1!2312 (v!14609 lt!106301)) (h!9149 (t!36798 tokens!465)))))))

(declare-fun bm!13912 () Bool)

(assert (=> bm!13912 (= call!13916 call!13917)))

(declare-fun b!260700 () Bool)

(assert (=> b!260700 (= e!161866 (++!962 call!13913 lt!106299))))

(declare-fun d!74655 () Bool)

(declare-fun c!49326 () Bool)

(assert (=> d!74655 (= c!49326 ((_ is Cons!3752) (t!36798 tokens!465)))))

(assert (=> d!74655 (= (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 (t!36798 tokens!465) separatorToken!170) e!161867)))

(declare-fun b!260701 () Bool)

(assert (=> b!260701 (= e!161868 (charsOf!360 separatorToken!170))))

(declare-fun b!260702 () Bool)

(assert (=> b!260702 (= e!161869 call!13913)))

(assert (= (and d!74655 c!49326) b!260699))

(assert (= (and d!74655 (not c!49326)) b!260696))

(assert (= (and b!260699 c!49327) b!260702))

(assert (= (and b!260699 (not c!49327)) b!260695))

(assert (= (and b!260695 c!49324) b!260700))

(assert (= (and b!260695 (not c!49324)) b!260698))

(assert (= (or b!260700 b!260698) bm!13912))

(assert (= (or b!260700 b!260698) bm!13911))

(assert (= (and bm!13911 c!49325) b!260701))

(assert (= (and bm!13911 (not c!49325)) b!260697))

(assert (= (or b!260702 bm!13912) bm!13910))

(assert (= (or b!260702 b!260700) bm!13908))

(assert (= (or b!260702 b!260700) bm!13909))

(declare-fun m!323725 () Bool)

(assert (=> bm!13911 m!323725))

(declare-fun m!323727 () Bool)

(assert (=> b!260698 m!323727))

(assert (=> b!260698 m!323727))

(declare-fun m!323729 () Bool)

(assert (=> b!260698 m!323729))

(assert (=> b!260698 m!323727))

(declare-fun m!323731 () Bool)

(assert (=> b!260698 m!323731))

(declare-fun m!323733 () Bool)

(assert (=> b!260698 m!323733))

(assert (=> b!260701 m!322841))

(declare-fun m!323735 () Bool)

(assert (=> b!260699 m!323735))

(declare-fun m!323737 () Bool)

(assert (=> b!260699 m!323737))

(declare-fun m!323739 () Bool)

(assert (=> b!260699 m!323739))

(declare-fun m!323741 () Bool)

(assert (=> b!260699 m!323741))

(declare-fun m!323743 () Bool)

(assert (=> b!260699 m!323743))

(assert (=> b!260699 m!323739))

(assert (=> b!260699 m!323743))

(assert (=> b!260699 m!323741))

(declare-fun m!323745 () Bool)

(assert (=> b!260699 m!323745))

(assert (=> bm!13910 m!323743))

(declare-fun m!323747 () Bool)

(assert (=> b!260700 m!323747))

(declare-fun m!323749 () Bool)

(assert (=> bm!13908 m!323749))

(declare-fun m!323751 () Bool)

(assert (=> bm!13909 m!323751))

(assert (=> b!260313 d!74655))

(declare-fun call!13924 () Option!777)

(declare-fun bm!13919 () Bool)

(assert (=> bm!13919 (= call!13924 (maxPrefixOneRule!133 thiss!17480 (h!9148 rules!1920) (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989)))))

(declare-fun b!260766 () Bool)

(declare-fun e!161911 () Option!777)

(assert (=> b!260766 (= e!161911 call!13924)))

(declare-fun d!74657 () Bool)

(declare-fun e!161909 () Bool)

(assert (=> d!74657 e!161909))

(declare-fun res!120080 () Bool)

(assert (=> d!74657 (=> res!120080 e!161909)))

(declare-fun lt!106345 () Option!777)

(assert (=> d!74657 (= res!120080 (isEmpty!2355 lt!106345))))

(assert (=> d!74657 (= lt!106345 e!161911)))

(declare-fun c!49339 () Bool)

(assert (=> d!74657 (= c!49339 (and ((_ is Cons!3751) rules!1920) ((_ is Nil!3751) (t!36797 rules!1920))))))

(declare-fun lt!106344 () Unit!4628)

(declare-fun lt!106342 () Unit!4628)

(assert (=> d!74657 (= lt!106344 lt!106342)))

(assert (=> d!74657 (isPrefix!389 (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989) (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989))))

(declare-fun lemmaIsPrefixRefl!198 (List!3760 List!3760) Unit!4628)

(assert (=> d!74657 (= lt!106342 (lemmaIsPrefixRefl!198 (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989) (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989)))))

(declare-fun rulesValidInductive!193 (LexerInterface!601 List!3761) Bool)

(assert (=> d!74657 (rulesValidInductive!193 thiss!17480 rules!1920)))

(assert (=> d!74657 (= (maxPrefix!321 thiss!17480 rules!1920 (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989)) lt!106345)))

(declare-fun b!260767 () Bool)

(declare-fun res!120077 () Bool)

(declare-fun e!161910 () Bool)

(assert (=> b!260767 (=> (not res!120077) (not e!161910))))

(assert (=> b!260767 (= res!120077 (= (list!1503 (charsOf!360 (_1!2312 (get!1233 lt!106345)))) (originalCharacters!758 (_1!2312 (get!1233 lt!106345)))))))

(declare-fun b!260768 () Bool)

(declare-fun contains!696 (List!3761 Rule!1230) Bool)

(assert (=> b!260768 (= e!161910 (contains!696 rules!1920 (rule!1300 (_1!2312 (get!1233 lt!106345)))))))

(declare-fun b!260769 () Bool)

(declare-fun res!120078 () Bool)

(assert (=> b!260769 (=> (not res!120078) (not e!161910))))

(assert (=> b!260769 (= res!120078 (matchR!267 (regex!715 (rule!1300 (_1!2312 (get!1233 lt!106345)))) (list!1503 (charsOf!360 (_1!2312 (get!1233 lt!106345))))))))

(declare-fun b!260770 () Bool)

(declare-fun res!120082 () Bool)

(assert (=> b!260770 (=> (not res!120082) (not e!161910))))

(assert (=> b!260770 (= res!120082 (= (++!962 (list!1503 (charsOf!360 (_1!2312 (get!1233 lt!106345)))) (_2!2312 (get!1233 lt!106345))) (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989)))))

(declare-fun b!260771 () Bool)

(declare-fun lt!106346 () Option!777)

(declare-fun lt!106343 () Option!777)

(assert (=> b!260771 (= e!161911 (ite (and ((_ is None!776) lt!106346) ((_ is None!776) lt!106343)) None!776 (ite ((_ is None!776) lt!106343) lt!106346 (ite ((_ is None!776) lt!106346) lt!106343 (ite (>= (size!2975 (_1!2312 (v!14609 lt!106346))) (size!2975 (_1!2312 (v!14609 lt!106343)))) lt!106346 lt!106343)))))))

(assert (=> b!260771 (= lt!106346 call!13924)))

(assert (=> b!260771 (= lt!106343 (maxPrefix!321 thiss!17480 (t!36797 rules!1920) (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989)))))

(declare-fun b!260772 () Bool)

(declare-fun res!120079 () Bool)

(assert (=> b!260772 (=> (not res!120079) (not e!161910))))

(assert (=> b!260772 (= res!120079 (< (size!2978 (_2!2312 (get!1233 lt!106345))) (size!2978 (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989))))))

(declare-fun b!260773 () Bool)

(assert (=> b!260773 (= e!161909 e!161910)))

(declare-fun res!120083 () Bool)

(assert (=> b!260773 (=> (not res!120083) (not e!161910))))

(assert (=> b!260773 (= res!120083 (isDefined!627 lt!106345))))

(declare-fun b!260774 () Bool)

(declare-fun res!120081 () Bool)

(assert (=> b!260774 (=> (not res!120081) (not e!161910))))

(declare-fun apply!728 (TokenValueInjection!1246 BalanceConc!2512) TokenValue!737)

(assert (=> b!260774 (= res!120081 (= (value!24693 (_1!2312 (get!1233 lt!106345))) (apply!728 (transformation!715 (rule!1300 (_1!2312 (get!1233 lt!106345)))) (seqFromList!798 (originalCharacters!758 (_1!2312 (get!1233 lt!106345)))))))))

(assert (= (and d!74657 c!49339) b!260766))

(assert (= (and d!74657 (not c!49339)) b!260771))

(assert (= (or b!260766 b!260771) bm!13919))

(assert (= (and d!74657 (not res!120080)) b!260773))

(assert (= (and b!260773 res!120083) b!260767))

(assert (= (and b!260767 res!120077) b!260772))

(assert (= (and b!260772 res!120079) b!260770))

(assert (= (and b!260770 res!120082) b!260774))

(assert (= (and b!260774 res!120081) b!260769))

(assert (= (and b!260769 res!120078) b!260768))

(declare-fun m!323801 () Bool)

(assert (=> b!260770 m!323801))

(declare-fun m!323803 () Bool)

(assert (=> b!260770 m!323803))

(assert (=> b!260770 m!323803))

(declare-fun m!323805 () Bool)

(assert (=> b!260770 m!323805))

(assert (=> b!260770 m!323805))

(declare-fun m!323807 () Bool)

(assert (=> b!260770 m!323807))

(declare-fun m!323809 () Bool)

(assert (=> b!260773 m!323809))

(assert (=> b!260769 m!323801))

(assert (=> b!260769 m!323803))

(assert (=> b!260769 m!323803))

(assert (=> b!260769 m!323805))

(assert (=> b!260769 m!323805))

(declare-fun m!323811 () Bool)

(assert (=> b!260769 m!323811))

(assert (=> b!260768 m!323801))

(declare-fun m!323813 () Bool)

(assert (=> b!260768 m!323813))

(assert (=> b!260772 m!323801))

(declare-fun m!323815 () Bool)

(assert (=> b!260772 m!323815))

(assert (=> b!260772 m!322849))

(declare-fun m!323817 () Bool)

(assert (=> b!260772 m!323817))

(assert (=> b!260767 m!323801))

(assert (=> b!260767 m!323803))

(assert (=> b!260767 m!323803))

(assert (=> b!260767 m!323805))

(assert (=> b!260774 m!323801))

(declare-fun m!323819 () Bool)

(assert (=> b!260774 m!323819))

(assert (=> b!260774 m!323819))

(declare-fun m!323821 () Bool)

(assert (=> b!260774 m!323821))

(declare-fun m!323823 () Bool)

(assert (=> d!74657 m!323823))

(assert (=> d!74657 m!322849))

(assert (=> d!74657 m!322849))

(declare-fun m!323825 () Bool)

(assert (=> d!74657 m!323825))

(assert (=> d!74657 m!322849))

(assert (=> d!74657 m!322849))

(declare-fun m!323827 () Bool)

(assert (=> d!74657 m!323827))

(declare-fun m!323829 () Bool)

(assert (=> d!74657 m!323829))

(assert (=> b!260771 m!322849))

(declare-fun m!323831 () Bool)

(assert (=> b!260771 m!323831))

(assert (=> bm!13919 m!322849))

(declare-fun m!323833 () Bool)

(assert (=> bm!13919 m!323833))

(assert (=> b!260313 d!74657))

(declare-fun d!74667 () Bool)

(declare-fun lt!106350 () BalanceConc!2512)

(assert (=> d!74667 (= (list!1503 lt!106350) (originalCharacters!758 (h!9149 tokens!465)))))

(assert (=> d!74667 (= lt!106350 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))))

(assert (=> d!74667 (= (charsOf!360 (h!9149 tokens!465)) lt!106350)))

(declare-fun b_lambda!7963 () Bool)

(assert (=> (not b_lambda!7963) (not d!74667)))

(assert (=> d!74667 t!36857))

(declare-fun b_and!20169 () Bool)

(assert (= b_and!20123 (and (=> t!36857 result!17466) b_and!20169)))

(assert (=> d!74667 t!36861))

(declare-fun b_and!20171 () Bool)

(assert (= b_and!20127 (and (=> t!36861 result!17474) b_and!20171)))

(assert (=> d!74667 t!36808))

(declare-fun b_and!20173 () Bool)

(assert (= b_and!20097 (and (=> t!36808 result!17426) b_and!20173)))

(assert (=> d!74667 t!36806))

(declare-fun b_and!20175 () Bool)

(assert (= b_and!20095 (and (=> t!36806 result!17424) b_and!20175)))

(assert (=> d!74667 t!36810))

(declare-fun b_and!20177 () Bool)

(assert (= b_and!20099 (and (=> t!36810 result!17428) b_and!20177)))

(declare-fun m!323835 () Bool)

(assert (=> d!74667 m!323835))

(assert (=> d!74667 m!322539))

(assert (=> b!260313 d!74667))

(declare-fun b!260780 () Bool)

(declare-fun res!120085 () Bool)

(declare-fun e!161915 () Bool)

(assert (=> b!260780 (=> (not res!120085) (not e!161915))))

(declare-fun lt!106351 () List!3760)

(assert (=> b!260780 (= res!120085 (= (size!2978 lt!106351) (+ (size!2978 (list!1503 (charsOf!360 (h!9149 tokens!465)))) (size!2978 lt!105989))))))

(declare-fun b!260781 () Bool)

(assert (=> b!260781 (= e!161915 (or (not (= lt!105989 Nil!3750)) (= lt!106351 (list!1503 (charsOf!360 (h!9149 tokens!465))))))))

(declare-fun b!260779 () Bool)

(declare-fun e!161914 () List!3760)

(assert (=> b!260779 (= e!161914 (Cons!3750 (h!9147 (list!1503 (charsOf!360 (h!9149 tokens!465)))) (++!962 (t!36796 (list!1503 (charsOf!360 (h!9149 tokens!465)))) lt!105989)))))

(declare-fun d!74669 () Bool)

(assert (=> d!74669 e!161915))

(declare-fun res!120086 () Bool)

(assert (=> d!74669 (=> (not res!120086) (not e!161915))))

(assert (=> d!74669 (= res!120086 (= (content!526 lt!106351) ((_ map or) (content!526 (list!1503 (charsOf!360 (h!9149 tokens!465)))) (content!526 lt!105989))))))

(assert (=> d!74669 (= lt!106351 e!161914)))

(declare-fun c!49341 () Bool)

(assert (=> d!74669 (= c!49341 ((_ is Nil!3750) (list!1503 (charsOf!360 (h!9149 tokens!465)))))))

(assert (=> d!74669 (= (++!962 (list!1503 (charsOf!360 (h!9149 tokens!465))) lt!105989) lt!106351)))

(declare-fun b!260778 () Bool)

(assert (=> b!260778 (= e!161914 lt!105989)))

(assert (= (and d!74669 c!49341) b!260778))

(assert (= (and d!74669 (not c!49341)) b!260779))

(assert (= (and d!74669 res!120086) b!260780))

(assert (= (and b!260780 res!120085) b!260781))

(declare-fun m!323837 () Bool)

(assert (=> b!260780 m!323837))

(assert (=> b!260780 m!322847))

(declare-fun m!323839 () Bool)

(assert (=> b!260780 m!323839))

(declare-fun m!323841 () Bool)

(assert (=> b!260780 m!323841))

(declare-fun m!323843 () Bool)

(assert (=> b!260779 m!323843))

(declare-fun m!323845 () Bool)

(assert (=> d!74669 m!323845))

(assert (=> d!74669 m!322847))

(declare-fun m!323847 () Bool)

(assert (=> d!74669 m!323847))

(declare-fun m!323849 () Bool)

(assert (=> d!74669 m!323849))

(assert (=> b!260313 d!74669))

(declare-fun d!74671 () Bool)

(assert (=> d!74671 (= (list!1503 (charsOf!360 (h!9149 tokens!465))) (list!1507 (c!49188 (charsOf!360 (h!9149 tokens!465)))))))

(declare-fun bs!28323 () Bool)

(assert (= bs!28323 d!74671))

(declare-fun m!323851 () Bool)

(assert (=> bs!28323 m!323851))

(assert (=> b!260313 d!74671))

(declare-fun d!74673 () Bool)

(assert (=> d!74673 (dynLambda!1880 lambda!8690 (h!9149 tokens!465))))

(declare-fun lt!106356 () Unit!4628)

(declare-fun choose!2404 (List!3762 Int Token!1174) Unit!4628)

(assert (=> d!74673 (= lt!106356 (choose!2404 tokens!465 lambda!8690 (h!9149 tokens!465)))))

(declare-fun e!161920 () Bool)

(assert (=> d!74673 e!161920))

(declare-fun res!120097 () Bool)

(assert (=> d!74673 (=> (not res!120097) (not e!161920))))

(assert (=> d!74673 (= res!120097 (forall!915 tokens!465 lambda!8690))))

(assert (=> d!74673 (= (forallContained!272 tokens!465 lambda!8690 (h!9149 tokens!465)) lt!106356)))

(declare-fun b!260792 () Bool)

(declare-fun contains!697 (List!3762 Token!1174) Bool)

(assert (=> b!260792 (= e!161920 (contains!697 tokens!465 (h!9149 tokens!465)))))

(assert (= (and d!74673 res!120097) b!260792))

(declare-fun b_lambda!7965 () Bool)

(assert (=> (not b_lambda!7965) (not d!74673)))

(declare-fun m!323853 () Bool)

(assert (=> d!74673 m!323853))

(declare-fun m!323855 () Bool)

(assert (=> d!74673 m!323855))

(declare-fun m!323857 () Bool)

(assert (=> d!74673 m!323857))

(declare-fun m!323859 () Bool)

(assert (=> b!260792 m!323859))

(assert (=> b!260313 d!74673))

(declare-fun d!74675 () Bool)

(declare-fun lt!106361 () Token!1174)

(assert (=> d!74675 (= lt!106361 (apply!725 (list!1506 (_1!2313 lt!106000)) 0))))

(declare-fun apply!729 (Conc!1253 Int) Token!1174)

(assert (=> d!74675 (= lt!106361 (apply!729 (c!49190 (_1!2313 lt!106000)) 0))))

(declare-fun e!161926 () Bool)

(assert (=> d!74675 e!161926))

(declare-fun res!120106 () Bool)

(assert (=> d!74675 (=> (not res!120106) (not e!161926))))

(assert (=> d!74675 (= res!120106 (<= 0 0))))

(assert (=> d!74675 (= (apply!726 (_1!2313 lt!106000) 0) lt!106361)))

(declare-fun b!260803 () Bool)

(assert (=> b!260803 (= e!161926 (< 0 (size!2979 (_1!2313 lt!106000))))))

(assert (= (and d!74675 res!120106) b!260803))

(assert (=> d!74675 m!323041))

(assert (=> d!74675 m!323041))

(declare-fun m!323897 () Bool)

(assert (=> d!74675 m!323897))

(declare-fun m!323899 () Bool)

(assert (=> d!74675 m!323899))

(assert (=> b!260803 m!322877))

(assert (=> b!260327 d!74675))

(declare-fun b!260806 () Bool)

(declare-fun res!120107 () Bool)

(declare-fun e!161928 () Bool)

(assert (=> b!260806 (=> (not res!120107) (not e!161928))))

(declare-fun lt!106362 () List!3760)

(assert (=> b!260806 (= res!120107 (= (size!2978 lt!106362) (+ (size!2978 call!13894) (size!2978 lt!105989))))))

(declare-fun b!260807 () Bool)

(assert (=> b!260807 (= e!161928 (or (not (= lt!105989 Nil!3750)) (= lt!106362 call!13894)))))

(declare-fun b!260805 () Bool)

(declare-fun e!161927 () List!3760)

(assert (=> b!260805 (= e!161927 (Cons!3750 (h!9147 call!13894) (++!962 (t!36796 call!13894) lt!105989)))))

(declare-fun d!74683 () Bool)

(assert (=> d!74683 e!161928))

(declare-fun res!120108 () Bool)

(assert (=> d!74683 (=> (not res!120108) (not e!161928))))

(assert (=> d!74683 (= res!120108 (= (content!526 lt!106362) ((_ map or) (content!526 call!13894) (content!526 lt!105989))))))

(assert (=> d!74683 (= lt!106362 e!161927)))

(declare-fun c!49346 () Bool)

(assert (=> d!74683 (= c!49346 ((_ is Nil!3750) call!13894))))

(assert (=> d!74683 (= (++!962 call!13894 lt!105989) lt!106362)))

(declare-fun b!260804 () Bool)

(assert (=> b!260804 (= e!161927 lt!105989)))

(assert (= (and d!74683 c!49346) b!260804))

(assert (= (and d!74683 (not c!49346)) b!260805))

(assert (= (and d!74683 res!120108) b!260806))

(assert (= (and b!260806 res!120107) b!260807))

(declare-fun m!323901 () Bool)

(assert (=> b!260806 m!323901))

(declare-fun m!323903 () Bool)

(assert (=> b!260806 m!323903))

(assert (=> b!260806 m!323841))

(declare-fun m!323905 () Bool)

(assert (=> b!260805 m!323905))

(declare-fun m!323907 () Bool)

(assert (=> d!74683 m!323907))

(declare-fun m!323909 () Bool)

(assert (=> d!74683 m!323909))

(assert (=> d!74683 m!323849))

(assert (=> b!260314 d!74683))

(declare-fun bs!28330 () Bool)

(declare-fun d!74685 () Bool)

(assert (= bs!28330 (and d!74685 d!74493)))

(declare-fun lambda!8718 () Int)

(assert (=> bs!28330 (= (= (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toValue!1434 (transformation!715 (rule!1300 separatorToken!170)))) (= lambda!8718 lambda!8696))))

(declare-fun bs!28331 () Bool)

(assert (= bs!28331 (and d!74685 d!74641)))

(assert (=> bs!28331 (= (= (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (= lambda!8718 lambda!8714))))

(assert (=> d!74685 true))

(assert (=> d!74685 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465))))) (dynLambda!1885 order!2837 lambda!8718))))

(assert (=> d!74685 (= (equivClasses!228 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465))))) (Forall2!140 lambda!8718))))

(declare-fun bs!28332 () Bool)

(assert (= bs!28332 d!74685))

(declare-fun m!323919 () Bool)

(assert (=> bs!28332 m!323919))

(assert (=> b!260320 d!74685))

(declare-fun b!260828 () Bool)

(declare-fun e!161944 () Bool)

(declare-fun e!161943 () Bool)

(assert (=> b!260828 (= e!161944 e!161943)))

(declare-fun res!120115 () Bool)

(declare-fun rulesUseDisjointChars!53 (Rule!1230 Rule!1230) Bool)

(assert (=> b!260828 (= res!120115 (rulesUseDisjointChars!53 (h!9148 rules!1920) (h!9148 rules!1920)))))

(assert (=> b!260828 (=> (not res!120115) (not e!161943))))

(declare-fun b!260829 () Bool)

(declare-fun e!161945 () Bool)

(assert (=> b!260829 (= e!161944 e!161945)))

(declare-fun res!120114 () Bool)

(assert (=> b!260829 (= res!120114 (not ((_ is Cons!3751) rules!1920)))))

(assert (=> b!260829 (=> res!120114 e!161945)))

(declare-fun bm!13927 () Bool)

(declare-fun call!13932 () Bool)

(assert (=> bm!13927 (= call!13932 (ruleDisjointCharsFromAllFromOtherType!104 (h!9148 rules!1920) (t!36797 rules!1920)))))

(declare-fun b!260830 () Bool)

(assert (=> b!260830 (= e!161943 call!13932)))

(declare-fun d!74691 () Bool)

(declare-fun c!49353 () Bool)

(assert (=> d!74691 (= c!49353 (and ((_ is Cons!3751) rules!1920) (not (= (isSeparator!715 (h!9148 rules!1920)) (isSeparator!715 (h!9148 rules!1920))))))))

(assert (=> d!74691 (= (ruleDisjointCharsFromAllFromOtherType!104 (h!9148 rules!1920) rules!1920) e!161944)))

(declare-fun b!260831 () Bool)

(assert (=> b!260831 (= e!161945 call!13932)))

(assert (= (and d!74691 c!49353) b!260828))

(assert (= (and d!74691 (not c!49353)) b!260829))

(assert (= (and b!260828 res!120115) b!260830))

(assert (= (and b!260829 (not res!120114)) b!260831))

(assert (= (or b!260830 b!260831) bm!13927))

(declare-fun m!323959 () Bool)

(assert (=> b!260828 m!323959))

(declare-fun m!323961 () Bool)

(assert (=> bm!13927 m!323961))

(assert (=> b!260066 d!74691))

(declare-fun d!74699 () Bool)

(declare-fun lt!106373 () Bool)

(assert (=> d!74699 (= lt!106373 (isEmpty!2349 (list!1503 (_2!2313 (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)))))))))

(declare-fun isEmpty!2356 (Conc!1252) Bool)

(assert (=> d!74699 (= lt!106373 (isEmpty!2356 (c!49188 (_2!2313 (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170)))))))))

(assert (=> d!74699 (= (isEmpty!2350 (_2!2313 (lex!395 thiss!17480 rules!1920 (print!326 thiss!17480 (singletonSeq!261 separatorToken!170))))) lt!106373)))

(declare-fun bs!28342 () Bool)

(assert (= bs!28342 d!74699))

(declare-fun m!323963 () Bool)

(assert (=> bs!28342 m!323963))

(assert (=> bs!28342 m!323963))

(declare-fun m!323965 () Bool)

(assert (=> bs!28342 m!323965))

(declare-fun m!323967 () Bool)

(assert (=> bs!28342 m!323967))

(assert (=> b!260329 d!74699))

(assert (=> b!260329 d!74501))

(assert (=> b!260329 d!74507))

(assert (=> b!260329 d!74497))

(declare-fun d!74701 () Bool)

(declare-fun res!120116 () Bool)

(declare-fun e!161946 () Bool)

(assert (=> d!74701 (=> res!120116 e!161946)))

(assert (=> d!74701 (= res!120116 (not ((_ is Cons!3751) (t!36797 rules!1920))))))

(assert (=> d!74701 (= (sepAndNonSepRulesDisjointChars!304 rules!1920 (t!36797 rules!1920)) e!161946)))

(declare-fun b!260832 () Bool)

(declare-fun e!161947 () Bool)

(assert (=> b!260832 (= e!161946 e!161947)))

(declare-fun res!120117 () Bool)

(assert (=> b!260832 (=> (not res!120117) (not e!161947))))

(assert (=> b!260832 (= res!120117 (ruleDisjointCharsFromAllFromOtherType!104 (h!9148 (t!36797 rules!1920)) rules!1920))))

(declare-fun b!260833 () Bool)

(assert (=> b!260833 (= e!161947 (sepAndNonSepRulesDisjointChars!304 rules!1920 (t!36797 (t!36797 rules!1920))))))

(assert (= (and d!74701 (not res!120116)) b!260832))

(assert (= (and b!260832 res!120117) b!260833))

(declare-fun m!323969 () Bool)

(assert (=> b!260832 m!323969))

(declare-fun m!323971 () Bool)

(assert (=> b!260833 m!323971))

(assert (=> b!260067 d!74701))

(declare-fun d!74703 () Bool)

(assert (=> d!74703 (= (list!1503 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))) (list!1507 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))))))

(declare-fun bs!28343 () Bool)

(assert (= bs!28343 d!74703))

(declare-fun m!323973 () Bool)

(assert (=> bs!28343 m!323973))

(assert (=> b!260034 d!74703))

(declare-fun b!260844 () Bool)

(declare-fun e!161953 () List!3760)

(declare-fun list!1511 (IArray!2505) List!3760)

(assert (=> b!260844 (= e!161953 (list!1511 (xs!3851 (c!49188 (seqFromList!798 lt!105861)))))))

(declare-fun d!74705 () Bool)

(declare-fun c!49358 () Bool)

(assert (=> d!74705 (= c!49358 ((_ is Empty!1252) (c!49188 (seqFromList!798 lt!105861))))))

(declare-fun e!161952 () List!3760)

(assert (=> d!74705 (= (list!1507 (c!49188 (seqFromList!798 lt!105861))) e!161952)))

(declare-fun b!260845 () Bool)

(assert (=> b!260845 (= e!161953 (++!962 (list!1507 (left!3080 (c!49188 (seqFromList!798 lt!105861)))) (list!1507 (right!3410 (c!49188 (seqFromList!798 lt!105861))))))))

(declare-fun b!260843 () Bool)

(assert (=> b!260843 (= e!161952 e!161953)))

(declare-fun c!49359 () Bool)

(assert (=> b!260843 (= c!49359 ((_ is Leaf!1949) (c!49188 (seqFromList!798 lt!105861))))))

(declare-fun b!260842 () Bool)

(assert (=> b!260842 (= e!161952 Nil!3750)))

(assert (= (and d!74705 c!49358) b!260842))

(assert (= (and d!74705 (not c!49358)) b!260843))

(assert (= (and b!260843 c!49359) b!260844))

(assert (= (and b!260843 (not c!49359)) b!260845))

(declare-fun m!323975 () Bool)

(assert (=> b!260844 m!323975))

(declare-fun m!323977 () Bool)

(assert (=> b!260845 m!323977))

(declare-fun m!323979 () Bool)

(assert (=> b!260845 m!323979))

(assert (=> b!260845 m!323977))

(assert (=> b!260845 m!323979))

(declare-fun m!323981 () Bool)

(assert (=> b!260845 m!323981))

(assert (=> d!74441 d!74705))

(declare-fun e!161955 () List!3760)

(declare-fun b!260848 () Bool)

(assert (=> b!260848 (= e!161955 (list!1511 (xs!3851 (c!49188 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0)))))))

(declare-fun d!74707 () Bool)

(declare-fun c!49360 () Bool)

(assert (=> d!74707 (= c!49360 ((_ is Empty!1252) (c!49188 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0))))))

(declare-fun e!161954 () List!3760)

(assert (=> d!74707 (= (list!1507 (c!49188 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0))) e!161954)))

(declare-fun b!260849 () Bool)

(assert (=> b!260849 (= e!161955 (++!962 (list!1507 (left!3080 (c!49188 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0)))) (list!1507 (right!3410 (c!49188 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0))))))))

(declare-fun b!260847 () Bool)

(assert (=> b!260847 (= e!161954 e!161955)))

(declare-fun c!49361 () Bool)

(assert (=> b!260847 (= c!49361 ((_ is Leaf!1949) (c!49188 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 0))))))

(declare-fun b!260846 () Bool)

(assert (=> b!260846 (= e!161954 Nil!3750)))

(assert (= (and d!74707 c!49360) b!260846))

(assert (= (and d!74707 (not c!49360)) b!260847))

(assert (= (and b!260847 c!49361) b!260848))

(assert (= (and b!260847 (not c!49361)) b!260849))

(declare-fun m!323983 () Bool)

(assert (=> b!260848 m!323983))

(declare-fun m!323985 () Bool)

(assert (=> b!260849 m!323985))

(declare-fun m!323987 () Bool)

(assert (=> b!260849 m!323987))

(assert (=> b!260849 m!323985))

(assert (=> b!260849 m!323987))

(declare-fun m!323989 () Bool)

(assert (=> b!260849 m!323989))

(assert (=> d!74409 d!74707))

(declare-fun d!74709 () Bool)

(declare-fun lt!106374 () BalanceConc!2512)

(assert (=> d!74709 (= (list!1503 lt!106374) (originalCharacters!758 (ite c!49224 separatorToken!170 call!13864)))))

(assert (=> d!74709 (= lt!106374 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864)))) (value!24693 (ite c!49224 separatorToken!170 call!13864))))))

(assert (=> d!74709 (= (charsOf!360 (ite c!49224 separatorToken!170 call!13864)) lt!106374)))

(declare-fun b_lambda!7969 () Bool)

(assert (=> (not b_lambda!7969) (not d!74709)))

(declare-fun tb!14029 () Bool)

(declare-fun t!36892 () Bool)

(assert (=> (and b!260378 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864))))) t!36892) tb!14029))

(declare-fun b!260850 () Bool)

(declare-fun e!161956 () Bool)

(declare-fun tp!100214 () Bool)

(assert (=> b!260850 (= e!161956 (and (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864)))) (value!24693 (ite c!49224 separatorToken!170 call!13864))))) tp!100214))))

(declare-fun result!17496 () Bool)

(assert (=> tb!14029 (= result!17496 (and (inv!4630 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864)))) (value!24693 (ite c!49224 separatorToken!170 call!13864)))) e!161956))))

(assert (= tb!14029 b!260850))

(declare-fun m!323991 () Bool)

(assert (=> b!260850 m!323991))

(declare-fun m!323993 () Bool)

(assert (=> tb!14029 m!323993))

(assert (=> d!74709 t!36892))

(declare-fun b_and!20179 () Bool)

(assert (= b_and!20171 (and (=> t!36892 result!17496) b_and!20179)))

(declare-fun tb!14031 () Bool)

(declare-fun t!36894 () Bool)

(assert (=> (and b!260003 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864))))) t!36894) tb!14031))

(declare-fun result!17498 () Bool)

(assert (= result!17498 result!17496))

(assert (=> d!74709 t!36894))

(declare-fun b_and!20181 () Bool)

(assert (= b_and!20173 (and (=> t!36894 result!17498) b_and!20181)))

(declare-fun t!36896 () Bool)

(declare-fun tb!14033 () Bool)

(assert (=> (and b!260000 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864))))) t!36896) tb!14033))

(declare-fun result!17500 () Bool)

(assert (= result!17500 result!17496))

(assert (=> d!74709 t!36896))

(declare-fun b_and!20183 () Bool)

(assert (= b_and!20177 (and (=> t!36896 result!17500) b_and!20183)))

(declare-fun tb!14035 () Bool)

(declare-fun t!36898 () Bool)

(assert (=> (and b!260357 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864))))) t!36898) tb!14035))

(declare-fun result!17502 () Bool)

(assert (= result!17502 result!17496))

(assert (=> d!74709 t!36898))

(declare-fun b_and!20185 () Bool)

(assert (= b_and!20169 (and (=> t!36898 result!17502) b_and!20185)))

(declare-fun t!36900 () Bool)

(declare-fun tb!14037 () Bool)

(assert (=> (and b!259989 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864))))) t!36900) tb!14037))

(declare-fun result!17504 () Bool)

(assert (= result!17504 result!17496))

(assert (=> d!74709 t!36900))

(declare-fun b_and!20187 () Bool)

(assert (= b_and!20175 (and (=> t!36900 result!17504) b_and!20187)))

(declare-fun m!323995 () Bool)

(assert (=> d!74709 m!323995))

(declare-fun m!323997 () Bool)

(assert (=> d!74709 m!323997))

(assert (=> bm!13859 d!74709))

(declare-fun d!74711 () Bool)

(declare-fun res!120118 () Bool)

(declare-fun e!161957 () Bool)

(assert (=> d!74711 (=> (not res!120118) (not e!161957))))

(assert (=> d!74711 (= res!120118 (not (isEmpty!2349 (originalCharacters!758 (h!9149 (t!36798 tokens!465))))))))

(assert (=> d!74711 (= (inv!4625 (h!9149 (t!36798 tokens!465))) e!161957)))

(declare-fun b!260851 () Bool)

(declare-fun res!120119 () Bool)

(assert (=> b!260851 (=> (not res!120119) (not e!161957))))

(assert (=> b!260851 (= res!120119 (= (originalCharacters!758 (h!9149 (t!36798 tokens!465))) (list!1503 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (value!24693 (h!9149 (t!36798 tokens!465)))))))))

(declare-fun b!260852 () Bool)

(assert (=> b!260852 (= e!161957 (= (size!2975 (h!9149 (t!36798 tokens!465))) (size!2978 (originalCharacters!758 (h!9149 (t!36798 tokens!465))))))))

(assert (= (and d!74711 res!120118) b!260851))

(assert (= (and b!260851 res!120119) b!260852))

(declare-fun b_lambda!7971 () Bool)

(assert (=> (not b_lambda!7971) (not b!260851)))

(declare-fun tb!14039 () Bool)

(declare-fun t!36902 () Bool)

(assert (=> (and b!260003 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) t!36902) tb!14039))

(declare-fun b!260853 () Bool)

(declare-fun e!161958 () Bool)

(declare-fun tp!100215 () Bool)

(assert (=> b!260853 (= e!161958 (and (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (value!24693 (h!9149 (t!36798 tokens!465)))))) tp!100215))))

(declare-fun result!17506 () Bool)

(assert (=> tb!14039 (= result!17506 (and (inv!4630 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (value!24693 (h!9149 (t!36798 tokens!465))))) e!161958))))

(assert (= tb!14039 b!260853))

(declare-fun m!323999 () Bool)

(assert (=> b!260853 m!323999))

(declare-fun m!324001 () Bool)

(assert (=> tb!14039 m!324001))

(assert (=> b!260851 t!36902))

(declare-fun b_and!20189 () Bool)

(assert (= b_and!20181 (and (=> t!36902 result!17506) b_and!20189)))

(declare-fun tb!14041 () Bool)

(declare-fun t!36904 () Bool)

(assert (=> (and b!260378 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) t!36904) tb!14041))

(declare-fun result!17508 () Bool)

(assert (= result!17508 result!17506))

(assert (=> b!260851 t!36904))

(declare-fun b_and!20191 () Bool)

(assert (= b_and!20179 (and (=> t!36904 result!17508) b_and!20191)))

(declare-fun t!36906 () Bool)

(declare-fun tb!14043 () Bool)

(assert (=> (and b!259989 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) t!36906) tb!14043))

(declare-fun result!17510 () Bool)

(assert (= result!17510 result!17506))

(assert (=> b!260851 t!36906))

(declare-fun b_and!20193 () Bool)

(assert (= b_and!20187 (and (=> t!36906 result!17510) b_and!20193)))

(declare-fun t!36908 () Bool)

(declare-fun tb!14045 () Bool)

(assert (=> (and b!260357 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) t!36908) tb!14045))

(declare-fun result!17512 () Bool)

(assert (= result!17512 result!17506))

(assert (=> b!260851 t!36908))

(declare-fun b_and!20195 () Bool)

(assert (= b_and!20185 (and (=> t!36908 result!17512) b_and!20195)))

(declare-fun tb!14047 () Bool)

(declare-fun t!36910 () Bool)

(assert (=> (and b!260000 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) t!36910) tb!14047))

(declare-fun result!17514 () Bool)

(assert (= result!17514 result!17506))

(assert (=> b!260851 t!36910))

(declare-fun b_and!20197 () Bool)

(assert (= b_and!20183 (and (=> t!36910 result!17514) b_and!20197)))

(declare-fun m!324003 () Bool)

(assert (=> d!74711 m!324003))

(declare-fun m!324005 () Bool)

(assert (=> b!260851 m!324005))

(assert (=> b!260851 m!324005))

(declare-fun m!324007 () Bool)

(assert (=> b!260851 m!324007))

(declare-fun m!324009 () Bool)

(assert (=> b!260852 m!324009))

(assert (=> b!260354 d!74711))

(declare-fun d!74713 () Bool)

(assert (=> d!74713 (= (inv!4622 (tag!925 (rule!1300 (h!9149 (t!36798 tokens!465))))) (= (mod (str.len (value!24692 (tag!925 (rule!1300 (h!9149 (t!36798 tokens!465)))))) 2) 0))))

(assert (=> b!260356 d!74713))

(declare-fun d!74715 () Bool)

(declare-fun res!120120 () Bool)

(declare-fun e!161959 () Bool)

(assert (=> d!74715 (=> (not res!120120) (not e!161959))))

(assert (=> d!74715 (= res!120120 (semiInverseModEq!245 (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toValue!1434 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))))))

(assert (=> d!74715 (= (inv!4626 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) e!161959)))

(declare-fun b!260854 () Bool)

(assert (=> b!260854 (= e!161959 (equivClasses!228 (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toValue!1434 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))))))

(assert (= (and d!74715 res!120120) b!260854))

(declare-fun m!324011 () Bool)

(assert (=> d!74715 m!324011))

(declare-fun m!324013 () Bool)

(assert (=> b!260854 m!324013))

(assert (=> b!260356 d!74715))

(declare-fun d!74717 () Bool)

(declare-fun c!49362 () Bool)

(assert (=> d!74717 (= c!49362 ((_ is Node!1252) (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))))))

(declare-fun e!161960 () Bool)

(assert (=> d!74717 (= (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))) e!161960)))

(declare-fun b!260855 () Bool)

(assert (=> b!260855 (= e!161960 (inv!4633 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))))))

(declare-fun b!260856 () Bool)

(declare-fun e!161961 () Bool)

(assert (=> b!260856 (= e!161960 e!161961)))

(declare-fun res!120121 () Bool)

(assert (=> b!260856 (= res!120121 (not ((_ is Leaf!1949) (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))))))))

(assert (=> b!260856 (=> res!120121 e!161961)))

(declare-fun b!260857 () Bool)

(assert (=> b!260857 (= e!161961 (inv!4634 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))))))

(assert (= (and d!74717 c!49362) b!260855))

(assert (= (and d!74717 (not c!49362)) b!260856))

(assert (= (and b!260856 (not res!120121)) b!260857))

(declare-fun m!324015 () Bool)

(assert (=> b!260855 m!324015))

(declare-fun m!324017 () Bool)

(assert (=> b!260857 m!324017))

(assert (=> b!260033 d!74717))

(declare-fun d!74719 () Bool)

(declare-fun lt!106375 () Int)

(assert (=> d!74719 (>= lt!106375 0)))

(declare-fun e!161962 () Int)

(assert (=> d!74719 (= lt!106375 e!161962)))

(declare-fun c!49363 () Bool)

(assert (=> d!74719 (= c!49363 ((_ is Nil!3750) (originalCharacters!758 separatorToken!170)))))

(assert (=> d!74719 (= (size!2978 (originalCharacters!758 separatorToken!170)) lt!106375)))

(declare-fun b!260858 () Bool)

(assert (=> b!260858 (= e!161962 0)))

(declare-fun b!260859 () Bool)

(assert (=> b!260859 (= e!161962 (+ 1 (size!2978 (t!36796 (originalCharacters!758 separatorToken!170)))))))

(assert (= (and d!74719 c!49363) b!260858))

(assert (= (and d!74719 (not c!49363)) b!260859))

(declare-fun m!324019 () Bool)

(assert (=> b!260859 m!324019))

(assert (=> b!260028 d!74719))

(declare-fun d!74721 () Bool)

(declare-fun lt!106376 () BalanceConc!2512)

(assert (=> d!74721 (= (list!1503 lt!106376) (originalCharacters!758 (ite c!49223 call!13868 call!13864)))))

(assert (=> d!74721 (= lt!106376 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864)))) (value!24693 (ite c!49223 call!13868 call!13864))))))

(assert (=> d!74721 (= (charsOf!360 (ite c!49223 call!13868 call!13864)) lt!106376)))

(declare-fun b_lambda!7973 () Bool)

(assert (=> (not b_lambda!7973) (not d!74721)))

(declare-fun tb!14049 () Bool)

(declare-fun t!36912 () Bool)

(assert (=> (and b!260000 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864))))) t!36912) tb!14049))

(declare-fun e!161963 () Bool)

(declare-fun tp!100216 () Bool)

(declare-fun b!260860 () Bool)

(assert (=> b!260860 (= e!161963 (and (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864)))) (value!24693 (ite c!49223 call!13868 call!13864))))) tp!100216))))

(declare-fun result!17516 () Bool)

(assert (=> tb!14049 (= result!17516 (and (inv!4630 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864)))) (value!24693 (ite c!49223 call!13868 call!13864)))) e!161963))))

(assert (= tb!14049 b!260860))

(declare-fun m!324021 () Bool)

(assert (=> b!260860 m!324021))

(declare-fun m!324023 () Bool)

(assert (=> tb!14049 m!324023))

(assert (=> d!74721 t!36912))

(declare-fun b_and!20199 () Bool)

(assert (= b_and!20197 (and (=> t!36912 result!17516) b_and!20199)))

(declare-fun tb!14051 () Bool)

(declare-fun t!36914 () Bool)

(assert (=> (and b!260003 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864))))) t!36914) tb!14051))

(declare-fun result!17518 () Bool)

(assert (= result!17518 result!17516))

(assert (=> d!74721 t!36914))

(declare-fun b_and!20201 () Bool)

(assert (= b_and!20189 (and (=> t!36914 result!17518) b_and!20201)))

(declare-fun tb!14053 () Bool)

(declare-fun t!36916 () Bool)

(assert (=> (and b!260357 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864))))) t!36916) tb!14053))

(declare-fun result!17520 () Bool)

(assert (= result!17520 result!17516))

(assert (=> d!74721 t!36916))

(declare-fun b_and!20203 () Bool)

(assert (= b_and!20195 (and (=> t!36916 result!17520) b_and!20203)))

(declare-fun tb!14055 () Bool)

(declare-fun t!36918 () Bool)

(assert (=> (and b!260378 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864))))) t!36918) tb!14055))

(declare-fun result!17522 () Bool)

(assert (= result!17522 result!17516))

(assert (=> d!74721 t!36918))

(declare-fun b_and!20205 () Bool)

(assert (= b_and!20191 (and (=> t!36918 result!17522) b_and!20205)))

(declare-fun tb!14057 () Bool)

(declare-fun t!36920 () Bool)

(assert (=> (and b!259989 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864))))) t!36920) tb!14057))

(declare-fun result!17524 () Bool)

(assert (= result!17524 result!17516))

(assert (=> d!74721 t!36920))

(declare-fun b_and!20207 () Bool)

(assert (= b_and!20193 (and (=> t!36920 result!17524) b_and!20207)))

(declare-fun m!324025 () Bool)

(assert (=> d!74721 m!324025))

(declare-fun m!324027 () Bool)

(assert (=> d!74721 m!324027))

(assert (=> bm!13861 d!74721))

(declare-fun bs!28344 () Bool)

(declare-fun d!74723 () Bool)

(assert (= bs!28344 (and d!74723 d!74515)))

(declare-fun lambda!8720 () Int)

(assert (=> bs!28344 (not (= lambda!8720 lambda!8699))))

(declare-fun bs!28345 () Bool)

(assert (= bs!28345 (and d!74723 d!74411)))

(assert (=> bs!28345 (= lambda!8720 lambda!8683)))

(declare-fun bs!28346 () Bool)

(assert (= bs!28346 (and d!74723 b!260004)))

(assert (=> bs!28346 (= lambda!8720 lambda!8662)))

(declare-fun bs!28347 () Bool)

(assert (= bs!28347 (and d!74723 b!260171)))

(assert (=> bs!28347 (not (= lambda!8720 lambda!8684))))

(declare-fun bs!28348 () Bool)

(assert (= bs!28348 (and d!74723 d!74389)))

(assert (=> bs!28348 (not (= lambda!8720 lambda!8672))))

(declare-fun bs!28349 () Bool)

(assert (= bs!28349 (and d!74723 b!260699)))

(assert (=> bs!28349 (not (= lambda!8720 lambda!8715))))

(declare-fun bs!28350 () Bool)

(assert (= bs!28350 (and d!74723 b!260313)))

(assert (=> bs!28350 (not (= lambda!8720 lambda!8690))))

(declare-fun bs!28351 () Bool)

(assert (= bs!28351 (and d!74723 b!260559)))

(assert (=> bs!28351 (not (= lambda!8720 lambda!8704))))

(declare-fun bs!28352 () Bool)

(declare-fun b!260862 () Bool)

(assert (= bs!28352 (and b!260862 d!74515)))

(declare-fun lambda!8721 () Int)

(assert (=> bs!28352 (= lambda!8721 lambda!8699)))

(declare-fun bs!28353 () Bool)

(assert (= bs!28353 (and b!260862 d!74411)))

(assert (=> bs!28353 (not (= lambda!8721 lambda!8683))))

(declare-fun bs!28354 () Bool)

(assert (= bs!28354 (and b!260862 b!260004)))

(assert (=> bs!28354 (not (= lambda!8721 lambda!8662))))

(declare-fun bs!28355 () Bool)

(assert (= bs!28355 (and b!260862 b!260171)))

(assert (=> bs!28355 (= lambda!8721 lambda!8684)))

(declare-fun bs!28356 () Bool)

(assert (= bs!28356 (and b!260862 d!74389)))

(assert (=> bs!28356 (= lambda!8721 lambda!8672)))

(declare-fun bs!28357 () Bool)

(assert (= bs!28357 (and b!260862 b!260313)))

(assert (=> bs!28357 (= lambda!8721 lambda!8690)))

(declare-fun bs!28358 () Bool)

(assert (= bs!28358 (and b!260862 b!260559)))

(assert (=> bs!28358 (= lambda!8721 lambda!8704)))

(declare-fun bs!28359 () Bool)

(assert (= bs!28359 (and b!260862 d!74723)))

(assert (=> bs!28359 (not (= lambda!8721 lambda!8720))))

(declare-fun bs!28360 () Bool)

(assert (= bs!28360 (and b!260862 b!260699)))

(assert (=> bs!28360 (= lambda!8721 lambda!8715)))

(declare-fun b!260872 () Bool)

(declare-fun e!161972 () Bool)

(assert (=> b!260872 (= e!161972 true)))

(declare-fun b!260871 () Bool)

(declare-fun e!161971 () Bool)

(assert (=> b!260871 (= e!161971 e!161972)))

(declare-fun b!260870 () Bool)

(declare-fun e!161970 () Bool)

(assert (=> b!260870 (= e!161970 e!161971)))

(assert (=> b!260862 e!161970))

(assert (= b!260871 b!260872))

(assert (= b!260870 b!260871))

(assert (= (and b!260862 ((_ is Cons!3751) rules!1920)) b!260870))

(assert (=> b!260872 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8721))))

(assert (=> b!260872 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (dynLambda!1882 order!2831 lambda!8721))))

(assert (=> b!260862 true))

(declare-fun c!49366 () Bool)

(declare-fun call!13935 () BalanceConc!2512)

(declare-fun call!13933 () Token!1174)

(declare-fun bm!13928 () Bool)

(assert (=> bm!13928 (= call!13935 (charsOf!360 (ite c!49366 separatorToken!170 call!13933)))))

(declare-fun bm!13929 () Bool)

(declare-fun call!13937 () Token!1174)

(assert (=> bm!13929 (= call!13933 call!13937)))

(declare-fun call!13936 () BalanceConc!2512)

(declare-fun c!49365 () Bool)

(declare-fun bm!13930 () Bool)

(assert (=> bm!13930 (= call!13936 (charsOf!360 (ite c!49365 call!13937 call!13933)))))

(declare-fun b!260861 () Bool)

(declare-fun e!161966 () Bool)

(declare-fun lt!106383 () Option!776)

(assert (=> b!260861 (= e!161966 (not (= (_1!2311 (v!14608 lt!106383)) call!13937)))))

(declare-fun e!161969 () BalanceConc!2512)

(declare-fun e!161964 () BalanceConc!2512)

(assert (=> b!260862 (= e!161969 e!161964)))

(declare-fun lt!106382 () List!3762)

(assert (=> b!260862 (= lt!106382 (list!1506 lt!105860))))

(declare-fun lt!106385 () Unit!4628)

(assert (=> b!260862 (= lt!106385 (lemmaDropApply!190 lt!106382 (+ 0 1)))))

(assert (=> b!260862 (= (head!874 (drop!203 lt!106382 (+ 0 1))) (apply!725 lt!106382 (+ 0 1)))))

(declare-fun lt!106380 () Unit!4628)

(assert (=> b!260862 (= lt!106380 lt!106385)))

(declare-fun lt!106388 () List!3762)

(assert (=> b!260862 (= lt!106388 (list!1506 lt!105860))))

(declare-fun lt!106378 () Unit!4628)

(assert (=> b!260862 (= lt!106378 (lemmaDropTail!182 lt!106388 (+ 0 1)))))

(assert (=> b!260862 (= (tail!464 (drop!203 lt!106388 (+ 0 1))) (drop!203 lt!106388 (+ 0 1 1)))))

(declare-fun lt!106384 () Unit!4628)

(assert (=> b!260862 (= lt!106384 lt!106378)))

(declare-fun lt!106377 () Unit!4628)

(assert (=> b!260862 (= lt!106377 (forallContained!272 (list!1506 lt!105860) lambda!8721 (apply!726 lt!105860 (+ 0 1))))))

(declare-fun lt!106389 () BalanceConc!2512)

(assert (=> b!260862 (= lt!106389 (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!260862 (= lt!106383 (maxPrefixZipperSequence!284 thiss!17480 rules!1920 (++!961 (charsOf!360 (apply!726 lt!105860 (+ 0 1))) lt!106389)))))

(declare-fun res!120122 () Bool)

(assert (=> b!260862 (= res!120122 ((_ is Some!775) lt!106383))))

(declare-fun e!161965 () Bool)

(assert (=> b!260862 (=> (not res!120122) (not e!161965))))

(assert (=> b!260862 (= c!49365 e!161965)))

(declare-fun call!13934 () BalanceConc!2512)

(declare-fun bm!13931 () Bool)

(assert (=> bm!13931 (= call!13934 (++!961 call!13936 (ite c!49365 lt!106389 call!13935)))))

(declare-fun lt!106390 () BalanceConc!2512)

(assert (=> d!74723 (= (list!1503 lt!106390) (printWithSeparatorTokenWhenNeededList!284 thiss!17480 rules!1920 (dropList!150 lt!105860 (+ 0 1)) separatorToken!170))))

(assert (=> d!74723 (= lt!106390 e!161969)))

(declare-fun c!49364 () Bool)

(assert (=> d!74723 (= c!49364 (>= (+ 0 1) (size!2979 lt!105860)))))

(declare-fun lt!106386 () Unit!4628)

(assert (=> d!74723 (= lt!106386 (lemmaContentSubsetPreservesForall!94 (list!1506 lt!105860) (dropList!150 lt!105860 (+ 0 1)) lambda!8720))))

(declare-fun e!161968 () Bool)

(assert (=> d!74723 e!161968))

(declare-fun res!120123 () Bool)

(assert (=> d!74723 (=> (not res!120123) (not e!161968))))

(assert (=> d!74723 (= res!120123 (>= (+ 0 1) 0))))

(assert (=> d!74723 (= (printWithSeparatorTokenWhenNeededRec!276 thiss!17480 rules!1920 lt!105860 separatorToken!170 (+ 0 1)) lt!106390)))

(declare-fun b!260863 () Bool)

(assert (=> b!260863 (= e!161964 call!13934)))

(declare-fun b!260864 () Bool)

(assert (=> b!260864 (= e!161965 (= (_1!2311 (v!14608 lt!106383)) (apply!726 lt!105860 (+ 0 1))))))

(declare-fun b!260865 () Bool)

(assert (=> b!260865 (= e!161969 (BalanceConc!2513 Empty!1252))))

(declare-fun bm!13932 () Bool)

(assert (=> bm!13932 (= call!13937 (apply!726 lt!105860 (+ 0 1)))))

(declare-fun b!260866 () Bool)

(assert (=> b!260866 (= c!49366 e!161966)))

(declare-fun res!120124 () Bool)

(assert (=> b!260866 (=> (not res!120124) (not e!161966))))

(assert (=> b!260866 (= res!120124 ((_ is Some!775) lt!106383))))

(declare-fun e!161967 () BalanceConc!2512)

(assert (=> b!260866 (= e!161964 e!161967)))

(declare-fun b!260867 () Bool)

(assert (=> b!260867 (= e!161967 (++!961 call!13934 lt!106389))))

(declare-fun b!260868 () Bool)

(assert (=> b!260868 (= e!161967 (BalanceConc!2513 Empty!1252))))

(assert (=> b!260868 (= (print!326 thiss!17480 (singletonSeq!261 call!13933)) (printTailRec!289 thiss!17480 (singletonSeq!261 call!13933) 0 (BalanceConc!2513 Empty!1252)))))

(declare-fun lt!106381 () Unit!4628)

(declare-fun Unit!4650 () Unit!4628)

(assert (=> b!260868 (= lt!106381 Unit!4650)))

(declare-fun lt!106387 () Unit!4628)

(assert (=> b!260868 (= lt!106387 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!98 thiss!17480 rules!1920 (list!1503 call!13935) (list!1503 lt!106389)))))

(assert (=> b!260868 false))

(declare-fun lt!106379 () Unit!4628)

(declare-fun Unit!4651 () Unit!4628)

(assert (=> b!260868 (= lt!106379 Unit!4651)))

(declare-fun b!260869 () Bool)

(assert (=> b!260869 (= e!161968 (<= (+ 0 1) (size!2979 lt!105860)))))

(assert (= (and d!74723 res!120123) b!260869))

(assert (= (and d!74723 c!49364) b!260865))

(assert (= (and d!74723 (not c!49364)) b!260862))

(assert (= (and b!260862 res!120122) b!260864))

(assert (= (and b!260862 c!49365) b!260863))

(assert (= (and b!260862 (not c!49365)) b!260866))

(assert (= (and b!260866 res!120124) b!260861))

(assert (= (and b!260866 c!49366) b!260867))

(assert (= (and b!260866 (not c!49366)) b!260868))

(assert (= (or b!260867 b!260868) bm!13929))

(assert (= (or b!260867 b!260868) bm!13928))

(assert (= (or b!260863 bm!13929 b!260861) bm!13932))

(assert (= (or b!260863 b!260867) bm!13930))

(assert (= (or b!260863 b!260867) bm!13931))

(declare-fun m!324029 () Bool)

(assert (=> b!260864 m!324029))

(assert (=> b!260869 m!322685))

(declare-fun m!324031 () Bool)

(assert (=> b!260868 m!324031))

(declare-fun m!324033 () Bool)

(assert (=> b!260868 m!324033))

(declare-fun m!324035 () Bool)

(assert (=> b!260868 m!324035))

(declare-fun m!324037 () Bool)

(assert (=> b!260868 m!324037))

(assert (=> b!260868 m!324033))

(declare-fun m!324039 () Bool)

(assert (=> b!260868 m!324039))

(assert (=> b!260868 m!324033))

(assert (=> b!260868 m!324031))

(assert (=> b!260868 m!324037))

(declare-fun m!324041 () Bool)

(assert (=> b!260868 m!324041))

(assert (=> bm!13932 m!324029))

(declare-fun m!324043 () Bool)

(assert (=> bm!13931 m!324043))

(declare-fun m!324045 () Bool)

(assert (=> b!260862 m!324045))

(declare-fun m!324047 () Bool)

(assert (=> b!260862 m!324047))

(declare-fun m!324049 () Bool)

(assert (=> b!260862 m!324049))

(declare-fun m!324051 () Bool)

(assert (=> b!260862 m!324051))

(declare-fun m!324053 () Bool)

(assert (=> b!260862 m!324053))

(assert (=> b!260862 m!324045))

(declare-fun m!324055 () Bool)

(assert (=> b!260862 m!324055))

(declare-fun m!324057 () Bool)

(assert (=> b!260862 m!324057))

(declare-fun m!324059 () Bool)

(assert (=> b!260862 m!324059))

(assert (=> b!260862 m!322607))

(declare-fun m!324061 () Bool)

(assert (=> b!260862 m!324061))

(declare-fun m!324063 () Bool)

(assert (=> b!260862 m!324063))

(assert (=> b!260862 m!322607))

(assert (=> b!260862 m!324029))

(declare-fun m!324065 () Bool)

(assert (=> b!260862 m!324065))

(assert (=> b!260862 m!324029))

(assert (=> b!260862 m!324049))

(declare-fun m!324067 () Bool)

(assert (=> b!260862 m!324067))

(declare-fun m!324069 () Bool)

(assert (=> b!260862 m!324069))

(assert (=> b!260862 m!324029))

(assert (=> b!260862 m!324053))

(assert (=> b!260862 m!324061))

(declare-fun m!324071 () Bool)

(assert (=> bm!13930 m!324071))

(declare-fun m!324073 () Bool)

(assert (=> b!260867 m!324073))

(declare-fun m!324075 () Bool)

(assert (=> bm!13928 m!324075))

(declare-fun m!324077 () Bool)

(assert (=> d!74723 m!324077))

(assert (=> d!74723 m!322607))

(assert (=> d!74723 m!324077))

(declare-fun m!324079 () Bool)

(assert (=> d!74723 m!324079))

(declare-fun m!324081 () Bool)

(assert (=> d!74723 m!324081))

(assert (=> d!74723 m!322685))

(assert (=> d!74723 m!322607))

(assert (=> d!74723 m!324077))

(declare-fun m!324083 () Bool)

(assert (=> d!74723 m!324083))

(assert (=> b!260171 d!74723))

(declare-fun b!261037 () Bool)

(declare-fun res!120185 () Bool)

(declare-fun e!162068 () Bool)

(assert (=> b!261037 (=> (not res!120185) (not e!162068))))

(declare-fun e!162066 () Bool)

(assert (=> b!261037 (= res!120185 e!162066)))

(declare-fun res!120183 () Bool)

(assert (=> b!261037 (=> res!120183 e!162066)))

(declare-fun lt!106447 () Option!776)

(declare-fun isDefined!630 (Option!776) Bool)

(assert (=> b!261037 (= res!120183 (not (isDefined!630 lt!106447)))))

(declare-fun d!74725 () Bool)

(assert (=> d!74725 e!162068))

(declare-fun res!120182 () Bool)

(assert (=> d!74725 (=> (not res!120182) (not e!162068))))

(declare-fun maxPrefixZipper!103 (LexerInterface!601 List!3761 List!3760) Option!777)

(assert (=> d!74725 (= res!120182 (= (isDefined!630 lt!106447) (isDefined!627 (maxPrefixZipper!103 thiss!17480 rules!1920 (list!1503 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957))))))))

(declare-fun e!162065 () Option!776)

(assert (=> d!74725 (= lt!106447 e!162065)))

(declare-fun c!49388 () Bool)

(assert (=> d!74725 (= c!49388 (and ((_ is Cons!3751) rules!1920) ((_ is Nil!3751) (t!36797 rules!1920))))))

(declare-fun lt!106448 () Unit!4628)

(declare-fun lt!106445 () Unit!4628)

(assert (=> d!74725 (= lt!106448 lt!106445)))

(declare-fun lt!106450 () List!3760)

(declare-fun lt!106444 () List!3760)

(assert (=> d!74725 (isPrefix!389 lt!106450 lt!106444)))

(assert (=> d!74725 (= lt!106445 (lemmaIsPrefixRefl!198 lt!106450 lt!106444))))

(assert (=> d!74725 (= lt!106444 (list!1503 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))

(assert (=> d!74725 (= lt!106450 (list!1503 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))

(assert (=> d!74725 (rulesValidInductive!193 thiss!17480 rules!1920)))

(assert (=> d!74725 (= (maxPrefixZipperSequence!284 thiss!17480 rules!1920 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)) lt!106447)))

(declare-fun b!261038 () Bool)

(declare-fun call!13951 () Option!776)

(assert (=> b!261038 (= e!162065 call!13951)))

(declare-fun b!261039 () Bool)

(declare-fun e!162067 () Bool)

(assert (=> b!261039 (= e!162068 e!162067)))

(declare-fun res!120186 () Bool)

(assert (=> b!261039 (=> res!120186 e!162067)))

(assert (=> b!261039 (= res!120186 (not (isDefined!630 lt!106447)))))

(declare-fun b!261040 () Bool)

(declare-fun e!162070 () Bool)

(declare-fun get!1235 (Option!776) tuple2!4190)

(assert (=> b!261040 (= e!162070 (= (list!1503 (_2!2311 (get!1235 lt!106447))) (_2!2312 (get!1233 (maxPrefixZipper!103 thiss!17480 rules!1920 (list!1503 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))))))

(declare-fun b!261041 () Bool)

(assert (=> b!261041 (= e!162066 e!162070)))

(declare-fun res!120187 () Bool)

(assert (=> b!261041 (=> (not res!120187) (not e!162070))))

(assert (=> b!261041 (= res!120187 (= (_1!2311 (get!1235 lt!106447)) (_1!2312 (get!1233 (maxPrefixZipper!103 thiss!17480 rules!1920 (list!1503 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))))))

(declare-fun b!261042 () Bool)

(declare-fun lt!106446 () Option!776)

(declare-fun lt!106449 () Option!776)

(assert (=> b!261042 (= e!162065 (ite (and ((_ is None!775) lt!106446) ((_ is None!775) lt!106449)) None!775 (ite ((_ is None!775) lt!106449) lt!106446 (ite ((_ is None!775) lt!106446) lt!106449 (ite (>= (size!2975 (_1!2311 (v!14608 lt!106446))) (size!2975 (_1!2311 (v!14608 lt!106449)))) lt!106446 lt!106449)))))))

(assert (=> b!261042 (= lt!106446 call!13951)))

(assert (=> b!261042 (= lt!106449 (maxPrefixZipperSequence!284 thiss!17480 (t!36797 rules!1920) (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))

(declare-fun bm!13946 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!104 (LexerInterface!601 Rule!1230 BalanceConc!2512) Option!776)

(assert (=> bm!13946 (= call!13951 (maxPrefixOneRuleZipperSequence!104 thiss!17480 (h!9148 rules!1920) (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))

(declare-fun b!261043 () Bool)

(declare-fun e!162069 () Bool)

(assert (=> b!261043 (= e!162067 e!162069)))

(declare-fun res!120184 () Bool)

(assert (=> b!261043 (=> (not res!120184) (not e!162069))))

(assert (=> b!261043 (= res!120184 (= (_1!2311 (get!1235 lt!106447)) (_1!2312 (get!1233 (maxPrefix!321 thiss!17480 rules!1920 (list!1503 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))))))

(declare-fun b!261044 () Bool)

(assert (=> b!261044 (= e!162069 (= (list!1503 (_2!2311 (get!1235 lt!106447))) (_2!2312 (get!1233 (maxPrefix!321 thiss!17480 rules!1920 (list!1503 (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957)))))))))

(assert (= (and d!74725 c!49388) b!261038))

(assert (= (and d!74725 (not c!49388)) b!261042))

(assert (= (or b!261038 b!261042) bm!13946))

(assert (= (and d!74725 res!120182) b!261037))

(assert (= (and b!261037 (not res!120183)) b!261041))

(assert (= (and b!261041 res!120187) b!261040))

(assert (= (and b!261037 res!120185) b!261039))

(assert (= (and b!261039 (not res!120186)) b!261043))

(assert (= (and b!261043 res!120184) b!261044))

(declare-fun m!324295 () Bool)

(assert (=> b!261037 m!324295))

(assert (=> b!261039 m!324295))

(declare-fun m!324297 () Bool)

(assert (=> d!74725 m!324297))

(declare-fun m!324299 () Bool)

(assert (=> d!74725 m!324299))

(declare-fun m!324301 () Bool)

(assert (=> d!74725 m!324301))

(assert (=> d!74725 m!323829))

(declare-fun m!324303 () Bool)

(assert (=> d!74725 m!324303))

(assert (=> d!74725 m!322701))

(assert (=> d!74725 m!324299))

(assert (=> d!74725 m!324295))

(assert (=> d!74725 m!324301))

(declare-fun m!324305 () Bool)

(assert (=> d!74725 m!324305))

(declare-fun m!324307 () Bool)

(assert (=> b!261043 m!324307))

(assert (=> b!261043 m!322701))

(assert (=> b!261043 m!324299))

(assert (=> b!261043 m!324299))

(declare-fun m!324309 () Bool)

(assert (=> b!261043 m!324309))

(assert (=> b!261043 m!324309))

(declare-fun m!324311 () Bool)

(assert (=> b!261043 m!324311))

(assert (=> b!261044 m!324309))

(assert (=> b!261044 m!324311))

(assert (=> b!261044 m!324299))

(assert (=> b!261044 m!324309))

(assert (=> b!261044 m!324307))

(declare-fun m!324313 () Bool)

(assert (=> b!261044 m!324313))

(assert (=> b!261044 m!322701))

(assert (=> b!261044 m!324299))

(assert (=> b!261040 m!324299))

(assert (=> b!261040 m!324301))

(assert (=> b!261040 m!324301))

(declare-fun m!324315 () Bool)

(assert (=> b!261040 m!324315))

(assert (=> b!261040 m!324307))

(assert (=> b!261040 m!324313))

(assert (=> b!261040 m!322701))

(assert (=> b!261040 m!324299))

(assert (=> bm!13946 m!322701))

(declare-fun m!324317 () Bool)

(assert (=> bm!13946 m!324317))

(assert (=> b!261041 m!324307))

(assert (=> b!261041 m!322701))

(assert (=> b!261041 m!324299))

(assert (=> b!261041 m!324299))

(assert (=> b!261041 m!324301))

(assert (=> b!261041 m!324301))

(assert (=> b!261041 m!324315))

(assert (=> b!261042 m!322701))

(declare-fun m!324319 () Bool)

(assert (=> b!261042 m!324319))

(assert (=> b!260171 d!74725))

(declare-fun d!74779 () Bool)

(assert (=> d!74779 (dynLambda!1880 lambda!8684 (apply!726 lt!105860 0))))

(declare-fun lt!106451 () Unit!4628)

(assert (=> d!74779 (= lt!106451 (choose!2404 (list!1506 lt!105860) lambda!8684 (apply!726 lt!105860 0)))))

(declare-fun e!162083 () Bool)

(assert (=> d!74779 e!162083))

(declare-fun res!120188 () Bool)

(assert (=> d!74779 (=> (not res!120188) (not e!162083))))

(assert (=> d!74779 (= res!120188 (forall!915 (list!1506 lt!105860) lambda!8684))))

(assert (=> d!74779 (= (forallContained!272 (list!1506 lt!105860) lambda!8684 (apply!726 lt!105860 0)) lt!106451)))

(declare-fun b!261084 () Bool)

(assert (=> b!261084 (= e!162083 (contains!697 (list!1506 lt!105860) (apply!726 lt!105860 0)))))

(assert (= (and d!74779 res!120188) b!261084))

(declare-fun b_lambda!7993 () Bool)

(assert (=> (not b_lambda!7993) (not d!74779)))

(assert (=> d!74779 m!322683))

(declare-fun m!324325 () Bool)

(assert (=> d!74779 m!324325))

(assert (=> d!74779 m!322607))

(assert (=> d!74779 m!322683))

(declare-fun m!324327 () Bool)

(assert (=> d!74779 m!324327))

(assert (=> d!74779 m!322607))

(declare-fun m!324329 () Bool)

(assert (=> d!74779 m!324329))

(assert (=> b!261084 m!322607))

(assert (=> b!261084 m!322683))

(declare-fun m!324331 () Bool)

(assert (=> b!261084 m!324331))

(assert (=> b!260171 d!74779))

(declare-fun b!261103 () Bool)

(declare-fun e!162094 () Bool)

(declare-fun lt!106454 () List!3762)

(declare-fun e!162096 () Int)

(assert (=> b!261103 (= e!162094 (= (size!2981 lt!106454) e!162096))))

(declare-fun c!49399 () Bool)

(assert (=> b!261103 (= c!49399 (<= (+ 0 1) 0))))

(declare-fun b!261104 () Bool)

(declare-fun e!162098 () List!3762)

(declare-fun e!162095 () List!3762)

(assert (=> b!261104 (= e!162098 e!162095)))

(declare-fun c!49400 () Bool)

(assert (=> b!261104 (= c!49400 (<= (+ 0 1) 0))))

(declare-fun b!261105 () Bool)

(declare-fun e!162097 () Int)

(declare-fun call!13954 () Int)

(assert (=> b!261105 (= e!162097 (- call!13954 (+ 0 1)))))

(declare-fun b!261106 () Bool)

(assert (=> b!261106 (= e!162096 call!13954)))

(declare-fun d!74787 () Bool)

(assert (=> d!74787 e!162094))

(declare-fun res!120191 () Bool)

(assert (=> d!74787 (=> (not res!120191) (not e!162094))))

(declare-fun content!529 (List!3762) (InoxSet Token!1174))

(assert (=> d!74787 (= res!120191 (= ((_ map implies) (content!529 lt!106454) (content!529 lt!105956)) ((as const (InoxSet Token!1174)) true)))))

(assert (=> d!74787 (= lt!106454 e!162098)))

(declare-fun c!49397 () Bool)

(assert (=> d!74787 (= c!49397 ((_ is Nil!3752) lt!105956))))

(assert (=> d!74787 (= (drop!203 lt!105956 (+ 0 1)) lt!106454)))

(declare-fun bm!13949 () Bool)

(assert (=> bm!13949 (= call!13954 (size!2981 lt!105956))))

(declare-fun b!261107 () Bool)

(assert (=> b!261107 (= e!162095 lt!105956)))

(declare-fun b!261108 () Bool)

(assert (=> b!261108 (= e!162097 0)))

(declare-fun b!261109 () Bool)

(assert (=> b!261109 (= e!162095 (drop!203 (t!36798 lt!105956) (- (+ 0 1) 1)))))

(declare-fun b!261110 () Bool)

(assert (=> b!261110 (= e!162098 Nil!3752)))

(declare-fun b!261111 () Bool)

(assert (=> b!261111 (= e!162096 e!162097)))

(declare-fun c!49398 () Bool)

(assert (=> b!261111 (= c!49398 (>= (+ 0 1) call!13954))))

(assert (= (and d!74787 c!49397) b!261110))

(assert (= (and d!74787 (not c!49397)) b!261104))

(assert (= (and b!261104 c!49400) b!261107))

(assert (= (and b!261104 (not c!49400)) b!261109))

(assert (= (and d!74787 res!120191) b!261103))

(assert (= (and b!261103 c!49399) b!261106))

(assert (= (and b!261103 (not c!49399)) b!261111))

(assert (= (and b!261111 c!49398) b!261108))

(assert (= (and b!261111 (not c!49398)) b!261105))

(assert (= (or b!261106 b!261111 b!261105) bm!13949))

(declare-fun m!324333 () Bool)

(assert (=> b!261103 m!324333))

(declare-fun m!324335 () Bool)

(assert (=> d!74787 m!324335))

(declare-fun m!324337 () Bool)

(assert (=> d!74787 m!324337))

(declare-fun m!324339 () Bool)

(assert (=> bm!13949 m!324339))

(declare-fun m!324341 () Bool)

(assert (=> b!261109 m!324341))

(assert (=> b!260171 d!74787))

(declare-fun d!74789 () Bool)

(declare-fun lt!106457 () Token!1174)

(assert (=> d!74789 (contains!697 lt!105950 lt!106457)))

(declare-fun e!162103 () Token!1174)

(assert (=> d!74789 (= lt!106457 e!162103)))

(declare-fun c!49403 () Bool)

(assert (=> d!74789 (= c!49403 (= 0 0))))

(declare-fun e!162104 () Bool)

(assert (=> d!74789 e!162104))

(declare-fun res!120194 () Bool)

(assert (=> d!74789 (=> (not res!120194) (not e!162104))))

(assert (=> d!74789 (= res!120194 (<= 0 0))))

(assert (=> d!74789 (= (apply!725 lt!105950 0) lt!106457)))

(declare-fun b!261118 () Bool)

(assert (=> b!261118 (= e!162104 (< 0 (size!2981 lt!105950)))))

(declare-fun b!261119 () Bool)

(assert (=> b!261119 (= e!162103 (head!874 lt!105950))))

(declare-fun b!261120 () Bool)

(assert (=> b!261120 (= e!162103 (apply!725 (tail!464 lt!105950) (- 0 1)))))

(assert (= (and d!74789 res!120194) b!261118))

(assert (= (and d!74789 c!49403) b!261119))

(assert (= (and d!74789 (not c!49403)) b!261120))

(declare-fun m!324343 () Bool)

(assert (=> d!74789 m!324343))

(declare-fun m!324345 () Bool)

(assert (=> b!261118 m!324345))

(declare-fun m!324347 () Bool)

(assert (=> b!261119 m!324347))

(declare-fun m!324349 () Bool)

(assert (=> b!261120 m!324349))

(assert (=> b!261120 m!324349))

(declare-fun m!324351 () Bool)

(assert (=> b!261120 m!324351))

(assert (=> b!260171 d!74789))

(declare-fun b!261121 () Bool)

(declare-fun e!162105 () Bool)

(declare-fun lt!106458 () List!3762)

(declare-fun e!162107 () Int)

(assert (=> b!261121 (= e!162105 (= (size!2981 lt!106458) e!162107))))

(declare-fun c!49406 () Bool)

(assert (=> b!261121 (= c!49406 (<= 0 0))))

(declare-fun b!261122 () Bool)

(declare-fun e!162109 () List!3762)

(declare-fun e!162106 () List!3762)

(assert (=> b!261122 (= e!162109 e!162106)))

(declare-fun c!49407 () Bool)

(assert (=> b!261122 (= c!49407 (<= 0 0))))

(declare-fun b!261123 () Bool)

(declare-fun e!162108 () Int)

(declare-fun call!13955 () Int)

(assert (=> b!261123 (= e!162108 (- call!13955 0))))

(declare-fun b!261124 () Bool)

(assert (=> b!261124 (= e!162107 call!13955)))

(declare-fun d!74791 () Bool)

(assert (=> d!74791 e!162105))

(declare-fun res!120195 () Bool)

(assert (=> d!74791 (=> (not res!120195) (not e!162105))))

(assert (=> d!74791 (= res!120195 (= ((_ map implies) (content!529 lt!106458) (content!529 lt!105956)) ((as const (InoxSet Token!1174)) true)))))

(assert (=> d!74791 (= lt!106458 e!162109)))

(declare-fun c!49404 () Bool)

(assert (=> d!74791 (= c!49404 ((_ is Nil!3752) lt!105956))))

(assert (=> d!74791 (= (drop!203 lt!105956 0) lt!106458)))

(declare-fun bm!13950 () Bool)

(assert (=> bm!13950 (= call!13955 (size!2981 lt!105956))))

(declare-fun b!261125 () Bool)

(assert (=> b!261125 (= e!162106 lt!105956)))

(declare-fun b!261126 () Bool)

(assert (=> b!261126 (= e!162108 0)))

(declare-fun b!261127 () Bool)

(assert (=> b!261127 (= e!162106 (drop!203 (t!36798 lt!105956) (- 0 1)))))

(declare-fun b!261128 () Bool)

(assert (=> b!261128 (= e!162109 Nil!3752)))

(declare-fun b!261129 () Bool)

(assert (=> b!261129 (= e!162107 e!162108)))

(declare-fun c!49405 () Bool)

(assert (=> b!261129 (= c!49405 (>= 0 call!13955))))

(assert (= (and d!74791 c!49404) b!261128))

(assert (= (and d!74791 (not c!49404)) b!261122))

(assert (= (and b!261122 c!49407) b!261125))

(assert (= (and b!261122 (not c!49407)) b!261127))

(assert (= (and d!74791 res!120195) b!261121))

(assert (= (and b!261121 c!49406) b!261124))

(assert (= (and b!261121 (not c!49406)) b!261129))

(assert (= (and b!261129 c!49405) b!261126))

(assert (= (and b!261129 (not c!49405)) b!261123))

(assert (= (or b!261124 b!261129 b!261123) bm!13950))

(declare-fun m!324353 () Bool)

(assert (=> b!261121 m!324353))

(declare-fun m!324355 () Bool)

(assert (=> d!74791 m!324355))

(assert (=> d!74791 m!324337))

(assert (=> bm!13950 m!324339))

(declare-fun m!324357 () Bool)

(assert (=> b!261127 m!324357))

(assert (=> b!260171 d!74791))

(declare-fun d!74793 () Bool)

(assert (=> d!74793 (= (tail!464 (drop!203 lt!105956 0)) (t!36798 (drop!203 lt!105956 0)))))

(assert (=> b!260171 d!74793))

(declare-fun d!74795 () Bool)

(assert (=> d!74795 (= (head!874 (drop!203 lt!105950 0)) (h!9149 (drop!203 lt!105950 0)))))

(assert (=> b!260171 d!74795))

(assert (=> b!260171 d!74541))

(declare-fun b!261130 () Bool)

(declare-fun e!162110 () Bool)

(declare-fun lt!106459 () List!3762)

(declare-fun e!162112 () Int)

(assert (=> b!261130 (= e!162110 (= (size!2981 lt!106459) e!162112))))

(declare-fun c!49410 () Bool)

(assert (=> b!261130 (= c!49410 (<= 0 0))))

(declare-fun b!261131 () Bool)

(declare-fun e!162114 () List!3762)

(declare-fun e!162111 () List!3762)

(assert (=> b!261131 (= e!162114 e!162111)))

(declare-fun c!49411 () Bool)

(assert (=> b!261131 (= c!49411 (<= 0 0))))

(declare-fun b!261132 () Bool)

(declare-fun e!162113 () Int)

(declare-fun call!13956 () Int)

(assert (=> b!261132 (= e!162113 (- call!13956 0))))

(declare-fun b!261133 () Bool)

(assert (=> b!261133 (= e!162112 call!13956)))

(declare-fun d!74797 () Bool)

(assert (=> d!74797 e!162110))

(declare-fun res!120196 () Bool)

(assert (=> d!74797 (=> (not res!120196) (not e!162110))))

(assert (=> d!74797 (= res!120196 (= ((_ map implies) (content!529 lt!106459) (content!529 lt!105950)) ((as const (InoxSet Token!1174)) true)))))

(assert (=> d!74797 (= lt!106459 e!162114)))

(declare-fun c!49408 () Bool)

(assert (=> d!74797 (= c!49408 ((_ is Nil!3752) lt!105950))))

(assert (=> d!74797 (= (drop!203 lt!105950 0) lt!106459)))

(declare-fun bm!13951 () Bool)

(assert (=> bm!13951 (= call!13956 (size!2981 lt!105950))))

(declare-fun b!261134 () Bool)

(assert (=> b!261134 (= e!162111 lt!105950)))

(declare-fun b!261135 () Bool)

(assert (=> b!261135 (= e!162113 0)))

(declare-fun b!261136 () Bool)

(assert (=> b!261136 (= e!162111 (drop!203 (t!36798 lt!105950) (- 0 1)))))

(declare-fun b!261137 () Bool)

(assert (=> b!261137 (= e!162114 Nil!3752)))

(declare-fun b!261138 () Bool)

(assert (=> b!261138 (= e!162112 e!162113)))

(declare-fun c!49409 () Bool)

(assert (=> b!261138 (= c!49409 (>= 0 call!13956))))

(assert (= (and d!74797 c!49408) b!261137))

(assert (= (and d!74797 (not c!49408)) b!261131))

(assert (= (and b!261131 c!49411) b!261134))

(assert (= (and b!261131 (not c!49411)) b!261136))

(assert (= (and d!74797 res!120196) b!261130))

(assert (= (and b!261130 c!49410) b!261133))

(assert (= (and b!261130 (not c!49410)) b!261138))

(assert (= (and b!261138 c!49409) b!261135))

(assert (= (and b!261138 (not c!49409)) b!261132))

(assert (= (or b!261133 b!261138 b!261132) bm!13951))

(declare-fun m!324359 () Bool)

(assert (=> b!261130 m!324359))

(declare-fun m!324361 () Bool)

(assert (=> d!74797 m!324361))

(declare-fun m!324363 () Bool)

(assert (=> d!74797 m!324363))

(assert (=> bm!13951 m!324345))

(declare-fun m!324365 () Bool)

(assert (=> b!261136 m!324365))

(assert (=> b!260171 d!74797))

(declare-fun d!74799 () Bool)

(assert (=> d!74799 (= (head!874 (drop!203 lt!105950 0)) (apply!725 lt!105950 0))))

(declare-fun lt!106462 () Unit!4628)

(declare-fun choose!2407 (List!3762 Int) Unit!4628)

(assert (=> d!74799 (= lt!106462 (choose!2407 lt!105950 0))))

(declare-fun e!162117 () Bool)

(assert (=> d!74799 e!162117))

(declare-fun res!120199 () Bool)

(assert (=> d!74799 (=> (not res!120199) (not e!162117))))

(assert (=> d!74799 (= res!120199 (>= 0 0))))

(assert (=> d!74799 (= (lemmaDropApply!190 lt!105950 0) lt!106462)))

(declare-fun b!261141 () Bool)

(assert (=> b!261141 (= e!162117 (< 0 (size!2981 lt!105950)))))

(assert (= (and d!74799 res!120199) b!261141))

(assert (=> d!74799 m!322717))

(assert (=> d!74799 m!322717))

(assert (=> d!74799 m!322719))

(assert (=> d!74799 m!322711))

(declare-fun m!324367 () Bool)

(assert (=> d!74799 m!324367))

(assert (=> b!261141 m!324345))

(assert (=> b!260171 d!74799))

(declare-fun d!74801 () Bool)

(assert (=> d!74801 (= (tail!464 (drop!203 lt!105956 0)) (drop!203 lt!105956 (+ 0 1)))))

(declare-fun lt!106465 () Unit!4628)

(declare-fun choose!2408 (List!3762 Int) Unit!4628)

(assert (=> d!74801 (= lt!106465 (choose!2408 lt!105956 0))))

(declare-fun e!162120 () Bool)

(assert (=> d!74801 e!162120))

(declare-fun res!120202 () Bool)

(assert (=> d!74801 (=> (not res!120202) (not e!162120))))

(assert (=> d!74801 (= res!120202 (>= 0 0))))

(assert (=> d!74801 (= (lemmaDropTail!182 lt!105956 0) lt!106465)))

(declare-fun b!261144 () Bool)

(assert (=> b!261144 (= e!162120 (< 0 (size!2981 lt!105956)))))

(assert (= (and d!74801 res!120202) b!261144))

(assert (=> d!74801 m!322705))

(assert (=> d!74801 m!322705))

(assert (=> d!74801 m!322723))

(assert (=> d!74801 m!322715))

(declare-fun m!324369 () Bool)

(assert (=> d!74801 m!324369))

(assert (=> b!261144 m!324339))

(assert (=> b!260171 d!74801))

(declare-fun d!74803 () Bool)

(declare-fun lt!106466 () Token!1174)

(assert (=> d!74803 (= lt!106466 (apply!725 (list!1506 lt!105860) 0))))

(assert (=> d!74803 (= lt!106466 (apply!729 (c!49190 lt!105860) 0))))

(declare-fun e!162121 () Bool)

(assert (=> d!74803 e!162121))

(declare-fun res!120203 () Bool)

(assert (=> d!74803 (=> (not res!120203) (not e!162121))))

(assert (=> d!74803 (= res!120203 (<= 0 0))))

(assert (=> d!74803 (= (apply!726 lt!105860 0) lt!106466)))

(declare-fun b!261145 () Bool)

(assert (=> b!261145 (= e!162121 (< 0 (size!2979 lt!105860)))))

(assert (= (and d!74803 res!120203) b!261145))

(assert (=> d!74803 m!322607))

(assert (=> d!74803 m!322607))

(declare-fun m!324371 () Bool)

(assert (=> d!74803 m!324371))

(declare-fun m!324373 () Bool)

(assert (=> d!74803 m!324373))

(assert (=> b!261145 m!322685))

(assert (=> b!260171 d!74803))

(declare-fun d!74805 () Bool)

(declare-fun lt!106467 () BalanceConc!2512)

(assert (=> d!74805 (= (list!1503 lt!106467) (originalCharacters!758 (apply!726 lt!105860 0)))))

(assert (=> d!74805 (= lt!106467 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0)))) (value!24693 (apply!726 lt!105860 0))))))

(assert (=> d!74805 (= (charsOf!360 (apply!726 lt!105860 0)) lt!106467)))

(declare-fun b_lambda!7995 () Bool)

(assert (=> (not b_lambda!7995) (not d!74805)))

(declare-fun tb!14103 () Bool)

(declare-fun t!36966 () Bool)

(assert (=> (and b!260357 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0))))) t!36966) tb!14103))

(declare-fun b!261146 () Bool)

(declare-fun e!162122 () Bool)

(declare-fun tp!100328 () Bool)

(assert (=> b!261146 (= e!162122 (and (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0)))) (value!24693 (apply!726 lt!105860 0))))) tp!100328))))

(declare-fun result!17572 () Bool)

(assert (=> tb!14103 (= result!17572 (and (inv!4630 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0)))) (value!24693 (apply!726 lt!105860 0)))) e!162122))))

(assert (= tb!14103 b!261146))

(declare-fun m!324375 () Bool)

(assert (=> b!261146 m!324375))

(declare-fun m!324377 () Bool)

(assert (=> tb!14103 m!324377))

(assert (=> d!74805 t!36966))

(declare-fun b_and!20237 () Bool)

(assert (= b_and!20203 (and (=> t!36966 result!17572) b_and!20237)))

(declare-fun t!36968 () Bool)

(declare-fun tb!14105 () Bool)

(assert (=> (and b!260378 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0))))) t!36968) tb!14105))

(declare-fun result!17574 () Bool)

(assert (= result!17574 result!17572))

(assert (=> d!74805 t!36968))

(declare-fun b_and!20239 () Bool)

(assert (= b_and!20205 (and (=> t!36968 result!17574) b_and!20239)))

(declare-fun tb!14107 () Bool)

(declare-fun t!36970 () Bool)

(assert (=> (and b!260000 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0))))) t!36970) tb!14107))

(declare-fun result!17576 () Bool)

(assert (= result!17576 result!17572))

(assert (=> d!74805 t!36970))

(declare-fun b_and!20241 () Bool)

(assert (= b_and!20199 (and (=> t!36970 result!17576) b_and!20241)))

(declare-fun tb!14109 () Bool)

(declare-fun t!36972 () Bool)

(assert (=> (and b!260003 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0))))) t!36972) tb!14109))

(declare-fun result!17578 () Bool)

(assert (= result!17578 result!17572))

(assert (=> d!74805 t!36972))

(declare-fun b_and!20243 () Bool)

(assert (= b_and!20201 (and (=> t!36972 result!17578) b_and!20243)))

(declare-fun t!36974 () Bool)

(declare-fun tb!14111 () Bool)

(assert (=> (and b!259989 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0))))) t!36974) tb!14111))

(declare-fun result!17580 () Bool)

(assert (= result!17580 result!17572))

(assert (=> d!74805 t!36974))

(declare-fun b_and!20245 () Bool)

(assert (= b_and!20207 (and (=> t!36974 result!17580) b_and!20245)))

(declare-fun m!324379 () Bool)

(assert (=> d!74805 m!324379))

(declare-fun m!324381 () Bool)

(assert (=> d!74805 m!324381))

(assert (=> b!260171 d!74805))

(declare-fun b!261147 () Bool)

(declare-fun res!120207 () Bool)

(declare-fun e!162123 () Bool)

(assert (=> b!261147 (=> (not res!120207) (not e!162123))))

(assert (=> b!261147 (= res!120207 (isBalanced!334 (++!963 (c!49188 (charsOf!360 (apply!726 lt!105860 0))) (c!49188 lt!105957))))))

(declare-fun lt!106468 () BalanceConc!2512)

(declare-fun b!261150 () Bool)

(assert (=> b!261150 (= e!162123 (= (list!1503 lt!106468) (++!962 (list!1503 (charsOf!360 (apply!726 lt!105860 0))) (list!1503 lt!105957))))))

(declare-fun b!261148 () Bool)

(declare-fun res!120206 () Bool)

(assert (=> b!261148 (=> (not res!120206) (not e!162123))))

(assert (=> b!261148 (= res!120206 (<= (height!141 (++!963 (c!49188 (charsOf!360 (apply!726 lt!105860 0))) (c!49188 lt!105957))) (+ (max!0 (height!141 (c!49188 (charsOf!360 (apply!726 lt!105860 0)))) (height!141 (c!49188 lt!105957))) 1)))))

(declare-fun b!261149 () Bool)

(declare-fun res!120204 () Bool)

(assert (=> b!261149 (=> (not res!120204) (not e!162123))))

(assert (=> b!261149 (= res!120204 (>= (height!141 (++!963 (c!49188 (charsOf!360 (apply!726 lt!105860 0))) (c!49188 lt!105957))) (max!0 (height!141 (c!49188 (charsOf!360 (apply!726 lt!105860 0)))) (height!141 (c!49188 lt!105957)))))))

(declare-fun d!74807 () Bool)

(assert (=> d!74807 e!162123))

(declare-fun res!120205 () Bool)

(assert (=> d!74807 (=> (not res!120205) (not e!162123))))

(assert (=> d!74807 (= res!120205 (appendAssocInst!54 (c!49188 (charsOf!360 (apply!726 lt!105860 0))) (c!49188 lt!105957)))))

(assert (=> d!74807 (= lt!106468 (BalanceConc!2513 (++!963 (c!49188 (charsOf!360 (apply!726 lt!105860 0))) (c!49188 lt!105957))))))

(assert (=> d!74807 (= (++!961 (charsOf!360 (apply!726 lt!105860 0)) lt!105957) lt!106468)))

(assert (= (and d!74807 res!120205) b!261147))

(assert (= (and b!261147 res!120207) b!261148))

(assert (= (and b!261148 res!120206) b!261149))

(assert (= (and b!261149 res!120204) b!261150))

(declare-fun m!324383 () Bool)

(assert (=> b!261148 m!324383))

(declare-fun m!324385 () Bool)

(assert (=> b!261148 m!324385))

(declare-fun m!324387 () Bool)

(assert (=> b!261148 m!324387))

(declare-fun m!324389 () Bool)

(assert (=> b!261148 m!324389))

(assert (=> b!261148 m!324383))

(assert (=> b!261148 m!324385))

(declare-fun m!324391 () Bool)

(assert (=> b!261148 m!324391))

(assert (=> b!261148 m!324387))

(assert (=> b!261147 m!324387))

(assert (=> b!261147 m!324387))

(declare-fun m!324393 () Bool)

(assert (=> b!261147 m!324393))

(assert (=> b!261149 m!324383))

(assert (=> b!261149 m!324385))

(assert (=> b!261149 m!324387))

(assert (=> b!261149 m!324389))

(assert (=> b!261149 m!324383))

(assert (=> b!261149 m!324385))

(assert (=> b!261149 m!324391))

(assert (=> b!261149 m!324387))

(declare-fun m!324395 () Bool)

(assert (=> d!74807 m!324395))

(assert (=> d!74807 m!324387))

(declare-fun m!324397 () Bool)

(assert (=> b!261150 m!324397))

(assert (=> b!261150 m!322709))

(declare-fun m!324399 () Bool)

(assert (=> b!261150 m!324399))

(assert (=> b!261150 m!322693))

(assert (=> b!261150 m!324399))

(assert (=> b!261150 m!322693))

(declare-fun m!324401 () Bool)

(assert (=> b!261150 m!324401))

(assert (=> b!260171 d!74807))

(declare-fun d!74809 () Bool)

(assert (=> d!74809 (= (list!1503 (ite c!49248 call!13898 call!13897)) (list!1507 (c!49188 (ite c!49248 call!13898 call!13897))))))

(declare-fun bs!28386 () Bool)

(assert (= bs!28386 d!74809))

(declare-fun m!324403 () Bool)

(assert (=> bs!28386 m!324403))

(assert (=> bm!13889 d!74809))

(declare-fun d!74811 () Bool)

(declare-fun charsToBigInt!1 (List!3759) Int)

(assert (=> d!74811 (= (inv!17 (value!24693 separatorToken!170)) (= (charsToBigInt!1 (text!5607 (value!24693 separatorToken!170))) (value!24685 (value!24693 separatorToken!170))))))

(declare-fun bs!28387 () Bool)

(assert (= bs!28387 d!74811))

(declare-fun m!324405 () Bool)

(assert (=> bs!28387 m!324405))

(assert (=> b!260057 d!74811))

(assert (=> bm!13891 d!74667))

(declare-fun d!74813 () Bool)

(assert (=> d!74813 true))

(declare-fun lt!106471 () Bool)

(assert (=> d!74813 (= lt!106471 (rulesValidInductive!193 thiss!17480 rules!1920))))

(declare-fun lambda!8729 () Int)

(declare-fun forall!920 (List!3761 Int) Bool)

(assert (=> d!74813 (= lt!106471 (forall!920 rules!1920 lambda!8729))))

(assert (=> d!74813 (= (rulesValid!211 thiss!17480 rules!1920) lt!106471)))

(declare-fun bs!28388 () Bool)

(assert (= bs!28388 d!74813))

(assert (=> bs!28388 m!323829))

(declare-fun m!324407 () Bool)

(assert (=> bs!28388 m!324407))

(assert (=> d!74377 d!74813))

(declare-fun d!74815 () Bool)

(declare-fun res!120208 () Bool)

(declare-fun e!162124 () Bool)

(assert (=> d!74815 (=> res!120208 e!162124)))

(assert (=> d!74815 (= res!120208 ((_ is Nil!3752) (list!1506 lt!105860)))))

(assert (=> d!74815 (= (forall!915 (list!1506 lt!105860) lambda!8672) e!162124)))

(declare-fun b!261153 () Bool)

(declare-fun e!162125 () Bool)

(assert (=> b!261153 (= e!162124 e!162125)))

(declare-fun res!120209 () Bool)

(assert (=> b!261153 (=> (not res!120209) (not e!162125))))

(assert (=> b!261153 (= res!120209 (dynLambda!1880 lambda!8672 (h!9149 (list!1506 lt!105860))))))

(declare-fun b!261154 () Bool)

(assert (=> b!261154 (= e!162125 (forall!915 (t!36798 (list!1506 lt!105860)) lambda!8672))))

(assert (= (and d!74815 (not res!120208)) b!261153))

(assert (= (and b!261153 res!120209) b!261154))

(declare-fun b_lambda!7997 () Bool)

(assert (=> (not b_lambda!7997) (not b!261153)))

(declare-fun m!324409 () Bool)

(assert (=> b!261153 m!324409))

(declare-fun m!324411 () Bool)

(assert (=> b!261154 m!324411))

(assert (=> d!74389 d!74815))

(assert (=> d!74389 d!74541))

(declare-fun d!74817 () Bool)

(declare-fun lt!106474 () Bool)

(assert (=> d!74817 (= lt!106474 (forall!915 (list!1506 lt!105860) lambda!8672))))

(declare-fun forall!921 (Conc!1253 Int) Bool)

(assert (=> d!74817 (= lt!106474 (forall!921 (c!49190 lt!105860) lambda!8672))))

(assert (=> d!74817 (= (forall!917 lt!105860 lambda!8672) lt!106474)))

(declare-fun bs!28389 () Bool)

(assert (= bs!28389 d!74817))

(assert (=> bs!28389 m!322607))

(assert (=> bs!28389 m!322607))

(assert (=> bs!28389 m!322609))

(declare-fun m!324413 () Bool)

(assert (=> bs!28389 m!324413))

(assert (=> d!74389 d!74817))

(assert (=> d!74389 d!74387))

(assert (=> b!260173 d!74803))

(assert (=> bm!13863 d!74803))

(declare-fun d!74819 () Bool)

(assert (=> d!74819 (= (list!1503 e!161616) (list!1507 (c!49188 e!161616)))))

(declare-fun bs!28390 () Bool)

(assert (= bs!28390 d!74819))

(declare-fun m!324415 () Bool)

(assert (=> bs!28390 m!324415))

(assert (=> bm!13892 d!74819))

(declare-fun d!74821 () Bool)

(assert (=> d!74821 (= (inv!17 (value!24693 (h!9149 tokens!465))) (= (charsToBigInt!1 (text!5607 (value!24693 (h!9149 tokens!465)))) (value!24685 (value!24693 (h!9149 tokens!465)))))))

(declare-fun bs!28391 () Bool)

(assert (= bs!28391 d!74821))

(declare-fun m!324417 () Bool)

(assert (=> bs!28391 m!324417))

(assert (=> b!260117 d!74821))

(declare-fun d!74823 () Bool)

(assert (=> d!74823 (= (isEmpty!2349 (originalCharacters!758 (h!9149 tokens!465))) ((_ is Nil!3750) (originalCharacters!758 (h!9149 tokens!465))))))

(assert (=> d!74373 d!74823))

(declare-fun d!74825 () Bool)

(assert (=> d!74825 (= (inv!15 (value!24693 (h!9149 tokens!465))) (= (charsToBigInt!0 (text!5608 (value!24693 (h!9149 tokens!465))) 0) (value!24688 (value!24693 (h!9149 tokens!465)))))))

(declare-fun bs!28392 () Bool)

(assert (= bs!28392 d!74825))

(declare-fun m!324419 () Bool)

(assert (=> bs!28392 m!324419))

(assert (=> b!260121 d!74825))

(declare-fun b!261155 () Bool)

(declare-fun res!120213 () Bool)

(declare-fun e!162126 () Bool)

(assert (=> b!261155 (=> (not res!120213) (not e!162126))))

(assert (=> b!261155 (= res!120213 (isBalanced!334 (++!963 (c!49188 call!13865) (c!49188 lt!105957))))))

(declare-fun b!261158 () Bool)

(declare-fun lt!106475 () BalanceConc!2512)

(assert (=> b!261158 (= e!162126 (= (list!1503 lt!106475) (++!962 (list!1503 call!13865) (list!1503 lt!105957))))))

(declare-fun b!261156 () Bool)

(declare-fun res!120212 () Bool)

(assert (=> b!261156 (=> (not res!120212) (not e!162126))))

(assert (=> b!261156 (= res!120212 (<= (height!141 (++!963 (c!49188 call!13865) (c!49188 lt!105957))) (+ (max!0 (height!141 (c!49188 call!13865)) (height!141 (c!49188 lt!105957))) 1)))))

(declare-fun b!261157 () Bool)

(declare-fun res!120210 () Bool)

(assert (=> b!261157 (=> (not res!120210) (not e!162126))))

(assert (=> b!261157 (= res!120210 (>= (height!141 (++!963 (c!49188 call!13865) (c!49188 lt!105957))) (max!0 (height!141 (c!49188 call!13865)) (height!141 (c!49188 lt!105957)))))))

(declare-fun d!74827 () Bool)

(assert (=> d!74827 e!162126))

(declare-fun res!120211 () Bool)

(assert (=> d!74827 (=> (not res!120211) (not e!162126))))

(assert (=> d!74827 (= res!120211 (appendAssocInst!54 (c!49188 call!13865) (c!49188 lt!105957)))))

(assert (=> d!74827 (= lt!106475 (BalanceConc!2513 (++!963 (c!49188 call!13865) (c!49188 lt!105957))))))

(assert (=> d!74827 (= (++!961 call!13865 lt!105957) lt!106475)))

(assert (= (and d!74827 res!120211) b!261155))

(assert (= (and b!261155 res!120213) b!261156))

(assert (= (and b!261156 res!120212) b!261157))

(assert (= (and b!261157 res!120210) b!261158))

(declare-fun m!324421 () Bool)

(assert (=> b!261156 m!324421))

(assert (=> b!261156 m!324385))

(declare-fun m!324423 () Bool)

(assert (=> b!261156 m!324423))

(declare-fun m!324425 () Bool)

(assert (=> b!261156 m!324425))

(assert (=> b!261156 m!324421))

(assert (=> b!261156 m!324385))

(declare-fun m!324427 () Bool)

(assert (=> b!261156 m!324427))

(assert (=> b!261156 m!324423))

(assert (=> b!261155 m!324423))

(assert (=> b!261155 m!324423))

(declare-fun m!324429 () Bool)

(assert (=> b!261155 m!324429))

(assert (=> b!261157 m!324421))

(assert (=> b!261157 m!324385))

(assert (=> b!261157 m!324423))

(assert (=> b!261157 m!324425))

(assert (=> b!261157 m!324421))

(assert (=> b!261157 m!324385))

(assert (=> b!261157 m!324427))

(assert (=> b!261157 m!324423))

(declare-fun m!324431 () Bool)

(assert (=> d!74827 m!324431))

(assert (=> d!74827 m!324423))

(declare-fun m!324433 () Bool)

(assert (=> b!261158 m!324433))

(declare-fun m!324435 () Bool)

(assert (=> b!261158 m!324435))

(assert (=> b!261158 m!322693))

(assert (=> b!261158 m!324435))

(assert (=> b!261158 m!322693))

(declare-fun m!324437 () Bool)

(assert (=> b!261158 m!324437))

(assert (=> b!260176 d!74827))

(declare-fun bs!28393 () Bool)

(declare-fun d!74829 () Bool)

(assert (= bs!28393 (and d!74829 d!74543)))

(declare-fun lambda!8730 () Int)

(assert (=> bs!28393 (= (and (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) (= (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toValue!1434 (transformation!715 (rule!1300 separatorToken!170))))) (= lambda!8730 lambda!8702))))

(declare-fun bs!28394 () Bool)

(assert (= bs!28394 (and d!74829 d!74557)))

(assert (=> bs!28394 (= (and (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (h!9148 rules!1920)))) (= (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toValue!1434 (transformation!715 (h!9148 rules!1920))))) (= lambda!8730 lambda!8703))))

(assert (=> d!74829 true))

(assert (=> d!74829 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465))))) (dynLambda!1886 order!2839 lambda!8730))))

(assert (=> d!74829 true))

(assert (=> d!74829 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465))))) (dynLambda!1886 order!2839 lambda!8730))))

(assert (=> d!74829 (= (semiInverseModEq!245 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toValue!1434 (transformation!715 (rule!1300 (h!9149 tokens!465))))) (Forall!163 lambda!8730))))

(declare-fun bs!28395 () Bool)

(assert (= bs!28395 d!74829))

(declare-fun m!324439 () Bool)

(assert (=> bs!28395 m!324439))

(assert (=> d!74447 d!74829))

(assert (=> b!260178 d!74571))

(declare-fun d!74831 () Bool)

(declare-fun lt!106476 () BalanceConc!2512)

(assert (=> d!74831 (= (list!1503 lt!106476) (originalCharacters!758 separatorToken!170))))

(assert (=> d!74831 (= lt!106476 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))))

(assert (=> d!74831 (= (charsOf!360 separatorToken!170) lt!106476)))

(declare-fun b_lambda!7999 () Bool)

(assert (=> (not b_lambda!7999) (not d!74831)))

(assert (=> d!74831 t!36804))

(declare-fun b_and!20247 () Bool)

(assert (= b_and!20241 (and (=> t!36804 result!17422) b_and!20247)))

(assert (=> d!74831 t!36859))

(declare-fun b_and!20249 () Bool)

(assert (= b_and!20239 (and (=> t!36859 result!17472) b_and!20249)))

(assert (=> d!74831 t!36855))

(declare-fun b_and!20251 () Bool)

(assert (= b_and!20237 (and (=> t!36855 result!17464) b_and!20251)))

(assert (=> d!74831 t!36802))

(declare-fun b_and!20253 () Bool)

(assert (= b_and!20243 (and (=> t!36802 result!17420) b_and!20253)))

(assert (=> d!74831 t!36800))

(declare-fun b_and!20255 () Bool)

(assert (= b_and!20245 (and (=> t!36800 result!17416) b_and!20255)))

(declare-fun m!324441 () Bool)

(assert (=> d!74831 m!324441))

(assert (=> d!74831 m!322527))

(assert (=> b!260315 d!74831))

(declare-fun d!74833 () Bool)

(declare-fun e!162129 () Bool)

(assert (=> d!74833 e!162129))

(declare-fun res!120216 () Bool)

(assert (=> d!74833 (=> (not res!120216) (not e!162129))))

(declare-fun lt!106479 () BalanceConc!2514)

(assert (=> d!74833 (= res!120216 (= (list!1506 lt!106479) tokens!465))))

(declare-fun fromList!161 (List!3762) Conc!1253)

(assert (=> d!74833 (= lt!106479 (BalanceConc!2515 (fromList!161 tokens!465)))))

(assert (=> d!74833 (= (fromListB!292 tokens!465) lt!106479)))

(declare-fun b!261161 () Bool)

(assert (=> b!261161 (= e!162129 (isBalanced!333 (fromList!161 tokens!465)))))

(assert (= (and d!74833 res!120216) b!261161))

(declare-fun m!324443 () Bool)

(assert (=> d!74833 m!324443))

(declare-fun m!324445 () Bool)

(assert (=> d!74833 m!324445))

(assert (=> b!261161 m!324445))

(assert (=> b!261161 m!324445))

(declare-fun m!324447 () Bool)

(assert (=> b!261161 m!324447))

(assert (=> d!74405 d!74833))

(declare-fun d!74835 () Bool)

(declare-fun lt!106480 () Bool)

(assert (=> d!74835 (= lt!106480 (isEmpty!2349 (list!1503 (_2!2313 lt!106000))))))

(assert (=> d!74835 (= lt!106480 (isEmpty!2356 (c!49188 (_2!2313 lt!106000))))))

(assert (=> d!74835 (= (isEmpty!2350 (_2!2313 lt!106000)) lt!106480)))

(declare-fun bs!28396 () Bool)

(assert (= bs!28396 d!74835))

(declare-fun m!324449 () Bool)

(assert (=> bs!28396 m!324449))

(assert (=> bs!28396 m!324449))

(declare-fun m!324451 () Bool)

(assert (=> bs!28396 m!324451))

(declare-fun m!324453 () Bool)

(assert (=> bs!28396 m!324453))

(assert (=> b!260328 d!74835))

(declare-fun b!261164 () Bool)

(declare-fun e!162132 () Bool)

(assert (=> b!261164 (= e!162132 true)))

(declare-fun b!261163 () Bool)

(declare-fun e!162131 () Bool)

(assert (=> b!261163 (= e!162131 e!162132)))

(declare-fun b!261162 () Bool)

(declare-fun e!162130 () Bool)

(assert (=> b!261162 (= e!162130 e!162131)))

(assert (=> b!260112 e!162130))

(assert (= b!261163 b!261164))

(assert (= b!261162 b!261163))

(assert (= (and b!260112 ((_ is Cons!3751) (t!36797 rules!1920))) b!261162))

(assert (=> b!261164 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 (t!36797 rules!1920))))) (dynLambda!1882 order!2831 lambda!8672))))

(assert (=> b!261164 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920))))) (dynLambda!1882 order!2831 lambda!8672))))

(declare-fun b!261165 () Bool)

(declare-fun e!162133 () Bool)

(declare-fun tp!100329 () Bool)

(assert (=> b!261165 (= e!162133 (and tp_is_empty!1787 tp!100329))))

(assert (=> b!260366 (= tp!100193 e!162133)))

(assert (= (and b!260366 ((_ is Cons!3750) (t!36796 (originalCharacters!758 separatorToken!170)))) b!261165))

(declare-fun b!261168 () Bool)

(declare-fun b_free!9701 () Bool)

(declare-fun b_next!9701 () Bool)

(assert (=> b!261168 (= b_free!9701 (not b_next!9701))))

(declare-fun tp!100333 () Bool)

(declare-fun b_and!20257 () Bool)

(assert (=> b!261168 (= tp!100333 b_and!20257)))

(declare-fun b_free!9703 () Bool)

(declare-fun b_next!9703 () Bool)

(assert (=> b!261168 (= b_free!9703 (not b_next!9703))))

(declare-fun tb!14113 () Bool)

(declare-fun t!36976 () Bool)

(assert (=> (and b!261168 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) t!36976) tb!14113))

(declare-fun result!17582 () Bool)

(assert (= result!17582 result!17416))

(assert (=> b!260027 t!36976))

(assert (=> d!74831 t!36976))

(declare-fun tb!14115 () Bool)

(declare-fun t!36978 () Bool)

(assert (=> (and b!261168 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864))))) t!36978) tb!14115))

(declare-fun result!17584 () Bool)

(assert (= result!17584 result!17516))

(assert (=> d!74721 t!36978))

(declare-fun t!36980 () Bool)

(declare-fun tb!14117 () Bool)

(assert (=> (and b!261168 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864))))) t!36980) tb!14117))

(declare-fun result!17586 () Bool)

(assert (= result!17586 result!17496))

(assert (=> d!74709 t!36980))

(declare-fun tb!14119 () Bool)

(declare-fun t!36982 () Bool)

(assert (=> (and b!261168 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465))))) t!36982) tb!14119))

(declare-fun result!17588 () Bool)

(assert (= result!17588 result!17424))

(assert (=> b!260034 t!36982))

(assert (=> d!74667 t!36982))

(declare-fun tb!14121 () Bool)

(declare-fun t!36984 () Bool)

(assert (=> (and b!261168 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) t!36984) tb!14121))

(declare-fun result!17590 () Bool)

(assert (= result!17590 result!17506))

(assert (=> b!260851 t!36984))

(declare-fun t!36986 () Bool)

(declare-fun tb!14123 () Bool)

(assert (=> (and b!261168 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0))))) t!36986) tb!14123))

(declare-fun result!17592 () Bool)

(assert (= result!17592 result!17572))

(assert (=> d!74805 t!36986))

(declare-fun tp!100330 () Bool)

(declare-fun b_and!20259 () Bool)

(assert (=> b!261168 (= tp!100330 (and (=> t!36986 result!17592) (=> t!36978 result!17584) (=> t!36976 result!17582) (=> t!36984 result!17590) (=> t!36982 result!17588) (=> t!36980 result!17586) b_and!20259))))

(declare-fun e!162137 () Bool)

(assert (=> b!261168 (= e!162137 (and tp!100333 tp!100330))))

(declare-fun b!261167 () Bool)

(declare-fun tp!100332 () Bool)

(declare-fun e!162136 () Bool)

(assert (=> b!261167 (= e!162136 (and tp!100332 (inv!4622 (tag!925 (h!9148 (t!36797 (t!36797 rules!1920))))) (inv!4626 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) e!162137))))

(declare-fun b!261166 () Bool)

(declare-fun e!162135 () Bool)

(declare-fun tp!100331 () Bool)

(assert (=> b!261166 (= e!162135 (and e!162136 tp!100331))))

(assert (=> b!260376 (= tp!100204 e!162135)))

(assert (= b!261167 b!261168))

(assert (= b!261166 b!261167))

(assert (= (and b!260376 ((_ is Cons!3751) (t!36797 (t!36797 rules!1920)))) b!261166))

(declare-fun m!324455 () Bool)

(assert (=> b!261167 m!324455))

(declare-fun m!324457 () Bool)

(assert (=> b!261167 m!324457))

(declare-fun e!162138 () Bool)

(assert (=> b!260377 (= tp!100205 e!162138)))

(declare-fun b!261169 () Bool)

(assert (=> b!261169 (= e!162138 tp_is_empty!1787)))

(declare-fun b!261171 () Bool)

(declare-fun tp!100337 () Bool)

(assert (=> b!261171 (= e!162138 tp!100337)))

(declare-fun b!261170 () Bool)

(declare-fun tp!100335 () Bool)

(declare-fun tp!100338 () Bool)

(assert (=> b!261170 (= e!162138 (and tp!100335 tp!100338))))

(declare-fun b!261172 () Bool)

(declare-fun tp!100334 () Bool)

(declare-fun tp!100336 () Bool)

(assert (=> b!261172 (= e!162138 (and tp!100334 tp!100336))))

(assert (= (and b!260377 ((_ is ElementMatch!939) (regex!715 (h!9148 (t!36797 rules!1920))))) b!261169))

(assert (= (and b!260377 ((_ is Concat!1677) (regex!715 (h!9148 (t!36797 rules!1920))))) b!261170))

(assert (= (and b!260377 ((_ is Star!939) (regex!715 (h!9148 (t!36797 rules!1920))))) b!261171))

(assert (= (and b!260377 ((_ is Union!939) (regex!715 (h!9148 (t!36797 rules!1920))))) b!261172))

(declare-fun b!261175 () Bool)

(declare-fun e!162141 () Bool)

(assert (=> b!261175 (= e!162141 true)))

(declare-fun b!261174 () Bool)

(declare-fun e!162140 () Bool)

(assert (=> b!261174 (= e!162140 e!162141)))

(declare-fun b!261173 () Bool)

(declare-fun e!162139 () Bool)

(assert (=> b!261173 (= e!162139 e!162140)))

(assert (=> b!260179 e!162139))

(assert (= b!261174 b!261175))

(assert (= b!261173 b!261174))

(assert (= (and b!260179 ((_ is Cons!3751) (t!36797 rules!1920))) b!261173))

(assert (=> b!261175 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 (t!36797 rules!1920))))) (dynLambda!1882 order!2831 lambda!8684))))

(assert (=> b!261175 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920))))) (dynLambda!1882 order!2831 lambda!8684))))

(declare-fun b!261176 () Bool)

(declare-fun e!162142 () Bool)

(declare-fun tp!100339 () Bool)

(assert (=> b!261176 (= e!162142 (and tp_is_empty!1787 tp!100339))))

(assert (=> b!260355 (= tp!100182 e!162142)))

(assert (= (and b!260355 ((_ is Cons!3750) (originalCharacters!758 (h!9149 (t!36798 tokens!465))))) b!261176))

(declare-fun b!261177 () Bool)

(declare-fun e!162143 () Bool)

(declare-fun tp!100340 () Bool)

(assert (=> b!261177 (= e!162143 (and tp_is_empty!1787 tp!100340))))

(assert (=> b!260367 (= tp!100194 e!162143)))

(assert (= (and b!260367 ((_ is Cons!3750) (t!36796 (originalCharacters!758 (h!9149 tokens!465))))) b!261177))

(declare-fun b!261181 () Bool)

(declare-fun b_free!9705 () Bool)

(declare-fun b_next!9705 () Bool)

(assert (=> b!261181 (= b_free!9705 (not b_next!9705))))

(declare-fun tp!100341 () Bool)

(declare-fun b_and!20261 () Bool)

(assert (=> b!261181 (= tp!100341 b_and!20261)))

(declare-fun b_free!9707 () Bool)

(declare-fun b_next!9707 () Bool)

(assert (=> b!261181 (= b_free!9707 (not b_next!9707))))

(declare-fun tb!14125 () Bool)

(declare-fun t!36988 () Bool)

(assert (=> (and b!261181 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170)))) t!36988) tb!14125))

(declare-fun result!17594 () Bool)

(assert (= result!17594 result!17416))

(assert (=> b!260027 t!36988))

(assert (=> d!74831 t!36988))

(declare-fun tb!14127 () Bool)

(declare-fun t!36990 () Bool)

(assert (=> (and b!261181 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49223 call!13868 call!13864))))) t!36990) tb!14127))

(declare-fun result!17596 () Bool)

(assert (= result!17596 result!17516))

(assert (=> d!74721 t!36990))

(declare-fun t!36992 () Bool)

(declare-fun tb!14129 () Bool)

(assert (=> (and b!261181 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 (ite c!49224 separatorToken!170 call!13864))))) t!36992) tb!14129))

(declare-fun result!17598 () Bool)

(assert (= result!17598 result!17496))

(assert (=> d!74709 t!36992))

(declare-fun t!36994 () Bool)

(declare-fun tb!14131 () Bool)

(assert (=> (and b!261181 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465))))) t!36994) tb!14131))

(declare-fun result!17600 () Bool)

(assert (= result!17600 result!17424))

(assert (=> b!260034 t!36994))

(assert (=> d!74667 t!36994))

(declare-fun t!36996 () Bool)

(declare-fun tb!14133 () Bool)

(assert (=> (and b!261181 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) t!36996) tb!14133))

(declare-fun result!17602 () Bool)

(assert (= result!17602 result!17506))

(assert (=> b!260851 t!36996))

(declare-fun t!36998 () Bool)

(declare-fun tb!14135 () Bool)

(assert (=> (and b!261181 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 (apply!726 lt!105860 0))))) t!36998) tb!14135))

(declare-fun result!17604 () Bool)

(assert (= result!17604 result!17572))

(assert (=> d!74805 t!36998))

(declare-fun b_and!20263 () Bool)

(declare-fun tp!100345 () Bool)

(assert (=> b!261181 (= tp!100345 (and (=> t!36998 result!17604) (=> t!36994 result!17600) (=> t!36996 result!17602) (=> t!36990 result!17596) (=> t!36992 result!17598) (=> t!36988 result!17594) b_and!20263))))

(declare-fun e!162146 () Bool)

(assert (=> b!260354 (= tp!100184 e!162146)))

(declare-fun e!162148 () Bool)

(declare-fun tp!100342 () Bool)

(declare-fun b!261179 () Bool)

(declare-fun e!162144 () Bool)

(assert (=> b!261179 (= e!162144 (and (inv!21 (value!24693 (h!9149 (t!36798 (t!36798 tokens!465))))) e!162148 tp!100342))))

(declare-fun e!162149 () Bool)

(assert (=> b!261181 (= e!162149 (and tp!100341 tp!100345))))

(declare-fun tp!100343 () Bool)

(declare-fun b!261180 () Bool)

(assert (=> b!261180 (= e!162148 (and tp!100343 (inv!4622 (tag!925 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (inv!4626 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) e!162149))))

(declare-fun b!261178 () Bool)

(declare-fun tp!100344 () Bool)

(assert (=> b!261178 (= e!162146 (and (inv!4625 (h!9149 (t!36798 (t!36798 tokens!465)))) e!162144 tp!100344))))

(assert (= b!261180 b!261181))

(assert (= b!261179 b!261180))

(assert (= b!261178 b!261179))

(assert (= (and b!260354 ((_ is Cons!3752) (t!36798 (t!36798 tokens!465)))) b!261178))

(declare-fun m!324459 () Bool)

(assert (=> b!261179 m!324459))

(declare-fun m!324461 () Bool)

(assert (=> b!261180 m!324461))

(declare-fun m!324463 () Bool)

(assert (=> b!261180 m!324463))

(declare-fun m!324465 () Bool)

(assert (=> b!261178 m!324465))

(declare-fun b!261184 () Bool)

(declare-fun e!162152 () Bool)

(assert (=> b!261184 (= e!162152 true)))

(declare-fun b!261183 () Bool)

(declare-fun e!162151 () Bool)

(assert (=> b!261183 (= e!162151 e!162152)))

(declare-fun b!261182 () Bool)

(declare-fun e!162150 () Bool)

(assert (=> b!261182 (= e!162150 e!162151)))

(assert (=> b!260317 e!162150))

(assert (= b!261183 b!261184))

(assert (= b!261182 b!261183))

(assert (= (and b!260317 ((_ is Cons!3751) (t!36797 rules!1920))) b!261182))

(assert (=> b!261184 (< (dynLambda!1881 order!2829 (toValue!1434 (transformation!715 (h!9148 (t!36797 rules!1920))))) (dynLambda!1882 order!2831 lambda!8690))))

(assert (=> b!261184 (< (dynLambda!1883 order!2833 (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920))))) (dynLambda!1882 order!2831 lambda!8690))))

(declare-fun e!162153 () Bool)

(assert (=> b!260359 (= tp!100187 e!162153)))

(declare-fun b!261185 () Bool)

(assert (=> b!261185 (= e!162153 tp_is_empty!1787)))

(declare-fun b!261187 () Bool)

(declare-fun tp!100349 () Bool)

(assert (=> b!261187 (= e!162153 tp!100349)))

(declare-fun b!261186 () Bool)

(declare-fun tp!100347 () Bool)

(declare-fun tp!100350 () Bool)

(assert (=> b!261186 (= e!162153 (and tp!100347 tp!100350))))

(declare-fun b!261188 () Bool)

(declare-fun tp!100346 () Bool)

(declare-fun tp!100348 () Bool)

(assert (=> b!261188 (= e!162153 (and tp!100346 tp!100348))))

(assert (= (and b!260359 ((_ is ElementMatch!939) (regOne!2390 (regex!715 (h!9148 rules!1920))))) b!261185))

(assert (= (and b!260359 ((_ is Concat!1677) (regOne!2390 (regex!715 (h!9148 rules!1920))))) b!261186))

(assert (= (and b!260359 ((_ is Star!939) (regOne!2390 (regex!715 (h!9148 rules!1920))))) b!261187))

(assert (= (and b!260359 ((_ is Union!939) (regOne!2390 (regex!715 (h!9148 rules!1920))))) b!261188))

(declare-fun e!162154 () Bool)

(assert (=> b!260359 (= tp!100190 e!162154)))

(declare-fun b!261189 () Bool)

(assert (=> b!261189 (= e!162154 tp_is_empty!1787)))

(declare-fun b!261191 () Bool)

(declare-fun tp!100354 () Bool)

(assert (=> b!261191 (= e!162154 tp!100354)))

(declare-fun b!261190 () Bool)

(declare-fun tp!100352 () Bool)

(declare-fun tp!100355 () Bool)

(assert (=> b!261190 (= e!162154 (and tp!100352 tp!100355))))

(declare-fun b!261192 () Bool)

(declare-fun tp!100351 () Bool)

(declare-fun tp!100353 () Bool)

(assert (=> b!261192 (= e!162154 (and tp!100351 tp!100353))))

(assert (= (and b!260359 ((_ is ElementMatch!939) (regTwo!2390 (regex!715 (h!9148 rules!1920))))) b!261189))

(assert (= (and b!260359 ((_ is Concat!1677) (regTwo!2390 (regex!715 (h!9148 rules!1920))))) b!261190))

(assert (= (and b!260359 ((_ is Star!939) (regTwo!2390 (regex!715 (h!9148 rules!1920))))) b!261191))

(assert (= (and b!260359 ((_ is Union!939) (regTwo!2390 (regex!715 (h!9148 rules!1920))))) b!261192))

(declare-fun e!162155 () Bool)

(assert (=> b!260356 (= tp!100183 e!162155)))

(declare-fun b!261193 () Bool)

(assert (=> b!261193 (= e!162155 tp_is_empty!1787)))

(declare-fun b!261195 () Bool)

(declare-fun tp!100359 () Bool)

(assert (=> b!261195 (= e!162155 tp!100359)))

(declare-fun b!261194 () Bool)

(declare-fun tp!100357 () Bool)

(declare-fun tp!100360 () Bool)

(assert (=> b!261194 (= e!162155 (and tp!100357 tp!100360))))

(declare-fun b!261196 () Bool)

(declare-fun tp!100356 () Bool)

(declare-fun tp!100358 () Bool)

(assert (=> b!261196 (= e!162155 (and tp!100356 tp!100358))))

(assert (= (and b!260356 ((_ is ElementMatch!939) (regex!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) b!261193))

(assert (= (and b!260356 ((_ is Concat!1677) (regex!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) b!261194))

(assert (= (and b!260356 ((_ is Star!939) (regex!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) b!261195))

(assert (= (and b!260356 ((_ is Union!939) (regex!715 (rule!1300 (h!9149 (t!36798 tokens!465)))))) b!261196))

(declare-fun e!162156 () Bool)

(assert (=> b!260361 (= tp!100186 e!162156)))

(declare-fun b!261197 () Bool)

(assert (=> b!261197 (= e!162156 tp_is_empty!1787)))

(declare-fun b!261199 () Bool)

(declare-fun tp!100364 () Bool)

(assert (=> b!261199 (= e!162156 tp!100364)))

(declare-fun b!261198 () Bool)

(declare-fun tp!100362 () Bool)

(declare-fun tp!100365 () Bool)

(assert (=> b!261198 (= e!162156 (and tp!100362 tp!100365))))

(declare-fun b!261200 () Bool)

(declare-fun tp!100361 () Bool)

(declare-fun tp!100363 () Bool)

(assert (=> b!261200 (= e!162156 (and tp!100361 tp!100363))))

(assert (= (and b!260361 ((_ is ElementMatch!939) (regOne!2391 (regex!715 (h!9148 rules!1920))))) b!261197))

(assert (= (and b!260361 ((_ is Concat!1677) (regOne!2391 (regex!715 (h!9148 rules!1920))))) b!261198))

(assert (= (and b!260361 ((_ is Star!939) (regOne!2391 (regex!715 (h!9148 rules!1920))))) b!261199))

(assert (= (and b!260361 ((_ is Union!939) (regOne!2391 (regex!715 (h!9148 rules!1920))))) b!261200))

(declare-fun e!162157 () Bool)

(assert (=> b!260361 (= tp!100188 e!162157)))

(declare-fun b!261201 () Bool)

(assert (=> b!261201 (= e!162157 tp_is_empty!1787)))

(declare-fun b!261203 () Bool)

(declare-fun tp!100369 () Bool)

(assert (=> b!261203 (= e!162157 tp!100369)))

(declare-fun b!261202 () Bool)

(declare-fun tp!100367 () Bool)

(declare-fun tp!100370 () Bool)

(assert (=> b!261202 (= e!162157 (and tp!100367 tp!100370))))

(declare-fun b!261204 () Bool)

(declare-fun tp!100366 () Bool)

(declare-fun tp!100368 () Bool)

(assert (=> b!261204 (= e!162157 (and tp!100366 tp!100368))))

(assert (= (and b!260361 ((_ is ElementMatch!939) (regTwo!2391 (regex!715 (h!9148 rules!1920))))) b!261201))

(assert (= (and b!260361 ((_ is Concat!1677) (regTwo!2391 (regex!715 (h!9148 rules!1920))))) b!261202))

(assert (= (and b!260361 ((_ is Star!939) (regTwo!2391 (regex!715 (h!9148 rules!1920))))) b!261203))

(assert (= (and b!260361 ((_ is Union!939) (regTwo!2391 (regex!715 (h!9148 rules!1920))))) b!261204))

(declare-fun b!261213 () Bool)

(declare-fun e!162162 () Bool)

(declare-fun tp!100379 () Bool)

(declare-fun tp!100378 () Bool)

(assert (=> b!261213 (= e!162162 (and (inv!4629 (left!3080 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))))) tp!100378 (inv!4629 (right!3410 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))))) tp!100379))))

(declare-fun b!261215 () Bool)

(declare-fun e!162163 () Bool)

(declare-fun tp!100377 () Bool)

(assert (=> b!261215 (= e!162163 tp!100377)))

(declare-fun b!261214 () Bool)

(declare-fun inv!4636 (IArray!2505) Bool)

(assert (=> b!261214 (= e!162162 (and (inv!4636 (xs!3851 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))))) e!162163))))

(assert (=> b!260033 (= tp!100094 (and (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170)))) e!162162))))

(assert (= (and b!260033 ((_ is Node!1252) (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))))) b!261213))

(assert (= b!261214 b!261215))

(assert (= (and b!260033 ((_ is Leaf!1949) (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (value!24693 separatorToken!170))))) b!261214))

(declare-fun m!324467 () Bool)

(assert (=> b!261213 m!324467))

(declare-fun m!324469 () Bool)

(assert (=> b!261213 m!324469))

(declare-fun m!324471 () Bool)

(assert (=> b!261214 m!324471))

(assert (=> b!260033 m!322521))

(declare-fun e!162164 () Bool)

(assert (=> b!260360 (= tp!100189 e!162164)))

(declare-fun b!261216 () Bool)

(assert (=> b!261216 (= e!162164 tp_is_empty!1787)))

(declare-fun b!261218 () Bool)

(declare-fun tp!100383 () Bool)

(assert (=> b!261218 (= e!162164 tp!100383)))

(declare-fun b!261217 () Bool)

(declare-fun tp!100381 () Bool)

(declare-fun tp!100384 () Bool)

(assert (=> b!261217 (= e!162164 (and tp!100381 tp!100384))))

(declare-fun b!261219 () Bool)

(declare-fun tp!100380 () Bool)

(declare-fun tp!100382 () Bool)

(assert (=> b!261219 (= e!162164 (and tp!100380 tp!100382))))

(assert (= (and b!260360 ((_ is ElementMatch!939) (reg!1268 (regex!715 (h!9148 rules!1920))))) b!261216))

(assert (= (and b!260360 ((_ is Concat!1677) (reg!1268 (regex!715 (h!9148 rules!1920))))) b!261217))

(assert (= (and b!260360 ((_ is Star!939) (reg!1268 (regex!715 (h!9148 rules!1920))))) b!261218))

(assert (= (and b!260360 ((_ is Union!939) (reg!1268 (regex!715 (h!9148 rules!1920))))) b!261219))

(declare-fun tp!100387 () Bool)

(declare-fun e!162165 () Bool)

(declare-fun b!261220 () Bool)

(declare-fun tp!100386 () Bool)

(assert (=> b!261220 (= e!162165 (and (inv!4629 (left!3080 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))))) tp!100386 (inv!4629 (right!3410 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))))) tp!100387))))

(declare-fun b!261222 () Bool)

(declare-fun e!162166 () Bool)

(declare-fun tp!100385 () Bool)

(assert (=> b!261222 (= e!162166 tp!100385)))

(declare-fun b!261221 () Bool)

(assert (=> b!261221 (= e!162165 (and (inv!4636 (xs!3851 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))))) e!162166))))

(assert (=> b!260036 (= tp!100095 (and (inv!4629 (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465))))) e!162165))))

(assert (= (and b!260036 ((_ is Node!1252) (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))))) b!261220))

(assert (= b!261221 b!261222))

(assert (= (and b!260036 ((_ is Leaf!1949) (c!49188 (dynLambda!1878 (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (value!24693 (h!9149 tokens!465)))))) b!261221))

(declare-fun m!324473 () Bool)

(assert (=> b!261220 m!324473))

(declare-fun m!324475 () Bool)

(assert (=> b!261220 m!324475))

(declare-fun m!324477 () Bool)

(assert (=> b!261221 m!324477))

(assert (=> b!260036 m!322533))

(declare-fun e!162167 () Bool)

(assert (=> b!260380 (= tp!100208 e!162167)))

(declare-fun b!261223 () Bool)

(assert (=> b!261223 (= e!162167 tp_is_empty!1787)))

(declare-fun b!261225 () Bool)

(declare-fun tp!100391 () Bool)

(assert (=> b!261225 (= e!162167 tp!100391)))

(declare-fun b!261224 () Bool)

(declare-fun tp!100389 () Bool)

(declare-fun tp!100392 () Bool)

(assert (=> b!261224 (= e!162167 (and tp!100389 tp!100392))))

(declare-fun b!261226 () Bool)

(declare-fun tp!100388 () Bool)

(declare-fun tp!100390 () Bool)

(assert (=> b!261226 (= e!162167 (and tp!100388 tp!100390))))

(assert (= (and b!260380 ((_ is ElementMatch!939) (regOne!2390 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261223))

(assert (= (and b!260380 ((_ is Concat!1677) (regOne!2390 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261224))

(assert (= (and b!260380 ((_ is Star!939) (regOne!2390 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261225))

(assert (= (and b!260380 ((_ is Union!939) (regOne!2390 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261226))

(declare-fun e!162168 () Bool)

(assert (=> b!260380 (= tp!100211 e!162168)))

(declare-fun b!261227 () Bool)

(assert (=> b!261227 (= e!162168 tp_is_empty!1787)))

(declare-fun b!261229 () Bool)

(declare-fun tp!100396 () Bool)

(assert (=> b!261229 (= e!162168 tp!100396)))

(declare-fun b!261228 () Bool)

(declare-fun tp!100394 () Bool)

(declare-fun tp!100397 () Bool)

(assert (=> b!261228 (= e!162168 (and tp!100394 tp!100397))))

(declare-fun b!261230 () Bool)

(declare-fun tp!100393 () Bool)

(declare-fun tp!100395 () Bool)

(assert (=> b!261230 (= e!162168 (and tp!100393 tp!100395))))

(assert (= (and b!260380 ((_ is ElementMatch!939) (regTwo!2390 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261227))

(assert (= (and b!260380 ((_ is Concat!1677) (regTwo!2390 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261228))

(assert (= (and b!260380 ((_ is Star!939) (regTwo!2390 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261229))

(assert (= (and b!260380 ((_ is Union!939) (regTwo!2390 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261230))

(declare-fun e!162169 () Bool)

(assert (=> b!260341 (= tp!100167 e!162169)))

(declare-fun b!261231 () Bool)

(assert (=> b!261231 (= e!162169 tp_is_empty!1787)))

(declare-fun b!261233 () Bool)

(declare-fun tp!100401 () Bool)

(assert (=> b!261233 (= e!162169 tp!100401)))

(declare-fun b!261232 () Bool)

(declare-fun tp!100399 () Bool)

(declare-fun tp!100402 () Bool)

(assert (=> b!261232 (= e!162169 (and tp!100399 tp!100402))))

(declare-fun b!261234 () Bool)

(declare-fun tp!100398 () Bool)

(declare-fun tp!100400 () Bool)

(assert (=> b!261234 (= e!162169 (and tp!100398 tp!100400))))

(assert (= (and b!260341 ((_ is ElementMatch!939) (regOne!2390 (regex!715 (rule!1300 separatorToken!170))))) b!261231))

(assert (= (and b!260341 ((_ is Concat!1677) (regOne!2390 (regex!715 (rule!1300 separatorToken!170))))) b!261232))

(assert (= (and b!260341 ((_ is Star!939) (regOne!2390 (regex!715 (rule!1300 separatorToken!170))))) b!261233))

(assert (= (and b!260341 ((_ is Union!939) (regOne!2390 (regex!715 (rule!1300 separatorToken!170))))) b!261234))

(declare-fun e!162170 () Bool)

(assert (=> b!260341 (= tp!100170 e!162170)))

(declare-fun b!261235 () Bool)

(assert (=> b!261235 (= e!162170 tp_is_empty!1787)))

(declare-fun b!261237 () Bool)

(declare-fun tp!100406 () Bool)

(assert (=> b!261237 (= e!162170 tp!100406)))

(declare-fun b!261236 () Bool)

(declare-fun tp!100404 () Bool)

(declare-fun tp!100407 () Bool)

(assert (=> b!261236 (= e!162170 (and tp!100404 tp!100407))))

(declare-fun b!261238 () Bool)

(declare-fun tp!100403 () Bool)

(declare-fun tp!100405 () Bool)

(assert (=> b!261238 (= e!162170 (and tp!100403 tp!100405))))

(assert (= (and b!260341 ((_ is ElementMatch!939) (regTwo!2390 (regex!715 (rule!1300 separatorToken!170))))) b!261235))

(assert (= (and b!260341 ((_ is Concat!1677) (regTwo!2390 (regex!715 (rule!1300 separatorToken!170))))) b!261236))

(assert (= (and b!260341 ((_ is Star!939) (regTwo!2390 (regex!715 (rule!1300 separatorToken!170))))) b!261237))

(assert (= (and b!260341 ((_ is Union!939) (regTwo!2390 (regex!715 (rule!1300 separatorToken!170))))) b!261238))

(declare-fun e!162171 () Bool)

(assert (=> b!260381 (= tp!100210 e!162171)))

(declare-fun b!261239 () Bool)

(assert (=> b!261239 (= e!162171 tp_is_empty!1787)))

(declare-fun b!261241 () Bool)

(declare-fun tp!100411 () Bool)

(assert (=> b!261241 (= e!162171 tp!100411)))

(declare-fun b!261240 () Bool)

(declare-fun tp!100409 () Bool)

(declare-fun tp!100412 () Bool)

(assert (=> b!261240 (= e!162171 (and tp!100409 tp!100412))))

(declare-fun b!261242 () Bool)

(declare-fun tp!100408 () Bool)

(declare-fun tp!100410 () Bool)

(assert (=> b!261242 (= e!162171 (and tp!100408 tp!100410))))

(assert (= (and b!260381 ((_ is ElementMatch!939) (reg!1268 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261239))

(assert (= (and b!260381 ((_ is Concat!1677) (reg!1268 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261240))

(assert (= (and b!260381 ((_ is Star!939) (reg!1268 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261241))

(assert (= (and b!260381 ((_ is Union!939) (reg!1268 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261242))

(declare-fun e!162172 () Bool)

(assert (=> b!260342 (= tp!100169 e!162172)))

(declare-fun b!261243 () Bool)

(assert (=> b!261243 (= e!162172 tp_is_empty!1787)))

(declare-fun b!261245 () Bool)

(declare-fun tp!100416 () Bool)

(assert (=> b!261245 (= e!162172 tp!100416)))

(declare-fun b!261244 () Bool)

(declare-fun tp!100414 () Bool)

(declare-fun tp!100417 () Bool)

(assert (=> b!261244 (= e!162172 (and tp!100414 tp!100417))))

(declare-fun b!261246 () Bool)

(declare-fun tp!100413 () Bool)

(declare-fun tp!100415 () Bool)

(assert (=> b!261246 (= e!162172 (and tp!100413 tp!100415))))

(assert (= (and b!260342 ((_ is ElementMatch!939) (reg!1268 (regex!715 (rule!1300 separatorToken!170))))) b!261243))

(assert (= (and b!260342 ((_ is Concat!1677) (reg!1268 (regex!715 (rule!1300 separatorToken!170))))) b!261244))

(assert (= (and b!260342 ((_ is Star!939) (reg!1268 (regex!715 (rule!1300 separatorToken!170))))) b!261245))

(assert (= (and b!260342 ((_ is Union!939) (reg!1268 (regex!715 (rule!1300 separatorToken!170))))) b!261246))

(declare-fun e!162173 () Bool)

(assert (=> b!260382 (= tp!100207 e!162173)))

(declare-fun b!261247 () Bool)

(assert (=> b!261247 (= e!162173 tp_is_empty!1787)))

(declare-fun b!261249 () Bool)

(declare-fun tp!100421 () Bool)

(assert (=> b!261249 (= e!162173 tp!100421)))

(declare-fun b!261248 () Bool)

(declare-fun tp!100419 () Bool)

(declare-fun tp!100422 () Bool)

(assert (=> b!261248 (= e!162173 (and tp!100419 tp!100422))))

(declare-fun b!261250 () Bool)

(declare-fun tp!100418 () Bool)

(declare-fun tp!100420 () Bool)

(assert (=> b!261250 (= e!162173 (and tp!100418 tp!100420))))

(assert (= (and b!260382 ((_ is ElementMatch!939) (regOne!2391 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261247))

(assert (= (and b!260382 ((_ is Concat!1677) (regOne!2391 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261248))

(assert (= (and b!260382 ((_ is Star!939) (regOne!2391 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261249))

(assert (= (and b!260382 ((_ is Union!939) (regOne!2391 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261250))

(declare-fun e!162174 () Bool)

(assert (=> b!260382 (= tp!100209 e!162174)))

(declare-fun b!261251 () Bool)

(assert (=> b!261251 (= e!162174 tp_is_empty!1787)))

(declare-fun b!261253 () Bool)

(declare-fun tp!100426 () Bool)

(assert (=> b!261253 (= e!162174 tp!100426)))

(declare-fun b!261252 () Bool)

(declare-fun tp!100424 () Bool)

(declare-fun tp!100427 () Bool)

(assert (=> b!261252 (= e!162174 (and tp!100424 tp!100427))))

(declare-fun b!261254 () Bool)

(declare-fun tp!100423 () Bool)

(declare-fun tp!100425 () Bool)

(assert (=> b!261254 (= e!162174 (and tp!100423 tp!100425))))

(assert (= (and b!260382 ((_ is ElementMatch!939) (regTwo!2391 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261251))

(assert (= (and b!260382 ((_ is Concat!1677) (regTwo!2391 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261252))

(assert (= (and b!260382 ((_ is Star!939) (regTwo!2391 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261253))

(assert (= (and b!260382 ((_ is Union!939) (regTwo!2391 (regex!715 (rule!1300 (h!9149 tokens!465)))))) b!261254))

(declare-fun e!162175 () Bool)

(assert (=> b!260343 (= tp!100166 e!162175)))

(declare-fun b!261255 () Bool)

(assert (=> b!261255 (= e!162175 tp_is_empty!1787)))

(declare-fun b!261257 () Bool)

(declare-fun tp!100431 () Bool)

(assert (=> b!261257 (= e!162175 tp!100431)))

(declare-fun b!261256 () Bool)

(declare-fun tp!100429 () Bool)

(declare-fun tp!100432 () Bool)

(assert (=> b!261256 (= e!162175 (and tp!100429 tp!100432))))

(declare-fun b!261258 () Bool)

(declare-fun tp!100428 () Bool)

(declare-fun tp!100430 () Bool)

(assert (=> b!261258 (= e!162175 (and tp!100428 tp!100430))))

(assert (= (and b!260343 ((_ is ElementMatch!939) (regOne!2391 (regex!715 (rule!1300 separatorToken!170))))) b!261255))

(assert (= (and b!260343 ((_ is Concat!1677) (regOne!2391 (regex!715 (rule!1300 separatorToken!170))))) b!261256))

(assert (= (and b!260343 ((_ is Star!939) (regOne!2391 (regex!715 (rule!1300 separatorToken!170))))) b!261257))

(assert (= (and b!260343 ((_ is Union!939) (regOne!2391 (regex!715 (rule!1300 separatorToken!170))))) b!261258))

(declare-fun e!162176 () Bool)

(assert (=> b!260343 (= tp!100168 e!162176)))

(declare-fun b!261259 () Bool)

(assert (=> b!261259 (= e!162176 tp_is_empty!1787)))

(declare-fun b!261261 () Bool)

(declare-fun tp!100436 () Bool)

(assert (=> b!261261 (= e!162176 tp!100436)))

(declare-fun b!261260 () Bool)

(declare-fun tp!100434 () Bool)

(declare-fun tp!100437 () Bool)

(assert (=> b!261260 (= e!162176 (and tp!100434 tp!100437))))

(declare-fun b!261262 () Bool)

(declare-fun tp!100433 () Bool)

(declare-fun tp!100435 () Bool)

(assert (=> b!261262 (= e!162176 (and tp!100433 tp!100435))))

(assert (= (and b!260343 ((_ is ElementMatch!939) (regTwo!2391 (regex!715 (rule!1300 separatorToken!170))))) b!261259))

(assert (= (and b!260343 ((_ is Concat!1677) (regTwo!2391 (regex!715 (rule!1300 separatorToken!170))))) b!261260))

(assert (= (and b!260343 ((_ is Star!939) (regTwo!2391 (regex!715 (rule!1300 separatorToken!170))))) b!261261))

(assert (= (and b!260343 ((_ is Union!939) (regTwo!2391 (regex!715 (rule!1300 separatorToken!170))))) b!261262))

(declare-fun b_lambda!8001 () Bool)

(assert (= b_lambda!7965 (or b!260313 b_lambda!8001)))

(declare-fun bs!28397 () Bool)

(declare-fun d!74837 () Bool)

(assert (= bs!28397 (and d!74837 b!260313)))

(assert (=> bs!28397 (= (dynLambda!1880 lambda!8690 (h!9149 tokens!465)) (rulesProduceIndividualToken!350 thiss!17480 rules!1920 (h!9149 tokens!465)))))

(declare-fun m!324479 () Bool)

(assert (=> bs!28397 m!324479))

(assert (=> d!74673 d!74837))

(declare-fun b_lambda!8003 () Bool)

(assert (= b_lambda!7971 (or (and b!261181 b_free!9707 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))))) (and b!260003 b_free!9671 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))))) (and b!259989 b_free!9667 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))))) (and b!260357 b_free!9687) (and b!261168 b_free!9703 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))))) (and b!260378 b_free!9691 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))))) (and b!260000 b_free!9675 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))))) b_lambda!8003)))

(declare-fun b_lambda!8005 () Bool)

(assert (= b_lambda!7999 (or (and b!260378 b_free!9691 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) (and b!261168 b_free!9703 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) (and b!261181 b_free!9707 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) (and b!260000 b_free!9675 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) (and b!260003 b_free!9671) (and b!259989 b_free!9667 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) (and b!260357 b_free!9687 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))))) b_lambda!8005)))

(declare-fun b_lambda!8007 () Bool)

(assert (= b_lambda!7997 (or d!74389 b_lambda!8007)))

(declare-fun bs!28398 () Bool)

(declare-fun d!74839 () Bool)

(assert (= bs!28398 (and d!74839 d!74389)))

(assert (=> bs!28398 (= (dynLambda!1880 lambda!8672 (h!9149 (list!1506 lt!105860))) (rulesProduceIndividualToken!350 thiss!17480 rules!1920 (h!9149 (list!1506 lt!105860))))))

(assert (=> bs!28398 m!323171))

(assert (=> b!261153 d!74839))

(declare-fun b_lambda!8009 () Bool)

(assert (= b_lambda!7951 (or b!260004 b_lambda!8009)))

(declare-fun bs!28399 () Bool)

(declare-fun d!74841 () Bool)

(assert (= bs!28399 (and d!74841 b!260004)))

(assert (=> bs!28399 (= (dynLambda!1880 lambda!8662 (h!9149 (t!36798 tokens!465))) (not (isSeparator!715 (rule!1300 (h!9149 (t!36798 tokens!465))))))))

(assert (=> b!260431 d!74841))

(declare-fun b_lambda!8011 () Bool)

(assert (= b_lambda!7963 (or (and b!261168 b_free!9703 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 (t!36797 rules!1920))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) (and b!259989 b_free!9667) (and b!260003 b_free!9671 (= (toChars!1293 (transformation!715 (rule!1300 separatorToken!170))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) (and b!260378 b_free!9691 (= (toChars!1293 (transformation!715 (h!9148 (t!36797 rules!1920)))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) (and b!260000 b_free!9675 (= (toChars!1293 (transformation!715 (h!9148 rules!1920))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) (and b!261181 b_free!9707 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 (t!36798 tokens!465)))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) (and b!260357 b_free!9687 (= (toChars!1293 (transformation!715 (rule!1300 (h!9149 (t!36798 tokens!465))))) (toChars!1293 (transformation!715 (rule!1300 (h!9149 tokens!465)))))) b_lambda!8011)))

(declare-fun b_lambda!8013 () Bool)

(assert (= b_lambda!7993 (or b!260171 b_lambda!8013)))

(declare-fun bs!28400 () Bool)

(declare-fun d!74843 () Bool)

(assert (= bs!28400 (and d!74843 b!260171)))

(assert (=> bs!28400 (= (dynLambda!1880 lambda!8684 (apply!726 lt!105860 0)) (rulesProduceIndividualToken!350 thiss!17480 rules!1920 (apply!726 lt!105860 0)))))

(assert (=> bs!28400 m!322683))

(declare-fun m!324481 () Bool)

(assert (=> bs!28400 m!324481))

(assert (=> d!74779 d!74843))

(check-sat (not d!74673) (not b!261232) (not b!261186) (not b_next!9669) (not b!261191) (not b!261103) b_and!20263 b_and!20085 (not b!260850) (not b!261196) (not d!74685) b_and!20257 (not b!260692) (not b!261261) (not b!261166) (not d!74675) b_and!20125 b_and!20259 (not b!261260) (not b_lambda!8003) (not b!261236) (not d!74649) (not b!260857) (not d!74567) (not b!261192) (not d!74809) (not d!74641) (not b!261119) (not bm!13928) (not b!260456) (not b!261165) (not b!261041) (not d!74555) (not b!261039) (not b!261179) (not b!261150) (not b!260558) (not b!260862) (not b!261256) (not b!260437) (not b!260792) (not b!260853) (not b!261187) (not d!74821) (not d!74657) (not b!261249) (not b_next!9675) (not d!74789) (not b!260531) (not b!260767) (not d!74819) (not d!74715) (not b!260849) (not bm!13896) (not d!74813) (not b!260687) (not d!74507) (not b!260833) (not b!260855) (not b!260457) (not b!260561) (not d!74647) (not b!260832) (not b_next!9673) (not b!260033) (not b!260428) (not b!260848) (not b_next!9687) (not b_lambda!8001) (not b!261149) (not b!260700) (not b!260532) (not b_lambda!8009) (not bm!13927) (not b!261230) (not b!261147) (not b!260497) (not d!74703) (not b!260036) (not b!261253) (not bm!13946) (not d!74585) (not b!261257) (not b!261252) (not b!261173) (not b!260772) (not b!260432) (not d!74643) (not d!74811) (not b_next!9707) (not b!261170) (not b!261213) (not b!260698) (not d!74711) (not b!261136) (not b!261217) (not d!74541) (not b!261172) (not b_lambda!7969) (not b!261118) (not d!74791) (not b!261218) (not b!260870) (not b!261244) (not b!260852) (not b!260851) (not bm!13950) (not d!74651) (not d!74671) (not b!260684) (not b!261171) (not bm!13931) (not b!261154) (not b!260429) (not b!261226) (not b_lambda!8013) (not b!261258) (not b_next!9665) (not d!74803) (not b!260554) (not b!260803) (not tb!14103) b_and!20253 (not b!261245) (not bm!13949) tp_is_empty!1787 (not b!261233) (not d!74581) (not b!260770) (not b!260774) (not d!74653) (not b!261195) (not b!261246) (not b!260474) (not d!74489) (not d!74501) b_and!20261 (not b!261144) (not d!74575) (not b_next!9667) (not b!261200) (not b_lambda!8011) (not b!260779) (not b!261229) b_and!20247 (not b!260498) (not b!261202) (not d!74699) (not d!74805) (not d!74563) (not d!74797) (not d!74725) (not b!260699) b_and!20249 (not b!260573) (not b_lambda!7945) (not b!261127) (not b!260458) (not b!260444) (not b!261198) (not bm!13897) (not bm!13911) (not b!260543) (not b!261248) (not bm!13951) (not b!261203) (not tb!14049) (not b!261222) (not d!74561) (not d!74515) (not d!74721) (not b!261219) (not d!74557) (not d!74503) (not b!261109) (not b!260685) (not d!74509) (not b!261180) b_and!20121 (not b!261262) (not b!261234) (not b!260455) (not b_next!9671) (not b!260441) (not d!74579) (not b!261158) (not b!261224) (not d!74543) (not d!74833) (not b!261146) (not b!260703) (not b!260544) b_and!20251 b_and!20081 (not b_lambda!8005) (not bm!13930) (not d!74723) (not b_next!9701) (not d!74787) (not d!74499) (not b!261042) (not b!261037) (not d!74487) (not b!260828) (not d!74801) (not b!261220) (not bs!28397) (not b!261141) (not b!260773) (not b!260496) (not b!261194) (not bm!13895) (not b!261241) (not b!260530) (not b_lambda!7941) (not d!74825) (not b!261167) (not b!261177) (not b!260701) (not b!261162) (not b!261237) (not d!74669) (not b!260805) (not b_next!9685) (not b_lambda!7943) (not b!261084) (not bm!13919) (not bm!13910) (not d!74505) (not b!261240) (not b!260869) (not b!260867) (not b!261176) (not d!74835) (not b!260430) (not d!74667) (not d!74831) (not b!260533) (not d!74587) (not d!74639) (not d!74571) (not b_lambda!7973) (not d!74683) (not b!261121) (not b!261254) (not b!260552) (not b!261215) (not b!261161) (not d!74645) (not b!261043) (not d!74799) (not d!74511) (not b!260438) (not b!261221) (not bm!13894) (not b!260768) (not b!261242) (not b!261044) (not b!260854) (not b!260771) (not d!74817) (not b!260690) (not b!260563) (not b!261188) (not b!260559) (not b!261157) (not b!260868) (not d!74779) (not b!260693) (not b!260859) b_and!20077 (not b!260688) (not b!261190) (not b!261250) (not b!261228) (not bs!28400) (not b_lambda!8007) (not d!74829) (not b!260560) (not d!74827) (not b!261145) (not b_next!9703) (not b!260423) (not d!74497) (not b!261204) (not b!261178) (not b!260806) (not b!260780) (not d!74493) (not b!260683) (not b!261130) (not b_next!9705) (not b!260566) (not b!261238) (not d!74573) (not b!260769) (not b!260575) (not b!261225) (not bm!13909) (not d!74709) (not d!74583) (not b!261120) (not b!261155) (not d!74807) b_and!20255 (not b!260864) (not b!261040) (not b!261214) (not b!261148) (not b_next!9689) (not b!260691) (not b!260844) (not b!260860) (not bm!13908) (not b!261182) (not b_lambda!7995) (not b!261156) (not b!260845) (not d!74589) (not tb!14039) (not bs!28398) (not b_next!9691) (not bm!13932) (not tb!14029) (not b!261199))
(check-sat (not b_next!9675) (not b_next!9673) (not b_next!9687) (not b_next!9707) (not b_next!9665) b_and!20249 (not b_next!9701) (not b_next!9685) b_and!20077 (not b_next!9703) (not b_next!9705) (not b_next!9691) (not b_next!9669) b_and!20263 b_and!20085 b_and!20257 b_and!20125 b_and!20259 b_and!20253 b_and!20261 (not b_next!9667) b_and!20247 b_and!20121 (not b_next!9671) b_and!20251 b_and!20081 b_and!20255 (not b_next!9689))
