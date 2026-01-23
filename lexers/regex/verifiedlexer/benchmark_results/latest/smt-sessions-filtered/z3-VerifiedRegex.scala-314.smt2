; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9834 () Bool)

(assert start!9834)

(declare-fun b!101498 () Bool)

(declare-fun b_free!3049 () Bool)

(declare-fun b_next!3049 () Bool)

(assert (=> b!101498 (= b_free!3049 (not b_next!3049))))

(declare-fun tp!57193 () Bool)

(declare-fun b_and!4567 () Bool)

(assert (=> b!101498 (= tp!57193 b_and!4567)))

(declare-fun b_free!3051 () Bool)

(declare-fun b_next!3051 () Bool)

(assert (=> b!101498 (= b_free!3051 (not b_next!3051))))

(declare-fun tp!57194 () Bool)

(declare-fun b_and!4569 () Bool)

(assert (=> b!101498 (= tp!57194 b_and!4569)))

(declare-fun b!101491 () Bool)

(declare-fun e!56300 () Bool)

(declare-datatypes ((C!1776 0))(
  ( (C!1777 (val!495 Int)) )
))
(declare-datatypes ((List!1648 0))(
  ( (Nil!1642) (Cons!1642 (h!7039 C!1776) (t!21297 List!1648)) )
))
(declare-datatypes ((IArray!1029 0))(
  ( (IArray!1030 (innerList!572 List!1648)) )
))
(declare-datatypes ((Conc!514 0))(
  ( (Node!514 (left!1254 Conc!514) (right!1584 Conc!514) (csize!1258 Int) (cheight!725 Int)) (Leaf!829 (xs!3101 IArray!1029) (csize!1259 Int)) (Empty!514) )
))
(declare-datatypes ((BalanceConc!1032 0))(
  ( (BalanceConc!1033 (c!24694 Conc!514)) )
))
(declare-fun input!576 () BalanceConc!1032)

(declare-fun tp!57192 () Bool)

(declare-fun inv!1991 (Conc!514) Bool)

(assert (=> b!101491 (= e!56300 (and (inv!1991 (c!24694 input!576)) tp!57192))))

(declare-fun b!101492 () Bool)

(declare-fun res!49151 () Bool)

(declare-fun e!56297 () Bool)

(assert (=> b!101492 (=> (not res!49151) (not e!56297))))

(declare-datatypes ((List!1649 0))(
  ( (Nil!1643) (Cons!1643 (h!7040 (_ BitVec 16)) (t!21298 List!1649)) )
))
(declare-datatypes ((TokenValue!349 0))(
  ( (FloatLiteralValue!698 (text!2888 List!1649)) (TokenValueExt!348 (__x!1793 Int)) (Broken!1745 (value!13095 List!1649)) (Object!354) (End!349) (Def!349) (Underscore!349) (Match!349) (Else!349) (Error!349) (Case!349) (If!349) (Extends!349) (Abstract!349) (Class!349) (Val!349) (DelimiterValue!698 (del!409 List!1649)) (KeywordValue!355 (value!13096 List!1649)) (CommentValue!698 (value!13097 List!1649)) (WhitespaceValue!698 (value!13098 List!1649)) (IndentationValue!349 (value!13099 List!1649)) (String!2136) (Int32!349) (Broken!1746 (value!13100 List!1649)) (Boolean!350) (Unit!1093) (OperatorValue!352 (op!409 List!1649)) (IdentifierValue!698 (value!13101 List!1649)) (IdentifierValue!699 (value!13102 List!1649)) (WhitespaceValue!699 (value!13103 List!1649)) (True!698) (False!698) (Broken!1747 (value!13104 List!1649)) (Broken!1748 (value!13105 List!1649)) (True!699) (RightBrace!349) (RightBracket!349) (Colon!349) (Null!349) (Comma!349) (LeftBracket!349) (False!699) (LeftBrace!349) (ImaginaryLiteralValue!349 (text!2889 List!1649)) (StringLiteralValue!1047 (value!13106 List!1649)) (EOFValue!349 (value!13107 List!1649)) (IdentValue!349 (value!13108 List!1649)) (DelimiterValue!699 (value!13109 List!1649)) (DedentValue!349 (value!13110 List!1649)) (NewLineValue!349 (value!13111 List!1649)) (IntegerValue!1047 (value!13112 (_ BitVec 32)) (text!2890 List!1649)) (IntegerValue!1048 (value!13113 Int) (text!2891 List!1649)) (Times!349) (Or!349) (Equal!349) (Minus!349) (Broken!1749 (value!13114 List!1649)) (And!349) (Div!349) (LessEqual!349) (Mod!349) (Concat!776) (Not!349) (Plus!349) (SpaceValue!349 (value!13115 List!1649)) (IntegerValue!1049 (value!13116 Int) (text!2892 List!1649)) (StringLiteralValue!1048 (text!2893 List!1649)) (FloatLiteralValue!699 (text!2894 List!1649)) (BytesLiteralValue!349 (value!13117 List!1649)) (CommentValue!699 (value!13118 List!1649)) (StringLiteralValue!1049 (value!13119 List!1649)) (ErrorTokenValue!349 (msg!410 List!1649)) )
))
(declare-datatypes ((Regex!427 0))(
  ( (ElementMatch!427 (c!24695 C!1776)) (Concat!777 (regOne!1366 Regex!427) (regTwo!1366 Regex!427)) (EmptyExpr!427) (Star!427 (reg!756 Regex!427)) (EmptyLang!427) (Union!427 (regOne!1367 Regex!427) (regTwo!1367 Regex!427)) )
))
(declare-datatypes ((String!2137 0))(
  ( (String!2138 (value!13120 String)) )
))
(declare-datatypes ((TokenValueInjection!522 0))(
  ( (TokenValueInjection!523 (toValue!930 Int) (toChars!789 Int)) )
))
(declare-datatypes ((Rule!518 0))(
  ( (Rule!519 (regex!359 Regex!427) (tag!537 String!2137) (isSeparator!359 Bool) (transformation!359 TokenValueInjection!522)) )
))
(declare-datatypes ((List!1650 0))(
  ( (Nil!1644) (Cons!1644 (h!7041 Rule!518) (t!21299 List!1650)) )
))
(declare-fun rules!1152 () List!1650)

(declare-fun isEmpty!734 (List!1650) Bool)

(assert (=> b!101492 (= res!49151 (not (isEmpty!734 rules!1152)))))

(declare-fun b!101493 () Bool)

(declare-fun e!56294 () Bool)

(assert (=> b!101493 (= e!56297 e!56294)))

(declare-fun res!49152 () Bool)

(assert (=> b!101493 (=> (not res!49152) (not e!56294))))

(declare-fun lt!28187 () List!1648)

(declare-fun lt!28188 () List!1648)

(declare-fun ++!258 (List!1648 List!1648) List!1648)

(assert (=> b!101493 (= res!49152 (= lt!28187 (++!258 lt!28188 lt!28187)))))

(declare-fun list!672 (BalanceConc!1032) List!1648)

(assert (=> b!101493 (= lt!28187 (list!672 input!576))))

(assert (=> b!101493 (= lt!28188 (list!672 (BalanceConc!1033 Empty!514)))))

(declare-fun b!101494 () Bool)

(declare-datatypes ((LexerInterface!251 0))(
  ( (LexerInterfaceExt!248 (__x!1794 Int)) (Lexer!249) )
))
(declare-fun thiss!11428 () LexerInterface!251)

(declare-datatypes ((Token!466 0))(
  ( (Token!467 (value!13121 TokenValue!349) (rule!862 Rule!518) (size!1448 Int) (originalCharacters!404 List!1648)) )
))
(declare-datatypes ((List!1651 0))(
  ( (Nil!1645) (Cons!1645 (h!7042 Token!466) (t!21300 List!1651)) )
))
(declare-datatypes ((IArray!1031 0))(
  ( (IArray!1032 (innerList!573 List!1651)) )
))
(declare-datatypes ((Conc!515 0))(
  ( (Node!515 (left!1255 Conc!515) (right!1585 Conc!515) (csize!1260 Int) (cheight!726 Int)) (Leaf!830 (xs!3102 IArray!1031) (csize!1261 Int)) (Empty!515) )
))
(declare-datatypes ((BalanceConc!1034 0))(
  ( (BalanceConc!1035 (c!24696 Conc!515)) )
))
(declare-fun list!673 (BalanceConc!1034) List!1651)

(declare-datatypes ((tuple2!1782 0))(
  ( (tuple2!1783 (_1!1098 BalanceConc!1034) (_2!1098 BalanceConc!1032)) )
))
(declare-fun lexRec!52 (LexerInterface!251 List!1650 BalanceConc!1032) tuple2!1782)

(assert (=> b!101494 (= e!56294 (not (= (list!673 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))) (list!673 (BalanceConc!1035 Empty!515)))))))

(declare-fun res!49153 () Bool)

(assert (=> start!9834 (=> (not res!49153) (not e!56297))))

(get-info :version)

(assert (=> start!9834 (= res!49153 ((_ is Lexer!249) thiss!11428))))

(assert (=> start!9834 e!56297))

(assert (=> start!9834 true))

(declare-fun e!56295 () Bool)

(assert (=> start!9834 e!56295))

(declare-fun inv!1992 (BalanceConc!1032) Bool)

(assert (=> start!9834 (and (inv!1992 input!576) e!56300)))

(declare-fun b!101495 () Bool)

(declare-fun res!49150 () Bool)

(assert (=> b!101495 (=> (not res!49150) (not e!56297))))

(declare-fun rulesInvariant!245 (LexerInterface!251 List!1650) Bool)

(assert (=> b!101495 (= res!49150 (rulesInvariant!245 thiss!11428 rules!1152))))

(declare-fun tp!57196 () Bool)

(declare-fun e!56299 () Bool)

(declare-fun e!56296 () Bool)

(declare-fun b!101496 () Bool)

(declare-fun inv!1987 (String!2137) Bool)

(declare-fun inv!1993 (TokenValueInjection!522) Bool)

(assert (=> b!101496 (= e!56296 (and tp!57196 (inv!1987 (tag!537 (h!7041 rules!1152))) (inv!1993 (transformation!359 (h!7041 rules!1152))) e!56299))))

(declare-fun b!101497 () Bool)

(declare-fun tp!57195 () Bool)

(assert (=> b!101497 (= e!56295 (and e!56296 tp!57195))))

(assert (=> b!101498 (= e!56299 (and tp!57193 tp!57194))))

(assert (= (and start!9834 res!49153) b!101492))

(assert (= (and b!101492 res!49151) b!101495))

(assert (= (and b!101495 res!49150) b!101493))

(assert (= (and b!101493 res!49152) b!101494))

(assert (= b!101496 b!101498))

(assert (= b!101497 b!101496))

(assert (= (and start!9834 ((_ is Cons!1644) rules!1152)) b!101497))

(assert (= start!9834 b!101491))

(declare-fun m!87802 () Bool)

(assert (=> b!101491 m!87802))

(declare-fun m!87804 () Bool)

(assert (=> b!101496 m!87804))

(declare-fun m!87806 () Bool)

(assert (=> b!101496 m!87806))

(declare-fun m!87808 () Bool)

(assert (=> b!101495 m!87808))

(declare-fun m!87810 () Bool)

(assert (=> start!9834 m!87810))

(declare-fun m!87812 () Bool)

(assert (=> b!101494 m!87812))

(declare-fun m!87814 () Bool)

(assert (=> b!101494 m!87814))

(declare-fun m!87816 () Bool)

(assert (=> b!101494 m!87816))

(declare-fun m!87818 () Bool)

(assert (=> b!101492 m!87818))

(declare-fun m!87820 () Bool)

(assert (=> b!101493 m!87820))

(declare-fun m!87822 () Bool)

(assert (=> b!101493 m!87822))

(declare-fun m!87824 () Bool)

(assert (=> b!101493 m!87824))

(check-sat b_and!4569 (not b!101492) (not b!101493) (not b!101494) (not b!101491) (not b_next!3049) (not b!101496) (not start!9834) (not b!101495) (not b_next!3051) b_and!4567 (not b!101497))
(check-sat b_and!4569 b_and!4567 (not b_next!3051) (not b_next!3049))
(get-model)

(declare-fun d!24079 () Bool)

(assert (=> d!24079 (= (inv!1987 (tag!537 (h!7041 rules!1152))) (= (mod (str.len (value!13120 (tag!537 (h!7041 rules!1152)))) 2) 0))))

(assert (=> b!101496 d!24079))

(declare-fun d!24081 () Bool)

(declare-fun res!49159 () Bool)

(declare-fun e!56306 () Bool)

(assert (=> d!24081 (=> (not res!49159) (not e!56306))))

(declare-fun semiInverseModEq!91 (Int Int) Bool)

(assert (=> d!24081 (= res!49159 (semiInverseModEq!91 (toChars!789 (transformation!359 (h!7041 rules!1152))) (toValue!930 (transformation!359 (h!7041 rules!1152)))))))

(assert (=> d!24081 (= (inv!1993 (transformation!359 (h!7041 rules!1152))) e!56306)))

(declare-fun b!101504 () Bool)

(declare-fun equivClasses!86 (Int Int) Bool)

(assert (=> b!101504 (= e!56306 (equivClasses!86 (toChars!789 (transformation!359 (h!7041 rules!1152))) (toValue!930 (transformation!359 (h!7041 rules!1152)))))))

(assert (= (and d!24081 res!49159) b!101504))

(declare-fun m!87830 () Bool)

(assert (=> d!24081 m!87830))

(declare-fun m!87832 () Bool)

(assert (=> b!101504 m!87832))

(assert (=> b!101496 d!24081))

(declare-fun d!24087 () Bool)

(declare-fun c!24702 () Bool)

(assert (=> d!24087 (= c!24702 ((_ is Node!514) (c!24694 input!576)))))

(declare-fun e!56317 () Bool)

(assert (=> d!24087 (= (inv!1991 (c!24694 input!576)) e!56317)))

(declare-fun b!101523 () Bool)

(declare-fun inv!1997 (Conc!514) Bool)

(assert (=> b!101523 (= e!56317 (inv!1997 (c!24694 input!576)))))

(declare-fun b!101524 () Bool)

(declare-fun e!56318 () Bool)

(assert (=> b!101524 (= e!56317 e!56318)))

(declare-fun res!49168 () Bool)

(assert (=> b!101524 (= res!49168 (not ((_ is Leaf!829) (c!24694 input!576))))))

(assert (=> b!101524 (=> res!49168 e!56318)))

(declare-fun b!101525 () Bool)

(declare-fun inv!1998 (Conc!514) Bool)

(assert (=> b!101525 (= e!56318 (inv!1998 (c!24694 input!576)))))

(assert (= (and d!24087 c!24702) b!101523))

(assert (= (and d!24087 (not c!24702)) b!101524))

(assert (= (and b!101524 (not res!49168)) b!101525))

(declare-fun m!87850 () Bool)

(assert (=> b!101523 m!87850))

(declare-fun m!87852 () Bool)

(assert (=> b!101525 m!87852))

(assert (=> b!101491 d!24087))

(declare-fun d!24093 () Bool)

(declare-fun res!49171 () Bool)

(declare-fun e!56321 () Bool)

(assert (=> d!24093 (=> (not res!49171) (not e!56321))))

(declare-fun rulesValid!99 (LexerInterface!251 List!1650) Bool)

(assert (=> d!24093 (= res!49171 (rulesValid!99 thiss!11428 rules!1152))))

(assert (=> d!24093 (= (rulesInvariant!245 thiss!11428 rules!1152) e!56321)))

(declare-fun b!101528 () Bool)

(declare-datatypes ((List!1653 0))(
  ( (Nil!1647) (Cons!1647 (h!7044 String!2137) (t!21302 List!1653)) )
))
(declare-fun noDuplicateTag!99 (LexerInterface!251 List!1650 List!1653) Bool)

(assert (=> b!101528 (= e!56321 (noDuplicateTag!99 thiss!11428 rules!1152 Nil!1647))))

(assert (= (and d!24093 res!49171) b!101528))

(declare-fun m!87858 () Bool)

(assert (=> d!24093 m!87858))

(declare-fun m!87860 () Bool)

(assert (=> b!101528 m!87860))

(assert (=> b!101495 d!24093))

(declare-fun d!24103 () Bool)

(declare-fun list!676 (Conc!515) List!1651)

(assert (=> d!24103 (= (list!673 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))) (list!676 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))

(declare-fun bs!9928 () Bool)

(assert (= bs!9928 d!24103))

(declare-fun m!87862 () Bool)

(assert (=> bs!9928 m!87862))

(assert (=> b!101494 d!24103))

(declare-fun b!101612 () Bool)

(declare-fun e!56373 () Bool)

(declare-fun e!56372 () Bool)

(assert (=> b!101612 (= e!56373 e!56372)))

(declare-fun res!49193 () Bool)

(declare-fun lt!28209 () tuple2!1782)

(declare-fun size!1452 (BalanceConc!1032) Int)

(assert (=> b!101612 (= res!49193 (< (size!1452 (_2!1098 lt!28209)) (size!1452 (BalanceConc!1033 Empty!514))))))

(assert (=> b!101612 (=> (not res!49193) (not e!56372))))

(declare-fun b!101613 () Bool)

(assert (=> b!101613 (= e!56373 (= (list!672 (_2!1098 lt!28209)) (list!672 (BalanceConc!1033 Empty!514))))))

(declare-fun b!101614 () Bool)

(declare-fun res!49195 () Bool)

(declare-fun e!56375 () Bool)

(assert (=> b!101614 (=> (not res!49195) (not e!56375))))

(declare-datatypes ((tuple2!1788 0))(
  ( (tuple2!1789 (_1!1101 List!1651) (_2!1101 List!1648)) )
))
(declare-fun lexList!75 (LexerInterface!251 List!1650 List!1648) tuple2!1788)

(assert (=> b!101614 (= res!49195 (= (list!673 (_1!1098 lt!28209)) (_1!1101 (lexList!75 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))))))))

(declare-fun b!101615 () Bool)

(declare-fun e!56374 () tuple2!1782)

(assert (=> b!101615 (= e!56374 (tuple2!1783 (BalanceConc!1035 Empty!515) (BalanceConc!1033 Empty!514)))))

(declare-fun b!101616 () Bool)

(assert (=> b!101616 (= e!56375 (= (list!672 (_2!1098 lt!28209)) (_2!1101 (lexList!75 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))))))))

(declare-fun b!101617 () Bool)

(declare-fun isEmpty!736 (BalanceConc!1034) Bool)

(assert (=> b!101617 (= e!56372 (not (isEmpty!736 (_1!1098 lt!28209))))))

(declare-fun d!24105 () Bool)

(assert (=> d!24105 e!56375))

(declare-fun res!49194 () Bool)

(assert (=> d!24105 (=> (not res!49194) (not e!56375))))

(assert (=> d!24105 (= res!49194 e!56373)))

(declare-fun c!24718 () Bool)

(declare-fun size!1453 (BalanceConc!1034) Int)

(assert (=> d!24105 (= c!24718 (> (size!1453 (_1!1098 lt!28209)) 0))))

(assert (=> d!24105 (= lt!28209 e!56374)))

(declare-fun c!24719 () Bool)

(declare-datatypes ((tuple2!1790 0))(
  ( (tuple2!1791 (_1!1102 Token!466) (_2!1102 BalanceConc!1032)) )
))
(declare-datatypes ((Option!184 0))(
  ( (None!183) (Some!183 (v!12982 tuple2!1790)) )
))
(declare-fun lt!28208 () Option!184)

(assert (=> d!24105 (= c!24719 ((_ is Some!183) lt!28208))))

(declare-fun maxPrefixZipperSequence!50 (LexerInterface!251 List!1650 BalanceConc!1032) Option!184)

(assert (=> d!24105 (= lt!28208 (maxPrefixZipperSequence!50 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))

(assert (=> d!24105 (= (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)) lt!28209)))

(declare-fun b!101618 () Bool)

(declare-fun lt!28207 () tuple2!1782)

(declare-fun prepend!129 (BalanceConc!1034 Token!466) BalanceConc!1034)

(assert (=> b!101618 (= e!56374 (tuple2!1783 (prepend!129 (_1!1098 lt!28207) (_1!1102 (v!12982 lt!28208))) (_2!1098 lt!28207)))))

(assert (=> b!101618 (= lt!28207 (lexRec!52 thiss!11428 rules!1152 (_2!1102 (v!12982 lt!28208))))))

(assert (= (and d!24105 c!24719) b!101618))

(assert (= (and d!24105 (not c!24719)) b!101615))

(assert (= (and d!24105 c!24718) b!101612))

(assert (= (and d!24105 (not c!24718)) b!101613))

(assert (= (and b!101612 res!49193) b!101617))

(assert (= (and d!24105 res!49194) b!101614))

(assert (= (and b!101614 res!49195) b!101616))

(declare-fun m!87906 () Bool)

(assert (=> d!24105 m!87906))

(declare-fun m!87908 () Bool)

(assert (=> d!24105 m!87908))

(declare-fun m!87910 () Bool)

(assert (=> b!101617 m!87910))

(declare-fun m!87912 () Bool)

(assert (=> b!101614 m!87912))

(assert (=> b!101614 m!87824))

(assert (=> b!101614 m!87824))

(declare-fun m!87914 () Bool)

(assert (=> b!101614 m!87914))

(declare-fun m!87916 () Bool)

(assert (=> b!101616 m!87916))

(assert (=> b!101616 m!87824))

(assert (=> b!101616 m!87824))

(assert (=> b!101616 m!87914))

(declare-fun m!87918 () Bool)

(assert (=> b!101612 m!87918))

(declare-fun m!87920 () Bool)

(assert (=> b!101612 m!87920))

(declare-fun m!87922 () Bool)

(assert (=> b!101618 m!87922))

(declare-fun m!87924 () Bool)

(assert (=> b!101618 m!87924))

(assert (=> b!101613 m!87916))

(assert (=> b!101613 m!87824))

(assert (=> b!101494 d!24105))

(declare-fun d!24115 () Bool)

(assert (=> d!24115 (= (list!673 (BalanceConc!1035 Empty!515)) (list!676 (c!24696 (BalanceConc!1035 Empty!515))))))

(declare-fun bs!9931 () Bool)

(assert (= bs!9931 d!24115))

(declare-fun m!87926 () Bool)

(assert (=> bs!9931 m!87926))

(assert (=> b!101494 d!24115))

(declare-fun d!24117 () Bool)

(declare-fun isBalanced!135 (Conc!514) Bool)

(assert (=> d!24117 (= (inv!1992 input!576) (isBalanced!135 (c!24694 input!576)))))

(declare-fun bs!9932 () Bool)

(assert (= bs!9932 d!24117))

(declare-fun m!87928 () Bool)

(assert (=> bs!9932 m!87928))

(assert (=> start!9834 d!24117))

(declare-fun d!24119 () Bool)

(assert (=> d!24119 (= (isEmpty!734 rules!1152) ((_ is Nil!1644) rules!1152))))

(assert (=> b!101492 d!24119))

(declare-fun d!24121 () Bool)

(declare-fun e!56381 () Bool)

(assert (=> d!24121 e!56381))

(declare-fun res!49200 () Bool)

(assert (=> d!24121 (=> (not res!49200) (not e!56381))))

(declare-fun lt!28212 () List!1648)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!132 (List!1648) (InoxSet C!1776))

(assert (=> d!24121 (= res!49200 (= (content!132 lt!28212) ((_ map or) (content!132 lt!28188) (content!132 lt!28187))))))

(declare-fun e!56380 () List!1648)

(assert (=> d!24121 (= lt!28212 e!56380)))

(declare-fun c!24722 () Bool)

(assert (=> d!24121 (= c!24722 ((_ is Nil!1642) lt!28188))))

(assert (=> d!24121 (= (++!258 lt!28188 lt!28187) lt!28212)))

(declare-fun b!101630 () Bool)

(assert (=> b!101630 (= e!56381 (or (not (= lt!28187 Nil!1642)) (= lt!28212 lt!28188)))))

(declare-fun b!101627 () Bool)

(assert (=> b!101627 (= e!56380 lt!28187)))

(declare-fun b!101628 () Bool)

(assert (=> b!101628 (= e!56380 (Cons!1642 (h!7039 lt!28188) (++!258 (t!21297 lt!28188) lt!28187)))))

(declare-fun b!101629 () Bool)

(declare-fun res!49201 () Bool)

(assert (=> b!101629 (=> (not res!49201) (not e!56381))))

(declare-fun size!1454 (List!1648) Int)

(assert (=> b!101629 (= res!49201 (= (size!1454 lt!28212) (+ (size!1454 lt!28188) (size!1454 lt!28187))))))

(assert (= (and d!24121 c!24722) b!101627))

(assert (= (and d!24121 (not c!24722)) b!101628))

(assert (= (and d!24121 res!49200) b!101629))

(assert (= (and b!101629 res!49201) b!101630))

(declare-fun m!87930 () Bool)

(assert (=> d!24121 m!87930))

(declare-fun m!87932 () Bool)

(assert (=> d!24121 m!87932))

(declare-fun m!87934 () Bool)

(assert (=> d!24121 m!87934))

(declare-fun m!87936 () Bool)

(assert (=> b!101628 m!87936))

(declare-fun m!87938 () Bool)

(assert (=> b!101629 m!87938))

(declare-fun m!87940 () Bool)

(assert (=> b!101629 m!87940))

(declare-fun m!87942 () Bool)

(assert (=> b!101629 m!87942))

(assert (=> b!101493 d!24121))

(declare-fun d!24123 () Bool)

(declare-fun list!677 (Conc!514) List!1648)

(assert (=> d!24123 (= (list!672 input!576) (list!677 (c!24694 input!576)))))

(declare-fun bs!9933 () Bool)

(assert (= bs!9933 d!24123))

(declare-fun m!87944 () Bool)

(assert (=> bs!9933 m!87944))

(assert (=> b!101493 d!24123))

(declare-fun d!24125 () Bool)

(assert (=> d!24125 (= (list!672 (BalanceConc!1033 Empty!514)) (list!677 (c!24694 (BalanceConc!1033 Empty!514))))))

(declare-fun bs!9934 () Bool)

(assert (= bs!9934 d!24125))

(declare-fun m!87946 () Bool)

(assert (=> bs!9934 m!87946))

(assert (=> b!101493 d!24125))

(declare-fun b!101641 () Bool)

(declare-fun e!56384 () Bool)

(declare-fun tp_is_empty!773 () Bool)

(assert (=> b!101641 (= e!56384 tp_is_empty!773)))

(declare-fun b!101644 () Bool)

(declare-fun tp!57244 () Bool)

(declare-fun tp!57246 () Bool)

(assert (=> b!101644 (= e!56384 (and tp!57244 tp!57246))))

(declare-fun b!101642 () Bool)

(declare-fun tp!57247 () Bool)

(declare-fun tp!57243 () Bool)

(assert (=> b!101642 (= e!56384 (and tp!57247 tp!57243))))

(assert (=> b!101496 (= tp!57196 e!56384)))

(declare-fun b!101643 () Bool)

(declare-fun tp!57245 () Bool)

(assert (=> b!101643 (= e!56384 tp!57245)))

(assert (= (and b!101496 ((_ is ElementMatch!427) (regex!359 (h!7041 rules!1152)))) b!101641))

(assert (= (and b!101496 ((_ is Concat!777) (regex!359 (h!7041 rules!1152)))) b!101642))

(assert (= (and b!101496 ((_ is Star!427) (regex!359 (h!7041 rules!1152)))) b!101643))

(assert (= (and b!101496 ((_ is Union!427) (regex!359 (h!7041 rules!1152)))) b!101644))

(declare-fun tp!57256 () Bool)

(declare-fun e!56390 () Bool)

(declare-fun b!101653 () Bool)

(declare-fun tp!57255 () Bool)

(assert (=> b!101653 (= e!56390 (and (inv!1991 (left!1254 (c!24694 input!576))) tp!57255 (inv!1991 (right!1584 (c!24694 input!576))) tp!57256))))

(declare-fun b!101655 () Bool)

(declare-fun e!56389 () Bool)

(declare-fun tp!57254 () Bool)

(assert (=> b!101655 (= e!56389 tp!57254)))

(declare-fun b!101654 () Bool)

(declare-fun inv!1999 (IArray!1029) Bool)

(assert (=> b!101654 (= e!56390 (and (inv!1999 (xs!3101 (c!24694 input!576))) e!56389))))

(assert (=> b!101491 (= tp!57192 (and (inv!1991 (c!24694 input!576)) e!56390))))

(assert (= (and b!101491 ((_ is Node!514) (c!24694 input!576))) b!101653))

(assert (= b!101654 b!101655))

(assert (= (and b!101491 ((_ is Leaf!829) (c!24694 input!576))) b!101654))

(declare-fun m!87948 () Bool)

(assert (=> b!101653 m!87948))

(declare-fun m!87950 () Bool)

(assert (=> b!101653 m!87950))

(declare-fun m!87952 () Bool)

(assert (=> b!101654 m!87952))

(assert (=> b!101491 m!87802))

(declare-fun b!101666 () Bool)

(declare-fun b_free!3057 () Bool)

(declare-fun b_next!3057 () Bool)

(assert (=> b!101666 (= b_free!3057 (not b_next!3057))))

(declare-fun tp!57266 () Bool)

(declare-fun b_and!4575 () Bool)

(assert (=> b!101666 (= tp!57266 b_and!4575)))

(declare-fun b_free!3059 () Bool)

(declare-fun b_next!3059 () Bool)

(assert (=> b!101666 (= b_free!3059 (not b_next!3059))))

(declare-fun tp!57268 () Bool)

(declare-fun b_and!4577 () Bool)

(assert (=> b!101666 (= tp!57268 b_and!4577)))

(declare-fun e!56401 () Bool)

(assert (=> b!101666 (= e!56401 (and tp!57266 tp!57268))))

(declare-fun tp!57267 () Bool)

(declare-fun b!101665 () Bool)

(declare-fun e!56399 () Bool)

(assert (=> b!101665 (= e!56399 (and tp!57267 (inv!1987 (tag!537 (h!7041 (t!21299 rules!1152)))) (inv!1993 (transformation!359 (h!7041 (t!21299 rules!1152)))) e!56401))))

(declare-fun b!101664 () Bool)

(declare-fun e!56400 () Bool)

(declare-fun tp!57265 () Bool)

(assert (=> b!101664 (= e!56400 (and e!56399 tp!57265))))

(assert (=> b!101497 (= tp!57195 e!56400)))

(assert (= b!101665 b!101666))

(assert (= b!101664 b!101665))

(assert (= (and b!101497 ((_ is Cons!1644) (t!21299 rules!1152))) b!101664))

(declare-fun m!87954 () Bool)

(assert (=> b!101665 m!87954))

(declare-fun m!87956 () Bool)

(assert (=> b!101665 m!87956))

(check-sat (not b_next!3051) (not b!101617) (not b!101612) (not b!101655) (not d!24121) b_and!4577 (not b!101664) (not b!101523) (not b!101616) b_and!4575 (not b!101618) (not b_next!3059) (not b!101644) (not d!24117) (not b!101642) (not b!101528) b_and!4569 (not b_next!3057) (not b!101653) (not d!24105) (not d!24103) tp_is_empty!773 (not b!101665) (not b!101613) (not b!101654) (not b!101504) (not b!101491) (not d!24123) (not d!24125) (not d!24093) (not d!24115) (not b_next!3049) (not b!101629) (not d!24081) (not b!101525) (not b!101614) b_and!4567 (not b!101628) (not b!101643))
(check-sat (not b_next!3051) b_and!4569 (not b_next!3057) b_and!4577 (not b_next!3049) b_and!4575 (not b_next!3059) b_and!4567)
(get-model)

(declare-fun d!24149 () Bool)

(declare-fun res!49239 () Bool)

(declare-fun e!56450 () Bool)

(assert (=> d!24149 (=> (not res!49239) (not e!56450))))

(declare-fun list!680 (IArray!1029) List!1648)

(assert (=> d!24149 (= res!49239 (<= (size!1454 (list!680 (xs!3101 (c!24694 input!576)))) 512))))

(assert (=> d!24149 (= (inv!1998 (c!24694 input!576)) e!56450)))

(declare-fun b!101742 () Bool)

(declare-fun res!49240 () Bool)

(assert (=> b!101742 (=> (not res!49240) (not e!56450))))

(assert (=> b!101742 (= res!49240 (= (csize!1259 (c!24694 input!576)) (size!1454 (list!680 (xs!3101 (c!24694 input!576))))))))

(declare-fun b!101743 () Bool)

(assert (=> b!101743 (= e!56450 (and (> (csize!1259 (c!24694 input!576)) 0) (<= (csize!1259 (c!24694 input!576)) 512)))))

(assert (= (and d!24149 res!49239) b!101742))

(assert (= (and b!101742 res!49240) b!101743))

(declare-fun m!88052 () Bool)

(assert (=> d!24149 m!88052))

(assert (=> d!24149 m!88052))

(declare-fun m!88054 () Bool)

(assert (=> d!24149 m!88054))

(assert (=> b!101742 m!88052))

(assert (=> b!101742 m!88052))

(assert (=> b!101742 m!88054))

(assert (=> b!101525 d!24149))

(declare-fun d!24153 () Bool)

(declare-fun res!49247 () Bool)

(declare-fun e!56453 () Bool)

(assert (=> d!24153 (=> (not res!49247) (not e!56453))))

(declare-fun size!1458 (Conc!514) Int)

(assert (=> d!24153 (= res!49247 (= (csize!1258 (c!24694 input!576)) (+ (size!1458 (left!1254 (c!24694 input!576))) (size!1458 (right!1584 (c!24694 input!576))))))))

(assert (=> d!24153 (= (inv!1997 (c!24694 input!576)) e!56453)))

(declare-fun b!101750 () Bool)

(declare-fun res!49248 () Bool)

(assert (=> b!101750 (=> (not res!49248) (not e!56453))))

(assert (=> b!101750 (= res!49248 (and (not (= (left!1254 (c!24694 input!576)) Empty!514)) (not (= (right!1584 (c!24694 input!576)) Empty!514))))))

(declare-fun b!101751 () Bool)

(declare-fun res!49249 () Bool)

(assert (=> b!101751 (=> (not res!49249) (not e!56453))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!52 (Conc!514) Int)

(assert (=> b!101751 (= res!49249 (= (cheight!725 (c!24694 input!576)) (+ (max!0 (height!52 (left!1254 (c!24694 input!576))) (height!52 (right!1584 (c!24694 input!576)))) 1)))))

(declare-fun b!101752 () Bool)

(assert (=> b!101752 (= e!56453 (<= 0 (cheight!725 (c!24694 input!576))))))

(assert (= (and d!24153 res!49247) b!101750))

(assert (= (and b!101750 res!49248) b!101751))

(assert (= (and b!101751 res!49249) b!101752))

(declare-fun m!88056 () Bool)

(assert (=> d!24153 m!88056))

(declare-fun m!88058 () Bool)

(assert (=> d!24153 m!88058))

(declare-fun m!88060 () Bool)

(assert (=> b!101751 m!88060))

(declare-fun m!88062 () Bool)

(assert (=> b!101751 m!88062))

(assert (=> b!101751 m!88060))

(assert (=> b!101751 m!88062))

(declare-fun m!88064 () Bool)

(assert (=> b!101751 m!88064))

(assert (=> b!101523 d!24153))

(declare-fun d!24155 () Bool)

(assert (=> d!24155 (= (inv!1987 (tag!537 (h!7041 (t!21299 rules!1152)))) (= (mod (str.len (value!13120 (tag!537 (h!7041 (t!21299 rules!1152))))) 2) 0))))

(assert (=> b!101665 d!24155))

(declare-fun d!24157 () Bool)

(declare-fun res!49250 () Bool)

(declare-fun e!56454 () Bool)

(assert (=> d!24157 (=> (not res!49250) (not e!56454))))

(assert (=> d!24157 (= res!49250 (semiInverseModEq!91 (toChars!789 (transformation!359 (h!7041 (t!21299 rules!1152)))) (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152))))))))

(assert (=> d!24157 (= (inv!1993 (transformation!359 (h!7041 (t!21299 rules!1152)))) e!56454)))

(declare-fun b!101753 () Bool)

(assert (=> b!101753 (= e!56454 (equivClasses!86 (toChars!789 (transformation!359 (h!7041 (t!21299 rules!1152)))) (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152))))))))

(assert (= (and d!24157 res!49250) b!101753))

(declare-fun m!88066 () Bool)

(assert (=> d!24157 m!88066))

(declare-fun m!88068 () Bool)

(assert (=> b!101753 m!88068))

(assert (=> b!101665 d!24157))

(declare-fun d!24159 () Bool)

(assert (=> d!24159 true))

(declare-fun lambda!1861 () Int)

(declare-fun order!775 () Int)

(declare-fun order!773 () Int)

(declare-fun dynLambda!503 (Int Int) Int)

(declare-fun dynLambda!504 (Int Int) Int)

(assert (=> d!24159 (< (dynLambda!503 order!773 (toValue!930 (transformation!359 (h!7041 rules!1152)))) (dynLambda!504 order!775 lambda!1861))))

