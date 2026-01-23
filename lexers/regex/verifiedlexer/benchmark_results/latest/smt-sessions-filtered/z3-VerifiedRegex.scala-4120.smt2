; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220868 () Bool)

(assert start!220868)

(declare-fun b!2261653 () Bool)

(declare-fun b_free!66797 () Bool)

(declare-fun b_next!67501 () Bool)

(assert (=> b!2261653 (= b_free!66797 (not b_next!67501))))

(declare-fun tp!715309 () Bool)

(declare-fun b_and!177713 () Bool)

(assert (=> b!2261653 (= tp!715309 b_and!177713)))

(declare-fun b_free!66799 () Bool)

(declare-fun b_next!67503 () Bool)

(assert (=> b!2261653 (= b_free!66799 (not b_next!67503))))

(declare-fun tp!715314 () Bool)

(declare-fun b_and!177715 () Bool)

(assert (=> b!2261653 (= tp!715314 b_and!177715)))

(declare-fun b!2261652 () Bool)

(declare-fun b_free!66801 () Bool)

(declare-fun b_next!67505 () Bool)

(assert (=> b!2261652 (= b_free!66801 (not b_next!67505))))

(declare-fun tp!715312 () Bool)

(declare-fun b_and!177717 () Bool)

(assert (=> b!2261652 (= tp!715312 b_and!177717)))

(declare-fun b_free!66803 () Bool)

(declare-fun b_next!67507 () Bool)

(assert (=> b!2261652 (= b_free!66803 (not b_next!67507))))

(declare-fun tp!715315 () Bool)

(declare-fun b_and!177719 () Bool)

(assert (=> b!2261652 (= tp!715315 b_and!177719)))

(declare-fun b!2261670 () Bool)

(declare-fun b_free!66805 () Bool)

(declare-fun b_next!67509 () Bool)

(assert (=> b!2261670 (= b_free!66805 (not b_next!67509))))

(declare-fun tp!715319 () Bool)

(declare-fun b_and!177721 () Bool)

(assert (=> b!2261670 (= tp!715319 b_and!177721)))

(declare-fun b_free!66807 () Bool)

(declare-fun b_next!67511 () Bool)

(assert (=> b!2261670 (= b_free!66807 (not b_next!67511))))

(declare-fun tp!715308 () Bool)

(declare-fun b_and!177723 () Bool)

(assert (=> b!2261670 (= tp!715308 b_and!177723)))

(declare-fun b!2261647 () Bool)

(declare-fun b_free!66809 () Bool)

(declare-fun b_next!67513 () Bool)

(assert (=> b!2261647 (= b_free!66809 (not b_next!67513))))

(declare-fun tp!715320 () Bool)

(declare-fun b_and!177725 () Bool)

(assert (=> b!2261647 (= tp!715320 b_and!177725)))

(declare-fun b_free!66811 () Bool)

(declare-fun b_next!67515 () Bool)

(assert (=> b!2261647 (= b_free!66811 (not b_next!67515))))

(declare-fun tp!715306 () Bool)

(declare-fun b_and!177727 () Bool)

(assert (=> b!2261647 (= tp!715306 b_and!177727)))

(declare-fun e!1448072 () Bool)

(assert (=> b!2261647 (= e!1448072 (and tp!715320 tp!715306))))

(declare-datatypes ((List!26947 0))(
  ( (Nil!26853) (Cons!26853 (h!32254 (_ BitVec 16)) (t!201731 List!26947)) )
))
(declare-datatypes ((TokenValue!4433 0))(
  ( (FloatLiteralValue!8866 (text!31476 List!26947)) (TokenValueExt!4432 (__x!17926 Int)) (Broken!22165 (value!135517 List!26947)) (Object!4526) (End!4433) (Def!4433) (Underscore!4433) (Match!4433) (Else!4433) (Error!4433) (Case!4433) (If!4433) (Extends!4433) (Abstract!4433) (Class!4433) (Val!4433) (DelimiterValue!8866 (del!4493 List!26947)) (KeywordValue!4439 (value!135518 List!26947)) (CommentValue!8866 (value!135519 List!26947)) (WhitespaceValue!8866 (value!135520 List!26947)) (IndentationValue!4433 (value!135521 List!26947)) (String!29268) (Int32!4433) (Broken!22166 (value!135522 List!26947)) (Boolean!4434) (Unit!39789) (OperatorValue!4436 (op!4493 List!26947)) (IdentifierValue!8866 (value!135523 List!26947)) (IdentifierValue!8867 (value!135524 List!26947)) (WhitespaceValue!8867 (value!135525 List!26947)) (True!8866) (False!8866) (Broken!22167 (value!135526 List!26947)) (Broken!22168 (value!135527 List!26947)) (True!8867) (RightBrace!4433) (RightBracket!4433) (Colon!4433) (Null!4433) (Comma!4433) (LeftBracket!4433) (False!8867) (LeftBrace!4433) (ImaginaryLiteralValue!4433 (text!31477 List!26947)) (StringLiteralValue!13299 (value!135528 List!26947)) (EOFValue!4433 (value!135529 List!26947)) (IdentValue!4433 (value!135530 List!26947)) (DelimiterValue!8867 (value!135531 List!26947)) (DedentValue!4433 (value!135532 List!26947)) (NewLineValue!4433 (value!135533 List!26947)) (IntegerValue!13299 (value!135534 (_ BitVec 32)) (text!31478 List!26947)) (IntegerValue!13300 (value!135535 Int) (text!31479 List!26947)) (Times!4433) (Or!4433) (Equal!4433) (Minus!4433) (Broken!22169 (value!135536 List!26947)) (And!4433) (Div!4433) (LessEqual!4433) (Mod!4433) (Concat!11052) (Not!4433) (Plus!4433) (SpaceValue!4433 (value!135537 List!26947)) (IntegerValue!13301 (value!135538 Int) (text!31480 List!26947)) (StringLiteralValue!13300 (text!31481 List!26947)) (FloatLiteralValue!8867 (text!31482 List!26947)) (BytesLiteralValue!4433 (value!135539 List!26947)) (CommentValue!8867 (value!135540 List!26947)) (StringLiteralValue!13301 (value!135541 List!26947)) (ErrorTokenValue!4433 (msg!4494 List!26947)) )
))
(declare-datatypes ((C!13384 0))(
  ( (C!13385 (val!7740 Int)) )
))
(declare-datatypes ((List!26948 0))(
  ( (Nil!26854) (Cons!26854 (h!32255 C!13384) (t!201732 List!26948)) )
))
(declare-datatypes ((IArray!17385 0))(
  ( (IArray!17386 (innerList!8750 List!26948)) )
))
(declare-datatypes ((Conc!8690 0))(
  ( (Node!8690 (left!20386 Conc!8690) (right!20716 Conc!8690) (csize!17610 Int) (cheight!8901 Int)) (Leaf!12811 (xs!11632 IArray!17385) (csize!17611 Int)) (Empty!8690) )
))
(declare-datatypes ((BalanceConc!17108 0))(
  ( (BalanceConc!17109 (c!359324 Conc!8690)) )
))
(declare-datatypes ((Regex!6619 0))(
  ( (ElementMatch!6619 (c!359325 C!13384)) (Concat!11053 (regOne!13750 Regex!6619) (regTwo!13750 Regex!6619)) (EmptyExpr!6619) (Star!6619 (reg!6948 Regex!6619)) (EmptyLang!6619) (Union!6619 (regOne!13751 Regex!6619) (regTwo!13751 Regex!6619)) )
))
(declare-datatypes ((String!29269 0))(
  ( (String!29270 (value!135542 String)) )
))
(declare-datatypes ((TokenValueInjection!8406 0))(
  ( (TokenValueInjection!8407 (toValue!6021 Int) (toChars!5880 Int)) )
))
(declare-datatypes ((Rule!8342 0))(
  ( (Rule!8343 (regex!4271 Regex!6619) (tag!4761 String!29269) (isSeparator!4271 Bool) (transformation!4271 TokenValueInjection!8406)) )
))
(declare-fun r!2363 () Rule!8342)

(declare-fun b!2261648 () Bool)

(declare-fun e!1448069 () Bool)

(declare-fun tp!715316 () Bool)

(declare-fun inv!36393 (String!29269) Bool)

(declare-fun inv!36396 (TokenValueInjection!8406) Bool)

(assert (=> b!2261648 (= e!1448069 (and tp!715316 (inv!36393 (tag!4761 r!2363)) (inv!36396 (transformation!4271 r!2363)) e!1448072))))

(declare-fun b!2261649 () Bool)

(declare-fun e!1448059 () Bool)

(declare-datatypes ((Token!8020 0))(
  ( (Token!8021 (value!135543 TokenValue!4433) (rule!6583 Rule!8342) (size!21046 Int) (originalCharacters!5041 List!26948)) )
))
(declare-datatypes ((List!26949 0))(
  ( (Nil!26855) (Cons!26855 (h!32256 Token!8020) (t!201733 List!26949)) )
))
(declare-fun tokens!456 () List!26949)

(declare-fun matchR!2880 (Regex!6619 List!26948) Bool)

(declare-fun list!10361 (BalanceConc!17108) List!26948)

(declare-fun charsOf!2659 (Token!8020) BalanceConc!17108)

(declare-fun head!4852 (List!26949) Token!8020)

(assert (=> b!2261649 (= e!1448059 (not (matchR!2880 (regex!4271 r!2363) (list!10361 (charsOf!2659 (head!4852 tokens!456))))))))

(declare-fun res!966749 () Bool)

(declare-fun e!1448070 () Bool)

(assert (=> start!220868 (=> (not res!966749) (not e!1448070))))

(declare-datatypes ((LexerInterface!3868 0))(
  ( (LexerInterfaceExt!3865 (__x!17927 Int)) (Lexer!3866) )
))
(declare-fun thiss!16613 () LexerInterface!3868)

(get-info :version)

(assert (=> start!220868 (= res!966749 ((_ is Lexer!3866) thiss!16613))))

(assert (=> start!220868 e!1448070))

(assert (=> start!220868 true))

(declare-fun e!1448076 () Bool)

(assert (=> start!220868 e!1448076))

(declare-fun e!1448058 () Bool)

(assert (=> start!220868 e!1448058))

(declare-fun e!1448073 () Bool)

(assert (=> start!220868 e!1448073))

(declare-fun e!1448057 () Bool)

(assert (=> start!220868 e!1448057))

(declare-fun e!1448084 () Bool)

(assert (=> start!220868 e!1448084))

(assert (=> start!220868 e!1448069))

(declare-fun e!1448063 () Bool)

(assert (=> start!220868 e!1448063))

(declare-fun b!2261650 () Bool)

(declare-fun res!966746 () Bool)

(declare-fun e!1448074 () Bool)

(assert (=> b!2261650 (=> (not res!966746) (not e!1448074))))

(declare-fun e!1448065 () Bool)

(assert (=> b!2261650 (= res!966746 e!1448065)))

(declare-fun res!966748 () Bool)

(assert (=> b!2261650 (=> res!966748 e!1448065)))

(declare-fun lt!840336 () Bool)

(assert (=> b!2261650 (= res!966748 lt!840336)))

(declare-fun b!2261651 () Bool)

(declare-fun res!966736 () Bool)

(assert (=> b!2261651 (=> (not res!966736) (not e!1448070))))

(declare-datatypes ((List!26950 0))(
  ( (Nil!26856) (Cons!26856 (h!32257 Rule!8342) (t!201734 List!26950)) )
))
(declare-fun rules!1750 () List!26950)

(declare-fun otherR!12 () Rule!8342)

(declare-fun contains!4627 (List!26950 Rule!8342) Bool)

(assert (=> b!2261651 (= res!966736 (contains!4627 rules!1750 otherR!12))))

(declare-fun e!1448077 () Bool)

(assert (=> b!2261652 (= e!1448077 (and tp!715312 tp!715315))))

(declare-fun e!1448080 () Bool)

(assert (=> b!2261653 (= e!1448080 (and tp!715309 tp!715314))))

(declare-fun b!2261654 () Bool)

(declare-fun tp!715311 () Bool)

(declare-fun e!1448078 () Bool)

(declare-fun e!1448079 () Bool)

(declare-fun inv!21 (TokenValue!4433) Bool)

(assert (=> b!2261654 (= e!1448078 (and (inv!21 (value!135543 (h!32256 tokens!456))) e!1448079 tp!715311))))

(declare-fun b!2261655 () Bool)

(declare-fun e!1448071 () Bool)

(declare-fun tp!715313 () Bool)

(assert (=> b!2261655 (= e!1448084 (and e!1448071 tp!715313))))

(declare-fun b!2261656 () Bool)

(assert (=> b!2261656 (= e!1448065 (= (rule!6583 (head!4852 tokens!456)) r!2363))))

(declare-fun tp!715322 () Bool)

(declare-fun b!2261657 () Bool)

(assert (=> b!2261657 (= e!1448058 (and tp!715322 (inv!36393 (tag!4761 otherR!12)) (inv!36396 (transformation!4271 otherR!12)) e!1448077))))

(declare-fun b!2261658 () Bool)

(declare-fun tp_is_empty!10459 () Bool)

(declare-fun tp!715321 () Bool)

(assert (=> b!2261658 (= e!1448076 (and tp_is_empty!10459 tp!715321))))

(declare-fun b!2261659 () Bool)

(declare-fun res!966737 () Bool)

(assert (=> b!2261659 (=> (not res!966737) (not e!1448070))))

(declare-fun isEmpty!15181 (List!26950) Bool)

(assert (=> b!2261659 (= res!966737 (not (isEmpty!15181 rules!1750)))))

(declare-fun b!2261660 () Bool)

(declare-fun res!966743 () Bool)

(assert (=> b!2261660 (=> (not res!966743) (not e!1448074))))

(assert (=> b!2261660 (= res!966743 (not (= r!2363 otherR!12)))))

(declare-fun b!2261661 () Bool)

(declare-fun e!1448062 () Bool)

(declare-fun e!1448085 () Bool)

(assert (=> b!2261661 (= e!1448062 e!1448085)))

(declare-fun res!966744 () Bool)

(assert (=> b!2261661 (=> res!966744 e!1448085)))

(assert (=> b!2261661 (= res!966744 ((_ is Nil!26855) tokens!456))))

(declare-datatypes ((Unit!39790 0))(
  ( (Unit!39791) )
))
(declare-fun lt!840342 () Unit!39790)

(declare-fun e!1448083 () Unit!39790)

(assert (=> b!2261661 (= lt!840342 e!1448083)))

(declare-fun c!359323 () Bool)

(declare-fun lt!840338 () Int)

