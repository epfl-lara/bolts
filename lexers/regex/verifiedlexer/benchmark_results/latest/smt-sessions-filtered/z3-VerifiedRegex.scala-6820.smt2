; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358660 () Bool)

(assert start!358660)

(declare-fun b!3832725 () Bool)

(declare-fun b_free!101685 () Bool)

(declare-fun b_next!102389 () Bool)

(assert (=> b!3832725 (= b_free!101685 (not b_next!102389))))

(declare-fun tp!1159583 () Bool)

(declare-fun b_and!284803 () Bool)

(assert (=> b!3832725 (= tp!1159583 b_and!284803)))

(declare-fun b_free!101687 () Bool)

(declare-fun b_next!102391 () Bool)

(assert (=> b!3832725 (= b_free!101687 (not b_next!102391))))

(declare-fun tp!1159584 () Bool)

(declare-fun b_and!284805 () Bool)

(assert (=> b!3832725 (= tp!1159584 b_and!284805)))

(declare-fun b!3832720 () Bool)

(declare-fun b_free!101689 () Bool)

(declare-fun b_next!102393 () Bool)

(assert (=> b!3832720 (= b_free!101689 (not b_next!102393))))

(declare-fun tp!1159592 () Bool)

(declare-fun b_and!284807 () Bool)

(assert (=> b!3832720 (= tp!1159592 b_and!284807)))

(declare-fun b_free!101691 () Bool)

(declare-fun b_next!102395 () Bool)

(assert (=> b!3832720 (= b_free!101691 (not b_next!102395))))

(declare-fun tp!1159591 () Bool)

(declare-fun b_and!284809 () Bool)

(assert (=> b!3832720 (= tp!1159591 b_and!284809)))

(declare-fun b!3832711 () Bool)

(declare-fun b_free!101693 () Bool)

(declare-fun b_next!102397 () Bool)

(assert (=> b!3832711 (= b_free!101693 (not b_next!102397))))

(declare-fun tp!1159582 () Bool)

(declare-fun b_and!284811 () Bool)

(assert (=> b!3832711 (= tp!1159582 b_and!284811)))

(declare-fun b_free!101695 () Bool)

(declare-fun b_next!102399 () Bool)

(assert (=> b!3832711 (= b_free!101695 (not b_next!102399))))

(declare-fun tp!1159589 () Bool)

(declare-fun b_and!284813 () Bool)

(assert (=> b!3832711 (= tp!1159589 b_and!284813)))

(declare-fun e!2366866 () Bool)

(assert (=> b!3832711 (= e!2366866 (and tp!1159582 tp!1159589))))

(declare-fun b!3832712 () Bool)

(declare-fun e!2366862 () Bool)

(declare-fun tp_is_empty!19237 () Bool)

(declare-fun tp!1159590 () Bool)

(assert (=> b!3832712 (= e!2366862 (and tp_is_empty!19237 tp!1159590))))