(declare-fun Forall2!59 (Int) Bool)

(assert (=> d!24159 (= (equivClasses!86 (toChars!789 (transformation!359 (h!7041 rules!1152))) (toValue!930 (transformation!359 (h!7041 rules!1152)))) (Forall2!59 lambda!1861))))

(declare-fun bs!9945 () Bool)

(assert (= bs!9945 d!24159))

(declare-fun m!88176 () Bool)

(assert (=> bs!9945 m!88176))

(assert (=> b!101504 d!24159))

(declare-fun b!101896 () Bool)

(declare-fun e!56521 () List!1648)

(assert (=> b!101896 (= e!56521 (list!680 (xs!3101 (c!24694 input!576))))))

(declare-fun b!101897 () Bool)

(assert (=> b!101897 (= e!56521 (++!258 (list!677 (left!1254 (c!24694 input!576))) (list!677 (right!1584 (c!24694 input!576)))))))

(declare-fun b!101895 () Bool)

(declare-fun e!56520 () List!1648)

(assert (=> b!101895 (= e!56520 e!56521)))

(declare-fun c!24769 () Bool)

(assert (=> b!101895 (= c!24769 ((_ is Leaf!829) (c!24694 input!576)))))

(declare-fun b!101894 () Bool)

(assert (=> b!101894 (= e!56520 Nil!1642)))

(declare-fun d!24203 () Bool)

(declare-fun c!24768 () Bool)

(assert (=> d!24203 (= c!24768 ((_ is Empty!514) (c!24694 input!576)))))

(assert (=> d!24203 (= (list!677 (c!24694 input!576)) e!56520)))

(assert (= (and d!24203 c!24768) b!101894))

(assert (= (and d!24203 (not c!24768)) b!101895))

(assert (= (and b!101895 c!24769) b!101896))

(assert (= (and b!101895 (not c!24769)) b!101897))

(assert (=> b!101896 m!88052))

(declare-fun m!88178 () Bool)

(assert (=> b!101897 m!88178))

(declare-fun m!88180 () Bool)

(assert (=> b!101897 m!88180))

(assert (=> b!101897 m!88178))

(assert (=> b!101897 m!88180))

(declare-fun m!88182 () Bool)

(assert (=> b!101897 m!88182))

(assert (=> d!24123 d!24203))

(assert (=> b!101491 d!24087))

(declare-fun b!101910 () Bool)

(declare-fun res!49313 () Bool)

(declare-fun e!56527 () Bool)

(assert (=> b!101910 (=> (not res!49313) (not e!56527))))

(assert (=> b!101910 (= res!49313 (isBalanced!135 (left!1254 (c!24694 input!576))))))

(declare-fun b!101912 () Bool)

(declare-fun res!49312 () Bool)

(assert (=> b!101912 (=> (not res!49312) (not e!56527))))

(declare-fun isEmpty!740 (Conc!514) Bool)

(assert (=> b!101912 (= res!49312 (not (isEmpty!740 (left!1254 (c!24694 input!576)))))))

(declare-fun b!101913 () Bool)

(assert (=> b!101913 (= e!56527 (not (isEmpty!740 (right!1584 (c!24694 input!576)))))))

(declare-fun b!101911 () Bool)

(declare-fun res!49314 () Bool)

(assert (=> b!101911 (=> (not res!49314) (not e!56527))))

(assert (=> b!101911 (= res!49314 (isBalanced!135 (right!1584 (c!24694 input!576))))))

(declare-fun d!24205 () Bool)

(declare-fun res!49315 () Bool)

(declare-fun e!56526 () Bool)

(assert (=> d!24205 (=> res!49315 e!56526)))

(assert (=> d!24205 (= res!49315 (not ((_ is Node!514) (c!24694 input!576))))))

(assert (=> d!24205 (= (isBalanced!135 (c!24694 input!576)) e!56526)))

(declare-fun b!101914 () Bool)

(declare-fun res!49316 () Bool)

(assert (=> b!101914 (=> (not res!49316) (not e!56527))))

(assert (=> b!101914 (= res!49316 (<= (- (height!52 (left!1254 (c!24694 input!576))) (height!52 (right!1584 (c!24694 input!576)))) 1))))

(declare-fun b!101915 () Bool)

(assert (=> b!101915 (= e!56526 e!56527)))

(declare-fun res!49311 () Bool)

(assert (=> b!101915 (=> (not res!49311) (not e!56527))))

(assert (=> b!101915 (= res!49311 (<= (- 1) (- (height!52 (left!1254 (c!24694 input!576))) (height!52 (right!1584 (c!24694 input!576))))))))

(assert (= (and d!24205 (not res!49315)) b!101915))

(assert (= (and b!101915 res!49311) b!101914))

(assert (= (and b!101914 res!49316) b!101910))

(assert (= (and b!101910 res!49313) b!101911))

(assert (= (and b!101911 res!49314) b!101912))

(assert (= (and b!101912 res!49312) b!101913))

(declare-fun m!88184 () Bool)

(assert (=> b!101913 m!88184))

(declare-fun m!88186 () Bool)

(assert (=> b!101911 m!88186))

(declare-fun m!88188 () Bool)

(assert (=> b!101912 m!88188))

(declare-fun m!88190 () Bool)

(assert (=> b!101910 m!88190))

(assert (=> b!101915 m!88060))

(assert (=> b!101915 m!88062))

(assert (=> b!101914 m!88060))

(assert (=> b!101914 m!88062))

(assert (=> d!24117 d!24205))

(declare-fun d!24207 () Bool)

(declare-fun lt!28270 () Int)

(assert (=> d!24207 (>= lt!28270 0)))

(declare-fun e!56530 () Int)

(assert (=> d!24207 (= lt!28270 e!56530)))

(declare-fun c!24772 () Bool)

(assert (=> d!24207 (= c!24772 ((_ is Nil!1642) lt!28212))))

(assert (=> d!24207 (= (size!1454 lt!28212) lt!28270)))

(declare-fun b!101920 () Bool)

(assert (=> b!101920 (= e!56530 0)))

(declare-fun b!101921 () Bool)

(assert (=> b!101921 (= e!56530 (+ 1 (size!1454 (t!21297 lt!28212))))))

(assert (= (and d!24207 c!24772) b!101920))

(assert (= (and d!24207 (not c!24772)) b!101921))

(declare-fun m!88192 () Bool)

(assert (=> b!101921 m!88192))

(assert (=> b!101629 d!24207))

(declare-fun d!24209 () Bool)

(declare-fun lt!28271 () Int)

(assert (=> d!24209 (>= lt!28271 0)))

(declare-fun e!56531 () Int)

(assert (=> d!24209 (= lt!28271 e!56531)))

(declare-fun c!24773 () Bool)

(assert (=> d!24209 (= c!24773 ((_ is Nil!1642) lt!28188))))

(assert (=> d!24209 (= (size!1454 lt!28188) lt!28271)))

(declare-fun b!101922 () Bool)

(assert (=> b!101922 (= e!56531 0)))

(declare-fun b!101923 () Bool)

(assert (=> b!101923 (= e!56531 (+ 1 (size!1454 (t!21297 lt!28188))))))

(assert (= (and d!24209 c!24773) b!101922))

(assert (= (and d!24209 (not c!24773)) b!101923))

(declare-fun m!88194 () Bool)

(assert (=> b!101923 m!88194))

(assert (=> b!101629 d!24209))

(declare-fun d!24211 () Bool)

(declare-fun lt!28272 () Int)

(assert (=> d!24211 (>= lt!28272 0)))

(declare-fun e!56532 () Int)

(assert (=> d!24211 (= lt!28272 e!56532)))

(declare-fun c!24774 () Bool)

(assert (=> d!24211 (= c!24774 ((_ is Nil!1642) lt!28187))))

(assert (=> d!24211 (= (size!1454 lt!28187) lt!28272)))

(declare-fun b!101924 () Bool)

(assert (=> b!101924 (= e!56532 0)))

(declare-fun b!101925 () Bool)

(assert (=> b!101925 (= e!56532 (+ 1 (size!1454 (t!21297 lt!28187))))))

(assert (= (and d!24211 c!24774) b!101924))

(assert (= (and d!24211 (not c!24774)) b!101925))

(declare-fun m!88196 () Bool)

(assert (=> b!101925 m!88196))

(assert (=> b!101629 d!24211))

(declare-fun d!24213 () Bool)

(declare-fun lt!28275 () Int)

(declare-fun size!1459 (List!1651) Int)

(assert (=> d!24213 (= lt!28275 (size!1459 (list!673 (_1!1098 lt!28209))))))

(declare-fun size!1460 (Conc!515) Int)

(assert (=> d!24213 (= lt!28275 (size!1460 (c!24696 (_1!1098 lt!28209))))))

(assert (=> d!24213 (= (size!1453 (_1!1098 lt!28209)) lt!28275)))

(declare-fun bs!9946 () Bool)

(assert (= bs!9946 d!24213))

(assert (=> bs!9946 m!87912))

(assert (=> bs!9946 m!87912))

(declare-fun m!88198 () Bool)

(assert (=> bs!9946 m!88198))

(declare-fun m!88200 () Bool)

(assert (=> bs!9946 m!88200))

(assert (=> d!24105 d!24213))

(declare-fun b!101942 () Bool)

(declare-fun e!56548 () Bool)

(declare-fun e!56546 () Bool)

(assert (=> b!101942 (= e!56548 e!56546)))

(declare-fun res!49332 () Bool)

(assert (=> b!101942 (=> res!49332 e!56546)))

(declare-fun lt!28290 () Option!184)

(declare-fun isDefined!59 (Option!184) Bool)

(assert (=> b!101942 (= res!49332 (not (isDefined!59 lt!28290)))))

(declare-fun b!101943 () Bool)

(declare-fun e!56550 () Bool)

(assert (=> b!101943 (= e!56546 e!56550)))

(declare-fun res!49334 () Bool)

(assert (=> b!101943 (=> (not res!49334) (not e!56550))))

(declare-fun get!418 (Option!184) tuple2!1790)

(declare-datatypes ((tuple2!1794 0))(
  ( (tuple2!1795 (_1!1104 Token!466) (_2!1104 List!1648)) )
))
(declare-datatypes ((Option!186 0))(
  ( (None!185) (Some!185 (v!12986 tuple2!1794)) )
))
(declare-fun get!419 (Option!186) tuple2!1794)

(declare-fun maxPrefix!87 (LexerInterface!251 List!1650 List!1648) Option!186)

(assert (=> b!101943 (= res!49334 (= (_1!1102 (get!418 lt!28290)) (_1!1104 (get!419 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!101945 () Bool)

(declare-fun e!56549 () Bool)

(declare-fun maxPrefixZipper!11 (LexerInterface!251 List!1650 List!1648) Option!186)

(assert (=> b!101945 (= e!56549 (= (list!672 (_2!1102 (get!418 lt!28290))) (_2!1104 (get!419 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!101946 () Bool)

(declare-fun res!49329 () Bool)

(assert (=> b!101946 (=> (not res!49329) (not e!56548))))

(declare-fun e!56545 () Bool)

(assert (=> b!101946 (= res!49329 e!56545)))

(declare-fun res!49330 () Bool)

(assert (=> b!101946 (=> res!49330 e!56545)))

(assert (=> b!101946 (= res!49330 (not (isDefined!59 lt!28290)))))

(declare-fun d!24215 () Bool)

(assert (=> d!24215 e!56548))

(declare-fun res!49331 () Bool)

(assert (=> d!24215 (=> (not res!49331) (not e!56548))))

(declare-fun isDefined!60 (Option!186) Bool)

(assert (=> d!24215 (= res!49331 (= (isDefined!59 lt!28290) (isDefined!60 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))))))))

(declare-fun e!56547 () Option!184)

(assert (=> d!24215 (= lt!28290 e!56547)))

(declare-fun c!24777 () Bool)

(assert (=> d!24215 (= c!24777 (and ((_ is Cons!1644) rules!1152) ((_ is Nil!1644) (t!21299 rules!1152))))))

(declare-datatypes ((Unit!1096 0))(
  ( (Unit!1097) )
))
(declare-fun lt!28291 () Unit!1096)

(declare-fun lt!28292 () Unit!1096)

(assert (=> d!24215 (= lt!28291 lt!28292)))

(declare-fun lt!28294 () List!1648)

(declare-fun lt!28296 () List!1648)

(declare-fun isPrefix!45 (List!1648 List!1648) Bool)

(assert (=> d!24215 (isPrefix!45 lt!28294 lt!28296)))

(declare-fun lemmaIsPrefixRefl!45 (List!1648 List!1648) Unit!1096)

(assert (=> d!24215 (= lt!28292 (lemmaIsPrefixRefl!45 lt!28294 lt!28296))))

(assert (=> d!24215 (= lt!28296 (list!672 (BalanceConc!1033 Empty!514)))))

(assert (=> d!24215 (= lt!28294 (list!672 (BalanceConc!1033 Empty!514)))))

(declare-fun rulesValidInductive!76 (LexerInterface!251 List!1650) Bool)

(assert (=> d!24215 (rulesValidInductive!76 thiss!11428 rules!1152)))

(assert (=> d!24215 (= (maxPrefixZipperSequence!50 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)) lt!28290)))

(declare-fun b!101944 () Bool)

(declare-fun lt!28293 () Option!184)

(declare-fun lt!28295 () Option!184)

(assert (=> b!101944 (= e!56547 (ite (and ((_ is None!183) lt!28293) ((_ is None!183) lt!28295)) None!183 (ite ((_ is None!183) lt!28295) lt!28293 (ite ((_ is None!183) lt!28293) lt!28295 (ite (>= (size!1448 (_1!1102 (v!12982 lt!28293))) (size!1448 (_1!1102 (v!12982 lt!28295)))) lt!28293 lt!28295)))))))

(declare-fun call!4420 () Option!184)

(assert (=> b!101944 (= lt!28293 call!4420)))

(assert (=> b!101944 (= lt!28295 (maxPrefixZipperSequence!50 thiss!11428 (t!21299 rules!1152) (BalanceConc!1033 Empty!514)))))

(declare-fun bm!4415 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!12 (LexerInterface!251 Rule!518 BalanceConc!1032) Option!184)

(assert (=> bm!4415 (= call!4420 (maxPrefixOneRuleZipperSequence!12 thiss!11428 (h!7041 rules!1152) (BalanceConc!1033 Empty!514)))))

(declare-fun b!101947 () Bool)

(assert (=> b!101947 (= e!56547 call!4420)))

(declare-fun b!101948 () Bool)

(assert (=> b!101948 (= e!56545 e!56549)))

(declare-fun res!49333 () Bool)

(assert (=> b!101948 (=> (not res!49333) (not e!56549))))

(assert (=> b!101948 (= res!49333 (= (_1!1102 (get!418 lt!28290)) (_1!1104 (get!419 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!101949 () Bool)

(assert (=> b!101949 (= e!56550 (= (list!672 (_2!1102 (get!418 lt!28290))) (_2!1104 (get!419 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))))))))

(assert (= (and d!24215 c!24777) b!101947))

(assert (= (and d!24215 (not c!24777)) b!101944))

(assert (= (or b!101947 b!101944) bm!4415))

(assert (= (and d!24215 res!49331) b!101946))

(assert (= (and b!101946 (not res!49330)) b!101948))

(assert (= (and b!101948 res!49333) b!101945))

(assert (= (and b!101946 res!49329) b!101942))

(assert (= (and b!101942 (not res!49332)) b!101943))

(assert (= (and b!101943 res!49334) b!101949))

(declare-fun m!88202 () Bool)

(assert (=> b!101945 m!88202))

(declare-fun m!88204 () Bool)

(assert (=> b!101945 m!88204))

(declare-fun m!88206 () Bool)

(assert (=> b!101945 m!88206))

(assert (=> b!101945 m!87824))

(assert (=> b!101945 m!88202))

(declare-fun m!88208 () Bool)

(assert (=> b!101945 m!88208))

(assert (=> b!101945 m!87824))

(declare-fun m!88210 () Bool)

(assert (=> b!101944 m!88210))

(declare-fun m!88212 () Bool)

(assert (=> d!24215 m!88212))

(declare-fun m!88214 () Bool)

(assert (=> d!24215 m!88214))

(assert (=> d!24215 m!88202))

(declare-fun m!88216 () Bool)

(assert (=> d!24215 m!88216))

(declare-fun m!88218 () Bool)

(assert (=> d!24215 m!88218))

(assert (=> d!24215 m!87824))

(declare-fun m!88220 () Bool)

(assert (=> d!24215 m!88220))

(assert (=> d!24215 m!87824))

(assert (=> d!24215 m!88202))

(assert (=> b!101946 m!88220))

(assert (=> b!101948 m!88208))

(assert (=> b!101948 m!87824))

(assert (=> b!101948 m!87824))

(assert (=> b!101948 m!88202))

(assert (=> b!101948 m!88202))

(assert (=> b!101948 m!88204))

(assert (=> b!101943 m!88208))

(assert (=> b!101943 m!87824))

(assert (=> b!101943 m!87824))

(declare-fun m!88222 () Bool)

(assert (=> b!101943 m!88222))

(assert (=> b!101943 m!88222))

(declare-fun m!88224 () Bool)

(assert (=> b!101943 m!88224))

(declare-fun m!88226 () Bool)

(assert (=> bm!4415 m!88226))

(assert (=> b!101942 m!88220))

(assert (=> b!101949 m!87824))

(assert (=> b!101949 m!88222))

(assert (=> b!101949 m!88222))

(assert (=> b!101949 m!88224))

(assert (=> b!101949 m!88206))

(assert (=> b!101949 m!88208))

(assert (=> b!101949 m!87824))

(assert (=> d!24105 d!24215))

(declare-fun d!24217 () Bool)

(declare-fun e!56552 () Bool)

(assert (=> d!24217 e!56552))

(declare-fun res!49335 () Bool)

(assert (=> d!24217 (=> (not res!49335) (not e!56552))))

(declare-fun lt!28297 () List!1648)

(assert (=> d!24217 (= res!49335 (= (content!132 lt!28297) ((_ map or) (content!132 (t!21297 lt!28188)) (content!132 lt!28187))))))

(declare-fun e!56551 () List!1648)

(assert (=> d!24217 (= lt!28297 e!56551)))

(declare-fun c!24778 () Bool)

(assert (=> d!24217 (= c!24778 ((_ is Nil!1642) (t!21297 lt!28188)))))

(assert (=> d!24217 (= (++!258 (t!21297 lt!28188) lt!28187) lt!28297)))

(declare-fun b!101953 () Bool)

(assert (=> b!101953 (= e!56552 (or (not (= lt!28187 Nil!1642)) (= lt!28297 (t!21297 lt!28188))))))

(declare-fun b!101950 () Bool)

(assert (=> b!101950 (= e!56551 lt!28187)))

(declare-fun b!101951 () Bool)

(assert (=> b!101951 (= e!56551 (Cons!1642 (h!7039 (t!21297 lt!28188)) (++!258 (t!21297 (t!21297 lt!28188)) lt!28187)))))

(declare-fun b!101952 () Bool)

(declare-fun res!49336 () Bool)

(assert (=> b!101952 (=> (not res!49336) (not e!56552))))

(assert (=> b!101952 (= res!49336 (= (size!1454 lt!28297) (+ (size!1454 (t!21297 lt!28188)) (size!1454 lt!28187))))))

(assert (= (and d!24217 c!24778) b!101950))

(assert (= (and d!24217 (not c!24778)) b!101951))

(assert (= (and d!24217 res!49335) b!101952))

(assert (= (and b!101952 res!49336) b!101953))

(declare-fun m!88228 () Bool)

(assert (=> d!24217 m!88228))

(declare-fun m!88230 () Bool)

(assert (=> d!24217 m!88230))

(assert (=> d!24217 m!87934))

(declare-fun m!88232 () Bool)

(assert (=> b!101951 m!88232))

(declare-fun m!88234 () Bool)

(assert (=> b!101952 m!88234))

(assert (=> b!101952 m!88194))

(assert (=> b!101952 m!87942))

(assert (=> b!101628 d!24217))

(declare-fun d!24219 () Bool)

(declare-fun res!49341 () Bool)

(declare-fun e!56557 () Bool)

(assert (=> d!24219 (=> res!49341 e!56557)))

(assert (=> d!24219 (= res!49341 ((_ is Nil!1644) rules!1152))))

(assert (=> d!24219 (= (noDuplicateTag!99 thiss!11428 rules!1152 Nil!1647) e!56557)))

(declare-fun b!101958 () Bool)

(declare-fun e!56558 () Bool)

(assert (=> b!101958 (= e!56557 e!56558)))

(declare-fun res!49342 () Bool)

(assert (=> b!101958 (=> (not res!49342) (not e!56558))))

(declare-fun contains!267 (List!1653 String!2137) Bool)

(assert (=> b!101958 (= res!49342 (not (contains!267 Nil!1647 (tag!537 (h!7041 rules!1152)))))))

(declare-fun b!101959 () Bool)

(assert (=> b!101959 (= e!56558 (noDuplicateTag!99 thiss!11428 (t!21299 rules!1152) (Cons!1647 (tag!537 (h!7041 rules!1152)) Nil!1647)))))

(assert (= (and d!24219 (not res!49341)) b!101958))

(assert (= (and b!101958 res!49342) b!101959))

(declare-fun m!88236 () Bool)

(assert (=> b!101958 m!88236))

(declare-fun m!88238 () Bool)

(assert (=> b!101959 m!88238))

(assert (=> b!101528 d!24219))

(declare-fun d!24221 () Bool)

(assert (=> d!24221 true))

(declare-fun lt!28300 () Bool)

(assert (=> d!24221 (= lt!28300 (rulesValidInductive!76 thiss!11428 rules!1152))))

(declare-fun lambda!1864 () Int)

(declare-fun forall!220 (List!1650 Int) Bool)

(assert (=> d!24221 (= lt!28300 (forall!220 rules!1152 lambda!1864))))

(assert (=> d!24221 (= (rulesValid!99 thiss!11428 rules!1152) lt!28300)))

(declare-fun bs!9947 () Bool)

(assert (= bs!9947 d!24221))

(assert (=> bs!9947 m!88212))

(declare-fun m!88240 () Bool)

(assert (=> bs!9947 m!88240))

(assert (=> d!24093 d!24221))

(declare-fun b!101964 () Bool)

(declare-fun e!56560 () List!1648)

(assert (=> b!101964 (= e!56560 (list!680 (xs!3101 (c!24694 (BalanceConc!1033 Empty!514)))))))

(declare-fun b!101965 () Bool)

(assert (=> b!101965 (= e!56560 (++!258 (list!677 (left!1254 (c!24694 (BalanceConc!1033 Empty!514)))) (list!677 (right!1584 (c!24694 (BalanceConc!1033 Empty!514))))))))

(declare-fun b!101963 () Bool)

(declare-fun e!56559 () List!1648)

(assert (=> b!101963 (= e!56559 e!56560)))

(declare-fun c!24780 () Bool)

(assert (=> b!101963 (= c!24780 ((_ is Leaf!829) (c!24694 (BalanceConc!1033 Empty!514))))))

(declare-fun b!101962 () Bool)

(assert (=> b!101962 (= e!56559 Nil!1642)))

(declare-fun d!24223 () Bool)

(declare-fun c!24779 () Bool)

(assert (=> d!24223 (= c!24779 ((_ is Empty!514) (c!24694 (BalanceConc!1033 Empty!514))))))

(assert (=> d!24223 (= (list!677 (c!24694 (BalanceConc!1033 Empty!514))) e!56559)))

(assert (= (and d!24223 c!24779) b!101962))

(assert (= (and d!24223 (not c!24779)) b!101963))

(assert (= (and b!101963 c!24780) b!101964))

(assert (= (and b!101963 (not c!24780)) b!101965))

(declare-fun m!88242 () Bool)

(assert (=> b!101964 m!88242))

(declare-fun m!88244 () Bool)

(assert (=> b!101965 m!88244))

(declare-fun m!88246 () Bool)

(assert (=> b!101965 m!88246))

(assert (=> b!101965 m!88244))

(assert (=> b!101965 m!88246))

(declare-fun m!88248 () Bool)

(assert (=> b!101965 m!88248))

(assert (=> d!24125 d!24223))

(declare-fun d!24225 () Bool)

(assert (=> d!24225 (= (list!673 (_1!1098 lt!28209)) (list!676 (c!24696 (_1!1098 lt!28209))))))

(declare-fun bs!9948 () Bool)

(assert (= bs!9948 d!24225))

(declare-fun m!88250 () Bool)

(assert (=> bs!9948 m!88250))

(assert (=> b!101614 d!24225))

(declare-fun d!24227 () Bool)

(declare-fun e!56567 () Bool)

(assert (=> d!24227 e!56567))

(declare-fun c!24785 () Bool)

(declare-fun lt!28309 () tuple2!1788)

(assert (=> d!24227 (= c!24785 (> (size!1459 (_1!1101 lt!28309)) 0))))

(declare-fun e!56569 () tuple2!1788)

(assert (=> d!24227 (= lt!28309 e!56569)))

(declare-fun c!24786 () Bool)

(declare-fun lt!28307 () Option!186)

(assert (=> d!24227 (= c!24786 ((_ is Some!185) lt!28307))))

(assert (=> d!24227 (= lt!28307 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))))))

(assert (=> d!24227 (= (lexList!75 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))) lt!28309)))

(declare-fun b!101976 () Bool)

(assert (=> b!101976 (= e!56569 (tuple2!1789 Nil!1645 (list!672 (BalanceConc!1033 Empty!514))))))

(declare-fun b!101977 () Bool)

(declare-fun lt!28308 () tuple2!1788)

(assert (=> b!101977 (= e!56569 (tuple2!1789 (Cons!1645 (_1!1104 (v!12986 lt!28307)) (_1!1101 lt!28308)) (_2!1101 lt!28308)))))

(assert (=> b!101977 (= lt!28308 (lexList!75 thiss!11428 rules!1152 (_2!1104 (v!12986 lt!28307))))))

(declare-fun b!101978 () Bool)

(assert (=> b!101978 (= e!56567 (= (_2!1101 lt!28309) (list!672 (BalanceConc!1033 Empty!514))))))

(declare-fun b!101979 () Bool)

(declare-fun e!56568 () Bool)

(declare-fun isEmpty!741 (List!1651) Bool)

(assert (=> b!101979 (= e!56568 (not (isEmpty!741 (_1!1101 lt!28309))))))

(declare-fun b!101980 () Bool)

(assert (=> b!101980 (= e!56567 e!56568)))

(declare-fun res!49345 () Bool)

(assert (=> b!101980 (= res!49345 (< (size!1454 (_2!1101 lt!28309)) (size!1454 (list!672 (BalanceConc!1033 Empty!514)))))))

(assert (=> b!101980 (=> (not res!49345) (not e!56568))))

(assert (= (and d!24227 c!24786) b!101977))

(assert (= (and d!24227 (not c!24786)) b!101976))

(assert (= (and d!24227 c!24785) b!101980))

(assert (= (and d!24227 (not c!24785)) b!101978))

(assert (= (and b!101980 res!49345) b!101979))

(declare-fun m!88252 () Bool)

(assert (=> d!24227 m!88252))

(assert (=> d!24227 m!87824))

(assert (=> d!24227 m!88222))

(declare-fun m!88254 () Bool)

(assert (=> b!101977 m!88254))

(declare-fun m!88256 () Bool)

(assert (=> b!101979 m!88256))

(declare-fun m!88258 () Bool)

(assert (=> b!101980 m!88258))

(assert (=> b!101980 m!87824))

(declare-fun m!88260 () Bool)

(assert (=> b!101980 m!88260))

(assert (=> b!101614 d!24227))

(assert (=> b!101614 d!24125))

(declare-fun d!24229 () Bool)

(declare-fun lt!28312 () Int)

(assert (=> d!24229 (= lt!28312 (size!1454 (list!672 (_2!1098 lt!28209))))))

(assert (=> d!24229 (= lt!28312 (size!1458 (c!24694 (_2!1098 lt!28209))))))

(assert (=> d!24229 (= (size!1452 (_2!1098 lt!28209)) lt!28312)))

(declare-fun bs!9949 () Bool)

(assert (= bs!9949 d!24229))

(assert (=> bs!9949 m!87916))

(assert (=> bs!9949 m!87916))

(declare-fun m!88262 () Bool)

(assert (=> bs!9949 m!88262))

(declare-fun m!88264 () Bool)

(assert (=> bs!9949 m!88264))

(assert (=> b!101612 d!24229))

(declare-fun d!24231 () Bool)

(declare-fun lt!28313 () Int)

(assert (=> d!24231 (= lt!28313 (size!1454 (list!672 (BalanceConc!1033 Empty!514))))))

(assert (=> d!24231 (= lt!28313 (size!1458 (c!24694 (BalanceConc!1033 Empty!514))))))

(assert (=> d!24231 (= (size!1452 (BalanceConc!1033 Empty!514)) lt!28313)))

(declare-fun bs!9950 () Bool)

(assert (= bs!9950 d!24231))

(assert (=> bs!9950 m!87824))

(assert (=> bs!9950 m!87824))

(assert (=> bs!9950 m!88260))

(declare-fun m!88266 () Bool)

(assert (=> bs!9950 m!88266))

(assert (=> b!101612 d!24231))

(declare-fun d!24233 () Bool)

(assert (=> d!24233 true))

(declare-fun order!777 () Int)

(declare-fun order!779 () Int)

(declare-fun lambda!1867 () Int)

(declare-fun dynLambda!505 (Int Int) Int)

(declare-fun dynLambda!506 (Int Int) Int)

(assert (=> d!24233 (< (dynLambda!505 order!777 (toChars!789 (transformation!359 (h!7041 rules!1152)))) (dynLambda!506 order!779 lambda!1867))))

(assert (=> d!24233 true))

(assert (=> d!24233 (< (dynLambda!503 order!773 (toValue!930 (transformation!359 (h!7041 rules!1152)))) (dynLambda!506 order!779 lambda!1867))))

(declare-fun Forall!70 (Int) Bool)

(assert (=> d!24233 (= (semiInverseModEq!91 (toChars!789 (transformation!359 (h!7041 rules!1152))) (toValue!930 (transformation!359 (h!7041 rules!1152)))) (Forall!70 lambda!1867))))

(declare-fun bs!9951 () Bool)

(assert (= bs!9951 d!24233))

(declare-fun m!88268 () Bool)

(assert (=> bs!9951 m!88268))

(assert (=> d!24081 d!24233))

(declare-fun d!24235 () Bool)

(assert (=> d!24235 (= (list!672 (_2!1098 lt!28209)) (list!677 (c!24694 (_2!1098 lt!28209))))))

(declare-fun bs!9952 () Bool)

(assert (= bs!9952 d!24235))

(declare-fun m!88270 () Bool)

(assert (=> bs!9952 m!88270))

(assert (=> b!101613 d!24235))

(assert (=> b!101613 d!24125))

(declare-fun d!24237 () Bool)

(declare-fun c!24791 () Bool)

(assert (=> d!24237 (= c!24791 ((_ is Empty!515) (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))

(declare-fun e!56574 () List!1651)

(assert (=> d!24237 (= (list!676 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))) e!56574)))

(declare-fun b!101993 () Bool)

(assert (=> b!101993 (= e!56574 Nil!1645)))

(declare-fun b!101995 () Bool)

(declare-fun e!56575 () List!1651)

(declare-fun list!681 (IArray!1031) List!1651)

(assert (=> b!101995 (= e!56575 (list!681 (xs!3102 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!101994 () Bool)

(assert (=> b!101994 (= e!56574 e!56575)))

(declare-fun c!24792 () Bool)

(assert (=> b!101994 (= c!24792 ((_ is Leaf!830) (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))

(declare-fun b!101996 () Bool)

(declare-fun ++!260 (List!1651 List!1651) List!1651)

(assert (=> b!101996 (= e!56575 (++!260 (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))) (list!676 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))))

(assert (= (and d!24237 c!24791) b!101993))

(assert (= (and d!24237 (not c!24791)) b!101994))

(assert (= (and b!101994 c!24792) b!101995))

(assert (= (and b!101994 (not c!24792)) b!101996))

(declare-fun m!88272 () Bool)

(assert (=> b!101995 m!88272))

(declare-fun m!88274 () Bool)

(assert (=> b!101996 m!88274))

(declare-fun m!88276 () Bool)

(assert (=> b!101996 m!88276))

(assert (=> b!101996 m!88274))

(assert (=> b!101996 m!88276))

(declare-fun m!88278 () Bool)

(assert (=> b!101996 m!88278))

(assert (=> d!24103 d!24237))

(assert (=> b!101616 d!24235))

(assert (=> b!101616 d!24227))

(assert (=> b!101616 d!24125))

(declare-fun d!24239 () Bool)

(declare-fun lt!28316 () Bool)

(assert (=> d!24239 (= lt!28316 (isEmpty!741 (list!673 (_1!1098 lt!28209))))))

(declare-fun isEmpty!742 (Conc!515) Bool)

(assert (=> d!24239 (= lt!28316 (isEmpty!742 (c!24696 (_1!1098 lt!28209))))))

(assert (=> d!24239 (= (isEmpty!736 (_1!1098 lt!28209)) lt!28316)))

(declare-fun bs!9953 () Bool)

(assert (= bs!9953 d!24239))

(assert (=> bs!9953 m!87912))

(assert (=> bs!9953 m!87912))

(declare-fun m!88280 () Bool)

(assert (=> bs!9953 m!88280))

(declare-fun m!88282 () Bool)

(assert (=> bs!9953 m!88282))

(assert (=> b!101617 d!24239))

(declare-fun d!24241 () Bool)

(declare-fun c!24793 () Bool)

(assert (=> d!24241 (= c!24793 ((_ is Empty!515) (c!24696 (BalanceConc!1035 Empty!515))))))

(declare-fun e!56576 () List!1651)

(assert (=> d!24241 (= (list!676 (c!24696 (BalanceConc!1035 Empty!515))) e!56576)))

(declare-fun b!101997 () Bool)

(assert (=> b!101997 (= e!56576 Nil!1645)))

(declare-fun b!101999 () Bool)

(declare-fun e!56577 () List!1651)

(assert (=> b!101999 (= e!56577 (list!681 (xs!3102 (c!24696 (BalanceConc!1035 Empty!515)))))))

(declare-fun b!101998 () Bool)

(assert (=> b!101998 (= e!56576 e!56577)))

(declare-fun c!24794 () Bool)

(assert (=> b!101998 (= c!24794 ((_ is Leaf!830) (c!24696 (BalanceConc!1035 Empty!515))))))

(declare-fun b!102000 () Bool)

(assert (=> b!102000 (= e!56577 (++!260 (list!676 (left!1255 (c!24696 (BalanceConc!1035 Empty!515)))) (list!676 (right!1585 (c!24696 (BalanceConc!1035 Empty!515))))))))

(assert (= (and d!24241 c!24793) b!101997))

(assert (= (and d!24241 (not c!24793)) b!101998))

(assert (= (and b!101998 c!24794) b!101999))

(assert (= (and b!101998 (not c!24794)) b!102000))

(declare-fun m!88284 () Bool)

(assert (=> b!101999 m!88284))

(declare-fun m!88286 () Bool)

(assert (=> b!102000 m!88286))

(declare-fun m!88288 () Bool)

(assert (=> b!102000 m!88288))

(assert (=> b!102000 m!88286))

(assert (=> b!102000 m!88288))

(declare-fun m!88290 () Bool)

(assert (=> b!102000 m!88290))

(assert (=> d!24115 d!24241))

(declare-fun d!24243 () Bool)

(declare-fun c!24795 () Bool)

(assert (=> d!24243 (= c!24795 ((_ is Node!514) (left!1254 (c!24694 input!576))))))

(declare-fun e!56578 () Bool)

(assert (=> d!24243 (= (inv!1991 (left!1254 (c!24694 input!576))) e!56578)))

(declare-fun b!102001 () Bool)

(assert (=> b!102001 (= e!56578 (inv!1997 (left!1254 (c!24694 input!576))))))

(declare-fun b!102002 () Bool)

(declare-fun e!56579 () Bool)

(assert (=> b!102002 (= e!56578 e!56579)))

(declare-fun res!49346 () Bool)

(assert (=> b!102002 (= res!49346 (not ((_ is Leaf!829) (left!1254 (c!24694 input!576)))))))

(assert (=> b!102002 (=> res!49346 e!56579)))

(declare-fun b!102003 () Bool)

(assert (=> b!102003 (= e!56579 (inv!1998 (left!1254 (c!24694 input!576))))))

(assert (= (and d!24243 c!24795) b!102001))

(assert (= (and d!24243 (not c!24795)) b!102002))

(assert (= (and b!102002 (not res!49346)) b!102003))

(declare-fun m!88292 () Bool)

(assert (=> b!102001 m!88292))

(declare-fun m!88294 () Bool)

(assert (=> b!102003 m!88294))

(assert (=> b!101653 d!24243))

(declare-fun d!24245 () Bool)

(declare-fun c!24796 () Bool)

(assert (=> d!24245 (= c!24796 ((_ is Node!514) (right!1584 (c!24694 input!576))))))

(declare-fun e!56580 () Bool)

(assert (=> d!24245 (= (inv!1991 (right!1584 (c!24694 input!576))) e!56580)))

(declare-fun b!102004 () Bool)

(assert (=> b!102004 (= e!56580 (inv!1997 (right!1584 (c!24694 input!576))))))

(declare-fun b!102005 () Bool)

(declare-fun e!56581 () Bool)

(assert (=> b!102005 (= e!56580 e!56581)))

(declare-fun res!49347 () Bool)

(assert (=> b!102005 (= res!49347 (not ((_ is Leaf!829) (right!1584 (c!24694 input!576)))))))

(assert (=> b!102005 (=> res!49347 e!56581)))

(declare-fun b!102006 () Bool)

(assert (=> b!102006 (= e!56581 (inv!1998 (right!1584 (c!24694 input!576))))))

(assert (= (and d!24245 c!24796) b!102004))

(assert (= (and d!24245 (not c!24796)) b!102005))

(assert (= (and b!102005 (not res!49347)) b!102006))

(declare-fun m!88296 () Bool)

(assert (=> b!102004 m!88296))

(declare-fun m!88298 () Bool)

(assert (=> b!102006 m!88298))

(assert (=> b!101653 d!24245))

(declare-fun d!24247 () Bool)

(declare-fun c!24799 () Bool)

(assert (=> d!24247 (= c!24799 ((_ is Nil!1642) lt!28212))))

(declare-fun e!56584 () (InoxSet C!1776))

(assert (=> d!24247 (= (content!132 lt!28212) e!56584)))

(declare-fun b!102011 () Bool)

(assert (=> b!102011 (= e!56584 ((as const (Array C!1776 Bool)) false))))

(declare-fun b!102012 () Bool)

(assert (=> b!102012 (= e!56584 ((_ map or) (store ((as const (Array C!1776 Bool)) false) (h!7039 lt!28212) true) (content!132 (t!21297 lt!28212))))))

(assert (= (and d!24247 c!24799) b!102011))

(assert (= (and d!24247 (not c!24799)) b!102012))

(declare-fun m!88300 () Bool)

(assert (=> b!102012 m!88300))

(declare-fun m!88302 () Bool)

(assert (=> b!102012 m!88302))

(assert (=> d!24121 d!24247))

(declare-fun d!24249 () Bool)

(declare-fun c!24800 () Bool)

(assert (=> d!24249 (= c!24800 ((_ is Nil!1642) lt!28188))))

(declare-fun e!56585 () (InoxSet C!1776))

(assert (=> d!24249 (= (content!132 lt!28188) e!56585)))

(declare-fun b!102013 () Bool)

(assert (=> b!102013 (= e!56585 ((as const (Array C!1776 Bool)) false))))

(declare-fun b!102014 () Bool)

(assert (=> b!102014 (= e!56585 ((_ map or) (store ((as const (Array C!1776 Bool)) false) (h!7039 lt!28188) true) (content!132 (t!21297 lt!28188))))))

(assert (= (and d!24249 c!24800) b!102013))

(assert (= (and d!24249 (not c!24800)) b!102014))

(declare-fun m!88304 () Bool)

(assert (=> b!102014 m!88304))

(assert (=> b!102014 m!88230))

(assert (=> d!24121 d!24249))

(declare-fun d!24251 () Bool)

(declare-fun c!24801 () Bool)

(assert (=> d!24251 (= c!24801 ((_ is Nil!1642) lt!28187))))

(declare-fun e!56586 () (InoxSet C!1776))

(assert (=> d!24251 (= (content!132 lt!28187) e!56586)))

(declare-fun b!102015 () Bool)

(assert (=> b!102015 (= e!56586 ((as const (Array C!1776 Bool)) false))))

(declare-fun b!102016 () Bool)

(assert (=> b!102016 (= e!56586 ((_ map or) (store ((as const (Array C!1776 Bool)) false) (h!7039 lt!28187) true) (content!132 (t!21297 lt!28187))))))

(assert (= (and d!24251 c!24801) b!102015))

(assert (= (and d!24251 (not c!24801)) b!102016))

(declare-fun m!88306 () Bool)

(assert (=> b!102016 m!88306))

(declare-fun m!88308 () Bool)

(assert (=> b!102016 m!88308))

(assert (=> d!24121 d!24251))

(declare-fun d!24253 () Bool)

(assert (=> d!24253 (= (inv!1999 (xs!3101 (c!24694 input!576))) (<= (size!1454 (innerList!572 (xs!3101 (c!24694 input!576)))) 2147483647))))

(declare-fun bs!9954 () Bool)

(assert (= bs!9954 d!24253))

(declare-fun m!88310 () Bool)

(assert (=> bs!9954 m!88310))

(assert (=> b!101654 d!24253))

(declare-fun d!24255 () Bool)

(declare-fun e!56589 () Bool)

(assert (=> d!24255 e!56589))

(declare-fun res!49350 () Bool)

(assert (=> d!24255 (=> (not res!49350) (not e!56589))))

(declare-fun isBalanced!137 (Conc!515) Bool)

(declare-fun prepend!131 (Conc!515 Token!466) Conc!515)

(assert (=> d!24255 (= res!49350 (isBalanced!137 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208)))))))

(declare-fun lt!28319 () BalanceConc!1034)

(assert (=> d!24255 (= lt!28319 (BalanceConc!1035 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208)))))))

(assert (=> d!24255 (= (prepend!129 (_1!1098 lt!28207) (_1!1102 (v!12982 lt!28208))) lt!28319)))

(declare-fun b!102019 () Bool)

(assert (=> b!102019 (= e!56589 (= (list!673 lt!28319) (Cons!1645 (_1!1102 (v!12982 lt!28208)) (list!673 (_1!1098 lt!28207)))))))

(assert (= (and d!24255 res!49350) b!102019))

(declare-fun m!88312 () Bool)

(assert (=> d!24255 m!88312))

(assert (=> d!24255 m!88312))

(declare-fun m!88314 () Bool)

(assert (=> d!24255 m!88314))

(declare-fun m!88316 () Bool)

(assert (=> b!102019 m!88316))

(declare-fun m!88318 () Bool)

(assert (=> b!102019 m!88318))

(assert (=> b!101618 d!24255))

(declare-fun b!102020 () Bool)

(declare-fun e!56591 () Bool)

(declare-fun e!56590 () Bool)

(assert (=> b!102020 (= e!56591 e!56590)))

(declare-fun res!49351 () Bool)

(declare-fun lt!28322 () tuple2!1782)

(assert (=> b!102020 (= res!49351 (< (size!1452 (_2!1098 lt!28322)) (size!1452 (_2!1102 (v!12982 lt!28208)))))))

(assert (=> b!102020 (=> (not res!49351) (not e!56590))))

(declare-fun b!102021 () Bool)

(assert (=> b!102021 (= e!56591 (= (list!672 (_2!1098 lt!28322)) (list!672 (_2!1102 (v!12982 lt!28208)))))))

(declare-fun b!102022 () Bool)

(declare-fun res!49353 () Bool)

(declare-fun e!56593 () Bool)

(assert (=> b!102022 (=> (not res!49353) (not e!56593))))

(assert (=> b!102022 (= res!49353 (= (list!673 (_1!1098 lt!28322)) (_1!1101 (lexList!75 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208)))))))))

(declare-fun b!102023 () Bool)

(declare-fun e!56592 () tuple2!1782)

(assert (=> b!102023 (= e!56592 (tuple2!1783 (BalanceConc!1035 Empty!515) (_2!1102 (v!12982 lt!28208))))))

(declare-fun b!102024 () Bool)

(assert (=> b!102024 (= e!56593 (= (list!672 (_2!1098 lt!28322)) (_2!1101 (lexList!75 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208)))))))))