(declare-fun lt!840337 () Int)

(assert (=> b!2261661 (= c!359323 (= lt!840338 lt!840337))))

(declare-fun b!2261662 () Bool)

(declare-fun res!966742 () Bool)

(assert (=> b!2261662 (=> (not res!966742) (not e!1448070))))

(assert (=> b!2261662 (= res!966742 (contains!4627 rules!1750 r!2363))))

(declare-fun b!2261663 () Bool)

(declare-fun tp!715323 () Bool)

(declare-fun inv!36397 (Token!8020) Bool)

(assert (=> b!2261663 (= e!1448063 (and (inv!36397 (h!32256 tokens!456)) e!1448078 tp!715323))))

(declare-fun b!2261664 () Bool)

(declare-fun e!1448064 () Bool)

(assert (=> b!2261664 (= e!1448064 e!1448062)))

(declare-fun res!966738 () Bool)

(assert (=> b!2261664 (=> res!966738 e!1448062)))

(assert (=> b!2261664 (= res!966738 (> lt!840338 lt!840337))))

(declare-fun getIndex!292 (List!26950 Rule!8342) Int)

(assert (=> b!2261664 (= lt!840337 (getIndex!292 rules!1750 otherR!12))))

(assert (=> b!2261664 (= lt!840338 (getIndex!292 rules!1750 r!2363))))

(declare-fun ruleValid!1363 (LexerInterface!3868 Rule!8342) Bool)

(assert (=> b!2261664 (ruleValid!1363 thiss!16613 otherR!12)))

(declare-fun lt!840333 () Unit!39790)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!770 (LexerInterface!3868 Rule!8342 List!26950) Unit!39790)

(assert (=> b!2261664 (= lt!840333 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!770 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2261665 () Bool)

(declare-fun Unit!39792 () Unit!39790)

(assert (=> b!2261665 (= e!1448083 Unit!39792)))

(declare-fun b!2261666 () Bool)

(declare-fun Unit!39793 () Unit!39790)

(assert (=> b!2261666 (= e!1448083 Unit!39793)))

(declare-fun lt!840335 () Unit!39790)

(declare-fun lemmaSameIndexThenSameElement!138 (List!26950 Rule!8342 Rule!8342) Unit!39790)

(assert (=> b!2261666 (= lt!840335 (lemmaSameIndexThenSameElement!138 rules!1750 r!2363 otherR!12))))

(assert (=> b!2261666 false))

(declare-fun b!2261667 () Bool)

(declare-fun res!966750 () Bool)

(assert (=> b!2261667 (=> (not res!966750) (not e!1448074))))

(declare-fun otherP!12 () List!26948)

(declare-fun input!1722 () List!26948)

(declare-fun isPrefix!2261 (List!26948 List!26948) Bool)

(assert (=> b!2261667 (= res!966750 (isPrefix!2261 otherP!12 input!1722))))

(declare-fun b!2261668 () Bool)

(declare-fun tp!715307 () Bool)

(assert (=> b!2261668 (= e!1448057 (and tp_is_empty!10459 tp!715307))))

(declare-fun b!2261669 () Bool)

(declare-fun lt!840339 () List!26948)

(declare-fun size!21047 (List!26948) Int)

(assert (=> b!2261669 (= e!1448085 (>= (size!21047 input!1722) (size!21047 lt!840339)))))

(declare-datatypes ((tuple2!26450 0))(
  ( (tuple2!26451 (_1!15735 Token!8020) (_2!15735 List!26948)) )
))
(declare-fun lt!840332 () tuple2!26450)

(declare-fun ++!6539 (List!26948 List!26948) List!26948)

(assert (=> b!2261669 (isPrefix!2261 lt!840339 (++!6539 lt!840339 (_2!15735 lt!840332)))))

(declare-fun lt!840334 () Unit!39790)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1486 (List!26948 List!26948) Unit!39790)

(assert (=> b!2261669 (= lt!840334 (lemmaConcatTwoListThenFirstIsPrefix!1486 lt!840339 (_2!15735 lt!840332)))))

(assert (=> b!2261669 (= lt!840339 (list!10361 (charsOf!2659 (h!32256 tokens!456))))))

(declare-datatypes ((Option!5247 0))(
  ( (None!5246) (Some!5246 (v!30280 tuple2!26450)) )
))
(declare-fun get!8100 (Option!5247) tuple2!26450)

(declare-fun maxPrefix!2142 (LexerInterface!3868 List!26950 List!26948) Option!5247)

(assert (=> b!2261669 (= lt!840332 (get!8100 (maxPrefix!2142 thiss!16613 rules!1750 input!1722)))))

(declare-fun e!1448068 () Bool)

(assert (=> b!2261670 (= e!1448068 (and tp!715319 tp!715308))))

(declare-fun b!2261671 () Bool)

(declare-fun e!1448060 () Bool)

(declare-fun size!21048 (BalanceConc!17108) Int)

(assert (=> b!2261671 (= e!1448060 (<= (size!21048 (charsOf!2659 (head!4852 tokens!456))) (size!21047 otherP!12)))))

(declare-fun b!2261672 () Bool)

(declare-fun e!1448081 () Bool)

(assert (=> b!2261672 (= e!1448070 e!1448081)))

(declare-fun res!966747 () Bool)

(assert (=> b!2261672 (=> (not res!966747) (not e!1448081))))

(declare-datatypes ((IArray!17387 0))(
  ( (IArray!17388 (innerList!8751 List!26949)) )
))
(declare-datatypes ((Conc!8691 0))(
  ( (Node!8691 (left!20387 Conc!8691) (right!20717 Conc!8691) (csize!17612 Int) (cheight!8902 Int)) (Leaf!12812 (xs!11633 IArray!17387) (csize!17613 Int)) (Empty!8691) )
))
(declare-datatypes ((BalanceConc!17110 0))(
  ( (BalanceConc!17111 (c!359326 Conc!8691)) )
))
(declare-datatypes ((tuple2!26452 0))(
  ( (tuple2!26453 (_1!15736 BalanceConc!17110) (_2!15736 BalanceConc!17108)) )
))
(declare-fun lt!840341 () tuple2!26452)

(declare-fun suffix!886 () List!26948)

(declare-datatypes ((tuple2!26454 0))(
  ( (tuple2!26455 (_1!15737 List!26949) (_2!15737 List!26948)) )
))
(declare-fun list!10362 (BalanceConc!17110) List!26949)

(assert (=> b!2261672 (= res!966747 (= (tuple2!26455 (list!10362 (_1!15736 lt!840341)) (list!10361 (_2!15736 lt!840341))) (tuple2!26455 tokens!456 suffix!886)))))

(declare-fun lex!1707 (LexerInterface!3868 List!26950 BalanceConc!17108) tuple2!26452)

(declare-fun seqFromList!2975 (List!26948) BalanceConc!17108)

(assert (=> b!2261672 (= lt!840341 (lex!1707 thiss!16613 rules!1750 (seqFromList!2975 input!1722)))))

(declare-fun b!2261673 () Bool)

(declare-fun tp!715317 () Bool)

(assert (=> b!2261673 (= e!1448073 (and tp_is_empty!10459 tp!715317))))

(declare-fun b!2261674 () Bool)

(declare-fun res!966735 () Bool)

(assert (=> b!2261674 (=> (not res!966735) (not e!1448070))))

(declare-fun rulesInvariant!3370 (LexerInterface!3868 List!26950) Bool)

(assert (=> b!2261674 (= res!966735 (rulesInvariant!3370 thiss!16613 rules!1750))))

(declare-fun tp!715310 () Bool)

(declare-fun b!2261675 () Bool)

(assert (=> b!2261675 (= e!1448079 (and tp!715310 (inv!36393 (tag!4761 (rule!6583 (h!32256 tokens!456)))) (inv!36396 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) e!1448080))))

(declare-fun tp!715318 () Bool)

(declare-fun b!2261676 () Bool)

(assert (=> b!2261676 (= e!1448071 (and tp!715318 (inv!36393 (tag!4761 (h!32257 rules!1750))) (inv!36396 (transformation!4271 (h!32257 rules!1750))) e!1448068))))

(declare-fun b!2261677 () Bool)

(assert (=> b!2261677 (= e!1448081 e!1448074)))

(declare-fun res!966740 () Bool)

(assert (=> b!2261677 (=> (not res!966740) (not e!1448074))))

(assert (=> b!2261677 (= res!966740 e!1448060)))

(declare-fun res!966745 () Bool)

(assert (=> b!2261677 (=> res!966745 e!1448060)))

(assert (=> b!2261677 (= res!966745 lt!840336)))

(declare-fun isEmpty!15182 (List!26949) Bool)

(assert (=> b!2261677 (= lt!840336 (isEmpty!15182 tokens!456))))

(declare-fun b!2261678 () Bool)

(assert (=> b!2261678 (= e!1448074 (not e!1448064))))

(declare-fun res!966741 () Bool)

(assert (=> b!2261678 (=> res!966741 e!1448064)))

(assert (=> b!2261678 (= res!966741 e!1448059)))

(declare-fun res!966739 () Bool)

(assert (=> b!2261678 (=> (not res!966739) (not e!1448059))))

(assert (=> b!2261678 (= res!966739 (not lt!840336))))

(assert (=> b!2261678 (ruleValid!1363 thiss!16613 r!2363)))

(declare-fun lt!840340 () Unit!39790)

(assert (=> b!2261678 (= lt!840340 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!770 thiss!16613 r!2363 rules!1750))))

(assert (= (and start!220868 res!966749) b!2261659))

(assert (= (and b!2261659 res!966737) b!2261674))

(assert (= (and b!2261674 res!966735) b!2261662))

(assert (= (and b!2261662 res!966742) b!2261651))

(assert (= (and b!2261651 res!966736) b!2261672))

(assert (= (and b!2261672 res!966747) b!2261677))

(assert (= (and b!2261677 (not res!966745)) b!2261671))

(assert (= (and b!2261677 res!966740) b!2261650))

(assert (= (and b!2261650 (not res!966748)) b!2261656))

(assert (= (and b!2261650 res!966746) b!2261667))

(assert (= (and b!2261667 res!966750) b!2261660))

(assert (= (and b!2261660 res!966743) b!2261678))

(assert (= (and b!2261678 res!966739) b!2261649))

(assert (= (and b!2261678 (not res!966741)) b!2261664))

(assert (= (and b!2261664 (not res!966738)) b!2261661))

(assert (= (and b!2261661 c!359323) b!2261666))

(assert (= (and b!2261661 (not c!359323)) b!2261665))

(assert (= (and b!2261661 (not res!966744)) b!2261669))

(assert (= (and start!220868 ((_ is Cons!26854) input!1722)) b!2261658))

(assert (= b!2261657 b!2261652))

(assert (= start!220868 b!2261657))

(assert (= (and start!220868 ((_ is Cons!26854) suffix!886)) b!2261673))

(assert (= (and start!220868 ((_ is Cons!26854) otherP!12)) b!2261668))

(assert (= b!2261676 b!2261670))

(assert (= b!2261655 b!2261676))

(assert (= (and start!220868 ((_ is Cons!26856) rules!1750)) b!2261655))

(assert (= b!2261648 b!2261647))

(assert (= start!220868 b!2261648))

(assert (= b!2261675 b!2261653))

(assert (= b!2261654 b!2261675))

(assert (= b!2261663 b!2261654))

(assert (= (and start!220868 ((_ is Cons!26855) tokens!456)) b!2261663))

(declare-fun m!2691195 () Bool)

(assert (=> b!2261662 m!2691195))

(declare-fun m!2691197 () Bool)

(assert (=> b!2261654 m!2691197))

(declare-fun m!2691199 () Bool)

(assert (=> b!2261674 m!2691199))

(declare-fun m!2691201 () Bool)

(assert (=> b!2261656 m!2691201))

(declare-fun m!2691203 () Bool)

(assert (=> b!2261664 m!2691203))

(declare-fun m!2691205 () Bool)

(assert (=> b!2261664 m!2691205))

(declare-fun m!2691207 () Bool)

(assert (=> b!2261664 m!2691207))

(declare-fun m!2691209 () Bool)

(assert (=> b!2261664 m!2691209))

(declare-fun m!2691211 () Bool)

(assert (=> b!2261676 m!2691211))

(declare-fun m!2691213 () Bool)

(assert (=> b!2261676 m!2691213))

(declare-fun m!2691215 () Bool)

(assert (=> b!2261651 m!2691215))

(assert (=> b!2261671 m!2691201))

(assert (=> b!2261671 m!2691201))

(declare-fun m!2691217 () Bool)

(assert (=> b!2261671 m!2691217))

(assert (=> b!2261671 m!2691217))

(declare-fun m!2691219 () Bool)

(assert (=> b!2261671 m!2691219))

(declare-fun m!2691221 () Bool)

(assert (=> b!2261671 m!2691221))

(declare-fun m!2691223 () Bool)

(assert (=> b!2261663 m!2691223))

(declare-fun m!2691225 () Bool)

(assert (=> b!2261675 m!2691225))

(declare-fun m!2691227 () Bool)

(assert (=> b!2261675 m!2691227))

(assert (=> b!2261649 m!2691201))

(assert (=> b!2261649 m!2691201))

(assert (=> b!2261649 m!2691217))

(assert (=> b!2261649 m!2691217))

(declare-fun m!2691229 () Bool)

(assert (=> b!2261649 m!2691229))

(assert (=> b!2261649 m!2691229))

(declare-fun m!2691231 () Bool)

(assert (=> b!2261649 m!2691231))

(declare-fun m!2691233 () Bool)

(assert (=> b!2261657 m!2691233))

(declare-fun m!2691235 () Bool)

(assert (=> b!2261657 m!2691235))

(declare-fun m!2691237 () Bool)

(assert (=> b!2261669 m!2691237))

(declare-fun m!2691239 () Bool)

(assert (=> b!2261669 m!2691239))

(declare-fun m!2691241 () Bool)

(assert (=> b!2261669 m!2691241))

(declare-fun m!2691243 () Bool)

(assert (=> b!2261669 m!2691243))

(declare-fun m!2691245 () Bool)

(assert (=> b!2261669 m!2691245))

(assert (=> b!2261669 m!2691243))

(declare-fun m!2691247 () Bool)

(assert (=> b!2261669 m!2691247))

(declare-fun m!2691249 () Bool)

(assert (=> b!2261669 m!2691249))

(declare-fun m!2691251 () Bool)

(assert (=> b!2261669 m!2691251))

(assert (=> b!2261669 m!2691247))

(declare-fun m!2691253 () Bool)

(assert (=> b!2261669 m!2691253))

(assert (=> b!2261669 m!2691249))