(declare-datatypes ((List!40582 0))(
  ( (Nil!40458) (Cons!40458 (h!45878 (_ BitVec 16)) (t!309171 List!40582)) )
))
(declare-datatypes ((TokenValue!6458 0))(
  ( (FloatLiteralValue!12916 (text!45651 List!40582)) (TokenValueExt!6457 (__x!25133 Int)) (Broken!32290 (value!198106 List!40582)) (Object!6581) (End!6458) (Def!6458) (Underscore!6458) (Match!6458) (Else!6458) (Error!6458) (Case!6458) (If!6458) (Extends!6458) (Abstract!6458) (Class!6458) (Val!6458) (DelimiterValue!12916 (del!6518 List!40582)) (KeywordValue!6464 (value!198107 List!40582)) (CommentValue!12916 (value!198108 List!40582)) (WhitespaceValue!12916 (value!198109 List!40582)) (IndentationValue!6458 (value!198110 List!40582)) (String!46007) (Int32!6458) (Broken!32291 (value!198111 List!40582)) (Boolean!6459) (Unit!58217) (OperatorValue!6461 (op!6518 List!40582)) (IdentifierValue!12916 (value!198112 List!40582)) (IdentifierValue!12917 (value!198113 List!40582)) (WhitespaceValue!12917 (value!198114 List!40582)) (True!12916) (False!12916) (Broken!32292 (value!198115 List!40582)) (Broken!32293 (value!198116 List!40582)) (True!12917) (RightBrace!6458) (RightBracket!6458) (Colon!6458) (Null!6458) (Comma!6458) (LeftBracket!6458) (False!12917) (LeftBrace!6458) (ImaginaryLiteralValue!6458 (text!45652 List!40582)) (StringLiteralValue!19374 (value!198117 List!40582)) (EOFValue!6458 (value!198118 List!40582)) (IdentValue!6458 (value!198119 List!40582)) (DelimiterValue!12917 (value!198120 List!40582)) (DedentValue!6458 (value!198121 List!40582)) (NewLineValue!6458 (value!198122 List!40582)) (IntegerValue!19374 (value!198123 (_ BitVec 32)) (text!45653 List!40582)) (IntegerValue!19375 (value!198124 Int) (text!45654 List!40582)) (Times!6458) (Or!6458) (Equal!6458) (Minus!6458) (Broken!32294 (value!198125 List!40582)) (And!6458) (Div!6458) (LessEqual!6458) (Mod!6458) (Concat!17591) (Not!6458) (Plus!6458) (SpaceValue!6458 (value!198126 List!40582)) (IntegerValue!19376 (value!198127 Int) (text!45655 List!40582)) (StringLiteralValue!19375 (text!45656 List!40582)) (FloatLiteralValue!12917 (text!45657 List!40582)) (BytesLiteralValue!6458 (value!198128 List!40582)) (CommentValue!12917 (value!198129 List!40582)) (StringLiteralValue!19376 (value!198130 List!40582)) (ErrorTokenValue!6458 (msg!6519 List!40582)) )
))
(declare-datatypes ((C!22452 0))(
  ( (C!22453 (val!13320 Int)) )
))
(declare-datatypes ((Regex!11133 0))(
  ( (ElementMatch!11133 (c!668400 C!22452)) (Concat!17592 (regOne!22778 Regex!11133) (regTwo!22778 Regex!11133)) (EmptyExpr!11133) (Star!11133 (reg!11462 Regex!11133)) (EmptyLang!11133) (Union!11133 (regOne!22779 Regex!11133) (regTwo!22779 Regex!11133)) )
))
(declare-datatypes ((String!46008 0))(
  ( (String!46009 (value!198131 String)) )
))
(declare-datatypes ((List!40583 0))(
  ( (Nil!40459) (Cons!40459 (h!45879 C!22452) (t!309172 List!40583)) )
))
(declare-datatypes ((IArray!24883 0))(
  ( (IArray!24884 (innerList!12499 List!40583)) )
))
(declare-datatypes ((Conc!12439 0))(
  ( (Node!12439 (left!31307 Conc!12439) (right!31637 Conc!12439) (csize!25108 Int) (cheight!12650 Int)) (Leaf!19260 (xs!15745 IArray!24883) (csize!25109 Int)) (Empty!12439) )
))
(declare-datatypes ((BalanceConc!24472 0))(
  ( (BalanceConc!24473 (c!668401 Conc!12439)) )
))
(declare-datatypes ((TokenValueInjection!12344 0))(
  ( (TokenValueInjection!12345 (toValue!8632 Int) (toChars!8491 Int)) )
))
(declare-datatypes ((Rule!12256 0))(
  ( (Rule!12257 (regex!6228 Regex!11133) (tag!7088 String!46008) (isSeparator!6228 Bool) (transformation!6228 TokenValueInjection!12344)) )
))
(declare-datatypes ((Token!11594 0))(
  ( (Token!11595 (value!198132 TokenValue!6458) (rule!9060 Rule!12256) (size!30492 Int) (originalCharacters!6828 List!40583)) )
))
(declare-datatypes ((List!40584 0))(
  ( (Nil!40460) (Cons!40460 (h!45880 Token!11594) (t!309173 List!40584)) )
))
(declare-fun prefixTokens!80 () List!40584)

(declare-fun e!2366849 () Bool)

(declare-fun e!2366853 () Bool)

(declare-fun b!3832713 () Bool)

(declare-fun tp!1159579 () Bool)

(declare-fun inv!54595 (Token!11594) Bool)

(assert (=> b!3832713 (= e!2366849 (and (inv!54595 (h!45880 prefixTokens!80)) e!2366853 tp!1159579))))

(declare-fun b!3832714 () Bool)

(declare-fun tp!1159585 () Bool)

(declare-fun e!2366864 () Bool)

(declare-fun inv!54592 (String!46008) Bool)

(declare-fun inv!54596 (TokenValueInjection!12344) Bool)

(assert (=> b!3832714 (= e!2366864 (and tp!1159585 (inv!54592 (tag!7088 (rule!9060 (h!45880 prefixTokens!80)))) (inv!54596 (transformation!6228 (rule!9060 (h!45880 prefixTokens!80)))) e!2366866))))

(declare-fun res!1551524 () Bool)

(declare-fun e!2366863 () Bool)

(assert (=> start!358660 (=> (not res!1551524) (not e!2366863))))