(declare-fun b!102025 () Bool)

(assert (=> b!102025 (= e!56590 (not (isEmpty!736 (_1!1098 lt!28322))))))

(declare-fun d!24257 () Bool)

(assert (=> d!24257 e!56593))

(declare-fun res!49352 () Bool)

(assert (=> d!24257 (=> (not res!49352) (not e!56593))))

(assert (=> d!24257 (= res!49352 e!56591)))

(declare-fun c!24803 () Bool)

(assert (=> d!24257 (= c!24803 (> (size!1453 (_1!1098 lt!28322)) 0))))

(assert (=> d!24257 (= lt!28322 e!56592)))

(declare-fun c!24804 () Bool)

(declare-fun lt!28321 () Option!184)

(assert (=> d!24257 (= c!24804 ((_ is Some!183) lt!28321))))

(assert (=> d!24257 (= lt!28321 (maxPrefixZipperSequence!50 thiss!11428 rules!1152 (_2!1102 (v!12982 lt!28208))))))

(assert (=> d!24257 (= (lexRec!52 thiss!11428 rules!1152 (_2!1102 (v!12982 lt!28208))) lt!28322)))

(declare-fun b!102026 () Bool)

(declare-fun lt!28320 () tuple2!1782)

(assert (=> b!102026 (= e!56592 (tuple2!1783 (prepend!129 (_1!1098 lt!28320) (_1!1102 (v!12982 lt!28321))) (_2!1098 lt!28320)))))

(assert (=> b!102026 (= lt!28320 (lexRec!52 thiss!11428 rules!1152 (_2!1102 (v!12982 lt!28321))))))

(assert (= (and d!24257 c!24804) b!102026))

(assert (= (and d!24257 (not c!24804)) b!102023))

(assert (= (and d!24257 c!24803) b!102020))

(assert (= (and d!24257 (not c!24803)) b!102021))

(assert (= (and b!102020 res!49351) b!102025))

(assert (= (and d!24257 res!49352) b!102022))

(assert (= (and b!102022 res!49353) b!102024))

(declare-fun m!88320 () Bool)

(assert (=> d!24257 m!88320))

(declare-fun m!88322 () Bool)

(assert (=> d!24257 m!88322))

(declare-fun m!88324 () Bool)

(assert (=> b!102025 m!88324))

(declare-fun m!88326 () Bool)

(assert (=> b!102022 m!88326))

(declare-fun m!88328 () Bool)

(assert (=> b!102022 m!88328))

(assert (=> b!102022 m!88328))

(declare-fun m!88330 () Bool)

(assert (=> b!102022 m!88330))

(declare-fun m!88332 () Bool)

(assert (=> b!102024 m!88332))

(assert (=> b!102024 m!88328))

(assert (=> b!102024 m!88328))

(assert (=> b!102024 m!88330))

(declare-fun m!88334 () Bool)

(assert (=> b!102020 m!88334))

(declare-fun m!88336 () Bool)

(assert (=> b!102020 m!88336))

(declare-fun m!88338 () Bool)

(assert (=> b!102026 m!88338))

(declare-fun m!88340 () Bool)

(assert (=> b!102026 m!88340))

(assert (=> b!102021 m!88332))

(assert (=> b!102021 m!88328))

(assert (=> b!101618 d!24257))

(declare-fun b!102029 () Bool)

(declare-fun b_free!3065 () Bool)

(declare-fun b_next!3065 () Bool)

(assert (=> b!102029 (= b_free!3065 (not b_next!3065))))

(declare-fun tp!57313 () Bool)

(declare-fun b_and!4583 () Bool)

(assert (=> b!102029 (= tp!57313 b_and!4583)))

(declare-fun b_free!3067 () Bool)

(declare-fun b_next!3067 () Bool)

(assert (=> b!102029 (= b_free!3067 (not b_next!3067))))

(declare-fun tp!57315 () Bool)

(declare-fun b_and!4585 () Bool)

(assert (=> b!102029 (= tp!57315 b_and!4585)))

(declare-fun e!56596 () Bool)

(assert (=> b!102029 (= e!56596 (and tp!57313 tp!57315))))

(declare-fun e!56594 () Bool)

(declare-fun b!102028 () Bool)

(declare-fun tp!57314 () Bool)

(assert (=> b!102028 (= e!56594 (and tp!57314 (inv!1987 (tag!537 (h!7041 (t!21299 (t!21299 rules!1152))))) (inv!1993 (transformation!359 (h!7041 (t!21299 (t!21299 rules!1152))))) e!56596))))

(declare-fun b!102027 () Bool)

(declare-fun e!56595 () Bool)

(declare-fun tp!57312 () Bool)

(assert (=> b!102027 (= e!56595 (and e!56594 tp!57312))))

(assert (=> b!101664 (= tp!57265 e!56595)))

(assert (= b!102028 b!102029))

(assert (= b!102027 b!102028))

(assert (= (and b!101664 ((_ is Cons!1644) (t!21299 (t!21299 rules!1152)))) b!102027))

(declare-fun m!88342 () Bool)

(assert (=> b!102028 m!88342))

(declare-fun m!88344 () Bool)

(assert (=> b!102028 m!88344))

(declare-fun b!102034 () Bool)

(declare-fun e!56600 () Bool)

(declare-fun tp!57318 () Bool)

(assert (=> b!102034 (= e!56600 (and tp_is_empty!773 tp!57318))))

(assert (=> b!101655 (= tp!57254 e!56600)))

(assert (= (and b!101655 ((_ is Cons!1642) (innerList!572 (xs!3101 (c!24694 input!576))))) b!102034))

(declare-fun b!102035 () Bool)

(declare-fun e!56601 () Bool)

(assert (=> b!102035 (= e!56601 tp_is_empty!773)))

(declare-fun b!102038 () Bool)

(declare-fun tp!57320 () Bool)

(declare-fun tp!57322 () Bool)

(assert (=> b!102038 (= e!56601 (and tp!57320 tp!57322))))

(declare-fun b!102036 () Bool)

(declare-fun tp!57323 () Bool)

(declare-fun tp!57319 () Bool)

(assert (=> b!102036 (= e!56601 (and tp!57323 tp!57319))))

(assert (=> b!101642 (= tp!57247 e!56601)))

(declare-fun b!102037 () Bool)

(declare-fun tp!57321 () Bool)

(assert (=> b!102037 (= e!56601 tp!57321)))

(assert (= (and b!101642 ((_ is ElementMatch!427) (regOne!1366 (regex!359 (h!7041 rules!1152))))) b!102035))

(assert (= (and b!101642 ((_ is Concat!777) (regOne!1366 (regex!359 (h!7041 rules!1152))))) b!102036))

(assert (= (and b!101642 ((_ is Star!427) (regOne!1366 (regex!359 (h!7041 rules!1152))))) b!102037))

(assert (= (and b!101642 ((_ is Union!427) (regOne!1366 (regex!359 (h!7041 rules!1152))))) b!102038))

(declare-fun b!102039 () Bool)

(declare-fun e!56602 () Bool)

(assert (=> b!102039 (= e!56602 tp_is_empty!773)))

(declare-fun b!102042 () Bool)

(declare-fun tp!57325 () Bool)

(declare-fun tp!57327 () Bool)

(assert (=> b!102042 (= e!56602 (and tp!57325 tp!57327))))

(declare-fun b!102040 () Bool)

(declare-fun tp!57328 () Bool)

(declare-fun tp!57324 () Bool)

(assert (=> b!102040 (= e!56602 (and tp!57328 tp!57324))))

(assert (=> b!101642 (= tp!57243 e!56602)))

(declare-fun b!102041 () Bool)

(declare-fun tp!57326 () Bool)

(assert (=> b!102041 (= e!56602 tp!57326)))

(assert (= (and b!101642 ((_ is ElementMatch!427) (regTwo!1366 (regex!359 (h!7041 rules!1152))))) b!102039))

(assert (= (and b!101642 ((_ is Concat!777) (regTwo!1366 (regex!359 (h!7041 rules!1152))))) b!102040))

(assert (= (and b!101642 ((_ is Star!427) (regTwo!1366 (regex!359 (h!7041 rules!1152))))) b!102041))

(assert (= (and b!101642 ((_ is Union!427) (regTwo!1366 (regex!359 (h!7041 rules!1152))))) b!102042))

(declare-fun b!102043 () Bool)

(declare-fun e!56603 () Bool)

(assert (=> b!102043 (= e!56603 tp_is_empty!773)))

(declare-fun b!102046 () Bool)

(declare-fun tp!57330 () Bool)

(declare-fun tp!57332 () Bool)

(assert (=> b!102046 (= e!56603 (and tp!57330 tp!57332))))

(declare-fun b!102044 () Bool)

(declare-fun tp!57333 () Bool)

(declare-fun tp!57329 () Bool)

(assert (=> b!102044 (= e!56603 (and tp!57333 tp!57329))))

(assert (=> b!101644 (= tp!57244 e!56603)))

(declare-fun b!102045 () Bool)

(declare-fun tp!57331 () Bool)

(assert (=> b!102045 (= e!56603 tp!57331)))

(assert (= (and b!101644 ((_ is ElementMatch!427) (regOne!1367 (regex!359 (h!7041 rules!1152))))) b!102043))

(assert (= (and b!101644 ((_ is Concat!777) (regOne!1367 (regex!359 (h!7041 rules!1152))))) b!102044))

(assert (= (and b!101644 ((_ is Star!427) (regOne!1367 (regex!359 (h!7041 rules!1152))))) b!102045))

(assert (= (and b!101644 ((_ is Union!427) (regOne!1367 (regex!359 (h!7041 rules!1152))))) b!102046))

(declare-fun b!102047 () Bool)

(declare-fun e!56604 () Bool)

(assert (=> b!102047 (= e!56604 tp_is_empty!773)))

(declare-fun b!102050 () Bool)

(declare-fun tp!57335 () Bool)

(declare-fun tp!57337 () Bool)

(assert (=> b!102050 (= e!56604 (and tp!57335 tp!57337))))

(declare-fun b!102048 () Bool)

(declare-fun tp!57338 () Bool)

(declare-fun tp!57334 () Bool)

(assert (=> b!102048 (= e!56604 (and tp!57338 tp!57334))))

(assert (=> b!101644 (= tp!57246 e!56604)))

(declare-fun b!102049 () Bool)

(declare-fun tp!57336 () Bool)

(assert (=> b!102049 (= e!56604 tp!57336)))

(assert (= (and b!101644 ((_ is ElementMatch!427) (regTwo!1367 (regex!359 (h!7041 rules!1152))))) b!102047))

(assert (= (and b!101644 ((_ is Concat!777) (regTwo!1367 (regex!359 (h!7041 rules!1152))))) b!102048))

(assert (= (and b!101644 ((_ is Star!427) (regTwo!1367 (regex!359 (h!7041 rules!1152))))) b!102049))

(assert (= (and b!101644 ((_ is Union!427) (regTwo!1367 (regex!359 (h!7041 rules!1152))))) b!102050))

(declare-fun b!102051 () Bool)

(declare-fun e!56605 () Bool)

(assert (=> b!102051 (= e!56605 tp_is_empty!773)))

(declare-fun b!102054 () Bool)

(declare-fun tp!57340 () Bool)

(declare-fun tp!57342 () Bool)

(assert (=> b!102054 (= e!56605 (and tp!57340 tp!57342))))

(declare-fun b!102052 () Bool)

(declare-fun tp!57343 () Bool)

(declare-fun tp!57339 () Bool)

(assert (=> b!102052 (= e!56605 (and tp!57343 tp!57339))))

(assert (=> b!101665 (= tp!57267 e!56605)))

(declare-fun b!102053 () Bool)

(declare-fun tp!57341 () Bool)

(assert (=> b!102053 (= e!56605 tp!57341)))

(assert (= (and b!101665 ((_ is ElementMatch!427) (regex!359 (h!7041 (t!21299 rules!1152))))) b!102051))

(assert (= (and b!101665 ((_ is Concat!777) (regex!359 (h!7041 (t!21299 rules!1152))))) b!102052))

(assert (= (and b!101665 ((_ is Star!427) (regex!359 (h!7041 (t!21299 rules!1152))))) b!102053))

(assert (= (and b!101665 ((_ is Union!427) (regex!359 (h!7041 (t!21299 rules!1152))))) b!102054))

(declare-fun b!102055 () Bool)

(declare-fun e!56606 () Bool)

(assert (=> b!102055 (= e!56606 tp_is_empty!773)))

(declare-fun b!102058 () Bool)

(declare-fun tp!57345 () Bool)

(declare-fun tp!57347 () Bool)

(assert (=> b!102058 (= e!56606 (and tp!57345 tp!57347))))

(declare-fun b!102056 () Bool)

(declare-fun tp!57348 () Bool)

(declare-fun tp!57344 () Bool)

(assert (=> b!102056 (= e!56606 (and tp!57348 tp!57344))))

(assert (=> b!101643 (= tp!57245 e!56606)))

(declare-fun b!102057 () Bool)

(declare-fun tp!57346 () Bool)

(assert (=> b!102057 (= e!56606 tp!57346)))

(assert (= (and b!101643 ((_ is ElementMatch!427) (reg!756 (regex!359 (h!7041 rules!1152))))) b!102055))

(assert (= (and b!101643 ((_ is Concat!777) (reg!756 (regex!359 (h!7041 rules!1152))))) b!102056))

(assert (= (and b!101643 ((_ is Star!427) (reg!756 (regex!359 (h!7041 rules!1152))))) b!102057))

(assert (= (and b!101643 ((_ is Union!427) (reg!756 (regex!359 (h!7041 rules!1152))))) b!102058))

(declare-fun b!102059 () Bool)

(declare-fun tp!57351 () Bool)

(declare-fun e!56608 () Bool)

(declare-fun tp!57350 () Bool)

(assert (=> b!102059 (= e!56608 (and (inv!1991 (left!1254 (left!1254 (c!24694 input!576)))) tp!57350 (inv!1991 (right!1584 (left!1254 (c!24694 input!576)))) tp!57351))))

(declare-fun b!102061 () Bool)

(declare-fun e!56607 () Bool)

(declare-fun tp!57349 () Bool)

(assert (=> b!102061 (= e!56607 tp!57349)))

(declare-fun b!102060 () Bool)

(assert (=> b!102060 (= e!56608 (and (inv!1999 (xs!3101 (left!1254 (c!24694 input!576)))) e!56607))))

(assert (=> b!101653 (= tp!57255 (and (inv!1991 (left!1254 (c!24694 input!576))) e!56608))))

(assert (= (and b!101653 ((_ is Node!514) (left!1254 (c!24694 input!576)))) b!102059))

(assert (= b!102060 b!102061))

(assert (= (and b!101653 ((_ is Leaf!829) (left!1254 (c!24694 input!576)))) b!102060))

(declare-fun m!88346 () Bool)

(assert (=> b!102059 m!88346))

(declare-fun m!88348 () Bool)

(assert (=> b!102059 m!88348))

(declare-fun m!88350 () Bool)

(assert (=> b!102060 m!88350))

(assert (=> b!101653 m!87948))

(declare-fun tp!57353 () Bool)

(declare-fun b!102062 () Bool)

(declare-fun tp!57354 () Bool)

(declare-fun e!56610 () Bool)

(assert (=> b!102062 (= e!56610 (and (inv!1991 (left!1254 (right!1584 (c!24694 input!576)))) tp!57353 (inv!1991 (right!1584 (right!1584 (c!24694 input!576)))) tp!57354))))

(declare-fun b!102064 () Bool)

(declare-fun e!56609 () Bool)

(declare-fun tp!57352 () Bool)

(assert (=> b!102064 (= e!56609 tp!57352)))

(declare-fun b!102063 () Bool)

(assert (=> b!102063 (= e!56610 (and (inv!1999 (xs!3101 (right!1584 (c!24694 input!576)))) e!56609))))

(assert (=> b!101653 (= tp!57256 (and (inv!1991 (right!1584 (c!24694 input!576))) e!56610))))

(assert (= (and b!101653 ((_ is Node!514) (right!1584 (c!24694 input!576)))) b!102062))

(assert (= b!102063 b!102064))

(assert (= (and b!101653 ((_ is Leaf!829) (right!1584 (c!24694 input!576)))) b!102063))

(declare-fun m!88352 () Bool)

(assert (=> b!102062 m!88352))

(declare-fun m!88354 () Bool)

(assert (=> b!102062 m!88354))

(declare-fun m!88356 () Bool)

(assert (=> b!102063 m!88356))

(assert (=> b!101653 m!87950))

(check-sat (not b_next!3067) (not b!102038) (not b!102006) (not b!101977) (not b_next!3051) (not b!102012) (not b!101951) (not d!24253) (not b!102063) (not b!101949) (not b!102034) (not b!101911) (not d!24215) (not b!101914) (not b!102004) (not b!102046) (not b!101979) (not b!102041) (not b!101952) (not b!101753) (not d!24225) (not b!102024) b_and!4569 (not b!101921) (not d!24235) (not b!101980) (not b!101653) tp_is_empty!773 (not b!101912) (not b!101964) (not b_next!3057) (not b!102048) (not b!102026) (not b!102049) (not b!102025) (not b!101751) (not d!24157) (not b_next!3065) b_and!4583 (not b!101896) (not b!102022) b_and!4585 (not b!102014) (not b!102062) (not b!101943) (not b!102040) (not b!102020) (not b!102027) (not b!102021) (not b!102058) b_and!4577 (not b!102001) (not b!102052) (not b!102056) (not d!24231) (not b!101897) (not d!24153) (not b!102045) (not b!102037) (not d!24257) (not b!102016) (not d!24213) (not b!101999) (not b!102036) (not b!102000) (not b!101742) (not b!102053) (not b!102061) (not b!102054) (not b!101913) (not d!24227) (not b!101946) (not b!101995) (not b!102019) (not d!24217) (not b!101996) (not b!101944) (not b!101923) (not b!102060) (not b!101910) (not b!102059) (not b_next!3049) (not b!101948) (not bm!4415) (not d!24239) (not b!101945) (not d!24221) (not d!24255) (not b!102042) (not b!101958) b_and!4575 (not d!24149) (not b!101925) (not d!24229) (not d!24233) (not b!101942) (not b!102003) (not b_next!3059) (not b!101915) (not b!101959) (not b!101965) b_and!4567 (not b!102064) (not b!102050) (not d!24159) (not b!102044) (not b!102057) (not b!102028))
(check-sat (not b_next!3051) (not b_next!3067) b_and!4569 (not b_next!3057) b_and!4577 (not b_next!3049) b_and!4575 (not b_next!3059) b_and!4567 (not b_next!3065) b_and!4583 b_and!4585)
(get-model)

(declare-fun d!24281 () Bool)

(declare-fun e!56626 () Bool)

(assert (=> d!24281 e!56626))

(declare-fun res!49381 () Bool)

(assert (=> d!24281 (=> (not res!49381) (not e!56626))))

(declare-fun lt!28328 () List!1648)

(assert (=> d!24281 (= res!49381 (= (content!132 lt!28328) ((_ map or) (content!132 (list!677 (left!1254 (c!24694 input!576)))) (content!132 (list!677 (right!1584 (c!24694 input!576)))))))))

(declare-fun e!56625 () List!1648)

(assert (=> d!24281 (= lt!28328 e!56625)))

(declare-fun c!24807 () Bool)

(assert (=> d!24281 (= c!24807 ((_ is Nil!1642) (list!677 (left!1254 (c!24694 input!576)))))))

(assert (=> d!24281 (= (++!258 (list!677 (left!1254 (c!24694 input!576))) (list!677 (right!1584 (c!24694 input!576)))) lt!28328)))

(declare-fun b!102089 () Bool)

(assert (=> b!102089 (= e!56626 (or (not (= (list!677 (right!1584 (c!24694 input!576))) Nil!1642)) (= lt!28328 (list!677 (left!1254 (c!24694 input!576))))))))

(declare-fun b!102086 () Bool)

(assert (=> b!102086 (= e!56625 (list!677 (right!1584 (c!24694 input!576))))))

(declare-fun b!102087 () Bool)

(assert (=> b!102087 (= e!56625 (Cons!1642 (h!7039 (list!677 (left!1254 (c!24694 input!576)))) (++!258 (t!21297 (list!677 (left!1254 (c!24694 input!576)))) (list!677 (right!1584 (c!24694 input!576))))))))

(declare-fun b!102088 () Bool)

(declare-fun res!49382 () Bool)

(assert (=> b!102088 (=> (not res!49382) (not e!56626))))

(assert (=> b!102088 (= res!49382 (= (size!1454 lt!28328) (+ (size!1454 (list!677 (left!1254 (c!24694 input!576)))) (size!1454 (list!677 (right!1584 (c!24694 input!576)))))))))

(assert (= (and d!24281 c!24807) b!102086))

(assert (= (and d!24281 (not c!24807)) b!102087))

(assert (= (and d!24281 res!49381) b!102088))

(assert (= (and b!102088 res!49382) b!102089))

(declare-fun m!88394 () Bool)

(assert (=> d!24281 m!88394))

(assert (=> d!24281 m!88178))

(declare-fun m!88396 () Bool)

(assert (=> d!24281 m!88396))

(assert (=> d!24281 m!88180))

(declare-fun m!88398 () Bool)

(assert (=> d!24281 m!88398))

(assert (=> b!102087 m!88180))

(declare-fun m!88400 () Bool)

(assert (=> b!102087 m!88400))

(declare-fun m!88402 () Bool)

(assert (=> b!102088 m!88402))

(assert (=> b!102088 m!88178))

(declare-fun m!88404 () Bool)

(assert (=> b!102088 m!88404))

(assert (=> b!102088 m!88180))

(declare-fun m!88406 () Bool)

(assert (=> b!102088 m!88406))

(assert (=> b!101897 d!24281))

(declare-fun b!102092 () Bool)

(declare-fun e!56628 () List!1648)

(assert (=> b!102092 (= e!56628 (list!680 (xs!3101 (left!1254 (c!24694 input!576)))))))

(declare-fun b!102093 () Bool)

(assert (=> b!102093 (= e!56628 (++!258 (list!677 (left!1254 (left!1254 (c!24694 input!576)))) (list!677 (right!1584 (left!1254 (c!24694 input!576))))))))

(declare-fun b!102091 () Bool)

(declare-fun e!56627 () List!1648)

(assert (=> b!102091 (= e!56627 e!56628)))

(declare-fun c!24809 () Bool)

(assert (=> b!102091 (= c!24809 ((_ is Leaf!829) (left!1254 (c!24694 input!576))))))

(declare-fun b!102090 () Bool)

(assert (=> b!102090 (= e!56627 Nil!1642)))

(declare-fun d!24283 () Bool)

(declare-fun c!24808 () Bool)

(assert (=> d!24283 (= c!24808 ((_ is Empty!514) (left!1254 (c!24694 input!576))))))

(assert (=> d!24283 (= (list!677 (left!1254 (c!24694 input!576))) e!56627)))

(assert (= (and d!24283 c!24808) b!102090))

(assert (= (and d!24283 (not c!24808)) b!102091))

(assert (= (and b!102091 c!24809) b!102092))

(assert (= (and b!102091 (not c!24809)) b!102093))

(declare-fun m!88408 () Bool)

(assert (=> b!102092 m!88408))

(declare-fun m!88410 () Bool)

(assert (=> b!102093 m!88410))

(declare-fun m!88412 () Bool)

(assert (=> b!102093 m!88412))

(assert (=> b!102093 m!88410))

(assert (=> b!102093 m!88412))

(declare-fun m!88414 () Bool)

(assert (=> b!102093 m!88414))

(assert (=> b!101897 d!24283))

(declare-fun b!102096 () Bool)

(declare-fun e!56630 () List!1648)

(assert (=> b!102096 (= e!56630 (list!680 (xs!3101 (right!1584 (c!24694 input!576)))))))

(declare-fun b!102097 () Bool)

(assert (=> b!102097 (= e!56630 (++!258 (list!677 (left!1254 (right!1584 (c!24694 input!576)))) (list!677 (right!1584 (right!1584 (c!24694 input!576))))))))

(declare-fun b!102095 () Bool)

(declare-fun e!56629 () List!1648)

(assert (=> b!102095 (= e!56629 e!56630)))

(declare-fun c!24811 () Bool)

(assert (=> b!102095 (= c!24811 ((_ is Leaf!829) (right!1584 (c!24694 input!576))))))

(declare-fun b!102094 () Bool)

(assert (=> b!102094 (= e!56629 Nil!1642)))

(declare-fun d!24285 () Bool)

(declare-fun c!24810 () Bool)

(assert (=> d!24285 (= c!24810 ((_ is Empty!514) (right!1584 (c!24694 input!576))))))

(assert (=> d!24285 (= (list!677 (right!1584 (c!24694 input!576))) e!56629)))

(assert (= (and d!24285 c!24810) b!102094))

(assert (= (and d!24285 (not c!24810)) b!102095))

(assert (= (and b!102095 c!24811) b!102096))

(assert (= (and b!102095 (not c!24811)) b!102097))

(declare-fun m!88416 () Bool)

(assert (=> b!102096 m!88416))

(declare-fun m!88418 () Bool)

(assert (=> b!102097 m!88418))

(declare-fun m!88420 () Bool)

(assert (=> b!102097 m!88420))

(assert (=> b!102097 m!88418))

(assert (=> b!102097 m!88420))

(declare-fun m!88422 () Bool)

(assert (=> b!102097 m!88422))

(assert (=> b!101897 d!24285))

(declare-fun d!24287 () Bool)

(declare-fun lt!28329 () Int)

(assert (=> d!24287 (>= lt!28329 0)))

(declare-fun e!56631 () Int)

(assert (=> d!24287 (= lt!28329 e!56631)))

(declare-fun c!24812 () Bool)

(assert (=> d!24287 (= c!24812 ((_ is Nil!1642) (t!21297 lt!28187)))))

(assert (=> d!24287 (= (size!1454 (t!21297 lt!28187)) lt!28329)))

(declare-fun b!102098 () Bool)

(assert (=> b!102098 (= e!56631 0)))

(declare-fun b!102099 () Bool)

(assert (=> b!102099 (= e!56631 (+ 1 (size!1454 (t!21297 (t!21297 lt!28187)))))))

(assert (= (and d!24287 c!24812) b!102098))

(assert (= (and d!24287 (not c!24812)) b!102099))

(declare-fun m!88424 () Bool)

(assert (=> b!102099 m!88424))

(assert (=> b!101925 d!24287))

(declare-fun d!24289 () Bool)

(assert (=> d!24289 (= (list!681 (xs!3102 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))) (innerList!573 (xs!3102 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))

(assert (=> b!101995 d!24289))

(declare-fun d!24291 () Bool)

(declare-fun lt!28330 () Int)

(assert (=> d!24291 (>= lt!28330 0)))

(declare-fun e!56632 () Int)

(assert (=> d!24291 (= lt!28330 e!56632)))

(declare-fun c!24813 () Bool)

(assert (=> d!24291 (= c!24813 ((_ is Nil!1642) (_2!1101 lt!28309)))))

(assert (=> d!24291 (= (size!1454 (_2!1101 lt!28309)) lt!28330)))

(declare-fun b!102100 () Bool)

(assert (=> b!102100 (= e!56632 0)))

(declare-fun b!102101 () Bool)

(assert (=> b!102101 (= e!56632 (+ 1 (size!1454 (t!21297 (_2!1101 lt!28309)))))))

(assert (= (and d!24291 c!24813) b!102100))

(assert (= (and d!24291 (not c!24813)) b!102101))

(declare-fun m!88426 () Bool)

(assert (=> b!102101 m!88426))

(assert (=> b!101980 d!24291))

(declare-fun d!24293 () Bool)

(declare-fun lt!28331 () Int)

(assert (=> d!24293 (>= lt!28331 0)))

(declare-fun e!56633 () Int)

(assert (=> d!24293 (= lt!28331 e!56633)))

(declare-fun c!24814 () Bool)

(assert (=> d!24293 (= c!24814 ((_ is Nil!1642) (list!672 (BalanceConc!1033 Empty!514))))))

(assert (=> d!24293 (= (size!1454 (list!672 (BalanceConc!1033 Empty!514))) lt!28331)))

(declare-fun b!102102 () Bool)

(assert (=> b!102102 (= e!56633 0)))

(declare-fun b!102103 () Bool)

(assert (=> b!102103 (= e!56633 (+ 1 (size!1454 (t!21297 (list!672 (BalanceConc!1033 Empty!514))))))))

(assert (= (and d!24293 c!24814) b!102102))

(assert (= (and d!24293 (not c!24814)) b!102103))

(declare-fun m!88428 () Bool)

(assert (=> b!102103 m!88428))

(assert (=> b!101980 d!24293))

(declare-fun bs!9957 () Bool)

(declare-fun d!24295 () Bool)

(assert (= bs!9957 (and d!24295 d!24233)))

(declare-fun lambda!1868 () Int)

(assert (=> bs!9957 (= (and (= (toChars!789 (transformation!359 (h!7041 (t!21299 rules!1152)))) (toChars!789 (transformation!359 (h!7041 rules!1152)))) (= (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152)))) (toValue!930 (transformation!359 (h!7041 rules!1152))))) (= lambda!1868 lambda!1867))))

(assert (=> d!24295 true))

(assert (=> d!24295 (< (dynLambda!505 order!777 (toChars!789 (transformation!359 (h!7041 (t!21299 rules!1152))))) (dynLambda!506 order!779 lambda!1868))))