(declare-fun m!2691255 () Bool)

(assert (=> b!2261666 m!2691255))

(declare-fun m!2691257 () Bool)

(assert (=> b!2261648 m!2691257))

(declare-fun m!2691259 () Bool)

(assert (=> b!2261648 m!2691259))

(declare-fun m!2691261 () Bool)

(assert (=> b!2261678 m!2691261))

(declare-fun m!2691263 () Bool)

(assert (=> b!2261678 m!2691263))

(declare-fun m!2691265 () Bool)

(assert (=> b!2261667 m!2691265))

(declare-fun m!2691267 () Bool)

(assert (=> b!2261672 m!2691267))

(declare-fun m!2691269 () Bool)

(assert (=> b!2261672 m!2691269))

(declare-fun m!2691271 () Bool)

(assert (=> b!2261672 m!2691271))

(assert (=> b!2261672 m!2691271))

(declare-fun m!2691273 () Bool)

(assert (=> b!2261672 m!2691273))

(declare-fun m!2691275 () Bool)

(assert (=> b!2261659 m!2691275))

(declare-fun m!2691277 () Bool)

(assert (=> b!2261677 m!2691277))

(check-sat b_and!177715 (not b!2261656) tp_is_empty!10459 (not b!2261677) (not b!2261675) (not b!2261655) (not b_next!67501) (not b!2261666) (not b!2261651) (not b_next!67515) b_and!177723 (not b_next!67513) b_and!177719 b_and!177717 (not b!2261671) (not b!2261668) (not b!2261674) (not b!2261664) (not b_next!67509) (not b!2261662) (not b!2261659) b_and!177721 (not b!2261648) (not b_next!67503) (not b!2261673) (not b_next!67507) (not b!2261654) (not b!2261669) (not b!2261657) (not b!2261672) (not b!2261649) b_and!177713 b_and!177725 (not b!2261667) (not b!2261663) (not b!2261658) b_and!177727 (not b!2261676) (not b_next!67505) (not b!2261678) (not b_next!67511))
(check-sat b_and!177715 (not b_next!67509) b_and!177721 (not b_next!67503) (not b_next!67501) (not b_next!67507) (not b_next!67515) b_and!177723 (not b_next!67513) b_and!177719 b_and!177727 b_and!177717 (not b_next!67505) (not b_next!67511) b_and!177713 b_and!177725)
(get-model)

(declare-fun b!2261690 () Bool)

(declare-fun lt!840345 () List!26948)

(declare-fun e!1448091 () Bool)

(assert (=> b!2261690 (= e!1448091 (or (not (= (_2!15735 lt!840332) Nil!26854)) (= lt!840345 lt!840339)))))

(declare-fun b!2261688 () Bool)

(declare-fun e!1448090 () List!26948)

(assert (=> b!2261688 (= e!1448090 (Cons!26854 (h!32255 lt!840339) (++!6539 (t!201732 lt!840339) (_2!15735 lt!840332))))))

(declare-fun b!2261689 () Bool)

(declare-fun res!966763 () Bool)

(assert (=> b!2261689 (=> (not res!966763) (not e!1448091))))

(assert (=> b!2261689 (= res!966763 (= (size!21047 lt!840345) (+ (size!21047 lt!840339) (size!21047 (_2!15735 lt!840332)))))))

(declare-fun d!670037 () Bool)

(assert (=> d!670037 e!1448091))

(declare-fun res!966764 () Bool)

(assert (=> d!670037 (=> (not res!966764) (not e!1448091))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3577 (List!26948) (InoxSet C!13384))

(assert (=> d!670037 (= res!966764 (= (content!3577 lt!840345) ((_ map or) (content!3577 lt!840339) (content!3577 (_2!15735 lt!840332)))))))

(assert (=> d!670037 (= lt!840345 e!1448090)))

(declare-fun c!359329 () Bool)

(assert (=> d!670037 (= c!359329 ((_ is Nil!26854) lt!840339))))

(assert (=> d!670037 (= (++!6539 lt!840339 (_2!15735 lt!840332)) lt!840345)))

(declare-fun b!2261687 () Bool)

(assert (=> b!2261687 (= e!1448090 (_2!15735 lt!840332))))

(assert (= (and d!670037 c!359329) b!2261687))

(assert (= (and d!670037 (not c!359329)) b!2261688))

(assert (= (and d!670037 res!966764) b!2261689))

(assert (= (and b!2261689 res!966763) b!2261690))

(declare-fun m!2691279 () Bool)

(assert (=> b!2261688 m!2691279))

(declare-fun m!2691281 () Bool)

(assert (=> b!2261689 m!2691281))

(assert (=> b!2261689 m!2691237))

(declare-fun m!2691283 () Bool)

(assert (=> b!2261689 m!2691283))

(declare-fun m!2691285 () Bool)

(assert (=> d!670037 m!2691285))

(declare-fun m!2691287 () Bool)

(assert (=> d!670037 m!2691287))

(declare-fun m!2691289 () Bool)

(assert (=> d!670037 m!2691289))

(assert (=> b!2261669 d!670037))

(declare-fun d!670039 () Bool)

(declare-fun lt!840348 () Int)

(assert (=> d!670039 (>= lt!840348 0)))

(declare-fun e!1448094 () Int)

(assert (=> d!670039 (= lt!840348 e!1448094)))

(declare-fun c!359332 () Bool)

(assert (=> d!670039 (= c!359332 ((_ is Nil!26854) input!1722))))

(assert (=> d!670039 (= (size!21047 input!1722) lt!840348)))

(declare-fun b!2261695 () Bool)

(assert (=> b!2261695 (= e!1448094 0)))

(declare-fun b!2261696 () Bool)

(assert (=> b!2261696 (= e!1448094 (+ 1 (size!21047 (t!201732 input!1722))))))

(assert (= (and d!670039 c!359332) b!2261695))

(assert (= (and d!670039 (not c!359332)) b!2261696))

(declare-fun m!2691291 () Bool)

(assert (=> b!2261696 m!2691291))

(assert (=> b!2261669 d!670039))

(declare-fun d!670041 () Bool)

(declare-fun lt!840351 () BalanceConc!17108)

(assert (=> d!670041 (= (list!10361 lt!840351) (originalCharacters!5041 (h!32256 tokens!456)))))

(declare-fun dynLambda!11652 (Int TokenValue!4433) BalanceConc!17108)

(assert (=> d!670041 (= lt!840351 (dynLambda!11652 (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) (value!135543 (h!32256 tokens!456))))))

(assert (=> d!670041 (= (charsOf!2659 (h!32256 tokens!456)) lt!840351)))

(declare-fun b_lambda!72157 () Bool)

(assert (=> (not b_lambda!72157) (not d!670041)))

(declare-fun t!201736 () Bool)

(declare-fun tb!134095 () Bool)

(assert (=> (and b!2261653 (= (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456))))) t!201736) tb!134095))

(declare-fun b!2261701 () Bool)

(declare-fun e!1448097 () Bool)

(declare-fun tp!715326 () Bool)

(declare-fun inv!36398 (Conc!8690) Bool)

(assert (=> b!2261701 (= e!1448097 (and (inv!36398 (c!359324 (dynLambda!11652 (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) (value!135543 (h!32256 tokens!456))))) tp!715326))))

(declare-fun result!163482 () Bool)

(declare-fun inv!36399 (BalanceConc!17108) Bool)

(assert (=> tb!134095 (= result!163482 (and (inv!36399 (dynLambda!11652 (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) (value!135543 (h!32256 tokens!456)))) e!1448097))))

(assert (= tb!134095 b!2261701))

(declare-fun m!2691293 () Bool)

(assert (=> b!2261701 m!2691293))

(declare-fun m!2691295 () Bool)

(assert (=> tb!134095 m!2691295))

(assert (=> d!670041 t!201736))

(declare-fun b_and!177729 () Bool)

(assert (= b_and!177715 (and (=> t!201736 result!163482) b_and!177729)))

(declare-fun tb!134097 () Bool)

(declare-fun t!201738 () Bool)

(assert (=> (and b!2261652 (= (toChars!5880 (transformation!4271 otherR!12)) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456))))) t!201738) tb!134097))

(declare-fun result!163486 () Bool)

(assert (= result!163486 result!163482))

(assert (=> d!670041 t!201738))

(declare-fun b_and!177731 () Bool)

(assert (= b_and!177719 (and (=> t!201738 result!163486) b_and!177731)))

(declare-fun tb!134099 () Bool)

(declare-fun t!201740 () Bool)

(assert (=> (and b!2261670 (= (toChars!5880 (transformation!4271 (h!32257 rules!1750))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456))))) t!201740) tb!134099))

(declare-fun result!163488 () Bool)

(assert (= result!163488 result!163482))

(assert (=> d!670041 t!201740))

(declare-fun b_and!177733 () Bool)

(assert (= b_and!177723 (and (=> t!201740 result!163488) b_and!177733)))

(declare-fun t!201742 () Bool)

(declare-fun tb!134101 () Bool)

(assert (=> (and b!2261647 (= (toChars!5880 (transformation!4271 r!2363)) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456))))) t!201742) tb!134101))

(declare-fun result!163490 () Bool)

(assert (= result!163490 result!163482))

(assert (=> d!670041 t!201742))

(declare-fun b_and!177735 () Bool)

(assert (= b_and!177727 (and (=> t!201742 result!163490) b_and!177735)))

(declare-fun m!2691297 () Bool)

(assert (=> d!670041 m!2691297))

(declare-fun m!2691299 () Bool)

(assert (=> d!670041 m!2691299))

(assert (=> b!2261669 d!670041))

(declare-fun d!670043 () Bool)

(declare-fun lt!840352 () Int)

(assert (=> d!670043 (>= lt!840352 0)))

(declare-fun e!1448098 () Int)

(assert (=> d!670043 (= lt!840352 e!1448098)))

(declare-fun c!359333 () Bool)

(assert (=> d!670043 (= c!359333 ((_ is Nil!26854) lt!840339))))

(assert (=> d!670043 (= (size!21047 lt!840339) lt!840352)))

(declare-fun b!2261702 () Bool)

(assert (=> b!2261702 (= e!1448098 0)))

(declare-fun b!2261703 () Bool)

(assert (=> b!2261703 (= e!1448098 (+ 1 (size!21047 (t!201732 lt!840339))))))

(assert (= (and d!670043 c!359333) b!2261702))

(assert (= (and d!670043 (not c!359333)) b!2261703))

(declare-fun m!2691301 () Bool)

(assert (=> b!2261703 m!2691301))

(assert (=> b!2261669 d!670043))

(declare-fun d!670045 () Bool)