(declare-datatypes ((LexerInterface!5817 0))(
  ( (LexerInterfaceExt!5814 (__x!25134 Int)) (Lexer!5815) )
))
(declare-fun thiss!20629 () LexerInterface!5817)

(get-info :version)

(assert (=> start!358660 (= res!1551524 ((_ is Lexer!5815) thiss!20629))))

(assert (=> start!358660 e!2366863))

(assert (=> start!358660 true))

(assert (=> start!358660 e!2366862))

(declare-fun e!2366860 () Bool)

(assert (=> start!358660 e!2366860))

(assert (=> start!358660 e!2366849))

(declare-fun e!2366861 () Bool)

(assert (=> start!358660 e!2366861))

(declare-fun e!2366851 () Bool)

(assert (=> start!358660 e!2366851))

(declare-fun b!3832715 () Bool)

(declare-fun res!1551525 () Bool)

(assert (=> b!3832715 (=> (not res!1551525) (not e!2366863))))

(declare-datatypes ((List!40585 0))(
  ( (Nil!40461) (Cons!40461 (h!45881 Rule!12256) (t!309174 List!40585)) )
))
(declare-fun rules!2768 () List!40585)

(declare-fun isEmpty!23882 (List!40585) Bool)

(assert (=> b!3832715 (= res!1551525 (not (isEmpty!23882 rules!2768)))))

(declare-fun e!2366858 () Bool)

(declare-fun b!3832716 () Bool)

(declare-fun tp!1159577 () Bool)

(declare-fun e!2366857 () Bool)

(assert (=> b!3832716 (= e!2366857 (and tp!1159577 (inv!54592 (tag!7088 (h!45881 rules!2768))) (inv!54596 (transformation!6228 (h!45881 rules!2768))) e!2366858))))

(declare-fun b!3832717 () Bool)

(declare-fun tp!1159586 () Bool)

(assert (=> b!3832717 (= e!2366860 (and e!2366857 tp!1159586))))

(declare-fun b!3832718 () Bool)

(declare-fun res!1551526 () Bool)

(assert (=> b!3832718 (=> (not res!1551526) (not e!2366863))))

(declare-fun prefix!426 () List!40583)

(declare-fun isEmpty!23883 (List!40583) Bool)

(assert (=> b!3832718 (= res!1551526 (not (isEmpty!23883 prefix!426)))))

(declare-fun b!3832719 () Bool)

(declare-fun e!2366856 () Bool)

(declare-fun suffixTokens!72 () List!40584)

(declare-fun tp!1159588 () Bool)

(declare-fun e!2366854 () Bool)

(assert (=> b!3832719 (= e!2366856 (and tp!1159588 (inv!54592 (tag!7088 (rule!9060 (h!45880 suffixTokens!72)))) (inv!54596 (transformation!6228 (rule!9060 (h!45880 suffixTokens!72)))) e!2366854))))

(assert (=> b!3832720 (= e!2366854 (and tp!1159592 tp!1159591))))

(declare-fun e!2366865 () Bool)

(declare-fun b!3832721 () Bool)

(declare-fun tp!1159580 () Bool)

(assert (=> b!3832721 (= e!2366861 (and (inv!54595 (h!45880 suffixTokens!72)) e!2366865 tp!1159580))))

(declare-fun b!3832722 () Bool)

(declare-fun tp!1159587 () Bool)

(declare-fun inv!21 (TokenValue!6458) Bool)

(assert (=> b!3832722 (= e!2366853 (and (inv!21 (value!198132 (h!45880 prefixTokens!80))) e!2366864 tp!1159587))))

(declare-fun tp!1159578 () Bool)

(declare-fun b!3832723 () Bool)

(assert (=> b!3832723 (= e!2366865 (and (inv!21 (value!198132 (h!45880 suffixTokens!72))) e!2366856 tp!1159578))))

(declare-fun b!3832724 () Bool)

(declare-fun res!1551528 () Bool)

(assert (=> b!3832724 (=> (not res!1551528) (not e!2366863))))

(declare-fun rulesInvariant!5160 (LexerInterface!5817 List!40585) Bool)

(assert (=> b!3832724 (= res!1551528 (rulesInvariant!5160 thiss!20629 rules!2768))))

(assert (=> b!3832725 (= e!2366858 (and tp!1159583 tp!1159584))))

(declare-fun b!3832726 () Bool)

(declare-fun tp!1159581 () Bool)

(assert (=> b!3832726 (= e!2366851 (and tp_is_empty!19237 tp!1159581))))

(declare-fun b!3832727 () Bool)

(declare-fun res!1551527 () Bool)

(assert (=> b!3832727 (=> (not res!1551527) (not e!2366863))))

(declare-fun isEmpty!23884 (List!40584) Bool)