(assert (=> d!24295 true))

(assert (=> d!24295 (< (dynLambda!503 order!773 (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152))))) (dynLambda!506 order!779 lambda!1868))))

(assert (=> d!24295 (= (semiInverseModEq!91 (toChars!789 (transformation!359 (h!7041 (t!21299 rules!1152)))) (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152))))) (Forall!70 lambda!1868))))

(declare-fun bs!9958 () Bool)

(assert (= bs!9958 d!24295))

(declare-fun m!88430 () Bool)

(assert (=> bs!9958 m!88430))

(assert (=> d!24157 d!24295))

(declare-fun d!24297 () Bool)

(declare-fun c!24815 () Bool)

(assert (=> d!24297 (= c!24815 ((_ is Nil!1642) (t!21297 lt!28212)))))

(declare-fun e!56634 () (InoxSet C!1776))

(assert (=> d!24297 (= (content!132 (t!21297 lt!28212)) e!56634)))

(declare-fun b!102106 () Bool)

(assert (=> b!102106 (= e!56634 ((as const (Array C!1776 Bool)) false))))

(declare-fun b!102107 () Bool)

(assert (=> b!102107 (= e!56634 ((_ map or) (store ((as const (Array C!1776 Bool)) false) (h!7039 (t!21297 lt!28212)) true) (content!132 (t!21297 (t!21297 lt!28212)))))))

(assert (= (and d!24297 c!24815) b!102106))

(assert (= (and d!24297 (not c!24815)) b!102107))

(declare-fun m!88432 () Bool)

(assert (=> b!102107 m!88432))

(declare-fun m!88434 () Bool)

(assert (=> b!102107 m!88434))

(assert (=> b!102012 d!24297))

(declare-fun d!24299 () Bool)

(declare-fun isEmpty!746 (Option!184) Bool)

(assert (=> d!24299 (= (isDefined!59 lt!28290) (not (isEmpty!746 lt!28290)))))

(declare-fun bs!9959 () Bool)

(assert (= bs!9959 d!24299))

(declare-fun m!88436 () Bool)

(assert (=> bs!9959 m!88436))

(assert (=> b!101942 d!24299))

(declare-fun b!102110 () Bool)

(declare-fun e!56640 () Bool)

(declare-fun e!56638 () Bool)

(assert (=> b!102110 (= e!56640 e!56638)))

(declare-fun res!49386 () Bool)

(assert (=> b!102110 (=> res!49386 e!56638)))

(declare-fun lt!28342 () Option!184)

(assert (=> b!102110 (= res!49386 (not (isDefined!59 lt!28342)))))

(declare-fun b!102111 () Bool)

(declare-fun e!56642 () Bool)

(assert (=> b!102111 (= e!56638 e!56642)))

(declare-fun res!49388 () Bool)

(assert (=> b!102111 (=> (not res!49388) (not e!56642))))