(assert (=> d!670045 (= (get!8100 (maxPrefix!2142 thiss!16613 rules!1750 input!1722)) (v!30280 (maxPrefix!2142 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2261669 d!670045))

(declare-fun call!135873 () Option!5247)

(declare-fun bm!135868 () Bool)

(declare-fun maxPrefixOneRule!1339 (LexerInterface!3868 Rule!8342 List!26948) Option!5247)

(assert (=> bm!135868 (= call!135873 (maxPrefixOneRule!1339 thiss!16613 (h!32257 rules!1750) input!1722))))

(declare-fun b!2261722 () Bool)

(declare-fun res!966786 () Bool)

(declare-fun e!1448106 () Bool)

(assert (=> b!2261722 (=> (not res!966786) (not e!1448106))))

(declare-fun lt!840363 () Option!5247)

(assert (=> b!2261722 (= res!966786 (= (list!10361 (charsOf!2659 (_1!15735 (get!8100 lt!840363)))) (originalCharacters!5041 (_1!15735 (get!8100 lt!840363)))))))

(declare-fun b!2261723 () Bool)

(assert (=> b!2261723 (= e!1448106 (contains!4627 rules!1750 (rule!6583 (_1!15735 (get!8100 lt!840363)))))))

(declare-fun b!2261724 () Bool)

(declare-fun res!966788 () Bool)

(assert (=> b!2261724 (=> (not res!966788) (not e!1448106))))

(declare-fun apply!6576 (TokenValueInjection!8406 BalanceConc!17108) TokenValue!4433)

(assert (=> b!2261724 (= res!966788 (= (value!135543 (_1!15735 (get!8100 lt!840363))) (apply!6576 (transformation!4271 (rule!6583 (_1!15735 (get!8100 lt!840363)))) (seqFromList!2975 (originalCharacters!5041 (_1!15735 (get!8100 lt!840363)))))))))

(declare-fun b!2261725 () Bool)

(declare-fun e!1448105 () Option!5247)

(declare-fun lt!840364 () Option!5247)

(declare-fun lt!840367 () Option!5247)

(assert (=> b!2261725 (= e!1448105 (ite (and ((_ is None!5246) lt!840364) ((_ is None!5246) lt!840367)) None!5246 (ite ((_ is None!5246) lt!840367) lt!840364 (ite ((_ is None!5246) lt!840364) lt!840367 (ite (>= (size!21046 (_1!15735 (v!30280 lt!840364))) (size!21046 (_1!15735 (v!30280 lt!840367)))) lt!840364 lt!840367)))))))

(assert (=> b!2261725 (= lt!840364 call!135873)))

(assert (=> b!2261725 (= lt!840367 (maxPrefix!2142 thiss!16613 (t!201734 rules!1750) input!1722))))

(declare-fun d!670047 () Bool)

(declare-fun e!1448107 () Bool)

(assert (=> d!670047 e!1448107))

(declare-fun res!966790 () Bool)

(assert (=> d!670047 (=> res!966790 e!1448107)))

(declare-fun isEmpty!15183 (Option!5247) Bool)

(assert (=> d!670047 (= res!966790 (isEmpty!15183 lt!840363))))

(assert (=> d!670047 (= lt!840363 e!1448105)))

(declare-fun c!359336 () Bool)

(assert (=> d!670047 (= c!359336 (and ((_ is Cons!26856) rules!1750) ((_ is Nil!26856) (t!201734 rules!1750))))))

(declare-fun lt!840366 () Unit!39790)

(declare-fun lt!840365 () Unit!39790)

(assert (=> d!670047 (= lt!840366 lt!840365)))

(assert (=> d!670047 (isPrefix!2261 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1448 (List!26948 List!26948) Unit!39790)

(assert (=> d!670047 (= lt!840365 (lemmaIsPrefixRefl!1448 input!1722 input!1722))))

(declare-fun rulesValidInductive!1490 (LexerInterface!3868 List!26950) Bool)

(assert (=> d!670047 (rulesValidInductive!1490 thiss!16613 rules!1750)))

(assert (=> d!670047 (= (maxPrefix!2142 thiss!16613 rules!1750 input!1722) lt!840363)))

(declare-fun b!2261726 () Bool)

(declare-fun res!966787 () Bool)

(assert (=> b!2261726 (=> (not res!966787) (not e!1448106))))

(assert (=> b!2261726 (= res!966787 (< (size!21047 (_2!15735 (get!8100 lt!840363))) (size!21047 input!1722)))))

(declare-fun b!2261727 () Bool)

(declare-fun res!966785 () Bool)

(assert (=> b!2261727 (=> (not res!966785) (not e!1448106))))

(assert (=> b!2261727 (= res!966785 (matchR!2880 (regex!4271 (rule!6583 (_1!15735 (get!8100 lt!840363)))) (list!10361 (charsOf!2659 (_1!15735 (get!8100 lt!840363))))))))

(declare-fun b!2261728 () Bool)

(assert (=> b!2261728 (= e!1448107 e!1448106)))

(declare-fun res!966784 () Bool)

(assert (=> b!2261728 (=> (not res!966784) (not e!1448106))))

(declare-fun isDefined!4193 (Option!5247) Bool)

(assert (=> b!2261728 (= res!966784 (isDefined!4193 lt!840363))))

(declare-fun b!2261729 () Bool)

(assert (=> b!2261729 (= e!1448105 call!135873)))

(declare-fun b!2261730 () Bool)

(declare-fun res!966789 () Bool)

(assert (=> b!2261730 (=> (not res!966789) (not e!1448106))))

(assert (=> b!2261730 (= res!966789 (= (++!6539 (list!10361 (charsOf!2659 (_1!15735 (get!8100 lt!840363)))) (_2!15735 (get!8100 lt!840363))) input!1722))))

(assert (= (and d!670047 c!359336) b!2261729))

(assert (= (and d!670047 (not c!359336)) b!2261725))

(assert (= (or b!2261729 b!2261725) bm!135868))

(assert (= (and d!670047 (not res!966790)) b!2261728))

(assert (= (and b!2261728 res!966784) b!2261722))

(assert (= (and b!2261722 res!966786) b!2261726))

(assert (= (and b!2261726 res!966787) b!2261730))

(assert (= (and b!2261730 res!966789) b!2261724))

(assert (= (and b!2261724 res!966788) b!2261727))

(assert (= (and b!2261727 res!966785) b!2261723))

(declare-fun m!2691303 () Bool)

(assert (=> d!670047 m!2691303))

(declare-fun m!2691305 () Bool)

(assert (=> d!670047 m!2691305))

(declare-fun m!2691307 () Bool)

(assert (=> d!670047 m!2691307))

(declare-fun m!2691309 () Bool)

(assert (=> d!670047 m!2691309))

(declare-fun m!2691311 () Bool)

(assert (=> bm!135868 m!2691311))

(declare-fun m!2691313 () Bool)

(assert (=> b!2261722 m!2691313))

(declare-fun m!2691315 () Bool)

(assert (=> b!2261722 m!2691315))

(assert (=> b!2261722 m!2691315))

(declare-fun m!2691317 () Bool)

(assert (=> b!2261722 m!2691317))

(declare-fun m!2691319 () Bool)

(assert (=> b!2261725 m!2691319))

(declare-fun m!2691321 () Bool)

(assert (=> b!2261728 m!2691321))

(assert (=> b!2261723 m!2691313))

(declare-fun m!2691323 () Bool)

(assert (=> b!2261723 m!2691323))

(assert (=> b!2261730 m!2691313))

(assert (=> b!2261730 m!2691315))

(assert (=> b!2261730 m!2691315))

(assert (=> b!2261730 m!2691317))

(assert (=> b!2261730 m!2691317))

(declare-fun m!2691325 () Bool)

(assert (=> b!2261730 m!2691325))

(assert (=> b!2261724 m!2691313))

(declare-fun m!2691327 () Bool)

(assert (=> b!2261724 m!2691327))

(assert (=> b!2261724 m!2691327))

(declare-fun m!2691329 () Bool)

(assert (=> b!2261724 m!2691329))

(assert (=> b!2261727 m!2691313))

(assert (=> b!2261727 m!2691315))

(assert (=> b!2261727 m!2691315))

(assert (=> b!2261727 m!2691317))

(assert (=> b!2261727 m!2691317))

(declare-fun m!2691331 () Bool)

(assert (=> b!2261727 m!2691331))

(assert (=> b!2261726 m!2691313))

(declare-fun m!2691333 () Bool)

(assert (=> b!2261726 m!2691333))

(assert (=> b!2261726 m!2691241))

(assert (=> b!2261669 d!670047))

(declare-fun d!670051 () Bool)

(assert (=> d!670051 (isPrefix!2261 lt!840339 (++!6539 lt!840339 (_2!15735 lt!840332)))))

(declare-fun lt!840373 () Unit!39790)

(declare-fun choose!13225 (List!26948 List!26948) Unit!39790)

(assert (=> d!670051 (= lt!840373 (choose!13225 lt!840339 (_2!15735 lt!840332)))))

(assert (=> d!670051 (= (lemmaConcatTwoListThenFirstIsPrefix!1486 lt!840339 (_2!15735 lt!840332)) lt!840373)))

(declare-fun bs!455528 () Bool)

(assert (= bs!455528 d!670051))

(assert (=> bs!455528 m!2691247))

(assert (=> bs!455528 m!2691247))

(assert (=> bs!455528 m!2691253))

(declare-fun m!2691341 () Bool)

(assert (=> bs!455528 m!2691341))

(assert (=> b!2261669 d!670051))

(declare-fun d!670057 () Bool)

(declare-fun e!1448120 () Bool)

(assert (=> d!670057 e!1448120))

(declare-fun res!966808 () Bool)

(assert (=> d!670057 (=> res!966808 e!1448120)))

(declare-fun lt!840376 () Bool)

(assert (=> d!670057 (= res!966808 (not lt!840376))))

(declare-fun e!1448121 () Bool)

(assert (=> d!670057 (= lt!840376 e!1448121)))

(declare-fun res!966805 () Bool)

(assert (=> d!670057 (=> res!966805 e!1448121)))

(assert (=> d!670057 (= res!966805 ((_ is Nil!26854) lt!840339))))

(assert (=> d!670057 (= (isPrefix!2261 lt!840339 (++!6539 lt!840339 (_2!15735 lt!840332))) lt!840376)))

(declare-fun b!2261746 () Bool)

(declare-fun res!966807 () Bool)

(declare-fun e!1448122 () Bool)

(assert (=> b!2261746 (=> (not res!966807) (not e!1448122))))

(declare-fun head!4853 (List!26948) C!13384)

(assert (=> b!2261746 (= res!966807 (= (head!4853 lt!840339) (head!4853 (++!6539 lt!840339 (_2!15735 lt!840332)))))))

(declare-fun b!2261748 () Bool)

(assert (=> b!2261748 (= e!1448120 (>= (size!21047 (++!6539 lt!840339 (_2!15735 lt!840332))) (size!21047 lt!840339)))))

(declare-fun b!2261745 () Bool)

(assert (=> b!2261745 (= e!1448121 e!1448122)))

(declare-fun res!966806 () Bool)

(assert (=> b!2261745 (=> (not res!966806) (not e!1448122))))

(assert (=> b!2261745 (= res!966806 (not ((_ is Nil!26854) (++!6539 lt!840339 (_2!15735 lt!840332)))))))

(declare-fun b!2261747 () Bool)

(declare-fun tail!3262 (List!26948) List!26948)

(assert (=> b!2261747 (= e!1448122 (isPrefix!2261 (tail!3262 lt!840339) (tail!3262 (++!6539 lt!840339 (_2!15735 lt!840332)))))))

(assert (= (and d!670057 (not res!966805)) b!2261745))

(assert (= (and b!2261745 res!966806) b!2261746))

(assert (= (and b!2261746 res!966807) b!2261747))

(assert (= (and d!670057 (not res!966808)) b!2261748))

(declare-fun m!2691347 () Bool)

(assert (=> b!2261746 m!2691347))

(assert (=> b!2261746 m!2691247))

(declare-fun m!2691349 () Bool)

(assert (=> b!2261746 m!2691349))

(assert (=> b!2261748 m!2691247))

(declare-fun m!2691351 () Bool)

(assert (=> b!2261748 m!2691351))

(assert (=> b!2261748 m!2691237))

(declare-fun m!2691353 () Bool)

(assert (=> b!2261747 m!2691353))

(assert (=> b!2261747 m!2691247))

(declare-fun m!2691355 () Bool)

(assert (=> b!2261747 m!2691355))

(assert (=> b!2261747 m!2691353))

(assert (=> b!2261747 m!2691355))

(declare-fun m!2691357 () Bool)

(assert (=> b!2261747 m!2691357))

(assert (=> b!2261669 d!670057))

(declare-fun d!670063 () Bool)

(declare-fun list!10363 (Conc!8690) List!26948)

(assert (=> d!670063 (= (list!10361 (charsOf!2659 (h!32256 tokens!456))) (list!10363 (c!359324 (charsOf!2659 (h!32256 tokens!456)))))))

(declare-fun bs!455531 () Bool)

(assert (= bs!455531 d!670063))

(declare-fun m!2691359 () Bool)

(assert (=> bs!455531 m!2691359))

(assert (=> b!2261669 d!670063))

(declare-fun d!670065 () Bool)

(assert (=> d!670065 (= (inv!36393 (tag!4761 r!2363)) (= (mod (str.len (value!135542 (tag!4761 r!2363))) 2) 0))))

(assert (=> b!2261648 d!670065))

(declare-fun d!670067 () Bool)

(declare-fun res!966811 () Bool)

(declare-fun e!1448125 () Bool)

(assert (=> d!670067 (=> (not res!966811) (not e!1448125))))

(declare-fun semiInverseModEq!1721 (Int Int) Bool)

(assert (=> d!670067 (= res!966811 (semiInverseModEq!1721 (toChars!5880 (transformation!4271 r!2363)) (toValue!6021 (transformation!4271 r!2363))))))

(assert (=> d!670067 (= (inv!36396 (transformation!4271 r!2363)) e!1448125)))

(declare-fun b!2261751 () Bool)

(declare-fun equivClasses!1640 (Int Int) Bool)

(assert (=> b!2261751 (= e!1448125 (equivClasses!1640 (toChars!5880 (transformation!4271 r!2363)) (toValue!6021 (transformation!4271 r!2363))))))

(assert (= (and d!670067 res!966811) b!2261751))

(declare-fun m!2691361 () Bool)

(assert (=> d!670067 m!2691361))

(declare-fun m!2691363 () Bool)

(assert (=> b!2261751 m!2691363))

(assert (=> b!2261648 d!670067))

(declare-fun d!670069 () Bool)

(assert (=> d!670069 (= (isEmpty!15181 rules!1750) ((_ is Nil!26856) rules!1750))))

(assert (=> b!2261659 d!670069))

(declare-fun d!670071 () Bool)

(assert (=> d!670071 (= (inv!36393 (tag!4761 otherR!12)) (= (mod (str.len (value!135542 (tag!4761 otherR!12))) 2) 0))))

(assert (=> b!2261657 d!670071))

(declare-fun d!670073 () Bool)

(declare-fun res!966812 () Bool)

(declare-fun e!1448126 () Bool)

(assert (=> d!670073 (=> (not res!966812) (not e!1448126))))

(assert (=> d!670073 (= res!966812 (semiInverseModEq!1721 (toChars!5880 (transformation!4271 otherR!12)) (toValue!6021 (transformation!4271 otherR!12))))))

(assert (=> d!670073 (= (inv!36396 (transformation!4271 otherR!12)) e!1448126)))

(declare-fun b!2261752 () Bool)

(assert (=> b!2261752 (= e!1448126 (equivClasses!1640 (toChars!5880 (transformation!4271 otherR!12)) (toValue!6021 (transformation!4271 otherR!12))))))

(assert (= (and d!670073 res!966812) b!2261752))

(declare-fun m!2691365 () Bool)

(assert (=> d!670073 m!2691365))

(declare-fun m!2691367 () Bool)

(assert (=> b!2261752 m!2691367))

(assert (=> b!2261657 d!670073))

(declare-fun d!670075 () Bool)

(assert (=> d!670075 (= (isEmpty!15182 tokens!456) ((_ is Nil!26855) tokens!456))))

(assert (=> b!2261677 d!670075))

(declare-fun d!670077 () Bool)

(assert (=> d!670077 (= (head!4852 tokens!456) (h!32256 tokens!456))))

(assert (=> b!2261656 d!670077))

(declare-fun d!670079 () Bool)

(declare-fun e!1448127 () Bool)

(assert (=> d!670079 e!1448127))

(declare-fun res!966816 () Bool)

(assert (=> d!670079 (=> res!966816 e!1448127)))

(declare-fun lt!840377 () Bool)

(assert (=> d!670079 (= res!966816 (not lt!840377))))

(declare-fun e!1448128 () Bool)

(assert (=> d!670079 (= lt!840377 e!1448128)))

(declare-fun res!966813 () Bool)

(assert (=> d!670079 (=> res!966813 e!1448128)))

(assert (=> d!670079 (= res!966813 ((_ is Nil!26854) otherP!12))))

(assert (=> d!670079 (= (isPrefix!2261 otherP!12 input!1722) lt!840377)))

(declare-fun b!2261754 () Bool)

(declare-fun res!966815 () Bool)

(declare-fun e!1448129 () Bool)

(assert (=> b!2261754 (=> (not res!966815) (not e!1448129))))

(assert (=> b!2261754 (= res!966815 (= (head!4853 otherP!12) (head!4853 input!1722)))))

(declare-fun b!2261756 () Bool)

(assert (=> b!2261756 (= e!1448127 (>= (size!21047 input!1722) (size!21047 otherP!12)))))

(declare-fun b!2261753 () Bool)

(assert (=> b!2261753 (= e!1448128 e!1448129)))

(declare-fun res!966814 () Bool)

(assert (=> b!2261753 (=> (not res!966814) (not e!1448129))))

(assert (=> b!2261753 (= res!966814 (not ((_ is Nil!26854) input!1722)))))

(declare-fun b!2261755 () Bool)

(assert (=> b!2261755 (= e!1448129 (isPrefix!2261 (tail!3262 otherP!12) (tail!3262 input!1722)))))

(assert (= (and d!670079 (not res!966813)) b!2261753))

(assert (= (and b!2261753 res!966814) b!2261754))

(assert (= (and b!2261754 res!966815) b!2261755))

(assert (= (and d!670079 (not res!966816)) b!2261756))

(declare-fun m!2691369 () Bool)

(assert (=> b!2261754 m!2691369))

(declare-fun m!2691371 () Bool)

(assert (=> b!2261754 m!2691371))

(assert (=> b!2261756 m!2691241))

(assert (=> b!2261756 m!2691221))

(declare-fun m!2691373 () Bool)

(assert (=> b!2261755 m!2691373))

(declare-fun m!2691375 () Bool)

(assert (=> b!2261755 m!2691375))

(assert (=> b!2261755 m!2691373))

(assert (=> b!2261755 m!2691375))

(declare-fun m!2691377 () Bool)

(assert (=> b!2261755 m!2691377))

(assert (=> b!2261667 d!670079))

(declare-fun d!670081 () Bool)

(declare-fun res!966821 () Bool)

(declare-fun e!1448132 () Bool)

(assert (=> d!670081 (=> (not res!966821) (not e!1448132))))

(declare-fun validRegex!2477 (Regex!6619) Bool)

(assert (=> d!670081 (= res!966821 (validRegex!2477 (regex!4271 r!2363)))))

(assert (=> d!670081 (= (ruleValid!1363 thiss!16613 r!2363) e!1448132)))

(declare-fun b!2261761 () Bool)

(declare-fun res!966822 () Bool)

(assert (=> b!2261761 (=> (not res!966822) (not e!1448132))))

(declare-fun nullable!1819 (Regex!6619) Bool)

(assert (=> b!2261761 (= res!966822 (not (nullable!1819 (regex!4271 r!2363))))))

(declare-fun b!2261762 () Bool)

(assert (=> b!2261762 (= e!1448132 (not (= (tag!4761 r!2363) (String!29270 ""))))))

(assert (= (and d!670081 res!966821) b!2261761))

(assert (= (and b!2261761 res!966822) b!2261762))

(declare-fun m!2691379 () Bool)

(assert (=> d!670081 m!2691379))

(declare-fun m!2691381 () Bool)

(assert (=> b!2261761 m!2691381))

(assert (=> b!2261678 d!670081))

(declare-fun d!670083 () Bool)

(assert (=> d!670083 (ruleValid!1363 thiss!16613 r!2363)))

(declare-fun lt!840380 () Unit!39790)

(declare-fun choose!13226 (LexerInterface!3868 Rule!8342 List!26950) Unit!39790)

(assert (=> d!670083 (= lt!840380 (choose!13226 thiss!16613 r!2363 rules!1750))))

(assert (=> d!670083 (contains!4627 rules!1750 r!2363)))

(assert (=> d!670083 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!770 thiss!16613 r!2363 rules!1750) lt!840380)))

(declare-fun bs!455532 () Bool)

(assert (= bs!455532 d!670083))

(assert (=> bs!455532 m!2691261))

(declare-fun m!2691383 () Bool)

(assert (=> bs!455532 m!2691383))

(assert (=> bs!455532 m!2691195))

(assert (=> b!2261678 d!670083))

(declare-fun d!670085 () Bool)

(assert (=> d!670085 (= (inv!36393 (tag!4761 (h!32257 rules!1750))) (= (mod (str.len (value!135542 (tag!4761 (h!32257 rules!1750)))) 2) 0))))

(assert (=> b!2261676 d!670085))

(declare-fun d!670087 () Bool)

(declare-fun res!966823 () Bool)

(declare-fun e!1448133 () Bool)

(assert (=> d!670087 (=> (not res!966823) (not e!1448133))))

(assert (=> d!670087 (= res!966823 (semiInverseModEq!1721 (toChars!5880 (transformation!4271 (h!32257 rules!1750))) (toValue!6021 (transformation!4271 (h!32257 rules!1750)))))))

(assert (=> d!670087 (= (inv!36396 (transformation!4271 (h!32257 rules!1750))) e!1448133)))

(declare-fun b!2261763 () Bool)

(assert (=> b!2261763 (= e!1448133 (equivClasses!1640 (toChars!5880 (transformation!4271 (h!32257 rules!1750))) (toValue!6021 (transformation!4271 (h!32257 rules!1750)))))))

(assert (= (and d!670087 res!966823) b!2261763))

(declare-fun m!2691385 () Bool)

(assert (=> d!670087 m!2691385))

(declare-fun m!2691387 () Bool)

(assert (=> b!2261763 m!2691387))

(assert (=> b!2261676 d!670087))

(declare-fun d!670089 () Bool)

(assert (=> d!670089 (= r!2363 otherR!12)))

(declare-fun lt!840383 () Unit!39790)

(declare-fun choose!13227 (List!26950 Rule!8342 Rule!8342) Unit!39790)

(assert (=> d!670089 (= lt!840383 (choose!13227 rules!1750 r!2363 otherR!12))))

(assert (=> d!670089 (contains!4627 rules!1750 r!2363)))

(assert (=> d!670089 (= (lemmaSameIndexThenSameElement!138 rules!1750 r!2363 otherR!12) lt!840383)))

(declare-fun bs!455533 () Bool)

(assert (= bs!455533 d!670089))

(declare-fun m!2691389 () Bool)

(assert (=> bs!455533 m!2691389))

(assert (=> bs!455533 m!2691195))

(assert (=> b!2261666 d!670089))

(declare-fun d!670091 () Bool)

(declare-fun lt!840386 () Int)

(assert (=> d!670091 (>= lt!840386 0)))

(declare-fun e!1448139 () Int)

(assert (=> d!670091 (= lt!840386 e!1448139)))

(declare-fun c!359342 () Bool)

(assert (=> d!670091 (= c!359342 (and ((_ is Cons!26856) rules!1750) (= (h!32257 rules!1750) otherR!12)))))

(assert (=> d!670091 (contains!4627 rules!1750 otherR!12)))

(assert (=> d!670091 (= (getIndex!292 rules!1750 otherR!12) lt!840386)))

(declare-fun b!2261773 () Bool)

(declare-fun e!1448140 () Int)

(assert (=> b!2261773 (= e!1448139 e!1448140)))

(declare-fun c!359341 () Bool)

(assert (=> b!2261773 (= c!359341 (and ((_ is Cons!26856) rules!1750) (not (= (h!32257 rules!1750) otherR!12))))))

(declare-fun b!2261775 () Bool)

(assert (=> b!2261775 (= e!1448140 (- 1))))

(declare-fun b!2261774 () Bool)

(assert (=> b!2261774 (= e!1448140 (+ 1 (getIndex!292 (t!201734 rules!1750) otherR!12)))))

(declare-fun b!2261772 () Bool)

(assert (=> b!2261772 (= e!1448139 0)))

(assert (= (and d!670091 c!359342) b!2261772))

(assert (= (and d!670091 (not c!359342)) b!2261773))

(assert (= (and b!2261773 c!359341) b!2261774))

(assert (= (and b!2261773 (not c!359341)) b!2261775))

(assert (=> d!670091 m!2691215))

(declare-fun m!2691391 () Bool)

(assert (=> b!2261774 m!2691391))

(assert (=> b!2261664 d!670091))

(declare-fun d!670093 () Bool)

(declare-fun lt!840387 () Int)

(assert (=> d!670093 (>= lt!840387 0)))

(declare-fun e!1448141 () Int)

(assert (=> d!670093 (= lt!840387 e!1448141)))

(declare-fun c!359344 () Bool)

(assert (=> d!670093 (= c!359344 (and ((_ is Cons!26856) rules!1750) (= (h!32257 rules!1750) r!2363)))))

(assert (=> d!670093 (contains!4627 rules!1750 r!2363)))

(assert (=> d!670093 (= (getIndex!292 rules!1750 r!2363) lt!840387)))

(declare-fun b!2261777 () Bool)

(declare-fun e!1448142 () Int)

(assert (=> b!2261777 (= e!1448141 e!1448142)))

(declare-fun c!359343 () Bool)

(assert (=> b!2261777 (= c!359343 (and ((_ is Cons!26856) rules!1750) (not (= (h!32257 rules!1750) r!2363))))))

(declare-fun b!2261779 () Bool)

(assert (=> b!2261779 (= e!1448142 (- 1))))

(declare-fun b!2261778 () Bool)

(assert (=> b!2261778 (= e!1448142 (+ 1 (getIndex!292 (t!201734 rules!1750) r!2363)))))

(declare-fun b!2261776 () Bool)

(assert (=> b!2261776 (= e!1448141 0)))

(assert (= (and d!670093 c!359344) b!2261776))

(assert (= (and d!670093 (not c!359344)) b!2261777))

(assert (= (and b!2261777 c!359343) b!2261778))

(assert (= (and b!2261777 (not c!359343)) b!2261779))

(assert (=> d!670093 m!2691195))

(declare-fun m!2691393 () Bool)

(assert (=> b!2261778 m!2691393))

(assert (=> b!2261664 d!670093))

(declare-fun d!670095 () Bool)

(declare-fun res!966824 () Bool)

(declare-fun e!1448143 () Bool)

(assert (=> d!670095 (=> (not res!966824) (not e!1448143))))

(assert (=> d!670095 (= res!966824 (validRegex!2477 (regex!4271 otherR!12)))))

(assert (=> d!670095 (= (ruleValid!1363 thiss!16613 otherR!12) e!1448143)))

(declare-fun b!2261780 () Bool)

(declare-fun res!966825 () Bool)

(assert (=> b!2261780 (=> (not res!966825) (not e!1448143))))

(assert (=> b!2261780 (= res!966825 (not (nullable!1819 (regex!4271 otherR!12))))))

(declare-fun b!2261781 () Bool)

(assert (=> b!2261781 (= e!1448143 (not (= (tag!4761 otherR!12) (String!29270 ""))))))

(assert (= (and d!670095 res!966824) b!2261780))

(assert (= (and b!2261780 res!966825) b!2261781))

(declare-fun m!2691395 () Bool)

(assert (=> d!670095 m!2691395))

(declare-fun m!2691397 () Bool)

(assert (=> b!2261780 m!2691397))

(assert (=> b!2261664 d!670095))

(declare-fun d!670097 () Bool)

(assert (=> d!670097 (ruleValid!1363 thiss!16613 otherR!12)))

(declare-fun lt!840388 () Unit!39790)

(assert (=> d!670097 (= lt!840388 (choose!13226 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!670097 (contains!4627 rules!1750 otherR!12)))

(assert (=> d!670097 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!770 thiss!16613 otherR!12 rules!1750) lt!840388)))

(declare-fun bs!455534 () Bool)

(assert (= bs!455534 d!670097))

(assert (=> bs!455534 m!2691207))

(declare-fun m!2691399 () Bool)

(assert (=> bs!455534 m!2691399))

(assert (=> bs!455534 m!2691215))

(assert (=> b!2261664 d!670097))

(declare-fun d!670099 () Bool)

(assert (=> d!670099 (= (inv!36393 (tag!4761 (rule!6583 (h!32256 tokens!456)))) (= (mod (str.len (value!135542 (tag!4761 (rule!6583 (h!32256 tokens!456))))) 2) 0))))

(assert (=> b!2261675 d!670099))

(declare-fun d!670101 () Bool)

(declare-fun res!966826 () Bool)

(declare-fun e!1448144 () Bool)

(assert (=> d!670101 (=> (not res!966826) (not e!1448144))))

(assert (=> d!670101 (= res!966826 (semiInverseModEq!1721 (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) (toValue!6021 (transformation!4271 (rule!6583 (h!32256 tokens!456))))))))

(assert (=> d!670101 (= (inv!36396 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) e!1448144)))

(declare-fun b!2261782 () Bool)

(assert (=> b!2261782 (= e!1448144 (equivClasses!1640 (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) (toValue!6021 (transformation!4271 (rule!6583 (h!32256 tokens!456))))))))

(assert (= (and d!670101 res!966826) b!2261782))

(declare-fun m!2691401 () Bool)

(assert (=> d!670101 m!2691401))

(declare-fun m!2691403 () Bool)

(assert (=> b!2261782 m!2691403))

(assert (=> b!2261675 d!670101))

(declare-fun b!2261793 () Bool)

(declare-fun e!1448152 () Bool)

(declare-fun inv!17 (TokenValue!4433) Bool)

(assert (=> b!2261793 (= e!1448152 (inv!17 (value!135543 (h!32256 tokens!456))))))

(declare-fun b!2261794 () Bool)

(declare-fun e!1448151 () Bool)

(assert (=> b!2261794 (= e!1448151 e!1448152)))

(declare-fun c!359349 () Bool)

(assert (=> b!2261794 (= c!359349 ((_ is IntegerValue!13300) (value!135543 (h!32256 tokens!456))))))

(declare-fun b!2261795 () Bool)

(declare-fun res!966829 () Bool)

(declare-fun e!1448153 () Bool)

(assert (=> b!2261795 (=> res!966829 e!1448153)))

(assert (=> b!2261795 (= res!966829 (not ((_ is IntegerValue!13301) (value!135543 (h!32256 tokens!456)))))))

(assert (=> b!2261795 (= e!1448152 e!1448153)))

(declare-fun d!670103 () Bool)

(declare-fun c!359350 () Bool)

(assert (=> d!670103 (= c!359350 ((_ is IntegerValue!13299) (value!135543 (h!32256 tokens!456))))))

(assert (=> d!670103 (= (inv!21 (value!135543 (h!32256 tokens!456))) e!1448151)))

(declare-fun b!2261796 () Bool)

(declare-fun inv!16 (TokenValue!4433) Bool)

(assert (=> b!2261796 (= e!1448151 (inv!16 (value!135543 (h!32256 tokens!456))))))

(declare-fun b!2261797 () Bool)

(declare-fun inv!15 (TokenValue!4433) Bool)

(assert (=> b!2261797 (= e!1448153 (inv!15 (value!135543 (h!32256 tokens!456))))))

(assert (= (and d!670103 c!359350) b!2261796))

(assert (= (and d!670103 (not c!359350)) b!2261794))

(assert (= (and b!2261794 c!359349) b!2261793))

(assert (= (and b!2261794 (not c!359349)) b!2261795))

(assert (= (and b!2261795 (not res!966829)) b!2261797))

(declare-fun m!2691405 () Bool)

(assert (=> b!2261793 m!2691405))

(declare-fun m!2691407 () Bool)

(assert (=> b!2261796 m!2691407))

(declare-fun m!2691409 () Bool)

(assert (=> b!2261797 m!2691409))

(assert (=> b!2261654 d!670103))

(declare-fun d!670105 () Bool)

(declare-fun res!966834 () Bool)

(declare-fun e!1448156 () Bool)

(assert (=> d!670105 (=> (not res!966834) (not e!1448156))))

(declare-fun isEmpty!15186 (List!26948) Bool)

(assert (=> d!670105 (= res!966834 (not (isEmpty!15186 (originalCharacters!5041 (h!32256 tokens!456)))))))

(assert (=> d!670105 (= (inv!36397 (h!32256 tokens!456)) e!1448156)))

(declare-fun b!2261802 () Bool)

(declare-fun res!966835 () Bool)

(assert (=> b!2261802 (=> (not res!966835) (not e!1448156))))

(assert (=> b!2261802 (= res!966835 (= (originalCharacters!5041 (h!32256 tokens!456)) (list!10361 (dynLambda!11652 (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) (value!135543 (h!32256 tokens!456))))))))

(declare-fun b!2261803 () Bool)

(assert (=> b!2261803 (= e!1448156 (= (size!21046 (h!32256 tokens!456)) (size!21047 (originalCharacters!5041 (h!32256 tokens!456)))))))

(assert (= (and d!670105 res!966834) b!2261802))

(assert (= (and b!2261802 res!966835) b!2261803))

(declare-fun b_lambda!72159 () Bool)

(assert (=> (not b_lambda!72159) (not b!2261802)))

(assert (=> b!2261802 t!201736))

(declare-fun b_and!177737 () Bool)

(assert (= b_and!177729 (and (=> t!201736 result!163482) b_and!177737)))

(assert (=> b!2261802 t!201738))

(declare-fun b_and!177739 () Bool)

(assert (= b_and!177731 (and (=> t!201738 result!163486) b_and!177739)))

(assert (=> b!2261802 t!201740))

(declare-fun b_and!177741 () Bool)

(assert (= b_and!177733 (and (=> t!201740 result!163488) b_and!177741)))

(assert (=> b!2261802 t!201742))

(declare-fun b_and!177743 () Bool)

(assert (= b_and!177735 (and (=> t!201742 result!163490) b_and!177743)))

(declare-fun m!2691411 () Bool)

(assert (=> d!670105 m!2691411))

(assert (=> b!2261802 m!2691299))

(assert (=> b!2261802 m!2691299))

(declare-fun m!2691413 () Bool)

(assert (=> b!2261802 m!2691413))

(declare-fun m!2691415 () Bool)

(assert (=> b!2261803 m!2691415))

(assert (=> b!2261663 d!670105))

(declare-fun d!670107 () Bool)

(declare-fun res!966838 () Bool)

(declare-fun e!1448159 () Bool)

(assert (=> d!670107 (=> (not res!966838) (not e!1448159))))

(declare-fun rulesValid!1565 (LexerInterface!3868 List!26950) Bool)

(assert (=> d!670107 (= res!966838 (rulesValid!1565 thiss!16613 rules!1750))))

(assert (=> d!670107 (= (rulesInvariant!3370 thiss!16613 rules!1750) e!1448159)))

(declare-fun b!2261806 () Bool)

(declare-datatypes ((List!26951 0))(
  ( (Nil!26857) (Cons!26857 (h!32258 String!29269) (t!201783 List!26951)) )
))
(declare-fun noDuplicateTag!1563 (LexerInterface!3868 List!26950 List!26951) Bool)

(assert (=> b!2261806 (= e!1448159 (noDuplicateTag!1563 thiss!16613 rules!1750 Nil!26857))))

(assert (= (and d!670107 res!966838) b!2261806))

(declare-fun m!2691417 () Bool)

(assert (=> d!670107 m!2691417))

(declare-fun m!2691419 () Bool)

(assert (=> b!2261806 m!2691419))

(assert (=> b!2261674 d!670107))

(declare-fun d!670109 () Bool)

(declare-fun list!10366 (Conc!8691) List!26949)

(assert (=> d!670109 (= (list!10362 (_1!15736 lt!840341)) (list!10366 (c!359326 (_1!15736 lt!840341))))))

(declare-fun bs!455535 () Bool)

(assert (= bs!455535 d!670109))

(declare-fun m!2691421 () Bool)

(assert (=> bs!455535 m!2691421))

(assert (=> b!2261672 d!670109))

(declare-fun d!670111 () Bool)

(assert (=> d!670111 (= (list!10361 (_2!15736 lt!840341)) (list!10363 (c!359324 (_2!15736 lt!840341))))))

(declare-fun bs!455536 () Bool)

(assert (= bs!455536 d!670111))

(declare-fun m!2691423 () Bool)

(assert (=> bs!455536 m!2691423))

(assert (=> b!2261672 d!670111))

(declare-fun b!2261894 () Bool)

(declare-fun e!1448213 () Bool)

(declare-fun lt!840406 () tuple2!26452)

(declare-fun isEmpty!15187 (BalanceConc!17110) Bool)

(assert (=> b!2261894 (= e!1448213 (not (isEmpty!15187 (_1!15736 lt!840406))))))

(declare-fun b!2261896 () Bool)

(declare-fun e!1448211 () Bool)

(assert (=> b!2261896 (= e!1448211 e!1448213)))

(declare-fun res!966893 () Bool)

(assert (=> b!2261896 (= res!966893 (< (size!21048 (_2!15736 lt!840406)) (size!21048 (seqFromList!2975 input!1722))))))

(assert (=> b!2261896 (=> (not res!966893) (not e!1448213))))

(declare-fun b!2261897 () Bool)

(declare-fun res!966895 () Bool)

(declare-fun e!1448212 () Bool)

(assert (=> b!2261897 (=> (not res!966895) (not e!1448212))))

(declare-fun lexList!1066 (LexerInterface!3868 List!26950 List!26948) tuple2!26454)

(assert (=> b!2261897 (= res!966895 (= (list!10362 (_1!15736 lt!840406)) (_1!15737 (lexList!1066 thiss!16613 rules!1750 (list!10361 (seqFromList!2975 input!1722))))))))

(declare-fun b!2261898 () Bool)

(assert (=> b!2261898 (= e!1448212 (= (list!10361 (_2!15736 lt!840406)) (_2!15737 (lexList!1066 thiss!16613 rules!1750 (list!10361 (seqFromList!2975 input!1722))))))))

(declare-fun d!670113 () Bool)

(assert (=> d!670113 e!1448212))

(declare-fun res!966894 () Bool)

(assert (=> d!670113 (=> (not res!966894) (not e!1448212))))

(assert (=> d!670113 (= res!966894 e!1448211)))

(declare-fun c!359365 () Bool)

(declare-fun size!21050 (BalanceConc!17110) Int)

(assert (=> d!670113 (= c!359365 (> (size!21050 (_1!15736 lt!840406)) 0))))

(declare-fun lexTailRecV2!741 (LexerInterface!3868 List!26950 BalanceConc!17108 BalanceConc!17108 BalanceConc!17108 BalanceConc!17110) tuple2!26452)

(assert (=> d!670113 (= lt!840406 (lexTailRecV2!741 thiss!16613 rules!1750 (seqFromList!2975 input!1722) (BalanceConc!17109 Empty!8690) (seqFromList!2975 input!1722) (BalanceConc!17111 Empty!8691)))))

(assert (=> d!670113 (= (lex!1707 thiss!16613 rules!1750 (seqFromList!2975 input!1722)) lt!840406)))

(declare-fun b!2261895 () Bool)

(assert (=> b!2261895 (= e!1448211 (= (_2!15736 lt!840406) (seqFromList!2975 input!1722)))))

(assert (= (and d!670113 c!359365) b!2261896))

(assert (= (and d!670113 (not c!359365)) b!2261895))

(assert (= (and b!2261896 res!966893) b!2261894))

(assert (= (and d!670113 res!966894) b!2261897))

(assert (= (and b!2261897 res!966895) b!2261898))

(declare-fun m!2691487 () Bool)

(assert (=> b!2261894 m!2691487))

(declare-fun m!2691489 () Bool)

(assert (=> b!2261898 m!2691489))

(assert (=> b!2261898 m!2691271))

(declare-fun m!2691491 () Bool)

(assert (=> b!2261898 m!2691491))

(assert (=> b!2261898 m!2691491))

(declare-fun m!2691493 () Bool)

(assert (=> b!2261898 m!2691493))

(declare-fun m!2691495 () Bool)

(assert (=> d!670113 m!2691495))

(assert (=> d!670113 m!2691271))

(assert (=> d!670113 m!2691271))

(declare-fun m!2691497 () Bool)

(assert (=> d!670113 m!2691497))

(declare-fun m!2691499 () Bool)

(assert (=> b!2261896 m!2691499))

(assert (=> b!2261896 m!2691271))

(declare-fun m!2691501 () Bool)

(assert (=> b!2261896 m!2691501))

(declare-fun m!2691503 () Bool)

(assert (=> b!2261897 m!2691503))

(assert (=> b!2261897 m!2691271))

(assert (=> b!2261897 m!2691491))

(assert (=> b!2261897 m!2691491))

(assert (=> b!2261897 m!2691493))

(assert (=> b!2261672 d!670113))

(declare-fun d!670135 () Bool)

(declare-fun fromListB!1332 (List!26948) BalanceConc!17108)

(assert (=> d!670135 (= (seqFromList!2975 input!1722) (fromListB!1332 input!1722))))

(declare-fun bs!455540 () Bool)

(assert (= bs!455540 d!670135))

(declare-fun m!2691505 () Bool)

(assert (=> bs!455540 m!2691505))

(assert (=> b!2261672 d!670135))

(declare-fun d!670137 () Bool)

(declare-fun lt!840412 () Bool)

(declare-fun content!3580 (List!26950) (InoxSet Rule!8342))

(assert (=> d!670137 (= lt!840412 (select (content!3580 rules!1750) otherR!12))))

(declare-fun e!1448225 () Bool)

(assert (=> d!670137 (= lt!840412 e!1448225)))

(declare-fun res!966906 () Bool)

(assert (=> d!670137 (=> (not res!966906) (not e!1448225))))

(assert (=> d!670137 (= res!966906 ((_ is Cons!26856) rules!1750))))

(assert (=> d!670137 (= (contains!4627 rules!1750 otherR!12) lt!840412)))

(declare-fun b!2261915 () Bool)

(declare-fun e!1448224 () Bool)

(assert (=> b!2261915 (= e!1448225 e!1448224)))

(declare-fun res!966907 () Bool)

(assert (=> b!2261915 (=> res!966907 e!1448224)))

(assert (=> b!2261915 (= res!966907 (= (h!32257 rules!1750) otherR!12))))

(declare-fun b!2261916 () Bool)

(assert (=> b!2261916 (= e!1448224 (contains!4627 (t!201734 rules!1750) otherR!12))))

(assert (= (and d!670137 res!966906) b!2261915))

(assert (= (and b!2261915 (not res!966907)) b!2261916))

(declare-fun m!2691519 () Bool)

(assert (=> d!670137 m!2691519))

(declare-fun m!2691521 () Bool)

(assert (=> d!670137 m!2691521))

(declare-fun m!2691523 () Bool)

(assert (=> b!2261916 m!2691523))

(assert (=> b!2261651 d!670137))

(declare-fun d!670141 () Bool)

(declare-fun lt!840413 () Bool)

(assert (=> d!670141 (= lt!840413 (select (content!3580 rules!1750) r!2363))))

(declare-fun e!1448227 () Bool)

(assert (=> d!670141 (= lt!840413 e!1448227)))

(declare-fun res!966908 () Bool)

(assert (=> d!670141 (=> (not res!966908) (not e!1448227))))

(assert (=> d!670141 (= res!966908 ((_ is Cons!26856) rules!1750))))

(assert (=> d!670141 (= (contains!4627 rules!1750 r!2363) lt!840413)))

(declare-fun b!2261917 () Bool)

(declare-fun e!1448226 () Bool)

(assert (=> b!2261917 (= e!1448227 e!1448226)))

(declare-fun res!966909 () Bool)

(assert (=> b!2261917 (=> res!966909 e!1448226)))

(assert (=> b!2261917 (= res!966909 (= (h!32257 rules!1750) r!2363))))

(declare-fun b!2261918 () Bool)

(assert (=> b!2261918 (= e!1448226 (contains!4627 (t!201734 rules!1750) r!2363))))

(assert (= (and d!670141 res!966908) b!2261917))

(assert (= (and b!2261917 (not res!966909)) b!2261918))

(assert (=> d!670141 m!2691519))

(declare-fun m!2691525 () Bool)

(assert (=> d!670141 m!2691525))

(declare-fun m!2691527 () Bool)

(assert (=> b!2261918 m!2691527))

(assert (=> b!2261662 d!670141))

(declare-fun b!2261958 () Bool)

(declare-fun e!1448252 () Bool)

(declare-fun derivativeStep!1482 (Regex!6619 C!13384) Regex!6619)

(assert (=> b!2261958 (= e!1448252 (matchR!2880 (derivativeStep!1482 (regex!4271 r!2363) (head!4853 (list!10361 (charsOf!2659 (head!4852 tokens!456))))) (tail!3262 (list!10361 (charsOf!2659 (head!4852 tokens!456))))))))

(declare-fun bm!135874 () Bool)

(declare-fun call!135879 () Bool)

(assert (=> bm!135874 (= call!135879 (isEmpty!15186 (list!10361 (charsOf!2659 (head!4852 tokens!456)))))))

(declare-fun b!2261959 () Bool)

(declare-fun e!1448249 () Bool)

(declare-fun e!1448251 () Bool)

(assert (=> b!2261959 (= e!1448249 e!1448251)))

(declare-fun res!966934 () Bool)

(assert (=> b!2261959 (=> (not res!966934) (not e!1448251))))

(declare-fun lt!840424 () Bool)

(assert (=> b!2261959 (= res!966934 (not lt!840424))))

(declare-fun b!2261960 () Bool)

(declare-fun e!1448253 () Bool)

(assert (=> b!2261960 (= e!1448251 e!1448253)))

(declare-fun res!966930 () Bool)

(assert (=> b!2261960 (=> res!966930 e!1448253)))

(assert (=> b!2261960 (= res!966930 call!135879)))

(declare-fun b!2261961 () Bool)

(assert (=> b!2261961 (= e!1448253 (not (= (head!4853 (list!10361 (charsOf!2659 (head!4852 tokens!456)))) (c!359325 (regex!4271 r!2363)))))))

(declare-fun d!670143 () Bool)

(declare-fun e!1448255 () Bool)

(assert (=> d!670143 e!1448255))

(declare-fun c!359378 () Bool)

(assert (=> d!670143 (= c!359378 ((_ is EmptyExpr!6619) (regex!4271 r!2363)))))

(assert (=> d!670143 (= lt!840424 e!1448252)))

(declare-fun c!359379 () Bool)

(assert (=> d!670143 (= c!359379 (isEmpty!15186 (list!10361 (charsOf!2659 (head!4852 tokens!456)))))))

(assert (=> d!670143 (validRegex!2477 (regex!4271 r!2363))))

(assert (=> d!670143 (= (matchR!2880 (regex!4271 r!2363) (list!10361 (charsOf!2659 (head!4852 tokens!456)))) lt!840424)))

(declare-fun b!2261962 () Bool)

(declare-fun e!1448250 () Bool)

(assert (=> b!2261962 (= e!1448250 (= (head!4853 (list!10361 (charsOf!2659 (head!4852 tokens!456)))) (c!359325 (regex!4271 r!2363))))))

(declare-fun b!2261963 () Bool)

(declare-fun res!966935 () Bool)

(assert (=> b!2261963 (=> (not res!966935) (not e!1448250))))

(assert (=> b!2261963 (= res!966935 (isEmpty!15186 (tail!3262 (list!10361 (charsOf!2659 (head!4852 tokens!456))))))))

(declare-fun b!2261964 () Bool)

(declare-fun res!966937 () Bool)

(assert (=> b!2261964 (=> (not res!966937) (not e!1448250))))

(assert (=> b!2261964 (= res!966937 (not call!135879))))

(declare-fun b!2261965 () Bool)

(declare-fun res!966932 () Bool)

(assert (=> b!2261965 (=> res!966932 e!1448253)))

(assert (=> b!2261965 (= res!966932 (not (isEmpty!15186 (tail!3262 (list!10361 (charsOf!2659 (head!4852 tokens!456)))))))))

(declare-fun b!2261966 () Bool)

(declare-fun res!966936 () Bool)

(assert (=> b!2261966 (=> res!966936 e!1448249)))

(assert (=> b!2261966 (= res!966936 (not ((_ is ElementMatch!6619) (regex!4271 r!2363))))))

(declare-fun e!1448254 () Bool)

(assert (=> b!2261966 (= e!1448254 e!1448249)))

(declare-fun b!2261967 () Bool)

(assert (=> b!2261967 (= e!1448255 (= lt!840424 call!135879))))

(declare-fun b!2261968 () Bool)

(assert (=> b!2261968 (= e!1448252 (nullable!1819 (regex!4271 r!2363)))))

(declare-fun b!2261969 () Bool)

(declare-fun res!966931 () Bool)

(assert (=> b!2261969 (=> res!966931 e!1448249)))

(assert (=> b!2261969 (= res!966931 e!1448250)))

(declare-fun res!966933 () Bool)

(assert (=> b!2261969 (=> (not res!966933) (not e!1448250))))

(assert (=> b!2261969 (= res!966933 lt!840424)))

(declare-fun b!2261970 () Bool)

(assert (=> b!2261970 (= e!1448254 (not lt!840424))))

(declare-fun b!2261971 () Bool)

(assert (=> b!2261971 (= e!1448255 e!1448254)))

(declare-fun c!359380 () Bool)

(assert (=> b!2261971 (= c!359380 ((_ is EmptyLang!6619) (regex!4271 r!2363)))))

(assert (= (and d!670143 c!359379) b!2261968))

(assert (= (and d!670143 (not c!359379)) b!2261958))

(assert (= (and d!670143 c!359378) b!2261967))

(assert (= (and d!670143 (not c!359378)) b!2261971))

(assert (= (and b!2261971 c!359380) b!2261970))

(assert (= (and b!2261971 (not c!359380)) b!2261966))

(assert (= (and b!2261966 (not res!966936)) b!2261969))

(assert (= (and b!2261969 res!966933) b!2261964))

(assert (= (and b!2261964 res!966937) b!2261963))

(assert (= (and b!2261963 res!966935) b!2261962))

(assert (= (and b!2261969 (not res!966931)) b!2261959))

(assert (= (and b!2261959 res!966934) b!2261960))

(assert (= (and b!2261960 (not res!966930)) b!2261965))

(assert (= (and b!2261965 (not res!966932)) b!2261961))

(assert (= (or b!2261967 b!2261960 b!2261964) bm!135874))

(assert (=> b!2261965 m!2691229))

(declare-fun m!2691553 () Bool)

(assert (=> b!2261965 m!2691553))

(assert (=> b!2261965 m!2691553))

(declare-fun m!2691555 () Bool)

(assert (=> b!2261965 m!2691555))

(assert (=> b!2261962 m!2691229))

(declare-fun m!2691557 () Bool)

(assert (=> b!2261962 m!2691557))

(assert (=> b!2261968 m!2691381))

(assert (=> b!2261961 m!2691229))

(assert (=> b!2261961 m!2691557))

(assert (=> b!2261958 m!2691229))

(assert (=> b!2261958 m!2691557))

(assert (=> b!2261958 m!2691557))

(declare-fun m!2691559 () Bool)

(assert (=> b!2261958 m!2691559))

(assert (=> b!2261958 m!2691229))

(assert (=> b!2261958 m!2691553))

(assert (=> b!2261958 m!2691559))

(assert (=> b!2261958 m!2691553))

(declare-fun m!2691561 () Bool)

(assert (=> b!2261958 m!2691561))

(assert (=> b!2261963 m!2691229))

(assert (=> b!2261963 m!2691553))

(assert (=> b!2261963 m!2691553))

(assert (=> b!2261963 m!2691555))

(assert (=> d!670143 m!2691229))

(declare-fun m!2691563 () Bool)

(assert (=> d!670143 m!2691563))

(assert (=> d!670143 m!2691379))

(assert (=> bm!135874 m!2691229))

(assert (=> bm!135874 m!2691563))

(assert (=> b!2261649 d!670143))

(declare-fun d!670155 () Bool)

(assert (=> d!670155 (= (list!10361 (charsOf!2659 (head!4852 tokens!456))) (list!10363 (c!359324 (charsOf!2659 (head!4852 tokens!456)))))))

(declare-fun bs!455542 () Bool)

(assert (= bs!455542 d!670155))

(declare-fun m!2691565 () Bool)

(assert (=> bs!455542 m!2691565))

(assert (=> b!2261649 d!670155))

(declare-fun d!670157 () Bool)

(declare-fun lt!840425 () BalanceConc!17108)

(assert (=> d!670157 (= (list!10361 lt!840425) (originalCharacters!5041 (head!4852 tokens!456)))))

(assert (=> d!670157 (= lt!840425 (dynLambda!11652 (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456)))) (value!135543 (head!4852 tokens!456))))))