(assert (=> b!3832727 (= res!1551527 (not (isEmpty!23884 prefixTokens!80)))))

(declare-fun b!3832728 () Bool)

(assert (=> b!3832728 (= e!2366863 false)))

(declare-fun lt!1330687 () List!40583)

(declare-datatypes ((tuple2!39644 0))(
  ( (tuple2!39645 (_1!22956 List!40584) (_2!22956 List!40583)) )
))
(declare-fun lt!1330685 () tuple2!39644)

(declare-fun lexList!1585 (LexerInterface!5817 List!40585 List!40583) tuple2!39644)

(assert (=> b!3832728 (= lt!1330685 (lexList!1585 thiss!20629 rules!2768 lt!1330687))))

(declare-fun lt!1330686 () List!40584)

(declare-fun ++!10213 (List!40584 List!40584) List!40584)

(assert (=> b!3832728 (= lt!1330686 (++!10213 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!40583)

(declare-fun ++!10214 (List!40583 List!40583) List!40583)

(assert (=> b!3832728 (= lt!1330687 (++!10214 prefix!426 suffix!1176))))

(assert (= (and start!358660 res!1551524) b!3832715))

(assert (= (and b!3832715 res!1551525) b!3832724))

(assert (= (and b!3832724 res!1551528) b!3832727))

(assert (= (and b!3832727 res!1551527) b!3832718))

(assert (= (and b!3832718 res!1551526) b!3832728))

(assert (= (and start!358660 ((_ is Cons!40459) suffix!1176)) b!3832712))

(assert (= b!3832716 b!3832725))

(assert (= b!3832717 b!3832716))

(assert (= (and start!358660 ((_ is Cons!40461) rules!2768)) b!3832717))

(assert (= b!3832714 b!3832711))

(assert (= b!3832722 b!3832714))

(assert (= b!3832713 b!3832722))

(assert (= (and start!358660 ((_ is Cons!40460) prefixTokens!80)) b!3832713))

(assert (= b!3832719 b!3832720))

(assert (= b!3832723 b!3832719))

(assert (= b!3832721 b!3832723))

(assert (= (and start!358660 ((_ is Cons!40460) suffixTokens!72)) b!3832721))

(assert (= (and start!358660 ((_ is Cons!40459) prefix!426)) b!3832726))

(declare-fun m!4387195 () Bool)

(assert (=> b!3832716 m!4387195))

(declare-fun m!4387197 () Bool)

(assert (=> b!3832716 m!4387197))

(declare-fun m!4387199 () Bool)

(assert (=> b!3832714 m!4387199))

(declare-fun m!4387201 () Bool)

(assert (=> b!3832714 m!4387201))

(declare-fun m!4387203 () Bool)

(assert (=> b!3832719 m!4387203))

(declare-fun m!4387205 () Bool)

(assert (=> b!3832719 m!4387205))

(declare-fun m!4387207 () Bool)

(assert (=> b!3832728 m!4387207))

(declare-fun m!4387209 () Bool)

(assert (=> b!3832728 m!4387209))

(declare-fun m!4387211 () Bool)

(assert (=> b!3832728 m!4387211))

(declare-fun m!4387213 () Bool)

(assert (=> b!3832724 m!4387213))

(declare-fun m!4387215 () Bool)

(assert (=> b!3832718 m!4387215))

(declare-fun m!4387217 () Bool)

(assert (=> b!3832727 m!4387217))

(declare-fun m!4387219 () Bool)

(assert (=> b!3832715 m!4387219))

(declare-fun m!4387221 () Bool)

(assert (=> b!3832713 m!4387221))

(declare-fun m!4387223 () Bool)

(assert (=> b!3832721 m!4387223))

(declare-fun m!4387225 () Bool)

(assert (=> b!3832723 m!4387225))

(declare-fun m!4387227 () Bool)

(assert (=> b!3832722 m!4387227))

(check-sat (not b!3832713) b_and!284805 (not b_next!102397) (not b!3832716) (not b!3832723) (not b!3832715) (not b!3832721) b_and!284811 (not b_next!102399) (not b_next!102391) (not b!3832719) b_and!284807 (not b_next!102393) (not b!3832714) b_and!284813 (not b!3832722) (not b_next!102395) (not b!3832717) (not b_next!102389) tp_is_empty!19237 (not b!3832728) (not b!3832727) (not b!3832712) (not b!3832724) b_and!284803 (not b!3832726) b_and!284809 (not b!3832718))
(check-sat b_and!284805 (not b_next!102397) (not b_next!102395) (not b_next!102389) b_and!284811 (not b_next!102399) (not b_next!102391) b_and!284807 b_and!284803 b_and!284809 (not b_next!102393) b_and!284813)