(assert (=> b!102111 (= res!49388 (= (_1!1102 (get!418 lt!28342)) (_1!1104 (get!419 (maxPrefix!87 thiss!11428 (t!21299 rules!1152) (list!672 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!102113 () Bool)

(declare-fun e!56641 () Bool)

(assert (=> b!102113 (= e!56641 (= (list!672 (_2!1102 (get!418 lt!28342))) (_2!1104 (get!419 (maxPrefixZipper!11 thiss!11428 (t!21299 rules!1152) (list!672 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!102114 () Bool)

(declare-fun res!49383 () Bool)

(assert (=> b!102114 (=> (not res!49383) (not e!56640))))

(declare-fun e!56637 () Bool)

(assert (=> b!102114 (= res!49383 e!56637)))

(declare-fun res!49384 () Bool)

(assert (=> b!102114 (=> res!49384 e!56637)))

(assert (=> b!102114 (= res!49384 (not (isDefined!59 lt!28342)))))

(declare-fun d!24301 () Bool)

(assert (=> d!24301 e!56640))

(declare-fun res!49385 () Bool)

(assert (=> d!24301 (=> (not res!49385) (not e!56640))))

(assert (=> d!24301 (= res!49385 (= (isDefined!59 lt!28342) (isDefined!60 (maxPrefixZipper!11 thiss!11428 (t!21299 rules!1152) (list!672 (BalanceConc!1033 Empty!514))))))))

(declare-fun e!56639 () Option!184)

(assert (=> d!24301 (= lt!28342 e!56639)))

(declare-fun c!24818 () Bool)

(assert (=> d!24301 (= c!24818 (and ((_ is Cons!1644) (t!21299 rules!1152)) ((_ is Nil!1644) (t!21299 (t!21299 rules!1152)))))))

(declare-fun lt!28343 () Unit!1096)

(declare-fun lt!28344 () Unit!1096)

(assert (=> d!24301 (= lt!28343 lt!28344)))

(declare-fun lt!28346 () List!1648)

(declare-fun lt!28348 () List!1648)

(assert (=> d!24301 (isPrefix!45 lt!28346 lt!28348)))

(assert (=> d!24301 (= lt!28344 (lemmaIsPrefixRefl!45 lt!28346 lt!28348))))

(assert (=> d!24301 (= lt!28348 (list!672 (BalanceConc!1033 Empty!514)))))

(assert (=> d!24301 (= lt!28346 (list!672 (BalanceConc!1033 Empty!514)))))

(assert (=> d!24301 (rulesValidInductive!76 thiss!11428 (t!21299 rules!1152))))

(assert (=> d!24301 (= (maxPrefixZipperSequence!50 thiss!11428 (t!21299 rules!1152) (BalanceConc!1033 Empty!514)) lt!28342)))

(declare-fun b!102112 () Bool)

(declare-fun lt!28345 () Option!184)

(declare-fun lt!28347 () Option!184)

(assert (=> b!102112 (= e!56639 (ite (and ((_ is None!183) lt!28345) ((_ is None!183) lt!28347)) None!183 (ite ((_ is None!183) lt!28347) lt!28345 (ite ((_ is None!183) lt!28345) lt!28347 (ite (>= (size!1448 (_1!1102 (v!12982 lt!28345))) (size!1448 (_1!1102 (v!12982 lt!28347)))) lt!28345 lt!28347)))))))

(declare-fun call!4423 () Option!184)

(assert (=> b!102112 (= lt!28345 call!4423)))

(assert (=> b!102112 (= lt!28347 (maxPrefixZipperSequence!50 thiss!11428 (t!21299 (t!21299 rules!1152)) (BalanceConc!1033 Empty!514)))))

(declare-fun bm!4418 () Bool)

(assert (=> bm!4418 (= call!4423 (maxPrefixOneRuleZipperSequence!12 thiss!11428 (h!7041 (t!21299 rules!1152)) (BalanceConc!1033 Empty!514)))))

(declare-fun b!102115 () Bool)

(assert (=> b!102115 (= e!56639 call!4423)))

(declare-fun b!102116 () Bool)

(assert (=> b!102116 (= e!56637 e!56641)))

(declare-fun res!49387 () Bool)

(assert (=> b!102116 (=> (not res!49387) (not e!56641))))

(assert (=> b!102116 (= res!49387 (= (_1!1102 (get!418 lt!28342)) (_1!1104 (get!419 (maxPrefixZipper!11 thiss!11428 (t!21299 rules!1152) (list!672 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!102117 () Bool)

(assert (=> b!102117 (= e!56642 (= (list!672 (_2!1102 (get!418 lt!28342))) (_2!1104 (get!419 (maxPrefix!87 thiss!11428 (t!21299 rules!1152) (list!672 (BalanceConc!1033 Empty!514)))))))))

(assert (= (and d!24301 c!24818) b!102115))

(assert (= (and d!24301 (not c!24818)) b!102112))

(assert (= (or b!102115 b!102112) bm!4418))

(assert (= (and d!24301 res!49385) b!102114))

(assert (= (and b!102114 (not res!49384)) b!102116))

(assert (= (and b!102116 res!49387) b!102113))

(assert (= (and b!102114 res!49383) b!102110))

(assert (= (and b!102110 (not res!49386)) b!102111))

(assert (= (and b!102111 res!49388) b!102117))

(declare-fun m!88438 () Bool)

(assert (=> b!102113 m!88438))

(declare-fun m!88440 () Bool)

(assert (=> b!102113 m!88440))

(declare-fun m!88442 () Bool)

(assert (=> b!102113 m!88442))

(assert (=> b!102113 m!87824))

(assert (=> b!102113 m!88438))

(declare-fun m!88444 () Bool)

(assert (=> b!102113 m!88444))

(assert (=> b!102113 m!87824))

(declare-fun m!88446 () Bool)

(assert (=> b!102112 m!88446))

(declare-fun m!88448 () Bool)

(assert (=> d!24301 m!88448))

(declare-fun m!88450 () Bool)

(assert (=> d!24301 m!88450))

(assert (=> d!24301 m!88438))

(declare-fun m!88452 () Bool)

(assert (=> d!24301 m!88452))

(declare-fun m!88454 () Bool)

(assert (=> d!24301 m!88454))

(assert (=> d!24301 m!87824))

(declare-fun m!88456 () Bool)

(assert (=> d!24301 m!88456))

(assert (=> d!24301 m!87824))

(assert (=> d!24301 m!88438))

(assert (=> b!102114 m!88456))

(assert (=> b!102116 m!88444))

(assert (=> b!102116 m!87824))

(assert (=> b!102116 m!87824))

(assert (=> b!102116 m!88438))

(assert (=> b!102116 m!88438))

(assert (=> b!102116 m!88440))

(assert (=> b!102111 m!88444))

(assert (=> b!102111 m!87824))

(assert (=> b!102111 m!87824))

(declare-fun m!88458 () Bool)

(assert (=> b!102111 m!88458))

(assert (=> b!102111 m!88458))

(declare-fun m!88460 () Bool)

(assert (=> b!102111 m!88460))

(declare-fun m!88462 () Bool)

(assert (=> bm!4418 m!88462))

(assert (=> b!102110 m!88456))

(assert (=> b!102117 m!87824))

(assert (=> b!102117 m!88458))

(assert (=> b!102117 m!88458))

(assert (=> b!102117 m!88460))

(assert (=> b!102117 m!88442))

(assert (=> b!102117 m!88444))

(assert (=> b!102117 m!87824))

(assert (=> b!101944 d!24301))

(declare-fun d!24303 () Bool)

(declare-fun lt!28359 () Int)

(assert (=> d!24303 (>= lt!28359 0)))

(declare-fun e!56646 () Int)

(assert (=> d!24303 (= lt!28359 e!56646)))

(declare-fun c!24822 () Bool)

(assert (=> d!24303 (= c!24822 ((_ is Nil!1645) (list!673 (_1!1098 lt!28209))))))

(assert (=> d!24303 (= (size!1459 (list!673 (_1!1098 lt!28209))) lt!28359)))

(declare-fun b!102124 () Bool)

(assert (=> b!102124 (= e!56646 0)))

(declare-fun b!102125 () Bool)

(assert (=> b!102125 (= e!56646 (+ 1 (size!1459 (t!21300 (list!673 (_1!1098 lt!28209))))))))

(assert (= (and d!24303 c!24822) b!102124))

(assert (= (and d!24303 (not c!24822)) b!102125))

(declare-fun m!88474 () Bool)

(assert (=> b!102125 m!88474))

(assert (=> d!24213 d!24303))

(assert (=> d!24213 d!24225))

(declare-fun d!24309 () Bool)

(declare-fun lt!28364 () Int)

(assert (=> d!24309 (= lt!28364 (size!1459 (list!676 (c!24696 (_1!1098 lt!28209)))))))

(assert (=> d!24309 (= lt!28364 (ite ((_ is Empty!515) (c!24696 (_1!1098 lt!28209))) 0 (ite ((_ is Leaf!830) (c!24696 (_1!1098 lt!28209))) (csize!1261 (c!24696 (_1!1098 lt!28209))) (csize!1260 (c!24696 (_1!1098 lt!28209))))))))

(assert (=> d!24309 (= (size!1460 (c!24696 (_1!1098 lt!28209))) lt!28364)))

(declare-fun bs!9961 () Bool)

(assert (= bs!9961 d!24309))

(assert (=> bs!9961 m!88250))

(assert (=> bs!9961 m!88250))

(declare-fun m!88476 () Bool)

(assert (=> bs!9961 m!88476))

(assert (=> d!24213 d!24309))

(declare-fun d!24311 () Bool)

(declare-fun e!56652 () Bool)

(assert (=> d!24311 e!56652))

(declare-fun res!49393 () Bool)

(assert (=> d!24311 (=> (not res!49393) (not e!56652))))

(declare-fun lt!28365 () List!1648)

(assert (=> d!24311 (= res!49393 (= (content!132 lt!28365) ((_ map or) (content!132 (t!21297 (t!21297 lt!28188))) (content!132 lt!28187))))))

(declare-fun e!56651 () List!1648)

(assert (=> d!24311 (= lt!28365 e!56651)))

(declare-fun c!24823 () Bool)

(assert (=> d!24311 (= c!24823 ((_ is Nil!1642) (t!21297 (t!21297 lt!28188))))))

(assert (=> d!24311 (= (++!258 (t!21297 (t!21297 lt!28188)) lt!28187) lt!28365)))

(declare-fun b!102133 () Bool)

(assert (=> b!102133 (= e!56652 (or (not (= lt!28187 Nil!1642)) (= lt!28365 (t!21297 (t!21297 lt!28188)))))))

(declare-fun b!102130 () Bool)

(assert (=> b!102130 (= e!56651 lt!28187)))

(declare-fun b!102131 () Bool)

(assert (=> b!102131 (= e!56651 (Cons!1642 (h!7039 (t!21297 (t!21297 lt!28188))) (++!258 (t!21297 (t!21297 (t!21297 lt!28188))) lt!28187)))))

(declare-fun b!102132 () Bool)

(declare-fun res!49394 () Bool)

(assert (=> b!102132 (=> (not res!49394) (not e!56652))))

(assert (=> b!102132 (= res!49394 (= (size!1454 lt!28365) (+ (size!1454 (t!21297 (t!21297 lt!28188))) (size!1454 lt!28187))))))

(assert (= (and d!24311 c!24823) b!102130))

(assert (= (and d!24311 (not c!24823)) b!102131))

(assert (= (and d!24311 res!49393) b!102132))

(assert (= (and b!102132 res!49394) b!102133))

(declare-fun m!88478 () Bool)

(assert (=> d!24311 m!88478))

(declare-fun m!88480 () Bool)

(assert (=> d!24311 m!88480))

(assert (=> d!24311 m!87934))

(declare-fun m!88482 () Bool)

(assert (=> b!102131 m!88482))

(declare-fun m!88484 () Bool)

(assert (=> b!102132 m!88484))

(declare-fun m!88486 () Bool)

(assert (=> b!102132 m!88486))

(assert (=> b!102132 m!87942))

(assert (=> b!101951 d!24311))

(declare-fun b!102134 () Bool)

(declare-fun res!49397 () Bool)

(declare-fun e!56654 () Bool)

(assert (=> b!102134 (=> (not res!49397) (not e!56654))))

(assert (=> b!102134 (= res!49397 (isBalanced!135 (left!1254 (left!1254 (c!24694 input!576)))))))

(declare-fun b!102136 () Bool)

(declare-fun res!49396 () Bool)

(assert (=> b!102136 (=> (not res!49396) (not e!56654))))

(assert (=> b!102136 (= res!49396 (not (isEmpty!740 (left!1254 (left!1254 (c!24694 input!576))))))))

(declare-fun b!102137 () Bool)

(assert (=> b!102137 (= e!56654 (not (isEmpty!740 (right!1584 (left!1254 (c!24694 input!576))))))))

(declare-fun b!102135 () Bool)

(declare-fun res!49398 () Bool)

(assert (=> b!102135 (=> (not res!49398) (not e!56654))))

(assert (=> b!102135 (= res!49398 (isBalanced!135 (right!1584 (left!1254 (c!24694 input!576)))))))

(declare-fun d!24313 () Bool)

(declare-fun res!49399 () Bool)

(declare-fun e!56653 () Bool)

(assert (=> d!24313 (=> res!49399 e!56653)))

(assert (=> d!24313 (= res!49399 (not ((_ is Node!514) (left!1254 (c!24694 input!576)))))))

(assert (=> d!24313 (= (isBalanced!135 (left!1254 (c!24694 input!576))) e!56653)))

(declare-fun b!102138 () Bool)

(declare-fun res!49400 () Bool)

(assert (=> b!102138 (=> (not res!49400) (not e!56654))))

(assert (=> b!102138 (= res!49400 (<= (- (height!52 (left!1254 (left!1254 (c!24694 input!576)))) (height!52 (right!1584 (left!1254 (c!24694 input!576))))) 1))))

(declare-fun b!102139 () Bool)

(assert (=> b!102139 (= e!56653 e!56654)))

(declare-fun res!49395 () Bool)

(assert (=> b!102139 (=> (not res!49395) (not e!56654))))

(assert (=> b!102139 (= res!49395 (<= (- 1) (- (height!52 (left!1254 (left!1254 (c!24694 input!576)))) (height!52 (right!1584 (left!1254 (c!24694 input!576)))))))))

(assert (= (and d!24313 (not res!49399)) b!102139))

(assert (= (and b!102139 res!49395) b!102138))

(assert (= (and b!102138 res!49400) b!102134))

(assert (= (and b!102134 res!49397) b!102135))

(assert (= (and b!102135 res!49398) b!102136))

(assert (= (and b!102136 res!49396) b!102137))

(declare-fun m!88488 () Bool)

(assert (=> b!102137 m!88488))

(declare-fun m!88490 () Bool)

(assert (=> b!102135 m!88490))

(declare-fun m!88492 () Bool)

(assert (=> b!102136 m!88492))

(declare-fun m!88494 () Bool)

(assert (=> b!102134 m!88494))

(declare-fun m!88496 () Bool)

(assert (=> b!102139 m!88496))

(declare-fun m!88498 () Bool)

(assert (=> b!102139 m!88498))

(assert (=> b!102138 m!88496))

(assert (=> b!102138 m!88498))

(assert (=> b!101910 d!24313))

(assert (=> d!24231 d!24293))

(assert (=> d!24231 d!24125))

(declare-fun d!24315 () Bool)

(declare-fun lt!28369 () Int)

(assert (=> d!24315 (= lt!28369 (size!1454 (list!677 (c!24694 (BalanceConc!1033 Empty!514)))))))

(assert (=> d!24315 (= lt!28369 (ite ((_ is Empty!514) (c!24694 (BalanceConc!1033 Empty!514))) 0 (ite ((_ is Leaf!829) (c!24694 (BalanceConc!1033 Empty!514))) (csize!1259 (c!24694 (BalanceConc!1033 Empty!514))) (csize!1258 (c!24694 (BalanceConc!1033 Empty!514))))))))

(assert (=> d!24315 (= (size!1458 (c!24694 (BalanceConc!1033 Empty!514))) lt!28369)))

(declare-fun bs!9965 () Bool)

(assert (= bs!9965 d!24315))

(assert (=> bs!9965 m!87946))

(assert (=> bs!9965 m!87946))

(declare-fun m!88514 () Bool)

(assert (=> bs!9965 m!88514))

(assert (=> d!24231 d!24315))

(assert (=> b!101946 d!24299))

(declare-fun d!24325 () Bool)

(declare-fun lt!28375 () Bool)

(declare-fun isEmpty!747 (List!1648) Bool)

(assert (=> d!24325 (= lt!28375 (isEmpty!747 (list!677 (left!1254 (c!24694 input!576)))))))

(assert (=> d!24325 (= lt!28375 (= (size!1458 (left!1254 (c!24694 input!576))) 0))))

(assert (=> d!24325 (= (isEmpty!740 (left!1254 (c!24694 input!576))) lt!28375)))

(declare-fun bs!9966 () Bool)

(assert (= bs!9966 d!24325))

(assert (=> bs!9966 m!88178))

(assert (=> bs!9966 m!88178))

(declare-fun m!88518 () Bool)

(assert (=> bs!9966 m!88518))

(assert (=> bs!9966 m!88056))

(assert (=> b!101912 d!24325))

(declare-fun d!24329 () Bool)

(declare-fun lt!28376 () Int)

(assert (=> d!24329 (= lt!28376 (size!1454 (list!677 (left!1254 (c!24694 input!576)))))))

(assert (=> d!24329 (= lt!28376 (ite ((_ is Empty!514) (left!1254 (c!24694 input!576))) 0 (ite ((_ is Leaf!829) (left!1254 (c!24694 input!576))) (csize!1259 (left!1254 (c!24694 input!576))) (csize!1258 (left!1254 (c!24694 input!576))))))))

(assert (=> d!24329 (= (size!1458 (left!1254 (c!24694 input!576))) lt!28376)))

(declare-fun bs!9967 () Bool)

(assert (= bs!9967 d!24329))

(assert (=> bs!9967 m!88178))

(assert (=> bs!9967 m!88178))

(assert (=> bs!9967 m!88404))

(assert (=> d!24153 d!24329))

(declare-fun d!24331 () Bool)

(declare-fun lt!28377 () Int)

(assert (=> d!24331 (= lt!28377 (size!1454 (list!677 (right!1584 (c!24694 input!576)))))))

(assert (=> d!24331 (= lt!28377 (ite ((_ is Empty!514) (right!1584 (c!24694 input!576))) 0 (ite ((_ is Leaf!829) (right!1584 (c!24694 input!576))) (csize!1259 (right!1584 (c!24694 input!576))) (csize!1258 (right!1584 (c!24694 input!576))))))))

(assert (=> d!24331 (= (size!1458 (right!1584 (c!24694 input!576))) lt!28377)))

(declare-fun bs!9968 () Bool)

(assert (= bs!9968 d!24331))

(assert (=> bs!9968 m!88180))

(assert (=> bs!9968 m!88180))

(assert (=> bs!9968 m!88406))

(assert (=> d!24153 d!24331))

(declare-fun d!24333 () Bool)

(assert (=> d!24333 (= (height!52 (left!1254 (c!24694 input!576))) (ite ((_ is Empty!514) (left!1254 (c!24694 input!576))) 0 (ite ((_ is Leaf!829) (left!1254 (c!24694 input!576))) 1 (cheight!725 (left!1254 (c!24694 input!576))))))))

(assert (=> b!101914 d!24333))

(declare-fun d!24335 () Bool)

(assert (=> d!24335 (= (height!52 (right!1584 (c!24694 input!576))) (ite ((_ is Empty!514) (right!1584 (c!24694 input!576))) 0 (ite ((_ is Leaf!829) (right!1584 (c!24694 input!576))) 1 (cheight!725 (right!1584 (c!24694 input!576))))))))

(assert (=> b!101914 d!24335))

(declare-fun d!24337 () Bool)

(assert (=> d!24337 (= (max!0 (height!52 (left!1254 (c!24694 input!576))) (height!52 (right!1584 (c!24694 input!576)))) (ite (< (height!52 (left!1254 (c!24694 input!576))) (height!52 (right!1584 (c!24694 input!576)))) (height!52 (right!1584 (c!24694 input!576))) (height!52 (left!1254 (c!24694 input!576)))))))

(assert (=> b!101751 d!24337))

(assert (=> b!101751 d!24333))

(assert (=> b!101751 d!24335))

(declare-fun d!24339 () Bool)

(declare-fun c!24828 () Bool)

(assert (=> d!24339 (= c!24828 ((_ is Node!514) (left!1254 (right!1584 (c!24694 input!576)))))))

(declare-fun e!56661 () Bool)

(assert (=> d!24339 (= (inv!1991 (left!1254 (right!1584 (c!24694 input!576)))) e!56661)))

(declare-fun b!102150 () Bool)

(assert (=> b!102150 (= e!56661 (inv!1997 (left!1254 (right!1584 (c!24694 input!576)))))))

(declare-fun b!102151 () Bool)

(declare-fun e!56662 () Bool)

(assert (=> b!102151 (= e!56661 e!56662)))

(declare-fun res!49403 () Bool)

(assert (=> b!102151 (= res!49403 (not ((_ is Leaf!829) (left!1254 (right!1584 (c!24694 input!576))))))))

(assert (=> b!102151 (=> res!49403 e!56662)))

(declare-fun b!102152 () Bool)

(assert (=> b!102152 (= e!56662 (inv!1998 (left!1254 (right!1584 (c!24694 input!576)))))))

(assert (= (and d!24339 c!24828) b!102150))

(assert (= (and d!24339 (not c!24828)) b!102151))

(assert (= (and b!102151 (not res!49403)) b!102152))

(declare-fun m!88520 () Bool)

(assert (=> b!102150 m!88520))

(declare-fun m!88522 () Bool)

(assert (=> b!102152 m!88522))

(assert (=> b!102062 d!24339))

(declare-fun d!24341 () Bool)

(declare-fun c!24829 () Bool)

(assert (=> d!24341 (= c!24829 ((_ is Node!514) (right!1584 (right!1584 (c!24694 input!576)))))))

(declare-fun e!56663 () Bool)

(assert (=> d!24341 (= (inv!1991 (right!1584 (right!1584 (c!24694 input!576)))) e!56663)))

(declare-fun b!102153 () Bool)

(assert (=> b!102153 (= e!56663 (inv!1997 (right!1584 (right!1584 (c!24694 input!576)))))))

(declare-fun b!102154 () Bool)

(declare-fun e!56664 () Bool)

(assert (=> b!102154 (= e!56663 e!56664)))

(declare-fun res!49404 () Bool)

(assert (=> b!102154 (= res!49404 (not ((_ is Leaf!829) (right!1584 (right!1584 (c!24694 input!576))))))))

(assert (=> b!102154 (=> res!49404 e!56664)))

(declare-fun b!102155 () Bool)

(assert (=> b!102155 (= e!56664 (inv!1998 (right!1584 (right!1584 (c!24694 input!576)))))))

(assert (= (and d!24341 c!24829) b!102153))

(assert (= (and d!24341 (not c!24829)) b!102154))

(assert (= (and b!102154 (not res!49404)) b!102155))

(declare-fun m!88524 () Bool)

(assert (=> b!102153 m!88524))

(declare-fun m!88526 () Bool)

(assert (=> b!102155 m!88526))

(assert (=> b!102062 d!24341))

(declare-fun b!102158 () Bool)

(declare-fun e!56666 () List!1648)

(assert (=> b!102158 (= e!56666 (list!680 (xs!3101 (c!24694 (_2!1098 lt!28209)))))))

(declare-fun b!102159 () Bool)

(assert (=> b!102159 (= e!56666 (++!258 (list!677 (left!1254 (c!24694 (_2!1098 lt!28209)))) (list!677 (right!1584 (c!24694 (_2!1098 lt!28209))))))))

(declare-fun b!102157 () Bool)

(declare-fun e!56665 () List!1648)

(assert (=> b!102157 (= e!56665 e!56666)))

(declare-fun c!24831 () Bool)

(assert (=> b!102157 (= c!24831 ((_ is Leaf!829) (c!24694 (_2!1098 lt!28209))))))

(declare-fun b!102156 () Bool)

(assert (=> b!102156 (= e!56665 Nil!1642)))

(declare-fun d!24343 () Bool)

(declare-fun c!24830 () Bool)

(assert (=> d!24343 (= c!24830 ((_ is Empty!514) (c!24694 (_2!1098 lt!28209))))))

(assert (=> d!24343 (= (list!677 (c!24694 (_2!1098 lt!28209))) e!56665)))

(assert (= (and d!24343 c!24830) b!102156))

(assert (= (and d!24343 (not c!24830)) b!102157))

(assert (= (and b!102157 c!24831) b!102158))

(assert (= (and b!102157 (not c!24831)) b!102159))

(declare-fun m!88528 () Bool)

(assert (=> b!102158 m!88528))

(declare-fun m!88530 () Bool)

(assert (=> b!102159 m!88530))

(declare-fun m!88532 () Bool)

(assert (=> b!102159 m!88532))

(assert (=> b!102159 m!88530))

(assert (=> b!102159 m!88532))

(declare-fun m!88534 () Bool)

(assert (=> b!102159 m!88534))

(assert (=> d!24235 d!24343))

(declare-fun d!24345 () Bool)

(assert (=> d!24345 (= (get!419 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))) (v!12986 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))))))

(assert (=> b!101949 d!24345))

(declare-fun b!102205 () Bool)

(declare-fun res!49441 () Bool)

(declare-fun e!56683 () Bool)

(assert (=> b!102205 (=> (not res!49441) (not e!56683))))

(declare-fun lt!28405 () Option!186)

(declare-fun apply!267 (TokenValueInjection!522 BalanceConc!1032) TokenValue!349)

(declare-fun seqFromList!203 (List!1648) BalanceConc!1032)

(assert (=> b!102205 (= res!49441 (= (value!13121 (_1!1104 (get!419 lt!28405))) (apply!267 (transformation!359 (rule!862 (_1!1104 (get!419 lt!28405)))) (seqFromList!203 (originalCharacters!404 (_1!1104 (get!419 lt!28405)))))))))

(declare-fun b!102206 () Bool)

(declare-fun res!49442 () Bool)

(assert (=> b!102206 (=> (not res!49442) (not e!56683))))

(declare-fun charsOf!86 (Token!466) BalanceConc!1032)

(assert (=> b!102206 (= res!49442 (= (++!258 (list!672 (charsOf!86 (_1!1104 (get!419 lt!28405)))) (_2!1104 (get!419 lt!28405))) (list!672 (BalanceConc!1033 Empty!514))))))

(declare-fun b!102207 () Bool)

(declare-fun res!49444 () Bool)

(assert (=> b!102207 (=> (not res!49444) (not e!56683))))

(declare-fun matchR!47 (Regex!427 List!1648) Bool)

(assert (=> b!102207 (= res!49444 (matchR!47 (regex!359 (rule!862 (_1!1104 (get!419 lt!28405)))) (list!672 (charsOf!86 (_1!1104 (get!419 lt!28405))))))))

(declare-fun d!24347 () Bool)

(declare-fun e!56684 () Bool)

(assert (=> d!24347 e!56684))

(declare-fun res!49440 () Bool)

(assert (=> d!24347 (=> res!49440 e!56684)))

(declare-fun isEmpty!748 (Option!186) Bool)

(assert (=> d!24347 (= res!49440 (isEmpty!748 lt!28405))))

(declare-fun e!56682 () Option!186)

(assert (=> d!24347 (= lt!28405 e!56682)))

(declare-fun c!24837 () Bool)

(assert (=> d!24347 (= c!24837 (and ((_ is Cons!1644) rules!1152) ((_ is Nil!1644) (t!21299 rules!1152))))))

(declare-fun lt!28406 () Unit!1096)

(declare-fun lt!28407 () Unit!1096)

(assert (=> d!24347 (= lt!28406 lt!28407)))

(assert (=> d!24347 (isPrefix!45 (list!672 (BalanceConc!1033 Empty!514)) (list!672 (BalanceConc!1033 Empty!514)))))

(assert (=> d!24347 (= lt!28407 (lemmaIsPrefixRefl!45 (list!672 (BalanceConc!1033 Empty!514)) (list!672 (BalanceConc!1033 Empty!514))))))

(assert (=> d!24347 (rulesValidInductive!76 thiss!11428 rules!1152)))

(assert (=> d!24347 (= (maxPrefix!87 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))) lt!28405)))

(declare-fun b!102208 () Bool)

(declare-fun lt!28408 () Option!186)

(declare-fun lt!28409 () Option!186)

(assert (=> b!102208 (= e!56682 (ite (and ((_ is None!185) lt!28408) ((_ is None!185) lt!28409)) None!185 (ite ((_ is None!185) lt!28409) lt!28408 (ite ((_ is None!185) lt!28408) lt!28409 (ite (>= (size!1448 (_1!1104 (v!12986 lt!28408))) (size!1448 (_1!1104 (v!12986 lt!28409)))) lt!28408 lt!28409)))))))

(declare-fun call!4430 () Option!186)

(assert (=> b!102208 (= lt!28408 call!4430)))

(assert (=> b!102208 (= lt!28409 (maxPrefix!87 thiss!11428 (t!21299 rules!1152) (list!672 (BalanceConc!1033 Empty!514))))))

(declare-fun b!102209 () Bool)

(assert (=> b!102209 (= e!56682 call!4430)))

(declare-fun b!102210 () Bool)

(declare-fun res!49446 () Bool)

(assert (=> b!102210 (=> (not res!49446) (not e!56683))))

(assert (=> b!102210 (= res!49446 (< (size!1454 (_2!1104 (get!419 lt!28405))) (size!1454 (list!672 (BalanceConc!1033 Empty!514)))))))

(declare-fun b!102211 () Bool)

(declare-fun res!49445 () Bool)

(assert (=> b!102211 (=> (not res!49445) (not e!56683))))

(assert (=> b!102211 (= res!49445 (= (list!672 (charsOf!86 (_1!1104 (get!419 lt!28405)))) (originalCharacters!404 (_1!1104 (get!419 lt!28405)))))))

(declare-fun bm!4425 () Bool)

(declare-fun maxPrefixOneRule!43 (LexerInterface!251 Rule!518 List!1648) Option!186)

(assert (=> bm!4425 (= call!4430 (maxPrefixOneRule!43 thiss!11428 (h!7041 rules!1152) (list!672 (BalanceConc!1033 Empty!514))))))

(declare-fun b!102212 () Bool)

(declare-fun contains!269 (List!1650 Rule!518) Bool)

(assert (=> b!102212 (= e!56683 (contains!269 rules!1152 (rule!862 (_1!1104 (get!419 lt!28405)))))))

(declare-fun b!102213 () Bool)

(assert (=> b!102213 (= e!56684 e!56683)))

(declare-fun res!49443 () Bool)

(assert (=> b!102213 (=> (not res!49443) (not e!56683))))

(assert (=> b!102213 (= res!49443 (isDefined!60 lt!28405))))

(assert (= (and d!24347 c!24837) b!102209))

(assert (= (and d!24347 (not c!24837)) b!102208))

(assert (= (or b!102209 b!102208) bm!4425))

(assert (= (and d!24347 (not res!49440)) b!102213))

(assert (= (and b!102213 res!49443) b!102211))

(assert (= (and b!102211 res!49445) b!102210))

(assert (= (and b!102210 res!49446) b!102206))

(assert (= (and b!102206 res!49442) b!102205))

(assert (= (and b!102205 res!49441) b!102207))

(assert (= (and b!102207 res!49444) b!102212))

(declare-fun m!88568 () Bool)

(assert (=> b!102206 m!88568))

(declare-fun m!88570 () Bool)

(assert (=> b!102206 m!88570))

(assert (=> b!102206 m!88570))

(declare-fun m!88572 () Bool)

(assert (=> b!102206 m!88572))

(assert (=> b!102206 m!88572))

(declare-fun m!88574 () Bool)

(assert (=> b!102206 m!88574))

(assert (=> b!102208 m!87824))

(assert (=> b!102208 m!88458))

(assert (=> b!102212 m!88568))

(declare-fun m!88576 () Bool)

(assert (=> b!102212 m!88576))

(assert (=> bm!4425 m!87824))

(declare-fun m!88578 () Bool)

(assert (=> bm!4425 m!88578))

(assert (=> b!102210 m!88568))

(declare-fun m!88580 () Bool)

(assert (=> b!102210 m!88580))

(assert (=> b!102210 m!87824))

(assert (=> b!102210 m!88260))

(assert (=> b!102211 m!88568))

(assert (=> b!102211 m!88570))

(assert (=> b!102211 m!88570))

(assert (=> b!102211 m!88572))

(declare-fun m!88582 () Bool)

(assert (=> d!24347 m!88582))

(assert (=> d!24347 m!87824))

(assert (=> d!24347 m!87824))

(declare-fun m!88584 () Bool)

(assert (=> d!24347 m!88584))

(assert (=> d!24347 m!87824))

(assert (=> d!24347 m!87824))

(declare-fun m!88586 () Bool)

(assert (=> d!24347 m!88586))

(assert (=> d!24347 m!88212))

(declare-fun m!88588 () Bool)

(assert (=> b!102213 m!88588))

(assert (=> b!102207 m!88568))

(assert (=> b!102207 m!88570))

(assert (=> b!102207 m!88570))

(assert (=> b!102207 m!88572))

(assert (=> b!102207 m!88572))

(declare-fun m!88590 () Bool)

(assert (=> b!102207 m!88590))

(assert (=> b!102205 m!88568))

(declare-fun m!88592 () Bool)

(assert (=> b!102205 m!88592))

(assert (=> b!102205 m!88592))

(declare-fun m!88594 () Bool)

(assert (=> b!102205 m!88594))

(assert (=> b!101949 d!24347))

(assert (=> b!101949 d!24125))

(declare-fun d!24357 () Bool)

(assert (=> d!24357 (= (get!418 lt!28290) (v!12982 lt!28290))))

(assert (=> b!101949 d!24357))

(declare-fun d!24361 () Bool)

(assert (=> d!24361 (= (list!672 (_2!1102 (get!418 lt!28290))) (list!677 (c!24694 (_2!1102 (get!418 lt!28290)))))))

(declare-fun bs!9974 () Bool)

(assert (= bs!9974 d!24361))

(declare-fun m!88598 () Bool)

(assert (=> bs!9974 m!88598))

(assert (=> b!101949 d!24361))

(declare-fun d!24363 () Bool)

(declare-fun c!24838 () Bool)

(assert (=> d!24363 (= c!24838 ((_ is Nil!1642) (t!21297 lt!28188)))))

(declare-fun e!56687 () (InoxSet C!1776))

(assert (=> d!24363 (= (content!132 (t!21297 lt!28188)) e!56687)))

(declare-fun b!102220 () Bool)

(assert (=> b!102220 (= e!56687 ((as const (Array C!1776 Bool)) false))))

(declare-fun b!102221 () Bool)

(assert (=> b!102221 (= e!56687 ((_ map or) (store ((as const (Array C!1776 Bool)) false) (h!7039 (t!21297 lt!28188)) true) (content!132 (t!21297 (t!21297 lt!28188)))))))

(assert (= (and d!24363 c!24838) b!102220))

(assert (= (and d!24363 (not c!24838)) b!102221))

(declare-fun m!88600 () Bool)

(assert (=> b!102221 m!88600))

(assert (=> b!102221 m!88480))

(assert (=> b!102014 d!24363))

(declare-fun d!24365 () Bool)

(assert (=> d!24365 (= (list!672 (_2!1098 lt!28322)) (list!677 (c!24694 (_2!1098 lt!28322))))))

(declare-fun bs!9975 () Bool)

(assert (= bs!9975 d!24365))

(declare-fun m!88608 () Bool)

(assert (=> bs!9975 m!88608))

(assert (=> b!102021 d!24365))

(declare-fun d!24367 () Bool)

(assert (=> d!24367 (= (list!672 (_2!1102 (v!12982 lt!28208))) (list!677 (c!24694 (_2!1102 (v!12982 lt!28208)))))))

(declare-fun bs!9976 () Bool)

(assert (= bs!9976 d!24367))

(declare-fun m!88616 () Bool)

(assert (=> bs!9976 m!88616))

(assert (=> b!102021 d!24367))

(declare-fun d!24371 () Bool)

(assert (=> d!24371 (= (isEmpty!741 (list!673 (_1!1098 lt!28209))) ((_ is Nil!1645) (list!673 (_1!1098 lt!28209))))))

(assert (=> d!24239 d!24371))

(assert (=> d!24239 d!24225))

(declare-fun d!24375 () Bool)

(declare-fun lt!28424 () Bool)

(assert (=> d!24375 (= lt!28424 (isEmpty!741 (list!676 (c!24696 (_1!1098 lt!28209)))))))

(assert (=> d!24375 (= lt!28424 (= (size!1460 (c!24696 (_1!1098 lt!28209))) 0))))

(assert (=> d!24375 (= (isEmpty!742 (c!24696 (_1!1098 lt!28209))) lt!28424)))

(declare-fun bs!9977 () Bool)

(assert (= bs!9977 d!24375))

(assert (=> bs!9977 m!88250))

(assert (=> bs!9977 m!88250))

(declare-fun m!88630 () Bool)

(assert (=> bs!9977 m!88630))

(assert (=> bs!9977 m!88200))

(assert (=> d!24239 d!24375))

(declare-fun d!24377 () Bool)

(assert (not d!24377))

(assert (=> b!101999 d!24377))

(declare-fun d!24381 () Bool)

(declare-fun lt!28425 () Int)

(assert (=> d!24381 (>= lt!28425 0)))

(declare-fun e!56695 () Int)

(assert (=> d!24381 (= lt!28425 e!56695)))

(declare-fun c!24840 () Bool)

(assert (=> d!24381 (= c!24840 ((_ is Nil!1642) (list!672 (_2!1098 lt!28209))))))

(assert (=> d!24381 (= (size!1454 (list!672 (_2!1098 lt!28209))) lt!28425)))

(declare-fun b!102232 () Bool)

(assert (=> b!102232 (= e!56695 0)))

(declare-fun b!102233 () Bool)

(assert (=> b!102233 (= e!56695 (+ 1 (size!1454 (t!21297 (list!672 (_2!1098 lt!28209))))))))

(assert (= (and d!24381 c!24840) b!102232))

(assert (= (and d!24381 (not c!24840)) b!102233))

(declare-fun m!88644 () Bool)

(assert (=> b!102233 m!88644))

(assert (=> d!24229 d!24381))

(assert (=> d!24229 d!24235))

(declare-fun d!24385 () Bool)

(declare-fun lt!28426 () Int)

(assert (=> d!24385 (= lt!28426 (size!1454 (list!677 (c!24694 (_2!1098 lt!28209)))))))

(assert (=> d!24385 (= lt!28426 (ite ((_ is Empty!514) (c!24694 (_2!1098 lt!28209))) 0 (ite ((_ is Leaf!829) (c!24694 (_2!1098 lt!28209))) (csize!1259 (c!24694 (_2!1098 lt!28209))) (csize!1258 (c!24694 (_2!1098 lt!28209))))))))

(assert (=> d!24385 (= (size!1458 (c!24694 (_2!1098 lt!28209))) lt!28426)))

(declare-fun bs!9978 () Bool)

(assert (= bs!9978 d!24385))

(assert (=> bs!9978 m!88270))

(assert (=> bs!9978 m!88270))

(declare-fun m!88646 () Bool)

(assert (=> bs!9978 m!88646))

(assert (=> d!24229 d!24385))

(declare-fun d!24387 () Bool)

(declare-fun lt!28427 () Int)

(assert (=> d!24387 (>= lt!28427 0)))

(declare-fun e!56696 () Int)

(assert (=> d!24387 (= lt!28427 e!56696)))

(declare-fun c!24841 () Bool)

(assert (=> d!24387 (= c!24841 ((_ is Nil!1642) (t!21297 lt!28188)))))

(assert (=> d!24387 (= (size!1454 (t!21297 lt!28188)) lt!28427)))

(declare-fun b!102234 () Bool)

(assert (=> b!102234 (= e!56696 0)))

(declare-fun b!102235 () Bool)

(assert (=> b!102235 (= e!56696 (+ 1 (size!1454 (t!21297 (t!21297 lt!28188)))))))

(assert (= (and d!24387 c!24841) b!102234))

(assert (= (and d!24387 (not c!24841)) b!102235))

(assert (=> b!102235 m!88486))

(assert (=> b!101923 d!24387))

(declare-fun d!24389 () Bool)

(declare-fun choose!1395 (Int) Bool)

(assert (=> d!24389 (= (Forall!70 lambda!1867) (choose!1395 lambda!1867))))

(declare-fun bs!9979 () Bool)

(assert (= bs!9979 d!24389))

(declare-fun m!88648 () Bool)

(assert (=> bs!9979 m!88648))

(assert (=> d!24233 d!24389))

(declare-fun d!24397 () Bool)

(declare-fun lt!28428 () Int)

(assert (=> d!24397 (>= lt!28428 0)))

(declare-fun e!56698 () Int)

(assert (=> d!24397 (= lt!28428 e!56698)))

(declare-fun c!24842 () Bool)

(assert (=> d!24397 (= c!24842 ((_ is Nil!1645) (_1!1101 lt!28309)))))

(assert (=> d!24397 (= (size!1459 (_1!1101 lt!28309)) lt!28428)))

(declare-fun b!102237 () Bool)

(assert (=> b!102237 (= e!56698 0)))

(declare-fun b!102238 () Bool)

(assert (=> b!102238 (= e!56698 (+ 1 (size!1459 (t!21300 (_1!1101 lt!28309)))))))

(assert (= (and d!24397 c!24842) b!102237))

(assert (= (and d!24397 (not c!24842)) b!102238))

(declare-fun m!88652 () Bool)

(assert (=> b!102238 m!88652))

(assert (=> d!24227 d!24397))

(assert (=> d!24227 d!24347))

(declare-fun d!24401 () Bool)

(declare-fun lt!28430 () Bool)

(assert (=> d!24401 (= lt!28430 (isEmpty!741 (list!673 (_1!1098 lt!28322))))))

(assert (=> d!24401 (= lt!28430 (isEmpty!742 (c!24696 (_1!1098 lt!28322))))))

(assert (=> d!24401 (= (isEmpty!736 (_1!1098 lt!28322)) lt!28430)))

(declare-fun bs!9981 () Bool)

(assert (= bs!9981 d!24401))

(assert (=> bs!9981 m!88326))

(assert (=> bs!9981 m!88326))

(declare-fun m!88656 () Bool)

(assert (=> bs!9981 m!88656))

(declare-fun m!88660 () Bool)

(assert (=> bs!9981 m!88660))

(assert (=> b!102025 d!24401))

(declare-fun d!24405 () Bool)

(declare-fun res!49462 () Bool)

(declare-fun e!56699 () Bool)

(assert (=> d!24405 (=> res!49462 e!56699)))

(assert (=> d!24405 (= res!49462 ((_ is Nil!1644) (t!21299 rules!1152)))))

(assert (=> d!24405 (= (noDuplicateTag!99 thiss!11428 (t!21299 rules!1152) (Cons!1647 (tag!537 (h!7041 rules!1152)) Nil!1647)) e!56699)))

(declare-fun b!102239 () Bool)

(declare-fun e!56700 () Bool)

(assert (=> b!102239 (= e!56699 e!56700)))

(declare-fun res!49463 () Bool)

(assert (=> b!102239 (=> (not res!49463) (not e!56700))))

(assert (=> b!102239 (= res!49463 (not (contains!267 (Cons!1647 (tag!537 (h!7041 rules!1152)) Nil!1647) (tag!537 (h!7041 (t!21299 rules!1152))))))))

(declare-fun b!102240 () Bool)

(assert (=> b!102240 (= e!56700 (noDuplicateTag!99 thiss!11428 (t!21299 (t!21299 rules!1152)) (Cons!1647 (tag!537 (h!7041 (t!21299 rules!1152))) (Cons!1647 (tag!537 (h!7041 rules!1152)) Nil!1647))))))

(assert (= (and d!24405 (not res!49462)) b!102239))

(assert (= (and b!102239 res!49463) b!102240))

(declare-fun m!88668 () Bool)

(assert (=> b!102239 m!88668))

(declare-fun m!88670 () Bool)

(assert (=> b!102240 m!88670))

(assert (=> b!101959 d!24405))

(declare-fun d!24409 () Bool)

(declare-fun c!24843 () Bool)

(assert (=> d!24409 (= c!24843 ((_ is Nil!1642) (t!21297 lt!28187)))))

(declare-fun e!56701 () (InoxSet C!1776))

(assert (=> d!24409 (= (content!132 (t!21297 lt!28187)) e!56701)))

(declare-fun b!102241 () Bool)

(assert (=> b!102241 (= e!56701 ((as const (Array C!1776 Bool)) false))))

(declare-fun b!102242 () Bool)

(assert (=> b!102242 (= e!56701 ((_ map or) (store ((as const (Array C!1776 Bool)) false) (h!7039 (t!21297 lt!28187)) true) (content!132 (t!21297 (t!21297 lt!28187)))))))

(assert (= (and d!24409 c!24843) b!102241))

(assert (= (and d!24409 (not c!24843)) b!102242))

(declare-fun m!88672 () Bool)

(assert (=> b!102242 m!88672))

(declare-fun m!88674 () Bool)

(assert (=> b!102242 m!88674))

(assert (=> b!102016 d!24409))

(declare-fun b!102266 () Bool)

(declare-fun e!56719 () Bool)

(declare-fun tail!174 (List!1648) List!1648)

(assert (=> b!102266 (= e!56719 (isPrefix!45 (tail!174 lt!28294) (tail!174 lt!28296)))))

(declare-fun b!102267 () Bool)

(declare-fun e!56718 () Bool)

(assert (=> b!102267 (= e!56718 (>= (size!1454 lt!28296) (size!1454 lt!28294)))))

(declare-fun d!24411 () Bool)

(assert (=> d!24411 e!56718))

(declare-fun res!49483 () Bool)

(assert (=> d!24411 (=> res!49483 e!56718)))

(declare-fun lt!28436 () Bool)

(assert (=> d!24411 (= res!49483 (not lt!28436))))

(declare-fun e!56717 () Bool)

(assert (=> d!24411 (= lt!28436 e!56717)))

(declare-fun res!49482 () Bool)

(assert (=> d!24411 (=> res!49482 e!56717)))

(assert (=> d!24411 (= res!49482 ((_ is Nil!1642) lt!28294))))

(assert (=> d!24411 (= (isPrefix!45 lt!28294 lt!28296) lt!28436)))

(declare-fun b!102264 () Bool)

(assert (=> b!102264 (= e!56717 e!56719)))

(declare-fun res!49484 () Bool)

(assert (=> b!102264 (=> (not res!49484) (not e!56719))))

(assert (=> b!102264 (= res!49484 (not ((_ is Nil!1642) lt!28296)))))

(declare-fun b!102265 () Bool)

(declare-fun res!49481 () Bool)

(assert (=> b!102265 (=> (not res!49481) (not e!56719))))

(declare-fun head!462 (List!1648) C!1776)

(assert (=> b!102265 (= res!49481 (= (head!462 lt!28294) (head!462 lt!28296)))))

(assert (= (and d!24411 (not res!49482)) b!102264))

(assert (= (and b!102264 res!49484) b!102265))

(assert (= (and b!102265 res!49481) b!102266))

(assert (= (and d!24411 (not res!49483)) b!102267))

(declare-fun m!88692 () Bool)

(assert (=> b!102266 m!88692))

(declare-fun m!88694 () Bool)

(assert (=> b!102266 m!88694))

(assert (=> b!102266 m!88692))

(assert (=> b!102266 m!88694))

(declare-fun m!88696 () Bool)

(assert (=> b!102266 m!88696))

(declare-fun m!88698 () Bool)

(assert (=> b!102267 m!88698))

(declare-fun m!88700 () Bool)

(assert (=> b!102267 m!88700))

(declare-fun m!88702 () Bool)

(assert (=> b!102265 m!88702))

(declare-fun m!88704 () Bool)

(assert (=> b!102265 m!88704))

(assert (=> d!24215 d!24411))

(declare-fun d!24427 () Bool)

(declare-fun lt!28477 () Option!186)

(assert (=> d!24427 (= lt!28477 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))))))

(declare-fun e!56772 () Option!186)

(assert (=> d!24427 (= lt!28477 e!56772)))

(declare-fun c!24872 () Bool)

(assert (=> d!24427 (= c!24872 (and ((_ is Cons!1644) rules!1152) ((_ is Nil!1644) (t!21299 rules!1152))))))

(declare-fun lt!28475 () Unit!1096)

(declare-fun lt!28476 () Unit!1096)

(assert (=> d!24427 (= lt!28475 lt!28476)))

(assert (=> d!24427 (isPrefix!45 (list!672 (BalanceConc!1033 Empty!514)) (list!672 (BalanceConc!1033 Empty!514)))))

(assert (=> d!24427 (= lt!28476 (lemmaIsPrefixRefl!45 (list!672 (BalanceConc!1033 Empty!514)) (list!672 (BalanceConc!1033 Empty!514))))))

(assert (=> d!24427 (rulesValidInductive!76 thiss!11428 rules!1152)))

(assert (=> d!24427 (= (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))) lt!28477)))

(declare-fun bm!4429 () Bool)

(declare-fun call!4434 () Option!186)

(declare-fun maxPrefixOneRuleZipper!7 (LexerInterface!251 Rule!518 List!1648) Option!186)

(assert (=> bm!4429 (= call!4434 (maxPrefixOneRuleZipper!7 thiss!11428 (h!7041 rules!1152) (list!672 (BalanceConc!1033 Empty!514))))))

(declare-fun b!102365 () Bool)

(assert (=> b!102365 (= e!56772 call!4434)))

(declare-fun b!102366 () Bool)

(declare-fun lt!28479 () Option!186)

(declare-fun lt!28478 () Option!186)

(assert (=> b!102366 (= e!56772 (ite (and ((_ is None!185) lt!28479) ((_ is None!185) lt!28478)) None!185 (ite ((_ is None!185) lt!28478) lt!28479 (ite ((_ is None!185) lt!28479) lt!28478 (ite (>= (size!1448 (_1!1104 (v!12986 lt!28479))) (size!1448 (_1!1104 (v!12986 lt!28478)))) lt!28479 lt!28478)))))))

(assert (=> b!102366 (= lt!28479 call!4434)))

(assert (=> b!102366 (= lt!28478 (maxPrefixZipper!11 thiss!11428 (t!21299 rules!1152) (list!672 (BalanceConc!1033 Empty!514))))))

(assert (= (and d!24427 c!24872) b!102365))

(assert (= (and d!24427 (not c!24872)) b!102366))

(assert (= (or b!102365 b!102366) bm!4429))

(assert (=> d!24427 m!87824))

(assert (=> d!24427 m!88222))

(assert (=> d!24427 m!87824))

(assert (=> d!24427 m!87824))

(assert (=> d!24427 m!88584))

(assert (=> d!24427 m!87824))

(assert (=> d!24427 m!87824))

(assert (=> d!24427 m!88586))

(assert (=> d!24427 m!88212))

(assert (=> bm!4429 m!87824))

(declare-fun m!88878 () Bool)

(assert (=> bm!4429 m!88878))

(assert (=> b!102366 m!87824))

(assert (=> b!102366 m!88438))

(assert (=> d!24215 d!24427))

(declare-fun d!24503 () Bool)

(assert (=> d!24503 (= (isDefined!60 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))) (not (isEmpty!748 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514))))))))

(declare-fun bs!9995 () Bool)

(assert (= bs!9995 d!24503))

(assert (=> bs!9995 m!88202))

(declare-fun m!88880 () Bool)

(assert (=> bs!9995 m!88880))

(assert (=> d!24215 d!24503))

(declare-fun d!24505 () Bool)

(assert (=> d!24505 (isPrefix!45 lt!28294 lt!28296)))

(declare-fun lt!28483 () Unit!1096)

(declare-fun choose!1397 (List!1648 List!1648) Unit!1096)

(assert (=> d!24505 (= lt!28483 (choose!1397 lt!28294 lt!28296))))

(assert (=> d!24505 (= (lemmaIsPrefixRefl!45 lt!28294 lt!28296) lt!28483)))

(declare-fun bs!9996 () Bool)

(assert (= bs!9996 d!24505))

(assert (=> bs!9996 m!88218))

(declare-fun m!88904 () Bool)

(assert (=> bs!9996 m!88904))

(assert (=> d!24215 d!24505))

(assert (=> d!24215 d!24299))

(assert (=> d!24215 d!24125))

(declare-fun bs!9999 () Bool)

(declare-fun d!24511 () Bool)

(assert (= bs!9999 (and d!24511 d!24221)))

(declare-fun lambda!1876 () Int)

(assert (=> bs!9999 (= lambda!1876 lambda!1864)))

(assert (=> d!24511 true))

(declare-fun lt!28495 () Bool)

(assert (=> d!24511 (= lt!28495 (forall!220 rules!1152 lambda!1876))))

(declare-fun e!56793 () Bool)

(assert (=> d!24511 (= lt!28495 e!56793)))

(declare-fun res!49546 () Bool)

(assert (=> d!24511 (=> res!49546 e!56793)))

(assert (=> d!24511 (= res!49546 (not ((_ is Cons!1644) rules!1152)))))

(assert (=> d!24511 (= (rulesValidInductive!76 thiss!11428 rules!1152) lt!28495)))

(declare-fun b!102397 () Bool)

(declare-fun e!56792 () Bool)

(assert (=> b!102397 (= e!56793 e!56792)))

(declare-fun res!49547 () Bool)

(assert (=> b!102397 (=> (not res!49547) (not e!56792))))

(declare-fun ruleValid!46 (LexerInterface!251 Rule!518) Bool)

(assert (=> b!102397 (= res!49547 (ruleValid!46 thiss!11428 (h!7041 rules!1152)))))

(declare-fun b!102398 () Bool)

(assert (=> b!102398 (= e!56792 (rulesValidInductive!76 thiss!11428 (t!21299 rules!1152)))))

(assert (= (and d!24511 (not res!49546)) b!102397))

(assert (= (and b!102397 res!49547) b!102398))

(declare-fun m!88946 () Bool)

(assert (=> d!24511 m!88946))

(declare-fun m!88948 () Bool)

(assert (=> b!102397 m!88948))

(assert (=> b!102398 m!88448))

(assert (=> d!24215 d!24511))

(declare-fun d!24525 () Bool)

(assert (=> d!24525 (= (list!680 (xs!3101 (c!24694 input!576))) (innerList!572 (xs!3101 (c!24694 input!576))))))

(assert (=> b!101896 d!24525))

(declare-fun d!24527 () Bool)

(assert (=> d!24527 (= (inv!1999 (xs!3101 (left!1254 (c!24694 input!576)))) (<= (size!1454 (innerList!572 (xs!3101 (left!1254 (c!24694 input!576))))) 2147483647))))

(declare-fun bs!10000 () Bool)

(assert (= bs!10000 d!24527))

(declare-fun m!88950 () Bool)

(assert (=> bs!10000 m!88950))

(assert (=> b!102060 d!24527))

(declare-fun d!24529 () Bool)

(declare-fun e!56794 () Bool)

(assert (=> d!24529 e!56794))

(declare-fun c!24880 () Bool)

(declare-fun lt!28498 () tuple2!1788)

(assert (=> d!24529 (= c!24880 (> (size!1459 (_1!1101 lt!28498)) 0))))

(declare-fun e!56796 () tuple2!1788)

(assert (=> d!24529 (= lt!28498 e!56796)))

(declare-fun c!24881 () Bool)

(declare-fun lt!28496 () Option!186)

(assert (=> d!24529 (= c!24881 ((_ is Some!185) lt!28496))))

(assert (=> d!24529 (= lt!28496 (maxPrefix!87 thiss!11428 rules!1152 (_2!1104 (v!12986 lt!28307))))))

(assert (=> d!24529 (= (lexList!75 thiss!11428 rules!1152 (_2!1104 (v!12986 lt!28307))) lt!28498)))

(declare-fun b!102399 () Bool)

(assert (=> b!102399 (= e!56796 (tuple2!1789 Nil!1645 (_2!1104 (v!12986 lt!28307))))))

(declare-fun b!102400 () Bool)

(declare-fun lt!28497 () tuple2!1788)

(assert (=> b!102400 (= e!56796 (tuple2!1789 (Cons!1645 (_1!1104 (v!12986 lt!28496)) (_1!1101 lt!28497)) (_2!1101 lt!28497)))))

(assert (=> b!102400 (= lt!28497 (lexList!75 thiss!11428 rules!1152 (_2!1104 (v!12986 lt!28496))))))

(declare-fun b!102401 () Bool)

(assert (=> b!102401 (= e!56794 (= (_2!1101 lt!28498) (_2!1104 (v!12986 lt!28307))))))

(declare-fun b!102402 () Bool)

(declare-fun e!56795 () Bool)

(assert (=> b!102402 (= e!56795 (not (isEmpty!741 (_1!1101 lt!28498))))))

(declare-fun b!102403 () Bool)

(assert (=> b!102403 (= e!56794 e!56795)))

(declare-fun res!49548 () Bool)

(assert (=> b!102403 (= res!49548 (< (size!1454 (_2!1101 lt!28498)) (size!1454 (_2!1104 (v!12986 lt!28307)))))))

(assert (=> b!102403 (=> (not res!49548) (not e!56795))))

(assert (= (and d!24529 c!24881) b!102400))

(assert (= (and d!24529 (not c!24881)) b!102399))

(assert (= (and d!24529 c!24880) b!102403))

(assert (= (and d!24529 (not c!24880)) b!102401))

(assert (= (and b!102403 res!49548) b!102402))

(declare-fun m!88952 () Bool)

(assert (=> d!24529 m!88952))

(declare-fun m!88954 () Bool)

(assert (=> d!24529 m!88954))

(declare-fun m!88956 () Bool)

(assert (=> b!102400 m!88956))

(declare-fun m!88958 () Bool)

(assert (=> b!102402 m!88958))

(declare-fun m!88960 () Bool)

(assert (=> b!102403 m!88960))

(declare-fun m!88962 () Bool)

(assert (=> b!102403 m!88962))

(assert (=> b!101977 d!24529))

(declare-fun d!24531 () Bool)

(declare-fun lt!28499 () Int)

(assert (=> d!24531 (>= lt!28499 0)))

(declare-fun e!56797 () Int)

(assert (=> d!24531 (= lt!28499 e!56797)))

(declare-fun c!24882 () Bool)

(assert (=> d!24531 (= c!24882 ((_ is Nil!1642) (list!680 (xs!3101 (c!24694 input!576)))))))

(assert (=> d!24531 (= (size!1454 (list!680 (xs!3101 (c!24694 input!576)))) lt!28499)))

(declare-fun b!102404 () Bool)

(assert (=> b!102404 (= e!56797 0)))

(declare-fun b!102405 () Bool)

(assert (=> b!102405 (= e!56797 (+ 1 (size!1454 (t!21297 (list!680 (xs!3101 (c!24694 input!576)))))))))

(assert (= (and d!24531 c!24882) b!102404))

(assert (= (and d!24531 (not c!24882)) b!102405))

(declare-fun m!88964 () Bool)

(assert (=> b!102405 m!88964))

(assert (=> b!101742 d!24531))

(assert (=> b!101742 d!24525))

(declare-fun d!24533 () Bool)

(assert (=> d!24533 (= (isEmpty!741 (_1!1101 lt!28309)) ((_ is Nil!1645) (_1!1101 lt!28309)))))

(assert (=> b!101979 d!24533))

(declare-fun d!24535 () Bool)

(assert (not d!24535))

(assert (=> b!101965 d!24535))

(declare-fun d!24537 () Bool)

(assert (not d!24537))

(assert (=> b!101965 d!24537))

(declare-fun d!24539 () Bool)

(assert (not d!24539))

(assert (=> b!101965 d!24539))

(declare-fun d!24541 () Bool)

(declare-fun res!49549 () Bool)

(declare-fun e!56798 () Bool)

(assert (=> d!24541 (=> (not res!49549) (not e!56798))))

(assert (=> d!24541 (= res!49549 (= (csize!1258 (right!1584 (c!24694 input!576))) (+ (size!1458 (left!1254 (right!1584 (c!24694 input!576)))) (size!1458 (right!1584 (right!1584 (c!24694 input!576)))))))))

(assert (=> d!24541 (= (inv!1997 (right!1584 (c!24694 input!576))) e!56798)))

(declare-fun b!102406 () Bool)

(declare-fun res!49550 () Bool)

(assert (=> b!102406 (=> (not res!49550) (not e!56798))))

(assert (=> b!102406 (= res!49550 (and (not (= (left!1254 (right!1584 (c!24694 input!576))) Empty!514)) (not (= (right!1584 (right!1584 (c!24694 input!576))) Empty!514))))))

(declare-fun b!102407 () Bool)

(declare-fun res!49551 () Bool)

(assert (=> b!102407 (=> (not res!49551) (not e!56798))))

(assert (=> b!102407 (= res!49551 (= (cheight!725 (right!1584 (c!24694 input!576))) (+ (max!0 (height!52 (left!1254 (right!1584 (c!24694 input!576)))) (height!52 (right!1584 (right!1584 (c!24694 input!576))))) 1)))))

(declare-fun b!102408 () Bool)

(assert (=> b!102408 (= e!56798 (<= 0 (cheight!725 (right!1584 (c!24694 input!576)))))))

(assert (= (and d!24541 res!49549) b!102406))

(assert (= (and b!102406 res!49550) b!102407))

(assert (= (and b!102407 res!49551) b!102408))

(declare-fun m!88966 () Bool)

(assert (=> d!24541 m!88966))

(declare-fun m!88968 () Bool)

(assert (=> d!24541 m!88968))

(declare-fun m!88970 () Bool)

(assert (=> b!102407 m!88970))

(declare-fun m!88972 () Bool)

(assert (=> b!102407 m!88972))

(assert (=> b!102407 m!88970))

(assert (=> b!102407 m!88972))

(declare-fun m!88974 () Bool)

(assert (=> b!102407 m!88974))

(assert (=> b!102004 d!24541))

(declare-fun d!24543 () Bool)

(declare-fun res!49552 () Bool)

(declare-fun e!56799 () Bool)

(assert (=> d!24543 (=> (not res!49552) (not e!56799))))

(assert (=> d!24543 (= res!49552 (<= (size!1454 (list!680 (xs!3101 (right!1584 (c!24694 input!576))))) 512))))

(assert (=> d!24543 (= (inv!1998 (right!1584 (c!24694 input!576))) e!56799)))

(declare-fun b!102409 () Bool)

(declare-fun res!49553 () Bool)

(assert (=> b!102409 (=> (not res!49553) (not e!56799))))

(assert (=> b!102409 (= res!49553 (= (csize!1259 (right!1584 (c!24694 input!576))) (size!1454 (list!680 (xs!3101 (right!1584 (c!24694 input!576)))))))))

(declare-fun b!102410 () Bool)

(assert (=> b!102410 (= e!56799 (and (> (csize!1259 (right!1584 (c!24694 input!576))) 0) (<= (csize!1259 (right!1584 (c!24694 input!576))) 512)))))

(assert (= (and d!24543 res!49552) b!102409))

(assert (= (and b!102409 res!49553) b!102410))

(assert (=> d!24543 m!88416))

(assert (=> d!24543 m!88416))

(declare-fun m!88976 () Bool)

(assert (=> d!24543 m!88976))

(assert (=> b!102409 m!88416))

(assert (=> b!102409 m!88416))

(assert (=> b!102409 m!88976))

(assert (=> b!102006 d!24543))

(declare-fun lt!28502 () List!1651)

(declare-fun b!102422 () Bool)

(declare-fun e!56804 () Bool)

(assert (=> b!102422 (= e!56804 (or (not (= (list!676 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))) Nil!1645)) (= lt!28502 (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))))

(declare-fun b!102419 () Bool)

(declare-fun e!56805 () List!1651)

(assert (=> b!102419 (= e!56805 (list!676 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!102420 () Bool)

(assert (=> b!102420 (= e!56805 (Cons!1645 (h!7042 (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))) (++!260 (t!21300 (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))) (list!676 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))))

(declare-fun d!24545 () Bool)

(assert (=> d!24545 e!56804))

(declare-fun res!49559 () Bool)

(assert (=> d!24545 (=> (not res!49559) (not e!56804))))

(declare-fun content!134 (List!1651) (InoxSet Token!466))

(assert (=> d!24545 (= res!49559 (= (content!134 lt!28502) ((_ map or) (content!134 (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))) (content!134 (list!676 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))))))

(assert (=> d!24545 (= lt!28502 e!56805)))

(declare-fun c!24885 () Bool)

(assert (=> d!24545 (= c!24885 ((_ is Nil!1645) (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))))

(assert (=> d!24545 (= (++!260 (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))) (list!676 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))) lt!28502)))

(declare-fun b!102421 () Bool)

(declare-fun res!49558 () Bool)

(assert (=> b!102421 (=> (not res!49558) (not e!56804))))

(assert (=> b!102421 (= res!49558 (= (size!1459 lt!28502) (+ (size!1459 (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))) (size!1459 (list!676 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))))))

(assert (= (and d!24545 c!24885) b!102419))

(assert (= (and d!24545 (not c!24885)) b!102420))

(assert (= (and d!24545 res!49559) b!102421))

(assert (= (and b!102421 res!49558) b!102422))

(assert (=> b!102420 m!88276))

(declare-fun m!88978 () Bool)

(assert (=> b!102420 m!88978))

(declare-fun m!88980 () Bool)

(assert (=> d!24545 m!88980))

(assert (=> d!24545 m!88274))

(declare-fun m!88982 () Bool)

(assert (=> d!24545 m!88982))

(assert (=> d!24545 m!88276))

(declare-fun m!88984 () Bool)

(assert (=> d!24545 m!88984))

(declare-fun m!88986 () Bool)

(assert (=> b!102421 m!88986))

(assert (=> b!102421 m!88274))

(declare-fun m!88988 () Bool)

(assert (=> b!102421 m!88988))

(assert (=> b!102421 m!88276))

(declare-fun m!88990 () Bool)

(assert (=> b!102421 m!88990))

(assert (=> b!101996 d!24545))

(declare-fun d!24547 () Bool)

(declare-fun c!24886 () Bool)

(assert (=> d!24547 (= c!24886 ((_ is Empty!515) (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))

(declare-fun e!56806 () List!1651)

(assert (=> d!24547 (= (list!676 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))) e!56806)))

(declare-fun b!102423 () Bool)

(assert (=> b!102423 (= e!56806 Nil!1645)))

(declare-fun b!102425 () Bool)

(declare-fun e!56807 () List!1651)

(assert (=> b!102425 (= e!56807 (list!681 (xs!3102 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))))

(declare-fun b!102424 () Bool)

(assert (=> b!102424 (= e!56806 e!56807)))

(declare-fun c!24887 () Bool)

(assert (=> b!102424 (= c!24887 ((_ is Leaf!830) (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!102426 () Bool)

(assert (=> b!102426 (= e!56807 (++!260 (list!676 (left!1255 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))) (list!676 (right!1585 (left!1255 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))))

(assert (= (and d!24547 c!24886) b!102423))

(assert (= (and d!24547 (not c!24886)) b!102424))

(assert (= (and b!102424 c!24887) b!102425))

(assert (= (and b!102424 (not c!24887)) b!102426))

(declare-fun m!88992 () Bool)

(assert (=> b!102425 m!88992))

(declare-fun m!88994 () Bool)

(assert (=> b!102426 m!88994))

(declare-fun m!88996 () Bool)

(assert (=> b!102426 m!88996))

(assert (=> b!102426 m!88994))

(assert (=> b!102426 m!88996))

(declare-fun m!88998 () Bool)

(assert (=> b!102426 m!88998))

(assert (=> b!101996 d!24547))

(declare-fun d!24549 () Bool)

(declare-fun c!24888 () Bool)

(assert (=> d!24549 (= c!24888 ((_ is Empty!515) (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))

(declare-fun e!56808 () List!1651)

(assert (=> d!24549 (= (list!676 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))) e!56808)))

(declare-fun b!102427 () Bool)

(assert (=> b!102427 (= e!56808 Nil!1645)))

(declare-fun b!102429 () Bool)

(declare-fun e!56809 () List!1651)

(assert (=> b!102429 (= e!56809 (list!681 (xs!3102 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))))))

(declare-fun b!102428 () Bool)

(assert (=> b!102428 (= e!56808 e!56809)))

(declare-fun c!24889 () Bool)

(assert (=> b!102428 (= c!24889 ((_ is Leaf!830) (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!102430 () Bool)

(assert (=> b!102430 (= e!56809 (++!260 (list!676 (left!1255 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514))))))) (list!676 (right!1585 (right!1585 (c!24696 (_1!1098 (lexRec!52 thiss!11428 rules!1152 (BalanceConc!1033 Empty!514)))))))))))

(assert (= (and d!24549 c!24888) b!102427))

(assert (= (and d!24549 (not c!24888)) b!102428))

(assert (= (and b!102428 c!24889) b!102429))

(assert (= (and b!102428 (not c!24889)) b!102430))

(declare-fun m!89000 () Bool)

(assert (=> b!102429 m!89000))

(declare-fun m!89002 () Bool)

(assert (=> b!102430 m!89002))

(declare-fun m!89004 () Bool)

(assert (=> b!102430 m!89004))

(assert (=> b!102430 m!89002))

(assert (=> b!102430 m!89004))

(declare-fun m!89006 () Bool)

(assert (=> b!102430 m!89006))

(assert (=> b!101996 d!24549))

(assert (=> d!24221 d!24511))

(declare-fun d!24551 () Bool)

(declare-fun res!49564 () Bool)

(declare-fun e!56814 () Bool)

(assert (=> d!24551 (=> res!49564 e!56814)))

(assert (=> d!24551 (= res!49564 ((_ is Nil!1644) rules!1152))))

(assert (=> d!24551 (= (forall!220 rules!1152 lambda!1864) e!56814)))

(declare-fun b!102435 () Bool)

(declare-fun e!56815 () Bool)

(assert (=> b!102435 (= e!56814 e!56815)))

(declare-fun res!49565 () Bool)

(assert (=> b!102435 (=> (not res!49565) (not e!56815))))

(declare-fun dynLambda!508 (Int Rule!518) Bool)

(assert (=> b!102435 (= res!49565 (dynLambda!508 lambda!1864 (h!7041 rules!1152)))))

(declare-fun b!102436 () Bool)

(assert (=> b!102436 (= e!56815 (forall!220 (t!21299 rules!1152) lambda!1864))))

(assert (= (and d!24551 (not res!49564)) b!102435))

(assert (= (and b!102435 res!49565) b!102436))

(declare-fun b_lambda!1155 () Bool)

(assert (=> (not b_lambda!1155) (not b!102435)))

(declare-fun m!89008 () Bool)

(assert (=> b!102435 m!89008))

(declare-fun m!89010 () Bool)

(assert (=> b!102436 m!89010))

(assert (=> d!24221 d!24551))

(assert (=> b!101943 d!24357))

(assert (=> b!101943 d!24345))

(assert (=> b!101943 d!24347))

(assert (=> b!101943 d!24125))

(declare-fun d!24553 () Bool)

(declare-fun lt!28503 () Int)

(assert (=> d!24553 (>= lt!28503 0)))

(declare-fun e!56816 () Int)

(assert (=> d!24553 (= lt!28503 e!56816)))

(declare-fun c!24890 () Bool)

(assert (=> d!24553 (= c!24890 ((_ is Nil!1642) (t!21297 lt!28212)))))

(assert (=> d!24553 (= (size!1454 (t!21297 lt!28212)) lt!28503)))

(declare-fun b!102437 () Bool)

(assert (=> b!102437 (= e!56816 0)))

(declare-fun b!102438 () Bool)

(assert (=> b!102438 (= e!56816 (+ 1 (size!1454 (t!21297 (t!21297 lt!28212)))))))

(assert (= (and d!24553 c!24890) b!102437))

(assert (= (and d!24553 (not c!24890)) b!102438))

(declare-fun m!89012 () Bool)

(assert (=> b!102438 m!89012))

(assert (=> b!101921 d!24553))

(declare-fun bs!10001 () Bool)

(declare-fun d!24555 () Bool)

(assert (= bs!10001 (and d!24555 d!24159)))

(declare-fun lambda!1877 () Int)

(assert (=> bs!10001 (= (= (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152)))) (toValue!930 (transformation!359 (h!7041 rules!1152)))) (= lambda!1877 lambda!1861))))

(assert (=> d!24555 true))

(assert (=> d!24555 (< (dynLambda!503 order!773 (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152))))) (dynLambda!504 order!775 lambda!1877))))

(assert (=> d!24555 (= (equivClasses!86 (toChars!789 (transformation!359 (h!7041 (t!21299 rules!1152)))) (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152))))) (Forall2!59 lambda!1877))))

(declare-fun bs!10002 () Bool)

(assert (= bs!10002 d!24555))

(declare-fun m!89014 () Bool)

(assert (=> bs!10002 m!89014))

(assert (=> b!101753 d!24555))

(declare-fun d!24557 () Bool)

(assert (=> d!24557 (= (get!419 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))) (v!12986 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (BalanceConc!1033 Empty!514)))))))