(assert (=> d!670157 (= (charsOf!2659 (head!4852 tokens!456)) lt!840425)))

(declare-fun b_lambda!72165 () Bool)

(assert (=> (not b_lambda!72165) (not d!670157)))

(declare-fun t!201760 () Bool)

(declare-fun tb!134119 () Bool)

(assert (=> (and b!2261653 (= (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))) (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456))))) t!201760) tb!134119))

(declare-fun b!2261972 () Bool)

(declare-fun e!1448256 () Bool)

(declare-fun tp!715331 () Bool)

(assert (=> b!2261972 (= e!1448256 (and (inv!36398 (c!359324 (dynLambda!11652 (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456)))) (value!135543 (head!4852 tokens!456))))) tp!715331))))

(declare-fun result!163510 () Bool)

(assert (=> tb!134119 (= result!163510 (and (inv!36399 (dynLambda!11652 (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456)))) (value!135543 (head!4852 tokens!456)))) e!1448256))))

(assert (= tb!134119 b!2261972))

(declare-fun m!2691567 () Bool)

(assert (=> b!2261972 m!2691567))

(declare-fun m!2691569 () Bool)

(assert (=> tb!134119 m!2691569))

(assert (=> d!670157 t!201760))

(declare-fun b_and!177761 () Bool)

