; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358656 () Bool)

(assert start!358656)

(declare-fun b!3832617 () Bool)

(declare-fun b_free!101665 () Bool)

(declare-fun b_next!102369 () Bool)

(assert (=> b!3832617 (= b_free!101665 (not b_next!102369))))

(declare-fun tp!1159489 () Bool)

(declare-fun b_and!284783 () Bool)

(assert (=> b!3832617 (= tp!1159489 b_and!284783)))

(declare-fun b_free!101667 () Bool)

(declare-fun b_next!102371 () Bool)

(assert (=> b!3832617 (= b_free!101667 (not b_next!102371))))

(declare-fun tp!1159496 () Bool)

(declare-fun b_and!284785 () Bool)

(assert (=> b!3832617 (= tp!1159496 b_and!284785)))

(declare-fun b!3832615 () Bool)

(declare-fun b_free!101669 () Bool)

(declare-fun b_next!102373 () Bool)

(assert (=> b!3832615 (= b_free!101669 (not b_next!102373))))

(declare-fun tp!1159494 () Bool)

(declare-fun b_and!284787 () Bool)

(assert (=> b!3832615 (= tp!1159494 b_and!284787)))

(declare-fun b_free!101671 () Bool)

(declare-fun b_next!102375 () Bool)

(assert (=> b!3832615 (= b_free!101671 (not b_next!102375))))

(declare-fun tp!1159486 () Bool)

(declare-fun b_and!284789 () Bool)

(assert (=> b!3832615 (= tp!1159486 b_and!284789)))

(declare-fun e!2366744 () Bool)

(declare-datatypes ((C!22448 0))(
  ( (C!22449 (val!13318 Int)) )
))
(declare-datatypes ((List!40574 0))(
  ( (Nil!40450) (Cons!40450 (h!45870 C!22448) (t!309163 List!40574)) )
))
(declare-datatypes ((IArray!24879 0))(
  ( (IArray!24880 (innerList!12497 List!40574)) )
))
(declare-datatypes ((Conc!12437 0))(
  ( (Node!12437 (left!31304 Conc!12437) (right!31634 Conc!12437) (csize!25104 Int) (cheight!12648 Int)) (Leaf!19257 (xs!15743 IArray!24879) (csize!25105 Int)) (Empty!12437) )
))
(declare-datatypes ((BalanceConc!24468 0))(
  ( (BalanceConc!24469 (c!668394 Conc!12437)) )
))
(declare-datatypes ((List!40575 0))(
  ( (Nil!40451) (Cons!40451 (h!45871 (_ BitVec 16)) (t!309164 List!40575)) )
))
(declare-datatypes ((TokenValue!6456 0))(
  ( (FloatLiteralValue!12912 (text!45637 List!40575)) (TokenValueExt!6455 (__x!25129 Int)) (Broken!32280 (value!198049 List!40575)) (Object!6579) (End!6456) (Def!6456) (Underscore!6456) (Match!6456) (Else!6456) (Error!6456) (Case!6456) (If!6456) (Extends!6456) (Abstract!6456) (Class!6456) (Val!6456) (DelimiterValue!12912 (del!6516 List!40575)) (KeywordValue!6462 (value!198050 List!40575)) (CommentValue!12912 (value!198051 List!40575)) (WhitespaceValue!12912 (value!198052 List!40575)) (IndentationValue!6456 (value!198053 List!40575)) (String!45997) (Int32!6456) (Broken!32281 (value!198054 List!40575)) (Boolean!6457) (Unit!58215) (OperatorValue!6459 (op!6516 List!40575)) (IdentifierValue!12912 (value!198055 List!40575)) (IdentifierValue!12913 (value!198056 List!40575)) (WhitespaceValue!12913 (value!198057 List!40575)) (True!12912) (False!12912) (Broken!32282 (value!198058 List!40575)) (Broken!32283 (value!198059 List!40575)) (True!12913) (RightBrace!6456) (RightBracket!6456) (Colon!6456) (Null!6456) (Comma!6456) (LeftBracket!6456) (False!12913) (LeftBrace!6456) (ImaginaryLiteralValue!6456 (text!45638 List!40575)) (StringLiteralValue!19368 (value!198060 List!40575)) (EOFValue!6456 (value!198061 List!40575)) (IdentValue!6456 (value!198062 List!40575)) (DelimiterValue!12913 (value!198063 List!40575)) (DedentValue!6456 (value!198064 List!40575)) (NewLineValue!6456 (value!198065 List!40575)) (IntegerValue!19368 (value!198066 (_ BitVec 32)) (text!45639 List!40575)) (IntegerValue!19369 (value!198067 Int) (text!45640 List!40575)) (Times!6456) (Or!6456) (Equal!6456) (Minus!6456) (Broken!32284 (value!198068 List!40575)) (And!6456) (Div!6456) (LessEqual!6456) (Mod!6456) (Concat!17587) (Not!6456) (Plus!6456) (SpaceValue!6456 (value!198069 List!40575)) (IntegerValue!19370 (value!198070 Int) (text!45641 List!40575)) (StringLiteralValue!19369 (text!45642 List!40575)) (FloatLiteralValue!12913 (text!45643 List!40575)) (BytesLiteralValue!6456 (value!198071 List!40575)) (CommentValue!12913 (value!198072 List!40575)) (StringLiteralValue!19370 (value!198073 List!40575)) (ErrorTokenValue!6456 (msg!6517 List!40575)) )
))
(declare-datatypes ((String!45998 0))(
  ( (String!45999 (value!198074 String)) )
))
(declare-datatypes ((Regex!11131 0))(
  ( (ElementMatch!11131 (c!668395 C!22448)) (Concat!17588 (regOne!22774 Regex!11131) (regTwo!22774 Regex!11131)) (EmptyExpr!11131) (Star!11131 (reg!11460 Regex!11131)) (EmptyLang!11131) (Union!11131 (regOne!22775 Regex!11131) (regTwo!22775 Regex!11131)) )
))
(declare-datatypes ((TokenValueInjection!12340 0))(
  ( (TokenValueInjection!12341 (toValue!8630 Int) (toChars!8489 Int)) )
))
(declare-datatypes ((Rule!12252 0))(
  ( (Rule!12253 (regex!6226 Regex!11131) (tag!7086 String!45998) (isSeparator!6226 Bool) (transformation!6226 TokenValueInjection!12340)) )
))
(declare-datatypes ((List!40576 0))(
  ( (Nil!40452) (Cons!40452 (h!45872 Rule!12252) (t!309165 List!40576)) )
))
(declare-fun rules!2768 () List!40576)