(assert (=> b!101945 d!24557))

(assert (=> b!101945 d!24125))

(assert (=> b!101945 d!24427))

(assert (=> b!101945 d!24357))

(assert (=> b!101945 d!24361))

(declare-fun d!24559 () Bool)

(assert (=> d!24559 (= (inv!1987 (tag!537 (h!7041 (t!21299 (t!21299 rules!1152))))) (= (mod (str.len (value!13120 (tag!537 (h!7041 (t!21299 (t!21299 rules!1152)))))) 2) 0))))

(assert (=> b!102028 d!24559))

(declare-fun d!24561 () Bool)

(declare-fun res!49566 () Bool)

(declare-fun e!56817 () Bool)

(assert (=> d!24561 (=> (not res!49566) (not e!56817))))

(assert (=> d!24561 (= res!49566 (semiInverseModEq!91 (toChars!789 (transformation!359 (h!7041 (t!21299 (t!21299 rules!1152))))) (toValue!930 (transformation!359 (h!7041 (t!21299 (t!21299 rules!1152)))))))))

(assert (=> d!24561 (= (inv!1993 (transformation!359 (h!7041 (t!21299 (t!21299 rules!1152))))) e!56817)))

(declare-fun b!102439 () Bool)

(assert (=> b!102439 (= e!56817 (equivClasses!86 (toChars!789 (transformation!359 (h!7041 (t!21299 (t!21299 rules!1152))))) (toValue!930 (transformation!359 (h!7041 (t!21299 (t!21299 rules!1152)))))))))

(assert (= (and d!24561 res!49566) b!102439))

(declare-fun m!89016 () Bool)

(assert (=> d!24561 m!89016))

(declare-fun m!89018 () Bool)

(assert (=> b!102439 m!89018))

(assert (=> b!102028 d!24561))

(declare-fun d!24563 () Bool)

(declare-fun lt!28504 () Int)

(assert (=> d!24563 (>= lt!28504 0)))

(declare-fun e!56818 () Int)

(assert (=> d!24563 (= lt!28504 e!56818)))

(declare-fun c!24891 () Bool)

(assert (=> d!24563 (= c!24891 ((_ is Nil!1642) lt!28297))))

(assert (=> d!24563 (= (size!1454 lt!28297) lt!28504)))

(declare-fun b!102440 () Bool)

(assert (=> b!102440 (= e!56818 0)))

(declare-fun b!102441 () Bool)

(assert (=> b!102441 (= e!56818 (+ 1 (size!1454 (t!21297 lt!28297))))))

(assert (= (and d!24563 c!24891) b!102440))

(assert (= (and d!24563 (not c!24891)) b!102441))

(declare-fun m!89020 () Bool)

(assert (=> b!102441 m!89020))

(assert (=> b!101952 d!24563))

(assert (=> b!101952 d!24387))

(assert (=> b!101952 d!24211))

(declare-fun d!24565 () Bool)

(declare-fun lt!28505 () Int)

(assert (=> d!24565 (>= lt!28505 0)))

(declare-fun e!56819 () Int)

(assert (=> d!24565 (= lt!28505 e!56819)))

(declare-fun c!24892 () Bool)

(assert (=> d!24565 (= c!24892 ((_ is Nil!1642) (innerList!572 (xs!3101 (c!24694 input!576)))))))

(assert (=> d!24565 (= (size!1454 (innerList!572 (xs!3101 (c!24694 input!576)))) lt!28505)))

(declare-fun b!102442 () Bool)

(assert (=> b!102442 (= e!56819 0)))

(declare-fun b!102443 () Bool)

(assert (=> b!102443 (= e!56819 (+ 1 (size!1454 (t!21297 (innerList!572 (xs!3101 (c!24694 input!576)))))))))

(assert (= (and d!24565 c!24892) b!102442))

(assert (= (and d!24565 (not c!24892)) b!102443))

(declare-fun m!89022 () Bool)

(assert (=> b!102443 m!89022))

(assert (=> d!24253 d!24565))

(declare-fun b!102444 () Bool)

(declare-fun res!49569 () Bool)

(declare-fun e!56821 () Bool)

(assert (=> b!102444 (=> (not res!49569) (not e!56821))))

(assert (=> b!102444 (= res!49569 (isBalanced!135 (left!1254 (right!1584 (c!24694 input!576)))))))

(declare-fun b!102446 () Bool)

(declare-fun res!49568 () Bool)

(assert (=> b!102446 (=> (not res!49568) (not e!56821))))

(assert (=> b!102446 (= res!49568 (not (isEmpty!740 (left!1254 (right!1584 (c!24694 input!576))))))))

(declare-fun b!102447 () Bool)

(assert (=> b!102447 (= e!56821 (not (isEmpty!740 (right!1584 (right!1584 (c!24694 input!576))))))))

(declare-fun b!102445 () Bool)

(declare-fun res!49570 () Bool)

(assert (=> b!102445 (=> (not res!49570) (not e!56821))))

(assert (=> b!102445 (= res!49570 (isBalanced!135 (right!1584 (right!1584 (c!24694 input!576)))))))

(declare-fun d!24567 () Bool)

(declare-fun res!49571 () Bool)

(declare-fun e!56820 () Bool)

(assert (=> d!24567 (=> res!49571 e!56820)))

(assert (=> d!24567 (= res!49571 (not ((_ is Node!514) (right!1584 (c!24694 input!576)))))))

(assert (=> d!24567 (= (isBalanced!135 (right!1584 (c!24694 input!576))) e!56820)))

(declare-fun b!102448 () Bool)

(declare-fun res!49572 () Bool)

(assert (=> b!102448 (=> (not res!49572) (not e!56821))))

(assert (=> b!102448 (= res!49572 (<= (- (height!52 (left!1254 (right!1584 (c!24694 input!576)))) (height!52 (right!1584 (right!1584 (c!24694 input!576))))) 1))))

(declare-fun b!102449 () Bool)

(assert (=> b!102449 (= e!56820 e!56821)))

(declare-fun res!49567 () Bool)

(assert (=> b!102449 (=> (not res!49567) (not e!56821))))

(assert (=> b!102449 (= res!49567 (<= (- 1) (- (height!52 (left!1254 (right!1584 (c!24694 input!576)))) (height!52 (right!1584 (right!1584 (c!24694 input!576)))))))))

(assert (= (and d!24567 (not res!49571)) b!102449))

(assert (= (and b!102449 res!49567) b!102448))

(assert (= (and b!102448 res!49572) b!102444))

(assert (= (and b!102444 res!49569) b!102445))

(assert (= (and b!102445 res!49570) b!102446))

(assert (= (and b!102446 res!49568) b!102447))

(declare-fun m!89024 () Bool)

(assert (=> b!102447 m!89024))

(declare-fun m!89026 () Bool)

(assert (=> b!102445 m!89026))

(declare-fun m!89028 () Bool)

(assert (=> b!102446 m!89028))

(declare-fun m!89030 () Bool)

(assert (=> b!102444 m!89030))

(assert (=> b!102449 m!88970))

(assert (=> b!102449 m!88972))

(assert (=> b!102448 m!88970))

(assert (=> b!102448 m!88972))

(assert (=> b!101911 d!24567))

(declare-fun d!24569 () Bool)

(declare-fun res!49573 () Bool)

(declare-fun e!56822 () Bool)

(assert (=> d!24569 (=> (not res!49573) (not e!56822))))

(assert (=> d!24569 (= res!49573 (= (csize!1258 (left!1254 (c!24694 input!576))) (+ (size!1458 (left!1254 (left!1254 (c!24694 input!576)))) (size!1458 (right!1584 (left!1254 (c!24694 input!576)))))))))

(assert (=> d!24569 (= (inv!1997 (left!1254 (c!24694 input!576))) e!56822)))

(declare-fun b!102450 () Bool)

(declare-fun res!49574 () Bool)

(assert (=> b!102450 (=> (not res!49574) (not e!56822))))

(assert (=> b!102450 (= res!49574 (and (not (= (left!1254 (left!1254 (c!24694 input!576))) Empty!514)) (not (= (right!1584 (left!1254 (c!24694 input!576))) Empty!514))))))

(declare-fun b!102451 () Bool)

(declare-fun res!49575 () Bool)

(assert (=> b!102451 (=> (not res!49575) (not e!56822))))

(assert (=> b!102451 (= res!49575 (= (cheight!725 (left!1254 (c!24694 input!576))) (+ (max!0 (height!52 (left!1254 (left!1254 (c!24694 input!576)))) (height!52 (right!1584 (left!1254 (c!24694 input!576))))) 1)))))

(declare-fun b!102452 () Bool)

(assert (=> b!102452 (= e!56822 (<= 0 (cheight!725 (left!1254 (c!24694 input!576)))))))

(assert (= (and d!24569 res!49573) b!102450))

(assert (= (and b!102450 res!49574) b!102451))

(assert (= (and b!102451 res!49575) b!102452))

(declare-fun m!89032 () Bool)

(assert (=> d!24569 m!89032))

(declare-fun m!89034 () Bool)

(assert (=> d!24569 m!89034))

(assert (=> b!102451 m!88496))

(assert (=> b!102451 m!88498))

(assert (=> b!102451 m!88496))

(assert (=> b!102451 m!88498))

(declare-fun m!89036 () Bool)

(assert (=> b!102451 m!89036))

(assert (=> b!102001 d!24569))

(declare-fun d!24571 () Bool)

(declare-fun lt!28506 () Bool)

(assert (=> d!24571 (= lt!28506 (isEmpty!747 (list!677 (right!1584 (c!24694 input!576)))))))

(assert (=> d!24571 (= lt!28506 (= (size!1458 (right!1584 (c!24694 input!576))) 0))))

(assert (=> d!24571 (= (isEmpty!740 (right!1584 (c!24694 input!576))) lt!28506)))

(declare-fun bs!10003 () Bool)

(assert (= bs!10003 d!24571))

(assert (=> bs!10003 m!88180))

(assert (=> bs!10003 m!88180))

(declare-fun m!89038 () Bool)

(assert (=> bs!10003 m!89038))

(assert (=> bs!10003 m!88058))

(assert (=> b!101913 d!24571))

(declare-fun bs!10009 () Bool)

(declare-fun b!102611 () Bool)

(assert (= bs!10009 (and b!102611 d!24233)))

(declare-fun lambda!1887 () Int)

(assert (=> bs!10009 (= lambda!1887 lambda!1867)))

(declare-fun bs!10010 () Bool)

(assert (= bs!10010 (and b!102611 d!24295)))

(assert (=> bs!10010 (= (and (= (toChars!789 (transformation!359 (h!7041 rules!1152))) (toChars!789 (transformation!359 (h!7041 (t!21299 rules!1152))))) (= (toValue!930 (transformation!359 (h!7041 rules!1152))) (toValue!930 (transformation!359 (h!7041 (t!21299 rules!1152)))))) (= lambda!1887 lambda!1868))))

(declare-fun b!102662 () Bool)

(declare-fun e!56919 () Bool)

(assert (=> b!102662 (= e!56919 true)))

(declare-fun b!102661 () Bool)

(declare-fun e!56918 () Bool)

(assert (=> b!102661 (= e!56918 e!56919)))

(assert (=> b!102611 e!56918))

(assert (= b!102661 b!102662))

(assert (= b!102611 b!102661))

(assert (=> b!102662 (< (dynLambda!503 order!773 (toValue!930 (transformation!359 (h!7041 rules!1152)))) (dynLambda!506 order!779 lambda!1887))))

(assert (=> b!102662 (< (dynLambda!505 order!777 (toChars!789 (transformation!359 (h!7041 rules!1152)))) (dynLambda!506 order!779 lambda!1887))))

(declare-fun d!24573 () Bool)

(declare-fun e!56900 () Bool)

(assert (=> d!24573 e!56900))

(declare-fun res!49600 () Bool)

(assert (=> d!24573 (=> (not res!49600) (not e!56900))))

(declare-fun lt!28571 () Option!184)

(assert (=> d!24573 (= res!49600 (= (isDefined!59 lt!28571) (isDefined!60 (maxPrefixOneRule!43 thiss!11428 (h!7041 rules!1152) (list!672 (BalanceConc!1033 Empty!514))))))))

(declare-fun e!56899 () Option!184)

(assert (=> d!24573 (= lt!28571 e!56899)))

(declare-fun c!24904 () Bool)

(declare-datatypes ((tuple2!1796 0))(
  ( (tuple2!1797 (_1!1105 BalanceConc!1032) (_2!1105 BalanceConc!1032)) )
))
(declare-fun lt!28573 () tuple2!1796)

(declare-fun isEmpty!749 (BalanceConc!1032) Bool)

(assert (=> d!24573 (= c!24904 (isEmpty!749 (_1!1105 lt!28573)))))

(declare-fun findLongestMatchWithZipperSequence!6 (Regex!427 BalanceConc!1032) tuple2!1796)

(assert (=> d!24573 (= lt!28573 (findLongestMatchWithZipperSequence!6 (regex!359 (h!7041 rules!1152)) (BalanceConc!1033 Empty!514)))))

(assert (=> d!24573 (ruleValid!46 thiss!11428 (h!7041 rules!1152))))

(assert (=> d!24573 (= (maxPrefixOneRuleZipperSequence!12 thiss!11428 (h!7041 rules!1152) (BalanceConc!1033 Empty!514)) lt!28571)))

(declare-fun b!102610 () Bool)

(assert (=> b!102610 (= e!56899 None!183)))

(assert (=> b!102611 (= e!56899 (Some!183 (tuple2!1791 (Token!467 (apply!267 (transformation!359 (h!7041 rules!1152)) (_1!1105 lt!28573)) (h!7041 rules!1152) (size!1452 (_1!1105 lt!28573)) (list!672 (_1!1105 lt!28573))) (_2!1105 lt!28573))))))

(declare-fun lt!28572 () List!1648)

(assert (=> b!102611 (= lt!28572 (list!672 (BalanceConc!1033 Empty!514)))))

(declare-fun lt!28569 () Unit!1096)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!31 (Regex!427 List!1648) Unit!1096)

(assert (=> b!102611 (= lt!28569 (longestMatchIsAcceptedByMatchOrIsEmpty!31 (regex!359 (h!7041 rules!1152)) lt!28572))))

(declare-fun res!49601 () Bool)

(declare-datatypes ((tuple2!1798 0))(
  ( (tuple2!1799 (_1!1106 List!1648) (_2!1106 List!1648)) )
))
(declare-fun findLongestMatchInner!30 (Regex!427 List!1648 Int List!1648 List!1648 Int) tuple2!1798)

(assert (=> b!102611 (= res!49601 (isEmpty!747 (_1!1106 (findLongestMatchInner!30 (regex!359 (h!7041 rules!1152)) Nil!1642 (size!1454 Nil!1642) lt!28572 lt!28572 (size!1454 lt!28572)))))))

(declare-fun e!56898 () Bool)

(assert (=> b!102611 (=> res!49601 e!56898)))

(assert (=> b!102611 e!56898))

(declare-fun lt!28568 () Unit!1096)

(assert (=> b!102611 (= lt!28568 lt!28569)))

(declare-fun lt!28570 () Unit!1096)

(declare-fun lemmaInv!9 (TokenValueInjection!522) Unit!1096)

(assert (=> b!102611 (= lt!28570 (lemmaInv!9 (transformation!359 (h!7041 rules!1152))))))

(declare-fun lt!28565 () Unit!1096)

(declare-fun ForallOf!6 (Int BalanceConc!1032) Unit!1096)

(assert (=> b!102611 (= lt!28565 (ForallOf!6 lambda!1887 (_1!1105 lt!28573)))))

(declare-fun lt!28567 () Unit!1096)

(assert (=> b!102611 (= lt!28567 (ForallOf!6 lambda!1887 (seqFromList!203 (list!672 (_1!1105 lt!28573)))))))

(declare-fun lt!28566 () Option!184)

(assert (=> b!102611 (= lt!28566 (Some!183 (tuple2!1791 (Token!467 (apply!267 (transformation!359 (h!7041 rules!1152)) (_1!1105 lt!28573)) (h!7041 rules!1152) (size!1452 (_1!1105 lt!28573)) (list!672 (_1!1105 lt!28573))) (_2!1105 lt!28573))))))

(declare-fun lt!28564 () Unit!1096)

(declare-fun lemmaEqSameImage!6 (TokenValueInjection!522 BalanceConc!1032 BalanceConc!1032) Unit!1096)

(assert (=> b!102611 (= lt!28564 (lemmaEqSameImage!6 (transformation!359 (h!7041 rules!1152)) (_1!1105 lt!28573) (seqFromList!203 (list!672 (_1!1105 lt!28573)))))))

(declare-fun b!102612 () Bool)

(declare-fun e!56896 () Bool)

(assert (=> b!102612 (= e!56900 e!56896)))

(declare-fun res!49602 () Bool)

(assert (=> b!102612 (=> res!49602 e!56896)))

(assert (=> b!102612 (= res!49602 (not (isDefined!59 lt!28571)))))

(declare-fun b!102613 () Bool)

(declare-fun e!56895 () Bool)

(assert (=> b!102613 (= e!56896 e!56895)))

(declare-fun res!49603 () Bool)

(assert (=> b!102613 (=> (not res!49603) (not e!56895))))

(assert (=> b!102613 (= res!49603 (= (_1!1102 (get!418 lt!28571)) (_1!1104 (get!419 (maxPrefixOneRule!43 thiss!11428 (h!7041 rules!1152) (list!672 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!102614 () Bool)

(assert (=> b!102614 (= e!56895 (= (list!672 (_2!1102 (get!418 lt!28571))) (_2!1104 (get!419 (maxPrefixOneRule!43 thiss!11428 (h!7041 rules!1152) (list!672 (BalanceConc!1033 Empty!514)))))))))

(declare-fun b!102615 () Bool)

(assert (=> b!102615 (= e!56898 (matchR!47 (regex!359 (h!7041 rules!1152)) (_1!1106 (findLongestMatchInner!30 (regex!359 (h!7041 rules!1152)) Nil!1642 (size!1454 Nil!1642) lt!28572 lt!28572 (size!1454 lt!28572)))))))

(assert (= (and d!24573 c!24904) b!102610))

(assert (= (and d!24573 (not c!24904)) b!102611))

(assert (= (and b!102611 (not res!49601)) b!102615))

(assert (= (and d!24573 res!49600) b!102612))

(assert (= (and b!102612 (not res!49602)) b!102613))

(assert (= (and b!102613 res!49603) b!102614))

(declare-fun m!89138 () Bool)

(assert (=> b!102615 m!89138))

(declare-fun m!89140 () Bool)

(assert (=> b!102615 m!89140))

(assert (=> b!102615 m!89138))

(assert (=> b!102615 m!89140))

(declare-fun m!89142 () Bool)

(assert (=> b!102615 m!89142))

(declare-fun m!89144 () Bool)

(assert (=> b!102615 m!89144))

(declare-fun m!89146 () Bool)

(assert (=> d!24573 m!89146))

(declare-fun m!89148 () Bool)

(assert (=> d!24573 m!89148))

(assert (=> d!24573 m!87824))

(assert (=> d!24573 m!88578))

(assert (=> d!24573 m!88578))

(declare-fun m!89150 () Bool)

(assert (=> d!24573 m!89150))

(assert (=> d!24573 m!87824))

(declare-fun m!89152 () Bool)

(assert (=> d!24573 m!89152))

(assert (=> d!24573 m!88948))

(assert (=> b!102612 m!89148))

(declare-fun m!89154 () Bool)

(assert (=> b!102613 m!89154))

(assert (=> b!102613 m!87824))

(assert (=> b!102613 m!87824))

(assert (=> b!102613 m!88578))

(assert (=> b!102613 m!88578))

(declare-fun m!89156 () Bool)

(assert (=> b!102613 m!89156))

(declare-fun m!89158 () Bool)

(assert (=> b!102614 m!89158))

(assert (=> b!102614 m!87824))

(assert (=> b!102614 m!88578))

(assert (=> b!102614 m!89154))

(assert (=> b!102614 m!88578))

(assert (=> b!102614 m!89156))

(assert (=> b!102614 m!87824))

(declare-fun m!89160 () Bool)

(assert (=> b!102611 m!89160))

(declare-fun m!89162 () Bool)

(assert (=> b!102611 m!89162))

(declare-fun m!89164 () Bool)

(assert (=> b!102611 m!89164))

(declare-fun m!89166 () Bool)

(assert (=> b!102611 m!89166))

(assert (=> b!102611 m!89138))

(assert (=> b!102611 m!89140))

(assert (=> b!102611 m!89142))

(assert (=> b!102611 m!89138))

(declare-fun m!89168 () Bool)

(assert (=> b!102611 m!89168))

(assert (=> b!102611 m!89162))

(declare-fun m!89170 () Bool)

(assert (=> b!102611 m!89170))

(declare-fun m!89172 () Bool)

(assert (=> b!102611 m!89172))

(assert (=> b!102611 m!89140))

(assert (=> b!102611 m!89162))

(declare-fun m!89174 () Bool)

(assert (=> b!102611 m!89174))

(declare-fun m!89176 () Bool)

(assert (=> b!102611 m!89176))

(assert (=> b!102611 m!89160))

(declare-fun m!89178 () Bool)

(assert (=> b!102611 m!89178))

(assert (=> b!102611 m!87824))

(assert (=> bm!4415 d!24573))

(declare-fun d!24601 () Bool)

(declare-fun c!24905 () Bool)

(assert (=> d!24601 (= c!24905 ((_ is Empty!515) (c!24696 (_1!1098 lt!28209))))))

(declare-fun e!56920 () List!1651)

(assert (=> d!24601 (= (list!676 (c!24696 (_1!1098 lt!28209))) e!56920)))

(declare-fun b!102663 () Bool)

(assert (=> b!102663 (= e!56920 Nil!1645)))

(declare-fun b!102665 () Bool)

(declare-fun e!56921 () List!1651)

(assert (=> b!102665 (= e!56921 (list!681 (xs!3102 (c!24696 (_1!1098 lt!28209)))))))

(declare-fun b!102664 () Bool)

(assert (=> b!102664 (= e!56920 e!56921)))

(declare-fun c!24906 () Bool)

(assert (=> b!102664 (= c!24906 ((_ is Leaf!830) (c!24696 (_1!1098 lt!28209))))))

(declare-fun b!102666 () Bool)

(assert (=> b!102666 (= e!56921 (++!260 (list!676 (left!1255 (c!24696 (_1!1098 lt!28209)))) (list!676 (right!1585 (c!24696 (_1!1098 lt!28209))))))))

(assert (= (and d!24601 c!24905) b!102663))

(assert (= (and d!24601 (not c!24905)) b!102664))

(assert (= (and b!102664 c!24906) b!102665))

(assert (= (and b!102664 (not c!24906)) b!102666))

(declare-fun m!89180 () Bool)

(assert (=> b!102665 m!89180))

(declare-fun m!89182 () Bool)

(assert (=> b!102666 m!89182))

(declare-fun m!89184 () Bool)

(assert (=> b!102666 m!89184))

(assert (=> b!102666 m!89182))

(assert (=> b!102666 m!89184))

(declare-fun m!89186 () Bool)

(assert (=> b!102666 m!89186))

(assert (=> d!24225 d!24601))

(assert (=> b!101948 d!24357))

(assert (=> b!101948 d!24557))

(assert (=> b!101948 d!24427))

(assert (=> b!101948 d!24125))

(declare-fun d!24603 () Bool)

(assert (=> d!24603 (= (list!673 lt!28319) (list!676 (c!24696 lt!28319)))))

(declare-fun bs!10012 () Bool)

(assert (= bs!10012 d!24603))

(declare-fun m!89188 () Bool)

(assert (=> bs!10012 m!89188))

(assert (=> b!102019 d!24603))

(declare-fun d!24605 () Bool)

(assert (=> d!24605 (= (list!673 (_1!1098 lt!28207)) (list!676 (c!24696 (_1!1098 lt!28207))))))

(declare-fun bs!10013 () Bool)

(assert (= bs!10013 d!24605))

(declare-fun m!89190 () Bool)

(assert (=> bs!10013 m!89190))

(assert (=> b!102019 d!24605))

(declare-fun d!24607 () Bool)

(declare-fun res!49604 () Bool)

(declare-fun e!56922 () Bool)

(assert (=> d!24607 (=> (not res!49604) (not e!56922))))

(assert (=> d!24607 (= res!49604 (<= (size!1454 (list!680 (xs!3101 (left!1254 (c!24694 input!576))))) 512))))

(assert (=> d!24607 (= (inv!1998 (left!1254 (c!24694 input!576))) e!56922)))

(declare-fun b!102667 () Bool)

(declare-fun res!49605 () Bool)

(assert (=> b!102667 (=> (not res!49605) (not e!56922))))

(assert (=> b!102667 (= res!49605 (= (csize!1259 (left!1254 (c!24694 input!576))) (size!1454 (list!680 (xs!3101 (left!1254 (c!24694 input!576)))))))))

(declare-fun b!102668 () Bool)

(assert (=> b!102668 (= e!56922 (and (> (csize!1259 (left!1254 (c!24694 input!576))) 0) (<= (csize!1259 (left!1254 (c!24694 input!576))) 512)))))

(assert (= (and d!24607 res!49604) b!102667))

(assert (= (and b!102667 res!49605) b!102668))

(assert (=> d!24607 m!88408))

(assert (=> d!24607 m!88408))

(declare-fun m!89192 () Bool)

(assert (=> d!24607 m!89192))

(assert (=> b!102667 m!88408))

(assert (=> b!102667 m!88408))

(assert (=> b!102667 m!89192))

(assert (=> b!102003 d!24607))

(declare-fun d!24609 () Bool)

(declare-fun lt!28574 () Int)

(assert (=> d!24609 (= lt!28574 (size!1454 (list!672 (_2!1098 lt!28322))))))

(assert (=> d!24609 (= lt!28574 (size!1458 (c!24694 (_2!1098 lt!28322))))))

(assert (=> d!24609 (= (size!1452 (_2!1098 lt!28322)) lt!28574)))

(declare-fun bs!10014 () Bool)

(assert (= bs!10014 d!24609))

(assert (=> bs!10014 m!88332))

(assert (=> bs!10014 m!88332))

(declare-fun m!89194 () Bool)

(assert (=> bs!10014 m!89194))

(declare-fun m!89196 () Bool)

(assert (=> bs!10014 m!89196))

(assert (=> b!102020 d!24609))

(declare-fun d!24611 () Bool)

(declare-fun lt!28575 () Int)

(assert (=> d!24611 (= lt!28575 (size!1454 (list!672 (_2!1102 (v!12982 lt!28208)))))))

(assert (=> d!24611 (= lt!28575 (size!1458 (c!24694 (_2!1102 (v!12982 lt!28208)))))))

(assert (=> d!24611 (= (size!1452 (_2!1102 (v!12982 lt!28208))) lt!28575)))

(declare-fun bs!10015 () Bool)

(assert (= bs!10015 d!24611))

(assert (=> bs!10015 m!88328))

(assert (=> bs!10015 m!88328))

(declare-fun m!89198 () Bool)

(assert (=> bs!10015 m!89198))

(declare-fun m!89200 () Bool)

(assert (=> bs!10015 m!89200))

(assert (=> b!102020 d!24611))

(assert (=> b!101915 d!24333))

(assert (=> b!101915 d!24335))

(declare-fun d!24613 () Bool)

(assert (=> d!24613 (= (list!673 (_1!1098 lt!28322)) (list!676 (c!24696 (_1!1098 lt!28322))))))

(declare-fun bs!10016 () Bool)

(assert (= bs!10016 d!24613))

(declare-fun m!89202 () Bool)

(assert (=> bs!10016 m!89202))

(assert (=> b!102022 d!24613))

(declare-fun d!24615 () Bool)

(declare-fun e!56923 () Bool)

(assert (=> d!24615 e!56923))

(declare-fun c!24907 () Bool)

(declare-fun lt!28578 () tuple2!1788)

(assert (=> d!24615 (= c!24907 (> (size!1459 (_1!1101 lt!28578)) 0))))

(declare-fun e!56925 () tuple2!1788)

(assert (=> d!24615 (= lt!28578 e!56925)))

(declare-fun c!24908 () Bool)

(declare-fun lt!28576 () Option!186)

(assert (=> d!24615 (= c!24908 ((_ is Some!185) lt!28576))))

(assert (=> d!24615 (= lt!28576 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208)))))))

(assert (=> d!24615 (= (lexList!75 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208)))) lt!28578)))

(declare-fun b!102669 () Bool)

(assert (=> b!102669 (= e!56925 (tuple2!1789 Nil!1645 (list!672 (_2!1102 (v!12982 lt!28208)))))))

(declare-fun b!102670 () Bool)

(declare-fun lt!28577 () tuple2!1788)

(assert (=> b!102670 (= e!56925 (tuple2!1789 (Cons!1645 (_1!1104 (v!12986 lt!28576)) (_1!1101 lt!28577)) (_2!1101 lt!28577)))))

(assert (=> b!102670 (= lt!28577 (lexList!75 thiss!11428 rules!1152 (_2!1104 (v!12986 lt!28576))))))

(declare-fun b!102671 () Bool)

(assert (=> b!102671 (= e!56923 (= (_2!1101 lt!28578) (list!672 (_2!1102 (v!12982 lt!28208)))))))

(declare-fun b!102672 () Bool)

(declare-fun e!56924 () Bool)

(assert (=> b!102672 (= e!56924 (not (isEmpty!741 (_1!1101 lt!28578))))))

(declare-fun b!102673 () Bool)

(assert (=> b!102673 (= e!56923 e!56924)))

(declare-fun res!49606 () Bool)

(assert (=> b!102673 (= res!49606 (< (size!1454 (_2!1101 lt!28578)) (size!1454 (list!672 (_2!1102 (v!12982 lt!28208))))))))

(assert (=> b!102673 (=> (not res!49606) (not e!56924))))

(assert (= (and d!24615 c!24908) b!102670))

(assert (= (and d!24615 (not c!24908)) b!102669))

(assert (= (and d!24615 c!24907) b!102673))

(assert (= (and d!24615 (not c!24907)) b!102671))

(assert (= (and b!102673 res!49606) b!102672))

(declare-fun m!89204 () Bool)

(assert (=> d!24615 m!89204))

(assert (=> d!24615 m!88328))

(declare-fun m!89206 () Bool)

(assert (=> d!24615 m!89206))

(declare-fun m!89208 () Bool)

(assert (=> b!102670 m!89208))

(declare-fun m!89210 () Bool)

(assert (=> b!102672 m!89210))

(declare-fun m!89212 () Bool)

(assert (=> b!102673 m!89212))

(assert (=> b!102673 m!88328))

(assert (=> b!102673 m!89198))

(assert (=> b!102022 d!24615))

(assert (=> b!102022 d!24367))

(declare-fun d!24617 () Bool)

(declare-fun choose!1398 (Int) Bool)

(assert (=> d!24617 (= (Forall2!59 lambda!1861) (choose!1398 lambda!1861))))

(declare-fun bs!10017 () Bool)

(assert (= bs!10017 d!24617))

(declare-fun m!89214 () Bool)

(assert (=> bs!10017 m!89214))

(assert (=> d!24159 d!24617))

(declare-fun d!24619 () Bool)

(assert (=> d!24619 (= (inv!1999 (xs!3101 (right!1584 (c!24694 input!576)))) (<= (size!1454 (innerList!572 (xs!3101 (right!1584 (c!24694 input!576))))) 2147483647))))

(declare-fun bs!10018 () Bool)

(assert (= bs!10018 d!24619))

(declare-fun m!89216 () Bool)

(assert (=> bs!10018 m!89216))

(assert (=> b!102063 d!24619))

(declare-fun d!24621 () Bool)

(declare-fun res!49624 () Bool)

(declare-fun e!56930 () Bool)

(assert (=> d!24621 (=> res!49624 e!56930)))

(assert (=> d!24621 (= res!49624 (not ((_ is Node!515) (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208))))))))

(assert (=> d!24621 (= (isBalanced!137 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208)))) e!56930)))

(declare-fun b!102686 () Bool)

(declare-fun res!49619 () Bool)

(declare-fun e!56931 () Bool)

(assert (=> b!102686 (=> (not res!49619) (not e!56931))))

(assert (=> b!102686 (= res!49619 (isBalanced!137 (left!1255 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208))))))))

(declare-fun b!102687 () Bool)

(declare-fun res!49622 () Bool)

(assert (=> b!102687 (=> (not res!49622) (not e!56931))))

(assert (=> b!102687 (= res!49622 (not (isEmpty!742 (left!1255 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208)))))))))

(declare-fun b!102688 () Bool)

(declare-fun res!49620 () Bool)

(assert (=> b!102688 (=> (not res!49620) (not e!56931))))

(declare-fun height!54 (Conc!515) Int)

(assert (=> b!102688 (= res!49620 (<= (- (height!54 (left!1255 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208))))) (height!54 (right!1585 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208)))))) 1))))

(declare-fun b!102689 () Bool)

(assert (=> b!102689 (= e!56931 (not (isEmpty!742 (right!1585 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208)))))))))

(declare-fun b!102690 () Bool)

(declare-fun res!49623 () Bool)

(assert (=> b!102690 (=> (not res!49623) (not e!56931))))

(assert (=> b!102690 (= res!49623 (isBalanced!137 (right!1585 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208))))))))

(declare-fun b!102691 () Bool)

(assert (=> b!102691 (= e!56930 e!56931)))

(declare-fun res!49621 () Bool)

(assert (=> b!102691 (=> (not res!49621) (not e!56931))))

(assert (=> b!102691 (= res!49621 (<= (- 1) (- (height!54 (left!1255 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208))))) (height!54 (right!1585 (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208))))))))))

(assert (= (and d!24621 (not res!49624)) b!102691))

(assert (= (and b!102691 res!49621) b!102688))

(assert (= (and b!102688 res!49620) b!102686))

(assert (= (and b!102686 res!49619) b!102690))

(assert (= (and b!102690 res!49623) b!102687))

(assert (= (and b!102687 res!49622) b!102689))

(declare-fun m!89218 () Bool)

(assert (=> b!102688 m!89218))

(declare-fun m!89220 () Bool)

(assert (=> b!102688 m!89220))

(declare-fun m!89222 () Bool)

(assert (=> b!102687 m!89222))

(assert (=> b!102691 m!89218))

(assert (=> b!102691 m!89220))

(declare-fun m!89224 () Bool)

(assert (=> b!102689 m!89224))

(declare-fun m!89226 () Bool)

(assert (=> b!102690 m!89226))

(declare-fun m!89228 () Bool)

(assert (=> b!102686 m!89228))

(assert (=> d!24255 d!24621))

(declare-fun d!24623 () Bool)

(declare-fun e!56934 () Bool)

(assert (=> d!24623 e!56934))

(declare-fun res!49627 () Bool)