(assert (= b_and!177737 (and (=> t!201760 result!163510) b_and!177761)))

(declare-fun t!201762 () Bool)

(declare-fun tb!134121 () Bool)

(assert (=> (and b!2261652 (= (toChars!5880 (transformation!4271 otherR!12)) (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456))))) t!201762) tb!134121))

(declare-fun result!163512 () Bool)

(assert (= result!163512 result!163510))

(assert (=> d!670157 t!201762))

(declare-fun b_and!177763 () Bool)

(assert (= b_and!177739 (and (=> t!201762 result!163512) b_and!177763)))

(declare-fun tb!134123 () Bool)

(declare-fun t!201764 () Bool)

(assert (=> (and b!2261670 (= (toChars!5880 (transformation!4271 (h!32257 rules!1750))) (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456))))) t!201764) tb!134123))

(declare-fun result!163514 () Bool)

(assert (= result!163514 result!163510))

(assert (=> d!670157 t!201764))

(declare-fun b_and!177765 () Bool)

(assert (= b_and!177741 (and (=> t!201764 result!163514) b_and!177765)))

(declare-fun tb!134125 () Bool)

(declare-fun t!201766 () Bool)

(assert (=> (and b!2261647 (= (toChars!5880 (transformation!4271 r!2363)) (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456))))) t!201766) tb!134125))