(declare-fun b!3832607 () Bool)

(declare-fun e!2366747 () Bool)

(declare-fun tp!1159490 () Bool)

(declare-fun inv!54585 (String!45998) Bool)

(declare-fun inv!54588 (TokenValueInjection!12340) Bool)

(assert (=> b!3832607 (= e!2366747 (and tp!1159490 (inv!54585 (tag!7086 (h!45872 rules!2768))) (inv!54588 (transformation!6226 (h!45872 rules!2768))) e!2366744))))

(declare-fun res!1551495 () Bool)

(declare-fun e!2366740 () Bool)

(assert (=> start!358656 (=> (not res!1551495) (not e!2366740))))

(declare-datatypes ((LexerInterface!5815 0))(
  ( (LexerInterfaceExt!5812 (__x!25130 Int)) (Lexer!5813) )
))
(declare-fun thiss!20629 () LexerInterface!5815)

(get-info :version)

(assert (=> start!358656 (= res!1551495 ((_ is Lexer!5813) thiss!20629))))

(assert (=> start!358656 e!2366740))

(assert (=> start!358656 true))

(declare-fun e!2366752 () Bool)

(assert (=> start!358656 e!2366752))

(declare-fun e!2366742 () Bool)

(assert (=> start!358656 e!2366742))

(declare-fun e!2366750 () Bool)

(assert (=> start!358656 e!2366750))

(declare-fun e!2366751 () Bool)

(assert (=> start!358656 e!2366751))

(declare-fun b!3832608 () Bool)

(declare-fun res!1551496 () Bool)

(assert (=> b!3832608 (=> (not res!1551496) (not e!2366740))))

(declare-datatypes ((Token!11590 0))(
  ( (Token!11591 (value!198075 TokenValue!6456) (rule!9058 Rule!12252) (size!30490 Int) (originalCharacters!6826 List!40574)) )
))
(declare-datatypes ((List!40577 0))(
  ( (Nil!40453) (Cons!40453 (h!45873 Token!11590) (t!309166 List!40577)) )
))
(declare-fun prefixTokens!80 () List!40577)

(declare-fun isEmpty!23876 (List!40577) Bool)

(assert (=> b!3832608 (= res!1551496 (not (isEmpty!23876 prefixTokens!80)))))

(declare-fun tp!1159492 () Bool)

(declare-fun e!2366743 () Bool)

(declare-fun b!3832609 () Bool)

(declare-fun inv!54589 (Token!11590) Bool)

(assert (=> b!3832609 (= e!2366750 (and (inv!54589 (h!45873 prefixTokens!80)) e!2366743 tp!1159492))))

(declare-fun b!3832610 () Bool)

(declare-fun res!1551494 () Bool)

(assert (=> b!3832610 (=> (not res!1551494) (not e!2366740))))

(declare-fun isEmpty!23877 (List!40576) Bool)

(assert (=> b!3832610 (= res!1551494 (not (isEmpty!23877 rules!2768)))))

(declare-fun b!3832611 () Bool)

(declare-fun res!1551497 () Bool)

(assert (=> b!3832611 (=> (not res!1551497) (not e!2366740))))

(declare-fun rulesInvariant!5158 (LexerInterface!5815 List!40576) Bool)

(assert (=> b!3832611 (= res!1551497 (rulesInvariant!5158 thiss!20629 rules!2768))))