(assert (=> d!24623 (=> (not res!49627) (not e!56934))))

(declare-fun lt!28581 () Conc!515)

(assert (=> d!24623 (= res!49627 (isBalanced!137 lt!28581))))

(declare-fun ++!262 (Conc!515 Conc!515) Conc!515)

(declare-fun fill!31 (Int Token!466) IArray!1031)

(assert (=> d!24623 (= lt!28581 (++!262 (Leaf!830 (fill!31 1 (_1!1102 (v!12982 lt!28208))) 1) (c!24696 (_1!1098 lt!28207))))))

(assert (=> d!24623 (isBalanced!137 (c!24696 (_1!1098 lt!28207)))))

(assert (=> d!24623 (= (prepend!131 (c!24696 (_1!1098 lt!28207)) (_1!1102 (v!12982 lt!28208))) lt!28581)))

(declare-fun b!102694 () Bool)

(assert (=> b!102694 (= e!56934 (= (list!676 lt!28581) (Cons!1645 (_1!1102 (v!12982 lt!28208)) (list!676 (c!24696 (_1!1098 lt!28207))))))))

(assert (= (and d!24623 res!49627) b!102694))

(declare-fun m!89230 () Bool)

(assert (=> d!24623 m!89230))

(declare-fun m!89232 () Bool)

(assert (=> d!24623 m!89232))

(declare-fun m!89234 () Bool)

(assert (=> d!24623 m!89234))

(declare-fun m!89236 () Bool)

(assert (=> d!24623 m!89236))

(declare-fun m!89238 () Bool)

(assert (=> b!102694 m!89238))

(assert (=> b!102694 m!89190))

(assert (=> d!24255 d!24623))

(assert (=> b!102024 d!24365))

(assert (=> b!102024 d!24615))

(assert (=> b!102024 d!24367))

(declare-fun d!24625 () Bool)

(assert (not d!24625))

(assert (=> b!102000 d!24625))

(declare-fun d!24627 () Bool)

(assert (not d!24627))

(assert (=> b!102000 d!24627))

(declare-fun d!24629 () Bool)

(assert (not d!24629))

(assert (=> b!102000 d!24629))

(declare-fun d!24631 () Bool)

(declare-fun e!56935 () Bool)

(assert (=> d!24631 e!56935))

(declare-fun res!49628 () Bool)

(assert (=> d!24631 (=> (not res!49628) (not e!56935))))

(assert (=> d!24631 (= res!49628 (isBalanced!137 (prepend!131 (c!24696 (_1!1098 lt!28320)) (_1!1102 (v!12982 lt!28321)))))))

(declare-fun lt!28582 () BalanceConc!1034)

(assert (=> d!24631 (= lt!28582 (BalanceConc!1035 (prepend!131 (c!24696 (_1!1098 lt!28320)) (_1!1102 (v!12982 lt!28321)))))))

(assert (=> d!24631 (= (prepend!129 (_1!1098 lt!28320) (_1!1102 (v!12982 lt!28321))) lt!28582)))

(declare-fun b!102695 () Bool)

(assert (=> b!102695 (= e!56935 (= (list!673 lt!28582) (Cons!1645 (_1!1102 (v!12982 lt!28321)) (list!673 (_1!1098 lt!28320)))))))

(assert (= (and d!24631 res!49628) b!102695))

(declare-fun m!89240 () Bool)

(assert (=> d!24631 m!89240))

(assert (=> d!24631 m!89240))

(declare-fun m!89242 () Bool)

(assert (=> d!24631 m!89242))

(declare-fun m!89244 () Bool)

(assert (=> b!102695 m!89244))

(declare-fun m!89246 () Bool)

(assert (=> b!102695 m!89246))

(assert (=> b!102026 d!24631))

(declare-fun b!102696 () Bool)

(declare-fun e!56937 () Bool)

(declare-fun e!56936 () Bool)

(assert (=> b!102696 (= e!56937 e!56936)))

(declare-fun res!49629 () Bool)

(declare-fun lt!28585 () tuple2!1782)

(assert (=> b!102696 (= res!49629 (< (size!1452 (_2!1098 lt!28585)) (size!1452 (_2!1102 (v!12982 lt!28321)))))))

(assert (=> b!102696 (=> (not res!49629) (not e!56936))))

(declare-fun b!102697 () Bool)

(assert (=> b!102697 (= e!56937 (= (list!672 (_2!1098 lt!28585)) (list!672 (_2!1102 (v!12982 lt!28321)))))))

(declare-fun b!102698 () Bool)

(declare-fun res!49631 () Bool)

(declare-fun e!56939 () Bool)

(assert (=> b!102698 (=> (not res!49631) (not e!56939))))

(assert (=> b!102698 (= res!49631 (= (list!673 (_1!1098 lt!28585)) (_1!1101 (lexList!75 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28321)))))))))

(declare-fun b!102699 () Bool)

(declare-fun e!56938 () tuple2!1782)

(assert (=> b!102699 (= e!56938 (tuple2!1783 (BalanceConc!1035 Empty!515) (_2!1102 (v!12982 lt!28321))))))

(declare-fun b!102700 () Bool)

(assert (=> b!102700 (= e!56939 (= (list!672 (_2!1098 lt!28585)) (_2!1101 (lexList!75 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28321)))))))))

(declare-fun b!102701 () Bool)

(assert (=> b!102701 (= e!56936 (not (isEmpty!736 (_1!1098 lt!28585))))))

(declare-fun d!24633 () Bool)

(assert (=> d!24633 e!56939))

(declare-fun res!49630 () Bool)

(assert (=> d!24633 (=> (not res!49630) (not e!56939))))

(assert (=> d!24633 (= res!49630 e!56937)))

(declare-fun c!24909 () Bool)

(assert (=> d!24633 (= c!24909 (> (size!1453 (_1!1098 lt!28585)) 0))))

(assert (=> d!24633 (= lt!28585 e!56938)))

(declare-fun c!24910 () Bool)

(declare-fun lt!28584 () Option!184)

(assert (=> d!24633 (= c!24910 ((_ is Some!183) lt!28584))))

(assert (=> d!24633 (= lt!28584 (maxPrefixZipperSequence!50 thiss!11428 rules!1152 (_2!1102 (v!12982 lt!28321))))))

(assert (=> d!24633 (= (lexRec!52 thiss!11428 rules!1152 (_2!1102 (v!12982 lt!28321))) lt!28585)))

(declare-fun b!102702 () Bool)

(declare-fun lt!28583 () tuple2!1782)

(assert (=> b!102702 (= e!56938 (tuple2!1783 (prepend!129 (_1!1098 lt!28583) (_1!1102 (v!12982 lt!28584))) (_2!1098 lt!28583)))))

(assert (=> b!102702 (= lt!28583 (lexRec!52 thiss!11428 rules!1152 (_2!1102 (v!12982 lt!28584))))))

(assert (= (and d!24633 c!24910) b!102702))

(assert (= (and d!24633 (not c!24910)) b!102699))

(assert (= (and d!24633 c!24909) b!102696))

(assert (= (and d!24633 (not c!24909)) b!102697))

(assert (= (and b!102696 res!49629) b!102701))

(assert (= (and d!24633 res!49630) b!102698))

(assert (= (and b!102698 res!49631) b!102700))

(declare-fun m!89248 () Bool)

(assert (=> d!24633 m!89248))

(declare-fun m!89250 () Bool)

(assert (=> d!24633 m!89250))

(declare-fun m!89252 () Bool)

(assert (=> b!102701 m!89252))

(declare-fun m!89254 () Bool)

(assert (=> b!102698 m!89254))

(declare-fun m!89256 () Bool)

(assert (=> b!102698 m!89256))

(assert (=> b!102698 m!89256))

(declare-fun m!89258 () Bool)

(assert (=> b!102698 m!89258))

(declare-fun m!89260 () Bool)

(assert (=> b!102700 m!89260))

(assert (=> b!102700 m!89256))

(assert (=> b!102700 m!89256))

(assert (=> b!102700 m!89258))

(declare-fun m!89262 () Bool)

(assert (=> b!102696 m!89262))

(declare-fun m!89264 () Bool)

(assert (=> b!102696 m!89264))

(declare-fun m!89266 () Bool)

(assert (=> b!102702 m!89266))

(declare-fun m!89268 () Bool)

(assert (=> b!102702 m!89268))

(assert (=> b!102697 m!89260))

(assert (=> b!102697 m!89256))

(assert (=> b!102026 d!24633))

(declare-fun d!24635 () Bool)

(declare-fun lt!28588 () Bool)

(declare-fun content!136 (List!1653) (InoxSet String!2137))

(assert (=> d!24635 (= lt!28588 (select (content!136 Nil!1647) (tag!537 (h!7041 rules!1152))))))

(declare-fun e!56944 () Bool)

(assert (=> d!24635 (= lt!28588 e!56944)))

(declare-fun res!49636 () Bool)

(assert (=> d!24635 (=> (not res!49636) (not e!56944))))

(assert (=> d!24635 (= res!49636 ((_ is Cons!1647) Nil!1647))))

(assert (=> d!24635 (= (contains!267 Nil!1647 (tag!537 (h!7041 rules!1152))) lt!28588)))

(declare-fun b!102707 () Bool)

(declare-fun e!56945 () Bool)

(assert (=> b!102707 (= e!56944 e!56945)))

(declare-fun res!49637 () Bool)

(assert (=> b!102707 (=> res!49637 e!56945)))

(assert (=> b!102707 (= res!49637 (= (h!7044 Nil!1647) (tag!537 (h!7041 rules!1152))))))

(declare-fun b!102708 () Bool)

(assert (=> b!102708 (= e!56945 (contains!267 (t!21302 Nil!1647) (tag!537 (h!7041 rules!1152))))))

(assert (= (and d!24635 res!49636) b!102707))

(assert (= (and b!102707 (not res!49637)) b!102708))

(declare-fun m!89270 () Bool)

(assert (=> d!24635 m!89270))

(declare-fun m!89272 () Bool)

(assert (=> d!24635 m!89272))

(declare-fun m!89274 () Bool)

(assert (=> b!102708 m!89274))

(assert (=> b!101958 d!24635))

(assert (=> d!24149 d!24531))

(assert (=> d!24149 d!24525))

(declare-fun d!24637 () Bool)

(declare-fun c!24911 () Bool)

(assert (=> d!24637 (= c!24911 ((_ is Nil!1642) lt!28297))))

(declare-fun e!56946 () (InoxSet C!1776))

(assert (=> d!24637 (= (content!132 lt!28297) e!56946)))

(declare-fun b!102709 () Bool)

(assert (=> b!102709 (= e!56946 ((as const (Array C!1776 Bool)) false))))

(declare-fun b!102710 () Bool)

(assert (=> b!102710 (= e!56946 ((_ map or) (store ((as const (Array C!1776 Bool)) false) (h!7039 lt!28297) true) (content!132 (t!21297 lt!28297))))))

(assert (= (and d!24637 c!24911) b!102709))

(assert (= (and d!24637 (not c!24911)) b!102710))

(declare-fun m!89276 () Bool)

(assert (=> b!102710 m!89276))

(declare-fun m!89278 () Bool)

(assert (=> b!102710 m!89278))

(assert (=> d!24217 d!24637))

(assert (=> d!24217 d!24363))

(assert (=> d!24217 d!24251))

(assert (=> b!101653 d!24243))

(assert (=> b!101653 d!24245))

(declare-fun d!24639 () Bool)

(declare-fun lt!28589 () Int)

(assert (=> d!24639 (= lt!28589 (size!1459 (list!673 (_1!1098 lt!28322))))))

(assert (=> d!24639 (= lt!28589 (size!1460 (c!24696 (_1!1098 lt!28322))))))

(assert (=> d!24639 (= (size!1453 (_1!1098 lt!28322)) lt!28589)))

(declare-fun bs!10019 () Bool)

(assert (= bs!10019 d!24639))

(assert (=> bs!10019 m!88326))

(assert (=> bs!10019 m!88326))

(declare-fun m!89280 () Bool)

(assert (=> bs!10019 m!89280))

(declare-fun m!89282 () Bool)

(assert (=> bs!10019 m!89282))

(assert (=> d!24257 d!24639))

(declare-fun b!102711 () Bool)

(declare-fun e!56950 () Bool)

(declare-fun e!56948 () Bool)

(assert (=> b!102711 (= e!56950 e!56948)))

(declare-fun res!49641 () Bool)

(assert (=> b!102711 (=> res!49641 e!56948)))

(declare-fun lt!28590 () Option!184)

(assert (=> b!102711 (= res!49641 (not (isDefined!59 lt!28590)))))

(declare-fun b!102712 () Bool)

(declare-fun e!56952 () Bool)

(assert (=> b!102712 (= e!56948 e!56952)))

(declare-fun res!49643 () Bool)

(assert (=> b!102712 (=> (not res!49643) (not e!56952))))

(assert (=> b!102712 (= res!49643 (= (_1!1102 (get!418 lt!28590)) (_1!1104 (get!419 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208))))))))))

(declare-fun b!102714 () Bool)

(declare-fun e!56951 () Bool)

(assert (=> b!102714 (= e!56951 (= (list!672 (_2!1102 (get!418 lt!28590))) (_2!1104 (get!419 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208))))))))))

(declare-fun b!102715 () Bool)

(declare-fun res!49638 () Bool)

(assert (=> b!102715 (=> (not res!49638) (not e!56950))))

(declare-fun e!56947 () Bool)

(assert (=> b!102715 (= res!49638 e!56947)))

(declare-fun res!49639 () Bool)

(assert (=> b!102715 (=> res!49639 e!56947)))

(assert (=> b!102715 (= res!49639 (not (isDefined!59 lt!28590)))))

(declare-fun d!24641 () Bool)

(assert (=> d!24641 e!56950))

(declare-fun res!49640 () Bool)

(assert (=> d!24641 (=> (not res!49640) (not e!56950))))

(assert (=> d!24641 (= res!49640 (= (isDefined!59 lt!28590) (isDefined!60 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208)))))))))

(declare-fun e!56949 () Option!184)

(assert (=> d!24641 (= lt!28590 e!56949)))

(declare-fun c!24912 () Bool)

(assert (=> d!24641 (= c!24912 (and ((_ is Cons!1644) rules!1152) ((_ is Nil!1644) (t!21299 rules!1152))))))

(declare-fun lt!28591 () Unit!1096)

(declare-fun lt!28592 () Unit!1096)

(assert (=> d!24641 (= lt!28591 lt!28592)))

(declare-fun lt!28594 () List!1648)

(declare-fun lt!28596 () List!1648)

(assert (=> d!24641 (isPrefix!45 lt!28594 lt!28596)))

(assert (=> d!24641 (= lt!28592 (lemmaIsPrefixRefl!45 lt!28594 lt!28596))))

(assert (=> d!24641 (= lt!28596 (list!672 (_2!1102 (v!12982 lt!28208))))))

(assert (=> d!24641 (= lt!28594 (list!672 (_2!1102 (v!12982 lt!28208))))))

(assert (=> d!24641 (rulesValidInductive!76 thiss!11428 rules!1152)))

(assert (=> d!24641 (= (maxPrefixZipperSequence!50 thiss!11428 rules!1152 (_2!1102 (v!12982 lt!28208))) lt!28590)))

(declare-fun b!102713 () Bool)

(declare-fun lt!28593 () Option!184)

(declare-fun lt!28595 () Option!184)

(assert (=> b!102713 (= e!56949 (ite (and ((_ is None!183) lt!28593) ((_ is None!183) lt!28595)) None!183 (ite ((_ is None!183) lt!28595) lt!28593 (ite ((_ is None!183) lt!28593) lt!28595 (ite (>= (size!1448 (_1!1102 (v!12982 lt!28593))) (size!1448 (_1!1102 (v!12982 lt!28595)))) lt!28593 lt!28595)))))))

(declare-fun call!4436 () Option!184)

(assert (=> b!102713 (= lt!28593 call!4436)))

(assert (=> b!102713 (= lt!28595 (maxPrefixZipperSequence!50 thiss!11428 (t!21299 rules!1152) (_2!1102 (v!12982 lt!28208))))))

(declare-fun bm!4431 () Bool)

(assert (=> bm!4431 (= call!4436 (maxPrefixOneRuleZipperSequence!12 thiss!11428 (h!7041 rules!1152) (_2!1102 (v!12982 lt!28208))))))

(declare-fun b!102716 () Bool)

(assert (=> b!102716 (= e!56949 call!4436)))

(declare-fun b!102717 () Bool)

(assert (=> b!102717 (= e!56947 e!56951)))

(declare-fun res!49642 () Bool)

(assert (=> b!102717 (=> (not res!49642) (not e!56951))))

(assert (=> b!102717 (= res!49642 (= (_1!1102 (get!418 lt!28590)) (_1!1104 (get!419 (maxPrefixZipper!11 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208))))))))))

(declare-fun b!102718 () Bool)

(assert (=> b!102718 (= e!56952 (= (list!672 (_2!1102 (get!418 lt!28590))) (_2!1104 (get!419 (maxPrefix!87 thiss!11428 rules!1152 (list!672 (_2!1102 (v!12982 lt!28208))))))))))

(assert (= (and d!24641 c!24912) b!102716))

(assert (= (and d!24641 (not c!24912)) b!102713))

(assert (= (or b!102716 b!102713) bm!4431))

(assert (= (and d!24641 res!49640) b!102715))

(assert (= (and b!102715 (not res!49639)) b!102717))

(assert (= (and b!102717 res!49642) b!102714))

(assert (= (and b!102715 res!49638) b!102711))

(assert (= (and b!102711 (not res!49641)) b!102712))

(assert (= (and b!102712 res!49643) b!102718))

(declare-fun m!89284 () Bool)

(assert (=> b!102714 m!89284))

(declare-fun m!89286 () Bool)

(assert (=> b!102714 m!89286))

(declare-fun m!89288 () Bool)

(assert (=> b!102714 m!89288))

(assert (=> b!102714 m!88328))

(assert (=> b!102714 m!89284))

(declare-fun m!89290 () Bool)

(assert (=> b!102714 m!89290))

(assert (=> b!102714 m!88328))

(declare-fun m!89292 () Bool)

(assert (=> b!102713 m!89292))

(assert (=> d!24641 m!88212))

(declare-fun m!89294 () Bool)

(assert (=> d!24641 m!89294))

(assert (=> d!24641 m!89284))

(declare-fun m!89296 () Bool)

(assert (=> d!24641 m!89296))

(declare-fun m!89298 () Bool)

(assert (=> d!24641 m!89298))

(assert (=> d!24641 m!88328))

(declare-fun m!89300 () Bool)

(assert (=> d!24641 m!89300))

(assert (=> d!24641 m!88328))

(assert (=> d!24641 m!89284))

(assert (=> b!102715 m!89300))

(assert (=> b!102717 m!89290))

(assert (=> b!102717 m!88328))

(assert (=> b!102717 m!88328))

(assert (=> b!102717 m!89284))

(assert (=> b!102717 m!89284))

(assert (=> b!102717 m!89286))

(assert (=> b!102712 m!89290))

(assert (=> b!102712 m!88328))

(assert (=> b!102712 m!88328))

(assert (=> b!102712 m!89206))

(assert (=> b!102712 m!89206))

(declare-fun m!89302 () Bool)

(assert (=> b!102712 m!89302))

(declare-fun m!89304 () Bool)

(assert (=> bm!4431 m!89304))

(assert (=> b!102711 m!89300))

(assert (=> b!102718 m!88328))

(assert (=> b!102718 m!89206))

(assert (=> b!102718 m!89206))

(assert (=> b!102718 m!89302))

(assert (=> b!102718 m!89288))

(assert (=> b!102718 m!89290))

(assert (=> b!102718 m!88328))

(assert (=> d!24257 d!24641))

(declare-fun d!24643 () Bool)

(declare-fun c!24913 () Bool)

(assert (=> d!24643 (= c!24913 ((_ is Node!514) (left!1254 (left!1254 (c!24694 input!576)))))))

(declare-fun e!56953 () Bool)

(assert (=> d!24643 (= (inv!1991 (left!1254 (left!1254 (c!24694 input!576)))) e!56953)))

(declare-fun b!102719 () Bool)

(assert (=> b!102719 (= e!56953 (inv!1997 (left!1254 (left!1254 (c!24694 input!576)))))))

(declare-fun b!102720 () Bool)

(declare-fun e!56954 () Bool)

(assert (=> b!102720 (= e!56953 e!56954)))

(declare-fun res!49644 () Bool)

(assert (=> b!102720 (= res!49644 (not ((_ is Leaf!829) (left!1254 (left!1254 (c!24694 input!576))))))))

(assert (=> b!102720 (=> res!49644 e!56954)))

(declare-fun b!102721 () Bool)

(assert (=> b!102721 (= e!56954 (inv!1998 (left!1254 (left!1254 (c!24694 input!576)))))))

(assert (= (and d!24643 c!24913) b!102719))

(assert (= (and d!24643 (not c!24913)) b!102720))

(assert (= (and b!102720 (not res!49644)) b!102721))

(declare-fun m!89306 () Bool)

(assert (=> b!102719 m!89306))

(declare-fun m!89308 () Bool)

(assert (=> b!102721 m!89308))

(assert (=> b!102059 d!24643))

(declare-fun d!24645 () Bool)

(declare-fun c!24914 () Bool)

(assert (=> d!24645 (= c!24914 ((_ is Node!514) (right!1584 (left!1254 (c!24694 input!576)))))))

(declare-fun e!56955 () Bool)

(assert (=> d!24645 (= (inv!1991 (right!1584 (left!1254 (c!24694 input!576)))) e!56955)))

(declare-fun b!102722 () Bool)

(assert (=> b!102722 (= e!56955 (inv!1997 (right!1584 (left!1254 (c!24694 input!576)))))))

(declare-fun b!102723 () Bool)

(declare-fun e!56956 () Bool)

(assert (=> b!102723 (= e!56955 e!56956)))

(declare-fun res!49645 () Bool)

(assert (=> b!102723 (= res!49645 (not ((_ is Leaf!829) (right!1584 (left!1254 (c!24694 input!576))))))))

(assert (=> b!102723 (=> res!49645 e!56956)))

(declare-fun b!102724 () Bool)

(assert (=> b!102724 (= e!56956 (inv!1998 (right!1584 (left!1254 (c!24694 input!576)))))))

(assert (= (and d!24645 c!24914) b!102722))

(assert (= (and d!24645 (not c!24914)) b!102723))

(assert (= (and b!102723 (not res!49645)) b!102724))

(declare-fun m!89310 () Bool)

(assert (=> b!102722 m!89310))

(declare-fun m!89312 () Bool)

(assert (=> b!102724 m!89312))

(assert (=> b!102059 d!24645))

(declare-fun d!24647 () Bool)

(assert (not d!24647))

(assert (=> b!101964 d!24647))

(declare-fun b!102725 () Bool)

(declare-fun e!56957 () Bool)

(assert (=> b!102725 (= e!56957 tp_is_empty!773)))

(declare-fun b!102728 () Bool)

(declare-fun tp!57530 () Bool)

(declare-fun tp!57532 () Bool)

(assert (=> b!102728 (= e!56957 (and tp!57530 tp!57532))))

(declare-fun b!102726 () Bool)

(declare-fun tp!57533 () Bool)

(declare-fun tp!57529 () Bool)

(assert (=> b!102726 (= e!56957 (and tp!57533 tp!57529))))

(assert (=> b!102052 (= tp!57343 e!56957)))

(declare-fun b!102727 () Bool)

(declare-fun tp!57531 () Bool)

(assert (=> b!102727 (= e!56957 tp!57531)))