(declare-fun result!163516 () Bool)

(assert (= result!163516 result!163510))

(assert (=> d!670157 t!201766))

(declare-fun b_and!177767 () Bool)

(assert (= b_and!177743 (and (=> t!201766 result!163516) b_and!177767)))

(declare-fun m!2691571 () Bool)

(assert (=> d!670157 m!2691571))

(declare-fun m!2691573 () Bool)

(assert (=> d!670157 m!2691573))

(assert (=> b!2261649 d!670157))

(assert (=> b!2261649 d!670077))

(declare-fun d!670159 () Bool)

(declare-fun lt!840428 () Int)

(assert (=> d!670159 (= lt!840428 (size!21047 (list!10361 (charsOf!2659 (head!4852 tokens!456)))))))

(declare-fun size!21051 (Conc!8690) Int)

(assert (=> d!670159 (= lt!840428 (size!21051 (c!359324 (charsOf!2659 (head!4852 tokens!456)))))))

(assert (=> d!670159 (= (size!21048 (charsOf!2659 (head!4852 tokens!456))) lt!840428)))

(declare-fun bs!455543 () Bool)

(assert (= bs!455543 d!670159))

(assert (=> bs!455543 m!2691217))

(assert (=> bs!455543 m!2691229))

(assert (=> bs!455543 m!2691229))

(declare-fun m!2691575 () Bool)

(assert (=> bs!455543 m!2691575))

(declare-fun m!2691577 () Bool)

(assert (=> bs!455543 m!2691577))

(assert (=> b!2261671 d!670159))

(assert (=> b!2261671 d!670157))

(assert (=> b!2261671 d!670077))

(declare-fun d!670161 () Bool)

(declare-fun lt!840429 () Int)

(assert (=> d!670161 (>= lt!840429 0)))

(declare-fun e!1448257 () Int)

(assert (=> d!670161 (= lt!840429 e!1448257)))

(declare-fun c!359381 () Bool)

(assert (=> d!670161 (= c!359381 ((_ is Nil!26854) otherP!12))))

(assert (=> d!670161 (= (size!21047 otherP!12) lt!840429)))

(declare-fun b!2261973 () Bool)

(assert (=> b!2261973 (= e!1448257 0)))

(declare-fun b!2261974 () Bool)

(assert (=> b!2261974 (= e!1448257 (+ 1 (size!21047 (t!201732 otherP!12))))))

(assert (= (and d!670161 c!359381) b!2261973))

(assert (= (and d!670161 (not c!359381)) b!2261974))

(declare-fun m!2691579 () Bool)

(assert (=> b!2261974 m!2691579))

(assert (=> b!2261671 d!670161))

(declare-fun b!2261986 () Bool)

(declare-fun e!1448260 () Bool)

(declare-fun tp!715344 () Bool)

(declare-fun tp!715342 () Bool)

(assert (=> b!2261986 (= e!1448260 (and tp!715344 tp!715342))))

(declare-fun b!2261985 () Bool)

(assert (=> b!2261985 (= e!1448260 tp_is_empty!10459)))

(assert (=> b!2261648 (= tp!715316 e!1448260)))

(declare-fun b!2261987 () Bool)

(declare-fun tp!715345 () Bool)

(assert (=> b!2261987 (= e!1448260 tp!715345)))

(declare-fun b!2261988 () Bool)

(declare-fun tp!715346 () Bool)

(declare-fun tp!715343 () Bool)

(assert (=> b!2261988 (= e!1448260 (and tp!715346 tp!715343))))

(assert (= (and b!2261648 ((_ is ElementMatch!6619) (regex!4271 r!2363))) b!2261985))

(assert (= (and b!2261648 ((_ is Concat!11053) (regex!4271 r!2363))) b!2261986))

(assert (= (and b!2261648 ((_ is Star!6619) (regex!4271 r!2363))) b!2261987))

(assert (= (and b!2261648 ((_ is Union!6619) (regex!4271 r!2363))) b!2261988))

(declare-fun b!2261990 () Bool)

(declare-fun e!1448261 () Bool)

(declare-fun tp!715349 () Bool)

(declare-fun tp!715347 () Bool)

(assert (=> b!2261990 (= e!1448261 (and tp!715349 tp!715347))))

(declare-fun b!2261989 () Bool)

(assert (=> b!2261989 (= e!1448261 tp_is_empty!10459)))

(assert (=> b!2261657 (= tp!715322 e!1448261)))

(declare-fun b!2261991 () Bool)

(declare-fun tp!715350 () Bool)

(assert (=> b!2261991 (= e!1448261 tp!715350)))

(declare-fun b!2261992 () Bool)

(declare-fun tp!715351 () Bool)

(declare-fun tp!715348 () Bool)

(assert (=> b!2261992 (= e!1448261 (and tp!715351 tp!715348))))

(assert (= (and b!2261657 ((_ is ElementMatch!6619) (regex!4271 otherR!12))) b!2261989))

(assert (= (and b!2261657 ((_ is Concat!11053) (regex!4271 otherR!12))) b!2261990))

(assert (= (and b!2261657 ((_ is Star!6619) (regex!4271 otherR!12))) b!2261991))

(assert (= (and b!2261657 ((_ is Union!6619) (regex!4271 otherR!12))) b!2261992))

(declare-fun b!2261997 () Bool)

(declare-fun e!1448264 () Bool)

(declare-fun tp!715354 () Bool)

(assert (=> b!2261997 (= e!1448264 (and tp_is_empty!10459 tp!715354))))

(assert (=> b!2261668 (= tp!715307 e!1448264)))

(assert (= (and b!2261668 ((_ is Cons!26854) (t!201732 otherP!12))) b!2261997))

(declare-fun b!2261998 () Bool)

(declare-fun e!1448265 () Bool)

(declare-fun tp!715355 () Bool)

(assert (=> b!2261998 (= e!1448265 (and tp_is_empty!10459 tp!715355))))

(assert (=> b!2261658 (= tp!715321 e!1448265)))