(declare-fun b!3832612 () Bool)

(declare-fun res!1551498 () Bool)

(assert (=> b!3832612 (=> (not res!1551498) (not e!2366740))))

(declare-fun prefix!426 () List!40574)

(declare-fun isEmpty!23878 (List!40574) Bool)

(assert (=> b!3832612 (= res!1551498 (not (isEmpty!23878 prefix!426)))))

(declare-fun b!3832613 () Bool)

(assert (=> b!3832613 (= e!2366740 false)))

(declare-fun lt!1330669 () List!40574)

(declare-fun suffix!1176 () List!40574)

(declare-fun ++!10210 (List!40574 List!40574) List!40574)

(assert (=> b!3832613 (= lt!1330669 (++!10210 prefix!426 suffix!1176))))

(declare-fun e!2366741 () Bool)

(declare-fun tp!1159495 () Bool)

(declare-fun b!3832614 () Bool)

(declare-fun inv!21 (TokenValue!6456) Bool)

(assert (=> b!3832614 (= e!2366743 (and (inv!21 (value!198075 (h!45873 prefixTokens!80))) e!2366741 tp!1159495))))

(declare-fun e!2366745 () Bool)

(assert (=> b!3832615 (= e!2366745 (and tp!1159494 tp!1159486))))

(declare-fun b!3832616 () Bool)

(declare-fun tp!1159493 () Bool)

(assert (=> b!3832616 (= e!2366742 (and e!2366747 tp!1159493))))

(assert (=> b!3832617 (= e!2366744 (and tp!1159489 tp!1159496))))

(declare-fun tp!1159487 () Bool)

(declare-fun b!3832618 () Bool)

(assert (=> b!3832618 (= e!2366741 (and tp!1159487 (inv!54585 (tag!7086 (rule!9058 (h!45873 prefixTokens!80)))) (inv!54588 (transformation!6226 (rule!9058 (h!45873 prefixTokens!80)))) e!2366745))))

(declare-fun b!3832619 () Bool)

(declare-fun tp_is_empty!19233 () Bool)

(declare-fun tp!1159488 () Bool)

(assert (=> b!3832619 (= e!2366752 (and tp_is_empty!19233 tp!1159488))))

(declare-fun b!3832620 () Bool)

(declare-fun tp!1159491 () Bool)

(assert (=> b!3832620 (= e!2366751 (and tp_is_empty!19233 tp!1159491))))

(assert (= (and start!358656 res!1551495) b!3832610))

(assert (= (and b!3832610 res!1551494) b!3832611))

(assert (= (and b!3832611 res!1551497) b!3832608))

(assert (= (and b!3832608 res!1551496) b!3832612))

(assert (= (and b!3832612 res!1551498) b!3832613))

(assert (= (and start!358656 ((_ is Cons!40450) suffix!1176)) b!3832619))

(assert (= b!3832607 b!3832617))

(assert (= b!3832616 b!3832607))

(assert (= (and start!358656 ((_ is Cons!40452) rules!2768)) b!3832616))

(assert (= b!3832618 b!3832615))

(assert (= b!3832614 b!3832618))

(assert (= b!3832609 b!3832614))

(assert (= (and start!358656 ((_ is Cons!40453) prefixTokens!80)) b!3832609))

(assert (= (and start!358656 ((_ is Cons!40450) prefix!426)) b!3832620))

(declare-fun m!4387139 () Bool)

(assert (=> b!3832609 m!4387139))

(declare-fun m!4387141 () Bool)

(assert (=> b!3832611 m!4387141))

(declare-fun m!4387143 () Bool)

(assert (=> b!3832618 m!4387143))

(declare-fun m!4387145 () Bool)

(assert (=> b!3832618 m!4387145))

(declare-fun m!4387147 () Bool)

(assert (=> b!3832607 m!4387147))

(declare-fun m!4387149 () Bool)

(assert (=> b!3832607 m!4387149))

(declare-fun m!4387151 () Bool)

(assert (=> b!3832608 m!4387151))

(declare-fun m!4387153 () Bool)

(assert (=> b!3832613 m!4387153))

(declare-fun m!4387155 () Bool)

(assert (=> b!3832610 m!4387155))

(declare-fun m!4387157 () Bool)

(assert (=> b!3832614 m!4387157))

(declare-fun m!4387159 () Bool)

(assert (=> b!3832612 m!4387159))

(check-sat (not b_next!102373) (not b!3832613) (not b!3832618) tp_is_empty!19233 (not b!3832610) (not b_next!102375) b_and!284789 (not b!3832608) (not b!3832612) b_and!284783 (not b!3832607) b_and!284785 (not b!3832620) (not b_next!102369) (not b_next!102371) (not b!3832614) b_and!284787 (not b!3832619) (not b!3832616) (not b!3832609) (not b!3832611))
(check-sat (not b_next!102373) b_and!284785 b_and!284787 (not b_next!102375) b_and!284789 b_and!284783 (not b_next!102369) (not b_next!102371))