(assert (= (and b!102052 ((_ is ElementMatch!427) (regOne!1366 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102725))

(assert (= (and b!102052 ((_ is Concat!777) (regOne!1366 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102726))

(assert (= (and b!102052 ((_ is Star!427) (regOne!1366 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102727))

(assert (= (and b!102052 ((_ is Union!427) (regOne!1366 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102728))

(declare-fun b!102729 () Bool)

(declare-fun e!56958 () Bool)

(assert (=> b!102729 (= e!56958 tp_is_empty!773)))

(declare-fun b!102732 () Bool)

(declare-fun tp!57535 () Bool)

(declare-fun tp!57537 () Bool)

(assert (=> b!102732 (= e!56958 (and tp!57535 tp!57537))))

(declare-fun b!102730 () Bool)

(declare-fun tp!57538 () Bool)

(declare-fun tp!57534 () Bool)

(assert (=> b!102730 (= e!56958 (and tp!57538 tp!57534))))

(assert (=> b!102052 (= tp!57339 e!56958)))

(declare-fun b!102731 () Bool)

(declare-fun tp!57536 () Bool)

(assert (=> b!102731 (= e!56958 tp!57536)))

(assert (= (and b!102052 ((_ is ElementMatch!427) (regTwo!1366 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102729))

(assert (= (and b!102052 ((_ is Concat!777) (regTwo!1366 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102730))

(assert (= (and b!102052 ((_ is Star!427) (regTwo!1366 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102731))

(assert (= (and b!102052 ((_ is Union!427) (regTwo!1366 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102732))

(declare-fun b!102733 () Bool)

(declare-fun e!56959 () Bool)

(assert (=> b!102733 (= e!56959 tp_is_empty!773)))

(declare-fun b!102736 () Bool)

(declare-fun tp!57540 () Bool)

(declare-fun tp!57542 () Bool)

(assert (=> b!102736 (= e!56959 (and tp!57540 tp!57542))))

(declare-fun b!102734 () Bool)

(declare-fun tp!57543 () Bool)

(declare-fun tp!57539 () Bool)

(assert (=> b!102734 (= e!56959 (and tp!57543 tp!57539))))

(assert (=> b!102044 (= tp!57333 e!56959)))

(declare-fun b!102735 () Bool)

(declare-fun tp!57541 () Bool)

(assert (=> b!102735 (= e!56959 tp!57541)))

(assert (= (and b!102044 ((_ is ElementMatch!427) (regOne!1366 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102733))

(assert (= (and b!102044 ((_ is Concat!777) (regOne!1366 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102734))

(assert (= (and b!102044 ((_ is Star!427) (regOne!1366 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102735))

(assert (= (and b!102044 ((_ is Union!427) (regOne!1366 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102736))

(declare-fun b!102737 () Bool)

(declare-fun e!56960 () Bool)

(assert (=> b!102737 (= e!56960 tp_is_empty!773)))

(declare-fun b!102740 () Bool)

(declare-fun tp!57545 () Bool)

(declare-fun tp!57547 () Bool)

(assert (=> b!102740 (= e!56960 (and tp!57545 tp!57547))))

(declare-fun b!102738 () Bool)

(declare-fun tp!57548 () Bool)

(declare-fun tp!57544 () Bool)

(assert (=> b!102738 (= e!56960 (and tp!57548 tp!57544))))

(assert (=> b!102044 (= tp!57329 e!56960)))

(declare-fun b!102739 () Bool)

(declare-fun tp!57546 () Bool)

(assert (=> b!102739 (= e!56960 tp!57546)))

(assert (= (and b!102044 ((_ is ElementMatch!427) (regTwo!1366 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102737))

(assert (= (and b!102044 ((_ is Concat!777) (regTwo!1366 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102738))

(assert (= (and b!102044 ((_ is Star!427) (regTwo!1366 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102739))

(assert (= (and b!102044 ((_ is Union!427) (regTwo!1366 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102740))

(declare-fun b!102741 () Bool)

(declare-fun e!56961 () Bool)

(assert (=> b!102741 (= e!56961 tp_is_empty!773)))

(declare-fun b!102744 () Bool)

(declare-fun tp!57550 () Bool)

(declare-fun tp!57552 () Bool)

(assert (=> b!102744 (= e!56961 (and tp!57550 tp!57552))))

(declare-fun b!102742 () Bool)

(declare-fun tp!57553 () Bool)

(declare-fun tp!57549 () Bool)

(assert (=> b!102742 (= e!56961 (and tp!57553 tp!57549))))

(assert (=> b!102053 (= tp!57341 e!56961)))

(declare-fun b!102743 () Bool)

(declare-fun tp!57551 () Bool)

(assert (=> b!102743 (= e!56961 tp!57551)))

(assert (= (and b!102053 ((_ is ElementMatch!427) (reg!756 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102741))

(assert (= (and b!102053 ((_ is Concat!777) (reg!756 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102742))

(assert (= (and b!102053 ((_ is Star!427) (reg!756 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102743))

(assert (= (and b!102053 ((_ is Union!427) (reg!756 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102744))

(declare-fun b!102745 () Bool)

(declare-fun e!56962 () Bool)

(assert (=> b!102745 (= e!56962 tp_is_empty!773)))

(declare-fun b!102748 () Bool)

(declare-fun tp!57555 () Bool)

(declare-fun tp!57557 () Bool)

(assert (=> b!102748 (= e!56962 (and tp!57555 tp!57557))))

(declare-fun b!102746 () Bool)

(declare-fun tp!57558 () Bool)

(declare-fun tp!57554 () Bool)

(assert (=> b!102746 (= e!56962 (and tp!57558 tp!57554))))

(assert (=> b!102054 (= tp!57340 e!56962)))

(declare-fun b!102747 () Bool)

(declare-fun tp!57556 () Bool)

(assert (=> b!102747 (= e!56962 tp!57556)))

(assert (= (and b!102054 ((_ is ElementMatch!427) (regOne!1367 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102745))

(assert (= (and b!102054 ((_ is Concat!777) (regOne!1367 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102746))

(assert (= (and b!102054 ((_ is Star!427) (regOne!1367 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102747))

(assert (= (and b!102054 ((_ is Union!427) (regOne!1367 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102748))

(declare-fun b!102749 () Bool)

(declare-fun e!56963 () Bool)

(assert (=> b!102749 (= e!56963 tp_is_empty!773)))

(declare-fun b!102752 () Bool)

(declare-fun tp!57560 () Bool)

(declare-fun tp!57562 () Bool)

(assert (=> b!102752 (= e!56963 (and tp!57560 tp!57562))))

(declare-fun b!102750 () Bool)

(declare-fun tp!57563 () Bool)

(declare-fun tp!57559 () Bool)

(assert (=> b!102750 (= e!56963 (and tp!57563 tp!57559))))

(assert (=> b!102054 (= tp!57342 e!56963)))

(declare-fun b!102751 () Bool)

(declare-fun tp!57561 () Bool)

(assert (=> b!102751 (= e!56963 tp!57561)))

(assert (= (and b!102054 ((_ is ElementMatch!427) (regTwo!1367 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102749))

(assert (= (and b!102054 ((_ is Concat!777) (regTwo!1367 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102750))

(assert (= (and b!102054 ((_ is Star!427) (regTwo!1367 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102751))

(assert (= (and b!102054 ((_ is Union!427) (regTwo!1367 (regex!359 (h!7041 (t!21299 rules!1152)))))) b!102752))

(declare-fun b!102753 () Bool)

(declare-fun e!56964 () Bool)

(assert (=> b!102753 (= e!56964 tp_is_empty!773)))

(declare-fun b!102756 () Bool)

(declare-fun tp!57565 () Bool)

(declare-fun tp!57567 () Bool)

(assert (=> b!102756 (= e!56964 (and tp!57565 tp!57567))))

(declare-fun b!102754 () Bool)

(declare-fun tp!57568 () Bool)

(declare-fun tp!57564 () Bool)

(assert (=> b!102754 (= e!56964 (and tp!57568 tp!57564))))

(assert (=> b!102036 (= tp!57323 e!56964)))

(declare-fun b!102755 () Bool)

(declare-fun tp!57566 () Bool)

(assert (=> b!102755 (= e!56964 tp!57566)))

(assert (= (and b!102036 ((_ is ElementMatch!427) (regOne!1366 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102753))

(assert (= (and b!102036 ((_ is Concat!777) (regOne!1366 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102754))

(assert (= (and b!102036 ((_ is Star!427) (regOne!1366 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102755))

(assert (= (and b!102036 ((_ is Union!427) (regOne!1366 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102756))

(declare-fun b!102757 () Bool)

(declare-fun e!56965 () Bool)

(assert (=> b!102757 (= e!56965 tp_is_empty!773)))

(declare-fun b!102760 () Bool)

(declare-fun tp!57570 () Bool)

(declare-fun tp!57572 () Bool)

(assert (=> b!102760 (= e!56965 (and tp!57570 tp!57572))))

(declare-fun b!102758 () Bool)

(declare-fun tp!57573 () Bool)

(declare-fun tp!57569 () Bool)

(assert (=> b!102758 (= e!56965 (and tp!57573 tp!57569))))

(assert (=> b!102036 (= tp!57319 e!56965)))

(declare-fun b!102759 () Bool)

(declare-fun tp!57571 () Bool)

(assert (=> b!102759 (= e!56965 tp!57571)))

(assert (= (and b!102036 ((_ is ElementMatch!427) (regTwo!1366 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102757))

(assert (= (and b!102036 ((_ is Concat!777) (regTwo!1366 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102758))

(assert (= (and b!102036 ((_ is Star!427) (regTwo!1366 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102759))

(assert (= (and b!102036 ((_ is Union!427) (regTwo!1366 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102760))

(declare-fun b!102761 () Bool)

(declare-fun e!56966 () Bool)

(assert (=> b!102761 (= e!56966 tp_is_empty!773)))

(declare-fun b!102764 () Bool)

(declare-fun tp!57575 () Bool)

(declare-fun tp!57577 () Bool)

(assert (=> b!102764 (= e!56966 (and tp!57575 tp!57577))))

(declare-fun b!102762 () Bool)

(declare-fun tp!57578 () Bool)

(declare-fun tp!57574 () Bool)

(assert (=> b!102762 (= e!56966 (and tp!57578 tp!57574))))

(assert (=> b!102045 (= tp!57331 e!56966)))

(declare-fun b!102763 () Bool)

(declare-fun tp!57576 () Bool)

(assert (=> b!102763 (= e!56966 tp!57576)))

(assert (= (and b!102045 ((_ is ElementMatch!427) (reg!756 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102761))

(assert (= (and b!102045 ((_ is Concat!777) (reg!756 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102762))

(assert (= (and b!102045 ((_ is Star!427) (reg!756 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102763))

(assert (= (and b!102045 ((_ is Union!427) (reg!756 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102764))

(declare-fun b!102765 () Bool)

(declare-fun e!56967 () Bool)

(assert (=> b!102765 (= e!56967 tp_is_empty!773)))

(declare-fun b!102768 () Bool)

(declare-fun tp!57580 () Bool)

(declare-fun tp!57582 () Bool)

(assert (=> b!102768 (= e!56967 (and tp!57580 tp!57582))))

(declare-fun b!102766 () Bool)

(declare-fun tp!57583 () Bool)

(declare-fun tp!57579 () Bool)

(assert (=> b!102766 (= e!56967 (and tp!57583 tp!57579))))

(assert (=> b!102037 (= tp!57321 e!56967)))

(declare-fun b!102767 () Bool)

(declare-fun tp!57581 () Bool)

(assert (=> b!102767 (= e!56967 tp!57581)))

(assert (= (and b!102037 ((_ is ElementMatch!427) (reg!756 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102765))

(assert (= (and b!102037 ((_ is Concat!777) (reg!756 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102766))

(assert (= (and b!102037 ((_ is Star!427) (reg!756 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102767))

(assert (= (and b!102037 ((_ is Union!427) (reg!756 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102768))

(declare-fun b!102769 () Bool)

(declare-fun e!56968 () Bool)

(assert (=> b!102769 (= e!56968 tp_is_empty!773)))

(declare-fun b!102772 () Bool)

(declare-fun tp!57585 () Bool)

(declare-fun tp!57587 () Bool)

(assert (=> b!102772 (= e!56968 (and tp!57585 tp!57587))))

(declare-fun b!102770 () Bool)

(declare-fun tp!57588 () Bool)

(declare-fun tp!57584 () Bool)

(assert (=> b!102770 (= e!56968 (and tp!57588 tp!57584))))

(assert (=> b!102046 (= tp!57330 e!56968)))

(declare-fun b!102771 () Bool)

(declare-fun tp!57586 () Bool)

(assert (=> b!102771 (= e!56968 tp!57586)))

(assert (= (and b!102046 ((_ is ElementMatch!427) (regOne!1367 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102769))

(assert (= (and b!102046 ((_ is Concat!777) (regOne!1367 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102770))

(assert (= (and b!102046 ((_ is Star!427) (regOne!1367 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102771))

(assert (= (and b!102046 ((_ is Union!427) (regOne!1367 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102772))

(declare-fun b!102773 () Bool)

(declare-fun e!56969 () Bool)

(assert (=> b!102773 (= e!56969 tp_is_empty!773)))

(declare-fun b!102776 () Bool)

(declare-fun tp!57590 () Bool)

(declare-fun tp!57592 () Bool)

(assert (=> b!102776 (= e!56969 (and tp!57590 tp!57592))))

(declare-fun b!102774 () Bool)

(declare-fun tp!57593 () Bool)

(declare-fun tp!57589 () Bool)

(assert (=> b!102774 (= e!56969 (and tp!57593 tp!57589))))

(assert (=> b!102046 (= tp!57332 e!56969)))

(declare-fun b!102775 () Bool)

(declare-fun tp!57591 () Bool)

(assert (=> b!102775 (= e!56969 tp!57591)))

(assert (= (and b!102046 ((_ is ElementMatch!427) (regTwo!1367 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102773))

(assert (= (and b!102046 ((_ is Concat!777) (regTwo!1367 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102774))

(assert (= (and b!102046 ((_ is Star!427) (regTwo!1367 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102775))

(assert (= (and b!102046 ((_ is Union!427) (regTwo!1367 (regOne!1367 (regex!359 (h!7041 rules!1152)))))) b!102776))

(declare-fun b!102777 () Bool)

(declare-fun e!56970 () Bool)

(assert (=> b!102777 (= e!56970 tp_is_empty!773)))

(declare-fun b!102780 () Bool)

(declare-fun tp!57595 () Bool)

(declare-fun tp!57597 () Bool)

(assert (=> b!102780 (= e!56970 (and tp!57595 tp!57597))))

(declare-fun b!102778 () Bool)

(declare-fun tp!57598 () Bool)

(declare-fun tp!57594 () Bool)

(assert (=> b!102778 (= e!56970 (and tp!57598 tp!57594))))

(assert (=> b!102028 (= tp!57314 e!56970)))

(declare-fun b!102779 () Bool)

(declare-fun tp!57596 () Bool)

(assert (=> b!102779 (= e!56970 tp!57596)))

(assert (= (and b!102028 ((_ is ElementMatch!427) (regex!359 (h!7041 (t!21299 (t!21299 rules!1152)))))) b!102777))

(assert (= (and b!102028 ((_ is Concat!777) (regex!359 (h!7041 (t!21299 (t!21299 rules!1152)))))) b!102778))

(assert (= (and b!102028 ((_ is Star!427) (regex!359 (h!7041 (t!21299 (t!21299 rules!1152)))))) b!102779))

(assert (= (and b!102028 ((_ is Union!427) (regex!359 (h!7041 (t!21299 (t!21299 rules!1152)))))) b!102780))

(declare-fun b!102783 () Bool)

(declare-fun b_free!3073 () Bool)

(declare-fun b_next!3073 () Bool)

(assert (=> b!102783 (= b_free!3073 (not b_next!3073))))

(declare-fun tp!57600 () Bool)

(declare-fun b_and!4591 () Bool)

(assert (=> b!102783 (= tp!57600 b_and!4591)))

(declare-fun b_free!3075 () Bool)

(declare-fun b_next!3075 () Bool)

(assert (=> b!102783 (= b_free!3075 (not b_next!3075))))

(declare-fun tp!57602 () Bool)

(declare-fun b_and!4593 () Bool)

(assert (=> b!102783 (= tp!57602 b_and!4593)))

(declare-fun e!56973 () Bool)

(assert (=> b!102783 (= e!56973 (and tp!57600 tp!57602))))

(declare-fun b!102782 () Bool)

(declare-fun e!56971 () Bool)

(declare-fun tp!57601 () Bool)

(assert (=> b!102782 (= e!56971 (and tp!57601 (inv!1987 (tag!537 (h!7041 (t!21299 (t!21299 (t!21299 rules!1152)))))) (inv!1993 (transformation!359 (h!7041 (t!21299 (t!21299 (t!21299 rules!1152)))))) e!56973))))

(declare-fun b!102781 () Bool)

(declare-fun e!56972 () Bool)

(declare-fun tp!57599 () Bool)

(assert (=> b!102781 (= e!56972 (and e!56971 tp!57599))))

(assert (=> b!102027 (= tp!57312 e!56972)))

(assert (= b!102782 b!102783))

(assert (= b!102781 b!102782))

(assert (= (and b!102027 ((_ is Cons!1644) (t!21299 (t!21299 (t!21299 rules!1152))))) b!102781))

(declare-fun m!89314 () Bool)

(assert (=> b!102782 m!89314))

(declare-fun m!89316 () Bool)

(assert (=> b!102782 m!89316))

(declare-fun b!102784 () Bool)

(declare-fun e!56975 () Bool)

(assert (=> b!102784 (= e!56975 tp_is_empty!773)))

(declare-fun b!102787 () Bool)

(declare-fun tp!57604 () Bool)

(declare-fun tp!57606 () Bool)

(assert (=> b!102787 (= e!56975 (and tp!57604 tp!57606))))

(declare-fun b!102785 () Bool)

(declare-fun tp!57607 () Bool)

(declare-fun tp!57603 () Bool)

(assert (=> b!102785 (= e!56975 (and tp!57607 tp!57603))))

(assert (=> b!102038 (= tp!57320 e!56975)))

(declare-fun b!102786 () Bool)

(declare-fun tp!57605 () Bool)

(assert (=> b!102786 (= e!56975 tp!57605)))

(assert (= (and b!102038 ((_ is ElementMatch!427) (regOne!1367 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102784))

(assert (= (and b!102038 ((_ is Concat!777) (regOne!1367 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102785))

(assert (= (and b!102038 ((_ is Star!427) (regOne!1367 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102786))

(assert (= (and b!102038 ((_ is Union!427) (regOne!1367 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102787))

(declare-fun b!102788 () Bool)

(declare-fun e!56976 () Bool)

(assert (=> b!102788 (= e!56976 tp_is_empty!773)))

(declare-fun b!102791 () Bool)

(declare-fun tp!57609 () Bool)

(declare-fun tp!57611 () Bool)

(assert (=> b!102791 (= e!56976 (and tp!57609 tp!57611))))

(declare-fun b!102789 () Bool)

(declare-fun tp!57612 () Bool)

(declare-fun tp!57608 () Bool)

(assert (=> b!102789 (= e!56976 (and tp!57612 tp!57608))))

(assert (=> b!102038 (= tp!57322 e!56976)))

(declare-fun b!102790 () Bool)

(declare-fun tp!57610 () Bool)

(assert (=> b!102790 (= e!56976 tp!57610)))

(assert (= (and b!102038 ((_ is ElementMatch!427) (regTwo!1367 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102788))

(assert (= (and b!102038 ((_ is Concat!777) (regTwo!1367 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102789))

(assert (= (and b!102038 ((_ is Star!427) (regTwo!1367 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102790))

(assert (= (and b!102038 ((_ is Union!427) (regTwo!1367 (regOne!1366 (regex!359 (h!7041 rules!1152)))))) b!102791))

(declare-fun b!102792 () Bool)

(declare-fun e!56977 () Bool)

(assert (=> b!102792 (= e!56977 tp_is_empty!773)))

(declare-fun b!102795 () Bool)

(declare-fun tp!57614 () Bool)

(declare-fun tp!57616 () Bool)

(assert (=> b!102795 (= e!56977 (and tp!57614 tp!57616))))

(declare-fun b!102793 () Bool)

(declare-fun tp!57617 () Bool)

(declare-fun tp!57613 () Bool)

(assert (=> b!102793 (= e!56977 (and tp!57617 tp!57613))))

(assert (=> b!102056 (= tp!57348 e!56977)))

(declare-fun b!102794 () Bool)

(declare-fun tp!57615 () Bool)

(assert (=> b!102794 (= e!56977 tp!57615)))

(assert (= (and b!102056 ((_ is ElementMatch!427) (regOne!1366 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102792))

(assert (= (and b!102056 ((_ is Concat!777) (regOne!1366 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102793))

(assert (= (and b!102056 ((_ is Star!427) (regOne!1366 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102794))

(assert (= (and b!102056 ((_ is Union!427) (regOne!1366 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102795))

(declare-fun b!102796 () Bool)

(declare-fun e!56978 () Bool)

(assert (=> b!102796 (= e!56978 tp_is_empty!773)))

(declare-fun b!102799 () Bool)

(declare-fun tp!57619 () Bool)

(declare-fun tp!57621 () Bool)

(assert (=> b!102799 (= e!56978 (and tp!57619 tp!57621))))

(declare-fun b!102797 () Bool)

(declare-fun tp!57622 () Bool)

(declare-fun tp!57618 () Bool)

(assert (=> b!102797 (= e!56978 (and tp!57622 tp!57618))))

(assert (=> b!102056 (= tp!57344 e!56978)))

(declare-fun b!102798 () Bool)

(declare-fun tp!57620 () Bool)

(assert (=> b!102798 (= e!56978 tp!57620)))

(assert (= (and b!102056 ((_ is ElementMatch!427) (regTwo!1366 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102796))

(assert (= (and b!102056 ((_ is Concat!777) (regTwo!1366 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102797))

(assert (= (and b!102056 ((_ is Star!427) (regTwo!1366 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102798))

(assert (= (and b!102056 ((_ is Union!427) (regTwo!1366 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102799))

(declare-fun e!56980 () Bool)

(declare-fun b!102800 () Bool)

(declare-fun tp!57624 () Bool)

(declare-fun tp!57625 () Bool)

(assert (=> b!102800 (= e!56980 (and (inv!1991 (left!1254 (left!1254 (right!1584 (c!24694 input!576))))) tp!57624 (inv!1991 (right!1584 (left!1254 (right!1584 (c!24694 input!576))))) tp!57625))))

(declare-fun b!102802 () Bool)

(declare-fun e!56979 () Bool)

(declare-fun tp!57623 () Bool)

(assert (=> b!102802 (= e!56979 tp!57623)))

(declare-fun b!102801 () Bool)

(assert (=> b!102801 (= e!56980 (and (inv!1999 (xs!3101 (left!1254 (right!1584 (c!24694 input!576))))) e!56979))))

(assert (=> b!102062 (= tp!57353 (and (inv!1991 (left!1254 (right!1584 (c!24694 input!576)))) e!56980))))

(assert (= (and b!102062 ((_ is Node!514) (left!1254 (right!1584 (c!24694 input!576))))) b!102800))

(assert (= b!102801 b!102802))

(assert (= (and b!102062 ((_ is Leaf!829) (left!1254 (right!1584 (c!24694 input!576))))) b!102801))

(declare-fun m!89318 () Bool)

(assert (=> b!102800 m!89318))

(declare-fun m!89320 () Bool)

(assert (=> b!102800 m!89320))

(declare-fun m!89322 () Bool)

(assert (=> b!102801 m!89322))

(assert (=> b!102062 m!88352))

(declare-fun tp!57627 () Bool)

(declare-fun b!102803 () Bool)

(declare-fun tp!57628 () Bool)

(declare-fun e!56982 () Bool)

(assert (=> b!102803 (= e!56982 (and (inv!1991 (left!1254 (right!1584 (right!1584 (c!24694 input!576))))) tp!57627 (inv!1991 (right!1584 (right!1584 (right!1584 (c!24694 input!576))))) tp!57628))))

(declare-fun b!102805 () Bool)

(declare-fun e!56981 () Bool)

(declare-fun tp!57626 () Bool)

(assert (=> b!102805 (= e!56981 tp!57626)))

(declare-fun b!102804 () Bool)

(assert (=> b!102804 (= e!56982 (and (inv!1999 (xs!3101 (right!1584 (right!1584 (c!24694 input!576))))) e!56981))))

(assert (=> b!102062 (= tp!57354 (and (inv!1991 (right!1584 (right!1584 (c!24694 input!576)))) e!56982))))

(assert (= (and b!102062 ((_ is Node!514) (right!1584 (right!1584 (c!24694 input!576))))) b!102803))

(assert (= b!102804 b!102805))

(assert (= (and b!102062 ((_ is Leaf!829) (right!1584 (right!1584 (c!24694 input!576))))) b!102804))

(declare-fun m!89324 () Bool)

(assert (=> b!102803 m!89324))

(declare-fun m!89326 () Bool)

(assert (=> b!102803 m!89326))

(declare-fun m!89328 () Bool)

(assert (=> b!102804 m!89328))

(assert (=> b!102062 m!88354))

(declare-fun b!102806 () Bool)

(declare-fun e!56983 () Bool)

(assert (=> b!102806 (= e!56983 tp_is_empty!773)))

(declare-fun b!102809 () Bool)

(declare-fun tp!57630 () Bool)

(declare-fun tp!57632 () Bool)

(assert (=> b!102809 (= e!56983 (and tp!57630 tp!57632))))

(declare-fun b!102807 () Bool)

(declare-fun tp!57633 () Bool)

(declare-fun tp!57629 () Bool)

(assert (=> b!102807 (= e!56983 (and tp!57633 tp!57629))))

(assert (=> b!102048 (= tp!57338 e!56983)))

(declare-fun b!102808 () Bool)

(declare-fun tp!57631 () Bool)

(assert (=> b!102808 (= e!56983 tp!57631)))

(assert (= (and b!102048 ((_ is ElementMatch!427) (regOne!1366 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102806))

(assert (= (and b!102048 ((_ is Concat!777) (regOne!1366 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102807))

(assert (= (and b!102048 ((_ is Star!427) (regOne!1366 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102808))

(assert (= (and b!102048 ((_ is Union!427) (regOne!1366 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102809))

(declare-fun b!102810 () Bool)

(declare-fun e!56984 () Bool)

(assert (=> b!102810 (= e!56984 tp_is_empty!773)))

(declare-fun b!102813 () Bool)

(declare-fun tp!57635 () Bool)

(declare-fun tp!57637 () Bool)

(assert (=> b!102813 (= e!56984 (and tp!57635 tp!57637))))

(declare-fun b!102811 () Bool)

(declare-fun tp!57638 () Bool)

(declare-fun tp!57634 () Bool)

(assert (=> b!102811 (= e!56984 (and tp!57638 tp!57634))))

(assert (=> b!102048 (= tp!57334 e!56984)))

(declare-fun b!102812 () Bool)

(declare-fun tp!57636 () Bool)

(assert (=> b!102812 (= e!56984 tp!57636)))

(assert (= (and b!102048 ((_ is ElementMatch!427) (regTwo!1366 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102810))

(assert (= (and b!102048 ((_ is Concat!777) (regTwo!1366 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102811))

(assert (= (and b!102048 ((_ is Star!427) (regTwo!1366 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102812))

(assert (= (and b!102048 ((_ is Union!427) (regTwo!1366 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102813))

(declare-fun b!102814 () Bool)

(declare-fun e!56985 () Bool)

(assert (=> b!102814 (= e!56985 tp_is_empty!773)))

(declare-fun b!102817 () Bool)

(declare-fun tp!57640 () Bool)

(declare-fun tp!57642 () Bool)

(assert (=> b!102817 (= e!56985 (and tp!57640 tp!57642))))

(declare-fun b!102815 () Bool)

(declare-fun tp!57643 () Bool)

(declare-fun tp!57639 () Bool)

(assert (=> b!102815 (= e!56985 (and tp!57643 tp!57639))))

(assert (=> b!102057 (= tp!57346 e!56985)))

(declare-fun b!102816 () Bool)

(declare-fun tp!57641 () Bool)

(assert (=> b!102816 (= e!56985 tp!57641)))

(assert (= (and b!102057 ((_ is ElementMatch!427) (reg!756 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102814))

(assert (= (and b!102057 ((_ is Concat!777) (reg!756 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102815))

(assert (= (and b!102057 ((_ is Star!427) (reg!756 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102816))

(assert (= (and b!102057 ((_ is Union!427) (reg!756 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102817))

(declare-fun b!102818 () Bool)

(declare-fun e!56986 () Bool)

(assert (=> b!102818 (= e!56986 tp_is_empty!773)))

(declare-fun b!102821 () Bool)

(declare-fun tp!57645 () Bool)

(declare-fun tp!57647 () Bool)

(assert (=> b!102821 (= e!56986 (and tp!57645 tp!57647))))

(declare-fun b!102819 () Bool)

(declare-fun tp!57648 () Bool)

(declare-fun tp!57644 () Bool)

(assert (=> b!102819 (= e!56986 (and tp!57648 tp!57644))))

(assert (=> b!102058 (= tp!57345 e!56986)))

(declare-fun b!102820 () Bool)

(declare-fun tp!57646 () Bool)

(assert (=> b!102820 (= e!56986 tp!57646)))

(assert (= (and b!102058 ((_ is ElementMatch!427) (regOne!1367 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102818))

(assert (= (and b!102058 ((_ is Concat!777) (regOne!1367 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102819))

(assert (= (and b!102058 ((_ is Star!427) (regOne!1367 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102820))

(assert (= (and b!102058 ((_ is Union!427) (regOne!1367 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102821))

(declare-fun b!102822 () Bool)

(declare-fun e!56987 () Bool)

(assert (=> b!102822 (= e!56987 tp_is_empty!773)))

(declare-fun b!102825 () Bool)

(declare-fun tp!57650 () Bool)

(declare-fun tp!57652 () Bool)

(assert (=> b!102825 (= e!56987 (and tp!57650 tp!57652))))

(declare-fun b!102823 () Bool)

(declare-fun tp!57653 () Bool)

(declare-fun tp!57649 () Bool)

(assert (=> b!102823 (= e!56987 (and tp!57653 tp!57649))))

(assert (=> b!102058 (= tp!57347 e!56987)))

(declare-fun b!102824 () Bool)

(declare-fun tp!57651 () Bool)

(assert (=> b!102824 (= e!56987 tp!57651)))

(assert (= (and b!102058 ((_ is ElementMatch!427) (regTwo!1367 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102822))

(assert (= (and b!102058 ((_ is Concat!777) (regTwo!1367 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102823))

(assert (= (and b!102058 ((_ is Star!427) (regTwo!1367 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102824))

(assert (= (and b!102058 ((_ is Union!427) (regTwo!1367 (reg!756 (regex!359 (h!7041 rules!1152)))))) b!102825))

(declare-fun b!102826 () Bool)

(declare-fun e!56988 () Bool)

(assert (=> b!102826 (= e!56988 tp_is_empty!773)))

(declare-fun b!102829 () Bool)

(declare-fun tp!57655 () Bool)

(declare-fun tp!57657 () Bool)

(assert (=> b!102829 (= e!56988 (and tp!57655 tp!57657))))

(declare-fun b!102827 () Bool)

(declare-fun tp!57658 () Bool)

(declare-fun tp!57654 () Bool)

(assert (=> b!102827 (= e!56988 (and tp!57658 tp!57654))))

(assert (=> b!102040 (= tp!57328 e!56988)))

(declare-fun b!102828 () Bool)

(declare-fun tp!57656 () Bool)

(assert (=> b!102828 (= e!56988 tp!57656)))

(assert (= (and b!102040 ((_ is ElementMatch!427) (regOne!1366 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102826))

(assert (= (and b!102040 ((_ is Concat!777) (regOne!1366 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102827))

(assert (= (and b!102040 ((_ is Star!427) (regOne!1366 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102828))

(assert (= (and b!102040 ((_ is Union!427) (regOne!1366 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102829))

(declare-fun b!102830 () Bool)

(declare-fun e!56989 () Bool)

(assert (=> b!102830 (= e!56989 tp_is_empty!773)))

(declare-fun b!102833 () Bool)

(declare-fun tp!57660 () Bool)

(declare-fun tp!57662 () Bool)

(assert (=> b!102833 (= e!56989 (and tp!57660 tp!57662))))

(declare-fun b!102831 () Bool)

(declare-fun tp!57663 () Bool)

(declare-fun tp!57659 () Bool)

(assert (=> b!102831 (= e!56989 (and tp!57663 tp!57659))))

(assert (=> b!102040 (= tp!57324 e!56989)))

(declare-fun b!102832 () Bool)

(declare-fun tp!57661 () Bool)

(assert (=> b!102832 (= e!56989 tp!57661)))

(assert (= (and b!102040 ((_ is ElementMatch!427) (regTwo!1366 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102830))

(assert (= (and b!102040 ((_ is Concat!777) (regTwo!1366 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102831))

(assert (= (and b!102040 ((_ is Star!427) (regTwo!1366 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102832))

(assert (= (and b!102040 ((_ is Union!427) (regTwo!1366 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102833))

(declare-fun b!102834 () Bool)

(declare-fun e!56990 () Bool)

(declare-fun tp!57664 () Bool)

(assert (=> b!102834 (= e!56990 (and tp_is_empty!773 tp!57664))))

(assert (=> b!102064 (= tp!57352 e!56990)))

(assert (= (and b!102064 ((_ is Cons!1642) (innerList!572 (xs!3101 (right!1584 (c!24694 input!576)))))) b!102834))

(declare-fun b!102835 () Bool)

(declare-fun e!56991 () Bool)

(assert (=> b!102835 (= e!56991 tp_is_empty!773)))

(declare-fun b!102838 () Bool)

(declare-fun tp!57666 () Bool)

(declare-fun tp!57668 () Bool)

(assert (=> b!102838 (= e!56991 (and tp!57666 tp!57668))))

(declare-fun b!102836 () Bool)

(declare-fun tp!57669 () Bool)

(declare-fun tp!57665 () Bool)

(assert (=> b!102836 (= e!56991 (and tp!57669 tp!57665))))

(assert (=> b!102049 (= tp!57336 e!56991)))

(declare-fun b!102837 () Bool)

(declare-fun tp!57667 () Bool)

(assert (=> b!102837 (= e!56991 tp!57667)))

(assert (= (and b!102049 ((_ is ElementMatch!427) (reg!756 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102835))

(assert (= (and b!102049 ((_ is Concat!777) (reg!756 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102836))

(assert (= (and b!102049 ((_ is Star!427) (reg!756 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102837))

(assert (= (and b!102049 ((_ is Union!427) (reg!756 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102838))

(declare-fun b!102839 () Bool)

(declare-fun e!56992 () Bool)

(assert (=> b!102839 (= e!56992 tp_is_empty!773)))

(declare-fun b!102842 () Bool)

(declare-fun tp!57671 () Bool)

(declare-fun tp!57673 () Bool)

(assert (=> b!102842 (= e!56992 (and tp!57671 tp!57673))))

(declare-fun b!102840 () Bool)

(declare-fun tp!57674 () Bool)

(declare-fun tp!57670 () Bool)

(assert (=> b!102840 (= e!56992 (and tp!57674 tp!57670))))

(assert (=> b!102050 (= tp!57335 e!56992)))

(declare-fun b!102841 () Bool)

(declare-fun tp!57672 () Bool)

(assert (=> b!102841 (= e!56992 tp!57672)))

(assert (= (and b!102050 ((_ is ElementMatch!427) (regOne!1367 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102839))

(assert (= (and b!102050 ((_ is Concat!777) (regOne!1367 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102840))

(assert (= (and b!102050 ((_ is Star!427) (regOne!1367 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102841))

(assert (= (and b!102050 ((_ is Union!427) (regOne!1367 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102842))

(declare-fun b!102843 () Bool)

(declare-fun e!56993 () Bool)

(assert (=> b!102843 (= e!56993 tp_is_empty!773)))

(declare-fun b!102846 () Bool)

(declare-fun tp!57676 () Bool)

(declare-fun tp!57678 () Bool)

(assert (=> b!102846 (= e!56993 (and tp!57676 tp!57678))))

(declare-fun b!102844 () Bool)

(declare-fun tp!57679 () Bool)

(declare-fun tp!57675 () Bool)

(assert (=> b!102844 (= e!56993 (and tp!57679 tp!57675))))

(assert (=> b!102050 (= tp!57337 e!56993)))

(declare-fun b!102845 () Bool)

(declare-fun tp!57677 () Bool)

(assert (=> b!102845 (= e!56993 tp!57677)))

(assert (= (and b!102050 ((_ is ElementMatch!427) (regTwo!1367 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102843))

(assert (= (and b!102050 ((_ is Concat!777) (regTwo!1367 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102844))

(assert (= (and b!102050 ((_ is Star!427) (regTwo!1367 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102845))

(assert (= (and b!102050 ((_ is Union!427) (regTwo!1367 (regTwo!1367 (regex!359 (h!7041 rules!1152)))))) b!102846))

(declare-fun b!102847 () Bool)

(declare-fun e!56994 () Bool)

(assert (=> b!102847 (= e!56994 tp_is_empty!773)))

(declare-fun b!102850 () Bool)

(declare-fun tp!57681 () Bool)

(declare-fun tp!57683 () Bool)

(assert (=> b!102850 (= e!56994 (and tp!57681 tp!57683))))

(declare-fun b!102848 () Bool)

(declare-fun tp!57684 () Bool)

(declare-fun tp!57680 () Bool)

(assert (=> b!102848 (= e!56994 (and tp!57684 tp!57680))))

(assert (=> b!102041 (= tp!57326 e!56994)))

(declare-fun b!102849 () Bool)

(declare-fun tp!57682 () Bool)

(assert (=> b!102849 (= e!56994 tp!57682)))

(assert (= (and b!102041 ((_ is ElementMatch!427) (reg!756 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102847))

(assert (= (and b!102041 ((_ is Concat!777) (reg!756 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102848))

(assert (= (and b!102041 ((_ is Star!427) (reg!756 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102849))

(assert (= (and b!102041 ((_ is Union!427) (reg!756 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102850))

(declare-fun b!102851 () Bool)

(declare-fun e!56995 () Bool)

(assert (=> b!102851 (= e!56995 tp_is_empty!773)))

(declare-fun b!102854 () Bool)

(declare-fun tp!57686 () Bool)

(declare-fun tp!57688 () Bool)

(assert (=> b!102854 (= e!56995 (and tp!57686 tp!57688))))

(declare-fun b!102852 () Bool)

(declare-fun tp!57689 () Bool)

(declare-fun tp!57685 () Bool)

(assert (=> b!102852 (= e!56995 (and tp!57689 tp!57685))))

(assert (=> b!102042 (= tp!57325 e!56995)))

(declare-fun b!102853 () Bool)

(declare-fun tp!57687 () Bool)

(assert (=> b!102853 (= e!56995 tp!57687)))

(assert (= (and b!102042 ((_ is ElementMatch!427) (regOne!1367 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102851))

(assert (= (and b!102042 ((_ is Concat!777) (regOne!1367 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102852))

(assert (= (and b!102042 ((_ is Star!427) (regOne!1367 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102853))

(assert (= (and b!102042 ((_ is Union!427) (regOne!1367 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102854))

(declare-fun b!102855 () Bool)

(declare-fun e!56996 () Bool)

(assert (=> b!102855 (= e!56996 tp_is_empty!773)))

(declare-fun b!102858 () Bool)

(declare-fun tp!57691 () Bool)

(declare-fun tp!57693 () Bool)

(assert (=> b!102858 (= e!56996 (and tp!57691 tp!57693))))

(declare-fun b!102856 () Bool)

(declare-fun tp!57694 () Bool)

(declare-fun tp!57690 () Bool)

(assert (=> b!102856 (= e!56996 (and tp!57694 tp!57690))))

(assert (=> b!102042 (= tp!57327 e!56996)))

(declare-fun b!102857 () Bool)

(declare-fun tp!57692 () Bool)

(assert (=> b!102857 (= e!56996 tp!57692)))

(assert (= (and b!102042 ((_ is ElementMatch!427) (regTwo!1367 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102855))

(assert (= (and b!102042 ((_ is Concat!777) (regTwo!1367 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102856))

(assert (= (and b!102042 ((_ is Star!427) (regTwo!1367 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102857))

(assert (= (and b!102042 ((_ is Union!427) (regTwo!1367 (regTwo!1366 (regex!359 (h!7041 rules!1152)))))) b!102858))

(declare-fun b!102859 () Bool)

(declare-fun e!56997 () Bool)

(declare-fun tp!57695 () Bool)

(assert (=> b!102859 (= e!56997 (and tp_is_empty!773 tp!57695))))

(assert (=> b!102034 (= tp!57318 e!56997)))

(assert (= (and b!102034 ((_ is Cons!1642) (t!21297 (innerList!572 (xs!3101 (c!24694 input!576)))))) b!102859))

(declare-fun b!102860 () Bool)

(declare-fun e!56999 () Bool)

(declare-fun tp!57697 () Bool)

(declare-fun tp!57698 () Bool)

(assert (=> b!102860 (= e!56999 (and (inv!1991 (left!1254 (left!1254 (left!1254 (c!24694 input!576))))) tp!57697 (inv!1991 (right!1584 (left!1254 (left!1254 (c!24694 input!576))))) tp!57698))))

(declare-fun b!102862 () Bool)

(declare-fun e!56998 () Bool)

(declare-fun tp!57696 () Bool)

(assert (=> b!102862 (= e!56998 tp!57696)))

(declare-fun b!102861 () Bool)

(assert (=> b!102861 (= e!56999 (and (inv!1999 (xs!3101 (left!1254 (left!1254 (c!24694 input!576))))) e!56998))))

(assert (=> b!102059 (= tp!57350 (and (inv!1991 (left!1254 (left!1254 (c!24694 input!576)))) e!56999))))

(assert (= (and b!102059 ((_ is Node!514) (left!1254 (left!1254 (c!24694 input!576))))) b!102860))

(assert (= b!102861 b!102862))

(assert (= (and b!102059 ((_ is Leaf!829) (left!1254 (left!1254 (c!24694 input!576))))) b!102861))

(declare-fun m!89330 () Bool)

(assert (=> b!102860 m!89330))

(declare-fun m!89332 () Bool)

(assert (=> b!102860 m!89332))

(declare-fun m!89334 () Bool)

(assert (=> b!102861 m!89334))

(assert (=> b!102059 m!88346))

(declare-fun e!57001 () Bool)

(declare-fun tp!57701 () Bool)

(declare-fun b!102863 () Bool)

(declare-fun tp!57700 () Bool)

(assert (=> b!102863 (= e!57001 (and (inv!1991 (left!1254 (right!1584 (left!1254 (c!24694 input!576))))) tp!57700 (inv!1991 (right!1584 (right!1584 (left!1254 (c!24694 input!576))))) tp!57701))))

(declare-fun b!102865 () Bool)

(declare-fun e!57000 () Bool)

(declare-fun tp!57699 () Bool)

(assert (=> b!102865 (= e!57000 tp!57699)))

(declare-fun b!102864 () Bool)

(assert (=> b!102864 (= e!57001 (and (inv!1999 (xs!3101 (right!1584 (left!1254 (c!24694 input!576))))) e!57000))))

(assert (=> b!102059 (= tp!57351 (and (inv!1991 (right!1584 (left!1254 (c!24694 input!576)))) e!57001))))

(assert (= (and b!102059 ((_ is Node!514) (right!1584 (left!1254 (c!24694 input!576))))) b!102863))

(assert (= b!102864 b!102865))

(assert (= (and b!102059 ((_ is Leaf!829) (right!1584 (left!1254 (c!24694 input!576))))) b!102864))

(declare-fun m!89336 () Bool)

(assert (=> b!102863 m!89336))

(declare-fun m!89338 () Bool)

(assert (=> b!102863 m!89338))

(declare-fun m!89340 () Bool)

(assert (=> b!102864 m!89340))

(assert (=> b!102059 m!88348))

(declare-fun b!102866 () Bool)

(declare-fun e!57002 () Bool)

(declare-fun tp!57702 () Bool)

(assert (=> b!102866 (= e!57002 (and tp_is_empty!773 tp!57702))))

(assert (=> b!102061 (= tp!57349 e!57002)))

(assert (= (and b!102061 ((_ is Cons!1642) (innerList!572 (xs!3101 (left!1254 (c!24694 input!576)))))) b!102866))

(declare-fun b_lambda!1159 () Bool)

(assert (= b_lambda!1155 (or d!24221 b_lambda!1159)))

(declare-fun bs!10020 () Bool)

(declare-fun d!24649 () Bool)

(assert (= bs!10020 (and d!24649 d!24221)))

(assert (=> bs!10020 (= (dynLambda!508 lambda!1864 (h!7041 rules!1152)) (ruleValid!46 thiss!11428 (h!7041 rules!1152)))))

(assert (=> bs!10020 m!88948))

(assert (=> b!102435 d!24649))

(check-sat (not b_next!3051) (not b!102719) (not b!102845) (not b!102852) (not b!102760) (not b!102787) (not d!24375) (not b!102863) (not b!102771) (not b!102736) (not d!24633) (not d!24607) (not b!102449) (not b!102265) (not b!102439) (not b!102841) (not b!102735) (not b!102267) (not b!102734) (not b!102846) (not b!102407) (not b!102613) (not b!102690) (not b!102803) (not b!102448) (not b!102402) (not b_next!3067) (not b!102670) (not b!102088) (not b!102817) (not d!24325) (not b!102747) (not b!102117) (not b!102774) (not b!102139) (not b!102809) (not b!102152) (not b!102804) (not b!102758) (not b!102409) (not b!102714) b_and!4569 (not b!102722) (not d!24603) (not b!102823) (not b!102114) (not d!24527) (not b!102205) tp_is_empty!773 (not b!102785) (not d!24543) (not b_next!3057) (not b!102740) (not b!102125) (not b!102779) (not b!102853) (not b!102710) (not b!102694) (not d!24641) (not b!102696) (not b!102752) (not b!102786) (not b!102436) (not b!102426) (not b!102096) (not b!102824) (not b!102697) (not d!24529) (not d!24615) (not b!102111) (not d!24631) (not b!102212) (not b!102211) (not b_next!3065) (not b!102862) b_and!4583 (not d!24329) (not b!102763) (not b!102712) (not d!24635) (not b!102397) (not d!24573) (not d!24299) (not b!102110) b_and!4585 (not d!24561) (not bm!4425) (not b!102780) (not b!102770) (not b!102667) (not b!102062) (not b_next!3073) (not b!102778) (not b!102153) (not d!24617) (not b!102802) (not b!102672) (not b!102755) (not b!102430) (not b!102724) (not b!102739) (not b!102446) (not b!102816) (not b!102834) (not b!102831) (not b!102687) (not b!102807) (not d!24309) (not b!102702) b_and!4591 (not d!24609) (not d!24545) (not b!102239) (not b!102614) b_and!4577 (not d!24605) (not b!102858) (not b!102859) (not b!102137) (not b!102711) (not b!102797) (not b!102665) (not b!102673) (not b!102443) (not b!102821) (not b!102727) (not b!102819) (not b!102854) b_and!4593 (not b!102213) (not b!102805) (not d!24427) (not b!102820) (not bm!4429) (not b!102233) (not d!24347) (not d!24623) (not b!102136) (not b!102762) (not d!24385) (not b!102744) (not b!102794) (not b!102103) (not b!102113) (not b!102795) (not b!102715) (not b!102764) (not d!24301) (not b!102800) (not b!102781) (not d!24365) (not b!102767) (not b!102366) (not b!102772) (not b!102688) (not b!102087) (not b!102099) (not b!102689) (not d!24401) (not b!102808) (not b!102155) (not b!102405) (not b!102093) (not b!102208) (not b!102134) (not b!102860) (not b!102857) (not b!102756) (not b!102813) (not b!102833) (not b!102789) (not b!102790) (not b!102856) (not b!102825) (not d!24569) (not b!102107) (not b!102832) (not b!102815) (not d!24503) (not b!102101) (not b!102666) (not b!102776) (not b!102746) (not b!102751) (not d!24511) (not d!24555) (not b!102738) (not b!102429) (not b!102150) (not b!102866) (not d!24331) (not b!102743) (not d!24361) (not b!102207) (not b!102728) (not b!102695) (not b!102400) (not b_lambda!1159) (not b!102708) (not b!102842) (not b!102849) (not d!24611) (not b!102700) (not b!102135) (not b!102701) (not b!102398) (not b!102837) (not b!102425) (not d!24571) (not b!102612) (not b!102097) (not b!102138) (not b!102838) (not b!102210) (not b!102840) (not b!102438) (not b!102116) (not b!102059) (not b_next!3049) (not b!102235) (not b!102206) (not b!102844) (not b!102782) (not b!102686) (not b!102445) (not b!102611) (not d!24639) (not b!102865) (not b!102861) (not d!24315) (not b!102766) (not b!102221) (not b!102848) (not b!102827) (not b!102730) (not b!102698) b_and!4575 (not d!24281) (not b!102718) (not b!102717) (not b!102420) (not b!102112) (not b!102828) (not b!102726) (not b!102768) (not b!102754) (not b!102240) (not b!102850) (not b!102742) (not bm!4418) (not b!102759) (not b!102793) (not d!24613) (not b!102713) (not b!102092) (not d!24311) (not b!102836) (not b!102750) (not d!24619) (not b!102451) (not b!102798) (not d!24505) (not b!102158) (not b!102721) (not b_next!3075) (not b!102131) (not b_next!3059) (not b!102615) (not b!102799) (not d!24389) (not b!102132) (not b!102242) (not b!102447) b_and!4567 (not b!102812) (not d!24295) (not b!102775) (not b!102421) (not b!102441) (not b!102748) (not b!102691) (not b!102238) (not bm!4431) (not b!102791) (not b!102829) (not b!102864) (not b!102811) (not b!102444) (not b!102731) (not b!102403) (not b!102732) (not b!102801) (not b!102159) (not d!24367) (not bs!10020) (not b!102266) (not d!24541))
(check-sat (not b_next!3051) (not b_next!3067) b_and!4569 (not b_next!3057) (not b_next!3073) b_and!4591 b_and!4577 b_and!4593 (not b_next!3049) b_and!4575 b_and!4567 (not b_next!3065) b_and!4583 b_and!4585 (not b_next!3059) (not b_next!3075))