(assert (= (and b!2261658 ((_ is Cons!26854) (t!201732 input!1722))) b!2261998))

(declare-fun b!2262000 () Bool)

(declare-fun e!1448266 () Bool)

(declare-fun tp!715358 () Bool)

(declare-fun tp!715356 () Bool)

(assert (=> b!2262000 (= e!1448266 (and tp!715358 tp!715356))))

(declare-fun b!2261999 () Bool)

(assert (=> b!2261999 (= e!1448266 tp_is_empty!10459)))

(assert (=> b!2261676 (= tp!715318 e!1448266)))

(declare-fun b!2262001 () Bool)

(declare-fun tp!715359 () Bool)

(assert (=> b!2262001 (= e!1448266 tp!715359)))

(declare-fun b!2262002 () Bool)

(declare-fun tp!715360 () Bool)

(declare-fun tp!715357 () Bool)

(assert (=> b!2262002 (= e!1448266 (and tp!715360 tp!715357))))

(assert (= (and b!2261676 ((_ is ElementMatch!6619) (regex!4271 (h!32257 rules!1750)))) b!2261999))

(assert (= (and b!2261676 ((_ is Concat!11053) (regex!4271 (h!32257 rules!1750)))) b!2262000))

(assert (= (and b!2261676 ((_ is Star!6619) (regex!4271 (h!32257 rules!1750)))) b!2262001))

(assert (= (and b!2261676 ((_ is Union!6619) (regex!4271 (h!32257 rules!1750)))) b!2262002))

(declare-fun b!2262013 () Bool)

(declare-fun b_free!66813 () Bool)

(declare-fun b_next!67517 () Bool)

(assert (=> b!2262013 (= b_free!66813 (not b_next!67517))))

(declare-fun tp!715370 () Bool)

(declare-fun b_and!177769 () Bool)

(assert (=> b!2262013 (= tp!715370 b_and!177769)))

(declare-fun b_free!66815 () Bool)

(declare-fun b_next!67519 () Bool)

(assert (=> b!2262013 (= b_free!66815 (not b_next!67519))))

(declare-fun t!201768 () Bool)

(declare-fun tb!134127 () Bool)

(assert (=> (and b!2262013 (= (toChars!5880 (transformation!4271 (h!32257 (t!201734 rules!1750)))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456))))) t!201768) tb!134127))

(declare-fun result!163524 () Bool)

(assert (= result!163524 result!163482))

(assert (=> d!670041 t!201768))

(assert (=> b!2261802 t!201768))

(declare-fun tb!134129 () Bool)

(declare-fun t!201770 () Bool)

(assert (=> (and b!2262013 (= (toChars!5880 (transformation!4271 (h!32257 (t!201734 rules!1750)))) (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456))))) t!201770) tb!134129))

(declare-fun result!163526 () Bool)

(assert (= result!163526 result!163510))

(assert (=> d!670157 t!201770))

(declare-fun b_and!177771 () Bool)

(declare-fun tp!715372 () Bool)

(assert (=> b!2262013 (= tp!715372 (and (=> t!201768 result!163524) (=> t!201770 result!163526) b_and!177771))))

(declare-fun e!1448278 () Bool)

(assert (=> b!2262013 (= e!1448278 (and tp!715370 tp!715372))))

(declare-fun b!2262012 () Bool)

(declare-fun tp!715369 () Bool)

(declare-fun e!1448277 () Bool)

(assert (=> b!2262012 (= e!1448277 (and tp!715369 (inv!36393 (tag!4761 (h!32257 (t!201734 rules!1750)))) (inv!36396 (transformation!4271 (h!32257 (t!201734 rules!1750)))) e!1448278))))

(declare-fun b!2262011 () Bool)

(declare-fun e!1448276 () Bool)

(declare-fun tp!715371 () Bool)

(assert (=> b!2262011 (= e!1448276 (and e!1448277 tp!715371))))

(assert (=> b!2261655 (= tp!715313 e!1448276)))

(assert (= b!2262012 b!2262013))

(assert (= b!2262011 b!2262012))

(assert (= (and b!2261655 ((_ is Cons!26856) (t!201734 rules!1750))) b!2262011))

(declare-fun m!2691581 () Bool)

(assert (=> b!2262012 m!2691581))

(declare-fun m!2691583 () Bool)

(assert (=> b!2262012 m!2691583))

(declare-fun b!2262015 () Bool)

(declare-fun e!1448279 () Bool)

(declare-fun tp!715375 () Bool)

(declare-fun tp!715373 () Bool)

(assert (=> b!2262015 (= e!1448279 (and tp!715375 tp!715373))))

(declare-fun b!2262014 () Bool)

(assert (=> b!2262014 (= e!1448279 tp_is_empty!10459)))

(assert (=> b!2261675 (= tp!715310 e!1448279)))

(declare-fun b!2262016 () Bool)

(declare-fun tp!715376 () Bool)

(assert (=> b!2262016 (= e!1448279 tp!715376)))

(declare-fun b!2262017 () Bool)

(declare-fun tp!715377 () Bool)

(declare-fun tp!715374 () Bool)

(assert (=> b!2262017 (= e!1448279 (and tp!715377 tp!715374))))

(assert (= (and b!2261675 ((_ is ElementMatch!6619) (regex!4271 (rule!6583 (h!32256 tokens!456))))) b!2262014))

(assert (= (and b!2261675 ((_ is Concat!11053) (regex!4271 (rule!6583 (h!32256 tokens!456))))) b!2262015))

(assert (= (and b!2261675 ((_ is Star!6619) (regex!4271 (rule!6583 (h!32256 tokens!456))))) b!2262016))

(assert (= (and b!2261675 ((_ is Union!6619) (regex!4271 (rule!6583 (h!32256 tokens!456))))) b!2262017))

(declare-fun b!2262018 () Bool)

(declare-fun e!1448280 () Bool)

(declare-fun tp!715378 () Bool)

(assert (=> b!2262018 (= e!1448280 (and tp_is_empty!10459 tp!715378))))

(assert (=> b!2261654 (= tp!715311 e!1448280)))

(assert (= (and b!2261654 ((_ is Cons!26854) (originalCharacters!5041 (h!32256 tokens!456)))) b!2262018))

(declare-fun b!2262019 () Bool)

(declare-fun e!1448281 () Bool)

(declare-fun tp!715379 () Bool)

(assert (=> b!2262019 (= e!1448281 (and tp_is_empty!10459 tp!715379))))

(assert (=> b!2261673 (= tp!715317 e!1448281)))

(assert (= (and b!2261673 ((_ is Cons!26854) (t!201732 suffix!886))) b!2262019))

(declare-fun b!2262033 () Bool)

(declare-fun b_free!66817 () Bool)

(declare-fun b_next!67521 () Bool)

(assert (=> b!2262033 (= b_free!66817 (not b_next!67521))))

(declare-fun tp!715393 () Bool)

(declare-fun b_and!177773 () Bool)

(assert (=> b!2262033 (= tp!715393 b_and!177773)))

(declare-fun b_free!66819 () Bool)

(declare-fun b_next!67523 () Bool)

(assert (=> b!2262033 (= b_free!66819 (not b_next!67523))))

(declare-fun t!201772 () Bool)

(declare-fun tb!134131 () Bool)

(assert (=> (and b!2262033 (= (toChars!5880 (transformation!4271 (rule!6583 (h!32256 (t!201733 tokens!456))))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456))))) t!201772) tb!134131))

(declare-fun result!163530 () Bool)

(assert (= result!163530 result!163482))

(assert (=> d!670041 t!201772))

(assert (=> b!2261802 t!201772))

(declare-fun t!201774 () Bool)

(declare-fun tb!134133 () Bool)

(assert (=> (and b!2262033 (= (toChars!5880 (transformation!4271 (rule!6583 (h!32256 (t!201733 tokens!456))))) (toChars!5880 (transformation!4271 (rule!6583 (head!4852 tokens!456))))) t!201774) tb!134133))

(declare-fun result!163532 () Bool)

(assert (= result!163532 result!163510))

(assert (=> d!670157 t!201774))

(declare-fun tp!715391 () Bool)

(declare-fun b_and!177775 () Bool)

(assert (=> b!2262033 (= tp!715391 (and (=> t!201772 result!163530) (=> t!201774 result!163532) b_and!177775))))

(declare-fun b!2262032 () Bool)

(declare-fun e!1448294 () Bool)

(declare-fun e!1448297 () Bool)

(declare-fun tp!715394 () Bool)

(assert (=> b!2262032 (= e!1448294 (and tp!715394 (inv!36393 (tag!4761 (rule!6583 (h!32256 (t!201733 tokens!456))))) (inv!36396 (transformation!4271 (rule!6583 (h!32256 (t!201733 tokens!456))))) e!1448297))))

(declare-fun e!1448299 () Bool)

(assert (=> b!2261663 (= tp!715323 e!1448299)))

(assert (=> b!2262033 (= e!1448297 (and tp!715393 tp!715391))))

(declare-fun b!2262031 () Bool)

(declare-fun tp!715390 () Bool)

(declare-fun e!1448295 () Bool)

(assert (=> b!2262031 (= e!1448295 (and (inv!21 (value!135543 (h!32256 (t!201733 tokens!456)))) e!1448294 tp!715390))))

(declare-fun b!2262030 () Bool)

(declare-fun tp!715392 () Bool)

(assert (=> b!2262030 (= e!1448299 (and (inv!36397 (h!32256 (t!201733 tokens!456))) e!1448295 tp!715392))))

(assert (= b!2262032 b!2262033))

(assert (= b!2262031 b!2262032))

(assert (= b!2262030 b!2262031))

(assert (= (and b!2261663 ((_ is Cons!26855) (t!201733 tokens!456))) b!2262030))

(declare-fun m!2691585 () Bool)

(assert (=> b!2262032 m!2691585))

(declare-fun m!2691587 () Bool)

(assert (=> b!2262032 m!2691587))

(declare-fun m!2691589 () Bool)

(assert (=> b!2262031 m!2691589))

(declare-fun m!2691591 () Bool)

(assert (=> b!2262030 m!2691591))

(declare-fun b_lambda!72167 () Bool)

(assert (= b_lambda!72159 (or (and b!2262013 b_free!66815 (= (toChars!5880 (transformation!4271 (h!32257 (t!201734 rules!1750)))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) (and b!2261653 b_free!66799) (and b!2261670 b_free!66807 (= (toChars!5880 (transformation!4271 (h!32257 rules!1750))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) (and b!2262033 b_free!66819 (= (toChars!5880 (transformation!4271 (rule!6583 (h!32256 (t!201733 tokens!456))))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) (and b!2261647 b_free!66811 (= (toChars!5880 (transformation!4271 r!2363)) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) (and b!2261652 b_free!66803 (= (toChars!5880 (transformation!4271 otherR!12)) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) b_lambda!72167)))

(declare-fun b_lambda!72169 () Bool)

(assert (= b_lambda!72157 (or (and b!2262013 b_free!66815 (= (toChars!5880 (transformation!4271 (h!32257 (t!201734 rules!1750)))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) (and b!2261653 b_free!66799) (and b!2261670 b_free!66807 (= (toChars!5880 (transformation!4271 (h!32257 rules!1750))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) (and b!2262033 b_free!66819 (= (toChars!5880 (transformation!4271 (rule!6583 (h!32256 (t!201733 tokens!456))))) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) (and b!2261647 b_free!66811 (= (toChars!5880 (transformation!4271 r!2363)) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) (and b!2261652 b_free!66803 (= (toChars!5880 (transformation!4271 otherR!12)) (toChars!5880 (transformation!4271 (rule!6583 (h!32256 tokens!456)))))) b_lambda!72169)))

(check-sat (not b!2262015) (not d!670137) (not b!2261990) (not b!2262031) (not b!2261761) (not d!670091) (not b!2261797) (not b_next!67519) (not b!2261752) (not b_next!67517) (not b!2262030) (not b!2261763) b_and!177767 (not tb!134119) (not b!2261774) (not b!2261703) (not d!670067) (not b_next!67523) (not b_lambda!72165) (not b!2261962) (not b!2261803) (not bm!135874) (not b!2261802) (not d!670113) b_and!177771 (not d!670051) b_and!177773 tp_is_empty!10459 (not b!2262032) (not b!2261726) (not tb!134095) (not b_next!67509) (not d!670063) (not b!2261896) (not b!2262016) (not b!2261746) (not b!2261748) (not b!2261958) (not d!670105) (not b!2261988) (not b!2262019) (not b!2262012) b_and!177761 b_and!177721 (not b_lambda!72169) (not b!2261997) (not d!670041) (not b!2262000) (not b!2261701) (not b_next!67503) (not b!2261918) b_and!177765 (not b!2261751) (not b!2261987) (not b!2261778) (not b_next!67501) (not b!2262018) (not b!2261725) (not b!2261730) (not b!2261992) (not d!670141) (not b!2261723) (not d!670037) (not d!670111) (not b_next!67507) (not b!2261998) (not b!2261897) (not b!2261898) (not d!670143) (not b_next!67515) (not b!2261780) (not b!2261727) (not d!670107) (not b!2261688) (not b_next!67521) (not bm!135868) (not b!2261754) (not b!2261972) (not b!2261968) (not d!670101) (not b!2261991) (not b!2261796) (not d!670109) (not b!2261755) (not b!2261782) (not b_next!67513) (not b!2261963) (not b!2261747) (not d!670087) (not d!670089) (not b!2261696) (not b!2262011) b_and!177713 b_and!177725 (not d!670047) b_and!177775 (not d!670073) (not b!2261916) b_and!177769 (not b_lambda!72167) (not d!670093) (not b!2261806) (not b!2261756) (not d!670157) (not d!670083) (not b!2261793) (not b!2262001) (not b!2261986) b_and!177717 b_and!177763 (not d!670135) (not b!2261724) (not b!2262017) (not d!670155) (not b!2261722) (not d!670159) (not b!2261689) (not d!670095) (not b_next!67505) (not d!670097) (not b!2261961) (not d!670081) (not b!2261965) (not b!2261974) (not b!2262002) (not b_next!67511) (not b!2261728) (not b!2261894))
(check-sat (not b_next!67523) (not b_next!67509) b_and!177761 b_and!177721 (not b_next!67501) (not b_next!67507) (not b_next!67515) (not b_next!67521) (not b_next!67513) b_and!177769 b_and!177717 b_and!177763 (not b_next!67505) (not b_next!67511) (not b_next!67519) (not b_next!67517) b_and!177767 b_and!177771 b_and!177773 b_and!177765 (not b_next!67503) b_and!177713 b_and!177725 b_and!177775)
